	.file	"Helloworldadd.c"
	.comm	total_bytes_allocated,8,8
	.comm	memory_chunk,8,8
	.comm	last_unused_memory,8,8
	.section	.rodata
	.align 8
.LC0:
	.string	"Great!. No need to allocate more than the defined amount."
	.align 8
.LC1:
	.string	"Whoops. We need to allocate a bit more space."
.LC2:
	.string	"allocate_mem:malloc failed.\n"
	.text
	.globl	allocate_mem
	.type	allocate_mem, @function
allocate_mem:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$1024, -40(%rbp)
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
	jne	.L2
	movl	$.LC0, %edi
	call	puts
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L3
.L2:
	movl	$.LC1, %edi
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
.L3:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L4
	movl	$.LC2, %edi
	call	perror
	movl	$42, %edi
	call	exit
.L4:
	movq	-48(%rbp), %rax
	movq	%rax, total_bytes_allocated(%rip)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	allocate_mem, .-allocate_mem
	.globl	secure_malloc
	.type	secure_malloc, @function
secure_malloc:
.LFB3:
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
	movq	memory_chunk(%rip), %rax
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
	jge	.L7
	call	__errno_location
	movl	$12, (%rax)
	movl	$0, %eax
	jmp	.L8
.L7:
	movq	-88(%rbp), %rax
	cqto
	idivq	-40(%rbp)
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	imulq	-40(%rbp), %rax
	cmpq	-88(%rbp), %rax
	je	.L9
	addq	$1, -72(%rbp)
.L9:
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
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	secure_malloc, .-secure_malloc
	.globl	get_next_keyshare
	.type	get_next_keyshare, @function
get_next_keyshare:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	rand
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	get_next_keyshare, .-get_next_keyshare
	.globl	insert_keys_into_mem
	.type	insert_keys_into_mem, @function
insert_keys_into_mem:
.LFB5:
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
	jmp	.L13
.L18:
	cmpl	$0, -52(%rbp)
	je	.L14
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$0, %eax
	call	get_next_keyshare
	movb	%al, (%rbx)
	addq	$1, -32(%rbp)
	addq	$1, -48(%rbp)
	jmp	.L15
.L14:
	movq	$0, -40(%rbp)
	jmp	.L16
.L17:
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	addq	$1, -40(%rbp)
.L16:
	cmpq	$3, -40(%rbp)
	jle	.L17
	addq	$4, -48(%rbp)
	movl	$1, -52(%rbp)
.L15:
	cmpq	$5, -32(%rbp)
	jne	.L13
	movl	$0, -52(%rbp)
	movq	$0, -32(%rbp)
.L13:
	movq	total_bytes_allocated(%rip), %rax
	cmpq	%rax, -48(%rbp)
	jl	.L18
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	insert_keys_into_mem, .-insert_keys_into_mem
	.section	.rodata
.LC3:
	.string	"0x%02x "
	.text
	.globl	print_mem
	.type	print_mem, @function
print_mem:
.LFB6:
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
	jmp	.L20
.L21:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L20:
	movq	total_bytes_allocated(%rip), %rax
	cmpq	%rax, -16(%rbp)
	jl	.L21
	movl	$10, %edi
	call	putchar
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	print_mem, .-print_mem
	.globl	insert_data_into_mem
	.type	insert_data_into_mem, @function
insert_data_into_mem:
.LFB7:
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
	jmp	.L23
