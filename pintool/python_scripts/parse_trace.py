#!/usr/bin/env python3

import sys
import os
import string
import gc
import copy

if len(sys.argv)!=2:
	print("Usage: %s <file_to_be_parsed>" % sys.argv[0])
	sys.exit(-1)


def hex_str_to_decimal(hex_str):
	return int(hex_str[2:], 16)





icache_sets=64
icache_size=32768
icache_line_size=64
icache_assosiativity=8
dcache_sets=64
dcache_size=32768
dcache_line_size=64
dcache_assosiativity=8


icache= [ [] for i in range(icache_sets) ]
for ind,seti in enumerate(icache):
	icache[ind]= [ [] for i in range(icache_assosiativity) ]
dcache=copy.deepcopy(icache)

with open(sys.argv[1]) as f:
	for input_line in f:
		line=input_line.strip()
		parts=line.split("|")
		dict_for_line={}
		for part in parts:
			if "=" in part.strip():
				#"IP=%p | INS_ADDR=%ld | I_SZ=%ld | DISAS=%s\n"
				attr_v=part.split("=")
				attr=attr_v[0].strip()
				v=attr_v[1].strip()
				dict_for_line[attr]=v
		#for every memory access
		ins_addr=hex_str_to_decimal(dict_for_line["INS_ADDR"])
		
	


