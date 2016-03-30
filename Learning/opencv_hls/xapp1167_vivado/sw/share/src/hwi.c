/******************************************************************************
*
* (c) Copyright 2012-2013 Xilinx, Inc. All rights reserved.
*
* This file contains confidential and proprietary information of Xilinx, Inc.
* and is protected under U.S. and international copyright and other
* intellectual property laws.
*
* DISCLAIMER
* This disclaimer is not a license and does not grant any rights to the
* materials distributed herewith. Except as otherwise provided in a valid
* license issued to you by Xilinx, and to the maximum extent permitted by
* applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL
* FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,
* IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF
* MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE;
* and (2) Xilinx shall not be liable (whether in contract or tort, including
* negligence, or under any other theory of liability) for any loss or damage
* of any kind or nature related to, arising under or in connection with these
* materials, including for any direct, or any indirect, special, incidental,
* or consequential loss or damage (including loss of data, profits, goodwill,
* or any type of loss or damage suffered as a result of any action brought by
* a third party) even if such damage or loss was reasonably foreseeable or
* Xilinx had been advised of the possibility of the same.
*
* CRITICAL APPLICATIONS
* Xilinx products are not designed or intended to be fail-safe, or for use in
* any application requiring fail-safe performance, such as life-support or
* safety devices or systems, Class III medical devices, nuclear facilities,
* applications related to the deployment of airbags, or any other applications
* that could lead to death, personal injury, or severe property or
* environmental damage (individually and collectively, "Critical
* Applications"). Customer assumes the sole risk and liability of any use of
* Xilinx products in Critical Applications, subject only to applicable laws
* and regulations governing limitations on product liability.
*
* THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE
* AT ALL TIMES.
*
*******************************************************************************/

/*****************************************************************************
 *
 * @file hwi.c
 *
 * Implementation of pipeline controlling application. Manages threads and calls the
 * APIs to control the pipeline.
 *
 ******************************************************************************/

#include <stdio.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <string.h>
#include <pthread.h>

#include "hwi.h"
#include "img_filters.h"
#include "driver_include.h"
#include "gpio_utils.h"
#include "udriver.h"
#include "vsrc_ffmpeg.h"
#include "xylonfb.h"
#include "cvc.h"
#include "xsobel.h"
#include "hls_opencv.h"

//To detect FMC.
#include "fru_handler.h"

//File name of AXI Performance Monitor
#define PERF_MON_LOG "AXI_PerfMon.log"

//shared variables between threads. // not using good mutual exclusion for now. (but shouldn't have problem
static volatile int gActiveState = SOBEL_OFF; // input to sync thread (set by changeSobelMode and used by sync thread)
static volatile int gSwSobelState = SW_SOBEL_STATE_OFF; // output from sync thread (set by sync thread to ack to changesobel mode -- semaphore is option, but doesn't really need that.)
static volatile int gSwUsingOpenCV = 1;
static volatile int gDecodedVideoOn = 0;
static volatile int gLiveVideoOn = 0;
static volatile int gPerformanceOn = 0;
unsigned int gResolution = E_Resolution_1080P;

unsigned long gLayerBase[MAX_LAYER];
unsigned int ibufferoffset;
//static volatile int SelectSobelMode = SOBEL_OFF;

/* variables for memory bandwith usage */
static volatile unsigned long hp0_read_cnt;
static volatile unsigned long hp1_read_cnt;
static volatile unsigned long hp0_write_cnt;
static volatile unsigned long hp1_write_cnt;

static volatile struct xvdma_chan_cfg gChanCfg[3];
static volatile struct xvdma_buf_info gBufInfo[3];

/* variables for screen and window resolution */
static int hwi_winWidth;
static int hwi_winHeight;
static int hwi_screenWidth;
static int hwi_screenHeight;

static int hwi_tpgVdmaInitialized;
static int hwi_cvcInitialized;
static int isFMCpresent;

static volatile unsigned int toggle_value = 0;

void configureVDMA_park(int vdma_id, int vdma_direction, unsigned long base_address);
void startVDMA_park(int vdma_id, int vdma_direction, int frm_id);



//Threads to be created.
void *thread_sw_sync(void* temp);
void *thread_perf_counter(void* temp);

pthread_t perf_count_thread;
pthread_t power_count_thread;
pthread_t sw_sync_thread;
//Initial thread creation state.
int ithreadsbookkeeping[2];

#ifdef VDMA_MM2S_HACK
void configureVDMA_hack(unsigned long vdma_physical_base, int dir, unsigned long mem_base)
{
	unsigned long int PhysicalAddress = vdma_physical_base ;
	int map_len = 0x20;
	int fd = open( "/dev/mem", O_RDWR);
	unsigned char* vdma_base_address;

	vdma_base_address = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)PhysicalAddress);

	//check if it worked
	if(vdma_base_address == MAP_FAILED)
	{
		perror("VDMA Mapping memory for absolute memory access failed.\n");
		return;
	}
	DEBUG_Printf ("VDMA mapping 0x%x to 0x%x, size = %d\n ", (int )PhysicalAddress, (int)vdma_base_address, map_len );

	if (dir == DMA_MEM_TO_DEV)
	{
		REG_WRITE(vdma_base_address, 0x0 /* 0x30 + additional_offset*/, 0x10003);
		REG_WRITE(vdma_base_address,0x58 /*VDMA_FRMDLY_STRIDE */,0x2000);
		REG_WRITE(vdma_base_address,0x5c /*VDMA_START_ADDRESS1*/,mem_base);
		mem_base += ibufferoffset;
		REG_WRITE(vdma_base_address,0x60 /*VDMA_START_ADDRESS2*/,mem_base);
		mem_base += ibufferoffset;
		REG_WRITE(vdma_base_address,0x64 /*VDMA_START_ADDRESS3*/,mem_base);

		REG_WRITE(vdma_base_address,0x54/*VDMA_HSIZE*/,0x1E00);
		REG_WRITE(vdma_base_address,0x50/*VDMA_VSIZE*/,0x438);

	}
	else
	{
		REG_WRITE(vdma_base_address, 0x30, 0x10003);
		REG_WRITE(vdma_base_address,0xa8,0x2000);
		REG_WRITE(vdma_base_address,0xac,mem_base);
		mem_base += ibufferoffset;
		REG_WRITE(vdma_base_address,0xb0,mem_base);
		mem_base += ibufferoffset;
		REG_WRITE(vdma_base_address,0xb4,mem_base);

		REG_WRITE(vdma_base_address,0xa4,0x1E00);
		REG_WRITE(vdma_base_address,0xa0,0x438);
	}

	munmap((void *)vdma_base_address, map_len);
	close(fd);

}
#endif


