#!/usr/bin/env python3

import sys
import time
import os


#for x in `ls *.c`;do  echo $x &&  gcc $x -lgsl -lgslcblas -lm && ./measure_time_of_benchmark.py ./a.out 100; done


if len(sys.argv)!=3:
    print("Usage:"+sys.argv[0]+" <exec_path> <num_of_times_to_run>")
    sys.exit(-1)

exec_path=sys.argv[1]
num_of_times_to_run=int(sys.argv[2])
start=time.time()
for i in range(num_of_times_to_run):
    os.system(exec_path)
end=time.time()
total_time=end-start
avg_time=total_time/num_of_times_to_run
print(avg_time)
