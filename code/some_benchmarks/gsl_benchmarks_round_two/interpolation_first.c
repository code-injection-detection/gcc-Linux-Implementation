#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <gsl/gsl_errno.h>
#include <gsl/gsl_spline.h>


/*
gcc interpolation_first.c  -lgsl -lgslcblas -lm
*/

#define NUM_OF_POINTS 150000
#define PRINT_RES 0

double xi, yi, x[NUM_OF_POINTS], y[NUM_OF_POINTS];

int
main (void)
{
  int i;

  #if PRINT_RES
  printf ("#m=0,S=17\n");
  #endif

  for (i = 0; i < NUM_OF_POINTS; i++)
    {
      x[i] = i + 0.5 * sin (i);
      y[i] = i + cos (i * i);
	#if PRINT_RES
      printf ("%g %g\n", x[i], y[i]);
	#endif
    }

  #if PRINT_RES
  printf ("#m=1,S=0\n");
  #endif

  {
    gsl_interp_accel *acc
      = gsl_interp_accel_alloc ();
    gsl_spline *spline
      = gsl_spline_alloc (gsl_interp_cspline, NUM_OF_POINTS);

    gsl_spline_init (spline, x, y, NUM_OF_POINTS);

    for (xi = x[0]; xi < x[NUM_OF_POINTS-1]; xi += 0.01)
      {
        yi = gsl_spline_eval (spline, xi, acc);
		#if PRINT_RES
        printf ("%g %g\n", xi, yi);
		#endif
      }
    gsl_spline_free (spline);
    gsl_interp_accel_free (acc);
  }
  return 0;
}
