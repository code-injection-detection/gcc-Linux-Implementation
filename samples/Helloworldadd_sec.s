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
	.globl	set_secure_data
	.type	set_secure_data, @function
set_secure_data:
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
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE370
NOP
NOP
NOP
NOP
NOP
.UNIQUE370: 
	movq	%rsi, -80(%rbp)
 jmp .UNIQUE371
NOP
NOP
NOP
NOP
NOP
.UNIQUE371: 
	movq	%rdx, -88(%rbp)
 jmp .UNIQUE372
NOP
NOP
NOP
NOP
NOP
.UNIQUE372: 
	movl	%ecx, -92(%rbp)
 jmp .UNIQUE373
NOP
NOP
NOP
NOP
NOP
.UNIQUE373: 
	movq	%r8, -104(%rbp)
 jmp .UNIQUE374
NOP
NOP
NOP
NOP
NOP
.UNIQUE374: 
	movq	$0, -24(%rbp)
 jmp .UNIQUE375
NOP
NOP
NOP
NOP
NOP
.UNIQUE375: 
	movl	$0, -60(%rbp)
 jmp .UNIQUE376
NOP
NOP
NOP
NOP
NOP
.UNIQUE376: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE377
NOP
NOP
NOP
NOP
NOP
.UNIQUE377: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE378
NOP
NOP
NOP
NOP
NOP
.UNIQUE378: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE379
NOP
NOP
NOP
NOP
NOP
.UNIQUE379: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE380
NOP
NOP
NOP
NOP
NOP
.UNIQUE380: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE381
NOP
NOP
NOP
NOP
NOP
.UNIQUE381: 
	cmpl	$0, -92(%rbp)
 jmp .UNIQUE382
NOP
NOP
NOP
NOP
NOP
.UNIQUE382: 
	je	.L43
 jmp .UNIQUE383
NOP
NOP
NOP
NOP
NOP
.UNIQUE383: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE384
NOP
NOP
NOP
NOP
NOP
.UNIQUE384: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE385
NOP
NOP
NOP
NOP
NOP
.UNIQUE385: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE386
NOP
NOP
NOP
NOP
NOP
.UNIQUE386: 
	testq	%rax, %rax
 jmp .UNIQUE387
NOP
NOP
NOP
NOP
NOP
.UNIQUE387: 
	cmovs	%rdx, %rax
 jmp .UNIQUE388
NOP
NOP
NOP
NOP
NOP
.UNIQUE388: 
	sarq	$2, %rax
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
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE392
NOP
NOP
NOP
NOP
NOP
.UNIQUE392: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE393
NOP
NOP
NOP
NOP
NOP
.UNIQUE393: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE394
NOP
NOP
NOP
NOP
NOP
.UNIQUE394: 
	cmpq	%rax, %rdx
 jmp .UNIQUE395
NOP
NOP
NOP
NOP
NOP
.UNIQUE395: 
	jne	.L44
 jmp .UNIQUE396
NOP
NOP
NOP
NOP
NOP
.UNIQUE396: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE397
NOP
NOP
NOP
NOP
NOP
.UNIQUE397: 
	movq	%rdx, %rax
 jmp .UNIQUE398
NOP
NOP
NOP
NOP
NOP
.UNIQUE398: 
	salq	$3, %rax
 jmp .UNIQUE399
NOP
NOP
NOP
NOP
NOP
.UNIQUE399: 
	addq	%rdx, %rax
 jmp .UNIQUE400
NOP
NOP
NOP
NOP
NOP
.UNIQUE400: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE401
NOP
NOP
NOP
NOP
NOP
.UNIQUE401: 
	jmp	.L43
.L44:
 jmp .UNIQUE402
NOP
NOP
NOP
NOP
NOP
.UNIQUE402: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE403
NOP
NOP
NOP
NOP
NOP
.UNIQUE403: 
	movq	%rdx, %rax
 jmp .UNIQUE404
NOP
NOP
NOP
NOP
NOP
.UNIQUE404: 
	salq	$3, %rax
 jmp .UNIQUE405
NOP
NOP
NOP
NOP
NOP
.UNIQUE405: 
	addq	%rdx, %rax
 jmp .UNIQUE406
NOP
NOP
NOP
NOP
NOP
.UNIQUE406: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE407
NOP
NOP
NOP
NOP
NOP
.UNIQUE407: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE408
NOP
NOP
NOP
NOP
NOP
.UNIQUE408: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE409
NOP
NOP
NOP
NOP
NOP
.UNIQUE409: 
	movq	%rax, %rdx
 jmp .UNIQUE410
NOP
NOP
NOP
NOP
NOP
.UNIQUE410: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE411
NOP
NOP
NOP
NOP
NOP
.UNIQUE411: 
	movl	$0, %eax
 jmp .UNIQUE412
NOP
NOP
NOP
NOP
NOP
.UNIQUE412: 
	subq	%rcx, %rax
 jmp .UNIQUE413
NOP
NOP
NOP
NOP
NOP
.UNIQUE413: 
	salq	$2, %rax
 jmp .UNIQUE414
NOP
NOP
NOP
NOP
NOP
.UNIQUE414: 
	addq	%rdx, %rax
 jmp .UNIQUE415
NOP
NOP
NOP
NOP
NOP
.UNIQUE415: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE416
NOP
NOP
NOP
NOP
NOP
.UNIQUE416: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE417
NOP
NOP
NOP
NOP
NOP
.UNIQUE417: 
	jmp	.L45
.L47:
 jmp .UNIQUE418
NOP
NOP
NOP
NOP
NOP
.UNIQUE418: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE419
NOP
NOP
NOP
NOP
NOP
.UNIQUE419: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE420
NOP
NOP
NOP
NOP
NOP
.UNIQUE420: 
	addq	%rdx, %rax
 jmp .UNIQUE421
NOP
NOP
NOP
NOP
NOP
.UNIQUE421: 
	movq	%rax, %rdx
 jmp .UNIQUE422
NOP
NOP
NOP
NOP
NOP
.UNIQUE422: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE423
NOP
NOP
NOP
NOP
NOP
.UNIQUE423: 
	addq	%rax, %rdx
 jmp .UNIQUE424
NOP
NOP
NOP
NOP
NOP
.UNIQUE424: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE425
NOP
NOP
NOP
NOP
NOP
.UNIQUE425: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE426
NOP
NOP
NOP
NOP
NOP
.UNIQUE426: 
	addq	%rcx, %rax
 jmp .UNIQUE427
NOP
NOP
NOP
NOP
NOP
.UNIQUE427: 
	movq	%rax, %rcx
 jmp .UNIQUE428
NOP
NOP
NOP
NOP
NOP
.UNIQUE428: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE429
NOP
NOP
NOP
NOP
NOP
.UNIQUE429: 
	addq	%rcx, %rax
 jmp .UNIQUE430
NOP
NOP
NOP
NOP
NOP
.UNIQUE430: 
	movzbl	(%rax), %eax
 jmp .UNIQUE431
NOP
NOP
NOP
NOP
NOP
.UNIQUE431: 
	movb	%al, (%rdx)
 jmp .UNIQUE432
NOP
NOP
NOP
NOP
NOP
.UNIQUE432: 
	addq	$1, -40(%rbp)
.L45:
 jmp .UNIQUE433
NOP
NOP
NOP
NOP
NOP
.UNIQUE433: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE434
NOP
NOP
NOP
NOP
NOP
.UNIQUE434: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE435
NOP
NOP
NOP
NOP
NOP
.UNIQUE435: 
	addq	%rdx, %rax
 jmp .UNIQUE436
NOP
NOP
NOP
NOP
NOP
.UNIQUE436: 
	cmpq	$3, %rax
 jmp .UNIQUE437
NOP
NOP
NOP
NOP
NOP
.UNIQUE437: 
	jg	.L46
 jmp .UNIQUE438
NOP
NOP
NOP
NOP
NOP
.UNIQUE438: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE439
NOP
NOP
NOP
NOP
NOP
.UNIQUE439: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE440
NOP
NOP
NOP
NOP
NOP
.UNIQUE440: 
	addq	%rdx, %rax
 jmp .UNIQUE441
NOP
NOP
NOP
NOP
NOP
.UNIQUE441: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE442
NOP
NOP
NOP
NOP
NOP
.UNIQUE442: 
	jl	.L47
.L46:
 jmp .UNIQUE443
NOP
NOP
NOP
NOP
NOP
.UNIQUE443: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE444
NOP
NOP
NOP
NOP
NOP
.UNIQUE444: 
	addq	%rax, -24(%rbp)
 jmp .UNIQUE445
NOP
NOP
NOP
NOP
NOP
.UNIQUE445: 
	addq	$9, -32(%rbp)
 jmp .UNIQUE446
NOP
NOP
NOP
NOP
NOP
.UNIQUE446: 
	jmp	.L48
.L43:
 jmp .UNIQUE447
NOP
NOP
NOP
NOP
NOP
.UNIQUE447: 
	jmp	.L48
.L53:
 jmp .UNIQUE448
NOP
NOP
NOP
NOP
NOP
.UNIQUE448: 
	cmpl	$0, -60(%rbp)
 jmp .UNIQUE449
NOP
NOP
NOP
NOP
NOP
.UNIQUE449: 
	je	.L49
 jmp .UNIQUE450
NOP
NOP
NOP
NOP
NOP
.UNIQUE450: 
	addq	$5, -56(%rbp)
 jmp .UNIQUE451
NOP
NOP
NOP
NOP
NOP
.UNIQUE451: 
	movl	$0, -60(%rbp)
 jmp .UNIQUE452
NOP
NOP
NOP
NOP
NOP
.UNIQUE452: 
	jmp	.L48
.L49:
 jmp .UNIQUE453
NOP
NOP
NOP
NOP
NOP
.UNIQUE453: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE454
NOP
NOP
NOP
NOP
NOP
.UNIQUE454: 
	jmp	.L50
.L52:
 jmp .UNIQUE455
NOP
NOP
NOP
NOP
NOP
.UNIQUE455: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE456
NOP
NOP
NOP
NOP
NOP
.UNIQUE456: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE457
NOP
NOP
NOP
NOP
NOP
.UNIQUE457: 
	addq	%rdx, %rax
 jmp .UNIQUE458
NOP
NOP
NOP
NOP
NOP
.UNIQUE458: 
	movq	%rax, %rdx
 jmp .UNIQUE459
NOP
NOP
NOP
NOP
NOP
.UNIQUE459: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE460
NOP
NOP
NOP
NOP
NOP
.UNIQUE460: 
	addq	%rax, %rdx
 jmp .UNIQUE461
NOP
NOP
NOP
NOP
NOP
.UNIQUE461: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE462
NOP
NOP
NOP
NOP
NOP
.UNIQUE462: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE463
NOP
NOP
NOP
NOP
NOP
.UNIQUE463: 
	addq	%rcx, %rax
 jmp .UNIQUE464
NOP
NOP
NOP
NOP
NOP
.UNIQUE464: 
	movq	%rax, %rcx
 jmp .UNIQUE465
NOP
NOP
NOP
NOP
NOP
.UNIQUE465: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE466
NOP
NOP
NOP
NOP
NOP
.UNIQUE466: 
	addq	%rcx, %rax
 jmp .UNIQUE467
NOP
NOP
NOP
NOP
NOP
.UNIQUE467: 
	movzbl	(%rax), %eax
 jmp .UNIQUE468
NOP
NOP
NOP
NOP
NOP
.UNIQUE468: 
	movb	%al, (%rdx)
 jmp .UNIQUE469
NOP
NOP
NOP
NOP
NOP
.UNIQUE469: 
	addq	$1, -48(%rbp)
.L50:
 jmp .UNIQUE470
NOP
NOP
NOP
NOP
NOP
.UNIQUE470: 
	cmpq	$3, -48(%rbp)
 jmp .UNIQUE471
NOP
NOP
NOP
NOP
NOP
.UNIQUE471: 
	jg	.L51
 jmp .UNIQUE472
NOP
NOP
NOP
NOP
NOP
.UNIQUE472: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE473
NOP
NOP
NOP
NOP
NOP
.UNIQUE473: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE474
NOP
NOP
NOP
NOP
NOP
.UNIQUE474: 
	addq	%rdx, %rax
 jmp .UNIQUE475
NOP
NOP
NOP
NOP
NOP
.UNIQUE475: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE476
NOP
NOP
NOP
NOP
NOP
.UNIQUE476: 
	jl	.L52
.L51:
 jmp .UNIQUE477
NOP
NOP
NOP
NOP
NOP
.UNIQUE477: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE478
NOP
NOP
NOP
NOP
NOP
.UNIQUE478: 
	addq	%rax, -24(%rbp)
 jmp .UNIQUE479
NOP
NOP
NOP
NOP
NOP
.UNIQUE479: 
	addq	$4, -56(%rbp)
 jmp .UNIQUE480
NOP
NOP
NOP
NOP
NOP
.UNIQUE480: 
	movl	$1, -60(%rbp)
.L48:
 jmp .UNIQUE481
NOP
NOP
NOP
NOP
NOP
.UNIQUE481: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE482
NOP
NOP
NOP
NOP
NOP
.UNIQUE482: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE483
NOP
NOP
NOP
NOP
NOP
.UNIQUE483: 
	jl	.L53
 jmp .UNIQUE484
NOP
NOP
NOP
NOP
NOP
.UNIQUE484: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE485
NOP
NOP
NOP
NOP
NOP
.UNIQUE485: 
	ret
	.cfi_endproc
.LFE9:
	.size	set_secure_data, .-set_secure_data
	.globl	find_useful_chunks
	.type	find_useful_chunks, @function
find_useful_chunks:
.LFB10:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE486
NOP
NOP
NOP
NOP
NOP
.UNIQUE486: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE487
NOP
NOP
NOP
NOP
NOP
.UNIQUE487: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE488
NOP
NOP
NOP
NOP
NOP
.UNIQUE488: 
	movq	%rdi, -40(%rbp)
 jmp .UNIQUE489
NOP
NOP
NOP
NOP
NOP
.UNIQUE489: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE490
NOP
NOP
NOP
NOP
NOP
.UNIQUE490: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE491
NOP
NOP
NOP
NOP
NOP
.UNIQUE491: 
	movq	$5, -16(%rbp)
 jmp .UNIQUE492
NOP
NOP
NOP
NOP
NOP
.UNIQUE492: 
	movq	$4, -8(%rbp)
 jmp .UNIQUE493
NOP
NOP
NOP
NOP
NOP
.UNIQUE493: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE494
NOP
NOP
NOP
NOP
NOP
.UNIQUE494: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE495
NOP
NOP
NOP
NOP
NOP
.UNIQUE495: 
	addq	%rdx, %rax
 jmp .UNIQUE496
