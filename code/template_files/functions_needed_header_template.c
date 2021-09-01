#include "headers_needed.h"


long global_variable_for_rax;
long global_variable_for_flags;
long global_variable_for_what_is_under_rsp;
long temp_stack_for_verification[1000];


void first_function_in_secure_program()
{
	//we need to make this function large enough that it covers more than one block, when the minimum amount of splits is done
	int x;
	#define cmd x=1

	#define ten(a)     a;a;a;a;a;a;a;a;a;a;
	#define hundred(a) ten(ten(a))
	#define thousand(a) ten(hundred(a))
	
	#if num_of_bytes_in_code_chunk<100
		hundred(cmd);
		hundred(cmd);
	#elif num_of_bytes_in_code_chunk<1000
		thousand(cmd);
		thousand(cmd);
	#elif num_of_bytes_in_code_chunk<10000
		ten(thousand(cmd));
		ten(thousand(cmd));
	#else
		hundred(thousand(cmd));
	#endif
	
	#undef cmd
	#undef ten
	#undef hundred
	#undef thousand
}


/******************************************************************************/
/*************************  STACK CANARY STUFF BELOW  *************************/
/******************************************************************************/

#if OPENSSL_VERSION_NUMBER < 0x10100000L
	extern EVP_CIPHER_CTX stack_canary_aes_ctx;
#else
	extern EVP_CIPHER_CTX *stack_canary_aes_ctx;
#endif
void init_stack_canary()
{
	if (use_stack_canaries>0)
	{
		UPDATE_GLOBAL_VAR(globals.stack_canary_value,stack_canary_value_in_global_var); //set the value of the global. Todo: use random initial value?
	}
	if (use_stack_canaries>1)
	{
		#if OPENSSL_VERSION_NUMBER < 0x10100000L
			EVP_CIPHER_CTX_init(&stack_canary_aes_ctx);
		#else
			stack_canary_aes_ctx=EVP_CIPHER_CTX_new();
			EVP_CIPHER_CTX_init(stack_canary_aes_ctx);
		#endif
	}
}

unsigned char stack_canary_result_unopt[aes_block_length];

//enable optimizations, we would like good assembly in this part
#pragma GCC push_options
#pragma GCC optimize ("O2")
void set_stack_canary_in_stack(unsigned char * position_of_block_in_stack)
{
	/*Canary algorithm: k1<-k1+1
						sc<-H(k1)  //Hash=AES(key=fixed)
						(offset global)
	*/
	long global_stack_canary;
	unsigned long * first_8_bytes_of_k1;
	if (use_stack_canaries==1)
	{
		global_stack_canary=GET_GLOBAL_LONG(globals.stack_canary_value);
		set_stack_long_int_array_element(position_of_block_in_stack,0,global_stack_canary);//set the MAC
	}
	else if (use_stack_canaries==2)
	{
		if (world_in_which_we_are==3)
		{
			//pay mac calculation for key fetch
			get_stack_char(position_of_block_in_stack);
		}
		produce_stack_canary_optimized_part(position_of_block_in_stack); //calculate the hash
		insert_data_into_stack_mem(size_of_stack_canaries,produce_stack_canary_optimized_part(position_of_block_in_stack),position_of_block_in_stack);
	}
	else if (use_stack_canaries==3)
	{
		if (world_in_which_we_are==3)
		{
			//pay mac calculation for key fetch
			get_stack_char(position_of_block_in_stack);
			//pay mac calculation for global fetch
			GET_GLOBAL_LONG(globals.place_for_keyshare_accumulator);
		}
		first_8_bytes_of_k1=(unsigned long*)(position_of_block_in_stack+stack_bytes_for_useful_data);
		*(first_8_bytes_of_k1)=*(first_8_bytes_of_k1)+1; //k1<-k1+1
		//offset the global keys
		*((unsigned long*)((unsigned char*)(&globals.place_for_keyshare_accumulator) + number_of_global_useful_bytes))= *((unsigned long*)((unsigned char*)(&globals.place_for_keyshare_accumulator) + number_of_global_useful_bytes)) ^
																									  *(first_8_bytes_of_k1) ^
																									  (*(first_8_bytes_of_k1)-1);
		//pay for the resetting of that global mac (the global keys have changed)
		UPDATE_GLOBAL_VAR(globals.place_for_keyshare_accumulator,42);
		insert_data_into_stack_mem(size_of_stack_canaries,produce_stack_canary_optimized_part(position_of_block_in_stack),position_of_block_in_stack);

	}
}

