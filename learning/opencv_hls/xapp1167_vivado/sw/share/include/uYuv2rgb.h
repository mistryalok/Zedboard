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
* @file uYuv2rgb.h
*
*******************************************************************************/

#ifndef UYUV2RGB_H_
#define UYUV2RGB_H_

typedef struct {
	struct
	{
	  /* Pre-translated coefficient/offset data */
	  double  acoef;          //@- [ 0.0 - 1.0 ]       0.0 < ACOEFF + BCOEFF < 1.0
	  double  bcoef;          //@- [ 0.0 - 1.0 ]       0.0 < ACOEFF + BCOEFF < 1.0
	  double  ccoef;          //@- [ 0.0 - 0.9 ]
	  double  dcoef;          //@- [ 0.0 - 0.9 ]
	  unsigned int     yoffset;        //@- Offset for the Luminance Channel
	  unsigned int     cboffset;       //@- Offset for the Chrominance Channels
	  unsigned int     croffset;       //@- Offset for the Chrominance Channels
	  unsigned int     rgbmax;         //@- RGB Clipping
	  unsigned int     rgbmin;         //@- RGB Clamping
	}ycc_coef_inputs;

	struct
	{
	  /* Translated coefficient/offset data */
	  unsigned int     acoef;        //@- Translated ACoef
	  unsigned int     bcoef;        //@- Translated BCoef
	  unsigned int     ccoef;        //@- Translated CCoef
	  unsigned int     dcoef;        //@- Translated DCoef
	  unsigned int     roffset;      //@- Translated Offset for the R Channel
	  unsigned int     goffset;      //@- Translated Offset for the G Channel
	  unsigned int     boffset;      //@- Translated Offset for the B Channel
	  unsigned int     rgbmax;       //@- Translated RGB Clipping
	  unsigned int     rgbmin;       //@- Translated RGB Clamping
	}ycc_coef_outputs;

} Yuv_Coefficients;

typedef struct {
	unsigned int height;
	unsigned int width;
	Yuv_Coefficients coeff;
}YuvConfig;

int uYuv_Init(void);
int uYuv_Release (void);

void uYuv_Configure(YuvConfig *configuration);

void uYuv_Enable(void);
void uYuv_Disable(void); // stops and soft reset the cre sampler

#endif /* UYUV2RGB_H_ */
