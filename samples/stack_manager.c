#include "headers_needed.h"


/* The stack memory image should be like ('o'=useful data, 'x'=keyshares):
oooxxxxxxooo.....xxxxxxoooxxxxxxooo
Which means: n times useful data, (n-1) times keyshares
Let's call these groups of bytes as chunks (of useful data, and of keyshares)
Allocation is done as allocation of a whole number of useful chunks. A chunk is not broken between different allocations.
*/


long total_stack_bytes_allocated; /*total bytes allocated for the secure stack (perhaps different than the amount asked)*/
unsigned char * entire_stack_memory_chunk; /*points to the start of the secure stack*/
unsigned char* last_unused_stack_memory; /*practically the stack pointer*/
FILE *stack_keyshare_input_file;



/*This is the way that the function parameters will be passed, and declared inside a function*/
typedef struct function_element_parameters{
	
	long num_of_char_params;
	char * char_params;
	long num_of_int_params;
	int * int_params;
	long num_of_long_int_params;
	long int * long_int_params;
	long num_of_float_params;
	float * float_params;
	long num_of_double_params;
	double * double_params;
	
	long num_of_pointer_params;
	long * pointer_params_sizes; //how big is each element that pointer points to?
	void ** pointer_params; //array of void * 's (pointers)
	
	//and any other arbitraty structure which must be inserted in the stack
	//perhaps it would be better if we put it outside of the fun_elem_params?
	
	/*the difference between the pointers and the arbitrary pointers is that the pointer values are 
	*inserted in the stack(the pointers themselves)
	*whereas the elements to which the arbitrary pointers point are inserted into the stack*/
	long num_of_arb_pointer_params;
	long * arb_pointer_params_sizes; //how big is each element that pointer points to?
	void ** arb_pointer_params; //array of void * 's (pointers)
	
	
} fun_elem_params;





typedef struct function_parameters{
	
	long total_size_of_all_params;
	fun_elem_params * elem_params;
	//pass weird stuff as parameters: just use void*'s in arb_pointer_params?
	//FIX ME		
} fun_params;




/*Returns the number of the useful chunks in stack memory*/
/*This number (let it be "n") satisfies the equation <useful_bytes_chunk_length>*(n) + <keyshare_bytes_chunk_length>*(n-1)= total_allocated_bytes */
long find_number_of_useful_stack_chunks(long allocated_bytes) //most often allocated bytes == total_bytes_allocated
{
  long a=allocated_bytes;
  long b=stack_bytes_used_for_keyshares;
  long c=stack_bytes_between_keyshares;

  return ((a+b)/(b+c));
}


/*checks whether the size of a pointer is 32 or 64 bits (typically distinguishes between 32 bit and 64 bit systems)*/
int get_ptr_size()
{
	return sizeof(void*);
}


