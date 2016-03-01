#include <stdio.h>
#include <stdlib.h>

/*
#define _GNU_SOURCE     
#include <dlfcn.h>
*/


extern char __executable_start;   //in order to find limits of .text section in ELF files.
extern char __etext;


int foo(int x)
{
 int k;
 k=x+2;
 
return k;
}

void find_keyshares();


int main()
{

	int i;
	int k;
	int j;
	int n;
	k=1;
	i=2;
	i++;
	i++;
	i--;
	k=k+i;
	k+=2;
	i++;

	for (j=1;j<=500000000;j++)
	  k+=i;
	
 	printf("K=%d\n",k);

 	n=foo(5);
	n=foo2(n);
	printf("n=%d\n",n);

	printf("main is at %p\n", main);
	find_keyshares();


	return 0;
}



int foo2(int x)
{
	int k;
	k=x+3;
	 
	return k;
}

 
void find_keyshares()
{
   int i,k=0; 
   long a= (long)foo; //can work like that
   //long a2= &&foo_end;
   long b= (long)main;
   //long b2 = &&main_end;
   long c=(long)foo2;  
   //long c2 = &&foo2_end;
   long d=(long)find_keyshares;
   //long d2=&&find_keyshares_end;
   char* p;
   unsigned char key1=0x0;
   unsigned char key2=0x0;
   unsigned char key3=0x0;
   unsigned char key4=0x0;
   unsigned char key5=0x0;
   long fun_name;

   char* start_of_text=(char*)&__executable_start;  //we get the limits of .text section
   char* end_of_text=(char*)&__etext;

   printf("a=%p b=%p c=%p d=%p\n",(void*)a,(void*)b,(void*)c,(void*)d);
   
  
   
   for (p=(char *)a;!((*p==0xffffffC3 || *p!=0xffffffCB) && *(p-1)==(char)0x11 && *(p-2)==(char)0x11);p++) //NEAR and FAR ret opcodes (except the ffffff)
   {
	   printf("%#04x ",*p);
   } 
     printf("%#04x ",*p);
     printf("\n\n\n");


   //implementation #1
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
			if (*p==0xffffffEB && *(p+1)==0x5) //JMP 5
			{ 
			 printf("%#04x ",*(p+2));
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
   printf("%#04x\n",key1);
   printf("key2=%#04x\n",key2);
   printf("key3=%#04x\n",key3);
   printf("key4=%#04x\n",key4);
   printf("key5=%#04x\n",key5);

   return;
}
