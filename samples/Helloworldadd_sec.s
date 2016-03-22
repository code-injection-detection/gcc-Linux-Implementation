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
	subq	$48, %rsp
 jmp .UNIQUE2
NOP
NOP
NOP
NOP
NOP
.UNIQUE2: 
	movq	$1024, -40(%rbp)
 jmp .UNIQUE3
NOP
NOP
NOP
NOP
NOP
.UNIQUE3: 
	movq	$5, -32(%rbp)
 jmp .UNIQUE4
NOP
NOP
NOP
NOP
NOP
.UNIQUE4: 
	movq	$4, -24(%rbp)
 jmp .UNIQUE5
NOP
NOP
NOP
NOP
NOP
.UNIQUE5: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE6
NOP
NOP
NOP
NOP
NOP
.UNIQUE6: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE7
NOP
NOP
NOP
NOP
NOP
.UNIQUE7: 
	addq	%rdx, %rax
 jmp .UNIQUE8
NOP
NOP
NOP
NOP
NOP
.UNIQUE8: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE9
NOP
NOP
NOP
NOP
NOP
.UNIQUE9: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE10
NOP
NOP
NOP
NOP
NOP
.UNIQUE10: 
	leaq	(%rdx,%rcx), %rsi
 jmp .UNIQUE11
NOP
NOP
NOP
NOP
NOP
.UNIQUE11: 
	cqto
 jmp .UNIQUE12
NOP
NOP
NOP
NOP
NOP
.UNIQUE12: 
	idivq	%rsi
 jmp .UNIQUE13
NOP
NOP
NOP
NOP
NOP
.UNIQUE13: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE14
NOP
NOP
NOP
NOP
NOP
.UNIQUE14: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE15
NOP
NOP
NOP
NOP
NOP
.UNIQUE15: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE16
NOP
NOP
NOP
NOP
NOP
.UNIQUE16: 
	movq	%rax, %rdx
 jmp .UNIQUE17
NOP
NOP
NOP
NOP
NOP
.UNIQUE17: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE18
NOP
NOP
NOP
NOP
NOP
.UNIQUE18: 
	subq	$1, %rax
 jmp .UNIQUE19
NOP
NOP
NOP
NOP
NOP
.UNIQUE19: 
	imulq	-32(%rbp), %rax
 jmp .UNIQUE20
NOP
NOP
NOP
NOP
NOP
.UNIQUE20: 
	addq	%rdx, %rax
 jmp .UNIQUE21
NOP
NOP
NOP
NOP
NOP
.UNIQUE21: 
	cmpq	-40(%rbp), %rax
 jmp .UNIQUE22
NOP
NOP
NOP
NOP
NOP
.UNIQUE22: 
	jne	.L2
 jmp .UNIQUE23
NOP
NOP
NOP
NOP
NOP
.UNIQUE23: 
	movl	$.LC0, %edi
 jmp .UNIQUE24
NOP
NOP
NOP
NOP
NOP
.UNIQUE24: 
	call	puts
 jmp .UNIQUE25
NOP
NOP
NOP
NOP
NOP
.UNIQUE25: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE26
NOP
NOP
NOP
NOP
NOP
.UNIQUE26: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE27
NOP
NOP
NOP
NOP
NOP
.UNIQUE27: 
	jmp	.L3
.L2:
 jmp .UNIQUE28
NOP
NOP
NOP
NOP
NOP
.UNIQUE28: 
	movl	$.LC1, %edi
 jmp .UNIQUE29
NOP
NOP
NOP
NOP
NOP
.UNIQUE29: 
	call	puts
 jmp .UNIQUE30
NOP
NOP
NOP
NOP
NOP
.UNIQUE30: 
	addq	$1, -16(%rbp)
 jmp .UNIQUE31
NOP
NOP
NOP
NOP
NOP
.UNIQUE31: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE32
NOP
NOP
NOP
NOP
NOP
.UNIQUE32: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE33
NOP
NOP
NOP
NOP
NOP
.UNIQUE33: 
	movq	%rax, %rdx
 jmp .UNIQUE34
NOP
NOP
NOP
NOP
NOP
.UNIQUE34: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE35
NOP
NOP
NOP
NOP
NOP
.UNIQUE35: 
	subq	$1, %rax
 jmp .UNIQUE36
NOP
NOP
NOP
NOP
NOP
.UNIQUE36: 
	imulq	-32(%rbp), %rax
 jmp .UNIQUE37
NOP
NOP
NOP
NOP
NOP
.UNIQUE37: 
	addq	%rdx, %rax
 jmp .UNIQUE38
NOP
NOP
NOP
NOP
NOP
.UNIQUE38: 
	movq	%rax, -48(%rbp)
.L3:
 jmp .UNIQUE39
NOP
NOP
NOP
NOP
NOP
.UNIQUE39: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE40
NOP
NOP
NOP
NOP
NOP
.UNIQUE40: 
	movq	%rax, %rdi
 jmp .UNIQUE41
NOP
NOP
NOP
NOP
NOP
.UNIQUE41: 
	call	malloc
 jmp .UNIQUE42
NOP
NOP
NOP
NOP
NOP
.UNIQUE42: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE43
NOP
NOP
NOP
NOP
NOP
.UNIQUE43: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE44
NOP
NOP
NOP
NOP
NOP
.UNIQUE44: 
	jne	.L4
 jmp .UNIQUE45
NOP
NOP
NOP
NOP
NOP
.UNIQUE45: 
	movl	$.LC2, %edi
 jmp .UNIQUE46
NOP
NOP
NOP
NOP
NOP
.UNIQUE46: 
	call	perror
 jmp .UNIQUE47
NOP
NOP
NOP
NOP
NOP
.UNIQUE47: 
	movl	$42, %edi
 jmp .UNIQUE48
NOP
NOP
NOP
NOP
NOP
.UNIQUE48: 
	call	exit
.L4:
 jmp .UNIQUE49
NOP
NOP
NOP
NOP
NOP
.UNIQUE49: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE50
NOP
NOP
NOP
NOP
NOP
.UNIQUE50: 
	movq	%rax, total_bytes_allocated(%rip)
 jmp .UNIQUE51
NOP
NOP
NOP
NOP
NOP
.UNIQUE51: 
	movq	-8(%rbp), %rax
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
.LFE2:
	.size	allocate_mem, .-allocate_mem
	.globl	secure_malloc
	.type	secure_malloc, @function
secure_malloc:
.LFB3:
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
	subq	$96, %rsp
 jmp .UNIQUE57
NOP
NOP
NOP
NOP
NOP
.UNIQUE57: 
	movq	%rdi, -88(%rbp)
 jmp .UNIQUE58
NOP
NOP
NOP
NOP
NOP
.UNIQUE58: 
	movq	last_unused_memory(%rip), %rax
 jmp .UNIQUE59
NOP
NOP
NOP
NOP
NOP
.UNIQUE59: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE60
NOP
NOP
NOP
NOP
NOP
.UNIQUE60: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE61
NOP
NOP
NOP
NOP
NOP
.UNIQUE61: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE62
NOP
NOP
NOP
NOP
NOP
.UNIQUE62: 
	movq	$5, -48(%rbp)
 jmp .UNIQUE63
NOP
NOP
NOP
NOP
NOP
.UNIQUE63: 
	movq	$4, -40(%rbp)
 jmp .UNIQUE64
NOP
NOP
NOP
NOP
NOP
.UNIQUE64: 
	movq	memory_chunk(%rip), %rax
 jmp .UNIQUE65
NOP
NOP
NOP
NOP
NOP
.UNIQUE65: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE66
NOP
NOP
NOP
NOP
NOP
.UNIQUE66: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE67
NOP
NOP
NOP
NOP
NOP
.UNIQUE67: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE68
NOP
NOP
NOP
NOP
NOP
.UNIQUE68: 
	subq	%rax, %rdx
 jmp .UNIQUE69
NOP
NOP
NOP
NOP
NOP
.UNIQUE69: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE70
NOP
NOP
NOP
NOP
NOP
.UNIQUE70: 
	addq	%rdx, %rax
 jmp .UNIQUE71
NOP
NOP
NOP
NOP
NOP
.UNIQUE71: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE72
NOP
NOP
NOP
NOP
NOP
.UNIQUE72: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE73
NOP
NOP
NOP
NOP
NOP
.UNIQUE73: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE74
NOP
NOP
NOP
NOP
NOP
.UNIQUE74: 
	addq	%rdx, %rax
 jmp .UNIQUE75
NOP
NOP
NOP
NOP
NOP
.UNIQUE75: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE76
NOP
NOP
NOP
NOP
NOP
.UNIQUE76: 
	movq	-48(%rbp), %rcx
 jmp .UNIQUE77
NOP
NOP
NOP
NOP
NOP
.UNIQUE77: 
	leaq	(%rdx,%rcx), %rsi
 jmp .UNIQUE78
NOP
NOP
NOP
NOP
NOP
.UNIQUE78: 
	cqto
 jmp .UNIQUE79
NOP
NOP
NOP
NOP
NOP
.UNIQUE79: 
	idivq	%rsi
 jmp .UNIQUE80
NOP
NOP
NOP
NOP
NOP
.UNIQUE80: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE81
NOP
NOP
NOP
NOP
NOP
.UNIQUE81: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE82
NOP
NOP
NOP
NOP
NOP
.UNIQUE82: 
	imulq	-40(%rbp), %rax
 jmp .UNIQUE83
NOP
NOP
NOP
NOP
NOP
.UNIQUE83: 
	cmpq	-88(%rbp), %rax
 jmp .UNIQUE84
NOP
NOP
NOP
NOP
NOP
.UNIQUE84: 
	jge	.L7
 jmp .UNIQUE85
NOP
NOP
NOP
NOP
NOP
.UNIQUE85: 
	call	__errno_location
 jmp .UNIQUE86
NOP
NOP
NOP
NOP
NOP
.UNIQUE86: 
	movl	$12, (%rax)
 jmp .UNIQUE87
NOP
NOP
NOP
NOP
NOP
.UNIQUE87: 
	movl	$0, %eax
 jmp .UNIQUE88
NOP
NOP
NOP
NOP
NOP
.UNIQUE88: 
	jmp	.L8
.L7:
 jmp .UNIQUE89
NOP
NOP
NOP
NOP
NOP
.UNIQUE89: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE90
NOP
NOP
NOP
NOP
NOP
.UNIQUE90: 
	cqto
 jmp .UNIQUE91
NOP
NOP
NOP
NOP
NOP
.UNIQUE91: 
	idivq	-40(%rbp)
 jmp .UNIQUE92
NOP
NOP
NOP
NOP
NOP
.UNIQUE92: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE93
NOP
NOP
NOP
NOP
NOP
.UNIQUE93: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE94
NOP
NOP
NOP
NOP
NOP
.UNIQUE94: 
	imulq	-40(%rbp), %rax
 jmp .UNIQUE95
NOP
NOP
NOP
NOP
NOP
.UNIQUE95: 
	cmpq	-88(%rbp), %rax
 jmp .UNIQUE96
NOP
NOP
NOP
NOP
NOP
.UNIQUE96: 
	je	.L9
 jmp .UNIQUE97
NOP
NOP
NOP
NOP
NOP
.UNIQUE97: 
	addq	$1, -72(%rbp)
.L9:
 jmp .UNIQUE98
NOP
NOP
NOP
NOP
NOP
.UNIQUE98: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE99
NOP
NOP
NOP
NOP
NOP
.UNIQUE99: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE100
NOP
NOP
NOP
NOP
NOP
.UNIQUE100: 
	movq	last_unused_memory(%rip), %rdx
 jmp .UNIQUE101
NOP
NOP
NOP
NOP
NOP
.UNIQUE101: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE102
NOP
NOP
NOP
NOP
NOP
.UNIQUE102: 
	imulq	-40(%rbp), %rax
 jmp .UNIQUE103
NOP
NOP
NOP
NOP
NOP
.UNIQUE103: 
	movq	%rax, %rcx
 jmp .UNIQUE104
NOP
NOP
NOP
NOP
NOP
.UNIQUE104: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE105
NOP
NOP
NOP
NOP
NOP
.UNIQUE105: 
	subq	$1, %rax
 jmp .UNIQUE106
NOP
NOP
NOP
NOP
NOP
.UNIQUE106: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE107
NOP
NOP
NOP
NOP
NOP
.UNIQUE107: 
	addq	%rax, %rcx
 jmp .UNIQUE108
NOP
NOP
NOP
NOP
NOP
.UNIQUE108: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE109
NOP
NOP
NOP
NOP
NOP
.UNIQUE109: 
	addq	%rcx, %rax
 jmp .UNIQUE110
NOP
NOP
NOP
NOP
NOP
.UNIQUE110: 
	addq	%rdx, %rax
 jmp .UNIQUE111
NOP
NOP
NOP
NOP
NOP
.UNIQUE111: 
	movq	%rax, last_unused_memory(%rip)
 jmp .UNIQUE112
NOP
NOP
NOP
NOP
NOP
.UNIQUE112: 
	movq	-8(%rbp), %rax
.L8:
 jmp .UNIQUE113
NOP
NOP
NOP
NOP
NOP
.UNIQUE113: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE114
NOP
NOP
NOP
NOP
NOP
.UNIQUE114: 
	ret
	.cfi_endproc
.LFE3:
	.size	secure_malloc, .-secure_malloc
	.globl	get_next_keyshare
	.type	get_next_keyshare, @function
get_next_keyshare:
.LFB4:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE115
NOP
NOP
NOP
NOP
NOP
.UNIQUE115: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE116
NOP
NOP
NOP
NOP
NOP
.UNIQUE116: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE117
NOP
NOP
NOP
NOP
NOP
.UNIQUE117: 
	call	rand
 jmp .UNIQUE118
NOP
NOP
NOP
NOP
NOP
.UNIQUE118: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE119
NOP
NOP
NOP
NOP
NOP
.UNIQUE119: 
	ret
	.cfi_endproc
.LFE4:
	.size	get_next_keyshare, .-get_next_keyshare
	.globl	insert_keys_into_mem
	.type	insert_keys_into_mem, @function
insert_keys_into_mem:
.LFB5:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE120
NOP
NOP
NOP
NOP
NOP
.UNIQUE120: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE121
NOP
NOP
NOP
NOP
NOP
.UNIQUE121: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE122
NOP
NOP
NOP
NOP
NOP
.UNIQUE122: 
	pushq	%rbx
 jmp .UNIQUE123
NOP
NOP
NOP
NOP
NOP
.UNIQUE123: 
	subq	$72, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE124
NOP
NOP
NOP
NOP
NOP
.UNIQUE124: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE125
NOP
NOP
NOP
NOP
NOP
.UNIQUE125: 
	movl	$0, -52(%rbp)
 jmp .UNIQUE126
NOP
NOP
NOP
NOP
NOP
.UNIQUE126: 
	movl	$0, %edi
 jmp .UNIQUE127
NOP
NOP
NOP
NOP
NOP
.UNIQUE127: 
	call	time
 jmp .UNIQUE128
NOP
NOP
NOP
NOP
NOP
.UNIQUE128: 
	movl	%eax, %edi
 jmp .UNIQUE129
NOP
NOP
NOP
NOP
NOP
.UNIQUE129: 
	call	srand
 jmp .UNIQUE130
NOP
NOP
NOP
NOP
NOP
.UNIQUE130: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE131
NOP
NOP
NOP
NOP
NOP
.UNIQUE131: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE132
NOP
NOP
NOP
NOP
NOP
.UNIQUE132: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE133
NOP
NOP
NOP
NOP
NOP
.UNIQUE133: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE134
NOP
NOP
NOP
NOP
NOP
.UNIQUE134: 
	jmp	.L13
.L18:
 jmp .UNIQUE135
NOP
NOP
NOP
NOP
NOP
.UNIQUE135: 
	cmpl	$0, -52(%rbp)
 jmp .UNIQUE136
NOP
NOP
NOP
NOP
NOP
.UNIQUE136: 
	je	.L14
 jmp .UNIQUE137
NOP
NOP
NOP
NOP
NOP
.UNIQUE137: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE138
NOP
NOP
NOP
NOP
NOP
.UNIQUE138: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE139
NOP
NOP
NOP
NOP
NOP
.UNIQUE139: 
	leaq	(%rdx,%rax), %rbx
 jmp .UNIQUE140
NOP
NOP
NOP
NOP
NOP
.UNIQUE140: 
	movl	$0, %eax
 jmp .UNIQUE141
NOP
NOP
NOP
NOP
NOP
.UNIQUE141: 
	call	get_next_keyshare
 jmp .UNIQUE142
NOP
NOP
NOP
NOP
NOP
.UNIQUE142: 
	movb	%al, (%rbx)
 jmp .UNIQUE143
NOP
NOP
NOP
NOP
NOP
.UNIQUE143: 
	addq	$1, -32(%rbp)
 jmp .UNIQUE144
NOP
NOP
NOP
NOP
NOP
.UNIQUE144: 
	addq	$1, -48(%rbp)
 jmp .UNIQUE145
NOP
NOP
NOP
NOP
NOP
.UNIQUE145: 
	jmp	.L15
.L14:
 jmp .UNIQUE146
NOP
NOP
NOP
NOP
NOP
.UNIQUE146: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE147
NOP
NOP
NOP
NOP
NOP
.UNIQUE147: 
	jmp	.L16
.L17:
 jmp .UNIQUE148
NOP
NOP
NOP
NOP
NOP
.UNIQUE148: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE149
NOP
NOP
NOP
NOP
NOP
.UNIQUE149: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE150
NOP
NOP
NOP
NOP
NOP
.UNIQUE150: 
	addq	%rdx, %rax
 jmp .UNIQUE151
NOP
NOP
NOP
NOP
NOP
.UNIQUE151: 
	movq	%rax, %rdx
 jmp .UNIQUE152
NOP
NOP
NOP
NOP
NOP
.UNIQUE152: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE153
NOP
NOP
NOP
NOP
NOP
.UNIQUE153: 
	addq	%rdx, %rax
 jmp .UNIQUE154
NOP
NOP
NOP
NOP
NOP
.UNIQUE154: 
	movb	$0, (%rax)
 jmp .UNIQUE155
NOP
NOP
NOP
NOP
NOP
.UNIQUE155: 
	addq	$1, -40(%rbp)
.L16:
 jmp .UNIQUE156
NOP
NOP
NOP
NOP
NOP
.UNIQUE156: 
	cmpq	$3, -40(%rbp)
 jmp .UNIQUE157
