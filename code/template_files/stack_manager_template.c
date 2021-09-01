#include "headers_needed.h"


/* The stack memory image should be like ('o'=useful data, 'x'=keyshares, 'm'=mac bytes):
oooxxxxxxmmmooo.....xxxxxxmmmoooxxxxxxmmm
Which means: n times useful data, n times keyshares, n times mac bytes
Let's call these groups of bytes as chunks (of useful data, and of keyshares+macs)
Allocation is done as allocation of a whole number of useful chunks. A chunk is not broken between different allocations.
*/

long total_stack_bytes_allocated; /*total bytes allocated for the secure stack (perhaps different than the amount asked)*/
unsigned char * entire_stack_memory_chunk; /*points to the start of the secure stack*/ /*Now in the secure gloals struct, and we use that one*/
unsigned char* last_unused_stack_memory; /*practically the stack pointer*/
unsigned char * base_pointer_for_stack=0;
unsigned char * temp_base_pointer=0;
unsigned char * returned_addr_after_allocating;
FILE *stack_keyshare_input_file;

//functions included in secure_stack_manipulation_functions_template.c
extern long find_number_of_useful_stack_chunks(long allocated_bytes);
extern int get_ptr_size();
extern chunks_and_old_mem allocate_mem_into_secure_stack(long stack_bytes_to_allocate);
extern unsigned char * allocate_mem_into_secure_stack_in_chunks(long chunks_to_allocate);
extern unsigned char * allocate_mem_into_secure_stack_in_chunks_return_ptr_after_alloc(long chunks_to_allocate);
extern unsigned char * allocate_mem_into_secure_stack_return_ptr_only(long stack_bytes_to_allocate);
extern unsigned char * allocate_mem_into_secure_stack_return_ptr_only_after_alloc(long stack_bytes_to_allocate);
extern void free_mem_from_secure_stack_in_chunks(long chunks_to_free);
extern void free_mem_from_secure_stack(long stack_bytes_to_free);
extern void free_chunks_from_secure_stack(long chunks_to_free);

/*magically gets/produces the next stack keyshare*/
unsigned char get_next_stack_keyshare()
{
  unsigned char ret;
  if (feof(stack_keyshare_input_file))
  {
	perror("Stack:Attempted to read more keyshares that the ones stored\n");
	exit(45);
  }
  //reads one byte
  if( fread(&ret,1,1,stack_keyshare_input_file) != 1 )
  {
	perror("Did not read byte in get_next_keyshare()\n");
	exit(47);
  }
  return ret;

  //return ((unsigned char)rand()%256); //use random values for testing
}


/************************************************************************************************/
/**************************STACK MANIPULATION FUNCTIONS START************************************/
/************************************************************************************************/

/**There are other functions as well, in secure_stack_manipulation_functions_template.c **/


/*Allocates the entire chunck of stack memory.*/
/*The goal is to allocate a space where we can have useful("o") bytes with keyshare bytes("x"), and with mac bytes("m"). The stack memory image should be like:
oooxxxxxxmmmooo.....xxxxxxmmmoooxxxxxxmmm
Which means: n times useful data, n times keyshares, n times mac bytes
*/
unsigned char * allocate_stack_mem()
{
  long stack_bytes_to_allocate;
  unsigned char * stack_mem;
  long a=stack_bytes_to_allocate_on_start;
  long b=stack_bytes_used_for_keyshares;
  long c=stack_bytes_for_useful_data;
  long d=number_of_mac_bytes;
  long element_appearances_in_stack_mem;

  element_appearances_in_stack_mem=(a)/(b+c+d); //this should be an integer, If not, we should allocate a bit more. 

  if (element_appearances_in_stack_mem*c + (element_appearances_in_stack_mem)*b + (element_appearances_in_stack_mem)*d == a) 
  {
	printf("Stack: Great!. No need to allocate more than the defined amount.\n");
	stack_bytes_to_allocate=a;
  }
  else
  {
	printf("Stack: Whoops. We need to allocate a bit more space.\n");
	element_appearances_in_stack_mem++;
	stack_bytes_to_allocate=element_appearances_in_stack_mem*c + (element_appearances_in_stack_mem)*b +(element_appearances_in_stack_mem)*d;
  }
 
  stack_mem = error_checking_malloc(stack_bytes_to_allocate,__func__,__LINE__);


  total_stack_bytes_allocated=stack_bytes_to_allocate;
  //printf("Stack bytes allocated:%ld\n",total_stack_bytes_allocated);
  return stack_mem;
}



//normally frees the memory, not anything fancy.
void free_secure_stack_mem(unsigned char * stack_mem)
{
  free(stack_mem);
}



