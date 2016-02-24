	.file	"simpleadd.c"
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
	movl	$1, -8(%rbp)
 jmp .unique5
NOP
NOP
NOP
NOP
NOP
.unique5: 
	movl	$2, -4(%rbp)
 jmp .unique6
NOP
NOP
NOP
NOP
NOP
.unique6: 
	addl	$1, -4(%rbp)
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
	subl	$1, -4(%rbp)
 jmp .unique9
NOP
NOP
NOP
NOP
NOP
.unique9: 
	movl	-4(%rbp), %eax
 jmp .unique10
NOP
NOP
NOP
NOP
NOP
.unique10: 
	addl	%eax, -8(%rbp)
 jmp .unique11
NOP
NOP
NOP
NOP
NOP
.unique11: 
	addl	$2, -8(%rbp)
 jmp .unique12
NOP
NOP
NOP
NOP
NOP
.unique12: 
	addl	$1, -4(%rbp)
 jmp .unique13
NOP
NOP
NOP
NOP
NOP
.unique13: 
	movl	$0, %eax
 jmp .unique14
NOP
NOP
NOP
NOP
NOP
.unique14: 
	popq	%rbp
 jmp .unique15
NOP
NOP
NOP
NOP
NOP
.unique15: 
	.cfi_def_cfa 7, 8
 jmp .unique16
NOP
NOP
NOP
NOP
NOP
.unique16: 
	ret
	.cfi_endproc
