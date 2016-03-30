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
* @file common.h
*
******************************************************************************/

#ifndef COMMON_H_
#define COMMON_H_

//utilities
#ifdef DEBUG_MODE
	#define DEBUG_Text(fmt) printf(fmt)
	#define DEBUG_Printf(fmt,...) printf(fmt,__VA_ARGS__)
#else
	#define DEBUG_Text(fmt)
	#define DEBUG_Printf(fmt,...)
#endif

#define IN0()	DEBUG_Printf(">> IN >> %s",__func__)
#define OUT0()	DEBUG_Printf("<< OUT << %s",__func__)


#define REG_WRITE(addr, off, val) (*(volatile unsigned int*)(addr+off)=(val))
#define REG_READ(addr,off) (*(volatile unsigned int*)(addr+off))


enum Resolutions{
	E_Resolution_1080P,	// 1920 x 1080 @ 60Hz (60fps)
	E_Resolution_720P,	// 1280 x  720 @ 60Hz (60fps)
	E_Resolution_VGA,	//  640 x  480 @ 60Hz (60fps)
	E_Resolution_MAX
};

#define STRIDE_LENGTH 2048


////////////////// Video Parameters for all resolutions //////////


enum VideoParameters{
	E_Clk,							// Pixel Clock required for the given resolution
	E_HTotal,						// horizontal Active + horizontal blanking(hfb+sync+hbp)
	E_HSyncLen,						// Length of horizontal sync signal
	E_HBP,							// Horizontal Back Porch
	E_HActive,						// Width / Horizontal Active video
	E_HFP,							// Horizontal Front Porch
	E_VTotal,						// Vertical Active + Vertical blanking (vfp+sync+vbp)
	E_VActive,						// Height / Vertical Active video
	E_VFP,							// Vertical Front Porch
	E_VSyncLen,						// Length of vertical sync signal
	E_VBP,							// Vertical Back Portch
	E_VParam_MAX
};


// Global Lookup table for the video parameters and timing
static const unsigned int gVideoParam[E_Resolution_MAX][E_VParam_MAX] = {
	//	E_Clk,		E_HTotal,	E_HSyncLen,		E_HBP,		E_HActive,		E_HFP,		E_VTotal,		E_VActive,		E_VFP,		E_VSyncLen,		E_VBP
	{ 	148500,		2200,		44,				148,		1920,			88,			1125,			1080,			4,			5,				36		},		// E_Resolution_1080P
	{ 	74250,		1650,		40,				220,		1280,			110,		750,			720,			5,			5,				20		},		// E_Resolution_720P
	{ 	25200,		800,		96,				48,			640,			16,			525,			480,			10,			2,				33		}		// E_Resolution_VGA

};


#endif /* COMMON_H_ */
