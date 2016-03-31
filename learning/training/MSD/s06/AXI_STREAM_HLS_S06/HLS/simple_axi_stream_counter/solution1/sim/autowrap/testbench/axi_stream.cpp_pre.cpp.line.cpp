#pragma line 1 "/home/alok/Vivado_Projects/MSadri/AXI_STREAM_HLS_S06/HLS/simple_axi_stream_counter/.settings/axi_stream.cpp"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "/home/alok/Vivado_Projects/MSadri/AXI_STREAM_HLS_S06/HLS/simple_axi_stream_counter/.settings/axi_stream.cpp"
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
int axi_stream_counter(int *counter ) {
#pragma empty_line
 static int counterValue=0;
 counterValue++;
 *counter=counterValue;
 return 0;
}
