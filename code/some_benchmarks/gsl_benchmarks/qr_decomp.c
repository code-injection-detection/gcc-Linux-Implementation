#include <stdio.h>
#include <stdlib.h>
#include <gsl/gsl_linalg.h>
#include <time.h>

/*
gcc qr_decomp.c  -lgsl -lgslcblas
*/

//solution for a*x=b
#define dimension 650
#define PRINT_RES 1

int main()
{

	int i,j;

    gsl_matrix *a;   
    gsl_vector *b;  
    gsl_vector *tau;  

    a = gsl_matrix_alloc(dimension, dimension); 
    b = gsl_vector_alloc(dimension); 
    tau = gsl_vector_alloc(dimension); 
    gsl_vector *x = gsl_vector_alloc (dimension);

	srand(42); 
	for (i=0;i<dimension;i++)
	{
		for (j=0;j<dimension;j++)
		{
			gsl_matrix_set(a, i, j, (rand()%100)/100.0); 
		}
		//printf("\n");
        gsl_vector_set(b, i, (rand()%15)+4); 
	}  

    gsl_linalg_QR_decomp(a,tau);
    gsl_linalg_QR_solve(a,tau,b,x);

	if (PRINT_RES)
	{
		printf ("x = \n");
		gsl_vector_fprintf (stdout, x, "%g");
	}

	return 0;
}
