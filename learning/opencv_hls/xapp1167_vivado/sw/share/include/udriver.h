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
* @file udriver.h
*
* Exposes the user side driver API, that can be called to configure and control
* the h/w.
*
*******************************************************************************/

#ifndef UDRIVER_H_
#define UDRIVER_H_

//utilities
#include"common.h"

// CVC

//////////////////// TPG ////////////////
int tpg_init(void);
int tpg_deinit(void);
void SetTpgPattern(int res_id, int pattern);



//////////////////// Chroma Resampler ////////////////
int cre_init(void);
int cre_deinit(void);
void chr_stop_reset();
void chr_configure(int res_id);
void chr_start(void);

//////////////////// YCrCb to RGB converter ////////////////
int yuv2rgb_init(void);
int yuv2rgb_deinit(void);
void yuv2rgb_stop_reset();
void yuv2rgb_configure(int res_id);
void yuv2rgb_start(void);

//////////////////// Perf monitor ////////////////

#define PERF_COUNTER_ID(slot,metrics)	(((slot)<<1) | ((metrics -2)))
#define PERF_SAMPLE_VALUE			150000000	//150M == 1 second

//duplicating the bellow 2 enum definitions from uPerfMon.h
enum Perf_Operation
{
	E_READ_PERF = 2,
	E_WRITE_PERF = 3
};

enum Perf_HP_Slot
{
	E_HP_PORT_0 = 0,
	E_HP_PORT_2 = 1
};



enum PerfCounters
{
	E_Counter_0 = PERF_COUNTER_ID(E_HP_PORT_0 ,E_READ_PERF),		//0
	E_Counter_1 = PERF_COUNTER_ID(E_HP_PORT_0 ,E_WRITE_PERF),		//1
	E_Counter_2 = PERF_COUNTER_ID(E_HP_PORT_2 ,E_READ_PERF),		//2
	E_Counter_3 = PERF_COUNTER_ID(E_HP_PORT_2 ,E_WRITE_PERF),		//3
	E_MAX_PERF_COUNTERS											//4
};

int perf_monitor_init(void);
int perf_monitor_deinit(void);
void perf_enable_counters(void);

void perf_RestartCounters(void);
int perf_wait_for_update(void);
unsigned long get_perf(enum Perf_HP_Slot hp_port, enum Perf_Operation read_write);


/////////////// Time base ////////////////////
int vtc_init(void);
int vtc_deinit(void);
void configure_timebase(int res_id);
//Read the content of detector active size register.
unsigned int  get_detector_active_size();

#endif /* UDRIVER_H_ */