//initialises stack memory (allocation+ key insertion)
unsigned char * init_stack_mem()
{
  unsigned char * stack_mem;

  //init random seed, in case we need to produce random keyshares (now we read them from file)
  srand(time(NULL));

  stack_mem=allocate_stack_mem();
  stack_keyshare_input_file=fopen("stack_keyshares","rb");
  if(stack_keyshare_input_file==NULL)
  {
	perror("init_mem:stack_keyshares file error\n");
	exit(46);
  }
  insert_keys_into_stack_mem(stack_mem);

  UPDATE_GLOBAL_VAR(globals.entire_stack_memory_chunk,stack_mem);
  entire_stack_memory_chunk=stack_mem;
  
  #if stack_should_grow_to_decreasing_numbers==0
	last_unused_stack_memory=stack_mem;
  #else
	last_unused_stack_memory=stack_mem+total_stack_bytes_allocated;//-1000*(stack_bytes_for_useful_data+stack_bytes_used_for_keyshares+number_of_mac_bytes);
  #endif
  fclose(stack_keyshare_input_file);
   
  return stack_mem;
}

/*Memory printing, for testing purposes*/
void print_stack_mem(unsigned char * stack_mem);
void print_fun_params(fun_params * params);
void print_fun_params_that_point_in_stack(fun_params * params);


/**There are other functions as well, in secure_stack_manipulation_functions_template.c **/

/************************************************************************************************/
/**************************STACK MANIPULATION FUNCTIONS END**************************************/
/************************************************************************************************/

/*The rest are old functions, used for the old implementation of the secure stack*/

/************************************************************************************************/
/*****************************PARAMETER FUNCTIONS START******************************************/
/************************************************************************************************/


/*OBSOLETE, STAYS HERE FOR BACKWARDS COMPATIBILITY*/
/*Initialises a fun_params struct.
 * We use the following convention for the multiple arguments: 
 * First one integer (used as boolean) value: if we actually want any parameters
 * Rest:
 * If we want only non array elements:
 * 1)number of char params
 * 2)char params,one by one (if 1 is not zero). If it is, these parameters do not exist.
 * 3)number of int params
 * 4)int params,one by one (if 3 is not zero). If it is, these parameters do not exist.
 * ...etc.
 * For the pointer and arbitrary pointer params, first we have the num_of_pointer_params,
 * then the sizes of each pointer element(one by one), 
 * and then the pointers (one by one)
  */
fun_params * init_function_params(int want_elements, ...)
{
	fun_params *params;
	va_list multiple_args_list; //for multiple arguments.
	long i;
	long num_of_param;
	long size_of_all_params=0;
	long total_amount_of_chunks_needed=-1; 
	
	va_start(multiple_args_list,want_elements);
	
	params=error_checking_malloc(sizeof(fun_params),__func__,__LINE__);
	
	if (want_elements)
		params->elem_params=error_checking_malloc(sizeof(fun_elem_params),__func__,__LINE__);
	else
		params->elem_params=NULL;
	
			
	if (want_elements)
	{
		//chars
		params->elem_params->num_of_char_params= num_of_param= va_arg(multiple_args_list,long);
		size_of_all_params+=num_of_param*sizeof(char);
		if (num_of_param!=0)
		{
			params->elem_params->char_params=error_checking_malloc(num_of_param*sizeof(char),__func__,__LINE__);
			for (i=0;i<num_of_param;i++)
			{
				params->elem_params->char_params[i]=(char)va_arg(multiple_args_list,int); //the compiler does not like char here	
			}
		}
		else
		{
			params->elem_params->char_params=NULL;
		}
		
		//ints
		params->elem_params->num_of_int_params= num_of_param= va_arg(multiple_args_list,long);
		size_of_all_params+=num_of_param*sizeof(int);
		if (num_of_param!=0)
		{
			params->elem_params->int_params=error_checking_malloc(num_of_param*sizeof(int),__func__,__LINE__);
			for (i=0;i<num_of_param;i++)
			{
				params->elem_params->int_params[i]=va_arg(multiple_args_list,int);	
			}
		}
		else
		{
			params->elem_params->int_params=NULL;
		}
		
		//long ints
		params->elem_params->num_of_long_int_params= num_of_param= va_arg(multiple_args_list,long);
		size_of_all_params+=num_of_param*sizeof(long int);
		if (num_of_param!=0)
		{
			params->elem_params->long_int_params=error_checking_malloc(num_of_param*sizeof(long int),__func__,__LINE__);
			for (i=0;i<num_of_param;i++)
			{
				params->elem_params->long_int_params[i]=va_arg(multiple_args_list,long int);	
			}
		}
		else
		{
			params->elem_params->long_int_params=NULL;
		}
		
		//floats
		params->elem_params->num_of_float_params= num_of_param= va_arg(multiple_args_list,long);
		size_of_all_params+=num_of_param*sizeof(float);
		if (num_of_param!=0)
		{
			params->elem_params->float_params=error_checking_malloc(num_of_param*sizeof(float),__func__,__LINE__);
			for (i=0;i<num_of_param;i++)
			{
				params->elem_params->float_params[i]=(float)va_arg(multiple_args_list,double); //the compiler does not like float here
			}
		}
		else
		{
			params->elem_params->float_params=NULL;
		}
			
		//doubles
		params->elem_params->num_of_double_params= num_of_param= va_arg(multiple_args_list,long);
		size_of_all_params+=num_of_param*sizeof(double);
		if (num_of_param!=0)
		{
			params->elem_params->double_params=error_checking_malloc(num_of_param*sizeof(double),__func__,__LINE__);
			for (i=0;i<num_of_param;i++)
			{
				params->elem_params->double_params[i]=va_arg(multiple_args_list,double);	
			}
		}
		else
		{
			params->elem_params->double_params=NULL;
		}
		
		
		//pointers
		params->elem_params->num_of_pointer_params= num_of_param= va_arg(multiple_args_list,long);
		size_of_all_params+=num_of_param*sizeof(void*);
		if (num_of_param!=0)
		{	
			params->elem_params->pointer_params_sizes=error_checking_malloc(num_of_param*sizeof(long),__func__,__LINE__);
			for (i=0;i<num_of_param;i++)
			{
				params->elem_params->pointer_params_sizes[i]=va_arg(multiple_args_list,long);
			}
			params->elem_params->pointer_params=error_checking_malloc(num_of_param*sizeof(void *),__func__,__LINE__);
			for (i=0;i<num_of_param;i++)
			{
				params->elem_params->pointer_params[i]=va_arg(multiple_args_list,void *);	
			}
		}
		else
		{
			params->elem_params->pointer_params_sizes=NULL;
			params->elem_params->pointer_params=NULL;
		}
		
		
		//pointers to arbitrary structures
		params->elem_params->num_of_arb_pointer_params= num_of_param= va_arg(multiple_args_list,long);
		if (num_of_param!=0)
		{
			params->elem_params->arb_pointer_params_sizes=error_checking_malloc(num_of_param*sizeof(long),__func__,__LINE__);
			for (i=0;i<num_of_param;i++)
			{
				params->elem_params->arb_pointer_params_sizes[i]=va_arg(multiple_args_list,long);
				size_of_all_params+=params->elem_params->arb_pointer_params_sizes[i];
			}
			
			params->elem_params->arb_pointer_params=error_checking_malloc(num_of_param*sizeof(void *),__func__,__LINE__);
			for (i=0;i<num_of_param;i++)
			{
				params->elem_params->arb_pointer_params[i]=va_arg(multiple_args_list,void *);	
			}
		}
		else
		{
			params->elem_params->arb_pointer_params_sizes=NULL;
			params->elem_params->arb_pointer_params=NULL;
		}
		
		
	}
	
	
	params->total_size_of_all_params=size_of_all_params;
	params->total_amount_of_chunks_needed_in_secure_stack=total_amount_of_chunks_needed;

	va_end(multiple_args_list);
	return params;
}

