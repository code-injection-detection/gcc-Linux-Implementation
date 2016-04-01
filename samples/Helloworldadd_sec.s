	.file	"Helloworldadd.c"
	.comm	total_bytes_allocated,8,8
	.comm	memory_chunk,8,8
	.comm	last_unused_memory,8,8
	.comm	keyshare_input_file,8,8
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
	.section	.rodata
	.align 8
.LC3:
	.string	"Attempted to read more keyshares that the ones stored\n"
	.text
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
	subq	$16, %rsp
 jmp .UNIQUE118
NOP
NOP
NOP
NOP
NOP
.UNIQUE118: 
	movq	keyshare_input_file(%rip), %rax
 jmp .UNIQUE119
NOP
NOP
NOP
NOP
NOP
.UNIQUE119: 
	movq	%rax, %rdi
 jmp .UNIQUE120
NOP
NOP
NOP
NOP
NOP
.UNIQUE120: 
	call	feof
 jmp .UNIQUE121
NOP
NOP
NOP
NOP
NOP
.UNIQUE121: 
	testl	%eax, %eax
 jmp .UNIQUE122
NOP
NOP
NOP
NOP
NOP
.UNIQUE122: 
	je	.L11
 jmp .UNIQUE123
NOP
NOP
NOP
NOP
NOP
.UNIQUE123: 
	movl	$.LC3, %edi
 jmp .UNIQUE124
NOP
NOP
NOP
NOP
NOP
.UNIQUE124: 
	call	perror
 jmp .UNIQUE125
NOP
NOP
NOP
NOP
NOP
.UNIQUE125: 
	movl	$44, %edi
 jmp .UNIQUE126
NOP
NOP
NOP
NOP
NOP
.UNIQUE126: 
	call	exit
.L11:
 jmp .UNIQUE127
NOP
NOP
NOP
NOP
NOP
.UNIQUE127: 
	movq	keyshare_input_file(%rip), %rdx
 jmp .UNIQUE128
NOP
NOP
NOP
NOP
NOP
.UNIQUE128: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE129
NOP
NOP
NOP
NOP
NOP
.UNIQUE129: 
	movq	%rdx, %rcx
 jmp .UNIQUE130
NOP
NOP
NOP
NOP
NOP
.UNIQUE130: 
	movl	$1, %edx
 jmp .UNIQUE131
NOP
NOP
NOP
NOP
NOP
.UNIQUE131: 
	movl	$1, %esi
 jmp .UNIQUE132
NOP
NOP
NOP
NOP
NOP
.UNIQUE132: 
	movq	%rax, %rdi
 jmp .UNIQUE133
NOP
NOP
NOP
NOP
NOP
.UNIQUE133: 
	call	fread
 jmp .UNIQUE134
NOP
NOP
NOP
NOP
NOP
.UNIQUE134: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE135
NOP
NOP
NOP
NOP
NOP
.UNIQUE135: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE136
NOP
NOP
NOP
NOP
NOP
.UNIQUE136: 
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
 jmp .UNIQUE137
NOP
NOP
NOP
NOP
NOP
.UNIQUE137: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE138
NOP
NOP
NOP
NOP
NOP
.UNIQUE138: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE139
NOP
NOP
NOP
NOP
NOP
.UNIQUE139: 
	pushq	%rbx
 jmp .UNIQUE140
NOP
NOP
NOP
NOP
NOP
.UNIQUE140: 
	subq	$72, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE141
NOP
NOP
NOP
NOP
NOP
.UNIQUE141: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE142
NOP
NOP
NOP
NOP
NOP
.UNIQUE142: 
	movl	$0, -52(%rbp)
 jmp .UNIQUE143
NOP
NOP
NOP
NOP
NOP
.UNIQUE143: 
	movl	$0, %edi
 jmp .UNIQUE144
NOP
NOP
NOP
NOP
NOP
.UNIQUE144: 
	call	time
 jmp .UNIQUE145
NOP
NOP
NOP
NOP
NOP
.UNIQUE145: 
	movl	%eax, %edi
 jmp .UNIQUE146
NOP
NOP
NOP
NOP
NOP
.UNIQUE146: 
	call	srand
 jmp .UNIQUE147
NOP
NOP
NOP
NOP
NOP
.UNIQUE147: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE148
NOP
NOP
NOP
NOP
NOP
.UNIQUE148: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE149
NOP
NOP
NOP
NOP
NOP
.UNIQUE149: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE150
NOP
NOP
NOP
NOP
NOP
.UNIQUE150: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE151
NOP
NOP
NOP
NOP
NOP
.UNIQUE151: 
	jmp	.L14
.L19:
 jmp .UNIQUE152
NOP
NOP
NOP
NOP
NOP
.UNIQUE152: 
	cmpl	$0, -52(%rbp)
 jmp .UNIQUE153
NOP
NOP
NOP
NOP
NOP
.UNIQUE153: 
	je	.L15
 jmp .UNIQUE154
NOP
NOP
NOP
NOP
NOP
.UNIQUE154: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE155
NOP
NOP
NOP
NOP
NOP
.UNIQUE155: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE156
NOP
NOP
NOP
NOP
NOP
.UNIQUE156: 
	leaq	(%rdx,%rax), %rbx
 jmp .UNIQUE157
NOP
NOP
NOP
NOP
NOP
.UNIQUE157: 
	movl	$0, %eax
 jmp .UNIQUE158
NOP
NOP
NOP
NOP
NOP
.UNIQUE158: 
	call	get_next_keyshare
 jmp .UNIQUE159
NOP
NOP
NOP
NOP
NOP
.UNIQUE159: 
	movb	%al, (%rbx)
 jmp .UNIQUE160
NOP
NOP
NOP
NOP
NOP
.UNIQUE160: 
	addq	$1, -32(%rbp)
 jmp .UNIQUE161
NOP
NOP
NOP
NOP
NOP
.UNIQUE161: 
	addq	$1, -48(%rbp)
 jmp .UNIQUE162
NOP
NOP
NOP
NOP
NOP
.UNIQUE162: 
	jmp	.L16
.L15:
 jmp .UNIQUE163
NOP
NOP
NOP
NOP
NOP
.UNIQUE163: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE164
NOP
NOP
NOP
NOP
NOP
.UNIQUE164: 
	jmp	.L17
.L18:
 jmp .UNIQUE165
NOP
NOP
NOP
NOP
NOP
.UNIQUE165: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE166
NOP
NOP
NOP
NOP
NOP
.UNIQUE166: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE167
NOP
NOP
NOP
NOP
NOP
.UNIQUE167: 
	addq	%rdx, %rax
 jmp .UNIQUE168
NOP
NOP
NOP
NOP
NOP
.UNIQUE168: 
	movq	%rax, %rdx
 jmp .UNIQUE169
NOP
NOP
NOP
NOP
NOP
.UNIQUE169: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE170
NOP
NOP
NOP
NOP
NOP
.UNIQUE170: 
	addq	%rdx, %rax
 jmp .UNIQUE171
NOP
NOP
NOP
NOP
NOP
.UNIQUE171: 
	movb	$0, (%rax)
 jmp .UNIQUE172
NOP
NOP
NOP
NOP
NOP
.UNIQUE172: 
	addq	$1, -40(%rbp)
.L17:
 jmp .UNIQUE173
NOP
NOP
NOP
NOP
NOP
.UNIQUE173: 
	cmpq	$3, -40(%rbp)
 jmp .UNIQUE174
NOP
NOP
NOP
NOP
NOP
.UNIQUE174: 
	jle	.L18
 jmp .UNIQUE175
NOP
NOP
NOP
NOP
NOP
.UNIQUE175: 
	addq	$4, -48(%rbp)
 jmp .UNIQUE176
NOP
NOP
NOP
NOP
NOP
.UNIQUE176: 
	movl	$1, -52(%rbp)
.L16:
 jmp .UNIQUE177
NOP
NOP
NOP
NOP
NOP
.UNIQUE177: 
	cmpq	$5, -32(%rbp)
 jmp .UNIQUE178
NOP
NOP
NOP
NOP
NOP
.UNIQUE178: 
	jne	.L14
 jmp .UNIQUE179
NOP
NOP
NOP
NOP
NOP
.UNIQUE179: 
	movl	$0, -52(%rbp)
 jmp .UNIQUE180
NOP
NOP
NOP
NOP
NOP
.UNIQUE180: 
	movq	$0, -32(%rbp)
.L14:
 jmp .UNIQUE181
NOP
NOP
NOP
NOP
NOP
.UNIQUE181: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE182
NOP
NOP
NOP
NOP
NOP
.UNIQUE182: 
	cmpq	%rax, -48(%rbp)
 jmp .UNIQUE183
NOP
NOP
NOP
NOP
NOP
.UNIQUE183: 
	jl	.L19
 jmp .UNIQUE184
NOP
NOP
NOP
NOP
NOP
.UNIQUE184: 
	addq	$72, %rsp
 jmp .UNIQUE185
NOP
NOP
NOP
NOP
NOP
.UNIQUE185: 
	popq	%rbx
 jmp .UNIQUE186
NOP
NOP
NOP
NOP
NOP
.UNIQUE186: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE187
NOP
NOP
NOP
NOP
NOP
.UNIQUE187: 
	ret
	.cfi_endproc
.LFE5:
	.size	insert_keys_into_mem, .-insert_keys_into_mem
	.section	.rodata
.LC4:
	.string	"0x%02x "
	.text
	.globl	print_mem
	.type	print_mem, @function
print_mem:
.LFB6:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE188
NOP
NOP
NOP
NOP
NOP
.UNIQUE188: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE189
NOP
NOP
NOP
NOP
NOP
.UNIQUE189: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE190
NOP
NOP
NOP
NOP
NOP
.UNIQUE190: 
	subq	$32, %rsp
 jmp .UNIQUE191
NOP
NOP
NOP
NOP
NOP
.UNIQUE191: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE192
NOP
NOP
NOP
NOP
NOP
.UNIQUE192: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE193
NOP
NOP
NOP
NOP
NOP
.UNIQUE193: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE194
NOP
NOP
NOP
NOP
NOP
.UNIQUE194: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE195
NOP
NOP
NOP
NOP
NOP
.UNIQUE195: 
	jmp	.L21
.L22:
 jmp .UNIQUE196
NOP
NOP
NOP
NOP
NOP
.UNIQUE196: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE197
NOP
NOP
NOP
NOP
NOP
.UNIQUE197: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE198
NOP
NOP
NOP
NOP
NOP
.UNIQUE198: 
	addq	%rdx, %rax
 jmp .UNIQUE199
NOP
NOP
NOP
NOP
NOP
.UNIQUE199: 
	movzbl	(%rax), %eax
 jmp .UNIQUE200
NOP
NOP
NOP
NOP
NOP
.UNIQUE200: 
	movzbl	%al, %eax
 jmp .UNIQUE201
NOP
NOP
NOP
NOP
NOP
.UNIQUE201: 
	movl	%eax, %esi
 jmp .UNIQUE202
NOP
NOP
NOP
NOP
NOP
.UNIQUE202: 
	movl	$.LC4, %edi
 jmp .UNIQUE203
NOP
NOP
NOP
NOP
NOP
.UNIQUE203: 
	movl	$0, %eax
 jmp .UNIQUE204
NOP
NOP
NOP
NOP
NOP
.UNIQUE204: 
	call	printf
 jmp .UNIQUE205
NOP
NOP
NOP
NOP
NOP
.UNIQUE205: 
	addq	$1, -16(%rbp)
.L21:
 jmp .UNIQUE206
NOP
NOP
NOP
NOP
NOP
.UNIQUE206: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE207
NOP
NOP
NOP
NOP
NOP
.UNIQUE207: 
	cmpq	%rax, -16(%rbp)
 jmp .UNIQUE208
NOP
NOP
NOP
NOP
NOP
.UNIQUE208: 
	jl	.L22
 jmp .UNIQUE209
NOP
NOP
NOP
NOP
NOP
.UNIQUE209: 
	movl	$10, %edi
 jmp .UNIQUE210
NOP
NOP
NOP
NOP
NOP
.UNIQUE210: 
	call	putchar
 jmp .UNIQUE211
NOP
NOP
NOP
NOP
NOP
.UNIQUE211: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE212
NOP
NOP
NOP
NOP
NOP
.UNIQUE212: 
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
 jmp .UNIQUE213
NOP
NOP
NOP
NOP
NOP
.UNIQUE213: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE214
NOP
NOP
NOP
NOP
NOP
.UNIQUE214: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE215
NOP
NOP
NOP
NOP
NOP
.UNIQUE215: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE216
NOP
NOP
NOP
NOP
NOP
.UNIQUE216: 
	movq	%rsi, -64(%rbp)
 jmp .UNIQUE217
NOP
NOP
NOP
NOP
NOP
.UNIQUE217: 
	movq	%rdx, -72(%rbp)
 jmp .UNIQUE218
NOP
NOP
NOP
NOP
NOP
.UNIQUE218: 
	movq	$0, -24(%rbp)
 jmp .UNIQUE219
NOP
NOP
NOP
NOP
NOP
.UNIQUE219: 
	movl	$0, -44(%rbp)
 jmp .UNIQUE220
NOP
NOP
NOP
NOP
NOP
.UNIQUE220: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE221
NOP
NOP
NOP
NOP
NOP
.UNIQUE221: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE222
NOP
NOP
NOP
NOP
NOP
.UNIQUE222: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE223
NOP
NOP
NOP
NOP
NOP
.UNIQUE223: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE224
NOP
NOP
NOP
NOP
NOP
.UNIQUE224: 
	jmp	.L24
.L29:
 jmp .UNIQUE225
NOP
NOP
NOP
NOP
NOP
.UNIQUE225: 
	cmpl	$0, -44(%rbp)
 jmp .UNIQUE226
NOP
NOP
NOP
NOP
NOP
.UNIQUE226: 
	je	.L25
 jmp .UNIQUE227
NOP
NOP
NOP
NOP
NOP
.UNIQUE227: 
	addq	$5, -40(%rbp)
 jmp .UNIQUE228
NOP
NOP
NOP
NOP
NOP
.UNIQUE228: 
	movl	$0, -44(%rbp)
 jmp .UNIQUE229
NOP
NOP
NOP
NOP
NOP
.UNIQUE229: 
	jmp	.L24
.L25:
 jmp .UNIQUE230
NOP
NOP
NOP
NOP
NOP
.UNIQUE230: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE231
NOP
NOP
NOP
NOP
NOP
.UNIQUE231: 
	jmp	.L26
.L28:
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
	movq	-40(%rbp), %rdx
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
	movq	%rax, %rdx
 jmp .UNIQUE236
NOP
NOP
NOP
NOP
NOP
.UNIQUE236: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE237
NOP
NOP
NOP
NOP
NOP
.UNIQUE237: 
	addq	%rax, %rdx
 jmp .UNIQUE238
NOP
NOP
NOP
NOP
NOP
.UNIQUE238: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE239
NOP
NOP
NOP
NOP
NOP
.UNIQUE239: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE240
NOP
NOP
NOP
NOP
NOP
.UNIQUE240: 
	addq	%rcx, %rax
 jmp .UNIQUE241
NOP
NOP
NOP
NOP
NOP
.UNIQUE241: 
	movq	%rax, %rcx
 jmp .UNIQUE242
NOP
NOP
NOP
NOP
NOP
.UNIQUE242: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE243
NOP
NOP
NOP
NOP
NOP
.UNIQUE243: 
	addq	%rcx, %rax
 jmp .UNIQUE244
NOP
NOP
NOP
NOP
NOP
.UNIQUE244: 
	movzbl	(%rax), %eax
 jmp .UNIQUE245
NOP
NOP
NOP
NOP
NOP
.UNIQUE245: 
	movb	%al, (%rdx)
 jmp .UNIQUE246
NOP
NOP
NOP
NOP
NOP
.UNIQUE246: 
	addq	$1, -32(%rbp)
.L26:
 jmp .UNIQUE247
NOP
NOP
NOP
NOP
NOP
.UNIQUE247: 
	cmpq	$3, -32(%rbp)
 jmp .UNIQUE248
NOP
NOP
NOP
NOP
NOP
.UNIQUE248: 
	jg	.L27
 jmp .UNIQUE249
NOP
NOP
NOP
NOP
NOP
.UNIQUE249: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE250
NOP
NOP
NOP
NOP
NOP
.UNIQUE250: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE251
NOP
NOP
NOP
NOP
NOP
.UNIQUE251: 
	addq	%rdx, %rax
 jmp .UNIQUE252
NOP
NOP
NOP
NOP
NOP
.UNIQUE252: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE253
NOP
NOP
NOP
NOP
NOP
.UNIQUE253: 
	jl	.L28
.L27:
 jmp .UNIQUE254
NOP
NOP
NOP
NOP
NOP
.UNIQUE254: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE255
NOP
NOP
NOP
NOP
NOP
.UNIQUE255: 
	addq	%rax, -16(%rbp)
 jmp .UNIQUE256
NOP
NOP
NOP
NOP
NOP
.UNIQUE256: 
	addq	$1, -24(%rbp)
 jmp .UNIQUE257
NOP
NOP
NOP
NOP
NOP
.UNIQUE257: 
	addq	$4, -40(%rbp)
 jmp .UNIQUE258
NOP
NOP
NOP
NOP
NOP
.UNIQUE258: 
	movl	$1, -44(%rbp)
.L24:
 jmp .UNIQUE259
NOP
NOP
NOP
NOP
NOP
.UNIQUE259: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE260
NOP
NOP
NOP
NOP
NOP
.UNIQUE260: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE261
NOP
NOP
NOP
NOP
NOP
.UNIQUE261: 
	jl	.L29
 jmp .UNIQUE262
NOP
NOP
NOP
NOP
NOP
.UNIQUE262: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE263
NOP
NOP
NOP
NOP
NOP
.UNIQUE263: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE264
NOP
NOP
NOP
NOP
NOP
.UNIQUE264: 
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
 jmp .UNIQUE265
