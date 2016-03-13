	.file	"Helloworldadd.c"
	.text
	.globl	foo
	.type	foo, @function
foo:
.LFB2:
	.cfi_startproc
NOP
NOP
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE0
NOP
NOP
NOP
NOP
NOP
.UNIQUE0: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1
NOP
NOP
NOP
NOP
NOP
.UNIQUE1: 
	movl	%edi, -20(%rbp)
 jmp .UNIQUE2
NOP
NOP
NOP
NOP
NOP
.UNIQUE2: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE3
NOP
NOP
NOP
NOP
NOP
.UNIQUE3: 
	addl	$2, %eax
 jmp .UNIQUE4
NOP
NOP
NOP
NOP
NOP
.UNIQUE4: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE5
NOP
NOP
NOP
NOP
NOP
.UNIQUE5: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE6
NOP
NOP
NOP
NOP
NOP
.UNIQUE6: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7
NOP
NOP
NOP
NOP
NOP
.UNIQUE7: 
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
NOP
NOP
 jmp .UNIQUE8
NOP
NOP
NOP
NOP
NOP
.UNIQUE8: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE9
NOP
NOP
NOP
NOP
NOP
.UNIQUE9: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE10
NOP
NOP
NOP
NOP
NOP
.UNIQUE10: 
	subq	$16, %rsp
 jmp .UNIQUE11
NOP
NOP
NOP
NOP
NOP
.UNIQUE11: 
	movl	$1, -16(%rbp)
 jmp .UNIQUE12
NOP
NOP
NOP
NOP
NOP
.UNIQUE12: 
	movl	$2, -8(%rbp)
 jmp .UNIQUE13
NOP
NOP
NOP
NOP
NOP
.UNIQUE13: 
	addl	$1, -8(%rbp)
 jmp .UNIQUE14
NOP
NOP
NOP
NOP
NOP
.UNIQUE14: 
	addl	$1, -8(%rbp)
 jmp .UNIQUE15
NOP
NOP
NOP
NOP
NOP
.UNIQUE15: 
	subl	$1, -8(%rbp)
 jmp .UNIQUE16
NOP
NOP
NOP
NOP
NOP
.UNIQUE16: 
	movl	-8(%rbp), %eax
 jmp .UNIQUE17
NOP
NOP
NOP
NOP
NOP
.UNIQUE17: 
	addl	%eax, -16(%rbp)
 jmp .UNIQUE18
NOP
NOP
NOP
NOP
NOP
.UNIQUE18: 
	addl	$2, -16(%rbp)
 jmp .UNIQUE19
NOP
NOP
NOP
NOP
NOP
.UNIQUE19: 
	addl	$1, -8(%rbp)
 jmp .UNIQUE20
NOP
NOP
NOP
NOP
NOP
.UNIQUE20: 
	movl	$1, -12(%rbp)
 jmp .UNIQUE21
NOP
NOP
NOP
NOP
NOP
.UNIQUE21: 
	jmp	.L4
.L5:
 jmp .UNIQUE22
NOP
NOP
NOP
NOP
NOP
.UNIQUE22: 
	movl	-8(%rbp), %eax
 jmp .UNIQUE23
NOP
NOP
NOP
NOP
NOP
.UNIQUE23: 
	addl	%eax, -16(%rbp)
 jmp .UNIQUE24
NOP
NOP
NOP
NOP
NOP
.UNIQUE24: 
	addl	$1, -12(%rbp)
.L4:
 jmp .UNIQUE25
NOP
NOP
NOP
NOP
NOP
.UNIQUE25: 
	cmpl	$500000000, -12(%rbp)
 jmp .UNIQUE26
NOP
NOP
NOP
NOP
NOP
.UNIQUE26: 
	jle	.L5
 jmp .UNIQUE27
NOP
NOP
NOP
NOP
NOP
.UNIQUE27: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE28
NOP
NOP
NOP
NOP
NOP
.UNIQUE28: 
	movl	%eax, %esi
 jmp .UNIQUE29
NOP
NOP
NOP
NOP
NOP
.UNIQUE29: 
	movl	$.LC0, %edi
 jmp .UNIQUE30
