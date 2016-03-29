# 1 "/home/alok/Work/Zedboard/temp/hls/solution1/test.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/alok/Work/Zedboard/temp/hls/solution1/test.cpp"





int axi_stream_counter_range(int count_range, int *counter) {
#pragma HLS INTERFACE axis port=count_range
#pragma HLS INTERFACE axis port=counter

 int counterValue=0;
 for(counterValue=0;counterValue<count_range;counterValue++)
 {
  *counter=counterValue;

 }

 return 0;
}
