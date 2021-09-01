
void stack_fun_params_test()
{
	fun_params * test_params;
	int i;
	double * double_array;
	
	printf("Allocating double array\n");
	double_array=error_checking_malloc(10*sizeof(double),__func__,__LINE__);
	for (i=0;i<10;i++)
		double_array[i]=100+i;
	

	printf("Initializing fun params\n");
	
	//pass lengths as LONGS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	test_params=init_function_params(1,5L,'c','d','e','f','g',2L,42,41,0L,0L,2L,42.42,56.56,1L,10L,424242,1L,10L*sizeof(double),double_array);
	
	//print_stack_mem(GET_GLOBAL_PTR(globals.entire_stack_memory_chunk));

	printf("Inserting fun params into secure stack\n");
	test_params=put_fun_params_into_secure_stack_and_free(test_params);
	
	//print_stack_mem(GET_GLOBAL_PTR(globals.entire_stack_memory_chunk));
	
	printf("Printing chars\n");
	for (i=0;i<5;i++)
		printf("%c ",get_stack_char_array_element(test_params->elem_params->char_params,i));
	printf("\n");
	
	printf("Printing ints\n");
	for (i=0;i<2;i++)
		printf("%d ",get_stack_int_array_element(test_params->elem_params->int_params,i));
	printf("\n");
	
	printf("Printing doubles\n");
	for (i=0;i<2;i++)
		printf("%lf ",get_stack_double_array_element(test_params->elem_params->double_params,i));
	printf("\n");
	
	
	printf("Changing pointer\n");
	set_stack_pointer_array_element(test_params->elem_params->pointer_params,0,test_params->elem_params->int_params);
	set_stack_int_array_element(get_stack_pointer_array_element(test_params->elem_params->pointer_params,0),0,45);
	printf("Printing ints\n");
	for (i=0;i<2;i++)
		printf("%d ",get_stack_int_array_element(test_params->elem_params->int_params,i));
	printf("\n");
	
	
	printf("Printing array of doubles\n");
	//IMPORTANT!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	//when there is no pre-made way to access the elements (like the doubles here), we should use get/set_arbitrary_block_in_stack()
	for (i=0;i<10;i++)
	{
		printf("i=%d, %lf ",i,get_stack_double_array_element(test_params->elem_params->arb_pointer_params[0],i));
	}
	
	printf("Fetching double array using arbitrary block\n");
	double_array=error_checking_malloc(10*sizeof(double),__func__,__LINE__);
	get_arbitrary_block_in_stack(10*sizeof(double),test_params->elem_params->arb_pointer_params[0],double_array);
	for (i=0;i<10;i++)
	{
		printf("%lg ",double_array[i]);
	}
	printf("\n");
	
	printf("Fetching double array elements (one by one), using arbitrary blocks\n");
	double_array=error_checking_malloc(10*sizeof(double),__func__,__LINE__);
	for (i=0;i<10;i++)
	{
		get_arbitrary_block_in_stack_with_offset(sizeof(double),test_params->elem_params->arb_pointer_params[0],i*sizeof(double),&double_array[i]);
		printf("%lg ",double_array[i]);
	}
	printf("\n");
	
	//free_chunks_from_secure_stack(test_params->total_amount_of_chunks_needed_in_secure_stack);
	//free_fun_params_that_point_to_stack(test_params);
	
	
}

int array_for_hanoi_delay_ints[1];
char array_for_hanoi_delay_chars[3];
int size_for_hanoi_delay;

