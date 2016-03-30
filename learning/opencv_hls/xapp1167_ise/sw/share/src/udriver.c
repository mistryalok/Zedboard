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
* @file udriver.c
*
* Implementation of user side drivers to access different hardwares
* This uses mmap to access the h/w registers.
*
******************************************************************************/

// TODO: File opening should be check for error

#include <stdio.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <unistd.h>
#include "udriver.h"
#include "hw_base.h"

#define ENABLE_TPG 0x00000003
//utilities
void clearMemory(unsigned long startAddress, unsigned long size)
{
	int fd = open( "/dev/mem", O_RDWR);
	unsigned long int i = 0 ;

	unsigned char* virtual_addr_in;

	virtual_addr_in = (unsigned char*)mmap(NULL, size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)startAddress);

	for(i = 0 ; i < size ; i++)
	{
		virtual_addr_in[i] = 0;
	}

	munmap((void *)virtual_addr_in, size);
	close (fd);
}


// CVC
void set_cvc_frm_id(int layer_id, int frm_id)
{
	unsigned long int PhysicalAddress = CVC_BASE ;
	int map_len = 0xF00;
	int fd = open( "/dev/mem", O_RDWR);
	unsigned char* virtual_addr;

	///////// Configure CVC /////////////
	virtual_addr = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)PhysicalAddress);
	if(virtual_addr == MAP_FAILED)
	{
		perror("Mapping memory for CVC failed.\n");
		return;
	}

	DEBUG_Printf ("TPG_BASE mapping successful :\n0x%x to 0x%x, size = %d\n ", (int )PhysicalAddress, (int)virtual_addr, map_len );

	// sanity check can done for cvc (if its already doing what was intended last time ? )
	if (layer_id == 0)
	{
		REG_WRITE(virtual_addr,CVC_L0_CTRL,0x3);
		REG_WRITE(virtual_addr,CVC_VBUFF_SEL, (0x1 << 10 /* layer 0 */) | (frm_id & 0x3) << 0 /*layer 0 */ );
	}
	else if(layer_id == 1)
	{
		REG_WRITE(virtual_addr,CVC_L1_CTRL,0x3);
		REG_WRITE(virtual_addr,CVC_VBUFF_SEL, (0x1 << 11 /* layer 1 */) | (frm_id & 0x3) << 2 /*layer 1 */ );
	}
	else
	{
		perror("not supported");
	}
	munmap((void *)virtual_addr, map_len);
	close(fd);
}


void disable_cvc_layer(int layer_id)
{
	unsigned long int PhysicalAddress = CVC_BASE ;
	int map_len = 0xF00;
	int fd = open( "/dev/mem", O_RDWR);

	unsigned char* cvc_base = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)PhysicalAddress);

	if(cvc_base == MAP_FAILED)
	{
		perror("Mapping memory for absolute memory access failed.\n");
	}


	if (layer_id ==0)
	{
		REG_WRITE(cvc_base, CVC_L0_CTRL        ,0x00000000);
	}
	else if(layer_id==1)
	{
		REG_WRITE(cvc_base, CVC_L1_CTRL        ,0x00000000);
	}
	else
	{
		perror("Not supported");
	}

	munmap((void *)cvc_base, map_len);
	close(fd);

}


void set_cvc_circular_mode(int layer_id)
{
	unsigned long int PhysicalAddress = CVC_BASE ;
	int map_len = 0xF00;
	int fd = open( "/dev/mem", O_RDWR);

		unsigned char* cvc_base = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)PhysicalAddress);

		//check if it worked
		if(cvc_base == MAP_FAILED)
		{
			perror("Mapping memory for absolute memory access failed.\n");
			//return NULL;
		}

		DEBUG_Printf ("TPG_BASE mapping successful :\n0x%x to 0x%x, size = %d\n ", (int )PhysicalAddress, (int)cvc_base, map_len );

		if(layer_id ==0)
		{
			REG_WRITE(cvc_base, CVC_L0_CTRL        ,0x00000007);
		}
		else if(layer_id==1)
		{
			REG_WRITE(cvc_base, CVC_L1_CTRL        ,0x00000007);
		}
		else
		{
			perror("Not Supported");
		}

		munmap((void *)cvc_base, map_len);
		close(fd);

}

unsigned long cvc_layer_state[4]={0};

void store_cvc_layer(int layer_id)
{
	unsigned long int PhysicalAddress = CVC_BASE ;
	int map_len = 0xF00;
	int fd = open( "/dev/mem", O_RDWR);

	unsigned char* cvc_base = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)PhysicalAddress);

	if(cvc_base == MAP_FAILED)
	{
		perror("Mapping memory for absolute memory access failed.\n");
		return;
	}

	if(layer_id ==0)
	{
		cvc_layer_state[layer_id] = REG_READ(cvc_base, CVC_L0_CTRL);
	}
	else if(layer_id ==1)
	{
		cvc_layer_state[layer_id] = REG_READ(cvc_base, CVC_L1_CTRL);
	}
	else if(layer_id ==2)
	{
		cvc_layer_state[layer_id] = REG_READ(cvc_base, CVC_L2_CTRL);
	}
	else
	{
		perror("Not Supported");
	}

	munmap((void *)cvc_base, map_len);
	close(fd);

}

