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
 * @file uCreSample.c
 *
 *
 ******************************************************************************/


#include <assert.h>
#include "uio_common.h"
#include "uCreSample.h"
#include "Cresample_hw.h"

static uio_info uCreInfo;

int uCre_Init(void)
{
	return uio_Initialize(&uCreInfo,CRE_INSTANCE_NAME);
}

int uCre_Release (void)
{
	uCre_Disable();
	return uio_Release(&uCreInfo);
}

void uCre_Configure(CreConfig *config)
{
	uio_handle cre_handle;
	//assert(config != NULL);
	assert(uCreInfo.isInitialized == XIL_COMPONENT_IS_READY);

	uio_get_Handler(&uCreInfo, &cre_handle);
	assert(cre_handle.IsReady == XIL_COMPONENT_IS_READY);

	HW_WRITE(cre_handle.Control_bus_BaseAddress, CRESAMPLE_ACTIVE_SIZE, config->height << SHIFT_16 | config->width);
/*
 * implement switch case for various h and v coefficients.
 */


	uio_release_handle(&uCreInfo,&cre_handle);

}

void uCre_Enable(void)
{
	uio_handle cre_handle;

	assert(uCreInfo.isInitialized == XIL_COMPONENT_IS_READY);

	uio_get_Handler(&uCreInfo, &cre_handle);
	assert(cre_handle.IsReady == XIL_COMPONENT_IS_READY);

	HW_WRITE(cre_handle.Control_bus_BaseAddress, CRESAMPLE_CONTROL, (CRESAMPLE_CTL_EN_MASK | CRESAMPLE_CTL_RU_MASK));

	uio_release_handle(&uCreInfo,&cre_handle);

}

//disable and reset
void uCre_Disable(void)
{
	uio_handle cre_handle;

	assert(uCreInfo.isInitialized == XIL_COMPONENT_IS_READY);

	uio_get_Handler(&uCreInfo, &cre_handle);
	assert(cre_handle.IsReady == XIL_COMPONENT_IS_READY);

	HW_WRITE(cre_handle.Control_bus_BaseAddress, CRESAMPLE_CONTROL, CRESAMPLE_CTL_RESET);

	uio_release_handle(&uCreInfo,&cre_handle);
}

void uCre_ClearCoeff(void)
{
	// todo
}