/*Allocates the entire chunck of stack memory.*/
/*The goal is to allocate a space where we can have useful("o") bytes with keyshare bytes("x"). The memory image should be like:
oooxxxxxxooo.....xxxxxxoooxxxxxxooo
Which means: n times useful data, (n-1) times keyshares
*/
unsigned char * allocate_stack_mem()
{
  long stack_bytes_to_allocate;
  unsigned char * stack_mem;
  long a=stack_bytes_to_allocate_on_start;
  long b=stack_bytes_used_for_keyshares;
  long c=stack_bytes_between_keyshares;
  long element_appearances_in_stack_mem;

  element_appearances_in_stack_mem=(a+b)/(b+c); //this should be an integer, If not, we should allocate a bit more. 

  if (element_appearances_in_stack_mem*c + (element_appearances_in_stack_mem-1)*b == a) 
  {
	printf("Stack: Great!. No need to allocate more than the defined amount.\n");
	stack_bytes_to_allocate=a;
  }
  else
  {
	printf("Stack: Whoops. We need to allocate a bit more space.\n");
	element_appearances_in_stack_mem++;
	stack_bytes_to_allocate=element_appearances_in_stack_mem*c + (element_appearances_in_stack_mem-1)*b;
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
  fread(&ret,1,1,stack_keyshare_input_file);
  return ret;

  //return ((unsigned char)rand()%256); //use random values for testing
}



/*Inserts the keyshares into the big chunk of stack memory, leaving gaps for useful data*/
/*Called in the stack memory initialization phase*/
void insert_keys_into_stack_mem(unsigned char * stack_mem)
{
  long i,j;
  unsigned char * p;
  long keyshare_bytecounter;
  int counting_key_bytes=0; //used as boolean

  
  p=&(stack_mem[0]);
  
  keyshare_bytecounter=0;

  //insert keyshares
  for (i=0;i<total_stack_bytes_allocated;)
  {

    if (counting_key_bytes)
    {
		//inserting keys
    	p[i]=get_next_stack_keyshare();
		//printf("got keyshare:0x%02x\n",p[i]);
        keyshare_bytecounter++;
		i++;
    }
    else
    {
		//for printing purposes, insert NULLs
		for (j=0;j<stack_bytes_between_keyshares;j++)
			p[i+j]='\0';

		i+=stack_bytes_between_keyshares;
		counting_key_bytes=1;
    }

    if(keyshare_bytecounter==stack_bytes_used_for_keyshares)
    {
		counting_key_bytes=0;
		keyshare_bytecounter=0;
    }
     
  }

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

  entire_stack_memory_chunk=stack_mem;
  last_unused_stack_memory=stack_mem;
  fclose(stack_keyshare_input_file);
   
  return stack_mem;
}



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




/*Receives "data_size" bytes of data, and inserts them into stack memory. Insertion starts at "stack_mem_where_to_insert".
Returns how many groups (chunks) of useful data have actually been used.*/
long insert_data_into_stack_mem(long data_size,unsigned char * data, unsigned char * stack_mem_where_to_insert)
{
  long i,j;
  unsigned char * p;
  long chunks=0;
  int counting_key_bytes=0; //used as boolean
  long total_data_inserted=0;


  p=&stack_mem_where_to_insert[0];
  i=0;  


  while(total_data_inserted<data_size)
  {
    if (counting_key_bytes)
    {
	    i+=stack_bytes_used_for_keyshares;
	    counting_key_bytes=0;
    }
    else
    {
		//actual insertion
		for (j=0;j<stack_bytes_between_keyshares && (total_data_inserted + j < data_size );j++)
		{
			p[i+j]=data[total_data_inserted+j];
		}
		
		total_data_inserted+=j;
		chunks++;

		i+=stack_bytes_between_keyshares;
		counting_key_bytes=1;	
    }  

  }

  return chunks;
}



/*Gets data from the secure stack*/
/*res is a pointer to where the retrieved secure data will be written. The last two arguments are useful if called for an array element.*/
/*Set data_size to the size of the element you want to retrieve. For example "sizeof(int)" */
/*If seeking an array element, set isarray = 1. Set data_start to the start of the array*/
/*If not seeking an array element, set isarray to 0. Then arrayindex will be ignored*/
/*If isarray = 2, then this means that we want a block of data from *data_start, with offset <arrayindex> *BYTES*!*/
/*Works only for 1-d arrays, 2 index conversion to 1 index should be done beforehand. Of course in a next implementation ->*/
/*-> the function can be extended to support multiple dimension arrays*/
/*res must have been pre-allocated.*/
void get_secure_stack_data(void * res,long data_size, unsigned char * data_start, int isarray, long arrayindex)
{
  
  unsigned char* result;
  long i,j,k;
  unsigned char * p;
  long total_data_retrieved=0;
  int counting_key_bytes=0; //used as boolean
  long chunks_forward;
  long data_size_for_offset;

  result=res;

  p=data_start;

 
  if (isarray==2)
	data_size_for_offset=1;
  else
    data_size_for_offset=data_size;

  i=0;
  if (isarray)
  {
	
	chunks_forward=(arrayindex*data_size_for_offset)/(stack_bytes_between_keyshares);
	if (chunks_forward*stack_bytes_between_keyshares==(arrayindex*data_size_for_offset))
	{
		p+=chunks_forward*stack_bytes_between_keyshares + chunks_forward * stack_bytes_used_for_keyshares; //We set p to point to the next useful area
	}
	else
	{
		//Well that's a problem. We have to start in the middle of a chunk.
		//What we'll do is that we will retrieve the part up to the end of the chunk.
		p+=chunks_forward*stack_bytes_between_keyshares + chunks_forward * stack_bytes_used_for_keyshares;
		j=(arrayindex*data_size_for_offset)-(chunks_forward*stack_bytes_between_keyshares);

		for (k=0;j+k<stack_bytes_between_keyshares && (total_data_retrieved + k < data_size );k++)
		{
			result[total_data_retrieved+k]=p[j+k];
		}
		total_data_retrieved+=k;
		p+=stack_bytes_between_keyshares + stack_bytes_used_for_keyshares;
	}
  }


  while(total_data_retrieved<data_size)
  {
	if (counting_key_bytes)
	{
		i+=stack_bytes_used_for_keyshares;
		counting_key_bytes=0;
	}
	else
	{
		//actual retrieval
		for (j=0;j<stack_bytes_between_keyshares && (total_data_retrieved + j < data_size );j++)
		{
			result[total_data_retrieved+j]=p[i+j];
		}

		total_data_retrieved+=j;

		i+=stack_bytes_between_keyshares;
		counting_key_bytes=1;	
	} 
  }

}

/*Cousin function of insert_data_into_stack_mem(), but works with array elements as well. */
/*Structure similar to get_secure_stack_data(), reading data from *source*/
void set_secure_stack_data(void * source,long data_size, unsigned char * data_start, int isarray, long arrayindex)
{

  unsigned char* src;
  long i,j,k;
  unsigned char * p;
  long total_data_set=0;
  int counting_key_bytes=0; //used as boolean
  long chunks_forward;
  long data_size_for_offset;

  p=data_start;
  src=source;

  if (isarray==2)
	data_size_for_offset=1;
  else
    data_size_for_offset=data_size;
    
  i=0;
  if (isarray)
  {
	chunks_forward=(arrayindex*data_size_for_offset)/(stack_bytes_between_keyshares);
	if (chunks_forward*stack_bytes_between_keyshares==(arrayindex*data_size_for_offset))
	{
		p+=chunks_forward*stack_bytes_between_keyshares + chunks_forward * stack_bytes_used_for_keyshares; //We set p to point to the next useful area
	}
	else
	{
		//Well that's a problem. We have to start in the middle of a chunk.
		//What we'll do is that we will set the part up to the end of the chunk.
		p+=chunks_forward*stack_bytes_between_keyshares + chunks_forward * stack_bytes_used_for_keyshares;
		j=(arrayindex*data_size_for_offset)-(chunks_forward*stack_bytes_between_keyshares);

		for (k=0;j+k<stack_bytes_between_keyshares && (total_data_set + k < data_size );k++)
		{
			p[j+k]=src[total_data_set+k];
		}
		total_data_set+=k;
		p+=stack_bytes_between_keyshares + stack_bytes_used_for_keyshares;
	}
  }


  while(total_data_set<data_size)
  {
    if (counting_key_bytes)
    {
		i+=stack_bytes_used_for_keyshares;
		counting_key_bytes=0;
    }
    else
    {
		//actual set
		for (j=0;j<stack_bytes_between_keyshares && (total_data_set + j < data_size );j++)
		{
			p[i+j]=src[total_data_set+j];
		}

		total_data_set+=j;

		i+=stack_bytes_between_keyshares;
		counting_key_bytes=1;	
    } 
  }

}




/*Allocates <bytes_to_allocate> bytes into the secure stack. Practically just moves the stack pointer.
 * Returns the address of the stack pointer, before it was moved.
 * Allocates whole number of chunks!
*/
void * allocate_mem_into_secure_stack(long stack_bytes_to_allocate)
{
	void * ret= last_unused_stack_memory;
	long a=stack_bytes_to_allocate;
	long b=stack_bytes_used_for_keyshares;
	long c=stack_bytes_between_keyshares;
	long chunks_needed_to_allocate;
	
	if (stack_bytes_to_allocate==0)
		return NULL;
	
	chunks_needed_to_allocate=stack_bytes_to_allocate/c;
	
	if (chunks_needed_to_allocate*c<stack_bytes_to_allocate)
		chunks_needed_to_allocate++;
	
	//perform the allocation
	last_unused_stack_memory=((unsigned char*)last_unused_stack_memory) + chunks_needed_to_allocate*c+ chunks_needed_to_allocate*b;
	
	return ret;
}





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
		size_of_all_params+=num_of_param*sizeof(void*);
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

	va_end(multiple_args_list);
	return params;
}


