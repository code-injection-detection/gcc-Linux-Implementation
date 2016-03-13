	.file	"Helloworldadd.c"
	.text
	.globl	foo
	.type	foo, @function
foo:
.LFB2:
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
.LFE2:
	.size	foo, .-foo
	.section	.rodata
.LC0:
	.string	"K=%d\n"
.LC1:
	.string	"n=%d\n"
.LC2:
	.string	"main is at %p\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
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
	jmp	.L4
.L5:
	movl	-8(%rbp), %eax
	addl	%eax, -16(%rbp)
	addl	$1, -12(%rbp)
.L4:
	cmpl	$500000000, -12(%rbp)
	jle	.L5
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
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
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$main, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	call	find_keyshares
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.globl	foo2
	.type	foo2, @function
foo2:
.LFB4:
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
.LFE4:
	.size	foo2, .-foo2
	.section	.rodata
.LC3:
	.string	"a=%p b=%p c=%p d=%p\n"
	.align 8
.LC4:
	.string	"start of .text=0x%lx, end of .text=0x%lx, init=0x%lx, fini=0x%lx\n"
.LC5:
	.string	"%#04x "
.LC6:
	.string	"\n\n"
.LC7:
	.string	"\nkey1="
.LC8:
	.string	"%#04x\n"
.LC9:
	.string	"key2=%#04x\n"
.LC10:
	.string	"key3=%#04x\n"
.LC11:
	.string	"key4=%#04x\n"
.LC12:
	.string	"key5=%#04x\n"
	.text
	.globl	find_keyshares
	.type	find_keyshares, @function
find_keyshares:
.LFB5:
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
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movl	$_fini, %esi
	movl	$_init, %ecx
	movl	$__etext, %edx
	movl	$__executable_start, %eax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.L10
.L12:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -56(%rbp)
.L10:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-61, %al
	je	.L11
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-53, %al
	je	.L12
.L11:
	movq	-56(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$17, %al
	jne	.L12
	movq	-56(%rbp), %rax
	subq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$17, %al
	jne	.L12
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC6, %edi
	call	puts
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.L13
.L15:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-21, %al
	jne	.L14
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	jne	.L14
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC5, %edi
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
.L14:
	addq	$1, -56(%rbp)
.L13:
	movq	-56(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jbe	.L15
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
	movzbl	-65(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
	movzbl	-64(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
	movzbl	-63(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	printf
	movzbl	-62(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC11, %edi
	movl	$0, %eax
	call	printf
	movzbl	-61(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC12, %edi
	movl	$0, %eax
	call	printf
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	find_keyshares, .-find_keyshares
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.1) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
