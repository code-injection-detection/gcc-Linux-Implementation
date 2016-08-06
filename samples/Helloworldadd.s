	.file	"Helloworldadd.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"malloc failed in function %s, line %d\n"
	.text
	.globl	error_checking_malloc
	.type	error_checking_malloc, @function
error_checking_malloc:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L4
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$42, %edi
	call	exit
.L4:
	movq	-8(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	error_checking_malloc, .-error_checking_malloc
	.comm	total_bytes_allocated,8,8
	.comm	entire_memory_chunk,8,8
	.comm	last_unused_memory,8,8
	.comm	keyshare_input_file,8,8
	.comm	free_chunks_list,8,8
	.comm	free_chunks_num,8,8
	.comm	allocated_chunks_list,8,8
	.comm	allocated_chunks_num,8,8
	.globl	copy_nodes
	.type	copy_nodes, @function
copy_nodes:
.LFB3:
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
.LFE3:
	.size	copy_nodes, .-copy_nodes
	.globl	copy_nodes_ptr
	.type	copy_nodes_ptr, @function
copy_nodes_ptr:
.LFB4:
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
.LFE4:
	.size	copy_nodes_ptr, .-copy_nodes_ptr
	.globl	alloc_list
	.type	alloc_list, @function
alloc_list:
.LFB5:
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
	jmp	.L8
.L11:
	movl	$67, %edx
	movl	$__func__.5001, %esi
	movl	$32, %edi
	call	error_checking_malloc
	movq	%rax, -24(%rbp)
	cmpq	$1, -8(%rbp)
	jne	.L9
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.L9:
	cmpq	$1, -8(%rbp)
	jle	.L10
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L10:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	addq	$1, -8(%rbp)
.L8:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jle	.L11
	cmpq	$0, -40(%rbp)
	jle	.L12
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 24(%rax)
.L12:
	movq	-32(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	alloc_list, .-alloc_list
	.globl	add_node_to_list
	.type	add_node_to_list, @function
add_node_to_list:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	$94, %edx
	movl	$__func__.5010, %esi
	movl	$32, %edi
	call	error_checking_malloc
	movq	%rax, -8(%rbp)
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
	jne	.L15
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	jmp	.L16
.L15:
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
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	add_node_to_list, .-add_node_to_list
	.globl	delete_node_from_list
	.type	delete_node_from_list, @function
delete_node_from_list:
.LFB7:
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
	jne	.L18
	cmpq	$0, -8(%rbp)
	jne	.L18
	movq	$0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	jmp	.L19
.L18:
	cmpq	$0, -16(%rbp)
	jne	.L20
	cmpq	$0, -8(%rbp)
	je	.L20
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	jmp	.L19
.L20:
	cmpq	$0, -16(%rbp)
	je	.L21
	cmpq	$0, -8(%rbp)
	jne	.L21
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	jmp	.L19
.L21:
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
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	delete_node_from_list, .-delete_node_from_list
	.globl	free_list
	.type	free_list, @function
free_list:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L23
	jmp	.L22
.L23:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.L26:
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	delete_node_from_list
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L25
	jmp	.L22
.L25:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L26
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	free_list, .-free_list
	.section	.rodata
.LC1:
	.string	"List is empty."
	.align 8
.LC2:
	.string	"Node %ld: Length in chunks=%ld, pointer to mem=%ld\n"
	.text
	.globl	print_list
	.type	print_list, @function
print_list:
.LFB9:
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
	jne	.L28
	movl	$.LC1, %edi
	call	puts
	jmp	.L27
.L28:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L30
.L31:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
.L30:
	cmpq	$0, -16(%rbp)
	jne	.L31
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	print_list, .-print_list
	.section	.rodata
.LC3:
	.string	"Free chunks list:"
.LC4:
	.string	"Allocated chunks list:"
	.text
	.globl	print_lists
	.type	print_lists, @function
print_lists:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$.LC3, %edi
	call	puts
	movq	free_chunks_list(%rip), %rax
	movq	%rax, %rdi
	call	print_list
	movl	$.LC4, %edi
	call	puts
	movq	allocated_chunks_list(%rip), %rax
	movq	%rax, %rdi
	call	print_list
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	print_lists, .-print_lists
	.globl	find_number_of_useful_chunks
	.type	find_number_of_useful_chunks, @function
find_number_of_useful_chunks:
.LFB11:
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
.LFE11:
	.size	find_number_of_useful_chunks, .-find_number_of_useful_chunks
	.globl	init_memory_manager
	.type	init_memory_manager, @function
init_memory_manager:
.LFB12:
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
.LFE12:
	.size	init_memory_manager, .-init_memory_manager
	.globl	free_memory_manager_structures
	.type	free_memory_manager_structures, @function
free_memory_manager_structures:
.LFB13:
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
.LFE13:
	.size	free_memory_manager_structures, .-free_memory_manager_structures
	.section	.rodata
	.align 8
.LC5:
	.string	"Great!. No need to allocate more than the defined amount."
	.align 8
.LC6:
	.string	"Whoops. We need to allocate a bit more space."
	.text
	.globl	allocate_mem
	.type	allocate_mem, @function
allocate_mem:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	$30000, -56(%rbp)
	movq	$5, -48(%rbp)
	movq	$4, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdx
	addq	%rdx, %rax
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	leaq	(%rdx,%rcx), %rbx
	cqto
	idivq	%rbx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	subq	$1, %rax
	imulq	-48(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-56(%rbp), %rax
	jne	.L38
	movl	$.LC5, %edi
	call	puts
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.L39
.L38:
	movl	$.LC6, %edi
	call	puts
	addq	$1, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	subq	$1, %rax
	imulq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
.L39:
	movq	-64(%rbp), %rax
	movl	$293, %edx
	movl	$__func__.5054, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, total_bytes_allocated(%rip)
	movq	-24(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	allocate_mem, .-allocate_mem
	.globl	secure_malloc
	.type	secure_malloc, @function
secure_malloc:
.LFB15:
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
	jge	.L42
	call	__errno_location
	movl	$12, (%rax)
	movl	$0, %eax
	jmp	.L43
.L42:
	movq	-88(%rbp), %rax
	cqto
	idivq	-40(%rbp)
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	imulq	-40(%rbp), %rax
	cmpq	-88(%rbp), %rax
	je	.L44
	addq	$1, -72(%rbp)
.L44:
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
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	secure_malloc, .-secure_malloc
	.section	.rodata
	.align 8
.LC7:
	.string	"Attempted to read more keyshares that the ones stored\n"
	.align 8
.LC8:
	.string	"Did not read byte in get_next_keyshare()\n"
	.text
	.globl	get_next_keyshare
	.type	get_next_keyshare, @function
get_next_keyshare:
.LFB16:
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
	je	.L46
	movl	$.LC7, %edi
	call	perror
	movl	$44, %edi
	call	exit
.L46:
	movq	keyshare_input_file(%rip), %rdx
	leaq	-1(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread
	cmpq	$1, %rax
	je	.L47
	movl	$.LC8, %edi
	call	perror
	movl	$47, %edi
	call	exit
.L47:
	movzbl	-1(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	get_next_keyshare, .-get_next_keyshare
	.globl	insert_keys_into_mem
	.type	insert_keys_into_mem, @function
insert_keys_into_mem:
.LFB17:
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
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -48(%rbp)
	jmp	.L50
.L55:
	cmpl	$0, -52(%rbp)
	je	.L51
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$0, %eax
	call	get_next_keyshare
	movb	%al, (%rbx)
	addq	$1, -32(%rbp)
	addq	$1, -48(%rbp)
	jmp	.L52
.L51:
	movq	$0, -40(%rbp)
	jmp	.L53
.L54:
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	addq	$1, -40(%rbp)
.L53:
	cmpq	$3, -40(%rbp)
	jle	.L54
	addq	$4, -48(%rbp)
	movl	$1, -52(%rbp)
.L52:
	cmpq	$5, -32(%rbp)
	jne	.L50
	movl	$0, -52(%rbp)
	movq	$0, -32(%rbp)
.L50:
	movq	total_bytes_allocated(%rip), %rax
	cmpq	%rax, -48(%rbp)
	jl	.L55
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	insert_keys_into_mem, .-insert_keys_into_mem
	.section	.rodata
.LC9:
	.string	"Printing heap memory:"
.LC10:
	.string	"0x%02x "
	.text
	.globl	print_mem
	.type	print_mem, @function
print_mem:
.LFB18:
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
	movl	$.LC9, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L57
.L58:
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
.L57:
	movq	total_bytes_allocated(%rip), %rax
	cmpq	%rax, -16(%rbp)
	jl	.L58
	movl	$10, %edi
	call	putchar
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	print_mem, .-print_mem
	.globl	insert_data_into_mem
	.type	insert_data_into_mem, @function
insert_data_into_mem:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L60
.L63:
	addq	$1, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$4, -8(%rbp)
	jg	.L61
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L62
.L61:
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	addq	$4, -24(%rbp)
.L62:
	addq	$9, -40(%rbp)
.L60:
	movq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.L63
	movq	-32(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	insert_data_into_mem, .-insert_data_into_mem
	.globl	get_secure_data
	.type	get_secure_data, @function
get_secure_data:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movl	%ecx, -108(%rbp)
	movq	%r8, -120(%rbp)
	movq	$0, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -64(%rbp)
	cmpl	$2, -108(%rbp)
	jne	.L66
	movq	$1, -48(%rbp)
	jmp	.L67
.L66:
	movq	-96(%rbp), %rax
	movq	%rax, -48(%rbp)
.L67:
	movq	$0, -72(%rbp)
	cmpl	$0, -108(%rbp)
	je	.L68
	movq	-120(%rbp), %rax
	imulq	-48(%rbp), %rax
	leaq	3(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	imulq	-48(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L69
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, -64(%rbp)
	jmp	.L68
.L69:
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	imulq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movl	$0, %eax
	subq	%rcx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	$4, %eax
	subq	-16(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.L70
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L71
.L70:
	movl	$4, %eax
	subq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.L71:
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy
	movq	-40(%rbp), %rax
	addq	%rax, -56(%rbp)
	addq	$9, -64(%rbp)
	jmp	.L72
.L68:
	jmp	.L72
.L75:
	movq	-56(%rbp), %rax
	movq	-96(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$4, -8(%rbp)
	jg	.L73
	movq	-8(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy
	movq	-96(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.L74
.L73:
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	addq	$4, -56(%rbp)
.L74:
	addq	$9, -72(%rbp)
.L72:
	movq	-56(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.L75
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	get_secure_data, .-get_secure_data
	.globl	set_secure_data
	.type	set_secure_data, @function
set_secure_data:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movl	%ecx, -108(%rbp)
	movq	%r8, -120(%rbp)
	movq	$0, -56(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpl	$2, -108(%rbp)
	jne	.L77
	movq	$1, -48(%rbp)
	jmp	.L78
.L77:
	movq	-96(%rbp), %rax
	movq	%rax, -48(%rbp)
.L78:
	movq	$0, -72(%rbp)
	cmpl	$0, -108(%rbp)
	je	.L79
	movq	-120(%rbp), %rax
	imulq	-48(%rbp), %rax
	leaq	3(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	imulq	-48(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L80
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, -64(%rbp)
	jmp	.L79
.L80:
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	imulq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movl	$0, %eax
	subq	%rcx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	$4, %eax
	subq	-16(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.L81
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L82
.L81:
	movl	$4, %eax
	subq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.L82:
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-16(%rbp), %rcx
	movq	-64(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy
	movq	-40(%rbp), %rax
	addq	%rax, -56(%rbp)
	addq	$9, -64(%rbp)
	jmp	.L83
.L79:
	jmp	.L83
.L86:
	movq	-56(%rbp), %rax
	movq	-96(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$4, -8(%rbp)
	jg	.L84
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy
	movq	-96(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.L85
.L84:
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	addq	$4, -56(%rbp)
.L85:
	addq	$9, -72(%rbp)
.L83:
	movq	-56(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.L86
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
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
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, %edi
	call	time
	movl	%eax, %edi
	call	srand
	movl	$0, %eax
	call	allocate_mem
	movq	%rax, -8(%rbp)
	movl	$.LC11, %esi
	movl	$.LC12, %edi
	call	fopen
	movq	%rax, keyshare_input_file(%rip)
	movq	keyshare_input_file(%rip), %rax
	testq	%rax, %rax
	jne	.L88
	movl	$.LC13, %edi
	call	perror
	movl	$43, %edi
	call	exit
.L88:
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
.LFE22:
	.size	init_mem, .-init_mem
	.globl	free_secure_mem
	.type	free_secure_mem, @function
free_secure_mem:
.LFB23:
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
.LFE23:
	.size	free_secure_mem, .-free_secure_mem
	.globl	get_char
	.type	get_char, @function
get_char:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-1(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	call	get_secure_data
	movzbl	-1(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	get_char, .-get_char
	.globl	get_int
	.type	get_int, @function
get_int:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_secure_data
	movl	-16(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	get_int, .-get_int
	.globl	get_long_int
	.type	get_long_int, @function
get_long_int:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	get_secure_data
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	get_long_int, .-get_long_int
	.globl	get_pointer
	.type	get_pointer, @function
get_pointer:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	get_secure_data
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	get_pointer, .-get_pointer
	.globl	get_float
	.type	get_float, @function
get_float:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_secure_data
	movl	-16(%rbp), %eax
	movl	%eax, -28(%rbp)
	movss	-28(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	get_float, .-get_float
	.globl	get_double
	.type	get_double, @function
get_double:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	get_secure_data
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movsd	-32(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	get_double, .-get_double
	.globl	get_array_element
	.type	get_array_element, @function
get_array_element:
.LFB30:
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
.LFE30:
	.size	get_array_element, .-get_array_element
	.globl	get_char_array_element
	.type	get_char_array_element, @function
get_char_array_element:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-1(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	call	get_secure_data
	movzbl	-1(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	get_char_array_element, .-get_char_array_element
	.globl	get_int_array_element
	.type	get_int_array_element, @function
get_int_array_element:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_secure_data
	movl	-16(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	get_int_array_element, .-get_int_array_element
	.globl	get_long_int_array_element
	.type	get_long_int_array_element, @function
get_long_int_array_element:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	get_secure_data
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	get_long_int_array_element, .-get_long_int_array_element
	.globl	get_pointer_array_element
	.type	get_pointer_array_element, @function
get_pointer_array_element:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	get_secure_data
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	get_pointer_array_element, .-get_pointer_array_element
	.globl	get_float_array_element
	.type	get_float_array_element, @function
get_float_array_element:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_secure_data
	movl	-16(%rbp), %eax
	movl	%eax, -36(%rbp)
	movss	-36(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	get_float_array_element, .-get_float_array_element
	.globl	get_double_array_element
	.type	get_double_array_element, @function
get_double_array_element:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	get_secure_data
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	get_double_array_element, .-get_double_array_element
	.globl	get_arbitrary_block_in_heap
	.type	get_arbitrary_block_in_heap, @function
get_arbitrary_block_in_heap:
.LFB37:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	get_secure_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	get_arbitrary_block_in_heap, .-get_arbitrary_block_in_heap
	.globl	get_arbitrary_block_in_heap_with_offset
	.type	get_arbitrary_block_in_heap_with_offset, @function
get_arbitrary_block_in_heap_with_offset:
.LFB38:
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
	movl	$2, %ecx
	movq	%rax, %rdi
	call	get_secure_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	get_arbitrary_block_in_heap_with_offset, .-get_arbitrary_block_in_heap_with_offset
	.globl	set_char
	.type	set_char, @function
set_char:
.LFB39:
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
.LFE39:
	.size	set_char, .-set_char
	.globl	set_int
	.type	set_int, @function
set_int:
.LFB40:
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
.LFE40:
	.size	set_int, .-set_int
	.globl	set_long_int
	.type	set_long_int, @function
set_long_int:
.LFB41:
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
.LFE41:
	.size	set_long_int, .-set_long_int
	.globl	set_pointer
	.type	set_pointer, @function
set_pointer:
.LFB42:
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
.LFE42:
	.size	set_pointer, .-set_pointer
	.globl	set_float
	.type	set_float, @function
set_float:
.LFB43:
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
.LFE43:
	.size	set_float, .-set_float
	.globl	set_double
	.type	set_double, @function
set_double:
.LFB44:
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
.LFE44:
	.size	set_double, .-set_double
	.globl	set_array_element
	.type	set_array_element, @function
set_array_element:
.LFB45:
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
.LFE45:
	.size	set_array_element, .-set_array_element
	.globl	set_char_array_element
	.type	set_char_array_element, @function
set_char_array_element:
.LFB46:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	movzbl	-36(%rbp), %eax
	movb	%al, -1(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-1(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	call	set_secure_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	set_char_array_element, .-set_char_array_element
	.globl	set_int_array_element
	.type	set_int_array_element, @function
set_int_array_element:
.LFB47:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-4(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	set_secure_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	set_int_array_element, .-set_int_array_element
	.globl	set_long_int_array_element
	.type	set_long_int_array_element, @function
set_long_int_array_element:
.LFB48:
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
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	set_secure_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	set_long_int_array_element, .-set_long_int_array_element
	.globl	set_pointer_array_element
	.type	set_pointer_array_element, @function
set_pointer_array_element:
.LFB49:
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
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	set_secure_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	set_pointer_array_element, .-set_pointer_array_element
	.globl	set_float_array_element
	.type	set_float_array_element, @function
set_float_array_element:
.LFB50:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movss	%xmm0, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-4(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	set_secure_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	set_float_array_element, .-set_float_array_element
	.globl	set_double_array_element
	.type	set_double_array_element, @function
set_double_array_element:
.LFB51:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	set_secure_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	set_double_array_element, .-set_double_array_element
	.globl	set_arbitrary_block_in_heap
	.type	set_arbitrary_block_in_heap, @function
set_arbitrary_block_in_heap:
.LFB52:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	set_secure_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	set_arbitrary_block_in_heap, .-set_arbitrary_block_in_heap
	.globl	set_arbitrary_block_in_heap_with_offset
	.type	set_arbitrary_block_in_heap_with_offset, @function
set_arbitrary_block_in_heap_with_offset:
.LFB53:
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
	movl	$2, %ecx
	movq	%rax, %rdi
	call	set_secure_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	set_arbitrary_block_in_heap_with_offset, .-set_arbitrary_block_in_heap_with_offset
	.globl	find_large_enough_free_group
	.type	find_large_enough_free_group, @function
find_large_enough_free_group:
.LFB54:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	free_chunks_list(%rip), %rax
	testq	%rax, %rax
	jne	.L134
	movl	$0, %eax
	jmp	.L135
.L134:
	movq	free_chunks_list(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L136
.L138:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jl	.L137
	movq	-8(%rbp), %rax
	jmp	.L135
.L137:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.L136:
	cmpq	$0, -8(%rbp)
	jne	.L138
	movl	$0, %eax
.L135:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	find_large_enough_free_group, .-find_large_enough_free_group
	.globl	find_which_group_to_free
	.type	find_which_group_to_free, @function
find_which_group_to_free:
.LFB55:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	allocated_chunks_list(%rip), %rax
	testq	%rax, %rax
	jne	.L140
	movl	$0, %eax
	jmp	.L141
.L140:
	movq	allocated_chunks_list(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L142
.L144:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.L143
	movq	-8(%rbp), %rax
	jmp	.L141
.L143:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.L142:
	cmpq	$0, -8(%rbp)
	jne	.L144
	movl	$0, %eax
.L141:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	find_which_group_to_free, .-find_which_group_to_free
	.globl	check_and_merge
	.type	check_and_merge, @function
check_and_merge:
.LFB56:
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
	jne	.L146
	movl	$938, %edx
	movl	$__func__.5320, %esi
	movl	$32, %edi
	call	error_checking_malloc
	movq	%rax, -8(%rbp)
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
	je	.L147
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L148
.L147:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L148:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L149
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L149:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-8(%rbp), %rax
	jmp	.L150
.L146:
	movl	$0, %eax
.L150:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	check_and_merge, .-check_and_merge
	.globl	managed_secure_malloc
	.type	managed_secure_malloc, @function
managed_secure_malloc:
.LFB57:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L152
	movl	$0, %eax
	jmp	.L158
.L152:
	movq	-56(%rbp), %rax
	leaq	3(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	salq	$2, %rax
	cmpq	-56(%rbp), %rax
	jge	.L154
	addq	$1, -48(%rbp)
.L154:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	find_large_enough_free_group
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L155
	movl	$0, %eax
	jmp	.L158
.L155:
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
	jne	.L156
	movq	free_chunks_list(%rip), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	delete_node_from_list
	movq	%rax, free_chunks_list(%rip)
	movq	free_chunks_num(%rip), %rax
	subq	$1, %rax
	movq	%rax, free_chunks_num(%rip)
	jmp	.L157
.L156:
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
.L157:
	movq	-24(%rbp), %rax
.L158:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	managed_secure_malloc, .-managed_secure_malloc
	.globl	managed_secure_free
	.type	managed_secure_free, @function
managed_secure_free:
.LFB58:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movl	$0, -44(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	find_which_group_to_free
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L160
	movl	$0, %eax
	jmp	.L161
.L160:
	movl	$1032, %edx
	movl	$__func__.5336, %esi
	movl	$32, %edi
	call	error_checking_malloc
	movq	%rax, -16(%rbp)
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
	jne	.L162
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
	movl	$1, -44(%rbp)
	jmp	.L163
.L162:
	movq	$0, -32(%rbp)
	jmp	.L164
.L167:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jle	.L165
	jmp	.L166
.L165:
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
.L164:
	cmpq	$0, -40(%rbp)
	jne	.L167
.L166:
	cmpq	$0, -32(%rbp)
	jne	.L168
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
	je	.L169
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$free_chunks_list, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_and_merge
	movq	%rax, -24(%rbp)
	jmp	.L170
.L172:
	movq	free_chunks_num(%rip), %rax
	subq	$1, %rax
	movq	%rax, free_chunks_num(%rip)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L171
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$free_chunks_list, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_and_merge
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L170
	jmp	.L169
.L171:
	jmp	.L169
.L170:
	cmpq	$0, -24(%rbp)
	jne	.L172
.L169:
	movl	$1, -44(%rbp)
	jmp	.L163
.L168:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L173
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jge	.L173
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
	je	.L174
	movq	free_chunks_num(%rip), %rax
	subq	$1, %rax
	movq	%rax, free_chunks_num(%rip)
.L174:
	movl	$1, -44(%rbp)
	jmp	.L163
.L173:
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
	cmpq	$0, -24(%rbp)
	jne	.L175
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$free_chunks_list, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_and_merge
	movq	%rax, -24(%rbp)
	jmp	.L176
.L175:
	jmp	.L176
.L179:
	movq	free_chunks_num(%rip), %rax
	subq	$1, %rax
	movq	%rax, free_chunks_num(%rip)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L177
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$free_chunks_list, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_and_merge
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L176
	jmp	.L178
.L177:
	jmp	.L178
.L176:
	cmpq	$0, -24(%rbp)
	jne	.L179
.L178:
	movl	$1, -44(%rbp)
.L163:
	movl	-44(%rbp), %eax
.L161:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	managed_secure_free, .-managed_secure_free
	.section	.rodata
	.align 8
.LC14:
	.string	"Managed secure malloc error in function %s, line %d\n"
	.text
	.globl	error_checking_managed_secure_malloc
	.type	error_checking_managed_secure_malloc, @function
error_checking_managed_secure_malloc:
.LFB59:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L181
	movl	$0, %eax
	jmp	.L182
.L181:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L183
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$52, %edi
	call	exit
.L183:
	movq	-8(%rbp), %rax
.L182:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	error_checking_managed_secure_malloc, .-error_checking_managed_secure_malloc
	.globl	insert_data_into_normal_array
	.type	insert_data_into_normal_array, @function
insert_data_into_normal_array:
.LFB60:
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
	jmp	.L185
.L186:
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
.L185:
	movl	-4(%rbp), %eax
	cltq
	cmpq	-24(%rbp), %rax
	jl	.L186
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	insert_data_into_normal_array, .-insert_data_into_normal_array
	.section	.rodata
	.align 8
.LC15:
	.string	"Zero hex test printing: 0x%02x \n"
.LC16:
	.string	"Starting mem test"
.LC17:
	.string	"chunks:%ld\n"
.LC18:
	.string	"After init, print mem"
.LC19:
	.string	"Trying to secure malloc"
	.align 8
.LC20:
	.string	"After malloc,try to insert some data"
	.align 8
.LC21:
	.string	"Now let's retrieve the data and display them"
.LC22:
	.string	"%d "
	.align 8
.LC23:
	.string	"Again, Trying to secure malloc"
	.align 8
.LC24:
	.string	"Again, after malloc,try to insert some data"
	.align 8
.LC25:
	.string	"After displaying the two arrays:"
.LC26:
	.string	"After freeing one of them:"
	.align 8
.LC27:
	.string	"Now trying to store and retrieve 424242424..."
.LC28:
	.string	"\n\n%d \n\n"
.LC29:
	.string	"After retrieving int:"
	.align 8
.LC30:
	.string	"After freeing the second array:"
.LC31:
	.string	"After freeing the int:"
.LC32:
	.string	"Testing wrapper functions"
.LC33:
	.string	"Got %d\n"
.LC34:
	.string	"Got %c\n"
.LC35:
	.string	"Got %ld\n"
.LC36:
	.string	"After long int printing:"
.LC37:
	.string	"After long int free:"
.LC38:
	.string	"After another char alloc:"
.LC40:
	.string	"Got %lf\n"
.LC41:
	.string	"After double alloc:"
	.align 8
.LC42:
	.string	"Array wrapper function testing"
.LC46:
	.string	"array index 2 is %lf\n"
.LC47:
	.string	"array index 3 is %lf\n"
.LC48:
	.string	"\n\n"
	.align 8
.LC49:
	.string	"After data retrieval, print mem"
.LC50:
	.string	"Mem test done"
	.text
	.globl	mem_test
	.type	mem_test, @function
mem_test:
.LFB61:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	$20, -128(%rbp)
	movl	$0, %esi
	movl	$.LC15, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC16, %edi
	call	puts
	movq	entire_memory_chunk(%rip), %rax
	movq	%rax, -120(%rbp)
	movq	total_bytes_allocated(%rip), %rax
	movq	%rax, %rdi
	call	find_number_of_useful_chunks
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC17, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC18, %edi
	call	puts
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	print_mem
	movq	-128(%rbp), %rax
	salq	$2, %rax
	movl	$60, %edx
	movl	$__func__.5387, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, -104(%rbp)
	movq	-128(%rbp), %rax
	salq	$2, %rax
	movl	$61, %edx
	movl	$__func__.5387, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, -96(%rbp)
	movq	$5, -144(%rbp)
	jmp	.L188
.L189:
	movq	-144(%rbp), %rax
	salq	$2, %rax
	leaq	-20(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movq	-144(%rbp), %rax
	movl	%eax, %ecx
	movq	-144(%rbp), %rax
	imull	%ecx, %eax
	movl	%eax, (%rdx)
	addq	$1, -144(%rbp)
.L188:
	movq	-128(%rbp), %rax
	addq	$5, %rax
	cmpq	-144(%rbp), %rax
	jg	.L189
	movl	$.LC19, %edi
	call	puts
	movq	-128(%rbp), %rax
	salq	$2, %rax
	movl	$70, %edx
	movl	$__func__.5387, %esi
	movq	%rax, %rdi
	call	error_checking_managed_secure_malloc
	movq	%rax, -88(%rbp)
	movl	$.LC20, %edi
	call	puts
	movq	-128(%rbp), %rax
	salq	$2, %rax
	movq	-88(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_mem
	movl	$.LC21, %edi
	call	puts
	movl	$78, %edx
	movl	$__func__.5387, %esi
	movl	$4, %edi
	call	error_checking_malloc
	movq	%rax, -80(%rbp)
	movq	$0, -136(%rbp)
	jmp	.L190
.L191:
	movq	-136(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_secure_data
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC22, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -136(%rbp)
.L190:
	movq	-136(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jl	.L191
	movl	$10, %edi
	call	putchar
	movl	$.LC23, %edi
	call	puts
	movq	-128(%rbp), %rax
	salq	$2, %rax
	movl	$91, %edx
	movl	$__func__.5387, %esi
	movq	%rax, %rdi
	call	error_checking_managed_secure_malloc
	movq	%rax, -72(%rbp)
	movq	$5, -144(%rbp)
	jmp	.L192
.L193:
	movq	-144(%rbp), %rax
	salq	$2, %rax
	leaq	-20(%rax), %rdx
	movq	-104(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-144(%rbp), %rax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, (%rcx)
	addq	$1, -144(%rbp)
.L192:
	movq	-128(%rbp), %rax
	addq	$5, %rax
	cmpq	-144(%rbp), %rax
	jg	.L193
	movl	$.LC24, %edi
	call	puts
	movq	-128(%rbp), %rax
	salq	$2, %rax
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_mem
	movl	$.LC21, %edi
	call	puts
	movq	$0, -136(%rbp)
	jmp	.L194
.L195:
	movq	-136(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_secure_data
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC22, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -136(%rbp)
.L194:
	movq	-136(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jl	.L195
	movl	$10, %edi
	call	putchar
	movl	$.LC25, %edi
	call	puts
	movl	$0, %eax
	call	print_lists
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movl	$.LC26, %edi
	call	puts
	movl	$0, %eax
	call	print_lists
	movl	$.LC27, %edi
	call	puts
	movl	$120, %edx
	movl	$__func__.5387, %esi
	movl	$4, %edi
	call	error_checking_managed_secure_malloc
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	movl	$424242424, (%rax)
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	insert_data_into_mem
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$124, %edx
	movl	$__func__.5387, %esi
	movl	$4, %edi
	call	error_checking_malloc
	movq	%rax, -80(%rbp)
	movq	-136(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_secure_data
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC28, %edi
	movl	$0, %eax
	call	printf
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$.LC29, %edi
	call	puts
	movl	$0, %eax
	call	print_lists
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movl	$.LC30, %edi
	call	puts
	movl	$0, %eax
	call	print_lists
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movl	$.LC31, %edi
	call	puts
	movl	$0, %eax
	call	print_lists
	movl	$.LC32, %edi
	call	puts
	movl	$146, %edx
	movl	$__func__.5387, %esi
	movl	$4, %edi
	call	error_checking_managed_secure_malloc
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	$99998, %esi
	movq	%rax, %rdi
	call	set_int
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movl	%eax, -156(%rbp)
	movl	-156(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC33, %edi
	movl	$0, %eax
	call	printf
	movl	$152, %edx
	movl	$__func__.5387, %esi
	movl	$1, %edi
	call	error_checking_managed_secure_malloc
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$98, %esi
	movq	%rax, %rdi
	call	set_char
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	get_char
	movb	%al, -157(%rbp)
	movsbl	-157(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC34, %edi
	movl	$0, %eax
	call	printf
	movl	$158, %edx
	movl	$__func__.5387, %esi
	movl	$8, %edi
	call	error_checking_managed_secure_malloc
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$54545454, %esi
	movq	%rax, %rdi
	call	set_long_int
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	get_long_int
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC35, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC36, %edi
	call	puts
	movl	$0, %eax
	call	print_lists
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movl	$.LC37, %edi
	call	puts
	movl	$0, %eax
	call	print_lists
	movl	$172, %edx
	movl	$__func__.5387, %esi
	movl	$1, %edi
	call	error_checking_managed_secure_malloc
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	set_char
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	get_char
	movb	%al, -157(%rbp)
	movsbl	-157(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC34, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC38, %edi
	call	puts
	movl	$0, %eax
	call	print_lists
	movl	$182, %edx
	movl	$__func__.5387, %esi
	movl	$8, %edi
	call	error_checking_managed_secure_malloc
	movq	%rax, -24(%rbp)
	movabsq	$4665384344877005170, %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -168(%rbp)
	movsd	-168(%rbp), %xmm0
	movq	%rdx, %rdi
	call	set_double
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	get_double
	movsd	%xmm0, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)
	movsd	-168(%rbp), %xmm0
	movl	$.LC40, %edi
	movl	$1, %eax
	call	printf
	movl	$.LC41, %edi
	call	puts
	movl	$0, %eax
	call	print_lists
	movl	$.LC42, %edi
	call	puts
	movl	$193, %edx
	movl	$__func__.5387, %esi
	movl	$80, %edi
	call	error_checking_managed_secure_malloc
	movq	%rax, -8(%rbp)
	movabsq	$4631167498573958009, %rax
	movq	%rax, -152(%rbp)
	leaq	-152(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	call	set_array_element
	movabsq	$4629998950986019070, %rax
	movq	%rax, -152(%rbp)
	leaq	-152(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	call	set_array_element
	movabsq	$4607182418800017408, %rax
	movq	%rax, -152(%rbp)
	leaq	-152(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	call	get_array_element
	movq	-152(%rbp), %rax
	movq	%rax, -168(%rbp)
	movsd	-168(%rbp), %xmm0
	movl	$.LC46, %edi
	movl	$1, %eax
	call	printf
	leaq	-152(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	call	get_array_element
	movq	-152(%rbp), %rax
	movq	%rax, -168(%rbp)
	movsd	-168(%rbp), %xmm0
	movl	$.LC47, %edi
	movl	$1, %eax
	call	printf
	movq	-8(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	get_double_array_element
	movsd	%xmm0, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -168(%rbp)
	movsd	-168(%rbp), %xmm0
	movl	$.LC47, %edi
	movl	$1, %eax
	call	printf
	movl	$.LC48, %edi
	call	puts
	movl	$.LC49, %edi
	call	puts
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	print_mem
	movl	$.LC50, %edi
	call	puts
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	mem_test, .-mem_test
	.section	.rodata
.LC51:
	.string	"a---------"
.LC52:
	.string	"Returned NULL! -.- 1"
.LC53:
	.string	"b---------"
.LC54:
	.string	"Returned NULL! -.- 2"
.LC55:
	.string	"c---------"
.LC56:
	.string	"Returned NULL! -.- 3"
.LC57:
	.string	"d---------"
.LC58:
	.string	"Something went wrong"
.LC59:
	.string	"e---------"
.LC60:
	.string	"Returned NULL! -.- 4"
.LC61:
	.string	"f---------"
.LC62:
	.string	"Returned NULL! -.- 5"
.LC63:
	.string	"g---------"
	.text
	.globl	list_test
	.type	list_test, @function
list_test:
.LFB62:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	$.LC3, %edi
	call	puts
	movq	free_chunks_list(%rip), %rax
	movq	%rax, %rdi
	call	print_list
	movl	$.LC4, %edi
	call	puts
	movq	allocated_chunks_list(%rip), %rax
	movq	%rax, %rdi
	call	print_list
	movq	$10, -32(%rbp)
	movq	entire_memory_chunk(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movl	$.LC51, %edi
	call	puts
	movl	$101, %edi
	call	managed_secure_malloc
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L197
	movl	$.LC52, %edi
	call	puts
.L197:
	movl	$0, %eax
	call	print_lists
	movl	$.LC53, %edi
	call	puts
	movl	$42, %edi
	call	managed_secure_malloc
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L198
	movl	$.LC54, %edi
	call	puts
.L198:
	movl	$0, %eax
	call	print_lists
	movl	$.LC55, %edi
	call	puts
	movl	$61, %edi
	call	managed_secure_malloc
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L199
	movl	$.LC56, %edi
	call	puts
.L199:
	movl	$0, %eax
	call	print_lists
	movl	$.LC57, %edi
	call	puts
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.L200
	movl	$.LC58, %edi
	call	puts
.L200:
	movl	$0, %eax
	call	print_lists
	movl	$.LC59, %edi
	call	puts
	movl	$80, %edi
	call	managed_secure_malloc
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L201
	movl	$.LC60, %edi
	call	puts
.L201:
	movl	$0, %eax
	call	print_lists
	movl	$.LC61, %edi
	call	puts
	movl	$29, %edi
	call	managed_secure_malloc
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L202
	movl	$.LC62, %edi
	call	puts
.L202:
	movl	$0, %eax
	call	print_lists
	movl	$.LC63, %edi
	call	puts
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.L203
	movl	$.LC58, %edi
	call	puts
.L203:
	movl	$0, %eax
	call	print_lists
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	list_test, .-list_test
	.section	.rodata
.LC64:
	.string	"Need more mem!"
.LC65:
	.string	"setting"
.LC67:
	.string	"adding"
.LC68:
	.string	"printing"
.LC69:
	.string	"%lg "
	.align 8
.LC70:
	.string	"printing as blocks of data using arbitrary blocks"
.LC71:
	.string	"freeing"
	.text
	.globl	simple_array_tests
	.type	simple_array_tests, @function
simple_array_tests:
.LFB63:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movl	$4, %edi
	call	managed_secure_malloc
	movq	%rax, -72(%rbp)
	movl	$8, %edi
	call	managed_secure_malloc
	movq	%rax, -64(%rbp)
	movl	$8, %edi
	call	managed_secure_malloc
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	set_long_int
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_pointer
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	get_pointer
	movl	$21, %esi
	movq	%rax, %rdi
	call	set_long_int
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	get_long_int
	salq	$2, %rax
	movq	%rax, %rdi
	call	managed_secure_malloc
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	get_long_int
	salq	$2, %rax
	movq	%rax, %rdi
	call	managed_secure_malloc
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	get_long_int
	salq	$3, %rax
	movq	%rax, %rdi
	call	managed_secure_malloc
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	get_long_int
	salq	$2, %rax
	movq	%rax, %rdi
	call	managed_secure_malloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L205
	movl	$.LC64, %edi
	call	puts
	movl	$42, %edi
	call	exit
.L205:
	movl	$.LC65, %edi
	call	puts
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_int
	jmp	.L206
.L207:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	leal	(%rax,%rax), %ebx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rcx
	movq	-48(%rbp), %rax
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_int_array_element
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	leal	(%rax,%rdx), %ebx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rcx
	movq	-40(%rbp), %rax
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_int_array_element
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	cvtsi2sd	%eax, %xmm0
	movsd	.LC66(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movsd	-88(%rbp), %xmm0
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_double_array_element
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	addl	%eax, %eax
	cvtsi2ss	%eax, %xmm3
	movss	%xmm3, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movss	-88(%rbp), %xmm0
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_float_array_element
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	set_int
.L206:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	get_long_int
	cmpq	%rax, %rbx
	jl	.L207
	movl	$.LC67, %edi
	call	puts
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_int
	jmp	.L208
.L209:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_int_array_element
	movl	%eax, %ebx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_int_array_element
	addl	%eax, %ebx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rcx
	movq	-48(%rbp), %rax
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_int_array_element
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_double_array_element
	movsd	%xmm0, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_float_array_element
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	movapd	%xmm0, %xmm2
	addsd	-88(%rbp), %xmm2
	movsd	%xmm2, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movsd	-88(%rbp), %xmm0
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_double_array_element
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	set_int
.L208:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	get_long_int
	cmpq	%rax, %rbx
	jl	.L209
	movl	$.LC68, %edi
	call	puts
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_int
	jmp	.L210
.L211:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_int_array_element
	movl	%eax, %esi
	movl	$.LC22, %edi
	movl	$0, %eax
	call	printf
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	set_int
.L210:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	get_long_int
	cmpq	%rax, %rbx
	jl	.L211
	movl	$10, %edi
	call	putchar
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_int
	jmp	.L212
.L213:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_double_array_element
	movsd	%xmm0, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	movl	$.LC69, %edi
	movl	$1, %eax
	call	printf
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	set_int
.L212:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	get_long_int
	cmpq	%rax, %rbx
	jl	.L213
	movl	$10, %edi
	call	putchar
	movl	$.LC70, %edi
	call	puts
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_int
	jmp	.L214
.L215:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	-80(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	get_arbitrary_block_in_heap_with_offset
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	movl	$.LC69, %edi
	movl	$1, %eax
	call	printf
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	set_int
.L214:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	get_long_int
	cmpq	%rax, %rbx
	jl	.L215
	movl	$10, %edi
	call	putchar
	movl	$.LC71, %edi
	call	puts
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	simple_array_tests, .-simple_array_tests
	.globl	adding_unsecured_arrays_time_measure
	.type	adding_unsecured_arrays_time_measure, @function
adding_unsecured_arrays_time_measure:
.LFB64:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	$4, %edi
	call	malloc
	movq	%rax, -32(%rbp)
	movl	$8, %edi
	call	malloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -8(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L217
.L220:
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L218
.L219:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, %eax
	movl	%eax, (%rdx)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, (%rcx)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-8(%rbp), %rax
	addq	%rsi, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	movl	%eax, (%rdx)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
.L218:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jl	.L219
	addl	$1, -36(%rbp)
.L217:
	cmpl	$99999, -36(%rbp)
	jle	.L220
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	adding_unsecured_arrays_time_measure, .-adding_unsecured_arrays_time_measure
	.globl	adding_heap_arrays_time_measure
	.type	adding_heap_arrays_time_measure, @function
adding_heap_arrays_time_measure:
.LFB65:
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
	movl	$457, %edx
	movl	$__func__.5455, %esi
	movl	$4, %edi
	call	error_checking_managed_secure_malloc
	movq	%rax, -48(%rbp)
	movl	$458, %edx
	movl	$__func__.5455, %esi
	movl	$8, %edi
	call	error_checking_managed_secure_malloc
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_long_int
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	get_long_int
	salq	$2, %rax
	movl	$461, %edx
	movl	$__func__.5455, %esi
	movq	%rax, %rdi
	call	error_checking_managed_secure_malloc
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	get_long_int
	salq	$2, %rax
	movl	$462, %edx
	movl	$__func__.5455, %esi
	movq	%rax, %rdi
	call	error_checking_managed_secure_malloc
	movq	%rax, -24(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L222
.L225:
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_int
	jmp	.L223
.L224:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	leal	(%rax,%rax), %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rcx
	movq	-32(%rbp), %rax
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_int_array_element
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	leal	(%rax,%rdx), %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_int_array_element
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_int_array_element
	movl	%eax, %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_int_array_element
	addl	%eax, %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rcx
	movq	-32(%rbp), %rax
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_int_array_element
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	leal	1(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	set_int
.L223:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	get_long_int
	cmpq	%rax, %rbx
	jl	.L224
	addl	$1, -52(%rbp)
.L222:
	cmpl	$99999, -52(%rbp)
	jle	.L225
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	adding_heap_arrays_time_measure, .-adding_heap_arrays_time_measure
	.section	.rodata
.LC74:
	.string	"(pointercount-1)/4)= %.8lf\n"
.LC75:
	.string	"Got result: %.8lf\n"
	.text
	.globl	multiple_simple_mallocs_and_frees
	.type	multiple_simple_mallocs_and_frees, @function
multiple_simple_mallocs_and_frees:
.LFB66:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movl	$0, %eax
	movq	%rax, -32(%rbp)
	movl	$0, %edi
	call	time
	movl	%eax, %edi
	call	srand
	movl	-56(%rbp), %eax
	cltq
	salq	$3, %rax
	movl	$489, %edx
	movl	$__func__.5470, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, -24(%rbp)
	movl	$0, -40(%rbp)
	jmp	.L227
.L228:
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -40(%rbp)
.L227:
	movl	-40(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L228
	movl	$0, -40(%rbp)
	jmp	.L229
.L232:
	call	rand
	cltd
	idivl	-56(%rbp)
	movl	%edx, -36(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L230
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$501, %edx
	movl	$__func__.5470, %esi
	movl	$8, %edi
	call	error_checking_malloc
	movq	%rax, (%rbx)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cvtsi2sd	-36(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L231
.L230:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movsd	(%rax), %xmm0
	movsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
.L231:
	addl	$1, -40(%rbp)
.L229:
	movl	-40(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L232
	movl	-56(%rbp), %eax
	subl	$1, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LC73(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movl	$.LC74, %edi
	movl	$1, %eax
	call	printf
	cvtsi2sd	-52(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movl	$.LC75, %edi
	movl	$1, %eax
	call	printf
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	multiple_simple_mallocs_and_frees, .-multiple_simple_mallocs_and_frees
	.globl	multiple_secure_mallocs_and_frees
	.type	multiple_secure_mallocs_and_frees, @function
multiple_secure_mallocs_and_frees:
.LFB67:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	$0, %eax
	movq	%rax, -16(%rbp)
	movl	$0, %edi
	call	time
	movl	%eax, %edi
	call	srand
	movl	-40(%rbp), %eax
	cltq
	salq	$3, %rax
	movl	$528, %edx
	movl	$__func__.5485, %esi
	movq	%rax, %rdi
	call	error_checking_managed_secure_malloc
	movq	%rax, -8(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L234
.L235:
	movl	-24(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_pointer_array_element
	addl	$1, -24(%rbp)
.L234:
	movl	-24(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L235
	movl	$0, -24(%rbp)
	jmp	.L236
.L239:
	call	rand
	cltd
	idivl	-40(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_pointer_array_element
	testq	%rax, %rax
	jne	.L237
	movl	$540, %edx
	movl	$__func__.5485, %esi
	movl	$8, %edi
	call	error_checking_managed_secure_malloc
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_pointer_array_element
	cvtsi2sd	-20(%rbp), %xmm2
	movsd	%xmm2, -48(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_pointer_array_element
	movsd	-48(%rbp), %xmm0
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_double_array_element
	jmp	.L238
.L237:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_pointer_array_element
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_double_array_element
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_pointer_array_element
	movq	%rax, %rdi
	call	managed_secure_free
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_pointer_array_element
.L238:
	addl	$1, -24(%rbp)
.L236:
	movl	-24(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L239
	movl	-40(%rbp), %eax
	subl	$1, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LC73(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movl	$.LC74, %edi
	movl	$1, %eax
	call	printf
	cvtsi2sd	-36(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movl	$.LC75, %edi
	movl	$1, %eax
	call	printf
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	multiple_secure_mallocs_and_frees, .-multiple_secure_mallocs_and_frees
	.comm	total_stack_bytes_allocated,8,8
	.comm	entire_stack_memory_chunk,8,8
	.comm	last_unused_stack_memory,8,8
	.comm	stack_keyshare_input_file,8,8
	.globl	find_number_of_useful_stack_chunks
	.type	find_number_of_useful_stack_chunks, @function
find_number_of_useful_stack_chunks:
.LFB68:
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
.LFE68:
	.size	find_number_of_useful_stack_chunks, .-find_number_of_useful_stack_chunks
	.globl	get_ptr_size
	.type	get_ptr_size, @function
get_ptr_size:
.LFB69:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$8, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	get_ptr_size, .-get_ptr_size
	.section	.rodata
	.align 8
.LC76:
	.string	"Stack:Attempted to read more keyshares that the ones stored\n"
	.text
	.globl	get_next_stack_keyshare
	.type	get_next_stack_keyshare, @function
get_next_stack_keyshare:
.LFB70:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	stack_keyshare_input_file(%rip), %rax
	movq	%rax, %rdi
	call	feof
	testl	%eax, %eax
	je	.L245
	movl	$.LC76, %edi
	call	perror
	movl	$45, %edi
	call	exit
.L245:
	movq	stack_keyshare_input_file(%rip), %rdx
	leaq	-1(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread
	cmpq	$1, %rax
	je	.L246
	movl	$.LC8, %edi
	call	perror
	movl	$47, %edi
	call	exit
.L246:
	movzbl	-1(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	get_next_stack_keyshare, .-get_next_stack_keyshare
	.section	.rodata
	.align 8
.LC77:
	.string	"Stack: Great!. No need to allocate more than the defined amount."
	.align 8
.LC78:
	.string	"Stack: Whoops. We need to allocate a bit more space."
	.text
	.globl	allocate_stack_mem
	.type	allocate_stack_mem, @function
allocate_stack_mem:
.LFB71:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	$50000, -56(%rbp)
	movq	$5, -48(%rbp)
	movq	$4, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdx
	addq	%rdx, %rax
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	leaq	(%rdx,%rcx), %rbx
	cqto
	idivq	%rbx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	subq	$1, %rax
	imulq	-48(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-56(%rbp), %rax
	jne	.L249
	movl	$.LC77, %edi
	call	puts
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.L250
.L249:
	movl	$.LC78, %edi
	call	puts
	addq	$1, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	subq	$1, %rax
	imulq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
.L250:
	movq	-64(%rbp), %rax
	movl	$143, %edx
	movl	$__func__.5542, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, total_stack_bytes_allocated(%rip)
	movq	-24(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	allocate_stack_mem, .-allocate_stack_mem
	.globl	free_secure_stack_mem
	.type	free_secure_stack_mem, @function
free_secure_stack_mem:
.LFB72:
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
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	free_secure_stack_mem, .-free_secure_stack_mem
	.globl	insert_keys_into_stack_mem
	.type	insert_keys_into_stack_mem, @function
insert_keys_into_stack_mem:
.LFB73:
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
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -48(%rbp)
	jmp	.L254
.L259:
	cmpl	$0, -52(%rbp)
	je	.L255
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$0, %eax
	call	get_next_stack_keyshare
	movb	%al, (%rbx)
	addq	$1, -32(%rbp)
	addq	$1, -48(%rbp)
	jmp	.L256
.L255:
	movq	$0, -40(%rbp)
	jmp	.L257
.L258:
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	addq	$1, -40(%rbp)
.L257:
	cmpq	$3, -40(%rbp)
	jle	.L258
	addq	$4, -48(%rbp)
	movl	$1, -52(%rbp)
.L256:
	cmpq	$5, -32(%rbp)
	jne	.L254
	movl	$0, -52(%rbp)
	movq	$0, -32(%rbp)
.L254:
	movq	total_stack_bytes_allocated(%rip), %rax
	cmpq	%rax, -48(%rbp)
	jl	.L259
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	insert_keys_into_stack_mem, .-insert_keys_into_stack_mem
	.section	.rodata
.LC79:
	.string	"stack_keyshares"
	.align 8
.LC80:
	.string	"init_mem:stack_keyshares file error\n"
	.text
	.globl	init_stack_mem
	.type	init_stack_mem, @function
init_stack_mem:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, %edi
	call	time
	movl	%eax, %edi
	call	srand
	movl	$0, %eax
	call	allocate_stack_mem
	movq	%rax, -8(%rbp)
	movl	$.LC11, %esi
	movl	$.LC79, %edi
	call	fopen
	movq	%rax, stack_keyshare_input_file(%rip)
	movq	stack_keyshare_input_file(%rip), %rax
	testq	%rax, %rax
	jne	.L261
	movl	$.LC80, %edi
	call	perror
	movl	$46, %edi
	call	exit
.L261:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	insert_keys_into_stack_mem
	movq	-8(%rbp), %rax
	movq	%rax, entire_stack_memory_chunk(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, last_unused_stack_memory(%rip)
	movq	stack_keyshare_input_file(%rip), %rax
	movq	%rax, %rdi
	call	fclose
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	init_stack_mem, .-init_stack_mem
	.globl	insert_data_into_stack_mem
	.type	insert_data_into_stack_mem, @function
insert_data_into_stack_mem:
.LFB75:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L264
.L267:
	addq	$1, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$4, -8(%rbp)
	jg	.L265
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L266
.L265:
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	addq	$4, -24(%rbp)
.L266:
	addq	$9, -40(%rbp)
.L264:
	movq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.L267
	movq	-32(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	insert_data_into_stack_mem, .-insert_data_into_stack_mem
	.globl	get_secure_stack_data
	.type	get_secure_stack_data, @function
get_secure_stack_data:
.LFB76:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movl	%ecx, -108(%rbp)
	movq	%r8, -120(%rbp)
	movq	$0, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -64(%rbp)
	cmpl	$2, -108(%rbp)
	jne	.L270
	movq	$1, -48(%rbp)
	jmp	.L271
.L270:
	movq	-96(%rbp), %rax
	movq	%rax, -48(%rbp)
.L271:
	movq	$0, -72(%rbp)
	cmpl	$0, -108(%rbp)
	je	.L272
	movq	-120(%rbp), %rax
	imulq	-48(%rbp), %rax
	leaq	3(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	imulq	-48(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L273
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, -64(%rbp)
	jmp	.L272
.L273:
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	imulq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movl	$0, %eax
	subq	%rcx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	$4, %eax
	subq	-16(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.L274
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L275
.L274:
	movl	$4, %eax
	subq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.L275:
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy
	movq	-40(%rbp), %rax
	addq	%rax, -56(%rbp)
	addq	$9, -64(%rbp)
	jmp	.L276
.L272:
	jmp	.L276
.L279:
	movq	-56(%rbp), %rax
	movq	-96(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$4, -8(%rbp)
	jg	.L277
	movq	-8(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy
	movq	-96(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.L278
.L277:
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	addq	$4, -56(%rbp)
.L278:
	addq	$9, -72(%rbp)
.L276:
	movq	-56(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.L279
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	get_secure_stack_data, .-get_secure_stack_data
	.globl	set_secure_stack_data
	.type	set_secure_stack_data, @function
set_secure_stack_data:
.LFB77:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movl	%ecx, -108(%rbp)
	movq	%r8, -120(%rbp)
	movq	$0, -56(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpl	$2, -108(%rbp)
	jne	.L281
	movq	$1, -48(%rbp)
	jmp	.L282
.L281:
	movq	-96(%rbp), %rax
	movq	%rax, -48(%rbp)
.L282:
	movq	$0, -72(%rbp)
	cmpl	$0, -108(%rbp)
	je	.L283
	movq	-120(%rbp), %rax
	imulq	-48(%rbp), %rax
	leaq	3(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	imulq	-48(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L284
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, -64(%rbp)
	jmp	.L283
.L284:
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	imulq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movl	$0, %eax
	subq	%rcx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	$4, %eax
	subq	-16(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.L285
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L286
.L285:
	movl	$4, %eax
	subq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.L286:
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-16(%rbp), %rcx
	movq	-64(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy
	movq	-40(%rbp), %rax
	addq	%rax, -56(%rbp)
	addq	$9, -64(%rbp)
	jmp	.L287
.L283:
	jmp	.L287
.L290:
	movq	-56(%rbp), %rax
	movq	-96(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$4, -8(%rbp)
	jg	.L288
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy
	movq	-96(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.L289
.L288:
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	addq	$4, -56(%rbp)
.L289:
	addq	$9, -72(%rbp)
.L287:
	movq	-56(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.L290
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	set_secure_stack_data, .-set_secure_stack_data
	.section	.rodata
	.align 8
.LC81:
	.string	"Error:Attempted to allocate more memory than the secure stack size.\n"
	.text
	.globl	allocate_mem_into_secure_stack
	.type	allocate_mem_into_secure_stack, @function
allocate_mem_into_secure_stack:
.LFB78:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$5, -32(%rbp)
	movq	$4, -24(%rbp)
	movq	last_unused_stack_memory(%rip), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L292
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	jmp	.L296
.L292:
	movq	-56(%rbp), %rax
	cqto
	idivq	-24(%rbp)
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	imulq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jge	.L294
	addq	$1, -48(%rbp)
.L294:
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	last_unused_stack_memory(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	%rcx, %rax
	imulq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, last_unused_stack_memory(%rip)
	movq	entire_stack_memory_chunk(%rip), %rdx
	movq	total_stack_bytes_allocated(%rip), %rax
	addq	%rax, %rdx
	movq	last_unused_stack_memory(%rip), %rax
	cmpq	%rax, %rdx
	ja	.L295
	movq	last_unused_stack_memory(%rip), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	addq	%rcx, %rdx
	imulq	-48(%rbp), %rdx
	negq	%rdx
	addq	%rdx, %rax
	movq	%rax, last_unused_stack_memory(%rip)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$68, %edx
	movl	$1, %esi
	movl	$.LC81, %edi
	call	fwrite
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	jmp	.L296
.L295:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
.L296:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	allocate_mem_into_secure_stack, .-allocate_mem_into_secure_stack
	.globl	free_mem_from_secure_stack
	.type	free_mem_from_secure_stack, @function
free_mem_from_secure_stack:
.LFB79:
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
	movq	-40(%rbp), %rax
	cqto
	idivq	-8(%rbp)
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jge	.L298
	addq	$1, -32(%rbp)
.L298:
	movq	last_unused_stack_memory(%rip), %rax
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	addq	%rcx, %rdx
	imulq	-32(%rbp), %rdx
	negq	%rdx
	addq	%rdx, %rax
	movq	%rax, last_unused_stack_memory(%rip)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	free_mem_from_secure_stack, .-free_mem_from_secure_stack
	.globl	free_chunks_from_secure_stack
	.type	free_chunks_from_secure_stack, @function
free_chunks_from_secure_stack:
.LFB80:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	$5, -24(%rbp)
	movq	$4, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	last_unused_stack_memory(%rip), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	addq	%rcx, %rdx
	imulq	-8(%rbp), %rdx
	negq	%rdx
	addq	%rdx, %rax
	movq	%rax, last_unused_stack_memory(%rip)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	free_chunks_from_secure_stack, .-free_chunks_from_secure_stack
	.globl	init_function_params
	.type	init_function_params, @function
init_function_params:
.LFB81:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$264, %rsp
	.cfi_offset 3, -24
	movq	%rsi, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	%rcx, -168(%rbp)
	movq	%r8, -160(%rbp)
	movq	%r9, -152(%rbp)
	testb	%al, %al
	je	.L301
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm1, -128(%rbp)
	movaps	%xmm2, -112(%rbp)
	movaps	%xmm3, -96(%rbp)
	movaps	%xmm4, -80(%rbp)
	movaps	%xmm5, -64(%rbp)
	movaps	%xmm6, -48(%rbp)
	movaps	%xmm7, -32(%rbp)
.L301:
	movl	%edi, -260(%rbp)
	movq	$0, -248(%rbp)
	movq	$-1, -240(%rbp)
	movl	$8, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	$562, %edx
	movl	$__func__.5653, %esi
	movl	$24, %edi
	call	error_checking_malloc
	movq	%rax, -232(%rbp)
	cmpl	$0, -260(%rbp)
	je	.L302
	movl	$565, %edx
	movl	$__func__.5653, %esi
	movl	$128, %edi
	call	error_checking_malloc
	movq	-232(%rbp), %rdx
	movq	%rax, 16(%rdx)
	jmp	.L303
.L302:
	movq	-232(%rbp), %rax
	movq	$0, 16(%rax)
.L303:
	cmpl	$0, -260(%rbp)
	je	.L304
	movq	-232(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L305
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L306
.L305:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L306:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, (%rcx)
	movq	-248(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	cmpq	$0, -224(%rbp)
	je	.L307
	movq	-232(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-224(%rbp), %rax
	movl	$577, %edx
	movl	$__func__.5653, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 8(%rbx)
	movq	$0, -256(%rbp)
	jmp	.L308
.L311:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdx
	movq	-256(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L309
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L310
.L309:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L310:
	movl	(%rax), %eax
	movb	%al, (%rcx)
	addq	$1, -256(%rbp)
.L308:
	movq	-256(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L311
	jmp	.L312
.L307:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 8(%rax)
.L312:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L313
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L314
.L313:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L314:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-224(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	cmpq	$0, -224(%rbp)
	je	.L315
	movq	-232(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-224(%rbp), %rax
	salq	$2, %rax
	movl	$593, %edx
	movl	$__func__.5653, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 24(%rbx)
	movq	$0, -256(%rbp)
	jmp	.L316
.L319:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	-256(%rbp), %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L317
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L318
.L317:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L318:
	movl	(%rax), %eax
	movl	%eax, (%rcx)
	addq	$1, -256(%rbp)
.L316:
	movq	-256(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L319
	jmp	.L320
.L315:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 24(%rax)
.L320:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L321
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L322
.L321:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L322:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, 32(%rcx)
	movq	-224(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	cmpq	$0, -224(%rbp)
	je	.L323
	movq	-232(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-224(%rbp), %rax
	salq	$3, %rax
	movl	$609, %edx
	movl	$__func__.5653, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 40(%rbx)
	movq	$0, -256(%rbp)
	jmp	.L324
.L327:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rax
	movq	-256(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L325
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L326
.L325:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L326:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -256(%rbp)
.L324:
	movq	-256(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L327
	jmp	.L328
.L323:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 40(%rax)
.L328:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L329
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L330
.L329:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L330:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, 48(%rcx)
	movq	-224(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	cmpq	$0, -224(%rbp)
	je	.L331
	movq	-232(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-224(%rbp), %rax
	salq	$2, %rax
	movl	$625, %edx
	movl	$__func__.5653, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 56(%rbx)
	movq	$0, -256(%rbp)
	jmp	.L332
.L335:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	56(%rax), %rax
	movq	-256(%rbp), %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-212(%rbp), %eax
	cmpl	$176, %eax
	jnb	.L333
	movq	-200(%rbp), %rdx
	movl	-212(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-212(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -212(%rbp)
	jmp	.L334
.L333:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L334:
	movsd	(%rax), %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, (%rcx)
	addq	$1, -256(%rbp)
.L332:
	movq	-256(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L335
	jmp	.L336
.L331:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 56(%rax)
.L336:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L337
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L338
.L337:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L338:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, 64(%rcx)
	movq	-224(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	cmpq	$0, -224(%rbp)
	je	.L339
	movq	-232(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-224(%rbp), %rax
	salq	$3, %rax
	movl	$641, %edx
	movl	$__func__.5653, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 72(%rbx)
	movq	$0, -256(%rbp)
	jmp	.L340
.L343:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	72(%rax), %rax
	movq	-256(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-212(%rbp), %eax
	cmpl	$176, %eax
	jnb	.L341
	movq	-200(%rbp), %rdx
	movl	-212(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-212(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -212(%rbp)
	jmp	.L342
.L341:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L342:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -256(%rbp)
.L340:
	movq	-256(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L343
	jmp	.L344
.L339:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 72(%rax)
.L344:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L345
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L346
.L345:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L346:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, 80(%rcx)
	movq	-224(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	cmpq	$0, -224(%rbp)
	je	.L347
	movq	-232(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-224(%rbp), %rax
	salq	$3, %rax
	movl	$658, %edx
	movl	$__func__.5653, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 88(%rbx)
	movq	$0, -256(%rbp)
	jmp	.L348
.L351:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	88(%rax), %rax
	movq	-256(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L349
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L350
.L349:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L350:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -256(%rbp)
.L348:
	movq	-256(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L351
	movq	-232(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-224(%rbp), %rax
	salq	$3, %rax
	movl	$663, %edx
	movl	$__func__.5653, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 96(%rbx)
	movq	$0, -256(%rbp)
	jmp	.L352
.L355:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movq	-256(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L353
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L354
.L353:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L354:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -256(%rbp)
.L352:
	movq	-256(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L355
	jmp	.L356
.L347:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 88(%rax)
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 96(%rax)
.L356:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L357
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L358
.L357:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L358:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, 104(%rcx)
	cmpq	$0, -224(%rbp)
	je	.L359
	movq	-232(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-224(%rbp), %rax
	salq	$3, %rax
	movl	$680, %edx
	movl	$__func__.5653, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 112(%rbx)
	movq	$0, -256(%rbp)
	jmp	.L360
.L363:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	112(%rax), %rax
	movq	-256(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L361
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L362
.L361:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L362:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	112(%rax), %rax
	movq	-256(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	%rax, -248(%rbp)
	addq	$1, -256(%rbp)
.L360:
	movq	-256(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L363
	movq	-232(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-224(%rbp), %rax
	salq	$3, %rax
	movl	$687, %edx
	movl	$__func__.5653, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 120(%rbx)
	movq	$0, -256(%rbp)
	jmp	.L364
.L367:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	120(%rax), %rax
	movq	-256(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L365
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L366
.L365:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L366:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -256(%rbp)
.L364:
	movq	-256(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L367
	jmp	.L304
.L359:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 112(%rax)
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 120(%rax)
.L304:
	movq	-232(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-232(%rbp), %rax
	movq	-240(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-232(%rbp), %rax
	addq	$264, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	init_function_params, .-init_function_params
	.globl	init_function_params_with_uninitialised_elements
	.type	init_function_params_with_uninitialised_elements, @function
init_function_params_with_uninitialised_elements:
.LFB82:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$280, %rsp
	.cfi_offset 3, -24
	movq	%rsi, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	%rcx, -168(%rbp)
	movq	%r8, -160(%rbp)
	movq	%r9, -152(%rbp)
	testb	%al, %al
	je	.L370
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm1, -128(%rbp)
	movaps	%xmm2, -112(%rbp)
	movaps	%xmm3, -96(%rbp)
	movaps	%xmm4, -80(%rbp)
	movaps	%xmm5, -64(%rbp)
	movaps	%xmm6, -48(%rbp)
	movaps	%xmm7, -32(%rbp)
.L370:
	movl	%edi, -276(%rbp)
	movq	$0, -256(%rbp)
	movq	$-1, -248(%rbp)
	movl	$8, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	$743, %edx
	movl	$__func__.5691, %esi
	movl	$24, %edi
	call	error_checking_malloc
	movq	%rax, -240(%rbp)
	cmpl	$0, -276(%rbp)
	je	.L371
	movl	$746, %edx
	movl	$__func__.5691, %esi
	movl	$128, %edi
	call	error_checking_malloc
	movq	-240(%rbp), %rdx
	movq	%rax, 16(%rdx)
	jmp	.L372
.L371:
	movq	-240(%rbp), %rax
	movq	$0, 16(%rax)
.L372:
	cmpl	$0, -276(%rbp)
	je	.L373
	movq	-240(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L374
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L375
.L374:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L375:
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, (%rcx)
	movq	-256(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	cmpq	$0, -232(%rbp)
	je	.L376
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L377
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L378
.L377:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L378:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-240(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-232(%rbp), %rax
	movl	$759, %edx
	movl	$__func__.5691, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 8(%rbx)
	movq	$0, -264(%rbp)
	jmp	.L379
.L382:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdx
	movq	-264(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L380
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L381
.L380:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L381:
	movl	(%rax), %eax
	movb	%al, (%rcx)
	addq	$1, -264(%rbp)
.L379:
	movq	-264(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L382
	jmp	.L383
.L376:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 8(%rax)
.L383:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L384
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L385
.L384:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L385:
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-232(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	cmpq	$0, -232(%rbp)
	je	.L386
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L387
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L388
.L387:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L388:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-240(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-232(%rbp), %rax
	salq	$2, %rax
	movl	$776, %edx
	movl	$__func__.5691, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 24(%rbx)
	movq	$0, -264(%rbp)
	jmp	.L389
.L392:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	-264(%rbp), %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L390
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L391
.L390:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L391:
	movl	(%rax), %eax
	movl	%eax, (%rcx)
	addq	$1, -264(%rbp)
.L389:
	movq	-264(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L392
	jmp	.L393
.L386:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 24(%rax)
.L393:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L394
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L395
.L394:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L395:
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, 32(%rcx)
	movq	-232(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	cmpq	$0, -232(%rbp)
	je	.L396
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L397
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L398
.L397:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L398:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-240(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-232(%rbp), %rax
	salq	$3, %rax
	movl	$793, %edx
	movl	$__func__.5691, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 40(%rbx)
	movq	$0, -264(%rbp)
	jmp	.L399
.L402:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rax
	movq	-264(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L400
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L401
.L400:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L401:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -264(%rbp)
.L399:
	movq	-264(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L402
	jmp	.L403
.L396:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 40(%rax)
.L403:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L404
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L405
.L404:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L405:
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, 48(%rcx)
	movq	-232(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	cmpq	$0, -232(%rbp)
	je	.L406
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L407
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L408
.L407:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L408:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-240(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-232(%rbp), %rax
	salq	$2, %rax
	movl	$810, %edx
	movl	$__func__.5691, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 56(%rbx)
	movq	$0, -264(%rbp)
	jmp	.L409
.L412:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	56(%rax), %rax
	movq	-264(%rbp), %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-212(%rbp), %eax
	cmpl	$176, %eax
	jnb	.L410
	movq	-200(%rbp), %rdx
	movl	-212(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-212(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -212(%rbp)
	jmp	.L411
.L410:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L411:
	movsd	(%rax), %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, (%rcx)
	addq	$1, -264(%rbp)
.L409:
	movq	-264(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L412
	jmp	.L413
.L406:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 56(%rax)
.L413:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L414
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L415
.L414:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L415:
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, 64(%rcx)
	movq	-232(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	cmpq	$0, -232(%rbp)
	je	.L416
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L417
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L418
.L417:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L418:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-240(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-232(%rbp), %rax
	salq	$3, %rax
	movl	$827, %edx
	movl	$__func__.5691, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 72(%rbx)
	movq	$0, -264(%rbp)
	jmp	.L419
.L422:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	72(%rax), %rax
	movq	-264(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-212(%rbp), %eax
	cmpl	$176, %eax
	jnb	.L420
	movq	-200(%rbp), %rdx
	movl	-212(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-212(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -212(%rbp)
	jmp	.L421
.L420:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L421:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -264(%rbp)
.L419:
	movq	-264(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L422
	jmp	.L423
.L416:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 72(%rax)
.L423:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L424
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L425
.L424:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L425:
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, 80(%rcx)
	movq	-232(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	cmpq	$0, -232(%rbp)
	je	.L426
	movq	-240(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-232(%rbp), %rax
	salq	$3, %rax
	movl	$843, %edx
	movl	$__func__.5691, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 88(%rbx)
	movq	$0, -264(%rbp)
	jmp	.L427
.L430:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	88(%rax), %rax
	movq	-264(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L428
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L429
.L428:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L429:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -264(%rbp)
.L427:
	movq	-264(%rbp), %rax
	cmpq	-232(%rbp), %rax
	jl	.L430
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L431
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L432
.L431:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L432:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-240(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-232(%rbp), %rax
	salq	$3, %rax
	movl	$850, %edx
	movl	$__func__.5691, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 96(%rbx)
	movq	$0, -264(%rbp)
	jmp	.L433
.L436:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movq	-264(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L434
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L435
.L434:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L435:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -264(%rbp)
.L433:
	movq	-264(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L436
	movq	-224(%rbp), %rax
	movq	%rax, -264(%rbp)
	jmp	.L437
.L438:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movq	-264(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	addq	$1, -264(%rbp)
.L437:
	movq	-264(%rbp), %rax
	cmpq	-232(%rbp), %rax
	jl	.L438
	jmp	.L439
.L426:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 88(%rax)
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 96(%rax)
.L439:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L440
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L441
.L440:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L441:
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, 104(%rcx)
	cmpq	$0, -232(%rbp)
	je	.L442
	movq	-240(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-232(%rbp), %rax
	salq	$3, %rax
	movl	$871, %edx
	movl	$__func__.5691, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 112(%rbx)
	movq	$0, -264(%rbp)
	jmp	.L443
.L446:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	112(%rax), %rax
	movq	-264(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L444
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L445
.L444:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L445:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	112(%rax), %rax
	movq	-264(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	%rax, -256(%rbp)
	addq	$1, -264(%rbp)
.L443:
	movq	-264(%rbp), %rax
	cmpq	-232(%rbp), %rax
	jl	.L446
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L447
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L448
.L447:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L448:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-240(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-232(%rbp), %rax
	salq	$3, %rax
	movl	$879, %edx
	movl	$__func__.5691, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 120(%rbx)
	movq	$0, -264(%rbp)
	jmp	.L449
.L452:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	120(%rax), %rax
	movq	-264(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L450
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L451
.L450:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L451:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -264(%rbp)
.L449:
	movq	-264(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L452
	movq	-224(%rbp), %rax
	movq	%rax, -264(%rbp)
	jmp	.L453
.L454:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	120(%rax), %rax
	movq	-264(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	addq	$1, -264(%rbp)
.L453:
	movq	-264(%rbp), %rax
	cmpq	-232(%rbp), %rax
	jl	.L454
	jmp	.L373
.L442:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 112(%rax)
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 120(%rax)
.L373:
	movq	-240(%rbp), %rax
	movq	-256(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-240(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-240(%rbp), %rax
	addq	$280, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	init_function_params_with_uninitialised_elements, .-init_function_params_with_uninitialised_elements
	.section	.rodata
.LC82:
	.string	"No parameters? Strange..."
	.text
	.globl	put_fun_params_into_secure_stack
	.type	put_fun_params_into_secure_stack, @function
put_fun_params_into_secure_stack:
.LFB83:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movl	$923, %edx
	movl	$__func__.5734, %esi
	movl	$24, %edi
	call	error_checking_malloc
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L457
	movl	$931, %edx
	movl	$__func__.5734, %esi
	movl	$128, %edi
	call	error_checking_malloc
	movq	-64(%rbp), %rdx
	movq	%rax, 16(%rdx)
	jmp	.L458
.L457:
	movq	-64(%rbp), %rax
	movq	$0, 16(%rax)
	movl	$.LC82, %edi
	call	puts
.L458:
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L459
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	allocate_mem_into_secure_stack
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	cmpq	$0, -48(%rbp)
	je	.L460
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_stack_mem
.L460:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, 16(%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	allocate_mem_into_secure_stack
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -48(%rbp)
	je	.L461
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rcx
	movq	-56(%rbp), %rax
	salq	$2, %rax
	movq	-48(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_stack_mem
.L461:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	allocate_mem_into_secure_stack
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 40(%rax)
	cmpq	$0, -48(%rbp)
	je	.L462
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rcx
	movq	-56(%rbp), %rax
	salq	$3, %rax
	movq	-48(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_stack_mem
.L462:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	%rdx, 48(%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	allocate_mem_into_secure_stack
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 56(%rax)
	cmpq	$0, -48(%rbp)
	je	.L463
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	56(%rax), %rcx
	movq	-56(%rbp), %rax
	salq	$2, %rax
	movq	-48(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_stack_mem
.L463:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	64(%rdx), %rdx
	movq	%rdx, 64(%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	allocate_mem_into_secure_stack
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 72(%rax)
	cmpq	$0, -48(%rbp)
	je	.L464
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	72(%rax), %rcx
	movq	-56(%rbp), %rax
	salq	$3, %rax
	movq	-48(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_stack_mem
.L464:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	80(%rdx), %rdx
	movq	%rdx, 80(%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	allocate_mem_into_secure_stack
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 96(%rax)
	cmpq	$0, -48(%rbp)
	je	.L465
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rcx
	movq	-56(%rbp), %rax
	salq	$3, %rax
	movq	-48(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_stack_mem
.L465:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-56(%rbp), %rax
	salq	$3, %rax
	movl	$1013, %edx
	movl	$__func__.5734, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 88(%rbx)
	movq	$0, -72(%rbp)
	jmp	.L466
.L467:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	88(%rax), %rax
	movq	-72(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	88(%rax), %rax
	movq	-72(%rbp), %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addq	$1, -72(%rbp)
.L466:
	movq	-72(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.L467
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	104(%rdx), %rdx
	movq	%rdx, 104(%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	104(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-56(%rbp), %rax
	salq	$3, %rax
	movl	$1020, %edx
	movl	$__func__.5734, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 112(%rbx)
	movq	$0, -72(%rbp)
	jmp	.L468
.L469:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	112(%rax), %rax
	movq	-72(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	112(%rax), %rax
	movq	-72(%rbp), %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addq	$1, -72(%rbp)
.L468:
	movq	-72(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.L469
	movq	-64(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-56(%rbp), %rax
	salq	$3, %rax
	movl	$1023, %edx
	movl	$__func__.5734, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 120(%rbx)
	movq	$0, -72(%rbp)
	jmp	.L470
.L472:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	112(%rax), %rax
	movq	-72(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	allocate_mem_into_secure_stack
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 8(%rax)
	cmpq	$0, -48(%rbp)
	je	.L471
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	120(%rax), %rax
	movq	-72(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L471
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	120(%rax), %rax
	movq	-72(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	112(%rax), %rax
	movq	-72(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_stack_mem
.L471:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	120(%rax), %rax
	movq	-72(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rdx)
	addq	$1, -72(%rbp)
.L470:
	movq	-72(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.L472
.L459:
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	put_fun_params_into_secure_stack, .-put_fun_params_into_secure_stack
	.globl	free_fun_params
	.type	free_fun_params, @function
free_fun_params:
.LFB84:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L474
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L476
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free
.L476:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free
.L474:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	free_fun_params, .-free_fun_params
	.globl	free_fun_params_that_point_to_stack
	.type	free_fun_params_that_point_to_stack, @function
free_fun_params_that_point_to_stack:
.LFB85:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	free_fun_params_that_point_to_stack, .-free_fun_params_that_point_to_stack
	.globl	put_fun_params_into_secure_stack_and_free
	.type	put_fun_params_into_secure_stack_and_free, @function
put_fun_params_into_secure_stack_and_free:
.LFB86:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	put_fun_params_into_secure_stack
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_fun_params
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	put_fun_params_into_secure_stack_and_free, .-put_fun_params_into_secure_stack_and_free
	.globl	get_stack_char
	.type	get_stack_char, @function
get_stack_char:
.LFB87:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-1(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	call	get_secure_stack_data
	movzbl	-1(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	get_stack_char, .-get_stack_char
	.globl	get_stack_int
	.type	get_stack_int, @function
get_stack_int:
.LFB88:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_secure_stack_data
	movl	-16(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	get_stack_int, .-get_stack_int
	.globl	get_stack_long_int
	.type	get_stack_long_int, @function
get_stack_long_int:
.LFB89:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	get_secure_stack_data
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	get_stack_long_int, .-get_stack_long_int
	.globl	get_stack_pointer
	.type	get_stack_pointer, @function
get_stack_pointer:
.LFB90:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	get_secure_stack_data
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	get_stack_pointer, .-get_stack_pointer
	.globl	get_stack_float
	.type	get_stack_float, @function
get_stack_float:
.LFB91:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_secure_stack_data
	movl	-16(%rbp), %eax
	movl	%eax, -28(%rbp)
	movss	-28(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	get_stack_float, .-get_stack_float
	.globl	get_stack_double
	.type	get_stack_double, @function
get_stack_double:
.LFB92:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	get_secure_stack_data
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movsd	-32(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	get_stack_double, .-get_stack_double
	.globl	get_stack_array_element
	.type	get_stack_array_element, @function
get_stack_array_element:
.LFB93:
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
	call	get_secure_stack_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	get_stack_array_element, .-get_stack_array_element
	.globl	get_stack_char_array_element
	.type	get_stack_char_array_element, @function
get_stack_char_array_element:
.LFB94:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-1(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	call	get_secure_stack_data
	movzbl	-1(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	get_stack_char_array_element, .-get_stack_char_array_element
	.globl	get_stack_int_array_element
	.type	get_stack_int_array_element, @function
get_stack_int_array_element:
.LFB95:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_secure_stack_data
	movl	-16(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	get_stack_int_array_element, .-get_stack_int_array_element
	.globl	get_stack_long_int_array_element
	.type	get_stack_long_int_array_element, @function
get_stack_long_int_array_element:
.LFB96:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	get_secure_stack_data
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	get_stack_long_int_array_element, .-get_stack_long_int_array_element
	.globl	get_stack_pointer_array_element
	.type	get_stack_pointer_array_element, @function
get_stack_pointer_array_element:
.LFB97:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	get_secure_stack_data
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE97:
	.size	get_stack_pointer_array_element, .-get_stack_pointer_array_element
	.globl	get_stack_float_array_element
	.type	get_stack_float_array_element, @function
get_stack_float_array_element:
.LFB98:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_secure_stack_data
	movl	-16(%rbp), %eax
	movl	%eax, -36(%rbp)
	movss	-36(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE98:
	.size	get_stack_float_array_element, .-get_stack_float_array_element
	.globl	get_stack_double_array_element
	.type	get_stack_double_array_element, @function
get_stack_double_array_element:
.LFB99:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	get_secure_stack_data
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE99:
	.size	get_stack_double_array_element, .-get_stack_double_array_element
	.globl	get_arbitrary_block_in_stack
	.type	get_arbitrary_block_in_stack, @function
get_arbitrary_block_in_stack:
.LFB100:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	get_secure_stack_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE100:
	.size	get_arbitrary_block_in_stack, .-get_arbitrary_block_in_stack
	.globl	get_arbitrary_block_in_stack_with_offset
	.type	get_arbitrary_block_in_stack_with_offset, @function
get_arbitrary_block_in_stack_with_offset:
.LFB101:
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
	movl	$2, %ecx
	movq	%rax, %rdi
	call	get_secure_stack_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE101:
	.size	get_arbitrary_block_in_stack_with_offset, .-get_arbitrary_block_in_stack_with_offset
	.globl	set_stack_char
	.type	set_stack_char, @function
set_stack_char:
.LFB102:
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
	call	insert_data_into_stack_mem
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE102:
	.size	set_stack_char, .-set_stack_char
	.globl	set_stack_int
	.type	set_stack_int, @function
set_stack_int:
.LFB103:
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
	call	insert_data_into_stack_mem
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	set_stack_int, .-set_stack_int
	.globl	set_stack_long_int
	.type	set_stack_long_int, @function
set_stack_long_int:
.LFB104:
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
	call	insert_data_into_stack_mem
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE104:
	.size	set_stack_long_int, .-set_stack_long_int
	.globl	set_stack_pointer
	.type	set_stack_pointer, @function
set_stack_pointer:
.LFB105:
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
	call	insert_data_into_stack_mem
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	set_stack_pointer, .-set_stack_pointer
	.globl	set_stack_float
	.type	set_stack_float, @function
set_stack_float:
.LFB106:
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
	call	insert_data_into_stack_mem
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE106:
	.size	set_stack_float, .-set_stack_float
	.globl	set_stack_double
	.type	set_stack_double, @function
set_stack_double:
.LFB107:
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
	call	insert_data_into_stack_mem
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE107:
	.size	set_stack_double, .-set_stack_double
	.globl	set_stack_array_element
	.type	set_stack_array_element, @function
set_stack_array_element:
.LFB108:
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
	call	set_secure_stack_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE108:
	.size	set_stack_array_element, .-set_stack_array_element
	.globl	set_stack_char_array_element
	.type	set_stack_char_array_element, @function
set_stack_char_array_element:
.LFB109:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	movzbl	-36(%rbp), %eax
	movb	%al, -1(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-1(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	call	set_secure_stack_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE109:
	.size	set_stack_char_array_element, .-set_stack_char_array_element
	.globl	set_stack_int_array_element
	.type	set_stack_int_array_element, @function
set_stack_int_array_element:
.LFB110:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-4(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	set_secure_stack_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE110:
	.size	set_stack_int_array_element, .-set_stack_int_array_element
	.globl	set_stack_long_int_array_element
	.type	set_stack_long_int_array_element, @function
set_stack_long_int_array_element:
.LFB111:
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
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	set_secure_stack_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.size	set_stack_long_int_array_element, .-set_stack_long_int_array_element
	.globl	set_stack_pointer_array_element
	.type	set_stack_pointer_array_element, @function
set_stack_pointer_array_element:
.LFB112:
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
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	set_secure_stack_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE112:
	.size	set_stack_pointer_array_element, .-set_stack_pointer_array_element
	.globl	set_stack_float_array_element
	.type	set_stack_float_array_element, @function
set_stack_float_array_element:
.LFB113:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movss	%xmm0, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-4(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	set_secure_stack_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE113:
	.size	set_stack_float_array_element, .-set_stack_float_array_element
	.globl	set_stack_double_array_element
	.type	set_stack_double_array_element, @function
set_stack_double_array_element:
.LFB114:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	set_secure_stack_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE114:
	.size	set_stack_double_array_element, .-set_stack_double_array_element
	.globl	set_arbitrary_block_in_stack
	.type	set_arbitrary_block_in_stack, @function
set_arbitrary_block_in_stack:
.LFB115:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	set_secure_stack_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE115:
	.size	set_arbitrary_block_in_stack, .-set_arbitrary_block_in_stack
	.globl	set_arbitrary_block_in_stack_with_offset
	.type	set_arbitrary_block_in_stack_with_offset, @function
set_arbitrary_block_in_stack_with_offset:
.LFB116:
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
	movl	$2, %ecx
	movq	%rax, %rdi
	call	set_secure_stack_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE116:
	.size	set_arbitrary_block_in_stack_with_offset, .-set_arbitrary_block_in_stack_with_offset
	.section	.rodata
.LC83:
	.string	"Printing stack memory:"
	.text
	.globl	print_stack_mem
	.type	print_stack_mem, @function
print_stack_mem:
.LFB117:
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
	movl	$.LC83, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L523
.L524:
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
.L523:
	movq	total_stack_bytes_allocated(%rip), %rax
	cmpq	%rax, -16(%rbp)
	jl	.L524
	movl	$10, %edi
	call	putchar
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE117:
	.size	print_stack_mem, .-print_stack_mem
	.section	.rodata
.LC84:
	.string	"Printing fun params:"
	.align 8
.LC85:
	.string	"Total size of all params in bytes: %ld\n"
	.align 8
.LC86:
	.string	"Total amount of chunks needed in secure stack: %ld\n"
.LC87:
	.string	"Number of char elements: %ld\n"
.LC88:
	.string	"Char elements:"
.LC89:
	.string	"%c "
.LC90:
	.string	"Number of int elements: %ld\n"
.LC91:
	.string	"Int elements:"
	.align 8
.LC92:
	.string	"Number of long int elements: %ld\n"
.LC93:
	.string	"Long int elements:"
.LC94:
	.string	"%ld "
	.align 8
.LC95:
	.string	"Number of float elements: %ld\n"
.LC96:
	.string	"Float elements:"
.LC97:
	.string	"%f "
	.align 8
.LC98:
	.string	"Number of double elements: %ld\n"
.LC99:
	.string	"Double elements:"
.LC100:
	.string	"%lf "
	.align 8
.LC101:
	.string	"Number of pointer elements: %ld\n"
.LC102:
	.string	"Pointer element sizes:"
.LC103:
	.string	"pointer elements:"
	.align 8
.LC104:
	.string	"Number of arb pointer elements: %ld\n"
.LC105:
	.string	"Arb pointer element sizes:"
.LC106:
	.string	"Arb pointers:"
	.text
	.globl	print_fun_params
	.type	print_fun_params, @function
print_fun_params:
.LFB118:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$.LC84, %edi
	call	puts
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC85, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC86, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC87, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L526
	movl	$.LC88, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L527
.L528:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC89, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L527:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L528
	movl	$10, %edi
	call	putchar
.L526:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC90, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L529
	movl	$.LC91, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L530
.L531:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC22, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L530:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L531
	movl	$10, %edi
	call	putchar
.L529:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC92, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L532
	movl	$.LC93, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L533
.L534:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC94, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L533:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L534
	movl	$10, %edi
	call	putchar
.L532:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC95, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L535
	movl	$.LC96, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L536
.L537:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	movl	$.LC97, %edi
	movl	$1, %eax
	call	printf
	addq	$1, -16(%rbp)
.L536:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L537
	movl	$10, %edi
	call	putchar
.L535:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC98, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L538
	movl	$.LC99, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L539
.L540:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	72(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movsd	-32(%rbp), %xmm0
	movl	$.LC100, %edi
	movl	$1, %eax
	call	printf
	addq	$1, -16(%rbp)
.L539:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L540
	movl	$10, %edi
	call	putchar
.L538:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC101, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L541
	movl	$.LC102, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L542
.L543:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	88(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC94, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L542:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L543
	movl	$10, %edi
	call	putchar
	movl	$.LC103, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L544
.L545:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC94, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L544:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L545
	movl	$10, %edi
	call	putchar
.L541:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	104(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC104, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L525
	movl	$.LC105, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L547
.L548:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	112(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC94, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L547:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L548
	movl	$10, %edi
	call	putchar
	movl	$.LC106, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L549
.L550:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	120(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC94, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L549:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L550
	movl	$10, %edi
	call	putchar
.L525:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE118:
	.size	print_fun_params, .-print_fun_params
	.section	.rodata
	.align 8
.LC107:
	.string	"Printing fun params that point in stack:"
	.text
	.globl	print_fun_params_that_point_in_stack
	.type	print_fun_params_that_point_in_stack, @function
print_fun_params_that_point_in_stack:
.LFB119:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$.LC107, %edi
	call	puts
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC85, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC86, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC87, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L552
	movl	$.LC88, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L553
.L554:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_stack_char_array_element
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC89, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L553:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L554
	movl	$10, %edi
	call	putchar
.L552:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC90, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L555
	movl	$.LC91, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L556
.L557:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %esi
	movl	$.LC22, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L556:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L557
	movl	$10, %edi
	call	putchar
.L555:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC92, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L558
	movl	$.LC93, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L559
.L560:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_stack_long_int_array_element
	movq	%rax, %rsi
	movl	$.LC94, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L559:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L560
	movl	$10, %edi
	call	putchar
.L558:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC95, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L561
	movl	$.LC96, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L562
.L563:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_stack_float_array_element
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	movl	$.LC97, %edi
	movl	$1, %eax
	call	printf
	addq	$1, -16(%rbp)
.L562:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L563
	movl	$10, %edi
	call	putchar
.L561:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC98, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L564
	movl	$.LC99, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L565
.L566:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	72(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_stack_double_array_element
	movsd	%xmm0, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movsd	-32(%rbp), %xmm0
	movl	$.LC100, %edi
	movl	$1, %eax
	call	printf
	addq	$1, -16(%rbp)
.L565:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L566
	movl	$10, %edi
	call	putchar
.L564:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC101, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L567
	movl	$.LC102, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L568
.L569:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	88(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC94, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L568:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L569
	movl	$10, %edi
	call	putchar
	movl	$.LC103, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L570
.L571:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_stack_pointer_array_element
	movq	%rax, %rsi
	movl	$.LC94, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L570:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L571
	movl	$10, %edi
	call	putchar
.L567:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	104(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC104, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L551
	movl	$.LC105, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L573
.L574:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	112(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC94, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L573:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L574
	movl	$10, %edi
	call	putchar
	movl	$.LC106, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L575
.L576:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	120(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC94, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L575:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L576
	movl	$10, %edi
	call	putchar
.L551:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE119:
	.size	print_fun_params_that_point_in_stack, .-print_fun_params_that_point_in_stack
	.globl	tower_of_Hanoi_init_secure_template
	.type	tower_of_Hanoi_init_secure_template, @function
tower_of_Hanoi_init_secure_template:
.LFB120:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movl	%edi, -84(%rbp)
	movl	%ecx, %eax
	movb	%sil, -88(%rbp)
	movb	%dl, -92(%rbp)
	movb	%al, -96(%rbp)
	movq	$4, -56(%rbp)
	movzbl	-88(%rbp), %eax
	movb	%al, -80(%rbp)
	movzbl	-92(%rbp), %eax
	movb	%al, -79(%rbp)
	movzbl	-96(%rbp), %eax
	movb	%al, -78(%rbp)
	movl	$1556, %edx
	movl	$__func__.5988, %esi
	movl	$24, %edi
	call	error_checking_malloc
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	$7, (%rax)
	movq	-56(%rbp), %rbx
	movl	$3, %eax
	movl	$0, %edx
	divq	%rbx
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	imulq	-56(%rbp), %rax
	cmpq	$2, %rax
	ja	.L578
	addq	$1, -72(%rbp)
.L578:
	movq	-56(%rbp), %rcx
	movl	$4, %eax
	movl	$0, %edx
	divq	%rcx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	imulq	-56(%rbp), %rax
	cmpq	$3, %rax
	ja	.L579
	addq	$1, -64(%rbp)
.L579:
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$1566, %edx
	movl	$__func__.5988, %esi
	movl	$128, %edi
	call	error_checking_malloc
	movq	-48(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	$128, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	$3, (%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	$1, 16(%rax)
	movl	$3, %edi
	call	allocate_mem_into_secure_stack
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	cmpq	$0, -40(%rbp)
	je	.L580
	movq	-40(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$3, %edi
	call	insert_data_into_stack_mem
.L580:
	movl	$4, %edi
	call	allocate_mem_into_secure_stack
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -40(%rbp)
	je	.L581
	movq	-40(%rbp), %rdx
	leaq	-84(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	insert_data_into_stack_mem
.L581:
	movq	-48(%rbp), %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE120:
	.size	tower_of_Hanoi_init_secure_template, .-tower_of_Hanoi_init_secure_template
	.section	.rodata
.LC108:
	.string	"Allocating double array"
.LC109:
	.string	"Initializing fun params"
	.align 8
.LC112:
	.string	"Inserting fun params into secure stack"
.LC113:
	.string	"Printing chars"
.LC114:
	.string	"Printing ints"
.LC115:
	.string	"Printing doubles"
.LC116:
	.string	"Changing pointer"
.LC117:
	.string	"Printing array of doubles"
.LC118:
	.string	"i=%d, %lf "
	.align 8
.LC119:
	.string	"Fetching double array using arbitrary block"
	.align 8
.LC120:
	.string	"Fetching double array elements (one by one), using arbitrary blocks"
	.text
	.globl	stack_fun_params_test
	.type	stack_fun_params_test, @function
stack_fun_params_test:
.LFB121:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movl	$.LC108, %edi
	call	puts
	movl	$9, %edx
	movl	$__func__.5994, %esi
	movl	$80, %edi
	call	error_checking_malloc
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L584
.L585:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	-20(%rbp), %edx
	addl	$100, %edx
	cvtsi2sd	%edx, %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -20(%rbp)
.L584:
	cmpl	$9, -20(%rbp)
	jle	.L585
	movl	$.LC109, %edi
	call	puts
	movabsq	$4633156929650876744, %rdx
	movabsq	$4631166901565532406, %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, 96(%rsp)
	movq	$80, 88(%rsp)
	movq	$1, 80(%rsp)
	movl	$424242, 72(%rsp)
	movq	$10, 64(%rsp)
	movq	$1, 56(%rsp)
	movq	$2, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$41, 24(%rsp)
	movl	$42, 16(%rsp)
	movq	$2, 8(%rsp)
	movl	$103, (%rsp)
	movq	%rdx, -40(%rbp)
	movsd	-40(%rbp), %xmm1
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	movl	$102, %r9d
	movl	$101, %r8d
	movl	$100, %ecx
	movl	$99, %edx
	movl	$5, %esi
	movl	$1, %edi
	movl	$2, %eax
	call	init_function_params
	movq	%rax, -8(%rbp)
	movl	$.LC112, %edi
	call	puts
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	put_fun_params_into_secure_stack_and_free
	movq	%rax, -8(%rbp)
	movl	$.LC113, %edi
	call	puts
	movl	$0, -20(%rbp)
	jmp	.L586
.L587:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_stack_char_array_element
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC89, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -20(%rbp)
.L586:
	cmpl	$4, -20(%rbp)
	jle	.L587
	movl	$10, %edi
	call	putchar
	movl	$.LC114, %edi
	call	puts
	movl	$0, -20(%rbp)
	jmp	.L588
.L589:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %esi
	movl	$.LC22, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -20(%rbp)
.L588:
	cmpl	$1, -20(%rbp)
	jle	.L589
	movl	$10, %edi
	call	putchar
	movl	$.LC115, %edi
	call	puts
	movl	$0, -20(%rbp)
	jmp	.L590
.L591:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	72(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_stack_double_array_element
	movsd	%xmm0, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	movl	$.LC100, %edi
	movl	$1, %eax
	call	printf
	addl	$1, -20(%rbp)
.L590:
	cmpl	$1, -20(%rbp)
	jle	.L591
	movl	$10, %edi
	call	putchar
	movl	$.LC116, %edi
	call	puts
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_stack_pointer_array_element
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_pointer_array_element
	movl	$45, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
	movl	$.LC114, %edi
	call	puts
	movl	$0, -20(%rbp)
	jmp	.L592
.L593:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %esi
	movl	$.LC22, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -20(%rbp)
.L592:
	cmpl	$1, -20(%rbp)
	jle	.L593
	movl	$10, %edi
	call	putchar
	movl	$.LC117, %edi
	call	puts
	movl	$0, -20(%rbp)
	jmp	.L594
.L595:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	120(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_stack_double_array_element
	movsd	%xmm0, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %edx
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	movl	%edx, %esi
	movl	$.LC118, %edi
	movl	$1, %eax
	call	printf
	addl	$1, -20(%rbp)
.L594:
	cmpl	$9, -20(%rbp)
	jle	.L595
	movl	$.LC119, %edi
	call	puts
	movl	$57, %edx
	movl	$__func__.5994, %esi
	movl	$80, %edi
	call	error_checking_malloc
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	120(%rax), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movl	$80, %edi
	call	get_arbitrary_block_in_stack
	movl	$0, -20(%rbp)
	jmp	.L596
.L597:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	movl	$.LC69, %edi
	movl	$1, %eax
	call	printf
	addl	$1, -20(%rbp)
.L596:
	cmpl	$9, -20(%rbp)
	jle	.L597
	movl	$10, %edi
	call	putchar
	movl	$.LC120, %edi
	call	puts
	movl	$66, %edx
	movl	$__func__.5994, %esi
	movl	$80, %edi
	call	error_checking_malloc
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L598
.L599:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	120(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	get_arbitrary_block_in_stack_with_offset
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	movl	$.LC69, %edi
	movl	$1, %eax
	call	printf
	addl	$1, -20(%rbp)
.L598:
	cmpl	$9, -20(%rbp)
	jle	.L599
	movl	$10, %edi
	call	putchar
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE121:
	.size	stack_fun_params_test, .-stack_fun_params_test
	.globl	towerOfHanoi
	.type	towerOfHanoi, @function
towerOfHanoi:
.LFB122:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%ecx, %eax
	movb	%sil, -8(%rbp)
	movb	%dl, -12(%rbp)
	movb	%al, -16(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L601
	jmp	.L600
.L601:
	movsbl	-12(%rbp), %ecx
	movsbl	-16(%rbp), %edx
	movsbl	-8(%rbp), %eax
	movl	-4(%rbp), %esi
	leal	-1(%rsi), %edi
	movl	%eax, %esi
	call	towerOfHanoi
	movsbl	-8(%rbp), %ecx
	movsbl	-12(%rbp), %edx
	movsbl	-16(%rbp), %eax
	movl	-4(%rbp), %esi
	leal	-1(%rsi), %edi
	movl	%eax, %esi
	call	towerOfHanoi
.L600:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE122:
	.size	towerOfHanoi, .-towerOfHanoi
	.globl	towerOfHanoi_secure
	.type	towerOfHanoi_secure, @function
towerOfHanoi_secure:
.LFB123:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -52(%rbp)
	movl	%ecx, %eax
	movb	%sil, -56(%rbp)
	movb	%dl, -60(%rbp)
	movb	%al, -64(%rbp)
	movsbl	-64(%rbp), %esi
	movsbl	-60(%rbp), %edx
	movsbl	-56(%rbp), %eax
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 8(%rsp)
	movl	-52(%rbp), %ecx
	movl	%ecx, (%rsp)
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	$3, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	init_function_params
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	put_fun_params_into_secure_stack_and_free
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	cmpl	$1, %eax
	jne	.L604
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free_chunks_from_secure_stack
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free_fun_params_that_point_to_stack
	jmp	.L603
.L604:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	get_stack_char_array_element
	movsbl	%al, %r13d
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_char_array_element
	movsbl	%al, %r12d
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_char_array_element
	movsbl	%al, %ebx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	subl	$1, %eax
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	towerOfHanoi_secure
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_char_array_element
	movsbl	%al, %r13d
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	get_stack_char_array_element
	movsbl	%al, %r12d
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_char_array_element
	movsbl	%al, %ebx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	subl	$1, %eax
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	towerOfHanoi_secure
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free_chunks_from_secure_stack
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free_fun_params_that_point_to_stack
.L603:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE123:
	.size	towerOfHanoi_secure, .-towerOfHanoi_secure
	.globl	towerOfHanoi_secure_using_template
	.type	towerOfHanoi_secure_using_template, @function
towerOfHanoi_secure_using_template:
.LFB124:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -52(%rbp)
	movl	%ecx, %eax
	movb	%sil, -56(%rbp)
	movb	%dl, -60(%rbp)
	movb	%al, -64(%rbp)
	movsbl	-64(%rbp), %ecx
	movsbl	-60(%rbp), %edx
	movsbl	-56(%rbp), %esi
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	tower_of_Hanoi_init_secure_template
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	cmpl	$1, %eax
	jne	.L607
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free_chunks_from_secure_stack
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free_fun_params_that_point_to_stack
	jmp	.L606
.L607:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	get_stack_char_array_element
	movsbl	%al, %r13d
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_char_array_element
	movsbl	%al, %r12d
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_char_array_element
	movsbl	%al, %ebx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	subl	$1, %eax
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	towerOfHanoi_secure_using_template
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_char_array_element
	movsbl	%al, %r13d
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	get_stack_char_array_element
	movsbl	%al, %r12d
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_char_array_element
	movsbl	%al, %ebx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	subl	$1, %eax
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	towerOfHanoi_secure_using_template
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free_chunks_from_secure_stack
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free_fun_params_that_point_to_stack
.L606:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE124:
	.size	towerOfHanoi_secure_using_template, .-towerOfHanoi_secure_using_template
	.globl	towerOfHanoi_secure_using_changed_accesses
	.type	towerOfHanoi_secure_using_changed_accesses, @function
towerOfHanoi_secure_using_changed_accesses:
.LFB125:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -68(%rbp)
	movl	%ecx, %eax
	movb	%sil, -72(%rbp)
	movb	%dl, -76(%rbp)
	movb	%al, -80(%rbp)
	movsbl	-80(%rbp), %ecx
	movsbl	-76(%rbp), %edx
	movsbl	-72(%rbp), %esi
	movl	-68(%rbp), %eax
	movl	%eax, %edi
	call	tower_of_Hanoi_init_secure_template
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	cmpl	$1, %eax
	jne	.L610
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free_chunks_from_secure_stack
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free_fun_params_that_point_to_stack
	jmp	.L609
.L610:
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	get_stack_char_array_element
	movsbl	%al, %r13d
	movq	-40(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_char_array_element
	movsbl	%al, %r12d
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_char_array_element
	movsbl	%al, %ebx
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	subl	$1, %eax
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	towerOfHanoi_secure_using_template
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_char_array_element
	movsbl	%al, %r13d
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	get_stack_char_array_element
	movsbl	%al, %r12d
	movq	-40(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_char_array_element
	movsbl	%al, %ebx
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	subl	$1, %eax
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	towerOfHanoi_secure_using_template
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free_chunks_from_secure_stack
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free_fun_params_that_point_to_stack
.L609:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE125:
	.size	towerOfHanoi_secure_using_changed_accesses, .-towerOfHanoi_secure_using_changed_accesses
	.comm	sa,152,32
	.globl	check_next_canaries
	.type	check_next_canaries, @function
check_next_canaries:
.LFB126:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L613
.L616:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$66, %al
	je	.L614
	movl	$0, %eax
	jmp	.L615
.L614:
	addl	$1, -4(%rbp)
.L613:
	cmpl	$1, -4(%rbp)
	jle	.L616
	movl	$1, %eax
.L615:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE126:
	.size	check_next_canaries, .-check_next_canaries
	.section	.rodata
.LC121:
	.string	"key no%d=0x%02x\n"
	.text
	.globl	find_keyshares
	.type	find_keyshares, @function
find_keyshares:
.LFB127:
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
	movl	$0, -92(%rbp)
	movq	$foo, -64(%rbp)
	movq	$main, -56(%rbp)
	movq	$foo2, -48(%rbp)
	movq	$find_keyshares, -40(%rbp)
	movl	$0, -96(%rbp)
	movq	$__executable_start, -32(%rbp)
	movq	$__etext, -24(%rbp)
	movl	$0, -100(%rbp)
	jmp	.L618
.L619:
	movl	-100(%rbp), %eax
	cltq
	movb	$0, -16(%rbp,%rax)
	addl	$1, -100(%rbp)
.L618:
	cmpl	$4, -100(%rbp)
	jle	.L619
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.L620
.L624:
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-21, %al
	jne	.L621
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$7, %al
	jne	.L621
	movq	-88(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	call	check_next_canaries
	testl	%eax, %eax
	je	.L621
	movl	$0, -100(%rbp)
	jmp	.L622
.L623:
	movl	-100(%rbp), %eax
	cltq
	movzbl	-16(%rbp,%rax), %edx
	movl	-100(%rbp), %eax
	cltq
	leaq	4(%rax), %rcx
	movq	-88(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	xorl	%eax, %edx
	movl	-100(%rbp), %eax
	cltq
	movb	%dl, -16(%rbp,%rax)
	addl	$1, -100(%rbp)
.L622:
	cmpl	$4, -100(%rbp)
	jle	.L623
.L621:
	addq	$1, -88(%rbp)
.L620:
	movq	-88(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jbe	.L624
	movl	$0, -96(%rbp)
	movq	entire_memory_chunk(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -80(%rbp)
	jmp	.L625
.L629:
	cmpl	$0, -96(%rbp)
	jne	.L626
	addq	$4, -80(%rbp)
	movl	$1, -96(%rbp)
	jmp	.L625
.L626:
	movl	$0, -100(%rbp)
	jmp	.L627
.L628:
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
.L627:
	cmpl	$4, -100(%rbp)
	jle	.L628
	addq	$5, -80(%rbp)
	movl	$0, -96(%rbp)
.L625:
	movq	total_bytes_allocated(%rip), %rax
	cmpq	%rax, -80(%rbp)
	jl	.L629
	movl	$0, -96(%rbp)
	movq	entire_stack_memory_chunk(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -72(%rbp)
	jmp	.L630
.L634:
	cmpl	$0, -96(%rbp)
	jne	.L631
	addq	$4, -72(%rbp)
	movl	$1, -96(%rbp)
	jmp	.L630
.L631:
	movl	$0, -100(%rbp)
	jmp	.L632
.L633:
	movl	-100(%rbp), %eax
	cltq
	movzbl	-16(%rbp,%rax), %edx
	movl	-100(%rbp), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rax
	addq	%rax, %rcx
	movq	-88(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	xorl	%eax, %edx
	movl	-100(%rbp), %eax
	cltq
	movb	%dl, -16(%rbp,%rax)
	addl	$1, -100(%rbp)
.L632:
	cmpl	$4, -100(%rbp)
	jle	.L633
	addq	$5, -72(%rbp)
	movl	$0, -96(%rbp)
.L630:
	movq	total_stack_bytes_allocated(%rip), %rax
	cmpq	%rax, -72(%rbp)
	jl	.L634
	movl	$10, %edi
	call	putchar
	movl	$0, -100(%rbp)
	jmp	.L635
.L636:
	movl	-100(%rbp), %eax
	cltq
	movzbl	-16(%rbp,%rax), %eax
	movzbl	%al, %edx
	movl	-100(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC121, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -100(%rbp)
.L635:
	cmpl	$4, -100(%rbp)
	jle	.L636
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L638
	call	__stack_chk_fail
.L638:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE127:
	.size	find_keyshares, .-find_keyshares
	.section	.rodata
.LC122:
	.string	"Verification requested!"
	.text
	.globl	verification_procedure
	.type	verification_procedure, @function
verification_procedure:
.LFB128:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$.LC122, %edi
	call	puts
	movl	$0, %eax
	call	find_keyshares
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE128:
	.size	verification_procedure, .-verification_procedure
	.section	.rodata
	.align 8
.LC123:
	.string	"Going to find primes up to %d\n"
.LC124:
	.string	"Initialised parameters."
.LC125:
	.string	"Allocated space"
.LC126:
	.string	"Set 2 as first prime"
.LC127:
	.string	"\nPrimes:"
.LC128:
	.string	"\n"
.LC129:
	.string	"Total number of primes:%d\n"
	.text
	.globl	secure_find_primes_up_to_a_number
	.type	secure_find_primes_up_to_a_number, @function
secure_find_primes_up_to_a_number:
.LFB129:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC123, %edi
	movl	$0, %eax
	call	printf
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$4, 40(%rsp)
	movq	$1, 32(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 8(%rsp)
	movl	-36(%rbp), %eax
	movl	%eax, (%rsp)
	movl	$1, %r9d
	movl	$4, %r8d
	movl	$0, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	init_function_params_with_uninitialised_elements
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	put_fun_params_into_secure_stack_and_free
	movq	%rax, -24(%rbp)
	movl	$.LC124, %edi
	call	puts
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	cltq
	salq	$2, %rax
	movl	$30, %edx
	movl	$__func__.6114, %esi
	movq	%rax, %rdi
	call	error_checking_managed_secure_malloc
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_stack_pointer_array_element
	movl	$.LC125, %edi
	call	puts
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$1, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	subl	$1, %eax
	movslq	%eax, %rbx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_pointer_array_element
	movl	$2, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	set_int_array_element
	movl	$.LC126, %edi
	call	puts
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
	jmp	.L641
.L647:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_stack_char_array_element
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
	jmp	.L642
.L645:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %ecx
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ecx
	movl	%ecx, %eax
	testl	%eax, %eax
	jne	.L643
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_stack_char_array_element
	jmp	.L644
.L643:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
.L642:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	addl	$1, %eax
	cmpl	%eax, %ebx
	jle	.L645
.L644:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_char_array_element
	testb	%al, %al
	jne	.L646
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %r12d
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	subl	$1, %eax
	movslq	%eax, %rbx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_pointer_array_element
	movl	%r12d, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	set_int_array_element
.L646:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	leal	2(%rax), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
.L641:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	cmpl	%eax, %ebx
	jle	.L647
	movl	$.LC127, %edi
	call	puts
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
	jmp	.L648
.L649:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movslq	%eax, %rbx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_pointer_array_element
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	get_int_array_element
	movl	%eax, %esi
	movl	$.LC22, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
.L648:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	cmpl	%eax, %ebx
	jl	.L649
	movl	$.LC128, %edi
	call	puts
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %esi
	movl	$.LC129, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_pointer_array_element
	movq	%rax, %rdi
	call	managed_secure_free
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free_chunks_from_secure_stack
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_fun_params_that_point_to_stack
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE129:
	.size	secure_find_primes_up_to_a_number, .-secure_find_primes_up_to_a_number
	.globl	find_primes_up_to_a_number
	.type	find_primes_up_to_a_number, @function
find_primes_up_to_a_number:
.LFB130:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movb	$0, -21(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC123, %edi
	movl	$0, %eax
	call	printf
	movl	-36(%rbp), %eax
	cltq
	salq	$2, %rax
	movl	$122, %edx
	movl	$__func__.6132, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	$2, (%rax)
	movl	$3, -20(%rbp)
	jmp	.L651
.L657:
	movb	$0, -21(%rbp)
	movl	$2, -16(%rbp)
	jmp	.L652
.L655:
	movl	-20(%rbp), %eax
	cltd
	idivl	-16(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L653
	movb	$1, -21(%rbp)
	jmp	.L654
.L653:
	addl	$1, -16(%rbp)
.L652:
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	addl	$1, %eax
	cmpl	-16(%rbp), %eax
	jge	.L655
.L654:
	cmpb	$0, -21(%rbp)
	jne	.L656
	addl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, (%rdx)
.L656:
	addl	$2, -20(%rbp)
.L651:
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.L657
	movl	$.LC127, %edi
	call	puts
	movl	$0, -20(%rbp)
	jmp	.L658
.L659:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC22, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -20(%rbp)
.L658:
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L659
	movl	$.LC128, %edi
	call	puts
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC129, %edi
	movl	$0, %eax
	call	printf
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE130:
	.size	find_primes_up_to_a_number, .-find_primes_up_to_a_number
	.section	.rodata
.LC130:
	.string	"Primes with sieve:"
.LC131:
	.string	"Total: %d primes.\n"
	.text
	.globl	simple_sieve_of_Eratosthenes
	.type	simple_sieve_of_Eratosthenes, @function
simple_sieve_of_Eratosthenes:
.LFB131:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	$0, -20(%rbp)
	cvtsi2sd	-36(%rbp), %xmm0
	call	sqrt
	movsd	%xmm0, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	$174, %edx
	movl	$__func__.6150, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, -8(%rbp)
	movl	$2, -28(%rbp)
	jmp	.L661
.L662:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$1, (%rax)
	addl	$1, -28(%rbp)
.L661:
	movl	-28(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.L662
	movl	$2, -28(%rbp)
	jmp	.L663
.L667:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L664
	movl	-28(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -24(%rbp)
	jmp	.L665
.L666:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-28(%rbp), %eax
	addl	%eax, -24(%rbp)
.L665:
	movl	-24(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.L666
.L664:
	addl	$1, -28(%rbp)
.L663:
	cvtsi2sd	-28(%rbp), %xmm1
	movsd	-16(%rbp), %xmm2
	movsd	.LC45(%rip), %xmm0
	addsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jnb	.L667
	movl	$10, %edi
	call	putchar
	movl	$.LC130, %edi
	call	puts
	movl	$2, -28(%rbp)
	jmp	.L668
.L670:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L669
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC22, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -20(%rbp)
.L669:
	addl	$1, -28(%rbp)
.L668:
	movl	-28(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.L670
	movl	$10, %edi
	call	putchar
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC131, %edi
	movl	$0, %eax
	call	printf
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE131:
	.size	simple_sieve_of_Eratosthenes, .-simple_sieve_of_Eratosthenes
	.section	.rodata
.LC132:
	.string	"Primes with secure sieve:"
	.text
	.globl	secure_sieve_of_Eratosthenes
	.type	secure_sieve_of_Eratosthenes, @function
secure_sieve_of_Eratosthenes:
.LFB132:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movl	-36(%rbp), %eax
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$1, 40(%rsp)
	movq	$1, 32(%rsp)
	movq	$0, 24(%rsp)
	movq	$1, 16(%rsp)
	movq	$0, 8(%rsp)
	movq	$0, (%rsp)
	movl	$0, %r9d
	movl	%eax, %r8d
	movl	$2, %ecx
	movl	$4, %edx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	init_function_params_with_uninitialised_elements
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	put_fun_params_into_secure_stack_and_free
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	cvtsi2sd	%eax, %xmm0
	call	sqrt
	movsd	%xmm0, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	72(%rdx), %rdx
	movq	%rax, -48(%rbp)
	movsd	-48(%rbp), %xmm0
	movl	$0, %esi
	movq	%rdx, %rdi
	call	set_stack_double_array_element
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	addl	$1, %eax
	cltq
	movl	$245, %edx
	movl	$__func__.6167, %esi
	movq	%rax, %rdi
	call	error_checking_managed_secure_malloc
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_stack_pointer_array_element
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
	jmp	.L672
.L673:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movslq	%eax, %rbx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_pointer_array_element
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	set_char_array_element
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
.L672:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	cmpl	%eax, %ebx
	jle	.L673
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
	jmp	.L674
.L678:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movslq	%eax, %rbx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_pointer_array_element
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	get_char_array_element
	cmpb	$1, %al
	jne	.L675
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	leal	(%rax,%rax), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
	jmp	.L676
.L677:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movslq	%eax, %rbx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_pointer_array_element
	movl	$0, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	set_char_array_element
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	leal	(%rbx,%rax), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
.L676:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	cmpl	%eax, %ebx
	jle	.L677
.L675:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
.L674:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	cvtsi2sd	%eax, %xmm2
	movsd	%xmm2, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	72(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_double_array_element
	movsd	.LC45(%rip), %xmm1
	addsd	%xmm1, %xmm0
	ucomisd	-48(%rbp), %xmm0
	jnb	.L678
	movl	$10, %edi
	call	putchar
	movl	$.LC132, %edi
	call	puts
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
	jmp	.L679
.L681:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movslq	%eax, %rbx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_pointer_array_element
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	get_char_array_element
	cmpb	$1, %al
	jne	.L680
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %esi
	movl	$.LC22, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
.L680:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
.L679:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	cmpl	%eax, %ebx
	jle	.L681
	movl	$10, %edi
	call	putchar
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %esi
	movl	$.LC131, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_pointer_array_element
	movq	%rax, %rdi
	call	managed_secure_free
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free_chunks_from_secure_stack
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_fun_params_that_point_to_stack
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE132:
	.size	secure_sieve_of_Eratosthenes, .-secure_sieve_of_Eratosthenes
	.globl	user_friendly_secure_sieve_of_Eratosthenes
	.type	user_friendly_secure_sieve_of_Eratosthenes, @function
user_friendly_secure_sieve_of_Eratosthenes:
.LFB133:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movl	-36(%rbp), %eax
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$1, 40(%rsp)
	movq	$1, 32(%rsp)
	movq	$0, 24(%rsp)
	movq	$1, 16(%rsp)
	movq	$0, 8(%rsp)
	movq	$0, (%rsp)
	movl	$0, %r9d
	movl	%eax, %r8d
	movl	$2, %ecx
	movl	$4, %edx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	init_function_params_with_uninitialised_elements
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	put_fun_params_into_secure_stack_and_free
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	cvtsi2sd	%eax, %xmm0
	call	sqrt
	movsd	%xmm0, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	72(%rdx), %rdx
	movq	%rax, -48(%rbp)
	movsd	-48(%rbp), %xmm0
	movl	$0, %esi
	movq	%rdx, %rdi
	call	set_stack_double_array_element
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	addl	$1, %eax
	cltq
	movl	$376, %edx
	movl	$__func__.6184, %esi
	movq	%rax, %rdi
	call	error_checking_managed_secure_malloc
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_stack_pointer_array_element
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
	jmp	.L683
.L684:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movslq	%eax, %rbx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_pointer_array_element
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	set_char_array_element
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
.L683:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	cmpl	%eax, %ebx
	jle	.L684
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
	jmp	.L685
.L689:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movslq	%eax, %rbx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_pointer_array_element
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	get_char_array_element
	cmpb	$1, %al
	jne	.L686
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	leal	(%rax,%rax), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
	jmp	.L687
.L688:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movslq	%eax, %rbx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_pointer_array_element
	movl	$0, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	set_char_array_element
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	leal	(%rbx,%rax), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
.L687:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	cmpl	%eax, %ebx
	jle	.L688
.L686:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
.L685:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	cvtsi2sd	%eax, %xmm2
	movsd	%xmm2, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	72(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_double_array_element
	movsd	.LC45(%rip), %xmm1
	addsd	%xmm1, %xmm0
	ucomisd	-48(%rbp), %xmm0
	jnb	.L689
	movl	$10, %edi
	call	putchar
	movl	$.LC132, %edi
	call	puts
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
	jmp	.L690
.L692:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movslq	%eax, %rbx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_pointer_array_element
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	get_char_array_element
	cmpb	$1, %al
	jne	.L691
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %esi
	movl	$.LC22, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
.L691:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
.L690:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	cmpl	%eax, %ebx
	jle	.L692
	movl	$10, %edi
	call	putchar
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %esi
	movl	$.LC131, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_pointer_array_element
	movq	%rax, %rdi
	call	managed_secure_free
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free_chunks_from_secure_stack
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_fun_params_that_point_to_stack
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE133:
	.size	user_friendly_secure_sieve_of_Eratosthenes, .-user_friendly_secure_sieve_of_Eratosthenes
	.comm	matrix_res1,4008004,32
	.comm	matrix_res2,4008004,32
	.comm	matrix1,4008004,32
	.comm	matrix2,4008004,32
	.globl	test_array
	.data
	.align 16
	.type	test_array, @object
	.size	test_array, 16
test_array:
	.long	42
	.long	43
	.long	44
	.long	45
	.text
	.globl	fill_matrices_for_multiplication
	.type	fill_matrices_for_multiplication, @function
fill_matrices_for_multiplication:
.LFB134:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L694
.L697:
	movl	$0, -4(%rbp)
	jmp	.L695
.L696:
	call	rand
	cltd
	idivl	-24(%rbp)
	movl	%edx, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	$1001, %rcx, %rcx
	addq	%rcx, %rdx
	movl	%eax, matrix1(,%rdx,4)
	call	rand
	cltd
	idivl	-24(%rbp)
	movl	%edx, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	$1001, %rcx, %rcx
	addq	%rcx, %rdx
	movl	%eax, matrix2(,%rdx,4)
	addl	$1, -4(%rbp)
.L695:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L696
	addl	$1, -8(%rbp)
.L694:
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L697
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE134:
	.size	fill_matrices_for_multiplication, .-fill_matrices_for_multiplication
	.section	.rodata
.LC133:
	.string	"Test array:"
	.text
	.globl	matrix_multiplication
	.type	matrix_multiplication, @function
matrix_multiplication:
.LFB135:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, -116(%rbp)
	movl	%esi, -120(%rbp)
	movq	%rsp, %rax
	movq	%rax, -128(%rbp)
	movl	-116(%rbp), %esi
	movl	-116(%rbp), %edi
	movslq	%esi, %rax
	subq	$1, %rax
	movq	%rax, -96(%rbp)
	movslq	%esi, %rax
	movq	%rax, %rdx
	movl	$0, %ecx
	movslq	%esi, %rax
	leaq	0(,%rax,4), %rbx
	movslq	%edi, %rax
	subq	$1, %rax
	movq	%rax, -88(%rbp)
	movslq	%esi, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movslq	%edi, %rax
	movq	%rax, %r8
	movl	$0, %r9d
	movq	%r11, %rdx
	imulq	%r8, %rdx
	movq	%r9, %rax
	imulq	%r10, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r10, %rax
	mulq	%r8
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movslq	%esi, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	movslq	%edi, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	%r15, %rdx
	imulq	%r12, %rdx
	movq	%r13, %rax
	imulq	%r14, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r14, %rax
	mulq	%r12
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movslq	%esi, %rdx
	movslq	%edi, %rax
	imulq	%rdx, %rax
	salq	$2, %rax
	leaq	3(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -80(%rbp)
	movl	-116(%rbp), %edi
	movl	-116(%rbp), %r8d
	movslq	%edi, %rax
	subq	$1, %rax
	movq	%rax, -72(%rbp)
	movslq	%edi, %rax
	movq	%rax, -208(%rbp)
	movq	$0, -200(%rbp)
	movslq	%edi, %rax
	leaq	0(,%rax,4), %rcx
	movslq	%r8d, %rax
	subq	$1, %rax
	movq	%rax, -64(%rbp)
	movslq	%edi, %rax
	movq	%rax, -144(%rbp)
	movq	$0, -136(%rbp)
	movslq	%r8d, %rax
	movq	%rax, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	-144(%rbp), %r14
	movq	-136(%rbp), %r15
	movq	%r15, %rdx
	movq	-160(%rbp), %r9
	movq	-152(%rbp), %r10
	imulq	%r9, %rdx
	movq	%r10, %rax
	imulq	%r14, %rax
	leaq	(%rdx,%rax), %rsi
	movq	%r14, %rax
	mulq	%r9
	addq	%rdx, %rsi
	movq	%rsi, %rdx
	movslq	%edi, %rax
	movq	%rax, -176(%rbp)
	movq	$0, -168(%rbp)
	movslq	%r8d, %rax
	movq	%rax, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	-176(%rbp), %r9
	movq	-168(%rbp), %r10
	movq	%r10, %rdx
	movq	-192(%rbp), %r11
	movq	-184(%rbp), %r12
	imulq	%r11, %rdx
	movq	%r12, %rax
	imulq	%r9, %rax
	leaq	(%rdx,%rax), %rsi
	movq	%r9, %rax
	mulq	%r11
	addq	%rdx, %rsi
	movq	%rsi, %rdx
	movslq	%edi, %rdx
	movslq	%r8d, %rax
	imulq	%rdx, %rax
	salq	$2, %rax
	leaq	3(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -56(%rbp)
	movl	$0, -112(%rbp)
	jmp	.L699
.L702:
	movl	$0, -108(%rbp)
	jmp	.L700
.L701:
	movq	%rbx, %r8
	shrq	$2, %r8
	movl	-108(%rbp), %eax
	cltq
	movl	-112(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$1001, %rdx, %rdx
	addq	%rdx, %rax
	movl	matrix1(,%rax,4), %edx
	movq	-80(%rbp), %rax
	movl	-108(%rbp), %esi
	movslq	%esi, %rdi
	movl	-112(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%r8, %rsi
	addq	%rdi, %rsi
	movl	%edx, (%rax,%rsi,4)
	movq	%rcx, %r8
	shrq	$2, %r8
	movl	-108(%rbp), %eax
	cltq
	movl	-112(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$1001, %rdx, %rdx
	addq	%rdx, %rax
	movl	matrix2(,%rax,4), %edx
	movq	-56(%rbp), %rax
	movl	-108(%rbp), %esi
	movslq	%esi, %rdi
	movl	-112(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%r8, %rsi
	addq	%rdi, %rsi
	movl	%edx, (%rax,%rsi,4)
	addl	$1, -108(%rbp)
.L700:
	movl	-108(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	.L701
	addl	$1, -112(%rbp)
.L699:
	movl	-112(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	.L702
	movl	$0, -112(%rbp)
	jmp	.L703
.L708:
	movl	$0, -108(%rbp)
	jmp	.L704
.L707:
	movl	$0, -100(%rbp)
	movl	$0, -104(%rbp)
	jmp	.L705
.L706:
	movq	%rbx, %rdi
	shrq	$2, %rdi
	movq	-80(%rbp), %rax
	movl	-104(%rbp), %edx
	movslq	%edx, %rsi
	movl	-112(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rdi, %rdx
	addq	%rsi, %rdx
	movl	(%rax,%rdx,4), %edx
	movq	%rcx, %r8
	shrq	$2, %r8
	movq	-56(%rbp), %rax
	movl	-108(%rbp), %esi
	movslq	%esi, %rdi
	movl	-104(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%r8, %rsi
	addq	%rdi, %rsi
	movl	(%rax,%rsi,4), %eax
	imull	%edx, %eax
	addl	%eax, -100(%rbp)
	addl	$1, -104(%rbp)
.L705:
	movl	-104(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	.L706
	movl	-108(%rbp), %eax
	cltq
	movl	-112(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$1001, %rdx, %rdx
	addq	%rax, %rdx
	movl	-100(%rbp), %eax
	movl	%eax, matrix_res1(,%rdx,4)
	addl	$1, -108(%rbp)
.L704:
	movl	-108(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	.L707
	addl	$1, -112(%rbp)
.L703:
	movl	-112(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	.L708
	movl	$.LC133, %edi
	call	puts
	movl	$0, -112(%rbp)
	jmp	.L709
.L710:
	movl	-112(%rbp), %eax
	cltq
	movl	test_array(,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC22, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -112(%rbp)
.L709:
	cmpl	$3, -112(%rbp)
	jle	.L710
	movl	$10, %edi
	call	putchar
	movq	-128(%rbp), %rsp
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE135:
	.size	matrix_multiplication, .-matrix_multiplication
	.globl	user_friendly_secure_matrix_multiplication
	.type	user_friendly_secure_matrix_multiplication, @function
user_friendly_secure_matrix_multiplication:
.LFB136:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movl	-52(%rbp), %eax
	movslq	%eax, %rcx
	movl	-52(%rbp), %eax
	cltq
	imulq	%rcx, %rax
	salq	$2, %rax
	movl	-56(%rbp), %esi
	movl	-52(%rbp), %ecx
	movq	$test_array, 72(%rsp)
	movq	$1, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rax, 48(%rsp)
	movq	$16, 40(%rsp)
	movq	$3, 32(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 8(%rsp)
	movq	$0, (%rsp)
	movl	%esi, %r9d
	movl	%ecx, %r8d
	movl	$2, %ecx
	movl	$7, %edx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	init_function_params_with_uninitialised_elements
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	put_fun_params_into_secure_stack_and_free
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
	jmp	.L712
.L715:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
	jmp	.L713
.L714:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	cltq
	movslq	%ebx, %rdx
	imulq	$1001, %rdx, %rdx
	addq	%rdx, %rax
	movl	matrix1(,%rax,4), %ebx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %r12d
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	imull	%eax, %r12d
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	addl	%r12d, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	120(%rax), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_stack_int_array_element
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	cltq
	movslq	%ebx, %rdx
	imulq	$1001, %rdx, %rdx
	addq	%rdx, %rax
	movl	matrix2(,%rax,4), %ebx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %r12d
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	imull	%eax, %r12d
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	addl	%r12d, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	120(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_stack_int_array_element
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
.L713:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	cmpl	%eax, %ebx
	jl	.L714
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
.L712:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	cmpl	%eax, %ebx
	jl	.L715
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
	jmp	.L716
.L721:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
	jmp	.L717
.L720:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %edx
	movl	$6, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
	jmp	.L718
.L719:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %r12d
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	imull	%eax, %r12d
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	addl	%r12d, %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	120(%rax), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %r12d
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %r13d
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	imull	%eax, %r13d
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	addl	%r13d, %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	120(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	imull	%r12d, %eax
	leal	(%rbx,%rax), %edx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
.L718:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	cmpl	%eax, %ebx
	jl	.L719
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %r12d
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movslq	%r12d, %rdx
	movslq	%ebx, %rcx
	imulq	$1001, %rcx, %rcx
	addq	%rcx, %rdx
	movl	%eax, matrix_res2(,%rdx,4)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
.L717:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	cmpl	%eax, %ebx
	jl	.L720
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
.L716:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	cmpl	%eax, %ebx
	jl	.L721
	movl	$.LC133, %edi
	call	puts
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
	jmp	.L722
.L723:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	120(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %esi
	movl	$.LC22, %edi
	movl	$0, %eax
	call	printf
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
.L722:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	cmpl	$3, %eax
	jle	.L723
	movl	$10, %edi
	call	putchar
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free_chunks_from_secure_stack
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free_fun_params_that_point_to_stack
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE136:
	.size	user_friendly_secure_matrix_multiplication, .-user_friendly_secure_matrix_multiplication
	.globl	the_matrices_are_the_same
	.type	the_matrices_are_the_same, @function
the_matrices_are_the_same:
.LFB137:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$1, -4(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L725
.L732:
	movl	$0, -8(%rbp)
	jmp	.L726
.L729:
	movl	-8(%rbp), %eax
	cltq
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$1001, %rdx, %rdx
	addq	%rdx, %rax
	movl	matrix_res1(,%rax,4), %edx
	movl	-8(%rbp), %eax
	cltq
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	$1001, %rcx, %rcx
	addq	%rcx, %rax
	movl	matrix_res2(,%rax,4), %eax
	cmpl	%eax, %edx
	je	.L727
	movl	$0, -4(%rbp)
	jmp	.L728
.L727:
	addl	$1, -8(%rbp)
.L726:
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L729
.L728:
	cmpl	$0, -4(%rbp)
	jne	.L730
	jmp	.L731
.L730:
	addl	$1, -12(%rbp)
.L725:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L732
.L731:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE137:
	.size	the_matrices_are_the_same, .-the_matrices_are_the_same
	.section	.rodata
.LC134:
	.string	"Initializing heap memory"
	.align 8
.LC135:
	.string	"bytes_to_allocate_on_start:%d\n"
.LC136:
	.string	"Init_mem, alloc+key insertion"
	.align 8
.LC137:
	.string	"If successful, total bytes allocated:%ld\n"
.LC138:
	.string	"Initializing stack memory"
	.align 8
.LC139:
	.string	"Stack bytes_to_allocate_on_start:%d\n"
	.align 8
.LC140:
	.string	"Init_stack_mem, alloc+key insertion"
	.text
	.globl	init_heap_and_stack_mem
	.type	init_heap_and_stack_mem, @function
init_heap_and_stack_mem:
.LFB138:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$.LC134, %edi
	call	puts
	movl	$30000, %esi
	movl	$.LC135, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC136, %edi
	call	puts
	movl	$0, %eax
	call	init_mem
	movq	total_bytes_allocated(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC137, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC138, %edi
	call	puts
	movl	$50000, %esi
	movl	$.LC139, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC140, %edi
	call	puts
	movl	$0, %eax
	call	init_stack_mem
	movq	total_stack_bytes_allocated(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC137, %edi
	movl	$0, %eax
	call	printf
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE138:
	.size	init_heap_and_stack_mem, .-init_heap_and_stack_mem
	.section	.rodata
.LC141:
	.string	"Installing signal handler"
	.align 8
.LC142:
	.string	"Could not install signal handler"
.LC143:
	.string	"Signal handler installed"
	.text
	.globl	install_signal_handler
	.type	install_signal_handler, @function
install_signal_handler:
.LFB139:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$.LC141, %edi
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
	jne	.L736
	movl	$.LC142, %edi
	call	perror
	movl	$45, %edi
	call	exit
.L736:
	movl	$.LC143, %edi
	call	puts
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE139:
	.size	install_signal_handler, .-install_signal_handler
	.globl	free_heap_and_stack_memory
	.type	free_heap_and_stack_memory, @function
free_heap_and_stack_memory:
.LFB140:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	entire_memory_chunk(%rip), %rax
	movq	%rax, %rdi
	call	free_secure_mem
	movq	entire_stack_memory_chunk(%rip), %rax
	movq	%rax, %rdi
	call	free_secure_stack_mem
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE140:
	.size	free_heap_and_stack_memory, .-free_heap_and_stack_memory
	.local	static_global_variable_for_testing
	.comm	static_global_variable_for_testing,4,4
	.globl	foo
	.type	foo, @function
foo:
.LFB141:
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
.LFE141:
	.size	foo, .-foo
	.section	.rodata
.LC144:
	.string	"My pid=%ld\n"
.LC145:
	.string	"K=%d\n"
.LC146:
	.string	"n=%d\n"
.LC147:
	.string	"main is at %p\n"
	.align 8
.LC148:
	.string	"Calculating time for primes not very fast version. Normal primes not very fast version:"
	.align 8
.LC150:
	.string	"Normal primes not very fast version:%lg cpu seconds\n"
	.align 8
.LC151:
	.string	"Secure primes not very fast version:"
	.align 8
.LC152:
	.string	"Normal primes not very fast version time:%lg cpu seconds\n"
	.align 8
.LC153:
	.string	"Secure primes not very fast version time:%lg cpu seconds\n"
.LC154:
	.string	"Ratio: %lg times slowdown\n"
.LC155:
	.string	"Going to find keyshares."
	.text
	.globl	main
	.type	main, @function
main:
.LFB142:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -100(%rbp)
	movl	$2, -96(%rbp)
	addl	$1, -96(%rbp)
	addl	$1, -96(%rbp)
	subl	$1, -96(%rbp)
	movl	-96(%rbp), %eax
	addl	%eax, -100(%rbp)
	addl	$2, -100(%rbp)
	addl	$1, -96(%rbp)
	movl	$1, static_main_variable_for_testing.6297(%rip)
	movl	$2, static_global_variable_for_testing(%rip)
	movl	$0, %eax
	call	init_heap_and_stack_mem
	movl	$0, %eax
	call	install_signal_handler
	call	getpid
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	cltq
	movq	%rax, %rsi
	movl	$.LC144, %edi
	movl	$0, %eax
	call	printf
	movl	-100(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC145, %edi
	movl	$0, %eax
	call	printf
	movl	$5, %edi
	call	foo
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, %edi
	call	foo2
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC146, %edi
	movl	$0, %eax
	call	printf
	movl	$main, %esi
	movl	$.LC147, %edi
	movl	$0, %eax
	call	printf
	movl	$1000, -84(%rbp)
	movl	$10, %edi
	call	putchar
	movl	$.LC148, %edi
	call	puts
	call	clock
	movq	%rax, -80(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	find_primes_up_to_a_number
	call	clock
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC149(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movl	$10, %edi
	call	putchar
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)
	movsd	-120(%rbp), %xmm0
	movl	$.LC150, %edi
	movl	$1, %eax
	call	printf
	movl	$.LC151, %edi
	call	puts
	call	clock
	movq	%rax, -56(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	secure_find_primes_up_to_a_number
	call	clock
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC149(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	$10, %edi
	call	putchar
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)
	movsd	-120(%rbp), %xmm0
	movl	$.LC152, %edi
	movl	$1, %eax
	call	printf
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)
	movsd	-120(%rbp), %xmm0
	movl	$.LC153, %edi
	movl	$1, %eax
	call	printf
	movl	$10, %edi
	call	putchar
	movsd	-40(%rbp), %xmm0
	divsd	-64(%rbp), %xmm0
	movl	$.LC154, %edi
	movl	$1, %eax
	call	printf
	movl	$10, %edi
	call	putchar
	movl	$.LC155, %edi
	call	puts
	movl	$0, %eax
	call	find_keyshares
	movl	$0, %eax
	call	free_heap_and_stack_memory
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L742
	call	__stack_chk_fail
.L742:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE142:
	.size	main, .-main
	.globl	foo2
	.type	foo2, @function
foo2:
.LFB143:
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
.LFE143:
	.size	foo2, .-foo2
	.section	.rodata
	.type	__func__.5001, @object
	.size	__func__.5001, 11
__func__.5001:
	.string	"alloc_list"
	.align 16
	.type	__func__.5010, @object
	.size	__func__.5010, 17
__func__.5010:
	.string	"add_node_to_list"
	.type	__func__.5054, @object
	.size	__func__.5054, 13
__func__.5054:
	.string	"allocate_mem"
	.align 16
	.type	__func__.5320, @object
	.size	__func__.5320, 16
__func__.5320:
	.string	"check_and_merge"
	.align 16
	.type	__func__.5336, @object
	.size	__func__.5336, 20
__func__.5336:
	.string	"managed_secure_free"
	.type	__func__.5387, @object
	.size	__func__.5387, 9
__func__.5387:
	.string	"mem_test"
	.align 32
	.type	__func__.5455, @object
	.size	__func__.5455, 32
__func__.5455:
	.string	"adding_heap_arrays_time_measure"
	.align 32
	.type	__func__.5470, @object
	.size	__func__.5470, 34
__func__.5470:
	.string	"multiple_simple_mallocs_and_frees"
	.align 32
	.type	__func__.5485, @object
	.size	__func__.5485, 34
__func__.5485:
	.string	"multiple_secure_mallocs_and_frees"
	.align 16
	.type	__func__.5542, @object
	.size	__func__.5542, 19
__func__.5542:
	.string	"allocate_stack_mem"
	.align 16
	.type	__func__.5653, @object
	.size	__func__.5653, 21
__func__.5653:
	.string	"init_function_params"
	.align 32
	.type	__func__.5691, @object
	.size	__func__.5691, 49
__func__.5691:
	.string	"init_function_params_with_uninitialised_elements"
	.align 32
	.type	__func__.5734, @object
	.size	__func__.5734, 33
__func__.5734:
	.string	"put_fun_params_into_secure_stack"
	.align 32
	.type	__func__.5988, @object
	.size	__func__.5988, 36
__func__.5988:
	.string	"tower_of_Hanoi_init_secure_template"
	.align 16
	.type	__func__.5994, @object
	.size	__func__.5994, 22
__func__.5994:
	.string	"stack_fun_params_test"
	.align 32
	.type	__func__.6114, @object
	.size	__func__.6114, 34
__func__.6114:
	.string	"secure_find_primes_up_to_a_number"
	.align 16
	.type	__func__.6132, @object
	.size	__func__.6132, 27
__func__.6132:
	.string	"find_primes_up_to_a_number"
	.align 16
	.type	__func__.6150, @object
	.size	__func__.6150, 29
__func__.6150:
	.string	"simple_sieve_of_Eratosthenes"
	.align 16
	.type	__func__.6167, @object
	.size	__func__.6167, 29
__func__.6167:
	.string	"secure_sieve_of_Eratosthenes"
	.align 32
	.type	__func__.6184, @object
	.size	__func__.6184, 43
__func__.6184:
	.string	"user_friendly_secure_sieve_of_Eratosthenes"
	.local	static_main_variable_for_testing.6297
	.comm	static_main_variable_for_testing.6297,4,4
	.align 8
.LC45:
	.long	0
	.long	1072693248
	.align 8
.LC66:
	.long	0
	.long	1071644672
	.align 8
.LC73:
	.long	0
	.long	1074790400
	.align 8
.LC149:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
