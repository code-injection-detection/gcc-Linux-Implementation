#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include "functions_needed.c" //Including the C file because all the functions must be in the same file in order to be secured

static int static_global_variable_for_testing;


int foo(int x)
{
 int k;
 k=x+2;
 
return k;
}



int main()
{
	char bob[10];
	pid_t pid;
	int i;
	int k;
	int j;
	int n;
	static int static_main_variable_for_testing;
	k=1;
	i=2;
	i++;
	i++;
	i--;
	k=k+i;
	k+=2;
	i++;
	static_main_variable_for_testing=1;
	static_global_variable_for_testing=2;
	
	//initialize memory
	init_heap_and_stack_mem();
	
	
	//setting up signal handler
	install_signal_handler();
	
	
	pid=getpid();
	printf("My pid=%ld\n",(long)pid);

	/*
	//stress a bit
	for (j=1;j<=500000000;j++)
	  k+=i;
	*/
	
 	printf("K=%d\n",k);

 	n=foo(5);
	n=foo2(n);
	printf("n=%d\n",n);

	printf("main is at %p\n", main);


	//find_keyshares();
	//mem_test();
	//list_test();
	simple_array_tests();
	stack_fun_params_test();
	find_keyshares();


	//free memory
	free_heap_and_stack_memory();
	
	return 0;
}



int foo2(int x)
{
	int k;
	k=x+3;
	 
	return k;
}


