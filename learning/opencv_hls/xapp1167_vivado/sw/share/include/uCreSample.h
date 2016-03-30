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
* @file uCreSample.h
*
*******************************************************************************/

#ifndef UCRESAMPLE_H_
#define UCRESAMPLE_H_

typedef enum {
	E_CRE_422_444,
	E_CRE_444_422,
	E_CRE_422_420,
	E_CRE_420_422,
	E_CRE_444_420,
	E_CRE_420_444
}Cre_ConvType;

typedef struct {
	unsigned int hCoeff[2][24]; //coefficient 0 to 23 for phase 0 and 1
	unsigned int vCoeff[2][8]; //coefficient 0 to 7 for phase 0 and 1
} Cre_Coefficients;

typedef struct {
	Cre_ConvType type;
	unsigned int height;
	unsigned int width;
	Cre_Coefficients coeff;
}CreConfig;

int uCre_Init(void);
int uCre_Release (void);

void uCre_Configure(CreConfig *configuration);

void uCre_Enable(void);
void uCre_Disable(void); // stops and soft reset the cre sampler

void uCre_ClearCoeff(void);


#endif /* UCRESAMPLE_H_ */