NOP
NOP
NOP
NOP
NOP
.UNIQUE265: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE266
NOP
NOP
NOP
NOP
NOP
.UNIQUE266: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE267
NOP
NOP
NOP
NOP
NOP
.UNIQUE267: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE268
NOP
NOP
NOP
NOP
NOP
.UNIQUE268: 
	movq	%rsi, -80(%rbp)
 jmp .UNIQUE269
NOP
NOP
NOP
NOP
NOP
.UNIQUE269: 
	movq	%rdx, -88(%rbp)
 jmp .UNIQUE270
NOP
NOP
NOP
NOP
NOP
.UNIQUE270: 
	movl	%ecx, -92(%rbp)
 jmp .UNIQUE271
NOP
NOP
NOP
NOP
NOP
.UNIQUE271: 
	movq	%r8, -104(%rbp)
 jmp .UNIQUE272
NOP
NOP
NOP
NOP
NOP
.UNIQUE272: 
	movq	$0, -24(%rbp)
 jmp .UNIQUE273
NOP
NOP
NOP
NOP
NOP
.UNIQUE273: 
	movl	$0, -60(%rbp)
 jmp .UNIQUE274
NOP
NOP
NOP
NOP
NOP
.UNIQUE274: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE275
NOP
NOP
NOP
NOP
NOP
.UNIQUE275: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE276
NOP
NOP
NOP
NOP
NOP
.UNIQUE276: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE277
NOP
NOP
NOP
NOP
NOP
.UNIQUE277: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE278
NOP
NOP
NOP
NOP
NOP
.UNIQUE278: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE279
NOP
NOP
NOP
NOP
NOP
.UNIQUE279: 
	cmpl	$0, -92(%rbp)
 jmp .UNIQUE280
NOP
NOP
NOP
NOP
NOP
.UNIQUE280: 
	je	.L32
 jmp .UNIQUE281
NOP
NOP
NOP
NOP
NOP
.UNIQUE281: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE282
NOP
NOP
NOP
NOP
NOP
.UNIQUE282: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE283
NOP
NOP
NOP
NOP
NOP
.UNIQUE283: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE284
NOP
NOP
NOP
NOP
NOP
.UNIQUE284: 
	testq	%rax, %rax
 jmp .UNIQUE285
NOP
NOP
NOP
NOP
NOP
.UNIQUE285: 
	cmovs	%rdx, %rax
 jmp .UNIQUE286
NOP
NOP
NOP
NOP
NOP
.UNIQUE286: 
	sarq	$2, %rax
 jmp .UNIQUE287
NOP
NOP
NOP
NOP
NOP
.UNIQUE287: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE288
NOP
NOP
NOP
NOP
NOP
.UNIQUE288: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE289
NOP
NOP
NOP
NOP
NOP
.UNIQUE289: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE290
NOP
NOP
NOP
NOP
NOP
.UNIQUE290: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE291
NOP
NOP
NOP
NOP
NOP
.UNIQUE291: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE292
NOP
NOP
NOP
NOP
NOP
.UNIQUE292: 
	cmpq	%rax, %rdx
 jmp .UNIQUE293
NOP
NOP
NOP
NOP
NOP
.UNIQUE293: 
	jne	.L33
 jmp .UNIQUE294
NOP
NOP
NOP
NOP
NOP
.UNIQUE294: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE295
NOP
NOP
NOP
NOP
NOP
.UNIQUE295: 
	movq	%rdx, %rax
 jmp .UNIQUE296
NOP
NOP
NOP
NOP
NOP
.UNIQUE296: 
	salq	$3, %rax
 jmp .UNIQUE297
NOP
NOP
NOP
NOP
NOP
.UNIQUE297: 
	addq	%rdx, %rax
 jmp .UNIQUE298
NOP
NOP
NOP
NOP
NOP
.UNIQUE298: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE299
NOP
NOP
NOP
NOP
NOP
.UNIQUE299: 
	jmp	.L32
.L33:
 jmp .UNIQUE300
NOP
NOP
NOP
NOP
NOP
.UNIQUE300: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE301
NOP
NOP
NOP
NOP
NOP
.UNIQUE301: 
	movq	%rdx, %rax
 jmp .UNIQUE302
NOP
NOP
NOP
NOP
NOP
.UNIQUE302: 
	salq	$3, %rax
 jmp .UNIQUE303
NOP
NOP
NOP
NOP
NOP
.UNIQUE303: 
	addq	%rdx, %rax
 jmp .UNIQUE304
NOP
NOP
NOP
NOP
NOP
.UNIQUE304: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE305
NOP
NOP
NOP
NOP
NOP
.UNIQUE305: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE306
NOP
NOP
NOP
NOP
NOP
.UNIQUE306: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE307
NOP
NOP
NOP
NOP
NOP
.UNIQUE307: 
	movq	%rax, %rdx
 jmp .UNIQUE308
NOP
NOP
NOP
NOP
NOP
.UNIQUE308: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE309
NOP
NOP
NOP
NOP
NOP
.UNIQUE309: 
	movl	$0, %eax
 jmp .UNIQUE310
NOP
NOP
NOP
NOP
NOP
.UNIQUE310: 
	subq	%rcx, %rax
 jmp .UNIQUE311
NOP
NOP
NOP
NOP
NOP
.UNIQUE311: 
	salq	$2, %rax
 jmp .UNIQUE312
NOP
NOP
NOP
NOP
NOP
.UNIQUE312: 
	addq	%rdx, %rax
 jmp .UNIQUE313
NOP
NOP
NOP
NOP
NOP
.UNIQUE313: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE314
NOP
NOP
NOP
NOP
NOP
.UNIQUE314: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE315
NOP
NOP
NOP
NOP
NOP
.UNIQUE315: 
	jmp	.L34
.L36:
 jmp .UNIQUE316
NOP
NOP
NOP
NOP
NOP
.UNIQUE316: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE317
NOP
NOP
NOP
NOP
NOP
.UNIQUE317: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE318
NOP
NOP
NOP
NOP
NOP
.UNIQUE318: 
	addq	%rdx, %rax
 jmp .UNIQUE319
NOP
NOP
NOP
NOP
NOP
.UNIQUE319: 
	movq	%rax, %rdx
 jmp .UNIQUE320
NOP
NOP
NOP
NOP
NOP
.UNIQUE320: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE321
NOP
NOP
NOP
NOP
NOP
.UNIQUE321: 
	addq	%rax, %rdx
 jmp .UNIQUE322
NOP
NOP
NOP
NOP
NOP
.UNIQUE322: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE323
NOP
NOP
NOP
NOP
NOP
.UNIQUE323: 
	movq	-48(%rbp), %rcx
 jmp .UNIQUE324
NOP
NOP
NOP
NOP
NOP
.UNIQUE324: 
	addq	%rcx, %rax
 jmp .UNIQUE325
NOP
NOP
NOP
NOP
NOP
.UNIQUE325: 
	movq	%rax, %rcx
 jmp .UNIQUE326
NOP
NOP
NOP
NOP
NOP
.UNIQUE326: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE327
NOP
NOP
NOP
NOP
NOP
.UNIQUE327: 
	addq	%rcx, %rax
 jmp .UNIQUE328
NOP
NOP
NOP
NOP
NOP
.UNIQUE328: 
	movzbl	(%rax), %eax
 jmp .UNIQUE329
NOP
NOP
NOP
NOP
NOP
.UNIQUE329: 
	movb	%al, (%rdx)
 jmp .UNIQUE330
NOP
NOP
NOP
NOP
NOP
.UNIQUE330: 
	addq	$1, -40(%rbp)
.L34:
 jmp .UNIQUE331
NOP
NOP
NOP
NOP
NOP
.UNIQUE331: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE332
NOP
NOP
NOP
NOP
NOP
.UNIQUE332: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE333
NOP
NOP
NOP
NOP
NOP
.UNIQUE333: 
	addq	%rdx, %rax
 jmp .UNIQUE334
NOP
NOP
NOP
NOP
NOP
.UNIQUE334: 
	cmpq	$3, %rax
 jmp .UNIQUE335
NOP
NOP
NOP
NOP
NOP
.UNIQUE335: 
	jg	.L35
 jmp .UNIQUE336
NOP
NOP
NOP
NOP
NOP
.UNIQUE336: 
	movq	-40(%rbp), %rax
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
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE340
NOP
NOP
NOP
NOP
NOP
.UNIQUE340: 
	jl	.L36
.L35:
 jmp .UNIQUE341
NOP
NOP
NOP
NOP
NOP
.UNIQUE341: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE342
NOP
NOP
NOP
NOP
NOP
.UNIQUE342: 
	addq	%rax, -24(%rbp)
 jmp .UNIQUE343
NOP
NOP
NOP
NOP
NOP
.UNIQUE343: 
	addq	$9, -32(%rbp)
 jmp .UNIQUE344
NOP
NOP
NOP
NOP
NOP
.UNIQUE344: 
	jmp	.L37
.L32:
 jmp .UNIQUE345
NOP
NOP
NOP
NOP
NOP
.UNIQUE345: 
	jmp	.L37
.L42:
 jmp .UNIQUE346
NOP
NOP
NOP
NOP
NOP
.UNIQUE346: 
	cmpl	$0, -60(%rbp)
 jmp .UNIQUE347
NOP
NOP
NOP
NOP
NOP
.UNIQUE347: 
	je	.L38
 jmp .UNIQUE348
NOP
NOP
NOP
NOP
NOP
.UNIQUE348: 
	addq	$5, -56(%rbp)
 jmp .UNIQUE349
NOP
NOP
NOP
NOP
NOP
.UNIQUE349: 
	movl	$0, -60(%rbp)
 jmp .UNIQUE350
NOP
NOP
NOP
NOP
NOP
.UNIQUE350: 
	jmp	.L37
.L38:
 jmp .UNIQUE351
NOP
NOP
NOP
NOP
NOP
.UNIQUE351: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE352
NOP
NOP
NOP
NOP
NOP
.UNIQUE352: 
	jmp	.L39
.L41:
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
	movq	%rax, %rdx
 jmp .UNIQUE357
NOP
NOP
NOP
NOP
NOP
.UNIQUE357: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE358
NOP
NOP
NOP
NOP
NOP
.UNIQUE358: 
	addq	%rax, %rdx
 jmp .UNIQUE359
NOP
NOP
NOP
NOP
NOP
.UNIQUE359: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE360
NOP
NOP
NOP
NOP
NOP
.UNIQUE360: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE361
NOP
NOP
NOP
NOP
NOP
.UNIQUE361: 
	addq	%rcx, %rax
 jmp .UNIQUE362
NOP
NOP
NOP
NOP
NOP
.UNIQUE362: 
	movq	%rax, %rcx
 jmp .UNIQUE363
NOP
NOP
NOP
NOP
NOP
.UNIQUE363: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE364
NOP
NOP
NOP
NOP
NOP
.UNIQUE364: 
	addq	%rcx, %rax
 jmp .UNIQUE365
NOP
NOP
NOP
NOP
NOP
.UNIQUE365: 
	movzbl	(%rax), %eax
 jmp .UNIQUE366
NOP
NOP
NOP
NOP
NOP
.UNIQUE366: 
	movb	%al, (%rdx)
 jmp .UNIQUE367
NOP
NOP
NOP
NOP
NOP
.UNIQUE367: 
	addq	$1, -48(%rbp)
.L39:
 jmp .UNIQUE368
NOP
NOP
NOP
NOP
NOP
.UNIQUE368: 
	cmpq	$3, -48(%rbp)
 jmp .UNIQUE369
NOP
NOP
NOP
NOP
NOP
.UNIQUE369: 
	jg	.L40
 jmp .UNIQUE370
NOP
NOP
NOP
NOP
NOP
.UNIQUE370: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE371
NOP
NOP
NOP
NOP
NOP
.UNIQUE371: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE372
NOP
NOP
NOP
NOP
NOP
.UNIQUE372: 
	addq	%rdx, %rax
 jmp .UNIQUE373
NOP
NOP
NOP
NOP
NOP
.UNIQUE373: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE374
NOP
NOP
NOP
NOP
NOP
.UNIQUE374: 
	jl	.L41
.L40:
 jmp .UNIQUE375
NOP
NOP
NOP
NOP
NOP
.UNIQUE375: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE376
NOP
NOP
NOP
NOP
NOP
.UNIQUE376: 
	addq	%rax, -24(%rbp)
 jmp .UNIQUE377
NOP
NOP
NOP
NOP
NOP
.UNIQUE377: 
	addq	$4, -56(%rbp)
 jmp .UNIQUE378
NOP
NOP
NOP
NOP
NOP
.UNIQUE378: 
	movl	$1, -60(%rbp)
.L37:
 jmp .UNIQUE379
NOP
NOP
NOP
NOP
NOP
.UNIQUE379: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE380
NOP
NOP
NOP
NOP
NOP
.UNIQUE380: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE381
NOP
NOP
NOP
NOP
NOP
.UNIQUE381: 
	jl	.L42
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
.LFE8:
	.size	get_secure_data, .-get_secure_data
	.globl	set_secure_data
	.type	set_secure_data, @function
set_secure_data:
.LFB9:
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
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE387
NOP
NOP
NOP
NOP
NOP
.UNIQUE387: 
	movq	%rsi, -80(%rbp)
 jmp .UNIQUE388
NOP
NOP
NOP
NOP
NOP
.UNIQUE388: 
	movq	%rdx, -88(%rbp)
 jmp .UNIQUE389
NOP
NOP
NOP
NOP
NOP
.UNIQUE389: 
	movl	%ecx, -92(%rbp)
 jmp .UNIQUE390
NOP
NOP
NOP
NOP
NOP
.UNIQUE390: 
	movq	%r8, -104(%rbp)
 jmp .UNIQUE391
NOP
NOP
NOP
NOP
NOP
.UNIQUE391: 
	movq	$0, -24(%rbp)
 jmp .UNIQUE392
NOP
NOP
NOP
NOP
NOP
.UNIQUE392: 
	movl	$0, -60(%rbp)
 jmp .UNIQUE393
NOP
NOP
NOP
NOP
NOP
.UNIQUE393: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE394
NOP
NOP
NOP
NOP
NOP
.UNIQUE394: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE395
NOP
NOP
NOP
NOP
NOP
.UNIQUE395: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE396
NOP
NOP
NOP
NOP
NOP
.UNIQUE396: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE397
NOP
NOP
NOP
NOP
NOP
.UNIQUE397: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE398
NOP
NOP
NOP
NOP
NOP
.UNIQUE398: 
	cmpl	$0, -92(%rbp)
 jmp .UNIQUE399
NOP
NOP
NOP
NOP
NOP
.UNIQUE399: 
	je	.L44
 jmp .UNIQUE400
NOP
NOP
NOP
NOP
NOP
.UNIQUE400: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE401
NOP
NOP
NOP
NOP
NOP
.UNIQUE401: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE402
NOP
NOP
NOP
NOP
NOP
.UNIQUE402: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE403
NOP
NOP
NOP
NOP
NOP
.UNIQUE403: 
	testq	%rax, %rax
 jmp .UNIQUE404
NOP
NOP
NOP
NOP
NOP
.UNIQUE404: 
	cmovs	%rdx, %rax
 jmp .UNIQUE405
NOP
NOP
NOP
NOP
NOP
.UNIQUE405: 
	sarq	$2, %rax
 jmp .UNIQUE406
NOP
NOP
NOP
NOP
NOP
.UNIQUE406: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE407
NOP
NOP
NOP
NOP
NOP
.UNIQUE407: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE408
NOP
NOP
NOP
NOP
NOP
.UNIQUE408: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE409
NOP
NOP
NOP
NOP
NOP
.UNIQUE409: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE410
NOP
NOP
NOP
NOP
NOP
.UNIQUE410: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE411
NOP
NOP
NOP
NOP
NOP
.UNIQUE411: 
	cmpq	%rax, %rdx
 jmp .UNIQUE412
NOP
NOP
NOP
NOP
NOP
.UNIQUE412: 
	jne	.L45
 jmp .UNIQUE413
NOP
NOP
NOP
NOP
NOP
.UNIQUE413: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE414
NOP
NOP
NOP
NOP
NOP
.UNIQUE414: 
	movq	%rdx, %rax
 jmp .UNIQUE415
NOP
NOP
NOP
NOP
NOP
.UNIQUE415: 
	salq	$3, %rax
 jmp .UNIQUE416
NOP
NOP
NOP
NOP
NOP
.UNIQUE416: 
	addq	%rdx, %rax
 jmp .UNIQUE417
NOP
NOP
NOP
NOP
NOP
.UNIQUE417: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE418
NOP
NOP
NOP
NOP
NOP
.UNIQUE418: 
	jmp	.L44
.L45:
 jmp .UNIQUE419
NOP
NOP
NOP
NOP
NOP
.UNIQUE419: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE420
NOP
NOP
NOP
NOP
NOP
.UNIQUE420: 
	movq	%rdx, %rax
 jmp .UNIQUE421
NOP
NOP
NOP
NOP
NOP
.UNIQUE421: 
	salq	$3, %rax
 jmp .UNIQUE422
NOP
NOP
NOP
NOP
NOP
.UNIQUE422: 
	addq	%rdx, %rax
 jmp .UNIQUE423
NOP
NOP
NOP
NOP
NOP
.UNIQUE423: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE424
NOP
NOP
NOP
NOP
NOP
.UNIQUE424: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE425
NOP
NOP
NOP
NOP
NOP
.UNIQUE425: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE426
NOP
NOP
NOP
NOP
NOP
.UNIQUE426: 
	movq	%rax, %rdx
 jmp .UNIQUE427
NOP
NOP
NOP
NOP
NOP
.UNIQUE427: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE428
NOP
NOP
NOP
NOP
NOP
.UNIQUE428: 
	movl	$0, %eax
 jmp .UNIQUE429
NOP
NOP
NOP
NOP
NOP
.UNIQUE429: 
	subq	%rcx, %rax
 jmp .UNIQUE430
NOP
NOP
NOP
NOP
NOP
.UNIQUE430: 
	salq	$2, %rax
 jmp .UNIQUE431
