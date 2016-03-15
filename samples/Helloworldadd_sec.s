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
	movq	$1, -24(%rbp)
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
	movq	$1, -40(%rbp)
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
	cmpq	$0, -40(%rbp)
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
	addq	$1, -48(%rbp)
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
	cmpq	$0, -32(%rbp)
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
	addq	$1, -40(%rbp)
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
	subq	$96, %rsp
 jmp .UNIQUE251
NOP
NOP
NOP
NOP
NOP
.UNIQUE251: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE252
NOP
NOP
NOP
NOP
NOP
.UNIQUE252: 
	movq	%rsi, -80(%rbp)
 jmp .UNIQUE253
NOP
NOP
NOP
NOP
NOP
.UNIQUE253: 
	movl	%edx, -84(%rbp)
 jmp .UNIQUE254
NOP
NOP
NOP
NOP
NOP
.UNIQUE254: 
	movq	%rcx, -96(%rbp)
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
	movq	%rax, %rdi
 jmp .UNIQUE259
NOP
NOP
NOP
NOP
NOP
.UNIQUE259: 
	call	malloc
 jmp .UNIQUE260
NOP
NOP
NOP
NOP
NOP
.UNIQUE260: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE261
NOP
NOP
NOP
NOP
NOP
.UNIQUE261: 
	cmpq	$0, -16(%rbp)
 jmp .UNIQUE262
NOP
NOP
NOP
NOP
NOP
.UNIQUE262: 
	jne	.L31
 jmp .UNIQUE263
NOP
NOP
NOP
NOP
NOP
.UNIQUE263: 
	movl	$.LC4, %edi
 jmp .UNIQUE264
NOP
NOP
NOP
NOP
NOP
.UNIQUE264: 
	call	perror
 jmp .UNIQUE265
NOP
NOP
NOP
NOP
NOP
.UNIQUE265: 
	movl	$42, %edi
 jmp .UNIQUE266
NOP
NOP
NOP
NOP
NOP
.UNIQUE266: 
	call	exit
.L31:
 jmp .UNIQUE267
NOP
NOP
NOP
NOP
NOP
.UNIQUE267: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE268
NOP
NOP
NOP
NOP
NOP
.UNIQUE268: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE269
NOP
NOP
NOP
NOP
NOP
.UNIQUE269: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE270
NOP
NOP
NOP
NOP
NOP
.UNIQUE270: 
	cmpl	$0, -84(%rbp)
 jmp .UNIQUE271
NOP
NOP
NOP
NOP
NOP
.UNIQUE271: 
	je	.L32
 jmp .UNIQUE272
NOP
NOP
NOP
NOP
NOP
.UNIQUE272: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE273
NOP
NOP
NOP
NOP
NOP
.UNIQUE273: 
	imulq	-72(%rbp), %rax
 jmp .UNIQUE274
NOP
NOP
NOP
NOP
NOP
.UNIQUE274: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE275
NOP
NOP
NOP
NOP
NOP
.UNIQUE275: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE276
NOP
NOP
NOP
NOP
NOP
.UNIQUE276: 
	imulq	-72(%rbp), %rax
 jmp .UNIQUE277
NOP
NOP
NOP
NOP
NOP
.UNIQUE277: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE278
NOP
NOP
NOP
NOP
NOP
.UNIQUE278: 
	jne	.L33
 jmp .UNIQUE279
NOP
NOP
NOP
NOP
NOP
.UNIQUE279: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE280
NOP
NOP
NOP
NOP
NOP
.UNIQUE280: 
	movq	%rdx, %rax
 jmp .UNIQUE281
NOP
NOP
NOP
NOP
NOP
.UNIQUE281: 
	addq	%rax, %rax
 jmp .UNIQUE282
NOP
NOP
NOP
NOP
NOP
.UNIQUE282: 
	addq	%rdx, %rax
 jmp .UNIQUE283
NOP
NOP
NOP
NOP
NOP
.UNIQUE283: 
	addq	%rax, %rax
 jmp .UNIQUE284
NOP
NOP
NOP
NOP
NOP
.UNIQUE284: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE285
NOP
NOP
NOP
NOP
NOP
.UNIQUE285: 
	jmp	.L32
.L33:
 jmp .UNIQUE286
NOP
NOP
NOP
NOP
NOP
.UNIQUE286: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE287
NOP
NOP
NOP
NOP
NOP
.UNIQUE287: 
	movq	%rdx, %rax
 jmp .UNIQUE288
NOP
NOP
NOP
NOP
NOP
.UNIQUE288: 
	addq	%rax, %rax
 jmp .UNIQUE289
NOP
NOP
NOP
NOP
NOP
.UNIQUE289: 
	addq	%rdx, %rax
 jmp .UNIQUE290
NOP
NOP
NOP
NOP
NOP
.UNIQUE290: 
	addq	%rax, %rax
 jmp .UNIQUE291
NOP
NOP
NOP
NOP
NOP
.UNIQUE291: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE292
NOP
NOP
NOP
NOP
NOP
.UNIQUE292: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE293
NOP
NOP
NOP
NOP
NOP
.UNIQUE293: 
	imulq	-72(%rbp), %rax
 jmp .UNIQUE294
NOP
NOP
NOP
NOP
NOP
.UNIQUE294: 
	subq	-8(%rbp), %rax
 jmp .UNIQUE295
NOP
NOP
NOP
NOP
NOP
.UNIQUE295: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE296
NOP
NOP
NOP
NOP
NOP
.UNIQUE296: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE297
NOP
NOP
NOP
NOP
NOP
.UNIQUE297: 
	jmp	.L34
.L36:
 jmp .UNIQUE298
NOP
NOP
NOP
NOP
NOP
.UNIQUE298: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE299
NOP
NOP
NOP
NOP
NOP
.UNIQUE299: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE300
NOP
NOP
NOP
NOP
NOP
.UNIQUE300: 
	addq	%rdx, %rax
 jmp .UNIQUE301
NOP
NOP
NOP
NOP
NOP
.UNIQUE301: 
	movq	%rax, %rdx
 jmp .UNIQUE302
NOP
NOP
NOP
NOP
NOP
.UNIQUE302: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE303
NOP
NOP
NOP
NOP
NOP
.UNIQUE303: 
	addq	%rax, %rdx
 jmp .UNIQUE304
NOP
NOP
NOP
NOP
NOP
.UNIQUE304: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE305
NOP
NOP
NOP
NOP
NOP
.UNIQUE305: 
	movq	-48(%rbp), %rcx
 jmp .UNIQUE306
NOP
NOP
NOP
NOP
NOP
.UNIQUE306: 
	addq	%rcx, %rax
 jmp .UNIQUE307
NOP
NOP
NOP
NOP
NOP
.UNIQUE307: 
	movq	%rax, %rcx
 jmp .UNIQUE308
NOP
NOP
NOP
NOP
NOP
.UNIQUE308: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE309
NOP
NOP
NOP
NOP
NOP
.UNIQUE309: 
	addq	%rcx, %rax
 jmp .UNIQUE310
NOP
NOP
NOP
NOP
NOP
.UNIQUE310: 
	movzbl	(%rax), %eax
 jmp .UNIQUE311
NOP
NOP
NOP
NOP
NOP
.UNIQUE311: 
	movb	%al, (%rdx)
 jmp .UNIQUE312
NOP
NOP
NOP
NOP
NOP
.UNIQUE312: 
	addq	$1, -40(%rbp)
.L34:
 jmp .UNIQUE313
NOP
NOP
NOP
NOP
NOP
.UNIQUE313: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE314
NOP
NOP
NOP
NOP
NOP
.UNIQUE314: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE315
NOP
NOP
NOP
NOP
NOP
.UNIQUE315: 
	addq	%rdx, %rax
 jmp .UNIQUE316
NOP
NOP
NOP
NOP
NOP
.UNIQUE316: 
	testq	%rax, %rax
 jmp .UNIQUE317
NOP
NOP
NOP
NOP
NOP
.UNIQUE317: 
	jg	.L35
 jmp .UNIQUE318
NOP
NOP
NOP
NOP
NOP
.UNIQUE318: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE319
NOP
NOP
NOP
NOP
NOP
.UNIQUE319: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE320
NOP
NOP
NOP
NOP
NOP
.UNIQUE320: 
	addq	%rdx, %rax
 jmp .UNIQUE321
NOP
NOP
NOP
NOP
NOP
.UNIQUE321: 
	cmpq	-72(%rbp), %rax
 jmp .UNIQUE322
NOP
NOP
NOP
NOP
NOP
.UNIQUE322: 
	jl	.L36
.L35:
 jmp .UNIQUE323
NOP
NOP
NOP
NOP
NOP
.UNIQUE323: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE324
NOP
NOP
NOP
NOP
NOP
.UNIQUE324: 
	addq	%rax, -24(%rbp)
 jmp .UNIQUE325
NOP
NOP
NOP
NOP
NOP
.UNIQUE325: 
	addq	$6, -32(%rbp)
 jmp .UNIQUE326
NOP
NOP
NOP
NOP
NOP
.UNIQUE326: 
	jmp	.L37
.L32:
 jmp .UNIQUE327
NOP
NOP
NOP
NOP
NOP
.UNIQUE327: 
	jmp	.L37
.L42:
 jmp .UNIQUE328
NOP
NOP
NOP
NOP
NOP
.UNIQUE328: 
	cmpl	$0, -60(%rbp)
 jmp .UNIQUE329
NOP
NOP
NOP
NOP
NOP
.UNIQUE329: 
	je	.L38
 jmp .UNIQUE330
