//Some general tests.


//Lets find prime numbers!
//Not using sqrt function
//old stack implementation
void secure_find_primes_up_to_a_number(int num)
{
	
	//local variables that we will use:
	//int * primes_found_so_far; -> array of primes found
	//int i,j -> counters
	//int num_of_primes_found -> counter too, not initialised
	//char bool=0 -> a boolean value to denote if we have found a prime
	//in the int params -> num=0, i=1, j=2, num_of_primes_found=3
	printf("Going to find primes up to %d\n",num);
	fun_params * prime_params;
	prime_params=init_function_params_with_uninitialised_elements(1, //want to use parameters
																  1L,1L,(char)0, //1 char initialised to 0
																  4L,1L,num, //4 ints,1 initialised (with num)
																  0L,0L,0L, //no longs,floats,doubles
																  1L,(long)sizeof(int),0L, //1 pointer, an int * uninitialised
																  0L); //no arbitrary pointer params
	prime_params=put_fun_params_into_secure_stack_and_free(prime_params);
	
	printf("Initialised parameters.\n");
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

//old stack implementation
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
																  4L,2L,num,0, //4 ints,2 initialised (with num,0)
																  0L,0L, //no longs,floats
																  1L,0L, //1 double, uninitialised
																  1L,(long)sizeof(char),0L, //1 pointer, a char * uninitialised
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



//old stack implementation
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
	/*
	sieve_params=init_function_params_with_uninitialised_elements(1, //want to use parameters
																  0L, //no chars
																  4L,2L,num,0, //4 ints,2 initialised (with num,0)
																  0L,0L, //no longs,floats
																  1L,0L, //1 double, uninitialised
																  1L,(long)sizeof(char),0L, //1 pointer, a char * uninitialised
																  0L); //no arbitrary pointer params
	sieve_params=put_fun_params_into_secure_stack_and_free(sieve_params);
	*/
	//use that very specific syntax. Nothing else, the parser is not something professional.
	//For example, don't include comments into the "PLEASE_INIT_PARAMS" block. Also, write number and initialise integers with numbers only (no "L"'s or casting)
	//For the rest of the values, you can use casting
	PLEASE_INIT_PARAMS
		name_of_var: sieve_params
		uninitialised_elements: yes
		chars: 0 
		ints: 4 | initialise: 2 | values: num,0 | names: NUM,PRIME_CNT,I,J
		longs: 0
		floats: 0
		doubles: 1 | initialise: 0 | names: SQUARE_ROOT
		pointers: 1 | sizes: (long)(sizeof(char)) | initialise: 0 | names: NUMBERS
		arb_pointers: 0
	END_OF_PARAM_INIT	
	
	/*
	//user friendly parameter definition
	#define NUM 0 //for ints
	#define PRIME_CNT 1
	#define I 2
	#define J 3
	#define SQUARE_ROOT 0 //for doubles
	#define NUMBERS 0 //for pointers
	*/
	
	//square_root=sqrt(num);
	SET_OLD_STACK_DOUBLE(sieve_params,SQUARE_ROOT,sqrt(GET_OLD_STACK_INT(sieve_params,NUM)));
	
	
	//numbers=error_checking_malloc((num+1)*sizeof(char),__func__,__LINE__);
	SET_OLD_STACK_PTR(sieve_params,NUMBERS,error_checking_managed_secure_malloc(  sizeof(char)*(GET_OLD_STACK_INT(sieve_params,NUM)+1)  ,__func__,__LINE__)
				 );
	
	
	//for (i=2;i<=num;i++)
	for (SET_OLD_STACK_INT(sieve_params,I,2);
		 GET_OLD_STACK_INT(sieve_params,I)<=GET_OLD_STACK_INT(sieve_params,NUM);
		 SET_OLD_STACK_INT(sieve_params,I,GET_OLD_STACK_INT(sieve_params,I)+1) )
	{
		//numbers[i]=1;
		 set_char_array_element(GET_OLD_STACK_PTR(sieve_params,NUMBERS),GET_OLD_STACK_INT(sieve_params,I),1);
	}

									
	//for (i=2;i<=square_root+1;i++)
	for (SET_OLD_STACK_INT(sieve_params,I,2);
		 GET_OLD_STACK_INT(sieve_params,I)<=GET_OLD_STACK_DOUBLE(sieve_params,SQUARE_ROOT)+1;
		 SET_OLD_STACK_INT(sieve_params,I,GET_OLD_STACK_INT(sieve_params,I)+1) )
	{
		
		//if (numbers[i]==1)
		if (get_char_array_element(GET_OLD_STACK_PTR(sieve_params,NUMBERS),GET_OLD_STACK_INT(sieve_params,I))==1)
		{
			
			//for (j=2*i;j<=num;j+=i)
			for (SET_OLD_STACK_INT(sieve_params,J,2*GET_OLD_STACK_INT(sieve_params,I));
				 GET_OLD_STACK_INT(sieve_params,J)<=GET_OLD_STACK_INT(sieve_params,NUM);
				 SET_OLD_STACK_INT(sieve_params,J,GET_OLD_STACK_INT(sieve_params,J)+GET_OLD_STACK_INT(sieve_params,I)) )
			{
				//numbers[j]=0;
				set_char_array_element(GET_OLD_STACK_PTR(sieve_params,NUMBERS), GET_OLD_STACK_INT(sieve_params,J),0);
			}
		}
	}
	
	
	printf("\n");
	printf("Primes with secure sieve:\n");
	//for (i=2;i<=num;i++)
	for (SET_OLD_STACK_INT(sieve_params,I,2);
		 GET_OLD_STACK_INT(sieve_params,I)<=GET_OLD_STACK_INT(sieve_params,NUM);
		 SET_OLD_STACK_INT(sieve_params,I,GET_OLD_STACK_INT(sieve_params,I)+1) )
	{
		//if (numbers[i]==1)
		if (get_char_array_element(GET_OLD_STACK_PTR(sieve_params,NUMBERS),GET_OLD_STACK_INT(sieve_params,I))==1)
		{
			//printf("%d ",i);
			printf("%d ",GET_OLD_STACK_INT(sieve_params,I));
			
			//prime_cnt++;
			SET_OLD_STACK_INT(sieve_params,PRIME_CNT,GET_OLD_STACK_INT(sieve_params,PRIME_CNT)+1);
		}
	} 
	printf("\n");
	//printf("Total: %d primes.\n",prime_cnt);
	printf("Total: %d primes.\n",GET_OLD_STACK_INT(sieve_params,PRIME_CNT));
	
	
	//free(numbers);
	managed_secure_free(GET_OLD_STACK_PTR(sieve_params,NUMBERS));


	//user friendly parameter undefinition
	/*
	#undef NUM
	#undef PRIME_CNT
	#undef I
	#undef J
	#undef SQUARE_ROOT
	#undef NUMBERS
	*/
	
	PLEASE_UNDEF_NAMES
	
	FUNCTION_FOOTER_FOR_STACK(sieve_params);
}