NOP
NOP
NOP
NOP
NOP
.UNIQUE431: 
	addq	%rdx, %rax
 jmp .UNIQUE432
NOP
NOP
NOP
NOP
NOP
.UNIQUE432: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE433
NOP
NOP
NOP
NOP
NOP
.UNIQUE433: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE434
NOP
NOP
NOP
NOP
NOP
.UNIQUE434: 
	jmp	.L46
.L48:
 jmp .UNIQUE435
NOP
NOP
NOP
NOP
NOP
.UNIQUE435: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE436
NOP
NOP
NOP
NOP
NOP
.UNIQUE436: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE437
NOP
NOP
NOP
NOP
NOP
.UNIQUE437: 
	addq	%rdx, %rax
 jmp .UNIQUE438
NOP
NOP
NOP
NOP
NOP
.UNIQUE438: 
	movq	%rax, %rdx
 jmp .UNIQUE439
NOP
NOP
NOP
NOP
NOP
.UNIQUE439: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE440
NOP
NOP
NOP
NOP
NOP
.UNIQUE440: 
	addq	%rax, %rdx
 jmp .UNIQUE441
NOP
NOP
NOP
NOP
NOP
.UNIQUE441: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE442
NOP
NOP
NOP
NOP
NOP
.UNIQUE442: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE443
NOP
NOP
NOP
NOP
NOP
.UNIQUE443: 
	addq	%rcx, %rax
 jmp .UNIQUE444
NOP
NOP
NOP
NOP
NOP
.UNIQUE444: 
	movq	%rax, %rcx
 jmp .UNIQUE445
NOP
NOP
NOP
NOP
NOP
.UNIQUE445: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE446
NOP
NOP
NOP
NOP
NOP
.UNIQUE446: 
	addq	%rcx, %rax
 jmp .UNIQUE447
NOP
NOP
NOP
NOP
NOP
.UNIQUE447: 
	movzbl	(%rax), %eax
 jmp .UNIQUE448
NOP
NOP
NOP
NOP
NOP
.UNIQUE448: 
	movb	%al, (%rdx)
 jmp .UNIQUE449
NOP
NOP
NOP
NOP
NOP
.UNIQUE449: 
	addq	$1, -40(%rbp)
.L46:
 jmp .UNIQUE450
NOP
NOP
NOP
NOP
NOP
.UNIQUE450: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE451
NOP
NOP
NOP
NOP
NOP
.UNIQUE451: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE452
NOP
NOP
NOP
NOP
NOP
.UNIQUE452: 
	addq	%rdx, %rax
 jmp .UNIQUE453
NOP
NOP
NOP
NOP
NOP
.UNIQUE453: 
	cmpq	$3, %rax
 jmp .UNIQUE454
NOP
NOP
NOP
NOP
NOP
.UNIQUE454: 
	jg	.L47
 jmp .UNIQUE455
NOP
NOP
NOP
NOP
NOP
.UNIQUE455: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE456
NOP
NOP
NOP
NOP
NOP
.UNIQUE456: 
	movq	-24(%rbp), %rdx
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
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE459
NOP
NOP
NOP
NOP
NOP
.UNIQUE459: 
	jl	.L48
.L47:
 jmp .UNIQUE460
NOP
NOP
NOP
NOP
NOP
.UNIQUE460: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE461
NOP
NOP
NOP
NOP
NOP
.UNIQUE461: 
	addq	%rax, -24(%rbp)
 jmp .UNIQUE462
NOP
NOP
NOP
NOP
NOP
.UNIQUE462: 
	addq	$9, -32(%rbp)
 jmp .UNIQUE463
NOP
NOP
NOP
NOP
NOP
.UNIQUE463: 
	jmp	.L49
.L44:
 jmp .UNIQUE464
NOP
NOP
NOP
NOP
NOP
.UNIQUE464: 
	jmp	.L49
.L54:
 jmp .UNIQUE465
NOP
NOP
NOP
NOP
NOP
.UNIQUE465: 
	cmpl	$0, -60(%rbp)
 jmp .UNIQUE466
NOP
NOP
NOP
NOP
NOP
.UNIQUE466: 
	je	.L50
 jmp .UNIQUE467
NOP
NOP
NOP
NOP
NOP
.UNIQUE467: 
	addq	$5, -56(%rbp)
 jmp .UNIQUE468
NOP
NOP
NOP
NOP
NOP
.UNIQUE468: 
	movl	$0, -60(%rbp)
 jmp .UNIQUE469
NOP
NOP
NOP
NOP
NOP
.UNIQUE469: 
	jmp	.L49
.L50:
 jmp .UNIQUE470
NOP
NOP
NOP
NOP
NOP
.UNIQUE470: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE471
NOP
NOP
NOP
NOP
NOP
.UNIQUE471: 
	jmp	.L51
.L53:
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
	movq	-56(%rbp), %rdx
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
	movq	%rax, %rdx
 jmp .UNIQUE476
NOP
NOP
NOP
NOP
NOP
.UNIQUE476: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE477
NOP
NOP
NOP
NOP
NOP
.UNIQUE477: 
	addq	%rax, %rdx
 jmp .UNIQUE478
NOP
NOP
NOP
NOP
NOP
.UNIQUE478: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE479
NOP
NOP
NOP
NOP
NOP
.UNIQUE479: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE480
NOP
NOP
NOP
NOP
NOP
.UNIQUE480: 
	addq	%rcx, %rax
 jmp .UNIQUE481
NOP
NOP
NOP
NOP
NOP
.UNIQUE481: 
	movq	%rax, %rcx
 jmp .UNIQUE482
NOP
NOP
NOP
NOP
NOP
.UNIQUE482: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE483
NOP
NOP
NOP
NOP
NOP
.UNIQUE483: 
	addq	%rcx, %rax
 jmp .UNIQUE484
NOP
NOP
NOP
NOP
NOP
.UNIQUE484: 
	movzbl	(%rax), %eax
 jmp .UNIQUE485
NOP
NOP
NOP
NOP
NOP
.UNIQUE485: 
	movb	%al, (%rdx)
 jmp .UNIQUE486
NOP
NOP
NOP
NOP
NOP
.UNIQUE486: 
	addq	$1, -48(%rbp)
.L51:
 jmp .UNIQUE487
NOP
NOP
NOP
NOP
NOP
.UNIQUE487: 
	cmpq	$3, -48(%rbp)
 jmp .UNIQUE488
NOP
NOP
NOP
NOP
NOP
.UNIQUE488: 
	jg	.L52
 jmp .UNIQUE489
NOP
NOP
NOP
NOP
NOP
.UNIQUE489: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE490
NOP
NOP
NOP
NOP
NOP
.UNIQUE490: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE491
NOP
NOP
NOP
NOP
NOP
.UNIQUE491: 
	addq	%rdx, %rax
 jmp .UNIQUE492
NOP
NOP
NOP
NOP
NOP
.UNIQUE492: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE493
NOP
NOP
NOP
NOP
NOP
.UNIQUE493: 
	jl	.L53
.L52:
 jmp .UNIQUE494
NOP
NOP
NOP
NOP
NOP
.UNIQUE494: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE495
NOP
NOP
NOP
NOP
NOP
.UNIQUE495: 
	addq	%rax, -24(%rbp)
 jmp .UNIQUE496
NOP
NOP
NOP
NOP
NOP
.UNIQUE496: 
	addq	$4, -56(%rbp)
 jmp .UNIQUE497
NOP
NOP
NOP
NOP
NOP
.UNIQUE497: 
	movl	$1, -60(%rbp)
.L49:
 jmp .UNIQUE498
NOP
NOP
NOP
NOP
NOP
.UNIQUE498: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE499
NOP
NOP
NOP
NOP
NOP
.UNIQUE499: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE500
NOP
NOP
NOP
NOP
NOP
.UNIQUE500: 
	jl	.L54
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
.LFE9:
	.size	set_secure_data, .-set_secure_data
	.globl	find_useful_chunks
	.type	find_useful_chunks, @function
find_useful_chunks:
.LFB10:
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
	movq	%rdi, -40(%rbp)
 jmp .UNIQUE506
NOP
NOP
NOP
NOP
NOP
.UNIQUE506: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE507
NOP
NOP
NOP
NOP
NOP
.UNIQUE507: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE508
NOP
NOP
NOP
NOP
NOP
.UNIQUE508: 
	movq	$5, -16(%rbp)
 jmp .UNIQUE509
NOP
NOP
NOP
NOP
NOP
.UNIQUE509: 
	movq	$4, -8(%rbp)
 jmp .UNIQUE510
NOP
NOP
NOP
NOP
NOP
.UNIQUE510: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE511
NOP
NOP
NOP
NOP
NOP
.UNIQUE511: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE512
NOP
NOP
NOP
NOP
NOP
.UNIQUE512: 
	addq	%rdx, %rax
 jmp .UNIQUE513
NOP
NOP
NOP
NOP
NOP
.UNIQUE513: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE514
NOP
NOP
NOP
NOP
NOP
.UNIQUE514: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE515
NOP
NOP
NOP
NOP
NOP
.UNIQUE515: 
	leaq	(%rdx,%rcx), %rsi
 jmp .UNIQUE516
NOP
NOP
NOP
NOP
NOP
.UNIQUE516: 
	cqto
 jmp .UNIQUE517
NOP
NOP
NOP
NOP
NOP
.UNIQUE517: 
	idivq	%rsi
 jmp .UNIQUE518
NOP
NOP
NOP
NOP
NOP
.UNIQUE518: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE519
NOP
NOP
NOP
NOP
NOP
.UNIQUE519: 
	ret
	.cfi_endproc
.LFE10:
	.size	find_useful_chunks, .-find_useful_chunks
	.section	.rodata
.LC5:
	.string	"rb"
.LC6:
	.string	"heap_keyshares"
	.align 8
.LC7:
	.string	"init_mem:heap_keyshares file error\n"
	.text
	.globl	init_mem
	.type	init_mem, @function
init_mem:
.LFB11:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE520
NOP
NOP
NOP
NOP
NOP
.UNIQUE520: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE521
NOP
NOP
NOP
NOP
NOP
.UNIQUE521: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE522
NOP
NOP
NOP
NOP
NOP
.UNIQUE522: 
	subq	$16, %rsp
 jmp .UNIQUE523
NOP
NOP
NOP
NOP
NOP
.UNIQUE523: 
	movl	$0, %eax
 jmp .UNIQUE524
NOP
NOP
NOP
NOP
NOP
.UNIQUE524: 
	call	allocate_mem
 jmp .UNIQUE525
NOP
NOP
NOP
NOP
NOP
.UNIQUE525: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE526
NOP
NOP
NOP
NOP
NOP
.UNIQUE526: 
	movl	$.LC5, %esi
 jmp .UNIQUE527
NOP
NOP
NOP
NOP
NOP
.UNIQUE527: 
	movl	$.LC6, %edi
 jmp .UNIQUE528
NOP
NOP
NOP
NOP
NOP
.UNIQUE528: 
	call	fopen
 jmp .UNIQUE529
NOP
NOP
NOP
NOP
NOP
.UNIQUE529: 
	movq	%rax, keyshare_input_file(%rip)
 jmp .UNIQUE530
NOP
NOP
NOP
NOP
NOP
.UNIQUE530: 
	movq	keyshare_input_file(%rip), %rax
 jmp .UNIQUE531
NOP
NOP
NOP
NOP
NOP
.UNIQUE531: 
	testq	%rax, %rax
 jmp .UNIQUE532
NOP
NOP
NOP
NOP
NOP
.UNIQUE532: 
	jne	.L58
 jmp .UNIQUE533
NOP
NOP
NOP
NOP
NOP
.UNIQUE533: 
	movl	$.LC7, %edi
 jmp .UNIQUE534
NOP
NOP
NOP
NOP
NOP
.UNIQUE534: 
	call	perror
 jmp .UNIQUE535
NOP
NOP
NOP
NOP
NOP
.UNIQUE535: 
	movl	$43, %edi
 jmp .UNIQUE536
NOP
NOP
NOP
NOP
NOP
.UNIQUE536: 
	call	exit
.L58:
 jmp .UNIQUE537
NOP
NOP
NOP
NOP
NOP
.UNIQUE537: 
	movq	-8(%rbp), %rax
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
	call	insert_keys_into_mem
 jmp .UNIQUE540
NOP
NOP
NOP
NOP
NOP
.UNIQUE540: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE541
NOP
NOP
NOP
NOP
NOP
.UNIQUE541: 
	movq	%rax, memory_chunk(%rip)
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
	movq	%rax, last_unused_memory(%rip)
 jmp .UNIQUE544
NOP
NOP
NOP
NOP
NOP
.UNIQUE544: 
	movq	keyshare_input_file(%rip), %rax
 jmp .UNIQUE545
NOP
NOP
NOP
NOP
NOP
.UNIQUE545: 
	movq	%rax, %rdi
 jmp .UNIQUE546
NOP
NOP
NOP
NOP
NOP
.UNIQUE546: 
	call	fclose
 jmp .UNIQUE547
NOP
NOP
NOP
NOP
NOP
.UNIQUE547: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE548
NOP
NOP
NOP
NOP
NOP
.UNIQUE548: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE549
NOP
NOP
NOP
NOP
NOP
.UNIQUE549: 
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
 jmp .UNIQUE550
NOP
NOP
NOP
NOP
NOP
.UNIQUE550: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE551
NOP
NOP
NOP
NOP
NOP
.UNIQUE551: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE552
NOP
NOP
NOP
NOP
NOP
.UNIQUE552: 
	subq	$16, %rsp
 jmp .UNIQUE553
NOP
NOP
NOP
NOP
NOP
.UNIQUE553: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE554
NOP
NOP
NOP
NOP
NOP
.UNIQUE554: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE555
NOP
NOP
NOP
NOP
NOP
.UNIQUE555: 
	movq	%rax, %rdi
 jmp .UNIQUE556
NOP
NOP
NOP
NOP
NOP
.UNIQUE556: 
	call	free
 jmp .UNIQUE557
NOP
NOP
NOP
NOP
NOP
.UNIQUE557: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE558
NOP
NOP
NOP
NOP
NOP
.UNIQUE558: 
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
 jmp .UNIQUE559
NOP
NOP
NOP
NOP
NOP
.UNIQUE559: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE560
NOP
NOP
NOP
NOP
NOP
.UNIQUE560: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE561
NOP
NOP
NOP
NOP
NOP
.UNIQUE561: 
	subq	$16, %rsp
 jmp .UNIQUE562
NOP
NOP
NOP
NOP
NOP
.UNIQUE562: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE563
NOP
NOP
NOP
NOP
NOP
.UNIQUE563: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE564
NOP
NOP
NOP
NOP
NOP
.UNIQUE564: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE565
NOP
NOP
NOP
NOP
NOP
.UNIQUE565: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE566
NOP
NOP
NOP
NOP
NOP
.UNIQUE566: 
	movl	$0, %r8d
 jmp .UNIQUE567
NOP
NOP
NOP
NOP
NOP
.UNIQUE567: 
	movl	$0, %ecx
 jmp .UNIQUE568
NOP
NOP
NOP
NOP
NOP
.UNIQUE568: 
	movl	$1, %esi
 jmp .UNIQUE569
NOP
NOP
NOP
NOP
NOP
.UNIQUE569: 
	movq	%rax, %rdi
 jmp .UNIQUE570
NOP
NOP
NOP
NOP
NOP
.UNIQUE570: 
	call	get_secure_data
 jmp .UNIQUE571
NOP
NOP
NOP
NOP
NOP
.UNIQUE571: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE572
NOP
NOP
NOP
NOP
NOP
.UNIQUE572: 
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
 jmp .UNIQUE573
NOP
NOP
NOP
NOP
NOP
.UNIQUE573: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE574
NOP
NOP
NOP
NOP
NOP
.UNIQUE574: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE575
NOP
NOP
NOP
NOP
NOP
.UNIQUE575: 
	subq	$16, %rsp
 jmp .UNIQUE576
NOP
NOP
NOP
NOP
NOP
.UNIQUE576: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE577
NOP
NOP
NOP
NOP
NOP
.UNIQUE577: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE578
NOP
NOP
NOP
NOP
NOP
.UNIQUE578: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE579
NOP
NOP
NOP
NOP
NOP
.UNIQUE579: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE580
NOP
NOP
NOP
NOP
NOP
.UNIQUE580: 
	movl	$0, %r8d
 jmp .UNIQUE581
NOP
NOP
NOP
NOP
NOP
.UNIQUE581: 
	movl	$0, %ecx
 jmp .UNIQUE582
NOP
NOP
NOP
NOP
NOP
.UNIQUE582: 
	movl	$4, %esi
 jmp .UNIQUE583
NOP
NOP
NOP
NOP
NOP
.UNIQUE583: 
	movq	%rax, %rdi
 jmp .UNIQUE584
NOP
NOP
NOP
NOP
NOP
.UNIQUE584: 
	call	get_secure_data
 jmp .UNIQUE585
NOP
NOP
NOP
NOP
NOP
.UNIQUE585: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE586
NOP
NOP
NOP
NOP
NOP
.UNIQUE586: 
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
 jmp .UNIQUE587
NOP
NOP
NOP
NOP
NOP
.UNIQUE587: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE588
NOP
NOP
NOP
NOP
NOP
.UNIQUE588: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE589
NOP
NOP
NOP
NOP
NOP
.UNIQUE589: 
	subq	$16, %rsp
 jmp .UNIQUE590
NOP
NOP
NOP
NOP
NOP
.UNIQUE590: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE591
NOP
NOP
NOP
NOP
NOP
.UNIQUE591: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE592
NOP
NOP
NOP
NOP
NOP
.UNIQUE592: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE593
NOP
NOP
NOP
NOP
NOP
.UNIQUE593: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE594
NOP
NOP
NOP
NOP
NOP
.UNIQUE594: 
	movl	$0, %r8d
 jmp .UNIQUE595
NOP
NOP
NOP
NOP
NOP
.UNIQUE595: 
	movl	$0, %ecx
 jmp .UNIQUE596