NOP
NOP
NOP
NOP
NOP
.UNIQUE330: 
	addq	$5, -56(%rbp)
 jmp .UNIQUE331
NOP
NOP
NOP
NOP
NOP
.UNIQUE331: 
	movl	$0, -60(%rbp)
 jmp .UNIQUE332
NOP
NOP
NOP
NOP
NOP
.UNIQUE332: 
	jmp	.L37
.L38:
 jmp .UNIQUE333
NOP
NOP
NOP
NOP
NOP
.UNIQUE333: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE334
NOP
NOP
NOP
NOP
NOP
.UNIQUE334: 
	jmp	.L39
.L41:
 jmp .UNIQUE335
NOP
NOP
NOP
NOP
NOP
.UNIQUE335: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE336
NOP
NOP
NOP
NOP
NOP
.UNIQUE336: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE337
NOP
NOP
NOP
NOP
NOP
.UNIQUE337: 
	addq	%rdx, %rax
 jmp .UNIQUE338
NOP
NOP
NOP
NOP
NOP
.UNIQUE338: 
	movq	%rax, %rdx
 jmp .UNIQUE339
NOP
NOP
NOP
NOP
NOP
.UNIQUE339: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE340
NOP
NOP
NOP
NOP
NOP
.UNIQUE340: 
	addq	%rax, %rdx
 jmp .UNIQUE341
NOP
NOP
NOP
NOP
NOP
.UNIQUE341: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE342
NOP
NOP
NOP
NOP
NOP
.UNIQUE342: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE343
NOP
NOP
NOP
NOP
NOP
.UNIQUE343: 
	addq	%rcx, %rax
 jmp .UNIQUE344
NOP
NOP
NOP
NOP
NOP
.UNIQUE344: 
	movq	%rax, %rcx
 jmp .UNIQUE345
NOP
NOP
NOP
NOP
NOP
.UNIQUE345: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE346
NOP
NOP
NOP
NOP
NOP
.UNIQUE346: 
	addq	%rcx, %rax
 jmp .UNIQUE347
NOP
NOP
NOP
NOP
NOP
.UNIQUE347: 
	movzbl	(%rax), %eax
 jmp .UNIQUE348
NOP
NOP
NOP
NOP
NOP
.UNIQUE348: 
	movb	%al, (%rdx)
 jmp .UNIQUE349
NOP
NOP
NOP
NOP
NOP
.UNIQUE349: 
	addq	$1, -48(%rbp)
.L39:
 jmp .UNIQUE350
NOP
NOP
NOP
NOP
NOP
.UNIQUE350: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE351
NOP
NOP
NOP
NOP
NOP
.UNIQUE351: 
	jg	.L40
 jmp .UNIQUE352
NOP
NOP
NOP
NOP
NOP
.UNIQUE352: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE353
NOP
NOP
NOP
NOP
NOP
.UNIQUE353: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE354
NOP
NOP
NOP
NOP
NOP
.UNIQUE354: 
	addq	%rdx, %rax
 jmp .UNIQUE355
NOP
NOP
NOP
NOP
NOP
.UNIQUE355: 
	cmpq	-72(%rbp), %rax
 jmp .UNIQUE356
NOP
NOP
NOP
NOP
NOP
.UNIQUE356: 
	jl	.L41
.L40:
 jmp .UNIQUE357
NOP
NOP
NOP
NOP
NOP
.UNIQUE357: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE358
NOP
NOP
NOP
NOP
NOP
.UNIQUE358: 
	addq	%rax, -24(%rbp)
 jmp .UNIQUE359
NOP
NOP
NOP
NOP
NOP
.UNIQUE359: 
	addq	$1, -56(%rbp)
 jmp .UNIQUE360
NOP
NOP
NOP
NOP
NOP
.UNIQUE360: 
	movl	$1, -60(%rbp)
.L37:
 jmp .UNIQUE361
NOP
NOP
NOP
NOP
NOP
.UNIQUE361: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE362
NOP
NOP
NOP
NOP
NOP
.UNIQUE362: 
	cmpq	-72(%rbp), %rax
 jmp .UNIQUE363
NOP
NOP
NOP
NOP
NOP
.UNIQUE363: 
	jl	.L42
 jmp .UNIQUE364
NOP
NOP
NOP
NOP
NOP
.UNIQUE364: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE365
NOP
NOP
NOP
NOP
NOP
.UNIQUE365: 
	leave
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
	movq	$1, -8(%rbp)
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
	.globl	insert_data_into_normal_array
	.type	insert_data_into_normal_array, @function
insert_data_into_normal_array:
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
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE412
NOP
NOP
NOP
NOP
NOP
.UNIQUE412: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE413
NOP
NOP
NOP
NOP
NOP
.UNIQUE413: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE414
NOP
NOP
NOP
NOP
NOP
.UNIQUE414: 
	movl	$0, -4(%rbp)
 jmp .UNIQUE415
NOP
NOP
NOP
NOP
NOP
.UNIQUE415: 
	jmp	.L50
.L51:
 jmp .UNIQUE416
NOP
NOP
NOP
NOP
NOP
.UNIQUE416: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE417
NOP
NOP
NOP
NOP
NOP
.UNIQUE417: 
	movslq	%eax, %rdx
 jmp .UNIQUE418
NOP
NOP
NOP
NOP
NOP
.UNIQUE418: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE419
NOP
NOP
NOP
NOP
NOP
.UNIQUE419: 
	addq	%rax, %rdx
 jmp .UNIQUE420
NOP
NOP
NOP
NOP
NOP
.UNIQUE420: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE421
NOP
NOP
NOP
NOP
NOP
.UNIQUE421: 
	movslq	%eax, %rcx
 jmp .UNIQUE422
NOP
NOP
NOP
NOP
NOP
.UNIQUE422: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE423
NOP
NOP
NOP
NOP
NOP
.UNIQUE423: 
	addq	%rcx, %rax
 jmp .UNIQUE424
NOP
NOP
NOP
NOP
NOP
.UNIQUE424: 
	movzbl	(%rax), %eax
 jmp .UNIQUE425
NOP
NOP
NOP
NOP
NOP
.UNIQUE425: 
	movb	%al, (%rdx)
 jmp .UNIQUE426
NOP
NOP
NOP
NOP
NOP
.UNIQUE426: 
	addl	$1, -4(%rbp)
.L50:
 jmp .UNIQUE427
NOP
NOP
NOP
NOP
NOP
.UNIQUE427: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE428
NOP
NOP
NOP
NOP
NOP
.UNIQUE428: 
	cltq
 jmp .UNIQUE429
NOP
NOP
NOP
NOP
NOP
.UNIQUE429: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE430
NOP
NOP
NOP
NOP
NOP
.UNIQUE430: 
	jl	.L51
 jmp .UNIQUE431
NOP
NOP
NOP
NOP
NOP
.UNIQUE431: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE432
NOP
NOP
NOP
NOP
NOP
.UNIQUE432: 
	ret
	.cfi_endproc
.LFE12:
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
	.align 8
.LC23:
	.string	"After data retrieval, print mem"
.LC24:
	.string	"Mem test done"
	.text
	.globl	mem_test
	.type	mem_test, @function
mem_test:
.LFB13:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE433
NOP
NOP
NOP
NOP
NOP
.UNIQUE433: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE434
NOP
NOP
NOP
NOP
NOP
.UNIQUE434: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE435
NOP
NOP
NOP
NOP
NOP
.UNIQUE435: 
	subq	$80, %rsp
 jmp .UNIQUE436
NOP
NOP
NOP
NOP
NOP
.UNIQUE436: 
	movq	$20, -56(%rbp)
 jmp .UNIQUE437
NOP
NOP
NOP
NOP
NOP
.UNIQUE437: 
	movl	$0, %esi
 jmp .UNIQUE438
NOP
NOP
NOP
NOP
NOP
.UNIQUE438: 
	movl	$.LC5, %edi
 jmp .UNIQUE439
NOP
NOP
NOP
NOP
NOP
.UNIQUE439: 
	movl	$0, %eax
 jmp .UNIQUE440
NOP
NOP
NOP
NOP
NOP
.UNIQUE440: 
	call	printf
 jmp .UNIQUE441
NOP
NOP
NOP
NOP
NOP
.UNIQUE441: 
	movl	$.LC6, %edi
 jmp .UNIQUE442
NOP
NOP
NOP
NOP
NOP
.UNIQUE442: 
	call	puts
 jmp .UNIQUE443
NOP
NOP
NOP
NOP
NOP
.UNIQUE443: 
	movl	$1024, %esi
 jmp .UNIQUE444
NOP
NOP
NOP
NOP
NOP
.UNIQUE444: 
	movl	$.LC7, %edi
 jmp .UNIQUE445
NOP
NOP
NOP
NOP
NOP
.UNIQUE445: 
	movl	$0, %eax
 jmp .UNIQUE446
NOP
NOP
NOP
NOP
NOP
.UNIQUE446: 
	call	printf
 jmp .UNIQUE447
NOP
NOP
NOP
NOP
NOP
.UNIQUE447: 
	movl	$.LC8, %edi
 jmp .UNIQUE448
NOP
NOP
NOP
NOP
NOP
.UNIQUE448: 
	call	puts
 jmp .UNIQUE449
NOP
NOP
NOP
NOP
NOP
.UNIQUE449: 
	movl	$0, %eax
 jmp .UNIQUE450
NOP
NOP
NOP
NOP
NOP
.UNIQUE450: 
	call	init_mem
 jmp .UNIQUE451