NOP
NOP
NOP
NOP
NOP
.UNIQUE157: 
	jle	.L17
 jmp .UNIQUE158
NOP
NOP
NOP
NOP
NOP
.UNIQUE158: 
	addq	$4, -48(%rbp)
 jmp .UNIQUE159
NOP
NOP
NOP
NOP
NOP
.UNIQUE159: 
	movl	$1, -52(%rbp)
.L15:
 jmp .UNIQUE160
NOP
NOP
NOP
NOP
NOP
.UNIQUE160: 
	cmpq	$5, -32(%rbp)
 jmp .UNIQUE161
NOP
NOP
NOP
NOP
NOP
.UNIQUE161: 
	jne	.L13
 jmp .UNIQUE162
NOP
NOP
NOP
NOP
NOP
.UNIQUE162: 
	movl	$0, -52(%rbp)
 jmp .UNIQUE163
NOP
NOP
NOP
NOP
NOP
.UNIQUE163: 
	movq	$0, -32(%rbp)
.L13:
 jmp .UNIQUE164
NOP
NOP
NOP
NOP
NOP
.UNIQUE164: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE165
NOP
NOP
NOP
NOP
NOP
.UNIQUE165: 
	cmpq	%rax, -48(%rbp)
 jmp .UNIQUE166
NOP
NOP
NOP
NOP
NOP
.UNIQUE166: 
	jl	.L18
 jmp .UNIQUE167
NOP
NOP
NOP
NOP
NOP
.UNIQUE167: 
	addq	$72, %rsp
 jmp .UNIQUE168
NOP
NOP
NOP
NOP
NOP
.UNIQUE168: 
	popq	%rbx
 jmp .UNIQUE169
NOP
NOP
NOP
NOP
NOP
.UNIQUE169: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE170
NOP
NOP
NOP
NOP
NOP
.UNIQUE170: 
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
NOP
NOP
 jmp .UNIQUE171
NOP
NOP
NOP
NOP
NOP
.UNIQUE171: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE172
NOP
NOP
NOP
NOP
NOP
.UNIQUE172: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE173
NOP
NOP
NOP
NOP
NOP
.UNIQUE173: 
	subq	$32, %rsp
 jmp .UNIQUE174
NOP
NOP
NOP
NOP
NOP
.UNIQUE174: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE175
NOP
NOP
NOP
NOP
NOP
.UNIQUE175: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE176
NOP
NOP
NOP
NOP
NOP
.UNIQUE176: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE177
NOP
NOP
NOP
NOP
NOP
.UNIQUE177: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE178
NOP
NOP
NOP
NOP
NOP
.UNIQUE178: 
	jmp	.L20
.L21:
 jmp .UNIQUE179
NOP
NOP
NOP
NOP
NOP
.UNIQUE179: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE180
NOP
NOP
NOP
NOP
NOP
.UNIQUE180: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE181
NOP
NOP
NOP
NOP
NOP
.UNIQUE181: 
	addq	%rdx, %rax
 jmp .UNIQUE182
NOP
NOP
NOP
NOP
NOP
.UNIQUE182: 
	movzbl	(%rax), %eax
 jmp .UNIQUE183
NOP
NOP
NOP
NOP
NOP
.UNIQUE183: 
	movzbl	%al, %eax
 jmp .UNIQUE184
NOP
NOP
NOP
NOP
NOP
.UNIQUE184: 
	movl	%eax, %esi
 jmp .UNIQUE185
NOP
NOP
NOP
NOP
NOP
.UNIQUE185: 
	movl	$.LC3, %edi
 jmp .UNIQUE186
NOP
NOP
NOP
NOP
NOP
.UNIQUE186: 
	movl	$0, %eax
 jmp .UNIQUE187
NOP
NOP
NOP
NOP
NOP
.UNIQUE187: 
	call	printf
 jmp .UNIQUE188
NOP
NOP
NOP
NOP
NOP
.UNIQUE188: 
	addq	$1, -16(%rbp)
.L20:
 jmp .UNIQUE189
NOP
NOP
NOP
NOP
NOP
.UNIQUE189: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE190
NOP
NOP
NOP
NOP
NOP
.UNIQUE190: 
	cmpq	%rax, -16(%rbp)
 jmp .UNIQUE191
NOP
NOP
NOP
NOP
NOP
.UNIQUE191: 
	jl	.L21
 jmp .UNIQUE192
NOP
NOP
NOP
NOP
NOP
.UNIQUE192: 
	movl	$10, %edi
 jmp .UNIQUE193
NOP
NOP
NOP
NOP
NOP
.UNIQUE193: 
	call	putchar
 jmp .UNIQUE194
NOP
NOP
NOP
NOP
NOP
.UNIQUE194: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE195
NOP
NOP
NOP
NOP
NOP
.UNIQUE195: 
	ret
	.cfi_endproc
.LFE6:
	.size	print_mem, .-print_mem
	.globl	insert_data_into_mem
	.type	insert_data_into_mem, @function
insert_data_into_mem:
.LFB7:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE196
NOP
NOP
NOP
NOP
NOP
.UNIQUE196: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE197
NOP
NOP
NOP
NOP
NOP
.UNIQUE197: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE198
NOP
NOP
NOP
NOP
NOP
.UNIQUE198: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE199
NOP
NOP
NOP
NOP
NOP
.UNIQUE199: 
	movq	%rsi, -64(%rbp)
 jmp .UNIQUE200
NOP
NOP
NOP
NOP
NOP
.UNIQUE200: 
	movq	%rdx, -72(%rbp)
 jmp .UNIQUE201
NOP
NOP
NOP
NOP
NOP
.UNIQUE201: 
	movq	$0, -24(%rbp)
 jmp .UNIQUE202
NOP
NOP
NOP
NOP
NOP
.UNIQUE202: 
	movl	$0, -44(%rbp)
 jmp .UNIQUE203
NOP
NOP
NOP
NOP
NOP
.UNIQUE203: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE204
NOP
NOP
NOP
NOP
NOP
.UNIQUE204: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE205
NOP
NOP
NOP
NOP
NOP
.UNIQUE205: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE206
NOP
NOP
NOP
NOP
NOP
.UNIQUE206: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE207
NOP
NOP
NOP
NOP
NOP
.UNIQUE207: 
	jmp	.L23
.L28:
 jmp .UNIQUE208
NOP
NOP
NOP
NOP
NOP
.UNIQUE208: 
	cmpl	$0, -44(%rbp)
 jmp .UNIQUE209
NOP
NOP
NOP
NOP
NOP
.UNIQUE209: 
	je	.L24
 jmp .UNIQUE210
NOP
NOP
NOP
NOP
NOP
.UNIQUE210: 
	addq	$5, -40(%rbp)
 jmp .UNIQUE211
NOP
NOP
NOP
NOP
NOP
.UNIQUE211: 
	movl	$0, -44(%rbp)
 jmp .UNIQUE212
NOP
NOP
NOP
NOP
NOP
.UNIQUE212: 
	jmp	.L23
.L24:
 jmp .UNIQUE213
NOP
NOP
NOP
NOP
NOP
.UNIQUE213: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE214
NOP
NOP
NOP
NOP
NOP
.UNIQUE214: 
	jmp	.L25
.L27:
 jmp .UNIQUE215
NOP
NOP
NOP
NOP
NOP
.UNIQUE215: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE216
NOP
NOP
NOP
NOP
NOP
.UNIQUE216: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE217
NOP
NOP
NOP
NOP
NOP
.UNIQUE217: 
	addq	%rdx, %rax
 jmp .UNIQUE218
NOP
NOP
NOP
NOP
NOP
.UNIQUE218: 
	movq	%rax, %rdx
 jmp .UNIQUE219
NOP
NOP
NOP
NOP
NOP
.UNIQUE219: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE220
NOP
NOP
NOP
NOP
NOP
.UNIQUE220: 
	addq	%rax, %rdx
 jmp .UNIQUE221
NOP
NOP
NOP
NOP
NOP
.UNIQUE221: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE222
NOP
NOP
NOP
NOP
NOP
.UNIQUE222: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE223
NOP
NOP
NOP
NOP
NOP
.UNIQUE223: 
	addq	%rcx, %rax
 jmp .UNIQUE224
NOP
NOP
NOP
NOP
NOP
.UNIQUE224: 
	movq	%rax, %rcx
 jmp .UNIQUE225
NOP
NOP
NOP
NOP
NOP
.UNIQUE225: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE226
NOP
NOP
NOP
NOP
NOP
.UNIQUE226: 
	addq	%rcx, %rax
 jmp .UNIQUE227
NOP
NOP
NOP
NOP
NOP
.UNIQUE227: 
	movzbl	(%rax), %eax
 jmp .UNIQUE228
NOP
NOP
NOP
NOP
NOP
.UNIQUE228: 
	movb	%al, (%rdx)
 jmp .UNIQUE229
NOP
NOP
NOP
NOP
NOP
.UNIQUE229: 
	addq	$1, -32(%rbp)
.L25:
 jmp .UNIQUE230
NOP
NOP
NOP
NOP
NOP
.UNIQUE230: 
	cmpq	$3, -32(%rbp)
 jmp .UNIQUE231
NOP
NOP
NOP
NOP
NOP
.UNIQUE231: 
	jg	.L26
 jmp .UNIQUE232
NOP
NOP
NOP
NOP
NOP
.UNIQUE232: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE233
NOP
NOP
NOP
NOP
NOP
.UNIQUE233: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE234
NOP
NOP
NOP
NOP
NOP
.UNIQUE234: 
	addq	%rdx, %rax
 jmp .UNIQUE235
NOP
NOP
NOP
NOP
NOP
.UNIQUE235: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE236
NOP
NOP
NOP
NOP
NOP
.UNIQUE236: 
	jl	.L27
.L26:
 jmp .UNIQUE237
NOP
NOP
NOP
NOP
NOP
.UNIQUE237: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE238
NOP
NOP
NOP
NOP
NOP
.UNIQUE238: 
	addq	%rax, -16(%rbp)
 jmp .UNIQUE239
NOP
NOP
NOP
NOP
NOP
.UNIQUE239: 
	addq	$1, -24(%rbp)
 jmp .UNIQUE240
NOP
NOP
NOP
NOP
NOP
.UNIQUE240: 
	addq	$4, -40(%rbp)
 jmp .UNIQUE241
NOP
NOP
NOP
NOP
NOP
.UNIQUE241: 
	movl	$1, -44(%rbp)
.L23:
 jmp .UNIQUE242
NOP
NOP
NOP
NOP
NOP
.UNIQUE242: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE243
NOP
NOP
NOP
NOP
NOP
.UNIQUE243: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE244
NOP
NOP
NOP
NOP
NOP
.UNIQUE244: 
	jl	.L28
 jmp .UNIQUE245
NOP
NOP
NOP
NOP
NOP
.UNIQUE245: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE246
NOP
NOP
NOP
NOP
NOP
.UNIQUE246: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE247
NOP
NOP
NOP
NOP
NOP
.UNIQUE247: 
	ret
	.cfi_endproc
.LFE7:
	.size	insert_data_into_mem, .-insert_data_into_mem
	.globl	get_secure_data
	.type	get_secure_data, @function
get_secure_data:
.LFB8:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE248
NOP
NOP
NOP
NOP
NOP
.UNIQUE248: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE249
NOP
NOP
NOP
NOP
NOP
.UNIQUE249: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE250
NOP
NOP
NOP
NOP
NOP
.UNIQUE250: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE251
NOP
NOP
NOP
NOP
NOP
.UNIQUE251: 
	movq	%rsi, -80(%rbp)
 jmp .UNIQUE252
NOP
NOP
NOP
NOP
NOP
.UNIQUE252: 
	movq	%rdx, -88(%rbp)
 jmp .UNIQUE253
NOP
NOP
NOP
NOP
NOP
.UNIQUE253: 
	movl	%ecx, -92(%rbp)
 jmp .UNIQUE254
NOP
NOP
NOP
NOP
NOP
.UNIQUE254: 
	movq	%r8, -104(%rbp)
 jmp .UNIQUE255
NOP
NOP
NOP
NOP
NOP
.UNIQUE255: 
	movq	$0, -24(%rbp)
 jmp .UNIQUE256
NOP
NOP
NOP
NOP
NOP
.UNIQUE256: 
	movl	$0, -60(%rbp)
 jmp .UNIQUE257
NOP
NOP
NOP
NOP
NOP
.UNIQUE257: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE258
NOP
NOP
NOP
NOP
NOP
.UNIQUE258: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE259
NOP
NOP
NOP
NOP
NOP
.UNIQUE259: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE260
NOP
NOP
NOP
NOP
NOP
.UNIQUE260: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE261
NOP
NOP
NOP
NOP
NOP
.UNIQUE261: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE262
NOP
NOP
NOP
NOP
NOP
.UNIQUE262: 
	cmpl	$0, -92(%rbp)
 jmp .UNIQUE263
NOP
NOP
NOP
NOP
NOP
.UNIQUE263: 
	je	.L31
 jmp .UNIQUE264
NOP
NOP
NOP
NOP
NOP
.UNIQUE264: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE265
NOP
NOP
NOP
NOP
NOP
.UNIQUE265: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE266
NOP
NOP
NOP
NOP
NOP
.UNIQUE266: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE267
NOP
NOP
NOP
NOP
NOP
.UNIQUE267: 
	testq	%rax, %rax
 jmp .UNIQUE268
NOP
NOP
NOP
NOP
NOP
.UNIQUE268: 
	cmovs	%rdx, %rax
 jmp .UNIQUE269
NOP
NOP
NOP
NOP
NOP
.UNIQUE269: 
	sarq	$2, %rax
 jmp .UNIQUE270
NOP
NOP
NOP
NOP
NOP
.UNIQUE270: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE271
NOP
NOP
NOP
NOP
NOP
.UNIQUE271: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE272
NOP
NOP
NOP
NOP
NOP
.UNIQUE272: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE273
NOP
NOP
NOP
NOP
NOP
.UNIQUE273: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE274
NOP
NOP
NOP
NOP
NOP
.UNIQUE274: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE275
NOP
NOP
NOP
NOP
NOP
.UNIQUE275: 
	cmpq	%rax, %rdx
 jmp .UNIQUE276
NOP
NOP
NOP
NOP
NOP
.UNIQUE276: 
	jne	.L32
 jmp .UNIQUE277
NOP
NOP
NOP
NOP
NOP
.UNIQUE277: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE278
NOP
NOP
NOP
NOP
NOP
.UNIQUE278: 
	movq	%rdx, %rax
 jmp .UNIQUE279
NOP
NOP
NOP
NOP
NOP
.UNIQUE279: 
	salq	$3, %rax
 jmp .UNIQUE280
NOP
NOP
NOP
NOP
NOP
.UNIQUE280: 
	addq	%rdx, %rax
 jmp .UNIQUE281
NOP
NOP
NOP
NOP
NOP
.UNIQUE281: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE282
NOP
NOP
NOP
NOP
NOP
.UNIQUE282: 
	jmp	.L31
.L32:
 jmp .UNIQUE283
NOP
NOP
NOP
NOP
NOP
.UNIQUE283: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE284
NOP
NOP
NOP
NOP
NOP
.UNIQUE284: 
	movq	%rdx, %rax
 jmp .UNIQUE285
NOP
NOP
NOP
NOP
NOP
.UNIQUE285: 
	salq	$3, %rax
 jmp .UNIQUE286
NOP
NOP
NOP
NOP
NOP
.UNIQUE286: 
	addq	%rdx, %rax
 jmp .UNIQUE287
NOP
NOP
NOP
NOP
NOP
.UNIQUE287: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE288
NOP
NOP
NOP
NOP
NOP
.UNIQUE288: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE289
NOP
NOP
NOP
NOP
NOP
.UNIQUE289: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE290
NOP
NOP
NOP
NOP
NOP
.UNIQUE290: 
	movq	%rax, %rdx
 jmp .UNIQUE291
NOP
NOP
NOP
NOP
NOP
.UNIQUE291: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE292
NOP
NOP
NOP
NOP
NOP
.UNIQUE292: 
	movl	$0, %eax
 jmp .UNIQUE293
NOP
NOP
NOP
NOP
NOP
.UNIQUE293: 
	subq	%rcx, %rax
 jmp .UNIQUE294
NOP
NOP
NOP
NOP
NOP
.UNIQUE294: 
	salq	$2, %rax
 jmp .UNIQUE295
NOP
NOP
NOP
NOP
NOP
.UNIQUE295: 
	addq	%rdx, %rax
 jmp .UNIQUE296
NOP
NOP
NOP
NOP
NOP
.UNIQUE296: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE297
NOP
NOP
NOP
NOP
NOP
.UNIQUE297: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE298
NOP
NOP
NOP
NOP
NOP
.UNIQUE298: 
	jmp	.L33
.L35:
 jmp .UNIQUE299
NOP
NOP
NOP
NOP
NOP
.UNIQUE299: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE300
NOP
NOP
NOP
NOP
NOP
.UNIQUE300: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE301
NOP
NOP
NOP
NOP
NOP
.UNIQUE301: 
	addq	%rdx, %rax
 jmp .UNIQUE302
NOP
NOP
NOP
NOP
NOP
.UNIQUE302: 
	movq	%rax, %rdx
 jmp .UNIQUE303
NOP
NOP
NOP
NOP
NOP
.UNIQUE303: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE304
NOP
NOP
NOP
NOP
NOP
.UNIQUE304: 
	addq	%rax, %rdx
 jmp .UNIQUE305
NOP
NOP
NOP
NOP
NOP
.UNIQUE305: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE306
NOP
NOP
NOP
NOP
NOP
.UNIQUE306: 
	movq	-48(%rbp), %rcx
 jmp .UNIQUE307
NOP
NOP
NOP
NOP
NOP
.UNIQUE307: 
	addq	%rcx, %rax
 jmp .UNIQUE308
NOP
NOP
NOP
NOP
NOP
.UNIQUE308: 
	movq	%rax, %rcx
 jmp .UNIQUE309
NOP
NOP
NOP
NOP
NOP
.UNIQUE309: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE310
NOP
NOP
NOP
NOP
NOP
.UNIQUE310: 
	addq	%rcx, %rax
 jmp .UNIQUE311
NOP
NOP
NOP
NOP
NOP
.UNIQUE311: 
	movzbl	(%rax), %eax
 jmp .UNIQUE312
NOP
NOP
NOP
NOP
NOP
.UNIQUE312: 
	movb	%al, (%rdx)
 jmp .UNIQUE313
