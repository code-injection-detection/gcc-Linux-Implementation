#ifndef HEADERS_NEEDED_H
#define HEADERS_NEEDED_H

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

#define mac_algorithm 3  //0->sha256,   //PROBLEM WITH code on-the-fly verification
						 //1-> AES_ECB with MAC=x*A+B, 
						 //2->CMAC with AES , 
						 //3->AES_CBC with length prepending, 
						 //4->AES_CBC with length prepending and padding after length to reach full block

#define code_cache_type 0 //0 -> fully assosiative
						  //1 -> direct mapped

#define data_cache_type 0 //0 -> fully assosiative
						  //1 -> direct mapped


#ifndef number_of_interleaved_keys 
#define number_of_interleaved_keys (5)
#endif				//in code

#ifndef bytes_used_for_keyshares
#define bytes_used_for_keyshares (5)
#endif				//This one is for the memory, not for the interleaved NOPs. The number should be the same as number_of_interleaved_keys

#ifndef bytes_to_allocate_on_start
#define bytes_to_allocate_on_start (1024)
#endif				//The secure heap bytes (some bytes more may be needed, to complete full blocks)		

#ifndef bytes_for_useful_data
#define bytes_for_useful_data (4)
#endif				//The heap "useful" bytes. Important: It is not (currently) possible to split this bytegroup into multiple parts.
				    //which means that should someone allocate x bytegroups but does not need the last one as a whole, we cannot give the rest of it to someone else

#ifndef number_of_canaries
#define number_of_canaries (2)
#endif				//The number of the canary values before the keyshares in the code, to denote that keyshares follow.
				    //which means that should someone allocate x bytegroups but does not need the last one as a whole, we cannot give the rest of it to someone else

#ifndef canary_value
#define canary_value (0x42)
#endif				//the canary value. Does not matter what it is. Must be the same as in Secure_Machine_Code.java


#ifndef stack_bytes_used_for_keyshares
#define stack_bytes_used_for_keyshares (5)
#endif				//This one is for the stack. The number should be the same as number_of_interleaved_keys

#ifndef stack_bytes_to_allocate_on_start
#define stack_bytes_to_allocate_on_start (1024)
#endif

#ifndef stack_bytes_for_useful_data
#define stack_bytes_for_useful_data (4)
#endif				//practically the "useful" bytes in the stack. Important: It is not (currently) possible to split this bytegroup into multiple parts.
				    //which means that should someone allocate x bytegroups but does not need the last one as a whole, we cannot give the rest of it to someone else

#ifndef number_of_global_useful_bytes
#define number_of_global_useful_bytes (8)
#endif				//The size of the global useful bytes

#ifndef number_of_mac_bytes
#define number_of_mac_bytes (4)
#endif				//The size of the Message Authentication Code (MAC) in bytes. The MAC follows the keyshares


#ifndef insert_parameters_into_new_secure_stack_as_arrays
#define insert_parameters_into_new_secure_stack_as_arrays 0
#endif				//This a boolean variable that selects if we should insert the parameters of a function into the secure stack as arrays or not


#ifndef use_fixed_size_chunks_of_code
#define use_fixed_size_chunks_of_code 1
#endif				//This is a boolean variable that selects if we should use fixed size chunks of useful bytes in code


#ifndef num_of_bytes_in_code_chunk
#define num_of_bytes_in_code_chunk 20
#endif				//This is the number of bytes that each code chunk will be, should the <use_fixed_size_chunks_of_code> is 1


#ifndef do_not_mac_what_we_add_in_code
#define do_not_mac_what_we_add_in_code 1
#endif				//This is a boolean variable that denotes if we should mac the extra stuff (verifier,jmps,canaries) that we have put in the code

#ifndef check_code_verification_on_the_fly
#define check_code_verification_on_the_fly 1
#endif				

#ifndef use_inline_assembly_with_pushes
#define use_inline_assembly_with_pushes 1
#endif				//This is a boolean variable that determines if, for delay purposes, we should use pushes and pops for function parameters in normal functions

#ifndef use_inline_assembly_with_pushes
#define use_inline_assembly_with_pushes 1
#endif				//This is a boolean variable that determines if, for delay purposes, we should use pushes and pops for function parameters in normal functions


#ifndef num_of_cached_blocks_of_code
#define num_of_cached_blocks_of_code 0
#endif				//If a code block is in the cache, it is not verified before execution. If the cache size is 0, then there is no cache!

#ifndef num_of_cached_blocks_of_data
#define num_of_cached_blocks_of_data 0
#endif				//If a data block is in the cache, it is not verified before execution. If the cache size is 0, then there is no cache!


#include "crypto_functions.h"
#include "secure_getters_setters.h"



#if mac_algorithm==0
#define calc_and_set_mac_of_data(input,length_all,length_useful,output) calc_and_set_mac_of_data_sha256((input),(length_all),(output))
#endif
#if mac_algorithm==1
#define calc_and_set_mac_of_data(input,length_all,length_useful,output) calc_and_set_mac_of_data_aes_ecb((input),(length_all),(length_useful),(output))
#endif
#if mac_algorithm==2
#define calc_and_set_mac_of_data(input,length_all,length_useful,output) calc_and_set_mac_of_data_aes_cmac((input),(length_all),(output))
#endif
#if mac_algorithm==3
#define calc_and_set_mac_of_data(input,length_all,length_useful,output) calc_and_set_mac_of_data_aes_cbc((input),(length_all),(output))
#endif
#if mac_algorithm==4
#define calc_and_set_mac_of_data(input,length_all,length_useful,output) calc_and_set_mac_of_data_aes_cbc((input),(length_all),(output))
#endif


/**************************  SOME TYPEDEFS START *********************************/
//OLD SECURE STACK IMPEMENTATION
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


//used as return value for allocate_mem_into_secure_stack
typedef struct chunks_and_old_memory{
	long chunks_allocated;
	void * old_mem;
} chunks_and_old_mem;

/**************************  SOME TYPEDEFS END *********************************/

#endif