NOP
NOP
NOP
NOP
NOP
.UNIQUE451: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE452
NOP
NOP
NOP
NOP
NOP
.UNIQUE452: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE453
NOP
NOP
NOP
NOP
NOP
.UNIQUE453: 
	movq	%rax, %rsi
 jmp .UNIQUE454
NOP
NOP
NOP
NOP
NOP
.UNIQUE454: 
	movl	$.LC9, %edi
 jmp .UNIQUE455
NOP
NOP
NOP
NOP
NOP
.UNIQUE455: 
	movl	$0, %eax
 jmp .UNIQUE456
NOP
NOP
NOP
NOP
NOP
.UNIQUE456: 
	call	printf
 jmp .UNIQUE457
NOP
NOP
NOP
NOP
NOP
.UNIQUE457: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE458
NOP
NOP
NOP
NOP
NOP
.UNIQUE458: 
	movq	%rax, %rdi
 jmp .UNIQUE459
NOP
NOP
NOP
NOP
NOP
.UNIQUE459: 
	call	find_useful_chunks
 jmp .UNIQUE460
NOP
NOP
NOP
NOP
NOP
.UNIQUE460: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE461
NOP
NOP
NOP
NOP
NOP
.UNIQUE461: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE462
NOP
NOP
NOP
NOP
NOP
.UNIQUE462: 
	movq	%rax, %rsi
 jmp .UNIQUE463
NOP
NOP
NOP
NOP
NOP
.UNIQUE463: 
	movl	$.LC10, %edi
 jmp .UNIQUE464
NOP
NOP
NOP
NOP
NOP
.UNIQUE464: 
	movl	$0, %eax
 jmp .UNIQUE465
NOP
NOP
NOP
NOP
NOP
.UNIQUE465: 
	call	printf
 jmp .UNIQUE466
NOP
NOP
NOP
NOP
NOP
.UNIQUE466: 
	movl	$.LC11, %edi
 jmp .UNIQUE467
NOP
NOP
NOP
NOP
NOP
.UNIQUE467: 
	call	puts
 jmp .UNIQUE468
NOP
NOP
NOP
NOP
NOP
.UNIQUE468: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE469
NOP
NOP
NOP
NOP
NOP
.UNIQUE469: 
	movq	%rax, %rdi
 jmp .UNIQUE470
NOP
NOP
NOP
NOP
NOP
.UNIQUE470: 
	call	print_mem
 jmp .UNIQUE471
NOP
NOP
NOP
NOP
NOP
.UNIQUE471: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE472
NOP
NOP
NOP
NOP
NOP
.UNIQUE472: 
	salq	$2, %rax
 jmp .UNIQUE473
NOP
NOP
NOP
NOP
NOP
.UNIQUE473: 
	movq	%rax, %rdi
 jmp .UNIQUE474
NOP
NOP
NOP
NOP
NOP
.UNIQUE474: 
	call	malloc
 jmp .UNIQUE475
NOP
NOP
NOP
NOP
NOP
.UNIQUE475: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE476
NOP
NOP
NOP
NOP
NOP
.UNIQUE476: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE477
NOP
NOP
NOP
NOP
NOP
.UNIQUE477: 
	salq	$2, %rax
 jmp .UNIQUE478
NOP
NOP
NOP
NOP
NOP
.UNIQUE478: 
	movq	%rax, %rdi
 jmp .UNIQUE479
NOP
NOP
NOP
NOP
NOP
.UNIQUE479: 
	call	malloc
 jmp .UNIQUE480
NOP
NOP
NOP
NOP
NOP
.UNIQUE480: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE481
NOP
NOP
NOP
NOP
NOP
.UNIQUE481: 
	movq	$5, -72(%rbp)
 jmp .UNIQUE482
NOP
NOP
NOP
NOP
NOP
.UNIQUE482: 
	jmp	.L53
.L54:
 jmp .UNIQUE483
NOP
NOP
NOP
NOP
NOP
.UNIQUE483: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE484
NOP
NOP
NOP
NOP
NOP
.UNIQUE484: 
	salq	$2, %rax
 jmp .UNIQUE485
NOP
NOP
NOP
NOP
NOP
.UNIQUE485: 
	leaq	-20(%rax), %rdx
 jmp .UNIQUE486
NOP
NOP
NOP
NOP
NOP
.UNIQUE486: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE487
NOP
NOP
NOP
NOP
NOP
.UNIQUE487: 
	addq	%rax, %rdx
 jmp .UNIQUE488
NOP
NOP
NOP
NOP
NOP
.UNIQUE488: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE489
NOP
NOP
NOP
NOP
NOP
.UNIQUE489: 
	movl	%eax, %ecx
 jmp .UNIQUE490
NOP
NOP
NOP
NOP
NOP
.UNIQUE490: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE491
NOP
NOP
NOP
NOP
NOP
.UNIQUE491: 
	imull	%ecx, %eax
 jmp .UNIQUE492
NOP
NOP
NOP
NOP
NOP
.UNIQUE492: 
	movl	%eax, (%rdx)
 jmp .UNIQUE493
NOP
NOP
NOP
NOP
NOP
.UNIQUE493: 
	addq	$1, -72(%rbp)
.L53:
 jmp .UNIQUE494
NOP
NOP
NOP
NOP
NOP
.UNIQUE494: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE495
NOP
NOP
NOP
NOP
NOP
.UNIQUE495: 
	addq	$5, %rax
 jmp .UNIQUE496
NOP
NOP
NOP
NOP
NOP
.UNIQUE496: 
	cmpq	-72(%rbp), %rax
 jmp .UNIQUE497
NOP
NOP
NOP
NOP
NOP
.UNIQUE497: 
	jg	.L54
 jmp .UNIQUE498
NOP
NOP
NOP
NOP
NOP
.UNIQUE498: 
	movl	$.LC12, %edi
 jmp .UNIQUE499
NOP
NOP
NOP
NOP
NOP
.UNIQUE499: 
	call	puts
 jmp .UNIQUE500
NOP
NOP
NOP
NOP
NOP
.UNIQUE500: 
	movq	last_unused_memory(%rip), %rax
 jmp .UNIQUE501
NOP
NOP
NOP
NOP
NOP
.UNIQUE501: 
	movq	%rax, %rsi
 jmp .UNIQUE502
NOP
NOP
NOP
NOP
NOP
.UNIQUE502: 
	movl	$.LC13, %edi
 jmp .UNIQUE503
NOP
NOP
NOP
NOP
NOP
.UNIQUE503: 
	movl	$0, %eax
 jmp .UNIQUE504
NOP
NOP
NOP
NOP
NOP
.UNIQUE504: 
	call	printf
 jmp .UNIQUE505
NOP
NOP
NOP
NOP
NOP
.UNIQUE505: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE506
NOP
NOP
NOP
NOP
NOP
.UNIQUE506: 
	salq	$2, %rax
 jmp .UNIQUE507
NOP
NOP
NOP
NOP
NOP
.UNIQUE507: 
	movq	%rax, %rdi
 jmp .UNIQUE508
NOP
NOP
NOP
NOP
NOP
.UNIQUE508: 
	call	secure_malloc
 jmp .UNIQUE509
NOP
NOP
NOP
NOP
NOP
.UNIQUE509: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE510
NOP
NOP
NOP
NOP
NOP
.UNIQUE510: 
	cmpq	$0, -16(%rbp)
 jmp .UNIQUE511
NOP
NOP
NOP
NOP
NOP
.UNIQUE511: 
	jne	.L55
 jmp .UNIQUE512
NOP
NOP
NOP
NOP
NOP
.UNIQUE512: 
	movl	$.LC14, %edi
 jmp .UNIQUE513
NOP
NOP
NOP
NOP
NOP
.UNIQUE513: 
	call	perror
 jmp .UNIQUE514
NOP
NOP
NOP
NOP
NOP
.UNIQUE514: 
	movl	$42, %edi
 jmp .UNIQUE515
NOP
NOP
NOP
NOP
NOP
.UNIQUE515: 
	call	exit
.L55:
 jmp .UNIQUE516
NOP
NOP
NOP
NOP
NOP
.UNIQUE516: 
	movq	last_unused_memory(%rip), %rax
 jmp .UNIQUE517
NOP
NOP
NOP
NOP
NOP
.UNIQUE517: 
	movq	%rax, %rsi
 jmp .UNIQUE518
NOP
NOP
NOP
NOP
NOP
.UNIQUE518: 
	movl	$.LC15, %edi
 jmp .UNIQUE519
NOP
NOP
NOP
NOP
NOP
.UNIQUE519: 
	movl	$0, %eax
 jmp .UNIQUE520
NOP
NOP
NOP
NOP
NOP
.UNIQUE520: 
	call	printf
 jmp .UNIQUE521
NOP
NOP
NOP
NOP
NOP
.UNIQUE521: 
	movl	$.LC16, %edi
 jmp .UNIQUE522
NOP
NOP
NOP
NOP
NOP
.UNIQUE522: 
	call	puts
 jmp .UNIQUE523
NOP
NOP
NOP
NOP
NOP
.UNIQUE523: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE524
NOP
NOP
NOP
NOP
NOP
.UNIQUE524: 
	salq	$2, %rax
 jmp .UNIQUE525
NOP
NOP
NOP
NOP
NOP
.UNIQUE525: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE526
NOP
NOP
NOP
NOP
NOP
.UNIQUE526: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE527
NOP
NOP
NOP
NOP
NOP
.UNIQUE527: 
	movq	%rcx, %rsi
 jmp .UNIQUE528