/*OBSOLETE, STAYS HERE FOR BACKWARDS COMPATIBILITY*/
/*Initialises a fun_params struct with some variables uninitialised, if asked.
 * We use the following convention for the multiple arguments: 
 * First one integer (used as boolean) value: if we actually want any parameters
 * Rest:
 * If we want only non array elements:
 * 1)number of char params
 * 2)number of char params to initialise (if 1 is not zero)
 * 3)char params to initialise,one by one (if 1 is not zero). If it is, these parameters do not exist.
 * The rest of the chars that remain uninitialised, are allocated, but put at the end of the char array in the struct
 * 4)number of int params
 * 5)number of int params to initialise (if 4 is not zero)
 * 6)int params to initialise,one by one (if 4 is not zero). If it is, these parameters do not exist.
 * The rest of the ints that remain uninitialised, are allocated, but put at the end of the int array in the struct
 * ...etc.
 * For the pointer and arbitrary pointer params, first we have the num_of_pointer_params,
 * then the sizes of each pointer element (one by one),
 * then the number of the ones we want to initialise, 
 * and then the pointers (one by one)
 * 
  */
fun_params * init_function_params_with_uninitialised_elements(int want_elements, ...)
{
	fun_params *params;
	va_list multiple_args_list; //for multiple arguments.
	long i;
	long num_to_initialise;
	long num_of_param;
	long size_of_all_params=0;
	long total_amount_of_chunks_needed=-1;
	
	va_start(multiple_args_list,want_elements);
	
	params=error_checking_malloc(sizeof(fun_params),__func__,__LINE__);
	
	if (want_elements)
		params->elem_params=error_checking_malloc(sizeof(fun_elem_params),__func__,__LINE__);
	else
		params->elem_params=NULL;
	

	if (want_elements)
	{
		//chars
		params->elem_params->num_of_char_params= num_of_param= va_arg(multiple_args_list,long);
		size_of_all_params+=num_of_param*sizeof(char);
		if (num_of_param!=0)
		{
			num_to_initialise=va_arg(multiple_args_list,long int);
			params->elem_params->char_params=error_checking_malloc(num_of_param*sizeof(char),__func__,__LINE__);
			for (i=0;i<num_to_initialise;i++)
			{
				params->elem_params->char_params[i]=(char)va_arg(multiple_args_list,int); //the compiler does not like char here	
			}
		}
		else
		{
			params->elem_params->char_params=NULL;
		}
		
		//ints
		params->elem_params->num_of_int_params= num_of_param= va_arg(multiple_args_list,long);
		size_of_all_params+=num_of_param*sizeof(int);
		if (num_of_param!=0)
		{
			num_to_initialise=va_arg(multiple_args_list,long int);
			params->elem_params->int_params=error_checking_malloc(num_of_param*sizeof(int),__func__,__LINE__);
			for (i=0;i<num_to_initialise;i++)
			{
				params->elem_params->int_params[i]=va_arg(multiple_args_list,int);
			}
		}
		else
		{
			params->elem_params->int_params=NULL;
		}
		
		//long ints
		params->elem_params->num_of_long_int_params= num_of_param= va_arg(multiple_args_list,long);
		size_of_all_params+=num_of_param*sizeof(long int);
		if (num_of_param!=0)
		{
			num_to_initialise=va_arg(multiple_args_list,long int);
			params->elem_params->long_int_params=error_checking_malloc(num_of_param*sizeof(long int),__func__,__LINE__);
			for (i=0;i<num_to_initialise;i++)
			{
				params->elem_params->long_int_params[i]=va_arg(multiple_args_list,long int);	
			}
		}
		else
		{
			params->elem_params->long_int_params=NULL;
		}
		
		//floats
		params->elem_params->num_of_float_params= num_of_param= va_arg(multiple_args_list,long);
		size_of_all_params+=num_of_param*sizeof(float);
		if (num_of_param!=0)
		{
			num_to_initialise=va_arg(multiple_args_list,long int);
			params->elem_params->float_params=error_checking_malloc(num_of_param*sizeof(float),__func__,__LINE__);
			for (i=0;i<num_to_initialise;i++)
			{
				params->elem_params->float_params[i]=(float)va_arg(multiple_args_list,double); //the compiler does not like float here
			}
		}
		else
		{
			params->elem_params->float_params=NULL;
		}
		
		//doubles
		params->elem_params->num_of_double_params= num_of_param= va_arg(multiple_args_list,long);
		size_of_all_params+=num_of_param*sizeof(double);
		if (num_of_param!=0)
		{
			num_to_initialise=va_arg(multiple_args_list,long int);
			params->elem_params->double_params=error_checking_malloc(num_of_param*sizeof(double),__func__,__LINE__);
			for (i=0;i<num_to_initialise;i++)
			{
				params->elem_params->double_params[i]=va_arg(multiple_args_list,double);	
			}
		}
		else
		{
			params->elem_params->double_params=NULL;
		}
		
		//pointers
		params->elem_params->num_of_pointer_params= num_of_param= va_arg(multiple_args_list,long);
		size_of_all_params+=num_of_param*sizeof(void*);
		if (num_of_param!=0)
		{	
			params->elem_params->pointer_params_sizes=error_checking_malloc(num_of_param*sizeof(long),__func__,__LINE__);
			for (i=0;i<num_of_param;i++)
			{
				params->elem_params->pointer_params_sizes[i]=va_arg(multiple_args_list,long);
			}
			
			num_to_initialise=va_arg(multiple_args_list,long int);
			params->elem_params->pointer_params=error_checking_malloc(num_of_param*sizeof(void *),__func__,__LINE__);
			for (i=0;i<num_to_initialise;i++)
			{
				params->elem_params->pointer_params[i]=va_arg(multiple_args_list,void *);	
			}
			//set the rest to NULL
			for (i=num_to_initialise;i<num_of_param;i++)
			{
				params->elem_params->pointer_params[i]=NULL;
			}
		}
		else
		{
			params->elem_params->pointer_params_sizes=NULL;
			params->elem_params->pointer_params=NULL;
		}
		
		//pointers to arbitrary structures
		params->elem_params->num_of_arb_pointer_params= num_of_param= va_arg(multiple_args_list,long);
		if (num_of_param!=0)
		{
			params->elem_params->arb_pointer_params_sizes=error_checking_malloc(num_of_param*sizeof(long),__func__,__LINE__);
			for (i=0;i<num_of_param;i++)
			{
				params->elem_params->arb_pointer_params_sizes[i]=va_arg(multiple_args_list,long);
				size_of_all_params+=params->elem_params->arb_pointer_params_sizes[i];
			}
			
			num_to_initialise=va_arg(multiple_args_list,long int);
			params->elem_params->arb_pointer_params=error_checking_malloc(num_of_param*sizeof(void *),__func__,__LINE__);
			for (i=0;i<num_to_initialise;i++)
			{
				params->elem_params->arb_pointer_params[i]=va_arg(multiple_args_list,void *);	
			}
			//set the rest to NULL
			for (i=num_to_initialise;i<num_of_param;i++)
			{
				params->elem_params->arb_pointer_params[i]=NULL;
			}
		}
		else
		{
			params->elem_params->arb_pointer_params_sizes=NULL;
			params->elem_params->arb_pointer_params=NULL;
		}
	}
	
	
	params->total_size_of_all_params=size_of_all_params;
	params->total_amount_of_chunks_needed_in_secure_stack=total_amount_of_chunks_needed;

	va_end(multiple_args_list);
	return params;
}




