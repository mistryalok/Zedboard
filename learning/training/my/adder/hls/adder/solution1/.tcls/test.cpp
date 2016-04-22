#include <stdio.h>
void adder(int *,int *,int *);

int main()
{
	int x=2,y=3,z=4;
	adder(&x,&y,&z);
	printf("z is %d",z);
	return 0;

}
