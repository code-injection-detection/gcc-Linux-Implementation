#include <stdio.h>

int foo(int x)
{
 int k;
 k=x+2;
 
return k;
}

void find_keyshares();


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
	//find_keyshares();


	return 0;
}



int foo2(int x)
{
	int k;
	k=x+3;
	 
	return k;
}

/*
void find_keyshares()
{
   long a= foo;
   long b= main;
   long c=foo2;
   long d=find_keyshares;

   printf("a=%p b=%p c=%p d=%p\n",a,b,c,d);

}*/
