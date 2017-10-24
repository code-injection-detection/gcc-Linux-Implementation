//normal function
void find_primes_up_to_a_number(int num)
{
	
	//local variables that we will use:
	int * primes_found_so_far;
	int i,j;
	int num_of_primes;
	char bool=0;
	printf("Going to find primes up to %d\n",num);



	
	primes_found_so_far=error_checking_malloc(num*sizeof(int),__func__,__LINE__);
	
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
	
	
	printf("\nPrimes:\n");
	//print all primes found
	for (i=0;i<num_of_primes;i++)
	{
		printf("%d ",primes_found_so_far[i]);
	}
	printf("\n\n");
	printf("Total number of primes:%d\n",num_of_primes);
	
	
	free(primes_found_so_far);
}

