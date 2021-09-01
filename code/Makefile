
#Call with simply typing "make" to produce first executable. Secure it with Java and the run "make secure" again for the second executable.
#Then you can add keyshares to the second executable.

#If you type "make static [secure]", static linking is activated


CC=gcc
PG= #-pg 
FLAGS_to_assembly= -O0
FLAGS_to_object= -O0
FLAGS_to_secure_object = -O0
FLAGS_in_the_end=-lm -pthread -lcrypto -mno-red-zone -fno-stack-protector -no-pie
OBJECT_FILES_TO_BE_LINKED= ./sha256.o ./secure_getters_setters.o ./crypto_functions.o ./initializer.o ./secure_stack_manipulation_functions.o ./mac_verification_functions.o ./echo64.o

#if we want static linking
ifeq ($(filter-out secure,$(MAKECMDGOALS)),static)
 FLAGS_to_assembly+=  -static
 FLAGS_to_object+=  -static
 FLAGS_to_secure_object+=  -static
endif


default: main_program.s main_program

secure: main_program_sec

all: main_program.s main_program main_program_sec


static: default
	

main_program.s: main_program.c memory_manager.c verification_procedure.c memory_manager_test_suite.c stack_manager.c stack_manager_test_suite.c general_tests.c heap_manager_new_unsafe.c
	$(CC) $(FLAGS_to_assembly) main_program.c -S $(FLAGS_in_the_end)

main_program: main_program.s
	$(CC) $(FLAGS_to_object) main_program.s -c -o main_program.o $(FLAGS_in_the_end)
	$(CC) $(FLAGS_to_object) main_program.o $(OBJECT_FILES_TO_BE_LINKED) -o main_program $(FLAGS_in_the_end)

main_program_sec: main_program_sec.s
	$(CC) $(FLAGS_to_secure_object) main_program_sec.s -c -o main_program_sec.o $(FLAGS_in_the_end)
	$(CC) $(FLAGS_to_secure_object) main_program_sec.o $(OBJECT_FILES_TO_BE_LINKED) -o main_program_sec $(FLAGS_in_the_end)

clean:
	rm -f main_program.s main_program main_program_sec.s main_program_sec main_program_ksec *.o *.NASM* *.YASM* *.run 
	rm -f sha256.c sha256.h *_keyshares headers_needed.h verification_procedure.c stack_manager.c memory_manager.c general_tests.c functions_needed_header.c functions_needed_footer.c  main_program.c memory_manager_test_suite.c stack_manager_test_suite.c mac_handling_functions.c all_keyshares_for_verification
	rm -f initializer.c assembly_with_padded_nops.s assembly_sizes.txt a.out assembly_commands_for_parsing.txt secure_getters_setters.c secure_getters_setters.h crypto_functions.c crypto_functions.h calc_mac_for_external_programs tests_with_new_stack.c secure_stack_manipulation_functions.c
	rm -f secure_program_mac_invocations.txt mac_invocation_times.txt mac_time_calculator table_with_assembly_command_sizes.txt addresses_of_unsplit_blocks.txt heap_manager_new_unsafe.c heap_manager_new_secure.c heap_manager_functions_that_use_secure_stack.c
	rm -f more_tests_that_use_new_stack.c calc_mac_for_external_programs_faster addresses_of_cpu_split_blocks.txt
	rm -f assembly_fixed_size_verifier.py assembly_parser_and_size_finder.py calc_extra_total_mac_time.sh calc_mac_for_external_programs.c calc_mac_for_external_programs_faster.c calculate_mac_time.py finder_of_stack_pointer_reduction.py how_to_import_in_eclipse.png insert_keys_and_macs_among_globals.py insert_new_stack_commands_groups_of_vars_as_arrays.py insert_new_stack_commands.py mac_time_calculator.c nop_padder_for_fixed_size_code_blocks.py one_assembly_cmd_size_finder.py set_correct_defines.py
	rm -f final_mac_checking_functions.c crypto_and_mac_verify_functions.h mac_verification_functions.c tests_for_stack_commands_supporting_ast_parsing.c insert_stack_manipulation_commands_given_ast_of_functions.py semantic_data  1st_pass_of_C_reconstruction_of_tests.c 2nd_pass_of_C_reconstruction_of_tests.c 2nd_pass_of_C_reconstruction_of_tests_temp.c transfer_c_reconstructor_globals.py
	rm -f echo_hash_api.h echo_hash.h echo64.s echo64_sp.s
