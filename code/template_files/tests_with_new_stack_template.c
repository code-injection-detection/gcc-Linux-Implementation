#include "headers_needed.h"


//DONT USE sizeof() in sizes!! PYTHON does not know that!

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
	RETURN_EXPRESSION: get_stack_long_int(SUM)
	START_OF_FUNCTION : test_custom_function_sum
	
		set_stack_long_int(SUM,get_stack_int(X)+get_stack_int(Y));
		set_stack_pointer(FOO1,STUFF); //careful here! not get_stack_pointer(STUFF)!
		for (set_stack_int(I,0);get_stack_int(I)<5;set_stack_int(I,get_stack_int(I)+1))
		{
			printf("%c ",get_stack_char_array_element(get_stack_pointer(FOO1),get_stack_int(I)));
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
	
		if (get_stack_int(N)==1)
		{
			//printf("Move disk 1 from rod %c to rod %c\n", get_stack_char(A),get_stack_char(B));
			RETURN_POINT_OF_FUNCTION: towers_of_hanoi_sec
		}
		//HEY PYTHON CALLING FUNCTION : towers_of_hanoi_sec |PARAMETERS TO CALL WITH: get_stack_char(A),get_stack_char(C),get_stack_char(B),get_stack_int(N)-1
		//printf("Move disk %d from rod %c to rod %c\n", get_stack_int(N),get_stack_char(A),get_stack_char(B));
		//HEY PYTHON CALLING FUNCTION : towers_of_hanoi_sec| PARAMETERS TO CALL WITH: get_stack_char(C),get_stack_char(B),get_stack_char(A),get_stack_int(N)-1
		RETURN_POINT_OF_FUNCTION: towers_of_hanoi_sec
		
	END_OF_FUNCTION: towers_of_hanoi_sec
	
	
	
	
	
	
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
	
	
	printf("base_pointer:%ld, entire_stack:%ld, last_unused_stack_memory=%ld\n",(long)base_pointer_for_stack,(long)entire_stack_memory_chunk,(long)last_unused_stack_memory);


	/**********************************************************************************/
	/*************************END OF THE REST OF CODE**********************************/
	/**********************************************************************************/
}