NOP
NOP
NOP
NOP
NOP
.UNIQUE528: 
	movq	%rax, %rdi
 jmp .UNIQUE529
NOP
NOP
NOP
NOP
NOP
.UNIQUE529: 
	call	insert_data_into_mem
 jmp .UNIQUE530
NOP
NOP
NOP
NOP
NOP
.UNIQUE530: 
	movl	$.LC17, %edi
 jmp .UNIQUE531
NOP
NOP
NOP
NOP
NOP
.UNIQUE531: 
	call	puts
 jmp .UNIQUE532
NOP
NOP
NOP
NOP
NOP
.UNIQUE532: 
	movq	$0, -64(%rbp)
 jmp .UNIQUE533
NOP
NOP
NOP
NOP
NOP
.UNIQUE533: 
	jmp	.L56
.L57:
 jmp .UNIQUE534
NOP
NOP
NOP
NOP
NOP
.UNIQUE534: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE535
NOP
NOP
NOP
NOP
NOP
.UNIQUE535: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE536
NOP
NOP
NOP
NOP
NOP
.UNIQUE536: 
	movq	%rdx, %rcx
 jmp .UNIQUE537
NOP
NOP
NOP
NOP
NOP
.UNIQUE537: 
	movl	$1, %edx
 jmp .UNIQUE538
NOP
NOP
NOP
NOP
NOP
.UNIQUE538: 
	movq	%rax, %rsi
 jmp .UNIQUE539
NOP
NOP
NOP
NOP
NOP
.UNIQUE539: 
	movl	$4, %edi
 jmp .UNIQUE540
NOP
NOP
NOP
NOP
NOP
.UNIQUE540: 
	call	get_secure_data
 jmp .UNIQUE541
NOP
NOP
NOP
NOP
NOP
.UNIQUE541: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE542
NOP
NOP
NOP
NOP
NOP
.UNIQUE542: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE543
NOP
NOP
NOP
NOP
NOP
.UNIQUE543: 
	movl	(%rax), %eax
 jmp .UNIQUE544
NOP
NOP
NOP
NOP
NOP
.UNIQUE544: 
	movl	%eax, %esi
 jmp .UNIQUE545
NOP
NOP
NOP
NOP
NOP
.UNIQUE545: 
	movl	$.LC18, %edi
 jmp .UNIQUE546
NOP
NOP
NOP
NOP
NOP
.UNIQUE546: 
	movl	$0, %eax
 jmp .UNIQUE547
NOP
NOP
NOP
NOP
NOP
.UNIQUE547: 
	call	printf
 jmp .UNIQUE548
NOP
NOP
NOP
NOP
NOP
.UNIQUE548: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE549
NOP
NOP
NOP
NOP
NOP
.UNIQUE549: 
	movq	%rax, %rdi
 jmp .UNIQUE550
NOP
NOP
NOP
NOP
NOP
.UNIQUE550: 
	call	free
 jmp .UNIQUE551
NOP
NOP
NOP
NOP
NOP
.UNIQUE551: 
	addq	$1, -64(%rbp)
.L56:
 jmp .UNIQUE552
NOP
NOP
NOP
NOP
NOP
.UNIQUE552: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE553
NOP
NOP
NOP
NOP
NOP
.UNIQUE553: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE554
NOP
NOP
NOP
NOP
NOP
.UNIQUE554: 
	jl	.L57
 jmp .UNIQUE555
NOP
NOP
NOP
NOP
NOP
.UNIQUE555: 
	movl	$10, %edi
 jmp .UNIQUE556
NOP
NOP
NOP
NOP
NOP
.UNIQUE556: 
	call	putchar
 jmp .UNIQUE557
NOP
NOP
NOP
NOP
NOP
.UNIQUE557: 
	movl	$.LC19, %edi
 jmp .UNIQUE558
NOP
NOP
NOP
NOP
NOP
.UNIQUE558: 
	call	puts
 jmp .UNIQUE559
NOP
NOP
NOP
NOP
NOP
.UNIQUE559: 
	movq	last_unused_memory(%rip), %rax
 jmp .UNIQUE560
NOP
NOP
NOP
NOP
NOP
.UNIQUE560: 
	movq	%rax, %rsi
 jmp .UNIQUE561
NOP
NOP
NOP
NOP
NOP
.UNIQUE561: 
	movl	$.LC13, %edi
 jmp .UNIQUE562
NOP
NOP
NOP
NOP
NOP
.UNIQUE562: 
	movl	$0, %eax
 jmp .UNIQUE563
NOP
NOP
NOP
NOP
NOP
.UNIQUE563: 
	call	printf
 jmp .UNIQUE564
NOP
NOP
NOP
NOP
NOP
.UNIQUE564: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE565
NOP
NOP
NOP
NOP
NOP
.UNIQUE565: 
	salq	$2, %rax
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
	call	secure_malloc
 jmp .UNIQUE568
NOP
NOP
NOP
NOP
NOP
.UNIQUE568: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE569
NOP
NOP
NOP
NOP
NOP
.UNIQUE569: 
	cmpq	$0, -16(%rbp)
 jmp .UNIQUE570
NOP
NOP
NOP
NOP
NOP
.UNIQUE570: 
	jne	.L58
 jmp .UNIQUE571
NOP
NOP
NOP
NOP
NOP
.UNIQUE571: 
	movl	$.LC14, %edi
 jmp .UNIQUE572
NOP
NOP
NOP
NOP
NOP
.UNIQUE572: 
	call	perror
 jmp .UNIQUE573
NOP
NOP
NOP
NOP
NOP
.UNIQUE573: 
	movl	$42, %edi
 jmp .UNIQUE574
NOP
NOP
NOP
NOP
NOP
.UNIQUE574: 
	call	exit
.L58:
 jmp .UNIQUE575
NOP
NOP
NOP
NOP
NOP
.UNIQUE575: 
	movq	last_unused_memory(%rip), %rax
 jmp .UNIQUE576
NOP
NOP
NOP
NOP
NOP
.UNIQUE576: 
	movq	%rax, %rsi
 jmp .UNIQUE577
NOP
NOP
NOP
NOP
NOP
.UNIQUE577: 
	movl	$.LC15, %edi
 jmp .UNIQUE578
NOP
NOP
NOP
NOP
NOP
.UNIQUE578: 
	movl	$0, %eax
 jmp .UNIQUE579
NOP
NOP
NOP
NOP
NOP
.UNIQUE579: 
	call	printf
 jmp .UNIQUE580
NOP
NOP
NOP
NOP
NOP
.UNIQUE580: 
	movq	$5, -72(%rbp)
 jmp .UNIQUE581
NOP
NOP
NOP
NOP
NOP
.UNIQUE581: 
	jmp	.L59
.L60:
 jmp .UNIQUE582
NOP
NOP
NOP
NOP
NOP
.UNIQUE582: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE583
NOP
NOP
NOP
NOP
NOP
.UNIQUE583: 
	salq	$2, %rax
 jmp .UNIQUE584
NOP
NOP
NOP
NOP
NOP
.UNIQUE584: 
	leaq	-20(%rax), %rdx
 jmp .UNIQUE585
NOP
NOP
NOP
NOP
NOP
.UNIQUE585: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE586
NOP
NOP
NOP
NOP
NOP
.UNIQUE586: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE587
NOP
NOP
NOP
NOP
NOP
.UNIQUE587: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE588
NOP
NOP
NOP
NOP
NOP
.UNIQUE588: 
	movl	%eax, %edx
 jmp .UNIQUE589
NOP
NOP
NOP
NOP
NOP
.UNIQUE589: 
	movl	%edx, %eax
 jmp .UNIQUE590
NOP
NOP
NOP
NOP
NOP
.UNIQUE590: 
	addl	%eax, %eax
 jmp .UNIQUE591
NOP
NOP
NOP
NOP
NOP
.UNIQUE591: 
	addl	%edx, %eax
 jmp .UNIQUE592
NOP
NOP
NOP
NOP
NOP
.UNIQUE592: 
	movl	%eax, (%rcx)
 jmp .UNIQUE593
NOP
NOP
NOP
NOP
NOP
.UNIQUE593: 
	addq	$1, -72(%rbp)
.L59:
 jmp .UNIQUE594
NOP
NOP
NOP
NOP
NOP
.UNIQUE594: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE595
NOP
NOP
NOP
NOP
NOP
.UNIQUE595: 
	addq	$5, %rax
 jmp .UNIQUE596
NOP
NOP
NOP
NOP
NOP
.UNIQUE596: 
	cmpq	-72(%rbp), %rax
 jmp .UNIQUE597
NOP
NOP
NOP
NOP
NOP
.UNIQUE597: 
	jg	.L60
 jmp .UNIQUE598
NOP
NOP
NOP
NOP
NOP
.UNIQUE598: 
	movl	$.LC20, %edi
 jmp .UNIQUE599
NOP
NOP
NOP
NOP
NOP
.UNIQUE599: 
	call	puts
 jmp .UNIQUE600
NOP
NOP
NOP
NOP
NOP
.UNIQUE600: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE601
NOP
NOP
NOP
NOP
NOP
.UNIQUE601: 
	salq	$2, %rax
 jmp .UNIQUE602
NOP
NOP
NOP
NOP
NOP
.UNIQUE602: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE603
NOP
NOP
NOP
NOP
NOP
.UNIQUE603: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE604
NOP
NOP
NOP
NOP
NOP
.UNIQUE604: 
	movq	%rcx, %rsi
 jmp .UNIQUE605