void print_two_stack_canaries(unsigned char *stack_canary_in_secure_stack,unsigned char *how_stack_canary_should_be)
{
	int i;
	for (i=0;i<size_of_stack_canaries;i++)
	{
		printf("0x%02hhx ",how_stack_canary_should_be[i]);
	}
	printf("\n");
	for (i=0;i<size_of_stack_canaries;i++)
	{
		printf("0x%02hhx ",stack_canary_in_secure_stack[i]);
	}
	printf("\n");
	printf("-------------\n");
}

void check_stack_canary_in_stack(unsigned char * position_of_block_in_stack, int line)
{
	long global_stack_canary;
	unsigned char stack_canary_in_secure_stack[size_of_stack_canaries];
	unsigned long * how_stack_canary_should_be; //normally sizeof(long)==size_of_stack_canaries
	if (use_stack_canaries==1)
	{
		global_stack_canary=GET_GLOBAL_LONG(globals.stack_canary_value);
		get_secure_stack_data(&stack_canary_in_secure_stack[0],size_of_stack_canaries,position_of_block_in_stack,0,0);
		how_stack_canary_should_be=&global_stack_canary; 
	}
	else if (use_stack_canaries==2)
	{
		how_stack_canary_should_be=(unsigned long*)produce_stack_canary_optimized_part(position_of_block_in_stack);
		get_secure_stack_data(&stack_canary_in_secure_stack[0],size_of_stack_canaries,position_of_block_in_stack,0,0); //we pay for the key fetch here
	}
	else if (use_stack_canaries==3)
	{
		//like type 2
		how_stack_canary_should_be=(unsigned long*)produce_stack_canary_optimized_part(position_of_block_in_stack);
		get_secure_stack_data(&stack_canary_in_secure_stack[0],size_of_stack_canaries,position_of_block_in_stack,0,0); //we pay for the key fetch here
	} 

	//print_two_stack_canaries(stack_canary_in_secure_stack,how_stack_canary_should_be);
	//make the actual check
	if (*how_stack_canary_should_be!= *((unsigned long*)stack_canary_in_secure_stack))
	{
		//print_two_stack_canaries(stack_canary_in_secure_stack,how_stack_canary_should_be);
		fprintf(stderr,"ERROR in stack canary, line %d. STACK SMASHING ATTEMPT!\n",line); exit(-1);
	}
}
#pragma GCC pop_options //disable optimizations again

/******************************************************************************/
/*************************  STACK CANARY STUFF ABOVE  *************************/
/******************************************************************************/


void * error_checking_malloc(long size_in_bytes, const char * fun_name,int line)
{
	void * ret;
	
	if (size_in_bytes==0) return NULL; 
	ret=malloc(size_in_bytes);
	if (ret==NULL)
	{
		fprintf(stderr,"malloc failed in function %s, line %d\n",fun_name,line);
		exit(42);
	}
	return ret;
}

