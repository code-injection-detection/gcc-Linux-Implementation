#include "headers_needed.h"

extern void calc_and_set_mac_of_data_sha256(char * input, long length, char * output);

//finds the mac, given a bytestream. It is used by java and python.

#define PRINT_VALUES 0

char infile[100]="./communication_files/comm_file1";
char outfile[100]="./communication_files/comm_file2";
FILE *infile_fp;
FILE *outfile_fp;
int num_that_denotes_end=-424242;

void usage(char * name)
{
	printf("Usage: %s \nAnd then send to %s the bytes as such: <length_of_all__bytes_to_be_MACed> <length_of_useful_bytes> <BYTE1 as uint> <BYTE2 as uint> ...\nRead from %s\n",name,infile,outfile);
	exit(1);
}


void check_fscanf_retval(int retval)
{
	if (retval!=1)
	{
		printf("Problem!fscanf retval!=1!\n");
		printf("retval=%d\n",retval);
		exit(-1);
	}
}



int main(int argc, char* argv[])
{
	int len_of_all;
	int len_of_useful;
	unsigned char bytes[66048];
	unsigned char mac[66048];
	int read_num;
	int i,j;
	int fscanf_retval;
	
	//usage(argv[0]);
		
	init_crypto_stuctures(0,0);

	//open IO files
	infile_fp=fopen(infile,"r");
	outfile_fp=fopen(outfile,"w");
	
	for (;;)
	{
		fscanf_retval=fscanf(infile_fp,"%d",&len_of_all);
		check_fscanf_retval(fscanf_retval);
		#if PRINT_VALUES==1
			printf("%d\n",len_of_all);
		#endif
		
		if (len_of_all==num_that_denotes_end) 
		{
			#if PRINT_VALUES==1
				printf("end!\n");
			#endif
			break; // if we have read the magic number, time to exit!
		}
		
		fscanf_retval=fscanf(infile_fp,"%d",&len_of_useful);
		check_fscanf_retval(fscanf_retval);
		#if PRINT_VALUES==1
			printf("%d\n",len_of_useful);
		#endif
		
		for (i=0;i<len_of_all;i++)
		{
			fscanf_retval=fscanf(infile_fp,"%d",&read_num); //get the bytes
			check_fscanf_retval(fscanf_retval);
			bytes[i]=(unsigned char) read_num;
			#if PRINT_VALUES==1
				printf("%d\n",read_num);
			#endif
		}
		
		//calc the mac
		{
			calc_and_set_mac_of_data(bytes,len_of_all,len_of_useful,mac); //calc
			
			for (i=0;i<number_of_mac_bytes;i++) //output to the output file
			{
				fprintf(outfile_fp,"%d ",(int)mac[i]);
			}
			fprintf(outfile_fp,"\n");
			fflush(outfile_fp);
		}
	}
	clear_crypto_structures();
	
	fclose(infile_fp);
	fclose(outfile_fp);
	return 0;
}
