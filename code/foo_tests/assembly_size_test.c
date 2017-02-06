#include <stdio.h>
#include <stdlib.h>

int foo(int k)
{
	return (k+1);
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

	return 0;
}
