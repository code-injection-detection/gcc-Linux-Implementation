#!/usr/bin/env python3

#gives a line in commas
import sys

name_of_file="./calc_determinant_sec_calc_det_11_squeezed_keys_with_padded_nops_maced/aggregated_results.txt"

file_src=open(name_of_file,'r')
src_lines= file_src.readlines()

var_code_sizes=[1,7,10,20,30,39]
fixed_size_sizes=[20,55,71,75]

types_of_bench=["NO_MACS","IGNORING_MACS","MACS_IGNORED_BUT_WE_FORCE_CODE_BLOCK_SPLIT","IGNORING_MACS_AT_LAST_MOMENT","DOING_EVERYTHING",
				"CODE_CACHE=20_DATA_CACHE=20_ASSOC_2",
				"CACHE=40_DATA_CACHE=40_ASSOC_2",
				"CODE_CACHE=60_DATA_CACHE=60_ASSOC_2",
				"CODE_CACHE=80_DATA_CACHE=80_ASSOC_2",
				"CODE_CACHE=100_DATA_CACHE=100_ASSOC_2",
				"CODE_CACHE=150_DATA_CACHE=150_ASSOC_2",
				"CODE_CACHE=200_DATA_CACHE=200_ASSOC_2",
				"CODE_CACHE=1_DATA_CACHE=1_ASSOC_DIRECT_MAPPED",
				"CODE_CACHE=2_DATA_CACHE=2_ASSOC_DIRECT_MAPPED",
				"CODE_CACHE=4_DATA_CACHE=4_ASSOC_DIRECT_MAPPED",
				"CODE_CACHE=6_DATA_CACHE=6_ASSOC_DIRECT_MAPPED",
				"CODE_CACHE=8_DATA_CACHE=8_ASSOC_DIRECT_MAPPED",
				"CODE_CACHE=10_DATA_CACHE=10_ASSOC_DIRECT_MAPPED",
				]

strs_not_present=[]
for type_of_bench in types_of_bench:
	if (type_of_bench=="IGNORING_MACS"):
		strs_not_present.append("AT_LAST_MOMENT")
	else:
		strs_not_present.append("RANDOM_STR_NEVER_PRESENT_ANYWHERE")


for var_size in var_code_sizes:
	lines_wanted=[]
	var_size_str="VAR_SIZE_"+str(var_size)+":"
	print(var_size_str)
	for line in src_lines:
		if (var_size_str in line):
			lines_wanted.append(line)
	for i,type_of_bench in enumerate(types_of_bench):
		for line in lines_wanted:
			if (type_of_bench in line) and (strs_not_present[i] not in line):
				number_in_sec=line.strip().split(":")[1].strip().split(" ")[0].strip()
				str_to_print=str(number_in_sec).replace(".",",")
				print(str_to_print,end=' ')
				break
	print("")
		
for fixed_size in fixed_size_sizes:
	lines_wanted=[]
	fixed_size_str="FIXED_SIZE_"+str(fixed_size)+":"
	print(fixed_size_str)
	for line in src_lines:
		if (fixed_size_str in line):
			lines_wanted.append(line)
	for i,type_of_bench in enumerate(types_of_bench):
		for line in lines_wanted:
			if (type_of_bench in line) and (strs_not_present[i] not in line):
				number_in_sec=line.strip().split(":")[1].strip().split(" ")[0].strip()
				str_to_print=str(number_in_sec).replace(".",",")
				print(str_to_print,end=' ')
				break
	print("")











file_src.close()
