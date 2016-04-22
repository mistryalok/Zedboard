# 1 "/home/alok/githum/Zedboard/learning/training/my/adder/hls/adder/solution1/adder.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/alok/githum/Zedboard/learning/training/my/adder/hls/adder/solution1/adder.cpp"


void adder(int *a,int *b,int *c) {
#pragma HLS INTERFACE s_axilite port=return bundle=AXI_CTRL
#pragma HLS INTERFACE s_axilite port=c bundle=AXI_CTRL
#pragma HLS INTERFACE s_axilite port=b bundle=AXI_CTRL
#pragma HLS INTERFACE s_axilite port=a bundle=AXI_CTRL

 *c=*a+*b;

}