NOP
NOP
NOP
NOP
NOP
.UNIQUE596: 
	movl	$8, %esi
 jmp .UNIQUE597
NOP
NOP
NOP
NOP
NOP
.UNIQUE597: 
	movq	%rax, %rdi
 jmp .UNIQUE598
NOP
NOP
NOP
NOP
NOP
.UNIQUE598: 
	call	get_secure_data
 jmp .UNIQUE599
NOP
NOP
NOP
NOP
NOP
.UNIQUE599: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE600
NOP
NOP
NOP
NOP
NOP
.UNIQUE600: 
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
 jmp .UNIQUE601
NOP
NOP
NOP
NOP
NOP
.UNIQUE601: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE602
NOP
NOP
NOP
NOP
NOP
.UNIQUE602: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE603
NOP
NOP
NOP
NOP
NOP
.UNIQUE603: 
	subq	$16, %rsp
 jmp .UNIQUE604
NOP
NOP
NOP
NOP
NOP
.UNIQUE604: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE605
NOP
NOP
NOP
NOP
NOP
.UNIQUE605: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE606
NOP
NOP
NOP
NOP
NOP
.UNIQUE606: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE607
NOP
NOP
NOP
NOP
NOP
.UNIQUE607: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE608
NOP
NOP
NOP
NOP
NOP
.UNIQUE608: 
	movl	$0, %r8d
 jmp .UNIQUE609
NOP
NOP
NOP
NOP
NOP
.UNIQUE609: 
	movl	$0, %ecx
 jmp .UNIQUE610
NOP
NOP
NOP
NOP
NOP
.UNIQUE610: 
	movl	$4, %esi
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
.LFE16:
	.size	get_float, .-get_float
	.globl	get_double
	.type	get_double, @function
get_double:
.LFB17:
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
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE620
NOP
NOP
NOP
NOP
NOP
.UNIQUE620: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE621
NOP
NOP
NOP
NOP
NOP
.UNIQUE621: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE622
NOP
NOP
NOP
NOP
NOP
.UNIQUE622: 
	movl	$0, %r8d
 jmp .UNIQUE623
NOP
NOP
NOP
NOP
NOP
.UNIQUE623: 
	movl	$0, %ecx
 jmp .UNIQUE624
NOP
NOP
NOP
NOP
NOP
.UNIQUE624: 
	movl	$8, %esi
 jmp .UNIQUE625
NOP
NOP
NOP
NOP
NOP
.UNIQUE625: 
	movq	%rax, %rdi
 jmp .UNIQUE626
NOP
NOP
NOP
NOP
NOP
.UNIQUE626: 
	call	get_secure_data
 jmp .UNIQUE627
NOP
NOP
NOP
NOP
NOP
.UNIQUE627: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE628
NOP
NOP
NOP
NOP
NOP
.UNIQUE628: 
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
 jmp .UNIQUE629
NOP
NOP
NOP
NOP
NOP
.UNIQUE629: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE630
NOP
NOP
NOP
NOP
NOP
.UNIQUE630: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE631
NOP
NOP
NOP
NOP
NOP
.UNIQUE631: 
	subq	$32, %rsp
 jmp .UNIQUE632
NOP
NOP
NOP
NOP
NOP
.UNIQUE632: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE633
NOP
NOP
NOP
NOP
NOP
.UNIQUE633: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE634
NOP
NOP
NOP
NOP
NOP
.UNIQUE634: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE635
NOP
NOP
NOP
NOP
NOP
.UNIQUE635: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE636
NOP
NOP
NOP
NOP
NOP
.UNIQUE636: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE637
NOP
NOP
NOP
NOP
NOP
.UNIQUE637: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE638
NOP
NOP
NOP
NOP
NOP
.UNIQUE638: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE639
NOP
NOP
NOP
NOP
NOP
.UNIQUE639: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE640
NOP
NOP
NOP
NOP
NOP
.UNIQUE640: 
	movq	%rcx, %r8
 jmp .UNIQUE641
NOP
NOP
NOP
NOP
NOP
.UNIQUE641: 
	movl	$1, %ecx
 jmp .UNIQUE642
NOP
NOP
NOP
NOP
NOP
.UNIQUE642: 
	movq	%rax, %rdi
 jmp .UNIQUE643
NOP
NOP
NOP
NOP
NOP
.UNIQUE643: 
	call	get_secure_data
 jmp .UNIQUE644
NOP
NOP
NOP
NOP
NOP
.UNIQUE644: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE645
NOP
NOP
NOP
NOP
NOP
.UNIQUE645: 
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
 jmp .UNIQUE646
NOP
NOP
NOP
NOP
NOP
.UNIQUE646: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE647
NOP
NOP
NOP
NOP
NOP
.UNIQUE647: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE648
NOP
NOP
NOP
NOP
NOP
.UNIQUE648: 
	subq	$16, %rsp
 jmp .UNIQUE649
NOP
NOP
NOP
NOP
NOP
.UNIQUE649: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE650
NOP
NOP
NOP
NOP
NOP
.UNIQUE650: 
	movl	%esi, %eax
 jmp .UNIQUE651
NOP
NOP
NOP
NOP
NOP
.UNIQUE651: 
	movb	%al, -12(%rbp)
 jmp .UNIQUE652
NOP
NOP
NOP
NOP
NOP
.UNIQUE652: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE653
NOP
NOP
NOP
NOP
NOP
.UNIQUE653: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE654
NOP
NOP
NOP
NOP
NOP
.UNIQUE654: 
	movq	%rax, %rsi
 jmp .UNIQUE655
NOP
NOP
NOP
NOP
NOP
.UNIQUE655: 
	movl	$1, %edi
 jmp .UNIQUE656
NOP
NOP
NOP
NOP
NOP
.UNIQUE656: 
	call	insert_data_into_mem
 jmp .UNIQUE657
NOP
NOP
NOP
NOP
NOP
.UNIQUE657: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE658
NOP
NOP
NOP
NOP
NOP
.UNIQUE658: 
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
 jmp .UNIQUE659
NOP
NOP
NOP
NOP
NOP
.UNIQUE659: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE660
NOP
NOP
NOP
NOP
NOP
.UNIQUE660: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE661
NOP
NOP
NOP
NOP
NOP
.UNIQUE661: 
	subq	$16, %rsp
 jmp .UNIQUE662
NOP
NOP
NOP
NOP
NOP
.UNIQUE662: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE663
NOP
NOP
NOP
NOP
NOP
.UNIQUE663: 
	movl	%esi, -12(%rbp)
 jmp .UNIQUE664
NOP
NOP
NOP
NOP
NOP
.UNIQUE664: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE665
NOP
NOP
NOP
NOP
NOP
.UNIQUE665: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE666
NOP
NOP
NOP
NOP
NOP
.UNIQUE666: 
	movq	%rax, %rsi
 jmp .UNIQUE667
NOP
NOP
NOP
NOP
NOP
.UNIQUE667: 
	movl	$4, %edi
 jmp .UNIQUE668
NOP
NOP
NOP
NOP
NOP
.UNIQUE668: 
	call	insert_data_into_mem
 jmp .UNIQUE669
NOP
NOP
NOP
NOP
NOP
.UNIQUE669: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE670
NOP
NOP
NOP
NOP
NOP
.UNIQUE670: 
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
 jmp .UNIQUE671
NOP
NOP
NOP
NOP
NOP
.UNIQUE671: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE672
NOP
NOP
NOP
NOP
NOP
.UNIQUE672: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE673
NOP
NOP
NOP
NOP
NOP
.UNIQUE673: 
	subq	$16, %rsp
 jmp .UNIQUE674
NOP
NOP
NOP
NOP
NOP
.UNIQUE674: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE675
NOP
NOP
NOP
NOP
NOP
.UNIQUE675: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE676
NOP
NOP
NOP
NOP
NOP
.UNIQUE676: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE677
NOP
NOP
NOP
NOP
NOP
.UNIQUE677: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE678
NOP
NOP
NOP
NOP
NOP
.UNIQUE678: 
	movq	%rax, %rsi
 jmp .UNIQUE679
NOP
NOP
NOP
NOP
NOP
.UNIQUE679: 
	movl	$8, %edi
 jmp .UNIQUE680
NOP
NOP
NOP
NOP
NOP
.UNIQUE680: 
	call	insert_data_into_mem
 jmp .UNIQUE681
NOP
NOP
NOP
NOP
NOP
.UNIQUE681: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE682
NOP
NOP
NOP
NOP
NOP
.UNIQUE682: 
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
 jmp .UNIQUE683
NOP
NOP
NOP
NOP
NOP
.UNIQUE683: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE684
NOP
NOP
NOP
NOP
NOP
.UNIQUE684: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE685
NOP
NOP
NOP
NOP
NOP
.UNIQUE685: 
	subq	$16, %rsp
 jmp .UNIQUE686
NOP
NOP
NOP
NOP
NOP
.UNIQUE686: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE687
NOP
NOP
NOP
NOP
NOP
.UNIQUE687: 
	movss	%xmm0, -12(%rbp)
 jmp .UNIQUE688
NOP
NOP
NOP
NOP
NOP
.UNIQUE688: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE689
NOP
NOP
NOP
NOP
NOP
.UNIQUE689: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE690
NOP
NOP
NOP
NOP
NOP
.UNIQUE690: 
	movq	%rax, %rsi
 jmp .UNIQUE691
NOP
NOP
NOP
NOP
NOP
.UNIQUE691: 
	movl	$4, %edi
 jmp .UNIQUE692
NOP
NOP
NOP
NOP
NOP
.UNIQUE692: 
	call	insert_data_into_mem
 jmp .UNIQUE693
NOP
NOP
NOP
NOP
NOP
.UNIQUE693: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE694
NOP
NOP
NOP
NOP
NOP
.UNIQUE694: 
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
 jmp .UNIQUE695
NOP
NOP
NOP
NOP
NOP
.UNIQUE695: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE696
NOP
NOP
NOP
NOP
NOP
.UNIQUE696: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE697
NOP
NOP
NOP
NOP
NOP
.UNIQUE697: 
	subq	$16, %rsp
 jmp .UNIQUE698
NOP
NOP
NOP
NOP
NOP
.UNIQUE698: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE699
NOP
NOP
NOP
NOP
NOP
.UNIQUE699: 
	movsd	%xmm0, -16(%rbp)
 jmp .UNIQUE700
NOP
NOP
NOP
NOP
NOP
.UNIQUE700: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE701
NOP
NOP
NOP
NOP
NOP
.UNIQUE701: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE702
NOP
NOP
NOP
NOP
NOP
.UNIQUE702: 
	movq	%rax, %rsi
 jmp .UNIQUE703
NOP
NOP
NOP
NOP
NOP
.UNIQUE703: 
	movl	$8, %edi
 jmp .UNIQUE704
NOP
NOP
NOP
NOP
NOP
.UNIQUE704: 
	call	insert_data_into_mem
 jmp .UNIQUE705
NOP
NOP
NOP
NOP
NOP
.UNIQUE705: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE706
NOP
NOP
NOP
NOP
NOP
.UNIQUE706: 
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
 jmp .UNIQUE707
NOP
NOP
NOP
NOP
NOP
.UNIQUE707: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE708
NOP
NOP
NOP
NOP
NOP
.UNIQUE708: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE709
NOP
NOP
NOP
NOP
NOP
.UNIQUE709: 
	subq	$32, %rsp
 jmp .UNIQUE710
NOP
NOP
NOP
NOP
NOP
.UNIQUE710: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE711
NOP
NOP
NOP
NOP
NOP
.UNIQUE711: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE712
NOP
NOP
NOP
NOP
NOP
.UNIQUE712: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE713
NOP
NOP
NOP
NOP
NOP
.UNIQUE713: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE714
NOP
NOP
NOP
NOP
NOP
.UNIQUE714: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE715
NOP
NOP
NOP
NOP
NOP
.UNIQUE715: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE716
NOP
NOP
NOP
NOP
NOP
.UNIQUE716: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE717
NOP
NOP
NOP
NOP
NOP
.UNIQUE717: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE718
NOP
NOP
NOP
NOP
NOP
.UNIQUE718: 
	movq	%rcx, %r8
 jmp .UNIQUE719
NOP
NOP
NOP
NOP
NOP
.UNIQUE719: 
	movl	$1, %ecx
 jmp .UNIQUE720
NOP
NOP
NOP
NOP
NOP
.UNIQUE720: 
	movq	%rax, %rdi
 jmp .UNIQUE721
NOP
NOP
NOP
NOP
NOP
.UNIQUE721: 
	call	set_secure_data
 jmp .UNIQUE722
NOP
NOP
NOP
NOP
NOP
.UNIQUE722: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE723
NOP
NOP
NOP
NOP
NOP
.UNIQUE723: 
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
 jmp .UNIQUE724
NOP
NOP
NOP
NOP
NOP
.UNIQUE724: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE725
NOP
NOP
NOP
NOP
NOP
.UNIQUE725: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE726
NOP
NOP
NOP
NOP
NOP
.UNIQUE726: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE727
NOP
NOP
NOP
NOP
NOP
.UNIQUE727: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE728
NOP
NOP
NOP
NOP
NOP
.UNIQUE728: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE729
NOP
NOP
NOP
NOP
NOP
.UNIQUE729: 
	movl	$0, -4(%rbp)
 jmp .UNIQUE730
NOP
NOP
NOP
NOP
NOP
.UNIQUE730: 
	jmp	.L74
.L75:
 jmp .UNIQUE731
NOP
NOP
NOP
NOP
NOP
.UNIQUE731: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE732
NOP
NOP
NOP
NOP
NOP
.UNIQUE732: 
	movslq	%eax, %rdx
 jmp .UNIQUE733
NOP
NOP
NOP
NOP
NOP
.UNIQUE733: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE734
NOP
NOP
NOP
NOP
NOP
.UNIQUE734: 
	addq	%rax, %rdx
 jmp .UNIQUE735
NOP
NOP
NOP
NOP
NOP
.UNIQUE735: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE736
NOP
NOP
NOP
NOP
NOP
.UNIQUE736: 
	movslq	%eax, %rcx
 jmp .UNIQUE737
NOP
NOP
NOP
NOP
NOP
.UNIQUE737: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE738
NOP
NOP
NOP
NOP
NOP
.UNIQUE738: 
	addq	%rcx, %rax
 jmp .UNIQUE739
NOP
NOP
NOP
NOP
NOP
.UNIQUE739: 
	movzbl	(%rax), %eax
 jmp .UNIQUE740
NOP
NOP
NOP
NOP
NOP
.UNIQUE740: 
	movb	%al, (%rdx)
 jmp .UNIQUE741
NOP
NOP
NOP
NOP
NOP
.UNIQUE741: 
	addl	$1, -4(%rbp)
.L74:
 jmp .UNIQUE742
NOP
NOP
NOP
NOP
NOP
.UNIQUE742: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE743
NOP
NOP
NOP
NOP
NOP
.UNIQUE743: 
	cltq
 jmp .UNIQUE744
NOP
NOP
NOP
NOP
NOP
.UNIQUE744: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE745
NOP
NOP
NOP
NOP
NOP
.UNIQUE745: 
	jl	.L75
 jmp .UNIQUE746
NOP
NOP
NOP
NOP
NOP
.UNIQUE746: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE747
NOP
NOP
NOP
NOP
NOP
.UNIQUE747: 
	ret
	.cfi_endproc
.LFE25:
	.size	insert_data_into_normal_array, .-insert_data_into_normal_array
	.section	.rodata
	.align 8
.LC8:
	.string	"Zero hex test printing: 0x%02x \n"
.LC9:
	.string	"Starting mem test"
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
.LC23:
	.string	"Testing wrapper functions"
.LC24:
	.string	"Got %d\n"
.LC25:
	.string	"Got %c\n"
.LC26:
	.string	"Got %ld\n"
.LC28:
	.string	"Got %lf\n"
	.align 8
.LC29:
	.string	"Array wrapper function testing"
.LC33:
	.string	"array index 2 is %lf\n"
.LC34:
	.string	"array index 3 is %lf\n"
.LC35:
	.string	"\n\n"
	.align 8
.LC36:
	.string	"After data retrieval, print mem"
.LC37:
	.string	"Mem test done"
	.text
	.globl	mem_test
	.type	mem_test, @function
mem_test:
.LFB26:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE748
NOP
NOP
NOP
NOP
NOP
.UNIQUE748: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE749
NOP
NOP
NOP
NOP
NOP
.UNIQUE749: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE750
NOP
NOP
NOP
NOP
NOP
.UNIQUE750: 
	subq	$176, %rsp
 jmp .UNIQUE751
NOP
NOP
NOP
NOP
NOP
.UNIQUE751: 
	movq	$20, -104(%rbp)
 jmp .UNIQUE752
NOP
NOP
NOP
NOP
NOP
.UNIQUE752: 
	movl	$0, %esi
 jmp .UNIQUE753
NOP
NOP
NOP
NOP
NOP
.UNIQUE753: 
	movl	$.LC8, %edi
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
	movl	$.LC9, %edi
 jmp .UNIQUE757
NOP
NOP
NOP
NOP
NOP
.UNIQUE757: 
	call	puts
 jmp .UNIQUE758
NOP
NOP
NOP
NOP
NOP
.UNIQUE758: 
	movq	memory_chunk(%rip), %rax
 jmp .UNIQUE759
NOP
NOP
NOP
NOP
NOP
.UNIQUE759: 
	movq	%rax, -96(%rbp)
 jmp .UNIQUE760
NOP
NOP
NOP
NOP
NOP
.UNIQUE760: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE761
NOP
NOP
NOP
NOP
NOP
.UNIQUE761: 
	movq	%rax, %rdi
 jmp .UNIQUE762
NOP
NOP
NOP
NOP
NOP
.UNIQUE762: 
	call	find_useful_chunks
 jmp .UNIQUE763
NOP
NOP
NOP
NOP
NOP
.UNIQUE763: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE764
NOP
NOP
NOP
NOP
NOP
.UNIQUE764: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE765
NOP
NOP
NOP
NOP
NOP
.UNIQUE765: 
	movq	%rax, %rsi
 jmp .UNIQUE766