void towerOfHanoi(int n, char fromrod, char torod, char auxrod)
{
    if (n == 1)
    {
        //printf("\n Move disk 1 from rod %c to rod %c", fromrod, torod);
        return;
    }
#if use_inline_code_for_delays==1
    //for delay, emulating the pushing of parameters into the stack
    //most likely wrong
    /*
    __asm__ ( "pushq %rax;\n" //4 parameters
			  "pushq %rax;\n"
			  "pushq %rax;\n"
			  "pushq %rax;\n" 
			);
	*/
	//for delay, emulating the preliminary work done by our stack implementation
	size_for_hanoi_delay=4;
	array_for_hanoi_delay_ints[0]=n-1;
	size_for_hanoi_delay=3;
	array_for_hanoi_delay_chars[0]=fromrod;
	array_for_hanoi_delay_chars[1]=auxrod;
	array_for_hanoi_delay_chars[2]=torod;
#endif
    towerOfHanoi(n-1, fromrod, auxrod, torod);
#if use_inline_code_for_delays==1
	/*
	__asm__ ( "add $32,%rsp;\n"
			);
	*/
	//nothing
#endif
    //printf("\n Move disk %d from rod %c to rod %c", n, fromrod, torod);
    
#if use_inline_code_for_delays==1
	/*
	__asm__ ( "pushq %rax;\n" //4 parameters
			  "pushq %rax;\n"
			  "pushq %rax;\n"
			  "pushq %rax;\n" 
			);
	*/
	size_for_hanoi_delay=4;
	array_for_hanoi_delay_ints[0]=n-1;
	size_for_hanoi_delay=3;
	array_for_hanoi_delay_chars[0]=auxrod;
	array_for_hanoi_delay_chars[1]=torod;
	array_for_hanoi_delay_chars[2]=fromrod;
#endif
    towerOfHanoi(n-1, auxrod, torod, fromrod);
#if use_inline_code_for_delays==1
	/*
    __asm__ ( "add $32,%rsp;\n"
			);
	*/
#endif
}

//generic way to secure a function
void towerOfHanoi_secure(int n, char fromrod, char torod, char auxrod)
{
	fun_params * hanoi_params;
	hanoi_params=init_function_params(1,3L,fromrod,torod,auxrod,1L,n,0L,0L,0L,0L,0L);
	hanoi_params=put_fun_params_into_secure_stack_and_free(hanoi_params);
	
	if (get_stack_int_array_element(hanoi_params->elem_params->int_params,0)==1)
	{
		/*
		printf("\n Move disk 1 from rod %c to rod %c", get_stack_char_array_element(hanoi_params->elem_params->char_params,0),
													   get_stack_char_array_element(hanoi_params->elem_params->char_params,1));
		*/
		
		free_chunks_from_secure_stack(hanoi_params->total_amount_of_chunks_needed_in_secure_stack);
		free_fun_params_that_point_to_stack(hanoi_params);
		return;
	}
	towerOfHanoi_secure(get_stack_int_array_element(hanoi_params->elem_params->int_params,0)-1, 
						get_stack_char_array_element(hanoi_params->elem_params->char_params,0),
						get_stack_char_array_element(hanoi_params->elem_params->char_params,2), 
						get_stack_char_array_element(hanoi_params->elem_params->char_params,1));
						
	/*
    printf("\n Move disk %d from rod %c to rod %c",get_stack_int_array_element(hanoi_params->elem_params->int_params,0),
												   get_stack_char_array_element(hanoi_params->elem_params->char_params,0),
												   get_stack_char_array_element(hanoi_params->elem_params->char_params,1));
	*/
    
    towerOfHanoi_secure(get_stack_int_array_element(hanoi_params->elem_params->int_params,0)-1, 
						get_stack_char_array_element(hanoi_params->elem_params->char_params,2),
						get_stack_char_array_element(hanoi_params->elem_params->char_params,1), 
						get_stack_char_array_element(hanoi_params->elem_params->char_params,0));
						
					
	free_chunks_from_secure_stack(hanoi_params->total_amount_of_chunks_needed_in_secure_stack);
	free_fun_params_that_point_to_stack(hanoi_params);
}