int matrix_res1[1001][1001];
int matrix_res2[1001][1001];
int matrix1[1001][1001];
int matrix2[1001][1001];
int test_array[4]={ 42,43,44,45 };

void fill_matrices_for_multiplication(int size,int maxnum)
{
	int i,j;
	for (i=0;i<size;i++)
		for (j=0;j<size;j++)
		{
			matrix1[i][j]=rand()%maxnum;
			matrix2[i][j]=rand()%maxnum;
		}
	
}

//normal function
void matrix_multiplication(int size,int maxnum)
{
	int i,j,k,l,sum;
	int a[size][size],b[size][size];
	
	for (i=0;i<size;i++)
		for (j=0;j<size;j++)
		{
			a[i][j]=matrix1[i][j];
			b[i][j]=matrix2[i][j];
		}
		
	for (i=0;i<size;i++)
		for (j=0;j<size;j++)
		{
			sum=0;
			for (k=0;k<size;k++)
				sum+=a[i][k]*b[k][j];
			matrix_res1[i][j]=sum;
		}
		
	printf("Test array:\n");
	for (i=0;i<4;i++)
		printf("%d ",test_array[i]);
	printf("\n");
	
}		

//old stack implementation
void user_friendly_secure_matrix_multiplication(int size,int maxnum)
{
	fun_params * mm_params;
	
	//SOS the way this works, the arb_pointer values (here: test_array) must be freed by the user afterwards (if they are allocated in the normal heap)
	PLEASE_INIT_PARAMS
		name_of_var: mm_params
		uninitialised_elements: yes
		chars: 0 
		ints: 7 | initialise: 2| values: size,maxnum| names: SIZE,MAXNUM,I,J,K,L,SUM
		longs: 0
		floats: 0
		doubles: 0
		pointers: 0
		arb_pointers: 3 | sizes: 4*sizeof(int),(sizeof(int)*size*size),(sizeof(int)*size*size) | initialise:1 | values: test_array |names: TEST_ARRAY,A,B
	END_OF_PARAM_INIT	
	
	
	for (SET_OLD_STACK_INT(mm_params,I,0);
		 GET_OLD_STACK_INT(mm_params,I)<GET_OLD_STACK_INT(mm_params,SIZE);
		 SET_OLD_STACK_INT(mm_params,I,GET_OLD_STACK_INT(mm_params,I)+1)
		)
	{
		
		for (SET_OLD_STACK_INT(mm_params,J,0);
			 GET_OLD_STACK_INT(mm_params,J)<GET_OLD_STACK_INT(mm_params,SIZE);
			 SET_OLD_STACK_INT(mm_params,J,GET_OLD_STACK_INT(mm_params,J)+1)
			)
		 {
			//a[i][j]=matrix1[i][j];
			//b[i][j]=matrix2[i][j];
			
			//those two need to write in *res:
			//set_arbitrary_block_in_stack_with_offset(sizeof(int),STACK_ARB_PTR_PARAMS[A],GET_OLD_STACK_INT(mm_params,I)*GET_OLD_STACK_INT(mm_params,SIZE)+GET_OLD_STACK_INT(mm_params,J),matrix1[GET_OLD_STACK_INT(mm_params,I)][GET_OLD_STACK_INT(mm_params,J)]);
			//set_arbitrary_block_in_stack_with_offset(sizeof(int),STACK_ARB_PTR_PARAMS[B],GET_OLD_STACK_INT(mm_params,I)*GET_OLD_STACK_INT(mm_params,SIZE)+GET_OLD_STACK_INT(mm_params,J),matrix2[GET_OLD_STACK_INT(mm_params,I)][GET_OLD_STACK_INT(mm_params,J)]);
			
			set_stack_int_array_element(STACK_ARB_PTR_PARAMS(mm_params)[A],GET_OLD_STACK_INT(mm_params,I)*GET_OLD_STACK_INT(mm_params,SIZE)+GET_OLD_STACK_INT(mm_params,J),matrix1[GET_OLD_STACK_INT(mm_params,I)][GET_OLD_STACK_INT(mm_params,J)]);
			set_stack_int_array_element(STACK_ARB_PTR_PARAMS(mm_params)[B],GET_OLD_STACK_INT(mm_params,I)*GET_OLD_STACK_INT(mm_params,SIZE)+GET_OLD_STACK_INT(mm_params,J),matrix2[GET_OLD_STACK_INT(mm_params,I)][GET_OLD_STACK_INT(mm_params,J)]);
			
		 }
	}
	
	for (SET_OLD_STACK_INT(mm_params,I,0);
		 GET_OLD_STACK_INT(mm_params,I)<GET_OLD_STACK_INT(mm_params,SIZE);
		 SET_OLD_STACK_INT(mm_params,I,GET_OLD_STACK_INT(mm_params,I)+1)
		)
	{
		
		for (SET_OLD_STACK_INT(mm_params,J,0);
			 GET_OLD_STACK_INT(mm_params,J)<GET_OLD_STACK_INT(mm_params,SIZE);
			 SET_OLD_STACK_INT(mm_params,J,GET_OLD_STACK_INT(mm_params,J)+1)
			)
		 {
			 SET_OLD_STACK_INT(mm_params,SUM,0);
			 for (SET_OLD_STACK_INT(mm_params,K,0);
				 GET_OLD_STACK_INT(mm_params,K)<GET_OLD_STACK_INT(mm_params,SIZE);
				 SET_OLD_STACK_INT(mm_params,K,GET_OLD_STACK_INT(mm_params,K)+1)
				 )
			 {
				 SET_OLD_STACK_INT(mm_params,SUM,GET_OLD_STACK_INT(mm_params,SUM)+
										(get_stack_int_array_element(STACK_ARB_PTR_PARAMS(mm_params)[A],GET_OLD_STACK_INT(mm_params,I)*GET_OLD_STACK_INT(mm_params,SIZE)+GET_OLD_STACK_INT(mm_params,K))*
										 get_stack_int_array_element(STACK_ARB_PTR_PARAMS(mm_params)[B],GET_OLD_STACK_INT(mm_params,K)*GET_OLD_STACK_INT(mm_params,SIZE)+GET_OLD_STACK_INT(mm_params,J))
										)
							  );
				 
			 }
			 matrix_res2[GET_OLD_STACK_INT(mm_params,I)][GET_OLD_STACK_INT(mm_params,J)]=GET_OLD_STACK_INT(mm_params,SUM);
			 
		 }
	
	}
	
	printf("Test array:\n");
	for (SET_OLD_STACK_INT(mm_params,I,0);
		 GET_OLD_STACK_INT(mm_params,I)<4;
		 SET_OLD_STACK_INT(mm_params,I,GET_OLD_STACK_INT(mm_params,I)+1)
		)
	{
		printf("%d ",get_stack_int_array_element(STACK_ARB_PTR_PARAMS(mm_params)[TEST_ARRAY],GET_OLD_STACK_INT(mm_params,I)));
	}
	printf("\n");
	
	
	PLEASE_UNDEF_NAMES
	
	FUNCTION_FOOTER_FOR_STACK(mm_params);
	
}