/*OBSOLETE, STAYS HERE FOR BACKWARDS COMPATIBILITY*/
/*Puts the parameters into the secure stack. Now the pointers in the fun_params struct
 * point to the secure stack. This is done to find access them at will, in a secure way.
 * Important: The parameters are allocated  and inserted one type (chars,ints...) at once. 
 * This means that a whole number of chunks will be used for each type!
 */ 
fun_params * put_fun_params_into_secure_stack(fun_params * params)
{
	fun_params * ret;
	fun_params * params_in_secure_stack;
	unsigned char * mem_in_secure_stack;
	long number_of_elements;
	long i;
	chunks_and_old_mem chunk_mem_struct;
	
	params_in_secure_stack=error_checking_malloc(sizeof(fun_params),__func__,__LINE__);
	
	//copying structure elements, and inserting into secure stack.
	
	params_in_secure_stack->total_size_of_all_params=params->total_size_of_all_params;
	params_in_secure_stack->total_amount_of_chunks_needed_in_secure_stack=0;
	
	if (params->elem_params!=NULL)
		params_in_secure_stack->elem_params=error_checking_malloc(sizeof(fun_elem_params),__func__,__LINE__);
	else
	{
		params_in_secure_stack->elem_params=NULL;
		printf("No parameters? Strange...\n");
	}
		

	if (params->elem_params!=NULL)
	{
		//chars
		params_in_secure_stack->elem_params->num_of_char_params=params->elem_params->num_of_char_params;
		number_of_elements=params_in_secure_stack->elem_params->num_of_char_params;
		chunk_mem_struct=allocate_mem_into_secure_stack(number_of_elements*sizeof(char));
		mem_in_secure_stack=chunk_mem_struct.old_mem;
		params_in_secure_stack->total_amount_of_chunks_needed_in_secure_stack+=chunk_mem_struct.chunks_allocated;
		params_in_secure_stack->elem_params->char_params=(void *)mem_in_secure_stack;;
		if (mem_in_secure_stack!=NULL)
			insert_data_into_stack_mem(number_of_elements*sizeof(char),
								  (unsigned char *) params->elem_params->char_params,
								  mem_in_secure_stack);
							  
		//ints
		params_in_secure_stack->elem_params->num_of_int_params=params->elem_params->num_of_int_params;
		number_of_elements=params_in_secure_stack->elem_params->num_of_int_params;
		chunk_mem_struct=allocate_mem_into_secure_stack(number_of_elements*sizeof(int));
		mem_in_secure_stack=chunk_mem_struct.old_mem;
		params_in_secure_stack->total_amount_of_chunks_needed_in_secure_stack+=chunk_mem_struct.chunks_allocated;
		params_in_secure_stack->elem_params->int_params=(void *)mem_in_secure_stack;
		if (mem_in_secure_stack!=NULL)
			insert_data_into_stack_mem(number_of_elements*sizeof(int),
								  (unsigned char *) params->elem_params->int_params,
								  mem_in_secure_stack);	
					  
		//long ints
		params_in_secure_stack->elem_params->num_of_long_int_params=params->elem_params->num_of_long_int_params;
		number_of_elements=params_in_secure_stack->elem_params->num_of_long_int_params;
		chunk_mem_struct=allocate_mem_into_secure_stack(number_of_elements*sizeof(long int));
		mem_in_secure_stack=chunk_mem_struct.old_mem;
		params_in_secure_stack->total_amount_of_chunks_needed_in_secure_stack+=chunk_mem_struct.chunks_allocated;
		params_in_secure_stack->elem_params->long_int_params=(void*)mem_in_secure_stack;
		if (mem_in_secure_stack!=NULL)
			insert_data_into_stack_mem(number_of_elements*sizeof(long int),
								  (unsigned char *) params->elem_params->long_int_params,
								  mem_in_secure_stack);
								
		//floats
		params_in_secure_stack->elem_params->num_of_float_params=params->elem_params->num_of_float_params;
		number_of_elements=params_in_secure_stack->elem_params->num_of_float_params;
		chunk_mem_struct=allocate_mem_into_secure_stack(number_of_elements*sizeof(float));
		mem_in_secure_stack=chunk_mem_struct.old_mem;
		params_in_secure_stack->total_amount_of_chunks_needed_in_secure_stack+=chunk_mem_struct.chunks_allocated;
		params_in_secure_stack->elem_params->float_params=(void*)mem_in_secure_stack;
		if (mem_in_secure_stack!=NULL)
			insert_data_into_stack_mem(number_of_elements*sizeof(float),
								  (unsigned char *) params->elem_params->float_params,
								  mem_in_secure_stack);
								  
		//doubles
		params_in_secure_stack->elem_params->num_of_double_params=params->elem_params->num_of_double_params;
		number_of_elements=params_in_secure_stack->elem_params->num_of_double_params;
		chunk_mem_struct=allocate_mem_into_secure_stack(number_of_elements*sizeof(double));
		mem_in_secure_stack=chunk_mem_struct.old_mem;
		params_in_secure_stack->total_amount_of_chunks_needed_in_secure_stack+=chunk_mem_struct.chunks_allocated;
		params_in_secure_stack->elem_params->double_params=(void *)mem_in_secure_stack;
		if (mem_in_secure_stack!=NULL)
			insert_data_into_stack_mem(number_of_elements*sizeof(double),
								  (unsigned char *) params->elem_params->double_params,
								  mem_in_secure_stack);
		
		//pointers
		params_in_secure_stack->elem_params->num_of_pointer_params=params->elem_params->num_of_pointer_params;
		number_of_elements=params_in_secure_stack->elem_params->num_of_pointer_params;
		chunk_mem_struct=allocate_mem_into_secure_stack(number_of_elements*sizeof(void *));
		mem_in_secure_stack=chunk_mem_struct.old_mem;
		params_in_secure_stack->total_amount_of_chunks_needed_in_secure_stack+=chunk_mem_struct.chunks_allocated;
		params_in_secure_stack->elem_params->pointer_params=(void *)mem_in_secure_stack;
		if (mem_in_secure_stack!=NULL)
			insert_data_into_stack_mem(number_of_elements*sizeof(void *),
								  (unsigned char *) params->elem_params->pointer_params,
								  mem_in_secure_stack);
		//and the sizes!
		params_in_secure_stack->elem_params->pointer_params_sizes=error_checking_malloc(number_of_elements*sizeof(long),__func__,__LINE__);
		for (i=0;i<number_of_elements;i++)
			params_in_secure_stack->elem_params->pointer_params_sizes[i]=params->elem_params->pointer_params_sizes[i]; 
		
		//arbitraty pointers
		params_in_secure_stack->elem_params->num_of_arb_pointer_params=params->elem_params->num_of_arb_pointer_params;
		number_of_elements=params_in_secure_stack->elem_params->num_of_arb_pointer_params;
		params_in_secure_stack->elem_params->arb_pointer_params_sizes=error_checking_malloc(number_of_elements*sizeof(long),__func__,__LINE__);
		for (i=0;i<number_of_elements;i++)
			params_in_secure_stack->elem_params->arb_pointer_params_sizes[i]=params->elem_params->arb_pointer_params_sizes[i]; 
		params_in_secure_stack->elem_params->arb_pointer_params=error_checking_malloc(number_of_elements*sizeof(void*),__func__,__LINE__);
		//allocate all these things into the stack
		for (i=0;i<number_of_elements;i++)
		{
			chunk_mem_struct=allocate_mem_into_secure_stack(params_in_secure_stack->elem_params->arb_pointer_params_sizes[i]);
			mem_in_secure_stack=chunk_mem_struct.old_mem;
			params_in_secure_stack->total_amount_of_chunks_needed_in_secure_stack+=chunk_mem_struct.chunks_allocated;
			if (mem_in_secure_stack!=NULL && params->elem_params->arb_pointer_params[i]!=NULL) //if arb_pointer_params[i] is NULL it means that it is not initialised. We only need to allocate.
				insert_data_into_stack_mem(params_in_secure_stack->elem_params->arb_pointer_params_sizes[i],
									  (unsigned char *) params->elem_params->arb_pointer_params[i],
									   mem_in_secure_stack);
			params_in_secure_stack->elem_params->arb_pointer_params[i]=(void *)mem_in_secure_stack;
		}
			
	}
	
		
	ret=params_in_secure_stack;
	return ret;
}

