#!/bin/bash


#categories not working:
#moving statistics, digital filtering


#not worth probably:
# numerical integration, ordinary differential equations?


DIR_WITH_GSL_BENCHMARKS=`pwd`
DIR_WITH_PINTOOL_AUTOMATE_SCRIPT="${DIR_WITH_GSL_BENCHMARKS}/../../../pintool/"
FLAGS=" -lgsl -lgslcblas -lm "
#files_to_compile=( "eigenvalues_eigenvectors_4th_order_hilbert_matrix_doubles.c" "qr_decomp_col_pivoting_doubles.c" "lu_decomp_doubles.c" "qr_decomp_doubles.c" "matrix_multiplication_floats.c" "matrix_multiplication_doubles.c" )
files_to_compile=`ls ${DIR_WITH_GSL_BENCHMARKS}/*.c`
mkdir -p /tmp/gsl_benchmarks_execs/


for fl in `basename -a ${files_to_compile}`;
do
    EXEC_NAME="${fl/.c/}"
    gcc "${DIR_WITH_GSL_BENCHMARKS}/${fl}" -o "/tmp/gsl_benchmarks_execs/${EXEC_NAME}" $FLAGS
	if [ $? -eq 0 ]; then
		#echo ${fl}
		cd ${DIR_WITH_PINTOOL_AUTOMATE_SCRIPT}
    	./automate.sh tiny 1 1 fifo "/tmp/gsl_benchmarks_execs/${EXEC_NAME}" "${EXEC_NAME}benchmark"
	else
		echo "failed to compile benchmark ${fl}"
	fi
    
    cd ${DIR_WITH_GSL_BENCHMARKS}
done


