	.file	"Helloworldadd.c"
	.comm	total_bytes_allocated,8,8
	.comm	memory_chunk,8,8
	.comm	last_unused_memory,8,8
	.comm	keyshare_input_file,8,8
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
	.section	.rodata
	.align 8
.LC3:
	.string	"Attempted to read more keyshares that the ones stored\n"
	.text
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
	subq	$16, %rsp
	movq	keyshare_input_file(%rip), %rax
	movq	%rax, %rdi
	call	feof
	testl	%eax, %eax
	je	.L11
	movl	$.LC3, %edi
	call	perror
	movl	$44, %edi
	call	exit
.L11:
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
	jmp	.L14
.L19:
	cmpl	$0, -52(%rbp)
	je	.L15
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$0, %eax
	call	get_next_keyshare
	movb	%al, (%rbx)
	addq	$1, -32(%rbp)
	addq	$1, -48(%rbp)
	jmp	.L16
.L15:
	movq	$0, -40(%rbp)
	jmp	.L17
.L18:
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	addq	$1, -40(%rbp)
.L17:
	cmpq	$3, -40(%rbp)
	jle	.L18
	addq	$4, -48(%rbp)
	movl	$1, -52(%rbp)
.L16:
	cmpq	$5, -32(%rbp)
	jne	.L14
	movl	$0, -52(%rbp)
	movq	$0, -32(%rbp)
.L14:
	movq	total_bytes_allocated(%rip), %rax
	cmpq	%rax, -48(%rbp)
	jl	.L19
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	insert_keys_into_mem, .-insert_keys_into_mem
	.section	.rodata
.LC4:
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
	jmp	.L21
.L22:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -16(%rbp)
.L21:
	movq	total_bytes_allocated(%rip), %rax
	cmpq	%rax, -16(%rbp)
	jl	.L22
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
	jmp	.L24
