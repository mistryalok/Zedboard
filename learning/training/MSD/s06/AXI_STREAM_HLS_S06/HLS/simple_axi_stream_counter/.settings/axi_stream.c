/*
 * 	Simple AXI Stream counter by Alok Mistry
 */

int axi_stream_counter(int *counter ) {

	static int counterValue=0;
	counterValue++;
	*counter=counterValue;
	return 0;
}
