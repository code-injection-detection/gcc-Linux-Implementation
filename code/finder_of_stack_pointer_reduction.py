#!/usr/bin/env python3

'''
This script tries to find where is the return address in the call stack when the do_verify_code_on_the_fly() is called. Is does that by disassembling the object file crypto_functions.o and looking at the amount of pushes and subtractions the stack pointer has been put through. If the correct size of the pushes has been determined, then it prints how the offsert to find the reutn address should be.
'''

import sys
import fileinput


lines=[]
for line in fileinput.input():
    lines.append(line)
    #sys.stderr.write(line)

number_of_bytes_diff=0
for line in lines:
    if "<do_verify_code_on_the_fly>:" in line:
        pass
    
    if "0x10(%rsp),%rax" in line:
        break
    
    if "push" in line:
        number_of_bytes_diff+=8

    if ("sub" in line) and ("%rsp" in line):
        #we got a subtract to rsp
        offset=line.split("sub")[1].strip().split(",")[0].strip()
        offset_hex=offset.replace("$0x","")
        offset_decimal_int=int(offset_hex,16)
        number_of_bytes_diff+=offset_decimal_int
        offset_decimal_str=str(offset_decimal_int)

print(number_of_bytes_diff)