int the_matrices_are_the_same(int size)
{
	int i,j;
	int res=1;
	
	for(i=0;i<size;i++)
	{
		for(j=0;j<size;j++)
		{
			if(matrix_res1[i][j]!=matrix_res2[i][j])
			{
				res=0;
				break;
			}
		}
		if (res==0)
			break;
	}
	return res;
	
}


int unsecured_i;
long unsecured_sum;

void global_sum_calculator(int times,int maxval)
{
	int k;
	for (k=0;k<times;k++)
	{
		unsecured_sum=0;
		for (unsecured_i=0;unsecured_i<maxval;unsecured_i++)
		{
			unsecured_sum+=unsecured_i;
		}
	}
	printf("unsecured sum:%ld\n",unsecured_sum);
}

//these variables are declared in the global struct
//the following definitions don't work now
//ATTENTION: FORMER GLOBAL VARIABLE FOLLOWING! | SIZE:int 
//int secured_i=0;
//ATTENTION: FORMER GLOBAL VARIABLE FOLLOWING! | SIZE:long
//long secured_sum=0;

void secure_global_sum_calculator(int times,int maxval)
{
	int k;
	for (k=0;k<times;k++)
	{
		UPDATE_GLOBAL_VAR(globals.secured_sum,0);
		//int i;
		//for (i=0;i<maxval;i++)
		for (UPDATE_GLOBAL_VAR_FOR_LOOPS(globals.secured_i,0);GET_GLOBAL_INT(globals.secured_i)<maxval;UPDATE_GLOBAL_VAR_FOR_LOOPS(globals.secured_i,GET_GLOBAL_INT(globals.secured_i)+1))
		{
			//UPDATE_GLOBAL_VAR(globals.secured_sum,GET_GLOBAL_LONG(globals.secured_sum)+i);
			UPDATE_GLOBAL_VAR(globals.secured_sum,GET_GLOBAL_LONG(globals.secured_sum)+GET_GLOBAL_INT(globals.secured_i));
		}
	}
	printf("secured sum:%ld\n",GET_GLOBAL_LONG(globals.secured_sum));
}


