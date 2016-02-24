	.file	"Helloworldadd.c"
	.section	.rodata
.LC0:
	.string	"K=%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$1, -12(%rbp)
	movl	$2, -4(%rbp)
	addl	$1, -4(%rbp)
	addl	$1, -4(%rbp)
	subl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	%eax, -12(%rbp)
	addl	$2, -12(%rbp)
	addl	$1, -4(%rbp)
	movl	$1, -8(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax
	addl	%eax, -12(%rbp)
	addl	$1, -8(%rbp)
.L2:
	cmpl	$5, -8(%rbp)
	jle	.L3
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.1) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
