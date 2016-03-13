#include <stdio.h>
#include <stdlib.h>
#include <time.h>


/*
#define _GNU_SOURCE     
#include <dlfcn.h>
*/

#define bytes_interleaved (5)
#define bytes_to_allocate_on_start (1>>20)

extern char __executable_start;   //in order to find limits of .text section in ELF files.
extern char __etext;

extern char _init;
extern char _fini;


int foo(int x)
{
 int k;
 k=x+2;
 
return k;
}

/*
//SOME FUNCTIONS USED IN OLD SECURE-MEMORY IMPLEMENTATION

int get_arrayelement_int(int *a,int index) 
{
  char * p;  
  int * result;	

  if (index==0) return a[0];
  else
  {
    p=&(a[0]);
    p+=(index)*(bytes_interleaved)+(index-1)*(sizeof(int));
    result=&(*p);
    return (*result);
  }
}

void set_arrayelement_int(int * a,int index,int value ) 
{
  char * p; 
  int * place;

  if (index==0)  a[0]=value;
  else
  {
    p=&(a[0]);
    p+=(index)*(bytes_interleaved)+(index-1)*(sizeof(int));
    result=&(*p);
    *result=value;
  }
  return;
}


int * insert_keys_into_array_int(int *a, int size)
{
  int i;
  int bytecounter;
  int elembytecounter;
  int counting_key_bytes=0; //used as boolean
  int sizeinbytes=size*sizeof(int) + bytesinterleaved*(size-1);
  char * p;
  
  srand(time(NULL));
  p=&a[0];

  bytecounter=0;
  elembytecouter=0;
  for (i=0;i<sizeinbytes;i++)
  {
    if(elembytecounter<sizeof(int) && !counting_key_bytes)
      elembytecounter++;
    else
      {
        elembytecounter=0;
        counting_key_bytes=0;
      }

    if(bytecounter<bytes_interleaved && counting_key_bytes)
      bytecounter++;
    else
      {
        bytecounter=0;
        counting_key_bytes=1;
        elembytecounter=1;
      }

    if (counting_key_bytes) continue;
    else *p[i]=rand()%128;
   
  }
     
  return a;
}


int * allocate_array_int(int* arrayname,int size)
{
  int * p;
  p=((int*) malloc( size*sizeof(int) + bytesinterleaved*(size-1) );
  insert_keys_into_array_int(p,size);
  return p;  
} 
*/

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
	//find_keyshares();


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
   long c=(long)foo2;  
   long d=(long)find_keyshares;
   char* p;
   unsigned char key1=0x0;
   unsigned char key2=0x0;
   unsigned char key3=0x0;
   unsigned char key4=0x0;
   unsigned char key5=0x0;
   long fun_name;

   char* start_of_text=(char*)&__executable_start;  //we get the limits of .text section
   char* end_of_text=(char*)&__etext;

   //start_of_text=(char*)&_init; //well their range seems to be a fraction of the __executable_start and __etext
   //end_of_text=(char*)&_fini;

   printf("a=%p b=%p c=%p d=%p\n",(void*)a,(void*)b,(void*)c,(void*)d);
   printf("start of .text=0x%lx, end of .text=0x%lx, init=0x%lx, fini=0x%lx\n",(unsigned long)&__executable_start,(unsigned long)&__etext, (unsigned long)&_init,(unsigned long)&_fini);
   
  
   
   for (p=(char *)a;!((*p==0xffffffC3 || *p!=0xffffffCB) && *(p-1)==(char)0x11 && *(p-2)==(char)0x11);p++) //NEAR and FAR ret opcodes (except the ffffff)
   {
	 printf("%#04x ",*p);
   } 
     printf("%#04x ",*p);
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
