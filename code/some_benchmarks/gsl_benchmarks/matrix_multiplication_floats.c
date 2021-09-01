#include <stdio.h>
#include <stdlib.h>
#include <gsl/gsl_linalg.h>
#include <time.h>

/*
gcc matrix_multiplication_floats.c  -lgsl -lgslcblas
*/


#define dimension 650
#define PRINT_RES 0


int main()
{

	int i,j;

    gsl_matrix_float *a;   
    gsl_matrix_float *b;  

    a = gsl_matrix_float_alloc(dimension, dimension); /* Data matrix */
    b = gsl_matrix_float_alloc(dimension, dimension); /* Data matrix */

    srand(42);
	for (i=0;i<dimension;i++)
	{
		for (j=0;j<dimension;j++)
		{
			gsl_matrix_float_set(a, i, j, (rand()%100)/100.0); 
            gsl_matrix_float_set(b, i, j, (rand()%100)/100.0);
		}
		//printf("\n");
	}  

    gsl_matrix_float *res= gsl_matrix_float_alloc(dimension,dimension);


    if (PRINT_RES)
	{
        printf("a=\n");
        for (i=0;i<dimension;i++)
        {
            for (j=0;j<dimension;j++)
            {
                printf("%g ",gsl_matrix_float_get(a, i, j)); 
            }
            printf("\n");
        }  
        printf("\n");
	}
    if (PRINT_RES)
	{
        printf("b=\n");
        for (i=0;i<dimension;i++)
        {
            for (j=0;j<dimension;j++)
            {
                printf("%g ",gsl_matrix_float_get(b, i, j)); 
            }
            printf("\n");
        }  
         printf("\n");
	}


    gsl_blas_sgemm(CblasNoTrans, CblasNoTrans, 1.0, a, b, 0.0, res); 


    if (PRINT_RES)
	{
        printf("res=\n");
        for (i=0;i<dimension;i++)
        {
            for (j=0;j<dimension;j++)
            {
                printf("%g ",gsl_matrix_float_get(res, i, j)); 
            }
            printf("\n");
        }  
	}

    return 0;
}