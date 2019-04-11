#include <stdio.h>
#include <math.h>
#include <gsl/gsl_errno.h>
#include <gsl/gsl_fft_complex.h>

/*
gcc fft_first.c  -lgsl -lgslcblas -lm
*/

#define PULSE_SAMPLE_LEN 1048576  //power of 2
#define PULSE_ACTUAL_LEN 100000
#define PRINT_RES 0


#define REAL(z,i) ((z)[2*(i)])
#define IMAG(z,i) ((z)[2*(i)+1])

double data[2*PULSE_SAMPLE_LEN];

int
main (void)
{
  int i; 

  for (i = 0; i < PULSE_SAMPLE_LEN; i++)
    {
       REAL(data,i) = 0.0; IMAG(data,i) = 0.0;
    }

  REAL(data,0) = 1.0;

  for (i = 1; i <= PULSE_ACTUAL_LEN; i++)
    {
       REAL(data,i) = REAL(data,PULSE_SAMPLE_LEN-i) = 1.0;
    }

  #if PRINT_RES
  for (i = 0; i < PULSE_SAMPLE_LEN; i++)
    {
      printf ("%d %e %e\n", i,
              REAL(data,i), IMAG(data,i));
    }
  printf ("\n\n");
  #endif  

  gsl_fft_complex_radix2_forward (data, 1, PULSE_SAMPLE_LEN);

  #if PRINT_RES
  for (i = 0; i < PULSE_SAMPLE_LEN; i++)
    {
      printf ("%d %e %e\n", i,
              REAL(data,i)/sqrt(PULSE_SAMPLE_LEN),
              IMAG(data,i)/sqrt(PULSE_SAMPLE_LEN));
    }
  #endif

  return 0;
}

