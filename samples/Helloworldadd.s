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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$42, %edi
	call	exit
.L2:
	movq	-8(%rbp), %rax
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
	jmp	.L7
.L10:
	movl	$67, %edx
	movl	$__func__.3804, %esi
	movl	$32, %edi
	call	error_checking_malloc
	movq	%rax, -24(%rbp)
	cmpq	$1, -8(%rbp)
	jne	.L8
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.L8:
	cmpq	$1, -8(%rbp)
	jle	.L9
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L9:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	addq	$1, -8(%rbp)
.L7:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jle	.L10
	cmpq	$0, -40(%rbp)
	jle	.L11
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 24(%rax)
.L11:
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
	movl	$__func__.3813, %esi
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
	jne	.L14
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	jmp	.L15
.L14:
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
.L15:
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
	jne	.L17
	cmpq	$0, -8(%rbp)
	jne	.L17
	movq	$0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	jmp	.L18
.L17:
	cmpq	$0, -16(%rbp)
	jne	.L19
	cmpq	$0, -8(%rbp)
	je	.L19
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	jmp	.L18
.L19:
	cmpq	$0, -16(%rbp)
	je	.L20
	cmpq	$0, -8(%rbp)
	jne	.L20
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	jmp	.L18
.L20:
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
.L18:
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
	jne	.L22
	jmp	.L21
.L22:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.L25:
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	delete_node_from_list
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L24
	jmp	.L21
.L24:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L25
.L21:
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
	jne	.L27
	movl	$.LC1, %edi
	call	puts
	jmp	.L26
.L27:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L29
.L30:
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
.L29:
	cmpq	$0, -16(%rbp)
	jne	.L30
.L26:
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
	jne	.L37
	movl	$.LC5, %edi
	call	puts
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.L38
.L37:
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
.L38:
	movq	-64(%rbp), %rax
	movl	$293, %edx
	movl	$__func__.3857, %esi
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
.LFE15:
	.size	secure_malloc, .-secure_malloc
	.section	.rodata
	.align 8
.LC7:
	.string	"Attempted to read more keyshares that the ones stored\n"
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
	je	.L45
	movl	$.LC7, %edi
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
.LFE17:
	.size	insert_keys_into_mem, .-insert_keys_into_mem
	.section	.rodata
.LC8:
	.string	"Printing heap memory:"
.LC9:
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
	movl	$.LC8, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L55
.L56:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC9, %edi
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
.LFE21:
	.size	set_secure_data, .-set_secure_data
	.section	.rodata
.LC10:
	.string	"rb"
.LC11:
	.string	"heap_keyshares"
	.align 8
.LC12:
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
	movl	$.LC10, %esi
	movl	$.LC11, %edi
	call	fopen
	movq	%rax, keyshare_input_file(%rip)
	movq	keyshare_input_file(%rip), %rax
	testq	%rax, %rax
	jne	.L90
	movl	$.LC12, %edi
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
	.globl	set_char
	.type	set_char, @function
set_char:
.LFB38:
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
.LFE38:
	.size	set_char, .-set_char
	.globl	set_int
	.type	set_int, @function
set_int:
.LFB39:
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
.LFE39:
	.size	set_int, .-set_int
	.globl	set_long_int
	.type	set_long_int, @function
set_long_int:
.LFB40:
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
.LFE40:
	.size	set_long_int, .-set_long_int
	.globl	set_pointer
	.type	set_pointer, @function
set_pointer:
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
	.size	set_pointer, .-set_pointer
	.globl	set_float
	.type	set_float, @function
set_float:
.LFB42:
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
.LFE42:
	.size	set_float, .-set_float
	.globl	set_double
	.type	set_double, @function
set_double:
.LFB43:
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
.LFE43:
	.size	set_double, .-set_double
	.globl	set_array_element
	.type	set_array_element, @function
set_array_element:
.LFB44:
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
.LFE44:
	.size	set_array_element, .-set_array_element
	.globl	set_char_array_element
	.type	set_char_array_element, @function
set_char_array_element:
.LFB45:
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
.LFE45:
	.size	set_char_array_element, .-set_char_array_element
	.globl	set_int_array_element
	.type	set_int_array_element, @function
set_int_array_element:
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
.LFE46:
	.size	set_int_array_element, .-set_int_array_element
	.globl	set_long_int_array_element
	.type	set_long_int_array_element, @function
set_long_int_array_element:
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
.LFE47:
	.size	set_long_int_array_element, .-set_long_int_array_element
	.globl	set_pointer_array_element
	.type	set_pointer_array_element, @function
set_pointer_array_element:
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
	.size	set_pointer_array_element, .-set_pointer_array_element
	.globl	set_float_array_element
	.type	set_float_array_element, @function
set_float_array_element:
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
.LFE49:
	.size	set_float_array_element, .-set_float_array_element
	.globl	set_double_array_element
	.type	set_double_array_element, @function
set_double_array_element:
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
.LFE50:
	.size	set_double_array_element, .-set_double_array_element
	.globl	set_arbitrary_block_in_heap
	.type	set_arbitrary_block_in_heap, @function
set_arbitrary_block_in_heap:
.LFB51:
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
.LFE51:
	.size	set_arbitrary_block_in_heap, .-set_arbitrary_block_in_heap
	.globl	find_large_enough_free_group
	.type	find_large_enough_free_group, @function
find_large_enough_free_group:
.LFB52:
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
.LFE52:
	.size	find_large_enough_free_group, .-find_large_enough_free_group
	.globl	find_which_group_to_free
	.type	find_which_group_to_free, @function
find_which_group_to_free:
.LFB53:
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
.LFE53:
	.size	find_which_group_to_free, .-find_which_group_to_free
	.globl	check_and_merge
	.type	check_and_merge, @function
check_and_merge:
.LFB54:
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
	movl	$904, %edx
	movl	$__func__.4122, %esi
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
.LFE54:
	.size	check_and_merge, .-check_and_merge
	.globl	managed_secure_malloc
	.type	managed_secure_malloc, @function
managed_secure_malloc:
.LFB55:
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
	jge	.L152
	addq	$1, -48(%rbp)
.L152:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	find_large_enough_free_group
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L153
	movl	$0, %eax
	jmp	.L157
.L153:
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
	jne	.L155
	movq	free_chunks_list(%rip), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	delete_node_from_list
	movq	%rax, free_chunks_list(%rip)
	movq	free_chunks_num(%rip), %rax
	subq	$1, %rax
	movq	%rax, free_chunks_num(%rip)
	jmp	.L156
.L155:
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
.L156:
	movq	-24(%rbp), %rax
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	managed_secure_malloc, .-managed_secure_malloc
	.globl	managed_secure_free
	.type	managed_secure_free, @function
managed_secure_free:
.LFB56:
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
	jne	.L159
	movl	$0, %eax
	jmp	.L160
.L159:
	movl	$997, %edx
	movl	$__func__.4138, %esi
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
	jne	.L161
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
	jmp	.L162
.L161:
	movq	$0, -32(%rbp)
	jmp	.L163
.L166:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jle	.L164
	jmp	.L165
.L164:
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
.L163:
	cmpq	$0, -40(%rbp)
	jne	.L166
.L165:
	cmpq	$0, -32(%rbp)
	jne	.L167
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
	je	.L168
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$free_chunks_list, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_and_merge
	movq	%rax, -24(%rbp)
	jmp	.L169
.L171:
	movq	free_chunks_num(%rip), %rax
	subq	$1, %rax
	movq	%rax, free_chunks_num(%rip)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L170
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$free_chunks_list, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_and_merge
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L169
	jmp	.L168
.L170:
	jmp	.L168
.L169:
	cmpq	$0, -24(%rbp)
	jne	.L171
.L168:
	movl	$1, -44(%rbp)
	jmp	.L162
.L167:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L172
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jge	.L172
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
	je	.L173
	movq	free_chunks_num(%rip), %rax
	subq	$1, %rax
	movq	%rax, free_chunks_num(%rip)
.L173:
	movl	$1, -44(%rbp)
	jmp	.L162
.L172:
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
	jne	.L174
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$free_chunks_list, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_and_merge
	movq	%rax, -24(%rbp)
	jmp	.L175
.L174:
	jmp	.L175
.L178:
	movq	free_chunks_num(%rip), %rax
	subq	$1, %rax
	movq	%rax, free_chunks_num(%rip)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L176
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$free_chunks_list, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_and_merge
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L175
	jmp	.L177
.L176:
	jmp	.L177
.L175:
	cmpq	$0, -24(%rbp)
	jne	.L178
.L177:
	movl	$1, -44(%rbp)
.L162:
	movl	-44(%rbp), %eax
.L160:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	managed_secure_free, .-managed_secure_free
	.section	.rodata
	.align 8
