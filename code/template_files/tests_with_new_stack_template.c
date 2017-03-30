#include "headers_needed.h"


//DONT USE sizeof() in sizes!! PYTHON does not know that!

int counter_for_array_fun_parameters;
long size_of_array_for_array_fun_parameters;

void great_function_that_wraps_the_tests()
{
	
	goto end_of_functions_declaration;
	
	/**********************************************************************************/
	/*********************START OF FUNCTIONS DECLARATION*******************************/
	/**********************************************************************************/
	
	
	/****************************test_custom_function_sum*****************************/
	
	//PLEASE PYTHON INIT A FUNCTION HERE
	NAME_OF_FUNCTION: test_custom_function_sum
	RETURN_VALUE_SIZE: long
	//^FOR THE ABOVE: none/int/char etc
	NUM_OF_PARAMETERS: 5
		chars: 0 
		ints: 2 | names: X,Y
		longs: 0
		floats: 0
		doubles: 0
		pointers: 1 | names: TEST_PTR | size_of_pointed_elements:10 
		arb_pointers: 2 | names: STUFF,STUFF2 | size_of_objects:5,7
	END_OF_PARAMETERS
	NUM_OF_LOCAL_VARIABLES: 4
		chars: 0 
		ints: 1 | names: I
		longs: 1 | names: SUM
		floats: 0
		doubles: 0
		pointers: 2 | names: FOO1,FOO2 | size_of_pointed_elements: 1,200
		arb_pointers: 0
	END_OF_LOCAL_VARIABLES
	RETURN_EXPRESSION: GET_STACK_LONG(SUM)
	START_OF_FUNCTION : test_custom_function_sum
	
		SET_STACK_LONG(SUM,GET_STACK_INT(X)+GET_STACK_INT(Y));
		SET_STACK_PTR(FOO1,STUFF); //careful here! not get_stack_pointer(STUFF)!
		for (SET_STACK_INT(I,0);GET_STACK_INT(I)<5;SET_STACK_INT(I,GET_STACK_INT(I)+1))
		{
			printf("%c ",get_stack_char_array_element(GET_STACK_PTR(FOO1),GET_STACK_INT(I)));
		}
		printf("\n");
		RETURN_POINT_OF_FUNCTION: test_custom_function_sum
		
	END_OF_FUNCTION: test_custom_function_sum
	
	
	
	
	/**************************towers_of_hanoi_sec****************************************/
	//PLEASE PYTHON INIT A FUNCTION HERE
	NAME_OF_FUNCTION: towers_of_hanoi_sec
	RETURN_VALUE_SIZE: none
	//^FOR THE ABOVE: none/int/char etc
	NUM_OF_PARAMETERS: 4
		chars: 3 | names: A,B,C
		ints: 1 | names: N
		longs: 0
		floats: 0
		doubles: 0
		pointers: 0
		arb_pointers: 0
	END_OF_PARAMETERS
	NUM_OF_LOCAL_VARIABLES: 0
		chars: 0 
		ints: 0
		longs: 0
		floats: 0
		doubles: 0
		pointers: 0
		arb_pointers: 0
	END_OF_LOCAL_VARIABLES
	RETURN_EXPRESSION: NULL
	START_OF_FUNCTION : towers_of_hanoi_sec
	
		if (GET_STACK_INT(N)==1)
		{
			//printf("Move disk 1 from rod %c to rod %c\n", GET_STACK_CHAR(A),GET_STACK_CHAR(B));
			RETURN_POINT_OF_FUNCTION: towers_of_hanoi_sec
		}
		//HEY PYTHON CALLING FUNCTION : towers_of_hanoi_sec |PARAMETERS TO CALL WITH: GET_STACK_CHAR(A),GET_STACK_CHAR(C),GET_STACK_CHAR(B),GET_STACK_INT(N)-1
		//printf("Move disk %d from rod %c to rod %c\n", GET_STACK_INT(N),GET_STACK_CHAR(A),GET_STACK_CHAR(B));
		//HEY PYTHON CALLING FUNCTION : towers_of_hanoi_sec| PARAMETERS TO CALL WITH: GET_STACK_CHAR(C),GET_STACK_CHAR(B),GET_STACK_CHAR(A),GET_STACK_INT(N)-1
		RETURN_POINT_OF_FUNCTION: towers_of_hanoi_sec
		
	END_OF_FUNCTION: towers_of_hanoi_sec
	
	
	/**************************sieve_of_Eratosthenes_sec****************************************/
	//PLEASE PYTHON INIT A FUNCTION HERE
	NAME_OF_FUNCTION: sieve_of_Eratosthenes_sec
	RETURN_VALUE_SIZE: none
	//^FOR THE ABOVE: none/int/char etc
	NUM_OF_PARAMETERS: 1
		chars: 0 
		ints: 1 | names: NUM
		longs: 0
		floats: 0
		doubles: 0
		pointers: 0
		arb_pointers: 0
	END_OF_PARAMETERS
	NUM_OF_LOCAL_VARIABLES: 3
		chars: 0 
		ints: 3 | names: PRIME_CNT,I,J
		longs: 0
		floats: 0
		doubles: 1 | names: SQUARE_ROOT
		pointers: 1 | names: NUMBERS | size_of_pointed_elements: 1
		arb_pointers: 0
	END_OF_LOCAL_VARIABLES
	RETURN_EXPRESSION: NULL
	START_OF_FUNCTION : sieve_of_Eratosthenes_sec
	
		//square_root=sqrt(num);
		SET_STACK_DOUBLE(SQUARE_ROOT,sqrt(GET_STACK_INT(NUM)));
		
		//numbers=error_checking_malloc((num+1)*sizeof(char),__func__,__LINE__);
		SET_STACK_PTR(NUMBERS,error_checking_managed_secure_malloc(  sizeof(char)*(GET_STACK_INT(NUM)+1)  ,__func__,__LINE__)
					 );
		
		
		//for (i=2;i<=num;i++)
		for (SET_STACK_INT(I,2);
			 GET_STACK_INT(I)<=GET_STACK_INT(NUM);
			 SET_STACK_INT(I,GET_STACK_INT(I)+1) )
		{
			//numbers[i]=1;
			 set_char_array_element(GET_STACK_PTR(NUMBERS),GET_STACK_INT(I),1);
		}

										
		//for (i=2;i<=square_root+1;i++)
		for (SET_STACK_INT(I,2);
			 GET_STACK_INT(I)<=GET_STACK_DOUBLE(SQUARE_ROOT)+1;
			 SET_STACK_INT(I,GET_STACK_INT(I)+1) )
		{
			
			//if (numbers[i]==1)
			if (get_char_array_element(GET_STACK_PTR(NUMBERS),GET_STACK_INT(I))==1)
			{
				
				//for (j=2*i;j<=num;j+=i)
				for (SET_STACK_INT(J,2*GET_STACK_INT(I));
					 GET_STACK_INT(J)<=GET_STACK_INT(NUM);
					 SET_STACK_INT(J,GET_STACK_INT(J)+GET_STACK_INT(I)) )
				{
					//numbers[j]=0;
					set_char_array_element(GET_STACK_PTR(NUMBERS), GET_STACK_INT(J),0);
				}
			}
		}
		
		
		printf("\n");
		printf("Primes with secure sieve:\n");
		//for (i=2;i<=num;i++)
		for (SET_STACK_INT(I,2);
			 GET_STACK_INT(I)<=GET_STACK_INT(NUM);
			 SET_STACK_INT(I,GET_STACK_INT(I)+1) )
		{
			//if (numbers[i]==1)
			if (get_char_array_element(GET_STACK_PTR(NUMBERS),GET_STACK_INT(I))==1)
			{
				//printf("%d ",i);
				printf("%d ",GET_STACK_INT(I));
				
				//prime_cnt++;
				SET_STACK_INT(PRIME_CNT,GET_STACK_INT(PRIME_CNT)+1);
			}
		} 
		printf("\n");
		//printf("Total: %d primes.\n",prime_cnt);
		printf("Total: %d primes.\n",GET_STACK_INT(PRIME_CNT));
		
		
		//free(numbers);
		managed_secure_free(GET_STACK_PTR(NUMBERS));
			
	END_OF_FUNCTION: sieve_of_Eratosthenes_sec
	
	
	
	/**************************find_primes_up_to_a_number_sec****************************************/
	//PLEASE PYTHON INIT A FUNCTION HERE
	NAME_OF_FUNCTION: find_primes_up_to_a_number_sec
	RETURN_VALUE_SIZE: none
	//^FOR THE ABOVE: none/int/char etc
	NUM_OF_PARAMETERS: 1
		chars: 0 
		ints: 1 | names: NUM
		longs: 0
		floats: 0
		doubles: 0
		pointers: 0
		arb_pointers: 0
	END_OF_PARAMETERS
	NUM_OF_LOCAL_VARIABLES: 5
		chars: 1 | names: BOOL
		ints: 3 | names: I,J,NUM_OF_PRIMES_FOUND
		longs: 0
		floats: 0
		doubles: 0
		pointers: 1 | names: PRIMES_FOUND_SO_FAR | size_of_pointed_elements: 4  //sizeof(int)
		arb_pointers: 0
	END_OF_LOCAL_VARIABLES
	RETURN_EXPRESSION: NULL
	START_OF_FUNCTION : find_primes_up_to_a_number_sec
	
		//allocate space
		SET_STACK_PTR(PRIMES_FOUND_SO_FAR, error_checking_managed_secure_malloc(
																		 sizeof(int)*GET_STACK_INT(NUM)
																		 ,__func__,__LINE__));
		printf("Allocated space\n");
		
		
		//num_of_primes=1; //2 is a prime
		SET_STACK_INT(NUM_OF_PRIMES_FOUND,1);
		//primes_found_so_far[num_of_primes-1]=2;
		set_int_array_element(GET_STACK_PTR(PRIMES_FOUND_SO_FAR),
							  GET_STACK_INT(NUM_OF_PRIMES_FOUND)-1,
							  2);
		printf("Set 2 as first prime\n");
		
		
		//for (i=3;i<=num;i+=2)
		for (SET_STACK_INT(I,3);
			 GET_STACK_INT(I)<= GET_STACK_INT(NUM);
			 SET_STACK_INT(I,GET_STACK_INT(I)+2))
			 {
				 //bool=0;
				 SET_STACK_CHAR(BOOL,0);
				 
				 //for (j=2;j<=i/2+1;j++) //not using sqrt here
				 for (SET_STACK_INT(J,2);
					  GET_STACK_INT(J)<= GET_STACK_INT(I)/2+1;
					  SET_STACK_INT(J,GET_STACK_INT(J)+1))
				 {
					//if (i%j==0)
					if (GET_STACK_INT(I)%GET_STACK_INT(J) ==0 )
						{
							//bool=1;
							SET_STACK_CHAR(BOOL,1);
							break;
						}			 
				 }

				//if (bool==0)
				if (GET_STACK_CHAR(BOOL)==0)
				{
					//num_of_primes++;
					SET_STACK_INT(NUM_OF_PRIMES_FOUND,GET_STACK_INT(NUM_OF_PRIMES_FOUND)+1);
					
					//primes_found_so_far[num_of_primes-1]=i;
					set_int_array_element(GET_STACK_PTR(PRIMES_FOUND_SO_FAR),
							  GET_STACK_INT(NUM_OF_PRIMES_FOUND)-1,
							   GET_STACK_INT(I));
				}
				
			 }
		
		
		printf("\nPrimes:\n");
		//print all primes found
		//for (i=0;i<num_of_primes;i++)
		for (SET_STACK_INT(I,0);
			 GET_STACK_INT(I)< GET_STACK_INT(NUM_OF_PRIMES_FOUND);
			 SET_STACK_INT(I,GET_STACK_INT(I)+1))
		{
			//printf("%d ",primes_found_so_far[i]);
			printf("%d ",
				   get_int_array_element(GET_STACK_PTR(PRIMES_FOUND_SO_FAR),
										 GET_STACK_INT(I))
				   );
		}
		printf("\n\n");
		printf("Total number of primes:%d\n",GET_STACK_INT(NUM_OF_PRIMES_FOUND));
		
		
		//free(primes_found_so_far);
		managed_secure_free(GET_STACK_PTR(PRIMES_FOUND_SO_FAR));
		
		
		
			
	END_OF_FUNCTION: find_primes_up_to_a_number_sec
	
	
	
	
	
	/**************************matrix_multiplication_sec****************************************/
	//PLEASE PYTHON INIT A FUNCTION HERE
	NAME_OF_FUNCTION: matrix_multiplication_sec
	RETURN_VALUE_SIZE: none
	//^FOR THE ABOVE: none/int/char etc
	NUM_OF_PARAMETERS: 2
		chars: 0 
		ints: 2 | names: SIZE,MAXNUM
		longs: 0
		floats: 0
		doubles: 0
		pointers: 0
		arb_pointers: 0
	END_OF_PARAMETERS
	NUM_OF_LOCAL_VARIABLES: 5
		chars: 0 
		ints: 5 | names: I,J,K,L,SUM
		longs: 0
		floats: 0
		doubles: 0
		pointers: 0
		arb_pointers: 3 | names: TEST_ARRAY,A,B | size_of_objects:16,1000000,1000000  
		//PYTHON IGNORE: 4*sizeof(int),(sizeof(int)*size*size),(sizeof(int)*size*size) (size=500)
	END_OF_LOCAL_VARIABLES
	RETURN_EXPRESSION: NULL
	START_OF_FUNCTION : matrix_multiplication_sec
	
	
		set_arbitrary_block_in_stack(4*sizeof(int),TEST_ARRAY,test_array);
		/*
		printf("Test array:\n");
		for (SET_STACK_INT(I,0);
			 GET_STACK_INT(I)<4;
			 SET_STACK_INT(I,GET_STACK_INT(I)+1)
			)
			{
				printf("%d ",get_stack_int_array_element(TEST_ARRAY,GET_STACK_INT(I)));
			}
		printf("\n");
		*/
		
		for (SET_STACK_INT(I,0);
		 GET_STACK_INT(I)<GET_STACK_INT(SIZE);
		 SET_STACK_INT(I,GET_STACK_INT(I)+1)
		)
		{
			
			for (SET_STACK_INT(J,0);
				 GET_STACK_INT(J)<GET_STACK_INT(SIZE);
				 SET_STACK_INT(J,GET_STACK_INT(J)+1)
				)
				 {
					//a[i][j]=matrix1[i][j];
					//b[i][j]=matrix2[i][j];
						
					set_stack_int_array_element(A,GET_STACK_INT(I)*GET_STACK_INT(SIZE)+GET_STACK_INT(J),matrix1[GET_STACK_INT(I)][GET_STACK_INT(J)]);
					set_stack_int_array_element(B,GET_STACK_INT(I)*GET_STACK_INT(SIZE)+GET_STACK_INT(J),matrix2[GET_STACK_INT(I)][GET_STACK_INT(J)]);
				 }
		}
		
		
		for (SET_STACK_INT(I,0);
		 GET_STACK_INT(I)<GET_STACK_INT(SIZE);
		 SET_STACK_INT(I,GET_STACK_INT(I)+1)
		)
		{
			
			for (SET_STACK_INT(J,0);
				 GET_STACK_INT(J)<GET_STACK_INT(SIZE);
				 SET_STACK_INT(J,GET_STACK_INT(J)+1)
				)
				 {
					 SET_STACK_INT(SUM,0);
					 for (SET_STACK_INT(K,0);
						 GET_STACK_INT(K)<GET_STACK_INT(SIZE);
						 SET_STACK_INT(K,GET_STACK_INT(K)+1)
						 )
						 {
							 SET_STACK_INT(SUM,GET_STACK_INT(SUM)+
													(get_stack_int_array_element(A,GET_STACK_INT(I)*GET_STACK_INT(SIZE)+GET_STACK_INT(K))*
													 get_stack_int_array_element(B,GET_STACK_INT(K)*GET_STACK_INT(SIZE)+GET_STACK_INT(J))
													)
										  );
							 
						 }
					 matrix_res2[GET_STACK_INT(I)][GET_STACK_INT(J)]=GET_STACK_INT(SUM);
					 
				 }
		
		}
		
		
			
	END_OF_FUNCTION: matrix_multiplication_sec
	
	
	
	
	/**********************************************************************************/
	/***********************END OF FUNCTIONS DECLARATION*******************************/
	/**********************************************************************************/
	end_of_functions_declaration:
	; //don't remove the semicolon
	
	
	/**********************************************************************************/
	/************************START OF THE REST OF CODE*********************************/
	/**********************************************************************************/
	int x;
	char stuff[5]={'a','b','c','d','e'};
	char stuff2[7]={'k','l','m','n','o','p','q'};
	//HEY PYTHON CALLING FUNCTION : test_custom_function_sum | WRITE RESULT TO: x |PARAMETERS TO CALL WITH: 1,2,NULL,stuff,stuff2
	//(like calling:) x=test_custom_function_sum(1,2,NULL,stuff,stuff2)
	printf("x=%d\n",x);
	
	stuff[3]='n';
	//HEY PYTHON CALLING FUNCTION : test_custom_function_sum | WRITE RESULT TO: x |PARAMETERS TO CALL WITH: 5,6,NULL,stuff,stuff2
	printf("x=%d\n",x);
	
	_securestart=clock(); 
	//HEY PYTHON CALLING FUNCTION : towers_of_hanoi_sec |PARAMETERS TO CALL WITH: 'a','c','b',3
	_secureend=clock(); 
	_securetime=((double) (_secureend - _securestart)) / CLOCKS_PER_SEC; 
	printf("\n"); 
	printf("New Secure hanoi time:%lg cpu seconds\n",_securetime); 
	
	/*
	_securestart=clock(); 
	//HEY PYTHON CALLING FUNCTION : sieve_of_Eratosthenes_sec | PARAMETERS TO CALL WITH: 20000000
	_secureend=clock(); 
	_securetime=((double) (_secureend - _securestart)) / CLOCKS_PER_SEC; 
	printf("\n"); 
	printf("New Secure Sieve of Eratosthenes time:%lg cpu seconds\n",_securetime); 
	*/
	
	/*
	_securestart=clock(); 
	//HEY PYTHON CALLING FUNCTION : find_primes_up_to_a_number_sec | PARAMETERS TO CALL WITH: 70000
	_secureend=clock(); 
	_securetime=((double) (_secureend - _securestart)) / CLOCKS_PER_SEC; 
	printf("\n"); 
	printf("New Secure find_primes_up_to_a_number time:%lg cpu seconds\n",_securetime);
	*/
	
	/*
	 _securestart=clock(); 
	//HEY PYTHON CALLING FUNCTION : matrix_multiplication_sec | PARAMETERS TO CALL WITH: 300,2000
	_secureend=clock(); 
	_securetime=((double) (_secureend - _securestart)) / CLOCKS_PER_SEC; 
	printf("\n"); 
	printf("New Secure matrix_multiplication_sec time:%lg cpu seconds\n",_securetime);
	*/
	
	printf("base_pointer:%ld, entire_stack:%ld, last_unused_stack_memory=%ld\n",(long)base_pointer_for_stack,(long)entire_stack_memory_chunk,(long)last_unused_stack_memory);


	/**********************************************************************************/
	/*************************END OF THE REST OF CODE**********************************/
	/**********************************************************************************/
}
