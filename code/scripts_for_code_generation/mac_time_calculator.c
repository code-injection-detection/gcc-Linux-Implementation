#include "headers_needed.h"

/*
Calculates the time for a set number of mac invocations, for various lengths. Its output would be like this:
Mac size:1, loops:10000000, time:0.777397
Mac size:2, loops:10000000, time:0.781187
Mac size:3, loops:10000000, time:0.765667
Mac size:4, loops:10000000, time:0.756027
Mac size:5, loops:10000000, time:0.770458
Mac size:6, loops:10000000, time:0.761658
Mac size:7, loops:10000000, time:0.755359
Mac size:8, loops:10000000, time:0.740942
Mac size:9, loops:10000000, time:0.737113
Mac size:10, loops:10000000, time:0.798768
Mac size:11, loops:10000000, time:0.726654
Mac size:12, loops:10000000, time:0.717307
Mac size:13, loops:10000000, time:0.730566
Mac size:14, loops:10000000, time:0.705274 
Mac size:15, loops:10000000, time:1.071887
Mac size:16, loops:10000000, time:1.095619
Mac size:17, loops:10000000, time:1.119070
Mac size:18, loops:10000000, time:1.098120
Mac size:19, loops:10000000, time:1.104521
Mac size:20, loops:10000000, time:1.125256
Mac size:21, loops:10000000, time:1.061135
Mac size:22, loops:10000000, time:1.047364
Mac size:23, loops:10000000, time:1.044988
....
....
*/
extern void calc_and_set_mac_of_data_sha256(char * input, long length, char * output);

void calc_mac(unsigned char *input,int length_all,int length_useful, unsigned char *output)
{
//pick proper algorithm
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
#if mac_algorithm==5
	calc_and_set_mac_of_data_mac_wk1_plus_k2((input),(length_all),(length_useful),(output));
#endif
#if mac_algorithm==7
	calc_and_set_mac_of_data_echo_hash_256_of_all((input),(length_all),(output));
#endif
}

#define number_of_different_macs 1

//many possible macs because we should consider the cache calculation a cache miss?
//well no, the cache miss is calculated on the getter and setter. The mac does not need to pay another cache miss.
unsigned char stuff_for_mac[number_of_different_macs][4096];
unsigned char mac_output[50];


int main()
{
	int i,j,k;
	clock_t start,stop;
	double tot_time;
	int times_for_one_mac=100000000;
	int index_of_macs=0;
	
	srand(time(NULL));
	for (i=0;i<number_of_different_macs;i++)
		memset(stuff_for_mac[i],0,4096);
	memset(mac_output,0,50);
	
	init_crypto_stuctures(0,0);
	
	for (i=0;i<number_of_different_macs;i++)
	{
		for (j=0;j<4096;j++)
		{
			stuff_for_mac[i][j]=rand()%256; //get a random bytestream to mac
		}
	}	
	
	if (set_as_given_that_everything_maced_will_be_fixed_and_multiple_of_16==0)
	{
		for (i=1;i<800;i++) //for mac sizes 1...800
		{
			start=clock();
			for (j=0;j<times_for_one_mac;j++) //calulate the mac several thousand times (10 mil default)
			{
				//printf("i=%d,j=%d\n",i,j);
				#if squeeze_keys_when_macing==0
					calc_mac(stuff_for_mac[index_of_macs],i,i>32?i-32:i,mac_output);
				#else
					calc_mac(stuff_for_mac[index_of_macs],i,i>16?i-16:i,mac_output);
				#endif
				index_of_macs=(index_of_macs+1)%number_of_different_macs;
			}
			stop=clock();
		
			tot_time=((double) (stop - start)) / CLOCKS_PER_SEC;
			printf("Mac size:%d, loops:%d, time:%lf\n",i,times_for_one_mac,tot_time);
		}
		
	}
	else //if we are sure that the only possible macs would have a length of a muptiple of 16
	{
		for (k=(mac_algorithm==5?3:1);k<15;k++) //from 16 to 15*16 (=240)
		{	
			i=k*16;
			start=clock();
			for (j=0;j<times_for_one_mac;j++) //calc the mac
			{
				//printf("i=%d,j=%d\n",i,j);
				#if squeeze_keys_when_macing==0 || mac_algorithm==5
					calc_mac(stuff_for_mac[index_of_macs],i,i>32?i-32:i,mac_output);
				#else
					calc_mac(stuff_for_mac[index_of_macs],i,i>16?i-16:i,mac_output);
				#endif
				index_of_macs=(index_of_macs+1)%number_of_different_macs;

			}
			stop=clock();
		
			tot_time=((double) (stop - start)) / CLOCKS_PER_SEC;
			printf("Mac size:%d, loops:%d, time:%lf\n",i,times_for_one_mac,tot_time);
		}
	}
	clear_crypto_structures();
	return 0;
}
