#include "headers_needed.h"

//this is the big function that will engulf the secure functions
//the normal counterparts are in general_tests_template.c
//(hanoi is in stack_manager_test_suite_template.c)

//DONT USE sizeof() in sizes!! PYTHON does not know that!

int counter_for_array_fun_parameters;
long size_of_array_for_array_fun_parameters;
extern unsigned char* last_unused_stack_memory;

void great_function_that_wraps_the_tests()
{
	
	goto end_of_functions_declaration;
	
	/**********************************************************************************/
	/*********************START OF FUNCTIONS DECLARATION*******************************/
	/**********************************************************************************/
	
	
	//BASH PLEASE PLACE THE HEAP MANAGER FUNCTIONS HERE

	;

	//BASH PLEASE PLACE THE TESTS_FOR_STACK_COMMANDS_SUPPORTING_AST_PARSING.c HERE
	
	
	;
	
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
	NUM_OF_LOCAL_VARIABLES: 5
		chars: 0 
		ints: 1 | names: I
		longs: 1 | names: SUM
		floats: 0
		doubles: 0
		pointers: 3 | names: FOO1,FOO2,STATIC_TEST_PTR | size_of_pointed_elements: 1,200,100
		arb_pointers: 0
	END_OF_LOCAL_VARIABLES
	RETURN_EXPRESSION: GET_STACK_LONG(SUM)
	START_OF_FUNCTION : test_custom_function_sum


		//ALLOCATE STACK DATA OF SIZE: 100 | SETTER FOR THEM AND VAR : SET_STACK_PTR(STATIC_TEST_PTR,
		SET_STACK_LONG(SUM,GET_STACK_INT(X)+GET_STACK_INT(Y));
		SET_STACK_PTR(FOO1,STUFF); //careful here! not get_stack_pointer(STUFF)!
		for (SET_STACK_INT(I,0);GET_STACK_INT(I)<5;SET_STACK_INT(I,GET_STACK_INT(I)+1))
		{
			printf("%c ",get_stack_char_array_element(GET_STACK_PTR(FOO1),GET_STACK_INT(I)));
		}
		
		/*
		//let's try to smash the stack
		//for 16 useful bytes: static_test_ptr alloc: 112. ints:16, longs: 16, ptrs: 32, sum for locals: 176. base_pointer=16, ret addr=16. (total:208, chunks:13)
		
		//a first challenge is to go to label_that_prints twice.
		label_that_prints:
			printf("\nHello!\n");
		
		if (0){
			//that will only be executed if the stack is smashed
			label_that_spawns_a_shell:
			;
			char * const args[] = {"/bin/sh", NULL};
			char * const envp[] = {NULL};
			execve ("/bin/sh", args, envp);
		}
		long addr_to_goto=(long) &&label_that_prints;
		long addr_for_shell=(long) &&label_that_spawns_a_shell;
		unsigned char * buf_start=GET_STACK_PTR(STATIC_TEST_PTR);
		for (int ll=0;ll<28;ll++) 
		{
			//print_mem_range(base_pointer_for_stack-200,500);
			//set_stack_char_array_element(buf_start,ll,0x11111111);
			//set_stack_long_int_array_element(buf_start,ll,addr_to_goto);
			set_stack_long_int_array_element(buf_start,ll,addr_for_shell);
			
		}
		//set_stack_long_int_array_element(buf_start,22,GET_GLOBAL_LONG(globals.stack_canary_value)); //write the EXACT position of thecanary in the stack with the proper value
		*/
	
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
		
#if treat_loop_counters_as_unsecured_variables==1
		int primes_num=GET_STACK_INT(NUM);
		for (int i=3;i<=primes_num;i+=2)
		{
#else
		//for (i=3;i<=num;i+=2)
		for (SET_STACK_INT(I,3);
			 GET_STACK_INT(I)<= GET_STACK_INT(NUM);
			 SET_STACK_INT(I,GET_STACK_INT(I)+2))
			 {
#endif
				 //bool=0;
				 SET_STACK_CHAR(BOOL,0);
				 
#if treat_loop_counters_as_unsecured_variables==1
				for (int j=2;j<=i/2+1;j++)
				{
#else
				 //for (j=2;j<=i/2+1;j++) //not using sqrt here
				 for (SET_STACK_INT(J,2);
					  GET_STACK_INT(J)<= GET_STACK_INT(I)/2+1;
					  SET_STACK_INT(J,GET_STACK_INT(J)+1))
				 {
#endif

#if treat_loop_counters_as_unsecured_variables==1
					if (i%j==0)
					{
#else
					//if (i%j==0)
					if (GET_STACK_INT(I)%GET_STACK_INT(J) ==0 )
						{
#endif
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
#if treat_loop_counters_as_unsecured_variables==1
							   i);
#else
							   GET_STACK_INT(I));
#endif
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
		arb_pointers: 4 | names: TEST_ARRAY,A,B,MATRIX_RES2 | size_of_objects:16,2560000,2560000,2560000 
		//PYTHON IGNORE: 4*sizeof(int),(sizeof(int)*size*size),(sizeof(int)*size*size),(sizeof(int)*size*size) (size=800)
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
		
#if treat_loop_counters_as_unsecured_variables==1
		int mm_size=GET_STACK_INT(SIZE);
		for (int i=0;i<mm_size;i++)
		{
			for(int j=0;j<mm_size;j++)
			{
#else
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
#endif
					//a[i][j]=matrix1[i][j];
					//b[i][j]=matrix2[i][j];
#if treat_loop_counters_as_unsecured_variables==1
					set_stack_int_array_element(A,i*mm_size+j,matrix1[i][j]);
					set_stack_int_array_element(B,i*mm_size+j,matrix2[i][j]);
#else
					set_stack_int_array_element(A,GET_STACK_INT(I)*GET_STACK_INT(SIZE)+GET_STACK_INT(J),matrix1[GET_STACK_INT(I)][GET_STACK_INT(J)]);
					set_stack_int_array_element(B,GET_STACK_INT(I)*GET_STACK_INT(SIZE)+GET_STACK_INT(J),matrix2[GET_STACK_INT(I)][GET_STACK_INT(J)]);
#endif
				 }
		}
		
		

#if treat_loop_counters_as_unsecured_variables==1
		for (int i=0;i<mm_size;i++)
		{
			for(int j=0;j<mm_size;j++)
			{
				int mm_sum=0;
				for (int k=0;k<mm_size;k++)
				{
#else		
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
#endif
							 
#if treat_loop_counters_as_unsecured_variables==1
							mm_sum=mm_sum+get_stack_int_array_element(A,i*mm_size+k)*
													 get_stack_int_array_element(B,k*mm_size+j);
						 }
					 set_stack_int_array_element(MATRIX_RES2,i*mm_size+j,mm_sum);
#else
							 SET_STACK_INT(SUM,GET_STACK_INT(SUM)+
													(get_stack_int_array_element(A,GET_STACK_INT(I)*GET_STACK_INT(SIZE)+GET_STACK_INT(K))*
													 get_stack_int_array_element(B,GET_STACK_INT(K)*GET_STACK_INT(SIZE)+GET_STACK_INT(J))
													)
										  );							 
						 }
					 set_stack_int_array_element(MATRIX_RES2,GET_STACK_INT(I)*GET_STACK_INT(SIZE)+GET_STACK_INT(J),GET_STACK_INT(SUM));
#endif					 

				 }
		
		}
		
		
			
	END_OF_FUNCTION: matrix_multiplication_sec
	
	
	
	/**************************calc_determinant_sec****************************************/
	//PLEASE PYTHON INIT A FUNCTION HERE
	NAME_OF_FUNCTION: calc_determinant_sec
	RETURN_VALUE_SIZE: long
	//^FOR THE ABOVE: none/int/char etc
	NUM_OF_PARAMETERS: 2
		chars: 0 
		ints: 1 | names: DIM
		longs: 0
		floats: 0
		doubles: 0
		pointers: 1 | names: MATRIX | size_of_pointed_elements: 2500
		arb_pointers: 0
	END_OF_PARAMETERS
	NUM_OF_LOCAL_VARIABLES: 11
		chars: 0 
		ints: 7 | names: ISMINUS,J,P,Q,T,R,S
		longs: 2 | names: D,DET_RESULT
		floats: 0
		doubles: 0
		pointers: 0
		arb_pointers: 2 | names: SUBMATRIX,SUBDETS | size_of_objects:2500,200
		//PYTHON IGNORE: 2500= sizeof(int)*25*25, where 25 is the maximum possible size, and 200=sizeof(long)*25
	END_OF_LOCAL_VARIABLES
	RETURN_EXPRESSION: GET_STACK_LONG(D)
	START_OF_FUNCTION : calc_determinant_sec
	
	
	if (GET_STACK_INT(DIM)==2)
	{
		//using get_stack_int_array_element() but if dim==2 at first it needs get_int_array_element(). The functionality is the same though.
		SET_STACK_LONG(D,get_stack_int_array_element(GET_STACK_PTR(MATRIX),0*25+0)*
						 get_stack_int_array_element(GET_STACK_PTR(MATRIX),1*25+1) -
						 get_stack_int_array_element(GET_STACK_PTR(MATRIX),0*25+1)*
						 get_stack_int_array_element(GET_STACK_PTR(MATRIX),1*25+0));
		RETURN_POINT_OF_FUNCTION: calc_determinant_sec
	}
	else
	{
		
		for (SET_STACK_INT(J,0);
			 GET_STACK_INT(J)<GET_STACK_INT(DIM);
			 SET_STACK_INT(J,GET_STACK_INT(J)+1))
		{
			SET_STACK_INT(R,0);
			SET_STACK_INT(S,0);
			for (SET_STACK_INT(P,0);
				 GET_STACK_INT(P)<GET_STACK_INT(DIM);
				 SET_STACK_INT(P,GET_STACK_INT(P)+1))
			{
				for (SET_STACK_INT(Q,0);
				  GET_STACK_INT(Q)<GET_STACK_INT(DIM);
				  SET_STACK_INT(Q,GET_STACK_INT(Q)+1))
				{
					if (GET_STACK_INT(P)!=0 && GET_STACK_INT(Q)!=GET_STACK_INT(J))
					{
						set_stack_int_array_element(SUBMATRIX,GET_STACK_INT(R)*25+GET_STACK_INT(S),
													get_stack_int_array_element(GET_STACK_PTR(MATRIX),GET_STACK_INT(P)*25+GET_STACK_INT(Q))
													);
						SET_STACK_INT(S,(GET_STACK_INT(S)+1)%(GET_STACK_INT(DIM)-1));
						if (GET_STACK_INT(S)==0)
							SET_STACK_INT(R,GET_STACK_INT(R)+1);
						
					}
				}
			}
			SET_STACK_INT(ISMINUS,1);
			for (SET_STACK_INT(T,0);
				 GET_STACK_INT(T)<GET_STACK_INT(J);
				 SET_STACK_INT(T,GET_STACK_INT(T)+1))
			{
				 SET_STACK_INT(ISMINUS,(-1)*GET_STACK_INT(ISMINUS)); 
			}
			//securevar means when writing result back, use custom setter. And after that, the name of the setter follows
			 //HEY PYTHON CALLING FUNCTION : calc_determinant_sec | WRITE RESULT TO: DET_RESULT__securevar_SET_STACK_LONG |PARAMETERS TO CALL WITH: GET_STACK_INT(DIM)-1,SUBMATRIX
			 set_stack_long_int_array_element(SUBDETS,GET_STACK_INT(J),GET_STACK_INT(ISMINUS)*GET_STACK_LONG(DET_RESULT));
		}
		SET_STACK_LONG(D,0);
		for (SET_STACK_INT(J,0);
			 GET_STACK_INT(J)<GET_STACK_INT(DIM);
			 SET_STACK_INT(J,GET_STACK_INT(J)+1))
		{
			SET_STACK_LONG(D,GET_STACK_LONG(D)+(get_stack_int_array_element(GET_STACK_PTR(MATRIX),0*25+GET_STACK_INT(J))*get_stack_long_int_array_element(SUBDETS,GET_STACK_INT(J))));
		}

		RETURN_POINT_OF_FUNCTION: calc_determinant_sec
	}
			
	END_OF_FUNCTION: calc_determinant_sec
	
	
	
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
	
	
	//hanoi
	/*
	_securestart=clock(); 
	count_mac_invocations_in_this_code_part=1;
	//HEY PYTHON CALLING FUNCTION : towers_of_hanoi_sec |PARAMETERS TO CALL WITH: 'a','c','b',20
	count_mac_invocations_in_this_code_part=0;
	_secureend=clock(); 
	_securetime=((double) (_secureend - _securestart)) / CLOCKS_PER_SEC; 
	printf("\n"); 
	printf("New Secure towers_of_hanoi time:%lg cpu seconds\n",_securetime); 
	*/
	
	
	//sieve of Eratosthenes
	/*
	_securestart=clock();
	count_mac_invocations_in_this_code_part=1;
	//HEY PYTHON CALLING FUNCTION : sieve_of_Eratosthenes_sec | PARAMETERS TO CALL WITH: 20000000
	count_mac_invocations_in_this_code_part=0;
	_secureend=clock(); 
	_securetime=((double) (_secureend - _securestart)) / CLOCKS_PER_SEC; 
	printf("\n"); 
	printf("New Secure Sieve of Eratosthenes time:%lg cpu seconds\n",_securetime); 
	*/
	
	
	//primes
	/*
	_securestart=clock();
	count_mac_invocations_in_this_code_part=1;
	//HEY PYTHON CALLING FUNCTION : find_primes_up_to_a_number_sec | PARAMETERS TO CALL WITH: 1000
	count_mac_invocations_in_this_code_part=0;
	_secureend=clock(); 
	_securetime=((double) (_secureend - _securestart)) / CLOCKS_PER_SEC; 
	printf("\n"); 
	printf("New Secure find_primes_up_to_a_number time:%lg cpu seconds\n",_securetime);
	*/
	
	
	//matrix multiplication
	/*
	 _securestart=clock();
	 count_mac_invocations_in_this_code_part=1;
	//HEY PYTHON CALLING FUNCTION : matrix_multiplication_sec | PARAMETERS TO CALL WITH: 800,2000
	count_mac_invocations_in_this_code_part=0;
	_secureend=clock(); 
	_securetime=((double) (_secureend - _securestart)) / CLOCKS_PER_SEC; 
	printf("\n"); 
	printf("New Secure matrix_multiplication_sec time:%lg cpu seconds\n",_securetime);
	*/
	
	
	//determinant calculation
	/*
	int size_of_matrix_for_det=7;
	int *matrix_for_det=init_matrix_for_determinant_calc(size_of_matrix_for_det);
	int *matrix_for_det_secure;
	long determinant_end_result;
	int index_foo;
	matrix_for_det_secure=error_checking_managed_secure_malloc(25*25*sizeof(int),__func__,__LINE__);
	for (index_foo=0;index_foo<25*25;index_foo++)
	{
		set_int_array_element(matrix_for_det_secure,index_foo,matrix_for_det[index_foo]);
	}
	_securestart=clock(); 
	count_mac_invocations_in_this_code_part=1;
	//HEY PYTHON CALLING FUNCTION : calc_determinant_sec | WRITE RESULT TO: determinant_end_result | PARAMETERS TO CALL WITH: size_of_matrix_for_det,matrix_for_det_secure
	count_mac_invocations_in_this_code_part=0;
	_secureend=clock(); 
	_securetime=((double) (_secureend - _securestart)) / CLOCKS_PER_SEC; 
	printf("Determinant=%ld\n",determinant_end_result);
	printf("\n"); 
	printf("New Secure calc_determinant_sec time:%lg cpu seconds\n",_securetime); 
	*/
	
	printf("base_pointer:%ld, entire_stack:%ld, last_unused_stack_memory=%ld\n",(long)base_pointer_for_stack,(long)GET_GLOBAL_PTR(globals.entire_stack_memory_chunk),(long)last_unused_stack_memory);
	
	#if 0
	//BASH PLEASE PLACE MORE_TESTS_THAT_USE_NEW_STACK.c HERE
	#endif
	
	
	/*Tests that use pycparser*/
	char operation[100]="Determinant";
	CLEAR_CACHES; 
	_securestart=clock(); 
	count_mac_invocations_in_this_code_part=1;
	//BASH PLEASE PLACE THE JUMP TO THE TESTS THAT USE PYCPARSER HERE
	count_mac_invocations_in_this_code_part=0;
	_secureend=clock(); 
	_securetime=((double) (_secureend - _securestart)) / CLOCKS_PER_SEC;
	printf("\nSecure %s time:%lg cpu seconds\n",operation,_securetime); 
	
	
	//long result_of_two_dets={{{HEY PYTHON CALL FUNCTION WITH NEW TEMPLATE: calc_determinant_sec | HELPING ARGS FOR FUN CALL: aaa="ooo" |PARAMETERS TO CALL WITH : 4852788+7- {{{HEY PYTHON CALL FUNCTION WITH NEW TEMPLATE: calc_determinant_sec | HELPING ARGS FOR FUN CALL: aaa="ooo" |PARAMETERS TO CALL WITH : size_of_matrix_for_det,matrix_for_det_secure }}},matrix_for_det_secure }}} + {{{HEY PYTHON CALL FUNCTION WITH NEW TEMPLATE: calc_determinant_sec | HELPING ARGS FOR FUN CALL: aaa="ooo" |PARAMETERS TO CALL WITH : size_of_matrix_for_det,matrix_for_det_secure }}};
	
	/*
	long result_of_two_dets={{{HEY PYTHON CALL FUNCTION WITH NEW TEMPLATE: calc_determinant_sec | HELPING ARGS FOR FUN CALL: aaa="ooo" |PARAMETERS TO CALL WITH : size_of_matrix_for_det-1+1,matrix_for_det_secure }}} + {{{HEY PYTHON CALL FUNCTION WITH NEW TEMPLATE: calc_determinant_sec | HELPING ARGS FOR FUN CALL: aaa="ooo" |PARAMETERS TO CALL WITH : ({ int x=1; x+=6; x;}),matrix_for_det_secure }}};
	*/
	//printf("result of two dets:%ld\n",result_of_two_dets);
	
	/**********************************************************************************/
	/*************************END OF THE REST OF CODE**********************************/
	/**********************************************************************************/
}
