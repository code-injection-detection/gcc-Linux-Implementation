#include <stdio.h>

int var1=1;
char var2=2;
static char var3=3;
extern char var4;
const char var5=5;
char var6=6;


int main()
{
  static char var7=7;
	
  printf("Addresses: %ld %ld %ld %ld %ld %ld %ld\n", &var1,&var2,&var3,&var4,&var5,&var6,&var7);

  return 0;
}