int array_for_calc_det_delay_ints[1];
int * array_for_calc_det_delay_ptr[1];
int size_for_calc_det_delay;
long det_result_for_delay;

//normal function
long calc_determinant(int *matrix,int dim)
{
	int isminus,j,p,q,t,r,s;
	int submatrix[625];
	long subdets[25];
	long d;
	if (dim==2)
	{	
		d=((*(matrix+0*25+0)) * (*(matrix+1*25+1)) ) - ( (*(matrix+0*25+1)) * (*(matrix+1*25+0)) );
		return(d);
	}
	else
	{
		for(j=0;j<dim;j++)
		{       
			r=s=0;
			for(p=0;p<dim;p++)
			{
				for(q=0;q<dim;q++)
				{
					if(p!=0 && q!=j)
					{
						*(submatrix+r*(25)+s)=*(matrix+p*25+q);
						s=(s+1)%(dim-1);
						if (s==0)
							r++;
					}
				}
			}
			for(t=0,isminus=1;t<j;t++)
			{
				 isminus=(-1)*isminus;
			}
#if use_inline_code_for_delays==1
		//for delay, emulating the pushing of parameters into the stack
		//wrong most likely
		/*
		__asm__ ( "pushq %rax;\n" //2 parameters
				  "pushq %rax;\n"
				);
		*/
		//other code (which simulates delay), which is correct
		size_for_calc_det_delay=4;
		array_for_calc_det_delay_ints[0]=dim-1;
		size_for_calc_det_delay=8;
		array_for_calc_det_delay_ptr[0]=matrix;
#endif
			subdets[j]=isminus*calc_determinant(submatrix,dim-1);
#if use_inline_code_for_delays==1 
	//pop the stack
	/*
	__asm__ ( "add $16,%rsp;\n"
			);
	*/
	// other code (which simulates delay), which is correct
	det_result_for_delay=array_for_calc_det_delay_ints[0]; //just access memory
#endif
		}
		for(j=0,d=0;j<dim;j++)
		{
			d=d+(*(matrix+0*25+j)*subdets[j]);
		}
		return(d);
	}
}


