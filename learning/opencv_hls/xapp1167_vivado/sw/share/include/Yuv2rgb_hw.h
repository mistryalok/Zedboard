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
* @file Yuv2rgb_hw.h
*
*******************************************************************************/
#ifndef YUV2RGB_HW_H_
#define YUV2RGB_HW_H_

#define YUV_INSTANCE_NAME		"v-ycrcb2rgb"


/**
 * Register Offsets
 */
/* General Control Registers */
#define YCC_CONTROL        0x000    /**< Control        */
#define YCC_STATUS         0x004    /**< Status         */
#define YCC_ERROR          0x008    /**< Error          */
#define YCC_IRQ_EN         0x00C    /**< IRQ Enable     */
#define YCC_VERSION        0x010    /**< Version        */
#define YCC_SYSDEBUG0      0x014    /**< System Debug 0 */
#define YCC_SYSDEBUG1      0x018    /**< System Debug 1 */
#define YCC_SYSDEBUG2      0x01C    /**< System Debug 2 */
/* Timing Control Registers */
#define YCC_ACTIVE_SIZE    0x020    /**< Active Size (V x H)       */
#define YCC_TIMING_STATUS  0x024    /**< Timing Measurement Status */
/* Core Specific Registers */
#define YCC_RGBMAX         0x100    /**< RGB Clipping */
#define YCC_RGBMIN         0x104    /**< RGB Clamping */
#define YCC_ROFFSET        0x108    /**< R Offset     */
#define YCC_GOFFSET        0x10C    /**< G Offset     */
#define YCC_BOFFSET        0x110    /**< B Offset     */
#define YCC_ACOEF          0x114    /**< Matrix Coversion Coefficient */
#define YCC_BCOEF          0x118    /**< Matrix Coversion Coefficient */
#define YCC_CCOEF          0x11C    /**< Matrix Coversion Coefficient */
#define YCC_DCOEF          0x120    /**< Matrix Coversion Coefficient */

/*
 * CCM Control Register bit definition
 */
#define YCC_CTL_EN_MASK     0x00000001 /**< CCM Enable */
#define YCC_CTL_RUE_MASK    0x00000002 /**< CCM Register Update Enable */

/*
 * CCM Reset Register bit definition
 */
#define YCC_RST_RESET      0x80000000 /**< Software Reset - Instantaneous */
#define YCC_RST_AUTORESET  0x40000000 /**< Software Reset - Auto-synchronize to SOF */



#endif /* YUV2RGB_HW_H_ */
