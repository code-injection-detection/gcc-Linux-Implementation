#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int mm_array_1[800][800];
int mm_array_2[800][800];

void init_global_arrays(int size,int maxnum)
{
	int i,j;
	
	srand(42);
	for (i=0;i<size;i++)
		for (j=0;j<size;j++)
		{
			mm_array_1[i][j]=rand()%maxnum;
			mm_array_2[i][j]=rand()%maxnum;
		}
	
}


void matrix_multiplication(int maxnum,int should_print,int sz_of_benchmark)
{
	int i,j,k,l;
    long sum;
	long matrix_res[800][800];
	int size=sz_of_benchmark;
	
	for (i=0;i<size;i++)
		for (j=0;j<size;j++)
		{
			sum=0;
			for (k=0;k<size;k++)
				{
					sum+=mm_array_1[i][k]*mm_array_2[k][j];
				}
			matrix_res[i][j]=sum;
		}
		
	if (should_print)
	{
		printf("\n\nMatrices:\n\n");
		printf("a:\n");
		for (i=0;i<size;i++)
		{
			for (j=0;j<size;j++)
			{
				printf("%d ",mm_array_1[i][j]);
			}
			printf("\n");
		}
		printf("\n");
		printf("b:\n");
		for (i=0;i<size;i++)
		{
			for (j=0;j<size;j++)
			{
				printf("%d ",mm_array_2[i][j]);
			}
			printf("\n");
		}
		printf("\n");
		printf("matrix_res:\n");
		for (i=0;i<size;i++)
		{
			for (j=0;j<size;j++)
			{
				printf("%ld ",matrix_res[i][j]);
			}
			printf("\n");
		}
		printf("\n");
	}
	
}	


int main()
{
    init_global_arrays(800,1000);
	matrix_multiplication(1000,0,800);
    return 0;
}	