void call_and_calc_unsecured_determinant(int sz)
{
	int * matrix;
	int i,j;
	long det;
	
	matrix=error_checking_malloc(25*25*sizeof(int),__func__,__LINE__);
	srand(4242);
	printf("Here's the matrix for determinant calculation:\n");
	for (i=0;i<sz;i++)
	{
		for(j=0;j<sz;j++)
		{
			*(matrix+i*25+j)=rand()%20;
			printf("%d ",*(matrix+i*25+j));
		}
		printf("\n");	
	}
	_simplestart=clock(); 
	det=calc_determinant(matrix,sz);
	_simpleend=clock(); 
	_simpletime=((double) (_simpleend - _simplestart)) / CLOCKS_PER_SEC;
	printf("determinant=%ld\n",det);
	printf("\n"); 
	printf("Normal determinant calculation time:%lg cpu seconds\n",_simpletime); 
	free(matrix);
	
}

int * init_matrix_for_determinant_calc(int sz)
{
	int * matrix;
	int i,j;
	long det;
	
	matrix=error_checking_malloc(25*25*sizeof(int),__func__,__LINE__);
	srand(4242);
	printf("Here's the matrix for determinant calculation:\n");
	for (i=0;i<sz;i++)
	{
		for(j=0;j<sz;j++)
		{
			*(matrix+i*25+j)=rand()%20;
			printf("%d ",*(matrix+i*25+j));
		}
		printf("\n");	
	}
	return (matrix);
	
}


