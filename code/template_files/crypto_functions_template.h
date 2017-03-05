#ifndef CRYPTO_FUNCTIONS_H
#define CRYPTO_FUNCTIONS_H


void init_crypto_stuctures();
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


#endif
