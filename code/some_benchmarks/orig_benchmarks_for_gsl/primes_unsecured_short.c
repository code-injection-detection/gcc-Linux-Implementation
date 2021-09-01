#include <stdio.h>
#include <stdlib.h>



void find_primes_up_to_a_number(int num, int should_print)
{
	
	//local variables that we will use:
	int primes_found_so_far[150000];
	int i,j;
	int num_of_primes;
	char bool=0;
	
	if (should_print)
		printf("Going to find primes up to %d\n",num);

	
	num_of_primes=1; //2 is a prime
	primes_found_so_far[num_of_primes-1]=2;
	

	for (i=3;i<=num;i+=2)
	{
		bool=0;
 
		for (j=2;j<=i/2+1;j++) //not using sqrt here
		{
			if (i%j==0)
			{
				bool=1;
				break;
			}			 
		}

		if (bool==0)
		{
			num_of_primes++;
			primes_found_so_far[num_of_primes-1]=i;
			
		}	
	}
	
	if (should_print)
	{
		printf("\nPrimes:\n");
		//print all primes found
		for (i=0;i<num_of_primes;i++)
		{
			printf("%d ",primes_found_so_far[i]);
		}
		printf("\n\n");
		printf("Total number of primes:%d\n",num_of_primes);
	}
	
}

int main()
{
    find_primes_up_to_a_number(60000,0);
    return 0;
}
