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
* @file Cresample_hw.h
*
******************************************************************************/

#ifndef CRESAMPLE_HW_H_
#define CRESAMPLE_HW_H_

#define CRE_INSTANCE_NAME		"v-cresample"

/**
 * Register Offsets
 */
/* General Control Registers */
#define CRESAMPLE_CONTROL        0x0000    /**< Control        */
#define CRESAMPLE_STATUS         0x0004    /**< Status         */
#define CRESAMPLE_ERROR          0x0008    /**< Error          */
#define CRESAMPLE_IRQ_ENABLE     0x000C    /**< IRQ Enable     */
#define CRESAMPLE_VERSION        0x0010    /**< Version        */
#define CRESAMPLE_SYSDEBUG0      0x0014    /**< System Debug 0 */
#define CRESAMPLE_SYSDEBUG1      0x0018    /**< System Debug 1 */
#define CRESAMPLE_SYSDEBUG2      0x001C    /**< System Debug 2 */
/* Timing Control Registers */
#define CRESAMPLE_ACTIVE_SIZE    0x0020    /**< Horizontal and Vertical Active Frame Size */
#define CRESAMPLE_ENCODING       0x0028    /**< Frame Encoding */
/* Core Specific Registers */
#define CRESAMPLE_COEF00_HPHASE0      0x0100   /**< Coefficient 00 of Horizontal Phase 0 Filter */
#define CRESAMPLE_COEF01_HPHASE0      0x0104   /**< Coefficient 01 of Horizontal Phase 0 Filter */
#define CRESAMPLE_COEF02_HPHASE0      0x0108   /**< Coefficient 02 of Horizontal Phase 0 Filter */
#define CRESAMPLE_COEF03_HPHASE0      0x010C   /**< Coefficient 03 of Horizontal Phase 0 Filter */
#define CRESAMPLE_COEF04_HPHASE0      0x0110   /**< Coefficient 04 of Horizontal Phase 0 Filter */
#define CRESAMPLE_COEF05_HPHASE0      0x0114   /**< Coefficient 05 of Horizontal Phase 0 Filter */
#define CRESAMPLE_COEF06_HPHASE0      0x0118   /**< Coefficient 06 of Horizontal Phase 0 Filter */
#define CRESAMPLE_COEF07_HPHASE0      0x011C   /**< Coefficient 07 of Horizontal Phase 0 Filter */
#define CRESAMPLE_COEF08_HPHASE0      0x0120   /**< Coefficient 08 of Horizontal Phase 0 Filter */
#define CRESAMPLE_COEF09_HPHASE0      0x0124   /**< Coefficient 09 of Horizontal Phase 0 Filter */
#define CRESAMPLE_COEF10_HPHASE0      0x0128   /**< Coefficient 10 of Horizontal Phase 0 Filter */
#define CRESAMPLE_COEF11_HPHASE0      0x012C   /**< Coefficient 11 of Horizontal Phase 0 Filter */
#define CRESAMPLE_COEF12_HPHASE0      0x0130   /**< Coefficient 12 of Horizontal Phase 0 Filter */
#define CRESAMPLE_COEF13_HPHASE0      0x0134   /**< Coefficient 13 of Horizontal Phase 0 Filter */
#define CRESAMPLE_COEF14_HPHASE0      0x0138   /**< Coefficient 14 of Horizontal Phase 0 Filter */
#define CRESAMPLE_COEF15_HPHASE0      0x013C   /**< Coefficient 15 of Horizontal Phase 0 Filter */
#define CRESAMPLE_COEF16_HPHASE0      0x0140   /**< Coefficient 16 of Horizontal Phase 0 Filter */
#define CRESAMPLE_COEF17_HPHASE0      0x0144   /**< Coefficient 17 of Horizontal Phase 0 Filter */
#define CRESAMPLE_COEF18_HPHASE0      0x0148   /**< Coefficient 18 of Horizontal Phase 0 Filter */
#define CRESAMPLE_COEF19_HPHASE0      0x014C   /**< Coefficient 19 of Horizontal Phase 0 Filter */
#define CRESAMPLE_COEF20_HPHASE0      0x0150   /**< Coefficient 20 of Horizontal Phase 0 Filter */
#define CRESAMPLE_COEF21_HPHASE0      0x0154   /**< Coefficient 21 of Horizontal Phase 0 Filter */
#define CRESAMPLE_COEF22_HPHASE0      0x0158   /**< Coefficient 22 of Horizontal Phase 0 Filter */
#define CRESAMPLE_COEF23_HPHASE0      0x015C   /**< Coefficient 23 of Horizontal Phase 0 Filter */

