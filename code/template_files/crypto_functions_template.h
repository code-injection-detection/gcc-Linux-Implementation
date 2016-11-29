#ifndef CRYPTO_FUNCTIONS_H
#define CRYPTO_FUNCTIONS_H


void init_crypto_stuctures();
void calc_mac(unsigned char *useful_data, long length_in_bytes);
void set_mac(unsigned char * output);
void clear_crypto_structures();


#endif
