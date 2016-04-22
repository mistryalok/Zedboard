

void adder(int *a,int *b,int *c) {
#pragma HLS INTERFACE s_axilite port=return bundle=AXI_CTRL
#pragma HLS INTERFACE s_axilite port=c bundle=AXI_CTRL
#pragma HLS INTERFACE s_axilite port=b bundle=AXI_CTRL
#pragma HLS INTERFACE s_axilite port=a bundle=AXI_CTRL

	*c=*a+*b;
	//return *c=*a+*b;
}
