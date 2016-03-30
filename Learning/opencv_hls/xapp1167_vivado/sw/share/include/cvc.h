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
/*****************************************************************************/
/**
*
* @file cvc.h
******************************************************************************/


#ifndef CVC_H_
#define CVC_H_


//Includes.
#include <sys/ioctl.h>
#include <linux/fb.h>
#include <stdlib.h>
#include <errno.h>
#include <fcntl.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>
#include<unistd.h>
#include <stdio.h>
#include"xylonfb.h"


struct fb_appinfo
{


	unsigned short framebufferID;
	unsigned long smem_start;
	unsigned int smem_len;


};





#define LAYER_ID_0					0
#define LAYER_ID_1					1
#define LAYER_ID_2					2
#define MAX_LAYER					3

#define GUI_LAYER					LAYER_ID_0
#define DISPLAY_LAYER				LAYER_ID_1
#define SOBEL_LAYER 				LAYER_ID_2


int set_cvc_frm_id(int layer_id, int frm_id);

int disable_cvc_layer(int layer_id);
int enable_cvc_layer(int layer_id);
int set_cvc_circular_mode(int layer_id,int mode);

int store_cvc_layer(int layer_id);
int restore_cvc_layer(int layer_id);
int set_layer_alpha(int layer_id, int alpha);

int set_cvc_hmi_layer_parameters(int xoffset,int yoffset,int width ,int height);
int getFBScreenInfo(struct fb_fix_screeninfo *screeninfo);

int set_disp_layer_mode(int mode);
int set_gui_layer_mode(int mode);

int reset_ddr_criticality();
int set_ddr_criticality();
#endif /* CVC_H_ */
