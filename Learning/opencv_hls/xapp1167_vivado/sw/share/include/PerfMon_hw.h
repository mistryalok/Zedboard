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
* @file PerfMon_hw.h
*
*******************************************************************************/


#ifndef PERFMON_HW_H_
#define PERFMON_HW_H_

#define PMON_INSTANCE_NAME		"axi-perf-mon"


/**@name Register offsets of AXIMONITOR in the Device Config
 *
 * The following constants provide access to each of the registers of the
 * AXI PERFORMANCE MONITOR device.
 * @{
 */

#define XAPM_GCC_HIGH_OFFSET		0x0000	/**< Global Clock Counter
							32 to 63 bits  */
#define XAPM_GCC_LOW_OFFSET		0x0004	/**< Global Clock Counter Lower
							0-31 bits  */
#define XAPM_SI_HIGH_OFFSET		0x0020	/**< Sample Interval MSB */
#define XAPM_SI_LOW_OFFSET		0x0024	/**< Sample Interval LSB */
#define XAPM_SICR_OFFSET		0x0028	/**< Sample Interval Control
							Register */
#define XAPM_GIE_OFFSET			0x0030	/**< Global Interrupt Enable
							Register */
#define XAPM_IE_OFFSET			0x0034	/**< Interrupt Enable Register */
#define XAPM_IS_OFFSET			0x0038	/**< Interrupt Status Register */

#define XAPM_MSR0_OFFSET		0x0044	/**< Metric Selector 0 Register */
#define XAPM_MSR1_OFFSET		0x0048	/**< Metric Selector 1 Register */
#define XAPM_MSR2_OFFSET		0x004C	/**< Metric Selector 2 Register */

#define XAPM_MC0_OFFSET			0x0100	/**< Metric Counter 0 Register */
#define XAPM_INC0_OFFSET		0x0104	/**< Incrementer 0 Register */
#define XAPM_RANGE0_OFFSET		0x0108	/**< Range 0 Register */
#define XAPM_MC0LOGEN_OFFSET		0x010C	/**< Metric Counter 0
							Log Enable Register */
#define XAPM_MC1_OFFSET			0x0110	/**< Metric Counter 1 Register */
#define XAPM_INC1_OFFSET		0x0114	/**< Incrementer 1 Register */
#define XAPM_RANGE1_OFFSET		0x0118	/**< Range 1 Register */
#define XAPM_MC1LOGEN_OFFSET		0x011C	/**< Metric Counter 1
							Log Enable Register */
#define XAPM_MC2_OFFSET			0x0120	/**< Metric Counter 2 Register */
#define XAPM_INC2_OFFSET		0x0124	/**< Incrementer 2 Register */
#define XAPM_RANGE2_OFFSET		0x0128	/**< Range 2 Register */
#define XAPM_MC2LOGEN_OFFSET		0x012C	/**< Metric Counter 2
							Log Enable Register */
#define XAPM_MC3_OFFSET			0x0130	/**< Metric Counter 3 Register */
#define XAPM_INC3_OFFSET		0x0134	/**< Incrementer 3 Register */
#define XAPM_RANGE3_OFFSET		0x0138	/**< Range 3 Register */
#define XAPM_MC3LOGEN_OFFSET		0x013C	/**< Metric Counter 3
							Log Enable Register */
#define XAPM_MC4_OFFSET			0x0140	/**< Metric Counter 4 Register */
#define XAPM_INC4_OFFSET		0x0144	/**< Incrementer 4 Register */
#define XAPM_RANGE4_OFFSET		0x0148	/**< Range 4 Register */
#define XAPM_MC4LOGEN_OFFSET		0x014C	/**< Metric Counter 4
							Log Enable Register */
#define XAPM_MC5_OFFSET			0x0150	/**< Metric Counter 5
							Register */
#define XAPM_INC5_OFFSET		0x0154	/**< Incrementer 5 Register */
#define XAPM_RANGE5_OFFSET		0x0158	/**< Range 5 Register */
#define XAPM_MC5LOGEN_OFFSET		0x015C	/**< Metric Counter 5
							Log Enable Register */
#define XAPM_MC6_OFFSET			0x0160	/**< Metric Counter 6
							Register */
