#include "headers_needed.h"

/*
#define _GNU_SOURCE     
#include <dlfcn.h>
*/



extern char __executable_start;   //in order to find limits of .text section in ELF files.
extern char __etext;

extern char _init;
extern char _fini;

extern int foo(int);
extern int main();
extern int foo2(int);

struct sigaction sa; //for signal handling

//checks the next <number_of_canaries> to see if they hold the canary value
int check_next_canaries(void* p)
{
	int i;
	for (i=0;i<number_of_canaries;i++)
	{
		if ( *((unsigned char*)p+i)!=(unsigned char)(canary_value))
			return 0;
	}
	return 1;
}



void find_keyshares()
{
   int i,j,keycnt,k=0; 
   long a= (long)foo; //can work like that
   //long a2= &&foo_end;
   long b= (long)main;
   long c=(long)foo2;  
   long d=(long)find_keyshares;
   unsigned char* p;
   unsigned char keys[number_of_interleaved_keys];
   long fun_name;
   long heap_cnt;
   long stack_cnt;
   int counting_key_bytes=0; //used as boolean
   char ret;

   unsigned char* start_of_text=(unsigned char*)&__executable_start;  //we get the limits of .text section
   unsigned char* end_of_text=(unsigned char*)&__etext;

   for (keycnt=0;keycnt<number_of_interleaved_keys;keycnt++)
      keys[keycnt]=0x0;


   //start_of_text=(unsigned char*)&_init; //well their range seems to be a fraction of the __executable_start and __etext
   //end_of_text=(unsigned char*)&_fini;

   //printf("a=%p b=%p c=%p d=%p\n",(void*)a,(void*)b,(void*)c,(void*)d);
   //printf("start of .text=0x%lx, end of .text=0x%lx, init=0x%lx, fini=0x%lx\n",(unsigned long)&__executable_start,(unsigned long)&__etext, (unsigned long)&_init,(unsigned long)&_fini);
   
  
  //printing function foo
  /*
   for (p=(unsigned char *)a;!((*p==0xC3 || *p!=0xCB) && *(p-1)==(unsigned char)0x11 && *(p-2)==(unsigned char)0x11);p++) //NEAR and FAR ret opcodes
   {
	 printf("0x%02x ",*p);
   } 
     printf("0x%02x ",*p);
     printf("\n\n\n");
  */

		//implementation #3   //using start and end of text section
		for (p=start_of_text;p<=end_of_text;p++)
		{
			if (*p==0xEB && *(p+1)==number_of_interleaved_keys+number_of_canaries && check_next_canaries(p+2)) //JMP <number of keys>+<number_of_canaries>
			{ 
			 //printf("0x%02x ",*(p+2));
			 for (keycnt=0;keycnt<number_of_interleaved_keys;keycnt++)
			 {
				 keys[keycnt]^= (unsigned char) *(p+2+keycnt+number_of_canaries);
			 }			
			}
		}


		//taking into account the heap keys
		counting_key_bytes=0;
		for (p=entire_memory_chunk,heap_cnt=0;heap_cnt<total_bytes_allocated;)
		{

		    if (counting_key_bytes==0)
		    {
				heap_cnt+=bytes_between_keyshares;
				counting_key_bytes=1;
		    }
		    else
		    {
				//checking the keys
				for (keycnt=0;keycnt<number_of_interleaved_keys;keycnt++)
				{
					 keys[keycnt]^=(unsigned char) *(p+heap_cnt+keycnt);
				}

				heap_cnt+=bytes_used_for_keyshares;
				counting_key_bytes=0;

				
		    }  

		}
		
		//taking into account the stack keys
		counting_key_bytes=0;
		for (p=entire_stack_memory_chunk,stack_cnt=0;stack_cnt<total_stack_bytes_allocated;)
		{

		    if (counting_key_bytes==0)
		    {
				stack_cnt+=stack_bytes_between_keyshares;
				counting_key_bytes=1;
		    }
		    else
		    {
				//checking the keys
				for (keycnt=0;keycnt<number_of_interleaved_keys;keycnt++)
				{
					 keys[keycnt]^=(unsigned char) *(p+stack_cnt+keycnt);
				}

				stack_cnt+=stack_bytes_used_for_keyshares;
				counting_key_bytes=0;

				
		    }  

		}


   printf("\n");
   for (keycnt=0;keycnt<number_of_interleaved_keys;keycnt++)
   {
	   printf("key no%d=0x%02x\n",keycnt,keys[keycnt]);
   }

   return;
}



void verification_procedure()
{
	printf("Verification requested!\n");
	find_keyshares();	
}
