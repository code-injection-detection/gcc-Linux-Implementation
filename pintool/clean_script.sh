#!/bin/bash

WORKING_DIR=`pwd`

rm -rf ${WORKING_DIR}/*trace.out
rm -rf ${WORKING_DIR}/*traceparse.out
rm -rf ${WORKING_DIR}/*trace_modified.cpp
rm -rf ${WORKING_DIR}/a.out
rm -rf ${WORKING_DIR}/nohup.out
rm -rf ${WORKING_DIR}/parse_trace.py
rm -rf ${WORKING_DIR}/extract_total_time_for_macs.py
rm -rf ${WORKING_DIR}/output_stdin_and_on_signal
rm -rf ${WORKING_DIR}/progout_fifo*
rm -rf ${WORKING_DIR}/*summed_up_results.txt