NOP
NOP
NOP
NOP
NOP
.UNIQUE313: 
	addq	$1, -40(%rbp)
.L33:
 jmp .UNIQUE314
NOP
NOP
NOP
NOP
NOP
.UNIQUE314: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE315
NOP
NOP
NOP
NOP
NOP
.UNIQUE315: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE316
NOP
NOP
NOP
NOP
NOP
.UNIQUE316: 
	addq	%rdx, %rax
 jmp .UNIQUE317
NOP
NOP
NOP
NOP
NOP
.UNIQUE317: 
	cmpq	$3, %rax
 jmp .UNIQUE318
NOP
NOP
NOP
NOP
NOP
.UNIQUE318: 
	jg	.L34
 jmp .UNIQUE319
NOP
NOP
NOP
NOP
NOP
.UNIQUE319: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE320
NOP
NOP
NOP
NOP
NOP
.UNIQUE320: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE321
NOP
NOP
NOP
NOP
NOP
.UNIQUE321: 
	addq	%rdx, %rax
 jmp .UNIQUE322
NOP
NOP
NOP
NOP
NOP
.UNIQUE322: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE323
NOP
NOP
NOP
NOP
NOP
.UNIQUE323: 
	jl	.L35
.L34:
 jmp .UNIQUE324
NOP
NOP
NOP
NOP
NOP
.UNIQUE324: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE325
NOP
NOP
NOP
NOP
NOP
.UNIQUE325: 
	addq	%rax, -24(%rbp)
 jmp .UNIQUE326
NOP
NOP
NOP
NOP
NOP
.UNIQUE326: 
	addq	$9, -32(%rbp)
 jmp .UNIQUE327
NOP
NOP
NOP
NOP
NOP
.UNIQUE327: 
	jmp	.L36
.L31:
 jmp .UNIQUE328
NOP
NOP
NOP
NOP
NOP
.UNIQUE328: 
	jmp	.L36
.L41:
 jmp .UNIQUE329
NOP
NOP
NOP
NOP
NOP
.UNIQUE329: 
	cmpl	$0, -60(%rbp)
 jmp .UNIQUE330
NOP
NOP
NOP
NOP
NOP
.UNIQUE330: 
	je	.L37
 jmp .UNIQUE331
NOP
NOP
NOP
NOP
NOP
.UNIQUE331: 
	addq	$5, -56(%rbp)
 jmp .UNIQUE332
NOP
NOP
NOP
NOP
NOP
.UNIQUE332: 
	movl	$0, -60(%rbp)
 jmp .UNIQUE333
NOP
NOP
NOP
NOP
NOP
.UNIQUE333: 
	jmp	.L36
.L37:
 jmp .UNIQUE334
NOP
NOP
NOP
NOP
NOP
.UNIQUE334: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE335
NOP
NOP
NOP
NOP
NOP
.UNIQUE335: 
	jmp	.L38
.L40:
 jmp .UNIQUE336
NOP
NOP
NOP
NOP
NOP
.UNIQUE336: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE337
NOP
NOP
NOP
NOP
NOP
.UNIQUE337: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE338
NOP
NOP
NOP
NOP
NOP
.UNIQUE338: 
	addq	%rdx, %rax
 jmp .UNIQUE339
NOP
NOP
NOP
NOP
NOP
.UNIQUE339: 
	movq	%rax, %rdx
 jmp .UNIQUE340
NOP
NOP
NOP
NOP
NOP
.UNIQUE340: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE341
NOP
NOP
NOP
NOP
NOP
.UNIQUE341: 
	addq	%rax, %rdx
 jmp .UNIQUE342
NOP
NOP
NOP
NOP
NOP
.UNIQUE342: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE343
NOP
NOP
NOP
NOP
NOP
.UNIQUE343: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE344
NOP
NOP
NOP
NOP
NOP
.UNIQUE344: 
	addq	%rcx, %rax
 jmp .UNIQUE345
NOP
NOP
NOP
NOP
NOP
.UNIQUE345: 
	movq	%rax, %rcx
 jmp .UNIQUE346
NOP
NOP
NOP
NOP
NOP
.UNIQUE346: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE347
NOP
NOP
NOP
NOP
NOP
.UNIQUE347: 
	addq	%rcx, %rax
 jmp .UNIQUE348
NOP
NOP
NOP
NOP
NOP
.UNIQUE348: 
	movzbl	(%rax), %eax
 jmp .UNIQUE349
NOP
NOP
NOP
NOP
NOP
.UNIQUE349: 
	movb	%al, (%rdx)
 jmp .UNIQUE350
NOP
NOP
NOP
NOP
NOP
.UNIQUE350: 
	addq	$1, -48(%rbp)
.L38:
 jmp .UNIQUE351
NOP
NOP
NOP
NOP
NOP
.UNIQUE351: 
	cmpq	$3, -48(%rbp)
 jmp .UNIQUE352
NOP
NOP
NOP
NOP
NOP
.UNIQUE352: 
	jg	.L39
 jmp .UNIQUE353
NOP
NOP
NOP
NOP
NOP
.UNIQUE353: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE354
NOP
NOP
NOP
NOP
NOP
.UNIQUE354: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE355
NOP
NOP
NOP
NOP
NOP
.UNIQUE355: 
	addq	%rdx, %rax
 jmp .UNIQUE356
NOP
NOP
NOP
NOP
NOP
.UNIQUE356: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE357
NOP
NOP
NOP
NOP
NOP
.UNIQUE357: 
	jl	.L40
.L39:
 jmp .UNIQUE358
NOP
NOP
NOP
NOP
NOP
.UNIQUE358: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE359
NOP
NOP
NOP
NOP
NOP
.UNIQUE359: 
	addq	%rax, -24(%rbp)
 jmp .UNIQUE360
NOP
NOP
NOP
NOP
NOP
.UNIQUE360: 
	addq	$4, -56(%rbp)
 jmp .UNIQUE361
NOP
NOP
NOP
NOP
NOP
.UNIQUE361: 
	movl	$1, -60(%rbp)
.L36:
 jmp .UNIQUE362
NOP
NOP
NOP
NOP
NOP
.UNIQUE362: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE363
NOP
NOP
NOP
NOP
NOP
.UNIQUE363: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE364
NOP
NOP
NOP
NOP
NOP
.UNIQUE364: 
	jl	.L41
 jmp .UNIQUE365
NOP
NOP
NOP
NOP
NOP
.UNIQUE365: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE366
NOP
NOP
NOP
NOP
NOP
.UNIQUE366: 
	ret
	.cfi_endproc
.LFE8:
	.size	get_secure_data, .-get_secure_data
	.globl	find_useful_chunks
	.type	find_useful_chunks, @function
find_useful_chunks:
.LFB9:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE367
NOP
NOP
NOP
NOP
NOP
.UNIQUE367: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE368
NOP
NOP
NOP
NOP
NOP
.UNIQUE368: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE369
NOP
NOP
NOP
NOP
NOP
.UNIQUE369: 
	movq	%rdi, -40(%rbp)
 jmp .UNIQUE370
NOP
NOP
NOP
NOP
NOP
.UNIQUE370: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE371
NOP
NOP
NOP
NOP
NOP
.UNIQUE371: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE372
NOP
NOP
NOP
NOP
NOP
.UNIQUE372: 
	movq	$5, -16(%rbp)
 jmp .UNIQUE373
NOP
NOP
NOP
NOP
NOP
.UNIQUE373: 
	movq	$4, -8(%rbp)
 jmp .UNIQUE374
NOP
NOP
NOP
NOP
NOP
.UNIQUE374: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE375
NOP
NOP
NOP
NOP
NOP
.UNIQUE375: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE376
NOP
NOP
NOP
NOP
NOP
.UNIQUE376: 
	addq	%rdx, %rax
 jmp .UNIQUE377
NOP
NOP
NOP
NOP
NOP
.UNIQUE377: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE378
NOP
NOP
NOP
NOP
NOP
.UNIQUE378: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE379
NOP
NOP
NOP
NOP
NOP
.UNIQUE379: 
	leaq	(%rdx,%rcx), %rsi
 jmp .UNIQUE380
NOP
NOP
NOP
NOP
NOP
.UNIQUE380: 
	cqto
 jmp .UNIQUE381
NOP
NOP
NOP
NOP
NOP
.UNIQUE381: 
	idivq	%rsi
 jmp .UNIQUE382
NOP
NOP
NOP
NOP
NOP
.UNIQUE382: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE383
NOP
NOP
NOP
NOP
NOP
.UNIQUE383: 
	ret
	.cfi_endproc
.LFE9:
	.size	find_useful_chunks, .-find_useful_chunks
	.globl	init_mem
	.type	init_mem, @function
init_mem:
.LFB10:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE384
NOP
NOP
NOP
NOP
NOP
.UNIQUE384: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE385
NOP
NOP
NOP
NOP
NOP
.UNIQUE385: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE386
NOP
NOP
NOP
NOP
NOP
.UNIQUE386: 
	subq	$16, %rsp
 jmp .UNIQUE387
NOP
NOP
NOP
NOP
NOP
.UNIQUE387: 
	movl	$0, %eax
 jmp .UNIQUE388
NOP
NOP
NOP
NOP
NOP
.UNIQUE388: 
	call	allocate_mem
 jmp .UNIQUE389
NOP
NOP
NOP
NOP
NOP
.UNIQUE389: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE390
NOP
NOP
NOP
NOP
NOP
.UNIQUE390: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE391
NOP
NOP
NOP
NOP
NOP
.UNIQUE391: 
	movq	%rax, %rdi
 jmp .UNIQUE392
NOP
NOP
NOP
NOP
NOP
.UNIQUE392: 
	call	insert_keys_into_mem
 jmp .UNIQUE393
NOP
NOP
NOP
NOP
NOP
.UNIQUE393: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE394
NOP
NOP
NOP
NOP
NOP
.UNIQUE394: 
	movq	%rax, memory_chunk(%rip)
 jmp .UNIQUE395
NOP
NOP
NOP
NOP
NOP
.UNIQUE395: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE396
NOP
NOP
NOP
NOP
NOP
.UNIQUE396: 
	movq	%rax, last_unused_memory(%rip)
 jmp .UNIQUE397
NOP
NOP
NOP
NOP
NOP
.UNIQUE397: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE398
NOP
NOP
NOP
NOP
NOP
.UNIQUE398: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE399
NOP
NOP
NOP
NOP
NOP
.UNIQUE399: 
	ret
	.cfi_endproc
.LFE10:
	.size	init_mem, .-init_mem
	.globl	free_secure_mem
	.type	free_secure_mem, @function
free_secure_mem:
.LFB11:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE400
NOP
NOP
NOP
NOP
NOP
.UNIQUE400: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE401
NOP
NOP
NOP
NOP
NOP
.UNIQUE401: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE402
NOP
NOP
NOP
NOP
NOP
.UNIQUE402: 
	subq	$16, %rsp
 jmp .UNIQUE403
NOP
NOP
NOP
NOP
NOP
.UNIQUE403: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE404
NOP
NOP
NOP
NOP
NOP
.UNIQUE404: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE405
NOP
NOP
NOP
NOP
NOP
.UNIQUE405: 
	movq	%rax, %rdi
 jmp .UNIQUE406
NOP
NOP
NOP
NOP
NOP
.UNIQUE406: 
	call	free
 jmp .UNIQUE407
NOP
NOP
NOP
NOP
NOP
.UNIQUE407: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE408
NOP
NOP
NOP
NOP
NOP
.UNIQUE408: 
	ret
	.cfi_endproc
.LFE11:
	.size	free_secure_mem, .-free_secure_mem
	.globl	get_char
	.type	get_char, @function
get_char:
.LFB12:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE409
NOP
NOP
NOP
NOP
NOP
.UNIQUE409: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE410
NOP
NOP
NOP
NOP
NOP
.UNIQUE410: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE411
NOP
NOP
NOP
NOP
NOP
.UNIQUE411: 
	subq	$16, %rsp
 jmp .UNIQUE412
NOP
NOP
NOP
NOP
NOP
.UNIQUE412: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE413
NOP
NOP
NOP
NOP
NOP
.UNIQUE413: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE414
NOP
NOP
NOP
NOP
NOP
.UNIQUE414: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE415
NOP
NOP
NOP
NOP
NOP
.UNIQUE415: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE416
NOP
NOP
NOP
NOP
NOP
.UNIQUE416: 
	movl	$0, %r8d
 jmp .UNIQUE417
NOP
NOP
NOP
NOP
NOP
.UNIQUE417: 
	movl	$0, %ecx
 jmp .UNIQUE418
NOP
NOP
NOP
NOP
NOP
.UNIQUE418: 
	movl	$1, %esi
 jmp .UNIQUE419
NOP
NOP
NOP
NOP
NOP
.UNIQUE419: 
	movq	%rax, %rdi
 jmp .UNIQUE420
NOP
NOP
NOP
NOP
NOP
.UNIQUE420: 
	call	get_secure_data
 jmp .UNIQUE421
NOP
NOP
NOP
NOP
NOP
.UNIQUE421: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE422
NOP
NOP
NOP
NOP
NOP
.UNIQUE422: 
	ret
	.cfi_endproc
.LFE12:
	.size	get_char, .-get_char
	.globl	get_int
	.type	get_int, @function
get_int:
.LFB13:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE423
NOP
NOP
NOP
NOP
NOP
.UNIQUE423: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE424
NOP
NOP
NOP
NOP
NOP
.UNIQUE424: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE425
NOP
NOP
NOP
NOP
NOP
.UNIQUE425: 
	subq	$16, %rsp
 jmp .UNIQUE426
NOP
NOP
NOP
NOP
NOP
.UNIQUE426: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE427
NOP
NOP
NOP
NOP
NOP
.UNIQUE427: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE428
NOP
NOP
NOP
NOP
NOP
.UNIQUE428: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE429
NOP
NOP
NOP
NOP
NOP
.UNIQUE429: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE430
NOP
NOP
NOP
NOP
NOP
.UNIQUE430: 
	movl	$0, %r8d
 jmp .UNIQUE431
NOP
NOP
NOP
NOP
NOP
.UNIQUE431: 
	movl	$0, %ecx
 jmp .UNIQUE432
NOP
NOP
NOP
NOP
NOP
.UNIQUE432: 
	movl	$4, %esi
 jmp .UNIQUE433
NOP
NOP
NOP
NOP
NOP
.UNIQUE433: 
	movq	%rax, %rdi
 jmp .UNIQUE434
NOP
NOP
NOP
NOP
NOP
.UNIQUE434: 
	call	get_secure_data
 jmp .UNIQUE435
NOP
NOP
NOP
NOP
NOP
.UNIQUE435: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE436
NOP
NOP
NOP
NOP
NOP
.UNIQUE436: 
	ret
	.cfi_endproc
.LFE13:
	.size	get_int, .-get_int
	.globl	get_long_int
	.type	get_long_int, @function
get_long_int:
.LFB14:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE437
NOP
NOP
NOP
NOP
NOP
.UNIQUE437: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE438
NOP
NOP
NOP
NOP
NOP
.UNIQUE438: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE439
NOP
NOP
NOP
NOP
NOP
.UNIQUE439: 
	subq	$16, %rsp
 jmp .UNIQUE440
NOP
NOP
NOP
NOP
NOP
.UNIQUE440: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE441
NOP
NOP
NOP
NOP
NOP
.UNIQUE441: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE442
NOP
NOP
NOP
NOP
NOP
.UNIQUE442: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE443
NOP
NOP
NOP
NOP
NOP
.UNIQUE443: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE444
NOP
NOP
NOP
NOP
NOP
.UNIQUE444: 
	movl	$0, %r8d
 jmp .UNIQUE445
NOP
NOP
NOP
NOP
NOP
.UNIQUE445: 
	movl	$0, %ecx
 jmp .UNIQUE446
NOP
NOP
NOP
NOP
NOP
.UNIQUE446: 
	movl	$8, %esi
 jmp .UNIQUE447
NOP
NOP
NOP
NOP
NOP
.UNIQUE447: 
	movq	%rax, %rdi
 jmp .UNIQUE448
NOP
NOP
NOP
NOP
NOP
.UNIQUE448: 
	call	get_secure_data
 jmp .UNIQUE449
NOP
NOP
NOP
NOP
NOP
.UNIQUE449: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE450
NOP
NOP
NOP
NOP
NOP
.UNIQUE450: 
	ret
	.cfi_endproc
.LFE14:
	.size	get_long_int, .-get_long_int
	.globl	get_float
	.type	get_float, @function
get_float:
.LFB15:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE451
NOP
NOP
NOP
NOP
NOP
.UNIQUE451: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE452
NOP
NOP
NOP
NOP
NOP
.UNIQUE452: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE453
NOP
NOP
NOP
NOP
NOP
.UNIQUE453: 
	subq	$16, %rsp
 jmp .UNIQUE454
NOP
NOP
NOP
NOP
NOP
.UNIQUE454: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE455
NOP
NOP
NOP
NOP
NOP
.UNIQUE455: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE456
NOP
NOP
NOP
NOP
NOP
.UNIQUE456: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE457
NOP
NOP
NOP
NOP
NOP
.UNIQUE457: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE458
NOP
NOP
NOP
NOP
NOP
.UNIQUE458: 
	movl	$0, %r8d
 jmp .UNIQUE459
NOP
NOP
NOP
NOP
NOP
.UNIQUE459: 
	movl	$0, %ecx
 jmp .UNIQUE460
NOP
NOP
NOP
NOP
NOP
.UNIQUE460: 
	movl	$4, %esi
 jmp .UNIQUE461
NOP
NOP
NOP
NOP
NOP
.UNIQUE461: 
	movq	%rax, %rdi
 jmp .UNIQUE462
NOP
NOP
NOP
NOP
NOP
.UNIQUE462: 
	call	get_secure_data
 jmp .UNIQUE463
NOP
NOP
NOP
NOP
NOP
.UNIQUE463: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE464
NOP
NOP
NOP
NOP
NOP
.UNIQUE464: 
	ret
	.cfi_endproc
.LFE15:
	.size	get_float, .-get_float
	.globl	get_double
	.type	get_double, @function
get_double:
.LFB16:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE465
NOP
NOP
NOP
NOP
NOP
.UNIQUE465: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE466
NOP
NOP
NOP
NOP
NOP
.UNIQUE466: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE467
NOP
NOP
NOP
NOP
NOP
.UNIQUE467: 
	subq	$16, %rsp
 jmp .UNIQUE468
