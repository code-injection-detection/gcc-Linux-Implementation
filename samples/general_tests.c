//Some general tests.


//Lets find prime numbers!
//Not using sqrt function
void secure_find_primes_up_to_a_number(int num)
{
	
	//local variables that we will use:
	//int * primes_found_so_far; -> array of primes found
	//int i,j -> counters
	//int num_of_primes_found -> counter too, not initialized
	//char bool=0 -> a boolean value to denote if we have found a prime
	//in the int params -> num=0, i=1, j=2, num_of_primes_found=3
	printf("Going to find primes up to %d\n",num);
	fun_params * prime_params;
	prime_params=init_function_params_with_uninitialised_elements(1, //want to use parameters
																  1L,1L,(char)0, //1 char initialized to 0
																  4L,1L,num, //4 ints,1 initialized (with num)
																  0L,0L,0L, //no longs,floats,doubles
																  1L,(long)sizeof(int),0L, //1 pointer, an int * uninitialized
																  0L); //no arbitrary pointer params
	prime_params=put_fun_params_into_secure_stack_and_free(prime_params);
	
	printf("Initialized parameters.\n");
	//allocating space
	set_stack_pointer_array_element(prime_params->elem_params->pointer_params,0,
									error_checking_managed_secure_malloc(
																		 sizeof(int)*get_stack_int_array_element(prime_params->elem_params->int_params,0)
																		 ,__func__,__LINE__)
									);
	printf("Allocated space\n");
	
	//num_of_primes=1; //2 is a prime
	set_stack_int_array_element(prime_params->elem_params->int_params,3,1);
	//primes_found_so_far[num_of_primes-1]=2
	set_int_array_element(get_stack_pointer_array_element(prime_params->elem_params->pointer_params,0),
						  get_stack_int_array_element(prime_params->elem_params->int_params,3)-1,
						  2);
	printf("Set 2 as first prime\n");
	

	//for (i=3;i<=num;i+=2)
	for (set_stack_int_array_element(prime_params->elem_params->int_params,1,3);
		 get_stack_int_array_element(prime_params->elem_params->int_params,1)<= get_stack_int_array_element(prime_params->elem_params->int_params,0);
		 set_stack_int_array_element(prime_params->elem_params->int_params,1, get_stack_int_array_element(prime_params->elem_params->int_params,1)+2))
		 {
			 //bool=0;
			 set_stack_char_array_element(prime_params->elem_params->char_params,0,0);
			 
			 //for (j=2;j<=i/2+1;j++) //not using sqrt here
			 for (set_stack_int_array_element(prime_params->elem_params->int_params,2,2);
			 get_stack_int_array_element(prime_params->elem_params->int_params,2)<= get_stack_int_array_element(prime_params->elem_params->int_params,1)/2+1;
			 set_stack_int_array_element(prime_params->elem_params->int_params,2, get_stack_int_array_element(prime_params->elem_params->int_params,2)+1))
			 {
				//if (i%j==0)
				if (get_stack_int_array_element(prime_params->elem_params->int_params,1) %
					get_stack_int_array_element(prime_params->elem_params->int_params,2) ==0 )
					{
						//bool=1;
						set_stack_char_array_element(prime_params->elem_params->char_params,0,1);
						break;
					}			 
			 }

			//if (bool==0)
			if (get_stack_char_array_element(prime_params->elem_params->char_params,0)==0)
			{
				//num_of_primes++;
				set_stack_int_array_element(prime_params->elem_params->int_params,3,
											get_stack_int_array_element(prime_params->elem_params->int_params,3)+1
											);
				
				//primes_found_so_far[num_of_primes-1]=i;
				set_int_array_element(get_stack_pointer_array_element(prime_params->elem_params->pointer_params,0),
						  get_stack_int_array_element(prime_params->elem_params->int_params,3)-1,
						  get_stack_int_array_element(prime_params->elem_params->int_params,1));
			}
			
		 }
	
	
	printf("\nPrimes:\n");
	//print all primes found
	//for (i=0;i<num_of_primes;i++)
	for (set_stack_int_array_element(prime_params->elem_params->int_params,1,0);
		 get_stack_int_array_element(prime_params->elem_params->int_params,1)< get_stack_int_array_element(prime_params->elem_params->int_params,3);
		 set_stack_int_array_element(prime_params->elem_params->int_params,1, get_stack_int_array_element(prime_params->elem_params->int_params,1)+1))
	{
		//printf("%d ",primes_found_so_far[i]);
		printf("%d ",
			   get_int_array_element(get_stack_pointer_array_element(prime_params->elem_params->pointer_params,0),
									 get_stack_int_array_element(prime_params->elem_params->int_params,1))
			   );
	}
	printf("\n\n");
	printf("Total number of primes:%d\n",get_stack_int_array_element(prime_params->elem_params->int_params,3));
	
	
	//free(primes_found_so_far);
	managed_secure_free(get_stack_pointer_array_element(prime_params->elem_params->pointer_params,0));
	
	free_chunks_from_secure_stack(prime_params->total_amount_of_chunks_needed_in_secure_stack);
	free_fun_params_that_point_to_stack(prime_params);
}



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



