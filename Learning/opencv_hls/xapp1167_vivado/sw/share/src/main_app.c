/******************************************************************************
 *
 * (c) Copyright 2012 Xilinx, Inc. All rights reserved.
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
 * @file main_app.c
 *
 * Implementation of controlling application.
 *
 ******************************************************************************/

#include <stdio.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <pthread.h>
#include <linux/fb.h>
#include <string.h>
#include <stdlib.h>
#include <getopt.h>

//User Includes.
#include "hwi.h"


#define MAIN_APP_EXIT         0
#define TPG_SOBEL_OFF         1
#define TPG_SOBEL_SW_OPENCV   2
#define TPG_SOBEL_SW          3
#define TPG_SOBEL_HW          4
#define EXT_SOBEL_OFF         5
#define EXT_SOBEL_SW_OPENCV   6
#define EXT_SOBEL_SW          7
#define EXT_SOBEL_HW          8
#define DVF_SOBEL_OFF         9
#define DVF_SOBEL_SW_OPENCV  10
#define DVF_SOBEL_SW         11
#define DVF_SOBEL_HW         12

#define DEFAULT_XRES 1920
#define DEFAULT_YRES 1080

void usage()
{
	printf("Application Usage \n");
	printf("./video_library_cmd [for 1080p] \n");
	exit(EXIT_FAILURE);

}

