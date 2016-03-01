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
.LC4:
	.string	"%#04x "
.LC5:
	.string	"\n\n"
.LC6:
	.string	"\nkey1="
.LC7:
	.string	"%#04x\n"
.LC8:
	.string	"key2=%#04x\n"
.LC9:
	.string	"key3=%#04x\n"
.LC10:
	.string	"key4=%#04x\n"
.LC11:
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
	subq	$64, %rsp
	movl	$0, -44(%rbp)
	movq	$foo, -32(%rbp)
	movq	$main, -24(%rbp)
	movq	$foo2, -16(%rbp)
	movq	$find_keyshares, -8(%rbp)
	movb	$0, -49(%rbp)
	movb	$0, -48(%rbp)
	movb	$0, -47(%rbp)
	movb	$0, -46(%rbp)
	movb	$0, -45(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L10
.L12:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	addq	$1, -40(%rbp)
.L10:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-61, %al
	je	.L11
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-53, %al
	je	.L12
.L11:
	movq	-40(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$17, %al
	jne	.L12
	movq	-40(%rbp), %rax
	subq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$17, %al
	jne	.L12
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC5, %edi
	call	puts
	movq	$foo, -40(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L13
.L15:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-21, %al
	jne	.L14
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	jne	.L14
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %edx
	movzbl	-49(%rbp), %eax
	xorl	%edx, %eax
	movb	%al, -49(%rbp)
	movq	-40(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %edx
	movzbl	-48(%rbp), %eax
	xorl	%edx, %eax
	movb	%al, -48(%rbp)
	movq	-40(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %edx
	movzbl	-47(%rbp), %eax
	xorl	%edx, %eax
	movb	%al, -47(%rbp)
	movq	-40(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %edx
	movzbl	-46(%rbp), %eax
	xorl	%edx, %eax
	movb	%al, -46(%rbp)
	movq	-40(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %edx
	movzbl	-45(%rbp), %eax
	xorl	%edx, %eax
	movb	%al, -45(%rbp)
	addl	$1, -44(%rbp)
.L14:
	addq	$1, -40(%rbp)
.L13:
	cmpl	$207, -44(%rbp)
	jle	.L15
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	movzbl	-49(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
	movzbl	-48(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
	movzbl	-47(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
	movzbl	-46(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	printf
	movzbl	-45(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC11, %edi
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
