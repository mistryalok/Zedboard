/******************************************************************************
 *
 * (c) Copyright 2013 Xilinx, Inc. All rights reserved.
 *
 * This file contains confidential and proprietary information of Xilinx, Inc.
 * and is protected under U.S. and international copyright and other
 * intellectual property laws.
 *
 * DISCLAIMER:
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
 * CRITICAL APPLICATIONS:
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
* @file main_app.c
*
* Implementation of controlling application. Manages threads and calls the
* APIs to control the pipeline.
*
******************************************************************************/

#include <stdio.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <pthread.h>
#include <linux/fb.h>
#include <string.h>

#include "main_app.h"
#include "img_filters.h"
#include "driver_include.h"
#include "gpio_utils.h"
#include "udriver.h"
#include "ximage_filter.h"


#define TPG_PATTERN_ID 0x000010EA

//shared variables between threads. 					// not using good mutual exclusion for now. (but shouldn't have problem)
volatile static int gActiveState = SOBEL_OFF;			// input to sync thread (set by changeSobelMode and used by sync thread)
volatile static int gSwSobelState = SW_SOBEL_STATE_OFF;	// output from sync thread (set by sync thread to ack to changesobel mode -- semaphore is option, but doesn't really need that.)
volatile static int gLiveVideoOn = 0;
volatile static int gSwUsingOpenCV = 0;

// Other global variables
static unsigned int gResolution = E_Resolution_1080P;
static const unsigned long gLayerBase[MAX_LAYER] = { LAYER0_PHY_BASE, LAYER1_PHY_BASE, LAYER2_PHY_BASE };


