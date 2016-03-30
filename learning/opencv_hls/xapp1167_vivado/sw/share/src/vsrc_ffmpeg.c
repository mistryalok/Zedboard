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
* @file vsrc_ffmpeg.c
*
******************************************************************************/

#include <stdio.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <string.h>
#include <pthread.h>

#include "vsrc_ffmpeg.h"

#define PIXEL_FORMAT  AV_PIX_FMT_RGB32

static AVFormatContext *pFormatCtx;
static AVCodecContext  *pCodecCtx;
static AVCodec         *pCodec;
static AVFrame         *pFrame; 
static AVFrame         *pFrameRGB;
static struct SwsContext      *img_convert_ctx;
static uint8_t         *buffer;
static int videoStream;
static char tempfilename[256];


static void SaveFrame(AVFrame *pFrame, int width, int height, unsigned char* fb_addr) {
    int  y;
    int stride = pFrame->linesize[0];
  
    // Write pixel data
    for(y=0; y<height; y++) {
        memcpy(fb_addr+y*stride, pFrame->data[0]+y*stride, stride);
    }
}

static int ffmpeg_reinit() {
    return ffmpeg_init(tempfilename);
}

int ffmpeg_init(char* filename) {
    int i, numBytes;

    sprintf(tempfilename, "%s", filename);
    // Register all formats and codecs
    av_register_all();
    pFormatCtx = avformat_alloc_context();
    
    // Open video file
    if(avformat_open_input(&pFormatCtx, filename, NULL, NULL)!=0) {
        printf("\n Incorrect input: open video file (%s) failed.\n Need video file \"input_video\" on SD card.\n Turning on TPG input.\n", filename);
        return -1; // Couldn't open file
    }
  
    // Retrieve stream information
    if(avformat_find_stream_info(pFormatCtx, NULL)<0)
        return -1; // Couldn't find stream information
  
    // Dump information about file onto standard error
    //av_dump_format(pFormatCtx, 0, filename, 0);
    
    // Find the first video stream
    videoStream=-1;
    for(i=0; i<pFormatCtx->nb_streams; i++) {
        if(pFormatCtx->streams[i]->codec->codec_type==AVMEDIA_TYPE_VIDEO) {
            videoStream=i;
            //printf("vS=%d\n", videoStream);
            break;
        }
    }
    if(videoStream==-1)
        return -1; // Couldn't find a video stream
  
    // Get a pointer to the codec context for the video stream
    pCodecCtx=pFormatCtx->streams[videoStream]->codec;
  
    // Find the decoder for the video stream
    pCodec=avcodec_find_decoder(pCodecCtx->codec_id);
    if(pCodec==NULL) 
        return -1; // Couldn't find codec
  
    // Open codec
    if(avcodec_open2(pCodecCtx, pCodec, NULL)<0)
        return -1; // Couldn't open codec

    // Allocate video frame
    pFrame=avcodec_alloc_frame();
  
    // Allocate an AVFrame structure
    pFrameRGB=avcodec_alloc_frame();
  
    // Determine required buffer size and allocate buffer
    numBytes=avpicture_get_size(PIXEL_FORMAT, 2048, 1080);
    //printf("numBytes=%d\n", numBytes);
    buffer=(uint8_t*)av_malloc(numBytes*sizeof(uint8_t));
  
    // Assign appropriate parts of buffer to image planes in pFrameRGB
    // Note that pFrameRGB is an AVFrame, but AVFrame is a superset of AVPicture
    avpicture_fill((AVPicture *)pFrameRGB, buffer, PIXEL_FORMAT, 1920, 1080);
    pFrameRGB->linesize[0] = 2048 * 4;

    img_convert_ctx = sws_getContext(pCodecCtx->width, pCodecCtx->height, pCodecCtx->pix_fmt, 
                                     1920, 1080, AV_PIX_FMT_RGB32, SWS_BICUBIC, NULL, NULL, NULL);
    return 0;
}

int ffmpeg_read_one_frame(int layer_id, unsigned long frame_buff) {
    unsigned long int map_len = 2048 * 1080 * 4;
    int fd = open("/dev/mem", O_RDWR);

    int frameFinished = 0;
    int frameRead = 0;
    int ret = 0;

    AVPacket        packet;
    unsigned char*  fb_addr;

    fb_addr = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)frame_buff);
begin:
    while ((ret = av_read_frame(pFormatCtx, &packet)) >= 0) {
        if (packet.stream_index == videoStream) {
            // Decode video frame
            avcodec_decode_video2(pCodecCtx, pFrame, &frameFinished, &packet);
            if (frameFinished) {
                //printf("ready to write\n");
	        // Convert the image from its native format to RGB
    	        sws_scale(img_convert_ctx, pFrame->data, pFrame->linesize, 0, pCodecCtx->height, pFrameRGB->data, pFrameRGB->linesize);
                // Save the frame to frame buffer
	        SaveFrame(pFrameRGB, 1920, 1080, fb_addr);
                break;
            }
        }
        av_free_packet(&packet);
    }
    if (ret < 0) { //eof
        ffmpeg_free();
        ffmpeg_reinit();
        goto begin;
    }

    munmap((void*)fb_addr, map_len);
    close(fd);
      
    return 0;
}

int ffmpeg_free() {
    // Free the RGB image
    av_free(buffer);
    av_free(pFrameRGB);
    
    // Free the YUV frame
    av_free(pFrame);
    
    // Close the codec
    avcodec_close(pCodecCtx);
    
    // Close the video file
    avformat_close_input(&pFormatCtx);

    return 0;
}
