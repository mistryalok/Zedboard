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
 *
 * @file hwi.h
 *
 * Header file for the various macros and function declaration used in
 * the hw controlling and interface.
 *
*
*******************************************************************************/

#ifndef HWI_H_
#define HWI_H_

#ifdef __cplusplus
extern "C"
{
#endif

//// FLAGS ///
//#define VDMA_MM2S_HACK

#define STATE_EXIT -1

#define SOBEL_OFF 	0
#define SOBEL_HW	1
#define SOBEL_SW	2

#define SW_SOBEL_STATE_OFF			0
#define SW_SOBEL_STATE_ON			1


#define MAX_BUFFER	3



#define LAYER_ID_0					0
#define LAYER_ID_1					1
#define LAYER_ID_2					2
#define MAX_LAYER					3

#define GUI_LAYER					LAYER_ID_0
#define DISPLAY_LAYER				LAYER_ID_1
#define SOBEL_LAYER 				LAYER_ID_2

#define TEST_PATTERN     0x000011AA

//Sobel filter
#define DEFAULT_MIN_SOBEL_SENSITIVITY 100
#define DEFAULT_MAX_SOBEL_SENSITIVITY 200
#define DEFAULT_SOBEL_INVERT 0
typedef enum
{
	TPG_INTERFERENCE_E,
	TPG_VIDEO_E,
        TPG_FFMPEG_E
} tpgModeE;

typedef enum
{
	SOBEL_OFF_E,
	SOBEL_ON_SW_OPENCV_E,
	SOBEL_ON_SW_NO_NEON_E,
	SOBEL_ON_HW_E
} sobelModeE;

typedef struct
{
	int isobelInvert;
	int imaxsobelSensitivity;
	int iminsobelSensitivity;

} sobelFilter;

typedef enum
{

	SOBEL_QT,
	SOBEL_CMD

} applicationModeE;

void SelectTPG(int SobelStatus);
void ChangeSobelMode(void);
void resetStop_VDMA_ALL(void);

void *thread_sw_sync(void*);
void *thread_perf_counter(void* temp);
int getInput(void);
void configureVDMA(int vdma_id, int vdma_direction, unsigned long base_address);
void startVDMA(int vdma_id, int vdma_direction);

int hwi_init(int screenWidth, int screenHeight, int winWidth, int winHeight);
int hwi_initCvc(applicationModeE);
int hwi_setHmiVisibility(int percentage1000);
int hwi_setWindowHeight(int height);
int hwi_setHmiWindowParam(int xoffset,int yoffset,int width,int height);
int hwi_deinitCvc(applicationModeE);
int hwi_initTpgVdma(void);
int hwi_deinitTpgVdma(void);
int hwi_setModes(tpgModeE input_mode, sobelModeE filter_mode); 
//int hwi_setTpgMode(tpgModeE mode);
//int hwi_setSobelMode(sobelModeE mode);
unsigned long hwi_getPerfMonitor(int id);
int hwi_getVideoInputState(void);

void hwi_setTransparency(int value);

//For Performance monitor IP.
int hwi_initPerfMon();

int hwi_setResolution(int,int);
int hwi_getResolution(int *,int*);

//Added to check if resolution is supported by TRD.
int hwi_isresolutionSupported(int screenWidth, int screenHeight );

//To perform un-initialization.
int hwi_deinit();

#ifdef __cplusplus
}
#endif

#endif /* HWI_H_ */
