#include <stdio.h>
#include <stdlib.h>


long address_of_command;
long total_bytes_to_mac;

long foo_macer()
{
	long a,b;
	a=address_of_command;
	b=total_bytes_to_mac;
	//verify the mac
	printf("a=%ld,b=%ld\n",a,b);

}

long calc_sum(long a,long b, long c)
{
	long sum;
	sum=a+b+c;
	return sum;
}

int main()
{
	long a,b,c,sum;
	a=1;
	b=2;
	c=3;
	sum=calc_sum(a,b,c);
	printf("sum=%ld\n",sum);

	asm("nop");
	return 0;
}
