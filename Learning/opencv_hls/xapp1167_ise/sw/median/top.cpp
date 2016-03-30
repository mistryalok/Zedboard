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
#include "top.h"


void image_filter(AXI_STREAM& INPUT_STREAM, AXI_STREAM& OUTPUT_STREAM, int rows, int cols) {
    //Create AXI streaming interfaces for the core
#pragma HLS INTERFACE axis port=INPUT_STREAM
#pragma HLS INTERFACE axis port=OUTPUT_STREAM

#pragma HLS RESOURCE core=AXI_SLAVE variable=rows metadata="-bus_bundle CONTROL_BUS"
#pragma HLS RESOURCE core=AXI_SLAVE variable=cols metadata="-bus_bundle CONTROL_BUS"
#pragma HLS RESOURCE core=AXI_SLAVE variable=return metadata="-bus_bundle CONTROL_BUS"

#pragma HLS INTERFACE ap_stable port=rows
#pragma HLS INTERFACE ap_stable port=cols

    RGB_IMAGE img_0(rows, cols);
    RGB_IMAGE img_1(rows, cols);
#pragma HLS dataflow
    hls::AXIvideo2Mat(INPUT_STREAM, img_0);

    RGB_PIXEL buffer[3];

    assert(rows <= MAX_HEIGHT);
    assert(cols <= MAX_WIDTH);
    for(int row = 0; row < rows; row++) {
#pragma HLS loop_flatten off
       for(int col = 0; col < cols; col++) {
#pragma HLS pipeline II=1
            RGB_PIXEL p;
            img_0 >> p;
            buffer[2] = buffer[1];
            buffer[1] = buffer[0];
            buffer[0] = p;

            // Because we have a buffer above, the start of one line
            // will be processed with data from the previous line.
            // The check below is a simple, relatively unsophisticated
            // way to handle the edge condition.  It does result in
            // introducing a spatial shift in the image because the
            // filter is non-causal.
            if(col > 1) {
                for(int i = 0; i < 3; i++) {
                    bool a = buffer[2].val[i] > buffer[1].val[i];
                    bool b = buffer[2].val[i] > buffer[0].val[i];
                    bool c = buffer[1].val[i] > buffer[0].val[i];

                    if(a && c) {
                        p.val[i] = buffer[1].val[i];
                    } else if(b && !c) {
                        p.val[i] = buffer[0].val[i];
                    } else {
                        p.val[i] = buffer[2].val[i];
                    }
                }
            }

            img_1 << p;
        }
    }
    hls::Mat2AXIvideo(img_1, OUTPUT_STREAM);
}
