#include <gsl/gsl_ntuple.h>
#include <gsl/gsl_rng.h>
#include <gsl/gsl_randist.h>
#include <math.h>
#include <gsl/gsl_histogram.h>

/*
gcc n_tuples_both_examples.c  -lgsl -lgslcblas -lm
*/

#define num_of_points 800000
#define PRINT_RES 0

struct data
{
  double x;
  double y;
  double z;
};


int sel_func (void *ntuple_data, void *params)
{
  struct data * data = (struct data *) ntuple_data;
  double x, y, z, E2, scale;
  scale = *(double *) params;

  x = data->x;
  y = data->y;
  z = data->z;

  E2 = x * x + y * y + z * z;

  return E2 > scale;
}

double val_func (void *ntuple_data, void *params)
{
  (void)(params); /* avoid unused parameter warning */
  struct data * data = (struct data *) ntuple_data;
  double x, y, z;

  x = data->x;
  y = data->y;
  z = data->z;

  return x * x + y * y + z * z;
}




int
main (void)
{
  
  //first part
  const gsl_rng_type * T;
  gsl_rng * r;

  struct data ntuple_row;
  int i;

  gsl_ntuple *ntuple
    = gsl_ntuple_create ("/dev/shm/test.dat", &ntuple_row,  //ramdisk, we should pay as little time as possible for the disk write
                         sizeof (ntuple_row));

  gsl_rng_env_setup ();

  T = gsl_rng_default;
  r = gsl_rng_alloc (T);

  for (i = 0; i < num_of_points; i++)
    {
      ntuple_row.x = gsl_ran_ugaussian (r);
      ntuple_row.y = gsl_ran_ugaussian (r);
      ntuple_row.z = gsl_ran_ugaussian (r);

      gsl_ntuple_write (ntuple);
    }

  gsl_ntuple_close (ntuple);
  gsl_rng_free (r);


  //second part
  double lower = 1.5;
  ntuple
    = gsl_ntuple_open ("/dev/shm/test.dat", &ntuple_row,
                       sizeof (ntuple_row));


  gsl_ntuple_select_fn S;
  gsl_ntuple_value_fn V;

  gsl_histogram *h = gsl_histogram_alloc (100);
  gsl_histogram_set_ranges_uniform(h, 0.0, 10.0);

  S.function = &sel_func;
  S.params = &lower;

  V.function = &val_func;
  V.params = 0;

  gsl_ntuple_project (h, ntuple, &V, &S);
  #if PRINT_RES
  gsl_histogram_fprintf (stdout, h, "%f", "%f");
  #endif
  gsl_histogram_free (h);
  gsl_ntuple_close (ntuple);


  return 0;
}