NOP
NOP
NOP
NOP
NOP
.UNIQUE468: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE469
NOP
NOP
NOP
NOP
NOP
.UNIQUE469: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE470
NOP
NOP
NOP
NOP
NOP
.UNIQUE470: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE471
NOP
NOP
NOP
NOP
NOP
.UNIQUE471: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE472
NOP
NOP
NOP
NOP
NOP
.UNIQUE472: 
	movl	$0, %r8d
 jmp .UNIQUE473
NOP
NOP
NOP
NOP
NOP
.UNIQUE473: 
	movl	$0, %ecx
 jmp .UNIQUE474
NOP
NOP
NOP
NOP
NOP
.UNIQUE474: 
	movl	$8, %esi
 jmp .UNIQUE475
NOP
NOP
NOP
NOP
NOP
.UNIQUE475: 
	movq	%rax, %rdi
 jmp .UNIQUE476
NOP
NOP
NOP
NOP
NOP
.UNIQUE476: 
	call	get_secure_data
 jmp .UNIQUE477
NOP
NOP
NOP
NOP
NOP
.UNIQUE477: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE478
NOP
NOP
NOP
NOP
NOP
.UNIQUE478: 
	ret
	.cfi_endproc
.LFE16:
	.size	get_double, .-get_double
	.globl	set_char
	.type	set_char, @function
set_char:
.LFB17:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE479
NOP
NOP
NOP
NOP
NOP
.UNIQUE479: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE480
NOP
NOP
NOP
NOP
NOP
.UNIQUE480: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE481
NOP
NOP
NOP
NOP
NOP
.UNIQUE481: 
	subq	$16, %rsp
 jmp .UNIQUE482
NOP
NOP
NOP
NOP
NOP
.UNIQUE482: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE483
NOP
NOP
NOP
NOP
NOP
.UNIQUE483: 
	movl	%esi, %eax
 jmp .UNIQUE484
NOP
NOP
NOP
NOP
NOP
.UNIQUE484: 
	movb	%al, -12(%rbp)
 jmp .UNIQUE485
NOP
NOP
NOP
NOP
NOP
.UNIQUE485: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE486
NOP
NOP
NOP
NOP
NOP
.UNIQUE486: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE487
NOP
NOP
NOP
NOP
NOP
.UNIQUE487: 
	movq	%rax, %rsi
 jmp .UNIQUE488
NOP
NOP
NOP
NOP
NOP
.UNIQUE488: 
	movl	$1, %edi
 jmp .UNIQUE489
NOP
NOP
NOP
NOP
NOP
.UNIQUE489: 
	call	insert_data_into_mem
 jmp .UNIQUE490
NOP
NOP
NOP
NOP
NOP
.UNIQUE490: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE491
NOP
NOP
NOP
NOP
NOP
.UNIQUE491: 
	ret
	.cfi_endproc
.LFE17:
	.size	set_char, .-set_char
	.globl	set_int
	.type	set_int, @function
set_int:
.LFB18:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE492
NOP
NOP
NOP
NOP
NOP
.UNIQUE492: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE493
NOP
NOP
NOP
NOP
NOP
.UNIQUE493: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE494
NOP
NOP
NOP
NOP
NOP
.UNIQUE494: 
	subq	$16, %rsp
 jmp .UNIQUE495
NOP
NOP
NOP
NOP
NOP
.UNIQUE495: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE496
NOP
NOP
NOP
NOP
NOP
.UNIQUE496: 
	movl	%esi, -12(%rbp)
 jmp .UNIQUE497
NOP
NOP
NOP
NOP
NOP
.UNIQUE497: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE498
NOP
NOP
NOP
NOP
NOP
.UNIQUE498: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE499
NOP
NOP
NOP
NOP
NOP
.UNIQUE499: 
	movq	%rax, %rsi
 jmp .UNIQUE500
NOP
NOP
NOP
NOP
NOP
.UNIQUE500: 
	movl	$4, %edi
 jmp .UNIQUE501
NOP
NOP
NOP
NOP
NOP
.UNIQUE501: 
	call	insert_data_into_mem
 jmp .UNIQUE502
NOP
NOP
NOP
NOP
NOP
.UNIQUE502: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE503
NOP
NOP
NOP
NOP
NOP
.UNIQUE503: 
	ret
	.cfi_endproc
.LFE18:
	.size	set_int, .-set_int
	.globl	set_long_int
	.type	set_long_int, @function
set_long_int:
.LFB19:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE504
NOP
NOP
NOP
NOP
NOP
.UNIQUE504: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE505
NOP
NOP
NOP
NOP
NOP
.UNIQUE505: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE506
NOP
NOP
NOP
NOP
NOP
.UNIQUE506: 
	subq	$16, %rsp
 jmp .UNIQUE507
NOP
NOP
NOP
NOP
NOP
.UNIQUE507: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE508
NOP
NOP
NOP
NOP
NOP
.UNIQUE508: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE509
NOP
NOP
NOP
NOP
NOP
.UNIQUE509: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE510
NOP
NOP
NOP
NOP
NOP
.UNIQUE510: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE511
NOP
NOP
NOP
NOP
NOP
.UNIQUE511: 
	movq	%rax, %rsi
 jmp .UNIQUE512
NOP
NOP
NOP
NOP
NOP
.UNIQUE512: 
	movl	$8, %edi
 jmp .UNIQUE513
NOP
NOP
NOP
NOP
NOP
.UNIQUE513: 
	call	insert_data_into_mem
 jmp .UNIQUE514
NOP
NOP
NOP
NOP
NOP
.UNIQUE514: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE515
NOP
NOP
NOP
NOP
NOP
.UNIQUE515: 
	ret
	.cfi_endproc
.LFE19:
	.size	set_long_int, .-set_long_int
	.globl	set_float
	.type	set_float, @function
set_float:
.LFB20:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE516
NOP
NOP
NOP
NOP
NOP
.UNIQUE516: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE517
NOP
NOP
NOP
NOP
NOP
.UNIQUE517: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE518
NOP
NOP
NOP
NOP
NOP
.UNIQUE518: 
	subq	$16, %rsp
 jmp .UNIQUE519
NOP
NOP
NOP
NOP
NOP
.UNIQUE519: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE520
NOP
NOP
NOP
NOP
NOP
.UNIQUE520: 
	movss	%xmm0, -12(%rbp)
 jmp .UNIQUE521
NOP
NOP
NOP
NOP
NOP
.UNIQUE521: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE522
NOP
NOP
NOP
NOP
NOP
.UNIQUE522: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE523
NOP
NOP
NOP
NOP
NOP
.UNIQUE523: 
	movq	%rax, %rsi
 jmp .UNIQUE524
NOP
NOP
NOP
NOP
NOP
.UNIQUE524: 
	movl	$4, %edi
 jmp .UNIQUE525
NOP
NOP
NOP
NOP
NOP
.UNIQUE525: 
	call	insert_data_into_mem
 jmp .UNIQUE526
NOP
NOP
NOP
NOP
NOP
.UNIQUE526: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE527
NOP
NOP
NOP
NOP
NOP
.UNIQUE527: 
	ret
	.cfi_endproc
.LFE20:
	.size	set_float, .-set_float
	.globl	set_double
	.type	set_double, @function
set_double:
.LFB21:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE528
NOP
NOP
NOP
NOP
NOP
.UNIQUE528: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE529
NOP
NOP
NOP
NOP
NOP
.UNIQUE529: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE530
NOP
NOP
NOP
NOP
NOP
.UNIQUE530: 
	subq	$16, %rsp
 jmp .UNIQUE531
NOP
NOP
NOP
NOP
NOP
.UNIQUE531: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE532
NOP
NOP
NOP
NOP
NOP
.UNIQUE532: 
	movsd	%xmm0, -16(%rbp)
 jmp .UNIQUE533
NOP
NOP
NOP
NOP
NOP
.UNIQUE533: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE534
NOP
NOP
NOP
NOP
NOP
.UNIQUE534: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE535
NOP
NOP
NOP
NOP
NOP
.UNIQUE535: 
	movq	%rax, %rsi
 jmp .UNIQUE536
NOP
NOP
NOP
NOP
NOP
.UNIQUE536: 
	movl	$8, %edi
 jmp .UNIQUE537
NOP
NOP
NOP
NOP
NOP
.UNIQUE537: 
	call	insert_data_into_mem
 jmp .UNIQUE538
NOP
NOP
NOP
NOP
NOP
.UNIQUE538: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE539
NOP
NOP
NOP
NOP
NOP
.UNIQUE539: 
	ret
	.cfi_endproc
.LFE21:
	.size	set_double, .-set_double
	.globl	insert_data_into_normal_array
	.type	insert_data_into_normal_array, @function
insert_data_into_normal_array:
.LFB22:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE540
NOP
NOP
NOP
NOP
NOP
.UNIQUE540: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE541
NOP
NOP
NOP
NOP
NOP
.UNIQUE541: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE542
NOP
NOP
NOP
NOP
NOP
.UNIQUE542: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE543
NOP
NOP
NOP
NOP
NOP
.UNIQUE543: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE544
NOP
NOP
NOP
NOP
NOP
.UNIQUE544: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE545
NOP
NOP
NOP
NOP
NOP
.UNIQUE545: 
	movl	$0, -4(%rbp)
 jmp .UNIQUE546
NOP
NOP
NOP
NOP
NOP
.UNIQUE546: 
	jmp	.L58
.L59:
 jmp .UNIQUE547
NOP
NOP
NOP
NOP
NOP
.UNIQUE547: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE548
NOP
NOP
NOP
NOP
NOP
.UNIQUE548: 
	movslq	%eax, %rdx
 jmp .UNIQUE549
NOP
NOP
NOP
NOP
NOP
.UNIQUE549: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE550
NOP
NOP
NOP
NOP
NOP
.UNIQUE550: 
	addq	%rax, %rdx
 jmp .UNIQUE551
NOP
NOP
NOP
NOP
NOP
.UNIQUE551: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE552
NOP
NOP
NOP
NOP
NOP
.UNIQUE552: 
	movslq	%eax, %rcx
 jmp .UNIQUE553
NOP
NOP
NOP
NOP
NOP
.UNIQUE553: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE554
NOP
NOP
NOP
NOP
NOP
.UNIQUE554: 
	addq	%rcx, %rax
 jmp .UNIQUE555
NOP
NOP
NOP
NOP
NOP
.UNIQUE555: 
	movzbl	(%rax), %eax
 jmp .UNIQUE556
NOP
NOP
NOP
NOP
NOP
.UNIQUE556: 
	movb	%al, (%rdx)
 jmp .UNIQUE557
NOP
NOP
NOP
NOP
NOP
.UNIQUE557: 
	addl	$1, -4(%rbp)
.L58:
 jmp .UNIQUE558
NOP
NOP
NOP
NOP
NOP
.UNIQUE558: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE559
NOP
NOP
NOP
NOP
NOP
.UNIQUE559: 
	cltq
 jmp .UNIQUE560
NOP
NOP
NOP
NOP
NOP
.UNIQUE560: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE561
NOP
NOP
NOP
NOP
NOP
.UNIQUE561: 
	jl	.L59
 jmp .UNIQUE562
NOP
NOP
NOP
NOP
NOP
.UNIQUE562: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE563
NOP
NOP
NOP
NOP
NOP
.UNIQUE563: 
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
NOP
NOP
 jmp .UNIQUE564
NOP
NOP
NOP
NOP
NOP
.UNIQUE564: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE565
NOP
NOP
NOP
NOP
NOP
.UNIQUE565: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE566
NOP
NOP
NOP
NOP
NOP
.UNIQUE566: 
	subq	$112, %rsp
 jmp .UNIQUE567
NOP
NOP
NOP
NOP
NOP
.UNIQUE567: 
	movq	$20, -88(%rbp)
 jmp .UNIQUE568
NOP
NOP
NOP
NOP
NOP
.UNIQUE568: 
	movl	$0, %esi
 jmp .UNIQUE569
NOP
NOP
NOP
NOP
NOP
.UNIQUE569: 
	movl	$.LC4, %edi
 jmp .UNIQUE570
NOP
NOP
NOP
NOP
NOP
.UNIQUE570: 
	movl	$0, %eax
 jmp .UNIQUE571
NOP
NOP
NOP
NOP
NOP
.UNIQUE571: 
	call	printf
 jmp .UNIQUE572
NOP
NOP
NOP
NOP
NOP
.UNIQUE572: 
	movl	$.LC5, %edi
 jmp .UNIQUE573
NOP
NOP
NOP
NOP
NOP
.UNIQUE573: 
	call	puts
 jmp .UNIQUE574
NOP
NOP
NOP
NOP
NOP
.UNIQUE574: 
	movl	$1024, %esi
 jmp .UNIQUE575
NOP
NOP
NOP
NOP
NOP
.UNIQUE575: 
	movl	$.LC6, %edi
 jmp .UNIQUE576
NOP
NOP
NOP
NOP
NOP
.UNIQUE576: 
	movl	$0, %eax
 jmp .UNIQUE577
NOP
NOP
NOP
NOP
NOP
.UNIQUE577: 
	call	printf
 jmp .UNIQUE578
NOP
NOP
NOP
NOP
NOP
.UNIQUE578: 
	movl	$.LC7, %edi
 jmp .UNIQUE579
NOP
NOP
NOP
NOP
NOP
.UNIQUE579: 
	call	puts
 jmp .UNIQUE580
NOP
NOP
NOP
NOP
NOP
.UNIQUE580: 
	movl	$0, %eax
 jmp .UNIQUE581
NOP
NOP
NOP
NOP
NOP
.UNIQUE581: 
	call	init_mem
 jmp .UNIQUE582
NOP
NOP
NOP
NOP
NOP
.UNIQUE582: 
	movq	%rax, -80(%rbp)
 jmp .UNIQUE583
NOP
NOP
NOP
NOP
NOP
.UNIQUE583: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE584
NOP
NOP
NOP
NOP
NOP
.UNIQUE584: 
	movq	%rax, %rsi
 jmp .UNIQUE585
NOP
NOP
NOP
NOP
NOP
.UNIQUE585: 
	movl	$.LC8, %edi
 jmp .UNIQUE586
NOP
NOP
NOP
NOP
NOP
.UNIQUE586: 
	movl	$0, %eax
 jmp .UNIQUE587
NOP
NOP
NOP
NOP
NOP
.UNIQUE587: 
	call	printf
 jmp .UNIQUE588
NOP
NOP
NOP
NOP
NOP
.UNIQUE588: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE589
NOP
NOP
NOP
NOP
NOP
.UNIQUE589: 
	movq	%rax, %rdi
 jmp .UNIQUE590
NOP
NOP
NOP
NOP
NOP
.UNIQUE590: 
	call	find_useful_chunks
 jmp .UNIQUE591
NOP
NOP
NOP
NOP
NOP
.UNIQUE591: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE592
NOP
NOP
NOP
NOP
NOP
.UNIQUE592: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE593
NOP
NOP
NOP
NOP
NOP
.UNIQUE593: 
	movq	%rax, %rsi
 jmp .UNIQUE594
NOP
NOP
NOP
NOP
NOP
.UNIQUE594: 
	movl	$.LC9, %edi
 jmp .UNIQUE595
NOP
NOP
NOP
NOP
NOP
.UNIQUE595: 
	movl	$0, %eax
 jmp .UNIQUE596
NOP
NOP
NOP
NOP
NOP
.UNIQUE596: 
	call	printf
 jmp .UNIQUE597
NOP
NOP
NOP
NOP
NOP
.UNIQUE597: 
	movl	$.LC10, %edi
 jmp .UNIQUE598
NOP
NOP
NOP
NOP
NOP
.UNIQUE598: 
	call	puts
 jmp .UNIQUE599
NOP
NOP
NOP
NOP
NOP
.UNIQUE599: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE600
NOP
NOP
NOP
NOP
NOP
.UNIQUE600: 
	movq	%rax, %rdi
 jmp .UNIQUE601
NOP
NOP
NOP
NOP
NOP
.UNIQUE601: 
	call	print_mem
 jmp .UNIQUE602
NOP
NOP
NOP
NOP
NOP
.UNIQUE602: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE603
NOP
NOP
NOP
NOP
NOP
.UNIQUE603: 
	salq	$2, %rax
 jmp .UNIQUE604
NOP
NOP
NOP
NOP
NOP
.UNIQUE604: 
	movq	%rax, %rdi
 jmp .UNIQUE605
NOP
NOP
NOP
NOP
NOP
.UNIQUE605: 
	call	malloc
 jmp .UNIQUE606
NOP
NOP
NOP
NOP
NOP
.UNIQUE606: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE607
NOP
NOP
NOP
NOP
NOP
.UNIQUE607: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE608
NOP
NOP
NOP
NOP
NOP
.UNIQUE608: 
	salq	$2, %rax
 jmp .UNIQUE609
NOP
NOP
NOP
NOP
NOP
.UNIQUE609: 
	movq	%rax, %rdi
 jmp .UNIQUE610
NOP
NOP
NOP
NOP
NOP
.UNIQUE610: 
	call	malloc
 jmp .UNIQUE611
NOP
NOP
NOP
NOP
NOP
.UNIQUE611: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE612
NOP
NOP
NOP
NOP
NOP
.UNIQUE612: 
	movq	$5, -104(%rbp)
 jmp .UNIQUE613
NOP
NOP
NOP
NOP
NOP
.UNIQUE613: 
	jmp	.L61
.L62:
 jmp .UNIQUE614
NOP
NOP
NOP
NOP
NOP
.UNIQUE614: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE615
NOP
NOP
NOP
NOP
NOP
.UNIQUE615: 
	salq	$2, %rax
 jmp .UNIQUE616
NOP
NOP
NOP
NOP
NOP
.UNIQUE616: 
	leaq	-20(%rax), %rdx
 jmp .UNIQUE617
NOP
NOP
NOP
NOP
NOP
.UNIQUE617: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE618
NOP
NOP
NOP
NOP
NOP
.UNIQUE618: 
	addq	%rax, %rdx
 jmp .UNIQUE619
NOP
NOP
NOP
NOP
NOP
.UNIQUE619: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE620
NOP
NOP
NOP
NOP
NOP
.UNIQUE620: 
	movl	%eax, %ecx
 jmp .UNIQUE621
NOP
NOP
NOP
NOP
NOP
.UNIQUE621: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE622
NOP
NOP
NOP
NOP
NOP
.UNIQUE622: 
	imull	%ecx, %eax
 jmp .UNIQUE623