NOP
NOP
NOP
NOP
NOP
.UNIQUE766: 
	movl	$.LC10, %edi
 jmp .UNIQUE767
NOP
NOP
NOP
NOP
NOP
.UNIQUE767: 
	movl	$0, %eax
 jmp .UNIQUE768
NOP
NOP
NOP
NOP
NOP
.UNIQUE768: 
	call	printf
 jmp .UNIQUE769
NOP
NOP
NOP
NOP
NOP
.UNIQUE769: 
	movl	$.LC11, %edi
 jmp .UNIQUE770
NOP
NOP
NOP
NOP
NOP
.UNIQUE770: 
	call	puts
 jmp .UNIQUE771
NOP
NOP
NOP
NOP
NOP
.UNIQUE771: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE772
NOP
NOP
NOP
NOP
NOP
.UNIQUE772: 
	movq	%rax, %rdi
 jmp .UNIQUE773
NOP
NOP
NOP
NOP
NOP
.UNIQUE773: 
	call	print_mem
 jmp .UNIQUE774
NOP
NOP
NOP
NOP
NOP
.UNIQUE774: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE775
NOP
NOP
NOP
NOP
NOP
.UNIQUE775: 
	salq	$2, %rax
 jmp .UNIQUE776
NOP
NOP
NOP
NOP
NOP
.UNIQUE776: 
	movq	%rax, %rdi
 jmp .UNIQUE777
NOP
NOP
NOP
NOP
NOP
.UNIQUE777: 
	call	malloc
 jmp .UNIQUE778
NOP
NOP
NOP
NOP
NOP
.UNIQUE778: 
	movq	%rax, -80(%rbp)
 jmp .UNIQUE779
NOP
NOP
NOP
NOP
NOP
.UNIQUE779: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE780
NOP
NOP
NOP
NOP
NOP
.UNIQUE780: 
	salq	$2, %rax
 jmp .UNIQUE781
NOP
NOP
NOP
NOP
NOP
.UNIQUE781: 
	movq	%rax, %rdi
 jmp .UNIQUE782
NOP
NOP
NOP
NOP
NOP
.UNIQUE782: 
	call	malloc
 jmp .UNIQUE783
NOP
NOP
NOP
NOP
NOP
.UNIQUE783: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE784
NOP
NOP
NOP
NOP
NOP
.UNIQUE784: 
	movq	$5, -120(%rbp)
 jmp .UNIQUE785
NOP
NOP
NOP
NOP
NOP
.UNIQUE785: 
	jmp	.L77
.L78:
 jmp .UNIQUE786
NOP
NOP
NOP
NOP
NOP
.UNIQUE786: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE787
NOP
NOP
NOP
NOP
NOP
.UNIQUE787: 
	salq	$2, %rax
 jmp .UNIQUE788
NOP
NOP
NOP
NOP
NOP
.UNIQUE788: 
	leaq	-20(%rax), %rdx
 jmp .UNIQUE789
NOP
NOP
NOP
NOP
NOP
.UNIQUE789: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE790
NOP
NOP
NOP
NOP
NOP
.UNIQUE790: 
	addq	%rax, %rdx
 jmp .UNIQUE791
NOP
NOP
NOP
NOP
NOP
.UNIQUE791: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE792
NOP
NOP
NOP
NOP
NOP
.UNIQUE792: 
	movl	%eax, %ecx
 jmp .UNIQUE793
NOP
NOP
NOP
NOP
NOP
.UNIQUE793: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE794
NOP
NOP
NOP
NOP
NOP
.UNIQUE794: 
	imull	%ecx, %eax
 jmp .UNIQUE795
NOP
NOP
NOP
NOP
NOP
.UNIQUE795: 
	movl	%eax, (%rdx)
 jmp .UNIQUE796
NOP
NOP
NOP
NOP
NOP
.UNIQUE796: 
	addq	$1, -120(%rbp)
.L77:
 jmp .UNIQUE797
NOP
NOP
NOP
NOP
NOP
.UNIQUE797: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE798
NOP
NOP
NOP
NOP
NOP
.UNIQUE798: 
	addq	$5, %rax
 jmp .UNIQUE799
NOP
NOP
NOP
NOP
NOP
.UNIQUE799: 
	cmpq	-120(%rbp), %rax
 jmp .UNIQUE800
NOP
NOP
NOP
NOP
NOP
.UNIQUE800: 
	jg	.L78
 jmp .UNIQUE801
NOP
NOP
NOP
NOP
NOP
.UNIQUE801: 
	movl	$.LC12, %edi
 jmp .UNIQUE802
NOP
NOP
NOP
NOP
NOP
.UNIQUE802: 
	call	puts
 jmp .UNIQUE803
NOP
NOP
NOP
NOP
NOP
.UNIQUE803: 
	movq	last_unused_memory(%rip), %rax
 jmp .UNIQUE804
NOP
NOP
NOP
NOP
NOP
.UNIQUE804: 
	movq	%rax, %rsi
 jmp .UNIQUE805
NOP
NOP
NOP
NOP
NOP
.UNIQUE805: 
	movl	$.LC13, %edi
 jmp .UNIQUE806
NOP
NOP
NOP
NOP
NOP
.UNIQUE806: 
	movl	$0, %eax
 jmp .UNIQUE807
NOP
NOP
NOP
NOP
NOP
.UNIQUE807: 
	call	printf
 jmp .UNIQUE808
NOP
NOP
NOP
NOP
NOP
.UNIQUE808: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE809
NOP
NOP
NOP
NOP
NOP
.UNIQUE809: 
	salq	$2, %rax
 jmp .UNIQUE810
NOP
NOP
NOP
NOP
NOP
.UNIQUE810: 
	movq	%rax, %rdi
 jmp .UNIQUE811
NOP
NOP
NOP
NOP
NOP
.UNIQUE811: 
	call	secure_malloc
 jmp .UNIQUE812
NOP
NOP
NOP
NOP
NOP
.UNIQUE812: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE813
NOP
NOP
NOP
NOP
NOP
.UNIQUE813: 
	cmpq	$0, -64(%rbp)
 jmp .UNIQUE814
NOP
NOP
NOP
NOP
NOP
.UNIQUE814: 
	jne	.L79
 jmp .UNIQUE815
NOP
NOP
NOP
NOP
NOP
.UNIQUE815: 
	movl	$.LC14, %edi
 jmp .UNIQUE816
NOP
NOP
NOP
NOP
NOP
.UNIQUE816: 
	call	perror
 jmp .UNIQUE817
NOP
NOP
NOP
NOP
NOP
.UNIQUE817: 
	movl	$42, %edi
 jmp .UNIQUE818
NOP
NOP
NOP
NOP
NOP
.UNIQUE818: 
	call	exit
.L79:
 jmp .UNIQUE819
NOP
NOP
NOP
NOP
NOP
.UNIQUE819: 
	movq	last_unused_memory(%rip), %rax
 jmp .UNIQUE820
NOP
NOP
NOP
NOP
NOP
.UNIQUE820: 
	movq	%rax, %rsi
 jmp .UNIQUE821
NOP
NOP
NOP
NOP
NOP
.UNIQUE821: 
	movl	$.LC15, %edi
 jmp .UNIQUE822
NOP
NOP
NOP
NOP
NOP
.UNIQUE822: 
	movl	$0, %eax
 jmp .UNIQUE823
NOP
NOP
NOP
NOP
NOP
.UNIQUE823: 
	call	printf
 jmp .UNIQUE824
NOP
NOP
NOP
NOP
NOP
.UNIQUE824: 
	movl	$.LC16, %edi
 jmp .UNIQUE825
NOP
NOP
NOP
NOP
NOP
.UNIQUE825: 
	call	puts
 jmp .UNIQUE826
NOP
NOP
NOP
NOP
NOP
.UNIQUE826: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE827
NOP
NOP
NOP
NOP
NOP
.UNIQUE827: 
	salq	$2, %rax
 jmp .UNIQUE828
NOP
NOP
NOP
NOP
NOP
.UNIQUE828: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE829
NOP
NOP
NOP
NOP
NOP
.UNIQUE829: 
	movq	-80(%rbp), %rcx
 jmp .UNIQUE830
NOP
NOP
NOP
NOP
NOP
.UNIQUE830: 
	movq	%rcx, %rsi
 jmp .UNIQUE831
NOP
NOP
NOP
NOP
NOP
.UNIQUE831: 
	movq	%rax, %rdi
 jmp .UNIQUE832
NOP
NOP
NOP
NOP
NOP
.UNIQUE832: 
	call	insert_data_into_mem
 jmp .UNIQUE833
NOP
NOP
NOP
NOP
NOP
.UNIQUE833: 
	movl	$.LC17, %edi
 jmp .UNIQUE834
NOP
NOP
NOP
NOP
NOP
.UNIQUE834: 
	call	puts
 jmp .UNIQUE835
NOP
NOP
NOP
NOP
NOP
.UNIQUE835: 
	movl	$4, %edi
 jmp .UNIQUE836
NOP
NOP
NOP
NOP
NOP
.UNIQUE836: 
	call	malloc
 jmp .UNIQUE837
NOP
NOP
NOP
NOP
NOP
.UNIQUE837: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE838
NOP
NOP
NOP
NOP
NOP
.UNIQUE838: 
	movq	$0, -112(%rbp)
 jmp .UNIQUE839
NOP
NOP
NOP
NOP
NOP
.UNIQUE839: 
	jmp	.L80
.L81:
 jmp .UNIQUE840
NOP
NOP
NOP
NOP
NOP
.UNIQUE840: 
	movq	-112(%rbp), %rcx
 jmp .UNIQUE841
NOP
NOP
NOP
NOP
NOP
.UNIQUE841: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE842
NOP
NOP
NOP
NOP
NOP
.UNIQUE842: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE843
NOP
NOP
NOP
NOP
NOP
.UNIQUE843: 
	movq	%rcx, %r8
 jmp .UNIQUE844
NOP
NOP
NOP
NOP
NOP
.UNIQUE844: 
	movl	$1, %ecx
 jmp .UNIQUE845
NOP
NOP
NOP
NOP
NOP
.UNIQUE845: 
	movl	$4, %esi
 jmp .UNIQUE846
NOP
NOP
NOP
NOP
NOP
.UNIQUE846: 
	movq	%rax, %rdi
 jmp .UNIQUE847
NOP
NOP
NOP
NOP
NOP
.UNIQUE847: 
	call	get_secure_data
 jmp .UNIQUE848
NOP
NOP
NOP
NOP
NOP
.UNIQUE848: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE849
NOP
NOP
NOP
NOP
NOP
.UNIQUE849: 
	movl	(%rax), %eax
 jmp .UNIQUE850
NOP
NOP
NOP
NOP
NOP
.UNIQUE850: 
	movl	%eax, %esi
 jmp .UNIQUE851
NOP
NOP
NOP
NOP
NOP
.UNIQUE851: 
	movl	$.LC18, %edi
 jmp .UNIQUE852
NOP
NOP
NOP
NOP
NOP
.UNIQUE852: 
	movl	$0, %eax
 jmp .UNIQUE853
NOP
NOP
NOP
NOP
NOP
.UNIQUE853: 
	call	printf
 jmp .UNIQUE854
NOP
NOP
NOP
NOP
NOP
.UNIQUE854: 
	addq	$1, -112(%rbp)
.L80:
 jmp .UNIQUE855
NOP
NOP
NOP
NOP
NOP
.UNIQUE855: 
	movq	-112(%rbp), %rax
 jmp .UNIQUE856
NOP
NOP
NOP
NOP
NOP
.UNIQUE856: 
	cmpq	-104(%rbp), %rax
 jmp .UNIQUE857
NOP
NOP
NOP
NOP
NOP
.UNIQUE857: 
	jl	.L81
 jmp .UNIQUE858
NOP
NOP
NOP
NOP
NOP
.UNIQUE858: 
	movl	$10, %edi
 jmp .UNIQUE859
NOP
NOP
NOP
NOP
NOP
.UNIQUE859: 
	call	putchar
 jmp .UNIQUE860
NOP
NOP
NOP
NOP
NOP
.UNIQUE860: 
	movl	$.LC19, %edi
 jmp .UNIQUE861
NOP
NOP
NOP
NOP
NOP
.UNIQUE861: 
	call	puts
 jmp .UNIQUE862
NOP
NOP
NOP
NOP
NOP
.UNIQUE862: 
	movq	last_unused_memory(%rip), %rax
 jmp .UNIQUE863
NOP
NOP
NOP
NOP
NOP
.UNIQUE863: 
	movq	%rax, %rsi
 jmp .UNIQUE864
NOP
NOP
NOP
NOP
NOP
.UNIQUE864: 
	movl	$.LC13, %edi
 jmp .UNIQUE865
NOP
NOP
NOP
NOP
NOP
.UNIQUE865: 
	movl	$0, %eax
 jmp .UNIQUE866
NOP
NOP
NOP
NOP
NOP
.UNIQUE866: 
	call	printf
 jmp .UNIQUE867
NOP
NOP
NOP
NOP
NOP
.UNIQUE867: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE868
NOP
NOP
NOP
NOP
NOP
.UNIQUE868: 
	salq	$2, %rax
 jmp .UNIQUE869
NOP
NOP
NOP
NOP
NOP
.UNIQUE869: 
	movq	%rax, %rdi
 jmp .UNIQUE870
NOP
NOP
NOP
NOP
NOP
.UNIQUE870: 
	call	secure_malloc
 jmp .UNIQUE871
NOP
NOP
NOP
NOP
NOP
.UNIQUE871: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE872
NOP
NOP
NOP
NOP
NOP
.UNIQUE872: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE873
NOP
NOP
NOP
NOP
NOP
.UNIQUE873: 
	jne	.L82
 jmp .UNIQUE874
NOP
NOP
NOP
NOP
NOP
.UNIQUE874: 
	movl	$.LC14, %edi
 jmp .UNIQUE875
NOP
NOP
NOP
NOP
NOP
.UNIQUE875: 
	call	perror
 jmp .UNIQUE876
NOP
NOP
NOP
NOP
NOP
.UNIQUE876: 
	movl	$42, %edi
 jmp .UNIQUE877
NOP
NOP
NOP
NOP
NOP
.UNIQUE877: 
	call	exit
.L82:
 jmp .UNIQUE878
NOP
NOP
NOP
NOP
NOP
.UNIQUE878: 
	movq	last_unused_memory(%rip), %rax
 jmp .UNIQUE879
NOP
NOP
NOP
NOP
NOP
.UNIQUE879: 
	movq	%rax, %rsi
 jmp .UNIQUE880
NOP
NOP
NOP
NOP
NOP
.UNIQUE880: 
	movl	$.LC15, %edi
 jmp .UNIQUE881
NOP
NOP
NOP
NOP
NOP
.UNIQUE881: 
	movl	$0, %eax
 jmp .UNIQUE882
NOP
NOP
NOP
NOP
NOP
.UNIQUE882: 
	call	printf
 jmp .UNIQUE883
NOP
NOP
NOP
NOP
NOP
.UNIQUE883: 
	movq	$5, -120(%rbp)
 jmp .UNIQUE884
NOP
NOP
NOP
NOP
NOP
.UNIQUE884: 
	jmp	.L83
.L84:
 jmp .UNIQUE885
NOP
NOP
NOP
NOP
NOP
.UNIQUE885: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE886
NOP
NOP
NOP
NOP
NOP
.UNIQUE886: 
	salq	$2, %rax
 jmp .UNIQUE887
NOP
NOP
NOP
NOP
NOP
.UNIQUE887: 
	leaq	-20(%rax), %rdx
 jmp .UNIQUE888
NOP
NOP
NOP
NOP
NOP
.UNIQUE888: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE889
NOP
NOP
NOP
NOP
NOP
.UNIQUE889: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE890
NOP
NOP
NOP
NOP
NOP
.UNIQUE890: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE891
NOP
NOP
NOP
NOP
NOP
.UNIQUE891: 
	movl	%eax, %edx
 jmp .UNIQUE892
NOP
NOP
NOP
NOP
NOP
.UNIQUE892: 
	movl	%edx, %eax
 jmp .UNIQUE893
NOP
NOP
NOP
NOP
NOP
.UNIQUE893: 
	addl	%eax, %eax
 jmp .UNIQUE894
NOP
NOP
NOP
NOP
NOP
.UNIQUE894: 
	addl	%edx, %eax
 jmp .UNIQUE895
NOP
NOP
NOP
NOP
NOP
.UNIQUE895: 
	movl	%eax, (%rcx)
 jmp .UNIQUE896
NOP
NOP
NOP
NOP
NOP
.UNIQUE896: 
	addq	$1, -120(%rbp)
.L83:
 jmp .UNIQUE897
NOP
NOP
NOP
NOP
NOP
.UNIQUE897: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE898
NOP
NOP
NOP
NOP
NOP
.UNIQUE898: 
	addq	$5, %rax
 jmp .UNIQUE899
NOP
NOP
NOP
NOP
NOP
.UNIQUE899: 
	cmpq	-120(%rbp), %rax
 jmp .UNIQUE900
NOP
NOP
NOP
NOP
NOP
.UNIQUE900: 
	jg	.L84
 jmp .UNIQUE901
NOP
NOP
NOP
NOP
NOP
.UNIQUE901: 
	movl	$.LC20, %edi
 jmp .UNIQUE902
NOP
NOP
NOP
NOP
NOP
.UNIQUE902: 
	call	puts
 jmp .UNIQUE903
NOP
NOP
NOP
NOP
NOP
.UNIQUE903: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE904
NOP
NOP
NOP
NOP
NOP
.UNIQUE904: 
	salq	$2, %rax
 jmp .UNIQUE905
NOP
NOP
NOP
NOP
NOP
.UNIQUE905: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE906
NOP
NOP
NOP
NOP
NOP
.UNIQUE906: 
	movq	-80(%rbp), %rcx
 jmp .UNIQUE907
NOP
NOP
NOP
NOP
NOP
.UNIQUE907: 
	movq	%rcx, %rsi
 jmp .UNIQUE908
