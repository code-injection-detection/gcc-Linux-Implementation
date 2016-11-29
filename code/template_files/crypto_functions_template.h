#ifndef CRYPTO_FUNCTIONS_H
#define CRYPTO_FUNCTIONS_H


void init_crypto_stuctures();
void calc_mac(unsigned char *useful_data, long length_in_bytes);
void set_mac(unsigned char * output);
void clear_crypto_structures();
void encrypt_aes_ecb(unsigned char *buf_to_be_encrypted,long len_of_buf);
void calc_and_set_mac_of_data_aes_ecb(char * input, long length_of_all,long length_of_useful, char * output);


#endif
