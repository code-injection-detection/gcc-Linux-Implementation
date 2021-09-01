#!/usr/bin/env python3

import sys

#just isolates the total seconds that a program would take

result_file=open(sys.argv[1],'r')
res_lines=result_file.readlines()

line=res_lines[0]

if "Secure" in line:
	number=line.split(":")[1].split(" ")[0].strip()
else:
	number=line.split(":")[1].strip()

print(': ',number,'sec')
