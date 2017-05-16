#!/usr/bin/env bash

#calculates the extra time caused by macs for a program
if [ ! -f ./mac_invocation_times.txt ]; then
    echo "Oops! mac_invocation_times.txt not found. Calculating them."
    time ./mac_time_calculator > mac_invocation_times.txt #get the table of the mac times, given a size to mac
    echo "Calculated mac times."
fi

echo "Executing secure program..."
time ./main_program_ksec | tee $1 | grep "Mac invocation" > secure_program_mac_invocations.txt
echo "Executed secure program."

echo "Calculating total time..."
python3 calculate_mac_time.py 

