#ifndef CRYPTO_AND_MAC_VERIFY_FUNCTIONS_H
#define CRYPTO_AND_MAC_VERIFY_FUNCTIONS_H

#include "echo_hash.h"

typedef struct info_for_a_block {
	
	long address_of_block_start;
	int position_of_jmp_to_next_block;
	int num_of_actual_bytes_in_current_block; //verifications+useful+jmp
	int num_of_padded_nops;
	int number_of_verifications;
	int * verification_offsets;
	
} block_info;

#define safe_length_for_buffer_storage 33048
#define len_2power128 17 //2^128-1 is 16 bytes.
#define aes_block_length 16

#define good_enough_number_of_max_num_of_blocks 100000

void init_crypto_stuctures(int print,int find_addr_of_first_code_block);
void squeeze_bytes_in_place(unsigned char * arr,int length_of_array);
void calc_mac_aes_ecb(unsigned char *useful_data, int length_in_bytes);
void set_mac_aes_ecb(unsigned char * output);
void clear_crypto_structures();
void encrypt_aes_ecb(unsigned char *buf_to_be_encrypted,int len_of_buf);
void calc_and_set_mac_of_data_aes_ecb(char * input, int length_of_all,int length_of_useful, char * output);
int check_mac_for_error(unsigned char * input, int total_mac_bytes, int useful_mac_bytes);
int check_code_mac_for_error(unsigned char * input, int total_mac_bytes, int useful_mac_bytes);
void set_mac_aes_cmac(unsigned char * output);
void calc_mac_aes_cmac(char * input, int length_of_all);
void calc_and_set_mac_of_data_aes_cmac(char * input, int length_of_all, char * output);
void encrypt_aes_cbc(unsigned char *buf_to_be_encrypted,int len_of_buf);
void set_mac_aes_cbc(unsigned char * output);
int prepend_length_aes_cbc(char * input,int length);
void calc_and_set_mac_of_data_aes_cbc(char * input, int length_of_all, char * output);
void calc_and_set_mac_of_data_mac_wk1_plus_k2(char * input, int length_of_all,int length_of_useful, char * output);
void calc_and_set_mac_of_data_echo_hash_256_of_all(char * input, int length_of_all, char * output);

void verify_mac_onthefly(unsigned char * input, int total_mac_bytes, int useful_mac_bytes,const char * fun_name,int line);

#define verify_mac_on_the_fly(input,total_mac_bytes,useful_mac_bytes) verify_mac_onthefly((unsigned char*)(input),(total_mac_bytes),(useful_mac_bytes),__func__,__LINE__);

void update_mac_when_setting_data(unsigned char * input, int total_mac_bytes, int useful_mac_bytes, unsigned char* output);

void do_nothing_function();
void do_verify_code_on_the_fly();
int get_number_of_padded_nops(unsigned char *p);

void init_code_cache();
void init_data_cache();
void add_addr_to_code_cache(unsigned char * addr);
void add_addr_to_data_cache(unsigned char * addr);
void get_mac_of_data_cache(unsigned char *addr);
void get_mac_of_data_cache_with_index(unsigned char *addr, int index_in_cache);
int continue_macing_current_code_addr(unsigned char * addr);
int is_addr_to_be_set_in_data_cache(unsigned char *addr);
int continue_getting_data_addr(unsigned char *addr);
void flush_data_cache_into_mem();

extern char count_mac_invocations_in_this_code_part;


unsigned char * produce_stack_canary_optimized_part(unsigned char* position_of_block_in_stack);


#endif