NOP
NOP
NOP
NOP
NOP
.UNIQUE605: 
	movq	%rax, %rdi
 jmp .UNIQUE606
NOP
NOP
NOP
NOP
NOP
.UNIQUE606: 
	call	insert_data_into_mem
 jmp .UNIQUE607
NOP
NOP
NOP
NOP
NOP
.UNIQUE607: 
	movl	$.LC17, %edi
 jmp .UNIQUE608
NOP
NOP
NOP
NOP
NOP
.UNIQUE608: 
	call	puts
 jmp .UNIQUE609
NOP
NOP
NOP
NOP
NOP
.UNIQUE609: 
	movq	$0, -64(%rbp)
 jmp .UNIQUE610
NOP
NOP
NOP
NOP
NOP
.UNIQUE610: 
	jmp	.L61
.L62:
 jmp .UNIQUE611
NOP
NOP
NOP
NOP
NOP
.UNIQUE611: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE612
NOP
NOP
NOP
NOP
NOP
.UNIQUE612: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE613
NOP
NOP
NOP
NOP
NOP
.UNIQUE613: 
	movq	%rdx, %rcx
 jmp .UNIQUE614
NOP
NOP
NOP
NOP
NOP
.UNIQUE614: 
	movl	$1, %edx
 jmp .UNIQUE615
NOP
NOP
NOP
NOP
NOP
.UNIQUE615: 
	movq	%rax, %rsi
 jmp .UNIQUE616
NOP
NOP
NOP
NOP
NOP
.UNIQUE616: 
	movl	$4, %edi
 jmp .UNIQUE617
NOP
NOP
NOP
NOP
NOP
.UNIQUE617: 
	call	get_secure_data
 jmp .UNIQUE618
NOP
NOP
NOP
NOP
NOP
.UNIQUE618: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE619
NOP
NOP
NOP
NOP
NOP
.UNIQUE619: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE620
NOP
NOP
NOP
NOP
NOP
.UNIQUE620: 
	movl	(%rax), %eax
 jmp .UNIQUE621
NOP
NOP
NOP
NOP
NOP
.UNIQUE621: 
	movl	%eax, %esi
 jmp .UNIQUE622
NOP
NOP
NOP
NOP
NOP
.UNIQUE622: 
	movl	$.LC18, %edi
 jmp .UNIQUE623
NOP
NOP
NOP
NOP
NOP
.UNIQUE623: 
	movl	$0, %eax
 jmp .UNIQUE624
NOP
NOP
NOP
NOP
NOP
.UNIQUE624: 
	call	printf
 jmp .UNIQUE625
NOP
NOP
NOP
NOP
NOP
.UNIQUE625: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE626
NOP
NOP
NOP
NOP
NOP
.UNIQUE626: 
	movq	%rax, %rdi
 jmp .UNIQUE627
NOP
NOP
NOP
NOP
NOP
.UNIQUE627: 
	call	free
 jmp .UNIQUE628
NOP
NOP
NOP
NOP
NOP
.UNIQUE628: 
	addq	$1, -64(%rbp)
.L61:
 jmp .UNIQUE629
NOP
NOP
NOP
NOP
NOP
.UNIQUE629: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE630
NOP
NOP
NOP
NOP
NOP
.UNIQUE630: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE631
NOP
NOP
NOP
NOP
NOP
.UNIQUE631: 
	jl	.L62
 jmp .UNIQUE632
NOP
NOP
NOP
NOP
NOP
.UNIQUE632: 
	movl	$10, %edi
 jmp .UNIQUE633
NOP
NOP
NOP
NOP
NOP
.UNIQUE633: 
	call	putchar
 jmp .UNIQUE634
NOP
NOP
NOP
NOP
NOP
.UNIQUE634: 
	movl	$.LC21, %edi
 jmp .UNIQUE635
NOP
NOP
NOP
NOP
NOP
.UNIQUE635: 
	call	puts
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
	call	secure_malloc
 jmp .UNIQUE638
NOP
NOP
NOP
NOP
NOP
.UNIQUE638: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE639
NOP
NOP
NOP
NOP
NOP
.UNIQUE639: 
	movl	$4, %edi
 jmp .UNIQUE640
NOP
NOP
NOP
NOP
NOP
.UNIQUE640: 
	call	malloc
 jmp .UNIQUE641
NOP
NOP
NOP
NOP
NOP
.UNIQUE641: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE642
NOP
NOP
NOP
NOP
NOP
.UNIQUE642: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE643
NOP
NOP
NOP
NOP
NOP
.UNIQUE643: 
	movl	$424242424, (%rax)
 jmp .UNIQUE644
NOP
NOP
NOP
NOP
NOP
.UNIQUE644: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE645
NOP
NOP
NOP
NOP
NOP
.UNIQUE645: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE646
NOP
NOP
NOP
NOP
NOP
.UNIQUE646: 
	movq	%rax, %rsi
 jmp .UNIQUE647
NOP
NOP
NOP
NOP
NOP
.UNIQUE647: 
	movl	$4, %edi
 jmp .UNIQUE648
NOP
NOP
NOP
NOP
NOP
.UNIQUE648: 
	call	insert_data_into_mem
 jmp .UNIQUE649
NOP
NOP
NOP
NOP
NOP
.UNIQUE649: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE650
NOP
NOP
NOP
NOP
NOP
.UNIQUE650: 
	movq	%rax, %rdi
 jmp .UNIQUE651
NOP
NOP
NOP
NOP
NOP
.UNIQUE651: 
	call	free
 jmp .UNIQUE652
NOP
NOP
NOP
NOP
NOP
.UNIQUE652: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE653
NOP
NOP
NOP
NOP
NOP
.UNIQUE653: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE654
NOP
NOP
NOP
NOP
NOP
.UNIQUE654: 
	movq	%rdx, %rcx
 jmp .UNIQUE655
NOP
NOP
NOP
NOP
NOP
.UNIQUE655: 
	movl	$0, %edx
 jmp .UNIQUE656
NOP
NOP
NOP
NOP
NOP
.UNIQUE656: 
	movq	%rax, %rsi
 jmp .UNIQUE657
NOP
NOP
NOP
NOP
NOP
.UNIQUE657: 
	movl	$4, %edi
 jmp .UNIQUE658
NOP
NOP
NOP
NOP
NOP
.UNIQUE658: 
	call	get_secure_data
 jmp .UNIQUE659
NOP
NOP
NOP
NOP
NOP
.UNIQUE659: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE660
NOP
NOP
NOP
NOP
NOP
.UNIQUE660: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE661
NOP
NOP
NOP
NOP
NOP
.UNIQUE661: 
	movl	(%rax), %eax
 jmp .UNIQUE662
NOP
NOP
NOP
NOP
NOP
.UNIQUE662: 
	movl	%eax, %esi
 jmp .UNIQUE663
NOP
NOP
NOP
NOP
NOP
.UNIQUE663: 
	movl	$.LC22, %edi
 jmp .UNIQUE664
NOP
NOP
NOP
NOP
NOP
.UNIQUE664: 
	movl	$0, %eax
 jmp .UNIQUE665
NOP
NOP
NOP
NOP
NOP
.UNIQUE665: 
	call	printf
 jmp .UNIQUE666
NOP
NOP
NOP
NOP
NOP
.UNIQUE666: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE667
NOP
NOP
NOP
NOP
NOP
.UNIQUE667: 
	movq	%rax, %rdi
 jmp .UNIQUE668
NOP
NOP
NOP
NOP
NOP
.UNIQUE668: 
	call	free
 jmp .UNIQUE669
NOP
NOP
NOP
NOP
NOP
.UNIQUE669: 
	movl	$.LC23, %edi
 jmp .UNIQUE670
NOP
NOP
NOP
NOP
NOP
.UNIQUE670: 
	call	puts
 jmp .UNIQUE671
NOP
NOP
NOP
NOP
NOP
.UNIQUE671: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE672
NOP
NOP
NOP
NOP
NOP
.UNIQUE672: 
	movq	%rax, %rdi
 jmp .UNIQUE673
NOP
NOP
NOP
NOP
NOP
.UNIQUE673: 
	call	print_mem
 jmp .UNIQUE674
NOP
NOP
NOP
NOP
NOP
.UNIQUE674: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE675
NOP
NOP
NOP
NOP
NOP
.UNIQUE675: 
	movq	%rax, %rdi
 jmp .UNIQUE676
NOP
NOP
NOP
NOP
NOP
.UNIQUE676: 
	call	free_secure_mem
 jmp .UNIQUE677
NOP
NOP
NOP
NOP
NOP
.UNIQUE677: 
	movl	$.LC24, %edi
 jmp .UNIQUE678
NOP
NOP
NOP
NOP
NOP
.UNIQUE678: 
	call	puts
 jmp .UNIQUE679
NOP
NOP
NOP
NOP
NOP
.UNIQUE679: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE680
NOP
NOP
NOP
NOP
NOP
.UNIQUE680: 
	ret
	.cfi_endproc
.LFE13:
	.size	mem_test, .-mem_test
	.section	.rodata
.LC25:
	.string	"a=%p b=%p c=%p d=%p\n"
	.align 8
.LC26:
	.string	"start of .text=0x%lx, end of .text=0x%lx, init=0x%lx, fini=0x%lx\n"
.LC27:
	.string	"\n\n"
.LC28:
	.string	"\nkey1="
.LC29:
	.string	"0x%02x\n"
.LC30:
	.string	"key2=0x%02x\n"
.LC31:
	.string	"key3=0x%02x\n"