void ChangeSobelMode()
{
	static int currentStatus = -1;
	static int currentLiveMode = 0;

	int newMode = gActiveState;

	if (newMode != SOBEL_SW)
	{
		while(gSwSobelState != SW_SOBEL_STATE_OFF) ;
		DEBUG_Text ("Resetting all vdma\n");
		resetStop_VDMA_ALL();
		DEBUG_Text ("Resetting vdma done\n");

	}
	else
	{
		if (currentLiveMode != gLiveVideoOn && currentStatus == SOBEL_SW)
		{
			gActiveState = SOBEL_OFF;
			while(gSwSobelState != SW_SOBEL_STATE_OFF) ;
			gActiveState = SOBEL_SW;
		}
		while(gSwSobelState != SW_SOBEL_STATE_ON) ;
	}

	currentLiveMode = gLiveVideoOn;

	if (newMode == SOBEL_HW)
	{
	    resetStop_VDMA_ALL();

        if (gDecodedVideoOn == 0) {
            configureVDMA(VDMA_ID_TPG,DMA_DEV_TO_MEM, gLayerBase[SOBEL_LAYER]);
            startVDMA(VDMA_ID_TPG, DMA_DEV_TO_MEM);
            
#ifndef VDMA_MM2S_HACK
            configureVDMA(VDMA_ID_SOBEL,DMA_MEM_TO_DEV,gLayerBase[SOBEL_LAYER]);
#endif

#ifndef VDMA_MM2S_HACK
            startVDMA(VDMA_ID_SOBEL, DMA_MEM_TO_DEV);
#else
#warning "VDMA_MM2S_HACK is in place"
            configureVDMA_hack(0x400B0000,DMA_MEM_TO_DEV,gLayerBase[SOBEL_LAYER]);
#endif
	        configureVDMA(VDMA_ID_SOBEL,DMA_DEV_TO_MEM,gLayerBase[DISPLAY_LAYER]);
	        startVDMA(VDMA_ID_SOBEL, DMA_DEV_TO_MEM);
        } else {
            configureVDMA(VDMA_ID_SOBEL,DMA_MEM_TO_DEV, gLayerBase[SOBEL_LAYER]);
            startVDMA(VDMA_ID_SOBEL, DMA_MEM_TO_DEV);
	        configureVDMA(VDMA_ID_SOBEL,DMA_DEV_TO_MEM, gLayerBase[DISPLAY_LAYER]);
	        startVDMA(VDMA_ID_SOBEL, DMA_DEV_TO_MEM);
        }

	    //Start the xsobel.
	    xsobel_start();

	}
	else if(newMode == SOBEL_OFF)
	{
            if (gDecodedVideoOn == 0) {
		configureVDMA(VDMA_ID_TPG,DMA_DEV_TO_MEM,gLayerBase[DISPLAY_LAYER]);
		startVDMA(VDMA_ID_TPG, DMA_DEV_TO_MEM);

		DEBUG_Text ("TPG vdma configured\n");
            }
	    xsobel_stop();
	}

	// might want to wait here if to activate sw sobel filter.
	currentStatus = newMode;
}

void vdma_reset(int vdma_id, int vdma_dir)
{
	int fd_vdma;
	struct xvdma_chan_cfg chan_cfg;
	struct xvdma_dev xdma_device_info;

	if ((fd_vdma = open("/dev/xvdma", O_RDWR)) < 0)
	{
		printf("Cannot open device node xvdma\n");
		//exit(1);
	}

	xdma_device_info.device_id = vdma_id;
	if (ioctl(fd_vdma, XVDMA_GET_DEV_INFO, &xdma_device_info) < 0)
	{
		printf("%s: Failed to get info for device id:%d", __func__, vdma_id);
	}

	if(vdma_dir == DMA_DEV_TO_MEM)
	{// rx
		chan_cfg.chan = xdma_device_info.rx_chan;
	}
	else
	{
		chan_cfg.chan = xdma_device_info.tx_chan;
	}

	chan_cfg.config.reset = 1;
	chan_cfg.config.direction = (dma_transfer_direction)vdma_dir;

	if (ioctl(fd_vdma, XVDMA_STOP_TRANSFER, &(chan_cfg.chan)) < 0)
		printf("VDMA: XVDMA_STOP_TRANSFER calling failed\n");


	if (ioctl(fd_vdma, XVDMA_DEVICE_CONTROL, &chan_cfg) < 0)
		printf("VDMA: XVDMA_DEVICE_CONTROL calling failed\n");

	close(fd_vdma);
}


void gpio_reset(int level)
{
	// reset TPG
	gpio_export(TPG_RST_PIN);
	gpio_dir_out(TPG_RST_PIN);
	gpio_value(TPG_RST_PIN, level);
	gpio_unexport(TPG_RST_PIN);

	// reset SOBEL
	gpio_export(SOBEL_RST_PIN);
	gpio_dir_out(SOBEL_RST_PIN);
	gpio_value(SOBEL_RST_PIN, level);
	gpio_unexport(SOBEL_RST_PIN);


#ifdef VTC_DETECT_HACK
	unsigned int activeSize =0;
	// set the external clock for the
	//Added as a check to enable external video only after detecting through VTC detect.
	///&& (gLiveVideoOn != currentLiveMode)
	if (gLiveVideoOn ) {

		//To be removed once VTC Detect is fixed.

		activeSize= get_detector_active_size();
		if(activeSize==0)
		{
			//FMC Card is not present.
			//Set video live to false.
			printf("%s :: FMC Card Not Present \n",__func__);
			gLiveVideoOn = 0;
		}


	}
#endif

	//Only if FMC is present switch to external video.
	if (gLiveVideoOn ) {
		if(!isFMCpresent)
		{
			//FMC Card is not present.
			//Set video live to false.
			printf("%s :: FMC Card Not Present \n",__func__);
			gLiveVideoOn = 0;

		}
	}
	gpio_export(EXT_SYNC_PIN);
	gpio_dir_out(EXT_SYNC_PIN);

	gpio_value(EXT_SYNC_PIN, gLiveVideoOn);
	gpio_unexport(EXT_SYNC_PIN);


}


void resetStop_VDMA_ALL(void)
{
	static int currentLiveMode = 0;
	unsigned int activeSize =0;


	gpio_reset(RST_ACTIVE);	// pull the reset line.

	// reset the Chroma-resampler and YUV to rgb converter.
	chr_stop_reset();
	yuv2rgb_stop_reset();

	DEBUG_Text("Reseting TPG_VDMA\n");
	// Reset TPG VDMA
	vdma_reset(VDMA_ID_TPG, DMA_DEV_TO_MEM);		// tpg
	DEBUG_Text("Reseting Sobel_out_VDMA\n");
	// Reset Sobel VDMA (IN and OUT)
	vdma_reset(VDMA_ID_SOBEL, DMA_DEV_TO_MEM);		// sobel out
	DEBUG_Text("Reseting Soble_in_VDMA\n");
	vdma_reset(VDMA_ID_SOBEL, DMA_MEM_TO_DEV);		// Soble in
	DEBUG_Text("VDMA Reset Done\n");

	// release the reset ( and set the required external clock)

	//enable chroma resmapler and yuv converter

	chr_configure(gResolution);
	chr_start();

	yuv2rgb_configure(gResolution);
	yuv2rgb_start();


	gpio_reset(RST_INACTIVE);


	if (gLiveVideoOn && (gLiveVideoOn != currentLiveMode))
	{
		//Detected Vertical Active Frame Size.ACTIVE_VSIZE 28:16
		// The height of the frame without blanking in number of lines.

		//Some Delay is added before reading VTC Detect register.
		//Need to removed by reading VTC detect LOCK register.
		//sleep(1);

		activeSize= get_detector_active_size();
		unsigned int vertSize = (activeSize >> 16) & 0xFFF;
		unsigned int horSize = (activeSize) & 0xFFF;

		// check if the input clock resolution.
		//printf("Resolution :: %d %d \n",horSize,vertSize);

		if ((gVideoParam[gResolution][E_HActive] != horSize)
				|| (gVideoParam[gResolution][E_VActive] != vertSize)){
			printf("Incorrect Input [Required:%d x %d @ 60fps(Hz)] \nTurning on the previous pattern\n",
					gVideoParam[gResolution][E_HActive],
					gVideoParam[gResolution][E_VActive]);
			gLiveVideoOn = 0;
			gpio_export(EXT_SYNC_PIN);
			gpio_dir_out(EXT_SYNC_PIN);
			gpio_value(EXT_SYNC_PIN, gLiveVideoOn);
			gpio_unexport(EXT_SYNC_PIN);
		}
		else
		{
			SetTpgPattern(gResolution, 0);
		}
	}
	currentLiveMode = gLiveVideoOn;


}

