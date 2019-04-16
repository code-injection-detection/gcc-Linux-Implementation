#include <stdio.h>
#include <gsl/gsl_rng.h>

/*
gcc rng_default.c  -lgsl -lgslcblas
*/

#define num_of_results 20000000*6
#define PRINT_RES 0

int main (void)
{
  const gsl_rng_type * T;
  gsl_rng * r;

  int i, n = num_of_results;

  gsl_rng_env_setup();

  T = gsl_rng_default;
  r = gsl_rng_alloc (T);

  for (i = 0; i < n; i++)
    {
      double u = gsl_rng_uniform (r);
	  #if PRINT_RES==1
	    printf ("%.5f\n", u);
	  #endif
    }

  gsl_rng_free (r);

  return 0;
}