NOP
NOP
NOP
NOP
NOP
.UNIQUE496: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE497
NOP
NOP
NOP
NOP
NOP
.UNIQUE497: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE498
NOP
NOP
NOP
NOP
NOP
.UNIQUE498: 
	leaq	(%rdx,%rcx), %rsi
 jmp .UNIQUE499
NOP
NOP
NOP
NOP
NOP
.UNIQUE499: 
	cqto
 jmp .UNIQUE500
NOP
NOP
NOP
NOP
NOP
.UNIQUE500: 
	idivq	%rsi
 jmp .UNIQUE501
NOP
NOP
NOP
NOP
NOP
.UNIQUE501: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE502
NOP
NOP
NOP
NOP
NOP
.UNIQUE502: 
	ret
	.cfi_endproc
.LFE10:
	.size	find_useful_chunks, .-find_useful_chunks
	.globl	init_mem
	.type	init_mem, @function
init_mem:
.LFB11:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE503
NOP
NOP
NOP
NOP
NOP
.UNIQUE503: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE504
NOP
NOP
NOP
NOP
NOP
.UNIQUE504: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE505
NOP
NOP
NOP
NOP
NOP
.UNIQUE505: 
	subq	$16, %rsp
 jmp .UNIQUE506
NOP
NOP
NOP
NOP
NOP
.UNIQUE506: 
	movl	$0, %eax
 jmp .UNIQUE507
NOP
NOP
NOP
NOP
NOP
.UNIQUE507: 
	call	allocate_mem
 jmp .UNIQUE508
NOP
NOP
NOP
NOP
NOP
.UNIQUE508: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE509
NOP
NOP
NOP
NOP
NOP
.UNIQUE509: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE510
NOP
NOP
NOP
NOP
NOP
.UNIQUE510: 
	movq	%rax, %rdi
 jmp .UNIQUE511
NOP
NOP
NOP
NOP
NOP
.UNIQUE511: 
	call	insert_keys_into_mem
 jmp .UNIQUE512
NOP
NOP
NOP
NOP
NOP
.UNIQUE512: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE513
NOP
NOP
NOP
NOP
NOP
.UNIQUE513: 
	movq	%rax, memory_chunk(%rip)
 jmp .UNIQUE514
NOP
NOP
NOP
NOP
NOP
.UNIQUE514: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE515
NOP
NOP
NOP
NOP
NOP
.UNIQUE515: 
	movq	%rax, last_unused_memory(%rip)
 jmp .UNIQUE516
NOP
NOP
NOP
NOP
NOP
.UNIQUE516: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE517
NOP
NOP
NOP
NOP
NOP
.UNIQUE517: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE518
NOP
NOP
NOP
NOP
NOP
.UNIQUE518: 
	ret
	.cfi_endproc
.LFE11:
	.size	init_mem, .-init_mem
	.globl	free_secure_mem
	.type	free_secure_mem, @function
free_secure_mem:
.LFB12:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE519
NOP
NOP
NOP
NOP
NOP
.UNIQUE519: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE520
NOP
NOP
NOP
NOP
NOP
.UNIQUE520: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE521
NOP
NOP
NOP
NOP
NOP
.UNIQUE521: 
	subq	$16, %rsp
 jmp .UNIQUE522
NOP
NOP
NOP
NOP
NOP
.UNIQUE522: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE523
NOP
NOP
NOP
NOP
NOP
.UNIQUE523: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE524
NOP
NOP
NOP
NOP
NOP
.UNIQUE524: 
	movq	%rax, %rdi
 jmp .UNIQUE525
NOP
NOP
NOP
NOP
NOP
.UNIQUE525: 
	call	free
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
.LFE12:
	.size	free_secure_mem, .-free_secure_mem
	.globl	get_char
	.type	get_char, @function
get_char:
.LFB13:
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
	movq	%rsi, -16(%rbp)
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
	movq	-16(%rbp), %rax
 jmp .UNIQUE535
NOP
NOP
NOP
NOP
NOP
.UNIQUE535: 
	movl	$0, %r8d
 jmp .UNIQUE536
NOP
NOP
NOP
NOP
NOP
.UNIQUE536: 
	movl	$0, %ecx
 jmp .UNIQUE537
NOP
NOP
NOP
NOP
NOP
.UNIQUE537: 
	movl	$1, %esi
 jmp .UNIQUE538
NOP
NOP
NOP
NOP
NOP
.UNIQUE538: 
	movq	%rax, %rdi
 jmp .UNIQUE539
NOP
NOP
NOP
NOP
NOP
.UNIQUE539: 
	call	get_secure_data
 jmp .UNIQUE540
NOP
NOP
NOP
NOP
NOP
.UNIQUE540: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE541
NOP
NOP
NOP
NOP
NOP
.UNIQUE541: 
	ret
	.cfi_endproc
.LFE13:
	.size	get_char, .-get_char
	.globl	get_int
	.type	get_int, @function
get_int:
.LFB14:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE542
NOP
NOP
NOP
NOP
NOP
.UNIQUE542: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE543
NOP
NOP
NOP
NOP
NOP
.UNIQUE543: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE544
NOP
NOP
NOP
NOP
NOP
.UNIQUE544: 
	subq	$16, %rsp
 jmp .UNIQUE545
NOP
NOP
NOP
NOP
NOP
.UNIQUE545: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE546
NOP
NOP
NOP
NOP
NOP
.UNIQUE546: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE547
NOP
NOP
NOP
NOP
NOP
.UNIQUE547: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE548
NOP
NOP
NOP
NOP
NOP
.UNIQUE548: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE549
NOP
NOP
NOP
NOP
NOP
.UNIQUE549: 
	movl	$0, %r8d
 jmp .UNIQUE550
NOP
NOP
NOP
NOP
NOP
.UNIQUE550: 
	movl	$0, %ecx
 jmp .UNIQUE551
NOP
NOP
NOP
NOP
NOP
.UNIQUE551: 
	movl	$4, %esi
 jmp .UNIQUE552
NOP
NOP
NOP
NOP
NOP
.UNIQUE552: 
	movq	%rax, %rdi
 jmp .UNIQUE553
NOP
NOP
NOP
NOP
NOP
.UNIQUE553: 
	call	get_secure_data
 jmp .UNIQUE554
NOP
NOP
NOP
NOP
NOP
.UNIQUE554: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE555
NOP
NOP
NOP
NOP
NOP
.UNIQUE555: 
	ret
	.cfi_endproc
.LFE14:
	.size	get_int, .-get_int
	.globl	get_long_int
	.type	get_long_int, @function
get_long_int:
.LFB15:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE556
NOP
NOP
NOP
NOP
NOP
.UNIQUE556: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE557
NOP
NOP
NOP
NOP
NOP
.UNIQUE557: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE558
NOP
NOP
NOP
NOP
NOP
.UNIQUE558: 
	subq	$16, %rsp
 jmp .UNIQUE559
NOP
NOP
NOP
NOP
NOP
.UNIQUE559: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE560
NOP
NOP
NOP
NOP
NOP
.UNIQUE560: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE561
NOP
NOP
NOP
NOP
NOP
.UNIQUE561: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE562
NOP
NOP
NOP
NOP
NOP
.UNIQUE562: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE563
NOP
NOP
NOP
NOP
NOP
.UNIQUE563: 
	movl	$0, %r8d
 jmp .UNIQUE564
NOP
NOP
NOP
NOP
NOP
.UNIQUE564: 
	movl	$0, %ecx
 jmp .UNIQUE565
NOP
NOP
NOP
NOP
NOP
.UNIQUE565: 
	movl	$8, %esi
 jmp .UNIQUE566
NOP
NOP
NOP
NOP
NOP
.UNIQUE566: 
	movq	%rax, %rdi
 jmp .UNIQUE567
NOP
NOP
NOP
NOP
NOP
.UNIQUE567: 
	call	get_secure_data
 jmp .UNIQUE568
NOP
NOP
NOP
NOP
NOP
.UNIQUE568: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE569
NOP
NOP
NOP
NOP
NOP
.UNIQUE569: 
	ret
	.cfi_endproc
.LFE15:
	.size	get_long_int, .-get_long_int
	.globl	get_float
	.type	get_float, @function
get_float:
.LFB16:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE570
NOP
NOP
NOP
NOP
NOP
.UNIQUE570: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE571
NOP
NOP
NOP
NOP
NOP
.UNIQUE571: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE572
NOP
NOP
NOP
NOP
NOP
.UNIQUE572: 
	subq	$16, %rsp
 jmp .UNIQUE573
NOP
NOP
NOP
NOP
NOP
.UNIQUE573: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE574
NOP
NOP
NOP
NOP
NOP
.UNIQUE574: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE575
NOP
NOP
NOP
NOP
NOP
.UNIQUE575: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE576
NOP
NOP
NOP
NOP
NOP
.UNIQUE576: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE577
NOP
NOP
NOP
NOP
NOP
.UNIQUE577: 
	movl	$0, %r8d
 jmp .UNIQUE578
NOP
NOP
NOP
NOP
NOP
.UNIQUE578: 
	movl	$0, %ecx
 jmp .UNIQUE579
NOP
NOP
NOP
NOP
NOP
.UNIQUE579: 
	movl	$4, %esi
 jmp .UNIQUE580
NOP
NOP
NOP
NOP
NOP
.UNIQUE580: 
	movq	%rax, %rdi
 jmp .UNIQUE581
NOP
NOP
NOP
NOP
NOP
.UNIQUE581: 
	call	get_secure_data
 jmp .UNIQUE582
NOP
NOP
NOP
NOP
NOP
.UNIQUE582: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE583
NOP
NOP
NOP
NOP
NOP
.UNIQUE583: 
	ret
	.cfi_endproc
.LFE16:
	.size	get_float, .-get_float
	.globl	get_double
	.type	get_double, @function
get_double:
.LFB17:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE584
NOP
NOP
NOP
NOP
NOP
.UNIQUE584: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE585
NOP
NOP
NOP
NOP
NOP
.UNIQUE585: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE586
NOP
NOP
NOP
NOP
NOP
.UNIQUE586: 
	subq	$16, %rsp
 jmp .UNIQUE587
NOP
NOP
NOP
NOP
NOP
.UNIQUE587: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE588
NOP
NOP
NOP
NOP
NOP
.UNIQUE588: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE589
NOP
NOP
NOP
NOP
NOP
.UNIQUE589: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE590
NOP
NOP
NOP
NOP
NOP
.UNIQUE590: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE591
NOP
NOP
NOP
NOP
NOP
.UNIQUE591: 
	movl	$0, %r8d
 jmp .UNIQUE592
NOP
NOP
NOP
NOP
NOP
.UNIQUE592: 
	movl	$0, %ecx
 jmp .UNIQUE593
NOP
NOP
NOP
NOP
NOP
.UNIQUE593: 
	movl	$8, %esi
 jmp .UNIQUE594
NOP
NOP
NOP
NOP
NOP
.UNIQUE594: 
	movq	%rax, %rdi
 jmp .UNIQUE595
NOP
NOP
NOP
NOP
NOP
.UNIQUE595: 
	call	get_secure_data
 jmp .UNIQUE596
NOP
NOP
NOP
NOP
NOP
.UNIQUE596: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE597
NOP
NOP
NOP
NOP
NOP
.UNIQUE597: 
	ret
	.cfi_endproc
.LFE17:
	.size	get_double, .-get_double
	.globl	get_array_element
	.type	get_array_element, @function
get_array_element:
.LFB18:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE598
NOP
NOP
NOP
NOP
NOP
.UNIQUE598: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE599
NOP
NOP
NOP
NOP
NOP
.UNIQUE599: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE600
NOP
NOP
NOP
NOP
NOP
.UNIQUE600: 
	subq	$32, %rsp
 jmp .UNIQUE601
NOP
NOP
NOP
NOP
NOP
.UNIQUE601: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE602
NOP
NOP
NOP
NOP
NOP
.UNIQUE602: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE603
NOP
NOP
NOP
NOP
NOP
.UNIQUE603: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE604
NOP
NOP
NOP
NOP
NOP
.UNIQUE604: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE605
NOP
NOP
NOP
NOP
NOP
.UNIQUE605: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE606
NOP
NOP
NOP
NOP
NOP
.UNIQUE606: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE607
NOP
NOP
NOP
NOP
NOP
.UNIQUE607: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE608
NOP
NOP
NOP
NOP
NOP
.UNIQUE608: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE609
NOP
NOP
NOP
NOP
NOP
.UNIQUE609: 
	movq	%rcx, %r8
 jmp .UNIQUE610
NOP
NOP
NOP
NOP
NOP
.UNIQUE610: 
	movl	$1, %ecx
 jmp .UNIQUE611
NOP
NOP
NOP
NOP
NOP
.UNIQUE611: 
	movq	%rax, %rdi
 jmp .UNIQUE612
NOP
NOP
NOP
NOP
NOP
.UNIQUE612: 
	call	get_secure_data
 jmp .UNIQUE613
NOP
NOP
NOP
NOP
NOP
.UNIQUE613: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE614
NOP
NOP
NOP
NOP
NOP
.UNIQUE614: 
	ret
	.cfi_endproc
.LFE18:
	.size	get_array_element, .-get_array_element
	.globl	set_char
	.type	set_char, @function
set_char:
.LFB19:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE615
NOP
NOP
NOP
NOP
NOP
.UNIQUE615: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE616
NOP
NOP
NOP
NOP
NOP
.UNIQUE616: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE617
NOP
NOP
NOP
NOP
NOP
.UNIQUE617: 
	subq	$16, %rsp
 jmp .UNIQUE618
NOP
NOP
NOP
NOP
NOP
.UNIQUE618: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE619
NOP
NOP
NOP
NOP
NOP
.UNIQUE619: 
	movl	%esi, %eax
 jmp .UNIQUE620
NOP
NOP
NOP
NOP
NOP
.UNIQUE620: 
	movb	%al, -12(%rbp)
 jmp .UNIQUE621
NOP
NOP
NOP
NOP
NOP
.UNIQUE621: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE622
NOP
NOP
NOP
NOP
NOP
.UNIQUE622: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE623
NOP
NOP
NOP
NOP
NOP
.UNIQUE623: 
	movq	%rax, %rsi
 jmp .UNIQUE624
NOP
NOP
NOP
NOP
NOP
.UNIQUE624: 
	movl	$1, %edi
 jmp .UNIQUE625
NOP
NOP
NOP
NOP
NOP
.UNIQUE625: 
	call	insert_data_into_mem
 jmp .UNIQUE626
NOP
NOP
NOP
NOP
NOP
.UNIQUE626: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE627
NOP
NOP
NOP
NOP
NOP
.UNIQUE627: 
	ret
	.cfi_endproc
