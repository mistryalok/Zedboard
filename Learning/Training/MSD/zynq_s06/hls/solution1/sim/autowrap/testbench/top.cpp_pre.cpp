# 1 "/home/alok/Work/Zedboard/temp/hls/solution1/.tcls/top.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/alok/Work/Zedboard/temp/hls/solution1/.tcls/top.cpp"




int axi_stream_counter_range(int,int *);

int main()
{
  int i;
  int y;
  for(i=0;i<100;i++)
  {
   axi_stream_counter_range(i,&y);
  }
  return 0;

}
