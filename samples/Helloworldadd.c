#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include "memory_manager.c" //Including the C files because all the functions must be in the same file in order to be secured
#include "verification_procedure.c"



int foo(int x)
{
 int k;
 k=x+2;
 
return k;
}



int main()
{

	int i;
	int k;
	int j;
	int n;
	k=1;
	i=2;
	i++;
	i++;
	i--;
	k=k+i;
	k+=2;
	i++;

	for (j=1;j<=500000000;j++)
	  k+=i;
	
 	printf("K=%d\n",k);

 	n=foo(5);
	n=foo2(n);
	printf("n=%d\n",n);

	printf("main is at %p\n", main);

	mem_test();
	//find_keyshares();

	return 0;
}



int foo2(int x)
{
	int k;
	k=x+3;
	 
	return k;
}


