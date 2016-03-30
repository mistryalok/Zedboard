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
* @file cvc.c
*
*******************************************************************************/


#include"cvc.h"
#include"common.h"

static unsigned int save_criticality = 0;




int set_gui_layer_mode(int mode)
{


	int fbfd =0;
	if(mode)
	{

		//Set the DDR Criticality
		set_ddr_criticality();

		fbfd= open("/dev/fb0", O_RDWR);
		if(fbfd<0)
		{

			perror("Error opening FrameBuffer device");
			close(fbfd);
			return errno;
		}



		struct fb_var_screeninfo  fbvarinfo;

		memset((void *)&fbvarinfo,0,sizeof(struct fb_var_screeninfo));

		if (ioctl(fbfd, FBIOGET_VSCREENINFO, &fbvarinfo))
		{
			perror("IOCTL Error :: FBIOGET_VSCREENINFO ");
			close(fbfd);
			return errno;
		}
		else
		{

			fbvarinfo.xoffset=0;
			fbvarinfo.yoffset=0;
			struct xylonfb_layer_pos_size layer_pos_sz;
			memset((void *)&layer_pos_sz,0,sizeof(struct xylonfb_layer_pos_size));

			//Reset the Display PAN Parameter.
			if (ioctl(fbfd, FBIOPAN_DISPLAY,&fbvarinfo))
			{
				perror("IOCTL Error ::FBIOPAN_DISPLAY ");
				close(fbfd);
				return errno;
			}


			//Set Default GUI LAYER alpha to MAX (0xFF)
			set_layer_alpha(GUI_LAYER,0xFF);

		}


		close(fbfd);

	}
	else
	{


		reset_ddr_criticality();
	}

	return EXIT_SUCCESS;
}


int set_disp_layer_mode(int mode)
{




	if(mode)
	{
		//Clear the Layer content.

		int fbfd = open("/dev/fb1", O_RDWR);
		if(fbfd<0)
		{

			perror("Error opening FrameBuffer device");
			close(fbfd);
			return errno;
		}

		//Query the Layer Base Address and length.
		struct fb_fix_screeninfo screeninfo;
		if (ioctl(fbfd, FBIOGET_FSCREENINFO,&screeninfo))
			perror("IOCTL  Error ::FBIOGET_FSCREENINFO ");

		unsigned char *fbptr=(unsigned char *)mmap(0, screeninfo.smem_len,
				PROT_READ | PROT_WRITE, MAP_SHARED, fbfd, 0);



		//Clear the memory content.
		memset(fbptr,0,screeninfo.smem_len);
		munmap(fbptr,screeninfo.smem_len);


		//Enable Layer 1
		enable_cvc_layer(DISPLAY_LAYER);


		//Set layer 1 DISPLAY_LAYER alpha .
		set_layer_alpha(DISPLAY_LAYER,0xFF);

	}
	else
	{

		//Disable Layer1
		disable_cvc_layer(DISPLAY_LAYER);
	}


	return EXIT_SUCCESS;
}




// Informs CVC for software handled buffer switching.
// Layer 1 has 3 configured buffer and CVC is
// informed about the buffer id to be displayed.

int set_cvc_frm_id(int layer_id, int frm_id)
{



	//FrameBuffer Node
	char fb_dev[10];
	sprintf(fb_dev, "/dev/fb%d", layer_id);


	/* Open the file for reading and writing */
	int fbfd = open(fb_dev, O_RDWR);
	if (fbfd < 0)
	{

		perror("Error opening FrameBuffer device");
		close(fbfd);
		return errno;

	}

	//Populate buffer for Frame 1

	if (ioctl(fbfd, XYLONFB_SET_LAYER_BUFFER,&frm_id))
	{
		perror("IOCTL  Error :: XYLONFB_SET_LAYER_BUFFER ");
		close(fbfd);
		return errno;
	}

	close(fbfd);
	return EXIT_SUCCESS;
}


//Disable CVC layer .
int disable_cvc_layer(int layer_id)
{

	char fb_dev[10];

	struct xylonfb_hw_access hw_access;
	sprintf(fb_dev, "/dev/fb%d", layer_id);


	/* Open the file for reading and writing */
	int fbfd = open(fb_dev, O_RDWR);
	if (fbfd < 0)
	{
		printf("Error opening FrameBuffer device \n");
		perror(NULL);

	}

	hw_access.offset =LOGICVC_BASE_LAYER_CTRL_REG_ADDR + (layer_id * 0x80);
	if (ioctl(fbfd, XYLONFB_READ_HW_REG , &hw_access))
	{
		perror("IOCTL  Error ::XYLONFB_READ_HW_REG ");
		close(fbfd);
		return errno;

	}
	else
	{

		hw_access.value &= ~0x01;
		if (ioctl(fbfd, XYLONFB_WRITE_HW_REG, &hw_access))
		{
			perror("IOCTL  Error :: XYLONFB_WRITE_HW_REG ");
			close(fbfd);
			return errno;
		}
	}

	close(fbfd);

	return EXIT_SUCCESS;
}



//Enable CVC layer .
int enable_cvc_layer(int layer_id)
{

	char fb_dev[10];

	struct xylonfb_hw_access hw_access;
	sprintf(fb_dev, "/dev/fb%d", layer_id);


	/* Open the file for reading and writing */
	int fbfd = open(fb_dev, O_RDWR);
	if (fbfd < 0)
	{
		printf("Error opening FrameBuffer device \n");
		perror(NULL);

	}

	hw_access.offset =LOGICVC_BASE_LAYER_CTRL_REG_ADDR + (layer_id * 0x80);
	if (ioctl(fbfd, XYLONFB_READ_HW_REG , &hw_access))
	{
		perror("IOCTL  Error ::XYLONFB_READ_HW_REG ");
		close(fbfd);
		return errno;

	}
	else
	{
		hw_access.value |= 0x01;
		if (ioctl(fbfd, XYLONFB_WRITE_HW_REG, &hw_access))
		{
			perror("IOCTL  Error :: XYLONFB_WRITE_HW_REG ");
			close(fbfd);
			return errno;
		}
	}

	close(fbfd);

	return EXIT_SUCCESS;
}