//tower of Hanoi using specific template for its fun_params struct, i.e. specific for this function
void towerOfHanoi_secure_using_template(int n, char fromrod, char torod, char auxrod)
{
	fun_params * hanoi_params;
	hanoi_params=tower_of_Hanoi_init_secure_template(n,fromrod,torod,auxrod);
	
	if (get_stack_int_array_element(hanoi_params->elem_params->int_params,0)==1)
	{
		/*
		printf("\n Move disk 1 from rod %c to rod %c", get_stack_char_array_element(hanoi_params->elem_params->char_params,0),
													   get_stack_char_array_element(hanoi_params->elem_params->char_params,1));
		*/
		
		free_chunks_from_secure_stack(hanoi_params->total_amount_of_chunks_needed_in_secure_stack);
		free_fun_params_that_point_to_stack(hanoi_params);
		return;
	}
	towerOfHanoi_secure_using_template(get_stack_int_array_element(hanoi_params->elem_params->int_params,0)-1, 
									   get_stack_char_array_element(hanoi_params->elem_params->char_params,0),
									   get_stack_char_array_element(hanoi_params->elem_params->char_params,2), 
									   get_stack_char_array_element(hanoi_params->elem_params->char_params,1));
						
	/*
    printf("\n Move disk %d from rod %c to rod %c",get_stack_int_array_element(hanoi_params->elem_params->int_params,0),
												   get_stack_char_array_element(hanoi_params->elem_params->char_params,0),
												   get_stack_char_array_element(hanoi_params->elem_params->char_params,1));
	*/
    
    towerOfHanoi_secure_using_template(get_stack_int_array_element(hanoi_params->elem_params->int_params,0)-1, 
									   get_stack_char_array_element(hanoi_params->elem_params->char_params,2),
									   get_stack_char_array_element(hanoi_params->elem_params->char_params,1), 
									   get_stack_char_array_element(hanoi_params->elem_params->char_params,0));
						
					
	free_chunks_from_secure_stack(hanoi_params->total_amount_of_chunks_needed_in_secure_stack);
	free_fun_params_that_point_to_stack(hanoi_params);
}


//tower of Hanoi using specific template for its fun_params struct, i.e. specific for this function
//but it has its function code changed too, in the way that the accesses in the secure stack are kind of optimized
//practically,new variables are introduced and they are used to reference the stack, which is a small cheat.
void towerOfHanoi_secure_using_changed_accesses(int n, char fromrod, char torod, char auxrod)
{
	fun_params * hanoi_params;
	void * int_params;
	void * char_params;
	hanoi_params=tower_of_Hanoi_init_secure_template(n,fromrod,torod,auxrod);
	int_params=hanoi_params->elem_params->int_params;
	char_params=hanoi_params->elem_params->char_params;
	
	if (get_stack_int_array_element(int_params,0)==1)
	{
		/*
		printf("\n Move disk 1 from rod %c to rod %c", get_stack_char_array_element(char_params,0),
													   get_stack_char_array_element(char_params,1));
		*/
		
		free_chunks_from_secure_stack(hanoi_params->total_amount_of_chunks_needed_in_secure_stack);
		free_fun_params_that_point_to_stack(hanoi_params);
		return;
	}
	towerOfHanoi_secure_using_template(get_stack_int_array_element(int_params,0)-1, 
									   get_stack_char_array_element(char_params,0),
									   get_stack_char_array_element(char_params,2), 
									   get_stack_char_array_element(char_params,1));
						
	/*
    printf("\n Move disk %d from rod %c to rod %c",get_stack_int_array_element(int_params,0),
												   get_stack_char_array_element(char_params,0),
												   get_stack_char_array_element(char_params,1));
	*/
    
    towerOfHanoi_secure_using_template(get_stack_int_array_element(int_params,0)-1, 
									   get_stack_char_array_element(char_params,2),
									   get_stack_char_array_element(char_params,1), 
									   get_stack_char_array_element(char_params,0));
						
					
	free_chunks_from_secure_stack(hanoi_params->total_amount_of_chunks_needed_in_secure_stack);
	free_fun_params_that_point_to_stack(hanoi_params);
}