/*Initialises a fun_params struct with some variables uninitialised, if asked.
 * We use the following convention for the multiple arguments: 
 * First one integer (used as boolean) value: if we actually want any parameters
 * Rest:
 * If we want only non array elements:
 * 1)number of char params
 * 2)number of char params to initialise
 * 3)char params to initialise,one by one (if 1 is not zero). If it is, these parameters do not exist.
 * The rest of the chars that remain uninitialised, are allocated, but put at the end of the char array in the struct
 * 4)number of int params
 * 5)number of int params to initialise
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
		size_of_all_params+=num_of_param*sizeof(void*);
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

	va_end(multiple_args_list);
	return params;
}





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
	
	params_in_secure_stack=error_checking_malloc(sizeof(fun_params),__func__,__LINE__);
	
	//copying structure elements, and inserting into secure stack.
	
	params_in_secure_stack->total_size_of_all_params=params->total_size_of_all_params;
	
	if (params->elem_params!=NULL)
		params_in_secure_stack->elem_params=error_checking_malloc(sizeof(fun_elem_params),__func__,__LINE__);
	else
		params_in_secure_stack->elem_params=NULL;
		

	if (params->elem_params!=NULL)
	{
		//chars
		params_in_secure_stack->elem_params->num_of_char_params=params->elem_params->num_of_char_params;
		number_of_elements=params_in_secure_stack->elem_params->num_of_char_params;
		mem_in_secure_stack=allocate_mem_into_secure_stack(number_of_elements*sizeof(char));
		params_in_secure_stack->elem_params->char_params=(void *)mem_in_secure_stack;
		if (mem_in_secure_stack!=NULL)
			insert_data_into_stack_mem(number_of_elements*sizeof(char),
								  (unsigned char *) params->elem_params->char_params,
								  mem_in_secure_stack);
								  
		//ints
		params_in_secure_stack->elem_params->num_of_int_params=params->elem_params->num_of_int_params;
		number_of_elements=params_in_secure_stack->elem_params->num_of_int_params;
		mem_in_secure_stack=allocate_mem_into_secure_stack(number_of_elements*sizeof(int));
		params_in_secure_stack->elem_params->int_params=(void *)mem_in_secure_stack;
		if (mem_in_secure_stack!=NULL)
			insert_data_into_stack_mem(number_of_elements*sizeof(int),
								  (unsigned char *) params->elem_params->int_params,
								  mem_in_secure_stack);
								  
		//long ints
		params_in_secure_stack->elem_params->num_of_long_int_params=params->elem_params->num_of_long_int_params;
		number_of_elements=params_in_secure_stack->elem_params->num_of_long_int_params;
		mem_in_secure_stack=allocate_mem_into_secure_stack(number_of_elements*sizeof(long int));
		params_in_secure_stack->elem_params->long_int_params=(void*)mem_in_secure_stack;
		if (mem_in_secure_stack!=NULL)
			insert_data_into_stack_mem(number_of_elements*sizeof(long int),
								  (unsigned char *) params->elem_params->long_int_params,
								  mem_in_secure_stack);
								
		//floats
		params_in_secure_stack->elem_params->num_of_float_params=params->elem_params->num_of_float_params;
		number_of_elements=params_in_secure_stack->elem_params->num_of_float_params;
		mem_in_secure_stack=allocate_mem_into_secure_stack(number_of_elements*sizeof(float));
		params_in_secure_stack->elem_params->float_params=(void*)mem_in_secure_stack;
		if (mem_in_secure_stack!=NULL)
			insert_data_into_stack_mem(number_of_elements*sizeof(float),
								  (unsigned char *) params->elem_params->float_params,
								  mem_in_secure_stack);
								  
		//doubles
		params_in_secure_stack->elem_params->num_of_double_params=params->elem_params->num_of_double_params;
		number_of_elements=params_in_secure_stack->elem_params->num_of_double_params;
		mem_in_secure_stack=allocate_mem_into_secure_stack(number_of_elements*sizeof(double));
		params_in_secure_stack->elem_params->double_params=(void *)mem_in_secure_stack;
		if (mem_in_secure_stack!=NULL)
			insert_data_into_stack_mem(number_of_elements*sizeof(double),
								  (unsigned char *) params->elem_params->double_params,
								  mem_in_secure_stack);
			
		//pointers
		params_in_secure_stack->elem_params->num_of_pointer_params=params->elem_params->num_of_pointer_params;
		number_of_elements=params_in_secure_stack->elem_params->num_of_pointer_params;
		mem_in_secure_stack=allocate_mem_into_secure_stack(number_of_elements*sizeof(void *));
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
			mem_in_secure_stack=allocate_mem_into_secure_stack(params_in_secure_stack->elem_params->arb_pointer_params_sizes[i]);
			if (mem_in_secure_stack!=NULL)
				insert_data_into_stack_mem(params_in_secure_stack->elem_params->arb_pointer_params_sizes[i],
									  (unsigned char *) params->elem_params->arb_pointer_params[i],
									   mem_in_secure_stack);
			params_in_secure_stack->elem_params->arb_pointer_params[i]=(void *)mem_in_secure_stack;
		}
						
	}
	
		
	ret=params_in_secure_stack;
	return ret;
}


//frees the fun_params structure
void free_fun_params(fun_params* params)
{
	long i;
	free(params->elem_params->char_params);
	free(params->elem_params->int_params);
	free(params->elem_params->long_int_params);
	free(params->elem_params->float_params);
	free(params->elem_params->double_params);
	free(params->elem_params->pointer_params);
	free(params->elem_params->pointer_params_sizes);
	free(params->elem_params->arb_pointer_params_sizes);
	for (i=0;i<params->elem_params->num_of_arb_pointer_params;i++)
		free(params->elem_params->arb_pointer_params[i]);
	free(params->elem_params->pointer_params);
	free(params->elem_params);
	free(params);
}


fun_params * put_fun_params_into_secure_stack_and_free(fun_params * params)
{
	fun_params * ret;
	ret=put_fun_params_into_secure_stack(params);
	free_fun_params(params);
	return ret;
}


/************************************************************************************************/
/********************************SECURE GETTERS START********************************************/
/************************************************************************************************/