NOP
NOP
NOP
NOP
NOP
.UNIQUE30: 
	movl	$0, %eax
 jmp .UNIQUE31
NOP
NOP
NOP
NOP
NOP
.UNIQUE31: 
	call	printf
 jmp .UNIQUE32
NOP
NOP
NOP
NOP
NOP
.UNIQUE32: 
	movl	$5, %edi
 jmp .UNIQUE33
NOP
NOP
NOP
NOP
NOP
.UNIQUE33: 
	call	foo
 jmp .UNIQUE34
NOP
NOP
NOP
NOP
NOP
.UNIQUE34: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE35
NOP
NOP
NOP
NOP
NOP
.UNIQUE35: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE36
NOP
NOP
NOP
NOP
NOP
.UNIQUE36: 
	movl	%eax, %edi
 jmp .UNIQUE37
NOP
NOP
NOP
NOP
NOP
.UNIQUE37: 
	movl	$0, %eax
 jmp .UNIQUE38
NOP
NOP
NOP
NOP
NOP
.UNIQUE38: 
	call	foo2
 jmp .UNIQUE39
NOP
NOP
NOP
NOP
NOP
.UNIQUE39: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE40
NOP
NOP
NOP
NOP
NOP
.UNIQUE40: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE41
NOP
NOP
NOP
NOP
NOP
.UNIQUE41: 
	movl	%eax, %esi
 jmp .UNIQUE42
NOP
NOP
NOP
NOP
NOP
.UNIQUE42: 
	movl	$.LC1, %edi
 jmp .UNIQUE43
NOP
NOP
NOP
NOP
NOP
.UNIQUE43: 
	movl	$0, %eax
 jmp .UNIQUE44
NOP
NOP
NOP
NOP
NOP
.UNIQUE44: 
	call	printf
 jmp .UNIQUE45
NOP
NOP
NOP
NOP
NOP
.UNIQUE45: 
	movl	$main, %esi
 jmp .UNIQUE46
NOP
NOP
NOP
NOP
NOP
.UNIQUE46: 
	movl	$.LC2, %edi
 jmp .UNIQUE47
NOP
NOP
NOP
NOP
NOP
.UNIQUE47: 
	movl	$0, %eax
 jmp .UNIQUE48
NOP
NOP
NOP
NOP
NOP
.UNIQUE48: 
	call	printf
 jmp .UNIQUE49
NOP
NOP
NOP
NOP
NOP
.UNIQUE49: 
	movl	$0, %eax
 jmp .UNIQUE50
NOP
NOP
NOP
NOP
NOP
.UNIQUE50: 
	call	find_keyshares
 jmp .UNIQUE51
NOP
NOP
NOP
NOP
NOP
.UNIQUE51: 
	movl	$0, %eax
 jmp .UNIQUE52
NOP
NOP
NOP
NOP
NOP
.UNIQUE52: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE53
NOP
NOP
NOP
NOP
NOP
.UNIQUE53: 
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.globl	foo2
	.type	foo2, @function
foo2:
.LFB4:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE54
NOP
NOP
NOP
NOP
NOP
.UNIQUE54: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE55
NOP
NOP
NOP
NOP
NOP
.UNIQUE55: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE56
NOP
NOP
NOP
NOP
NOP
.UNIQUE56: 
	movl	%edi, -20(%rbp)
 jmp .UNIQUE57
NOP
NOP
NOP
NOP
NOP
.UNIQUE57: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE58
NOP
NOP
NOP
NOP
NOP
.UNIQUE58: 
	addl	$3, %eax
 jmp .UNIQUE59
NOP
NOP
NOP
NOP
NOP
.UNIQUE59: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE60
NOP
NOP
NOP
NOP
NOP
.UNIQUE60: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE61
NOP
NOP
NOP
NOP
NOP
.UNIQUE61: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE62
NOP
NOP
NOP
NOP
NOP
.UNIQUE62: 
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
NOP
NOP
 jmp .UNIQUE63
NOP
NOP
NOP
NOP
NOP
.UNIQUE63: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE64
NOP
NOP
NOP
NOP
NOP
.UNIQUE64: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE65
NOP
NOP
NOP
NOP
NOP
.UNIQUE65: 
	subq	$80, %rsp
 jmp .UNIQUE66