.LC32:
	.string	"key4=0x%02x\n"
.LC33:
	.string	"key5=0x%02x\n"
	.text
	.globl	find_keyshares
	.type	find_keyshares, @function
find_keyshares:
.LFB14:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE681
NOP
NOP
NOP
NOP
NOP
.UNIQUE681: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE682
NOP
NOP
NOP
NOP
NOP
.UNIQUE682: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE683
NOP
NOP
NOP
NOP
NOP
.UNIQUE683: 
	subq	$80, %rsp
 jmp .UNIQUE684
NOP
NOP
NOP
NOP
NOP
.UNIQUE684: 
	movl	$0, -60(%rbp)
 jmp .UNIQUE685
NOP
NOP
NOP
NOP
NOP
.UNIQUE685: 
	movq	$foo, -48(%rbp)
 jmp .UNIQUE686
NOP
NOP
NOP
NOP
NOP
.UNIQUE686: 
	movq	$main, -40(%rbp)
 jmp .UNIQUE687
NOP
NOP
NOP
NOP
NOP
.UNIQUE687: 
	movq	$foo2, -32(%rbp)
 jmp .UNIQUE688
NOP
NOP
NOP
NOP
NOP
.UNIQUE688: 
	movq	$find_keyshares, -24(%rbp)
 jmp .UNIQUE689
NOP
NOP
NOP
NOP
NOP
.UNIQUE689: 
	movb	$0, -65(%rbp)
 jmp .UNIQUE690
NOP
NOP
NOP
NOP
NOP
.UNIQUE690: 
	movb	$0, -64(%rbp)
 jmp .UNIQUE691
NOP
NOP
NOP
NOP
NOP
.UNIQUE691: 
	movb	$0, -63(%rbp)
 jmp .UNIQUE692
NOP
NOP
NOP
NOP
NOP
.UNIQUE692: 
	movb	$0, -62(%rbp)
 jmp .UNIQUE693
NOP
NOP
NOP
NOP
NOP
.UNIQUE693: 
	movb	$0, -61(%rbp)
 jmp .UNIQUE694
NOP
NOP
NOP
NOP
NOP
.UNIQUE694: 
	movq	$__executable_start, -16(%rbp)
 jmp .UNIQUE695
NOP
NOP
NOP
NOP
NOP
.UNIQUE695: 
	movq	$__etext, -8(%rbp)
 jmp .UNIQUE696
NOP
NOP
NOP
NOP
NOP
.UNIQUE696: 
	movq	-24(%rbp), %rsi
 jmp .UNIQUE697
NOP
NOP
NOP
NOP
NOP
.UNIQUE697: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE698
NOP
NOP
NOP
NOP
NOP
.UNIQUE698: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE699
NOP
NOP
NOP
NOP
NOP
.UNIQUE699: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE700
NOP
NOP
NOP
NOP
NOP
.UNIQUE700: 
	movq	%rsi, %r8
 jmp .UNIQUE701
NOP
NOP
NOP
NOP
NOP
.UNIQUE701: 
	movq	%rax, %rsi
 jmp .UNIQUE702
NOP
NOP
NOP
NOP
NOP
.UNIQUE702: 
	movl	$.LC25, %edi
 jmp .UNIQUE703
NOP
NOP
NOP
NOP
NOP
.UNIQUE703: 
	movl	$0, %eax
 jmp .UNIQUE704
NOP
NOP
NOP
NOP
NOP
.UNIQUE704: 
	call	printf
 jmp .UNIQUE705
NOP
NOP
NOP
NOP
NOP
.UNIQUE705: 
	movl	$_fini, %esi
 jmp .UNIQUE706
NOP
NOP
NOP
NOP
NOP
.UNIQUE706: 
	movl	$_init, %ecx
 jmp .UNIQUE707
NOP
NOP
NOP
NOP
NOP
.UNIQUE707: 
	movl	$__etext, %edx
 jmp .UNIQUE708
NOP
NOP
NOP
NOP
NOP
.UNIQUE708: 
	movl	$__executable_start, %eax
 jmp .UNIQUE709
NOP
NOP
NOP
NOP
NOP
.UNIQUE709: 
	movq	%rsi, %r8
 jmp .UNIQUE710
NOP
NOP
NOP
NOP
NOP
.UNIQUE710: 
	movq	%rax, %rsi
 jmp .UNIQUE711
NOP
NOP
NOP
NOP
NOP
.UNIQUE711: 
	movl	$.LC26, %edi
 jmp .UNIQUE712
NOP
NOP
NOP
NOP
NOP
.UNIQUE712: 
	movl	$0, %eax
 jmp .UNIQUE713
NOP
NOP
NOP
NOP
NOP
.UNIQUE713: 
	call	printf
 jmp .UNIQUE714
NOP
NOP
NOP
NOP
NOP
.UNIQUE714: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE715
NOP
NOP
NOP
NOP
NOP
.UNIQUE715: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE716
NOP
NOP
NOP
NOP
NOP
.UNIQUE716: 
	jmp	.L64
.L66:
 jmp .UNIQUE717
NOP
NOP
NOP
NOP
NOP
.UNIQUE717: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE718
NOP
NOP
NOP
NOP
NOP
.UNIQUE718: 
	movzbl	(%rax), %eax
 jmp .UNIQUE719
NOP
NOP
NOP
NOP
NOP
.UNIQUE719: 
	movzbl	%al, %eax
 jmp .UNIQUE720
NOP
NOP
NOP
NOP
NOP
.UNIQUE720: 
	movl	%eax, %esi
 jmp .UNIQUE721
NOP
NOP
NOP
NOP
NOP
.UNIQUE721: 
	movl	$.LC3, %edi
 jmp .UNIQUE722
NOP
NOP
NOP
NOP
NOP
.UNIQUE722: 
	movl	$0, %eax
 jmp .UNIQUE723
NOP
NOP
NOP
NOP
NOP
.UNIQUE723: 
	call	printf
 jmp .UNIQUE724
NOP
NOP
NOP
NOP
NOP
.UNIQUE724: 
	addq	$1, -56(%rbp)
.L64:
 jmp .UNIQUE725
NOP
NOP
NOP
NOP
NOP
.UNIQUE725: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE726
NOP
NOP
NOP
NOP
NOP
.UNIQUE726: 
	movzbl	(%rax), %eax
 jmp .UNIQUE727
NOP
NOP
NOP
NOP
NOP
.UNIQUE727: 
	cmpb	$-61, %al
 jmp .UNIQUE728
NOP
NOP
NOP
NOP
NOP
.UNIQUE728: 
	je	.L65
 jmp .UNIQUE729
NOP
NOP
NOP
NOP
NOP
.UNIQUE729: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE730
NOP
NOP
NOP
NOP
NOP
.UNIQUE730: 
	movzbl	(%rax), %eax
 jmp .UNIQUE731
NOP
NOP
NOP
NOP
NOP
.UNIQUE731: 
	cmpb	$-53, %al
 jmp .UNIQUE732
NOP
NOP
NOP
NOP
NOP
.UNIQUE732: 
	je	.L66
.L65:
 jmp .UNIQUE733
NOP
NOP
NOP
NOP
NOP
.UNIQUE733: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE734
NOP
NOP
NOP
NOP
NOP
.UNIQUE734: 
	subq	$1, %rax
 jmp .UNIQUE735
NOP
NOP
NOP
NOP
NOP
.UNIQUE735: 
	movzbl	(%rax), %eax
 jmp .UNIQUE736
NOP
NOP
NOP
NOP
NOP
.UNIQUE736: 
	cmpb	$17, %al
 jmp .UNIQUE737
NOP
NOP
NOP
NOP
NOP
.UNIQUE737: 
	jne	.L66
 jmp .UNIQUE738
NOP
NOP
NOP
NOP
NOP
.UNIQUE738: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE739
NOP
NOP
NOP
NOP
NOP
.UNIQUE739: 
	subq	$2, %rax
 jmp .UNIQUE740
NOP
NOP
NOP
NOP
NOP
.UNIQUE740: 
	movzbl	(%rax), %eax
 jmp .UNIQUE741
NOP
NOP
NOP
NOP
NOP
.UNIQUE741: 
	cmpb	$17, %al
 jmp .UNIQUE742
NOP
NOP
NOP
NOP
NOP
.UNIQUE742: 
	jne	.L66
 jmp .UNIQUE743
NOP
NOP
NOP
NOP
NOP
.UNIQUE743: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE744
NOP
NOP
NOP
NOP
NOP
.UNIQUE744: 
	movzbl	(%rax), %eax
 jmp .UNIQUE745
NOP
NOP
NOP
NOP
NOP
.UNIQUE745: 
	movzbl	%al, %eax
 jmp .UNIQUE746
NOP
NOP
NOP
NOP
NOP
.UNIQUE746: 
	movl	%eax, %esi
 jmp .UNIQUE747
NOP
NOP
NOP
NOP
NOP
.UNIQUE747: 
	movl	$.LC3, %edi
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
	movl	$.LC27, %edi
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
	movq	-16(%rbp), %rax
 jmp .UNIQUE753
NOP
NOP
NOP
NOP
NOP
.UNIQUE753: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE754
NOP
NOP
NOP
NOP
NOP
.UNIQUE754: 
	jmp	.L67
.L69:
 jmp .UNIQUE755
NOP
NOP
NOP
NOP
NOP
.UNIQUE755: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE756
NOP
NOP
NOP
NOP
NOP
.UNIQUE756: 
	movzbl	(%rax), %eax
 jmp .UNIQUE757