NOP
NOP
NOP
NOP
NOP
.UNIQUE908: 
	movq	%rax, %rdi
 jmp .UNIQUE909
NOP
NOP
NOP
NOP
NOP
.UNIQUE909: 
	call	insert_data_into_mem
 jmp .UNIQUE910
NOP
NOP
NOP
NOP
NOP
.UNIQUE910: 
	movl	$.LC17, %edi
 jmp .UNIQUE911
NOP
NOP
NOP
NOP
NOP
.UNIQUE911: 
	call	puts
 jmp .UNIQUE912
NOP
NOP
NOP
NOP
NOP
.UNIQUE912: 
	movq	$0, -112(%rbp)
 jmp .UNIQUE913
NOP
NOP
NOP
NOP
NOP
.UNIQUE913: 
	jmp	.L85
.L86:
 jmp .UNIQUE914
NOP
NOP
NOP
NOP
NOP
.UNIQUE914: 
	movq	-112(%rbp), %rcx
 jmp .UNIQUE915
NOP
NOP
NOP
NOP
NOP
.UNIQUE915: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE916
NOP
NOP
NOP
NOP
NOP
.UNIQUE916: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE917
NOP
NOP
NOP
NOP
NOP
.UNIQUE917: 
	movq	%rcx, %r8
 jmp .UNIQUE918
NOP
NOP
NOP
NOP
NOP
.UNIQUE918: 
	movl	$1, %ecx
 jmp .UNIQUE919
NOP
NOP
NOP
NOP
NOP
.UNIQUE919: 
	movl	$4, %esi
 jmp .UNIQUE920
NOP
NOP
NOP
NOP
NOP
.UNIQUE920: 
	movq	%rax, %rdi
 jmp .UNIQUE921
NOP
NOP
NOP
NOP
NOP
.UNIQUE921: 
	call	get_secure_data
 jmp .UNIQUE922
NOP
NOP
NOP
NOP
NOP
.UNIQUE922: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE923
NOP
NOP
NOP
NOP
NOP
.UNIQUE923: 
	movl	(%rax), %eax
 jmp .UNIQUE924
NOP
NOP
NOP
NOP
NOP
.UNIQUE924: 
	movl	%eax, %esi
 jmp .UNIQUE925
NOP
NOP
NOP
NOP
NOP
.UNIQUE925: 
	movl	$.LC18, %edi
 jmp .UNIQUE926
NOP
NOP
NOP
NOP
NOP
.UNIQUE926: 
	movl	$0, %eax
 jmp .UNIQUE927
NOP
NOP
NOP
NOP
NOP
.UNIQUE927: 
	call	printf
 jmp .UNIQUE928
NOP
NOP
NOP
NOP
NOP
.UNIQUE928: 
	addq	$1, -112(%rbp)
.L85:
 jmp .UNIQUE929
NOP
NOP
NOP
NOP
NOP
.UNIQUE929: 
	movq	-112(%rbp), %rax
 jmp .UNIQUE930
NOP
NOP
NOP
NOP
NOP
.UNIQUE930: 
	cmpq	-104(%rbp), %rax
 jmp .UNIQUE931
NOP
NOP
NOP
NOP
NOP
.UNIQUE931: 
	jl	.L86
 jmp .UNIQUE932
NOP
NOP
NOP
NOP
NOP
.UNIQUE932: 
	movl	$10, %edi
 jmp .UNIQUE933
NOP
NOP
NOP
NOP
NOP
.UNIQUE933: 
	call	putchar
 jmp .UNIQUE934
NOP
NOP
NOP
NOP
NOP
.UNIQUE934: 
	movl	$.LC21, %edi
 jmp .UNIQUE935
NOP
NOP
NOP
NOP
NOP
.UNIQUE935: 
	call	puts
 jmp .UNIQUE936
NOP
NOP
NOP
NOP
NOP
.UNIQUE936: 
	movl	$4, %edi
 jmp .UNIQUE937
NOP
NOP
NOP
NOP
NOP
.UNIQUE937: 
	call	secure_malloc
 jmp .UNIQUE938
NOP
NOP
NOP
NOP
NOP
.UNIQUE938: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE939
NOP
NOP
NOP
NOP
NOP
.UNIQUE939: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE940
NOP
NOP
NOP
NOP
NOP
.UNIQUE940: 
	movl	$424242424, (%rax)
 jmp .UNIQUE941
NOP
NOP
NOP
NOP
NOP
.UNIQUE941: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE942
NOP
NOP
NOP
NOP
NOP
.UNIQUE942: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE943
NOP
NOP
NOP
NOP
NOP
.UNIQUE943: 
	movq	%rax, %rsi
 jmp .UNIQUE944
NOP
NOP
NOP
NOP
NOP
.UNIQUE944: 
	movl	$4, %edi
 jmp .UNIQUE945
NOP
NOP
NOP
NOP
NOP
.UNIQUE945: 
	call	insert_data_into_mem
 jmp .UNIQUE946
NOP
NOP
NOP
NOP
NOP
.UNIQUE946: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE947
NOP
NOP
NOP
NOP
NOP
.UNIQUE947: 
	movq	%rax, %rdi
 jmp .UNIQUE948
NOP
NOP
NOP
NOP
NOP
.UNIQUE948: 
	call	free
 jmp .UNIQUE949
NOP
NOP
NOP
NOP
NOP
.UNIQUE949: 
	movl	$4, %edi
 jmp .UNIQUE950
NOP
NOP
NOP
NOP
NOP
.UNIQUE950: 
	call	malloc
 jmp .UNIQUE951
NOP
NOP
NOP
NOP
NOP
.UNIQUE951: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE952
NOP
NOP
NOP
NOP
NOP
.UNIQUE952: 
	movq	-112(%rbp), %rcx
 jmp .UNIQUE953
NOP
NOP
NOP
NOP
NOP
.UNIQUE953: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE954
NOP
NOP
NOP
NOP
NOP
.UNIQUE954: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE955
NOP
NOP
NOP
NOP
NOP
.UNIQUE955: 
	movq	%rcx, %r8
 jmp .UNIQUE956
NOP
NOP
NOP
NOP
NOP
.UNIQUE956: 
	movl	$0, %ecx
 jmp .UNIQUE957
NOP
NOP
NOP
NOP
NOP
.UNIQUE957: 
	movl	$4, %esi
 jmp .UNIQUE958
NOP
NOP
NOP
NOP
NOP
.UNIQUE958: 
	movq	%rax, %rdi
 jmp .UNIQUE959
NOP
NOP
NOP
NOP
NOP
.UNIQUE959: 
	call	get_secure_data
 jmp .UNIQUE960
NOP
NOP
NOP
NOP
NOP
.UNIQUE960: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE961
NOP
NOP
NOP
NOP
NOP
.UNIQUE961: 
	movl	(%rax), %eax
 jmp .UNIQUE962
NOP
NOP
NOP
NOP
NOP
.UNIQUE962: 
	movl	%eax, %esi
 jmp .UNIQUE963
NOP
NOP
NOP
NOP
NOP
.UNIQUE963: 
	movl	$.LC22, %edi
 jmp .UNIQUE964
NOP
NOP
NOP
NOP
NOP
.UNIQUE964: 
	movl	$0, %eax
 jmp .UNIQUE965
NOP
NOP
NOP
NOP
NOP
.UNIQUE965: 
	call	printf
 jmp .UNIQUE966
NOP
NOP
NOP
NOP
NOP
.UNIQUE966: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE967
NOP
NOP
NOP
NOP
NOP
.UNIQUE967: 
	movq	%rax, %rdi
 jmp .UNIQUE968
NOP
NOP
NOP
NOP
NOP
.UNIQUE968: 
	call	free
 jmp .UNIQUE969
NOP
NOP
NOP
NOP
NOP
.UNIQUE969: 
	movl	$.LC23, %edi
 jmp .UNIQUE970
NOP
NOP
NOP
NOP
NOP
.UNIQUE970: 
	call	puts
 jmp .UNIQUE971
NOP
NOP
NOP
NOP
NOP
.UNIQUE971: 
	movl	$4, %edi
 jmp .UNIQUE972
NOP
NOP
NOP
NOP
NOP
.UNIQUE972: 
	call	secure_malloc
 jmp .UNIQUE973
NOP
NOP
NOP
NOP
NOP
.UNIQUE973: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE974
NOP
NOP
NOP
NOP
NOP
.UNIQUE974: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE975
NOP
NOP
NOP
NOP
NOP
.UNIQUE975: 
	movl	$99998, %esi
 jmp .UNIQUE976
NOP
NOP
NOP
NOP
NOP
.UNIQUE976: 
	movq	%rax, %rdi
 jmp .UNIQUE977
NOP
NOP
NOP
NOP
NOP
.UNIQUE977: 
	call	set_int
 jmp .UNIQUE978
NOP
NOP
NOP
NOP
NOP
.UNIQUE978: 
	leaq	-148(%rbp), %rdx
 jmp .UNIQUE979
NOP
NOP
NOP
NOP
NOP
.UNIQUE979: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE980
NOP
NOP
NOP
NOP
NOP
.UNIQUE980: 
	movq	%rdx, %rsi
 jmp .UNIQUE981
NOP
NOP
NOP
NOP
NOP
.UNIQUE981: 
	movq	%rax, %rdi
 jmp .UNIQUE982
NOP
NOP
NOP
NOP
NOP
.UNIQUE982: 
	call	get_int
 jmp .UNIQUE983
NOP
NOP
NOP
NOP
NOP
.UNIQUE983: 
	movl	-148(%rbp), %eax
 jmp .UNIQUE984
NOP
NOP
NOP
NOP
NOP
.UNIQUE984: 
	movl	%eax, %esi
 jmp .UNIQUE985
NOP
NOP
NOP
NOP
NOP
.UNIQUE985: 
	movl	$.LC24, %edi
 jmp .UNIQUE986
NOP
NOP
NOP
NOP
NOP
.UNIQUE986: 
	movl	$0, %eax
 jmp .UNIQUE987
NOP
NOP
NOP
NOP
NOP
.UNIQUE987: 
	call	printf
 jmp .UNIQUE988
NOP
NOP
NOP
NOP
NOP
.UNIQUE988: 
	movl	$1, %edi
 jmp .UNIQUE989
NOP
NOP
NOP
NOP
NOP
.UNIQUE989: 
	call	secure_malloc
 jmp .UNIQUE990
NOP
NOP
NOP
NOP
NOP
.UNIQUE990: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE991
NOP
NOP
NOP
NOP
NOP
.UNIQUE991: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE992
NOP
NOP
NOP
NOP
NOP
.UNIQUE992: 
	movl	$98, %esi
 jmp .UNIQUE993
NOP
NOP
NOP
NOP
NOP
.UNIQUE993: 
	movq	%rax, %rdi
 jmp .UNIQUE994
NOP
NOP
NOP
NOP
NOP
.UNIQUE994: 
	call	set_char
 jmp .UNIQUE995
NOP
NOP
NOP
NOP
NOP
.UNIQUE995: 
	leaq	-149(%rbp), %rdx
 jmp .UNIQUE996
NOP
NOP
NOP
NOP
NOP
.UNIQUE996: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE997
NOP
NOP
NOP
NOP
NOP
.UNIQUE997: 
	movq	%rdx, %rsi
 jmp .UNIQUE998
NOP
NOP
NOP
NOP
NOP
.UNIQUE998: 
	movq	%rax, %rdi
 jmp .UNIQUE999
NOP
NOP
NOP
NOP
NOP
.UNIQUE999: 
	call	get_char
 jmp .UNIQUE1000
NOP
NOP
NOP
NOP
NOP
.UNIQUE1000: 
	movzbl	-149(%rbp), %eax
 jmp .UNIQUE1001
NOP
NOP
NOP
NOP
NOP
.UNIQUE1001: 
	movsbl	%al, %eax
 jmp .UNIQUE1002
NOP
NOP
NOP
NOP
NOP
.UNIQUE1002: 
	movl	%eax, %esi
 jmp .UNIQUE1003
NOP
NOP
NOP
NOP
NOP
.UNIQUE1003: 
	movl	$.LC25, %edi
 jmp .UNIQUE1004
NOP
NOP
NOP
NOP
NOP
.UNIQUE1004: 
	movl	$0, %eax
 jmp .UNIQUE1005
NOP
NOP
NOP
NOP
NOP
.UNIQUE1005: 
	call	printf
 jmp .UNIQUE1006
NOP
NOP
NOP
NOP
NOP
.UNIQUE1006: 
	movl	$8, %edi
 jmp .UNIQUE1007
NOP
NOP
NOP
NOP
NOP
.UNIQUE1007: 
	call	secure_malloc
 jmp .UNIQUE1008
NOP
NOP
NOP
NOP
NOP
.UNIQUE1008: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1009
NOP
NOP
NOP
NOP
NOP
.UNIQUE1009: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1010
NOP
NOP
NOP
NOP
NOP
.UNIQUE1010: 
	movl	$54545454, %esi
 jmp .UNIQUE1011
NOP
NOP
NOP
NOP
NOP
.UNIQUE1011: 
	movq	%rax, %rdi
 jmp .UNIQUE1012
NOP
NOP
NOP
NOP
NOP
.UNIQUE1012: 
	call	set_long_int
 jmp .UNIQUE1013
NOP
NOP
NOP
NOP
NOP
.UNIQUE1013: 
	leaq	-144(%rbp), %rdx
 jmp .UNIQUE1014
NOP
NOP
NOP
NOP
NOP
.UNIQUE1014: 
	movq	-24(%rbp), %rax
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
	call	get_long_int
 jmp .UNIQUE1018
NOP
NOP
NOP
NOP
NOP
.UNIQUE1018: 
	movq	-144(%rbp), %rax
 jmp .UNIQUE1019
NOP
NOP
NOP
NOP
NOP
.UNIQUE1019: 
	movq	%rax, %rsi
 jmp .UNIQUE1020
NOP
NOP
NOP
NOP
NOP
.UNIQUE1020: 
	movl	$.LC26, %edi
 jmp .UNIQUE1021
NOP
NOP
NOP
NOP
NOP
.UNIQUE1021: 
	movl	$0, %eax
 jmp .UNIQUE1022
NOP
NOP
NOP
NOP
NOP
.UNIQUE1022: 
	call	printf
 jmp .UNIQUE1023
NOP
NOP
NOP
NOP
NOP
.UNIQUE1023: 
	movl	$8, %edi
 jmp .UNIQUE1024
NOP
NOP
NOP
NOP
NOP
.UNIQUE1024: 
	call	secure_malloc
 jmp .UNIQUE1025
NOP
NOP
NOP
NOP
NOP
.UNIQUE1025: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE1026
NOP
NOP
NOP
NOP
NOP
.UNIQUE1026: 
	movabsq	$4665384344877005170, %rax
 jmp .UNIQUE1027
NOP
NOP
NOP
NOP
NOP
.UNIQUE1027: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1028
NOP
NOP
NOP
NOP
NOP
.UNIQUE1028: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE1029
NOP
NOP
NOP
NOP
NOP
.UNIQUE1029: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE1030
NOP
NOP
NOP
NOP
NOP
.UNIQUE1030: 
	movq	%rdx, %rdi
 jmp .UNIQUE1031
NOP
NOP
NOP
NOP
NOP
.UNIQUE1031: 
	call	set_double
 jmp .UNIQUE1032
NOP
NOP
NOP
NOP
NOP
.UNIQUE1032: 
	leaq	-136(%rbp), %rdx
 jmp .UNIQUE1033
NOP
NOP
NOP
NOP
NOP
.UNIQUE1033: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1034
NOP
NOP
NOP
NOP
NOP
.UNIQUE1034: 
	movq	%rdx, %rsi
 jmp .UNIQUE1035
NOP
NOP
NOP
NOP
NOP
.UNIQUE1035: 
	movq	%rax, %rdi
 jmp .UNIQUE1036
NOP
NOP
NOP
NOP
NOP
.UNIQUE1036: 
	call	get_double
 jmp .UNIQUE1037
NOP
NOP
NOP
NOP
NOP
.UNIQUE1037: 
	movq	-136(%rbp), %rax
 jmp .UNIQUE1038
NOP
NOP
NOP
NOP
NOP
.UNIQUE1038: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE1039
NOP
NOP
NOP
NOP
NOP
.UNIQUE1039: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE1040
NOP
NOP
NOP
NOP
NOP
.UNIQUE1040: 
	movl	$.LC28, %edi
 jmp .UNIQUE1041
NOP
NOP
NOP
NOP
NOP
.UNIQUE1041: 
	movl	$1, %eax
 jmp .UNIQUE1042
NOP
NOP
NOP
NOP
NOP
.UNIQUE1042: 
	call	printf
 jmp .UNIQUE1043
NOP
NOP
NOP
NOP
NOP
.UNIQUE1043: 
	movl	$.LC29, %edi
 jmp .UNIQUE1044
NOP
NOP
NOP
NOP
NOP
.UNIQUE1044: 
	call	puts
 jmp .UNIQUE1045
NOP
NOP
NOP
NOP
NOP
.UNIQUE1045: 
	movl	$80, %edi
 jmp .UNIQUE1046
NOP
NOP
NOP
NOP
NOP
.UNIQUE1046: 
	call	secure_malloc
 jmp .UNIQUE1047
NOP
NOP
NOP
NOP
NOP
.UNIQUE1047: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1048
NOP
NOP
NOP
NOP
NOP
.UNIQUE1048: 
	movabsq	$4631167498573958009, %rax
 jmp .UNIQUE1049
NOP
NOP
NOP
NOP
NOP
.UNIQUE1049: 
	movq	%rax, -128(%rbp)
 jmp .UNIQUE1050
NOP
NOP
NOP
NOP
NOP
.UNIQUE1050: 
	leaq	-128(%rbp), %rdx
 jmp .UNIQUE1051
NOP
NOP
NOP
NOP
NOP
.UNIQUE1051: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1052
NOP
NOP
NOP
NOP
NOP
.UNIQUE1052: 
	movq	%rdx, %rcx
 jmp .UNIQUE1053
