	.file	"Helloworldadd.c"
	.comm	total_bytes_allocated,8,8
	.comm	entire_memory_chunk,8,8
	.comm	last_unused_memory,8,8
	.comm	keyshare_input_file,8,8
	.comm	free_chunks_list,8,8
	.comm	free_chunks_num,8,8
	.comm	allocated_chunks_list,8,8
	.comm	allocated_chunks_num,8,8
	.text
	.globl	copy_nodes
	.type	copy_nodes, @function
copy_nodes:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	copy_nodes, .-copy_nodes
	.globl	copy_nodes_ptr
	.type	copy_nodes_ptr, @function
copy_nodes_ptr:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	copy_nodes_ptr, .-copy_nodes_ptr
	.section	.rodata
.LC0:
	.string	"alloc_list:malloc failed.\n"
	.text
	.globl	alloc_list
	.type	alloc_list, @function
alloc_list:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$1, -8(%rbp)
	jmp	.L4
.L8:
	movl	$32, %edi
	call	malloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L5
	movl	$.LC0, %edi
	call	perror
	movl	$42, %edi
	call	exit
.L5:
	cmpq	$1, -8(%rbp)
	jne	.L6
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.L6:
	cmpq	$1, -8(%rbp)
	jle	.L7
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L7:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	addq	$1, -8(%rbp)
.L4:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jle	.L8
	cmpq	$0, -40(%rbp)
	jle	.L9
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 24(%rax)
.L9:
	movq	-32(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	alloc_list, .-alloc_list
	.section	.rodata
	.align 8
.LC1:
	.string	"add_node_to_list:malloc failed.\n"
	.text
	.globl	add_node_to_list
	.type	add_node_to_list, @function
add_node_to_list:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	$32, %edi
	call	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L12
	movl	$.LC1, %edi
	call	perror
	movl	$42, %edi
	call	exit
.L12:
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, (%rsp)
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rsp)
	movq	32(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movq	40(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	movq	%rax, %rdi
	call	copy_nodes
	cmpq	$0, -24(%rbp)
	jne	.L13
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	jmp	.L14
.L13:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	add_node_to_list, .-add_node_to_list
	.globl	delete_node_from_list
	.type	delete_node_from_list, @function
delete_node_from_list:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L16
	cmpq	$0, -8(%rbp)
	jne	.L16
	movq	$0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	jmp	.L17
.L16:
	cmpq	$0, -16(%rbp)
	jne	.L18
	cmpq	$0, -8(%rbp)
	je	.L18
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	jmp	.L17
.L18:
	cmpq	$0, -16(%rbp)
	je	.L19
	cmpq	$0, -8(%rbp)
	jne	.L19
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	jmp	.L17
.L19:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	delete_node_from_list, .-delete_node_from_list
	.globl	free_list
	.type	free_list, @function
free_list:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L21
	jmp	.L20
.L21:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.L24:
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	delete_node_from_list
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L23
	jmp	.L20
.L23:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L24
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	free_list, .-free_list
	.section	.rodata
.LC2:
	.string	"List is empty."
	.align 8
.LC3:
	.string	"Node %ld: Length in chunks=%ld, pointer to mem=%ld\n"
	.text
	.globl	print_list
	.type	print_list, @function
print_list:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L26
	movl	$.LC2, %edi
	call	puts
	jmp	.L25
.L26:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L28
.L29:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
.L28:
	cmpq	$0, -16(%rbp)
	jne	.L29
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	print_list, .-print_list
	.section	.rodata
.LC4:
	.string	"Free chunks list:"
.LC5:
	.string	"Allocated chunks list:"
	.text
	.globl	print_lists
	.type	print_lists, @function
print_lists:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$.LC4, %edi
	call	puts
	movq	free_chunks_list(%rip), %rax
	movq	%rax, %rdi
	call	print_list
	movl	$.LC5, %edi
	call	puts
	movq	allocated_chunks_list(%rip), %rax
	movq	%rax, %rdi
	call	print_list
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	print_lists, .-print_lists
	.globl	find_number_of_useful_chunks
	.type	find_number_of_useful_chunks, @function
find_number_of_useful_chunks:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$5, -16(%rbp)
	movq	$4, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	leaq	(%rdx,%rcx), %rsi
	cqto
	idivq	%rsi
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	find_number_of_useful_chunks, .-find_number_of_useful_chunks
	.globl	init_memory_manager
	.type	init_memory_manager, @function
init_memory_manager:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	total_bytes_allocated(%rip), %rax
	movq	%rax, %rdi
	call	find_number_of_useful_chunks
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	entire_memory_chunk(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	$0, free_chunks_list(%rip)
	movq	free_chunks_list(%rip), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rsp)
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rsp)
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	movq	%rax, %rdi
	call	add_node_to_list
	movq	%rax, free_chunks_list(%rip)
	movq	$1, free_chunks_num(%rip)
	movq	$0, allocated_chunks_list(%rip)
	movq	$0, allocated_chunks_num(%rip)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	init_memory_manager, .-init_memory_manager
	.globl	free_memory_manager_structures
	.type	free_memory_manager_structures, @function
free_memory_manager_structures:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$0, free_chunks_num(%rip)
	movq	$0, allocated_chunks_num(%rip)
	movq	free_chunks_list(%rip), %rax
	movq	%rax, %rdi
	call	free_list
	movq	allocated_chunks_list(%rip), %rax
	movq	%rax, %rdi
	call	free_list
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	free_memory_manager_structures, .-free_memory_manager_structures
	.section	.rodata
	.align 8
.LC6:
	.string	"Great!. No need to allocate more than the defined amount."
	.align 8
.LC7:
	.string	"Whoops. We need to allocate a bit more space."
.LC8:
	.string	"allocate_mem:malloc failed.\n"
	.text
	.globl	allocate_mem
	.type	allocate_mem, @function
allocate_mem:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$2048, -40(%rbp)
	movq	$5, -32(%rbp)
	movq	$4, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	addq	%rdx, %rax
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	leaq	(%rdx,%rcx), %rsi
	cqto
	idivq	%rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	imulq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	subq	$1, %rax
	imulq	-32(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-40(%rbp), %rax
	jne	.L36
	movl	$.LC6, %edi
	call	puts
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L37
.L36:
	movl	$.LC7, %edi
	call	puts
	addq	$1, -16(%rbp)
	movq	-16(%rbp), %rax
	imulq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	subq	$1, %rax
	imulq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
.L37:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L38
	movl	$.LC8, %edi
	call	perror
	movl	$42, %edi
	call	exit
.L38:
	movq	-48(%rbp), %rax
	movq	%rax, total_bytes_allocated(%rip)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	allocate_mem, .-allocate_mem
	.globl	secure_malloc
	.type	secure_malloc, @function
secure_malloc:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	last_unused_memory(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	total_bytes_allocated(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	$5, -48(%rbp)
	movq	$4, -40(%rbp)
	movq	entire_memory_chunk(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	subq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	leaq	(%rdx,%rcx), %rsi
	cqto
	idivq	%rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	imulq	-40(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jge	.L41
	call	__errno_location
	movl	$12, (%rax)
	movl	$0, %eax
	jmp	.L42
.L41:
	movq	-88(%rbp), %rax
	cqto
	idivq	-40(%rbp)
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	imulq	-40(%rbp), %rax
	cmpq	-88(%rbp), %rax
	je	.L43
	addq	$1, -72(%rbp)
.L43:
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	last_unused_memory(%rip), %rdx
	movq	-72(%rbp), %rax
	imulq	-40(%rbp), %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	subq	$1, %rax
	imulq	-48(%rbp), %rax
	addq	%rax, %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	addq	%rdx, %rax
	movq	%rax, last_unused_memory(%rip)
	movq	-8(%rbp), %rax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	secure_malloc, .-secure_malloc
	.section	.rodata
	.align 8
.LC9:
	.string	"Attempted to read more keyshares that the ones stored\n"
	.text
	.globl	get_next_keyshare
	.type	get_next_keyshare, @function
get_next_keyshare:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	keyshare_input_file(%rip), %rax
	movq	%rax, %rdi
	call	feof
	testl	%eax, %eax
	je	.L45
	movl	$.LC9, %edi
	call	perror
	movl	$44, %edi
	call	exit
.L45:
	movq	keyshare_input_file(%rip), %rdx
	leaq	-1(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread
	movzbl	-1(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	get_next_keyshare, .-get_next_keyshare
	.globl	insert_keys_into_mem
	.type	insert_keys_into_mem, @function
insert_keys_into_mem:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, %edi
	call	time
	movl	%eax, %edi
	call	srand
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -48(%rbp)
	jmp	.L48
.L53:
	cmpl	$0, -52(%rbp)
	je	.L49
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$0, %eax
	call	get_next_keyshare
	movb	%al, (%rbx)
	addq	$1, -32(%rbp)
	addq	$1, -48(%rbp)
	jmp	.L50
.L49:
	movq	$0, -40(%rbp)
	jmp	.L51
.L52:
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	addq	$1, -40(%rbp)
.L51:
	cmpq	$3, -40(%rbp)
	jle	.L52
	addq	$4, -48(%rbp)
	movl	$1, -52(%rbp)
.L50:
	cmpq	$5, -32(%rbp)
	jne	.L48
	movl	$0, -52(%rbp)
	movq	$0, -32(%rbp)
.L48:
	movq	total_bytes_allocated(%rip), %rax
	cmpq	%rax, -48(%rbp)
	jl	.L53
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	insert_keys_into_mem, .-insert_keys_into_mem
	.section	.rodata
.LC10:
	.string	"0x%02x "
	.text
	.globl	print_mem
	.type	print_mem, @function
print_mem:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L55
.L56:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L55:
	movq	total_bytes_allocated(%rip), %rax
	cmpq	%rax, -16(%rbp)
	jl	.L56
	movl	$10, %edi
	call	putchar
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	print_mem, .-print_mem
	.globl	insert_data_into_mem
	.type	insert_data_into_mem, @function
insert_data_into_mem:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -44(%rbp)
	movq	$0, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L58
.L63:
	cmpl	$0, -44(%rbp)
	je	.L59
	addq	$5, -40(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L58
.L59:
	movq	$0, -32(%rbp)
	jmp	.L60
.L62:
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -32(%rbp)
.L60:
	cmpq	$3, -32(%rbp)
	jg	.L61
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-56(%rbp), %rax
	jl	.L62
.L61:
	movq	-32(%rbp), %rax
	addq	%rax, -16(%rbp)
	addq	$1, -24(%rbp)
	addq	$4, -40(%rbp)
	movl	$1, -44(%rbp)
.L58:
	movq	-16(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.L63
	movq	-24(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	insert_data_into_mem, .-insert_data_into_mem
	.globl	get_secure_data
	.type	get_secure_data, @function
get_secure_data:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	%ecx, -92(%rbp)
	movq	%r8, -104(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -60(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -56(%rbp)
	cmpl	$0, -92(%rbp)
	je	.L66
	movq	-104(%rbp), %rax
	imulq	-80(%rbp), %rax
	leaq	3(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	imulq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L67
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, -32(%rbp)
	jmp	.L66
.L67:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	imulq	-80(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movl	$0, %eax
	subq	%rcx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L68
.L70:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -40(%rbp)
.L68:
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	$3, %rax
	jg	.L69
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-80(%rbp), %rax
	jl	.L70
.L69:
	movq	-40(%rbp), %rax
	addq	%rax, -24(%rbp)
	addq	$9, -32(%rbp)
	jmp	.L71
.L66:
	jmp	.L71
.L76:
	cmpl	$0, -60(%rbp)
	je	.L72
	addq	$5, -56(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L71
.L72:
	movq	$0, -48(%rbp)
	jmp	.L73
.L75:
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -48(%rbp)
.L73:
	cmpq	$3, -48(%rbp)
	jg	.L74
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-80(%rbp), %rax
	jl	.L75
.L74:
	movq	-48(%rbp), %rax
	addq	%rax, -24(%rbp)
	addq	$4, -56(%rbp)
	movl	$1, -60(%rbp)
.L71:
	movq	-24(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jl	.L76
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	get_secure_data, .-get_secure_data
	.globl	set_secure_data
	.type	set_secure_data, @function
set_secure_data:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	%ecx, -92(%rbp)
	movq	%r8, -104(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -60(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -56(%rbp)
	cmpl	$0, -92(%rbp)
	je	.L78
	movq	-104(%rbp), %rax
	imulq	-80(%rbp), %rax
	leaq	3(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	imulq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L79
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, -32(%rbp)
	jmp	.L78
.L79:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	imulq	-80(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movl	$0, %eax
	subq	%rcx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L80
.L82:
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -40(%rbp)
.L80:
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	$3, %rax
	jg	.L81
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-80(%rbp), %rax
	jl	.L82
.L81:
	movq	-40(%rbp), %rax
	addq	%rax, -24(%rbp)
	addq	$9, -32(%rbp)
	jmp	.L83
.L78:
	jmp	.L83
.L88:
	cmpl	$0, -60(%rbp)
	je	.L84
	addq	$5, -56(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L83
.L84:
	movq	$0, -48(%rbp)
	jmp	.L85
.L87:
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -48(%rbp)
.L85:
	cmpq	$3, -48(%rbp)
	jg	.L86
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-80(%rbp), %rax
	jl	.L87
.L86:
	movq	-48(%rbp), %rax
	addq	%rax, -24(%rbp)
	addq	$4, -56(%rbp)
	movl	$1, -60(%rbp)
.L83:
	movq	-24(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jl	.L88
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	set_secure_data, .-set_secure_data
	.section	.rodata
.LC11:
	.string	"rb"
.LC12:
	.string	"heap_keyshares"
	.align 8
.LC13:
	.string	"init_mem:heap_keyshares file error\n"
	.text
	.globl	init_mem
	.type	init_mem, @function
init_mem:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, %eax
	call	allocate_mem
	movq	%rax, -8(%rbp)
	movl	$.LC11, %esi
	movl	$.LC12, %edi
	call	fopen
	movq	%rax, keyshare_input_file(%rip)
	movq	keyshare_input_file(%rip), %rax
	testq	%rax, %rax
	jne	.L90
	movl	$.LC13, %edi
	call	perror
	movl	$43, %edi
	call	exit
.L90:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	insert_keys_into_mem
	movq	-8(%rbp), %rax
	movq	%rax, entire_memory_chunk(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, last_unused_memory(%rip)
	movq	keyshare_input_file(%rip), %rax
	movq	%rax, %rdi
	call	fclose
	movl	$0, %eax
	call	init_memory_manager
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	init_mem, .-init_mem
	.globl	free_secure_mem
	.type	free_secure_mem, @function
free_secure_mem:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$0, %eax
	call	free_memory_manager_structures
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	free_secure_mem, .-free_secure_mem
	.globl	get_char
	.type	get_char, @function
get_char:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	call	get_secure_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	get_char, .-get_char
	.globl	get_int
	.type	get_int, @function
get_int:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_secure_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	get_int, .-get_int
	.globl	get_long_int
	.type	get_long_int, @function
get_long_int:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	get_secure_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	get_long_int, .-get_long_int
	.globl	get_float
	.type	get_float, @function
get_float:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_secure_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	get_float, .-get_float
	.globl	get_double
	.type	get_double, @function
get_double:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	get_secure_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	get_double, .-get_double
	.globl	get_array_element
	.type	get_array_element, @function
get_array_element:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	get_secure_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	get_array_element, .-get_array_element
	.globl	set_char
	.type	set_char, @function
set_char:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	movq	-8(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	insert_data_into_mem
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	set_char, .-set_char
	.globl	set_int
	.type	set_int, @function
set_int:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	insert_data_into_mem
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	set_int, .-set_int
	.globl	set_long_int
	.type	set_long_int, @function
set_long_int:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	insert_data_into_mem
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	set_long_int, .-set_long_int
	.globl	set_float
	.type	set_float, @function
set_float:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movq	-8(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	insert_data_into_mem
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	set_float, .-set_float
	.globl	set_double
	.type	set_double, @function
set_double:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	insert_data_into_mem
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	set_double, .-set_double
	.globl	set_array_element
	.type	set_array_element, @function
set_array_element:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	set_secure_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	set_array_element, .-set_array_element
	.globl	find_large_enough_free_group
	.type	find_large_enough_free_group, @function
find_large_enough_free_group:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	free_chunks_list(%rip), %rax
	testq	%rax, %rax
	jne	.L106
	movl	$0, %eax
	jmp	.L107
.L106:
	movq	free_chunks_list(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L108
.L110:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jl	.L109
	movq	-8(%rbp), %rax
	jmp	.L107
.L109:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.L108:
	cmpq	$0, -8(%rbp)
	jne	.L110
	movl	$0, %eax
.L107:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	find_large_enough_free_group, .-find_large_enough_free_group
	.globl	find_which_group_to_free
	.type	find_which_group_to_free, @function
find_which_group_to_free:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	allocated_chunks_list(%rip), %rax
	testq	%rax, %rax
	jne	.L112
	movl	$0, %eax
	jmp	.L113
.L112:
	movq	allocated_chunks_list(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L114
.L116:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.L115
	movq	-8(%rbp), %rax
	jmp	.L113
.L115:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.L114:
	cmpq	$0, -8(%rbp)
	jne	.L116
	movl	$0, %eax
.L113:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	find_which_group_to_free, .-find_which_group_to_free
	.section	.rodata
	.align 8
.LC14:
	.string	"check_and_merge:malloc failed.\n"
	.text
	.globl	check_and_merge
	.type	check_and_merge, @function
check_and_merge:
.LFB37:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L118
	movl	$32, %edi
	call	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L119
	movl	$.LC14, %edi
	call	perror
	movl	$42, %edi
	call	exit
.L119:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L120
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L121
.L120:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L121:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L122
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L122:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-8(%rbp), %rax
	jmp	.L123
.L118:
	movl	$0, %eax
.L123:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	check_and_merge, .-check_and_merge
	.globl	managed_secure_malloc
	.type	managed_secure_malloc, @function
managed_secure_malloc:
.LFB38:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	3(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	salq	$2, %rax
	cmpq	-56(%rbp), %rax
	jge	.L125
	addq	$1, -48(%rbp)
.L125:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	find_large_enough_free_group
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L126
	movl	$0, %eax
	jmp	.L130
.L126:
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	allocated_chunks_list(%rip), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rsp)
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rsp)
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	movq	%rax, %rdi
	call	add_node_to_list
	movq	%rax, allocated_chunks_list(%rip)
	movq	allocated_chunks_num(%rip), %rax
	addq	$1, %rax
	movq	%rax, allocated_chunks_num(%rip)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.L128
	movq	free_chunks_list(%rip), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	delete_node_from_list
	movq	%rax, free_chunks_list(%rip)
	movq	free_chunks_num(%rip), %rax
	subq	$1, %rax
	movq	%rax, free_chunks_num(%rip)
	jmp	.L129
.L128:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	subq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
.L129:
	movq	-24(%rbp), %rax
.L130:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	managed_secure_malloc, .-managed_secure_malloc
	.section	.rodata
	.align 8
.LC15:
	.string	"managed_secure_free:malloc failed.\n"
	.text
	.globl	managed_secure_free
	.type	managed_secure_free, @function
managed_secure_free:
.LFB39:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movl	$0, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	find_which_group_to_free
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L132
	movl	$0, %eax
	jmp	.L133
.L132:
	movl	$32, %edi
	call	malloc
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L134
	movl	$.LC15, %edi
	call	perror
	movl	$42, %edi
	call	exit
.L134:
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	copy_nodes_ptr
	movq	allocated_chunks_list(%rip), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	delete_node_from_list
	movq	%rax, allocated_chunks_list(%rip)
	movq	allocated_chunks_num(%rip), %rax
	subq	$1, %rax
	movq	%rax, allocated_chunks_num(%rip)
	movq	free_chunks_list(%rip), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L135
	movq	free_chunks_list(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	movq	%rdx, %rdi
	call	add_node_to_list
	movq	%rax, free_chunks_list(%rip)
	movq	free_chunks_num(%rip), %rax
	addq	$1, %rax
	movq	%rax, free_chunks_num(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$1, -48(%rbp)
	jmp	.L136
.L135:
	movq	$0, -32(%rbp)
	jmp	.L137
.L140:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jle	.L138
	jmp	.L139
.L138:
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
.L137:
	cmpq	$0, -40(%rbp)
	jne	.L140
.L139:
	cmpq	$0, -32(%rbp)
	jne	.L141
	movq	free_chunks_list(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	movq	%rdx, %rdi
	call	add_node_to_list
	movq	%rax, free_chunks_list(%rip)
	movq	free_chunks_num(%rip), %rax
	addq	$1, %rax
	movq	%rax, free_chunks_num(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	free_chunks_list(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L142
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$free_chunks_list, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_and_merge
	movq	%rax, -24(%rbp)
	jmp	.L143
.L145:
	movq	free_chunks_num(%rip), %rax
	subq	$1, %rax
	movq	%rax, free_chunks_num(%rip)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L144
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$free_chunks_list, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_and_merge
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L143
	jmp	.L142
.L144:
	jmp	.L142
.L143:
	cmpq	$0, -24(%rbp)
	jne	.L145
.L142:
	movl	$1, -48(%rbp)
	jmp	.L136
.L141:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L146
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jge	.L146
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	free_chunks_num(%rip), %rax
	addq	$1, %rax
	movq	%rax, free_chunks_num(%rip)
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$free_chunks_list, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_and_merge
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L147
	movq	free_chunks_num(%rip), %rax
	subq	$1, %rax
	movq	%rax, free_chunks_num(%rip)
.L147:
	movl	$1, -48(%rbp)
	jmp	.L136
.L146:
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	free_chunks_num(%rip), %rax
	addq	$1, %rax
	movq	%rax, free_chunks_num(%rip)
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$free_chunks_list, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_and_merge
	movq	%rax, -24(%rbp)
	movl	$1, -44(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L148
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$free_chunks_list, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_and_merge
	movq	%rax, -24(%rbp)
	jmp	.L149
.L148:
	jmp	.L149
.L152:
	movq	free_chunks_num(%rip), %rax
	subq	$1, %rax
	movq	%rax, free_chunks_num(%rip)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L150
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$free_chunks_list, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_and_merge
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L149
	jmp	.L151
.L150:
	jmp	.L151
.L149:
	cmpq	$0, -24(%rbp)
	jne	.L152
.L151:
	movl	$1, -48(%rbp)
.L136:
	movl	-48(%rbp), %eax
.L133:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	managed_secure_free, .-managed_secure_free
	.globl	insert_data_into_normal_array
	.type	insert_data_into_normal_array, @function
insert_data_into_normal_array:
.LFB40:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L154
.L155:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -4(%rbp)
.L154:
	movl	-4(%rbp), %eax
	cltq
	cmpq	-24(%rbp), %rax
	jl	.L155
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	insert_data_into_normal_array, .-insert_data_into_normal_array
	.section	.rodata
	.align 8
.LC16:
	.string	"Zero hex test printing: 0x%02x \n"
.LC17:
	.string	"Starting mem test"
.LC18:
	.string	"chunks:%ld\n"
.LC19:
	.string	"After init, print mem"
.LC20:
	.string	"Trying to secure malloc"
.LC21:
	.string	"Not enough mem"
	.align 8
.LC22:
	.string	"After malloc,try to insert some data"
	.align 8
.LC23:
	.string	"Now let's retrieve the data and display them"
.LC24:
	.string	"%d "
	.align 8
.LC25:
	.string	"Again, Trying to secure malloc"
	.align 8
.LC26:
	.string	"Again, after malloc,try to insert some data"
	.align 8
.LC27:
	.string	"After displaying the two arrays:"
.LC28:
	.string	"After freeing one of them:"
	.align 8
.LC29:
	.string	"Now trying to store and retrieve 424242424..."
.LC30:
	.string	"\n\n%d \n\n"
.LC31:
	.string	"After retrieving int:"
	.align 8
.LC32:
	.string	"After freeing the second array:"
.LC33:
	.string	"After freeing the int:"
.LC34:
	.string	"Testing wrapper functions"
.LC35:
	.string	"Got %d\n"
.LC36:
	.string	"Got %c\n"
.LC37:
	.string	"Got %ld\n"
.LC38:
	.string	"After long int printing:"
.LC39:
	.string	"After long int free:"
.LC40:
	.string	"After another char alloc:"
.LC42:
	.string	"Got %lf\n"
.LC43:
	.string	"After double alloc:"
	.align 8
.LC44:
	.string	"Array wrapper function testing"
.LC48:
	.string	"array index 2 is %lf\n"
.LC49:
	.string	"array index 3 is %lf\n"
.LC50:
	.string	"\n\n"
	.align 8
.LC51:
	.string	"After data retrieval, print mem"
.LC52:
	.string	"Mem test done"
	.text
	.globl	mem_test
	.type	mem_test, @function
mem_test:
.LFB41:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	$20, -112(%rbp)
	movl	$0, %esi
	movl	$.LC16, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC17, %edi
	call	puts
	movq	entire_memory_chunk(%rip), %rax
	movq	%rax, -104(%rbp)
	movq	total_bytes_allocated(%rip), %rax
	movq	%rax, %rdi
	call	find_number_of_useful_chunks
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC18, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC19, %edi
	call	puts
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	print_mem
	movq	-112(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -88(%rbp)
	movq	-112(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -80(%rbp)
	movq	$5, -128(%rbp)
	jmp	.L157
.L158:
	movq	-128(%rbp), %rax
	salq	$2, %rax
	leaq	-20(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	movq	-128(%rbp), %rax
	imull	%ecx, %eax
	movl	%eax, (%rdx)
	addq	$1, -128(%rbp)
.L157:
	movq	-112(%rbp), %rax
	addq	$5, %rax
	cmpq	-128(%rbp), %rax
	jg	.L158
	movl	$.LC20, %edi
	call	puts
	movq	-112(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	managed_secure_malloc
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L159
	movl	$.LC21, %edi
	call	perror
	movl	$42, %edi
	call	exit
.L159:
	movl	$.LC22, %edi
	call	puts
	movq	-112(%rbp), %rax
	salq	$2, %rax
	movq	-72(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_mem
	movl	$.LC23, %edi
	call	puts
	movl	$4, %edi
	call	malloc
	movq	%rax, -64(%rbp)
	movq	$0, -120(%rbp)
	jmp	.L160
.L161:
	movq	-120(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_secure_data
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC24, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -120(%rbp)
.L160:
	movq	-120(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jl	.L161
	movl	$10, %edi
	call	putchar
	movl	$.LC25, %edi
	call	puts
	movq	-112(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	managed_secure_malloc
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L162
	movl	$.LC21, %edi
	call	perror
	movl	$42, %edi
	call	exit
.L162:
	movq	$5, -128(%rbp)
	jmp	.L163
.L164:
	movq	-128(%rbp), %rax
	salq	$2, %rax
	leaq	-20(%rax), %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-128(%rbp), %rax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, (%rcx)
	addq	$1, -128(%rbp)
.L163:
	movq	-112(%rbp), %rax
	addq	$5, %rax
	cmpq	-128(%rbp), %rax
	jg	.L164
	movl	$.LC26, %edi
	call	puts
	movq	-112(%rbp), %rax
	salq	$2, %rax
	movq	-56(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_mem
	movl	$.LC23, %edi
	call	puts
	movq	$0, -120(%rbp)
	jmp	.L165
.L166:
	movq	-120(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_secure_data
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC24, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -120(%rbp)
.L165:
	movq	-120(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jl	.L166
	movl	$10, %edi
	call	putchar
	movl	$.LC27, %edi
	call	puts
	movl	$0, %eax
	call	print_lists
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movl	$.LC28, %edi
	call	puts
	movl	$0, %eax
	call	print_lists
	movl	$.LC29, %edi
	call	puts
	movl	$4, %edi
	call	managed_secure_malloc
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movl	$424242424, (%rax)
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	insert_data_into_mem
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$4, %edi
	call	malloc
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_secure_data
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC30, %edi
	movl	$0, %eax
	call	printf
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$.LC31, %edi
	call	puts
	movl	$0, %eax
	call	print_lists
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movl	$.LC32, %edi
	call	puts
	movl	$0, %eax
	call	print_lists
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movl	$.LC33, %edi
	call	puts
	movl	$0, %eax
	call	print_lists
	movl	$.LC34, %edi
	call	puts
	movl	$4, %edi
	call	managed_secure_malloc
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$99998, %esi
	movq	%rax, %rdi
	call	set_int
	leaq	-156(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_int
	movl	-156(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC35, %edi
	movl	$0, %eax
	call	printf
	movl	$1, %edi
	call	managed_secure_malloc
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$98, %esi
	movq	%rax, %rdi
	call	set_char
	leaq	-157(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_char
	movzbl	-157(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC36, %edi
	movl	$0, %eax
	call	printf
	movl	$8, %edi
	call	managed_secure_malloc
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$54545454, %esi
	movq	%rax, %rdi
	call	set_long_int
	leaq	-152(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_long_int
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC37, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC38, %edi
	call	puts
	movl	$0, %eax
	call	print_lists
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movl	$.LC39, %edi
	call	puts
	movl	$0, %eax
	call	print_lists
	movl	$1, %edi
	call	managed_secure_malloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	set_char
	leaq	-157(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_char
	movzbl	-157(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC36, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC40, %edi
	call	puts
	movl	$0, %eax
	call	print_lists
	movl	$8, %edi
	call	managed_secure_malloc
	movq	%rax, -16(%rbp)
	movabsq	$4665384344877005170, %rax
	movq	-16(%rbp), %rdx
	movq	%rax, -168(%rbp)
	movsd	-168(%rbp), %xmm0
	movq	%rdx, %rdi
	call	set_double
	leaq	-144(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_double
	movq	-144(%rbp), %rax
	movq	%rax, -168(%rbp)
	movsd	-168(%rbp), %xmm0
	movl	$.LC42, %edi
	movl	$1, %eax
	call	printf
	movl	$.LC43, %edi
	call	puts
	movl	$0, %eax
	call	print_lists
	movl	$.LC44, %edi
	call	puts
	movl	$80, %edi
	call	managed_secure_malloc
	movq	%rax, -8(%rbp)
	movabsq	$4631167498573958009, %rax
	movq	%rax, -136(%rbp)
	leaq	-136(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	call	set_array_element
	movabsq	$4629998950986019070, %rax
	movq	%rax, -136(%rbp)
	leaq	-136(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	call	set_array_element
	movabsq	$4607182418800017408, %rax
	movq	%rax, -136(%rbp)
	leaq	-136(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	call	get_array_element
	movq	-136(%rbp), %rax
	movq	%rax, -168(%rbp)
	movsd	-168(%rbp), %xmm0
	movl	$.LC48, %edi
	movl	$1, %eax
	call	printf
	leaq	-136(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	call	get_array_element
	movq	-136(%rbp), %rax
	movq	%rax, -168(%rbp)
	movsd	-168(%rbp), %xmm0
	movl	$.LC49, %edi
	movl	$1, %eax
	call	printf
	movl	$.LC50, %edi
	call	puts
	movl	$.LC51, %edi
	call	puts
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	print_mem
	movl	$.LC52, %edi
	call	puts
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	mem_test, .-mem_test
	.section	.rodata
.LC53:
	.string	"a---------"
.LC54:
	.string	"Returned NULL! -.- 1"
.LC55:
	.string	"b---------"
.LC56:
	.string	"Returned NULL! -.- 2"
.LC57:
	.string	"c---------"
.LC58:
	.string	"Returned NULL! -.- 3"
.LC59:
	.string	"d---------"
.LC60:
	.string	"Something went wrong"
.LC61:
	.string	"e---------"
.LC62:
	.string	"Returned NULL! -.- 4"
.LC63:
	.string	"f---------"
.LC64:
	.string	"Returned NULL! -.- 5"
.LC65:
	.string	"g---------"
	.text
	.globl	list_test
	.type	list_test, @function
list_test:
.LFB42:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	$.LC4, %edi
	call	puts
	movq	free_chunks_list(%rip), %rax
	movq	%rax, %rdi
	call	print_list
	movl	$.LC5, %edi
	call	puts
	movq	allocated_chunks_list(%rip), %rax
	movq	%rax, %rdi
	call	print_list
	movq	$10, -32(%rbp)
	movq	entire_memory_chunk(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movl	$.LC53, %edi
	call	puts
	movl	$101, %edi
	call	managed_secure_malloc
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L168
	movl	$.LC54, %edi
	call	puts
.L168:
	movl	$0, %eax
	call	print_lists
	movl	$.LC55, %edi
	call	puts
	movl	$42, %edi
	call	managed_secure_malloc
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L169
	movl	$.LC56, %edi
	call	puts
.L169:
	movl	$0, %eax
	call	print_lists
	movl	$.LC57, %edi
	call	puts
	movl	$61, %edi
	call	managed_secure_malloc
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L170
	movl	$.LC58, %edi
	call	puts
.L170:
	movl	$0, %eax
	call	print_lists
	movl	$.LC59, %edi
	call	puts
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.L171
	movl	$.LC60, %edi
	call	puts
.L171:
	movl	$0, %eax
	call	print_lists
	movl	$.LC61, %edi
	call	puts
	movl	$80, %edi
	call	managed_secure_malloc
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L172
	movl	$.LC62, %edi
	call	puts
.L172:
	movl	$0, %eax
	call	print_lists
	movl	$.LC63, %edi
	call	puts
	movl	$29, %edi
	call	managed_secure_malloc
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L173
	movl	$.LC64, %edi
	call	puts
.L173:
	movl	$0, %eax
	call	print_lists
	movl	$.LC65, %edi
	call	puts
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.L174
	movl	$.LC60, %edi
	call	puts
.L174:
	movl	$0, %eax
	call	print_lists
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	list_test, .-list_test
	.comm	sa,152,32
	.section	.rodata
.LC66:
	.string	"key no%d=0x%02x\n"
	.text
	.globl	find_keyshares
	.type	find_keyshares, @function
find_keyshares:
.LFB43:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -96(%rbp)
	movq	$foo, -72(%rbp)
	movq	$main, -64(%rbp)
	movq	$foo2, -56(%rbp)
	movq	$find_keyshares, -48(%rbp)
	movl	$0, -92(%rbp)
	movq	$__executable_start, -40(%rbp)
	movq	$__etext, -32(%rbp)
	movl	$0, -100(%rbp)
	jmp	.L176
.L177:
	movl	-100(%rbp), %eax
	cltq
	movb	$0, -16(%rbp,%rax)
	addl	$1, -100(%rbp)
.L176:
	cmpl	$4, -100(%rbp)
	jle	.L177
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.L178
.L182:
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-21, %al
	jne	.L179
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	jne	.L179
	movl	$0, -100(%rbp)
	jmp	.L180
.L181:
	movl	-100(%rbp), %eax
	cltq
	movzbl	-16(%rbp,%rax), %edx
	movl	-100(%rbp), %eax
	cltq
	leaq	2(%rax), %rcx
	movq	-88(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	xorl	%eax, %edx
	movl	-100(%rbp), %eax
	cltq
	movb	%dl, -16(%rbp,%rax)
	addl	$1, -100(%rbp)
.L180:
	cmpl	$4, -100(%rbp)
	jle	.L181
	addl	$1, -96(%rbp)
.L179:
	addq	$1, -88(%rbp)
.L178:
	movq	-88(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.L182
	movl	$.LC11, %esi
	movl	$.LC12, %edi
	call	fopen
	movq	%rax, -24(%rbp)
	movq	entire_memory_chunk(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -80(%rbp)
	jmp	.L183
.L187:
	cmpl	$0, -92(%rbp)
	jne	.L184
	addq	$4, -80(%rbp)
	movl	$1, -92(%rbp)
	jmp	.L183
.L184:
	movl	$0, -100(%rbp)
	jmp	.L185
.L186:
	movl	-100(%rbp), %eax
	cltq
	movzbl	-16(%rbp,%rax), %edx
	movl	-100(%rbp), %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rax
	addq	%rax, %rcx
	movq	-88(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	xorl	%eax, %edx
	movl	-100(%rbp), %eax
	cltq
	movb	%dl, -16(%rbp,%rax)
	addl	$1, -100(%rbp)
.L185:
	cmpl	$4, -100(%rbp)
	jle	.L186
	addq	$5, -80(%rbp)
	movl	$0, -92(%rbp)
.L183:
	movq	total_bytes_allocated(%rip), %rax
	cmpq	%rax, -80(%rbp)
	jl	.L187
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	$10, %edi
	call	putchar
	movl	$0, -100(%rbp)
	jmp	.L188
.L189:
	movl	-100(%rbp), %eax
	cltq
	movzbl	-16(%rbp,%rax), %eax
	movzbl	%al, %edx
	movl	-100(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC66, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -100(%rbp)
.L188:
	cmpl	$4, -100(%rbp)
	jle	.L189
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L191
	call	__stack_chk_fail
.L191:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	find_keyshares, .-find_keyshares
	.section	.rodata
.LC67:
	.string	"Verification requested!"
	.text
	.globl	verification_procedure
	.type	verification_procedure, @function
verification_procedure:
.LFB44:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$.LC67, %edi
	call	puts
	movl	$0, %eax
	call	find_keyshares
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	verification_procedure, .-verification_procedure
	.local	static_global_variable_for_testing
	.comm	static_global_variable_for_testing,4,4
	.globl	foo
	.type	foo, @function
foo:
.LFB45:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	foo, .-foo
	.section	.rodata
.LC68:
	.string	"Initializing mem"
	.align 8
.LC69:
	.string	"bytes_to_allocate_on_start:%d\n"
.LC70:
	.string	"Init_mem, alloc+key insertion"
	.align 8
.LC71:
	.string	"If successful, total bytes allocated:%ld\n"
.LC72:
	.string	"Installing signal handler"
	.align 8
.LC73:
	.string	"Could not install signal handler"
.LC74:
	.string	"Signal handler installed"
.LC75:
	.string	"My pid=%ld\n"
.LC76:
	.string	"K=%d\n"
.LC77:
	.string	"n=%d\n"
.LC78:
	.string	"main is at %p\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB46:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -56(%rbp)
	movl	$2, -52(%rbp)
	addl	$1, -52(%rbp)
	addl	$1, -52(%rbp)
	subl	$1, -52(%rbp)
	movl	-52(%rbp), %eax
	addl	%eax, -56(%rbp)
	addl	$2, -56(%rbp)
	addl	$1, -52(%rbp)
	movl	$1, static_main_variable_for_testing.4172(%rip)
	movl	$2, static_global_variable_for_testing(%rip)
	movl	$.LC68, %edi
	call	puts
	movl	$2048, %esi
	movl	$.LC69, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC70, %edi
	call	puts
	movl	$0, %eax
	call	init_mem
	movq	%rax, -40(%rbp)
	movq	total_bytes_allocated(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC71, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC72, %edi
	call	puts
	movq	$verification_procedure, sa(%rip)
	movl	$sa+8, %edi
	call	sigemptyset
	movl	$268435456, sa+136(%rip)
	movl	$0, %edx
	movl	$sa, %esi
	movl	$10, %edi
	call	sigaction
	cmpl	$-1, %eax
	jne	.L196
	movl	$.LC73, %edi
	call	perror
	movl	$45, %edi
	call	exit
.L196:
	movl	$.LC74, %edi
	call	puts
	call	getpid
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	cltq
	movq	%rax, %rsi
	movl	$.LC75, %edi
	movl	$0, %eax
	call	printf
	movl	-56(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC76, %edi
	movl	$0, %eax
	call	printf
	movl	$5, %edi
	call	foo
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	foo2
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC77, %edi
	movl	$0, %eax
	call	printf
	movl	$main, %esi
	movl	$.LC78, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	call	mem_test
	movl	$0, %eax
	call	find_keyshares
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free_secure_mem
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L198
	call	__stack_chk_fail
.L198:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	main, .-main
	.globl	foo2
	.type	foo2, @function
foo2:
.LFB47:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	foo2, .-foo2
	.local	static_main_variable_for_testing.4172
	.comm	static_main_variable_for_testing.4172,4,4
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.1) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
