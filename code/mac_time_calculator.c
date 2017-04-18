#include "headers_needed.h"

extern void calc_and_set_mac_of_data_sha256(char * input, long length, char * output);

void calc_mac(unsigned char *input,int length_all,int length_useful, unsigned char *output)
{
#if mac_algorithm==0
	calc_and_set_mac_of_data_sha256((input),(length_all),(output));
#endif
#if mac_algorithm==1
	calc_and_set_mac_of_data_aes_ecb((input),(length_all),(length_useful),(output));
#endif
#if mac_algorithm==2
	calc_and_set_mac_of_data_aes_cmac((input),(length_all),(output));
#endif
#if mac_algorithm==3
	calc_and_set_mac_of_data_aes_cbc((input),(length_all),(output));
#endif
#if mac_algorithm==4
	calc_and_set_mac_of_data_aes_cbc((input),(length_all),(output));
#endif
}

unsigned char stuff_for_mac[1024];
unsigned char mac_output[50];


int main()
{
	int i,j;
	clock_t start,stop;
	double tot_time;
	int times_for_one_mac=10000000;
	
	srand(time(NULL));
	memset(stuff_for_mac,0,1024);
	memset(mac_output,0,50);
	
	init_crypto_stuctures(0);
	
	for (i=0;i<1024;i++)
	{
		stuff_for_mac[i]=rand()%256;
	}
	
	for (i=1;i<290;i++)
	{
		start=clock();
		for (j=0;j<times_for_one_mac;j++)
		{
			//printf("i=%d,j=%d\n",i,j);
			#if squeeze_keys_when_macing==0
				calc_mac(stuff_for_mac,i,i>32?i-32:i,mac_output);
			#else
				calc_mac(stuff_for_mac,i,i>16?i-16:i,mac_output);
			#endif
		}
		stop=clock();
		
		tot_time=((double) (stop - start)) / CLOCKS_PER_SEC;
		printf("Mac size:%d, loops:%d, time:%lf\n",i,times_for_one_mac,tot_time);
	}
		
	clear_crypto_structures();
	return 0;
}