void configureVDMA_park(int vdma_id, int vdma_direction, unsigned long base_address)
{
	struct xvdma_dev xvdma_dev;
	int fd_vdma;
        int chan_index;

        if (vdma_id == VDMA_ID_TPG) {
            chan_index = 0;
        } else if (vdma_direction == DMA_MEM_TO_DEV) {
            chan_index = 1;
        } else {
            chan_index = 2;
        }

	if ((fd_vdma = open("/dev/xvdma", O_RDWR)) < 0)
	{
		printf("Cannot open device node xvdma\n");
	}

	xvdma_dev.device_id = vdma_id;

	if (ioctl(fd_vdma, XVDMA_GET_DEV_INFO, &xvdma_dev) < 0)
	{
		printf("%s: Failed to get info for device id:%d", __func__, vdma_id);
	}

	if(vdma_direction == DMA_DEV_TO_MEM)
	{
		gChanCfg[chan_index].chan = xvdma_dev.rx_chan;
		gBufInfo[chan_index].chan = xvdma_dev.rx_chan;
		gBufInfo[chan_index].mem_type = DMA_DEV_TO_MEM;
	}
	else
	{
		gChanCfg[chan_index].chan = xvdma_dev.tx_chan;
		gBufInfo[chan_index].chan = xvdma_dev.tx_chan;
		gBufInfo[chan_index].mem_type = DMA_MEM_TO_DEV;
	}

	/* Set up hardware configuration information */

	gChanCfg[chan_index].config.vsize = gVideoParam[gResolution][E_VActive];
	gChanCfg[chan_index].config.hsize = gVideoParam[gResolution][E_HActive] * 4; // width length in bytes (Assuming always a pixel is of 32bpp / 24bpp unpacked)
	gChanCfg[chan_index].config.stride = STRIDE_LENGTH * 4;		// stride length in bytes (Assuming always a pixel is of 32bpp / 24bpp unpacked)

	gChanCfg[chan_index].config.frm_cnt_en = 0; /* irq interrupt disabled(0), enabled(1) */
	gChanCfg[chan_index].config.frm_dly = 0;
	gChanCfg[chan_index].config.park = 1; /* circular_buf_en(0), park_mode(1) */
	gChanCfg[chan_index].config.gen_lock = 0; /* Gen-Lock */
	gChanCfg[chan_index].config.disable_intr = 0;
	gChanCfg[chan_index].config.direction = (dma_transfer_direction)vdma_direction;
	gChanCfg[chan_index].config.reset = 0;
	gChanCfg[chan_index].config.coalesc = 0;
	gChanCfg[chan_index].config.delay = 0;
	gChanCfg[chan_index].config.master = 0;
	if(vdma_id == 0)
		gChanCfg[chan_index].config.ext_fsync = 2; //fsync type
	else
		gChanCfg[chan_index].config.ext_fsync = 0; //fsync type

	if (ioctl(fd_vdma, XVDMA_DEVICE_CONTROL, &gChanCfg[chan_index]) < 0)			// --1--
		printf("VDMA: XVDMA_DEVICE_CONTROL calling failed\n");

	gBufInfo[chan_index].device_id = vdma_id;
	gBufInfo[chan_index].direction = vdma_direction;
	gBufInfo[chan_index].shared_buffer = 0;
	gBufInfo[chan_index].fixed_buffer = 1;
	gBufInfo[chan_index].addr_base = base_address;
	gBufInfo[chan_index].buf_size = ibufferoffset;
	gBufInfo[chan_index].frm_cnt = 3;
	if (ioctl(fd_vdma, XVDMA_PREP_BUF, &gBufInfo[chan_index]) < 0)
		printf("%s: Calling XVDMA_PREP_BUF failed\n",__func__);

	close(fd_vdma);
}

void startVDMA_park(int vdma_id, int vdma_direction, int frm_id)
{
	struct xvdma_dev xvdma_dev;
	int fd_vdma;
        int chan_index;
	struct xvdma_transfer xfer_param;

        if (vdma_id == VDMA_ID_TPG) {
            chan_index = 0;
        } else if (vdma_direction == DMA_MEM_TO_DEV) {
            chan_index = 1;
        } else {
            chan_index = 2;
        }
	if ((fd_vdma = open("/dev/xvdma", O_RDWR)) < 0)
	{
		printf("Cannot open device node xvdma\n");
	}

	if(gChanCfg[chan_index].config.park == 1) {
                gChanCfg[chan_index].config.direction = (dma_transfer_direction)vdma_direction;
		gChanCfg[chan_index].config.park_frm = frm_id;
        }
	else
	{
		printf("vdma_id = %d, vdma_dir = %d\n", vdma_id, vdma_direction);
		perror("\n\n*********  PARK MODE NOT SET ***** Some error in configuration\n\n");
	}


	if (ioctl(fd_vdma, XVDMA_DEVICE_CONTROL, &gChanCfg[chan_index]) < 0)
		perror("calling XVDMA_DEVICE_CONTROL failed\n");

	if (ioctl(fd_vdma, XVDMA_PREP_BUF, &gBufInfo[chan_index]) < 0)
		perror("Calling XVDMA_PREP_BUF failed\n");


	xvdma_dev.device_id = vdma_id;
	xfer_param.wait = 0;

	if (ioctl(fd_vdma, XVDMA_GET_DEV_INFO, &xvdma_dev) < 0)
	{
		printf("%s: Failed to get info for device id:%d", __func__, vdma_id);
	}

	switch(vdma_direction)
	{
	case DMA_DEV_TO_MEM:
	{
		xfer_param.chan =  xvdma_dev.rx_chan;
	}
	break;

	case DMA_MEM_TO_DEV:
	{
		xfer_param.chan =  xvdma_dev.tx_chan;
	}
	break;

	default:
		perror("Invalid direction for start transfer");
		break;

	}
	if (ioctl(fd_vdma, XVDMA_START_TRANSFER, &xfer_param) < 0)
		printf("%s: Calling XVDMA_START_TRANSFER failed\n",__func__);

	close(fd_vdma);
}

void configureVDMA(int vdma_id, int vdma_direction, unsigned long base_address)
{
	struct xvdma_dev xvdma_dev;
	struct xvdma_chan_cfg chan_cfg;
	struct xvdma_buf_info buf_info;
	int fd_vdma;

	if ((fd_vdma = open("/dev/xvdma", O_RDWR)) < 0)
	{
		printf("Cannot open device node xvdma\n");
	}

	xvdma_dev.device_id = vdma_id;

	if (ioctl(fd_vdma, XVDMA_GET_DEV_INFO, &xvdma_dev) < 0)
	{
		printf("%s: Failed to get info for device id:%d", __func__, vdma_id);
	}

	if(vdma_direction == DMA_DEV_TO_MEM)
	{
		chan_cfg.chan = xvdma_dev.rx_chan;
		buf_info.chan = xvdma_dev.rx_chan;
		buf_info.mem_type = DMA_DEV_TO_MEM;
	}
	else
	{
		chan_cfg.chan = xvdma_dev.tx_chan;
		buf_info.chan = xvdma_dev.tx_chan;
		buf_info.mem_type = DMA_MEM_TO_DEV;
	}

	/* Set up hardware configuration information */

	chan_cfg.config.vsize = gVideoParam[gResolution][E_VActive];
	chan_cfg.config.hsize = gVideoParam[gResolution][E_HActive] * 4; // width length in bytes (Assuming always a pixel is of 32bpp / 24bpp unpacked)
	chan_cfg.config.stride = STRIDE_LENGTH * 4;		// stride length in bytes (Assuming always a pixel is of 32bpp / 24bpp unpacked)

	chan_cfg.config.frm_cnt_en = 0; /* irq interrupt disabled(0), enabled(1) */
	chan_cfg.config.frm_dly = 0;
	chan_cfg.config.park = 0; /* circular_buf_en(0), park_mode(1) */
	chan_cfg.config.gen_lock = 0; /* Gen-Lock */
	chan_cfg.config.disable_intr = 0;
	chan_cfg.config.direction = (dma_transfer_direction)vdma_direction;
	chan_cfg.config.reset = 0;
	chan_cfg.config.coalesc = 0;
	chan_cfg.config.delay = 0;
	chan_cfg.config.master = 0;
	if(vdma_id == 0)
		chan_cfg.config.ext_fsync = 2; //fsync type
	else
		chan_cfg.config.ext_fsync = 0; //fsync type

	if (ioctl(fd_vdma, XVDMA_DEVICE_CONTROL, &chan_cfg) < 0)			// --1--
		printf("VDMA: XVDMA_DEVICE_CONTROL calling failed\n");

	buf_info.device_id = vdma_id;
	buf_info.direction = vdma_direction;
	buf_info.shared_buffer = 0;
	buf_info.fixed_buffer = 1;
	buf_info.addr_base = base_address;
	buf_info.buf_size = ibufferoffset;
	buf_info.frm_cnt = 3;
	if (ioctl(fd_vdma, XVDMA_PREP_BUF, &buf_info) < 0)
		printf("%s: Calling XVDMA_PREP_BUF failed\n",__func__);

	close(fd_vdma);
}

