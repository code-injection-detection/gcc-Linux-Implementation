#include <stdio.h>

//compile with gcc hanoi_unsecured.c -mno-red-zone -fno-stack-protector

int int_for_delay_hanoi[1]; //adding these things to emulate the fact that the function should do something!
char char_for_delay_hanoi[5];
long long_for_delay_hanoi;


void towerOfHanoi(int n, char fromrod, char torod, char auxrod, char should_print, char emulate_delay)
{
    if (n == 1)
    {
		if (should_print)
			printf("\n Move disk 1 from rod %c to rod %c", fromrod, torod);
        return;
    }
	if (emulate_delay) //adding these things to emulate the fact that the function should do something!
	{
		char_for_delay_hanoi[0]=fromrod;
		char_for_delay_hanoi[1]=auxrod;
		char_for_delay_hanoi[2]=torod;
		char_for_delay_hanoi[3]=should_print;
		char_for_delay_hanoi[4]=emulate_delay;
		long_for_delay_hanoi=42;
		int_for_delay_hanoi[0]=long_for_delay_hanoi+char_for_delay_hanoi[1];
	}
    towerOfHanoi(n-1, fromrod, auxrod, torod,should_print,emulate_delay);
	if (should_print)
		printf("\n Move disk %d from rod %c to rod %c", n, fromrod, torod);
    
	if (emulate_delay)
	{
		char_for_delay_hanoi[0]=fromrod;
		char_for_delay_hanoi[1]=auxrod;
		char_for_delay_hanoi[2]=torod;
		char_for_delay_hanoi[3]=should_print;
		char_for_delay_hanoi[4]=emulate_delay;
		long_for_delay_hanoi=42;
		int_for_delay_hanoi[0]=long_for_delay_hanoi+char_for_delay_hanoi[1];
	}
    towerOfHanoi(n-1, auxrod, torod, fromrod,should_print,emulate_delay);
}

int main()
{
	towerOfHanoi(28,'a','c', 'b',0,0);
	return 0;
}
