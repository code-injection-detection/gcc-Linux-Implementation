#include <stdio.h>
#include <stdlib.h>
#include <time.h>

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

void find_keyshares()
{
   int i,k=0; 
   long a= (long)foo; //can work like that
   //long a2= &&foo_end;
   long b= (long)main;
   long c=(long)foo2;  
   long d=(long)find_keyshares;
   unsigned char* p;
   unsigned char key1=0x0;
   unsigned char key2=0x0;
   unsigned char key3=0x0;
   unsigned char key4=0x0;
   unsigned char key5=0x0;
   long fun_name;

   unsigned char* start_of_text=(unsigned char*)&__executable_start;  //we get the limits of .text section
   unsigned char* end_of_text=(unsigned char*)&__etext;

   //start_of_text=(unsigned char*)&_init; //well their range seems to be a fraction of the __executable_start and __etext
   //end_of_text=(unsigned char*)&_fini;

   printf("a=%p b=%p c=%p d=%p\n",(void*)a,(void*)b,(void*)c,(void*)d);
   printf("start of .text=0x%lx, end of .text=0x%lx, init=0x%lx, fini=0x%lx\n",(unsigned long)&__executable_start,(unsigned long)&__etext, (unsigned long)&_init,(unsigned long)&_fini);
   
  
   
   for (p=(unsigned char *)a;!((*p==0xC3 || *p!=0xCB) && *(p-1)==(unsigned char)0x11 && *(p-2)==(unsigned char)0x11);p++) //NEAR and FAR ret opcodes
   {
	 printf("0x%02x ",*p);
   } 
     printf("0x%02x ",*p);
     printf("\n\n\n");


   //implementation #1  //iterating over function codes and locating RETs
  /*
   for (i=1;i<=4;i++)
   {
	   if (i==1) fun_name=a; 
	    if (i==2) fun_name=b;
	    if (i==3) fun_name=c;
	    if (i==4) fun_name=d;
		for (p=(char*)fun_name;!((*p==0xffffffC3 || *p!=0xffffffCB) && *(p-1)==(char)0x11 && *(p-2)==(char)0x11);p++)  //you should make sure you do not count when you meet 0xc3 in random places in the code, and be careful for many RETs!
	*/


		//implementation #2
		//for (p=(char *)foo,k=0;k<211;p++)   //if we hardcode number of jumps



		//implementation #3
		for (p=start_of_text;p<=end_of_text;p++)
		{
			if (*p==0xEB && *(p+1)==0x5) //JMP 5
			{ 
			 printf("0x%02x ",*(p+2));
			 key1^=(char) *(p+2);
			 key2^=(char) *(p+3); 
			 key3^=(char) *(p+4);
			 key4^=(char) *(p+5);
			 key5^=(char) *(p+6);
			 k++;			
			}
		}

  //implementation #1
 /* } */

   printf("\nkey1="); 
   printf("0x%02x\n",key1);
   printf("key2=0x%02x\n",key2);
   printf("key3=0x%02x\n",key3);
   printf("key4=0x%02x\n",key4);
   printf("key5=0x%02x\n",key5);

   return;
}