NOP
NOP
NOP
NOP
NOP
.UNIQUE1053: 
	movl	$2, %edx
 jmp .UNIQUE1054
NOP
NOP
NOP
NOP
NOP
.UNIQUE1054: 
	movq	%rax, %rsi
 jmp .UNIQUE1055
NOP
NOP
NOP
NOP
NOP
.UNIQUE1055: 
	movl	$8, %edi
 jmp .UNIQUE1056
NOP
NOP
NOP
NOP
NOP
.UNIQUE1056: 
	call	set_array_element
 jmp .UNIQUE1057
NOP
NOP
NOP
NOP
NOP
.UNIQUE1057: 
	movabsq	$4629998950986019070, %rax
 jmp .UNIQUE1058
NOP
NOP
NOP
NOP
NOP
.UNIQUE1058: 
	movq	%rax, -128(%rbp)
 jmp .UNIQUE1059
NOP
NOP
NOP
NOP
NOP
.UNIQUE1059: 
	leaq	-128(%rbp), %rdx
 jmp .UNIQUE1060
NOP
NOP
NOP
NOP
NOP
.UNIQUE1060: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1061
NOP
NOP
NOP
NOP
NOP
.UNIQUE1061: 
	movq	%rdx, %rcx
 jmp .UNIQUE1062
NOP
NOP
NOP
NOP
NOP
.UNIQUE1062: 
	movl	$3, %edx
 jmp .UNIQUE1063
NOP
NOP
NOP
NOP
NOP
.UNIQUE1063: 
	movq	%rax, %rsi
 jmp .UNIQUE1064
NOP
NOP
NOP
NOP
NOP
.UNIQUE1064: 
	movl	$8, %edi
 jmp .UNIQUE1065
NOP
NOP
NOP
NOP
NOP
.UNIQUE1065: 
	call	set_array_element
 jmp .UNIQUE1066
NOP
NOP
NOP
NOP
NOP
.UNIQUE1066: 
	movabsq	$4607182418800017408, %rax
 jmp .UNIQUE1067
NOP
NOP
NOP
NOP
NOP
.UNIQUE1067: 
	movq	%rax, -128(%rbp)
 jmp .UNIQUE1068
NOP
NOP
NOP
NOP
NOP
.UNIQUE1068: 
	leaq	-128(%rbp), %rdx
 jmp .UNIQUE1069
NOP
NOP
NOP
NOP
NOP
.UNIQUE1069: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1070
NOP
NOP
NOP
NOP
NOP
.UNIQUE1070: 
	movq	%rdx, %rcx
 jmp .UNIQUE1071
NOP
NOP
NOP
NOP
NOP
.UNIQUE1071: 
	movl	$2, %edx
 jmp .UNIQUE1072
NOP
NOP
NOP
NOP
NOP
.UNIQUE1072: 
	movq	%rax, %rsi
 jmp .UNIQUE1073
NOP
NOP
NOP
NOP
NOP
.UNIQUE1073: 
	movl	$8, %edi
 jmp .UNIQUE1074
NOP
NOP
NOP
NOP
NOP
.UNIQUE1074: 
	call	get_array_element
 jmp .UNIQUE1075
NOP
NOP
NOP
NOP
NOP
.UNIQUE1075: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1076
NOP
NOP
NOP
NOP
NOP
.UNIQUE1076: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE1077
NOP
NOP
NOP
NOP
NOP
.UNIQUE1077: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE1078
NOP
NOP
NOP
NOP
NOP
.UNIQUE1078: 
	movl	$.LC33, %edi
 jmp .UNIQUE1079
NOP
NOP
NOP
NOP
NOP
.UNIQUE1079: 
	movl	$1, %eax
 jmp .UNIQUE1080
NOP
NOP
NOP
NOP
NOP
.UNIQUE1080: 
	call	printf
 jmp .UNIQUE1081
NOP
NOP
NOP
NOP
NOP
.UNIQUE1081: 
	leaq	-128(%rbp), %rdx
 jmp .UNIQUE1082
NOP
NOP
NOP
NOP
NOP
.UNIQUE1082: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1083
NOP
NOP
NOP
NOP
NOP
.UNIQUE1083: 
	movq	%rdx, %rcx
 jmp .UNIQUE1084
NOP
NOP
NOP
NOP
NOP
.UNIQUE1084: 
	movl	$3, %edx
 jmp .UNIQUE1085
NOP
NOP
NOP
NOP
NOP
.UNIQUE1085: 
	movq	%rax, %rsi
 jmp .UNIQUE1086
NOP
NOP
NOP
NOP
NOP
.UNIQUE1086: 
	movl	$8, %edi
 jmp .UNIQUE1087
NOP
NOP
NOP
NOP
NOP
.UNIQUE1087: 
	call	get_array_element
 jmp .UNIQUE1088
NOP
NOP
NOP
NOP
NOP
.UNIQUE1088: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1089
NOP
NOP
NOP
NOP
NOP
.UNIQUE1089: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE1090
NOP
NOP
NOP
NOP
NOP
.UNIQUE1090: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE1091
NOP
NOP
NOP
NOP
NOP
.UNIQUE1091: 
	movl	$.LC34, %edi
 jmp .UNIQUE1092
NOP
NOP
NOP
NOP
NOP
.UNIQUE1092: 
	movl	$1, %eax
 jmp .UNIQUE1093
NOP
NOP
NOP
NOP
NOP
.UNIQUE1093: 
	call	printf
 jmp .UNIQUE1094
NOP
NOP
NOP
NOP
NOP
.UNIQUE1094: 
	movl	$.LC35, %edi
 jmp .UNIQUE1095
NOP
NOP
NOP
NOP
NOP
.UNIQUE1095: 
	call	puts
 jmp .UNIQUE1096
NOP
NOP
NOP
NOP
NOP
.UNIQUE1096: 
	movl	$.LC36, %edi
 jmp .UNIQUE1097
NOP
NOP
NOP
NOP
NOP
.UNIQUE1097: 
	call	puts
 jmp .UNIQUE1098
NOP
NOP
NOP
NOP
NOP
.UNIQUE1098: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE1099
NOP
NOP
NOP
NOP
NOP
.UNIQUE1099: 
	movq	%rax, %rdi
 jmp .UNIQUE1100
NOP
NOP
NOP
NOP
NOP
.UNIQUE1100: 
	call	print_mem
 jmp .UNIQUE1101
NOP
NOP
NOP
NOP
NOP
.UNIQUE1101: 
	movl	$.LC37, %edi
 jmp .UNIQUE1102
NOP
NOP
NOP
NOP
NOP
.UNIQUE1102: 
	call	puts
 jmp .UNIQUE1103
NOP
NOP
NOP
NOP
NOP
.UNIQUE1103: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1104
NOP
NOP
NOP
NOP
NOP
.UNIQUE1104: 
	ret
	.cfi_endproc
.LFE26:
	.size	mem_test, .-mem_test
	.section	.rodata
.LC38:
	.string	"a=%p b=%p c=%p d=%p\n"
	.align 8
.LC39:
	.string	"start of .text=0x%lx, end of .text=0x%lx, init=0x%lx, fini=0x%lx\n"
.LC40:
	.string	"key no%d=0x%02x\n"
	.text
	.globl	find_keyshares
	.type	find_keyshares, @function
find_keyshares:
.LFB27:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1105
NOP
NOP
NOP
NOP
NOP
.UNIQUE1105: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1106
NOP
NOP
NOP
NOP
NOP
.UNIQUE1106: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1107
NOP
NOP
NOP
NOP
NOP
.UNIQUE1107: 
	subq	$112, %rsp
 jmp .UNIQUE1108
NOP
NOP
NOP
NOP
NOP
.UNIQUE1108: 
	movq	%fs:40, %rax
 jmp .UNIQUE1109
NOP
NOP
NOP
NOP
NOP
.UNIQUE1109: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1110
NOP
NOP
NOP
NOP
NOP
.UNIQUE1110: 
	xorl	%eax, %eax
 jmp .UNIQUE1111
NOP
NOP
NOP
NOP
NOP
.UNIQUE1111: 
	movl	$0, -96(%rbp)
 jmp .UNIQUE1112
NOP
NOP
NOP
NOP
NOP
.UNIQUE1112: 
	movq	$foo, -72(%rbp)
 jmp .UNIQUE1113
NOP
NOP
NOP
NOP
NOP
.UNIQUE1113: 
	movq	$main, -64(%rbp)
 jmp .UNIQUE1114
NOP
NOP
NOP
NOP
NOP
.UNIQUE1114: 
	movq	$foo2, -56(%rbp)
 jmp .UNIQUE1115
NOP
NOP
NOP
NOP
NOP
.UNIQUE1115: 
	movq	$find_keyshares, -48(%rbp)
 jmp .UNIQUE1116
NOP
NOP
NOP
NOP
NOP
.UNIQUE1116: 
	movl	$0, -92(%rbp)
 jmp .UNIQUE1117
NOP
NOP
NOP
NOP
NOP
.UNIQUE1117: 
	movq	$__executable_start, -40(%rbp)
 jmp .UNIQUE1118
NOP
NOP
NOP
NOP
NOP
.UNIQUE1118: 
	movq	$__etext, -32(%rbp)
 jmp .UNIQUE1119
NOP
NOP
NOP
NOP
NOP
.UNIQUE1119: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE1120
NOP
NOP
NOP
NOP
NOP
.UNIQUE1120: 
	jmp	.L88
.L89:
 jmp .UNIQUE1121
NOP
NOP
NOP
NOP
NOP
.UNIQUE1121: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE1122
NOP
NOP
NOP
NOP
NOP
.UNIQUE1122: 
	cltq
 jmp .UNIQUE1123
NOP
NOP
NOP
NOP
NOP
.UNIQUE1123: 
	movb	$0, -16(%rbp,%rax)
 jmp .UNIQUE1124
NOP
NOP
NOP
NOP
NOP
.UNIQUE1124: 
	addl	$1, -100(%rbp)
.L88:
 jmp .UNIQUE1125
NOP
NOP
NOP
NOP
NOP
.UNIQUE1125: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE1126
NOP
NOP
NOP
NOP
NOP
.UNIQUE1126: 
	jle	.L89
 jmp .UNIQUE1127
NOP
NOP
NOP
NOP
NOP
.UNIQUE1127: 
	movq	-48(%rbp), %rsi
 jmp .UNIQUE1128
NOP
NOP
NOP
NOP
NOP
.UNIQUE1128: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE1129
NOP
NOP
NOP
NOP
NOP
.UNIQUE1129: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE1130
NOP
NOP
NOP
NOP
NOP
.UNIQUE1130: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE1131
NOP
NOP
NOP
NOP
NOP
.UNIQUE1131: 
	movq	%rsi, %r8
 jmp .UNIQUE1132
NOP
NOP
NOP
NOP
NOP
.UNIQUE1132: 
	movq	%rax, %rsi
 jmp .UNIQUE1133
NOP
NOP
NOP
NOP
NOP
.UNIQUE1133: 
	movl	$.LC38, %edi
 jmp .UNIQUE1134
NOP
NOP
NOP
NOP
NOP
.UNIQUE1134: 
	movl	$0, %eax
 jmp .UNIQUE1135
NOP
NOP
NOP
NOP
NOP
.UNIQUE1135: 
	call	printf
 jmp .UNIQUE1136
NOP
NOP
NOP
NOP
NOP
.UNIQUE1136: 
	movl	$_fini, %esi
 jmp .UNIQUE1137
NOP
NOP
NOP
NOP
NOP
.UNIQUE1137: 
	movl	$_init, %ecx
 jmp .UNIQUE1138
NOP
NOP
NOP
NOP
NOP
.UNIQUE1138: 
	movl	$__etext, %edx
 jmp .UNIQUE1139
NOP
NOP
NOP
NOP
NOP
.UNIQUE1139: 
	movl	$__executable_start, %eax
 jmp .UNIQUE1140
NOP
NOP
NOP
NOP
NOP
.UNIQUE1140: 
	movq	%rsi, %r8
 jmp .UNIQUE1141
NOP
NOP
NOP
NOP
NOP
.UNIQUE1141: 
	movq	%rax, %rsi
 jmp .UNIQUE1142
NOP
NOP
NOP
NOP
NOP
.UNIQUE1142: 
	movl	$.LC39, %edi
 jmp .UNIQUE1143
NOP
NOP
NOP
NOP
NOP
.UNIQUE1143: 
	movl	$0, %eax
 jmp .UNIQUE1144
NOP
NOP
NOP
NOP
NOP
.UNIQUE1144: 
	call	printf
 jmp .UNIQUE1145
NOP
NOP
NOP
NOP
NOP
.UNIQUE1145: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1146
NOP
NOP
NOP
NOP
NOP
.UNIQUE1146: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE1147
NOP
NOP
NOP
NOP
NOP
.UNIQUE1147: 
	jmp	.L90
.L94:
 jmp .UNIQUE1148
NOP
NOP
NOP
NOP
NOP
.UNIQUE1148: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE1149
NOP
NOP
NOP
NOP
NOP
.UNIQUE1149: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1150
NOP
NOP
NOP
NOP
NOP
.UNIQUE1150: 
	cmpb	$-21, %al
 jmp .UNIQUE1151
NOP
NOP
NOP
NOP
NOP
.UNIQUE1151: 
	jne	.L91
 jmp .UNIQUE1152
NOP
NOP
NOP
NOP
NOP
.UNIQUE1152: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE1153
NOP
NOP
NOP
NOP
NOP
.UNIQUE1153: 
	addq	$1, %rax
 jmp .UNIQUE1154
NOP
NOP
NOP
NOP
NOP
.UNIQUE1154: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1155
NOP
NOP
NOP
NOP
NOP
.UNIQUE1155: 
	cmpb	$5, %al
 jmp .UNIQUE1156
NOP
NOP
NOP
NOP
NOP
.UNIQUE1156: 
	jne	.L91
 jmp .UNIQUE1157
NOP
NOP
NOP
NOP
NOP
.UNIQUE1157: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE1158
NOP
NOP
NOP
NOP
NOP
.UNIQUE1158: 
	jmp	.L92
.L93:
 jmp .UNIQUE1159
NOP
NOP
NOP
NOP
NOP
.UNIQUE1159: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE1160
NOP
NOP
NOP
NOP
NOP
.UNIQUE1160: 
	cltq
 jmp .UNIQUE1161
NOP
NOP
NOP
NOP
NOP
.UNIQUE1161: 
	movzbl	-16(%rbp,%rax), %edx
 jmp .UNIQUE1162
NOP
NOP
NOP
NOP
NOP
.UNIQUE1162: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE1163
NOP
NOP
NOP
NOP
NOP
.UNIQUE1163: 
	cltq
 jmp .UNIQUE1164
NOP
NOP
NOP
NOP
NOP
.UNIQUE1164: 
	leaq	2(%rax), %rcx
 jmp .UNIQUE1165
NOP
NOP
NOP
NOP
NOP
.UNIQUE1165: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE1166
NOP
NOP
NOP
NOP
NOP
.UNIQUE1166: 
	addq	%rcx, %rax
 jmp .UNIQUE1167
NOP
NOP
NOP
NOP
NOP
.UNIQUE1167: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1168
NOP
NOP
NOP
NOP
NOP
.UNIQUE1168: 
	xorl	%eax, %edx
 jmp .UNIQUE1169
NOP
NOP
NOP
NOP
NOP
.UNIQUE1169: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE1170
NOP
NOP
NOP
NOP
NOP
.UNIQUE1170: 
	cltq
 jmp .UNIQUE1171
NOP
NOP
NOP
NOP
NOP
.UNIQUE1171: 
	movb	%dl, -16(%rbp,%rax)
 jmp .UNIQUE1172
NOP
NOP
NOP
NOP
NOP
.UNIQUE1172: 
	addl	$1, -100(%rbp)
.L92:
 jmp .UNIQUE1173
NOP
NOP
NOP
NOP
NOP
.UNIQUE1173: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE1174
NOP
NOP
NOP
NOP
NOP
.UNIQUE1174: 
	jle	.L93
 jmp .UNIQUE1175
NOP
NOP
NOP
NOP
NOP
.UNIQUE1175: 
	addl	$1, -96(%rbp)
.L91:
 jmp .UNIQUE1176
NOP
NOP
NOP
NOP
NOP
.UNIQUE1176: 
	addq	$1, -88(%rbp)
.L90:
 jmp .UNIQUE1177
NOP
NOP
NOP
NOP
NOP
.UNIQUE1177: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE1178
NOP
NOP
NOP
NOP
NOP
.UNIQUE1178: 
	cmpq	-32(%rbp), %rax
 jmp .UNIQUE1179
NOP
NOP
NOP
NOP
NOP
.UNIQUE1179: 
	jbe	.L94
 jmp .UNIQUE1180
NOP
NOP
NOP
NOP
NOP
.UNIQUE1180: 
	movl	$.LC5, %esi
 jmp .UNIQUE1181
NOP
NOP
NOP
NOP
NOP
.UNIQUE1181: 
	movl	$.LC6, %edi
 jmp .UNIQUE1182
NOP
NOP
NOP
NOP
NOP
.UNIQUE1182: 
	call	fopen
 jmp .UNIQUE1183
NOP
NOP
NOP
NOP
NOP
.UNIQUE1183: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1184
NOP
NOP
NOP
NOP
NOP
.UNIQUE1184: 
	movq	memory_chunk(%rip), %rax
 jmp .UNIQUE1185
NOP
NOP
NOP
NOP
NOP
.UNIQUE1185: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE1186
NOP
NOP
NOP
NOP
NOP
.UNIQUE1186: 
	movq	$0, -80(%rbp)
 jmp .UNIQUE1187
NOP
NOP
NOP
NOP
NOP
.UNIQUE1187: 
	jmp	.L95
.L99:
 jmp .UNIQUE1188
NOP
NOP
NOP
NOP
NOP
.UNIQUE1188: 
	cmpl	$0, -92(%rbp)
 jmp .UNIQUE1189
