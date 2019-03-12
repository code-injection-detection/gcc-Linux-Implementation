#ifndef HEADERS_NEEDED_H
#define HEADERS_NEEDED_H

//here are the definitions of the constants (and other things)
//many of these change by set_correct_defines.py

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <errno.h>
#include <signal.h>
#include <unistd.h>
#include <sys/types.h>
#include <stdarg.h>
#include <string.h>
#include <math.h>
#include <pthread.h>
#include <semaphore.h>
#include <ctype.h>
#include <netdb.h>
#include <sys/time.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <openssl/conf.h>
#include <openssl/evp.h>
#include <openssl/err.h>
#include <openssl/bn.h>
#include <openssl/cmac.h>
#include <xmmintrin.h>
#include <setjmp.h>
#include <ucontext.h>
#include <sys/mman.h>
#include <openssl/aes.h>
#include <assert.h>
#include <sys/resource.h>


#define mac_algorithm 3  //0->sha256,   //PROBLEM WITH code on-the-fly verification
						 //1-> AES_ECB with MAC=x*A+B. Use without key squeezing (typically taken care automatically).
						 //2->CMAC with AES , 
						 //3->AES_CBC with length prepending, 
						 //4->AES_CBC with length prepending and padding after length to reach full block
						 //5->(insecure,for benchmarking) MAC=x*K1+K2, x=last 16 bytes of the useful bytes. Multiplication is done for 128 bit numbers. Use without key squeezing (typically taken care automatically).
						 //6-> get_16_bytes(ECHO_HASH(x))*AES_ECB(K1)+AES_ECB(K2) (not implemented yet)
						 //7-> get_16_bytes(ECHO_HASH(x||keyshares))

#ifndef code_cache_type 
#define code_cache_type 1 
#endif 					  //0 -> fully assosiative
						  //1 -> direct mapped
						  //2 -> set assosiative

#ifndef code_cache_set_assosiative_size 
#define code_cache_set_assosiative_size 2
#endif 					  //the size of the set in the cache

#ifndef data_cache_type
#define data_cache_type 1 
#endif					  //0 -> fully assosiative
						  //1 -> direct mapped
						  //2 -> set assosiative

#ifndef data_cache_set_assosiative_size 					  
#define data_cache_set_assosiative_size 2
#endif					  //the size of the set in the cache



#ifndef number_of_interleaved_keys 
#define number_of_interleaved_keys (32)
#endif				//the keys in code. They are the same everywhere though

#ifndef bytes_used_for_keyshares
#define bytes_used_for_keyshares (32)
#endif				//This one is for the memory, not for the interleaved NOPs. The number should be the same as number_of_interleaved_keys

#ifndef bytes_to_allocate_on_start
#define bytes_to_allocate_on_start (102400)
#endif				//The secure heap bytes (some bytes more may be needed, to complete full blocks)		

#ifndef bytes_for_useful_data
#define bytes_for_useful_data (16)
#endif				//The heap "useful" bytes. Important: It is not (currently) possible to split this bytegroup into multiple parts.
				    //which means that should someone allocate x bytegroups but does not need the last one as a whole, we cannot give the rest of it to someone else

#ifndef number_of_canaries
#define number_of_canaries (3)
#endif				//The number of the canary values before the keyshares in the code, to denote that keyshares follow.

#ifndef canary_value
#define canary_value (0x42)
#endif				//the canary value. Does not matter what it is. Must be the same in the java files.


#ifndef stack_bytes_used_for_keyshares
#define stack_bytes_used_for_keyshares (32)
#endif				//This one is for the stack. The number should be the same as number_of_interleaved_keys

#ifndef stack_bytes_to_allocate_on_start
#define stack_bytes_to_allocate_on_start (102400)
#endif

#ifndef stack_bytes_for_useful_data
#define stack_bytes_for_useful_data (16)
#endif				//practically the "useful" bytes in the stack. Important: It is not (currently) possible to split this bytegroup into multiple parts.
				    //which means that should someone allocate x bytegroups but does not need the last one as a whole, we cannot give the rest of it to someone else

#ifndef number_of_global_useful_bytes
#define number_of_global_useful_bytes (16)
#endif				//The size of the global useful bytes

#ifndef number_of_mac_bytes
#define number_of_mac_bytes (16)
#endif				//The size of the Message Authentication Code (MAC) in bytes. The MAC follows the keyshares


#ifndef insert_parameters_into_new_secure_stack_as_arrays
#define insert_parameters_into_new_secure_stack_as_arrays 1
#endif				//This a boolean variable that selects if we should insert the parameters of a function into the secure stack as arrays or not


#ifndef use_fixed_size_chunks_of_code
#define use_fixed_size_chunks_of_code 1
#endif				//This is a boolean variable that selects if we should use fixed size chunks of useful bytes in code


#ifndef num_of_bytes_in_code_chunk
#define num_of_bytes_in_code_chunk 16
#endif				//This is the number of useful bytes that each code chunk will have


