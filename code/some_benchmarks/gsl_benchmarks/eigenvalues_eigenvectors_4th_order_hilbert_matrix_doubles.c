#include <stdio.h>
#include <gsl/gsl_math.h>
#include <gsl/gsl_eigen.h>

/*
gcc eigenvalues_eigenvectors_4th_order_hilbert_matrix_doubles.c  -lgsl -lgslcblas
*/


#define dimension 400
#define PRINT_RES 0

double data[dimension*dimension]; 

int main (void)
{
  int i,j;

  for (i=0;i<dimension;i++)
	{
		for (j=0;j<dimension;j++)
		{
	  	data[i*dimension+j]=1.0/(i+j+1); 
		}
	}  


  gsl_matrix_view m
    = gsl_matrix_view_array (data, dimension, dimension);

  gsl_vector *eval = gsl_vector_alloc (dimension);
  gsl_matrix *evec = gsl_matrix_alloc (dimension,dimension);

  gsl_eigen_symmv_workspace * w =
    gsl_eigen_symmv_alloc (dimension);

  gsl_eigen_symmv (&m.matrix, eval, evec, w);

  gsl_eigen_symmv_free (w);

  gsl_eigen_symmv_sort (eval, evec,
                        GSL_EIGEN_SORT_ABS_ASC);


  if (PRINT_RES)
  {
    for (i = 0; i < dimension; i++)
    {
      double eval_i
          = gsl_vector_get (eval, i);
      gsl_vector_view evec_i
          = gsl_matrix_column (evec, i);

      printf ("eigenvalue = %g\n", eval_i);
      printf ("eigenvector = \n");
      gsl_vector_fprintf (stdout,
                          &evec_i.vector, "%g");
    }
  }
  

  gsl_vector_free (eval);
  gsl_matrix_free (evec);

  return 0;
}
