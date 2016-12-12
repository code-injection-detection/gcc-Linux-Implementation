#ifndef CRYPTO_FUNCTIONS_H
#define CRYPTO_FUNCTIONS_H


void init_crypto_stuctures();
void calc_mac_aes_ecb(unsigned char *useful_data, int length_in_bytes);
void set_mac_aes_ecb(unsigned char * output);
void clear_crypto_structures();
void encrypt_aes_ecb(unsigned char *buf_to_be_encrypted,int len_of_buf);
void calc_and_set_mac_of_data_aes_ecb(char * input, int length_of_all,int length_of_useful, char * output);
int check_mac_for_error(unsigned char * input, int total_mac_bytes, int useful_mac_bytes);
void set_mac_aes_cmac(unsigned char * output);
void calc_mac_aes_cmac(char * input, int length_of_all);
void calc_and_set_mac_of_data_aes_cmac(char * input, int length_of_all, char * output);
void encrypt_aes_cbc(unsigned char *buf_to_be_encrypted,int len_of_buf);
void set_mac_aes_cbc(unsigned char * output);
int prepend_length_aes_cbc(char * input,int length);
void calc_and_set_mac_of_data_aes_cbc(char * input, int length_of_all, char * output);

void verify_mac_onthefly(unsigned char * input, int total_mac_bytes, int useful_mac_bytes,const char * fun_name,int line);

#define verify_mac_on_the_fly(input,total_mac_bytes,useful_mac_bytes) verify_mac_onthefly((input),(total_mac_bytes),(useful_mac_bytes),__FUNC__,__LINE__);


#endif