.LC13:
	.string	"Managed secure malloc error n function %s, line %d\n"
	.text
	.globl	error_checking_managed_secure_malloc
	.type	error_checking_managed_secure_malloc, @function
error_checking_managed_secure_malloc:
.LFB57:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L180
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$52, %edi
	call	exit
.L180:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	error_checking_managed_secure_malloc, .-error_checking_managed_secure_malloc
	.globl	insert_data_into_normal_array
	.type	insert_data_into_normal_array, @function
insert_data_into_normal_array:
.LFB58:
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
	jmp	.L183
.L184:
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
.L183:
	movl	-4(%rbp), %eax
	cltq
	cmpq	-24(%rbp), %rax
	jl	.L184
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	insert_data_into_normal_array, .-insert_data_into_normal_array
	.section	.rodata
	.align 8
.LC14:
	.string	"Zero hex test printing: 0x%02x \n"
.LC15:
	.string	"Starting mem test"
.LC16:
	.string	"chunks:%ld\n"
.LC17:
	.string	"After init, print mem"
.LC18:
	.string	"Trying to secure malloc"
	.align 8
.LC19:
	.string	"After malloc,try to insert some data"
	.align 8
.LC20:
	.string	"Now let's retrieve the data and display them"
.LC21:
	.string	"%d "
	.align 8
.LC22:
	.string	"Again, Trying to secure malloc"
	.align 8
.LC23:
	.string	"Again, after malloc,try to insert some data"
	.align 8
.LC24:
	.string	"After displaying the two arrays:"
.LC25:
	.string	"After freeing one of them:"
	.align 8
.LC26:
	.string	"Now trying to store and retrieve 424242424..."
.LC27:
	.string	"\n\n%d \n\n"
.LC28:
	.string	"After retrieving int:"
	.align 8
.LC29:
	.string	"After freeing the second array:"
.LC30:
	.string	"After freeing the int:"
.LC31:
	.string	"Testing wrapper functions"
.LC32:
	.string	"Got %d\n"
.LC33:
	.string	"Got %c\n"
.LC34:
	.string	"Got %ld\n"
.LC35:
	.string	"After long int printing:"
.LC36:
	.string	"After long int free:"
.LC37:
	.string	"After another char alloc:"
.LC39:
	.string	"Got %lf\n"
.LC40:
	.string	"After double alloc:"
	.align 8
.LC41:
	.string	"Array wrapper function testing"
.LC45:
	.string	"array index 2 is %lf\n"
.LC46:
	.string	"array index 3 is %lf\n"
.LC47:
	.string	"\n\n"
	.align 8
.LC48:
	.string	"After data retrieval, print mem"
.LC49:
	.string	"Mem test done"
	.text
	.globl	mem_test
	.type	mem_test, @function
mem_test:
.LFB59:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	$20, -128(%rbp)
	movl	$0, %esi
	movl	$.LC14, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC15, %edi
	call	puts
	movq	entire_memory_chunk(%rip), %rax
	movq	%rax, -120(%rbp)
	movq	total_bytes_allocated(%rip), %rax
	movq	%rax, %rdi
	call	find_number_of_useful_chunks
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC16, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC17, %edi
	call	puts
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	print_mem
	movq	-128(%rbp), %rax
	salq	$2, %rax
	movl	$60, %edx
	movl	$__func__.4189, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, -104(%rbp)
	movq	-128(%rbp), %rax
	salq	$2, %rax
	movl	$61, %edx
	movl	$__func__.4189, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, -96(%rbp)
	movq	$5, -144(%rbp)
	jmp	.L186