void startVDMA(int vdma_id, int vdma_direction)
{
	struct xvdma_dev xvdma_dev;
	int fd_vdma;
	struct xvdma_transfer xfer_param;
	if ((fd_vdma = open("/dev/xvdma", O_RDWR)) < 0)
	{
		printf("Cannot open device node xvdma\n");
	}

	xvdma_dev.device_id = vdma_id;
	xfer_param.wait = 0;

	if (ioctl(fd_vdma, XVDMA_GET_DEV_INFO, &xvdma_dev) < 0)
	{
		printf("%s: Failed to get info for device id:%d", __func__, vdma_id);
	}

	switch(vdma_direction)
	{
	case DMA_DEV_TO_MEM:
	{
		xfer_param.chan =  xvdma_dev.rx_chan;
	}
	break;

	case DMA_MEM_TO_DEV:
	{
		xfer_param.chan =  xvdma_dev.tx_chan;
	}
	break;

	default:
		perror("Invalid direction for start transfer");
		break;

	}
	if (ioctl(fd_vdma, XVDMA_START_TRANSFER, &xfer_param) < 0)
		printf("%s: Calling XVDMA_START_TRANSFER failed\n",__func__);

	close(fd_vdma);
}

int image_cmp(unsigned char* img1, unsigned char* img2) {
    int ret = 0;
    unsigned long int pos = 0;
    for (int i = 0; i < 1080; i++) {
        for (int j = 0; j < 1920; j++) {
            //get pixel position;
            pos = (i * 2048 * 4) + (j * 4);
            if (memcmp((void*)(img1+pos), (void*)(img2+pos), 3) != 0) {
                ret = 1;
                break;
            }
        }
    }
    return ret;
}

void image_save(ZNQ_S32 *rgb_data_in, ZNQ_S32 *rgb_data_out, int height, int width, int stride, int flag_OpenCV, char* sw_image_filename, char* hw_image_filename) 
{
	IplImage* src_dma = cvCreateImageHeader(cvSize(width, height), IPL_DEPTH_8U, 4);
	IplImage* dst_dma = cvCreateImageHeader(cvSize(width, height), IPL_DEPTH_8U, 4);
        src_dma->imageData = (char*)rgb_data_in;
        dst_dma->imageData = (char*)rgb_data_out;
        src_dma->widthStep = 4 * stride;
        dst_dma->widthStep = 4 * stride;

        cvSaveImage(sw_image_filename, src_dma);
        cvSaveImage(hw_image_filename, dst_dma);

	cvReleaseImageHeader(&src_dma);
	cvReleaseImageHeader(&dst_dma);
}

void sw_sobel_processing_compare_with_hw(unsigned long in_buffer_sw, unsigned char* virtual_addr_out_sw, unsigned long out_buffer_hw)
{
	unsigned long int map_len = 2048 * 1080 * 4;
	int fd = open("/dev/mem", O_RDWR);

        static int n = 0;
        char sw_bmp_filename[100];
        char hw_bmp_filename[100];

	unsigned char* virtual_addr_in_sw;
	unsigned char* virtual_addr_out_hw;

	virtual_addr_in_sw  = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)in_buffer_sw);
	DEBUG_Text ("starting sw sobel\n");
	img_process((ZNQ_S32 *)virtual_addr_in_sw, (ZNQ_S32 *)virtual_addr_out_sw,
			gVideoParam[gResolution][E_VActive], gVideoParam[gResolution][E_HActive], STRIDE_LENGTH, gSwUsingOpenCV);
	DEBUG_Text ("sw sobel done\n");

	virtual_addr_out_hw = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)(out_buffer_hw));

        if (image_cmp((virtual_addr_out_sw), (virtual_addr_out_hw)) != 0) {
            printf("NOTICE: sw/hw filtered frames not equal!\n");
            sprintf(sw_bmp_filename, "sw%d.bmp", n);
            sprintf(hw_bmp_filename, "hw%d.bmp", n);
            n++;

            if (n > 5) exit(1);

	    image_save((ZNQ_S32 *)virtual_addr_out_sw, (ZNQ_S32 *)virtual_addr_out_hw,
			gVideoParam[gResolution][E_VActive], gVideoParam[gResolution][E_HActive], STRIDE_LENGTH, gSwUsingOpenCV, sw_bmp_filename, hw_bmp_filename);
        } else {
            printf("sw/hw filtered frames are equal.\n");
        }

	munmap((void *)virtual_addr_out_hw, map_len);
	munmap((void *)virtual_addr_in_sw, map_len);

	close (fd);
}

#define GPIO_7_PIN           (GPIO_BANK_OFFSET + 7)

void sw_sobel_processing(unsigned long in_buffer, unsigned long out_buffer)
{

	unsigned long int map_len = 2048 * 1080 * 4;
	int fd = open("/dev/mem", O_RDWR);

	unsigned char* virtual_addr_in;
	unsigned char* virtual_addr_out;

	virtual_addr_in = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)in_buffer);
	virtual_addr_out = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)out_buffer);
	DEBUG_Text ("starting sw sobel\n");
	img_process((ZNQ_S32 *)virtual_addr_in, (ZNQ_S32 *)virtual_addr_out,
			gVideoParam[gResolution][E_VActive], gVideoParam[gResolution][E_HActive], STRIDE_LENGTH, gSwUsingOpenCV);
	DEBUG_Text ("sw sobel done\n");

#ifdef PULSE_FOR_TSC
        // set GPIO #7 high;
	gpio_export(GPIO_7_PIN);
	gpio_dir_out(GPIO_7_PIN);
	gpio_value(GPIO_7_PIN, 1);
	gpio_unexport(GPIO_7_PIN);

        // then set GPIO #7 low to make a pulse;
	gpio_export(GPIO_7_PIN);
	gpio_dir_out(GPIO_7_PIN);
	gpio_value(GPIO_7_PIN, 0);
	gpio_unexport(GPIO_7_PIN);
#endif

	munmap((void *)virtual_addr_out, map_len);
	munmap((void *)virtual_addr_in, map_len);

	close (fd);
}

#define FSYNC_PIN           (GPIO_BANK_OFFSET + 5)
#define FSYNC_SEL_PIN       (GPIO_BANK_OFFSET + 4)
#define TPG_VDMA_FSYNC_OUT  0
#define GPIO_FSYNC          1

static void gpio_fsync_select(int fsync_src) {
        gpio_export(FSYNC_SEL_PIN);
	gpio_dir_out(FSYNC_SEL_PIN);
        gpio_value(FSYNC_SEL_PIN, fsync_src);
        gpio_unexport(FSYNC_SEL_PIN);
}

