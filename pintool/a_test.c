#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main()
{
	int i;
	long j;
	char k[2000]={0};
	srand(42);
	for (i=1;i<=1000000;i++)
	{
		j+=i;
		j+=rand()%3000;
		k[j%2000]=j%256;
	}	
	

	return 0;
}
