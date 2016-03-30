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
* @file hw_base.h
*
* Header containing the h/w base addresses and register offsets.
* Used by udriver.c file to access different h/w
*
******************************************************************************/


#ifndef HW_BASE_H_
#define HW_BASE_H_

#define CVC_BASE					0x40030000
#define TPG_BASE					0x40080000
#define SOBEL_BASE					0x400D0000
#define SOBEL_RESOLUTION_BASE		0x400C0000
#define TIMEBASE_BASE				0x40070000
#define CLK_DETECT_BASE				0x40060000
#define CHR_RESAMPLER				0x40040000
#define YCRCB2RGB_CONVERTER			0x40050000


#define SHIFT_16							 16

// cvc parameters

#define CVC_HSY_FP                           0x0000
#define CVC_HSY_WIDTH                        0x0008
#define CVC_HSY_BP                           0x0010
#define CVC_HSY_RESOLUTION                   0x0018
#define CVC_VSY_FP                           0x0020
#define CVC_VSY_WIDTH                        0x0028
#define CVC_VSY_BP                           0x0030
#define CVC_VSY_RESOLUTION                   0x0038
#define CVC_CTRL                             0x0040
#define CVC_DTYPE                            0x0048
#define CVC_BACKGROUND                       0x0050
#define CVC_VBUFF_SEL                        0x0058
#define CVC_CLUT_SEL                         0x0060
#define CVC_INT_STAT                         0x0068
#define CVC_INT_MASK                         0x0070
#define CVC_PWRCTRL                          0x0078
#define CVC_L0_H_OFFSET                      0x0100
#define CVC_L0_V_OFFSET                      0x0108
#define CVC_L0_H_POSITION                    0x0110
#define CVC_L0_V_POSITION                    0x0118
#define CVC_L0_WIDTH                         0x0120
#define CVC_L0_HEIGHT                        0x0128
#define CVC_L0_ALPHA                         0x0130
#define CVC_L0_CTRL                          0x0138
#define CVC_L0_TRANSPARENT                   0x0140
#define CVC_L1_H_OFFSET                      0x0180
#define CVC_L1_V_OFFSET                      0x0188
#define CVC_L1_H_POSITION                    0x0190
#define CVC_L1_V_POSITION                    0x0198
#define CVC_L1_WIDTH                         0x01A0
#define CVC_L1_HEIGHT                        0x01A8
#define CVC_L1_ALPHA                         0x01B0
#define CVC_L1_CTRL                          0x01B8
#define CVC_L1_TRANSPARENT                   0x01C0
#define CVC_L2_H_OFFSET                      0x0200
#define CVC_L2_V_OFFSET                      0x0208
#define CVC_L2_H_POSITION                    0x0210
#define CVC_L2_V_POSITION                    0x0218
#define CVC_L2_WIDTH                         0x0220
#define CVC_L2_HEIGHT                        0x0228
#define CVC_L2_ALPHA                         0x0230
#define CVC_L2_CTRL                          0x0238
#define CVC_L2_TRANSPARENT                   0x0240
#define CVC_L3_H_OFFSET                      0x0280
#define CVC_L3_V_OFFSET                      0x0288
#define CVC_L3_H_POSITION                    0x0290
#define CVC_L3_V_POSITION                    0x0298
#define CVC_L3_WIDTH                         0x02A0
#define CVC_L3_HEIGHT                        0x02A8
#define CVC_L3_ALPHA                         0x02B0
#define CVC_L3_CTRL                          0x02B8
#define CVC_L3_TRANSPARENT                   0x02C0
#define CVC_L4_CTRL                          0x0338


// Timebase Parameter

#define TIME_BASE_CR	       0x00		// Control Register
#define TIME_BASE_ACT_SIZE     0x60     // Active size
#define TIME_BASE_ENCODE       0x68     // Video mode, RGB
#define TIME_BASE_POL          0x6C     // Outputs polarity
#define TIME_BASE_HSIZE        0x70     // H size including blaking
#define TIME_BASE_VSIZE        0x74     // V size including blanking
#define TIME_BASE_HSYNC        0x78     // hsync duration setting
#define TIME_BASE_VBLANKH       0x7C     // vblank offset setting
#define TIME_BASE_VSYNC        0x80     // vsync duration setting
#define TIME_BASE_VSYNCH       0x84     // vsync offset setting

// TPG parameter -updated as per new TPG core.
#define TPG_PATTERN					0x0100
#define TPG_MOTION					0x0104

#define TPG_FRM_SIZE				0x0020
#define TPG_ZPLATE_H				0x010C
#define TPG_ZPLATE_V				0x0110
#define TPG_BOX_SIZE				0x0114
#define TPG_BOX_COLOUR				0x118
#define TPG_CONTROL                 0x0000

// SOBEL parameter

#define SOBEL_RES_ROW_CNT				0x0
#define SOBEL_RES_COL_CNT				0x4

#define SOBEL_START					0x0
#define SOBEL_DONE					0x4
#define SOBEL_IDLE					0x8


// Clock detection
#define CLK_DET_CR					0x0
#define CLK_DET_CNT					0x8
#define CLK_DET_SAMPLING_COUNT		0x18

// Chroma Resampler
#define CRE_CR						0x0
#define CRE_SIZE					0x20


// YCbCr to RGB converter
#define YUV2RGB_CR					0x0
#define YUV2RGB_SIZE				0x20

#endif /* HW_BASE_H_ */