static void gpio_fsync_out() {

        toggle_value = toggle_value ^ 1;

        gpio_export(FSYNC_PIN);
	gpio_dir_out(FSYNC_PIN);
        gpio_value(FSYNC_PIN, toggle_value);
        gpio_unexport(FSYNC_PIN);
}

//#define SW_HW_COMPARE

void *thread_sw_sync(void* temp)
{
	void sw_sobel_processing(unsigned long in_buffer, unsigned long out_buffer);
	(void) temp;
	int current_state = gActiveState;
	int new_state = gActiveState;
        int current_decoder_state = gDecodedVideoOn;
        int new_decoder_state = gDecodedVideoOn;
	unsigned long int vmem[MAX_BUFFER];
	unsigned long int sob_buff[MAX_BUFFER];
	int i = 0;
	int offset = 0;
        int ret = 0;

#ifdef SW_HW_COMPARE
        unsigned char* tempBuff;
        if ((tempBuff = (unsigned char*)malloc(ibufferoffset*sizeof(unsigned char))) == 0) {
            perror("\n *** memory allocation for software compare failed *** \n");
            exit(1);
        }
#endif

	// starting indices
	int tpg_index = 2 ,cvc_index = 0, sobel_in_index = 1, sobel_out_index = 1;

	for (i = 0; i<MAX_BUFFER; i++)
	{
		vmem[i] = gLayerBase[DISPLAY_LAYER] + offset;
		sob_buff[i] = gLayerBase[SOBEL_LAYER] + offset;
		offset += ibufferoffset;
	}
	set_cvc_circular_mode(DISPLAY_LAYER,1);

        char video_file_name[256];
        sprintf(video_file_name, VIDEO_FILE);

	while(1)
	{
		new_state = gActiveState;
                new_decoder_state = gDecodedVideoOn;
		if (new_state == STATE_EXIT)
		{
		    resetStop_VDMA_ALL();
		    gSwSobelState = SW_SOBEL_STATE_OFF;
		    break;
		} 
                else if (new_state == SOBEL_OFF && new_decoder_state == 0)
		{
                    if (current_state != new_state || current_decoder_state != new_decoder_state) {
                        gpio_fsync_select(TPG_VDMA_FSYNC_OUT);
		        set_cvc_circular_mode(DISPLAY_LAYER,1);
                    }
                    if (current_decoder_state == 1) {
                        ffmpeg_free();
                    }
		    gSwSobelState = SW_SOBEL_STATE_OFF;
		}
                else if (new_state == SOBEL_OFF && new_decoder_state == 1)
		{
                    if (current_state != new_state || current_decoder_state != new_decoder_state) {
                        gpio_fsync_select(GPIO_FSYNC);
                        tpg_index = 0; cvc_index = 1; sobel_in_index = 2; sobel_out_index = 2;
		        set_cvc_circular_mode(DISPLAY_LAYER,0);
                    }
                    if (current_decoder_state == 0) {
                        ret = ffmpeg_init(video_file_name);
                        if (ret) {
                            gDecodedVideoOn = 0;
                            new_decoder_state = 0;
                            continue;
                        }
                    }
                    ffmpeg_read_one_frame(DISPLAY_LAYER, vmem[sobel_out_index]);

                    set_cvc_frm_id(DISPLAY_LAYER, cvc_index);
		    
                    gSwSobelState = SW_SOBEL_STATE_OFF;
		}
                else if (new_state == SOBEL_HW && new_decoder_state == 0)
		{
                    if (current_state != new_state || current_decoder_state != new_decoder_state) {
                        gpio_fsync_select(GPIO_FSYNC);
                        //gpio_fsync_select(TPG_VDMA_FSYNC_OUT);
		        set_cvc_circular_mode(DISPLAY_LAYER,1);
                    }
                    if (current_decoder_state == 1) {
                        ffmpeg_free();
                    }
                    gSwSobelState = SW_SOBEL_STATE_OFF;
		}
                else if (new_state == SOBEL_HW && new_decoder_state == 1)
		{
                    if (current_state != new_state || current_decoder_state != new_decoder_state) {
                        gpio_fsync_select(GPIO_FSYNC);
                        tpg_index = 0; cvc_index = 1; sobel_in_index = 2; sobel_out_index = 2;
                        set_cvc_circular_mode(DISPLAY_LAYER,0);
                    }
                    if (current_decoder_state == 0) {
                        ret = ffmpeg_init(video_file_name);
                        if (ret) {
                            gDecodedVideoOn = 0;
                            new_decoder_state = 0;
                            continue;
                        }
                    }
                    ffmpeg_read_one_frame(SOBEL_LAYER, sob_buff[tpg_index]);
                    
                    set_cvc_frm_id(DISPLAY_LAYER, cvc_index);

                    gpio_fsync_out();

#ifdef SW_HW_COMPARE
                    gSwUsingOpenCV = 1;
		    sw_sobel_processing_compare_with_hw(sob_buff[tpg_index], tempBuff, vmem[tpg_index]);
#endif

		    gSwSobelState = SW_SOBEL_STATE_OFF;
		}
                else if (new_state == SOBEL_SW && new_decoder_state == 0)
                {
                    if (current_state != new_state || current_decoder_state != new_decoder_state) {
                        resetStop_VDMA_ALL();
                        tpg_index = 0; cvc_index = 1; sobel_in_index = 2; sobel_out_index = 2;
		        set_cvc_circular_mode(DISPLAY_LAYER,0);
	                configureVDMA_park(VDMA_ID_TPG, DMA_DEV_TO_MEM, gLayerBase[SOBEL_LAYER]);
                    }
                    if (current_decoder_state == 1) {
                        ffmpeg_free();
                    }
		    if (current_state != SOBEL_SW) {
			resetStop_VDMA_ALL();
		    }
                    startVDMA_park(VDMA_ID_TPG, DMA_DEV_TO_MEM, tpg_index);
                    set_cvc_frm_id(DISPLAY_LAYER, cvc_index);
		    sw_sobel_processing(sob_buff[sobel_in_index], vmem[sobel_out_index]);

		    gSwSobelState = SW_SOBEL_STATE_ON;
                }
                else if (new_state == SOBEL_SW && new_decoder_state == 1)
                {
                    if (current_state != new_state || current_decoder_state != new_decoder_state) {
                        resetStop_VDMA_ALL();
                        tpg_index = 0; cvc_index = 1; sobel_in_index = 2; sobel_out_index = 2;
		        set_cvc_circular_mode(DISPLAY_LAYER,0);
                    }
		    if (current_state != SOBEL_SW) {
			resetStop_VDMA_ALL();
		    }
                    if (current_decoder_state == 0) {
                        ret = ffmpeg_init(video_file_name);
                        if (ret) {
                            gDecodedVideoOn = 0;
                            new_decoder_state = 0;
                            continue;
                        }
                    }
                    ffmpeg_read_one_frame(SOBEL_LAYER, sob_buff[sobel_in_index]);

		    sw_sobel_processing(sob_buff[sobel_in_index], vmem[sobel_out_index]);

                    set_cvc_frm_id(DISPLAY_LAYER, cvc_index);

		    gSwSobelState = SW_SOBEL_STATE_ON;
                } 
                else 
                {
                    perror("\n *** state transition error *** \n");
                }
		    tpg_index++; tpg_index = ((tpg_index < MAX_BUFFER) ? tpg_index : tpg_index - MAX_BUFFER);
		    cvc_index++; cvc_index = ((cvc_index < MAX_BUFFER) ? cvc_index : cvc_index - MAX_BUFFER);
		    sobel_in_index++; sobel_in_index = ((sobel_in_index < MAX_BUFFER) ? sobel_in_index : sobel_in_index - MAX_BUFFER);
		    sobel_out_index++; sobel_out_index = ((sobel_out_index < MAX_BUFFER) ? sobel_out_index : sobel_out_index - MAX_BUFFER);

		current_state = new_state;
                current_decoder_state = new_decoder_state;
	} // end of the while loop.


	pthread_exit(NULL);

}