.LFE19:
	.size	set_char, .-set_char
	.globl	set_int
	.type	set_int, @function
set_int:
.LFB20:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE628
NOP
NOP
NOP
NOP
NOP
.UNIQUE628: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE629
NOP
NOP
NOP
NOP
NOP
.UNIQUE629: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE630
NOP
NOP
NOP
NOP
NOP
.UNIQUE630: 
	subq	$16, %rsp
 jmp .UNIQUE631
NOP
NOP
NOP
NOP
NOP
.UNIQUE631: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE632
NOP
NOP
NOP
NOP
NOP
.UNIQUE632: 
	movl	%esi, -12(%rbp)
 jmp .UNIQUE633
NOP
NOP
NOP
NOP
NOP
.UNIQUE633: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE634
NOP
NOP
NOP
NOP
NOP
.UNIQUE634: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE635
NOP
NOP
NOP
NOP
NOP
.UNIQUE635: 
	movq	%rax, %rsi
 jmp .UNIQUE636
NOP
NOP
NOP
NOP
NOP
.UNIQUE636: 
	movl	$4, %edi
 jmp .UNIQUE637
NOP
NOP
NOP
NOP
NOP
.UNIQUE637: 
	call	insert_data_into_mem
 jmp .UNIQUE638
NOP
NOP
NOP
NOP
NOP
.UNIQUE638: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE639
NOP
NOP
NOP
NOP
NOP
.UNIQUE639: 
	ret
	.cfi_endproc
.LFE20:
	.size	set_int, .-set_int
	.globl	set_long_int
	.type	set_long_int, @function
set_long_int:
.LFB21:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE640
NOP
NOP
NOP
NOP
NOP
.UNIQUE640: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE641
NOP
NOP
NOP
NOP
NOP
.UNIQUE641: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE642
NOP
NOP
NOP
NOP
NOP
.UNIQUE642: 
	subq	$16, %rsp
 jmp .UNIQUE643
NOP
NOP
NOP
NOP
NOP
.UNIQUE643: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE644
NOP
NOP
NOP
NOP
NOP
.UNIQUE644: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE645
NOP
NOP
NOP
NOP
NOP
.UNIQUE645: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE646
NOP
NOP
NOP
NOP
NOP
.UNIQUE646: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE647
NOP
NOP
NOP
NOP
NOP
.UNIQUE647: 
	movq	%rax, %rsi
 jmp .UNIQUE648
NOP
NOP
NOP
NOP
NOP
.UNIQUE648: 
	movl	$8, %edi
 jmp .UNIQUE649
NOP
NOP
NOP
NOP
NOP
.UNIQUE649: 
	call	insert_data_into_mem
 jmp .UNIQUE650
NOP
NOP
NOP
NOP
NOP
.UNIQUE650: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE651
NOP
NOP
NOP
NOP
NOP
.UNIQUE651: 
	ret
	.cfi_endproc
.LFE21:
	.size	set_long_int, .-set_long_int
	.globl	set_float
	.type	set_float, @function
set_float:
.LFB22:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE652
NOP
NOP
NOP
NOP
NOP
.UNIQUE652: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE653
NOP
NOP
NOP
NOP
NOP
.UNIQUE653: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE654
NOP
NOP
NOP
NOP
NOP
.UNIQUE654: 
	subq	$16, %rsp
 jmp .UNIQUE655
NOP
NOP
NOP
NOP
NOP
.UNIQUE655: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE656
NOP
NOP
NOP
NOP
NOP
.UNIQUE656: 
	movss	%xmm0, -12(%rbp)
 jmp .UNIQUE657
NOP
NOP
NOP
NOP
NOP
.UNIQUE657: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE658
NOP
NOP
NOP
NOP
NOP
.UNIQUE658: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE659
NOP
NOP
NOP
NOP
NOP
.UNIQUE659: 
	movq	%rax, %rsi
 jmp .UNIQUE660
NOP
NOP
NOP
NOP
NOP
.UNIQUE660: 
	movl	$4, %edi
 jmp .UNIQUE661
NOP
NOP
NOP
NOP
NOP
.UNIQUE661: 
	call	insert_data_into_mem
 jmp .UNIQUE662
NOP
NOP
NOP
NOP
NOP
.UNIQUE662: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE663
NOP
NOP
NOP
NOP
NOP
.UNIQUE663: 
	ret
	.cfi_endproc
.LFE22:
	.size	set_float, .-set_float
	.globl	set_double
	.type	set_double, @function
set_double:
.LFB23:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE664
NOP
NOP
NOP
NOP
NOP
.UNIQUE664: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE665
NOP
NOP
NOP
NOP
NOP
.UNIQUE665: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE666
NOP
NOP
NOP
NOP
NOP
.UNIQUE666: 
	subq	$16, %rsp
 jmp .UNIQUE667
NOP
NOP
NOP
NOP
NOP
.UNIQUE667: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE668
NOP
NOP
NOP
NOP
NOP
.UNIQUE668: 
	movsd	%xmm0, -16(%rbp)
 jmp .UNIQUE669
NOP
NOP
NOP
NOP
NOP
.UNIQUE669: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE670
NOP
NOP
NOP
NOP
NOP
.UNIQUE670: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE671
NOP
NOP
NOP
NOP
NOP
.UNIQUE671: 
	movq	%rax, %rsi
 jmp .UNIQUE672
NOP
NOP
NOP
NOP
NOP
.UNIQUE672: 
	movl	$8, %edi
 jmp .UNIQUE673
NOP
NOP
NOP
NOP
NOP
.UNIQUE673: 
	call	insert_data_into_mem
 jmp .UNIQUE674
NOP
NOP
NOP
NOP
NOP
.UNIQUE674: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE675
NOP
NOP
NOP
NOP
NOP
.UNIQUE675: 
	ret
	.cfi_endproc
.LFE23:
	.size	set_double, .-set_double
	.globl	set_array_element
	.type	set_array_element, @function
set_array_element:
.LFB24:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE676
NOP
NOP
NOP
NOP
NOP
.UNIQUE676: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE677
NOP
NOP
NOP
NOP
NOP
.UNIQUE677: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE678
NOP
NOP
NOP
NOP
NOP
.UNIQUE678: 
	subq	$32, %rsp
 jmp .UNIQUE679
NOP
NOP
NOP
NOP
NOP
.UNIQUE679: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE680
NOP
NOP
NOP
NOP
NOP
.UNIQUE680: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE681
NOP
NOP
NOP
NOP
NOP
.UNIQUE681: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE682
NOP
NOP
NOP
NOP
NOP
.UNIQUE682: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE683
NOP
NOP
NOP
NOP
NOP
.UNIQUE683: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE684
NOP
NOP
NOP
NOP
NOP
.UNIQUE684: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE685
NOP
NOP
NOP
NOP
NOP
.UNIQUE685: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE686
NOP
NOP
NOP
NOP
NOP
.UNIQUE686: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE687
NOP
NOP
NOP
NOP
NOP
.UNIQUE687: 
	movq	%rcx, %r8
 jmp .UNIQUE688
NOP
NOP
NOP
NOP
NOP
.UNIQUE688: 
	movl	$1, %ecx
 jmp .UNIQUE689
NOP
NOP
NOP
NOP
NOP
.UNIQUE689: 
	movq	%rax, %rdi
 jmp .UNIQUE690
NOP
NOP
NOP
NOP
NOP
.UNIQUE690: 
	call	set_secure_data
 jmp .UNIQUE691
NOP
NOP
NOP
NOP
NOP
.UNIQUE691: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE692
NOP
NOP
NOP
NOP
NOP
.UNIQUE692: 
	ret
	.cfi_endproc
.LFE24:
	.size	set_array_element, .-set_array_element
	.globl	insert_data_into_normal_array
	.type	insert_data_into_normal_array, @function
insert_data_into_normal_array:
.LFB25:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE693
NOP
NOP
NOP
NOP
NOP
.UNIQUE693: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE694
NOP
NOP
NOP
NOP
NOP
.UNIQUE694: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE695
NOP
NOP
NOP
NOP
NOP
.UNIQUE695: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE696
NOP
NOP
NOP
NOP
NOP
.UNIQUE696: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE697
NOP
NOP
NOP
NOP
NOP
.UNIQUE697: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE698
NOP
NOP
NOP
NOP
NOP
.UNIQUE698: 
	movl	$0, -4(%rbp)
 jmp .UNIQUE699
NOP
NOP
NOP
NOP
NOP
.UNIQUE699: 
	jmp	.L72
.L73:
 jmp .UNIQUE700
NOP
NOP
NOP
NOP
NOP
.UNIQUE700: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE701
NOP
NOP
NOP
NOP
NOP
.UNIQUE701: 
	movslq	%eax, %rdx
 jmp .UNIQUE702
NOP
NOP
NOP
NOP
NOP
.UNIQUE702: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE703
NOP
NOP
NOP
NOP
NOP
.UNIQUE703: 
	addq	%rax, %rdx
 jmp .UNIQUE704
NOP
NOP
NOP
NOP
NOP
.UNIQUE704: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE705
NOP
NOP
NOP
NOP
NOP
.UNIQUE705: 
	movslq	%eax, %rcx
 jmp .UNIQUE706
NOP
NOP
NOP
NOP
NOP
.UNIQUE706: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE707
NOP
NOP
NOP
NOP
NOP
.UNIQUE707: 
	addq	%rcx, %rax
 jmp .UNIQUE708
NOP
NOP
NOP
NOP
NOP
.UNIQUE708: 
	movzbl	(%rax), %eax
 jmp .UNIQUE709
NOP
NOP
NOP
NOP
NOP
.UNIQUE709: 
	movb	%al, (%rdx)
 jmp .UNIQUE710
NOP
NOP
NOP
NOP
NOP
.UNIQUE710: 
	addl	$1, -4(%rbp)
.L72:
 jmp .UNIQUE711
NOP
NOP
NOP
NOP
NOP
.UNIQUE711: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE712
NOP
NOP
NOP
NOP
NOP
.UNIQUE712: 
	cltq
 jmp .UNIQUE713
NOP
NOP
NOP
NOP
NOP
.UNIQUE713: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE714
NOP
NOP
NOP
NOP
NOP
.UNIQUE714: 
	jl	.L73
 jmp .UNIQUE715
NOP
NOP
NOP
NOP
NOP
.UNIQUE715: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE716
NOP
NOP
NOP
NOP
NOP
.UNIQUE716: 
	ret
	.cfi_endproc
.LFE25:
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
	.string	"Got %c\n"
.LC25:
	.string	"Got %ld\n"
.LC27:
	.string	"Got %lf\n"
	.align 8
.LC28:
	.string	"Array wrapper function testing"
.LC32:
	.string	"array index 2 is %lf\n"
.LC33:
	.string	"array index 3 is %lf\n"
.LC34:
	.string	"\n\n"
	.align 8
.LC35:
	.string	"After data retrieval, print mem"
.LC36:
	.string	"Mem test done"
	.text
	.globl	mem_test
	.type	mem_test, @function
mem_test:
.LFB26:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE717
NOP
NOP
NOP
NOP
NOP
.UNIQUE717: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE718
NOP
NOP
NOP
NOP
NOP
.UNIQUE718: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE719
NOP
NOP
NOP
NOP
NOP
.UNIQUE719: 
	subq	$176, %rsp
 jmp .UNIQUE720
NOP
NOP
NOP
NOP
NOP
.UNIQUE720: 
	movq	$20, -104(%rbp)
 jmp .UNIQUE721
NOP
NOP
NOP
NOP
NOP
.UNIQUE721: 
	movl	$0, %esi
 jmp .UNIQUE722
NOP
NOP
NOP
NOP
NOP
.UNIQUE722: 
	movl	$.LC4, %edi
 jmp .UNIQUE723
NOP
NOP
NOP
NOP
NOP
.UNIQUE723: 
	movl	$0, %eax
 jmp .UNIQUE724
NOP
NOP
NOP
NOP
NOP
.UNIQUE724: 
	call	printf
 jmp .UNIQUE725
NOP
NOP
NOP
NOP
NOP
.UNIQUE725: 
	movl	$.LC5, %edi
 jmp .UNIQUE726
NOP
NOP
NOP
NOP
NOP
.UNIQUE726: 
	call	puts
 jmp .UNIQUE727
NOP
NOP
NOP
NOP
NOP
.UNIQUE727: 
	movl	$1024, %esi
 jmp .UNIQUE728
NOP
NOP
NOP
NOP
NOP
.UNIQUE728: 
	movl	$.LC6, %edi
 jmp .UNIQUE729
NOP
NOP
NOP
NOP
NOP
.UNIQUE729: 
	movl	$0, %eax
 jmp .UNIQUE730
NOP
NOP
NOP
NOP
NOP
.UNIQUE730: 
	call	printf
 jmp .UNIQUE731
NOP
NOP
NOP
NOP
NOP
.UNIQUE731: 
	movl	$.LC7, %edi
 jmp .UNIQUE732
NOP
NOP
NOP
NOP
NOP
.UNIQUE732: 
	call	puts
 jmp .UNIQUE733
NOP
NOP
NOP
NOP
NOP
.UNIQUE733: 
	movl	$0, %eax
 jmp .UNIQUE734
NOP
NOP
NOP
NOP
NOP
.UNIQUE734: 
	call	init_mem
 jmp .UNIQUE735
NOP
NOP
NOP
NOP
NOP
.UNIQUE735: 
	movq	%rax, -96(%rbp)
 jmp .UNIQUE736
NOP
NOP
NOP
NOP
NOP
.UNIQUE736: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE737
NOP
NOP
NOP
NOP
NOP
.UNIQUE737: 
	movq	%rax, %rsi
 jmp .UNIQUE738
NOP
NOP
NOP
NOP
NOP
.UNIQUE738: 
	movl	$.LC8, %edi
 jmp .UNIQUE739
NOP
NOP
NOP
NOP
NOP
.UNIQUE739: 
	movl	$0, %eax
 jmp .UNIQUE740
NOP
NOP
NOP
NOP
NOP
.UNIQUE740: 
	call	printf
 jmp .UNIQUE741
NOP
NOP
NOP
NOP
NOP
.UNIQUE741: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE742
NOP
NOP
NOP
NOP
NOP
.UNIQUE742: 
	movq	%rax, %rdi
 jmp .UNIQUE743
NOP
NOP
NOP
NOP
NOP
.UNIQUE743: 
	call	find_useful_chunks
 jmp .UNIQUE744
NOP
NOP
NOP
NOP
NOP
.UNIQUE744: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE745
NOP
NOP
NOP
NOP
NOP
.UNIQUE745: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE746
NOP
NOP
NOP
NOP
NOP
.UNIQUE746: 
	movq	%rax, %rsi
 jmp .UNIQUE747
