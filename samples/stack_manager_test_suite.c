
void stack_fun_params_test()
{
	fun_params * test_params;
	int i;
	
	
	printf("\n\nInitializing fun params\n");
	test_params=init_function_params(1,0,5,'c','d','e','f','g',2,42,41,0,0,2,42.42,56.56,0);
	printf("Inserting fun params into secure stack\n");
	test_params=put_fun_params_into_secure_stack_and_free(test_params);
	
	printf("Printing chars\n");
	for (i=0;i<5;i++)
		printf("%c ",get_stack_char_array_element(test_params->non_array_params->char_params,i));
	printf("\n");
	
	printf("Printing ints\n");
	for (i=0;i<2;i++)
		printf("%d ",get_stack_int_array_element(test_params->non_array_params->int_params,i));
	printf("\n");
	
	printf("Printing doubles\n");
	for (i=0;i<2;i++)
		printf("%lf ",get_stack_double_array_element(test_params->non_array_params->double_params,i));
	printf("\n");
	
}