/*OBSOLETE, STAYS HERE FOR BACKWARDS COMPATIBILITY*/
//frees the fun_params structure
void free_fun_params(fun_params* params)
{
	long i;
	if (params!=NULL)
	{
		if (params->elem_params!=NULL)
		{
			free(params->elem_params->char_params);
			free(params->elem_params->int_params);
			free(params->elem_params->long_int_params);
			free(params->elem_params->float_params);
			free(params->elem_params->double_params);
			free(params->elem_params->pointer_params);
			free(params->elem_params->pointer_params_sizes);
			free(params->elem_params->arb_pointer_params_sizes);
			//IMPORTANT: LET the arb_pointer parameter free duty to the user
			/*
			for (i=0;i<params->elem_params->num_of_arb_pointer_params;i++)
				free(params->elem_params->arb_pointer_params[i]);
			*/
			free(params->elem_params);
		}
		free(params);
	}
}

/*OBSOLETE, STAYS HERE FOR BACKWARDS COMPATIBILITY*/
//frees the fun_params structure, but not the pointers that point to the secure stack
void free_fun_params_that_point_to_stack(fun_params* params)
{
	free(params->elem_params->pointer_params_sizes);
	free(params->elem_params->arb_pointer_params_sizes);
	free(params->elem_params);
	free(params);
}