NOP
NOP
NOP
NOP
NOP
.UNIQUE747: 
	movl	$.LC9, %edi
 jmp .UNIQUE748
NOP
NOP
NOP
NOP
NOP
.UNIQUE748: 
	movl	$0, %eax
 jmp .UNIQUE749
NOP
NOP
NOP
NOP
NOP
.UNIQUE749: 
	call	printf
 jmp .UNIQUE750
NOP
NOP
NOP
NOP
NOP
.UNIQUE750: 
	movl	$.LC10, %edi
 jmp .UNIQUE751
NOP
NOP
NOP
NOP
NOP
.UNIQUE751: 
	call	puts
 jmp .UNIQUE752
NOP
NOP
NOP
NOP
NOP
.UNIQUE752: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE753
NOP
NOP
NOP
NOP
NOP
.UNIQUE753: 
	movq	%rax, %rdi
 jmp .UNIQUE754
NOP
NOP
NOP
NOP
NOP
.UNIQUE754: 
	call	print_mem
 jmp .UNIQUE755
NOP
NOP
NOP
NOP
NOP
.UNIQUE755: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE756
NOP
NOP
NOP
NOP
NOP
.UNIQUE756: 
	salq	$2, %rax
 jmp .UNIQUE757
NOP
NOP
NOP
NOP
NOP
.UNIQUE757: 
	movq	%rax, %rdi
 jmp .UNIQUE758
NOP
NOP
NOP
NOP
NOP
.UNIQUE758: 
	call	malloc
 jmp .UNIQUE759
NOP
NOP
NOP
NOP
NOP
.UNIQUE759: 
	movq	%rax, -80(%rbp)
 jmp .UNIQUE760
NOP
NOP
NOP
NOP
NOP
.UNIQUE760: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE761
NOP
NOP
NOP
NOP
NOP
.UNIQUE761: 
	salq	$2, %rax
 jmp .UNIQUE762
NOP
NOP
NOP
NOP
NOP
.UNIQUE762: 
	movq	%rax, %rdi
 jmp .UNIQUE763
NOP
NOP
NOP
NOP
NOP
.UNIQUE763: 
	call	malloc
 jmp .UNIQUE764
NOP
NOP
NOP
NOP
NOP
.UNIQUE764: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE765
NOP
NOP
NOP
NOP
NOP
.UNIQUE765: 
	movq	$5, -120(%rbp)
 jmp .UNIQUE766
NOP
NOP
NOP
NOP
NOP
.UNIQUE766: 
	jmp	.L75
.L76:
 jmp .UNIQUE767
NOP
NOP
NOP
NOP
NOP
.UNIQUE767: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE768
NOP
NOP
NOP
NOP
NOP
.UNIQUE768: 
	salq	$2, %rax
 jmp .UNIQUE769
NOP
NOP
NOP
NOP
NOP
.UNIQUE769: 
	leaq	-20(%rax), %rdx
 jmp .UNIQUE770
NOP
NOP
NOP
NOP
NOP
.UNIQUE770: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE771
NOP
NOP
NOP
NOP
NOP
.UNIQUE771: 
	addq	%rax, %rdx
 jmp .UNIQUE772
NOP
NOP
NOP
NOP
NOP
.UNIQUE772: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE773
NOP
NOP
NOP
NOP
NOP
.UNIQUE773: 
	movl	%eax, %ecx
 jmp .UNIQUE774
NOP
NOP
NOP
NOP
NOP
.UNIQUE774: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE775
NOP
NOP
NOP
NOP
NOP
.UNIQUE775: 
	imull	%ecx, %eax
 jmp .UNIQUE776
NOP
NOP
NOP
NOP
NOP
.UNIQUE776: 
	movl	%eax, (%rdx)
 jmp .UNIQUE777
NOP
NOP
NOP
NOP
NOP
.UNIQUE777: 
	addq	$1, -120(%rbp)
.L75:
 jmp .UNIQUE778
NOP
NOP
NOP
NOP
NOP
.UNIQUE778: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE779
NOP
NOP
NOP
NOP
NOP
.UNIQUE779: 
	addq	$5, %rax
 jmp .UNIQUE780
NOP
NOP
NOP
NOP
NOP
.UNIQUE780: 
	cmpq	-120(%rbp), %rax
 jmp .UNIQUE781
NOP
NOP
NOP
NOP
NOP
.UNIQUE781: 
	jg	.L76
 jmp .UNIQUE782
NOP
NOP
NOP
NOP
NOP
.UNIQUE782: 
	movl	$.LC11, %edi
 jmp .UNIQUE783
NOP
NOP
NOP
NOP
NOP
.UNIQUE783: 
	call	puts
 jmp .UNIQUE784
NOP
NOP
NOP
NOP
NOP
.UNIQUE784: 
	movq	last_unused_memory(%rip), %rax
 jmp .UNIQUE785
NOP
NOP
NOP
NOP
NOP
.UNIQUE785: 
	movq	%rax, %rsi
 jmp .UNIQUE786
NOP
NOP
NOP
NOP
NOP
.UNIQUE786: 
	movl	$.LC12, %edi
 jmp .UNIQUE787
NOP
NOP
NOP
NOP
NOP
.UNIQUE787: 
	movl	$0, %eax
 jmp .UNIQUE788
NOP
NOP
NOP
NOP
NOP
.UNIQUE788: 
	call	printf
 jmp .UNIQUE789
NOP
NOP
NOP
NOP
NOP
.UNIQUE789: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE790
NOP
NOP
NOP
NOP
NOP
.UNIQUE790: 
	salq	$2, %rax
 jmp .UNIQUE791
NOP
NOP
NOP
NOP
NOP
.UNIQUE791: 
	movq	%rax, %rdi
 jmp .UNIQUE792
NOP
NOP
NOP
NOP
NOP
.UNIQUE792: 
	call	secure_malloc
 jmp .UNIQUE793
NOP
NOP
NOP
NOP
NOP
.UNIQUE793: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE794
NOP
NOP
NOP
NOP
NOP
.UNIQUE794: 
	cmpq	$0, -64(%rbp)
 jmp .UNIQUE795
NOP
NOP
NOP
NOP
NOP
.UNIQUE795: 
	jne	.L77
 jmp .UNIQUE796
NOP
NOP
NOP
NOP
NOP
.UNIQUE796: 
	movl	$.LC13, %edi
 jmp .UNIQUE797
NOP
NOP
NOP
NOP
NOP
.UNIQUE797: 
	call	perror
 jmp .UNIQUE798
NOP
NOP
NOP
NOP
NOP
.UNIQUE798: 
	movl	$42, %edi
 jmp .UNIQUE799
NOP
NOP
NOP
NOP
NOP
.UNIQUE799: 
	call	exit
.L77:
 jmp .UNIQUE800
NOP
NOP
NOP
NOP
NOP
.UNIQUE800: 
	movq	last_unused_memory(%rip), %rax
 jmp .UNIQUE801
NOP
NOP
NOP
NOP
NOP
.UNIQUE801: 
	movq	%rax, %rsi
 jmp .UNIQUE802
NOP
NOP
NOP
NOP
NOP
.UNIQUE802: 
	movl	$.LC14, %edi
 jmp .UNIQUE803
NOP
NOP
NOP
NOP
NOP
.UNIQUE803: 
	movl	$0, %eax
 jmp .UNIQUE804
NOP
NOP
NOP
NOP
NOP
.UNIQUE804: 
	call	printf
 jmp .UNIQUE805
NOP
NOP
NOP
NOP
NOP
.UNIQUE805: 
	movl	$.LC15, %edi
 jmp .UNIQUE806
NOP
NOP
NOP
NOP
NOP
.UNIQUE806: 
	call	puts
 jmp .UNIQUE807
NOP
NOP
NOP
NOP
NOP
.UNIQUE807: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE808
NOP
NOP
NOP
NOP
NOP
.UNIQUE808: 
	salq	$2, %rax
 jmp .UNIQUE809
NOP
NOP
NOP
NOP
NOP
.UNIQUE809: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE810
NOP
NOP
NOP
NOP
NOP
.UNIQUE810: 
	movq	-80(%rbp), %rcx
 jmp .UNIQUE811
NOP
NOP
NOP
NOP
NOP
.UNIQUE811: 
	movq	%rcx, %rsi
 jmp .UNIQUE812
NOP
NOP
NOP
NOP
NOP
.UNIQUE812: 
	movq	%rax, %rdi
 jmp .UNIQUE813
NOP
NOP
NOP
NOP
NOP
.UNIQUE813: 
	call	insert_data_into_mem
 jmp .UNIQUE814
NOP
NOP
NOP
NOP
NOP
.UNIQUE814: 
	movl	$.LC16, %edi
 jmp .UNIQUE815
NOP
NOP
NOP
NOP
NOP
.UNIQUE815: 
	call	puts
 jmp .UNIQUE816
NOP
NOP
NOP
NOP
NOP
.UNIQUE816: 
	movl	$4, %edi
 jmp .UNIQUE817
NOP
NOP
NOP
NOP
NOP
.UNIQUE817: 
	call	malloc
 jmp .UNIQUE818
NOP
NOP
NOP
NOP
NOP
.UNIQUE818: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE819
NOP
NOP
NOP
NOP
NOP
.UNIQUE819: 
	movq	$0, -112(%rbp)
 jmp .UNIQUE820
NOP
NOP
NOP
NOP
NOP
.UNIQUE820: 
	jmp	.L78
.L79:
 jmp .UNIQUE821
NOP
NOP
NOP
NOP
NOP
.UNIQUE821: 
	movq	-112(%rbp), %rcx
 jmp .UNIQUE822
NOP
NOP
NOP
NOP
NOP
.UNIQUE822: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE823
NOP
NOP
NOP
NOP
NOP
.UNIQUE823: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE824
NOP
NOP
NOP
NOP
NOP
.UNIQUE824: 
	movq	%rcx, %r8
 jmp .UNIQUE825
NOP
NOP
NOP
NOP
NOP
.UNIQUE825: 
	movl	$1, %ecx
 jmp .UNIQUE826
NOP
NOP
NOP
NOP
NOP
.UNIQUE826: 
	movl	$4, %esi
 jmp .UNIQUE827
NOP
NOP
NOP
NOP
NOP
.UNIQUE827: 
	movq	%rax, %rdi
 jmp .UNIQUE828
NOP
NOP
NOP
NOP
NOP
.UNIQUE828: 
	call	get_secure_data
 jmp .UNIQUE829
NOP
NOP
NOP
NOP
NOP
.UNIQUE829: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE830
NOP
NOP
NOP
NOP
NOP
.UNIQUE830: 
	movl	(%rax), %eax
 jmp .UNIQUE831
NOP
NOP
NOP
NOP
NOP
.UNIQUE831: 
	movl	%eax, %esi
 jmp .UNIQUE832
NOP
NOP
NOP
NOP
NOP
.UNIQUE832: 
	movl	$.LC17, %edi
 jmp .UNIQUE833
NOP
NOP
NOP
NOP
NOP
.UNIQUE833: 
	movl	$0, %eax
 jmp .UNIQUE834
NOP
NOP
NOP
NOP
NOP
.UNIQUE834: 
	call	printf
 jmp .UNIQUE835
NOP
NOP
NOP
NOP
NOP
.UNIQUE835: 
	addq	$1, -112(%rbp)
.L78:
 jmp .UNIQUE836
NOP
NOP
NOP
NOP
NOP
.UNIQUE836: 
	movq	-112(%rbp), %rax
 jmp .UNIQUE837
NOP
NOP
NOP
NOP
NOP
.UNIQUE837: 
	cmpq	-104(%rbp), %rax
 jmp .UNIQUE838
NOP
NOP
NOP
NOP
NOP
.UNIQUE838: 
	jl	.L79
 jmp .UNIQUE839
NOP
NOP
NOP
NOP
NOP
.UNIQUE839: 
	movl	$10, %edi
 jmp .UNIQUE840
NOP
NOP
NOP
NOP
NOP
.UNIQUE840: 
	call	putchar
 jmp .UNIQUE841
NOP
NOP
NOP
NOP
NOP
.UNIQUE841: 
	movl	$.LC18, %edi
 jmp .UNIQUE842
NOP
NOP
NOP
NOP
NOP
.UNIQUE842: 
	call	puts
 jmp .UNIQUE843
NOP
NOP
NOP
NOP
NOP
.UNIQUE843: 
	movq	last_unused_memory(%rip), %rax
 jmp .UNIQUE844
NOP
NOP
NOP
NOP
NOP
.UNIQUE844: 
	movq	%rax, %rsi
 jmp .UNIQUE845
NOP
NOP
NOP
NOP
NOP
.UNIQUE845: 
	movl	$.LC12, %edi
 jmp .UNIQUE846
NOP
NOP
NOP
NOP
NOP
.UNIQUE846: 
	movl	$0, %eax
 jmp .UNIQUE847
NOP
NOP
NOP
NOP
NOP
.UNIQUE847: 
	call	printf
 jmp .UNIQUE848
NOP
NOP
NOP
NOP
NOP
.UNIQUE848: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE849
NOP
NOP
NOP
NOP
NOP
.UNIQUE849: 
	salq	$2, %rax
 jmp .UNIQUE850
NOP
NOP
NOP
NOP
NOP
.UNIQUE850: 
	movq	%rax, %rdi
 jmp .UNIQUE851
NOP
NOP
NOP
NOP
NOP
.UNIQUE851: 
	call	secure_malloc
 jmp .UNIQUE852
NOP
NOP
NOP
NOP
NOP
.UNIQUE852: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE853
NOP
NOP
NOP
NOP
NOP
.UNIQUE853: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE854
NOP
NOP
NOP
NOP
NOP
.UNIQUE854: 
	jne	.L80
 jmp .UNIQUE855
NOP
NOP
NOP
NOP
NOP
.UNIQUE855: 
	movl	$.LC13, %edi
 jmp .UNIQUE856
NOP
NOP
NOP
NOP
NOP
.UNIQUE856: 
	call	perror
 jmp .UNIQUE857
NOP
NOP
NOP
NOP
NOP
.UNIQUE857: 
	movl	$42, %edi
 jmp .UNIQUE858
NOP
NOP
NOP
NOP
NOP
.UNIQUE858: 
	call	exit
.L80:
 jmp .UNIQUE859
NOP
NOP
NOP
NOP
NOP
.UNIQUE859: 
	movq	last_unused_memory(%rip), %rax
 jmp .UNIQUE860
NOP
NOP
NOP
NOP
NOP
.UNIQUE860: 
	movq	%rax, %rsi
 jmp .UNIQUE861