void restore_cvc_layer(int layer_id)
{
	unsigned long int PhysicalAddress = CVC_BASE ;
	int map_len = 0xF00;
	int fd = open( "/dev/mem", O_RDWR);

	unsigned char* cvc_base = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)PhysicalAddress);

	if(cvc_base == MAP_FAILED)
	{
		perror("Mapping memory for absolute memory access failed.\n");
		return;
	}

	if(layer_id ==0)
	{
		REG_WRITE(cvc_base, CVC_L0_CTRL, cvc_layer_state[layer_id]);
	}
	else if(layer_id ==1)
	{
		REG_WRITE(cvc_base, CVC_L1_CTRL, cvc_layer_state[layer_id]);
	}
	else if(layer_id ==2)
	{
		REG_WRITE(cvc_base, CVC_L2_CTRL, cvc_layer_state[layer_id]);
	}
	else
	{
		perror("Not Supported");
	}

	munmap((void *)cvc_base, map_len);
	close(fd);

}

void init_cvc(int layer_id, int res_id)
{

	unsigned long int PhysicalAddress = CVC_BASE ;
	int map_len = 0xF00;
	int fd = open( "/dev/mem", O_RDWR);

    unsigned char* cvc_base = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)PhysicalAddress);

    IN0();
    //printf("%s\n",__func__);
	//check if it worked
	if(cvc_base == MAP_FAILED)
	{
		perror("Mapping memory for absolute memory access failed.\n");
		return;
	}

	DEBUG_Printf ("CVC Base mapping successful :\n0x%x to 0x%x, size = %d\n ", (int )PhysicalAddress, (int)cvc_base, map_len );

	// disable all the layers
    REG_WRITE(cvc_base, CVC_L0_CTRL        	, 0x00000000);
    REG_WRITE(cvc_base, CVC_L1_CTRL        	, 0x00000000);  // lAYER_1_EN =1
    REG_WRITE(cvc_base, CVC_L2_CTRL        	, 0x00000000);  // lAYER_2_EN =1

	// Layer specific configuration.
	switch(layer_id)
	{
	case 0:
		REG_WRITE(cvc_base, CVC_L0_H_OFFSET    ,0x00000000);
		REG_WRITE(cvc_base, CVC_L0_V_OFFSET    ,0x00000000);
		REG_WRITE(cvc_base, CVC_L0_H_POSITION  ,gVideoParam[res_id][E_HActive] - 1);
		REG_WRITE(cvc_base, CVC_L0_V_POSITION  ,gVideoParam[res_id][E_VActive] - 1);
		REG_WRITE(cvc_base, CVC_L0_WIDTH       ,gVideoParam[res_id][E_HActive] - 1);
		REG_WRITE(cvc_base, CVC_L0_HEIGHT      ,gVideoParam[res_id][E_VActive] - 1);
		REG_WRITE(cvc_base, CVC_L0_CTRL        ,0x00000007);
		break;

	case 1:
		REG_WRITE(cvc_base, CVC_L1_H_OFFSET    ,0x00000000);
		REG_WRITE(cvc_base, CVC_L1_V_OFFSET    ,0x00000000);
		REG_WRITE(cvc_base, CVC_L1_H_POSITION  ,gVideoParam[res_id][E_HActive] - 1);
		REG_WRITE(cvc_base, CVC_L1_V_POSITION  ,gVideoParam[res_id][E_VActive] - 1);
		REG_WRITE(cvc_base, CVC_L1_WIDTH       ,gVideoParam[res_id][E_HActive] - 1);
		REG_WRITE(cvc_base, CVC_L1_HEIGHT      ,gVideoParam[res_id][E_VActive] - 1);
		REG_WRITE(cvc_base, CVC_L1_CTRL        ,0x00000007);
		break;

	case 2:
		REG_WRITE(cvc_base, CVC_L2_H_OFFSET    ,0x00000000);
		REG_WRITE(cvc_base, CVC_L2_V_OFFSET    ,0x00000000);
		REG_WRITE(cvc_base, CVC_L2_H_POSITION  ,gVideoParam[res_id][E_HActive] - 1);
		REG_WRITE(cvc_base, CVC_L2_V_POSITION  ,gVideoParam[res_id][E_VActive] - 1);
		REG_WRITE(cvc_base, CVC_L2_WIDTH       ,gVideoParam[res_id][E_HActive] - 1);
		REG_WRITE(cvc_base, CVC_L2_HEIGHT      ,gVideoParam[res_id][E_VActive] - 1);
		REG_WRITE(cvc_base, CVC_L2_CTRL        ,0x00000007);
		break;

	default:
		perror("Not Supported");
		return;
	}

      munmap((void *)cvc_base, map_len);
      close(fd);
      OUT0();
}