NOP
NOP
NOP
NOP
NOP
.UNIQUE623: 
	movl	%eax, (%rdx)
 jmp .UNIQUE624
NOP
NOP
NOP
NOP
NOP
.UNIQUE624: 
	addq	$1, -104(%rbp)
.L61:
 jmp .UNIQUE625
NOP
NOP
NOP
NOP
NOP
.UNIQUE625: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE626
NOP
NOP
NOP
NOP
NOP
.UNIQUE626: 
	addq	$5, %rax
 jmp .UNIQUE627
NOP
NOP
NOP
NOP
NOP
.UNIQUE627: 
	cmpq	-104(%rbp), %rax
 jmp .UNIQUE628
NOP
NOP
NOP
NOP
NOP
.UNIQUE628: 
	jg	.L62
 jmp .UNIQUE629
NOP
NOP
NOP
NOP
NOP
.UNIQUE629: 
	movl	$.LC11, %edi
 jmp .UNIQUE630
NOP
NOP
NOP
NOP
NOP
.UNIQUE630: 
	call	puts
 jmp .UNIQUE631
NOP
NOP
NOP
NOP
NOP
.UNIQUE631: 
	movq	last_unused_memory(%rip), %rax
 jmp .UNIQUE632
NOP
NOP
NOP
NOP
NOP
.UNIQUE632: 
	movq	%rax, %rsi
 jmp .UNIQUE633
NOP
NOP
NOP
NOP
NOP
.UNIQUE633: 
	movl	$.LC12, %edi
 jmp .UNIQUE634
NOP
NOP
NOP
NOP
NOP
.UNIQUE634: 
	movl	$0, %eax
 jmp .UNIQUE635
NOP
NOP
NOP
NOP
NOP
.UNIQUE635: 
	call	printf
 jmp .UNIQUE636
NOP
NOP
NOP
NOP
NOP
.UNIQUE636: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE637
NOP
NOP
NOP
NOP
NOP
.UNIQUE637: 
	salq	$2, %rax
 jmp .UNIQUE638
NOP
NOP
NOP
NOP
NOP
.UNIQUE638: 
	movq	%rax, %rdi
 jmp .UNIQUE639
NOP
NOP
NOP
NOP
NOP
.UNIQUE639: 
	call	secure_malloc
 jmp .UNIQUE640
NOP
NOP
NOP
NOP
NOP
.UNIQUE640: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE641
NOP
NOP
NOP
NOP
NOP
.UNIQUE641: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE642
NOP
NOP
NOP
NOP
NOP
.UNIQUE642: 
	jne	.L63
 jmp .UNIQUE643
NOP
NOP
NOP
NOP
NOP
.UNIQUE643: 
	movl	$.LC13, %edi
 jmp .UNIQUE644
NOP
NOP
NOP
NOP
NOP
.UNIQUE644: 
	call	perror
 jmp .UNIQUE645
NOP
NOP
NOP
NOP
NOP
.UNIQUE645: 
	movl	$42, %edi
 jmp .UNIQUE646
NOP
NOP
NOP
NOP
NOP
.UNIQUE646: 
	call	exit
.L63:
 jmp .UNIQUE647
NOP
NOP
NOP
NOP
NOP
.UNIQUE647: 
	movq	last_unused_memory(%rip), %rax
 jmp .UNIQUE648
NOP
NOP
NOP
NOP
NOP
.UNIQUE648: 
	movq	%rax, %rsi
 jmp .UNIQUE649
NOP
NOP
NOP
NOP
NOP
.UNIQUE649: 
	movl	$.LC14, %edi
 jmp .UNIQUE650
NOP
NOP
NOP
NOP
NOP
.UNIQUE650: 
	movl	$0, %eax
 jmp .UNIQUE651
NOP
NOP
NOP
NOP
NOP
.UNIQUE651: 
	call	printf
 jmp .UNIQUE652
NOP
NOP
NOP
NOP
NOP
.UNIQUE652: 
	movl	$.LC15, %edi
 jmp .UNIQUE653
NOP
NOP
NOP
NOP
NOP
.UNIQUE653: 
	call	puts
 jmp .UNIQUE654
NOP
NOP
NOP
NOP
NOP
.UNIQUE654: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE655
NOP
NOP
NOP
NOP
NOP
.UNIQUE655: 
	salq	$2, %rax
 jmp .UNIQUE656
NOP
NOP
NOP
NOP
NOP
.UNIQUE656: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE657
NOP
NOP
NOP
NOP
NOP
.UNIQUE657: 
	movq	-64(%rbp), %rcx
 jmp .UNIQUE658
NOP
NOP
NOP
NOP
NOP
.UNIQUE658: 
	movq	%rcx, %rsi
 jmp .UNIQUE659
NOP
NOP
NOP
NOP
NOP
.UNIQUE659: 
	movq	%rax, %rdi
 jmp .UNIQUE660
NOP
NOP
NOP
NOP
NOP
.UNIQUE660: 
	call	insert_data_into_mem
 jmp .UNIQUE661
NOP
NOP
NOP
NOP
NOP
.UNIQUE661: 
	movl	$.LC16, %edi
 jmp .UNIQUE662
NOP
NOP
NOP
NOP
NOP
.UNIQUE662: 
	call	puts
 jmp .UNIQUE663
NOP
NOP
NOP
NOP
NOP
.UNIQUE663: 
	movl	$4, %edi
 jmp .UNIQUE664
NOP
NOP
NOP
NOP
NOP
.UNIQUE664: 
	call	malloc
 jmp .UNIQUE665
NOP
NOP
NOP
NOP
NOP
.UNIQUE665: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE666
NOP
NOP
NOP
NOP
NOP
.UNIQUE666: 
	movq	$0, -96(%rbp)
 jmp .UNIQUE667
NOP
NOP
NOP
NOP
NOP
.UNIQUE667: 
	jmp	.L64
.L65:
 jmp .UNIQUE668
NOP
NOP
NOP
NOP
NOP
.UNIQUE668: 
	movq	-96(%rbp), %rcx
 jmp .UNIQUE669
NOP
NOP
NOP
NOP
NOP
.UNIQUE669: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE670
NOP
NOP
NOP
NOP
NOP
.UNIQUE670: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE671
NOP
NOP
NOP
NOP
NOP
.UNIQUE671: 
	movq	%rcx, %r8
 jmp .UNIQUE672
NOP
NOP
NOP
NOP
NOP
.UNIQUE672: 
	movl	$1, %ecx
 jmp .UNIQUE673
NOP
NOP
NOP
NOP
NOP
.UNIQUE673: 
	movl	$4, %esi
 jmp .UNIQUE674
NOP
NOP
NOP
NOP
NOP
.UNIQUE674: 
	movq	%rax, %rdi
 jmp .UNIQUE675
NOP
NOP
NOP
NOP
NOP
.UNIQUE675: 
	call	get_secure_data
 jmp .UNIQUE676
NOP
NOP
NOP
NOP
NOP
.UNIQUE676: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE677
NOP
NOP
NOP
NOP
NOP
.UNIQUE677: 
	movl	(%rax), %eax
 jmp .UNIQUE678
NOP
NOP
NOP
NOP
NOP
.UNIQUE678: 
	movl	%eax, %esi
 jmp .UNIQUE679
NOP
NOP
NOP
NOP
NOP
.UNIQUE679: 
	movl	$.LC17, %edi
 jmp .UNIQUE680
NOP
NOP
NOP
NOP
NOP
.UNIQUE680: 
	movl	$0, %eax
 jmp .UNIQUE681
NOP
NOP
NOP
NOP
NOP
.UNIQUE681: 
	call	printf
 jmp .UNIQUE682
NOP
NOP
NOP
NOP
NOP
.UNIQUE682: 
	addq	$1, -96(%rbp)
.L64:
 jmp .UNIQUE683
NOP
NOP
NOP
NOP
NOP
.UNIQUE683: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE684
NOP
NOP
NOP
NOP
NOP
.UNIQUE684: 
	cmpq	-88(%rbp), %rax
 jmp .UNIQUE685
NOP
NOP
NOP
NOP
NOP
.UNIQUE685: 
	jl	.L65
 jmp .UNIQUE686
NOP
NOP
NOP
NOP
NOP
.UNIQUE686: 
	movl	$10, %edi
 jmp .UNIQUE687
NOP
NOP
NOP
NOP
NOP
.UNIQUE687: 
	call	putchar
 jmp .UNIQUE688
NOP
NOP
NOP
NOP
NOP
.UNIQUE688: 
	movl	$.LC18, %edi
 jmp .UNIQUE689
NOP
NOP
NOP
NOP
NOP
.UNIQUE689: 
	call	puts
 jmp .UNIQUE690
NOP
NOP
NOP
NOP
NOP
.UNIQUE690: 
	movq	last_unused_memory(%rip), %rax
 jmp .UNIQUE691
NOP
NOP
NOP
NOP
NOP
.UNIQUE691: 
	movq	%rax, %rsi
 jmp .UNIQUE692
NOP
NOP
NOP
NOP
NOP
.UNIQUE692: 
	movl	$.LC12, %edi
 jmp .UNIQUE693
NOP
NOP
NOP
NOP
NOP
.UNIQUE693: 
	movl	$0, %eax
 jmp .UNIQUE694
NOP
NOP
NOP
NOP
NOP
.UNIQUE694: 
	call	printf
 jmp .UNIQUE695
NOP
NOP
NOP
NOP
NOP
.UNIQUE695: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE696
NOP
NOP
NOP
NOP
NOP
.UNIQUE696: 
	salq	$2, %rax
 jmp .UNIQUE697
NOP
NOP
NOP
NOP
NOP
.UNIQUE697: 
	movq	%rax, %rdi
 jmp .UNIQUE698
NOP
NOP
NOP
NOP
NOP
.UNIQUE698: 
	call	secure_malloc
 jmp .UNIQUE699
NOP
NOP
NOP
NOP
NOP
.UNIQUE699: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE700
NOP
NOP
NOP
NOP
NOP
.UNIQUE700: 
	cmpq	$0, -32(%rbp)
 jmp .UNIQUE701
NOP
NOP
NOP
NOP
NOP
.UNIQUE701: 
	jne	.L66
 jmp .UNIQUE702
NOP
NOP
NOP
NOP
NOP
.UNIQUE702: 
	movl	$.LC13, %edi
 jmp .UNIQUE703
NOP
NOP
NOP
NOP
NOP
.UNIQUE703: 
	call	perror
 jmp .UNIQUE704
NOP
NOP
NOP
NOP
NOP
.UNIQUE704: 
	movl	$42, %edi
 jmp .UNIQUE705
NOP
NOP
NOP
NOP
NOP
.UNIQUE705: 
	call	exit
.L66:
 jmp .UNIQUE706
NOP
NOP
NOP
NOP
NOP
.UNIQUE706: 
	movq	last_unused_memory(%rip), %rax
 jmp .UNIQUE707
NOP
NOP
NOP
NOP
NOP
.UNIQUE707: 
	movq	%rax, %rsi
 jmp .UNIQUE708
NOP
NOP
NOP
NOP
NOP
.UNIQUE708: 
	movl	$.LC14, %edi
 jmp .UNIQUE709
NOP
NOP
NOP
NOP
NOP
.UNIQUE709: 
	movl	$0, %eax
 jmp .UNIQUE710
NOP
NOP
NOP
NOP
NOP
.UNIQUE710: 
	call	printf
 jmp .UNIQUE711
NOP
NOP
NOP
NOP
NOP
.UNIQUE711: 
	movq	$5, -104(%rbp)
 jmp .UNIQUE712
NOP
NOP
NOP
NOP
NOP
.UNIQUE712: 
	jmp	.L67
.L68:
 jmp .UNIQUE713
NOP
NOP
NOP
NOP
NOP
.UNIQUE713: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE714
NOP
NOP
NOP
NOP
NOP
.UNIQUE714: 
	salq	$2, %rax
 jmp .UNIQUE715
NOP
NOP
NOP
NOP
NOP
.UNIQUE715: 
	leaq	-20(%rax), %rdx
 jmp .UNIQUE716
NOP
NOP
NOP
NOP
NOP
.UNIQUE716: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE717
NOP
NOP
NOP
NOP
NOP
.UNIQUE717: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE718
NOP
NOP
NOP
NOP
NOP
.UNIQUE718: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE719
NOP
NOP
NOP
NOP
NOP
.UNIQUE719: 
	movl	%eax, %edx
 jmp .UNIQUE720
NOP
NOP
NOP
NOP
NOP
.UNIQUE720: 
	movl	%edx, %eax
 jmp .UNIQUE721
NOP
NOP
NOP
NOP
NOP
.UNIQUE721: 
	addl	%eax, %eax
 jmp .UNIQUE722
NOP
NOP
NOP
NOP
NOP
.UNIQUE722: 
	addl	%edx, %eax
 jmp .UNIQUE723
NOP
NOP
NOP
NOP
NOP
.UNIQUE723: 
	movl	%eax, (%rcx)
 jmp .UNIQUE724
NOP
NOP
NOP
NOP
NOP
.UNIQUE724: 
	addq	$1, -104(%rbp)
.L67:
 jmp .UNIQUE725
NOP
NOP
NOP
NOP
NOP
.UNIQUE725: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE726
NOP
NOP
NOP
NOP
NOP
.UNIQUE726: 
	addq	$5, %rax
 jmp .UNIQUE727
NOP
NOP
NOP
NOP
NOP
.UNIQUE727: 
	cmpq	-104(%rbp), %rax
 jmp .UNIQUE728
NOP
NOP
NOP
NOP
NOP
.UNIQUE728: 
	jg	.L68
 jmp .UNIQUE729
NOP
NOP
NOP
NOP
NOP
.UNIQUE729: 
	movl	$.LC19, %edi
 jmp .UNIQUE730
NOP
NOP
NOP
NOP
NOP
.UNIQUE730: 
	call	puts
 jmp .UNIQUE731
NOP
NOP
NOP
NOP
NOP
.UNIQUE731: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE732
NOP
NOP
NOP
NOP
NOP
.UNIQUE732: 
	salq	$2, %rax
 jmp .UNIQUE733
NOP
NOP
NOP
NOP
NOP
.UNIQUE733: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE734
NOP
NOP
NOP
NOP
NOP
.UNIQUE734: 
	movq	-64(%rbp), %rcx
 jmp .UNIQUE735
NOP
NOP
NOP
NOP
NOP
.UNIQUE735: 
	movq	%rcx, %rsi
 jmp .UNIQUE736
NOP
NOP
NOP
NOP
NOP
.UNIQUE736: 
	movq	%rax, %rdi
 jmp .UNIQUE737
NOP
NOP
NOP
NOP
NOP
.UNIQUE737: 
	call	insert_data_into_mem
 jmp .UNIQUE738
NOP
NOP
NOP
NOP
NOP
.UNIQUE738: 
	movl	$.LC16, %edi
 jmp .UNIQUE739
NOP
NOP
NOP
NOP
NOP
.UNIQUE739: 
	call	puts
 jmp .UNIQUE740
NOP
NOP
NOP
NOP
NOP
.UNIQUE740: 
	movq	$0, -96(%rbp)
 jmp .UNIQUE741
NOP
NOP
NOP
NOP
NOP
.UNIQUE741: 
	jmp	.L69
.L70:
 jmp .UNIQUE742
NOP
NOP
NOP
NOP
NOP
.UNIQUE742: 
	movq	-96(%rbp), %rcx
 jmp .UNIQUE743
NOP
NOP
NOP
NOP
NOP
.UNIQUE743: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE744
NOP
NOP
NOP
NOP
NOP
.UNIQUE744: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE745
NOP
NOP
NOP
NOP
NOP
.UNIQUE745: 
	movq	%rcx, %r8
 jmp .UNIQUE746
NOP
NOP
NOP
NOP
NOP
.UNIQUE746: 
	movl	$1, %ecx
 jmp .UNIQUE747
NOP
NOP
NOP
NOP
NOP
.UNIQUE747: 
	movl	$4, %esi
 jmp .UNIQUE748
NOP
NOP
NOP
NOP
NOP
.UNIQUE748: 
	movq	%rax, %rdi
 jmp .UNIQUE749
NOP
NOP
NOP
NOP
NOP
.UNIQUE749: 
	call	get_secure_data
 jmp .UNIQUE750
NOP
NOP
NOP
NOP
NOP
.UNIQUE750: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE751
NOP
NOP
NOP
NOP
NOP
.UNIQUE751: 
	movl	(%rax), %eax
 jmp .UNIQUE752
NOP
NOP
NOP
NOP
NOP
.UNIQUE752: 
	movl	%eax, %esi
 jmp .UNIQUE753
NOP
NOP
NOP
NOP
NOP
.UNIQUE753: 
	movl	$.LC17, %edi
 jmp .UNIQUE754
NOP
NOP
NOP
NOP
NOP
.UNIQUE754: 
	movl	$0, %eax
 jmp .UNIQUE755
NOP
NOP
NOP
NOP
NOP
.UNIQUE755: 
	call	printf
 jmp .UNIQUE756
NOP
NOP
NOP
NOP
NOP
.UNIQUE756: 
	addq	$1, -96(%rbp)
.L69:
 jmp .UNIQUE757
NOP
NOP
NOP
NOP
NOP
.UNIQUE757: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE758
NOP
NOP
NOP
NOP
NOP
.UNIQUE758: 
	cmpq	-88(%rbp), %rax
 jmp .UNIQUE759
NOP
NOP
NOP
NOP
NOP
.UNIQUE759: 
	jl	.L70
 jmp .UNIQUE760
NOP
NOP
NOP
NOP
NOP
.UNIQUE760: 
	movl	$10, %edi
 jmp .UNIQUE761
NOP
NOP
NOP
NOP
NOP
.UNIQUE761: 
	call	putchar
 jmp .UNIQUE762
NOP
NOP
NOP
NOP
NOP
.UNIQUE762: 
	movl	$.LC20, %edi
 jmp .UNIQUE763
NOP
NOP
NOP
NOP
NOP
.UNIQUE763: 
	call	puts
 jmp .UNIQUE764
NOP
NOP
NOP
NOP
NOP
.UNIQUE764: 
	movl	$4, %edi
 jmp .UNIQUE765
NOP
NOP
NOP
NOP
NOP
.UNIQUE765: 
	call	secure_malloc
 jmp .UNIQUE766
