#!/usr/bin/env python3

import sys

'''
Given a table of mac times (mac_invocation_times.txt), 
this script parses the output of the secure program that denotes the
number of mac invocations. Then it calculates how much it would have taken
'''

#the table with the mac times
mac_times=open('./mac_invocation_times.txt','r')

mac_lines= mac_times.readlines()

mac_times_dict={} #holds the values per 10k calls
for line in mac_lines:
	size=int(line.split(",")[0].split(":")[1].strip())
	loops=int(line.split(",")[1].split(":")[1].strip())
	mac_time=float(line.split(",")[2].split(":")[1].strip())
	division_to_reach_10k=loops/10000
	mac_times_dict[size]=mac_time/division_to_reach_10k
	

mac_times.close()

#here are the number of the mac invocations, and the size of each one
mac_invocations=open('./secure_program_mac_invocations.txt','r')

invok_lines=mac_invocations.readlines()

total_time_for_macs=0
for line in invok_lines:
	sz=int(line.split(",")[1].split(":")[1].strip())
	times=int(line.split(",")[2].split(":")[1].strip())
	#print(sz,times)
	if sz not in mac_times_dict:
		print("ERROR! ERROR!!!!!!!!!!!!!!!!! mac length ",str(sz)," not in mac_times_dict!", file=sys.stderr)
	total_time_for_macs=total_time_for_macs+(times/10000)*mac_times_dict[sz]

print("Total extra time for macs:",int(total_time_for_macs*1000)/1000)
mac_invocations.close()
