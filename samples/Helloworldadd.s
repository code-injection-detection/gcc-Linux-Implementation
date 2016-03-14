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
	movq	$1, -24(%rbp)
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
	movq	$1, -40(%rbp)
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
	cmpq	$0, -40(%rbp)
	jle	.L17
	addq	$1, -48(%rbp)
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
	cmpq	$0, -32(%rbp)
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
	addq	$1, -40(%rbp)
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
	.section	.rodata
	.align 8
.LC4:
	.string	"get_secure_data:malloc failed.\n"
	.text
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
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	%rcx, -96(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -60(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L31
	movl	$.LC4, %edi
	call	perror
	movl	$42, %edi
	call	exit
.L31:
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -56(%rbp)
	cmpl	$0, -84(%rbp)
	je	.L32
	movq	-96(%rbp), %rax
	imulq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-96(%rbp), %rax
	imulq	-72(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L33
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, -32(%rbp)
	jmp	.L32
.L33:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, -32(%rbp)
	movq	-96(%rbp), %rax
	imulq	-72(%rbp), %rax
	subq	-8(%rbp), %rax
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
	cmpq	$0, -40(%rbp)
	jg	.L35
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-72(%rbp), %rax
	jl	.L36
.L35:
	movq	-40(%rbp), %rax
	addq	%rax, -24(%rbp)
	addq	$6, -32(%rbp)
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
	cmpq	$0, -48(%rbp)
	jg	.L40
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	-72(%rbp), %rax
	jl	.L41
.L40:
	movq	-48(%rbp), %rax
	addq	%rax, -24(%rbp)
	addq	$1, -56(%rbp)
	movl	$1, -60(%rbp)
.L37:
	movq	-24(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jl	.L42
	movq	-16(%rbp), %rax
	leave
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
	movq	$1, -8(%rbp)
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
	.globl	insert_data_into_normal_array
	.type	insert_data_into_normal_array, @function
insert_data_into_normal_array:
.LFB11:
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
	jmp	.L49
.L50:
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
.L49:
	movl	-4(%rbp), %eax
	cltq
	cmpq	-24(%rbp), %rax
	jl	.L50
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	insert_data_into_normal_array, .-insert_data_into_normal_array
	.section	.rodata
	.align 8
.LC5:
	.string	"Zero hex test printing: 0x%02x \n"
.LC6:
	.string	"Starting mem test"
	.align 8
.LC7:
	.string	"bytes_to_allocate_on_start:%d\n"
.LC8:
	.string	"Init_mem, alloc+key insertion"
	.align 8
.LC9:
	.string	"If successful, total bytes allocated:%ld\n"
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
	.string	"After data retrieval, print mem"
.LC19:
	.string	"Mem test done"
	.text
	.globl	mem_test
	.type	mem_test, @function
mem_test:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	$20, -56(%rbp)
	movl	$0, %esi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC6, %edi
	call	puts
	movl	$1024, %esi
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC8, %edi
	call	puts
	movl	$0, %eax
	call	init_mem
	movq	%rax, -48(%rbp)
	movq	total_bytes_allocated(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
	movq	total_bytes_allocated(%rip), %rax
	movq	%rax, %rdi
	call	find_useful_chunks
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC11, %edi
	call	puts
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	print_mem
	movq	-56(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -24(%rbp)
	movq	$0, -72(%rbp)
	jmp	.L52
.L53:
	movq	-72(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	addl	$2, %eax
	movl	%eax, (%rdx)
	addq	$1, -72(%rbp)
.L52:
	movq	-72(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.L53
	movl	$.LC12, %edi
	call	puts
	movq	last_unused_memory(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC13, %edi
	movl	$0, %eax
	call	printf
	movq	-56(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	secure_malloc
	movq	%rax, -16(%rbp)
	movq	last_unused_memory(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC14, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC15, %edi
	call	puts
	movq	-56(%rbp), %rax
	salq	$2, %rax
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	insert_data_into_mem
	movl	$.LC16, %edi
	call	puts
	movq	$0, -64(%rbp)
	jmp	.L54
.L55:
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$4, %edi
	call	get_secure_data
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC17, %edi
	movl	$0, %eax
	call	printf
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free
	addq	$1, -64(%rbp)
.L54:
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.L55
	movl	$10, %edi
	call	putchar
	movl	$.LC18, %edi
	call	puts
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	print_mem
	movl	$.LC19, %edi
	call	puts
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	mem_test, .-mem_test
	.globl	foo
	.type	foo, @function
foo:
.LFB13:
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
.LFE13:
	.size	foo, .-foo
	.section	.rodata
.LC20:
	.string	"K=%d\n"
.LC21:
	.string	"n=%d\n"
.LC22:
	.string	"main is at %p\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$1, -16(%rbp)
	movl	$2, -8(%rbp)
	addl	$1, -8(%rbp)
	addl	$1, -8(%rbp)
	subl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	%eax, -16(%rbp)
	addl	$2, -16(%rbp)
	addl	$1, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L59
.L60:
	movl	-8(%rbp), %eax
	addl	%eax, -16(%rbp)
	addl	$1, -12(%rbp)
.L59:
	cmpl	$500000000, -12(%rbp)
	jle	.L60
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC20, %edi
	movl	$0, %eax
	call	printf
	movl	$5, %edi
	call	foo
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	movl	$0, %eax
	call	foo2
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC21, %edi
	movl	$0, %eax
	call	printf
	movl	$main, %esi
	movl	$.LC22, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	call	mem_test
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.globl	foo2
	.type	foo2, @function
foo2:
.LFB15:
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
.LFE15:
	.size	foo2, .-foo2
	.section	.rodata
.LC23:
	.string	"a=%p b=%p c=%p d=%p\n"
	.align 8
.LC24:
	.string	"start of .text=0x%lx, end of .text=0x%lx, init=0x%lx, fini=0x%lx\n"
.LC25:
	.string	"%#04x "
.LC26:
	.string	"\n\n"
.LC27:
	.string	"\nkey1="
.LC28:
	.string	"%#04x\n"
.LC29:
	.string	"key2=%#04x\n"
.LC30:
	.string	"key3=%#04x\n"
.LC31:
	.string	"key4=%#04x\n"
.LC32:
	.string	"key5=%#04x\n"
	.text
	.globl	find_keyshares
	.type	find_keyshares, @function
find_keyshares:
.LFB16:
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
	movl	$.LC23, %edi
	movl	$0, %eax
	call	printf
	movl	$_fini, %esi
	movl	$_init, %ecx
	movl	$__etext, %edx
	movl	$__executable_start, %eax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$.LC24, %edi
	movl	$0, %eax
	call	printf
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.L65
.L67:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC25, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -56(%rbp)
.L65:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-61, %al
	je	.L66
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-53, %al
	je	.L67
.L66:
	movq	-56(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$17, %al
	jne	.L67
	movq	-56(%rbp), %rax
	subq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$17, %al
	jne	.L67
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC25, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC26, %edi
	call	puts
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.L68
.L70:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-21, %al
	jne	.L69
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	jne	.L69
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC25, %edi
	movl	$0, %eax
	call	printf
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %edx
	movzbl	-65(%rbp), %eax
	xorl	%edx, %eax
	movb	%al, -65(%rbp)
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %edx
	movzbl	-64(%rbp), %eax
	xorl	%edx, %eax
	movb	%al, -64(%rbp)
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %edx
	movzbl	-63(%rbp), %eax
	xorl	%edx, %eax
	movb	%al, -63(%rbp)
	movq	-56(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %edx
	movzbl	-62(%rbp), %eax
	xorl	%edx, %eax
	movb	%al, -62(%rbp)
	movq	-56(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %edx
	movzbl	-61(%rbp), %eax
	xorl	%edx, %eax
	movb	%al, -61(%rbp)
	addl	$1, -60(%rbp)
.L69:
	addq	$1, -56(%rbp)
.L68:
	movq	-56(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jbe	.L70
	movl	$.LC27, %edi
	movl	$0, %eax
	call	printf
	movzbl	-65(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC28, %edi
	movl	$0, %eax
	call	printf
	movzbl	-64(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC29, %edi
	movl	$0, %eax
	call	printf
	movzbl	-63(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC30, %edi
	movl	$0, %eax
	call	printf
	movzbl	-62(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC31, %edi
	movl	$0, %eax
	call	printf
	movzbl	-61(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC32, %edi
	movl	$0, %eax
	call	printf
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	find_keyshares, .-find_keyshares
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.1) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
