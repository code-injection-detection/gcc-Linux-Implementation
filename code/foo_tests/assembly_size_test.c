#include <stdio.h>
#include <stdlib.h>

int foo(int k)
{
	return (k+1);
}

int test_adder(int a, int b, int c)
{
	return (a+b+c);
}



__attribute__ ((cdecl)) int test_adder_many(int a, int b, int c,int d, int e, int f, int g,int h)
{
	return (a+b+c+d+e+f+g+h);
}

int main()
{
	int x;
	int y;
	
	x=1;
	y=2;

	printf("tralala\n");

	if (rand())
		printf("%d\n",x+foo(y));
	else
		printf("%d\n",x+foo(y)+1);

	printf("sum:%d\n",test_adder(4,5,6));
	printf("sum2:%d\n",test_adder_many(4,5,6,7,8,9,10,11));

	return 0;
}