#ifndef num_of_requested_useful_bytes_in_code_chunk
#define num_of_requested_useful_bytes_in_code_chunk (num_of_bytes_in_code_chunk)
#endif				//This is the number of useful bytes that each code chunk will have

#ifndef do_not_mac_what_we_add_in_code
#define do_not_mac_what_we_add_in_code 1
#endif				//This is a boolean variable that denotes if we should mac the extra stuff (verifier,jmps,canaries) that we have put in the code

#ifndef check_code_verification_on_the_fly
#define check_code_verification_on_the_fly 1
#endif				

#ifndef use_inline_code_for_delays
#define use_inline_code_for_delays 0
#endif				//This is a boolean variable that determines if, for delay purposes, we should use extra code in normal functions


#ifndef num_of_cached_blocks_of_code
#define num_of_cached_blocks_of_code 1
#endif				//If a code block is in the cache, it is not verified before execution. If the cache size is 0, then there is no cache!

#ifndef num_of_cached_blocks_of_data
#define num_of_cached_blocks_of_data 1
#endif				//If a data block is in the cache, it is not verified before execution. If the cache size is 0, then there is no cache!


#ifndef ignore_macs_even_if_there_are_mac_bytes
#define ignore_macs_even_if_there_are_mac_bytes 0
#endif				//Ignore calculation of macs even if their number is positive.


#ifndef ignore_macs_last_moment_even_if_there_are_mac_bytes
#define ignore_macs_last_moment_even_if_there_are_mac_bytes 0
#endif				//Ignore calculation of macs even if their number is positive. Only just before mac calculation (verifier code is added for example).


#ifndef treat_loop_counters_as_unsecured_variables
#define treat_loop_counters_as_unsecured_variables 0
#endif				//Treat the loop counters in the secure programs as registers, which means that they do not have to be secured

#ifndef squeeze_keys_when_macing
#define squeeze_keys_when_macing 1
#endif				//reduces the size of the keys from 32 bytes to 16 when calculating mac

#ifndef count_mac_invocations
#define count_mac_invocations 1
#endif				//counts the mac invocations in order to calculate delay due to macs

#ifndef add_the_padded_nops_in_the_mac_in_fixed_size
#define add_the_padded_nops_in_the_mac_in_fixed_size 1
#endif				//when using fixed size blocks, the mac should be calculated on the padded nops, too

#ifndef force_code_block_split_on_labels_and_calls
#define force_code_block_split_on_labels_and_calls 0
#endif				//does everything properly (+ splits the blocks), but does not add verification code


#ifndef use_code_cache_with_unsplit_blocks
#define use_code_cache_with_unsplit_blocks 1
#endif				//The code blocks that are cached are cached if being unsplit


#ifndef use_code_cache_with_cpu_split_blocks
#define use_code_cache_with_cpu_split_blocks (use_code_cache_with_unsplit_blocks)  //that was the name of the define in previous version (v1)
#endif


#ifndef set_as_given_that_everything_maced_will_be_fixed_and_multiple_of_16
#define set_as_given_that_everything_maced_will_be_fixed_and_multiple_of_16 1
#endif				//this means that we can disable length prepending and padding


#ifndef when_splitting_blocks_do_not_invoke_verif_unless_on_label
#define when_splitting_blocks_do_not_invoke_verif_unless_on_label 0
#endif				//Does not calculate the mac when splitting blocks due to label encounter and we continue normal execution. Only calcs mac when we jump to that label.

#ifndef size_of_jmp_command
#define size_of_jmp_command 5
#endif				//the size of the jmp.d32 <label> command, used when we have fixed size blocks

#ifndef overhead_of_verif
#define overhead_of_verif 7
#endif				//overhead of verification call per block: 7 for fixed size, 14 for variable size (obsolete)

#ifndef using_large_jmps_and_code_blocks_with_3_worlds
#define using_large_jmps_and_code_blocks_with_3_worlds 1
#endif				//using the new implementation which reduces the variables that we have

#ifndef bytes_for_instructions_length
#define bytes_for_instructions_length 2
#endif				//the number of bytes after the canaries that hold the size of the verifications+useful bytes+the jmp bytes

#ifndef verify_everything
#define verify_everything 1
#endif				//third world 

#ifndef use_new_secure_heap
#define use_new_secure_heap 2
#endif				 //should we use the new secure heap? 1-> use it, but do not use the secured global variables for its position/size etc. 2-> use it, with the secured global variables


#ifndef check_for_secure_stack_allocation_overflow
#define check_for_secure_stack_allocation_overflow 0
#endif				//checks if secure stack has enough size left to accommodate for a given secure stack allocation


#ifndef stack_should_grow_to_decreasing_numbers
#define stack_should_grow_to_decreasing_numbers 1
#endif				//if 1, the allocation in the stack should make the stack pointer decrease in number (as stack normally behaves).