NOP
NOP
NOP
NOP
NOP
.UNIQUE66: 
	movl	$0, -60(%rbp)
 jmp .UNIQUE67
NOP
NOP
NOP
NOP
NOP
.UNIQUE67: 
	movq	$foo, -48(%rbp)
 jmp .UNIQUE68
NOP
NOP
NOP
NOP
NOP
.UNIQUE68: 
	movq	$main, -40(%rbp)
 jmp .UNIQUE69
NOP
NOP
NOP
NOP
NOP
.UNIQUE69: 
	movq	$foo2, -32(%rbp)
 jmp .UNIQUE70
NOP
NOP
NOP
NOP
NOP
.UNIQUE70: 
	movq	$find_keyshares, -24(%rbp)
 jmp .UNIQUE71
NOP
NOP
NOP
NOP
NOP
.UNIQUE71: 
	movb	$0, -65(%rbp)
 jmp .UNIQUE72
NOP
NOP
NOP
NOP
NOP
.UNIQUE72: 
	movb	$0, -64(%rbp)
 jmp .UNIQUE73
NOP
NOP
NOP
NOP
NOP
.UNIQUE73: 
	movb	$0, -63(%rbp)
 jmp .UNIQUE74
NOP
NOP
NOP
NOP
NOP
.UNIQUE74: 
	movb	$0, -62(%rbp)
 jmp .UNIQUE75
NOP
NOP
NOP
NOP
NOP
.UNIQUE75: 
	movb	$0, -61(%rbp)
 jmp .UNIQUE76
NOP
NOP
NOP
NOP
NOP
.UNIQUE76: 
	movq	$__executable_start, -16(%rbp)
 jmp .UNIQUE77
NOP
NOP
NOP
NOP
NOP
.UNIQUE77: 
	movq	$__etext, -8(%rbp)
 jmp .UNIQUE78
NOP
NOP
NOP
NOP
NOP
.UNIQUE78: 
	movq	-24(%rbp), %rsi
 jmp .UNIQUE79
NOP
NOP
NOP
NOP
NOP
.UNIQUE79: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE80
NOP
NOP
NOP
NOP
NOP
.UNIQUE80: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE81
NOP
NOP
NOP
NOP
NOP
.UNIQUE81: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE82
NOP
NOP
NOP
NOP
NOP
.UNIQUE82: 
	movq	%rsi, %r8
 jmp .UNIQUE83
NOP
NOP
NOP
NOP
NOP
.UNIQUE83: 
	movq	%rax, %rsi
 jmp .UNIQUE84
NOP
NOP
NOP
NOP
NOP
.UNIQUE84: 
	movl	$.LC3, %edi
 jmp .UNIQUE85
NOP
NOP
NOP
NOP
NOP
.UNIQUE85: 
	movl	$0, %eax
 jmp .UNIQUE86
NOP
NOP
NOP
NOP
NOP
.UNIQUE86: 
	call	printf
 jmp .UNIQUE87
NOP
NOP
NOP
NOP
NOP
.UNIQUE87: 
	movl	$_fini, %esi
 jmp .UNIQUE88
NOP
NOP
NOP
NOP
NOP
.UNIQUE88: 
	movl	$_init, %ecx
 jmp .UNIQUE89
NOP
NOP
NOP
NOP
NOP
.UNIQUE89: 
	movl	$__etext, %edx
 jmp .UNIQUE90
NOP
NOP
NOP
NOP
NOP
.UNIQUE90: 
	movl	$__executable_start, %eax
 jmp .UNIQUE91
NOP
NOP
NOP
NOP
NOP
.UNIQUE91: 
	movq	%rsi, %r8
 jmp .UNIQUE92
NOP
NOP
NOP
NOP
NOP
.UNIQUE92: 
	movq	%rax, %rsi
 jmp .UNIQUE93
NOP
NOP
NOP
NOP
NOP
.UNIQUE93: 
	movl	$.LC4, %edi
 jmp .UNIQUE94
NOP
NOP
NOP
NOP
NOP
.UNIQUE94: 
	movl	$0, %eax
 jmp .UNIQUE95