int main()
{
	int choice = 0;
	int SelectSobelMode = SOBEL_OFF;
	pthread_t sw_sync_thread;
	int ret;
	int setResolution(void);

	if (setResolution() != 0)
	{
		// framebuffer with the required resolution not found.
		return -1;
	}

	// spawn a thread to check the sw synchronization while software sobel filter is On.
	ret = pthread_create( &sw_sync_thread, NULL, &thread_sw_sync, NULL);

	if (ret)
		{
		printf("ERROR; return code from pthread_create() is %d\n", ret);
		return -1;
		}

	//backup the current display layer so that we can restore it at the end.
	store_cvc_layer(LAYER_ID_0);

	// initial state
	clearMemory(gLayerBase[DISPLAY_LAYER], BUFFER_OFFSETS * 3);
	resetStop_VDMA_ALL();
	init_cvc(DISPLAY_LAYER, gResolution);
	init_timebase(gResolution);

#ifdef DEMO_MENU_MODE
	do
	{
		printf("\n-------------  Video Library Demo Main Menu:  --------------------\n\n");
		printf("1 -> Start TPG Pattern (Plain)\n");
		printf("2 -> TPG Pattern with Software (OpenCV) Filter\n");
		printf("3 -> TPG Pattern with Software Filter\n");
		printf("4 -> TPG Pattern with Hardware Filter\n");
		printf("5 -> Start Live Video (Plain)\n");
		printf("6 -> Live Video with Software (OpenCV) Filter\n");
		printf("7 -> Live Video with Software Filter\n");
		printf("8 -> Live Video with Hardware Filter\n");
		printf("0 -> Exit\n\n");

		printf("\nEnter your choice :");
		choice = getInput();

		switch(choice)
		{
		case 0:	// break;
			SelectSobelMode = SOBEL_OFF;
			ChangeSobelMode(SelectSobelMode);
			gActiveState = STATE_EXIT;
			printf("\n <== BYE BYE ==>\n");
			break;
		case 1: // Select TPG Pattern
			SelectSobelMode = SOBEL_OFF;
			gLiveVideoOn = 0;
			SetTpgPattern(gResolution, TPG_PATTERN_ID);
			ChangeSobelMode(SelectSobelMode);
			break;
		case 2:
			SelectSobelMode = SOBEL_SW;
			gLiveVideoOn = 0;
                        gSwUsingOpenCV = 1;
			SetTpgPattern(gResolution, TPG_PATTERN_ID);
			ChangeSobelMode(SelectSobelMode);
			break;
		case 3:
			SelectSobelMode = SOBEL_SW;
			gLiveVideoOn = 0;
                        gSwUsingOpenCV = 0;
			SetTpgPattern(gResolution, TPG_PATTERN_ID);
			ChangeSobelMode(SelectSobelMode);
			break;
		case 4:
			SelectSobelMode = SOBEL_HW;
			gLiveVideoOn = 0;
			SetTpgPattern(gResolution, TPG_PATTERN_ID);
			ChangeSobelMode(SelectSobelMode);
			break;
		case 5: // Live video
			SelectSobelMode = SOBEL_OFF;
			gLiveVideoOn = 1;
		//	SetTpgPattern(0x0);		This will be done while switching the input. (After confirming that we have right input)
			ChangeSobelMode(SelectSobelMode);
			break;
		case 6:
			SelectSobelMode = SOBEL_SW;
			gLiveVideoOn = 1;
                        gSwUsingOpenCV = 1;
		//	SetTpgPattern(0);		This will be done while switching the input.
			ChangeSobelMode(SelectSobelMode);
			break;
		case 7:
			SelectSobelMode = SOBEL_SW;
			gLiveVideoOn = 1;
                        gSwUsingOpenCV = 0;
		//	SetTpgPattern(0);		This will be done while switching the input.
			ChangeSobelMode(SelectSobelMode);
			break;
		case 8:
			SelectSobelMode = SOBEL_HW;
			gLiveVideoOn = 1;
		//	SetTpgPattern(0);		This will be done while switching the input.
			ChangeSobelMode(SelectSobelMode);
			break;

		default:
			printf("\n\n ********* Invalid input, Please try Again ***********\n");
			break;
		}
		if (choice <=8 && choice > 0)
			printf("\n\n <== Input Mode : %s / Filter Mode : %s ==>\n",(gLiveVideoOn)?"Live Video":"TPG Pattern",
				(choice == 1 || choice == 5)?"OFF":((choice == 4 || choice == 8)?"HW":"SW"));
	}while(choice);
#else
	do
	{
		printf("\n-------------  Linux Sobel Filter Demo Main Menu:  --------------------\n\n");
		printf("1 -> Select TPG Pattern\n");
		printf("2 -> Sobel Filter On / Off \n");
		printf("0 -> Exit");
		printf("\nEnter your choice :");
		choice = getInput();

		switch(choice)
		{
		case 0:	// break;
			SelectSobelMode = SOBEL_OFF;
			ChangeSobelMode(SelectSobelMode);
			// should use mutext to protect the shared resource.
			gActiveState = STATE_EXIT;
			break;
		case 1: // Select TPG Pattern
			SelectTPG(SelectSobelMode);
			break;
		case 2: // Turn Sobel Filter On / off

			printf("Select Sobel options\n\n");

			printf("%d: Disable Sobel Filter \n",SOBEL_OFF);
			printf("%d: Enable Hardware Sobel Filter \n",SOBEL_HW);
			printf("%d: Enable Software Sobel Filter \n",SOBEL_SW);

			printf("\nEnter your choice :");
			//scanf(" %d", &SelectSobelMode);	printf("--UIO--newMode = %d\n", newMode);
			SelectSobelMode = getInput();

			switch(SelectSobelMode)
			{
			case SOBEL_HW:
				printf("\nTurning ON Hardware Sobel Filter ..\n");
				break;
			case SOBEL_SW:
				printf("\nTurning ON Software Sobel Filter..\n");
				break;
			default:
				SelectSobelMode = SOBEL_OFF;
				printf("\nTurning OFF Sobel Filter..\n");
				break;
			}
			ChangeSobelMode(SelectSobelMode);
			break;
		default:
			printf("\n\n ********* Invalid input, Please try Again ***********\n");
			break;
		}

	}while(choice);
#endif
	pthread_join(sw_sync_thread,NULL);

	restore_cvc_layer(LAYER_ID_0);

	return 0;
}