/////////////// Time base ////////////////////
void init_timebase(int res_id)
{
	unsigned long int PhysicalAddress = TIMEBASE_BASE;
	int map_len = 0x100;
	int hActive, hTotal, hSync_start, hSync_end;
	int vActive, vTotal, vSync_start, vSync_end;
	int vBlankh_start, vBlankh_end; //vBlank offset in cyles (should be equal to hactive)
	int vSyncH_start, vSyncH_end; // vSync offset in cycles.

	int fd = open("/dev/mem", O_RDWR);
	unsigned char* timebase_base = (unsigned char*) mmap(NULL, map_len,
			PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t) PhysicalAddress);

	//check if it worked
	if (timebase_base == MAP_FAILED) {
		perror("Mapping memory for VTC access failed.\n");
		return;
	}

	DEBUG_Printf ("Time_BASE mapping successful :\n0x%x to 0x%x, size = %d\n ", (int )PhysicalAddress, (int)timebase_base, map_len );

	// Calculating timing parameters
	hActive = gVideoParam[res_id][E_HActive];
	hSync_start = hActive + gVideoParam[res_id][E_HFP];
	hSync_end = hSync_start + gVideoParam[res_id][E_HSyncLen];
	hTotal = gVideoParam[res_id][E_HTotal];

	vActive = gVideoParam[res_id][E_VActive];
	vSync_start = vActive + gVideoParam[res_id][E_VFP] - 1; // one line is componseted with vSyncH offset cycles
	vSync_end = vSync_start + gVideoParam[res_id][E_VSyncLen];
	vTotal = gVideoParam[res_id][E_VTotal];
	vBlankh_start = hActive;	// after active lines
	vBlankh_end = hActive;
	vSyncH_start = hActive + gVideoParam[res_id][E_HFP];
	vSyncH_end =vSyncH_start;


	REG_WRITE(timebase_base, TIME_BASE_ACT_SIZE, (vActive << SHIFT_16)| hActive);
	REG_WRITE(timebase_base, TIME_BASE_ENCODE  , 0x00000002);
	REG_WRITE(timebase_base, TIME_BASE_POL     , 0x0000003F);
	REG_WRITE(timebase_base, TIME_BASE_HSIZE   , hTotal);
	REG_WRITE(timebase_base, TIME_BASE_VSIZE   , vTotal);
	REG_WRITE(timebase_base, TIME_BASE_HSYNC   , (hSync_end << SHIFT_16) | hSync_start);
	REG_WRITE(timebase_base, TIME_BASE_VBLANKH  , (vBlankh_end << SHIFT_16) | vBlankh_start);
	REG_WRITE(timebase_base, TIME_BASE_VSYNC   , (vSync_end << SHIFT_16) | vSync_start);
	REG_WRITE(timebase_base, TIME_BASE_VSYNCH   , (vSyncH_end << SHIFT_16) | vSyncH_start);

	REG_WRITE(timebase_base, TIME_BASE_CR      , 0x03F5EF06); // Control register, has to be written at last.

	munmap((void *) timebase_base, map_len);
	close(fd);
}


//////////////////////// TPG /////////////////

void SetTpgPattern(int res_id, int pattern)
{
	unsigned long int PhysicalAddress = TPG_BASE ;
	int map_len = 0x20;
	int fd = open( "/dev/mem", O_RDWR);

    unsigned char* tpg_base_address = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)PhysicalAddress);

    if(tpg_base_address == MAP_FAILED)
	{
		perror("Mapping memory for absolute memory access failed.\n");
		return;
	}
    //Pattern set.
    REG_WRITE(tpg_base_address,TPG_PATTERN,pattern);
    	//Motion
    REG_WRITE(tpg_base_address,TPG_MOTION, 0x0000000B);
    REG_WRITE(tpg_base_address,TPG_FRM_SIZE, (gVideoParam[res_id][E_VActive] << SHIFT_16) | gVideoParam[res_id][E_HActive]);			// specific to 1080p
    REG_WRITE(tpg_base_address,TPG_ZPLATE_H,(0x4A * 1920)/gVideoParam[res_id][E_HActive]);
    REG_WRITE(tpg_base_address,TPG_ZPLATE_V, (0x3 * 1080)/gVideoParam[res_id][E_VActive]);
    REG_WRITE(tpg_base_address,TPG_BOX_SIZE,(0x70 * gVideoParam[res_id][E_VActive])/1080);
    REG_WRITE(tpg_base_address,TPG_BOX_COLOUR, 0x76543210);

    	//Starting TPG pattern .
    REG_WRITE(tpg_base_address,TPG_CONTROL,ENABLE_TPG);

    munmap((void *)tpg_base_address, map_len);
    close(fd);
}

