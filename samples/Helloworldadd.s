	.file	"Helloworldadd.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"malloc failed in function %s, line %d\n"
	.section	.text.unlikely,"ax",@progbits
	.type	error_checking_malloc.part.0, @function
error_checking_malloc.part.0:
.LFB204:
	.cfi_startproc
	movq	%rdi, %rcx
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movl	%esi, %r8d
	movl	$.LC0, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk
	movl	$42, %edi
	call	exit
	.cfi_endproc
.LFE204:
	.size	error_checking_malloc.part.0, .-error_checking_malloc.part.0
	.section	.rodata.str1.8
	.align 8
.LC1:
	.string	"Managed secure malloc error n function %s, line %d\n"
	.section	.text.unlikely
	.type	error_checking_managed_secure_malloc.part.3, @function
error_checking_managed_secure_malloc.part.3:
.LFB207:
	.cfi_startproc
	movq	%rdi, %rcx
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movl	%esi, %r8d
	movl	$.LC1, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk
	movl	$52, %edi
	call	exit
	.cfi_endproc
.LFE207:
	.size	error_checking_managed_secure_malloc.part.3, .-error_checking_managed_secure_malloc.part.3
	.text
	.p2align 4,,15
	.globl	error_checking_malloc
	.type	error_checking_malloc, @function
error_checking_malloc:
.LFB75:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L7
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%edx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	malloc
	testq	%rax, %rax
	je	.L12
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	xorl	%eax, %eax
	ret
.L12:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	movl	%ebp, %esi
	movq	%rbx, %rdi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE75:
	.size	error_checking_malloc, .-error_checking_malloc
	.p2align 4,,15
	.globl	copy_nodes
	.type	copy_nodes, @function
copy_nodes:
.LFB76:
	.cfi_startproc
	movq	8(%rsp), %rax
	movq	%rax, (%rdi)
	movq	16(%rsp), %rax
	movq	%rax, 8(%rdi)
	movq	24(%rsp), %rax
	movq	%rax, 16(%rdi)
	movq	32(%rsp), %rax
	movq	%rax, 24(%rdi)
	ret
	.cfi_endproc
.LFE76:
	.size	copy_nodes, .-copy_nodes
	.p2align 4,,15
	.globl	copy_nodes_ptr
	.type	copy_nodes_ptr, @function
copy_nodes_ptr:
.LFB77:
	.cfi_startproc
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	movq	8(%rsi), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rsi), %rax
	movq	%rax, 24(%rdi)
	ret
	.cfi_endproc
.LFE77:
	.size	copy_nodes_ptr, .-copy_nodes_ptr
	.p2align 4,,15
	.globl	alloc_list
	.type	alloc_list, @function
alloc_list:
.LFB78:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	testq	%rdi, %rdi
	jle	.L21
	movl	$1, %ebx
	xorl	%ebp, %ebp
	xorl	%r13d, %r13d
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L26:
	movq	%rax, %rbp
.L20:
	movl	$32, %edi
	call	malloc
	testq	%rax, %rax
	je	.L25
	cmpq	$1, %rbx
	je	.L22
	movq	%rax, 16(%rbp)
	movq	%rbp, 24(%rax)
.L18:
	addq	$1, %rbx
	cmpq	%rbx, %r12
	jge	.L26
	movq	$0, 16(%rax)
	movq	$0, 24(%r13)
.L23:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%r13, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L21:
	.cfi_restore_state
	xorl	%r13d, %r13d
	jmp	.L23
.L25:
	movl	$67, %esi
	movl	$__func__.4716, %edi
	call	error_checking_malloc.part.0
.L22:
	movq	%rax, %r13
	jmp	.L18
	.cfi_endproc
.LFE78:
	.size	alloc_list, .-alloc_list
	.p2align 4,,15
	.globl	add_node_to_list
	.type	add_node_to_list, @function
add_node_to_list:
.LFB79:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movl	$32, %edi
	call	malloc
	testq	%rax, %rax
	je	.L32
	movq	16(%rsp), %rdx
	testq	%rbx, %rbx
	movq	%rdx, (%rax)
	movq	24(%rsp), %rdx
	movq	%rdx, 8(%rax)
	movq	32(%rsp), %rdx
	movq	%rdx, 16(%rax)
	movq	40(%rsp), %rdx
	movq	%rdx, 24(%rax)
	je	.L33
	movq	%rbx, 16(%rax)
	movq	%rax, 24(%rbx)
	movq	$0, 24(%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L33:
	.cfi_restore_state
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L32:
	.cfi_restore_state
	movl	$94, %esi
	movl	$__func__.4725, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE79:
	.size	add_node_to_list, .-add_node_to_list
	.p2align 4,,15
	.globl	delete_node_from_list
	.type	delete_node_from_list, @function
delete_node_from_list:
.LFB80:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	16(%rsi), %rbx
	movq	24(%rsi), %rdx
	testq	%rbx, %rbx
	sete	%cl
	testq	%rdx, %rdx
	sete	%al
	je	.L58
.L35:
	testq	%rdx, %rdx
	jne	.L59
.L37:
	testq	%rbx, %rbx
	jne	.L60
.L38:
	movq	%rdx, 24(%rbx)
	movq	%rsi, %rdi
	movq	%rbx, 16(%rdx)
	call	free
	movq	%rbp, %rax
.L36:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L60:
	.cfi_restore_state
	testb	%al, %al
	je	.L38
	movq	$0, 24(%rbx)
	movq	%rsi, %rdi
	call	free
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L59:
	.cfi_restore_state
	testb	%cl, %cl
	je	.L37
	movq	$0, 16(%rdx)
	movq	%rsi, %rdi
	call	free
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L58:
	.cfi_restore_state
	testb	%cl, %cl
	je	.L35
	movq	%rsi, %rdi
	call	free
	xorl	%eax, %eax
	jmp	.L36
	.cfi_endproc
.LFE80:
	.size	delete_node_from_list, .-delete_node_from_list
	.p2align 4,,15
	.globl	free_list
	.type	free_list, @function
free_list:
.LFB81:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L85
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	16(%rdi), %rbx
	jmp	.L67
	.p2align 4,,10
	.p2align 3
.L66:
	movq	%rax, 24(%rbx)
	movq	%rbx, 16(%rax)
.L86:
	call	free
.L64:
	testb	%bpl, %bpl
	jne	.L61
.L88:
	movq	%rbx, %rdi
	movq	16(%rbx), %rbx
.L67:
	movq	24(%rdi), %rax
	testq	%rbx, %rbx
	sete	%bpl
	testq	%rax, %rax
	sete	%dl
	testb	%bpl, %bpl
	jne	.L87
.L65:
	testq	%rbx, %rbx
	je	.L66
	testb	%dl, %dl
	je	.L66
	movq	$0, 24(%rbx)
	call	free
	testb	%bpl, %bpl
	je	.L88
.L61:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
.L85:
	rep ret
	.p2align 4,,10
	.p2align 3
.L87:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	testb	%dl, %dl
	jne	.L86
	testq	%rax, %rax
	je	.L65
	movq	$0, 16(%rax)
	call	free
	jmp	.L64
	.cfi_endproc
.LFE81:
	.size	free_list, .-free_list
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"List is empty."
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"Node %ld: Length in chunks=%ld, pointer to mem=%ld\n"
	.text
	.p2align 4,,15
	.globl	print_list
	.type	print_list, @function
print_list:
.LFB82:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xorl	%ebp, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	testq	%rdi, %rdi
	je	.L95
	.p2align 4,,10
	.p2align 3
.L93:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L93
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L95:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movl	$.LC2, %edi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	puts
	.cfi_endproc
.LFE82:
	.size	print_list, .-print_list
	.section	.rodata.str1.1
.LC4:
	.string	"Free chunks list:"
.LC5:
	.string	"Allocated chunks list:"
	.text
	.p2align 4,,15
	.globl	print_lists
	.type	print_lists, @function
print_lists:
.LFB83:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$.LC4, %edi
	xorl	%ebp, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L109
	.p2align 4,,10
	.p2align 3
.L105:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L105
.L98:
	movl	$.LC5, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L110
	.p2align 4,,10
	.p2align 3
.L106:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L106
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L109:
	.cfi_restore_state
	movl	$.LC2, %edi
	call	puts
	jmp	.L98
.L110:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movl	$.LC2, %edi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	puts
	.cfi_endproc
.LFE83:
	.size	print_lists, .-print_lists
	.p2align 4,,15
	.globl	find_number_of_useful_chunks
	.type	find_number_of_useful_chunks, @function
find_number_of_useful_chunks:
.LFB84:
	.cfi_startproc
	addq	$5, %rdi
	movabsq	$2049638230412172402, %rdx
	movq	%rdi, %rax
	sarq	$63, %rdi
	imulq	%rdx
	subq	%rdi, %rdx
	movq	%rdx, %rax
	ret
	.cfi_endproc
.LFE84:
	.size	find_number_of_useful_chunks, .-find_number_of_useful_chunks
	.p2align 4,,15
	.globl	init_memory_manager
	.type	init_memory_manager, @function
init_memory_manager:
.LFB85:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$32, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movabsq	$2049638230412172402, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	total_bytes_allocated(%rip), %rax
	movq	entire_memory_chunk(%rip), %rbp
	movq	$0, free_chunks_list(%rip)
	leaq	5(%rax), %rcx
	movq	%rcx, %rax
	sarq	$63, %rcx
	imulq	%rbx
	movq	%rdx, %rbx
	subq	%rcx, %rbx
	call	malloc
	testq	%rax, %rax
	je	.L115
	movq	%rbx, (%rax)
	movq	%rbp, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	%rax, free_chunks_list(%rip)
	movq	$1, free_chunks_num(%rip)
	movq	$0, allocated_chunks_list(%rip)
	movq	$0, allocated_chunks_num(%rip)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L115:
	.cfi_restore_state
	movl	$94, %esi
	movl	$__func__.4725, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE85:
	.size	init_memory_manager, .-init_memory_manager
	.p2align 4,,15
	.globl	free_memory_manager_structures
	.type	free_memory_manager_structures, @function
free_memory_manager_structures:
.LFB86:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	free_chunks_list(%rip), %rdi
	movq	$0, free_chunks_num(%rip)
	movq	$0, allocated_chunks_num(%rip)
	testq	%rdi, %rdi
	je	.L117
	movq	16(%rdi), %rbx
	jmp	.L122
	.p2align 4,,10
	.p2align 3
.L121:
	movq	%rax, 24(%rbx)
	movq	%rbx, 16(%rax)
.L160:
	call	free
.L119:
	testb	%bpl, %bpl
	jne	.L117
.L163:
	movq	%rbx, %rdi
	movq	16(%rbx), %rbx
.L122:
	movq	24(%rdi), %rax
	testq	%rbx, %rbx
	sete	%bpl
	testq	%rax, %rax
	sete	%dl
	testb	%bpl, %bpl
	jne	.L162
.L120:
	testq	%rbx, %rbx
	je	.L121
	testb	%dl, %dl
	je	.L121
	movq	$0, 24(%rbx)
	call	free
	testb	%bpl, %bpl
	je	.L163
.L117:
	movq	allocated_chunks_list(%rip), %rdi
	testq	%rdi, %rdi
	je	.L116
	movq	16(%rdi), %rbx
	jmp	.L128
	.p2align 4,,10
	.p2align 3
.L127:
	movq	%rax, 24(%rbx)
	movq	%rbx, 16(%rax)
.L161:
	call	free
.L125:
	testb	%bpl, %bpl
	jne	.L116
.L165:
	movq	%rbx, %rdi
	movq	16(%rbx), %rbx
.L128:
	movq	24(%rdi), %rax
	testq	%rbx, %rbx
	sete	%bpl
	testq	%rax, %rax
	sete	%dl
	testb	%bpl, %bpl
	jne	.L164
.L126:
	testq	%rbx, %rbx
	je	.L127
	testb	%dl, %dl
	je	.L127
	movq	$0, 24(%rbx)
	call	free
	testb	%bpl, %bpl
	je	.L165
.L116:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L162:
	.cfi_restore_state
	testb	%dl, %dl
	jne	.L160
	testq	%rax, %rax
	je	.L120
	movq	$0, 16(%rax)
	call	free
	jmp	.L119
	.p2align 4,,10
	.p2align 3
.L164:
	testb	%dl, %dl
	jne	.L161
	testq	%rax, %rax
	.p2align 4,,6
	je	.L126
	movq	$0, 16(%rax)
	call	free
	jmp	.L125
	.cfi_endproc
.LFE86:
	.size	free_memory_manager_structures, .-free_memory_manager_structures
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"Whoops. We need to allocate a bit more space."
	.text
	.p2align 4,,15
	.globl	allocate_mem
	.type	allocate_mem, @function
allocate_mem:
.LFB87:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$.LC6, %edi
	call	puts
	movl	$2056, %edi
	call	malloc
	testq	%rax, %rax
	je	.L169
	movq	$2056, total_bytes_allocated(%rip)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L169:
	.cfi_restore_state
	movl	$293, %esi
	movl	$__func__.4769, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE87:
	.size	allocate_mem, .-allocate_mem
	.p2align 4,,15
	.globl	secure_malloc
	.type	secure_malloc, @function
secure_malloc:
.LFB88:
	.cfi_startproc
	movq	last_unused_memory(%rip), %rsi
	movq	entire_memory_chunk(%rip), %rdx
	subq	%rsi, %rdx
	addq	total_bytes_allocated(%rip), %rdx
	leaq	5(%rdx), %rcx
	movabsq	$2049638230412172402, %rdx
	movq	%rcx, %rax
	sarq	$63, %rcx
	imulq	%rdx
	subq	%rcx, %rdx
	salq	$2, %rdx
	cmpq	%rdi, %rdx
	jl	.L176
	leaq	3(%rdi), %rdx
	testq	%rdi, %rdi
	cmovns	%rdi, %rdx
	sarq	$2, %rdx
	leaq	0(,%rdx,4), %rcx
	cmpq	%rdi, %rcx
	je	.L173
	addq	$1, %rdx
	addq	$4, %rcx
.L173:
	leaq	-5(%rdx,%rdx,4), %rax
	leaq	5(%rcx,%rax), %rax
	addq	%rsi, %rax
	movq	%rax, last_unused_memory(%rip)
	movq	%rsi, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L176:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	__errno_location
	movl	$12, (%rax)
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE88:
	.size	secure_malloc, .-secure_malloc
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"Attempted to read more keyshares that the ones stored\n"
	.align 8
.LC8:
	.string	"Did not read byte in get_next_keyshare()\n"
	.text
	.p2align 4,,15
	.globl	get_next_keyshare
	.type	get_next_keyshare, @function
get_next_keyshare:
.LFB89:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	keyshare_input_file(%rip), %rdi
	call	feof
	testl	%eax, %eax
	jne	.L181
	movq	keyshare_input_file(%rip), %rcx
	movl	$1, %edx
	movl	$1, %esi
	movq	%rsp, %rdi
	call	fread
	cmpq	$1, %rax
	jne	.L182
	movzbl	(%rsp), %eax
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L181:
	.cfi_restore_state
	movl	$.LC7, %edi
	call	perror
	movl	$44, %edi
	call	exit
.L182:
	movl	$.LC8, %edi
	call	perror
	movl	$47, %edi
	call	exit
	.cfi_endproc
.LFE89:
	.size	get_next_keyshare, .-get_next_keyshare
	.p2align 4,,15
	.globl	insert_keys_into_mem
	.type	insert_keys_into_mem, @function
insert_keys_into_mem:
.LFB90:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	xorl	%eax, %eax
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	xorl	%r12d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	xorl	%ebx, %ebx
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	.p2align 4,,10
	.p2align 3
.L184:
	cmpq	total_bytes_allocated(%rip), %rbx
	jge	.L193
.L190:
	testl	%eax, %eax
	jne	.L185
	movb	$0, 0(%rbp,%rbx)
	movb	$0, 1(%rbp,%rbx)
	movb	$0, 2(%rbp,%rbx)
	movb	$0, 3(%rbp,%rbx)
	addq	$4, %rbx
.L186:
	cmpq	$5, %r12
	movl	$1, %eax
	jne	.L184
	xorl	%eax, %eax
	xorl	%r12d, %r12d
	cmpq	total_bytes_allocated(%rip), %rbx
	jl	.L190
.L193:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L185:
	.cfi_restore_state
	movq	keyshare_input_file(%rip), %rdi
	leaq	0(%rbp,%rbx), %r13
	call	feof
	testl	%eax, %eax
	jne	.L194
	movq	keyshare_input_file(%rip), %rcx
	movl	$1, %edx
	movl	$1, %esi
	movq	%rsp, %rdi
	call	fread
	cmpq	$1, %rax
	jne	.L195
	movzbl	(%rsp), %eax
	addq	$1, %r12
	addq	$1, %rbx
	movb	%al, 0(%r13)
	jmp	.L186
.L194:
	movl	$.LC7, %edi
	call	perror
	movl	$44, %edi
	call	exit
.L195:
	movl	$.LC8, %edi
	call	perror
	movl	$47, %edi
	call	exit
	.cfi_endproc
.LFE90:
	.size	insert_keys_into_mem, .-insert_keys_into_mem
	.section	.rodata.str1.1
.LC9:
	.string	"Printing heap memory:"
.LC10:
	.string	"0x%02x "
	.text
	.p2align 4,,15
	.globl	print_mem
	.type	print_mem, @function
print_mem:
.LFB91:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	movl	$.LC9, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	xorl	%ebx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	puts
	cmpq	$0, total_bytes_allocated(%rip)
	jle	.L198
	.p2align 4,,10
	.p2align 3
.L200:
	movzbl	0(%rbp,%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC10, %esi
	movl	$1, %edi
	addq	$1, %rbx
	call	__printf_chk
	cmpq	%rbx, total_bytes_allocated(%rip)
	jg	.L200
.L198:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movl	$10, %edi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	putchar
	.cfi_endproc
.LFE91:
	.size	print_mem, .-print_mem
	.p2align 4,,15
	.globl	insert_data_into_mem
	.type	insert_data_into_mem, @function
insert_data_into_mem:
.LFB92:
	.cfi_startproc
	testq	%rdi, %rdi
	jle	.L208
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	jmp	.L207
	.p2align 4,,10
	.p2align 3
.L213:
	movzbl	(%rsi,%rcx), %r9d
	movb	%r9b, (%rdx,%r8)
	leaq	1(%rcx), %r9
	cmpq	%r9, %rdi
	jle	.L211
	movzbl	1(%rsi,%rcx), %r9d
	movb	%r9b, 1(%rdx,%r8)
	leaq	2(%rcx), %r9
	cmpq	%r9, %rdi
	jle	.L211
	movzbl	2(%rsi,%rcx), %r9d
	movb	%r9b, 2(%rdx,%r8)
	leaq	3(%rcx), %r9
	cmpq	%r9, %rdi
	jle	.L211
	movzbl	3(%rsi,%rcx), %r9d
	addq	$4, %rcx
	movb	%r9b, 3(%rdx,%r8)
.L205:
	addq	$1, %rax
	addq	$4, %r8
	cmpq	%rcx, %rdi
	movl	$1, %r9d
	jle	.L212
.L207:
	testl	%r9d, %r9d
	je	.L213
	addq	$5, %r8
	xorl	%r9d, %r9d
	cmpq	%rcx, %rdi
	jg	.L207
.L212:
	rep ret
	.p2align 4,,10
	.p2align 3
.L211:
	movq	%r9, %rcx
	jmp	.L205
.L208:
	xorl	%eax, %eax
	.p2align 4,,6
	ret
	.cfi_endproc
.LFE92:
	.size	insert_data_into_mem, .-insert_data_into_mem
	.p2align 4,,15
	.globl	get_secure_data
	.type	get_secure_data, @function
get_secure_data:
.LFB93:
	.cfi_startproc
	cmpl	$2, %ecx
	je	.L226
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.L236
.L216:
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L235:
	cmpq	%rax, %rsi
	jle	.L214
.L237:
	testl	%r8d, %r8d
	jne	.L221
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rdi,%rax)
	leaq	1(%rax), %r8
	cmpq	%r8, %rsi
	jle	.L232
	movzbl	1(%rdx,%rcx), %r8d
	movb	%r8b, 1(%rdi,%rax)
	leaq	2(%rax), %r8
	cmpq	%r8, %rsi
	jle	.L232
	movzbl	2(%rdx,%rcx), %r8d
	movb	%r8b, 2(%rdi,%rax)
	leaq	3(%rax), %r8
	cmpq	%r8, %rsi
	jle	.L232
	movzbl	3(%rdx,%rcx), %r8d
	movb	%r8b, 3(%rdi,%rax)
	addq	$4, %rax
.L222:
	addq	$4, %rcx
	cmpq	%rax, %rsi
	movl	$1, %r8d
	jg	.L237
.L214:
	rep ret
	.p2align 4,,10
	.p2align 3
.L221:
	addq	$5, %rcx
	xorl	%r8d, %r8d
	jmp	.L235
	.p2align 4,,10
	.p2align 3
.L232:
	movq	%r8, %rax
	jmp	.L222
	.p2align 4,,10
	.p2align 3
.L226:
	movl	$1, %eax
.L215:
	imulq	%rax, %r8
	leaq	3(%r8), %rax
	testq	%r8, %r8
	cmovns	%r8, %rax
	sarq	$2, %rax
	leaq	0(,%rax,4), %rcx
	cmpq	%rcx, %r8
	je	.L238
	leaq	(%rax,%rax,8), %rcx
	negq	%rax
	leaq	(%r8,%rax,4), %r8
	addq	%rcx, %rdx
	cmpq	$3, %r8
	jg	.L229
	testq	%rsi, %rsi
	jle	.L229
	movl	$4, %r9d
	movq	%r8, %rcx
	xorl	%eax, %eax
	subq	%r8, %r9
	jmp	.L219
	.p2align 4,,10
	.p2align 3
.L239:
	cmpq	%rsi, %rax
	je	.L218
.L219:
	movzbl	(%rdx,%rcx), %ecx
	movb	%cl, (%rdi,%rax)
	addq	$1, %rax
	cmpq	%r9, %rax
	leaq	(%rax,%r8), %rcx
	jne	.L239
.L218:
	addq	$9, %rdx
	jmp	.L216
	.p2align 4,,10
	.p2align 3
.L236:
	movq	%rsi, %rax
	jmp	.L215
	.p2align 4,,10
	.p2align 3
.L238:
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rdx
	xorl	%eax, %eax
	jmp	.L216
.L229:
	xorl	%eax, %eax
	jmp	.L218
	.cfi_endproc
.LFE93:
	.size	get_secure_data, .-get_secure_data
	.p2align 4,,15
	.globl	set_secure_data
	.type	set_secure_data, @function
set_secure_data:
.LFB94:
	.cfi_startproc
	cmpl	$2, %ecx
	je	.L252
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.L262
.L242:
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L261:
	cmpq	%rax, %rsi
	jle	.L240
.L263:
	testl	%r8d, %r8d
	jne	.L247
	movzbl	(%rdi,%rax), %r8d
	movb	%r8b, (%rdx,%rcx)
	leaq	1(%rax), %r8
	cmpq	%r8, %rsi
	jle	.L258
	movzbl	1(%rdi,%rax), %r8d
	movb	%r8b, 1(%rdx,%rcx)
	leaq	2(%rax), %r8
	cmpq	%r8, %rsi
	jle	.L258
	movzbl	2(%rdi,%rax), %r8d
	movb	%r8b, 2(%rdx,%rcx)
	leaq	3(%rax), %r8
	cmpq	%r8, %rsi
	jle	.L258
	movzbl	3(%rdi,%rax), %r8d
	addq	$4, %rax
	movb	%r8b, 3(%rdx,%rcx)
.L248:
	addq	$4, %rcx
	cmpq	%rax, %rsi
	movl	$1, %r8d
	jg	.L263
.L240:
	rep ret
	.p2align 4,,10
	.p2align 3
.L247:
	addq	$5, %rcx
	xorl	%r8d, %r8d
	jmp	.L261
	.p2align 4,,10
	.p2align 3
.L258:
	movq	%r8, %rax
	jmp	.L248
	.p2align 4,,10
	.p2align 3
.L252:
	movl	$1, %eax
.L241:
	imulq	%rax, %r8
	leaq	3(%r8), %rax
	testq	%r8, %r8
	cmovns	%r8, %rax
	sarq	$2, %rax
	leaq	0(,%rax,4), %rcx
	cmpq	%rcx, %r8
	je	.L264
	leaq	(%rax,%rax,8), %rcx
	negq	%rax
	leaq	(%r8,%rax,4), %r9
	addq	%rcx, %rdx
	cmpq	$3, %r9
	jg	.L255
	testq	%rsi, %rsi
	jle	.L255
	movl	$4, %r10d
	movq	%r9, %rcx
	xorl	%eax, %eax
	subq	%r9, %r10
	jmp	.L245
	.p2align 4,,10
	.p2align 3
.L265:
	cmpq	%rsi, %rax
	je	.L244
.L245:
	movzbl	(%rdi,%rax), %r8d
	addq	$1, %rax
	cmpq	%r10, %rax
	movb	%r8b, (%rdx,%rcx)
	leaq	(%rax,%r9), %rcx
	jne	.L265
.L244:
	addq	$9, %rdx
	jmp	.L242
	.p2align 4,,10
	.p2align 3
.L262:
	movq	%rsi, %rax
	jmp	.L241
	.p2align 4,,10
	.p2align 3
.L264:
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rdx
	xorl	%eax, %eax
	jmp	.L242
.L255:
	xorl	%eax, %eax
	jmp	.L244
	.cfi_endproc
.LFE94:
	.size	set_secure_data, .-set_secure_data
	.section	.rodata.str1.1
.LC11:
	.string	"rb"
.LC12:
	.string	"heap_keyshares"
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"init_mem:heap_keyshares file error\n"
	.text
	.p2align 4,,15
	.globl	init_mem
	.type	init_mem, @function
init_mem:
.LFB95:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	xorl	%edi, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	call	time
	movl	%eax, %edi
	call	srand
	movl	$.LC6, %edi
	call	puts
	movl	$2056, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L271
	movl	$.LC11, %esi
	movl	$.LC12, %edi
	movq	$2056, total_bytes_allocated(%rip)
	call	fopen
	testq	%rax, %rax
	movq	%rax, keyshare_input_file(%rip)
	je	.L272
	movq	%rbx, %rdi
	movabsq	$2049638230412172402, %rbp
	call	insert_keys_into_mem
	movq	keyshare_input_file(%rip), %rdi
	movq	%rbx, entire_memory_chunk(%rip)
	movq	%rbx, last_unused_memory(%rip)
	call	fclose
	movq	total_bytes_allocated(%rip), %rax
	movl	$32, %edi
	movq	entire_memory_chunk(%rip), %r12
	movq	$0, free_chunks_list(%rip)
	leaq	5(%rax), %rcx
	movq	%rcx, %rax
	sarq	$63, %rcx
	imulq	%rbp
	movq	%rdx, %rbp
	subq	%rcx, %rbp
	call	malloc
	testq	%rax, %rax
	je	.L273
	movq	%rbp, (%rax)
	movq	%r12, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	%rax, free_chunks_list(%rip)
	movq	%rbx, %rax
	movq	$1, free_chunks_num(%rip)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	movq	$0, allocated_chunks_list(%rip)
	movq	$0, allocated_chunks_num(%rip)
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L271:
	.cfi_restore_state
	movl	$293, %esi
	movl	$__func__.4769, %edi
	call	error_checking_malloc.part.0
.L273:
	movl	$94, %esi
	movl	$__func__.4725, %edi
	call	error_checking_malloc.part.0
.L272:
	movl	$.LC13, %edi
	call	perror
	movl	$43, %edi
	call	exit
	.cfi_endproc
.LFE95:
	.size	init_mem, .-init_mem
	.p2align 4,,15
	.globl	free_secure_mem
	.type	free_secure_mem, @function
free_secure_mem:
.LFB96:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	free
	movq	free_chunks_list(%rip), %rdi
	movq	$0, free_chunks_num(%rip)
	movq	$0, allocated_chunks_num(%rip)
	testq	%rdi, %rdi
	je	.L275
	movq	16(%rdi), %rbx
	jmp	.L280
	.p2align 4,,10
	.p2align 3
.L279:
	movq	%rax, 24(%rbx)
	movq	%rbx, 16(%rax)
.L318:
	call	free
.L277:
	testb	%bpl, %bpl
	jne	.L275
.L321:
	movq	%rbx, %rdi
	movq	16(%rbx), %rbx
.L280:
	movq	24(%rdi), %rax
	testq	%rbx, %rbx
	sete	%bpl
	testq	%rax, %rax
	sete	%dl
	testb	%bpl, %bpl
	jne	.L320
.L278:
	testq	%rbx, %rbx
	je	.L279
	testb	%dl, %dl
	je	.L279
	movq	$0, 24(%rbx)
	call	free
	testb	%bpl, %bpl
	je	.L321
.L275:
	movq	allocated_chunks_list(%rip), %rdi
	testq	%rdi, %rdi
	je	.L274
	movq	16(%rdi), %rbx
	jmp	.L286
	.p2align 4,,10
	.p2align 3
.L285:
	movq	%rax, 24(%rbx)
	movq	%rbx, 16(%rax)
.L319:
	call	free
.L283:
	testb	%bpl, %bpl
	jne	.L274
.L323:
	movq	%rbx, %rdi
	movq	16(%rbx), %rbx
.L286:
	movq	24(%rdi), %rax
	testq	%rbx, %rbx
	sete	%bpl
	testq	%rax, %rax
	sete	%dl
	testb	%bpl, %bpl
	jne	.L322
.L284:
	testq	%rbx, %rbx
	je	.L285
	testb	%dl, %dl
	je	.L285
	movq	$0, 24(%rbx)
	call	free
	testb	%bpl, %bpl
	je	.L323
.L274:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L320:
	.cfi_restore_state
	testb	%dl, %dl
	jne	.L318
	testq	%rax, %rax
	je	.L278
	movq	$0, 16(%rax)
	call	free
	jmp	.L277
	.p2align 4,,10
	.p2align 3
.L322:
	testb	%dl, %dl
	jne	.L319
	testq	%rax, %rax
	.p2align 4,,6
	je	.L284
	movq	$0, 16(%rax)
	call	free
	jmp	.L283
	.cfi_endproc
.LFE96:
	.size	free_secure_mem, .-free_secure_mem
	.p2align 4,,15
	.globl	get_char
	.type	get_char, @function
get_char:
.LFB97:
	.cfi_startproc
	movzbl	(%rdi), %eax
	ret
	.cfi_endproc
.LFE97:
	.size	get_char, .-get_char
	.p2align 4,,15
	.globl	get_int
	.type	get_int, @function
get_int:
.LFB98:
	.cfi_startproc
	movzbl	1(%rdi), %edx
	xorl	%eax, %eax
	movb	(%rdi), %al
	movzbl	2(%rdi), %ecx
	movb	%dl, %ah
	movzbl	3(%rdi), %edx
	sall	$16, %ecx
	movzwl	%ax, %eax
	orl	%ecx, %eax
	sall	$24, %edx
	orl	%edx, %eax
	ret
	.cfi_endproc
.LFE98:
	.size	get_int, .-get_int
	.p2align 4,,15
	.globl	get_long_int
	.type	get_long_int, @function
get_long_int:
.LFB99:
	.cfi_startproc
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L331
	.p2align 4,,10
	.p2align 3
.L336:
	movzbl	(%rdi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L332
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%sil, -23(%rsp,%rdx)
	jg	.L334
	movzbl	2(%rdi,%rax), %esi
	movb	%sil, -24(%rsp,%rcx)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L334
	movzbl	3(%rdi,%rax), %esi
	addq	$4, %rdx
	movb	%sil, -24(%rsp,%rcx)
.L328:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L335
.L331:
	testl	%ecx, %ecx
	je	.L336
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L331
.L335:
	movq	-24(%rsp), %rax
	ret
	.p2align 4,,10
	.p2align 3
.L334:
	movq	%rcx, %rdx
	jmp	.L328
	.p2align 4,,10
	.p2align 3
.L332:
	movl	$8, %edx
	jmp	.L328
	.cfi_endproc
.LFE99:
	.size	get_long_int, .-get_long_int
	.p2align 4,,15
	.globl	get_pointer
	.type	get_pointer, @function
get_pointer:
.LFB100:
	.cfi_startproc
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L342
	.p2align 4,,10
	.p2align 3
.L347:
	movzbl	(%rdi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L343
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%sil, -23(%rsp,%rdx)
	jg	.L345
	movzbl	2(%rdi,%rax), %esi
	movb	%sil, -24(%rsp,%rcx)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L345
	movzbl	3(%rdi,%rax), %esi
	addq	$4, %rdx
	movb	%sil, -24(%rsp,%rcx)
.L339:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L346
.L342:
	testl	%ecx, %ecx
	je	.L347
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L342
.L346:
	movq	-24(%rsp), %rax
	ret
	.p2align 4,,10
	.p2align 3
.L345:
	movq	%rcx, %rdx
	jmp	.L339
	.p2align 4,,10
	.p2align 3
.L343:
	movl	$8, %edx
	jmp	.L339
	.cfi_endproc
.LFE100:
	.size	get_pointer, .-get_pointer
	.p2align 4,,15
	.globl	get_float
	.type	get_float, @function
get_float:
.LFB101:
	.cfi_startproc
	movzbl	1(%rdi), %edx
	movzbl	(%rdi), %eax
	movzbl	2(%rdi), %ecx
	movb	%dl, %ah
	movzbl	3(%rdi), %edx
	sall	$16, %ecx
	movzwl	%ax, %eax
	orl	%ecx, %eax
	sall	$24, %edx
	orl	%edx, %eax
	movl	%eax, -12(%rsp)
	movss	-12(%rsp), %xmm0
	ret
	.cfi_endproc
.LFE101:
	.size	get_float, .-get_float
	.p2align 4,,15
	.globl	get_double
	.type	get_double, @function
get_double:
.LFB102:
	.cfi_startproc
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L354
	.p2align 4,,10
	.p2align 3
.L359:
	movzbl	(%rdi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L355
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%sil, -23(%rsp,%rdx)
	jg	.L357
	movzbl	2(%rdi,%rax), %esi
	movb	%sil, -24(%rsp,%rcx)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L357
	movzbl	3(%rdi,%rax), %esi
	addq	$4, %rdx
	movb	%sil, -24(%rsp,%rcx)
.L351:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L358
.L354:
	testl	%ecx, %ecx
	je	.L359
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L354
.L358:
	movsd	-24(%rsp), %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L357:
	movq	%rcx, %rdx
	jmp	.L351
	.p2align 4,,10
	.p2align 3
.L355:
	movl	$8, %edx
	jmp	.L351
	.cfi_endproc
.LFE102:
	.size	get_double, .-get_double
	.p2align 4,,15
	.globl	get_array_element
	.type	get_array_element, @function
get_array_element:
.LFB103:
	.cfi_startproc
	imulq	%rdi, %rdx
	leaq	3(%rdx), %rax
	testq	%rdx, %rdx
	cmovns	%rdx, %rax
	sarq	$2, %rax
	leaq	0(,%rax,4), %r8
	cmpq	%r8, %rdx
	leaq	(%rax,%rax,8), %r8
	je	.L378
	negq	%rax
	addq	%rsi, %r8
	leaq	(%rdx,%rax,4), %r9
	cmpq	$3, %r9
	jg	.L372
	testq	%rdi, %rdi
	jle	.L372
	movl	$4, %r10d
	movq	%r9, %rdx
	xorl	%eax, %eax
	subq	%r9, %r10
	jmp	.L364
	.p2align 4,,10
	.p2align 3
.L379:
	cmpq	%rdi, %rax
	je	.L363
.L364:
	movzbl	(%r8,%rdx), %edx
	movb	%dl, (%rcx,%rax)
	addq	$1, %rax
	cmpq	%r10, %rax
	leaq	(%rax,%r9), %rdx
	jne	.L379
.L363:
	addq	$9, %r8
.L362:
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L377:
	cmpq	%rax, %rdi
	jle	.L360
.L380:
	testl	%esi, %esi
	jne	.L366
	movzbl	(%r8,%rdx), %esi
	movb	%sil, (%rcx,%rax)
	leaq	1(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L375
	movzbl	1(%r8,%rdx), %esi
	movb	%sil, 1(%rcx,%rax)
	leaq	2(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L375
	movzbl	2(%r8,%rdx), %esi
	movb	%sil, 2(%rcx,%rax)
	leaq	3(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L375
	movzbl	3(%r8,%rdx), %esi
	movb	%sil, 3(%rcx,%rax)
	addq	$4, %rax
.L367:
	addq	$4, %rdx
	cmpq	%rax, %rdi
	movl	$1, %esi
	jg	.L380
.L360:
	rep ret
	.p2align 4,,10
	.p2align 3
.L366:
	addq	$5, %rdx
	xorl	%esi, %esi
	jmp	.L377
	.p2align 4,,10
	.p2align 3
.L375:
	movq	%rsi, %rax
	jmp	.L367
	.p2align 4,,10
	.p2align 3
.L378:
	addq	%rsi, %r8
	xorl	%eax, %eax
	jmp	.L362
.L372:
	xorl	%eax, %eax
	jmp	.L363
	.cfi_endproc
.LFE103:
	.size	get_array_element, .-get_array_element
	.p2align 4,,15
	.globl	get_char_array_element
	.type	get_char_array_element, @function
get_char_array_element:
.LFB104:
	.cfi_startproc
	leaq	3(%rsi), %rdx
	testq	%rsi, %rsi
	cmovns	%rsi, %rdx
	sarq	$2, %rdx
	leaq	0(,%rdx,4), %rax
	cmpq	%rax, %rsi
	leaq	(%rdx,%rdx,8), %rax
	je	.L387
	negq	%rdx
	addq	%rax, %rdi
	leaq	(%rsi,%rdx,4), %rdx
	cmpq	$3, %rdx
	jg	.L384
	movzbl	(%rdi,%rdx), %eax
	ret
	.p2align 4,,10
	.p2align 3
.L387:
	addq	%rdi, %rax
.L383:
	movzbl	(%rax), %eax
	ret
.L384:
	leaq	9(%rdi), %rax
	jmp	.L383
	.cfi_endproc
.LFE104:
	.size	get_char_array_element, .-get_char_array_element
	.p2align 4,,15
	.globl	get_int_array_element
	.type	get_int_array_element, @function
get_int_array_element:
.LFB105:
	.cfi_startproc
	leaq	(%rsi,%rsi,8), %rax
	addq	%rax, %rdi
	xorl	%eax, %eax
	movzbl	1(%rdi), %edx
	movb	(%rdi), %al
	movzbl	2(%rdi), %ecx
	movb	%dl, %ah
	movzbl	3(%rdi), %edx
	sall	$16, %ecx
	movzwl	%ax, %eax
	orl	%ecx, %eax
	sall	$24, %edx
	orl	%edx, %eax
	ret
	.cfi_endproc
.LFE105:
	.size	get_int_array_element, .-get_int_array_element
	.p2align 4,,15
	.globl	get_long_int_array_element
	.type	get_long_int_array_element, @function
get_long_int_array_element:
.LFB106:
	.cfi_startproc
	salq	$3, %rsi
	leaq	3(%rsi), %rax
	testq	%rsi, %rsi
	cmovns	%rsi, %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	sarq	$2, %rax
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rdi
	xorl	%eax, %eax
	jmp	.L394
	.p2align 4,,10
	.p2align 3
.L399:
	movzbl	(%rdi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L395
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%sil, -23(%rsp,%rdx)
	jg	.L397
	movzbl	2(%rdi,%rax), %esi
	movb	%sil, -24(%rsp,%rcx)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L397
	movzbl	3(%rdi,%rax), %esi
	addq	$4, %rdx
	movb	%sil, -24(%rsp,%rcx)
.L391:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L398
.L394:
	testl	%ecx, %ecx
	je	.L399
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L394
.L398:
	movq	-24(%rsp), %rax
	ret
	.p2align 4,,10
	.p2align 3
.L397:
	movq	%rcx, %rdx
	jmp	.L391
	.p2align 4,,10
	.p2align 3
.L395:
	movl	$8, %edx
	jmp	.L391
	.cfi_endproc
.LFE106:
	.size	get_long_int_array_element, .-get_long_int_array_element
	.p2align 4,,15
	.globl	get_pointer_array_element
	.type	get_pointer_array_element, @function
get_pointer_array_element:
.LFB107:
	.cfi_startproc
	salq	$3, %rsi
	leaq	3(%rsi), %rax
	testq	%rsi, %rsi
	cmovns	%rsi, %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	sarq	$2, %rax
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rdi
	xorl	%eax, %eax
	jmp	.L405
	.p2align 4,,10
	.p2align 3
.L410:
	movzbl	(%rdi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L406
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%sil, -23(%rsp,%rdx)
	jg	.L408
	movzbl	2(%rdi,%rax), %esi
	movb	%sil, -24(%rsp,%rcx)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L408
	movzbl	3(%rdi,%rax), %esi
	addq	$4, %rdx
	movb	%sil, -24(%rsp,%rcx)
.L402:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L409
.L405:
	testl	%ecx, %ecx
	je	.L410
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L405
.L409:
	movq	-24(%rsp), %rax
	ret
	.p2align 4,,10
	.p2align 3
.L408:
	movq	%rcx, %rdx
	jmp	.L402
	.p2align 4,,10
	.p2align 3
.L406:
	movl	$8, %edx
	jmp	.L402
	.cfi_endproc
.LFE107:
	.size	get_pointer_array_element, .-get_pointer_array_element
	.p2align 4,,15
	.globl	get_float_array_element
	.type	get_float_array_element, @function
get_float_array_element:
.LFB108:
	.cfi_startproc
	leaq	(%rsi,%rsi,8), %rax
	addq	%rax, %rdi
	movzbl	1(%rdi), %edx
	movzbl	(%rdi), %eax
	movzbl	2(%rdi), %ecx
	movb	%dl, %ah
	movzbl	3(%rdi), %edx
	sall	$16, %ecx
	movzwl	%ax, %eax
	orl	%ecx, %eax
	sall	$24, %edx
	orl	%edx, %eax
	movl	%eax, -12(%rsp)
	movss	-12(%rsp), %xmm0
	ret
	.cfi_endproc
.LFE108:
	.size	get_float_array_element, .-get_float_array_element
	.p2align 4,,15
	.globl	get_double_array_element
	.type	get_double_array_element, @function
get_double_array_element:
.LFB109:
	.cfi_startproc
	salq	$3, %rsi
	leaq	3(%rsi), %rax
	testq	%rsi, %rsi
	cmovns	%rsi, %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	sarq	$2, %rax
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rdi
	xorl	%eax, %eax
	jmp	.L417
	.p2align 4,,10
	.p2align 3
.L422:
	movzbl	(%rdi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L418
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%sil, -23(%rsp,%rdx)
	jg	.L420
	movzbl	2(%rdi,%rax), %esi
	movb	%sil, -24(%rsp,%rcx)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L420
	movzbl	3(%rdi,%rax), %esi
	addq	$4, %rdx
	movb	%sil, -24(%rsp,%rcx)
.L414:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L421
.L417:
	testl	%ecx, %ecx
	je	.L422
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L417
.L421:
	movsd	-24(%rsp), %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L420:
	movq	%rcx, %rdx
	jmp	.L414
	.p2align 4,,10
	.p2align 3
.L418:
	movl	$8, %edx
	jmp	.L414
	.cfi_endproc
.LFE109:
	.size	get_double_array_element, .-get_double_array_element
	.p2align 4,,15
	.globl	get_arbitrary_block_in_heap
	.type	get_arbitrary_block_in_heap, @function
get_arbitrary_block_in_heap:
.LFB110:
	.cfi_startproc
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	testq	%rdi, %rdi
	jg	.L433
	jmp	.L423
	.p2align 4,,10
	.p2align 3
.L434:
	cmpq	%rax, %rdi
	jle	.L426
	movzbl	(%rsi,%rcx), %r8d
	movb	%r8b, (%rdx,%rax)
	leaq	1(%rax), %r8
	cmpq	%r8, %rdi
	jle	.L432
	movzbl	1(%rsi,%rcx), %r8d
	movb	%r8b, 1(%rdx,%rax)
	leaq	2(%rax), %r8
	cmpq	%r8, %rdi
	jle	.L432
	movzbl	2(%rsi,%rcx), %r8d
	movb	%r8b, 2(%rdx,%rax)
	leaq	3(%rax), %r8
	cmpq	%r8, %rdi
	jle	.L432
	movzbl	3(%rsi,%rcx), %r8d
	movb	%r8b, 3(%rdx,%rax)
	addq	$4, %rax
.L426:
	addq	$4, %rcx
	cmpq	%rax, %rdi
	movl	$1, %r8d
	jle	.L423
.L433:
	testl	%r8d, %r8d
	je	.L434
	addq	$5, %rcx
	xorl	%r8d, %r8d
	cmpq	%rax, %rdi
	jg	.L433
.L423:
	rep ret
	.p2align 4,,10
	.p2align 3
.L432:
	movq	%r8, %rax
	jmp	.L426
	.cfi_endproc
.LFE110:
	.size	get_arbitrary_block_in_heap, .-get_arbitrary_block_in_heap
	.p2align 4,,15
	.globl	get_arbitrary_block_in_heap_with_offset
	.type	get_arbitrary_block_in_heap_with_offset, @function
get_arbitrary_block_in_heap_with_offset:
.LFB111:
	.cfi_startproc
	leaq	3(%rdx), %rax
	testq	%rdx, %rdx
	cmovns	%rdx, %rax
	sarq	$2, %rax
	leaq	0(,%rax,4), %r8
	cmpq	%r8, %rdx
	leaq	(%rax,%rax,8), %r8
	je	.L453
	negq	%rax
	addq	%rsi, %r8
	leaq	(%rdx,%rax,4), %r9
	cmpq	$3, %r9
	jg	.L447
	testq	%rdi, %rdi
	jle	.L447
	movl	$4, %r10d
	movq	%r9, %rdx
	xorl	%eax, %eax
	subq	%r9, %r10
	jmp	.L439
	.p2align 4,,10
	.p2align 3
.L454:
	cmpq	%rdi, %rax
	je	.L438
.L439:
	movzbl	(%r8,%rdx), %edx
	movb	%dl, (%rcx,%rax)
	addq	$1, %rax
	cmpq	%r10, %rax
	leaq	(%rax,%r9), %rdx
	jne	.L454
.L438:
	addq	$9, %r8
.L437:
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L452:
	cmpq	%rax, %rdi
	jle	.L435
.L455:
	testl	%esi, %esi
	jne	.L441
	movzbl	(%r8,%rdx), %esi
	movb	%sil, (%rcx,%rax)
	leaq	1(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L450
	movzbl	1(%r8,%rdx), %esi
	movb	%sil, 1(%rcx,%rax)
	leaq	2(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L450
	movzbl	2(%r8,%rdx), %esi
	movb	%sil, 2(%rcx,%rax)
	leaq	3(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L450
	movzbl	3(%r8,%rdx), %esi
	movb	%sil, 3(%rcx,%rax)
	addq	$4, %rax
.L442:
	addq	$4, %rdx
	cmpq	%rax, %rdi
	movl	$1, %esi
	jg	.L455
.L435:
	rep ret
	.p2align 4,,10
	.p2align 3
.L441:
	addq	$5, %rdx
	xorl	%esi, %esi
	jmp	.L452
	.p2align 4,,10
	.p2align 3
.L450:
	movq	%rsi, %rax
	jmp	.L442
	.p2align 4,,10
	.p2align 3
.L453:
	addq	%rsi, %r8
	xorl	%eax, %eax
	jmp	.L437
.L447:
	xorl	%eax, %eax
	jmp	.L438
	.cfi_endproc
.LFE111:
	.size	get_arbitrary_block_in_heap_with_offset, .-get_arbitrary_block_in_heap_with_offset
	.p2align 4,,15
	.globl	set_char
	.type	set_char, @function
set_char:
.LFB112:
	.cfi_startproc
	movb	%sil, (%rdi)
	ret
	.cfi_endproc
.LFE112:
	.size	set_char, .-set_char
	.p2align 4,,15
	.globl	set_int
	.type	set_int, @function
set_int:
.LFB113:
	.cfi_startproc
	movl	%esi, %edx
	movl	%esi, %eax
	movb	%sil, (%rdi)
	shrw	$8, %dx
	shrl	$16, %eax
	shrl	$24, %esi
	movb	%dl, 1(%rdi)
	movb	%al, 2(%rdi)
	movb	%sil, 3(%rdi)
	ret
	.cfi_endproc
.LFE113:
	.size	set_int, .-set_int
	.p2align 4,,15
	.globl	set_long_int
	.type	set_long_int, @function
set_long_int:
.LFB114:
	.cfi_startproc
	movq	%rsi, -8(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L463
	.p2align 4,,10
	.p2align 3
.L468:
	movzbl	-8(%rsp,%rdx), %ecx
	movb	%cl, (%rdi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L464
	movzbl	-7(%rsp,%rdx), %ecx
	movb	%cl, 1(%rdi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L466
	movzbl	-8(%rsp,%rcx), %ecx
	movb	%cl, 2(%rdi,%rax)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L466
	movzbl	-8(%rsp,%rcx), %ecx
	addq	$4, %rdx
	movb	%cl, 3(%rdi,%rax)
.L460:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L467
.L463:
	testl	%ecx, %ecx
	je	.L468
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L463
.L467:
	rep ret
	.p2align 4,,10
	.p2align 3
.L466:
	movq	%rcx, %rdx
	jmp	.L460
	.p2align 4,,10
	.p2align 3
.L464:
	movl	$8, %edx
	jmp	.L460
	.cfi_endproc
.LFE114:
	.size	set_long_int, .-set_long_int
	.p2align 4,,15
	.globl	set_pointer
	.type	set_pointer, @function
set_pointer:
.LFB115:
	.cfi_startproc
	movq	%rsi, -8(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L474
	.p2align 4,,10
	.p2align 3
.L479:
	movzbl	-8(%rsp,%rdx), %ecx
	movb	%cl, (%rdi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L475
	movzbl	-7(%rsp,%rdx), %ecx
	movb	%cl, 1(%rdi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L477
	movzbl	-8(%rsp,%rcx), %ecx
	movb	%cl, 2(%rdi,%rax)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L477
	movzbl	-8(%rsp,%rcx), %ecx
	addq	$4, %rdx
	movb	%cl, 3(%rdi,%rax)
.L471:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L478
.L474:
	testl	%ecx, %ecx
	je	.L479
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L474
.L478:
	rep ret
	.p2align 4,,10
	.p2align 3
.L477:
	movq	%rcx, %rdx
	jmp	.L471
	.p2align 4,,10
	.p2align 3
.L475:
	movl	$8, %edx
	jmp	.L471
	.cfi_endproc
.LFE115:
	.size	set_pointer, .-set_pointer
	.p2align 4,,15
	.globl	set_float
	.type	set_float, @function
set_float:
.LFB116:
	.cfi_startproc
	movss	%xmm0, -4(%rsp)
	movzbl	-4(%rsp), %eax
	movb	%al, (%rdi)
	movzbl	-3(%rsp), %eax
	movb	%al, 1(%rdi)
	movzbl	-2(%rsp), %eax
	movb	%al, 2(%rdi)
	movzbl	-1(%rsp), %eax
	movb	%al, 3(%rdi)
	ret
	.cfi_endproc
.LFE116:
	.size	set_float, .-set_float
	.p2align 4,,15
	.globl	set_double
	.type	set_double, @function
set_double:
.LFB117:
	.cfi_startproc
	movsd	%xmm0, -8(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L486
	.p2align 4,,10
	.p2align 3
.L491:
	movzbl	-8(%rsp,%rdx), %ecx
	movb	%cl, (%rdi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L487
	movzbl	-7(%rsp,%rdx), %ecx
	movb	%cl, 1(%rdi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L489
	movzbl	-8(%rsp,%rcx), %ecx
	movb	%cl, 2(%rdi,%rax)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L489
	movzbl	-8(%rsp,%rcx), %ecx
	addq	$4, %rdx
	movb	%cl, 3(%rdi,%rax)
.L483:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L490
.L486:
	testl	%ecx, %ecx
	je	.L491
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L486
.L490:
	rep ret
	.p2align 4,,10
	.p2align 3
.L489:
	movq	%rcx, %rdx
	jmp	.L483
	.p2align 4,,10
	.p2align 3
.L487:
	movl	$8, %edx
	jmp	.L483
	.cfi_endproc
.LFE117:
	.size	set_double, .-set_double
	.p2align 4,,15
	.globl	set_array_element
	.type	set_array_element, @function
set_array_element:
.LFB118:
	.cfi_startproc
	imulq	%rdi, %rdx
	leaq	3(%rdx), %rax
	testq	%rdx, %rdx
	cmovns	%rdx, %rax
	sarq	$2, %rax
	leaq	0(,%rax,4), %r8
	cmpq	%r8, %rdx
	leaq	(%rax,%rax,8), %r8
	je	.L510
	negq	%rax
	addq	%rsi, %r8
	leaq	(%rdx,%rax,4), %r10
	cmpq	$3, %r10
	jg	.L504
	testq	%rdi, %rdi
	jle	.L504
	movl	$4, %r11d
	movq	%r10, %rdx
	xorl	%eax, %eax
	subq	%r10, %r11
	jmp	.L496
	.p2align 4,,10
	.p2align 3
.L511:
	cmpq	%rdi, %rax
	je	.L495
.L496:
	movzbl	(%rcx,%rax), %r9d
	addq	$1, %rax
	cmpq	%r11, %rax
	movb	%r9b, (%r8,%rdx)
	leaq	(%rax,%r10), %rdx
	jne	.L511
.L495:
	addq	$9, %r8
.L494:
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L509:
	cmpq	%rax, %rdi
	jle	.L492
.L512:
	testl	%esi, %esi
	jne	.L498
	movzbl	(%rcx,%rax), %esi
	movb	%sil, (%r8,%rdx)
	leaq	1(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L507
	movzbl	1(%rcx,%rax), %esi
	movb	%sil, 1(%r8,%rdx)
	leaq	2(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L507
	movzbl	2(%rcx,%rax), %esi
	movb	%sil, 2(%r8,%rdx)
	leaq	3(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L507
	movzbl	3(%rcx,%rax), %esi
	addq	$4, %rax
	movb	%sil, 3(%r8,%rdx)
.L499:
	addq	$4, %rdx
	cmpq	%rax, %rdi
	movl	$1, %esi
	jg	.L512
.L492:
	rep ret
	.p2align 4,,10
	.p2align 3
.L498:
	addq	$5, %rdx
	xorl	%esi, %esi
	jmp	.L509
	.p2align 4,,10
	.p2align 3
.L507:
	movq	%rsi, %rax
	jmp	.L499
	.p2align 4,,10
	.p2align 3
.L510:
	addq	%rsi, %r8
	xorl	%eax, %eax
	jmp	.L494
.L504:
	xorl	%eax, %eax
	jmp	.L495
	.cfi_endproc
.LFE118:
	.size	set_array_element, .-set_array_element
	.p2align 4,,15
	.globl	set_char_array_element
	.type	set_char_array_element, @function
set_char_array_element:
.LFB119:
	.cfi_startproc
	leaq	3(%rsi), %rcx
	testq	%rsi, %rsi
	cmovns	%rsi, %rcx
	sarq	$2, %rcx
	leaq	0(,%rcx,4), %rax
	cmpq	%rax, %rsi
	leaq	(%rcx,%rcx,8), %rax
	je	.L518
	negq	%rcx
	addq	%rax, %rdi
	leaq	(%rsi,%rcx,4), %rcx
	cmpq	$3, %rcx
	jg	.L516
	movb	%dl, (%rdi,%rcx)
	ret
	.p2align 4,,10
	.p2align 3
.L518:
	addq	%rdi, %rax
.L515:
	movb	%dl, (%rax)
	ret
.L516:
	leaq	9(%rdi), %rax
	jmp	.L515
	.cfi_endproc
.LFE119:
	.size	set_char_array_element, .-set_char_array_element
	.p2align 4,,15
	.globl	set_int_array_element
	.type	set_int_array_element, @function
set_int_array_element:
.LFB120:
	.cfi_startproc
	leaq	(%rsi,%rsi,8), %rax
	addq	%rax, %rdi
	movl	%edx, %eax
	shrw	$8, %ax
	movb	%dl, (%rdi)
	movb	%al, 1(%rdi)
	movl	%edx, %eax
	shrl	$24, %edx
	shrl	$16, %eax
	movb	%dl, 3(%rdi)
	movb	%al, 2(%rdi)
	ret
	.cfi_endproc
.LFE120:
	.size	set_int_array_element, .-set_int_array_element
	.p2align 4,,15
	.globl	set_long_int_array_element
	.type	set_long_int_array_element, @function
set_long_int_array_element:
.LFB121:
	.cfi_startproc
	salq	$3, %rsi
	movq	%rdx, -24(%rsp)
	leaq	3(%rsi), %rax
	testq	%rsi, %rsi
	cmovns	%rsi, %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	sarq	$2, %rax
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rdi
	xorl	%eax, %eax
	jmp	.L525
	.p2align 4,,10
	.p2align 3
.L530:
	movzbl	-24(%rsp,%rdx), %ecx
	movb	%cl, (%rdi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L526
	movzbl	-23(%rsp,%rdx), %ecx
	movb	%cl, 1(%rdi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L528
	movzbl	-24(%rsp,%rcx), %ecx
	movb	%cl, 2(%rdi,%rax)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L528
	movzbl	-24(%rsp,%rcx), %ecx
	addq	$4, %rdx
	movb	%cl, 3(%rdi,%rax)
.L522:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L529
.L525:
	testl	%ecx, %ecx
	je	.L530
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L525
.L529:
	rep ret
	.p2align 4,,10
	.p2align 3
.L528:
	movq	%rcx, %rdx
	jmp	.L522
	.p2align 4,,10
	.p2align 3
.L526:
	movl	$8, %edx
	jmp	.L522
	.cfi_endproc
.LFE121:
	.size	set_long_int_array_element, .-set_long_int_array_element
	.p2align 4,,15
	.globl	set_pointer_array_element
	.type	set_pointer_array_element, @function
set_pointer_array_element:
.LFB122:
	.cfi_startproc
	salq	$3, %rsi
	movq	%rdx, -24(%rsp)
	leaq	3(%rsi), %rax
	testq	%rsi, %rsi
	cmovns	%rsi, %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	sarq	$2, %rax
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rdi
	xorl	%eax, %eax
	jmp	.L536
	.p2align 4,,10
	.p2align 3
.L541:
	movzbl	-24(%rsp,%rdx), %ecx
	movb	%cl, (%rdi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L537
	movzbl	-23(%rsp,%rdx), %ecx
	movb	%cl, 1(%rdi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L539
	movzbl	-24(%rsp,%rcx), %ecx
	movb	%cl, 2(%rdi,%rax)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L539
	movzbl	-24(%rsp,%rcx), %ecx
	addq	$4, %rdx
	movb	%cl, 3(%rdi,%rax)
.L533:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L540
.L536:
	testl	%ecx, %ecx
	je	.L541
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L536
.L540:
	rep ret
	.p2align 4,,10
	.p2align 3
.L539:
	movq	%rcx, %rdx
	jmp	.L533
	.p2align 4,,10
	.p2align 3
.L537:
	movl	$8, %edx
	jmp	.L533
	.cfi_endproc
.LFE122:
	.size	set_pointer_array_element, .-set_pointer_array_element
	.p2align 4,,15
	.globl	set_float_array_element
	.type	set_float_array_element, @function
set_float_array_element:
.LFB123:
	.cfi_startproc
	leaq	(%rsi,%rsi,8), %rax
	movss	%xmm0, -4(%rsp)
	addq	%rax, %rdi
	movzbl	-4(%rsp), %eax
	movb	%al, (%rdi)
	movzbl	-3(%rsp), %eax
	movb	%al, 1(%rdi)
	movzbl	-2(%rsp), %eax
	movb	%al, 2(%rdi)
	movzbl	-1(%rsp), %eax
	movb	%al, 3(%rdi)
	ret
	.cfi_endproc
.LFE123:
	.size	set_float_array_element, .-set_float_array_element
	.p2align 4,,15
	.globl	set_double_array_element
	.type	set_double_array_element, @function
set_double_array_element:
.LFB124:
	.cfi_startproc
	salq	$3, %rsi
	movsd	%xmm0, -24(%rsp)
	leaq	3(%rsi), %rax
	testq	%rsi, %rsi
	cmovns	%rsi, %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	sarq	$2, %rax
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rdi
	xorl	%eax, %eax
	jmp	.L548
	.p2align 4,,10
	.p2align 3
.L553:
	movzbl	-24(%rsp,%rdx), %ecx
	movb	%cl, (%rdi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L549
	movzbl	-23(%rsp,%rdx), %ecx
	movb	%cl, 1(%rdi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L551
	movzbl	-24(%rsp,%rcx), %ecx
	movb	%cl, 2(%rdi,%rax)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L551
	movzbl	-24(%rsp,%rcx), %ecx
	addq	$4, %rdx
	movb	%cl, 3(%rdi,%rax)
.L545:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L552
.L548:
	testl	%ecx, %ecx
	je	.L553
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L548
.L552:
	rep ret
	.p2align 4,,10
	.p2align 3
.L551:
	movq	%rcx, %rdx
	jmp	.L545
	.p2align 4,,10
	.p2align 3
.L549:
	movl	$8, %edx
	jmp	.L545
	.cfi_endproc
.LFE124:
	.size	set_double_array_element, .-set_double_array_element
	.p2align 4,,15
	.globl	set_arbitrary_block_in_heap
	.type	set_arbitrary_block_in_heap, @function
set_arbitrary_block_in_heap:
.LFB125:
	.cfi_startproc
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	testq	%rdi, %rdi
	jg	.L564
	jmp	.L554
	.p2align 4,,10
	.p2align 3
.L565:
	cmpq	%rax, %rdi
	jle	.L557
	movzbl	(%rdx,%rax), %r8d
	movb	%r8b, (%rsi,%rcx)
	leaq	1(%rax), %r8
	cmpq	%r8, %rdi
	jle	.L563
	movzbl	1(%rdx,%rax), %r8d
	movb	%r8b, 1(%rsi,%rcx)
	leaq	2(%rax), %r8
	cmpq	%r8, %rdi
	jle	.L563
	movzbl	2(%rdx,%rax), %r8d
	movb	%r8b, 2(%rsi,%rcx)
	leaq	3(%rax), %r8
	cmpq	%r8, %rdi
	jle	.L563
	movzbl	3(%rdx,%rax), %r8d
	addq	$4, %rax
	movb	%r8b, 3(%rsi,%rcx)
.L557:
	addq	$4, %rcx
	cmpq	%rax, %rdi
	movl	$1, %r8d
	jle	.L554
.L564:
	testl	%r8d, %r8d
	je	.L565
	addq	$5, %rcx
	xorl	%r8d, %r8d
	cmpq	%rax, %rdi
	jg	.L564
.L554:
	rep ret
	.p2align 4,,10
	.p2align 3
.L563:
	movq	%r8, %rax
	jmp	.L557
	.cfi_endproc
.LFE125:
	.size	set_arbitrary_block_in_heap, .-set_arbitrary_block_in_heap
	.p2align 4,,15
	.globl	set_arbitrary_block_in_heap_with_offset
	.type	set_arbitrary_block_in_heap_with_offset, @function
set_arbitrary_block_in_heap_with_offset:
.LFB126:
	.cfi_startproc
	leaq	3(%rdx), %rax
	testq	%rdx, %rdx
	cmovns	%rdx, %rax
	sarq	$2, %rax
	leaq	0(,%rax,4), %r8
	cmpq	%r8, %rdx
	leaq	(%rax,%rax,8), %r8
	je	.L584
	negq	%rax
	addq	%rsi, %r8
	leaq	(%rdx,%rax,4), %r10
	cmpq	$3, %r10
	jg	.L578
	testq	%rdi, %rdi
	jle	.L578
	movl	$4, %r11d
	movq	%r10, %rdx
	xorl	%eax, %eax
	subq	%r10, %r11
	jmp	.L570
	.p2align 4,,10
	.p2align 3
.L585:
	cmpq	%rdi, %rax
	je	.L569
.L570:
	movzbl	(%rcx,%rax), %r9d
	addq	$1, %rax
	cmpq	%r11, %rax
	movb	%r9b, (%r8,%rdx)
	leaq	(%rax,%r10), %rdx
	jne	.L585
.L569:
	addq	$9, %r8
.L568:
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L583:
	cmpq	%rax, %rdi
	jle	.L566
.L586:
	testl	%esi, %esi
	jne	.L572
	movzbl	(%rcx,%rax), %esi
	movb	%sil, (%r8,%rdx)
	leaq	1(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L581
	movzbl	1(%rcx,%rax), %esi
	movb	%sil, 1(%r8,%rdx)
	leaq	2(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L581
	movzbl	2(%rcx,%rax), %esi
	movb	%sil, 2(%r8,%rdx)
	leaq	3(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L581
	movzbl	3(%rcx,%rax), %esi
	addq	$4, %rax
	movb	%sil, 3(%r8,%rdx)
.L573:
	addq	$4, %rdx
	cmpq	%rax, %rdi
	movl	$1, %esi
	jg	.L586
.L566:
	rep ret
	.p2align 4,,10
	.p2align 3
.L572:
	addq	$5, %rdx
	xorl	%esi, %esi
	jmp	.L583
	.p2align 4,,10
	.p2align 3
.L581:
	movq	%rsi, %rax
	jmp	.L573
	.p2align 4,,10
	.p2align 3
.L584:
	addq	%rsi, %r8
	xorl	%eax, %eax
	jmp	.L568
.L578:
	xorl	%eax, %eax
	jmp	.L569
	.cfi_endproc
.LFE126:
	.size	set_arbitrary_block_in_heap_with_offset, .-set_arbitrary_block_in_heap_with_offset
	.p2align 4,,15
	.globl	find_large_enough_free_group
	.type	find_large_enough_free_group, @function
find_large_enough_free_group:
.LFB127:
	.cfi_startproc
	movq	free_chunks_list(%rip), %rax
	testq	%rax, %rax
	je	.L592
	.p2align 4,,10
	.p2align 3
.L589:
	cmpq	%rdi, (%rax)
	jge	.L588
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L589
.L592:
	xorl	%eax, %eax
.L588:
	rep ret
	.cfi_endproc
.LFE127:
	.size	find_large_enough_free_group, .-find_large_enough_free_group
	.p2align 4,,15
	.globl	find_which_group_to_free
	.type	find_which_group_to_free, @function
find_which_group_to_free:
.LFB128:
	.cfi_startproc
	movq	allocated_chunks_list(%rip), %rax
	testq	%rax, %rax
	je	.L598
	.p2align 4,,10
	.p2align 3
.L595:
	cmpq	%rdi, 8(%rax)
	je	.L594
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L595
.L598:
	xorl	%eax, %eax
.L594:
	rep ret
	.cfi_endproc
.LFE128:
	.size	find_which_group_to_free, .-find_which_group_to_free
	.p2align 4,,15
	.globl	check_and_merge
	.type	check_and_merge, @function
check_and_merge:
.LFB129:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movq	(%rdi), %r13
	movq	8(%rdi), %r14
	leaq	0(%r13,%r13,8), %rax
	addq	%r14, %rax
	cmpq	%rax, 8(%rsi)
	jne	.L605
	movl	$32, %edi
	movq	%rdx, %r15
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L610
	addq	(%r12), %r13
	movq	%r14, 8(%rax)
	movq	16(%r12), %rdx
	movq	%r13, (%rax)
	movq	24(%rbp), %rax
	movq	%rdx, 16(%rbx)
	testq	%rax, %rax
	movq	%rax, 24(%rbx)
	je	.L602
	movq	%rbx, 16(%rax)
.L603:
	movq	16(%rbx), %rax
	testq	%rax, %rax
	je	.L604
	movq	%rbx, 24(%rax)
.L604:
	movq	%rbp, %rdi
	call	free
	movq	%r12, %rdi
	call	free
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L605:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L602:
	.cfi_restore_state
	movq	%rbx, (%r15)
	jmp	.L603
.L610:
	movl	$933, %esi
	movl	$__func__.5048, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE129:
	.size	check_and_merge, .-check_and_merge
	.p2align 4,,15
	.globl	managed_secure_malloc
	.type	managed_secure_malloc, @function
managed_secure_malloc:
.LFB130:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L624
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	testq	%rdi, %rdi
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	free_chunks_list(%rip), %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	leaq	3(%rdi), %rbp
	cmovns	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	sarq	$2, %rbp
	leaq	0(,%rbp,4), %rdx
	leaq	1(%rbp), %rax
	cmpq	%rdx, %rdi
	cmovg	%rax, %rbp
	testq	%r13, %r13
	je	.L626
	movq	%r13, %rbx
	.p2align 4,,10
	.p2align 3
.L615:
	cmpq	(%rbx), %rbp
	jle	.L614
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L615
.L626:
	popq	%rbx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L614:
	.cfi_restore_state
	movl	$32, %edi
	movq	8(%rbx), %r14
	movq	allocated_chunks_list(%rip), %r12
	call	malloc
	testq	%rax, %rax
	je	.L651
	testq	%r12, %r12
	movq	%rbp, (%rax)
	movq	%r14, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	je	.L616
	movq	%r12, 16(%rax)
	movq	%rax, 24(%r12)
	movq	$0, 24(%rax)
.L616:
	movq	(%rbx), %rdx
	addq	$1, allocated_chunks_num(%rip)
	movq	%rax, allocated_chunks_list(%rip)
	cmpq	%rbp, %rdx
	je	.L652
	leaq	0(%rbp,%rbp,8), %rax
	subq	%rbp, %rdx
	addq	%rax, 8(%rbx)
	movq	%rdx, (%rbx)
	movq	%r14, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L652:
	.cfi_restore_state
	movq	16(%rbx), %rbp
	movq	24(%rbx), %rax
	testq	%rbp, %rbp
	sete	%cl
	testq	%rax, %rax
	sete	%dl
	je	.L653
.L618:
	testq	%rax, %rax
	jne	.L654
.L620:
	testq	%rbp, %rbp
	jne	.L655
.L621:
	movq	%rax, 24(%rbp)
	movq	%rbx, %rdi
	movq	%rbp, 16(%rax)
	call	free
.L619:
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 24
	movq	%r13, free_chunks_list(%rip)
	movq	%r14, %rax
	subq	$1, free_chunks_num(%rip)
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L624:
	xorl	%eax, %eax
	ret
.L655:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	testb	%dl, %dl
	je	.L621
	movq	$0, 24(%rbp)
	movq	%rbx, %rdi
	movq	%rbp, %r13
	call	free
	jmp	.L619
.L654:
	testb	%cl, %cl
	je	.L620
	movq	$0, 16(%rax)
	movq	%rbx, %rdi
	call	free
	jmp	.L619
.L653:
	testb	%cl, %cl
	je	.L618
	movq	%rbx, %rdi
	xorl	%r13d, %r13d
	call	free
	jmp	.L619
.L651:
	movl	$94, %esi
	movl	$__func__.4725, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE130:
	.size	managed_secure_malloc, .-managed_secure_malloc
	.p2align 4,,15
	.globl	managed_secure_free
	.type	managed_secure_free, @function
managed_secure_free:
.LFB131:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	allocated_chunks_list(%rip), %r12
	testq	%r12, %r12
	je	.L706
	movq	%rdi, %rbp
	movq	%r12, %rbx
	.p2align 4,,10
	.p2align 3
.L659:
	cmpq	8(%rbx), %rbp
	je	.L658
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L659
.L706:
	xorl	%eax, %eax
.L767:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L658:
	.cfi_restore_state
	movl	$32, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r13
	je	.L772
	movq	(%rbx), %rax
	movq	%rbp, 8(%r13)
	movq	%rax, 0(%r13)
	movq	16(%rbx), %rax
	movq	%rax, 16(%r13)
	movq	24(%rbx), %rax
	movq	16(%rbx), %rbp
	movq	%rax, 24(%r13)
	movq	24(%rbx), %rax
	testq	%rbp, %rbp
	sete	%cl
	testq	%rax, %rax
	sete	%dl
	je	.L773
.L660:
	testq	%rax, %rax
	jne	.L774
.L662:
	testq	%rbp, %rbp
	jne	.L775
.L663:
	movq	%rax, 24(%rbp)
	movq	%rbx, %rdi
	movq	%rbp, 16(%rax)
	call	free
.L661:
	movq	free_chunks_list(%rip), %r14
	subq	$1, allocated_chunks_num(%rip)
	movq	%r12, allocated_chunks_list(%rip)
	testq	%r14, %r14
	je	.L776
	movq	8(%r13), %r12
	movq	%r14, %rbx
	xorl	%ebp, %ebp
	jmp	.L668
	.p2align 4,,10
	.p2align 3
.L777:
	movq	%rbx, %rbp
	movq	%rdx, %rbx
.L668:
	cmpq	%r12, 8(%rbx)
	jg	.L666
	movq	16(%rbx), %rdx
	testq	%rdx, %rdx
	jne	.L777
.L704:
	movq	8(%rbx), %rcx
	cmpq	%rcx, %r12
	jg	.L778
	movq	%rbx, %rbp
	movq	%rdx, %rbx
	jmp	.L682
	.p2align 4,,10
	.p2align 3
.L666:
	testq	%rbp, %rbp
	je	.L779
	cmpq	$0, 16(%rbp)
	je	.L780
	movq	8(%rbp), %rcx
.L682:
	movq	0(%rbp), %r15
	addq	$1, free_chunks_num(%rip)
	movq	%r13, 16(%rbp)
	movq	%rcx, 8(%rsp)
	movq	%rbp, 24(%r13)
	movq	%rbx, 16(%r13)
	leaq	(%r15,%r15,8), %rax
	movq	%r13, 24(%rbx)
	addq	%rcx, %rax
	cmpq	%rax, %r12
	jne	.L686
	movl	$32, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r14
	je	.L677
	addq	0(%r13), %r15
	movq	8(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	%r15, (%rax)
	movq	24(%rbp), %rax
	movq	%rbx, 16(%r14)
	testq	%rax, %rax
	movq	%rax, 24(%r14)
	je	.L687
	movq	%r14, 16(%rax)
	movq	16(%r14), %rbx
	testq	%rbx, %rbx
	je	.L689
.L688:
	movq	%r14, 24(%rbx)
.L689:
	movq	%rbp, %rdi
	call	free
	movq	%r13, %rdi
	call	free
.L690:
	movq	16(%r14), %rbp
	subq	$1, free_chunks_num(%rip)
	testq	%rbp, %rbp
	je	.L770
	movq	(%r14), %r12
	movq	8(%r14), %r13
	leaq	(%r12,%r12,8), %rax
	addq	%r13, %rax
	cmpq	%rax, 8(%rbp)
	je	.L747
	jmp	.L770
	.p2align 4,,10
	.p2align 3
.L781:
	movq	%rbx, %r14
.L747:
	movl	$32, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L677
	addq	0(%rbp), %r12
	movq	%r13, 8(%rax)
	movq	16(%rbp), %rdx
	movq	%r12, (%rax)
	movq	24(%r14), %rax
	movq	%rdx, 16(%rbx)
	testq	%rax, %rax
	movq	%rax, 24(%rbx)
	je	.L695
	movq	%rbx, 16(%rax)
	movq	16(%rbx), %rdx
.L696:
	testq	%rdx, %rdx
	je	.L697
	movq	%rbx, 24(%rdx)
.L697:
	movq	%r14, %rdi
	call	free
	movq	%rbp, %rdi
	call	free
	movq	16(%rbx), %rbp
	subq	$1, free_chunks_num(%rip)
	testq	%rbp, %rbp
	je	.L770
	movq	(%rbx), %r12
	movq	8(%rbx), %r13
	leaq	(%r12,%r12,8), %rax
	addq	%r13, %rax
	cmpq	%rax, 8(%rbp)
	je	.L781
.L770:
	movl	$1, %eax
.L783:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L695:
	.cfi_restore_state
	movq	%rbx, free_chunks_list(%rip)
	jmp	.L696
	.p2align 4,,10
	.p2align 3
.L686:
	movq	0(%r13), %rbp
	leaq	0(%rbp,%rbp,8), %rax
	addq	%r12, %rax
	cmpq	%rax, 8(%rbx)
	jne	.L770
	movl	$32, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r14
	je	.L677
	addq	(%rbx), %rbp
	movq	24(%r13), %rdx
	movq	%r12, 8(%rax)
	movq	%rdx, 24(%rax)
	testq	%rdx, %rdx
	movq	%rbp, (%rax)
	movq	16(%rbx), %rax
	movq	%rax, 16(%r14)
	je	.L691
	movq	%r14, 16(%rdx)
	movq	16(%r14), %rax
.L692:
	testq	%rax, %rax
	je	.L693
	movq	%r14, 24(%rax)
.L693:
	movq	%r13, %rdi
	call	free
	movq	%rbx, %rdi
	call	free
	jmp	.L690
	.p2align 4,,10
	.p2align 3
.L775:
	testb	%dl, %dl
	je	.L663
	movq	$0, 24(%rbp)
	movq	%rbx, %rdi
	movq	%rbp, %r12
	call	free
	jmp	.L661
.L778:
	movq	(%rbx), %rbp
	addq	$1, free_chunks_num(%rip)
	movq	%r13, 16(%rbx)
	movq	%rcx, 8(%rsp)
	movq	%rbx, 24(%r13)
	movq	$0, 16(%r13)
	leaq	0(%rbp,%rbp,8), %rax
	addq	%rcx, %rax
	cmpq	%rax, %r12
	jne	.L770
	movl	$32, %edi
	call	malloc
	testq	%rax, %rax
	je	.L677
	movq	24(%rbx), %rdx
	addq	0(%r13), %rbp
	movq	8(%rsp), %rcx
	movq	$0, 16(%rax)
	testq	%rdx, %rdx
	movq	%rdx, 24(%rax)
	movq	%rbp, (%rax)
	movq	%rcx, 8(%rax)
	je	.L683
	movq	%rax, 16(%rdx)
	movq	16(%rax), %rdx
	testq	%rdx, %rdx
	je	.L685
	movq	%rax, 24(%rdx)
.L685:
	movq	%rbx, %rdi
	call	free
	movq	%r13, %rdi
	call	free
	subq	$1, free_chunks_num(%rip)
	jmp	.L770
	.p2align 4,,10
	.p2align 3
.L774:
	testb	%cl, %cl
	je	.L662
	movq	$0, 16(%rax)
	movq	%rbx, %rdi
	call	free
	jmp	.L661
.L687:
	movq	%r14, free_chunks_list(%rip)
	jmp	.L688
.L779:
	movl	$32, %edi
	movq	0(%r13), %rbp
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L670
	movq	%rbp, (%rax)
	movq	%r12, 8(%rax)
	movq	%r13, %rdi
	movq	%r14, 16(%rax)
	movq	%rax, 24(%r14)
	movq	$0, 24(%rax)
	movq	%rax, free_chunks_list(%rip)
	addq	$1, free_chunks_num(%rip)
	call	free
	leaq	0(%rbp,%rbp,8), %rax
	addq	%r12, %rax
	cmpq	%rax, 8(%r14)
	jne	.L770
	movl	$32, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r15
	je	.L677
	addq	(%r14), %rbp
	movq	%r12, 8(%rax)
	movq	$0, 24(%rax)
	movq	%r15, free_chunks_list(%rip)
	movq	%rbp, (%rax)
	movq	16(%r14), %rax
	testq	%rax, %rax
	movq	%rax, 16(%r15)
	je	.L673
	movq	%r15, 24(%rax)
.L673:
	movq	%rbx, %rdi
	call	free
	movq	%r14, %rdi
	call	free
	movq	16(%r15), %rbp
	subq	$1, free_chunks_num(%rip)
	testq	%rbp, %rbp
	je	.L770
	movq	(%r15), %r12
	movq	8(%r15), %r13
	leaq	(%r12,%r12,8), %rax
	addq	%r13, %rax
	cmpq	%rax, 8(%rbp)
	je	.L746
	jmp	.L770
	.p2align 4,,10
	.p2align 3
.L782:
	movq	%rbx, %r15
.L746:
	movl	$32, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L677
	addq	0(%rbp), %r12
	movq	%r13, 8(%rax)
	movq	16(%rbp), %rdx
	movq	%r12, (%rax)
	movq	24(%r15), %rax
	movq	%rdx, 16(%rbx)
	testq	%rax, %rax
	movq	%rax, 24(%rbx)
	je	.L678
	movq	%rbx, 16(%rax)
	movq	16(%rbx), %rdx
.L679:
	testq	%rdx, %rdx
	je	.L680
	movq	%rbx, 24(%rdx)
.L680:
	movq	%r15, %rdi
	call	free
	movq	%rbp, %rdi
	call	free
	movq	16(%rbx), %rbp
	subq	$1, free_chunks_num(%rip)
	testq	%rbp, %rbp
	je	.L770
	movq	(%rbx), %r12
	movq	8(%rbx), %r13
	leaq	(%r12,%r12,8), %rax
	addq	%r13, %rax
	cmpq	%rax, 8(%rbp)
	je	.L782
	movl	$1, %eax
	jmp	.L783
.L678:
	movq	%rbx, free_chunks_list(%rip)
	jmp	.L679
.L776:
	movl	$32, %edi
	movq	0(%r13), %rbp
	movq	8(%r13), %rbx
	call	malloc
	testq	%rax, %rax
	je	.L670
	movq	%rbp, (%rax)
	movq	%rbx, 8(%rax)
	movq	%r13, %rdi
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	%rax, free_chunks_list(%rip)
	addq	$1, free_chunks_num(%rip)
	call	free
	movl	$1, %eax
	jmp	.L767
.L773:
	testb	%cl, %cl
	je	.L660
	movq	%rbx, %rdi
	xorl	%r12d, %r12d
	call	free
	jmp	.L661
.L683:
	movq	%rax, free_chunks_list(%rip)
	jmp	.L685
.L691:
	movq	%r14, free_chunks_list(%rip)
	jmp	.L692
.L677:
	movl	$933, %esi
	movl	$__func__.5048, %edi
	call	error_checking_malloc.part.0
.L670:
	movl	$94, %esi
	movl	$__func__.4725, %edi
	call	error_checking_malloc.part.0
.L780:
	movq	%rbx, %rdx
	movq	%rbp, %rbx
	jmp	.L704
.L772:
	movl	$1027, %esi
	movl	$__func__.5064, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE131:
	.size	managed_secure_free, .-managed_secure_free
	.p2align 4,,15
	.globl	error_checking_managed_secure_malloc
	.type	error_checking_managed_secure_malloc, @function
error_checking_managed_secure_malloc:
.LFB132:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L800
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rsi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	leaq	3(%rdi), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	testq	%rdi, %rdi
	movq	free_chunks_list(%rip), %r13
	cmovns	%rdi, %rbp
	sarq	$2, %rbp
	leaq	0(,%rbp,4), %rcx
	leaq	1(%rbp), %rax
	movq	%r13, %rbx
	cmpq	%rcx, %rdi
	cmovg	%rax, %rbp
	testq	%r13, %r13
	je	.L789
	.p2align 4,,10
	.p2align 3
.L819:
	cmpq	%rbp, (%rbx)
	jge	.L788
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L819
.L789:
	movl	%edx, %esi
	movq	%r15, %rdi
	call	error_checking_managed_secure_malloc.part.3
	.p2align 4,,10
	.p2align 3
.L788:
	movl	$32, %edi
	movl	%edx, 12(%rsp)
	movq	8(%rbx), %r14
	movq	allocated_chunks_list(%rip), %r12
	call	malloc
	testq	%rax, %rax
	movl	12(%rsp), %edx
	je	.L832
	testq	%r12, %r12
	movq	%rbp, (%rax)
	movq	%r14, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	je	.L791
	movq	%r12, 16(%rax)
	movq	%rax, 24(%r12)
	movq	$0, 24(%rax)
.L791:
	movq	(%rbx), %rcx
	addq	$1, allocated_chunks_num(%rip)
	movq	%rax, allocated_chunks_list(%rip)
	cmpq	%rcx, %rbp
	je	.L833
	leaq	0(%rbp,%rbp,8), %rax
	addq	%rax, 8(%rbx)
	subq	%rbp, %rcx
	movq	%rcx, (%rbx)
.L797:
	testq	%r14, %r14
	je	.L789
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	movq	%r14, %rax
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L800:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L833:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	16(%rbx), %rbp
	movq	24(%rbx), %rax
	movl	%edx, 12(%rsp)
	testq	%rbp, %rbp
	sete	%sil
	testq	%rax, %rax
	sete	%cl
	je	.L834
.L793:
	testq	%rax, %rax
	jne	.L835
.L795:
	testq	%rbp, %rbp
	jne	.L836
.L796:
	movq	%rax, 24(%rbp)
	movq	%rbx, %rdi
	movq	%rbp, 16(%rax)
	call	free
	movl	12(%rsp), %edx
.L794:
	movq	%r13, free_chunks_list(%rip)
	subq	$1, free_chunks_num(%rip)
	jmp	.L797
.L836:
	testb	%cl, %cl
	je	.L796
	movq	$0, 24(%rbp)
	movq	%rbx, %rdi
	movq	%rbp, %r13
	call	free
	movl	12(%rsp), %edx
	jmp	.L794
.L835:
	testb	%sil, %sil
	je	.L795
	movq	$0, 16(%rax)
	movq	%rbx, %rdi
	call	free
	movl	12(%rsp), %edx
	jmp	.L794
.L834:
	testb	%sil, %sil
	je	.L793
	movq	%rbx, %rdi
	xorl	%r13d, %r13d
	call	free
	movl	12(%rsp), %edx
	jmp	.L794
.L832:
	movl	$94, %esi
	movl	$__func__.4725, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE132:
	.size	error_checking_managed_secure_malloc, .-error_checking_managed_secure_malloc
	.p2align 4,,15
	.globl	insert_data_into_normal_array
	.type	insert_data_into_normal_array, @function
insert_data_into_normal_array:
.LFB133:
	.cfi_startproc
	testq	%rdi, %rdi
	jle	.L837
	leaq	16(%rsi), %rax
	cmpq	%rax, %rdx
	leaq	16(%rdx), %rax
	setnb	%cl
	cmpq	%rax, %rsi
	setnb	%al
	orb	%al, %cl
	je	.L839
	cmpq	$15, %rdi
	jbe	.L839
	movq	%rdi, %r8
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	shrq	$4, %r8
	movq	%r8, %rax
	salq	$4, %rax
.L845:
	movdqu	(%rdx,%rcx), %xmm0
	addq	$1, %r9
	movdqu	%xmm0, (%rsi,%rcx)
	addq	$16, %rcx
	cmpq	%r9, %r8
	ja	.L845
	cmpq	%rax, %rdi
	je	.L837
	movslq	%eax, %rcx
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	1(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L837
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	2(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L837
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	3(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L837
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	4(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L837
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	5(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L837
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	6(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L837
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	7(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L837
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	8(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L837
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	9(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L837
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	10(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L837
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	11(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L837
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	12(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L837
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	13(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L837
	movzbl	(%rdx,%rcx), %r8d
	addl	$14, %eax
	cltq
	cmpq	%rax, %rdi
	movb	%r8b, (%rsi,%rcx)
	jle	.L855
	movzbl	(%rdx,%rax), %edx
	movb	%dl, (%rsi,%rax)
	ret
	.p2align 4,,10
	.p2align 3
.L839:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L847:
	movzbl	(%rdx,%rax), %ecx
	movb	%cl, (%rsi,%rax)
	addq	$1, %rax
	cmpq	%rax, %rdi
	jne	.L847
	.p2align 4,,10
	.p2align 3
.L837:
	rep ret
	.p2align 4,,10
	.p2align 3
.L855:
	rep ret
	.cfi_endproc
.LFE133:
	.size	insert_data_into_normal_array, .-insert_data_into_normal_array
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"Zero hex test printing: 0x%02x \n"
	.section	.rodata.str1.1
.LC16:
	.string	"Starting mem test"
.LC17:
	.string	"chunks:%ld\n"
.LC18:
	.string	"After init, print mem"
.LC21:
	.string	"Trying to secure malloc"
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"After malloc,try to insert some data"
	.align 8
.LC23:
	.string	"Now let's retrieve the data and display them"
	.section	.rodata.str1.1
.LC24:
	.string	"%d "
	.section	.rodata.str1.8
	.align 8
.LC25:
	.string	"Again, Trying to secure malloc"
	.align 8
.LC26:
	.string	"Again, after malloc,try to insert some data"
	.align 8
.LC27:
	.string	"After displaying the two arrays:"
	.section	.rodata.str1.1
.LC28:
	.string	"After freeing one of them:"
	.section	.rodata.str1.8
	.align 8
.LC29:
	.string	"Now trying to store and retrieve 424242424..."
	.section	.rodata.str1.1
.LC30:
	.string	"\n\n%d \n\n"
.LC31:
	.string	"After retrieving int:"
	.section	.rodata.str1.8
	.align 8
.LC32:
	.string	"After freeing the second array:"
	.section	.rodata.str1.1
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
	.section	.rodata.str1.8
	.align 8
.LC44:
	.string	"Array wrapper function testing"
	.section	.rodata.str1.1
.LC48:
	.string	"array index 2 is %lf\n"
.LC49:
	.string	"array index 3 is %lf\n"
.LC50:
	.string	"\n\n"
	.section	.rodata.str1.8
	.align 8
.LC51:
	.string	"After data retrieval, print mem"
	.section	.rodata.str1.1
.LC52:
	.string	"Mem test done"
	.text
	.p2align 4,,15
	.globl	mem_test
	.type	mem_test, @function
mem_test:
.LFB134:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	xorl	%edx, %edx
	movl	$.LC15, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	xorl	%ebx, %ebx
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	call	__printf_chk
	movl	$.LC16, %edi
	call	puts
	movq	entire_memory_chunk(%rip), %rax
	movabsq	$2049638230412172402, %rdx
	movl	$.LC17, %esi
	movl	$1, %edi
	movq	%rax, 8(%rsp)
	movq	total_bytes_allocated(%rip), %rax
	leaq	5(%rax), %rcx
	movq	%rcx, %rax
	sarq	$63, %rcx
	imulq	%rdx
	xorl	%eax, %eax
	subq	%rcx, %rdx
	call	__printf_chk
	movl	$.LC18, %edi
	call	puts
	movl	$.LC9, %edi
	call	puts
	cmpq	$0, total_bytes_allocated(%rip)
	movq	8(%rsp), %rbp
	jle	.L860
	.p2align 4,,10
	.p2align 3
.L1079:
	movzbl	0(%rbp,%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC10, %esi
	movl	$1, %edi
	addq	$1, %rbx
	call	__printf_chk
	cmpq	total_bytes_allocated(%rip), %rbx
	jl	.L1079
.L860:
	movl	$10, %edi
	call	putchar
	movl	$80, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r15
	je	.L1142
	movl	$80, %edi
	call	malloc
	testq	%rax, %rax
	je	.L1143
	movq	%r15, %rax
	andl	$15, %eax
	shrq	$2, %rax
	negq	%rax
	andl	$3, %eax
	movq	%rax, 24(%rsp)
	je	.L1000
	cmpq	$1, %rax
	movl	$25, (%r15)
	jbe	.L1001
	cmpq	$2, %rax
	movl	$36, 4(%r15)
	jbe	.L1002
	movl	$49, 8(%r15)
	movl	$17, %edx
	movl	$8, %eax
.L863:
	movq	$20, 16(%rsp)
	movq	24(%rsp), %rcx
	subq	%rcx, 16(%rsp)
	movq	%rax, 40(%rsp)
	movq	16(%rsp), %rdi
	movq	40(%rsp), %xmm1
	movdqa	.LC19(%rip), %xmm2
	shrq	$2, %rdi
	movq	%rdi, %rsi
	movq	%rdi, 48(%rsp)
	salq	$2, %rdi
	movq	%rdi, 32(%rsp)
	leaq	1(%rax), %rdi
	cmpq	$4, %rsi
	movdqa	.LC20(%rip), %xmm0
	movq	%rdi, (%rsp)
	leaq	(%r15,%rcx,4), %rdi
	movhps	(%rsp), %xmm1
	movq	%rdi, 40(%rsp)
	paddq	%xmm1, %xmm2
	paddq	%xmm1, %xmm0
	shufps	$136, %xmm0, %xmm1
	movdqa	%xmm1, %xmm3
	pmuludq	%xmm1, %xmm3
	psrlq	$32, %xmm1
	pshufd	$8, %xmm3, %xmm0
	pmuludq	%xmm1, %xmm1
	pshufd	$8, %xmm1, %xmm1
	punpckldq	%xmm1, %xmm0
	movdqa	.LC19(%rip), %xmm1
	movdqu	%xmm0, (%rdi)
	paddq	%xmm2, %xmm1
	movdqa	.LC20(%rip), %xmm0
	paddq	%xmm2, %xmm0
	shufps	$136, %xmm0, %xmm2
	movdqa	%xmm2, %xmm4
	pmuludq	%xmm2, %xmm4
	psrlq	$32, %xmm2
	pshufd	$8, %xmm4, %xmm0
	pmuludq	%xmm2, %xmm2
	pshufd	$8, %xmm2, %xmm2
	punpckldq	%xmm2, %xmm0
	movdqa	.LC19(%rip), %xmm2
	movdqu	%xmm0, 16(%rdi)
	paddq	%xmm1, %xmm2
	movdqa	.LC20(%rip), %xmm0
	paddq	%xmm1, %xmm0
	shufps	$136, %xmm0, %xmm1
	movdqa	%xmm1, %xmm5
	pmuludq	%xmm1, %xmm5
	psrlq	$32, %xmm1
	pshufd	$8, %xmm5, %xmm0
	pmuludq	%xmm1, %xmm1
	pshufd	$8, %xmm1, %xmm1
	punpckldq	%xmm1, %xmm0
	movdqa	.LC19(%rip), %xmm1
	movdqu	%xmm0, 32(%rdi)
	paddq	%xmm2, %xmm1
	movdqa	.LC20(%rip), %xmm0
	paddq	%xmm2, %xmm0
	shufps	$136, %xmm0, %xmm2
	movdqa	%xmm2, %xmm6
	pmuludq	%xmm2, %xmm6
	psrlq	$32, %xmm2
	pshufd	$8, %xmm6, %xmm0
	pmuludq	%xmm2, %xmm2
	pshufd	$8, %xmm2, %xmm2
	punpckldq	%xmm2, %xmm0
	movdqu	%xmm0, 48(%rdi)
	jbe	.L865
	movdqa	.LC20(%rip), %xmm0
	paddq	%xmm1, %xmm0
	shufps	$136, %xmm0, %xmm1
	movdqa	%xmm1, %xmm7
	pmuludq	%xmm1, %xmm7
	psrlq	$32, %xmm1
	pshufd	$8, %xmm7, %xmm0
	pmuludq	%xmm1, %xmm1
	pshufd	$8, %xmm1, %xmm1
	punpckldq	%xmm1, %xmm0
	movdqu	%xmm0, 64(%rdi)
.L865:
	movq	32(%rsp), %rdi
	movq	16(%rsp), %rsi
	addq	%rdi, %rax
	subq	%rdi, %rdx
	cmpq	%rsi, %rdi
	je	.L866
	movl	%eax, %ecx
	imull	%eax, %ecx
	cmpq	$1, %rdx
	movl	%ecx, -20(%r15,%rax,4)
	leaq	1(%rax), %rcx
	je	.L866
	movl	%ecx, %esi
	addq	$2, %rax
	imull	%ecx, %esi
	cmpq	$2, %rdx
	movl	%esi, -20(%r15,%rcx,4)
	je	.L866
	movl	%eax, %edx
	imull	%eax, %edx
	movl	%edx, -20(%r15,%rax,4)
.L866:
	movl	$.LC21, %edi
	call	puts
	movl	$80, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, (%rsp)
	je	.L1144
	movl	$.LC22, %edi
	call	puts
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movq	(%rsp), %rsi
	jmp	.L873
	.p2align 4,,10
	.p2align 3
.L1146:
	movzbl	(%r15,%rdx), %ecx
	cmpq	$79, %rdx
	movb	%cl, (%rsi,%rax)
	je	.L1003
	movzbl	1(%r15,%rdx), %ecx
	movb	%cl, 1(%rsi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$79, %rcx
	jg	.L1005
	movzbl	2(%r15,%rdx), %ecx
	movb	%cl, 2(%rsi,%rax)
	leaq	3(%rdx), %rcx
	cmpq	$79, %rcx
	jg	.L1005
	movzbl	3(%r15,%rdx), %ecx
	addq	$4, %rdx
	movb	%cl, 3(%rsi,%rax)
.L870:
	addq	$4, %rax
	cmpq	$79, %rdx
	movl	$1, %ecx
	jg	.L1145
.L873:
	testl	%ecx, %ecx
	je	.L1146
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$79, %rdx
	jle	.L873
.L1145:
	movl	$.LC23, %edi
	call	puts
	movl	$4, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L1147
	movq	(%rsp), %r13
	leaq	1(%rax), %r12
	leaq	2(%rax), %rbp
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L876:
	movzbl	0(%r13), %eax
	movl	$.LC24, %esi
	movl	$1, %edi
	addq	$1, %r14
	addq	$9, %r13
	movb	%al, (%rbx)
	movzbl	-8(%r13), %eax
	movb	%al, (%r12)
	movzbl	-7(%r13), %eax
	movb	%al, 0(%rbp)
	movzbl	-6(%r13), %eax
	movb	%al, 3(%rbx)
	movl	(%rbx), %edx
	xorl	%eax, %eax
	call	__printf_chk
	cmpq	$20, %r14
	jne	.L876
	movl	$10, %edi
	call	putchar
	movl	$.LC25, %edi
	call	puts
	movl	$80, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, %r14
	je	.L1148
	movq	24(%rsp), %rax
	testq	%rax, %rax
	je	.L1006
	cmpq	$1, %rax
	movl	$15, (%r15)
	jbe	.L1007
	cmpq	$2, %rax
	movl	$18, 4(%r15)
	jbe	.L1008
	movl	$21, 8(%r15)
	movl	$17, %edx
	movl	$8, %eax
.L878:
	leaq	1(%rax), %rdi
	movq	%rax, 56(%rsp)
	cmpq	$4, 48(%rsp)
	movq	56(%rsp), %xmm0
	movq	%rdi, 24(%rsp)
	movq	40(%rsp), %rdi
	movhps	24(%rsp), %xmm0
	movdqa	.LC20(%rip), %xmm2
	movdqa	%xmm0, %xmm7
	paddq	%xmm0, %xmm2
	movdqa	.LC19(%rip), %xmm1
	shufps	$136, %xmm2, %xmm7
	paddq	%xmm0, %xmm1
	movdqa	.LC20(%rip), %xmm2
	movdqa	%xmm7, %xmm0
	paddq	%xmm1, %xmm2
	pslld	$1, %xmm0
	paddd	%xmm7, %xmm0
	movdqa	%xmm1, %xmm7
	movdqu	%xmm0, (%rdi)
	shufps	$136, %xmm2, %xmm7
	movdqa	.LC19(%rip), %xmm0
	movdqa	.LC20(%rip), %xmm2
	paddq	%xmm1, %xmm0
	movdqa	%xmm7, %xmm1
	movdqa	%xmm0, %xmm3
	paddq	%xmm0, %xmm2
	pslld	$1, %xmm1
	shufps	$136, %xmm2, %xmm3
	paddd	%xmm7, %xmm1
	movdqu	%xmm1, 16(%rdi)
	movdqa	.LC19(%rip), %xmm1
	movdqa	.LC20(%rip), %xmm2
	paddq	%xmm0, %xmm1
	movdqa	%xmm1, %xmm4
	movdqa	%xmm3, %xmm0
	paddq	%xmm1, %xmm2
	shufps	$136, %xmm2, %xmm4
	pslld	$1, %xmm0
	paddd	%xmm3, %xmm0
	movdqu	%xmm0, 32(%rdi)
	movdqa	.LC19(%rip), %xmm0
	paddq	%xmm1, %xmm0
	movdqa	%xmm4, %xmm1
	pslld	$1, %xmm1
	paddd	%xmm4, %xmm1
	movdqu	%xmm1, 48(%rdi)
	jbe	.L880
	movdqa	.LC20(%rip), %xmm1
	paddq	%xmm0, %xmm1
	shufps	$136, %xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	pslld	$1, %xmm1
	paddd	%xmm0, %xmm1
	movdqu	%xmm1, 64(%rdi)
.L880:
	movq	32(%rsp), %rdi
	movq	16(%rsp), %rsi
	addq	%rdi, %rax
	subq	%rdi, %rdx
	cmpq	%rsi, %rdi
	je	.L881
	leal	(%rax,%rax,2), %ecx
	cmpq	$1, %rdx
	movl	%ecx, -20(%r15,%rax,4)
	leaq	1(%rax), %rcx
	je	.L881
	leal	(%rcx,%rcx,2), %esi
	addq	$2, %rax
	cmpq	$2, %rdx
	movl	%esi, -20(%r15,%rcx,4)
	je	.L881
	leal	(%rax,%rax,2), %edx
	movl	%edx, -20(%r15,%rax,4)
.L881:
	movl	$.LC26, %edi
	call	puts
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L887
	.p2align 4,,10
	.p2align 3
.L1150:
	movzbl	(%r15,%rdx), %ecx
	cmpq	$79, %rdx
	movb	%cl, (%r14,%rax)
	je	.L1009
	movzbl	1(%r15,%rdx), %ecx
	movb	%cl, 1(%r14,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$79, %rcx
	jg	.L1011
	movzbl	2(%r15,%rdx), %ecx
	movb	%cl, 2(%r14,%rax)
	leaq	3(%rdx), %rcx
	cmpq	$79, %rcx
	jg	.L1011
	movzbl	3(%r15,%rdx), %ecx
	addq	$4, %rdx
	movb	%cl, 3(%r14,%rax)
.L884:
	addq	$4, %rax
	cmpq	$79, %rdx
	movl	$1, %ecx
	jg	.L1149
.L887:
	testl	%ecx, %ecx
	je	.L1150
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$79, %rdx
	jle	.L887
.L1149:
	movl	$.LC23, %edi
	movq	%r14, %r13
	xorl	%r15d, %r15d
	call	puts
	.p2align 4,,10
	.p2align 3
.L889:
	movzbl	0(%r13), %eax
	movl	$.LC24, %esi
	movl	$1, %edi
	addq	$1, %r15
	addq	$9, %r13
	movb	%al, (%rbx)
	movzbl	-8(%r13), %eax
	movb	%al, (%r12)
	movzbl	-7(%r13), %eax
	movb	%al, 0(%rbp)
	movzbl	-6(%r13), %eax
	movb	%al, 3(%rbx)
	movl	(%rbx), %edx
	xorl	%eax, %eax
	call	__printf_chk
	cmpq	$20, %r15
	jne	.L889
	movl	$10, %edi
	xorl	%r12d, %r12d
	call	putchar
	movl	$.LC27, %edi
	call	puts
	movl	$.LC4, %edi
	call	puts
	movq	free_chunks_list(%rip), %rbp
	testq	%rbp, %rbp
	je	.L1151
	.p2align 4,,10
	.p2align 3
.L1080:
	movq	8(%rbp), %r8
	movq	0(%rbp), %rcx
	movq	%r12, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %r12
	call	__printf_chk
	movq	16(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.L1080
.L891:
	movl	$.LC5, %edi
	xorl	%r12d, %r12d
	call	puts
	movq	allocated_chunks_list(%rip), %rbp
	testq	%rbp, %rbp
	je	.L1152
	.p2align 4,,10
	.p2align 3
.L1081:
	movq	8(%rbp), %r8
	movq	0(%rbp), %rcx
	movq	%r12, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %r12
	call	__printf_chk
	movq	16(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.L1081
.L894:
	movq	%r14, %rdi
	xorl	%r12d, %r12d
	call	managed_secure_free
	movl	$.LC28, %edi
	call	puts
	movl	$.LC4, %edi
	call	puts
	movq	free_chunks_list(%rip), %rbp
	testq	%rbp, %rbp
	je	.L1153
	.p2align 4,,10
	.p2align 3
.L1082:
	movq	8(%rbp), %r8
	movq	0(%rbp), %rcx
	movq	%r12, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %r12
	call	__printf_chk
	movq	16(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.L1082
.L897:
	movl	$.LC5, %edi
	xorl	%r12d, %r12d
	call	puts
	movq	allocated_chunks_list(%rip), %rbp
	testq	%rbp, %rbp
	je	.L1154
	.p2align 4,,10
	.p2align 3
.L1083:
	movq	8(%rbp), %r8
	movq	0(%rbp), %rcx
	movq	%r12, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %r12
	call	__printf_chk
	movq	16(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.L1083
.L900:
	movl	$.LC29, %edi
	call	puts
	movl	$4, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, %rbp
	je	.L1155
	movl	$25, %r12d
	movq	%rbx, %rdi
	movl	$424242424, (%rbx)
	movb	$-8, (%rax)
	movb	$108, 1(%rax)
	movb	$73, 2(%rax)
	movb	%r12b, 3(%rax)
	call	free
	movl	$4, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L1156
	movzbl	0(%rbp), %eax
	movb	%r12b, 3(%rbx)
	movl	$.LC30, %esi
	movl	$1, %edi
	xorl	%r12d, %r12d
	movb	%al, (%rbx)
	movzbl	1(%rbp), %eax
	movb	%al, 1(%rbx)
	movzbl	2(%rbp), %eax
	movb	%al, 2(%rbx)
	movl	(%rbx), %edx
	xorl	%eax, %eax
	call	__printf_chk
	movq	%rbx, %rdi
	call	free
	movl	$.LC31, %edi
	call	puts
	movl	$.LC4, %edi
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1157
.L1084:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%r12, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %r12
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1084
.L905:
	movl	$.LC5, %edi
	xorl	%r12d, %r12d
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1158
	.p2align 4,,10
	.p2align 3
.L1085:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%r12, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %r12
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1085
.L908:
	movq	(%rsp), %rdi
	xorl	%r12d, %r12d
	call	managed_secure_free
	movl	$.LC32, %edi
	call	puts
	movl	$.LC4, %edi
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1159
	.p2align 4,,10
	.p2align 3
.L1086:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%r12, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %r12
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1086
.L911:
	movl	$.LC5, %edi
	xorl	%r12d, %r12d
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1160
	.p2align 4,,10
	.p2align 3
.L1087:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%r12, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %r12
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1087
.L914:
	movq	%rbp, %rdi
	xorl	%ebp, %ebp
	call	managed_secure_free
	movl	$.LC33, %edi
	call	puts
	movl	$.LC4, %edi
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1161
	.p2align 4,,10
	.p2align 3
.L1088:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1088
.L917:
	movl	$.LC5, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1162
	.p2align 4,,10
	.p2align 3
.L1089:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1089
.L920:
	movl	$.LC34, %edi
	call	puts
	movl	$4, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	je	.L1163
	movl	$1, %ecx
	movl	$-98, %esi
	movl	$-122, %ebx
	xorl	%edx, %edx
	movb	%sil, (%rax)
	movb	%cl, 2(%rax)
	movb	%bl, 1(%rax)
	movb	$0, 3(%rax)
	movb	%sil, %dl
	movl	%ecx, %eax
	movb	%bl, %dh
	movl	$.LC35, %esi
	andl	$1, %eax
	movzwl	%dx, %edx
	movl	$1, %edi
	sall	$16, %eax
	movl	$99998, 76(%rsp)
	orl	%eax, %edx
	xorl	%eax, %eax
	call	__printf_chk
	movl	$1, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	je	.L1164
	movb	$98, (%rax)
	movl	$98, %edx
	movl	$.LC36, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$8, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, %rbp
	je	.L1165
	movq	$54545454, 96(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L929
	.p2align 4,,10
	.p2align 3
.L1167:
	movzbl	96(%rsp,%rdx), %ecx
	movb	%cl, 0(%rbp,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L1012
	movzbl	97(%rsp,%rdx), %ecx
	movb	%cl, 1(%rbp,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L1014
	movzbl	96(%rsp,%rcx), %ecx
	movb	%cl, 2(%rbp,%rax)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L1014
	movzbl	96(%rsp,%rcx), %ecx
	addq	$4, %rdx
	movb	%cl, 3(%rbp,%rax)
.L926:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L1166
.L929:
	testl	%ecx, %ecx
	je	.L1167
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L929
.L1166:
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L934
	.p2align 4,,10
	.p2align 3
.L1169:
	movzbl	0(%rbp,%rax), %ecx
	movb	%cl, 128(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L1015
	movzbl	1(%rbp,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%sil, 129(%rsp,%rdx)
	jg	.L1017
	movzbl	2(%rbp,%rax), %esi
	movb	%sil, 128(%rsp,%rcx)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L1017
	movzbl	3(%rbp,%rax), %esi
	addq	$4, %rdx
	movb	%sil, 128(%rsp,%rcx)
.L931:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L1168
.L934:
	testl	%ecx, %ecx
	je	.L1169
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L934
.L1168:
	movq	128(%rsp), %rdx
	movl	$.LC37, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	xorl	%r12d, %r12d
	call	__printf_chk
	movl	$.LC38, %edi
	call	puts
	movl	$.LC4, %edi
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1170
	.p2align 4,,10
	.p2align 3
.L1090:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%r12, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %r12
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1090
.L936:
	movl	$.LC5, %edi
	xorl	%r12d, %r12d
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1171
	.p2align 4,,10
	.p2align 3
.L1091:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%r12, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %r12
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1091
.L939:
	movq	%rbp, %rdi
	xorl	%ebp, %ebp
	call	managed_secure_free
	movl	$.LC39, %edi
	call	puts
	movl	$.LC4, %edi
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1172
	.p2align 4,,10
	.p2align 3
.L1092:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1092
.L942:
	movl	$.LC5, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1173
	.p2align 4,,10
	.p2align 3
.L1093:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1093
.L945:
	movl	$1, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	je	.L1174
	movl	$97, %edx
	movl	$.LC36, %esi
	movb	$97, (%rax)
	movl	$1, %edi
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	call	__printf_chk
	movl	$.LC40, %edi
	call	puts
	movl	$.LC4, %edi
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1175
	.p2align 4,,10
	.p2align 3
.L1094:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1094
.L949:
	movl	$.LC5, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1176
	.p2align 4,,10
	.p2align 3
.L1095:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1095
.L952:
	movl	$8, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	je	.L1177
	movsd	.LC41(%rip), %xmm3
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	movsd	%xmm3, 112(%rsp)
	jmp	.L959
	.p2align 4,,10
	.p2align 3
.L1179:
	movzbl	112(%rsp,%rdx), %esi
	movb	%sil, (%rax,%rcx)
	leaq	1(%rdx), %rsi
	cmpq	$8, %rsi
	je	.L1018
	movzbl	113(%rsp,%rdx), %esi
	movb	%sil, 1(%rax,%rcx)
	leaq	2(%rdx), %rsi
	cmpq	$7, %rsi
	jg	.L1020
	movzbl	112(%rsp,%rsi), %esi
	movb	%sil, 2(%rax,%rcx)
	leaq	3(%rdx), %rsi
	cmpq	$7, %rsi
	jg	.L1020
	movzbl	112(%rsp,%rsi), %esi
	addq	$4, %rdx
	movb	%sil, 3(%rax,%rcx)
.L956:
	addq	$4, %rcx
	cmpq	$7, %rdx
	movl	$1, %esi
	jg	.L1178
.L959:
	testl	%esi, %esi
	je	.L1179
	addq	$5, %rcx
	xorl	%esi, %esi
	cmpq	$7, %rdx
	jle	.L959
.L1178:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	jmp	.L964
	.p2align 4,,10
	.p2align 3
.L1181:
	movzbl	(%rax,%rcx), %esi
	movb	%sil, 128(%rsp,%rdx)
	leaq	1(%rdx), %rsi
	cmpq	$8, %rsi
	je	.L1021
	movzbl	1(%rax,%rcx), %edi
	leaq	2(%rdx), %rsi
	cmpq	$7, %rsi
	movb	%dil, 129(%rsp,%rdx)
	jg	.L1023
	movzbl	2(%rax,%rcx), %edi
	movb	%dil, 128(%rsp,%rsi)
	leaq	3(%rdx), %rsi
	cmpq	$7, %rsi
	jg	.L1023
	movzbl	3(%rax,%rcx), %edi
	addq	$4, %rdx
	movb	%dil, 128(%rsp,%rsi)
.L961:
	addq	$4, %rcx
	cmpq	$7, %rdx
	movl	$1, %esi
	jg	.L1180
.L964:
	testl	%esi, %esi
	je	.L1181
	addq	$5, %rcx
	xorl	%esi, %esi
	cmpq	$7, %rdx
	jle	.L964
.L1180:
	movsd	128(%rsp), %xmm0
	movl	$.LC42, %esi
	movl	$1, %edi
	movl	$1, %eax
	xorl	%ebp, %ebp
	call	__printf_chk
	movl	$.LC43, %edi
	call	puts
	movl	$.LC4, %edi
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1182
	.p2align 4,,10
	.p2align 3
.L1096:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1096
.L966:
	movl	$.LC5, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1183
	.p2align 4,,10
	.p2align 3
.L1097:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1097
.L969:
	movl	$.LC44, %edi
	call	puts
	movl	$80, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	je	.L1184
	movsd	.LC45(%rip), %xmm4
	leaq	36(%rax), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	movsd	%xmm4, 80(%rsp)
	jmp	.L976
	.p2align 4,,10
	.p2align 3
.L1186:
	movzbl	80(%rsp,%rdx), %edi
	movb	%dil, (%rsi,%rcx)
	leaq	1(%rdx), %rdi
	cmpq	$8, %rdi
	je	.L1024
	movzbl	81(%rsp,%rdx), %edi
	movb	%dil, 1(%rsi,%rcx)
	leaq	2(%rdx), %rdi
	cmpq	$7, %rdi
	jg	.L1026
	movzbl	80(%rsp,%rdi), %edi
	movb	%dil, 2(%rsi,%rcx)
	leaq	3(%rdx), %rdi
	cmpq	$7, %rdi
	jg	.L1026
	movzbl	80(%rsp,%rdi), %edi
	addq	$4, %rdx
	movb	%dil, 3(%rsi,%rcx)
.L973:
	addq	$4, %rcx
	cmpq	$7, %rdx
	movl	$1, %edi
	jg	.L1185
.L976:
	testl	%edi, %edi
	je	.L1186
	addq	$5, %rcx
	xorl	%edi, %edi
	cmpq	$7, %rdx
	jle	.L976
.L1185:
	movsd	.LC46(%rip), %xmm5
	leaq	54(%rax), %rbx
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movsd	%xmm5, 80(%rsp)
	jmp	.L981
	.p2align 4,,10
	.p2align 3
.L1188:
	movzbl	80(%rsp,%rax), %ecx
	movb	%cl, (%rbx,%rdx)
	leaq	1(%rax), %rcx
	cmpq	$8, %rcx
	je	.L1027
	movzbl	81(%rsp,%rax), %ecx
	movb	%cl, 1(%rbx,%rdx)
	leaq	2(%rax), %rcx
	cmpq	$7, %rcx
	jg	.L1029
	movzbl	80(%rsp,%rcx), %ecx
	movb	%cl, 2(%rbx,%rdx)
	leaq	3(%rax), %rcx
	cmpq	$7, %rcx
	jg	.L1029
	movzbl	80(%rsp,%rcx), %ecx
	addq	$4, %rax
	movb	%cl, 3(%rbx,%rdx)
.L978:
	addq	$4, %rdx
	cmpq	$7, %rax
	movl	$1, %ecx
	jg	.L1187
.L981:
	testl	%ecx, %ecx
	je	.L1188
	addq	$5, %rdx
	xorl	%ecx, %ecx
	cmpq	$7, %rax
	jle	.L981
.L1187:
	movsd	.LC47(%rip), %xmm6
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movsd	%xmm6, 80(%rsp)
	jmp	.L986
	.p2align 4,,10
	.p2align 3
.L1190:
	movzbl	(%rsi,%rdx), %ecx
	movb	%cl, 80(%rsp,%rax)
	leaq	1(%rax), %rcx
	cmpq	$8, %rcx
	je	.L1030
	movzbl	1(%rsi,%rdx), %edi
	leaq	2(%rax), %rcx
	cmpq	$7, %rcx
	movb	%dil, 81(%rsp,%rax)
	jg	.L1032
	movzbl	2(%rsi,%rdx), %edi
	movb	%dil, 80(%rsp,%rcx)
	leaq	3(%rax), %rcx
	cmpq	$7, %rcx
	jg	.L1032
	movzbl	3(%rsi,%rdx), %edi
	addq	$4, %rax
	movb	%dil, 80(%rsp,%rcx)
.L983:
	addq	$4, %rdx
	cmpq	$7, %rax
	movl	$1, %ecx
	jg	.L1189
.L986:
	testl	%ecx, %ecx
	je	.L1190
	addq	$5, %rdx
	xorl	%ecx, %ecx
	cmpq	$7, %rax
	jle	.L986
.L1189:
	movsd	80(%rsp), %xmm0
	movl	$.LC48, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L991
	.p2align 4,,10
	.p2align 3
.L1192:
	movzbl	(%rbx,%rdx), %ecx
	movb	%cl, 80(%rsp,%rax)
	leaq	1(%rax), %rcx
	cmpq	$8, %rcx
	je	.L1033
	movzbl	1(%rbx,%rdx), %esi
	leaq	2(%rax), %rcx
	cmpq	$7, %rcx
	movb	%sil, 81(%rsp,%rax)
	jg	.L1035
	movzbl	2(%rbx,%rdx), %esi
	movb	%sil, 80(%rsp,%rcx)
	leaq	3(%rax), %rcx
	cmpq	$7, %rcx
	jg	.L1035
	movzbl	3(%rbx,%rdx), %esi
	addq	$4, %rax
	movb	%sil, 80(%rsp,%rcx)
.L988:
	addq	$4, %rdx
	cmpq	$7, %rax
	movl	$1, %ecx
	jg	.L1191
.L991:
	testl	%ecx, %ecx
	je	.L1192
	addq	$5, %rdx
	xorl	%ecx, %ecx
	cmpq	$7, %rax
	jle	.L991
.L1191:
	movsd	80(%rsp), %xmm0
	movl	$.LC49, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L996
	.p2align 4,,10
	.p2align 3
.L1194:
	movzbl	(%rbx,%rdx), %ecx
	movb	%cl, 128(%rsp,%rax)
	leaq	1(%rax), %rcx
	cmpq	$8, %rcx
	je	.L1036
	movzbl	1(%rbx,%rdx), %esi
	leaq	2(%rax), %rcx
	cmpq	$7, %rcx
	movb	%sil, 129(%rsp,%rax)
	jg	.L1038
	movzbl	2(%rbx,%rdx), %esi
	movb	%sil, 128(%rsp,%rcx)
	leaq	3(%rax), %rcx
	cmpq	$7, %rcx
	jg	.L1038
	movzbl	3(%rbx,%rdx), %esi
	addq	$4, %rax
	movb	%sil, 128(%rsp,%rcx)
.L993:
	addq	$4, %rdx
	cmpq	$7, %rax
	movl	$1, %ecx
	jg	.L1193
.L996:
	testl	%ecx, %ecx
	je	.L1194
	addq	$5, %rdx
	xorl	%ecx, %ecx
	cmpq	$7, %rax
	jle	.L996
.L1193:
	movsd	128(%rsp), %xmm0
	movl	$.LC49, %esi
	movl	$1, %edi
	movl	$1, %eax
	xorl	%ebx, %ebx
	movsd	%xmm0, 80(%rsp)
	call	__printf_chk
	movl	$.LC50, %edi
	call	puts
	movl	$.LC51, %edi
	call	puts
	movl	$.LC9, %edi
	call	puts
	cmpq	$0, total_bytes_allocated(%rip)
	movq	8(%rsp), %rbp
	jle	.L998
	.p2align 4,,10
	.p2align 3
.L1098:
	movzbl	0(%rbp,%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC10, %esi
	movl	$1, %edi
	addq	$1, %rbx
	call	__printf_chk
	cmpq	total_bytes_allocated(%rip), %rbx
	jl	.L1098
.L998:
	movl	$10, %edi
	call	putchar
	movl	$.LC52, %edi
	call	puts
	addq	$152, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1005:
	.cfi_restore_state
	movq	%rcx, %rdx
	jmp	.L870
	.p2align 4,,10
	.p2align 3
.L1038:
	movq	%rcx, %rax
	jmp	.L993
	.p2align 4,,10
	.p2align 3
.L1035:
	movq	%rcx, %rax
	jmp	.L988
	.p2align 4,,10
	.p2align 3
.L1032:
	movq	%rcx, %rax
	jmp	.L983
	.p2align 4,,10
	.p2align 3
.L1029:
	movq	%rcx, %rax
	jmp	.L978
	.p2align 4,,10
	.p2align 3
.L1026:
	movq	%rdi, %rdx
	jmp	.L973
	.p2align 4,,10
	.p2align 3
.L1023:
	movq	%rsi, %rdx
	jmp	.L961
	.p2align 4,,10
	.p2align 3
.L1020:
	movq	%rsi, %rdx
	jmp	.L956
	.p2align 4,,10
	.p2align 3
.L1017:
	movq	%rcx, %rdx
	jmp	.L931
	.p2align 4,,10
	.p2align 3
.L1014:
	movq	%rcx, %rdx
	jmp	.L926
	.p2align 4,,10
	.p2align 3
.L1011:
	movq	%rcx, %rdx
	jmp	.L884
	.p2align 4,,10
	.p2align 3
.L1000:
	movl	$20, %edx
	movl	$5, %eax
	jmp	.L863
	.p2align 4,,10
	.p2align 3
.L1006:
	movl	$20, %edx
	movl	$5, %eax
	jmp	.L878
	.p2align 4,,10
	.p2align 3
.L1036:
	movl	$8, %eax
	jmp	.L993
	.p2align 4,,10
	.p2align 3
.L1003:
	movl	$80, %edx
	jmp	.L870
	.p2align 4,,10
	.p2align 3
.L1033:
	movl	$8, %eax
	jmp	.L988
	.p2align 4,,10
	.p2align 3
.L1030:
	movl	$8, %eax
	jmp	.L983
	.p2align 4,,10
	.p2align 3
.L1024:
	movl	$8, %edx
	jmp	.L973
	.p2align 4,,10
	.p2align 3
.L1027:
	movl	$8, %eax
	jmp	.L978
	.p2align 4,,10
	.p2align 3
.L1021:
	movl	$8, %edx
	jmp	.L961
	.p2align 4,,10
	.p2align 3
.L1012:
	movl	$8, %edx
	jmp	.L926
	.p2align 4,,10
	.p2align 3
.L1009:
	movl	$80, %edx
	jmp	.L884
	.p2align 4,,10
	.p2align 3
.L1018:
	movl	$8, %edx
	jmp	.L956
	.p2align 4,,10
	.p2align 3
.L1015:
	movl	$8, %edx
	jmp	.L931
.L1008:
	movl	$18, %edx
	movl	$7, %eax
	jmp	.L878
.L1002:
	movl	$18, %edx
	movl	$7, %eax
	jmp	.L863
.L1001:
	movl	$19, %edx
	movl	$6, %eax
	jmp	.L863
.L1007:
	movl	$19, %edx
	movl	$6, %eax
	jmp	.L878
.L1183:
	movl	$.LC2, %edi
	call	puts
	jmp	.L969
.L1160:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L914
.L1161:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L917
.L1162:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L920
.L1176:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L952
.L1172:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L942
.L1173:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L945
.L1175:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L949
.L1170:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L936
.L1171:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L939
.L1152:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L894
.L1153:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L897
.L1154:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L900
	.p2align 4,,10
	.p2align 3
.L1157:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L905
.L1158:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L908
.L1159:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L911
.L1151:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L891
.L1182:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L966
.L1163:
	movl	$146, %esi
	movl	$__func__.5115, %edi
	call	error_checking_managed_secure_malloc.part.3
.L1165:
	movl	$158, %esi
	movl	$__func__.5115, %edi
	call	error_checking_managed_secure_malloc.part.3
.L1164:
	movl	$152, %esi
	movl	$__func__.5115, %edi
	call	error_checking_managed_secure_malloc.part.3
.L1143:
	movl	$61, %esi
	movl	$__func__.5115, %edi
	call	error_checking_malloc.part.0
.L1184:
	movl	$193, %esi
	movl	$__func__.5115, %edi
	call	error_checking_managed_secure_malloc.part.3
.L1174:
	movl	$172, %esi
	movl	$__func__.5115, %edi
	call	error_checking_managed_secure_malloc.part.3
.L1177:
	movl	$182, %esi
	movl	$__func__.5115, %edi
	call	error_checking_managed_secure_malloc.part.3
.L1142:
	movl	$60, %esi
	movl	$__func__.5115, %edi
	call	error_checking_malloc.part.0
.L1144:
	movl	$70, %esi
	movl	$__func__.5115, %edi
	call	error_checking_managed_secure_malloc.part.3
.L1148:
	movl	$91, %esi
	movl	$__func__.5115, %edi
	call	error_checking_managed_secure_malloc.part.3
.L1147:
	movl	$78, %esi
	movl	$__func__.5115, %edi
	call	error_checking_malloc.part.0
.L1156:
	movl	$124, %esi
	movl	$__func__.5115, %edi
	call	error_checking_malloc.part.0
.L1155:
	movl	$120, %esi
	movl	$__func__.5115, %edi
	call	error_checking_managed_secure_malloc.part.3
	.cfi_endproc
.LFE134:
	.size	mem_test, .-mem_test
	.section	.rodata.str1.1
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
	.p2align 4,,15
	.globl	list_test
	.type	list_test, @function
list_test:
.LFB135:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	$.LC4, %edi
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	xorl	%ebp, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1313
	.p2align 4,,10
	.p2align 3
.L1281:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1281
.L1197:
	movl	$.LC5, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1314
	.p2align 4,,10
	.p2align 3
.L1282:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1282
.L1200:
	movl	$.LC53, %edi
	call	puts
	movl	$101, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	je	.L1315
.L1202:
	movl	$.LC4, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1316
	.p2align 4,,10
	.p2align 3
.L1283:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1283
.L1204:
	movl	$.LC5, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1317
	.p2align 4,,10
	.p2align 3
.L1284:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1284
.L1207:
	movl	$.LC55, %edi
	call	puts
	movl	$42, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, %r12
	je	.L1318
.L1209:
	movl	$.LC4, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1319
	.p2align 4,,10
	.p2align 3
.L1285:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1285
.L1211:
	movl	$.LC5, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1320
	.p2align 4,,10
	.p2align 3
.L1286:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1286
.L1214:
	movl	$.LC57, %edi
	call	puts
	movl	$61, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, %rbp
	je	.L1321
.L1216:
	movl	$.LC4, %edi
	xorl	%r13d, %r13d
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1322
	.p2align 4,,10
	.p2align 3
.L1287:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%r13, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %r13
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1287
.L1218:
	movl	$.LC5, %edi
	xorl	%r13d, %r13d
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1323
	.p2align 4,,10
	.p2align 3
.L1288:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%r13, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %r13
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1288
.L1221:
	movl	$.LC59, %edi
	call	puts
	movq	%r12, %rdi
	call	managed_secure_free
	testl	%eax, %eax
	je	.L1324
.L1223:
	movl	$.LC4, %edi
	xorl	%r12d, %r12d
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1325
	.p2align 4,,10
	.p2align 3
.L1289:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%r12, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %r12
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1289
.L1225:
	movl	$.LC5, %edi
	xorl	%r12d, %r12d
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1326
	.p2align 4,,10
	.p2align 3
.L1290:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%r12, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %r12
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1290
.L1228:
	movl	$.LC61, %edi
	call	puts
	movl	$80, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	je	.L1327
.L1230:
	movl	$.LC4, %edi
	xorl	%r12d, %r12d
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1328
	.p2align 4,,10
	.p2align 3
.L1291:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%r12, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %r12
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1291
.L1232:
	movl	$.LC5, %edi
	xorl	%r12d, %r12d
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1329
	.p2align 4,,10
	.p2align 3
.L1292:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%r12, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %r12
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1292
.L1235:
	movl	$.LC63, %edi
	call	puts
	movl	$29, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	je	.L1330
.L1237:
	movl	$.LC4, %edi
	xorl	%r12d, %r12d
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1331
	.p2align 4,,10
	.p2align 3
.L1293:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%r12, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %r12
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1293
.L1239:
	movl	$.LC5, %edi
	xorl	%r12d, %r12d
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1332
	.p2align 4,,10
	.p2align 3
.L1294:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%r12, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %r12
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1294
.L1242:
	movl	$.LC65, %edi
	call	puts
	movq	%rbp, %rdi
	call	managed_secure_free
	testl	%eax, %eax
	jne	.L1244
	movl	$.LC60, %edi
	call	puts
.L1244:
	movl	$.LC4, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1333
	.p2align 4,,10
	.p2align 3
.L1295:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1295
.L1246:
	movl	$.LC5, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1334
	.p2align 4,,10
	.p2align 3
.L1296:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1296
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1324:
	.cfi_restore_state
	movl	$.LC60, %edi
	call	puts
	jmp	.L1223
.L1330:
	movl	$.LC64, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1237
.L1321:
	movl	$.LC58, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1216
.L1327:
	movl	$.LC62, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1230
.L1315:
	movl	$.LC54, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1202
.L1318:
	movl	$.LC56, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1209
.L1331:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1239
.L1320:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1214
.L1319:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1211
.L1326:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1228
.L1325:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1225
.L1317:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1207
.L1316:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1204
.L1314:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1200
.L1313:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1197
.L1328:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1232
.L1322:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1218
.L1334:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	$.LC2, %edi
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	puts
.L1333:
	.cfi_restore_state
	movl	$.LC2, %edi
	call	puts
	jmp	.L1246
.L1323:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1221
.L1329:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1235
.L1332:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1242
	.cfi_endproc
.LFE135:
	.size	list_test, .-list_test
	.section	.rodata.str1.1
.LC66:
	.string	"Need more mem!"
.LC67:
	.string	"setting"
.LC69:
	.string	"adding"
.LC70:
	.string	"printing"
.LC71:
	.string	"%lg "
	.section	.rodata.str1.8
	.align 8
.LC72:
	.string	"printing as blocks of data using arbitrary blocks"
	.section	.rodata.str1.1
.LC73:
	.string	"freeing"
	.text
	.p2align 4,,15
	.globl	simple_array_tests
	.type	simple_array_tests, @function
simple_array_tests:
.LFB136:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$4, %edi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$376, %rsp
	.cfi_def_cfa_offset 432
	movl	%r9d, 160(%rsp)
	movl	%r8d, 88(%rsp)
	movl	%edx, 80(%rsp)
	movl	%esi, 72(%rsp)
	movl	%r11d, 64(%rsp)
	movl	%ecx, 56(%rsp)
	call	managed_secure_malloc
	movl	$8, %edi
	movq	%rax, %rbx
	call	managed_secure_malloc
	movl	$8, %edi
	movq	%rax, %rbp
	call	managed_secure_malloc
	movq	$5, 344(%rsp)
	movq	%rax, 48(%rsp)
	xorl	%r10d, %r10d
	xorl	%eax, %eax
	xorl	%edi, %edi
	movl	56(%rsp), %ecx
	movl	64(%rsp), %r11d
	movl	72(%rsp), %esi
	movl	80(%rsp), %edx
	movl	88(%rsp), %r8d
	movl	160(%rsp), %r9d
	jmp	.L1340
	.p2align 4,,10
	.p2align 3
.L1538:
	movzbl	344(%rsp,%rax), %edi
	movb	%dil, 0(%rbp,%r10)
	leaq	1(%rax), %rdi
	cmpq	$8, %rdi
	je	.L1465
	movzbl	345(%rsp,%rax), %edi
	movb	%dil, 1(%rbp,%r10)
	leaq	2(%rax), %rdi
	cmpq	$7, %rdi
	jg	.L1467
	movzbl	344(%rsp,%rdi), %edi
	movb	%dil, 2(%rbp,%r10)
	leaq	3(%rax), %rdi
	cmpq	$7, %rdi
	jg	.L1467
	movzbl	344(%rsp,%rdi), %edi
	addq	$4, %rax
	movb	%dil, 3(%rbp,%r10)
.L1337:
	addq	$4, %r10
	cmpq	$7, %rax
	movl	$1, %edi
	jg	.L1537
.L1340:
	testl	%edi, %edi
	je	.L1538
	addq	$5, %r10
	xorl	%edi, %edi
	cmpq	$7, %rax
	jle	.L1340
.L1537:
	movq	%rbx, 56(%rsp)
	movq	%rbp, 320(%rsp)
	xorl	%eax, %eax
	xorl	%r10d, %r10d
	xorl	%edi, %edi
	movq	48(%rsp), %rbx
	jmp	.L1345
	.p2align 4,,10
	.p2align 3
.L1540:
	movzbl	320(%rsp,%rax), %edi
	movb	%dil, (%rbx,%r10)
	leaq	1(%rax), %rdi
	cmpq	$8, %rdi
	je	.L1468
	movzbl	321(%rsp,%rax), %edi
	movb	%dil, 1(%rbx,%r10)
	leaq	2(%rax), %rdi
	cmpq	$7, %rdi
	jg	.L1470
	movzbl	320(%rsp,%rdi), %edi
	movb	%dil, 2(%rbx,%r10)
	leaq	3(%rax), %rdi
	cmpq	$7, %rdi
	jg	.L1470
	movzbl	320(%rsp,%rdi), %edi
	addq	$4, %rax
	movb	%dil, 3(%rbx,%r10)
.L1342:
	addq	$4, %r10
	cmpq	$7, %rax
	movl	$1, %edi
	jg	.L1539
.L1345:
	testl	%edi, %edi
	je	.L1540
	addq	$5, %r10
	xorl	%edi, %edi
	cmpq	$7, %rax
	jle	.L1345
.L1539:
	movq	48(%rsp), %rbx
	xorl	%r10d, %r10d
	xorl	%eax, %eax
	xorl	%edi, %edi
	movl	%edx, 48(%rsp)
	jmp	.L1350
	.p2align 4,,10
	.p2align 3
.L1542:
	movzbl	(%rbx,%rax), %edi
	movb	%dil, 352(%rsp,%r10)
	leaq	1(%r10), %rdi
	cmpq	$8, %rdi
	je	.L1471
	movzbl	1(%rbx,%rax), %edx
	leaq	2(%r10), %rdi
	cmpq	$7, %rdi
	movb	%dl, 353(%rsp,%r10)
	jg	.L1473
	movzbl	2(%rbx,%rax), %edx
	movb	%dl, 352(%rsp,%rdi)
	leaq	3(%r10), %rdi
	cmpq	$7, %rdi
	jg	.L1473
	movzbl	3(%rbx,%rax), %edx
	addq	$4, %r10
	movb	%dl, 352(%rsp,%rdi)
.L1347:
	addq	$4, %rax
	cmpq	$7, %r10
	movl	$1, %edi
	jg	.L1541
.L1350:
	testl	%edi, %edi
	je	.L1542
	addq	$5, %rax
	xorl	%edi, %edi
	cmpq	$7, %r10
	jle	.L1350
.L1541:
	movq	352(%rsp), %rax
	movl	48(%rsp), %edx
	xorl	%r10d, %r10d
	movq	$21, 336(%rsp)
	xorl	%edi, %edi
	movq	%rax, 48(%rsp)
	xorl	%eax, %eax
	movq	48(%rsp), %rbx
	jmp	.L1355
	.p2align 4,,10
	.p2align 3
.L1544:
	movzbl	336(%rsp,%rax), %edi
	movb	%dil, (%rbx,%r10)
	leaq	1(%rax), %rdi
	cmpq	$8, %rdi
	je	.L1474
	movzbl	337(%rsp,%rax), %edi
	movb	%dil, 1(%rbx,%r10)
	leaq	2(%rax), %rdi
	cmpq	$7, %rdi
	jg	.L1476
	movzbl	336(%rsp,%rdi), %edi
	movb	%dil, 2(%rbx,%r10)
	leaq	3(%rax), %rdi
	cmpq	$7, %rdi
	jg	.L1476
	movzbl	336(%rsp,%rdi), %edi
	addq	$4, %rax
	movb	%dil, 3(%rbx,%r10)
.L1352:
	addq	$4, %r10
	cmpq	$7, %rax
	movl	$1, %edi
	jg	.L1543
.L1355:
	testl	%edi, %edi
	je	.L1544
	addq	$5, %r10
	xorl	%edi, %edi
	cmpq	$7, %rax
	jle	.L1355
.L1543:
	movq	56(%rsp), %rbx
	xorl	%r10d, %r10d
	xorl	%eax, %eax
	xorl	%edi, %edi
	movl	%edx, 48(%rsp)
	jmp	.L1360
	.p2align 4,,10
	.p2align 3
.L1546:
	movzbl	0(%rbp,%rax), %edi
	movb	%dil, 352(%rsp,%r10)
	leaq	1(%r10), %rdi
	cmpq	$8, %rdi
	je	.L1477
	movzbl	1(%rbp,%rax), %edx
	leaq	2(%r10), %rdi
	cmpq	$7, %rdi
	movb	%dl, 353(%rsp,%r10)
	jg	.L1479
	movzbl	2(%rbp,%rax), %edx
	movb	%dl, 352(%rsp,%rdi)
	leaq	3(%r10), %rdi
	cmpq	$7, %rdi
	jg	.L1479
	movzbl	3(%rbp,%rax), %edx
	addq	$4, %r10
	movb	%dl, 352(%rsp,%rdi)
.L1357:
	addq	$4, %rax
	cmpq	$7, %r10
	movl	$1, %edi
	jg	.L1545
.L1360:
	testl	%edi, %edi
	je	.L1546
	addq	$5, %rax
	xorl	%edi, %edi
	cmpq	$7, %r10
	jle	.L1360
.L1545:
	movq	352(%rsp), %rax
	movl	%ecx, 160(%rsp)
	movl	%r11d, 88(%rsp)
	movl	%esi, 80(%rsp)
	movl	%r8d, 72(%rsp)
	movl	%r9d, 56(%rsp)
	leaq	0(,%rax,4), %rdi
	call	managed_secure_malloc
	xorl	%r10d, %r10d
	movq	%rax, 64(%rsp)
	xorl	%edi, %edi
	xorl	%eax, %eax
	movl	160(%rsp), %ecx
	movl	88(%rsp), %r11d
	movl	80(%rsp), %esi
	movl	72(%rsp), %r8d
	movl	56(%rsp), %r9d
	jmp	.L1365
	.p2align 4,,10
	.p2align 3
.L1548:
	movzbl	0(%rbp,%rax), %edi
	movb	%dil, 352(%rsp,%r10)
	leaq	1(%r10), %rdi
	cmpq	$8, %rdi
	je	.L1480
	movzbl	1(%rbp,%rax), %edx
	leaq	2(%r10), %rdi
	cmpq	$7, %rdi
	movb	%dl, 353(%rsp,%r10)
	jg	.L1482
	movzbl	2(%rbp,%rax), %edx
	movb	%dl, 352(%rsp,%rdi)
	leaq	3(%r10), %rdi
	cmpq	$7, %rdi
	jg	.L1482
	movzbl	3(%rbp,%rax), %edx
	addq	$4, %r10
	movb	%dl, 352(%rsp,%rdi)
.L1362:
	addq	$4, %rax
	cmpq	$7, %r10
	movl	$1, %edi
	jg	.L1547
.L1365:
	testl	%edi, %edi
	je	.L1548
	addq	$5, %rax
	xorl	%edi, %edi
	cmpq	$7, %r10
	jle	.L1365
.L1547:
	movq	352(%rsp), %rax
	movl	%ecx, 192(%rsp)
	movl	%r11d, 88(%rsp)
	movl	%esi, 80(%rsp)
	movl	%r8d, 72(%rsp)
	movl	%r9d, 56(%rsp)
	leaq	0(,%rax,4), %rdi
	call	managed_secure_malloc
	xorl	%r10d, %r10d
	movq	%rax, 160(%rsp)
	xorl	%edi, %edi
	xorl	%eax, %eax
	movl	192(%rsp), %ecx
	movl	88(%rsp), %r11d
	movl	80(%rsp), %esi
	movl	72(%rsp), %r8d
	movl	56(%rsp), %r9d
	jmp	.L1370
	.p2align 4,,10
	.p2align 3
.L1550:
	movzbl	0(%rbp,%rax), %edi
	movb	%dil, 352(%rsp,%r10)
	leaq	1(%r10), %rdi
	cmpq	$8, %rdi
	je	.L1483
	movzbl	1(%rbp,%rax), %edx
	leaq	2(%r10), %rdi
	cmpq	$7, %rdi
	movb	%dl, 353(%rsp,%r10)
	jg	.L1485
	movzbl	2(%rbp,%rax), %edx
	movb	%dl, 352(%rsp,%rdi)
	leaq	3(%r10), %rdi
	cmpq	$7, %rdi
	jg	.L1485
	movzbl	3(%rbp,%rax), %edx
	addq	$4, %r10
	movb	%dl, 352(%rsp,%rdi)
.L1367:
	addq	$4, %rax
	cmpq	$7, %r10
	movl	$1, %edi
	jg	.L1549
.L1370:
	testl	%edi, %edi
	je	.L1550
	addq	$5, %rax
	xorl	%edi, %edi
	cmpq	$7, %r10
	jle	.L1370
.L1549:
	movq	352(%rsp), %rax
	movl	%ecx, 200(%rsp)
	movl	%r11d, 192(%rsp)
	movl	%esi, 88(%rsp)
	movl	%r8d, 80(%rsp)
	movl	%r9d, 56(%rsp)
	leaq	0(,%rax,8), %rdi
	call	managed_secure_malloc
	xorl	%r10d, %r10d
	movq	%rax, 72(%rsp)
	xorl	%edi, %edi
	xorl	%eax, %eax
	movl	200(%rsp), %ecx
	movl	192(%rsp), %r11d
	movl	88(%rsp), %esi
	movl	80(%rsp), %r8d
	movl	56(%rsp), %r9d
	jmp	.L1375
	.p2align 4,,10
	.p2align 3
.L1552:
	movzbl	0(%rbp,%rax), %edi
	movb	%dil, 352(%rsp,%r10)
	leaq	1(%r10), %rdi
	cmpq	$8, %rdi
	je	.L1486
	movzbl	1(%rbp,%rax), %edx
	leaq	2(%r10), %rdi
	cmpq	$7, %rdi
	movb	%dl, 353(%rsp,%r10)
	jg	.L1488
	movzbl	2(%rbp,%rax), %edx
	movb	%dl, 352(%rsp,%rdi)
	leaq	3(%r10), %rdi
	cmpq	$7, %rdi
	jg	.L1488
	movzbl	3(%rbp,%rax), %edx
	addq	$4, %r10
	movb	%dl, 352(%rsp,%rdi)
.L1372:
	addq	$4, %rax
	cmpq	$7, %r10
	movl	$1, %edi
	jg	.L1551
.L1375:
	testl	%edi, %edi
	je	.L1552
	addq	$5, %rax
	xorl	%edi, %edi
	cmpq	$7, %r10
	jle	.L1375
.L1551:
	movq	352(%rsp), %rax
	movl	48(%rsp), %edx
	movl	%ecx, 204(%rsp)
	movl	%r11d, 200(%rsp)
	movl	%esi, 88(%rsp)
	movl	%r8d, 56(%rsp)
	leaq	0(,%rax,4), %rdi
	movl	%edx, 80(%rsp)
	movl	%r9d, 48(%rsp)
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, 192(%rsp)
	movl	48(%rsp), %r9d
	movl	56(%rsp), %r8d
	movl	80(%rsp), %edx
	movl	88(%rsp), %esi
	movl	200(%rsp), %r11d
	movl	204(%rsp), %ecx
	je	.L1553
	movl	$.LC67, %edi
	movl	%r9d, 236(%rsp)
	movl	%r8d, 232(%rsp)
	movl	%edx, 228(%rsp)
	movl	%esi, 224(%rsp)
	movl	%r11d, 220(%rsp)
	movl	%ecx, 48(%rsp)
	call	puts
	leaq	1(%rbx), %rax
	movl	%r12d, 200(%rsp)
	movl	%r15d, 212(%rsp)
	movb	$0, (%rbx)
	movb	$0, 1(%rbx)
	xorl	%r10d, %r10d
	movq	%rax, %rsi
	movq	%rax, 80(%rsp)
	leaq	2(%rbx), %rax
	movq	%rsi, %r11
	movl	224(%rsp), %esi
	movb	$0, 2(%rbx)
	movq	%rax, %rcx
	movq	%rax, 88(%rsp)
	leaq	3(%rbx), %rax
	movq	%rcx, %r12
	movl	48(%rsp), %ecx
	movb	$0, 3(%rbx)
	movq	%rax, %rdx
	movl	232(%rsp), %r8d
	movl	236(%rsp), %r9d
	movq	%rdx, %r15
	movl	228(%rsp), %edx
	movq	%rax, 56(%rsp)
	movl	%ecx, 216(%rsp)
	movl	%esi, %ecx
	movq	%rbx, %rsi
	movl	252(%rsp), %ebx
	xorl	%eax, %eax
	movl	%r13d, 204(%rsp)
	movsd	.LC68(%rip), %xmm1
	movl	$0, 264(%rsp)
	xorl	%edi, %edi
	movq	%rax, %r13
	movl	%r14d, 208(%rsp)
	movl	%edx, 48(%rsp)
	.p2align 4,,10
	.p2align 3
.L1377:
	cmpq	$3, %rdi
	jg	.L1554
.L1387:
	testl	%r10d, %r10d
	jne	.L1384
.L1561:
	movzbl	(%rsi,%r13), %r10d
	movb	%r10b, 352(%rsp,%rdi)
	leaq	1(%rdi), %r10
	cmpq	$4, %r10
	je	.L1492
	movzbl	1(%rsi,%r13), %r14d
	leaq	2(%rdi), %r10
	cmpq	$3, %r10
	movb	%r14b, 353(%rsp,%rdi)
	jg	.L1493
	movzbl	2(%rsi,%r13), %r14d
	testq	%rdi, %rdi
	movb	%r14b, 352(%rsp,%r10)
	jne	.L1555
	movzbl	3(%rsi,%r13), %edi
	movb	%dil, 355(%rsp)
	movl	$4, %edi
.L1385:
	addq	$4, %r13
	cmpq	$3, %rdi
	movl	$1, %r10d
	jle	.L1387
.L1554:
	movslq	352(%rsp), %r14
	xorl	%r10d, %r10d
	xorl	%edi, %edi
	xorl	%r13d, %r13d
	movl	48(%rsp), %edx
	jmp	.L1392
	.p2align 4,,10
	.p2align 3
.L1557:
	movzbl	0(%rbp,%rdi), %r13d
	movb	%r13b, 352(%rsp,%r10)
	leaq	1(%r10), %r13
	cmpq	$8, %r13
	je	.L1494
	movzbl	1(%rbp,%rdi), %eax
	leaq	2(%r10), %r13
	cmpq	$7, %r13
	movb	%al, 353(%rsp,%r10)
	jg	.L1496
	movzbl	2(%rbp,%rdi), %eax
	movb	%al, 352(%rsp,%r13)
	leaq	3(%r10), %r13
	cmpq	$7, %r13
	jg	.L1496
	movzbl	3(%rbp,%rdi), %eax
	addq	$4, %r10
	movb	%al, 352(%rsp,%r13)
.L1389:
	addq	$4, %rdi
	cmpq	$7, %r10
	movl	$1, %r13d
	jg	.L1556
.L1392:
	testl	%r13d, %r13d
	je	.L1557
	addq	$5, %rdi
	xorl	%r13d, %r13d
	cmpq	$7, %r10
	jle	.L1392
.L1556:
	cmpq	352(%rsp), %r14
	movl	%edx, 48(%rsp)
	jge	.L1558
	movzbl	(%rsi), %r14d
	movzbl	(%r11), %r13d
	movzbl	(%r12), %r10d
	movzbl	(%r15), %edi
	movb	%r14b, %r9b
	movq	%r13, %rdx
	movb	%r14b, %r8b
	movq	%r9, %rax
	sall	$16, %r10d
	sall	$24, %edi
	movb	%dl, %ah
	movzwl	%ax, %r9d
	movq	%r8, %rax
	movb	%dl, %ah
	orl	%r10d, %r9d
	movzwl	%ax, %r8d
	orl	%edi, %r9d
	orl	%r10d, %r8d
	leal	(%r9,%r9), %r10d
	orl	%edi, %r8d
	movslq	%r8d, %rdi
	movl	%r10d, %eax
	leaq	(%rdi,%rdi,8), %rdi
	addq	64(%rsp), %rdi
	shrw	$8, %ax
	movb	%al, 1(%rdi)
	movl	%r10d, %eax
	movb	%r10b, (%rdi)
	shrl	$16, %eax
	shrl	$24, %r10d
	movb	%al, 2(%rdi)
	movb	%r10b, 3(%rdi)
	movzbl	(%rsi), %r14d
	movzbl	(%r11), %r13d
	movzbl	(%r12), %r10d
	movzbl	(%r15), %edi
	movb	%r14b, 48(%rsp)
	movq	48(%rsp), %rdx
	movq	%r13, %rax
	movb	%r14b, %bl
	sall	$16, %r10d
	sall	$24, %edi
	movb	%al, %dh
	movzwl	%dx, %eax
	movl	%eax, 48(%rsp)
	movq	%r13, %rax
	orl	%r10d, 48(%rsp)
	movb	%al, %bh
	orl	%edi, 48(%rsp)
	movzwl	%bx, %ebx
	movl	48(%rsp), %eax
	orl	%r10d, %ebx
	orl	%edi, %ebx
	movslq	%ebx, %rdi
	leal	(%rax,%rax,2), %r10d
	leaq	(%rdi,%rdi,8), %rdi
	addq	160(%rsp), %rdi
	movl	%r10d, %eax
	shrw	$8, %ax
	movb	%al, 1(%rdi)
	movl	%r10d, %eax
	movb	%r10b, (%rdi)
	shrl	$16, %eax
	shrl	$24, %r10d
	movb	%al, 2(%rdi)
	movb	%r10b, 3(%rdi)
	movzbl	(%rsi), %r14d
	movzbl	(%r11), %r13d
	movzbl	(%r12), %r10d
	movzbl	(%r15), %edi
	movq	%r13, %rax
	movb	%r14b, %cl
	movb	%r14b, 32(%rsp)
	movb	%al, %ch
	sall	$16, %r10d
	sall	$24, %edi
	movzwl	%cx, %ecx
	movq	32(%rsp), %rdx
	orl	%r10d, %ecx
	orl	%edi, %ecx
	cvtsi2sd	%ecx, %xmm0
	movb	%al, %dh
	movzwl	%dx, %r14d
	movl	%r14d, 32(%rsp)
	orl	%r10d, 32(%rsp)
	orl	%edi, 32(%rsp)
	movl	48(%rsp), %edx
	movl	32(%rsp), %eax
	movslq	%eax, %rdi
	salq	$3, %rdi
	leaq	3(%rdi), %r10
	testq	%rdi, %rdi
	mulsd	%xmm1, %xmm0
	cmovs	%r10, %rdi
	xorl	%r10d, %r10d
	sarq	$2, %rdi
	xorl	%r13d, %r13d
	leaq	(%rdi,%rdi,8), %r14
	xorl	%edi, %edi
	addq	72(%rsp), %r14
	movsd	%xmm0, 352(%rsp)
	jmp	.L1382
	.p2align 4,,10
	.p2align 3
.L1560:
	movzbl	352(%rsp,%r10), %r13d
	movb	%r13b, (%r14,%rdi)
	leaq	1(%r10), %r13
	cmpq	$8, %r13
	je	.L1489
	movzbl	353(%rsp,%r10), %r13d
	movb	%r13b, 1(%r14,%rdi)
	leaq	2(%r10), %r13
	cmpq	$7, %r13
	jg	.L1491
	movzbl	352(%rsp,%r13), %r13d
	movb	%r13b, 2(%r14,%rdi)
	leaq	3(%r10), %r13
	cmpq	$7, %r13
	jg	.L1491
	movzbl	352(%rsp,%r13), %r13d
	addq	$4, %r10
	movb	%r13b, 3(%r14,%rdi)
.L1379:
	addq	$4, %rdi
	cmpq	$7, %r10
	movl	$1, %r13d
	jg	.L1559
.L1382:
	testl	%r13d, %r13d
	je	.L1560
	addq	$5, %rdi
	xorl	%r13d, %r13d
	cmpq	$7, %r10
	jle	.L1382
.L1559:
	movzbl	(%rsi), %r14d
	movzbl	(%r11), %r13d
	movl	%eax, 32(%rsp)
	movl	%edx, 48(%rsp)
	movzbl	(%r12), %r10d
	movzbl	(%r15), %edi
	movb	%r14b, 144(%rsp)
	movq	144(%rsp), %rax
	movq	%r13, %rdx
	movb	%r14b, 128(%rsp)
	xorl	%r13d, %r13d
	sall	$16, %r10d
	sall	$24, %edi
	movb	%dl, %ah
	movzwl	%ax, %eax
	movl	%eax, 144(%rsp)
	movq	128(%rsp), %rax
	orl	%r10d, 144(%rsp)
	orl	%edi, 144(%rsp)
	movb	%dl, %ah
	movzwl	%ax, %eax
	movl	%eax, 128(%rsp)
	movl	144(%rsp), %eax
	orl	%r10d, 128(%rsp)
	orl	%edi, 128(%rsp)
	leal	(%rax,%rax), %edi
	cvtsi2ss	%edi, %xmm0
	movslq	128(%rsp), %rdi
	leaq	(%rdi,%rdi,8), %rdi
	addq	192(%rsp), %rdi
	movss	%xmm0, 352(%rsp)
	movzbl	352(%rsp), %r10d
	movb	%r10b, (%rdi)
	movzbl	353(%rsp), %r10d
	movb	%r10b, 1(%rdi)
	movzbl	354(%rsp), %r10d
	movb	%r10b, 2(%rdi)
	movzbl	355(%rsp), %r10d
	movb	%r10b, 3(%rdi)
	movzbl	(%r11), %edi
	movl	184(%rsp), %eax
	movb	(%rsi), %al
	movzbl	(%r12), %r10d
	movq	%rdi, %rdx
	movzbl	(%r15), %edi
	movb	%dl, %ah
	movzwl	%ax, %eax
	sall	$16, %r10d
	movl	%eax, 184(%rsp)
	orl	%r10d, 184(%rsp)
	xorl	%r10d, %r10d
	sall	$24, %edi
	orl	%edi, 184(%rsp)
	movl	184(%rsp), %eax
	leal	1(%rax), %edi
	movl	%edi, %eax
	movb	%dil, (%rsi)
	movl	%edi, 268(%rsp)
	shrw	$8, %ax
	movb	%al, (%r11)
	movl	%edi, %eax
	shrl	$24, %edi
	shrl	$16, %eax
	movb	%al, (%r12)
	movb	%dil, (%r15)
	xorl	%edi, %edi
	testl	%r10d, %r10d
	je	.L1561
	.p2align 4,,10
	.p2align 3
.L1384:
	addq	$5, %r13
	xorl	%r10d, %r10d
	jmp	.L1377
	.p2align 4,,10
	.p2align 3
.L1496:
	movq	%r13, %r10
	jmp	.L1389
	.p2align 4,,10
	.p2align 3
.L1491:
	movq	%r13, %r10
	jmp	.L1379
	.p2align 4,,10
	.p2align 3
.L1494:
	movl	$8, %r10d
	jmp	.L1389
	.p2align 4,,10
	.p2align 3
.L1492:
	movl	$4, %edi
	jmp	.L1385
	.p2align 4,,10
	.p2align 3
.L1493:
	movq	%r10, %rdi
	jmp	.L1385
	.p2align 4,,10
	.p2align 3
.L1489:
	movl	$8, %r10d
	jmp	.L1379
	.p2align 4,,10
	.p2align 3
.L1555:
	addq	$3, %rdi
	jmp	.L1385
.L1558:
	movl	216(%rsp), %ecx
	movl	220(%rsp), %r11d
	movq	%rsi, %rbx
	movl	200(%rsp), %r12d
	movl	208(%rsp), %r14d
	movl	$.LC69, %edi
	movl	204(%rsp), %r13d
	movl	212(%rsp), %r15d
	movl	%ecx, 200(%rsp)
	movl	%r11d, 48(%rsp)
	call	puts
	movb	$0, (%rbx)
	movb	$0, 1(%rbx)
	movq	%rbx, %r9
	movb	$0, 2(%rbx)
	movb	$0, 3(%rbx)
	xorl	%edx, %edx
	movl	200(%rsp), %ecx
	movl	244(%rsp), %ebx
	xorl	%eax, %eax
	movl	48(%rsp), %r11d
	movl	248(%rsp), %edi
	xorl	%esi, %esi
	movl	%r14d, 144(%rsp)
	movl	$0, 272(%rsp)
	movq	%rdx, %r10
	movq	%rax, %r8
	movl	%r12d, 32(%rsp)
	movl	%r13d, 128(%rsp)
	movq	%rbp, %r14
	movl	%r15d, 184(%rsp)
	.p2align 4,,10
	.p2align 3
.L1394:
	cmpq	$3, %r10
	jg	.L1562
.L1409:
	testl	%esi, %esi
	jne	.L1406
.L1571:
	movzbl	(%r9,%r8), %esi
	movb	%sil, 352(%rsp,%r10)
	leaq	1(%r10), %rsi
	cmpq	$4, %rsi
	je	.L1503
	movzbl	1(%r9,%r8), %ebp
	leaq	2(%r10), %rsi
	cmpq	$3, %rsi
	movb	%bpl, 353(%rsp,%r10)
	jg	.L1504
	movzbl	2(%r9,%r8), %ebp
	testq	%r10, %r10
	movb	%bpl, 352(%rsp,%rsi)
	jne	.L1563
	movzbl	3(%r9,%r8), %esi
	movl	$4, %r10d
	movb	%sil, 355(%rsp)
.L1407:
	addq	$4, %r8
	cmpq	$3, %r10
	movl	$1, %esi
	jle	.L1409
.L1562:
	movslq	352(%rsp), %rbp
	xorl	%r8d, %r8d
	xorl	%esi, %esi
	xorl	%r10d, %r10d
	movl	16(%rsp), %eax
	movl	(%rsp), %edx
	jmp	.L1414
	.p2align 4,,10
	.p2align 3
.L1565:
	movzbl	(%r14,%rsi), %r10d
	movb	%r10b, 352(%rsp,%r8)
	leaq	1(%r8), %r10
	cmpq	$8, %r10
	je	.L1505
	movzbl	1(%r14,%rsi), %r12d
	leaq	2(%r8), %r10
	cmpq	$7, %r10
	movb	%r12b, 353(%rsp,%r8)
	jg	.L1507
	movzbl	2(%r14,%rsi), %r12d
	movb	%r12b, 352(%rsp,%r10)
	leaq	3(%r8), %r10
	cmpq	$7, %r10
	jg	.L1507
	movzbl	3(%r14,%rsi), %r12d
	addq	$4, %r8
	movb	%r12b, 352(%rsp,%r10)
.L1411:
	addq	$4, %rsi
	cmpq	$7, %r8
	movl	$1, %r10d
	jg	.L1564
.L1414:
	testl	%r10d, %r10d
	je	.L1565
	addq	$5, %rsi
	xorl	%r10d, %r10d
	cmpq	$7, %r8
	jle	.L1414
.L1564:
	cmpq	352(%rsp), %rbp
	movl	%eax, 16(%rsp)
	movl	%edx, (%rsp)
	jge	.L1566
	movq	80(%rsp), %r15
	movzbl	(%r9), %r12d
	movzbl	(%r15), %ebp
	movb	%r12b, %dil
	movb	%r12b, %bl
	movb	%r12b, (%rsp)
	movq	%rdi, %rax
	movq	%rbp, %rdx
	movb	%dl, %ah
	movq	56(%rsp), %rdx
	movq	%rax, %rdi
	movq	88(%rsp), %rax
	movzwl	%di, %edi
	movzbl	(%rdx), %esi
	movzbl	(%rax), %r8d
	sall	$24, %esi
	sall	$16, %r8d
	orl	%r8d, %edi
	orl	%esi, %edi
	movslq	%edi, %r10
	leaq	(%r10,%r10,8), %r10
	addq	64(%rsp), %r10
	movzbl	1(%r10), %r13d
	movb	(%r10), %r11b
	movq	%r11, %rax
	movq	%r13, %rdx
	movzbl	2(%r10), %r13d
	movzbl	3(%r10), %r10d
	movb	%dl, %ah
	movq	(%rsp), %rdx
	movzwl	%ax, %r11d
	movq	%rbp, %rax
	movb	%al, %bh
	movzwl	%bx, %ebx
	sall	$16, %r13d
	sall	$24, %r10d
	orl	%r8d, %ebx
	orl	%r13d, %r11d
	orl	%esi, %ebx
	orl	%r10d, %r11d
	movslq	%ebx, %r10
	leaq	(%r10,%r10,8), %r10
	addq	160(%rsp), %r10
	movzbl	1(%r10), %r13d
	movb	(%r10), %cl
	movq	%r13, %rax
	movzbl	2(%r10), %r13d
	movzbl	3(%r10), %r10d
	movb	%al, %ch
	movq	%rbp, %rax
	movb	%al, %dh
	movzwl	%cx, %ecx
	movzwl	%dx, %eax
	movl	%eax, (%rsp)
	orl	%r8d, (%rsp)
	sall	$16, %r13d
	orl	%esi, (%rsp)
	sall	$24, %r10d
	orl	%r13d, %ecx
	movslq	(%rsp), %r8
	orl	%r10d, %ecx
	leal	(%r11,%rcx), %esi
	movl	%esi, %r10d
	movl	%esi, 352(%rsp)
	leaq	(%r8,%r8,8), %r8
	addq	64(%rsp), %r8
	shrw	$8, %r10w
	movb	%r10b, 1(%r8)
	movl	%esi, %r10d
	movb	%sil, (%r8)
	shrl	$16, %r10d
	shrl	$24, %esi
	movb	%r10b, 2(%r8)
	movb	%sil, 3(%r8)
	movzbl	(%r9), %r13d
	movb	%r13b, 16(%rsp)
	movzbl	(%r15), %esi
	movq	16(%rsp), %rdx
	movq	%rsi, %rax
	movb	%sil, 48(%rsp)
	movb	%al, %dh
	movq	88(%rsp), %rax
	movzbl	(%rax), %r15d
	movzwl	%dx, %eax
	movq	56(%rsp), %rdx
	movl	%eax, 16(%rsp)
	movzbl	(%rdx), %r12d
	movl	(%rsp), %edx
	movl	%r15d, %r8d
	sall	$16, %r8d
	orl	%r8d, 16(%rsp)
	movl	%r12d, %esi
	sall	$24, %esi
	orl	%esi, 16(%rsp)
	movslq	16(%rsp), %rsi
	salq	$3, %rsi
	leaq	3(%rsi), %r8
	testq	%rsi, %rsi
	cmovs	%r8, %rsi
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	sarq	$2, %rsi
	leaq	(%rsi,%rsi,8), %rbp
	xorl	%esi, %esi
	addq	72(%rsp), %rbp
	jmp	.L1399
	.p2align 4,,10
	.p2align 3
.L1568:
	movzbl	0(%rbp,%rsi), %r10d
	movb	%r10b, 352(%rsp,%r8)
	leaq	1(%r8), %r10
	cmpq	$8, %r10
	je	.L1497
	movzbl	1(%rbp,%rsi), %eax
	leaq	2(%r8), %r10
	cmpq	$7, %r10
	movb	%al, 353(%rsp,%r8)
	jg	.L1499
	movzbl	2(%rbp,%rsi), %eax
	movb	%al, 352(%rsp,%r10)
	leaq	3(%r8), %r10
	cmpq	$7, %r10
	jg	.L1499
	movzbl	3(%rbp,%rsi), %eax
	addq	$4, %r8
	movb	%al, 352(%rsp,%r10)
.L1396:
	addq	$4, %rsi
	cmpq	$7, %r8
	movl	$1, %r10d
	jg	.L1567
.L1399:
	testl	%r10d, %r10d
	je	.L1568
	addq	$5, %rsi
	xorl	%r10d, %r10d
	cmpq	$7, %r8
	jle	.L1399
.L1567:
	movb	%r13b, 112(%rsp)
	movl	%edx, (%rsp)
	sall	$16, %r15d
	movq	112(%rsp), %rax
	movq	48(%rsp), %rdx
	movl	%r12d, %ebp
	sall	$24, %ebp
	movl	188(%rsp), %r8d
	movb	%r13b, 96(%rsp)
	movb	%dl, %ah
	movzwl	%ax, %eax
	andb	$0, %r8b
	movl	%eax, 112(%rsp)
	orl	%r15d, 112(%rsp)
	orl	%ebp, 112(%rsp)
	movslq	112(%rsp), %rsi
	leaq	(%rsi,%rsi,8), %rsi
	addq	192(%rsp), %rsi
	movzbl	(%rsi), %r10d
	orl	%r10d, %r8d
	movzbl	2(%rsi), %r10d
	movl	%r8d, %eax
	movzbl	1(%rsi), %r8d
	movzbl	3(%rsi), %esi
	sall	$16, %r10d
	movq	%r8, %rdx
	sall	$24, %esi
	movb	%dl, %ah
	movq	48(%rsp), %rdx
	movzwl	%ax, %r8d
	movq	96(%rsp), %rax
	orl	%r10d, %r8d
	orl	%esi, %r8d
	movb	%dl, %ah
	movl	%r8d, 188(%rsp)
	movl	(%rsp), %edx
	movzwl	%ax, %eax
	movss	188(%rsp), %xmm0
	movl	%eax, 96(%rsp)
	orl	%r15d, 96(%rsp)
	orl	%ebp, 96(%rsp)
	cvtps2pd	%xmm0, %xmm0
	movslq	96(%rsp), %rsi
	movl	16(%rsp), %eax
	addsd	352(%rsp), %xmm0
	salq	$3, %rsi
	leaq	3(%rsi), %r8
	testq	%rsi, %rsi
	cmovs	%r8, %rsi
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	sarq	$2, %rsi
	leaq	(%rsi,%rsi,8), %rbp
	movsd	%xmm0, 352(%rsp)
	addq	72(%rsp), %rbp
	xorl	%esi, %esi
	jmp	.L1404
	.p2align 4,,10
	.p2align 3
.L1570:
	movzbl	352(%rsp,%r8), %r10d
	movb	%r10b, 0(%rbp,%rsi)
	leaq	1(%r8), %r10
	cmpq	$8, %r10
	je	.L1500
	movzbl	353(%rsp,%r8), %r10d
	movb	%r10b, 1(%rbp,%rsi)
	leaq	2(%r8), %r10
	cmpq	$7, %r10
	jg	.L1502
	movzbl	352(%rsp,%r10), %r10d
	movb	%r10b, 2(%rbp,%rsi)
	leaq	3(%r8), %r10
	cmpq	$7, %r10
	jg	.L1502
	movzbl	352(%rsp,%r10), %r10d
	addq	$4, %r8
	movb	%r10b, 3(%rbp,%rsi)
.L1401:
	addq	$4, %rsi
	cmpq	$7, %r8
	movl	$1, %r10d
	jg	.L1569
.L1404:
	testl	%r10d, %r10d
	je	.L1570
	addq	$5, %rsi
	xorl	%r10d, %r10d
	cmpq	$7, %r8
	jle	.L1404
.L1569:
	movq	80(%rsp), %r15
	movl	%eax, 16(%rsp)
	movl	180(%rsp), %eax
	movb	(%r9), %al
	movl	%edx, (%rsp)
	movq	56(%rsp), %r10
	movzbl	(%r15), %esi
	movq	%rsi, %rdx
	movzbl	(%r10), %esi
	movb	%dl, %ah
	movq	%rax, %rdx
	movq	88(%rsp), %rax
	movzwl	%dx, %edx
	movl	%edx, 180(%rsp)
	sall	$24, %esi
	movzbl	(%rax), %r8d
	sall	$16, %r8d
	orl	%r8d, 180(%rsp)
	orl	%esi, 180(%rsp)
	movl	180(%rsp), %edx
	leal	1(%rdx), %esi
	movl	%esi, %edx
	movb	%sil, (%r9)
	movl	%esi, 276(%rsp)
	shrw	$8, %dx
	movl	%edx, %r8d
	movl	%esi, %edx
	shrl	$24, %esi
	shrl	$16, %edx
	movb	%r8b, (%r15)
	xorl	%r8d, %r8d
	movb	%dl, (%rax)
	movb	%sil, (%r10)
	xorl	%esi, %esi
	xorl	%r10d, %r10d
	testl	%esi, %esi
	je	.L1571
	.p2align 4,,10
	.p2align 3
.L1406:
	addq	$5, %r8
	xorl	%esi, %esi
	jmp	.L1394
	.p2align 4,,10
	.p2align 3
.L1507:
	movq	%r10, %r8
	jmp	.L1411
	.p2align 4,,10
	.p2align 3
.L1502:
	movq	%r10, %r8
	jmp	.L1401
	.p2align 4,,10
	.p2align 3
.L1499:
	movq	%r10, %r8
	jmp	.L1396
	.p2align 4,,10
	.p2align 3
.L1503:
	movl	$4, %r10d
	jmp	.L1407
	.p2align 4,,10
	.p2align 3
.L1505:
	movl	$8, %r8d
	jmp	.L1411
	.p2align 4,,10
	.p2align 3
.L1504:
	movq	%rsi, %r10
	jmp	.L1407
	.p2align 4,,10
	.p2align 3
.L1500:
	movl	$8, %r8d
	jmp	.L1401
	.p2align 4,,10
	.p2align 3
.L1497:
	movl	$8, %r8d
	jmp	.L1396
	.p2align 4,,10
	.p2align 3
.L1563:
	addq	$3, %r10
	jmp	.L1407
.L1566:
	movq	%r14, %rbp
	movl	32(%rsp), %r12d
	movl	128(%rsp), %r13d
	movl	144(%rsp), %r14d
	movl	184(%rsp), %r15d
	movl	$.LC70, %edi
	movq	%r9, %rbx
	call	puts
	xorl	%ecx, %ecx
	movb	$0, (%rbx)
	movb	$0, 1(%rbx)
	movb	$0, 2(%rbx)
	movb	$0, 3(%rbx)
	movl	%ecx, %esi
	movl	%r12d, 48(%rsp)
	movl	%r13d, 16(%rsp)
	movq	%rbx, %r12
	movq	%rbp, %r13
	movl	%r14d, %ebx
	movl	%r15d, %ecx
	movq	80(%rsp), %r14
	movq	88(%rsp), %r15
	xorl	%edx, %edx
	movl	240(%rsp), %ebp
	movl	$0, 280(%rsp)
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1416:
	cmpq	$3, %rdx
	jg	.L1572
.L1421:
	testl	%esi, %esi
	jne	.L1418
	.p2align 4,,10
	.p2align 3
.L1577:
	movzbl	(%r12,%rax), %esi
	movb	%sil, 352(%rsp,%rdx)
	leaq	1(%rdx), %rsi
	cmpq	$4, %rsi
	je	.L1508
	movzbl	1(%r12,%rax), %edi
	leaq	2(%rdx), %rsi
	cmpq	$3, %rsi
	movb	%dil, 353(%rsp,%rdx)
	jg	.L1509
	movzbl	2(%r12,%rax), %edi
	testq	%rdx, %rdx
	movb	%dil, 352(%rsp,%rsi)
	jne	.L1573
	movzbl	3(%r12,%rax), %edx
	movb	%dl, 355(%rsp)
	movl	$4, %edx
.L1419:
	addq	$4, %rax
	cmpq	$3, %rdx
	movl	$1, %esi
	jle	.L1421
.L1572:
	movslq	352(%rsp), %rdi
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%esi, %esi
	jmp	.L1426
	.p2align 4,,10
	.p2align 3
.L1575:
	movzbl	0(%r13,%rax), %esi
	movb	%sil, 352(%rsp,%rdx)
	leaq	1(%rdx), %rsi
	cmpq	$8, %rsi
	je	.L1510
	movzbl	1(%r13,%rax), %r8d
	leaq	2(%rdx), %rsi
	cmpq	$7, %rsi
	movb	%r8b, 353(%rsp,%rdx)
	jg	.L1512
	movzbl	2(%r13,%rax), %r8d
	movb	%r8b, 352(%rsp,%rsi)
	leaq	3(%rdx), %rsi
	cmpq	$7, %rsi
	jg	.L1512
	movzbl	3(%r13,%rax), %r8d
	addq	$4, %rdx
	movb	%r8b, 352(%rsp,%rsi)
.L1423:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %esi
	jg	.L1574
.L1426:
	testl	%esi, %esi
	je	.L1575
	addq	$5, %rax
	xorl	%esi, %esi
	cmpq	$7, %rdx
	jle	.L1426
.L1574:
	cmpq	352(%rsp), %rdi
	jge	.L1576
	movb	(%r12), %bpl
	movzbl	(%r14), %eax
	movl	$.LC24, %esi
	movl	$1, %edi
	movq	%rbp, %rdx
	movb	%al, %dh
	movq	56(%rsp), %rax
	movq	%rdx, %rbp
	movzbl	(%r15), %edx
	movzwl	%bp, %ebp
	movzbl	(%rax), %eax
	sall	$16, %edx
	orl	%edx, %ebp
	sall	$24, %eax
	orl	%eax, %ebp
	movslq	%ebp, %rax
	leaq	(%rax,%rax,8), %rax
	addq	64(%rsp), %rax
	movzbl	1(%rax), %edx
	movb	(%rax), %cl
	movb	%dl, %ch
	movzbl	2(%rax), %edx
	movzbl	3(%rax), %eax
	movzwl	%cx, %ecx
	sall	$16, %edx
	sall	$24, %eax
	orl	%edx, %ecx
	orl	%eax, %ecx
	xorl	%eax, %eax
	movl	%ecx, %edx
	movl	%ecx, (%rsp)
	call	__printf_chk
	movzbl	(%r14), %eax
	movb	(%r12), %bl
	xorl	%esi, %esi
	movq	56(%rsp), %rcx
	movzbl	(%r15), %edx
	movb	%al, %bh
	movzbl	(%rcx), %eax
	sall	$16, %edx
	movzwl	%bx, %ebx
	orl	%edx, %ebx
	sall	$24, %eax
	orl	%eax, %ebx
	leal	1(%rbx), %eax
	movl	%eax, %edi
	movl	%eax, %edx
	movb	%al, (%r12)
	shrl	$16, %edx
	shrw	$8, %di
	movl	%eax, 284(%rsp)
	shrl	$24, %eax
	movb	%dil, (%r14)
	movb	%dl, (%r15)
	movb	%al, (%rcx)
	xorl	%edx, %edx
	xorl	%eax, %eax
	testl	%esi, %esi
	movl	(%rsp), %ecx
	je	.L1577
.L1418:
	addq	$5, %rax
	xorl	%esi, %esi
	jmp	.L1416
	.p2align 4,,10
	.p2align 3
.L1512:
	movq	%rsi, %rdx
	jmp	.L1423
	.p2align 4,,10
	.p2align 3
.L1508:
	movl	$4, %edx
	jmp	.L1419
	.p2align 4,,10
	.p2align 3
.L1510:
	movl	$8, %edx
	jmp	.L1423
	.p2align 4,,10
	.p2align 3
.L1509:
	movq	%rsi, %rdx
	jmp	.L1419
	.p2align 4,,10
	.p2align 3
.L1573:
	addq	$3, %rdx
	jmp	.L1419
.L1576:
	movq	%r13, %rbp
	movl	16(%rsp), %r13d
	movl	$10, %edi
	movq	%r12, %rbx
	movl	48(%rsp), %r12d
	call	putchar
	movq	88(%rsp), %r14
	movq	56(%rsp), %r15
	movl	%r13d, %edi
	movb	$0, (%rbx)
	movb	$0, 1(%rbx)
	movq	%rbx, %r13
	movb	$0, 2(%rbx)
	movb	$0, 3(%rbx)
	xorl	%ecx, %ecx
	movl	$0, 288(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%edi, %ebx
	.p2align 4,,10
	.p2align 3
.L1428:
	cmpq	$3, %rdx
	jg	.L1578
.L1438:
	testl	%ecx, %ecx
	jne	.L1435
.L1585:
	movzbl	0(%r13,%rax), %ecx
	movb	%cl, 352(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$4, %rcx
	je	.L1516
	movzbl	1(%r13,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$3, %rcx
	movb	%sil, 353(%rsp,%rdx)
	jg	.L1517
	movzbl	2(%r13,%rax), %esi
	testq	%rdx, %rdx
	movb	%sil, 352(%rsp,%rcx)
	jne	.L1579
	movzbl	3(%r13,%rax), %edx
	movb	%dl, 355(%rsp)
	movl	$4, %edx
.L1436:
	addq	$4, %rax
	cmpq	$3, %rdx
	movl	$1, %ecx
	jle	.L1438
.L1578:
	movslq	352(%rsp), %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L1443
	.p2align 4,,10
	.p2align 3
.L1581:
	movzbl	0(%rbp,%rax), %ecx
	movb	%cl, 352(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L1518
	movzbl	1(%rbp,%rax), %edi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%dil, 353(%rsp,%rdx)
	jg	.L1520
	movzbl	2(%rbp,%rax), %edi
	movb	%dil, 352(%rsp,%rcx)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L1520
	movzbl	3(%rbp,%rax), %edi
	addq	$4, %rdx
	movb	%dil, 352(%rsp,%rcx)
.L1440:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L1580
.L1443:
	testl	%ecx, %ecx
	je	.L1581
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L1443
.L1580:
	cmpq	352(%rsp), %rsi
	jge	.L1582
	movq	80(%rsp), %rax
	movb	0(%r13), %bl
	movzbl	(%r14), %edx
	movzbl	(%rax), %eax
	sall	$16, %edx
	movb	%al, %bh
	movzbl	(%r15), %eax
	movzwl	%bx, %ebx
	orl	%edx, %ebx
	sall	$24, %eax
	orl	%eax, %ebx
	movslq	%ebx, %rax
	salq	$3, %rax
	leaq	3(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	sarq	$2, %rax
	leaq	(%rax,%rax,8), %rsi
	xorl	%eax, %eax
	addq	72(%rsp), %rsi
	jmp	.L1433
	.p2align 4,,10
	.p2align 3
.L1584:
	movzbl	(%rsi,%rax), %ecx
	movb	%cl, 352(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L1513
	movzbl	1(%rsi,%rax), %edi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%dil, 353(%rsp,%rdx)
	jg	.L1515
	movzbl	2(%rsi,%rax), %edi
	movb	%dil, 352(%rsp,%rcx)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L1515
	movzbl	3(%rsi,%rax), %edi
	addq	$4, %rdx
	movb	%dil, 352(%rsp,%rcx)
.L1430:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L1583
.L1433:
	testl	%ecx, %ecx
	je	.L1584
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L1433
.L1583:
	movsd	352(%rsp), %xmm0
	movl	$1, %edi
	movl	$.LC71, %esi
	movl	$1, %eax
	call	__printf_chk
	movl	176(%rsp), %eax
	movq	80(%rsp), %rdi
	movb	0(%r13), %al
	movzbl	(%r14), %edx
	movl	%eax, %ecx
	movzbl	(%rdi), %eax
	sall	$16, %edx
	movb	%al, %ch
	movzwl	%cx, %eax
	movl	%eax, 176(%rsp)
	movzbl	(%r15), %eax
	orl	%edx, 176(%rsp)
	sall	$24, %eax
	orl	%eax, 176(%rsp)
	movl	176(%rsp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	movb	%al, 0(%r13)
	movl	%eax, 292(%rsp)
	shrw	$8, %cx
	movl	%ecx, %edx
	movl	%eax, %ecx
	shrl	$24, %eax
	shrl	$16, %ecx
	movb	%dl, (%rdi)
	xorl	%edx, %edx
	movb	%cl, (%r14)
	xorl	%ecx, %ecx
	movb	%al, (%r15)
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.L1585
	.p2align 4,,10
	.p2align 3
.L1435:
	addq	$5, %rax
	xorl	%ecx, %ecx
	jmp	.L1428
	.p2align 4,,10
	.p2align 3
.L1520:
	movq	%rcx, %rdx
	jmp	.L1440
	.p2align 4,,10
	.p2align 3
.L1515:
	movq	%rcx, %rdx
	jmp	.L1430
	.p2align 4,,10
	.p2align 3
.L1518:
	movl	$8, %edx
	jmp	.L1440
	.p2align 4,,10
	.p2align 3
.L1516:
	movl	$4, %edx
	jmp	.L1436
	.p2align 4,,10
	.p2align 3
.L1517:
	movq	%rcx, %rdx
	jmp	.L1436
	.p2align 4,,10
	.p2align 3
.L1513:
	movl	$8, %edx
	jmp	.L1430
	.p2align 4,,10
	.p2align 3
.L1579:
	addq	$3, %rdx
	jmp	.L1436
.L1582:
	movl	$10, %edi
	movq	%r13, %r15
	movl	%r12d, %ebx
	call	putchar
	movl	$.LC72, %edi
	call	puts
	movb	$0, 0(%r13)
	movb	$0, 1(%r13)
	xorl	%ecx, %ecx
	movb	$0, 2(%r13)
	movb	$0, 3(%r13)
	xorl	%edx, %edx
	movq	88(%rsp), %r13
	movq	56(%rsp), %r14
	xorl	%eax, %eax
	movq	80(%rsp), %r12
	movl	$0, 296(%rsp)
	.p2align 4,,10
	.p2align 3
.L1445:
	cmpq	$3, %rdx
	jg	.L1586
.L1457:
	testl	%ecx, %ecx
	jne	.L1454
.L1592:
	movzbl	(%r15,%rax), %ecx
	movb	%cl, 352(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$4, %rcx
	je	.L1531
	movzbl	1(%r15,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$3, %rcx
	movb	%sil, 353(%rsp,%rdx)
	jg	.L1532
	movzbl	2(%r15,%rax), %esi
	testq	%rdx, %rdx
	movb	%sil, 352(%rsp,%rcx)
	jne	.L1587
	movzbl	3(%r15,%rax), %edx
	movb	%dl, 355(%rsp)
	movl	$4, %edx
.L1455:
	addq	$4, %rax
	cmpq	$3, %rdx
	movl	$1, %ecx
	jle	.L1457
.L1586:
	movslq	352(%rsp), %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L1462
	.p2align 4,,10
	.p2align 3
.L1589:
	movzbl	0(%rbp,%rax), %ecx
	movb	%cl, 352(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L1533
	movzbl	1(%rbp,%rax), %edi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%dil, 353(%rsp,%rdx)
	jg	.L1535
	movzbl	2(%rbp,%rax), %edi
	movb	%dil, 352(%rsp,%rcx)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L1535
	movzbl	3(%rbp,%rax), %edi
	addq	$4, %rdx
	movb	%dil, 352(%rsp,%rcx)
.L1459:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L1588
.L1462:
	testl	%ecx, %ecx
	je	.L1589
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L1462
.L1588:
	cmpq	352(%rsp), %rsi
	jge	.L1590
	movzbl	(%r12), %eax
	movb	(%r15), %bl
	movzbl	0(%r13), %edx
	movb	%al, %bh
	movzbl	(%r14), %eax
	sall	$16, %edx
	movzwl	%bx, %ebx
	orl	%edx, %ebx
	sall	$24, %eax
	orl	%eax, %ebx
	movslq	%ebx, %rax
	salq	$3, %rax
	leaq	3(%rax), %rdx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	sarq	$2, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	(%rdx,%rdx,8), %rsi
	addq	72(%rsp), %rsi
	cmpq	%rcx, %rax
	je	.L1591
	negq	%rdx
	leaq	(%rax,%rdx,4), %rax
	cmpq	$3, %rax
	jg	.L1521
	movzbl	(%rsi,%rax), %edx
	movb	%dl, 304(%rsp)
	movzbl	1(%rsi,%rax), %edx
	movb	%dl, 305(%rsp)
	leaq	2(%rax), %rdx
	cmpq	$3, %rdx
	jg	.L1522
	movzbl	2(%rsi,%rax), %edx
	movb	%dl, 306(%rsp)
	leaq	3(%rax), %rdx
	cmpq	$3, %rdx
	jg	.L1523
	movzbl	3(%rsi,%rax), %edx
	movb	%dl, 307(%rsp)
	leaq	4(%rax), %rdx
	cmpq	$3, %rdx
	jg	.L1524
	movzbl	4(%rsi,%rax), %edx
	movb	%dl, 308(%rsp)
	leaq	5(%rax), %rdx
	cmpq	$3, %rdx
	jg	.L1525
	movzbl	5(%rsi,%rax), %edx
	movb	%dl, 309(%rsp)
	leaq	6(%rax), %rdx
	cmpq	$3, %rdx
	jg	.L1526
	movzbl	6(%rsi,%rax), %edx
	movb	%dl, 310(%rsp)
	leaq	7(%rax), %rdx
	cmpq	$3, %rdx
	jg	.L1527
	movzbl	7(%rsi,%rax), %eax
	movb	%al, 311(%rsp)
.L1453:
	movsd	304(%rsp), %xmm0
	movl	$.LC71, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	movl	172(%rsp), %eax
	movb	(%r15), %al
	movzbl	0(%r13), %edx
	movl	%eax, %ecx
	movzbl	(%r12), %eax
	sall	$16, %edx
	movb	%al, %ch
	movzwl	%cx, %eax
	movl	%eax, 172(%rsp)
	movzbl	(%r14), %eax
	orl	%edx, 172(%rsp)
	xorl	%edx, %edx
	sall	$24, %eax
	orl	%eax, 172(%rsp)
	movl	172(%rsp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	movb	%al, (%r15)
	movl	%eax, 300(%rsp)
	shrw	$8, %cx
	movb	%cl, (%r12)
	movl	%eax, %ecx
	shrl	$24, %eax
	shrl	$16, %ecx
	movb	%cl, 0(%r13)
	xorl	%ecx, %ecx
	movb	%al, (%r14)
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.L1592
	.p2align 4,,10
	.p2align 3
.L1454:
	addq	$5, %rax
	xorl	%ecx, %ecx
	jmp	.L1445
	.p2align 4,,10
	.p2align 3
.L1535:
	movq	%rcx, %rdx
	jmp	.L1459
	.p2align 4,,10
	.p2align 3
.L1591:
	xorl	%edx, %edx
.L1464:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L1447
	.p2align 4,,10
	.p2align 3
.L1593:
	movzbl	(%rsi,%rax), %ecx
	movb	%cl, 304(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L1528
	movzbl	1(%rsi,%rax), %edi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%dil, 305(%rsp,%rdx)
	jg	.L1530
	movzbl	2(%rsi,%rax), %edi
	movb	%dil, 304(%rsp,%rcx)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L1530
	movzbl	3(%rsi,%rax), %edi
	addq	$4, %rdx
	movb	%dil, 304(%rsp,%rcx)
.L1451:
	addq	$4, %rax
	movl	$1, %ecx
.L1452:
	cmpq	$7, %rdx
	jg	.L1453
.L1447:
	testl	%ecx, %ecx
	je	.L1593
	addq	$5, %rax
	xorl	%ecx, %ecx
	jmp	.L1452
	.p2align 4,,10
	.p2align 3
.L1530:
	movq	%rcx, %rdx
	jmp	.L1451
	.p2align 4,,10
	.p2align 3
.L1531:
	movl	$4, %edx
	jmp	.L1455
	.p2align 4,,10
	.p2align 3
.L1533:
	movl	$8, %edx
	jmp	.L1459
	.p2align 4,,10
	.p2align 3
.L1532:
	movq	%rcx, %rdx
	jmp	.L1455
	.p2align 4,,10
	.p2align 3
.L1528:
	movl	$8, %edx
	jmp	.L1451
	.p2align 4,,10
	.p2align 3
.L1587:
	addq	$3, %rdx
	jmp	.L1455
.L1590:
	movl	$10, %edi
	call	putchar
	movl	$.LC73, %edi
	call	puts
	movq	%r15, %rdi
	call	managed_secure_free
	movq	%rbp, %rdi
	call	managed_secure_free
	movq	64(%rsp), %rdi
	call	managed_secure_free
	movq	160(%rsp), %rdi
	call	managed_secure_free
	movq	72(%rsp), %rdi
	call	managed_secure_free
	movq	192(%rsp), %rdi
	addq	$376, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	managed_secure_free
.L1467:
	.cfi_restore_state
	movq	%rdi, %rax
	jmp	.L1337
.L1488:
	movq	%rdi, %r10
	jmp	.L1372
.L1485:
	movq	%rdi, %r10
	.p2align 4,,2
	jmp	.L1367
.L1482:
	movq	%rdi, %r10
	.p2align 4,,2
	jmp	.L1362
.L1479:
	movq	%rdi, %r10
	.p2align 4,,2
	jmp	.L1357
.L1476:
	movq	%rdi, %rax
	.p2align 4,,2
	jmp	.L1352
.L1473:
	movq	%rdi, %r10
	.p2align 4,,2
	jmp	.L1347
.L1470:
	movq	%rdi, %rax
	.p2align 4,,2
	jmp	.L1342
.L1521:
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L1448:
	addq	$9, %rsi
	jmp	.L1464
.L1522:
	movl	$2, %edx
	jmp	.L1448
.L1523:
	movl	$3, %edx
	jmp	.L1448
.L1524:
	movl	$4, %edx
	jmp	.L1448
.L1525:
	movl	$5, %edx
	jmp	.L1448
.L1465:
	movl	$8, %eax
	jmp	.L1337
.L1486:
	movl	$8, %r10d
	jmp	.L1372
.L1483:
	movl	$8, %r10d
	jmp	.L1367
.L1480:
	movl	$8, %r10d
	jmp	.L1362
.L1527:
	movl	$7, %edx
	jmp	.L1448
.L1526:
	movl	$6, %edx
	jmp	.L1448
.L1471:
	movl	$8, %r10d
	jmp	.L1347
.L1468:
	movl	$8, %eax
	jmp	.L1342
.L1477:
	movl	$8, %r10d
	jmp	.L1357
.L1474:
	movl	$8, %eax
	jmp	.L1352
.L1553:
	movl	$.LC66, %edi
	call	puts
	movl	$42, %edi
	call	exit
	.cfi_endproc
.LFE136:
	.size	simple_array_tests, .-simple_array_tests
	.p2align 4,,15
	.globl	find_number_of_useful_stack_chunks
	.type	find_number_of_useful_stack_chunks, @function
find_number_of_useful_stack_chunks:
.LFB137:
	.cfi_startproc
	leaq	12(%rdi), %rax
	addq	$5, %rdi
	cmovns	%rdi, %rax
	sarq	$3, %rax
	ret
	.cfi_endproc
.LFE137:
	.size	find_number_of_useful_stack_chunks, .-find_number_of_useful_stack_chunks
	.p2align 4,,15
	.globl	get_ptr_size
	.type	get_ptr_size, @function
get_ptr_size:
.LFB138:
	.cfi_startproc
	movl	$8, %eax
	ret
	.cfi_endproc
.LFE138:
	.size	get_ptr_size, .-get_ptr_size
	.section	.rodata.str1.8
	.align 8
.LC74:
	.string	"Stack:Attempted to read more keyshares that the ones stored\n"
	.text
	.p2align 4,,15
	.globl	get_next_stack_keyshare
	.type	get_next_stack_keyshare, @function
get_next_stack_keyshare:
.LFB139:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	stack_keyshare_input_file(%rip), %rdi
	call	feof
	testl	%eax, %eax
	jne	.L1600
	movq	stack_keyshare_input_file(%rip), %rcx
	movl	$1, %edx
	movl	$1, %esi
	movq	%rsp, %rdi
	call	fread
	cmpq	$1, %rax
	jne	.L1601
	movzbl	(%rsp), %eax
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L1600:
	.cfi_restore_state
	movl	$.LC74, %edi
	call	perror
	movl	$45, %edi
	call	exit
.L1601:
	movl	$.LC8, %edi
	call	perror
	movl	$47, %edi
	call	exit
	.cfi_endproc
.LFE139:
	.size	get_next_stack_keyshare, .-get_next_stack_keyshare
	.section	.rodata.str1.8
	.align 8
.LC75:
	.string	"Stack: Whoops. We need to allocate a bit more space."
	.text
	.p2align 4,,15
	.globl	allocate_stack_mem
	.type	allocate_stack_mem, @function
allocate_stack_mem:
.LFB140:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$.LC75, %edi
	call	puts
	movl	$2051, %edi
	call	malloc
	testq	%rax, %rax
	je	.L1605
	movq	$2051, total_stack_bytes_allocated(%rip)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L1605:
	.cfi_restore_state
	movl	$143, %esi
	movl	$__func__.5211, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE140:
	.size	allocate_stack_mem, .-allocate_stack_mem
	.p2align 4,,15
	.globl	free_secure_stack_mem
	.type	free_secure_stack_mem, @function
free_secure_stack_mem:
.LFB141:
	.cfi_startproc
	jmp	free
	.cfi_endproc
.LFE141:
	.size	free_secure_stack_mem, .-free_secure_stack_mem
	.p2align 4,,15
	.globl	insert_keys_into_stack_mem
	.type	insert_keys_into_stack_mem, @function
insert_keys_into_stack_mem:
.LFB142:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	xorl	%eax, %eax
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	xorl	%r12d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	xorl	%ebx, %ebx
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	.p2align 4,,10
	.p2align 3
.L1608:
	cmpq	total_stack_bytes_allocated(%rip), %rbx
	jge	.L1617
.L1614:
	testl	%eax, %eax
	jne	.L1609
	movb	$0, 0(%rbp,%rbx)
	movb	$0, 1(%rbp,%rbx)
	movb	$0, 2(%rbp,%rbx)
	addq	$3, %rbx
.L1610:
	cmpq	$5, %r12
	movl	$1, %eax
	jne	.L1608
	xorl	%eax, %eax
	xorl	%r12d, %r12d
	cmpq	total_stack_bytes_allocated(%rip), %rbx
	jl	.L1614
.L1617:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1609:
	.cfi_restore_state
	movq	stack_keyshare_input_file(%rip), %rdi
	leaq	0(%rbp,%rbx), %r13
	call	feof
	testl	%eax, %eax
	jne	.L1618
	movq	stack_keyshare_input_file(%rip), %rcx
	movl	$1, %edx
	movl	$1, %esi
	movq	%rsp, %rdi
	call	fread
	cmpq	$1, %rax
	jne	.L1619
	movzbl	(%rsp), %eax
	addq	$1, %r12
	addq	$1, %rbx
	movb	%al, 0(%r13)
	jmp	.L1610
.L1618:
	movl	$.LC74, %edi
	call	perror
	movl	$45, %edi
	call	exit
.L1619:
	movl	$.LC8, %edi
	call	perror
	movl	$47, %edi
	call	exit
	.cfi_endproc
.LFE142:
	.size	insert_keys_into_stack_mem, .-insert_keys_into_stack_mem
	.section	.rodata.str1.1
.LC76:
	.string	"stack_keyshares"
	.section	.rodata.str1.8
	.align 8
.LC77:
	.string	"init_mem:stack_keyshares file error\n"
	.text
	.p2align 4,,15
	.globl	init_stack_mem
	.type	init_stack_mem, @function
init_stack_mem:
.LFB143:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xorl	%edi, %edi
	call	time
	movl	%eax, %edi
	call	srand
	movl	$.LC75, %edi
	call	puts
	movl	$2051, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L1624
	movl	$.LC11, %esi
	movl	$.LC76, %edi
	movq	$2051, total_stack_bytes_allocated(%rip)
	call	fopen
	testq	%rax, %rax
	movq	%rax, stack_keyshare_input_file(%rip)
	je	.L1625
	movq	%rbx, %rdi
	call	insert_keys_into_stack_mem
	movq	stack_keyshare_input_file(%rip), %rdi
	movq	%rbx, entire_stack_memory_chunk(%rip)
	movq	%rbx, last_unused_stack_memory(%rip)
	call	fclose
	movq	%rbx, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L1624:
	.cfi_restore_state
	movl	$143, %esi
	movl	$__func__.5211, %edi
	call	error_checking_malloc.part.0
.L1625:
	movl	$.LC77, %edi
	call	perror
	movl	$46, %edi
	call	exit
	.cfi_endproc
.LFE143:
	.size	init_stack_mem, .-init_stack_mem
	.p2align 4,,15
	.globl	insert_data_into_stack_mem
	.type	insert_data_into_stack_mem, @function
insert_data_into_stack_mem:
.LFB144:
	.cfi_startproc
	testq	%rdi, %rdi
	jle	.L1632
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	jmp	.L1631
	.p2align 4,,10
	.p2align 3
.L1636:
	movzbl	(%rsi,%rcx), %r9d
	movb	%r9b, (%rdx,%r8)
	leaq	1(%rcx), %r9
	cmpq	%r9, %rdi
	jle	.L1634
	movzbl	1(%rsi,%rcx), %r9d
	movb	%r9b, 1(%rdx,%r8)
	leaq	2(%rcx), %r9
	cmpq	%r9, %rdi
	jle	.L1634
	movzbl	2(%rsi,%rcx), %r9d
	addq	$3, %rcx
	movb	%r9b, 2(%rdx,%r8)
.L1629:
	addq	$1, %rax
	addq	$3, %r8
	cmpq	%rcx, %rdi
	movl	$1, %r9d
	jle	.L1635
.L1631:
	testl	%r9d, %r9d
	je	.L1636
	addq	$5, %r8
	xorl	%r9d, %r9d
	cmpq	%rcx, %rdi
	jg	.L1631
.L1635:
	rep ret
	.p2align 4,,10
	.p2align 3
.L1634:
	movq	%r9, %rcx
	jmp	.L1629
.L1632:
	xorl	%eax, %eax
	.p2align 4,,6
	ret
	.cfi_endproc
.LFE144:
	.size	insert_data_into_stack_mem, .-insert_data_into_stack_mem
	.p2align 4,,15
	.globl	get_secure_stack_data
	.type	get_secure_stack_data, @function
get_secure_stack_data:
.LFB145:
	.cfi_startproc
	cmpl	$2, %ecx
	movq	%rdx, %r9
	je	.L1649
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.L1658
.L1639:
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L1657:
	cmpq	%rax, %rsi
	jle	.L1637
.L1659:
	testl	%r8d, %r8d
	jne	.L1644
	movzbl	(%r9,%rcx), %edx
	movb	%dl, (%rdi,%rax)
	leaq	1(%rax), %rdx
	cmpq	%rdx, %rsi
	jle	.L1654
	movzbl	1(%r9,%rcx), %edx
	movb	%dl, 1(%rdi,%rax)
	leaq	2(%rax), %rdx
	cmpq	%rdx, %rsi
	jle	.L1654
	movzbl	2(%r9,%rcx), %edx
	movb	%dl, 2(%rdi,%rax)
	addq	$3, %rax
.L1645:
	addq	$3, %rcx
	cmpq	%rax, %rsi
	movl	$1, %r8d
	jg	.L1659
.L1637:
	rep ret
	.p2align 4,,10
	.p2align 3
.L1644:
	addq	$5, %rcx
	xorl	%r8d, %r8d
	jmp	.L1657
	.p2align 4,,10
	.p2align 3
.L1654:
	movq	%rdx, %rax
	jmp	.L1645
	.p2align 4,,10
	.p2align 3
.L1649:
	movl	$1, %ecx
.L1638:
	imulq	%rcx, %r8
	movabsq	$6148914691236517206, %rdx
	movq	%r8, %rax
	imulq	%rdx
	movq	%r8, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%r9,%rdx,8), %r9
	cmpq	%rax, %r8
	je	.L1660
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rcx
	addq	%r8, %rcx
	cmpq	$2, %rcx
	jg	.L1652
	testq	%rsi, %rsi
	jle	.L1652
	movl	$3, %r8d
	movq	%rcx, %rdx
	xorl	%eax, %eax
	subq	%rcx, %r8
	jmp	.L1642
	.p2align 4,,10
	.p2align 3
.L1661:
	cmpq	%rsi, %rax
	je	.L1641
.L1642:
	movzbl	(%r9,%rdx), %edx
	movb	%dl, (%rdi,%rax)
	addq	$1, %rax
	cmpq	%r8, %rax
	leaq	(%rax,%rcx), %rdx
	jne	.L1661
.L1641:
	addq	$8, %r9
	jmp	.L1639
	.p2align 4,,10
	.p2align 3
.L1658:
	movq	%rsi, %rcx
	jmp	.L1638
	.p2align 4,,10
	.p2align 3
.L1660:
	xorl	%eax, %eax
	jmp	.L1639
.L1652:
	xorl	%eax, %eax
	.p2align 4,,4
	jmp	.L1641
	.cfi_endproc
.LFE145:
	.size	get_secure_stack_data, .-get_secure_stack_data
	.p2align 4,,15
	.globl	set_secure_stack_data
	.type	set_secure_stack_data, @function
set_secure_stack_data:
.LFB146:
	.cfi_startproc
	cmpl	$2, %ecx
	movq	%rdx, %r9
	je	.L1674
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.L1683
.L1664:
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L1682:
	cmpq	%rax, %rsi
	jle	.L1662
.L1684:
	testl	%r8d, %r8d
	jne	.L1669
	movzbl	(%rdi,%rax), %edx
	movb	%dl, (%r9,%rcx)
	leaq	1(%rax), %rdx
	cmpq	%rdx, %rsi
	jle	.L1679
	movzbl	1(%rdi,%rax), %edx
	movb	%dl, 1(%r9,%rcx)
	leaq	2(%rax), %rdx
	cmpq	%rdx, %rsi
	jle	.L1679
	movzbl	2(%rdi,%rax), %edx
	addq	$3, %rax
	movb	%dl, 2(%r9,%rcx)
.L1670:
	addq	$3, %rcx
	cmpq	%rax, %rsi
	movl	$1, %r8d
	jg	.L1684
.L1662:
	rep ret
	.p2align 4,,10
	.p2align 3
.L1669:
	addq	$5, %rcx
	xorl	%r8d, %r8d
	jmp	.L1682
	.p2align 4,,10
	.p2align 3
.L1679:
	movq	%rdx, %rax
	jmp	.L1670
	.p2align 4,,10
	.p2align 3
.L1674:
	movl	$1, %eax
.L1663:
	imulq	%rax, %r8
	movabsq	$6148914691236517206, %rdx
	movq	%r8, %rax
	imulq	%rdx
	movq	%r8, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%r9,%rdx,8), %r9
	cmpq	%rax, %r8
	je	.L1685
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rax, %r8
	cmpq	$2, %r8
	jg	.L1677
	testq	%rsi, %rsi
	jle	.L1677
	movl	$3, %r10d
	movq	%r8, %rdx
	xorl	%eax, %eax
	subq	%r8, %r10
	jmp	.L1667
	.p2align 4,,10
	.p2align 3
.L1686:
	cmpq	%rsi, %rax
	je	.L1666
.L1667:
	movzbl	(%rdi,%rax), %ecx
	addq	$1, %rax
	cmpq	%r10, %rax
	movb	%cl, (%r9,%rdx)
	leaq	(%rax,%r8), %rdx
	jne	.L1686
.L1666:
	addq	$8, %r9
	jmp	.L1664
	.p2align 4,,10
	.p2align 3
.L1683:
	movq	%rsi, %rax
	jmp	.L1663
	.p2align 4,,10
	.p2align 3
.L1685:
	xorl	%eax, %eax
	jmp	.L1664
.L1677:
	xorl	%eax, %eax
	.p2align 4,,4
	jmp	.L1666
	.cfi_endproc
.LFE146:
	.size	set_secure_stack_data, .-set_secure_stack_data
	.p2align 4,,15
	.globl	allocate_mem_into_secure_stack
	.type	allocate_mem_into_secure_stack, @function
allocate_mem_into_secure_stack:
.LFB147:
	.cfi_startproc
	testq	%rdi, %rdi
	movq	last_unused_stack_memory(%rip), %rsi
	je	.L1692
	movq	%rdi, %rax
	movabsq	$6148914691236517206, %rdx
	movq	entire_stack_memory_chunk(%rip), %rcx
	imulq	%rdx
	movq	%rdi, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	cmpq	%rax, %rdi
	setg	%al
	addq	total_stack_bytes_allocated(%rip), %rcx
	movzbl	%al, %eax
	addq	%rax, %rdx
	cmpq	%rcx, last_unused_memory(%rip)
	leaq	0(,%rdx,8), %rdi
	movq	%rdx, %rax
	movq	%rsi, %rdx
	leaq	(%rsi,%rdi), %r8
	movq	%r8, last_unused_stack_memory(%rip)
	jnb	.L1693
	rep ret
	.p2align 4,,10
	.p2align 3
.L1693:
	subq	%rdi, %r8
	movq	%r8, last_unused_stack_memory(%rip)
.L1692:
	xorl	%eax, %eax
	xorl	%edx, %edx
	ret
	.cfi_endproc
.LFE147:
	.size	allocate_mem_into_secure_stack, .-allocate_mem_into_secure_stack
	.p2align 4,,15
	.globl	free_mem_from_secure_stack
	.type	free_mem_from_secure_stack, @function
free_mem_from_secure_stack:
.LFB148:
	.cfi_startproc
	movq	%rdi, %rax
	movabsq	$6148914691236517206, %rdx
	imulq	%rdx
	movq	%rdi, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	cmpq	%rax, %rdi
	setg	%al
	movzbl	%al, %eax
	addq	%rax, %rdx
	salq	$3, %rdx
	subq	%rdx, last_unused_stack_memory(%rip)
	ret
	.cfi_endproc
.LFE148:
	.size	free_mem_from_secure_stack, .-free_mem_from_secure_stack
	.p2align 4,,15
	.globl	free_chunks_from_secure_stack
	.type	free_chunks_from_secure_stack, @function
free_chunks_from_secure_stack:
.LFB149:
	.cfi_startproc
	salq	$3, %rdi
	subq	%rdi, last_unused_stack_memory(%rip)
	ret
	.cfi_endproc
.LFE149:
	.size	free_chunks_from_secure_stack, .-free_chunks_from_secure_stack
	.p2align 4,,15
	.globl	init_function_params
	.type	init_function_params, @function
init_function_params:
.LFB150:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	testb	%al, %al
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	je	.L1698
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm1, 112(%rsp)
	movaps	%xmm2, 128(%rsp)
	movaps	%xmm3, 144(%rsp)
	movaps	%xmm4, 160(%rsp)
	movaps	%xmm5, 176(%rsp)
	movaps	%xmm6, 192(%rsp)
	movaps	%xmm7, 208(%rsp)
.L1698:
	leaq	288(%rsp), %rax
	movl	%edi, %ebx
	movl	$24, %edi
	movq	%rax, 24(%rsp)
	leaq	48(%rsp), %rax
	movl	$8, 16(%rsp)
	movl	$48, 20(%rsp)
	movq	%rax, 32(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r13
	je	.L1788
	testl	%ebx, %ebx
	jne	.L1789
	movq	$0, 16(%rax)
	xorl	%r12d, %r12d
.L1704:
	movq	%r12, 0(%r13)
	movq	$-1, 8(%r13)
	addq	$232, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	movq	%r13, %rax
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1789:
	.cfi_restore_state
	movl	$128, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r14
	je	.L1790
	movl	16(%rsp), %edx
	movq	%rax, 16(%r13)
	cmpl	$48, %edx
	jnb	.L1702
	movl	%edx, %eax
	addq	32(%rsp), %rax
	addl	$8, %edx
	movl	%edx, 16(%rsp)
	movq	(%rax), %rbp
	testq	%rbp, %rbp
	movq	%rbp, (%r14)
	jne	.L1791
.L1706:
	movl	16(%rsp), %ebx
	movq	$0, 8(%r14)
.L1709:
	cmpl	$47, %ebx
	ja	.L1714
.L1801:
	movl	%ebx, %eax
	addq	32(%rsp), %rax
	addl	$8, %ebx
	movl	%ebx, 16(%rsp)
.L1715:
	movq	(%rax), %r12
	leaq	0(,%r12,4), %r15
	movq	%r12, 16(%r14)
	addq	%r15, %rbp
	testq	%r12, %r12
	jne	.L1792
	movl	16(%rsp), %r12d
	movq	$0, 24(%r14)
.L1718:
	cmpl	$47, %r12d
	ja	.L1721
	movl	%r12d, %eax
	addq	32(%rsp), %rax
	addl	$8, %r12d
	movl	%r12d, 16(%rsp)
.L1722:
	movq	(%rax), %r15
	leaq	0(,%r15,8), %r9
	testq	%r15, %r15
	movq	%r15, 32(%r14)
	leaq	0(%rbp,%r9), %rbx
	jne	.L1793
	movl	16(%rsp), %ebp
	movq	$0, 40(%r14)
.L1725:
	cmpl	$47, %ebp
	ja	.L1728
	movl	%ebp, %eax
	addq	32(%rsp), %rax
	addl	$8, %ebp
	movl	%ebp, 16(%rsp)
.L1729:
	movq	(%rax), %r15
	leaq	0(,%r15,4), %r11
	testq	%r15, %r15
	movq	%r15, 48(%r14)
	leaq	(%rbx,%r11), %r12
	jne	.L1794
	movl	16(%rsp), %ebp
	movq	$0, 56(%r14)
.L1732:
	cmpl	$47, %ebp
	ja	.L1735
	movl	%ebp, %eax
	addq	32(%rsp), %rax
	addl	$8, %ebp
	movl	%ebp, 16(%rsp)
.L1736:
	movq	(%rax), %rbx
	leaq	0(,%rbx,8), %r15
	movq	%rbx, 64(%r14)
	addq	%r15, %r12
	testq	%rbx, %rbx
	jne	.L1795
	movl	16(%rsp), %ebp
	movq	$0, 72(%r14)
.L1739:
	cmpl	$47, %ebp
	ja	.L1742
	movl	%ebp, %eax
	addq	32(%rsp), %rax
	addl	$8, %ebp
	movl	%ebp, 16(%rsp)
.L1743:
	movq	(%rax), %r15
	leaq	0(,%r15,8), %r9
	movq	%r15, 80(%r14)
	addq	%r9, %r12
	testq	%r15, %r15
	jne	.L1796
	movl	16(%rsp), %ebx
	movq	$0, 88(%r14)
	movq	$0, 96(%r14)
.L1750:
	cmpl	$47, %ebx
	ja	.L1755
	movl	%ebx, %eax
	addq	32(%rsp), %rax
	addl	$8, %ebx
	movl	%ebx, 16(%rsp)
	movq	(%rax), %r15
	testq	%r15, %r15
	movq	%r15, 104(%r14)
	jne	.L1797
.L1757:
	movq	$0, 112(%r14)
	movq	$0, 120(%r14)
	jmp	.L1704
	.p2align 4,,10
	.p2align 3
.L1702:
	movq	24(%rsp), %rax
	movq	(%rax), %rbp
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	testq	%rbp, %rbp
	movq	%rbp, (%r14)
	je	.L1706
.L1791:
	movq	%rbp, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L1798
	testq	%rbp, %rbp
	movq	%rax, 8(%r14)
	movl	16(%rsp), %ebx
	jle	.L1709
	movq	32(%rsp), %rdi
	movq	24(%rsp), %rsi
	xorl	%edx, %edx
	jmp	.L1713
	.p2align 4,,10
	.p2align 3
.L1800:
	movl	%ebx, %ecx
	addq	$1, %rdx
	addl	$8, %ebx
	addq	%rdi, %rcx
	cmpq	%rbp, %rdx
	movl	(%rcx), %ecx
	movb	%cl, (%rax)
	je	.L1799
.L1712:
	movq	16(%r13), %rax
	movq	8(%rax), %rax
.L1713:
	addq	%rdx, %rax
	cmpl	$47, %ebx
	jbe	.L1800
	movq	%rsi, %rcx
	addq	$1, %rdx
	addq	$8, %rsi
	movl	(%rcx), %ecx
	cmpq	%rbp, %rdx
	movb	%cl, (%rax)
	jne	.L1712
.L1799:
	cmpl	$47, %ebx
	movl	%ebx, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movq	16(%r13), %r14
	jbe	.L1801
.L1714:
	movq	24(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	jmp	.L1715
	.p2align 4,,10
	.p2align 3
.L1742:
	movq	24(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	jmp	.L1743
	.p2align 4,,10
	.p2align 3
.L1735:
	movq	24(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	jmp	.L1736
	.p2align 4,,10
	.p2align 3
.L1728:
	movq	24(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	jmp	.L1729
	.p2align 4,,10
	.p2align 3
.L1721:
	movq	24(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	jmp	.L1722
	.p2align 4,,10
	.p2align 3
.L1755:
	movq	24(%rsp), %rax
	movq	(%rax), %r15
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	testq	%r15, %r15
	movq	%r15, 104(%r14)
	je	.L1757
.L1797:
	leaq	0(,%r15,8), %r9
	testq	%r9, %r9
	je	.L1781
	movq	%r9, %rdi
	movq	%r9, 8(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	8(%rsp), %r9
	je	.L1802
.L1758:
	testq	%r15, %r15
	movq	%rax, 112(%r14)
	jle	.L1783
	movq	32(%rsp), %r10
	movl	16(%rsp), %r8d
	leaq	(%rax,%r9), %rdi
	movq	24(%rsp), %rdx
	jmp	.L1761
	.p2align 4,,10
	.p2align 3
.L1803:
	movl	%ebp, %ebx
.L1761:
	movl	%ebx, %ecx
	leal	8(%rbx), %esi
	leaq	8(%rdx), %r11
	addq	%r10, %rcx
	cmpl	$47, %ebx
	cmova	%rdx, %rcx
	movl	%esi, %ebp
	cmovbe	%esi, %r8d
	movq	(%rcx), %rcx
	cmova	%ebx, %ebp
	cmova	%r11, %rdx
	addq	$8, %rax
	movq	%rcx, -8(%rax)
	addq	%rcx, %r12
	cmpq	%rdi, %rax
	jne	.L1803
	movl	%r8d, 16(%rsp)
	movq	%rdx, 24(%rsp)
.L1759:
	testq	%r9, %r9
	je	.L1784
	movq	%r9, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L1804
.L1762:
	testq	%r15, %r15
	movq	%rax, 120(%r14)
	jle	.L1704
	movq	32(%rsp), %rdi
	movq	24(%rsp), %rsi
	xorl	%edx, %edx
	jmp	.L1765
	.p2align 4,,10
	.p2align 3
.L1805:
	movl	%ebp, %ecx
	addl	$8, %ebp
	addq	%rdi, %rcx
.L1764:
	movq	(%rcx), %rcx
	addq	$1, %rdx
	cmpq	%r15, %rdx
	movq	%rcx, (%rax)
	je	.L1704
	movq	16(%r13), %rax
	movq	120(%rax), %rax
.L1765:
	cmpl	$47, %ebp
	leaq	(%rax,%rdx,8), %rax
	jbe	.L1805
	movq	%rsi, %rcx
	addq	$8, %rsi
	jmp	.L1764
	.p2align 4,,10
	.p2align 3
.L1792:
	testq	%r15, %r15
	je	.L1766
	movq	%r15, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L1806
.L1717:
	testq	%r12, %r12
	movq	%rax, 24(%r14)
	jle	.L1768
	movq	32(%rsp), %r10
	movl	16(%rsp), %r8d
	leaq	(%rax,%r15), %r9
	movq	24(%rsp), %rdx
	jmp	.L1720
	.p2align 4,,10
	.p2align 3
.L1719:
	movl	%r12d, %ebx
.L1720:
	movl	%ebx, %ecx
	leal	8(%rbx), %esi
	leaq	8(%rdx), %rdi
	addq	%r10, %rcx
	cmpl	$47, %ebx
	cmova	%rdx, %rcx
	movl	%esi, %r12d
	cmovbe	%esi, %r8d
	movl	(%rcx), %ecx
	cmova	%ebx, %r12d
	cmova	%rdi, %rdx
	addq	$4, %rax
	movl	%ecx, -4(%rax)
	cmpq	%r9, %rax
	jne	.L1719
	movl	%r8d, 16(%rsp)
	movq	%rdx, 24(%rsp)
	jmp	.L1718
	.p2align 4,,10
	.p2align 3
.L1796:
	testq	%r9, %r9
	je	.L1776
	movq	%r9, %rdi
	movq	%r9, 8(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	8(%rsp), %r9
	je	.L1807
.L1745:
	testq	%r15, %r15
	movq	%rax, 88(%r14)
	jle	.L1778
	movq	32(%rsp), %r10
	movl	16(%rsp), %r8d
	leaq	(%rax,%r9), %rdi
	movq	24(%rsp), %rdx
	jmp	.L1748
	.p2align 4,,10
	.p2align 3
.L1808:
	movl	%ebx, %ebp
.L1748:
	movl	%ebp, %ecx
	leal	8(%rbp), %esi
	leaq	8(%rdx), %r11
	addq	%r10, %rcx
	cmpl	$47, %ebp
	cmova	%rdx, %rcx
	movl	%esi, %ebx
	cmovbe	%esi, %r8d
	movq	(%rcx), %rcx
	cmova	%ebp, %ebx
	cmova	%r11, %rdx
	addq	$8, %rax
	movq	%rcx, -8(%rax)
	cmpq	%rdi, %rax
	jne	.L1808
	movl	%r8d, 16(%rsp)
	movq	%rdx, 24(%rsp)
.L1746:
	testq	%r9, %r9
	je	.L1779
	movq	%r9, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L1809
.L1749:
	testq	%r15, %r15
	movq	%rax, 96(%r14)
	jle	.L1750
	movq	32(%rsp), %r8
	movl	16(%rsp), %edi
	xorl	%edx, %edx
	movq	24(%rsp), %rsi
	jmp	.L1754
	.p2align 4,,10
	.p2align 3
.L1811:
	movl	%ebx, %ecx
	addq	$1, %rdx
	addl	$8, %ebx
	addq	%r8, %rcx
	cmpq	%r15, %rdx
	movl	%ebx, %edi
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	je	.L1810
.L1753:
	movq	16(%r13), %rax
	movq	96(%rax), %rax
.L1754:
	cmpl	$47, %ebx
	leaq	(%rax,%rdx,8), %rax
	jbe	.L1811
	movq	%rsi, %rcx
	addq	$1, %rdx
	addq	$8, %rsi
	movq	(%rcx), %rcx
	cmpq	%r15, %rdx
	movq	%rcx, (%rax)
	jne	.L1753
.L1810:
	movl	%edi, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movq	16(%r13), %r14
	jmp	.L1750
	.p2align 4,,10
	.p2align 3
.L1795:
	testq	%r15, %r15
	je	.L1774
	movq	%r15, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L1812
.L1738:
	testq	%rbx, %rbx
	movq	%rax, 72(%r14)
	jle	.L1739
	movl	20(%rsp), %edx
	movq	32(%rsp), %rbx
	leaq	(%rax,%r15), %r11
	movq	24(%rsp), %rcx
	movl	%edx, %r8d
	jmp	.L1741
	.p2align 4,,10
	.p2align 3
.L1740:
	movl	%r10d, %edx
.L1741:
	movl	%edx, %esi
	leal	16(%rdx), %edi
	leaq	8(%rcx), %r9
	addq	%rbx, %rsi
	cmpl	$175, %edx
	cmova	%rcx, %rsi
	movl	%edi, %r10d
	cmova	%r9, %rcx
	movsd	(%rsi), %xmm0
	cmova	%edx, %r10d
	cmovbe	%edi, %r8d
	addq	$8, %rax
	movsd	%xmm0, -8(%rax)
	cmpq	%r11, %rax
	jne	.L1740
	movq	%rcx, 24(%rsp)
	movl	%r8d, 20(%rsp)
	jmp	.L1739
	.p2align 4,,10
	.p2align 3
.L1794:
	testq	%r11, %r11
	je	.L1772
	movq	%r11, %rdi
	movq	%r11, 8(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	8(%rsp), %r11
	je	.L1813
.L1731:
	testq	%r15, %r15
	movq	%rax, 56(%r14)
	jle	.L1732
	movl	20(%rsp), %edx
	movq	32(%rsp), %rbx
	addq	%rax, %r11
	movq	24(%rsp), %rcx
	movl	%edx, %r8d
	jmp	.L1734
	.p2align 4,,10
	.p2align 3
.L1733:
	movl	%r10d, %edx
.L1734:
	movl	%edx, %esi
	leal	16(%rdx), %edi
	leaq	8(%rcx), %r9
	addq	%rbx, %rsi
	cmpl	$175, %edx
	cmova	%rcx, %rsi
	movl	%edi, %r10d
	cmova	%r9, %rcx
	movsd	(%rsi), %xmm1
	cmova	%edx, %r10d
	cmovbe	%edi, %r8d
	addq	$4, %rax
	cvtpd2ps	%xmm1, %xmm1
	movss	%xmm1, -4(%rax)
	cmpq	%r11, %rax
	jne	.L1733
	movq	%rcx, 24(%rsp)
	movl	%r8d, 20(%rsp)
	jmp	.L1732
	.p2align 4,,10
	.p2align 3
.L1793:
	testq	%r9, %r9
	je	.L1769
	movq	%r9, %rdi
	movq	%r9, 8(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	8(%rsp), %r9
	je	.L1814
.L1724:
	testq	%r15, %r15
	movq	%rax, 40(%r14)
	jle	.L1771
	movq	32(%rsp), %r10
	movl	16(%rsp), %r8d
	addq	%rax, %r9
	movq	24(%rsp), %rdx
	jmp	.L1727
	.p2align 4,,10
	.p2align 3
.L1726:
	movl	%ebp, %r12d
.L1727:
	movl	%r12d, %ecx
	leal	8(%r12), %esi
	leaq	8(%rdx), %rdi
	addq	%r10, %rcx
	cmpl	$47, %r12d
	cmova	%rdx, %rcx
	movl	%esi, %ebp
	cmovbe	%esi, %r8d
	movq	(%rcx), %rcx
	cmova	%r12d, %ebp
	cmova	%rdi, %rdx
	addq	$8, %rax
	movq	%rcx, -8(%rax)
	cmpq	%r9, %rax
	jne	.L1726
	movl	%r8d, 16(%rsp)
	movq	%rdx, 24(%rsp)
	jmp	.L1725
	.p2align 4,,10
	.p2align 3
.L1766:
	xorl	%eax, %eax
	jmp	.L1717
	.p2align 4,,10
	.p2align 3
.L1769:
	xorl	%eax, %eax
	jmp	.L1724
	.p2align 4,,10
	.p2align 3
.L1772:
	xorl	%eax, %eax
	jmp	.L1731
	.p2align 4,,10
	.p2align 3
.L1774:
	xorl	%eax, %eax
	jmp	.L1738
	.p2align 4,,10
	.p2align 3
.L1779:
	xorl	%eax, %eax
	jmp	.L1749
	.p2align 4,,10
	.p2align 3
.L1776:
	xorl	%eax, %eax
	jmp	.L1745
	.p2align 4,,10
	.p2align 3
.L1781:
	xorl	%eax, %eax
	jmp	.L1758
	.p2align 4,,10
	.p2align 3
.L1784:
	xorl	%eax, %eax
	jmp	.L1762
.L1783:
	movl	%ebx, %ebp
	.p2align 4,,5
	jmp	.L1759
.L1768:
	movl	%ebx, %r12d
	.p2align 4,,4
	jmp	.L1718
.L1778:
	movl	%ebp, %ebx
	.p2align 4,,4
	jmp	.L1746
.L1771:
	movl	%r12d, %ebp
	.p2align 4,,3
	jmp	.L1725
.L1788:
	movl	$555, %esi
	movl	$__func__.5335, %edi
	call	error_checking_malloc.part.0
.L1790:
	movl	$558, %esi
	movl	$__func__.5335, %edi
	call	error_checking_malloc.part.0
.L1798:
	movl	$570, %esi
	movl	$__func__.5335, %edi
	call	error_checking_malloc.part.0
.L1814:
	movl	$602, %esi
	movl	$__func__.5335, %edi
	call	error_checking_malloc.part.0
.L1813:
	movl	$618, %esi
	movl	$__func__.5335, %edi
	call	error_checking_malloc.part.0
.L1804:
	movl	$680, %esi
	movl	$__func__.5335, %edi
	call	error_checking_malloc.part.0
.L1802:
	movl	$673, %esi
	movl	$__func__.5335, %edi
	call	error_checking_malloc.part.0
.L1806:
	movl	$586, %esi
	movl	$__func__.5335, %edi
	call	error_checking_malloc.part.0
.L1807:
	movl	$651, %esi
	movl	$__func__.5335, %edi
	call	error_checking_malloc.part.0
.L1812:
	movl	$634, %esi
	movl	$__func__.5335, %edi
	call	error_checking_malloc.part.0
.L1809:
	movl	$656, %esi
	movl	$__func__.5335, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE150:
	.size	init_function_params, .-init_function_params
	.p2align 4,,15
	.globl	init_function_params_with_uninitialised_elements
	.type	init_function_params_with_uninitialised_elements, @function
init_function_params_with_uninitialised_elements:
.LFB151:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	testb	%al, %al
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	je	.L1816
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm1, 112(%rsp)
	movaps	%xmm2, 128(%rsp)
	movaps	%xmm3, 144(%rsp)
	movaps	%xmm4, 160(%rsp)
	movaps	%xmm5, 176(%rsp)
	movaps	%xmm6, 192(%rsp)
	movaps	%xmm7, 208(%rsp)
.L1816:
	leaq	288(%rsp), %rax
	movl	%edi, %ebx
	movl	$24, %edi
	movq	%rax, 24(%rsp)
	leaq	48(%rsp), %rax
	movl	$8, 16(%rsp)
	movl	$48, 20(%rsp)
	movq	%rax, 32(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r12
	je	.L1943
	testl	%ebx, %ebx
	jne	.L1944
	movq	$0, 16(%rax)
	xorl	%r14d, %r14d
.L1822:
	movq	%r14, (%r12)
	movq	$-1, 8(%r12)
	addq	$232, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	movq	%r12, %rax
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1944:
	.cfi_restore_state
	movl	$128, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r13
	je	.L1945
	movl	16(%rsp), %ecx
	movq	%rax, 16(%r12)
	cmpl	$48, %ecx
	jb	.L1946
	movq	24(%rsp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	(%rax), %r14
	movq	%rdx, 24(%rsp)
	testq	%r14, %r14
	movq	%r14, 0(%r13)
	je	.L1824
.L1825:
	leaq	8(%rdx), %rax
	movq	%rax, 24(%rsp)
.L1826:
	movq	%r14, %rdi
	movq	(%rdx), %rbx
	call	malloc
	testq	%rax, %rax
	je	.L1947
	testq	%rbx, %rbx
	movq	%rax, 8(%r13)
	movl	16(%rsp), %ecx
	jle	.L1829
	movq	32(%rsp), %rdi
	movq	24(%rsp), %r8
	xorl	%edx, %edx
	jmp	.L1833
	.p2align 4,,10
	.p2align 3
.L1949:
	movl	%ecx, %esi
	addq	$1, %rdx
	addl	$8, %ecx
	addq	%rdi, %rsi
	cmpq	%rbx, %rdx
	movl	(%rsi), %esi
	movb	%sil, (%rax)
	je	.L1948
.L1832:
	movq	16(%r12), %rax
	movq	8(%rax), %rax
.L1833:
	addq	%rdx, %rax
	cmpl	$47, %ecx
	jbe	.L1949
	movq	%r8, %rsi
	addq	$1, %rdx
	addq	$8, %r8
	movl	(%rsi), %esi
	cmpq	%rbx, %rdx
	movb	%sil, (%rax)
	jne	.L1832
.L1948:
	cmpl	$47, %ecx
	movl	%ecx, 16(%rsp)
	movq	%r8, 24(%rsp)
	movq	16(%r12), %r13
	jbe	.L1950
.L1834:
	movq	24(%rsp), %rdx
	movl	%ecx, %r8d
	movq	%rdx, %rax
	leaq	8(%rdx), %rdx
	movq	(%rax), %rax
	movq	%rdx, 24(%rsp)
	leaq	0(,%rax,4), %rdi
	movq	%rax, 16(%r13)
	addq	%rdi, %r14
	testq	%rax, %rax
	je	.L1836
.L1837:
	leaq	8(%rdx), %rax
	movl	%r8d, %ebx
	movq	%rax, 24(%rsp)
.L1838:
	testq	%rdi, %rdi
	movq	(%rdx), %rbp
	je	.L1907
	call	malloc
	testq	%rax, %rax
	je	.L1951
.L1839:
	testq	%rbp, %rbp
	movq	%rax, 24(%r13)
	jle	.L1909
	movq	32(%rsp), %r11
	movl	16(%rsp), %r9d
	leaq	(%rax,%rbp,4), %r10
	movq	24(%rsp), %rdx
	jmp	.L1842
	.p2align 4,,10
	.p2align 3
.L1841:
	movl	%r8d, %ebx
.L1842:
	movl	%ebx, %ecx
	leal	8(%rbx), %esi
	leaq	8(%rdx), %rdi
	addq	%r11, %rcx
	cmpl	$47, %ebx
	cmova	%rdx, %rcx
	movl	%esi, %r8d
	cmovbe	%esi, %r9d
	movl	(%rcx), %ecx
	cmova	%ebx, %r8d
	cmova	%rdi, %rdx
	addq	$4, %rax
	movl	%ecx, -4(%rax)
	cmpq	%r10, %rax
	jne	.L1841
	cmpl	$47, %r8d
	movl	%r9d, 16(%rsp)
	movq	%rdx, 24(%rsp)
	jbe	.L1952
.L1843:
	movq	24(%rsp), %rdx
	movl	%r8d, %r9d
	movq	%rdx, %rax
	leaq	8(%rdx), %rdx
	movq	(%rax), %rax
	movq	%rdx, 24(%rsp)
	leaq	0(,%rax,8), %rdi
	movq	%rax, 32(%r13)
	addq	%rdi, %r14
	testq	%rax, %rax
	je	.L1845
.L1846:
	leaq	8(%rdx), %rax
	movl	%r9d, %ebx
	movq	%rax, 24(%rsp)
.L1847:
	testq	%rdi, %rdi
	movq	(%rdx), %rbp
	je	.L1911
	call	malloc
	testq	%rax, %rax
	je	.L1953
.L1848:
	testq	%rbp, %rbp
	movq	%rax, 40(%r13)
	jle	.L1913
	movq	32(%rsp), %r11
	movl	16(%rsp), %edi
	leaq	(%rax,%rbp,8), %r10
	movq	24(%rsp), %rdx
	jmp	.L1851
	.p2align 4,,10
	.p2align 3
.L1850:
	movl	%r9d, %ebx
.L1851:
	movl	%ebx, %ecx
	leal	8(%rbx), %esi
	leaq	8(%rdx), %r8
	addq	%r11, %rcx
	cmpl	$47, %ebx
	cmova	%rdx, %rcx
	movl	%esi, %r9d
	cmovbe	%esi, %edi
	movq	(%rcx), %rcx
	cmova	%ebx, %r9d
	cmova	%r8, %rdx
	addq	$8, %rax
	movq	%rcx, -8(%rax)
	cmpq	%r10, %rax
	jne	.L1850
	cmpl	$47, %r9d
	movl	%edi, 16(%rsp)
	movq	%rdx, 24(%rsp)
	jbe	.L1954
.L1852:
	movq	24(%rsp), %rdx
	movl	%r9d, %ebx
	movq	%rdx, %rax
	leaq	8(%rdx), %rdx
	movq	(%rax), %rax
	movq	%rdx, 24(%rsp)
	leaq	0(,%rax,4), %rdi
	movq	%rax, 48(%r13)
	addq	%rdi, %r14
	testq	%rax, %rax
	je	.L1854
.L1855:
	leaq	8(%rdx), %rax
	movq	%rax, 24(%rsp)
.L1856:
	testq	%rdi, %rdi
	movq	(%rdx), %r15
	je	.L1915
	call	malloc
	testq	%rax, %rax
	je	.L1955
	movq	%rax, %rsi
.L1857:
	testq	%r15, %r15
	movq	%rsi, 56(%r13)
	jle	.L1858
	movl	20(%rsp), %edx
	movq	32(%rsp), %rbp
	leaq	(%rsi,%r15,4), %r11
	movq	24(%rsp), %rcx
	movl	%edx, %r8d
	jmp	.L1860
	.p2align 4,,10
	.p2align 3
.L1859:
	movl	%r10d, %edx
.L1860:
	movl	%edx, %eax
	leal	16(%rdx), %edi
	leaq	8(%rcx), %r9
	addq	%rbp, %rax
	cmpl	$175, %edx
	cmova	%rcx, %rax
	movl	%edi, %r10d
	cmova	%r9, %rcx
	movsd	(%rax), %xmm1
	cmova	%edx, %r10d
	cmovbe	%edi, %r8d
	addq	$4, %rsi
	cvtpd2ps	%xmm1, %xmm1
	movss	%xmm1, -4(%rsi)
	cmpq	%r11, %rsi
	jne	.L1859
	cmpl	$47, %ebx
	movq	%rcx, 24(%rsp)
	movl	%r8d, 20(%rsp)
	jbe	.L1956
.L1861:
	movq	24(%rsp), %rdx
	movl	%ebx, %ebp
	movq	%rdx, %rax
	leaq	8(%rdx), %rdx
	movq	(%rax), %rax
	movq	%rdx, 24(%rsp)
	leaq	0(,%rax,8), %rdi
	movq	%rax, 64(%r13)
	addq	%rdi, %r14
	testq	%rax, %rax
	jne	.L1864
.L1863:
	movq	$0, 72(%r13)
.L1867:
	cmpl	$47, %ebp
	ja	.L1870
.L1961:
	movl	%ebp, %eax
	addq	32(%rsp), %rax
	addl	$8, %ebp
	movl	%ebp, 16(%rsp)
.L1871:
	movq	(%rax), %r15
	leaq	0(,%r15,8), %r8
	movq	%r15, 80(%r13)
	addq	%r8, %r14
	testq	%r15, %r15
	jne	.L1957
	movl	16(%rsp), %ebx
	movq	$0, 88(%r13)
	movq	$0, 96(%r13)
.L1885:
	cmpl	$47, %ebx
	ja	.L1888
	movl	%ebx, %eax
	addq	32(%rsp), %rax
	addl	$8, %ebx
	movl	%ebx, 16(%rsp)
	movq	(%rax), %r15
	testq	%r15, %r15
	movq	%r15, 104(%r13)
	jne	.L1958
.L1890:
	movq	$0, 112(%r13)
	movq	$0, 120(%r13)
	jmp	.L1822
	.p2align 4,,10
	.p2align 3
.L1946:
	movq	32(%rsp), %rdx
	movl	%ecx, %esi
	leal	8(%rcx), %eax
	movl	%eax, 16(%rsp)
	movq	(%rdx,%rsi), %r14
	testq	%r14, %r14
	movq	%r14, 0(%r13)
	je	.L1959
	cmpl	$47, %eax
	jbe	.L1937
	movq	24(%rsp), %rdx
	jmp	.L1825
	.p2align 4,,10
	.p2align 3
.L1959:
	movl	%eax, %ecx
.L1824:
	movq	$0, 8(%r13)
.L1829:
	cmpl	$47, %ecx
	ja	.L1834
.L1950:
	movq	32(%rsp), %rdx
	movl	%ecx, %eax
	leal	8(%rcx), %r8d
	movl	%r8d, 16(%rsp)
	movq	(%rdx,%rax), %rax
	leaq	0(,%rax,4), %rdi
	movq	%rax, 16(%r13)
	addq	%rdi, %r14
	testq	%rax, %rax
	jne	.L1835
.L1836:
	movq	$0, 24(%r13)
.L1840:
	cmpl	$47, %r8d
	ja	.L1843
.L1952:
	movq	32(%rsp), %rdx
	movl	%r8d, %eax
	leal	8(%r8), %r9d
	movl	%r9d, 16(%rsp)
	movq	(%rdx,%rax), %rax
	leaq	0(,%rax,8), %rdi
	movq	%rax, 32(%r13)
	addq	%rdi, %r14
	testq	%rax, %rax
	jne	.L1844
.L1845:
	movq	$0, 40(%r13)
.L1849:
	cmpl	$47, %r9d
	ja	.L1852
.L1954:
	movq	32(%rsp), %rdx
	movl	%r9d, %eax
	leal	8(%r9), %ebx
	movl	%ebx, 16(%rsp)
	movq	(%rdx,%rax), %rax
	leaq	0(,%rax,4), %rdi
	movq	%rax, 48(%r13)
	addq	%rdi, %r14
	testq	%rax, %rax
	jne	.L1853
.L1854:
	movq	$0, 56(%r13)
.L1858:
	cmpl	$47, %ebx
	ja	.L1861
.L1956:
	movq	32(%rsp), %rdx
	movl	%ebx, %eax
	leal	8(%rbx), %ebp
	movl	%ebp, 16(%rsp)
	movq	(%rdx,%rax), %rax
	leaq	0(,%rax,8), %rdi
	movq	%rax, 64(%r13)
	addq	%rdi, %r14
	testq	%rax, %rax
	je	.L1863
	cmpl	$47, %ebp
	jbe	.L1941
	movq	24(%rsp), %rdx
.L1864:
	leaq	8(%rdx), %rax
	movq	%rax, 24(%rsp)
.L1865:
	testq	%rdi, %rdi
	movq	(%rdx), %r15
	je	.L1918
	call	malloc
	testq	%rax, %rax
	je	.L1960
	movq	%rax, %rsi
.L1866:
	testq	%r15, %r15
	movq	%rsi, 72(%r13)
	jle	.L1867
	movl	20(%rsp), %edx
	movq	32(%rsp), %rbx
	leaq	(%rsi,%r15,8), %r11
	movq	24(%rsp), %rcx
	movl	%edx, %r8d
	jmp	.L1869
	.p2align 4,,10
	.p2align 3
.L1868:
	movl	%r10d, %edx
.L1869:
	movl	%edx, %eax
	leal	16(%rdx), %edi
	leaq	8(%rcx), %r9
	addq	%rbx, %rax
	cmpl	$175, %edx
	cmova	%rcx, %rax
	movl	%edi, %r10d
	cmova	%r9, %rcx
	movsd	(%rax), %xmm0
	cmova	%edx, %r10d
	cmovbe	%edi, %r8d
	addq	$8, %rsi
	movsd	%xmm0, -8(%rsi)
	cmpq	%r11, %rsi
	jne	.L1868
	cmpl	$47, %ebp
	movq	%rcx, 24(%rsp)
	movl	%r8d, 20(%rsp)
	jbe	.L1961
.L1870:
	movq	24(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	jmp	.L1871
	.p2align 4,,10
	.p2align 3
.L1853:
	cmpl	$47, %ebx
	jbe	.L1940
	movq	24(%rsp), %rdx
	jmp	.L1855
	.p2align 4,,10
	.p2align 3
.L1844:
	cmpl	$47, %r9d
	jbe	.L1939
	movq	24(%rsp), %rdx
	jmp	.L1846
	.p2align 4,,10
	.p2align 3
.L1835:
	cmpl	$47, %r8d
	jbe	.L1938
	movq	24(%rsp), %rdx
	jmp	.L1837
	.p2align 4,,10
	.p2align 3
.L1888:
	movq	24(%rsp), %rax
	movq	(%rax), %r15
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	testq	%r15, %r15
	movq	%r15, 104(%r13)
	je	.L1890
.L1958:
	leaq	0(,%r15,8), %r8
	testq	%r8, %r8
	je	.L1925
	movq	%r8, %rdi
	movq	%r8, 8(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	8(%rsp), %r8
	je	.L1962
.L1891:
	testq	%r15, %r15
	movq	%rax, 112(%r13)
	jle	.L1927
	movq	32(%rsp), %r10
	movl	16(%rsp), %edi
	leaq	(%rax,%r8), %r9
	movq	24(%rsp), %rdx
	jmp	.L1894
	.p2align 4,,10
	.p2align 3
.L1963:
	movl	%ebp, %ebx
.L1894:
	movl	%ebx, %ecx
	leal	8(%rbx), %esi
	leaq	8(%rdx), %r11
	addq	%r10, %rcx
	cmpl	$47, %ebx
	cmova	%rdx, %rcx
	movl	%esi, %ebp
	cmovbe	%esi, %edi
	movq	(%rcx), %rcx
	cmova	%ebx, %ebp
	cmova	%r11, %rdx
	addq	$8, %rax
	movq	%rcx, -8(%rax)
	addq	%rcx, %r14
	cmpq	%r9, %rax
	jne	.L1963
	movl	%edi, 16(%rsp)
	movq	%rdx, 24(%rsp)
.L1892:
	cmpl	$47, %ebp
	ja	.L1895
	movl	%ebp, %eax
	addq	32(%rsp), %rax
	addl	$8, %ebp
	movl	%ebp, 16(%rsp)
.L1896:
	testq	%r8, %r8
	movq	(%rax), %rbx
	je	.L1928
	movq	%r8, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L1964
.L1897:
	testq	%rbx, %rbx
	movq	%rax, 120(%r13)
	jle	.L1903
	movq	32(%rsp), %r8
	movl	16(%rsp), %edi
	xorl	%edx, %edx
	movq	24(%rsp), %rsi
	jmp	.L1904
	.p2align 4,,10
	.p2align 3
.L1966:
	movl	%ebp, %ecx
	addq	$1, %rdx
	addl	$8, %ebp
	addq	%r8, %rcx
	cmpq	%rbx, %rdx
	movl	%ebp, %edi
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	je	.L1965
.L1902:
	movq	16(%r12), %rax
	movq	120(%rax), %rax
.L1904:
	cmpl	$47, %ebp
	leaq	(%rax,%rdx,8), %rax
	jbe	.L1966
	movq	%rsi, %rcx
	addq	$1, %rdx
	addq	$8, %rsi
	movq	(%rcx), %rcx
	cmpq	%rbx, %rdx
	movq	%rcx, (%rax)
	jne	.L1902
.L1965:
	movl	%edi, 16(%rsp)
	movq	%rsi, 24(%rsp)
.L1903:
	cmpq	%rbx, %r15
	leaq	0(,%rbx,8), %rax
	jle	.L1822
	.p2align 4,,10
	.p2align 3
.L1935:
	movq	16(%r12), %rdx
	addq	$1, %rbx
	movq	120(%rdx), %rdx
	movq	$0, (%rdx,%rax)
	addq	$8, %rax
	cmpq	%r15, %rbx
	jne	.L1935
	jmp	.L1822
	.p2align 4,,10
	.p2align 3
.L1938:
	leal	16(%rcx), %ebx
	addq	%r8, %rdx
	movl	%ebx, 16(%rsp)
	jmp	.L1838
	.p2align 4,,10
	.p2align 3
.L1939:
	leal	16(%r8), %ebx
	addq	%r9, %rdx
	movl	%ebx, 16(%rsp)
	jmp	.L1847
	.p2align 4,,10
	.p2align 3
.L1940:
	addq	%rbx, %rdx
	leal	16(%r9), %ebx
	movl	%ebx, 16(%rsp)
	jmp	.L1856
	.p2align 4,,10
	.p2align 3
.L1941:
	addq	%rbp, %rdx
	leal	16(%rbx), %ebp
	movl	%ebp, 16(%rsp)
	jmp	.L1865
	.p2align 4,,10
	.p2align 3
.L1937:
	addl	$16, %ecx
	addq	%rax, %rdx
	movl	%ecx, 16(%rsp)
	jmp	.L1826
	.p2align 4,,10
	.p2align 3
.L1957:
	testq	%r8, %r8
	je	.L1920
	movq	%r8, %rdi
	movq	%r8, 8(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	8(%rsp), %r8
	je	.L1967
.L1873:
	testq	%r15, %r15
	movq	%rax, 88(%r13)
	jle	.L1922
	movq	32(%rsp), %r10
	movl	16(%rsp), %edi
	leaq	(%rax,%r8), %r9
	movq	24(%rsp), %rdx
	jmp	.L1876
	.p2align 4,,10
	.p2align 3
.L1968:
	movl	%ebx, %ebp
.L1876:
	movl	%ebp, %ecx
	leal	8(%rbp), %esi
	leaq	8(%rdx), %r11
	addq	%r10, %rcx
	cmpl	$47, %ebp
	cmova	%rdx, %rcx
	movl	%esi, %ebx
	cmovbe	%esi, %edi
	movq	(%rcx), %rcx
	cmova	%ebp, %ebx
	cmova	%r11, %rdx
	addq	$8, %rax
	movq	%rcx, -8(%rax)
	cmpq	%r9, %rax
	jne	.L1968
	movl	%edi, 16(%rsp)
	movq	%rdx, 24(%rsp)
.L1874:
	cmpl	$47, %ebx
	ja	.L1877
	movl	%ebx, %eax
	addq	32(%rsp), %rax
	addl	$8, %ebx
	movl	%ebx, 16(%rsp)
.L1878:
	testq	%r8, %r8
	movq	(%rax), %rbp
	je	.L1923
	movq	%r8, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L1969
.L1879:
	testq	%rbp, %rbp
	movq	%rax, 96(%r13)
	jle	.L1880
	movq	32(%rsp), %r8
	movl	16(%rsp), %edi
	xorl	%edx, %edx
	movq	24(%rsp), %rsi
	jmp	.L1884
	.p2align 4,,10
	.p2align 3
.L1970:
	movl	%ebx, %ecx
	addq	$1, %rdx
	addl	$8, %ebx
	addq	%r8, %rcx
	cmpq	%rbp, %rdx
	movl	%ebx, %edi
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	je	.L1883
.L1971:
	movq	16(%r12), %rax
	movq	96(%rax), %rax
.L1884:
	cmpl	$47, %ebx
	leaq	(%rax,%rdx,8), %rax
	jbe	.L1970
	movq	%rsi, %rcx
	addq	$1, %rdx
	addq	$8, %rsi
	movq	(%rcx), %rcx
	cmpq	%rbp, %rdx
	movq	%rcx, (%rax)
	jne	.L1971
.L1883:
	movq	16(%r12), %r13
	movl	%edi, 16(%rsp)
	movq	%rsi, 24(%rsp)
.L1880:
	cmpq	%rbp, %r15
	jle	.L1885
	leaq	0(,%rbp,8), %rax
	.p2align 4,,10
	.p2align 3
.L1887:
	movq	96(%r13), %rdx
	addq	$1, %rbp
	movq	$0, (%rdx,%rax)
	addq	$8, %rax
	cmpq	%r15, %rbp
	movq	16(%r12), %r13
	jne	.L1887
	jmp	.L1885
	.p2align 4,,10
	.p2align 3
.L1877:
	movq	24(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	jmp	.L1878
	.p2align 4,,10
	.p2align 3
.L1895:
	movq	24(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	jmp	.L1896
	.p2align 4,,10
	.p2align 3
.L1911:
	xorl	%eax, %eax
	jmp	.L1848
	.p2align 4,,10
	.p2align 3
.L1907:
	xorl	%eax, %eax
	jmp	.L1839
	.p2align 4,,10
	.p2align 3
.L1918:
	xorl	%esi, %esi
	jmp	.L1866
	.p2align 4,,10
	.p2align 3
.L1915:
	xorl	%esi, %esi
	jmp	.L1857
	.p2align 4,,10
	.p2align 3
.L1925:
	xorl	%eax, %eax
	jmp	.L1891
	.p2align 4,,10
	.p2align 3
.L1923:
	xorl	%eax, %eax
	jmp	.L1879
	.p2align 4,,10
	.p2align 3
.L1920:
	xorl	%eax, %eax
	jmp	.L1873
	.p2align 4,,10
	.p2align 3
.L1928:
	xorl	%eax, %eax
	jmp	.L1897
.L1913:
	movl	%ebx, %r9d
	.p2align 4,,4
	jmp	.L1849
.L1909:
	movl	%ebx, %r8d
	.p2align 4,,3
	jmp	.L1840
.L1922:
	movl	%ebp, %ebx
	.p2align 4,,3
	jmp	.L1874
.L1927:
	movl	%ebx, %ebp
	.p2align 4,,4
	jmp	.L1892
.L1943:
	movl	$736, %esi
	movl	$__func__.5373, %edi
	call	error_checking_malloc.part.0
.L1951:
	movl	$769, %esi
	movl	$__func__.5373, %edi
	call	error_checking_malloc.part.0
.L1960:
	movl	$820, %esi
	movl	$__func__.5373, %edi
	call	error_checking_malloc.part.0
.L1962:
	movl	$864, %esi
	movl	$__func__.5373, %edi
	call	error_checking_malloc.part.0
.L1969:
	movl	$843, %esi
	movl	$__func__.5373, %edi
	call	error_checking_malloc.part.0
.L1955:
	movl	$803, %esi
	movl	$__func__.5373, %edi
	call	error_checking_malloc.part.0
.L1945:
	movl	$739, %esi
	movl	$__func__.5373, %edi
	call	error_checking_malloc.part.0
.L1953:
	movl	$786, %esi
	movl	$__func__.5373, %edi
	call	error_checking_malloc.part.0
.L1967:
	movl	$836, %esi
	movl	$__func__.5373, %edi
	call	error_checking_malloc.part.0
.L1964:
	movl	$872, %esi
	movl	$__func__.5373, %edi
	call	error_checking_malloc.part.0
.L1947:
	movl	$752, %esi
	movl	$__func__.5373, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE151:
	.size	init_function_params_with_uninitialised_elements, .-init_function_params_with_uninitialised_elements
	.section	.rodata.str1.1
.LC78:
	.string	"No parameters? Strange..."
	.text
	.p2align 4,,15
	.globl	put_fun_params_into_secure_stack
	.type	put_fun_params_into_secure_stack, @function
put_fun_params_into_secure_stack:
.LFB152:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13
	movl	$24, %edi
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L2113
	cmpq	$0, 16(%r13)
	movq	0(%r13), %rax
	movq	$0, 8(%rbx)
	movq	%rax, (%rbx)
	je	.L1974
	movl	$128, %edi
	call	malloc
	testq	%rax, %rax
	je	.L2114
	movq	%rax, 16(%rbx)
.L1976:
	movq	16(%r13), %rbp
	testq	%rbp, %rbp
	je	.L2093
	movq	0(%rbp), %rdi
	movq	16(%rbx), %r14
	movq	last_unused_stack_memory(%rip), %rcx
	testq	%rdi, %rdi
	movq	%rdi, (%r14)
	je	.L1978
	movq	%rdi, %rax
	movabsq	$6148914691236517206, %rdx
	imulq	%rdx
	movq	%rdi, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	cmpq	%rax, %rdi
	setg	%al
	movzbl	%al, %eax
	addq	%rax, %rdx
	movq	entire_stack_memory_chunk(%rip), %rax
	addq	total_stack_bytes_allocated(%rip), %rax
	leaq	0(,%rdx,8), %rsi
	cmpq	%rax, last_unused_memory(%rip)
	leaq	(%rcx,%rsi), %r9
	movq	%r9, last_unused_stack_memory(%rip)
	jnb	.L2115
	movq	%rdx, %rsi
	addq	8(%rbx), %rsi
	testq	%rcx, %rcx
	movq	%rsi, 8(%rbx)
	movq	%rcx, 8(%r14)
	je	.L2056
	testq	%rdi, %rdi
	movq	8(%rbp), %r8
	jle	.L2056
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	jmp	.L1986
	.p2align 4,,10
	.p2align 3
.L2117:
	cmpq	%rdx, %rdi
	jle	.L1983
	movzbl	(%r8,%rdx), %eax
	movb	%al, (%rcx,%rsi)
	leaq	1(%rdx), %rax
	cmpq	%rax, %rdi
	jle	.L2058
	movzbl	1(%r8,%rdx), %eax
	movb	%al, 1(%rcx,%rsi)
	leaq	2(%rdx), %rax
	cmpq	%rax, %rdi
	jle	.L2058
	movzbl	2(%r8,%rdx), %eax
	addq	$3, %rdx
	movb	%al, 2(%rcx,%rsi)
.L1983:
	addq	$3, %rsi
	cmpq	%rdx, %rdi
	movl	$1, %eax
	jle	.L2116
.L1986:
	testl	%eax, %eax
	je	.L2117
	addq	$5, %rsi
	xorl	%eax, %eax
	cmpq	%rdx, %rdi
	jg	.L1986
.L2116:
	movq	16(%rbx), %r14
	movq	16(%r13), %rbp
	movq	8(%rbx), %rsi
	movq	last_unused_stack_memory(%rip), %rcx
	jmp	.L1981
	.p2align 4,,10
	.p2align 3
.L2093:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L2115:
	.cfi_restore_state
	movq	%r9, %rcx
	subq	%rsi, %rcx
	movq	%rcx, last_unused_stack_memory(%rip)
.L1978:
	movq	8(%rbx), %rsi
	movq	$0, 8(%r14)
.L1981:
	movq	16(%rbp), %rdi
	movq	%rdi, 16(%r14)
	salq	$2, %rdi
	testq	%rdi, %rdi
	je	.L1987
	movq	%rdi, %rax
	movabsq	$6148914691236517206, %rdx
	imulq	%rdx
	movq	%rdi, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	cmpq	%rax, %rdi
	setg	%al
	movzbl	%al, %eax
	addq	%rax, %rdx
	movq	entire_stack_memory_chunk(%rip), %rax
	addq	total_stack_bytes_allocated(%rip), %rax
	leaq	0(,%rdx,8), %r8
	cmpq	%rax, last_unused_memory(%rip)
	leaq	(%rcx,%r8), %r9
	movq	%r9, last_unused_stack_memory(%rip)
	jnb	.L2118
	addq	%rdx, %rsi
	testq	%rcx, %rcx
	movq	%rsi, 8(%rbx)
	movq	%rcx, 24(%r14)
	je	.L2060
	testq	%rdi, %rdi
	movq	24(%rbp), %r8
	jle	.L2060
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	jmp	.L1995
	.p2align 4,,10
	.p2align 3
.L2120:
	cmpq	%rdx, %rdi
	jle	.L1992
	movzbl	(%r8,%rdx), %eax
	movb	%al, (%rcx,%rsi)
	leaq	1(%rdx), %rax
	cmpq	%rax, %rdi
	jle	.L2062
	movzbl	1(%r8,%rdx), %eax
	movb	%al, 1(%rcx,%rsi)
	leaq	2(%rdx), %rax
	cmpq	%rax, %rdi
	jle	.L2062
	movzbl	2(%r8,%rdx), %eax
	addq	$3, %rdx
	movb	%al, 2(%rcx,%rsi)
.L1992:
	addq	$3, %rsi
	cmpq	%rdx, %rdi
	movl	$1, %eax
	jle	.L2119
.L1995:
	testl	%eax, %eax
	je	.L2120
	addq	$5, %rsi
	xorl	%eax, %eax
	cmpq	%rdx, %rdi
	jg	.L1995
.L2119:
	movq	16(%rbx), %r14
	movq	16(%r13), %rbp
	movq	8(%rbx), %rsi
	movq	last_unused_stack_memory(%rip), %rcx
	jmp	.L1990
.L2118:
	movq	%r9, %rcx
	subq	%r8, %rcx
	movq	%rcx, last_unused_stack_memory(%rip)
.L1987:
	movq	$0, 24(%r14)
.L1990:
	movq	32(%rbp), %rdi
	movq	%rdi, 32(%r14)
	salq	$3, %rdi
	testq	%rdi, %rdi
	je	.L1996
	movq	%rdi, %rax
	movabsq	$6148914691236517206, %rdx
	imulq	%rdx
	movq	%rdi, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	cmpq	%rax, %rdi
	setg	%al
	movzbl	%al, %eax
	addq	%rax, %rdx
	movq	entire_stack_memory_chunk(%rip), %rax
	addq	total_stack_bytes_allocated(%rip), %rax
	leaq	0(,%rdx,8), %r8
	cmpq	%rax, last_unused_memory(%rip)
	leaq	(%rcx,%r8), %r9
	movq	%r9, last_unused_stack_memory(%rip)
	jnb	.L2121
	addq	%rdx, %rsi
	testq	%rcx, %rcx
	movq	%rsi, 8(%rbx)
	movq	%rcx, 40(%r14)
	je	.L2064
	testq	%rdi, %rdi
	movq	40(%rbp), %r8
	jle	.L2064
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	jmp	.L2004
	.p2align 4,,10
	.p2align 3
.L2123:
	cmpq	%rdx, %rdi
	jle	.L2001
	movzbl	(%r8,%rdx), %eax
	movb	%al, (%rcx,%rsi)
	leaq	1(%rdx), %rax
	cmpq	%rax, %rdi
	jle	.L2066
	movzbl	1(%r8,%rdx), %eax
	movb	%al, 1(%rcx,%rsi)
	leaq	2(%rdx), %rax
	cmpq	%rax, %rdi
	jle	.L2066
	movzbl	2(%r8,%rdx), %eax
	addq	$3, %rdx
	movb	%al, 2(%rcx,%rsi)
.L2001:
	addq	$3, %rsi
	cmpq	%rdx, %rdi
	movl	$1, %eax
	jle	.L2122
.L2004:
	testl	%eax, %eax
	je	.L2123
	addq	$5, %rsi
	xorl	%eax, %eax
	cmpq	%rdx, %rdi
	jg	.L2004
.L2122:
	movq	16(%rbx), %r14
	movq	16(%r13), %rbp
	movq	8(%rbx), %rsi
	movq	last_unused_stack_memory(%rip), %rcx
.L1999:
	movq	48(%rbp), %rdi
	movq	%rdi, 48(%r14)
	salq	$2, %rdi
	testq	%rdi, %rdi
	je	.L2005
	movq	%rdi, %rax
	movabsq	$6148914691236517206, %rdx
	imulq	%rdx
	movq	%rdi, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	cmpq	%rax, %rdi
	setg	%al
	movzbl	%al, %eax
	addq	%rax, %rdx
	movq	entire_stack_memory_chunk(%rip), %rax
	addq	total_stack_bytes_allocated(%rip), %rax
	leaq	0(,%rdx,8), %r8
	cmpq	%rax, last_unused_memory(%rip)
	leaq	(%rcx,%r8), %r9
	movq	%r9, last_unused_stack_memory(%rip)
	jnb	.L2124
	addq	%rdx, %rsi
	testq	%rcx, %rcx
	movq	%rsi, 8(%rbx)
	movq	%rcx, 56(%r14)
	je	.L2068
	testq	%rdi, %rdi
	movq	56(%rbp), %r8
	jle	.L2068
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	jmp	.L2013
	.p2align 4,,10
	.p2align 3
.L2126:
	cmpq	%rdx, %rdi
	jle	.L2010
	movzbl	(%r8,%rdx), %eax
	movb	%al, (%rcx,%rsi)
	leaq	1(%rdx), %rax
	cmpq	%rax, %rdi
	jle	.L2070
	movzbl	1(%r8,%rdx), %eax
	movb	%al, 1(%rcx,%rsi)
	leaq	2(%rdx), %rax
	cmpq	%rax, %rdi
	jle	.L2070
	movzbl	2(%r8,%rdx), %eax
	addq	$3, %rdx
	movb	%al, 2(%rcx,%rsi)
.L2010:
	addq	$3, %rsi
	cmpq	%rdx, %rdi
	movl	$1, %eax
	jle	.L2125
.L2013:
	testl	%eax, %eax
	je	.L2126
	addq	$5, %rsi
	xorl	%eax, %eax
	cmpq	%rdx, %rdi
	jg	.L2013
.L2125:
	movq	16(%rbx), %r14
	movq	16(%r13), %rbp
	movq	8(%rbx), %rsi
	movq	last_unused_stack_memory(%rip), %rcx
.L2008:
	movq	64(%rbp), %rdi
	movq	%rdi, 64(%r14)
	salq	$3, %rdi
	testq	%rdi, %rdi
	je	.L2014
	movq	%rdi, %rax
	movabsq	$6148914691236517206, %rdx
	imulq	%rdx
	movq	%rdi, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	cmpq	%rax, %rdi
	setg	%al
	movzbl	%al, %eax
	addq	%rax, %rdx
	movq	entire_stack_memory_chunk(%rip), %rax
	addq	total_stack_bytes_allocated(%rip), %rax
	leaq	0(,%rdx,8), %r8
	cmpq	%rax, last_unused_memory(%rip)
	leaq	(%rcx,%r8), %r9
	movq	%r9, last_unused_stack_memory(%rip)
	jnb	.L2127
	addq	%rdx, %rsi
	testq	%rcx, %rcx
	movq	%rsi, 8(%rbx)
	movq	%rcx, 72(%r14)
	je	.L2072
	testq	%rdi, %rdi
	movq	72(%rbp), %r8
	jle	.L2072
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	jmp	.L2022
	.p2align 4,,10
	.p2align 3
.L2129:
	cmpq	%rdx, %rdi
	jle	.L2019
	movzbl	(%r8,%rdx), %eax
	movb	%al, (%rcx,%rsi)
	leaq	1(%rdx), %rax
	cmpq	%rax, %rdi
	jle	.L2074
	movzbl	1(%r8,%rdx), %eax
	movb	%al, 1(%rcx,%rsi)
	leaq	2(%rdx), %rax
	cmpq	%rax, %rdi
	jle	.L2074
	movzbl	2(%r8,%rdx), %eax
	addq	$3, %rdx
	movb	%al, 2(%rcx,%rsi)
.L2019:
	addq	$3, %rsi
	cmpq	%rdx, %rdi
	movl	$1, %eax
	jle	.L2128
.L2022:
	testl	%eax, %eax
	je	.L2129
	addq	$5, %rsi
	xorl	%eax, %eax
	cmpq	%rdx, %rdi
	jg	.L2022
.L2128:
	movq	16(%rbx), %r14
	movq	16(%r13), %rbp
	movq	8(%rbx), %rsi
	movq	last_unused_stack_memory(%rip), %rcx
.L2017:
	movq	80(%rbp), %r12
	leaq	0(,%r12,8), %rdi
	movq	%r12, 80(%r14)
	testq	%rdi, %rdi
	je	.L2023
	movq	%rdi, %rax
	movabsq	$6148914691236517206, %rdx
	imulq	%rdx
	movq	%rdi, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	cmpq	%rax, %rdi
	setg	%al
	movzbl	%al, %eax
	addq	%rax, %rdx
	movq	entire_stack_memory_chunk(%rip), %rax
	addq	total_stack_bytes_allocated(%rip), %rax
	leaq	0(,%rdx,8), %r8
	cmpq	%rax, last_unused_memory(%rip)
	leaq	(%rcx,%r8), %r9
	movq	%r9, last_unused_stack_memory(%rip)
	jnb	.L2130
	addq	%rsi, %rdx
	testq	%rcx, %rcx
	movq	%rdx, 8(%rbx)
	movq	%rcx, 96(%r14)
	je	.L2053
	testq	%rdi, %rdi
	movq	96(%rbp), %r8
	jle	.L2053
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	jmp	.L2031
	.p2align 4,,10
	.p2align 3
.L2132:
	cmpq	%rdx, %rdi
	jle	.L2028
	movzbl	(%r8,%rdx), %eax
	movb	%al, (%rcx,%rsi)
	leaq	1(%rdx), %rax
	cmpq	%rax, %rdi
	jle	.L2076
	movzbl	1(%r8,%rdx), %eax
	movb	%al, 1(%rcx,%rsi)
	leaq	2(%rdx), %rax
	cmpq	%rax, %rdi
	jle	.L2076
	movzbl	2(%r8,%rdx), %eax
	addq	$3, %rdx
	movb	%al, 2(%rcx,%rsi)
.L2028:
	addq	$3, %rsi
	cmpq	%rdx, %rdi
	movl	$1, %eax
	jle	.L2131
.L2031:
	testl	%eax, %eax
	je	.L2132
	addq	$5, %rsi
	xorl	%eax, %eax
	cmpq	%rdx, %rdi
	jg	.L2031
.L2131:
	movq	16(%rbx), %r14
.L2053:
	call	malloc
	testq	%rax, %rax
	je	.L2133
	movq	16(%r13), %rbp
.L2032:
	testq	%r12, %r12
	movq	%rax, 88(%r14)
	jle	.L2034
	movq	88(%rbp), %rsi
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L2035:
	movq	(%rsi,%rdx,8), %rcx
	movq	%rcx, (%rax,%rdx,8)
	addq	$1, %rdx
	cmpq	%r12, %rdx
	jne	.L2035
.L2034:
	movq	104(%rbp), %r12
	leaq	0(,%r12,8), %r8
	movq	%r12, 104(%r14)
	testq	%r8, %r8
	je	.L2078
	movq	%r8, %rdi
	movq	%r8, 8(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	8(%rsp), %r8
	je	.L2134
	movq	%rax, %r15
.L2036:
	testq	%r12, %r12
	movq	%r15, 112(%r14)
	jle	.L2040
	movq	112(%rbp), %rax
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L2041:
	movq	(%rax,%rdx,8), %rcx
	movq	%rcx, (%r15,%rdx,8)
	addq	$1, %rdx
	cmpq	%r12, %rdx
	jne	.L2041
.L2040:
	testq	%r8, %r8
	je	.L2135
	movq	%r8, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L2136
.L2038:
	testq	%r12, %r12
	movq	%rax, 120(%r14)
	jle	.L2093
	movq	%r15, %rsi
	xorl	%r11d, %r11d
	movabsq	$6148914691236517206, %rdi
	.p2align 4,,10
	.p2align 3
.L2052:
	leaq	0(,%r11,8), %rbp
	movq	last_unused_stack_memory(%rip), %r9
	addq	%rbp, %rsi
	movq	(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L2043
	movq	%rcx, %rax
	imulq	%rdi
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	cmpq	%rax, %rcx
	setg	%al
	movzbl	%al, %eax
	addq	%rax, %rdx
	movq	entire_stack_memory_chunk(%rip), %rax
	addq	total_stack_bytes_allocated(%rip), %rax
	leaq	0(,%rdx,8), %rcx
	cmpq	%rax, last_unused_memory(%rip)
	leaq	(%r9,%rcx), %r8
	movq	%r8, last_unused_stack_memory(%rip)
	jnb	.L2137
	addq	%rdx, 8(%rbx)
	testq	%r9, %r9
	je	.L2046
	movq	16(%r13), %rax
	movq	(%rsi), %rsi
	movq	120(%rax), %rax
	testq	%rsi, %rsi
	movq	(%rax,%rbp), %r10
	jle	.L2046
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	jmp	.L2051
	.p2align 4,,10
	.p2align 3
.L2139:
	cmpq	%rdx, %rsi
	jle	.L2048
	movzbl	(%r10,%rdx), %eax
	leaq	1(%rdx), %r8
	cmpq	%r8, %rsi
	movb	%al, (%r9,%rcx)
	jle	.L2082
	movzbl	1(%r10,%rdx), %eax
	movb	%al, 1(%r9,%rcx)
	leaq	2(%rdx), %rax
	cmpq	%rax, %rsi
	jle	.L2083
	movzbl	2(%r10,%rdx), %eax
	addq	$3, %rdx
	movb	%al, 2(%r9,%rcx)
.L2048:
	addq	$3, %rcx
	cmpq	%rdx, %rsi
	movl	$1, %r8d
	jle	.L2138
.L2051:
	testl	%r8d, %r8d
	je	.L2139
	addq	$5, %rcx
	xorl	%r8d, %r8d
	cmpq	%rdx, %rsi
	jg	.L2051
.L2138:
	movq	16(%rbx), %r14
.L2046:
	movq	120(%r14), %rax
	addq	$1, %r11
	cmpq	%r12, %r11
	movq	%r9, (%rax,%rbp)
	je	.L2093
	movq	16(%rbx), %r14
	movq	112(%r14), %rsi
	jmp	.L2052
	.p2align 4,,10
	.p2align 3
.L2137:
	subq	%rcx, %r8
	movq	%r8, last_unused_stack_memory(%rip)
.L2043:
	xorl	%r9d, %r9d
	jmp	.L2046
	.p2align 4,,10
	.p2align 3
.L2082:
	movq	%r8, %rdx
	jmp	.L2048
	.p2align 4,,10
	.p2align 3
.L2083:
	movq	%rax, %rdx
	jmp	.L2048
.L2130:
	subq	%r8, %r9
	movq	%r9, last_unused_stack_memory(%rip)
.L2023:
	xorl	%eax, %eax
	testq	%rdi, %rdi
	movq	$0, 96(%r14)
	je	.L2032
	jmp	.L2053
.L2127:
	movq	%r9, %rcx
	subq	%r8, %rcx
	movq	%rcx, last_unused_stack_memory(%rip)
.L2014:
	movq	$0, 72(%r14)
	jmp	.L2017
.L2124:
	movq	%r9, %rcx
	subq	%r8, %rcx
	movq	%rcx, last_unused_stack_memory(%rip)
.L2005:
	movq	$0, 56(%r14)
	jmp	.L2008
.L2121:
	movq	%r9, %rcx
	subq	%r8, %rcx
	movq	%rcx, last_unused_stack_memory(%rip)
.L1996:
	movq	$0, 40(%r14)
	jmp	.L1999
.L2058:
	movq	%rax, %rdx
	jmp	.L1983
.L2076:
	movq	%rax, %rdx
	jmp	.L2028
.L2074:
	movq	%rax, %rdx
	.p2align 4,,2
	jmp	.L2019
.L2062:
	movq	%rax, %rdx
	.p2align 4,,2
	jmp	.L1992
.L2070:
	movq	%rax, %rdx
	.p2align 4,,2
	jmp	.L2010
.L2066:
	movq	%rax, %rdx
	.p2align 4,,2
	jmp	.L2001
.L2078:
	xorl	%r15d, %r15d
	.p2align 4,,2
	jmp	.L2036
.L2135:
	xorl	%eax, %eax
	.p2align 4,,3
	jmp	.L2038
.L1974:
	movl	$.LC78, %edi
	movq	$0, 16(%rbx)
	call	puts
	jmp	.L1976
.L2072:
	movq	%r9, %rcx
	jmp	.L2017
.L2068:
	movq	%r9, %rcx
	.p2align 4,,5
	jmp	.L2008
.L2064:
	movq	%r9, %rcx
	.p2align 4,,2
	jmp	.L1999
.L2060:
	movq	%r9, %rcx
	.p2align 4,,2
	jmp	.L1990
.L2056:
	movq	%r9, %rcx
	.p2align 4,,2
	jmp	.L1981
.L2133:
	movl	$1006, %esi
	movl	$__func__.5416, %edi
	call	error_checking_malloc.part.0
.L2114:
	movl	$924, %esi
	movl	$__func__.5416, %edi
	call	error_checking_malloc.part.0
.L2113:
	movl	$916, %esi
	movl	$__func__.5416, %edi
	call	error_checking_malloc.part.0
.L2136:
	movl	$1016, %esi
	movl	$__func__.5416, %edi
	call	error_checking_malloc.part.0
.L2134:
	movl	$1013, %esi
	movl	$__func__.5416, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE152:
	.size	put_fun_params_into_secure_stack, .-put_fun_params_into_secure_stack
	.p2align 4,,15
	.globl	free_fun_params
	.type	free_fun_params, @function
free_fun_params:
.LFB153:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	testq	%rdi, %rdi
	je	.L2140
	movq	16(%rdi), %rax
	testq	%rax, %rax
	je	.L2142
	movq	8(%rax), %rdi
	call	free
	movq	16(%rbp), %rax
	movq	24(%rax), %rdi
	call	free
	movq	16(%rbp), %rax
	movq	40(%rax), %rdi
	call	free
	movq	16(%rbp), %rax
	movq	56(%rax), %rdi
	call	free
	movq	16(%rbp), %rax
	movq	72(%rax), %rdi
	call	free
	movq	16(%rbp), %rax
	movq	96(%rax), %rdi
	call	free
	movq	16(%rbp), %rax
	movq	88(%rax), %rdi
	call	free
	movq	16(%rbp), %rax
	movq	112(%rax), %rdi
	call	free
	movq	16(%rbp), %rdi
	cmpq	$0, 104(%rdi)
	jle	.L2143
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L2144:
	movq	120(%rdi), %rax
	movq	(%rax,%rbx,8), %rdi
	addq	$1, %rbx
	call	free
	movq	16(%rbp), %rdi
	cmpq	%rbx, 104(%rdi)
	jg	.L2144
.L2143:
	call	free
.L2142:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbp, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free
	.p2align 4,,10
	.p2align 3
.L2140:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE153:
	.size	free_fun_params, .-free_fun_params
	.p2align 4,,15
	.globl	free_fun_params_that_point_to_stack
	.type	free_fun_params_that_point_to_stack, @function
free_fun_params_that_point_to_stack:
.LFB154:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	16(%rdi), %rax
	movq	%rdi, %rbx
	movq	88(%rax), %rdi
	call	free
	movq	16(%rbx), %rax
	movq	112(%rax), %rdi
	call	free
	movq	16(%rbx), %rdi
	call	free
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free
	.cfi_endproc
.LFE154:
	.size	free_fun_params_that_point_to_stack, .-free_fun_params_that_point_to_stack
	.p2align 4,,15
	.globl	put_fun_params_into_secure_stack_and_free
	.type	put_fun_params_into_secure_stack_and_free, @function
put_fun_params_into_secure_stack_and_free:
.LFB155:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	put_fun_params_into_secure_stack
	movq	%rbx, %rdi
	movq	%rax, %rbp
	call	free_fun_params
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE155:
	.size	put_fun_params_into_secure_stack_and_free, .-put_fun_params_into_secure_stack_and_free
	.p2align 4,,15
	.globl	get_stack_char
	.type	get_stack_char, @function
get_stack_char:
.LFB156:
	.cfi_startproc
	movzbl	(%rdi), %eax
	ret
	.cfi_endproc
.LFE156:
	.size	get_stack_char, .-get_stack_char
	.p2align 4,,15
	.globl	get_stack_int
	.type	get_stack_int, @function
get_stack_int:
.LFB157:
	.cfi_startproc
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2159
	.p2align 4,,10
	.p2align 3
.L2163:
	movzbl	(%rdi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$4, %rcx
	je	.L2160
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$3, %rcx
	movb	%sil, -23(%rsp,%rdx)
	jg	.L2161
	movzbl	2(%rdi,%rax), %esi
	addq	$3, %rdx
	movb	%sil, -24(%rsp,%rcx)
.L2156:
	addq	$3, %rax
	cmpq	$3, %rdx
	movl	$1, %ecx
	jg	.L2162
.L2159:
	testl	%ecx, %ecx
	je	.L2163
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$3, %rdx
	jle	.L2159
.L2162:
	movl	-24(%rsp), %eax
	ret
	.p2align 4,,10
	.p2align 3
.L2160:
	movl	$4, %edx
	jmp	.L2156
	.p2align 4,,10
	.p2align 3
.L2161:
	movq	%rcx, %rdx
	jmp	.L2156
	.cfi_endproc
.LFE157:
	.size	get_stack_int, .-get_stack_int
	.p2align 4,,15
	.globl	get_stack_long_int
	.type	get_stack_long_int, @function
get_stack_long_int:
.LFB158:
	.cfi_startproc
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2169
	.p2align 4,,10
	.p2align 3
.L2173:
	movzbl	(%rdi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L2170
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%sil, -23(%rsp,%rdx)
	jg	.L2171
	movzbl	2(%rdi,%rax), %esi
	addq	$3, %rdx
	movb	%sil, -24(%rsp,%rcx)
.L2166:
	addq	$3, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L2172
.L2169:
	testl	%ecx, %ecx
	je	.L2173
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L2169
.L2172:
	movq	-24(%rsp), %rax
	ret
	.p2align 4,,10
	.p2align 3
.L2170:
	movl	$8, %edx
	jmp	.L2166
	.p2align 4,,10
	.p2align 3
.L2171:
	movq	%rcx, %rdx
	jmp	.L2166
	.cfi_endproc
.LFE158:
	.size	get_stack_long_int, .-get_stack_long_int
	.p2align 4,,15
	.globl	get_stack_pointer
	.type	get_stack_pointer, @function
get_stack_pointer:
.LFB159:
	.cfi_startproc
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2179
	.p2align 4,,10
	.p2align 3
.L2183:
	movzbl	(%rdi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L2180
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%sil, -23(%rsp,%rdx)
	jg	.L2181
	movzbl	2(%rdi,%rax), %esi
	addq	$3, %rdx
	movb	%sil, -24(%rsp,%rcx)
.L2176:
	addq	$3, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L2182
.L2179:
	testl	%ecx, %ecx
	je	.L2183
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L2179
.L2182:
	movq	-24(%rsp), %rax
	ret
	.p2align 4,,10
	.p2align 3
.L2180:
	movl	$8, %edx
	jmp	.L2176
	.p2align 4,,10
	.p2align 3
.L2181:
	movq	%rcx, %rdx
	jmp	.L2176
	.cfi_endproc
.LFE159:
	.size	get_stack_pointer, .-get_stack_pointer
	.p2align 4,,15
	.globl	get_stack_float
	.type	get_stack_float, @function
get_stack_float:
.LFB160:
	.cfi_startproc
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2189
	.p2align 4,,10
	.p2align 3
.L2193:
	movzbl	(%rdi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$4, %rcx
	je	.L2190
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$3, %rcx
	movb	%sil, -23(%rsp,%rdx)
	jg	.L2191
	movzbl	2(%rdi,%rax), %esi
	addq	$3, %rdx
	movb	%sil, -24(%rsp,%rcx)
.L2186:
	addq	$3, %rax
	cmpq	$3, %rdx
	movl	$1, %ecx
	jg	.L2192
.L2189:
	testl	%ecx, %ecx
	je	.L2193
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$3, %rdx
	jle	.L2189
.L2192:
	movss	-24(%rsp), %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L2190:
	movl	$4, %edx
	jmp	.L2186
	.p2align 4,,10
	.p2align 3
.L2191:
	movq	%rcx, %rdx
	jmp	.L2186
	.cfi_endproc
.LFE160:
	.size	get_stack_float, .-get_stack_float
	.p2align 4,,15
	.globl	get_stack_double
	.type	get_stack_double, @function
get_stack_double:
.LFB161:
	.cfi_startproc
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2199
	.p2align 4,,10
	.p2align 3
.L2203:
	movzbl	(%rdi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L2200
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%sil, -23(%rsp,%rdx)
	jg	.L2201
	movzbl	2(%rdi,%rax), %esi
	addq	$3, %rdx
	movb	%sil, -24(%rsp,%rcx)
.L2196:
	addq	$3, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L2202
.L2199:
	testl	%ecx, %ecx
	je	.L2203
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L2199
.L2202:
	movsd	-24(%rsp), %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L2200:
	movl	$8, %edx
	jmp	.L2196
	.p2align 4,,10
	.p2align 3
.L2201:
	movq	%rcx, %rdx
	jmp	.L2196
	.cfi_endproc
.LFE161:
	.size	get_stack_double, .-get_stack_double
	.p2align 4,,15
	.globl	get_stack_array_element
	.type	get_stack_array_element, @function
get_stack_array_element:
.LFB162:
	.cfi_startproc
	imulq	%rdi, %rdx
	movq	%rdx, %r9
	movabsq	$6148914691236517206, %rdx
	movq	%r9, %rax
	imulq	%rdx
	movq	%r9, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rsi,%rdx,8), %r8
	cmpq	%rax, %r9
	je	.L2221
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rsi
	addq	%r9, %rsi
	cmpq	$2, %rsi
	jg	.L2216
	testq	%rdi, %rdi
	jle	.L2216
	movl	$3, %r9d
	movq	%rsi, %rdx
	xorl	%eax, %eax
	subq	%rsi, %r9
	jmp	.L2208
	.p2align 4,,10
	.p2align 3
.L2222:
	cmpq	%rdi, %rax
	je	.L2207
.L2208:
	movzbl	(%r8,%rdx), %edx
	movb	%dl, (%rcx,%rax)
	addq	$1, %rax
	cmpq	%r9, %rax
	leaq	(%rax,%rsi), %rdx
	jne	.L2222
.L2207:
	addq	$8, %r8
.L2206:
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L2220:
	cmpq	%rax, %rdi
	jle	.L2204
.L2223:
	testl	%esi, %esi
	jne	.L2210
	movzbl	(%r8,%rdx), %esi
	movb	%sil, (%rcx,%rax)
	leaq	1(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L2218
	movzbl	1(%r8,%rdx), %esi
	movb	%sil, 1(%rcx,%rax)
	leaq	2(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L2218
	movzbl	2(%r8,%rdx), %esi
	movb	%sil, 2(%rcx,%rax)
	addq	$3, %rax
.L2211:
	addq	$3, %rdx
	cmpq	%rax, %rdi
	movl	$1, %esi
	jg	.L2223
.L2204:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2210:
	addq	$5, %rdx
	xorl	%esi, %esi
	jmp	.L2220
	.p2align 4,,10
	.p2align 3
.L2218:
	movq	%rsi, %rax
	jmp	.L2211
	.p2align 4,,10
	.p2align 3
.L2221:
	xorl	%eax, %eax
	jmp	.L2206
.L2216:
	xorl	%eax, %eax
	.p2align 4,,4
	jmp	.L2207
	.cfi_endproc
.LFE162:
	.size	get_stack_array_element, .-get_stack_array_element
	.p2align 4,,15
	.globl	get_stack_char_array_element
	.type	get_stack_char_array_element, @function
get_stack_char_array_element:
.LFB163:
	.cfi_startproc
	movq	%rsi, %rax
	movabsq	$6148914691236517206, %rdx
	imulq	%rdx
	movq	%rsi, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	cmpq	%rax, %rsi
	leaq	(%rdi,%rdx,8), %rax
	je	.L2226
	movq	%rdx, %rcx
	negq	%rcx
	leaq	(%rdx,%rcx,4), %rdx
	addq	%rdx, %rsi
	cmpq	$2, %rsi
	jg	.L2227
	movzbl	(%rax,%rsi), %eax
	ret
.L2227:
	addq	$8, %rax
	.p2align 4,,10
	.p2align 3
.L2226:
	movzbl	(%rax), %eax
	ret
	.cfi_endproc
.LFE163:
	.size	get_stack_char_array_element, .-get_stack_char_array_element
	.p2align 4,,15
	.globl	get_stack_int_array_element
	.type	get_stack_int_array_element, @function
get_stack_int_array_element:
.LFB164:
	.cfi_startproc
	leaq	0(,%rsi,4), %rcx
	movabsq	$6148914691236517206, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rdi,%rdx,8), %rsi
	cmpq	%rax, %rcx
	je	.L2246
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2233
	movzbl	(%rsi,%rax), %edx
	cmpq	$2, %rax
	movb	%dl, -24(%rsp)
	je	.L2240
	movzbl	1(%rsi,%rax), %edx
	movb	%dl, -23(%rsp)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2241
	movzbl	2(%rsi,%rax), %edx
	movb	%dl, -22(%rsp)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2242
	movzbl	3(%rsi,%rax), %edx
	cmpq	$-1, %rax
	movb	%dl, -21(%rsp)
	movl	$4, %edx
	jge	.L2234
.L2235:
	movl	-24(%rsp), %eax
	ret
.L2242:
	movl	$3, %edx
.L2234:
	addq	$8, %rsi
	cmpq	$4, %rdx
	je	.L2235
.L2236:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2232
	.p2align 4,,10
	.p2align 3
.L2247:
	movzbl	(%rsi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$4, %rcx
	je	.L2243
	movzbl	1(%rsi,%rax), %edi
	leaq	2(%rdx), %rcx
	cmpq	$3, %rcx
	movb	%dil, -23(%rsp,%rdx)
	jg	.L2244
	movzbl	2(%rsi,%rax), %edi
	addq	$3, %rdx
	movb	%dil, -24(%rsp,%rcx)
.L2238:
	addq	$3, %rax
	movl	$1, %ecx
.L2239:
	cmpq	$3, %rdx
	jg	.L2235
.L2232:
	testl	%ecx, %ecx
	je	.L2247
	addq	$5, %rax
	xorl	%ecx, %ecx
	jmp	.L2239
	.p2align 4,,10
	.p2align 3
.L2246:
	xorl	%edx, %edx
	jmp	.L2236
	.p2align 4,,10
	.p2align 3
.L2243:
	movl	$4, %edx
	jmp	.L2238
	.p2align 4,,10
	.p2align 3
.L2244:
	movq	%rcx, %rdx
	jmp	.L2238
.L2233:
	addq	$8, %rsi
	xorl	%edx, %edx
	jmp	.L2236
.L2241:
	movl	$2, %edx
	jmp	.L2234
.L2240:
	movl	$1, %edx
	jmp	.L2234
	.cfi_endproc
.LFE164:
	.size	get_stack_int_array_element, .-get_stack_int_array_element
	.p2align 4,,15
	.globl	get_stack_long_int_array_element
	.type	get_stack_long_int_array_element, @function
get_stack_long_int_array_element:
.LFB165:
	.cfi_startproc
	leaq	0(,%rsi,8), %rcx
	movabsq	$6148914691236517206, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rdi,%rdx,8), %rsi
	cmpq	%rax, %rcx
	je	.L2268
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2251
	movzbl	(%rsi,%rax), %edx
	cmpq	$2, %rax
	movb	%dl, -24(%rsp)
	je	.L2258
	movzbl	1(%rsi,%rax), %edx
	movb	%dl, -23(%rsp)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2259
	movzbl	2(%rsi,%rax), %edx
	movb	%dl, -22(%rsp)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2260
	movzbl	3(%rsi,%rax), %edx
	movb	%dl, -21(%rsp)
	leaq	4(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2261
	movzbl	4(%rsi,%rax), %edx
	movb	%dl, -20(%rsp)
	leaq	5(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2262
	movzbl	5(%rsi,%rax), %edx
	movb	%dl, -19(%rsp)
	leaq	6(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2263
	movzbl	6(%rsi,%rax), %edx
	movb	%dl, -18(%rsp)
	leaq	7(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2264
	movzbl	7(%rsi,%rax), %edx
	cmpq	$-5, %rax
	movb	%dl, -17(%rsp)
	movl	$8, %edx
	jge	.L2252
.L2253:
	movq	-24(%rsp), %rax
	ret
.L2264:
	movl	$7, %edx
	.p2align 4,,10
	.p2align 3
.L2252:
	addq	$8, %rsi
	cmpq	$8, %rdx
	je	.L2253
.L2254:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2250
	.p2align 4,,10
	.p2align 3
.L2269:
	movzbl	(%rsi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L2265
	movzbl	1(%rsi,%rax), %edi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%dil, -23(%rsp,%rdx)
	jg	.L2266
	movzbl	2(%rsi,%rax), %edi
	addq	$3, %rdx
	movb	%dil, -24(%rsp,%rcx)
.L2256:
	addq	$3, %rax
	movl	$1, %ecx
.L2257:
	cmpq	$7, %rdx
	jg	.L2253
.L2250:
	testl	%ecx, %ecx
	je	.L2269
	addq	$5, %rax
	xorl	%ecx, %ecx
	jmp	.L2257
	.p2align 4,,10
	.p2align 3
.L2268:
	xorl	%edx, %edx
	jmp	.L2254
	.p2align 4,,10
	.p2align 3
.L2265:
	movl	$8, %edx
	jmp	.L2256
	.p2align 4,,10
	.p2align 3
.L2266:
	movq	%rcx, %rdx
	jmp	.L2256
.L2251:
	addq	$8, %rsi
	xorl	%edx, %edx
	jmp	.L2254
.L2259:
	movl	$2, %edx
	jmp	.L2252
.L2258:
	movl	$1, %edx
	jmp	.L2252
.L2260:
	movl	$3, %edx
	jmp	.L2252
.L2261:
	movl	$4, %edx
	jmp	.L2252
.L2263:
	movl	$6, %edx
	jmp	.L2252
.L2262:
	movl	$5, %edx
	jmp	.L2252
	.cfi_endproc
.LFE165:
	.size	get_stack_long_int_array_element, .-get_stack_long_int_array_element
	.p2align 4,,15
	.globl	get_stack_pointer_array_element
	.type	get_stack_pointer_array_element, @function
get_stack_pointer_array_element:
.LFB166:
	.cfi_startproc
	leaq	0(,%rsi,8), %rcx
	movabsq	$6148914691236517206, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rdi,%rdx,8), %rsi
	cmpq	%rax, %rcx
	je	.L2290
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2273
	movzbl	(%rsi,%rax), %edx
	cmpq	$2, %rax
	movb	%dl, -24(%rsp)
	je	.L2280
	movzbl	1(%rsi,%rax), %edx
	movb	%dl, -23(%rsp)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2281
	movzbl	2(%rsi,%rax), %edx
	movb	%dl, -22(%rsp)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2282
	movzbl	3(%rsi,%rax), %edx
	movb	%dl, -21(%rsp)
	leaq	4(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2283
	movzbl	4(%rsi,%rax), %edx
	movb	%dl, -20(%rsp)
	leaq	5(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2284
	movzbl	5(%rsi,%rax), %edx
	movb	%dl, -19(%rsp)
	leaq	6(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2285
	movzbl	6(%rsi,%rax), %edx
	movb	%dl, -18(%rsp)
	leaq	7(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2286
	movzbl	7(%rsi,%rax), %edx
	cmpq	$-5, %rax
	movb	%dl, -17(%rsp)
	movl	$8, %edx
	jge	.L2274
.L2275:
	movq	-24(%rsp), %rax
	ret
.L2286:
	movl	$7, %edx
	.p2align 4,,10
	.p2align 3
.L2274:
	addq	$8, %rsi
	cmpq	$8, %rdx
	je	.L2275
.L2276:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2272
	.p2align 4,,10
	.p2align 3
.L2291:
	movzbl	(%rsi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L2287
	movzbl	1(%rsi,%rax), %edi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%dil, -23(%rsp,%rdx)
	jg	.L2288
	movzbl	2(%rsi,%rax), %edi
	addq	$3, %rdx
	movb	%dil, -24(%rsp,%rcx)
.L2278:
	addq	$3, %rax
	movl	$1, %ecx
.L2279:
	cmpq	$7, %rdx
	jg	.L2275
.L2272:
	testl	%ecx, %ecx
	je	.L2291
	addq	$5, %rax
	xorl	%ecx, %ecx
	jmp	.L2279
	.p2align 4,,10
	.p2align 3
.L2290:
	xorl	%edx, %edx
	jmp	.L2276
	.p2align 4,,10
	.p2align 3
.L2287:
	movl	$8, %edx
	jmp	.L2278
	.p2align 4,,10
	.p2align 3
.L2288:
	movq	%rcx, %rdx
	jmp	.L2278
.L2273:
	addq	$8, %rsi
	xorl	%edx, %edx
	jmp	.L2276
.L2281:
	movl	$2, %edx
	jmp	.L2274
.L2280:
	movl	$1, %edx
	jmp	.L2274
.L2282:
	movl	$3, %edx
	jmp	.L2274
.L2283:
	movl	$4, %edx
	jmp	.L2274
.L2285:
	movl	$6, %edx
	jmp	.L2274
.L2284:
	movl	$5, %edx
	jmp	.L2274
	.cfi_endproc
.LFE166:
	.size	get_stack_pointer_array_element, .-get_stack_pointer_array_element
	.p2align 4,,15
	.globl	get_stack_float_array_element
	.type	get_stack_float_array_element, @function
get_stack_float_array_element:
.LFB167:
	.cfi_startproc
	leaq	0(,%rsi,4), %rcx
	movabsq	$6148914691236517206, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rdi,%rdx,8), %rsi
	cmpq	%rax, %rcx
	je	.L2308
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2295
	movzbl	(%rsi,%rax), %edx
	cmpq	$2, %rax
	movb	%dl, -24(%rsp)
	je	.L2302
	movzbl	1(%rsi,%rax), %edx
	movb	%dl, -23(%rsp)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2303
	movzbl	2(%rsi,%rax), %edx
	movb	%dl, -22(%rsp)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2304
	movzbl	3(%rsi,%rax), %edx
	cmpq	$-1, %rax
	movb	%dl, -21(%rsp)
	movl	$4, %edx
	jge	.L2296
.L2297:
	movss	-24(%rsp), %xmm0
	ret
.L2304:
	movl	$3, %edx
.L2296:
	addq	$8, %rsi
	cmpq	$4, %rdx
	je	.L2297
.L2298:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2294
	.p2align 4,,10
	.p2align 3
.L2309:
	movzbl	(%rsi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$4, %rcx
	je	.L2305
	movzbl	1(%rsi,%rax), %edi
	leaq	2(%rdx), %rcx
	cmpq	$3, %rcx
	movb	%dil, -23(%rsp,%rdx)
	jg	.L2306
	movzbl	2(%rsi,%rax), %edi
	addq	$3, %rdx
	movb	%dil, -24(%rsp,%rcx)
.L2300:
	addq	$3, %rax
	movl	$1, %ecx
.L2301:
	cmpq	$3, %rdx
	jg	.L2297
.L2294:
	testl	%ecx, %ecx
	je	.L2309
	addq	$5, %rax
	xorl	%ecx, %ecx
	jmp	.L2301
	.p2align 4,,10
	.p2align 3
.L2308:
	xorl	%edx, %edx
	jmp	.L2298
	.p2align 4,,10
	.p2align 3
.L2305:
	movl	$4, %edx
	jmp	.L2300
	.p2align 4,,10
	.p2align 3
.L2306:
	movq	%rcx, %rdx
	jmp	.L2300
.L2295:
	addq	$8, %rsi
	xorl	%edx, %edx
	jmp	.L2298
.L2303:
	movl	$2, %edx
	jmp	.L2296
.L2302:
	movl	$1, %edx
	jmp	.L2296
	.cfi_endproc
.LFE167:
	.size	get_stack_float_array_element, .-get_stack_float_array_element
	.p2align 4,,15
	.globl	get_stack_double_array_element
	.type	get_stack_double_array_element, @function
get_stack_double_array_element:
.LFB168:
	.cfi_startproc
	leaq	0(,%rsi,8), %rcx
	movabsq	$6148914691236517206, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rdi,%rdx,8), %rsi
	cmpq	%rax, %rcx
	je	.L2330
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2313
	movzbl	(%rsi,%rax), %edx
	cmpq	$2, %rax
	movb	%dl, -24(%rsp)
	je	.L2320
	movzbl	1(%rsi,%rax), %edx
	movb	%dl, -23(%rsp)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2321
	movzbl	2(%rsi,%rax), %edx
	movb	%dl, -22(%rsp)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2322
	movzbl	3(%rsi,%rax), %edx
	movb	%dl, -21(%rsp)
	leaq	4(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2323
	movzbl	4(%rsi,%rax), %edx
	movb	%dl, -20(%rsp)
	leaq	5(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2324
	movzbl	5(%rsi,%rax), %edx
	movb	%dl, -19(%rsp)
	leaq	6(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2325
	movzbl	6(%rsi,%rax), %edx
	movb	%dl, -18(%rsp)
	leaq	7(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2326
	movzbl	7(%rsi,%rax), %edx
	cmpq	$-5, %rax
	movb	%dl, -17(%rsp)
	movl	$8, %edx
	jge	.L2314
.L2315:
	movsd	-24(%rsp), %xmm0
	ret
.L2326:
	movl	$7, %edx
	.p2align 4,,10
	.p2align 3
.L2314:
	addq	$8, %rsi
	cmpq	$8, %rdx
	je	.L2315
.L2316:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2312
	.p2align 4,,10
	.p2align 3
.L2331:
	movzbl	(%rsi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L2327
	movzbl	1(%rsi,%rax), %edi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%dil, -23(%rsp,%rdx)
	jg	.L2328
	movzbl	2(%rsi,%rax), %edi
	addq	$3, %rdx
	movb	%dil, -24(%rsp,%rcx)
.L2318:
	addq	$3, %rax
	movl	$1, %ecx
.L2319:
	cmpq	$7, %rdx
	jg	.L2315
.L2312:
	testl	%ecx, %ecx
	je	.L2331
	addq	$5, %rax
	xorl	%ecx, %ecx
	jmp	.L2319
	.p2align 4,,10
	.p2align 3
.L2330:
	xorl	%edx, %edx
	jmp	.L2316
	.p2align 4,,10
	.p2align 3
.L2327:
	movl	$8, %edx
	jmp	.L2318
	.p2align 4,,10
	.p2align 3
.L2328:
	movq	%rcx, %rdx
	jmp	.L2318
.L2313:
	addq	$8, %rsi
	xorl	%edx, %edx
	jmp	.L2316
.L2321:
	movl	$2, %edx
	jmp	.L2314
.L2320:
	movl	$1, %edx
	jmp	.L2314
.L2322:
	movl	$3, %edx
	jmp	.L2314
.L2323:
	movl	$4, %edx
	jmp	.L2314
.L2325:
	movl	$6, %edx
	jmp	.L2314
.L2324:
	movl	$5, %edx
	jmp	.L2314
	.cfi_endproc
.LFE168:
	.size	get_stack_double_array_element, .-get_stack_double_array_element
	.p2align 4,,15
	.globl	get_arbitrary_block_in_stack
	.type	get_arbitrary_block_in_stack, @function
get_arbitrary_block_in_stack:
.LFB169:
	.cfi_startproc
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	testq	%rdi, %rdi
	jg	.L2341
	jmp	.L2332
	.p2align 4,,10
	.p2align 3
.L2342:
	cmpq	%rax, %rdi
	jle	.L2335
	movzbl	(%rsi,%rcx), %r8d
	movb	%r8b, (%rdx,%rax)
	leaq	1(%rax), %r8
	cmpq	%r8, %rdi
	jle	.L2340
	movzbl	1(%rsi,%rcx), %r8d
	movb	%r8b, 1(%rdx,%rax)
	leaq	2(%rax), %r8
	cmpq	%r8, %rdi
	jle	.L2340
	movzbl	2(%rsi,%rcx), %r8d
	movb	%r8b, 2(%rdx,%rax)
	addq	$3, %rax
.L2335:
	addq	$3, %rcx
	cmpq	%rax, %rdi
	movl	$1, %r8d
	jle	.L2332
.L2341:
	testl	%r8d, %r8d
	je	.L2342
	addq	$5, %rcx
	xorl	%r8d, %r8d
	cmpq	%rax, %rdi
	jg	.L2341
.L2332:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2340:
	movq	%r8, %rax
	jmp	.L2335
	.cfi_endproc
.LFE169:
	.size	get_arbitrary_block_in_stack, .-get_arbitrary_block_in_stack
	.p2align 4,,15
	.globl	get_arbitrary_block_in_stack_with_offset
	.type	get_arbitrary_block_in_stack_with_offset, @function
get_arbitrary_block_in_stack_with_offset:
.LFB170:
	.cfi_startproc
	movq	%rdx, %rax
	movabsq	$6148914691236517206, %r9
	movq	%rdx, %r10
	imulq	%r9
	movq	%r10, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rsi,%rdx,8), %r8
	cmpq	%rax, %r10
	je	.L2360
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rdx
	addq	%r10, %rdx
	cmpq	$2, %rdx
	jg	.L2355
	testq	%rdi, %rdi
	jle	.L2355
	movl	$3, %r9d
	movq	%rdx, %rsi
	xorl	%eax, %eax
	subq	%rdx, %r9
	jmp	.L2347
	.p2align 4,,10
	.p2align 3
.L2361:
	cmpq	%rdi, %rax
	je	.L2346
.L2347:
	movzbl	(%r8,%rsi), %esi
	movb	%sil, (%rcx,%rax)
	addq	$1, %rax
	cmpq	%r9, %rax
	leaq	(%rax,%rdx), %rsi
	jne	.L2361
.L2346:
	addq	$8, %r8
.L2345:
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L2359:
	cmpq	%rax, %rdi
	jle	.L2343
.L2362:
	testl	%esi, %esi
	jne	.L2349
	movzbl	(%r8,%rdx), %esi
	movb	%sil, (%rcx,%rax)
	leaq	1(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L2357
	movzbl	1(%r8,%rdx), %esi
	movb	%sil, 1(%rcx,%rax)
	leaq	2(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L2357
	movzbl	2(%r8,%rdx), %esi
	movb	%sil, 2(%rcx,%rax)
	addq	$3, %rax
.L2350:
	addq	$3, %rdx
	cmpq	%rax, %rdi
	movl	$1, %esi
	jg	.L2362
.L2343:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2349:
	addq	$5, %rdx
	xorl	%esi, %esi
	jmp	.L2359
	.p2align 4,,10
	.p2align 3
.L2357:
	movq	%rsi, %rax
	jmp	.L2350
	.p2align 4,,10
	.p2align 3
.L2360:
	xorl	%eax, %eax
	jmp	.L2345
.L2355:
	xorl	%eax, %eax
	.p2align 4,,4
	jmp	.L2346
	.cfi_endproc
.LFE170:
	.size	get_arbitrary_block_in_stack_with_offset, .-get_arbitrary_block_in_stack_with_offset
	.p2align 4,,15
	.globl	set_stack_char
	.type	set_stack_char, @function
set_stack_char:
.LFB171:
	.cfi_startproc
	movb	%sil, (%rdi)
	ret
	.cfi_endproc
.LFE171:
	.size	set_stack_char, .-set_stack_char
	.p2align 4,,15
	.globl	set_stack_int
	.type	set_stack_int, @function
set_stack_int:
.LFB172:
	.cfi_startproc
	movl	%esi, -4(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2369
	.p2align 4,,10
	.p2align 3
.L2373:
	movzbl	-4(%rsp,%rdx), %ecx
	movb	%cl, (%rdi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$4, %rcx
	je	.L2370
	movzbl	-3(%rsp,%rdx), %ecx
	movb	%cl, 1(%rdi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$3, %rcx
	jg	.L2371
	movzbl	-4(%rsp,%rcx), %ecx
	addq	$3, %rdx
	movb	%cl, 2(%rdi,%rax)
.L2366:
	addq	$3, %rax
	cmpq	$3, %rdx
	movl	$1, %ecx
	jg	.L2372
.L2369:
	testl	%ecx, %ecx
	je	.L2373
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$3, %rdx
	jle	.L2369
.L2372:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2370:
	movl	$4, %edx
	jmp	.L2366
	.p2align 4,,10
	.p2align 3
.L2371:
	movq	%rcx, %rdx
	jmp	.L2366
	.cfi_endproc
.LFE172:
	.size	set_stack_int, .-set_stack_int
	.p2align 4,,15
	.globl	set_stack_long_int
	.type	set_stack_long_int, @function
set_stack_long_int:
.LFB173:
	.cfi_startproc
	movq	%rsi, -8(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2379
	.p2align 4,,10
	.p2align 3
.L2383:
	movzbl	-8(%rsp,%rdx), %ecx
	movb	%cl, (%rdi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L2380
	movzbl	-7(%rsp,%rdx), %ecx
	movb	%cl, 1(%rdi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L2381
	movzbl	-8(%rsp,%rcx), %ecx
	addq	$3, %rdx
	movb	%cl, 2(%rdi,%rax)
.L2376:
	addq	$3, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L2382
.L2379:
	testl	%ecx, %ecx
	je	.L2383
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L2379
.L2382:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2380:
	movl	$8, %edx
	jmp	.L2376
	.p2align 4,,10
	.p2align 3
.L2381:
	movq	%rcx, %rdx
	jmp	.L2376
	.cfi_endproc
.LFE173:
	.size	set_stack_long_int, .-set_stack_long_int
	.p2align 4,,15
	.globl	set_stack_pointer
	.type	set_stack_pointer, @function
set_stack_pointer:
.LFB174:
	.cfi_startproc
	movq	%rsi, -8(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2389
	.p2align 4,,10
	.p2align 3
.L2393:
	movzbl	-8(%rsp,%rdx), %ecx
	movb	%cl, (%rdi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L2390
	movzbl	-7(%rsp,%rdx), %ecx
	movb	%cl, 1(%rdi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L2391
	movzbl	-8(%rsp,%rcx), %ecx
	addq	$3, %rdx
	movb	%cl, 2(%rdi,%rax)
.L2386:
	addq	$3, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L2392
.L2389:
	testl	%ecx, %ecx
	je	.L2393
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L2389
.L2392:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2390:
	movl	$8, %edx
	jmp	.L2386
	.p2align 4,,10
	.p2align 3
.L2391:
	movq	%rcx, %rdx
	jmp	.L2386
	.cfi_endproc
.LFE174:
	.size	set_stack_pointer, .-set_stack_pointer
	.p2align 4,,15
	.globl	set_stack_float
	.type	set_stack_float, @function
set_stack_float:
.LFB175:
	.cfi_startproc
	movss	%xmm0, -4(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2399
	.p2align 4,,10
	.p2align 3
.L2403:
	movzbl	-4(%rsp,%rdx), %ecx
	movb	%cl, (%rdi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$4, %rcx
	je	.L2400
	movzbl	-3(%rsp,%rdx), %ecx
	movb	%cl, 1(%rdi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$3, %rcx
	jg	.L2401
	movzbl	-4(%rsp,%rcx), %ecx
	addq	$3, %rdx
	movb	%cl, 2(%rdi,%rax)
.L2396:
	addq	$3, %rax
	cmpq	$3, %rdx
	movl	$1, %ecx
	jg	.L2402
.L2399:
	testl	%ecx, %ecx
	je	.L2403
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$3, %rdx
	jle	.L2399
.L2402:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2400:
	movl	$4, %edx
	jmp	.L2396
	.p2align 4,,10
	.p2align 3
.L2401:
	movq	%rcx, %rdx
	jmp	.L2396
	.cfi_endproc
.LFE175:
	.size	set_stack_float, .-set_stack_float
	.p2align 4,,15
	.globl	set_stack_double
	.type	set_stack_double, @function
set_stack_double:
.LFB176:
	.cfi_startproc
	movsd	%xmm0, -8(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2409
	.p2align 4,,10
	.p2align 3
.L2413:
	movzbl	-8(%rsp,%rdx), %ecx
	movb	%cl, (%rdi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L2410
	movzbl	-7(%rsp,%rdx), %ecx
	movb	%cl, 1(%rdi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L2411
	movzbl	-8(%rsp,%rcx), %ecx
	addq	$3, %rdx
	movb	%cl, 2(%rdi,%rax)
.L2406:
	addq	$3, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L2412
.L2409:
	testl	%ecx, %ecx
	je	.L2413
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L2409
.L2412:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2410:
	movl	$8, %edx
	jmp	.L2406
	.p2align 4,,10
	.p2align 3
.L2411:
	movq	%rcx, %rdx
	jmp	.L2406
	.cfi_endproc
.LFE176:
	.size	set_stack_double, .-set_stack_double
	.p2align 4,,15
	.globl	set_stack_array_element
	.type	set_stack_array_element, @function
set_stack_array_element:
.LFB177:
	.cfi_startproc
	imulq	%rdi, %rdx
	movq	%rdx, %r9
	movabsq	$6148914691236517206, %rdx
	movq	%r9, %rax
	imulq	%rdx
	movq	%r9, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rsi,%rdx,8), %r8
	cmpq	%rax, %r9
	je	.L2431
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rax, %r9
	cmpq	$2, %r9
	jg	.L2426
	testq	%rdi, %rdi
	jle	.L2426
	movl	$3, %r10d
	movq	%r9, %rdx
	xorl	%eax, %eax
	subq	%r9, %r10
	jmp	.L2418
	.p2align 4,,10
	.p2align 3
.L2432:
	cmpq	%rdi, %rax
	je	.L2417
.L2418:
	movzbl	(%rcx,%rax), %esi
	addq	$1, %rax
	cmpq	%r10, %rax
	movb	%sil, (%r8,%rdx)
	leaq	(%rax,%r9), %rdx
	jne	.L2432
.L2417:
	addq	$8, %r8
.L2416:
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L2430:
	cmpq	%rax, %rdi
	jle	.L2414
.L2433:
	testl	%esi, %esi
	jne	.L2420
	movzbl	(%rcx,%rax), %esi
	movb	%sil, (%r8,%rdx)
	leaq	1(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L2428
	movzbl	1(%rcx,%rax), %esi
	movb	%sil, 1(%r8,%rdx)
	leaq	2(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L2428
	movzbl	2(%rcx,%rax), %esi
	addq	$3, %rax
	movb	%sil, 2(%r8,%rdx)
.L2421:
	addq	$3, %rdx
	cmpq	%rax, %rdi
	movl	$1, %esi
	jg	.L2433
.L2414:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2420:
	addq	$5, %rdx
	xorl	%esi, %esi
	jmp	.L2430
	.p2align 4,,10
	.p2align 3
.L2428:
	movq	%rsi, %rax
	jmp	.L2421
	.p2align 4,,10
	.p2align 3
.L2431:
	xorl	%eax, %eax
	jmp	.L2416
.L2426:
	xorl	%eax, %eax
	.p2align 4,,4
	jmp	.L2417
	.cfi_endproc
.LFE177:
	.size	set_stack_array_element, .-set_stack_array_element
	.p2align 4,,15
	.globl	set_stack_char_array_element
	.type	set_stack_char_array_element, @function
set_stack_char_array_element:
.LFB178:
	.cfi_startproc
	movq	%rsi, %rax
	movl	%edx, %ecx
	movabsq	$6148914691236517206, %rdx
	imulq	%rdx
	movq	%rsi, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	cmpq	%rax, %rsi
	leaq	(%rdi,%rdx,8), %rax
	je	.L2436
	movq	%rdx, %rdi
	negq	%rdi
	leaq	(%rdx,%rdi,4), %rdx
	addq	%rdx, %rsi
	cmpq	$2, %rsi
	jg	.L2437
	movb	%cl, (%rax,%rsi)
	ret
.L2437:
	addq	$8, %rax
	.p2align 4,,10
	.p2align 3
.L2436:
	movb	%cl, (%rax)
	ret
	.cfi_endproc
.LFE178:
	.size	set_stack_char_array_element, .-set_stack_char_array_element
	.p2align 4,,15
	.globl	set_stack_int_array_element
	.type	set_stack_int_array_element, @function
set_stack_int_array_element:
.LFB179:
	.cfi_startproc
	leaq	0(,%rsi,4), %rcx
	movl	%edx, -24(%rsp)
	movabsq	$6148914691236517206, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rdi,%rdx,8), %rsi
	cmpq	%rax, %rcx
	je	.L2454
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2442
	movzbl	-24(%rsp), %edx
	cmpq	$2, %rax
	movb	%dl, (%rsi,%rax)
	je	.L2449
	movzbl	-23(%rsp), %edx
	movb	%dl, 1(%rsi,%rax)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2450
	movzbl	-22(%rsp), %edx
	movb	%dl, 2(%rsi,%rax)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2451
	movzbl	-21(%rsp), %edx
	cmpq	$-1, %rax
	movb	%dl, 3(%rsi,%rax)
	movl	$4, %edx
	jge	.L2443
	rep ret
.L2451:
	movl	$3, %edx
.L2443:
	addq	$8, %rsi
	cmpq	$4, %rdx
	je	.L2455
.L2445:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2441
	.p2align 4,,10
	.p2align 3
.L2457:
	movzbl	-24(%rsp,%rdx), %ecx
	movb	%cl, (%rsi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$4, %rcx
	je	.L2452
	movzbl	-23(%rsp,%rdx), %ecx
	movb	%cl, 1(%rsi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$3, %rcx
	jg	.L2453
	movzbl	-24(%rsp,%rcx), %ecx
	addq	$3, %rdx
	movb	%cl, 2(%rsi,%rax)
.L2447:
	addq	$3, %rax
	cmpq	$3, %rdx
	movl	$1, %ecx
	jg	.L2456
.L2441:
	testl	%ecx, %ecx
	je	.L2457
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$3, %rdx
	jle	.L2441
.L2456:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2454:
	xorl	%edx, %edx
	jmp	.L2445
	.p2align 4,,10
	.p2align 3
.L2452:
	movl	$4, %edx
	jmp	.L2447
	.p2align 4,,10
	.p2align 3
.L2453:
	movq	%rcx, %rdx
	jmp	.L2447
.L2442:
	addq	$8, %rsi
	xorl	%edx, %edx
	jmp	.L2445
.L2450:
	movl	$2, %edx
	jmp	.L2443
.L2449:
	movl	$1, %edx
	jmp	.L2443
.L2455:
	.p2align 4,,1
	ret
	.cfi_endproc
.LFE179:
	.size	set_stack_int_array_element, .-set_stack_int_array_element
	.p2align 4,,15
	.globl	set_stack_long_int_array_element
	.type	set_stack_long_int_array_element, @function
set_stack_long_int_array_element:
.LFB180:
	.cfi_startproc
	leaq	0(,%rsi,8), %rcx
	movq	%rdx, -24(%rsp)
	movabsq	$6148914691236517206, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rdi,%rdx,8), %rsi
	cmpq	%rax, %rcx
	je	.L2477
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2461
	movzbl	-24(%rsp), %edx
	cmpq	$2, %rax
	movb	%dl, (%rsi,%rax)
	je	.L2468
	movzbl	-23(%rsp), %edx
	movb	%dl, 1(%rsi,%rax)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2469
	movzbl	-22(%rsp), %edx
	movb	%dl, 2(%rsi,%rax)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2470
	movzbl	-21(%rsp), %edx
	movb	%dl, 3(%rsi,%rax)
	leaq	4(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2471
	movzbl	-20(%rsp), %edx
	movb	%dl, 4(%rsi,%rax)
	leaq	5(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2472
	movzbl	-19(%rsp), %edx
	movb	%dl, 5(%rsi,%rax)
	leaq	6(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2473
	movzbl	-18(%rsp), %edx
	movb	%dl, 6(%rsi,%rax)
	leaq	7(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2474
	movzbl	-17(%rsp), %edx
	cmpq	$-5, %rax
	movb	%dl, 7(%rsi,%rax)
	movl	$8, %edx
	jge	.L2462
	rep ret
.L2474:
	movl	$7, %edx
	.p2align 4,,10
	.p2align 3
.L2462:
	addq	$8, %rsi
	cmpq	$8, %rdx
	je	.L2478
.L2464:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2460
	.p2align 4,,10
	.p2align 3
.L2480:
	movzbl	-24(%rsp,%rdx), %ecx
	movb	%cl, (%rsi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L2475
	movzbl	-23(%rsp,%rdx), %ecx
	movb	%cl, 1(%rsi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L2476
	movzbl	-24(%rsp,%rcx), %ecx
	addq	$3, %rdx
	movb	%cl, 2(%rsi,%rax)
.L2466:
	addq	$3, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L2479
.L2460:
	testl	%ecx, %ecx
	je	.L2480
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L2460
.L2479:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2477:
	xorl	%edx, %edx
	jmp	.L2464
	.p2align 4,,10
	.p2align 3
.L2475:
	movl	$8, %edx
	jmp	.L2466
	.p2align 4,,10
	.p2align 3
.L2476:
	movq	%rcx, %rdx
	jmp	.L2466
.L2461:
	addq	$8, %rsi
	xorl	%edx, %edx
	jmp	.L2464
.L2469:
	movl	$2, %edx
	jmp	.L2462
.L2468:
	movl	$1, %edx
	jmp	.L2462
.L2470:
	movl	$3, %edx
	jmp	.L2462
.L2471:
	movl	$4, %edx
	jmp	.L2462
.L2473:
	movl	$6, %edx
	jmp	.L2462
.L2472:
	movl	$5, %edx
	jmp	.L2462
.L2478:
	.p2align 4,,1
	ret
	.cfi_endproc
.LFE180:
	.size	set_stack_long_int_array_element, .-set_stack_long_int_array_element
	.p2align 4,,15
	.globl	set_stack_pointer_array_element
	.type	set_stack_pointer_array_element, @function
set_stack_pointer_array_element:
.LFB181:
	.cfi_startproc
	leaq	0(,%rsi,8), %rcx
	movq	%rdx, -24(%rsp)
	movabsq	$6148914691236517206, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rdi,%rdx,8), %rsi
	cmpq	%rax, %rcx
	je	.L2500
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2484
	movzbl	-24(%rsp), %edx
	cmpq	$2, %rax
	movb	%dl, (%rsi,%rax)
	je	.L2491
	movzbl	-23(%rsp), %edx
	movb	%dl, 1(%rsi,%rax)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2492
	movzbl	-22(%rsp), %edx
	movb	%dl, 2(%rsi,%rax)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2493
	movzbl	-21(%rsp), %edx
	movb	%dl, 3(%rsi,%rax)
	leaq	4(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2494
	movzbl	-20(%rsp), %edx
	movb	%dl, 4(%rsi,%rax)
	leaq	5(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2495
	movzbl	-19(%rsp), %edx
	movb	%dl, 5(%rsi,%rax)
	leaq	6(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2496
	movzbl	-18(%rsp), %edx
	movb	%dl, 6(%rsi,%rax)
	leaq	7(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2497
	movzbl	-17(%rsp), %edx
	cmpq	$-5, %rax
	movb	%dl, 7(%rsi,%rax)
	movl	$8, %edx
	jge	.L2485
	rep ret
.L2497:
	movl	$7, %edx
	.p2align 4,,10
	.p2align 3
.L2485:
	addq	$8, %rsi
	cmpq	$8, %rdx
	je	.L2501
.L2487:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2483
	.p2align 4,,10
	.p2align 3
.L2503:
	movzbl	-24(%rsp,%rdx), %ecx
	movb	%cl, (%rsi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L2498
	movzbl	-23(%rsp,%rdx), %ecx
	movb	%cl, 1(%rsi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L2499
	movzbl	-24(%rsp,%rcx), %ecx
	addq	$3, %rdx
	movb	%cl, 2(%rsi,%rax)
.L2489:
	addq	$3, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L2502
.L2483:
	testl	%ecx, %ecx
	je	.L2503
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L2483
.L2502:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2500:
	xorl	%edx, %edx
	jmp	.L2487
	.p2align 4,,10
	.p2align 3
.L2498:
	movl	$8, %edx
	jmp	.L2489
	.p2align 4,,10
	.p2align 3
.L2499:
	movq	%rcx, %rdx
	jmp	.L2489
.L2484:
	addq	$8, %rsi
	xorl	%edx, %edx
	jmp	.L2487
.L2492:
	movl	$2, %edx
	jmp	.L2485
.L2491:
	movl	$1, %edx
	jmp	.L2485
.L2493:
	movl	$3, %edx
	jmp	.L2485
.L2494:
	movl	$4, %edx
	jmp	.L2485
.L2496:
	movl	$6, %edx
	jmp	.L2485
.L2495:
	movl	$5, %edx
	jmp	.L2485
.L2501:
	.p2align 4,,1
	ret
	.cfi_endproc
.LFE181:
	.size	set_stack_pointer_array_element, .-set_stack_pointer_array_element
	.p2align 4,,15
	.globl	set_stack_float_array_element
	.type	set_stack_float_array_element, @function
set_stack_float_array_element:
.LFB182:
	.cfi_startproc
	leaq	0(,%rsi,4), %rcx
	movabsq	$6148914691236517206, %rdx
	movss	%xmm0, -24(%rsp)
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rdi,%rdx,8), %rsi
	cmpq	%rax, %rcx
	je	.L2519
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2507
	movzbl	-24(%rsp), %edx
	cmpq	$2, %rax
	movb	%dl, (%rsi,%rax)
	je	.L2514
	movzbl	-23(%rsp), %edx
	movb	%dl, 1(%rsi,%rax)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2515
	movzbl	-22(%rsp), %edx
	movb	%dl, 2(%rsi,%rax)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2516
	movzbl	-21(%rsp), %edx
	cmpq	$-1, %rax
	movb	%dl, 3(%rsi,%rax)
	movl	$4, %edx
	jge	.L2508
	rep ret
.L2516:
	movl	$3, %edx
.L2508:
	addq	$8, %rsi
	cmpq	$4, %rdx
	je	.L2520
.L2510:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2506
	.p2align 4,,10
	.p2align 3
.L2522:
	movzbl	-24(%rsp,%rdx), %ecx
	movb	%cl, (%rsi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$4, %rcx
	je	.L2517
	movzbl	-23(%rsp,%rdx), %ecx
	movb	%cl, 1(%rsi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$3, %rcx
	jg	.L2518
	movzbl	-24(%rsp,%rcx), %ecx
	addq	$3, %rdx
	movb	%cl, 2(%rsi,%rax)
.L2512:
	addq	$3, %rax
	cmpq	$3, %rdx
	movl	$1, %ecx
	jg	.L2521
.L2506:
	testl	%ecx, %ecx
	je	.L2522
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$3, %rdx
	jle	.L2506
.L2521:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2519:
	xorl	%edx, %edx
	jmp	.L2510
	.p2align 4,,10
	.p2align 3
.L2517:
	movl	$4, %edx
	jmp	.L2512
	.p2align 4,,10
	.p2align 3
.L2518:
	movq	%rcx, %rdx
	jmp	.L2512
.L2507:
	addq	$8, %rsi
	xorl	%edx, %edx
	jmp	.L2510
.L2515:
	movl	$2, %edx
	jmp	.L2508
.L2514:
	movl	$1, %edx
	jmp	.L2508
.L2520:
	.p2align 4,,1
	ret
	.cfi_endproc
.LFE182:
	.size	set_stack_float_array_element, .-set_stack_float_array_element
	.p2align 4,,15
	.globl	set_stack_double_array_element
	.type	set_stack_double_array_element, @function
set_stack_double_array_element:
.LFB183:
	.cfi_startproc
	leaq	0(,%rsi,8), %rcx
	movabsq	$6148914691236517206, %rdx
	movsd	%xmm0, -24(%rsp)
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rdi,%rdx,8), %rsi
	cmpq	%rax, %rcx
	je	.L2542
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2526
	movzbl	-24(%rsp), %edx
	cmpq	$2, %rax
	movb	%dl, (%rsi,%rax)
	je	.L2533
	movzbl	-23(%rsp), %edx
	movb	%dl, 1(%rsi,%rax)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2534
	movzbl	-22(%rsp), %edx
	movb	%dl, 2(%rsi,%rax)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2535
	movzbl	-21(%rsp), %edx
	movb	%dl, 3(%rsi,%rax)
	leaq	4(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2536
	movzbl	-20(%rsp), %edx
	movb	%dl, 4(%rsi,%rax)
	leaq	5(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2537
	movzbl	-19(%rsp), %edx
	movb	%dl, 5(%rsi,%rax)
	leaq	6(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2538
	movzbl	-18(%rsp), %edx
	movb	%dl, 6(%rsi,%rax)
	leaq	7(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2539
	movzbl	-17(%rsp), %edx
	cmpq	$-5, %rax
	movb	%dl, 7(%rsi,%rax)
	movl	$8, %edx
	jge	.L2527
	rep ret
.L2539:
	movl	$7, %edx
	.p2align 4,,10
	.p2align 3
.L2527:
	addq	$8, %rsi
	cmpq	$8, %rdx
	je	.L2543
.L2529:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2525
	.p2align 4,,10
	.p2align 3
.L2545:
	movzbl	-24(%rsp,%rdx), %ecx
	movb	%cl, (%rsi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L2540
	movzbl	-23(%rsp,%rdx), %ecx
	movb	%cl, 1(%rsi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L2541
	movzbl	-24(%rsp,%rcx), %ecx
	addq	$3, %rdx
	movb	%cl, 2(%rsi,%rax)
.L2531:
	addq	$3, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L2544
.L2525:
	testl	%ecx, %ecx
	je	.L2545
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L2525
.L2544:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2542:
	xorl	%edx, %edx
	jmp	.L2529
	.p2align 4,,10
	.p2align 3
.L2540:
	movl	$8, %edx
	jmp	.L2531
	.p2align 4,,10
	.p2align 3
.L2541:
	movq	%rcx, %rdx
	jmp	.L2531
.L2526:
	addq	$8, %rsi
	xorl	%edx, %edx
	jmp	.L2529
.L2534:
	movl	$2, %edx
	jmp	.L2527
.L2533:
	movl	$1, %edx
	jmp	.L2527
.L2535:
	movl	$3, %edx
	jmp	.L2527
.L2536:
	movl	$4, %edx
	jmp	.L2527
.L2538:
	movl	$6, %edx
	jmp	.L2527
.L2537:
	movl	$5, %edx
	jmp	.L2527
.L2543:
	.p2align 4,,1
	ret
	.cfi_endproc
.LFE183:
	.size	set_stack_double_array_element, .-set_stack_double_array_element
	.p2align 4,,15
	.globl	set_arbitrary_block_in_stack
	.type	set_arbitrary_block_in_stack, @function
set_arbitrary_block_in_stack:
.LFB184:
	.cfi_startproc
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	testq	%rdi, %rdi
	jg	.L2555
	jmp	.L2546
	.p2align 4,,10
	.p2align 3
.L2556:
	cmpq	%rax, %rdi
	jle	.L2549
	movzbl	(%rdx,%rax), %r8d
	movb	%r8b, (%rsi,%rcx)
	leaq	1(%rax), %r8
	cmpq	%r8, %rdi
	jle	.L2554
	movzbl	1(%rdx,%rax), %r8d
	movb	%r8b, 1(%rsi,%rcx)
	leaq	2(%rax), %r8
	cmpq	%r8, %rdi
	jle	.L2554
	movzbl	2(%rdx,%rax), %r8d
	addq	$3, %rax
	movb	%r8b, 2(%rsi,%rcx)
.L2549:
	addq	$3, %rcx
	cmpq	%rax, %rdi
	movl	$1, %r8d
	jle	.L2546
.L2555:
	testl	%r8d, %r8d
	je	.L2556
	addq	$5, %rcx
	xorl	%r8d, %r8d
	cmpq	%rax, %rdi
	jg	.L2555
.L2546:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2554:
	movq	%r8, %rax
	jmp	.L2549
	.cfi_endproc
.LFE184:
	.size	set_arbitrary_block_in_stack, .-set_arbitrary_block_in_stack
	.p2align 4,,15
	.globl	set_arbitrary_block_in_stack_with_offset
	.type	set_arbitrary_block_in_stack_with_offset, @function
set_arbitrary_block_in_stack_with_offset:
.LFB185:
	.cfi_startproc
	movq	%rdx, %rax
	movabsq	$6148914691236517206, %r9
	movq	%rdx, %r10
	imulq	%r9
	movq	%r10, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rsi,%rdx,8), %r8
	cmpq	%rax, %r10
	je	.L2574
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rdx
	addq	%r10, %rdx
	cmpq	$2, %rdx
	jg	.L2569
	testq	%rdi, %rdi
	jle	.L2569
	movl	$3, %r10d
	movq	%rdx, %rsi
	xorl	%eax, %eax
	subq	%rdx, %r10
	jmp	.L2561
	.p2align 4,,10
	.p2align 3
.L2575:
	cmpq	%rdi, %rax
	je	.L2560
.L2561:
	movzbl	(%rcx,%rax), %r9d
	addq	$1, %rax
	cmpq	%r10, %rax
	movb	%r9b, (%r8,%rsi)
	leaq	(%rax,%rdx), %rsi
	jne	.L2575
.L2560:
	addq	$8, %r8
.L2559:
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L2573:
	cmpq	%rax, %rdi
	jle	.L2557
.L2576:
	testl	%esi, %esi
	jne	.L2563
	movzbl	(%rcx,%rax), %esi
	movb	%sil, (%r8,%rdx)
	leaq	1(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L2571
	movzbl	1(%rcx,%rax), %esi
	movb	%sil, 1(%r8,%rdx)
	leaq	2(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L2571
	movzbl	2(%rcx,%rax), %esi
	addq	$3, %rax
	movb	%sil, 2(%r8,%rdx)
.L2564:
	addq	$3, %rdx
	cmpq	%rax, %rdi
	movl	$1, %esi
	jg	.L2576
.L2557:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2563:
	addq	$5, %rdx
	xorl	%esi, %esi
	jmp	.L2573
	.p2align 4,,10
	.p2align 3
.L2571:
	movq	%rsi, %rax
	jmp	.L2564
	.p2align 4,,10
	.p2align 3
.L2574:
	xorl	%eax, %eax
	jmp	.L2559
.L2569:
	xorl	%eax, %eax
	.p2align 4,,4
	jmp	.L2560
	.cfi_endproc
.LFE185:
	.size	set_arbitrary_block_in_stack_with_offset, .-set_arbitrary_block_in_stack_with_offset
	.section	.rodata.str1.1
.LC79:
	.string	"Printing stack memory:"
	.text
	.p2align 4,,15
	.globl	print_stack_mem
	.type	print_stack_mem, @function
print_stack_mem:
.LFB186:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	movl	$.LC79, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	xorl	%ebx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	puts
	cmpq	$0, total_stack_bytes_allocated(%rip)
	jle	.L2579
	.p2align 4,,10
	.p2align 3
.L2581:
	movzbl	0(%rbp,%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC10, %esi
	movl	$1, %edi
	addq	$1, %rbx
	call	__printf_chk
	cmpq	%rbx, total_stack_bytes_allocated(%rip)
	jg	.L2581
.L2579:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movl	$10, %edi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	putchar
	.cfi_endproc
.LFE186:
	.size	print_stack_mem, .-print_stack_mem
	.section	.rodata.str1.1
.LC80:
	.string	"Printing fun params:"
	.section	.rodata.str1.8
	.align 8
.LC81:
	.string	"Total size of all params in bytes: %ld\n"
	.align 8
.LC82:
	.string	"Total amount of chunks needed in secure stack: %ld\n"
	.section	.rodata.str1.1
.LC83:
	.string	"Number of char elements: %ld\n"
.LC84:
	.string	"Char elements:"
.LC85:
	.string	"%c "
.LC86:
	.string	"Number of int elements: %ld\n"
.LC87:
	.string	"Int elements:"
	.section	.rodata.str1.8
	.align 8
.LC88:
	.string	"Number of long int elements: %ld\n"
	.section	.rodata.str1.1
.LC89:
	.string	"Long int elements:"
.LC90:
	.string	"%ld "
	.section	.rodata.str1.8
	.align 8
.LC91:
	.string	"Number of float elements: %ld\n"
	.section	.rodata.str1.1
.LC92:
	.string	"Float elements:"
.LC93:
	.string	"%f "
	.section	.rodata.str1.8
	.align 8
.LC94:
	.string	"Number of double elements: %ld\n"
	.section	.rodata.str1.1
.LC95:
	.string	"Double elements:"
.LC96:
	.string	"%lf "
	.section	.rodata.str1.8
	.align 8
.LC97:
	.string	"Number of pointer elements: %ld\n"
	.section	.rodata.str1.1
.LC98:
	.string	"Pointer element sizes:"
.LC99:
	.string	"pointer elements:"
	.section	.rodata.str1.8
	.align 8
.LC100:
	.string	"Number of arb pointer elements: %ld\n"
	.section	.rodata.str1.1
.LC101:
	.string	"Arb pointer element sizes:"
.LC102:
	.string	"Arb pointers:"
	.text
	.p2align 4,,15
	.globl	print_fun_params
	.type	print_fun_params, @function
print_fun_params:
.LFB187:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movl	$.LC80, %edi
	call	puts
	movq	(%rbx), %rdx
	movl	$.LC81, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movq	8(%rbx), %rdx
	movl	$.LC82, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movq	16(%rbx), %rax
	movl	$.LC83, %esi
	movl	$1, %edi
	movq	(%rax), %r12
	xorl	%eax, %eax
	movq	%r12, %rdx
	call	__printf_chk
	testq	%r12, %r12
	jle	.L2584
	movl	$.LC84, %edi
	xorl	%ebp, %ebp
	call	puts
	.p2align 4,,10
	.p2align 3
.L2586:
	movq	16(%rbx), %rax
	movl	$.LC85, %esi
	movl	$1, %edi
	movq	8(%rax), %rax
	movsbl	(%rax,%rbp), %edx
	xorl	%eax, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L2586
	movl	$10, %edi
	call	putchar
.L2584:
	movq	16(%rbx), %rax
	movl	$.LC86, %esi
	movl	$1, %edi
	movq	16(%rax), %r12
	xorl	%eax, %eax
	movq	%r12, %rdx
	call	__printf_chk
	testq	%r12, %r12
	jle	.L2587
	movl	$.LC87, %edi
	xorl	%ebp, %ebp
	call	puts
	.p2align 4,,10
	.p2align 3
.L2589:
	movq	16(%rbx), %rax
	movl	$.LC24, %esi
	movl	$1, %edi
	movq	24(%rax), %rax
	movl	(%rax,%rbp,4), %edx
	xorl	%eax, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L2589
	movl	$10, %edi
	call	putchar
.L2587:
	movq	16(%rbx), %rax
	movl	$.LC88, %esi
	movl	$1, %edi
	movq	32(%rax), %r12
	xorl	%eax, %eax
	movq	%r12, %rdx
	call	__printf_chk
	testq	%r12, %r12
	jle	.L2590
	movl	$.LC89, %edi
	xorl	%ebp, %ebp
	call	puts
	.p2align 4,,10
	.p2align 3
.L2592:
	movq	16(%rbx), %rax
	movl	$.LC90, %esi
	movl	$1, %edi
	movq	40(%rax), %rax
	movq	(%rax,%rbp,8), %rdx
	xorl	%eax, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L2592
	movl	$10, %edi
	call	putchar
.L2590:
	movq	16(%rbx), %rax
	movl	$.LC91, %esi
	movl	$1, %edi
	movq	48(%rax), %r12
	xorl	%eax, %eax
	movq	%r12, %rdx
	call	__printf_chk
	testq	%r12, %r12
	jle	.L2593
	movl	$.LC92, %edi
	xorl	%ebp, %ebp
	call	puts
	.p2align 4,,10
	.p2align 3
.L2595:
	movq	16(%rbx), %rax
	movl	$.LC93, %esi
	movl	$1, %edi
	movq	56(%rax), %rax
	movss	(%rax,%rbp,4), %xmm0
	movl	$1, %eax
	addq	$1, %rbp
	cvtps2pd	%xmm0, %xmm0
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L2595
	movl	$10, %edi
	call	putchar
.L2593:
	movq	16(%rbx), %rax
	movl	$.LC94, %esi
	movl	$1, %edi
	movq	64(%rax), %r12
	xorl	%eax, %eax
	movq	%r12, %rdx
	call	__printf_chk
	testq	%r12, %r12
	jle	.L2596
	movl	$.LC95, %edi
	xorl	%ebp, %ebp
	call	puts
	.p2align 4,,10
	.p2align 3
.L2598:
	movq	16(%rbx), %rax
	movl	$.LC96, %esi
	movl	$1, %edi
	movq	72(%rax), %rax
	movsd	(%rax,%rbp,8), %xmm0
	movl	$1, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L2598
	movl	$10, %edi
	call	putchar
.L2596:
	movq	16(%rbx), %rax
	movl	$.LC97, %esi
	movl	$1, %edi
	movq	80(%rax), %r12
	xorl	%eax, %eax
	movq	%r12, %rdx
	call	__printf_chk
	testq	%r12, %r12
	jle	.L2599
	movl	$.LC98, %edi
	xorl	%ebp, %ebp
	call	puts
	.p2align 4,,10
	.p2align 3
.L2601:
	movq	16(%rbx), %rax
	movl	$.LC90, %esi
	movl	$1, %edi
	movq	88(%rax), %rax
	movq	(%rax,%rbp,8), %rdx
	xorl	%eax, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L2601
	movl	$10, %edi
	xorl	%ebp, %ebp
	call	putchar
	movl	$.LC99, %edi
	call	puts
	.p2align 4,,10
	.p2align 3
.L2603:
	movq	16(%rbx), %rax
	movl	$.LC90, %esi
	movl	$1, %edi
	movq	96(%rax), %rax
	movq	(%rax,%rbp,8), %rdx
	xorl	%eax, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L2603
	movl	$10, %edi
	call	putchar
.L2599:
	movq	16(%rbx), %rax
	movl	$.LC100, %esi
	movl	$1, %edi
	movq	104(%rax), %r12
	xorl	%eax, %eax
	movq	%r12, %rdx
	call	__printf_chk
	testq	%r12, %r12
	jle	.L2583
	movl	$.LC101, %edi
	xorl	%ebp, %ebp
	call	puts
	.p2align 4,,10
	.p2align 3
.L2606:
	movq	16(%rbx), %rax
	movl	$.LC90, %esi
	movl	$1, %edi
	movq	112(%rax), %rax
	movq	(%rax,%rbp,8), %rdx
	xorl	%eax, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L2606
	movl	$10, %edi
	xorl	%ebp, %ebp
	call	putchar
	movl	$.LC102, %edi
	call	puts
	.p2align 4,,10
	.p2align 3
.L2608:
	movq	16(%rbx), %rax
	movl	$.LC90, %esi
	movl	$1, %edi
	movq	120(%rax), %rax
	movq	(%rax,%rbp,8), %rdx
	xorl	%eax, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L2608
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	movl	$10, %edi
	jmp	putchar
	.p2align 4,,10
	.p2align 3
.L2583:
	.cfi_restore_state
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE187:
	.size	print_fun_params, .-print_fun_params
	.section	.rodata.str1.8
	.align 8
.LC103:
	.string	"Printing fun params that point in stack:"
	.text
	.p2align 4,,15
	.globl	print_fun_params_that_point_in_stack
	.type	print_fun_params_that_point_in_stack, @function
print_fun_params_that_point_in_stack:
.LFB188:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	movl	$.LC103, %edi
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	call	puts
	movq	(%rbx), %rdx
	movl	$.LC81, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movq	8(%rbx), %rdx
	movl	$.LC82, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movq	16(%rbx), %rax
	movl	$.LC83, %esi
	movl	$1, %edi
	movq	(%rax), %rbp
	xorl	%eax, %eax
	movq	%rbp, %rdx
	call	__printf_chk
	testq	%rbp, %rbp
	jle	.L2611
	movl	$.LC84, %edi
	xorl	%r13d, %r13d
	movabsq	$6148914691236517206, %r12
	call	puts
	jmp	.L2617
	.p2align 4,,10
	.p2align 3
.L2612:
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%r13, %rax
	cmpq	$2, %rax
	jg	.L2614
	movzbl	(%rcx,%rax), %ecx
	.p2align 4,,10
	.p2align 3
.L2615:
	xorl	%eax, %eax
	movsbl	%cl, %edx
	movl	$.LC85, %esi
	movl	$1, %edi
	addq	$1, %r13
	call	__printf_chk
	cmpq	%rbp, %r13
	je	.L2733
.L2617:
	movq	16(%rbx), %rax
	movq	8(%rax), %rcx
	movq	%r13, %rax
	imulq	%r12
	movq	%r13, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rcx,%rdx,8), %rcx
	cmpq	%rax, %r13
	jne	.L2612
	movzbl	(%rcx), %ecx
	jmp	.L2615
.L2733:
	movl	$10, %edi
	call	putchar
.L2611:
	movq	16(%rbx), %rax
	movl	$.LC86, %esi
	movl	$1, %edi
	movq	16(%rax), %rbp
	xorl	%eax, %eax
	movq	%rbp, %rdx
	call	__printf_chk
	testq	%rbp, %rbp
	jle	.L2618
	movl	$.LC87, %edi
	xorl	%r13d, %r13d
	movabsq	$6148914691236517206, %r12
	call	puts
	jmp	.L2628
	.p2align 4,,10
	.p2align 3
.L2619:
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2685
	movzbl	(%rdi,%rax), %edx
	cmpq	$2, %rax
	movb	%dl, (%rsp)
	je	.L2686
	movzbl	1(%rdi,%rax), %edx
	movb	%dl, 1(%rsp)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2687
	movzbl	2(%rdi,%rax), %edx
	movb	%dl, 2(%rsp)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2688
	movzbl	3(%rdi,%rax), %eax
	movb	%al, 3(%rsp)
.L2627:
	movl	(%rsp), %edx
	xorl	%eax, %eax
	movl	$.LC24, %esi
	movl	$1, %edi
	addq	$1, %r13
	call	__printf_chk
	cmpq	%rbp, %r13
	je	.L2734
.L2628:
	movq	16(%rbx), %rax
	leaq	0(,%r13,4), %rcx
	movq	24(%rax), %rsi
	movq	%rcx, %rax
	imulq	%r12
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rsi,%rdx,8), %rdi
	cmpq	%rcx, %rax
	jne	.L2619
	xorl	%ecx, %ecx
.L2680:
	xorl	%eax, %eax
	xorl	%esi, %esi
	jmp	.L2620
	.p2align 4,,10
	.p2align 3
.L2735:
	movzbl	(%rdi,%rax), %edx
	movb	%dl, (%rsp,%rcx)
	leaq	1(%rcx), %rdx
	cmpq	$4, %rdx
	je	.L2689
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rcx), %rdx
	cmpq	$3, %rdx
	movb	%sil, 1(%rsp,%rcx)
	jg	.L2690
	movzbl	2(%rdi,%rax), %esi
	addq	$3, %rcx
	movb	%sil, (%rsp,%rdx)
.L2625:
	addq	$3, %rax
	movl	$1, %esi
.L2626:
	cmpq	$3, %rcx
	jg	.L2627
.L2620:
	testl	%esi, %esi
	je	.L2735
	addq	$5, %rax
	xorl	%esi, %esi
	jmp	.L2626
	.p2align 4,,10
	.p2align 3
.L2689:
	movl	$4, %ecx
	jmp	.L2625
	.p2align 4,,10
	.p2align 3
.L2690:
	movq	%rdx, %rcx
	jmp	.L2625
.L2734:
	movl	$10, %edi
	call	putchar
.L2618:
	movq	16(%rbx), %rax
	movl	$.LC88, %esi
	movl	$1, %edi
	movq	32(%rax), %rbp
	xorl	%eax, %eax
	movq	%rbp, %rdx
	call	__printf_chk
	testq	%rbp, %rbp
	jle	.L2629
	movl	$.LC89, %edi
	xorl	%r13d, %r13d
	movabsq	$6148914691236517206, %r12
	call	puts
	jmp	.L2639
	.p2align 4,,10
	.p2align 3
.L2630:
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2691
	movzbl	(%rdi,%rax), %edx
	cmpq	$2, %rax
	movb	%dl, (%rsp)
	je	.L2692
	movzbl	1(%rdi,%rax), %edx
	movb	%dl, 1(%rsp)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2693
	movzbl	2(%rdi,%rax), %edx
	movb	%dl, 2(%rsp)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2694
	movzbl	3(%rdi,%rax), %edx
	movb	%dl, 3(%rsp)
	leaq	4(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2695
	movzbl	4(%rdi,%rax), %edx
	movb	%dl, 4(%rsp)
	leaq	5(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2696
	movzbl	5(%rdi,%rax), %edx
	movb	%dl, 5(%rsp)
	leaq	6(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2697
	movzbl	6(%rdi,%rax), %edx
	movb	%dl, 6(%rsp)
	leaq	7(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2698
	movzbl	7(%rdi,%rax), %eax
	movb	%al, 7(%rsp)
.L2638:
	movq	(%rsp), %rdx
	xorl	%eax, %eax
	movl	$.LC90, %esi
	movl	$1, %edi
	addq	$1, %r13
	call	__printf_chk
	cmpq	%rbp, %r13
	je	.L2736
.L2639:
	movq	16(%rbx), %rax
	leaq	0(,%r13,8), %rcx
	movq	40(%rax), %rsi
	movq	%rcx, %rax
	imulq	%r12
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rsi,%rdx,8), %rdi
	cmpq	%rcx, %rax
	jne	.L2630
	xorl	%ecx, %ecx
.L2681:
	xorl	%eax, %eax
	xorl	%esi, %esi
	jmp	.L2631
	.p2align 4,,10
	.p2align 3
.L2737:
	movzbl	(%rdi,%rax), %edx
	movb	%dl, (%rsp,%rcx)
	leaq	1(%rcx), %rdx
	cmpq	$8, %rdx
	je	.L2699
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rcx), %rdx
	cmpq	$7, %rdx
	movb	%sil, 1(%rsp,%rcx)
	jg	.L2700
	movzbl	2(%rdi,%rax), %esi
	addq	$3, %rcx
	movb	%sil, (%rsp,%rdx)
.L2636:
	addq	$3, %rax
	movl	$1, %esi
.L2637:
	cmpq	$7, %rcx
	jg	.L2638
.L2631:
	testl	%esi, %esi
	je	.L2737
	addq	$5, %rax
	xorl	%esi, %esi
	jmp	.L2637
	.p2align 4,,10
	.p2align 3
.L2699:
	movl	$8, %ecx
	jmp	.L2636
	.p2align 4,,10
	.p2align 3
.L2700:
	movq	%rdx, %rcx
	jmp	.L2636
.L2736:
	movl	$10, %edi
	call	putchar
.L2629:
	movq	16(%rbx), %rax
	movl	$.LC91, %esi
	movl	$1, %edi
	movq	48(%rax), %rbp
	xorl	%eax, %eax
	movq	%rbp, %rdx
	call	__printf_chk
	testq	%rbp, %rbp
	jle	.L2640
	movl	$.LC92, %edi
	xorl	%r13d, %r13d
	movabsq	$6148914691236517206, %r12
	call	puts
	jmp	.L2650
	.p2align 4,,10
	.p2align 3
.L2641:
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2701
	movzbl	(%rdi,%rax), %edx
	cmpq	$2, %rax
	movb	%dl, (%rsp)
	je	.L2702
	movzbl	1(%rdi,%rax), %edx
	movb	%dl, 1(%rsp)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2703
	movzbl	2(%rdi,%rax), %edx
	movb	%dl, 2(%rsp)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2704
	movzbl	3(%rdi,%rax), %eax
	movb	%al, 3(%rsp)
.L2649:
	movss	(%rsp), %xmm0
	movl	$.LC93, %esi
	movl	$1, %edi
	movl	$1, %eax
	addq	$1, %r13
	cvtps2pd	%xmm0, %xmm0
	call	__printf_chk
	cmpq	%rbp, %r13
	je	.L2738
.L2650:
	movq	16(%rbx), %rax
	leaq	0(,%r13,4), %rcx
	movq	56(%rax), %rsi
	movq	%rcx, %rax
	imulq	%r12
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rsi,%rdx,8), %rdi
	cmpq	%rcx, %rax
	jne	.L2641
	xorl	%ecx, %ecx
.L2682:
	xorl	%eax, %eax
	xorl	%esi, %esi
	jmp	.L2642
	.p2align 4,,10
	.p2align 3
.L2739:
	movzbl	(%rdi,%rax), %edx
	movb	%dl, (%rsp,%rcx)
	leaq	1(%rcx), %rdx
	cmpq	$4, %rdx
	je	.L2705
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rcx), %rdx
	cmpq	$3, %rdx
	movb	%sil, 1(%rsp,%rcx)
	jg	.L2706
	movzbl	2(%rdi,%rax), %esi
	addq	$3, %rcx
	movb	%sil, (%rsp,%rdx)
.L2647:
	addq	$3, %rax
	movl	$1, %esi
.L2648:
	cmpq	$3, %rcx
	jg	.L2649
.L2642:
	testl	%esi, %esi
	je	.L2739
	addq	$5, %rax
	xorl	%esi, %esi
	jmp	.L2648
	.p2align 4,,10
	.p2align 3
.L2705:
	movl	$4, %ecx
	jmp	.L2647
	.p2align 4,,10
	.p2align 3
.L2706:
	movq	%rdx, %rcx
	jmp	.L2647
.L2738:
	movl	$10, %edi
	call	putchar
.L2640:
	movq	16(%rbx), %rax
	movl	$.LC94, %esi
	movl	$1, %edi
	movq	64(%rax), %rbp
	xorl	%eax, %eax
	movq	%rbp, %rdx
	call	__printf_chk
	testq	%rbp, %rbp
	jle	.L2651
	movl	$.LC95, %edi
	xorl	%r13d, %r13d
	movabsq	$6148914691236517206, %r12
	call	puts
	jmp	.L2661
	.p2align 4,,10
	.p2align 3
.L2652:
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2707
	movzbl	(%rdi,%rax), %edx
	cmpq	$2, %rax
	movb	%dl, (%rsp)
	je	.L2708
	movzbl	1(%rdi,%rax), %edx
	movb	%dl, 1(%rsp)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2709
	movzbl	2(%rdi,%rax), %edx
	movb	%dl, 2(%rsp)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2710
	movzbl	3(%rdi,%rax), %edx
	movb	%dl, 3(%rsp)
	leaq	4(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2711
	movzbl	4(%rdi,%rax), %edx
	movb	%dl, 4(%rsp)
	leaq	5(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2712
	movzbl	5(%rdi,%rax), %edx
	movb	%dl, 5(%rsp)
	leaq	6(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2713
	movzbl	6(%rdi,%rax), %edx
	movb	%dl, 6(%rsp)
	leaq	7(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2714
	movzbl	7(%rdi,%rax), %eax
	movb	%al, 7(%rsp)
.L2660:
	movsd	(%rsp), %xmm0
	movl	$.LC96, %esi
	movl	$1, %edi
	movl	$1, %eax
	addq	$1, %r13
	call	__printf_chk
	cmpq	%rbp, %r13
	je	.L2740
.L2661:
	movq	16(%rbx), %rax
	leaq	0(,%r13,8), %rcx
	movq	72(%rax), %rsi
	movq	%rcx, %rax
	imulq	%r12
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rsi,%rdx,8), %rdi
	cmpq	%rcx, %rax
	jne	.L2652
	xorl	%ecx, %ecx
.L2683:
	xorl	%eax, %eax
	xorl	%esi, %esi
	jmp	.L2653
	.p2align 4,,10
	.p2align 3
.L2741:
	movzbl	(%rdi,%rax), %edx
	movb	%dl, (%rsp,%rcx)
	leaq	1(%rcx), %rdx
	cmpq	$8, %rdx
	je	.L2715
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rcx), %rdx
	cmpq	$7, %rdx
	movb	%sil, 1(%rsp,%rcx)
	jg	.L2716
	movzbl	2(%rdi,%rax), %esi
	addq	$3, %rcx
	movb	%sil, (%rsp,%rdx)
.L2658:
	addq	$3, %rax
	movl	$1, %esi
.L2659:
	cmpq	$7, %rcx
	jg	.L2660
.L2653:
	testl	%esi, %esi
	je	.L2741
	addq	$5, %rax
	xorl	%esi, %esi
	jmp	.L2659
	.p2align 4,,10
	.p2align 3
.L2715:
	movl	$8, %ecx
	jmp	.L2658
	.p2align 4,,10
	.p2align 3
.L2716:
	movq	%rdx, %rcx
	jmp	.L2658
.L2740:
	movl	$10, %edi
	call	putchar
.L2651:
	movq	16(%rbx), %rax
	movl	$.LC97, %esi
	movl	$1, %edi
	movq	80(%rax), %rbp
	xorl	%eax, %eax
	movq	%rbp, %rdx
	call	__printf_chk
	testq	%rbp, %rbp
	jle	.L2662
	movl	$.LC98, %edi
	xorl	%r12d, %r12d
	call	puts
	.p2align 4,,10
	.p2align 3
.L2664:
	movq	16(%rbx), %rax
	movl	$.LC90, %esi
	movl	$1, %edi
	movq	88(%rax), %rax
	movq	(%rax,%r12,8), %rdx
	xorl	%eax, %eax
	addq	$1, %r12
	call	__printf_chk
	cmpq	%rbp, %r12
	jne	.L2664
	movl	$10, %edi
	xorl	%r13d, %r13d
	movabsq	$6148914691236517206, %r12
	call	putchar
	movl	$.LC99, %edi
	call	puts
	jmp	.L2674
	.p2align 4,,10
	.p2align 3
.L2665:
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2717
	movzbl	(%rdi,%rax), %edx
	cmpq	$2, %rax
	movb	%dl, (%rsp)
	je	.L2718
	movzbl	1(%rdi,%rax), %edx
	movb	%dl, 1(%rsp)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2719
	movzbl	2(%rdi,%rax), %edx
	movb	%dl, 2(%rsp)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2720
	movzbl	3(%rdi,%rax), %edx
	movb	%dl, 3(%rsp)
	leaq	4(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2721
	movzbl	4(%rdi,%rax), %edx
	movb	%dl, 4(%rsp)
	leaq	5(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2722
	movzbl	5(%rdi,%rax), %edx
	movb	%dl, 5(%rsp)
	leaq	6(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2723
	movzbl	6(%rdi,%rax), %edx
	movb	%dl, 6(%rsp)
	leaq	7(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2724
	movzbl	7(%rdi,%rax), %eax
	movb	%al, 7(%rsp)
.L2673:
	movq	(%rsp), %rdx
	xorl	%eax, %eax
	movl	$.LC90, %esi
	movl	$1, %edi
	addq	$1, %r13
	call	__printf_chk
	cmpq	%rbp, %r13
	je	.L2742
.L2674:
	movq	16(%rbx), %rax
	leaq	0(,%r13,8), %rcx
	movq	96(%rax), %rsi
	movq	%rcx, %rax
	imulq	%r12
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rsi,%rdx,8), %rdi
	cmpq	%rcx, %rax
	jne	.L2665
	xorl	%ecx, %ecx
.L2684:
	xorl	%eax, %eax
	xorl	%esi, %esi
	jmp	.L2666
	.p2align 4,,10
	.p2align 3
.L2743:
	movzbl	(%rdi,%rax), %edx
	movb	%dl, (%rsp,%rcx)
	leaq	1(%rcx), %rdx
	cmpq	$8, %rdx
	je	.L2725
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rcx), %rdx
	cmpq	$7, %rdx
	movb	%sil, 1(%rsp,%rcx)
	jg	.L2726
	movzbl	2(%rdi,%rax), %esi
	addq	$3, %rcx
	movb	%sil, (%rsp,%rdx)
.L2671:
	addq	$3, %rax
	movl	$1, %esi
.L2672:
	cmpq	$7, %rcx
	jg	.L2673
.L2666:
	testl	%esi, %esi
	je	.L2743
	addq	$5, %rax
	xorl	%esi, %esi
	jmp	.L2672
	.p2align 4,,10
	.p2align 3
.L2725:
	movl	$8, %ecx
	jmp	.L2671
	.p2align 4,,10
	.p2align 3
.L2726:
	movq	%rdx, %rcx
	jmp	.L2671
.L2742:
	movl	$10, %edi
	call	putchar
.L2662:
	movq	16(%rbx), %rax
	movl	$.LC100, %esi
	movl	$1, %edi
	movq	104(%rax), %r12
	xorl	%eax, %eax
	movq	%r12, %rdx
	call	__printf_chk
	testq	%r12, %r12
	jle	.L2610
	movl	$.LC101, %edi
	xorl	%ebp, %ebp
	call	puts
	.p2align 4,,10
	.p2align 3
.L2677:
	movq	16(%rbx), %rax
	movl	$.LC90, %esi
	movl	$1, %edi
	movq	112(%rax), %rax
	movq	(%rax,%rbp,8), %rdx
	xorl	%eax, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L2677
	movl	$10, %edi
	xorl	%ebp, %ebp
	call	putchar
	movl	$.LC102, %edi
	call	puts
	.p2align 4,,10
	.p2align 3
.L2679:
	movq	16(%rbx), %rax
	movl	$.LC90, %esi
	movl	$1, %edi
	movq	120(%rax), %rax
	movq	(%rax,%rbp,8), %rdx
	xorl	%eax, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L2679
	movl	$10, %edi
	call	putchar
.L2610:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L2614:
	.cfi_restore_state
	addq	$8, %rcx
	movzbl	(%rcx), %ecx
	jmp	.L2615
.L2685:
	xorl	%ecx, %ecx
.L2621:
	addq	$8, %rdi
	jmp	.L2680
.L2691:
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L2632:
	addq	$8, %rdi
	jmp	.L2681
.L2701:
	xorl	%ecx, %ecx
.L2643:
	addq	$8, %rdi
	jmp	.L2682
.L2707:
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L2654:
	addq	$8, %rdi
	jmp	.L2683
.L2717:
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L2667:
	addq	$8, %rdi
	jmp	.L2684
.L2686:
	movl	$1, %ecx
	jmp	.L2621
.L2718:
	movl	$1, %ecx
	jmp	.L2667
.L2687:
	movl	$2, %ecx
	jmp	.L2621
.L2703:
	movl	$2, %ecx
	jmp	.L2643
.L2719:
	movl	$2, %ecx
	jmp	.L2667
.L2693:
	movl	$2, %ecx
	jmp	.L2632
.L2692:
	movl	$1, %ecx
	jmp	.L2632
.L2702:
	movl	$1, %ecx
	jmp	.L2643
.L2709:
	movl	$2, %ecx
	jmp	.L2654
.L2708:
	movl	$1, %ecx
	jmp	.L2654
.L2704:
	movl	$3, %ecx
	jmp	.L2643
.L2720:
	movl	$3, %ecx
	jmp	.L2667
.L2694:
	movl	$3, %ecx
	jmp	.L2632
.L2710:
	movl	$3, %ecx
	jmp	.L2654
.L2688:
	movl	$3, %ecx
	jmp	.L2621
.L2721:
	movl	$4, %ecx
	jmp	.L2667
.L2711:
	movl	$4, %ecx
	jmp	.L2654
.L2695:
	movl	$4, %ecx
	jmp	.L2632
.L2722:
	movl	$5, %ecx
	jmp	.L2667
.L2713:
	movl	$6, %ecx
	jmp	.L2654
.L2712:
	movl	$5, %ecx
	jmp	.L2654
.L2696:
	movl	$5, %ecx
	jmp	.L2632
.L2723:
	movl	$6, %ecx
	jmp	.L2667
.L2697:
	movl	$6, %ecx
	jmp	.L2632
.L2714:
	movl	$7, %ecx
	jmp	.L2654
.L2724:
	movl	$7, %ecx
	jmp	.L2667
.L2698:
	movl	$7, %ecx
	jmp	.L2632
	.cfi_endproc
.LFE188:
	.size	print_fun_params_that_point_in_stack, .-print_fun_params_that_point_in_stack
	.p2align 4,,15
	.globl	tower_of_Hanoi_init_secure_template
	.type	tower_of_Hanoi_init_secure_template, @function
tower_of_Hanoi_init_secure_template:
.LFB189:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	%edx, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	%ecx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movl	%edi, 12(%rsp)
	movl	$24, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L2762
	movq	$7, (%rax)
	movq	$3, 8(%rax)
	movl	$128, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r9
	je	.L2763
	movq	%rax, 16(%rbx)
	movl	$16, %ecx
	xorl	%eax, %eax
	movq	%r9, %rdi
	movq	last_unused_stack_memory(%rip), %r8
	rep stosq
	movq	entire_stack_memory_chunk(%rip), %rax
	addq	total_stack_bytes_allocated(%rip), %rax
	cmpq	%rax, last_unused_memory(%rip)
	leaq	8(%r8), %rsi
	movq	$3, (%r9)
	movq	$1, 16(%r9)
	movq	%rsi, last_unused_stack_memory(%rip)
	jnb	.L2764
	testq	%r8, %r8
	movq	%r8, 8(%r9)
	je	.L2749
	movb	%bpl, (%r8)
	movb	%r13b, 1(%r8)
	movb	%r12b, 2(%r8)
	movq	last_unused_stack_memory(%rip), %rsi
	movq	entire_stack_memory_chunk(%rip), %rdx
	addq	total_stack_bytes_allocated(%rip), %rdx
	cmpq	%rdx, last_unused_memory(%rip)
	movq	16(%rbx), %rdi
	leaq	16(%rsi), %rcx
	movq	%rcx, last_unused_stack_memory(%rip)
	jnb	.L2748
.L2750:
	testq	%rsi, %rsi
	movq	%rsi, 24(%rdi)
	je	.L2760
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%edi, %edi
	jmp	.L2757
	.p2align 4,,10
	.p2align 3
.L2765:
	movzbl	12(%rsp,%rcx), %eax
	movb	%al, (%rsi,%rdx)
	leaq	1(%rcx), %rax
	cmpq	$4, %rax
	je	.L2758
	movzbl	13(%rsp,%rcx), %eax
	movb	%al, 1(%rsi,%rdx)
	leaq	2(%rcx), %rax
	cmpq	$3, %rax
	jg	.L2759
	movzbl	12(%rsp,%rax), %eax
	addq	$3, %rcx
	movb	%al, 2(%rsi,%rdx)
.L2754:
	addq	$3, %rdx
	cmpq	$3, %rcx
	movl	$1, %edi
	jg	.L2760
.L2757:
	testl	%edi, %edi
	je	.L2765
	addq	$5, %rdx
	xorl	%edi, %edi
	cmpq	$3, %rcx
	jle	.L2757
.L2760:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2764:
	.cfi_restore_state
	movq	$0, 8(%r9)
	movq	%r9, %rdi
	movq	%r8, %rsi
.L2748:
	movq	$0, 24(%rdi)
	movq	%rsi, last_unused_stack_memory(%rip)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2758:
	.cfi_restore_state
	movl	$4, %ecx
	jmp	.L2754
	.p2align 4,,10
	.p2align 3
.L2759:
	movq	%rax, %rcx
	jmp	.L2754
.L2749:
	movq	$24, last_unused_stack_memory(%rip)
	movq	%r9, %rdi
	jmp	.L2750
.L2763:
	movl	$1556, %esi
	movl	$__func__.5673, %edi
	call	error_checking_malloc.part.0
.L2762:
	movl	$1546, %esi
	movl	$__func__.5673, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE189:
	.size	tower_of_Hanoi_init_secure_template, .-tower_of_Hanoi_init_secure_template
	.section	.rodata.str1.1
.LC104:
	.string	"Allocating double array"
.LC108:
	.string	"Initializing fun params"
	.section	.rodata.str1.8
	.align 8
.LC111:
	.string	"Inserting fun params into secure stack"
	.section	.rodata.str1.1
.LC112:
	.string	"Printing chars"
.LC113:
	.string	"Printing ints"
.LC114:
	.string	"Printing doubles"
.LC115:
	.string	"Changing pointer"
.LC116:
	.string	"Printing array of doubles"
.LC117:
	.string	"i=%d, %lf "
	.section	.rodata.str1.8
	.align 8
.LC118:
	.string	"Fetching double array using arbitrary block"
	.align 8
.LC119:
	.string	"Fetching double array elements (one by one), using arbitrary blocks"
	.text
	.p2align 4,,15
	.globl	stack_fun_params_test
	.type	stack_fun_params_test, @function
stack_fun_params_test:
.LFB190:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	$.LC104, %edi
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$152, %rsp
	.cfi_def_cfa_offset 192
	call	puts
	movl	$80, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L2916
	salq	$60, %rax
	shrq	$63, %rax
	testl	%eax, %eax
	je	.L2855
	movsd	.LC105(%rip), %xmm6
	movl	$9, %esi
	movl	$1, %ecx
	movsd	%xmm6, (%rbx)
.L2768:
	leal	1(%rcx), %edi
	movl	%eax, %eax
	cmpl	$9, %esi
	leaq	(%rbx,%rax,8), %rdx
	leal	8(%rcx), %eax
	movl	%edi, 116(%rsp)
	leal	2(%rcx), %edi
	movd	116(%rsp), %xmm5
	cltq
	movl	%edi, 120(%rsp)
	leal	3(%rcx), %edi
	movd	120(%rsp), %xmm1
	movl	%ecx, 120(%rsp)
	movl	%edi, 124(%rsp)
	movd	120(%rsp), %xmm0
	movd	124(%rsp), %xmm4
	punpckldq	%xmm5, %xmm0
	punpckldq	%xmm4, %xmm1
	punpcklqdq	%xmm1, %xmm0
	movdqa	.LC106(%rip), %xmm1
	movdqa	%xmm0, %xmm2
	paddd	.LC107(%rip), %xmm0
	paddd	%xmm1, %xmm0
	paddd	%xmm1, %xmm2
	cvtdq2pd	%xmm0, %xmm1
	cvtdq2pd	%xmm2, %xmm3
	pshufd	$238, %xmm0, %xmm0
	movlpd	%xmm3, (%rdx)
	pshufd	$238, %xmm2, %xmm2
	movhpd	%xmm3, 8(%rdx)
	movlpd	%xmm1, 32(%rdx)
	cvtdq2pd	%xmm0, %xmm0
	movhpd	%xmm1, 40(%rdx)
	movlpd	%xmm0, 48(%rdx)
	cvtdq2pd	%xmm2, %xmm2
	movhpd	%xmm0, 56(%rdx)
	movlpd	%xmm2, 16(%rdx)
	movhpd	%xmm2, 24(%rdx)
	leal	108(%rcx), %edx
	cvtsi2sd	%edx, %xmm0
	movsd	%xmm0, (%rbx,%rax,8)
	leal	9(%rcx), %eax
	je	.L2769
	addl	$109, %ecx
	cltq
	cvtsi2sd	%ecx, %xmm0
	movsd	%xmm0, (%rbx,%rax,8)
.L2769:
	movl	$.LC108, %edi
	movabsq	$6148914691236517206, %r12
	call	puts
	movsd	.LC109(%rip), %xmm1
	movl	$102, %r9d
	movsd	.LC110(%rip), %xmm0
	movl	$101, %r8d
	movl	$100, %ecx
	movl	$99, %edx
	movl	$5, %esi
	movq	%rbx, 96(%rsp)
	movl	$1, %edi
	movq	$80, 88(%rsp)
	movq	$1, 80(%rsp)
	movl	$424242, 72(%rsp)
	movl	$2, %eax
	movq	$10, 64(%rsp)
	movq	$1, 56(%rsp)
	movq	$2, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$41, 24(%rsp)
	movl	$42, 16(%rsp)
	movq	$2, 8(%rsp)
	movl	$103, (%rsp)
	call	init_function_params
	movl	$.LC111, %edi
	movq	%rax, %rbx
	call	puts
	movq	%rbx, %rdi
	call	put_fun_params_into_secure_stack
	movq	%rbx, %rdi
	movq	%rax, %rbp
	xorl	%ebx, %ebx
	call	free_fun_params
	movl	$.LC112, %edi
	call	puts
	jmp	.L2775
	.p2align 4,,10
	.p2align 3
.L2770:
	movq	%rdx, %rax
	leaq	(%rcx,%rdx,8), %rcx
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rbx, %rax
	cmpq	$2, %rax
	jg	.L2772
	movsbl	(%rcx,%rax), %edx
	.p2align 4,,10
	.p2align 3
.L2773:
	xorl	%eax, %eax
	movl	$.LC85, %esi
	movl	$1, %edi
	addq	$1, %rbx
	call	__printf_chk
	cmpq	$5, %rbx
	je	.L2917
.L2775:
	movq	16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rbx, %rax
	imulq	%r12
	movq	%rbx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	cmpq	%rax, %rbx
	jne	.L2770
	leaq	(%rcx,%rdx,8), %rdx
.L2771:
	movsbl	(%rdx), %edx
	jmp	.L2773
.L2917:
	movl	$10, %edi
	xorl	%r12d, %r12d
	movabsq	$6148914691236517206, %rbx
	call	putchar
	movl	$.LC113, %edi
	call	puts
.L2785:
	movq	16(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%r12, %rax
	imulq	%rbx
	movq	%r12, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rcx,%rdx,8), %rdi
	cmpq	%rax, %r12
	je	.L2918
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%r12, %rax
	cmpq	$2, %rax
	jg	.L2856
	movzbl	(%rdi,%rax), %edx
	cmpq	$2, %rax
	movb	%dl, 128(%rsp)
	je	.L2857
	movzbl	1(%rdi,%rax), %edx
	movb	%dl, 129(%rsp)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2858
	movzbl	2(%rdi,%rax), %edx
	movb	%dl, 130(%rsp)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2859
	movzbl	3(%rdi,%rax), %eax
	movb	%al, 131(%rsp)
.L2784:
	movl	128(%rsp), %edx
	xorl	%eax, %eax
	movl	$.LC24, %esi
	movl	$1, %edi
	addq	$4, %r12
	call	__printf_chk
	cmpq	$8, %r12
	jne	.L2785
	movl	$10, %edi
	xorl	%r12d, %r12d
	movabsq	$6148914691236517206, %rbx
	call	putchar
	movl	$.LC114, %edi
	call	puts
.L2795:
	movq	16(%rbp), %rax
	movq	72(%rax), %rcx
	movq	%r12, %rax
	imulq	%rbx
	movq	%r12, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rcx,%rdx,8), %rdi
	cmpq	%rax, %r12
	je	.L2919
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rdx
	addq	%r12, %rdx
	cmpq	$2, %rdx
	jg	.L2862
	movzbl	(%rdi,%rdx), %eax
	cmpq	$2, %rdx
	movb	%al, 128(%rsp)
	je	.L2863
	movzbl	1(%rdi,%rdx), %eax
	movb	%al, 129(%rsp)
	leaq	2(%rdx), %rax
	cmpq	$2, %rax
	jg	.L2864
	movzbl	2(%rdi,%rdx), %eax
	movb	%al, 130(%rsp)
	leaq	3(%rdx), %rax
	cmpq	$2, %rax
	jg	.L2865
	movzbl	3(%rdi,%rdx), %eax
	movb	%al, 131(%rsp)
	leaq	4(%rdx), %rax
	cmpq	$2, %rax
	jg	.L2866
	movzbl	4(%rdi,%rdx), %eax
	movb	%al, 132(%rsp)
	leaq	5(%rdx), %rax
	cmpq	$2, %rax
	jg	.L2867
	movzbl	5(%rdi,%rdx), %eax
	movb	%al, 133(%rsp)
	leaq	6(%rdx), %rax
	cmpq	$2, %rax
	jg	.L2868
	movzbl	6(%rdi,%rdx), %eax
	movb	%al, 134(%rsp)
	leaq	7(%rdx), %rax
	cmpq	$2, %rax
	jg	.L2869
	movzbl	7(%rdi,%rdx), %eax
	movb	%al, 135(%rsp)
.L2794:
	movsd	128(%rsp), %xmm0
	movl	$.LC96, %esi
	movl	$1, %edi
	movl	$1, %eax
	addq	$8, %r12
	call	__printf_chk
	cmpq	$16, %r12
	jne	.L2795
	movl	$10, %edi
	call	putchar
	movl	$.LC115, %edi
	call	puts
	movq	16(%rbp), %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	96(%rax), %rsi
	movq	24(%rax), %rax
	movq	%rax, 128(%rsp)
	xorl	%eax, %eax
	jmp	.L2800
	.p2align 4,,10
	.p2align 3
.L2921:
	movzbl	128(%rsp,%rdx), %ecx
	movb	%cl, (%rsi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L2872
	movzbl	129(%rsp,%rdx), %ecx
	movb	%cl, 1(%rsi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L2873
	movzbl	128(%rsp,%rcx), %ecx
	addq	$3, %rdx
	movb	%cl, 2(%rsi,%rax)
.L2797:
	addq	$3, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L2920
.L2800:
	testl	%ecx, %ecx
	je	.L2921
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L2800
.L2920:
	movq	16(%rbp), %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	96(%rax), %rsi
	xorl	%eax, %eax
	jmp	.L2805
	.p2align 4,,10
	.p2align 3
.L2923:
	movzbl	(%rsi,%rax), %ecx
	movb	%cl, 128(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L2874
	movzbl	1(%rsi,%rax), %edi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%dil, 129(%rsp,%rdx)
	jg	.L2875
	movzbl	2(%rsi,%rax), %edi
	addq	$3, %rdx
	movb	%dil, 128(%rsp,%rcx)
.L2802:
	addq	$3, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L2922
.L2805:
	testl	%ecx, %ecx
	je	.L2923
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L2805
.L2922:
	movq	128(%rsp), %rsi
	xorl	%edx, %edx
	movl	$45, 128(%rsp)
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2810
	.p2align 4,,10
	.p2align 3
.L2925:
	movzbl	128(%rsp,%rdx), %ecx
	movb	%cl, (%rsi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$4, %rcx
	je	.L2876
	movzbl	129(%rsp,%rdx), %ecx
	movb	%cl, 1(%rsi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$3, %rcx
	jg	.L2877
	movzbl	128(%rsp,%rcx), %ecx
	addq	$3, %rdx
	movb	%cl, 2(%rsi,%rax)
.L2807:
	addq	$3, %rax
	cmpq	$3, %rdx
	movl	$1, %ecx
	jg	.L2924
.L2810:
	testl	%ecx, %ecx
	je	.L2925
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$3, %rdx
	jle	.L2810
.L2924:
	movl	$.LC113, %edi
	xorl	%r12d, %r12d
	movabsq	$6148914691236517206, %rbx
	call	puts
.L2820:
	movq	16(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%r12, %rax
	imulq	%rbx
	movq	%r12, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rcx,%rdx,8), %rdi
	cmpq	%rax, %r12
	je	.L2926
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%r12, %rax
	cmpq	$2, %rax
	jg	.L2878
	movzbl	(%rdi,%rax), %edx
	cmpq	$2, %rax
	movb	%dl, 128(%rsp)
	je	.L2879
	movzbl	1(%rdi,%rax), %edx
	movb	%dl, 129(%rsp)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2880
	movzbl	2(%rdi,%rax), %edx
	movb	%dl, 130(%rsp)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2881
	movzbl	3(%rdi,%rax), %eax
	movb	%al, 131(%rsp)
.L2819:
	movl	128(%rsp), %edx
	xorl	%eax, %eax
	movl	$.LC24, %esi
	movl	$1, %edi
	addq	$4, %r12
	call	__printf_chk
	cmpq	$8, %r12
	jne	.L2820
	movl	$10, %edi
	xorl	%r12d, %r12d
	movabsq	$6148914691236517206, %rbx
	call	putchar
	movl	$.LC116, %edi
	call	puts
	jmp	.L2830
	.p2align 4,,10
	.p2align 3
.L2821:
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2884
	movzbl	(%rdi,%rax), %edx
	cmpq	$2, %rax
	movb	%dl, 128(%rsp)
	je	.L2885
	movzbl	1(%rdi,%rax), %edx
	movb	%dl, 129(%rsp)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2886
	movzbl	2(%rdi,%rax), %edx
	movb	%dl, 130(%rsp)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2887
	movzbl	3(%rdi,%rax), %edx
	movb	%dl, 131(%rsp)
	leaq	4(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2888
	movzbl	4(%rdi,%rax), %edx
	movb	%dl, 132(%rsp)
	leaq	5(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2889
	movzbl	5(%rdi,%rax), %edx
	movb	%dl, 133(%rsp)
	leaq	6(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2890
	movzbl	6(%rdi,%rax), %edx
	movb	%dl, 134(%rsp)
	leaq	7(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2891
	movzbl	7(%rdi,%rax), %eax
	movb	%al, 135(%rsp)
.L2829:
	movsd	128(%rsp), %xmm0
	movl	%r9d, %edx
	movl	$.LC117, %esi
	movl	$1, %edi
	movl	$1, %eax
	addq	$1, %r12
	call	__printf_chk
	cmpq	$10, %r12
	je	.L2927
.L2830:
	movq	16(%rbp), %rax
	leaq	0(,%r12,8), %rcx
	movl	%r12d, %r9d
	movq	120(%rax), %rax
	movq	(%rax), %rsi
	movq	%rcx, %rax
	imulq	%rbx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rsi,%rdx,8), %rdi
	cmpq	%rcx, %rax
	jne	.L2821
	xorl	%esi, %esi
.L2853:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	.L2822
	.p2align 4,,10
	.p2align 3
.L2928:
	movzbl	(%rdi,%rcx), %eax
	movb	%al, 128(%rsp,%rsi)
	leaq	1(%rsi), %rax
	cmpq	$8, %rax
	je	.L2892
	movzbl	1(%rdi,%rcx), %r8d
	leaq	2(%rsi), %rax
	cmpq	$7, %rax
	movb	%r8b, 129(%rsp,%rsi)
	jg	.L2893
	movzbl	2(%rdi,%rcx), %edx
	addq	$3, %rsi
	movb	%dl, 128(%rsp,%rax)
.L2827:
	addq	$3, %rcx
	movl	$1, %eax
.L2828:
	cmpq	$7, %rsi
	jg	.L2829
.L2822:
	testl	%eax, %eax
	je	.L2928
	addq	$5, %rcx
	xorl	%eax, %eax
	jmp	.L2828
	.p2align 4,,10
	.p2align 3
.L2892:
	movl	$8, %esi
	jmp	.L2827
	.p2align 4,,10
	.p2align 3
.L2893:
	movq	%rax, %rsi
	jmp	.L2827
.L2927:
	movl	$.LC118, %edi
	call	puts
	movl	$80, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r12
	je	.L2929
	movq	16(%rbp), %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	120(%rax), %rax
	movq	(%rax), %rsi
	xorl	%eax, %eax
	jmp	.L2836
	.p2align 4,,10
	.p2align 3
.L2931:
	movzbl	(%rsi,%rcx), %eax
	cmpq	$79, %rdx
	movb	%al, (%r12,%rdx)
	je	.L2894
	movzbl	1(%rsi,%rcx), %eax
	movb	%al, 1(%r12,%rdx)
	leaq	2(%rdx), %rax
	cmpq	$79, %rax
	jg	.L2895
	movzbl	2(%rsi,%rcx), %eax
	movb	%al, 2(%r12,%rdx)
	addq	$3, %rdx
.L2833:
	addq	$3, %rcx
	cmpq	$79, %rdx
	movl	$1, %eax
	jg	.L2930
.L2836:
	testl	%eax, %eax
	je	.L2931
	addq	$5, %rcx
	xorl	%eax, %eax
	cmpq	$79, %rdx
	jle	.L2836
.L2930:
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L2838:
	movsd	(%r12,%rbx), %xmm0
	movl	$.LC71, %esi
	movl	$1, %edi
	movl	$1, %eax
	addq	$8, %rbx
	call	__printf_chk
	cmpq	$80, %rbx
	jne	.L2838
	movl	$10, %edi
	call	putchar
	movl	$.LC119, %edi
	call	puts
	movl	$80, %edi
	call	malloc
	testq	%rax, %rax
	je	.L2932
	movq	%rax, %rbx
	xorl	%r13d, %r13d
	movabsq	$6148914691236517206, %r12
	jmp	.L2849
	.p2align 4,,10
	.p2align 3
.L2840:
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rdx
	addq	%r13, %rdx
	cmpq	$2, %rdx
	jg	.L2896
	movzbl	(%rdi,%rdx), %eax
	cmpq	$2, %rdx
	movb	%al, (%rbx)
	je	.L2897
	movzbl	1(%rdi,%rdx), %eax
	movb	%al, 1(%rbx)
	leaq	2(%rdx), %rax
	cmpq	$2, %rax
	jg	.L2898
	movzbl	2(%rdi,%rdx), %eax
	movb	%al, 2(%rbx)
	leaq	3(%rdx), %rax
	cmpq	$2, %rax
	jg	.L2899
	movzbl	3(%rdi,%rdx), %eax
	movb	%al, 3(%rbx)
	leaq	4(%rdx), %rax
	cmpq	$2, %rax
	jg	.L2900
	movzbl	4(%rdi,%rdx), %eax
	movb	%al, 4(%rbx)
	leaq	5(%rdx), %rax
	cmpq	$2, %rax
	jg	.L2901
	movzbl	5(%rdi,%rdx), %eax
	movb	%al, 5(%rbx)
	leaq	6(%rdx), %rax
	cmpq	$2, %rax
	jg	.L2902
	movzbl	6(%rdi,%rdx), %eax
	movb	%al, 6(%rbx)
	leaq	7(%rdx), %rax
	cmpq	$2, %rax
	jg	.L2903
	movzbl	7(%rdi,%rdx), %eax
	movb	%al, 7(%rbx)
.L2848:
	movsd	(%rbx), %xmm0
	movl	$.LC71, %esi
	movl	$1, %edi
	movl	$1, %eax
	addq	$8, %r13
	addq	$8, %rbx
	call	__printf_chk
	cmpq	$80, %r13
	je	.L2933
.L2849:
	movq	16(%rbp), %rax
	movq	120(%rax), %rax
	movq	(%rax), %rcx
	movq	%r13, %rax
	imulq	%r12
	movq	%r13, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rcx,%rdx,8), %rdi
	cmpq	%rax, %r13
	jne	.L2840
	xorl	%edx, %edx
.L2854:
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	jmp	.L2841
	.p2align 4,,10
	.p2align 3
.L2934:
	movzbl	(%rdi,%rcx), %esi
	cmpq	$7, %rdx
	movb	%sil, (%rbx,%rdx)
	je	.L2904
	movzbl	1(%rdi,%rcx), %eax
	leaq	2(%rdx), %rsi
	cmpq	$7, %rsi
	movb	%al, 1(%rdx,%rbx)
	jg	.L2905
	movzbl	2(%rdi,%rcx), %eax
	addq	$3, %rdx
	movb	%al, -1(%rdx,%rbx)
.L2846:
	addq	$3, %rcx
	movl	$1, %esi
.L2847:
	cmpq	$7, %rdx
	jg	.L2848
.L2841:
	testl	%esi, %esi
	je	.L2934
	addq	$5, %rcx
	xorl	%esi, %esi
	jmp	.L2847
	.p2align 4,,10
	.p2align 3
.L2904:
	movl	$8, %edx
	jmp	.L2846
	.p2align 4,,10
	.p2align 3
.L2905:
	movq	%rsi, %rdx
	jmp	.L2846
.L2933:
	movl	$10, %edi
	call	putchar
	addq	$152, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L2926:
	.cfi_restore_state
	xorl	%ecx, %ecx
.L2852:
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.L2812
	.p2align 4,,10
	.p2align 3
.L2935:
	movzbl	(%rdi,%rdx), %esi
	movb	%sil, 128(%rsp,%rcx)
	leaq	1(%rcx), %rsi
	cmpq	$4, %rsi
	je	.L2882
	movzbl	1(%rdi,%rdx), %r8d
	leaq	2(%rcx), %rsi
	cmpq	$3, %rsi
	movb	%r8b, 129(%rsp,%rcx)
	jg	.L2883
	movzbl	2(%rdi,%rdx), %eax
	addq	$3, %rcx
	movb	%al, 128(%rsp,%rsi)
.L2817:
	addq	$3, %rdx
	movl	$1, %esi
.L2818:
	cmpq	$3, %rcx
	jg	.L2819
.L2812:
	testl	%esi, %esi
	je	.L2935
	addq	$5, %rdx
	xorl	%esi, %esi
	jmp	.L2818
.L2919:
	xorl	%edx, %edx
.L2851:
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	jmp	.L2787
	.p2align 4,,10
	.p2align 3
.L2936:
	movzbl	(%rdi,%rcx), %esi
	movb	%sil, 128(%rsp,%rdx)
	leaq	1(%rdx), %rsi
	cmpq	$8, %rsi
	je	.L2870
	movzbl	1(%rdi,%rcx), %eax
	leaq	2(%rdx), %rsi
	cmpq	$7, %rsi
	movb	%al, 129(%rsp,%rdx)
	jg	.L2871
	movzbl	2(%rdi,%rcx), %eax
	addq	$3, %rdx
	movb	%al, 128(%rsp,%rsi)
.L2792:
	addq	$3, %rcx
	movl	$1, %esi
.L2793:
	cmpq	$7, %rdx
	jg	.L2794
.L2787:
	testl	%esi, %esi
	je	.L2936
	addq	$5, %rcx
	xorl	%esi, %esi
	jmp	.L2793
.L2918:
	xorl	%ecx, %ecx
.L2850:
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.L2777
	.p2align 4,,10
	.p2align 3
.L2937:
	movzbl	(%rdi,%rdx), %esi
	movb	%sil, 128(%rsp,%rcx)
	leaq	1(%rcx), %rsi
	cmpq	$4, %rsi
	je	.L2860
	movzbl	1(%rdi,%rdx), %r8d
	leaq	2(%rcx), %rsi
	cmpq	$3, %rsi
	movb	%r8b, 129(%rsp,%rcx)
	jg	.L2861
	movzbl	2(%rdi,%rdx), %eax
	addq	$3, %rcx
	movb	%al, 128(%rsp,%rsi)
.L2782:
	addq	$3, %rdx
	movl	$1, %esi
.L2783:
	cmpq	$3, %rcx
	jg	.L2784
.L2777:
	testl	%esi, %esi
	je	.L2937
	addq	$5, %rdx
	xorl	%esi, %esi
	jmp	.L2783
.L2882:
	movl	$4, %ecx
	jmp	.L2817
.L2860:
	movl	$4, %ecx
	jmp	.L2782
.L2870:
	movl	$8, %edx
	jmp	.L2792
.L2871:
	movq	%rsi, %rdx
	jmp	.L2792
.L2883:
	movq	%rsi, %rcx
	jmp	.L2817
.L2861:
	movq	%rsi, %rcx
	.p2align 4,,2
	jmp	.L2782
.L2855:
	movl	$10, %esi
	xorl	%ecx, %ecx
	jmp	.L2768
.L2896:
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L2842:
	addq	$8, %rdi
	jmp	.L2854
.L2884:
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L2823:
	addq	$8, %rdi
	jmp	.L2853
.L2897:
	movl	$1, %edx
	jmp	.L2842
.L2885:
	movl	$1, %esi
	jmp	.L2823
.L2898:
	movl	$2, %edx
	jmp	.L2842
.L2886:
	movl	$2, %esi
	jmp	.L2823
.L2899:
	movl	$3, %edx
	jmp	.L2842
.L2887:
	movl	$3, %esi
	jmp	.L2823
.L2900:
	movl	$4, %edx
	jmp	.L2842
.L2888:
	movl	$4, %esi
	jmp	.L2823
.L2901:
	movl	$5, %edx
	jmp	.L2842
.L2889:
	movl	$5, %esi
	jmp	.L2823
.L2902:
	movl	$6, %edx
	jmp	.L2842
.L2890:
	movl	$6, %esi
	jmp	.L2823
.L2903:
	movl	$7, %edx
	jmp	.L2842
.L2891:
	movl	$7, %esi
	jmp	.L2823
.L2894:
	movl	$80, %edx
	jmp	.L2833
.L2876:
	movl	$4, %edx
	jmp	.L2807
.L2874:
	movl	$8, %edx
	jmp	.L2802
.L2872:
	movl	$8, %edx
	jmp	.L2797
.L2875:
	movq	%rcx, %rdx
	jmp	.L2802
.L2873:
	movq	%rcx, %rdx
	jmp	.L2797
.L2877:
	movq	%rcx, %rdx
	.p2align 4,,2
	jmp	.L2807
.L2895:
	movq	%rax, %rdx
	.p2align 4,,2
	jmp	.L2833
.L2772:
	leaq	8(%rcx), %rdx
	jmp	.L2771
.L2856:
	xorl	%ecx, %ecx
.L2778:
	addq	$8, %rdi
	jmp	.L2850
.L2862:
	xorl	%edx, %edx
.L2788:
	addq	$8, %rdi
	jmp	.L2851
.L2878:
	xorl	%ecx, %ecx
.L2813:
	addq	$8, %rdi
	jmp	.L2852
.L2863:
	movl	$1, %edx
	jmp	.L2788
.L2879:
	movl	$1, %ecx
	jmp	.L2813
.L2858:
	movl	$2, %ecx
	jmp	.L2778
.L2859:
	movl	$3, %ecx
	jmp	.L2778
.L2857:
	movl	$1, %ecx
	jmp	.L2778
.L2880:
	movl	$2, %ecx
	jmp	.L2813
.L2881:
	movl	$3, %ecx
	jmp	.L2813
.L2866:
	movl	$4, %edx
	jmp	.L2788
.L2867:
	movl	$5, %edx
	jmp	.L2788
.L2868:
	movl	$6, %edx
	jmp	.L2788
.L2869:
	movl	$7, %edx
	jmp	.L2788
.L2864:
	movl	$2, %edx
	jmp	.L2788
.L2865:
	movl	$3, %edx
	jmp	.L2788
.L2932:
	movl	$66, %esi
	movl	$__func__.5679, %edi
	call	error_checking_malloc.part.0
.L2916:
	movl	$9, %esi
	movl	$__func__.5679, %edi
	call	error_checking_malloc.part.0
.L2929:
	movl	$57, %esi
	movl	$__func__.5679, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE190:
	.size	stack_fun_params_test, .-stack_fun_params_test
	.p2align 4,,15
	.globl	towerOfHanoi
	.type	towerOfHanoi, @function
towerOfHanoi:
.LFB191:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leal	-1(%rdi), %eax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edi, %ebx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	cmpl	$1, %eax
	jbe	.L2938
	cmpl	$3, %edi
	je	.L2938
	leal	-3(%rdi), %eax
	cmpl	$1, %eax
	je	.L2938
	leal	-4(%rdi), %r10d
	movl	%esi, %r13d
	movl	%edx, %r9d
	movl	%ecx, %r8d
	cmpl	$1, %r10d
	je	.L2940
	leal	-5(%rdi), %r14d
	movsbl	%dl, %r12d
	movsbl	%cl, %ebp
	movsbl	%sil, %r15d
	movl	%edx, 4(%rsp)
	movl	%ecx, (%rsp)
	movl	%ebp, %edx
	movl	%r12d, %ecx
	movl	%r15d, %esi
	movl	%r14d, %edi
	movl	%r10d, 12(%rsp)
	movl	%eax, 8(%rsp)
	call	towerOfHanoi
	movl	%r15d, %ecx
	movl	%r12d, %edx
	movl	%ebp, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%ebp, %ecx
	movl	%r15d, %edx
	movl	%r12d, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%r12d, %ecx
	movl	%ebp, %edx
	movl	%r15d, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%r15d, %ecx
	movl	%r12d, %edx
	movl	%ebp, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%ebp, %ecx
	movl	%r15d, %edx
	movl	%r12d, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%r12d, %ecx
	movl	%ebp, %edx
	movl	%r15d, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%r15d, %ecx
	movl	%r12d, %edx
	movl	%ebp, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%ebp, %ecx
	movl	%r15d, %edx
	movl	%r12d, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%r12d, %ecx
	movl	%ebp, %edx
	movl	%r15d, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%r15d, %ecx
	movl	%r12d, %edx
	movl	%ebp, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%ebp, %ecx
	movl	%r15d, %edx
	movl	%r12d, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%r12d, %ecx
	movl	%ebp, %edx
	movl	%r15d, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%r15d, %ecx
	movl	%r12d, %edx
	movl	%ebp, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%ebp, %ecx
	movl	%r15d, %edx
	movl	%r12d, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%r12d, %ecx
	movl	%ebp, %edx
	movl	%r15d, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	12(%rsp), %r10d
	movl	8(%rsp), %eax
	movl	4(%rsp), %r9d
	movl	(%rsp), %r8d
.L2940:
	cmpl	$1, %eax
	je	.L2938
	cmpl	$1, %r10d
	je	.L2938
	movsbl	%r9b, %r12d
	movsbl	%r8b, %ebp
	movsbl	%r13b, %r13d
	subl	$5, %ebx
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movl	%ebp, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%ebp, %ecx
	movl	%r13d, %edx
	movl	%r12d, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%r12d, %ecx
	movl	%ebp, %edx
	movl	%r13d, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movl	%ebp, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%ebp, %ecx
	movl	%r13d, %edx
	movl	%r12d, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%r12d, %ecx
	movl	%ebp, %edx
	movl	%r13d, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movl	%ebp, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%ebp, %ecx
	movl	%r13d, %edx
	movl	%r12d, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%r12d, %ecx
	movl	%ebp, %edx
	movl	%r13d, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movl	%ebp, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%ebp, %ecx
	movl	%r13d, %edx
	movl	%r12d, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%r12d, %ecx
	movl	%ebp, %edx
	movl	%r13d, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movl	%ebp, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%ebp, %ecx
	movl	%r13d, %edx
	movl	%r12d, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%r12d, %ecx
	movl	%ebp, %edx
	movl	%r13d, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%ebx, %edi
	movl	%ebp, %esi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	movl	%r12d, %edx
	movl	%r13d, %ecx
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	towerOfHanoi
	.p2align 4,,10
	.p2align 3
.L2938:
	.cfi_restore_state
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE191:
	.size	towerOfHanoi, .-towerOfHanoi
	.p2align 4,,15
	.globl	towerOfHanoi_secure
	.type	towerOfHanoi_secure, @function
towerOfHanoi_secure:
.LFB192:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movsbl	%dl, %eax
	movsbl	%cl, %r8d
	movsbl	%sil, %edx
	movl	%eax, %ecx
	movl	$3, %esi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	$1, %r9d
	xorl	%eax, %eax
	subq	$72, %rsp
	.cfi_def_cfa_offset 96
	movl	%edi, (%rsp)
	movq	$0, 40(%rsp)
	movl	$1, %edi
	movq	$0, 32(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 8(%rsp)
	call	init_function_params
	movq	%rax, %rbp
	movq	%rax, %rdi
	call	put_fun_params_into_secure_stack
	movq	%rbp, %rdi
	movq	%rax, %rbx
	call	free_fun_params
	movq	16(%rbx), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	24(%rdi), %r10
	jmp	.L2964
	.p2align 4,,10
	.p2align 3
.L2985:
	movzbl	(%r10,%rdx), %eax
	movb	%al, 48(%rsp,%rcx)
	leaq	1(%rcx), %rax
	cmpq	$4, %rax
	je	.L2976
	movzbl	1(%r10,%rdx), %esi
	leaq	2(%rcx), %rax
	cmpq	$3, %rax
	movb	%sil, 49(%rsp,%rcx)
	jg	.L2977
	movzbl	2(%r10,%rdx), %esi
	addq	$3, %rcx
	movb	%sil, 48(%rsp,%rax)
.L2961:
	addq	$3, %rdx
	cmpq	$3, %rcx
	movl	$1, %esi
	jg	.L2984
.L2964:
	testl	%esi, %esi
	je	.L2985
	addq	$5, %rdx
	xorl	%esi, %esi
	cmpq	$3, %rcx
	jle	.L2964
.L2984:
	cmpl	$1, 48(%rsp)
	je	.L2986
	movq	8(%rdi), %rax
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%r11d, %r11d
	movsbl	1(%rax), %ecx
	movsbl	2(%rax), %edx
	movsbl	(%rax), %esi
	jmp	.L2970
	.p2align 4,,10
	.p2align 3
.L2988:
	movzbl	(%r10,%r8), %eax
	movb	%al, 48(%rsp,%r9)
	leaq	1(%r9), %rax
	cmpq	$4, %rax
	je	.L2978
	movzbl	1(%r10,%r8), %edi
	leaq	2(%r9), %rax
	cmpq	$3, %rax
	movb	%dil, 49(%rsp,%r9)
	jg	.L2979
	movzbl	2(%r10,%r8), %edi
	addq	$3, %r9
	movb	%dil, 48(%rsp,%rax)
.L2967:
	addq	$3, %r8
	cmpq	$3, %r9
	movl	$1, %r11d
	jg	.L2987
.L2970:
	testl	%r11d, %r11d
	je	.L2988
	addq	$5, %r8
	xorl	%r11d, %r11d
	cmpq	$3, %r9
	jle	.L2970
.L2987:
	movl	48(%rsp), %eax
	leal	-1(%rax), %edi
	call	towerOfHanoi_secure
	movq	16(%rbx), %rdi
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movq	8(%rdi), %rax
	movsbl	(%rax), %ecx
	movsbl	1(%rax), %edx
	movsbl	2(%rax), %esi
	movq	24(%rdi), %rax
	jmp	.L2975
	.p2align 4,,10
	.p2align 3
.L2990:
	movzbl	(%rax,%r8), %edi
	movb	%dil, 48(%rsp,%r9)
	leaq	1(%r9), %rdi
	cmpq	$4, %rdi
	je	.L2980
	movzbl	1(%rax,%r8), %r10d
	leaq	2(%r9), %rdi
	cmpq	$3, %rdi
	movb	%r10b, 49(%rsp,%r9)
	jg	.L2981
	movzbl	2(%rax,%r8), %r10d
	addq	$3, %r9
	movb	%r10b, 48(%rsp,%rdi)
.L2972:
	addq	$3, %r8
	cmpq	$3, %r9
	movl	$1, %r10d
	jg	.L2989
.L2975:
	testl	%r10d, %r10d
	je	.L2990
	addq	$5, %r8
	xorl	%r10d, %r10d
	cmpq	$3, %r9
	jle	.L2975
.L2989:
	movl	48(%rsp), %eax
	leal	-1(%rax), %edi
	call	towerOfHanoi_secure
	movq	8(%rbx), %rax
	salq	$3, %rax
	subq	%rax, last_unused_stack_memory(%rip)
	movq	16(%rbx), %rax
	movq	88(%rax), %rdi
.L2983:
	call	free
	movq	16(%rbx), %rax
	movq	112(%rax), %rdi
	call	free
	movq	16(%rbx), %rdi
	call	free
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free
	.p2align 4,,10
	.p2align 3
.L2976:
	.cfi_restore_state
	movl	$4, %ecx
	jmp	.L2961
	.p2align 4,,10
	.p2align 3
.L2977:
	movq	%rax, %rcx
	jmp	.L2961
	.p2align 4,,10
	.p2align 3
.L2986:
	movq	8(%rbx), %rax
	movq	88(%rdi), %rdi
	salq	$3, %rax
	subq	%rax, last_unused_stack_memory(%rip)
	jmp	.L2983
	.p2align 4,,10
	.p2align 3
.L2980:
	movl	$4, %r9d
	jmp	.L2972
	.p2align 4,,10
	.p2align 3
.L2978:
	movl	$4, %r9d
	jmp	.L2967
	.p2align 4,,10
	.p2align 3
.L2979:
	movq	%rax, %r9
	jmp	.L2967
	.p2align 4,,10
	.p2align 3
.L2981:
	movq	%rdi, %r9
	jmp	.L2972
	.cfi_endproc
.LFE192:
	.size	towerOfHanoi_secure, .-towerOfHanoi_secure
	.p2align 4,,15
	.globl	towerOfHanoi_secure_using_template
	.type	towerOfHanoi_secure_using_template, @function
towerOfHanoi_secure_using_template:
.LFB193:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movsbl	%cl, %ecx
	movsbl	%dl, %edx
	movsbl	%sil, %esi
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	call	tower_of_Hanoi_init_secure_template
	movq	16(%rax), %rdi
	movq	%rax, %rbx
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	24(%rdi), %r10
	jmp	.L2996
	.p2align 4,,10
	.p2align 3
.L3017:
	movzbl	(%r10,%rdx), %eax
	movb	%al, (%rsp,%rcx)
	leaq	1(%rcx), %rax
	cmpq	$4, %rax
	je	.L3008
	movzbl	1(%r10,%rdx), %esi
	leaq	2(%rcx), %rax
	cmpq	$3, %rax
	movb	%sil, 1(%rsp,%rcx)
	jg	.L3009
	movzbl	2(%r10,%rdx), %esi
	addq	$3, %rcx
	movb	%sil, (%rsp,%rax)
.L2993:
	addq	$3, %rdx
	cmpq	$3, %rcx
	movl	$1, %esi
	jg	.L3016
.L2996:
	testl	%esi, %esi
	je	.L3017
	addq	$5, %rdx
	xorl	%esi, %esi
	cmpq	$3, %rcx
	jle	.L2996
.L3016:
	cmpl	$1, (%rsp)
	je	.L3018
	movq	8(%rdi), %rax
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%r11d, %r11d
	movsbl	1(%rax), %ecx
	movsbl	2(%rax), %edx
	movsbl	(%rax), %esi
	jmp	.L3002
	.p2align 4,,10
	.p2align 3
.L3020:
	movzbl	(%r10,%r8), %eax
	movb	%al, (%rsp,%r9)
	leaq	1(%r9), %rax
	cmpq	$4, %rax
	je	.L3010
	movzbl	1(%r10,%r8), %edi
	leaq	2(%r9), %rax
	cmpq	$3, %rax
	movb	%dil, 1(%rsp,%r9)
	jg	.L3011
	movzbl	2(%r10,%r8), %edi
	addq	$3, %r9
	movb	%dil, (%rsp,%rax)
.L2999:
	addq	$3, %r8
	cmpq	$3, %r9
	movl	$1, %r11d
	jg	.L3019
.L3002:
	testl	%r11d, %r11d
	je	.L3020
	addq	$5, %r8
	xorl	%r11d, %r11d
	cmpq	$3, %r9
	jle	.L3002
.L3019:
	movl	(%rsp), %eax
	leal	-1(%rax), %edi
	call	towerOfHanoi_secure_using_template
	movq	16(%rbx), %rdi
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movq	8(%rdi), %rax
	movsbl	(%rax), %ecx
	movsbl	1(%rax), %edx
	movsbl	2(%rax), %esi
	movq	24(%rdi), %rax
	jmp	.L3007
	.p2align 4,,10
	.p2align 3
.L3022:
	movzbl	(%rax,%r8), %edi
	movb	%dil, (%rsp,%r9)
	leaq	1(%r9), %rdi
	cmpq	$4, %rdi
	je	.L3012
	movzbl	1(%rax,%r8), %r10d
	leaq	2(%r9), %rdi
	cmpq	$3, %rdi
	movb	%r10b, 1(%rsp,%r9)
	jg	.L3013
	movzbl	2(%rax,%r8), %r10d
	addq	$3, %r9
	movb	%r10b, (%rsp,%rdi)
.L3004:
	addq	$3, %r8
	cmpq	$3, %r9
	movl	$1, %r10d
	jg	.L3021
.L3007:
	testl	%r10d, %r10d
	je	.L3022
	addq	$5, %r8
	xorl	%r10d, %r10d
	cmpq	$3, %r9
	jle	.L3007
.L3021:
	movl	(%rsp), %eax
	leal	-1(%rax), %edi
	call	towerOfHanoi_secure_using_template
	movq	8(%rbx), %rax
	salq	$3, %rax
	subq	%rax, last_unused_stack_memory(%rip)
	movq	16(%rbx), %rax
	movq	88(%rax), %rdi
.L3015:
	call	free
	movq	16(%rbx), %rax
	movq	112(%rax), %rdi
	call	free
	movq	16(%rbx), %rdi
	call	free
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free
	.p2align 4,,10
	.p2align 3
.L3008:
	.cfi_restore_state
	movl	$4, %ecx
	jmp	.L2993
	.p2align 4,,10
	.p2align 3
.L3009:
	movq	%rax, %rcx
	jmp	.L2993
	.p2align 4,,10
	.p2align 3
.L3018:
	movq	8(%rbx), %rax
	movq	88(%rdi), %rdi
	salq	$3, %rax
	subq	%rax, last_unused_stack_memory(%rip)
	jmp	.L3015
	.p2align 4,,10
	.p2align 3
.L3012:
	movl	$4, %r9d
	jmp	.L3004
	.p2align 4,,10
	.p2align 3
.L3010:
	movl	$4, %r9d
	jmp	.L2999
	.p2align 4,,10
	.p2align 3
.L3011:
	movq	%rax, %r9
	jmp	.L2999
	.p2align 4,,10
	.p2align 3
.L3013:
	movq	%rdi, %r9
	jmp	.L3004
	.cfi_endproc
.LFE193:
	.size	towerOfHanoi_secure_using_template, .-towerOfHanoi_secure_using_template
	.p2align 4,,15
	.globl	towerOfHanoi_secure_using_changed_accesses
	.type	towerOfHanoi_secure_using_changed_accesses, @function
towerOfHanoi_secure_using_changed_accesses:
.LFB194:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movsbl	%cl, %ecx
	movsbl	%dl, %edx
	movsbl	%sil, %esi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	call	tower_of_Hanoi_init_secure_template
	movq	16(%rax), %rdi
	movq	%rax, %rbp
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	24(%rdi), %rbx
	movq	8(%rdi), %r12
	jmp	.L3028
	.p2align 4,,10
	.p2align 3
.L3049:
	movzbl	(%rbx,%rdx), %eax
	movb	%al, (%rsp,%rcx)
	leaq	1(%rcx), %rax
	cmpq	$4, %rax
	je	.L3040
	movzbl	1(%rbx,%rdx), %esi
	leaq	2(%rcx), %rax
	cmpq	$3, %rax
	movb	%sil, 1(%rsp,%rcx)
	jg	.L3041
	movzbl	2(%rbx,%rdx), %esi
	addq	$3, %rcx
	movb	%sil, (%rsp,%rax)
.L3025:
	addq	$3, %rdx
	cmpq	$3, %rcx
	movl	$1, %esi
	jg	.L3048
.L3028:
	testl	%esi, %esi
	je	.L3049
	addq	$5, %rdx
	xorl	%esi, %esi
	cmpq	$3, %rcx
	jle	.L3028
.L3048:
	cmpl	$1, (%rsp)
	je	.L3050
	movsbl	1(%r12), %ecx
	movsbl	2(%r12), %edx
	xorl	%r9d, %r9d
	movsbl	(%r12), %esi
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	jmp	.L3034
	.p2align 4,,10
	.p2align 3
.L3052:
	movzbl	(%rbx,%r8), %eax
	movb	%al, (%rsp,%r9)
	leaq	1(%r9), %rax
	cmpq	$4, %rax
	je	.L3042
	movzbl	1(%rbx,%r8), %edi
	leaq	2(%r9), %rax
	cmpq	$3, %rax
	movb	%dil, 1(%rsp,%r9)
	jg	.L3043
	movzbl	2(%rbx,%r8), %edi
	addq	$3, %r9
	movb	%dil, (%rsp,%rax)
.L3031:
	addq	$3, %r8
	cmpq	$3, %r9
	movl	$1, %r10d
	jg	.L3051
.L3034:
	testl	%r10d, %r10d
	je	.L3052
	addq	$5, %r8
	xorl	%r10d, %r10d
	cmpq	$3, %r9
	jle	.L3034
.L3051:
	movl	(%rsp), %eax
	leal	-1(%rax), %edi
	call	towerOfHanoi_secure_using_template
	movsbl	(%r12), %ecx
	movsbl	1(%r12), %edx
	xorl	%r9d, %r9d
	movsbl	2(%r12), %esi
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	jmp	.L3039
	.p2align 4,,10
	.p2align 3
.L3054:
	movzbl	(%rbx,%r8), %eax
	movb	%al, (%rsp,%r9)
	leaq	1(%r9), %rax
	cmpq	$4, %rax
	je	.L3044
	movzbl	1(%rbx,%r8), %edi
	leaq	2(%r9), %rax
	cmpq	$3, %rax
	movb	%dil, 1(%rsp,%r9)
	jg	.L3045
	movzbl	2(%rbx,%r8), %edi
	addq	$3, %r9
	movb	%dil, (%rsp,%rax)
.L3036:
	addq	$3, %r8
	cmpq	$3, %r9
	movl	$1, %r10d
	jg	.L3053
.L3039:
	testl	%r10d, %r10d
	je	.L3054
	addq	$5, %r8
	xorl	%r10d, %r10d
	cmpq	$3, %r9
	jle	.L3039
.L3053:
	movl	(%rsp), %eax
	leal	-1(%rax), %edi
	call	towerOfHanoi_secure_using_template
	movq	8(%rbp), %rax
	salq	$3, %rax
	subq	%rax, last_unused_stack_memory(%rip)
	movq	16(%rbp), %rax
	movq	88(%rax), %rdi
.L3047:
	call	free
	movq	16(%rbp), %rax
	movq	112(%rax), %rdi
	call	free
	movq	16(%rbp), %rdi
	call	free
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movq	%rbp, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	free
	.p2align 4,,10
	.p2align 3
.L3040:
	.cfi_restore_state
	movl	$4, %ecx
	jmp	.L3025
	.p2align 4,,10
	.p2align 3
.L3041:
	movq	%rax, %rcx
	jmp	.L3025
	.p2align 4,,10
	.p2align 3
.L3050:
	movq	8(%rbp), %rax
	movq	88(%rdi), %rdi
	salq	$3, %rax
	subq	%rax, last_unused_stack_memory(%rip)
	jmp	.L3047
	.p2align 4,,10
	.p2align 3
.L3044:
	movl	$4, %r9d
	jmp	.L3036
	.p2align 4,,10
	.p2align 3
.L3042:
	movl	$4, %r9d
	jmp	.L3031
	.p2align 4,,10
	.p2align 3
.L3043:
	movq	%rax, %r9
	jmp	.L3031
	.p2align 4,,10
	.p2align 3
.L3045:
	movq	%rax, %r9
	jmp	.L3036
	.cfi_endproc
.LFE194:
	.size	towerOfHanoi_secure_using_changed_accesses, .-towerOfHanoi_secure_using_changed_accesses
	.p2align 4,,15
	.globl	check_next_canaries
	.type	check_next_canaries, @function
check_next_canaries:
.LFB195:
	.cfi_startproc
	cmpb	$66, (%rdi)
	jne	.L3057
	xorl	%eax, %eax
	cmpb	$66, 1(%rdi)
	sete	%al
	ret
	.p2align 4,,10
	.p2align 3
.L3057:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE195:
	.size	check_next_canaries, .-check_next_canaries
	.section	.rodata.str1.1
.LC120:
	.string	"key no%d=0x%02x\n"
	.text
	.p2align 4,,15
	.globl	find_keyshares
	.type	find_keyshares, @function
find_keyshares:
.LFB196:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movl	$__executable_start, %eax
	movb	$0, (%rsp)
	movb	$0, 1(%rsp)
	cmpq	$__etext, %rax
	movb	$0, 2(%rsp)
	movb	$0, 3(%rsp)
	movb	$0, 4(%rsp)
	ja	.L3075
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.L3063
	.p2align 4,,10
	.p2align 3
.L3060:
	addq	$1, %rax
	cmpq	$__etext+1, %rax
	je	.L3077
.L3063:
	cmpb	$-21, (%rax)
	jne	.L3060
	cmpb	$7, 1(%rax)
	jne	.L3060
	cmpb	$66, 2(%rax)
	jne	.L3060
	cmpb	$66, 3(%rax)
	jne	.L3060
	xorb	4(%rax), %dl
	xorb	8(%rax), %cl
	addq	$1, %rax
	xorb	6(%rax), %sil
	xorb	5(%rax), %dil
	xorb	4(%rax), %r8b
	cmpq	$__etext+1, %rax
	movl	%edx, %r9d
	jne	.L3063
	.p2align 4,,10
	.p2align 3
.L3077:
	movb	%r8b, 1(%rsp)
	movb	%r9b, (%rsp)
	movl	%r9d, %ebx
	movb	%dil, 2(%rsp)
	movb	%sil, 3(%rsp)
	movl	%edi, %r8d
	movb	%cl, 4(%rsp)
	movl	%ecx, %r10d
.L3059:
	movzbl	1(%rsp), %r9d
	movzbl	3(%rsp), %edi
	xorl	%esi, %esi
	movq	entire_memory_chunk(%rip), %rcx
	movq	total_bytes_allocated(%rip), %r11
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L3064:
	cmpq	%r11, %rax
	jge	.L3078
.L3067:
	testl	%esi, %esi
	je	.L3065
	xorb	(%rcx,%rax), %dl
	xorb	1(%rcx,%rax), %r9b
	xorl	%esi, %esi
	xorb	2(%rcx,%rax), %r8b
	xorb	3(%rcx,%rax), %dil
	xorb	4(%rcx,%rax), %r10b
	addq	$5, %rax
	cmpq	%r11, %rax
	movl	%edx, %ebx
	jl	.L3067
.L3078:
	movq	entire_stack_memory_chunk(%rip), %rcx
	movq	total_stack_bytes_allocated(%rip), %r11
	xorl	%esi, %esi
	movb	%bl, (%rsp)
	movb	%r9b, 1(%rsp)
	xorl	%eax, %eax
	movb	%r8b, 2(%rsp)
	movb	%dil, 3(%rsp)
	.p2align 4,,10
	.p2align 3
.L3068:
	cmpq	%r11, %rax
	jge	.L3079
.L3071:
	testl	%esi, %esi
	je	.L3069
	xorb	(%rcx,%rax), %dl
	xorb	1(%rcx,%rax), %r9b
	xorl	%esi, %esi
	xorb	2(%rcx,%rax), %r8b
	xorb	3(%rcx,%rax), %dil
	xorb	4(%rcx,%rax), %r10b
	addq	$5, %rax
	cmpq	%r11, %rax
	movl	%edx, %ebx
	jl	.L3071
.L3079:
	movb	%bl, (%rsp)
	movb	%dil, 3(%rsp)
	xorl	%ebx, %ebx
	movl	$10, %edi
	movb	%r9b, 1(%rsp)
	movb	%r8b, 2(%rsp)
	movb	%r10b, 4(%rsp)
	call	putchar
.L3073:
	movzbl	(%rsp,%rbx), %ecx
	movl	%ebx, %edx
	xorl	%eax, %eax
	movl	$.LC120, %esi
	movl	$1, %edi
	addq	$1, %rbx
	call	__printf_chk
	cmpq	$5, %rbx
	jne	.L3073
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L3080
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3065:
	.cfi_restore_state
	addq	$4, %rax
	movl	$1, %esi
	jmp	.L3064
	.p2align 4,,10
	.p2align 3
.L3069:
	addq	$3, %rax
	movl	$1, %esi
	jmp	.L3068
.L3075:
	xorl	%edx, %edx
	movzbl	(%rsp), %ebx
	movzbl	2(%rsp), %r8d
	movzbl	4(%rsp), %r10d
	jmp	.L3059
.L3080:
	call	__stack_chk_fail
	.cfi_endproc
.LFE196:
	.size	find_keyshares, .-find_keyshares
	.section	.rodata.str1.1
.LC121:
	.string	"Verification requested!"
	.text
	.p2align 4,,15
	.globl	verification_procedure
	.type	verification_procedure, @function
verification_procedure:
.LFB197:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$.LC121, %edi
	call	puts
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	find_keyshares
	.cfi_endproc
.LFE197:
	.size	verification_procedure, .-verification_procedure
	.section	.rodata.str1.1
.LC122:
	.string	"Initializing heap memory"
	.section	.rodata.str1.8
	.align 8
.LC123:
	.string	"bytes_to_allocate_on_start:%d\n"
	.section	.rodata.str1.1
.LC124:
	.string	"Init_mem, alloc+key insertion"
	.section	.rodata.str1.8
	.align 8
.LC125:
	.string	"If successful, total bytes allocated:%ld\n"
	.section	.rodata.str1.1
.LC126:
	.string	"Initializing stack memory"
	.section	.rodata.str1.8
	.align 8
.LC127:
	.string	"Stack bytes_to_allocate_on_start:%d\n"
	.align 8
.LC128:
	.string	"Init_stack_mem, alloc+key insertion"
	.text
	.p2align 4,,15
	.globl	init_heap_and_stack_mem
	.type	init_heap_and_stack_mem, @function
init_heap_and_stack_mem:
.LFB198:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$.LC122, %edi
	call	puts
	movl	$2048, %edx
	movl	$.LC123, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$.LC124, %edi
	call	puts
	xorl	%eax, %eax
	call	init_mem
	movq	total_bytes_allocated(%rip), %rdx
	movl	$.LC125, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$.LC126, %edi
	call	puts
	movl	$2048, %edx
	movl	$.LC127, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$.LC128, %edi
	call	puts
	xorl	%edi, %edi
	call	time
	movl	%eax, %edi
	call	srand
	movl	$.LC75, %edi
	call	puts
	movl	$2051, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L3087
	movl	$.LC11, %esi
	movl	$.LC76, %edi
	movq	$2051, total_stack_bytes_allocated(%rip)
	call	fopen
	testq	%rax, %rax
	movq	%rax, stack_keyshare_input_file(%rip)
	je	.L3088
	movq	%rbx, %rdi
	call	insert_keys_into_stack_mem
	movq	stack_keyshare_input_file(%rip), %rdi
	movq	%rbx, entire_stack_memory_chunk(%rip)
	movq	%rbx, last_unused_stack_memory(%rip)
	call	fclose
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movq	total_stack_bytes_allocated(%rip), %rdx
	movl	$.LC125, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	jmp	__printf_chk
.L3087:
	.cfi_restore_state
	movl	$143, %esi
	movl	$__func__.5211, %edi
	call	error_checking_malloc.part.0
.L3088:
	movl	$.LC77, %edi
	call	perror
	movl	$46, %edi
	call	exit
	.cfi_endproc
.LFE198:
	.size	init_heap_and_stack_mem, .-init_heap_and_stack_mem
	.section	.rodata.str1.1
.LC129:
	.string	"Installing signal handler"
	.section	.rodata.str1.8
	.align 8
.LC130:
	.string	"Could not install signal handler"
	.section	.rodata.str1.1
.LC131:
	.string	"Signal handler installed"
	.text
	.p2align 4,,15
	.globl	install_signal_handler
	.type	install_signal_handler, @function
install_signal_handler:
.LFB199:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$.LC129, %edi
	call	puts
	movl	$sa+8, %edi
	movq	$verification_procedure, sa(%rip)
	call	sigemptyset
	xorl	%edx, %edx
	movl	$sa, %esi
	movl	$10, %edi
	movl	$268435456, sa+136(%rip)
	call	sigaction
	cmpl	$-1, %eax
	je	.L3092
	movl	$.LC131, %edi
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	puts
.L3092:
	.cfi_restore_state
	movl	$.LC130, %edi
	call	perror
	movl	$45, %edi
	call	exit
	.cfi_endproc
.LFE199:
	.size	install_signal_handler, .-install_signal_handler
	.p2align 4,,15
	.globl	free_heap_and_stack_memory
	.type	free_heap_and_stack_memory, @function
free_heap_and_stack_memory:
.LFB200:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	entire_memory_chunk(%rip), %rdi
	call	free
	movq	free_chunks_list(%rip), %rdi
	movq	$0, free_chunks_num(%rip)
	movq	$0, allocated_chunks_num(%rip)
	testq	%rdi, %rdi
	je	.L3094
	movq	16(%rdi), %rbx
	jmp	.L3099
	.p2align 4,,10
	.p2align 3
.L3098:
	movq	%rax, 24(%rbx)
	movq	%rbx, 16(%rax)
.L3137:
	call	free
.L3096:
	testb	%bpl, %bpl
	jne	.L3094
.L3140:
	movq	%rbx, %rdi
	movq	16(%rbx), %rbx
.L3099:
	movq	24(%rdi), %rax
	testq	%rbx, %rbx
	sete	%bpl
	testq	%rax, %rax
	sete	%dl
	testb	%bpl, %bpl
	jne	.L3139
.L3097:
	testq	%rbx, %rbx
	je	.L3098
	testb	%dl, %dl
	je	.L3098
	movq	$0, 24(%rbx)
	call	free
	testb	%bpl, %bpl
	je	.L3140
.L3094:
	movq	allocated_chunks_list(%rip), %rdi
	testq	%rdi, %rdi
	je	.L3100
	movq	16(%rdi), %rbx
	jmp	.L3105
	.p2align 4,,10
	.p2align 3
.L3104:
	movq	%rax, 24(%rbx)
	movq	%rbx, 16(%rax)
.L3138:
	call	free
.L3102:
	testb	%bpl, %bpl
	jne	.L3100
.L3142:
	movq	%rbx, %rdi
	movq	16(%rbx), %rbx
.L3105:
	movq	24(%rdi), %rax
	testq	%rbx, %rbx
	sete	%bpl
	testq	%rax, %rax
	sete	%dl
	testb	%bpl, %bpl
	jne	.L3141
.L3103:
	testq	%rbx, %rbx
	je	.L3104
	testb	%dl, %dl
	je	.L3104
	movq	$0, 24(%rbx)
	call	free
	testb	%bpl, %bpl
	je	.L3142
.L3100:
	movq	entire_stack_memory_chunk(%rip), %rdi
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free
	.p2align 4,,10
	.p2align 3
.L3139:
	.cfi_restore_state
	testb	%dl, %dl
	jne	.L3137
	testq	%rax, %rax
	je	.L3097
	movq	$0, 16(%rax)
	call	free
	jmp	.L3096
	.p2align 4,,10
	.p2align 3
.L3141:
	testb	%dl, %dl
	jne	.L3138
	testq	%rax, %rax
	.p2align 4,,6
	je	.L3103
	movq	$0, 16(%rax)
	call	free
	jmp	.L3102
	.cfi_endproc
.LFE200:
	.size	free_heap_and_stack_memory, .-free_heap_and_stack_memory
	.section	.rodata.str1.1
.LC132:
	.string	"My pid=%ld\n"
.LC133:
	.string	"K=%d\n"
.LC134:
	.string	"n=%d\n"
.LC135:
	.string	"main is at %p\n"
.LC136:
	.string	"\nSimple array tests in heap"
.LC137:
	.string	"\nStack fun params test"
.LC138:
	.string	"\nEnd of tests"
.LC139:
	.string	"Going to find keyshares"
	.section	.rodata.str1.8
	.align 8
.LC140:
	.string	"Calculating time for secure stack. Normal Hanoi:"
	.align 8
.LC142:
	.string	"Normal Hanoi time:%lg cpu seconds\n"
	.section	.rodata.str1.1
.LC143:
	.string	"Secure Hanoi:"
	.section	.rodata.str1.8
	.align 8
.LC144:
	.string	"Secure Hanoi time:%lg cpu seconds\n"
	.section	.rodata.str1.1
.LC145:
	.string	"Ratio: %lg times slowdown\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB202:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xorl	%eax, %eax
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movl	$1, static_main_variable_for_testing.5814(%rip)
	movl	$2, static_global_variable_for_testing(%rip)
	call	init_heap_and_stack_mem
	xorl	%eax, %eax
	call	install_signal_handler
	call	getpid
	movl	$.LC132, %esi
	movslq	%eax, %rdx
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$6, %edx
	movl	$.LC133, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$10, %edx
	movl	$.LC134, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$main, %edx
	movl	$.LC135, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$.LC136, %edi
	call	puts
	xorl	%eax, %eax
	call	simple_array_tests
	movl	$.LC137, %edi
	call	puts
	movl	$.LC138, %edi
	call	puts
	movl	$.LC139, %edi
	call	puts
	xorl	%eax, %eax
	call	find_keyshares
	movl	$10, %edi
	call	putchar
	movl	$.LC140, %edi
	call	puts
	call	clock
	movl	$67, %ecx
	movl	$66, %edx
	movq	%rax, %rbx
	movl	$65, %esi
	movl	$25, %edi
	call	towerOfHanoi
	call	clock
	subq	%rbx, %rax
	movl	$10, %edi
	cvtsi2sdq	%rax, %xmm2
	divsd	.LC141(%rip), %xmm2
	movsd	%xmm2, (%rsp)
	call	putchar
	movsd	(%rsp), %xmm0
	movl	$.LC142, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	movl	$.LC143, %edi
	call	puts
	call	clock
	movl	$67, %ecx
	movl	$66, %edx
	movq	%rax, %rbx
	movl	$65, %esi
	movl	$25, %edi
	call	towerOfHanoi_secure
	call	clock
	subq	%rbx, %rax
	movl	$10, %edi
	cvtsi2sdq	%rax, %xmm1
	divsd	.LC141(%rip), %xmm1
	movsd	%xmm1, 8(%rsp)
	call	putchar
	movsd	(%rsp), %xmm0
	movl	$.LC142, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	movsd	8(%rsp), %xmm1
	movl	$.LC144, %esi
	movl	$1, %edi
	movl	$1, %eax
	movapd	%xmm1, %xmm0
	call	__printf_chk
	movl	$10, %edi
	call	putchar
	movsd	8(%rsp), %xmm1
	movl	$.LC145, %esi
	movl	$1, %edi
	movl	$1, %eax
	movapd	%xmm1, %xmm0
	divsd	(%rsp), %xmm0
	call	__printf_chk
	movl	$10, %edi
	call	putchar
	movl	$.LC139, %edi
	call	puts
	xorl	%eax, %eax
	call	find_keyshares
	xorl	%eax, %eax
	call	free_heap_and_stack_memory
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE202:
	.size	main, .-main
	.text
	.p2align 4,,15
	.globl	foo
	.type	foo, @function
foo:
.LFB201:
	.cfi_startproc
	leal	2(%rdi), %eax
	ret
	.cfi_endproc
.LFE201:
	.size	foo, .-foo
	.p2align 4,,15
	.globl	foo2
	.type	foo2, @function
foo2:
.LFB203:
	.cfi_startproc
	leal	3(%rdi), %eax
	ret
	.cfi_endproc
.LFE203:
	.size	foo2, .-foo2
	.local	static_main_variable_for_testing.5814
	.comm	static_main_variable_for_testing.5814,4,16
	.section	.rodata
	.align 16
	.type	__func__.5679, @object
	.size	__func__.5679, 22
__func__.5679:
	.string	"stack_fun_params_test"
	.align 32
	.type	__func__.5673, @object
	.size	__func__.5673, 36
__func__.5673:
	.string	"tower_of_Hanoi_init_secure_template"
	.align 32
	.type	__func__.5416, @object
	.size	__func__.5416, 33
__func__.5416:
	.string	"put_fun_params_into_secure_stack"
	.align 32
	.type	__func__.5373, @object
	.size	__func__.5373, 49
__func__.5373:
	.string	"init_function_params_with_uninitialised_elements"
	.align 16
	.type	__func__.5335, @object
	.size	__func__.5335, 21
__func__.5335:
	.string	"init_function_params"
	.align 16
	.type	__func__.5211, @object
	.size	__func__.5211, 19
__func__.5211:
	.string	"allocate_stack_mem"
	.type	__func__.5115, @object
	.size	__func__.5115, 9
__func__.5115:
	.string	"mem_test"
	.align 16
	.type	__func__.5064, @object
	.size	__func__.5064, 20
__func__.5064:
	.string	"managed_secure_free"
	.align 16
	.type	__func__.5048, @object
	.size	__func__.5048, 16
__func__.5048:
	.string	"check_and_merge"
	.type	__func__.4769, @object
	.size	__func__.4769, 13
__func__.4769:
	.string	"allocate_mem"
	.align 16
	.type	__func__.4725, @object
	.size	__func__.4725, 17
__func__.4725:
	.string	"add_node_to_list"
	.type	__func__.4716, @object
	.size	__func__.4716, 11
__func__.4716:
	.string	"alloc_list"
	.local	static_global_variable_for_testing
	.comm	static_global_variable_for_testing,4,16
	.comm	sa,152,32
	.comm	stack_keyshare_input_file,8,8
	.comm	last_unused_stack_memory,8,8
	.comm	entire_stack_memory_chunk,8,8
	.comm	total_stack_bytes_allocated,8,8
	.comm	allocated_chunks_num,8,8
	.comm	allocated_chunks_list,8,8
	.comm	free_chunks_num,8,8
	.comm	free_chunks_list,8,8
	.comm	keyshare_input_file,8,8
	.comm	last_unused_memory,8,8
	.comm	entire_memory_chunk,8,8
	.comm	total_bytes_allocated,8,8
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC19:
	.quad	4
	.quad	4
	.align 16
.LC20:
	.quad	2
	.quad	2
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC41:
	.long	3910138226
	.long	1086244439
	.align 8
.LC45:
	.long	2413153145
	.long	1078277709
	.align 8
.LC46:
	.long	3757306110
	.long	1078005635
	.align 8
.LC47:
	.long	0
	.long	1072693248
	.align 8
.LC68:
	.long	0
	.long	1071644672
	.align 8
.LC105:
	.long	0
	.long	1079574528
	.section	.rodata.cst16
	.align 16
.LC106:
	.long	100
	.long	100
	.long	100
	.long	100
	.align 16
.LC107:
	.long	4
	.long	4
	.long	4
	.long	4
	.section	.rodata.cst8
	.align 8
.LC109:
	.long	343597384
	.long	1078740910
	.align 8
.LC110:
	.long	2405181686
	.long	1078277570
	.align 8
.LC141:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