int set_ddr_criticality()
{


	int fd=open("/dev/mem",O_RDWR);

	if(fd<0)
	{

		perror("Error opening Memory device");
		close(fd);
		return errno;
	}

	// Make write less critical
	unsigned char* ddr_priority_base = (unsigned char*)mmap(NULL, 0x100, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)0xF8006000);
	if(ddr_priority_base == MAP_FAILED)
	{
		perror("Mapping memory for absolute memory access failed.\n");
		return EXIT_FAILURE;
	}
	save_criticality = REG_READ(ddr_priority_base,0x10);
	REG_WRITE(ddr_priority_base, 0x10, ((save_criticality & ~0XF) | 0x8));

	munmap((void *)ddr_priority_base, 0x100);
	close(fd);

	return EXIT_SUCCESS;

}



int reset_ddr_criticality()
{

	int fd=open("/dev/mem",O_RDWR);

	if(fd<0)
	{

		perror("Error opening Memory device");
		close(fd);
		return errno;
	}

	// Make write critical as normal
	unsigned char* ddr_priority_base = (unsigned char*)mmap(NULL, 0x100, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)0xF8006000);
	if(ddr_priority_base == MAP_FAILED)
	{
		perror("Mapping memory for absolute memory access failed.\n");
		return EXIT_FAILURE;
	}
	REG_WRITE(ddr_priority_base, 0x10, save_criticality);

	munmap((void *)ddr_priority_base, 0x100);
	close(fd);

	return EXIT_SUCCESS;
}


//Sets the CVC circular mode.
//Mode-0 : Stops CVC external buffer switching.
//Mode-1 : Starts CVC external buffer switching.
int set_cvc_circular_mode(int layer_id,int mode)
{
	char fb_dev[15];
	sprintf(fb_dev, "/dev/fb%d", layer_id);


	/* Open the file for reading and writing */
	int fbfd = open(fb_dev, O_RDWR);
	if (fbfd < 0)
	{
		perror("Error opening FrameBuffer device");
		close(fbfd);
		return errno;

	}


	if (ioctl(fbfd, XYLONFB_LAYER_EXT_BUFF_SWITCH,&mode))
	{
		perror("IOCTL  Error :: XYLONFB_LAYER_EXT_BUFF_SWITCH");
		close(fbfd);
		return errno;
	}

	close(fbfd);

	return EXIT_SUCCESS;
}




//Set the alpha value for configured layer.
//Alpha Range (0-0xFF)
int set_layer_alpha(int layer_id, int alpha)
{




	char fb_dev[15];
	sprintf(fb_dev, "/dev/fb%d", layer_id);


	/* Open the file for reading and writing */
	int fbfd = open(fb_dev, O_RDWR);
	if (fbfd < 0)
	{
		perror("Error opening FrameBuffer device");
		close(fbfd);
		return errno;

	}

	if (ioctl(fbfd, XYLONFB_SET_LAYER_ALPHA,&alpha))
		perror("IOCTL  Error ::XYLONFB_SET_LAYER_ALPHA ");

	close(fbfd);

	return EXIT_SUCCESS;
}


//Set the Layer window width and height- (Window refer to GUI)
//Set offsets for x,y to value where GUI need to be displayed.
//Assuming (0,0) is top left screen corner .
int set_cvc_hmi_layer_parameters(int xoffset,int yoffset,int width ,int height)
{
	struct xylonfb_layer_pos_size layer_pos_sz;
	memset((void *)&layer_pos_sz,0,sizeof(struct xylonfb_layer_pos_size));


	int fbfd = open("/dev/fb0", O_RDWR);
	if (fbfd < 0)
	{
		perror("Error opening FrameBuffer device");
		close(fbfd);
		return errno;

	}


	//Query Layer size parameters.
	if (ioctl(fbfd, XYLONFB_GET_LAYER_SIZE_POS,&layer_pos_sz))
		perror("IOCTL  Error ::XYLONFB_GET_LAYER_SIZE_POS ");


	layer_pos_sz.x=xoffset;
	layer_pos_sz.y=yoffset;
	layer_pos_sz.width=width;
	layer_pos_sz.height=height;

	//Set the layer size parameters.
	if (ioctl(fbfd, XYLONFB_SET_LAYER_SIZE_POS,&layer_pos_sz))
		perror("IOCTL  Error ::XYLONFB_GET_LAYER_SIZE_POS ");

	close(fbfd);
	return EXIT_SUCCESS;
}

int getFBScreenInfo(struct fb_fix_screeninfo *screeninfo)
{



	//Id field of fb_fix_screeninfo is used a identifier for FrameBuffer layer.

	/* Open the file for reading and writing */
	int fbfd = open(screeninfo->id, O_RDWR);
	if (fbfd < 0)
	{
		perror("Error opening FrameBuffer device");
		close(fbfd);
		return errno;

	}

	if (ioctl(fbfd, FBIOGET_FSCREENINFO,screeninfo))
		perror("IOCTL  Error ::FBIOGET_FSCREENINFO ");

	close(fbfd);

	return EXIT_SUCCESS;

}
