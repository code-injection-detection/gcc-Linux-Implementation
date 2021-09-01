#include <stdio.h>
#include <math.h>
#include <gsl/gsl_errno.h>
#include <gsl/gsl_fft_complex.h>

/*
gcc fft_second.c  -lgsl -lgslcblas -lm
*/

#define PULSE_SAMPLE_LEN 1381380 //11⋅5⋅2⋅6⋅7⋅13⋅23, small factors
#define PULSE_ACTUAL_LEN 30000
#define PRINT_RES 0

#define REAL(z,i) ((z)[2*(i)])
#define IMAG(z,i) ((z)[2*(i)+1])

double data[2*PULSE_SAMPLE_LEN];

int main (void)
{
  int i;
  const int n = PULSE_SAMPLE_LEN;
  
  gsl_fft_complex_wavetable * wavetable;
  gsl_fft_complex_workspace * workspace;

  for (i = 0; i < n; i++)
    {
      REAL(data,i) = 0.0;
      IMAG(data,i) = 0.0;
    }

  data[0] = 1.0;

  for (i = 1; i <= PULSE_ACTUAL_LEN; i++)
    {
      REAL(data,i) = REAL(data,n-i) = 1.0;
    }

  #if PRINT_RES
  for (i = 0; i < n; i++)
    {
      printf ("%d: %e %e\n", i, REAL(data,i),
                                IMAG(data,i));
    }
  printf ("\n");
  #endif

  wavetable = gsl_fft_complex_wavetable_alloc (n);
  workspace = gsl_fft_complex_workspace_alloc (n);

  #if PRINT_RES
  for (i = 0; i < (int) wavetable->nf; i++)
    {
       printf ("# factor %d: %zu\n", i,
               wavetable->factor[i]);
    }
  #endif

  gsl_fft_complex_forward (data, 1, n,
                           wavetable, workspace);
  
  #if PRINT_RES
  for (i = 0; i < n; i++)
    {
      printf ("%d: %e %e\n", i, REAL(data,i),
                                IMAG(data,i));
    }
  #endif

  gsl_fft_complex_wavetable_free (wavetable);
  gsl_fft_complex_workspace_free (workspace);
  return 0;
}