#ifndef use_stack_canaries
#define use_stack_canaries 0
#endif				//1->use constant stack canaries against buffer overflows. 2-> use stack canaries different for every block in the secure stack , 3->use cryptographically distinct stack canaries

#ifndef size_of_stack_canaries
#define size_of_stack_canaries 8
#endif	

#ifndef stack_canary_value_in_global_var
#define stack_canary_value_in_global_var (0x4241403938373635)
#endif				//that is the value that will be put in the global variable. The actual stack canary, depending on the value of <use_stack_canaries>, migth be different.

#ifndef world_in_which_we_are
#define world_in_which_we_are 3
#endif				//1->No MACs no verification. 2-> Put MACs but ignore them (no verification), 3-> everything calculated world .  NOPs are padded in ALL worlds.

#ifndef world
#define world (world_in_which_we_are)
#endif				//1->No MACs no verification. 2-> Put MACs but ignore them (no verification), 3-> everything calculated world .  NOPs are padded in ALL worlds.

#ifndef bytes_for_num_of_padded_nops_len
#define bytes_for_num_of_padded_nops_len 2
#endif				//the number of bytes after the canaries+bytes_for_instructions  that hold the number of padded nops

#ifndef all_getter_setter_arguments_point_at_start_of_blocks
#define all_getter_setter_arguments_point_at_start_of_blocks 0
#endif				//Default 0. A pointer to the secure memory given to a getter or a setter may not be at the start of a block 



#include "crypto_and_mac_verify_functions.h"
#include "secure_getters_setters.h"



void calc_and_set_mac_of_data(unsigned char *input,int length_all,int length_useful,unsigned char *output);



/**************************  SOME TYPEDEFS START *********************************/

//the secure heap list metadata
typedef struct sheap_metadata_struct{
	long size; //the size of the USEFUL data IN CHUNKS, NOT IN BYTES (like the unsecure version). Metadata at the start and end are not counted.
	struct sheap_metadata_struct * previous;
	struct sheap_metadata_struct * next;
	long in_use;  //basically a boolean. We reserve more space because of possible future extra functionality.
} sheap_metadata;


/*****  OLD SECURE STACK IMPEMENTATION *****/
//obsolete now, leave for backwards compatibility
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
	long total_amount_of_chunks_needed_in_secure_stack; //when this one is -1 means that the parametee struct does not point to the stack
	fun_elem_params * elem_params;
	//pass weird stuff as parameters: just use void*'s in arb_pointer_params?	
} fun_params;

/*****  OLD SECURE STACK IMPLEMENTATION END *****/


//used as return value for allocate_mem_into_secure_stack() 
typedef struct chunks_and_old_memory{
	long chunks_allocated;
	void * old_mem;
} chunks_and_old_mem;

/**************************  SOME TYPEDEFS END *********************************/


/************************* SECURE GLOBAL DECLARATION *****************************/

/*
Here we declare the globals that will be used in the secure program. We use annotations for python to parse.
Python will then initialize them (with keys + macs) in a struct in main_program.c
*/

//GLOBAL DECLARATION
typedef struct global_variables_struct
{
//ATTENTION: GLOBAL VARIABLE FOLLOWING! | SIZE:double
double global_double_variable_for_testing;
//ATTENTION: GLOBAL VARIABLE FOLLOWING! | SIZE:int
int test_global;
//ATTENTION: GLOBAL VARIABLE FOLLOWING! | SIZE:int 
int secured_i;
//ATTENTION: GLOBAL VARIABLE FOLLOWING! | SIZE:long
long secured_sum;
//ATTENTION: GLOBAL VARIABLE FOLLOWING! | SIZE:pointer
void * entire_stack_memory_chunk;
//ATTENTION: GLOBAL VARIABLE FOLLOWING! | SIZE:pointer
unsigned char * secure_heap;
//ATTENTION: GLOBAL VARIABLE FOLLOWING! | SIZE:pointer
sheap_metadata * sfree_chunks_list;
//ATTENTION: GLOBAL VARIABLE FOLLOWING! | SIZE:pointer
sheap_metadata * salloc_chunks_list;
//ATTENTION: GLOBAL VARIABLE FOLLOWING! | SIZE:long
long sfree_chunks_num;
//ATTENTION: GLOBAL VARIABLE FOLLOWING! | SIZE:long
long salloc_chunks_num;
//ATTENTION: GLOBAL VARIABLE FOLLOWING! | SIZE:int
int size_of_sheap_metadata_in_chunks;
//ATTENTION: GLOBAL VARIABLE FOLLOWING! | SIZE:int || EXTRA_STUFF::: full_type=int
int testinttest;
//ATTENTION: GLOBAL VARIABLE FOLLOWING! | SIZE:long
long stack_canary_value;
//ATTENTION: GLOBAL VARIABLE FOLLOWING! | SIZE:long
long place_for_keyshare_accumulator;
}global_vars;

extern global_vars globals;

/**************************SECURE GLOBAL DECLARATION END *************************/

#endif