int main(int argc, char **argv)
{
	int choice = 0;

	tpgModeE tpgMode= (tpgModeE)-1;
	sobelModeE sobelMode = (sobelModeE)-1;
	volatile int gLiveVideoOn=0;
	int ihorzRes=DEFAULT_XRES,iverRes=DEFAULT_YRES;
	int initialxRes=0,initialyRes=0;
	int c;


#ifdef DEBUG_CMD_LINE_PARAM
	int i=0;
	printf("Command Line Parameters ");
	for(i;i<argc;i++)
		printf("%s  ",argv[i]);
	printf("\n");
#endif
	//Command Line processing using getopt_long_only

	while (1)
	{
		static struct option long_options[] =
		{
				/* These options set a flag. */
				{"res",    required_argument, NULL, 'r'},
				{0, 0, 0, 0},
		};
		/* getopt_long stores the option index here. */
		int option_index = 0;


		//Suppress getopt errors.
		opterr=0;


		c = getopt_long_only (argc, argv, "",
				long_options, &option_index);



		/* Detect the end of the options. */
		if (c == -1)
			break;

		switch (c)
		{
		case 0:
			/* If this option set a flag, do nothing else now. */
			if (long_options[option_index].flag != 0)
				break;
			printf ("option %s", long_options[option_index].name);
			if (optarg)
				printf (" with arg %s", optarg);
			printf ("\n");
			break;

		case 'r':

			if(optarg!=NULL)
			{

#ifdef DEBUG_CMD_LINE_PARAM
				printf("Opt-args :: %s \n",optarg);
#endif
				sscanf(optarg,"%dx%d",&ihorzRes,&iverRes);

			}
			else
				usage();
			break;

		case '?':
			/* getopt_long already printed an error message. */

			usage();
			break;

		default:
			usage();
			break;

		}
	}

#ifdef DEBUG_CMD_LINE_PARAM
	//For Debugging printing input resolution.
	printf("sobel_cmd :: Input Resolution %d %d \n",ihorzRes,iverRes);
#endif


	//Query current resolution . Used for restoring original resolution.
	hwi_getResolution(&initialxRes,&initialyRes);



	//Check whether input resolution is supported by TRD.

	int iret=hwi_isresolutionSupported(ihorzRes,iverRes);
	if(iret!=EXIT_SUCCESS)
	{
		printf("TRD :: Input resolution currently not supported \n");
		printf("TRD :: Supported Resolutions are [1920x1080],[1280x720] \n");
		exit(EXIT_FAILURE);
	}


	//Set the current resolution to the input resolution.

	iret=hwi_setResolution(ihorzRes,iverRes);

	if(iret!=EXIT_SUCCESS)
	{
		printf("TRD :: Check if monitor supports input resolution ..");
		exit(EXIT_FAILURE);
	}


	//Perform hw intialization.
	int ret=hwi_init(ihorzRes,iverRes,ihorzRes,iverRes);

	//Added check for hw_init successful.
	if(ret!=EXIT_SUCCESS)
	{
		printf("TRD :: hw_int failed  \n");
		exit(EXIT_FAILURE);
	}

	//Initialize Logic CVC display controller.
	hwi_initCvc(SOBEL_CMD);

	hwi_initTpgVdma();

        hwi_initPerfMon();

	do
	{
		printf("\n-------------  Video Library Demo Main Menu:  --------------\n\n");
		printf("1 -> TPG Pattern with No Filter\n");
		printf("2 -> TPG Pattern with Software (OpenCV) Filter\n");
		printf("3 -> TPG Pattern with Software (HLS) Filter\n");
		printf("4 -> TPG Pattern with Hardware Filter\n");
		printf("5 -> Live Video with No Filter\n");
		printf("6 -> Live Video with Software (OpenCV) Filter\n");
		printf("7 -> Live Video with Software (HLS) Filter\n");
		printf("8 -> Live Video with Hardware Filter\n");
		printf("9 -> Decoded Video File with No Filter\n");
		printf("a -> Decoded Video File with Software (OpenCV) Filter\n");
		printf("b -> Decoded Video File with Software (HLS) Filter\n");
		printf("c -> Decoded Video File with Hardware Filter\n");
		printf("0 -> Exit\n\n");

		printf("\nEnter your choice :");
		choice = getInput();

		switch(choice)
		{
		case MAIN_APP_EXIT:	// break;

			//CVC de-init moved up.
			hwi_deinitCvc(SOBEL_CMD);
			hwi_deinitTpgVdma();
			hwi_deinit();
	                tpgMode= (tpgModeE)-1;
                        sobelMode = (sobelModeE)-1;
			//Restore original resolution.
			ret=hwi_setResolution(initialxRes,initialyRes);
			if(ret!=EXIT_SUCCESS)
			{
				printf("TRD :: Restore Original Resolution Failed !!\n");

			}
			printf("\n <== BYE BYE ==>\n");
			break;

		case TPG_SOBEL_OFF: // Select TPG Pattern
		{
			if (tpgMode != TPG_INTERFERENCE_E || sobelMode != SOBEL_OFF_E)
			{
				hwi_setModes(TPG_INTERFERENCE_E, SOBEL_OFF_E);
				tpgMode = TPG_INTERFERENCE_E;
                                sobelMode = SOBEL_OFF_E;
			}
			break;
		}
		case TPG_SOBEL_SW_OPENCV:
		{
			if (tpgMode != TPG_INTERFERENCE_E || sobelMode != SOBEL_ON_SW_OPENCV_E)
			{
				hwi_setModes(TPG_INTERFERENCE_E, SOBEL_ON_SW_OPENCV_E);
				tpgMode = TPG_INTERFERENCE_E;
                                sobelMode = SOBEL_ON_SW_OPENCV_E;
			}
			break;
		}
		case TPG_SOBEL_SW:
		{
			if (tpgMode != TPG_INTERFERENCE_E || sobelMode != SOBEL_ON_SW_NO_NEON_E)
			{
				hwi_setModes(TPG_INTERFERENCE_E, SOBEL_ON_SW_NO_NEON_E);
				tpgMode = TPG_INTERFERENCE_E;
                                sobelMode = SOBEL_ON_SW_NO_NEON_E;
			}
			break;
		}
		case TPG_SOBEL_HW:
		{
			if (tpgMode != TPG_INTERFERENCE_E || sobelMode != SOBEL_ON_HW_E)
			{
				hwi_setModes(TPG_INTERFERENCE_E, SOBEL_ON_HW_E);
				tpgMode = TPG_INTERFERENCE_E;
                                sobelMode = SOBEL_ON_HW_E;
			}
			break;
		}

		case EXT_SOBEL_OFF: // Live video
		{
			if (tpgMode != TPG_VIDEO_E || sobelMode != SOBEL_OFF_E)
			{
				hwi_setModes(TPG_VIDEO_E, SOBEL_OFF_E);
				tpgMode = TPG_VIDEO_E;
                                sobelMode = SOBEL_OFF_E;
			}
                        if (hwi_getVideoInputState() == 0)
                        {
				tpgMode = TPG_INTERFERENCE_E;
                        }
			break;
		}
		case EXT_SOBEL_SW_OPENCV:
		{
			if (tpgMode != TPG_VIDEO_E || sobelMode != SOBEL_ON_SW_OPENCV_E)
			{
				hwi_setModes(TPG_VIDEO_E, SOBEL_ON_SW_OPENCV_E);
				tpgMode = TPG_VIDEO_E;
                                sobelMode = SOBEL_ON_SW_OPENCV_E;
			}
                        if (hwi_getVideoInputState() == 0)
                        {
				tpgMode = TPG_INTERFERENCE_E;
                        }
			break;
		}
		case EXT_SOBEL_SW:
		{
			if (tpgMode != TPG_VIDEO_E || sobelMode != SOBEL_ON_SW_NO_NEON_E)
			{
				hwi_setModes(TPG_VIDEO_E, SOBEL_ON_SW_NO_NEON_E);
				tpgMode = TPG_VIDEO_E;
                                sobelMode = SOBEL_ON_SW_NO_NEON_E;
			}
                        if (hwi_getVideoInputState() == 0)
                        {
				tpgMode = TPG_INTERFERENCE_E;
                        }
			break;
		}
		case EXT_SOBEL_HW:
		{
			if (tpgMode != TPG_VIDEO_E || sobelMode != SOBEL_ON_HW_E)
			{
				hwi_setModes(TPG_VIDEO_E, SOBEL_ON_HW_E);
				tpgMode = TPG_VIDEO_E;
                                sobelMode = SOBEL_ON_HW_E;
			}
                        if (hwi_getVideoInputState() == 0)
                        {
				tpgMode = TPG_INTERFERENCE_E;
                        }
			break;
		}

		case DVF_SOBEL_OFF: // Select TPG Pattern
		{
			if (tpgMode != TPG_FFMPEG_E || sobelMode != SOBEL_OFF_E)
			{
				hwi_setModes(TPG_FFMPEG_E, SOBEL_OFF_E);
				tpgMode = TPG_FFMPEG_E;
                                sobelMode = SOBEL_OFF_E;
			}
			break;
		}
		case DVF_SOBEL_SW_OPENCV:
		{
			if (tpgMode != TPG_FFMPEG_E || sobelMode != SOBEL_ON_SW_OPENCV_E)
			{
				hwi_setModes(TPG_FFMPEG_E, SOBEL_ON_SW_OPENCV_E);
				tpgMode = TPG_FFMPEG_E;
                                sobelMode = SOBEL_ON_SW_OPENCV_E;
			}
			break;
		}
		case DVF_SOBEL_SW:
		{
			if (tpgMode != TPG_FFMPEG_E || sobelMode != SOBEL_ON_SW_NO_NEON_E)
			{
				hwi_setModes(TPG_FFMPEG_E, SOBEL_ON_SW_NO_NEON_E);
				tpgMode = TPG_FFMPEG_E;
                                sobelMode = SOBEL_ON_SW_NO_NEON_E;
			}
			break;
		}
		case DVF_SOBEL_HW:
		{
			if (tpgMode != TPG_FFMPEG_E || sobelMode != SOBEL_ON_HW_E)
			{
				hwi_setModes(TPG_FFMPEG_E, SOBEL_ON_HW_E);
				tpgMode = TPG_FFMPEG_E;
                                sobelMode = SOBEL_ON_HW_E;
			}
			break;
		}

		default:
			printf("\n\n ********* Invalid input, Please try Again ***********\n");
			break;
		}
//		if (choice <=8 && choice > 0)
//			printf("\n\n <== Mode: %s / SOBEL MODE : %s ==>\n",(gLiveVideoOn)?"Live Video":"TPG Pattern",
//					(choice == 1 || choice ==5)?"OFF":((choice == 4 || choice ==8)?"HW":"SW"));
	}while(choice);

	return EXIT_SUCCESS;
}



int getInput(void)
{
	char ch;
	int ret = -1;
	ch = getchar();

	if (ch >= '0' && ch <= '9')
	{
	    ret = ch - '0';
	} else if (ch >= 'a' && ch <= 'c') {
            ret = ch - 'a' + 10;
        }

	while ((ch = getchar()) != '\n' && ch != EOF);
	return ret;
}

