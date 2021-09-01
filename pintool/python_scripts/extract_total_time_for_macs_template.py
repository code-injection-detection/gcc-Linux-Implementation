#!/usr/bin/env python3

#get these numbers by running "mac_time_calculator in code/"

i7_2600K_str='''
Intel(R) Core(TM) i7-2600K CPU @ 3.40GHz:
Mac size:16, loops:100000000, time:4.909953
Mac size:32, loops:100000000, time:6.598575
Mac size:48, loops:100000000, time:8.734460
Mac size:64, loops:100000000, time:10.890603
Mac size:80, loops:100000000, time:13.022373
Mac size:96, loops:100000000, time:15.184416
Mac size:112, loops:100000000, time:17.324297
Mac size:128, loops:100000000, time:19.474516
Mac size:144, loops:100000000, time:21.598937
Mac size:160, loops:100000000, time:23.817630
Mac size:176, loops:100000000, time:25.890025
Mac size:192, loops:100000000, time:28.043098
Mac size:208, loops:100000000, time:30.192921
Mac size:224, loops:100000000, time:32.333540
'''
i5_6500_str='''
Intel(R) Core(TM) i5-6500 CPU @ 3.20GHz:
Mac size:16, loops:100000000, time:4.234270
Mac size:32, loops:100000000, time:5.426047
Mac size:48, loops:100000000, time:6.590425
Mac size:64, loops:100000000, time:7.778650
Mac size:80, loops:100000000, time:8.948347
Mac size:96, loops:100000000, time:10.107129
Mac size:112, loops:100000000, time:11.235266
Mac size:128, loops:100000000, time:12.431450
Mac size:144, loops:100000000, time:13.561938
Mac size:160, loops:100000000, time:14.762871
Mac size:176, loops:100000000, time:15.954924
Mac size:192, loops:100000000, time:17.187224
Mac size:208, loops:100000000, time:18.399720
Mac size:224, loops:100000000, time:19.561842
'''

supported_cpus=["i5-6500","i7-2600K"]

import os
import sys
import string

num_of_loops=100000000
cpu_dicts={"i5-6500":{},"i7-2600K":{}}

for ind,line in enumerate(i5_6500_str.splitlines()):
    if "Mac size" in line:
        mac_size=int(line.split("Mac size:")[1].split(",")[0].strip())
        time=float(line.split("time:")[1].strip())
        cpu_dicts["i5-6500"][mac_size]=time

for ind,line in enumerate(i7_2600K_str.splitlines()):
    if "Mac size" in line:
        mac_size=int(line.split("Mac size:")[1].split(",")[0].strip())
        time=float(line.split("time:")[1].strip())
        cpu_dicts["i7-2600K"][mac_size]=time

#default values:
cpu_dicts["i7-2600K"][0]= cpu_dicts["i7-2600K"][80]
cpu_dicts["i5-6500"][0]= cpu_dicts["i5-6500"][80]


our_cpu_model=os.popen("lscpu | grep 'Model name:'").read()
our_cpu=''
for cand_cpu in supported_cpus:
    if cand_cpu in our_cpu_model:
        our_cpu=cpu_dicts[cand_cpu]

if our_cpu=="":
    print("Sorry, we don't have time measurements for this CPU: "+our_cpu_model)
    sys.exit(-1)


if len(sys.argv)!=2 and len(sys.argv)!=3:
    print("Run as follows:")
    print("%s <number_of_macs>" % sys.argv[0])
    print("Or:")
    print("%s <mac_size> <number_of_macs>" % sys.argv[0])
    sys.exit(-1)

if len(sys.argv)==3:
    size_of_mac=int(sys.argv[1])
    num_of_macs=int(sys.argv[2])
else:
    size_of_mac=0
    num_of_macs=int(sys.argv[1])

Round = lambda x, n: eval('"%.' + str(int(n)) + 'f" % ' + repr(x))
total_extra_time=(num_of_macs/num_of_loops)*our_cpu[size_of_mac]

print(Round(total_extra_time,3))