//simple sieve.
void simple_sieve_of_Eratosthenes(int num)
{
	char * numbers;
	int i;
	int j;
	int prime_cnt=0;
	double square_root=sqrt(num);
	
	numbers=error_checking_malloc((num+1)*sizeof(char),__func__,__LINE__);
	
	for (i=2;i<=num;i++)
	{
		numbers[i]=1;
	}
	
	
	for (i=2;i<=square_root+1;i++)
	{
		if (numbers[i]==1)
		{
			for (j=2*i;j<=num;j+=i)
			{
				numbers[j]=0;
			}
		}
	}
	
	printf("\n");
	printf("Primes with sieve:\n");
	for (i=2;i<=num;i++)
	{
		if (numbers[i]==1)
		{
			printf("%d ",i);
			prime_cnt++;
		}
	}
	printf("\n");
	printf("Total: %d primes.\n",prime_cnt);
	
	//free(numbers);
	
}


void secure_sieve_of_Eratosthenes(int num)
{
	/*
	char * numbers;
	int i;
	int j;
	int prime_cnt=0;
	double square_root=sqrt(num);
	*/
	
	fun_params * sieve_params;
	sieve_params=init_function_params_with_uninitialised_elements(1, //want to use parameters
																  0L, //no chars
																  4L,2L,num,0, //4 ints,2 initialized (with num,0)
																  0L,0L, //no longs,floats
																  1L,0L, //1 double, uninitialized
																  1L,(long)sizeof(char),0L, //1 pointer, a char * uninitialized
																  0L); //no arbitrary pointer params
	sieve_params=put_fun_params_into_secure_stack_and_free(sieve_params);
	
	
	
	//square_root=sqrt(num);
	set_stack_double_array_element(sieve_params->elem_params->double_params,0,
								   sqrt(get_stack_int_array_element(sieve_params->elem_params->int_params,0))
								  );
	
	
	//numbers=error_checking_malloc((num+1)*sizeof(char),__func__,__LINE__);
	set_stack_pointer_array_element(sieve_params->elem_params->pointer_params,0,
									error_checking_managed_secure_malloc(
																		 sizeof(char)*(get_stack_int_array_element(sieve_params->elem_params->int_params,0)+1)
																		 ,__func__,__LINE__)
									);
	
	//for (i=2;i<=num;i++)
	for (set_stack_int_array_element(sieve_params->elem_params->int_params,2,2);
		get_stack_int_array_element(sieve_params->elem_params->int_params,2)<= get_stack_int_array_element(sieve_params->elem_params->int_params,0);
		set_stack_int_array_element(sieve_params->elem_params->int_params,2, get_stack_int_array_element(sieve_params->elem_params->int_params,2)+1))
	{
		//numbers[i]=1;
		set_char_array_element( get_stack_pointer_array_element(sieve_params->elem_params->pointer_params,0),
								get_stack_int_array_element(sieve_params->elem_params->int_params,2),
								1);
	}

									
	//for (i=2;i<=square_root+1;i++)
	for (set_stack_int_array_element(sieve_params->elem_params->int_params,2,2);
		 get_stack_int_array_element(sieve_params->elem_params->int_params,2)<= get_stack_double_array_element(sieve_params->elem_params->double_params,0)+1;
		 set_stack_int_array_element(sieve_params->elem_params->int_params,2, get_stack_int_array_element(sieve_params->elem_params->int_params,2)+1))
	{
		
		//if (numbers[i]==1)
		if (get_char_array_element( get_stack_pointer_array_element(sieve_params->elem_params->pointer_params,0),
								get_stack_int_array_element(sieve_params->elem_params->int_params,2))==1)
		{
			
			//for (j=2*i;j<=num;j+=i)
			for (set_stack_int_array_element(sieve_params->elem_params->int_params,3,2*get_stack_int_array_element(sieve_params->elem_params->int_params,2));
				get_stack_int_array_element(sieve_params->elem_params->int_params,3)<= get_stack_int_array_element(sieve_params->elem_params->int_params,0);
				set_stack_int_array_element(sieve_params->elem_params->int_params,3, get_stack_int_array_element(sieve_params->elem_params->int_params,3)+get_stack_int_array_element(sieve_params->elem_params->int_params,2)))
			{
				//numbers[j]=0;
				set_char_array_element( get_stack_pointer_array_element(sieve_params->elem_params->pointer_params,0),
										get_stack_int_array_element(sieve_params->elem_params->int_params,3),
										0);
			}
		}
	}
	
	
	printf("\n");
	printf("Primes with secure sieve:\n");
	//for (i=2;i<=num;i++)
	for (set_stack_int_array_element(sieve_params->elem_params->int_params,2,2);
		get_stack_int_array_element(sieve_params->elem_params->int_params,2)<= get_stack_int_array_element(sieve_params->elem_params->int_params,0);
		set_stack_int_array_element(sieve_params->elem_params->int_params,2, get_stack_int_array_element(sieve_params->elem_params->int_params,2)+1))
	{
		//if (numbers[i]==1)
		if (get_char_array_element( get_stack_pointer_array_element(sieve_params->elem_params->pointer_params,0),
								get_stack_int_array_element(sieve_params->elem_params->int_params,2))==1)
		{
			//printf("%d ",i);
			printf("%d ",get_stack_int_array_element(sieve_params->elem_params->int_params,2));
			//prime_cnt++;
			set_stack_int_array_element(sieve_params->elem_params->int_params,1,get_stack_int_array_element(sieve_params->elem_params->int_params,1)+1);	
		}
	}
	printf("\n");
	//printf("Total: %d primes.\n",prime_cnt);
	printf("Total: %d primes.\n",get_stack_int_array_element(sieve_params->elem_params->int_params,1));
	
	//free(numbers);
	managed_secure_free(get_stack_pointer_array_element(sieve_params->elem_params->pointer_params,0));

	free_chunks_from_secure_stack(sieve_params->total_amount_of_chunks_needed_in_secure_stack);
	free_fun_params_that_point_to_stack(sieve_params);
}




