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
* @file main_app.h
*
* Header file for the main application. Contains various macros and function
* declaration used in the application.
*
******************************************************************************/

#ifndef MAIN_APP_H_
#define MAIN_APP_H_

//// FLAGS ///

//#define DEBUG_MODE
//#define CVC_FREE_RUNNING
#define DEMO_MENU_MODE

#define STATE_EXIT     -1

#define SOBEL_OFF 	0
#define SOBEL_HW	1
#define SOBEL_SW	2

#define SW_SOBEL_STATE_OFF			0
#define SW_SOBEL_STATE_ON			1

void configureVDMA(int vdma_id, int vdma_direction, unsigned long base_address);
void startVDMA(int vdma_id, int vdma_direction);
void SelectTPG(int SobelStatus);
void ChangeSobelMode(int enable);
void resetStop_VDMA_ALL(void);
void * thread_sw_sync(void*);
//void gpio_reset(int level);
int getInput(void);

#define LAYER_ID_0					0
#define LAYER_ID_1					1
#define LAYER_ID_2					2
#define MAX_LAYER					3

#define DISPLAY_LAYER				LAYER_ID_1
#define SOBEL_LAYER 				LAYER_ID_2

#define MAX_BUFFER	3

#define LAYER0_PHY_BASE				0x30000000
#define LAYER1_PHY_BASE				0x31950000
#define LAYER2_PHY_BASE				0x332A0000

#define BUFFER_OFFSETS				0x00870000

#endif /* MAIN_APP_H_ */