NOP
NOP
NOP
NOP
NOP
.UNIQUE95: 
	call	printf
 jmp .UNIQUE96
NOP
NOP
NOP
NOP
NOP
.UNIQUE96: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE97
NOP
NOP
NOP
NOP
NOP
.UNIQUE97: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE98
NOP
NOP
NOP
NOP
NOP
.UNIQUE98: 
	jmp	.L10
.L12:
 jmp .UNIQUE99
NOP
NOP
NOP
NOP
NOP
.UNIQUE99: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE100
NOP
NOP
NOP
NOP
NOP
.UNIQUE100: 
	movzbl	(%rax), %eax
 jmp .UNIQUE101
NOP
NOP
NOP
NOP
NOP
.UNIQUE101: 
	movsbl	%al, %eax
 jmp .UNIQUE102
NOP
NOP
NOP
NOP
NOP
.UNIQUE102: 
	movl	%eax, %esi
 jmp .UNIQUE103
NOP
NOP
NOP
NOP
NOP
.UNIQUE103: 
	movl	$.LC5, %edi
 jmp .UNIQUE104
NOP
NOP
NOP
NOP
NOP
.UNIQUE104: 
	movl	$0, %eax
 jmp .UNIQUE105
NOP
NOP
NOP
NOP
NOP
.UNIQUE105: 
	call	printf
 jmp .UNIQUE106
NOP
NOP
NOP
NOP
NOP
.UNIQUE106: 
	addq	$1, -56(%rbp)
.L10:
 jmp .UNIQUE107
NOP
NOP
NOP
NOP
NOP
.UNIQUE107: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE108
NOP
NOP
NOP
NOP
NOP
.UNIQUE108: 
	movzbl	(%rax), %eax
 jmp .UNIQUE109
NOP
NOP
NOP
NOP
NOP
.UNIQUE109: 
	cmpb	$-61, %al
 jmp .UNIQUE110
NOP
NOP
NOP
NOP
NOP
.UNIQUE110: 
	je	.L11
 jmp .UNIQUE111
NOP
NOP
NOP
NOP
NOP
.UNIQUE111: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE112
NOP
NOP
NOP
NOP
NOP
.UNIQUE112: 
	movzbl	(%rax), %eax
 jmp .UNIQUE113
NOP
NOP
NOP
NOP
NOP
.UNIQUE113: 
	cmpb	$-53, %al
 jmp .UNIQUE114
NOP
NOP
NOP
NOP
NOP
.UNIQUE114: 
	je	.L12
.L11:
 jmp .UNIQUE115
NOP
NOP
NOP
NOP
NOP
.UNIQUE115: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE116
NOP
NOP
NOP
NOP
NOP
.UNIQUE116: 
	subq	$1, %rax
 jmp .UNIQUE117
NOP
NOP
NOP
NOP
NOP
.UNIQUE117: 
	movzbl	(%rax), %eax
 jmp .UNIQUE118
NOP
NOP
NOP
NOP
NOP
.UNIQUE118: 
	cmpb	$17, %al
 jmp .UNIQUE119
NOP
NOP
NOP
NOP
NOP
.UNIQUE119: 
	jne	.L12
 jmp .UNIQUE120
NOP
NOP
NOP
NOP
NOP
.UNIQUE120: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE121
NOP
NOP
NOP
NOP
NOP
.UNIQUE121: 
	subq	$2, %rax
 jmp .UNIQUE122
NOP
NOP
NOP
NOP
NOP
.UNIQUE122: 
	movzbl	(%rax), %eax
 jmp .UNIQUE123
NOP
NOP
NOP
NOP
NOP
.UNIQUE123: 
	cmpb	$17, %al
 jmp .UNIQUE124
NOP
NOP
NOP
NOP
NOP
.UNIQUE124: 
	jne	.L12
 jmp .UNIQUE125
NOP
NOP
NOP
NOP
NOP
.UNIQUE125: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE126
NOP
NOP
NOP
NOP
NOP
.UNIQUE126: 
	movzbl	(%rax), %eax
 jmp .UNIQUE127
NOP
NOP
NOP
NOP
NOP
.UNIQUE127: 
	movsbl	%al, %eax
 jmp .UNIQUE128