NOP
NOP
NOP
NOP
NOP
.UNIQUE766: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE767
NOP
NOP
NOP
NOP
NOP
.UNIQUE767: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE768
NOP
NOP
NOP
NOP
NOP
.UNIQUE768: 
	movl	$424242424, (%rax)
 jmp .UNIQUE769
NOP
NOP
NOP
NOP
NOP
.UNIQUE769: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE770
NOP
NOP
NOP
NOP
NOP
.UNIQUE770: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE771
NOP
NOP
NOP
NOP
NOP
.UNIQUE771: 
	movq	%rax, %rsi
 jmp .UNIQUE772
NOP
NOP
NOP
NOP
NOP
.UNIQUE772: 
	movl	$4, %edi
 jmp .UNIQUE773
NOP
NOP
NOP
NOP
NOP
.UNIQUE773: 
	call	insert_data_into_mem
 jmp .UNIQUE774
NOP
NOP
NOP
NOP
NOP
.UNIQUE774: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE775
NOP
NOP
NOP
NOP
NOP
.UNIQUE775: 
	movq	%rax, %rdi
 jmp .UNIQUE776
NOP
NOP
NOP
NOP
NOP
.UNIQUE776: 
	call	free
 jmp .UNIQUE777
NOP
NOP
NOP
NOP
NOP
.UNIQUE777: 
	movl	$4, %edi
 jmp .UNIQUE778
NOP
NOP
NOP
NOP
NOP
.UNIQUE778: 
	call	malloc
 jmp .UNIQUE779
NOP
NOP
NOP
NOP
NOP
.UNIQUE779: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE780
NOP
NOP
NOP
NOP
NOP
.UNIQUE780: 
	movq	-96(%rbp), %rcx
 jmp .UNIQUE781
NOP
NOP
NOP
NOP
NOP
.UNIQUE781: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE782
NOP
NOP
NOP
NOP
NOP
.UNIQUE782: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE783
NOP
NOP
NOP
NOP
NOP
.UNIQUE783: 
	movq	%rcx, %r8
 jmp .UNIQUE784
NOP
NOP
NOP
NOP
NOP
.UNIQUE784: 
	movl	$0, %ecx
 jmp .UNIQUE785
NOP
NOP
NOP
NOP
NOP
.UNIQUE785: 
	movl	$4, %esi
 jmp .UNIQUE786
NOP
NOP
NOP
NOP
NOP
.UNIQUE786: 
	movq	%rax, %rdi
 jmp .UNIQUE787
NOP
NOP
NOP
NOP
NOP
.UNIQUE787: 
	call	get_secure_data
 jmp .UNIQUE788
NOP
NOP
NOP
NOP
NOP
.UNIQUE788: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE789
NOP
NOP
NOP
NOP
NOP
.UNIQUE789: 
	movl	(%rax), %eax
 jmp .UNIQUE790
NOP
NOP
NOP
NOP
NOP
.UNIQUE790: 
	movl	%eax, %esi
 jmp .UNIQUE791
NOP
NOP
NOP
NOP
NOP
.UNIQUE791: 
	movl	$.LC21, %edi
 jmp .UNIQUE792
NOP
NOP
NOP
NOP
NOP
.UNIQUE792: 
	movl	$0, %eax
 jmp .UNIQUE793
NOP
NOP
NOP
NOP
NOP
.UNIQUE793: 
	call	printf
 jmp .UNIQUE794
NOP
NOP
NOP
NOP
NOP
.UNIQUE794: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE795
NOP
NOP
NOP
NOP
NOP
.UNIQUE795: 
	movq	%rax, %rdi
 jmp .UNIQUE796
NOP
NOP
NOP
NOP
NOP
.UNIQUE796: 
	call	free
 jmp .UNIQUE797
NOP
NOP
NOP
NOP
NOP
.UNIQUE797: 
	movl	$.LC22, %edi
 jmp .UNIQUE798
NOP
NOP
NOP
NOP
NOP
.UNIQUE798: 
	call	puts
 jmp .UNIQUE799
NOP
NOP
NOP
NOP
NOP
.UNIQUE799: 
	movl	$4, %edi
 jmp .UNIQUE800
NOP
NOP
NOP
NOP
NOP
.UNIQUE800: 
	call	secure_malloc
 jmp .UNIQUE801
NOP
NOP
NOP
NOP
NOP
.UNIQUE801: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE802
NOP
NOP
NOP
NOP
NOP
.UNIQUE802: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE803
NOP
NOP
NOP
NOP
NOP
.UNIQUE803: 
	movl	$99998, %esi
 jmp .UNIQUE804
NOP
NOP
NOP
NOP
NOP
.UNIQUE804: 
	movq	%rax, %rdi
 jmp .UNIQUE805
NOP
NOP
NOP
NOP
NOP
.UNIQUE805: 
	call	set_int
 jmp .UNIQUE806
NOP
NOP
NOP
NOP
NOP
.UNIQUE806: 
	leaq	-108(%rbp), %rdx
 jmp .UNIQUE807
NOP
NOP
NOP
NOP
NOP
.UNIQUE807: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE808
NOP
NOP
NOP
NOP
NOP
.UNIQUE808: 
	movq	%rdx, %rsi
 jmp .UNIQUE809
NOP
NOP
NOP
NOP
NOP
.UNIQUE809: 
	movq	%rax, %rdi
 jmp .UNIQUE810
NOP
NOP
NOP
NOP
NOP
.UNIQUE810: 
	call	get_int
 jmp .UNIQUE811
NOP
NOP
NOP
NOP
NOP
.UNIQUE811: 
	movl	-108(%rbp), %eax
 jmp .UNIQUE812
NOP
NOP
NOP
NOP
NOP
.UNIQUE812: 
	movl	%eax, %esi
 jmp .UNIQUE813
NOP
NOP
NOP
NOP
NOP
.UNIQUE813: 
	movl	$.LC23, %edi
 jmp .UNIQUE814
NOP
NOP
NOP
NOP
NOP
.UNIQUE814: 
	movl	$0, %eax
 jmp .UNIQUE815
NOP
NOP
NOP
NOP
NOP
.UNIQUE815: 
	call	printf
 jmp .UNIQUE816
NOP
NOP
NOP
NOP
NOP
.UNIQUE816: 
	movq	$200000000, -16(%rbp)
 jmp .UNIQUE817
NOP
NOP
NOP
NOP
NOP
.UNIQUE817: 
	movl	$0, %edi
 jmp .UNIQUE818
NOP
NOP
NOP
NOP
NOP
.UNIQUE818: 
	call	time
 jmp .UNIQUE819
NOP
NOP
NOP
NOP
NOP
.UNIQUE819: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE820
NOP
NOP
NOP
NOP
NOP
.UNIQUE820: 
	movq	$1, -96(%rbp)
 jmp .UNIQUE821
NOP
NOP
NOP
NOP
NOP
.UNIQUE821: 
	jmp	.L71
.L74:
 jmp .UNIQUE822
NOP
NOP
NOP
NOP
NOP
.UNIQUE822: 
	movq	$0, -104(%rbp)
 jmp .UNIQUE823
NOP
NOP
NOP
NOP
NOP
.UNIQUE823: 
	jmp	.L72
.L73:
 jmp .UNIQUE824
NOP
NOP
NOP
NOP
NOP
.UNIQUE824: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE825
NOP
NOP
NOP
NOP
NOP
.UNIQUE825: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE826
NOP
NOP
NOP
NOP
NOP
.UNIQUE826: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE827
NOP
NOP
NOP
NOP
NOP
.UNIQUE827: 
	addq	%rax, %rdx
 jmp .UNIQUE828
NOP
NOP
NOP
NOP
NOP
.UNIQUE828: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE829
NOP
NOP
NOP
NOP
NOP
.UNIQUE829: 
	movl	%eax, (%rdx)
 jmp .UNIQUE830
NOP
NOP
NOP
NOP
NOP
.UNIQUE830: 
	addq	$1, -104(%rbp)
.L72:
 jmp .UNIQUE831
NOP
NOP
NOP
NOP
NOP
.UNIQUE831: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE832
NOP
NOP
NOP
NOP
NOP
.UNIQUE832: 
	cmpq	-88(%rbp), %rax
 jmp .UNIQUE833
NOP
NOP
NOP
NOP
NOP
.UNIQUE833: 
	jl	.L73
 jmp .UNIQUE834
NOP
NOP
NOP
NOP
NOP
.UNIQUE834: 
	addq	$1, -96(%rbp)
.L71:
 jmp .UNIQUE835
NOP
NOP
NOP
NOP
NOP
.UNIQUE835: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE836
NOP
NOP
NOP
NOP
NOP
.UNIQUE836: 
	cmpq	-16(%rbp), %rax
 jmp .UNIQUE837
NOP
NOP
NOP
NOP
NOP
.UNIQUE837: 
	jle	.L74
 jmp .UNIQUE838
NOP
NOP
NOP
NOP
NOP
.UNIQUE838: 
	movl	$0, %edi
 jmp .UNIQUE839
NOP
NOP
NOP
NOP
NOP
.UNIQUE839: 
	call	time
 jmp .UNIQUE840
NOP
NOP
NOP
NOP
NOP
.UNIQUE840: 
	subq	-8(%rbp), %rax
 jmp .UNIQUE841
NOP
NOP
NOP
NOP
NOP
.UNIQUE841: 
	movq	%rax, %rsi
 jmp .UNIQUE842
NOP
NOP
NOP
NOP
NOP
.UNIQUE842: 
	movl	$.LC24, %edi
 jmp .UNIQUE843
NOP
NOP
NOP
NOP
NOP
.UNIQUE843: 
	movl	$0, %eax
 jmp .UNIQUE844
NOP
NOP
NOP
NOP
NOP
.UNIQUE844: 
	call	printf
 jmp .UNIQUE845
NOP
NOP
NOP
NOP
NOP
.UNIQUE845: 
	movl	$0, %edi
 jmp .UNIQUE846
NOP
NOP
NOP
NOP
NOP
.UNIQUE846: 
	call	time
 jmp .UNIQUE847
NOP
NOP
NOP
NOP
NOP
.UNIQUE847: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE848
NOP
NOP
NOP
NOP
NOP
.UNIQUE848: 
	movq	$1, -96(%rbp)
 jmp .UNIQUE849
NOP
NOP
NOP
NOP
NOP
.UNIQUE849: 
	jmp	.L75
.L76:
 jmp .UNIQUE850
NOP
NOP
NOP
NOP
NOP
.UNIQUE850: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE851
NOP
NOP
NOP
NOP
NOP
.UNIQUE851: 
	salq	$2, %rax
 jmp .UNIQUE852
NOP
NOP
NOP
NOP
NOP
.UNIQUE852: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE853
NOP
NOP
NOP
NOP
NOP
.UNIQUE853: 
	movq	-64(%rbp), %rcx
 jmp .UNIQUE854
NOP
NOP
NOP
NOP
NOP
.UNIQUE854: 
	movq	%rcx, %rsi
 jmp .UNIQUE855
NOP
NOP
NOP
NOP
NOP
.UNIQUE855: 
	movq	%rax, %rdi
 jmp .UNIQUE856
NOP
NOP
NOP
NOP
NOP
.UNIQUE856: 
	call	insert_data_into_mem
 jmp .UNIQUE857
NOP
NOP
NOP
NOP
NOP
.UNIQUE857: 
	addq	$1, -96(%rbp)
.L75:
 jmp .UNIQUE858
NOP
NOP
NOP
NOP
NOP
.UNIQUE858: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE859
NOP
NOP
NOP
NOP
NOP
.UNIQUE859: 
	cmpq	-16(%rbp), %rax
 jmp .UNIQUE860
NOP
NOP
NOP
NOP
NOP
.UNIQUE860: 
	jle	.L76
 jmp .UNIQUE861
NOP
NOP
NOP
NOP
NOP
.UNIQUE861: 
	movl	$0, %edi
 jmp .UNIQUE862
NOP
NOP
NOP
NOP
NOP
.UNIQUE862: 
	call	time
 jmp .UNIQUE863
NOP
NOP
NOP
NOP
NOP
.UNIQUE863: 
	subq	-8(%rbp), %rax
 jmp .UNIQUE864
NOP
NOP
NOP
NOP
NOP
.UNIQUE864: 
	movq	%rax, %rsi
 jmp .UNIQUE865
NOP
NOP
NOP
NOP
NOP
.UNIQUE865: 
	movl	$.LC25, %edi
 jmp .UNIQUE866
NOP
NOP
NOP
NOP
NOP
.UNIQUE866: 
	movl	$0, %eax
 jmp .UNIQUE867
NOP
NOP
NOP
NOP
NOP
.UNIQUE867: 
	call	printf
 jmp .UNIQUE868
NOP
NOP
NOP
NOP
NOP
.UNIQUE868: 
	movl	$0, %edi
 jmp .UNIQUE869
NOP
NOP
NOP
NOP
NOP
.UNIQUE869: 
	call	time
 jmp .UNIQUE870
NOP
NOP
NOP
NOP
NOP
.UNIQUE870: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE871
NOP
NOP
NOP
NOP
NOP
.UNIQUE871: 
	movq	$1, -96(%rbp)
 jmp .UNIQUE872
NOP
NOP
NOP
NOP
NOP
.UNIQUE872: 
	jmp	.L77
.L80:
 jmp .UNIQUE873
NOP
NOP
NOP
NOP
NOP
.UNIQUE873: 
	movq	$0, -104(%rbp)
 jmp .UNIQUE874
NOP
NOP
NOP
NOP
NOP
.UNIQUE874: 
	jmp	.L78
.L79:
 jmp .UNIQUE875
NOP
NOP
NOP
NOP
NOP
.UNIQUE875: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE876
NOP
NOP
NOP
NOP
NOP
.UNIQUE876: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE877
NOP
NOP
NOP
NOP
NOP
.UNIQUE877: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE878
NOP
NOP
NOP
NOP
NOP
.UNIQUE878: 
	addq	%rax, %rdx
 jmp .UNIQUE879
NOP
NOP
NOP
NOP
NOP
.UNIQUE879: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE880
NOP
NOP
NOP
NOP
NOP
.UNIQUE880: 
	leaq	0(,%rax,4), %rcx
 jmp .UNIQUE881
NOP
NOP
NOP
NOP
NOP
.UNIQUE881: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE882
NOP
NOP
NOP
NOP
NOP
.UNIQUE882: 
	addq	%rcx, %rax
 jmp .UNIQUE883
NOP
NOP
NOP
NOP
NOP
.UNIQUE883: 
	movl	(%rax), %eax
 jmp .UNIQUE884
NOP
NOP
NOP
NOP
NOP
.UNIQUE884: 
	movl	%eax, (%rdx)
 jmp .UNIQUE885
NOP
NOP
NOP
NOP
NOP
.UNIQUE885: 
	addq	$1, -104(%rbp)
.L78:
 jmp .UNIQUE886
NOP
NOP
NOP
NOP
NOP
.UNIQUE886: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE887
NOP
NOP
NOP
NOP
NOP
.UNIQUE887: 
	cmpq	-88(%rbp), %rax
 jmp .UNIQUE888
NOP
NOP
NOP
NOP
NOP
.UNIQUE888: 
	jl	.L79
 jmp .UNIQUE889
NOP
NOP
NOP
NOP
NOP
.UNIQUE889: 
	addq	$1, -96(%rbp)
.L77:
 jmp .UNIQUE890
NOP
NOP
NOP
NOP
NOP
.UNIQUE890: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE891
NOP
NOP
NOP
NOP
NOP
.UNIQUE891: 
	cmpq	-16(%rbp), %rax
 jmp .UNIQUE892
NOP
NOP
NOP
NOP
NOP
.UNIQUE892: 
	jle	.L80
 jmp .UNIQUE893
NOP
NOP
NOP
NOP
NOP
.UNIQUE893: 
	movl	$0, %edi
 jmp .UNIQUE894
NOP
NOP
NOP
NOP
NOP
.UNIQUE894: 
	call	time
 jmp .UNIQUE895
NOP
NOP
NOP
NOP
NOP
.UNIQUE895: 
	subq	-8(%rbp), %rax
 jmp .UNIQUE896
NOP
NOP
NOP
NOP
NOP
.UNIQUE896: 
	movq	%rax, %rsi
 jmp .UNIQUE897
NOP
NOP
NOP
NOP
NOP
.UNIQUE897: 
	movl	$.LC26, %edi
 jmp .UNIQUE898
NOP
NOP
NOP
NOP
NOP
.UNIQUE898: 
	movl	$0, %eax
 jmp .UNIQUE899
NOP
NOP
NOP
NOP
NOP
.UNIQUE899: 
	call	printf
 jmp .UNIQUE900
NOP
NOP
NOP
NOP
NOP
.UNIQUE900: 
	movl	$0, %edi
 jmp .UNIQUE901
NOP
NOP
NOP
NOP
NOP
.UNIQUE901: 
	call	time
 jmp .UNIQUE902
NOP
NOP
NOP
NOP
NOP
.UNIQUE902: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE903
NOP
NOP
NOP
NOP
NOP
.UNIQUE903: 
	movq	$1, -96(%rbp)
 jmp .UNIQUE904
NOP
NOP
NOP
NOP
NOP
.UNIQUE904: 
	jmp	.L81
.L82:
 jmp .UNIQUE905
NOP
NOP
NOP
NOP
NOP
.UNIQUE905: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE906
NOP
NOP
NOP
NOP
NOP
.UNIQUE906: 
	salq	$2, %rax
 jmp .UNIQUE907
NOP
NOP
NOP
NOP
NOP
.UNIQUE907: 
	movq	%rax, %rsi
 jmp .UNIQUE908
NOP
NOP
NOP
NOP
NOP
.UNIQUE908: 
	movq	-104(%rbp), %rcx
 jmp .UNIQUE909
NOP
NOP
NOP
NOP
NOP
.UNIQUE909: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE910
NOP
NOP
NOP
NOP
NOP
.UNIQUE910: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE911
NOP
NOP
NOP
NOP
NOP
.UNIQUE911: 
	movq	%rcx, %r8
 jmp .UNIQUE912
NOP
NOP
NOP
NOP
NOP
.UNIQUE912: 
	movl	$0, %ecx
 jmp .UNIQUE913
NOP
NOP
NOP
NOP
NOP
.UNIQUE913: 
	movq	%rax, %rdi
 jmp .UNIQUE914
NOP
NOP
NOP
NOP
NOP
.UNIQUE914: 
	call	get_secure_data
 jmp .UNIQUE915
