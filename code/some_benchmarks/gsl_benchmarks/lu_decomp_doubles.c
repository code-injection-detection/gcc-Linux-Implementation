#include <stdio.h>
#include <stdlib.h>
#include <gsl/gsl_linalg.h>
#include <time.h>

/*
gcc lu_decomp_doubles.c  -lgsl -lgslcblas
*/

//solution for a*x=b
#define dimension 900
#define PRINT_RES 0

/*
double a_data[] = { 0.18, 0.60, 0.57, 0.96,
                      0.41, 0.24, 0.99, 0.58,
                      0.14, 0.30, 0.97, 0.66,
                      0.51, 0.13, 0.19, 0.85 };

double b_data[] = { 1.0, 2.0, 3.0, 4.0 };
*/
double a_data[dimension*dimension];
double b_data[dimension];

int main()
{

	int i,j;

	srand(42); 
	for (i=0;i<dimension;i++)
	{
		for (j=0;j<dimension;j++)
		{
			a_data[i*dimension+j]=(rand()%100)/100.0;
			/*
			if ((rand()%2))
				a_data[i*dimension+j]+=0.2;
			else
				a_data[i*dimension+j]-=0.5;
			//printf("%g ",a_data[i*dimension+j]);
			*/
		}
		//printf("\n");
		b_data[i]=(rand()%15)+4;
	}  

	gsl_matrix_view m
	= gsl_matrix_view_array (a_data, dimension, dimension);

	gsl_vector_view b
	= gsl_vector_view_array (b_data, dimension);

	gsl_vector *x = gsl_vector_alloc (dimension);

	int s;

	gsl_permutation * p = gsl_permutation_alloc (dimension);

	gsl_linalg_LU_decomp (&m.matrix, p, &s);

	gsl_linalg_LU_solve (&m.matrix, p, &b.vector, x);

	if (PRINT_RES)
	{
		printf ("x = \n");
		gsl_vector_fprintf (stdout, x, "%g");
	}

	gsl_permutation_free (p);
	gsl_vector_free (x);
	return 0;
}
