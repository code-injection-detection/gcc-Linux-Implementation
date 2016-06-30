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
	movl	$__func__.3962, %esi
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
	movl	$__func__.3971, %esi
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
	movq	$2048, -56(%rbp)
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
	movl	$__func__.4015, %esi
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
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -44(%rbp)
	movq	$0, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L60
.L65:
	cmpl	$0, -44(%rbp)
	je	.L61
	addq	$5, -40(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L60
.L61:
	movq	$0, -32(%rbp)
	jmp	.L62
.L64:
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
.L62:
	cmpq	$3, -32(%rbp)
	jg	.L63
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-56(%rbp), %rax
	jl	.L64
.L63:
	movq	-32(%rbp), %rax
	addq	%rax, -16(%rbp)
	addq	$1, -24(%rbp)
	addq	$4, -40(%rbp)
	movl	$1, -44(%rbp)
.L60:
	movq	-16(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.L65
	movq	-24(%rbp), %rax
	popq	%rbp
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
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movl	%ecx, -108(%rbp)
	movq	%r8, -120(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -68(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpl	$2, -108(%rbp)
	jne	.L68
	movq	$1, -24(%rbp)
	jmp	.L69
.L68:
	movq	-96(%rbp), %rax
	movq	%rax, -24(%rbp)
.L69:
	movq	$0, -64(%rbp)
	cmpl	$0, -108(%rbp)
	je	.L70
	movq	-120(%rbp), %rax
	imulq	-24(%rbp), %rax
	leaq	3(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	imulq	-24(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L71
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, -40(%rbp)
	jmp	.L70
.L71:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, -40(%rbp)
	movq	-120(%rbp), %rax
	imulq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movl	$0, %eax
	subq	%rcx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	$0, -48(%rbp)
	jmp	.L72
.L74:
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -48(%rbp)
.L72:
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	$3, %rax
	jg	.L73
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-96(%rbp), %rax
	jl	.L74
.L73:
	movq	-48(%rbp), %rax
	addq	%rax, -32(%rbp)
	addq	$9, -40(%rbp)
	jmp	.L75
.L70:
	jmp	.L75
.L80:
	cmpl	$0, -68(%rbp)
	je	.L76
	addq	$5, -64(%rbp)
	movl	$0, -68(%rbp)
	jmp	.L75
.L76:
	movq	$0, -56(%rbp)
	jmp	.L77
.L79:
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -56(%rbp)
.L77:
	cmpq	$3, -56(%rbp)
	jg	.L78
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-96(%rbp), %rax
	jl	.L79
.L78:
	movq	-56(%rbp), %rax
	addq	%rax, -32(%rbp)
	addq	$4, -64(%rbp)
	movl	$1, -68(%rbp)
.L75:
	movq	-32(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.L80
	popq	%rbp
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
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movl	%ecx, -108(%rbp)
	movq	%r8, -120(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -68(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpl	$2, -108(%rbp)
	jne	.L82
	movq	$1, -24(%rbp)
	jmp	.L83
.L82:
	movq	-96(%rbp), %rax
	movq	%rax, -24(%rbp)
.L83:
	movq	$0, -64(%rbp)
	cmpl	$0, -108(%rbp)
	je	.L84
	movq	-120(%rbp), %rax
	imulq	-24(%rbp), %rax
	leaq	3(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	imulq	-24(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L85
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, -40(%rbp)
	jmp	.L84
.L85:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, -40(%rbp)
	movq	-120(%rbp), %rax
	imulq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movl	$0, %eax
	subq	%rcx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	$0, -48(%rbp)
	jmp	.L86
.L88:
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -48(%rbp)
.L86:
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	$3, %rax
	jg	.L87
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-96(%rbp), %rax
	jl	.L88
.L87:
	movq	-48(%rbp), %rax
	addq	%rax, -32(%rbp)
	addq	$9, -40(%rbp)
	jmp	.L89
.L84:
	jmp	.L89
.L94:
	cmpl	$0, -68(%rbp)
	je	.L90
	addq	$5, -64(%rbp)
	movl	$0, -68(%rbp)
	jmp	.L89
.L90:
	movq	$0, -56(%rbp)
	jmp	.L91
.L93:
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -56(%rbp)
.L91:
	cmpq	$3, -56(%rbp)
	jg	.L92
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-96(%rbp), %rax
	jl	.L93
.L92:
	movq	-56(%rbp), %rax
	addq	%rax, -32(%rbp)
	addq	$4, -64(%rbp)
	movl	$1, -68(%rbp)
.L89:
	movq	-32(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.L94
	popq	%rbp
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
	jne	.L96
	movl	$.LC13, %edi
	call	perror
	movl	$43, %edi
	call	exit
.L96:
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
	subq	$24, %rsp
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
	subq	$24, %rsp
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
	subq	$24, %rsp
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
	subq	$24, %rsp
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
	subq	$40, %rsp
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
	subq	$40, %rsp
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
	subq	$24, %rsp
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
	subq	$40, %rsp
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
	subq	$40, %rsp
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
	subq	$40, %rsp
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
	subq	$40, %rsp
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
	subq	$40, %rsp
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
	subq	$40, %rsp
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
	subq	$24, %rsp
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
	jne	.L142
	movl	$0, %eax
	jmp	.L143
.L142:
	movq	free_chunks_list(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L144
.L146:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jl	.L145
	movq	-8(%rbp), %rax
	jmp	.L143
.L145:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.L144:
	cmpq	$0, -8(%rbp)
	jne	.L146
	movl	$0, %eax
.L143:
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
	jne	.L148
	movl	$0, %eax
	jmp	.L149
.L148:
	movq	allocated_chunks_list(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L150
.L152:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.L151
	movq	-8(%rbp), %rax
	jmp	.L149
.L151:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.L150:
	cmpq	$0, -8(%rbp)
	jne	.L152
	movl	$0, %eax
.L149:
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
	jne	.L154
	movl	$933, %edx
	movl	$__func__.4294, %esi
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
	je	.L155
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L156
.L155:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L156:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L157
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L157:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-8(%rbp), %rax
	jmp	.L158
.L154:
	movl	$0, %eax
.L158:
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
	jne	.L160
	movl	$0, %eax
	jmp	.L166
.L160:
	movq	-56(%rbp), %rax
	leaq	3(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	salq	$2, %rax
	cmpq	-56(%rbp), %rax
	jge	.L162
	addq	$1, -48(%rbp)
.L162:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	find_large_enough_free_group
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L163
	movl	$0, %eax
	jmp	.L166
.L163:
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
	jne	.L164
	movq	free_chunks_list(%rip), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	delete_node_from_list
	movq	%rax, free_chunks_list(%rip)
	movq	free_chunks_num(%rip), %rax
	subq	$1, %rax
	movq	%rax, free_chunks_num(%rip)
	jmp	.L165
.L164:
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
.L165:
	movq	-24(%rbp), %rax
.L166:
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
	jne	.L168
	movl	$0, %eax
	jmp	.L169
.L168:
	movl	$1027, %edx
	movl	$__func__.4310, %esi
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
	jne	.L170
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
	jmp	.L171
.L170:
	movq	$0, -32(%rbp)
	jmp	.L172
.L175:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jle	.L173
	jmp	.L174
.L173:
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
.L172:
	cmpq	$0, -40(%rbp)
	jne	.L175
.L174:
	cmpq	$0, -32(%rbp)
	jne	.L176
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
	je	.L177
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$free_chunks_list, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_and_merge
	movq	%rax, -24(%rbp)
	jmp	.L178
.L180:
	movq	free_chunks_num(%rip), %rax
	subq	$1, %rax
	movq	%rax, free_chunks_num(%rip)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L179
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$free_chunks_list, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_and_merge
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L178
	jmp	.L177
.L179:
	jmp	.L177
.L178:
	cmpq	$0, -24(%rbp)
	jne	.L180
.L177:
	movl	$1, -44(%rbp)
	jmp	.L171
.L176:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L181
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jge	.L181
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
	je	.L182
	movq	free_chunks_num(%rip), %rax
	subq	$1, %rax
	movq	%rax, free_chunks_num(%rip)
.L182:
	movl	$1, -44(%rbp)
	jmp	.L171
.L181:
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
	jne	.L183
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$free_chunks_list, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_and_merge
	movq	%rax, -24(%rbp)
	jmp	.L184
.L183:
	jmp	.L184
.L187:
	movq	free_chunks_num(%rip), %rax
	subq	$1, %rax
	movq	%rax, free_chunks_num(%rip)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L185
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$free_chunks_list, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_and_merge
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L184
	jmp	.L186
.L185:
	jmp	.L186
.L184:
	cmpq	$0, -24(%rbp)
	jne	.L187
.L186:
	movl	$1, -44(%rbp)
.L171:
	movl	-44(%rbp), %eax
.L169:
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
	jne	.L189
	movl	$0, %eax
	jmp	.L190
.L189:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L191
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$52, %edi
	call	exit
.L191:
	movq	-8(%rbp), %rax
.L190:
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
	jmp	.L193
.L194:
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
.L193:
	movl	-4(%rbp), %eax
	cltq
	cmpq	-24(%rbp), %rax
	jl	.L194
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
	movl	$__func__.4361, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, -104(%rbp)
	movq	-128(%rbp), %rax
	salq	$2, %rax
	movl	$61, %edx
	movl	$__func__.4361, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, -96(%rbp)
	movq	$5, -144(%rbp)
	jmp	.L196
.L197:
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
.L196:
	movq	-128(%rbp), %rax
	addq	$5, %rax
	cmpq	-144(%rbp), %rax
	jg	.L197
	movl	$.LC19, %edi
	call	puts
	movq	-128(%rbp), %rax
	salq	$2, %rax
	movl	$70, %edx
	movl	$__func__.4361, %esi
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
	movl	$__func__.4361, %esi
	movl	$4, %edi
	call	error_checking_malloc
	movq	%rax, -80(%rbp)
	movq	$0, -136(%rbp)
	jmp	.L198
.L199:
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
.L198:
	movq	-136(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jl	.L199
	movl	$10, %edi
	call	putchar
	movl	$.LC23, %edi
	call	puts
	movq	-128(%rbp), %rax
	salq	$2, %rax
	movl	$91, %edx
	movl	$__func__.4361, %esi
	movq	%rax, %rdi
	call	error_checking_managed_secure_malloc
	movq	%rax, -72(%rbp)
	movq	$5, -144(%rbp)
	jmp	.L200
.L201:
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
.L200:
	movq	-128(%rbp), %rax
	addq	$5, %rax
	cmpq	-144(%rbp), %rax
	jg	.L201
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
	jmp	.L202
.L203:
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
.L202:
	movq	-136(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jl	.L203
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
	movl	$__func__.4361, %esi
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
	movl	$__func__.4361, %esi
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
	movl	$__func__.4361, %esi
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
	movl	$__func__.4361, %esi
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
	movl	$__func__.4361, %esi
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
	movl	$__func__.4361, %esi
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
	movl	$__func__.4361, %esi
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
	movl	$__func__.4361, %esi
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
	jne	.L205
	movl	$.LC52, %edi
	call	puts
.L205:
	movl	$0, %eax
	call	print_lists
	movl	$.LC53, %edi
	call	puts
	movl	$42, %edi
	call	managed_secure_malloc
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L206
	movl	$.LC54, %edi
	call	puts
.L206:
	movl	$0, %eax
	call	print_lists
	movl	$.LC55, %edi
	call	puts
	movl	$61, %edi
	call	managed_secure_malloc
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L207
	movl	$.LC56, %edi
	call	puts
.L207:
	movl	$0, %eax
	call	print_lists
	movl	$.LC57, %edi
	call	puts
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.L208
	movl	$.LC58, %edi
	call	puts
.L208:
	movl	$0, %eax
	call	print_lists
	movl	$.LC59, %edi
	call	puts
	movl	$80, %edi
	call	managed_secure_malloc
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L209
	movl	$.LC60, %edi
	call	puts
.L209:
	movl	$0, %eax
	call	print_lists
	movl	$.LC61, %edi
	call	puts
	movl	$29, %edi
	call	managed_secure_malloc
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L210
	movl	$.LC62, %edi
	call	puts
.L210:
	movl	$0, %eax
	call	print_lists
	movl	$.LC63, %edi
	call	puts
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.L211
	movl	$.LC58, %edi
	call	puts
.L211:
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
	jne	.L213
	movl	$.LC64, %edi
	call	puts
	movl	$42, %edi
	call	exit
.L213:
	movl	$.LC65, %edi
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
	movl	$.LC67, %edi
	call	puts
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_int
	jmp	.L216
.L217:
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
.L216:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	get_long_int
	cmpq	%rax, %rbx
	jl	.L217
	movl	$.LC68, %edi
	call	puts
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_int
	jmp	.L218
.L219:
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
.L218:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	get_long_int
	cmpq	%rax, %rbx
	jl	.L219
	movl	$10, %edi
	call	putchar
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_int
	jmp	.L220
.L221:
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
.L220:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	get_long_int
	cmpq	%rax, %rbx
	jl	.L221
	movl	$10, %edi
	call	putchar
	movl	$.LC70, %edi
	call	puts
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_int
	jmp	.L222
.L223:
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
.L222:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	get_long_int
	cmpq	%rax, %rbx
	jl	.L223
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
	jmp	.L225
.L228:
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L226
.L227:
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
.L226:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jl	.L227
	addl	$1, -36(%rbp)
.L225:
	cmpl	$99999, -36(%rbp)
	jle	.L228
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
	movl	$__func__.4429, %esi
	movl	$4, %edi
	call	error_checking_managed_secure_malloc
	movq	%rax, -48(%rbp)
	movl	$458, %edx
	movl	$__func__.4429, %esi
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
	movl	$__func__.4429, %esi
	movq	%rax, %rdi
	call	error_checking_managed_secure_malloc
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	get_long_int
	salq	$2, %rax
	movl	$462, %edx
	movl	$__func__.4429, %esi
	movq	%rax, %rdi
	call	error_checking_managed_secure_malloc
	movq	%rax, -24(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L230
.L233:
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_int
	jmp	.L231
.L232:
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
.L231:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	get_long_int
	cmpq	%rax, %rbx
	jl	.L232
	addl	$1, -52(%rbp)
.L230:
	cmpl	$99999, -52(%rbp)
	jle	.L233
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
	.comm	total_stack_bytes_allocated,8,8
	.comm	entire_stack_memory_chunk,8,8
	.comm	last_unused_stack_memory,8,8
	.comm	stack_keyshare_input_file,8,8
	.globl	find_number_of_useful_stack_chunks
	.type	find_number_of_useful_stack_chunks, @function
find_number_of_useful_stack_chunks:
.LFB66:
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
	movq	$3, -8(%rbp)
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
.LFE66:
	.size	find_number_of_useful_stack_chunks, .-find_number_of_useful_stack_chunks
	.globl	get_ptr_size
	.type	get_ptr_size, @function
get_ptr_size:
.LFB67:
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
.LFE67:
	.size	get_ptr_size, .-get_ptr_size
	.section	.rodata
	.align 8
.LC72:
	.string	"Stack:Attempted to read more keyshares that the ones stored\n"
	.text
	.globl	get_next_stack_keyshare
	.type	get_next_stack_keyshare, @function
get_next_stack_keyshare:
.LFB68:
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
	je	.L239
	movl	$.LC72, %edi
	call	perror
	movl	$45, %edi
	call	exit
.L239:
	movq	stack_keyshare_input_file(%rip), %rdx
	leaq	-1(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread
	cmpq	$1, %rax
	je	.L240
	movl	$.LC8, %edi
	call	perror
	movl	$47, %edi
	call	exit
.L240:
	movzbl	-1(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	get_next_stack_keyshare, .-get_next_stack_keyshare
	.section	.rodata
	.align 8
.LC73:
	.string	"Stack: Great!. No need to allocate more than the defined amount."
	.align 8
.LC74:
	.string	"Stack: Whoops. We need to allocate a bit more space."
	.text
	.globl	allocate_stack_mem
	.type	allocate_stack_mem, @function
allocate_stack_mem:
.LFB69:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	$2048, -56(%rbp)
	movq	$5, -48(%rbp)
	movq	$3, -40(%rbp)
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
	jne	.L243
	movl	$.LC73, %edi
	call	puts
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.L244
.L243:
	movl	$.LC74, %edi
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
.L244:
	movq	-64(%rbp), %rax
	movl	$143, %edx
	movl	$__func__.4486, %esi
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
.LFE69:
	.size	allocate_stack_mem, .-allocate_stack_mem
	.globl	free_secure_stack_mem
	.type	free_secure_stack_mem, @function
free_secure_stack_mem:
.LFB70:
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
.LFE70:
	.size	free_secure_stack_mem, .-free_secure_stack_mem
	.globl	insert_keys_into_stack_mem
	.type	insert_keys_into_stack_mem, @function
insert_keys_into_stack_mem:
.LFB71:
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
	jmp	.L248
.L253:
	cmpl	$0, -52(%rbp)
	je	.L249
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$0, %eax
	call	get_next_stack_keyshare
	movb	%al, (%rbx)
	addq	$1, -32(%rbp)
	addq	$1, -48(%rbp)
	jmp	.L250
.L249:
	movq	$0, -40(%rbp)
	jmp	.L251
.L252:
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	addq	$1, -40(%rbp)
.L251:
	cmpq	$2, -40(%rbp)
	jle	.L252
	addq	$3, -48(%rbp)
	movl	$1, -52(%rbp)
.L250:
	cmpq	$5, -32(%rbp)
	jne	.L248
	movl	$0, -52(%rbp)
	movq	$0, -32(%rbp)
.L248:
	movq	total_stack_bytes_allocated(%rip), %rax
	cmpq	%rax, -48(%rbp)
	jl	.L253
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	insert_keys_into_stack_mem, .-insert_keys_into_stack_mem
	.section	.rodata
.LC75:
	.string	"stack_keyshares"
	.align 8
.LC76:
	.string	"init_mem:stack_keyshares file error\n"
	.text
	.globl	init_stack_mem
	.type	init_stack_mem, @function
init_stack_mem:
.LFB72:
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
	movl	$.LC75, %edi
	call	fopen
	movq	%rax, stack_keyshare_input_file(%rip)
	movq	stack_keyshare_input_file(%rip), %rax
	testq	%rax, %rax
	jne	.L255
	movl	$.LC76, %edi
	call	perror
	movl	$46, %edi
	call	exit
.L255:
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
.LFE72:
	.size	init_stack_mem, .-init_stack_mem
	.globl	insert_data_into_stack_mem
	.type	insert_data_into_stack_mem, @function
insert_data_into_stack_mem:
.LFB73:
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
	jmp	.L258
.L263:
	cmpl	$0, -44(%rbp)
	je	.L259
	addq	$5, -40(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L258
.L259:
	movq	$0, -32(%rbp)
	jmp	.L260
.L262:
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
.L260:
	cmpq	$2, -32(%rbp)
	jg	.L261
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-56(%rbp), %rax
	jl	.L262
.L261:
	movq	-32(%rbp), %rax
	addq	%rax, -16(%rbp)
	addq	$1, -24(%rbp)
	addq	$3, -40(%rbp)
	movl	$1, -44(%rbp)
.L258:
	movq	-16(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.L263
	movq	-24(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	insert_data_into_stack_mem, .-insert_data_into_stack_mem
	.globl	get_secure_stack_data
	.type	get_secure_stack_data, @function
get_secure_stack_data:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movl	%ecx, -108(%rbp)
	movq	%r8, -120(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -68(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpl	$2, -108(%rbp)
	jne	.L266
	movq	$1, -24(%rbp)
	jmp	.L267
.L266:
	movq	-96(%rbp), %rax
	movq	%rax, -24(%rbp)
.L267:
	movq	$0, -64(%rbp)
	cmpl	$0, -108(%rbp)
	je	.L268
	movq	-120(%rbp), %rax
	imulq	-24(%rbp), %rax
	movq	%rax, %rcx
	movabsq	$6148914691236517206, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	imulq	-24(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L269
	movq	-8(%rbp), %rax
	salq	$3, %rax
	addq	%rax, -40(%rbp)
	jmp	.L268
.L269:
	movq	-8(%rbp), %rax
	salq	$3, %rax
	addq	%rax, -40(%rbp)
	movq	-120(%rbp), %rax
	imulq	-24(%rbp), %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rdx
	movl	$0, %eax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	$0, -48(%rbp)
	jmp	.L270
.L272:
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -48(%rbp)
.L270:
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	$2, %rax
	jg	.L271
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-96(%rbp), %rax
	jl	.L272
.L271:
	movq	-48(%rbp), %rax
	addq	%rax, -32(%rbp)
	addq	$8, -40(%rbp)
	jmp	.L273
.L268:
	jmp	.L273
.L278:
	cmpl	$0, -68(%rbp)
	je	.L274
	addq	$5, -64(%rbp)
	movl	$0, -68(%rbp)
	jmp	.L273
.L274:
	movq	$0, -56(%rbp)
	jmp	.L275
.L277:
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -56(%rbp)
.L275:
	cmpq	$2, -56(%rbp)
	jg	.L276
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-96(%rbp), %rax
	jl	.L277
.L276:
	movq	-56(%rbp), %rax
	addq	%rax, -32(%rbp)
	addq	$3, -64(%rbp)
	movl	$1, -68(%rbp)
.L273:
	movq	-32(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.L278
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	get_secure_stack_data, .-get_secure_stack_data
	.globl	set_secure_stack_data
	.type	set_secure_stack_data, @function
set_secure_stack_data:
.LFB75:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movl	%ecx, -108(%rbp)
	movq	%r8, -120(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -68(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpl	$2, -108(%rbp)
	jne	.L280
	movq	$1, -24(%rbp)
	jmp	.L281
.L280:
	movq	-96(%rbp), %rax
	movq	%rax, -24(%rbp)
.L281:
	movq	$0, -64(%rbp)
	cmpl	$0, -108(%rbp)
	je	.L282
	movq	-120(%rbp), %rax
	imulq	-24(%rbp), %rax
	movq	%rax, %rcx
	movabsq	$6148914691236517206, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	imulq	-24(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L283
	movq	-8(%rbp), %rax
	salq	$3, %rax
	addq	%rax, -40(%rbp)
	jmp	.L282
.L283:
	movq	-8(%rbp), %rax
	salq	$3, %rax
	addq	%rax, -40(%rbp)
	movq	-120(%rbp), %rax
	imulq	-24(%rbp), %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rdx
	movl	$0, %eax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	$0, -48(%rbp)
	jmp	.L284
.L286:
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -48(%rbp)
.L284:
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	$2, %rax
	jg	.L285
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-96(%rbp), %rax
	jl	.L286
.L285:
	movq	-48(%rbp), %rax
	addq	%rax, -32(%rbp)
	addq	$8, -40(%rbp)
	jmp	.L287
.L282:
	jmp	.L287
.L292:
	cmpl	$0, -68(%rbp)
	je	.L288
	addq	$5, -64(%rbp)
	movl	$0, -68(%rbp)
	jmp	.L287
.L288:
	movq	$0, -56(%rbp)
	jmp	.L289
.L291:
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -56(%rbp)
.L289:
	cmpq	$2, -56(%rbp)
	jg	.L290
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-96(%rbp), %rax
	jl	.L291
.L290:
	movq	-56(%rbp), %rax
	addq	%rax, -32(%rbp)
	addq	$3, -64(%rbp)
	movl	$1, -68(%rbp)
.L287:
	movq	-32(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.L292
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	set_secure_stack_data, .-set_secure_stack_data
	.globl	allocate_mem_into_secure_stack
	.type	allocate_mem_into_secure_stack, @function
allocate_mem_into_secure_stack:
.LFB76:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$5, -32(%rbp)
	movq	$3, -24(%rbp)
	movq	last_unused_stack_memory(%rip), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L294
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	jmp	.L298
.L294:
	movq	-56(%rbp), %rax
	cqto
	idivq	-24(%rbp)
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	imulq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jge	.L296
	addq	$1, -48(%rbp)
.L296:
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
	ja	.L297
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
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	jmp	.L298
.L297:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
.L298:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	allocate_mem_into_secure_stack, .-allocate_mem_into_secure_stack
	.globl	free_mem_from_secure_stack
	.type	free_mem_from_secure_stack, @function
free_mem_from_secure_stack:
.LFB77:
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
	movq	$3, -8(%rbp)
	movq	-40(%rbp), %rax
	cqto
	idivq	-8(%rbp)
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jge	.L300
	addq	$1, -32(%rbp)
.L300:
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
.LFE77:
	.size	free_mem_from_secure_stack, .-free_mem_from_secure_stack
	.globl	free_chunks_from_secure_stack
	.type	free_chunks_from_secure_stack, @function
free_chunks_from_secure_stack:
.LFB78:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	$5, -24(%rbp)
	movq	$3, -16(%rbp)
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
.LFE78:
	.size	free_chunks_from_secure_stack, .-free_chunks_from_secure_stack
	.globl	init_function_params
	.type	init_function_params, @function
init_function_params:
.LFB79:
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
	je	.L303
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm1, -128(%rbp)
	movaps	%xmm2, -112(%rbp)
	movaps	%xmm3, -96(%rbp)
	movaps	%xmm4, -80(%rbp)
	movaps	%xmm5, -64(%rbp)
	movaps	%xmm6, -48(%rbp)
	movaps	%xmm7, -32(%rbp)
.L303:
	movl	%edi, -260(%rbp)
	movq	$0, -248(%rbp)
	movq	$-1, -240(%rbp)
	movl	$8, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	$555, %edx
	movl	$__func__.4610, %esi
	movl	$24, %edi
	call	error_checking_malloc
	movq	%rax, -232(%rbp)
	cmpl	$0, -260(%rbp)
	je	.L304
	movl	$558, %edx
	movl	$__func__.4610, %esi
	movl	$128, %edi
	call	error_checking_malloc
	movq	-232(%rbp), %rdx
	movq	%rax, 16(%rdx)
	jmp	.L305
.L304:
	movq	-232(%rbp), %rax
	movq	$0, 16(%rax)
.L305:
	cmpl	$0, -260(%rbp)
	je	.L306
	movq	-232(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L307
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L308
.L307:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L308:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, (%rcx)
	movq	-248(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	cmpq	$0, -224(%rbp)
	je	.L309
	movq	-232(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-224(%rbp), %rax
	movl	$570, %edx
	movl	$__func__.4610, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 8(%rbx)
	movq	$0, -256(%rbp)
	jmp	.L310
.L313:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdx
	movq	-256(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L311
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L312
.L311:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L312:
	movl	(%rax), %eax
	movb	%al, (%rcx)
	addq	$1, -256(%rbp)
.L310:
	movq	-256(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L313
	jmp	.L314
.L309:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 8(%rax)
.L314:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L315
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L316
.L315:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L316:
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
	je	.L317
	movq	-232(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-224(%rbp), %rax
	salq	$2, %rax
	movl	$586, %edx
	movl	$__func__.4610, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 24(%rbx)
	movq	$0, -256(%rbp)
	jmp	.L318
.L321:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	-256(%rbp), %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L319
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L320
.L319:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L320:
	movl	(%rax), %eax
	movl	%eax, (%rcx)
	addq	$1, -256(%rbp)
.L318:
	movq	-256(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L321
	jmp	.L322
.L317:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 24(%rax)
.L322:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L323
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L324
.L323:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L324:
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
	je	.L325
	movq	-232(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-224(%rbp), %rax
	salq	$3, %rax
	movl	$602, %edx
	movl	$__func__.4610, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 40(%rbx)
	movq	$0, -256(%rbp)
	jmp	.L326
.L329:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rax
	movq	-256(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L327
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L328
.L327:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L328:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -256(%rbp)
.L326:
	movq	-256(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L329
	jmp	.L330
.L325:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 40(%rax)
.L330:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L331
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L332
.L331:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L332:
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
	je	.L333
	movq	-232(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-224(%rbp), %rax
	salq	$2, %rax
	movl	$618, %edx
	movl	$__func__.4610, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 56(%rbx)
	movq	$0, -256(%rbp)
	jmp	.L334
.L337:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	56(%rax), %rax
	movq	-256(%rbp), %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-212(%rbp), %eax
	cmpl	$176, %eax
	jnb	.L335
	movq	-200(%rbp), %rdx
	movl	-212(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-212(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -212(%rbp)
	jmp	.L336
.L335:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L336:
	movsd	(%rax), %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, (%rcx)
	addq	$1, -256(%rbp)
.L334:
	movq	-256(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L337
	jmp	.L338
.L333:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 56(%rax)
.L338:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L339
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L340
.L339:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L340:
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
	je	.L341
	movq	-232(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-224(%rbp), %rax
	salq	$3, %rax
	movl	$634, %edx
	movl	$__func__.4610, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 72(%rbx)
	movq	$0, -256(%rbp)
	jmp	.L342
.L345:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	72(%rax), %rax
	movq	-256(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-212(%rbp), %eax
	cmpl	$176, %eax
	jnb	.L343
	movq	-200(%rbp), %rdx
	movl	-212(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-212(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -212(%rbp)
	jmp	.L344
.L343:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L344:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -256(%rbp)
.L342:
	movq	-256(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L345
	jmp	.L346
.L341:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 72(%rax)
.L346:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L347
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L348
.L347:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L348:
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
	je	.L349
	movq	-232(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-224(%rbp), %rax
	salq	$3, %rax
	movl	$651, %edx
	movl	$__func__.4610, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 88(%rbx)
	movq	$0, -256(%rbp)
	jmp	.L350
.L353:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	88(%rax), %rax
	movq	-256(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L351
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L352
.L351:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L352:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -256(%rbp)
.L350:
	movq	-256(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L353
	movq	-232(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-224(%rbp), %rax
	salq	$3, %rax
	movl	$656, %edx
	movl	$__func__.4610, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 96(%rbx)
	movq	$0, -256(%rbp)
	jmp	.L354
.L357:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movq	-256(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L355
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L356
.L355:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L356:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -256(%rbp)
.L354:
	movq	-256(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L357
	jmp	.L358
.L349:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 88(%rax)
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 96(%rax)
.L358:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L359
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L360
.L359:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L360:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, 104(%rcx)
	cmpq	$0, -224(%rbp)
	je	.L361
	movq	-232(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-224(%rbp), %rax
	salq	$3, %rax
	movl	$673, %edx
	movl	$__func__.4610, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 112(%rbx)
	movq	$0, -256(%rbp)
	jmp	.L362
.L365:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	112(%rax), %rax
	movq	-256(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L363
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L364
.L363:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L364:
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
.L362:
	movq	-256(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L365
	movq	-232(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-224(%rbp), %rax
	salq	$3, %rax
	movl	$680, %edx
	movl	$__func__.4610, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 120(%rbx)
	movq	$0, -256(%rbp)
	jmp	.L366
.L369:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	120(%rax), %rax
	movq	-256(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L367
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L368
.L367:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L368:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -256(%rbp)
.L366:
	movq	-256(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L369
	jmp	.L306
.L361:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 112(%rax)
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 120(%rax)
.L306:
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
.LFE79:
	.size	init_function_params, .-init_function_params
	.globl	init_function_params_with_uninitialised_elements
	.type	init_function_params_with_uninitialised_elements, @function
init_function_params_with_uninitialised_elements:
.LFB80:
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
	je	.L372
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm1, -128(%rbp)
	movaps	%xmm2, -112(%rbp)
	movaps	%xmm3, -96(%rbp)
	movaps	%xmm4, -80(%rbp)
	movaps	%xmm5, -64(%rbp)
	movaps	%xmm6, -48(%rbp)
	movaps	%xmm7, -32(%rbp)
.L372:
	movl	%edi, -276(%rbp)
	movq	$0, -256(%rbp)
	movq	$-1, -248(%rbp)
	movl	$8, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	$736, %edx
	movl	$__func__.4648, %esi
	movl	$24, %edi
	call	error_checking_malloc
	movq	%rax, -240(%rbp)
	cmpl	$0, -276(%rbp)
	je	.L373
	movl	$739, %edx
	movl	$__func__.4648, %esi
	movl	$128, %edi
	call	error_checking_malloc
	movq	-240(%rbp), %rdx
	movq	%rax, 16(%rdx)
	jmp	.L374
.L373:
	movq	-240(%rbp), %rax
	movq	$0, 16(%rax)
.L374:
	cmpl	$0, -276(%rbp)
	je	.L375
	movq	-240(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L376
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L377
.L376:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L377:
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, (%rcx)
	movq	-256(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	cmpq	$0, -232(%rbp)
	je	.L378
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L379
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L380
.L379:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L380:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-240(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-232(%rbp), %rax
	movl	$752, %edx
	movl	$__func__.4648, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 8(%rbx)
	movq	$0, -264(%rbp)
	jmp	.L381
.L384:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdx
	movq	-264(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L382
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L383
.L382:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L383:
	movl	(%rax), %eax
	movb	%al, (%rcx)
	addq	$1, -264(%rbp)
.L381:
	movq	-264(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L384
	jmp	.L385
.L378:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 8(%rax)
.L385:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L386
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L387
.L386:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L387:
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
	je	.L388
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L389
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L390
.L389:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L390:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-240(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-232(%rbp), %rax
	salq	$2, %rax
	movl	$769, %edx
	movl	$__func__.4648, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 24(%rbx)
	movq	$0, -264(%rbp)
	jmp	.L391
.L394:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	-264(%rbp), %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L392
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L393
.L392:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L393:
	movl	(%rax), %eax
	movl	%eax, (%rcx)
	addq	$1, -264(%rbp)
.L391:
	movq	-264(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L394
	jmp	.L395
.L388:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 24(%rax)
.L395:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L396
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L397
.L396:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L397:
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
	je	.L398
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L399
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L400
.L399:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L400:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-240(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-232(%rbp), %rax
	salq	$3, %rax
	movl	$786, %edx
	movl	$__func__.4648, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 40(%rbx)
	movq	$0, -264(%rbp)
	jmp	.L401
.L404:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rax
	movq	-264(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L402
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L403
.L402:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L403:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -264(%rbp)
.L401:
	movq	-264(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L404
	jmp	.L405
.L398:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 40(%rax)
.L405:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L406
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L407
.L406:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L407:
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
	je	.L408
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L409
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L410
.L409:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L410:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-240(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-232(%rbp), %rax
	salq	$2, %rax
	movl	$803, %edx
	movl	$__func__.4648, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 56(%rbx)
	movq	$0, -264(%rbp)
	jmp	.L411
.L414:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	56(%rax), %rax
	movq	-264(%rbp), %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-212(%rbp), %eax
	cmpl	$176, %eax
	jnb	.L412
	movq	-200(%rbp), %rdx
	movl	-212(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-212(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -212(%rbp)
	jmp	.L413
.L412:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L413:
	movsd	(%rax), %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, (%rcx)
	addq	$1, -264(%rbp)
.L411:
	movq	-264(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L414
	jmp	.L415
.L408:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 56(%rax)
.L415:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L416
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L417
.L416:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L417:
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
	je	.L418
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L419
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L420
.L419:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L420:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-240(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-232(%rbp), %rax
	salq	$3, %rax
	movl	$820, %edx
	movl	$__func__.4648, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 72(%rbx)
	movq	$0, -264(%rbp)
	jmp	.L421
.L424:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	72(%rax), %rax
	movq	-264(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-212(%rbp), %eax
	cmpl	$176, %eax
	jnb	.L422
	movq	-200(%rbp), %rdx
	movl	-212(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-212(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -212(%rbp)
	jmp	.L423
.L422:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L423:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -264(%rbp)
.L421:
	movq	-264(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L424
	jmp	.L425
.L418:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 72(%rax)
.L425:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L426
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L427
.L426:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L427:
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
	je	.L428
	movq	-240(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-232(%rbp), %rax
	salq	$3, %rax
	movl	$836, %edx
	movl	$__func__.4648, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 88(%rbx)
	movq	$0, -264(%rbp)
	jmp	.L429
.L432:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	88(%rax), %rax
	movq	-264(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L430
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L431
.L430:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L431:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -264(%rbp)
.L429:
	movq	-264(%rbp), %rax
	cmpq	-232(%rbp), %rax
	jl	.L432
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L433
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L434
.L433:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L434:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-240(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-232(%rbp), %rax
	salq	$3, %rax
	movl	$843, %edx
	movl	$__func__.4648, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 96(%rbx)
	movq	$0, -264(%rbp)
	jmp	.L435
.L438:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movq	-264(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L436
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L437
.L436:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L437:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -264(%rbp)
.L435:
	movq	-264(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L438
	movq	-224(%rbp), %rax
	movq	%rax, -264(%rbp)
	jmp	.L439
.L440:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movq	-264(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	addq	$1, -264(%rbp)
.L439:
	movq	-264(%rbp), %rax
	cmpq	-232(%rbp), %rax
	jl	.L440
	jmp	.L441
.L428:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 88(%rax)
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 96(%rax)
.L441:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L442
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L443
.L442:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L443:
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, 104(%rcx)
	cmpq	$0, -232(%rbp)
	je	.L444
	movq	-240(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-232(%rbp), %rax
	salq	$3, %rax
	movl	$864, %edx
	movl	$__func__.4648, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 112(%rbx)
	movq	$0, -264(%rbp)
	jmp	.L445
.L448:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	112(%rax), %rax
	movq	-264(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L446
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L447
.L446:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L447:
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
.L445:
	movq	-264(%rbp), %rax
	cmpq	-232(%rbp), %rax
	jl	.L448
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L449
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L450
.L449:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L450:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-240(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-232(%rbp), %rax
	salq	$3, %rax
	movl	$872, %edx
	movl	$__func__.4648, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 120(%rbx)
	movq	$0, -264(%rbp)
	jmp	.L451
.L454:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	120(%rax), %rax
	movq	-264(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L452
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L453
.L452:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L453:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -264(%rbp)
.L451:
	movq	-264(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L454
	movq	-224(%rbp), %rax
	movq	%rax, -264(%rbp)
	jmp	.L455
.L456:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	120(%rax), %rax
	movq	-264(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	addq	$1, -264(%rbp)
.L455:
	movq	-264(%rbp), %rax
	cmpq	-232(%rbp), %rax
	jl	.L456
	jmp	.L375
.L444:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 112(%rax)
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 120(%rax)
.L375:
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
.LFE80:
	.size	init_function_params_with_uninitialised_elements, .-init_function_params_with_uninitialised_elements
	.section	.rodata
.LC77:
	.string	"No parameters? Strange..."
	.text
	.globl	put_fun_params_into_secure_stack
	.type	put_fun_params_into_secure_stack, @function
put_fun_params_into_secure_stack:
.LFB81:
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
	movl	$916, %edx
	movl	$__func__.4691, %esi
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
	je	.L459
	movl	$924, %edx
	movl	$__func__.4691, %esi
	movl	$128, %edi
	call	error_checking_malloc
	movq	-64(%rbp), %rdx
	movq	%rax, 16(%rdx)
	jmp	.L460
.L459:
	movq	-64(%rbp), %rax
	movq	$0, 16(%rax)
	movl	$.LC77, %edi
	call	puts
.L460:
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L461
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
	je	.L462
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_stack_mem
.L462:
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
	je	.L463
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rcx
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
	je	.L464
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rcx
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
	je	.L465
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	56(%rax), %rcx
	movq	-56(%rbp), %rax
	salq	$2, %rax
	movq	-48(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_stack_mem
.L465:
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
	je	.L466
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	72(%rax), %rcx
	movq	-56(%rbp), %rax
	salq	$3, %rax
	movq	-48(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_stack_mem
.L466:
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
	je	.L467
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rcx
	movq	-56(%rbp), %rax
	salq	$3, %rax
	movq	-48(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_stack_mem
.L467:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-56(%rbp), %rax
	salq	$3, %rax
	movl	$1006, %edx
	movl	$__func__.4691, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 88(%rbx)
	movq	$0, -72(%rbp)
	jmp	.L468
.L469:
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
.L468:
	movq	-72(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.L469
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
	movl	$1013, %edx
	movl	$__func__.4691, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 112(%rbx)
	movq	$0, -72(%rbp)
	jmp	.L470
.L471:
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
.L470:
	movq	-72(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.L471
	movq	-64(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-56(%rbp), %rax
	salq	$3, %rax
	movl	$1016, %edx
	movl	$__func__.4691, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 120(%rbx)
	movq	$0, -72(%rbp)
	jmp	.L472
.L474:
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
	je	.L473
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
.L473:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	120(%rax), %rax
	movq	-72(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rdx)
	addq	$1, -72(%rbp)
.L472:
	movq	-72(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.L474
.L461:
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	put_fun_params_into_secure_stack, .-put_fun_params_into_secure_stack
	.globl	free_fun_params
	.type	free_fun_params, @function
free_fun_params:
.LFB82:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L476
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L478
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	$0, -8(%rbp)
	jmp	.L479
.L480:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	120(%rax), %rax
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	addq	$1, -8(%rbp)
.L479:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	104(%rax), %rax
	cmpq	-8(%rbp), %rax
	jg	.L480
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free
.L478:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free
.L476:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	free_fun_params, .-free_fun_params
	.globl	free_fun_params_that_point_to_stack
	.type	free_fun_params_that_point_to_stack, @function
free_fun_params_that_point_to_stack:
.LFB83:
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
.LFE83:
	.size	free_fun_params_that_point_to_stack, .-free_fun_params_that_point_to_stack
	.globl	put_fun_params_into_secure_stack_and_free
	.type	put_fun_params_into_secure_stack_and_free, @function
put_fun_params_into_secure_stack_and_free:
.LFB84:
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
.LFE84:
	.size	put_fun_params_into_secure_stack_and_free, .-put_fun_params_into_secure_stack_and_free
	.globl	get_stack_char
	.type	get_stack_char, @function
get_stack_char:
.LFB85:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
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
.LFE85:
	.size	get_stack_char, .-get_stack_char
	.globl	get_stack_int
	.type	get_stack_int, @function
get_stack_int:
.LFB86:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
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
.LFE86:
	.size	get_stack_int, .-get_stack_int
	.globl	get_stack_long_int
	.type	get_stack_long_int, @function
get_stack_long_int:
.LFB87:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
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
.LFE87:
	.size	get_stack_long_int, .-get_stack_long_int
	.globl	get_stack_pointer
	.type	get_stack_pointer, @function
get_stack_pointer:
.LFB88:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
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
.LFE88:
	.size	get_stack_pointer, .-get_stack_pointer
	.globl	get_stack_float
	.type	get_stack_float, @function
get_stack_float:
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
.LFE89:
	.size	get_stack_float, .-get_stack_float
	.globl	get_stack_double
	.type	get_stack_double, @function
get_stack_double:
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
	movq	%rax, -32(%rbp)
	movsd	-32(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	get_stack_double, .-get_stack_double
	.globl	get_stack_array_element
	.type	get_stack_array_element, @function
get_stack_array_element:
.LFB91:
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
.LFE91:
	.size	get_stack_array_element, .-get_stack_array_element
	.globl	get_stack_char_array_element
	.type	get_stack_char_array_element, @function
get_stack_char_array_element:
.LFB92:
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
.LFE92:
	.size	get_stack_char_array_element, .-get_stack_char_array_element
	.globl	get_stack_int_array_element
	.type	get_stack_int_array_element, @function
get_stack_int_array_element:
.LFB93:
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
.LFE93:
	.size	get_stack_int_array_element, .-get_stack_int_array_element
	.globl	get_stack_long_int_array_element
	.type	get_stack_long_int_array_element, @function
get_stack_long_int_array_element:
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
.LFE94:
	.size	get_stack_long_int_array_element, .-get_stack_long_int_array_element
	.globl	get_stack_pointer_array_element
	.type	get_stack_pointer_array_element, @function
get_stack_pointer_array_element:
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
	movl	$8, %esi
	movq	%rax, %rdi
	call	get_secure_stack_data
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	get_stack_pointer_array_element, .-get_stack_pointer_array_element
	.globl	get_stack_float_array_element
	.type	get_stack_float_array_element, @function
get_stack_float_array_element:
.LFB96:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
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
.LFE96:
	.size	get_stack_float_array_element, .-get_stack_float_array_element
	.globl	get_stack_double_array_element
	.type	get_stack_double_array_element, @function
get_stack_double_array_element:
.LFB97:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
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
.LFE97:
	.size	get_stack_double_array_element, .-get_stack_double_array_element
	.globl	get_arbitrary_block_in_stack
	.type	get_arbitrary_block_in_stack, @function
get_arbitrary_block_in_stack:
.LFB98:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
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
.LFE98:
	.size	get_arbitrary_block_in_stack, .-get_arbitrary_block_in_stack
	.globl	get_arbitrary_block_in_stack_with_offset
	.type	get_arbitrary_block_in_stack_with_offset, @function
get_arbitrary_block_in_stack_with_offset:
.LFB99:
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
.LFE99:
	.size	get_arbitrary_block_in_stack_with_offset, .-get_arbitrary_block_in_stack_with_offset
	.globl	set_stack_char
	.type	set_stack_char, @function
set_stack_char:
.LFB100:
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
.LFE100:
	.size	set_stack_char, .-set_stack_char
	.globl	set_stack_int
	.type	set_stack_int, @function
set_stack_int:
.LFB101:
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
.LFE101:
	.size	set_stack_int, .-set_stack_int
	.globl	set_stack_long_int
	.type	set_stack_long_int, @function
set_stack_long_int:
.LFB102:
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
.LFE102:
	.size	set_stack_long_int, .-set_stack_long_int
	.globl	set_stack_pointer
	.type	set_stack_pointer, @function
set_stack_pointer:
.LFB103:
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
.LFE103:
	.size	set_stack_pointer, .-set_stack_pointer
	.globl	set_stack_float
	.type	set_stack_float, @function
set_stack_float:
.LFB104:
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
.LFE104:
	.size	set_stack_float, .-set_stack_float
	.globl	set_stack_double
	.type	set_stack_double, @function
set_stack_double:
.LFB105:
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
.LFE105:
	.size	set_stack_double, .-set_stack_double
	.globl	set_stack_array_element
	.type	set_stack_array_element, @function
set_stack_array_element:
.LFB106:
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
.LFE106:
	.size	set_stack_array_element, .-set_stack_array_element
	.globl	set_stack_char_array_element
	.type	set_stack_char_array_element, @function
set_stack_char_array_element:
.LFB107:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
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
.LFE107:
	.size	set_stack_char_array_element, .-set_stack_char_array_element
	.globl	set_stack_int_array_element
	.type	set_stack_int_array_element, @function
set_stack_int_array_element:
.LFB108:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
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
.LFE108:
	.size	set_stack_int_array_element, .-set_stack_int_array_element
	.globl	set_stack_long_int_array_element
	.type	set_stack_long_int_array_element, @function
set_stack_long_int_array_element:
.LFB109:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
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
.LFE109:
	.size	set_stack_long_int_array_element, .-set_stack_long_int_array_element
	.globl	set_stack_pointer_array_element
	.type	set_stack_pointer_array_element, @function
set_stack_pointer_array_element:
.LFB110:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
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
.LFE110:
	.size	set_stack_pointer_array_element, .-set_stack_pointer_array_element
	.globl	set_stack_float_array_element
	.type	set_stack_float_array_element, @function
set_stack_float_array_element:
.LFB111:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
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
.LFE111:
	.size	set_stack_float_array_element, .-set_stack_float_array_element
	.globl	set_stack_double_array_element
	.type	set_stack_double_array_element, @function
set_stack_double_array_element:
.LFB112:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
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
.LFE112:
	.size	set_stack_double_array_element, .-set_stack_double_array_element
	.globl	set_arbitrary_block_in_stack
	.type	set_arbitrary_block_in_stack, @function
set_arbitrary_block_in_stack:
.LFB113:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
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
.LFE113:
	.size	set_arbitrary_block_in_stack, .-set_arbitrary_block_in_stack
	.globl	set_arbitrary_block_in_stack_with_offset
	.type	set_arbitrary_block_in_stack_with_offset, @function
set_arbitrary_block_in_stack_with_offset:
.LFB114:
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
.LFE114:
	.size	set_arbitrary_block_in_stack_with_offset, .-set_arbitrary_block_in_stack_with_offset
	.section	.rodata
.LC78:
	.string	"Printing stack memory:"
	.text
	.globl	print_stack_mem
	.type	print_stack_mem, @function
print_stack_mem:
.LFB115:
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
	movl	$.LC78, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L527
.L528:
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
.L527:
	movq	total_stack_bytes_allocated(%rip), %rax
	cmpq	%rax, -16(%rbp)
	jl	.L528
	movl	$10, %edi
	call	putchar
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE115:
	.size	print_stack_mem, .-print_stack_mem
	.section	.rodata
.LC79:
	.string	"Printing fun params:"
	.align 8
.LC80:
	.string	"Total size of all params in bytes: %ld\n"
	.align 8
.LC81:
	.string	"Total amount of chunks needed in secure stack: %ld\n"
.LC82:
	.string	"Number of char elements: %ld\n"
.LC83:
	.string	"Char elements:"
.LC84:
	.string	"%c "
.LC85:
	.string	"Number of int elements: %ld\n"
.LC86:
	.string	"Int elements:"
	.align 8
.LC87:
	.string	"Number of long int elements: %ld\n"
.LC88:
	.string	"Long int elements:"
.LC89:
	.string	"%ld "
	.align 8
.LC90:
	.string	"Number of float elements: %ld\n"
.LC91:
	.string	"Float elements:"
.LC92:
	.string	"%f "
	.align 8
.LC93:
	.string	"Number of double elements: %ld\n"
.LC94:
	.string	"Double elements:"
.LC95:
	.string	"%lf "
	.align 8
.LC96:
	.string	"Number of pointer elements: %ld\n"
.LC97:
	.string	"Pointer element sizes:"
.LC98:
	.string	"pointer elements:"
	.align 8
.LC99:
	.string	"Number of arb pointer elements: %ld\n"
.LC100:
	.string	"Arb pointer element sizes:"
.LC101:
	.string	"Arb pointers:"
	.text
	.globl	print_fun_params
	.type	print_fun_params, @function
print_fun_params:
.LFB116:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$.LC79, %edi
	call	puts
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC80, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC81, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC82, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L530
	movl	$.LC83, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L531
.L532:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC84, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L531:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L532
	movl	$10, %edi
	call	putchar
.L530:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC85, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L533
	movl	$.LC86, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L534
.L535:
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
.L534:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L535
	movl	$10, %edi
	call	putchar
.L533:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC87, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L536
	movl	$.LC88, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L537
.L538:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC89, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L537:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L538
	movl	$10, %edi
	call	putchar
.L536:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC90, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L539
	movl	$.LC91, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L540
.L541:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	movl	$.LC92, %edi
	movl	$1, %eax
	call	printf
	addq	$1, -16(%rbp)
.L540:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L541
	movl	$10, %edi
	call	putchar
.L539:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC93, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L542
	movl	$.LC94, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L543
.L544:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	72(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movsd	-32(%rbp), %xmm0
	movl	$.LC95, %edi
	movl	$1, %eax
	call	printf
	addq	$1, -16(%rbp)
.L543:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L544
	movl	$10, %edi
	call	putchar
.L542:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC96, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L545
	movl	$.LC97, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L546
.L547:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	88(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC89, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L546:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L547
	movl	$10, %edi
	call	putchar
	movl	$.LC98, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L548
.L549:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC89, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L548:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L549
	movl	$10, %edi
	call	putchar
.L545:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	104(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC99, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L529
	movl	$.LC100, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L551
.L552:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	112(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC89, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L551:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L552
	movl	$10, %edi
	call	putchar
	movl	$.LC101, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L553
.L554:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	120(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
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
.L529:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE116:
	.size	print_fun_params, .-print_fun_params
	.section	.rodata
	.align 8
.LC102:
	.string	"Printing fun params that point in stack:"
	.text
	.globl	print_fun_params_that_point_in_stack
	.type	print_fun_params_that_point_in_stack, @function
print_fun_params_that_point_in_stack:
.LFB117:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$.LC102, %edi
	call	puts
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC80, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC81, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC82, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L556
	movl	$.LC83, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L557
.L558:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_stack_char_array_element
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC84, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L557:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L558
	movl	$10, %edi
	call	putchar
.L556:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC85, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L559
	movl	$.LC86, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L560
.L561:
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
.L560:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L561
	movl	$10, %edi
	call	putchar
.L559:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC87, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L562
	movl	$.LC88, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L563
.L564:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_stack_long_int_array_element
	movq	%rax, %rsi
	movl	$.LC89, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L563:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L564
	movl	$10, %edi
	call	putchar
.L562:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC90, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L565
	movl	$.LC91, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L566
.L567:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_stack_float_array_element
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	movl	$.LC92, %edi
	movl	$1, %eax
	call	printf
	addq	$1, -16(%rbp)
.L566:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L567
	movl	$10, %edi
	call	putchar
.L565:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC93, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L568
	movl	$.LC94, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L569
.L570:
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
	movl	$.LC95, %edi
	movl	$1, %eax
	call	printf
	addq	$1, -16(%rbp)
.L569:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L570
	movl	$10, %edi
	call	putchar
.L568:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC96, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L571
	movl	$.LC97, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L572
.L573:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	88(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC89, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L572:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L573
	movl	$10, %edi
	call	putchar
	movl	$.LC98, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L574
.L575:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_stack_pointer_array_element
	movq	%rax, %rsi
	movl	$.LC89, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L574:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L575
	movl	$10, %edi
	call	putchar
.L571:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	104(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC99, %edi
	movl	$0, %eax
	call	printf
	cmpq	$0, -8(%rbp)
	jle	.L555
	movl	$.LC100, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L577
.L578:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	112(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC89, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L577:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L578
	movl	$10, %edi
	call	putchar
	movl	$.LC101, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L579
.L580:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	120(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC89, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L579:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L580
	movl	$10, %edi
	call	putchar
.L555:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE117:
	.size	print_fun_params_that_point_in_stack, .-print_fun_params_that_point_in_stack
	.globl	tower_of_Hanoi_init_secure_template
	.type	tower_of_Hanoi_init_secure_template, @function
tower_of_Hanoi_init_secure_template:
.LFB118:
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
	movq	$3, -56(%rbp)
	movzbl	-88(%rbp), %eax
	movb	%al, -80(%rbp)
	movzbl	-92(%rbp), %eax
	movb	%al, -79(%rbp)
	movzbl	-96(%rbp), %eax
	movb	%al, -78(%rbp)
	movl	$1546, %edx
	movl	$__func__.4948, %esi
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
	ja	.L582
	addq	$1, -72(%rbp)
.L582:
	movq	-56(%rbp), %rcx
	movl	$4, %eax
	movl	$0, %edx
	divq	%rcx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	imulq	-56(%rbp), %rax
	cmpq	$3, %rax
	ja	.L583
	addq	$1, -64(%rbp)
.L583:
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$1556, %edx
	movl	$__func__.4948, %esi
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
	je	.L584
	movq	-40(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$3, %edi
	call	insert_data_into_stack_mem
.L584:
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
	je	.L585
	movq	-40(%rbp), %rdx
	leaq	-84(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	insert_data_into_stack_mem
.L585:
	movq	-48(%rbp), %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE118:
	.size	tower_of_Hanoi_init_secure_template, .-tower_of_Hanoi_init_secure_template
	.section	.rodata
.LC103:
	.string	"Allocating double array"
.LC104:
	.string	"Initializing fun params"
	.align 8
.LC107:
	.string	"Inserting fun params into secure stack"
.LC108:
	.string	"Printing chars"
.LC109:
	.string	"Printing ints"
.LC110:
	.string	"Printing doubles"
.LC111:
	.string	"Changing pointer"
.LC112:
	.string	"Printing array of doubles"
.LC113:
	.string	"i=%d, %lf "
	.align 8
.LC114:
	.string	"Fetching double array using arbitrary block"
	.align 8
.LC115:
	.string	"Fetching double array elements (one by one), using arbitrary blocks"
	.text
	.globl	stack_fun_params_test
	.type	stack_fun_params_test, @function
stack_fun_params_test:
.LFB119:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movl	$.LC103, %edi
	call	puts
	movl	$9, %edx
	movl	$__func__.4954, %esi
	movl	$80, %edi
	call	error_checking_malloc
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L588
.L589:
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
.L588:
	cmpl	$9, -20(%rbp)
	jle	.L589
	movl	$.LC104, %edi
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
	movl	$.LC107, %edi
	call	puts
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	put_fun_params_into_secure_stack_and_free
	movq	%rax, -8(%rbp)
	movl	$.LC108, %edi
	call	puts
	movl	$0, -20(%rbp)
	jmp	.L590
.L591:
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
	movl	$.LC84, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -20(%rbp)
.L590:
	cmpl	$4, -20(%rbp)
	jle	.L591
	movl	$10, %edi
	call	putchar
	movl	$.LC109, %edi
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
	movl	$.LC110, %edi
	call	puts
	movl	$0, -20(%rbp)
	jmp	.L594
.L595:
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
	movl	$.LC95, %edi
	movl	$1, %eax
	call	printf
	addl	$1, -20(%rbp)
.L594:
	cmpl	$1, -20(%rbp)
	jle	.L595
	movl	$10, %edi
	call	putchar
	movl	$.LC111, %edi
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
	movl	$.LC109, %edi
	call	puts
	movl	$0, -20(%rbp)
	jmp	.L596
.L597:
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
.L596:
	cmpl	$1, -20(%rbp)
	jle	.L597
	movl	$10, %edi
	call	putchar
	movl	$.LC112, %edi
	call	puts
	movl	$0, -20(%rbp)
	jmp	.L598
.L599:
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
	movl	$.LC113, %edi
	movl	$1, %eax
	call	printf
	addl	$1, -20(%rbp)
.L598:
	cmpl	$9, -20(%rbp)
	jle	.L599
	movl	$.LC114, %edi
	call	puts
	movl	$57, %edx
	movl	$__func__.4954, %esi
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
	jmp	.L600
.L601:
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
.L600:
	cmpl	$9, -20(%rbp)
	jle	.L601
	movl	$10, %edi
	call	putchar
	movl	$.LC115, %edi
	call	puts
	movl	$66, %edx
	movl	$__func__.4954, %esi
	movl	$80, %edi
	call	error_checking_malloc
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L602
.L603:
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
.L602:
	cmpl	$9, -20(%rbp)
	jle	.L603
	movl	$10, %edi
	call	putchar
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE119:
	.size	stack_fun_params_test, .-stack_fun_params_test
	.globl	towerOfHanoi
	.type	towerOfHanoi, @function
towerOfHanoi:
.LFB120:
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
	jne	.L605
	jmp	.L604
.L605:
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
.L604:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE120:
	.size	towerOfHanoi, .-towerOfHanoi
	.globl	towerOfHanoi_secure
	.type	towerOfHanoi_secure, @function
towerOfHanoi_secure:
.LFB121:
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
	jne	.L608
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free_chunks_from_secure_stack
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free_fun_params_that_point_to_stack
	jmp	.L607
.L608:
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
.L607:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE121:
	.size	towerOfHanoi_secure, .-towerOfHanoi_secure
	.globl	towerOfHanoi_secure_using_template
	.type	towerOfHanoi_secure_using_template, @function
towerOfHanoi_secure_using_template:
.LFB122:
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
	jne	.L611
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free_chunks_from_secure_stack
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free_fun_params_that_point_to_stack
	jmp	.L610
.L611:
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
.L610:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE122:
	.size	towerOfHanoi_secure_using_template, .-towerOfHanoi_secure_using_template
	.globl	towerOfHanoi_secure_using_changed_accesses
	.type	towerOfHanoi_secure_using_changed_accesses, @function
towerOfHanoi_secure_using_changed_accesses:
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
	jne	.L614
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free_chunks_from_secure_stack
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free_fun_params_that_point_to_stack
	jmp	.L613
.L614:
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
.L613:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE123:
	.size	towerOfHanoi_secure_using_changed_accesses, .-towerOfHanoi_secure_using_changed_accesses
	.comm	sa,152,32
	.globl	check_next_canaries
	.type	check_next_canaries, @function
check_next_canaries:
.LFB124:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L617
.L620:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$66, %al
	je	.L618
	movl	$0, %eax
	jmp	.L619
.L618:
	addl	$1, -4(%rbp)
.L617:
	cmpl	$1, -4(%rbp)
	jle	.L620
	movl	$1, %eax
.L619:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE124:
	.size	check_next_canaries, .-check_next_canaries
	.section	.rodata
.LC116:
	.string	"key no%d=0x%02x\n"
	.text
	.globl	find_keyshares
	.type	find_keyshares, @function
find_keyshares:
.LFB125:
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
	jmp	.L622
.L623:
	movl	-100(%rbp), %eax
	cltq
	movb	$0, -16(%rbp,%rax)
	addl	$1, -100(%rbp)
.L622:
	cmpl	$4, -100(%rbp)
	jle	.L623
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.L624
.L628:
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-21, %al
	jne	.L625
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$7, %al
	jne	.L625
	movq	-88(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	call	check_next_canaries
	testl	%eax, %eax
	je	.L625
	movl	$0, -100(%rbp)
	jmp	.L626
.L627:
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
.L626:
	cmpl	$4, -100(%rbp)
	jle	.L627
.L625:
	addq	$1, -88(%rbp)
.L624:
	movq	-88(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jbe	.L628
	movl	$0, -96(%rbp)
	movq	entire_memory_chunk(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -80(%rbp)
	jmp	.L629
.L633:
	cmpl	$0, -96(%rbp)
	jne	.L630
	addq	$4, -80(%rbp)
	movl	$1, -96(%rbp)
	jmp	.L629
.L630:
	movl	$0, -100(%rbp)
	jmp	.L631
.L632:
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
.L631:
	cmpl	$4, -100(%rbp)
	jle	.L632
	addq	$5, -80(%rbp)
	movl	$0, -96(%rbp)
.L629:
	movq	total_bytes_allocated(%rip), %rax
	cmpq	%rax, -80(%rbp)
	jl	.L633
	movl	$0, -96(%rbp)
	movq	entire_stack_memory_chunk(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -72(%rbp)
	jmp	.L634
.L638:
	cmpl	$0, -96(%rbp)
	jne	.L635
	addq	$3, -72(%rbp)
	movl	$1, -96(%rbp)
	jmp	.L634
.L635:
	movl	$0, -100(%rbp)
	jmp	.L636
.L637:
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
.L636:
	cmpl	$4, -100(%rbp)
	jle	.L637
	addq	$5, -72(%rbp)
	movl	$0, -96(%rbp)
.L634:
	movq	total_stack_bytes_allocated(%rip), %rax
	cmpq	%rax, -72(%rbp)
	jl	.L638
	movl	$10, %edi
	call	putchar
	movl	$0, -100(%rbp)
	jmp	.L639
.L640:
	movl	-100(%rbp), %eax
	cltq
	movzbl	-16(%rbp,%rax), %eax
	movzbl	%al, %edx
	movl	-100(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC116, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -100(%rbp)
.L639:
	cmpl	$4, -100(%rbp)
	jle	.L640
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L642
	call	__stack_chk_fail
.L642:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE125:
	.size	find_keyshares, .-find_keyshares
	.section	.rodata
.LC117:
	.string	"Verification requested!"
	.text
	.globl	verification_procedure
	.type	verification_procedure, @function
verification_procedure:
.LFB126:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$.LC117, %edi
	call	puts
	movl	$0, %eax
	call	find_keyshares
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE126:
	.size	verification_procedure, .-verification_procedure
	.section	.rodata
	.align 8
.LC118:
	.string	"Going to find primes up to %d\n"
.LC119:
	.string	"Initialized parameters."
.LC120:
	.string	"Allocated space"
.LC121:
	.string	"Set 2 as first prime"
.LC122:
	.string	"\nPrimes:"
.LC123:
	.string	"\n"
.LC124:
	.string	"Total number of primes:%d\n"
	.text
	.globl	find_primes_up_to_a_number
	.type	find_primes_up_to_a_number, @function
find_primes_up_to_a_number:
.LFB127:
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
	movl	$.LC118, %edi
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
	movl	$.LC119, %edi
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
	movl	$__func__.5074, %esi
	movq	%rax, %rdi
	call	error_checking_managed_secure_malloc
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_stack_pointer_array_element
	movl	$.LC120, %edi
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
	movl	$.LC121, %edi
	call	puts
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
	jmp	.L645
.L651:
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
	jmp	.L646
.L649:
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
	jne	.L647
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_stack_char_array_element
	jmp	.L648
.L647:
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
.L646:
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
	jle	.L649
.L648:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_char_array_element
	testb	%al, %al
	jne	.L650
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
.L650:
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
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	cmpl	%eax, %ebx
	jle	.L651
	movl	$.LC122, %edi
	call	puts
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
	jmp	.L652
.L653:
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
.L652:
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
	jl	.L653
	movl	$.LC123, %edi
	call	puts
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %esi
	movl	$.LC124, %edi
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
.LFE127:
	.size	find_primes_up_to_a_number, .-find_primes_up_to_a_number
	.section	.rodata
.LC125:
	.string	"Initializing heap memory"
	.align 8
.LC126:
	.string	"bytes_to_allocate_on_start:%d\n"
.LC127:
	.string	"Init_mem, alloc+key insertion"
	.align 8
.LC128:
	.string	"If successful, total bytes allocated:%ld\n"
.LC129:
	.string	"Initializing stack memory"
	.align 8
.LC130:
	.string	"Stack bytes_to_allocate_on_start:%d\n"
	.align 8
.LC131:
	.string	"Init_stack_mem, alloc+key insertion"
	.text
	.globl	init_heap_and_stack_mem
	.type	init_heap_and_stack_mem, @function
init_heap_and_stack_mem:
.LFB128:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$.LC125, %edi
	call	puts
	movl	$2048, %esi
	movl	$.LC126, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC127, %edi
	call	puts
	movl	$0, %eax
	call	init_mem
	movq	total_bytes_allocated(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC128, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC129, %edi
	call	puts
	movl	$2048, %esi
	movl	$.LC130, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC131, %edi
	call	puts
	movl	$0, %eax
	call	init_stack_mem
	movq	total_stack_bytes_allocated(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC128, %edi
	movl	$0, %eax
	call	printf
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE128:
	.size	init_heap_and_stack_mem, .-init_heap_and_stack_mem
	.section	.rodata
.LC132:
	.string	"Installing signal handler"
	.align 8
.LC133:
	.string	"Could not install signal handler"
.LC134:
	.string	"Signal handler installed"
	.text
	.globl	install_signal_handler
	.type	install_signal_handler, @function
install_signal_handler:
.LFB129:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$.LC132, %edi
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
	jne	.L656
	movl	$.LC133, %edi
	call	perror
	movl	$45, %edi
	call	exit
.L656:
	movl	$.LC134, %edi
	call	puts
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE129:
	.size	install_signal_handler, .-install_signal_handler
	.globl	free_heap_and_stack_memory
	.type	free_heap_and_stack_memory, @function
free_heap_and_stack_memory:
.LFB130:
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
.LFE130:
	.size	free_heap_and_stack_memory, .-free_heap_and_stack_memory
	.local	static_global_variable_for_testing
	.comm	static_global_variable_for_testing,4,4
	.globl	foo
	.type	foo, @function
foo:
.LFB131:
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
.LFE131:
	.size	foo, .-foo
	.section	.rodata
.LC135:
	.string	"My pid=%ld\n"
.LC136:
	.string	"K=%d\n"
.LC137:
	.string	"n=%d\n"
.LC138:
	.string	"main is at %p\n"
.LC139:
	.string	"Going to find keyshares."
	.text
	.globl	main
	.type	main, @function
main:
.LFB132:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -48(%rbp)
	movl	$2, -44(%rbp)
	addl	$1, -44(%rbp)
	addl	$1, -44(%rbp)
	subl	$1, -44(%rbp)
	movl	-44(%rbp), %eax
	addl	%eax, -48(%rbp)
	addl	$2, -48(%rbp)
	addl	$1, -44(%rbp)
	movl	$1, static_main_variable_for_testing.5103(%rip)
	movl	$2, static_global_variable_for_testing(%rip)
	movl	$0, %eax
	call	init_heap_and_stack_mem
	movl	$0, %eax
	call	install_signal_handler
	call	getpid
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	cltq
	movq	%rax, %rsi
	movl	$.LC135, %edi
	movl	$0, %eax
	call	printf
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC136, %edi
	movl	$0, %eax
	call	printf
	movl	$5, %edi
	call	foo
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	foo2
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC137, %edi
	movl	$0, %eax
	call	printf
	movl	$main, %esi
	movl	$.LC138, %edi
	movl	$0, %eax
	call	printf
	movl	$100, %edi
	call	find_primes_up_to_a_number
	movl	$10, %edi
	call	putchar
	movl	$.LC139, %edi
	call	puts
	movl	$0, %eax
	call	find_keyshares
	movl	$0, %eax
	call	free_heap_and_stack_memory
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L662
	call	__stack_chk_fail
.L662:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE132:
	.size	main, .-main
	.globl	foo2
	.type	foo2, @function
foo2:
.LFB133:
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
.LFE133:
	.size	foo2, .-foo2
	.section	.rodata
	.type	__func__.3962, @object
	.size	__func__.3962, 11
__func__.3962:
	.string	"alloc_list"
	.align 16
	.type	__func__.3971, @object
	.size	__func__.3971, 17
__func__.3971:
	.string	"add_node_to_list"
	.type	__func__.4015, @object
	.size	__func__.4015, 13
__func__.4015:
	.string	"allocate_mem"
	.align 16
	.type	__func__.4294, @object
	.size	__func__.4294, 16
__func__.4294:
	.string	"check_and_merge"
	.align 16
	.type	__func__.4310, @object
	.size	__func__.4310, 20
__func__.4310:
	.string	"managed_secure_free"
	.type	__func__.4361, @object
	.size	__func__.4361, 9
__func__.4361:
	.string	"mem_test"
	.align 32
	.type	__func__.4429, @object
	.size	__func__.4429, 32
__func__.4429:
	.string	"adding_heap_arrays_time_measure"
	.align 16
	.type	__func__.4486, @object
	.size	__func__.4486, 19
__func__.4486:
	.string	"allocate_stack_mem"
	.align 16
	.type	__func__.4610, @object
	.size	__func__.4610, 21
__func__.4610:
	.string	"init_function_params"
	.align 32
	.type	__func__.4648, @object
	.size	__func__.4648, 49
__func__.4648:
	.string	"init_function_params_with_uninitialised_elements"
	.align 32
	.type	__func__.4691, @object
	.size	__func__.4691, 33
__func__.4691:
	.string	"put_fun_params_into_secure_stack"
	.align 32
	.type	__func__.4948, @object
	.size	__func__.4948, 36
__func__.4948:
	.string	"tower_of_Hanoi_init_secure_template"
	.align 16
	.type	__func__.4954, @object
	.size	__func__.4954, 22
__func__.4954:
	.string	"stack_fun_params_test"
	.align 16
	.type	__func__.5074, @object
	.size	__func__.5074, 27
__func__.5074:
	.string	"find_primes_up_to_a_number"
	.local	static_main_variable_for_testing.5103
	.comm	static_main_variable_for_testing.5103,4,4
	.align 8
.LC66:
	.long	0
	.long	1071644672
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
