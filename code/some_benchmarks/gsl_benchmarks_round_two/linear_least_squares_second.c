#include <stdio.h>
#include <math.h>
#include <gsl/gsl_randist.h>
#include <gsl/gsl_multifit.h>

/*
gcc linear_least_squares_second.c  -lgsl -lgslcblas -lm
*/

#define NUM_OF_POINTS 900000
#define PRINT_RES 0



double var1[NUM_OF_POINTS+10];
double var2[NUM_OF_POINTS+10];
double var3[NUM_OF_POINTS+10];

int
main (void)
{
  double x;
  const gsl_rng_type * T;
  gsl_rng * r;

  gsl_rng_env_setup ();

  T = gsl_rng_default;
  r = gsl_rng_alloc (T);
  int cnt=0;

  for (x = 0.1; x < NUM_OF_POINTS/100000; x+= 0.00001,cnt++)
    {
      double y0 = exp(x);
      double sigma = 0.1 * y0;
      double dy = gsl_ran_gaussian (r, sigma);

	  var1[cnt]=x;
	  var2[cnt]=y0+dy;
	  var3[cnt]=sigma;
	  #if PRINT_RES
      printf ("%g %g %g\n", x, y0 + dy, sigma);
	  #endif
    }

  gsl_rng_free(r);





  

  int i, n;
  double xi, yi, ei, chisq;
  gsl_matrix *X, *cov;
  gsl_vector *y, *w, *c;


  n = cnt;

  X = gsl_matrix_alloc (n, 3);
  y = gsl_vector_alloc (n);
  w = gsl_vector_alloc (n);

  c = gsl_vector_alloc (3);
  cov = gsl_matrix_alloc (3, 3);

  for (i = 0; i < n; i++)
    {
     // int count = fscanf (stdin, "%lg %lg %lg",
     //                     &xi, &yi, &ei);

	 xi=var1[i];
	 yi=var2[i];
	 ei=var3[i];

	  #if PRINT_RES
      printf ("%g %g +/- %g\n", xi, yi, ei);
	  #endif

      gsl_matrix_set (X, i, 0, 1.0);
      gsl_matrix_set (X, i, 1, xi);
      gsl_matrix_set (X, i, 2, xi*xi);

      gsl_vector_set (y, i, yi);
      gsl_vector_set (w, i, 1.0/(ei*ei));
    }

  {
    gsl_multifit_linear_workspace * work
      = gsl_multifit_linear_alloc (n, 3);
    gsl_multifit_wlinear (X, w, y, c, cov,
                          &chisq, work);
    gsl_multifit_linear_free (work);
  }

#define C(i) (gsl_vector_get(c,(i)))
#define COV(i,j) (gsl_matrix_get(cov,(i),(j)))

  {
	#if PRINT_RES
    printf ("# best fit: Y = %g + %g X + %g X^2\n",
            C(0), C(1), C(2));

    printf ("# covariance matrix:\n");
    printf ("[ %+.5e, %+.5e, %+.5e  \n",
               COV(0,0), COV(0,1), COV(0,2));
    printf ("  %+.5e, %+.5e, %+.5e  \n",
               COV(1,0), COV(1,1), COV(1,2));
    printf ("  %+.5e, %+.5e, %+.5e ]\n",
               COV(2,0), COV(2,1), COV(2,2));
    printf ("# chisq = %g\n", chisq);
	#endif
  }

  gsl_matrix_free (X);
  gsl_vector_free (y);
  gsl_vector_free (w);
  gsl_vector_free (c);
  gsl_matrix_free (cov);

  return 0;
}

