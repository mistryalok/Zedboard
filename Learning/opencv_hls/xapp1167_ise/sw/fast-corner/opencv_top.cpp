/***************************************************************************

*   © Copyright 2013 Xilinx, Inc. All rights reserved. 

*   This file contains confidential and proprietary information of Xilinx,
*   Inc. and is protected under U.S. and international copyright and other
*   intellectual property laws. 

*   DISCLAIMER
*   This disclaimer is not a license and does not grant any rights to the
*   materials distributed herewith. Except as otherwise provided in a valid
*   license issued to you by Xilinx, and to the maximum extent permitted by
*   applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH
*   ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, 
*   EXPRESS, IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES
*   OF MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR 
*   PURPOSE; and (2) Xilinx shall not be liable (whether in contract or 
*   tort, including negligence, or under any other theory of liability)
*   for any loss or damage of any kind or nature related to, arising under
*   or in connection with these materials, including for any direct, or any
*   indirect, special, incidental, or consequential loss or damage (including
*   loss of data, profits, goodwill, or any type of loss or damage suffered 
*   as a result of any action brought by a third party) even if such damage
*   or loss was reasonably foreseeable or Xilinx had been advised of the 
*   possibility of the same. 

*   CRITICAL APPLICATIONS 
*   Xilinx products are not designed or intended to be fail-safe, or for use
*   in any application requiring fail-safe performance, such as life-support
*   or safety devices or systems, Class III medical devices, nuclear facilities,
*   applications related to the deployment of airbags, or any other applications
*   that could lead to death, personal injury, or severe property or environmental
*   damage (individually and collectively, "Critical Applications"). Customer
*   assumes the sole risk and liability of any use of Xilinx products in Critical
*   Applications, subject only to applicable laws and regulations governing 
*   limitations on product liability. 

*   THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT 
*   ALL TIMES.

***************************************************************************/
#include "opencv_top.h"
#include "top.h"

#define CHOOSE_ONE 
#ifdef CHOOSE_ONE
void opencv_image_filter(IplImage* src, IplImage* dst)
{
    IplImage* gray = cvCreateImage( cvGetSize(src), 8, 1 );  
    std::vector<cv::KeyPoint> keypoints;
    cv::Mat gray_mat(gray,0);
    
    cvCvtColor( src, gray, CV_BGR2GRAY );  
    cv::FAST( gray_mat, keypoints, 20, true);
    cvCopy( src,dst);

    for (int i=0;i<keypoints.size();i++)
    {
      cvRectangle(dst, cvPoint(keypoints[i].pt.x-1,keypoints[i].pt.y-1),
		cvPoint(keypoints[i].pt.x+1,keypoints[i].pt.y+1), cvScalar(255,0,0),CV_FILLED);
    }

    cvReleaseImage( &gray );  
}

#else 

void GenMask(IplImage *mask,std::vector<cv::KeyPoint> keypoints);
void PrintMask(IplImage* img, IplImage* maski, CvScalar s);
void opencv_image_filter(IplImage* src, IplImage* dst)
{
    IplImage* gray = cvCreateImage( cvGetSize(src), 8, 1 );  
    IplImage* mask = cvCreateImage( cvGetSize(src), 8, 1 );  
    IplImage* dmask = cvCreateImage( cvGetSize(src), 8, 1 );  
    std::vector<cv::KeyPoint> keypoints;
    cv::Mat gray_mat(gray,0);
    
    cvCvtColor(src, gray, CV_BGR2GRAY );  
    cv::FAST(gray_mat, keypoints, 20, true);
    GenMask(mask, keypoints);
    cvDilate(mask,dmask);
    cvCopy(src,dst);
    PrintMask(dst,dmask,cvScalar(255,0,0));

    cvReleaseImage( &mask );  
    cvReleaseImage( &dmask );  
    cvReleaseImage( &gray );  
}
void GenMask(IplImage *mask,std::vector<cv::KeyPoint> keypoints)
{
    int step= mask->widthStep/sizeof(uchar);
    uchar *data  =(uchar*)mask->imageData;
    for (int i=0;i<mask->height;i++)
    {
        for (int j=0;j<mask->width;j++)
        {
                uchar flag=0;
                for (std::vector<cv::KeyPoint>::iterator iter=keypoints.begin();iter!=keypoints.end();iter++)
                {
                    if((*(iter)).pt.x==j&&(*(iter)).pt.y==i)
                    {
                        flag=1;
                        keypoints.erase(iter);
                        break;
                    }
                }
                data[i*step+j]=flag;
        }
    }
}
void PrintMask(IplImage* img, IplImage* mask, CvScalar s)
{
    int     step= img->widthStep/sizeof(uchar);
    uchar   *data  =(uchar*)img->imageData;
    int     m_step= mask->widthStep/sizeof(uchar);
    uchar   *m_data  =(uchar*)mask->imageData;
    for (int i=0;i<img->height;i++)
    {
        for (int j=0;j<img->width;j++)
        {
            {
                uchar flag=0;
                flag=m_data[i*m_step+j];
                if(flag>0)
                {
                    for(int k=0; k<img->nChannels; k++)
                        data[i*step+j*(img->nChannels)+k]=(uchar)s.val[k];
                }
            }
        }
    }
}
#endif

void sw_image_filter(IplImage* src, IplImage* dst) {
    AXI_STREAM src_axi, dst_axi;
    IplImage2AXIvideo(src, src_axi);
    image_filter(src_axi, dst_axi, src->height, src->width);
    AXIvideo2IplImage(dst_axi, dst);
}
