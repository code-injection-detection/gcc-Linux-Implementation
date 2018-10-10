#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define FW_MATRIX_MAX_SZ 1000
#define FW_MAX_ADJ_DIST 1000

double fw_dist_matrix[FW_MATRIX_MAX_SZ][FW_MATRIX_MAX_SZ];


void fw_print_matrix(int fw_matrix_sz)
{
	int i,j;
	for (i=0;i<fw_matrix_sz;i++)
	{
		for (j=0;j<fw_matrix_sz;j++)
		{
			printf("%lg ",fw_dist_matrix[i][j]);
		}
		printf("\n");
	}
	printf("\n");
}

void fw_init_dist_matrix(int fw_matrix_sz)
{
	int i,j;
	for (i=0;i<fw_matrix_sz;i++)
	{
		for (j=0;j<=i;j++)
		{	
			if (i==j)
			{
				fw_dist_matrix[i][j]=0;
			}
			else
			{
				fw_dist_matrix[i][j]=rand()%FW_MAX_ADJ_DIST;
				fw_dist_matrix[j][i]=fw_dist_matrix[i][j];
			}
		}
	}
}




void fw_calc_shortest_path(int fw_matrix_sz)
{
	int i,j,k;
	for (k=0;k<fw_matrix_sz;k++)
	{
		for (i=0;i<fw_matrix_sz;i++)
		{
			for (j=0;j<fw_matrix_sz;j++)
			{
				if (fw_dist_matrix[i][j] > fw_dist_matrix[i][k] + fw_dist_matrix[k][j])
				{
             			fw_dist_matrix[i][j] = fw_dist_matrix[i][k] + fw_dist_matrix[k][j];
      			}
			}
		}
	}

}




int main()
{
	srand(time(NULL));
	fw_init_dist_matrix(10);	
	fw_print_matrix(10);
	fw_calc_shortest_path(10);
	fw_print_matrix(10);
	return 0;
}
