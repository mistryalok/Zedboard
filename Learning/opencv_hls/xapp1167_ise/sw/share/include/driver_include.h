/******************************************************************************
 *
 * (c) Copyright 2013 Xilinx, Inc. All rights reserved.
 *
 * This file contains confidential and proprietary information of Xilinx, Inc.
 * and is protected under U.S. and international copyright and other
 * intellectual property laws.
 *
 * DISCLAIMER:
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
 * CRITICAL APPLICATIONS:
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
* @file driver_include.h
*
* Header providing IOCTLs and structures required by various kernel driver.
*
******************************************************************************/


#ifndef DRIVER_INCLUDE_H_
#define DRIVER_INCLUDE_H_

//TODO: split the file into 2 and use same with the driver as well.

///////////////// XVDMA Support //////////

#define VDMA_ID_TPG		0		// vdma id as per the dts file
#define VDMA_ID_SOBEL	1

//IOCTL(s)
#define XVDMA_IOCTL_BASE	'W'
/* XVDMA_GET_NUM_DEVICES:
-- Obtains the number of VDMA probed and available for use.
-- Argument: Address of unsigned int [unsigned int *].
	- This gets filled up with the number of VDMA when the call returns.
*/
#define XVDMA_GET_NUM_DEVICES	_IO(XVDMA_IOCTL_BASE, 0)

/* XVDMA_GET_DEV_INFO:
-- Gives device information like channel number, for the given VDMA ID.
-- Argument: Address of struct xvdma_dev [struct xvdma_dev *].
	- Before calling, the device_id field of this structure should be filled with VDMA
	ID. On return the rest of the structure is filled by the driver.
*/
#define XVDMA_GET_DEV_INFO		_IO(XVDMA_IOCTL_BASE, 1)

/* XVDMA_DEVICE_CONTROL:
-- Sets the VDMA channel configuration.
-- Argument: Address of struct xvdma_chan_cfg [struct xvdma_chan_cfg *].
	- Before calling, this structure should be filled with required channel
	configurations.
	- To reset VDMA, only fill chan = <channel id> and config.reset = 1
	fields of structure.
*/
#define XVDMA_DEVICE_CONTROL	_IO(XVDMA_IOCTL_BASE, 2)

/* XVDMA_PREP_BUF:
-- Sets the buffer configurations.
-- Argument: Address of struct xvdma_buf_info [struct xvdma_buf_info *].
	- Before calling, this structure should be filled with required buffer configurations.
*/
#define XVDMA_PREP_BUF			_IO(XVDMA_IOCTL_BASE, 3)

/* XVDMA_START_TRANSFER:
-- Triggers the VDMA transfer.
-- Argument: Address of struct xvdma_transfer [struct xvdma_transfer *].
	- Before calling, this structure should be filled. The structure specifies the channel ID
	and whether the call is synchronous or asynchronous.
*/
#define XVDMA_START_TRANSFER	_IO(XVDMA_IOCTL_BASE, 4)

/* XVDMA_STOP_TRANSFER:
-- This call stops the VDMA.
-- Argument: Address of the unsigned int variable [unsigned int *].
	- Before calling, this int variable should be filled with the channel ID.
*/
#define XVDMA_STOP_TRANSFER		_IO(XVDMA_IOCTL_BASE, 5)

/*
 * enum to define the direction of the dma channel
 */

 enum dma_transfer_direction {
 	DMA_MEM_TO_MEM,
 	DMA_MEM_TO_DEV,
 	DMA_DEV_TO_MEM,
 	DMA_DEV_TO_DEV,
 	DMA_TRANS_NONE,
 };
 /* DMA Device configuration structure
  *
  * Xilinx CDMA and Xilinx DMA only use interrupt coalescing and delay counter
  * settings.
  *
  * If used to start/stop parking mode for Xilinx VDMA, vsize must be -1
  * If used to set interrupt coalescing and delay counter only for
  * Xilinx VDMA, hsize must be -1 */
 struct xilinx_dma_config {
 	enum dma_transfer_direction direction; /* Channel direction */
 	int vsize;                         /* Vertical size */
 	int hsize;                         /* Horizontal size */
 	int stride;                        /* Stride */
 	int frm_dly;                       /* Frame delay */
 	int gen_lock;                      /* Whether in gen-lock mode */
 	int master;                        /* Master that it syncs to */
 	int frm_cnt_en;                    /* Enable frame count enable */
 	int park;                          /* Whether wants to park */
 	int park_frm;                      /* Frame to park on */
 	int coalesc;                       /* Interrupt coalescing threshold */
 	int delay;                         /* Delay counter */
 	int disable_intr;                  /* Whether use interrupts */
 	int reset;			   /* Reset Channel */
 	int ext_fsync;			   /* External Frame Sync */
 };

