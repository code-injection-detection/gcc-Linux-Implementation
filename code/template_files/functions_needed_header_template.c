#include "headers_needed.h"


long global_variable_for_rax;
long global_variable_for_flags;
long global_variable_for_what_is_under_rsp;
long temp_stack_for_verification[1000];


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
	free_secure_stack_mem((unsigned char*)GET_GLOBAL_PTR(globals.entire_stack_memory_chunk));
}

#include "mac_handling_functions.c"


