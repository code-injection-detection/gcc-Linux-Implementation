#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main()
{
	int i;
	long j;
	char k[200000]={0};
	srand(42);
	for (i=1;i<=10000000;i++)
	{
		j+=i;
		j+=rand()%200000;
		k[j%200000]=j%256;
	}	
	

	return 0;
}