void check_new_unsecure_heap()
{
	int * a;
	int *b;
	int *c;
	init_unsecure_heap();
	printf("initialized unsecure heap\n");
	printf("total_uheap_bytes_allocated:%ld\n",total_uheap_bytes_allocated);
	a=error_checking_umalloc_memory(5*sizeof(int),__func__,__LINE__);
	memset(a,0x41,5*sizeof(int));
	printf("\nallocated a\n");
	print_uheap_lists(1);
	printf("a=%ld,b=%ld,c=%ld\n",(long)a,(long)b,(long)c);
	b=error_checking_umalloc_memory(5*sizeof(int),__func__,__LINE__);
	memset(a,0x42,5*sizeof(int));
	printf("\nallocated b\n");
	print_uheap_lists(1);
	printf("a=%ld,b=%ld,c=%ld\n",(long)a,(long)b,(long)c);
	c=error_checking_umalloc_memory(5*sizeof(int),__func__,__LINE__);
	memset(a,0x43,5*sizeof(int));
	printf("\nallocated c\n");
	print_uheap_lists(1);
	printf("a=%ld,b=%ld,c=%ld\n",(long)a,(long)b,(long)c);
	ufree_memory(b);
	printf("\nfreed b\n");
	print_uheap_lists(1);
	printf("a=%ld,b=%ld,c=%ld\n",(long)a,(long)b,(long)c);
	ufree_memory(a);
	printf("\nfreed a\n");
	print_uheap_lists(1);
	printf("a=%ld,b=%ld,c=%ld\n",(long)a,(long)b,(long)c);
	a=error_checking_umalloc_memory(5*sizeof(int),__func__,__LINE__);
	memset(a,0x41,5*sizeof(int));
	printf("\nallocated a\n");
	print_uheap_lists(1);
	printf("a=%ld,b=%ld,c=%ld\n",(long)a,(long)b,(long)c);
	ufree_memory(c);
	printf("\nfreed c\n");
	print_uheap_lists(1);
	printf("a=%ld,b=%ld,c=%ld\n",(long)a,(long)b,(long)c);
	ufree_memory(a);
	printf("\nfreed a\n");
	print_uheap_lists(1);
	printf("a=%ld,b=%ld,c=%ld\n",(long)a,(long)b,(long)c);
	a=error_checking_umalloc_memory(49921,__func__,__LINE__);
	memset(a,0x42,49921);
	printf("\nallocated huge a\n");
	print_uheap_lists(1);
	printf("a=%ld,b=%ld,c=%ld\n",(long)a,(long)b,(long)c);
	ufree_memory(a);
	printf("\nfreed huge a\n");
	print_uheap_lists(1);
	printf("a=%ld,b=%ld,c=%ld\n",(long)a,(long)b,(long)c);
	
	
	free_unsecure_heap();
}


void test_unsecure_heap_many_allocs_frees(int n)
{
	char * in_use;
	double ** numbers;
	int i,j,num,k,num2;
	double sum;
	double avg;
	init_unsecure_heap();

	srand(time(NULL));
	in_use=error_checking_umalloc_memory(n*sizeof(char),__func__,__LINE__);
	for (k=0;k<n;k++)
		in_use[k]=1;
	numbers=error_checking_umalloc_memory(n*sizeof(double*),__func__,__LINE__);
	for (i=0;i<n;i++)
	{
		numbers[i]=error_checking_umalloc_memory(30*sizeof(double),__func__,__LINE__);
		for (j=0;j<30;j++)
			numbers[i][j]=0.5+ i%10;
	}
	sum=0;
	for (i=0;i<n;i++)
	{
		for (j=0;j<30;j++)
			sum+=numbers[i][j];
	}
	avg=sum/(n*30.0);
	printf("\n\navg: %lf\n\n",avg);
	
	//print_uheap_lists(1);
	//print_unsecure_heap_range(in_use-32,1000);
	//return;
	
	double step_of_freeing_allocing=500;
	int repeats=20000;
	for (i=0;i<repeats;i++)
	{
		for (j=0;j<step_of_freeing_allocing;j++)
		{
			num=rand()%n;
			//free that num
			if (in_use[num]==1)
			{
				ufree_memory(numbers[num]);
				in_use[num]=0;
			}
		}
		
		for (j=0;j<step_of_freeing_allocing;j++)
		{
			num=rand()%n;
			num2=10+rand()%40;
			if (in_use[num]==0)
			{
				//alloc that num
				numbers[num]=error_checking_umalloc_memory(num2*sizeof(double),__func__,__LINE__);
				for (k=0;k<num2;k++)
					numbers[num][k]=0.5+num%10;
				in_use[num]=1;
			}
		}
		
		//step_of_freeing_allocing=step_of_freeing_allocing*(999.0/1000);
		//printf("step:%lf\n",step_of_freeing_allocing);
		
		//if (i%50==0)
		//	print_uheap_lists(1);
	}
	print_uheap_lists(1);
	printf("\n\n");
	printf("Let's find the sum of all.");
	
	sum=0;
	for (i=0;i<n;i++)
	{
		if (in_use[i])
		{
			for (j=0;j<30;j++)
				sum+=numbers[i][j];
		}
	}
	avg=sum/(n*30.0);
	printf("\n\n final avg: %lf\n\n",avg);
	
	free_unsecure_heap();
}


