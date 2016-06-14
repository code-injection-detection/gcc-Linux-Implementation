import sys


headers_src=open('headers_needed_template.h','r')
headers_dst=open('headers_needed.h','w')



src_lines= headers_src.readlines()

for line in src_lines:
	newline=line
	if '#define number_of_interleaved_keys' in line:
		newline='#define number_of_interleaved_keys ('+sys.argv[1]+')\n'
	if '#define bytes_used_for_keyshares' in line:
		newline='#define bytes_used_for_keyshares ('+sys.argv[1]+')\n'
	if '#define stack_bytes_used_for_keyshares' in line:
		newline='#define stack_bytes_used_for_keyshares ('+sys.argv[1]+')\n'
	if '#define bytes_between_keyshares' in line:
		newline='#define bytes_between_keyshares ('+sys.argv[3]+')\n'
	if '#define bytes_to_allocate_on_start' in line:
		newline='#define bytes_to_allocate_on_start ('+sys.argv[4]+')\n'
	if '#define number_of_canaries' in line:
		newline='#define number_of_canaries ('+sys.argv[2]+')\n'
	if '#define stack_bytes_between_keyshares' in line:
		newline='#define stack_bytes_between_keyshares ('+sys.argv[5]+')\n'
	if '#define stack_bytes_to_allocate_on_start' in line:
		newline='#define stack_bytes_to_allocate_on_start ('+sys.argv[6]+')\n'		
		
	headers_dst.write(newline)


headers_src.close()
headers_dst.close()