/*Returns the value of a securely allocated char in the stack.*/
char get_stack_char( void * start_of_secure_data)
{
	char res[1];
	get_secure_stack_data(res,sizeof(char),start_of_secure_data,0,0);
	return (res[0]);
}


int get_stack_int( void * start_of_secure_data)
{
	int res[1];
	get_secure_stack_data(res,sizeof(int),start_of_secure_data,0,0);
	return (res[0]);
}

long int get_stack_long_int( void * start_of_secure_data)
{
	long int res[1];
	get_secure_stack_data(res,sizeof(long int),start_of_secure_data,0,0);
	return res[0];
}

//pay attention to the type of the pointer when calling
void * get_stack_pointer(void * start_of_secure_data)
{
	void * res[1];
	get_secure_stack_data(res,sizeof(void *),start_of_secure_data,0,0);
	return res[0];
}

float get_stack_float( void * start_of_secure_data)
{
	float res[1];
	get_secure_stack_data(res,sizeof(float),start_of_secure_data,0,0);
	return res[0];
}

double get_stack_double( void * start_of_secure_data)
{
	double res[1];
	get_secure_stack_data(res,sizeof(double),start_of_secure_data,0,0);
	return res[0];
}

/*Generic get array element. Writes result to *res, which must have been preallocated*/
void get_stack_array_element(long data_size, void * start_of_array, long index, void * res)
{
	get_secure_stack_data(res,data_size,start_of_array,1,index);
}