NOP
NOP
NOP
NOP
NOP
.UNIQUE915: 
	addq	$1, -96(%rbp)
.L81:
 jmp .UNIQUE916
NOP
NOP
NOP
NOP
NOP
.UNIQUE916: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE917
NOP
NOP
NOP
NOP
NOP
.UNIQUE917: 
	cmpq	-16(%rbp), %rax
 jmp .UNIQUE918
NOP
NOP
NOP
NOP
NOP
.UNIQUE918: 
	jle	.L82
 jmp .UNIQUE919
NOP
NOP
NOP
NOP
NOP
.UNIQUE919: 
	movl	$0, %edi
 jmp .UNIQUE920
NOP
NOP
NOP
NOP
NOP
.UNIQUE920: 
	call	time
 jmp .UNIQUE921
NOP
NOP
NOP
NOP
NOP
.UNIQUE921: 
	subq	-8(%rbp), %rax
 jmp .UNIQUE922
NOP
NOP
NOP
NOP
NOP
.UNIQUE922: 
	movq	%rax, %rsi
 jmp .UNIQUE923
NOP
NOP
NOP
NOP
NOP
.UNIQUE923: 
	movl	$.LC27, %edi
 jmp .UNIQUE924
NOP
NOP
NOP
NOP
NOP
.UNIQUE924: 
	movl	$0, %eax
 jmp .UNIQUE925
NOP
NOP
NOP
NOP
NOP
.UNIQUE925: 
	call	printf
 jmp .UNIQUE926
NOP
NOP
NOP
NOP
NOP
.UNIQUE926: 
	movq	$0, -104(%rbp)
 jmp .UNIQUE927
NOP
NOP
NOP
NOP
NOP
.UNIQUE927: 
	jmp	.L83
.L85:
 jmp .UNIQUE928
NOP
NOP
NOP
NOP
NOP
.UNIQUE928: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE929
NOP
NOP
NOP
NOP
NOP
.UNIQUE929: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE930
NOP
NOP
NOP
NOP
NOP
.UNIQUE930: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE931
NOP
NOP
NOP
NOP
NOP
.UNIQUE931: 
	addq	%rdx, %rax
 jmp .UNIQUE932
NOP
NOP
NOP
NOP
NOP
.UNIQUE932: 
	movl	(%rax), %edx
 jmp .UNIQUE933
NOP
NOP
NOP
NOP
NOP
.UNIQUE933: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE934
NOP
NOP
NOP
NOP
NOP
.UNIQUE934: 
	leaq	0(,%rax,4), %rcx
 jmp .UNIQUE935
NOP
NOP
NOP
NOP
NOP
.UNIQUE935: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE936
NOP
NOP
NOP
NOP
NOP
.UNIQUE936: 
	addq	%rcx, %rax
 jmp .UNIQUE937
NOP
NOP
NOP
NOP
NOP
.UNIQUE937: 
	movl	(%rax), %eax
 jmp .UNIQUE938
NOP
NOP
NOP
NOP
NOP
.UNIQUE938: 
	cmpl	%eax, %edx
 jmp .UNIQUE939
NOP
NOP
NOP
NOP
NOP
.UNIQUE939: 
	je	.L84
 jmp .UNIQUE940
NOP
NOP
NOP
NOP
NOP
.UNIQUE940: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE941
NOP
NOP
NOP
NOP
NOP
.UNIQUE941: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE942
NOP
NOP
NOP
NOP
NOP
.UNIQUE942: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE943
NOP
NOP
NOP
NOP
NOP
.UNIQUE943: 
	addq	%rdx, %rax
 jmp .UNIQUE944
NOP
NOP
NOP
NOP
NOP
.UNIQUE944: 
	movl	(%rax), %edx
 jmp .UNIQUE945
NOP
NOP
NOP
NOP
NOP
.UNIQUE945: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE946
NOP
NOP
NOP
NOP
NOP
.UNIQUE946: 
	leaq	0(,%rax,4), %rcx
 jmp .UNIQUE947
NOP
NOP
NOP
NOP
NOP
.UNIQUE947: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE948
NOP
NOP
NOP
NOP
NOP
.UNIQUE948: 
	addq	%rcx, %rax
 jmp .UNIQUE949
NOP
NOP
NOP
NOP
NOP
.UNIQUE949: 
	movl	(%rax), %eax
 jmp .UNIQUE950
NOP
NOP
NOP
NOP
NOP
.UNIQUE950: 
	movq	-104(%rbp), %rcx
 jmp .UNIQUE951
NOP
NOP
NOP
NOP
NOP
.UNIQUE951: 
	movl	%eax, %esi
 jmp .UNIQUE952
NOP
NOP
NOP
NOP
NOP
.UNIQUE952: 
	movl	$.LC28, %edi
 jmp .UNIQUE953
NOP
NOP
NOP
NOP
NOP
.UNIQUE953: 
	movl	$0, %eax
 jmp .UNIQUE954
NOP
NOP
NOP
NOP
NOP
.UNIQUE954: 
	call	printf
.L84:
 jmp .UNIQUE955
NOP
NOP
NOP
NOP
NOP
.UNIQUE955: 
	addq	$1, -104(%rbp)
.L83:
 jmp .UNIQUE956
NOP
NOP
NOP
NOP
NOP
.UNIQUE956: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE957
NOP
NOP
NOP
NOP
NOP
.UNIQUE957: 
	cmpq	-88(%rbp), %rax
 jmp .UNIQUE958
NOP
NOP
NOP
NOP
NOP
.UNIQUE958: 
	jl	.L85
 jmp .UNIQUE959
NOP
NOP
NOP
NOP
NOP
.UNIQUE959: 
	movl	$.LC29, %edi
 jmp .UNIQUE960
NOP
NOP
NOP
NOP
NOP
.UNIQUE960: 
	call	puts
 jmp .UNIQUE961
NOP
NOP
NOP
NOP
NOP
.UNIQUE961: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE962
NOP
NOP
NOP
NOP
NOP
.UNIQUE962: 
	movq	%rax, %rdi
 jmp .UNIQUE963
NOP
NOP
NOP
NOP
NOP
.UNIQUE963: 
	call	print_mem
 jmp .UNIQUE964
NOP
NOP
NOP
NOP
NOP
.UNIQUE964: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE965
NOP
NOP
NOP
NOP
NOP
.UNIQUE965: 
	movq	%rax, %rdi
 jmp .UNIQUE966
NOP
NOP
NOP
NOP
NOP
.UNIQUE966: 
	call	free_secure_mem
 jmp .UNIQUE967
NOP
NOP
NOP
NOP
NOP
.UNIQUE967: 
	movl	$.LC30, %edi
 jmp .UNIQUE968
NOP
NOP
NOP
NOP
NOP
.UNIQUE968: 
	call	puts
 jmp .UNIQUE969
NOP
NOP
NOP
NOP
NOP
.UNIQUE969: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE970
NOP
NOP
NOP
NOP
NOP
.UNIQUE970: 
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
NOP
NOP
 jmp .UNIQUE971
NOP
NOP
NOP
NOP
NOP
.UNIQUE971: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE972
NOP
NOP
NOP
NOP
NOP
.UNIQUE972: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE973
NOP
NOP
NOP
NOP
NOP
.UNIQUE973: 
	subq	$80, %rsp
 jmp .UNIQUE974
NOP
NOP
NOP
NOP
NOP
.UNIQUE974: 
	movl	$0, -60(%rbp)
 jmp .UNIQUE975
NOP
NOP
NOP
NOP
NOP
.UNIQUE975: 
	movq	$foo, -48(%rbp)
 jmp .UNIQUE976
NOP
NOP
NOP
NOP
NOP
.UNIQUE976: 
	movq	$main, -40(%rbp)
 jmp .UNIQUE977
NOP
NOP
NOP
NOP
NOP
.UNIQUE977: 
	movq	$foo2, -32(%rbp)
 jmp .UNIQUE978
NOP
NOP
NOP
NOP
NOP
.UNIQUE978: 
	movq	$find_keyshares, -24(%rbp)
 jmp .UNIQUE979
NOP
NOP
NOP
NOP
NOP
.UNIQUE979: 
	movb	$0, -65(%rbp)
 jmp .UNIQUE980
NOP
NOP
NOP
NOP
NOP
.UNIQUE980: 
	movb	$0, -64(%rbp)
 jmp .UNIQUE981
NOP
NOP
NOP
NOP
NOP
.UNIQUE981: 
	movb	$0, -63(%rbp)
 jmp .UNIQUE982
NOP
NOP
NOP
NOP
NOP
.UNIQUE982: 
	movb	$0, -62(%rbp)
 jmp .UNIQUE983
NOP
NOP
NOP
NOP
NOP
.UNIQUE983: 
	movb	$0, -61(%rbp)
 jmp .UNIQUE984
NOP
NOP
NOP
NOP
NOP
.UNIQUE984: 
	movq	$__executable_start, -16(%rbp)
 jmp .UNIQUE985
NOP
NOP
NOP
NOP
NOP
.UNIQUE985: 
	movq	$__etext, -8(%rbp)
 jmp .UNIQUE986
NOP
NOP
NOP
NOP
NOP
.UNIQUE986: 
	movq	-24(%rbp), %rsi
 jmp .UNIQUE987
NOP
NOP
NOP
NOP
NOP
.UNIQUE987: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE988
NOP
NOP
NOP
NOP
NOP
.UNIQUE988: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE989
NOP
NOP
NOP
NOP
NOP
.UNIQUE989: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE990
NOP
NOP
NOP
NOP
NOP
.UNIQUE990: 
	movq	%rsi, %r8
 jmp .UNIQUE991
NOP
NOP
NOP
NOP
NOP
.UNIQUE991: 
	movq	%rax, %rsi
 jmp .UNIQUE992
NOP
NOP
NOP
NOP
NOP
.UNIQUE992: 
	movl	$.LC31, %edi
 jmp .UNIQUE993
NOP
NOP
NOP
NOP
NOP
.UNIQUE993: 
	movl	$0, %eax
 jmp .UNIQUE994
NOP
NOP
NOP
NOP
NOP
.UNIQUE994: 
	call	printf
 jmp .UNIQUE995
NOP
NOP
NOP
NOP
NOP
.UNIQUE995: 
	movl	$_fini, %esi
 jmp .UNIQUE996
NOP
NOP
NOP
NOP
NOP
.UNIQUE996: 
	movl	$_init, %ecx
 jmp .UNIQUE997
NOP
NOP
NOP
NOP
NOP
.UNIQUE997: 
	movl	$__etext, %edx
 jmp .UNIQUE998
NOP
NOP
NOP
NOP
NOP
.UNIQUE998: 
	movl	$__executable_start, %eax
 jmp .UNIQUE999
NOP
NOP
NOP
NOP
NOP
.UNIQUE999: 
	movq	%rsi, %r8
 jmp .UNIQUE1000
NOP
NOP
NOP
NOP
NOP
.UNIQUE1000: 
	movq	%rax, %rsi
 jmp .UNIQUE1001
NOP
NOP
NOP
NOP
NOP
.UNIQUE1001: 
	movl	$.LC32, %edi
 jmp .UNIQUE1002
NOP
NOP
NOP
NOP
NOP
.UNIQUE1002: 
	movl	$0, %eax
 jmp .UNIQUE1003
NOP
NOP
NOP
NOP
NOP
.UNIQUE1003: 
	call	printf
 jmp .UNIQUE1004
NOP
NOP
NOP
NOP
NOP
.UNIQUE1004: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE1005
NOP
NOP
NOP
NOP
NOP
.UNIQUE1005: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE1006
NOP
NOP
NOP
NOP
NOP
.UNIQUE1006: 
	jmp	.L87
.L89:
 jmp .UNIQUE1007
NOP
NOP
NOP
NOP
NOP
.UNIQUE1007: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1008
NOP
NOP
NOP
NOP
NOP
.UNIQUE1008: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1009
NOP
NOP
NOP
NOP
NOP
.UNIQUE1009: 
	movzbl	%al, %eax
 jmp .UNIQUE1010
NOP
NOP
NOP
NOP
NOP
.UNIQUE1010: 
	movl	%eax, %esi
 jmp .UNIQUE1011
NOP
NOP
NOP
NOP
NOP
.UNIQUE1011: 
	movl	$.LC3, %edi
 jmp .UNIQUE1012
NOP
NOP
NOP
NOP
NOP
.UNIQUE1012: 
	movl	$0, %eax
 jmp .UNIQUE1013
NOP
NOP
NOP
NOP
NOP
.UNIQUE1013: 
	call	printf
 jmp .UNIQUE1014
NOP
NOP
NOP
NOP
NOP
.UNIQUE1014: 
	addq	$1, -56(%rbp)
.L87:
 jmp .UNIQUE1015
NOP
NOP
NOP
NOP
NOP
.UNIQUE1015: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1016
NOP
NOP
NOP
NOP
NOP
.UNIQUE1016: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1017
NOP
NOP
NOP
NOP
NOP
.UNIQUE1017: 
	cmpb	$-61, %al
 jmp .UNIQUE1018
NOP
NOP
NOP
NOP
NOP
.UNIQUE1018: 
	je	.L88
 jmp .UNIQUE1019
NOP
NOP
NOP
NOP
NOP
.UNIQUE1019: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1020
NOP
NOP
NOP
NOP
NOP
.UNIQUE1020: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1021
NOP
NOP
NOP
NOP
NOP
.UNIQUE1021: 
	cmpb	$-53, %al
 jmp .UNIQUE1022
NOP
NOP
NOP
NOP
NOP
.UNIQUE1022: 
	je	.L89
.L88:
 jmp .UNIQUE1023
NOP
NOP
NOP
NOP
NOP
.UNIQUE1023: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1024
NOP
NOP
NOP
NOP
NOP
.UNIQUE1024: 
	subq	$1, %rax
 jmp .UNIQUE1025
NOP
NOP
NOP
NOP
NOP
.UNIQUE1025: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1026
NOP
NOP
NOP
NOP
NOP
.UNIQUE1026: 
	cmpb	$17, %al
 jmp .UNIQUE1027
NOP
NOP
NOP
NOP
NOP
.UNIQUE1027: 
	jne	.L89
 jmp .UNIQUE1028
NOP
NOP
NOP
NOP
NOP
.UNIQUE1028: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1029
NOP
NOP
NOP
NOP
NOP
.UNIQUE1029: 
	subq	$2, %rax
 jmp .UNIQUE1030
NOP
NOP
NOP
NOP
NOP
.UNIQUE1030: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1031
NOP
NOP
NOP
NOP
NOP
.UNIQUE1031: 
	cmpb	$17, %al
 jmp .UNIQUE1032
NOP
NOP
NOP
NOP
NOP
.UNIQUE1032: 
	jne	.L89
 jmp .UNIQUE1033
NOP
NOP
NOP
NOP
NOP
.UNIQUE1033: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1034
NOP
NOP
NOP
NOP
NOP
.UNIQUE1034: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1035
NOP
NOP
NOP
NOP
NOP
.UNIQUE1035: 
	movzbl	%al, %eax
 jmp .UNIQUE1036
NOP
NOP
NOP
NOP
NOP
.UNIQUE1036: 
	movl	%eax, %esi
 jmp .UNIQUE1037
NOP
NOP
NOP
NOP
NOP
.UNIQUE1037: 
	movl	$.LC3, %edi
 jmp .UNIQUE1038
NOP
NOP
NOP
NOP
NOP
.UNIQUE1038: 
	movl	$0, %eax
 jmp .UNIQUE1039
NOP
NOP
NOP
NOP
NOP
.UNIQUE1039: 
	call	printf
 jmp .UNIQUE1040
NOP
NOP
NOP
NOP
NOP
.UNIQUE1040: 
	movl	$.LC33, %edi
 jmp .UNIQUE1041
NOP
NOP
NOP
NOP
NOP
.UNIQUE1041: 
	call	puts
 jmp .UNIQUE1042
NOP
NOP
NOP
NOP
NOP
.UNIQUE1042: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1043
NOP
NOP
NOP
NOP
NOP
.UNIQUE1043: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE1044
NOP
NOP
NOP
NOP
NOP
.UNIQUE1044: 
	jmp	.L90
.L92:
 jmp .UNIQUE1045
NOP
NOP
NOP
NOP
NOP
.UNIQUE1045: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1046
NOP
NOP
NOP
NOP
NOP
.UNIQUE1046: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1047
NOP
NOP
NOP
NOP
NOP
.UNIQUE1047: 
	cmpb	$-21, %al
 jmp .UNIQUE1048
NOP
NOP
NOP
NOP
NOP
.UNIQUE1048: 
	jne	.L91
 jmp .UNIQUE1049
NOP
NOP
NOP
NOP
NOP
.UNIQUE1049: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1050
NOP
NOP
NOP
NOP
NOP
.UNIQUE1050: 
	addq	$1, %rax
 jmp .UNIQUE1051
NOP
NOP
NOP
NOP
NOP
.UNIQUE1051: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1052
NOP
NOP
NOP
NOP
NOP
.UNIQUE1052: 
	cmpb	$5, %al
 jmp .UNIQUE1053
NOP
NOP
NOP
NOP
NOP
.UNIQUE1053: 
	jne	.L91
 jmp .UNIQUE1054
NOP
NOP
NOP
NOP
NOP
.UNIQUE1054: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1055
NOP
NOP
NOP
NOP
NOP
.UNIQUE1055: 
	addq	$2, %rax
 jmp .UNIQUE1056
NOP
NOP
NOP
NOP
NOP
.UNIQUE1056: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1057
NOP
NOP
NOP
NOP
NOP
.UNIQUE1057: 
	movzbl	%al, %eax
 jmp .UNIQUE1058
NOP
NOP
NOP
NOP
NOP
.UNIQUE1058: 
	movl	%eax, %esi
 jmp .UNIQUE1059
NOP
NOP
NOP
NOP
NOP
.UNIQUE1059: 
	movl	$.LC3, %edi
 jmp .UNIQUE1060
NOP
NOP
NOP
NOP
NOP
.UNIQUE1060: 
	movl	$0, %eax
 jmp .UNIQUE1061
NOP
NOP
NOP
NOP
NOP
.UNIQUE1061: 
	call	printf
 jmp .UNIQUE1062
NOP
NOP
NOP
NOP
NOP
.UNIQUE1062: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1063
NOP
NOP
NOP
NOP
NOP
.UNIQUE1063: 
	addq	$2, %rax
 jmp .UNIQUE1064
