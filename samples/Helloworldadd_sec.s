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
NOP
NOP
	pushq	%rbp
 jmp .unique0
NOP
NOP
NOP
NOP
NOP
.unique0: 
	.cfi_def_cfa_offset 16
 jmp .unique1
NOP
NOP
NOP
NOP
NOP
.unique1: 
	.cfi_offset 6, -16
 jmp .unique2
NOP
NOP
NOP
NOP
NOP
.unique2: 
	movq	%rsp, %rbp
 jmp .unique3
NOP
NOP
NOP
NOP
NOP
.unique3: 
	.cfi_def_cfa_register 6
 jmp .unique4
NOP
NOP
NOP
NOP
NOP
.unique4: 
	subq	$16, %rsp
 jmp .unique5
NOP
NOP
NOP
NOP
NOP
.unique5: 
	movl	$1, -12(%rbp)
 jmp .unique6
NOP
NOP
NOP
NOP
NOP
.unique6: 
	movl	$2, -4(%rbp)
 jmp .unique7
NOP
NOP
NOP
NOP
NOP
.unique7: 
	addl	$1, -4(%rbp)
 jmp .unique8
NOP
NOP
NOP
NOP
NOP
.unique8: 
	addl	$1, -4(%rbp)
 jmp .unique9
NOP
NOP
NOP
NOP
NOP
.unique9: 
	subl	$1, -4(%rbp)
 jmp .unique10
NOP
NOP
NOP
NOP
NOP
.unique10: 
	movl	-4(%rbp), %eax
 jmp .unique11
NOP
NOP
NOP
NOP
NOP
.unique11: 
	addl	%eax, -12(%rbp)
 jmp .unique12
NOP
NOP
NOP
NOP
NOP
.unique12: 
	addl	$2, -12(%rbp)
 jmp .unique13
NOP
NOP
NOP
NOP
NOP
.unique13: 
	addl	$1, -4(%rbp)
 jmp .unique14
NOP
NOP
NOP
NOP
NOP
.unique14: 
	movl	$1, -8(%rbp)
 jmp .unique15
NOP
NOP
NOP
NOP
NOP
.unique15: 
	jmp	.L2
 jmp .unique16
NOP
NOP
NOP
NOP
NOP
.unique16: 
.L3:
 jmp .unique17
NOP
NOP
NOP
NOP
NOP
.unique17: 
	movl	-4(%rbp), %eax
 jmp .unique18
NOP
NOP
NOP
NOP
NOP
.unique18: 
	addl	%eax, -12(%rbp)
 jmp .unique19
NOP
NOP
NOP
NOP
NOP
.unique19: 
	addl	$1, -8(%rbp)
 jmp .unique20
NOP
NOP
NOP
NOP
NOP
.unique20: 
.L2:
 jmp .unique21
NOP
NOP
NOP
NOP
NOP
.unique21: 
	cmpl	$5, -8(%rbp)
 jmp .unique22
NOP
NOP
NOP
NOP
NOP
.unique22: 
	jle	.L3
 jmp .unique23
NOP
NOP
NOP
NOP
NOP
.unique23: 
	movl	-12(%rbp), %eax
 jmp .unique24
NOP
NOP
NOP
NOP
NOP
.unique24: 
	movl	%eax, %esi
 jmp .unique25
NOP
NOP
NOP
NOP
NOP
.unique25: 
	movl	$.LC0, %edi
 jmp .unique26
NOP
NOP
NOP
NOP
NOP
.unique26: 
	movl	$0, %eax
 jmp .unique27
NOP
NOP
NOP
NOP
NOP
.unique27: 
	call	printf
 jmp .unique28
NOP
NOP
NOP
NOP
NOP
.unique28: 
	movl	$0, %eax
 jmp .unique29
NOP
NOP
NOP
NOP
NOP
.unique29: 
	leave
 jmp .unique30
NOP
NOP
NOP
NOP
NOP
.unique30: 
	.cfi_def_cfa 7, 8
 jmp .unique31
NOP
NOP
NOP
NOP
NOP
.unique31: 
	ret
	.cfi_endproc