/*OBSOLETE, STAYS HERE FOR BACKWARDS COMPATIBILITY*/
fun_params * put_fun_params_into_secure_stack_and_free(fun_params * params)
{
	fun_params * ret;
	//print_fun_params(params);
	ret=put_fun_params_into_secure_stack(params);
	//print_fun_params_that_point_in_stack(ret);
	free_fun_params(params);
	return ret;
}

/************************************************************************************************/
/*****************************PARAMETER FUNCTIONS END********************************************/
/************************************************************************************************/


/************************************************************************************************/
/*****************************PRINTING FUNCTIONS START*******************************************/
/************************************************************************************************/

/*Memory printing, for testing purposes*/
void print_stack_mem(unsigned char * stack_mem)
{
  long i;
  unsigned char * p;
  p=&stack_mem[0];
  printf("Printing stack memory:\n");
  for (i=0;i<total_stack_bytes_allocated;i++)
  {
	//printf("%#04x ",p[i]);
	printf("0x%02x ",p[i]);
  }
  printf("\n");

}

/*Memory printing in a range, for testing purposes*/
void print_mem_range(unsigned char * mem,long bytes_to_print)
{
  long i;
  unsigned char * p;
  p=&mem[0];
  printf("Printing memory range, start of mem:%ld, number of bytes:%ld:\n",(long)p,bytes_to_print);
  for (i=0;i<bytes_to_print;i++)
  {
	//printf("%#04x ",p[i]);
	printf("0x%02x ",p[i]);
  }
  printf("\n");

}


