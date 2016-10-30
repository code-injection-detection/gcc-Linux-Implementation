#include "../headers_needed.h"

int main()
{
	printf("sem_t:%d\n",sizeof(sem_t));
	printf("pthread_t:%d\n",sizeof(pthread_t));
	printf("struct sigaction:%d\n",sizeof(struct sigaction));
	return 0;
}