NOP
NOP
NOP
NOP
NOP
.UNIQUE128: 
	movl	%eax, %esi
 jmp .UNIQUE129
NOP
NOP
NOP
NOP
NOP
.UNIQUE129: 
	movl	$.LC5, %edi
 jmp .UNIQUE130
NOP
NOP
NOP
NOP
NOP
.UNIQUE130: 
	movl	$0, %eax
 jmp .UNIQUE131
NOP
NOP
NOP
NOP
NOP
.UNIQUE131: 
	call	printf
 jmp .UNIQUE132
NOP
NOP
NOP
NOP
NOP
.UNIQUE132: 
	movl	$.LC6, %edi
 jmp .UNIQUE133
NOP
NOP
NOP
NOP
NOP
.UNIQUE133: 
	call	puts
 jmp .UNIQUE134
NOP
NOP
NOP
NOP
NOP
.UNIQUE134: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE135
NOP
NOP
NOP
NOP
NOP
.UNIQUE135: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE136
NOP
NOP
NOP
NOP
NOP
.UNIQUE136: 
	jmp	.L13
.L15:
 jmp .UNIQUE137
NOP
NOP
NOP
NOP
NOP
.UNIQUE137: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE138
NOP
NOP
NOP
NOP
NOP
.UNIQUE138: 
	movzbl	(%rax), %eax
 jmp .UNIQUE139
NOP
NOP
NOP
NOP
NOP
.UNIQUE139: 
	cmpb	$-21, %al
 jmp .UNIQUE140
NOP
NOP
NOP
NOP
NOP
.UNIQUE140: 
	jne	.L14
 jmp .UNIQUE141
NOP
NOP
NOP
NOP
NOP
.UNIQUE141: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE142
NOP
NOP
NOP
NOP
NOP
.UNIQUE142: 
	addq	$1, %rax
 jmp .UNIQUE143
NOP
NOP
NOP
NOP
NOP
.UNIQUE143: 
	movzbl	(%rax), %eax
 jmp .UNIQUE144
NOP
NOP
NOP
NOP
NOP
.UNIQUE144: 
	cmpb	$5, %al
 jmp .UNIQUE145
NOP
NOP
NOP
NOP
NOP
.UNIQUE145: 
	jne	.L14
 jmp .UNIQUE146
NOP
NOP
NOP
NOP
NOP
.UNIQUE146: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE147
NOP
NOP
NOP
NOP
NOP
.UNIQUE147: 
	addq	$2, %rax
 jmp .UNIQUE148
NOP
NOP
NOP
NOP
NOP
.UNIQUE148: 
	movzbl	(%rax), %eax
 jmp .UNIQUE149
NOP
NOP
NOP
NOP
NOP
.UNIQUE149: 
	movsbl	%al, %eax
 jmp .UNIQUE150
NOP
NOP
NOP
NOP
NOP
.UNIQUE150: 
	movl	%eax, %esi
 jmp .UNIQUE151
NOP
NOP
NOP
NOP
NOP
.UNIQUE151: 
	movl	$.LC5, %edi
 jmp .UNIQUE152
NOP
NOP
NOP
NOP
NOP
.UNIQUE152: 
	movl	$0, %eax
 jmp .UNIQUE153
NOP
NOP
NOP
NOP
NOP
.UNIQUE153: 
	call	printf
 jmp .UNIQUE154
NOP
NOP
NOP
NOP
NOP
.UNIQUE154: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE155
NOP
NOP
NOP
NOP
NOP
.UNIQUE155: 
	addq	$2, %rax
 jmp .UNIQUE156
NOP
NOP
NOP
NOP
NOP
.UNIQUE156: 
	movzbl	(%rax), %edx
 jmp .UNIQUE157
NOP
NOP
NOP
NOP
NOP
.UNIQUE157: 
	movzbl	-65(%rbp), %eax
 jmp .UNIQUE158
NOP
NOP
NOP
NOP
NOP
.UNIQUE158: 
	xorl	%edx, %eax
 jmp .UNIQUE159
NOP
NOP
NOP
NOP
NOP
.UNIQUE159: 
	movb	%al, -65(%rbp)
 jmp .UNIQUE160
