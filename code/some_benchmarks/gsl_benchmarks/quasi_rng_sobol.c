#include <stdio.h>
#include <gsl/gsl_qrng.h>

/*
gcc quasi_rng_sobol.c  -lgsl -lgslcblas -lm
*/

#define num_of_results 20000000
#define PRINT_RES 0

int main (void)
{
  int i;
  gsl_qrng * q = gsl_qrng_alloc (gsl_qrng_sobol, 2);

  for (i = 0; i < num_of_results; i++)
    {
      double v[2];
      gsl_qrng_get (q, v);
      #if PRINT_RES
      printf ("%.5f %.5f\n", v[0], v[1]);
      #endif
    }

  gsl_qrng_free (q);
  return 0;
}