NOP
NOP
NOP
NOP
NOP
.UNIQUE861: 
	movl	$.LC14, %edi
 jmp .UNIQUE862
NOP
NOP
NOP
NOP
NOP
.UNIQUE862: 
	movl	$0, %eax
 jmp .UNIQUE863
NOP
NOP
NOP
NOP
NOP
.UNIQUE863: 
	call	printf
 jmp .UNIQUE864
NOP
NOP
NOP
NOP
NOP
.UNIQUE864: 
	movq	$5, -120(%rbp)
 jmp .UNIQUE865
NOP
NOP
NOP
NOP
NOP
.UNIQUE865: 
	jmp	.L81
.L82:
 jmp .UNIQUE866
NOP
NOP
NOP
NOP
NOP
.UNIQUE866: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE867
NOP
NOP
NOP
NOP
NOP
.UNIQUE867: 
	salq	$2, %rax
 jmp .UNIQUE868
NOP
NOP
NOP
NOP
NOP
.UNIQUE868: 
	leaq	-20(%rax), %rdx
 jmp .UNIQUE869
NOP
NOP
NOP
NOP
NOP
.UNIQUE869: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE870
NOP
NOP
NOP
NOP
NOP
.UNIQUE870: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE871
NOP
NOP
NOP
NOP
NOP
.UNIQUE871: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE872
NOP
NOP
NOP
NOP
NOP
.UNIQUE872: 
	movl	%eax, %edx
 jmp .UNIQUE873
NOP
NOP
NOP
NOP
NOP
.UNIQUE873: 
	movl	%edx, %eax
 jmp .UNIQUE874
NOP
NOP
NOP
NOP
NOP
.UNIQUE874: 
	addl	%eax, %eax
 jmp .UNIQUE875
NOP
NOP
NOP
NOP
NOP
.UNIQUE875: 
	addl	%edx, %eax
 jmp .UNIQUE876
NOP
NOP
NOP
NOP
NOP
.UNIQUE876: 
	movl	%eax, (%rcx)
 jmp .UNIQUE877
NOP
NOP
NOP
NOP
NOP
.UNIQUE877: 
	addq	$1, -120(%rbp)
.L81:
 jmp .UNIQUE878
NOP
NOP
NOP
NOP
NOP
.UNIQUE878: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE879
NOP
NOP
NOP
NOP
NOP
.UNIQUE879: 
	addq	$5, %rax
 jmp .UNIQUE880
NOP
NOP
NOP
NOP
NOP
.UNIQUE880: 
	cmpq	-120(%rbp), %rax
 jmp .UNIQUE881
NOP
NOP
NOP
NOP
NOP
.UNIQUE881: 
	jg	.L82
 jmp .UNIQUE882
NOP
NOP
NOP
NOP
NOP
.UNIQUE882: 
	movl	$.LC19, %edi
 jmp .UNIQUE883
NOP
NOP
NOP
NOP
NOP
.UNIQUE883: 
	call	puts
 jmp .UNIQUE884
NOP
NOP
NOP
NOP
NOP
.UNIQUE884: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE885
NOP
NOP
NOP
NOP
NOP
.UNIQUE885: 
	salq	$2, %rax
 jmp .UNIQUE886
NOP
NOP
NOP
NOP
NOP
.UNIQUE886: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE887
NOP
NOP
NOP
NOP
NOP
.UNIQUE887: 
	movq	-80(%rbp), %rcx
 jmp .UNIQUE888
NOP
NOP
NOP
NOP
NOP
.UNIQUE888: 
	movq	%rcx, %rsi
 jmp .UNIQUE889
NOP
NOP
NOP
NOP
NOP
.UNIQUE889: 
	movq	%rax, %rdi
 jmp .UNIQUE890
NOP
NOP
NOP
NOP
NOP
.UNIQUE890: 
	call	insert_data_into_mem
 jmp .UNIQUE891
NOP
NOP
NOP
NOP
NOP
.UNIQUE891: 
	movl	$.LC16, %edi
 jmp .UNIQUE892
NOP
NOP
NOP
NOP
NOP
.UNIQUE892: 
	call	puts
 jmp .UNIQUE893
NOP
NOP
NOP
NOP
NOP
.UNIQUE893: 
	movq	$0, -112(%rbp)
 jmp .UNIQUE894
NOP
NOP
NOP
NOP
NOP
.UNIQUE894: 
	jmp	.L83
.L84:
 jmp .UNIQUE895
NOP
NOP
NOP
NOP
NOP
.UNIQUE895: 
	movq	-112(%rbp), %rcx
 jmp .UNIQUE896
NOP
NOP
NOP
NOP
NOP
.UNIQUE896: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE897
NOP
NOP
NOP
NOP
NOP
.UNIQUE897: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE898
NOP
NOP
NOP
NOP
NOP
.UNIQUE898: 
	movq	%rcx, %r8
 jmp .UNIQUE899
NOP
NOP
NOP
NOP
NOP
.UNIQUE899: 
	movl	$1, %ecx
 jmp .UNIQUE900
NOP
NOP
NOP
NOP
NOP
.UNIQUE900: 
	movl	$4, %esi
 jmp .UNIQUE901
NOP
NOP
NOP
NOP
NOP
.UNIQUE901: 
	movq	%rax, %rdi
 jmp .UNIQUE902
NOP
NOP
NOP
NOP
NOP
.UNIQUE902: 
	call	get_secure_data
 jmp .UNIQUE903
NOP
NOP
NOP
NOP
NOP
.UNIQUE903: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE904
NOP
NOP
NOP
NOP
NOP
.UNIQUE904: 
	movl	(%rax), %eax
 jmp .UNIQUE905
NOP
NOP
NOP
NOP
NOP
.UNIQUE905: 
	movl	%eax, %esi
 jmp .UNIQUE906
NOP
NOP
NOP
NOP
NOP
.UNIQUE906: 
	movl	$.LC17, %edi
 jmp .UNIQUE907
NOP
NOP
NOP
NOP
NOP
.UNIQUE907: 
	movl	$0, %eax
 jmp .UNIQUE908
NOP
NOP
NOP
NOP
NOP
.UNIQUE908: 
	call	printf
 jmp .UNIQUE909
NOP
NOP
NOP
NOP
NOP
.UNIQUE909: 
	addq	$1, -112(%rbp)
.L83:
 jmp .UNIQUE910
NOP
NOP
NOP
NOP
NOP
.UNIQUE910: 
	movq	-112(%rbp), %rax
 jmp .UNIQUE911
NOP
NOP
NOP
NOP
NOP
.UNIQUE911: 
	cmpq	-104(%rbp), %rax
 jmp .UNIQUE912
NOP
NOP
NOP
NOP
NOP
.UNIQUE912: 
	jl	.L84
 jmp .UNIQUE913
NOP
NOP
NOP
NOP
NOP
.UNIQUE913: 
	movl	$10, %edi
 jmp .UNIQUE914
NOP
NOP
NOP
NOP
NOP
.UNIQUE914: 
	call	putchar
 jmp .UNIQUE915
NOP
NOP
NOP
NOP
NOP
.UNIQUE915: 
	movl	$.LC20, %edi
 jmp .UNIQUE916
NOP
NOP
NOP
NOP
NOP
.UNIQUE916: 
	call	puts
 jmp .UNIQUE917
NOP
NOP
NOP
NOP
NOP
.UNIQUE917: 
	movl	$4, %edi
 jmp .UNIQUE918
NOP
NOP
NOP
NOP
NOP
.UNIQUE918: 
	call	secure_malloc
 jmp .UNIQUE919
NOP
NOP
NOP
NOP
NOP
.UNIQUE919: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE920
NOP
NOP
NOP
NOP
NOP
.UNIQUE920: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE921
NOP
NOP
NOP
NOP
NOP
.UNIQUE921: 
	movl	$424242424, (%rax)
 jmp .UNIQUE922
NOP
NOP
NOP
NOP
NOP
.UNIQUE922: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE923
NOP
NOP
NOP
NOP
NOP
.UNIQUE923: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE924
NOP
NOP
NOP
NOP
NOP
.UNIQUE924: 
	movq	%rax, %rsi
 jmp .UNIQUE925
NOP
NOP
NOP
NOP
NOP
.UNIQUE925: 
	movl	$4, %edi
 jmp .UNIQUE926
NOP
NOP
NOP
NOP
NOP
.UNIQUE926: 
	call	insert_data_into_mem
 jmp .UNIQUE927
NOP
NOP
NOP
NOP
NOP
.UNIQUE927: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE928
NOP
NOP
NOP
NOP
NOP
.UNIQUE928: 
	movq	%rax, %rdi
 jmp .UNIQUE929
NOP
NOP
NOP
NOP
NOP
.UNIQUE929: 
	call	free
 jmp .UNIQUE930
NOP
NOP
NOP
NOP
NOP
.UNIQUE930: 
	movl	$4, %edi
 jmp .UNIQUE931
NOP
NOP
NOP
NOP
NOP
.UNIQUE931: 
	call	malloc
 jmp .UNIQUE932
NOP
NOP
NOP
NOP
NOP
.UNIQUE932: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE933
NOP
NOP
NOP
NOP
NOP
.UNIQUE933: 
	movq	-112(%rbp), %rcx
 jmp .UNIQUE934
NOP
NOP
NOP
NOP
NOP
.UNIQUE934: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE935
NOP
NOP
NOP
NOP
NOP
.UNIQUE935: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE936
NOP
NOP
NOP
NOP
NOP
.UNIQUE936: 
	movq	%rcx, %r8
 jmp .UNIQUE937
NOP
NOP
NOP
NOP
NOP
.UNIQUE937: 
	movl	$0, %ecx
 jmp .UNIQUE938
NOP
NOP
NOP
NOP
NOP
.UNIQUE938: 
	movl	$4, %esi
 jmp .UNIQUE939
NOP
NOP
NOP
NOP
NOP
.UNIQUE939: 
	movq	%rax, %rdi
 jmp .UNIQUE940
NOP
NOP
NOP
NOP
NOP
.UNIQUE940: 
	call	get_secure_data
 jmp .UNIQUE941
NOP
NOP
NOP
NOP
NOP
.UNIQUE941: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE942
NOP
NOP
NOP
NOP
NOP
.UNIQUE942: 
	movl	(%rax), %eax
 jmp .UNIQUE943
NOP
NOP
NOP
NOP
NOP
.UNIQUE943: 
	movl	%eax, %esi
 jmp .UNIQUE944
NOP
NOP
NOP
NOP
NOP
.UNIQUE944: 
	movl	$.LC21, %edi
 jmp .UNIQUE945
NOP
NOP
NOP
NOP
NOP
.UNIQUE945: 
	movl	$0, %eax
 jmp .UNIQUE946
NOP
NOP
NOP
NOP
NOP
.UNIQUE946: 
	call	printf
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
	movq	%rax, %rdi
 jmp .UNIQUE949
NOP
NOP
NOP
NOP
NOP
.UNIQUE949: 
	call	free
 jmp .UNIQUE950
NOP
NOP
NOP
NOP
NOP
.UNIQUE950: 
	movl	$.LC22, %edi
 jmp .UNIQUE951
NOP
NOP
NOP
NOP
NOP
.UNIQUE951: 
	call	puts
 jmp .UNIQUE952
NOP
NOP
NOP
NOP
NOP
.UNIQUE952: 
	movl	$4, %edi
 jmp .UNIQUE953
NOP
NOP
NOP
NOP
NOP
.UNIQUE953: 
	call	secure_malloc
 jmp .UNIQUE954
NOP
NOP
NOP
NOP
NOP
.UNIQUE954: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE955
NOP
NOP
NOP
NOP
NOP
.UNIQUE955: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE956
NOP
NOP
NOP
NOP
NOP
.UNIQUE956: 
	movl	$99998, %esi
 jmp .UNIQUE957
NOP
NOP
NOP
NOP
NOP
.UNIQUE957: 
	movq	%rax, %rdi
 jmp .UNIQUE958
NOP
NOP
NOP
NOP
NOP
.UNIQUE958: 
	call	set_int
 jmp .UNIQUE959
NOP
NOP
NOP
NOP
NOP
.UNIQUE959: 
	leaq	-148(%rbp), %rdx
 jmp .UNIQUE960
NOP
NOP
NOP
NOP
NOP
.UNIQUE960: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE961
NOP
NOP
NOP
NOP
NOP
.UNIQUE961: 
	movq	%rdx, %rsi
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
	call	get_int
 jmp .UNIQUE964
NOP
NOP
NOP
NOP
NOP
.UNIQUE964: 
	movl	-148(%rbp), %eax
 jmp .UNIQUE965
NOP
NOP
NOP
NOP
NOP
.UNIQUE965: 
	movl	%eax, %esi
 jmp .UNIQUE966
NOP
NOP
NOP
NOP
NOP
.UNIQUE966: 
	movl	$.LC23, %edi
 jmp .UNIQUE967
NOP
NOP
NOP
NOP
NOP
.UNIQUE967: 
	movl	$0, %eax
 jmp .UNIQUE968
NOP
NOP
NOP
NOP
NOP
.UNIQUE968: 
	call	printf
 jmp .UNIQUE969
NOP
NOP
NOP
NOP
NOP
.UNIQUE969: 
	movl	$1, %edi
 jmp .UNIQUE970
NOP
NOP
NOP
NOP
NOP
.UNIQUE970: 
	call	secure_malloc
 jmp .UNIQUE971
NOP
NOP
NOP
NOP
NOP
.UNIQUE971: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE972
NOP
NOP
NOP
NOP
NOP
.UNIQUE972: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE973
NOP
NOP
NOP
NOP
NOP
.UNIQUE973: 
	movl	$98, %esi
 jmp .UNIQUE974
NOP
NOP
NOP
NOP
NOP
.UNIQUE974: 
	movq	%rax, %rdi
 jmp .UNIQUE975
NOP
NOP
NOP
NOP
NOP
.UNIQUE975: 
	call	set_char
 jmp .UNIQUE976
NOP
NOP
NOP
NOP
NOP
.UNIQUE976: 
	leaq	-149(%rbp), %rdx
 jmp .UNIQUE977
NOP
NOP
NOP
NOP
NOP
.UNIQUE977: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE978
NOP
NOP
NOP
NOP
NOP
.UNIQUE978: 
	movq	%rdx, %rsi
 jmp .UNIQUE979
NOP
NOP
NOP
NOP
NOP
.UNIQUE979: 
	movq	%rax, %rdi
 jmp .UNIQUE980
NOP
NOP
NOP
NOP
NOP
.UNIQUE980: 
	call	get_char
 jmp .UNIQUE981
NOP
NOP
NOP
NOP
NOP
.UNIQUE981: 
	movzbl	-149(%rbp), %eax
 jmp .UNIQUE982
