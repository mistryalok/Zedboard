/*
 * Test stream
 */


int axi_stream_counter_range(int count_range, int *counter) {
#pragma HLS INTERFACE axis port=count_range
#pragma HLS INTERFACE axis port=counter

	int counterValue=0;
	for(counterValue=0;counterValue<count_range;counterValue++)
	{
		*counter=counterValue;

	}
	//counterValue++;
	return 0;
}