.L28:
	cmpl	$0, -44(%rbp)
	je	.L24
	addq	$5, -40(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L23
.L24:
	movq	$0, -32(%rbp)
	jmp	.L25
.L27:
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
.L25:
	cmpq	$3, -32(%rbp)
	jg	.L26
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-56(%rbp), %rax
	jl	.L27
.L26:
	movq	-32(%rbp), %rax
	addq	%rax, -16(%rbp)
	addq	$1, -24(%rbp)
	addq	$4, -40(%rbp)
	movl	$1, -44(%rbp)
.L23:
	movq	-16(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.L28
	movq	-24(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	insert_data_into_mem, .-insert_data_into_mem
	.globl	get_secure_data
	.type	get_secure_data, @function
get_secure_data:
.LFB8:
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
	je	.L31
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
	jne	.L32
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, -32(%rbp)
	jmp	.L31
.L32:
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
	jmp	.L33
.L35:
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
.L33:
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	$3, %rax
	jg	.L34
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-80(%rbp), %rax
	jl	.L35
.L34:
	movq	-40(%rbp), %rax
	addq	%rax, -24(%rbp)
	addq	$9, -32(%rbp)
	jmp	.L36
.L31:
	jmp	.L36
.L41:
	cmpl	$0, -60(%rbp)
	je	.L37
	addq	$5, -56(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L36
.L37:
	movq	$0, -48(%rbp)
	jmp	.L38
.L40:
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
.L38:
	cmpq	$3, -48(%rbp)
	jg	.L39
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-80(%rbp), %rax
	jl	.L40
.L39:
	movq	-48(%rbp), %rax
	addq	%rax, -24(%rbp)
	addq	$4, -56(%rbp)
	movl	$1, -60(%rbp)
.L36:
	movq	-24(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jl	.L41
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	get_secure_data, .-get_secure_data
	.globl	find_useful_chunks
	.type	find_useful_chunks, @function
find_useful_chunks:
.LFB9:
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
.LFE9:
	.size	find_useful_chunks, .-find_useful_chunks
	.globl	init_mem
	.type	init_mem, @function
init_mem:
.LFB10:
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	insert_keys_into_mem
	movq	-8(%rbp), %rax
	movq	%rax, memory_chunk(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, last_unused_memory(%rip)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	init_mem, .-init_mem
	.globl	free_secure_mem
	.type	free_secure_mem, @function
free_secure_mem:
.LFB11:
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
.LFE11:
	.size	free_secure_mem, .-free_secure_mem
	.globl	get_char
	.type	get_char, @function
get_char:
.LFB12:
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
.LFE12:
	.size	get_char, .-get_char
	.globl	get_int
	.type	get_int, @function
get_int:
.LFB13:
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
.LFE13:
	.size	get_int, .-get_int
	.globl	get_long_int
	.type	get_long_int, @function
get_long_int:
.LFB14:
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
.LFE14:
	.size	get_long_int, .-get_long_int
	.globl	get_float
	.type	get_float, @function
get_float:
.LFB15:
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
.LFE15:
	.size	get_float, .-get_float
	.globl	get_double
	.type	get_double, @function
get_double:
.LFB16:
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
.LFE16:
	.size	get_double, .-get_double
	.globl	set_char
	.type	set_char, @function
set_char:
.LFB17:
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
.LFE17:
	.size	set_char, .-set_char
	.globl	set_int
	.type	set_int, @function
set_int:
.LFB18:
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
.LFE18:
	.size	set_int, .-set_int
	.globl	set_long_int
	.type	set_long_int, @function
set_long_int:
.LFB19:
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
.LFE19:
	.size	set_long_int, .-set_long_int
	.globl	set_float
	.type	set_float, @function
set_float:
.LFB20:
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
.LFE20:
	.size	set_float, .-set_float
	.globl	set_double
	.type	set_double, @function
set_double:
.LFB21:
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
.LFE21:
	.size	set_double, .-set_double
	.globl	insert_data_into_normal_array
	.type	insert_data_into_normal_array, @function
insert_data_into_normal_array:
.LFB22:
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
	jmp	.L58
.L59:
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
.L58:
	movl	-4(%rbp), %eax
	cltq
	cmpq	-24(%rbp), %rax
	jl	.L59
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	insert_data_into_normal_array, .-insert_data_into_normal_array
	.section	.rodata
	.align 8
.LC4:
	.string	"Zero hex test printing: 0x%02x \n"
.LC5:
	.string	"Starting mem test"
	.align 8
.LC6:
	.string	"bytes_to_allocate_on_start:%d\n"
.LC7:
	.string	"Init_mem, alloc+key insertion"
	.align 8
.LC8:
	.string	"If successful, total bytes allocated:%ld\n"
.LC9:
	.string	"chunks:%ld\n"
.LC10:
	.string	"After init, print mem"
.LC11:
	.string	"Trying to secure malloc"
	.align 8
.LC12:
	.string	"Last_unused_memory before:%ld\n"
.LC13:
	.string	"Not enough mem"
.LC14:
	.string	"Last_unused_memory after:%ld\n"
	.align 8
.LC15:
	.string	"After malloc,try to insert some data"
	.align 8
.LC16:
	.string	"Now let's retrieve the data and display them"
.LC17:
	.string	"%d "
	.align 8
.LC18:
	.string	"Again, Trying to secure malloc"
	.align 8
.LC19:
	.string	"Again, after malloc,try to insert some data"
	.align 8
.LC20:
	.string	"Now trying to store and retrieve 424242424..."
.LC21:
	.string	"\n\n%d \n\n"
.LC22:
	.string	"Testing wrapper functions"
.LC23:
	.string	"Got %d\n"
.LC24:
	.string	"Normal_insertion:%ld\n"
.LC25:
	.string	"Secure_insertion:%ld\n"
.LC26:
	.string	"Normal_fetch:%ld\n"
.LC27:
	.string	"Secure_fetch:%ld\n"
	.align 8
.LC28:
	.string	"data2!=data , data2[i]=%d, data[i]=%d i=%ld\n"
	.align 8
.LC29:
	.string	"After data retrieval, print mem"
.LC30:
	.string	"Mem test done"
	.text
	.globl	mem_test
	.type	mem_test, @function
mem_test:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	$20, -88(%rbp)
	movl	$0, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC5, %edi
	call	puts
	movl	$1024, %esi
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC7, %edi
	call	puts
	movl	$0, %eax
	call	init_mem
	movq	%rax, -80(%rbp)
	movq	total_bytes_allocated(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
	movq	total_bytes_allocated(%rip), %rax
	movq	%rax, %rdi
	call	find_useful_chunks
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC10, %edi
	call	puts
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	print_mem
	movq	-88(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -56(%rbp)
	movq	$5, -104(%rbp)
	jmp	.L61
.L62:
	movq	-104(%rbp), %rax
	salq	$2, %rax
	leaq	-20(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	movl	%eax, %ecx
	movq	-104(%rbp), %rax
	imull	%ecx, %eax
	movl	%eax, (%rdx)
	addq	$1, -104(%rbp)
.L61:
	movq	-88(%rbp), %rax
	addq	$5, %rax
	cmpq	-104(%rbp), %rax
	jg	.L62
	movl	$.LC11, %edi
	call	puts
	movq	last_unused_memory(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC12, %edi
	movl	$0, %eax
	call	printf
	movq	-88(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	secure_malloc
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L63
	movl	$.LC13, %edi
	call	perror
	movl	$42, %edi
	call	exit
.L63:
	movq	last_unused_memory(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC14, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC15, %edi
	call	puts
	movq	-88(%rbp), %rax
	salq	$2, %rax
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_mem
	movl	$.LC16, %edi
	call	puts
	movl	$4, %edi
	call	malloc
	movq	%rax, -40(%rbp)
	movq	$0, -96(%rbp)
	jmp	.L64
.L65:
	movq	-96(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_secure_data
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC17, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -96(%rbp)
.L64:
	movq	-96(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jl	.L65
	movl	$10, %edi
	call	putchar
	movl	$.LC18, %edi
	call	puts
	movq	last_unused_memory(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC12, %edi
	movl	$0, %eax
	call	printf
	movq	-88(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	secure_malloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L66
	movl	$.LC13, %edi
	call	perror
	movl	$42, %edi
	call	exit
.L66:
	movq	last_unused_memory(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC14, %edi
	movl	$0, %eax
	call	printf
	movq	$5, -104(%rbp)
	jmp	.L67
.L68:
	movq	-104(%rbp), %rax
	salq	$2, %rax
	leaq	-20(%rax), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-104(%rbp), %rax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, (%rcx)
	addq	$1, -104(%rbp)
.L67:
	movq	-88(%rbp), %rax
	addq	$5, %rax
	cmpq	-104(%rbp), %rax
	jg	.L68
	movl	$.LC19, %edi
	call	puts
	movq	-88(%rbp), %rax
	salq	$2, %rax
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_mem
	movl	$.LC16, %edi
	call	puts
	movq	$0, -96(%rbp)
	jmp	.L69
.L70:
	movq	-96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_secure_data
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC17, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -96(%rbp)
.L69:
	movq	-96(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jl	.L70
	movl	$10, %edi
	call	putchar
	movl	$.LC20, %edi
	call	puts
	movl	$4, %edi
	call	secure_malloc
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movl	$424242424, (%rax)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	insert_data_into_mem
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$4, %edi
	call	malloc
	movq	%rax, -40(%rbp)
	movq	-96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_secure_data
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC21, %edi
	movl	$0, %eax
	call	printf
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$.LC22, %edi
	call	puts
	movl	$4, %edi
	call	secure_malloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$99998, %esi
	movq	%rax, %rdi
	call	set_int
	leaq	-108(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_int
	movl	-108(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC23, %edi
	movl	$0, %eax
	call	printf
	movq	$200000000, -16(%rbp)
	movl	$0, %edi
	call	time
	movq	%rax, -8(%rbp)
	movq	$1, -96(%rbp)
	jmp	.L71
.L74:
	movq	$0, -104(%rbp)
	jmp	.L72
.L73:
	movq	-104(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	movl	%eax, (%rdx)
	addq	$1, -104(%rbp)
.L72:
	movq	-104(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jl	.L73
	addq	$1, -96(%rbp)
.L71:
	movq	-96(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jle	.L74
	movl	$0, %edi
	call	time
	subq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC24, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %edi
	call	time
	movq	%rax, -8(%rbp)
	movq	$1, -96(%rbp)
	jmp	.L75
.L76:
	movq	-88(%rbp), %rax
	salq	$2, %rax
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_mem
	addq	$1, -96(%rbp)
.L75:
	movq	-96(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jle	.L76
	movl	$0, %edi
	call	time
	subq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC25, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %edi
	call	time
	movq	%rax, -8(%rbp)
	movq	$1, -96(%rbp)
	jmp	.L77
.L80:
	movq	$0, -104(%rbp)
	jmp	.L78
.L79:
	movq	-104(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addq	$1, -104(%rbp)
.L78:
	movq	-104(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jl	.L79
	addq	$1, -96(%rbp)
.L77:
	movq	-96(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jle	.L80
	movl	$0, %edi
	call	time
	subq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC26, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %edi
	call	time
	movq	%rax, -8(%rbp)
	movq	$1, -96(%rbp)
	jmp	.L81
.L82:
	movq	-88(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rsi
	movq	-104(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	get_secure_data
	addq	$1, -96(%rbp)
.L81:
	movq	-96(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jle	.L82
	movl	$0, %edi
	call	time
	subq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC27, %edi
	movl	$0, %eax
	call	printf
	movq	$0, -104(%rbp)
	jmp	.L83
.L85:
	movq	-104(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L84
	movq	-104(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	movq	-104(%rbp), %rcx
	movl	%eax, %esi
	movl	$.LC28, %edi
	movl	$0, %eax
	call	printf
.L84:
	addq	$1, -104(%rbp)
.L83:
	movq	-104(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jl	.L85
	movl	$.LC29, %edi
	call	puts
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	print_mem
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	free_secure_mem
	movl	$.LC30, %edi
	call	puts
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	mem_test, .-mem_test
	.section	.rodata
.LC31:
	.string	"a=%p b=%p c=%p d=%p\n"
	.align 8
.LC32:
	.string	"start of .text=0x%lx, end of .text=0x%lx, init=0x%lx, fini=0x%lx\n"
.LC33:
	.string	"\n\n"
.LC34:
	.string	"\nkey1="
.LC35:
	.string	"0x%02x\n"
.LC36:
	.string	"key2=0x%02x\n"
.LC37:
	.string	"key3=0x%02x\n"
.LC38:
	.string	"key4=0x%02x\n"
.LC39:
	.string	"key5=0x%02x\n"
	.text
	.globl	find_keyshares
	.type	find_keyshares, @function
find_keyshares:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	$0, -60(%rbp)
	movq	$foo, -48(%rbp)
	movq	$main, -40(%rbp)
	movq	$foo2, -32(%rbp)
	movq	$find_keyshares, -24(%rbp)
	movb	$0, -65(%rbp)
	movb	$0, -64(%rbp)
	movb	$0, -63(%rbp)
	movb	$0, -62(%rbp)
	movb	$0, -61(%rbp)
	movq	$__executable_start, -16(%rbp)
	movq	$__etext, -8(%rbp)
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$.LC31, %edi
	movl	$0, %eax
	call	printf
	movl	$_fini, %esi
	movl	$_init, %ecx
	movl	$__etext, %edx
	movl	$__executable_start, %eax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$.LC32, %edi
	movl	$0, %eax
	call	printf
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.L87
.L89:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -56(%rbp)
.L87:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-61, %al
	je	.L88
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-53, %al
	je	.L89
.L88:
	movq	-56(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$17, %al
	jne	.L89
	movq	-56(%rbp), %rax
	subq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$17, %al
	jne	.L89
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC33, %edi
	call	puts
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.L90
.L92:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-21, %al
	jne	.L91
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	jne	.L91
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	movzbl	-65(%rbp), %eax
	xorl	%edx, %eax
	movb	%al, -65(%rbp)
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	movzbl	-64(%rbp), %eax
	xorl	%edx, %eax
	movb	%al, -64(%rbp)
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	movzbl	-63(%rbp), %eax
	xorl	%edx, %eax
	movb	%al, -63(%rbp)
	movq	-56(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	movzbl	-62(%rbp), %eax
	xorl	%edx, %eax
	movb	%al, -62(%rbp)
	movq	-56(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	movzbl	-61(%rbp), %eax
	xorl	%edx, %eax
	movb	%al, -61(%rbp)
	addl	$1, -60(%rbp)
.L91:
	addq	$1, -56(%rbp)
.L90:
	movq	-56(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jbe	.L92
	movl	$.LC34, %edi
	movl	$0, %eax
	call	printf
	movzbl	-65(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC35, %edi
	movl	$0, %eax
	call	printf
	movzbl	-64(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC36, %edi
	movl	$0, %eax
	call	printf
	movzbl	-63(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC37, %edi
	movl	$0, %eax
	call	printf
	movzbl	-62(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC38, %edi
	movl	$0, %eax
	call	printf
	movzbl	-61(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC39, %edi
	movl	$0, %eax
	call	printf
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	find_keyshares, .-find_keyshares
	.globl	foo
	.type	foo, @function
foo:
.LFB25:
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
.LFE25:
	.size	foo, .-foo
	.section	.rodata
.LC40:
	.string	"K=%d\n"
.LC41:
	.string	"n=%d\n"
.LC42:
	.string	"main is at %p\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB26:
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
	movl	$2, -40(%rbp)
	addl	$1, -40(%rbp)
	addl	$1, -40(%rbp)
	subl	$1, -40(%rbp)
	movl	-40(%rbp), %eax
	addl	%eax, -48(%rbp)
	addl	$2, -48(%rbp)
	addl	$1, -40(%rbp)
	movl	$1, -44(%rbp)
	jmp	.L97
.L98:
	movl	-40(%rbp), %eax
	addl	%eax, -48(%rbp)
	addl	$1, -44(%rbp)
.L97:
	cmpl	$500000000, -44(%rbp)
	jle	.L98
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC40, %edi
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
	movl	$.LC41, %edi
	movl	$0, %eax
	call	printf
	movl	$main, %esi
	movl	$.LC42, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	call	mem_test
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L100
	call	__stack_chk_fail
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	main, .-main
	.globl	foo2
	.type	foo2, @function
foo2:
.LFB27:
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
.LFE27:
	.size	foo2, .-foo2
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.1) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