char get_stack_char_array_element(void * start_of_array, long index)
{
	char res[1];
	get_secure_stack_data(res,sizeof(char),start_of_array,1,index);
	return res[0];
}

int get_stack_int_array_element(void * start_of_array, long index)
{
	int res[1];
	get_secure_stack_data(res,sizeof(int),start_of_array,1,index);
	return res[0];
}

long int get_stack_long_int_array_element(void * start_of_array, long index)
{
	long int res[1];
	get_secure_stack_data(res,sizeof(long int),start_of_array,1,index);
	return res[0];
}

//pay attention to the type of the pointer when calling
void * get_stack_pointer_array_element(void * start_of_array, long index)
{
	void * res[1];
	get_secure_stack_data(res,sizeof(void *),start_of_array,1,index);
	return res[0];
}

float get_stack_float_array_element(void * start_of_array, long index)
{
	float res[1];
	get_secure_stack_data(res,sizeof(float),start_of_array,1,index);
	return res[0];
}

double get_stack_double_array_element(void * start_of_array, long index)
{
	double res[1];
	get_secure_stack_data(res,sizeof(double),start_of_array,1,index);
	return res[0];
}

//gets a block of data from the secure stack. Writes to *res, which must have been preallocated
void get_arbitrary_block_in_stack(long data_size,void * start_of_block,void * res)
{
	get_secure_stack_data(res,data_size, start_of_block,0,0);
}


