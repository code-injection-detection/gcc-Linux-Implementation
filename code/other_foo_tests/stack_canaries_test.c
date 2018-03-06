#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

char * buffer_ptr;


void doRead1()
{
        char buffer[32];
		//buffer_ptr=&buffer[0]; //cool :)
        gets(buffer);
}

void doRead2()
{
        char buffer[32];
		doRead1();
		//buffer_ptr=&buffer[0]; //cool :)
        gets(buffer);
}

void doRead()
{
        char buffer[32];
		//buffer_ptr=&buffer[0]; //cool :)
        gets(buffer);
}

int main(int argc)
{
        doRead();
		doRead2();
		//printf("buffer:%s\n",buffer_ptr);
		return 0;
}