void *thread_perf_counter(void* temp)
{
        FILE* fp;
	perf_enable_counters();

        char perf_log_name[128];
        sprintf(perf_log_name, PERF_MON_LOG);

        unsigned long long hp0_total_perf, hp1_total_perf, hp0_read_perf, hp0_write_perf, hp1_read_perf, hp1_write_perf = 0;
        unsigned int interval_seconds = 1;
        unsigned long total_seconds = 0;
        double conv_factor = 0.000000008 / interval_seconds;

        if ((fp = fopen(perf_log_name, "w")) == NULL) {
                perror("\n ***** Open AXI Performance Monitor log file failed. ***** \n");
        } 

	while(1)
	{
		int new_state = gPerformanceOn;
		if(new_state == 0)
		{
			//todo: stop & disable the perf counter.
			break;
		}

		perf_RestartCounters();

		if(perf_wait_for_update() != 0)
		{
			printf("Error:Waiting for perfmon timeout\n");
			continue;
		}

		hp0_read_cnt = get_perf(E_HP_PORT_0,E_READ_PERF);
		hp0_write_cnt = get_perf(E_HP_PORT_0,E_WRITE_PERF);

		hp1_read_cnt = get_perf(E_HP_PORT_2,E_READ_PERF);
		hp1_write_cnt = get_perf(E_HP_PORT_2,E_WRITE_PERF);

                total_seconds++;

                hp0_read_perf  += hp0_read_cnt;
                hp0_write_perf += hp0_write_cnt;
                hp1_read_perf  += hp1_read_cnt;
                hp1_write_perf += hp1_write_cnt;

                if (total_seconds % interval_seconds == 0) {
                    hp0_total_perf = hp0_read_perf + hp0_write_perf;
                    hp1_total_perf = hp1_read_perf + hp1_write_perf;
                    fprintf(fp, "HP0: Read %03.2f Gb/s, Write %03.2f Gb/s, Total %03.2f Gb/s;  HP2: Read %03.2f Gb/s, Write %03.2f Gb/s, Total %03.2f Gb/s;  Time: %ld\n\r",
                            hp0_read_perf*conv_factor, hp0_write_perf*conv_factor, hp0_total_perf*conv_factor,
                            hp1_read_perf*conv_factor, hp1_write_perf*conv_factor, hp1_total_perf*conv_factor,
                            total_seconds);

                    hp0_read_perf  = 0;
                    hp0_write_perf  = 0;
                    hp1_read_perf  = 0;
                    hp1_write_perf  = 0;
                }


	} // end of the while loop.

        fclose(fp);

	pthread_exit(NULL);
	return NULL;
}

#include <math.h>
#include <unistd.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <linux/i2c.h> // TODO added to help compile error
#include <linux/i2c-dev.h>
#include "i2c-dev.h"

#define CMD_PAGE 	  0x00
#define CMD_READ_VOUT 0x8B
#define CMD_READ_IOUT 0x8C

struct voltage_rail {
	char *name;
	unsigned char device;
	unsigned char page;
	double average_power;
};

double linear11ToFloat(unsigned char highByte, unsigned char lowByte) {
	unsigned short combinedWord;
	signed char exponent;
	signed short mantissa;
	double current;

	combinedWord = highByte;
	combinedWord <<= 8;
	combinedWord += lowByte;

	exponent = combinedWord >> 11;
	mantissa = combinedWord & 0x7ff;

	/* Sign extend the exponent and the mantissa */
	if(exponent > 0x0f) {
		exponent |= 0xe0;
	}
	if(mantissa > 0x03ff) {
		mantissa |= 0xf800;
	}

	current = mantissa * pow(2.0, exponent);

	return (float)current;
}

float readVoltage(int iic_fd, unsigned char deviceAddress, unsigned char pageAddress) {
	float voltage;
	int status;

	if (ioctl(iic_fd, I2C_SLAVE, deviceAddress) < 0) {
		printf("ERROR: Unable to set I2C slave address 0x%02X\n", deviceAddress);
		exit(1);
	}

	status = i2c_smbus_write_byte_data(iic_fd, CMD_PAGE, pageAddress);
	if (status < 0) {
		printf("ERROR: Unable to write page address to I2C slave at 0x%02X: %d\n", deviceAddress, status);
		exit(1);
	}

	/* Read in the voltage value */
	status = i2c_smbus_read_word_data(iic_fd, CMD_READ_VOUT);
	if(status < 0) {
		printf("ERROR: Unable to read VOUT on I2C slave at 0x%02X: %d\n", deviceAddress, status);
		exit(1);
	}

	voltage = status / 4096.0f;
	return voltage;
}

float readCurrent(int iic_fd, unsigned char deviceAddress, unsigned char pageAddress) {
	double current;
	int status;

	if (ioctl(iic_fd, I2C_SLAVE, deviceAddress) < 0) {
		printf("ERROR: Unable to set I2C slave address 0x%02X\n", deviceAddress);
		exit(1);
	}

	status = i2c_smbus_write_byte_data(iic_fd, CMD_PAGE, pageAddress);
	if (status < 0) {
		printf("ERROR: Unable to write page address to I2C slave at 0x%02X: %d\n", deviceAddress, status);
		exit(1);
	}

	/* Read in the voltage value */
	status = i2c_smbus_read_word_data(iic_fd, CMD_READ_IOUT);
	if(status < 0) {
		printf("ERROR: Unable to read IOUT on I2C slave at 0x%02X: %d\n", deviceAddress, status);
		exit(1);
	}

	/* We have to decode teh LINEAR11 format. The format is composed of a 16-bit
	 * value with an 11-bit mantissa and a 5-bit exponent. The mantissa has 10
	 * significant bits with a sign bit allowing for values between -1024 and +1023.
	 * The exponent has four significant bits plus one sign bit allowing for exponent
	 * values between -16 to +15, or a full range of 2^-16 to 1023*2^15
	 */
	current = linear11ToFloat((unsigned char)((status >> 8) & 0xff), (unsigned char)(status & 0xff));
	return current;
}


struct voltage_rail zc702_rails[] = {
			{
					name			: "VccInt",
					device			: 52,
					page			: 0,
					average_power	: 0.0
			},
			{
					name	: "VccPInt",
					device	: 52,
					page	: 1,
					average_power	: 0.0
			},
			{
					name	: "VccAux",
					device	: 52,
					page	: 2,
					average_power	: 0.0
			},
			{
					name	: "VccPAux",
					device	: 52,
					page : 3,
					average_power	: 0.0
			},
			{
					name	: "Vadj",
					device	: 53,
					page	: 0,
					average_power	: 0.0
			},
			{
					name	: "Vcc1V5_PS",
					device	: 53,
					page	: 1,
					average_power	: 0.0
			},
			{
					name	: "VccMIO_PS",
					device	: 53,
					page	: 2,
					average_power	: 0.0
			},
			{
					name	: "VccBRAM",
					device	: 53,
					page	: 3,
					average_power	: 0.0
			},
			{
					name	: "Vcc3V3",
					device	: 54,
					page	: 0,
					average_power	: 0.0
			},
			{
					name	: "Vcc2V5",
					device	: 54,
					page	: 1,
					average_power	: 0.0
			}
};



