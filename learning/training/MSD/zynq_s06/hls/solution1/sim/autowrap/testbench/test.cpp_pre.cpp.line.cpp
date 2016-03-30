#pragma line 1 "/home/alok/Work/Zedboard/temp/hls/solution1/test.cpp"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "/home/alok/Work/Zedboard/temp/hls/solution1/test.cpp"
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
int axi_stream_counter_range(int count_range, int *counter) {
#pragma HLS INTERFACE axis port=count_range
#pragma HLS INTERFACE axis port=counter
#pragma empty_line
 int counterValue=0;
 for(counterValue=0;counterValue<count_range;counterValue++)
 {
  *counter=counterValue;
#pragma empty_line
 }
#pragma empty_line
 return 0;
}
