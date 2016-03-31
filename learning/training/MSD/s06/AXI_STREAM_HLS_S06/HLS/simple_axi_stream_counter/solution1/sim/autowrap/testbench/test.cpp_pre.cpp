# 1 "/home/alok/Vivado_Projects/MSadri/AXI_STREAM_HLS_S06/HLS/simple_axi_stream_counter/test.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/alok/Vivado_Projects/MSadri/AXI_STREAM_HLS_S06/HLS/simple_axi_stream_counter/test.cpp"




int axi_stream_counter(int *);

int main()
{
  int i;
  int y;
  for(i=0;i<100;i++)
  {
   axi_stream_counter(&y);
  }
  return 0;

}