void SelectTPG(int sobelStatus)
{
	int pattern = 0;

	printf(" Pattern  Selection \n");
	printf("0 - Video Mode (TPG bypass, see the video directly)\n");
	printf("1 - TPG Pattern 1\n");
	printf("2 - TPG Pattern 2\n");
	printf("3 - TPG Pattern 3\n");
	printf("Please enter the desired pattern:");
	//scanf(" %d",&pattern);
	pattern = getInput();

	switch(pattern)
	{
	case 1:
		pattern = TPG_PATTERN_ID;
		break;
	case 2:
		pattern = TPG_PATTERN_ID;
		break;
	case 3:
		pattern = TPG_PATTERN_ID;
		break;
	default:
		pattern = 0;
		break;
	}

	if(pattern == 0)
	{
		gLiveVideoOn = 1;
	}
	else
	{
		gLiveVideoOn = 0;
		SetTpgPattern(gResolution, pattern);
	}

	ChangeSobelMode(sobelStatus);
}



void ChangeSobelMode(int newMode)
{
	static int currentStatus = -1;
	static int currentLiveMode = 0;
	struct xFilterConfig sobel_configuration;
	int fd_sobel = 0;
	//int fd_uio = 0;
	XImage_filter        xfilter;


	if (currentStatus == newMode && currentLiveMode == gLiveVideoOn)
		return;

	gActiveState = newMode;

	if (newMode != SOBEL_SW)
	{
		while(gSwSobelState != SW_SOBEL_STATE_OFF)
			sleep(1);
		DEBUG_Text ("Resetting all vdma\n");
		resetStop_VDMA_ALL();
		DEBUG_Text ("Resetting vdma done\n");

	}
	else
	{
		if (currentLiveMode != gLiveVideoOn && currentStatus == SOBEL_SW)
		{
			gActiveState = SOBEL_OFF;
			while(gSwSobelState != SW_SOBEL_STATE_OFF)
				sleep(1);
			gActiveState = newMode;
		}
		while(gSwSobelState != SW_SOBEL_STATE_ON)
			sleep(1);
	}

	currentLiveMode = gLiveVideoOn;

	if (newMode == SOBEL_HW)
	{
		// init sobel filer
		XImage_filter_Initialize(&xfilter, "FILTER");

		// init the configuration for sobel filter
		sobel_configuration.mode = E_xFilterContinousRunning;
		sobel_configuration.height = gVideoParam[gResolution][E_VActive];
		sobel_configuration.width = gVideoParam[gResolution][E_HActive];

		XImage_filter_SetRows(&xfilter, sobel_configuration.height);
		XImage_filter_SetCols(&xfilter, sobel_configuration.width);

		XImage_filter_InterruptGlobalEnable(&xfilter);
		XImage_filter_InterruptEnable(&xfilter, 3);
		XImage_filter_EnableAutoRestart(&xfilter);
		XImage_filter_Start(&xfilter);

		configureVDMA(VDMA_ID_TPG,DMA_DEV_TO_MEM,gLayerBase[SOBEL_LAYER]);
		startVDMA(VDMA_ID_TPG, DMA_DEV_TO_MEM);

		configureVDMA(VDMA_ID_SOBEL,DMA_DEV_TO_MEM,gLayerBase[DISPLAY_LAYER]);
		configureVDMA(VDMA_ID_SOBEL,DMA_MEM_TO_DEV,gLayerBase[SOBEL_LAYER]);

		startVDMA(VDMA_ID_SOBEL, DMA_DEV_TO_MEM);
		startVDMA(VDMA_ID_SOBEL, DMA_MEM_TO_DEV);

		XImage_filter_Release(&xfilter);
	}
	else if(newMode == SOBEL_OFF)
	{
		configureVDMA(VDMA_ID_TPG,DMA_DEV_TO_MEM,gLayerBase[DISPLAY_LAYER]);
		startVDMA(VDMA_ID_TPG, DMA_DEV_TO_MEM);

		DEBUG_Text ("TPG vdma configured\n");

		//open the sobel driver
		//if ((fd_sobel = open("/dev/xfilter", O_RDWR)) < 0)
		//	{
		//	printf("Cannot open device node xfilter\n");
		//	exit(1);
		//	}

		// STOP the sobel filter
		//if (ioctl(fd_sobel, XFILTER_STOP, NULL) < 0)
		//	{
		//	printf("Failed to initialize Sobel Filter driver\n");
		//	}

		//close(fd_sobel);
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
	chan_cfg.config.direction = dma_transfer_direction(vdma_dir);

	if (ioctl(fd_vdma, XVDMA_STOP_TRANSFER, &(chan_cfg.chan)) < 0)
		printf("VDMA: XVDMA_STOP_TRANSFER calling failed\n");


	if (ioctl(fd_vdma, XVDMA_DEVICE_CONTROL, &chan_cfg) < 0)
		printf("VDMA: XVDMA_DEVICE_CONTROL calling failed\n");

	close(fd_vdma);

	//  printf("\n VDMA Reset Done\r\n" );
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

	// set the external clock for the
	gpio_export(EXT_SYNC_PIN);
	gpio_dir_out(EXT_SYNC_PIN);
	gpio_value(EXT_SYNC_PIN, gLiveVideoOn);
	gpio_unexport(EXT_SYNC_PIN);

	//printf("\nReset Done\n");
}



void resetStop_VDMA_ALL(void)
{
	static int currentLiveMode = 0;
	gpio_reset(RST_ACTIVE);	// pull the reset line.

	// reset and enable the Chroma-resampler and YUV to rgb converter.
	chr_stop_reset(gResolution);
	yuv2rgb_stop_reset(gResolution);

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
	chr_start();
	yuv2rgb_start();

	gpio_reset(RST_INACTIVE);

	if (gLiveVideoOn && (gLiveVideoOn != currentLiveMode))
	{
		unsigned long clk = detect_input_clk()/1000;
		// check if the input clock is in range +- 2MHz
		if (  (clk < (gVideoParam[gResolution][E_Clk] - 2000)) |
				(clk > (gVideoParam[gResolution][E_Clk] + 2000))  )
		{
			printf("Incorrect Input [Required:%d x %d @ 60fps(Hz)] \nTurning on the previous pattern",
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


void configureVDMA(int vdma_id, int vdma_direction, unsigned long base_address)
{
	struct xvdma_dev xvdma_dev;
	struct xvdma_chan_cfg chan_cfg;
	struct xvdma_buf_info buf_info;
	int fd_vdma;

	if ((fd_vdma = open("/dev/xvdma", O_RDWR)) < 0)
	{
		printf("Cannot open device node xvdma\n");
	//	exit(1);
	}

	xvdma_dev.device_id = vdma_id;

	if (ioctl(fd_vdma, XVDMA_GET_DEV_INFO, &xvdma_dev) < 0)
	{
		printf("%s: Failed to get info for device id:%d", __func__, vdma_id);
	}

	if(vdma_direction == DMA_DEV_TO_MEM)		// frome device to memory
	{// rx
		chan_cfg.chan = xvdma_dev.rx_chan;
		buf_info.chan = xvdma_dev.rx_chan;
		buf_info.mem_type = DMA_DEV_TO_MEM;
	}
	else										// from memory to devie
	{
		chan_cfg.chan = xvdma_dev.tx_chan;
		buf_info.chan = xvdma_dev.tx_chan;
		buf_info.mem_type = DMA_MEM_TO_DEV;
	}

	/* Set up hardware configuration information */

	chan_cfg.config.vsize = gVideoParam[gResolution][E_VActive];
	chan_cfg.config.hsize = gVideoParam[gResolution][E_HActive] * 4; // width length in bytes (Assuming always a pixel is of 32bpp / 24bpp unpacked)
	chan_cfg.config.stride = gStrideLength * 4;		// stride length in bytes (Assuming always a pixel is of 32bpp / 24bpp unpacked)

	chan_cfg.config.frm_cnt_en = 0; /* irq interrupt disabled(0), enabled(1) */
	chan_cfg.config.frm_dly = 0;
	chan_cfg.config.park = 0; /* circular_buf_en(0), park_mode(1) */
	chan_cfg.config.gen_lock = 0; /* Gen-Lock */
	chan_cfg.config.disable_intr = 0;
	chan_cfg.config.direction = dma_transfer_direction(vdma_direction);
	chan_cfg.config.reset = 0;
	chan_cfg.config.coalesc = 0;
    chan_cfg.config.delay = 0;
    chan_cfg.config.master = 0;
    if(vdma_id == 0)
    	chan_cfg.config.ext_fsync = 1; //fsync type
    else
    	chan_cfg.config.ext_fsync = 0; //fsync type

	if (ioctl(fd_vdma, XVDMA_DEVICE_CONTROL, &chan_cfg) < 0)			// --1--
		printf("VDMA: XVDMA_DEVICE_CONTROL calling failed\n");

	buf_info.device_id = vdma_id;
	buf_info.direction = vdma_direction;
	buf_info.shared_buffer = 0;
	buf_info.fixed_buffer = 1;
	buf_info.addr_base = base_address;
	buf_info.buf_size = BUFFER_OFFSETS;
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
	//	exit(1);
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



void *thread_sw_sync(void* temp)
{
	void cvc_vdma_sw_sync_init(void);
	void setCVC_TPGBuffer(int cvc_id, int tpg_id);
	void sw_sobel_processing(unsigned long in_buffer, unsigned long out_buffer);

	int current_state = gActiveState;
	unsigned long int vmem[MAX_BUFFER];
	unsigned long int sob_buff[MAX_BUFFER];
	int i = 0;
	int offset = 0;

	// starting indices
	int tpg_index = 2 ,cvc_index = 0, sobel_in_index = 1, sobel_out_index = 1;

	for (i = 0; i<MAX_BUFFER; i++)
	{
		vmem[i] = gLayerBase[DISPLAY_LAYER] + offset;
		sob_buff[i] = gLayerBase[SOBEL_LAYER] + offset;
		offset += BUFFER_OFFSETS;
	}

	while(1)
	{
		int new_state = gActiveState;
		if(new_state == STATE_EXIT)
		{
			disable_cvc_layer(DISPLAY_LAYER);
			// do clean up if needed.
			resetStop_VDMA_ALL();
			gSwSobelState = SW_SOBEL_STATE_OFF;
			break;
		}

		if (new_state != SOBEL_SW)
		{
			if(current_state == SOBEL_SW)
			 {
				set_cvc_circular_mode(DISPLAY_LAYER);
				resetStop_VDMA_ALL();
				gSwSobelState = SW_SOBEL_STATE_OFF;
			 }

			 current_state = new_state;
			 sleep(1);
			 continue;
		}

		// s/w soble has to be on... Either turn on or continue doing s/w synchronisation....

		if (current_state != SOBEL_SW) // new_state == SOBEL_SW
		{
			resetStop_VDMA_ALL();
			DEBUG_Text ("turning on sobel: resetStop\n");
			//(1) set cvc to sw sync mode (not automatic switch)
			cvc_vdma_sw_sync_init();
			//(2) set cvc to read buffer 0
					// cvc_current = 0
			//(3) Set tpg vdma to park mode
			//(4) tpg write in intermediate buffer 2
					// tpg_current = 2

			setCVC_TPGBuffer(cvc_index,tpg_index);


			//(5) start sw sobel
					// sobel_IN = 1;	//i[1]
					// sobel_out = 1;	//vmem[1]

			sw_sobel_processing(sob_buff[sobel_in_index], vmem[sobel_out_index]);

			//this will be synchronouse call and will wait for completion of sobel filter.
		}
		else
		{
			//Continue the s/w sync for s/w sobel filter
			//(1) cvc_current = (cvc_current + 1) % 3 & activate
			//todo: need to figure out; do we need to check if tpg is done writing previous.
			//(2) tpg_current = (tpg_current + 1) % 3 & set the vsize again
			//(3) increment sobel_in & sobel_out and start sw sobel
			// wait for its completion.

#ifndef CVC_FREE_RUNNING
			cvc_index++;
			cvc_index %= MAX_BUFFER;
#endif

			tpg_index++;
			tpg_index  %= MAX_BUFFER;

			//todo: check if previous tpg was done.
			setCVC_TPGBuffer(cvc_index,tpg_index);

			sobel_in_index++;
			sobel_in_index  %= MAX_BUFFER;

#ifndef CVC_FREE_RUNNING
			sobel_out_index++;
			sobel_out_index  %= MAX_BUFFER;
#else
			sobel_out_index = cvc_index;
#endif

			sw_sobel_processing(sob_buff[sobel_in_index], vmem[sobel_out_index]);
		}
		gSwSobelState = SW_SOBEL_STATE_ON;
		current_state = new_state;

	} // end of the while loop.
	DEBUG_Printf ("Exiting from %s\n",__func__);
	return NULL;
}

static struct xvdma_chan_cfg gTpg_chan_cfg;
static struct xvdma_buf_info gTpg_buf_info;

void cvc_vdma_sw_sync_init(void)
{
	void init_vdma_park_mode(int vdma_id, int vdma_direction, unsigned long base_address);

	init_vdma_park_mode(VDMA_ID_TPG, DMA_DEV_TO_MEM, gLayerBase[SOBEL_LAYER]);
}

void setCVC_TPGBuffer(int cvc_id, int tpg_id)
{

	int fd_vdma = -1;
	struct xvdma_transfer xfer_param;


	set_cvc_frm_id(DISPLAY_LAYER,cvc_id);


	if ((fd_vdma = open("/dev/xvdma", O_RDWR)) < 0)
	{
		perror("Cannot open device node xvdma\n");
		//	exit(1);
	}

	if(gTpg_chan_cfg.config.park == 1)
		gTpg_chan_cfg.config.park_frm = tpg_id;
	else
	{
		perror("\n\n *********  PARK MODE NOT SET ***** Some error in configuration\n\n");
	}


	if (ioctl(fd_vdma, XVDMA_DEVICE_CONTROL, &gTpg_chan_cfg) < 0)
		perror("calling XVDMA_DEVICE_CONTROL failed\n");

	if (ioctl(fd_vdma, XVDMA_PREP_BUF, &gTpg_buf_info) < 0)
		perror("Calling XVDMA_PREP_BUF failed\n");

	xfer_param.chan = gTpg_chan_cfg.chan;
	xfer_param.wait = 0;

	if (ioctl(fd_vdma, XVDMA_START_TRANSFER, &xfer_param) < 0)
		printf("%s: Calling XVDMA_START_TRANSFER failed\n",__func__);

	close(fd_vdma);
}


void sw_sobel_processing(unsigned long in_buffer, unsigned long out_buffer)
{

	unsigned long int map_len = gStrideLength * 1080 * 4;
	int fd = open( "/dev/mem", O_RDWR);

	unsigned char* virtual_addr_in;
	unsigned char* virtual_addr_out;

	virtual_addr_in = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)in_buffer);
	virtual_addr_out = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)out_buffer);

	DEBUG_Text ("starting sw sobel\n");
	img_process((ZNQ_S32 *)virtual_addr_in, (ZNQ_S32 *)virtual_addr_out,
			gVideoParam[gResolution][E_VActive], gVideoParam[gResolution][E_HActive], gStrideLength, gSwUsingOpenCV);
	DEBUG_Text ("sw sobel done\n");

	munmap((void *)virtual_addr_out, map_len);
	munmap((void *)virtual_addr_in, map_len);

	close (fd);
}


void init_vdma_park_mode(int vdma_id, int vdma_direction, unsigned long base_address)
{
	struct xvdma_dev xvdma_dev;
	int fd_vdma;

	if ((fd_vdma = open("/dev/xvdma", O_RDWR)) < 0)
	{
		printf("Cannot open device node xvdma\n");
	//	exit(1);
	}

	xvdma_dev.device_id = vdma_id;

	if (ioctl(fd_vdma, XVDMA_GET_DEV_INFO, &xvdma_dev) < 0)
	{
		printf("%s: Failed to get info for device id:%d", __func__, vdma_id);
	}

	if(vdma_direction == DMA_DEV_TO_MEM)
	{// rx
		gTpg_chan_cfg.chan = xvdma_dev.rx_chan;
		gTpg_buf_info.chan = xvdma_dev.rx_chan;
		gTpg_buf_info.mem_type = DMA_DEV_TO_MEM;
	}
	else
	{
		gTpg_chan_cfg.chan = xvdma_dev.tx_chan;
		gTpg_buf_info.chan = xvdma_dev.tx_chan;
		gTpg_buf_info.mem_type = DMA_MEM_TO_DEV;
	}

	/* Set up hardware configuration information */
	gTpg_chan_cfg.config.vsize = gVideoParam[gResolution][E_VActive];
	gTpg_chan_cfg.config.hsize = gVideoParam[gResolution][E_HActive] * 4; // width length in bytes (Assuming always a pixel is of 32bpp / 24bpp unpacked)
	gTpg_chan_cfg.config.stride = gStrideLength * 4;		// stride length in bytes (Assuming always a pixel is of 32bpp / 24bpp unpacked_)

	gTpg_chan_cfg.config.frm_cnt_en = 0;
	gTpg_chan_cfg.config.frm_dly = 0;
	gTpg_chan_cfg.config.gen_lock = 0;
	// We don't really need to have interrupts enabled; but keeping it enabled because
	// vdma driver has a bug: it only cleans (frees) the structures allocated at
	// start transfer in interrupt handler and no other place.
	// if not done, then kernel will crash after 1 hr.. (after few million calls to the driver)
	gTpg_chan_cfg.config.disable_intr = 0;
	gTpg_chan_cfg.config.direction = dma_transfer_direction(vdma_direction);
	gTpg_chan_cfg.config.reset = 0;
	gTpg_chan_cfg.config.coalesc = 0;
    gTpg_chan_cfg.config.delay = 0;
    gTpg_chan_cfg.config.master = 0;

	gTpg_chan_cfg.config.park = 1;
	gTpg_chan_cfg.config.park_frm = 0;
    if(vdma_id == 0)
    	gTpg_chan_cfg.config.ext_fsync = 1;
    else
    	gTpg_chan_cfg.config.ext_fsync = 0;

	gTpg_buf_info.device_id = vdma_id;
	gTpg_buf_info.direction = vdma_direction;
	gTpg_buf_info.shared_buffer = 0;
	gTpg_buf_info.fixed_buffer = 1;
	gTpg_buf_info.addr_base = base_address;
	gTpg_buf_info.buf_size = BUFFER_OFFSETS;
	gTpg_buf_info.frm_cnt = 3;
	close(fd_vdma);

}

int getInput(void)
{
	char ch;
	int ret = -1;
	ch = getchar();
	if (ch >= '0' && ch <= '9')
	{
		ret = ch - '0';
	}
	while ((ch = getchar()) != '\n' && ch != EOF);
	return ret;
}


// called only once
int setResolution (void)
{
	struct fb_var_screeninfo vinfo;
	struct fb_fix_screeninfo finfo;
	int fbfd, err;
	int i;
	char fb_name[10], fb_id;

	fb_id = 0;
	while(1)
	{
		sprintf(fb_name, "/dev/fb%d", fb_id);
		/* Open the file for reading and writing */
		fbfd = open(fb_name, O_RDWR);
		if (fbfd < 0)
		{
			printf("Error : cann't open framebuffer device %s\n", fb_name);
			return 4;
		}

		/* Get fixed screen information */
		err = ioctl(fbfd, FBIOGET_FSCREENINFO, &finfo);
		if (err)
			printf("Error reading fixed information.\n");
		/* Get variable screen information */
		err = ioctl(fbfd, FBIOGET_VSCREENINFO, &vinfo);
		if (err)
			printf("Error reading variable information.\n");

		if (!strncmp("Xylon FB", finfo.id, 8))
		{
			if (vinfo.bits_per_pixel == 32)
			{
				break;
			}
		}

		close(fbfd);
		fb_id++;
	}

	for (i = E_Resolution_1080P; i< E_Resolution_MAX; i++)
	{
		if (vinfo.xres == gVideoParam[i][E_HActive] && vinfo.yres == gVideoParam[i][E_VActive])
		{
			gResolution = i;
			printf ("Resolution Set @ id = %d.... %d X %d", i,vinfo.xres, vinfo.yres);
			return 0;
		}
	}
	printf("Error: Fb with supported resolution not found!!");
	return 1;
}
