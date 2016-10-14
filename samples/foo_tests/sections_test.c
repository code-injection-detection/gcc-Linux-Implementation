#include <stdio.h>
#include <stdlib.h>

extern char etext, edata, end;

extern char __executable_start;  
extern char __bss_start;
extern char __data_start;

extern char _init;
extern char _fini;

int b[10]={1,2,3,4,5,6,7,8,9,10};

int a[2][2];

int main() {
    int i;
    unsigned char * p;
    printf("First address past:\n");
    printf("    program text (etext)      %10p\n", &etext);
    printf("    initialized data (edata)  %10p\n", &edata);
    printf("    uninitialized data (end)  %10p\n", &end);


    printf("Executable start:%10p\n",&__executable_start);
    printf("Executable end:%10p\n",&etext-1);
    printf("Data start:%10p\n",&__data_start);
    printf("Data end:%10p\n",&edata-1);
    printf("Bss start:%10p\n",&__bss_start);
    printf("Bss end:%10p\n",&end-1);
    printf("Init:%10p, Fini: %10p\n",&_init,&_fini);

  /*
   printf("Printing program code:\n");
   for (p=(unsigned char*)&__executable_start;p<=(unsigned char*)&etext;p++)
   	printf("Memory %10p : 0x%02x \n",p,*p); 

   
   printf("Printing initialized data:\n");
   for (p=(unsigned char*)&__data_start;p<=(unsigned char*)&edata;p++)
   	printf("Memory %10p : 0x%02x \n",p,*p);

   printf("Printing uninitialized data:\n");
   for (p=(unsigned char*)&__bss_start;p<=(unsigned char*)&end;p++)
   	printf("Memory %10p : 0x%02x \n",p,*p);
  */
    exit(EXIT_SUCCESS);
}