NOP
NOP
NOP
NOP
NOP
.UNIQUE1064: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1065
NOP
NOP
NOP
NOP
NOP
.UNIQUE1065: 
	movl	%eax, %edx
 jmp .UNIQUE1066
NOP
NOP
NOP
NOP
NOP
.UNIQUE1066: 
	movzbl	-65(%rbp), %eax
 jmp .UNIQUE1067
NOP
NOP
NOP
NOP
NOP
.UNIQUE1067: 
	xorl	%edx, %eax
 jmp .UNIQUE1068
NOP
NOP
NOP
NOP
NOP
.UNIQUE1068: 
	movb	%al, -65(%rbp)
 jmp .UNIQUE1069
NOP
NOP
NOP
NOP
NOP
.UNIQUE1069: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1070
NOP
NOP
NOP
NOP
NOP
.UNIQUE1070: 
	addq	$3, %rax
 jmp .UNIQUE1071
NOP
NOP
NOP
NOP
NOP
.UNIQUE1071: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1072
NOP
NOP
NOP
NOP
NOP
.UNIQUE1072: 
	movl	%eax, %edx
 jmp .UNIQUE1073
NOP
NOP
NOP
NOP
NOP
.UNIQUE1073: 
	movzbl	-64(%rbp), %eax
 jmp .UNIQUE1074
NOP
NOP
NOP
NOP
NOP
.UNIQUE1074: 
	xorl	%edx, %eax
 jmp .UNIQUE1075
NOP
NOP
NOP
NOP
NOP
.UNIQUE1075: 
	movb	%al, -64(%rbp)
 jmp .UNIQUE1076
NOP
NOP
NOP
NOP
NOP
.UNIQUE1076: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1077
NOP
NOP
NOP
NOP
NOP
.UNIQUE1077: 
	addq	$4, %rax
 jmp .UNIQUE1078
NOP
NOP
NOP
NOP
NOP
.UNIQUE1078: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1079
NOP
NOP
NOP
NOP
NOP
.UNIQUE1079: 
	movl	%eax, %edx
 jmp .UNIQUE1080
NOP
NOP
NOP
NOP
NOP
.UNIQUE1080: 
	movzbl	-63(%rbp), %eax
 jmp .UNIQUE1081
NOP
NOP
NOP
NOP
NOP
.UNIQUE1081: 
	xorl	%edx, %eax
 jmp .UNIQUE1082
NOP
NOP
NOP
NOP
NOP
.UNIQUE1082: 
	movb	%al, -63(%rbp)
 jmp .UNIQUE1083
NOP
NOP
NOP
NOP
NOP
.UNIQUE1083: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1084
NOP
NOP
NOP
NOP
NOP
.UNIQUE1084: 
	addq	$5, %rax
 jmp .UNIQUE1085
NOP
NOP
NOP
NOP
NOP
.UNIQUE1085: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1086
NOP
NOP
NOP
NOP
NOP
.UNIQUE1086: 
	movl	%eax, %edx
 jmp .UNIQUE1087
NOP
NOP
NOP
NOP
NOP
.UNIQUE1087: 
	movzbl	-62(%rbp), %eax
 jmp .UNIQUE1088
NOP
NOP
NOP
NOP
NOP
.UNIQUE1088: 
	xorl	%edx, %eax
 jmp .UNIQUE1089
NOP
NOP
NOP
NOP
NOP
.UNIQUE1089: 
	movb	%al, -62(%rbp)
 jmp .UNIQUE1090
NOP
NOP
NOP
NOP
NOP
.UNIQUE1090: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1091
NOP
NOP
NOP
NOP
NOP
.UNIQUE1091: 
	addq	$6, %rax
 jmp .UNIQUE1092
NOP
NOP
NOP
NOP
NOP
.UNIQUE1092: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1093
NOP
NOP
NOP
NOP
NOP
.UNIQUE1093: 
	movl	%eax, %edx
 jmp .UNIQUE1094
NOP
NOP
NOP
NOP
NOP
.UNIQUE1094: 
	movzbl	-61(%rbp), %eax
 jmp .UNIQUE1095
NOP
NOP
NOP
NOP
NOP
.UNIQUE1095: 
	xorl	%edx, %eax
 jmp .UNIQUE1096
NOP
NOP
NOP
NOP
NOP
.UNIQUE1096: 
	movb	%al, -61(%rbp)
 jmp .UNIQUE1097
NOP
NOP
NOP
NOP
NOP
.UNIQUE1097: 
	addl	$1, -60(%rbp)
.L91:
 jmp .UNIQUE1098
NOP
NOP
NOP
NOP
NOP
.UNIQUE1098: 
	addq	$1, -56(%rbp)
.L90:
 jmp .UNIQUE1099
NOP
NOP
NOP
NOP
NOP
.UNIQUE1099: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1100
NOP
NOP
NOP
NOP
NOP
.UNIQUE1100: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE1101
NOP
NOP
NOP
NOP
NOP
.UNIQUE1101: 
	jbe	.L92
 jmp .UNIQUE1102
NOP
NOP
NOP
NOP
NOP
.UNIQUE1102: 
	movl	$.LC34, %edi
 jmp .UNIQUE1103
NOP
NOP
NOP
NOP
NOP
.UNIQUE1103: 
	movl	$0, %eax
 jmp .UNIQUE1104
NOP
NOP
NOP
NOP
NOP
.UNIQUE1104: 
	call	printf
 jmp .UNIQUE1105
NOP
NOP
NOP
NOP
NOP
.UNIQUE1105: 
	movzbl	-65(%rbp), %eax
 jmp .UNIQUE1106
NOP
NOP
NOP
NOP
NOP
.UNIQUE1106: 
	movl	%eax, %esi
 jmp .UNIQUE1107
NOP
NOP
NOP
NOP
NOP
.UNIQUE1107: 
	movl	$.LC35, %edi
 jmp .UNIQUE1108
NOP
NOP
NOP
NOP
NOP
.UNIQUE1108: 
	movl	$0, %eax
 jmp .UNIQUE1109
NOP
NOP
NOP
NOP
NOP
.UNIQUE1109: 
	call	printf
 jmp .UNIQUE1110
NOP
NOP
NOP
NOP
NOP
.UNIQUE1110: 
	movzbl	-64(%rbp), %eax
 jmp .UNIQUE1111
NOP
NOP
NOP
NOP
NOP
.UNIQUE1111: 
	movl	%eax, %esi
 jmp .UNIQUE1112
NOP
NOP
NOP
NOP
NOP
.UNIQUE1112: 
	movl	$.LC36, %edi
 jmp .UNIQUE1113
NOP
NOP
NOP
NOP
NOP
.UNIQUE1113: 
	movl	$0, %eax
 jmp .UNIQUE1114
NOP
NOP
NOP
NOP
NOP
.UNIQUE1114: 
	call	printf
 jmp .UNIQUE1115
NOP
NOP
NOP
NOP
NOP
.UNIQUE1115: 
	movzbl	-63(%rbp), %eax
 jmp .UNIQUE1116
NOP
NOP
NOP
NOP
NOP
.UNIQUE1116: 
	movl	%eax, %esi
 jmp .UNIQUE1117
NOP
NOP
NOP
NOP
NOP
.UNIQUE1117: 
	movl	$.LC37, %edi
 jmp .UNIQUE1118
NOP
NOP
NOP
NOP
NOP
.UNIQUE1118: 
	movl	$0, %eax
 jmp .UNIQUE1119
NOP
NOP
NOP
NOP
NOP
.UNIQUE1119: 
	call	printf
 jmp .UNIQUE1120
NOP
NOP
NOP
NOP
NOP
.UNIQUE1120: 
	movzbl	-62(%rbp), %eax
 jmp .UNIQUE1121
NOP
NOP
NOP
NOP
NOP
.UNIQUE1121: 
	movl	%eax, %esi
 jmp .UNIQUE1122
NOP
NOP
NOP
NOP
NOP
.UNIQUE1122: 
	movl	$.LC38, %edi
 jmp .UNIQUE1123
NOP
NOP
NOP
NOP
NOP
.UNIQUE1123: 
	movl	$0, %eax
 jmp .UNIQUE1124
NOP
NOP
NOP
NOP
NOP
.UNIQUE1124: 
	call	printf
 jmp .UNIQUE1125
NOP
NOP
NOP
NOP
NOP
.UNIQUE1125: 
	movzbl	-61(%rbp), %eax
 jmp .UNIQUE1126
NOP
NOP
NOP
NOP
NOP
.UNIQUE1126: 
	movl	%eax, %esi
 jmp .UNIQUE1127
NOP
NOP
NOP
NOP
NOP
.UNIQUE1127: 
	movl	$.LC39, %edi
 jmp .UNIQUE1128
NOP
NOP
NOP
NOP
NOP
.UNIQUE1128: 
	movl	$0, %eax
 jmp .UNIQUE1129
NOP
NOP
NOP
NOP
NOP
.UNIQUE1129: 
	call	printf
 jmp .UNIQUE1130
NOP
NOP
NOP
NOP
NOP
.UNIQUE1130: 
	nop
 jmp .UNIQUE1131
NOP
NOP
NOP
NOP
NOP
.UNIQUE1131: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1132
NOP
NOP
NOP
NOP
NOP
.UNIQUE1132: 
	ret
	.cfi_endproc
.LFE24:
	.size	find_keyshares, .-find_keyshares
	.globl	foo
	.type	foo, @function
foo:
.LFB25:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1133
NOP
NOP
NOP
NOP
NOP
.UNIQUE1133: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1134
NOP
NOP
NOP
NOP
NOP
.UNIQUE1134: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1135
NOP
NOP
NOP
NOP
NOP
.UNIQUE1135: 
	movl	%edi, -20(%rbp)
 jmp .UNIQUE1136
NOP
NOP
NOP
NOP
NOP
.UNIQUE1136: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE1137
NOP
NOP
NOP
NOP
NOP
.UNIQUE1137: 
	addl	$2, %eax
 jmp .UNIQUE1138
NOP
NOP
NOP
NOP
NOP
.UNIQUE1138: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE1139
NOP
NOP
NOP
NOP
NOP
.UNIQUE1139: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE1140
NOP
NOP
NOP
NOP
NOP
.UNIQUE1140: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1141
NOP
NOP
NOP
NOP
NOP
.UNIQUE1141: 
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
NOP
NOP
 jmp .UNIQUE1142
NOP
NOP
NOP
NOP
NOP
.UNIQUE1142: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1143
NOP
NOP
NOP
NOP
NOP
.UNIQUE1143: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1144
NOP
NOP
NOP
NOP
NOP
.UNIQUE1144: 
	subq	$48, %rsp
 jmp .UNIQUE1145
NOP
NOP
NOP
NOP
NOP
.UNIQUE1145: 
	movq	%fs:40, %rax
 jmp .UNIQUE1146
NOP
NOP
NOP
NOP
NOP
.UNIQUE1146: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1147
NOP
NOP
NOP
NOP
NOP
.UNIQUE1147: 
	xorl	%eax, %eax
 jmp .UNIQUE1148
NOP
NOP
NOP
NOP
NOP
.UNIQUE1148: 
	movl	$1, -48(%rbp)
 jmp .UNIQUE1149
NOP
NOP
NOP
NOP
NOP
.UNIQUE1149: 
	movl	$2, -40(%rbp)
 jmp .UNIQUE1150
NOP
NOP
NOP
NOP
NOP
.UNIQUE1150: 
	addl	$1, -40(%rbp)
 jmp .UNIQUE1151
NOP
NOP
NOP
NOP
NOP
.UNIQUE1151: 
	addl	$1, -40(%rbp)
 jmp .UNIQUE1152
NOP
NOP
NOP
NOP
NOP
.UNIQUE1152: 
	subl	$1, -40(%rbp)
 jmp .UNIQUE1153
NOP
NOP
NOP
NOP
NOP
.UNIQUE1153: 
	movl	-40(%rbp), %eax
 jmp .UNIQUE1154
NOP
NOP
NOP
NOP
NOP
.UNIQUE1154: 
	addl	%eax, -48(%rbp)
 jmp .UNIQUE1155
NOP
NOP
NOP
NOP
NOP
.UNIQUE1155: 
	addl	$2, -48(%rbp)
 jmp .UNIQUE1156
NOP
NOP
NOP
NOP
NOP
.UNIQUE1156: 
	addl	$1, -40(%rbp)
 jmp .UNIQUE1157
NOP
NOP
NOP
NOP
NOP
.UNIQUE1157: 
	movl	$1, -44(%rbp)
 jmp .UNIQUE1158
NOP
NOP
NOP
NOP
NOP
.UNIQUE1158: 
	jmp	.L97
.L98:
 jmp .UNIQUE1159
NOP
NOP
NOP
NOP
NOP
.UNIQUE1159: 
	movl	-40(%rbp), %eax
 jmp .UNIQUE1160
NOP
NOP
NOP
NOP
NOP
.UNIQUE1160: 
	addl	%eax, -48(%rbp)
 jmp .UNIQUE1161
NOP
NOP
NOP
NOP
NOP
.UNIQUE1161: 
	addl	$1, -44(%rbp)
.L97:
 jmp .UNIQUE1162
NOP
NOP
NOP
NOP
NOP
.UNIQUE1162: 
	cmpl	$500000000, -44(%rbp)
 jmp .UNIQUE1163
NOP
NOP
NOP
NOP
NOP
.UNIQUE1163: 
	jle	.L98
 jmp .UNIQUE1164
NOP
NOP
NOP
NOP
NOP
.UNIQUE1164: 
	movl	-48(%rbp), %eax
 jmp .UNIQUE1165
NOP
NOP
NOP
NOP
NOP
.UNIQUE1165: 
	movl	%eax, %esi
 jmp .UNIQUE1166
NOP
NOP
NOP
NOP
NOP
.UNIQUE1166: 
	movl	$.LC40, %edi
 jmp .UNIQUE1167
NOP
NOP
NOP
NOP
NOP
.UNIQUE1167: 
	movl	$0, %eax
 jmp .UNIQUE1168
NOP
NOP
NOP
NOP
NOP
.UNIQUE1168: 
	call	printf
 jmp .UNIQUE1169
NOP
NOP
NOP
NOP
NOP
.UNIQUE1169: 
	movl	$5, %edi
 jmp .UNIQUE1170
NOP
NOP
NOP
NOP
NOP
.UNIQUE1170: 
	call	foo
 jmp .UNIQUE1171
NOP
NOP
NOP
NOP
NOP
.UNIQUE1171: 
	movl	%eax, -36(%rbp)
 jmp .UNIQUE1172
NOP
NOP
NOP
NOP
NOP
.UNIQUE1172: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE1173
NOP
NOP
NOP
NOP
NOP
.UNIQUE1173: 
	movl	%eax, %edi
 jmp .UNIQUE1174
NOP
NOP
NOP
NOP
NOP
.UNIQUE1174: 
	call	foo2
 jmp .UNIQUE1175
NOP
NOP
NOP
NOP
NOP
.UNIQUE1175: 
	movl	%eax, -36(%rbp)
 jmp .UNIQUE1176
NOP
NOP
NOP
NOP
NOP
.UNIQUE1176: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE1177
NOP
NOP
NOP
NOP
NOP
.UNIQUE1177: 
	movl	%eax, %esi
 jmp .UNIQUE1178
NOP
NOP
NOP
NOP
NOP
.UNIQUE1178: 
	movl	$.LC41, %edi
 jmp .UNIQUE1179
NOP
NOP
NOP
NOP
NOP
.UNIQUE1179: 
	movl	$0, %eax
 jmp .UNIQUE1180
NOP
NOP
NOP
NOP
NOP
.UNIQUE1180: 
	call	printf
 jmp .UNIQUE1181
NOP
NOP
NOP
NOP
NOP
.UNIQUE1181: 
	movl	$main, %esi
 jmp .UNIQUE1182
NOP
NOP
NOP
NOP
NOP
.UNIQUE1182: 
	movl	$.LC42, %edi
 jmp .UNIQUE1183
NOP
NOP
NOP
NOP
NOP
.UNIQUE1183: 
	movl	$0, %eax
 jmp .UNIQUE1184
NOP
NOP
NOP
NOP
NOP
.UNIQUE1184: 
	call	printf
 jmp .UNIQUE1185
NOP
NOP
NOP
NOP
NOP
.UNIQUE1185: 
	movl	$0, %eax
 jmp .UNIQUE1186
NOP
NOP
NOP
NOP
NOP
.UNIQUE1186: 
	call	mem_test
 jmp .UNIQUE1187
NOP
NOP
NOP
NOP
NOP
.UNIQUE1187: 
	movl	$0, %eax
 jmp .UNIQUE1188
NOP
NOP
NOP
NOP
NOP
.UNIQUE1188: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1189
NOP
NOP
NOP
NOP
NOP
.UNIQUE1189: 
	xorq	%fs:40, %rdx
 jmp .UNIQUE1190
NOP
NOP
NOP
NOP
NOP
.UNIQUE1190: 
	je	.L100
 jmp .UNIQUE1191
NOP
NOP
NOP
NOP
NOP
.UNIQUE1191: 
	call	__stack_chk_fail
.L100:
 jmp .UNIQUE1192
NOP
NOP
NOP
NOP
NOP
.UNIQUE1192: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1193
NOP
NOP
NOP
NOP
NOP
.UNIQUE1193: 
	ret
	.cfi_endproc
.LFE26:
	.size	main, .-main
	.globl	foo2
	.type	foo2, @function
foo2:
.LFB27:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1194
NOP
NOP
NOP
NOP
NOP
.UNIQUE1194: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1195
NOP
NOP
NOP
NOP
NOP
.UNIQUE1195: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1196
NOP
NOP
NOP
NOP
NOP
.UNIQUE1196: 
	movl	%edi, -20(%rbp)
 jmp .UNIQUE1197
NOP
NOP
NOP
NOP
NOP
.UNIQUE1197: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE1198
NOP
NOP
NOP
NOP
NOP
.UNIQUE1198: 
	addl	$3, %eax
 jmp .UNIQUE1199
NOP
NOP
NOP
NOP
NOP
.UNIQUE1199: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE1200
NOP
NOP
NOP
NOP
NOP
.UNIQUE1200: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE1201
NOP
NOP
NOP
NOP
NOP
.UNIQUE1201: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1202
NOP
NOP
NOP
NOP
NOP
.UNIQUE1202: 
	ret
	.cfi_endproc
.LFE27:
	.size	foo2, .-foo2
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.1) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