#define XAPM_INC6_OFFSET		0x0164	/**< Incrementer 6 Register */
#define XAPM_RANGE6_OFFSET		0x0168	/**< Range 6 Register */
#define XAPM_MC6LOGEN_OFFSET		0x016C	/**< Metric Counter 6
							Log Enable Register */
#define XAPM_MC7_OFFSET			0x0170	/**< Metric Counter 7
							Register */
#define XAPM_INC7_OFFSET		0x0174	/**< Incrementer 7 Register */
#define XAPM_RANGE7_OFFSET		0x0178	/**< Range 7 Register */
#define XAPM_MC7LOGEN_OFFSET		0x017C	/**< Metric Counter 7
							Log Enable Register */
#define XAPM_MC8_OFFSET			0x0180	/**< Metric Counter 8
							Register */
#define XAPM_INC8_OFFSET		0x0184	/**< Incrementer 8 Register */
#define XAPM_RANGE8_OFFSET		0x0188	/**< Range 8 Register */
#define XAPM_MC8LOGEN_OFFSET		0x018C	/**< Metric Counter 8
							Log Enable Register */
#define XAPM_MC9_OFFSET			0x0190	/**< Metric Counter 9
							Register */
#define XAPM_INC9_OFFSET		0x0194	/**< Incrementer 9 Register */
#define XAPM_RANGE9_OFFSET		0x0198	/**< Range 9 Register */
#define XAPM_MC9LOGEN_OFFSET		0x019C	/**< Metric Counter 9
							Log Enable Register */
#define XAPM_SMC0_OFFSET		0x0200	/**< Sampled Metric Counter
							0 Register */
#define XAPM_SINC0_OFFSET		0x0204	/**< Sampled Incrementer
							0 Register */
#define XAPM_SMC1_OFFSET		0x0210	/**< Sampled Metric Counter
							1 Register */
#define XAPM_SINC1_OFFSET		0x0214	/**< Sampled Incrementer
							1 Register */
#define XAPM_SMC2_OFFSET		0x0220	/**< Sampled Metric Counter
							2 Register */
#define XAPM_SINC2_OFFSET		0x0224	/**< Sampled Incrementer
							2 Register */
#define XAPM_SMC3_OFFSET		0x0230	/**< Sampled Metric Counter
							3 Register */
#define XAPM_SINC3_OFFSET		0x0234	/**< Sampled Incrementer
							3 Register */
#define XAPM_SMC4_OFFSET		0x0240	/**< Sampled Metric Counter
							4 Register */
#define XAPM_SINC4_OFFSET		0x0244	/**< Sampled Incrementer
							4 Register */
#define XAPM_SMC5_OFFSET		0x0250	/**< Sampled Metric Counter
							5 Register */
#define XAPM_SINC5_OFFSET		0x0254	/**< Sampled Incrementer
							5 Register */
#define XAPM_SMC6_OFFSET		0x0260	/**< Sampled Metric Counter
							6 Register */
#define XAPM_SINC6_OFFSET		0x0264	/**< Sampled Incrementer
							6 Register */
#define XAPM_SMC7_OFFSET		0x0270	/**< Sampled Metric Counter
							7 Register */
#define XAPM_SINC7_OFFSET		0x0274	/**< Sampled Incrementer
							7 Register */
#define XAPM_SMC8_OFFSET		0x0280	/**< Sampled Metric Counter
							8 Register */
#define XAPM_SINC8_OFFSET		0x0284	/**< Sampled Incrementer
							8 Register */
#define XAPM_SMC9_OFFSET		0x0290	/**< Sampled Metric Counter
							9 Register */
#define XAPM_SINC9_OFFSET		0x0294	/**< Sampled Incrementer
							9 Register */


#define XAPM_CTL_OFFSET		 	0x0300	/**< Control Register */

#define XAPM_FEC_OFFSET			0x0400	/**< Flag Enable
							Control Register */

#define XAPM_SWD_OFFSET			0x0404	/**< Software-written
							Data Register */

/* @} */

/**
 * @name AXI Monitor Sample Interval Control Register mask(s)
 * @{
 */

#define XAPM_SICR_MCNTR_RST_MASK	0x00000100 /**< Enable the Metric
							Counter Reset */
