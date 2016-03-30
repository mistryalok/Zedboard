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
* @file fru_handler.h
*
*******************************************************************************/
#include "fru_handler.h"
unsigned char eeprom_data[FMC_EEPROM_SIZE+100];


int fmc_status()
{
	//  read data to file

	FILE *fp_ptr = NULL;
	struct FRU_DATA *fru_data = NULL;
	int istatus=EXIT_FAILURE;

	fp_ptr = fopen(FMC_EEPROM_DEVNODE, "r");
	if (fp_ptr== NULL) {

		printf("fmc_status:: Error Opening EEPROM Device node \n");
		fclose(fp_ptr);
		return EXIT_FAILURE;
	}
	fread(eeprom_data, FMC_EEPROM_SIZE, 1, fp_ptr);
	fclose(fp_ptr);

	//Check Fru Version and board area header
	if (eeprom_data[0]!= 0x01 || (!eeprom_data[3]))
	{
		return EXIT_FAILURE;
	}

	fru_data = parse_FRU(eeprom_data);

	//Compare for Imageon FMC
	struct BOARD_INFO *fru_board=NULL;
	fru_board=fru_data->Board_Area;

	if(fru_board==NULL)
		return EXIT_FAILURE;

	//Compare the product name.
	if (fru_board->product_name && (fru_board->product_name[0] & 0x3F))
	{

		//If product name are matching ,make sure that FMC card is present.
		if(!strcmp(FMC_PRODUCT_NAME,&fru_board->product_name[1]))
		{
			istatus= EXIT_SUCCESS;
		}

	}
	//Return failure if product name doesn't matches.
	return istatus;
}

void * x_calloc (size_t num, size_t size)
{
	void *v_ptr;

	v_ptr = calloc(num, size);
	if (v_ptr == NULL)
		printf_err("x_calloc :: calloc error \n");

	return v_ptr;
}

void printf_err (const char * fmt, ...)
{
	va_list args;
	va_start(args,fmt);
	vfprintf(stderr,fmt,args);
	va_end(args);
	exit(EXIT_FAILURE);
}

void printf_warn (const char * fmt, ...)
{
	//Dummy function.
	//May be implemented if required
}

void printf_info (const char * fmt, ...)
{
	//Dummy function.
	//May be implemented if required;
}