.L187:
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
.L186:
	movq	-128(%rbp), %rax
	addq	$5, %rax
	cmpq	-144(%rbp), %rax
	jg	.L187
	movl	$.LC18, %edi
	call	puts
	movq	-128(%rbp), %rax
	salq	$2, %rax
	movl	$70, %edx
	movl	$__func__.4189, %esi
	movq	%rax, %rdi
	call	error_checking_managed_secure_malloc
	movq	%rax, -88(%rbp)
	movl	$.LC19, %edi
	call	puts
	movq	-128(%rbp), %rax
	salq	$2, %rax
	movq	-88(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_mem
	movl	$.LC20, %edi
	call	puts
	movl	$78, %edx
	movl	$__func__.4189, %esi
	movl	$4, %edi
	call	error_checking_malloc
	movq	%rax, -80(%rbp)
	movq	$0, -136(%rbp)
	jmp	.L188
.L189:
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
	movl	$.LC21, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -136(%rbp)
.L188:
	movq	-136(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jl	.L189
	movl	$10, %edi
	call	putchar
	movl	$.LC22, %edi
	call	puts
	movq	-128(%rbp), %rax
	salq	$2, %rax
	movl	$91, %edx
	movl	$__func__.4189, %esi
	movq	%rax, %rdi
	call	error_checking_managed_secure_malloc
	movq	%rax, -72(%rbp)
	movq	$5, -144(%rbp)
	jmp	.L190
.L191:
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
.L190:
	movq	-128(%rbp), %rax
	addq	$5, %rax
	cmpq	-144(%rbp), %rax
	jg	.L191
	movl	$.LC23, %edi
	call	puts
	movq	-128(%rbp), %rax
	salq	$2, %rax
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_mem
	movl	$.LC20, %edi
	call	puts
	movq	$0, -136(%rbp)
	jmp	.L192
.L193:
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
	movl	$.LC21, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -136(%rbp)
.L192:
	movq	-136(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jl	.L193
	movl	$10, %edi
	call	putchar
	movl	$.LC24, %edi
	call	puts
	movl	$0, %eax
	call	print_lists
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movl	$.LC25, %edi
	call	puts
	movl	$0, %eax
	call	print_lists
	movl	$.LC26, %edi
	call	puts
	movl	$120, %edx
	movl	$__func__.4189, %esi
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
	movl	$__func__.4189, %esi
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
	movl	$.LC27, %edi
	movl	$0, %eax
	call	printf
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$.LC28, %edi
	call	puts
	movl	$0, %eax
	call	print_lists
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movl	$.LC29, %edi
	call	puts
	movl	$0, %eax
	call	print_lists
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movl	$.LC30, %edi
	call	puts
	movl	$0, %eax
	call	print_lists
	movl	$.LC31, %edi
	call	puts
	movl	$146, %edx
	movl	$__func__.4189, %esi
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
	movl	$.LC32, %edi
	movl	$0, %eax
	call	printf
	movl	$152, %edx
	movl	$__func__.4189, %esi
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
	movl	$.LC33, %edi
	movl	$0, %eax
	call	printf
	movl	$158, %edx
	movl	$__func__.4189, %esi
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
	movl	$.LC34, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC35, %edi
	call	puts
	movl	$0, %eax
	call	print_lists
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movl	$.LC36, %edi
	call	puts
	movl	$0, %eax
	call	print_lists
	movl	$172, %edx
	movl	$__func__.4189, %esi
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
	movl	$.LC33, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC37, %edi
	call	puts
	movl	$0, %eax
	call	print_lists
	movl	$182, %edx
	movl	$__func__.4189, %esi
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
	movl	$.LC39, %edi
	movl	$1, %eax
	call	printf
	movl	$.LC40, %edi
	call	puts
	movl	$0, %eax
	call	print_lists
	movl	$.LC41, %edi
	call	puts
	movl	$193, %edx
	movl	$__func__.4189, %esi
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
	movl	$.LC45, %edi
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
	movl	$.LC46, %edi
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
	movl	$.LC46, %edi
	movl	$1, %eax
	call	printf
	movl	$.LC47, %edi
	call	puts
	movl	$.LC48, %edi
	call	puts
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	print_mem
	movl	$.LC49, %edi
	call	puts
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	mem_test, .-mem_test
	.section	.rodata
.LC50:
	.string	"a---------"
.LC51:
	.string	"Returned NULL! -.- 1"
.LC52:
	.string	"b---------"
.LC53:
	.string	"Returned NULL! -.- 2"
.LC54:
	.string	"c---------"
.LC55:
	.string	"Returned NULL! -.- 3"
.LC56:
	.string	"d---------"
.LC57:
	.string	"Something went wrong"
.LC58:
	.string	"e---------"
.LC59:
	.string	"Returned NULL! -.- 4"
.LC60:
	.string	"f---------"
.LC61:
	.string	"Returned NULL! -.- 5"
.LC62:
	.string	"g---------"
	.text
	.globl	list_test
	.type	list_test, @function
list_test:
.LFB60:
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
	movl	$.LC50, %edi
	call	puts
	movl	$101, %edi
	call	managed_secure_malloc
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L195
	movl	$.LC51, %edi
	call	puts
.L195:
	movl	$0, %eax
	call	print_lists
	movl	$.LC52, %edi
	call	puts
	movl	$42, %edi
	call	managed_secure_malloc
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L196
	movl	$.LC53, %edi
	call	puts
.L196:
	movl	$0, %eax
	call	print_lists
	movl	$.LC54, %edi
	call	puts
	movl	$61, %edi
	call	managed_secure_malloc
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L197
	movl	$.LC55, %edi
	call	puts
.L197:
	movl	$0, %eax
	call	print_lists
	movl	$.LC56, %edi
	call	puts
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.L198
	movl	$.LC57, %edi
	call	puts
.L198:
	movl	$0, %eax
	call	print_lists
	movl	$.LC58, %edi
	call	puts
	movl	$80, %edi
	call	managed_secure_malloc
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L199
	movl	$.LC59, %edi
	call	puts
.L199:
	movl	$0, %eax
	call	print_lists
	movl	$.LC60, %edi
	call	puts
	movl	$29, %edi
	call	managed_secure_malloc
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L200
	movl	$.LC61, %edi
	call	puts
.L200:
	movl	$0, %eax
	call	print_lists
	movl	$.LC62, %edi
	call	puts
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	managed_secure_free
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.L201
	movl	$.LC57, %edi
	call	puts
.L201:
	movl	$0, %eax
	call	print_lists
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	list_test, .-list_test
	.section	.rodata
.LC63:
	.string	"Need more mem!"
.LC64:
	.string	"setting"
.LC66:
	.string	"adding"
.LC67:
	.string	"printing"
.LC68:
	.string	"%lg "
.LC69:
	.string	"freeing"
	.text
	.globl	simple_array_tests
	.type	simple_array_tests, @function
simple_array_tests:
.LFB61:
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
	jne	.L203
	movl	$.LC63, %edi
	call	puts
	movl	$42, %edi
	call	exit
.L203:
	movl	$.LC64, %edi
	call	puts
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_int
	jmp	.L204
.L205:
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
	movsd	.LC65(%rip), %xmm1
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
.L204:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_int
	movslq	%eax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	get_long_int
	cmpq	%rax, %rbx
	jl	.L205
	movl	$.LC66, %edi
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
	movl	%eax, %esi
	movl	$.LC21, %edi
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
	movl	$10, %edi
	call	putchar
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
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_double_array_element
	movsd	%xmm0, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	movl	$.LC68, %edi
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
	movl	$.LC69, %edi
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
.LFE61:
	.size	simple_array_tests, .-simple_array_tests
	.comm	total_stack_bytes_allocated,8,8
	.comm	entire_stack_memory_chunk,8,8
	.comm	last_unused_stack_memory,8,8
	.comm	stack_keyshare_input_file,8,8
	.globl	find_number_of_useful_stack_chunks
	.type	find_number_of_useful_stack_chunks, @function
find_number_of_useful_stack_chunks:
.LFB62:
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
.LFE62:
	.size	find_number_of_useful_stack_chunks, .-find_number_of_useful_stack_chunks
	.globl	get_ptr_size
	.type	get_ptr_size, @function
get_ptr_size:
.LFB63:
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
.LFE63:
	.size	get_ptr_size, .-get_ptr_size
	.section	.rodata
	.align 8
.LC70:
	.string	"Stack: Great!. No need to allocate more than the defined amount."
	.align 8
.LC71:
	.string	"Stack: Whoops. We need to allocate a bit more space."
	.text
	.globl	allocate_stack_mem
	.type	allocate_stack_mem, @function
allocate_stack_mem:
.LFB64:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	$1024, -56(%rbp)
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
	jne	.L217
	movl	$.LC70, %edi
	call	puts
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.L218
.L217:
	movl	$.LC71, %edi
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
.L218:
	movq	-64(%rbp), %rax
	movl	$144, %edx
	movl	$__func__.4295, %esi
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
.LFE64:
	.size	allocate_stack_mem, .-allocate_stack_mem
	.globl	free_secure_stack_mem
	.type	free_secure_stack_mem, @function
free_secure_stack_mem:
.LFB65:
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
.LFE65:
	.size	free_secure_stack_mem, .-free_secure_stack_mem
	.section	.rodata
	.align 8
.LC72:
	.string	"Stack:Attempted to read more keyshares that the ones stored\n"
	.text
	.globl	get_next_stack_keyshare
	.type	get_next_stack_keyshare, @function
get_next_stack_keyshare:
.LFB66:
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
	je	.L222
	movl	$.LC72, %edi
	call	perror
	movl	$45, %edi
	call	exit
.L222:
	movq	stack_keyshare_input_file(%rip), %rdx
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
.LFE66:
	.size	get_next_stack_keyshare, .-get_next_stack_keyshare
	.globl	insert_keys_into_stack_mem
	.type	insert_keys_into_stack_mem, @function
insert_keys_into_stack_mem:
.LFB67:
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
	jmp	.L225
.L230:
	cmpl	$0, -52(%rbp)
	je	.L226
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$0, %eax
	call	get_next_stack_keyshare
	movb	%al, (%rbx)
	addq	$1, -32(%rbp)
	addq	$1, -48(%rbp)
	jmp	.L227
.L226:
	movq	$0, -40(%rbp)
	jmp	.L228
.L229:
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	addq	$1, -40(%rbp)
.L228:
	cmpq	$2, -40(%rbp)
	jle	.L229
	addq	$3, -48(%rbp)
	movl	$1, -52(%rbp)
.L227:
	cmpq	$5, -32(%rbp)
	jne	.L225
	movl	$0, -52(%rbp)
	movq	$0, -32(%rbp)
.L225:
	movq	total_stack_bytes_allocated(%rip), %rax
	cmpq	%rax, -48(%rbp)
	jl	.L230
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	insert_keys_into_stack_mem, .-insert_keys_into_stack_mem
	.section	.rodata
.LC73:
	.string	"stack_keyshares"
	.align 8
.LC74:
	.string	"init_mem:stack_keyshares file error\n"
	.text
	.globl	init_stack_mem
	.type	init_stack_mem, @function
init_stack_mem:
.LFB68:
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
	movl	$.LC10, %esi
	movl	$.LC73, %edi
	call	fopen
	movq	%rax, stack_keyshare_input_file(%rip)
	movq	stack_keyshare_input_file(%rip), %rax
	testq	%rax, %rax
	jne	.L232
	movl	$.LC74, %edi
	call	perror
	movl	$46, %edi
	call	exit
.L232:
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
.LFE68:
	.size	init_stack_mem, .-init_stack_mem
	.section	.rodata
.LC75:
	.string	"Printing stack memory:"
	.text
	.globl	print_stack_mem
	.type	print_stack_mem, @function
print_stack_mem:
.LFB69:
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
	movl	$.LC75, %edi
	call	puts
	movq	$0, -16(%rbp)
	jmp	.L235
.L236:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L235:
	movq	total_stack_bytes_allocated(%rip), %rax
	cmpq	%rax, -16(%rbp)
	jl	.L236
	movl	$10, %edi
	call	putchar
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	print_stack_mem, .-print_stack_mem
	.globl	insert_data_into_stack_mem
	.type	insert_data_into_stack_mem, @function
insert_data_into_stack_mem:
.LFB70:
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
	jmp	.L238
.L243:
	cmpl	$0, -44(%rbp)
	je	.L239
	addq	$5, -40(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L238
.L239:
	movq	$0, -32(%rbp)
	jmp	.L240
.L242:
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
.L240:
	cmpq	$2, -32(%rbp)
	jg	.L241
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-56(%rbp), %rax
	jl	.L242
.L241:
	movq	-32(%rbp), %rax
	addq	%rax, -16(%rbp)
	addq	$1, -24(%rbp)
	addq	$3, -40(%rbp)
	movl	$1, -44(%rbp)
.L238:
	movq	-16(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.L243
	movq	-24(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	insert_data_into_stack_mem, .-insert_data_into_stack_mem
	.globl	get_secure_stack_data
	.type	get_secure_stack_data, @function
get_secure_stack_data:
.LFB71:
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
	je	.L246
	movq	-104(%rbp), %rax
	imulq	-80(%rbp), %rax
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
	movq	-104(%rbp), %rax
	imulq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L247
	movq	-8(%rbp), %rax
	salq	$3, %rax
	addq	%rax, -32(%rbp)
	jmp	.L246
.L247:
	movq	-8(%rbp), %rax
	salq	$3, %rax
	addq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	imulq	-80(%rbp), %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rdx
	movl	$0, %eax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L248
.L250:
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
.L248:
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	$2, %rax
	jg	.L249
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-80(%rbp), %rax
	jl	.L250
.L249:
	movq	-40(%rbp), %rax
	addq	%rax, -24(%rbp)
	addq	$8, -32(%rbp)
	jmp	.L251
.L246:
	jmp	.L251
.L256:
	cmpl	$0, -60(%rbp)
	je	.L252
	addq	$5, -56(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L251
.L252:
	movq	$0, -48(%rbp)
	jmp	.L253
.L255:
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
.L253:
	cmpq	$2, -48(%rbp)
	jg	.L254
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-80(%rbp), %rax
	jl	.L255
.L254:
	movq	-48(%rbp), %rax
	addq	%rax, -24(%rbp)
	addq	$3, -56(%rbp)
	movl	$1, -60(%rbp)
.L251:
	movq	-24(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jl	.L256
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	get_secure_stack_data, .-get_secure_stack_data
	.globl	set_secure_stack_data
	.type	set_secure_stack_data, @function
set_secure_stack_data:
.LFB72:
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
	je	.L258
	movq	-104(%rbp), %rax
	imulq	-80(%rbp), %rax
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
	movq	-104(%rbp), %rax
	imulq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L259
	movq	-8(%rbp), %rax
	salq	$3, %rax
	addq	%rax, -32(%rbp)
	jmp	.L258
.L259:
	movq	-8(%rbp), %rax
	salq	$3, %rax
	addq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	imulq	-80(%rbp), %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rdx
	movl	$0, %eax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L260
.L262:
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
.L260:
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	$2, %rax
	jg	.L261
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-80(%rbp), %rax
	jl	.L262
.L261:
	movq	-40(%rbp), %rax
	addq	%rax, -24(%rbp)
	addq	$8, -32(%rbp)
	jmp	.L263
.L258:
	jmp	.L263
.L268:
	cmpl	$0, -60(%rbp)
	je	.L264
	addq	$5, -56(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L263
.L264:
	movq	$0, -48(%rbp)
	jmp	.L265
.L267:
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
.L265:
	cmpq	$2, -48(%rbp)
	jg	.L266
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-80(%rbp), %rax
	jl	.L267
.L266:
	movq	-48(%rbp), %rax
	addq	%rax, -24(%rbp)
	addq	$3, -56(%rbp)
	movl	$1, -60(%rbp)
.L263:
	movq	-24(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jl	.L268
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	set_secure_stack_data, .-set_secure_stack_data
	.globl	allocate_mem_into_secure_stack
	.type	allocate_mem_into_secure_stack, @function
allocate_mem_into_secure_stack:
.LFB73:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	last_unused_stack_memory(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$5, -16(%rbp)
	movq	$3, -8(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L270
	movl	$0, %eax
	jmp	.L271
.L270:
	movq	-56(%rbp), %rax
	cqto
	idivq	-8(%rbp)
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	imulq	-8(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jge	.L272
	addq	$1, -40(%rbp)
.L272:
	movq	last_unused_stack_memory(%rip), %rdx
	movq	-40(%rbp), %rax
	imulq	-8(%rbp), %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	imulq	-16(%rbp), %rax
	addq	%rcx, %rax
	addq	%rdx, %rax
	movq	%rax, last_unused_stack_memory(%rip)
	movq	-32(%rbp), %rax
.L271:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	allocate_mem_into_secure_stack, .-allocate_mem_into_secure_stack
	.globl	init_function_params
	.type	init_function_params, @function
init_function_params:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$264, %rsp
	.cfi_offset 3, -24
	movl	%edi, -260(%rbp)
	movq	%rdx, -176(%rbp)
	movq	%rcx, -168(%rbp)
	movq	%r8, -160(%rbp)
	movq	%r9, -152(%rbp)
	testb	%al, %al
	je	.L274
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm1, -128(%rbp)
	movaps	%xmm2, -112(%rbp)
	movaps	%xmm3, -96(%rbp)
	movaps	%xmm4, -80(%rbp)
	movaps	%xmm5, -64(%rbp)
	movaps	%xmm6, -48(%rbp)
	movaps	%xmm7, -32(%rbp)
.L274:
	movl	%esi, -264(%rbp)
	movq	$0, -240(%rbp)
	movl	$16, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	$514, %edx
	movl	$__func__.4409, %esi
	movl	$24, %edi
	call	error_checking_malloc
	movq	%rax, -232(%rbp)
	cmpl	$0, -260(%rbp)
	je	.L275
	movl	$517, %edx
	movl	$__func__.4409, %esi
	movl	$128, %edi
	call	error_checking_malloc
	movq	-232(%rbp), %rdx
	movq	%rax, 8(%rdx)
	jmp	.L276
.L275:
	movq	-232(%rbp), %rax
	movq	$0, 8(%rax)
.L276:
	cmpl	$0, -264(%rbp)
	je	.L277
	movl	$522, %edx
	movl	$__func__.4409, %esi
	movl	$152, %edi
	call	error_checking_malloc
	movq	-232(%rbp), %rdx
	movq	%rax, 16(%rdx)
	jmp	.L278
.L277:
	movq	-232(%rbp), %rax
	movq	$0, 16(%rax)
.L278:
	cmpl	$0, -260(%rbp)
	je	.L344
	movq	-232(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L280
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L281
.L280:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L281:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, (%rcx)
	movq	-240(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -240(%rbp)
	cmpq	$0, -224(%rbp)
	je	.L282
	movq	-232(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-224(%rbp), %rax
	movl	$533, %edx
	movl	$__func__.4409, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 8(%rbx)
	movq	$0, -248(%rbp)
	jmp	.L283
.L286:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movq	-248(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L284
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L285
.L284:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L285:
	movl	(%rax), %eax
	movb	%al, (%rcx)
	addq	$1, -248(%rbp)
.L283:
	movq	-248(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L286
	jmp	.L287
.L282:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 8(%rax)
.L287:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L288
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L289
.L288:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L289:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-224(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-240(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -240(%rbp)
	cmpq	$0, -224(%rbp)
	je	.L290
	movq	-232(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-224(%rbp), %rax
	salq	$2, %rax
	movl	$549, %edx
	movl	$__func__.4409, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 24(%rbx)
	movq	$0, -248(%rbp)
	jmp	.L291
.L294:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	-248(%rbp), %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L292
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L293
.L292:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L293:
	movl	(%rax), %eax
	movl	%eax, (%rcx)
	addq	$1, -248(%rbp)
.L291:
	movq	-248(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L294
	jmp	.L295
.L290:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 24(%rax)
.L295:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L296
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L297
.L296:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L297:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, 32(%rcx)
	movq	-224(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-240(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -240(%rbp)
	cmpq	$0, -224(%rbp)
	je	.L298
	movq	-232(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-224(%rbp), %rax
	salq	$3, %rax
	movl	$565, %edx
	movl	$__func__.4409, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 40(%rbx)
	movq	$0, -248(%rbp)
	jmp	.L299
.L302:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rax
	movq	-248(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L300
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L301
.L300:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L301:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -248(%rbp)
.L299:
	movq	-248(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L302
	jmp	.L303
.L298:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 40(%rax)
.L303:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L304
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L305
.L304:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L305:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, 48(%rcx)
	movq	-224(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-240(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -240(%rbp)
	cmpq	$0, -224(%rbp)
	je	.L306
	movq	-232(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-224(%rbp), %rax
	salq	$2, %rax
	movl	$581, %edx
	movl	$__func__.4409, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 56(%rbx)
	movq	$0, -248(%rbp)
	jmp	.L307
.L310:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	movq	-248(%rbp), %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-212(%rbp), %eax
	cmpl	$176, %eax
	jnb	.L308
	movq	-200(%rbp), %rdx
	movl	-212(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-212(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -212(%rbp)
	jmp	.L309
.L308:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L309:
	movsd	(%rax), %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, (%rcx)
	addq	$1, -248(%rbp)
.L307:
	movq	-248(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L310
	jmp	.L311
.L306:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 56(%rax)
.L311:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L312
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L313
.L312:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L313:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, 64(%rcx)
	movq	-224(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-240(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -240(%rbp)
	cmpq	$0, -224(%rbp)
	je	.L314
	movq	-232(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-224(%rbp), %rax
	salq	$3, %rax
	movl	$597, %edx
	movl	$__func__.4409, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 72(%rbx)
	movq	$0, -248(%rbp)
	jmp	.L315
.L318:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	72(%rax), %rax
	movq	-248(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-212(%rbp), %eax
	cmpl	$176, %eax
	jnb	.L316
	movq	-200(%rbp), %rdx
	movl	-212(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-212(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -212(%rbp)
	jmp	.L317
.L316:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L317:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -248(%rbp)
.L315:
	movq	-248(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L318
	jmp	.L319
.L314:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 72(%rax)
.L319:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L320
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L321
.L320:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L321:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, 80(%rcx)
	movq	-224(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-240(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -240(%rbp)
	cmpq	$0, -224(%rbp)
	je	.L322
	movq	-232(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-224(%rbp), %rax
	salq	$3, %rax
	movl	$614, %edx
	movl	$__func__.4409, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 88(%rbx)
	movq	$0, -248(%rbp)
	jmp	.L323
.L326:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	88(%rax), %rax
	movq	-248(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L324
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L325
.L324:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L325:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -248(%rbp)
.L323:
	movq	-248(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L326
	movq	-232(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-224(%rbp), %rax
	salq	$3, %rax
	movl	$620, %edx
	movl	$__func__.4409, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 96(%rbx)
	movq	$0, -248(%rbp)
	jmp	.L327
.L330:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	96(%rax), %rax
	movq	-248(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L328
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L329
.L328:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L329:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -248(%rbp)
.L327:
	movq	-248(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L330
	jmp	.L331
.L322:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 88(%rax)
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 96(%rax)
.L331:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L332
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L333
.L332:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L333:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, 104(%rcx)
	movq	-224(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-240(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -240(%rbp)
	cmpq	$0, -224(%rbp)
	je	.L334
	movq	-232(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-224(%rbp), %rax
	salq	$3, %rax
	movl	$638, %edx
	movl	$__func__.4409, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 112(%rbx)
	movq	$0, -248(%rbp)
	jmp	.L335
.L338:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	-248(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L336
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L337
.L336:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L337:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	-248(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	%rax, -240(%rbp)
	addq	$1, -248(%rbp)
.L335:
	movq	-248(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L338
	movq	-232(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-224(%rbp), %rax
	salq	$3, %rax
	movl	$645, %edx
	movl	$__func__.4409, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 120(%rbx)
	movq	$0, -248(%rbp)
	jmp	.L339
.L342:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	120(%rax), %rax
	movq	-248(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L340
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L341
.L340:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L341:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -248(%rbp)
.L339:
	movq	-248(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L342
	jmp	.L344
.L334:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 112(%rax)
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 120(%rax)
.L344:
	movq	-232(%rbp), %rax
	movq	-240(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-232(%rbp), %rax
	addq	$264, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	init_function_params, .-init_function_params
	.globl	init_function_params_with_uninitialised_elements
	.type	init_function_params_with_uninitialised_elements, @function
init_function_params_with_uninitialised_elements:
.LFB75:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$264, %rsp
	.cfi_offset 3, -24
	movl	%edi, -260(%rbp)
	movq	%rdx, -176(%rbp)
	movq	%rcx, -168(%rbp)
	movq	%r8, -160(%rbp)
	movq	%r9, -152(%rbp)
	testb	%al, %al
	je	.L346
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm1, -128(%rbp)
	movaps	%xmm2, -112(%rbp)
	movaps	%xmm3, -96(%rbp)
	movaps	%xmm4, -80(%rbp)
	movaps	%xmm5, -64(%rbp)
	movaps	%xmm6, -48(%rbp)
	movaps	%xmm7, -32(%rbp)
.L346:
	movl	%esi, -264(%rbp)
	movq	$0, -248(%rbp)
	movl	$16, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	$705, %edx
	movl	$__func__.4447, %esi
	movl	$24, %edi
	call	error_checking_malloc
	movq	%rax, -240(%rbp)
	cmpl	$0, -260(%rbp)
	je	.L347
	movl	$708, %edx
	movl	$__func__.4447, %esi
	movl	$128, %edi
	call	error_checking_malloc
	movq	-240(%rbp), %rdx
	movq	%rax, 8(%rdx)
	jmp	.L348
.L347:
	movq	-240(%rbp), %rax
	movq	$0, 8(%rax)
.L348:
	cmpl	$0, -264(%rbp)
	je	.L349
	movl	$713, %edx
	movl	$__func__.4447, %esi
	movl	$152, %edi
	call	error_checking_malloc
	movq	-240(%rbp), %rdx
	movq	%rax, 16(%rdx)
	jmp	.L350
.L349:
	movq	-240(%rbp), %rax
	movq	$0, 16(%rax)
.L350:
	cmpl	$0, -260(%rbp)
	je	.L434
	movq	-240(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L352
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L353
.L352:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L353:
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, (%rcx)
	movq	-248(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	cmpq	$0, -232(%rbp)
	je	.L354
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
	movq	%rax, -224(%rbp)
	movq	-240(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-232(%rbp), %rax
	movl	$725, %edx
	movl	$__func__.4447, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 8(%rbx)
	movq	$0, -256(%rbp)
	jmp	.L357
.L360:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movq	-256(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L358
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L359
.L358:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L359:
	movl	(%rax), %eax
	movb	%al, (%rcx)
	addq	$1, -256(%rbp)
.L357:
	movq	-256(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L360
	jmp	.L361
.L354:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 8(%rax)
.L361:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L362
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L363
.L362:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L363:
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-232(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	cmpq	$0, -232(%rbp)
	je	.L364
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
	movq	%rax, -224(%rbp)
	movq	-240(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-232(%rbp), %rax
	salq	$2, %rax
	movl	$742, %edx
	movl	$__func__.4447, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 24(%rbx)
	movq	$0, -256(%rbp)
	jmp	.L367
.L370:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	-256(%rbp), %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L368
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L369
.L368:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L369:
	movl	(%rax), %eax
	movl	%eax, (%rcx)
	addq	$1, -256(%rbp)
.L367:
	movq	-256(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L370
	jmp	.L371
.L364:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 24(%rax)
.L371:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L372
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L373
.L372:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L373:
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, 32(%rcx)
	movq	-232(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	cmpq	$0, -232(%rbp)
	je	.L374
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L375
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L376
.L375:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L376:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-240(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-232(%rbp), %rax
	salq	$3, %rax
	movl	$759, %edx
	movl	$__func__.4447, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 40(%rbx)
	movq	$0, -256(%rbp)
	jmp	.L377
.L380:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rax
	movq	-256(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L378
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L379
.L378:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L379:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -256(%rbp)
.L377:
	movq	-256(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L380
	jmp	.L381
.L374:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 40(%rax)
.L381:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rcx
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
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, 48(%rcx)
	movq	-232(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	cmpq	$0, -232(%rbp)
	je	.L384
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L385
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L386
.L385:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L386:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-240(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-232(%rbp), %rax
	salq	$2, %rax
	movl	$776, %edx
	movl	$__func__.4447, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 56(%rbx)
	movq	$0, -256(%rbp)
	jmp	.L387
.L390:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	movq	-256(%rbp), %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-212(%rbp), %eax
	cmpl	$176, %eax
	jnb	.L388
	movq	-200(%rbp), %rdx
	movl	-212(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-212(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -212(%rbp)
	jmp	.L389
.L388:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L389:
	movsd	(%rax), %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, (%rcx)
	addq	$1, -256(%rbp)
.L387:
	movq	-256(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L390
	jmp	.L391
.L384:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 56(%rax)
.L391:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rcx
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
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, 64(%rcx)
	movq	-232(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	cmpq	$0, -232(%rbp)
	je	.L394
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L395
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L396
.L395:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L396:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-240(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-232(%rbp), %rax
	salq	$3, %rax
	movl	$793, %edx
	movl	$__func__.4447, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 72(%rbx)
	movq	$0, -256(%rbp)
	jmp	.L397
.L400:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	72(%rax), %rax
	movq	-256(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-212(%rbp), %eax
	cmpl	$176, %eax
	jnb	.L398
	movq	-200(%rbp), %rdx
	movl	-212(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-212(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -212(%rbp)
	jmp	.L399
.L398:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L399:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -256(%rbp)
.L397:
	movq	-256(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L400
	jmp	.L401
.L394:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 72(%rax)
.L401:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rcx
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
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, 80(%rcx)
	movq	-232(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	cmpq	$0, -232(%rbp)
	je	.L404
	movq	-240(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-232(%rbp), %rax
	salq	$3, %rax
	movl	$809, %edx
	movl	$__func__.4447, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 88(%rbx)
	movq	$0, -256(%rbp)
	jmp	.L405
.L408:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	88(%rax), %rax
	movq	-256(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
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
	movq	%rax, (%rcx)
	addq	$1, -256(%rbp)
.L405:
	movq	-256(%rbp), %rax
	cmpq	-232(%rbp), %rax
	jl	.L408
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
	movq	8(%rax), %rbx
	movq	-232(%rbp), %rax
	salq	$3, %rax
	movl	$816, %edx
	movl	$__func__.4447, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 96(%rbx)
	movq	$0, -256(%rbp)
	jmp	.L411
.L414:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	96(%rax), %rax
	movq	-256(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L412
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L413
.L412:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L413:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	addq	$1, -256(%rbp)
.L411:
	movq	-256(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L414
	movq	-224(%rbp), %rax
	movq	%rax, -256(%rbp)
	jmp	.L415
.L416:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	96(%rax), %rax
	movq	-256(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	addq	$1, -256(%rbp)
.L415:
	movq	-256(%rbp), %rax
	cmpq	-232(%rbp), %rax
	jl	.L416
	jmp	.L417
.L404:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 88(%rax)
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 96(%rax)
.L417:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L418
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L419
.L418:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L419:
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, 104(%rcx)
	movq	-232(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	cmpq	$0, -232(%rbp)
	je	.L420
	movq	-240(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-232(%rbp), %rax
	salq	$3, %rax
	movl	$838, %edx
	movl	$__func__.4447, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 112(%rbx)
	movq	$0, -256(%rbp)
	jmp	.L421
.L424:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	-256(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L422
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L423
.L422:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L423:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	-256(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	%rax, -248(%rbp)
	addq	$1, -256(%rbp)
.L421:
	movq	-256(%rbp), %rax
	cmpq	-232(%rbp), %rax
	jl	.L424
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L425
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L426
.L425:
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -208(%rbp)
.L426:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-240(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-232(%rbp), %rax
	salq	$3, %rax
	movl	$846, %edx
	movl	$__func__.4447, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 120(%rbx)
	movq	$0, -256(%rbp)
	jmp	.L427
.L430:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	120(%rax), %rax
	movq	-256(%rbp), %rdx
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
	addq	$1, -256(%rbp)
.L427:
	movq	-256(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jl	.L430
	movq	-224(%rbp), %rax
	movq	%rax, -256(%rbp)
	jmp	.L431
.L432:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	120(%rax), %rax
	movq	-256(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	addq	$1, -256(%rbp)
.L431:
	movq	-256(%rbp), %rax
	cmpq	-232(%rbp), %rax
	jl	.L432
	jmp	.L434
.L420:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 112(%rax)
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 120(%rax)
.L434:
	movq	-240(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-240(%rbp), %rax
	addq	$264, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	init_function_params_with_uninitialised_elements, .-init_function_params_with_uninitialised_elements
	.globl	put_fun_params_into_secure_stack
	.type	put_fun_params_into_secure_stack, @function
put_fun_params_into_secure_stack:
.LFB76:
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
	movl	$894, %edx
	movl	$__func__.4489, %esi
	movl	$24, %edi
	call	error_checking_malloc
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L436
	movl	$901, %edx
	movl	$__func__.4489, %esi
	movl	$128, %edi
	call	error_checking_malloc
	movq	-48(%rbp), %rdx
	movq	%rax, 8(%rdx)
	jmp	.L437
.L436:
	movq	-48(%rbp), %rax
	movq	$0, 8(%rax)
.L437:
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L438
	movl	$906, %edx
	movl	$__func__.4489, %esi
	movl	$152, %edi
	call	error_checking_malloc
	movq	-48(%rbp), %rdx
	movq	%rax, 16(%rdx)
	jmp	.L439
.L438:
	movq	-48(%rbp), %rax
	movq	$0, 16(%rax)
.L439:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L440
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	allocate_mem_into_secure_stack
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	cmpq	$0, -32(%rbp)
	je	.L441
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_stack_mem
.L441:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, 16(%rax)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	allocate_mem_into_secure_stack
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -32(%rbp)
	je	.L442
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	salq	$2, %rax
	movq	-32(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_stack_mem
.L442:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	allocate_mem_into_secure_stack
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 40(%rax)
	cmpq	$0, -32(%rbp)
	je	.L443
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rcx
	movq	-40(%rbp), %rax
	salq	$3, %rax
	movq	-32(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_stack_mem
.L443:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	%rdx, 48(%rax)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	allocate_mem_into_secure_stack
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 56(%rax)
	cmpq	$0, -32(%rbp)
	je	.L444
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rcx
	movq	-40(%rbp), %rax
	salq	$2, %rax
	movq	-32(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_stack_mem
.L444:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	64(%rdx), %rdx
	movq	%rdx, 64(%rax)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	allocate_mem_into_secure_stack
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 72(%rax)
	cmpq	$0, -32(%rbp)
	je	.L445
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	72(%rax), %rcx
	movq	-40(%rbp), %rax
	salq	$3, %rax
	movq	-32(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_stack_mem
.L445:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	80(%rdx), %rdx
	movq	%rdx, 80(%rax)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	allocate_mem_into_secure_stack
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 96(%rax)
	cmpq	$0, -32(%rbp)
	je	.L446
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	96(%rax), %rcx
	movq	-40(%rbp), %rax
	salq	$3, %rax
	movq	-32(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_stack_mem
.L446:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-40(%rbp), %rax
	salq	$3, %rax
	movl	$975, %edx
	movl	$__func__.4489, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 88(%rbx)
	movq	$0, -56(%rbp)
	jmp	.L447
.L448:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	88(%rax), %rax
	movq	-56(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	88(%rax), %rax
	movq	-56(%rbp), %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addq	$1, -56(%rbp)
.L447:
	movq	-56(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jl	.L448
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	104(%rdx), %rdx
	movq	%rdx, 104(%rax)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	104(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-40(%rbp), %rax
	salq	$3, %rax
	movl	$983, %edx
	movl	$__func__.4489, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 112(%rbx)
	movq	$0, -56(%rbp)
	jmp	.L449
.L450:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	-56(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	-56(%rbp), %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addq	$1, -56(%rbp)
.L449:
	movq	-56(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jl	.L450
	movq	-48(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-40(%rbp), %rax
	salq	$3, %rax
	movl	$986, %edx
	movl	$__func__.4489, %esi
	movq	%rax, %rdi
	call	error_checking_malloc
	movq	%rax, 120(%rbx)
	movq	$0, -56(%rbp)
	jmp	.L451
.L453:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	-56(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	allocate_mem_into_secure_stack
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L452
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	120(%rax), %rax
	movq	-56(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	-56(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_stack_mem
.L452:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	120(%rax), %rax
	movq	-56(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	addq	$1, -56(%rbp)
.L451:
	movq	-56(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jl	.L453
.L440:
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	put_fun_params_into_secure_stack, .-put_fun_params_into_secure_stack
	.globl	free_fun_params
	.type	free_fun_params, @function
free_fun_params:
.LFB77:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	$0, -8(%rbp)
	jmp	.L456
.L457:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	120(%rax), %rax
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	addq	$1, -8(%rbp)
.L456:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	104(%rax), %rax
	cmpq	-8(%rbp), %rax
	jg	.L457
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	free_fun_params, .-free_fun_params
	.globl	put_fun_params_into_secure_stack_and_free
	.type	put_fun_params_into_secure_stack_and_free, @function
put_fun_params_into_secure_stack_and_free:
.LFB78:
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
.LFE78:
	.size	put_fun_params_into_secure_stack_and_free, .-put_fun_params_into_secure_stack_and_free
	.globl	get_stack_char
	.type	get_stack_char, @function
get_stack_char:
.LFB79:
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
.LFE79:
	.size	get_stack_char, .-get_stack_char
	.globl	get_stack_int
	.type	get_stack_int, @function
get_stack_int:
.LFB80:
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
.LFE80:
	.size	get_stack_int, .-get_stack_int
	.globl	get_stack_long_int
	.type	get_stack_long_int, @function
get_stack_long_int:
.LFB81:
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
.LFE81:
	.size	get_stack_long_int, .-get_stack_long_int
	.globl	get_stack_pointer
	.type	get_stack_pointer, @function
get_stack_pointer:
.LFB82:
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
.LFE82:
	.size	get_stack_pointer, .-get_stack_pointer
	.globl	get_stack_float
	.type	get_stack_float, @function
get_stack_float:
.LFB83:
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
.LFE83:
	.size	get_stack_float, .-get_stack_float
	.globl	get_stack_double
	.type	get_stack_double, @function
get_stack_double:
.LFB84:
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
.LFE84:
	.size	get_stack_double, .-get_stack_double
	.globl	get_stack_array_element
	.type	get_stack_array_element, @function
get_stack_array_element:
.LFB85:
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
.LFE85:
	.size	get_stack_array_element, .-get_stack_array_element
	.globl	get_stack_char_array_element
	.type	get_stack_char_array_element, @function
get_stack_char_array_element:
.LFB86:
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
.LFE86:
	.size	get_stack_char_array_element, .-get_stack_char_array_element
	.globl	get_stack_int_array_element
	.type	get_stack_int_array_element, @function
get_stack_int_array_element:
.LFB87:
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
.LFE87:
	.size	get_stack_int_array_element, .-get_stack_int_array_element
	.globl	get_stack_long_int_array_element
	.type	get_stack_long_int_array_element, @function
get_stack_long_int_array_element:
.LFB88:
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
.LFE88:
	.size	get_stack_long_int_array_element, .-get_stack_long_int_array_element
	.globl	get_stack_pointer_array_element
	.type	get_stack_pointer_array_element, @function
get_stack_pointer_array_element:
.LFB89:
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
.LFE89:
	.size	get_stack_pointer_array_element, .-get_stack_pointer_array_element
	.globl	get_stack_float_array_element
	.type	get_stack_float_array_element, @function
get_stack_float_array_element:
.LFB90:
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
.LFE90:
	.size	get_stack_float_array_element, .-get_stack_float_array_element
	.globl	get_stack_double_array_element
	.type	get_stack_double_array_element, @function
get_stack_double_array_element:
.LFB91:
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
.LFE91:
	.size	get_stack_double_array_element, .-get_stack_double_array_element
	.globl	get_arbitrary_block_in_stack
	.type	get_arbitrary_block_in_stack, @function
get_arbitrary_block_in_stack:
.LFB92:
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
.LFE92:
	.size	get_arbitrary_block_in_stack, .-get_arbitrary_block_in_stack
	.globl	set_stack_char
	.type	set_stack_char, @function
set_stack_char:
.LFB93:
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
.LFE93:
	.size	set_stack_char, .-set_stack_char
	.globl	set_stack_int
	.type	set_stack_int, @function
set_stack_int:
.LFB94:
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
.LFE94:
	.size	set_stack_int, .-set_stack_int
	.globl	set_stack_long_int
	.type	set_stack_long_int, @function
set_stack_long_int:
.LFB95:
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
.LFE95:
	.size	set_stack_long_int, .-set_stack_long_int
	.globl	set_stack_pointer
	.type	set_stack_pointer, @function
set_stack_pointer:
.LFB96:
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
.LFE96:
	.size	set_stack_pointer, .-set_stack_pointer
	.globl	set_stack_float
	.type	set_stack_float, @function
set_stack_float:
.LFB97:
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
.LFE97:
	.size	set_stack_float, .-set_stack_float
	.globl	set_stack_double
	.type	set_stack_double, @function
set_stack_double:
.LFB98:
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
.LFE98:
	.size	set_stack_double, .-set_stack_double
	.globl	set_stack_array_element
	.type	set_stack_array_element, @function
set_stack_array_element:
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
	movl	$1, %ecx
	movq	%rax, %rdi
	call	set_secure_stack_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE99:
	.size	set_stack_array_element, .-set_stack_array_element
	.globl	set_stack_char_array_element
	.type	set_stack_char_array_element, @function
set_stack_char_array_element:
.LFB100:
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
.LFE100:
	.size	set_stack_char_array_element, .-set_stack_char_array_element
	.globl	set_stack_int_array_element
	.type	set_stack_int_array_element, @function
set_stack_int_array_element:
.LFB101:
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
.LFE101:
	.size	set_stack_int_array_element, .-set_stack_int_array_element
	.globl	set_stack_long_int_array_element
	.type	set_stack_long_int_array_element, @function
set_stack_long_int_array_element:
.LFB102:
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
.LFE102:
	.size	set_stack_long_int_array_element, .-set_stack_long_int_array_element
	.globl	set_stack_pointer_array_element
	.type	set_stack_pointer_array_element, @function
set_stack_pointer_array_element:
.LFB103:
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
.LFE103:
	.size	set_stack_pointer_array_element, .-set_stack_pointer_array_element
	.globl	set_stack_float_array_element
	.type	set_stack_float_array_element, @function
set_stack_float_array_element:
.LFB104:
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
.LFE104:
	.size	set_stack_float_array_element, .-set_stack_float_array_element
	.globl	set_stack_double_array_element
	.type	set_stack_double_array_element, @function
set_stack_double_array_element:
.LFB105:
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
.LFE105:
	.size	set_stack_double_array_element, .-set_stack_double_array_element
	.globl	set_arbitrary_block_in_stack
	.type	set_arbitrary_block_in_stack, @function
set_arbitrary_block_in_stack:
.LFB106:
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
.LFE106:
	.size	set_arbitrary_block_in_stack, .-set_arbitrary_block_in_stack
	.section	.rodata
.LC76:
	.string	"Allocating double array"
.LC77:
	.string	"Initializing fun params"
	.align 8
.LC80:
	.string	"Inserting fun params into secure stack"
.LC81:
	.string	"Printing chars"
.LC82:
	.string	"%c "
.LC83:
	.string	"Printing ints"
.LC84:
	.string	"Printing doubles"
.LC85:
	.string	"%lf "
.LC86:
	.string	"Changing pointer"
.LC87:
	.string	"Printing array of doubles"
.LC88:
	.string	"i=%d, %lf "
	.align 8
.LC89:
	.string	"Fetching double array using arbitrary block"
	.text
	.globl	stack_fun_params_test
	.type	stack_fun_params_test, @function
stack_fun_params_test:
.LFB107:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movl	$.LC76, %edi
	call	puts
	movl	$9, %edx
	movl	$__func__.4651, %esi
	movl	$80, %edi
	call	error_checking_malloc
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L501
.L502:
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
.L501:
	cmpl	$9, -20(%rbp)
	jle	.L502
	movl	$.LC77, %edi
	call	puts
	movabsq	$4633156929650876744, %rdx
	movabsq	$4631166901565532406, %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, 104(%rsp)
	movq	$80, 96(%rsp)
	movq	$1, 88(%rsp)
	movl	$424242, 80(%rsp)
	movq	$100, 72(%rsp)
	movq	$1, 64(%rsp)
	movq	$2, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$41, 32(%rsp)
	movl	$42, 24(%rsp)
	movq	$2, 16(%rsp)
	movl	$103, 8(%rsp)
	movl	$102, (%rsp)
	movq	%rdx, -40(%rbp)
	movsd	-40(%rbp), %xmm1
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	movl	$101, %r9d
	movl	$100, %r8d
	movl	$99, %ecx
	movl	$5, %edx
	movl	$0, %esi
	movl	$1, %edi
	movl	$2, %eax
	call	init_function_params
	movq	%rax, -8(%rbp)
	movl	$.LC80, %edi
	call	puts
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	put_fun_params_into_secure_stack_and_free
	movq	%rax, -8(%rbp)
	movl	$.LC81, %edi
	call	puts
	movl	$0, -20(%rbp)
	jmp	.L503
.L504:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_stack_char_array_element
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC82, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -20(%rbp)
.L503:
	cmpl	$4, -20(%rbp)
	jle	.L504
	movl	$10, %edi
	call	putchar
	movl	$.LC83, %edi
	call	puts
	movl	$0, -20(%rbp)
	jmp	.L505
.L506:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %esi
	movl	$.LC21, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -20(%rbp)
.L505:
	cmpl	$1, -20(%rbp)
	jle	.L506
	movl	$10, %edi
	call	putchar
	movl	$.LC84, %edi
	call	puts
	movl	$0, -20(%rbp)
	jmp	.L507
.L508:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	72(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_stack_double_array_element
	movsd	%xmm0, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	movl	$.LC85, %edi
	movl	$1, %eax
	call	printf
	addl	$1, -20(%rbp)
.L507:
	cmpl	$1, -20(%rbp)
	jle	.L508
	movl	$10, %edi
	call	putchar
	movl	$.LC86, %edi
	call	puts
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	96(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_stack_pointer_array_element
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	96(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_stack_pointer_array_element
	movl	$45, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_stack_int_array_element
	movl	$.LC83, %edi
	call	puts
	movl	$0, -20(%rbp)
	jmp	.L509
.L510:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_stack_int_array_element
	movl	%eax, %esi
	movl	$.LC21, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -20(%rbp)
.L509:
	cmpl	$1, -20(%rbp)
	jle	.L510
	movl	$10, %edi
	call	putchar
	movl	$.LC87, %edi
	call	puts
	movl	$0, -20(%rbp)
	jmp	.L511
.L512:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
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
	movl	$.LC88, %edi
	movl	$1, %eax
	call	printf
	addl	$1, -20(%rbp)
.L511:
	cmpl	$9, -20(%rbp)
	jle	.L512
	movl	$.LC89, %edi
	call	puts
	movl	$55, %edx
	movl	$__func__.4651, %esi
	movl	$80, %edi
	call	error_checking_malloc
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	120(%rax), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movl	$80, %edi
	call	get_arbitrary_block_in_stack
	movl	$0, -20(%rbp)
	jmp	.L513
.L514:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	movl	$.LC68, %edi
	movl	$1, %eax
	call	printf
	addl	$1, -20(%rbp)
.L513:
	cmpl	$9, -20(%rbp)
	jle	.L514
	movl	$10, %edi
	call	putchar
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE107:
	.size	stack_fun_params_test, .-stack_fun_params_test
	.comm	sa,152,32
	.globl	check_next_canaries
	.type	check_next_canaries, @function
check_next_canaries:
.LFB108:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L516
.L519:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$66, %al
	je	.L517
	movl	$0, %eax
	jmp	.L518
.L517:
	addl	$1, -4(%rbp)
.L516:
	cmpl	$1, -4(%rbp)
	jle	.L519
	movl	$1, %eax
.L518:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE108:
	.size	check_next_canaries, .-check_next_canaries
	.section	.rodata
.LC90:
	.string	"key no%d=0x%02x\n"
	.text
	.globl	find_keyshares
	.type	find_keyshares, @function
find_keyshares:
.LFB109:
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
	jmp	.L521
.L522:
	movl	-100(%rbp), %eax
	cltq
	movb	$0, -16(%rbp,%rax)
	addl	$1, -100(%rbp)
.L521:
	cmpl	$4, -100(%rbp)
	jle	.L522
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.L523
.L527:
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-21, %al
	jne	.L524
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$7, %al
	jne	.L524
	movq	-88(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	call	check_next_canaries
	testl	%eax, %eax
	je	.L524
	movl	$0, -100(%rbp)
	jmp	.L525
.L526:
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
.L525:
	cmpl	$4, -100(%rbp)
	jle	.L526
.L524:
	addq	$1, -88(%rbp)
.L523:
	movq	-88(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jbe	.L527
	movl	$0, -96(%rbp)
	movq	entire_memory_chunk(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -80(%rbp)
	jmp	.L528
.L532:
	cmpl	$0, -96(%rbp)
	jne	.L529
	addq	$4, -80(%rbp)
	movl	$1, -96(%rbp)
	jmp	.L528
.L529:
	movl	$0, -100(%rbp)
	jmp	.L530
.L531:
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
.L530:
	cmpl	$4, -100(%rbp)
	jle	.L531
	addq	$5, -80(%rbp)
	movl	$0, -96(%rbp)
.L528:
	movq	total_bytes_allocated(%rip), %rax
	cmpq	%rax, -80(%rbp)
	jl	.L532
	movl	$0, -96(%rbp)
	movq	entire_stack_memory_chunk(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -72(%rbp)
	jmp	.L533
.L537:
	cmpl	$0, -96(%rbp)
	jne	.L534
	addq	$3, -72(%rbp)
	movl	$1, -96(%rbp)
	jmp	.L533
.L534:
	movl	$0, -100(%rbp)
	jmp	.L535
.L536:
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
.L535:
	cmpl	$4, -100(%rbp)
	jle	.L536
	addq	$5, -72(%rbp)
	movl	$0, -96(%rbp)
.L533:
	movq	total_stack_bytes_allocated(%rip), %rax
	cmpq	%rax, -72(%rbp)
	jl	.L537
	movl	$10, %edi
	call	putchar
	movl	$0, -100(%rbp)
	jmp	.L538
.L539:
	movl	-100(%rbp), %eax
	cltq
	movzbl	-16(%rbp,%rax), %eax
	movzbl	%al, %edx
	movl	-100(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC90, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -100(%rbp)
.L538:
	cmpl	$4, -100(%rbp)
	jle	.L539
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L541
	call	__stack_chk_fail
.L541:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE109:
	.size	find_keyshares, .-find_keyshares
	.section	.rodata
.LC91:
	.string	"Verification requested!"
	.text
	.globl	verification_procedure
	.type	verification_procedure, @function
verification_procedure:
.LFB110:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$.LC91, %edi
	call	puts
	movl	$0, %eax
	call	find_keyshares
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE110:
	.size	verification_procedure, .-verification_procedure
	.section	.rodata
.LC92:
	.string	"Initializing heap memory"
	.align 8
.LC93:
	.string	"bytes_to_allocate_on_start:%d\n"
.LC94:
	.string	"Init_mem, alloc+key insertion"
	.align 8
.LC95:
	.string	"If successful, total bytes allocated:%ld\n"
.LC96:
	.string	"Initializing stack memory"
	.align 8
.LC97:
	.string	"Stack bytes_to_allocate_on_start:%d\n"
	.align 8
.LC98:
	.string	"Init_stack_mem, alloc+key insertion"
	.text
	.globl	init_heap_and_stack_mem
	.type	init_heap_and_stack_mem, @function
init_heap_and_stack_mem:
.LFB111:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$.LC92, %edi
	call	puts
	movl	$2048, %esi
	movl	$.LC93, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC94, %edi
	call	puts
	movl	$0, %eax
	call	init_mem
	movq	total_bytes_allocated(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC95, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC96, %edi
	call	puts
	movl	$1024, %esi
	movl	$.LC97, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC98, %edi
	call	puts
	movl	$0, %eax
	call	init_stack_mem
	movq	total_stack_bytes_allocated(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC95, %edi
	movl	$0, %eax
	call	printf
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.size	init_heap_and_stack_mem, .-init_heap_and_stack_mem
	.section	.rodata
.LC99:
	.string	"Installing signal handler"
	.align 8
.LC100:
	.string	"Could not install signal handler"
.LC101:
	.string	"Signal handler installed"
	.text
	.globl	install_signal_handler
	.type	install_signal_handler, @function
install_signal_handler:
.LFB112:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$.LC99, %edi
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
	jne	.L545
	movl	$.LC100, %edi
	call	perror
	movl	$45, %edi
	call	exit
.L545:
	movl	$.LC101, %edi
	call	puts
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE112:
	.size	install_signal_handler, .-install_signal_handler
	.globl	free_heap_and_stack_memory
	.type	free_heap_and_stack_memory, @function
free_heap_and_stack_memory:
.LFB113:
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
.LFE113:
	.size	free_heap_and_stack_memory, .-free_heap_and_stack_memory
	.local	static_global_variable_for_testing
	.comm	static_global_variable_for_testing,4,4
	.globl	foo
	.type	foo, @function
foo:
.LFB114:
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
.LFE114:
	.size	foo, .-foo
	.section	.rodata
.LC102:
	.string	"My pid=%ld\n"
.LC103:
	.string	"K=%d\n"
.LC104:
	.string	"n=%d\n"
.LC105:
	.string	"main is at %p\n"
.LC106:
	.string	"\nSimple array tests in heap"
.LC107:
	.string	"\nStack fun params test"
.LC108:
	.string	"\nEnd of tests"
.LC109:
	.string	"Going to find keyshares"
	.text
	.globl	main
	.type	main, @function
main:
.LFB115:
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
	movl	$1, static_main_variable_for_testing.4754(%rip)
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
	movl	$.LC102, %edi
	movl	$0, %eax
	call	printf
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC103, %edi
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
	movl	$.LC104, %edi
	movl	$0, %eax
	call	printf
	movl	$main, %esi
	movl	$.LC105, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC106, %edi
	call	puts
	movl	$0, %eax
	call	simple_array_tests
	movl	$.LC107, %edi
	call	puts
	movl	$0, %eax
	call	stack_fun_params_test
	movl	$.LC108, %edi
	call	puts
	movl	$.LC109, %edi
	call	puts
	movl	$0, %eax
	call	find_keyshares
	movl	$0, %eax
	call	free_heap_and_stack_memory
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L551
	call	__stack_chk_fail
.L551:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE115:
	.size	main, .-main
	.globl	foo2
	.type	foo2, @function
foo2:
.LFB116:
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
.LFE116:
	.size	foo2, .-foo2
	.section	.rodata
	.type	__func__.3804, @object
	.size	__func__.3804, 11
__func__.3804:
	.string	"alloc_list"
	.align 16
	.type	__func__.3813, @object
	.size	__func__.3813, 17
__func__.3813:
	.string	"add_node_to_list"
	.type	__func__.3857, @object
	.size	__func__.3857, 13
__func__.3857:
	.string	"allocate_mem"
	.align 16
	.type	__func__.4122, @object
	.size	__func__.4122, 16
__func__.4122:
	.string	"check_and_merge"
	.align 16
	.type	__func__.4138, @object
	.size	__func__.4138, 20
__func__.4138:
	.string	"managed_secure_free"
	.type	__func__.4189, @object
	.size	__func__.4189, 9
__func__.4189:
	.string	"mem_test"
	.align 16
	.type	__func__.4295, @object
	.size	__func__.4295, 19
__func__.4295:
	.string	"allocate_stack_mem"
	.align 16
	.type	__func__.4409, @object
	.size	__func__.4409, 21
__func__.4409:
	.string	"init_function_params"
	.align 32
	.type	__func__.4447, @object
	.size	__func__.4447, 49
__func__.4447:
	.string	"init_function_params_with_uninitialised_elements"
	.align 32
	.type	__func__.4489, @object
	.size	__func__.4489, 33
__func__.4489:
	.string	"put_fun_params_into_secure_stack"
	.align 16
	.type	__func__.4651, @object
	.size	__func__.4651, 22
__func__.4651:
	.string	"stack_fun_params_test"
	.local	static_main_variable_for_testing.4754
	.comm	static_main_variable_for_testing.4754,4,4
	.align 8
.LC65:
	.long	0
	.long	1071644672
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