/*OBSOLETE, STAYS HERE FOR BACKWARDS COMPATIBILITY*/
void print_fun_params(fun_params * params)
{
	long i;
	long num_of_params;
	printf("Printing fun params:\n");
	printf("Total size of all params in bytes: %ld\n",params->total_size_of_all_params);
	printf("Total amount of chunks needed in secure stack: %ld\n",params->total_amount_of_chunks_needed_in_secure_stack);

	//chars
	num_of_params=params->elem_params->num_of_char_params;
	printf("Number of char elements: %ld\n",num_of_params);
	if (num_of_params>0)
	{
		printf("Char elements:\n");
		for (i=0;i<num_of_params;i++)
			printf("%c ",params->elem_params->char_params[i]);
		printf("\n");
	}
	
	//ints
	//chars
	num_of_params=params->elem_params->num_of_int_params;
	printf("Number of int elements: %ld\n",num_of_params);
	if (num_of_params>0)
	{
		printf("Int elements:\n");
		for (i=0;i<num_of_params;i++)
			printf("%d ",params->elem_params->int_params[i]);
		printf("\n");
	}
	
	//long ints
	num_of_params=params->elem_params->num_of_long_int_params;
	printf("Number of long int elements: %ld\n",num_of_params);
	if (num_of_params>0)
	{
		printf("Long int elements:\n");
		for (i=0;i<num_of_params;i++)
			printf("%ld ",params->elem_params->long_int_params[i]);
		printf("\n");
	}
	
	//floats
	num_of_params=params->elem_params->num_of_float_params;
	printf("Number of float elements: %ld\n",num_of_params);
	if (num_of_params>0)
	{
		printf("Float elements:\n");
		for (i=0;i<num_of_params;i++)
			printf("%f ",params->elem_params->float_params[i]);
		printf("\n");
	}
	
	//doubles
	num_of_params=params->elem_params->num_of_double_params;
	printf("Number of double elements: %ld\n",num_of_params);
	if (num_of_params>0)
	{
		printf("Double elements:\n");
		for (i=0;i<num_of_params;i++)
			printf("%lf ",params->elem_params->double_params[i]);
		printf("\n");
	}
	
	//pointers
	num_of_params=params->elem_params->num_of_pointer_params;
	printf("Number of pointer elements: %ld\n",num_of_params);
	if (num_of_params>0)
	{
		printf("Pointer element sizes:\n");
		for (i=0;i<num_of_params;i++)
			printf("%ld ",params->elem_params->pointer_params_sizes[i]);
		printf("\n");
		printf("pointer elements:\n");
		for (i=0;i<num_of_params;i++)
			printf("%ld ",(long)params->elem_params->pointer_params[i]);
		printf("\n");
	}
	
	//arbitrary pointers
	num_of_params=params->elem_params->num_of_arb_pointer_params;
	printf("Number of arb pointer elements: %ld\n",num_of_params);
	if (num_of_params>0)
	{
		printf("Arb pointer element sizes:\n");
		for (i=0;i<num_of_params;i++)
			printf("%ld ",params->elem_params->arb_pointer_params_sizes[i]);
		printf("\n");
		printf("Arb pointers:\n");
		for (i=0;i<num_of_params;i++)
			printf("%ld ",(long)params->elem_params->arb_pointer_params[i]);
		printf("\n");
	}

}

