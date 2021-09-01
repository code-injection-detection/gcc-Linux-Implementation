#!/usr/bin/env python3

import sys

#gives a line of benchmarks  can be put into a spreadsheet easily
name_of_file="./Hanoi_Hanoi_24_no_sc_print_for_delay/aggregated_results.txt"

file_src=open(name_of_file,'r')
src_lines= file_src.readlines()

#fixed_size_sizes=[20,55,71,75]
fixed_size_sizes=[16,32,48,64] #for code block =data block

types_of_bench=["NO_MACS","IGNORING_MACS",
				"CODE_CACHE=50_DATA_CACHE=50_ASSOC_2",
				"CODE_CACHE=100_DATA_CACHE=100_ASSOC_2",
				"CODE_CACHE=150_DATA_CACHE=150_ASSOC_2",
				"CODE_CACHE=200_DATA_CACHE=200_ASSOC_2",
				"CODE_CACHE=250_DATA_CACHE=250_ASSOC_2",
				"CODE_CACHE=300_DATA_CACHE=300_ASSOC_2",
				"CODE_CACHE=350_DATA_CACHE=350_ASSOC_2",
				"CODE_CACHE=400_DATA_CACHE=400_ASSOC_2"			
				]

strs_not_present=[]
for type_of_bench in types_of_bench:
	if (type_of_bench=="IGNORING_MACS"):
		pass		
		#strs_not_present.append("AT_LAST_MOMENT")
	else:
		strs_not_present.append("RANDOM_STR_NEVER_PRESENT_ANYWHERE")

'''
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
'''	
	
for fixed_size in fixed_size_sizes:
	lines_wanted=[]
	fixed_size_str="FIXED_SIZE_"+str(fixed_size)+":"
	print(fixed_size_str)
	for line in src_lines:
		if (fixed_size_str in line):
			lines_wanted.append(line)
	for i,type_of_bench in enumerate(types_of_bench):
		for line in lines_wanted:
			if (type_of_bench in line): #and (strs_not_present[i] not in line):
				number_in_sec=line.strip().split(":")[1].strip().split(" ")[0].strip()
				str_to_print=str(number_in_sec).replace(".",",")
				print(str_to_print,end=' ')
				break
	print("")











file_src.close()