.L29:
	cmpl	$0, -44(%rbp)
	je	.L25
	addq	$5, -40(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L24
.L25:
	movq	$0, -32(%rbp)
	jmp	.L26
.L28:
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
.L26:
	cmpq	$3, -32(%rbp)
	jg	.L27
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-56(%rbp), %rax
	jl	.L28
.L27:
	movq	-32(%rbp), %rax
	addq	%rax, -16(%rbp)
	addq	$1, -24(%rbp)
	addq	$4, -40(%rbp)
	movl	$1, -44(%rbp)
.L24:
	movq	-16(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.L29
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
	je	.L32
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
	jne	.L33
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, -32(%rbp)
	jmp	.L32
.L33:
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
	jmp	.L34
.L36:
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
.L34:
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	$3, %rax
	jg	.L35
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-80(%rbp), %rax
	jl	.L36
.L35:
	movq	-40(%rbp), %rax
	addq	%rax, -24(%rbp)
	addq	$9, -32(%rbp)
	jmp	.L37
.L32:
	jmp	.L37
.L42:
	cmpl	$0, -60(%rbp)
	je	.L38
	addq	$5, -56(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L37
.L38:
	movq	$0, -48(%rbp)
	jmp	.L39
.L41:
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
.L39:
	cmpq	$3, -48(%rbp)
	jg	.L40
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-80(%rbp), %rax
	jl	.L41
.L40:
	movq	-48(%rbp), %rax
	addq	%rax, -24(%rbp)
	addq	$4, -56(%rbp)
	movl	$1, -60(%rbp)
.L37:
	movq	-24(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jl	.L42
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	get_secure_data, .-get_secure_data
	.globl	set_secure_data
	.type	set_secure_data, @function
set_secure_data:
.LFB9:
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
	je	.L44
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
	jne	.L45
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, -32(%rbp)
	jmp	.L44
.L45:
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
	jmp	.L46
.L48:
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
.L46:
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	$3, %rax
	jg	.L47
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-80(%rbp), %rax
	jl	.L48
.L47:
	movq	-40(%rbp), %rax
	addq	%rax, -24(%rbp)
	addq	$9, -32(%rbp)
	jmp	.L49
.L44:
	jmp	.L49
.L54:
	cmpl	$0, -60(%rbp)
	je	.L50
	addq	$5, -56(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L49
.L50:
	movq	$0, -48(%rbp)
	jmp	.L51
.L53:
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
.L51:
	cmpq	$3, -48(%rbp)
	jg	.L52
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-80(%rbp), %rax
	jl	.L53
.L52:
	movq	-48(%rbp), %rax
	addq	%rax, -24(%rbp)
	addq	$4, -56(%rbp)
	movl	$1, -60(%rbp)
.L49:
	movq	-24(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jl	.L54
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	set_secure_data, .-set_secure_data
	.globl	find_useful_chunks
	.type	find_useful_chunks, @function
find_useful_chunks:
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
	.size	find_useful_chunks, .-find_useful_chunks
	.section	.rodata
.LC5:
	.string	"rb"
.LC6:
	.string	"heap_keyshares"
	.align 8
.LC7:
	.string	"init_mem:heap_keyshares file error\n"
	.text
	.globl	init_mem
	.type	init_mem, @function
init_mem:
.LFB11:
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
	movl	$.LC5, %esi
	movl	$.LC6, %edi
	call	fopen
	movq	%rax, keyshare_input_file(%rip)
	movq	keyshare_input_file(%rip), %rax
	testq	%rax, %rax
	jne	.L58
	movl	$.LC7, %edi
	call	perror
	movl	$43, %edi
	call	exit
.L58:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	insert_keys_into_mem
	movq	-8(%rbp), %rax
	movq	%rax, memory_chunk(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, last_unused_memory(%rip)
	movq	keyshare_input_file(%rip), %rax
	movq	%rax, %rdi
	call	fclose
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	init_mem, .-init_mem
	.globl	free_secure_mem
	.type	free_secure_mem, @function
free_secure_mem:
.LFB12:
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
.LFE12:
	.size	free_secure_mem, .-free_secure_mem
	.globl	get_char
	.type	get_char, @function
get_char:
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
	movl	$1, %esi
	movq	%rax, %rdi
	call	get_secure_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	get_char, .-get_char
	.globl	get_int
	.type	get_int, @function
get_int:
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
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_secure_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	get_int, .-get_int
	.globl	get_long_int
	.type	get_long_int, @function
get_long_int:
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
	movl	$8, %esi
	movq	%rax, %rdi
	call	get_secure_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	get_long_int, .-get_long_int
	.globl	get_float
	.type	get_float, @function
get_float:
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
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_secure_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	get_float, .-get_float
	.globl	get_double
	.type	get_double, @function
get_double:
.LFB17:
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
.LFE17:
	.size	get_double, .-get_double
	.globl	get_array_element
	.type	get_array_element, @function
get_array_element:
.LFB18:
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
.LFE18:
	.size	get_array_element, .-get_array_element
	.globl	set_char
	.type	set_char, @function
set_char:
.LFB19:
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
.LFE19:
	.size	set_char, .-set_char
	.globl	set_int
	.type	set_int, @function
set_int:
.LFB20:
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
.LFE20:
	.size	set_int, .-set_int
	.globl	set_long_int
	.type	set_long_int, @function
set_long_int:
.LFB21:
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
.LFE21:
	.size	set_long_int, .-set_long_int
	.globl	set_float
	.type	set_float, @function
set_float:
.LFB22:
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
.LFE22:
	.size	set_float, .-set_float
	.globl	set_double
	.type	set_double, @function
set_double:
.LFB23:
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
.LFE23:
	.size	set_double, .-set_double
	.globl	set_array_element
	.type	set_array_element, @function
set_array_element:
.LFB24:
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
.LFE24:
	.size	set_array_element, .-set_array_element
	.globl	insert_data_into_normal_array
	.type	insert_data_into_normal_array, @function
insert_data_into_normal_array:
.LFB25:
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
	jmp	.L74
.L75:
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
.L74:
	movl	-4(%rbp), %eax
	cltq
	cmpq	-24(%rbp), %rax
	jl	.L75
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	insert_data_into_normal_array, .-insert_data_into_normal_array
	.section	.rodata
	.align 8
.LC8:
	.string	"Zero hex test printing: 0x%02x \n"
.LC9:
	.string	"Starting mem test"
.LC10:
	.string	"chunks:%ld\n"
.LC11:
	.string	"After init, print mem"
.LC12:
	.string	"Trying to secure malloc"
	.align 8
.LC13:
	.string	"Last_unused_memory before:%ld\n"
.LC14:
	.string	"Not enough mem"
.LC15:
	.string	"Last_unused_memory after:%ld\n"
	.align 8
.LC16:
	.string	"After malloc,try to insert some data"
	.align 8
.LC17:
	.string	"Now let's retrieve the data and display them"
.LC18:
	.string	"%d "
	.align 8
.LC19:
	.string	"Again, Trying to secure malloc"
	.align 8
.LC20:
	.string	"Again, after malloc,try to insert some data"
	.align 8
.LC21:
	.string	"Now trying to store and retrieve 424242424..."
.LC22:
	.string	"\n\n%d \n\n"
.LC23:
	.string	"Testing wrapper functions"
.LC24:
	.string	"Got %d\n"
.LC25:
	.string	"Got %c\n"
.LC26:
	.string	"Got %ld\n"
.LC28:
	.string	"Got %lf\n"
	.align 8
.LC29:
	.string	"Array wrapper function testing"
.LC33:
	.string	"array index 2 is %lf\n"
.LC34:
	.string	"array index 3 is %lf\n"
.LC35:
	.string	"\n\n"
	.align 8
.LC36:
	.string	"After data retrieval, print mem"
.LC37:
	.string	"Mem test done"
	.text
	.globl	mem_test
	.type	mem_test, @function
mem_test:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	$20, -104(%rbp)
	movl	$0, %esi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC9, %edi
	call	puts
	movq	memory_chunk(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	total_bytes_allocated(%rip), %rax
	movq	%rax, %rdi
	call	find_useful_chunks
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC11, %edi
	call	puts
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	print_mem
	movq	-104(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -80(%rbp)
	movq	-104(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -72(%rbp)
	movq	$5, -120(%rbp)
	jmp	.L77
.L78:
	movq	-120(%rbp), %rax
	salq	$2, %rax
	leaq	-20(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	movl	%eax, %ecx
	movq	-120(%rbp), %rax
	imull	%ecx, %eax
	movl	%eax, (%rdx)
	addq	$1, -120(%rbp)
.L77:
	movq	-104(%rbp), %rax
	addq	$5, %rax
	cmpq	-120(%rbp), %rax
	jg	.L78
	movl	$.LC12, %edi
	call	puts
	movq	last_unused_memory(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC13, %edi
	movl	$0, %eax
	call	printf
	movq	-104(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	secure_malloc
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L79
	movl	$.LC14, %edi
	call	perror
	movl	$42, %edi
	call	exit
.L79:
	movq	last_unused_memory(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC15, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC16, %edi
	call	puts
	movq	-104(%rbp), %rax
	salq	$2, %rax
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_mem
	movl	$.LC17, %edi
	call	puts
	movl	$4, %edi
	call	malloc
	movq	%rax, -56(%rbp)
	movq	$0, -112(%rbp)
	jmp	.L80
.L81:
	movq	-112(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_secure_data
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC18, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -112(%rbp)
.L80:
	movq	-112(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jl	.L81
	movl	$10, %edi
	call	putchar
	movl	$.LC19, %edi
	call	puts
	movq	last_unused_memory(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC13, %edi
	movl	$0, %eax
	call	printf
	movq	-104(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	secure_malloc
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L82
	movl	$.LC14, %edi
	call	perror
	movl	$42, %edi
	call	exit
.L82:
	movq	last_unused_memory(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC15, %edi
	movl	$0, %eax
	call	printf
	movq	$5, -120(%rbp)
	jmp	.L83
.L84:
	movq	-120(%rbp), %rax
	salq	$2, %rax
	leaq	-20(%rax), %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-120(%rbp), %rax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, (%rcx)
	addq	$1, -120(%rbp)
.L83:
	movq	-104(%rbp), %rax
	addq	$5, %rax
	cmpq	-120(%rbp), %rax
	jg	.L84
	movl	$.LC20, %edi
	call	puts
	movq	-104(%rbp), %rax
	salq	$2, %rax
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_mem
	movl	$.LC17, %edi
	call	puts
	movq	$0, -112(%rbp)
	jmp	.L85
.L86:
	movq	-112(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_secure_data
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC18, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -112(%rbp)
.L85:
	movq	-112(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jl	.L86
	movl	$10, %edi
	call	putchar
	movl	$.LC21, %edi
	call	puts
	movl	$4, %edi
	call	secure_malloc
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movl	$424242424, (%rax)
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	insert_data_into_mem
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$4, %edi
	call	malloc
	movq	%rax, -56(%rbp)
	movq	-112(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	get_secure_data
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC22, %edi
	movl	$0, %eax
	call	printf
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$.LC23, %edi
	call	puts
	movl	$4, %edi
	call	secure_malloc
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$99998, %esi
	movq	%rax, %rdi
	call	set_int
	leaq	-148(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_int
	movl	-148(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC24, %edi
	movl	$0, %eax
	call	printf
	movl	$1, %edi
	call	secure_malloc
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$98, %esi
	movq	%rax, %rdi
	call	set_char
	leaq	-149(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_char
	movzbl	-149(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC25, %edi
	movl	$0, %eax
	call	printf
	movl	$8, %edi
	call	secure_malloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$54545454, %esi
	movq	%rax, %rdi
	call	set_long_int
	leaq	-144(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_long_int
	movq	-144(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC26, %edi
	movl	$0, %eax
	call	printf
	movl	$8, %edi
	call	secure_malloc
	movq	%rax, -16(%rbp)
	movabsq	$4665384344877005170, %rax
	movq	-16(%rbp), %rdx
	movq	%rax, -168(%rbp)
	movsd	-168(%rbp), %xmm0
	movq	%rdx, %rdi
	call	set_double
	leaq	-136(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_double
	movq	-136(%rbp), %rax
	movq	%rax, -168(%rbp)
	movsd	-168(%rbp), %xmm0
	movl	$.LC28, %edi
	movl	$1, %eax
	call	printf
	movl	$.LC29, %edi
	call	puts
	movl	$80, %edi
	call	secure_malloc
	movq	%rax, -8(%rbp)
	movabsq	$4631167498573958009, %rax
	movq	%rax, -128(%rbp)
	leaq	-128(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	call	set_array_element
	movabsq	$4629998950986019070, %rax
	movq	%rax, -128(%rbp)
	leaq	-128(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	call	set_array_element
	movabsq	$4607182418800017408, %rax
	movq	%rax, -128(%rbp)
	leaq	-128(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	call	get_array_element
	movq	-128(%rbp), %rax
	movq	%rax, -168(%rbp)
	movsd	-168(%rbp), %xmm0
	movl	$.LC33, %edi
	movl	$1, %eax
	call	printf
	leaq	-128(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	call	get_array_element
	movq	-128(%rbp), %rax
	movq	%rax, -168(%rbp)
	movsd	-168(%rbp), %xmm0
	movl	$.LC34, %edi
	movl	$1, %eax
	call	printf
	movl	$.LC35, %edi
	call	puts
	movl	$.LC36, %edi
	call	puts
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	print_mem
	movl	$.LC37, %edi
	call	puts
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	mem_test, .-mem_test
	.comm	sa,152,32
	.section	.rodata
.LC38:
	.string	"key no%d=0x%02x\n"
	.text
	.globl	find_keyshares
	.type	find_keyshares, @function
find_keyshares:
.LFB27:
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
	jmp	.L88
.L89:
	movl	-100(%rbp), %eax
	cltq
	movb	$0, -16(%rbp,%rax)
	addl	$1, -100(%rbp)
.L88:
	cmpl	$4, -100(%rbp)
	jle	.L89
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.L90
.L94:
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-21, %al
	jne	.L91
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	jne	.L91
	movl	$0, -100(%rbp)
	jmp	.L92
.L93:
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
.L92:
	cmpl	$4, -100(%rbp)
	jle	.L93
	addl	$1, -96(%rbp)
.L91:
	addq	$1, -88(%rbp)
.L90:
	movq	-88(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.L94
	movl	$.LC5, %esi
	movl	$.LC6, %edi
	call	fopen
	movq	%rax, -24(%rbp)
	movq	memory_chunk(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -80(%rbp)
	jmp	.L95
.L99:
	cmpl	$0, -92(%rbp)
	jne	.L96
	addq	$4, -80(%rbp)
	movl	$1, -92(%rbp)
	jmp	.L95
.L96:
	movl	$0, -100(%rbp)
	jmp	.L97
.L98:
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
.L97:
	cmpl	$4, -100(%rbp)
	jle	.L98
	addq	$5, -80(%rbp)
	movl	$0, -92(%rbp)
.L95:
	movq	total_bytes_allocated(%rip), %rax
	cmpq	%rax, -80(%rbp)
	jl	.L99
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	$10, %edi
	call	putchar
	movl	$0, -100(%rbp)
	jmp	.L100
.L101:
	movl	-100(%rbp), %eax
	cltq
	movzbl	-16(%rbp,%rax), %eax
	movzbl	%al, %edx
	movl	-100(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC38, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -100(%rbp)
.L100:
	cmpl	$4, -100(%rbp)
	jle	.L101
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L103
	call	__stack_chk_fail
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	find_keyshares, .-find_keyshares
	.section	.rodata
.LC39:
	.string	"Verification requested!"
	.text
	.globl	verification_procedure
	.type	verification_procedure, @function
verification_procedure:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$.LC39, %edi
	call	puts
	movl	$0, %eax
	call	find_keyshares
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	verification_procedure, .-verification_procedure
	.globl	foo
	.type	foo, @function
foo:
.LFB29:
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
.LFE29:
	.size	foo, .-foo
	.section	.rodata
.LC40:
	.string	"Initializing mem"
	.align 8
.LC41:
	.string	"bytes_to_allocate_on_start:%d\n"
.LC42:
	.string	"Init_mem, alloc+key insertion"
	.align 8
.LC43:
	.string	"If successful, total bytes allocated:%ld\n"
.LC44:
	.string	"Installing signal handler"
	.align 8
.LC45:
	.string	"Could not install signal handler"
.LC46:
	.string	"Signal handler installed"
.LC47:
	.string	"My pid=%ld\n"
.LC48:
	.string	"K=%d\n"
.LC49:
	.string	"n=%d\n"
.LC50:
	.string	"main is at %p\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB30:
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
	movl	$1, -60(%rbp)
	movl	$2, -52(%rbp)
	addl	$1, -52(%rbp)
	addl	$1, -52(%rbp)
	subl	$1, -52(%rbp)
	movl	-52(%rbp), %eax
	addl	%eax, -60(%rbp)
	addl	$2, -60(%rbp)
	addl	$1, -52(%rbp)
	movl	$.LC40, %edi
	call	puts
	movl	$1024, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC42, %edi
	call	puts
	movl	$0, %eax
	call	init_mem
	movq	%rax, -40(%rbp)
	movq	total_bytes_allocated(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC43, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC44, %edi
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
	jne	.L108
	movl	$.LC45, %edi
	call	perror
	movl	$45, %edi
	call	exit
.L108:
	movl	$.LC46, %edi
	call	puts
	call	getpid
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	cltq
	movq	%rax, %rsi
	movl	$.LC47, %edi
	movl	$0, %eax
	call	printf
	movl	$1, -56(%rbp)
	jmp	.L109
.L110:
	movl	-52(%rbp), %eax
	addl	%eax, -60(%rbp)
	addl	$1, -56(%rbp)
.L109:
	cmpl	$500000000, -56(%rbp)
	jle	.L110
	movl	-60(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC48, %edi
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
	movl	$.LC49, %edi
	movl	$0, %eax
	call	printf
	movl	$main, %esi
	movl	$.LC50, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	call	find_keyshares
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free_secure_mem
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L112
	call	__stack_chk_fail
.L112:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	main, .-main
	.globl	foo2
	.type	foo2, @function
foo2:
.LFB31:
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
.LFE31:
	.size	foo2, .-foo2
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.1) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
