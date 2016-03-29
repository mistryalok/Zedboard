/*
 * GPIO to AXI Stream converter
 */

#include "ap_int.h"
int axi_stream_gpio(ap_int<1> inputData,int *outputData) {

	static int bitCounter=0;
	static int tempOutput;

	tempOutput=tempOutput*2+inputData;
	bitCounter++;

	if(bitCounter==32) {
		*outputData=tempOutput;
	}

	bitCounter=0;
	tempOutput=0;

	return 0;
}