NOP
NOP
NOP
NOP
NOP
.UNIQUE757: 
	cmpb	$-21, %al
 jmp .UNIQUE758
NOP
NOP
NOP
NOP
NOP
.UNIQUE758: 
	jne	.L68
 jmp .UNIQUE759
NOP
NOP
NOP
NOP
NOP
.UNIQUE759: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE760
NOP
NOP
NOP
NOP
NOP
.UNIQUE760: 
	addq	$1, %rax
 jmp .UNIQUE761
NOP
NOP
NOP
NOP
NOP
.UNIQUE761: 
	movzbl	(%rax), %eax
 jmp .UNIQUE762
NOP
NOP
NOP
NOP
NOP
.UNIQUE762: 
	cmpb	$5, %al
 jmp .UNIQUE763
NOP
NOP
NOP
NOP
NOP
.UNIQUE763: 
	jne	.L68
 jmp .UNIQUE764
NOP
NOP
NOP
NOP
NOP
.UNIQUE764: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE765
NOP
NOP
NOP
NOP
NOP
.UNIQUE765: 
	addq	$2, %rax
 jmp .UNIQUE766
NOP
NOP
NOP
NOP
NOP
.UNIQUE766: 
	movzbl	(%rax), %eax
 jmp .UNIQUE767
NOP
NOP
NOP
NOP
NOP
.UNIQUE767: 
	movzbl	%al, %eax
 jmp .UNIQUE768
NOP
NOP
NOP
NOP
NOP
.UNIQUE768: 
	movl	%eax, %esi
 jmp .UNIQUE769
NOP
NOP
NOP
NOP
NOP
.UNIQUE769: 
	movl	$.LC3, %edi
 jmp .UNIQUE770
NOP
NOP
NOP
NOP
NOP
.UNIQUE770: 
	movl	$0, %eax
 jmp .UNIQUE771
NOP
NOP
NOP
NOP
NOP
.UNIQUE771: 
	call	printf
 jmp .UNIQUE772
NOP
NOP
NOP
NOP
NOP
.UNIQUE772: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE773
NOP
NOP
NOP
NOP
NOP
.UNIQUE773: 
	addq	$2, %rax
 jmp .UNIQUE774
NOP
NOP
NOP
NOP
NOP
.UNIQUE774: 
	movzbl	(%rax), %eax
 jmp .UNIQUE775
NOP
NOP
NOP
NOP
NOP
.UNIQUE775: 
	movl	%eax, %edx
 jmp .UNIQUE776
NOP
NOP
NOP
NOP
NOP
.UNIQUE776: 
	movzbl	-65(%rbp), %eax
 jmp .UNIQUE777
NOP
NOP
NOP
NOP
NOP
.UNIQUE777: 
	xorl	%edx, %eax
 jmp .UNIQUE778
NOP
NOP
NOP
NOP
NOP
.UNIQUE778: 
	movb	%al, -65(%rbp)
 jmp .UNIQUE779
NOP
NOP
NOP
NOP
NOP
.UNIQUE779: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE780
NOP
NOP
NOP
NOP
NOP
.UNIQUE780: 
	addq	$3, %rax
 jmp .UNIQUE781
NOP
NOP
NOP
NOP
NOP
.UNIQUE781: 
	movzbl	(%rax), %eax
 jmp .UNIQUE782
NOP
NOP
NOP
NOP
NOP
.UNIQUE782: 
	movl	%eax, %edx
 jmp .UNIQUE783
NOP
NOP
NOP
NOP
NOP
.UNIQUE783: 
	movzbl	-64(%rbp), %eax
 jmp .UNIQUE784
NOP
NOP
NOP
NOP
NOP
.UNIQUE784: 
	xorl	%edx, %eax
 jmp .UNIQUE785
NOP
NOP
NOP
NOP
NOP
.UNIQUE785: 
	movb	%al, -64(%rbp)
 jmp .UNIQUE786
NOP
NOP
NOP
NOP
NOP
.UNIQUE786: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE787
NOP
NOP
NOP
NOP
NOP
.UNIQUE787: 
	addq	$4, %rax
 jmp .UNIQUE788
NOP
NOP
NOP
NOP
NOP
.UNIQUE788: 
	movzbl	(%rax), %eax
 jmp .UNIQUE789
NOP
NOP
NOP
NOP
NOP
.UNIQUE789: 
	movl	%eax, %edx
 jmp .UNIQUE790
NOP
NOP
NOP
NOP
NOP
.UNIQUE790: 
	movzbl	-63(%rbp), %eax
 jmp .UNIQUE791
NOP
NOP
NOP
NOP
NOP
.UNIQUE791: 
	xorl	%edx, %eax
 jmp .UNIQUE792
NOP
NOP
NOP
NOP
NOP
.UNIQUE792: 
	movb	%al, -63(%rbp)
 jmp .UNIQUE793
NOP
NOP
NOP
NOP
NOP
.UNIQUE793: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE794
NOP
NOP
NOP
NOP
NOP
.UNIQUE794: 
	addq	$5, %rax
 jmp .UNIQUE795
NOP
NOP
NOP
NOP
NOP
.UNIQUE795: 
	movzbl	(%rax), %eax
 jmp .UNIQUE796
NOP
NOP
NOP
NOP
NOP
.UNIQUE796: 
	movl	%eax, %edx
 jmp .UNIQUE797
NOP
NOP
NOP
NOP
NOP
.UNIQUE797: 
	movzbl	-62(%rbp), %eax
 jmp .UNIQUE798
NOP
NOP
NOP
NOP
NOP
.UNIQUE798: 
	xorl	%edx, %eax
 jmp .UNIQUE799
NOP
NOP
NOP
NOP
NOP
.UNIQUE799: 
	movb	%al, -62(%rbp)
 jmp .UNIQUE800
NOP
NOP
NOP
NOP
NOP
.UNIQUE800: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE801
NOP
NOP
NOP
NOP
NOP
.UNIQUE801: 
	addq	$6, %rax
 jmp .UNIQUE802
NOP
NOP
NOP
NOP
NOP
.UNIQUE802: 
	movzbl	(%rax), %eax
 jmp .UNIQUE803
NOP
NOP
NOP
NOP
NOP
.UNIQUE803: 
	movl	%eax, %edx
 jmp .UNIQUE804
NOP
NOP
NOP
NOP
NOP
.UNIQUE804: 
	movzbl	-61(%rbp), %eax
 jmp .UNIQUE805
NOP
NOP
NOP
NOP
NOP
.UNIQUE805: 
	xorl	%edx, %eax
 jmp .UNIQUE806
NOP
NOP
NOP
NOP
NOP
.UNIQUE806: 
	movb	%al, -61(%rbp)
 jmp .UNIQUE807
NOP
NOP
NOP
NOP
NOP
.UNIQUE807: 
	addl	$1, -60(%rbp)
.L68:
 jmp .UNIQUE808
NOP
NOP
NOP
NOP
NOP
.UNIQUE808: 
	addq	$1, -56(%rbp)
.L67:
 jmp .UNIQUE809
NOP
NOP
NOP
NOP
NOP
.UNIQUE809: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE810
NOP
NOP
NOP
NOP
NOP
.UNIQUE810: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE811
NOP
NOP
NOP
NOP
NOP
.UNIQUE811: 
	jbe	.L69
 jmp .UNIQUE812
NOP
NOP
NOP
NOP
NOP
.UNIQUE812: 
	movl	$.LC28, %edi
 jmp .UNIQUE813
NOP
NOP
NOP
NOP
NOP
.UNIQUE813: 
	movl	$0, %eax
 jmp .UNIQUE814
NOP
NOP
NOP
NOP
NOP
.UNIQUE814: 
	call	printf
 jmp .UNIQUE815
NOP
NOP
NOP
NOP
NOP
.UNIQUE815: 
	movzbl	-65(%rbp), %eax
 jmp .UNIQUE816
NOP
NOP
NOP
NOP
NOP
.UNIQUE816: 
	movl	%eax, %esi
 jmp .UNIQUE817
NOP
NOP
NOP
NOP
NOP
.UNIQUE817: 
	movl	$.LC29, %edi
 jmp .UNIQUE818
NOP
NOP
NOP
NOP
NOP
.UNIQUE818: 
	movl	$0, %eax
 jmp .UNIQUE819
NOP
NOP
NOP
NOP
NOP
.UNIQUE819: 
	call	printf
 jmp .UNIQUE820
NOP
NOP
NOP
NOP
NOP
.UNIQUE820: 
	movzbl	-64(%rbp), %eax
 jmp .UNIQUE821
NOP
NOP
NOP
NOP
NOP
.UNIQUE821: 
	movl	%eax, %esi
 jmp .UNIQUE822
NOP
NOP
NOP
NOP
NOP
.UNIQUE822: 
	movl	$.LC30, %edi
 jmp .UNIQUE823
NOP
NOP
NOP
NOP
NOP
.UNIQUE823: 
	movl	$0, %eax
 jmp .UNIQUE824
NOP
NOP
NOP
NOP
NOP
.UNIQUE824: 
	call	printf
 jmp .UNIQUE825
NOP
NOP
NOP
NOP
NOP
.UNIQUE825: 
	movzbl	-63(%rbp), %eax
 jmp .UNIQUE826
NOP
NOP
NOP
NOP
NOP
.UNIQUE826: 
	movl	%eax, %esi
 jmp .UNIQUE827
NOP
NOP
NOP
NOP
NOP
.UNIQUE827: 
	movl	$.LC31, %edi
 jmp .UNIQUE828