void *thread_power_counter(void* temp)
{
	int iic_fd;
	float voltage;
	double current;
	double power;
	int i, j;
	unsigned int loop = 0;
	double totalPower = 0;

    // Fixme: this changes depending on the device tree.
	iic_fd = open("/dev/i2c-9", O_RDWR);
	if (iic_fd < 0) {
		printf("ERROR: Unable to open /dev/i2c-9 for PMBus access: %d\n", iic_fd);
		exit(1);
	}
	j = sizeof(zc702_rails) / sizeof(struct voltage_rail);
	while(1) {
		totalPower = 0.0f;

		for(i = 0; i < j; i++) {
            zc702_rails[i].average_power = 0;
        }
        const int count = 50;
        for(int k = 0; k < count; k++) {
		for(i = 0; i < j; i++) {
			voltage = readVoltage(iic_fd, zc702_rails[i].device, zc702_rails[i].page);
			current = readCurrent(iic_fd, zc702_rails[i].device, zc702_rails[i].page);
			power = voltage * current * 1000/count;
            zc702_rails[i].average_power += power;
			totalPower += power;
            if(k == count-1)
                printf("%s: %.2f mW ~(%.2f V, %.2f mA)\n",zc702_rails[i].name, zc702_rails[i].average_power,voltage,current);
		}

        }
        printf("TOTAL: %.2f mW\n\n",totalPower);

		usleep(500 * 1000); /* sleep for 50 millisecond */
	}
	close(iic_fd);
}



////////////////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////////////////

//hwi_init function should be called once.
int hwi_init(int screenWidth, int screenHeight,int winWidth, int winHeight)
{


	// Performs UIO initialization.
	if (tpg_init() != 0)
	{
		printf("TPG UIO node not found\n");
		return EXIT_FAILURE;
	}
	if (cre_init() != 0)
	{
		printf("CRE  UIO node not found\n");
		return EXIT_FAILURE;
	}
	if (yuv2rgb_init() != 0)
	{
		printf("YUV UIO node not found\n");
		return EXIT_FAILURE;
	}
	if (perf_monitor_init() != 0)
	{
		printf("PerfMon UIO node not found\n");
		return EXIT_FAILURE;
	}

	if (vtc_init() != 0)
	{
		printf("VTC UIO node not found\n");
		return EXIT_FAILURE;
	}

	hwi_screenWidth = screenWidth;
	hwi_screenHeight = screenHeight;
	hwi_winWidth = screenWidth>winWidth?winWidth:screenWidth;
	hwi_winHeight = screenHeight>winHeight?winHeight:screenHeight;

	gPerformanceOn = 1;
	//Retrieve Layer Base address and offset from FrameBuffer driver API.
	struct fb_fix_screeninfo screeninfo;
	memset((void *) &screeninfo,0,sizeof(struct fb_fix_screeninfo));
	//Temporarily Using id field as identifier for FrameBuffer device LAYER0.
	sprintf(screeninfo.id, "/dev/fb0");
	//Call CVC function to populate the screen values.
	if (getFBScreenInfo(&screeninfo)!=EXIT_SUCCESS)
	{
		perror("TRD :: FrameBuffer Error App Exiting ");
		exit(EXIT_FAILURE);
	}
	//Load LAYER0 Base address from FrameBuffer screen info.
	gLayerBase[0]=screeninfo.smem_start;

	memset((void *) &screeninfo,0,sizeof(struct fb_fix_screeninfo));
	//Temporarily Using id field as identifier for FrameBuffer device (LAYER1).
	sprintf(screeninfo.id, "/dev/fb1");

	//Call CVC function to populate the screen values.
	if (getFBScreenInfo(&screeninfo)!=EXIT_SUCCESS)
	{
		perror("TRD :: FrameBuffer Error App Exiting ");
		exit(EXIT_FAILURE);

	}

	gLayerBase[1]=screeninfo.smem_start;


	//LAYER 2 , Base address is calculated from LAYER 1 base address + len.
	gLayerBase[2]=screeninfo.smem_start+screeninfo.smem_len;


	//Compute buffer offset . Since there are 3 buffers in each layer .
	ibufferoffset=screeninfo.smem_len/3;



	//Read FMC Detect status
	if(fmc_status()==EXIT_SUCCESS)
		isFMCpresent=1;


	return EXIT_SUCCESS;
}

//Performs HW un-initialization .
int hwi_deinit()
{

	gPerformanceOn = 0;
	// join perf thread
	//Check if the thread is created
	if(ithreadsbookkeeping[0])
	{
		//Wait for child thread to terminate.
		int ret=pthread_join(perf_count_thread,NULL);
		if(ret!=EXIT_SUCCESS)
			perror ("hwi_deinit ");
	}



	ithreadsbookkeeping[0]=0;
	ithreadsbookkeeping[1]=0;

	// Un-initialize the UIO drivers

	tpg_deinit();
	cre_deinit();
	yuv2rgb_deinit();
	perf_monitor_deinit();
	vtc_deinit();

	return EXIT_SUCCESS;
}
//Check if input resolution is supported by TRD.
int hwi_isresolutionSupported(int screenWidth, int screenHeight )
{

	int i=0;
	for (i=0 ;i < E_Resolution_MAX; i++)
	{
		if ((unsigned) (screenHeight) == gVideoParam[i][E_VActive] && (unsigned)(screenWidth) == gVideoParam[i][E_HActive])
		{
			gResolution = i;
			break;
		}
	}




	if (i == E_Resolution_MAX)
	{
		printf("Invalid Resolution ");
		return EXIT_FAILURE;

	}
	return EXIT_SUCCESS;

}


int hwi_initPerfMon()
{

	int ret=0;
    /* uncomment for power readout */
    /*     ret = pthread_create(&power_count_thread, NULL, &thread_power_counter, NULL); // TODO */
    /*     if (ret) { */
    /*         printf("ERROR: return code from pthread_create() for power_counter is %d\n", ret); */
    /*         return -1; */
    /*     } */

	// spawn a thread to throw out performance numbers
	ret = pthread_create(&perf_count_thread, NULL, &thread_perf_counter, NULL);
	if (ret)
	{
		printf("ERROR; return code from pthread_create() is %d\n", ret);
		return EXIT_FAILURE;
	}
	else
	{
		//Set the thread state to live.
		ithreadsbookkeeping[0]=1;
	}

	return EXIT_SUCCESS;
}

int hwi_initCvc(applicationModeE appmode)
{
	if(!hwi_cvcInitialized)
	{

		resetStop_VDMA_ALL();



		//One time configuration for xsobel filter.
		xsobel_config(gVideoParam[gResolution][E_VActive],gVideoParam[gResolution][E_HActive]);

		switch(appmode)
		{
		case SOBEL_QT:
			//Sobel_qt application specific initialization.
			set_gui_layer_mode(1);

			set_disp_layer_mode(1); //Set the DISPLAY layer parameters.
			hwi_setHmiWindowParam(0,hwi_screenHeight-hwi_winHeight,hwi_winWidth,hwi_winHeight);
			break;

		case SOBEL_CMD:
			//Sobel_cmd application specific initialization.

			disable_cvc_layer(GUI_LAYER);
			set_disp_layer_mode(1);
			break;
		}



		hwi_cvcInitialized = 1;
	}
	return EXIT_SUCCESS;
}

int hwi_deinitCvc(applicationModeE appmode)
{
	gPerformanceOn = 0;

	if(hwi_cvcInitialized)
	{

		switch(appmode)
		{
		case SOBEL_QT:
			//Sobel_qt application specific initialization.
			set_gui_layer_mode(0);
			set_disp_layer_mode(0); //Reset DISPLAY LAYER.

			//set the UI Layer to normal.

			hwi_setHmiWindowParam(0,0,hwi_screenWidth,hwi_screenHeight);
			break;

		case SOBEL_CMD:
			//Sobel_cmd application specific initialization.
			set_disp_layer_mode(0);
			enable_cvc_layer(GUI_LAYER);
			break;
		}

		hwi_cvcInitialized = 0;



	}
	return EXIT_SUCCESS;
}

