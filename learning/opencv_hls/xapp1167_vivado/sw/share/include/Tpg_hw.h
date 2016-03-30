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
* @file Tpg_hw.h
*
*******************************************************************************/


#ifndef TPG_HW_H_
#define TPG_HW_H_

#define TPG_INSTANCE_NAME		"v-tpg"

/**
 * Register Offsets
 */
/* General Control Registers */
#define TPG_CONTROL             0x000    /**< Control (R/W) */
#define TPG_STATUS              0x004    /**< Status (R/W) */
#define TPG_ERROR               0x008    /**< Error (R/W) */
#define TPG_IRQ_EN              0x00C    /**< IRQ Enable     */
#define TPG_VERSION             0x010    /**< Version        */
/* Timing Control Registers */
#define TPG_ACTIVE_SIZE         0x020    /**< Active Size (V x H)       */
/* Core Specific Registers */
#define TPG_PATTERN_CONTROL     0x100
#define TPG_MOTION_SPEED        0x104
#define TPG_CROSS_HAIRS         0x108
#define TPG_ZPLATE_HOR_CONTROL  0x10C
#define TPG_ZPLATE_VER_CONTROL  0x110
#define TPG_BOX_SIZE            0x114
#define TPG_BOX_COLOR           0x118
#define TPG_STUCK_PIXEL_THRESH  0x11C
#define TPG_NOISE_GAIN          0x120

/**
 * TPG Control Register bit definition
 */
#define TPG_CTL_EN_MASK    0x00000001    /**< TPG Enable */
#define TPG_CTL_RUE_MASK   0x00000002    /**< TPG Register Update */
#define TPG_CTL_CS_MASK    0x00000004    /**< TPG Register Clear Status */

/**
 * TPG Reset Register bit definition
 */
#define TPG_RST_RESET      0x80000000    /**< Software Reset - Instantaneous */
#define TPG_RST_AUTORESET  0x40000000    /**< Software Reset - Auto-synchronize to SOF */


#endif /* TPG_HW_H_ */
