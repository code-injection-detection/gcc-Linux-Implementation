import sys


headers_src=open('headers_needed_template.h','r')
headers_dst=open('headers_needed.h','w')

mem_manager_src = open('memory_manager_template.c', 'r')
mem_manager_dst = open('memory_manager.c', 'w')

verif_proc_src=open('verification_procedure_template.c','r')
verif_proc_dst=open('verification_procedure.c','w')


src_lines= headers_src.readlines()

for line in src_lines:
	newline=line
	if '#define number_of_interleaved_keys' in line:
		newline='#define number_of_interleaved_keys ('+sys.argv[1]+')\n'
	if '#define bytes_used_for_keyshares' in line:
		newline='#define bytes_used_for_keyshares ('+sys.argv[1]+')\n'
	if '#define bytes_between_keyshares' in line:
		newline='#define bytes_between_keyshares ('+sys.argv[2]+')\n'
	if '#define bytes_to_allocate_on_start' in line:
		newline='#define bytes_to_allocate_on_start ('+sys.argv[3]+')\n'	
		
	headers_dst.write(newline)


src_lines= mem_manager_src.readlines()

for line in src_lines:
	newline=line
	if '#define bytes_used_for_keyshares' in line:
		newline='#define bytes_used_for_keyshares ('+sys.argv[1]+')\n'
	if '#define bytes_between_keyshares' in line:
		newline='#define bytes_between_keyshares ('+sys.argv[2]+')\n'
	if '#define bytes_to_allocate_on_start' in line:
		newline='#define bytes_to_allocate_on_start ('+sys.argv[3]+')\n'
		
	mem_manager_dst.write(newline)



src_lines= verif_proc_src.readlines()

for line in src_lines:
	newline=line
	if '#define number_of_interleaved_keys' in line:
		newline='#define number_of_interleaved_keys ('+sys.argv[1]+')\n'
	if '#define bytes_used_for_keyshares' in line:
		newline='#define bytes_used_for_keyshares ('+sys.argv[1]+')\n'
	if '#define bytes_between_keyshares' in line:
		newline='#define bytes_between_keyshares ('+sys.argv[2]+')\n'
	if '#define bytes_to_allocate_on_start' in line:
		newline='#define bytes_to_allocate_on_start ('+sys.argv[3]+')\n'	
	
	verif_proc_dst.write(newline)





headers_src.close()
headers_dst.close()
mem_manager_src.close()
mem_manager_dst.close()
verif_proc_src.close()
verif_proc_dst.close()