NOP
NOP
NOP
NOP
NOP
.UNIQUE982: 
	movsbl	%al, %eax
 jmp .UNIQUE983
NOP
NOP
NOP
NOP
NOP
.UNIQUE983: 
	movl	%eax, %esi
 jmp .UNIQUE984
NOP
NOP
NOP
NOP
NOP
.UNIQUE984: 
	movl	$.LC24, %edi
 jmp .UNIQUE985
NOP
NOP
NOP
NOP
NOP
.UNIQUE985: 
	movl	$0, %eax
 jmp .UNIQUE986
NOP
NOP
NOP
NOP
NOP
.UNIQUE986: 
	call	printf
 jmp .UNIQUE987
NOP
NOP
NOP
NOP
NOP
.UNIQUE987: 
	movl	$8, %edi
 jmp .UNIQUE988
NOP
NOP
NOP
NOP
NOP
.UNIQUE988: 
	call	secure_malloc
 jmp .UNIQUE989
NOP
NOP
NOP
NOP
NOP
.UNIQUE989: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE990
NOP
NOP
NOP
NOP
NOP
.UNIQUE990: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE991
NOP
NOP
NOP
NOP
NOP
.UNIQUE991: 
	movl	$54545454, %esi
 jmp .UNIQUE992
NOP
NOP
NOP
NOP
NOP
.UNIQUE992: 
	movq	%rax, %rdi
 jmp .UNIQUE993
NOP
NOP
NOP
NOP
NOP
.UNIQUE993: 
	call	set_long_int
 jmp .UNIQUE994
NOP
NOP
NOP
NOP
NOP
.UNIQUE994: 
	leaq	-144(%rbp), %rdx
 jmp .UNIQUE995
NOP
NOP
NOP
NOP
NOP
.UNIQUE995: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE996
NOP
NOP
NOP
NOP
NOP
.UNIQUE996: 
	movq	%rdx, %rsi
 jmp .UNIQUE997
NOP
NOP
NOP
NOP
NOP
.UNIQUE997: 
	movq	%rax, %rdi
 jmp .UNIQUE998
NOP
NOP
NOP
NOP
NOP
.UNIQUE998: 
	call	get_long_int
 jmp .UNIQUE999
NOP
NOP
NOP
NOP
NOP
.UNIQUE999: 
	movq	-144(%rbp), %rax
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
	movl	$.LC25, %edi
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
	movl	$8, %edi
 jmp .UNIQUE1005
NOP
NOP
NOP
NOP
NOP
.UNIQUE1005: 
	call	secure_malloc
 jmp .UNIQUE1006
NOP
NOP
NOP
NOP
NOP
.UNIQUE1006: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE1007
NOP
NOP
NOP
NOP
NOP
.UNIQUE1007: 
	movabsq	$4665384344877005170, %rax
 jmp .UNIQUE1008
NOP
NOP
NOP
NOP
NOP
.UNIQUE1008: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1009
NOP
NOP
NOP
NOP
NOP
.UNIQUE1009: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE1010
NOP
NOP
NOP
NOP
NOP
.UNIQUE1010: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE1011
NOP
NOP
NOP
NOP
NOP
.UNIQUE1011: 
	movq	%rdx, %rdi
 jmp .UNIQUE1012
NOP
NOP
NOP
NOP
NOP
.UNIQUE1012: 
	call	set_double
 jmp .UNIQUE1013
NOP
NOP
NOP
NOP
NOP
.UNIQUE1013: 
	leaq	-136(%rbp), %rdx
 jmp .UNIQUE1014
NOP
NOP
NOP
NOP
NOP
.UNIQUE1014: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1015
NOP
NOP
NOP
NOP
NOP
.UNIQUE1015: 
	movq	%rdx, %rsi
 jmp .UNIQUE1016
NOP
NOP
NOP
NOP
NOP
.UNIQUE1016: 
	movq	%rax, %rdi
 jmp .UNIQUE1017
NOP
NOP
NOP
NOP
NOP
.UNIQUE1017: 
	call	get_double
 jmp .UNIQUE1018
NOP
NOP
NOP
NOP
NOP
.UNIQUE1018: 
	movq	-136(%rbp), %rax
 jmp .UNIQUE1019
NOP
NOP
NOP
NOP
NOP
.UNIQUE1019: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE1020
NOP
NOP
NOP
NOP
NOP
.UNIQUE1020: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE1021
NOP
NOP
NOP
NOP
NOP
.UNIQUE1021: 
	movl	$.LC27, %edi
 jmp .UNIQUE1022
NOP
NOP
NOP
NOP
NOP
.UNIQUE1022: 
	movl	$1, %eax
 jmp .UNIQUE1023
NOP
NOP
NOP
NOP
NOP
.UNIQUE1023: 
	call	printf
 jmp .UNIQUE1024
NOP
NOP
NOP
NOP
NOP
.UNIQUE1024: 
	movl	$.LC28, %edi
 jmp .UNIQUE1025
NOP
NOP
NOP
NOP
NOP
.UNIQUE1025: 
	call	puts
 jmp .UNIQUE1026
NOP
NOP
NOP
NOP
NOP
.UNIQUE1026: 
	movl	$80, %edi
 jmp .UNIQUE1027
NOP
NOP
NOP
NOP
NOP
.UNIQUE1027: 
	call	secure_malloc
 jmp .UNIQUE1028
NOP
NOP
NOP
NOP
NOP
.UNIQUE1028: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1029
NOP
NOP
NOP
NOP
NOP
.UNIQUE1029: 
	movabsq	$4631167498573958009, %rax
 jmp .UNIQUE1030
NOP
NOP
NOP
NOP
NOP
.UNIQUE1030: 
	movq	%rax, -128(%rbp)
 jmp .UNIQUE1031
NOP
NOP
NOP
NOP
NOP
.UNIQUE1031: 
	leaq	-128(%rbp), %rdx
 jmp .UNIQUE1032
NOP
NOP
NOP
NOP
NOP
.UNIQUE1032: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1033
NOP
NOP
NOP
NOP
NOP
.UNIQUE1033: 
	movq	%rdx, %rcx
 jmp .UNIQUE1034
NOP
NOP
NOP
NOP
NOP
.UNIQUE1034: 
	movl	$2, %edx
 jmp .UNIQUE1035
NOP
NOP
NOP
NOP
NOP
.UNIQUE1035: 
	movq	%rax, %rsi
 jmp .UNIQUE1036
NOP
NOP
NOP
NOP
NOP
.UNIQUE1036: 
	movl	$8, %edi
 jmp .UNIQUE1037
NOP
NOP
NOP
NOP
NOP
.UNIQUE1037: 
	call	set_array_element
 jmp .UNIQUE1038
NOP
NOP
NOP
NOP
NOP
.UNIQUE1038: 
	movabsq	$4629998950986019070, %rax
 jmp .UNIQUE1039
NOP
NOP
NOP
NOP
NOP
.UNIQUE1039: 
	movq	%rax, -128(%rbp)
 jmp .UNIQUE1040
NOP
NOP
NOP
NOP
NOP
.UNIQUE1040: 
	leaq	-128(%rbp), %rdx
 jmp .UNIQUE1041
NOP
NOP
NOP
NOP
NOP
.UNIQUE1041: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1042
NOP
NOP
NOP
NOP
NOP
.UNIQUE1042: 
	movq	%rdx, %rcx
 jmp .UNIQUE1043
NOP
NOP
NOP
NOP
NOP
.UNIQUE1043: 
	movl	$3, %edx
 jmp .UNIQUE1044
NOP
NOP
NOP
NOP
NOP
.UNIQUE1044: 
	movq	%rax, %rsi
 jmp .UNIQUE1045
NOP
NOP
NOP
NOP
NOP
.UNIQUE1045: 
	movl	$8, %edi
 jmp .UNIQUE1046
NOP
NOP
NOP
NOP
NOP
.UNIQUE1046: 
	call	set_array_element
 jmp .UNIQUE1047
NOP
NOP
NOP
NOP
NOP
.UNIQUE1047: 
	movabsq	$4607182418800017408, %rax
 jmp .UNIQUE1048
NOP
NOP
NOP
NOP
NOP
.UNIQUE1048: 
	movq	%rax, -128(%rbp)
 jmp .UNIQUE1049
NOP
NOP
NOP
NOP
NOP
.UNIQUE1049: 
	leaq	-128(%rbp), %rdx
 jmp .UNIQUE1050
NOP
NOP
NOP
NOP
NOP
.UNIQUE1050: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1051
NOP
NOP
NOP
NOP
NOP
.UNIQUE1051: 
	movq	%rdx, %rcx
 jmp .UNIQUE1052
NOP
NOP
NOP
NOP
NOP
.UNIQUE1052: 
	movl	$2, %edx
 jmp .UNIQUE1053
NOP
NOP
NOP
NOP
NOP
.UNIQUE1053: 
	movq	%rax, %rsi
 jmp .UNIQUE1054
NOP
NOP
NOP
NOP
NOP
.UNIQUE1054: 
	movl	$8, %edi
 jmp .UNIQUE1055
NOP
NOP
NOP
NOP
NOP
.UNIQUE1055: 
	call	get_array_element
 jmp .UNIQUE1056
NOP
NOP
NOP
NOP
NOP
.UNIQUE1056: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1057
NOP
NOP
NOP
NOP
NOP
.UNIQUE1057: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE1058
NOP
NOP
NOP
NOP
NOP
.UNIQUE1058: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE1059
NOP
NOP
NOP
NOP
NOP
.UNIQUE1059: 
	movl	$.LC32, %edi
 jmp .UNIQUE1060
NOP
NOP
NOP
NOP
NOP
.UNIQUE1060: 
	movl	$1, %eax
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
	leaq	-128(%rbp), %rdx
 jmp .UNIQUE1063
NOP
NOP
NOP
NOP
NOP
.UNIQUE1063: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1064
NOP
NOP
NOP
NOP
NOP
.UNIQUE1064: 
	movq	%rdx, %rcx
 jmp .UNIQUE1065
NOP
NOP
NOP
NOP
NOP
.UNIQUE1065: 
	movl	$3, %edx
 jmp .UNIQUE1066
NOP
NOP
NOP
NOP
NOP
.UNIQUE1066: 
	movq	%rax, %rsi
 jmp .UNIQUE1067
NOP
NOP
NOP
NOP
NOP
.UNIQUE1067: 
	movl	$8, %edi
 jmp .UNIQUE1068
NOP
NOP
NOP
NOP
NOP
.UNIQUE1068: 
	call	get_array_element
 jmp .UNIQUE1069
NOP
NOP
NOP
NOP
NOP
.UNIQUE1069: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1070
NOP
NOP
NOP
NOP
NOP
.UNIQUE1070: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE1071
NOP
NOP
NOP
NOP
NOP
.UNIQUE1071: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE1072
NOP
NOP
NOP
NOP
NOP
.UNIQUE1072: 
	movl	$.LC33, %edi
 jmp .UNIQUE1073
NOP
NOP
NOP
NOP
NOP
.UNIQUE1073: 
	movl	$1, %eax
 jmp .UNIQUE1074
NOP
NOP
NOP
NOP
NOP
.UNIQUE1074: 
	call	printf
 jmp .UNIQUE1075
NOP
NOP
NOP
NOP
NOP
.UNIQUE1075: 
	movl	$.LC34, %edi
 jmp .UNIQUE1076
NOP
NOP
NOP
NOP
NOP
.UNIQUE1076: 
	call	puts
 jmp .UNIQUE1077
NOP
NOP
NOP
NOP
NOP
.UNIQUE1077: 
	movl	$.LC35, %edi
 jmp .UNIQUE1078
NOP
NOP
NOP
NOP
NOP
.UNIQUE1078: 
	call	puts
 jmp .UNIQUE1079
NOP
NOP
NOP
NOP
NOP
.UNIQUE1079: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE1080
NOP
NOP
NOP
NOP
NOP
.UNIQUE1080: 
	movq	%rax, %rdi
 jmp .UNIQUE1081
NOP
NOP
NOP
NOP
NOP
.UNIQUE1081: 
	call	print_mem
 jmp .UNIQUE1082
NOP
NOP
NOP
NOP
NOP
.UNIQUE1082: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE1083
NOP
NOP
NOP
NOP
NOP
.UNIQUE1083: 
	movq	%rax, %rdi
 jmp .UNIQUE1084
NOP
NOP
NOP
NOP
NOP
.UNIQUE1084: 
	call	free_secure_mem
 jmp .UNIQUE1085
NOP
NOP
NOP
NOP
NOP
.UNIQUE1085: 
	movl	$.LC36, %edi
 jmp .UNIQUE1086
NOP
NOP
NOP
NOP
NOP
.UNIQUE1086: 
	call	puts
 jmp .UNIQUE1087
NOP
NOP
NOP
NOP
NOP
.UNIQUE1087: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1088
NOP
NOP
NOP
NOP
NOP
.UNIQUE1088: 
	ret
	.cfi_endproc
.LFE26:
	.size	mem_test, .-mem_test
	.section	.rodata
.LC37:
	.string	"a=%p b=%p c=%p d=%p\n"
	.align 8
.LC38:
	.string	"start of .text=0x%lx, end of .text=0x%lx, init=0x%lx, fini=0x%lx\n"
.LC39:
	.string	"\nkey1="
.LC40:
	.string	"0x%02x\n"
.LC41:
	.string	"key2=0x%02x\n"
.LC42:
	.string	"key3=0x%02x\n"
.LC43:
	.string	"key4=0x%02x\n"
.LC44:
	.string	"key5=0x%02x\n"
	.text
	.globl	find_keyshares
	.type	find_keyshares, @function
find_keyshares:
.LFB27:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1089
NOP
NOP
NOP
NOP
NOP
.UNIQUE1089: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1090
NOP
NOP
NOP
NOP
NOP
.UNIQUE1090: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1091
NOP
NOP
NOP
NOP
NOP
.UNIQUE1091: 
	subq	$80, %rsp
 jmp .UNIQUE1092
NOP
NOP
NOP
NOP
NOP
.UNIQUE1092: 
	movl	$0, -60(%rbp)
 jmp .UNIQUE1093
NOP
NOP
NOP
NOP
NOP
.UNIQUE1093: 
	movq	$foo, -48(%rbp)
 jmp .UNIQUE1094
NOP
NOP
NOP
NOP
NOP
.UNIQUE1094: 
	movq	$main, -40(%rbp)
 jmp .UNIQUE1095
NOP
NOP
NOP
NOP
NOP
.UNIQUE1095: 
	movq	$foo2, -32(%rbp)
 jmp .UNIQUE1096
NOP
NOP
NOP
NOP
NOP
.UNIQUE1096: 
	movq	$find_keyshares, -24(%rbp)
 jmp .UNIQUE1097