#define CRESAMPLE_COEF00_HPHASE1      0x0160   /**< Coefficient 00 of Horizontal Phase 1 Filter */
#define CRESAMPLE_COEF01_HPHASE1      0x0164   /**< Coefficient 01 of Horizontal Phase 1 Filter */
#define CRESAMPLE_COEF02_HPHASE1      0x0168   /**< Coefficient 02 of Horizontal Phase 1 Filter */
#define CRESAMPLE_COEF03_HPHASE1      0x016C   /**< Coefficient 03 of Horizontal Phase 1 Filter */
#define CRESAMPLE_COEF04_HPHASE1      0x0170   /**< Coefficient 04 of Horizontal Phase 1 Filter */
#define CRESAMPLE_COEF05_HPHASE1      0x0174   /**< Coefficient 05 of Horizontal Phase 1 Filter */
#define CRESAMPLE_COEF06_HPHASE1      0x0178   /**< Coefficient 06 of Horizontal Phase 1 Filter */
#define CRESAMPLE_COEF07_HPHASE1      0x017C   /**< Coefficient 07 of Horizontal Phase 1 Filter */
#define CRESAMPLE_COEF08_HPHASE1      0x0180   /**< Coefficient 08 of Horizontal Phase 1 Filter */
#define CRESAMPLE_COEF09_HPHASE1      0x0184   /**< Coefficient 09 of Horizontal Phase 1 Filter */
#define CRESAMPLE_COEF10_HPHASE1      0x0188   /**< Coefficient 10 of Horizontal Phase 1 Filter */
#define CRESAMPLE_COEF11_HPHASE1      0x018C   /**< Coefficient 11 of Horizontal Phase 1 Filter */
#define CRESAMPLE_COEF12_HPHASE1      0x0190   /**< Coefficient 12 of Horizontal Phase 1 Filter */
#define CRESAMPLE_COEF13_HPHASE1      0x0194   /**< Coefficient 13 of Horizontal Phase 1 Filter */
#define CRESAMPLE_COEF14_HPHASE1      0x0198   /**< Coefficient 14 of Horizontal Phase 1 Filter */
#define CRESAMPLE_COEF15_HPHASE1      0x019C   /**< Coefficient 15 of Horizontal Phase 1 Filter */
#define CRESAMPLE_COEF16_HPHASE1      0x01A0   /**< Coefficient 16 of Horizontal Phase 1 Filter */
#define CRESAMPLE_COEF17_HPHASE1      0x01A4   /**< Coefficient 17 of Horizontal Phase 1 Filter */
#define CRESAMPLE_COEF18_HPHASE1      0x01A8   /**< Coefficient 18 of Horizontal Phase 1 Filter */
#define CRESAMPLE_COEF19_HPHASE1      0x01AC   /**< Coefficient 19 of Horizontal Phase 1 Filter */
#define CRESAMPLE_COEF20_HPHASE1      0x01B0   /**< Coefficient 20 of Horizontal Phase 1 Filter */
#define CRESAMPLE_COEF21_HPHASE1      0x01B4   /**< Coefficient 21 of Horizontal Phase 1 Filter */
#define CRESAMPLE_COEF22_HPHASE1      0x01B8   /**< Coefficient 22 of Horizontal Phase 1 Filter */
#define CRESAMPLE_COEF23_HPHASE1      0x01BC   /**< Coefficient 23 of Horizontal Phase 1 Filter */

#define CRESAMPLE_COEF00_VPHASE0      0x01C0   /**< Coefficient 00 of Vertical Phase 0 Filter */
#define CRESAMPLE_COEF01_VPHASE0      0x01C4   /**< Coefficient 01 of Vertical Phase 0 Filter */
#define CRESAMPLE_COEF02_VPHASE0      0x01C8   /**< Coefficient 02 of Vertical Phase 0 Filter */
#define CRESAMPLE_COEF03_VPHASE0      0x01CC   /**< Coefficient 03 of Vertical Phase 0 Filter */
#define CRESAMPLE_COEF04_VPHASE0      0x01D0   /**< Coefficient 04 of Vertical Phase 0 Filter */
#define CRESAMPLE_COEF05_VPHASE0      0x01D4   /**< Coefficient 05 of Vertical Phase 0 Filter */
#define CRESAMPLE_COEF06_VPHASE0      0x01D8   /**< Coefficient 06 of Vertical Phase 0 Filter */
#define CRESAMPLE_COEF07_VPHASE0      0x01DC   /**< Coefficient 07 of Vertical Phase 0 Filter */

#define CRESAMPLE_COEF00_VPHASE1      0x01E0   /**< Coefficient 00 of Vertical Phase 1 Filter */
#define CRESAMPLE_COEF01_VPHASE1      0x01E4   /**< Coefficient 01 of Vertical Phase 1 Filter */
#define CRESAMPLE_COEF02_VPHASE1      0x01E8   /**< Coefficient 02 of Vertical Phase 1 Filter */
#define CRESAMPLE_COEF03_VPHASE1      0x01EC   /**< Coefficient 03 of Vertical Phase 1 Filter */
#define CRESAMPLE_COEF04_VPHASE1      0x01F0   /**< Coefficient 04 of Vertical Phase 1 Filter */
#define CRESAMPLE_COEF05_VPHASE1      0x01F4   /**< Coefficient 05 of Vertical Phase 1 Filter */
#define CRESAMPLE_COEF06_VPHASE1      0x01F8   /**< Coefficient 06 of Vertical Phase 1 Filter */
#define CRESAMPLE_COEF07_VPHASE1      0x01FC   /**< Coefficient 07 of Vertical Phase 1 Filter */

/*****************************************************************************/
/**
 * Control Register bit definition
 */
#define CRESAMPLE_CTL_EN_MASK    0x00000001 /**< Enable */
#define CRESAMPLE_CTL_RU_MASK    0x00000002 /**< Register Update */
#define CRESAMPLE_CTL_AUTORESET  0x40000000 /**< Software Reset - Auto-synchronize to SOF */
#define CRESAMPLE_CTL_RESET      0x80000000 /**< Software Reset - Instantaneous */


#endif /* CRESAMPLE_HW_H_ */
