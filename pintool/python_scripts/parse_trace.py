#!/usr/bin/env python3

import sys
import os
import string
import gc
import copy

if len(sys.argv)!=3:
	sys.stderr.write("Usage: %s <file_to_be_parsed> icache|dcache\n" % sys.argv[0])
	sys.exit(-1)


def find_power_of_two_to_reach_a_number(number):
	x=0
	while (1<<x) < number:
		x+=1
	return x

def hex_str_to_decimal(hex_str):
	return int(hex_str[2:], 16)


def find_if_addr_in_set(set_lst,addr):
	for ind,x in enumerate(set_lst):
		addr_cand=x[0]
		dirty=x[1]
		if addr_cand==addr:
			return ind
	return -1
			


icache_sets=64
icache_size=32768
icache_line_size=64
icache_assosiativity=8
dcache_sets=64
dcache_size=32768
dcache_line_size=64
dcache_assosiativity=8
icache= [ ([],0) for i in range(icache_sets) ] #list of lines, index for next placement
for ind,seti in enumerate(icache):
	icache[ind]= ([ (None,0) for i in range(icache_assosiativity) ],0) #base address of cache line, dirty
dcache=copy.deepcopy(icache)
#print(icache)

input_type_of_cache=sys.argv[2]
if input_type_of_cache=="icache":
	cache_sets=icache_sets
	cache_size=icache_size
	cache_line_size=icache_line_size
	cache_assoc=icache_assosiativity
	cache=icache
elif input_type_of_cache=="dcache":
	cache_sets=dcache_sets
	cache_size=dcache_size
	cache_line_size=dcache_line_size
	cache_assoc=dcache_assosiativity
	cache=dcache
else:
	sys.stderr.write("Wrong type of cache.\n")
	sys.exit(-1)
	
cache_line_size_power_of_two=find_power_of_two_to_reach_a_number(cache_line_size)	


total_cache_misses=0

with open(sys.argv[1]) as f:
	for input_line in f:
		line=input_line.strip()
		if line=="" or line=="#eof":
			continue
		parts=line.split("|")
		dict_for_line={}
		for part in parts:
			if "=" in part.strip():
				#"IP=%p | INS_ADDR=%ld | I_SZ=%ld | DISAS=%s\n"
				attr_v=part.split("=")
				attr=attr_v[0].strip()
				v=attr_v[1].strip()
				dict_for_line[attr]=v
		if "INS_ADDR" not in dict_for_line or "I_SZ" not in dict_for_line:
			print(line,dict_for_line)
		if input_type_of_cache=="icache" and int(dict_for_line["I_SZ"])>=13:
			print("OMG!")
			print(dict_for_line)
			sys.exit(-1)
		#for every memory access
		if input_type_of_cache=="icache":
			#we will iterate over all the bytes that are accessed.
			for offset in range(int(dict_for_line["I_SZ"])):
				ins_addr=int(dict_for_line["INS_ADDR"])+offset
				line_start_addr=ins_addr-(ins_addr%cache_line_size)
				set_in_cache_for_line=(line_start_addr >> cache_line_size_power_of_two)%cache_sets
				ind_of_addr_in_set=find_if_addr_in_set(cache[set_in_cache_for_line][0],line_start_addr)
				#print(ins_addr,line_start_addr,set_in_cache_for_line,ind_of_addr_in_set)
				if ind_of_addr_in_set > -1: #found
					tuple_for_line=cache[set_in_cache_for_line][0][ind_of_addr_in_set]
					dirty=tuple_for_line[1]
				else: #not found
					total_cache_misses+=1
					ind_for_next_placement_in_set=cache[set_in_cache_for_line][1]
					lst_for_set=cache[set_in_cache_for_line][0]
					#print(cache[set_in_cache_for_line])
					lst_for_set[ind_for_next_placement_in_set]=(line_start_addr,0)
					#advance index for next placement in set
					cache[set_in_cache_for_line]=(lst_for_set,(ind_for_next_placement_in_set+1)%cache_assoc)
					
print(total_cache_misses)