NOP
NOP
NOP
NOP
NOP
.UNIQUE160: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE161
NOP
NOP
NOP
NOP
NOP
.UNIQUE161: 
	addq	$3, %rax
 jmp .UNIQUE162
NOP
NOP
NOP
NOP
NOP
.UNIQUE162: 
	movzbl	(%rax), %edx
 jmp .UNIQUE163
NOP
NOP
NOP
NOP
NOP
.UNIQUE163: 
	movzbl	-64(%rbp), %eax
 jmp .UNIQUE164
NOP
NOP
NOP
NOP
NOP
.UNIQUE164: 
	xorl	%edx, %eax
 jmp .UNIQUE165
NOP
NOP
NOP
NOP
NOP
.UNIQUE165: 
	movb	%al, -64(%rbp)
 jmp .UNIQUE166
NOP
NOP
NOP
NOP
NOP
.UNIQUE166: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE167
NOP
NOP
NOP
NOP
NOP
.UNIQUE167: 
	addq	$4, %rax
 jmp .UNIQUE168
NOP
NOP
NOP
NOP
NOP
.UNIQUE168: 
	movzbl	(%rax), %edx
 jmp .UNIQUE169
NOP
NOP
NOP
NOP
NOP
.UNIQUE169: 
	movzbl	-63(%rbp), %eax
 jmp .UNIQUE170
NOP
NOP
NOP
NOP
NOP
.UNIQUE170: 
	xorl	%edx, %eax
 jmp .UNIQUE171
NOP
NOP
NOP
NOP
NOP
.UNIQUE171: 
	movb	%al, -63(%rbp)
 jmp .UNIQUE172
NOP
NOP
NOP
NOP
NOP
.UNIQUE172: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE173
NOP
NOP
NOP
NOP
NOP
.UNIQUE173: 
	addq	$5, %rax
 jmp .UNIQUE174
NOP
NOP
NOP
NOP
NOP
.UNIQUE174: 
	movzbl	(%rax), %edx
 jmp .UNIQUE175
NOP
NOP
NOP
NOP
NOP
.UNIQUE175: 
	movzbl	-62(%rbp), %eax
 jmp .UNIQUE176
NOP
NOP
NOP
NOP
NOP
.UNIQUE176: 
	xorl	%edx, %eax
 jmp .UNIQUE177
NOP
NOP
NOP
NOP
NOP
.UNIQUE177: 
	movb	%al, -62(%rbp)
 jmp .UNIQUE178
NOP
NOP
NOP
NOP
NOP
.UNIQUE178: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE179
NOP
NOP
NOP
NOP
NOP
.UNIQUE179: 
	addq	$6, %rax
 jmp .UNIQUE180
NOP
NOP
NOP
NOP
NOP
.UNIQUE180: 
	movzbl	(%rax), %edx
 jmp .UNIQUE181
NOP
NOP
NOP
NOP
NOP
.UNIQUE181: 
	movzbl	-61(%rbp), %eax
 jmp .UNIQUE182
NOP
NOP
NOP
NOP
NOP
.UNIQUE182: 
	xorl	%edx, %eax
 jmp .UNIQUE183
NOP
NOP
NOP
NOP
NOP
.UNIQUE183: 
	movb	%al, -61(%rbp)
 jmp .UNIQUE184
NOP
NOP
NOP
NOP
NOP
.UNIQUE184: 
	addl	$1, -60(%rbp)
.L14:
 jmp .UNIQUE185
NOP
NOP
NOP
NOP
NOP
.UNIQUE185: 
	addq	$1, -56(%rbp)
.L13:
 jmp .UNIQUE186
NOP
NOP
NOP
NOP
NOP
.UNIQUE186: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE187
NOP
NOP
NOP
NOP
NOP
.UNIQUE187: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE188
NOP
NOP
NOP
NOP
NOP
.UNIQUE188: 
	jbe	.L15
 jmp .UNIQUE189
NOP
NOP
NOP
NOP
NOP
.UNIQUE189: 
	movl	$.LC7, %edi
 jmp .UNIQUE190
