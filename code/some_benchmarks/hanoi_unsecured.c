#include <stdio.h>

//compile with gcc hanoi_unsecured.c -mno-red-zone -fno-stack-protector

void towerOfHanoi(int n, char fromrod, char torod, char auxrod, char should_print, char emulate_delay)
{
	int int_for_delay[1]; //adding these things to emulate the fact that the function should do something!
	char char_for_delay[3];
	long long_for_delay;

    if (n == 1)
    {
		if (should_print)
			printf("\n Move disk 1 from rod %c to rod %c", fromrod, torod);
        return;
    }
	if (emulate_delay)
	{
		char_for_delay[0]=fromrod;
		char_for_delay[1]=auxrod;
		char_for_delay[2]=torod;
		long_for_delay=42;
		int_for_delay[0]=long_for_delay+char_for_delay[1];
	}
    towerOfHanoi(n-1, fromrod, auxrod, torod,should_print,emulate_delay);
	if (should_print)
		printf("\n Move disk %d from rod %c to rod %c", n, fromrod, torod);
    
	if (emulate_delay)
	{
		char_for_delay[0]=fromrod;
		char_for_delay[1]=auxrod;
		char_for_delay[2]=torod;
		long_for_delay=42;
		int_for_delay[0]=long_for_delay+char_for_delay[1];
	}
    towerOfHanoi(n-1, auxrod, torod, fromrod,should_print,emulate_delay);
}

int main()
{
	towerOfHanoi(28,'a','c', 'b',0,0);
	return 0;
}