/*OBSOLETE, STAYS HERE FOR BACKWARDS COMPATIBILITY*/
void print_fun_params_that_point_in_stack(fun_params * params)
{
	long i;
	long num_of_params;
	printf("Printing fun params that point in stack:\n");
	printf("Total size of all params in bytes: %ld\n",params->total_size_of_all_params);
	printf("Total amount of chunks needed in secure stack: %ld\n",params->total_amount_of_chunks_needed_in_secure_stack);

	//chars
	num_of_params=params->elem_params->num_of_char_params;
	printf("Number of char elements: %ld\n",num_of_params);
	if (num_of_params>0)
	{
		printf("Char elements:\n");
		for (i=0;i<num_of_params;i++)
			printf("%c ",get_stack_char_array_element(params->elem_params->char_params,i));
		printf("\n");
	}
	
	//ints
	//chars
	num_of_params=params->elem_params->num_of_int_params;
	printf("Number of int elements: %ld\n",num_of_params);
	if (num_of_params>0)
	{
		printf("Int elements:\n");
		for (i=0;i<num_of_params;i++)
			printf("%d ",get_stack_int_array_element(params->elem_params->int_params,i));
		printf("\n");
	}
	
	//long ints
	num_of_params=params->elem_params->num_of_long_int_params;
	printf("Number of long int elements: %ld\n",num_of_params);
	if (num_of_params>0)
	{
		printf("Long int elements:\n");
		for (i=0;i<num_of_params;i++)
			printf("%ld ",get_stack_long_int_array_element(params->elem_params->long_int_params,i));
		printf("\n");
	}
	
	//floats
	num_of_params=params->elem_params->num_of_float_params;
	printf("Number of float elements: %ld\n",num_of_params);
	if (num_of_params>0)
	{
		printf("Float elements:\n");
		for (i=0;i<num_of_params;i++)
			printf("%f ",get_stack_float_array_element(params->elem_params->float_params,i));
		printf("\n");
	}
	
	//doubles
	num_of_params=params->elem_params->num_of_double_params;
	printf("Number of double elements: %ld\n",num_of_params);
	if (num_of_params>0)
	{
		printf("Double elements:\n");
		for (i=0;i<num_of_params;i++)
			printf("%lf ",get_stack_double_array_element(params->elem_params->double_params,i));
		printf("\n");
	}
	
	//pointers
	num_of_params=params->elem_params->num_of_pointer_params;
	printf("Number of pointer elements: %ld\n",num_of_params);
	if (num_of_params>0)
	{
		printf("Pointer element sizes:\n");
		for (i=0;i<num_of_params;i++)
			printf("%ld ",params->elem_params->pointer_params_sizes[i]);
		printf("\n");
		printf("pointer elements:\n");
		for (i=0;i<num_of_params;i++)
			printf("%ld ",(long)get_stack_pointer_array_element(params->elem_params->pointer_params,i));
		printf("\n");
	}
	
	//arbitrary pointers
	num_of_params=params->elem_params->num_of_arb_pointer_params;
	printf("Number of arb pointer elements: %ld\n",num_of_params);
	if (num_of_params>0)
	{
		printf("Arb pointer element sizes:\n");
		for (i=0;i<num_of_params;i++)
			printf("%ld ",params->elem_params->arb_pointer_params_sizes[i]);
		printf("\n");
		printf("Arb pointers:\n");
		for (i=0;i<num_of_params;i++)
			printf("%ld ",(long)params->elem_params->arb_pointer_params[i]);
		printf("\n");
	}
	
	
}


/************************************************************************************************/
/*****************************PRINTING FUNCTIONS END*********************************************/
/************************************************************************************************/


/************************************************************************************************/
/***********************TESTING FUNCTIONS AND INCLUDES START*************************************/
/************************************************************************************************/

/*OBSOLETE, STAYS HERE FOR BACKWARDS COMPATIBILITY*/
fun_params * tower_of_Hanoi_init_secure_template(int n, char fromrod, char torod, char auxrod)
{
	char three_chars[3];
	fun_params * ret;
	long c=stack_bytes_for_useful_data;
	long chunks_needed_chars;
	long chunks_needed_ints;
	chunks_and_old_mem chunk_mem_struct;
	unsigned char * mem_in_secure_stack;
	
	three_chars[0]=fromrod;
	three_chars[1]=torod;
	three_chars[2]=auxrod;
	
	ret=error_checking_malloc(sizeof(fun_params),__func__,__LINE__);
	ret->total_size_of_all_params=7;
	
	
	chunks_needed_chars=3*sizeof(char)/c;
	if (chunks_needed_chars*c < 3*sizeof(char)) chunks_needed_chars++;
	chunks_needed_ints=sizeof(int)/c;
	if (chunks_needed_ints*c < sizeof(int)) chunks_needed_ints++;
	ret->total_amount_of_chunks_needed_in_secure_stack= chunks_needed_ints+chunks_needed_chars;
	
	ret->elem_params=error_checking_malloc(sizeof(fun_elem_params),__func__,__LINE__);
	
	//zero everything
	memset(ret->elem_params,0,sizeof(fun_elem_params));
	
	ret->elem_params->num_of_char_params=3;
	ret->elem_params->num_of_int_params=1;
	
	
	//chars
	chunk_mem_struct=allocate_mem_into_secure_stack(3*sizeof(char));
	mem_in_secure_stack=chunk_mem_struct.old_mem;
	ret->elem_params->char_params=(void *)mem_in_secure_stack;;
	if (mem_in_secure_stack!=NULL)
		insert_data_into_stack_mem(3*sizeof(char),
							  (unsigned char *) &three_chars[0],
							  mem_in_secure_stack);
							  
	//ints
	chunk_mem_struct=allocate_mem_into_secure_stack(sizeof(int));
	mem_in_secure_stack=chunk_mem_struct.old_mem;
	ret->elem_params->int_params=(void *)mem_in_secure_stack;;
	if (mem_in_secure_stack!=NULL)
		insert_data_into_stack_mem(sizeof(int),
							  (unsigned char *) &n,
							  mem_in_secure_stack);
	
	
	return ret;
}




/*Let's include a test suite*/
#include "stack_manager_test_suite.c"



/************************************************************************************************/
/***********************TESTING FUNCTIONS AND INCLUDES END***************************************/
/************************************************************************************************/