int hwi_setHmiWindowParam(int xoffset,int yoffset,int width,int height)
{

	set_cvc_hmi_layer_parameters(xoffset,yoffset,width,height);
	return EXIT_SUCCESS;


}


int hwi_initTpgVdma(void)
{

	int ret;

	if(!hwi_tpgVdmaInitialized)
	{
		hwi_tpgVdmaInitialized = 1;

		gActiveState = SOBEL_OFF;  // input to sync thread (set by changeSobelMode and used by sync thread)
		gSwSobelState = SW_SOBEL_STATE_OFF; // output from sync thread (set by sync thread to ack to changesobel mode -- semaphore is option, but doesn't really need that.)
		gLiveVideoOn = 0;
                gSwUsingOpenCV = 1;
                gDecodedVideoOn = 0;
		//SelectSobelMode = SOBEL_OFF;

		//resetStop_VDMA_ALL();
		// spawn a thread to check the sw synchronisation while software sobel filter is On.
		ret = pthread_create(&sw_sync_thread, NULL, &thread_sw_sync, NULL);
		if (ret)
		{
			printf("ERROR; return code from pthread_create() is %d\n", ret);
			return EXIT_FAILURE;
		}
		else
		{
			//Set SW sync thread creation state.	'
			ithreadsbookkeeping[1]=1;
		}
                configure_timebase(gResolution);
	}
	return EXIT_SUCCESS;
}


int hwi_deinitTpgVdma(void)
{
	if(hwi_tpgVdmaInitialized)
	{
		hwi_tpgVdmaInitialized = 0;
		//resetStop_VDMA_ALL();
		gActiveState = SOBEL_OFF;
		ChangeSobelMode();
		gActiveState = STATE_EXIT;  // this kills the thread

		if(ithreadsbookkeeping[1])
		{
			int ret=pthread_join(sw_sync_thread,NULL);
			if(ret!=EXIT_SUCCESS)
				perror("hwi_deinitTpgVdma ");
			else
				ithreadsbookkeeping[1]=0; //Thread successfully terminated.
		}

		hp0_read_cnt = 0;
		hp0_write_cnt = 0;
		hp1_read_cnt = 0;
		hp1_write_cnt = 0;
	}

	return EXIT_SUCCESS;
}

int hwi_setModes(tpgModeE input_mode, sobelModeE filter_mode) {

    int ret = 0;
    int pattern = 0;

    int tmp_gLiveVideoOn = 0;
    int tmp_gSwUsingOpenCV = 0;
    int tmp_gDecodedVideoOn = 0;
    int tmp_gActiveState = 0;

    switch(input_mode) {
	case TPG_INTERFERENCE_E:
            tmp_gLiveVideoOn = 0;
            tmp_gDecodedVideoOn = 0;
            SetTpgPattern(gResolution, TEST_PATTERN);
	    break;
	case TPG_VIDEO_E:
            tmp_gLiveVideoOn = 1;
            tmp_gDecodedVideoOn = 0;
	    break;
        case TPG_FFMPEG_E:
	    tmp_gLiveVideoOn = 0;
            tmp_gDecodedVideoOn = 1;
	    break;
	default:
	    ret = -1;
	    break;
    }
    switch(filter_mode) {
	case SOBEL_OFF_E:
	    tmp_gActiveState = SOBEL_OFF;
	    break;
	case SOBEL_ON_SW_OPENCV_E:
	    tmp_gActiveState = SOBEL_SW;
            tmp_gSwUsingOpenCV = 1;
	    break;
	case SOBEL_ON_SW_NO_NEON_E:
	    tmp_gActiveState = SOBEL_SW;
            tmp_gSwUsingOpenCV = 0;
	    break;
	case SOBEL_ON_HW_E:
	    tmp_gActiveState = SOBEL_HW;
	    break;
	default:
	    ret = -1;
	    break;
    }
    if(ret == 0) {
        gActiveState = tmp_gActiveState;
        gDecodedVideoOn = tmp_gDecodedVideoOn;
        gLiveVideoOn = tmp_gLiveVideoOn;
        gSwUsingOpenCV = tmp_gSwUsingOpenCV;
	ChangeSobelMode();
    }
    return ret;
}

unsigned long hwi_getPerfMonitor(int id)
{
	if (id == 0)
		return hp0_read_cnt + hp0_write_cnt;
	else
		return hp1_read_cnt + hp1_write_cnt;
}

int hwi_getVideoInputState(void)
{
	return gLiveVideoOn;
}


//Set the transparency of GUI_LAYER.
//A value of 100% in the alpha channel gives a fully solid pixel
//0% provides full transparency
void hwi_setTransparency(int value)
{

	//Alpha - brightness
	value=(0xFF-value);
	set_layer_alpha(GUI_LAYER, value);
}


int hwi_getResolution(int *hres,int *vres)
{



	struct fb_var_screeninfo vinfo;
	struct fb_fix_screeninfo finfo;
	int fbfd, err=EXIT_FAILURE;

	char fb_name[10], fb_id;

	fb_id = 0;

	sprintf(fb_name, "/dev/fb%d", fb_id);
	/* Open the file for reading and writing */
	fbfd = open(fb_name, O_RDWR);
	if (fbfd < 0)
	{
		printf("Error : cann't open framebuffer device %s\n", fb_name);
		close(fbfd);
		return EXIT_FAILURE;
	}

	/* Get fixed screen information */
	err = ioctl(fbfd, FBIOGET_FSCREENINFO, &finfo);
	if (err)
	{
		printf("Error reading fb_fix info.\n");
		close(fbfd);
		return EXIT_FAILURE;

	}
	/* Get variable screen information */
	err = ioctl(fbfd, FBIOGET_VSCREENINFO, &vinfo);
	if (err)
	{
		printf("Error reading fb_var info.\n");
		close(fbfd);
		return EXIT_FAILURE;
	}

	if (!strncmp("Xylon FB", finfo.id, 8))
	{
		//Check Layer Resolution.
		*hres=vinfo.xres;
		*vres=vinfo.yres;

	}
	else
	{
		close(fbfd);
		return EXIT_FAILURE;
	}
	close(fbfd);

	return EXIT_SUCCESS;
}


int hwi_setResolution(int x,int y)
{




	struct fb_var_screeninfo vinfo;
	struct fb_fix_screeninfo finfo;
	int fbfd, err;

	char fb_name[10], fb_id;

	fb_id = 0;

	sprintf(fb_name, "/dev/fb%d", fb_id);
	/* Open the file for reading and writing */
	fbfd = open(fb_name, O_RDWR);
	if (fbfd < 0)
	{
		printf("Error : cann't open framebuffer device %s\n", fb_name);
		close(fbfd);
		return EXIT_FAILURE;
	}

	/* Get fixed screen information */
	err = ioctl(fbfd, FBIOGET_FSCREENINFO, &finfo);
	if (err)
	{
		printf("Error reading fb_fix information.\n");
		close(fbfd);
		return EXIT_FAILURE;
	}
	/* Get variable screen information */
	err = ioctl(fbfd, FBIOGET_VSCREENINFO, &vinfo);
	if (err)
	{
		printf("Error reading fb_var info.\n");
		close(fbfd);
		return EXIT_FAILURE;
	}

	vinfo.xres=x;
	vinfo.yres=y;


	/* Set variable screen information */
	err = ioctl(fbfd, FBIOPUT_VSCREENINFO, &vinfo);
	if (err)
	{
		printf("Error writing fb_var info.\n");
		close(fbfd);
		return EXIT_FAILURE;
	}

	close(fbfd);
	return EXIT_SUCCESS;
}