NOP
NOP
NOP
NOP
NOP
.UNIQUE828: 
	movl	$0, %eax
 jmp .UNIQUE829
NOP
NOP
NOP
NOP
NOP
.UNIQUE829: 
	call	printf
 jmp .UNIQUE830
NOP
NOP
NOP
NOP
NOP
.UNIQUE830: 
	movzbl	-62(%rbp), %eax
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
	movl	$.LC32, %edi
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
	movzbl	-61(%rbp), %eax
 jmp .UNIQUE836
NOP
NOP
NOP
NOP
NOP
.UNIQUE836: 
	movl	%eax, %esi
 jmp .UNIQUE837
NOP
NOP
NOP
NOP
NOP
.UNIQUE837: 
	movl	$.LC33, %edi
 jmp .UNIQUE838
NOP
NOP
NOP
NOP
NOP
.UNIQUE838: 
	movl	$0, %eax
 jmp .UNIQUE839
NOP
NOP
NOP
NOP
NOP
.UNIQUE839: 
	call	printf
 jmp .UNIQUE840
NOP
NOP
NOP
NOP
NOP
.UNIQUE840: 
	nop
 jmp .UNIQUE841
NOP
NOP
NOP
NOP
NOP
.UNIQUE841: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE842
NOP
NOP
NOP
NOP
NOP
.UNIQUE842: 
	ret
	.cfi_endproc
.LFE14:
	.size	find_keyshares, .-find_keyshares
	.globl	foo
	.type	foo, @function
foo:
.LFB15:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE843
NOP
NOP
NOP
NOP
NOP
.UNIQUE843: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE844
NOP
NOP
NOP
NOP
NOP
.UNIQUE844: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE845
NOP
NOP
NOP
NOP
NOP
.UNIQUE845: 
	movl	%edi, -20(%rbp)
 jmp .UNIQUE846
NOP
NOP
NOP
NOP
NOP
.UNIQUE846: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE847
NOP
NOP
NOP
NOP
NOP
.UNIQUE847: 
	addl	$2, %eax
 jmp .UNIQUE848
NOP
NOP
NOP
NOP
NOP
.UNIQUE848: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE849
NOP
NOP
NOP
NOP
NOP
.UNIQUE849: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE850
NOP
NOP
NOP
NOP
NOP
.UNIQUE850: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE851
NOP
NOP
NOP
NOP
NOP
.UNIQUE851: 
	ret
	.cfi_endproc
.LFE15:
	.size	foo, .-foo
	.section	.rodata
.LC34:
	.string	"K=%d\n"
.LC35:
	.string	"n=%d\n"
.LC36:
	.string	"main is at %p\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB16:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE852
NOP
NOP
NOP
NOP
NOP
.UNIQUE852: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE853
NOP
NOP
NOP
NOP
NOP
.UNIQUE853: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE854
NOP
NOP
NOP
NOP
NOP
.UNIQUE854: 
	subq	$16, %rsp
 jmp .UNIQUE855
NOP
NOP
NOP
NOP
NOP
.UNIQUE855: 
	movl	$1, -16(%rbp)
 jmp .UNIQUE856
NOP
NOP
NOP
NOP
NOP
.UNIQUE856: 
	movl	$2, -8(%rbp)
 jmp .UNIQUE857
NOP
NOP
NOP
NOP
NOP
.UNIQUE857: 
	addl	$1, -8(%rbp)
 jmp .UNIQUE858
NOP
NOP
NOP
NOP
NOP
.UNIQUE858: 
	addl	$1, -8(%rbp)
 jmp .UNIQUE859
NOP
NOP
NOP
NOP
NOP
.UNIQUE859: 
	subl	$1, -8(%rbp)
 jmp .UNIQUE860
NOP
NOP
NOP
NOP
NOP
.UNIQUE860: 
	movl	-8(%rbp), %eax
 jmp .UNIQUE861
NOP
NOP
NOP
NOP
NOP
.UNIQUE861: 
	addl	%eax, -16(%rbp)
 jmp .UNIQUE862
NOP
NOP
NOP
NOP
NOP
.UNIQUE862: 
	addl	$2, -16(%rbp)
 jmp .UNIQUE863
NOP
NOP
NOP
NOP
NOP
.UNIQUE863: 
	addl	$1, -8(%rbp)
 jmp .UNIQUE864
NOP
NOP
NOP
NOP
NOP
.UNIQUE864: 
	movl	$1, -12(%rbp)
 jmp .UNIQUE865
NOP
NOP
NOP
NOP
NOP
.UNIQUE865: 
	jmp	.L74
.L75:
 jmp .UNIQUE866
NOP
NOP
NOP
NOP
NOP
.UNIQUE866: 
	movl	-8(%rbp), %eax
 jmp .UNIQUE867
NOP
NOP
NOP
NOP
NOP
.UNIQUE867: 
	addl	%eax, -16(%rbp)
 jmp .UNIQUE868
NOP
NOP
NOP
NOP
NOP
.UNIQUE868: 
	addl	$1, -12(%rbp)
.L74:
 jmp .UNIQUE869
NOP
NOP
NOP
NOP
NOP
.UNIQUE869: 
	cmpl	$500000000, -12(%rbp)
 jmp .UNIQUE870
NOP
NOP
NOP
NOP
NOP
.UNIQUE870: 
	jle	.L75
 jmp .UNIQUE871
NOP
NOP
NOP
NOP
NOP
.UNIQUE871: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE872
NOP
NOP
NOP
NOP
NOP
.UNIQUE872: 
	movl	%eax, %esi
 jmp .UNIQUE873
NOP
NOP
NOP
NOP
NOP
.UNIQUE873: 
	movl	$.LC34, %edi
 jmp .UNIQUE874
NOP
NOP
NOP
NOP
NOP
.UNIQUE874: 
	movl	$0, %eax
 jmp .UNIQUE875
NOP
NOP
NOP
NOP
NOP
.UNIQUE875: 
	call	printf
 jmp .UNIQUE876
NOP
NOP
NOP
NOP
NOP
.UNIQUE876: 
	movl	$5, %edi
 jmp .UNIQUE877
NOP
NOP
NOP
NOP
NOP
.UNIQUE877: 
	call	foo
 jmp .UNIQUE878
NOP
NOP
NOP
NOP
NOP
.UNIQUE878: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE879
NOP
NOP
NOP
NOP
NOP
.UNIQUE879: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE880
NOP
NOP
NOP
NOP
NOP
.UNIQUE880: 
	movl	%eax, %edi
 jmp .UNIQUE881
NOP
NOP
NOP
NOP
NOP
.UNIQUE881: 
	call	foo2
 jmp .UNIQUE882
NOP
NOP
NOP
NOP
NOP
.UNIQUE882: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE883
NOP
NOP
NOP
NOP
NOP
.UNIQUE883: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE884
NOP
NOP
NOP
NOP
NOP
.UNIQUE884: 
	movl	%eax, %esi
 jmp .UNIQUE885
NOP
NOP
NOP
NOP
NOP
.UNIQUE885: 
	movl	$.LC35, %edi
 jmp .UNIQUE886
NOP
NOP
NOP
NOP
NOP
.UNIQUE886: 
	movl	$0, %eax
 jmp .UNIQUE887
NOP
NOP
NOP
NOP
NOP
.UNIQUE887: 
	call	printf
 jmp .UNIQUE888
NOP
NOP
NOP
NOP
NOP
.UNIQUE888: 
	movl	$main, %esi
 jmp .UNIQUE889
NOP
NOP
NOP
NOP
NOP
.UNIQUE889: 
	movl	$.LC36, %edi
 jmp .UNIQUE890
NOP
NOP
NOP
NOP
NOP
.UNIQUE890: 
	movl	$0, %eax
 jmp .UNIQUE891
NOP
NOP
NOP
NOP
NOP
.UNIQUE891: 
	call	printf
 jmp .UNIQUE892
NOP
NOP
NOP
NOP
NOP
.UNIQUE892: 
	movl	$0, %eax
 jmp .UNIQUE893
NOP
NOP
NOP
NOP
NOP
.UNIQUE893: 
	call	mem_test
 jmp .UNIQUE894
NOP
NOP
NOP
NOP
NOP
.UNIQUE894: 
	movl	$0, %eax
 jmp .UNIQUE895
NOP
NOP
NOP
NOP
NOP
.UNIQUE895: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE896
NOP
NOP
NOP
NOP
NOP
.UNIQUE896: 
	ret
	.cfi_endproc
.LFE16:
	.size	main, .-main
	.globl	foo2
	.type	foo2, @function
foo2:
.LFB17:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE897
NOP
NOP
NOP
NOP
NOP
.UNIQUE897: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE898
NOP
NOP
NOP
NOP
NOP
.UNIQUE898: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE899
NOP
NOP
NOP
NOP
NOP
.UNIQUE899: 
	movl	%edi, -20(%rbp)
 jmp .UNIQUE900
NOP
NOP
NOP
NOP
NOP
.UNIQUE900: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE901
NOP
NOP
NOP
NOP
NOP
.UNIQUE901: 
	addl	$3, %eax
 jmp .UNIQUE902
NOP
NOP
NOP
NOP
NOP
.UNIQUE902: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE903
NOP
NOP
NOP
NOP
NOP
.UNIQUE903: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE904
NOP
NOP
NOP
NOP
NOP
.UNIQUE904: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE905
NOP
NOP
NOP
NOP
NOP
.UNIQUE905: 
	ret
	.cfi_endproc
.LFE17:
	.size	foo2, .-foo2
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.1) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