NOP
NOP
NOP
NOP
NOP
.UNIQUE1097: 
	movb	$0, -65(%rbp)
 jmp .UNIQUE1098
NOP
NOP
NOP
NOP
NOP
.UNIQUE1098: 
	movb	$0, -64(%rbp)
 jmp .UNIQUE1099
NOP
NOP
NOP
NOP
NOP
.UNIQUE1099: 
	movb	$0, -63(%rbp)
 jmp .UNIQUE1100
NOP
NOP
NOP
NOP
NOP
.UNIQUE1100: 
	movb	$0, -62(%rbp)
 jmp .UNIQUE1101
NOP
NOP
NOP
NOP
NOP
.UNIQUE1101: 
	movb	$0, -61(%rbp)
 jmp .UNIQUE1102
NOP
NOP
NOP
NOP
NOP
.UNIQUE1102: 
	movq	$__executable_start, -16(%rbp)
 jmp .UNIQUE1103
NOP
NOP
NOP
NOP
NOP
.UNIQUE1103: 
	movq	$__etext, -8(%rbp)
 jmp .UNIQUE1104
NOP
NOP
NOP
NOP
NOP
.UNIQUE1104: 
	movq	-24(%rbp), %rsi
 jmp .UNIQUE1105
NOP
NOP
NOP
NOP
NOP
.UNIQUE1105: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1106
NOP
NOP
NOP
NOP
NOP
.UNIQUE1106: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE1107
NOP
NOP
NOP
NOP
NOP
.UNIQUE1107: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE1108
NOP
NOP
NOP
NOP
NOP
.UNIQUE1108: 
	movq	%rsi, %r8
 jmp .UNIQUE1109
NOP
NOP
NOP
NOP
NOP
.UNIQUE1109: 
	movq	%rax, %rsi
 jmp .UNIQUE1110
NOP
NOP
NOP
NOP
NOP
.UNIQUE1110: 
	movl	$.LC37, %edi
 jmp .UNIQUE1111
NOP
NOP
NOP
NOP
NOP
.UNIQUE1111: 
	movl	$0, %eax
 jmp .UNIQUE1112
NOP
NOP
NOP
NOP
NOP
.UNIQUE1112: 
	call	printf
 jmp .UNIQUE1113
NOP
NOP
NOP
NOP
NOP
.UNIQUE1113: 
	movl	$_fini, %esi
 jmp .UNIQUE1114
NOP
NOP
NOP
NOP
NOP
.UNIQUE1114: 
	movl	$_init, %ecx
 jmp .UNIQUE1115
NOP
NOP
NOP
NOP
NOP
.UNIQUE1115: 
	movl	$__etext, %edx
 jmp .UNIQUE1116
NOP
NOP
NOP
NOP
NOP
.UNIQUE1116: 
	movl	$__executable_start, %eax
 jmp .UNIQUE1117
NOP
NOP
NOP
NOP
NOP
.UNIQUE1117: 
	movq	%rsi, %r8
 jmp .UNIQUE1118
NOP
NOP
NOP
NOP
NOP
.UNIQUE1118: 
	movq	%rax, %rsi
 jmp .UNIQUE1119
NOP
NOP
NOP
NOP
NOP
.UNIQUE1119: 
	movl	$.LC38, %edi
 jmp .UNIQUE1120
NOP
NOP
NOP
NOP
NOP
.UNIQUE1120: 
	movl	$0, %eax
 jmp .UNIQUE1121
NOP
NOP
NOP
NOP
NOP
.UNIQUE1121: 
	call	printf
 jmp .UNIQUE1122
NOP
NOP
NOP
NOP
NOP
.UNIQUE1122: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE1123
NOP
NOP
NOP
NOP
NOP
.UNIQUE1123: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE1124
NOP
NOP
NOP
NOP
NOP
.UNIQUE1124: 
	jmp	.L86
.L88:
 jmp .UNIQUE1125
NOP
NOP
NOP
NOP
NOP
.UNIQUE1125: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1126
NOP
NOP
NOP
NOP
NOP
.UNIQUE1126: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1127
NOP
NOP
NOP
NOP
NOP
.UNIQUE1127: 
	movzbl	%al, %eax
 jmp .UNIQUE1128
NOP
NOP
NOP
NOP
NOP
.UNIQUE1128: 
	movl	%eax, %esi
 jmp .UNIQUE1129
NOP
NOP
NOP
NOP
NOP
.UNIQUE1129: 
	movl	$.LC3, %edi
 jmp .UNIQUE1130
NOP
NOP
NOP
NOP
NOP
.UNIQUE1130: 
	movl	$0, %eax
 jmp .UNIQUE1131
NOP
NOP
NOP
NOP
NOP
.UNIQUE1131: 
	call	printf
 jmp .UNIQUE1132
NOP
NOP
NOP
NOP
NOP
.UNIQUE1132: 
	addq	$1, -56(%rbp)
.L86:
 jmp .UNIQUE1133
NOP
NOP
NOP
NOP
NOP
.UNIQUE1133: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1134
NOP
NOP
NOP
NOP
NOP
.UNIQUE1134: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1135
NOP
NOP
NOP
NOP
NOP
.UNIQUE1135: 
	cmpb	$-61, %al
 jmp .UNIQUE1136
NOP
NOP
NOP
NOP
NOP
.UNIQUE1136: 
	je	.L87
 jmp .UNIQUE1137
NOP
NOP
NOP
NOP
NOP
.UNIQUE1137: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1138
NOP
NOP
NOP
NOP
NOP
.UNIQUE1138: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1139
NOP
NOP
NOP
NOP
NOP
.UNIQUE1139: 
	cmpb	$-53, %al
 jmp .UNIQUE1140
NOP
NOP
NOP
NOP
NOP
.UNIQUE1140: 
	je	.L88
.L87:
 jmp .UNIQUE1141
NOP
NOP
NOP
NOP
NOP
.UNIQUE1141: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1142
NOP
NOP
NOP
NOP
NOP
.UNIQUE1142: 
	subq	$1, %rax
 jmp .UNIQUE1143
NOP
NOP
NOP
NOP
NOP
.UNIQUE1143: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1144
NOP
NOP
NOP
NOP
NOP
.UNIQUE1144: 
	cmpb	$17, %al
 jmp .UNIQUE1145
NOP
NOP
NOP
NOP
NOP
.UNIQUE1145: 
	jne	.L88
 jmp .UNIQUE1146
NOP
NOP
NOP
NOP
NOP
.UNIQUE1146: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1147
NOP
NOP
NOP
NOP
NOP
.UNIQUE1147: 
	subq	$2, %rax
 jmp .UNIQUE1148
NOP
NOP
NOP
NOP
NOP
.UNIQUE1148: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1149
NOP
NOP
NOP
NOP
NOP
.UNIQUE1149: 
	cmpb	$17, %al
 jmp .UNIQUE1150
NOP
NOP
NOP
NOP
NOP
.UNIQUE1150: 
	jne	.L88
 jmp .UNIQUE1151
NOP
NOP
NOP
NOP
NOP
.UNIQUE1151: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1152
NOP
NOP
NOP
NOP
NOP
.UNIQUE1152: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1153
NOP
NOP
NOP
NOP
NOP
.UNIQUE1153: 
	movzbl	%al, %eax
 jmp .UNIQUE1154
NOP
NOP
NOP
NOP
NOP
.UNIQUE1154: 
	movl	%eax, %esi
 jmp .UNIQUE1155
NOP
NOP
NOP
NOP
NOP
.UNIQUE1155: 
	movl	$.LC3, %edi
 jmp .UNIQUE1156
NOP
NOP
NOP
NOP
NOP
.UNIQUE1156: 
	movl	$0, %eax
 jmp .UNIQUE1157
NOP
NOP
NOP
NOP
NOP
.UNIQUE1157: 
	call	printf
 jmp .UNIQUE1158
NOP
NOP
NOP
NOP
NOP
.UNIQUE1158: 
	movl	$.LC34, %edi
 jmp .UNIQUE1159
NOP
NOP
NOP
NOP
NOP
.UNIQUE1159: 
	call	puts
 jmp .UNIQUE1160
NOP
NOP
NOP
NOP
NOP
.UNIQUE1160: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1161
NOP
NOP
NOP
NOP
NOP
.UNIQUE1161: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE1162
NOP
NOP
NOP
NOP
NOP
.UNIQUE1162: 
	jmp	.L89
.L91:
 jmp .UNIQUE1163
NOP
NOP
NOP
NOP
NOP
.UNIQUE1163: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1164
NOP
NOP
NOP
NOP
NOP
.UNIQUE1164: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1165
NOP
NOP
NOP
NOP
NOP
.UNIQUE1165: 
	cmpb	$-21, %al
 jmp .UNIQUE1166
NOP
NOP
NOP
NOP
NOP
.UNIQUE1166: 
	jne	.L90
 jmp .UNIQUE1167
NOP
NOP
NOP
NOP
NOP
.UNIQUE1167: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1168
NOP
NOP
NOP
NOP
NOP
.UNIQUE1168: 
	addq	$1, %rax
 jmp .UNIQUE1169
NOP
NOP
NOP
NOP
NOP
.UNIQUE1169: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1170
NOP
NOP
NOP
NOP
NOP
.UNIQUE1170: 
	cmpb	$5, %al
 jmp .UNIQUE1171
NOP
NOP
NOP
NOP
NOP
.UNIQUE1171: 
	jne	.L90
 jmp .UNIQUE1172
NOP
NOP
NOP
NOP
NOP
.UNIQUE1172: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1173
NOP
NOP
NOP
NOP
NOP
.UNIQUE1173: 
	addq	$2, %rax
 jmp .UNIQUE1174
NOP
NOP
NOP
NOP
NOP
.UNIQUE1174: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1175
NOP
NOP
NOP
NOP
NOP
.UNIQUE1175: 
	movzbl	%al, %eax
 jmp .UNIQUE1176
NOP
NOP
NOP
NOP
NOP
.UNIQUE1176: 
	movl	%eax, %esi
 jmp .UNIQUE1177
NOP
NOP
NOP
NOP
NOP
.UNIQUE1177: 
	movl	$.LC3, %edi
 jmp .UNIQUE1178
NOP
NOP
NOP
NOP
NOP
.UNIQUE1178: 
	movl	$0, %eax
 jmp .UNIQUE1179
NOP
NOP
NOP
NOP
NOP
.UNIQUE1179: 
	call	printf
 jmp .UNIQUE1180
NOP
NOP
NOP
NOP
NOP
.UNIQUE1180: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1181
NOP
NOP
NOP
NOP
NOP
.UNIQUE1181: 
	addq	$2, %rax
 jmp .UNIQUE1182
NOP
NOP
NOP
NOP
NOP
.UNIQUE1182: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1183
NOP
NOP
NOP
NOP
NOP
.UNIQUE1183: 
	movl	%eax, %edx
 jmp .UNIQUE1184
NOP
NOP
NOP
NOP
NOP
.UNIQUE1184: 
	movzbl	-65(%rbp), %eax
 jmp .UNIQUE1185
NOP
NOP
NOP
NOP
NOP
.UNIQUE1185: 
	xorl	%edx, %eax
 jmp .UNIQUE1186
NOP
NOP
NOP
NOP
NOP
.UNIQUE1186: 
	movb	%al, -65(%rbp)
 jmp .UNIQUE1187
NOP
NOP
NOP
NOP
NOP
.UNIQUE1187: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1188
NOP
NOP
NOP
NOP
NOP
.UNIQUE1188: 
	addq	$3, %rax
 jmp .UNIQUE1189
NOP
NOP
NOP
NOP
NOP
.UNIQUE1189: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1190
NOP
NOP
NOP
NOP
NOP
.UNIQUE1190: 
	movl	%eax, %edx
 jmp .UNIQUE1191
NOP
NOP
NOP
NOP
NOP
.UNIQUE1191: 
	movzbl	-64(%rbp), %eax
 jmp .UNIQUE1192
NOP
NOP
NOP
NOP
NOP
.UNIQUE1192: 
	xorl	%edx, %eax
 jmp .UNIQUE1193
NOP
NOP
NOP
NOP
NOP
.UNIQUE1193: 
	movb	%al, -64(%rbp)
 jmp .UNIQUE1194
NOP
NOP
NOP
NOP
NOP
.UNIQUE1194: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1195
NOP
NOP
NOP
NOP
NOP
.UNIQUE1195: 
	addq	$4, %rax
 jmp .UNIQUE1196
NOP
NOP
NOP
NOP
NOP
.UNIQUE1196: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1197
NOP
NOP
NOP
NOP
NOP
.UNIQUE1197: 
	movl	%eax, %edx
 jmp .UNIQUE1198
NOP
NOP
NOP
NOP
NOP
.UNIQUE1198: 
	movzbl	-63(%rbp), %eax
 jmp .UNIQUE1199
NOP
NOP
NOP
NOP
NOP
.UNIQUE1199: 
	xorl	%edx, %eax
 jmp .UNIQUE1200
NOP
NOP
NOP
NOP
NOP
.UNIQUE1200: 
	movb	%al, -63(%rbp)
 jmp .UNIQUE1201
NOP
NOP
NOP
NOP
NOP
.UNIQUE1201: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1202
NOP
NOP
NOP
NOP
NOP
.UNIQUE1202: 
	addq	$5, %rax
 jmp .UNIQUE1203
NOP
NOP
NOP
NOP
NOP
.UNIQUE1203: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1204
NOP
NOP
NOP
NOP
NOP
.UNIQUE1204: 
	movl	%eax, %edx
 jmp .UNIQUE1205
NOP
NOP
NOP
NOP
NOP
.UNIQUE1205: 
	movzbl	-62(%rbp), %eax
 jmp .UNIQUE1206
NOP
NOP
NOP
NOP
NOP
.UNIQUE1206: 
	xorl	%edx, %eax
 jmp .UNIQUE1207
NOP
NOP
NOP
NOP
NOP
.UNIQUE1207: 
	movb	%al, -62(%rbp)
 jmp .UNIQUE1208
NOP
NOP
NOP
NOP
NOP
.UNIQUE1208: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1209
NOP
NOP
NOP
NOP
NOP
.UNIQUE1209: 
	addq	$6, %rax
 jmp .UNIQUE1210
NOP
NOP
NOP
NOP
NOP
.UNIQUE1210: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1211
NOP
NOP
NOP
NOP
NOP
.UNIQUE1211: 
	movl	%eax, %edx
 jmp .UNIQUE1212
NOP
NOP
NOP
NOP
NOP
.UNIQUE1212: 
	movzbl	-61(%rbp), %eax
 jmp .UNIQUE1213
