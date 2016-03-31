# 1 "/home/alok/Vivado_Projects/MSadri/AXI_STREAM_HLS_S06/HLS/simple_axi_stream_counter/.settings/axi_stream.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/alok/Vivado_Projects/MSadri/AXI_STREAM_HLS_S06/HLS/simple_axi_stream_counter/.settings/axi_stream.cpp"




int axi_stream_counter(int *counter ) {

 static int counterValue=0;
 counterValue++;
 *counter=counterValue;
 return 0;
}