void test_secure_heap_many_allocs_frees(int n)
{
	char * in_use;
	double ** numbers;
	int i,j,num,k,num2;
	double sum;
	double avg;
	init_sheap();

	srand(time(NULL));
	print_sheap_lists(1);
	in_use=error_checking_smalloc_memory(n*sizeof(char),__func__,__LINE__);
	for (k=0;k<n;k++)
	{
		//in_use[k]=1;
		set_char_array_element(in_use,k,1);
	}
	print_sheap_lists(1);
	numbers=error_checking_smalloc_memory(n*sizeof(double*),__func__,__LINE__);
	print_sheap_lists(1);
	for (i=0;i<n;i++)
	{
		set_pointer_array_element(numbers,i,error_checking_smalloc_memory(30*sizeof(double),__func__,__LINE__));
		for (j=0;j<30;j++)
		{
			//numbers[i][j]=0.5+ i%10;
			set_double_array_element(get_pointer_array_element(numbers,i),j,0.5+ i%10);
		}
	}
	sum=0;
	for (i=0;i<n;i++)
	{
		for (j=0;j<30;j++)
		{
			//sum+=numbers[i][j];
			sum+=get_double_array_element(get_pointer_array_element(numbers,i),j);
		}
	}
	avg=sum/(n*30.0);
	printf("\n\navg: %lf\n\n",avg);
	
	//print_sheap_lists(1);
	//print_secure_heap_range(in_use-32,1000);
	//return;
	
	double step_of_freeing_allocing=500;
	int repeats=20;
	for (i=0;i<repeats;i++)
	{
		for (j=0;j<step_of_freeing_allocing;j++)
		{
			num=rand()%n;
			//free that num
			if (get_char_array_element(in_use,num)==1)
			{
				sfree_memory(get_pointer_array_element(numbers,num));
				//in_use[num]=0;
				set_char_array_element(in_use,num,0);
			}
		}
		for (j=0;j<step_of_freeing_allocing;j++)
		{
			num=rand()%n;
			num2=10+rand()%40;
			if (get_char_array_element(in_use,num)==0)
			{
				//alloc that num
				set_pointer_array_element(numbers,num,error_checking_smalloc_memory(num2*sizeof(double),__func__,__LINE__));
				for (k=0;k<num2;k++)
				{
					//numbers[num][k]=0.5+num%10;
					set_double_array_element(get_pointer_array_element(numbers,num),k,0.5+num%10);
				}
				//in_use[num]=1;
				set_char_array_element(in_use,num,1);
			}
		}
		
		//step_of_freeing_allocing=step_of_freeing_allocing*(999.0/1000);
		//printf("step:%lf\n",step_of_freeing_allocing);
		
		//if (i%50==0)
		//	print_sheap_lists(1);
	}
	print_sheap_lists(1);
	printf("\n\n");
	printf("Let's find the sum of all.");
	
	sum=0;
	for (i=0;i<n;i++)
	{
		if (get_char_array_element(in_use,i))
		{
			for (j=0;j<30;j++)
			{
				//sum+=numbers[i][j];
				sum+=get_double_array_element(get_pointer_array_element(numbers,i),j);
			}
		}
	}
	avg=sum/(n*30.0);
	printf("\n\n final avg: %lf\n\n",avg);
	
	free_secure_heap();
}