/////////// CLK_DETECTION ////////////////////
unsigned long detect_input_clk(void)
{
	unsigned long clk_value = 0;
	unsigned long int PhysicalAddress = CLK_DETECT_BASE ;
	int map_len = 0x20;
	int fd = open( "/dev/mem", O_RDWR);

	unsigned char* clk_det_base = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)PhysicalAddress);

	if(clk_det_base == MAP_FAILED)
	{
		perror("Mapping memory for absolute memory access failed.\n");
		return 0;
	}

	// Set the sampling rate
	REG_WRITE(clk_det_base,CLK_DET_SAMPLING_COUNT, 0x047868C0);

	// Enable the detection
	REG_WRITE(clk_det_base,CLK_DET_CR, 0x1);

    sleep(1);	//  wait to collect the sample.

    // get the detected value
    clk_value = REG_READ(clk_det_base,CLK_DET_CNT);

    // Disable the detection
    REG_WRITE(clk_det_base,CLK_DET_CR, 0x0);

    munmap((void *)clk_det_base, map_len);
    close(fd);
    return clk_value;
}

//////////////////// Chroma Resampler ////////////////
void chr_stop_reset(int res_id)
{
	unsigned long int PhysicalAddress = CHR_RESAMPLER ;
	int map_len = 0xFF;
	int fd = open( "/dev/mem", O_RDWR);

	unsigned char* chr_resampler_base = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)PhysicalAddress);

	if(chr_resampler_base == MAP_FAILED)
	{
	perror("Mapping memory for absolute memory access failed -- Chroma Resampler\n");
	return;
	}

	//disable and soft reset the chroma resampler
	REG_WRITE(chr_resampler_base,CRE_CR,0x80000000);

	//set the frame size
	REG_WRITE(chr_resampler_base, CRE_SIZE, ((gVideoParam[res_id][E_VActive] << SHIFT_16) | gVideoParam[res_id][E_HActive]));

	munmap((void *)chr_resampler_base, map_len);
	close(fd);

}


void chr_start()
{
	unsigned long int PhysicalAddress = CHR_RESAMPLER ;
	int map_len = 0xFF;
	int fd = open( "/dev/mem", O_RDWR);

	unsigned char* chr_resampler_base = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)PhysicalAddress);

	if(chr_resampler_base == MAP_FAILED)
	{
	perror("Mapping memory for absolute memory access failed -- Chroma Resampler\n");
	return;
	}

	// clear error.
	//REG_WRITE(chr_resampler_base,CRE_ERR,REG_READ(chr_resampler_base,CRE_ERR));

	REG_WRITE(chr_resampler_base,CRE_CR,0x3);

	munmap((void *)chr_resampler_base, map_len);
	close(fd);

}

//////////////////// YCrCb to RGB converter ////////////////
void yuv2rgb_stop_reset(int res_id)
{
	unsigned long int PhysicalAddress = YCRCB2RGB_CONVERTER ;
	int map_len = 0xFF;
	int fd = open( "/dev/mem", O_RDWR);

	unsigned char *yuv2rgb_base = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)PhysicalAddress);

	if(yuv2rgb_base == MAP_FAILED)
	{
	perror("Mapping memory for absolute memory access failed -- Chroma Resampler\n");
	return;
	}

	//disable and soft reset the YCRCB2RGB_CONVERTER
	REG_WRITE(yuv2rgb_base,YUV2RGB_CR,0x80000000);

	//set the frame size
	REG_WRITE(yuv2rgb_base, YUV2RGB_SIZE, ((gVideoParam[res_id][E_VActive] << SHIFT_16) | gVideoParam[res_id][E_HActive]));

	munmap((void *)yuv2rgb_base, map_len);
	close(fd);
}

void yuv2rgb_start()
{
	unsigned long int PhysicalAddress = YCRCB2RGB_CONVERTER ;
	int map_len = 0xFF;
	int fd = open( "/dev/mem", O_RDWR);

	unsigned char *yuv2rgb_base = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)PhysicalAddress);

	if(yuv2rgb_base == MAP_FAILED)
	{
	perror("Mapping memory for absolute memory access failed -- Chroma Resampler\n");
	return;
	}

	// clear error.
	//REG_WRITE(yuv2rgb_base,CRE_ERR,REG_READ(yuv2rgb_base,YUV2RGB_ERR));

	//Start the YCRCB2RGB_CONVERTER along with reg_update bit
	REG_WRITE(yuv2rgb_base,YUV2RGB_CR,0x3);

	munmap((void *)yuv2rgb_base, map_len);
	close(fd);
}