NOP
NOP
NOP
NOP
NOP
.UNIQUE1213: 
	xorl	%edx, %eax
 jmp .UNIQUE1214
NOP
NOP
NOP
NOP
NOP
.UNIQUE1214: 
	movb	%al, -61(%rbp)
 jmp .UNIQUE1215
NOP
NOP
NOP
NOP
NOP
.UNIQUE1215: 
	addl	$1, -60(%rbp)
.L90:
 jmp .UNIQUE1216
NOP
NOP
NOP
NOP
NOP
.UNIQUE1216: 
	addq	$1, -56(%rbp)
.L89:
 jmp .UNIQUE1217
NOP
NOP
NOP
NOP
NOP
.UNIQUE1217: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1218
NOP
NOP
NOP
NOP
NOP
.UNIQUE1218: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE1219
NOP
NOP
NOP
NOP
NOP
.UNIQUE1219: 
	jbe	.L91
 jmp .UNIQUE1220
NOP
NOP
NOP
NOP
NOP
.UNIQUE1220: 
	movl	$.LC39, %edi
 jmp .UNIQUE1221
NOP
NOP
NOP
NOP
NOP
.UNIQUE1221: 
	movl	$0, %eax
 jmp .UNIQUE1222
NOP
NOP
NOP
NOP
NOP
.UNIQUE1222: 
	call	printf
 jmp .UNIQUE1223
NOP
NOP
NOP
NOP
NOP
.UNIQUE1223: 
	movzbl	-65(%rbp), %eax
 jmp .UNIQUE1224
NOP
NOP
NOP
NOP
NOP
.UNIQUE1224: 
	movl	%eax, %esi
 jmp .UNIQUE1225
NOP
NOP
NOP
NOP
NOP
.UNIQUE1225: 
	movl	$.LC40, %edi
 jmp .UNIQUE1226
NOP
NOP
NOP
NOP
NOP
.UNIQUE1226: 
	movl	$0, %eax
 jmp .UNIQUE1227
NOP
NOP
NOP
NOP
NOP
.UNIQUE1227: 
	call	printf
 jmp .UNIQUE1228
NOP
NOP
NOP
NOP
NOP
.UNIQUE1228: 
	movzbl	-64(%rbp), %eax
 jmp .UNIQUE1229
NOP
NOP
NOP
NOP
NOP
.UNIQUE1229: 
	movl	%eax, %esi
 jmp .UNIQUE1230
NOP
NOP
NOP
NOP
NOP
.UNIQUE1230: 
	movl	$.LC41, %edi
 jmp .UNIQUE1231
NOP
NOP
NOP
NOP
NOP
.UNIQUE1231: 
	movl	$0, %eax
 jmp .UNIQUE1232
NOP
NOP
NOP
NOP
NOP
.UNIQUE1232: 
	call	printf
 jmp .UNIQUE1233
NOP
NOP
NOP
NOP
NOP
.UNIQUE1233: 
	movzbl	-63(%rbp), %eax
 jmp .UNIQUE1234
NOP
NOP
NOP
NOP
NOP
.UNIQUE1234: 
	movl	%eax, %esi
 jmp .UNIQUE1235
NOP
NOP
NOP
NOP
NOP
.UNIQUE1235: 
	movl	$.LC42, %edi
 jmp .UNIQUE1236
NOP
NOP
NOP
NOP
NOP
.UNIQUE1236: 
	movl	$0, %eax
 jmp .UNIQUE1237
NOP
NOP
NOP
NOP
NOP
.UNIQUE1237: 
	call	printf
 jmp .UNIQUE1238
NOP
NOP
NOP
NOP
NOP
.UNIQUE1238: 
	movzbl	-62(%rbp), %eax
 jmp .UNIQUE1239
NOP
NOP
NOP
NOP
NOP
.UNIQUE1239: 
	movl	%eax, %esi
 jmp .UNIQUE1240
NOP
NOP
NOP
NOP
NOP
.UNIQUE1240: 
	movl	$.LC43, %edi
 jmp .UNIQUE1241
NOP
NOP
NOP
NOP
NOP
.UNIQUE1241: 
	movl	$0, %eax
 jmp .UNIQUE1242
NOP
NOP
NOP
NOP
NOP
.UNIQUE1242: 
	call	printf
 jmp .UNIQUE1243
NOP
NOP
NOP
NOP
NOP
.UNIQUE1243: 
	movzbl	-61(%rbp), %eax
 jmp .UNIQUE1244
NOP
NOP
NOP
NOP
NOP
.UNIQUE1244: 
	movl	%eax, %esi
 jmp .UNIQUE1245
NOP
NOP
NOP
NOP
NOP
.UNIQUE1245: 
	movl	$.LC44, %edi
 jmp .UNIQUE1246
NOP
NOP
NOP
NOP
NOP
.UNIQUE1246: 
	movl	$0, %eax
 jmp .UNIQUE1247
NOP
NOP
NOP
NOP
NOP
.UNIQUE1247: 
	call	printf
 jmp .UNIQUE1248
NOP
NOP
NOP
NOP
NOP
.UNIQUE1248: 
	nop
 jmp .UNIQUE1249
NOP
NOP
NOP
NOP
NOP
.UNIQUE1249: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1250
NOP
NOP
NOP
NOP
NOP
.UNIQUE1250: 
	ret
	.cfi_endproc
.LFE27:
	.size	find_keyshares, .-find_keyshares
	.globl	foo
	.type	foo, @function
foo:
.LFB28:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1251
NOP
NOP
NOP
NOP
NOP
.UNIQUE1251: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1252
NOP
NOP
NOP
NOP
NOP
.UNIQUE1252: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1253
NOP
NOP
NOP
NOP
NOP
.UNIQUE1253: 
	movl	%edi, -20(%rbp)
 jmp .UNIQUE1254
NOP
NOP
NOP
NOP
NOP
.UNIQUE1254: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE1255
NOP
NOP
NOP
NOP
NOP
.UNIQUE1255: 
	addl	$2, %eax
 jmp .UNIQUE1256
NOP
NOP
NOP
NOP
NOP
.UNIQUE1256: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE1257
NOP
NOP
NOP
NOP
NOP
.UNIQUE1257: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE1258
NOP
NOP
NOP
NOP
NOP
.UNIQUE1258: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1259
NOP
NOP
NOP
NOP
NOP
.UNIQUE1259: 
	ret
	.cfi_endproc
.LFE28:
	.size	foo, .-foo
	.section	.rodata
.LC45:
	.string	"K=%d\n"
.LC46:
	.string	"n=%d\n"
.LC47:
	.string	"main is at %p\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB29:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1260
NOP
NOP
NOP
NOP
NOP
.UNIQUE1260: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1261
NOP
NOP
NOP
NOP
NOP
.UNIQUE1261: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1262
NOP
NOP
NOP
NOP
NOP
.UNIQUE1262: 
	subq	$48, %rsp
 jmp .UNIQUE1263
NOP
NOP
NOP
NOP
NOP
.UNIQUE1263: 
	movq	%fs:40, %rax
 jmp .UNIQUE1264
NOP
NOP
NOP
NOP
NOP
.UNIQUE1264: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1265
NOP
NOP
NOP
NOP
NOP
.UNIQUE1265: 
	xorl	%eax, %eax
 jmp .UNIQUE1266
NOP
NOP
NOP
NOP
NOP
.UNIQUE1266: 
	movl	$1, -48(%rbp)
 jmp .UNIQUE1267
NOP
NOP
NOP
NOP
NOP
.UNIQUE1267: 
	movl	$2, -40(%rbp)
 jmp .UNIQUE1268
NOP
NOP
NOP
NOP
NOP
.UNIQUE1268: 
	addl	$1, -40(%rbp)
 jmp .UNIQUE1269
NOP
NOP
NOP
NOP
NOP
.UNIQUE1269: 
	addl	$1, -40(%rbp)
 jmp .UNIQUE1270
NOP
NOP
NOP
NOP
NOP
.UNIQUE1270: 
	subl	$1, -40(%rbp)
 jmp .UNIQUE1271
NOP
NOP
NOP
NOP
NOP
.UNIQUE1271: 
	movl	-40(%rbp), %eax
 jmp .UNIQUE1272
NOP
NOP
NOP
NOP
NOP
.UNIQUE1272: 
	addl	%eax, -48(%rbp)
 jmp .UNIQUE1273
NOP
NOP
NOP
NOP
NOP
.UNIQUE1273: 
	addl	$2, -48(%rbp)
 jmp .UNIQUE1274
NOP
NOP
NOP
NOP
NOP
.UNIQUE1274: 
	addl	$1, -40(%rbp)
 jmp .UNIQUE1275
NOP
NOP
NOP
NOP
NOP
.UNIQUE1275: 
	movl	$1, -44(%rbp)
 jmp .UNIQUE1276
NOP
NOP
NOP
NOP
NOP
.UNIQUE1276: 
	jmp	.L96
.L97:
 jmp .UNIQUE1277
NOP
NOP
NOP
NOP
NOP
.UNIQUE1277: 
	movl	-40(%rbp), %eax
 jmp .UNIQUE1278
NOP
NOP
NOP
NOP
NOP
.UNIQUE1278: 
	addl	%eax, -48(%rbp)
 jmp .UNIQUE1279
NOP
NOP
NOP
NOP
NOP
.UNIQUE1279: 
	addl	$1, -44(%rbp)
.L96:
 jmp .UNIQUE1280
NOP
NOP
NOP
NOP
NOP
.UNIQUE1280: 
	cmpl	$500000000, -44(%rbp)
 jmp .UNIQUE1281
NOP
NOP
NOP
NOP
NOP
.UNIQUE1281: 
	jle	.L97
 jmp .UNIQUE1282
NOP
NOP
NOP
NOP
NOP
.UNIQUE1282: 
	movl	-48(%rbp), %eax
 jmp .UNIQUE1283
NOP
NOP
NOP
NOP
NOP
.UNIQUE1283: 
	movl	%eax, %esi
 jmp .UNIQUE1284
NOP
NOP
NOP
NOP
NOP
.UNIQUE1284: 
	movl	$.LC45, %edi
 jmp .UNIQUE1285
NOP
NOP
NOP
NOP
NOP
.UNIQUE1285: 
	movl	$0, %eax
 jmp .UNIQUE1286
NOP
NOP
NOP
NOP
NOP
.UNIQUE1286: 
	call	printf
 jmp .UNIQUE1287
NOP
NOP
NOP
NOP
NOP
.UNIQUE1287: 
	movl	$5, %edi
 jmp .UNIQUE1288
NOP
NOP
NOP
NOP
NOP
.UNIQUE1288: 
	call	foo
 jmp .UNIQUE1289
NOP
NOP
NOP
NOP
NOP
.UNIQUE1289: 
	movl	%eax, -36(%rbp)
 jmp .UNIQUE1290
NOP
NOP
NOP
NOP
NOP
.UNIQUE1290: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE1291
NOP
NOP
NOP
NOP
NOP
.UNIQUE1291: 
	movl	%eax, %edi
 jmp .UNIQUE1292
NOP
NOP
NOP
NOP
NOP
.UNIQUE1292: 
	call	foo2
 jmp .UNIQUE1293
NOP
NOP
NOP
NOP
NOP
.UNIQUE1293: 
	movl	%eax, -36(%rbp)
 jmp .UNIQUE1294
NOP
NOP
NOP
NOP
NOP
.UNIQUE1294: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE1295
NOP
NOP
NOP
NOP
NOP
.UNIQUE1295: 
	movl	%eax, %esi
 jmp .UNIQUE1296
NOP
NOP
NOP
NOP
NOP
.UNIQUE1296: 
	movl	$.LC46, %edi
 jmp .UNIQUE1297
NOP
NOP
NOP
NOP
NOP
.UNIQUE1297: 
	movl	$0, %eax
 jmp .UNIQUE1298
NOP
NOP
NOP
NOP
NOP
.UNIQUE1298: 
	call	printf
 jmp .UNIQUE1299
NOP
NOP
NOP
NOP
NOP
.UNIQUE1299: 
	movl	$main, %esi
 jmp .UNIQUE1300
NOP
NOP
NOP
NOP
NOP
.UNIQUE1300: 
	movl	$.LC47, %edi
 jmp .UNIQUE1301
NOP
NOP
NOP
NOP
NOP
.UNIQUE1301: 
	movl	$0, %eax
 jmp .UNIQUE1302
NOP
NOP
NOP
NOP
NOP
.UNIQUE1302: 
	call	printf
 jmp .UNIQUE1303
NOP
NOP
NOP
NOP
NOP
.UNIQUE1303: 
	movl	$0, %eax
 jmp .UNIQUE1304
NOP
NOP
NOP
NOP
NOP
.UNIQUE1304: 
	call	mem_test
 jmp .UNIQUE1305
NOP
NOP
NOP
NOP
NOP
.UNIQUE1305: 
	movl	$0, %eax
 jmp .UNIQUE1306
NOP
NOP
NOP
NOP
NOP
.UNIQUE1306: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1307
NOP
NOP
NOP
NOP
NOP
.UNIQUE1307: 
	xorq	%fs:40, %rdx
 jmp .UNIQUE1308
NOP
NOP
NOP
NOP
NOP
.UNIQUE1308: 
	je	.L99
 jmp .UNIQUE1309
NOP
NOP
NOP
NOP
NOP
.UNIQUE1309: 
	call	__stack_chk_fail
.L99:
 jmp .UNIQUE1310
NOP
NOP
NOP
NOP
NOP
.UNIQUE1310: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1311
NOP
NOP
NOP
NOP
NOP
.UNIQUE1311: 
	ret
	.cfi_endproc
.LFE29:
	.size	main, .-main
	.globl	foo2
	.type	foo2, @function
foo2:
.LFB30:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1312
NOP
NOP
NOP
NOP
NOP
.UNIQUE1312: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1313
NOP
NOP
NOP
NOP
NOP
.UNIQUE1313: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1314
NOP
NOP
NOP
NOP
NOP
.UNIQUE1314: 
	movl	%edi, -20(%rbp)
 jmp .UNIQUE1315
NOP
NOP
NOP
NOP
NOP
.UNIQUE1315: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE1316
NOP
NOP
NOP
NOP
NOP
.UNIQUE1316: 
	addl	$3, %eax
 jmp .UNIQUE1317
NOP
NOP
NOP
NOP
NOP
.UNIQUE1317: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE1318
NOP
NOP
NOP
NOP
NOP
.UNIQUE1318: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE1319
NOP
NOP
NOP
NOP
NOP
.UNIQUE1319: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1320
NOP
NOP
NOP
NOP
NOP
.UNIQUE1320: 
	ret
	.cfi_endproc
.LFE30:
	.size	foo2, .-foo2
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.1) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
