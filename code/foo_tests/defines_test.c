#include <stdio.h>

#define x 3,4
#define do_x(x) call_add(x) //do_x2(x)
#define do_x2(x) call_add(x)
#define call_add1(y,z) call_add(y,z)
#define call_add(y,z) add(y,z)

#define xm call_add(x) 
int add(int a,int b)
{
	return (a+b);
}

int main()
{
	//printf("%d\n",add(x));
	//printf("%d\n",call_add(x));
	printf("%d\n",do_x(x));
	return 0;
}