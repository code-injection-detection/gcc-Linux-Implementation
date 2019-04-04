#include <stdio.h>
#include <math.h>
#include <gsl/gsl_errno.h>
#include <gsl/gsl_fft_real.h>
#include <gsl/gsl_fft_halfcomplex.h>

/*
gcc fft_third.c  -lgsl -lgslcblas -lm
*/

#define PULSE_SAMPLE_LEN 1000000
#define PRINT_RES 0



double data[PULSE_SAMPLE_LEN];

int main (void)
{
  int i, n = PULSE_SAMPLE_LEN;
 
  gsl_fft_real_wavetable * real;
  gsl_fft_halfcomplex_wavetable * hc;
  gsl_fft_real_workspace * work;

  for (i = 0; i < PULSE_SAMPLE_LEN; i++)
    {
      data[i] = 0.0;
    }

  for (i = PULSE_SAMPLE_LEN / 3; i < 2 * PULSE_SAMPLE_LEN / 3; i++)
    {
      data[i] = 1.0;
    }

  #if PRINT_RES
  for (i = 0; i < n; i++)
    {
      printf ("%d: %e\n", i, data[i]);
    }
  printf ("\n");
  #endif

  work = gsl_fft_real_workspace_alloc (n);
  real = gsl_fft_real_wavetable_alloc (n);

  gsl_fft_real_transform (data, 1, n,
                          real, work);

  gsl_fft_real_wavetable_free (real);

  for (i = 11; i < n; i++)
    {
      data[i] = 0;
    }

  hc = gsl_fft_halfcomplex_wavetable_alloc (n);

  gsl_fft_halfcomplex_inverse (data, 1, n,
                               hc, work);
  gsl_fft_halfcomplex_wavetable_free (hc);

  #if PRINT_RES
  for (i = 0; i < n; i++)
    {
      printf ("%d: %e\n", i, data[i]);
    }
  #endif

  gsl_fft_real_workspace_free (work);
  return 0;
}