NOP
NOP
NOP
NOP
NOP
.UNIQUE1189: 
	jne	.L96
 jmp .UNIQUE1190
NOP
NOP
NOP
NOP
NOP
.UNIQUE1190: 
	addq	$4, -80(%rbp)
 jmp .UNIQUE1191
NOP
NOP
NOP
NOP
NOP
.UNIQUE1191: 
	movl	$1, -92(%rbp)
 jmp .UNIQUE1192
NOP
NOP
NOP
NOP
NOP
.UNIQUE1192: 
	jmp	.L95
.L96:
 jmp .UNIQUE1193
NOP
NOP
NOP
NOP
NOP
.UNIQUE1193: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE1194
NOP
NOP
NOP
NOP
NOP
.UNIQUE1194: 
	jmp	.L97
.L98:
 jmp .UNIQUE1195
NOP
NOP
NOP
NOP
NOP
.UNIQUE1195: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE1196
NOP
NOP
NOP
NOP
NOP
.UNIQUE1196: 
	cltq
 jmp .UNIQUE1197
NOP
NOP
NOP
NOP
NOP
.UNIQUE1197: 
	movzbl	-16(%rbp,%rax), %edx
 jmp .UNIQUE1198
NOP
NOP
NOP
NOP
NOP
.UNIQUE1198: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE1199
NOP
NOP
NOP
NOP
NOP
.UNIQUE1199: 
	movslq	%eax, %rcx
 jmp .UNIQUE1200
NOP
NOP
NOP
NOP
NOP
.UNIQUE1200: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE1201
NOP
NOP
NOP
NOP
NOP
.UNIQUE1201: 
	addq	%rax, %rcx
 jmp .UNIQUE1202
NOP
NOP
NOP
NOP
NOP
.UNIQUE1202: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE1203
NOP
NOP
NOP
NOP
NOP
.UNIQUE1203: 
	addq	%rcx, %rax
 jmp .UNIQUE1204
NOP
NOP
NOP
NOP
NOP
.UNIQUE1204: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1205
NOP
NOP
NOP
NOP
NOP
.UNIQUE1205: 
	xorl	%eax, %edx
 jmp .UNIQUE1206
NOP
NOP
NOP
NOP
NOP
.UNIQUE1206: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE1207
NOP
NOP
NOP
NOP
NOP
.UNIQUE1207: 
	cltq
 jmp .UNIQUE1208
NOP
NOP
NOP
NOP
NOP
.UNIQUE1208: 
	movb	%dl, -16(%rbp,%rax)
 jmp .UNIQUE1209
NOP
NOP
NOP
NOP
NOP
.UNIQUE1209: 
	addl	$1, -100(%rbp)
.L97:
 jmp .UNIQUE1210
NOP
NOP
NOP
NOP
NOP
.UNIQUE1210: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE1211
NOP
NOP
NOP
NOP
NOP
.UNIQUE1211: 
	jle	.L98
 jmp .UNIQUE1212
NOP
NOP
NOP
NOP
NOP
.UNIQUE1212: 
	addq	$5, -80(%rbp)
 jmp .UNIQUE1213
NOP
NOP
NOP
NOP
NOP
.UNIQUE1213: 
	movl	$0, -92(%rbp)
.L95:
 jmp .UNIQUE1214
NOP
NOP
NOP
NOP
NOP
.UNIQUE1214: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE1215
NOP
NOP
NOP
NOP
NOP
.UNIQUE1215: 
	cmpq	%rax, -80(%rbp)
 jmp .UNIQUE1216
NOP
NOP
NOP
NOP
NOP
.UNIQUE1216: 
	jl	.L99
 jmp .UNIQUE1217
NOP
NOP
NOP
NOP
NOP
.UNIQUE1217: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1218
NOP
NOP
NOP
NOP
NOP
.UNIQUE1218: 
	movq	%rax, %rdi
 jmp .UNIQUE1219
NOP
NOP
NOP
NOP
NOP
.UNIQUE1219: 
	call	fclose
 jmp .UNIQUE1220
NOP
NOP
NOP
NOP
NOP
.UNIQUE1220: 
	movl	$10, %edi
 jmp .UNIQUE1221
NOP
NOP
NOP
NOP
NOP
.UNIQUE1221: 
	call	putchar
 jmp .UNIQUE1222
NOP
NOP
NOP
NOP
NOP
.UNIQUE1222: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE1223
NOP
NOP
NOP
NOP
NOP
.UNIQUE1223: 
	jmp	.L100
.L101:
 jmp .UNIQUE1224
NOP
NOP
NOP
NOP
NOP
.UNIQUE1224: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE1225
NOP
NOP
NOP
NOP
NOP
.UNIQUE1225: 
	cltq
 jmp .UNIQUE1226
NOP
NOP
NOP
NOP
NOP
.UNIQUE1226: 
	movzbl	-16(%rbp,%rax), %eax
 jmp .UNIQUE1227
NOP
NOP
NOP
NOP
NOP
.UNIQUE1227: 
	movzbl	%al, %edx
 jmp .UNIQUE1228
NOP
NOP
NOP
NOP
NOP
.UNIQUE1228: 
	movl	-100(%rbp), %eax
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
	movl	$.LC40, %edi
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
	addl	$1, -100(%rbp)
.L100:
 jmp .UNIQUE1234
NOP
NOP
NOP
NOP
NOP
.UNIQUE1234: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE1235
NOP
NOP
NOP
NOP
NOP
.UNIQUE1235: 
	jle	.L101
 jmp .UNIQUE1236
NOP
NOP
NOP
NOP
NOP
.UNIQUE1236: 
	nop
 jmp .UNIQUE1237
NOP
NOP
NOP
NOP
NOP
.UNIQUE1237: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1238
NOP
NOP
NOP
NOP
NOP
.UNIQUE1238: 
	xorq	%fs:40, %rax
 jmp .UNIQUE1239
NOP
NOP
NOP
NOP
NOP
.UNIQUE1239: 
	je	.L103
 jmp .UNIQUE1240
NOP
NOP
NOP
NOP
NOP
.UNIQUE1240: 
	call	__stack_chk_fail
.L103:
 jmp .UNIQUE1241
NOP
NOP
NOP
NOP
NOP
.UNIQUE1241: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1242
NOP
NOP
NOP
NOP
NOP
.UNIQUE1242: 
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
 jmp .UNIQUE1243
NOP
NOP
NOP
NOP
NOP
.UNIQUE1243: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1244
NOP
NOP
NOP
NOP
NOP
.UNIQUE1244: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1245
NOP
NOP
NOP
NOP
NOP
.UNIQUE1245: 
	movl	%edi, -20(%rbp)
 jmp .UNIQUE1246
NOP
NOP
NOP
NOP
NOP
.UNIQUE1246: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE1247
NOP
NOP
NOP
NOP
NOP
.UNIQUE1247: 
	addl	$2, %eax
 jmp .UNIQUE1248
NOP
NOP
NOP
NOP
NOP
.UNIQUE1248: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE1249
NOP
NOP
NOP
NOP
NOP
.UNIQUE1249: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE1250
NOP
NOP
NOP
NOP
NOP
.UNIQUE1250: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1251
NOP
NOP
NOP
NOP
NOP
.UNIQUE1251: 
	ret
	.cfi_endproc
.LFE28:
	.size	foo, .-foo
	.section	.rodata
.LC41:
	.string	"K=%d\n"
.LC42:
	.string	"n=%d\n"
.LC43:
	.string	"main is at %p\n"
.LC44:
	.string	"Initializing mem"
	.align 8
.LC45:
	.string	"bytes_to_allocate_on_start:%d\n"
.LC46:
	.string	"Init_mem, alloc+key insertion"
	.align 8
.LC47:
	.string	"If successful, total bytes allocated:%ld\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB29:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1252
NOP
NOP
NOP
NOP
NOP
.UNIQUE1252: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1253
NOP
NOP
NOP
NOP
NOP
.UNIQUE1253: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1254
NOP
NOP
NOP
NOP
NOP
.UNIQUE1254: 
	subq	$64, %rsp
 jmp .UNIQUE1255
NOP
NOP
NOP
NOP
NOP
.UNIQUE1255: 
	movq	%fs:40, %rax
 jmp .UNIQUE1256
NOP
NOP
NOP
NOP
NOP
.UNIQUE1256: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1257
NOP
NOP
NOP
NOP
NOP
.UNIQUE1257: 
	xorl	%eax, %eax
 jmp .UNIQUE1258
NOP
NOP
NOP
NOP
NOP
.UNIQUE1258: 
	movl	$1, -56(%rbp)
 jmp .UNIQUE1259
NOP
NOP
NOP
NOP
NOP
.UNIQUE1259: 
	movl	$2, -48(%rbp)
 jmp .UNIQUE1260
NOP
NOP
NOP
NOP
NOP
.UNIQUE1260: 
	addl	$1, -48(%rbp)
 jmp .UNIQUE1261
NOP
NOP
NOP
NOP
NOP
.UNIQUE1261: 
	addl	$1, -48(%rbp)
 jmp .UNIQUE1262
NOP
NOP
NOP
NOP
NOP
.UNIQUE1262: 
	subl	$1, -48(%rbp)
 jmp .UNIQUE1263
NOP
NOP
NOP
NOP
NOP
.UNIQUE1263: 
	movl	-48(%rbp), %eax
 jmp .UNIQUE1264
NOP
NOP
NOP
NOP
NOP
.UNIQUE1264: 
	addl	%eax, -56(%rbp)
 jmp .UNIQUE1265
NOP
NOP
NOP
NOP
NOP
.UNIQUE1265: 
	addl	$2, -56(%rbp)
 jmp .UNIQUE1266
NOP
NOP
NOP
NOP
NOP
.UNIQUE1266: 
	addl	$1, -48(%rbp)
 jmp .UNIQUE1267
NOP
NOP
NOP
NOP
NOP
.UNIQUE1267: 
	movl	$1, -52(%rbp)
 jmp .UNIQUE1268
NOP
NOP
NOP
NOP
NOP
.UNIQUE1268: 
	jmp	.L107
.L108:
 jmp .UNIQUE1269
NOP
NOP
NOP
NOP
NOP
.UNIQUE1269: 
	movl	-48(%rbp), %eax
 jmp .UNIQUE1270
NOP
NOP
NOP
NOP
NOP
.UNIQUE1270: 
	addl	%eax, -56(%rbp)
 jmp .UNIQUE1271
NOP
NOP
NOP
NOP
NOP
.UNIQUE1271: 
	addl	$1, -52(%rbp)
.L107:
 jmp .UNIQUE1272
NOP
NOP
NOP
NOP
NOP
.UNIQUE1272: 
	cmpl	$500000000, -52(%rbp)
 jmp .UNIQUE1273
NOP
NOP
NOP
NOP
NOP
.UNIQUE1273: 
	jle	.L108
 jmp .UNIQUE1274
NOP
NOP
NOP
NOP
NOP
.UNIQUE1274: 
	movl	-56(%rbp), %eax
 jmp .UNIQUE1275
NOP
NOP
NOP
NOP
NOP
.UNIQUE1275: 
	movl	%eax, %esi
 jmp .UNIQUE1276
NOP
NOP
NOP
NOP
NOP
.UNIQUE1276: 
	movl	$.LC41, %edi
 jmp .UNIQUE1277
NOP
NOP
NOP
NOP
NOP
.UNIQUE1277: 
	movl	$0, %eax
 jmp .UNIQUE1278
NOP
NOP
NOP
NOP
NOP
.UNIQUE1278: 
	call	printf
 jmp .UNIQUE1279
NOP
NOP
NOP
NOP
NOP
.UNIQUE1279: 
	movl	$5, %edi
 jmp .UNIQUE1280
NOP
NOP
NOP
NOP
NOP
.UNIQUE1280: 
	call	foo
 jmp .UNIQUE1281
NOP
NOP
NOP
NOP
NOP
.UNIQUE1281: 
	movl	%eax, -44(%rbp)
 jmp .UNIQUE1282
NOP
NOP
NOP
NOP
NOP
.UNIQUE1282: 
	movl	-44(%rbp), %eax
 jmp .UNIQUE1283
NOP
NOP
NOP
NOP
NOP
.UNIQUE1283: 
	movl	%eax, %edi
 jmp .UNIQUE1284
NOP
NOP
NOP
NOP
NOP
.UNIQUE1284: 
	call	foo2
 jmp .UNIQUE1285
NOP
NOP
NOP
NOP
NOP
.UNIQUE1285: 
	movl	%eax, -44(%rbp)
 jmp .UNIQUE1286
NOP
NOP
NOP
NOP
NOP
.UNIQUE1286: 
	movl	-44(%rbp), %eax
 jmp .UNIQUE1287
NOP
NOP
NOP
NOP
NOP
.UNIQUE1287: 
	movl	%eax, %esi
 jmp .UNIQUE1288
NOP
NOP
NOP
NOP
NOP
.UNIQUE1288: 
	movl	$.LC42, %edi
 jmp .UNIQUE1289
NOP
NOP
NOP
NOP
NOP
.UNIQUE1289: 
	movl	$0, %eax
 jmp .UNIQUE1290
NOP
NOP
NOP
NOP
NOP
.UNIQUE1290: 
	call	printf
 jmp .UNIQUE1291
NOP
NOP
NOP
NOP
NOP
.UNIQUE1291: 
	movl	$main, %esi
 jmp .UNIQUE1292
NOP
NOP
NOP
NOP
NOP
.UNIQUE1292: 
	movl	$.LC43, %edi
 jmp .UNIQUE1293
NOP
NOP
NOP
NOP
NOP
.UNIQUE1293: 
	movl	$0, %eax
 jmp .UNIQUE1294
NOP
NOP
NOP
NOP
NOP
.UNIQUE1294: 
	call	printf
 jmp .UNIQUE1295
NOP
NOP
NOP
NOP
NOP
.UNIQUE1295: 
	movl	$.LC44, %edi
 jmp .UNIQUE1296
NOP
NOP
NOP
NOP
NOP
.UNIQUE1296: 
	call	puts
 jmp .UNIQUE1297
NOP
NOP
NOP
NOP
NOP
.UNIQUE1297: 
	movl	$1024, %esi
 jmp .UNIQUE1298
NOP
NOP
NOP
NOP
NOP
.UNIQUE1298: 
	movl	$.LC45, %edi
 jmp .UNIQUE1299
NOP
NOP
NOP
NOP
NOP
.UNIQUE1299: 
	movl	$0, %eax
 jmp .UNIQUE1300
NOP
NOP
NOP
NOP
NOP
.UNIQUE1300: 
	call	printf
 jmp .UNIQUE1301
NOP
NOP
NOP
NOP
NOP
.UNIQUE1301: 
	movl	$.LC46, %edi
 jmp .UNIQUE1302
NOP
NOP
NOP
NOP
NOP
.UNIQUE1302: 
	call	puts
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
	call	init_mem
 jmp .UNIQUE1305
NOP
NOP
NOP
NOP
NOP
.UNIQUE1305: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE1306
NOP
NOP
NOP
NOP
NOP
.UNIQUE1306: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE1307
NOP
NOP
NOP
NOP
NOP
.UNIQUE1307: 
	movq	%rax, %rsi
 jmp .UNIQUE1308
NOP
NOP
NOP
NOP
NOP
.UNIQUE1308: 
	movl	$.LC47, %edi
 jmp .UNIQUE1309
NOP
NOP
NOP
NOP
NOP
.UNIQUE1309: 
	movl	$0, %eax
 jmp .UNIQUE1310
NOP
NOP
NOP
NOP
NOP
.UNIQUE1310: 
	call	printf
 jmp .UNIQUE1311
NOP
NOP
NOP
NOP
NOP
.UNIQUE1311: 
	movl	$0, %eax
 jmp .UNIQUE1312
NOP
NOP
NOP
NOP
NOP
.UNIQUE1312: 
	call	find_keyshares
 jmp .UNIQUE1313
NOP
NOP
NOP
NOP
NOP
.UNIQUE1313: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1314
NOP
NOP
NOP
NOP
NOP
.UNIQUE1314: 
	movq	%rax, %rdi
 jmp .UNIQUE1315
NOP
NOP
NOP
NOP
NOP
.UNIQUE1315: 
	call	free_secure_mem
 jmp .UNIQUE1316
NOP
NOP
NOP
NOP
NOP
.UNIQUE1316: 
	movl	$0, %eax
 jmp .UNIQUE1317
NOP
NOP
NOP
NOP
NOP
.UNIQUE1317: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1318
NOP
NOP
NOP
NOP
NOP
.UNIQUE1318: 
	xorq	%fs:40, %rdx
 jmp .UNIQUE1319
NOP
NOP
NOP
NOP
NOP
.UNIQUE1319: 
	je	.L110
 jmp .UNIQUE1320
NOP
NOP
NOP
NOP
NOP
.UNIQUE1320: 
	call	__stack_chk_fail
.L110:
 jmp .UNIQUE1321
NOP
NOP
NOP
NOP
NOP
.UNIQUE1321: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1322
NOP
NOP
NOP
NOP
NOP
.UNIQUE1322: 
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
 jmp .UNIQUE1323
NOP
NOP
NOP
NOP
NOP
.UNIQUE1323: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1324
NOP
NOP
NOP
NOP
NOP
.UNIQUE1324: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1325
NOP
NOP
NOP
NOP
NOP
.UNIQUE1325: 
	movl	%edi, -20(%rbp)
 jmp .UNIQUE1326
NOP
NOP
NOP
NOP
NOP
.UNIQUE1326: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE1327
NOP
NOP
NOP
NOP
NOP
.UNIQUE1327: 
	addl	$3, %eax
 jmp .UNIQUE1328
NOP
NOP
NOP
NOP
NOP
.UNIQUE1328: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE1329
NOP
NOP
NOP
NOP
NOP
.UNIQUE1329: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE1330
NOP
NOP
NOP
NOP
NOP
.UNIQUE1330: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1331
NOP
NOP
NOP
NOP
NOP
.UNIQUE1331: 
	ret
	.cfi_endproc
.LFE30:
	.size	foo2, .-foo2
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.1) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
