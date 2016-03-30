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
* @file uVtc.c
*
******************************************************************************/

#include <assert.h>
#include "uio_common.h"
#include "Vtc_hw.h"
#include "uVtc.h"


static uio_info gVtcInfo;

int uVtc_Init(void)
{
	return uio_Initialize(&gVtcInfo,VTC_INSTANCE_NAME);
}

int uVtc_Release (void)
{
	uVtc_Disable();
	return uio_Release(&gVtcInfo);
}

void uVtc_Configure(VtcConfig *config)
{
	uio_handle Vtc_handle;
	//assert(config != NULL);
	assert(gVtcInfo.isInitialized == XIL_COMPONENT_IS_READY);

	uio_get_Handler(&gVtcInfo, &Vtc_handle);
	assert(Vtc_handle.IsReady == XIL_COMPONENT_IS_READY);

	HW_WRITE(Vtc_handle.Control_bus_BaseAddress, VTC_ACT_SIZE, (config->vActive << SHIFT_16) | config->hActive);
	HW_WRITE(Vtc_handle.Control_bus_BaseAddress, VTC_ENCODE  , 0x00000002);
	HW_WRITE(Vtc_handle.Control_bus_BaseAddress, VTC_POL     , 0x0000003F);
	HW_WRITE(Vtc_handle.Control_bus_BaseAddress, VTC_HSIZE   , config->hTotal);
	HW_WRITE(Vtc_handle.Control_bus_BaseAddress, VTC_VSIZE   , config->vTotal);
	HW_WRITE(Vtc_handle.Control_bus_BaseAddress, VTC_HSYNC   , (config->hSync_end << SHIFT_16) | config->hSync_start);
	HW_WRITE(Vtc_handle.Control_bus_BaseAddress, VTC_VBLANKH  , (config->vBlankh_end << SHIFT_16) | config->vBlankh_start);
	HW_WRITE(Vtc_handle.Control_bus_BaseAddress, VTC_VSYNC   , (config->vSync_end << SHIFT_16) | config->vSync_start);
	HW_WRITE(Vtc_handle.Control_bus_BaseAddress, VTC_VSYNCH   , (config->vSyncH_end << SHIFT_16) | config->vSyncH_start);

	uio_release_handle(&gVtcInfo,&Vtc_handle);

}

void uVtc_Enable(void)
{
	uio_handle Vtc_handle;

	assert(gVtcInfo.isInitialized == XIL_COMPONENT_IS_READY);

	uio_get_Handler(&gVtcInfo, &Vtc_handle);
	assert(Vtc_handle.IsReady == XIL_COMPONENT_IS_READY);

	HW_WRITE(Vtc_handle.Control_bus_BaseAddress, VTC_CR , 0x3F7FF0F); // Control register, has to be written at last.

	uio_release_handle(&gVtcInfo,&Vtc_handle);

}

void uVtc_Disable(void)
{
	uio_handle Vtc_handle;

	assert(gVtcInfo.isInitialized == XIL_COMPONENT_IS_READY);

	uio_get_Handler(&gVtcInfo, &Vtc_handle);
	assert(Vtc_handle.IsReady == XIL_COMPONENT_IS_READY);

	HW_WRITE(Vtc_handle.Control_bus_BaseAddress, VTC_CR , 0x0);

	uio_release_handle(&gVtcInfo,&Vtc_handle);
}


unsigned int uVtc_get_detect(void)
{
	uio_handle Vtc_handle;
	unsigned int detectedSize = 0;
	assert(gVtcInfo.isInitialized == XIL_COMPONENT_IS_READY);

	uio_get_Handler(&gVtcInfo, &Vtc_handle);
	assert(Vtc_handle.IsReady == XIL_COMPONENT_IS_READY);

	detectedSize = HW_READ(Vtc_handle.Control_bus_BaseAddress, VTC_DETECT);

	uio_release_handle(&gVtcInfo,&Vtc_handle);

	return detectedSize;
}
