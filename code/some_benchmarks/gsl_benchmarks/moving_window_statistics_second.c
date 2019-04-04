#include <stdio.h>
#include <stdlib.h>

#include <gsl/gsl_math.h>
#include <gsl/gsl_movstat.h>
#include <gsl/gsl_rng.h>
#include <gsl/gsl_randist.h>
#include <gsl/gsl_vector.h>



/*
gcc moving_window_statistics_second.c  -lgsl -lgslcblas -lm
However it seems that it needs a new version of libgsl
*/


#define len_of_time_series 1000000
#define window_size 20000
#define PRINT_RES 1

int
main(void)
{
  const size_t N = len_of_time_series;                                 /* length of time series */
  const double sigma[] = { 1.0, 5.0, 1.0, 3.0, 5.0 };    /* variances */
  const size_t N_sigma[] = { (int)(N*0.2), (int)(N*0.45), (int)(N*0.6), (int)(N*0.85), N }; /* samples where variance changes */
  const size_t K = 20000;                                   /* window size */
  gsl_vector *x = gsl_vector_alloc(N);
  gsl_vector *xmedian = gsl_vector_alloc(N);
  gsl_vector *xmad = gsl_vector_alloc(N);
  gsl_vector *xiqr = gsl_vector_alloc(N);
  gsl_vector *xSn = gsl_vector_alloc(N);
  gsl_vector *xQn = gsl_vector_alloc(N);
  gsl_vector *xsd = gsl_vector_alloc(N);
  gsl_rng *r = gsl_rng_alloc(gsl_rng_default);
  gsl_movstat_workspace * w = gsl_movstat_alloc(K);
  size_t idx = 0;
  size_t i;

  for (i = 0; i < N; ++i)
    {
      double gi = gsl_ran_gaussian(r, sigma[idx]);
      double u = gsl_rng_uniform(r);
      double outlier = (u < 0.01) ? 15.0*GSL_SIGN(gi) : 0.0;
      double xi = gi + outlier;

      gsl_vector_set(x, i, xi);

      if (i == N_sigma[idx] - 1)
        ++idx;
    }

  /* compute moving statistics */
  gsl_movstat_mad(GSL_MOVSTAT_END_TRUNCATE, x, xmedian, xmad, w);
  gsl_movstat_qqr(GSL_MOVSTAT_END_TRUNCATE, x, 0.25, xiqr, w);
  gsl_movstat_Sn(GSL_MOVSTAT_END_TRUNCATE, x, xSn, w);
  gsl_movstat_Qn(GSL_MOVSTAT_END_TRUNCATE, x, xQn, w);
  gsl_movstat_sd(GSL_MOVSTAT_END_TRUNCATE, x, xsd, w);

  /* scale IQR by factor to approximate standard deviation */
  gsl_vector_scale(xiqr, 0.7413);

  /* print results */
  #if PRINT_RES
  idx = 0;
  for (i = 0; i < N; ++i)
    {
      printf("%zu %f %f %f %f %f %f %f\n",
             i,
             gsl_vector_get(x, i),
             sigma[idx],
             gsl_vector_get(xmad, i),
             gsl_vector_get(xiqr, i),
             gsl_vector_get(xSn, i),
             gsl_vector_get(xQn, i),
             gsl_vector_get(xsd, i));

      if (i == N_sigma[idx] - 1)
        ++idx;
    }
  #endif

  gsl_vector_free(x);
  gsl_vector_free(xmedian);
  gsl_vector_free(xmad);
  gsl_vector_free(xiqr);
  gsl_vector_free(xSn);
  gsl_vector_free(xQn);
  gsl_vector_free(xsd);
  gsl_rng_free(r);
  gsl_movstat_free(w);

  return 0;
}