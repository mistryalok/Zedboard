#pragma line 1 "/home/alok/githum/Zedboard/learning/training/my/adder/hls/adder/solution1/adder.cpp"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "/home/alok/githum/Zedboard/learning/training/my/adder/hls/adder/solution1/adder.cpp"
#pragma empty_line
#pragma empty_line
void adder(int *a,int *b,int *c) {
#pragma HLS INTERFACE s_axilite port=return bundle=AXI_CTRL
#pragma HLS INTERFACE s_axilite port=c bundle=AXI_CTRL
#pragma HLS INTERFACE s_axilite port=b bundle=AXI_CTRL
#pragma HLS INTERFACE s_axilite port=a bundle=AXI_CTRL
#pragma empty_line
 *c=*a+*b;
#pragma empty_line
}
