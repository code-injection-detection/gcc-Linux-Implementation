#!/usr/bin/env python3

import sys
import os
import string
import gc
import copy
import timeit
import random

if len(sys.argv)!=5:
	sys.stderr.write("Usage: %s <file_to_be_parsed> <type_of_cache> <cache_replacement_policy> <size_of_trace>\n" % sys.argv[0])
	sys.stderr.write("Where type_of_cache: icache|dcache\n")
	sys.stderr.write("cache_replacement_policy: fifo|bit_plru|lru|random \n")
	sys.stderr.write("size_of_trace: tiny|small|large \n")
	sys.exit(-1)

#bit_plru=https://www.youtube.com/watch?v=8CjifA2yw7s


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
		dirty=x[1]["dirty"]
		if addr_cand==addr:
			return ind
	return -1
			
def check_if_bit_plru_bits_are_all_one_and_replace(set_lst,index_of_mru=-1):
	#also, returns the next position that can be evicted. index_of_mru is used when we update sth that is in the cache
	found_0=False
	for ind,x in enumerate(set_lst):
		addr_for_line=x[0]
		dirty_for_line=x[1]["dirty"]
		bit_plru_for_line=x[1]["bit_plru"]
		used_timestamp_for_line=x[1]["used_timestamp"]
		if bit_plru_for_line==0 and index_of_mru!=ind: #we want a 0 except the index that has just been touched (which should normally be 1)
			found_0=True
			#print(x,ind,set_lst)
			return ind
	#everything is 1, set them all to 0 (except the index that was mru'ed)
	for ind,x in enumerate(set_lst):
		addr_for_line=x[0]
		dirty_for_line=x[1]["dirty"]
		bit_plru_for_line=x[1]["bit_plru"]
		used_timestamp_for_line=x[1]["used_timestamp"]
		if ind==index_of_mru:
			set_lst[ind]=(addr_for_line,{"dirty":dirty_for_line,"bit_plru":1,"used_timestamp":used_timestamp_for_line})
		else:
			set_lst[ind]=(addr_for_line,{"dirty":dirty_for_line,"bit_plru":0,"used_timestamp":used_timestamp_for_line})
	if index_of_mru==0:
		return 1
	else:
		return 0

def find_lru_index(set_lst):
	min_index=0
	min_ts=set_lst[min_index][1]["used_timestamp"]
	for ind,x in enumerate(set_lst):
		addr_for_line=x[0]
		dirty_for_line=x[1]["dirty"]
		bit_plru_for_line=x[1]["bit_plru"]
		used_timestamp_for_line=x[1]["used_timestamp"]
		if used_timestamp_for_line<min_ts:
			min_ts=used_timestamp_for_line
			min_index=ind
	return min_index

icache_sets=64
icache_size=32768
icache_line_size=64
icache_assosiativity=8
dcache_sets=64
dcache_size=32768
dcache_line_size=64
dcache_assosiativity=8
icache= [ ([],{"ind_for_next_placement_for_fifo":0}) for i in range(icache_sets) ] #list of lines, index for next placement
for ind,seti in enumerate(icache):
	icache[ind]= ([ (None,{"dirty":0,"bit_plru":0,"used_timestamp":0}) for i in range(icache_assosiativity) ],{"ind_for_next_placement_for_fifo":0}) #base address of cache line, dirty,bit_plru
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

cache_replacement_policy=sys.argv[3]
if cache_replacement_policy not in ["fifo","bit_plru","lru","random"]:
	sys.stderr.write("Please give a supported cache replacement policy.\n")
	sys.exit(-1)

size_of_trace=sys.argv[4]
if size_of_trace not in ["tiny","small","large"]:
	sys.stderr.write("Please give a supported size_of_trace.\n")
	sys.exit(-1)

cache_line_size_power_of_two=find_power_of_two_to_reach_a_number(cache_line_size)	
used_timestamp=0
total_cache_misses=0
total_mac_calcs=0

starttime = timeit.default_timer()