#define XAPM_SICR_LOAD_MASK		0x00000002 /**< Load the Sample Interval
							*  Register Value into the
							*  counter */
#define XAPM_SICR_ENABLE_MASK		0x00000001 /**< Enable the downcounter */

/*@}*/


/** @name Interrupt Status/Enable Register Bit Definitions and Masks
 *  @{
 */

#define XAPM_IXR_MC9_OVERFLOW_MASK	0x00001000	/**< Metric Counter 9
							  *  Overflow> */
#define XAPM_IXR_MC8_OVERFLOW_MASK	0x00000800	/**< Metric Counter 8
							  *  Overflow> */
#define XAPM_IXR_MC7_OVERFLOW_MASK   	0x00000400	/**< Metric Counter 7
							  *  Overflow> */
#define XAPM_IXR_MC6_OVERFLOW_MASK   	0x00000200	/**< Metric Counter 6
							  *  Overflow> */
#define XAPM_IXR_MC5_OVERFLOW_MASK   	0x00000100	/**< Metric Counter 5
							  *  Overflow> */
#define XAPM_IXR_MC4_OVERFLOW_MASK   	0x00000080	/**< Metric Counter 4
							  *  Overflow> */
#define XAPM_IXR_MC3_OVERFLOW_MASK   	0x00000040	/**< Metric Counter 3
							  *  Overflow> */
#define XAPM_IXR_MC2_OVERFLOW_MASK   	0x00000020	/**< Metric Counter 2
							  *  Overflow> */
#define XAPM_IXR_MC1_OVERFLOW_MASK   	0x00000010	/**< Metric Counter 1
							  *  Overflow> */
#define XAPM_IXR_MC0_OVERFLOW_MASK   	0x00000008	/**< Metric Counter 0
							  *  Overflow> */
#define XAPM_IXR_FIFO_FULL_MASK   	0x00000004	/**< Event Log FIFO
							  *  full> */
#define XAPM_IXR_SIC_OVERFLOW_MASK   	0x00000002	/**< Sample Interval
							  * Counter Overflow> */
#define XAPM_IXR_GCC_OVERFLOW_MASK	0x00000001	/**< Global Clock Counter
						          *  Overflow> */
#define XAPM_IXR_ALL_MASK		(XAPM_IXR_SIC_OVERFLOW_MASK | \
					XAPM_IXR_GCC_OVERFLOW_MASK |  \
					XAPM_IXR_FIFO_FULL_MASK | \
					XAPM_IXR_MC0_OVERFLOW_MASK | \
					XAPM_IXR_MC1_OVERFLOW_MASK | \
					XAPM_IXR_MC2_OVERFLOW_MASK | \
					XAPM_IXR_MC3_OVERFLOW_MASK | \
					XAPM_IXR_MC4_OVERFLOW_MASK | \
					XAPM_IXR_MC5_OVERFLOW_MASK | \
					XAPM_IXR_MC6_OVERFLOW_MASK | \
					XAPM_IXR_MC7_OVERFLOW_MASK | \
					XAPM_IXR_MC8_OVERFLOW_MASK | \
					XAPM_IXR_MC9_OVERFLOW_MASK)
/* @} */

/**
 * @name AXI Monitor Control Register mask(s)
 * @{
 */

#define XAPM_CR_FIFO_RESET_MASK		0x02000000	/**< FIFO Reset */
#define XAPM_CR_MUXSEL_MASK	    	0x01000000	/**< Mux Selector Mask */
#define XAPM_CR_GCC_RESET_MASK		0x00020000	/**< Global Clk
								Counter Reset */
#define XAPM_CR_GCC_ENABLE_MASK		0x00010000	/**< Global Clk
								Counter Enable */
#define XAPM_CR_EVENTLOG_ENABLE_MASK  	0x00000100	/**< Event Log Enable */
#define XAPM_CR_EXTERNAL_TRIGGER_MASK   0x00000002	/**< Enable External
								trigger  */
#define XAPM_CR_MCNTR_RESET_MASK   	0x00000002	/**< Metrics Counter
								Reset */
#define XAPM_CR_MCNTR_ENABLE_MASK  	0x00000001	/**< Metrics Counter
								Enable */
/*@}*/

#endif /* PERFMON_HW_H_ */