NOP
NOP
NOP
NOP
NOP
.UNIQUE190: 
	movl	$0, %eax
 jmp .UNIQUE191
NOP
NOP
NOP
NOP
NOP
.UNIQUE191: 
	call	printf
 jmp .UNIQUE192
NOP
NOP
NOP
NOP
NOP
.UNIQUE192: 
	movzbl	-65(%rbp), %eax
 jmp .UNIQUE193
NOP
NOP
NOP
NOP
NOP
.UNIQUE193: 
	movl	%eax, %esi
 jmp .UNIQUE194
NOP
NOP
NOP
NOP
NOP
.UNIQUE194: 
	movl	$.LC8, %edi
 jmp .UNIQUE195
NOP
NOP
NOP
NOP
NOP
.UNIQUE195: 
	movl	$0, %eax
 jmp .UNIQUE196
NOP
NOP
NOP
NOP
NOP
.UNIQUE196: 
	call	printf
 jmp .UNIQUE197
NOP
NOP
NOP
NOP
NOP
.UNIQUE197: 
	movzbl	-64(%rbp), %eax
 jmp .UNIQUE198
NOP
NOP
NOP
NOP
NOP
.UNIQUE198: 
	movl	%eax, %esi
 jmp .UNIQUE199
NOP
NOP
NOP
NOP
NOP
.UNIQUE199: 
	movl	$.LC9, %edi
 jmp .UNIQUE200
NOP
NOP
NOP
NOP
NOP
.UNIQUE200: 
	movl	$0, %eax
 jmp .UNIQUE201
NOP
NOP
NOP
NOP
NOP
.UNIQUE201: 
	call	printf
 jmp .UNIQUE202
NOP
NOP
NOP
NOP
NOP
.UNIQUE202: 
	movzbl	-63(%rbp), %eax
 jmp .UNIQUE203
NOP
NOP
NOP
NOP
NOP
.UNIQUE203: 
	movl	%eax, %esi
 jmp .UNIQUE204
NOP
NOP
NOP
NOP
NOP
.UNIQUE204: 
	movl	$.LC10, %edi
 jmp .UNIQUE205
NOP
NOP
NOP
NOP
NOP
.UNIQUE205: 
	movl	$0, %eax
 jmp .UNIQUE206
NOP
NOP
NOP
NOP
NOP
.UNIQUE206: 
	call	printf
 jmp .UNIQUE207
NOP
NOP
NOP
NOP
NOP
.UNIQUE207: 
	movzbl	-62(%rbp), %eax
 jmp .UNIQUE208
NOP
NOP
NOP
NOP
NOP
.UNIQUE208: 
	movl	%eax, %esi
 jmp .UNIQUE209
NOP
NOP
NOP
NOP
NOP
.UNIQUE209: 
	movl	$.LC11, %edi
 jmp .UNIQUE210
NOP
NOP
NOP
NOP
NOP
.UNIQUE210: 
	movl	$0, %eax
 jmp .UNIQUE211
NOP
NOP
NOP
NOP
NOP
.UNIQUE211: 
	call	printf
 jmp .UNIQUE212
NOP
NOP
NOP
NOP
NOP
.UNIQUE212: 
	movzbl	-61(%rbp), %eax
 jmp .UNIQUE213
NOP
NOP
NOP
NOP
NOP
.UNIQUE213: 
	movl	%eax, %esi
 jmp .UNIQUE214
NOP
NOP
NOP
NOP
NOP
.UNIQUE214: 
	movl	$.LC12, %edi
 jmp .UNIQUE215
NOP
NOP
NOP
NOP
NOP
.UNIQUE215: 
	movl	$0, %eax
 jmp .UNIQUE216
NOP
NOP
NOP
NOP
NOP
.UNIQUE216: 
	call	printf
 jmp .UNIQUE217
NOP
NOP
NOP
NOP
NOP
.UNIQUE217: 
	nop
 jmp .UNIQUE218
NOP
NOP
NOP
NOP
NOP
.UNIQUE218: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE219
NOP
NOP
NOP
NOP
NOP
.UNIQUE219: 
	ret
	.cfi_endproc
.LFE5:
	.size	find_keyshares, .-find_keyshares
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.1) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