with open(sys.argv[1]) as f:
	for input_line in f:
		line=input_line.strip()
		if line=="" or line=="#eof":
			continue
		parts=line.split("|")
		dict_for_line={}
		for part in parts:
			if "=" in part.strip():
				#icache: "IP=%p | INS_ADDR=%ld | I_SZ=%ld | DISAS=%s\n"
				#dcache: "IP=%p | op=W | memaddr=%p | sz=%d | DISAS=%s\n"
				attr_v=part.split("=")
				attr=attr_v[0].strip()
				v=attr_v[1].strip()
				dict_for_line[attr]=v
		if size_of_trace=="tiny" and input_type_of_cache=="icache": #no "=" here
			dict_for_line["I_SZ"]=parts[1].strip()
			dict_for_line["INS_ADDR"]=parts[0].strip()
		if size_of_trace=="tiny" and input_type_of_cache=="dcache": #no "=" here
			dict_for_line["op"]=parts[0].strip()
			dict_for_line["memaddr"]=parts[1].strip()
			dict_for_line["sz"]=parts[2].strip()
		if input_type_of_cache=="icache" and int(dict_for_line["I_SZ"])>=15:
			print("Too large of an instruction!!")
			print(dict_for_line)
			sys.exit(-1)
		#for every memory access
		used_timestamp+=1
		if used_timestamp%1000000==0:
			print("Timestamp:"+str(used_timestamp)+ ", cache misses so far:"+str(total_cache_misses)+", mac calcs so far:"+str(total_mac_calcs),flush=True)
			stoptime = timeit.default_timer()
			gc.collect()
			print('Time so far: ', stoptime - starttime,flush=True)
		if input_type_of_cache=="icache":
			max_offset=int(dict_for_line["I_SZ"])
			ins_addr=int(dict_for_line["INS_ADDR"])
			max_ins_addr=ins_addr+max_offset
			#are they in the same cache line?
			line_start_addr=ins_addr-(ins_addr%cache_line_size)
			line_start_max_addr=max_ins_addr-(max_ins_addr%cache_line_size)
			if line_start_addr==line_start_max_addr:
				max_offset_for_loop=1 #if yes, just one iteration
			else:
				max_offset_for_loop=int(dict_for_line["I_SZ"]) #if no, iterate over all the bytes
			#we will iterate over all the bytes that are accessed. But if the range is in the same cache line, we will do one iteration only
			for offset in range(max_offset_for_loop):
				ins_addr=int(dict_for_line["INS_ADDR"])+offset
				line_start_addr=ins_addr-(ins_addr%cache_line_size)
				set_in_cache_for_line=(line_start_addr >> cache_line_size_power_of_two)%cache_sets
				ind_of_addr_in_set=find_if_addr_in_set(cache[set_in_cache_for_line][0],line_start_addr)
				#print(ins_addr,line_start_addr,set_in_cache_for_line,ind_of_addr_in_set)
				if ind_of_addr_in_set > -1: #found
					tuple_for_line=cache[set_in_cache_for_line][0][ind_of_addr_in_set]
					dirty_for_line=tuple_for_line[1]["dirty"]
					bit_plru_for_line=tuple_for_line[1]["bit_plru"]
					used_timestamp_for_line=tuple_for_line[1]["used_timestamp"]
					cache[set_in_cache_for_line][0][ind_of_addr_in_set]=(line_start_addr,{"dirty":dirty_for_line,"bit_plru":1,"used_timestamp":used_timestamp}) #valid for all replacement policies
					if cache_replacement_policy=="bit_plru":
						check_if_bit_plru_bits_are_all_one_and_replace(cache[set_in_cache_for_line][0],ind_of_addr_in_set)
				else: #not found, evict something else and put it there
					total_cache_misses+=1
					total_mac_calcs+=1
					lst_for_set=cache[set_in_cache_for_line][0]
					ind_for_next_placement_for_fifo_in_set=cache[set_in_cache_for_line][1]["ind_for_next_placement_for_fifo"]
					#print(cache[set_in_cache_for_line])
					if cache_replacement_policy=="fifo":
						lst_for_set[ind_for_next_placement_for_fifo_in_set]=(line_start_addr,{"dirty":0,"bit_plru":1,"used_timestamp":used_timestamp})
						#advance index for next placement in set (in case of fifo replacement policy)
						cache[set_in_cache_for_line]=(lst_for_set,{"ind_for_next_placement_for_fifo":(ind_for_next_placement_for_fifo_in_set+1)%cache_assoc})
					if cache_replacement_policy=="bit_plru":
						index_to_replace_in_set=check_if_bit_plru_bits_are_all_one_and_replace(cache[set_in_cache_for_line][0])
						tuple_for_line=cache[set_in_cache_for_line][0][index_to_replace_in_set]
						dirty_for_line=tuple_for_line[1]["dirty"]
						bit_plru_for_line=tuple_for_line[1]["bit_plru"]
						used_timestamp_for_line=tuple_for_line[1]["used_timestamp"]
						cache[set_in_cache_for_line][0][index_to_replace_in_set]=(line_start_addr,{"dirty":0,"bit_plru":1,"used_timestamp":used_timestamp})
						#and see if all have bit_plru 1 now
						check_if_bit_plru_bits_are_all_one_and_replace(cache[set_in_cache_for_line][0],index_to_replace_in_set)
					if cache_replacement_policy=="lru":
						index_to_replace_in_set=find_lru_index(cache[set_in_cache_for_line][0])
						cache[set_in_cache_for_line][0][index_to_replace_in_set]=(line_start_addr,{"dirty":0,"bit_plru":1,"used_timestamp":used_timestamp})
					if cache_replacement_policy=="random":
						index_to_replace_in_set=random.randint(0,cache_assoc-1)
						cache[set_in_cache_for_line][0][index_to_replace_in_set]=(line_start_addr,{"dirty":0,"bit_plru":1,"used_timestamp":used_timestamp})
						
		if input_type_of_cache=="dcache":
			max_offset=int(dict_for_line["sz"])
			mem_addr=hex_str_to_decimal(dict_for_line["memaddr"])
			max_mem_addr=mem_addr+max_offset
			#are they in the same cache line?
			line_start_addr=mem_addr-(mem_addr%cache_line_size)
			line_start_max_addr=max_mem_addr-(max_mem_addr%cache_line_size)
			if line_start_addr==line_start_max_addr:
				max_offset_for_loop=1 #if yes, just one iteration
			else:
				max_offset_for_loop=int(dict_for_line["sz"]) #if no, iterate over all the bytes
			#we will iterate over all the bytes that are accessed.  But if the range is in the same cache line, we will do one iteration only
			for offset in range(max_offset_for_loop):
				operation=dict_for_line["op"]
				mem_addr=hex_str_to_decimal(dict_for_line["memaddr"])+offset
				line_start_addr=mem_addr-(mem_addr%cache_line_size)
				set_in_cache_for_line=(line_start_addr >> cache_line_size_power_of_two)%cache_sets
				ind_of_addr_in_set=find_if_addr_in_set(cache[set_in_cache_for_line][0],line_start_addr)
				#print(mem_addr,line_start_addr,set_in_cache_for_line,ind_of_addr_in_set)
				if ind_of_addr_in_set > -1: #found
					tuple_for_line=cache[set_in_cache_for_line][0][ind_of_addr_in_set]
					dirty_for_line=tuple_for_line[1]["dirty"]
					bit_plru_for_line=tuple_for_line[1]["bit_plru"]
					used_timestamp_for_line=tuple_for_line[1]["used_timestamp"]
					if operation=="W":
						cache[set_in_cache_for_line][0][ind_of_addr_in_set]=(line_start_addr,{"dirty":1,"bit_plru":1,"used_timestamp":used_timestamp}) #valid for all replacement policies
					else:
						cache[set_in_cache_for_line][0][ind_of_addr_in_set]=(line_start_addr,{"dirty":dirty_for_line,"bit_plru":1,"used_timestamp":used_timestamp}) #valid for all replacement policies
					if cache_replacement_policy=="bit_plru":
						check_if_bit_plru_bits_are_all_one_and_replace(cache[set_in_cache_for_line][0],ind_of_addr_in_set)
				else: #not found, evict something else and put it there
					total_cache_misses+=1
					total_mac_calcs+=1
					lst_for_set=cache[set_in_cache_for_line][0]
					ind_for_next_placement_for_fifo_in_set=cache[set_in_cache_for_line][1]["ind_for_next_placement_for_fifo"]
					#print(cache[set_in_cache_for_line])
					if cache_replacement_policy=="fifo":
						if lst_for_set[ind_for_next_placement_for_fifo_in_set][1]["dirty"]==1:
							total_mac_calcs+=1 #we need to write it back, that is calculate its mac.
						if operation=="W":
							lst_for_set[ind_for_next_placement_for_fifo_in_set]=(line_start_addr,{"dirty":1,"bit_plru":1,"used_timestamp":used_timestamp})
						else:
							lst_for_set[ind_for_next_placement_for_fifo_in_set]=(line_start_addr,{"dirty":0,"bit_plru":1,"used_timestamp":used_timestamp})
						#advance index for next placement in set (in case of fifo replacement policy)
						cache[set_in_cache_for_line]=(lst_for_set,{"ind_for_next_placement_for_fifo":(ind_for_next_placement_for_fifo_in_set+1)%cache_assoc})
					if cache_replacement_policy=="bit_plru":
						index_to_replace_in_set=check_if_bit_plru_bits_are_all_one_and_replace(cache[set_in_cache_for_line][0])
						if cache[set_in_cache_for_line][0][index_to_replace_in_set][1]["dirty"]==1:
							total_mac_calcs+=1 #we need to write it back, that is calculate its mac.
						tuple_for_line=cache[set_in_cache_for_line][0][index_to_replace_in_set]
						dirty_for_line=tuple_for_line[1]["dirty"]
						bit_plru_for_line=tuple_for_line[1]["bit_plru"]
						used_timestamp_for_line=tuple_for_line[1]["used_timestamp"]
						if operation=="W":
							cache[set_in_cache_for_line][0][index_to_replace_in_set]=(line_start_addr,{"dirty":1,"bit_plru":1,"used_timestamp":used_timestamp})
						else:
							cache[set_in_cache_for_line][0][index_to_replace_in_set]=(line_start_addr,{"dirty":0,"bit_plru":1,"used_timestamp":used_timestamp})
						#and see if all have bit_plru 1 now
						check_if_bit_plru_bits_are_all_one_and_replace(cache[set_in_cache_for_line][0],index_to_replace_in_set)
					if cache_replacement_policy=="lru":
						index_to_replace_in_set=find_lru_index(cache[set_in_cache_for_line][0])
						if cache[set_in_cache_for_line][0][index_to_replace_in_set][1]["dirty"]==1:
							total_mac_calcs+=1 #we need to write it back, that is calculate its mac.
						if operation=="W":
							cache[set_in_cache_for_line][0][index_to_replace_in_set]=(line_start_addr,{"dirty":1,"bit_plru":1,"used_timestamp":used_timestamp})
						else:
							cache[set_in_cache_for_line][0][index_to_replace_in_set]=(line_start_addr,{"dirty":0,"bit_plru":1,"used_timestamp":used_timestamp})
					if cache_replacement_policy=="random":
						index_to_replace_in_set=random.randint(0,cache_assoc-1)
						if cache[set_in_cache_for_line][0][index_to_replace_in_set][1]["dirty"]==1:
							total_mac_calcs+=1 #we need to write it back, that is calculate its mac.
						if operation=="W":
							cache[set_in_cache_for_line][0][index_to_replace_in_set]=(line_start_addr,{"dirty":1,"bit_plru":1,"used_timestamp":used_timestamp})
						else:
							cache[set_in_cache_for_line][0][index_to_replace_in_set]=(line_start_addr,{"dirty":0,"bit_plru":1,"used_timestamp":used_timestamp})
		
		
stoptime = timeit.default_timer()
print("Total cache misses:"+str(total_cache_misses))
print("Total mac calcs:"+str(total_mac_calcs))
print("Total time:"+str(stoptime-starttime))	
print("Type of cache:"+str(input_type_of_cache))
print("Cache replacement policy:"+str(cache_replacement_policy))
print("Cache sets:"+str(cache_sets))
print("Cache size:"+str(cache_size))
print("Cache line size:"+str(cache_line_size))
print("Cache associativity:"+str(cache_assoc))
print("Size of trace:"+ str(size_of_trace))


