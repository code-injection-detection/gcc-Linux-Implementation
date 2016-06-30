//Some general tests.


//Lets find prime numbers!
//Not using sqrt function
void find_primes_up_to_a_number(int num)
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
																  1L,(long)sizeof(int),0L, //1 pointer, an int *
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
	
	
	//managed_secure_free(primes_found_so_far);
	managed_secure_free(get_stack_pointer_array_element(prime_params->elem_params->pointer_params,0));
	
	free_chunks_from_secure_stack(prime_params->total_amount_of_chunks_needed_in_secure_stack);
	free_fun_params_that_point_to_stack(prime_params);
}