/* structure to get the channel info for the given vdma
 *
 */
struct xvdma_dev
{
        unsigned int tx_chan;			/* tx channel id, (address of the channel) */
        unsigned int rx_chan;			/* tx channel id, (address of the channel) */
        unsigned int device_id;			/* device id as per the decive tree*/
};
/*
 * structure describing the dma configuration.
 */
struct xvdma_chan_cfg {
        struct xilinx_dma_config config;
        unsigned int chan;
};

/*
 * structure describing the buffer properties
 */
struct xvdma_buf_info {
	unsigned int chan;				/* channel id returned in xvdma_dev through get info */
	unsigned int device_id;
	unsigned int direction;			/* direction of the channel, with which this buffer will be associated */
	unsigned int shared_buffer;		/* Whether the given buffer will be shared with other vdma */
	unsigned int mem_type;			/* memory type is read / write -- value will be same as direction */
	unsigned int fixed_buffer;		/* Fixed buffer indicate that the user is responsible for the buffer allocation, else driver does it*/
	unsigned int buf_size;			/* Size of each buffer */
	unsigned int addr_base;			/* Base address of the first buffer */
	unsigned int frm_cnt;			/* total number of buffers to be configure */
	unsigned int callback;			/* This is not a callback fn; its just indication for driver to register its internal callback or not */
};

struct xvdma_transfer {
	unsigned int chan;		/* channel id */
	unsigned int wait;		/* if 1, then the start call is synchronous, if 0, then teh start call is asynchronous */
};

//// Filter Support //////////////

#define XFILTER_IOCTL_BASE					'S'

//IOCTL calls for the filter

/* XFILTER_INIT:
-- Initialize the resolution and other parameters for the filter.
-- Argument: Address of struct xFilterConfig [struct xFilterConfig *]
	- This has to be filled with resolution and filter mode
*/
#define XFILTER_INIT						_IO(XFILTER_IOCTL_BASE, 0)

/* XFILTER_START:
-- Starts the filter engine:
	- In continuous mode : this call is automatically made on ap done interrupt
	- In On demand mode : this call starts the filter engine for one frame
-- Argument : NULL
*/
#define XFILTER_START						_IO(XFILTER_IOCTL_BASE, 1)

/* XFILTER_STOP:
-- Stops the filter engine, when running in  "On demand" mode; No effect for continuos mode.
	- After this call, it is mandatory to have XFILTER_INIT call before doing XFILTER_START
-- Argument : NULL
*/
#define XFILTER_STOP						_IO(XFILTER_IOCTL_BASE, 2)

/* XFILTER_WAIT_FOR_COMPLETION:
-- Waits for completion of the current processing of the frame and returns than after.
-- Argument : NULL
*/
#define XFILTER_WAIT_FOR_COMPLETION			_IO(XFILTER_IOCTL_BASE, 3)

enum filter_mode
{
	E_xFilterContinousRunning,	// runs continuously. Need to issue stop to stop the execution.
	E_xFilterOnDemandRunning		// runs on demand, each start call corresponds to single frame transfer. Automatically stops after each frame transfer.
};

/* Structure describing fitler configuration */

struct xFilterConfig
{
	unsigned int height;		// Active lines of the video image
	unsigned int width;			// Active pixels per line
	enum filter_mode mode;		// mode of execution for the start.
};


#endif /* DRIVER_INCLUDE_H_ */