//checks that the output of the verification procedure is correct
void verify_all_keyshares_from_file(unsigned char * keys_array)
{
	FILE *all_keyshares_file;
	int i;
	int error=0;
	unsigned char ret;
	
	all_keyshares_file=fopen("all_keyshares_for_verification","rb");
	if(all_keyshares_file==NULL)
	{
		perror("all_keyshares file opening error\n");
		exit(48);
	}
	
	for (i=0;i<number_of_interleaved_keys;i++)
	{
		if (feof(all_keyshares_file))
		{
			perror("All keyshares:Attempted to read more keyshares that the ones stored\n");
			exit(49);
		}
		//reads one byte
		if( fread(&ret,1,1,all_keyshares_file) != 1 )
		{
			perror("Did not read byte in fread(), for all keyshares\n");
			exit(50);
		}
		if (ret!=keys_array[i])
		{
			error=1;
			fprintf(stderr,"ERROR in all keyshares verification! Position:%d Keyshare at first:0x%02x, Keyshare now:0x%02x\n",i,keys_array[i],ret);
		}
	}
	if (error==0)
	{
		fprintf(stderr,"Keyshares ok!\n");
	}
	fclose(all_keyshares_file);
	
}


#define CLEAR_CACHES { \
					flush_data_cache_into_mem(); \
					init_code_cache(); \
					init_data_cache(); \
					}



clock_t _simplestart;
clock_t _simpleend;
clock_t _securestart;
clock_t _secureend;
double _securetime;
double _simpletime;
#define TEST_NORMAL_AND_SECURE_TIME(operation,function_call_normal,function_call_secure) { \
					printf("\n"); \
					printf("Calculating time for " #operation ". Normal " #operation ":\n"); \
					_simplestart=clock(); \
					function_call_normal ;\
					_simpleend=clock(); \
					_simpletime=((double) (_simpleend - _simplestart)) / CLOCKS_PER_SEC; \
					printf("\n"); \
					printf("Normal " #operation ":%lg cpu seconds\n",_simpletime); \
					printf("Secure "  #operation ":\n"); \
					CLEAR_CACHES; \
					_securestart=clock(); \
					count_mac_invocations_in_this_code_part=1;\
					function_call_secure ;\
					count_mac_invocations_in_this_code_part=0;\
					_secureend=clock(); \
					_securetime=((double) (_secureend - _securestart)) / CLOCKS_PER_SEC; \
					printf("\n"); \
					printf("Normal " #operation " time:%lg cpu seconds\n",_simpletime); \
					printf("Secure " #operation " time:%lg cpu seconds\n",_securetime); \
					printf("\n"); \
					printf("Ratio: %lg times slowdown\n",_securetime/_simpletime); \
				} 



//forward declaration of mac calculation functions
void calc_and_set_mac_of_data_sha256(char * input, long length, char * output);


#include "memory_manager.c" //Including the C files because all the functions must be in the same file in order to be secured
#include "heap_manager_new_unsafe.c"
#include "heap_manager_new_secure.c"
#include "stack_manager.c"
#include "general_tests.c"
#include "tests_with_new_stack.c"

//some forward declarations (implemented in verification procedure)
void find_keyshares(int choice);
void install_signal_handler();
void * init_verification_procedure(void * param);
void init_verification_procedure_thread();
int check_next_canaries(void* p);


void init_heap_and_stack_mem()
{
	printf("Initializing heap memory\n");
	printf("bytes_to_allocate_on_start:%d\n",bytes_to_allocate_on_start);

    printf("Init_mem, alloc+key insertion\n");
	init_mem();
	init_sheap();
	printf("If successful, total bytes allocated:%ld\n",total_bytes_allocated);
	
	printf("Initializing stack memory\n");
	printf("Stack bytes_to_allocate_on_start:%d\n",stack_bytes_to_allocate_on_start);

    printf("Init_stack_mem, alloc+key insertion\n");
	init_stack_mem();
	printf("If successful, total bytes allocated:%ld\n",total_stack_bytes_allocated);
		
}


void free_heap_and_stack_memory()
{
	free_secure_mem(entire_memory_chunk);
	free_secure_heap();
	free_secure_stack_mem((unsigned char*)GET_GLOBAL_PTR(globals.entire_stack_memory_chunk));
}


#include "final_mac_checking_functions.c"


