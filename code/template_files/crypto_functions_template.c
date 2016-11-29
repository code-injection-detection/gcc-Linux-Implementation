#include "headers_needed.h"

#define safe_length_for_buffer_storage 2048

EVP_CIPHER_CTX aes_ctx;
unsigned char aes_key[] = {42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57};


BIGNUM bn_a;
BIGNUM bn_b;
BIGNUM bn_temp;
BIGNUM bn_useful_data;
BIGNUM bn_mac;
BIGNUM *bn_2power128=NULL;
char str_2power128[]="340282366920938463463374607431768211456"; //2^128
int len_2power128;
BN_CTX *bn_ctx;
unsigned char mac_in_bytes[safe_length_for_buffer_storage];


void init_crypto_stuctures()
{
	printf("Initializing crypto structures.\n");
	EVP_CIPHER_CTX_init(&aes_ctx);
	EVP_EncryptInit_ex(&aes_ctx, EVP_aes_128_ecb(), NULL, aes_key, NULL);
	BN_init(&bn_a);
	BN_init(&bn_b);
	BN_init(&bn_temp);
	BN_init(&bn_useful_data);
	BN_init(&bn_mac);
	BN_dec2bn(&bn_2power128,str_2power128);
	len_2power128=BN_num_bytes(bn_2power128);
	printf("%d\n",len_2power128);
	bn_ctx=BN_CTX_new();
	memset(mac_in_bytes,0,safe_length_for_buffer_storage);
	printf("Crypto structures initialized.\n");
}

void calc_mac(unsigned char *useful_data, long length_in_bytes)
{
	BN_bin2bn(useful_data,length_in_bytes*8,&bn_useful_data);
	BN_mod_mul(&bn_temp,&bn_useful_data,&bn_a,bn_2power128,bn_ctx);
	BN_mod_add(&bn_mac,&bn_temp,&bn_b,bn_2power128,bn_ctx);
}

void set_mac(unsigned char * output)
{
	int length_of_mac;
	
	length_of_mac=BN_num_bytes(&bn_mac);
	if(length_of_mac<len_2power128-1)
	{
		memset(mac_in_bytes,0,(len_2power128-1-length_of_mac));
	}
	BN_bn2bin(&bn_mac,((unsigned char*)mac_in_bytes)+(len_2power128-1-length_of_mac));
	memcpy(output,mac_in_bytes,number_of_mac_bytes);
}





void clear_crypto_structures()
{
	EVP_CIPHER_CTX_cleanup(&aes_ctx);
	BN_free(&bn_a);
	BN_free(&bn_b);
	BN_free(&bn_temp);
	BN_free(&bn_useful_data);
	BN_free(&bn_mac);
	BN_free(bn_2power128);
	BN_CTX_free(bn_ctx);
}
