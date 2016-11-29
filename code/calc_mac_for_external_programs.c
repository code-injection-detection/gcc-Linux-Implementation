#include "headers_needed.h"

extern void calc_and_set_mac_of_data_sha256(char * input, long length, char * output);


void usage(char * name)
{
	printf("Usage: %s <length_of_all__bytes_to_be_MACed> <length_of_useful_bytes> <BYTE1 as uint> <BYTE2 as uint> ...\n",name);
	exit(1);
}


int main(int argc, char* argv[])
{
	int len_of_all;
	int len_of_useful;
	unsigned char bytes[2048];
	unsigned char mac[2048];
	int i,j;
	
	if (argc<4)
		usage(argv[0]);
		
	init_crypto_stuctures(0);

	
	len_of_all=atoi(argv[1]);
	len_of_useful=atoi(argv[1]);
	
	for (i=0;i<len_of_all;i++)
	{
		bytes[i]=atoi(argv[3+i]);
	}
	
	calc_and_set_mac_of_data(bytes,len_of_all,len_of_useful,mac);
	
	for (i=0;i<number_of_mac_bytes;i++)
	{
		printf("%d ",mac[i]);
	}
	printf("\n");
	
	clear_crypto_structures();
	
	return 0;
}
