#include <stdio.h>



int int_for_delay_hanoi[1]; //adding these things to emulate the fact that the function should do something!
char char_for_delay_hanoi[5];
long long_for_delay_hanoi;


void hanoi_do_something(int n)
{
    //find sum 1...n by adding
    int i;
    int sum;
    for (i=1;i<=n;i++)
        sum+=i;

}


void towerOfHanoi(int n, char fromrod, char torod, char auxrod, char should_print, char emulate_delay)
{
    if (n == 1)
    {
		if (should_print)
        {
			printf("\n Move disk 1 from rod %c to rod %c", fromrod, torod);
        }
        if (emulate_delay)
        {
            hanoi_do_something(100);
        }
        return;
    }
    towerOfHanoi(n-1, fromrod, auxrod, torod,should_print,emulate_delay);
	if (should_print)
		printf("\n Move disk %d from rod %c to rod %c", n, fromrod, torod);

    if (emulate_delay) //adding these things to emulate the fact that the function should do something (instead of printing)!
	{
        hanoi_do_something(100);
	}
    
    towerOfHanoi(n-1, auxrod, torod, fromrod,should_print,emulate_delay);
}

int main()
{
	towerOfHanoi(29,'a','c', 'b',0,0);
	return 0;
}
