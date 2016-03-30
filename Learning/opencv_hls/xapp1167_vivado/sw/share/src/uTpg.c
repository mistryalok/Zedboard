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
* @file uTpg.c
*
******************************************************************************/
#include <assert.h>
#include "uio_common.h"
#include "uTpg.h"
#include "Tpg_hw.h"

static uio_info gTpgInfo;

int uTpg_Init(void)
{
	return uio_Initialize(&gTpgInfo,TPG_INSTANCE_NAME);
}

int uTpg_Release (void)
{
	uTpg_Disable();
	return uio_Release(&gTpgInfo);
}

void uTpg_Configure(TpgConfig *config)
{
	uio_handle tpg_handle;
	//assert(config != NULL);
	assert(gTpgInfo.isInitialized == XIL_COMPONENT_IS_READY);

	uio_get_Handler(&gTpgInfo, &tpg_handle);
	assert(tpg_handle.IsReady == XIL_COMPONENT_IS_READY);

	HW_WRITE(tpg_handle.Control_bus_BaseAddress, TPG_PATTERN_CONTROL, config->pattern);
	HW_WRITE(tpg_handle.Control_bus_BaseAddress, TPG_MOTION_SPEED, config->motion_param);
	HW_WRITE(tpg_handle.Control_bus_BaseAddress, TPG_ACTIVE_SIZE, config->frm_height << SHIFT_16 | config->frm_width);
	HW_WRITE(tpg_handle.Control_bus_BaseAddress, TPG_ZPLATE_HOR_CONTROL, config->h_zplate);
	HW_WRITE(tpg_handle.Control_bus_BaseAddress, TPG_ZPLATE_VER_CONTROL, config->v_zplate);
	HW_WRITE(tpg_handle.Control_bus_BaseAddress, TPG_BOX_SIZE, config->box_size);
	HW_WRITE(tpg_handle.Control_bus_BaseAddress, TPG_BOX_COLOR, config->box_color);

	uio_release_handle(&gTpgInfo,&tpg_handle);

}

void uTpg_Enable(void)
{
	uio_handle tpg_handle;

	assert(gTpgInfo.isInitialized == XIL_COMPONENT_IS_READY);

	uio_get_Handler(&gTpgInfo, &tpg_handle);
	assert(tpg_handle.IsReady == XIL_COMPONENT_IS_READY);

	HW_WRITE(tpg_handle.Control_bus_BaseAddress, TPG_CONTROL, (TPG_CTL_EN_MASK | TPG_CTL_RUE_MASK));

	uio_release_handle(&gTpgInfo,&tpg_handle);

}

void uTpg_Disable(void)
{
	uio_handle tpg_handle;

	assert(gTpgInfo.isInitialized == XIL_COMPONENT_IS_READY);

	uio_get_Handler(&gTpgInfo, &tpg_handle);
	assert(tpg_handle.IsReady == XIL_COMPONENT_IS_READY);

	HW_WRITE(tpg_handle.Control_bus_BaseAddress, TPG_CONTROL, TPG_RST_RESET);

	uio_release_handle(&gTpgInfo,&tpg_handle);
}
