
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
	test_params=init_function_params(1,5L,'c','d','e','f','g',2L,42,41,0L,0L,2L,42.42,56.56,1L,100L,424242,1L,10L*sizeof(double),double_array);
	
	printf("Inserting fun params into secure stack\n");
	test_params=put_fun_params_into_secure_stack_and_free(test_params);
	
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
	
	
}
