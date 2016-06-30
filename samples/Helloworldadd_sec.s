	.file	"Helloworldadd.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"malloc failed in function %s, line %d\n"
	.text
	.globl	error_checking_malloc
	.type	error_checking_malloc, @function
error_checking_malloc:
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
NOP
NOP
.UNIQUE2: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE3
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE4
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4: 
	movl	%edx, -36(%rbp)
 jmp .UNIQUE5
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE6
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6: 
	jne	.L2
 jmp .UNIQUE7
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7: 
	movl	$0, %eax
 jmp .UNIQUE8
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8: 
	jmp	.L3
.L2:
 jmp .UNIQUE9
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE10
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE10: 
	movq	%rax, %rdi
 jmp .UNIQUE11
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE11: 
	call	malloc
 jmp .UNIQUE12
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE12: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE13
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE13: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE14
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE14: 
	jne	.L4
 jmp .UNIQUE15
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE15: 
	movq	stderr(%rip), %rax
 jmp .UNIQUE16
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE16: 
	movl	-36(%rbp), %ecx
 jmp .UNIQUE17
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE17: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE18
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE18: 
	movl	$.LC0, %esi
 jmp .UNIQUE19
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE19: 
	movq	%rax, %rdi
 jmp .UNIQUE20
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE20: 
	movl	$0, %eax
 jmp .UNIQUE21
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE21: 
	call	fprintf
 jmp .UNIQUE22
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE22: 
	movl	$42, %edi
 jmp .UNIQUE23
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE23: 
	call	exit
.L4:
 jmp .UNIQUE24
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE24: 
	movq	-8(%rbp), %rax
.L3:
 jmp .UNIQUE25
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE25: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE26
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE26: 
	ret
	.cfi_endproc
.LFE2:
	.size	error_checking_malloc, .-error_checking_malloc
	.comm	total_bytes_allocated,8,8
	.comm	entire_memory_chunk,8,8
	.comm	last_unused_memory,8,8
	.comm	keyshare_input_file,8,8
	.comm	free_chunks_list,8,8
	.comm	free_chunks_num,8,8
	.comm	allocated_chunks_list,8,8
	.comm	allocated_chunks_num,8,8
	.globl	copy_nodes
	.type	copy_nodes, @function
copy_nodes:
.LFB3:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE27
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE27: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE28
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE28: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE29
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE29: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE30
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE30: 
	movq	16(%rbp), %rdx
 jmp .UNIQUE31
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE31: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE32
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE32: 
	movq	%rdx, (%rax)
 jmp .UNIQUE33
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE33: 
	movq	24(%rbp), %rdx
 jmp .UNIQUE34
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE34: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE35
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE35: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE36
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE36: 
	movq	32(%rbp), %rdx
 jmp .UNIQUE37
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE37: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE38
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE38: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE39
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE39: 
	movq	40(%rbp), %rdx
 jmp .UNIQUE40
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE40: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE41
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE41: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE42
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE42: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE43
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE43: 
	ret
	.cfi_endproc
.LFE3:
	.size	copy_nodes, .-copy_nodes
	.globl	copy_nodes_ptr
	.type	copy_nodes_ptr, @function
copy_nodes_ptr:
.LFB4:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE44
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE44: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE45
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE45: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE46
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE46: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE47
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE47: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE48
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE48: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE49
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE49: 
	movq	(%rax), %rdx
 jmp .UNIQUE50
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE50: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE51
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE51: 
	movq	%rdx, (%rax)
 jmp .UNIQUE52
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE52: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE53
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE53: 
	movq	8(%rax), %rdx
 jmp .UNIQUE54
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE54: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE55
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE55: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE56
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE56: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE57
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE57: 
	movq	16(%rax), %rdx
 jmp .UNIQUE58
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE58: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE59
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE59: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE60
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE60: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE61
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE61: 
	movq	24(%rax), %rdx
 jmp .UNIQUE62
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE62: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE63
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE63: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE64
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE64: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE65
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE65: 
	ret
	.cfi_endproc
.LFE4:
	.size	copy_nodes_ptr, .-copy_nodes_ptr
	.globl	alloc_list
	.type	alloc_list, @function
alloc_list:
.LFB5:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE66
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE66: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE67
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE67: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE68
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE68: 
	subq	$48, %rsp
 jmp .UNIQUE69
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE69: 
	movq	%rdi, -40(%rbp)
 jmp .UNIQUE70
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE70: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE71
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE71: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE72
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE72: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE73
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE73: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE74
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE74: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE75
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE75: 
	movq	$1, -8(%rbp)
 jmp .UNIQUE76
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE76: 
	jmp	.L8
.L11:
 jmp .UNIQUE77
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE77: 
	movl	$67, %edx
 jmp .UNIQUE78
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE78: 
	movl	$__func__.3962, %esi
 jmp .UNIQUE79
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE79: 
	movl	$32, %edi
 jmp .UNIQUE80
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE80: 
	call	error_checking_malloc
 jmp .UNIQUE81
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE81: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE82
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE82: 
	cmpq	$1, -8(%rbp)
 jmp .UNIQUE83
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE83: 
	jne	.L9
 jmp .UNIQUE84
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE84: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE85
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE85: 
	movq	%rax, -32(%rbp)
.L9:
 jmp .UNIQUE86
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE86: 
	cmpq	$1, -8(%rbp)
 jmp .UNIQUE87
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE87: 
	jle	.L10
 jmp .UNIQUE88
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE88: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE89
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE89: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE90
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE90: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE91
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE91: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE92
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE92: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE93
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE93: 
	movq	%rdx, 24(%rax)
.L10:
 jmp .UNIQUE94
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE94: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE95
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE95: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE96
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE96: 
	addq	$1, -8(%rbp)
.L8:
 jmp .UNIQUE97
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE97: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE98
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE98: 
	cmpq	-40(%rbp), %rax
 jmp .UNIQUE99
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE99: 
	jle	.L11
 jmp .UNIQUE100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE100: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE101: 
	jle	.L12
 jmp .UNIQUE102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE102: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE103: 
	movq	$0, 16(%rax)
 jmp .UNIQUE104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE104: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE105: 
	movq	$0, 24(%rax)
.L12:
 jmp .UNIQUE106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE106: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE107: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE108: 
	ret
	.cfi_endproc
.LFE5:
	.size	alloc_list, .-alloc_list
	.globl	add_node_to_list
	.type	add_node_to_list, @function
add_node_to_list:
.LFB6:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE109: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE110: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE111: 
	subq	$64, %rsp
 jmp .UNIQUE112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE112: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE113: 
	movl	$94, %edx
 jmp .UNIQUE114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE114: 
	movl	$__func__.3971, %esi
 jmp .UNIQUE115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE115: 
	movl	$32, %edi
 jmp .UNIQUE116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE116: 
	call	error_checking_malloc
 jmp .UNIQUE117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE117: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE118: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE119: 
	movq	16(%rbp), %rdx
 jmp .UNIQUE120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE120: 
	movq	%rdx, (%rsp)
 jmp .UNIQUE121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE121: 
	movq	24(%rbp), %rdx
 jmp .UNIQUE122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE122: 
	movq	%rdx, 8(%rsp)
 jmp .UNIQUE123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE123: 
	movq	32(%rbp), %rdx
 jmp .UNIQUE124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE124: 
	movq	%rdx, 16(%rsp)
 jmp .UNIQUE125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE125: 
	movq	40(%rbp), %rdx
 jmp .UNIQUE126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE126: 
	movq	%rdx, 24(%rsp)
 jmp .UNIQUE127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE127: 
	movq	%rax, %rdi
 jmp .UNIQUE128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE128: 
	call	copy_nodes
 jmp .UNIQUE129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE129: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE130: 
	jne	.L15
 jmp .UNIQUE131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE131: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE132: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE133: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE134: 
	movq	$0, 16(%rax)
 jmp .UNIQUE135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE135: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE136: 
	movq	$0, 24(%rax)
 jmp .UNIQUE137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE137: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE138: 
	jmp	.L16
.L15:
 jmp .UNIQUE139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE139: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE140: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE141: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE142: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE143: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE144: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE145: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE146: 
	movq	$0, 24(%rax)
 jmp .UNIQUE147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE147: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE148
NOP
NOP
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
NOP
NOP
.UNIQUE149: 
	movq	-24(%rbp), %rax
.L16:
 jmp .UNIQUE150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE150: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE151: 
	ret
	.cfi_endproc
.LFE6:
	.size	add_node_to_list, .-add_node_to_list
	.globl	delete_node_from_list
	.type	delete_node_from_list, @function
delete_node_from_list:
.LFB7:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE152: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE153: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE154: 
	subq	$32, %rsp
 jmp .UNIQUE155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE155: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE156: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE157: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE158: 
	movq	16(%rax), %rax
 jmp .UNIQUE159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE159: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE160: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE161: 
	movq	24(%rax), %rax
 jmp .UNIQUE162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE162: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE163: 
	cmpq	$0, -16(%rbp)
 jmp .UNIQUE164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE164: 
	jne	.L18
 jmp .UNIQUE165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE165: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE166: 
	jne	.L18
 jmp .UNIQUE167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE167: 
	movq	$0, -24(%rbp)
 jmp .UNIQUE168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE168: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE169: 
	movq	%rax, %rdi
 jmp .UNIQUE170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE170: 
	call	free
 jmp .UNIQUE171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE171: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE172: 
	jmp	.L19
.L18:
 jmp .UNIQUE173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE173: 
	cmpq	$0, -16(%rbp)
 jmp .UNIQUE174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE174: 
	jne	.L20
 jmp .UNIQUE175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE175: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE176: 
	je	.L20
 jmp .UNIQUE177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE177: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE178: 
	movq	$0, 16(%rax)
 jmp .UNIQUE179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE179: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE180: 
	movq	%rax, %rdi
 jmp .UNIQUE181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE181: 
	call	free
 jmp .UNIQUE182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE182: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE183: 
	jmp	.L19
.L20:
 jmp .UNIQUE184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE184: 
	cmpq	$0, -16(%rbp)
 jmp .UNIQUE185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE185: 
	je	.L21
 jmp .UNIQUE186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE186: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE187: 
	jne	.L21
 jmp .UNIQUE188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE188: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE189: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE190: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE191: 
	movq	$0, 24(%rax)
 jmp .UNIQUE192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE192: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE193: 
	movq	%rax, %rdi
 jmp .UNIQUE194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE194: 
	call	free
 jmp .UNIQUE195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE195: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE196: 
	jmp	.L19
.L21:
 jmp .UNIQUE197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE197: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE198: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE199: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE200: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE201: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE202: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE203: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE204: 
	movq	%rax, %rdi
 jmp .UNIQUE205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE205: 
	call	free
 jmp .UNIQUE206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE206: 
	movq	-24(%rbp), %rax
.L19:
 jmp .UNIQUE207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE207: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE208: 
	ret
	.cfi_endproc
.LFE7:
	.size	delete_node_from_list, .-delete_node_from_list
	.globl	free_list
	.type	free_list, @function
free_list:
.LFB8:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE209: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE210: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE211: 
	subq	$32, %rsp
 jmp .UNIQUE212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE212: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE213: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE214: 
	jne	.L23
 jmp .UNIQUE215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE215: 
	jmp	.L22
.L23:
 jmp .UNIQUE216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE216: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE217: 
	movq	16(%rax), %rax
 jmp .UNIQUE218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE218: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE219: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE220: 
	movq	%rax, -8(%rbp)
.L26:
 jmp .UNIQUE221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE221: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE222: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE223: 
	movq	%rdx, %rsi
 jmp .UNIQUE224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE224: 
	movq	%rax, %rdi
 jmp .UNIQUE225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE225: 
	call	delete_node_from_list
 jmp .UNIQUE226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE226: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE227: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE228: 
	cmpq	$0, -16(%rbp)
 jmp .UNIQUE229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE229: 
	jne	.L25
 jmp .UNIQUE230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE230: 
	jmp	.L22
.L25:
 jmp .UNIQUE231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE231: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE232: 
	movq	16(%rax), %rax
 jmp .UNIQUE233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE233: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE234: 
	jmp	.L26
.L22:
 jmp .UNIQUE235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE235: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE236: 
	ret
	.cfi_endproc
.LFE8:
	.size	free_list, .-free_list
	.section	.rodata
.LC1:
	.string	"List is empty."
	.align 8
.LC2:
	.string	"Node %ld: Length in chunks=%ld, pointer to mem=%ld\n"
	.text
	.globl	print_list
	.type	print_list, @function
print_list:
.LFB9:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE237: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE238: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE239: 
	subq	$32, %rsp
 jmp .UNIQUE240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE240: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE241: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE242: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE243: 
	jne	.L28
 jmp .UNIQUE244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE244: 
	movl	$.LC1, %edi
 jmp .UNIQUE245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE245: 
	call	puts
 jmp .UNIQUE246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE246: 
	jmp	.L27
.L28:
 jmp .UNIQUE247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE247: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE248: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE249: 
	jmp	.L30
.L31:
 jmp .UNIQUE250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE250: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE251: 
	movq	8(%rax), %rax
 jmp .UNIQUE252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE252: 
	movq	%rax, %rcx
 jmp .UNIQUE253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE253: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE254: 
	movq	(%rax), %rdx
 jmp .UNIQUE255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE255: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE256: 
	movq	%rax, %rsi
 jmp .UNIQUE257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE257: 
	movl	$.LC2, %edi
 jmp .UNIQUE258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE258: 
	movl	$0, %eax
 jmp .UNIQUE259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE259: 
	call	printf
 jmp .UNIQUE260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE260: 
	addq	$1, -8(%rbp)
 jmp .UNIQUE261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE261: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE262: 
	movq	16(%rax), %rax
 jmp .UNIQUE263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE263: 
	movq	%rax, -16(%rbp)
.L30:
 jmp .UNIQUE264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE264: 
	cmpq	$0, -16(%rbp)
 jmp .UNIQUE265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE265: 
	jne	.L31
.L27:
 jmp .UNIQUE266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE266: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE267: 
	ret
	.cfi_endproc
.LFE9:
	.size	print_list, .-print_list
	.section	.rodata
.LC3:
	.string	"Free chunks list:"
.LC4:
	.string	"Allocated chunks list:"
	.text
	.globl	print_lists
	.type	print_lists, @function
print_lists:
.LFB10:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE268: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE269: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE270: 
	movl	$.LC3, %edi
 jmp .UNIQUE271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE271: 
	call	puts
 jmp .UNIQUE272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE272: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE273: 
	movq	%rax, %rdi
 jmp .UNIQUE274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE274: 
	call	print_list
 jmp .UNIQUE275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE275: 
	movl	$.LC4, %edi
 jmp .UNIQUE276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE276: 
	call	puts
 jmp .UNIQUE277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE277: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE278: 
	movq	%rax, %rdi
 jmp .UNIQUE279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE279: 
	call	print_list
 jmp .UNIQUE280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE280: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE281: 
	ret
	.cfi_endproc
.LFE10:
	.size	print_lists, .-print_lists
	.globl	find_number_of_useful_chunks
	.type	find_number_of_useful_chunks, @function
find_number_of_useful_chunks:
.LFB11:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE282: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE283: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE284: 
	movq	%rdi, -40(%rbp)
 jmp .UNIQUE285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE285: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE286: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE287: 
	movq	$5, -16(%rbp)
 jmp .UNIQUE288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE288: 
	movq	$4, -8(%rbp)
 jmp .UNIQUE289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE289: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE290: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE291: 
	addq	%rdx, %rax
 jmp .UNIQUE292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE292: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE293: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE294: 
	leaq	(%rdx,%rcx), %rsi
 jmp .UNIQUE295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE295: 
	cqto
 jmp .UNIQUE296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE296: 
	idivq	%rsi
 jmp .UNIQUE297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE297: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE298: 
	ret
	.cfi_endproc
.LFE11:
	.size	find_number_of_useful_chunks, .-find_number_of_useful_chunks
	.globl	init_memory_manager
	.type	init_memory_manager, @function
init_memory_manager:
.LFB12:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE299: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE300: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE301: 
	subq	$80, %rsp
 jmp .UNIQUE302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE302: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE303: 
	movq	%rax, %rdi
 jmp .UNIQUE304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE304: 
	call	find_number_of_useful_chunks
 jmp .UNIQUE305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE305: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE306: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE307: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE308: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE309: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE310: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE311: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE312: 
	movq	$0, free_chunks_list(%rip)
 jmp .UNIQUE313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE313: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE314: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE315: 
	movq	%rdx, (%rsp)
 jmp .UNIQUE316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE316: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE317: 
	movq	%rdx, 8(%rsp)
 jmp .UNIQUE318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE318: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE319: 
	movq	%rdx, 16(%rsp)
 jmp .UNIQUE320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE320: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE321: 
	movq	%rdx, 24(%rsp)
 jmp .UNIQUE322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE322: 
	movq	%rax, %rdi
 jmp .UNIQUE323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE323: 
	call	add_node_to_list
 jmp .UNIQUE324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE324: 
	movq	%rax, free_chunks_list(%rip)
 jmp .UNIQUE325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE325: 
	movq	$1, free_chunks_num(%rip)
 jmp .UNIQUE326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE326: 
	movq	$0, allocated_chunks_list(%rip)
 jmp .UNIQUE327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE327: 
	movq	$0, allocated_chunks_num(%rip)
 jmp .UNIQUE328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE328: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE329: 
	ret
	.cfi_endproc
.LFE12:
	.size	init_memory_manager, .-init_memory_manager
	.globl	free_memory_manager_structures
	.type	free_memory_manager_structures, @function
free_memory_manager_structures:
.LFB13:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE330: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE331: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE332: 
	movq	$0, free_chunks_num(%rip)
 jmp .UNIQUE333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE333: 
	movq	$0, allocated_chunks_num(%rip)
 jmp .UNIQUE334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE334: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE335: 
	movq	%rax, %rdi
 jmp .UNIQUE336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE336: 
	call	free_list
 jmp .UNIQUE337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE337: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE338: 
	movq	%rax, %rdi
 jmp .UNIQUE339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE339: 
	call	free_list
 jmp .UNIQUE340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE340: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE341: 
	ret
	.cfi_endproc
.LFE13:
	.size	free_memory_manager_structures, .-free_memory_manager_structures
	.section	.rodata
	.align 8
.LC5:
	.string	"Great!. No need to allocate more than the defined amount."
	.align 8
.LC6:
	.string	"Whoops. We need to allocate a bit more space."
	.text
	.globl	allocate_mem
	.type	allocate_mem, @function
allocate_mem:
.LFB14:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE342: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE343: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE344: 
	pushq	%rbx
 jmp .UNIQUE345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE345: 
	subq	$56, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE346: 
	movq	$2048, -56(%rbp)
 jmp .UNIQUE347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE347: 
	movq	$5, -48(%rbp)
 jmp .UNIQUE348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE348: 
	movq	$4, -40(%rbp)
 jmp .UNIQUE349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE349: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE350: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE351: 
	addq	%rdx, %rax
 jmp .UNIQUE352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE352: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE353: 
	movq	-48(%rbp), %rcx
 jmp .UNIQUE354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE354: 
	leaq	(%rdx,%rcx), %rbx
 jmp .UNIQUE355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE355: 
	cqto
 jmp .UNIQUE356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE356: 
	idivq	%rbx
 jmp .UNIQUE357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE357: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE358: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE359: 
	imulq	-40(%rbp), %rax
 jmp .UNIQUE360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE360: 
	movq	%rax, %rdx
 jmp .UNIQUE361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE361: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE362: 
	subq	$1, %rax
 jmp .UNIQUE363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE363: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE364: 
	addq	%rdx, %rax
 jmp .UNIQUE365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE365: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE366: 
	jne	.L38
 jmp .UNIQUE367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE367: 
	movl	$.LC5, %edi
 jmp .UNIQUE368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE368: 
	call	puts
 jmp .UNIQUE369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE369: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE370: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE371: 
	jmp	.L39
.L38:
 jmp .UNIQUE372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE372: 
	movl	$.LC6, %edi
 jmp .UNIQUE373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE373: 
	call	puts
 jmp .UNIQUE374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE374: 
	addq	$1, -32(%rbp)
 jmp .UNIQUE375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE375: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE376: 
	imulq	-40(%rbp), %rax
 jmp .UNIQUE377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE377: 
	movq	%rax, %rdx
 jmp .UNIQUE378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE378: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE379: 
	subq	$1, %rax
 jmp .UNIQUE380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE380: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE381: 
	addq	%rdx, %rax
 jmp .UNIQUE382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE382: 
	movq	%rax, -64(%rbp)
.L39:
 jmp .UNIQUE383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE383: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE384: 
	movl	$293, %edx
 jmp .UNIQUE385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE385: 
	movl	$__func__.4015, %esi
 jmp .UNIQUE386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE386: 
	movq	%rax, %rdi
 jmp .UNIQUE387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE387: 
	call	error_checking_malloc
 jmp .UNIQUE388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE388: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE389: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE390: 
	movq	%rax, total_bytes_allocated(%rip)
 jmp .UNIQUE391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE391: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE392: 
	addq	$56, %rsp
 jmp .UNIQUE393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE393: 
	popq	%rbx
 jmp .UNIQUE394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE394: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE395: 
	ret
	.cfi_endproc
.LFE14:
	.size	allocate_mem, .-allocate_mem
	.globl	secure_malloc
	.type	secure_malloc, @function
secure_malloc:
.LFB15:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE396: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE397: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE398: 
	subq	$96, %rsp
 jmp .UNIQUE399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE399: 
	movq	%rdi, -88(%rbp)
 jmp .UNIQUE400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE400: 
	movq	last_unused_memory(%rip), %rax
 jmp .UNIQUE401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE401: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE402: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE403: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE404: 
	movq	$5, -48(%rbp)
 jmp .UNIQUE405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE405: 
	movq	$4, -40(%rbp)
 jmp .UNIQUE406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE406: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE407: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE408: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE409: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE410: 
	subq	%rax, %rdx
 jmp .UNIQUE411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE411: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE412: 
	addq	%rdx, %rax
 jmp .UNIQUE413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE413: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE414: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE415: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE416
NOP
NOP
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
NOP
NOP
.UNIQUE417: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE418: 
	movq	-48(%rbp), %rcx
 jmp .UNIQUE419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE419: 
	leaq	(%rdx,%rcx), %rsi
 jmp .UNIQUE420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE420: 
	cqto
 jmp .UNIQUE421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE421: 
	idivq	%rsi
 jmp .UNIQUE422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE422: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE423: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE424: 
	imulq	-40(%rbp), %rax
 jmp .UNIQUE425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE425: 
	cmpq	-88(%rbp), %rax
 jmp .UNIQUE426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE426: 
	jge	.L42
 jmp .UNIQUE427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE427: 
	call	__errno_location
 jmp .UNIQUE428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE428: 
	movl	$12, (%rax)
 jmp .UNIQUE429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE429: 
	movl	$0, %eax
 jmp .UNIQUE430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE430: 
	jmp	.L43
.L42:
 jmp .UNIQUE431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE431: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE432: 
	cqto
 jmp .UNIQUE433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE433: 
	idivq	-40(%rbp)
 jmp .UNIQUE434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE434: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE435: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE436: 
	imulq	-40(%rbp), %rax
 jmp .UNIQUE437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE437: 
	cmpq	-88(%rbp), %rax
 jmp .UNIQUE438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE438: 
	je	.L44
 jmp .UNIQUE439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE439: 
	addq	$1, -72(%rbp)
.L44:
 jmp .UNIQUE440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE440: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE441: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE442: 
	movq	last_unused_memory(%rip), %rdx
 jmp .UNIQUE443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE443: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE444: 
	imulq	-40(%rbp), %rax
 jmp .UNIQUE445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE445: 
	movq	%rax, %rcx
 jmp .UNIQUE446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE446: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE447: 
	subq	$1, %rax
 jmp .UNIQUE448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE448: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE449: 
	addq	%rax, %rcx
 jmp .UNIQUE450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE450: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE451: 
	addq	%rcx, %rax
 jmp .UNIQUE452
NOP
NOP
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
NOP
NOP
.UNIQUE453: 
	movq	%rax, last_unused_memory(%rip)
 jmp .UNIQUE454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE454: 
	movq	-8(%rbp), %rax
.L43:
 jmp .UNIQUE455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE455: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE456: 
	ret
	.cfi_endproc
.LFE15:
	.size	secure_malloc, .-secure_malloc
	.section	.rodata
	.align 8
.LC7:
	.string	"Attempted to read more keyshares that the ones stored\n"
	.align 8
.LC8:
	.string	"Did not read byte in get_next_keyshare()\n"
	.text
	.globl	get_next_keyshare
	.type	get_next_keyshare, @function
get_next_keyshare:
.LFB16:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE457: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE458: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE459: 
	subq	$16, %rsp
 jmp .UNIQUE460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE460: 
	movq	keyshare_input_file(%rip), %rax
 jmp .UNIQUE461
NOP
NOP
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
NOP
NOP
.UNIQUE462: 
	call	feof
 jmp .UNIQUE463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE463: 
	testl	%eax, %eax
 jmp .UNIQUE464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE464: 
	je	.L46
 jmp .UNIQUE465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE465: 
	movl	$.LC7, %edi
 jmp .UNIQUE466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE466: 
	call	perror
 jmp .UNIQUE467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE467: 
	movl	$44, %edi
 jmp .UNIQUE468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE468: 
	call	exit
.L46:
 jmp .UNIQUE469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE469: 
	movq	keyshare_input_file(%rip), %rdx
 jmp .UNIQUE470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE470: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE471: 
	movq	%rdx, %rcx
 jmp .UNIQUE472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE472: 
	movl	$1, %edx
 jmp .UNIQUE473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE473: 
	movl	$1, %esi
 jmp .UNIQUE474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE474: 
	movq	%rax, %rdi
 jmp .UNIQUE475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE475: 
	call	fread
 jmp .UNIQUE476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE476: 
	cmpq	$1, %rax
 jmp .UNIQUE477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE477: 
	je	.L47
 jmp .UNIQUE478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE478: 
	movl	$.LC8, %edi
 jmp .UNIQUE479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE479: 
	call	perror
 jmp .UNIQUE480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE480: 
	movl	$47, %edi
 jmp .UNIQUE481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE481: 
	call	exit
.L47:
 jmp .UNIQUE482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE482: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE483: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE484: 
	ret
	.cfi_endproc
.LFE16:
	.size	get_next_keyshare, .-get_next_keyshare
	.globl	insert_keys_into_mem
	.type	insert_keys_into_mem, @function
insert_keys_into_mem:
.LFB17:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE485: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE486: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE487: 
	pushq	%rbx
 jmp .UNIQUE488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE488: 
	subq	$72, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE489: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE490: 
	movl	$0, -52(%rbp)
 jmp .UNIQUE491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE491: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE492: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE493: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE494: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE495: 
	jmp	.L50
.L55:
 jmp .UNIQUE496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE496: 
	cmpl	$0, -52(%rbp)
 jmp .UNIQUE497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE497: 
	je	.L51
 jmp .UNIQUE498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE498: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE499: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE500: 
	leaq	(%rdx,%rax), %rbx
 jmp .UNIQUE501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE501: 
	movl	$0, %eax
 jmp .UNIQUE502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE502: 
	call	get_next_keyshare
 jmp .UNIQUE503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE503: 
	movb	%al, (%rbx)
 jmp .UNIQUE504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE504: 
	addq	$1, -32(%rbp)
 jmp .UNIQUE505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE505: 
	addq	$1, -48(%rbp)
 jmp .UNIQUE506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE506: 
	jmp	.L52
.L51:
 jmp .UNIQUE507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE507: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE508: 
	jmp	.L53
.L54:
 jmp .UNIQUE509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE509: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE510: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE511: 
	addq	%rdx, %rax
 jmp .UNIQUE512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE512: 
	movq	%rax, %rdx
 jmp .UNIQUE513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE513: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE514: 
	addq	%rdx, %rax
 jmp .UNIQUE515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE515: 
	movb	$0, (%rax)
 jmp .UNIQUE516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE516: 
	addq	$1, -40(%rbp)
.L53:
 jmp .UNIQUE517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE517: 
	cmpq	$3, -40(%rbp)
 jmp .UNIQUE518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE518: 
	jle	.L54
 jmp .UNIQUE519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE519: 
	addq	$4, -48(%rbp)
 jmp .UNIQUE520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE520: 
	movl	$1, -52(%rbp)
.L52:
 jmp .UNIQUE521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE521: 
	cmpq	$5, -32(%rbp)
 jmp .UNIQUE522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE522: 
	jne	.L50
 jmp .UNIQUE523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE523: 
	movl	$0, -52(%rbp)
 jmp .UNIQUE524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE524: 
	movq	$0, -32(%rbp)
.L50:
 jmp .UNIQUE525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE525: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE526: 
	cmpq	%rax, -48(%rbp)
 jmp .UNIQUE527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE527: 
	jl	.L55
 jmp .UNIQUE528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE528: 
	addq	$72, %rsp
 jmp .UNIQUE529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE529: 
	popq	%rbx
 jmp .UNIQUE530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE530: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE531: 
	ret
	.cfi_endproc
.LFE17:
	.size	insert_keys_into_mem, .-insert_keys_into_mem
	.section	.rodata
.LC9:
	.string	"Printing heap memory:"
.LC10:
	.string	"0x%02x "
	.text
	.globl	print_mem
	.type	print_mem, @function
print_mem:
.LFB18:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE532: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE533: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE534: 
	subq	$32, %rsp
 jmp .UNIQUE535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE535: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE536: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE537: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE538: 
	movl	$.LC9, %edi
 jmp .UNIQUE539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE539: 
	call	puts
 jmp .UNIQUE540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE540: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE541: 
	jmp	.L57
.L58:
 jmp .UNIQUE542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE542: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE543: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE544: 
	addq	%rdx, %rax
 jmp .UNIQUE545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE545: 
	movzbl	(%rax), %eax
 jmp .UNIQUE546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE546: 
	movzbl	%al, %eax
 jmp .UNIQUE547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE547: 
	movl	%eax, %esi
 jmp .UNIQUE548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE548: 
	movl	$.LC10, %edi
 jmp .UNIQUE549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE549: 
	movl	$0, %eax
 jmp .UNIQUE550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE550: 
	call	printf
 jmp .UNIQUE551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE551: 
	addq	$1, -16(%rbp)
.L57:
 jmp .UNIQUE552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE552: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE553: 
	cmpq	%rax, -16(%rbp)
 jmp .UNIQUE554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE554: 
	jl	.L58
 jmp .UNIQUE555
NOP
NOP
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
NOP
NOP
.UNIQUE558: 
	ret
	.cfi_endproc
.LFE18:
	.size	print_mem, .-print_mem
	.globl	insert_data_into_mem
	.type	insert_data_into_mem, @function
insert_data_into_mem:
.LFB19:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE559
NOP
NOP
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
NOP
NOP
.UNIQUE561: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE562: 
	movq	%rsi, -64(%rbp)
 jmp .UNIQUE563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE563: 
	movq	%rdx, -72(%rbp)
 jmp .UNIQUE564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE564: 
	movq	$0, -24(%rbp)
 jmp .UNIQUE565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE565: 
	movl	$0, -44(%rbp)
 jmp .UNIQUE566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE566: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE567: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE568: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE569: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE570: 
	jmp	.L60
.L65:
 jmp .UNIQUE571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE571: 
	cmpl	$0, -44(%rbp)
 jmp .UNIQUE572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE572: 
	je	.L61
 jmp .UNIQUE573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE573: 
	addq	$5, -40(%rbp)
 jmp .UNIQUE574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE574: 
	movl	$0, -44(%rbp)
 jmp .UNIQUE575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE575: 
	jmp	.L60
.L61:
 jmp .UNIQUE576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE576: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE577: 
	jmp	.L62
.L64:
 jmp .UNIQUE578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE578: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE579: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE580: 
	addq	%rdx, %rax
 jmp .UNIQUE581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE581: 
	movq	%rax, %rdx
 jmp .UNIQUE582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE582: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE583: 
	addq	%rax, %rdx
 jmp .UNIQUE584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE584: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE585: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE586: 
	addq	%rcx, %rax
 jmp .UNIQUE587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE587: 
	movq	%rax, %rcx
 jmp .UNIQUE588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE588: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE589: 
	addq	%rcx, %rax
 jmp .UNIQUE590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE590: 
	movzbl	(%rax), %eax
 jmp .UNIQUE591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE591: 
	movb	%al, (%rdx)
 jmp .UNIQUE592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE592: 
	addq	$1, -32(%rbp)
.L62:
 jmp .UNIQUE593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE593: 
	cmpq	$3, -32(%rbp)
 jmp .UNIQUE594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE594: 
	jg	.L63
 jmp .UNIQUE595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE595: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE596: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE597: 
	addq	%rdx, %rax
 jmp .UNIQUE598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE598: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE599: 
	jl	.L64
.L63:
 jmp .UNIQUE600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE600: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE601: 
	addq	%rax, -16(%rbp)
 jmp .UNIQUE602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE602: 
	addq	$1, -24(%rbp)
 jmp .UNIQUE603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE603: 
	addq	$4, -40(%rbp)
 jmp .UNIQUE604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE604: 
	movl	$1, -44(%rbp)
.L60:
 jmp .UNIQUE605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE605: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE606: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE607: 
	jl	.L65
 jmp .UNIQUE608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE608: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE609: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE610: 
	ret
	.cfi_endproc
.LFE19:
	.size	insert_data_into_mem, .-insert_data_into_mem
	.globl	get_secure_data
	.type	get_secure_data, @function
get_secure_data:
.LFB20:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE611: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE612: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE613: 
	movq	%rdi, -88(%rbp)
 jmp .UNIQUE614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE614: 
	movq	%rsi, -96(%rbp)
 jmp .UNIQUE615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE615: 
	movq	%rdx, -104(%rbp)
 jmp .UNIQUE616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE616: 
	movl	%ecx, -108(%rbp)
 jmp .UNIQUE617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE617: 
	movq	%r8, -120(%rbp)
 jmp .UNIQUE618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE618: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE619: 
	movl	$0, -68(%rbp)
 jmp .UNIQUE620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE620: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE621: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE622: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE623: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE624: 
	cmpl	$2, -108(%rbp)
 jmp .UNIQUE625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE625: 
	jne	.L68
 jmp .UNIQUE626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE626: 
	movq	$1, -24(%rbp)
 jmp .UNIQUE627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE627: 
	jmp	.L69
.L68:
 jmp .UNIQUE628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE628: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE629: 
	movq	%rax, -24(%rbp)
.L69:
 jmp .UNIQUE630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE630: 
	movq	$0, -64(%rbp)
 jmp .UNIQUE631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE631: 
	cmpl	$0, -108(%rbp)
 jmp .UNIQUE632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE632: 
	je	.L70
 jmp .UNIQUE633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE633: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE634: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE635: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE636: 
	testq	%rax, %rax
 jmp .UNIQUE637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE637: 
	cmovs	%rdx, %rax
 jmp .UNIQUE638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE638: 
	sarq	$2, %rax
 jmp .UNIQUE639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE639: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE640: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE641: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE642: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE643: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE644: 
	cmpq	%rax, %rdx
 jmp .UNIQUE645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE645: 
	jne	.L71
 jmp .UNIQUE646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE646: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE647: 
	movq	%rdx, %rax
 jmp .UNIQUE648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE648: 
	salq	$3, %rax
 jmp .UNIQUE649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE649: 
	addq	%rdx, %rax
 jmp .UNIQUE650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE650: 
	addq	%rax, -40(%rbp)
 jmp .UNIQUE651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE651: 
	jmp	.L70
.L71:
 jmp .UNIQUE652
NOP
NOP
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
NOP
NOP
.UNIQUE653: 
	movq	%rdx, %rax
 jmp .UNIQUE654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE654: 
	salq	$3, %rax
 jmp .UNIQUE655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE655: 
	addq	%rdx, %rax
 jmp .UNIQUE656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE656: 
	addq	%rax, -40(%rbp)
 jmp .UNIQUE657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE657: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE658: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE659: 
	movq	%rax, %rdx
 jmp .UNIQUE660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE660: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE661: 
	movl	$0, %eax
 jmp .UNIQUE662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE662: 
	subq	%rcx, %rax
 jmp .UNIQUE663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE663: 
	salq	$2, %rax
 jmp .UNIQUE664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE664: 
	addq	%rdx, %rax
 jmp .UNIQUE665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE665: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE666: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE667: 
	jmp	.L72
.L74:
 jmp .UNIQUE668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE668: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE669: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE670: 
	addq	%rdx, %rax
 jmp .UNIQUE671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE671: 
	movq	%rax, %rdx
 jmp .UNIQUE672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE672: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE673: 
	addq	%rax, %rdx
 jmp .UNIQUE674
NOP
NOP
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
NOP
NOP
.UNIQUE675: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE676: 
	addq	%rcx, %rax
 jmp .UNIQUE677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE677: 
	movq	%rax, %rcx
 jmp .UNIQUE678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE678: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE679: 
	addq	%rcx, %rax
 jmp .UNIQUE680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE680: 
	movzbl	(%rax), %eax
 jmp .UNIQUE681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE681: 
	movb	%al, (%rdx)
 jmp .UNIQUE682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE682: 
	addq	$1, -48(%rbp)
.L72:
 jmp .UNIQUE683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE683: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE684: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE685: 
	addq	%rdx, %rax
 jmp .UNIQUE686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE686: 
	cmpq	$3, %rax
 jmp .UNIQUE687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE687: 
	jg	.L73
 jmp .UNIQUE688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE688: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE689: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE690: 
	addq	%rdx, %rax
 jmp .UNIQUE691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE691: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE692: 
	jl	.L74
.L73:
 jmp .UNIQUE693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE693: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE694: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE695: 
	addq	$9, -40(%rbp)
 jmp .UNIQUE696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE696: 
	jmp	.L75
.L70:
 jmp .UNIQUE697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE697: 
	jmp	.L75
.L80:
 jmp .UNIQUE698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE698: 
	cmpl	$0, -68(%rbp)
 jmp .UNIQUE699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE699: 
	je	.L76
 jmp .UNIQUE700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE700: 
	addq	$5, -64(%rbp)
 jmp .UNIQUE701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE701: 
	movl	$0, -68(%rbp)
 jmp .UNIQUE702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE702: 
	jmp	.L75
.L76:
 jmp .UNIQUE703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE703: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE704: 
	jmp	.L77
.L79:
 jmp .UNIQUE705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE705: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE706: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE707: 
	addq	%rdx, %rax
 jmp .UNIQUE708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE708: 
	movq	%rax, %rdx
 jmp .UNIQUE709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE709: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE710: 
	addq	%rax, %rdx
 jmp .UNIQUE711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE711: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE712: 
	movq	-64(%rbp), %rcx
 jmp .UNIQUE713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE713: 
	addq	%rcx, %rax
 jmp .UNIQUE714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE714: 
	movq	%rax, %rcx
 jmp .UNIQUE715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE715: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE716: 
	addq	%rcx, %rax
 jmp .UNIQUE717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE717: 
	movzbl	(%rax), %eax
 jmp .UNIQUE718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE718: 
	movb	%al, (%rdx)
 jmp .UNIQUE719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE719: 
	addq	$1, -56(%rbp)
.L77:
 jmp .UNIQUE720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE720: 
	cmpq	$3, -56(%rbp)
 jmp .UNIQUE721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE721: 
	jg	.L78
 jmp .UNIQUE722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE722: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE723: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE724: 
	addq	%rdx, %rax
 jmp .UNIQUE725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE725: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE726: 
	jl	.L79
.L78:
 jmp .UNIQUE727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE727: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE728: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE729: 
	addq	$4, -64(%rbp)
 jmp .UNIQUE730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE730: 
	movl	$1, -68(%rbp)
.L75:
 jmp .UNIQUE731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE731: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE732: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE733: 
	jl	.L80
 jmp .UNIQUE734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE734: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE735: 
	ret
	.cfi_endproc
.LFE20:
	.size	get_secure_data, .-get_secure_data
	.globl	set_secure_data
	.type	set_secure_data, @function
set_secure_data:
.LFB21:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE736: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE737: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE738: 
	movq	%rdi, -88(%rbp)
 jmp .UNIQUE739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE739: 
	movq	%rsi, -96(%rbp)
 jmp .UNIQUE740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE740: 
	movq	%rdx, -104(%rbp)
 jmp .UNIQUE741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE741: 
	movl	%ecx, -108(%rbp)
 jmp .UNIQUE742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE742: 
	movq	%r8, -120(%rbp)
 jmp .UNIQUE743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE743: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE744: 
	movl	$0, -68(%rbp)
 jmp .UNIQUE745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE745: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE746: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE747: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE748: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE749: 
	cmpl	$2, -108(%rbp)
 jmp .UNIQUE750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE750: 
	jne	.L82
 jmp .UNIQUE751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE751: 
	movq	$1, -24(%rbp)
 jmp .UNIQUE752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE752: 
	jmp	.L83
.L82:
 jmp .UNIQUE753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE753: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE754: 
	movq	%rax, -24(%rbp)
.L83:
 jmp .UNIQUE755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE755: 
	movq	$0, -64(%rbp)
 jmp .UNIQUE756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE756: 
	cmpl	$0, -108(%rbp)
 jmp .UNIQUE757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE757: 
	je	.L84
 jmp .UNIQUE758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE758: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE759: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE760: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE761: 
	testq	%rax, %rax
 jmp .UNIQUE762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE762: 
	cmovs	%rdx, %rax
 jmp .UNIQUE763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE763: 
	sarq	$2, %rax
 jmp .UNIQUE764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE764: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE765: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE766: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE767
NOP
NOP
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
NOP
NOP
.UNIQUE768: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE769: 
	cmpq	%rax, %rdx
 jmp .UNIQUE770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE770: 
	jne	.L85
 jmp .UNIQUE771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE771: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE772: 
	movq	%rdx, %rax
 jmp .UNIQUE773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE773: 
	salq	$3, %rax
 jmp .UNIQUE774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE774: 
	addq	%rdx, %rax
 jmp .UNIQUE775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE775: 
	addq	%rax, -40(%rbp)
 jmp .UNIQUE776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE776: 
	jmp	.L84
.L85:
 jmp .UNIQUE777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE777: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE778: 
	movq	%rdx, %rax
 jmp .UNIQUE779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE779: 
	salq	$3, %rax
 jmp .UNIQUE780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE780: 
	addq	%rdx, %rax
 jmp .UNIQUE781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE781: 
	addq	%rax, -40(%rbp)
 jmp .UNIQUE782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE782: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE783: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE784: 
	movq	%rax, %rdx
 jmp .UNIQUE785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE785: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE786: 
	movl	$0, %eax
 jmp .UNIQUE787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE787: 
	subq	%rcx, %rax
 jmp .UNIQUE788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE788: 
	salq	$2, %rax
 jmp .UNIQUE789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE789: 
	addq	%rdx, %rax
 jmp .UNIQUE790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE790: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE791: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE792: 
	jmp	.L86
.L88:
 jmp .UNIQUE793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE793: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE794: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE795: 
	addq	%rdx, %rax
 jmp .UNIQUE796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE796: 
	movq	%rax, %rdx
 jmp .UNIQUE797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE797: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE798: 
	addq	%rax, %rdx
 jmp .UNIQUE799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE799: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE800: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE801: 
	addq	%rcx, %rax
 jmp .UNIQUE802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE802: 
	movq	%rax, %rcx
 jmp .UNIQUE803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE803: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE804: 
	addq	%rcx, %rax
 jmp .UNIQUE805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE805: 
	movzbl	(%rax), %eax
 jmp .UNIQUE806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE806: 
	movb	%al, (%rdx)
 jmp .UNIQUE807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE807: 
	addq	$1, -48(%rbp)
.L86:
 jmp .UNIQUE808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE808: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE809: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE810: 
	addq	%rdx, %rax
 jmp .UNIQUE811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE811: 
	cmpq	$3, %rax
 jmp .UNIQUE812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE812: 
	jg	.L87
 jmp .UNIQUE813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE813: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE814: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE815: 
	addq	%rdx, %rax
 jmp .UNIQUE816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE816: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE817: 
	jl	.L88
.L87:
 jmp .UNIQUE818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE818: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE819: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE820: 
	addq	$9, -40(%rbp)
 jmp .UNIQUE821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE821: 
	jmp	.L89
.L84:
 jmp .UNIQUE822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE822: 
	jmp	.L89
.L94:
 jmp .UNIQUE823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE823: 
	cmpl	$0, -68(%rbp)
 jmp .UNIQUE824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE824: 
	je	.L90
 jmp .UNIQUE825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE825: 
	addq	$5, -64(%rbp)
 jmp .UNIQUE826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE826: 
	movl	$0, -68(%rbp)
 jmp .UNIQUE827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE827: 
	jmp	.L89
.L90:
 jmp .UNIQUE828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE828: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE829: 
	jmp	.L91
.L93:
 jmp .UNIQUE830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE830: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE831: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE832: 
	addq	%rdx, %rax
 jmp .UNIQUE833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE833: 
	movq	%rax, %rdx
 jmp .UNIQUE834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE834: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE835: 
	addq	%rax, %rdx
 jmp .UNIQUE836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE836: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE837: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE838: 
	addq	%rcx, %rax
 jmp .UNIQUE839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE839: 
	movq	%rax, %rcx
 jmp .UNIQUE840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE840: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE841: 
	addq	%rcx, %rax
 jmp .UNIQUE842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE842: 
	movzbl	(%rax), %eax
 jmp .UNIQUE843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE843: 
	movb	%al, (%rdx)
 jmp .UNIQUE844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE844: 
	addq	$1, -56(%rbp)
.L91:
 jmp .UNIQUE845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE845: 
	cmpq	$3, -56(%rbp)
 jmp .UNIQUE846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE846: 
	jg	.L92
 jmp .UNIQUE847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE847: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE848: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE849: 
	addq	%rdx, %rax
 jmp .UNIQUE850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE850: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE851: 
	jl	.L93
.L92:
 jmp .UNIQUE852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE852: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE853: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE854: 
	addq	$4, -64(%rbp)
 jmp .UNIQUE855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE855: 
	movl	$1, -68(%rbp)
.L89:
 jmp .UNIQUE856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE856: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE857: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE858: 
	jl	.L94
 jmp .UNIQUE859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE859: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE860: 
	ret
	.cfi_endproc
.LFE21:
	.size	set_secure_data, .-set_secure_data
	.section	.rodata
.LC11:
	.string	"rb"
.LC12:
	.string	"heap_keyshares"
	.align 8
.LC13:
	.string	"init_mem:heap_keyshares file error\n"
	.text
	.globl	init_mem
	.type	init_mem, @function
init_mem:
.LFB22:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE861: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE862: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE863: 
	subq	$16, %rsp
 jmp .UNIQUE864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE864: 
	movl	$0, %edi
 jmp .UNIQUE865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE865: 
	call	time
 jmp .UNIQUE866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE866: 
	movl	%eax, %edi
 jmp .UNIQUE867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE867: 
	call	srand
 jmp .UNIQUE868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE868: 
	movl	$0, %eax
 jmp .UNIQUE869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE869: 
	call	allocate_mem
 jmp .UNIQUE870
NOP
NOP
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
NOP
NOP
.UNIQUE871: 
	movl	$.LC11, %esi
 jmp .UNIQUE872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE872: 
	movl	$.LC12, %edi
 jmp .UNIQUE873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE873: 
	call	fopen
 jmp .UNIQUE874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE874: 
	movq	%rax, keyshare_input_file(%rip)
 jmp .UNIQUE875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE875: 
	movq	keyshare_input_file(%rip), %rax
 jmp .UNIQUE876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE876: 
	testq	%rax, %rax
 jmp .UNIQUE877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE877: 
	jne	.L96
 jmp .UNIQUE878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE878: 
	movl	$.LC13, %edi
 jmp .UNIQUE879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE879: 
	call	perror
 jmp .UNIQUE880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE880: 
	movl	$43, %edi
 jmp .UNIQUE881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE881: 
	call	exit
.L96:
 jmp .UNIQUE882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE882: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE883: 
	movq	%rax, %rdi
 jmp .UNIQUE884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE884: 
	call	insert_keys_into_mem
 jmp .UNIQUE885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE885: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE886: 
	movq	%rax, entire_memory_chunk(%rip)
 jmp .UNIQUE887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE887: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE888: 
	movq	%rax, last_unused_memory(%rip)
 jmp .UNIQUE889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE889: 
	movq	keyshare_input_file(%rip), %rax
 jmp .UNIQUE890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE890: 
	movq	%rax, %rdi
 jmp .UNIQUE891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE891: 
	call	fclose
 jmp .UNIQUE892
NOP
NOP
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
NOP
NOP
.UNIQUE893: 
	call	init_memory_manager
 jmp .UNIQUE894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE894: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE895
NOP
NOP
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
NOP
NOP
.UNIQUE896: 
	ret
	.cfi_endproc
.LFE22:
	.size	init_mem, .-init_mem
	.globl	free_secure_mem
	.type	free_secure_mem, @function
free_secure_mem:
.LFB23:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE897
NOP
NOP
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
NOP
NOP
.UNIQUE899: 
	subq	$16, %rsp
 jmp .UNIQUE900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE900: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE901: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE902: 
	movq	%rax, %rdi
 jmp .UNIQUE903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE903: 
	call	free
 jmp .UNIQUE904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE904: 
	movl	$0, %eax
 jmp .UNIQUE905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE905: 
	call	free_memory_manager_structures
 jmp .UNIQUE906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE906: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE907: 
	ret
	.cfi_endproc
.LFE23:
	.size	free_secure_mem, .-free_secure_mem
	.globl	get_char
	.type	get_char, @function
get_char:
.LFB24:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE908: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE909: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE910: 
	subq	$24, %rsp
 jmp .UNIQUE911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE911: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE912: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE913: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE914: 
	movl	$0, %r8d
 jmp .UNIQUE915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE915: 
	movl	$0, %ecx
 jmp .UNIQUE916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE916: 
	movl	$1, %esi
 jmp .UNIQUE917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE917: 
	movq	%rax, %rdi
 jmp .UNIQUE918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE918: 
	call	get_secure_data
 jmp .UNIQUE919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE919: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE920: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE921: 
	ret
	.cfi_endproc
.LFE24:
	.size	get_char, .-get_char
	.globl	get_int
	.type	get_int, @function
get_int:
.LFB25:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE922: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE923: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE924: 
	subq	$24, %rsp
 jmp .UNIQUE925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE925: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE926: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE927: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE928: 
	movl	$0, %r8d
 jmp .UNIQUE929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE929: 
	movl	$0, %ecx
 jmp .UNIQUE930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE930: 
	movl	$4, %esi
 jmp .UNIQUE931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE931: 
	movq	%rax, %rdi
 jmp .UNIQUE932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE932: 
	call	get_secure_data
 jmp .UNIQUE933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE933: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE934: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE935: 
	ret
	.cfi_endproc
.LFE25:
	.size	get_int, .-get_int
	.globl	get_long_int
	.type	get_long_int, @function
get_long_int:
.LFB26:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE936: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE937: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE938: 
	subq	$24, %rsp
 jmp .UNIQUE939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE939: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE940: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE941: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE942: 
	movl	$0, %r8d
 jmp .UNIQUE943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE943: 
	movl	$0, %ecx
 jmp .UNIQUE944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE944: 
	movl	$8, %esi
 jmp .UNIQUE945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE945: 
	movq	%rax, %rdi
 jmp .UNIQUE946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE946: 
	call	get_secure_data
 jmp .UNIQUE947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE947: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE948: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE949: 
	ret
	.cfi_endproc
.LFE26:
	.size	get_long_int, .-get_long_int
	.globl	get_pointer
	.type	get_pointer, @function
get_pointer:
.LFB27:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE950: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE951: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE952: 
	subq	$24, %rsp
 jmp .UNIQUE953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE953: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE954: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE955: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE956: 
	movl	$0, %r8d
 jmp .UNIQUE957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE957: 
	movl	$0, %ecx
 jmp .UNIQUE958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE958: 
	movl	$8, %esi
 jmp .UNIQUE959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE959: 
	movq	%rax, %rdi
 jmp .UNIQUE960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE960: 
	call	get_secure_data
 jmp .UNIQUE961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE961: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE962: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE963: 
	ret
	.cfi_endproc
.LFE27:
	.size	get_pointer, .-get_pointer
	.globl	get_float
	.type	get_float, @function
get_float:
.LFB28:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE964: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE965: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE966: 
	subq	$32, %rsp
 jmp .UNIQUE967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE967: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE968: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE969: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE970: 
	movl	$0, %r8d
 jmp .UNIQUE971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE971: 
	movl	$0, %ecx
 jmp .UNIQUE972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE972: 
	movl	$4, %esi
 jmp .UNIQUE973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE973: 
	movq	%rax, %rdi
 jmp .UNIQUE974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE974: 
	call	get_secure_data
 jmp .UNIQUE975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE975: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE976: 
	movl	%eax, -28(%rbp)
 jmp .UNIQUE977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE977: 
	movss	-28(%rbp), %xmm0
 jmp .UNIQUE978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE978: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE979: 
	ret
	.cfi_endproc
.LFE28:
	.size	get_float, .-get_float
	.globl	get_double
	.type	get_double, @function
get_double:
.LFB29:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE980: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE981: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE982: 
	subq	$32, %rsp
 jmp .UNIQUE983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE983: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE984: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE985: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE986: 
	movl	$0, %r8d
 jmp .UNIQUE987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE987: 
	movl	$0, %ecx
 jmp .UNIQUE988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE988: 
	movl	$8, %esi
 jmp .UNIQUE989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE989: 
	movq	%rax, %rdi
 jmp .UNIQUE990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE990: 
	call	get_secure_data
 jmp .UNIQUE991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE991: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE992: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE993: 
	movsd	-32(%rbp), %xmm0
 jmp .UNIQUE994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE994: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE995: 
	ret
	.cfi_endproc
.LFE29:
	.size	get_double, .-get_double
	.globl	get_array_element
	.type	get_array_element, @function
get_array_element:
.LFB30:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE996: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE997: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE998: 
	subq	$32, %rsp
 jmp .UNIQUE999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE999: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1000: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1001: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE1002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1002: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE1003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1003: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE1004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1004: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1005: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE1006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1006: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1007: 
	movq	%rcx, %r8
 jmp .UNIQUE1008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1008: 
	movl	$1, %ecx
 jmp .UNIQUE1009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1009: 
	movq	%rax, %rdi
 jmp .UNIQUE1010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1010: 
	call	get_secure_data
 jmp .UNIQUE1011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1011: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1012: 
	ret
	.cfi_endproc
.LFE30:
	.size	get_array_element, .-get_array_element
	.globl	get_char_array_element
	.type	get_char_array_element, @function
get_char_array_element:
.LFB31:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1013: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1014: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1015: 
	subq	$32, %rsp
 jmp .UNIQUE1016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1016: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1017: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1018: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1019: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1020: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE1021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1021: 
	movq	%rcx, %r8
 jmp .UNIQUE1022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1022: 
	movl	$1, %ecx
 jmp .UNIQUE1023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1023: 
	movl	$1, %esi
 jmp .UNIQUE1024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1024: 
	movq	%rax, %rdi
 jmp .UNIQUE1025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1025: 
	call	get_secure_data
 jmp .UNIQUE1026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1026: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE1027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1027: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1028: 
	ret
	.cfi_endproc
.LFE31:
	.size	get_char_array_element, .-get_char_array_element
	.globl	get_int_array_element
	.type	get_int_array_element, @function
get_int_array_element:
.LFB32:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1029: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1030: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1031: 
	subq	$32, %rsp
 jmp .UNIQUE1032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1032: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1033: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1034: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1035: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1036: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1037: 
	movq	%rcx, %r8
 jmp .UNIQUE1038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1038: 
	movl	$1, %ecx
 jmp .UNIQUE1039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1039: 
	movl	$4, %esi
 jmp .UNIQUE1040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1040: 
	movq	%rax, %rdi
 jmp .UNIQUE1041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1041: 
	call	get_secure_data
 jmp .UNIQUE1042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1042: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE1043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1043: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1044: 
	ret
	.cfi_endproc
.LFE32:
	.size	get_int_array_element, .-get_int_array_element
	.globl	get_long_int_array_element
	.type	get_long_int_array_element, @function
get_long_int_array_element:
.LFB33:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1045: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1046: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1047: 
	subq	$32, %rsp
 jmp .UNIQUE1048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1048: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1049: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1050: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1051: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1052: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1053: 
	movq	%rcx, %r8
 jmp .UNIQUE1054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1054: 
	movl	$1, %ecx
 jmp .UNIQUE1055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1055: 
	movl	$8, %esi
 jmp .UNIQUE1056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1056: 
	movq	%rax, %rdi
 jmp .UNIQUE1057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1057: 
	call	get_secure_data
 jmp .UNIQUE1058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1058: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1059: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1060: 
	ret
	.cfi_endproc
.LFE33:
	.size	get_long_int_array_element, .-get_long_int_array_element
	.globl	get_pointer_array_element
	.type	get_pointer_array_element, @function
get_pointer_array_element:
.LFB34:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1061: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1062: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1063: 
	subq	$32, %rsp
 jmp .UNIQUE1064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1064: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1065: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1066: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1067: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1068: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1069: 
	movq	%rcx, %r8
 jmp .UNIQUE1070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1070: 
	movl	$1, %ecx
 jmp .UNIQUE1071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1071: 
	movl	$8, %esi
 jmp .UNIQUE1072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1072: 
	movq	%rax, %rdi
 jmp .UNIQUE1073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1073: 
	call	get_secure_data
 jmp .UNIQUE1074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1074: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1075: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1076: 
	ret
	.cfi_endproc
.LFE34:
	.size	get_pointer_array_element, .-get_pointer_array_element
	.globl	get_float_array_element
	.type	get_float_array_element, @function
get_float_array_element:
.LFB35:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1077: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1078: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1079: 
	subq	$40, %rsp
 jmp .UNIQUE1080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1080: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1081: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1082: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1083: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1084: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1085: 
	movq	%rcx, %r8
 jmp .UNIQUE1086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1086: 
	movl	$1, %ecx
 jmp .UNIQUE1087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1087: 
	movl	$4, %esi
 jmp .UNIQUE1088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1088: 
	movq	%rax, %rdi
 jmp .UNIQUE1089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1089: 
	call	get_secure_data
 jmp .UNIQUE1090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1090: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE1091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1091: 
	movl	%eax, -36(%rbp)
 jmp .UNIQUE1092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1092: 
	movss	-36(%rbp), %xmm0
 jmp .UNIQUE1093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1093: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1094: 
	ret
	.cfi_endproc
.LFE35:
	.size	get_float_array_element, .-get_float_array_element
	.globl	get_double_array_element
	.type	get_double_array_element, @function
get_double_array_element:
.LFB36:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1095: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1096: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1097: 
	subq	$40, %rsp
 jmp .UNIQUE1098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1098: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1099: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1100: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1101: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1102: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1103: 
	movq	%rcx, %r8
 jmp .UNIQUE1104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1104: 
	movl	$1, %ecx
 jmp .UNIQUE1105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1105: 
	movl	$8, %esi
 jmp .UNIQUE1106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1106: 
	movq	%rax, %rdi
 jmp .UNIQUE1107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1107: 
	call	get_secure_data
 jmp .UNIQUE1108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1108: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1109: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE1110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1110: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE1111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1111: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1112: 
	ret
	.cfi_endproc
.LFE36:
	.size	get_double_array_element, .-get_double_array_element
	.globl	get_arbitrary_block_in_heap
	.type	get_arbitrary_block_in_heap, @function
get_arbitrary_block_in_heap:
.LFB37:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1113: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1114: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1115: 
	subq	$24, %rsp
 jmp .UNIQUE1116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1116: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1117: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1118: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE1119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1119: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1120: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE1121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1121: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1122: 
	movl	$0, %r8d
 jmp .UNIQUE1123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1123: 
	movl	$0, %ecx
 jmp .UNIQUE1124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1124: 
	movq	%rax, %rdi
 jmp .UNIQUE1125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1125: 
	call	get_secure_data
 jmp .UNIQUE1126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1126: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1127: 
	ret
	.cfi_endproc
.LFE37:
	.size	get_arbitrary_block_in_heap, .-get_arbitrary_block_in_heap
	.globl	get_arbitrary_block_in_heap_with_offset
	.type	get_arbitrary_block_in_heap_with_offset, @function
get_arbitrary_block_in_heap_with_offset:
.LFB38:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1128: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1129: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1130: 
	subq	$32, %rsp
 jmp .UNIQUE1131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1131: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1132: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1133: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE1134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1134: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE1135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1135: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE1136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1136: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1137: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE1138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1138: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1139: 
	movq	%rcx, %r8
 jmp .UNIQUE1140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1140: 
	movl	$2, %ecx
 jmp .UNIQUE1141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1141: 
	movq	%rax, %rdi
 jmp .UNIQUE1142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1142: 
	call	get_secure_data
 jmp .UNIQUE1143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1143: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1144: 
	ret
	.cfi_endproc
.LFE38:
	.size	get_arbitrary_block_in_heap_with_offset, .-get_arbitrary_block_in_heap_with_offset
	.globl	set_char
	.type	set_char, @function
set_char:
.LFB39:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1145: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1146: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1147: 
	subq	$16, %rsp
 jmp .UNIQUE1148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1148: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1149: 
	movl	%esi, %eax
 jmp .UNIQUE1150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1150: 
	movb	%al, -12(%rbp)
 jmp .UNIQUE1151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1151: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1152: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE1153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1153: 
	movq	%rax, %rsi
 jmp .UNIQUE1154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1154: 
	movl	$1, %edi
 jmp .UNIQUE1155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1155: 
	call	insert_data_into_mem
 jmp .UNIQUE1156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1156: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1157: 
	ret
	.cfi_endproc
.LFE39:
	.size	set_char, .-set_char
	.globl	set_int
	.type	set_int, @function
set_int:
.LFB40:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1158: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1159: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1160: 
	subq	$16, %rsp
 jmp .UNIQUE1161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1161: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1162: 
	movl	%esi, -12(%rbp)
 jmp .UNIQUE1163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1163: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1164: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE1165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1165: 
	movq	%rax, %rsi
 jmp .UNIQUE1166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1166: 
	movl	$4, %edi
 jmp .UNIQUE1167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1167: 
	call	insert_data_into_mem
 jmp .UNIQUE1168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1168: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1169: 
	ret
	.cfi_endproc
.LFE40:
	.size	set_int, .-set_int
	.globl	set_long_int
	.type	set_long_int, @function
set_long_int:
.LFB41:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1170: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1171: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1172: 
	subq	$16, %rsp
 jmp .UNIQUE1173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1173: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1174: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1175: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1176: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1177: 
	movq	%rax, %rsi
 jmp .UNIQUE1178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1178: 
	movl	$8, %edi
 jmp .UNIQUE1179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1179: 
	call	insert_data_into_mem
 jmp .UNIQUE1180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1180: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1181: 
	ret
	.cfi_endproc
.LFE41:
	.size	set_long_int, .-set_long_int
	.globl	set_pointer
	.type	set_pointer, @function
set_pointer:
.LFB42:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1182: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1183: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1184: 
	subq	$16, %rsp
 jmp .UNIQUE1185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1185: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1186: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1187: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1188: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1189: 
	movq	%rax, %rsi
 jmp .UNIQUE1190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1190: 
	movl	$8, %edi
 jmp .UNIQUE1191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1191: 
	call	insert_data_into_mem
 jmp .UNIQUE1192
NOP
NOP
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
NOP
NOP
.UNIQUE1193: 
	ret
	.cfi_endproc
.LFE42:
	.size	set_pointer, .-set_pointer
	.globl	set_float
	.type	set_float, @function
set_float:
.LFB43:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1194
NOP
NOP
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
NOP
NOP
.UNIQUE1196: 
	subq	$16, %rsp
 jmp .UNIQUE1197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1197: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1198: 
	movss	%xmm0, -12(%rbp)
 jmp .UNIQUE1199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1199: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1200: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE1201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1201: 
	movq	%rax, %rsi
 jmp .UNIQUE1202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1202: 
	movl	$4, %edi
 jmp .UNIQUE1203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1203: 
	call	insert_data_into_mem
 jmp .UNIQUE1204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1204: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1205: 
	ret
	.cfi_endproc
.LFE43:
	.size	set_float, .-set_float
	.globl	set_double
	.type	set_double, @function
set_double:
.LFB44:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1206: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1207: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1208: 
	subq	$16, %rsp
 jmp .UNIQUE1209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1209: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1210: 
	movsd	%xmm0, -16(%rbp)
 jmp .UNIQUE1211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1211: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1212: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1213: 
	movq	%rax, %rsi
 jmp .UNIQUE1214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1214: 
	movl	$8, %edi
 jmp .UNIQUE1215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1215: 
	call	insert_data_into_mem
 jmp .UNIQUE1216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1216: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1217: 
	ret
	.cfi_endproc
.LFE44:
	.size	set_double, .-set_double
	.globl	set_array_element
	.type	set_array_element, @function
set_array_element:
.LFB45:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1218: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1219: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1220: 
	subq	$32, %rsp
 jmp .UNIQUE1221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1221: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1222: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1223: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE1224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1224: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE1225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1225: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE1226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1226: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1227: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE1228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1228: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1229: 
	movq	%rcx, %r8
 jmp .UNIQUE1230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1230: 
	movl	$1, %ecx
 jmp .UNIQUE1231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1231: 
	movq	%rax, %rdi
 jmp .UNIQUE1232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1232: 
	call	set_secure_data
 jmp .UNIQUE1233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1233: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1234: 
	ret
	.cfi_endproc
.LFE45:
	.size	set_array_element, .-set_array_element
	.globl	set_char_array_element
	.type	set_char_array_element, @function
set_char_array_element:
.LFB46:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1235: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1236: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1237: 
	subq	$40, %rsp
 jmp .UNIQUE1238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1238: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1239: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1240: 
	movl	%edx, %eax
 jmp .UNIQUE1241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1241: 
	movb	%al, -36(%rbp)
 jmp .UNIQUE1242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1242: 
	movzbl	-36(%rbp), %eax
 jmp .UNIQUE1243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1243: 
	movb	%al, -1(%rbp)
 jmp .UNIQUE1244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1244: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1245: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1246: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE1247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1247: 
	movq	%rcx, %r8
 jmp .UNIQUE1248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1248: 
	movl	$1, %ecx
 jmp .UNIQUE1249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1249: 
	movl	$1, %esi
 jmp .UNIQUE1250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1250: 
	movq	%rax, %rdi
 jmp .UNIQUE1251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1251: 
	call	set_secure_data
 jmp .UNIQUE1252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1252: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1253: 
	ret
	.cfi_endproc
.LFE46:
	.size	set_char_array_element, .-set_char_array_element
	.globl	set_int_array_element
	.type	set_int_array_element, @function
set_int_array_element:
.LFB47:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1254: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1255: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1256: 
	subq	$40, %rsp
 jmp .UNIQUE1257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1257: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1258: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1259: 
	movl	%edx, -36(%rbp)
 jmp .UNIQUE1260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1260: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE1261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1261: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE1262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1262: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1263: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1264: 
	leaq	-4(%rbp), %rax
 jmp .UNIQUE1265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1265: 
	movq	%rcx, %r8
 jmp .UNIQUE1266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1266: 
	movl	$1, %ecx
 jmp .UNIQUE1267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1267: 
	movl	$4, %esi
 jmp .UNIQUE1268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1268: 
	movq	%rax, %rdi
 jmp .UNIQUE1269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1269: 
	call	set_secure_data
 jmp .UNIQUE1270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1270: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1271: 
	ret
	.cfi_endproc
.LFE47:
	.size	set_int_array_element, .-set_int_array_element
	.globl	set_long_int_array_element
	.type	set_long_int_array_element, @function
set_long_int_array_element:
.LFB48:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1272: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1273: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1274: 
	subq	$40, %rsp
 jmp .UNIQUE1275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1275: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1276: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1277: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE1278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1278: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1279: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1280: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1281: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1282: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE1283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1283: 
	movq	%rcx, %r8
 jmp .UNIQUE1284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1284: 
	movl	$1, %ecx
 jmp .UNIQUE1285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1285: 
	movl	$8, %esi
 jmp .UNIQUE1286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1286: 
	movq	%rax, %rdi
 jmp .UNIQUE1287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1287: 
	call	set_secure_data
 jmp .UNIQUE1288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1288: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1289: 
	ret
	.cfi_endproc
.LFE48:
	.size	set_long_int_array_element, .-set_long_int_array_element
	.globl	set_pointer_array_element
	.type	set_pointer_array_element, @function
set_pointer_array_element:
.LFB49:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1290: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1291: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1292: 
	subq	$40, %rsp
 jmp .UNIQUE1293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1293: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1294: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1295: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE1296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1296: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1297: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1298: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1299: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1300: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE1301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1301: 
	movq	%rcx, %r8
 jmp .UNIQUE1302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1302: 
	movl	$1, %ecx
 jmp .UNIQUE1303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1303: 
	movl	$8, %esi
 jmp .UNIQUE1304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1304: 
	movq	%rax, %rdi
 jmp .UNIQUE1305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1305: 
	call	set_secure_data
 jmp .UNIQUE1306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1306: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1307: 
	ret
	.cfi_endproc
.LFE49:
	.size	set_pointer_array_element, .-set_pointer_array_element
	.globl	set_float_array_element
	.type	set_float_array_element, @function
set_float_array_element:
.LFB50:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1308: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1309: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1310: 
	subq	$40, %rsp
 jmp .UNIQUE1311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1311: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1312: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1313: 
	movss	%xmm0, -36(%rbp)
 jmp .UNIQUE1314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1314: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE1315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1315: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE1316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1316: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1317: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1318: 
	leaq	-4(%rbp), %rax
 jmp .UNIQUE1319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1319: 
	movq	%rcx, %r8
 jmp .UNIQUE1320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1320: 
	movl	$1, %ecx
 jmp .UNIQUE1321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1321: 
	movl	$4, %esi
 jmp .UNIQUE1322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1322: 
	movq	%rax, %rdi
 jmp .UNIQUE1323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1323: 
	call	set_secure_data
 jmp .UNIQUE1324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1324: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1325: 
	ret
	.cfi_endproc
.LFE50:
	.size	set_float_array_element, .-set_float_array_element
	.globl	set_double_array_element
	.type	set_double_array_element, @function
set_double_array_element:
.LFB51:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1326: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1327: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1328: 
	subq	$40, %rsp
 jmp .UNIQUE1329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1329: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1330: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1331: 
	movsd	%xmm0, -40(%rbp)
 jmp .UNIQUE1332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1332: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1333: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1334: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1335: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1336: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE1337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1337: 
	movq	%rcx, %r8
 jmp .UNIQUE1338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1338: 
	movl	$1, %ecx
 jmp .UNIQUE1339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1339: 
	movl	$8, %esi
 jmp .UNIQUE1340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1340: 
	movq	%rax, %rdi
 jmp .UNIQUE1341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1341: 
	call	set_secure_data
 jmp .UNIQUE1342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1342: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1343: 
	ret
	.cfi_endproc
.LFE51:
	.size	set_double_array_element, .-set_double_array_element
	.globl	set_arbitrary_block_in_heap
	.type	set_arbitrary_block_in_heap, @function
set_arbitrary_block_in_heap:
.LFB52:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1344: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1345: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1346: 
	subq	$24, %rsp
 jmp .UNIQUE1347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1347: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1348: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1349: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE1350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1350: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1351: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE1352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1352: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1353: 
	movl	$0, %r8d
 jmp .UNIQUE1354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1354: 
	movl	$0, %ecx
 jmp .UNIQUE1355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1355: 
	movq	%rax, %rdi
 jmp .UNIQUE1356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1356: 
	call	set_secure_data
 jmp .UNIQUE1357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1357: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1358: 
	ret
	.cfi_endproc
.LFE52:
	.size	set_arbitrary_block_in_heap, .-set_arbitrary_block_in_heap
	.globl	set_arbitrary_block_in_heap_with_offset
	.type	set_arbitrary_block_in_heap_with_offset, @function
set_arbitrary_block_in_heap_with_offset:
.LFB53:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1359: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1360: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1361: 
	subq	$32, %rsp
 jmp .UNIQUE1362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1362: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1363: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1364: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE1365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1365: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE1366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1366: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE1367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1367: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1368: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE1369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1369: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1370: 
	movq	%rcx, %r8
 jmp .UNIQUE1371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1371: 
	movl	$2, %ecx
 jmp .UNIQUE1372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1372: 
	movq	%rax, %rdi
 jmp .UNIQUE1373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1373: 
	call	set_secure_data
 jmp .UNIQUE1374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1374: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1375: 
	ret
	.cfi_endproc
.LFE53:
	.size	set_arbitrary_block_in_heap_with_offset, .-set_arbitrary_block_in_heap_with_offset
	.globl	find_large_enough_free_group
	.type	find_large_enough_free_group, @function
find_large_enough_free_group:
.LFB54:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1376: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1377: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1378: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1379: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1380: 
	testq	%rax, %rax
 jmp .UNIQUE1381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1381: 
	jne	.L142
 jmp .UNIQUE1382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1382: 
	movl	$0, %eax
 jmp .UNIQUE1383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1383: 
	jmp	.L143
.L142:
 jmp .UNIQUE1384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1384: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1385: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1386: 
	jmp	.L144
.L146:
 jmp .UNIQUE1387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1387: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1388: 
	movq	(%rax), %rax
 jmp .UNIQUE1389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1389: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE1390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1390: 
	jl	.L145
 jmp .UNIQUE1391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1391: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1392: 
	jmp	.L143
.L145:
 jmp .UNIQUE1393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1393: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1394: 
	movq	16(%rax), %rax
 jmp .UNIQUE1395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1395: 
	movq	%rax, -8(%rbp)
.L144:
 jmp .UNIQUE1396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1396: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1397: 
	jne	.L146
 jmp .UNIQUE1398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1398: 
	movl	$0, %eax
.L143:
 jmp .UNIQUE1399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1399: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1400: 
	ret
	.cfi_endproc
.LFE54:
	.size	find_large_enough_free_group, .-find_large_enough_free_group
	.globl	find_which_group_to_free
	.type	find_which_group_to_free, @function
find_which_group_to_free:
.LFB55:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1401: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1402: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1403: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1404: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE1405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1405: 
	testq	%rax, %rax
 jmp .UNIQUE1406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1406: 
	jne	.L148
 jmp .UNIQUE1407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1407: 
	movl	$0, %eax
 jmp .UNIQUE1408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1408: 
	jmp	.L149
.L148:
 jmp .UNIQUE1409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1409: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE1410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1410: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1411: 
	jmp	.L150
.L152:
 jmp .UNIQUE1412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1412: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1413: 
	movq	8(%rax), %rax
 jmp .UNIQUE1414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1414: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE1415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1415: 
	jne	.L151
 jmp .UNIQUE1416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1416: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1417: 
	jmp	.L149
.L151:
 jmp .UNIQUE1418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1418: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1419: 
	movq	16(%rax), %rax
 jmp .UNIQUE1420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1420: 
	movq	%rax, -8(%rbp)
.L150:
 jmp .UNIQUE1421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1421: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1422: 
	jne	.L152
 jmp .UNIQUE1423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1423: 
	movl	$0, %eax
.L149:
 jmp .UNIQUE1424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1424: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1425: 
	ret
	.cfi_endproc
.LFE55:
	.size	find_which_group_to_free, .-find_which_group_to_free
	.globl	check_and_merge
	.type	check_and_merge, @function
check_and_merge:
.LFB56:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1426: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1427: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1428: 
	subq	$48, %rsp
 jmp .UNIQUE1429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1429: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1430: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1431: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE1432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1432: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1433: 
	movq	8(%rax), %rax
 jmp .UNIQUE1434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1434: 
	movq	%rax, %rcx
 jmp .UNIQUE1435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1435: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1436: 
	movq	(%rax), %rdx
 jmp .UNIQUE1437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1437: 
	movq	%rdx, %rax
 jmp .UNIQUE1438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1438: 
	salq	$3, %rax
 jmp .UNIQUE1439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1439: 
	addq	%rdx, %rax
 jmp .UNIQUE1440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1440: 
	leaq	(%rcx,%rax), %rdx
 jmp .UNIQUE1441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1441: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1442: 
	movq	8(%rax), %rax
 jmp .UNIQUE1443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1443: 
	cmpq	%rax, %rdx
 jmp .UNIQUE1444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1444: 
	jne	.L154
 jmp .UNIQUE1445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1445: 
	movl	$933, %edx
 jmp .UNIQUE1446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1446: 
	movl	$__func__.4294, %esi
 jmp .UNIQUE1447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1447: 
	movl	$32, %edi
 jmp .UNIQUE1448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1448: 
	call	error_checking_malloc
 jmp .UNIQUE1449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1449: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1450: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1451: 
	movq	(%rax), %rdx
 jmp .UNIQUE1452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1452: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1453: 
	movq	(%rax), %rax
 jmp .UNIQUE1454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1454: 
	addq	%rax, %rdx
 jmp .UNIQUE1455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1455: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1456: 
	movq	%rdx, (%rax)
 jmp .UNIQUE1457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1457: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1458: 
	movq	8(%rax), %rdx
 jmp .UNIQUE1459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1459: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1460: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE1461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1461: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1462: 
	movq	24(%rax), %rdx
 jmp .UNIQUE1463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1463: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1464: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE1465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1465: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1466: 
	movq	16(%rax), %rdx
 jmp .UNIQUE1467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1467: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1468: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE1469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1469: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1470: 
	movq	24(%rax), %rax
 jmp .UNIQUE1471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1471: 
	testq	%rax, %rax
 jmp .UNIQUE1472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1472: 
	je	.L155
 jmp .UNIQUE1473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1473: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1474: 
	movq	24(%rax), %rax
 jmp .UNIQUE1475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1475: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1476: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE1477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1477: 
	jmp	.L156
.L155:
 jmp .UNIQUE1478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1478: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1479: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1480: 
	movq	%rdx, (%rax)
.L156:
 jmp .UNIQUE1481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1481: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1482: 
	movq	16(%rax), %rax
 jmp .UNIQUE1483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1483: 
	testq	%rax, %rax
 jmp .UNIQUE1484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1484: 
	je	.L157
 jmp .UNIQUE1485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1485: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1486: 
	movq	16(%rax), %rax
 jmp .UNIQUE1487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1487: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1488: 
	movq	%rdx, 24(%rax)
.L157:
 jmp .UNIQUE1489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1489: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1490: 
	movq	%rax, %rdi
 jmp .UNIQUE1491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1491: 
	call	free
 jmp .UNIQUE1492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1492: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1493: 
	movq	%rax, %rdi
 jmp .UNIQUE1494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1494: 
	call	free
 jmp .UNIQUE1495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1495: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1496: 
	jmp	.L158
.L154:
 jmp .UNIQUE1497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1497: 
	movl	$0, %eax
.L158:
 jmp .UNIQUE1498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1498: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1499: 
	ret
	.cfi_endproc
.LFE56:
	.size	check_and_merge, .-check_and_merge
	.globl	managed_secure_malloc
	.type	managed_secure_malloc, @function
managed_secure_malloc:
.LFB57:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1500: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1501: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1502: 
	subq	$96, %rsp
 jmp .UNIQUE1503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1503: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE1504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1504: 
	cmpq	$0, -56(%rbp)
 jmp .UNIQUE1505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1505: 
	jne	.L160
 jmp .UNIQUE1506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1506: 
	movl	$0, %eax
 jmp .UNIQUE1507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1507: 
	jmp	.L166
.L160:
 jmp .UNIQUE1508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1508: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1509: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE1510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1510: 
	testq	%rax, %rax
 jmp .UNIQUE1511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1511: 
	cmovs	%rdx, %rax
 jmp .UNIQUE1512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1512: 
	sarq	$2, %rax
 jmp .UNIQUE1513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1513: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE1514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1514: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE1515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1515: 
	salq	$2, %rax
 jmp .UNIQUE1516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1516: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE1517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1517: 
	jge	.L162
 jmp .UNIQUE1518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1518: 
	addq	$1, -48(%rbp)
.L162:
 jmp .UNIQUE1519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1519: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE1520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1520: 
	movq	%rax, %rdi
 jmp .UNIQUE1521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1521: 
	call	find_large_enough_free_group
 jmp .UNIQUE1522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1522: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE1523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1523: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE1524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1524: 
	jne	.L163
 jmp .UNIQUE1525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1525: 
	movl	$0, %eax
 jmp .UNIQUE1526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1526: 
	jmp	.L166
.L163:
 jmp .UNIQUE1527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1527: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE1528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1528: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE1529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1529: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1530: 
	movq	8(%rax), %rax
 jmp .UNIQUE1531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1531: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1532: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE1533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1533: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE1534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1534: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE1535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1535: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE1536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1536: 
	movq	%rdx, (%rsp)
 jmp .UNIQUE1537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1537: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1538: 
	movq	%rdx, 8(%rsp)
 jmp .UNIQUE1539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1539: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1540: 
	movq	%rdx, 16(%rsp)
 jmp .UNIQUE1541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1541: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1542: 
	movq	%rdx, 24(%rsp)
 jmp .UNIQUE1543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1543: 
	movq	%rax, %rdi
 jmp .UNIQUE1544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1544: 
	call	add_node_to_list
 jmp .UNIQUE1545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1545: 
	movq	%rax, allocated_chunks_list(%rip)
 jmp .UNIQUE1546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1546: 
	movq	allocated_chunks_num(%rip), %rax
 jmp .UNIQUE1547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1547: 
	addq	$1, %rax
 jmp .UNIQUE1548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1548: 
	movq	%rax, allocated_chunks_num(%rip)
 jmp .UNIQUE1549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1549: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1550: 
	movq	(%rax), %rax
 jmp .UNIQUE1551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1551: 
	cmpq	-48(%rbp), %rax
 jmp .UNIQUE1552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1552: 
	jne	.L164
 jmp .UNIQUE1553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1553: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1554: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE1555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1555: 
	movq	%rdx, %rsi
 jmp .UNIQUE1556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1556: 
	movq	%rax, %rdi
 jmp .UNIQUE1557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1557: 
	call	delete_node_from_list
 jmp .UNIQUE1558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1558: 
	movq	%rax, free_chunks_list(%rip)
 jmp .UNIQUE1559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1559: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1560: 
	subq	$1, %rax
 jmp .UNIQUE1561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1561: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1562: 
	jmp	.L165
.L164:
 jmp .UNIQUE1563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1563: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1564: 
	movq	(%rax), %rax
 jmp .UNIQUE1565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1565: 
	subq	-48(%rbp), %rax
 jmp .UNIQUE1566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1566: 
	movq	%rax, %rdx
 jmp .UNIQUE1567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1567: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1568: 
	movq	%rdx, (%rax)
 jmp .UNIQUE1569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1569: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1570: 
	movq	8(%rax), %rcx
 jmp .UNIQUE1571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1571: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE1572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1572: 
	movq	%rdx, %rax
 jmp .UNIQUE1573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1573: 
	salq	$3, %rax
 jmp .UNIQUE1574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1574: 
	addq	%rdx, %rax
 jmp .UNIQUE1575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1575: 
	leaq	(%rcx,%rax), %rdx
 jmp .UNIQUE1576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1576: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1577: 
	movq	%rdx, 8(%rax)
.L165:
 jmp .UNIQUE1578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1578: 
	movq	-24(%rbp), %rax
.L166:
 jmp .UNIQUE1579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1579: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1580: 
	ret
	.cfi_endproc
.LFE57:
	.size	managed_secure_malloc, .-managed_secure_malloc
	.globl	managed_secure_free
	.type	managed_secure_free, @function
managed_secure_free:
.LFB58:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1581: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1582: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1583: 
	subq	$96, %rsp
 jmp .UNIQUE1584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1584: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE1585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1585: 
	movl	$0, -44(%rbp)
 jmp .UNIQUE1586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1586: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1587: 
	movq	%rax, %rdi
 jmp .UNIQUE1588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1588: 
	call	find_which_group_to_free
 jmp .UNIQUE1589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1589: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE1590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1590: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE1591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1591: 
	jne	.L168
 jmp .UNIQUE1592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1592: 
	movl	$0, %eax
 jmp .UNIQUE1593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1593: 
	jmp	.L169
.L168:
 jmp .UNIQUE1594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1594: 
	movl	$1027, %edx
 jmp .UNIQUE1595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1595: 
	movl	$__func__.4310, %esi
 jmp .UNIQUE1596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1596: 
	movl	$32, %edi
 jmp .UNIQUE1597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1597: 
	call	error_checking_malloc
 jmp .UNIQUE1598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1598: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE1599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1599: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE1600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1600: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1601: 
	movq	%rdx, %rsi
 jmp .UNIQUE1602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1602: 
	movq	%rax, %rdi
 jmp .UNIQUE1603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1603: 
	call	copy_nodes_ptr
 jmp .UNIQUE1604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1604: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE1605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1605: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE1606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1606: 
	movq	%rdx, %rsi
 jmp .UNIQUE1607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1607: 
	movq	%rax, %rdi
 jmp .UNIQUE1608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1608: 
	call	delete_node_from_list
 jmp .UNIQUE1609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1609: 
	movq	%rax, allocated_chunks_list(%rip)
 jmp .UNIQUE1610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1610: 
	movq	allocated_chunks_num(%rip), %rax
 jmp .UNIQUE1611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1611: 
	subq	$1, %rax
 jmp .UNIQUE1612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1612: 
	movq	%rax, allocated_chunks_num(%rip)
 jmp .UNIQUE1613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1613: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1614: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE1615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1615: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE1616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1616: 
	jne	.L170
 jmp .UNIQUE1617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1617: 
	movq	free_chunks_list(%rip), %rdx
 jmp .UNIQUE1618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1618: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1619: 
	movq	(%rax), %rcx
 jmp .UNIQUE1620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1620: 
	movq	%rcx, (%rsp)
 jmp .UNIQUE1621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1621: 
	movq	8(%rax), %rcx
 jmp .UNIQUE1622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1622: 
	movq	%rcx, 8(%rsp)
 jmp .UNIQUE1623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1623: 
	movq	16(%rax), %rcx
 jmp .UNIQUE1624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1624: 
	movq	%rcx, 16(%rsp)
 jmp .UNIQUE1625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1625: 
	movq	24(%rax), %rax
 jmp .UNIQUE1626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1626: 
	movq	%rax, 24(%rsp)
 jmp .UNIQUE1627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1627: 
	movq	%rdx, %rdi
 jmp .UNIQUE1628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1628: 
	call	add_node_to_list
 jmp .UNIQUE1629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1629: 
	movq	%rax, free_chunks_list(%rip)
 jmp .UNIQUE1630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1630: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1631: 
	addq	$1, %rax
 jmp .UNIQUE1632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1632: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1633: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1634: 
	movq	%rax, %rdi
 jmp .UNIQUE1635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1635: 
	call	free
 jmp .UNIQUE1636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1636: 
	movl	$1, -44(%rbp)
 jmp .UNIQUE1637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1637: 
	jmp	.L171
.L170:
 jmp .UNIQUE1638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1638: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE1639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1639: 
	jmp	.L172
.L175:
 jmp .UNIQUE1640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1640: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1641: 
	movq	8(%rax), %rax
 jmp .UNIQUE1642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1642: 
	movq	%rax, %rdx
 jmp .UNIQUE1643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1643: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1644: 
	movq	8(%rax), %rax
 jmp .UNIQUE1645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1645: 
	cmpq	%rax, %rdx
 jmp .UNIQUE1646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1646: 
	jle	.L173
 jmp .UNIQUE1647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1647: 
	jmp	.L174
.L173:
 jmp .UNIQUE1648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1648: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1649: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE1650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1650: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1651: 
	movq	16(%rax), %rax
 jmp .UNIQUE1652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1652: 
	movq	%rax, -40(%rbp)
.L172:
 jmp .UNIQUE1653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1653: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE1654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1654: 
	jne	.L175
.L174:
 jmp .UNIQUE1655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1655: 
	cmpq	$0, -32(%rbp)
 jmp .UNIQUE1656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1656: 
	jne	.L176
 jmp .UNIQUE1657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1657: 
	movq	free_chunks_list(%rip), %rdx
 jmp .UNIQUE1658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1658: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1659: 
	movq	(%rax), %rcx
 jmp .UNIQUE1660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1660: 
	movq	%rcx, (%rsp)
 jmp .UNIQUE1661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1661: 
	movq	8(%rax), %rcx
 jmp .UNIQUE1662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1662: 
	movq	%rcx, 8(%rsp)
 jmp .UNIQUE1663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1663: 
	movq	16(%rax), %rcx
 jmp .UNIQUE1664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1664: 
	movq	%rcx, 16(%rsp)
 jmp .UNIQUE1665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1665: 
	movq	24(%rax), %rax
 jmp .UNIQUE1666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1666: 
	movq	%rax, 24(%rsp)
 jmp .UNIQUE1667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1667: 
	movq	%rdx, %rdi
 jmp .UNIQUE1668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1668: 
	call	add_node_to_list
 jmp .UNIQUE1669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1669: 
	movq	%rax, free_chunks_list(%rip)
 jmp .UNIQUE1670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1670: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1671: 
	addq	$1, %rax
 jmp .UNIQUE1672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1672: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1673: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1674: 
	movq	%rax, %rdi
 jmp .UNIQUE1675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1675: 
	call	free
 jmp .UNIQUE1676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1676: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1677: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE1678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1678: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1679: 
	movq	16(%rax), %rax
 jmp .UNIQUE1680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1680: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1681: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1682: 
	je	.L177
 jmp .UNIQUE1683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1683: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE1684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1684: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1685: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1686: 
	movq	%rcx, %rsi
 jmp .UNIQUE1687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1687: 
	movq	%rax, %rdi
 jmp .UNIQUE1688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1688: 
	call	check_and_merge
 jmp .UNIQUE1689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1689: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1690: 
	jmp	.L178
.L180:
 jmp .UNIQUE1691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1691: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1692: 
	subq	$1, %rax
 jmp .UNIQUE1693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1693: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1694: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1695: 
	movq	16(%rax), %rax
 jmp .UNIQUE1696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1696: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1697: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1698: 
	je	.L179
 jmp .UNIQUE1699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1699: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE1700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1700: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1701: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1702: 
	movq	%rcx, %rsi
 jmp .UNIQUE1703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1703: 
	movq	%rax, %rdi
 jmp .UNIQUE1704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1704: 
	call	check_and_merge
 jmp .UNIQUE1705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1705: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1706: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1707: 
	jne	.L178
 jmp .UNIQUE1708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1708: 
	jmp	.L177
.L179:
 jmp .UNIQUE1709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1709: 
	jmp	.L177
.L178:
 jmp .UNIQUE1710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1710: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1711: 
	jne	.L180
.L177:
 jmp .UNIQUE1712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1712: 
	movl	$1, -44(%rbp)
 jmp .UNIQUE1713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1713: 
	jmp	.L171
.L176:
 jmp .UNIQUE1714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1714: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1715: 
	movq	16(%rax), %rax
 jmp .UNIQUE1716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1716: 
	testq	%rax, %rax
 jmp .UNIQUE1717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1717: 
	jne	.L181
 jmp .UNIQUE1718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1718: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1719: 
	movq	8(%rax), %rax
 jmp .UNIQUE1720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1720: 
	movq	%rax, %rdx
 jmp .UNIQUE1721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1721: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1722: 
	movq	8(%rax), %rax
 jmp .UNIQUE1723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1723: 
	cmpq	%rax, %rdx
 jmp .UNIQUE1724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1724: 
	jge	.L181
 jmp .UNIQUE1725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1725: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1726: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1727: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE1728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1728: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1729: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE1730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1730: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE1731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1731: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1732: 
	movq	$0, 16(%rax)
 jmp .UNIQUE1733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1733: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1734: 
	addq	$1, %rax
 jmp .UNIQUE1735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1735: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1736: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE1737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1737: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1738: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1739: 
	movq	%rcx, %rsi
 jmp .UNIQUE1740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1740: 
	movq	%rax, %rdi
 jmp .UNIQUE1741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1741: 
	call	check_and_merge
 jmp .UNIQUE1742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1742: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1743: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1744: 
	je	.L182
 jmp .UNIQUE1745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1745: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1746: 
	subq	$1, %rax
 jmp .UNIQUE1747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1747: 
	movq	%rax, free_chunks_num(%rip)
.L182:
 jmp .UNIQUE1748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1748: 
	movl	$1, -44(%rbp)
 jmp .UNIQUE1749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1749: 
	jmp	.L171
.L181:
 jmp .UNIQUE1750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1750: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1751: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1752: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE1753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1753: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1754: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE1755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1755: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE1756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1756: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1757: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE1758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1758: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE1759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1759: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1760: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1761: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE1762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1762: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1763: 
	addq	$1, %rax
 jmp .UNIQUE1764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1764: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1765: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE1766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1766: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1767: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1768: 
	movq	%rcx, %rsi
 jmp .UNIQUE1769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1769: 
	movq	%rax, %rdi
 jmp .UNIQUE1770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1770: 
	call	check_and_merge
 jmp .UNIQUE1771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1771: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1772: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1773: 
	jne	.L183
 jmp .UNIQUE1774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1774: 
	movq	-40(%rbp), %rcx
 jmp .UNIQUE1775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1775: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1776: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1777: 
	movq	%rcx, %rsi
 jmp .UNIQUE1778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1778: 
	movq	%rax, %rdi
 jmp .UNIQUE1779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1779: 
	call	check_and_merge
 jmp .UNIQUE1780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1780: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1781: 
	jmp	.L184
.L183:
 jmp .UNIQUE1782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1782: 
	jmp	.L184
.L187:
 jmp .UNIQUE1783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1783: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1784: 
	subq	$1, %rax
 jmp .UNIQUE1785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1785: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1786: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1787: 
	movq	16(%rax), %rax
 jmp .UNIQUE1788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1788: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1789: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1790: 
	je	.L185
 jmp .UNIQUE1791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1791: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE1792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1792: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1793: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1794: 
	movq	%rcx, %rsi
 jmp .UNIQUE1795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1795: 
	movq	%rax, %rdi
 jmp .UNIQUE1796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1796: 
	call	check_and_merge
 jmp .UNIQUE1797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1797: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1798: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1799: 
	jne	.L184
 jmp .UNIQUE1800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1800: 
	jmp	.L186
.L185:
 jmp .UNIQUE1801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1801: 
	jmp	.L186
.L184:
 jmp .UNIQUE1802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1802: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1803: 
	jne	.L187
.L186:
 jmp .UNIQUE1804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1804: 
	movl	$1, -44(%rbp)
.L171:
 jmp .UNIQUE1805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1805: 
	movl	-44(%rbp), %eax
.L169:
 jmp .UNIQUE1806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1806: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1807: 
	ret
	.cfi_endproc
.LFE58:
	.size	managed_secure_free, .-managed_secure_free
	.section	.rodata
	.align 8
.LC14:
	.string	"Managed secure malloc error in function %s, line %d\n"
	.text
	.globl	error_checking_managed_secure_malloc
	.type	error_checking_managed_secure_malloc, @function
error_checking_managed_secure_malloc:
.LFB59:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1808: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1809: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1810: 
	subq	$48, %rsp
 jmp .UNIQUE1811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1811: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1812: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1813: 
	movl	%edx, -36(%rbp)
 jmp .UNIQUE1814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1814: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1815: 
	jne	.L189
 jmp .UNIQUE1816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1816: 
	movl	$0, %eax
 jmp .UNIQUE1817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1817: 
	jmp	.L190
.L189:
 jmp .UNIQUE1818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1818: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1819: 
	movq	%rax, %rdi
 jmp .UNIQUE1820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1820: 
	call	managed_secure_malloc
 jmp .UNIQUE1821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1821: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1822: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1823: 
	jne	.L191
 jmp .UNIQUE1824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1824: 
	movq	stderr(%rip), %rax
 jmp .UNIQUE1825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1825: 
	movl	-36(%rbp), %ecx
 jmp .UNIQUE1826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1826: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE1827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1827: 
	movl	$.LC14, %esi
 jmp .UNIQUE1828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1828: 
	movq	%rax, %rdi
 jmp .UNIQUE1829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1829: 
	movl	$0, %eax
 jmp .UNIQUE1830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1830: 
	call	fprintf
 jmp .UNIQUE1831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1831: 
	movl	$52, %edi
 jmp .UNIQUE1832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1832: 
	call	exit
.L191:
 jmp .UNIQUE1833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1833: 
	movq	-8(%rbp), %rax
.L190:
 jmp .UNIQUE1834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1834: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1835: 
	ret
	.cfi_endproc
.LFE59:
	.size	error_checking_managed_secure_malloc, .-error_checking_managed_secure_malloc
	.globl	insert_data_into_normal_array
	.type	insert_data_into_normal_array, @function
insert_data_into_normal_array:
.LFB60:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1836: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1837: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1838: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1839: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1840: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE1841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1841: 
	movl	$0, -4(%rbp)
 jmp .UNIQUE1842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1842: 
	jmp	.L193
.L194:
 jmp .UNIQUE1843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1843: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE1844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1844: 
	movslq	%eax, %rdx
 jmp .UNIQUE1845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1845: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1846: 
	addq	%rax, %rdx
 jmp .UNIQUE1847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1847: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE1848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1848: 
	movslq	%eax, %rcx
 jmp .UNIQUE1849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1849: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1850: 
	addq	%rcx, %rax
 jmp .UNIQUE1851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1851: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1852: 
	movb	%al, (%rdx)
 jmp .UNIQUE1853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1853: 
	addl	$1, -4(%rbp)
.L193:
 jmp .UNIQUE1854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1854: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE1855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1855: 
	cltq
 jmp .UNIQUE1856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1856: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE1857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1857: 
	jl	.L194
 jmp .UNIQUE1858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1858: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1859: 
	ret
	.cfi_endproc
.LFE60:
	.size	insert_data_into_normal_array, .-insert_data_into_normal_array
	.section	.rodata
	.align 8
.LC15:
	.string	"Zero hex test printing: 0x%02x \n"
.LC16:
	.string	"Starting mem test"
.LC17:
	.string	"chunks:%ld\n"
.LC18:
	.string	"After init, print mem"
.LC19:
	.string	"Trying to secure malloc"
	.align 8
.LC20:
	.string	"After malloc,try to insert some data"
	.align 8
.LC21:
	.string	"Now let's retrieve the data and display them"
.LC22:
	.string	"%d "
	.align 8
.LC23:
	.string	"Again, Trying to secure malloc"
	.align 8
.LC24:
	.string	"Again, after malloc,try to insert some data"
	.align 8
.LC25:
	.string	"After displaying the two arrays:"
.LC26:
	.string	"After freeing one of them:"
	.align 8
.LC27:
	.string	"Now trying to store and retrieve 424242424..."
.LC28:
	.string	"\n\n%d \n\n"
.LC29:
	.string	"After retrieving int:"
	.align 8
.LC30:
	.string	"After freeing the second array:"
.LC31:
	.string	"After freeing the int:"
.LC32:
	.string	"Testing wrapper functions"
.LC33:
	.string	"Got %d\n"
.LC34:
	.string	"Got %c\n"
.LC35:
	.string	"Got %ld\n"
.LC36:
	.string	"After long int printing:"
.LC37:
	.string	"After long int free:"
.LC38:
	.string	"After another char alloc:"
.LC40:
	.string	"Got %lf\n"
.LC41:
	.string	"After double alloc:"
	.align 8
.LC42:
	.string	"Array wrapper function testing"
.LC46:
	.string	"array index 2 is %lf\n"
.LC47:
	.string	"array index 3 is %lf\n"
.LC48:
	.string	"\n\n"
	.align 8
.LC49:
	.string	"After data retrieval, print mem"
.LC50:
	.string	"Mem test done"
	.text
	.globl	mem_test
	.type	mem_test, @function
mem_test:
.LFB61:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1860: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1861: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1862: 
	subq	$176, %rsp
 jmp .UNIQUE1863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1863: 
	movq	$20, -128(%rbp)
 jmp .UNIQUE1864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1864: 
	movl	$0, %esi
 jmp .UNIQUE1865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1865: 
	movl	$.LC15, %edi
 jmp .UNIQUE1866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1866: 
	movl	$0, %eax
 jmp .UNIQUE1867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1867: 
	call	printf
 jmp .UNIQUE1868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1868: 
	movl	$.LC16, %edi
 jmp .UNIQUE1869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1869: 
	call	puts
 jmp .UNIQUE1870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1870: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE1871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1871: 
	movq	%rax, -120(%rbp)
 jmp .UNIQUE1872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1872: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE1873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1873: 
	movq	%rax, %rdi
 jmp .UNIQUE1874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1874: 
	call	find_number_of_useful_chunks
 jmp .UNIQUE1875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1875: 
	movq	%rax, -112(%rbp)
 jmp .UNIQUE1876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1876: 
	movq	-112(%rbp), %rax
 jmp .UNIQUE1877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1877: 
	movq	%rax, %rsi
 jmp .UNIQUE1878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1878: 
	movl	$.LC17, %edi
 jmp .UNIQUE1879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1879: 
	movl	$0, %eax
 jmp .UNIQUE1880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1880: 
	call	printf
 jmp .UNIQUE1881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1881: 
	movl	$.LC18, %edi
 jmp .UNIQUE1882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1882: 
	call	puts
 jmp .UNIQUE1883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1883: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE1884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1884: 
	movq	%rax, %rdi
 jmp .UNIQUE1885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1885: 
	call	print_mem
 jmp .UNIQUE1886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1886: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1887: 
	salq	$2, %rax
 jmp .UNIQUE1888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1888: 
	movl	$60, %edx
 jmp .UNIQUE1889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1889: 
	movl	$__func__.4361, %esi
 jmp .UNIQUE1890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1890: 
	movq	%rax, %rdi
 jmp .UNIQUE1891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1891: 
	call	error_checking_malloc
 jmp .UNIQUE1892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1892: 
	movq	%rax, -104(%rbp)
 jmp .UNIQUE1893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1893: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1894: 
	salq	$2, %rax
 jmp .UNIQUE1895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1895: 
	movl	$61, %edx
 jmp .UNIQUE1896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1896: 
	movl	$__func__.4361, %esi
 jmp .UNIQUE1897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1897: 
	movq	%rax, %rdi
 jmp .UNIQUE1898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1898: 
	call	error_checking_malloc
 jmp .UNIQUE1899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1899: 
	movq	%rax, -96(%rbp)
 jmp .UNIQUE1900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1900: 
	movq	$5, -144(%rbp)
 jmp .UNIQUE1901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1901: 
	jmp	.L196
.L197:
 jmp .UNIQUE1902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1902: 
	movq	-144(%rbp), %rax
 jmp .UNIQUE1903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1903: 
	salq	$2, %rax
 jmp .UNIQUE1904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1904: 
	leaq	-20(%rax), %rdx
 jmp .UNIQUE1905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1905: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE1906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1906: 
	addq	%rax, %rdx
 jmp .UNIQUE1907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1907: 
	movq	-144(%rbp), %rax
 jmp .UNIQUE1908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1908: 
	movl	%eax, %ecx
 jmp .UNIQUE1909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1909: 
	movq	-144(%rbp), %rax
 jmp .UNIQUE1910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1910: 
	imull	%ecx, %eax
 jmp .UNIQUE1911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1911: 
	movl	%eax, (%rdx)
 jmp .UNIQUE1912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1912: 
	addq	$1, -144(%rbp)
.L196:
 jmp .UNIQUE1913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1913: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1914: 
	addq	$5, %rax
 jmp .UNIQUE1915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1915: 
	cmpq	-144(%rbp), %rax
 jmp .UNIQUE1916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1916: 
	jg	.L197
 jmp .UNIQUE1917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1917: 
	movl	$.LC19, %edi
 jmp .UNIQUE1918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1918: 
	call	puts
 jmp .UNIQUE1919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1919: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1920: 
	salq	$2, %rax
 jmp .UNIQUE1921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1921: 
	movl	$70, %edx
 jmp .UNIQUE1922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1922: 
	movl	$__func__.4361, %esi
 jmp .UNIQUE1923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1923: 
	movq	%rax, %rdi
 jmp .UNIQUE1924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1924: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE1925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1925: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE1926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1926: 
	movl	$.LC20, %edi
 jmp .UNIQUE1927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1927: 
	call	puts
 jmp .UNIQUE1928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1928: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1929: 
	salq	$2, %rax
 jmp .UNIQUE1930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1930: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE1931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1931: 
	movq	-104(%rbp), %rcx
 jmp .UNIQUE1932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1932: 
	movq	%rcx, %rsi
 jmp .UNIQUE1933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1933: 
	movq	%rax, %rdi
 jmp .UNIQUE1934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1934: 
	call	insert_data_into_mem
 jmp .UNIQUE1935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1935: 
	movl	$.LC21, %edi
 jmp .UNIQUE1936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1936: 
	call	puts
 jmp .UNIQUE1937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1937: 
	movl	$78, %edx
 jmp .UNIQUE1938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1938: 
	movl	$__func__.4361, %esi
 jmp .UNIQUE1939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1939: 
	movl	$4, %edi
 jmp .UNIQUE1940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1940: 
	call	error_checking_malloc
 jmp .UNIQUE1941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1941: 
	movq	%rax, -80(%rbp)
 jmp .UNIQUE1942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1942: 
	movq	$0, -136(%rbp)
 jmp .UNIQUE1943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1943: 
	jmp	.L198
.L199:
 jmp .UNIQUE1944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1944: 
	movq	-136(%rbp), %rcx
 jmp .UNIQUE1945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1945: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE1946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1946: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE1947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1947: 
	movq	%rcx, %r8
 jmp .UNIQUE1948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1948: 
	movl	$1, %ecx
 jmp .UNIQUE1949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1949: 
	movl	$4, %esi
 jmp .UNIQUE1950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1950: 
	movq	%rax, %rdi
 jmp .UNIQUE1951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1951: 
	call	get_secure_data
 jmp .UNIQUE1952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1952: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE1953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1953: 
	movl	(%rax), %eax
 jmp .UNIQUE1954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1954: 
	movl	%eax, %esi
 jmp .UNIQUE1955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1955: 
	movl	$.LC22, %edi
 jmp .UNIQUE1956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1956: 
	movl	$0, %eax
 jmp .UNIQUE1957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1957: 
	call	printf
 jmp .UNIQUE1958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1958: 
	addq	$1, -136(%rbp)
.L198:
 jmp .UNIQUE1959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1959: 
	movq	-136(%rbp), %rax
 jmp .UNIQUE1960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1960: 
	cmpq	-128(%rbp), %rax
 jmp .UNIQUE1961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1961: 
	jl	.L199
 jmp .UNIQUE1962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1962: 
	movl	$10, %edi
 jmp .UNIQUE1963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1963: 
	call	putchar
 jmp .UNIQUE1964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1964: 
	movl	$.LC23, %edi
 jmp .UNIQUE1965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1965: 
	call	puts
 jmp .UNIQUE1966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1966: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1967: 
	salq	$2, %rax
 jmp .UNIQUE1968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1968: 
	movl	$91, %edx
 jmp .UNIQUE1969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1969: 
	movl	$__func__.4361, %esi
 jmp .UNIQUE1970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1970: 
	movq	%rax, %rdi
 jmp .UNIQUE1971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1971: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE1972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1972: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE1973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1973: 
	movq	$5, -144(%rbp)
 jmp .UNIQUE1974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1974: 
	jmp	.L200
.L201:
 jmp .UNIQUE1975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1975: 
	movq	-144(%rbp), %rax
 jmp .UNIQUE1976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1976: 
	salq	$2, %rax
 jmp .UNIQUE1977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1977: 
	leaq	-20(%rax), %rdx
 jmp .UNIQUE1978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1978: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE1979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1979: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE1980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1980: 
	movq	-144(%rbp), %rax
 jmp .UNIQUE1981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1981: 
	movl	%eax, %edx
 jmp .UNIQUE1982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1982: 
	movl	%edx, %eax
 jmp .UNIQUE1983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1983: 
	addl	%eax, %eax
 jmp .UNIQUE1984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1984: 
	addl	%edx, %eax
 jmp .UNIQUE1985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1985: 
	movl	%eax, (%rcx)
 jmp .UNIQUE1986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1986: 
	addq	$1, -144(%rbp)
.L200:
 jmp .UNIQUE1987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1987: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1988: 
	addq	$5, %rax
 jmp .UNIQUE1989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1989: 
	cmpq	-144(%rbp), %rax
 jmp .UNIQUE1990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1990: 
	jg	.L201
 jmp .UNIQUE1991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1991: 
	movl	$.LC24, %edi
 jmp .UNIQUE1992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1992: 
	call	puts
 jmp .UNIQUE1993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1993: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1994: 
	salq	$2, %rax
 jmp .UNIQUE1995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1995: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE1996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1996: 
	movq	-104(%rbp), %rcx
 jmp .UNIQUE1997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1997: 
	movq	%rcx, %rsi
 jmp .UNIQUE1998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1998: 
	movq	%rax, %rdi
 jmp .UNIQUE1999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1999: 
	call	insert_data_into_mem
 jmp .UNIQUE2000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2000: 
	movl	$.LC21, %edi
 jmp .UNIQUE2001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2001: 
	call	puts
 jmp .UNIQUE2002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2002: 
	movq	$0, -136(%rbp)
 jmp .UNIQUE2003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2003: 
	jmp	.L202
.L203:
 jmp .UNIQUE2004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2004: 
	movq	-136(%rbp), %rcx
 jmp .UNIQUE2005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2005: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE2006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2006: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2007: 
	movq	%rcx, %r8
 jmp .UNIQUE2008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2008: 
	movl	$1, %ecx
 jmp .UNIQUE2009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2009: 
	movl	$4, %esi
 jmp .UNIQUE2010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2010: 
	movq	%rax, %rdi
 jmp .UNIQUE2011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2011: 
	call	get_secure_data
 jmp .UNIQUE2012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2012: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2013: 
	movl	(%rax), %eax
 jmp .UNIQUE2014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2014: 
	movl	%eax, %esi
 jmp .UNIQUE2015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2015: 
	movl	$.LC22, %edi
 jmp .UNIQUE2016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2016: 
	movl	$0, %eax
 jmp .UNIQUE2017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2017: 
	call	printf
 jmp .UNIQUE2018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2018: 
	addq	$1, -136(%rbp)
.L202:
 jmp .UNIQUE2019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2019: 
	movq	-136(%rbp), %rax
 jmp .UNIQUE2020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2020: 
	cmpq	-128(%rbp), %rax
 jmp .UNIQUE2021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2021: 
	jl	.L203
 jmp .UNIQUE2022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2022: 
	movl	$10, %edi
 jmp .UNIQUE2023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2023: 
	call	putchar
 jmp .UNIQUE2024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2024: 
	movl	$.LC25, %edi
 jmp .UNIQUE2025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2025: 
	call	puts
 jmp .UNIQUE2026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2026: 
	movl	$0, %eax
 jmp .UNIQUE2027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2027: 
	call	print_lists
 jmp .UNIQUE2028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2028: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2029: 
	movq	%rax, %rdi
 jmp .UNIQUE2030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2030: 
	call	managed_secure_free
 jmp .UNIQUE2031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2031: 
	movl	$.LC26, %edi
 jmp .UNIQUE2032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2032: 
	call	puts
 jmp .UNIQUE2033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2033: 
	movl	$0, %eax
 jmp .UNIQUE2034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2034: 
	call	print_lists
 jmp .UNIQUE2035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2035: 
	movl	$.LC27, %edi
 jmp .UNIQUE2036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2036: 
	call	puts
 jmp .UNIQUE2037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2037: 
	movl	$120, %edx
 jmp .UNIQUE2038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2038: 
	movl	$__func__.4361, %esi
 jmp .UNIQUE2039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2039: 
	movl	$4, %edi
 jmp .UNIQUE2040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2040: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2041: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE2042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2042: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2043: 
	movl	$424242424, (%rax)
 jmp .UNIQUE2044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2044: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE2045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2045: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2046: 
	movq	%rax, %rsi
 jmp .UNIQUE2047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2047: 
	movl	$4, %edi
 jmp .UNIQUE2048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2048: 
	call	insert_data_into_mem
 jmp .UNIQUE2049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2049: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2050: 
	movq	%rax, %rdi
 jmp .UNIQUE2051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2051: 
	call	free
 jmp .UNIQUE2052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2052: 
	movl	$124, %edx
 jmp .UNIQUE2053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2053: 
	movl	$__func__.4361, %esi
 jmp .UNIQUE2054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2054: 
	movl	$4, %edi
 jmp .UNIQUE2055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2055: 
	call	error_checking_malloc
 jmp .UNIQUE2056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2056: 
	movq	%rax, -80(%rbp)
 jmp .UNIQUE2057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2057: 
	movq	-136(%rbp), %rcx
 jmp .UNIQUE2058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2058: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE2059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2059: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2060: 
	movq	%rcx, %r8
 jmp .UNIQUE2061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2061: 
	movl	$0, %ecx
 jmp .UNIQUE2062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2062: 
	movl	$4, %esi
 jmp .UNIQUE2063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2063: 
	movq	%rax, %rdi
 jmp .UNIQUE2064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2064: 
	call	get_secure_data
 jmp .UNIQUE2065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2065: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2066: 
	movl	(%rax), %eax
 jmp .UNIQUE2067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2067: 
	movl	%eax, %esi
 jmp .UNIQUE2068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2068: 
	movl	$.LC28, %edi
 jmp .UNIQUE2069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2069: 
	movl	$0, %eax
 jmp .UNIQUE2070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2070: 
	call	printf
 jmp .UNIQUE2071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2071: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2072: 
	movq	%rax, %rdi
 jmp .UNIQUE2073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2073: 
	call	free
 jmp .UNIQUE2074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2074: 
	movl	$.LC29, %edi
 jmp .UNIQUE2075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2075: 
	call	puts
 jmp .UNIQUE2076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2076: 
	movl	$0, %eax
 jmp .UNIQUE2077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2077: 
	call	print_lists
 jmp .UNIQUE2078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2078: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE2079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2079: 
	movq	%rax, %rdi
 jmp .UNIQUE2080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2080: 
	call	managed_secure_free
 jmp .UNIQUE2081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2081: 
	movl	$.LC30, %edi
 jmp .UNIQUE2082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2082: 
	call	puts
 jmp .UNIQUE2083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2083: 
	movl	$0, %eax
 jmp .UNIQUE2084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2084: 
	call	print_lists
 jmp .UNIQUE2085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2085: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2086: 
	movq	%rax, %rdi
 jmp .UNIQUE2087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2087: 
	call	managed_secure_free
 jmp .UNIQUE2088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2088: 
	movl	$.LC31, %edi
 jmp .UNIQUE2089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2089: 
	call	puts
 jmp .UNIQUE2090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2090: 
	movl	$0, %eax
 jmp .UNIQUE2091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2091: 
	call	print_lists
 jmp .UNIQUE2092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2092: 
	movl	$.LC32, %edi
 jmp .UNIQUE2093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2093: 
	call	puts
 jmp .UNIQUE2094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2094: 
	movl	$146, %edx
 jmp .UNIQUE2095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2095: 
	movl	$__func__.4361, %esi
 jmp .UNIQUE2096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2096: 
	movl	$4, %edi
 jmp .UNIQUE2097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2097: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2098: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE2099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2099: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2100: 
	movl	$99998, %esi
 jmp .UNIQUE2101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2101: 
	movq	%rax, %rdi
 jmp .UNIQUE2102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2102: 
	call	set_int
 jmp .UNIQUE2103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2103: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2104: 
	movq	%rax, %rdi
 jmp .UNIQUE2105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2105: 
	call	get_int
 jmp .UNIQUE2106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2106: 
	movl	%eax, -156(%rbp)
 jmp .UNIQUE2107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2107: 
	movl	-156(%rbp), %eax
 jmp .UNIQUE2108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2108: 
	movl	%eax, %esi
 jmp .UNIQUE2109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2109: 
	movl	$.LC33, %edi
 jmp .UNIQUE2110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2110: 
	movl	$0, %eax
 jmp .UNIQUE2111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2111: 
	call	printf
 jmp .UNIQUE2112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2112: 
	movl	$152, %edx
 jmp .UNIQUE2113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2113: 
	movl	$__func__.4361, %esi
 jmp .UNIQUE2114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2114: 
	movl	$1, %edi
 jmp .UNIQUE2115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2115: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2116: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE2117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2117: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE2118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2118: 
	movl	$98, %esi
 jmp .UNIQUE2119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2119: 
	movq	%rax, %rdi
 jmp .UNIQUE2120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2120: 
	call	set_char
 jmp .UNIQUE2121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2121: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE2122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2122: 
	movq	%rax, %rdi
 jmp .UNIQUE2123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2123: 
	call	get_char
 jmp .UNIQUE2124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2124: 
	movb	%al, -157(%rbp)
 jmp .UNIQUE2125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2125: 
	movsbl	-157(%rbp), %eax
 jmp .UNIQUE2126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2126: 
	movl	%eax, %esi
 jmp .UNIQUE2127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2127: 
	movl	$.LC34, %edi
 jmp .UNIQUE2128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2128: 
	movl	$0, %eax
 jmp .UNIQUE2129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2129: 
	call	printf
 jmp .UNIQUE2130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2130: 
	movl	$158, %edx
 jmp .UNIQUE2131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2131: 
	movl	$__func__.4361, %esi
 jmp .UNIQUE2132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2132: 
	movl	$8, %edi
 jmp .UNIQUE2133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2133: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2134: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE2135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2135: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2136: 
	movl	$54545454, %esi
 jmp .UNIQUE2137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2137: 
	movq	%rax, %rdi
 jmp .UNIQUE2138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2138: 
	call	set_long_int
 jmp .UNIQUE2139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2139: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2140: 
	movq	%rax, %rdi
 jmp .UNIQUE2141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2141: 
	call	get_long_int
 jmp .UNIQUE2142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2142: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE2143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2143: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2144: 
	movq	%rax, %rsi
 jmp .UNIQUE2145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2145: 
	movl	$.LC35, %edi
 jmp .UNIQUE2146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2146: 
	movl	$0, %eax
 jmp .UNIQUE2147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2147: 
	call	printf
 jmp .UNIQUE2148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2148: 
	movl	$.LC36, %edi
 jmp .UNIQUE2149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2149: 
	call	puts
 jmp .UNIQUE2150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2150: 
	movl	$0, %eax
 jmp .UNIQUE2151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2151: 
	call	print_lists
 jmp .UNIQUE2152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2152: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2153: 
	movq	%rax, %rdi
 jmp .UNIQUE2154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2154: 
	call	managed_secure_free
 jmp .UNIQUE2155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2155: 
	movl	$.LC37, %edi
 jmp .UNIQUE2156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2156: 
	call	puts
 jmp .UNIQUE2157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2157: 
	movl	$0, %eax
 jmp .UNIQUE2158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2158: 
	call	print_lists
 jmp .UNIQUE2159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2159: 
	movl	$172, %edx
 jmp .UNIQUE2160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2160: 
	movl	$__func__.4361, %esi
 jmp .UNIQUE2161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2161: 
	movl	$1, %edi
 jmp .UNIQUE2162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2162: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2163: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE2164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2164: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2165: 
	movl	$97, %esi
 jmp .UNIQUE2166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2166: 
	movq	%rax, %rdi
 jmp .UNIQUE2167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2167: 
	call	set_char
 jmp .UNIQUE2168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2168: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2169: 
	movq	%rax, %rdi
 jmp .UNIQUE2170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2170: 
	call	get_char
 jmp .UNIQUE2171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2171: 
	movb	%al, -157(%rbp)
 jmp .UNIQUE2172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2172: 
	movsbl	-157(%rbp), %eax
 jmp .UNIQUE2173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2173: 
	movl	%eax, %esi
 jmp .UNIQUE2174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2174: 
	movl	$.LC34, %edi
 jmp .UNIQUE2175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2175: 
	movl	$0, %eax
 jmp .UNIQUE2176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2176: 
	call	printf
 jmp .UNIQUE2177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2177: 
	movl	$.LC38, %edi
 jmp .UNIQUE2178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2178: 
	call	puts
 jmp .UNIQUE2179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2179: 
	movl	$0, %eax
 jmp .UNIQUE2180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2180: 
	call	print_lists
 jmp .UNIQUE2181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2181: 
	movl	$182, %edx
 jmp .UNIQUE2182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2182: 
	movl	$__func__.4361, %esi
 jmp .UNIQUE2183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2183: 
	movl	$8, %edi
 jmp .UNIQUE2184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2184: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2185: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2186: 
	movabsq	$4665384344877005170, %rax
 jmp .UNIQUE2187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2187: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE2188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2188: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE2189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2189: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE2190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2190: 
	movq	%rdx, %rdi
 jmp .UNIQUE2191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2191: 
	call	set_double
 jmp .UNIQUE2192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2192: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2193: 
	movq	%rax, %rdi
 jmp .UNIQUE2194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2194: 
	call	get_double
 jmp .UNIQUE2195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2195: 
	movsd	%xmm0, -168(%rbp)
 jmp .UNIQUE2196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2196: 
	movq	-168(%rbp), %rax
 jmp .UNIQUE2197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2197: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE2198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2198: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE2199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2199: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE2200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2200: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE2201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2201: 
	movl	$.LC40, %edi
 jmp .UNIQUE2202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2202: 
	movl	$1, %eax
 jmp .UNIQUE2203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2203: 
	call	printf
 jmp .UNIQUE2204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2204: 
	movl	$.LC41, %edi
 jmp .UNIQUE2205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2205: 
	call	puts
 jmp .UNIQUE2206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2206: 
	movl	$0, %eax
 jmp .UNIQUE2207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2207: 
	call	print_lists
 jmp .UNIQUE2208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2208: 
	movl	$.LC42, %edi
 jmp .UNIQUE2209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2209: 
	call	puts
 jmp .UNIQUE2210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2210: 
	movl	$193, %edx
 jmp .UNIQUE2211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2211: 
	movl	$__func__.4361, %esi
 jmp .UNIQUE2212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2212: 
	movl	$80, %edi
 jmp .UNIQUE2213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2213: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2214: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE2215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2215: 
	movabsq	$4631167498573958009, %rax
 jmp .UNIQUE2216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2216: 
	movq	%rax, -152(%rbp)
 jmp .UNIQUE2217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2217: 
	leaq	-152(%rbp), %rdx
 jmp .UNIQUE2218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2218: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2219: 
	movq	%rdx, %rcx
 jmp .UNIQUE2220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2220: 
	movl	$2, %edx
 jmp .UNIQUE2221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2221: 
	movq	%rax, %rsi
 jmp .UNIQUE2222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2222: 
	movl	$8, %edi
 jmp .UNIQUE2223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2223: 
	call	set_array_element
 jmp .UNIQUE2224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2224: 
	movabsq	$4629998950986019070, %rax
 jmp .UNIQUE2225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2225: 
	movq	%rax, -152(%rbp)
 jmp .UNIQUE2226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2226: 
	leaq	-152(%rbp), %rdx
 jmp .UNIQUE2227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2227: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2228: 
	movq	%rdx, %rcx
 jmp .UNIQUE2229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2229: 
	movl	$3, %edx
 jmp .UNIQUE2230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2230: 
	movq	%rax, %rsi
 jmp .UNIQUE2231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2231: 
	movl	$8, %edi
 jmp .UNIQUE2232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2232: 
	call	set_array_element
 jmp .UNIQUE2233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2233: 
	movabsq	$4607182418800017408, %rax
 jmp .UNIQUE2234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2234: 
	movq	%rax, -152(%rbp)
 jmp .UNIQUE2235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2235: 
	leaq	-152(%rbp), %rdx
 jmp .UNIQUE2236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2236: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2237: 
	movq	%rdx, %rcx
 jmp .UNIQUE2238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2238: 
	movl	$2, %edx
 jmp .UNIQUE2239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2239: 
	movq	%rax, %rsi
 jmp .UNIQUE2240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2240: 
	movl	$8, %edi
 jmp .UNIQUE2241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2241: 
	call	get_array_element
 jmp .UNIQUE2242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2242: 
	movq	-152(%rbp), %rax
 jmp .UNIQUE2243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2243: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE2244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2244: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE2245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2245: 
	movl	$.LC46, %edi
 jmp .UNIQUE2246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2246: 
	movl	$1, %eax
 jmp .UNIQUE2247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2247: 
	call	printf
 jmp .UNIQUE2248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2248: 
	leaq	-152(%rbp), %rdx
 jmp .UNIQUE2249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2249: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2250: 
	movq	%rdx, %rcx
 jmp .UNIQUE2251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2251: 
	movl	$3, %edx
 jmp .UNIQUE2252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2252: 
	movq	%rax, %rsi
 jmp .UNIQUE2253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2253: 
	movl	$8, %edi
 jmp .UNIQUE2254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2254: 
	call	get_array_element
 jmp .UNIQUE2255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2255: 
	movq	-152(%rbp), %rax
 jmp .UNIQUE2256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2256: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE2257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2257: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE2258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2258: 
	movl	$.LC47, %edi
 jmp .UNIQUE2259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2259: 
	movl	$1, %eax
 jmp .UNIQUE2260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2260: 
	call	printf
 jmp .UNIQUE2261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2261: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2262: 
	movl	$3, %esi
 jmp .UNIQUE2263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2263: 
	movq	%rax, %rdi
 jmp .UNIQUE2264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2264: 
	call	get_double_array_element
 jmp .UNIQUE2265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2265: 
	movsd	%xmm0, -168(%rbp)
 jmp .UNIQUE2266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2266: 
	movq	-168(%rbp), %rax
 jmp .UNIQUE2267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2267: 
	movq	%rax, -152(%rbp)
 jmp .UNIQUE2268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2268: 
	movq	-152(%rbp), %rax
 jmp .UNIQUE2269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2269: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE2270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2270: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE2271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2271: 
	movl	$.LC47, %edi
 jmp .UNIQUE2272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2272: 
	movl	$1, %eax
 jmp .UNIQUE2273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2273: 
	call	printf
 jmp .UNIQUE2274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2274: 
	movl	$.LC48, %edi
 jmp .UNIQUE2275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2275: 
	call	puts
 jmp .UNIQUE2276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2276: 
	movl	$.LC49, %edi
 jmp .UNIQUE2277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2277: 
	call	puts
 jmp .UNIQUE2278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2278: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE2279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2279: 
	movq	%rax, %rdi
 jmp .UNIQUE2280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2280: 
	call	print_mem
 jmp .UNIQUE2281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2281: 
	movl	$.LC50, %edi
 jmp .UNIQUE2282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2282: 
	call	puts
 jmp .UNIQUE2283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2283: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2284: 
	ret
	.cfi_endproc
.LFE61:
	.size	mem_test, .-mem_test
	.section	.rodata
.LC51:
	.string	"a---------"
.LC52:
	.string	"Returned NULL! -.- 1"
.LC53:
	.string	"b---------"
.LC54:
	.string	"Returned NULL! -.- 2"
.LC55:
	.string	"c---------"
.LC56:
	.string	"Returned NULL! -.- 3"
.LC57:
	.string	"d---------"
.LC58:
	.string	"Something went wrong"
.LC59:
	.string	"e---------"
.LC60:
	.string	"Returned NULL! -.- 4"
.LC61:
	.string	"f---------"
.LC62:
	.string	"Returned NULL! -.- 5"
.LC63:
	.string	"g---------"
	.text
	.globl	list_test
	.type	list_test, @function
list_test:
.LFB62:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2285: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2286: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2287: 
	subq	$80, %rsp
 jmp .UNIQUE2288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2288: 
	movl	$.LC3, %edi
 jmp .UNIQUE2289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2289: 
	call	puts
 jmp .UNIQUE2290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2290: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE2291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2291: 
	movq	%rax, %rdi
 jmp .UNIQUE2292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2292: 
	call	print_list
 jmp .UNIQUE2293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2293: 
	movl	$.LC4, %edi
 jmp .UNIQUE2294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2294: 
	call	puts
 jmp .UNIQUE2295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2295: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE2296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2296: 
	movq	%rax, %rdi
 jmp .UNIQUE2297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2297: 
	call	print_list
 jmp .UNIQUE2298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2298: 
	movq	$10, -32(%rbp)
 jmp .UNIQUE2299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2299: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE2300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2300: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2301: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE2302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2302: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE2303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2303: 
	movl	$.LC51, %edi
 jmp .UNIQUE2304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2304: 
	call	puts
 jmp .UNIQUE2305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2305: 
	movl	$101, %edi
 jmp .UNIQUE2306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2306: 
	call	managed_secure_malloc
 jmp .UNIQUE2307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2307: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE2308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2308: 
	cmpq	$0, -64(%rbp)
 jmp .UNIQUE2309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2309: 
	jne	.L205
 jmp .UNIQUE2310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2310: 
	movl	$.LC52, %edi
 jmp .UNIQUE2311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2311: 
	call	puts
.L205:
 jmp .UNIQUE2312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2312: 
	movl	$0, %eax
 jmp .UNIQUE2313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2313: 
	call	print_lists
 jmp .UNIQUE2314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2314: 
	movl	$.LC53, %edi
 jmp .UNIQUE2315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2315: 
	call	puts
 jmp .UNIQUE2316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2316: 
	movl	$42, %edi
 jmp .UNIQUE2317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2317: 
	call	managed_secure_malloc
 jmp .UNIQUE2318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2318: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE2319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2319: 
	cmpq	$0, -56(%rbp)
 jmp .UNIQUE2320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2320: 
	jne	.L206
 jmp .UNIQUE2321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2321: 
	movl	$.LC54, %edi
 jmp .UNIQUE2322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2322: 
	call	puts
.L206:
 jmp .UNIQUE2323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2323: 
	movl	$0, %eax
 jmp .UNIQUE2324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2324: 
	call	print_lists
 jmp .UNIQUE2325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2325: 
	movl	$.LC55, %edi
 jmp .UNIQUE2326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2326: 
	call	puts
 jmp .UNIQUE2327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2327: 
	movl	$61, %edi
 jmp .UNIQUE2328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2328: 
	call	managed_secure_malloc
 jmp .UNIQUE2329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2329: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE2330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2330: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE2331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2331: 
	jne	.L207
 jmp .UNIQUE2332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2332: 
	movl	$.LC56, %edi
 jmp .UNIQUE2333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2333: 
	call	puts
.L207:
 jmp .UNIQUE2334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2334: 
	movl	$0, %eax
 jmp .UNIQUE2335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2335: 
	call	print_lists
 jmp .UNIQUE2336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2336: 
	movl	$.LC57, %edi
 jmp .UNIQUE2337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2337: 
	call	puts
 jmp .UNIQUE2338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2338: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE2339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2339: 
	movq	%rax, %rdi
 jmp .UNIQUE2340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2340: 
	call	managed_secure_free
 jmp .UNIQUE2341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2341: 
	movl	%eax, -68(%rbp)
 jmp .UNIQUE2342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2342: 
	cmpl	$0, -68(%rbp)
 jmp .UNIQUE2343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2343: 
	jne	.L208
 jmp .UNIQUE2344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2344: 
	movl	$.LC58, %edi
 jmp .UNIQUE2345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2345: 
	call	puts
.L208:
 jmp .UNIQUE2346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2346: 
	movl	$0, %eax
 jmp .UNIQUE2347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2347: 
	call	print_lists
 jmp .UNIQUE2348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2348: 
	movl	$.LC59, %edi
 jmp .UNIQUE2349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2349: 
	call	puts
 jmp .UNIQUE2350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2350: 
	movl	$80, %edi
 jmp .UNIQUE2351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2351: 
	call	managed_secure_malloc
 jmp .UNIQUE2352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2352: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE2353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2353: 
	cmpq	$0, -56(%rbp)
 jmp .UNIQUE2354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2354: 
	jne	.L209
 jmp .UNIQUE2355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2355: 
	movl	$.LC60, %edi
 jmp .UNIQUE2356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2356: 
	call	puts
.L209:
 jmp .UNIQUE2357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2357: 
	movl	$0, %eax
 jmp .UNIQUE2358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2358: 
	call	print_lists
 jmp .UNIQUE2359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2359: 
	movl	$.LC61, %edi
 jmp .UNIQUE2360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2360: 
	call	puts
 jmp .UNIQUE2361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2361: 
	movl	$29, %edi
 jmp .UNIQUE2362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2362: 
	call	managed_secure_malloc
 jmp .UNIQUE2363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2363: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE2364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2364: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE2365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2365: 
	jne	.L210
 jmp .UNIQUE2366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2366: 
	movl	$.LC62, %edi
 jmp .UNIQUE2367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2367: 
	call	puts
.L210:
 jmp .UNIQUE2368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2368: 
	movl	$0, %eax
 jmp .UNIQUE2369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2369: 
	call	print_lists
 jmp .UNIQUE2370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2370: 
	movl	$.LC63, %edi
 jmp .UNIQUE2371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2371: 
	call	puts
 jmp .UNIQUE2372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2372: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2373: 
	movq	%rax, %rdi
 jmp .UNIQUE2374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2374: 
	call	managed_secure_free
 jmp .UNIQUE2375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2375: 
	movl	%eax, -68(%rbp)
 jmp .UNIQUE2376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2376: 
	cmpl	$0, -68(%rbp)
 jmp .UNIQUE2377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2377: 
	jne	.L211
 jmp .UNIQUE2378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2378: 
	movl	$.LC58, %edi
 jmp .UNIQUE2379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2379: 
	call	puts
.L211:
 jmp .UNIQUE2380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2380: 
	movl	$0, %eax
 jmp .UNIQUE2381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2381: 
	call	print_lists
 jmp .UNIQUE2382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2382: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2383: 
	ret
	.cfi_endproc
.LFE62:
	.size	list_test, .-list_test
	.section	.rodata
.LC64:
	.string	"Need more mem!"
.LC65:
	.string	"setting"
.LC67:
	.string	"adding"
.LC68:
	.string	"printing"
.LC69:
	.string	"%lg "
	.align 8
.LC70:
	.string	"printing as blocks of data using arbitrary blocks"
.LC71:
	.string	"freeing"
	.text
	.globl	simple_array_tests
	.type	simple_array_tests, @function
simple_array_tests:
.LFB63:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2384: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2385: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2386: 
	pushq	%rbx
 jmp .UNIQUE2387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2387: 
	subq	$88, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE2388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2388: 
	movl	$4, %edi
 jmp .UNIQUE2389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2389: 
	call	managed_secure_malloc
 jmp .UNIQUE2390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2390: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE2391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2391: 
	movl	$8, %edi
 jmp .UNIQUE2392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2392: 
	call	managed_secure_malloc
 jmp .UNIQUE2393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2393: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE2394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2394: 
	movl	$8, %edi
 jmp .UNIQUE2395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2395: 
	call	managed_secure_malloc
 jmp .UNIQUE2396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2396: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE2397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2397: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2398: 
	movl	$5, %esi
 jmp .UNIQUE2399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2399: 
	movq	%rax, %rdi
 jmp .UNIQUE2400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2400: 
	call	set_long_int
 jmp .UNIQUE2401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2401: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE2402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2402: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE2403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2403: 
	movq	%rdx, %rsi
 jmp .UNIQUE2404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2404: 
	movq	%rax, %rdi
 jmp .UNIQUE2405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2405: 
	call	set_pointer
 jmp .UNIQUE2406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2406: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE2407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2407: 
	movq	%rax, %rdi
 jmp .UNIQUE2408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2408: 
	call	get_pointer
 jmp .UNIQUE2409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2409: 
	movl	$21, %esi
 jmp .UNIQUE2410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2410: 
	movq	%rax, %rdi
 jmp .UNIQUE2411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2411: 
	call	set_long_int
 jmp .UNIQUE2412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2412: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2413: 
	movq	%rax, %rdi
 jmp .UNIQUE2414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2414: 
	call	get_long_int
 jmp .UNIQUE2415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2415: 
	salq	$2, %rax
 jmp .UNIQUE2416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2416: 
	movq	%rax, %rdi
 jmp .UNIQUE2417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2417: 
	call	managed_secure_malloc
 jmp .UNIQUE2418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2418: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE2419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2419: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2420: 
	movq	%rax, %rdi
 jmp .UNIQUE2421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2421: 
	call	get_long_int
 jmp .UNIQUE2422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2422: 
	salq	$2, %rax
 jmp .UNIQUE2423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2423: 
	movq	%rax, %rdi
 jmp .UNIQUE2424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2424: 
	call	managed_secure_malloc
 jmp .UNIQUE2425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2425: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE2426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2426: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2427: 
	movq	%rax, %rdi
 jmp .UNIQUE2428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2428: 
	call	get_long_int
 jmp .UNIQUE2429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2429: 
	salq	$3, %rax
 jmp .UNIQUE2430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2430: 
	movq	%rax, %rdi
 jmp .UNIQUE2431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2431: 
	call	managed_secure_malloc
 jmp .UNIQUE2432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2432: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE2433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2433: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2434: 
	movq	%rax, %rdi
 jmp .UNIQUE2435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2435: 
	call	get_long_int
 jmp .UNIQUE2436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2436: 
	salq	$2, %rax
 jmp .UNIQUE2437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2437: 
	movq	%rax, %rdi
 jmp .UNIQUE2438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2438: 
	call	managed_secure_malloc
 jmp .UNIQUE2439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2439: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2440: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE2441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2441: 
	jne	.L213
 jmp .UNIQUE2442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2442: 
	movl	$.LC64, %edi
 jmp .UNIQUE2443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2443: 
	call	puts
 jmp .UNIQUE2444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2444: 
	movl	$42, %edi
 jmp .UNIQUE2445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2445: 
	call	exit
.L213:
 jmp .UNIQUE2446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2446: 
	movl	$.LC65, %edi
 jmp .UNIQUE2447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2447: 
	call	puts
 jmp .UNIQUE2448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2448: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2449: 
	movl	$0, %esi
 jmp .UNIQUE2450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2450: 
	movq	%rax, %rdi
 jmp .UNIQUE2451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2451: 
	call	set_int
 jmp .UNIQUE2452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2452: 
	jmp	.L214
.L215:
 jmp .UNIQUE2453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2453: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2454: 
	movq	%rax, %rdi
 jmp .UNIQUE2455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2455: 
	call	get_int
 jmp .UNIQUE2456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2456: 
	leal	(%rax,%rax), %ebx
 jmp .UNIQUE2457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2457: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2458: 
	movq	%rax, %rdi
 jmp .UNIQUE2459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2459: 
	call	get_int
 jmp .UNIQUE2460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2460: 
	movslq	%eax, %rcx
 jmp .UNIQUE2461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2461: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2462: 
	movl	%ebx, %edx
 jmp .UNIQUE2463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2463: 
	movq	%rcx, %rsi
 jmp .UNIQUE2464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2464: 
	movq	%rax, %rdi
 jmp .UNIQUE2465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2465: 
	call	set_int_array_element
 jmp .UNIQUE2466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2466: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2467: 
	movq	%rax, %rdi
 jmp .UNIQUE2468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2468: 
	call	get_int
 jmp .UNIQUE2469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2469: 
	movl	%eax, %edx
 jmp .UNIQUE2470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2470: 
	movl	%edx, %eax
 jmp .UNIQUE2471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2471: 
	addl	%eax, %eax
 jmp .UNIQUE2472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2472: 
	leal	(%rax,%rdx), %ebx
 jmp .UNIQUE2473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2473: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2474: 
	movq	%rax, %rdi
 jmp .UNIQUE2475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2475: 
	call	get_int
 jmp .UNIQUE2476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2476: 
	movslq	%eax, %rcx
 jmp .UNIQUE2477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2477: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2478: 
	movl	%ebx, %edx
 jmp .UNIQUE2479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2479: 
	movq	%rcx, %rsi
 jmp .UNIQUE2480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2480: 
	movq	%rax, %rdi
 jmp .UNIQUE2481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2481: 
	call	set_int_array_element
 jmp .UNIQUE2482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2482: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2483: 
	movq	%rax, %rdi
 jmp .UNIQUE2484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2484: 
	call	get_int
 jmp .UNIQUE2485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2485: 
	cvtsi2sd	%eax, %xmm0
 jmp .UNIQUE2486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2486: 
	movsd	.LC66(%rip), %xmm1
 jmp .UNIQUE2487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2487: 
	mulsd	%xmm1, %xmm0
 jmp .UNIQUE2488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2488: 
	movsd	%xmm0, -88(%rbp)
 jmp .UNIQUE2489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2489: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2490: 
	movq	%rax, %rdi
 jmp .UNIQUE2491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2491: 
	call	get_int
 jmp .UNIQUE2492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2492: 
	movslq	%eax, %rdx
 jmp .UNIQUE2493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2493: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2494: 
	movsd	-88(%rbp), %xmm0
 jmp .UNIQUE2495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2495: 
	movq	%rdx, %rsi
 jmp .UNIQUE2496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2496: 
	movq	%rax, %rdi
 jmp .UNIQUE2497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2497: 
	call	set_double_array_element
 jmp .UNIQUE2498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2498: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2499: 
	movq	%rax, %rdi
 jmp .UNIQUE2500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2500: 
	call	get_int
 jmp .UNIQUE2501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2501: 
	addl	%eax, %eax
 jmp .UNIQUE2502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2502: 
	cvtsi2ss	%eax, %xmm3
 jmp .UNIQUE2503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2503: 
	movss	%xmm3, -88(%rbp)
 jmp .UNIQUE2504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2504: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2505: 
	movq	%rax, %rdi
 jmp .UNIQUE2506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2506: 
	call	get_int
 jmp .UNIQUE2507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2507: 
	movslq	%eax, %rdx
 jmp .UNIQUE2508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2508: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2509: 
	movss	-88(%rbp), %xmm0
 jmp .UNIQUE2510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2510: 
	movq	%rdx, %rsi
 jmp .UNIQUE2511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2511: 
	movq	%rax, %rdi
 jmp .UNIQUE2512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2512: 
	call	set_float_array_element
 jmp .UNIQUE2513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2513: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2514: 
	movq	%rax, %rdi
 jmp .UNIQUE2515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2515: 
	call	get_int
 jmp .UNIQUE2516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2516: 
	leal	1(%rax), %edx
 jmp .UNIQUE2517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2517: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2518: 
	movl	%edx, %esi
 jmp .UNIQUE2519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2519: 
	movq	%rax, %rdi
 jmp .UNIQUE2520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2520: 
	call	set_int
.L214:
 jmp .UNIQUE2521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2521: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2522: 
	movq	%rax, %rdi
 jmp .UNIQUE2523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2523: 
	call	get_int
 jmp .UNIQUE2524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2524: 
	movslq	%eax, %rbx
 jmp .UNIQUE2525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2525: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2526: 
	movq	%rax, %rdi
 jmp .UNIQUE2527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2527: 
	call	get_long_int
 jmp .UNIQUE2528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2528: 
	cmpq	%rax, %rbx
 jmp .UNIQUE2529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2529: 
	jl	.L215
 jmp .UNIQUE2530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2530: 
	movl	$.LC67, %edi
 jmp .UNIQUE2531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2531: 
	call	puts
 jmp .UNIQUE2532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2532: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2533: 
	movl	$0, %esi
 jmp .UNIQUE2534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2534: 
	movq	%rax, %rdi
 jmp .UNIQUE2535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2535: 
	call	set_int
 jmp .UNIQUE2536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2536: 
	jmp	.L216
.L217:
 jmp .UNIQUE2537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2537: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2538: 
	movq	%rax, %rdi
 jmp .UNIQUE2539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2539: 
	call	get_int
 jmp .UNIQUE2540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2540: 
	movslq	%eax, %rdx
 jmp .UNIQUE2541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2541: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2542: 
	movq	%rdx, %rsi
 jmp .UNIQUE2543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2543: 
	movq	%rax, %rdi
 jmp .UNIQUE2544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2544: 
	call	get_int_array_element
 jmp .UNIQUE2545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2545: 
	movl	%eax, %ebx
 jmp .UNIQUE2546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2546: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2547: 
	movq	%rax, %rdi
 jmp .UNIQUE2548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2548: 
	call	get_int
 jmp .UNIQUE2549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2549: 
	movslq	%eax, %rdx
 jmp .UNIQUE2550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2550: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2551: 
	movq	%rdx, %rsi
 jmp .UNIQUE2552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2552: 
	movq	%rax, %rdi
 jmp .UNIQUE2553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2553: 
	call	get_int_array_element
 jmp .UNIQUE2554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2554: 
	addl	%eax, %ebx
 jmp .UNIQUE2555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2555: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2556: 
	movq	%rax, %rdi
 jmp .UNIQUE2557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2557: 
	call	get_int
 jmp .UNIQUE2558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2558: 
	movslq	%eax, %rcx
 jmp .UNIQUE2559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2559: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2560: 
	movl	%ebx, %edx
 jmp .UNIQUE2561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2561: 
	movq	%rcx, %rsi
 jmp .UNIQUE2562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2562: 
	movq	%rax, %rdi
 jmp .UNIQUE2563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2563: 
	call	set_int_array_element
 jmp .UNIQUE2564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2564: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2565: 
	movq	%rax, %rdi
 jmp .UNIQUE2566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2566: 
	call	get_int
 jmp .UNIQUE2567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2567: 
	movslq	%eax, %rdx
 jmp .UNIQUE2568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2568: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2569: 
	movq	%rdx, %rsi
 jmp .UNIQUE2570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2570: 
	movq	%rax, %rdi
 jmp .UNIQUE2571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2571: 
	call	get_double_array_element
 jmp .UNIQUE2572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2572: 
	movsd	%xmm0, -88(%rbp)
 jmp .UNIQUE2573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2573: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2574: 
	movq	%rax, %rdi
 jmp .UNIQUE2575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2575: 
	call	get_int
 jmp .UNIQUE2576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2576: 
	movslq	%eax, %rdx
 jmp .UNIQUE2577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2577: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2578: 
	movq	%rdx, %rsi
 jmp .UNIQUE2579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2579: 
	movq	%rax, %rdi
 jmp .UNIQUE2580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2580: 
	call	get_float_array_element
 jmp .UNIQUE2581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2581: 
	unpcklps	%xmm0, %xmm0
 jmp .UNIQUE2582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2582: 
	cvtps2pd	%xmm0, %xmm0
 jmp .UNIQUE2583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2583: 
	movapd	%xmm0, %xmm2
 jmp .UNIQUE2584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2584: 
	addsd	-88(%rbp), %xmm2
 jmp .UNIQUE2585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2585: 
	movsd	%xmm2, -88(%rbp)
 jmp .UNIQUE2586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2586: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2587: 
	movq	%rax, %rdi
 jmp .UNIQUE2588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2588: 
	call	get_int
 jmp .UNIQUE2589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2589: 
	movslq	%eax, %rdx
 jmp .UNIQUE2590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2590: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2591: 
	movsd	-88(%rbp), %xmm0
 jmp .UNIQUE2592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2592: 
	movq	%rdx, %rsi
 jmp .UNIQUE2593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2593: 
	movq	%rax, %rdi
 jmp .UNIQUE2594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2594: 
	call	set_double_array_element
 jmp .UNIQUE2595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2595: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2596: 
	movq	%rax, %rdi
 jmp .UNIQUE2597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2597: 
	call	get_int
 jmp .UNIQUE2598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2598: 
	leal	1(%rax), %edx
 jmp .UNIQUE2599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2599: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2600: 
	movl	%edx, %esi
 jmp .UNIQUE2601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2601: 
	movq	%rax, %rdi
 jmp .UNIQUE2602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2602: 
	call	set_int
.L216:
 jmp .UNIQUE2603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2603: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2604: 
	movq	%rax, %rdi
 jmp .UNIQUE2605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2605: 
	call	get_int
 jmp .UNIQUE2606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2606: 
	movslq	%eax, %rbx
 jmp .UNIQUE2607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2607: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2608: 
	movq	%rax, %rdi
 jmp .UNIQUE2609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2609: 
	call	get_long_int
 jmp .UNIQUE2610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2610: 
	cmpq	%rax, %rbx
 jmp .UNIQUE2611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2611: 
	jl	.L217
 jmp .UNIQUE2612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2612: 
	movl	$.LC68, %edi
 jmp .UNIQUE2613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2613: 
	call	puts
 jmp .UNIQUE2614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2614: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2615: 
	movl	$0, %esi
 jmp .UNIQUE2616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2616: 
	movq	%rax, %rdi
 jmp .UNIQUE2617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2617: 
	call	set_int
 jmp .UNIQUE2618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2618: 
	jmp	.L218
.L219:
 jmp .UNIQUE2619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2619: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2620: 
	movq	%rax, %rdi
 jmp .UNIQUE2621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2621: 
	call	get_int
 jmp .UNIQUE2622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2622: 
	movslq	%eax, %rdx
 jmp .UNIQUE2623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2623: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2624: 
	movq	%rdx, %rsi
 jmp .UNIQUE2625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2625: 
	movq	%rax, %rdi
 jmp .UNIQUE2626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2626: 
	call	get_int_array_element
 jmp .UNIQUE2627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2627: 
	movl	%eax, %esi
 jmp .UNIQUE2628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2628: 
	movl	$.LC22, %edi
 jmp .UNIQUE2629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2629: 
	movl	$0, %eax
 jmp .UNIQUE2630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2630: 
	call	printf
 jmp .UNIQUE2631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2631: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2632: 
	movq	%rax, %rdi
 jmp .UNIQUE2633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2633: 
	call	get_int
 jmp .UNIQUE2634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2634: 
	leal	1(%rax), %edx
 jmp .UNIQUE2635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2635: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2636: 
	movl	%edx, %esi
 jmp .UNIQUE2637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2637: 
	movq	%rax, %rdi
 jmp .UNIQUE2638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2638: 
	call	set_int
.L218:
 jmp .UNIQUE2639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2639: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2640: 
	movq	%rax, %rdi
 jmp .UNIQUE2641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2641: 
	call	get_int
 jmp .UNIQUE2642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2642: 
	movslq	%eax, %rbx
 jmp .UNIQUE2643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2643: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2644: 
	movq	%rax, %rdi
 jmp .UNIQUE2645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2645: 
	call	get_long_int
 jmp .UNIQUE2646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2646: 
	cmpq	%rax, %rbx
 jmp .UNIQUE2647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2647: 
	jl	.L219
 jmp .UNIQUE2648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2648: 
	movl	$10, %edi
 jmp .UNIQUE2649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2649: 
	call	putchar
 jmp .UNIQUE2650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2650: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2651: 
	movl	$0, %esi
 jmp .UNIQUE2652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2652: 
	movq	%rax, %rdi
 jmp .UNIQUE2653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2653: 
	call	set_int
 jmp .UNIQUE2654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2654: 
	jmp	.L220
.L221:
 jmp .UNIQUE2655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2655: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2656: 
	movq	%rax, %rdi
 jmp .UNIQUE2657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2657: 
	call	get_int
 jmp .UNIQUE2658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2658: 
	movslq	%eax, %rdx
 jmp .UNIQUE2659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2659: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2660: 
	movq	%rdx, %rsi
 jmp .UNIQUE2661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2661: 
	movq	%rax, %rdi
 jmp .UNIQUE2662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2662: 
	call	get_double_array_element
 jmp .UNIQUE2663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2663: 
	movsd	%xmm0, -88(%rbp)
 jmp .UNIQUE2664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2664: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE2665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2665: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE2666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2666: 
	movsd	-88(%rbp), %xmm0
 jmp .UNIQUE2667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2667: 
	movl	$.LC69, %edi
 jmp .UNIQUE2668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2668: 
	movl	$1, %eax
 jmp .UNIQUE2669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2669: 
	call	printf
 jmp .UNIQUE2670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2670: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2671: 
	movq	%rax, %rdi
 jmp .UNIQUE2672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2672: 
	call	get_int
 jmp .UNIQUE2673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2673: 
	leal	1(%rax), %edx
 jmp .UNIQUE2674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2674: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2675: 
	movl	%edx, %esi
 jmp .UNIQUE2676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2676: 
	movq	%rax, %rdi
 jmp .UNIQUE2677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2677: 
	call	set_int
.L220:
 jmp .UNIQUE2678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2678: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2679: 
	movq	%rax, %rdi
 jmp .UNIQUE2680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2680: 
	call	get_int
 jmp .UNIQUE2681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2681: 
	movslq	%eax, %rbx
 jmp .UNIQUE2682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2682: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2683: 
	movq	%rax, %rdi
 jmp .UNIQUE2684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2684: 
	call	get_long_int
 jmp .UNIQUE2685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2685: 
	cmpq	%rax, %rbx
 jmp .UNIQUE2686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2686: 
	jl	.L221
 jmp .UNIQUE2687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2687: 
	movl	$10, %edi
 jmp .UNIQUE2688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2688: 
	call	putchar
 jmp .UNIQUE2689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2689: 
	movl	$.LC70, %edi
 jmp .UNIQUE2690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2690: 
	call	puts
 jmp .UNIQUE2691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2691: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2692: 
	movl	$0, %esi
 jmp .UNIQUE2693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2693: 
	movq	%rax, %rdi
 jmp .UNIQUE2694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2694: 
	call	set_int
 jmp .UNIQUE2695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2695: 
	jmp	.L222
.L223:
 jmp .UNIQUE2696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2696: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2697: 
	movq	%rax, %rdi
 jmp .UNIQUE2698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2698: 
	call	get_int
 jmp .UNIQUE2699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2699: 
	cltq
 jmp .UNIQUE2700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2700: 
	salq	$3, %rax
 jmp .UNIQUE2701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2701: 
	movq	%rax, %rdx
 jmp .UNIQUE2702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2702: 
	leaq	-80(%rbp), %rcx
 jmp .UNIQUE2703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2703: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2704: 
	movq	%rax, %rsi
 jmp .UNIQUE2705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2705: 
	movl	$8, %edi
 jmp .UNIQUE2706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2706: 
	call	get_arbitrary_block_in_heap_with_offset
 jmp .UNIQUE2707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2707: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2708: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE2709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2709: 
	movsd	-88(%rbp), %xmm0
 jmp .UNIQUE2710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2710: 
	movl	$.LC69, %edi
 jmp .UNIQUE2711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2711: 
	movl	$1, %eax
 jmp .UNIQUE2712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2712: 
	call	printf
 jmp .UNIQUE2713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2713: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2714: 
	movq	%rax, %rdi
 jmp .UNIQUE2715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2715: 
	call	get_int
 jmp .UNIQUE2716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2716: 
	leal	1(%rax), %edx
 jmp .UNIQUE2717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2717: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2718: 
	movl	%edx, %esi
 jmp .UNIQUE2719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2719: 
	movq	%rax, %rdi
 jmp .UNIQUE2720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2720: 
	call	set_int
.L222:
 jmp .UNIQUE2721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2721: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2722: 
	movq	%rax, %rdi
 jmp .UNIQUE2723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2723: 
	call	get_int
 jmp .UNIQUE2724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2724: 
	movslq	%eax, %rbx
 jmp .UNIQUE2725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2725: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2726: 
	movq	%rax, %rdi
 jmp .UNIQUE2727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2727: 
	call	get_long_int
 jmp .UNIQUE2728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2728: 
	cmpq	%rax, %rbx
 jmp .UNIQUE2729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2729: 
	jl	.L223
 jmp .UNIQUE2730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2730: 
	movl	$10, %edi
 jmp .UNIQUE2731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2731: 
	call	putchar
 jmp .UNIQUE2732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2732: 
	movl	$.LC71, %edi
 jmp .UNIQUE2733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2733: 
	call	puts
 jmp .UNIQUE2734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2734: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2735: 
	movq	%rax, %rdi
 jmp .UNIQUE2736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2736: 
	call	managed_secure_free
 jmp .UNIQUE2737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2737: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2738: 
	movq	%rax, %rdi
 jmp .UNIQUE2739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2739: 
	call	managed_secure_free
 jmp .UNIQUE2740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2740: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2741: 
	movq	%rax, %rdi
 jmp .UNIQUE2742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2742: 
	call	managed_secure_free
 jmp .UNIQUE2743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2743: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2744: 
	movq	%rax, %rdi
 jmp .UNIQUE2745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2745: 
	call	managed_secure_free
 jmp .UNIQUE2746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2746: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2747: 
	movq	%rax, %rdi
 jmp .UNIQUE2748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2748: 
	call	managed_secure_free
 jmp .UNIQUE2749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2749: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2750: 
	movq	%rax, %rdi
 jmp .UNIQUE2751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2751: 
	call	managed_secure_free
 jmp .UNIQUE2752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2752: 
	addq	$88, %rsp
 jmp .UNIQUE2753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2753: 
	popq	%rbx
 jmp .UNIQUE2754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2754: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2755: 
	ret
	.cfi_endproc
.LFE63:
	.size	simple_array_tests, .-simple_array_tests
	.globl	adding_unsecured_arrays_time_measure
	.type	adding_unsecured_arrays_time_measure, @function
adding_unsecured_arrays_time_measure:
.LFB64:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2756: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2757: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2758: 
	subq	$64, %rsp
 jmp .UNIQUE2759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2759: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE2760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2760: 
	movl	$4, %edi
 jmp .UNIQUE2761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2761: 
	call	malloc
 jmp .UNIQUE2762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2762: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE2763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2763: 
	movl	$8, %edi
 jmp .UNIQUE2764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2764: 
	call	malloc
 jmp .UNIQUE2765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2765: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2766: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2767: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE2768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2768: 
	movq	%rdx, (%rax)
 jmp .UNIQUE2769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2769: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2770: 
	movq	(%rax), %rax
 jmp .UNIQUE2771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2771: 
	salq	$2, %rax
 jmp .UNIQUE2772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2772: 
	movq	%rax, %rdi
 jmp .UNIQUE2773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2773: 
	call	malloc
 jmp .UNIQUE2774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2774: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE2775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2775: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2776: 
	movq	(%rax), %rax
 jmp .UNIQUE2777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2777: 
	salq	$2, %rax
 jmp .UNIQUE2778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2778: 
	movq	%rax, %rdi
 jmp .UNIQUE2779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2779: 
	call	malloc
 jmp .UNIQUE2780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2780: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE2781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2781: 
	movl	$0, -36(%rbp)
 jmp .UNIQUE2782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2782: 
	jmp	.L225
.L228:
 jmp .UNIQUE2783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2783: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2784: 
	movl	$0, (%rax)
 jmp .UNIQUE2785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2785: 
	jmp	.L226
.L227:
 jmp .UNIQUE2786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2786: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2787: 
	movl	(%rax), %eax
 jmp .UNIQUE2788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2788: 
	cltq
 jmp .UNIQUE2789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2789: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE2790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2790: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE2791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2791: 
	addq	%rax, %rdx
 jmp .UNIQUE2792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2792: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2793: 
	movl	(%rax), %eax
 jmp .UNIQUE2794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2794: 
	addl	%eax, %eax
 jmp .UNIQUE2795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2795: 
	movl	%eax, (%rdx)
 jmp .UNIQUE2796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2796: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2797: 
	movl	(%rax), %eax
 jmp .UNIQUE2798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2798: 
	cltq
 jmp .UNIQUE2799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2799: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE2800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2800: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2801: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE2802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2802: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2803: 
	movl	(%rax), %edx
 jmp .UNIQUE2804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2804: 
	movl	%edx, %eax
 jmp .UNIQUE2805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2805: 
	addl	%eax, %eax
 jmp .UNIQUE2806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2806: 
	addl	%edx, %eax
 jmp .UNIQUE2807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2807: 
	movl	%eax, (%rcx)
 jmp .UNIQUE2808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2808: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2809: 
	movl	(%rax), %eax
 jmp .UNIQUE2810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2810: 
	cltq
 jmp .UNIQUE2811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2811: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE2812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2812: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE2813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2813: 
	addq	%rax, %rdx
 jmp .UNIQUE2814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2814: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2815: 
	movl	(%rax), %eax
 jmp .UNIQUE2816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2816: 
	cltq
 jmp .UNIQUE2817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2817: 
	leaq	0(,%rax,4), %rcx
 jmp .UNIQUE2818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2818: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE2819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2819: 
	addq	%rcx, %rax
 jmp .UNIQUE2820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2820: 
	movl	(%rax), %ecx
 jmp .UNIQUE2821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2821: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2822: 
	movl	(%rax), %eax
 jmp .UNIQUE2823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2823: 
	cltq
 jmp .UNIQUE2824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2824: 
	leaq	0(,%rax,4), %rsi
 jmp .UNIQUE2825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2825: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2826: 
	addq	%rsi, %rax
 jmp .UNIQUE2827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2827: 
	movl	(%rax), %eax
 jmp .UNIQUE2828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2828: 
	addl	%ecx, %eax
 jmp .UNIQUE2829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2829: 
	movl	%eax, (%rdx)
 jmp .UNIQUE2830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2830: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2831: 
	movl	(%rax), %eax
 jmp .UNIQUE2832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2832: 
	leal	1(%rax), %edx
 jmp .UNIQUE2833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2833: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2834: 
	movl	%edx, (%rax)
.L226:
 jmp .UNIQUE2835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2835: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2836: 
	movl	(%rax), %eax
 jmp .UNIQUE2837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2837: 
	movslq	%eax, %rdx
 jmp .UNIQUE2838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2838: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2839: 
	movq	(%rax), %rax
 jmp .UNIQUE2840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2840: 
	cmpq	%rax, %rdx
 jmp .UNIQUE2841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2841: 
	jl	.L227
 jmp .UNIQUE2842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2842: 
	addl	$1, -36(%rbp)
.L225:
 jmp .UNIQUE2843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2843: 
	cmpl	$99999, -36(%rbp)
 jmp .UNIQUE2844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2844: 
	jle	.L228
 jmp .UNIQUE2845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2845: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2846: 
	movq	%rax, %rdi
 jmp .UNIQUE2847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2847: 
	call	free
 jmp .UNIQUE2848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2848: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2849: 
	movq	%rax, %rdi
 jmp .UNIQUE2850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2850: 
	call	free
 jmp .UNIQUE2851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2851: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE2852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2852: 
	movq	%rax, %rdi
 jmp .UNIQUE2853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2853: 
	call	free
 jmp .UNIQUE2854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2854: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2855: 
	movq	%rax, %rdi
 jmp .UNIQUE2856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2856: 
	call	free
 jmp .UNIQUE2857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2857: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2858: 
	ret
	.cfi_endproc
.LFE64:
	.size	adding_unsecured_arrays_time_measure, .-adding_unsecured_arrays_time_measure
	.globl	adding_heap_arrays_time_measure
	.type	adding_heap_arrays_time_measure, @function
adding_heap_arrays_time_measure:
.LFB65:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2859: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2860: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2861: 
	pushq	%rbx
 jmp .UNIQUE2862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2862: 
	subq	$72, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE2863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2863: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE2864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2864: 
	movl	$457, %edx
 jmp .UNIQUE2865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2865: 
	movl	$__func__.4429, %esi
 jmp .UNIQUE2866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2866: 
	movl	$4, %edi
 jmp .UNIQUE2867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2867: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2868: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE2869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2869: 
	movl	$458, %edx
 jmp .UNIQUE2870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2870: 
	movl	$__func__.4429, %esi
 jmp .UNIQUE2871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2871: 
	movl	$8, %edi
 jmp .UNIQUE2872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2872: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2873: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE2874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2874: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE2875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2875: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2876: 
	movq	%rdx, %rsi
 jmp .UNIQUE2877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2877: 
	movq	%rax, %rdi
 jmp .UNIQUE2878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2878: 
	call	set_long_int
 jmp .UNIQUE2879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2879: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2880: 
	movq	%rax, %rdi
 jmp .UNIQUE2881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2881: 
	call	get_long_int
 jmp .UNIQUE2882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2882: 
	salq	$2, %rax
 jmp .UNIQUE2883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2883: 
	movl	$461, %edx
 jmp .UNIQUE2884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2884: 
	movl	$__func__.4429, %esi
 jmp .UNIQUE2885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2885: 
	movq	%rax, %rdi
 jmp .UNIQUE2886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2886: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2887: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE2888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2888: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2889: 
	movq	%rax, %rdi
 jmp .UNIQUE2890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2890: 
	call	get_long_int
 jmp .UNIQUE2891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2891: 
	salq	$2, %rax
 jmp .UNIQUE2892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2892: 
	movl	$462, %edx
 jmp .UNIQUE2893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2893: 
	movl	$__func__.4429, %esi
 jmp .UNIQUE2894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2894: 
	movq	%rax, %rdi
 jmp .UNIQUE2895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2895: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2896: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2897: 
	movl	$0, -52(%rbp)
 jmp .UNIQUE2898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2898: 
	jmp	.L230
.L233:
 jmp .UNIQUE2899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2899: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2900: 
	movl	$0, %esi
 jmp .UNIQUE2901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2901: 
	movq	%rax, %rdi
 jmp .UNIQUE2902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2902: 
	call	set_int
 jmp .UNIQUE2903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2903: 
	jmp	.L231
.L232:
 jmp .UNIQUE2904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2904: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2905: 
	movq	%rax, %rdi
 jmp .UNIQUE2906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2906: 
	call	get_int
 jmp .UNIQUE2907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2907: 
	leal	(%rax,%rax), %ebx
 jmp .UNIQUE2908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2908: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2909: 
	movq	%rax, %rdi
 jmp .UNIQUE2910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2910: 
	call	get_int
 jmp .UNIQUE2911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2911: 
	movslq	%eax, %rcx
 jmp .UNIQUE2912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2912: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2913: 
	movl	%ebx, %edx
 jmp .UNIQUE2914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2914: 
	movq	%rcx, %rsi
 jmp .UNIQUE2915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2915: 
	movq	%rax, %rdi
 jmp .UNIQUE2916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2916: 
	call	set_int_array_element
 jmp .UNIQUE2917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2917: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2918: 
	movq	%rax, %rdi
 jmp .UNIQUE2919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2919: 
	call	get_int
 jmp .UNIQUE2920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2920: 
	movl	%eax, %edx
 jmp .UNIQUE2921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2921: 
	movl	%edx, %eax
 jmp .UNIQUE2922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2922: 
	addl	%eax, %eax
 jmp .UNIQUE2923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2923: 
	leal	(%rax,%rdx), %ebx
 jmp .UNIQUE2924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2924: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2925: 
	movq	%rax, %rdi
 jmp .UNIQUE2926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2926: 
	call	get_int
 jmp .UNIQUE2927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2927: 
	movslq	%eax, %rcx
 jmp .UNIQUE2928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2928: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2929: 
	movl	%ebx, %edx
 jmp .UNIQUE2930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2930: 
	movq	%rcx, %rsi
 jmp .UNIQUE2931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2931: 
	movq	%rax, %rdi
 jmp .UNIQUE2932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2932: 
	call	set_int_array_element
 jmp .UNIQUE2933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2933: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2934: 
	movq	%rax, %rdi
 jmp .UNIQUE2935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2935: 
	call	get_int
 jmp .UNIQUE2936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2936: 
	movslq	%eax, %rdx
 jmp .UNIQUE2937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2937: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2938: 
	movq	%rdx, %rsi
 jmp .UNIQUE2939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2939: 
	movq	%rax, %rdi
 jmp .UNIQUE2940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2940: 
	call	get_int_array_element
 jmp .UNIQUE2941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2941: 
	movl	%eax, %ebx
 jmp .UNIQUE2942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2942: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2943: 
	movq	%rax, %rdi
 jmp .UNIQUE2944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2944: 
	call	get_int
 jmp .UNIQUE2945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2945: 
	movslq	%eax, %rdx
 jmp .UNIQUE2946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2946: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2947: 
	movq	%rdx, %rsi
 jmp .UNIQUE2948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2948: 
	movq	%rax, %rdi
 jmp .UNIQUE2949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2949: 
	call	get_int_array_element
 jmp .UNIQUE2950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2950: 
	addl	%eax, %ebx
 jmp .UNIQUE2951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2951: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2952: 
	movq	%rax, %rdi
 jmp .UNIQUE2953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2953: 
	call	get_int
 jmp .UNIQUE2954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2954: 
	movslq	%eax, %rcx
 jmp .UNIQUE2955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2955: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2956: 
	movl	%ebx, %edx
 jmp .UNIQUE2957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2957: 
	movq	%rcx, %rsi
 jmp .UNIQUE2958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2958: 
	movq	%rax, %rdi
 jmp .UNIQUE2959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2959: 
	call	set_int_array_element
 jmp .UNIQUE2960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2960: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2961: 
	movq	%rax, %rdi
 jmp .UNIQUE2962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2962: 
	call	get_int
 jmp .UNIQUE2963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2963: 
	leal	1(%rax), %edx
 jmp .UNIQUE2964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2964: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2965: 
	movl	%edx, %esi
 jmp .UNIQUE2966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2966: 
	movq	%rax, %rdi
 jmp .UNIQUE2967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2967: 
	call	set_int
.L231:
 jmp .UNIQUE2968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2968: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2969: 
	movq	%rax, %rdi
 jmp .UNIQUE2970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2970: 
	call	get_int
 jmp .UNIQUE2971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2971: 
	movslq	%eax, %rbx
 jmp .UNIQUE2972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2972: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2973: 
	movq	%rax, %rdi
 jmp .UNIQUE2974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2974: 
	call	get_long_int
 jmp .UNIQUE2975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2975: 
	cmpq	%rax, %rbx
 jmp .UNIQUE2976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2976: 
	jl	.L232
 jmp .UNIQUE2977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2977: 
	addl	$1, -52(%rbp)
.L230:
 jmp .UNIQUE2978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2978: 
	cmpl	$99999, -52(%rbp)
 jmp .UNIQUE2979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2979: 
	jle	.L233
 jmp .UNIQUE2980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2980: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2981: 
	movq	%rax, %rdi
 jmp .UNIQUE2982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2982: 
	call	managed_secure_free
 jmp .UNIQUE2983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2983: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2984: 
	movq	%rax, %rdi
 jmp .UNIQUE2985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2985: 
	call	managed_secure_free
 jmp .UNIQUE2986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2986: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2987: 
	movq	%rax, %rdi
 jmp .UNIQUE2988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2988: 
	call	managed_secure_free
 jmp .UNIQUE2989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2989: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2990: 
	movq	%rax, %rdi
 jmp .UNIQUE2991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2991: 
	call	managed_secure_free
 jmp .UNIQUE2992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2992: 
	addq	$72, %rsp
 jmp .UNIQUE2993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2993: 
	popq	%rbx
 jmp .UNIQUE2994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2994: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2995: 
	ret
	.cfi_endproc
.LFE65:
	.size	adding_heap_arrays_time_measure, .-adding_heap_arrays_time_measure
	.comm	total_stack_bytes_allocated,8,8
	.comm	entire_stack_memory_chunk,8,8
	.comm	last_unused_stack_memory,8,8
	.comm	stack_keyshare_input_file,8,8
	.globl	find_number_of_useful_stack_chunks
	.type	find_number_of_useful_stack_chunks, @function
find_number_of_useful_stack_chunks:
.LFB66:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2996: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2997: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2998: 
	movq	%rdi, -40(%rbp)
 jmp .UNIQUE2999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2999: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3000: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE3001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3001: 
	movq	$5, -16(%rbp)
 jmp .UNIQUE3002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3002: 
	movq	$3, -8(%rbp)
 jmp .UNIQUE3003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3003: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3004: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE3005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3005: 
	addq	%rdx, %rax
 jmp .UNIQUE3006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3006: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3007: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE3008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3008: 
	leaq	(%rdx,%rcx), %rsi
 jmp .UNIQUE3009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3009: 
	cqto
 jmp .UNIQUE3010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3010: 
	idivq	%rsi
 jmp .UNIQUE3011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3011: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3012: 
	ret
	.cfi_endproc
.LFE66:
	.size	find_number_of_useful_stack_chunks, .-find_number_of_useful_stack_chunks
	.globl	get_ptr_size
	.type	get_ptr_size, @function
get_ptr_size:
.LFB67:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3013: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3014: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3015: 
	movl	$8, %eax
 jmp .UNIQUE3016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3016: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3017: 
	ret
	.cfi_endproc
.LFE67:
	.size	get_ptr_size, .-get_ptr_size
	.section	.rodata
	.align 8
.LC72:
	.string	"Stack:Attempted to read more keyshares that the ones stored\n"
	.text
	.globl	get_next_stack_keyshare
	.type	get_next_stack_keyshare, @function
get_next_stack_keyshare:
.LFB68:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3018: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3019: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3020: 
	subq	$16, %rsp
 jmp .UNIQUE3021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3021: 
	movq	stack_keyshare_input_file(%rip), %rax
 jmp .UNIQUE3022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3022: 
	movq	%rax, %rdi
 jmp .UNIQUE3023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3023: 
	call	feof
 jmp .UNIQUE3024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3024: 
	testl	%eax, %eax
 jmp .UNIQUE3025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3025: 
	je	.L239
 jmp .UNIQUE3026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3026: 
	movl	$.LC72, %edi
 jmp .UNIQUE3027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3027: 
	call	perror
 jmp .UNIQUE3028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3028: 
	movl	$45, %edi
 jmp .UNIQUE3029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3029: 
	call	exit
.L239:
 jmp .UNIQUE3030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3030: 
	movq	stack_keyshare_input_file(%rip), %rdx
 jmp .UNIQUE3031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3031: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE3032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3032: 
	movq	%rdx, %rcx
 jmp .UNIQUE3033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3033: 
	movl	$1, %edx
 jmp .UNIQUE3034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3034: 
	movl	$1, %esi
 jmp .UNIQUE3035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3035: 
	movq	%rax, %rdi
 jmp .UNIQUE3036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3036: 
	call	fread
 jmp .UNIQUE3037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3037: 
	cmpq	$1, %rax
 jmp .UNIQUE3038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3038: 
	je	.L240
 jmp .UNIQUE3039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3039: 
	movl	$.LC8, %edi
 jmp .UNIQUE3040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3040: 
	call	perror
 jmp .UNIQUE3041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3041: 
	movl	$47, %edi
 jmp .UNIQUE3042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3042: 
	call	exit
.L240:
 jmp .UNIQUE3043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3043: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE3044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3044: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3045: 
	ret
	.cfi_endproc
.LFE68:
	.size	get_next_stack_keyshare, .-get_next_stack_keyshare
	.section	.rodata
	.align 8
.LC73:
	.string	"Stack: Great!. No need to allocate more than the defined amount."
	.align 8
.LC74:
	.string	"Stack: Whoops. We need to allocate a bit more space."
	.text
	.globl	allocate_stack_mem
	.type	allocate_stack_mem, @function
allocate_stack_mem:
.LFB69:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3046: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3047: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3048: 
	pushq	%rbx
 jmp .UNIQUE3049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3049: 
	subq	$56, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE3050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3050: 
	movq	$2048, -56(%rbp)
 jmp .UNIQUE3051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3051: 
	movq	$5, -48(%rbp)
 jmp .UNIQUE3052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3052: 
	movq	$3, -40(%rbp)
 jmp .UNIQUE3053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3053: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3054: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE3055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3055: 
	addq	%rdx, %rax
 jmp .UNIQUE3056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3056: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE3057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3057: 
	movq	-48(%rbp), %rcx
 jmp .UNIQUE3058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3058: 
	leaq	(%rdx,%rcx), %rbx
 jmp .UNIQUE3059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3059: 
	cqto
 jmp .UNIQUE3060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3060: 
	idivq	%rbx
 jmp .UNIQUE3061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3061: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE3062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3062: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3063: 
	imulq	-40(%rbp), %rax
 jmp .UNIQUE3064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3064: 
	movq	%rax, %rdx
 jmp .UNIQUE3065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3065: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3066: 
	subq	$1, %rax
 jmp .UNIQUE3067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3067: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE3068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3068: 
	addq	%rdx, %rax
 jmp .UNIQUE3069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3069: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE3070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3070: 
	jne	.L243
 jmp .UNIQUE3071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3071: 
	movl	$.LC73, %edi
 jmp .UNIQUE3072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3072: 
	call	puts
 jmp .UNIQUE3073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3073: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3074: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE3075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3075: 
	jmp	.L244
.L243:
 jmp .UNIQUE3076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3076: 
	movl	$.LC74, %edi
 jmp .UNIQUE3077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3077: 
	call	puts
 jmp .UNIQUE3078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3078: 
	addq	$1, -32(%rbp)
 jmp .UNIQUE3079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3079: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3080: 
	imulq	-40(%rbp), %rax
 jmp .UNIQUE3081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3081: 
	movq	%rax, %rdx
 jmp .UNIQUE3082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3082: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3083: 
	subq	$1, %rax
 jmp .UNIQUE3084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3084: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE3085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3085: 
	addq	%rdx, %rax
 jmp .UNIQUE3086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3086: 
	movq	%rax, -64(%rbp)
.L244:
 jmp .UNIQUE3087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3087: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE3088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3088: 
	movl	$143, %edx
 jmp .UNIQUE3089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3089: 
	movl	$__func__.4486, %esi
 jmp .UNIQUE3090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3090: 
	movq	%rax, %rdi
 jmp .UNIQUE3091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3091: 
	call	error_checking_malloc
 jmp .UNIQUE3092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3092: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE3093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3093: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE3094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3094: 
	movq	%rax, total_stack_bytes_allocated(%rip)
 jmp .UNIQUE3095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3095: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3096: 
	addq	$56, %rsp
 jmp .UNIQUE3097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3097: 
	popq	%rbx
 jmp .UNIQUE3098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3098: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3099: 
	ret
	.cfi_endproc
.LFE69:
	.size	allocate_stack_mem, .-allocate_stack_mem
	.globl	free_secure_stack_mem
	.type	free_secure_stack_mem, @function
free_secure_stack_mem:
.LFB70:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3100: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3101: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3102: 
	subq	$16, %rsp
 jmp .UNIQUE3103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3103: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE3104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3104: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3105: 
	movq	%rax, %rdi
 jmp .UNIQUE3106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3106: 
	call	free
 jmp .UNIQUE3107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3107: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3108: 
	ret
	.cfi_endproc
.LFE70:
	.size	free_secure_stack_mem, .-free_secure_stack_mem
	.globl	insert_keys_into_stack_mem
	.type	insert_keys_into_stack_mem, @function
insert_keys_into_stack_mem:
.LFB71:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3109: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3110: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3111: 
	pushq	%rbx
 jmp .UNIQUE3112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3112: 
	subq	$72, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE3113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3113: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE3114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3114: 
	movl	$0, -52(%rbp)
 jmp .UNIQUE3115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3115: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE3116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3116: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE3117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3117: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE3118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3118: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE3119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3119: 
	jmp	.L248
.L253:
 jmp .UNIQUE3120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3120: 
	cmpl	$0, -52(%rbp)
 jmp .UNIQUE3121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3121: 
	je	.L249
 jmp .UNIQUE3122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3122: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE3123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3123: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3124: 
	leaq	(%rdx,%rax), %rbx
 jmp .UNIQUE3125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3125: 
	movl	$0, %eax
 jmp .UNIQUE3126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3126: 
	call	get_next_stack_keyshare
 jmp .UNIQUE3127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3127: 
	movb	%al, (%rbx)
 jmp .UNIQUE3128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3128: 
	addq	$1, -32(%rbp)
 jmp .UNIQUE3129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3129: 
	addq	$1, -48(%rbp)
 jmp .UNIQUE3130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3130: 
	jmp	.L250
.L249:
 jmp .UNIQUE3131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3131: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE3132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3132: 
	jmp	.L251
.L252:
 jmp .UNIQUE3133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3133: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3134: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE3135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3135: 
	addq	%rdx, %rax
 jmp .UNIQUE3136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3136: 
	movq	%rax, %rdx
 jmp .UNIQUE3137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3137: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3138: 
	addq	%rdx, %rax
 jmp .UNIQUE3139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3139: 
	movb	$0, (%rax)
 jmp .UNIQUE3140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3140: 
	addq	$1, -40(%rbp)
.L251:
 jmp .UNIQUE3141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3141: 
	cmpq	$2, -40(%rbp)
 jmp .UNIQUE3142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3142: 
	jle	.L252
 jmp .UNIQUE3143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3143: 
	addq	$3, -48(%rbp)
 jmp .UNIQUE3144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3144: 
	movl	$1, -52(%rbp)
.L250:
 jmp .UNIQUE3145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3145: 
	cmpq	$5, -32(%rbp)
 jmp .UNIQUE3146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3146: 
	jne	.L248
 jmp .UNIQUE3147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3147: 
	movl	$0, -52(%rbp)
 jmp .UNIQUE3148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3148: 
	movq	$0, -32(%rbp)
.L248:
 jmp .UNIQUE3149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3149: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE3150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3150: 
	cmpq	%rax, -48(%rbp)
 jmp .UNIQUE3151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3151: 
	jl	.L253
 jmp .UNIQUE3152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3152: 
	addq	$72, %rsp
 jmp .UNIQUE3153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3153: 
	popq	%rbx
 jmp .UNIQUE3154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3154: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3155: 
	ret
	.cfi_endproc
.LFE71:
	.size	insert_keys_into_stack_mem, .-insert_keys_into_stack_mem
	.section	.rodata
.LC75:
	.string	"stack_keyshares"
	.align 8
.LC76:
	.string	"init_mem:stack_keyshares file error\n"
	.text
	.globl	init_stack_mem
	.type	init_stack_mem, @function
init_stack_mem:
.LFB72:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3156: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3157: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3158: 
	subq	$16, %rsp
 jmp .UNIQUE3159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3159: 
	movl	$0, %edi
 jmp .UNIQUE3160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3160: 
	call	time
 jmp .UNIQUE3161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3161: 
	movl	%eax, %edi
 jmp .UNIQUE3162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3162: 
	call	srand
 jmp .UNIQUE3163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3163: 
	movl	$0, %eax
 jmp .UNIQUE3164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3164: 
	call	allocate_stack_mem
 jmp .UNIQUE3165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3165: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3166: 
	movl	$.LC11, %esi
 jmp .UNIQUE3167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3167: 
	movl	$.LC75, %edi
 jmp .UNIQUE3168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3168: 
	call	fopen
 jmp .UNIQUE3169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3169: 
	movq	%rax, stack_keyshare_input_file(%rip)
 jmp .UNIQUE3170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3170: 
	movq	stack_keyshare_input_file(%rip), %rax
 jmp .UNIQUE3171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3171: 
	testq	%rax, %rax
 jmp .UNIQUE3172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3172: 
	jne	.L255
 jmp .UNIQUE3173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3173: 
	movl	$.LC76, %edi
 jmp .UNIQUE3174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3174: 
	call	perror
 jmp .UNIQUE3175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3175: 
	movl	$46, %edi
 jmp .UNIQUE3176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3176: 
	call	exit
.L255:
 jmp .UNIQUE3177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3177: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3178: 
	movq	%rax, %rdi
 jmp .UNIQUE3179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3179: 
	call	insert_keys_into_stack_mem
 jmp .UNIQUE3180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3180: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3181: 
	movq	%rax, entire_stack_memory_chunk(%rip)
 jmp .UNIQUE3182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3182: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3183: 
	movq	%rax, last_unused_stack_memory(%rip)
 jmp .UNIQUE3184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3184: 
	movq	stack_keyshare_input_file(%rip), %rax
 jmp .UNIQUE3185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3185: 
	movq	%rax, %rdi
 jmp .UNIQUE3186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3186: 
	call	fclose
 jmp .UNIQUE3187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3187: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3188: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3189: 
	ret
	.cfi_endproc
.LFE72:
	.size	init_stack_mem, .-init_stack_mem
	.globl	insert_data_into_stack_mem
	.type	insert_data_into_stack_mem, @function
insert_data_into_stack_mem:
.LFB73:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3190: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3191: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3192: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE3193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3193: 
	movq	%rsi, -64(%rbp)
 jmp .UNIQUE3194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3194: 
	movq	%rdx, -72(%rbp)
 jmp .UNIQUE3195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3195: 
	movq	$0, -24(%rbp)
 jmp .UNIQUE3196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3196: 
	movl	$0, -44(%rbp)
 jmp .UNIQUE3197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3197: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE3198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3198: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE3199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3199: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3200: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE3201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3201: 
	jmp	.L258
.L263:
 jmp .UNIQUE3202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3202: 
	cmpl	$0, -44(%rbp)
 jmp .UNIQUE3203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3203: 
	je	.L259
 jmp .UNIQUE3204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3204: 
	addq	$5, -40(%rbp)
 jmp .UNIQUE3205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3205: 
	movl	$0, -44(%rbp)
 jmp .UNIQUE3206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3206: 
	jmp	.L258
.L259:
 jmp .UNIQUE3207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3207: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE3208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3208: 
	jmp	.L260
.L262:
 jmp .UNIQUE3209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3209: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3210: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE3211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3211: 
	addq	%rdx, %rax
 jmp .UNIQUE3212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3212: 
	movq	%rax, %rdx
 jmp .UNIQUE3213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3213: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3214: 
	addq	%rax, %rdx
 jmp .UNIQUE3215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3215: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3216: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE3217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3217: 
	addq	%rcx, %rax
 jmp .UNIQUE3218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3218: 
	movq	%rax, %rcx
 jmp .UNIQUE3219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3219: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE3220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3220: 
	addq	%rcx, %rax
 jmp .UNIQUE3221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3221: 
	movzbl	(%rax), %eax
 jmp .UNIQUE3222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3222: 
	movb	%al, (%rdx)
 jmp .UNIQUE3223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3223: 
	addq	$1, -32(%rbp)
.L260:
 jmp .UNIQUE3224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3224: 
	cmpq	$2, -32(%rbp)
 jmp .UNIQUE3225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3225: 
	jg	.L261
 jmp .UNIQUE3226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3226: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3227: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE3228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3228: 
	addq	%rdx, %rax
 jmp .UNIQUE3229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3229: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE3230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3230: 
	jl	.L262
.L261:
 jmp .UNIQUE3231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3231: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3232: 
	addq	%rax, -16(%rbp)
 jmp .UNIQUE3233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3233: 
	addq	$1, -24(%rbp)
 jmp .UNIQUE3234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3234: 
	addq	$3, -40(%rbp)
 jmp .UNIQUE3235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3235: 
	movl	$1, -44(%rbp)
.L258:
 jmp .UNIQUE3236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3236: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3237: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE3238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3238: 
	jl	.L263
 jmp .UNIQUE3239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3239: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3240: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3241: 
	ret
	.cfi_endproc
.LFE73:
	.size	insert_data_into_stack_mem, .-insert_data_into_stack_mem
	.globl	get_secure_stack_data
	.type	get_secure_stack_data, @function
get_secure_stack_data:
.LFB74:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3242: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3243: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3244: 
	movq	%rdi, -88(%rbp)
 jmp .UNIQUE3245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3245: 
	movq	%rsi, -96(%rbp)
 jmp .UNIQUE3246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3246: 
	movq	%rdx, -104(%rbp)
 jmp .UNIQUE3247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3247: 
	movl	%ecx, -108(%rbp)
 jmp .UNIQUE3248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3248: 
	movq	%r8, -120(%rbp)
 jmp .UNIQUE3249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3249: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE3250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3250: 
	movl	$0, -68(%rbp)
 jmp .UNIQUE3251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3251: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE3252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3252: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE3253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3253: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE3254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3254: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE3255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3255: 
	cmpl	$2, -108(%rbp)
 jmp .UNIQUE3256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3256: 
	jne	.L266
 jmp .UNIQUE3257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3257: 
	movq	$1, -24(%rbp)
 jmp .UNIQUE3258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3258: 
	jmp	.L267
.L266:
 jmp .UNIQUE3259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3259: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE3260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3260: 
	movq	%rax, -24(%rbp)
.L267:
 jmp .UNIQUE3261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3261: 
	movq	$0, -64(%rbp)
 jmp .UNIQUE3262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3262: 
	cmpl	$0, -108(%rbp)
 jmp .UNIQUE3263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3263: 
	je	.L268
 jmp .UNIQUE3264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3264: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE3265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3265: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE3266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3266: 
	movq	%rax, %rcx
 jmp .UNIQUE3267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3267: 
	movabsq	$6148914691236517206, %rdx
 jmp .UNIQUE3268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3268: 
	movq	%rcx, %rax
 jmp .UNIQUE3269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3269: 
	imulq	%rdx
 jmp .UNIQUE3270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3270: 
	movq	%rcx, %rax
 jmp .UNIQUE3271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3271: 
	sarq	$63, %rax
 jmp .UNIQUE3272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3272: 
	subq	%rax, %rdx
 jmp .UNIQUE3273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3273: 
	movq	%rdx, %rax
 jmp .UNIQUE3274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3274: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3275: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3276: 
	movq	%rdx, %rax
 jmp .UNIQUE3277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3277: 
	addq	%rax, %rax
 jmp .UNIQUE3278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3278: 
	addq	%rax, %rdx
 jmp .UNIQUE3279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3279: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE3280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3280: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE3281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3281: 
	cmpq	%rax, %rdx
 jmp .UNIQUE3282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3282: 
	jne	.L269
 jmp .UNIQUE3283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3283: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3284: 
	salq	$3, %rax
 jmp .UNIQUE3285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3285: 
	addq	%rax, -40(%rbp)
 jmp .UNIQUE3286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3286: 
	jmp	.L268
.L269:
 jmp .UNIQUE3287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3287: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3288: 
	salq	$3, %rax
 jmp .UNIQUE3289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3289: 
	addq	%rax, -40(%rbp)
 jmp .UNIQUE3290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3290: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE3291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3291: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE3292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3292: 
	movq	%rax, %rcx
 jmp .UNIQUE3293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3293: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3294: 
	movl	$0, %eax
 jmp .UNIQUE3295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3295: 
	subq	%rdx, %rax
 jmp .UNIQUE3296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3296: 
	salq	$2, %rax
 jmp .UNIQUE3297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3297: 
	addq	%rdx, %rax
 jmp .UNIQUE3298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3298: 
	addq	%rcx, %rax
 jmp .UNIQUE3299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3299: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE3300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3300: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE3301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3301: 
	jmp	.L270
.L272:
 jmp .UNIQUE3302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3302: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3303: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3304: 
	addq	%rdx, %rax
 jmp .UNIQUE3305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3305: 
	movq	%rax, %rdx
 jmp .UNIQUE3306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3306: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3307: 
	addq	%rax, %rdx
 jmp .UNIQUE3308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3308: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3309: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE3310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3310: 
	addq	%rcx, %rax
 jmp .UNIQUE3311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3311: 
	movq	%rax, %rcx
 jmp .UNIQUE3312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3312: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3313: 
	addq	%rcx, %rax
 jmp .UNIQUE3314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3314: 
	movzbl	(%rax), %eax
 jmp .UNIQUE3315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3315: 
	movb	%al, (%rdx)
 jmp .UNIQUE3316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3316: 
	addq	$1, -48(%rbp)
.L270:
 jmp .UNIQUE3317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3317: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3318: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE3319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3319: 
	addq	%rdx, %rax
 jmp .UNIQUE3320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3320: 
	cmpq	$2, %rax
 jmp .UNIQUE3321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3321: 
	jg	.L271
 jmp .UNIQUE3322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3322: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3323: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3324: 
	addq	%rdx, %rax
 jmp .UNIQUE3325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3325: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE3326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3326: 
	jl	.L272
.L271:
 jmp .UNIQUE3327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3327: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3328: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE3329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3329: 
	addq	$8, -40(%rbp)
 jmp .UNIQUE3330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3330: 
	jmp	.L273
.L268:
 jmp .UNIQUE3331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3331: 
	jmp	.L273
.L278:
 jmp .UNIQUE3332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3332: 
	cmpl	$0, -68(%rbp)
 jmp .UNIQUE3333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3333: 
	je	.L274
 jmp .UNIQUE3334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3334: 
	addq	$5, -64(%rbp)
 jmp .UNIQUE3335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3335: 
	movl	$0, -68(%rbp)
 jmp .UNIQUE3336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3336: 
	jmp	.L273
.L274:
 jmp .UNIQUE3337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3337: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE3338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3338: 
	jmp	.L275
.L277:
 jmp .UNIQUE3339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3339: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3340: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3341: 
	addq	%rdx, %rax
 jmp .UNIQUE3342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3342: 
	movq	%rax, %rdx
 jmp .UNIQUE3343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3343: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3344: 
	addq	%rax, %rdx
 jmp .UNIQUE3345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3345: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3346: 
	movq	-64(%rbp), %rcx
 jmp .UNIQUE3347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3347: 
	addq	%rcx, %rax
 jmp .UNIQUE3348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3348: 
	movq	%rax, %rcx
 jmp .UNIQUE3349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3349: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3350: 
	addq	%rcx, %rax
 jmp .UNIQUE3351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3351: 
	movzbl	(%rax), %eax
 jmp .UNIQUE3352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3352: 
	movb	%al, (%rdx)
 jmp .UNIQUE3353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3353: 
	addq	$1, -56(%rbp)
.L275:
 jmp .UNIQUE3354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3354: 
	cmpq	$2, -56(%rbp)
 jmp .UNIQUE3355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3355: 
	jg	.L276
 jmp .UNIQUE3356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3356: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3357: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3358: 
	addq	%rdx, %rax
 jmp .UNIQUE3359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3359: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE3360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3360: 
	jl	.L277
.L276:
 jmp .UNIQUE3361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3361: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3362: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE3363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3363: 
	addq	$3, -64(%rbp)
 jmp .UNIQUE3364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3364: 
	movl	$1, -68(%rbp)
.L273:
 jmp .UNIQUE3365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3365: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3366: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE3367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3367: 
	jl	.L278
 jmp .UNIQUE3368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3368: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3369: 
	ret
	.cfi_endproc
.LFE74:
	.size	get_secure_stack_data, .-get_secure_stack_data
	.globl	set_secure_stack_data
	.type	set_secure_stack_data, @function
set_secure_stack_data:
.LFB75:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3370: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3371: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3372: 
	movq	%rdi, -88(%rbp)
 jmp .UNIQUE3373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3373: 
	movq	%rsi, -96(%rbp)
 jmp .UNIQUE3374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3374: 
	movq	%rdx, -104(%rbp)
 jmp .UNIQUE3375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3375: 
	movl	%ecx, -108(%rbp)
 jmp .UNIQUE3376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3376: 
	movq	%r8, -120(%rbp)
 jmp .UNIQUE3377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3377: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE3378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3378: 
	movl	$0, -68(%rbp)
 jmp .UNIQUE3379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3379: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE3380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3380: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE3381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3381: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE3382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3382: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE3383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3383: 
	cmpl	$2, -108(%rbp)
 jmp .UNIQUE3384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3384: 
	jne	.L280
 jmp .UNIQUE3385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3385: 
	movq	$1, -24(%rbp)
 jmp .UNIQUE3386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3386: 
	jmp	.L281
.L280:
 jmp .UNIQUE3387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3387: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE3388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3388: 
	movq	%rax, -24(%rbp)
.L281:
 jmp .UNIQUE3389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3389: 
	movq	$0, -64(%rbp)
 jmp .UNIQUE3390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3390: 
	cmpl	$0, -108(%rbp)
 jmp .UNIQUE3391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3391: 
	je	.L282
 jmp .UNIQUE3392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3392: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE3393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3393: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE3394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3394: 
	movq	%rax, %rcx
 jmp .UNIQUE3395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3395: 
	movabsq	$6148914691236517206, %rdx
 jmp .UNIQUE3396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3396: 
	movq	%rcx, %rax
 jmp .UNIQUE3397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3397: 
	imulq	%rdx
 jmp .UNIQUE3398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3398: 
	movq	%rcx, %rax
 jmp .UNIQUE3399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3399: 
	sarq	$63, %rax
 jmp .UNIQUE3400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3400: 
	subq	%rax, %rdx
 jmp .UNIQUE3401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3401: 
	movq	%rdx, %rax
 jmp .UNIQUE3402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3402: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3403: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3404: 
	movq	%rdx, %rax
 jmp .UNIQUE3405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3405: 
	addq	%rax, %rax
 jmp .UNIQUE3406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3406: 
	addq	%rax, %rdx
 jmp .UNIQUE3407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3407: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE3408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3408: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE3409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3409: 
	cmpq	%rax, %rdx
 jmp .UNIQUE3410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3410: 
	jne	.L283
 jmp .UNIQUE3411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3411: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3412: 
	salq	$3, %rax
 jmp .UNIQUE3413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3413: 
	addq	%rax, -40(%rbp)
 jmp .UNIQUE3414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3414: 
	jmp	.L282
.L283:
 jmp .UNIQUE3415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3415: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3416: 
	salq	$3, %rax
 jmp .UNIQUE3417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3417: 
	addq	%rax, -40(%rbp)
 jmp .UNIQUE3418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3418: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE3419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3419: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE3420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3420: 
	movq	%rax, %rcx
 jmp .UNIQUE3421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3421: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3422: 
	movl	$0, %eax
 jmp .UNIQUE3423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3423: 
	subq	%rdx, %rax
 jmp .UNIQUE3424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3424: 
	salq	$2, %rax
 jmp .UNIQUE3425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3425: 
	addq	%rdx, %rax
 jmp .UNIQUE3426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3426: 
	addq	%rcx, %rax
 jmp .UNIQUE3427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3427: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE3428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3428: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE3429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3429: 
	jmp	.L284
.L286:
 jmp .UNIQUE3430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3430: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3431: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE3432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3432: 
	addq	%rdx, %rax
 jmp .UNIQUE3433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3433: 
	movq	%rax, %rdx
 jmp .UNIQUE3434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3434: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3435: 
	addq	%rax, %rdx
 jmp .UNIQUE3436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3436: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3437: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE3438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3438: 
	addq	%rcx, %rax
 jmp .UNIQUE3439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3439: 
	movq	%rax, %rcx
 jmp .UNIQUE3440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3440: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3441: 
	addq	%rcx, %rax
 jmp .UNIQUE3442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3442: 
	movzbl	(%rax), %eax
 jmp .UNIQUE3443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3443: 
	movb	%al, (%rdx)
 jmp .UNIQUE3444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3444: 
	addq	$1, -48(%rbp)
.L284:
 jmp .UNIQUE3445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3445: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3446: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE3447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3447: 
	addq	%rdx, %rax
 jmp .UNIQUE3448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3448: 
	cmpq	$2, %rax
 jmp .UNIQUE3449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3449: 
	jg	.L285
 jmp .UNIQUE3450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3450: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3451: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3452: 
	addq	%rdx, %rax
 jmp .UNIQUE3453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3453: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE3454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3454: 
	jl	.L286
.L285:
 jmp .UNIQUE3455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3455: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3456: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE3457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3457: 
	addq	$8, -40(%rbp)
 jmp .UNIQUE3458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3458: 
	jmp	.L287
.L282:
 jmp .UNIQUE3459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3459: 
	jmp	.L287
.L292:
 jmp .UNIQUE3460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3460: 
	cmpl	$0, -68(%rbp)
 jmp .UNIQUE3461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3461: 
	je	.L288
 jmp .UNIQUE3462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3462: 
	addq	$5, -64(%rbp)
 jmp .UNIQUE3463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3463: 
	movl	$0, -68(%rbp)
 jmp .UNIQUE3464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3464: 
	jmp	.L287
.L288:
 jmp .UNIQUE3465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3465: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE3466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3466: 
	jmp	.L289
.L291:
 jmp .UNIQUE3467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3467: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3468: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE3469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3469: 
	addq	%rdx, %rax
 jmp .UNIQUE3470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3470: 
	movq	%rax, %rdx
 jmp .UNIQUE3471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3471: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3472: 
	addq	%rax, %rdx
 jmp .UNIQUE3473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3473: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3474: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE3475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3475: 
	addq	%rcx, %rax
 jmp .UNIQUE3476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3476: 
	movq	%rax, %rcx
 jmp .UNIQUE3477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3477: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3478: 
	addq	%rcx, %rax
 jmp .UNIQUE3479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3479: 
	movzbl	(%rax), %eax
 jmp .UNIQUE3480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3480: 
	movb	%al, (%rdx)
 jmp .UNIQUE3481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3481: 
	addq	$1, -56(%rbp)
.L289:
 jmp .UNIQUE3482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3482: 
	cmpq	$2, -56(%rbp)
 jmp .UNIQUE3483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3483: 
	jg	.L290
 jmp .UNIQUE3484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3484: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3485: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3486: 
	addq	%rdx, %rax
 jmp .UNIQUE3487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3487: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE3488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3488: 
	jl	.L291
.L290:
 jmp .UNIQUE3489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3489: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3490: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE3491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3491: 
	addq	$3, -64(%rbp)
 jmp .UNIQUE3492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3492: 
	movl	$1, -68(%rbp)
.L287:
 jmp .UNIQUE3493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3493: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3494: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE3495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3495: 
	jl	.L292
 jmp .UNIQUE3496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3496: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3497: 
	ret
	.cfi_endproc
.LFE75:
	.size	set_secure_stack_data, .-set_secure_stack_data
	.globl	allocate_mem_into_secure_stack
	.type	allocate_mem_into_secure_stack, @function
allocate_mem_into_secure_stack:
.LFB76:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3498: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3499: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3500: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE3501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3501: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3502: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE3503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3503: 
	movq	$5, -32(%rbp)
 jmp .UNIQUE3504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3504: 
	movq	$3, -24(%rbp)
 jmp .UNIQUE3505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3505: 
	movq	last_unused_stack_memory(%rip), %rax
 jmp .UNIQUE3506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3506: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3507: 
	cmpq	$0, -56(%rbp)
 jmp .UNIQUE3508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3508: 
	jne	.L294
 jmp .UNIQUE3509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3509: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE3510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3510: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE3511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3511: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3512: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3513: 
	jmp	.L298
.L294:
 jmp .UNIQUE3514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3514: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3515: 
	cqto
 jmp .UNIQUE3516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3516: 
	idivq	-24(%rbp)
 jmp .UNIQUE3517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3517: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE3518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3518: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3519: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE3520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3520: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE3521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3521: 
	jge	.L296
 jmp .UNIQUE3522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3522: 
	addq	$1, -48(%rbp)
.L296:
 jmp .UNIQUE3523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3523: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3524: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE3525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3525: 
	movq	last_unused_stack_memory(%rip), %rdx
 jmp .UNIQUE3526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3526: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3527: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE3528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3528: 
	addq	%rcx, %rax
 jmp .UNIQUE3529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3529: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE3530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3530: 
	addq	%rdx, %rax
 jmp .UNIQUE3531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3531: 
	movq	%rax, last_unused_stack_memory(%rip)
 jmp .UNIQUE3532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3532: 
	movq	entire_stack_memory_chunk(%rip), %rdx
 jmp .UNIQUE3533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3533: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE3534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3534: 
	addq	%rax, %rdx
 jmp .UNIQUE3535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3535: 
	movq	last_unused_stack_memory(%rip), %rax
 jmp .UNIQUE3536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3536: 
	cmpq	%rax, %rdx
 jmp .UNIQUE3537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3537: 
	ja	.L297
 jmp .UNIQUE3538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3538: 
	movq	last_unused_stack_memory(%rip), %rax
 jmp .UNIQUE3539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3539: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3540: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE3541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3541: 
	addq	%rcx, %rdx
 jmp .UNIQUE3542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3542: 
	imulq	-48(%rbp), %rdx
 jmp .UNIQUE3543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3543: 
	negq	%rdx
 jmp .UNIQUE3544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3544: 
	addq	%rdx, %rax
 jmp .UNIQUE3545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3545: 
	movq	%rax, last_unused_stack_memory(%rip)
 jmp .UNIQUE3546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3546: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE3547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3547: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE3548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3548: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3549: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3550: 
	jmp	.L298
.L297:
 jmp .UNIQUE3551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3551: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3552: 
	movq	-8(%rbp), %rdx
.L298:
 jmp .UNIQUE3553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3553: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3554: 
	ret
	.cfi_endproc
.LFE76:
	.size	allocate_mem_into_secure_stack, .-allocate_mem_into_secure_stack
	.globl	free_mem_from_secure_stack
	.type	free_mem_from_secure_stack, @function
free_mem_from_secure_stack:
.LFB77:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3555: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3556: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3557: 
	movq	%rdi, -40(%rbp)
 jmp .UNIQUE3558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3558: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3559: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE3560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3560: 
	movq	$5, -16(%rbp)
 jmp .UNIQUE3561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3561: 
	movq	$3, -8(%rbp)
 jmp .UNIQUE3562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3562: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3563: 
	cqto
 jmp .UNIQUE3564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3564: 
	idivq	-8(%rbp)
 jmp .UNIQUE3565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3565: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE3566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3566: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3567: 
	imulq	-8(%rbp), %rax
 jmp .UNIQUE3568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3568: 
	cmpq	-40(%rbp), %rax
 jmp .UNIQUE3569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3569: 
	jge	.L300
 jmp .UNIQUE3570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3570: 
	addq	$1, -32(%rbp)
.L300:
 jmp .UNIQUE3571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3571: 
	movq	last_unused_stack_memory(%rip), %rax
 jmp .UNIQUE3572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3572: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE3573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3573: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE3574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3574: 
	addq	%rcx, %rdx
 jmp .UNIQUE3575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3575: 
	imulq	-32(%rbp), %rdx
 jmp .UNIQUE3576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3576: 
	negq	%rdx
 jmp .UNIQUE3577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3577: 
	addq	%rdx, %rax
 jmp .UNIQUE3578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3578: 
	movq	%rax, last_unused_stack_memory(%rip)
 jmp .UNIQUE3579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3579: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3580: 
	ret
	.cfi_endproc
.LFE77:
	.size	free_mem_from_secure_stack, .-free_mem_from_secure_stack
	.globl	free_chunks_from_secure_stack
	.type	free_chunks_from_secure_stack, @function
free_chunks_from_secure_stack:
.LFB78:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3581: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3582: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3583: 
	movq	%rdi, -40(%rbp)
 jmp .UNIQUE3584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3584: 
	movq	$5, -24(%rbp)
 jmp .UNIQUE3585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3585: 
	movq	$3, -16(%rbp)
 jmp .UNIQUE3586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3586: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3587: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3588: 
	movq	last_unused_stack_memory(%rip), %rax
 jmp .UNIQUE3589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3589: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE3590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3590: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE3591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3591: 
	addq	%rcx, %rdx
 jmp .UNIQUE3592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3592: 
	imulq	-8(%rbp), %rdx
 jmp .UNIQUE3593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3593: 
	negq	%rdx
 jmp .UNIQUE3594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3594: 
	addq	%rdx, %rax
 jmp .UNIQUE3595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3595: 
	movq	%rax, last_unused_stack_memory(%rip)
 jmp .UNIQUE3596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3596: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3597: 
	ret
	.cfi_endproc
.LFE78:
	.size	free_chunks_from_secure_stack, .-free_chunks_from_secure_stack
	.globl	init_function_params
	.type	init_function_params, @function
init_function_params:
.LFB79:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3598: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3599: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3600: 
	pushq	%rbx
 jmp .UNIQUE3601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3601: 
	subq	$264, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE3602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3602: 
	movq	%rsi, -184(%rbp)
 jmp .UNIQUE3603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3603: 
	movq	%rdx, -176(%rbp)
 jmp .UNIQUE3604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3604: 
	movq	%rcx, -168(%rbp)
 jmp .UNIQUE3605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3605: 
	movq	%r8, -160(%rbp)
 jmp .UNIQUE3606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3606: 
	movq	%r9, -152(%rbp)
 jmp .UNIQUE3607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3607: 
	testb	%al, %al
 jmp .UNIQUE3608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3608: 
	je	.L303
 jmp .UNIQUE3609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3609: 
	movaps	%xmm0, -144(%rbp)
 jmp .UNIQUE3610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3610: 
	movaps	%xmm1, -128(%rbp)
 jmp .UNIQUE3611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3611: 
	movaps	%xmm2, -112(%rbp)
 jmp .UNIQUE3612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3612: 
	movaps	%xmm3, -96(%rbp)
 jmp .UNIQUE3613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3613: 
	movaps	%xmm4, -80(%rbp)
 jmp .UNIQUE3614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3614: 
	movaps	%xmm5, -64(%rbp)
 jmp .UNIQUE3615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3615: 
	movaps	%xmm6, -48(%rbp)
 jmp .UNIQUE3616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3616: 
	movaps	%xmm7, -32(%rbp)
.L303:
 jmp .UNIQUE3617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3617: 
	movl	%edi, -260(%rbp)
 jmp .UNIQUE3618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3618: 
	movq	$0, -248(%rbp)
 jmp .UNIQUE3619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3619: 
	movq	$-1, -240(%rbp)
 jmp .UNIQUE3620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3620: 
	movl	$8, -216(%rbp)
 jmp .UNIQUE3621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3621: 
	movl	$48, -212(%rbp)
 jmp .UNIQUE3622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3622: 
	leaq	16(%rbp), %rax
 jmp .UNIQUE3623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3623: 
	movq	%rax, -208(%rbp)
 jmp .UNIQUE3624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3624: 
	leaq	-192(%rbp), %rax
 jmp .UNIQUE3625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3625: 
	movq	%rax, -200(%rbp)
 jmp .UNIQUE3626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3626: 
	movl	$555, %edx
 jmp .UNIQUE3627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3627: 
	movl	$__func__.4610, %esi
 jmp .UNIQUE3628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3628: 
	movl	$24, %edi
 jmp .UNIQUE3629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3629: 
	call	error_checking_malloc
 jmp .UNIQUE3630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3630: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE3631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3631: 
	cmpl	$0, -260(%rbp)
 jmp .UNIQUE3632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3632: 
	je	.L304
 jmp .UNIQUE3633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3633: 
	movl	$558, %edx
 jmp .UNIQUE3634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3634: 
	movl	$__func__.4610, %esi
 jmp .UNIQUE3635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3635: 
	movl	$128, %edi
 jmp .UNIQUE3636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3636: 
	call	error_checking_malloc
 jmp .UNIQUE3637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3637: 
	movq	-232(%rbp), %rdx
 jmp .UNIQUE3638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3638: 
	movq	%rax, 16(%rdx)
 jmp .UNIQUE3639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3639: 
	jmp	.L305
.L304:
 jmp .UNIQUE3640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3640: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3641: 
	movq	$0, 16(%rax)
.L305:
 jmp .UNIQUE3642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3642: 
	cmpl	$0, -260(%rbp)
 jmp .UNIQUE3643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3643: 
	je	.L306
 jmp .UNIQUE3644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3644: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3645: 
	movq	16(%rax), %rcx
 jmp .UNIQUE3646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3646: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3647: 
	cmpl	$48, %eax
 jmp .UNIQUE3648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3648: 
	jnb	.L307
 jmp .UNIQUE3649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3649: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3650: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3651: 
	movl	%eax, %eax
 jmp .UNIQUE3652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3652: 
	addq	%rdx, %rax
 jmp .UNIQUE3653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3653: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3654: 
	addl	$8, %edx
 jmp .UNIQUE3655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3655: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3656: 
	jmp	.L308
.L307:
 jmp .UNIQUE3657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3657: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3658: 
	movq	%rdx, %rax
 jmp .UNIQUE3659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3659: 
	addq	$8, %rdx
 jmp .UNIQUE3660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3660: 
	movq	%rdx, -208(%rbp)
.L308:
 jmp .UNIQUE3661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3661: 
	movq	(%rax), %rax
 jmp .UNIQUE3662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3662: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3663: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3664: 
	movq	%rax, (%rcx)
 jmp .UNIQUE3665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3665: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE3666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3666: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3667: 
	addq	%rdx, %rax
 jmp .UNIQUE3668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3668: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE3669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3669: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE3670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3670: 
	je	.L309
 jmp .UNIQUE3671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3671: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3672: 
	movq	16(%rax), %rbx
 jmp .UNIQUE3673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3673: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3674: 
	movl	$570, %edx
 jmp .UNIQUE3675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3675: 
	movl	$__func__.4610, %esi
 jmp .UNIQUE3676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3676: 
	movq	%rax, %rdi
 jmp .UNIQUE3677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3677: 
	call	error_checking_malloc
 jmp .UNIQUE3678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3678: 
	movq	%rax, 8(%rbx)
 jmp .UNIQUE3679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3679: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE3680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3680: 
	jmp	.L310
.L313:
 jmp .UNIQUE3681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3681: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3682: 
	movq	16(%rax), %rax
 jmp .UNIQUE3683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3683: 
	movq	8(%rax), %rdx
 jmp .UNIQUE3684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3684: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE3685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3685: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE3686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3686: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3687: 
	cmpl	$48, %eax
 jmp .UNIQUE3688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3688: 
	jnb	.L311
 jmp .UNIQUE3689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3689: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3690: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3691: 
	movl	%eax, %eax
 jmp .UNIQUE3692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3692: 
	addq	%rdx, %rax
 jmp .UNIQUE3693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3693: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3694: 
	addl	$8, %edx
 jmp .UNIQUE3695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3695: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3696: 
	jmp	.L312
.L311:
 jmp .UNIQUE3697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3697: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3698: 
	movq	%rdx, %rax
 jmp .UNIQUE3699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3699: 
	addq	$8, %rdx
 jmp .UNIQUE3700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3700: 
	movq	%rdx, -208(%rbp)
.L312:
 jmp .UNIQUE3701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3701: 
	movl	(%rax), %eax
 jmp .UNIQUE3702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3702: 
	movb	%al, (%rcx)
 jmp .UNIQUE3703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3703: 
	addq	$1, -256(%rbp)
.L310:
 jmp .UNIQUE3704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3704: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE3705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3705: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3706: 
	jl	.L313
 jmp .UNIQUE3707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3707: 
	jmp	.L314
.L309:
 jmp .UNIQUE3708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3708: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3709: 
	movq	16(%rax), %rax
 jmp .UNIQUE3710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3710: 
	movq	$0, 8(%rax)
.L314:
 jmp .UNIQUE3711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3711: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3712: 
	movq	16(%rax), %rcx
 jmp .UNIQUE3713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3713: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3714: 
	cmpl	$48, %eax
 jmp .UNIQUE3715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3715: 
	jnb	.L315
 jmp .UNIQUE3716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3716: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3717: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3718: 
	movl	%eax, %eax
 jmp .UNIQUE3719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3719: 
	addq	%rdx, %rax
 jmp .UNIQUE3720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3720: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3721: 
	addl	$8, %edx
 jmp .UNIQUE3722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3722: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3723: 
	jmp	.L316
.L315:
 jmp .UNIQUE3724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3724: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3725: 
	movq	%rdx, %rax
 jmp .UNIQUE3726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3726: 
	addq	$8, %rdx
 jmp .UNIQUE3727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3727: 
	movq	%rdx, -208(%rbp)
.L316:
 jmp .UNIQUE3728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3728: 
	movq	(%rax), %rax
 jmp .UNIQUE3729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3729: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3730: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3731: 
	movq	%rax, 16(%rcx)
 jmp .UNIQUE3732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3732: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3733: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE3734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3734: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE3735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3735: 
	addq	%rdx, %rax
 jmp .UNIQUE3736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3736: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE3737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3737: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE3738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3738: 
	je	.L317
 jmp .UNIQUE3739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3739: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3740: 
	movq	16(%rax), %rbx
 jmp .UNIQUE3741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3741: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3742: 
	salq	$2, %rax
 jmp .UNIQUE3743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3743: 
	movl	$586, %edx
 jmp .UNIQUE3744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3744: 
	movl	$__func__.4610, %esi
 jmp .UNIQUE3745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3745: 
	movq	%rax, %rdi
 jmp .UNIQUE3746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3746: 
	call	error_checking_malloc
 jmp .UNIQUE3747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3747: 
	movq	%rax, 24(%rbx)
 jmp .UNIQUE3748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3748: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE3749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3749: 
	jmp	.L318
.L321:
 jmp .UNIQUE3750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3750: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3751: 
	movq	16(%rax), %rax
 jmp .UNIQUE3752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3752: 
	movq	24(%rax), %rax
 jmp .UNIQUE3753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3753: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE3754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3754: 
	salq	$2, %rdx
 jmp .UNIQUE3755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3755: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE3756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3756: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3757: 
	cmpl	$48, %eax
 jmp .UNIQUE3758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3758: 
	jnb	.L319
 jmp .UNIQUE3759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3759: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3760: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3761: 
	movl	%eax, %eax
 jmp .UNIQUE3762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3762: 
	addq	%rdx, %rax
 jmp .UNIQUE3763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3763: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3764: 
	addl	$8, %edx
 jmp .UNIQUE3765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3765: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3766: 
	jmp	.L320
.L319:
 jmp .UNIQUE3767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3767: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3768: 
	movq	%rdx, %rax
 jmp .UNIQUE3769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3769: 
	addq	$8, %rdx
 jmp .UNIQUE3770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3770: 
	movq	%rdx, -208(%rbp)
.L320:
 jmp .UNIQUE3771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3771: 
	movl	(%rax), %eax
 jmp .UNIQUE3772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3772: 
	movl	%eax, (%rcx)
 jmp .UNIQUE3773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3773: 
	addq	$1, -256(%rbp)
.L318:
 jmp .UNIQUE3774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3774: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE3775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3775: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3776: 
	jl	.L321
 jmp .UNIQUE3777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3777: 
	jmp	.L322
.L317:
 jmp .UNIQUE3778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3778: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3779: 
	movq	16(%rax), %rax
 jmp .UNIQUE3780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3780: 
	movq	$0, 24(%rax)
.L322:
 jmp .UNIQUE3781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3781: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3782: 
	movq	16(%rax), %rcx
 jmp .UNIQUE3783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3783: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3784: 
	cmpl	$48, %eax
 jmp .UNIQUE3785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3785: 
	jnb	.L323
 jmp .UNIQUE3786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3786: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3787: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3788: 
	movl	%eax, %eax
 jmp .UNIQUE3789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3789: 
	addq	%rdx, %rax
 jmp .UNIQUE3790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3790: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3791: 
	addl	$8, %edx
 jmp .UNIQUE3792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3792: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3793: 
	jmp	.L324
.L323:
 jmp .UNIQUE3794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3794: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3795: 
	movq	%rdx, %rax
 jmp .UNIQUE3796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3796: 
	addq	$8, %rdx
 jmp .UNIQUE3797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3797: 
	movq	%rdx, -208(%rbp)
.L324:
 jmp .UNIQUE3798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3798: 
	movq	(%rax), %rax
 jmp .UNIQUE3799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3799: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3800: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3801: 
	movq	%rax, 32(%rcx)
 jmp .UNIQUE3802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3802: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3803: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3804: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE3805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3805: 
	addq	%rdx, %rax
 jmp .UNIQUE3806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3806: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE3807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3807: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE3808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3808: 
	je	.L325
 jmp .UNIQUE3809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3809: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3810: 
	movq	16(%rax), %rbx
 jmp .UNIQUE3811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3811: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3812: 
	salq	$3, %rax
 jmp .UNIQUE3813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3813: 
	movl	$602, %edx
 jmp .UNIQUE3814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3814: 
	movl	$__func__.4610, %esi
 jmp .UNIQUE3815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3815: 
	movq	%rax, %rdi
 jmp .UNIQUE3816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3816: 
	call	error_checking_malloc
 jmp .UNIQUE3817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3817: 
	movq	%rax, 40(%rbx)
 jmp .UNIQUE3818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3818: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE3819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3819: 
	jmp	.L326
.L329:
 jmp .UNIQUE3820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3820: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3821: 
	movq	16(%rax), %rax
 jmp .UNIQUE3822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3822: 
	movq	40(%rax), %rax
 jmp .UNIQUE3823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3823: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE3824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3824: 
	salq	$3, %rdx
 jmp .UNIQUE3825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3825: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE3826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3826: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3827: 
	cmpl	$48, %eax
 jmp .UNIQUE3828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3828: 
	jnb	.L327
 jmp .UNIQUE3829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3829: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3830: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3831: 
	movl	%eax, %eax
 jmp .UNIQUE3832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3832: 
	addq	%rdx, %rax
 jmp .UNIQUE3833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3833: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3834: 
	addl	$8, %edx
 jmp .UNIQUE3835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3835: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3836: 
	jmp	.L328
.L327:
 jmp .UNIQUE3837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3837: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3838: 
	movq	%rdx, %rax
 jmp .UNIQUE3839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3839: 
	addq	$8, %rdx
 jmp .UNIQUE3840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3840: 
	movq	%rdx, -208(%rbp)
.L328:
 jmp .UNIQUE3841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3841: 
	movq	(%rax), %rax
 jmp .UNIQUE3842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3842: 
	movq	%rax, (%rcx)
 jmp .UNIQUE3843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3843: 
	addq	$1, -256(%rbp)
.L326:
 jmp .UNIQUE3844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3844: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE3845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3845: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3846: 
	jl	.L329
 jmp .UNIQUE3847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3847: 
	jmp	.L330
.L325:
 jmp .UNIQUE3848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3848: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3849: 
	movq	16(%rax), %rax
 jmp .UNIQUE3850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3850: 
	movq	$0, 40(%rax)
.L330:
 jmp .UNIQUE3851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3851: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3852: 
	movq	16(%rax), %rcx
 jmp .UNIQUE3853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3853: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3854: 
	cmpl	$48, %eax
 jmp .UNIQUE3855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3855: 
	jnb	.L331
 jmp .UNIQUE3856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3856: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3857: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3858: 
	movl	%eax, %eax
 jmp .UNIQUE3859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3859: 
	addq	%rdx, %rax
 jmp .UNIQUE3860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3860: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3861: 
	addl	$8, %edx
 jmp .UNIQUE3862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3862: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3863: 
	jmp	.L332
.L331:
 jmp .UNIQUE3864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3864: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3865: 
	movq	%rdx, %rax
 jmp .UNIQUE3866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3866: 
	addq	$8, %rdx
 jmp .UNIQUE3867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3867: 
	movq	%rdx, -208(%rbp)
.L332:
 jmp .UNIQUE3868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3868: 
	movq	(%rax), %rax
 jmp .UNIQUE3869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3869: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3870: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3871: 
	movq	%rax, 48(%rcx)
 jmp .UNIQUE3872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3872: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3873: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE3874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3874: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE3875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3875: 
	addq	%rdx, %rax
 jmp .UNIQUE3876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3876: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE3877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3877: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE3878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3878: 
	je	.L333
 jmp .UNIQUE3879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3879: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3880: 
	movq	16(%rax), %rbx
 jmp .UNIQUE3881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3881: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3882: 
	salq	$2, %rax
 jmp .UNIQUE3883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3883: 
	movl	$618, %edx
 jmp .UNIQUE3884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3884: 
	movl	$__func__.4610, %esi
 jmp .UNIQUE3885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3885: 
	movq	%rax, %rdi
 jmp .UNIQUE3886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3886: 
	call	error_checking_malloc
 jmp .UNIQUE3887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3887: 
	movq	%rax, 56(%rbx)
 jmp .UNIQUE3888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3888: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE3889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3889: 
	jmp	.L334
.L337:
 jmp .UNIQUE3890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3890: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3891: 
	movq	16(%rax), %rax
 jmp .UNIQUE3892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3892: 
	movq	56(%rax), %rax
 jmp .UNIQUE3893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3893: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE3894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3894: 
	salq	$2, %rdx
 jmp .UNIQUE3895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3895: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE3896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3896: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE3897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3897: 
	cmpl	$176, %eax
 jmp .UNIQUE3898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3898: 
	jnb	.L335
 jmp .UNIQUE3899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3899: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3900: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE3901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3901: 
	movl	%eax, %eax
 jmp .UNIQUE3902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3902: 
	addq	%rdx, %rax
 jmp .UNIQUE3903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3903: 
	movl	-212(%rbp), %edx
 jmp .UNIQUE3904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3904: 
	addl	$16, %edx
 jmp .UNIQUE3905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3905: 
	movl	%edx, -212(%rbp)
 jmp .UNIQUE3906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3906: 
	jmp	.L336
.L335:
 jmp .UNIQUE3907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3907: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3908: 
	movq	%rdx, %rax
 jmp .UNIQUE3909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3909: 
	addq	$8, %rdx
 jmp .UNIQUE3910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3910: 
	movq	%rdx, -208(%rbp)
.L336:
 jmp .UNIQUE3911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3911: 
	movsd	(%rax), %xmm0
 jmp .UNIQUE3912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3912: 
	unpcklpd	%xmm0, %xmm0
 jmp .UNIQUE3913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3913: 
	cvtpd2ps	%xmm0, %xmm0
 jmp .UNIQUE3914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3914: 
	movss	%xmm0, (%rcx)
 jmp .UNIQUE3915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3915: 
	addq	$1, -256(%rbp)
.L334:
 jmp .UNIQUE3916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3916: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE3917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3917: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3918: 
	jl	.L337
 jmp .UNIQUE3919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3919: 
	jmp	.L338
.L333:
 jmp .UNIQUE3920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3920: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3921: 
	movq	16(%rax), %rax
 jmp .UNIQUE3922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3922: 
	movq	$0, 56(%rax)
.L338:
 jmp .UNIQUE3923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3923: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3924: 
	movq	16(%rax), %rcx
 jmp .UNIQUE3925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3925: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3926: 
	cmpl	$48, %eax
 jmp .UNIQUE3927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3927: 
	jnb	.L339
 jmp .UNIQUE3928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3928: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3929: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3930: 
	movl	%eax, %eax
 jmp .UNIQUE3931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3931: 
	addq	%rdx, %rax
 jmp .UNIQUE3932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3932: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3933: 
	addl	$8, %edx
 jmp .UNIQUE3934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3934: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3935: 
	jmp	.L340
.L339:
 jmp .UNIQUE3936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3936: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3937: 
	movq	%rdx, %rax
 jmp .UNIQUE3938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3938: 
	addq	$8, %rdx
 jmp .UNIQUE3939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3939: 
	movq	%rdx, -208(%rbp)
.L340:
 jmp .UNIQUE3940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3940: 
	movq	(%rax), %rax
 jmp .UNIQUE3941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3941: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3942: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3943: 
	movq	%rax, 64(%rcx)
 jmp .UNIQUE3944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3944: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3945: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3946: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE3947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3947: 
	addq	%rdx, %rax
 jmp .UNIQUE3948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3948: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE3949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3949: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE3950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3950: 
	je	.L341
 jmp .UNIQUE3951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3951: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3952: 
	movq	16(%rax), %rbx
 jmp .UNIQUE3953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3953: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3954: 
	salq	$3, %rax
 jmp .UNIQUE3955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3955: 
	movl	$634, %edx
 jmp .UNIQUE3956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3956: 
	movl	$__func__.4610, %esi
 jmp .UNIQUE3957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3957: 
	movq	%rax, %rdi
 jmp .UNIQUE3958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3958: 
	call	error_checking_malloc
 jmp .UNIQUE3959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3959: 
	movq	%rax, 72(%rbx)
 jmp .UNIQUE3960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3960: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE3961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3961: 
	jmp	.L342
.L345:
 jmp .UNIQUE3962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3962: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3963: 
	movq	16(%rax), %rax
 jmp .UNIQUE3964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3964: 
	movq	72(%rax), %rax
 jmp .UNIQUE3965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3965: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE3966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3966: 
	salq	$3, %rdx
 jmp .UNIQUE3967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3967: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE3968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3968: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE3969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3969: 
	cmpl	$176, %eax
 jmp .UNIQUE3970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3970: 
	jnb	.L343
 jmp .UNIQUE3971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3971: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3972: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE3973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3973: 
	movl	%eax, %eax
 jmp .UNIQUE3974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3974: 
	addq	%rdx, %rax
 jmp .UNIQUE3975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3975: 
	movl	-212(%rbp), %edx
 jmp .UNIQUE3976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3976: 
	addl	$16, %edx
 jmp .UNIQUE3977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3977: 
	movl	%edx, -212(%rbp)
 jmp .UNIQUE3978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3978: 
	jmp	.L344
.L343:
 jmp .UNIQUE3979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3979: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3980: 
	movq	%rdx, %rax
 jmp .UNIQUE3981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3981: 
	addq	$8, %rdx
 jmp .UNIQUE3982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3982: 
	movq	%rdx, -208(%rbp)
.L344:
 jmp .UNIQUE3983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3983: 
	movq	(%rax), %rax
 jmp .UNIQUE3984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3984: 
	movq	%rax, (%rcx)
 jmp .UNIQUE3985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3985: 
	addq	$1, -256(%rbp)
.L342:
 jmp .UNIQUE3986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3986: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE3987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3987: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3988: 
	jl	.L345
 jmp .UNIQUE3989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3989: 
	jmp	.L346
.L341:
 jmp .UNIQUE3990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3990: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3991: 
	movq	16(%rax), %rax
 jmp .UNIQUE3992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3992: 
	movq	$0, 72(%rax)
.L346:
 jmp .UNIQUE3993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3993: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3994: 
	movq	16(%rax), %rcx
 jmp .UNIQUE3995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3995: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3996: 
	cmpl	$48, %eax
 jmp .UNIQUE3997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3997: 
	jnb	.L347
 jmp .UNIQUE3998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3998: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3999: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4000: 
	movl	%eax, %eax
 jmp .UNIQUE4001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4001: 
	addq	%rdx, %rax
 jmp .UNIQUE4002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4002: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4003: 
	addl	$8, %edx
 jmp .UNIQUE4004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4004: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4005: 
	jmp	.L348
.L347:
 jmp .UNIQUE4006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4006: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4007: 
	movq	%rdx, %rax
 jmp .UNIQUE4008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4008: 
	addq	$8, %rdx
 jmp .UNIQUE4009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4009: 
	movq	%rdx, -208(%rbp)
.L348:
 jmp .UNIQUE4010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4010: 
	movq	(%rax), %rax
 jmp .UNIQUE4011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4011: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4012: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4013: 
	movq	%rax, 80(%rcx)
 jmp .UNIQUE4014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4014: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4015: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4016: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE4017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4017: 
	addq	%rdx, %rax
 jmp .UNIQUE4018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4018: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE4019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4019: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE4020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4020: 
	je	.L349
 jmp .UNIQUE4021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4021: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4022: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4023: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4024: 
	salq	$3, %rax
 jmp .UNIQUE4025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4025: 
	movl	$651, %edx
 jmp .UNIQUE4026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4026: 
	movl	$__func__.4610, %esi
 jmp .UNIQUE4027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4027: 
	movq	%rax, %rdi
 jmp .UNIQUE4028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4028: 
	call	error_checking_malloc
 jmp .UNIQUE4029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4029: 
	movq	%rax, 88(%rbx)
 jmp .UNIQUE4030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4030: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4031: 
	jmp	.L350
.L353:
 jmp .UNIQUE4032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4032: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4033: 
	movq	16(%rax), %rax
 jmp .UNIQUE4034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4034: 
	movq	88(%rax), %rax
 jmp .UNIQUE4035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4035: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4036: 
	salq	$3, %rdx
 jmp .UNIQUE4037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4037: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4038: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4039: 
	cmpl	$48, %eax
 jmp .UNIQUE4040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4040: 
	jnb	.L351
 jmp .UNIQUE4041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4041: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4042: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4043: 
	movl	%eax, %eax
 jmp .UNIQUE4044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4044: 
	addq	%rdx, %rax
 jmp .UNIQUE4045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4045: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4046: 
	addl	$8, %edx
 jmp .UNIQUE4047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4047: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4048: 
	jmp	.L352
.L351:
 jmp .UNIQUE4049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4049: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4050: 
	movq	%rdx, %rax
 jmp .UNIQUE4051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4051: 
	addq	$8, %rdx
 jmp .UNIQUE4052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4052: 
	movq	%rdx, -208(%rbp)
.L352:
 jmp .UNIQUE4053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4053: 
	movq	(%rax), %rax
 jmp .UNIQUE4054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4054: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4055: 
	addq	$1, -256(%rbp)
.L350:
 jmp .UNIQUE4056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4056: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4057: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4058: 
	jl	.L353
 jmp .UNIQUE4059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4059: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4060: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4061: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4062: 
	salq	$3, %rax
 jmp .UNIQUE4063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4063: 
	movl	$656, %edx
 jmp .UNIQUE4064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4064: 
	movl	$__func__.4610, %esi
 jmp .UNIQUE4065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4065: 
	movq	%rax, %rdi
 jmp .UNIQUE4066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4066: 
	call	error_checking_malloc
 jmp .UNIQUE4067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4067: 
	movq	%rax, 96(%rbx)
 jmp .UNIQUE4068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4068: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4069: 
	jmp	.L354
.L357:
 jmp .UNIQUE4070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4070: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4071: 
	movq	16(%rax), %rax
 jmp .UNIQUE4072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4072: 
	movq	96(%rax), %rax
 jmp .UNIQUE4073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4073: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4074: 
	salq	$3, %rdx
 jmp .UNIQUE4075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4075: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4076: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4077: 
	cmpl	$48, %eax
 jmp .UNIQUE4078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4078: 
	jnb	.L355
 jmp .UNIQUE4079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4079: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4080: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4081: 
	movl	%eax, %eax
 jmp .UNIQUE4082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4082: 
	addq	%rdx, %rax
 jmp .UNIQUE4083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4083: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4084: 
	addl	$8, %edx
 jmp .UNIQUE4085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4085: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4086: 
	jmp	.L356
.L355:
 jmp .UNIQUE4087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4087: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4088: 
	movq	%rdx, %rax
 jmp .UNIQUE4089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4089: 
	addq	$8, %rdx
 jmp .UNIQUE4090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4090: 
	movq	%rdx, -208(%rbp)
.L356:
 jmp .UNIQUE4091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4091: 
	movq	(%rax), %rax
 jmp .UNIQUE4092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4092: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4093: 
	addq	$1, -256(%rbp)
.L354:
 jmp .UNIQUE4094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4094: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4095: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4096: 
	jl	.L357
 jmp .UNIQUE4097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4097: 
	jmp	.L358
.L349:
 jmp .UNIQUE4098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4098: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4099: 
	movq	16(%rax), %rax
 jmp .UNIQUE4100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4100: 
	movq	$0, 88(%rax)
 jmp .UNIQUE4101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4101: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4102: 
	movq	16(%rax), %rax
 jmp .UNIQUE4103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4103: 
	movq	$0, 96(%rax)
.L358:
 jmp .UNIQUE4104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4104: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4105: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4106: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4107: 
	cmpl	$48, %eax
 jmp .UNIQUE4108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4108: 
	jnb	.L359
 jmp .UNIQUE4109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4109: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4110: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4111: 
	movl	%eax, %eax
 jmp .UNIQUE4112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4112: 
	addq	%rdx, %rax
 jmp .UNIQUE4113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4113: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4114: 
	addl	$8, %edx
 jmp .UNIQUE4115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4115: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4116: 
	jmp	.L360
.L359:
 jmp .UNIQUE4117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4117: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4118: 
	movq	%rdx, %rax
 jmp .UNIQUE4119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4119: 
	addq	$8, %rdx
 jmp .UNIQUE4120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4120: 
	movq	%rdx, -208(%rbp)
.L360:
 jmp .UNIQUE4121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4121: 
	movq	(%rax), %rax
 jmp .UNIQUE4122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4122: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4123: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4124: 
	movq	%rax, 104(%rcx)
 jmp .UNIQUE4125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4125: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE4126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4126: 
	je	.L361
 jmp .UNIQUE4127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4127: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4128: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4129: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4130: 
	salq	$3, %rax
 jmp .UNIQUE4131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4131: 
	movl	$673, %edx
 jmp .UNIQUE4132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4132: 
	movl	$__func__.4610, %esi
 jmp .UNIQUE4133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4133: 
	movq	%rax, %rdi
 jmp .UNIQUE4134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4134: 
	call	error_checking_malloc
 jmp .UNIQUE4135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4135: 
	movq	%rax, 112(%rbx)
 jmp .UNIQUE4136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4136: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4137: 
	jmp	.L362
.L365:
 jmp .UNIQUE4138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4138: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4139: 
	movq	16(%rax), %rax
 jmp .UNIQUE4140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4140: 
	movq	112(%rax), %rax
 jmp .UNIQUE4141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4141: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4142: 
	salq	$3, %rdx
 jmp .UNIQUE4143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4143: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4144: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4145: 
	cmpl	$48, %eax
 jmp .UNIQUE4146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4146: 
	jnb	.L363
 jmp .UNIQUE4147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4147: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4148: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4149: 
	movl	%eax, %eax
 jmp .UNIQUE4150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4150: 
	addq	%rdx, %rax
 jmp .UNIQUE4151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4151: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4152: 
	addl	$8, %edx
 jmp .UNIQUE4153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4153: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4154: 
	jmp	.L364
.L363:
 jmp .UNIQUE4155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4155: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4156: 
	movq	%rdx, %rax
 jmp .UNIQUE4157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4157: 
	addq	$8, %rdx
 jmp .UNIQUE4158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4158: 
	movq	%rdx, -208(%rbp)
.L364:
 jmp .UNIQUE4159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4159: 
	movq	(%rax), %rax
 jmp .UNIQUE4160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4160: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4161: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4162: 
	movq	16(%rax), %rax
 jmp .UNIQUE4163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4163: 
	movq	112(%rax), %rax
 jmp .UNIQUE4164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4164: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4165: 
	salq	$3, %rdx
 jmp .UNIQUE4166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4166: 
	addq	%rdx, %rax
 jmp .UNIQUE4167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4167: 
	movq	(%rax), %rax
 jmp .UNIQUE4168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4168: 
	addq	%rax, -248(%rbp)
 jmp .UNIQUE4169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4169: 
	addq	$1, -256(%rbp)
.L362:
 jmp .UNIQUE4170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4170: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4171: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4172: 
	jl	.L365
 jmp .UNIQUE4173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4173: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4174: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4175: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4176: 
	salq	$3, %rax
 jmp .UNIQUE4177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4177: 
	movl	$680, %edx
 jmp .UNIQUE4178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4178: 
	movl	$__func__.4610, %esi
 jmp .UNIQUE4179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4179: 
	movq	%rax, %rdi
 jmp .UNIQUE4180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4180: 
	call	error_checking_malloc
 jmp .UNIQUE4181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4181: 
	movq	%rax, 120(%rbx)
 jmp .UNIQUE4182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4182: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4183: 
	jmp	.L366
.L369:
 jmp .UNIQUE4184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4184: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4185: 
	movq	16(%rax), %rax
 jmp .UNIQUE4186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4186: 
	movq	120(%rax), %rax
 jmp .UNIQUE4187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4187: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4188: 
	salq	$3, %rdx
 jmp .UNIQUE4189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4189: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4190: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4191: 
	cmpl	$48, %eax
 jmp .UNIQUE4192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4192: 
	jnb	.L367
 jmp .UNIQUE4193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4193: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4194: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4195: 
	movl	%eax, %eax
 jmp .UNIQUE4196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4196: 
	addq	%rdx, %rax
 jmp .UNIQUE4197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4197: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4198: 
	addl	$8, %edx
 jmp .UNIQUE4199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4199: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4200: 
	jmp	.L368
.L367:
 jmp .UNIQUE4201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4201: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4202: 
	movq	%rdx, %rax
 jmp .UNIQUE4203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4203: 
	addq	$8, %rdx
 jmp .UNIQUE4204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4204: 
	movq	%rdx, -208(%rbp)
.L368:
 jmp .UNIQUE4205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4205: 
	movq	(%rax), %rax
 jmp .UNIQUE4206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4206: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4207: 
	addq	$1, -256(%rbp)
.L366:
 jmp .UNIQUE4208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4208: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4209: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4210: 
	jl	.L369
 jmp .UNIQUE4211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4211: 
	jmp	.L306
.L361:
 jmp .UNIQUE4212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4212: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4213: 
	movq	16(%rax), %rax
 jmp .UNIQUE4214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4214: 
	movq	$0, 112(%rax)
 jmp .UNIQUE4215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4215: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4216: 
	movq	16(%rax), %rax
 jmp .UNIQUE4217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4217: 
	movq	$0, 120(%rax)
.L306:
 jmp .UNIQUE4218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4218: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4219: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE4220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4220: 
	movq	%rdx, (%rax)
 jmp .UNIQUE4221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4221: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4222: 
	movq	-240(%rbp), %rdx
 jmp .UNIQUE4223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4223: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE4224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4224: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4225: 
	addq	$264, %rsp
 jmp .UNIQUE4226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4226: 
	popq	%rbx
 jmp .UNIQUE4227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4227: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE4228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4228: 
	ret
	.cfi_endproc
.LFE79:
	.size	init_function_params, .-init_function_params
	.globl	init_function_params_with_uninitialised_elements
	.type	init_function_params_with_uninitialised_elements, @function
init_function_params_with_uninitialised_elements:
.LFB80:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE4229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4229: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE4230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4230: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE4231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4231: 
	pushq	%rbx
 jmp .UNIQUE4232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4232: 
	subq	$280, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE4233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4233: 
	movq	%rsi, -184(%rbp)
 jmp .UNIQUE4234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4234: 
	movq	%rdx, -176(%rbp)
 jmp .UNIQUE4235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4235: 
	movq	%rcx, -168(%rbp)
 jmp .UNIQUE4236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4236: 
	movq	%r8, -160(%rbp)
 jmp .UNIQUE4237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4237: 
	movq	%r9, -152(%rbp)
 jmp .UNIQUE4238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4238: 
	testb	%al, %al
 jmp .UNIQUE4239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4239: 
	je	.L372
 jmp .UNIQUE4240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4240: 
	movaps	%xmm0, -144(%rbp)
 jmp .UNIQUE4241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4241: 
	movaps	%xmm1, -128(%rbp)
 jmp .UNIQUE4242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4242: 
	movaps	%xmm2, -112(%rbp)
 jmp .UNIQUE4243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4243: 
	movaps	%xmm3, -96(%rbp)
 jmp .UNIQUE4244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4244: 
	movaps	%xmm4, -80(%rbp)
 jmp .UNIQUE4245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4245: 
	movaps	%xmm5, -64(%rbp)
 jmp .UNIQUE4246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4246: 
	movaps	%xmm6, -48(%rbp)
 jmp .UNIQUE4247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4247: 
	movaps	%xmm7, -32(%rbp)
.L372:
 jmp .UNIQUE4248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4248: 
	movl	%edi, -276(%rbp)
 jmp .UNIQUE4249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4249: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4250: 
	movq	$-1, -248(%rbp)
 jmp .UNIQUE4251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4251: 
	movl	$8, -216(%rbp)
 jmp .UNIQUE4252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4252: 
	movl	$48, -212(%rbp)
 jmp .UNIQUE4253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4253: 
	leaq	16(%rbp), %rax
 jmp .UNIQUE4254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4254: 
	movq	%rax, -208(%rbp)
 jmp .UNIQUE4255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4255: 
	leaq	-192(%rbp), %rax
 jmp .UNIQUE4256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4256: 
	movq	%rax, -200(%rbp)
 jmp .UNIQUE4257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4257: 
	movl	$736, %edx
 jmp .UNIQUE4258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4258: 
	movl	$__func__.4648, %esi
 jmp .UNIQUE4259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4259: 
	movl	$24, %edi
 jmp .UNIQUE4260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4260: 
	call	error_checking_malloc
 jmp .UNIQUE4261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4261: 
	movq	%rax, -240(%rbp)
 jmp .UNIQUE4262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4262: 
	cmpl	$0, -276(%rbp)
 jmp .UNIQUE4263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4263: 
	je	.L373
 jmp .UNIQUE4264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4264: 
	movl	$739, %edx
 jmp .UNIQUE4265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4265: 
	movl	$__func__.4648, %esi
 jmp .UNIQUE4266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4266: 
	movl	$128, %edi
 jmp .UNIQUE4267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4267: 
	call	error_checking_malloc
 jmp .UNIQUE4268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4268: 
	movq	-240(%rbp), %rdx
 jmp .UNIQUE4269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4269: 
	movq	%rax, 16(%rdx)
 jmp .UNIQUE4270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4270: 
	jmp	.L374
.L373:
 jmp .UNIQUE4271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4271: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4272: 
	movq	$0, 16(%rax)
.L374:
 jmp .UNIQUE4273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4273: 
	cmpl	$0, -276(%rbp)
 jmp .UNIQUE4274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4274: 
	je	.L375
 jmp .UNIQUE4275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4275: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4276: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4277: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4278: 
	cmpl	$48, %eax
 jmp .UNIQUE4279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4279: 
	jnb	.L376
 jmp .UNIQUE4280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4280: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4281: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4282: 
	movl	%eax, %eax
 jmp .UNIQUE4283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4283: 
	addq	%rdx, %rax
 jmp .UNIQUE4284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4284: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4285: 
	addl	$8, %edx
 jmp .UNIQUE4286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4286: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4287: 
	jmp	.L377
.L376:
 jmp .UNIQUE4288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4288: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4289: 
	movq	%rdx, %rax
 jmp .UNIQUE4290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4290: 
	addq	$8, %rdx
 jmp .UNIQUE4291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4291: 
	movq	%rdx, -208(%rbp)
.L377:
 jmp .UNIQUE4292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4292: 
	movq	(%rax), %rax
 jmp .UNIQUE4293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4293: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4294: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4295: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4296: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4297: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4298: 
	addq	%rdx, %rax
 jmp .UNIQUE4299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4299: 
	movq	%rax, -256(%rbp)
 jmp .UNIQUE4300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4300: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4301: 
	je	.L378
 jmp .UNIQUE4302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4302: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4303: 
	cmpl	$48, %eax
 jmp .UNIQUE4304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4304: 
	jnb	.L379
 jmp .UNIQUE4305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4305: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4306: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4307: 
	movl	%eax, %eax
 jmp .UNIQUE4308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4308: 
	addq	%rdx, %rax
 jmp .UNIQUE4309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4309: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4310: 
	addl	$8, %edx
 jmp .UNIQUE4311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4311: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4312: 
	jmp	.L380
.L379:
 jmp .UNIQUE4313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4313: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4314: 
	movq	%rdx, %rax
 jmp .UNIQUE4315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4315: 
	addq	$8, %rdx
 jmp .UNIQUE4316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4316: 
	movq	%rdx, -208(%rbp)
.L380:
 jmp .UNIQUE4317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4317: 
	movq	(%rax), %rax
 jmp .UNIQUE4318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4318: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4319: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4320: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4321: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4322: 
	movl	$752, %edx
 jmp .UNIQUE4323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4323: 
	movl	$__func__.4648, %esi
 jmp .UNIQUE4324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4324: 
	movq	%rax, %rdi
 jmp .UNIQUE4325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4325: 
	call	error_checking_malloc
 jmp .UNIQUE4326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4326: 
	movq	%rax, 8(%rbx)
 jmp .UNIQUE4327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4327: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4328: 
	jmp	.L381
.L384:
 jmp .UNIQUE4329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4329: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4330: 
	movq	16(%rax), %rax
 jmp .UNIQUE4331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4331: 
	movq	8(%rax), %rdx
 jmp .UNIQUE4332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4332: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4333: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE4334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4334: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4335: 
	cmpl	$48, %eax
 jmp .UNIQUE4336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4336: 
	jnb	.L382
 jmp .UNIQUE4337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4337: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4338: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4339: 
	movl	%eax, %eax
 jmp .UNIQUE4340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4340: 
	addq	%rdx, %rax
 jmp .UNIQUE4341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4341: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4342: 
	addl	$8, %edx
 jmp .UNIQUE4343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4343: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4344: 
	jmp	.L383
.L382:
 jmp .UNIQUE4345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4345: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4346: 
	movq	%rdx, %rax
 jmp .UNIQUE4347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4347: 
	addq	$8, %rdx
 jmp .UNIQUE4348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4348: 
	movq	%rdx, -208(%rbp)
.L383:
 jmp .UNIQUE4349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4349: 
	movl	(%rax), %eax
 jmp .UNIQUE4350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4350: 
	movb	%al, (%rcx)
 jmp .UNIQUE4351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4351: 
	addq	$1, -264(%rbp)
.L381:
 jmp .UNIQUE4352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4352: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4353: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4354: 
	jl	.L384
 jmp .UNIQUE4355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4355: 
	jmp	.L385
.L378:
 jmp .UNIQUE4356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4356: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4357: 
	movq	16(%rax), %rax
 jmp .UNIQUE4358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4358: 
	movq	$0, 8(%rax)
.L385:
 jmp .UNIQUE4359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4359: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4360: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4361: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4362: 
	cmpl	$48, %eax
 jmp .UNIQUE4363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4363: 
	jnb	.L386
 jmp .UNIQUE4364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4364: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4365: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4366: 
	movl	%eax, %eax
 jmp .UNIQUE4367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4367: 
	addq	%rdx, %rax
 jmp .UNIQUE4368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4368: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4369: 
	addl	$8, %edx
 jmp .UNIQUE4370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4370: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4371: 
	jmp	.L387
.L386:
 jmp .UNIQUE4372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4372: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4373: 
	movq	%rdx, %rax
 jmp .UNIQUE4374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4374: 
	addq	$8, %rdx
 jmp .UNIQUE4375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4375: 
	movq	%rdx, -208(%rbp)
.L387:
 jmp .UNIQUE4376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4376: 
	movq	(%rax), %rax
 jmp .UNIQUE4377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4377: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4378: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4379: 
	movq	%rax, 16(%rcx)
 jmp .UNIQUE4380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4380: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4381: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE4382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4382: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4383: 
	addq	%rdx, %rax
 jmp .UNIQUE4384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4384: 
	movq	%rax, -256(%rbp)
 jmp .UNIQUE4385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4385: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4386: 
	je	.L388
 jmp .UNIQUE4387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4387: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4388: 
	cmpl	$48, %eax
 jmp .UNIQUE4389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4389: 
	jnb	.L389
 jmp .UNIQUE4390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4390: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4391: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4392: 
	movl	%eax, %eax
 jmp .UNIQUE4393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4393: 
	addq	%rdx, %rax
 jmp .UNIQUE4394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4394: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4395: 
	addl	$8, %edx
 jmp .UNIQUE4396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4396: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4397: 
	jmp	.L390
.L389:
 jmp .UNIQUE4398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4398: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4399: 
	movq	%rdx, %rax
 jmp .UNIQUE4400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4400: 
	addq	$8, %rdx
 jmp .UNIQUE4401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4401: 
	movq	%rdx, -208(%rbp)
.L390:
 jmp .UNIQUE4402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4402: 
	movq	(%rax), %rax
 jmp .UNIQUE4403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4403: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4404: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4405: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4406: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4407: 
	salq	$2, %rax
 jmp .UNIQUE4408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4408: 
	movl	$769, %edx
 jmp .UNIQUE4409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4409: 
	movl	$__func__.4648, %esi
 jmp .UNIQUE4410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4410: 
	movq	%rax, %rdi
 jmp .UNIQUE4411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4411: 
	call	error_checking_malloc
 jmp .UNIQUE4412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4412: 
	movq	%rax, 24(%rbx)
 jmp .UNIQUE4413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4413: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4414: 
	jmp	.L391
.L394:
 jmp .UNIQUE4415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4415: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4416: 
	movq	16(%rax), %rax
 jmp .UNIQUE4417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4417: 
	movq	24(%rax), %rax
 jmp .UNIQUE4418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4418: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE4419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4419: 
	salq	$2, %rdx
 jmp .UNIQUE4420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4420: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4421: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4422: 
	cmpl	$48, %eax
 jmp .UNIQUE4423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4423: 
	jnb	.L392
 jmp .UNIQUE4424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4424: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4425: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4426: 
	movl	%eax, %eax
 jmp .UNIQUE4427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4427: 
	addq	%rdx, %rax
 jmp .UNIQUE4428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4428: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4429: 
	addl	$8, %edx
 jmp .UNIQUE4430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4430: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4431: 
	jmp	.L393
.L392:
 jmp .UNIQUE4432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4432: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4433: 
	movq	%rdx, %rax
 jmp .UNIQUE4434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4434: 
	addq	$8, %rdx
 jmp .UNIQUE4435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4435: 
	movq	%rdx, -208(%rbp)
.L393:
 jmp .UNIQUE4436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4436: 
	movl	(%rax), %eax
 jmp .UNIQUE4437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4437: 
	movl	%eax, (%rcx)
 jmp .UNIQUE4438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4438: 
	addq	$1, -264(%rbp)
.L391:
 jmp .UNIQUE4439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4439: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4440: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4441: 
	jl	.L394
 jmp .UNIQUE4442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4442: 
	jmp	.L395
.L388:
 jmp .UNIQUE4443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4443: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4444: 
	movq	16(%rax), %rax
 jmp .UNIQUE4445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4445: 
	movq	$0, 24(%rax)
.L395:
 jmp .UNIQUE4446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4446: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4447: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4448: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4449: 
	cmpl	$48, %eax
 jmp .UNIQUE4450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4450: 
	jnb	.L396
 jmp .UNIQUE4451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4451: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4452: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4453: 
	movl	%eax, %eax
 jmp .UNIQUE4454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4454: 
	addq	%rdx, %rax
 jmp .UNIQUE4455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4455: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4456: 
	addl	$8, %edx
 jmp .UNIQUE4457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4457: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4458: 
	jmp	.L397
.L396:
 jmp .UNIQUE4459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4459: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4460: 
	movq	%rdx, %rax
 jmp .UNIQUE4461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4461: 
	addq	$8, %rdx
 jmp .UNIQUE4462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4462: 
	movq	%rdx, -208(%rbp)
.L397:
 jmp .UNIQUE4463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4463: 
	movq	(%rax), %rax
 jmp .UNIQUE4464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4464: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4465: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4466: 
	movq	%rax, 32(%rcx)
 jmp .UNIQUE4467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4467: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4468: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4469: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4470: 
	addq	%rdx, %rax
 jmp .UNIQUE4471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4471: 
	movq	%rax, -256(%rbp)
 jmp .UNIQUE4472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4472: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4473: 
	je	.L398
 jmp .UNIQUE4474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4474: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4475: 
	cmpl	$48, %eax
 jmp .UNIQUE4476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4476: 
	jnb	.L399
 jmp .UNIQUE4477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4477: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4478: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4479: 
	movl	%eax, %eax
 jmp .UNIQUE4480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4480: 
	addq	%rdx, %rax
 jmp .UNIQUE4481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4481: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4482: 
	addl	$8, %edx
 jmp .UNIQUE4483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4483: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4484: 
	jmp	.L400
.L399:
 jmp .UNIQUE4485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4485: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4486: 
	movq	%rdx, %rax
 jmp .UNIQUE4487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4487: 
	addq	$8, %rdx
 jmp .UNIQUE4488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4488: 
	movq	%rdx, -208(%rbp)
.L400:
 jmp .UNIQUE4489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4489: 
	movq	(%rax), %rax
 jmp .UNIQUE4490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4490: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4491: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4492: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4493: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4494: 
	salq	$3, %rax
 jmp .UNIQUE4495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4495: 
	movl	$786, %edx
 jmp .UNIQUE4496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4496: 
	movl	$__func__.4648, %esi
 jmp .UNIQUE4497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4497: 
	movq	%rax, %rdi
 jmp .UNIQUE4498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4498: 
	call	error_checking_malloc
 jmp .UNIQUE4499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4499: 
	movq	%rax, 40(%rbx)
 jmp .UNIQUE4500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4500: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4501: 
	jmp	.L401
.L404:
 jmp .UNIQUE4502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4502: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4503: 
	movq	16(%rax), %rax
 jmp .UNIQUE4504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4504: 
	movq	40(%rax), %rax
 jmp .UNIQUE4505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4505: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE4506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4506: 
	salq	$3, %rdx
 jmp .UNIQUE4507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4507: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4508: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4509: 
	cmpl	$48, %eax
 jmp .UNIQUE4510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4510: 
	jnb	.L402
 jmp .UNIQUE4511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4511: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4512: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4513: 
	movl	%eax, %eax
 jmp .UNIQUE4514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4514: 
	addq	%rdx, %rax
 jmp .UNIQUE4515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4515: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4516: 
	addl	$8, %edx
 jmp .UNIQUE4517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4517: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4518: 
	jmp	.L403
.L402:
 jmp .UNIQUE4519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4519: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4520: 
	movq	%rdx, %rax
 jmp .UNIQUE4521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4521: 
	addq	$8, %rdx
 jmp .UNIQUE4522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4522: 
	movq	%rdx, -208(%rbp)
.L403:
 jmp .UNIQUE4523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4523: 
	movq	(%rax), %rax
 jmp .UNIQUE4524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4524: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4525: 
	addq	$1, -264(%rbp)
.L401:
 jmp .UNIQUE4526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4526: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4527: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4528: 
	jl	.L404
 jmp .UNIQUE4529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4529: 
	jmp	.L405
.L398:
 jmp .UNIQUE4530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4530: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4531: 
	movq	16(%rax), %rax
 jmp .UNIQUE4532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4532: 
	movq	$0, 40(%rax)
.L405:
 jmp .UNIQUE4533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4533: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4534: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4535: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4536: 
	cmpl	$48, %eax
 jmp .UNIQUE4537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4537: 
	jnb	.L406
 jmp .UNIQUE4538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4538: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4539: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4540: 
	movl	%eax, %eax
 jmp .UNIQUE4541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4541: 
	addq	%rdx, %rax
 jmp .UNIQUE4542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4542: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4543: 
	addl	$8, %edx
 jmp .UNIQUE4544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4544: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4545: 
	jmp	.L407
.L406:
 jmp .UNIQUE4546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4546: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4547: 
	movq	%rdx, %rax
 jmp .UNIQUE4548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4548: 
	addq	$8, %rdx
 jmp .UNIQUE4549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4549: 
	movq	%rdx, -208(%rbp)
.L407:
 jmp .UNIQUE4550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4550: 
	movq	(%rax), %rax
 jmp .UNIQUE4551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4551: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4552: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4553: 
	movq	%rax, 48(%rcx)
 jmp .UNIQUE4554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4554: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4555: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE4556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4556: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4557: 
	addq	%rdx, %rax
 jmp .UNIQUE4558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4558: 
	movq	%rax, -256(%rbp)
 jmp .UNIQUE4559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4559: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4560: 
	je	.L408
 jmp .UNIQUE4561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4561: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4562: 
	cmpl	$48, %eax
 jmp .UNIQUE4563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4563: 
	jnb	.L409
 jmp .UNIQUE4564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4564: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4565: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4566: 
	movl	%eax, %eax
 jmp .UNIQUE4567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4567: 
	addq	%rdx, %rax
 jmp .UNIQUE4568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4568: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4569: 
	addl	$8, %edx
 jmp .UNIQUE4570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4570: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4571: 
	jmp	.L410
.L409:
 jmp .UNIQUE4572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4572: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4573: 
	movq	%rdx, %rax
 jmp .UNIQUE4574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4574: 
	addq	$8, %rdx
 jmp .UNIQUE4575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4575: 
	movq	%rdx, -208(%rbp)
.L410:
 jmp .UNIQUE4576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4576: 
	movq	(%rax), %rax
 jmp .UNIQUE4577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4577: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4578: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4579: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4580: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4581: 
	salq	$2, %rax
 jmp .UNIQUE4582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4582: 
	movl	$803, %edx
 jmp .UNIQUE4583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4583: 
	movl	$__func__.4648, %esi
 jmp .UNIQUE4584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4584: 
	movq	%rax, %rdi
 jmp .UNIQUE4585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4585: 
	call	error_checking_malloc
 jmp .UNIQUE4586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4586: 
	movq	%rax, 56(%rbx)
 jmp .UNIQUE4587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4587: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4588: 
	jmp	.L411
.L414:
 jmp .UNIQUE4589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4589: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4590: 
	movq	16(%rax), %rax
 jmp .UNIQUE4591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4591: 
	movq	56(%rax), %rax
 jmp .UNIQUE4592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4592: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE4593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4593: 
	salq	$2, %rdx
 jmp .UNIQUE4594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4594: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4595: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4596: 
	cmpl	$176, %eax
 jmp .UNIQUE4597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4597: 
	jnb	.L412
 jmp .UNIQUE4598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4598: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4599: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4600: 
	movl	%eax, %eax
 jmp .UNIQUE4601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4601: 
	addq	%rdx, %rax
 jmp .UNIQUE4602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4602: 
	movl	-212(%rbp), %edx
 jmp .UNIQUE4603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4603: 
	addl	$16, %edx
 jmp .UNIQUE4604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4604: 
	movl	%edx, -212(%rbp)
 jmp .UNIQUE4605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4605: 
	jmp	.L413
.L412:
 jmp .UNIQUE4606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4606: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4607: 
	movq	%rdx, %rax
 jmp .UNIQUE4608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4608: 
	addq	$8, %rdx
 jmp .UNIQUE4609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4609: 
	movq	%rdx, -208(%rbp)
.L413:
 jmp .UNIQUE4610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4610: 
	movsd	(%rax), %xmm0
 jmp .UNIQUE4611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4611: 
	unpcklpd	%xmm0, %xmm0
 jmp .UNIQUE4612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4612: 
	cvtpd2ps	%xmm0, %xmm0
 jmp .UNIQUE4613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4613: 
	movss	%xmm0, (%rcx)
 jmp .UNIQUE4614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4614: 
	addq	$1, -264(%rbp)
.L411:
 jmp .UNIQUE4615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4615: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4616: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4617: 
	jl	.L414
 jmp .UNIQUE4618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4618: 
	jmp	.L415
.L408:
 jmp .UNIQUE4619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4619: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4620: 
	movq	16(%rax), %rax
 jmp .UNIQUE4621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4621: 
	movq	$0, 56(%rax)
.L415:
 jmp .UNIQUE4622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4622: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4623: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4624: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4625: 
	cmpl	$48, %eax
 jmp .UNIQUE4626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4626: 
	jnb	.L416
 jmp .UNIQUE4627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4627: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4628: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4629: 
	movl	%eax, %eax
 jmp .UNIQUE4630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4630: 
	addq	%rdx, %rax
 jmp .UNIQUE4631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4631: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4632: 
	addl	$8, %edx
 jmp .UNIQUE4633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4633: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4634: 
	jmp	.L417
.L416:
 jmp .UNIQUE4635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4635: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4636: 
	movq	%rdx, %rax
 jmp .UNIQUE4637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4637: 
	addq	$8, %rdx
 jmp .UNIQUE4638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4638: 
	movq	%rdx, -208(%rbp)
.L417:
 jmp .UNIQUE4639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4639: 
	movq	(%rax), %rax
 jmp .UNIQUE4640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4640: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4641: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4642: 
	movq	%rax, 64(%rcx)
 jmp .UNIQUE4643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4643: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4644: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4645: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4646: 
	addq	%rdx, %rax
 jmp .UNIQUE4647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4647: 
	movq	%rax, -256(%rbp)
 jmp .UNIQUE4648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4648: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4649: 
	je	.L418
 jmp .UNIQUE4650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4650: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4651: 
	cmpl	$48, %eax
 jmp .UNIQUE4652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4652: 
	jnb	.L419
 jmp .UNIQUE4653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4653: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4654: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4655: 
	movl	%eax, %eax
 jmp .UNIQUE4656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4656: 
	addq	%rdx, %rax
 jmp .UNIQUE4657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4657: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4658: 
	addl	$8, %edx
 jmp .UNIQUE4659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4659: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4660: 
	jmp	.L420
.L419:
 jmp .UNIQUE4661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4661: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4662: 
	movq	%rdx, %rax
 jmp .UNIQUE4663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4663: 
	addq	$8, %rdx
 jmp .UNIQUE4664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4664: 
	movq	%rdx, -208(%rbp)
.L420:
 jmp .UNIQUE4665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4665: 
	movq	(%rax), %rax
 jmp .UNIQUE4666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4666: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4667: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4668: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4669: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4670: 
	salq	$3, %rax
 jmp .UNIQUE4671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4671: 
	movl	$820, %edx
 jmp .UNIQUE4672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4672: 
	movl	$__func__.4648, %esi
 jmp .UNIQUE4673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4673: 
	movq	%rax, %rdi
 jmp .UNIQUE4674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4674: 
	call	error_checking_malloc
 jmp .UNIQUE4675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4675: 
	movq	%rax, 72(%rbx)
 jmp .UNIQUE4676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4676: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4677: 
	jmp	.L421
.L424:
 jmp .UNIQUE4678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4678: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4679: 
	movq	16(%rax), %rax
 jmp .UNIQUE4680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4680: 
	movq	72(%rax), %rax
 jmp .UNIQUE4681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4681: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE4682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4682: 
	salq	$3, %rdx
 jmp .UNIQUE4683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4683: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4684: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4685: 
	cmpl	$176, %eax
 jmp .UNIQUE4686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4686: 
	jnb	.L422
 jmp .UNIQUE4687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4687: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4688: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4689: 
	movl	%eax, %eax
 jmp .UNIQUE4690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4690: 
	addq	%rdx, %rax
 jmp .UNIQUE4691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4691: 
	movl	-212(%rbp), %edx
 jmp .UNIQUE4692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4692: 
	addl	$16, %edx
 jmp .UNIQUE4693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4693: 
	movl	%edx, -212(%rbp)
 jmp .UNIQUE4694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4694: 
	jmp	.L423
.L422:
 jmp .UNIQUE4695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4695: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4696: 
	movq	%rdx, %rax
 jmp .UNIQUE4697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4697: 
	addq	$8, %rdx
 jmp .UNIQUE4698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4698: 
	movq	%rdx, -208(%rbp)
.L423:
 jmp .UNIQUE4699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4699: 
	movq	(%rax), %rax
 jmp .UNIQUE4700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4700: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4701: 
	addq	$1, -264(%rbp)
.L421:
 jmp .UNIQUE4702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4702: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4703: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4704: 
	jl	.L424
 jmp .UNIQUE4705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4705: 
	jmp	.L425
.L418:
 jmp .UNIQUE4706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4706: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4707: 
	movq	16(%rax), %rax
 jmp .UNIQUE4708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4708: 
	movq	$0, 72(%rax)
.L425:
 jmp .UNIQUE4709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4709: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4710: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4711: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4712: 
	cmpl	$48, %eax
 jmp .UNIQUE4713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4713: 
	jnb	.L426
 jmp .UNIQUE4714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4714: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4715: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4716: 
	movl	%eax, %eax
 jmp .UNIQUE4717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4717: 
	addq	%rdx, %rax
 jmp .UNIQUE4718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4718: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4719: 
	addl	$8, %edx
 jmp .UNIQUE4720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4720: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4721: 
	jmp	.L427
.L426:
 jmp .UNIQUE4722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4722: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4723: 
	movq	%rdx, %rax
 jmp .UNIQUE4724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4724: 
	addq	$8, %rdx
 jmp .UNIQUE4725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4725: 
	movq	%rdx, -208(%rbp)
.L427:
 jmp .UNIQUE4726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4726: 
	movq	(%rax), %rax
 jmp .UNIQUE4727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4727: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4728: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4729: 
	movq	%rax, 80(%rcx)
 jmp .UNIQUE4730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4730: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4731: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4732: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4733: 
	addq	%rdx, %rax
 jmp .UNIQUE4734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4734: 
	movq	%rax, -256(%rbp)
 jmp .UNIQUE4735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4735: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4736: 
	je	.L428
 jmp .UNIQUE4737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4737: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4738: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4739: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4740: 
	salq	$3, %rax
 jmp .UNIQUE4741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4741: 
	movl	$836, %edx
 jmp .UNIQUE4742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4742: 
	movl	$__func__.4648, %esi
 jmp .UNIQUE4743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4743: 
	movq	%rax, %rdi
 jmp .UNIQUE4744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4744: 
	call	error_checking_malloc
 jmp .UNIQUE4745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4745: 
	movq	%rax, 88(%rbx)
 jmp .UNIQUE4746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4746: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4747: 
	jmp	.L429
.L432:
 jmp .UNIQUE4748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4748: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4749: 
	movq	16(%rax), %rax
 jmp .UNIQUE4750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4750: 
	movq	88(%rax), %rax
 jmp .UNIQUE4751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4751: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE4752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4752: 
	salq	$3, %rdx
 jmp .UNIQUE4753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4753: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4754: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4755: 
	cmpl	$48, %eax
 jmp .UNIQUE4756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4756: 
	jnb	.L430
 jmp .UNIQUE4757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4757: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4758: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4759: 
	movl	%eax, %eax
 jmp .UNIQUE4760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4760: 
	addq	%rdx, %rax
 jmp .UNIQUE4761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4761: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4762: 
	addl	$8, %edx
 jmp .UNIQUE4763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4763: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4764: 
	jmp	.L431
.L430:
 jmp .UNIQUE4765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4765: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4766: 
	movq	%rdx, %rax
 jmp .UNIQUE4767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4767: 
	addq	$8, %rdx
 jmp .UNIQUE4768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4768: 
	movq	%rdx, -208(%rbp)
.L431:
 jmp .UNIQUE4769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4769: 
	movq	(%rax), %rax
 jmp .UNIQUE4770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4770: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4771: 
	addq	$1, -264(%rbp)
.L429:
 jmp .UNIQUE4772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4772: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4773: 
	cmpq	-232(%rbp), %rax
 jmp .UNIQUE4774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4774: 
	jl	.L432
 jmp .UNIQUE4775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4775: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4776: 
	cmpl	$48, %eax
 jmp .UNIQUE4777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4777: 
	jnb	.L433
 jmp .UNIQUE4778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4778: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4779: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4780: 
	movl	%eax, %eax
 jmp .UNIQUE4781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4781: 
	addq	%rdx, %rax
 jmp .UNIQUE4782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4782: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4783: 
	addl	$8, %edx
 jmp .UNIQUE4784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4784: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4785: 
	jmp	.L434
.L433:
 jmp .UNIQUE4786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4786: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4787: 
	movq	%rdx, %rax
 jmp .UNIQUE4788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4788: 
	addq	$8, %rdx
 jmp .UNIQUE4789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4789: 
	movq	%rdx, -208(%rbp)
.L434:
 jmp .UNIQUE4790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4790: 
	movq	(%rax), %rax
 jmp .UNIQUE4791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4791: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4792: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4793: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4794: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4795: 
	salq	$3, %rax
 jmp .UNIQUE4796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4796: 
	movl	$843, %edx
 jmp .UNIQUE4797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4797: 
	movl	$__func__.4648, %esi
 jmp .UNIQUE4798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4798: 
	movq	%rax, %rdi
 jmp .UNIQUE4799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4799: 
	call	error_checking_malloc
 jmp .UNIQUE4800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4800: 
	movq	%rax, 96(%rbx)
 jmp .UNIQUE4801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4801: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4802: 
	jmp	.L435
.L438:
 jmp .UNIQUE4803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4803: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4804: 
	movq	16(%rax), %rax
 jmp .UNIQUE4805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4805: 
	movq	96(%rax), %rax
 jmp .UNIQUE4806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4806: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE4807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4807: 
	salq	$3, %rdx
 jmp .UNIQUE4808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4808: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4809: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4810: 
	cmpl	$48, %eax
 jmp .UNIQUE4811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4811: 
	jnb	.L436
 jmp .UNIQUE4812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4812: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4813: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4814: 
	movl	%eax, %eax
 jmp .UNIQUE4815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4815: 
	addq	%rdx, %rax
 jmp .UNIQUE4816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4816: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4817: 
	addl	$8, %edx
 jmp .UNIQUE4818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4818: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4819: 
	jmp	.L437
.L436:
 jmp .UNIQUE4820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4820: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4821: 
	movq	%rdx, %rax
 jmp .UNIQUE4822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4822: 
	addq	$8, %rdx
 jmp .UNIQUE4823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4823: 
	movq	%rdx, -208(%rbp)
.L437:
 jmp .UNIQUE4824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4824: 
	movq	(%rax), %rax
 jmp .UNIQUE4825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4825: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4826: 
	addq	$1, -264(%rbp)
.L435:
 jmp .UNIQUE4827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4827: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4828: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4829: 
	jl	.L438
 jmp .UNIQUE4830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4830: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4831: 
	movq	%rax, -264(%rbp)
 jmp .UNIQUE4832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4832: 
	jmp	.L439
.L440:
 jmp .UNIQUE4833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4833: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4834: 
	movq	16(%rax), %rax
 jmp .UNIQUE4835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4835: 
	movq	96(%rax), %rax
 jmp .UNIQUE4836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4836: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE4837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4837: 
	salq	$3, %rdx
 jmp .UNIQUE4838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4838: 
	addq	%rdx, %rax
 jmp .UNIQUE4839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4839: 
	movq	$0, (%rax)
 jmp .UNIQUE4840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4840: 
	addq	$1, -264(%rbp)
.L439:
 jmp .UNIQUE4841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4841: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4842: 
	cmpq	-232(%rbp), %rax
 jmp .UNIQUE4843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4843: 
	jl	.L440
 jmp .UNIQUE4844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4844: 
	jmp	.L441
.L428:
 jmp .UNIQUE4845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4845: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4846: 
	movq	16(%rax), %rax
 jmp .UNIQUE4847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4847: 
	movq	$0, 88(%rax)
 jmp .UNIQUE4848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4848: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4849: 
	movq	16(%rax), %rax
 jmp .UNIQUE4850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4850: 
	movq	$0, 96(%rax)
.L441:
 jmp .UNIQUE4851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4851: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4852: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4853: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4854: 
	cmpl	$48, %eax
 jmp .UNIQUE4855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4855: 
	jnb	.L442
 jmp .UNIQUE4856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4856: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4857: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4858: 
	movl	%eax, %eax
 jmp .UNIQUE4859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4859: 
	addq	%rdx, %rax
 jmp .UNIQUE4860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4860: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4861: 
	addl	$8, %edx
 jmp .UNIQUE4862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4862: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4863: 
	jmp	.L443
.L442:
 jmp .UNIQUE4864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4864: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4865: 
	movq	%rdx, %rax
 jmp .UNIQUE4866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4866: 
	addq	$8, %rdx
 jmp .UNIQUE4867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4867: 
	movq	%rdx, -208(%rbp)
.L443:
 jmp .UNIQUE4868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4868: 
	movq	(%rax), %rax
 jmp .UNIQUE4869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4869: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4870: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4871: 
	movq	%rax, 104(%rcx)
 jmp .UNIQUE4872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4872: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4873: 
	je	.L444
 jmp .UNIQUE4874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4874: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4875: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4876: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4877: 
	salq	$3, %rax
 jmp .UNIQUE4878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4878: 
	movl	$864, %edx
 jmp .UNIQUE4879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4879: 
	movl	$__func__.4648, %esi
 jmp .UNIQUE4880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4880: 
	movq	%rax, %rdi
 jmp .UNIQUE4881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4881: 
	call	error_checking_malloc
 jmp .UNIQUE4882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4882: 
	movq	%rax, 112(%rbx)
 jmp .UNIQUE4883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4883: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4884: 
	jmp	.L445
.L448:
 jmp .UNIQUE4885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4885: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4886: 
	movq	16(%rax), %rax
 jmp .UNIQUE4887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4887: 
	movq	112(%rax), %rax
 jmp .UNIQUE4888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4888: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE4889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4889: 
	salq	$3, %rdx
 jmp .UNIQUE4890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4890: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4891: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4892: 
	cmpl	$48, %eax
 jmp .UNIQUE4893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4893: 
	jnb	.L446
 jmp .UNIQUE4894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4894: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4895: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4896: 
	movl	%eax, %eax
 jmp .UNIQUE4897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4897: 
	addq	%rdx, %rax
 jmp .UNIQUE4898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4898: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4899: 
	addl	$8, %edx
 jmp .UNIQUE4900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4900: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4901: 
	jmp	.L447
.L446:
 jmp .UNIQUE4902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4902: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4903: 
	movq	%rdx, %rax
 jmp .UNIQUE4904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4904: 
	addq	$8, %rdx
 jmp .UNIQUE4905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4905: 
	movq	%rdx, -208(%rbp)
.L447:
 jmp .UNIQUE4906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4906: 
	movq	(%rax), %rax
 jmp .UNIQUE4907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4907: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4908: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4909: 
	movq	16(%rax), %rax
 jmp .UNIQUE4910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4910: 
	movq	112(%rax), %rax
 jmp .UNIQUE4911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4911: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE4912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4912: 
	salq	$3, %rdx
 jmp .UNIQUE4913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4913: 
	addq	%rdx, %rax
 jmp .UNIQUE4914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4914: 
	movq	(%rax), %rax
 jmp .UNIQUE4915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4915: 
	addq	%rax, -256(%rbp)
 jmp .UNIQUE4916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4916: 
	addq	$1, -264(%rbp)
.L445:
 jmp .UNIQUE4917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4917: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4918: 
	cmpq	-232(%rbp), %rax
 jmp .UNIQUE4919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4919: 
	jl	.L448
 jmp .UNIQUE4920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4920: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4921: 
	cmpl	$48, %eax
 jmp .UNIQUE4922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4922: 
	jnb	.L449
 jmp .UNIQUE4923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4923: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4924: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4925: 
	movl	%eax, %eax
 jmp .UNIQUE4926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4926: 
	addq	%rdx, %rax
 jmp .UNIQUE4927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4927: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4928: 
	addl	$8, %edx
 jmp .UNIQUE4929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4929: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4930: 
	jmp	.L450
.L449:
 jmp .UNIQUE4931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4931: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4932: 
	movq	%rdx, %rax
 jmp .UNIQUE4933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4933: 
	addq	$8, %rdx
 jmp .UNIQUE4934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4934: 
	movq	%rdx, -208(%rbp)
.L450:
 jmp .UNIQUE4935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4935: 
	movq	(%rax), %rax
 jmp .UNIQUE4936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4936: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4937: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4938: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4939: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4940: 
	salq	$3, %rax
 jmp .UNIQUE4941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4941: 
	movl	$872, %edx
 jmp .UNIQUE4942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4942: 
	movl	$__func__.4648, %esi
 jmp .UNIQUE4943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4943: 
	movq	%rax, %rdi
 jmp .UNIQUE4944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4944: 
	call	error_checking_malloc
 jmp .UNIQUE4945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4945: 
	movq	%rax, 120(%rbx)
 jmp .UNIQUE4946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4946: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4947: 
	jmp	.L451
.L454:
 jmp .UNIQUE4948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4948: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4949: 
	movq	16(%rax), %rax
 jmp .UNIQUE4950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4950: 
	movq	120(%rax), %rax
 jmp .UNIQUE4951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4951: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE4952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4952: 
	salq	$3, %rdx
 jmp .UNIQUE4953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4953: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4954: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4955: 
	cmpl	$48, %eax
 jmp .UNIQUE4956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4956: 
	jnb	.L452
 jmp .UNIQUE4957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4957: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4958: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4959: 
	movl	%eax, %eax
 jmp .UNIQUE4960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4960: 
	addq	%rdx, %rax
 jmp .UNIQUE4961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4961: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4962: 
	addl	$8, %edx
 jmp .UNIQUE4963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4963: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4964: 
	jmp	.L453
.L452:
 jmp .UNIQUE4965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4965: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4966: 
	movq	%rdx, %rax
 jmp .UNIQUE4967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4967: 
	addq	$8, %rdx
 jmp .UNIQUE4968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4968: 
	movq	%rdx, -208(%rbp)
.L453:
 jmp .UNIQUE4969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4969: 
	movq	(%rax), %rax
 jmp .UNIQUE4970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4970: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4971: 
	addq	$1, -264(%rbp)
.L451:
 jmp .UNIQUE4972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4972: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4973: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4974: 
	jl	.L454
 jmp .UNIQUE4975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4975: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4976: 
	movq	%rax, -264(%rbp)
 jmp .UNIQUE4977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4977: 
	jmp	.L455
.L456:
 jmp .UNIQUE4978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4978: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4979: 
	movq	16(%rax), %rax
 jmp .UNIQUE4980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4980: 
	movq	120(%rax), %rax
 jmp .UNIQUE4981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4981: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE4982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4982: 
	salq	$3, %rdx
 jmp .UNIQUE4983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4983: 
	addq	%rdx, %rax
 jmp .UNIQUE4984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4984: 
	movq	$0, (%rax)
 jmp .UNIQUE4985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4985: 
	addq	$1, -264(%rbp)
.L455:
 jmp .UNIQUE4986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4986: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4987: 
	cmpq	-232(%rbp), %rax
 jmp .UNIQUE4988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4988: 
	jl	.L456
 jmp .UNIQUE4989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4989: 
	jmp	.L375
.L444:
 jmp .UNIQUE4990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4990: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4991: 
	movq	16(%rax), %rax
 jmp .UNIQUE4992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4992: 
	movq	$0, 112(%rax)
 jmp .UNIQUE4993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4993: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4994: 
	movq	16(%rax), %rax
 jmp .UNIQUE4995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4995: 
	movq	$0, 120(%rax)
.L375:
 jmp .UNIQUE4996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4996: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4997: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4998: 
	movq	%rdx, (%rax)
 jmp .UNIQUE4999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4999: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5000: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE5001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5001: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5002: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5003: 
	addq	$280, %rsp
 jmp .UNIQUE5004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5004: 
	popq	%rbx
 jmp .UNIQUE5005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5005: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5006: 
	ret
	.cfi_endproc
.LFE80:
	.size	init_function_params_with_uninitialised_elements, .-init_function_params_with_uninitialised_elements
	.section	.rodata
.LC77:
	.string	"No parameters? Strange..."
	.text
	.globl	put_fun_params_into_secure_stack
	.type	put_fun_params_into_secure_stack, @function
put_fun_params_into_secure_stack:
.LFB81:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5007: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5008: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5009: 
	pushq	%rbx
 jmp .UNIQUE5010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5010: 
	subq	$88, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE5011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5011: 
	movq	%rdi, -88(%rbp)
 jmp .UNIQUE5012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5012: 
	movl	$916, %edx
 jmp .UNIQUE5013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5013: 
	movl	$__func__.4691, %esi
 jmp .UNIQUE5014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5014: 
	movl	$24, %edi
 jmp .UNIQUE5015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5015: 
	call	error_checking_malloc
 jmp .UNIQUE5016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5016: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE5017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5017: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5018: 
	movq	(%rax), %rdx
 jmp .UNIQUE5019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5019: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5020: 
	movq	%rdx, (%rax)
 jmp .UNIQUE5021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5021: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5022: 
	movq	$0, 8(%rax)
 jmp .UNIQUE5023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5023: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5024: 
	movq	16(%rax), %rax
 jmp .UNIQUE5025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5025: 
	testq	%rax, %rax
 jmp .UNIQUE5026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5026: 
	je	.L459
 jmp .UNIQUE5027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5027: 
	movl	$924, %edx
 jmp .UNIQUE5028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5028: 
	movl	$__func__.4691, %esi
 jmp .UNIQUE5029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5029: 
	movl	$128, %edi
 jmp .UNIQUE5030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5030: 
	call	error_checking_malloc
 jmp .UNIQUE5031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5031: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE5032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5032: 
	movq	%rax, 16(%rdx)
 jmp .UNIQUE5033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5033: 
	jmp	.L460
.L459:
 jmp .UNIQUE5034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5034: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5035: 
	movq	$0, 16(%rax)
 jmp .UNIQUE5036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5036: 
	movl	$.LC77, %edi
 jmp .UNIQUE5037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5037: 
	call	puts
.L460:
 jmp .UNIQUE5038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5038: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5039: 
	movq	16(%rax), %rax
 jmp .UNIQUE5040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5040: 
	testq	%rax, %rax
 jmp .UNIQUE5041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5041: 
	je	.L461
 jmp .UNIQUE5042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5042: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5043: 
	movq	16(%rax), %rax
 jmp .UNIQUE5044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5044: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE5045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5045: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5046: 
	movq	(%rdx), %rdx
 jmp .UNIQUE5047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5047: 
	movq	%rdx, (%rax)
 jmp .UNIQUE5048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5048: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5049: 
	movq	16(%rax), %rax
 jmp .UNIQUE5050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5050: 
	movq	(%rax), %rax
 jmp .UNIQUE5051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5051: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE5052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5052: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5053: 
	movq	%rax, %rdi
 jmp .UNIQUE5054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5054: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5055: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5056: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5057: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5058: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE5059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5059: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5060: 
	movq	8(%rax), %rdx
 jmp .UNIQUE5061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5061: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5062: 
	addq	%rax, %rdx
 jmp .UNIQUE5063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5063: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5064: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5065: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5066: 
	movq	16(%rax), %rax
 jmp .UNIQUE5067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5067: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5068: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5069: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5070: 
	je	.L462
 jmp .UNIQUE5071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5071: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5072: 
	movq	16(%rax), %rax
 jmp .UNIQUE5073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5073: 
	movq	8(%rax), %rcx
 jmp .UNIQUE5074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5074: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5075: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5076: 
	movq	%rcx, %rsi
 jmp .UNIQUE5077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5077: 
	movq	%rax, %rdi
 jmp .UNIQUE5078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5078: 
	call	insert_data_into_stack_mem
.L462:
 jmp .UNIQUE5079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5079: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5080: 
	movq	16(%rax), %rax
 jmp .UNIQUE5081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5081: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE5082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5082: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5083: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5084: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE5085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5085: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5086: 
	movq	16(%rax), %rax
 jmp .UNIQUE5087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5087: 
	movq	16(%rax), %rax
 jmp .UNIQUE5088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5088: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE5089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5089: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5090: 
	salq	$2, %rax
 jmp .UNIQUE5091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5091: 
	movq	%rax, %rdi
 jmp .UNIQUE5092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5092: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5093: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5094: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5095: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5096: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE5097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5097: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5098: 
	movq	8(%rax), %rdx
 jmp .UNIQUE5099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5099: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5100: 
	addq	%rax, %rdx
 jmp .UNIQUE5101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5101: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5102: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5103: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5104: 
	movq	16(%rax), %rax
 jmp .UNIQUE5105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5105: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5106: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE5107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5107: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5108: 
	je	.L463
 jmp .UNIQUE5109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5109: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5110: 
	movq	16(%rax), %rax
 jmp .UNIQUE5111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5111: 
	movq	24(%rax), %rcx
 jmp .UNIQUE5112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5112: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5113: 
	salq	$2, %rax
 jmp .UNIQUE5114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5114: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5115: 
	movq	%rcx, %rsi
 jmp .UNIQUE5116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5116: 
	movq	%rax, %rdi
 jmp .UNIQUE5117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5117: 
	call	insert_data_into_stack_mem
.L463:
 jmp .UNIQUE5118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5118: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5119: 
	movq	16(%rax), %rax
 jmp .UNIQUE5120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5120: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE5121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5121: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5122: 
	movq	32(%rdx), %rdx
 jmp .UNIQUE5123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5123: 
	movq	%rdx, 32(%rax)
 jmp .UNIQUE5124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5124: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5125: 
	movq	16(%rax), %rax
 jmp .UNIQUE5126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5126: 
	movq	32(%rax), %rax
 jmp .UNIQUE5127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5127: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE5128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5128: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5129: 
	salq	$3, %rax
 jmp .UNIQUE5130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5130: 
	movq	%rax, %rdi
 jmp .UNIQUE5131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5131: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5132: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5133: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5134: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5135: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE5136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5136: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5137: 
	movq	8(%rax), %rdx
 jmp .UNIQUE5138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5138: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5139: 
	addq	%rax, %rdx
 jmp .UNIQUE5140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5140: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5141: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5142: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5143: 
	movq	16(%rax), %rax
 jmp .UNIQUE5144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5144: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5145: 
	movq	%rdx, 40(%rax)
 jmp .UNIQUE5146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5146: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5147: 
	je	.L464
 jmp .UNIQUE5148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5148: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5149: 
	movq	16(%rax), %rax
 jmp .UNIQUE5150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5150: 
	movq	40(%rax), %rcx
 jmp .UNIQUE5151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5151: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5152: 
	salq	$3, %rax
 jmp .UNIQUE5153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5153: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5154: 
	movq	%rcx, %rsi
 jmp .UNIQUE5155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5155: 
	movq	%rax, %rdi
 jmp .UNIQUE5156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5156: 
	call	insert_data_into_stack_mem
.L464:
 jmp .UNIQUE5157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5157: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5158: 
	movq	16(%rax), %rax
 jmp .UNIQUE5159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5159: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE5160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5160: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5161: 
	movq	48(%rdx), %rdx
 jmp .UNIQUE5162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5162: 
	movq	%rdx, 48(%rax)
 jmp .UNIQUE5163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5163: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5164: 
	movq	16(%rax), %rax
 jmp .UNIQUE5165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5165: 
	movq	48(%rax), %rax
 jmp .UNIQUE5166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5166: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE5167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5167: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5168: 
	salq	$2, %rax
 jmp .UNIQUE5169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5169: 
	movq	%rax, %rdi
 jmp .UNIQUE5170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5170: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5171: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5172: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5173: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5174: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE5175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5175: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5176: 
	movq	8(%rax), %rdx
 jmp .UNIQUE5177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5177: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5178: 
	addq	%rax, %rdx
 jmp .UNIQUE5179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5179: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5180: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5181: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5182: 
	movq	16(%rax), %rax
 jmp .UNIQUE5183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5183: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5184: 
	movq	%rdx, 56(%rax)
 jmp .UNIQUE5185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5185: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5186: 
	je	.L465
 jmp .UNIQUE5187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5187: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5188: 
	movq	16(%rax), %rax
 jmp .UNIQUE5189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5189: 
	movq	56(%rax), %rcx
 jmp .UNIQUE5190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5190: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5191: 
	salq	$2, %rax
 jmp .UNIQUE5192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5192: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5193: 
	movq	%rcx, %rsi
 jmp .UNIQUE5194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5194: 
	movq	%rax, %rdi
 jmp .UNIQUE5195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5195: 
	call	insert_data_into_stack_mem
.L465:
 jmp .UNIQUE5196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5196: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5197: 
	movq	16(%rax), %rax
 jmp .UNIQUE5198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5198: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE5199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5199: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5200: 
	movq	64(%rdx), %rdx
 jmp .UNIQUE5201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5201: 
	movq	%rdx, 64(%rax)
 jmp .UNIQUE5202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5202: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5203: 
	movq	16(%rax), %rax
 jmp .UNIQUE5204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5204: 
	movq	64(%rax), %rax
 jmp .UNIQUE5205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5205: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE5206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5206: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5207: 
	salq	$3, %rax
 jmp .UNIQUE5208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5208: 
	movq	%rax, %rdi
 jmp .UNIQUE5209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5209: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5210: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5211: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5212: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5213: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE5214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5214: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5215: 
	movq	8(%rax), %rdx
 jmp .UNIQUE5216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5216: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5217: 
	addq	%rax, %rdx
 jmp .UNIQUE5218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5218: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5219: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5220: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5221: 
	movq	16(%rax), %rax
 jmp .UNIQUE5222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5222: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5223: 
	movq	%rdx, 72(%rax)
 jmp .UNIQUE5224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5224: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5225: 
	je	.L466
 jmp .UNIQUE5226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5226: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5227: 
	movq	16(%rax), %rax
 jmp .UNIQUE5228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5228: 
	movq	72(%rax), %rcx
 jmp .UNIQUE5229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5229: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5230: 
	salq	$3, %rax
 jmp .UNIQUE5231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5231: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5232: 
	movq	%rcx, %rsi
 jmp .UNIQUE5233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5233: 
	movq	%rax, %rdi
 jmp .UNIQUE5234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5234: 
	call	insert_data_into_stack_mem
.L466:
 jmp .UNIQUE5235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5235: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5236: 
	movq	16(%rax), %rax
 jmp .UNIQUE5237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5237: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE5238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5238: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5239: 
	movq	80(%rdx), %rdx
 jmp .UNIQUE5240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5240: 
	movq	%rdx, 80(%rax)
 jmp .UNIQUE5241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5241: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5242: 
	movq	16(%rax), %rax
 jmp .UNIQUE5243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5243: 
	movq	80(%rax), %rax
 jmp .UNIQUE5244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5244: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE5245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5245: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5246: 
	salq	$3, %rax
 jmp .UNIQUE5247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5247: 
	movq	%rax, %rdi
 jmp .UNIQUE5248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5248: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5249: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5250: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5251: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5252: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE5253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5253: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5254: 
	movq	8(%rax), %rdx
 jmp .UNIQUE5255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5255: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5256: 
	addq	%rax, %rdx
 jmp .UNIQUE5257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5257: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5258: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5259: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5260: 
	movq	16(%rax), %rax
 jmp .UNIQUE5261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5261: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5262: 
	movq	%rdx, 96(%rax)
 jmp .UNIQUE5263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5263: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5264: 
	je	.L467
 jmp .UNIQUE5265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5265: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5266: 
	movq	16(%rax), %rax
 jmp .UNIQUE5267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5267: 
	movq	96(%rax), %rcx
 jmp .UNIQUE5268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5268: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5269: 
	salq	$3, %rax
 jmp .UNIQUE5270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5270: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5271: 
	movq	%rcx, %rsi
 jmp .UNIQUE5272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5272: 
	movq	%rax, %rdi
 jmp .UNIQUE5273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5273: 
	call	insert_data_into_stack_mem
.L467:
 jmp .UNIQUE5274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5274: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5275: 
	movq	16(%rax), %rbx
 jmp .UNIQUE5276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5276: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5277: 
	salq	$3, %rax
 jmp .UNIQUE5278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5278: 
	movl	$1006, %edx
 jmp .UNIQUE5279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5279: 
	movl	$__func__.4691, %esi
 jmp .UNIQUE5280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5280: 
	movq	%rax, %rdi
 jmp .UNIQUE5281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5281: 
	call	error_checking_malloc
 jmp .UNIQUE5282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5282: 
	movq	%rax, 88(%rbx)
 jmp .UNIQUE5283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5283: 
	movq	$0, -72(%rbp)
 jmp .UNIQUE5284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5284: 
	jmp	.L468
.L469:
 jmp .UNIQUE5285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5285: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5286: 
	movq	16(%rax), %rax
 jmp .UNIQUE5287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5287: 
	movq	88(%rax), %rax
 jmp .UNIQUE5288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5288: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE5289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5289: 
	salq	$3, %rdx
 jmp .UNIQUE5290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5290: 
	addq	%rax, %rdx
 jmp .UNIQUE5291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5291: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5292: 
	movq	16(%rax), %rax
 jmp .UNIQUE5293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5293: 
	movq	88(%rax), %rax
 jmp .UNIQUE5294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5294: 
	movq	-72(%rbp), %rcx
 jmp .UNIQUE5295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5295: 
	salq	$3, %rcx
 jmp .UNIQUE5296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5296: 
	addq	%rcx, %rax
 jmp .UNIQUE5297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5297: 
	movq	(%rax), %rax
 jmp .UNIQUE5298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5298: 
	movq	%rax, (%rdx)
 jmp .UNIQUE5299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5299: 
	addq	$1, -72(%rbp)
.L468:
 jmp .UNIQUE5300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5300: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE5301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5301: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE5302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5302: 
	jl	.L469
 jmp .UNIQUE5303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5303: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5304: 
	movq	16(%rax), %rax
 jmp .UNIQUE5305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5305: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE5306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5306: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5307: 
	movq	104(%rdx), %rdx
 jmp .UNIQUE5308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5308: 
	movq	%rdx, 104(%rax)
 jmp .UNIQUE5309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5309: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5310: 
	movq	16(%rax), %rax
 jmp .UNIQUE5311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5311: 
	movq	104(%rax), %rax
 jmp .UNIQUE5312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5312: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE5313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5313: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5314: 
	movq	16(%rax), %rbx
 jmp .UNIQUE5315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5315: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5316: 
	salq	$3, %rax
 jmp .UNIQUE5317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5317: 
	movl	$1013, %edx
 jmp .UNIQUE5318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5318: 
	movl	$__func__.4691, %esi
 jmp .UNIQUE5319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5319: 
	movq	%rax, %rdi
 jmp .UNIQUE5320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5320: 
	call	error_checking_malloc
 jmp .UNIQUE5321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5321: 
	movq	%rax, 112(%rbx)
 jmp .UNIQUE5322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5322: 
	movq	$0, -72(%rbp)
 jmp .UNIQUE5323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5323: 
	jmp	.L470
.L471:
 jmp .UNIQUE5324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5324: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5325: 
	movq	16(%rax), %rax
 jmp .UNIQUE5326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5326: 
	movq	112(%rax), %rax
 jmp .UNIQUE5327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5327: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE5328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5328: 
	salq	$3, %rdx
 jmp .UNIQUE5329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5329: 
	addq	%rax, %rdx
 jmp .UNIQUE5330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5330: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5331: 
	movq	16(%rax), %rax
 jmp .UNIQUE5332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5332: 
	movq	112(%rax), %rax
 jmp .UNIQUE5333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5333: 
	movq	-72(%rbp), %rcx
 jmp .UNIQUE5334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5334: 
	salq	$3, %rcx
 jmp .UNIQUE5335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5335: 
	addq	%rcx, %rax
 jmp .UNIQUE5336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5336: 
	movq	(%rax), %rax
 jmp .UNIQUE5337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5337: 
	movq	%rax, (%rdx)
 jmp .UNIQUE5338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5338: 
	addq	$1, -72(%rbp)
.L470:
 jmp .UNIQUE5339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5339: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE5340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5340: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE5341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5341: 
	jl	.L471
 jmp .UNIQUE5342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5342: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5343: 
	movq	16(%rax), %rbx
 jmp .UNIQUE5344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5344: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5345: 
	salq	$3, %rax
 jmp .UNIQUE5346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5346: 
	movl	$1016, %edx
 jmp .UNIQUE5347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5347: 
	movl	$__func__.4691, %esi
 jmp .UNIQUE5348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5348: 
	movq	%rax, %rdi
 jmp .UNIQUE5349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5349: 
	call	error_checking_malloc
 jmp .UNIQUE5350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5350: 
	movq	%rax, 120(%rbx)
 jmp .UNIQUE5351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5351: 
	movq	$0, -72(%rbp)
 jmp .UNIQUE5352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5352: 
	jmp	.L472
.L474:
 jmp .UNIQUE5353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5353: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5354: 
	movq	16(%rax), %rax
 jmp .UNIQUE5355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5355: 
	movq	112(%rax), %rax
 jmp .UNIQUE5356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5356: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE5357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5357: 
	salq	$3, %rdx
 jmp .UNIQUE5358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5358: 
	addq	%rdx, %rax
 jmp .UNIQUE5359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5359: 
	movq	(%rax), %rax
 jmp .UNIQUE5360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5360: 
	movq	%rax, %rdi
 jmp .UNIQUE5361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5361: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5362: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5363: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5364: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5365: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE5366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5366: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5367: 
	movq	8(%rax), %rdx
 jmp .UNIQUE5368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5368: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5369: 
	addq	%rax, %rdx
 jmp .UNIQUE5370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5370: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5371: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5372: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5373: 
	je	.L473
 jmp .UNIQUE5374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5374: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5375: 
	movq	16(%rax), %rax
 jmp .UNIQUE5376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5376: 
	movq	120(%rax), %rax
 jmp .UNIQUE5377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5377: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE5378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5378: 
	salq	$3, %rdx
 jmp .UNIQUE5379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5379: 
	addq	%rdx, %rax
 jmp .UNIQUE5380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5380: 
	movq	(%rax), %rcx
 jmp .UNIQUE5381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5381: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5382: 
	movq	16(%rax), %rax
 jmp .UNIQUE5383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5383: 
	movq	112(%rax), %rax
 jmp .UNIQUE5384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5384: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE5385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5385: 
	salq	$3, %rdx
 jmp .UNIQUE5386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5386: 
	addq	%rdx, %rax
 jmp .UNIQUE5387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5387: 
	movq	(%rax), %rax
 jmp .UNIQUE5388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5388: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5389: 
	movq	%rcx, %rsi
 jmp .UNIQUE5390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5390: 
	movq	%rax, %rdi
 jmp .UNIQUE5391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5391: 
	call	insert_data_into_stack_mem
.L473:
 jmp .UNIQUE5392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5392: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5393: 
	movq	16(%rax), %rax
 jmp .UNIQUE5394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5394: 
	movq	120(%rax), %rax
 jmp .UNIQUE5395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5395: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE5396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5396: 
	salq	$3, %rdx
 jmp .UNIQUE5397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5397: 
	addq	%rax, %rdx
 jmp .UNIQUE5398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5398: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE5399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5399: 
	movq	%rax, (%rdx)
 jmp .UNIQUE5400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5400: 
	addq	$1, -72(%rbp)
.L472:
 jmp .UNIQUE5401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5401: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE5402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5402: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE5403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5403: 
	jl	.L474
.L461:
 jmp .UNIQUE5404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5404: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5405: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE5406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5406: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE5407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5407: 
	addq	$88, %rsp
 jmp .UNIQUE5408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5408: 
	popq	%rbx
 jmp .UNIQUE5409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5409: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5410: 
	ret
	.cfi_endproc
.LFE81:
	.size	put_fun_params_into_secure_stack, .-put_fun_params_into_secure_stack
	.globl	free_fun_params
	.type	free_fun_params, @function
free_fun_params:
.LFB82:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5411: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5412: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5413: 
	subq	$32, %rsp
 jmp .UNIQUE5414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5414: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5415: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE5416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5416: 
	je	.L476
 jmp .UNIQUE5417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5417: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5418: 
	movq	16(%rax), %rax
 jmp .UNIQUE5419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5419: 
	testq	%rax, %rax
 jmp .UNIQUE5420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5420: 
	je	.L478
 jmp .UNIQUE5421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5421: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5422: 
	movq	16(%rax), %rax
 jmp .UNIQUE5423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5423: 
	movq	8(%rax), %rax
 jmp .UNIQUE5424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5424: 
	movq	%rax, %rdi
 jmp .UNIQUE5425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5425: 
	call	free
 jmp .UNIQUE5426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5426: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5427: 
	movq	16(%rax), %rax
 jmp .UNIQUE5428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5428: 
	movq	24(%rax), %rax
 jmp .UNIQUE5429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5429: 
	movq	%rax, %rdi
 jmp .UNIQUE5430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5430: 
	call	free
 jmp .UNIQUE5431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5431: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5432: 
	movq	16(%rax), %rax
 jmp .UNIQUE5433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5433: 
	movq	40(%rax), %rax
 jmp .UNIQUE5434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5434: 
	movq	%rax, %rdi
 jmp .UNIQUE5435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5435: 
	call	free
 jmp .UNIQUE5436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5436: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5437: 
	movq	16(%rax), %rax
 jmp .UNIQUE5438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5438: 
	movq	56(%rax), %rax
 jmp .UNIQUE5439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5439: 
	movq	%rax, %rdi
 jmp .UNIQUE5440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5440: 
	call	free
 jmp .UNIQUE5441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5441: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5442: 
	movq	16(%rax), %rax
 jmp .UNIQUE5443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5443: 
	movq	72(%rax), %rax
 jmp .UNIQUE5444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5444: 
	movq	%rax, %rdi
 jmp .UNIQUE5445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5445: 
	call	free
 jmp .UNIQUE5446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5446: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5447: 
	movq	16(%rax), %rax
 jmp .UNIQUE5448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5448: 
	movq	96(%rax), %rax
 jmp .UNIQUE5449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5449: 
	movq	%rax, %rdi
 jmp .UNIQUE5450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5450: 
	call	free
 jmp .UNIQUE5451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5451: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5452: 
	movq	16(%rax), %rax
 jmp .UNIQUE5453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5453: 
	movq	88(%rax), %rax
 jmp .UNIQUE5454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5454: 
	movq	%rax, %rdi
 jmp .UNIQUE5455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5455: 
	call	free
 jmp .UNIQUE5456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5456: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5457: 
	movq	16(%rax), %rax
 jmp .UNIQUE5458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5458: 
	movq	112(%rax), %rax
 jmp .UNIQUE5459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5459: 
	movq	%rax, %rdi
 jmp .UNIQUE5460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5460: 
	call	free
 jmp .UNIQUE5461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5461: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE5462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5462: 
	jmp	.L479
.L480:
 jmp .UNIQUE5463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5463: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5464: 
	movq	16(%rax), %rax
 jmp .UNIQUE5465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5465: 
	movq	120(%rax), %rax
 jmp .UNIQUE5466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5466: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5467: 
	salq	$3, %rdx
 jmp .UNIQUE5468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5468: 
	addq	%rdx, %rax
 jmp .UNIQUE5469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5469: 
	movq	(%rax), %rax
 jmp .UNIQUE5470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5470: 
	movq	%rax, %rdi
 jmp .UNIQUE5471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5471: 
	call	free
 jmp .UNIQUE5472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5472: 
	addq	$1, -8(%rbp)
.L479:
 jmp .UNIQUE5473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5473: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5474: 
	movq	16(%rax), %rax
 jmp .UNIQUE5475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5475: 
	movq	104(%rax), %rax
 jmp .UNIQUE5476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5476: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE5477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5477: 
	jg	.L480
 jmp .UNIQUE5478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5478: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5479: 
	movq	16(%rax), %rax
 jmp .UNIQUE5480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5480: 
	movq	%rax, %rdi
 jmp .UNIQUE5481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5481: 
	call	free
.L478:
 jmp .UNIQUE5482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5482: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5483: 
	movq	%rax, %rdi
 jmp .UNIQUE5484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5484: 
	call	free
.L476:
 jmp .UNIQUE5485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5485: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5486: 
	ret
	.cfi_endproc
.LFE82:
	.size	free_fun_params, .-free_fun_params
	.globl	free_fun_params_that_point_to_stack
	.type	free_fun_params_that_point_to_stack, @function
free_fun_params_that_point_to_stack:
.LFB83:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5487: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5488: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5489: 
	subq	$16, %rsp
 jmp .UNIQUE5490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5490: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5491: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5492: 
	movq	16(%rax), %rax
 jmp .UNIQUE5493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5493: 
	movq	88(%rax), %rax
 jmp .UNIQUE5494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5494: 
	movq	%rax, %rdi
 jmp .UNIQUE5495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5495: 
	call	free
 jmp .UNIQUE5496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5496: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5497: 
	movq	16(%rax), %rax
 jmp .UNIQUE5498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5498: 
	movq	112(%rax), %rax
 jmp .UNIQUE5499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5499: 
	movq	%rax, %rdi
 jmp .UNIQUE5500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5500: 
	call	free
 jmp .UNIQUE5501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5501: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5502: 
	movq	16(%rax), %rax
 jmp .UNIQUE5503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5503: 
	movq	%rax, %rdi
 jmp .UNIQUE5504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5504: 
	call	free
 jmp .UNIQUE5505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5505: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5506: 
	movq	%rax, %rdi
 jmp .UNIQUE5507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5507: 
	call	free
 jmp .UNIQUE5508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5508: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5509: 
	ret
	.cfi_endproc
.LFE83:
	.size	free_fun_params_that_point_to_stack, .-free_fun_params_that_point_to_stack
	.globl	put_fun_params_into_secure_stack_and_free
	.type	put_fun_params_into_secure_stack_and_free, @function
put_fun_params_into_secure_stack_and_free:
.LFB84:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5510: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5511: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5512: 
	subq	$32, %rsp
 jmp .UNIQUE5513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5513: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5514: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5515: 
	movq	%rax, %rdi
 jmp .UNIQUE5516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5516: 
	call	put_fun_params_into_secure_stack
 jmp .UNIQUE5517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5517: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE5518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5518: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5519: 
	movq	%rax, %rdi
 jmp .UNIQUE5520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5520: 
	call	free_fun_params
 jmp .UNIQUE5521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5521: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5522: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5523: 
	ret
	.cfi_endproc
.LFE84:
	.size	put_fun_params_into_secure_stack_and_free, .-put_fun_params_into_secure_stack_and_free
	.globl	get_stack_char
	.type	get_stack_char, @function
get_stack_char:
.LFB85:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5524: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5525: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5526: 
	subq	$24, %rsp
 jmp .UNIQUE5527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5527: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5528: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5529: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE5530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5530: 
	movl	$0, %r8d
 jmp .UNIQUE5531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5531: 
	movl	$0, %ecx
 jmp .UNIQUE5532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5532: 
	movl	$1, %esi
 jmp .UNIQUE5533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5533: 
	movq	%rax, %rdi
 jmp .UNIQUE5534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5534: 
	call	get_secure_stack_data
 jmp .UNIQUE5535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5535: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE5536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5536: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5537: 
	ret
	.cfi_endproc
.LFE85:
	.size	get_stack_char, .-get_stack_char
	.globl	get_stack_int
	.type	get_stack_int, @function
get_stack_int:
.LFB86:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5538: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5539: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5540: 
	subq	$24, %rsp
 jmp .UNIQUE5541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5541: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5542: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5543: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5544: 
	movl	$0, %r8d
 jmp .UNIQUE5545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5545: 
	movl	$0, %ecx
 jmp .UNIQUE5546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5546: 
	movl	$4, %esi
 jmp .UNIQUE5547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5547: 
	movq	%rax, %rdi
 jmp .UNIQUE5548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5548: 
	call	get_secure_stack_data
 jmp .UNIQUE5549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5549: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE5550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5550: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5551: 
	ret
	.cfi_endproc
.LFE86:
	.size	get_stack_int, .-get_stack_int
	.globl	get_stack_long_int
	.type	get_stack_long_int, @function
get_stack_long_int:
.LFB87:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5552: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5553: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5554: 
	subq	$24, %rsp
 jmp .UNIQUE5555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5555: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5556: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5557: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5558: 
	movl	$0, %r8d
 jmp .UNIQUE5559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5559: 
	movl	$0, %ecx
 jmp .UNIQUE5560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5560: 
	movl	$8, %esi
 jmp .UNIQUE5561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5561: 
	movq	%rax, %rdi
 jmp .UNIQUE5562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5562: 
	call	get_secure_stack_data
 jmp .UNIQUE5563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5563: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5564: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5565: 
	ret
	.cfi_endproc
.LFE87:
	.size	get_stack_long_int, .-get_stack_long_int
	.globl	get_stack_pointer
	.type	get_stack_pointer, @function
get_stack_pointer:
.LFB88:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5566: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5567: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5568: 
	subq	$24, %rsp
 jmp .UNIQUE5569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5569: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5570: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5571: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5572: 
	movl	$0, %r8d
 jmp .UNIQUE5573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5573: 
	movl	$0, %ecx
 jmp .UNIQUE5574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5574: 
	movl	$8, %esi
 jmp .UNIQUE5575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5575: 
	movq	%rax, %rdi
 jmp .UNIQUE5576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5576: 
	call	get_secure_stack_data
 jmp .UNIQUE5577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5577: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5578: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5579: 
	ret
	.cfi_endproc
.LFE88:
	.size	get_stack_pointer, .-get_stack_pointer
	.globl	get_stack_float
	.type	get_stack_float, @function
get_stack_float:
.LFB89:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5580: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5581: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5582: 
	subq	$32, %rsp
 jmp .UNIQUE5583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5583: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5584: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5585: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5586: 
	movl	$0, %r8d
 jmp .UNIQUE5587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5587: 
	movl	$0, %ecx
 jmp .UNIQUE5588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5588: 
	movl	$4, %esi
 jmp .UNIQUE5589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5589: 
	movq	%rax, %rdi
 jmp .UNIQUE5590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5590: 
	call	get_secure_stack_data
 jmp .UNIQUE5591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5591: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE5592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5592: 
	movl	%eax, -28(%rbp)
 jmp .UNIQUE5593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5593: 
	movss	-28(%rbp), %xmm0
 jmp .UNIQUE5594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5594: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5595: 
	ret
	.cfi_endproc
.LFE89:
	.size	get_stack_float, .-get_stack_float
	.globl	get_stack_double
	.type	get_stack_double, @function
get_stack_double:
.LFB90:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5596: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5597: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5598: 
	subq	$32, %rsp
 jmp .UNIQUE5599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5599: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5600: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5601: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5602: 
	movl	$0, %r8d
 jmp .UNIQUE5603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5603: 
	movl	$0, %ecx
 jmp .UNIQUE5604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5604: 
	movl	$8, %esi
 jmp .UNIQUE5605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5605: 
	movq	%rax, %rdi
 jmp .UNIQUE5606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5606: 
	call	get_secure_stack_data
 jmp .UNIQUE5607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5607: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5608: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5609: 
	movsd	-32(%rbp), %xmm0
 jmp .UNIQUE5610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5610: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5611: 
	ret
	.cfi_endproc
.LFE90:
	.size	get_stack_double, .-get_stack_double
	.globl	get_stack_array_element
	.type	get_stack_array_element, @function
get_stack_array_element:
.LFB91:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5612: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5613: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5614: 
	subq	$32, %rsp
 jmp .UNIQUE5615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5615: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5616: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5617: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5618: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE5619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5619: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE5620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5620: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE5621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5621: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE5622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5622: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5623: 
	movq	%rcx, %r8
 jmp .UNIQUE5624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5624: 
	movl	$1, %ecx
 jmp .UNIQUE5625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5625: 
	movq	%rax, %rdi
 jmp .UNIQUE5626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5626: 
	call	get_secure_stack_data
 jmp .UNIQUE5627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5627: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5628: 
	ret
	.cfi_endproc
.LFE91:
	.size	get_stack_array_element, .-get_stack_array_element
	.globl	get_stack_char_array_element
	.type	get_stack_char_array_element, @function
get_stack_char_array_element:
.LFB92:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5629: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5630: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5631: 
	subq	$32, %rsp
 jmp .UNIQUE5632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5632: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5633: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5634: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5635: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5636: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE5637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5637: 
	movq	%rcx, %r8
 jmp .UNIQUE5638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5638: 
	movl	$1, %ecx
 jmp .UNIQUE5639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5639: 
	movl	$1, %esi
 jmp .UNIQUE5640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5640: 
	movq	%rax, %rdi
 jmp .UNIQUE5641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5641: 
	call	get_secure_stack_data
 jmp .UNIQUE5642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5642: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE5643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5643: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5644: 
	ret
	.cfi_endproc
.LFE92:
	.size	get_stack_char_array_element, .-get_stack_char_array_element
	.globl	get_stack_int_array_element
	.type	get_stack_int_array_element, @function
get_stack_int_array_element:
.LFB93:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5645: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5646: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5647: 
	subq	$32, %rsp
 jmp .UNIQUE5648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5648: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5649: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5650: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5651: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5652: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5653: 
	movq	%rcx, %r8
 jmp .UNIQUE5654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5654: 
	movl	$1, %ecx
 jmp .UNIQUE5655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5655: 
	movl	$4, %esi
 jmp .UNIQUE5656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5656: 
	movq	%rax, %rdi
 jmp .UNIQUE5657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5657: 
	call	get_secure_stack_data
 jmp .UNIQUE5658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5658: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE5659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5659: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5660: 
	ret
	.cfi_endproc
.LFE93:
	.size	get_stack_int_array_element, .-get_stack_int_array_element
	.globl	get_stack_long_int_array_element
	.type	get_stack_long_int_array_element, @function
get_stack_long_int_array_element:
.LFB94:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5661: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5662: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5663: 
	subq	$32, %rsp
 jmp .UNIQUE5664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5664: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5665: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5666: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5667: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5668: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5669: 
	movq	%rcx, %r8
 jmp .UNIQUE5670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5670: 
	movl	$1, %ecx
 jmp .UNIQUE5671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5671: 
	movl	$8, %esi
 jmp .UNIQUE5672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5672: 
	movq	%rax, %rdi
 jmp .UNIQUE5673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5673: 
	call	get_secure_stack_data
 jmp .UNIQUE5674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5674: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5675: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5676: 
	ret
	.cfi_endproc
.LFE94:
	.size	get_stack_long_int_array_element, .-get_stack_long_int_array_element
	.globl	get_stack_pointer_array_element
	.type	get_stack_pointer_array_element, @function
get_stack_pointer_array_element:
.LFB95:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5677: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5678: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5679: 
	subq	$32, %rsp
 jmp .UNIQUE5680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5680: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5681: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5682: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5683: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5684: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5685: 
	movq	%rcx, %r8
 jmp .UNIQUE5686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5686: 
	movl	$1, %ecx
 jmp .UNIQUE5687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5687: 
	movl	$8, %esi
 jmp .UNIQUE5688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5688: 
	movq	%rax, %rdi
 jmp .UNIQUE5689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5689: 
	call	get_secure_stack_data
 jmp .UNIQUE5690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5690: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5691: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5692: 
	ret
	.cfi_endproc
.LFE95:
	.size	get_stack_pointer_array_element, .-get_stack_pointer_array_element
	.globl	get_stack_float_array_element
	.type	get_stack_float_array_element, @function
get_stack_float_array_element:
.LFB96:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5693: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5694: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5695: 
	subq	$40, %rsp
 jmp .UNIQUE5696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5696: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5697: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5698: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5699: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5700: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5701: 
	movq	%rcx, %r8
 jmp .UNIQUE5702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5702: 
	movl	$1, %ecx
 jmp .UNIQUE5703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5703: 
	movl	$4, %esi
 jmp .UNIQUE5704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5704: 
	movq	%rax, %rdi
 jmp .UNIQUE5705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5705: 
	call	get_secure_stack_data
 jmp .UNIQUE5706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5706: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE5707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5707: 
	movl	%eax, -36(%rbp)
 jmp .UNIQUE5708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5708: 
	movss	-36(%rbp), %xmm0
 jmp .UNIQUE5709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5709: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5710: 
	ret
	.cfi_endproc
.LFE96:
	.size	get_stack_float_array_element, .-get_stack_float_array_element
	.globl	get_stack_double_array_element
	.type	get_stack_double_array_element, @function
get_stack_double_array_element:
.LFB97:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5711: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5712: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5713: 
	subq	$40, %rsp
 jmp .UNIQUE5714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5714: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5715: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5716: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5717: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5718: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5719: 
	movq	%rcx, %r8
 jmp .UNIQUE5720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5720: 
	movl	$1, %ecx
 jmp .UNIQUE5721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5721: 
	movl	$8, %esi
 jmp .UNIQUE5722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5722: 
	movq	%rax, %rdi
 jmp .UNIQUE5723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5723: 
	call	get_secure_stack_data
 jmp .UNIQUE5724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5724: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5725: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE5726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5726: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE5727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5727: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5728: 
	ret
	.cfi_endproc
.LFE97:
	.size	get_stack_double_array_element, .-get_stack_double_array_element
	.globl	get_arbitrary_block_in_stack
	.type	get_arbitrary_block_in_stack, @function
get_arbitrary_block_in_stack:
.LFB98:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5729: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5730: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5731: 
	subq	$24, %rsp
 jmp .UNIQUE5732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5732: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5733: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5734: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5735: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE5736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5736: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE5737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5737: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5738: 
	movl	$0, %r8d
 jmp .UNIQUE5739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5739: 
	movl	$0, %ecx
 jmp .UNIQUE5740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5740: 
	movq	%rax, %rdi
 jmp .UNIQUE5741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5741: 
	call	get_secure_stack_data
 jmp .UNIQUE5742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5742: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5743: 
	ret
	.cfi_endproc
.LFE98:
	.size	get_arbitrary_block_in_stack, .-get_arbitrary_block_in_stack
	.globl	get_arbitrary_block_in_stack_with_offset
	.type	get_arbitrary_block_in_stack_with_offset, @function
get_arbitrary_block_in_stack_with_offset:
.LFB99:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5744: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5745: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5746: 
	subq	$32, %rsp
 jmp .UNIQUE5747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5747: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5748: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5749: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5750: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE5751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5751: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE5752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5752: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE5753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5753: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE5754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5754: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5755: 
	movq	%rcx, %r8
 jmp .UNIQUE5756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5756: 
	movl	$2, %ecx
 jmp .UNIQUE5757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5757: 
	movq	%rax, %rdi
 jmp .UNIQUE5758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5758: 
	call	get_secure_stack_data
 jmp .UNIQUE5759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5759: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5760: 
	ret
	.cfi_endproc
.LFE99:
	.size	get_arbitrary_block_in_stack_with_offset, .-get_arbitrary_block_in_stack_with_offset
	.globl	set_stack_char
	.type	set_stack_char, @function
set_stack_char:
.LFB100:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5761: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5762: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5763: 
	subq	$16, %rsp
 jmp .UNIQUE5764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5764: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5765: 
	movl	%esi, %eax
 jmp .UNIQUE5766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5766: 
	movb	%al, -12(%rbp)
 jmp .UNIQUE5767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5767: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5768: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE5769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5769: 
	movq	%rax, %rsi
 jmp .UNIQUE5770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5770: 
	movl	$1, %edi
 jmp .UNIQUE5771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5771: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE5772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5772: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5773: 
	ret
	.cfi_endproc
.LFE100:
	.size	set_stack_char, .-set_stack_char
	.globl	set_stack_int
	.type	set_stack_int, @function
set_stack_int:
.LFB101:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5774: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5775: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5776: 
	subq	$16, %rsp
 jmp .UNIQUE5777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5777: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5778: 
	movl	%esi, -12(%rbp)
 jmp .UNIQUE5779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5779: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5780: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE5781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5781: 
	movq	%rax, %rsi
 jmp .UNIQUE5782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5782: 
	movl	$4, %edi
 jmp .UNIQUE5783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5783: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE5784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5784: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5785: 
	ret
	.cfi_endproc
.LFE101:
	.size	set_stack_int, .-set_stack_int
	.globl	set_stack_long_int
	.type	set_stack_long_int, @function
set_stack_long_int:
.LFB102:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5786: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5787: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5788: 
	subq	$16, %rsp
 jmp .UNIQUE5789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5789: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5790: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5791: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5792: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5793: 
	movq	%rax, %rsi
 jmp .UNIQUE5794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5794: 
	movl	$8, %edi
 jmp .UNIQUE5795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5795: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE5796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5796: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5797: 
	ret
	.cfi_endproc
.LFE102:
	.size	set_stack_long_int, .-set_stack_long_int
	.globl	set_stack_pointer
	.type	set_stack_pointer, @function
set_stack_pointer:
.LFB103:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5798: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5799: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5800: 
	subq	$16, %rsp
 jmp .UNIQUE5801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5801: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5802: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5803: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5804: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5805: 
	movq	%rax, %rsi
 jmp .UNIQUE5806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5806: 
	movl	$8, %edi
 jmp .UNIQUE5807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5807: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE5808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5808: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5809: 
	ret
	.cfi_endproc
.LFE103:
	.size	set_stack_pointer, .-set_stack_pointer
	.globl	set_stack_float
	.type	set_stack_float, @function
set_stack_float:
.LFB104:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5810: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5811: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5812: 
	subq	$16, %rsp
 jmp .UNIQUE5813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5813: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5814: 
	movss	%xmm0, -12(%rbp)
 jmp .UNIQUE5815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5815: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5816: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE5817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5817: 
	movq	%rax, %rsi
 jmp .UNIQUE5818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5818: 
	movl	$4, %edi
 jmp .UNIQUE5819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5819: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE5820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5820: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5821: 
	ret
	.cfi_endproc
.LFE104:
	.size	set_stack_float, .-set_stack_float
	.globl	set_stack_double
	.type	set_stack_double, @function
set_stack_double:
.LFB105:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5822: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5823: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5824: 
	subq	$16, %rsp
 jmp .UNIQUE5825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5825: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5826: 
	movsd	%xmm0, -16(%rbp)
 jmp .UNIQUE5827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5827: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5828: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5829: 
	movq	%rax, %rsi
 jmp .UNIQUE5830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5830: 
	movl	$8, %edi
 jmp .UNIQUE5831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5831: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE5832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5832: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5833: 
	ret
	.cfi_endproc
.LFE105:
	.size	set_stack_double, .-set_stack_double
	.globl	set_stack_array_element
	.type	set_stack_array_element, @function
set_stack_array_element:
.LFB106:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5834: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5835: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5836: 
	subq	$32, %rsp
 jmp .UNIQUE5837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5837: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5838: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5839: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5840: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE5841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5841: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE5842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5842: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE5843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5843: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE5844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5844: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5845: 
	movq	%rcx, %r8
 jmp .UNIQUE5846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5846: 
	movl	$1, %ecx
 jmp .UNIQUE5847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5847: 
	movq	%rax, %rdi
 jmp .UNIQUE5848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5848: 
	call	set_secure_stack_data
 jmp .UNIQUE5849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5849: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5850: 
	ret
	.cfi_endproc
.LFE106:
	.size	set_stack_array_element, .-set_stack_array_element
	.globl	set_stack_char_array_element
	.type	set_stack_char_array_element, @function
set_stack_char_array_element:
.LFB107:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5851: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5852: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5853: 
	subq	$40, %rsp
 jmp .UNIQUE5854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5854: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5855: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5856: 
	movl	%edx, %eax
 jmp .UNIQUE5857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5857: 
	movb	%al, -36(%rbp)
 jmp .UNIQUE5858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5858: 
	movzbl	-36(%rbp), %eax
 jmp .UNIQUE5859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5859: 
	movb	%al, -1(%rbp)
 jmp .UNIQUE5860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5860: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5861: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5862: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE5863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5863: 
	movq	%rcx, %r8
 jmp .UNIQUE5864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5864: 
	movl	$1, %ecx
 jmp .UNIQUE5865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5865: 
	movl	$1, %esi
 jmp .UNIQUE5866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5866: 
	movq	%rax, %rdi
 jmp .UNIQUE5867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5867: 
	call	set_secure_stack_data
 jmp .UNIQUE5868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5868: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5869: 
	ret
	.cfi_endproc
.LFE107:
	.size	set_stack_char_array_element, .-set_stack_char_array_element
	.globl	set_stack_int_array_element
	.type	set_stack_int_array_element, @function
set_stack_int_array_element:
.LFB108:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5870: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5871: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5872: 
	subq	$40, %rsp
 jmp .UNIQUE5873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5873: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5874: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5875: 
	movl	%edx, -36(%rbp)
 jmp .UNIQUE5876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5876: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE5877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5877: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE5878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5878: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5879: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5880: 
	leaq	-4(%rbp), %rax
 jmp .UNIQUE5881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5881: 
	movq	%rcx, %r8
 jmp .UNIQUE5882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5882: 
	movl	$1, %ecx
 jmp .UNIQUE5883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5883: 
	movl	$4, %esi
 jmp .UNIQUE5884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5884: 
	movq	%rax, %rdi
 jmp .UNIQUE5885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5885: 
	call	set_secure_stack_data
 jmp .UNIQUE5886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5886: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5887: 
	ret
	.cfi_endproc
.LFE108:
	.size	set_stack_int_array_element, .-set_stack_int_array_element
	.globl	set_stack_long_int_array_element
	.type	set_stack_long_int_array_element, @function
set_stack_long_int_array_element:
.LFB109:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5888: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5889: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5890: 
	subq	$40, %rsp
 jmp .UNIQUE5891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5891: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5892: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5893: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE5894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5894: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE5895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5895: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE5896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5896: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5897: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5898: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE5899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5899: 
	movq	%rcx, %r8
 jmp .UNIQUE5900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5900: 
	movl	$1, %ecx
 jmp .UNIQUE5901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5901: 
	movl	$8, %esi
 jmp .UNIQUE5902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5902: 
	movq	%rax, %rdi
 jmp .UNIQUE5903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5903: 
	call	set_secure_stack_data
 jmp .UNIQUE5904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5904: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5905: 
	ret
	.cfi_endproc
.LFE109:
	.size	set_stack_long_int_array_element, .-set_stack_long_int_array_element
	.globl	set_stack_pointer_array_element
	.type	set_stack_pointer_array_element, @function
set_stack_pointer_array_element:
.LFB110:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5906: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5907: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5908: 
	subq	$40, %rsp
 jmp .UNIQUE5909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5909: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5910: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5911: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE5912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5912: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE5913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5913: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE5914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5914: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5915: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5916: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE5917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5917: 
	movq	%rcx, %r8
 jmp .UNIQUE5918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5918: 
	movl	$1, %ecx
 jmp .UNIQUE5919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5919: 
	movl	$8, %esi
 jmp .UNIQUE5920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5920: 
	movq	%rax, %rdi
 jmp .UNIQUE5921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5921: 
	call	set_secure_stack_data
 jmp .UNIQUE5922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5922: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5923: 
	ret
	.cfi_endproc
.LFE110:
	.size	set_stack_pointer_array_element, .-set_stack_pointer_array_element
	.globl	set_stack_float_array_element
	.type	set_stack_float_array_element, @function
set_stack_float_array_element:
.LFB111:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5924: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5925: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5926: 
	subq	$40, %rsp
 jmp .UNIQUE5927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5927: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5928: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5929: 
	movss	%xmm0, -36(%rbp)
 jmp .UNIQUE5930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5930: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE5931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5931: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE5932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5932: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5933: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5934: 
	leaq	-4(%rbp), %rax
 jmp .UNIQUE5935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5935: 
	movq	%rcx, %r8
 jmp .UNIQUE5936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5936: 
	movl	$1, %ecx
 jmp .UNIQUE5937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5937: 
	movl	$4, %esi
 jmp .UNIQUE5938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5938: 
	movq	%rax, %rdi
 jmp .UNIQUE5939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5939: 
	call	set_secure_stack_data
 jmp .UNIQUE5940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5940: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5941: 
	ret
	.cfi_endproc
.LFE111:
	.size	set_stack_float_array_element, .-set_stack_float_array_element
	.globl	set_stack_double_array_element
	.type	set_stack_double_array_element, @function
set_stack_double_array_element:
.LFB112:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5942: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5943: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5944: 
	subq	$40, %rsp
 jmp .UNIQUE5945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5945: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5946: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5947: 
	movsd	%xmm0, -40(%rbp)
 jmp .UNIQUE5948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5948: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE5949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5949: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE5950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5950: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5951: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5952: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE5953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5953: 
	movq	%rcx, %r8
 jmp .UNIQUE5954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5954: 
	movl	$1, %ecx
 jmp .UNIQUE5955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5955: 
	movl	$8, %esi
 jmp .UNIQUE5956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5956: 
	movq	%rax, %rdi
 jmp .UNIQUE5957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5957: 
	call	set_secure_stack_data
 jmp .UNIQUE5958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5958: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5959: 
	ret
	.cfi_endproc
.LFE112:
	.size	set_stack_double_array_element, .-set_stack_double_array_element
	.globl	set_arbitrary_block_in_stack
	.type	set_arbitrary_block_in_stack, @function
set_arbitrary_block_in_stack:
.LFB113:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5960: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5961: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5962: 
	subq	$24, %rsp
 jmp .UNIQUE5963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5963: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5964: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5965: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5966: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE5967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5967: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE5968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5968: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5969: 
	movl	$0, %r8d
 jmp .UNIQUE5970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5970: 
	movl	$0, %ecx
 jmp .UNIQUE5971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5971: 
	movq	%rax, %rdi
 jmp .UNIQUE5972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5972: 
	call	set_secure_stack_data
 jmp .UNIQUE5973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5973: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5974: 
	ret
	.cfi_endproc
.LFE113:
	.size	set_arbitrary_block_in_stack, .-set_arbitrary_block_in_stack
	.globl	set_arbitrary_block_in_stack_with_offset
	.type	set_arbitrary_block_in_stack_with_offset, @function
set_arbitrary_block_in_stack_with_offset:
.LFB114:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5975: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5976: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5977: 
	subq	$32, %rsp
 jmp .UNIQUE5978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5978: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5979: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5980: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5981: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE5982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5982: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE5983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5983: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE5984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5984: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE5985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5985: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5986: 
	movq	%rcx, %r8
 jmp .UNIQUE5987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5987: 
	movl	$2, %ecx
 jmp .UNIQUE5988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5988: 
	movq	%rax, %rdi
 jmp .UNIQUE5989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5989: 
	call	set_secure_stack_data
 jmp .UNIQUE5990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5990: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5991: 
	ret
	.cfi_endproc
.LFE114:
	.size	set_arbitrary_block_in_stack_with_offset, .-set_arbitrary_block_in_stack_with_offset
	.section	.rodata
.LC78:
	.string	"Printing stack memory:"
	.text
	.globl	print_stack_mem
	.type	print_stack_mem, @function
print_stack_mem:
.LFB115:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5992: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5993: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5994: 
	subq	$32, %rsp
 jmp .UNIQUE5995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5995: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5996: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5997: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE5998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5998: 
	movl	$.LC78, %edi
 jmp .UNIQUE5999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5999: 
	call	puts
 jmp .UNIQUE6000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6000: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6001: 
	jmp	.L527
.L528:
 jmp .UNIQUE6002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6002: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6003: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6004: 
	addq	%rdx, %rax
 jmp .UNIQUE6005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6005: 
	movzbl	(%rax), %eax
 jmp .UNIQUE6006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6006: 
	movzbl	%al, %eax
 jmp .UNIQUE6007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6007: 
	movl	%eax, %esi
 jmp .UNIQUE6008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6008: 
	movl	$.LC10, %edi
 jmp .UNIQUE6009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6009: 
	movl	$0, %eax
 jmp .UNIQUE6010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6010: 
	call	printf
 jmp .UNIQUE6011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6011: 
	addq	$1, -16(%rbp)
.L527:
 jmp .UNIQUE6012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6012: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE6013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6013: 
	cmpq	%rax, -16(%rbp)
 jmp .UNIQUE6014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6014: 
	jl	.L528
 jmp .UNIQUE6015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6015: 
	movl	$10, %edi
 jmp .UNIQUE6016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6016: 
	call	putchar
 jmp .UNIQUE6017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6017: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6018: 
	ret
	.cfi_endproc
.LFE115:
	.size	print_stack_mem, .-print_stack_mem
	.section	.rodata
.LC79:
	.string	"Printing fun params:"
	.align 8
.LC80:
	.string	"Total size of all params in bytes: %ld\n"
	.align 8
.LC81:
	.string	"Total amount of chunks needed in secure stack: %ld\n"
.LC82:
	.string	"Number of char elements: %ld\n"
.LC83:
	.string	"Char elements:"
.LC84:
	.string	"%c "
.LC85:
	.string	"Number of int elements: %ld\n"
.LC86:
	.string	"Int elements:"
	.align 8
.LC87:
	.string	"Number of long int elements: %ld\n"
.LC88:
	.string	"Long int elements:"
.LC89:
	.string	"%ld "
	.align 8
.LC90:
	.string	"Number of float elements: %ld\n"
.LC91:
	.string	"Float elements:"
.LC92:
	.string	"%f "
	.align 8
.LC93:
	.string	"Number of double elements: %ld\n"
.LC94:
	.string	"Double elements:"
.LC95:
	.string	"%lf "
	.align 8
.LC96:
	.string	"Number of pointer elements: %ld\n"
.LC97:
	.string	"Pointer element sizes:"
.LC98:
	.string	"pointer elements:"
	.align 8
.LC99:
	.string	"Number of arb pointer elements: %ld\n"
.LC100:
	.string	"Arb pointer element sizes:"
.LC101:
	.string	"Arb pointers:"
	.text
	.globl	print_fun_params
	.type	print_fun_params, @function
print_fun_params:
.LFB116:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6019: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6020: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6021: 
	subq	$32, %rsp
 jmp .UNIQUE6022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6022: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6023: 
	movl	$.LC79, %edi
 jmp .UNIQUE6024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6024: 
	call	puts
 jmp .UNIQUE6025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6025: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6026: 
	movq	(%rax), %rax
 jmp .UNIQUE6027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6027: 
	movq	%rax, %rsi
 jmp .UNIQUE6028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6028: 
	movl	$.LC80, %edi
 jmp .UNIQUE6029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6029: 
	movl	$0, %eax
 jmp .UNIQUE6030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6030: 
	call	printf
 jmp .UNIQUE6031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6031: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6032: 
	movq	8(%rax), %rax
 jmp .UNIQUE6033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6033: 
	movq	%rax, %rsi
 jmp .UNIQUE6034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6034: 
	movl	$.LC81, %edi
 jmp .UNIQUE6035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6035: 
	movl	$0, %eax
 jmp .UNIQUE6036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6036: 
	call	printf
 jmp .UNIQUE6037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6037: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6038: 
	movq	16(%rax), %rax
 jmp .UNIQUE6039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6039: 
	movq	(%rax), %rax
 jmp .UNIQUE6040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6040: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6041: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6042: 
	movq	%rax, %rsi
 jmp .UNIQUE6043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6043: 
	movl	$.LC82, %edi
 jmp .UNIQUE6044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6044: 
	movl	$0, %eax
 jmp .UNIQUE6045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6045: 
	call	printf
 jmp .UNIQUE6046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6046: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6047: 
	jle	.L530
 jmp .UNIQUE6048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6048: 
	movl	$.LC83, %edi
 jmp .UNIQUE6049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6049: 
	call	puts
 jmp .UNIQUE6050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6050: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6051: 
	jmp	.L531
.L532:
 jmp .UNIQUE6052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6052: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6053: 
	movq	16(%rax), %rax
 jmp .UNIQUE6054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6054: 
	movq	8(%rax), %rdx
 jmp .UNIQUE6055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6055: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6056: 
	addq	%rdx, %rax
 jmp .UNIQUE6057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6057: 
	movzbl	(%rax), %eax
 jmp .UNIQUE6058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6058: 
	movsbl	%al, %eax
 jmp .UNIQUE6059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6059: 
	movl	%eax, %esi
 jmp .UNIQUE6060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6060: 
	movl	$.LC84, %edi
 jmp .UNIQUE6061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6061: 
	movl	$0, %eax
 jmp .UNIQUE6062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6062: 
	call	printf
 jmp .UNIQUE6063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6063: 
	addq	$1, -16(%rbp)
.L531:
 jmp .UNIQUE6064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6064: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6065: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6066: 
	jl	.L532
 jmp .UNIQUE6067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6067: 
	movl	$10, %edi
 jmp .UNIQUE6068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6068: 
	call	putchar
.L530:
 jmp .UNIQUE6069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6069: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6070: 
	movq	16(%rax), %rax
 jmp .UNIQUE6071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6071: 
	movq	16(%rax), %rax
 jmp .UNIQUE6072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6072: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6073: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6074: 
	movq	%rax, %rsi
 jmp .UNIQUE6075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6075: 
	movl	$.LC85, %edi
 jmp .UNIQUE6076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6076: 
	movl	$0, %eax
 jmp .UNIQUE6077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6077: 
	call	printf
 jmp .UNIQUE6078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6078: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6079: 
	jle	.L533
 jmp .UNIQUE6080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6080: 
	movl	$.LC86, %edi
 jmp .UNIQUE6081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6081: 
	call	puts
 jmp .UNIQUE6082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6082: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6083: 
	jmp	.L534
.L535:
 jmp .UNIQUE6084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6084: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6085: 
	movq	16(%rax), %rax
 jmp .UNIQUE6086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6086: 
	movq	24(%rax), %rax
 jmp .UNIQUE6087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6087: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6088: 
	salq	$2, %rdx
 jmp .UNIQUE6089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6089: 
	addq	%rdx, %rax
 jmp .UNIQUE6090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6090: 
	movl	(%rax), %eax
 jmp .UNIQUE6091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6091: 
	movl	%eax, %esi
 jmp .UNIQUE6092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6092: 
	movl	$.LC22, %edi
 jmp .UNIQUE6093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6093: 
	movl	$0, %eax
 jmp .UNIQUE6094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6094: 
	call	printf
 jmp .UNIQUE6095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6095: 
	addq	$1, -16(%rbp)
.L534:
 jmp .UNIQUE6096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6096: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6097: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6098: 
	jl	.L535
 jmp .UNIQUE6099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6099: 
	movl	$10, %edi
 jmp .UNIQUE6100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6100: 
	call	putchar
.L533:
 jmp .UNIQUE6101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6101: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6102: 
	movq	16(%rax), %rax
 jmp .UNIQUE6103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6103: 
	movq	32(%rax), %rax
 jmp .UNIQUE6104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6104: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6105: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6106: 
	movq	%rax, %rsi
 jmp .UNIQUE6107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6107: 
	movl	$.LC87, %edi
 jmp .UNIQUE6108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6108: 
	movl	$0, %eax
 jmp .UNIQUE6109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6109: 
	call	printf
 jmp .UNIQUE6110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6110: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6111: 
	jle	.L536
 jmp .UNIQUE6112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6112: 
	movl	$.LC88, %edi
 jmp .UNIQUE6113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6113: 
	call	puts
 jmp .UNIQUE6114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6114: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6115: 
	jmp	.L537
.L538:
 jmp .UNIQUE6116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6116: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6117: 
	movq	16(%rax), %rax
 jmp .UNIQUE6118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6118: 
	movq	40(%rax), %rax
 jmp .UNIQUE6119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6119: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6120: 
	salq	$3, %rdx
 jmp .UNIQUE6121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6121: 
	addq	%rdx, %rax
 jmp .UNIQUE6122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6122: 
	movq	(%rax), %rax
 jmp .UNIQUE6123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6123: 
	movq	%rax, %rsi
 jmp .UNIQUE6124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6124: 
	movl	$.LC89, %edi
 jmp .UNIQUE6125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6125: 
	movl	$0, %eax
 jmp .UNIQUE6126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6126: 
	call	printf
 jmp .UNIQUE6127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6127: 
	addq	$1, -16(%rbp)
.L537:
 jmp .UNIQUE6128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6128: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6129: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6130: 
	jl	.L538
 jmp .UNIQUE6131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6131: 
	movl	$10, %edi
 jmp .UNIQUE6132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6132: 
	call	putchar
.L536:
 jmp .UNIQUE6133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6133: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6134: 
	movq	16(%rax), %rax
 jmp .UNIQUE6135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6135: 
	movq	48(%rax), %rax
 jmp .UNIQUE6136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6136: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6137: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6138: 
	movq	%rax, %rsi
 jmp .UNIQUE6139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6139: 
	movl	$.LC90, %edi
 jmp .UNIQUE6140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6140: 
	movl	$0, %eax
 jmp .UNIQUE6141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6141: 
	call	printf
 jmp .UNIQUE6142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6142: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6143: 
	jle	.L539
 jmp .UNIQUE6144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6144: 
	movl	$.LC91, %edi
 jmp .UNIQUE6145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6145: 
	call	puts
 jmp .UNIQUE6146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6146: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6147: 
	jmp	.L540
.L541:
 jmp .UNIQUE6148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6148: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6149: 
	movq	16(%rax), %rax
 jmp .UNIQUE6150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6150: 
	movq	56(%rax), %rax
 jmp .UNIQUE6151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6151: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6152: 
	salq	$2, %rdx
 jmp .UNIQUE6153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6153: 
	addq	%rdx, %rax
 jmp .UNIQUE6154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6154: 
	movss	(%rax), %xmm0
 jmp .UNIQUE6155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6155: 
	unpcklps	%xmm0, %xmm0
 jmp .UNIQUE6156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6156: 
	cvtps2pd	%xmm0, %xmm0
 jmp .UNIQUE6157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6157: 
	movl	$.LC92, %edi
 jmp .UNIQUE6158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6158: 
	movl	$1, %eax
 jmp .UNIQUE6159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6159: 
	call	printf
 jmp .UNIQUE6160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6160: 
	addq	$1, -16(%rbp)
.L540:
 jmp .UNIQUE6161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6161: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6162: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6163: 
	jl	.L541
 jmp .UNIQUE6164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6164: 
	movl	$10, %edi
 jmp .UNIQUE6165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6165: 
	call	putchar
.L539:
 jmp .UNIQUE6166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6166: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6167: 
	movq	16(%rax), %rax
 jmp .UNIQUE6168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6168: 
	movq	64(%rax), %rax
 jmp .UNIQUE6169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6169: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6170: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6171: 
	movq	%rax, %rsi
 jmp .UNIQUE6172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6172: 
	movl	$.LC93, %edi
 jmp .UNIQUE6173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6173: 
	movl	$0, %eax
 jmp .UNIQUE6174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6174: 
	call	printf
 jmp .UNIQUE6175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6175: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6176: 
	jle	.L542
 jmp .UNIQUE6177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6177: 
	movl	$.LC94, %edi
 jmp .UNIQUE6178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6178: 
	call	puts
 jmp .UNIQUE6179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6179: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6180: 
	jmp	.L543
.L544:
 jmp .UNIQUE6181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6181: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6182: 
	movq	16(%rax), %rax
 jmp .UNIQUE6183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6183: 
	movq	72(%rax), %rax
 jmp .UNIQUE6184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6184: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6185: 
	salq	$3, %rdx
 jmp .UNIQUE6186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6186: 
	addq	%rdx, %rax
 jmp .UNIQUE6187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6187: 
	movq	(%rax), %rax
 jmp .UNIQUE6188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6188: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE6189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6189: 
	movsd	-32(%rbp), %xmm0
 jmp .UNIQUE6190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6190: 
	movl	$.LC95, %edi
 jmp .UNIQUE6191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6191: 
	movl	$1, %eax
 jmp .UNIQUE6192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6192: 
	call	printf
 jmp .UNIQUE6193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6193: 
	addq	$1, -16(%rbp)
.L543:
 jmp .UNIQUE6194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6194: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6195: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6196: 
	jl	.L544
 jmp .UNIQUE6197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6197: 
	movl	$10, %edi
 jmp .UNIQUE6198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6198: 
	call	putchar
.L542:
 jmp .UNIQUE6199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6199: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6200: 
	movq	16(%rax), %rax
 jmp .UNIQUE6201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6201: 
	movq	80(%rax), %rax
 jmp .UNIQUE6202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6202: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6203: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6204: 
	movq	%rax, %rsi
 jmp .UNIQUE6205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6205: 
	movl	$.LC96, %edi
 jmp .UNIQUE6206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6206: 
	movl	$0, %eax
 jmp .UNIQUE6207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6207: 
	call	printf
 jmp .UNIQUE6208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6208: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6209: 
	jle	.L545
 jmp .UNIQUE6210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6210: 
	movl	$.LC97, %edi
 jmp .UNIQUE6211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6211: 
	call	puts
 jmp .UNIQUE6212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6212: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6213: 
	jmp	.L546
.L547:
 jmp .UNIQUE6214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6214: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6215: 
	movq	16(%rax), %rax
 jmp .UNIQUE6216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6216: 
	movq	88(%rax), %rax
 jmp .UNIQUE6217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6217: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6218: 
	salq	$3, %rdx
 jmp .UNIQUE6219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6219: 
	addq	%rdx, %rax
 jmp .UNIQUE6220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6220: 
	movq	(%rax), %rax
 jmp .UNIQUE6221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6221: 
	movq	%rax, %rsi
 jmp .UNIQUE6222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6222: 
	movl	$.LC89, %edi
 jmp .UNIQUE6223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6223: 
	movl	$0, %eax
 jmp .UNIQUE6224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6224: 
	call	printf
 jmp .UNIQUE6225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6225: 
	addq	$1, -16(%rbp)
.L546:
 jmp .UNIQUE6226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6226: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6227: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6228: 
	jl	.L547
 jmp .UNIQUE6229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6229: 
	movl	$10, %edi
 jmp .UNIQUE6230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6230: 
	call	putchar
 jmp .UNIQUE6231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6231: 
	movl	$.LC98, %edi
 jmp .UNIQUE6232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6232: 
	call	puts
 jmp .UNIQUE6233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6233: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6234: 
	jmp	.L548
.L549:
 jmp .UNIQUE6235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6235: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6236: 
	movq	16(%rax), %rax
 jmp .UNIQUE6237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6237: 
	movq	96(%rax), %rax
 jmp .UNIQUE6238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6238: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6239: 
	salq	$3, %rdx
 jmp .UNIQUE6240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6240: 
	addq	%rdx, %rax
 jmp .UNIQUE6241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6241: 
	movq	(%rax), %rax
 jmp .UNIQUE6242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6242: 
	movq	%rax, %rsi
 jmp .UNIQUE6243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6243: 
	movl	$.LC89, %edi
 jmp .UNIQUE6244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6244: 
	movl	$0, %eax
 jmp .UNIQUE6245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6245: 
	call	printf
 jmp .UNIQUE6246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6246: 
	addq	$1, -16(%rbp)
.L548:
 jmp .UNIQUE6247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6247: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6248: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6249: 
	jl	.L549
 jmp .UNIQUE6250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6250: 
	movl	$10, %edi
 jmp .UNIQUE6251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6251: 
	call	putchar
.L545:
 jmp .UNIQUE6252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6252: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6253: 
	movq	16(%rax), %rax
 jmp .UNIQUE6254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6254: 
	movq	104(%rax), %rax
 jmp .UNIQUE6255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6255: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6256: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6257: 
	movq	%rax, %rsi
 jmp .UNIQUE6258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6258: 
	movl	$.LC99, %edi
 jmp .UNIQUE6259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6259: 
	movl	$0, %eax
 jmp .UNIQUE6260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6260: 
	call	printf
 jmp .UNIQUE6261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6261: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6262: 
	jle	.L529
 jmp .UNIQUE6263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6263: 
	movl	$.LC100, %edi
 jmp .UNIQUE6264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6264: 
	call	puts
 jmp .UNIQUE6265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6265: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6266: 
	jmp	.L551
.L552:
 jmp .UNIQUE6267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6267: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6268: 
	movq	16(%rax), %rax
 jmp .UNIQUE6269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6269: 
	movq	112(%rax), %rax
 jmp .UNIQUE6270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6270: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6271: 
	salq	$3, %rdx
 jmp .UNIQUE6272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6272: 
	addq	%rdx, %rax
 jmp .UNIQUE6273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6273: 
	movq	(%rax), %rax
 jmp .UNIQUE6274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6274: 
	movq	%rax, %rsi
 jmp .UNIQUE6275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6275: 
	movl	$.LC89, %edi
 jmp .UNIQUE6276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6276: 
	movl	$0, %eax
 jmp .UNIQUE6277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6277: 
	call	printf
 jmp .UNIQUE6278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6278: 
	addq	$1, -16(%rbp)
.L551:
 jmp .UNIQUE6279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6279: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6280: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6281: 
	jl	.L552
 jmp .UNIQUE6282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6282: 
	movl	$10, %edi
 jmp .UNIQUE6283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6283: 
	call	putchar
 jmp .UNIQUE6284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6284: 
	movl	$.LC101, %edi
 jmp .UNIQUE6285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6285: 
	call	puts
 jmp .UNIQUE6286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6286: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6287: 
	jmp	.L553
.L554:
 jmp .UNIQUE6288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6288: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6289: 
	movq	16(%rax), %rax
 jmp .UNIQUE6290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6290: 
	movq	120(%rax), %rax
 jmp .UNIQUE6291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6291: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6292: 
	salq	$3, %rdx
 jmp .UNIQUE6293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6293: 
	addq	%rdx, %rax
 jmp .UNIQUE6294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6294: 
	movq	(%rax), %rax
 jmp .UNIQUE6295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6295: 
	movq	%rax, %rsi
 jmp .UNIQUE6296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6296: 
	movl	$.LC89, %edi
 jmp .UNIQUE6297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6297: 
	movl	$0, %eax
 jmp .UNIQUE6298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6298: 
	call	printf
 jmp .UNIQUE6299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6299: 
	addq	$1, -16(%rbp)
.L553:
 jmp .UNIQUE6300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6300: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6301: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6302: 
	jl	.L554
 jmp .UNIQUE6303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6303: 
	movl	$10, %edi
 jmp .UNIQUE6304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6304: 
	call	putchar
.L529:
 jmp .UNIQUE6305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6305: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6306: 
	ret
	.cfi_endproc
.LFE116:
	.size	print_fun_params, .-print_fun_params
	.section	.rodata
	.align 8
.LC102:
	.string	"Printing fun params that point in stack:"
	.text
	.globl	print_fun_params_that_point_in_stack
	.type	print_fun_params_that_point_in_stack, @function
print_fun_params_that_point_in_stack:
.LFB117:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6307: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6308: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6309: 
	subq	$32, %rsp
 jmp .UNIQUE6310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6310: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6311: 
	movl	$.LC102, %edi
 jmp .UNIQUE6312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6312: 
	call	puts
 jmp .UNIQUE6313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6313: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6314: 
	movq	(%rax), %rax
 jmp .UNIQUE6315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6315: 
	movq	%rax, %rsi
 jmp .UNIQUE6316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6316: 
	movl	$.LC80, %edi
 jmp .UNIQUE6317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6317: 
	movl	$0, %eax
 jmp .UNIQUE6318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6318: 
	call	printf
 jmp .UNIQUE6319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6319: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6320: 
	movq	8(%rax), %rax
 jmp .UNIQUE6321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6321: 
	movq	%rax, %rsi
 jmp .UNIQUE6322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6322: 
	movl	$.LC81, %edi
 jmp .UNIQUE6323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6323: 
	movl	$0, %eax
 jmp .UNIQUE6324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6324: 
	call	printf
 jmp .UNIQUE6325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6325: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6326: 
	movq	16(%rax), %rax
 jmp .UNIQUE6327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6327: 
	movq	(%rax), %rax
 jmp .UNIQUE6328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6328: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6329: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6330: 
	movq	%rax, %rsi
 jmp .UNIQUE6331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6331: 
	movl	$.LC82, %edi
 jmp .UNIQUE6332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6332: 
	movl	$0, %eax
 jmp .UNIQUE6333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6333: 
	call	printf
 jmp .UNIQUE6334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6334: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6335: 
	jle	.L556
 jmp .UNIQUE6336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6336: 
	movl	$.LC83, %edi
 jmp .UNIQUE6337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6337: 
	call	puts
 jmp .UNIQUE6338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6338: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6339: 
	jmp	.L557
.L558:
 jmp .UNIQUE6340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6340: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6341: 
	movq	16(%rax), %rax
 jmp .UNIQUE6342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6342: 
	movq	8(%rax), %rax
 jmp .UNIQUE6343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6343: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6344: 
	movq	%rdx, %rsi
 jmp .UNIQUE6345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6345: 
	movq	%rax, %rdi
 jmp .UNIQUE6346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6346: 
	call	get_stack_char_array_element
 jmp .UNIQUE6347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6347: 
	movsbl	%al, %eax
 jmp .UNIQUE6348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6348: 
	movl	%eax, %esi
 jmp .UNIQUE6349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6349: 
	movl	$.LC84, %edi
 jmp .UNIQUE6350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6350: 
	movl	$0, %eax
 jmp .UNIQUE6351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6351: 
	call	printf
 jmp .UNIQUE6352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6352: 
	addq	$1, -16(%rbp)
.L557:
 jmp .UNIQUE6353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6353: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6354: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6355: 
	jl	.L558
 jmp .UNIQUE6356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6356: 
	movl	$10, %edi
 jmp .UNIQUE6357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6357: 
	call	putchar
.L556:
 jmp .UNIQUE6358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6358: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6359: 
	movq	16(%rax), %rax
 jmp .UNIQUE6360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6360: 
	movq	16(%rax), %rax
 jmp .UNIQUE6361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6361: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6362: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6363: 
	movq	%rax, %rsi
 jmp .UNIQUE6364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6364: 
	movl	$.LC85, %edi
 jmp .UNIQUE6365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6365: 
	movl	$0, %eax
 jmp .UNIQUE6366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6366: 
	call	printf
 jmp .UNIQUE6367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6367: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6368: 
	jle	.L559
 jmp .UNIQUE6369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6369: 
	movl	$.LC86, %edi
 jmp .UNIQUE6370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6370: 
	call	puts
 jmp .UNIQUE6371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6371: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6372: 
	jmp	.L560
.L561:
 jmp .UNIQUE6373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6373: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6374: 
	movq	16(%rax), %rax
 jmp .UNIQUE6375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6375: 
	movq	24(%rax), %rax
 jmp .UNIQUE6376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6376: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6377: 
	movq	%rdx, %rsi
 jmp .UNIQUE6378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6378: 
	movq	%rax, %rdi
 jmp .UNIQUE6379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6379: 
	call	get_stack_int_array_element
 jmp .UNIQUE6380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6380: 
	movl	%eax, %esi
 jmp .UNIQUE6381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6381: 
	movl	$.LC22, %edi
 jmp .UNIQUE6382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6382: 
	movl	$0, %eax
 jmp .UNIQUE6383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6383: 
	call	printf
 jmp .UNIQUE6384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6384: 
	addq	$1, -16(%rbp)
.L560:
 jmp .UNIQUE6385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6385: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6386: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6387: 
	jl	.L561
 jmp .UNIQUE6388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6388: 
	movl	$10, %edi
 jmp .UNIQUE6389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6389: 
	call	putchar
.L559:
 jmp .UNIQUE6390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6390: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6391: 
	movq	16(%rax), %rax
 jmp .UNIQUE6392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6392: 
	movq	32(%rax), %rax
 jmp .UNIQUE6393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6393: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6394: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6395: 
	movq	%rax, %rsi
 jmp .UNIQUE6396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6396: 
	movl	$.LC87, %edi
 jmp .UNIQUE6397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6397: 
	movl	$0, %eax
 jmp .UNIQUE6398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6398: 
	call	printf
 jmp .UNIQUE6399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6399: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6400: 
	jle	.L562
 jmp .UNIQUE6401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6401: 
	movl	$.LC88, %edi
 jmp .UNIQUE6402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6402: 
	call	puts
 jmp .UNIQUE6403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6403: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6404: 
	jmp	.L563
.L564:
 jmp .UNIQUE6405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6405: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6406: 
	movq	16(%rax), %rax
 jmp .UNIQUE6407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6407: 
	movq	40(%rax), %rax
 jmp .UNIQUE6408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6408: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6409: 
	movq	%rdx, %rsi
 jmp .UNIQUE6410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6410: 
	movq	%rax, %rdi
 jmp .UNIQUE6411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6411: 
	call	get_stack_long_int_array_element
 jmp .UNIQUE6412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6412: 
	movq	%rax, %rsi
 jmp .UNIQUE6413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6413: 
	movl	$.LC89, %edi
 jmp .UNIQUE6414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6414: 
	movl	$0, %eax
 jmp .UNIQUE6415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6415: 
	call	printf
 jmp .UNIQUE6416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6416: 
	addq	$1, -16(%rbp)
.L563:
 jmp .UNIQUE6417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6417: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6418: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6419: 
	jl	.L564
 jmp .UNIQUE6420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6420: 
	movl	$10, %edi
 jmp .UNIQUE6421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6421: 
	call	putchar
.L562:
 jmp .UNIQUE6422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6422: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6423: 
	movq	16(%rax), %rax
 jmp .UNIQUE6424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6424: 
	movq	48(%rax), %rax
 jmp .UNIQUE6425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6425: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6426: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6427: 
	movq	%rax, %rsi
 jmp .UNIQUE6428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6428: 
	movl	$.LC90, %edi
 jmp .UNIQUE6429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6429: 
	movl	$0, %eax
 jmp .UNIQUE6430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6430: 
	call	printf
 jmp .UNIQUE6431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6431: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6432: 
	jle	.L565
 jmp .UNIQUE6433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6433: 
	movl	$.LC91, %edi
 jmp .UNIQUE6434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6434: 
	call	puts
 jmp .UNIQUE6435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6435: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6436: 
	jmp	.L566
.L567:
 jmp .UNIQUE6437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6437: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6438: 
	movq	16(%rax), %rax
 jmp .UNIQUE6439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6439: 
	movq	56(%rax), %rax
 jmp .UNIQUE6440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6440: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6441: 
	movq	%rdx, %rsi
 jmp .UNIQUE6442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6442: 
	movq	%rax, %rdi
 jmp .UNIQUE6443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6443: 
	call	get_stack_float_array_element
 jmp .UNIQUE6444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6444: 
	unpcklps	%xmm0, %xmm0
 jmp .UNIQUE6445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6445: 
	cvtps2pd	%xmm0, %xmm0
 jmp .UNIQUE6446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6446: 
	movl	$.LC92, %edi
 jmp .UNIQUE6447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6447: 
	movl	$1, %eax
 jmp .UNIQUE6448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6448: 
	call	printf
 jmp .UNIQUE6449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6449: 
	addq	$1, -16(%rbp)
.L566:
 jmp .UNIQUE6450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6450: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6451: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6452: 
	jl	.L567
 jmp .UNIQUE6453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6453: 
	movl	$10, %edi
 jmp .UNIQUE6454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6454: 
	call	putchar
.L565:
 jmp .UNIQUE6455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6455: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6456: 
	movq	16(%rax), %rax
 jmp .UNIQUE6457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6457: 
	movq	64(%rax), %rax
 jmp .UNIQUE6458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6458: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6459: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6460: 
	movq	%rax, %rsi
 jmp .UNIQUE6461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6461: 
	movl	$.LC93, %edi
 jmp .UNIQUE6462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6462: 
	movl	$0, %eax
 jmp .UNIQUE6463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6463: 
	call	printf
 jmp .UNIQUE6464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6464: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6465: 
	jle	.L568
 jmp .UNIQUE6466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6466: 
	movl	$.LC94, %edi
 jmp .UNIQUE6467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6467: 
	call	puts
 jmp .UNIQUE6468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6468: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6469: 
	jmp	.L569
.L570:
 jmp .UNIQUE6470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6470: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6471: 
	movq	16(%rax), %rax
 jmp .UNIQUE6472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6472: 
	movq	72(%rax), %rax
 jmp .UNIQUE6473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6473: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6474: 
	movq	%rdx, %rsi
 jmp .UNIQUE6475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6475: 
	movq	%rax, %rdi
 jmp .UNIQUE6476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6476: 
	call	get_stack_double_array_element
 jmp .UNIQUE6477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6477: 
	movsd	%xmm0, -32(%rbp)
 jmp .UNIQUE6478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6478: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE6479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6479: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE6480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6480: 
	movsd	-32(%rbp), %xmm0
 jmp .UNIQUE6481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6481: 
	movl	$.LC95, %edi
 jmp .UNIQUE6482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6482: 
	movl	$1, %eax
 jmp .UNIQUE6483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6483: 
	call	printf
 jmp .UNIQUE6484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6484: 
	addq	$1, -16(%rbp)
.L569:
 jmp .UNIQUE6485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6485: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6486: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6487: 
	jl	.L570
 jmp .UNIQUE6488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6488: 
	movl	$10, %edi
 jmp .UNIQUE6489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6489: 
	call	putchar
.L568:
 jmp .UNIQUE6490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6490: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6491: 
	movq	16(%rax), %rax
 jmp .UNIQUE6492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6492: 
	movq	80(%rax), %rax
 jmp .UNIQUE6493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6493: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6494: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6495: 
	movq	%rax, %rsi
 jmp .UNIQUE6496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6496: 
	movl	$.LC96, %edi
 jmp .UNIQUE6497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6497: 
	movl	$0, %eax
 jmp .UNIQUE6498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6498: 
	call	printf
 jmp .UNIQUE6499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6499: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6500: 
	jle	.L571
 jmp .UNIQUE6501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6501: 
	movl	$.LC97, %edi
 jmp .UNIQUE6502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6502: 
	call	puts
 jmp .UNIQUE6503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6503: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6504: 
	jmp	.L572
.L573:
 jmp .UNIQUE6505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6505: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6506: 
	movq	16(%rax), %rax
 jmp .UNIQUE6507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6507: 
	movq	88(%rax), %rax
 jmp .UNIQUE6508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6508: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6509: 
	salq	$3, %rdx
 jmp .UNIQUE6510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6510: 
	addq	%rdx, %rax
 jmp .UNIQUE6511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6511: 
	movq	(%rax), %rax
 jmp .UNIQUE6512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6512: 
	movq	%rax, %rsi
 jmp .UNIQUE6513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6513: 
	movl	$.LC89, %edi
 jmp .UNIQUE6514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6514: 
	movl	$0, %eax
 jmp .UNIQUE6515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6515: 
	call	printf
 jmp .UNIQUE6516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6516: 
	addq	$1, -16(%rbp)
.L572:
 jmp .UNIQUE6517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6517: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6518: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6519: 
	jl	.L573
 jmp .UNIQUE6520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6520: 
	movl	$10, %edi
 jmp .UNIQUE6521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6521: 
	call	putchar
 jmp .UNIQUE6522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6522: 
	movl	$.LC98, %edi
 jmp .UNIQUE6523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6523: 
	call	puts
 jmp .UNIQUE6524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6524: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6525: 
	jmp	.L574
.L575:
 jmp .UNIQUE6526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6526: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6527: 
	movq	16(%rax), %rax
 jmp .UNIQUE6528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6528: 
	movq	96(%rax), %rax
 jmp .UNIQUE6529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6529: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6530: 
	movq	%rdx, %rsi
 jmp .UNIQUE6531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6531: 
	movq	%rax, %rdi
 jmp .UNIQUE6532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6532: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE6533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6533: 
	movq	%rax, %rsi
 jmp .UNIQUE6534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6534: 
	movl	$.LC89, %edi
 jmp .UNIQUE6535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6535: 
	movl	$0, %eax
 jmp .UNIQUE6536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6536: 
	call	printf
 jmp .UNIQUE6537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6537: 
	addq	$1, -16(%rbp)
.L574:
 jmp .UNIQUE6538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6538: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6539: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6540: 
	jl	.L575
 jmp .UNIQUE6541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6541: 
	movl	$10, %edi
 jmp .UNIQUE6542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6542: 
	call	putchar
.L571:
 jmp .UNIQUE6543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6543: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6544: 
	movq	16(%rax), %rax
 jmp .UNIQUE6545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6545: 
	movq	104(%rax), %rax
 jmp .UNIQUE6546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6546: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6547: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6548: 
	movq	%rax, %rsi
 jmp .UNIQUE6549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6549: 
	movl	$.LC99, %edi
 jmp .UNIQUE6550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6550: 
	movl	$0, %eax
 jmp .UNIQUE6551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6551: 
	call	printf
 jmp .UNIQUE6552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6552: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6553: 
	jle	.L555
 jmp .UNIQUE6554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6554: 
	movl	$.LC100, %edi
 jmp .UNIQUE6555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6555: 
	call	puts
 jmp .UNIQUE6556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6556: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6557: 
	jmp	.L577
.L578:
 jmp .UNIQUE6558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6558: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6559: 
	movq	16(%rax), %rax
 jmp .UNIQUE6560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6560: 
	movq	112(%rax), %rax
 jmp .UNIQUE6561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6561: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6562: 
	salq	$3, %rdx
 jmp .UNIQUE6563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6563: 
	addq	%rdx, %rax
 jmp .UNIQUE6564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6564: 
	movq	(%rax), %rax
 jmp .UNIQUE6565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6565: 
	movq	%rax, %rsi
 jmp .UNIQUE6566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6566: 
	movl	$.LC89, %edi
 jmp .UNIQUE6567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6567: 
	movl	$0, %eax
 jmp .UNIQUE6568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6568: 
	call	printf
 jmp .UNIQUE6569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6569: 
	addq	$1, -16(%rbp)
.L577:
 jmp .UNIQUE6570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6570: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6571: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6572: 
	jl	.L578
 jmp .UNIQUE6573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6573: 
	movl	$10, %edi
 jmp .UNIQUE6574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6574: 
	call	putchar
 jmp .UNIQUE6575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6575: 
	movl	$.LC101, %edi
 jmp .UNIQUE6576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6576: 
	call	puts
 jmp .UNIQUE6577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6577: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6578: 
	jmp	.L579
.L580:
 jmp .UNIQUE6579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6579: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6580: 
	movq	16(%rax), %rax
 jmp .UNIQUE6581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6581: 
	movq	120(%rax), %rax
 jmp .UNIQUE6582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6582: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6583: 
	salq	$3, %rdx
 jmp .UNIQUE6584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6584: 
	addq	%rdx, %rax
 jmp .UNIQUE6585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6585: 
	movq	(%rax), %rax
 jmp .UNIQUE6586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6586: 
	movq	%rax, %rsi
 jmp .UNIQUE6587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6587: 
	movl	$.LC89, %edi
 jmp .UNIQUE6588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6588: 
	movl	$0, %eax
 jmp .UNIQUE6589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6589: 
	call	printf
 jmp .UNIQUE6590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6590: 
	addq	$1, -16(%rbp)
.L579:
 jmp .UNIQUE6591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6591: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6592: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6593: 
	jl	.L580
 jmp .UNIQUE6594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6594: 
	movl	$10, %edi
 jmp .UNIQUE6595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6595: 
	call	putchar
.L555:
 jmp .UNIQUE6596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6596: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6597: 
	ret
	.cfi_endproc
.LFE117:
	.size	print_fun_params_that_point_in_stack, .-print_fun_params_that_point_in_stack
	.globl	tower_of_Hanoi_init_secure_template
	.type	tower_of_Hanoi_init_secure_template, @function
tower_of_Hanoi_init_secure_template:
.LFB118:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6598: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6599: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6600: 
	pushq	%rbx
 jmp .UNIQUE6601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6601: 
	subq	$88, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE6602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6602: 
	movl	%edi, -84(%rbp)
 jmp .UNIQUE6603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6603: 
	movl	%ecx, %eax
 jmp .UNIQUE6604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6604: 
	movb	%sil, -88(%rbp)
 jmp .UNIQUE6605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6605: 
	movb	%dl, -92(%rbp)
 jmp .UNIQUE6606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6606: 
	movb	%al, -96(%rbp)
 jmp .UNIQUE6607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6607: 
	movq	$3, -56(%rbp)
 jmp .UNIQUE6608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6608: 
	movzbl	-88(%rbp), %eax
 jmp .UNIQUE6609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6609: 
	movb	%al, -80(%rbp)
 jmp .UNIQUE6610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6610: 
	movzbl	-92(%rbp), %eax
 jmp .UNIQUE6611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6611: 
	movb	%al, -79(%rbp)
 jmp .UNIQUE6612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6612: 
	movzbl	-96(%rbp), %eax
 jmp .UNIQUE6613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6613: 
	movb	%al, -78(%rbp)
 jmp .UNIQUE6614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6614: 
	movl	$1546, %edx
 jmp .UNIQUE6615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6615: 
	movl	$__func__.4948, %esi
 jmp .UNIQUE6616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6616: 
	movl	$24, %edi
 jmp .UNIQUE6617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6617: 
	call	error_checking_malloc
 jmp .UNIQUE6618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6618: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE6619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6619: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6620: 
	movq	$7, (%rax)
 jmp .UNIQUE6621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6621: 
	movq	-56(%rbp), %rbx
 jmp .UNIQUE6622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6622: 
	movl	$3, %eax
 jmp .UNIQUE6623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6623: 
	movl	$0, %edx
 jmp .UNIQUE6624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6624: 
	divq	%rbx
 jmp .UNIQUE6625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6625: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE6626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6626: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE6627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6627: 
	imulq	-56(%rbp), %rax
 jmp .UNIQUE6628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6628: 
	cmpq	$2, %rax
 jmp .UNIQUE6629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6629: 
	ja	.L582
 jmp .UNIQUE6630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6630: 
	addq	$1, -72(%rbp)
.L582:
 jmp .UNIQUE6631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6631: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE6632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6632: 
	movl	$4, %eax
 jmp .UNIQUE6633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6633: 
	movl	$0, %edx
 jmp .UNIQUE6634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6634: 
	divq	%rcx
 jmp .UNIQUE6635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6635: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE6636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6636: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE6637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6637: 
	imulq	-56(%rbp), %rax
 jmp .UNIQUE6638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6638: 
	cmpq	$3, %rax
 jmp .UNIQUE6639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6639: 
	ja	.L583
 jmp .UNIQUE6640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6640: 
	addq	$1, -64(%rbp)
.L583:
 jmp .UNIQUE6641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6641: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE6642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6642: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE6643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6643: 
	addq	%rax, %rdx
 jmp .UNIQUE6644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6644: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6645: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE6646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6646: 
	movl	$1556, %edx
 jmp .UNIQUE6647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6647: 
	movl	$__func__.4948, %esi
 jmp .UNIQUE6648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6648: 
	movl	$128, %edi
 jmp .UNIQUE6649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6649: 
	call	error_checking_malloc
 jmp .UNIQUE6650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6650: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE6651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6651: 
	movq	%rax, 16(%rdx)
 jmp .UNIQUE6652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6652: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6653: 
	movq	16(%rax), %rax
 jmp .UNIQUE6654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6654: 
	movl	$128, %edx
 jmp .UNIQUE6655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6655: 
	movl	$0, %esi
 jmp .UNIQUE6656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6656: 
	movq	%rax, %rdi
 jmp .UNIQUE6657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6657: 
	call	memset
 jmp .UNIQUE6658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6658: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6659: 
	movq	16(%rax), %rax
 jmp .UNIQUE6660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6660: 
	movq	$3, (%rax)
 jmp .UNIQUE6661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6661: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6662: 
	movq	16(%rax), %rax
 jmp .UNIQUE6663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6663: 
	movq	$1, 16(%rax)
 jmp .UNIQUE6664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6664: 
	movl	$3, %edi
 jmp .UNIQUE6665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6665: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE6666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6666: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE6667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6667: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE6668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6668: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6669: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE6670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6670: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6671: 
	movq	16(%rax), %rax
 jmp .UNIQUE6672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6672: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE6673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6673: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE6674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6674: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE6675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6675: 
	je	.L584
 jmp .UNIQUE6676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6676: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE6677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6677: 
	leaq	-80(%rbp), %rax
 jmp .UNIQUE6678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6678: 
	movq	%rax, %rsi
 jmp .UNIQUE6679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6679: 
	movl	$3, %edi
 jmp .UNIQUE6680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6680: 
	call	insert_data_into_stack_mem
.L584:
 jmp .UNIQUE6681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6681: 
	movl	$4, %edi
 jmp .UNIQUE6682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6682: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE6683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6683: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE6684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6684: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE6685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6685: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6686: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE6687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6687: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6688: 
	movq	16(%rax), %rax
 jmp .UNIQUE6689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6689: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE6690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6690: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE6691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6691: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE6692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6692: 
	je	.L585
 jmp .UNIQUE6693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6693: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE6694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6694: 
	leaq	-84(%rbp), %rax
 jmp .UNIQUE6695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6695: 
	movq	%rax, %rsi
 jmp .UNIQUE6696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6696: 
	movl	$4, %edi
 jmp .UNIQUE6697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6697: 
	call	insert_data_into_stack_mem
.L585:
 jmp .UNIQUE6698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6698: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6699: 
	addq	$88, %rsp
 jmp .UNIQUE6700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6700: 
	popq	%rbx
 jmp .UNIQUE6701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6701: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6702: 
	ret
	.cfi_endproc
.LFE118:
	.size	tower_of_Hanoi_init_secure_template, .-tower_of_Hanoi_init_secure_template
	.section	.rodata
.LC103:
	.string	"Allocating double array"
.LC104:
	.string	"Initializing fun params"
	.align 8
.LC107:
	.string	"Inserting fun params into secure stack"
.LC108:
	.string	"Printing chars"
.LC109:
	.string	"Printing ints"
.LC110:
	.string	"Printing doubles"
.LC111:
	.string	"Changing pointer"
.LC112:
	.string	"Printing array of doubles"
.LC113:
	.string	"i=%d, %lf "
	.align 8
.LC114:
	.string	"Fetching double array using arbitrary block"
	.align 8
.LC115:
	.string	"Fetching double array elements (one by one), using arbitrary blocks"
	.text
	.globl	stack_fun_params_test
	.type	stack_fun_params_test, @function
stack_fun_params_test:
.LFB119:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6703: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6704: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6705: 
	subq	$144, %rsp
 jmp .UNIQUE6706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6706: 
	movl	$.LC103, %edi
 jmp .UNIQUE6707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6707: 
	call	puts
 jmp .UNIQUE6708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6708: 
	movl	$9, %edx
 jmp .UNIQUE6709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6709: 
	movl	$__func__.4954, %esi
 jmp .UNIQUE6710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6710: 
	movl	$80, %edi
 jmp .UNIQUE6711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6711: 
	call	error_checking_malloc
 jmp .UNIQUE6712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6712: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE6713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6713: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE6714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6714: 
	jmp	.L588
.L589:
 jmp .UNIQUE6715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6715: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE6716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6716: 
	cltq
 jmp .UNIQUE6717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6717: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE6718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6718: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6719: 
	addq	%rdx, %rax
 jmp .UNIQUE6720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6720: 
	movl	-20(%rbp), %edx
 jmp .UNIQUE6721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6721: 
	addl	$100, %edx
 jmp .UNIQUE6722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6722: 
	cvtsi2sd	%edx, %xmm0
 jmp .UNIQUE6723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6723: 
	movsd	%xmm0, (%rax)
 jmp .UNIQUE6724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6724: 
	addl	$1, -20(%rbp)
.L588:
 jmp .UNIQUE6725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6725: 
	cmpl	$9, -20(%rbp)
 jmp .UNIQUE6726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6726: 
	jle	.L589
 jmp .UNIQUE6727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6727: 
	movl	$.LC104, %edi
 jmp .UNIQUE6728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6728: 
	call	puts
 jmp .UNIQUE6729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6729: 
	movabsq	$4633156929650876744, %rdx
 jmp .UNIQUE6730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6730: 
	movabsq	$4631166901565532406, %rax
 jmp .UNIQUE6731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6731: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE6732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6732: 
	movq	%rcx, 96(%rsp)
 jmp .UNIQUE6733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6733: 
	movq	$80, 88(%rsp)
 jmp .UNIQUE6734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6734: 
	movq	$1, 80(%rsp)
 jmp .UNIQUE6735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6735: 
	movl	$424242, 72(%rsp)
 jmp .UNIQUE6736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6736: 
	movq	$10, 64(%rsp)
 jmp .UNIQUE6737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6737: 
	movq	$1, 56(%rsp)
 jmp .UNIQUE6738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6738: 
	movq	$2, 48(%rsp)
 jmp .UNIQUE6739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6739: 
	movq	$0, 40(%rsp)
 jmp .UNIQUE6740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6740: 
	movq	$0, 32(%rsp)
 jmp .UNIQUE6741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6741: 
	movl	$41, 24(%rsp)
 jmp .UNIQUE6742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6742: 
	movl	$42, 16(%rsp)
 jmp .UNIQUE6743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6743: 
	movq	$2, 8(%rsp)
 jmp .UNIQUE6744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6744: 
	movl	$103, (%rsp)
 jmp .UNIQUE6745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6745: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE6746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6746: 
	movsd	-40(%rbp), %xmm1
 jmp .UNIQUE6747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6747: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE6748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6748: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE6749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6749: 
	movl	$102, %r9d
 jmp .UNIQUE6750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6750: 
	movl	$101, %r8d
 jmp .UNIQUE6751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6751: 
	movl	$100, %ecx
 jmp .UNIQUE6752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6752: 
	movl	$99, %edx
 jmp .UNIQUE6753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6753: 
	movl	$5, %esi
 jmp .UNIQUE6754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6754: 
	movl	$1, %edi
 jmp .UNIQUE6755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6755: 
	movl	$2, %eax
 jmp .UNIQUE6756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6756: 
	call	init_function_params
 jmp .UNIQUE6757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6757: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6758: 
	movl	$.LC107, %edi
 jmp .UNIQUE6759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6759: 
	call	puts
 jmp .UNIQUE6760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6760: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6761: 
	movq	%rax, %rdi
 jmp .UNIQUE6762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6762: 
	call	put_fun_params_into_secure_stack_and_free
 jmp .UNIQUE6763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6763: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6764: 
	movl	$.LC108, %edi
 jmp .UNIQUE6765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6765: 
	call	puts
 jmp .UNIQUE6766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6766: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE6767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6767: 
	jmp	.L590
.L591:
 jmp .UNIQUE6768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6768: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE6769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6769: 
	movslq	%eax, %rdx
 jmp .UNIQUE6770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6770: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6771: 
	movq	16(%rax), %rax
 jmp .UNIQUE6772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6772: 
	movq	8(%rax), %rax
 jmp .UNIQUE6773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6773: 
	movq	%rdx, %rsi
 jmp .UNIQUE6774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6774: 
	movq	%rax, %rdi
 jmp .UNIQUE6775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6775: 
	call	get_stack_char_array_element
 jmp .UNIQUE6776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6776: 
	movsbl	%al, %eax
 jmp .UNIQUE6777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6777: 
	movl	%eax, %esi
 jmp .UNIQUE6778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6778: 
	movl	$.LC84, %edi
 jmp .UNIQUE6779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6779: 
	movl	$0, %eax
 jmp .UNIQUE6780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6780: 
	call	printf
 jmp .UNIQUE6781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6781: 
	addl	$1, -20(%rbp)
.L590:
 jmp .UNIQUE6782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6782: 
	cmpl	$4, -20(%rbp)
 jmp .UNIQUE6783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6783: 
	jle	.L591
 jmp .UNIQUE6784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6784: 
	movl	$10, %edi
 jmp .UNIQUE6785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6785: 
	call	putchar
 jmp .UNIQUE6786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6786: 
	movl	$.LC109, %edi
 jmp .UNIQUE6787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6787: 
	call	puts
 jmp .UNIQUE6788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6788: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE6789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6789: 
	jmp	.L592
.L593:
 jmp .UNIQUE6790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6790: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE6791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6791: 
	movslq	%eax, %rdx
 jmp .UNIQUE6792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6792: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6793: 
	movq	16(%rax), %rax
 jmp .UNIQUE6794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6794: 
	movq	24(%rax), %rax
 jmp .UNIQUE6795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6795: 
	movq	%rdx, %rsi
 jmp .UNIQUE6796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6796: 
	movq	%rax, %rdi
 jmp .UNIQUE6797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6797: 
	call	get_stack_int_array_element
 jmp .UNIQUE6798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6798: 
	movl	%eax, %esi
 jmp .UNIQUE6799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6799: 
	movl	$.LC22, %edi
 jmp .UNIQUE6800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6800: 
	movl	$0, %eax
 jmp .UNIQUE6801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6801: 
	call	printf
 jmp .UNIQUE6802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6802: 
	addl	$1, -20(%rbp)
.L592:
 jmp .UNIQUE6803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6803: 
	cmpl	$1, -20(%rbp)
 jmp .UNIQUE6804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6804: 
	jle	.L593
 jmp .UNIQUE6805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6805: 
	movl	$10, %edi
 jmp .UNIQUE6806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6806: 
	call	putchar
 jmp .UNIQUE6807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6807: 
	movl	$.LC110, %edi
 jmp .UNIQUE6808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6808: 
	call	puts
 jmp .UNIQUE6809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6809: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE6810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6810: 
	jmp	.L594
.L595:
 jmp .UNIQUE6811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6811: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE6812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6812: 
	movslq	%eax, %rdx
 jmp .UNIQUE6813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6813: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6814: 
	movq	16(%rax), %rax
 jmp .UNIQUE6815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6815: 
	movq	72(%rax), %rax
 jmp .UNIQUE6816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6816: 
	movq	%rdx, %rsi
 jmp .UNIQUE6817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6817: 
	movq	%rax, %rdi
 jmp .UNIQUE6818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6818: 
	call	get_stack_double_array_element
 jmp .UNIQUE6819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6819: 
	movsd	%xmm0, -40(%rbp)
 jmp .UNIQUE6820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6820: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE6821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6821: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE6822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6822: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE6823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6823: 
	movl	$.LC95, %edi
 jmp .UNIQUE6824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6824: 
	movl	$1, %eax
 jmp .UNIQUE6825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6825: 
	call	printf
 jmp .UNIQUE6826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6826: 
	addl	$1, -20(%rbp)
.L594:
 jmp .UNIQUE6827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6827: 
	cmpl	$1, -20(%rbp)
 jmp .UNIQUE6828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6828: 
	jle	.L595
 jmp .UNIQUE6829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6829: 
	movl	$10, %edi
 jmp .UNIQUE6830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6830: 
	call	putchar
 jmp .UNIQUE6831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6831: 
	movl	$.LC111, %edi
 jmp .UNIQUE6832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6832: 
	call	puts
 jmp .UNIQUE6833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6833: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6834: 
	movq	16(%rax), %rax
 jmp .UNIQUE6835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6835: 
	movq	24(%rax), %rdx
 jmp .UNIQUE6836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6836: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6837: 
	movq	16(%rax), %rax
 jmp .UNIQUE6838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6838: 
	movq	96(%rax), %rax
 jmp .UNIQUE6839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6839: 
	movl	$0, %esi
 jmp .UNIQUE6840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6840: 
	movq	%rax, %rdi
 jmp .UNIQUE6841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6841: 
	call	set_stack_pointer_array_element
 jmp .UNIQUE6842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6842: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6843: 
	movq	16(%rax), %rax
 jmp .UNIQUE6844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6844: 
	movq	96(%rax), %rax
 jmp .UNIQUE6845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6845: 
	movl	$0, %esi
 jmp .UNIQUE6846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6846: 
	movq	%rax, %rdi
 jmp .UNIQUE6847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6847: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE6848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6848: 
	movl	$45, %edx
 jmp .UNIQUE6849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6849: 
	movl	$0, %esi
 jmp .UNIQUE6850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6850: 
	movq	%rax, %rdi
 jmp .UNIQUE6851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6851: 
	call	set_stack_int_array_element
 jmp .UNIQUE6852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6852: 
	movl	$.LC109, %edi
 jmp .UNIQUE6853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6853: 
	call	puts
 jmp .UNIQUE6854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6854: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE6855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6855: 
	jmp	.L596
.L597:
 jmp .UNIQUE6856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6856: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE6857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6857: 
	movslq	%eax, %rdx
 jmp .UNIQUE6858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6858: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6859: 
	movq	16(%rax), %rax
 jmp .UNIQUE6860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6860: 
	movq	24(%rax), %rax
 jmp .UNIQUE6861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6861: 
	movq	%rdx, %rsi
 jmp .UNIQUE6862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6862: 
	movq	%rax, %rdi
 jmp .UNIQUE6863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6863: 
	call	get_stack_int_array_element
 jmp .UNIQUE6864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6864: 
	movl	%eax, %esi
 jmp .UNIQUE6865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6865: 
	movl	$.LC22, %edi
 jmp .UNIQUE6866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6866: 
	movl	$0, %eax
 jmp .UNIQUE6867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6867: 
	call	printf
 jmp .UNIQUE6868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6868: 
	addl	$1, -20(%rbp)
.L596:
 jmp .UNIQUE6869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6869: 
	cmpl	$1, -20(%rbp)
 jmp .UNIQUE6870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6870: 
	jle	.L597
 jmp .UNIQUE6871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6871: 
	movl	$10, %edi
 jmp .UNIQUE6872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6872: 
	call	putchar
 jmp .UNIQUE6873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6873: 
	movl	$.LC112, %edi
 jmp .UNIQUE6874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6874: 
	call	puts
 jmp .UNIQUE6875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6875: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE6876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6876: 
	jmp	.L598
.L599:
 jmp .UNIQUE6877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6877: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE6878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6878: 
	movslq	%eax, %rdx
 jmp .UNIQUE6879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6879: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6880: 
	movq	16(%rax), %rax
 jmp .UNIQUE6881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6881: 
	movq	120(%rax), %rax
 jmp .UNIQUE6882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6882: 
	movq	(%rax), %rax
 jmp .UNIQUE6883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6883: 
	movq	%rdx, %rsi
 jmp .UNIQUE6884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6884: 
	movq	%rax, %rdi
 jmp .UNIQUE6885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6885: 
	call	get_stack_double_array_element
 jmp .UNIQUE6886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6886: 
	movsd	%xmm0, -40(%rbp)
 jmp .UNIQUE6887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6887: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE6888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6888: 
	movl	-20(%rbp), %edx
 jmp .UNIQUE6889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6889: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE6890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6890: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE6891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6891: 
	movl	%edx, %esi
 jmp .UNIQUE6892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6892: 
	movl	$.LC113, %edi
 jmp .UNIQUE6893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6893: 
	movl	$1, %eax
 jmp .UNIQUE6894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6894: 
	call	printf
 jmp .UNIQUE6895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6895: 
	addl	$1, -20(%rbp)
.L598:
 jmp .UNIQUE6896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6896: 
	cmpl	$9, -20(%rbp)
 jmp .UNIQUE6897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6897: 
	jle	.L599
 jmp .UNIQUE6898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6898: 
	movl	$.LC114, %edi
 jmp .UNIQUE6899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6899: 
	call	puts
 jmp .UNIQUE6900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6900: 
	movl	$57, %edx
 jmp .UNIQUE6901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6901: 
	movl	$__func__.4954, %esi
 jmp .UNIQUE6902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6902: 
	movl	$80, %edi
 jmp .UNIQUE6903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6903: 
	call	error_checking_malloc
 jmp .UNIQUE6904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6904: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE6905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6905: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6906: 
	movq	16(%rax), %rax
 jmp .UNIQUE6907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6907: 
	movq	120(%rax), %rax
 jmp .UNIQUE6908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6908: 
	movq	(%rax), %rax
 jmp .UNIQUE6909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6909: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6910: 
	movq	%rax, %rsi
 jmp .UNIQUE6911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6911: 
	movl	$80, %edi
 jmp .UNIQUE6912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6912: 
	call	get_arbitrary_block_in_stack
 jmp .UNIQUE6913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6913: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE6914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6914: 
	jmp	.L600
.L601:
 jmp .UNIQUE6915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6915: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE6916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6916: 
	cltq
 jmp .UNIQUE6917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6917: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE6918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6918: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6919: 
	addq	%rdx, %rax
 jmp .UNIQUE6920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6920: 
	movq	(%rax), %rax
 jmp .UNIQUE6921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6921: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE6922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6922: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE6923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6923: 
	movl	$.LC69, %edi
 jmp .UNIQUE6924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6924: 
	movl	$1, %eax
 jmp .UNIQUE6925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6925: 
	call	printf
 jmp .UNIQUE6926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6926: 
	addl	$1, -20(%rbp)
.L600:
 jmp .UNIQUE6927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6927: 
	cmpl	$9, -20(%rbp)
 jmp .UNIQUE6928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6928: 
	jle	.L601
 jmp .UNIQUE6929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6929: 
	movl	$10, %edi
 jmp .UNIQUE6930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6930: 
	call	putchar
 jmp .UNIQUE6931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6931: 
	movl	$.LC115, %edi
 jmp .UNIQUE6932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6932: 
	call	puts
 jmp .UNIQUE6933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6933: 
	movl	$66, %edx
 jmp .UNIQUE6934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6934: 
	movl	$__func__.4954, %esi
 jmp .UNIQUE6935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6935: 
	movl	$80, %edi
 jmp .UNIQUE6936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6936: 
	call	error_checking_malloc
 jmp .UNIQUE6937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6937: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE6938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6938: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE6939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6939: 
	jmp	.L602
.L603:
 jmp .UNIQUE6940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6940: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE6941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6941: 
	cltq
 jmp .UNIQUE6942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6942: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE6943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6943: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6944: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE6945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6945: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE6946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6946: 
	cltq
 jmp .UNIQUE6947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6947: 
	salq	$3, %rax
 jmp .UNIQUE6948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6948: 
	movq	%rax, %rdx
 jmp .UNIQUE6949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6949: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6950: 
	movq	16(%rax), %rax
 jmp .UNIQUE6951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6951: 
	movq	120(%rax), %rax
 jmp .UNIQUE6952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6952: 
	movq	(%rax), %rax
 jmp .UNIQUE6953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6953: 
	movq	%rax, %rsi
 jmp .UNIQUE6954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6954: 
	movl	$8, %edi
 jmp .UNIQUE6955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6955: 
	call	get_arbitrary_block_in_stack_with_offset
 jmp .UNIQUE6956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6956: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE6957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6957: 
	cltq
 jmp .UNIQUE6958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6958: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE6959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6959: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6960: 
	addq	%rdx, %rax
 jmp .UNIQUE6961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6961: 
	movq	(%rax), %rax
 jmp .UNIQUE6962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6962: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE6963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6963: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE6964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6964: 
	movl	$.LC69, %edi
 jmp .UNIQUE6965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6965: 
	movl	$1, %eax
 jmp .UNIQUE6966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6966: 
	call	printf
 jmp .UNIQUE6967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6967: 
	addl	$1, -20(%rbp)
.L602:
 jmp .UNIQUE6968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6968: 
	cmpl	$9, -20(%rbp)
 jmp .UNIQUE6969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6969: 
	jle	.L603
 jmp .UNIQUE6970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6970: 
	movl	$10, %edi
 jmp .UNIQUE6971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6971: 
	call	putchar
 jmp .UNIQUE6972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6972: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6973: 
	ret
	.cfi_endproc
.LFE119:
	.size	stack_fun_params_test, .-stack_fun_params_test
	.globl	towerOfHanoi
	.type	towerOfHanoi, @function
towerOfHanoi:
.LFB120:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6974: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6975: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6976: 
	subq	$16, %rsp
 jmp .UNIQUE6977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6977: 
	movl	%edi, -4(%rbp)
 jmp .UNIQUE6978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6978: 
	movl	%ecx, %eax
 jmp .UNIQUE6979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6979: 
	movb	%sil, -8(%rbp)
 jmp .UNIQUE6980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6980: 
	movb	%dl, -12(%rbp)
 jmp .UNIQUE6981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6981: 
	movb	%al, -16(%rbp)
 jmp .UNIQUE6982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6982: 
	cmpl	$1, -4(%rbp)
 jmp .UNIQUE6983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6983: 
	jne	.L605
 jmp .UNIQUE6984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6984: 
	jmp	.L604
.L605:
 jmp .UNIQUE6985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6985: 
	movsbl	-12(%rbp), %ecx
 jmp .UNIQUE6986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6986: 
	movsbl	-16(%rbp), %edx
 jmp .UNIQUE6987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6987: 
	movsbl	-8(%rbp), %eax
 jmp .UNIQUE6988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6988: 
	movl	-4(%rbp), %esi
 jmp .UNIQUE6989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6989: 
	leal	-1(%rsi), %edi
 jmp .UNIQUE6990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6990: 
	movl	%eax, %esi
 jmp .UNIQUE6991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6991: 
	call	towerOfHanoi
 jmp .UNIQUE6992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6992: 
	movsbl	-8(%rbp), %ecx
 jmp .UNIQUE6993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6993: 
	movsbl	-12(%rbp), %edx
 jmp .UNIQUE6994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6994: 
	movsbl	-16(%rbp), %eax
 jmp .UNIQUE6995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6995: 
	movl	-4(%rbp), %esi
 jmp .UNIQUE6996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6996: 
	leal	-1(%rsi), %edi
 jmp .UNIQUE6997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6997: 
	movl	%eax, %esi
 jmp .UNIQUE6998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6998: 
	call	towerOfHanoi
.L604:
 jmp .UNIQUE6999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6999: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7000: 
	ret
	.cfi_endproc
.LFE120:
	.size	towerOfHanoi, .-towerOfHanoi
	.globl	towerOfHanoi_secure
	.type	towerOfHanoi_secure, @function
towerOfHanoi_secure:
.LFB121:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE7001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7001: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7002: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7003: 
	pushq	%r13
 jmp .UNIQUE7004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7004: 
	pushq	%r12
 jmp .UNIQUE7005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7005: 
	pushq	%rbx
 jmp .UNIQUE7006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7006: 
	subq	$88, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
 jmp .UNIQUE7007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7007: 
	movl	%edi, -52(%rbp)
 jmp .UNIQUE7008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7008: 
	movl	%ecx, %eax
 jmp .UNIQUE7009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7009: 
	movb	%sil, -56(%rbp)
 jmp .UNIQUE7010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7010: 
	movb	%dl, -60(%rbp)
 jmp .UNIQUE7011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7011: 
	movb	%al, -64(%rbp)
 jmp .UNIQUE7012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7012: 
	movsbl	-64(%rbp), %esi
 jmp .UNIQUE7013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7013: 
	movsbl	-60(%rbp), %edx
 jmp .UNIQUE7014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7014: 
	movsbl	-56(%rbp), %eax
 jmp .UNIQUE7015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7015: 
	movq	$0, 40(%rsp)
 jmp .UNIQUE7016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7016: 
	movq	$0, 32(%rsp)
 jmp .UNIQUE7017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7017: 
	movq	$0, 24(%rsp)
 jmp .UNIQUE7018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7018: 
	movq	$0, 16(%rsp)
 jmp .UNIQUE7019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7019: 
	movq	$0, 8(%rsp)
 jmp .UNIQUE7020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7020: 
	movl	-52(%rbp), %ecx
 jmp .UNIQUE7021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7021: 
	movl	%ecx, (%rsp)
 jmp .UNIQUE7022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7022: 
	movl	$1, %r9d
 jmp .UNIQUE7023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7023: 
	movl	%esi, %r8d
 jmp .UNIQUE7024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7024: 
	movl	%edx, %ecx
 jmp .UNIQUE7025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7025: 
	movl	%eax, %edx
 jmp .UNIQUE7026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7026: 
	movl	$3, %esi
 jmp .UNIQUE7027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7027: 
	movl	$1, %edi
 jmp .UNIQUE7028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7028: 
	movl	$0, %eax
 jmp .UNIQUE7029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7029: 
	call	init_function_params
 jmp .UNIQUE7030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7030: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE7031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7031: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7032: 
	movq	%rax, %rdi
 jmp .UNIQUE7033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7033: 
	call	put_fun_params_into_secure_stack_and_free
 jmp .UNIQUE7034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7034: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE7035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7035: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7036: 
	movq	16(%rax), %rax
 jmp .UNIQUE7037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7037: 
	movq	24(%rax), %rax
 jmp .UNIQUE7038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7038: 
	movl	$0, %esi
 jmp .UNIQUE7039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7039: 
	movq	%rax, %rdi
 jmp .UNIQUE7040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7040: 
	call	get_stack_int_array_element
 jmp .UNIQUE7041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7041: 
	cmpl	$1, %eax
 jmp .UNIQUE7042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7042: 
	jne	.L608
 jmp .UNIQUE7043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7043: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7044: 
	movq	8(%rax), %rax
 jmp .UNIQUE7045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7045: 
	movq	%rax, %rdi
 jmp .UNIQUE7046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7046: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE7047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7047: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7048: 
	movq	%rax, %rdi
 jmp .UNIQUE7049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7049: 
	call	free_fun_params_that_point_to_stack
 jmp .UNIQUE7050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7050: 
	jmp	.L607
.L608:
 jmp .UNIQUE7051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7051: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7052: 
	movq	16(%rax), %rax
 jmp .UNIQUE7053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7053: 
	movq	8(%rax), %rax
 jmp .UNIQUE7054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7054: 
	movl	$1, %esi
 jmp .UNIQUE7055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7055: 
	movq	%rax, %rdi
 jmp .UNIQUE7056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7056: 
	call	get_stack_char_array_element
 jmp .UNIQUE7057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7057: 
	movsbl	%al, %r13d
 jmp .UNIQUE7058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7058: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7059: 
	movq	16(%rax), %rax
 jmp .UNIQUE7060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7060: 
	movq	8(%rax), %rax
 jmp .UNIQUE7061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7061: 
	movl	$2, %esi
 jmp .UNIQUE7062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7062: 
	movq	%rax, %rdi
 jmp .UNIQUE7063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7063: 
	call	get_stack_char_array_element
 jmp .UNIQUE7064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7064: 
	movsbl	%al, %r12d
 jmp .UNIQUE7065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7065: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7066: 
	movq	16(%rax), %rax
 jmp .UNIQUE7067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7067: 
	movq	8(%rax), %rax
 jmp .UNIQUE7068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7068: 
	movl	$0, %esi
 jmp .UNIQUE7069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7069: 
	movq	%rax, %rdi
 jmp .UNIQUE7070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7070: 
	call	get_stack_char_array_element
 jmp .UNIQUE7071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7071: 
	movsbl	%al, %ebx
 jmp .UNIQUE7072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7072: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7073: 
	movq	16(%rax), %rax
 jmp .UNIQUE7074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7074: 
	movq	24(%rax), %rax
 jmp .UNIQUE7075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7075: 
	movl	$0, %esi
 jmp .UNIQUE7076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7076: 
	movq	%rax, %rdi
 jmp .UNIQUE7077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7077: 
	call	get_stack_int_array_element
 jmp .UNIQUE7078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7078: 
	subl	$1, %eax
 jmp .UNIQUE7079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7079: 
	movl	%r13d, %ecx
 jmp .UNIQUE7080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7080: 
	movl	%r12d, %edx
 jmp .UNIQUE7081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7081: 
	movl	%ebx, %esi
 jmp .UNIQUE7082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7082: 
	movl	%eax, %edi
 jmp .UNIQUE7083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7083: 
	call	towerOfHanoi_secure
 jmp .UNIQUE7084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7084: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7085: 
	movq	16(%rax), %rax
 jmp .UNIQUE7086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7086: 
	movq	8(%rax), %rax
 jmp .UNIQUE7087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7087: 
	movl	$0, %esi
 jmp .UNIQUE7088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7088: 
	movq	%rax, %rdi
 jmp .UNIQUE7089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7089: 
	call	get_stack_char_array_element
 jmp .UNIQUE7090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7090: 
	movsbl	%al, %r13d
 jmp .UNIQUE7091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7091: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7092: 
	movq	16(%rax), %rax
 jmp .UNIQUE7093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7093: 
	movq	8(%rax), %rax
 jmp .UNIQUE7094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7094: 
	movl	$1, %esi
 jmp .UNIQUE7095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7095: 
	movq	%rax, %rdi
 jmp .UNIQUE7096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7096: 
	call	get_stack_char_array_element
 jmp .UNIQUE7097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7097: 
	movsbl	%al, %r12d
 jmp .UNIQUE7098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7098: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7099: 
	movq	16(%rax), %rax
 jmp .UNIQUE7100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7100: 
	movq	8(%rax), %rax
 jmp .UNIQUE7101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7101: 
	movl	$2, %esi
 jmp .UNIQUE7102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7102: 
	movq	%rax, %rdi
 jmp .UNIQUE7103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7103: 
	call	get_stack_char_array_element
 jmp .UNIQUE7104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7104: 
	movsbl	%al, %ebx
 jmp .UNIQUE7105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7105: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7106: 
	movq	16(%rax), %rax
 jmp .UNIQUE7107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7107: 
	movq	24(%rax), %rax
 jmp .UNIQUE7108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7108: 
	movl	$0, %esi
 jmp .UNIQUE7109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7109: 
	movq	%rax, %rdi
 jmp .UNIQUE7110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7110: 
	call	get_stack_int_array_element
 jmp .UNIQUE7111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7111: 
	subl	$1, %eax
 jmp .UNIQUE7112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7112: 
	movl	%r13d, %ecx
 jmp .UNIQUE7113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7113: 
	movl	%r12d, %edx
 jmp .UNIQUE7114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7114: 
	movl	%ebx, %esi
 jmp .UNIQUE7115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7115: 
	movl	%eax, %edi
 jmp .UNIQUE7116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7116: 
	call	towerOfHanoi_secure
 jmp .UNIQUE7117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7117: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7118: 
	movq	8(%rax), %rax
 jmp .UNIQUE7119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7119: 
	movq	%rax, %rdi
 jmp .UNIQUE7120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7120: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE7121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7121: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7122: 
	movq	%rax, %rdi
 jmp .UNIQUE7123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7123: 
	call	free_fun_params_that_point_to_stack
.L607:
 jmp .UNIQUE7124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7124: 
	addq	$88, %rsp
 jmp .UNIQUE7125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7125: 
	popq	%rbx
 jmp .UNIQUE7126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7126: 
	popq	%r12
 jmp .UNIQUE7127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7127: 
	popq	%r13
 jmp .UNIQUE7128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7128: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7129: 
	ret
	.cfi_endproc
.LFE121:
	.size	towerOfHanoi_secure, .-towerOfHanoi_secure
	.globl	towerOfHanoi_secure_using_template
	.type	towerOfHanoi_secure_using_template, @function
towerOfHanoi_secure_using_template:
.LFB122:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE7130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7130: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7131: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7132: 
	pushq	%r13
 jmp .UNIQUE7133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7133: 
	pushq	%r12
 jmp .UNIQUE7134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7134: 
	pushq	%rbx
 jmp .UNIQUE7135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7135: 
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
 jmp .UNIQUE7136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7136: 
	movl	%edi, -52(%rbp)
 jmp .UNIQUE7137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7137: 
	movl	%ecx, %eax
 jmp .UNIQUE7138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7138: 
	movb	%sil, -56(%rbp)
 jmp .UNIQUE7139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7139: 
	movb	%dl, -60(%rbp)
 jmp .UNIQUE7140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7140: 
	movb	%al, -64(%rbp)
 jmp .UNIQUE7141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7141: 
	movsbl	-64(%rbp), %ecx
 jmp .UNIQUE7142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7142: 
	movsbl	-60(%rbp), %edx
 jmp .UNIQUE7143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7143: 
	movsbl	-56(%rbp), %esi
 jmp .UNIQUE7144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7144: 
	movl	-52(%rbp), %eax
 jmp .UNIQUE7145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7145: 
	movl	%eax, %edi
 jmp .UNIQUE7146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7146: 
	call	tower_of_Hanoi_init_secure_template
 jmp .UNIQUE7147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7147: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE7148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7148: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7149: 
	movq	16(%rax), %rax
 jmp .UNIQUE7150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7150: 
	movq	24(%rax), %rax
 jmp .UNIQUE7151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7151: 
	movl	$0, %esi
 jmp .UNIQUE7152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7152: 
	movq	%rax, %rdi
 jmp .UNIQUE7153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7153: 
	call	get_stack_int_array_element
 jmp .UNIQUE7154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7154: 
	cmpl	$1, %eax
 jmp .UNIQUE7155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7155: 
	jne	.L611
 jmp .UNIQUE7156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7156: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7157: 
	movq	8(%rax), %rax
 jmp .UNIQUE7158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7158: 
	movq	%rax, %rdi
 jmp .UNIQUE7159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7159: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE7160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7160: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7161: 
	movq	%rax, %rdi
 jmp .UNIQUE7162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7162: 
	call	free_fun_params_that_point_to_stack
 jmp .UNIQUE7163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7163: 
	jmp	.L610
.L611:
 jmp .UNIQUE7164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7164: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7165: 
	movq	16(%rax), %rax
 jmp .UNIQUE7166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7166: 
	movq	8(%rax), %rax
 jmp .UNIQUE7167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7167: 
	movl	$1, %esi
 jmp .UNIQUE7168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7168: 
	movq	%rax, %rdi
 jmp .UNIQUE7169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7169: 
	call	get_stack_char_array_element
 jmp .UNIQUE7170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7170: 
	movsbl	%al, %r13d
 jmp .UNIQUE7171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7171: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7172: 
	movq	16(%rax), %rax
 jmp .UNIQUE7173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7173: 
	movq	8(%rax), %rax
 jmp .UNIQUE7174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7174: 
	movl	$2, %esi
 jmp .UNIQUE7175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7175: 
	movq	%rax, %rdi
 jmp .UNIQUE7176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7176: 
	call	get_stack_char_array_element
 jmp .UNIQUE7177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7177: 
	movsbl	%al, %r12d
 jmp .UNIQUE7178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7178: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7179: 
	movq	16(%rax), %rax
 jmp .UNIQUE7180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7180: 
	movq	8(%rax), %rax
 jmp .UNIQUE7181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7181: 
	movl	$0, %esi
 jmp .UNIQUE7182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7182: 
	movq	%rax, %rdi
 jmp .UNIQUE7183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7183: 
	call	get_stack_char_array_element
 jmp .UNIQUE7184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7184: 
	movsbl	%al, %ebx
 jmp .UNIQUE7185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7185: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7186: 
	movq	16(%rax), %rax
 jmp .UNIQUE7187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7187: 
	movq	24(%rax), %rax
 jmp .UNIQUE7188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7188: 
	movl	$0, %esi
 jmp .UNIQUE7189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7189: 
	movq	%rax, %rdi
 jmp .UNIQUE7190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7190: 
	call	get_stack_int_array_element
 jmp .UNIQUE7191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7191: 
	subl	$1, %eax
 jmp .UNIQUE7192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7192: 
	movl	%r13d, %ecx
 jmp .UNIQUE7193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7193: 
	movl	%r12d, %edx
 jmp .UNIQUE7194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7194: 
	movl	%ebx, %esi
 jmp .UNIQUE7195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7195: 
	movl	%eax, %edi
 jmp .UNIQUE7196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7196: 
	call	towerOfHanoi_secure_using_template
 jmp .UNIQUE7197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7197: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7198: 
	movq	16(%rax), %rax
 jmp .UNIQUE7199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7199: 
	movq	8(%rax), %rax
 jmp .UNIQUE7200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7200: 
	movl	$0, %esi
 jmp .UNIQUE7201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7201: 
	movq	%rax, %rdi
 jmp .UNIQUE7202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7202: 
	call	get_stack_char_array_element
 jmp .UNIQUE7203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7203: 
	movsbl	%al, %r13d
 jmp .UNIQUE7204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7204: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7205: 
	movq	16(%rax), %rax
 jmp .UNIQUE7206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7206: 
	movq	8(%rax), %rax
 jmp .UNIQUE7207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7207: 
	movl	$1, %esi
 jmp .UNIQUE7208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7208: 
	movq	%rax, %rdi
 jmp .UNIQUE7209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7209: 
	call	get_stack_char_array_element
 jmp .UNIQUE7210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7210: 
	movsbl	%al, %r12d
 jmp .UNIQUE7211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7211: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7212: 
	movq	16(%rax), %rax
 jmp .UNIQUE7213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7213: 
	movq	8(%rax), %rax
 jmp .UNIQUE7214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7214: 
	movl	$2, %esi
 jmp .UNIQUE7215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7215: 
	movq	%rax, %rdi
 jmp .UNIQUE7216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7216: 
	call	get_stack_char_array_element
 jmp .UNIQUE7217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7217: 
	movsbl	%al, %ebx
 jmp .UNIQUE7218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7218: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7219: 
	movq	16(%rax), %rax
 jmp .UNIQUE7220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7220: 
	movq	24(%rax), %rax
 jmp .UNIQUE7221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7221: 
	movl	$0, %esi
 jmp .UNIQUE7222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7222: 
	movq	%rax, %rdi
 jmp .UNIQUE7223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7223: 
	call	get_stack_int_array_element
 jmp .UNIQUE7224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7224: 
	subl	$1, %eax
 jmp .UNIQUE7225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7225: 
	movl	%r13d, %ecx
 jmp .UNIQUE7226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7226: 
	movl	%r12d, %edx
 jmp .UNIQUE7227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7227: 
	movl	%ebx, %esi
 jmp .UNIQUE7228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7228: 
	movl	%eax, %edi
 jmp .UNIQUE7229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7229: 
	call	towerOfHanoi_secure_using_template
 jmp .UNIQUE7230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7230: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7231: 
	movq	8(%rax), %rax
 jmp .UNIQUE7232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7232: 
	movq	%rax, %rdi
 jmp .UNIQUE7233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7233: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE7234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7234: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7235: 
	movq	%rax, %rdi
 jmp .UNIQUE7236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7236: 
	call	free_fun_params_that_point_to_stack
.L610:
 jmp .UNIQUE7237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7237: 
	addq	$40, %rsp
 jmp .UNIQUE7238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7238: 
	popq	%rbx
 jmp .UNIQUE7239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7239: 
	popq	%r12
 jmp .UNIQUE7240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7240: 
	popq	%r13
 jmp .UNIQUE7241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7241: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7242: 
	ret
	.cfi_endproc
.LFE122:
	.size	towerOfHanoi_secure_using_template, .-towerOfHanoi_secure_using_template
	.globl	towerOfHanoi_secure_using_changed_accesses
	.type	towerOfHanoi_secure_using_changed_accesses, @function
towerOfHanoi_secure_using_changed_accesses:
.LFB123:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE7243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7243: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7244: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7245: 
	pushq	%r13
 jmp .UNIQUE7246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7246: 
	pushq	%r12
 jmp .UNIQUE7247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7247: 
	pushq	%rbx
 jmp .UNIQUE7248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7248: 
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
 jmp .UNIQUE7249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7249: 
	movl	%edi, -68(%rbp)
 jmp .UNIQUE7250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7250: 
	movl	%ecx, %eax
 jmp .UNIQUE7251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7251: 
	movb	%sil, -72(%rbp)
 jmp .UNIQUE7252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7252: 
	movb	%dl, -76(%rbp)
 jmp .UNIQUE7253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7253: 
	movb	%al, -80(%rbp)
 jmp .UNIQUE7254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7254: 
	movsbl	-80(%rbp), %ecx
 jmp .UNIQUE7255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7255: 
	movsbl	-76(%rbp), %edx
 jmp .UNIQUE7256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7256: 
	movsbl	-72(%rbp), %esi
 jmp .UNIQUE7257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7257: 
	movl	-68(%rbp), %eax
 jmp .UNIQUE7258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7258: 
	movl	%eax, %edi
 jmp .UNIQUE7259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7259: 
	call	tower_of_Hanoi_init_secure_template
 jmp .UNIQUE7260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7260: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE7261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7261: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE7262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7262: 
	movq	16(%rax), %rax
 jmp .UNIQUE7263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7263: 
	movq	24(%rax), %rax
 jmp .UNIQUE7264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7264: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE7265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7265: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE7266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7266: 
	movq	16(%rax), %rax
 jmp .UNIQUE7267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7267: 
	movq	8(%rax), %rax
 jmp .UNIQUE7268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7268: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE7269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7269: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE7270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7270: 
	movl	$0, %esi
 jmp .UNIQUE7271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7271: 
	movq	%rax, %rdi
 jmp .UNIQUE7272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7272: 
	call	get_stack_int_array_element
 jmp .UNIQUE7273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7273: 
	cmpl	$1, %eax
 jmp .UNIQUE7274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7274: 
	jne	.L614
 jmp .UNIQUE7275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7275: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE7276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7276: 
	movq	8(%rax), %rax
 jmp .UNIQUE7277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7277: 
	movq	%rax, %rdi
 jmp .UNIQUE7278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7278: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE7279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7279: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE7280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7280: 
	movq	%rax, %rdi
 jmp .UNIQUE7281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7281: 
	call	free_fun_params_that_point_to_stack
 jmp .UNIQUE7282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7282: 
	jmp	.L613
.L614:
 jmp .UNIQUE7283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7283: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7284: 
	movl	$1, %esi
 jmp .UNIQUE7285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7285: 
	movq	%rax, %rdi
 jmp .UNIQUE7286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7286: 
	call	get_stack_char_array_element
 jmp .UNIQUE7287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7287: 
	movsbl	%al, %r13d
 jmp .UNIQUE7288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7288: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7289: 
	movl	$2, %esi
 jmp .UNIQUE7290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7290: 
	movq	%rax, %rdi
 jmp .UNIQUE7291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7291: 
	call	get_stack_char_array_element
 jmp .UNIQUE7292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7292: 
	movsbl	%al, %r12d
 jmp .UNIQUE7293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7293: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7294: 
	movl	$0, %esi
 jmp .UNIQUE7295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7295: 
	movq	%rax, %rdi
 jmp .UNIQUE7296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7296: 
	call	get_stack_char_array_element
 jmp .UNIQUE7297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7297: 
	movsbl	%al, %ebx
 jmp .UNIQUE7298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7298: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE7299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7299: 
	movl	$0, %esi
 jmp .UNIQUE7300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7300: 
	movq	%rax, %rdi
 jmp .UNIQUE7301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7301: 
	call	get_stack_int_array_element
 jmp .UNIQUE7302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7302: 
	subl	$1, %eax
 jmp .UNIQUE7303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7303: 
	movl	%r13d, %ecx
 jmp .UNIQUE7304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7304: 
	movl	%r12d, %edx
 jmp .UNIQUE7305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7305: 
	movl	%ebx, %esi
 jmp .UNIQUE7306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7306: 
	movl	%eax, %edi
 jmp .UNIQUE7307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7307: 
	call	towerOfHanoi_secure_using_template
 jmp .UNIQUE7308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7308: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7309: 
	movl	$0, %esi
 jmp .UNIQUE7310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7310: 
	movq	%rax, %rdi
 jmp .UNIQUE7311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7311: 
	call	get_stack_char_array_element
 jmp .UNIQUE7312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7312: 
	movsbl	%al, %r13d
 jmp .UNIQUE7313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7313: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7314: 
	movl	$1, %esi
 jmp .UNIQUE7315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7315: 
	movq	%rax, %rdi
 jmp .UNIQUE7316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7316: 
	call	get_stack_char_array_element
 jmp .UNIQUE7317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7317: 
	movsbl	%al, %r12d
 jmp .UNIQUE7318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7318: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7319: 
	movl	$2, %esi
 jmp .UNIQUE7320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7320: 
	movq	%rax, %rdi
 jmp .UNIQUE7321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7321: 
	call	get_stack_char_array_element
 jmp .UNIQUE7322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7322: 
	movsbl	%al, %ebx
 jmp .UNIQUE7323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7323: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE7324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7324: 
	movl	$0, %esi
 jmp .UNIQUE7325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7325: 
	movq	%rax, %rdi
 jmp .UNIQUE7326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7326: 
	call	get_stack_int_array_element
 jmp .UNIQUE7327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7327: 
	subl	$1, %eax
 jmp .UNIQUE7328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7328: 
	movl	%r13d, %ecx
 jmp .UNIQUE7329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7329: 
	movl	%r12d, %edx
 jmp .UNIQUE7330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7330: 
	movl	%ebx, %esi
 jmp .UNIQUE7331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7331: 
	movl	%eax, %edi
 jmp .UNIQUE7332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7332: 
	call	towerOfHanoi_secure_using_template
 jmp .UNIQUE7333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7333: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE7334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7334: 
	movq	8(%rax), %rax
 jmp .UNIQUE7335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7335: 
	movq	%rax, %rdi
 jmp .UNIQUE7336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7336: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE7337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7337: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE7338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7338: 
	movq	%rax, %rdi
 jmp .UNIQUE7339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7339: 
	call	free_fun_params_that_point_to_stack
.L613:
 jmp .UNIQUE7340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7340: 
	addq	$56, %rsp
 jmp .UNIQUE7341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7341: 
	popq	%rbx
 jmp .UNIQUE7342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7342: 
	popq	%r12
 jmp .UNIQUE7343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7343: 
	popq	%r13
 jmp .UNIQUE7344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7344: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7345: 
	ret
	.cfi_endproc
.LFE123:
	.size	towerOfHanoi_secure_using_changed_accesses, .-towerOfHanoi_secure_using_changed_accesses
	.comm	sa,152,32
	.globl	check_next_canaries
	.type	check_next_canaries, @function
check_next_canaries:
.LFB124:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE7346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7346: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7347: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7348: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE7349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7349: 
	movl	$0, -4(%rbp)
 jmp .UNIQUE7350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7350: 
	jmp	.L617
.L620:
 jmp .UNIQUE7351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7351: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE7352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7352: 
	movslq	%eax, %rdx
 jmp .UNIQUE7353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7353: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7354: 
	addq	%rdx, %rax
 jmp .UNIQUE7355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7355: 
	movzbl	(%rax), %eax
 jmp .UNIQUE7356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7356: 
	cmpb	$66, %al
 jmp .UNIQUE7357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7357: 
	je	.L618
 jmp .UNIQUE7358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7358: 
	movl	$0, %eax
 jmp .UNIQUE7359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7359: 
	jmp	.L619
.L618:
 jmp .UNIQUE7360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7360: 
	addl	$1, -4(%rbp)
.L617:
 jmp .UNIQUE7361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7361: 
	cmpl	$1, -4(%rbp)
 jmp .UNIQUE7362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7362: 
	jle	.L620
 jmp .UNIQUE7363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7363: 
	movl	$1, %eax
.L619:
 jmp .UNIQUE7364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7364: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7365: 
	ret
	.cfi_endproc
.LFE124:
	.size	check_next_canaries, .-check_next_canaries
	.section	.rodata
.LC116:
	.string	"key no%d=0x%02x\n"
	.text
	.globl	find_keyshares
	.type	find_keyshares, @function
find_keyshares:
.LFB125:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE7366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7366: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7367: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7368: 
	subq	$112, %rsp
 jmp .UNIQUE7369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7369: 
	movq	%fs:40, %rax
 jmp .UNIQUE7370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7370: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE7371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7371: 
	xorl	%eax, %eax
 jmp .UNIQUE7372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7372: 
	movl	$0, -92(%rbp)
 jmp .UNIQUE7373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7373: 
	movq	$foo, -64(%rbp)
 jmp .UNIQUE7374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7374: 
	movq	$main, -56(%rbp)
 jmp .UNIQUE7375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7375: 
	movq	$foo2, -48(%rbp)
 jmp .UNIQUE7376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7376: 
	movq	$find_keyshares, -40(%rbp)
 jmp .UNIQUE7377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7377: 
	movl	$0, -96(%rbp)
 jmp .UNIQUE7378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7378: 
	movq	$__executable_start, -32(%rbp)
 jmp .UNIQUE7379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7379: 
	movq	$__etext, -24(%rbp)
 jmp .UNIQUE7380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7380: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE7381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7381: 
	jmp	.L622
.L623:
 jmp .UNIQUE7382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7382: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7383: 
	cltq
 jmp .UNIQUE7384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7384: 
	movb	$0, -16(%rbp,%rax)
 jmp .UNIQUE7385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7385: 
	addl	$1, -100(%rbp)
.L622:
 jmp .UNIQUE7386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7386: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE7387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7387: 
	jle	.L623
 jmp .UNIQUE7388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7388: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE7389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7389: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE7390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7390: 
	jmp	.L624
.L628:
 jmp .UNIQUE7391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7391: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7392: 
	movzbl	(%rax), %eax
 jmp .UNIQUE7393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7393: 
	cmpb	$-21, %al
 jmp .UNIQUE7394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7394: 
	jne	.L625
 jmp .UNIQUE7395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7395: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7396: 
	addq	$1, %rax
 jmp .UNIQUE7397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7397: 
	movzbl	(%rax), %eax
 jmp .UNIQUE7398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7398: 
	cmpb	$7, %al
 jmp .UNIQUE7399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7399: 
	jne	.L625
 jmp .UNIQUE7400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7400: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7401: 
	addq	$2, %rax
 jmp .UNIQUE7402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7402: 
	movq	%rax, %rdi
 jmp .UNIQUE7403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7403: 
	call	check_next_canaries
 jmp .UNIQUE7404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7404: 
	testl	%eax, %eax
 jmp .UNIQUE7405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7405: 
	je	.L625
 jmp .UNIQUE7406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7406: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE7407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7407: 
	jmp	.L626
.L627:
 jmp .UNIQUE7408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7408: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7409: 
	cltq
 jmp .UNIQUE7410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7410: 
	movzbl	-16(%rbp,%rax), %edx
 jmp .UNIQUE7411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7411: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7412: 
	cltq
 jmp .UNIQUE7413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7413: 
	leaq	4(%rax), %rcx
 jmp .UNIQUE7414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7414: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7415: 
	addq	%rcx, %rax
 jmp .UNIQUE7416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7416: 
	movzbl	(%rax), %eax
 jmp .UNIQUE7417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7417: 
	xorl	%eax, %edx
 jmp .UNIQUE7418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7418: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7419: 
	cltq
 jmp .UNIQUE7420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7420: 
	movb	%dl, -16(%rbp,%rax)
 jmp .UNIQUE7421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7421: 
	addl	$1, -100(%rbp)
.L626:
 jmp .UNIQUE7422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7422: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE7423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7423: 
	jle	.L627
.L625:
 jmp .UNIQUE7424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7424: 
	addq	$1, -88(%rbp)
.L624:
 jmp .UNIQUE7425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7425: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7426: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE7427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7427: 
	jbe	.L628
 jmp .UNIQUE7428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7428: 
	movl	$0, -96(%rbp)
 jmp .UNIQUE7429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7429: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE7430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7430: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE7431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7431: 
	movq	$0, -80(%rbp)
 jmp .UNIQUE7432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7432: 
	jmp	.L629
.L633:
 jmp .UNIQUE7433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7433: 
	cmpl	$0, -96(%rbp)
 jmp .UNIQUE7434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7434: 
	jne	.L630
 jmp .UNIQUE7435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7435: 
	addq	$4, -80(%rbp)
 jmp .UNIQUE7436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7436: 
	movl	$1, -96(%rbp)
 jmp .UNIQUE7437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7437: 
	jmp	.L629
.L630:
 jmp .UNIQUE7438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7438: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE7439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7439: 
	jmp	.L631
.L632:
 jmp .UNIQUE7440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7440: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7441: 
	cltq
 jmp .UNIQUE7442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7442: 
	movzbl	-16(%rbp,%rax), %edx
 jmp .UNIQUE7443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7443: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7444: 
	movslq	%eax, %rcx
 jmp .UNIQUE7445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7445: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE7446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7446: 
	addq	%rax, %rcx
 jmp .UNIQUE7447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7447: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7448: 
	addq	%rcx, %rax
 jmp .UNIQUE7449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7449: 
	movzbl	(%rax), %eax
 jmp .UNIQUE7450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7450: 
	xorl	%eax, %edx
 jmp .UNIQUE7451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7451: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7452: 
	cltq
 jmp .UNIQUE7453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7453: 
	movb	%dl, -16(%rbp,%rax)
 jmp .UNIQUE7454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7454: 
	addl	$1, -100(%rbp)
.L631:
 jmp .UNIQUE7455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7455: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE7456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7456: 
	jle	.L632
 jmp .UNIQUE7457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7457: 
	addq	$5, -80(%rbp)
 jmp .UNIQUE7458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7458: 
	movl	$0, -96(%rbp)
.L629:
 jmp .UNIQUE7459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7459: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE7460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7460: 
	cmpq	%rax, -80(%rbp)
 jmp .UNIQUE7461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7461: 
	jl	.L633
 jmp .UNIQUE7462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7462: 
	movl	$0, -96(%rbp)
 jmp .UNIQUE7463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7463: 
	movq	entire_stack_memory_chunk(%rip), %rax
 jmp .UNIQUE7464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7464: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE7465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7465: 
	movq	$0, -72(%rbp)
 jmp .UNIQUE7466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7466: 
	jmp	.L634
.L638:
 jmp .UNIQUE7467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7467: 
	cmpl	$0, -96(%rbp)
 jmp .UNIQUE7468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7468: 
	jne	.L635
 jmp .UNIQUE7469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7469: 
	addq	$3, -72(%rbp)
 jmp .UNIQUE7470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7470: 
	movl	$1, -96(%rbp)
 jmp .UNIQUE7471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7471: 
	jmp	.L634
.L635:
 jmp .UNIQUE7472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7472: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE7473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7473: 
	jmp	.L636
.L637:
 jmp .UNIQUE7474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7474: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7475: 
	cltq
 jmp .UNIQUE7476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7476: 
	movzbl	-16(%rbp,%rax), %edx
 jmp .UNIQUE7477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7477: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7478: 
	movslq	%eax, %rcx
 jmp .UNIQUE7479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7479: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE7480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7480: 
	addq	%rax, %rcx
 jmp .UNIQUE7481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7481: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7482: 
	addq	%rcx, %rax
 jmp .UNIQUE7483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7483: 
	movzbl	(%rax), %eax
 jmp .UNIQUE7484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7484: 
	xorl	%eax, %edx
 jmp .UNIQUE7485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7485: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7486: 
	cltq
 jmp .UNIQUE7487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7487: 
	movb	%dl, -16(%rbp,%rax)
 jmp .UNIQUE7488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7488: 
	addl	$1, -100(%rbp)
.L636:
 jmp .UNIQUE7489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7489: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE7490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7490: 
	jle	.L637
 jmp .UNIQUE7491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7491: 
	addq	$5, -72(%rbp)
 jmp .UNIQUE7492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7492: 
	movl	$0, -96(%rbp)
.L634:
 jmp .UNIQUE7493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7493: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE7494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7494: 
	cmpq	%rax, -72(%rbp)
 jmp .UNIQUE7495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7495: 
	jl	.L638
 jmp .UNIQUE7496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7496: 
	movl	$10, %edi
 jmp .UNIQUE7497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7497: 
	call	putchar
 jmp .UNIQUE7498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7498: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE7499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7499: 
	jmp	.L639
.L640:
 jmp .UNIQUE7500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7500: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7501: 
	cltq
 jmp .UNIQUE7502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7502: 
	movzbl	-16(%rbp,%rax), %eax
 jmp .UNIQUE7503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7503: 
	movzbl	%al, %edx
 jmp .UNIQUE7504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7504: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7505: 
	movl	%eax, %esi
 jmp .UNIQUE7506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7506: 
	movl	$.LC116, %edi
 jmp .UNIQUE7507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7507: 
	movl	$0, %eax
 jmp .UNIQUE7508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7508: 
	call	printf
 jmp .UNIQUE7509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7509: 
	addl	$1, -100(%rbp)
.L639:
 jmp .UNIQUE7510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7510: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE7511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7511: 
	jle	.L640
 jmp .UNIQUE7512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7512: 
	nop
 jmp .UNIQUE7513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7513: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7514: 
	xorq	%fs:40, %rax
 jmp .UNIQUE7515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7515: 
	je	.L642
 jmp .UNIQUE7516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7516: 
	call	__stack_chk_fail
.L642:
 jmp .UNIQUE7517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7517: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7518: 
	ret
	.cfi_endproc
.LFE125:
	.size	find_keyshares, .-find_keyshares
	.section	.rodata
.LC117:
	.string	"Verification requested!"
	.text
	.globl	verification_procedure
	.type	verification_procedure, @function
verification_procedure:
.LFB126:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE7519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7519: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7520: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7521: 
	movl	$.LC117, %edi
 jmp .UNIQUE7522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7522: 
	call	puts
 jmp .UNIQUE7523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7523: 
	movl	$0, %eax
 jmp .UNIQUE7524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7524: 
	call	find_keyshares
 jmp .UNIQUE7525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7525: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7526: 
	ret
	.cfi_endproc
.LFE126:
	.size	verification_procedure, .-verification_procedure
	.section	.rodata
	.align 8
.LC118:
	.string	"Going to find primes up to %d\n"
.LC119:
	.string	"Initialized parameters."
.LC120:
	.string	"Allocated space"
.LC121:
	.string	"Set 2 as first prime"
.LC122:
	.string	"\nPrimes:"
.LC123:
	.string	"\n"
.LC124:
	.string	"Total number of primes:%d\n"
	.text
	.globl	find_primes_up_to_a_number
	.type	find_primes_up_to_a_number, @function
find_primes_up_to_a_number:
.LFB127:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE7527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7527: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7528: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7529: 
	pushq	%r12
 jmp .UNIQUE7530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7530: 
	pushq	%rbx
 jmp .UNIQUE7531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7531: 
	subq	$96, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
 jmp .UNIQUE7532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7532: 
	movl	%edi, -36(%rbp)
 jmp .UNIQUE7533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7533: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE7534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7534: 
	movl	%eax, %esi
 jmp .UNIQUE7535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7535: 
	movl	$.LC118, %edi
 jmp .UNIQUE7536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7536: 
	movl	$0, %eax
 jmp .UNIQUE7537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7537: 
	call	printf
 jmp .UNIQUE7538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7538: 
	movq	$0, 56(%rsp)
 jmp .UNIQUE7539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7539: 
	movq	$0, 48(%rsp)
 jmp .UNIQUE7540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7540: 
	movq	$4, 40(%rsp)
 jmp .UNIQUE7541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7541: 
	movq	$1, 32(%rsp)
 jmp .UNIQUE7542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7542: 
	movq	$0, 24(%rsp)
 jmp .UNIQUE7543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7543: 
	movq	$0, 16(%rsp)
 jmp .UNIQUE7544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7544: 
	movq	$0, 8(%rsp)
 jmp .UNIQUE7545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7545: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE7546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7546: 
	movl	%eax, (%rsp)
 jmp .UNIQUE7547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7547: 
	movl	$1, %r9d
 jmp .UNIQUE7548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7548: 
	movl	$4, %r8d
 jmp .UNIQUE7549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7549: 
	movl	$0, %ecx
 jmp .UNIQUE7550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7550: 
	movl	$1, %edx
 jmp .UNIQUE7551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7551: 
	movl	$1, %esi
 jmp .UNIQUE7552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7552: 
	movl	$1, %edi
 jmp .UNIQUE7553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7553: 
	movl	$0, %eax
 jmp .UNIQUE7554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7554: 
	call	init_function_params_with_uninitialised_elements
 jmp .UNIQUE7555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7555: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE7556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7556: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7557: 
	movq	%rax, %rdi
 jmp .UNIQUE7558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7558: 
	call	put_fun_params_into_secure_stack_and_free
 jmp .UNIQUE7559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7559: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE7560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7560: 
	movl	$.LC119, %edi
 jmp .UNIQUE7561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7561: 
	call	puts
 jmp .UNIQUE7562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7562: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7563: 
	movq	16(%rax), %rax
 jmp .UNIQUE7564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7564: 
	movq	24(%rax), %rax
 jmp .UNIQUE7565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7565: 
	movl	$0, %esi
 jmp .UNIQUE7566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7566: 
	movq	%rax, %rdi
 jmp .UNIQUE7567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7567: 
	call	get_stack_int_array_element
 jmp .UNIQUE7568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7568: 
	cltq
 jmp .UNIQUE7569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7569: 
	salq	$2, %rax
 jmp .UNIQUE7570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7570: 
	movl	$30, %edx
 jmp .UNIQUE7571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7571: 
	movl	$__func__.5074, %esi
 jmp .UNIQUE7572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7572: 
	movq	%rax, %rdi
 jmp .UNIQUE7573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7573: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE7574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7574: 
	movq	%rax, %rdx
 jmp .UNIQUE7575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7575: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7576: 
	movq	16(%rax), %rax
 jmp .UNIQUE7577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7577: 
	movq	96(%rax), %rax
 jmp .UNIQUE7578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7578: 
	movl	$0, %esi
 jmp .UNIQUE7579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7579: 
	movq	%rax, %rdi
 jmp .UNIQUE7580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7580: 
	call	set_stack_pointer_array_element
 jmp .UNIQUE7581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7581: 
	movl	$.LC120, %edi
 jmp .UNIQUE7582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7582: 
	call	puts
 jmp .UNIQUE7583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7583: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7584: 
	movq	16(%rax), %rax
 jmp .UNIQUE7585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7585: 
	movq	24(%rax), %rax
 jmp .UNIQUE7586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7586: 
	movl	$1, %edx
 jmp .UNIQUE7587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7587: 
	movl	$3, %esi
 jmp .UNIQUE7588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7588: 
	movq	%rax, %rdi
 jmp .UNIQUE7589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7589: 
	call	set_stack_int_array_element
 jmp .UNIQUE7590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7590: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7591: 
	movq	16(%rax), %rax
 jmp .UNIQUE7592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7592: 
	movq	24(%rax), %rax
 jmp .UNIQUE7593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7593: 
	movl	$3, %esi
 jmp .UNIQUE7594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7594: 
	movq	%rax, %rdi
 jmp .UNIQUE7595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7595: 
	call	get_stack_int_array_element
 jmp .UNIQUE7596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7596: 
	subl	$1, %eax
 jmp .UNIQUE7597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7597: 
	movslq	%eax, %rbx
 jmp .UNIQUE7598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7598: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7599: 
	movq	16(%rax), %rax
 jmp .UNIQUE7600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7600: 
	movq	96(%rax), %rax
 jmp .UNIQUE7601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7601: 
	movl	$0, %esi
 jmp .UNIQUE7602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7602: 
	movq	%rax, %rdi
 jmp .UNIQUE7603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7603: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE7604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7604: 
	movl	$2, %edx
 jmp .UNIQUE7605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7605: 
	movq	%rbx, %rsi
 jmp .UNIQUE7606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7606: 
	movq	%rax, %rdi
 jmp .UNIQUE7607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7607: 
	call	set_int_array_element
 jmp .UNIQUE7608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7608: 
	movl	$.LC121, %edi
 jmp .UNIQUE7609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7609: 
	call	puts
 jmp .UNIQUE7610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7610: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7611: 
	movq	16(%rax), %rax
 jmp .UNIQUE7612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7612: 
	movq	24(%rax), %rax
 jmp .UNIQUE7613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7613: 
	movl	$3, %edx
 jmp .UNIQUE7614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7614: 
	movl	$1, %esi
 jmp .UNIQUE7615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7615: 
	movq	%rax, %rdi
 jmp .UNIQUE7616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7616: 
	call	set_stack_int_array_element
 jmp .UNIQUE7617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7617: 
	jmp	.L645
.L651:
 jmp .UNIQUE7618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7618: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7619: 
	movq	16(%rax), %rax
 jmp .UNIQUE7620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7620: 
	movq	8(%rax), %rax
 jmp .UNIQUE7621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7621: 
	movl	$0, %edx
 jmp .UNIQUE7622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7622: 
	movl	$0, %esi
 jmp .UNIQUE7623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7623: 
	movq	%rax, %rdi
 jmp .UNIQUE7624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7624: 
	call	set_stack_char_array_element
 jmp .UNIQUE7625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7625: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7626: 
	movq	16(%rax), %rax
 jmp .UNIQUE7627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7627: 
	movq	24(%rax), %rax
 jmp .UNIQUE7628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7628: 
	movl	$2, %edx
 jmp .UNIQUE7629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7629: 
	movl	$2, %esi
 jmp .UNIQUE7630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7630: 
	movq	%rax, %rdi
 jmp .UNIQUE7631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7631: 
	call	set_stack_int_array_element
 jmp .UNIQUE7632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7632: 
	jmp	.L646
.L649:
 jmp .UNIQUE7633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7633: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7634: 
	movq	16(%rax), %rax
 jmp .UNIQUE7635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7635: 
	movq	24(%rax), %rax
 jmp .UNIQUE7636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7636: 
	movl	$1, %esi
 jmp .UNIQUE7637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7637: 
	movq	%rax, %rdi
 jmp .UNIQUE7638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7638: 
	call	get_stack_int_array_element
 jmp .UNIQUE7639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7639: 
	movl	%eax, %ebx
 jmp .UNIQUE7640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7640: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7641: 
	movq	16(%rax), %rax
 jmp .UNIQUE7642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7642: 
	movq	24(%rax), %rax
 jmp .UNIQUE7643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7643: 
	movl	$2, %esi
 jmp .UNIQUE7644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7644: 
	movq	%rax, %rdi
 jmp .UNIQUE7645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7645: 
	call	get_stack_int_array_element
 jmp .UNIQUE7646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7646: 
	movl	%eax, %ecx
 jmp .UNIQUE7647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7647: 
	movl	%ebx, %eax
 jmp .UNIQUE7648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7648: 
	cltd
 jmp .UNIQUE7649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7649: 
	idivl	%ecx
 jmp .UNIQUE7650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7650: 
	movl	%edx, %ecx
 jmp .UNIQUE7651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7651: 
	movl	%ecx, %eax
 jmp .UNIQUE7652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7652: 
	testl	%eax, %eax
 jmp .UNIQUE7653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7653: 
	jne	.L647
 jmp .UNIQUE7654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7654: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7655: 
	movq	16(%rax), %rax
 jmp .UNIQUE7656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7656: 
	movq	8(%rax), %rax
 jmp .UNIQUE7657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7657: 
	movl	$1, %edx
 jmp .UNIQUE7658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7658: 
	movl	$0, %esi
 jmp .UNIQUE7659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7659: 
	movq	%rax, %rdi
 jmp .UNIQUE7660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7660: 
	call	set_stack_char_array_element
 jmp .UNIQUE7661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7661: 
	jmp	.L648
.L647:
 jmp .UNIQUE7662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7662: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7663: 
	movq	16(%rax), %rax
 jmp .UNIQUE7664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7664: 
	movq	24(%rax), %rax
 jmp .UNIQUE7665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7665: 
	movl	$2, %esi
 jmp .UNIQUE7666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7666: 
	movq	%rax, %rdi
 jmp .UNIQUE7667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7667: 
	call	get_stack_int_array_element
 jmp .UNIQUE7668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7668: 
	leal	1(%rax), %edx
 jmp .UNIQUE7669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7669: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7670: 
	movq	16(%rax), %rax
 jmp .UNIQUE7671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7671: 
	movq	24(%rax), %rax
 jmp .UNIQUE7672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7672: 
	movl	$2, %esi
 jmp .UNIQUE7673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7673: 
	movq	%rax, %rdi
 jmp .UNIQUE7674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7674: 
	call	set_stack_int_array_element
.L646:
 jmp .UNIQUE7675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7675: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7676: 
	movq	16(%rax), %rax
 jmp .UNIQUE7677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7677: 
	movq	24(%rax), %rax
 jmp .UNIQUE7678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7678: 
	movl	$2, %esi
 jmp .UNIQUE7679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7679: 
	movq	%rax, %rdi
 jmp .UNIQUE7680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7680: 
	call	get_stack_int_array_element
 jmp .UNIQUE7681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7681: 
	movl	%eax, %ebx
 jmp .UNIQUE7682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7682: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7683: 
	movq	16(%rax), %rax
 jmp .UNIQUE7684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7684: 
	movq	24(%rax), %rax
 jmp .UNIQUE7685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7685: 
	movl	$1, %esi
 jmp .UNIQUE7686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7686: 
	movq	%rax, %rdi
 jmp .UNIQUE7687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7687: 
	call	get_stack_int_array_element
 jmp .UNIQUE7688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7688: 
	movl	%eax, %edx
 jmp .UNIQUE7689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7689: 
	shrl	$31, %edx
 jmp .UNIQUE7690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7690: 
	addl	%edx, %eax
 jmp .UNIQUE7691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7691: 
	sarl	%eax
 jmp .UNIQUE7692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7692: 
	addl	$1, %eax
 jmp .UNIQUE7693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7693: 
	cmpl	%eax, %ebx
 jmp .UNIQUE7694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7694: 
	jle	.L649
.L648:
 jmp .UNIQUE7695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7695: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7696: 
	movq	16(%rax), %rax
 jmp .UNIQUE7697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7697: 
	movq	8(%rax), %rax
 jmp .UNIQUE7698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7698: 
	movl	$0, %esi
 jmp .UNIQUE7699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7699: 
	movq	%rax, %rdi
 jmp .UNIQUE7700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7700: 
	call	get_stack_char_array_element
 jmp .UNIQUE7701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7701: 
	testb	%al, %al
 jmp .UNIQUE7702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7702: 
	jne	.L650
 jmp .UNIQUE7703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7703: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7704: 
	movq	16(%rax), %rax
 jmp .UNIQUE7705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7705: 
	movq	24(%rax), %rax
 jmp .UNIQUE7706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7706: 
	movl	$3, %esi
 jmp .UNIQUE7707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7707: 
	movq	%rax, %rdi
 jmp .UNIQUE7708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7708: 
	call	get_stack_int_array_element
 jmp .UNIQUE7709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7709: 
	leal	1(%rax), %edx
 jmp .UNIQUE7710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7710: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7711: 
	movq	16(%rax), %rax
 jmp .UNIQUE7712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7712: 
	movq	24(%rax), %rax
 jmp .UNIQUE7713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7713: 
	movl	$3, %esi
 jmp .UNIQUE7714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7714: 
	movq	%rax, %rdi
 jmp .UNIQUE7715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7715: 
	call	set_stack_int_array_element
 jmp .UNIQUE7716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7716: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7717: 
	movq	16(%rax), %rax
 jmp .UNIQUE7718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7718: 
	movq	24(%rax), %rax
 jmp .UNIQUE7719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7719: 
	movl	$1, %esi
 jmp .UNIQUE7720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7720: 
	movq	%rax, %rdi
 jmp .UNIQUE7721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7721: 
	call	get_stack_int_array_element
 jmp .UNIQUE7722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7722: 
	movl	%eax, %r12d
 jmp .UNIQUE7723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7723: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7724: 
	movq	16(%rax), %rax
 jmp .UNIQUE7725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7725: 
	movq	24(%rax), %rax
 jmp .UNIQUE7726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7726: 
	movl	$3, %esi
 jmp .UNIQUE7727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7727: 
	movq	%rax, %rdi
 jmp .UNIQUE7728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7728: 
	call	get_stack_int_array_element
 jmp .UNIQUE7729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7729: 
	subl	$1, %eax
 jmp .UNIQUE7730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7730: 
	movslq	%eax, %rbx
 jmp .UNIQUE7731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7731: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7732: 
	movq	16(%rax), %rax
 jmp .UNIQUE7733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7733: 
	movq	96(%rax), %rax
 jmp .UNIQUE7734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7734: 
	movl	$0, %esi
 jmp .UNIQUE7735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7735: 
	movq	%rax, %rdi
 jmp .UNIQUE7736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7736: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE7737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7737: 
	movl	%r12d, %edx
 jmp .UNIQUE7738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7738: 
	movq	%rbx, %rsi
 jmp .UNIQUE7739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7739: 
	movq	%rax, %rdi
 jmp .UNIQUE7740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7740: 
	call	set_int_array_element
.L650:
 jmp .UNIQUE7741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7741: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7742: 
	movq	16(%rax), %rax
 jmp .UNIQUE7743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7743: 
	movq	24(%rax), %rax
 jmp .UNIQUE7744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7744: 
	movl	$1, %esi
 jmp .UNIQUE7745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7745: 
	movq	%rax, %rdi
 jmp .UNIQUE7746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7746: 
	call	get_stack_int_array_element
 jmp .UNIQUE7747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7747: 
	leal	2(%rax), %edx
 jmp .UNIQUE7748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7748: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7749: 
	movq	16(%rax), %rax
 jmp .UNIQUE7750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7750: 
	movq	24(%rax), %rax
 jmp .UNIQUE7751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7751: 
	movl	$1, %esi
 jmp .UNIQUE7752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7752: 
	movq	%rax, %rdi
 jmp .UNIQUE7753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7753: 
	call	set_stack_int_array_element
.L645:
 jmp .UNIQUE7754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7754: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7755: 
	movq	16(%rax), %rax
 jmp .UNIQUE7756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7756: 
	movq	24(%rax), %rax
 jmp .UNIQUE7757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7757: 
	movl	$1, %esi
 jmp .UNIQUE7758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7758: 
	movq	%rax, %rdi
 jmp .UNIQUE7759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7759: 
	call	get_stack_int_array_element
 jmp .UNIQUE7760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7760: 
	movl	%eax, %ebx
 jmp .UNIQUE7761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7761: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7762: 
	movq	16(%rax), %rax
 jmp .UNIQUE7763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7763: 
	movq	24(%rax), %rax
 jmp .UNIQUE7764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7764: 
	movl	$0, %esi
 jmp .UNIQUE7765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7765: 
	movq	%rax, %rdi
 jmp .UNIQUE7766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7766: 
	call	get_stack_int_array_element
 jmp .UNIQUE7767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7767: 
	cmpl	%eax, %ebx
 jmp .UNIQUE7768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7768: 
	jle	.L651
 jmp .UNIQUE7769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7769: 
	movl	$.LC122, %edi
 jmp .UNIQUE7770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7770: 
	call	puts
 jmp .UNIQUE7771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7771: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7772: 
	movq	16(%rax), %rax
 jmp .UNIQUE7773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7773: 
	movq	24(%rax), %rax
 jmp .UNIQUE7774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7774: 
	movl	$0, %edx
 jmp .UNIQUE7775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7775: 
	movl	$1, %esi
 jmp .UNIQUE7776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7776: 
	movq	%rax, %rdi
 jmp .UNIQUE7777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7777: 
	call	set_stack_int_array_element
 jmp .UNIQUE7778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7778: 
	jmp	.L652
.L653:
 jmp .UNIQUE7779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7779: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7780: 
	movq	16(%rax), %rax
 jmp .UNIQUE7781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7781: 
	movq	24(%rax), %rax
 jmp .UNIQUE7782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7782: 
	movl	$1, %esi
 jmp .UNIQUE7783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7783: 
	movq	%rax, %rdi
 jmp .UNIQUE7784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7784: 
	call	get_stack_int_array_element
 jmp .UNIQUE7785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7785: 
	movslq	%eax, %rbx
 jmp .UNIQUE7786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7786: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7787: 
	movq	16(%rax), %rax
 jmp .UNIQUE7788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7788: 
	movq	96(%rax), %rax
 jmp .UNIQUE7789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7789: 
	movl	$0, %esi
 jmp .UNIQUE7790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7790: 
	movq	%rax, %rdi
 jmp .UNIQUE7791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7791: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE7792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7792: 
	movq	%rbx, %rsi
 jmp .UNIQUE7793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7793: 
	movq	%rax, %rdi
 jmp .UNIQUE7794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7794: 
	call	get_int_array_element
 jmp .UNIQUE7795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7795: 
	movl	%eax, %esi
 jmp .UNIQUE7796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7796: 
	movl	$.LC22, %edi
 jmp .UNIQUE7797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7797: 
	movl	$0, %eax
 jmp .UNIQUE7798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7798: 
	call	printf
 jmp .UNIQUE7799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7799: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7800: 
	movq	16(%rax), %rax
 jmp .UNIQUE7801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7801: 
	movq	24(%rax), %rax
 jmp .UNIQUE7802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7802: 
	movl	$1, %esi
 jmp .UNIQUE7803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7803: 
	movq	%rax, %rdi
 jmp .UNIQUE7804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7804: 
	call	get_stack_int_array_element
 jmp .UNIQUE7805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7805: 
	leal	1(%rax), %edx
 jmp .UNIQUE7806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7806: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7807: 
	movq	16(%rax), %rax
 jmp .UNIQUE7808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7808: 
	movq	24(%rax), %rax
 jmp .UNIQUE7809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7809: 
	movl	$1, %esi
 jmp .UNIQUE7810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7810: 
	movq	%rax, %rdi
 jmp .UNIQUE7811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7811: 
	call	set_stack_int_array_element
.L652:
 jmp .UNIQUE7812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7812: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7813: 
	movq	16(%rax), %rax
 jmp .UNIQUE7814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7814: 
	movq	24(%rax), %rax
 jmp .UNIQUE7815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7815: 
	movl	$1, %esi
 jmp .UNIQUE7816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7816: 
	movq	%rax, %rdi
 jmp .UNIQUE7817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7817: 
	call	get_stack_int_array_element
 jmp .UNIQUE7818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7818: 
	movl	%eax, %ebx
 jmp .UNIQUE7819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7819: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7820: 
	movq	16(%rax), %rax
 jmp .UNIQUE7821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7821: 
	movq	24(%rax), %rax
 jmp .UNIQUE7822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7822: 
	movl	$3, %esi
 jmp .UNIQUE7823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7823: 
	movq	%rax, %rdi
 jmp .UNIQUE7824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7824: 
	call	get_stack_int_array_element
 jmp .UNIQUE7825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7825: 
	cmpl	%eax, %ebx
 jmp .UNIQUE7826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7826: 
	jl	.L653
 jmp .UNIQUE7827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7827: 
	movl	$.LC123, %edi
 jmp .UNIQUE7828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7828: 
	call	puts
 jmp .UNIQUE7829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7829: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7830: 
	movq	16(%rax), %rax
 jmp .UNIQUE7831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7831: 
	movq	24(%rax), %rax
 jmp .UNIQUE7832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7832: 
	movl	$3, %esi
 jmp .UNIQUE7833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7833: 
	movq	%rax, %rdi
 jmp .UNIQUE7834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7834: 
	call	get_stack_int_array_element
 jmp .UNIQUE7835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7835: 
	movl	%eax, %esi
 jmp .UNIQUE7836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7836: 
	movl	$.LC124, %edi
 jmp .UNIQUE7837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7837: 
	movl	$0, %eax
 jmp .UNIQUE7838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7838: 
	call	printf
 jmp .UNIQUE7839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7839: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7840: 
	movq	16(%rax), %rax
 jmp .UNIQUE7841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7841: 
	movq	96(%rax), %rax
 jmp .UNIQUE7842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7842: 
	movl	$0, %esi
 jmp .UNIQUE7843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7843: 
	movq	%rax, %rdi
 jmp .UNIQUE7844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7844: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE7845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7845: 
	movq	%rax, %rdi
 jmp .UNIQUE7846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7846: 
	call	managed_secure_free
 jmp .UNIQUE7847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7847: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7848: 
	movq	8(%rax), %rax
 jmp .UNIQUE7849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7849: 
	movq	%rax, %rdi
 jmp .UNIQUE7850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7850: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE7851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7851: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7852: 
	movq	%rax, %rdi
 jmp .UNIQUE7853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7853: 
	call	free_fun_params_that_point_to_stack
 jmp .UNIQUE7854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7854: 
	addq	$96, %rsp
 jmp .UNIQUE7855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7855: 
	popq	%rbx
 jmp .UNIQUE7856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7856: 
	popq	%r12
 jmp .UNIQUE7857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7857: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7858: 
	ret
	.cfi_endproc
.LFE127:
	.size	find_primes_up_to_a_number, .-find_primes_up_to_a_number
	.section	.rodata
.LC125:
	.string	"Initializing heap memory"
	.align 8
.LC126:
	.string	"bytes_to_allocate_on_start:%d\n"
.LC127:
	.string	"Init_mem, alloc+key insertion"
	.align 8
.LC128:
	.string	"If successful, total bytes allocated:%ld\n"
.LC129:
	.string	"Initializing stack memory"
	.align 8
.LC130:
	.string	"Stack bytes_to_allocate_on_start:%d\n"
	.align 8
.LC131:
	.string	"Init_stack_mem, alloc+key insertion"
	.text
	.globl	init_heap_and_stack_mem
	.type	init_heap_and_stack_mem, @function
init_heap_and_stack_mem:
.LFB128:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE7859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7859: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7860: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7861: 
	movl	$.LC125, %edi
 jmp .UNIQUE7862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7862: 
	call	puts
 jmp .UNIQUE7863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7863: 
	movl	$2048, %esi
 jmp .UNIQUE7864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7864: 
	movl	$.LC126, %edi
 jmp .UNIQUE7865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7865: 
	movl	$0, %eax
 jmp .UNIQUE7866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7866: 
	call	printf
 jmp .UNIQUE7867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7867: 
	movl	$.LC127, %edi
 jmp .UNIQUE7868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7868: 
	call	puts
 jmp .UNIQUE7869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7869: 
	movl	$0, %eax
 jmp .UNIQUE7870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7870: 
	call	init_mem
 jmp .UNIQUE7871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7871: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE7872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7872: 
	movq	%rax, %rsi
 jmp .UNIQUE7873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7873: 
	movl	$.LC128, %edi
 jmp .UNIQUE7874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7874: 
	movl	$0, %eax
 jmp .UNIQUE7875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7875: 
	call	printf
 jmp .UNIQUE7876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7876: 
	movl	$.LC129, %edi
 jmp .UNIQUE7877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7877: 
	call	puts
 jmp .UNIQUE7878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7878: 
	movl	$2048, %esi
 jmp .UNIQUE7879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7879: 
	movl	$.LC130, %edi
 jmp .UNIQUE7880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7880: 
	movl	$0, %eax
 jmp .UNIQUE7881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7881: 
	call	printf
 jmp .UNIQUE7882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7882: 
	movl	$.LC131, %edi
 jmp .UNIQUE7883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7883: 
	call	puts
 jmp .UNIQUE7884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7884: 
	movl	$0, %eax
 jmp .UNIQUE7885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7885: 
	call	init_stack_mem
 jmp .UNIQUE7886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7886: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE7887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7887: 
	movq	%rax, %rsi
 jmp .UNIQUE7888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7888: 
	movl	$.LC128, %edi
 jmp .UNIQUE7889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7889: 
	movl	$0, %eax
 jmp .UNIQUE7890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7890: 
	call	printf
 jmp .UNIQUE7891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7891: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7892: 
	ret
	.cfi_endproc
.LFE128:
	.size	init_heap_and_stack_mem, .-init_heap_and_stack_mem
	.section	.rodata
.LC132:
	.string	"Installing signal handler"
	.align 8
.LC133:
	.string	"Could not install signal handler"
.LC134:
	.string	"Signal handler installed"
	.text
	.globl	install_signal_handler
	.type	install_signal_handler, @function
install_signal_handler:
.LFB129:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE7893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7893: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7894: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7895: 
	movl	$.LC132, %edi
 jmp .UNIQUE7896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7896: 
	call	puts
 jmp .UNIQUE7897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7897: 
	movq	$verification_procedure, sa(%rip)
 jmp .UNIQUE7898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7898: 
	movl	$sa+8, %edi
 jmp .UNIQUE7899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7899: 
	call	sigemptyset
 jmp .UNIQUE7900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7900: 
	movl	$268435456, sa+136(%rip)
 jmp .UNIQUE7901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7901: 
	movl	$0, %edx
 jmp .UNIQUE7902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7902: 
	movl	$sa, %esi
 jmp .UNIQUE7903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7903: 
	movl	$10, %edi
 jmp .UNIQUE7904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7904: 
	call	sigaction
 jmp .UNIQUE7905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7905: 
	cmpl	$-1, %eax
 jmp .UNIQUE7906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7906: 
	jne	.L656
 jmp .UNIQUE7907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7907: 
	movl	$.LC133, %edi
 jmp .UNIQUE7908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7908: 
	call	perror
 jmp .UNIQUE7909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7909: 
	movl	$45, %edi
 jmp .UNIQUE7910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7910: 
	call	exit
.L656:
 jmp .UNIQUE7911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7911: 
	movl	$.LC134, %edi
 jmp .UNIQUE7912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7912: 
	call	puts
 jmp .UNIQUE7913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7913: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7914: 
	ret
	.cfi_endproc
.LFE129:
	.size	install_signal_handler, .-install_signal_handler
	.globl	free_heap_and_stack_memory
	.type	free_heap_and_stack_memory, @function
free_heap_and_stack_memory:
.LFB130:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE7915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7915: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7916: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7917: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE7918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7918: 
	movq	%rax, %rdi
 jmp .UNIQUE7919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7919: 
	call	free_secure_mem
 jmp .UNIQUE7920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7920: 
	movq	entire_stack_memory_chunk(%rip), %rax
 jmp .UNIQUE7921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7921: 
	movq	%rax, %rdi
 jmp .UNIQUE7922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7922: 
	call	free_secure_stack_mem
 jmp .UNIQUE7923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7923: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7924: 
	ret
	.cfi_endproc
.LFE130:
	.size	free_heap_and_stack_memory, .-free_heap_and_stack_memory
	.local	static_global_variable_for_testing
	.comm	static_global_variable_for_testing,4,4
	.globl	foo
	.type	foo, @function
foo:
.LFB131:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE7925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7925: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7926: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7927: 
	movl	%edi, -20(%rbp)
 jmp .UNIQUE7928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7928: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE7929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7929: 
	addl	$2, %eax
 jmp .UNIQUE7930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7930: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE7931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7931: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE7932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7932: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7933: 
	ret
	.cfi_endproc
.LFE131:
	.size	foo, .-foo
	.section	.rodata
.LC135:
	.string	"My pid=%ld\n"
.LC136:
	.string	"K=%d\n"
.LC137:
	.string	"n=%d\n"
.LC138:
	.string	"main is at %p\n"
.LC139:
	.string	"Going to find keyshares."
	.text
	.globl	main
	.type	main, @function
main:
.LFB132:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE7934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7934: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7935: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7936: 
	subq	$48, %rsp
 jmp .UNIQUE7937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7937: 
	movq	%fs:40, %rax
 jmp .UNIQUE7938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7938: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE7939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7939: 
	xorl	%eax, %eax
 jmp .UNIQUE7940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7940: 
	movl	$1, -48(%rbp)
 jmp .UNIQUE7941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7941: 
	movl	$2, -44(%rbp)
 jmp .UNIQUE7942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7942: 
	addl	$1, -44(%rbp)
 jmp .UNIQUE7943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7943: 
	addl	$1, -44(%rbp)
 jmp .UNIQUE7944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7944: 
	subl	$1, -44(%rbp)
 jmp .UNIQUE7945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7945: 
	movl	-44(%rbp), %eax
 jmp .UNIQUE7946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7946: 
	addl	%eax, -48(%rbp)
 jmp .UNIQUE7947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7947: 
	addl	$2, -48(%rbp)
 jmp .UNIQUE7948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7948: 
	addl	$1, -44(%rbp)
 jmp .UNIQUE7949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7949: 
	movl	$1, static_main_variable_for_testing.5103(%rip)
 jmp .UNIQUE7950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7950: 
	movl	$2, static_global_variable_for_testing(%rip)
 jmp .UNIQUE7951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7951: 
	movl	$0, %eax
 jmp .UNIQUE7952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7952: 
	call	init_heap_and_stack_mem
 jmp .UNIQUE7953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7953: 
	movl	$0, %eax
 jmp .UNIQUE7954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7954: 
	call	install_signal_handler
 jmp .UNIQUE7955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7955: 
	call	getpid
 jmp .UNIQUE7956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7956: 
	movl	%eax, -40(%rbp)
 jmp .UNIQUE7957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7957: 
	movl	-40(%rbp), %eax
 jmp .UNIQUE7958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7958: 
	cltq
 jmp .UNIQUE7959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7959: 
	movq	%rax, %rsi
 jmp .UNIQUE7960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7960: 
	movl	$.LC135, %edi
 jmp .UNIQUE7961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7961: 
	movl	$0, %eax
 jmp .UNIQUE7962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7962: 
	call	printf
 jmp .UNIQUE7963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7963: 
	movl	-48(%rbp), %eax
 jmp .UNIQUE7964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7964: 
	movl	%eax, %esi
 jmp .UNIQUE7965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7965: 
	movl	$.LC136, %edi
 jmp .UNIQUE7966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7966: 
	movl	$0, %eax
 jmp .UNIQUE7967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7967: 
	call	printf
 jmp .UNIQUE7968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7968: 
	movl	$5, %edi
 jmp .UNIQUE7969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7969: 
	call	foo
 jmp .UNIQUE7970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7970: 
	movl	%eax, -36(%rbp)
 jmp .UNIQUE7971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7971: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE7972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7972: 
	movl	%eax, %edi
 jmp .UNIQUE7973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7973: 
	call	foo2
 jmp .UNIQUE7974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7974: 
	movl	%eax, -36(%rbp)
 jmp .UNIQUE7975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7975: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE7976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7976: 
	movl	%eax, %esi
 jmp .UNIQUE7977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7977: 
	movl	$.LC137, %edi
 jmp .UNIQUE7978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7978: 
	movl	$0, %eax
 jmp .UNIQUE7979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7979: 
	call	printf
 jmp .UNIQUE7980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7980: 
	movl	$main, %esi
 jmp .UNIQUE7981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7981: 
	movl	$.LC138, %edi
 jmp .UNIQUE7982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7982: 
	movl	$0, %eax
 jmp .UNIQUE7983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7983: 
	call	printf
 jmp .UNIQUE7984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7984: 
	movl	$100, %edi
 jmp .UNIQUE7985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7985: 
	call	find_primes_up_to_a_number
 jmp .UNIQUE7986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7986: 
	movl	$10, %edi
 jmp .UNIQUE7987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7987: 
	call	putchar
 jmp .UNIQUE7988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7988: 
	movl	$.LC139, %edi
 jmp .UNIQUE7989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7989: 
	call	puts
 jmp .UNIQUE7990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7990: 
	movl	$0, %eax
 jmp .UNIQUE7991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7991: 
	call	find_keyshares
 jmp .UNIQUE7992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7992: 
	movl	$0, %eax
 jmp .UNIQUE7993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7993: 
	call	free_heap_and_stack_memory
 jmp .UNIQUE7994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7994: 
	movl	$0, %eax
 jmp .UNIQUE7995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7995: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE7996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7996: 
	xorq	%fs:40, %rdx
 jmp .UNIQUE7997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7997: 
	je	.L662
 jmp .UNIQUE7998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7998: 
	call	__stack_chk_fail
.L662:
 jmp .UNIQUE7999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7999: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE8000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8000: 
	ret
	.cfi_endproc
.LFE132:
	.size	main, .-main
	.globl	foo2
	.type	foo2, @function
foo2:
.LFB133:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE8001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8001: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE8002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8002: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE8003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8003: 
	movl	%edi, -20(%rbp)
 jmp .UNIQUE8004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8004: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE8005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8005: 
	addl	$3, %eax
 jmp .UNIQUE8006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8006: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE8007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8007: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE8008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8008: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE8009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8009: 
	ret
	.cfi_endproc
.LFE133:
	.size	foo2, .-foo2
	.section	.rodata
	.type	__func__.3962, @object
	.size	__func__.3962, 11
__func__.3962:
	.string	"alloc_list"
	.align 16
	.type	__func__.3971, @object
	.size	__func__.3971, 17
__func__.3971:
	.string	"add_node_to_list"
	.type	__func__.4015, @object
	.size	__func__.4015, 13
__func__.4015:
	.string	"allocate_mem"
	.align 16
	.type	__func__.4294, @object
	.size	__func__.4294, 16
__func__.4294:
	.string	"check_and_merge"
	.align 16
	.type	__func__.4310, @object
	.size	__func__.4310, 20
__func__.4310:
	.string	"managed_secure_free"
	.type	__func__.4361, @object
	.size	__func__.4361, 9
__func__.4361:
	.string	"mem_test"
	.align 32
	.type	__func__.4429, @object
	.size	__func__.4429, 32
__func__.4429:
	.string	"adding_heap_arrays_time_measure"
	.align 16
	.type	__func__.4486, @object
	.size	__func__.4486, 19
__func__.4486:
	.string	"allocate_stack_mem"
	.align 16
	.type	__func__.4610, @object
	.size	__func__.4610, 21
__func__.4610:
	.string	"init_function_params"
	.align 32
	.type	__func__.4648, @object
	.size	__func__.4648, 49
__func__.4648:
	.string	"init_function_params_with_uninitialised_elements"
	.align 32
	.type	__func__.4691, @object
	.size	__func__.4691, 33
__func__.4691:
	.string	"put_fun_params_into_secure_stack"
	.align 32
	.type	__func__.4948, @object
	.size	__func__.4948, 36
__func__.4948:
	.string	"tower_of_Hanoi_init_secure_template"
	.align 16
	.type	__func__.4954, @object
	.size	__func__.4954, 22
__func__.4954:
	.string	"stack_fun_params_test"
	.align 16
	.type	__func__.5074, @object
	.size	__func__.5074, 27
__func__.5074:
	.string	"find_primes_up_to_a_number"
	.local	static_main_variable_for_testing.5103
	.comm	static_main_variable_for_testing.5103,4,4
	.align 8
.LC66:
	.long	0
	.long	1071644672
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
