#include <stdio.h>
#include <gsl/gsl_math.h>
#include <gsl/gsl_chebyshev.h>


/*
gcc chebysev_approx.c  -lgsl -lgslcblas -lm
*/

#define NUM_OF_POINTS 1000000
#define PRINT_RES 0

double
f (double x, void *p)
{
  (void)(p); /* avoid unused parameter warning */

  if (x < 0.5)
    return 0.25;
  else
    return 0.75;
}

int
main (void)
{
  int i, n = NUM_OF_POINTS;

  gsl_cheb_series *cs = gsl_cheb_alloc (40);

  gsl_function F;

  F.function = f;
  F.params = 0;

  gsl_cheb_init (cs, &F, 0.0, 1.0);

  for (i = 0; i < n; i++)
    {
      double x = i / (double)n;
      double r10 = gsl_cheb_eval_n (cs, 10, x);
      double r40 = gsl_cheb_eval (cs, x);
	  #if PRINT_RES
      printf ("%g %g %g %g\n",
              x, GSL_FN_EVAL (&F, x), r10, r40);
	  #endif
    }

  gsl_cheb_free (cs);

  return 0;
}

