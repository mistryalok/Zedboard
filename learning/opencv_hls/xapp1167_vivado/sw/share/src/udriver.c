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
* @file udriver.c
*
* Implementation of user side drivers to access different hardwares
* This uses mmap to access the h/w registers.
*
******************************************************************************/


#include <stdio.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <unistd.h>
#include "udriver.h"

#include "uTpg.h"
#include "uCreSample.h"
#include "uYuv2rgb.h"
#include "uPerfMon.h"
#include "uVtc.h"

////////////////////// TPG /////////////////
int tpg_init(void)
{
	return uTpg_Init();
}

int tpg_deinit(void)
{
	return uTpg_Release();
}

void SetTpgPattern(int res_id, int pattern)
{
	TpgConfig tpg_configuration;

	tpg_configuration.pattern = pattern;
	tpg_configuration.motion_param = 0x0000000B;
	tpg_configuration.frm_height = gVideoParam[res_id][E_VActive];
	tpg_configuration.frm_width = gVideoParam[res_id][E_HActive];
	tpg_configuration.h_zplate = (0x90 * 1920)/gVideoParam[res_id][E_HActive];
	tpg_configuration.v_zplate = (0x3 * 1080)/gVideoParam[res_id][E_VActive];
	tpg_configuration.box_size = (0x70 * gVideoParam[res_id][E_VActive]) / 1080 ;
	tpg_configuration.box_color = 0x76543210;

	uTpg_Configure(&tpg_configuration);

	uTpg_Enable();
}


/////////////////// Chroma Resampler ////////////////

int cre_init()
{
	return uCre_Init();
}

int cre_deinit()
{
	return uCre_Release();
}

void chr_start()
{
	uCre_Enable();
}

void chr_stop_reset()
{
	//disable and soft reset the chroma resampler
	uCre_Disable();
}

void chr_configure(int res_id)
{
	CreConfig cre_configuration;
	cre_configuration.type = E_CRE_422_444;
	cre_configuration.height = gVideoParam[res_id][E_VActive];
	cre_configuration.width = gVideoParam[res_id][E_HActive];

	uCre_Configure(&cre_configuration);
}


//////////////////// YCrCb to RGB converter ////////////////

int yuv2rgb_init(void)
{
	return uYuv_Init();
}

int yuv2rgb_deinit(void)
{
	return uYuv_Release();
}

void yuv2rgb_stop_reset()
{
	// soft reset (immediate)
	uYuv_Disable();
}

void yuv2rgb_configure(int res_id)
{
	YuvConfig yuv_config;

	yuv_config.height = gVideoParam[res_id][E_VActive];
	yuv_config.width = gVideoParam[res_id][E_HActive];

	uYuv_Configure(&yuv_config);
}
void yuv2rgb_start(void)
{
	uYuv_Enable();
}

//////////////////// Perf Monitor ///////

int perf_monitor_init(void)
{
	PerfMonConfig config;
	config.Max_counter = E_MAX_PERF_COUNTERS;
	config.counter_width = 32;
	config.sample_interval = PERF_SAMPLE_VALUE;
	return uPerfMon_Init(&config);
}

int perf_monitor_deinit(void)
{
	return uPerfMon_Release();
}

void perf_enable_counters(void)
{
	uPerfMon_SetCounter(E_HP_0, E_Metrics_READ, PERF_COUNTER_ID(E_HP_0 ,E_Metrics_READ));
	uPerfMon_SetCounter(E_HP_0, E_Metrics_WRITE, PERF_COUNTER_ID(E_HP_0 ,E_Metrics_WRITE));
	uPerfMon_SetCounter(E_HP_2, E_Metrics_READ, PERF_COUNTER_ID(E_HP_2 ,E_Metrics_READ));
	uPerfMon_SetCounter(E_HP_2, E_Metrics_WRITE, PERF_COUNTER_ID(E_HP_2 ,E_Metrics_WRITE));

	uPerfMon_Enable();
}

void perf_RestartCounters(void)
{
	uPerfMon_RestartCounters();
}

int perf_wait_for_update(void)
{
	return uPerfMon_Wait_for_counter_overflow();
}

unsigned long get_perf(enum Perf_HP_Slot hp_port, enum Perf_Operation read_write)
{
	return uPerfMon_getCounterValue(PERF_COUNTER_ID(hp_port,read_write));
}


/////////////// Time base ////////////////////

int vtc_init(void)
{
	return uVtc_Init();
}

int vtc_deinit(void)
{
	return uVtc_Release();
}

void configure_timebase(int res_id)
{
	VtcConfig vtc_configuration;

	// Calculating timing parameters
		vtc_configuration.hActive = gVideoParam[res_id][E_HActive];
		vtc_configuration.hSync_start = vtc_configuration.hActive + gVideoParam[res_id][E_HFP];
		vtc_configuration.hSync_end = vtc_configuration.hSync_start + gVideoParam[res_id][E_HSyncLen];
		vtc_configuration.hTotal = gVideoParam[res_id][E_HTotal];

		vtc_configuration.vActive = gVideoParam[res_id][E_VActive];
		vtc_configuration.vSync_start = vtc_configuration.vActive + gVideoParam[res_id][E_VFP] - 1; // one line is componseted with vSyncH offset cycles
		vtc_configuration.vSync_end = vtc_configuration.vSync_start + gVideoParam[res_id][E_VSyncLen];
		vtc_configuration.vTotal = gVideoParam[res_id][E_VTotal];
		vtc_configuration.vBlankh_start = vtc_configuration.hActive;	// after active lines
		vtc_configuration.vBlankh_end = vtc_configuration.hActive;
		vtc_configuration.vSyncH_start = vtc_configuration.hActive + gVideoParam[res_id][E_HFP];
		vtc_configuration.vSyncH_end =vtc_configuration.vSyncH_start;

		uVtc_Configure(&vtc_configuration);
		uVtc_Enable();
}


//Read Horizontal and vertical frame size without blanking.
unsigned int  get_detector_active_size()
{
	return uVtc_get_detect();
}