//gets a block of data from the secure stack, using offset bytes. Writes to *res, which must have been preallocated
void get_arbitrary_block_in_stack_with_offset(long data_size,void * start,long offset,void * res)
{
	get_secure_stack_data(res,data_size, start,2,offset);
}


/************************************************************************************************/
/********************************SECURE GETTERS END**********************************************/
/************************************************************************************************/


/************************************************************************************************/
/********************************SECURE SETTERS START********************************************/
/************************************************************************************************/

/*Sets a securely allocated char. Of course secure_malloc must have been called before*/
/*The function reads from source */
void set_stack_char( void * start_of_secure_data,char source)
{
  insert_data_into_stack_mem(sizeof(char),(unsigned char *)&source,(unsigned char *)start_of_secure_data);
}

void set_stack_int( void * start_of_secure_data,int source)
{
  insert_data_into_stack_mem(sizeof(int),(unsigned char *)&source,(unsigned char *)start_of_secure_data);
}

void set_stack_long_int( void * start_of_secure_data,long int source)
{
  insert_data_into_stack_mem(sizeof(long int),(unsigned char *)&source,(unsigned char *)start_of_secure_data);
}

//pay attention to the type of the pointer when calling
//Attention! We set the value of a pointer allocated in the secure stack here!
//We do not change the pointer which points to the top of the stack (stack pointer)! 
void set_stack_pointer( void * start_of_secure_data,void * source)
{
  insert_data_into_stack_mem(sizeof(void *),(unsigned char *)&source,(unsigned char *)start_of_secure_data);
}

void set_stack_float( void * start_of_secure_data,float source)
{
  insert_data_into_stack_mem(sizeof(float),(unsigned char *)&source,(unsigned char *)start_of_secure_data);
}

void set_stack_double( void * start_of_secure_data,double source)
{
  insert_data_into_stack_mem(sizeof(double),(unsigned char *)&source,(unsigned char *)start_of_secure_data);
}

/*Generic set_array_element.Reads data from *source*/
void set_stack_array_element(long data_size, void * start_of_array, long index, void * source)
{
	set_secure_stack_data(source,data_size,start_of_array,1,index);
}

void set_stack_char_array_element(void * start_of_array, long index, char source)
{
	char src=source;
	set_secure_stack_data(&src,sizeof(char),start_of_array,1,index);
}

void set_stack_int_array_element(void * start_of_array, long index, int source)
{
	int src=source;
	set_secure_stack_data(&src,sizeof(int),start_of_array,1,index);
}

void set_stack_long_int_array_element(void * start_of_array, long index, long int source)
{
	long int src=source;
	set_secure_stack_data(&src,sizeof(long int),start_of_array,1,index);
}

//pay attention to the type of the pointer when calling
void set_stack_pointer_array_element(void * start_of_array, long index, void * source)
{
	unsigned char * src=source;
	set_secure_stack_data(&src,sizeof(void *),start_of_array,1,index);
}


void set_stack_float_array_element(void * start_of_array, long index, float source)
{
	float src=source;
	set_secure_stack_data(&src,sizeof(float),start_of_array,1,index);
}

void set_stack_double_array_element(void * start_of_array, long index, double source)
{
	double src=source;
	set_secure_stack_data(&src,sizeof(double),start_of_array,1,index);
}

//sets a block of data to the secure stack. reads from *src, which must have been preallocated
void set_arbitrary_block_in_stack(long data_size,void * start_of_block,void * src)
{
	set_secure_stack_data(src,data_size, start_of_block,0,0);
}

//sets a block of data to the secure stack,using offset bytes. reads from *src, which must have been preallocated
void set_arbitrary_block_in_stack_with_offset(long data_size,void * start,long offset,void * src)
{
	set_secure_stack_data(src,data_size, start,2,offset);
}


/************************************************************************************************/
/********************************SECURE SETTERS END**********************************************/
/************************************************************************************************/





/*Let's include a test suite*/
#include "stack_manager_test_suite.c"



