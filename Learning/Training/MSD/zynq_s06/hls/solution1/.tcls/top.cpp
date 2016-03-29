/*
 * Test bench for AXI stream counter
 */

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