void user_friendly_secure_sieve_of_Eratosthenes(int num)
{
	/*
	char * numbers;
	int i;
	int j;
	int prime_cnt=0;
	double square_root=sqrt(num);
	*/
	
	fun_params * sieve_params;
	sieve_params=init_function_params_with_uninitialised_elements(1, //want to use parameters
																  0L, //no chars
																  4L,2L,num,0, //4 ints,2 initialized (with num,0)
																  0L,0L, //no longs,floats
																  1L,0L, //1 double, uninitialized
																  1L,(long)sizeof(char),0L, //1 pointer, a char * uninitialized
																  0L); //no arbitrary pointer params
	sieve_params=put_fun_params_into_secure_stack_and_free(sieve_params);
	
	//user friendly parameter definition
	#define NUM 0 //for ints
	#define PRIME_CNT 1
	#define I 2
	#define J 3
	#define SQUARE_ROOT 0 //for doubles
	#define NUMBERS 0 //for pointers
	
	
	
	//square_root=sqrt(num);
	SET_STACK_DOUBLE(sieve_params,SQUARE_ROOT,sqrt(GET_STACK_INT(sieve_params,NUM)));
	
	
	//numbers=error_checking_malloc((num+1)*sizeof(char),__func__,__LINE__);
	SET_STACK_PTR(sieve_params,NUMBERS,error_checking_managed_secure_malloc(  sizeof(char)*(GET_STACK_INT(sieve_params,NUM)+1)  ,__func__,__LINE__)
				 );
	
	
	//for (i=2;i<=num;i++)
	for (SET_STACK_INT(sieve_params,I,2);
		 GET_STACK_INT(sieve_params,I)<=GET_STACK_INT(sieve_params,NUM);
		 SET_STACK_INT(sieve_params,I,GET_STACK_INT(sieve_params,I)+1) )
	{
		//numbers[i]=1;
		 set_char_array_element(GET_STACK_PTR(sieve_params,NUMBERS),GET_STACK_INT(sieve_params,I),1);
	}

									
	//for (i=2;i<=square_root+1;i++)
	for (SET_STACK_INT(sieve_params,I,2);
		 GET_STACK_INT(sieve_params,I)<=GET_STACK_DOUBLE(sieve_params,SQUARE_ROOT)+1;
		 SET_STACK_INT(sieve_params,I,GET_STACK_INT(sieve_params,I)+1) )
	{
		
		//if (numbers[i]==1)
		if (get_char_array_element(GET_STACK_PTR(sieve_params,NUMBERS),GET_STACK_INT(sieve_params,I))==1)
		{
			
			//for (j=2*i;j<=num;j+=i)
			for (SET_STACK_INT(sieve_params,J,2*GET_STACK_INT(sieve_params,I));
				 GET_STACK_INT(sieve_params,J)<=GET_STACK_INT(sieve_params,NUM);
				 SET_STACK_INT(sieve_params,J,GET_STACK_INT(sieve_params,J)+GET_STACK_INT(sieve_params,I)) )
			{
				//numbers[j]=0;
				set_char_array_element(GET_STACK_PTR(sieve_params,NUMBERS), GET_STACK_INT(sieve_params,J),0);
			}
		}
	}
	
	
	printf("\n");
	printf("Primes with secure sieve:\n");
	//for (i=2;i<=num;i++)
	for (SET_STACK_INT(sieve_params,I,2);
		 GET_STACK_INT(sieve_params,I)<=GET_STACK_INT(sieve_params,NUM);
		 SET_STACK_INT(sieve_params,I,GET_STACK_INT(sieve_params,I)+1) )
	{
		//if (numbers[i]==1)
		if (get_char_array_element(GET_STACK_PTR(sieve_params,NUMBERS),GET_STACK_INT(sieve_params,I))==1)
		{
			//printf("%d ",i);
			printf("%d ",GET_STACK_INT(sieve_params,I));
			
			//prime_cnt++;
			SET_STACK_INT(sieve_params,PRIME_CNT,GET_STACK_INT(sieve_params,PRIME_CNT)+1);
		}
	}
	printf("\n");
	//printf("Total: %d primes.\n",prime_cnt);
	printf("Total: %d primes.\n",GET_STACK_INT(sieve_params,PRIME_CNT));
	
	//free(numbers);
	managed_secure_free(GET_STACK_PTR(sieve_params,NUMBERS));

	//user friendly parameter undefinition
	#undef NUM
	#undef PRIME_CNT
	#undef I
	#undef J
	#undef SQUARE_ROOT
	#undef NUMBERS

	FUNCTION_FOOTER_FOR_STACK(sieve_params);
}
