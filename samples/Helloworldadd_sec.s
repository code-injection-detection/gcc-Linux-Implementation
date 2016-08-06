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
	movl	$__func__.5001, %esi
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
	movl	$__func__.5010, %esi
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
	movq	$30000, -56(%rbp)
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
	movl	$__func__.5054, %esi
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
	subq	$80, %rsp
 jmp .UNIQUE562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE562: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE563: 
	movq	%rsi, -64(%rbp)
 jmp .UNIQUE564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE564: 
	movq	%rdx, -72(%rbp)
 jmp .UNIQUE565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE565: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE566: 
	movq	$0, -24(%rbp)
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
	movq	%rax, -16(%rbp)
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
.L63:
 jmp .UNIQUE571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE571: 
	addq	$1, -32(%rbp)
 jmp .UNIQUE572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE572: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE573: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE574: 
	subq	%rax, %rdx
 jmp .UNIQUE575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE575: 
	movq	%rdx, %rax
 jmp .UNIQUE576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE576: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE577: 
	cmpq	$4, -8(%rbp)
 jmp .UNIQUE578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE578: 
	jg	.L61
 jmp .UNIQUE579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE579: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE580: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE581: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE582: 
	leaq	(%rcx,%rdx), %rsi
 jmp .UNIQUE583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE583: 
	movq	-40(%rbp), %rcx
 jmp .UNIQUE584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE584: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE585: 
	addq	%rdx, %rcx
 jmp .UNIQUE586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE586: 
	movq	%rax, %rdx
 jmp .UNIQUE587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE587: 
	movq	%rcx, %rdi
 jmp .UNIQUE588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE588: 
	call	memcpy
 jmp .UNIQUE589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE589: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE590: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE591: 
	jmp	.L62
.L61:
 jmp .UNIQUE592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE592: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE593: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE594: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE595: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE596: 
	movq	-16(%rbp), %rax
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
	movl	$4, %edx
 jmp .UNIQUE599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE599: 
	movq	%rcx, %rsi
 jmp .UNIQUE600
NOP
NOP
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
NOP
NOP
.UNIQUE601: 
	call	memcpy
 jmp .UNIQUE602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE602: 
	addq	$4, -24(%rbp)
.L62:
 jmp .UNIQUE603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE603: 
	addq	$9, -40(%rbp)
.L60:
 jmp .UNIQUE604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE604: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE605: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE606: 
	jl	.L63
 jmp .UNIQUE607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE607: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE608: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE609: 
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
 jmp .UNIQUE610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE610: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE611: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE612: 
	addq	$-128, %rsp
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
	movq	$0, -56(%rbp)
 jmp .UNIQUE619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE619: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE620: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE621
NOP
NOP
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
NOP
NOP
.UNIQUE622: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE623: 
	cmpl	$2, -108(%rbp)
 jmp .UNIQUE624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE624: 
	jne	.L66
 jmp .UNIQUE625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE625: 
	movq	$1, -48(%rbp)
 jmp .UNIQUE626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE626: 
	jmp	.L67
.L66:
 jmp .UNIQUE627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE627: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE628: 
	movq	%rax, -48(%rbp)
.L67:
 jmp .UNIQUE629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE629: 
	movq	$0, -72(%rbp)
 jmp .UNIQUE630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE630: 
	cmpl	$0, -108(%rbp)
 jmp .UNIQUE631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE631: 
	je	.L68
 jmp .UNIQUE632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE632: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE633: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE634: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE635: 
	testq	%rax, %rax
 jmp .UNIQUE636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE636: 
	cmovs	%rdx, %rax
 jmp .UNIQUE637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE637: 
	sarq	$2, %rax
 jmp .UNIQUE638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE638: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE639: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE640: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE641: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE642: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE643: 
	cmpq	%rax, %rdx
 jmp .UNIQUE644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE644: 
	jne	.L69
 jmp .UNIQUE645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE645: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE646: 
	movq	%rdx, %rax
 jmp .UNIQUE647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE647: 
	salq	$3, %rax
 jmp .UNIQUE648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE648: 
	addq	%rdx, %rax
 jmp .UNIQUE649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE649: 
	addq	%rax, -64(%rbp)
 jmp .UNIQUE650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE650: 
	jmp	.L68
.L69:
 jmp .UNIQUE651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE651: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE652: 
	movq	%rdx, %rax
 jmp .UNIQUE653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE653: 
	salq	$3, %rax
 jmp .UNIQUE654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE654: 
	addq	%rdx, %rax
 jmp .UNIQUE655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE655: 
	addq	%rax, -64(%rbp)
 jmp .UNIQUE656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE656: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE657: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE658: 
	movq	%rax, %rdx
 jmp .UNIQUE659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE659: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE660: 
	movl	$0, %eax
 jmp .UNIQUE661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE661: 
	subq	%rcx, %rax
 jmp .UNIQUE662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE662: 
	salq	$2, %rax
 jmp .UNIQUE663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE663: 
	addq	%rdx, %rax
 jmp .UNIQUE664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE664: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE665: 
	movl	$4, %eax
 jmp .UNIQUE666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE666: 
	subq	-16(%rbp), %rax
 jmp .UNIQUE667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE667: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE668: 
	jl	.L70
 jmp .UNIQUE669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE669: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE670: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE671: 
	jmp	.L71
.L70:
 jmp .UNIQUE672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE672: 
	movl	$4, %eax
 jmp .UNIQUE673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE673: 
	subq	-16(%rbp), %rax
 jmp .UNIQUE674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE674: 
	movq	%rax, -40(%rbp)
.L71:
 jmp .UNIQUE675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE675: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE676: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE677: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE678: 
	leaq	(%rcx,%rdx), %rsi
 jmp .UNIQUE679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE679: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE680: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE681: 
	addq	%rdx, %rcx
 jmp .UNIQUE682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE682: 
	movq	%rax, %rdx
 jmp .UNIQUE683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE683: 
	movq	%rcx, %rdi
 jmp .UNIQUE684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE684: 
	call	memcpy
 jmp .UNIQUE685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE685: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE686: 
	addq	%rax, -56(%rbp)
 jmp .UNIQUE687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE687: 
	addq	$9, -64(%rbp)
 jmp .UNIQUE688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE688: 
	jmp	.L72
.L68:
 jmp .UNIQUE689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE689: 
	jmp	.L72
.L75:
 jmp .UNIQUE690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE690: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE691: 
	movq	-96(%rbp), %rdx
 jmp .UNIQUE692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE692: 
	subq	%rax, %rdx
 jmp .UNIQUE693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE693: 
	movq	%rdx, %rax
 jmp .UNIQUE694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE694: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE695: 
	cmpq	$4, -8(%rbp)
 jmp .UNIQUE696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE696: 
	jg	.L73
 jmp .UNIQUE697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE697: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE698: 
	movq	-72(%rbp), %rcx
 jmp .UNIQUE699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE699: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE700: 
	leaq	(%rcx,%rdx), %rsi
 jmp .UNIQUE701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE701: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE702: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE703: 
	addq	%rdx, %rcx
 jmp .UNIQUE704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE704: 
	movq	%rax, %rdx
 jmp .UNIQUE705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE705: 
	movq	%rcx, %rdi
 jmp .UNIQUE706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE706: 
	call	memcpy
 jmp .UNIQUE707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE707: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE708: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE709: 
	jmp	.L74
.L73:
 jmp .UNIQUE710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE710: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE711: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE712: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE713: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE714: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE715: 
	addq	%rdx, %rax
 jmp .UNIQUE716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE716: 
	movl	$4, %edx
 jmp .UNIQUE717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE717: 
	movq	%rcx, %rsi
 jmp .UNIQUE718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE718: 
	movq	%rax, %rdi
 jmp .UNIQUE719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE719: 
	call	memcpy
 jmp .UNIQUE720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE720: 
	addq	$4, -56(%rbp)
.L74:
 jmp .UNIQUE721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE721: 
	addq	$9, -72(%rbp)
.L72:
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
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE724: 
	jl	.L75
 jmp .UNIQUE725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE725: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE726: 
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
 jmp .UNIQUE727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE727: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE728: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE729: 
	addq	$-128, %rsp
 jmp .UNIQUE730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE730: 
	movq	%rdi, -88(%rbp)
 jmp .UNIQUE731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE731: 
	movq	%rsi, -96(%rbp)
 jmp .UNIQUE732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE732: 
	movq	%rdx, -104(%rbp)
 jmp .UNIQUE733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE733: 
	movl	%ecx, -108(%rbp)
 jmp .UNIQUE734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE734: 
	movq	%r8, -120(%rbp)
 jmp .UNIQUE735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE735: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE736: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE737: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE738: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE739: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE740: 
	cmpl	$2, -108(%rbp)
 jmp .UNIQUE741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE741: 
	jne	.L77
 jmp .UNIQUE742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE742: 
	movq	$1, -48(%rbp)
 jmp .UNIQUE743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE743: 
	jmp	.L78
.L77:
 jmp .UNIQUE744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE744: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE745: 
	movq	%rax, -48(%rbp)
.L78:
 jmp .UNIQUE746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE746: 
	movq	$0, -72(%rbp)
 jmp .UNIQUE747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE747: 
	cmpl	$0, -108(%rbp)
 jmp .UNIQUE748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE748: 
	je	.L79
 jmp .UNIQUE749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE749: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE750: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE751: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE752: 
	testq	%rax, %rax
 jmp .UNIQUE753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE753: 
	cmovs	%rdx, %rax
 jmp .UNIQUE754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE754: 
	sarq	$2, %rax
 jmp .UNIQUE755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE755: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE756: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE757: 
	leaq	0(,%rax,4), %rdx
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
	imulq	-48(%rbp), %rax
 jmp .UNIQUE760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE760: 
	cmpq	%rax, %rdx
 jmp .UNIQUE761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE761: 
	jne	.L80
 jmp .UNIQUE762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE762: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE763: 
	movq	%rdx, %rax
 jmp .UNIQUE764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE764: 
	salq	$3, %rax
 jmp .UNIQUE765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE765: 
	addq	%rdx, %rax
 jmp .UNIQUE766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE766: 
	addq	%rax, -64(%rbp)
 jmp .UNIQUE767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE767: 
	jmp	.L79
.L80:
 jmp .UNIQUE768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE768: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE769: 
	movq	%rdx, %rax
 jmp .UNIQUE770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE770: 
	salq	$3, %rax
 jmp .UNIQUE771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE771: 
	addq	%rdx, %rax
 jmp .UNIQUE772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE772: 
	addq	%rax, -64(%rbp)
 jmp .UNIQUE773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE773: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE774: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE775: 
	movq	%rax, %rdx
 jmp .UNIQUE776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE776: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE777: 
	movl	$0, %eax
 jmp .UNIQUE778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE778: 
	subq	%rcx, %rax
 jmp .UNIQUE779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE779: 
	salq	$2, %rax
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
	movq	%rax, -16(%rbp)
 jmp .UNIQUE782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE782: 
	movl	$4, %eax
 jmp .UNIQUE783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE783: 
	subq	-16(%rbp), %rax
 jmp .UNIQUE784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE784: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE785: 
	jl	.L81
 jmp .UNIQUE786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE786: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE787: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE788: 
	jmp	.L82
.L81:
 jmp .UNIQUE789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE789: 
	movl	$4, %eax
 jmp .UNIQUE790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE790: 
	subq	-16(%rbp), %rax
 jmp .UNIQUE791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE791: 
	movq	%rax, -40(%rbp)
.L82:
 jmp .UNIQUE792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE792: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE793: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE794: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE795: 
	leaq	(%rcx,%rdx), %rsi
 jmp .UNIQUE796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE796: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE797: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE798: 
	addq	%rdx, %rcx
 jmp .UNIQUE799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE799: 
	movq	%rax, %rdx
 jmp .UNIQUE800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE800: 
	movq	%rcx, %rdi
 jmp .UNIQUE801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE801: 
	call	memcpy
 jmp .UNIQUE802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE802: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE803: 
	addq	%rax, -56(%rbp)
 jmp .UNIQUE804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE804: 
	addq	$9, -64(%rbp)
 jmp .UNIQUE805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE805: 
	jmp	.L83
.L79:
 jmp .UNIQUE806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE806: 
	jmp	.L83
.L86:
 jmp .UNIQUE807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE807: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE808: 
	movq	-96(%rbp), %rdx
 jmp .UNIQUE809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE809: 
	subq	%rax, %rdx
 jmp .UNIQUE810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE810: 
	movq	%rdx, %rax
 jmp .UNIQUE811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE811: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE812: 
	cmpq	$4, -8(%rbp)
 jmp .UNIQUE813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE813: 
	jg	.L84
 jmp .UNIQUE814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE814: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE815: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE816: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE817: 
	leaq	(%rcx,%rdx), %rsi
 jmp .UNIQUE818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE818: 
	movq	-72(%rbp), %rcx
 jmp .UNIQUE819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE819: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE820: 
	addq	%rdx, %rcx
 jmp .UNIQUE821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE821: 
	movq	%rax, %rdx
 jmp .UNIQUE822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE822: 
	movq	%rcx, %rdi
 jmp .UNIQUE823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE823: 
	call	memcpy
 jmp .UNIQUE824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE824: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE825: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE826: 
	jmp	.L85
.L84:
 jmp .UNIQUE827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE827: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE828: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE829: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE830: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE831: 
	movq	-64(%rbp), %rax
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
	movl	$4, %edx
 jmp .UNIQUE834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE834: 
	movq	%rcx, %rsi
 jmp .UNIQUE835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE835: 
	movq	%rax, %rdi
 jmp .UNIQUE836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE836: 
	call	memcpy
 jmp .UNIQUE837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE837: 
	addq	$4, -56(%rbp)
.L85:
 jmp .UNIQUE838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE838: 
	addq	$9, -72(%rbp)
.L83:
 jmp .UNIQUE839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE839: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE840: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE841: 
	jl	.L86
 jmp .UNIQUE842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE842: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE843: 
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
 jmp .UNIQUE844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE844: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE845: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE846: 
	subq	$16, %rsp
 jmp .UNIQUE847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE847: 
	movl	$0, %edi
 jmp .UNIQUE848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE848: 
	call	time
 jmp .UNIQUE849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE849: 
	movl	%eax, %edi
 jmp .UNIQUE850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE850: 
	call	srand
 jmp .UNIQUE851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE851: 
	movl	$0, %eax
 jmp .UNIQUE852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE852: 
	call	allocate_mem
 jmp .UNIQUE853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE853: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE854: 
	movl	$.LC11, %esi
 jmp .UNIQUE855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE855: 
	movl	$.LC12, %edi
 jmp .UNIQUE856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE856: 
	call	fopen
 jmp .UNIQUE857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE857: 
	movq	%rax, keyshare_input_file(%rip)
 jmp .UNIQUE858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE858: 
	movq	keyshare_input_file(%rip), %rax
 jmp .UNIQUE859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE859: 
	testq	%rax, %rax
 jmp .UNIQUE860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE860: 
	jne	.L88
 jmp .UNIQUE861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE861: 
	movl	$.LC13, %edi
 jmp .UNIQUE862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE862: 
	call	perror
 jmp .UNIQUE863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE863: 
	movl	$43, %edi
 jmp .UNIQUE864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE864: 
	call	exit
.L88:
 jmp .UNIQUE865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE865: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE866: 
	movq	%rax, %rdi
 jmp .UNIQUE867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE867: 
	call	insert_keys_into_mem
 jmp .UNIQUE868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE868: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE869: 
	movq	%rax, entire_memory_chunk(%rip)
 jmp .UNIQUE870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE870: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE871: 
	movq	%rax, last_unused_memory(%rip)
 jmp .UNIQUE872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE872: 
	movq	keyshare_input_file(%rip), %rax
 jmp .UNIQUE873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE873: 
	movq	%rax, %rdi
 jmp .UNIQUE874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE874: 
	call	fclose
 jmp .UNIQUE875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE875: 
	movl	$0, %eax
 jmp .UNIQUE876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE876: 
	call	init_memory_manager
 jmp .UNIQUE877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE877: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE878: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE879: 
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
 jmp .UNIQUE880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE880: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE881: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE882: 
	subq	$16, %rsp
 jmp .UNIQUE883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE883: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE884: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE885: 
	movq	%rax, %rdi
 jmp .UNIQUE886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE886: 
	call	free
 jmp .UNIQUE887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE887: 
	movl	$0, %eax
 jmp .UNIQUE888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE888: 
	call	free_memory_manager_structures
 jmp .UNIQUE889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE889: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE890: 
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
 jmp .UNIQUE891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE891: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE892: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE893: 
	subq	$32, %rsp
 jmp .UNIQUE894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE894: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE895: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE896: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE897: 
	movl	$0, %r8d
 jmp .UNIQUE898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE898: 
	movl	$0, %ecx
 jmp .UNIQUE899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE899: 
	movl	$1, %esi
 jmp .UNIQUE900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE900: 
	movq	%rax, %rdi
 jmp .UNIQUE901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE901: 
	call	get_secure_data
 jmp .UNIQUE902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE902: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE903: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE904: 
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
 jmp .UNIQUE905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE905: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE906: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE907: 
	subq	$32, %rsp
 jmp .UNIQUE908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE908: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE909: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE910: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE911: 
	movl	$0, %r8d
 jmp .UNIQUE912
NOP
NOP
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
NOP
NOP
.UNIQUE913: 
	movl	$4, %esi
 jmp .UNIQUE914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE914: 
	movq	%rax, %rdi
 jmp .UNIQUE915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE915: 
	call	get_secure_data
 jmp .UNIQUE916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE916: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE917: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE918: 
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
 jmp .UNIQUE919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE919: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE920: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE921: 
	subq	$32, %rsp
 jmp .UNIQUE922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE922: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE923: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE924: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE925: 
	movl	$0, %r8d
 jmp .UNIQUE926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE926: 
	movl	$0, %ecx
 jmp .UNIQUE927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE927: 
	movl	$8, %esi
 jmp .UNIQUE928
NOP
NOP
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
NOP
NOP
.UNIQUE929: 
	call	get_secure_data
 jmp .UNIQUE930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE930: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE931: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE932: 
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
 jmp .UNIQUE933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE933: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE934: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE935: 
	subq	$32, %rsp
 jmp .UNIQUE936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE936: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE937: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE938: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE939: 
	movl	$0, %r8d
 jmp .UNIQUE940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE940: 
	movl	$0, %ecx
 jmp .UNIQUE941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE941: 
	movl	$8, %esi
 jmp .UNIQUE942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE942: 
	movq	%rax, %rdi
 jmp .UNIQUE943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE943: 
	call	get_secure_data
 jmp .UNIQUE944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE944: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE945: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE946: 
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
 jmp .UNIQUE947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE947: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE948: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE949: 
	subq	$32, %rsp
 jmp .UNIQUE950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE950: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE951: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE952: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE953: 
	movl	$0, %r8d
 jmp .UNIQUE954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE954: 
	movl	$0, %ecx
 jmp .UNIQUE955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE955: 
	movl	$4, %esi
 jmp .UNIQUE956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE956: 
	movq	%rax, %rdi
 jmp .UNIQUE957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE957: 
	call	get_secure_data
 jmp .UNIQUE958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE958: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE959: 
	movl	%eax, -28(%rbp)
 jmp .UNIQUE960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE960: 
	movss	-28(%rbp), %xmm0
 jmp .UNIQUE961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE961: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE962: 
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
 jmp .UNIQUE963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE963: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE964: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE965: 
	subq	$32, %rsp
 jmp .UNIQUE966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE966: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE967: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE968: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE969: 
	movl	$0, %r8d
 jmp .UNIQUE970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE970: 
	movl	$0, %ecx
 jmp .UNIQUE971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE971: 
	movl	$8, %esi
 jmp .UNIQUE972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE972: 
	movq	%rax, %rdi
 jmp .UNIQUE973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE973: 
	call	get_secure_data
 jmp .UNIQUE974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE974: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE975: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE976: 
	movsd	-32(%rbp), %xmm0
 jmp .UNIQUE977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE977: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE978: 
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
 jmp .UNIQUE979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE979: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE980: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE981: 
	subq	$32, %rsp
 jmp .UNIQUE982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE982: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE983: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE984: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE985: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE986: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE987: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE988: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE989: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE990: 
	movq	%rcx, %r8
 jmp .UNIQUE991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE991: 
	movl	$1, %ecx
 jmp .UNIQUE992
NOP
NOP
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
NOP
NOP
.UNIQUE993: 
	call	get_secure_data
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
.LFE30:
	.size	get_array_element, .-get_array_element
	.globl	get_char_array_element
	.type	get_char_array_element, @function
get_char_array_element:
.LFB31:
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
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1000: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1001: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1002: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1003: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE1004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1004: 
	movq	%rcx, %r8
 jmp .UNIQUE1005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1005: 
	movl	$1, %ecx
 jmp .UNIQUE1006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1006: 
	movl	$1, %esi
 jmp .UNIQUE1007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1007: 
	movq	%rax, %rdi
 jmp .UNIQUE1008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1008: 
	call	get_secure_data
 jmp .UNIQUE1009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1009: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE1010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1010: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1011: 
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
 jmp .UNIQUE1012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1012: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1013: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1014: 
	subq	$32, %rsp
 jmp .UNIQUE1015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1015: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1016: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1017: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1018: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1019: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1020: 
	movq	%rcx, %r8
 jmp .UNIQUE1021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1021: 
	movl	$1, %ecx
 jmp .UNIQUE1022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1022: 
	movl	$4, %esi
 jmp .UNIQUE1023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1023: 
	movq	%rax, %rdi
 jmp .UNIQUE1024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1024: 
	call	get_secure_data
 jmp .UNIQUE1025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1025: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE1026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1026: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1027: 
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
 jmp .UNIQUE1028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1028: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1029: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1030: 
	subq	$32, %rsp
 jmp .UNIQUE1031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1031: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1032: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1033: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1034: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1035: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1036: 
	movq	%rcx, %r8
 jmp .UNIQUE1037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1037: 
	movl	$1, %ecx
 jmp .UNIQUE1038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1038: 
	movl	$8, %esi
 jmp .UNIQUE1039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1039: 
	movq	%rax, %rdi
 jmp .UNIQUE1040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1040: 
	call	get_secure_data
 jmp .UNIQUE1041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1041: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1042: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1043: 
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
 jmp .UNIQUE1044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1044: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1045: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1046: 
	subq	$32, %rsp
 jmp .UNIQUE1047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1047: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1048: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1049: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1050: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1051: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1052: 
	movq	%rcx, %r8
 jmp .UNIQUE1053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1053: 
	movl	$1, %ecx
 jmp .UNIQUE1054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1054: 
	movl	$8, %esi
 jmp .UNIQUE1055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1055: 
	movq	%rax, %rdi
 jmp .UNIQUE1056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1056: 
	call	get_secure_data
 jmp .UNIQUE1057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1057: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1058: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1059: 
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
 jmp .UNIQUE1060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1060: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1061: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1062: 
	subq	$48, %rsp
 jmp .UNIQUE1063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1063: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1064: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1065: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1066: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1067: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1068: 
	movq	%rcx, %r8
 jmp .UNIQUE1069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1069: 
	movl	$1, %ecx
 jmp .UNIQUE1070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1070: 
	movl	$4, %esi
 jmp .UNIQUE1071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1071: 
	movq	%rax, %rdi
 jmp .UNIQUE1072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1072: 
	call	get_secure_data
 jmp .UNIQUE1073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1073: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE1074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1074: 
	movl	%eax, -36(%rbp)
 jmp .UNIQUE1075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1075: 
	movss	-36(%rbp), %xmm0
 jmp .UNIQUE1076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1076: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1077: 
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
 jmp .UNIQUE1078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1078: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1079: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1080: 
	subq	$48, %rsp
 jmp .UNIQUE1081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1081: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1082: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1083: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1084: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1085: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1086: 
	movq	%rcx, %r8
 jmp .UNIQUE1087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1087: 
	movl	$1, %ecx
 jmp .UNIQUE1088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1088: 
	movl	$8, %esi
 jmp .UNIQUE1089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1089: 
	movq	%rax, %rdi
 jmp .UNIQUE1090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1090: 
	call	get_secure_data
 jmp .UNIQUE1091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1091: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1092: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE1093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1093: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE1094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1094: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1095: 
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
 jmp .UNIQUE1096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1096: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1097: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1098: 
	subq	$32, %rsp
 jmp .UNIQUE1099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1099: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1100: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1101: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE1102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1102: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1103: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE1104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1104: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1105: 
	movl	$0, %r8d
 jmp .UNIQUE1106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1106: 
	movl	$0, %ecx
 jmp .UNIQUE1107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1107: 
	movq	%rax, %rdi
 jmp .UNIQUE1108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1108: 
	call	get_secure_data
 jmp .UNIQUE1109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1109: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1110: 
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
 jmp .UNIQUE1111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1111: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1112: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1113: 
	subq	$32, %rsp
 jmp .UNIQUE1114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1114: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1115: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1116: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE1117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1117: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE1118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1118: 
	movq	-24(%rbp), %rcx
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
	movq	-32(%rbp), %rax
 jmp .UNIQUE1122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1122: 
	movq	%rcx, %r8
 jmp .UNIQUE1123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1123: 
	movl	$2, %ecx
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
.LFE38:
	.size	get_arbitrary_block_in_heap_with_offset, .-get_arbitrary_block_in_heap_with_offset
	.globl	set_char
	.type	set_char, @function
set_char:
.LFB39:
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
	subq	$16, %rsp
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
	movl	%esi, %eax
 jmp .UNIQUE1133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1133: 
	movb	%al, -12(%rbp)
 jmp .UNIQUE1134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1134: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1135: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE1136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1136: 
	movq	%rax, %rsi
 jmp .UNIQUE1137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1137: 
	movl	$1, %edi
 jmp .UNIQUE1138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1138: 
	call	insert_data_into_mem
 jmp .UNIQUE1139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1139: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1140: 
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
 jmp .UNIQUE1141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1141: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1142: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1143: 
	subq	$16, %rsp
 jmp .UNIQUE1144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1144: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1145: 
	movl	%esi, -12(%rbp)
 jmp .UNIQUE1146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1146: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1147: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE1148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1148: 
	movq	%rax, %rsi
 jmp .UNIQUE1149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1149: 
	movl	$4, %edi
 jmp .UNIQUE1150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1150: 
	call	insert_data_into_mem
 jmp .UNIQUE1151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1151: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1152: 
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
 jmp .UNIQUE1153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1153: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1154: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1155: 
	subq	$16, %rsp
 jmp .UNIQUE1156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1156: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1157: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1158: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1159: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1160: 
	movq	%rax, %rsi
 jmp .UNIQUE1161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1161: 
	movl	$8, %edi
 jmp .UNIQUE1162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1162: 
	call	insert_data_into_mem
 jmp .UNIQUE1163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1163: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1164: 
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
 jmp .UNIQUE1165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1165: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1166: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1167: 
	subq	$16, %rsp
 jmp .UNIQUE1168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1168: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1169: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1170: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1171: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1172: 
	movq	%rax, %rsi
 jmp .UNIQUE1173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1173: 
	movl	$8, %edi
 jmp .UNIQUE1174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1174: 
	call	insert_data_into_mem
 jmp .UNIQUE1175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1175: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1176: 
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
 jmp .UNIQUE1177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1177: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1178: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1179: 
	subq	$16, %rsp
 jmp .UNIQUE1180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1180: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1181: 
	movss	%xmm0, -12(%rbp)
 jmp .UNIQUE1182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1182: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1183: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE1184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1184: 
	movq	%rax, %rsi
 jmp .UNIQUE1185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1185: 
	movl	$4, %edi
 jmp .UNIQUE1186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1186: 
	call	insert_data_into_mem
 jmp .UNIQUE1187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1187: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1188: 
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
 jmp .UNIQUE1189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1189: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1190: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1191: 
	subq	$16, %rsp
 jmp .UNIQUE1192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1192: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1193: 
	movsd	%xmm0, -16(%rbp)
 jmp .UNIQUE1194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1194: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1195: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1196: 
	movq	%rax, %rsi
 jmp .UNIQUE1197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1197: 
	movl	$8, %edi
 jmp .UNIQUE1198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1198: 
	call	insert_data_into_mem
 jmp .UNIQUE1199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1199: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1200: 
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
 jmp .UNIQUE1201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1201: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1202: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1203: 
	subq	$32, %rsp
 jmp .UNIQUE1204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1204: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1205: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1206: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE1207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1207: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE1208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1208: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE1209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1209: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1210: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE1211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1211: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1212: 
	movq	%rcx, %r8
 jmp .UNIQUE1213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1213: 
	movl	$1, %ecx
 jmp .UNIQUE1214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1214: 
	movq	%rax, %rdi
 jmp .UNIQUE1215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1215: 
	call	set_secure_data
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
.LFE45:
	.size	set_array_element, .-set_array_element
	.globl	set_char_array_element
	.type	set_char_array_element, @function
set_char_array_element:
.LFB46:
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
	subq	$48, %rsp
 jmp .UNIQUE1221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1221: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1222: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1223: 
	movl	%edx, %eax
 jmp .UNIQUE1224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1224: 
	movb	%al, -36(%rbp)
 jmp .UNIQUE1225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1225: 
	movzbl	-36(%rbp), %eax
 jmp .UNIQUE1226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1226: 
	movb	%al, -1(%rbp)
 jmp .UNIQUE1227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1227: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1228: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1229: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE1230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1230: 
	movq	%rcx, %r8
 jmp .UNIQUE1231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1231: 
	movl	$1, %ecx
 jmp .UNIQUE1232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1232: 
	movl	$1, %esi
 jmp .UNIQUE1233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1233: 
	movq	%rax, %rdi
 jmp .UNIQUE1234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1234: 
	call	set_secure_data
 jmp .UNIQUE1235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1235: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1236: 
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
 jmp .UNIQUE1237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1237: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1238: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1239: 
	subq	$48, %rsp
 jmp .UNIQUE1240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1240: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1241: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1242: 
	movl	%edx, -36(%rbp)
 jmp .UNIQUE1243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1243: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE1244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1244: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE1245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1245: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1246: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1247: 
	leaq	-4(%rbp), %rax
 jmp .UNIQUE1248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1248: 
	movq	%rcx, %r8
 jmp .UNIQUE1249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1249: 
	movl	$1, %ecx
 jmp .UNIQUE1250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1250: 
	movl	$4, %esi
 jmp .UNIQUE1251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1251: 
	movq	%rax, %rdi
 jmp .UNIQUE1252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1252: 
	call	set_secure_data
 jmp .UNIQUE1253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1253: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1254: 
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
 jmp .UNIQUE1255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1255: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1256: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1257: 
	subq	$48, %rsp
 jmp .UNIQUE1258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1258: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1259: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1260: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE1261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1261: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1262: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1263: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1264: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1265: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE1266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1266: 
	movq	%rcx, %r8
 jmp .UNIQUE1267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1267: 
	movl	$1, %ecx
 jmp .UNIQUE1268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1268: 
	movl	$8, %esi
 jmp .UNIQUE1269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1269: 
	movq	%rax, %rdi
 jmp .UNIQUE1270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1270: 
	call	set_secure_data
 jmp .UNIQUE1271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1271: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1272: 
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
 jmp .UNIQUE1273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1273: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1274: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1275: 
	subq	$48, %rsp
 jmp .UNIQUE1276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1276: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1277: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1278: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE1279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1279: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1280: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1281: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1282: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1283: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE1284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1284: 
	movq	%rcx, %r8
 jmp .UNIQUE1285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1285: 
	movl	$1, %ecx
 jmp .UNIQUE1286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1286: 
	movl	$8, %esi
 jmp .UNIQUE1287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1287: 
	movq	%rax, %rdi
 jmp .UNIQUE1288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1288: 
	call	set_secure_data
 jmp .UNIQUE1289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1289: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1290: 
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
 jmp .UNIQUE1291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1291: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1292: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1293: 
	subq	$48, %rsp
 jmp .UNIQUE1294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1294: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1295: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1296: 
	movss	%xmm0, -36(%rbp)
 jmp .UNIQUE1297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1297: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE1298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1298: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE1299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1299: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1300: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1301: 
	leaq	-4(%rbp), %rax
 jmp .UNIQUE1302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1302: 
	movq	%rcx, %r8
 jmp .UNIQUE1303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1303: 
	movl	$1, %ecx
 jmp .UNIQUE1304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1304: 
	movl	$4, %esi
 jmp .UNIQUE1305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1305: 
	movq	%rax, %rdi
 jmp .UNIQUE1306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1306: 
	call	set_secure_data
 jmp .UNIQUE1307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1307: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1308: 
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
 jmp .UNIQUE1309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1309: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1310: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1311: 
	subq	$48, %rsp
 jmp .UNIQUE1312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1312: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1313: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1314: 
	movsd	%xmm0, -40(%rbp)
 jmp .UNIQUE1315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1315: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1316: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1317: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1318: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1319: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE1320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1320: 
	movq	%rcx, %r8
 jmp .UNIQUE1321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1321: 
	movl	$1, %ecx
 jmp .UNIQUE1322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1322: 
	movl	$8, %esi
 jmp .UNIQUE1323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1323: 
	movq	%rax, %rdi
 jmp .UNIQUE1324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1324: 
	call	set_secure_data
 jmp .UNIQUE1325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1325: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1326: 
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
 jmp .UNIQUE1327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1327: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1328: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1329: 
	subq	$32, %rsp
 jmp .UNIQUE1330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1330: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1331: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1332: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE1333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1333: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1334: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE1335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1335: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1336: 
	movl	$0, %r8d
 jmp .UNIQUE1337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1337: 
	movl	$0, %ecx
 jmp .UNIQUE1338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1338: 
	movq	%rax, %rdi
 jmp .UNIQUE1339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1339: 
	call	set_secure_data
 jmp .UNIQUE1340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1340: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1341: 
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
 jmp .UNIQUE1342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1342: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1343: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1344: 
	subq	$32, %rsp
 jmp .UNIQUE1345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1345: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1346: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1347: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE1348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1348: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE1349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1349: 
	movq	-24(%rbp), %rcx
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
	movq	-32(%rbp), %rax
 jmp .UNIQUE1353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1353: 
	movq	%rcx, %r8
 jmp .UNIQUE1354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1354: 
	movl	$2, %ecx
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
.LFE53:
	.size	set_arbitrary_block_in_heap_with_offset, .-set_arbitrary_block_in_heap_with_offset
	.globl	find_large_enough_free_group
	.type	find_large_enough_free_group, @function
find_large_enough_free_group:
.LFB54:
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
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1362: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1363: 
	testq	%rax, %rax
 jmp .UNIQUE1364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1364: 
	jne	.L134
 jmp .UNIQUE1365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1365: 
	movl	$0, %eax
 jmp .UNIQUE1366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1366: 
	jmp	.L135
.L134:
 jmp .UNIQUE1367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1367: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1368: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1369: 
	jmp	.L136
.L138:
 jmp .UNIQUE1370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1370: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1371: 
	movq	(%rax), %rax
 jmp .UNIQUE1372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1372: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE1373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1373: 
	jl	.L137
 jmp .UNIQUE1374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1374: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1375: 
	jmp	.L135
.L137:
 jmp .UNIQUE1376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1376: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1377: 
	movq	16(%rax), %rax
 jmp .UNIQUE1378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1378: 
	movq	%rax, -8(%rbp)
.L136:
 jmp .UNIQUE1379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1379: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1380: 
	jne	.L138
 jmp .UNIQUE1381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1381: 
	movl	$0, %eax
.L135:
 jmp .UNIQUE1382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1382: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1383: 
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
 jmp .UNIQUE1384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1384: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1385: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1386: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1387: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE1388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1388: 
	testq	%rax, %rax
 jmp .UNIQUE1389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1389: 
	jne	.L140
 jmp .UNIQUE1390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1390: 
	movl	$0, %eax
 jmp .UNIQUE1391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1391: 
	jmp	.L141
.L140:
 jmp .UNIQUE1392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1392: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE1393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1393: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1394: 
	jmp	.L142
.L144:
 jmp .UNIQUE1395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1395: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1396: 
	movq	8(%rax), %rax
 jmp .UNIQUE1397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1397: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE1398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1398: 
	jne	.L143
 jmp .UNIQUE1399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1399: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1400: 
	jmp	.L141
.L143:
 jmp .UNIQUE1401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1401: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1402: 
	movq	16(%rax), %rax
 jmp .UNIQUE1403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1403: 
	movq	%rax, -8(%rbp)
.L142:
 jmp .UNIQUE1404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1404: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1405: 
	jne	.L144
 jmp .UNIQUE1406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1406: 
	movl	$0, %eax
.L141:
 jmp .UNIQUE1407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1407: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1408: 
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
 jmp .UNIQUE1409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1409: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1410: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1411: 
	subq	$48, %rsp
 jmp .UNIQUE1412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1412: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1413: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1414: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE1415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1415: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1416: 
	movq	8(%rax), %rax
 jmp .UNIQUE1417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1417: 
	movq	%rax, %rcx
 jmp .UNIQUE1418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1418: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1419: 
	movq	(%rax), %rdx
 jmp .UNIQUE1420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1420: 
	movq	%rdx, %rax
 jmp .UNIQUE1421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1421: 
	salq	$3, %rax
 jmp .UNIQUE1422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1422: 
	addq	%rdx, %rax
 jmp .UNIQUE1423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1423: 
	leaq	(%rcx,%rax), %rdx
 jmp .UNIQUE1424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1424: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1425: 
	movq	8(%rax), %rax
 jmp .UNIQUE1426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1426: 
	cmpq	%rax, %rdx
 jmp .UNIQUE1427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1427: 
	jne	.L146
 jmp .UNIQUE1428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1428: 
	movl	$938, %edx
 jmp .UNIQUE1429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1429: 
	movl	$__func__.5320, %esi
 jmp .UNIQUE1430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1430: 
	movl	$32, %edi
 jmp .UNIQUE1431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1431: 
	call	error_checking_malloc
 jmp .UNIQUE1432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1432: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1433: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1434: 
	movq	(%rax), %rdx
 jmp .UNIQUE1435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1435: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1436: 
	movq	(%rax), %rax
 jmp .UNIQUE1437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1437: 
	addq	%rax, %rdx
 jmp .UNIQUE1438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1438: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1439: 
	movq	%rdx, (%rax)
 jmp .UNIQUE1440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1440: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1441: 
	movq	8(%rax), %rdx
 jmp .UNIQUE1442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1442: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1443: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE1444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1444: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1445: 
	movq	24(%rax), %rdx
 jmp .UNIQUE1446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1446: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1447: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE1448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1448: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1449: 
	movq	16(%rax), %rdx
 jmp .UNIQUE1450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1450: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1451: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE1452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1452: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1453: 
	movq	24(%rax), %rax
 jmp .UNIQUE1454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1454: 
	testq	%rax, %rax
 jmp .UNIQUE1455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1455: 
	je	.L147
 jmp .UNIQUE1456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1456: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1457: 
	movq	24(%rax), %rax
 jmp .UNIQUE1458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1458: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1459: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE1460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1460: 
	jmp	.L148
.L147:
 jmp .UNIQUE1461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1461: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1462: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1463: 
	movq	%rdx, (%rax)
.L148:
 jmp .UNIQUE1464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1464: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1465: 
	movq	16(%rax), %rax
 jmp .UNIQUE1466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1466: 
	testq	%rax, %rax
 jmp .UNIQUE1467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1467: 
	je	.L149
 jmp .UNIQUE1468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1468: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1469: 
	movq	16(%rax), %rax
 jmp .UNIQUE1470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1470: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1471: 
	movq	%rdx, 24(%rax)
.L149:
 jmp .UNIQUE1472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1472: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1473: 
	movq	%rax, %rdi
 jmp .UNIQUE1474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1474: 
	call	free
 jmp .UNIQUE1475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1475: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1476: 
	movq	%rax, %rdi
 jmp .UNIQUE1477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1477: 
	call	free
 jmp .UNIQUE1478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1478: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1479: 
	jmp	.L150
.L146:
 jmp .UNIQUE1480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1480: 
	movl	$0, %eax
.L150:
 jmp .UNIQUE1481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1481: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1482: 
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
 jmp .UNIQUE1483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1483: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1484: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1485: 
	subq	$96, %rsp
 jmp .UNIQUE1486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1486: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE1487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1487: 
	cmpq	$0, -56(%rbp)
 jmp .UNIQUE1488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1488: 
	jne	.L152
 jmp .UNIQUE1489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1489: 
	movl	$0, %eax
 jmp .UNIQUE1490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1490: 
	jmp	.L158
.L152:
 jmp .UNIQUE1491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1491: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1492: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE1493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1493: 
	testq	%rax, %rax
 jmp .UNIQUE1494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1494: 
	cmovs	%rdx, %rax
 jmp .UNIQUE1495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1495: 
	sarq	$2, %rax
 jmp .UNIQUE1496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1496: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE1497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1497: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE1498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1498: 
	salq	$2, %rax
 jmp .UNIQUE1499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1499: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE1500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1500: 
	jge	.L154
 jmp .UNIQUE1501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1501: 
	addq	$1, -48(%rbp)
.L154:
 jmp .UNIQUE1502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1502: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE1503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1503: 
	movq	%rax, %rdi
 jmp .UNIQUE1504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1504: 
	call	find_large_enough_free_group
 jmp .UNIQUE1505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1505: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE1506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1506: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE1507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1507: 
	jne	.L155
 jmp .UNIQUE1508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1508: 
	movl	$0, %eax
 jmp .UNIQUE1509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1509: 
	jmp	.L158
.L155:
 jmp .UNIQUE1510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1510: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE1511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1511: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE1512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1512: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1513: 
	movq	8(%rax), %rax
 jmp .UNIQUE1514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1514: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1515: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE1516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1516: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE1517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1517: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE1518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1518: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE1519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1519: 
	movq	%rdx, (%rsp)
 jmp .UNIQUE1520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1520: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1521: 
	movq	%rdx, 8(%rsp)
 jmp .UNIQUE1522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1522: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1523: 
	movq	%rdx, 16(%rsp)
 jmp .UNIQUE1524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1524: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1525: 
	movq	%rdx, 24(%rsp)
 jmp .UNIQUE1526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1526: 
	movq	%rax, %rdi
 jmp .UNIQUE1527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1527: 
	call	add_node_to_list
 jmp .UNIQUE1528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1528: 
	movq	%rax, allocated_chunks_list(%rip)
 jmp .UNIQUE1529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1529: 
	movq	allocated_chunks_num(%rip), %rax
 jmp .UNIQUE1530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1530: 
	addq	$1, %rax
 jmp .UNIQUE1531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1531: 
	movq	%rax, allocated_chunks_num(%rip)
 jmp .UNIQUE1532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1532: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1533: 
	movq	(%rax), %rax
 jmp .UNIQUE1534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1534: 
	cmpq	-48(%rbp), %rax
 jmp .UNIQUE1535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1535: 
	jne	.L156
 jmp .UNIQUE1536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1536: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1537: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE1538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1538: 
	movq	%rdx, %rsi
 jmp .UNIQUE1539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1539: 
	movq	%rax, %rdi
 jmp .UNIQUE1540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1540: 
	call	delete_node_from_list
 jmp .UNIQUE1541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1541: 
	movq	%rax, free_chunks_list(%rip)
 jmp .UNIQUE1542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1542: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1543: 
	subq	$1, %rax
 jmp .UNIQUE1544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1544: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1545: 
	jmp	.L157
.L156:
 jmp .UNIQUE1546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1546: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1547: 
	movq	(%rax), %rax
 jmp .UNIQUE1548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1548: 
	subq	-48(%rbp), %rax
 jmp .UNIQUE1549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1549: 
	movq	%rax, %rdx
 jmp .UNIQUE1550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1550: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1551: 
	movq	%rdx, (%rax)
 jmp .UNIQUE1552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1552: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1553: 
	movq	8(%rax), %rcx
 jmp .UNIQUE1554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1554: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE1555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1555: 
	movq	%rdx, %rax
 jmp .UNIQUE1556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1556: 
	salq	$3, %rax
 jmp .UNIQUE1557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1557: 
	addq	%rdx, %rax
 jmp .UNIQUE1558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1558: 
	leaq	(%rcx,%rax), %rdx
 jmp .UNIQUE1559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1559: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1560: 
	movq	%rdx, 8(%rax)
.L157:
 jmp .UNIQUE1561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1561: 
	movq	-24(%rbp), %rax
.L158:
 jmp .UNIQUE1562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1562: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1563: 
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
 jmp .UNIQUE1564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1564: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1565: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1566: 
	subq	$96, %rsp
 jmp .UNIQUE1567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1567: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE1568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1568: 
	movl	$0, -44(%rbp)
 jmp .UNIQUE1569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1569: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1570: 
	movq	%rax, %rdi
 jmp .UNIQUE1571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1571: 
	call	find_which_group_to_free
 jmp .UNIQUE1572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1572: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE1573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1573: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE1574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1574: 
	jne	.L160
 jmp .UNIQUE1575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1575: 
	movl	$0, %eax
 jmp .UNIQUE1576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1576: 
	jmp	.L161
.L160:
 jmp .UNIQUE1577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1577: 
	movl	$1032, %edx
 jmp .UNIQUE1578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1578: 
	movl	$__func__.5336, %esi
 jmp .UNIQUE1579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1579: 
	movl	$32, %edi
 jmp .UNIQUE1580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1580: 
	call	error_checking_malloc
 jmp .UNIQUE1581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1581: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE1582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1582: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE1583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1583: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1584: 
	movq	%rdx, %rsi
 jmp .UNIQUE1585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1585: 
	movq	%rax, %rdi
 jmp .UNIQUE1586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1586: 
	call	copy_nodes_ptr
 jmp .UNIQUE1587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1587: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE1588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1588: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE1589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1589: 
	movq	%rdx, %rsi
 jmp .UNIQUE1590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1590: 
	movq	%rax, %rdi
 jmp .UNIQUE1591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1591: 
	call	delete_node_from_list
 jmp .UNIQUE1592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1592: 
	movq	%rax, allocated_chunks_list(%rip)
 jmp .UNIQUE1593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1593: 
	movq	allocated_chunks_num(%rip), %rax
 jmp .UNIQUE1594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1594: 
	subq	$1, %rax
 jmp .UNIQUE1595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1595: 
	movq	%rax, allocated_chunks_num(%rip)
 jmp .UNIQUE1596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1596: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1597: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE1598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1598: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE1599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1599: 
	jne	.L162
 jmp .UNIQUE1600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1600: 
	movq	free_chunks_list(%rip), %rdx
 jmp .UNIQUE1601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1601: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1602: 
	movq	(%rax), %rcx
 jmp .UNIQUE1603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1603: 
	movq	%rcx, (%rsp)
 jmp .UNIQUE1604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1604: 
	movq	8(%rax), %rcx
 jmp .UNIQUE1605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1605: 
	movq	%rcx, 8(%rsp)
 jmp .UNIQUE1606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1606: 
	movq	16(%rax), %rcx
 jmp .UNIQUE1607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1607: 
	movq	%rcx, 16(%rsp)
 jmp .UNIQUE1608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1608: 
	movq	24(%rax), %rax
 jmp .UNIQUE1609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1609: 
	movq	%rax, 24(%rsp)
 jmp .UNIQUE1610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1610: 
	movq	%rdx, %rdi
 jmp .UNIQUE1611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1611: 
	call	add_node_to_list
 jmp .UNIQUE1612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1612: 
	movq	%rax, free_chunks_list(%rip)
 jmp .UNIQUE1613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1613: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1614: 
	addq	$1, %rax
 jmp .UNIQUE1615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1615: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1616: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1617: 
	movq	%rax, %rdi
 jmp .UNIQUE1618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1618: 
	call	free
 jmp .UNIQUE1619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1619: 
	movl	$1, -44(%rbp)
 jmp .UNIQUE1620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1620: 
	jmp	.L163
.L162:
 jmp .UNIQUE1621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1621: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE1622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1622: 
	jmp	.L164
.L167:
 jmp .UNIQUE1623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1623: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1624: 
	movq	8(%rax), %rax
 jmp .UNIQUE1625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1625: 
	movq	%rax, %rdx
 jmp .UNIQUE1626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1626: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1627: 
	movq	8(%rax), %rax
 jmp .UNIQUE1628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1628: 
	cmpq	%rax, %rdx
 jmp .UNIQUE1629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1629: 
	jle	.L165
 jmp .UNIQUE1630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1630: 
	jmp	.L166
.L165:
 jmp .UNIQUE1631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1631: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1632: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE1633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1633: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1634: 
	movq	16(%rax), %rax
 jmp .UNIQUE1635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1635: 
	movq	%rax, -40(%rbp)
.L164:
 jmp .UNIQUE1636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1636: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE1637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1637: 
	jne	.L167
.L166:
 jmp .UNIQUE1638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1638: 
	cmpq	$0, -32(%rbp)
 jmp .UNIQUE1639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1639: 
	jne	.L168
 jmp .UNIQUE1640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1640: 
	movq	free_chunks_list(%rip), %rdx
 jmp .UNIQUE1641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1641: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1642: 
	movq	(%rax), %rcx
 jmp .UNIQUE1643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1643: 
	movq	%rcx, (%rsp)
 jmp .UNIQUE1644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1644: 
	movq	8(%rax), %rcx
 jmp .UNIQUE1645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1645: 
	movq	%rcx, 8(%rsp)
 jmp .UNIQUE1646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1646: 
	movq	16(%rax), %rcx
 jmp .UNIQUE1647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1647: 
	movq	%rcx, 16(%rsp)
 jmp .UNIQUE1648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1648: 
	movq	24(%rax), %rax
 jmp .UNIQUE1649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1649: 
	movq	%rax, 24(%rsp)
 jmp .UNIQUE1650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1650: 
	movq	%rdx, %rdi
 jmp .UNIQUE1651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1651: 
	call	add_node_to_list
 jmp .UNIQUE1652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1652: 
	movq	%rax, free_chunks_list(%rip)
 jmp .UNIQUE1653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1653: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1654: 
	addq	$1, %rax
 jmp .UNIQUE1655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1655: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1656: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1657: 
	movq	%rax, %rdi
 jmp .UNIQUE1658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1658: 
	call	free
 jmp .UNIQUE1659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1659: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1660: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE1661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1661: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1662: 
	movq	16(%rax), %rax
 jmp .UNIQUE1663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1663: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1664: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1665: 
	je	.L169
 jmp .UNIQUE1666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1666: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE1667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1667: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1668: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1669: 
	movq	%rcx, %rsi
 jmp .UNIQUE1670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1670: 
	movq	%rax, %rdi
 jmp .UNIQUE1671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1671: 
	call	check_and_merge
 jmp .UNIQUE1672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1672: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1673: 
	jmp	.L170
.L172:
 jmp .UNIQUE1674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1674: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1675: 
	subq	$1, %rax
 jmp .UNIQUE1676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1676: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1677: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1678: 
	movq	16(%rax), %rax
 jmp .UNIQUE1679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1679: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1680: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1681: 
	je	.L171
 jmp .UNIQUE1682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1682: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE1683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1683: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1684: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1685: 
	movq	%rcx, %rsi
 jmp .UNIQUE1686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1686: 
	movq	%rax, %rdi
 jmp .UNIQUE1687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1687: 
	call	check_and_merge
 jmp .UNIQUE1688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1688: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1689: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1690: 
	jne	.L170
 jmp .UNIQUE1691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1691: 
	jmp	.L169
.L171:
 jmp .UNIQUE1692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1692: 
	jmp	.L169
.L170:
 jmp .UNIQUE1693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1693: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1694: 
	jne	.L172
.L169:
 jmp .UNIQUE1695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1695: 
	movl	$1, -44(%rbp)
 jmp .UNIQUE1696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1696: 
	jmp	.L163
.L168:
 jmp .UNIQUE1697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1697: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1698: 
	movq	16(%rax), %rax
 jmp .UNIQUE1699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1699: 
	testq	%rax, %rax
 jmp .UNIQUE1700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1700: 
	jne	.L173
 jmp .UNIQUE1701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1701: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1702: 
	movq	8(%rax), %rax
 jmp .UNIQUE1703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1703: 
	movq	%rax, %rdx
 jmp .UNIQUE1704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1704: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1705: 
	movq	8(%rax), %rax
 jmp .UNIQUE1706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1706: 
	cmpq	%rax, %rdx
 jmp .UNIQUE1707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1707: 
	jge	.L173
 jmp .UNIQUE1708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1708: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1709: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1710: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE1711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1711: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1712: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE1713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1713: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE1714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1714: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1715: 
	movq	$0, 16(%rax)
 jmp .UNIQUE1716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1716: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1717: 
	addq	$1, %rax
 jmp .UNIQUE1718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1718: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1719: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE1720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1720: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1721: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1722: 
	movq	%rcx, %rsi
 jmp .UNIQUE1723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1723: 
	movq	%rax, %rdi
 jmp .UNIQUE1724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1724: 
	call	check_and_merge
 jmp .UNIQUE1725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1725: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1726: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1727: 
	je	.L174
 jmp .UNIQUE1728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1728: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1729: 
	subq	$1, %rax
 jmp .UNIQUE1730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1730: 
	movq	%rax, free_chunks_num(%rip)
.L174:
 jmp .UNIQUE1731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1731: 
	movl	$1, -44(%rbp)
 jmp .UNIQUE1732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1732: 
	jmp	.L163
.L173:
 jmp .UNIQUE1733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1733: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1734: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1735: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE1736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1736: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1737: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE1738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1738: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE1739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1739: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1740: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE1741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1741: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE1742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1742: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1743: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1744: 
	movq	%rdx, 24(%rax)
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
	addq	$1, %rax
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
 jmp .UNIQUE1748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1748: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE1749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1749: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1750: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1751: 
	movq	%rcx, %rsi
 jmp .UNIQUE1752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1752: 
	movq	%rax, %rdi
 jmp .UNIQUE1753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1753: 
	call	check_and_merge
 jmp .UNIQUE1754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1754: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1755: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1756: 
	jne	.L175
 jmp .UNIQUE1757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1757: 
	movq	-40(%rbp), %rcx
 jmp .UNIQUE1758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1758: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1759: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1760: 
	movq	%rcx, %rsi
 jmp .UNIQUE1761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1761: 
	movq	%rax, %rdi
 jmp .UNIQUE1762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1762: 
	call	check_and_merge
 jmp .UNIQUE1763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1763: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1764: 
	jmp	.L176
.L175:
 jmp .UNIQUE1765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1765: 
	jmp	.L176
.L179:
 jmp .UNIQUE1766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1766: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1767: 
	subq	$1, %rax
 jmp .UNIQUE1768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1768: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1769: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1770: 
	movq	16(%rax), %rax
 jmp .UNIQUE1771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1771: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1772: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1773: 
	je	.L177
 jmp .UNIQUE1774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1774: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE1775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1775: 
	movq	-24(%rbp), %rax
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
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1782: 
	jne	.L176
 jmp .UNIQUE1783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1783: 
	jmp	.L178
.L177:
 jmp .UNIQUE1784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1784: 
	jmp	.L178
.L176:
 jmp .UNIQUE1785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1785: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1786: 
	jne	.L179
.L178:
 jmp .UNIQUE1787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1787: 
	movl	$1, -44(%rbp)
.L163:
 jmp .UNIQUE1788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1788: 
	movl	-44(%rbp), %eax
.L161:
 jmp .UNIQUE1789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1789: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1790: 
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
 jmp .UNIQUE1791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1791: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1792: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1793: 
	subq	$48, %rsp
 jmp .UNIQUE1794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1794: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1795: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1796: 
	movl	%edx, -36(%rbp)
 jmp .UNIQUE1797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1797: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1798: 
	jne	.L181
 jmp .UNIQUE1799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1799: 
	movl	$0, %eax
 jmp .UNIQUE1800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1800: 
	jmp	.L182
.L181:
 jmp .UNIQUE1801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1801: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1802: 
	movq	%rax, %rdi
 jmp .UNIQUE1803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1803: 
	call	managed_secure_malloc
 jmp .UNIQUE1804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1804: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1805: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1806: 
	jne	.L183
 jmp .UNIQUE1807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1807: 
	movq	stderr(%rip), %rax
 jmp .UNIQUE1808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1808: 
	movl	-36(%rbp), %ecx
 jmp .UNIQUE1809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1809: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE1810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1810: 
	movl	$.LC14, %esi
 jmp .UNIQUE1811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1811: 
	movq	%rax, %rdi
 jmp .UNIQUE1812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1812: 
	movl	$0, %eax
 jmp .UNIQUE1813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1813: 
	call	fprintf
 jmp .UNIQUE1814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1814: 
	movl	$52, %edi
 jmp .UNIQUE1815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1815: 
	call	exit
.L183:
 jmp .UNIQUE1816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1816: 
	movq	-8(%rbp), %rax
.L182:
 jmp .UNIQUE1817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1817: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1818: 
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
 jmp .UNIQUE1819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1819: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1820: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1821: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1822: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1823: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE1824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1824: 
	movl	$0, -4(%rbp)
 jmp .UNIQUE1825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1825: 
	jmp	.L185
.L186:
 jmp .UNIQUE1826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1826: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE1827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1827: 
	movslq	%eax, %rdx
 jmp .UNIQUE1828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1828: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1829: 
	addq	%rax, %rdx
 jmp .UNIQUE1830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1830: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE1831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1831: 
	movslq	%eax, %rcx
 jmp .UNIQUE1832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1832: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1833: 
	addq	%rcx, %rax
 jmp .UNIQUE1834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1834: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1835: 
	movb	%al, (%rdx)
 jmp .UNIQUE1836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1836: 
	addl	$1, -4(%rbp)
.L185:
 jmp .UNIQUE1837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1837: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE1838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1838: 
	cltq
 jmp .UNIQUE1839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1839: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE1840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1840: 
	jl	.L186
 jmp .UNIQUE1841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1841: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1842: 
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
 jmp .UNIQUE1843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1843: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1844: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1845: 
	subq	$176, %rsp
 jmp .UNIQUE1846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1846: 
	movq	$20, -128(%rbp)
 jmp .UNIQUE1847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1847: 
	movl	$0, %esi
 jmp .UNIQUE1848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1848: 
	movl	$.LC15, %edi
 jmp .UNIQUE1849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1849: 
	movl	$0, %eax
 jmp .UNIQUE1850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1850: 
	call	printf
 jmp .UNIQUE1851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1851: 
	movl	$.LC16, %edi
 jmp .UNIQUE1852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1852: 
	call	puts
 jmp .UNIQUE1853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1853: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE1854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1854: 
	movq	%rax, -120(%rbp)
 jmp .UNIQUE1855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1855: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE1856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1856: 
	movq	%rax, %rdi
 jmp .UNIQUE1857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1857: 
	call	find_number_of_useful_chunks
 jmp .UNIQUE1858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1858: 
	movq	%rax, -112(%rbp)
 jmp .UNIQUE1859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1859: 
	movq	-112(%rbp), %rax
 jmp .UNIQUE1860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1860: 
	movq	%rax, %rsi
 jmp .UNIQUE1861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1861: 
	movl	$.LC17, %edi
 jmp .UNIQUE1862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1862: 
	movl	$0, %eax
 jmp .UNIQUE1863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1863: 
	call	printf
 jmp .UNIQUE1864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1864: 
	movl	$.LC18, %edi
 jmp .UNIQUE1865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1865: 
	call	puts
 jmp .UNIQUE1866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1866: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE1867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1867: 
	movq	%rax, %rdi
 jmp .UNIQUE1868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1868: 
	call	print_mem
 jmp .UNIQUE1869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1869: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1870: 
	salq	$2, %rax
 jmp .UNIQUE1871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1871: 
	movl	$60, %edx
 jmp .UNIQUE1872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1872: 
	movl	$__func__.5387, %esi
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
	call	error_checking_malloc
 jmp .UNIQUE1875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1875: 
	movq	%rax, -104(%rbp)
 jmp .UNIQUE1876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1876: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1877: 
	salq	$2, %rax
 jmp .UNIQUE1878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1878: 
	movl	$61, %edx
 jmp .UNIQUE1879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1879: 
	movl	$__func__.5387, %esi
 jmp .UNIQUE1880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1880: 
	movq	%rax, %rdi
 jmp .UNIQUE1881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1881: 
	call	error_checking_malloc
 jmp .UNIQUE1882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1882: 
	movq	%rax, -96(%rbp)
 jmp .UNIQUE1883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1883: 
	movq	$5, -144(%rbp)
 jmp .UNIQUE1884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1884: 
	jmp	.L188
.L189:
 jmp .UNIQUE1885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1885: 
	movq	-144(%rbp), %rax
 jmp .UNIQUE1886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1886: 
	salq	$2, %rax
 jmp .UNIQUE1887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1887: 
	leaq	-20(%rax), %rdx
 jmp .UNIQUE1888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1888: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE1889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1889: 
	addq	%rax, %rdx
 jmp .UNIQUE1890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1890: 
	movq	-144(%rbp), %rax
 jmp .UNIQUE1891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1891: 
	movl	%eax, %ecx
 jmp .UNIQUE1892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1892: 
	movq	-144(%rbp), %rax
 jmp .UNIQUE1893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1893: 
	imull	%ecx, %eax
 jmp .UNIQUE1894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1894: 
	movl	%eax, (%rdx)
 jmp .UNIQUE1895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1895: 
	addq	$1, -144(%rbp)
.L188:
 jmp .UNIQUE1896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1896: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1897: 
	addq	$5, %rax
 jmp .UNIQUE1898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1898: 
	cmpq	-144(%rbp), %rax
 jmp .UNIQUE1899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1899: 
	jg	.L189
 jmp .UNIQUE1900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1900: 
	movl	$.LC19, %edi
 jmp .UNIQUE1901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1901: 
	call	puts
 jmp .UNIQUE1902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1902: 
	movq	-128(%rbp), %rax
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
	movl	$70, %edx
 jmp .UNIQUE1905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1905: 
	movl	$__func__.5387, %esi
 jmp .UNIQUE1906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1906: 
	movq	%rax, %rdi
 jmp .UNIQUE1907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1907: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE1908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1908: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE1909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1909: 
	movl	$.LC20, %edi
 jmp .UNIQUE1910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1910: 
	call	puts
 jmp .UNIQUE1911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1911: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1912: 
	salq	$2, %rax
 jmp .UNIQUE1913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1913: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE1914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1914: 
	movq	-104(%rbp), %rcx
 jmp .UNIQUE1915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1915: 
	movq	%rcx, %rsi
 jmp .UNIQUE1916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1916: 
	movq	%rax, %rdi
 jmp .UNIQUE1917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1917: 
	call	insert_data_into_mem
 jmp .UNIQUE1918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1918: 
	movl	$.LC21, %edi
 jmp .UNIQUE1919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1919: 
	call	puts
 jmp .UNIQUE1920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1920: 
	movl	$78, %edx
 jmp .UNIQUE1921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1921: 
	movl	$__func__.5387, %esi
 jmp .UNIQUE1922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1922: 
	movl	$4, %edi
 jmp .UNIQUE1923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1923: 
	call	error_checking_malloc
 jmp .UNIQUE1924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1924: 
	movq	%rax, -80(%rbp)
 jmp .UNIQUE1925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1925: 
	movq	$0, -136(%rbp)
 jmp .UNIQUE1926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1926: 
	jmp	.L190
.L191:
 jmp .UNIQUE1927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1927: 
	movq	-136(%rbp), %rcx
 jmp .UNIQUE1928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1928: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE1929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1929: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE1930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1930: 
	movq	%rcx, %r8
 jmp .UNIQUE1931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1931: 
	movl	$1, %ecx
 jmp .UNIQUE1932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1932: 
	movl	$4, %esi
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
	call	get_secure_data
 jmp .UNIQUE1935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1935: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE1936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1936: 
	movl	(%rax), %eax
 jmp .UNIQUE1937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1937: 
	movl	%eax, %esi
 jmp .UNIQUE1938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1938: 
	movl	$.LC22, %edi
 jmp .UNIQUE1939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1939: 
	movl	$0, %eax
 jmp .UNIQUE1940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1940: 
	call	printf
 jmp .UNIQUE1941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1941: 
	addq	$1, -136(%rbp)
.L190:
 jmp .UNIQUE1942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1942: 
	movq	-136(%rbp), %rax
 jmp .UNIQUE1943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1943: 
	cmpq	-128(%rbp), %rax
 jmp .UNIQUE1944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1944: 
	jl	.L191
 jmp .UNIQUE1945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1945: 
	movl	$10, %edi
 jmp .UNIQUE1946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1946: 
	call	putchar
 jmp .UNIQUE1947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1947: 
	movl	$.LC23, %edi
 jmp .UNIQUE1948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1948: 
	call	puts
 jmp .UNIQUE1949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1949: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1950: 
	salq	$2, %rax
 jmp .UNIQUE1951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1951: 
	movl	$91, %edx
 jmp .UNIQUE1952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1952: 
	movl	$__func__.5387, %esi
 jmp .UNIQUE1953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1953: 
	movq	%rax, %rdi
 jmp .UNIQUE1954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1954: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE1955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1955: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE1956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1956: 
	movq	$5, -144(%rbp)
 jmp .UNIQUE1957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1957: 
	jmp	.L192
.L193:
 jmp .UNIQUE1958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1958: 
	movq	-144(%rbp), %rax
 jmp .UNIQUE1959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1959: 
	salq	$2, %rax
 jmp .UNIQUE1960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1960: 
	leaq	-20(%rax), %rdx
 jmp .UNIQUE1961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1961: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE1962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1962: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE1963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1963: 
	movq	-144(%rbp), %rax
 jmp .UNIQUE1964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1964: 
	movl	%eax, %edx
 jmp .UNIQUE1965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1965: 
	movl	%edx, %eax
 jmp .UNIQUE1966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1966: 
	addl	%eax, %eax
 jmp .UNIQUE1967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1967: 
	addl	%edx, %eax
 jmp .UNIQUE1968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1968: 
	movl	%eax, (%rcx)
 jmp .UNIQUE1969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1969: 
	addq	$1, -144(%rbp)
.L192:
 jmp .UNIQUE1970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1970: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1971: 
	addq	$5, %rax
 jmp .UNIQUE1972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1972: 
	cmpq	-144(%rbp), %rax
 jmp .UNIQUE1973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1973: 
	jg	.L193
 jmp .UNIQUE1974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1974: 
	movl	$.LC24, %edi
 jmp .UNIQUE1975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1975: 
	call	puts
 jmp .UNIQUE1976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1976: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1977: 
	salq	$2, %rax
 jmp .UNIQUE1978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1978: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE1979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1979: 
	movq	-104(%rbp), %rcx
 jmp .UNIQUE1980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1980: 
	movq	%rcx, %rsi
 jmp .UNIQUE1981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1981: 
	movq	%rax, %rdi
 jmp .UNIQUE1982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1982: 
	call	insert_data_into_mem
 jmp .UNIQUE1983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1983: 
	movl	$.LC21, %edi
 jmp .UNIQUE1984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1984: 
	call	puts
 jmp .UNIQUE1985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1985: 
	movq	$0, -136(%rbp)
 jmp .UNIQUE1986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1986: 
	jmp	.L194
.L195:
 jmp .UNIQUE1987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1987: 
	movq	-136(%rbp), %rcx
 jmp .UNIQUE1988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1988: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE1989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1989: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE1990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1990: 
	movq	%rcx, %r8
 jmp .UNIQUE1991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1991: 
	movl	$1, %ecx
 jmp .UNIQUE1992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1992: 
	movl	$4, %esi
 jmp .UNIQUE1993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1993: 
	movq	%rax, %rdi
 jmp .UNIQUE1994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1994: 
	call	get_secure_data
 jmp .UNIQUE1995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1995: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE1996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1996: 
	movl	(%rax), %eax
 jmp .UNIQUE1997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1997: 
	movl	%eax, %esi
 jmp .UNIQUE1998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1998: 
	movl	$.LC22, %edi
 jmp .UNIQUE1999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1999: 
	movl	$0, %eax
 jmp .UNIQUE2000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2000: 
	call	printf
 jmp .UNIQUE2001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2001: 
	addq	$1, -136(%rbp)
.L194:
 jmp .UNIQUE2002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2002: 
	movq	-136(%rbp), %rax
 jmp .UNIQUE2003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2003: 
	cmpq	-128(%rbp), %rax
 jmp .UNIQUE2004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2004: 
	jl	.L195
 jmp .UNIQUE2005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2005: 
	movl	$10, %edi
 jmp .UNIQUE2006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2006: 
	call	putchar
 jmp .UNIQUE2007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2007: 
	movl	$.LC25, %edi
 jmp .UNIQUE2008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2008: 
	call	puts
 jmp .UNIQUE2009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2009: 
	movl	$0, %eax
 jmp .UNIQUE2010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2010: 
	call	print_lists
 jmp .UNIQUE2011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2011: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2012: 
	movq	%rax, %rdi
 jmp .UNIQUE2013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2013: 
	call	managed_secure_free
 jmp .UNIQUE2014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2014: 
	movl	$.LC26, %edi
 jmp .UNIQUE2015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2015: 
	call	puts
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
	call	print_lists
 jmp .UNIQUE2018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2018: 
	movl	$.LC27, %edi
 jmp .UNIQUE2019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2019: 
	call	puts
 jmp .UNIQUE2020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2020: 
	movl	$120, %edx
 jmp .UNIQUE2021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2021: 
	movl	$__func__.5387, %esi
 jmp .UNIQUE2022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2022: 
	movl	$4, %edi
 jmp .UNIQUE2023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2023: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2024: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE2025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2025: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2026: 
	movl	$424242424, (%rax)
 jmp .UNIQUE2027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2027: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE2028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2028: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2029: 
	movq	%rax, %rsi
 jmp .UNIQUE2030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2030: 
	movl	$4, %edi
 jmp .UNIQUE2031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2031: 
	call	insert_data_into_mem
 jmp .UNIQUE2032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2032: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2033: 
	movq	%rax, %rdi
 jmp .UNIQUE2034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2034: 
	call	free
 jmp .UNIQUE2035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2035: 
	movl	$124, %edx
 jmp .UNIQUE2036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2036: 
	movl	$__func__.5387, %esi
 jmp .UNIQUE2037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2037: 
	movl	$4, %edi
 jmp .UNIQUE2038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2038: 
	call	error_checking_malloc
 jmp .UNIQUE2039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2039: 
	movq	%rax, -80(%rbp)
 jmp .UNIQUE2040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2040: 
	movq	-136(%rbp), %rcx
 jmp .UNIQUE2041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2041: 
	movq	-72(%rbp), %rdx
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
	movq	%rcx, %r8
 jmp .UNIQUE2044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2044: 
	movl	$0, %ecx
 jmp .UNIQUE2045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2045: 
	movl	$4, %esi
 jmp .UNIQUE2046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2046: 
	movq	%rax, %rdi
 jmp .UNIQUE2047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2047: 
	call	get_secure_data
 jmp .UNIQUE2048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2048: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2049: 
	movl	(%rax), %eax
 jmp .UNIQUE2050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2050: 
	movl	%eax, %esi
 jmp .UNIQUE2051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2051: 
	movl	$.LC28, %edi
 jmp .UNIQUE2052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2052: 
	movl	$0, %eax
 jmp .UNIQUE2053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2053: 
	call	printf
 jmp .UNIQUE2054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2054: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2055: 
	movq	%rax, %rdi
 jmp .UNIQUE2056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2056: 
	call	free
 jmp .UNIQUE2057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2057: 
	movl	$.LC29, %edi
 jmp .UNIQUE2058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2058: 
	call	puts
 jmp .UNIQUE2059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2059: 
	movl	$0, %eax
 jmp .UNIQUE2060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2060: 
	call	print_lists
 jmp .UNIQUE2061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2061: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE2062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2062: 
	movq	%rax, %rdi
 jmp .UNIQUE2063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2063: 
	call	managed_secure_free
 jmp .UNIQUE2064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2064: 
	movl	$.LC30, %edi
 jmp .UNIQUE2065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2065: 
	call	puts
 jmp .UNIQUE2066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2066: 
	movl	$0, %eax
 jmp .UNIQUE2067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2067: 
	call	print_lists
 jmp .UNIQUE2068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2068: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2069: 
	movq	%rax, %rdi
 jmp .UNIQUE2070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2070: 
	call	managed_secure_free
 jmp .UNIQUE2071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2071: 
	movl	$.LC31, %edi
 jmp .UNIQUE2072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2072: 
	call	puts
 jmp .UNIQUE2073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2073: 
	movl	$0, %eax
 jmp .UNIQUE2074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2074: 
	call	print_lists
 jmp .UNIQUE2075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2075: 
	movl	$.LC32, %edi
 jmp .UNIQUE2076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2076: 
	call	puts
 jmp .UNIQUE2077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2077: 
	movl	$146, %edx
 jmp .UNIQUE2078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2078: 
	movl	$__func__.5387, %esi
 jmp .UNIQUE2079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2079: 
	movl	$4, %edi
 jmp .UNIQUE2080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2080: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2081: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE2082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2082: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2083: 
	movl	$99998, %esi
 jmp .UNIQUE2084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2084: 
	movq	%rax, %rdi
 jmp .UNIQUE2085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2085: 
	call	set_int
 jmp .UNIQUE2086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2086: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2087: 
	movq	%rax, %rdi
 jmp .UNIQUE2088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2088: 
	call	get_int
 jmp .UNIQUE2089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2089: 
	movl	%eax, -156(%rbp)
 jmp .UNIQUE2090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2090: 
	movl	-156(%rbp), %eax
 jmp .UNIQUE2091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2091: 
	movl	%eax, %esi
 jmp .UNIQUE2092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2092: 
	movl	$.LC33, %edi
 jmp .UNIQUE2093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2093: 
	movl	$0, %eax
 jmp .UNIQUE2094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2094: 
	call	printf
 jmp .UNIQUE2095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2095: 
	movl	$152, %edx
 jmp .UNIQUE2096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2096: 
	movl	$__func__.5387, %esi
 jmp .UNIQUE2097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2097: 
	movl	$1, %edi
 jmp .UNIQUE2098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2098: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2099: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE2100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2100: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE2101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2101: 
	movl	$98, %esi
 jmp .UNIQUE2102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2102: 
	movq	%rax, %rdi
 jmp .UNIQUE2103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2103: 
	call	set_char
 jmp .UNIQUE2104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2104: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE2105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2105: 
	movq	%rax, %rdi
 jmp .UNIQUE2106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2106: 
	call	get_char
 jmp .UNIQUE2107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2107: 
	movb	%al, -157(%rbp)
 jmp .UNIQUE2108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2108: 
	movsbl	-157(%rbp), %eax
 jmp .UNIQUE2109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2109: 
	movl	%eax, %esi
 jmp .UNIQUE2110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2110: 
	movl	$.LC34, %edi
 jmp .UNIQUE2111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2111: 
	movl	$0, %eax
 jmp .UNIQUE2112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2112: 
	call	printf
 jmp .UNIQUE2113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2113: 
	movl	$158, %edx
 jmp .UNIQUE2114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2114: 
	movl	$__func__.5387, %esi
 jmp .UNIQUE2115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2115: 
	movl	$8, %edi
 jmp .UNIQUE2116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2116: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2117: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE2118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2118: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2119: 
	movl	$54545454, %esi
 jmp .UNIQUE2120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2120: 
	movq	%rax, %rdi
 jmp .UNIQUE2121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2121: 
	call	set_long_int
 jmp .UNIQUE2122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2122: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2123: 
	movq	%rax, %rdi
 jmp .UNIQUE2124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2124: 
	call	get_long_int
 jmp .UNIQUE2125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2125: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE2126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2126: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2127: 
	movq	%rax, %rsi
 jmp .UNIQUE2128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2128: 
	movl	$.LC35, %edi
 jmp .UNIQUE2129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2129: 
	movl	$0, %eax
 jmp .UNIQUE2130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2130: 
	call	printf
 jmp .UNIQUE2131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2131: 
	movl	$.LC36, %edi
 jmp .UNIQUE2132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2132: 
	call	puts
 jmp .UNIQUE2133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2133: 
	movl	$0, %eax
 jmp .UNIQUE2134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2134: 
	call	print_lists
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
	movq	%rax, %rdi
 jmp .UNIQUE2137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2137: 
	call	managed_secure_free
 jmp .UNIQUE2138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2138: 
	movl	$.LC37, %edi
 jmp .UNIQUE2139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2139: 
	call	puts
 jmp .UNIQUE2140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2140: 
	movl	$0, %eax
 jmp .UNIQUE2141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2141: 
	call	print_lists
 jmp .UNIQUE2142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2142: 
	movl	$172, %edx
 jmp .UNIQUE2143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2143: 
	movl	$__func__.5387, %esi
 jmp .UNIQUE2144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2144: 
	movl	$1, %edi
 jmp .UNIQUE2145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2145: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2146: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE2147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2147: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2148: 
	movl	$97, %esi
 jmp .UNIQUE2149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2149: 
	movq	%rax, %rdi
 jmp .UNIQUE2150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2150: 
	call	set_char
 jmp .UNIQUE2151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2151: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2152: 
	movq	%rax, %rdi
 jmp .UNIQUE2153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2153: 
	call	get_char
 jmp .UNIQUE2154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2154: 
	movb	%al, -157(%rbp)
 jmp .UNIQUE2155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2155: 
	movsbl	-157(%rbp), %eax
 jmp .UNIQUE2156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2156: 
	movl	%eax, %esi
 jmp .UNIQUE2157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2157: 
	movl	$.LC34, %edi
 jmp .UNIQUE2158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2158: 
	movl	$0, %eax
 jmp .UNIQUE2159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2159: 
	call	printf
 jmp .UNIQUE2160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2160: 
	movl	$.LC38, %edi
 jmp .UNIQUE2161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2161: 
	call	puts
 jmp .UNIQUE2162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2162: 
	movl	$0, %eax
 jmp .UNIQUE2163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2163: 
	call	print_lists
 jmp .UNIQUE2164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2164: 
	movl	$182, %edx
 jmp .UNIQUE2165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2165: 
	movl	$__func__.5387, %esi
 jmp .UNIQUE2166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2166: 
	movl	$8, %edi
 jmp .UNIQUE2167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2167: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2168: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2169: 
	movabsq	$4665384344877005170, %rax
 jmp .UNIQUE2170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2170: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE2171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2171: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE2172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2172: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE2173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2173: 
	movq	%rdx, %rdi
 jmp .UNIQUE2174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2174: 
	call	set_double
 jmp .UNIQUE2175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2175: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2176: 
	movq	%rax, %rdi
 jmp .UNIQUE2177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2177: 
	call	get_double
 jmp .UNIQUE2178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2178: 
	movsd	%xmm0, -168(%rbp)
 jmp .UNIQUE2179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2179: 
	movq	-168(%rbp), %rax
 jmp .UNIQUE2180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2180: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE2181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2181: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE2182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2182: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE2183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2183: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE2184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2184: 
	movl	$.LC40, %edi
 jmp .UNIQUE2185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2185: 
	movl	$1, %eax
 jmp .UNIQUE2186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2186: 
	call	printf
 jmp .UNIQUE2187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2187: 
	movl	$.LC41, %edi
 jmp .UNIQUE2188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2188: 
	call	puts
 jmp .UNIQUE2189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2189: 
	movl	$0, %eax
 jmp .UNIQUE2190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2190: 
	call	print_lists
 jmp .UNIQUE2191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2191: 
	movl	$.LC42, %edi
 jmp .UNIQUE2192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2192: 
	call	puts
 jmp .UNIQUE2193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2193: 
	movl	$193, %edx
 jmp .UNIQUE2194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2194: 
	movl	$__func__.5387, %esi
 jmp .UNIQUE2195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2195: 
	movl	$80, %edi
 jmp .UNIQUE2196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2196: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2197: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE2198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2198: 
	movabsq	$4631167498573958009, %rax
 jmp .UNIQUE2199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2199: 
	movq	%rax, -152(%rbp)
 jmp .UNIQUE2200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2200: 
	leaq	-152(%rbp), %rdx
 jmp .UNIQUE2201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2201: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2202: 
	movq	%rdx, %rcx
 jmp .UNIQUE2203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2203: 
	movl	$2, %edx
 jmp .UNIQUE2204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2204: 
	movq	%rax, %rsi
 jmp .UNIQUE2205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2205: 
	movl	$8, %edi
 jmp .UNIQUE2206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2206: 
	call	set_array_element
 jmp .UNIQUE2207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2207: 
	movabsq	$4629998950986019070, %rax
 jmp .UNIQUE2208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2208: 
	movq	%rax, -152(%rbp)
 jmp .UNIQUE2209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2209: 
	leaq	-152(%rbp), %rdx
 jmp .UNIQUE2210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2210: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2211: 
	movq	%rdx, %rcx
 jmp .UNIQUE2212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2212: 
	movl	$3, %edx
 jmp .UNIQUE2213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2213: 
	movq	%rax, %rsi
 jmp .UNIQUE2214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2214: 
	movl	$8, %edi
 jmp .UNIQUE2215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2215: 
	call	set_array_element
 jmp .UNIQUE2216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2216: 
	movabsq	$4607182418800017408, %rax
 jmp .UNIQUE2217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2217: 
	movq	%rax, -152(%rbp)
 jmp .UNIQUE2218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2218: 
	leaq	-152(%rbp), %rdx
 jmp .UNIQUE2219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2219: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2220: 
	movq	%rdx, %rcx
 jmp .UNIQUE2221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2221: 
	movl	$2, %edx
 jmp .UNIQUE2222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2222: 
	movq	%rax, %rsi
 jmp .UNIQUE2223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2223: 
	movl	$8, %edi
 jmp .UNIQUE2224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2224: 
	call	get_array_element
 jmp .UNIQUE2225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2225: 
	movq	-152(%rbp), %rax
 jmp .UNIQUE2226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2226: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE2227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2227: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE2228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2228: 
	movl	$.LC46, %edi
 jmp .UNIQUE2229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2229: 
	movl	$1, %eax
 jmp .UNIQUE2230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2230: 
	call	printf
 jmp .UNIQUE2231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2231: 
	leaq	-152(%rbp), %rdx
 jmp .UNIQUE2232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2232: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2233: 
	movq	%rdx, %rcx
 jmp .UNIQUE2234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2234: 
	movl	$3, %edx
 jmp .UNIQUE2235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2235: 
	movq	%rax, %rsi
 jmp .UNIQUE2236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2236: 
	movl	$8, %edi
 jmp .UNIQUE2237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2237: 
	call	get_array_element
 jmp .UNIQUE2238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2238: 
	movq	-152(%rbp), %rax
 jmp .UNIQUE2239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2239: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE2240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2240: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE2241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2241: 
	movl	$.LC47, %edi
 jmp .UNIQUE2242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2242: 
	movl	$1, %eax
 jmp .UNIQUE2243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2243: 
	call	printf
 jmp .UNIQUE2244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2244: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2245: 
	movl	$3, %esi
 jmp .UNIQUE2246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2246: 
	movq	%rax, %rdi
 jmp .UNIQUE2247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2247: 
	call	get_double_array_element
 jmp .UNIQUE2248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2248: 
	movsd	%xmm0, -168(%rbp)
 jmp .UNIQUE2249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2249: 
	movq	-168(%rbp), %rax
 jmp .UNIQUE2250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2250: 
	movq	%rax, -152(%rbp)
 jmp .UNIQUE2251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2251: 
	movq	-152(%rbp), %rax
 jmp .UNIQUE2252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2252: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE2253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2253: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE2254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2254: 
	movl	$.LC47, %edi
 jmp .UNIQUE2255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2255: 
	movl	$1, %eax
 jmp .UNIQUE2256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2256: 
	call	printf
 jmp .UNIQUE2257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2257: 
	movl	$.LC48, %edi
 jmp .UNIQUE2258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2258: 
	call	puts
 jmp .UNIQUE2259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2259: 
	movl	$.LC49, %edi
 jmp .UNIQUE2260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2260: 
	call	puts
 jmp .UNIQUE2261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2261: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE2262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2262: 
	movq	%rax, %rdi
 jmp .UNIQUE2263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2263: 
	call	print_mem
 jmp .UNIQUE2264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2264: 
	movl	$.LC50, %edi
 jmp .UNIQUE2265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2265: 
	call	puts
 jmp .UNIQUE2266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2266: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2267: 
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
 jmp .UNIQUE2268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2268: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2269: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2270: 
	subq	$80, %rsp
 jmp .UNIQUE2271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2271: 
	movl	$.LC3, %edi
 jmp .UNIQUE2272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2272: 
	call	puts
 jmp .UNIQUE2273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2273: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE2274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2274: 
	movq	%rax, %rdi
 jmp .UNIQUE2275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2275: 
	call	print_list
 jmp .UNIQUE2276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2276: 
	movl	$.LC4, %edi
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
	movq	allocated_chunks_list(%rip), %rax
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
	call	print_list
 jmp .UNIQUE2281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2281: 
	movq	$10, -32(%rbp)
 jmp .UNIQUE2282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2282: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE2283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2283: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2284: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE2285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2285: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE2286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2286: 
	movl	$.LC51, %edi
 jmp .UNIQUE2287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2287: 
	call	puts
 jmp .UNIQUE2288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2288: 
	movl	$101, %edi
 jmp .UNIQUE2289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2289: 
	call	managed_secure_malloc
 jmp .UNIQUE2290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2290: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE2291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2291: 
	cmpq	$0, -64(%rbp)
 jmp .UNIQUE2292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2292: 
	jne	.L197
 jmp .UNIQUE2293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2293: 
	movl	$.LC52, %edi
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
.L197:
 jmp .UNIQUE2295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2295: 
	movl	$0, %eax
 jmp .UNIQUE2296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2296: 
	call	print_lists
 jmp .UNIQUE2297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2297: 
	movl	$.LC53, %edi
 jmp .UNIQUE2298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2298: 
	call	puts
 jmp .UNIQUE2299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2299: 
	movl	$42, %edi
 jmp .UNIQUE2300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2300: 
	call	managed_secure_malloc
 jmp .UNIQUE2301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2301: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE2302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2302: 
	cmpq	$0, -56(%rbp)
 jmp .UNIQUE2303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2303: 
	jne	.L198
 jmp .UNIQUE2304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2304: 
	movl	$.LC54, %edi
 jmp .UNIQUE2305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2305: 
	call	puts
.L198:
 jmp .UNIQUE2306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2306: 
	movl	$0, %eax
 jmp .UNIQUE2307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2307: 
	call	print_lists
 jmp .UNIQUE2308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2308: 
	movl	$.LC55, %edi
 jmp .UNIQUE2309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2309: 
	call	puts
 jmp .UNIQUE2310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2310: 
	movl	$61, %edi
 jmp .UNIQUE2311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2311: 
	call	managed_secure_malloc
 jmp .UNIQUE2312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2312: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE2313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2313: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE2314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2314: 
	jne	.L199
 jmp .UNIQUE2315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2315: 
	movl	$.LC56, %edi
 jmp .UNIQUE2316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2316: 
	call	puts
.L199:
 jmp .UNIQUE2317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2317: 
	movl	$0, %eax
 jmp .UNIQUE2318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2318: 
	call	print_lists
 jmp .UNIQUE2319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2319: 
	movl	$.LC57, %edi
 jmp .UNIQUE2320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2320: 
	call	puts
 jmp .UNIQUE2321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2321: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE2322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2322: 
	movq	%rax, %rdi
 jmp .UNIQUE2323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2323: 
	call	managed_secure_free
 jmp .UNIQUE2324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2324: 
	movl	%eax, -68(%rbp)
 jmp .UNIQUE2325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2325: 
	cmpl	$0, -68(%rbp)
 jmp .UNIQUE2326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2326: 
	jne	.L200
 jmp .UNIQUE2327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2327: 
	movl	$.LC58, %edi
 jmp .UNIQUE2328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2328: 
	call	puts
.L200:
 jmp .UNIQUE2329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2329: 
	movl	$0, %eax
 jmp .UNIQUE2330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2330: 
	call	print_lists
 jmp .UNIQUE2331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2331: 
	movl	$.LC59, %edi
 jmp .UNIQUE2332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2332: 
	call	puts
 jmp .UNIQUE2333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2333: 
	movl	$80, %edi
 jmp .UNIQUE2334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2334: 
	call	managed_secure_malloc
 jmp .UNIQUE2335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2335: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE2336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2336: 
	cmpq	$0, -56(%rbp)
 jmp .UNIQUE2337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2337: 
	jne	.L201
 jmp .UNIQUE2338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2338: 
	movl	$.LC60, %edi
 jmp .UNIQUE2339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2339: 
	call	puts
.L201:
 jmp .UNIQUE2340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2340: 
	movl	$0, %eax
 jmp .UNIQUE2341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2341: 
	call	print_lists
 jmp .UNIQUE2342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2342: 
	movl	$.LC61, %edi
 jmp .UNIQUE2343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2343: 
	call	puts
 jmp .UNIQUE2344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2344: 
	movl	$29, %edi
 jmp .UNIQUE2345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2345: 
	call	managed_secure_malloc
 jmp .UNIQUE2346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2346: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE2347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2347: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE2348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2348: 
	jne	.L202
 jmp .UNIQUE2349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2349: 
	movl	$.LC62, %edi
 jmp .UNIQUE2350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2350: 
	call	puts
.L202:
 jmp .UNIQUE2351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2351: 
	movl	$0, %eax
 jmp .UNIQUE2352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2352: 
	call	print_lists
 jmp .UNIQUE2353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2353: 
	movl	$.LC63, %edi
 jmp .UNIQUE2354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2354: 
	call	puts
 jmp .UNIQUE2355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2355: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2356: 
	movq	%rax, %rdi
 jmp .UNIQUE2357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2357: 
	call	managed_secure_free
 jmp .UNIQUE2358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2358: 
	movl	%eax, -68(%rbp)
 jmp .UNIQUE2359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2359: 
	cmpl	$0, -68(%rbp)
 jmp .UNIQUE2360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2360: 
	jne	.L203
 jmp .UNIQUE2361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2361: 
	movl	$.LC58, %edi
 jmp .UNIQUE2362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2362: 
	call	puts
.L203:
 jmp .UNIQUE2363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2363: 
	movl	$0, %eax
 jmp .UNIQUE2364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2364: 
	call	print_lists
 jmp .UNIQUE2365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2365: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2366: 
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
 jmp .UNIQUE2367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2367: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2368: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2369: 
	pushq	%rbx
 jmp .UNIQUE2370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2370: 
	subq	$88, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE2371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2371: 
	movl	$4, %edi
 jmp .UNIQUE2372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2372: 
	call	managed_secure_malloc
 jmp .UNIQUE2373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2373: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE2374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2374: 
	movl	$8, %edi
 jmp .UNIQUE2375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2375: 
	call	managed_secure_malloc
 jmp .UNIQUE2376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2376: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE2377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2377: 
	movl	$8, %edi
 jmp .UNIQUE2378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2378: 
	call	managed_secure_malloc
 jmp .UNIQUE2379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2379: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE2380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2380: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2381: 
	movl	$5, %esi
 jmp .UNIQUE2382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2382: 
	movq	%rax, %rdi
 jmp .UNIQUE2383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2383: 
	call	set_long_int
 jmp .UNIQUE2384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2384: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE2385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2385: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE2386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2386: 
	movq	%rdx, %rsi
 jmp .UNIQUE2387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2387: 
	movq	%rax, %rdi
 jmp .UNIQUE2388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2388: 
	call	set_pointer
 jmp .UNIQUE2389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2389: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE2390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2390: 
	movq	%rax, %rdi
 jmp .UNIQUE2391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2391: 
	call	get_pointer
 jmp .UNIQUE2392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2392: 
	movl	$21, %esi
 jmp .UNIQUE2393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2393: 
	movq	%rax, %rdi
 jmp .UNIQUE2394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2394: 
	call	set_long_int
 jmp .UNIQUE2395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2395: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2396: 
	movq	%rax, %rdi
 jmp .UNIQUE2397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2397: 
	call	get_long_int
 jmp .UNIQUE2398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2398: 
	salq	$2, %rax
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
	call	managed_secure_malloc
 jmp .UNIQUE2401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2401: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE2402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2402: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2403: 
	movq	%rax, %rdi
 jmp .UNIQUE2404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2404: 
	call	get_long_int
 jmp .UNIQUE2405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2405: 
	salq	$2, %rax
 jmp .UNIQUE2406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2406: 
	movq	%rax, %rdi
 jmp .UNIQUE2407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2407: 
	call	managed_secure_malloc
 jmp .UNIQUE2408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2408: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE2409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2409: 
	movq	-64(%rbp), %rax
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
	call	get_long_int
 jmp .UNIQUE2412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2412: 
	salq	$3, %rax
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
	call	managed_secure_malloc
 jmp .UNIQUE2415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2415: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE2416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2416: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2417: 
	movq	%rax, %rdi
 jmp .UNIQUE2418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2418: 
	call	get_long_int
 jmp .UNIQUE2419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2419: 
	salq	$2, %rax
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
	call	managed_secure_malloc
 jmp .UNIQUE2422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2422: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2423: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE2424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2424: 
	jne	.L205
 jmp .UNIQUE2425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2425: 
	movl	$.LC64, %edi
 jmp .UNIQUE2426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2426: 
	call	puts
 jmp .UNIQUE2427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2427: 
	movl	$42, %edi
 jmp .UNIQUE2428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2428: 
	call	exit
.L205:
 jmp .UNIQUE2429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2429: 
	movl	$.LC65, %edi
 jmp .UNIQUE2430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2430: 
	call	puts
 jmp .UNIQUE2431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2431: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2432: 
	movl	$0, %esi
 jmp .UNIQUE2433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2433: 
	movq	%rax, %rdi
 jmp .UNIQUE2434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2434: 
	call	set_int
 jmp .UNIQUE2435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2435: 
	jmp	.L206
.L207:
 jmp .UNIQUE2436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2436: 
	movq	-72(%rbp), %rax
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
	call	get_int
 jmp .UNIQUE2439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2439: 
	leal	(%rax,%rax), %ebx
 jmp .UNIQUE2440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2440: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2441: 
	movq	%rax, %rdi
 jmp .UNIQUE2442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2442: 
	call	get_int
 jmp .UNIQUE2443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2443: 
	movslq	%eax, %rcx
 jmp .UNIQUE2444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2444: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2445: 
	movl	%ebx, %edx
 jmp .UNIQUE2446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2446: 
	movq	%rcx, %rsi
 jmp .UNIQUE2447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2447: 
	movq	%rax, %rdi
 jmp .UNIQUE2448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2448: 
	call	set_int_array_element
 jmp .UNIQUE2449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2449: 
	movq	-72(%rbp), %rax
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
	call	get_int
 jmp .UNIQUE2452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2452: 
	movl	%eax, %edx
 jmp .UNIQUE2453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2453: 
	movl	%edx, %eax
 jmp .UNIQUE2454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2454: 
	addl	%eax, %eax
 jmp .UNIQUE2455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2455: 
	leal	(%rax,%rdx), %ebx
 jmp .UNIQUE2456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2456: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2457: 
	movq	%rax, %rdi
 jmp .UNIQUE2458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2458: 
	call	get_int
 jmp .UNIQUE2459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2459: 
	movslq	%eax, %rcx
 jmp .UNIQUE2460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2460: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2461: 
	movl	%ebx, %edx
 jmp .UNIQUE2462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2462: 
	movq	%rcx, %rsi
 jmp .UNIQUE2463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2463: 
	movq	%rax, %rdi
 jmp .UNIQUE2464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2464: 
	call	set_int_array_element
 jmp .UNIQUE2465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2465: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2466: 
	movq	%rax, %rdi
 jmp .UNIQUE2467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2467: 
	call	get_int
 jmp .UNIQUE2468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2468: 
	cvtsi2sd	%eax, %xmm0
 jmp .UNIQUE2469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2469: 
	movsd	.LC66(%rip), %xmm1
 jmp .UNIQUE2470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2470: 
	mulsd	%xmm1, %xmm0
 jmp .UNIQUE2471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2471: 
	movsd	%xmm0, -88(%rbp)
 jmp .UNIQUE2472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2472: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2473: 
	movq	%rax, %rdi
 jmp .UNIQUE2474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2474: 
	call	get_int
 jmp .UNIQUE2475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2475: 
	movslq	%eax, %rdx
 jmp .UNIQUE2476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2476: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2477: 
	movsd	-88(%rbp), %xmm0
 jmp .UNIQUE2478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2478: 
	movq	%rdx, %rsi
 jmp .UNIQUE2479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2479: 
	movq	%rax, %rdi
 jmp .UNIQUE2480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2480: 
	call	set_double_array_element
 jmp .UNIQUE2481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2481: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2482: 
	movq	%rax, %rdi
 jmp .UNIQUE2483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2483: 
	call	get_int
 jmp .UNIQUE2484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2484: 
	addl	%eax, %eax
 jmp .UNIQUE2485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2485: 
	cvtsi2ss	%eax, %xmm3
 jmp .UNIQUE2486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2486: 
	movss	%xmm3, -88(%rbp)
 jmp .UNIQUE2487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2487: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2488: 
	movq	%rax, %rdi
 jmp .UNIQUE2489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2489: 
	call	get_int
 jmp .UNIQUE2490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2490: 
	movslq	%eax, %rdx
 jmp .UNIQUE2491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2491: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2492: 
	movss	-88(%rbp), %xmm0
 jmp .UNIQUE2493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2493: 
	movq	%rdx, %rsi
 jmp .UNIQUE2494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2494: 
	movq	%rax, %rdi
 jmp .UNIQUE2495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2495: 
	call	set_float_array_element
 jmp .UNIQUE2496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2496: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2497: 
	movq	%rax, %rdi
 jmp .UNIQUE2498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2498: 
	call	get_int
 jmp .UNIQUE2499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2499: 
	leal	1(%rax), %edx
 jmp .UNIQUE2500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2500: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2501: 
	movl	%edx, %esi
 jmp .UNIQUE2502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2502: 
	movq	%rax, %rdi
 jmp .UNIQUE2503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2503: 
	call	set_int
.L206:
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
	movslq	%eax, %rbx
 jmp .UNIQUE2508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2508: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2509: 
	movq	%rax, %rdi
 jmp .UNIQUE2510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2510: 
	call	get_long_int
 jmp .UNIQUE2511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2511: 
	cmpq	%rax, %rbx
 jmp .UNIQUE2512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2512: 
	jl	.L207
 jmp .UNIQUE2513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2513: 
	movl	$.LC67, %edi
 jmp .UNIQUE2514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2514: 
	call	puts
 jmp .UNIQUE2515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2515: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2516: 
	movl	$0, %esi
 jmp .UNIQUE2517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2517: 
	movq	%rax, %rdi
 jmp .UNIQUE2518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2518: 
	call	set_int
 jmp .UNIQUE2519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2519: 
	jmp	.L208
.L209:
 jmp .UNIQUE2520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2520: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2521: 
	movq	%rax, %rdi
 jmp .UNIQUE2522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2522: 
	call	get_int
 jmp .UNIQUE2523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2523: 
	movslq	%eax, %rdx
 jmp .UNIQUE2524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2524: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2525: 
	movq	%rdx, %rsi
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
	call	get_int_array_element
 jmp .UNIQUE2528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2528: 
	movl	%eax, %ebx
 jmp .UNIQUE2529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2529: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2530: 
	movq	%rax, %rdi
 jmp .UNIQUE2531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2531: 
	call	get_int
 jmp .UNIQUE2532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2532: 
	movslq	%eax, %rdx
 jmp .UNIQUE2533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2533: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2534: 
	movq	%rdx, %rsi
 jmp .UNIQUE2535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2535: 
	movq	%rax, %rdi
 jmp .UNIQUE2536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2536: 
	call	get_int_array_element
 jmp .UNIQUE2537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2537: 
	addl	%eax, %ebx
 jmp .UNIQUE2538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2538: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2539: 
	movq	%rax, %rdi
 jmp .UNIQUE2540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2540: 
	call	get_int
 jmp .UNIQUE2541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2541: 
	movslq	%eax, %rcx
 jmp .UNIQUE2542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2542: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2543: 
	movl	%ebx, %edx
 jmp .UNIQUE2544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2544: 
	movq	%rcx, %rsi
 jmp .UNIQUE2545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2545: 
	movq	%rax, %rdi
 jmp .UNIQUE2546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2546: 
	call	set_int_array_element
 jmp .UNIQUE2547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2547: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2548: 
	movq	%rax, %rdi
 jmp .UNIQUE2549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2549: 
	call	get_int
 jmp .UNIQUE2550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2550: 
	movslq	%eax, %rdx
 jmp .UNIQUE2551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2551: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2552: 
	movq	%rdx, %rsi
 jmp .UNIQUE2553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2553: 
	movq	%rax, %rdi
 jmp .UNIQUE2554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2554: 
	call	get_double_array_element
 jmp .UNIQUE2555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2555: 
	movsd	%xmm0, -88(%rbp)
 jmp .UNIQUE2556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2556: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2557: 
	movq	%rax, %rdi
 jmp .UNIQUE2558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2558: 
	call	get_int
 jmp .UNIQUE2559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2559: 
	movslq	%eax, %rdx
 jmp .UNIQUE2560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2560: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2561: 
	movq	%rdx, %rsi
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
	call	get_float_array_element
 jmp .UNIQUE2564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2564: 
	unpcklps	%xmm0, %xmm0
 jmp .UNIQUE2565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2565: 
	cvtps2pd	%xmm0, %xmm0
 jmp .UNIQUE2566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2566: 
	movapd	%xmm0, %xmm2
 jmp .UNIQUE2567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2567: 
	addsd	-88(%rbp), %xmm2
 jmp .UNIQUE2568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2568: 
	movsd	%xmm2, -88(%rbp)
 jmp .UNIQUE2569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2569: 
	movq	-72(%rbp), %rax
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
	call	get_int
 jmp .UNIQUE2572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2572: 
	movslq	%eax, %rdx
 jmp .UNIQUE2573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2573: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2574: 
	movsd	-88(%rbp), %xmm0
 jmp .UNIQUE2575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2575: 
	movq	%rdx, %rsi
 jmp .UNIQUE2576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2576: 
	movq	%rax, %rdi
 jmp .UNIQUE2577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2577: 
	call	set_double_array_element
 jmp .UNIQUE2578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2578: 
	movq	-72(%rbp), %rax
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
	call	get_int
 jmp .UNIQUE2581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2581: 
	leal	1(%rax), %edx
 jmp .UNIQUE2582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2582: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2583: 
	movl	%edx, %esi
 jmp .UNIQUE2584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2584: 
	movq	%rax, %rdi
 jmp .UNIQUE2585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2585: 
	call	set_int
.L208:
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
	movslq	%eax, %rbx
 jmp .UNIQUE2590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2590: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2591: 
	movq	%rax, %rdi
 jmp .UNIQUE2592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2592: 
	call	get_long_int
 jmp .UNIQUE2593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2593: 
	cmpq	%rax, %rbx
 jmp .UNIQUE2594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2594: 
	jl	.L209
 jmp .UNIQUE2595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2595: 
	movl	$.LC68, %edi
 jmp .UNIQUE2596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2596: 
	call	puts
 jmp .UNIQUE2597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2597: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2598: 
	movl	$0, %esi
 jmp .UNIQUE2599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2599: 
	movq	%rax, %rdi
 jmp .UNIQUE2600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2600: 
	call	set_int
 jmp .UNIQUE2601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2601: 
	jmp	.L210
.L211:
 jmp .UNIQUE2602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2602: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2603: 
	movq	%rax, %rdi
 jmp .UNIQUE2604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2604: 
	call	get_int
 jmp .UNIQUE2605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2605: 
	movslq	%eax, %rdx
 jmp .UNIQUE2606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2606: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2607: 
	movq	%rdx, %rsi
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
	call	get_int_array_element
 jmp .UNIQUE2610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2610: 
	movl	%eax, %esi
 jmp .UNIQUE2611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2611: 
	movl	$.LC22, %edi
 jmp .UNIQUE2612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2612: 
	movl	$0, %eax
 jmp .UNIQUE2613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2613: 
	call	printf
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
	movq	%rax, %rdi
 jmp .UNIQUE2616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2616: 
	call	get_int
 jmp .UNIQUE2617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2617: 
	leal	1(%rax), %edx
 jmp .UNIQUE2618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2618: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2619: 
	movl	%edx, %esi
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
	call	set_int
.L210:
 jmp .UNIQUE2622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2622: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2623: 
	movq	%rax, %rdi
 jmp .UNIQUE2624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2624: 
	call	get_int
 jmp .UNIQUE2625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2625: 
	movslq	%eax, %rbx
 jmp .UNIQUE2626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2626: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2627: 
	movq	%rax, %rdi
 jmp .UNIQUE2628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2628: 
	call	get_long_int
 jmp .UNIQUE2629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2629: 
	cmpq	%rax, %rbx
 jmp .UNIQUE2630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2630: 
	jl	.L211
 jmp .UNIQUE2631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2631: 
	movl	$10, %edi
 jmp .UNIQUE2632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2632: 
	call	putchar
 jmp .UNIQUE2633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2633: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2634: 
	movl	$0, %esi
 jmp .UNIQUE2635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2635: 
	movq	%rax, %rdi
 jmp .UNIQUE2636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2636: 
	call	set_int
 jmp .UNIQUE2637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2637: 
	jmp	.L212
.L213:
 jmp .UNIQUE2638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2638: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2639: 
	movq	%rax, %rdi
 jmp .UNIQUE2640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2640: 
	call	get_int
 jmp .UNIQUE2641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2641: 
	movslq	%eax, %rdx
 jmp .UNIQUE2642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2642: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2643: 
	movq	%rdx, %rsi
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
	call	get_double_array_element
 jmp .UNIQUE2646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2646: 
	movsd	%xmm0, -88(%rbp)
 jmp .UNIQUE2647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2647: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE2648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2648: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE2649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2649: 
	movsd	-88(%rbp), %xmm0
 jmp .UNIQUE2650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2650: 
	movl	$.LC69, %edi
 jmp .UNIQUE2651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2651: 
	movl	$1, %eax
 jmp .UNIQUE2652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2652: 
	call	printf
 jmp .UNIQUE2653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2653: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2654: 
	movq	%rax, %rdi
 jmp .UNIQUE2655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2655: 
	call	get_int
 jmp .UNIQUE2656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2656: 
	leal	1(%rax), %edx
 jmp .UNIQUE2657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2657: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2658: 
	movl	%edx, %esi
 jmp .UNIQUE2659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2659: 
	movq	%rax, %rdi
 jmp .UNIQUE2660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2660: 
	call	set_int
.L212:
 jmp .UNIQUE2661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2661: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2662: 
	movq	%rax, %rdi
 jmp .UNIQUE2663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2663: 
	call	get_int
 jmp .UNIQUE2664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2664: 
	movslq	%eax, %rbx
 jmp .UNIQUE2665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2665: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2666: 
	movq	%rax, %rdi
 jmp .UNIQUE2667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2667: 
	call	get_long_int
 jmp .UNIQUE2668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2668: 
	cmpq	%rax, %rbx
 jmp .UNIQUE2669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2669: 
	jl	.L213
 jmp .UNIQUE2670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2670: 
	movl	$10, %edi
 jmp .UNIQUE2671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2671: 
	call	putchar
 jmp .UNIQUE2672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2672: 
	movl	$.LC70, %edi
 jmp .UNIQUE2673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2673: 
	call	puts
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
	movl	$0, %esi
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
 jmp .UNIQUE2678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2678: 
	jmp	.L214
.L215:
 jmp .UNIQUE2679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2679: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2680: 
	movq	%rax, %rdi
 jmp .UNIQUE2681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2681: 
	call	get_int
 jmp .UNIQUE2682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2682: 
	cltq
 jmp .UNIQUE2683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2683: 
	salq	$3, %rax
 jmp .UNIQUE2684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2684: 
	movq	%rax, %rdx
 jmp .UNIQUE2685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2685: 
	leaq	-80(%rbp), %rcx
 jmp .UNIQUE2686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2686: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2687: 
	movq	%rax, %rsi
 jmp .UNIQUE2688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2688: 
	movl	$8, %edi
 jmp .UNIQUE2689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2689: 
	call	get_arbitrary_block_in_heap_with_offset
 jmp .UNIQUE2690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2690: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2691: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE2692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2692: 
	movsd	-88(%rbp), %xmm0
 jmp .UNIQUE2693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2693: 
	movl	$.LC69, %edi
 jmp .UNIQUE2694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2694: 
	movl	$1, %eax
 jmp .UNIQUE2695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2695: 
	call	printf
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
	leal	1(%rax), %edx
 jmp .UNIQUE2700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2700: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2701: 
	movl	%edx, %esi
 jmp .UNIQUE2702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2702: 
	movq	%rax, %rdi
 jmp .UNIQUE2703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2703: 
	call	set_int
.L214:
 jmp .UNIQUE2704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2704: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2705: 
	movq	%rax, %rdi
 jmp .UNIQUE2706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2706: 
	call	get_int
 jmp .UNIQUE2707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2707: 
	movslq	%eax, %rbx
 jmp .UNIQUE2708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2708: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2709: 
	movq	%rax, %rdi
 jmp .UNIQUE2710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2710: 
	call	get_long_int
 jmp .UNIQUE2711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2711: 
	cmpq	%rax, %rbx
 jmp .UNIQUE2712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2712: 
	jl	.L215
 jmp .UNIQUE2713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2713: 
	movl	$10, %edi
 jmp .UNIQUE2714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2714: 
	call	putchar
 jmp .UNIQUE2715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2715: 
	movl	$.LC71, %edi
 jmp .UNIQUE2716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2716: 
	call	puts
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
	movq	%rax, %rdi
 jmp .UNIQUE2719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2719: 
	call	managed_secure_free
 jmp .UNIQUE2720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2720: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2721: 
	movq	%rax, %rdi
 jmp .UNIQUE2722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2722: 
	call	managed_secure_free
 jmp .UNIQUE2723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2723: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2724: 
	movq	%rax, %rdi
 jmp .UNIQUE2725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2725: 
	call	managed_secure_free
 jmp .UNIQUE2726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2726: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2727: 
	movq	%rax, %rdi
 jmp .UNIQUE2728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2728: 
	call	managed_secure_free
 jmp .UNIQUE2729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2729: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2730: 
	movq	%rax, %rdi
 jmp .UNIQUE2731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2731: 
	call	managed_secure_free
 jmp .UNIQUE2732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2732: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2733: 
	movq	%rax, %rdi
 jmp .UNIQUE2734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2734: 
	call	managed_secure_free
 jmp .UNIQUE2735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2735: 
	addq	$88, %rsp
 jmp .UNIQUE2736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2736: 
	popq	%rbx
 jmp .UNIQUE2737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2737: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2738: 
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
 jmp .UNIQUE2739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2739: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2740: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2741: 
	subq	$64, %rsp
 jmp .UNIQUE2742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2742: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE2743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2743: 
	movl	$4, %edi
 jmp .UNIQUE2744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2744: 
	call	malloc
 jmp .UNIQUE2745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2745: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE2746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2746: 
	movl	$8, %edi
 jmp .UNIQUE2747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2747: 
	call	malloc
 jmp .UNIQUE2748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2748: 
	movq	%rax, -24(%rbp)
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
	movq	-56(%rbp), %rdx
 jmp .UNIQUE2751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2751: 
	movq	%rdx, (%rax)
 jmp .UNIQUE2752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2752: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2753: 
	movq	(%rax), %rax
 jmp .UNIQUE2754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2754: 
	salq	$2, %rax
 jmp .UNIQUE2755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2755: 
	movq	%rax, %rdi
 jmp .UNIQUE2756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2756: 
	call	malloc
 jmp .UNIQUE2757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2757: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE2758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2758: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2759: 
	movq	(%rax), %rax
 jmp .UNIQUE2760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2760: 
	salq	$2, %rax
 jmp .UNIQUE2761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2761: 
	movq	%rax, %rdi
 jmp .UNIQUE2762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2762: 
	call	malloc
 jmp .UNIQUE2763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2763: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE2764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2764: 
	movl	$0, -36(%rbp)
 jmp .UNIQUE2765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2765: 
	jmp	.L217
.L220:
 jmp .UNIQUE2766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2766: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2767: 
	movl	$0, (%rax)
 jmp .UNIQUE2768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2768: 
	jmp	.L218
.L219:
 jmp .UNIQUE2769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2769: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2770: 
	movl	(%rax), %eax
 jmp .UNIQUE2771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2771: 
	cltq
 jmp .UNIQUE2772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2772: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE2773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2773: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE2774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2774: 
	addq	%rax, %rdx
 jmp .UNIQUE2775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2775: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2776: 
	movl	(%rax), %eax
 jmp .UNIQUE2777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2777: 
	addl	%eax, %eax
 jmp .UNIQUE2778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2778: 
	movl	%eax, (%rdx)
 jmp .UNIQUE2779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2779: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2780: 
	movl	(%rax), %eax
 jmp .UNIQUE2781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2781: 
	cltq
 jmp .UNIQUE2782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2782: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE2783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2783: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2784: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE2785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2785: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2786: 
	movl	(%rax), %edx
 jmp .UNIQUE2787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2787: 
	movl	%edx, %eax
 jmp .UNIQUE2788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2788: 
	addl	%eax, %eax
 jmp .UNIQUE2789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2789: 
	addl	%edx, %eax
 jmp .UNIQUE2790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2790: 
	movl	%eax, (%rcx)
 jmp .UNIQUE2791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2791: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2792: 
	movl	(%rax), %eax
 jmp .UNIQUE2793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2793: 
	cltq
 jmp .UNIQUE2794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2794: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE2795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2795: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE2796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2796: 
	addq	%rax, %rdx
 jmp .UNIQUE2797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2797: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2798: 
	movl	(%rax), %eax
 jmp .UNIQUE2799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2799: 
	cltq
 jmp .UNIQUE2800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2800: 
	leaq	0(,%rax,4), %rcx
 jmp .UNIQUE2801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2801: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE2802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2802: 
	addq	%rcx, %rax
 jmp .UNIQUE2803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2803: 
	movl	(%rax), %ecx
 jmp .UNIQUE2804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2804: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2805: 
	movl	(%rax), %eax
 jmp .UNIQUE2806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2806: 
	cltq
 jmp .UNIQUE2807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2807: 
	leaq	0(,%rax,4), %rsi
 jmp .UNIQUE2808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2808: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2809: 
	addq	%rsi, %rax
 jmp .UNIQUE2810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2810: 
	movl	(%rax), %eax
 jmp .UNIQUE2811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2811: 
	addl	%ecx, %eax
 jmp .UNIQUE2812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2812: 
	movl	%eax, (%rdx)
 jmp .UNIQUE2813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2813: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2814: 
	movl	(%rax), %eax
 jmp .UNIQUE2815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2815: 
	leal	1(%rax), %edx
 jmp .UNIQUE2816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2816: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2817: 
	movl	%edx, (%rax)
.L218:
 jmp .UNIQUE2818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2818: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2819: 
	movl	(%rax), %eax
 jmp .UNIQUE2820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2820: 
	movslq	%eax, %rdx
 jmp .UNIQUE2821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2821: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2822: 
	movq	(%rax), %rax
 jmp .UNIQUE2823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2823: 
	cmpq	%rax, %rdx
 jmp .UNIQUE2824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2824: 
	jl	.L219
 jmp .UNIQUE2825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2825: 
	addl	$1, -36(%rbp)
.L217:
 jmp .UNIQUE2826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2826: 
	cmpl	$99999, -36(%rbp)
 jmp .UNIQUE2827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2827: 
	jle	.L220
 jmp .UNIQUE2828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2828: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2829: 
	movq	%rax, %rdi
 jmp .UNIQUE2830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2830: 
	call	free
 jmp .UNIQUE2831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2831: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2832: 
	movq	%rax, %rdi
 jmp .UNIQUE2833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2833: 
	call	free
 jmp .UNIQUE2834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2834: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE2835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2835: 
	movq	%rax, %rdi
 jmp .UNIQUE2836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2836: 
	call	free
 jmp .UNIQUE2837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2837: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2838: 
	movq	%rax, %rdi
 jmp .UNIQUE2839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2839: 
	call	free
 jmp .UNIQUE2840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2840: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2841: 
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
 jmp .UNIQUE2842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2842: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2843: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2844: 
	pushq	%rbx
 jmp .UNIQUE2845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2845: 
	subq	$72, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE2846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2846: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE2847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2847: 
	movl	$457, %edx
 jmp .UNIQUE2848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2848: 
	movl	$__func__.5455, %esi
 jmp .UNIQUE2849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2849: 
	movl	$4, %edi
 jmp .UNIQUE2850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2850: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2851: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE2852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2852: 
	movl	$458, %edx
 jmp .UNIQUE2853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2853: 
	movl	$__func__.5455, %esi
 jmp .UNIQUE2854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2854: 
	movl	$8, %edi
 jmp .UNIQUE2855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2855: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2856: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE2857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2857: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE2858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2858: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2859: 
	movq	%rdx, %rsi
 jmp .UNIQUE2860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2860: 
	movq	%rax, %rdi
 jmp .UNIQUE2861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2861: 
	call	set_long_int
 jmp .UNIQUE2862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2862: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2863: 
	movq	%rax, %rdi
 jmp .UNIQUE2864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2864: 
	call	get_long_int
 jmp .UNIQUE2865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2865: 
	salq	$2, %rax
 jmp .UNIQUE2866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2866: 
	movl	$461, %edx
 jmp .UNIQUE2867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2867: 
	movl	$__func__.5455, %esi
 jmp .UNIQUE2868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2868: 
	movq	%rax, %rdi
 jmp .UNIQUE2869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2869: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2870: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE2871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2871: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2872: 
	movq	%rax, %rdi
 jmp .UNIQUE2873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2873: 
	call	get_long_int
 jmp .UNIQUE2874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2874: 
	salq	$2, %rax
 jmp .UNIQUE2875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2875: 
	movl	$462, %edx
 jmp .UNIQUE2876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2876: 
	movl	$__func__.5455, %esi
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
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2879: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2880: 
	movl	$0, -52(%rbp)
 jmp .UNIQUE2881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2881: 
	jmp	.L222
.L225:
 jmp .UNIQUE2882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2882: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2883: 
	movl	$0, %esi
 jmp .UNIQUE2884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2884: 
	movq	%rax, %rdi
 jmp .UNIQUE2885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2885: 
	call	set_int
 jmp .UNIQUE2886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2886: 
	jmp	.L223
.L224:
 jmp .UNIQUE2887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2887: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2888: 
	movq	%rax, %rdi
 jmp .UNIQUE2889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2889: 
	call	get_int
 jmp .UNIQUE2890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2890: 
	leal	(%rax,%rax), %ebx
 jmp .UNIQUE2891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2891: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2892: 
	movq	%rax, %rdi
 jmp .UNIQUE2893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2893: 
	call	get_int
 jmp .UNIQUE2894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2894: 
	movslq	%eax, %rcx
 jmp .UNIQUE2895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2895: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2896: 
	movl	%ebx, %edx
 jmp .UNIQUE2897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2897: 
	movq	%rcx, %rsi
 jmp .UNIQUE2898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2898: 
	movq	%rax, %rdi
 jmp .UNIQUE2899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2899: 
	call	set_int_array_element
 jmp .UNIQUE2900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2900: 
	movq	-48(%rbp), %rax
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
	call	get_int
 jmp .UNIQUE2903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2903: 
	movl	%eax, %edx
 jmp .UNIQUE2904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2904: 
	movl	%edx, %eax
 jmp .UNIQUE2905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2905: 
	addl	%eax, %eax
 jmp .UNIQUE2906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2906: 
	leal	(%rax,%rdx), %ebx
 jmp .UNIQUE2907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2907: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2908: 
	movq	%rax, %rdi
 jmp .UNIQUE2909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2909: 
	call	get_int
 jmp .UNIQUE2910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2910: 
	movslq	%eax, %rcx
 jmp .UNIQUE2911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2911: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2912: 
	movl	%ebx, %edx
 jmp .UNIQUE2913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2913: 
	movq	%rcx, %rsi
 jmp .UNIQUE2914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2914: 
	movq	%rax, %rdi
 jmp .UNIQUE2915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2915: 
	call	set_int_array_element
 jmp .UNIQUE2916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2916: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2917: 
	movq	%rax, %rdi
 jmp .UNIQUE2918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2918: 
	call	get_int
 jmp .UNIQUE2919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2919: 
	movslq	%eax, %rdx
 jmp .UNIQUE2920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2920: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2921: 
	movq	%rdx, %rsi
 jmp .UNIQUE2922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2922: 
	movq	%rax, %rdi
 jmp .UNIQUE2923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2923: 
	call	get_int_array_element
 jmp .UNIQUE2924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2924: 
	movl	%eax, %ebx
 jmp .UNIQUE2925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2925: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2926: 
	movq	%rax, %rdi
 jmp .UNIQUE2927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2927: 
	call	get_int
 jmp .UNIQUE2928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2928: 
	movslq	%eax, %rdx
 jmp .UNIQUE2929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2929: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2930: 
	movq	%rdx, %rsi
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
	call	get_int_array_element
 jmp .UNIQUE2933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2933: 
	addl	%eax, %ebx
 jmp .UNIQUE2934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2934: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2935: 
	movq	%rax, %rdi
 jmp .UNIQUE2936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2936: 
	call	get_int
 jmp .UNIQUE2937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2937: 
	movslq	%eax, %rcx
 jmp .UNIQUE2938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2938: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2939: 
	movl	%ebx, %edx
 jmp .UNIQUE2940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2940: 
	movq	%rcx, %rsi
 jmp .UNIQUE2941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2941: 
	movq	%rax, %rdi
 jmp .UNIQUE2942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2942: 
	call	set_int_array_element
 jmp .UNIQUE2943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2943: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2944: 
	movq	%rax, %rdi
 jmp .UNIQUE2945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2945: 
	call	get_int
 jmp .UNIQUE2946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2946: 
	leal	1(%rax), %edx
 jmp .UNIQUE2947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2947: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2948: 
	movl	%edx, %esi
 jmp .UNIQUE2949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2949: 
	movq	%rax, %rdi
 jmp .UNIQUE2950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2950: 
	call	set_int
.L223:
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
	movslq	%eax, %rbx
 jmp .UNIQUE2955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2955: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2956: 
	movq	%rax, %rdi
 jmp .UNIQUE2957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2957: 
	call	get_long_int
 jmp .UNIQUE2958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2958: 
	cmpq	%rax, %rbx
 jmp .UNIQUE2959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2959: 
	jl	.L224
 jmp .UNIQUE2960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2960: 
	addl	$1, -52(%rbp)
.L222:
 jmp .UNIQUE2961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2961: 
	cmpl	$99999, -52(%rbp)
 jmp .UNIQUE2962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2962: 
	jle	.L225
 jmp .UNIQUE2963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2963: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2964: 
	movq	%rax, %rdi
 jmp .UNIQUE2965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2965: 
	call	managed_secure_free
 jmp .UNIQUE2966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2966: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2967: 
	movq	%rax, %rdi
 jmp .UNIQUE2968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2968: 
	call	managed_secure_free
 jmp .UNIQUE2969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2969: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2970: 
	movq	%rax, %rdi
 jmp .UNIQUE2971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2971: 
	call	managed_secure_free
 jmp .UNIQUE2972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2972: 
	movq	-24(%rbp), %rax
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
	call	managed_secure_free
 jmp .UNIQUE2975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2975: 
	addq	$72, %rsp
 jmp .UNIQUE2976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2976: 
	popq	%rbx
 jmp .UNIQUE2977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2977: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2978: 
	ret
	.cfi_endproc
.LFE65:
	.size	adding_heap_arrays_time_measure, .-adding_heap_arrays_time_measure
	.section	.rodata
.LC74:
	.string	"(pointercount-1)/4)= %.8lf\n"
.LC75:
	.string	"Got result: %.8lf\n"
	.text
	.globl	multiple_simple_mallocs_and_frees
	.type	multiple_simple_mallocs_and_frees, @function
multiple_simple_mallocs_and_frees:
.LFB66:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2979: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2980: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2981: 
	pushq	%rbx
 jmp .UNIQUE2982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2982: 
	subq	$56, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE2983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2983: 
	movl	%edi, -52(%rbp)
 jmp .UNIQUE2984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2984: 
	movl	%esi, -56(%rbp)
 jmp .UNIQUE2985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2985: 
	movl	$0, %eax
 jmp .UNIQUE2986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2986: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE2987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2987: 
	movl	$0, %edi
 jmp .UNIQUE2988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2988: 
	call	time
 jmp .UNIQUE2989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2989: 
	movl	%eax, %edi
 jmp .UNIQUE2990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2990: 
	call	srand
 jmp .UNIQUE2991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2991: 
	movl	-56(%rbp), %eax
 jmp .UNIQUE2992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2992: 
	cltq
 jmp .UNIQUE2993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2993: 
	salq	$3, %rax
 jmp .UNIQUE2994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2994: 
	movl	$489, %edx
 jmp .UNIQUE2995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2995: 
	movl	$__func__.5470, %esi
 jmp .UNIQUE2996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2996: 
	movq	%rax, %rdi
 jmp .UNIQUE2997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2997: 
	call	error_checking_malloc
 jmp .UNIQUE2998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2998: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2999: 
	movl	$0, -40(%rbp)
 jmp .UNIQUE3000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3000: 
	jmp	.L227
.L228:
 jmp .UNIQUE3001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3001: 
	movl	-40(%rbp), %eax
 jmp .UNIQUE3002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3002: 
	cltq
 jmp .UNIQUE3003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3003: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3004: 
	movq	-24(%rbp), %rax
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
	movq	$0, (%rax)
 jmp .UNIQUE3007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3007: 
	addl	$1, -40(%rbp)
.L227:
 jmp .UNIQUE3008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3008: 
	movl	-40(%rbp), %eax
 jmp .UNIQUE3009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3009: 
	cmpl	-56(%rbp), %eax
 jmp .UNIQUE3010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3010: 
	jl	.L228
 jmp .UNIQUE3011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3011: 
	movl	$0, -40(%rbp)
 jmp .UNIQUE3012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3012: 
	jmp	.L229
.L232:
 jmp .UNIQUE3013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3013: 
	call	rand
 jmp .UNIQUE3014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3014: 
	cltd
 jmp .UNIQUE3015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3015: 
	idivl	-56(%rbp)
 jmp .UNIQUE3016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3016: 
	movl	%edx, -36(%rbp)
 jmp .UNIQUE3017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3017: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE3018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3018: 
	cltq
 jmp .UNIQUE3019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3019: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3020: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3021: 
	addq	%rdx, %rax
 jmp .UNIQUE3022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3022: 
	movq	(%rax), %rax
 jmp .UNIQUE3023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3023: 
	testq	%rax, %rax
 jmp .UNIQUE3024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3024: 
	jne	.L230
 jmp .UNIQUE3025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3025: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE3026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3026: 
	cltq
 jmp .UNIQUE3027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3027: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3028: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3029: 
	leaq	(%rdx,%rax), %rbx
 jmp .UNIQUE3030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3030: 
	movl	$501, %edx
 jmp .UNIQUE3031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3031: 
	movl	$__func__.5470, %esi
 jmp .UNIQUE3032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3032: 
	movl	$8, %edi
 jmp .UNIQUE3033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3033: 
	call	error_checking_malloc
 jmp .UNIQUE3034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3034: 
	movq	%rax, (%rbx)
 jmp .UNIQUE3035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3035: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE3036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3036: 
	cltq
 jmp .UNIQUE3037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3037: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3038: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3039: 
	addq	%rdx, %rax
 jmp .UNIQUE3040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3040: 
	movq	(%rax), %rax
 jmp .UNIQUE3041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3041: 
	cvtsi2sd	-36(%rbp), %xmm0
 jmp .UNIQUE3042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3042: 
	movsd	%xmm0, (%rax)
 jmp .UNIQUE3043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3043: 
	jmp	.L231
.L230:
 jmp .UNIQUE3044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3044: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE3045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3045: 
	cltq
 jmp .UNIQUE3046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3046: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3047: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3048: 
	addq	%rdx, %rax
 jmp .UNIQUE3049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3049: 
	movq	(%rax), %rax
 jmp .UNIQUE3050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3050: 
	movsd	(%rax), %xmm0
 jmp .UNIQUE3051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3051: 
	movsd	-32(%rbp), %xmm1
 jmp .UNIQUE3052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3052: 
	addsd	%xmm1, %xmm0
 jmp .UNIQUE3053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3053: 
	movsd	%xmm0, -32(%rbp)
 jmp .UNIQUE3054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3054: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE3055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3055: 
	cltq
 jmp .UNIQUE3056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3056: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3057: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3058: 
	addq	%rdx, %rax
 jmp .UNIQUE3059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3059: 
	movq	(%rax), %rax
 jmp .UNIQUE3060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3060: 
	movq	%rax, %rdi
 jmp .UNIQUE3061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3061: 
	call	free
 jmp .UNIQUE3062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3062: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE3063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3063: 
	cltq
 jmp .UNIQUE3064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3064: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3065: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3066: 
	addq	%rdx, %rax
 jmp .UNIQUE3067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3067: 
	movq	$0, (%rax)
.L231:
 jmp .UNIQUE3068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3068: 
	addl	$1, -40(%rbp)
.L229:
 jmp .UNIQUE3069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3069: 
	movl	-40(%rbp), %eax
 jmp .UNIQUE3070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3070: 
	cmpl	-52(%rbp), %eax
 jmp .UNIQUE3071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3071: 
	jl	.L232
 jmp .UNIQUE3072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3072: 
	movl	-56(%rbp), %eax
 jmp .UNIQUE3073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3073: 
	subl	$1, %eax
 jmp .UNIQUE3074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3074: 
	cvtsi2sd	%eax, %xmm0
 jmp .UNIQUE3075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3075: 
	movsd	.LC73(%rip), %xmm1
 jmp .UNIQUE3076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3076: 
	divsd	%xmm1, %xmm0
 jmp .UNIQUE3077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3077: 
	movl	$.LC74, %edi
 jmp .UNIQUE3078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3078: 
	movl	$1, %eax
 jmp .UNIQUE3079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3079: 
	call	printf
 jmp .UNIQUE3080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3080: 
	cvtsi2sd	-52(%rbp), %xmm0
 jmp .UNIQUE3081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3081: 
	movsd	-32(%rbp), %xmm1
 jmp .UNIQUE3082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3082: 
	divsd	%xmm0, %xmm1
 jmp .UNIQUE3083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3083: 
	movapd	%xmm1, %xmm0
 jmp .UNIQUE3084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3084: 
	movl	$.LC75, %edi
 jmp .UNIQUE3085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3085: 
	movl	$1, %eax
 jmp .UNIQUE3086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3086: 
	call	printf
 jmp .UNIQUE3087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3087: 
	addq	$56, %rsp
 jmp .UNIQUE3088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3088: 
	popq	%rbx
 jmp .UNIQUE3089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3089: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3090: 
	ret
	.cfi_endproc
.LFE66:
	.size	multiple_simple_mallocs_and_frees, .-multiple_simple_mallocs_and_frees
	.globl	multiple_secure_mallocs_and_frees
	.type	multiple_secure_mallocs_and_frees, @function
multiple_secure_mallocs_and_frees:
.LFB67:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3091: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3092: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3093: 
	subq	$48, %rsp
 jmp .UNIQUE3094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3094: 
	movl	%edi, -36(%rbp)
 jmp .UNIQUE3095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3095: 
	movl	%esi, -40(%rbp)
 jmp .UNIQUE3096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3096: 
	movl	$0, %eax
 jmp .UNIQUE3097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3097: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE3098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3098: 
	movl	$0, %edi
 jmp .UNIQUE3099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3099: 
	call	time
 jmp .UNIQUE3100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3100: 
	movl	%eax, %edi
 jmp .UNIQUE3101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3101: 
	call	srand
 jmp .UNIQUE3102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3102: 
	movl	-40(%rbp), %eax
 jmp .UNIQUE3103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3103: 
	cltq
 jmp .UNIQUE3104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3104: 
	salq	$3, %rax
 jmp .UNIQUE3105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3105: 
	movl	$528, %edx
 jmp .UNIQUE3106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3106: 
	movl	$__func__.5485, %esi
 jmp .UNIQUE3107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3107: 
	movq	%rax, %rdi
 jmp .UNIQUE3108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3108: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE3109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3109: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3110: 
	movl	$0, -24(%rbp)
 jmp .UNIQUE3111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3111: 
	jmp	.L234
.L235:
 jmp .UNIQUE3112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3112: 
	movl	-24(%rbp), %eax
 jmp .UNIQUE3113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3113: 
	movslq	%eax, %rcx
 jmp .UNIQUE3114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3114: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3115: 
	movl	$0, %edx
 jmp .UNIQUE3116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3116: 
	movq	%rcx, %rsi
 jmp .UNIQUE3117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3117: 
	movq	%rax, %rdi
 jmp .UNIQUE3118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3118: 
	call	set_pointer_array_element
 jmp .UNIQUE3119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3119: 
	addl	$1, -24(%rbp)
.L234:
 jmp .UNIQUE3120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3120: 
	movl	-24(%rbp), %eax
 jmp .UNIQUE3121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3121: 
	cmpl	-40(%rbp), %eax
 jmp .UNIQUE3122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3122: 
	jl	.L235
 jmp .UNIQUE3123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3123: 
	movl	$0, -24(%rbp)
 jmp .UNIQUE3124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3124: 
	jmp	.L236
.L239:
 jmp .UNIQUE3125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3125: 
	call	rand
 jmp .UNIQUE3126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3126: 
	cltd
 jmp .UNIQUE3127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3127: 
	idivl	-40(%rbp)
 jmp .UNIQUE3128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3128: 
	movl	%edx, -20(%rbp)
 jmp .UNIQUE3129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3129: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE3130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3130: 
	movslq	%eax, %rdx
 jmp .UNIQUE3131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3131: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3132: 
	movq	%rdx, %rsi
 jmp .UNIQUE3133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3133: 
	movq	%rax, %rdi
 jmp .UNIQUE3134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3134: 
	call	get_pointer_array_element
 jmp .UNIQUE3135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3135: 
	testq	%rax, %rax
 jmp .UNIQUE3136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3136: 
	jne	.L237
 jmp .UNIQUE3137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3137: 
	movl	$540, %edx
 jmp .UNIQUE3138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3138: 
	movl	$__func__.5485, %esi
 jmp .UNIQUE3139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3139: 
	movl	$8, %edi
 jmp .UNIQUE3140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3140: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE3141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3141: 
	movq	%rax, %rdx
 jmp .UNIQUE3142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3142: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE3143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3143: 
	movslq	%eax, %rcx
 jmp .UNIQUE3144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3144: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3145: 
	movq	%rcx, %rsi
 jmp .UNIQUE3146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3146: 
	movq	%rax, %rdi
 jmp .UNIQUE3147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3147: 
	call	set_pointer_array_element
 jmp .UNIQUE3148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3148: 
	cvtsi2sd	-20(%rbp), %xmm2
 jmp .UNIQUE3149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3149: 
	movsd	%xmm2, -48(%rbp)
 jmp .UNIQUE3150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3150: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE3151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3151: 
	movslq	%eax, %rdx
 jmp .UNIQUE3152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3152: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3153: 
	movq	%rdx, %rsi
 jmp .UNIQUE3154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3154: 
	movq	%rax, %rdi
 jmp .UNIQUE3155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3155: 
	call	get_pointer_array_element
 jmp .UNIQUE3156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3156: 
	movsd	-48(%rbp), %xmm0
 jmp .UNIQUE3157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3157: 
	movl	$0, %esi
 jmp .UNIQUE3158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3158: 
	movq	%rax, %rdi
 jmp .UNIQUE3159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3159: 
	call	set_double_array_element
 jmp .UNIQUE3160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3160: 
	jmp	.L238
.L237:
 jmp .UNIQUE3161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3161: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE3162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3162: 
	movslq	%eax, %rdx
 jmp .UNIQUE3163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3163: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3164: 
	movq	%rdx, %rsi
 jmp .UNIQUE3165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3165: 
	movq	%rax, %rdi
 jmp .UNIQUE3166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3166: 
	call	get_pointer_array_element
 jmp .UNIQUE3167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3167: 
	movl	$0, %esi
 jmp .UNIQUE3168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3168: 
	movq	%rax, %rdi
 jmp .UNIQUE3169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3169: 
	call	get_double_array_element
 jmp .UNIQUE3170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3170: 
	movsd	-16(%rbp), %xmm1
 jmp .UNIQUE3171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3171: 
	addsd	%xmm1, %xmm0
 jmp .UNIQUE3172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3172: 
	movsd	%xmm0, -16(%rbp)
 jmp .UNIQUE3173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3173: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE3174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3174: 
	movslq	%eax, %rdx
 jmp .UNIQUE3175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3175: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3176: 
	movq	%rdx, %rsi
 jmp .UNIQUE3177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3177: 
	movq	%rax, %rdi
 jmp .UNIQUE3178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3178: 
	call	get_pointer_array_element
 jmp .UNIQUE3179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3179: 
	movq	%rax, %rdi
 jmp .UNIQUE3180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3180: 
	call	managed_secure_free
 jmp .UNIQUE3181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3181: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE3182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3182: 
	movslq	%eax, %rcx
 jmp .UNIQUE3183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3183: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3184: 
	movl	$0, %edx
 jmp .UNIQUE3185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3185: 
	movq	%rcx, %rsi
 jmp .UNIQUE3186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3186: 
	movq	%rax, %rdi
 jmp .UNIQUE3187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3187: 
	call	set_pointer_array_element
.L238:
 jmp .UNIQUE3188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3188: 
	addl	$1, -24(%rbp)
.L236:
 jmp .UNIQUE3189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3189: 
	movl	-24(%rbp), %eax
 jmp .UNIQUE3190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3190: 
	cmpl	-36(%rbp), %eax
 jmp .UNIQUE3191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3191: 
	jl	.L239
 jmp .UNIQUE3192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3192: 
	movl	-40(%rbp), %eax
 jmp .UNIQUE3193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3193: 
	subl	$1, %eax
 jmp .UNIQUE3194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3194: 
	cvtsi2sd	%eax, %xmm0
 jmp .UNIQUE3195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3195: 
	movsd	.LC73(%rip), %xmm1
 jmp .UNIQUE3196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3196: 
	divsd	%xmm1, %xmm0
 jmp .UNIQUE3197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3197: 
	movl	$.LC74, %edi
 jmp .UNIQUE3198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3198: 
	movl	$1, %eax
 jmp .UNIQUE3199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3199: 
	call	printf
 jmp .UNIQUE3200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3200: 
	cvtsi2sd	-36(%rbp), %xmm0
 jmp .UNIQUE3201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3201: 
	movsd	-16(%rbp), %xmm1
 jmp .UNIQUE3202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3202: 
	divsd	%xmm0, %xmm1
 jmp .UNIQUE3203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3203: 
	movapd	%xmm1, %xmm0
 jmp .UNIQUE3204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3204: 
	movl	$.LC75, %edi
 jmp .UNIQUE3205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3205: 
	movl	$1, %eax
 jmp .UNIQUE3206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3206: 
	call	printf
 jmp .UNIQUE3207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3207: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3208: 
	ret
	.cfi_endproc
.LFE67:
	.size	multiple_secure_mallocs_and_frees, .-multiple_secure_mallocs_and_frees
	.comm	total_stack_bytes_allocated,8,8
	.comm	entire_stack_memory_chunk,8,8
	.comm	last_unused_stack_memory,8,8
	.comm	stack_keyshare_input_file,8,8
	.globl	find_number_of_useful_stack_chunks
	.type	find_number_of_useful_stack_chunks, @function
find_number_of_useful_stack_chunks:
.LFB68:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3209: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3210: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3211: 
	movq	%rdi, -40(%rbp)
 jmp .UNIQUE3212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3212: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3213: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE3214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3214: 
	movq	$5, -16(%rbp)
 jmp .UNIQUE3215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3215: 
	movq	$4, -8(%rbp)
 jmp .UNIQUE3216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3216: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3217: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE3218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3218: 
	addq	%rdx, %rax
 jmp .UNIQUE3219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3219: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3220: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE3221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3221: 
	leaq	(%rdx,%rcx), %rsi
 jmp .UNIQUE3222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3222: 
	cqto
 jmp .UNIQUE3223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3223: 
	idivq	%rsi
 jmp .UNIQUE3224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3224: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3225: 
	ret
	.cfi_endproc
.LFE68:
	.size	find_number_of_useful_stack_chunks, .-find_number_of_useful_stack_chunks
	.globl	get_ptr_size
	.type	get_ptr_size, @function
get_ptr_size:
.LFB69:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3226: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3227: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3228: 
	movl	$8, %eax
 jmp .UNIQUE3229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3229: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3230: 
	ret
	.cfi_endproc
.LFE69:
	.size	get_ptr_size, .-get_ptr_size
	.section	.rodata
	.align 8
.LC76:
	.string	"Stack:Attempted to read more keyshares that the ones stored\n"
	.text
	.globl	get_next_stack_keyshare
	.type	get_next_stack_keyshare, @function
get_next_stack_keyshare:
.LFB70:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3231: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3232: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3233: 
	subq	$16, %rsp
 jmp .UNIQUE3234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3234: 
	movq	stack_keyshare_input_file(%rip), %rax
 jmp .UNIQUE3235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3235: 
	movq	%rax, %rdi
 jmp .UNIQUE3236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3236: 
	call	feof
 jmp .UNIQUE3237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3237: 
	testl	%eax, %eax
 jmp .UNIQUE3238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3238: 
	je	.L245
 jmp .UNIQUE3239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3239: 
	movl	$.LC76, %edi
 jmp .UNIQUE3240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3240: 
	call	perror
 jmp .UNIQUE3241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3241: 
	movl	$45, %edi
 jmp .UNIQUE3242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3242: 
	call	exit
.L245:
 jmp .UNIQUE3243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3243: 
	movq	stack_keyshare_input_file(%rip), %rdx
 jmp .UNIQUE3244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3244: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE3245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3245: 
	movq	%rdx, %rcx
 jmp .UNIQUE3246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3246: 
	movl	$1, %edx
 jmp .UNIQUE3247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3247: 
	movl	$1, %esi
 jmp .UNIQUE3248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3248: 
	movq	%rax, %rdi
 jmp .UNIQUE3249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3249: 
	call	fread
 jmp .UNIQUE3250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3250: 
	cmpq	$1, %rax
 jmp .UNIQUE3251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3251: 
	je	.L246
 jmp .UNIQUE3252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3252: 
	movl	$.LC8, %edi
 jmp .UNIQUE3253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3253: 
	call	perror
 jmp .UNIQUE3254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3254: 
	movl	$47, %edi
 jmp .UNIQUE3255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3255: 
	call	exit
.L246:
 jmp .UNIQUE3256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3256: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE3257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3257: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3258: 
	ret
	.cfi_endproc
.LFE70:
	.size	get_next_stack_keyshare, .-get_next_stack_keyshare
	.section	.rodata
	.align 8
.LC77:
	.string	"Stack: Great!. No need to allocate more than the defined amount."
	.align 8
.LC78:
	.string	"Stack: Whoops. We need to allocate a bit more space."
	.text
	.globl	allocate_stack_mem
	.type	allocate_stack_mem, @function
allocate_stack_mem:
.LFB71:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3259: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3260: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3261: 
	pushq	%rbx
 jmp .UNIQUE3262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3262: 
	subq	$56, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE3263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3263: 
	movq	$50000, -56(%rbp)
 jmp .UNIQUE3264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3264: 
	movq	$5, -48(%rbp)
 jmp .UNIQUE3265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3265: 
	movq	$4, -40(%rbp)
 jmp .UNIQUE3266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3266: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3267: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE3268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3268: 
	addq	%rdx, %rax
 jmp .UNIQUE3269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3269: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE3270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3270: 
	movq	-48(%rbp), %rcx
 jmp .UNIQUE3271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3271: 
	leaq	(%rdx,%rcx), %rbx
 jmp .UNIQUE3272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3272: 
	cqto
 jmp .UNIQUE3273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3273: 
	idivq	%rbx
 jmp .UNIQUE3274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3274: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE3275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3275: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3276: 
	imulq	-40(%rbp), %rax
 jmp .UNIQUE3277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3277: 
	movq	%rax, %rdx
 jmp .UNIQUE3278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3278: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3279: 
	subq	$1, %rax
 jmp .UNIQUE3280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3280: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE3281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3281: 
	addq	%rdx, %rax
 jmp .UNIQUE3282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3282: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE3283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3283: 
	jne	.L249
 jmp .UNIQUE3284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3284: 
	movl	$.LC77, %edi
 jmp .UNIQUE3285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3285: 
	call	puts
 jmp .UNIQUE3286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3286: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3287: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE3288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3288: 
	jmp	.L250
.L249:
 jmp .UNIQUE3289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3289: 
	movl	$.LC78, %edi
 jmp .UNIQUE3290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3290: 
	call	puts
 jmp .UNIQUE3291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3291: 
	addq	$1, -32(%rbp)
 jmp .UNIQUE3292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3292: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3293: 
	imulq	-40(%rbp), %rax
 jmp .UNIQUE3294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3294: 
	movq	%rax, %rdx
 jmp .UNIQUE3295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3295: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3296: 
	subq	$1, %rax
 jmp .UNIQUE3297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3297: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE3298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3298: 
	addq	%rdx, %rax
 jmp .UNIQUE3299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3299: 
	movq	%rax, -64(%rbp)
.L250:
 jmp .UNIQUE3300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3300: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE3301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3301: 
	movl	$143, %edx
 jmp .UNIQUE3302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3302: 
	movl	$__func__.5542, %esi
 jmp .UNIQUE3303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3303: 
	movq	%rax, %rdi
 jmp .UNIQUE3304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3304: 
	call	error_checking_malloc
 jmp .UNIQUE3305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3305: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE3306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3306: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE3307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3307: 
	movq	%rax, total_stack_bytes_allocated(%rip)
 jmp .UNIQUE3308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3308: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3309: 
	addq	$56, %rsp
 jmp .UNIQUE3310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3310: 
	popq	%rbx
 jmp .UNIQUE3311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3311: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3312: 
	ret
	.cfi_endproc
.LFE71:
	.size	allocate_stack_mem, .-allocate_stack_mem
	.globl	free_secure_stack_mem
	.type	free_secure_stack_mem, @function
free_secure_stack_mem:
.LFB72:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3313: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3314: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3315: 
	subq	$16, %rsp
 jmp .UNIQUE3316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3316: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE3317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3317: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3318: 
	movq	%rax, %rdi
 jmp .UNIQUE3319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3319: 
	call	free
 jmp .UNIQUE3320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3320: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3321: 
	ret
	.cfi_endproc
.LFE72:
	.size	free_secure_stack_mem, .-free_secure_stack_mem
	.globl	insert_keys_into_stack_mem
	.type	insert_keys_into_stack_mem, @function
insert_keys_into_stack_mem:
.LFB73:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3322: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3323: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3324: 
	pushq	%rbx
 jmp .UNIQUE3325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3325: 
	subq	$72, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE3326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3326: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE3327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3327: 
	movl	$0, -52(%rbp)
 jmp .UNIQUE3328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3328: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE3329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3329: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE3330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3330: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE3331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3331: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE3332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3332: 
	jmp	.L254
.L259:
 jmp .UNIQUE3333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3333: 
	cmpl	$0, -52(%rbp)
 jmp .UNIQUE3334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3334: 
	je	.L255
 jmp .UNIQUE3335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3335: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE3336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3336: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3337: 
	leaq	(%rdx,%rax), %rbx
 jmp .UNIQUE3338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3338: 
	movl	$0, %eax
 jmp .UNIQUE3339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3339: 
	call	get_next_stack_keyshare
 jmp .UNIQUE3340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3340: 
	movb	%al, (%rbx)
 jmp .UNIQUE3341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3341: 
	addq	$1, -32(%rbp)
 jmp .UNIQUE3342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3342: 
	addq	$1, -48(%rbp)
 jmp .UNIQUE3343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3343: 
	jmp	.L256
.L255:
 jmp .UNIQUE3344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3344: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE3345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3345: 
	jmp	.L257
.L258:
 jmp .UNIQUE3346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3346: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3347: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE3348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3348: 
	addq	%rdx, %rax
 jmp .UNIQUE3349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3349: 
	movq	%rax, %rdx
 jmp .UNIQUE3350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3350: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3351: 
	addq	%rdx, %rax
 jmp .UNIQUE3352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3352: 
	movb	$0, (%rax)
 jmp .UNIQUE3353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3353: 
	addq	$1, -40(%rbp)
.L257:
 jmp .UNIQUE3354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3354: 
	cmpq	$3, -40(%rbp)
 jmp .UNIQUE3355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3355: 
	jle	.L258
 jmp .UNIQUE3356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3356: 
	addq	$4, -48(%rbp)
 jmp .UNIQUE3357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3357: 
	movl	$1, -52(%rbp)
.L256:
 jmp .UNIQUE3358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3358: 
	cmpq	$5, -32(%rbp)
 jmp .UNIQUE3359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3359: 
	jne	.L254
 jmp .UNIQUE3360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3360: 
	movl	$0, -52(%rbp)
 jmp .UNIQUE3361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3361: 
	movq	$0, -32(%rbp)
.L254:
 jmp .UNIQUE3362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3362: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE3363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3363: 
	cmpq	%rax, -48(%rbp)
 jmp .UNIQUE3364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3364: 
	jl	.L259
 jmp .UNIQUE3365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3365: 
	addq	$72, %rsp
 jmp .UNIQUE3366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3366: 
	popq	%rbx
 jmp .UNIQUE3367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3367: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3368: 
	ret
	.cfi_endproc
.LFE73:
	.size	insert_keys_into_stack_mem, .-insert_keys_into_stack_mem
	.section	.rodata
.LC79:
	.string	"stack_keyshares"
	.align 8
.LC80:
	.string	"init_mem:stack_keyshares file error\n"
	.text
	.globl	init_stack_mem
	.type	init_stack_mem, @function
init_stack_mem:
.LFB74:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3369: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3370: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3371: 
	subq	$16, %rsp
 jmp .UNIQUE3372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3372: 
	movl	$0, %edi
 jmp .UNIQUE3373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3373: 
	call	time
 jmp .UNIQUE3374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3374: 
	movl	%eax, %edi
 jmp .UNIQUE3375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3375: 
	call	srand
 jmp .UNIQUE3376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3376: 
	movl	$0, %eax
 jmp .UNIQUE3377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3377: 
	call	allocate_stack_mem
 jmp .UNIQUE3378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3378: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3379: 
	movl	$.LC11, %esi
 jmp .UNIQUE3380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3380: 
	movl	$.LC79, %edi
 jmp .UNIQUE3381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3381: 
	call	fopen
 jmp .UNIQUE3382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3382: 
	movq	%rax, stack_keyshare_input_file(%rip)
 jmp .UNIQUE3383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3383: 
	movq	stack_keyshare_input_file(%rip), %rax
 jmp .UNIQUE3384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3384: 
	testq	%rax, %rax
 jmp .UNIQUE3385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3385: 
	jne	.L261
 jmp .UNIQUE3386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3386: 
	movl	$.LC80, %edi
 jmp .UNIQUE3387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3387: 
	call	perror
 jmp .UNIQUE3388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3388: 
	movl	$46, %edi
 jmp .UNIQUE3389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3389: 
	call	exit
.L261:
 jmp .UNIQUE3390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3390: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3391: 
	movq	%rax, %rdi
 jmp .UNIQUE3392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3392: 
	call	insert_keys_into_stack_mem
 jmp .UNIQUE3393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3393: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3394: 
	movq	%rax, entire_stack_memory_chunk(%rip)
 jmp .UNIQUE3395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3395: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3396: 
	movq	%rax, last_unused_stack_memory(%rip)
 jmp .UNIQUE3397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3397: 
	movq	stack_keyshare_input_file(%rip), %rax
 jmp .UNIQUE3398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3398: 
	movq	%rax, %rdi
 jmp .UNIQUE3399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3399: 
	call	fclose
 jmp .UNIQUE3400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3400: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3401: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3402: 
	ret
	.cfi_endproc
.LFE74:
	.size	init_stack_mem, .-init_stack_mem
	.globl	insert_data_into_stack_mem
	.type	insert_data_into_stack_mem, @function
insert_data_into_stack_mem:
.LFB75:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3403: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3404: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3405: 
	subq	$80, %rsp
 jmp .UNIQUE3406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3406: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE3407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3407: 
	movq	%rsi, -64(%rbp)
 jmp .UNIQUE3408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3408: 
	movq	%rdx, -72(%rbp)
 jmp .UNIQUE3409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3409: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE3410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3410: 
	movq	$0, -24(%rbp)
 jmp .UNIQUE3411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3411: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE3412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3412: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE3413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3413: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE3414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3414: 
	jmp	.L264
.L267:
 jmp .UNIQUE3415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3415: 
	addq	$1, -32(%rbp)
 jmp .UNIQUE3416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3416: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3417: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE3418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3418: 
	subq	%rax, %rdx
 jmp .UNIQUE3419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3419: 
	movq	%rdx, %rax
 jmp .UNIQUE3420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3420: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3421: 
	cmpq	$4, -8(%rbp)
 jmp .UNIQUE3422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3422: 
	jg	.L265
 jmp .UNIQUE3423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3423: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3424: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE3425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3425: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE3426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3426: 
	leaq	(%rcx,%rdx), %rsi
 jmp .UNIQUE3427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3427: 
	movq	-40(%rbp), %rcx
 jmp .UNIQUE3428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3428: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE3429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3429: 
	addq	%rdx, %rcx
 jmp .UNIQUE3430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3430: 
	movq	%rax, %rdx
 jmp .UNIQUE3431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3431: 
	movq	%rcx, %rdi
 jmp .UNIQUE3432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3432: 
	call	memcpy
 jmp .UNIQUE3433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3433: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3434: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE3435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3435: 
	jmp	.L266
.L265:
 jmp .UNIQUE3436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3436: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE3437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3437: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE3438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3438: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE3439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3439: 
	movq	-40(%rbp), %rdx
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
	addq	%rdx, %rax
 jmp .UNIQUE3442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3442: 
	movl	$4, %edx
 jmp .UNIQUE3443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3443: 
	movq	%rcx, %rsi
 jmp .UNIQUE3444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3444: 
	movq	%rax, %rdi
 jmp .UNIQUE3445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3445: 
	call	memcpy
 jmp .UNIQUE3446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3446: 
	addq	$4, -24(%rbp)
.L266:
 jmp .UNIQUE3447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3447: 
	addq	$9, -40(%rbp)
.L264:
 jmp .UNIQUE3448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3448: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3449: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE3450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3450: 
	jl	.L267
 jmp .UNIQUE3451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3451: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3452: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3453: 
	ret
	.cfi_endproc
.LFE75:
	.size	insert_data_into_stack_mem, .-insert_data_into_stack_mem
	.globl	get_secure_stack_data
	.type	get_secure_stack_data, @function
get_secure_stack_data:
.LFB76:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3454: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3455: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3456: 
	addq	$-128, %rsp
 jmp .UNIQUE3457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3457: 
	movq	%rdi, -88(%rbp)
 jmp .UNIQUE3458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3458: 
	movq	%rsi, -96(%rbp)
 jmp .UNIQUE3459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3459: 
	movq	%rdx, -104(%rbp)
 jmp .UNIQUE3460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3460: 
	movl	%ecx, -108(%rbp)
 jmp .UNIQUE3461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3461: 
	movq	%r8, -120(%rbp)
 jmp .UNIQUE3462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3462: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE3463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3463: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE3464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3464: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE3465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3465: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE3466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3466: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE3467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3467: 
	cmpl	$2, -108(%rbp)
 jmp .UNIQUE3468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3468: 
	jne	.L270
 jmp .UNIQUE3469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3469: 
	movq	$1, -48(%rbp)
 jmp .UNIQUE3470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3470: 
	jmp	.L271
.L270:
 jmp .UNIQUE3471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3471: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE3472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3472: 
	movq	%rax, -48(%rbp)
.L271:
 jmp .UNIQUE3473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3473: 
	movq	$0, -72(%rbp)
 jmp .UNIQUE3474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3474: 
	cmpl	$0, -108(%rbp)
 jmp .UNIQUE3475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3475: 
	je	.L272
 jmp .UNIQUE3476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3476: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE3477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3477: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE3478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3478: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE3479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3479: 
	testq	%rax, %rax
 jmp .UNIQUE3480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3480: 
	cmovs	%rdx, %rax
 jmp .UNIQUE3481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3481: 
	sarq	$2, %rax
 jmp .UNIQUE3482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3482: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE3483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3483: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3484: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE3485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3485: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE3486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3486: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE3487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3487: 
	cmpq	%rax, %rdx
 jmp .UNIQUE3488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3488: 
	jne	.L273
 jmp .UNIQUE3489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3489: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE3490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3490: 
	movq	%rdx, %rax
 jmp .UNIQUE3491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3491: 
	salq	$3, %rax
 jmp .UNIQUE3492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3492: 
	addq	%rdx, %rax
 jmp .UNIQUE3493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3493: 
	addq	%rax, -64(%rbp)
 jmp .UNIQUE3494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3494: 
	jmp	.L272
.L273:
 jmp .UNIQUE3495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3495: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE3496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3496: 
	movq	%rdx, %rax
 jmp .UNIQUE3497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3497: 
	salq	$3, %rax
 jmp .UNIQUE3498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3498: 
	addq	%rdx, %rax
 jmp .UNIQUE3499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3499: 
	addq	%rax, -64(%rbp)
 jmp .UNIQUE3500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3500: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE3501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3501: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE3502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3502: 
	movq	%rax, %rdx
 jmp .UNIQUE3503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3503: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE3504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3504: 
	movl	$0, %eax
 jmp .UNIQUE3505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3505: 
	subq	%rcx, %rax
 jmp .UNIQUE3506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3506: 
	salq	$2, %rax
 jmp .UNIQUE3507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3507: 
	addq	%rdx, %rax
 jmp .UNIQUE3508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3508: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE3509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3509: 
	movl	$4, %eax
 jmp .UNIQUE3510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3510: 
	subq	-16(%rbp), %rax
 jmp .UNIQUE3511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3511: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE3512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3512: 
	jl	.L274
 jmp .UNIQUE3513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3513: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE3514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3514: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE3515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3515: 
	jmp	.L275
.L274:
 jmp .UNIQUE3516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3516: 
	movl	$4, %eax
 jmp .UNIQUE3517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3517: 
	subq	-16(%rbp), %rax
 jmp .UNIQUE3518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3518: 
	movq	%rax, -40(%rbp)
.L275:
 jmp .UNIQUE3519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3519: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3520: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE3521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3521: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE3522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3522: 
	leaq	(%rcx,%rdx), %rsi
 jmp .UNIQUE3523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3523: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE3524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3524: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3525: 
	addq	%rdx, %rcx
 jmp .UNIQUE3526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3526: 
	movq	%rax, %rdx
 jmp .UNIQUE3527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3527: 
	movq	%rcx, %rdi
 jmp .UNIQUE3528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3528: 
	call	memcpy
 jmp .UNIQUE3529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3529: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3530: 
	addq	%rax, -56(%rbp)
 jmp .UNIQUE3531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3531: 
	addq	$9, -64(%rbp)
 jmp .UNIQUE3532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3532: 
	jmp	.L276
.L272:
 jmp .UNIQUE3533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3533: 
	jmp	.L276
.L279:
 jmp .UNIQUE3534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3534: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3535: 
	movq	-96(%rbp), %rdx
 jmp .UNIQUE3536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3536: 
	subq	%rax, %rdx
 jmp .UNIQUE3537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3537: 
	movq	%rdx, %rax
 jmp .UNIQUE3538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3538: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3539: 
	cmpq	$4, -8(%rbp)
 jmp .UNIQUE3540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3540: 
	jg	.L277
 jmp .UNIQUE3541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3541: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3542: 
	movq	-72(%rbp), %rcx
 jmp .UNIQUE3543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3543: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE3544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3544: 
	leaq	(%rcx,%rdx), %rsi
 jmp .UNIQUE3545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3545: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE3546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3546: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3547: 
	addq	%rdx, %rcx
 jmp .UNIQUE3548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3548: 
	movq	%rax, %rdx
 jmp .UNIQUE3549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3549: 
	movq	%rcx, %rdi
 jmp .UNIQUE3550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3550: 
	call	memcpy
 jmp .UNIQUE3551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3551: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE3552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3552: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE3553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3553: 
	jmp	.L278
.L277:
 jmp .UNIQUE3554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3554: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE3555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3555: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE3556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3556: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE3557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3557: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE3558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3558: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3559: 
	addq	%rdx, %rax
 jmp .UNIQUE3560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3560: 
	movl	$4, %edx
 jmp .UNIQUE3561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3561: 
	movq	%rcx, %rsi
 jmp .UNIQUE3562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3562: 
	movq	%rax, %rdi
 jmp .UNIQUE3563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3563: 
	call	memcpy
 jmp .UNIQUE3564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3564: 
	addq	$4, -56(%rbp)
.L278:
 jmp .UNIQUE3565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3565: 
	addq	$9, -72(%rbp)
.L276:
 jmp .UNIQUE3566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3566: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3567: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE3568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3568: 
	jl	.L279
 jmp .UNIQUE3569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3569: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3570: 
	ret
	.cfi_endproc
.LFE76:
	.size	get_secure_stack_data, .-get_secure_stack_data
	.globl	set_secure_stack_data
	.type	set_secure_stack_data, @function
set_secure_stack_data:
.LFB77:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3571: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3572: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3573: 
	addq	$-128, %rsp
 jmp .UNIQUE3574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3574: 
	movq	%rdi, -88(%rbp)
 jmp .UNIQUE3575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3575: 
	movq	%rsi, -96(%rbp)
 jmp .UNIQUE3576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3576: 
	movq	%rdx, -104(%rbp)
 jmp .UNIQUE3577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3577: 
	movl	%ecx, -108(%rbp)
 jmp .UNIQUE3578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3578: 
	movq	%r8, -120(%rbp)
 jmp .UNIQUE3579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3579: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE3580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3580: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE3581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3581: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE3582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3582: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE3583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3583: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE3584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3584: 
	cmpl	$2, -108(%rbp)
 jmp .UNIQUE3585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3585: 
	jne	.L281
 jmp .UNIQUE3586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3586: 
	movq	$1, -48(%rbp)
 jmp .UNIQUE3587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3587: 
	jmp	.L282
.L281:
 jmp .UNIQUE3588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3588: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE3589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3589: 
	movq	%rax, -48(%rbp)
.L282:
 jmp .UNIQUE3590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3590: 
	movq	$0, -72(%rbp)
 jmp .UNIQUE3591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3591: 
	cmpl	$0, -108(%rbp)
 jmp .UNIQUE3592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3592: 
	je	.L283
 jmp .UNIQUE3593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3593: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE3594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3594: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE3595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3595: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE3596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3596: 
	testq	%rax, %rax
 jmp .UNIQUE3597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3597: 
	cmovs	%rdx, %rax
 jmp .UNIQUE3598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3598: 
	sarq	$2, %rax
 jmp .UNIQUE3599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3599: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE3600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3600: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3601: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE3602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3602: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE3603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3603: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE3604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3604: 
	cmpq	%rax, %rdx
 jmp .UNIQUE3605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3605: 
	jne	.L284
 jmp .UNIQUE3606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3606: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE3607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3607: 
	movq	%rdx, %rax
 jmp .UNIQUE3608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3608: 
	salq	$3, %rax
 jmp .UNIQUE3609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3609: 
	addq	%rdx, %rax
 jmp .UNIQUE3610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3610: 
	addq	%rax, -64(%rbp)
 jmp .UNIQUE3611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3611: 
	jmp	.L283
.L284:
 jmp .UNIQUE3612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3612: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE3613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3613: 
	movq	%rdx, %rax
 jmp .UNIQUE3614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3614: 
	salq	$3, %rax
 jmp .UNIQUE3615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3615: 
	addq	%rdx, %rax
 jmp .UNIQUE3616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3616: 
	addq	%rax, -64(%rbp)
 jmp .UNIQUE3617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3617: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE3618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3618: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE3619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3619: 
	movq	%rax, %rdx
 jmp .UNIQUE3620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3620: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE3621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3621: 
	movl	$0, %eax
 jmp .UNIQUE3622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3622: 
	subq	%rcx, %rax
 jmp .UNIQUE3623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3623: 
	salq	$2, %rax
 jmp .UNIQUE3624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3624: 
	addq	%rdx, %rax
 jmp .UNIQUE3625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3625: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE3626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3626: 
	movl	$4, %eax
 jmp .UNIQUE3627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3627: 
	subq	-16(%rbp), %rax
 jmp .UNIQUE3628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3628: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE3629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3629: 
	jl	.L285
 jmp .UNIQUE3630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3630: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE3631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3631: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE3632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3632: 
	jmp	.L286
.L285:
 jmp .UNIQUE3633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3633: 
	movl	$4, %eax
 jmp .UNIQUE3634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3634: 
	subq	-16(%rbp), %rax
 jmp .UNIQUE3635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3635: 
	movq	%rax, -40(%rbp)
.L286:
 jmp .UNIQUE3636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3636: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3637: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE3638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3638: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3639: 
	leaq	(%rcx,%rdx), %rsi
 jmp .UNIQUE3640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3640: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE3641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3641: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE3642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3642: 
	addq	%rdx, %rcx
 jmp .UNIQUE3643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3643: 
	movq	%rax, %rdx
 jmp .UNIQUE3644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3644: 
	movq	%rcx, %rdi
 jmp .UNIQUE3645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3645: 
	call	memcpy
 jmp .UNIQUE3646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3646: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3647: 
	addq	%rax, -56(%rbp)
 jmp .UNIQUE3648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3648: 
	addq	$9, -64(%rbp)
 jmp .UNIQUE3649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3649: 
	jmp	.L287
.L283:
 jmp .UNIQUE3650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3650: 
	jmp	.L287
.L290:
 jmp .UNIQUE3651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3651: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3652: 
	movq	-96(%rbp), %rdx
 jmp .UNIQUE3653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3653: 
	subq	%rax, %rdx
 jmp .UNIQUE3654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3654: 
	movq	%rdx, %rax
 jmp .UNIQUE3655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3655: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3656: 
	cmpq	$4, -8(%rbp)
 jmp .UNIQUE3657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3657: 
	jg	.L288
 jmp .UNIQUE3658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3658: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3659: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE3660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3660: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3661: 
	leaq	(%rcx,%rdx), %rsi
 jmp .UNIQUE3662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3662: 
	movq	-72(%rbp), %rcx
 jmp .UNIQUE3663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3663: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE3664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3664: 
	addq	%rdx, %rcx
 jmp .UNIQUE3665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3665: 
	movq	%rax, %rdx
 jmp .UNIQUE3666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3666: 
	movq	%rcx, %rdi
 jmp .UNIQUE3667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3667: 
	call	memcpy
 jmp .UNIQUE3668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3668: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE3669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3669: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE3670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3670: 
	jmp	.L289
.L288:
 jmp .UNIQUE3671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3671: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE3672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3672: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3673: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE3674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3674: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE3675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3675: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE3676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3676: 
	addq	%rdx, %rax
 jmp .UNIQUE3677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3677: 
	movl	$4, %edx
 jmp .UNIQUE3678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3678: 
	movq	%rcx, %rsi
 jmp .UNIQUE3679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3679: 
	movq	%rax, %rdi
 jmp .UNIQUE3680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3680: 
	call	memcpy
 jmp .UNIQUE3681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3681: 
	addq	$4, -56(%rbp)
.L289:
 jmp .UNIQUE3682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3682: 
	addq	$9, -72(%rbp)
.L287:
 jmp .UNIQUE3683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3683: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3684: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE3685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3685: 
	jl	.L290
 jmp .UNIQUE3686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3686: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3687: 
	ret
	.cfi_endproc
.LFE77:
	.size	set_secure_stack_data, .-set_secure_stack_data
	.section	.rodata
	.align 8
.LC81:
	.string	"Error:Attempted to allocate more memory than the secure stack size.\n"
	.text
	.globl	allocate_mem_into_secure_stack
	.type	allocate_mem_into_secure_stack, @function
allocate_mem_into_secure_stack:
.LFB78:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3688: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3689: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3690: 
	subq	$64, %rsp
 jmp .UNIQUE3691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3691: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE3692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3692: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3693: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE3694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3694: 
	movq	$5, -32(%rbp)
 jmp .UNIQUE3695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3695: 
	movq	$4, -24(%rbp)
 jmp .UNIQUE3696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3696: 
	movq	last_unused_stack_memory(%rip), %rax
 jmp .UNIQUE3697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3697: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3698: 
	cmpq	$0, -56(%rbp)
 jmp .UNIQUE3699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3699: 
	jne	.L292
 jmp .UNIQUE3700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3700: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE3701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3701: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE3702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3702: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3703: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3704: 
	jmp	.L296
.L292:
 jmp .UNIQUE3705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3705: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3706: 
	cqto
 jmp .UNIQUE3707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3707: 
	idivq	-24(%rbp)
 jmp .UNIQUE3708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3708: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE3709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3709: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3710: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE3711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3711: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE3712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3712: 
	jge	.L294
 jmp .UNIQUE3713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3713: 
	addq	$1, -48(%rbp)
.L294:
 jmp .UNIQUE3714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3714: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3715: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE3716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3716: 
	movq	last_unused_stack_memory(%rip), %rdx
 jmp .UNIQUE3717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3717: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3718: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE3719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3719: 
	addq	%rcx, %rax
 jmp .UNIQUE3720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3720: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE3721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3721: 
	addq	%rdx, %rax
 jmp .UNIQUE3722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3722: 
	movq	%rax, last_unused_stack_memory(%rip)
 jmp .UNIQUE3723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3723: 
	movq	entire_stack_memory_chunk(%rip), %rdx
 jmp .UNIQUE3724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3724: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE3725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3725: 
	addq	%rax, %rdx
 jmp .UNIQUE3726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3726: 
	movq	last_unused_stack_memory(%rip), %rax
 jmp .UNIQUE3727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3727: 
	cmpq	%rax, %rdx
 jmp .UNIQUE3728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3728: 
	ja	.L295
 jmp .UNIQUE3729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3729: 
	movq	last_unused_stack_memory(%rip), %rax
 jmp .UNIQUE3730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3730: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3731: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE3732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3732: 
	addq	%rcx, %rdx
 jmp .UNIQUE3733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3733: 
	imulq	-48(%rbp), %rdx
 jmp .UNIQUE3734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3734: 
	negq	%rdx
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
	movq	%rax, last_unused_stack_memory(%rip)
 jmp .UNIQUE3737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3737: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE3738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3738: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE3739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3739: 
	movq	stderr(%rip), %rax
 jmp .UNIQUE3740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3740: 
	movq	%rax, %rcx
 jmp .UNIQUE3741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3741: 
	movl	$68, %edx
 jmp .UNIQUE3742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3742: 
	movl	$1, %esi
 jmp .UNIQUE3743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3743: 
	movl	$.LC81, %edi
 jmp .UNIQUE3744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3744: 
	call	fwrite
 jmp .UNIQUE3745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3745: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3746: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3747: 
	jmp	.L296
.L295:
 jmp .UNIQUE3748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3748: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3749: 
	movq	-8(%rbp), %rdx
.L296:
 jmp .UNIQUE3750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3750: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3751: 
	ret
	.cfi_endproc
.LFE78:
	.size	allocate_mem_into_secure_stack, .-allocate_mem_into_secure_stack
	.globl	free_mem_from_secure_stack
	.type	free_mem_from_secure_stack, @function
free_mem_from_secure_stack:
.LFB79:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3752: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3753: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3754: 
	movq	%rdi, -40(%rbp)
 jmp .UNIQUE3755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3755: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3756: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE3757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3757: 
	movq	$5, -16(%rbp)
 jmp .UNIQUE3758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3758: 
	movq	$4, -8(%rbp)
 jmp .UNIQUE3759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3759: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3760: 
	cqto
 jmp .UNIQUE3761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3761: 
	idivq	-8(%rbp)
 jmp .UNIQUE3762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3762: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE3763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3763: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3764: 
	imulq	-8(%rbp), %rax
 jmp .UNIQUE3765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3765: 
	cmpq	-40(%rbp), %rax
 jmp .UNIQUE3766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3766: 
	jge	.L298
 jmp .UNIQUE3767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3767: 
	addq	$1, -32(%rbp)
.L298:
 jmp .UNIQUE3768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3768: 
	movq	last_unused_stack_memory(%rip), %rax
 jmp .UNIQUE3769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3769: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE3770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3770: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE3771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3771: 
	addq	%rcx, %rdx
 jmp .UNIQUE3772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3772: 
	imulq	-32(%rbp), %rdx
 jmp .UNIQUE3773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3773: 
	negq	%rdx
 jmp .UNIQUE3774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3774: 
	addq	%rdx, %rax
 jmp .UNIQUE3775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3775: 
	movq	%rax, last_unused_stack_memory(%rip)
 jmp .UNIQUE3776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3776: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3777: 
	ret
	.cfi_endproc
.LFE79:
	.size	free_mem_from_secure_stack, .-free_mem_from_secure_stack
	.globl	free_chunks_from_secure_stack
	.type	free_chunks_from_secure_stack, @function
free_chunks_from_secure_stack:
.LFB80:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3778: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3779: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3780: 
	movq	%rdi, -40(%rbp)
 jmp .UNIQUE3781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3781: 
	movq	$5, -24(%rbp)
 jmp .UNIQUE3782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3782: 
	movq	$4, -16(%rbp)
 jmp .UNIQUE3783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3783: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3784: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3785: 
	movq	last_unused_stack_memory(%rip), %rax
 jmp .UNIQUE3786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3786: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE3787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3787: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE3788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3788: 
	addq	%rcx, %rdx
 jmp .UNIQUE3789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3789: 
	imulq	-8(%rbp), %rdx
 jmp .UNIQUE3790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3790: 
	negq	%rdx
 jmp .UNIQUE3791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3791: 
	addq	%rdx, %rax
 jmp .UNIQUE3792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3792: 
	movq	%rax, last_unused_stack_memory(%rip)
 jmp .UNIQUE3793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3793: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3794: 
	ret
	.cfi_endproc
.LFE80:
	.size	free_chunks_from_secure_stack, .-free_chunks_from_secure_stack
	.globl	init_function_params
	.type	init_function_params, @function
init_function_params:
.LFB81:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3795: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3796: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3797: 
	pushq	%rbx
 jmp .UNIQUE3798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3798: 
	subq	$264, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE3799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3799: 
	movq	%rsi, -184(%rbp)
 jmp .UNIQUE3800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3800: 
	movq	%rdx, -176(%rbp)
 jmp .UNIQUE3801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3801: 
	movq	%rcx, -168(%rbp)
 jmp .UNIQUE3802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3802: 
	movq	%r8, -160(%rbp)
 jmp .UNIQUE3803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3803: 
	movq	%r9, -152(%rbp)
 jmp .UNIQUE3804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3804: 
	testb	%al, %al
 jmp .UNIQUE3805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3805: 
	je	.L301
 jmp .UNIQUE3806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3806: 
	movaps	%xmm0, -144(%rbp)
 jmp .UNIQUE3807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3807: 
	movaps	%xmm1, -128(%rbp)
 jmp .UNIQUE3808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3808: 
	movaps	%xmm2, -112(%rbp)
 jmp .UNIQUE3809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3809: 
	movaps	%xmm3, -96(%rbp)
 jmp .UNIQUE3810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3810: 
	movaps	%xmm4, -80(%rbp)
 jmp .UNIQUE3811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3811: 
	movaps	%xmm5, -64(%rbp)
 jmp .UNIQUE3812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3812: 
	movaps	%xmm6, -48(%rbp)
 jmp .UNIQUE3813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3813: 
	movaps	%xmm7, -32(%rbp)
.L301:
 jmp .UNIQUE3814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3814: 
	movl	%edi, -260(%rbp)
 jmp .UNIQUE3815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3815: 
	movq	$0, -248(%rbp)
 jmp .UNIQUE3816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3816: 
	movq	$-1, -240(%rbp)
 jmp .UNIQUE3817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3817: 
	movl	$8, -216(%rbp)
 jmp .UNIQUE3818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3818: 
	movl	$48, -212(%rbp)
 jmp .UNIQUE3819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3819: 
	leaq	16(%rbp), %rax
 jmp .UNIQUE3820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3820: 
	movq	%rax, -208(%rbp)
 jmp .UNIQUE3821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3821: 
	leaq	-192(%rbp), %rax
 jmp .UNIQUE3822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3822: 
	movq	%rax, -200(%rbp)
 jmp .UNIQUE3823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3823: 
	movl	$562, %edx
 jmp .UNIQUE3824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3824: 
	movl	$__func__.5653, %esi
 jmp .UNIQUE3825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3825: 
	movl	$24, %edi
 jmp .UNIQUE3826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3826: 
	call	error_checking_malloc
 jmp .UNIQUE3827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3827: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE3828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3828: 
	cmpl	$0, -260(%rbp)
 jmp .UNIQUE3829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3829: 
	je	.L302
 jmp .UNIQUE3830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3830: 
	movl	$565, %edx
 jmp .UNIQUE3831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3831: 
	movl	$__func__.5653, %esi
 jmp .UNIQUE3832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3832: 
	movl	$128, %edi
 jmp .UNIQUE3833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3833: 
	call	error_checking_malloc
 jmp .UNIQUE3834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3834: 
	movq	-232(%rbp), %rdx
 jmp .UNIQUE3835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3835: 
	movq	%rax, 16(%rdx)
 jmp .UNIQUE3836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3836: 
	jmp	.L303
.L302:
 jmp .UNIQUE3837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3837: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3838: 
	movq	$0, 16(%rax)
.L303:
 jmp .UNIQUE3839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3839: 
	cmpl	$0, -260(%rbp)
 jmp .UNIQUE3840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3840: 
	je	.L304
 jmp .UNIQUE3841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3841: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3842: 
	movq	16(%rax), %rcx
 jmp .UNIQUE3843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3843: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3844: 
	cmpl	$48, %eax
 jmp .UNIQUE3845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3845: 
	jnb	.L305
 jmp .UNIQUE3846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3846: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3847: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3848: 
	movl	%eax, %eax
 jmp .UNIQUE3849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3849: 
	addq	%rdx, %rax
 jmp .UNIQUE3850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3850: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3851: 
	addl	$8, %edx
 jmp .UNIQUE3852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3852: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3853: 
	jmp	.L306
.L305:
 jmp .UNIQUE3854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3854: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3855: 
	movq	%rdx, %rax
 jmp .UNIQUE3856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3856: 
	addq	$8, %rdx
 jmp .UNIQUE3857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3857: 
	movq	%rdx, -208(%rbp)
.L306:
 jmp .UNIQUE3858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3858: 
	movq	(%rax), %rax
 jmp .UNIQUE3859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3859: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3860: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3861: 
	movq	%rax, (%rcx)
 jmp .UNIQUE3862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3862: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE3863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3863: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3864: 
	addq	%rdx, %rax
 jmp .UNIQUE3865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3865: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE3866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3866: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE3867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3867: 
	je	.L307
 jmp .UNIQUE3868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3868: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3869: 
	movq	16(%rax), %rbx
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
	movl	$577, %edx
 jmp .UNIQUE3872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3872: 
	movl	$__func__.5653, %esi
 jmp .UNIQUE3873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3873: 
	movq	%rax, %rdi
 jmp .UNIQUE3874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3874: 
	call	error_checking_malloc
 jmp .UNIQUE3875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3875: 
	movq	%rax, 8(%rbx)
 jmp .UNIQUE3876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3876: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE3877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3877: 
	jmp	.L308
.L311:
 jmp .UNIQUE3878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3878: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3879: 
	movq	16(%rax), %rax
 jmp .UNIQUE3880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3880: 
	movq	8(%rax), %rdx
 jmp .UNIQUE3881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3881: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE3882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3882: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE3883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3883: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3884: 
	cmpl	$48, %eax
 jmp .UNIQUE3885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3885: 
	jnb	.L309
 jmp .UNIQUE3886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3886: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3887: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3888: 
	movl	%eax, %eax
 jmp .UNIQUE3889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3889: 
	addq	%rdx, %rax
 jmp .UNIQUE3890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3890: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3891: 
	addl	$8, %edx
 jmp .UNIQUE3892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3892: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3893: 
	jmp	.L310
.L309:
 jmp .UNIQUE3894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3894: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3895: 
	movq	%rdx, %rax
 jmp .UNIQUE3896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3896: 
	addq	$8, %rdx
 jmp .UNIQUE3897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3897: 
	movq	%rdx, -208(%rbp)
.L310:
 jmp .UNIQUE3898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3898: 
	movl	(%rax), %eax
 jmp .UNIQUE3899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3899: 
	movb	%al, (%rcx)
 jmp .UNIQUE3900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3900: 
	addq	$1, -256(%rbp)
.L308:
 jmp .UNIQUE3901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3901: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE3902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3902: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3903: 
	jl	.L311
 jmp .UNIQUE3904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3904: 
	jmp	.L312
.L307:
 jmp .UNIQUE3905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3905: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3906: 
	movq	16(%rax), %rax
 jmp .UNIQUE3907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3907: 
	movq	$0, 8(%rax)
.L312:
 jmp .UNIQUE3908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3908: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3909: 
	movq	16(%rax), %rcx
 jmp .UNIQUE3910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3910: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3911: 
	cmpl	$48, %eax
 jmp .UNIQUE3912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3912: 
	jnb	.L313
 jmp .UNIQUE3913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3913: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3914: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3915: 
	movl	%eax, %eax
 jmp .UNIQUE3916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3916: 
	addq	%rdx, %rax
 jmp .UNIQUE3917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3917: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3918: 
	addl	$8, %edx
 jmp .UNIQUE3919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3919: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3920: 
	jmp	.L314
.L313:
 jmp .UNIQUE3921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3921: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3922: 
	movq	%rdx, %rax
 jmp .UNIQUE3923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3923: 
	addq	$8, %rdx
 jmp .UNIQUE3924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3924: 
	movq	%rdx, -208(%rbp)
.L314:
 jmp .UNIQUE3925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3925: 
	movq	(%rax), %rax
 jmp .UNIQUE3926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3926: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3927: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3928: 
	movq	%rax, 16(%rcx)
 jmp .UNIQUE3929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3929: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3930: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE3931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3931: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE3932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3932: 
	addq	%rdx, %rax
 jmp .UNIQUE3933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3933: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE3934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3934: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE3935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3935: 
	je	.L315
 jmp .UNIQUE3936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3936: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3937: 
	movq	16(%rax), %rbx
 jmp .UNIQUE3938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3938: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3939: 
	salq	$2, %rax
 jmp .UNIQUE3940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3940: 
	movl	$593, %edx
 jmp .UNIQUE3941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3941: 
	movl	$__func__.5653, %esi
 jmp .UNIQUE3942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3942: 
	movq	%rax, %rdi
 jmp .UNIQUE3943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3943: 
	call	error_checking_malloc
 jmp .UNIQUE3944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3944: 
	movq	%rax, 24(%rbx)
 jmp .UNIQUE3945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3945: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE3946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3946: 
	jmp	.L316
.L319:
 jmp .UNIQUE3947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3947: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3948: 
	movq	16(%rax), %rax
 jmp .UNIQUE3949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3949: 
	movq	24(%rax), %rax
 jmp .UNIQUE3950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3950: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE3951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3951: 
	salq	$2, %rdx
 jmp .UNIQUE3952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3952: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE3953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3953: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3954: 
	cmpl	$48, %eax
 jmp .UNIQUE3955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3955: 
	jnb	.L317
 jmp .UNIQUE3956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3956: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3957: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3958: 
	movl	%eax, %eax
 jmp .UNIQUE3959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3959: 
	addq	%rdx, %rax
 jmp .UNIQUE3960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3960: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3961: 
	addl	$8, %edx
 jmp .UNIQUE3962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3962: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3963: 
	jmp	.L318
.L317:
 jmp .UNIQUE3964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3964: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3965: 
	movq	%rdx, %rax
 jmp .UNIQUE3966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3966: 
	addq	$8, %rdx
 jmp .UNIQUE3967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3967: 
	movq	%rdx, -208(%rbp)
.L318:
 jmp .UNIQUE3968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3968: 
	movl	(%rax), %eax
 jmp .UNIQUE3969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3969: 
	movl	%eax, (%rcx)
 jmp .UNIQUE3970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3970: 
	addq	$1, -256(%rbp)
.L316:
 jmp .UNIQUE3971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3971: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE3972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3972: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3973: 
	jl	.L319
 jmp .UNIQUE3974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3974: 
	jmp	.L320
.L315:
 jmp .UNIQUE3975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3975: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3976: 
	movq	16(%rax), %rax
 jmp .UNIQUE3977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3977: 
	movq	$0, 24(%rax)
.L320:
 jmp .UNIQUE3978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3978: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3979: 
	movq	16(%rax), %rcx
 jmp .UNIQUE3980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3980: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3981: 
	cmpl	$48, %eax
 jmp .UNIQUE3982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3982: 
	jnb	.L321
 jmp .UNIQUE3983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3983: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3984: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3985: 
	movl	%eax, %eax
 jmp .UNIQUE3986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3986: 
	addq	%rdx, %rax
 jmp .UNIQUE3987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3987: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3988: 
	addl	$8, %edx
 jmp .UNIQUE3989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3989: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3990: 
	jmp	.L322
.L321:
 jmp .UNIQUE3991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3991: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3992: 
	movq	%rdx, %rax
 jmp .UNIQUE3993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3993: 
	addq	$8, %rdx
 jmp .UNIQUE3994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3994: 
	movq	%rdx, -208(%rbp)
.L322:
 jmp .UNIQUE3995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3995: 
	movq	(%rax), %rax
 jmp .UNIQUE3996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3996: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3997: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3998: 
	movq	%rax, 32(%rcx)
 jmp .UNIQUE3999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3999: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4000: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4001: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE4002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4002: 
	addq	%rdx, %rax
 jmp .UNIQUE4003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4003: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE4004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4004: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE4005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4005: 
	je	.L323
 jmp .UNIQUE4006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4006: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4007: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4008: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4009: 
	salq	$3, %rax
 jmp .UNIQUE4010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4010: 
	movl	$609, %edx
 jmp .UNIQUE4011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4011: 
	movl	$__func__.5653, %esi
 jmp .UNIQUE4012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4012: 
	movq	%rax, %rdi
 jmp .UNIQUE4013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4013: 
	call	error_checking_malloc
 jmp .UNIQUE4014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4014: 
	movq	%rax, 40(%rbx)
 jmp .UNIQUE4015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4015: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4016: 
	jmp	.L324
.L327:
 jmp .UNIQUE4017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4017: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4018: 
	movq	16(%rax), %rax
 jmp .UNIQUE4019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4019: 
	movq	40(%rax), %rax
 jmp .UNIQUE4020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4020: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4021: 
	salq	$3, %rdx
 jmp .UNIQUE4022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4022: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4023: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4024: 
	cmpl	$48, %eax
 jmp .UNIQUE4025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4025: 
	jnb	.L325
 jmp .UNIQUE4026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4026: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4027: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4028: 
	movl	%eax, %eax
 jmp .UNIQUE4029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4029: 
	addq	%rdx, %rax
 jmp .UNIQUE4030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4030: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4031: 
	addl	$8, %edx
 jmp .UNIQUE4032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4032: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4033: 
	jmp	.L326
.L325:
 jmp .UNIQUE4034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4034: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4035: 
	movq	%rdx, %rax
 jmp .UNIQUE4036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4036: 
	addq	$8, %rdx
 jmp .UNIQUE4037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4037: 
	movq	%rdx, -208(%rbp)
.L326:
 jmp .UNIQUE4038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4038: 
	movq	(%rax), %rax
 jmp .UNIQUE4039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4039: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4040: 
	addq	$1, -256(%rbp)
.L324:
 jmp .UNIQUE4041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4041: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4042: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4043: 
	jl	.L327
 jmp .UNIQUE4044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4044: 
	jmp	.L328
.L323:
 jmp .UNIQUE4045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4045: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4046: 
	movq	16(%rax), %rax
 jmp .UNIQUE4047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4047: 
	movq	$0, 40(%rax)
.L328:
 jmp .UNIQUE4048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4048: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4049: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4050: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4051: 
	cmpl	$48, %eax
 jmp .UNIQUE4052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4052: 
	jnb	.L329
 jmp .UNIQUE4053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4053: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4054: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4055: 
	movl	%eax, %eax
 jmp .UNIQUE4056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4056: 
	addq	%rdx, %rax
 jmp .UNIQUE4057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4057: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4058: 
	addl	$8, %edx
 jmp .UNIQUE4059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4059: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4060: 
	jmp	.L330
.L329:
 jmp .UNIQUE4061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4061: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4062: 
	movq	%rdx, %rax
 jmp .UNIQUE4063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4063: 
	addq	$8, %rdx
 jmp .UNIQUE4064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4064: 
	movq	%rdx, -208(%rbp)
.L330:
 jmp .UNIQUE4065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4065: 
	movq	(%rax), %rax
 jmp .UNIQUE4066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4066: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4067: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4068: 
	movq	%rax, 48(%rcx)
 jmp .UNIQUE4069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4069: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4070: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE4071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4071: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE4072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4072: 
	addq	%rdx, %rax
 jmp .UNIQUE4073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4073: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE4074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4074: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE4075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4075: 
	je	.L331
 jmp .UNIQUE4076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4076: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4077: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4078: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4079: 
	salq	$2, %rax
 jmp .UNIQUE4080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4080: 
	movl	$625, %edx
 jmp .UNIQUE4081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4081: 
	movl	$__func__.5653, %esi
 jmp .UNIQUE4082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4082: 
	movq	%rax, %rdi
 jmp .UNIQUE4083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4083: 
	call	error_checking_malloc
 jmp .UNIQUE4084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4084: 
	movq	%rax, 56(%rbx)
 jmp .UNIQUE4085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4085: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4086: 
	jmp	.L332
.L335:
 jmp .UNIQUE4087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4087: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4088: 
	movq	16(%rax), %rax
 jmp .UNIQUE4089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4089: 
	movq	56(%rax), %rax
 jmp .UNIQUE4090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4090: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4091: 
	salq	$2, %rdx
 jmp .UNIQUE4092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4092: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4093: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4094: 
	cmpl	$176, %eax
 jmp .UNIQUE4095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4095: 
	jnb	.L333
 jmp .UNIQUE4096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4096: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4097: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4098: 
	movl	%eax, %eax
 jmp .UNIQUE4099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4099: 
	addq	%rdx, %rax
 jmp .UNIQUE4100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4100: 
	movl	-212(%rbp), %edx
 jmp .UNIQUE4101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4101: 
	addl	$16, %edx
 jmp .UNIQUE4102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4102: 
	movl	%edx, -212(%rbp)
 jmp .UNIQUE4103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4103: 
	jmp	.L334
.L333:
 jmp .UNIQUE4104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4104: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4105: 
	movq	%rdx, %rax
 jmp .UNIQUE4106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4106: 
	addq	$8, %rdx
 jmp .UNIQUE4107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4107: 
	movq	%rdx, -208(%rbp)
.L334:
 jmp .UNIQUE4108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4108: 
	movsd	(%rax), %xmm0
 jmp .UNIQUE4109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4109: 
	unpcklpd	%xmm0, %xmm0
 jmp .UNIQUE4110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4110: 
	cvtpd2ps	%xmm0, %xmm0
 jmp .UNIQUE4111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4111: 
	movss	%xmm0, (%rcx)
 jmp .UNIQUE4112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4112: 
	addq	$1, -256(%rbp)
.L332:
 jmp .UNIQUE4113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4113: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4114: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4115: 
	jl	.L335
 jmp .UNIQUE4116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4116: 
	jmp	.L336
.L331:
 jmp .UNIQUE4117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4117: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4118: 
	movq	16(%rax), %rax
 jmp .UNIQUE4119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4119: 
	movq	$0, 56(%rax)
.L336:
 jmp .UNIQUE4120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4120: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4121: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4122: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4123: 
	cmpl	$48, %eax
 jmp .UNIQUE4124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4124: 
	jnb	.L337
 jmp .UNIQUE4125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4125: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4126: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4127: 
	movl	%eax, %eax
 jmp .UNIQUE4128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4128: 
	addq	%rdx, %rax
 jmp .UNIQUE4129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4129: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4130: 
	addl	$8, %edx
 jmp .UNIQUE4131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4131: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4132: 
	jmp	.L338
.L337:
 jmp .UNIQUE4133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4133: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4134: 
	movq	%rdx, %rax
 jmp .UNIQUE4135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4135: 
	addq	$8, %rdx
 jmp .UNIQUE4136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4136: 
	movq	%rdx, -208(%rbp)
.L338:
 jmp .UNIQUE4137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4137: 
	movq	(%rax), %rax
 jmp .UNIQUE4138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4138: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4139: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4140: 
	movq	%rax, 64(%rcx)
 jmp .UNIQUE4141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4141: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4142: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4143: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE4144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4144: 
	addq	%rdx, %rax
 jmp .UNIQUE4145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4145: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE4146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4146: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE4147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4147: 
	je	.L339
 jmp .UNIQUE4148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4148: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4149: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4150: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4151: 
	salq	$3, %rax
 jmp .UNIQUE4152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4152: 
	movl	$641, %edx
 jmp .UNIQUE4153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4153: 
	movl	$__func__.5653, %esi
 jmp .UNIQUE4154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4154: 
	movq	%rax, %rdi
 jmp .UNIQUE4155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4155: 
	call	error_checking_malloc
 jmp .UNIQUE4156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4156: 
	movq	%rax, 72(%rbx)
 jmp .UNIQUE4157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4157: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4158: 
	jmp	.L340
.L343:
 jmp .UNIQUE4159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4159: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4160: 
	movq	16(%rax), %rax
 jmp .UNIQUE4161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4161: 
	movq	72(%rax), %rax
 jmp .UNIQUE4162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4162: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4163: 
	salq	$3, %rdx
 jmp .UNIQUE4164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4164: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4165: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4166: 
	cmpl	$176, %eax
 jmp .UNIQUE4167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4167: 
	jnb	.L341
 jmp .UNIQUE4168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4168: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4169: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4170: 
	movl	%eax, %eax
 jmp .UNIQUE4171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4171: 
	addq	%rdx, %rax
 jmp .UNIQUE4172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4172: 
	movl	-212(%rbp), %edx
 jmp .UNIQUE4173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4173: 
	addl	$16, %edx
 jmp .UNIQUE4174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4174: 
	movl	%edx, -212(%rbp)
 jmp .UNIQUE4175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4175: 
	jmp	.L342
.L341:
 jmp .UNIQUE4176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4176: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4177: 
	movq	%rdx, %rax
 jmp .UNIQUE4178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4178: 
	addq	$8, %rdx
 jmp .UNIQUE4179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4179: 
	movq	%rdx, -208(%rbp)
.L342:
 jmp .UNIQUE4180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4180: 
	movq	(%rax), %rax
 jmp .UNIQUE4181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4181: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4182: 
	addq	$1, -256(%rbp)
.L340:
 jmp .UNIQUE4183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4183: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4184: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4185: 
	jl	.L343
 jmp .UNIQUE4186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4186: 
	jmp	.L344
.L339:
 jmp .UNIQUE4187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4187: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4188: 
	movq	16(%rax), %rax
 jmp .UNIQUE4189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4189: 
	movq	$0, 72(%rax)
.L344:
 jmp .UNIQUE4190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4190: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4191: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4192: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4193: 
	cmpl	$48, %eax
 jmp .UNIQUE4194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4194: 
	jnb	.L345
 jmp .UNIQUE4195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4195: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4196: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4197: 
	movl	%eax, %eax
 jmp .UNIQUE4198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4198: 
	addq	%rdx, %rax
 jmp .UNIQUE4199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4199: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4200: 
	addl	$8, %edx
 jmp .UNIQUE4201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4201: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4202: 
	jmp	.L346
.L345:
 jmp .UNIQUE4203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4203: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4204: 
	movq	%rdx, %rax
 jmp .UNIQUE4205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4205: 
	addq	$8, %rdx
 jmp .UNIQUE4206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4206: 
	movq	%rdx, -208(%rbp)
.L346:
 jmp .UNIQUE4207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4207: 
	movq	(%rax), %rax
 jmp .UNIQUE4208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4208: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4209: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4210: 
	movq	%rax, 80(%rcx)
 jmp .UNIQUE4211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4211: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4212: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4213: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE4214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4214: 
	addq	%rdx, %rax
 jmp .UNIQUE4215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4215: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE4216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4216: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE4217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4217: 
	je	.L347
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
	movq	16(%rax), %rbx
 jmp .UNIQUE4220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4220: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4221: 
	salq	$3, %rax
 jmp .UNIQUE4222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4222: 
	movl	$658, %edx
 jmp .UNIQUE4223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4223: 
	movl	$__func__.5653, %esi
 jmp .UNIQUE4224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4224: 
	movq	%rax, %rdi
 jmp .UNIQUE4225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4225: 
	call	error_checking_malloc
 jmp .UNIQUE4226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4226: 
	movq	%rax, 88(%rbx)
 jmp .UNIQUE4227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4227: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4228: 
	jmp	.L348
.L351:
 jmp .UNIQUE4229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4229: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4230: 
	movq	16(%rax), %rax
 jmp .UNIQUE4231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4231: 
	movq	88(%rax), %rax
 jmp .UNIQUE4232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4232: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4233: 
	salq	$3, %rdx
 jmp .UNIQUE4234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4234: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4235: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4236: 
	cmpl	$48, %eax
 jmp .UNIQUE4237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4237: 
	jnb	.L349
 jmp .UNIQUE4238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4238: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4239: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4240: 
	movl	%eax, %eax
 jmp .UNIQUE4241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4241: 
	addq	%rdx, %rax
 jmp .UNIQUE4242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4242: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4243: 
	addl	$8, %edx
 jmp .UNIQUE4244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4244: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4245: 
	jmp	.L350
.L349:
 jmp .UNIQUE4246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4246: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4247: 
	movq	%rdx, %rax
 jmp .UNIQUE4248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4248: 
	addq	$8, %rdx
 jmp .UNIQUE4249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4249: 
	movq	%rdx, -208(%rbp)
.L350:
 jmp .UNIQUE4250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4250: 
	movq	(%rax), %rax
 jmp .UNIQUE4251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4251: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4252: 
	addq	$1, -256(%rbp)
.L348:
 jmp .UNIQUE4253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4253: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4254: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4255: 
	jl	.L351
 jmp .UNIQUE4256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4256: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4257: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4258: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4259: 
	salq	$3, %rax
 jmp .UNIQUE4260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4260: 
	movl	$663, %edx
 jmp .UNIQUE4261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4261: 
	movl	$__func__.5653, %esi
 jmp .UNIQUE4262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4262: 
	movq	%rax, %rdi
 jmp .UNIQUE4263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4263: 
	call	error_checking_malloc
 jmp .UNIQUE4264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4264: 
	movq	%rax, 96(%rbx)
 jmp .UNIQUE4265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4265: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4266: 
	jmp	.L352
.L355:
 jmp .UNIQUE4267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4267: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4268: 
	movq	16(%rax), %rax
 jmp .UNIQUE4269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4269: 
	movq	96(%rax), %rax
 jmp .UNIQUE4270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4270: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4271: 
	salq	$3, %rdx
 jmp .UNIQUE4272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4272: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4273: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4274: 
	cmpl	$48, %eax
 jmp .UNIQUE4275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4275: 
	jnb	.L353
 jmp .UNIQUE4276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4276: 
	movq	-200(%rbp), %rdx
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
	movl	%eax, %eax
 jmp .UNIQUE4279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4279: 
	addq	%rdx, %rax
 jmp .UNIQUE4280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4280: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4281: 
	addl	$8, %edx
 jmp .UNIQUE4282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4282: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4283: 
	jmp	.L354
.L353:
 jmp .UNIQUE4284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4284: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4285: 
	movq	%rdx, %rax
 jmp .UNIQUE4286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4286: 
	addq	$8, %rdx
 jmp .UNIQUE4287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4287: 
	movq	%rdx, -208(%rbp)
.L354:
 jmp .UNIQUE4288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4288: 
	movq	(%rax), %rax
 jmp .UNIQUE4289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4289: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4290: 
	addq	$1, -256(%rbp)
.L352:
 jmp .UNIQUE4291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4291: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4292: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4293: 
	jl	.L355
 jmp .UNIQUE4294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4294: 
	jmp	.L356
.L347:
 jmp .UNIQUE4295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4295: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4296: 
	movq	16(%rax), %rax
 jmp .UNIQUE4297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4297: 
	movq	$0, 88(%rax)
 jmp .UNIQUE4298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4298: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4299: 
	movq	16(%rax), %rax
 jmp .UNIQUE4300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4300: 
	movq	$0, 96(%rax)
.L356:
 jmp .UNIQUE4301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4301: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4302: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4303: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4304: 
	cmpl	$48, %eax
 jmp .UNIQUE4305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4305: 
	jnb	.L357
 jmp .UNIQUE4306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4306: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4307: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4308: 
	movl	%eax, %eax
 jmp .UNIQUE4309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4309: 
	addq	%rdx, %rax
 jmp .UNIQUE4310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4310: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4311: 
	addl	$8, %edx
 jmp .UNIQUE4312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4312: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4313: 
	jmp	.L358
.L357:
 jmp .UNIQUE4314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4314: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4315: 
	movq	%rdx, %rax
 jmp .UNIQUE4316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4316: 
	addq	$8, %rdx
 jmp .UNIQUE4317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4317: 
	movq	%rdx, -208(%rbp)
.L358:
 jmp .UNIQUE4318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4318: 
	movq	(%rax), %rax
 jmp .UNIQUE4319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4319: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4320: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4321: 
	movq	%rax, 104(%rcx)
 jmp .UNIQUE4322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4322: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE4323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4323: 
	je	.L359
 jmp .UNIQUE4324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4324: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4325: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4326: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4327: 
	salq	$3, %rax
 jmp .UNIQUE4328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4328: 
	movl	$680, %edx
 jmp .UNIQUE4329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4329: 
	movl	$__func__.5653, %esi
 jmp .UNIQUE4330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4330: 
	movq	%rax, %rdi
 jmp .UNIQUE4331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4331: 
	call	error_checking_malloc
 jmp .UNIQUE4332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4332: 
	movq	%rax, 112(%rbx)
 jmp .UNIQUE4333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4333: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4334: 
	jmp	.L360
.L363:
 jmp .UNIQUE4335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4335: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4336: 
	movq	16(%rax), %rax
 jmp .UNIQUE4337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4337: 
	movq	112(%rax), %rax
 jmp .UNIQUE4338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4338: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4339: 
	salq	$3, %rdx
 jmp .UNIQUE4340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4340: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4341: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4342: 
	cmpl	$48, %eax
 jmp .UNIQUE4343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4343: 
	jnb	.L361
 jmp .UNIQUE4344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4344: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4345: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4346: 
	movl	%eax, %eax
 jmp .UNIQUE4347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4347: 
	addq	%rdx, %rax
 jmp .UNIQUE4348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4348: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4349: 
	addl	$8, %edx
 jmp .UNIQUE4350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4350: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4351: 
	jmp	.L362
.L361:
 jmp .UNIQUE4352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4352: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4353: 
	movq	%rdx, %rax
 jmp .UNIQUE4354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4354: 
	addq	$8, %rdx
 jmp .UNIQUE4355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4355: 
	movq	%rdx, -208(%rbp)
.L362:
 jmp .UNIQUE4356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4356: 
	movq	(%rax), %rax
 jmp .UNIQUE4357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4357: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4358: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4359: 
	movq	16(%rax), %rax
 jmp .UNIQUE4360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4360: 
	movq	112(%rax), %rax
 jmp .UNIQUE4361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4361: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4362: 
	salq	$3, %rdx
 jmp .UNIQUE4363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4363: 
	addq	%rdx, %rax
 jmp .UNIQUE4364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4364: 
	movq	(%rax), %rax
 jmp .UNIQUE4365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4365: 
	addq	%rax, -248(%rbp)
 jmp .UNIQUE4366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4366: 
	addq	$1, -256(%rbp)
.L360:
 jmp .UNIQUE4367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4367: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4368: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4369: 
	jl	.L363
 jmp .UNIQUE4370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4370: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4371: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4372: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4373: 
	salq	$3, %rax
 jmp .UNIQUE4374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4374: 
	movl	$687, %edx
 jmp .UNIQUE4375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4375: 
	movl	$__func__.5653, %esi
 jmp .UNIQUE4376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4376: 
	movq	%rax, %rdi
 jmp .UNIQUE4377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4377: 
	call	error_checking_malloc
 jmp .UNIQUE4378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4378: 
	movq	%rax, 120(%rbx)
 jmp .UNIQUE4379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4379: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4380: 
	jmp	.L364
.L367:
 jmp .UNIQUE4381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4381: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4382: 
	movq	16(%rax), %rax
 jmp .UNIQUE4383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4383: 
	movq	120(%rax), %rax
 jmp .UNIQUE4384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4384: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4385: 
	salq	$3, %rdx
 jmp .UNIQUE4386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4386: 
	leaq	(%rax,%rdx), %rcx
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
	jnb	.L365
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
	jmp	.L366
.L365:
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
.L366:
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
	movq	%rax, (%rcx)
 jmp .UNIQUE4404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4404: 
	addq	$1, -256(%rbp)
.L364:
 jmp .UNIQUE4405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4405: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4406: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4407: 
	jl	.L367
 jmp .UNIQUE4408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4408: 
	jmp	.L304
.L359:
 jmp .UNIQUE4409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4409: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4410: 
	movq	16(%rax), %rax
 jmp .UNIQUE4411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4411: 
	movq	$0, 112(%rax)
 jmp .UNIQUE4412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4412: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4413: 
	movq	16(%rax), %rax
 jmp .UNIQUE4414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4414: 
	movq	$0, 120(%rax)
.L304:
 jmp .UNIQUE4415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4415: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4416: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE4417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4417: 
	movq	%rdx, (%rax)
 jmp .UNIQUE4418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4418: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4419: 
	movq	-240(%rbp), %rdx
 jmp .UNIQUE4420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4420: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE4421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4421: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4422: 
	addq	$264, %rsp
 jmp .UNIQUE4423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4423: 
	popq	%rbx
 jmp .UNIQUE4424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4424: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE4425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4425: 
	ret
	.cfi_endproc
.LFE81:
	.size	init_function_params, .-init_function_params
	.globl	init_function_params_with_uninitialised_elements
	.type	init_function_params_with_uninitialised_elements, @function
init_function_params_with_uninitialised_elements:
.LFB82:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE4426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4426: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE4427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4427: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE4428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4428: 
	pushq	%rbx
 jmp .UNIQUE4429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4429: 
	subq	$280, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE4430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4430: 
	movq	%rsi, -184(%rbp)
 jmp .UNIQUE4431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4431: 
	movq	%rdx, -176(%rbp)
 jmp .UNIQUE4432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4432: 
	movq	%rcx, -168(%rbp)
 jmp .UNIQUE4433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4433: 
	movq	%r8, -160(%rbp)
 jmp .UNIQUE4434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4434: 
	movq	%r9, -152(%rbp)
 jmp .UNIQUE4435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4435: 
	testb	%al, %al
 jmp .UNIQUE4436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4436: 
	je	.L370
 jmp .UNIQUE4437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4437: 
	movaps	%xmm0, -144(%rbp)
 jmp .UNIQUE4438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4438: 
	movaps	%xmm1, -128(%rbp)
 jmp .UNIQUE4439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4439: 
	movaps	%xmm2, -112(%rbp)
 jmp .UNIQUE4440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4440: 
	movaps	%xmm3, -96(%rbp)
 jmp .UNIQUE4441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4441: 
	movaps	%xmm4, -80(%rbp)
 jmp .UNIQUE4442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4442: 
	movaps	%xmm5, -64(%rbp)
 jmp .UNIQUE4443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4443: 
	movaps	%xmm6, -48(%rbp)
 jmp .UNIQUE4444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4444: 
	movaps	%xmm7, -32(%rbp)
.L370:
 jmp .UNIQUE4445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4445: 
	movl	%edi, -276(%rbp)
 jmp .UNIQUE4446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4446: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4447: 
	movq	$-1, -248(%rbp)
 jmp .UNIQUE4448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4448: 
	movl	$8, -216(%rbp)
 jmp .UNIQUE4449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4449: 
	movl	$48, -212(%rbp)
 jmp .UNIQUE4450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4450: 
	leaq	16(%rbp), %rax
 jmp .UNIQUE4451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4451: 
	movq	%rax, -208(%rbp)
 jmp .UNIQUE4452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4452: 
	leaq	-192(%rbp), %rax
 jmp .UNIQUE4453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4453: 
	movq	%rax, -200(%rbp)
 jmp .UNIQUE4454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4454: 
	movl	$743, %edx
 jmp .UNIQUE4455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4455: 
	movl	$__func__.5691, %esi
 jmp .UNIQUE4456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4456: 
	movl	$24, %edi
 jmp .UNIQUE4457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4457: 
	call	error_checking_malloc
 jmp .UNIQUE4458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4458: 
	movq	%rax, -240(%rbp)
 jmp .UNIQUE4459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4459: 
	cmpl	$0, -276(%rbp)
 jmp .UNIQUE4460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4460: 
	je	.L371
 jmp .UNIQUE4461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4461: 
	movl	$746, %edx
 jmp .UNIQUE4462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4462: 
	movl	$__func__.5691, %esi
 jmp .UNIQUE4463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4463: 
	movl	$128, %edi
 jmp .UNIQUE4464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4464: 
	call	error_checking_malloc
 jmp .UNIQUE4465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4465: 
	movq	-240(%rbp), %rdx
 jmp .UNIQUE4466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4466: 
	movq	%rax, 16(%rdx)
 jmp .UNIQUE4467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4467: 
	jmp	.L372
.L371:
 jmp .UNIQUE4468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4468: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4469: 
	movq	$0, 16(%rax)
.L372:
 jmp .UNIQUE4470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4470: 
	cmpl	$0, -276(%rbp)
 jmp .UNIQUE4471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4471: 
	je	.L373
 jmp .UNIQUE4472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4472: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4473: 
	movq	16(%rax), %rcx
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
	jnb	.L374
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
	jmp	.L375
.L374:
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
.L375:
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
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4491: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4492: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4493: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4494: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4495: 
	addq	%rdx, %rax
 jmp .UNIQUE4496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4496: 
	movq	%rax, -256(%rbp)
 jmp .UNIQUE4497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4497: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4498: 
	je	.L376
 jmp .UNIQUE4499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4499: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4500: 
	cmpl	$48, %eax
 jmp .UNIQUE4501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4501: 
	jnb	.L377
 jmp .UNIQUE4502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4502: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4503: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4504: 
	movl	%eax, %eax
 jmp .UNIQUE4505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4505: 
	addq	%rdx, %rax
 jmp .UNIQUE4506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4506: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4507: 
	addl	$8, %edx
 jmp .UNIQUE4508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4508: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4509: 
	jmp	.L378
.L377:
 jmp .UNIQUE4510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4510: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4511: 
	movq	%rdx, %rax
 jmp .UNIQUE4512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4512: 
	addq	$8, %rdx
 jmp .UNIQUE4513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4513: 
	movq	%rdx, -208(%rbp)
.L378:
 jmp .UNIQUE4514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4514: 
	movq	(%rax), %rax
 jmp .UNIQUE4515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4515: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4516: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4517: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4518: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4519: 
	movl	$759, %edx
 jmp .UNIQUE4520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4520: 
	movl	$__func__.5691, %esi
 jmp .UNIQUE4521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4521: 
	movq	%rax, %rdi
 jmp .UNIQUE4522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4522: 
	call	error_checking_malloc
 jmp .UNIQUE4523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4523: 
	movq	%rax, 8(%rbx)
 jmp .UNIQUE4524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4524: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4525: 
	jmp	.L379
.L382:
 jmp .UNIQUE4526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4526: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4527: 
	movq	16(%rax), %rax
 jmp .UNIQUE4528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4528: 
	movq	8(%rax), %rdx
 jmp .UNIQUE4529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4529: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4530: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE4531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4531: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4532: 
	cmpl	$48, %eax
 jmp .UNIQUE4533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4533: 
	jnb	.L380
 jmp .UNIQUE4534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4534: 
	movq	-200(%rbp), %rdx
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
	movl	%eax, %eax
 jmp .UNIQUE4537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4537: 
	addq	%rdx, %rax
 jmp .UNIQUE4538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4538: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4539: 
	addl	$8, %edx
 jmp .UNIQUE4540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4540: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4541: 
	jmp	.L381
.L380:
 jmp .UNIQUE4542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4542: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4543: 
	movq	%rdx, %rax
 jmp .UNIQUE4544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4544: 
	addq	$8, %rdx
 jmp .UNIQUE4545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4545: 
	movq	%rdx, -208(%rbp)
.L381:
 jmp .UNIQUE4546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4546: 
	movl	(%rax), %eax
 jmp .UNIQUE4547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4547: 
	movb	%al, (%rcx)
 jmp .UNIQUE4548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4548: 
	addq	$1, -264(%rbp)
.L379:
 jmp .UNIQUE4549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4549: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4550: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4551: 
	jl	.L382
 jmp .UNIQUE4552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4552: 
	jmp	.L383
.L376:
 jmp .UNIQUE4553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4553: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4554: 
	movq	16(%rax), %rax
 jmp .UNIQUE4555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4555: 
	movq	$0, 8(%rax)
.L383:
 jmp .UNIQUE4556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4556: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4557: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4558: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4559: 
	cmpl	$48, %eax
 jmp .UNIQUE4560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4560: 
	jnb	.L384
 jmp .UNIQUE4561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4561: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4562: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4563: 
	movl	%eax, %eax
 jmp .UNIQUE4564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4564: 
	addq	%rdx, %rax
 jmp .UNIQUE4565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4565: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4566: 
	addl	$8, %edx
 jmp .UNIQUE4567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4567: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4568: 
	jmp	.L385
.L384:
 jmp .UNIQUE4569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4569: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4570: 
	movq	%rdx, %rax
 jmp .UNIQUE4571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4571: 
	addq	$8, %rdx
 jmp .UNIQUE4572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4572: 
	movq	%rdx, -208(%rbp)
.L385:
 jmp .UNIQUE4573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4573: 
	movq	(%rax), %rax
 jmp .UNIQUE4574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4574: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4575: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4576: 
	movq	%rax, 16(%rcx)
 jmp .UNIQUE4577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4577: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4578: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE4579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4579: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4580: 
	addq	%rdx, %rax
 jmp .UNIQUE4581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4581: 
	movq	%rax, -256(%rbp)
 jmp .UNIQUE4582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4582: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4583: 
	je	.L386
 jmp .UNIQUE4584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4584: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4585: 
	cmpl	$48, %eax
 jmp .UNIQUE4586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4586: 
	jnb	.L387
 jmp .UNIQUE4587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4587: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4588: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4589: 
	movl	%eax, %eax
 jmp .UNIQUE4590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4590: 
	addq	%rdx, %rax
 jmp .UNIQUE4591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4591: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4592: 
	addl	$8, %edx
 jmp .UNIQUE4593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4593: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4594: 
	jmp	.L388
.L387:
 jmp .UNIQUE4595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4595: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4596: 
	movq	%rdx, %rax
 jmp .UNIQUE4597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4597: 
	addq	$8, %rdx
 jmp .UNIQUE4598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4598: 
	movq	%rdx, -208(%rbp)
.L388:
 jmp .UNIQUE4599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4599: 
	movq	(%rax), %rax
 jmp .UNIQUE4600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4600: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4601: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4602: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4603: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4604: 
	salq	$2, %rax
 jmp .UNIQUE4605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4605: 
	movl	$776, %edx
 jmp .UNIQUE4606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4606: 
	movl	$__func__.5691, %esi
 jmp .UNIQUE4607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4607: 
	movq	%rax, %rdi
 jmp .UNIQUE4608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4608: 
	call	error_checking_malloc
 jmp .UNIQUE4609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4609: 
	movq	%rax, 24(%rbx)
 jmp .UNIQUE4610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4610: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4611: 
	jmp	.L389
.L392:
 jmp .UNIQUE4612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4612: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4613: 
	movq	16(%rax), %rax
 jmp .UNIQUE4614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4614: 
	movq	24(%rax), %rax
 jmp .UNIQUE4615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4615: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE4616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4616: 
	salq	$2, %rdx
 jmp .UNIQUE4617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4617: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4618: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4619: 
	cmpl	$48, %eax
 jmp .UNIQUE4620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4620: 
	jnb	.L390
 jmp .UNIQUE4621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4621: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4622: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4623: 
	movl	%eax, %eax
 jmp .UNIQUE4624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4624: 
	addq	%rdx, %rax
 jmp .UNIQUE4625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4625: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4626: 
	addl	$8, %edx
 jmp .UNIQUE4627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4627: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4628: 
	jmp	.L391
.L390:
 jmp .UNIQUE4629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4629: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4630: 
	movq	%rdx, %rax
 jmp .UNIQUE4631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4631: 
	addq	$8, %rdx
 jmp .UNIQUE4632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4632: 
	movq	%rdx, -208(%rbp)
.L391:
 jmp .UNIQUE4633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4633: 
	movl	(%rax), %eax
 jmp .UNIQUE4634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4634: 
	movl	%eax, (%rcx)
 jmp .UNIQUE4635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4635: 
	addq	$1, -264(%rbp)
.L389:
 jmp .UNIQUE4636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4636: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4637: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4638: 
	jl	.L392
 jmp .UNIQUE4639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4639: 
	jmp	.L393
.L386:
 jmp .UNIQUE4640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4640: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4641: 
	movq	16(%rax), %rax
 jmp .UNIQUE4642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4642: 
	movq	$0, 24(%rax)
.L393:
 jmp .UNIQUE4643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4643: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4644: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4645: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4646: 
	cmpl	$48, %eax
 jmp .UNIQUE4647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4647: 
	jnb	.L394
 jmp .UNIQUE4648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4648: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4649: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4650: 
	movl	%eax, %eax
 jmp .UNIQUE4651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4651: 
	addq	%rdx, %rax
 jmp .UNIQUE4652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4652: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4653: 
	addl	$8, %edx
 jmp .UNIQUE4654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4654: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4655: 
	jmp	.L395
.L394:
 jmp .UNIQUE4656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4656: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4657: 
	movq	%rdx, %rax
 jmp .UNIQUE4658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4658: 
	addq	$8, %rdx
 jmp .UNIQUE4659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4659: 
	movq	%rdx, -208(%rbp)
.L395:
 jmp .UNIQUE4660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4660: 
	movq	(%rax), %rax
 jmp .UNIQUE4661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4661: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4662: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4663: 
	movq	%rax, 32(%rcx)
 jmp .UNIQUE4664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4664: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4665: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4666: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4667: 
	addq	%rdx, %rax
 jmp .UNIQUE4668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4668: 
	movq	%rax, -256(%rbp)
 jmp .UNIQUE4669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4669: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4670: 
	je	.L396
 jmp .UNIQUE4671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4671: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4672: 
	cmpl	$48, %eax
 jmp .UNIQUE4673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4673: 
	jnb	.L397
 jmp .UNIQUE4674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4674: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4675: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4676: 
	movl	%eax, %eax
 jmp .UNIQUE4677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4677: 
	addq	%rdx, %rax
 jmp .UNIQUE4678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4678: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4679: 
	addl	$8, %edx
 jmp .UNIQUE4680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4680: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4681: 
	jmp	.L398
.L397:
 jmp .UNIQUE4682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4682: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4683: 
	movq	%rdx, %rax
 jmp .UNIQUE4684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4684: 
	addq	$8, %rdx
 jmp .UNIQUE4685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4685: 
	movq	%rdx, -208(%rbp)
.L398:
 jmp .UNIQUE4686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4686: 
	movq	(%rax), %rax
 jmp .UNIQUE4687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4687: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4688: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4689: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4690: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4691: 
	salq	$3, %rax
 jmp .UNIQUE4692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4692: 
	movl	$793, %edx
 jmp .UNIQUE4693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4693: 
	movl	$__func__.5691, %esi
 jmp .UNIQUE4694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4694: 
	movq	%rax, %rdi
 jmp .UNIQUE4695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4695: 
	call	error_checking_malloc
 jmp .UNIQUE4696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4696: 
	movq	%rax, 40(%rbx)
 jmp .UNIQUE4697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4697: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4698: 
	jmp	.L399
.L402:
 jmp .UNIQUE4699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4699: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4700: 
	movq	16(%rax), %rax
 jmp .UNIQUE4701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4701: 
	movq	40(%rax), %rax
 jmp .UNIQUE4702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4702: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE4703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4703: 
	salq	$3, %rdx
 jmp .UNIQUE4704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4704: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4705: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4706: 
	cmpl	$48, %eax
 jmp .UNIQUE4707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4707: 
	jnb	.L400
 jmp .UNIQUE4708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4708: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4709: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4710: 
	movl	%eax, %eax
 jmp .UNIQUE4711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4711: 
	addq	%rdx, %rax
 jmp .UNIQUE4712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4712: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4713: 
	addl	$8, %edx
 jmp .UNIQUE4714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4714: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4715: 
	jmp	.L401
.L400:
 jmp .UNIQUE4716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4716: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4717: 
	movq	%rdx, %rax
 jmp .UNIQUE4718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4718: 
	addq	$8, %rdx
 jmp .UNIQUE4719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4719: 
	movq	%rdx, -208(%rbp)
.L401:
 jmp .UNIQUE4720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4720: 
	movq	(%rax), %rax
 jmp .UNIQUE4721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4721: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4722: 
	addq	$1, -264(%rbp)
.L399:
 jmp .UNIQUE4723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4723: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4724: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4725: 
	jl	.L402
 jmp .UNIQUE4726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4726: 
	jmp	.L403
.L396:
 jmp .UNIQUE4727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4727: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4728: 
	movq	16(%rax), %rax
 jmp .UNIQUE4729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4729: 
	movq	$0, 40(%rax)
.L403:
 jmp .UNIQUE4730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4730: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4731: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4732: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4733: 
	cmpl	$48, %eax
 jmp .UNIQUE4734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4734: 
	jnb	.L404
 jmp .UNIQUE4735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4735: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4736: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4737: 
	movl	%eax, %eax
 jmp .UNIQUE4738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4738: 
	addq	%rdx, %rax
 jmp .UNIQUE4739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4739: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4740: 
	addl	$8, %edx
 jmp .UNIQUE4741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4741: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4742: 
	jmp	.L405
.L404:
 jmp .UNIQUE4743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4743: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4744: 
	movq	%rdx, %rax
 jmp .UNIQUE4745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4745: 
	addq	$8, %rdx
 jmp .UNIQUE4746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4746: 
	movq	%rdx, -208(%rbp)
.L405:
 jmp .UNIQUE4747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4747: 
	movq	(%rax), %rax
 jmp .UNIQUE4748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4748: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4749: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4750: 
	movq	%rax, 48(%rcx)
 jmp .UNIQUE4751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4751: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4752: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE4753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4753: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4754: 
	addq	%rdx, %rax
 jmp .UNIQUE4755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4755: 
	movq	%rax, -256(%rbp)
 jmp .UNIQUE4756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4756: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4757: 
	je	.L406
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
	cmpl	$48, %eax
 jmp .UNIQUE4760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4760: 
	jnb	.L407
 jmp .UNIQUE4761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4761: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4762: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4763: 
	movl	%eax, %eax
 jmp .UNIQUE4764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4764: 
	addq	%rdx, %rax
 jmp .UNIQUE4765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4765: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4766: 
	addl	$8, %edx
 jmp .UNIQUE4767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4767: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4768: 
	jmp	.L408
.L407:
 jmp .UNIQUE4769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4769: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4770: 
	movq	%rdx, %rax
 jmp .UNIQUE4771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4771: 
	addq	$8, %rdx
 jmp .UNIQUE4772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4772: 
	movq	%rdx, -208(%rbp)
.L408:
 jmp .UNIQUE4773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4773: 
	movq	(%rax), %rax
 jmp .UNIQUE4774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4774: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4775: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4776: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4777: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4778: 
	salq	$2, %rax
 jmp .UNIQUE4779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4779: 
	movl	$810, %edx
 jmp .UNIQUE4780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4780: 
	movl	$__func__.5691, %esi
 jmp .UNIQUE4781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4781: 
	movq	%rax, %rdi
 jmp .UNIQUE4782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4782: 
	call	error_checking_malloc
 jmp .UNIQUE4783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4783: 
	movq	%rax, 56(%rbx)
 jmp .UNIQUE4784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4784: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4785: 
	jmp	.L409
.L412:
 jmp .UNIQUE4786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4786: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4787: 
	movq	16(%rax), %rax
 jmp .UNIQUE4788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4788: 
	movq	56(%rax), %rax
 jmp .UNIQUE4789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4789: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE4790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4790: 
	salq	$2, %rdx
 jmp .UNIQUE4791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4791: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4792: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4793: 
	cmpl	$176, %eax
 jmp .UNIQUE4794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4794: 
	jnb	.L410
 jmp .UNIQUE4795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4795: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4796: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4797: 
	movl	%eax, %eax
 jmp .UNIQUE4798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4798: 
	addq	%rdx, %rax
 jmp .UNIQUE4799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4799: 
	movl	-212(%rbp), %edx
 jmp .UNIQUE4800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4800: 
	addl	$16, %edx
 jmp .UNIQUE4801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4801: 
	movl	%edx, -212(%rbp)
 jmp .UNIQUE4802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4802: 
	jmp	.L411
.L410:
 jmp .UNIQUE4803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4803: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4804: 
	movq	%rdx, %rax
 jmp .UNIQUE4805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4805: 
	addq	$8, %rdx
 jmp .UNIQUE4806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4806: 
	movq	%rdx, -208(%rbp)
.L411:
 jmp .UNIQUE4807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4807: 
	movsd	(%rax), %xmm0
 jmp .UNIQUE4808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4808: 
	unpcklpd	%xmm0, %xmm0
 jmp .UNIQUE4809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4809: 
	cvtpd2ps	%xmm0, %xmm0
 jmp .UNIQUE4810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4810: 
	movss	%xmm0, (%rcx)
 jmp .UNIQUE4811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4811: 
	addq	$1, -264(%rbp)
.L409:
 jmp .UNIQUE4812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4812: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4813: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4814: 
	jl	.L412
 jmp .UNIQUE4815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4815: 
	jmp	.L413
.L406:
 jmp .UNIQUE4816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4816: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4817: 
	movq	16(%rax), %rax
 jmp .UNIQUE4818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4818: 
	movq	$0, 56(%rax)
.L413:
 jmp .UNIQUE4819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4819: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4820: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4821: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4822: 
	cmpl	$48, %eax
 jmp .UNIQUE4823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4823: 
	jnb	.L414
 jmp .UNIQUE4824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4824: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4825: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4826: 
	movl	%eax, %eax
 jmp .UNIQUE4827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4827: 
	addq	%rdx, %rax
 jmp .UNIQUE4828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4828: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4829: 
	addl	$8, %edx
 jmp .UNIQUE4830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4830: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4831: 
	jmp	.L415
.L414:
 jmp .UNIQUE4832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4832: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4833: 
	movq	%rdx, %rax
 jmp .UNIQUE4834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4834: 
	addq	$8, %rdx
 jmp .UNIQUE4835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4835: 
	movq	%rdx, -208(%rbp)
.L415:
 jmp .UNIQUE4836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4836: 
	movq	(%rax), %rax
 jmp .UNIQUE4837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4837: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4838: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4839: 
	movq	%rax, 64(%rcx)
 jmp .UNIQUE4840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4840: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4841: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4842: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4843: 
	addq	%rdx, %rax
 jmp .UNIQUE4844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4844: 
	movq	%rax, -256(%rbp)
 jmp .UNIQUE4845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4845: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4846: 
	je	.L416
 jmp .UNIQUE4847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4847: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4848: 
	cmpl	$48, %eax
 jmp .UNIQUE4849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4849: 
	jnb	.L417
 jmp .UNIQUE4850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4850: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4851: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4852: 
	movl	%eax, %eax
 jmp .UNIQUE4853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4853: 
	addq	%rdx, %rax
 jmp .UNIQUE4854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4854: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4855: 
	addl	$8, %edx
 jmp .UNIQUE4856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4856: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4857: 
	jmp	.L418
.L417:
 jmp .UNIQUE4858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4858: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4859: 
	movq	%rdx, %rax
 jmp .UNIQUE4860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4860: 
	addq	$8, %rdx
 jmp .UNIQUE4861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4861: 
	movq	%rdx, -208(%rbp)
.L418:
 jmp .UNIQUE4862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4862: 
	movq	(%rax), %rax
 jmp .UNIQUE4863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4863: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4864: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4865: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4866: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4867: 
	salq	$3, %rax
 jmp .UNIQUE4868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4868: 
	movl	$827, %edx
 jmp .UNIQUE4869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4869: 
	movl	$__func__.5691, %esi
 jmp .UNIQUE4870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4870: 
	movq	%rax, %rdi
 jmp .UNIQUE4871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4871: 
	call	error_checking_malloc
 jmp .UNIQUE4872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4872: 
	movq	%rax, 72(%rbx)
 jmp .UNIQUE4873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4873: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4874: 
	jmp	.L419
.L422:
 jmp .UNIQUE4875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4875: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4876: 
	movq	16(%rax), %rax
 jmp .UNIQUE4877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4877: 
	movq	72(%rax), %rax
 jmp .UNIQUE4878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4878: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE4879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4879: 
	salq	$3, %rdx
 jmp .UNIQUE4880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4880: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4881: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4882: 
	cmpl	$176, %eax
 jmp .UNIQUE4883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4883: 
	jnb	.L420
 jmp .UNIQUE4884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4884: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4885: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4886: 
	movl	%eax, %eax
 jmp .UNIQUE4887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4887: 
	addq	%rdx, %rax
 jmp .UNIQUE4888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4888: 
	movl	-212(%rbp), %edx
 jmp .UNIQUE4889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4889: 
	addl	$16, %edx
 jmp .UNIQUE4890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4890: 
	movl	%edx, -212(%rbp)
 jmp .UNIQUE4891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4891: 
	jmp	.L421
.L420:
 jmp .UNIQUE4892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4892: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4893: 
	movq	%rdx, %rax
 jmp .UNIQUE4894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4894: 
	addq	$8, %rdx
 jmp .UNIQUE4895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4895: 
	movq	%rdx, -208(%rbp)
.L421:
 jmp .UNIQUE4896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4896: 
	movq	(%rax), %rax
 jmp .UNIQUE4897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4897: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4898: 
	addq	$1, -264(%rbp)
.L419:
 jmp .UNIQUE4899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4899: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4900: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4901: 
	jl	.L422
 jmp .UNIQUE4902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4902: 
	jmp	.L423
.L416:
 jmp .UNIQUE4903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4903: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4904: 
	movq	16(%rax), %rax
 jmp .UNIQUE4905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4905: 
	movq	$0, 72(%rax)
.L423:
 jmp .UNIQUE4906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4906: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4907: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4908: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4909: 
	cmpl	$48, %eax
 jmp .UNIQUE4910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4910: 
	jnb	.L424
 jmp .UNIQUE4911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4911: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4912: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4913: 
	movl	%eax, %eax
 jmp .UNIQUE4914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4914: 
	addq	%rdx, %rax
 jmp .UNIQUE4915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4915: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4916: 
	addl	$8, %edx
 jmp .UNIQUE4917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4917: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4918: 
	jmp	.L425
.L424:
 jmp .UNIQUE4919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4919: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4920: 
	movq	%rdx, %rax
 jmp .UNIQUE4921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4921: 
	addq	$8, %rdx
 jmp .UNIQUE4922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4922: 
	movq	%rdx, -208(%rbp)
.L425:
 jmp .UNIQUE4923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4923: 
	movq	(%rax), %rax
 jmp .UNIQUE4924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4924: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4925: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4926: 
	movq	%rax, 80(%rcx)
 jmp .UNIQUE4927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4927: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4928: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4929: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4930: 
	addq	%rdx, %rax
 jmp .UNIQUE4931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4931: 
	movq	%rax, -256(%rbp)
 jmp .UNIQUE4932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4932: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4933: 
	je	.L426
 jmp .UNIQUE4934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4934: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4935: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4936: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4937: 
	salq	$3, %rax
 jmp .UNIQUE4938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4938: 
	movl	$843, %edx
 jmp .UNIQUE4939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4939: 
	movl	$__func__.5691, %esi
 jmp .UNIQUE4940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4940: 
	movq	%rax, %rdi
 jmp .UNIQUE4941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4941: 
	call	error_checking_malloc
 jmp .UNIQUE4942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4942: 
	movq	%rax, 88(%rbx)
 jmp .UNIQUE4943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4943: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4944: 
	jmp	.L427
.L430:
 jmp .UNIQUE4945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4945: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4946: 
	movq	16(%rax), %rax
 jmp .UNIQUE4947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4947: 
	movq	88(%rax), %rax
 jmp .UNIQUE4948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4948: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE4949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4949: 
	salq	$3, %rdx
 jmp .UNIQUE4950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4950: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4951: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4952: 
	cmpl	$48, %eax
 jmp .UNIQUE4953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4953: 
	jnb	.L428
 jmp .UNIQUE4954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4954: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4955: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4956: 
	movl	%eax, %eax
 jmp .UNIQUE4957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4957: 
	addq	%rdx, %rax
 jmp .UNIQUE4958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4958: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4959: 
	addl	$8, %edx
 jmp .UNIQUE4960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4960: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4961: 
	jmp	.L429
.L428:
 jmp .UNIQUE4962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4962: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4963: 
	movq	%rdx, %rax
 jmp .UNIQUE4964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4964: 
	addq	$8, %rdx
 jmp .UNIQUE4965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4965: 
	movq	%rdx, -208(%rbp)
.L429:
 jmp .UNIQUE4966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4966: 
	movq	(%rax), %rax
 jmp .UNIQUE4967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4967: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4968: 
	addq	$1, -264(%rbp)
.L427:
 jmp .UNIQUE4969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4969: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4970: 
	cmpq	-232(%rbp), %rax
 jmp .UNIQUE4971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4971: 
	jl	.L430
 jmp .UNIQUE4972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4972: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4973: 
	cmpl	$48, %eax
 jmp .UNIQUE4974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4974: 
	jnb	.L431
 jmp .UNIQUE4975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4975: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4976: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4977: 
	movl	%eax, %eax
 jmp .UNIQUE4978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4978: 
	addq	%rdx, %rax
 jmp .UNIQUE4979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4979: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4980: 
	addl	$8, %edx
 jmp .UNIQUE4981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4981: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4982: 
	jmp	.L432
.L431:
 jmp .UNIQUE4983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4983: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4984: 
	movq	%rdx, %rax
 jmp .UNIQUE4985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4985: 
	addq	$8, %rdx
 jmp .UNIQUE4986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4986: 
	movq	%rdx, -208(%rbp)
.L432:
 jmp .UNIQUE4987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4987: 
	movq	(%rax), %rax
 jmp .UNIQUE4988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4988: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4989: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4990: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4991: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4992: 
	salq	$3, %rax
 jmp .UNIQUE4993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4993: 
	movl	$850, %edx
 jmp .UNIQUE4994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4994: 
	movl	$__func__.5691, %esi
 jmp .UNIQUE4995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4995: 
	movq	%rax, %rdi
 jmp .UNIQUE4996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4996: 
	call	error_checking_malloc
 jmp .UNIQUE4997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4997: 
	movq	%rax, 96(%rbx)
 jmp .UNIQUE4998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4998: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4999: 
	jmp	.L433
.L436:
 jmp .UNIQUE5000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5000: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5001: 
	movq	16(%rax), %rax
 jmp .UNIQUE5002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5002: 
	movq	96(%rax), %rax
 jmp .UNIQUE5003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5003: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE5004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5004: 
	salq	$3, %rdx
 jmp .UNIQUE5005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5005: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE5006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5006: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5007: 
	cmpl	$48, %eax
 jmp .UNIQUE5008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5008: 
	jnb	.L434
 jmp .UNIQUE5009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5009: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE5010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5010: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5011: 
	movl	%eax, %eax
 jmp .UNIQUE5012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5012: 
	addq	%rdx, %rax
 jmp .UNIQUE5013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5013: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE5014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5014: 
	addl	$8, %edx
 jmp .UNIQUE5015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5015: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE5016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5016: 
	jmp	.L435
.L434:
 jmp .UNIQUE5017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5017: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE5018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5018: 
	movq	%rdx, %rax
 jmp .UNIQUE5019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5019: 
	addq	$8, %rdx
 jmp .UNIQUE5020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5020: 
	movq	%rdx, -208(%rbp)
.L435:
 jmp .UNIQUE5021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5021: 
	movq	(%rax), %rax
 jmp .UNIQUE5022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5022: 
	movq	%rax, (%rcx)
 jmp .UNIQUE5023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5023: 
	addq	$1, -264(%rbp)
.L433:
 jmp .UNIQUE5024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5024: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE5025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5025: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE5026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5026: 
	jl	.L436
 jmp .UNIQUE5027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5027: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE5028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5028: 
	movq	%rax, -264(%rbp)
 jmp .UNIQUE5029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5029: 
	jmp	.L437
.L438:
 jmp .UNIQUE5030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5030: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5031: 
	movq	16(%rax), %rax
 jmp .UNIQUE5032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5032: 
	movq	96(%rax), %rax
 jmp .UNIQUE5033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5033: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE5034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5034: 
	salq	$3, %rdx
 jmp .UNIQUE5035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5035: 
	addq	%rdx, %rax
 jmp .UNIQUE5036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5036: 
	movq	$0, (%rax)
 jmp .UNIQUE5037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5037: 
	addq	$1, -264(%rbp)
.L437:
 jmp .UNIQUE5038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5038: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE5039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5039: 
	cmpq	-232(%rbp), %rax
 jmp .UNIQUE5040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5040: 
	jl	.L438
 jmp .UNIQUE5041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5041: 
	jmp	.L439
.L426:
 jmp .UNIQUE5042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5042: 
	movq	-240(%rbp), %rax
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
	movq	$0, 88(%rax)
 jmp .UNIQUE5045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5045: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5046: 
	movq	16(%rax), %rax
 jmp .UNIQUE5047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5047: 
	movq	$0, 96(%rax)
.L439:
 jmp .UNIQUE5048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5048: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5049: 
	movq	16(%rax), %rcx
 jmp .UNIQUE5050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5050: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5051: 
	cmpl	$48, %eax
 jmp .UNIQUE5052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5052: 
	jnb	.L440
 jmp .UNIQUE5053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5053: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE5054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5054: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5055: 
	movl	%eax, %eax
 jmp .UNIQUE5056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5056: 
	addq	%rdx, %rax
 jmp .UNIQUE5057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5057: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE5058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5058: 
	addl	$8, %edx
 jmp .UNIQUE5059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5059: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE5060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5060: 
	jmp	.L441
.L440:
 jmp .UNIQUE5061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5061: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE5062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5062: 
	movq	%rdx, %rax
 jmp .UNIQUE5063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5063: 
	addq	$8, %rdx
 jmp .UNIQUE5064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5064: 
	movq	%rdx, -208(%rbp)
.L441:
 jmp .UNIQUE5065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5065: 
	movq	(%rax), %rax
 jmp .UNIQUE5066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5066: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE5067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5067: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE5068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5068: 
	movq	%rax, 104(%rcx)
 jmp .UNIQUE5069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5069: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE5070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5070: 
	je	.L442
 jmp .UNIQUE5071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5071: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5072: 
	movq	16(%rax), %rbx
 jmp .UNIQUE5073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5073: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE5074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5074: 
	salq	$3, %rax
 jmp .UNIQUE5075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5075: 
	movl	$871, %edx
 jmp .UNIQUE5076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5076: 
	movl	$__func__.5691, %esi
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
	call	error_checking_malloc
 jmp .UNIQUE5079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5079: 
	movq	%rax, 112(%rbx)
 jmp .UNIQUE5080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5080: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE5081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5081: 
	jmp	.L443
.L446:
 jmp .UNIQUE5082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5082: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5083: 
	movq	16(%rax), %rax
 jmp .UNIQUE5084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5084: 
	movq	112(%rax), %rax
 jmp .UNIQUE5085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5085: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE5086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5086: 
	salq	$3, %rdx
 jmp .UNIQUE5087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5087: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE5088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5088: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5089: 
	cmpl	$48, %eax
 jmp .UNIQUE5090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5090: 
	jnb	.L444
 jmp .UNIQUE5091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5091: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE5092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5092: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5093: 
	movl	%eax, %eax
 jmp .UNIQUE5094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5094: 
	addq	%rdx, %rax
 jmp .UNIQUE5095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5095: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE5096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5096: 
	addl	$8, %edx
 jmp .UNIQUE5097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5097: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE5098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5098: 
	jmp	.L445
.L444:
 jmp .UNIQUE5099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5099: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE5100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5100: 
	movq	%rdx, %rax
 jmp .UNIQUE5101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5101: 
	addq	$8, %rdx
 jmp .UNIQUE5102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5102: 
	movq	%rdx, -208(%rbp)
.L445:
 jmp .UNIQUE5103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5103: 
	movq	(%rax), %rax
 jmp .UNIQUE5104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5104: 
	movq	%rax, (%rcx)
 jmp .UNIQUE5105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5105: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5106: 
	movq	16(%rax), %rax
 jmp .UNIQUE5107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5107: 
	movq	112(%rax), %rax
 jmp .UNIQUE5108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5108: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE5109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5109: 
	salq	$3, %rdx
 jmp .UNIQUE5110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5110: 
	addq	%rdx, %rax
 jmp .UNIQUE5111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5111: 
	movq	(%rax), %rax
 jmp .UNIQUE5112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5112: 
	addq	%rax, -256(%rbp)
 jmp .UNIQUE5113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5113: 
	addq	$1, -264(%rbp)
.L443:
 jmp .UNIQUE5114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5114: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE5115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5115: 
	cmpq	-232(%rbp), %rax
 jmp .UNIQUE5116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5116: 
	jl	.L446
 jmp .UNIQUE5117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5117: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5118: 
	cmpl	$48, %eax
 jmp .UNIQUE5119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5119: 
	jnb	.L447
 jmp .UNIQUE5120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5120: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE5121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5121: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5122: 
	movl	%eax, %eax
 jmp .UNIQUE5123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5123: 
	addq	%rdx, %rax
 jmp .UNIQUE5124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5124: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE5125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5125: 
	addl	$8, %edx
 jmp .UNIQUE5126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5126: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE5127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5127: 
	jmp	.L448
.L447:
 jmp .UNIQUE5128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5128: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE5129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5129: 
	movq	%rdx, %rax
 jmp .UNIQUE5130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5130: 
	addq	$8, %rdx
 jmp .UNIQUE5131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5131: 
	movq	%rdx, -208(%rbp)
.L448:
 jmp .UNIQUE5132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5132: 
	movq	(%rax), %rax
 jmp .UNIQUE5133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5133: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE5134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5134: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5135: 
	movq	16(%rax), %rbx
 jmp .UNIQUE5136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5136: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE5137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5137: 
	salq	$3, %rax
 jmp .UNIQUE5138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5138: 
	movl	$879, %edx
 jmp .UNIQUE5139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5139: 
	movl	$__func__.5691, %esi
 jmp .UNIQUE5140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5140: 
	movq	%rax, %rdi
 jmp .UNIQUE5141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5141: 
	call	error_checking_malloc
 jmp .UNIQUE5142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5142: 
	movq	%rax, 120(%rbx)
 jmp .UNIQUE5143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5143: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE5144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5144: 
	jmp	.L449
.L452:
 jmp .UNIQUE5145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5145: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5146: 
	movq	16(%rax), %rax
 jmp .UNIQUE5147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5147: 
	movq	120(%rax), %rax
 jmp .UNIQUE5148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5148: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE5149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5149: 
	salq	$3, %rdx
 jmp .UNIQUE5150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5150: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE5151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5151: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5152: 
	cmpl	$48, %eax
 jmp .UNIQUE5153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5153: 
	jnb	.L450
 jmp .UNIQUE5154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5154: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE5155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5155: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5156: 
	movl	%eax, %eax
 jmp .UNIQUE5157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5157: 
	addq	%rdx, %rax
 jmp .UNIQUE5158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5158: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE5159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5159: 
	addl	$8, %edx
 jmp .UNIQUE5160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5160: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE5161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5161: 
	jmp	.L451
.L450:
 jmp .UNIQUE5162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5162: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE5163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5163: 
	movq	%rdx, %rax
 jmp .UNIQUE5164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5164: 
	addq	$8, %rdx
 jmp .UNIQUE5165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5165: 
	movq	%rdx, -208(%rbp)
.L451:
 jmp .UNIQUE5166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5166: 
	movq	(%rax), %rax
 jmp .UNIQUE5167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5167: 
	movq	%rax, (%rcx)
 jmp .UNIQUE5168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5168: 
	addq	$1, -264(%rbp)
.L449:
 jmp .UNIQUE5169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5169: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE5170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5170: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE5171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5171: 
	jl	.L452
 jmp .UNIQUE5172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5172: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE5173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5173: 
	movq	%rax, -264(%rbp)
 jmp .UNIQUE5174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5174: 
	jmp	.L453
.L454:
 jmp .UNIQUE5175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5175: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5176: 
	movq	16(%rax), %rax
 jmp .UNIQUE5177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5177: 
	movq	120(%rax), %rax
 jmp .UNIQUE5178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5178: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE5179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5179: 
	salq	$3, %rdx
 jmp .UNIQUE5180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5180: 
	addq	%rdx, %rax
 jmp .UNIQUE5181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5181: 
	movq	$0, (%rax)
 jmp .UNIQUE5182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5182: 
	addq	$1, -264(%rbp)
.L453:
 jmp .UNIQUE5183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5183: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE5184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5184: 
	cmpq	-232(%rbp), %rax
 jmp .UNIQUE5185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5185: 
	jl	.L454
 jmp .UNIQUE5186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5186: 
	jmp	.L373
.L442:
 jmp .UNIQUE5187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5187: 
	movq	-240(%rbp), %rax
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
	movq	$0, 112(%rax)
 jmp .UNIQUE5190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5190: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5191: 
	movq	16(%rax), %rax
 jmp .UNIQUE5192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5192: 
	movq	$0, 120(%rax)
.L373:
 jmp .UNIQUE5193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5193: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5194: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE5195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5195: 
	movq	%rdx, (%rax)
 jmp .UNIQUE5196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5196: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5197: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE5198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5198: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5199: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5200: 
	addq	$280, %rsp
 jmp .UNIQUE5201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5201: 
	popq	%rbx
 jmp .UNIQUE5202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5202: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5203: 
	ret
	.cfi_endproc
.LFE82:
	.size	init_function_params_with_uninitialised_elements, .-init_function_params_with_uninitialised_elements
	.section	.rodata
.LC82:
	.string	"No parameters? Strange..."
	.text
	.globl	put_fun_params_into_secure_stack
	.type	put_fun_params_into_secure_stack, @function
put_fun_params_into_secure_stack:
.LFB83:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5204: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5205: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5206: 
	pushq	%rbx
 jmp .UNIQUE5207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5207: 
	subq	$88, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE5208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5208: 
	movq	%rdi, -88(%rbp)
 jmp .UNIQUE5209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5209: 
	movl	$923, %edx
 jmp .UNIQUE5210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5210: 
	movl	$__func__.5734, %esi
 jmp .UNIQUE5211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5211: 
	movl	$24, %edi
 jmp .UNIQUE5212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5212: 
	call	error_checking_malloc
 jmp .UNIQUE5213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5213: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE5214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5214: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5215: 
	movq	(%rax), %rdx
 jmp .UNIQUE5216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5216: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5217: 
	movq	%rdx, (%rax)
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
	movq	$0, 8(%rax)
 jmp .UNIQUE5220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5220: 
	movq	-88(%rbp), %rax
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
	testq	%rax, %rax
 jmp .UNIQUE5223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5223: 
	je	.L457
 jmp .UNIQUE5224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5224: 
	movl	$931, %edx
 jmp .UNIQUE5225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5225: 
	movl	$__func__.5734, %esi
 jmp .UNIQUE5226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5226: 
	movl	$128, %edi
 jmp .UNIQUE5227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5227: 
	call	error_checking_malloc
 jmp .UNIQUE5228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5228: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE5229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5229: 
	movq	%rax, 16(%rdx)
 jmp .UNIQUE5230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5230: 
	jmp	.L458
.L457:
 jmp .UNIQUE5231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5231: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5232: 
	movq	$0, 16(%rax)
 jmp .UNIQUE5233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5233: 
	movl	$.LC82, %edi
 jmp .UNIQUE5234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5234: 
	call	puts
.L458:
 jmp .UNIQUE5235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5235: 
	movq	-88(%rbp), %rax
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
	testq	%rax, %rax
 jmp .UNIQUE5238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5238: 
	je	.L459
 jmp .UNIQUE5239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5239: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5240: 
	movq	16(%rax), %rax
 jmp .UNIQUE5241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5241: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE5242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5242: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5243: 
	movq	(%rdx), %rdx
 jmp .UNIQUE5244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5244: 
	movq	%rdx, (%rax)
 jmp .UNIQUE5245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5245: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5246: 
	movq	16(%rax), %rax
 jmp .UNIQUE5247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5247: 
	movq	(%rax), %rax
 jmp .UNIQUE5248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5248: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE5249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5249: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5250: 
	movq	%rax, %rdi
 jmp .UNIQUE5251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5251: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5252: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5253: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5254: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5255: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE5256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5256: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5257: 
	movq	8(%rax), %rdx
 jmp .UNIQUE5258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5258: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5259: 
	addq	%rax, %rdx
 jmp .UNIQUE5260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5260: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5261: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5262: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5263: 
	movq	16(%rax), %rax
 jmp .UNIQUE5264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5264: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5265: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5266: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5267: 
	je	.L460
 jmp .UNIQUE5268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5268: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5269: 
	movq	16(%rax), %rax
 jmp .UNIQUE5270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5270: 
	movq	8(%rax), %rcx
 jmp .UNIQUE5271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5271: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5272: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5273: 
	movq	%rcx, %rsi
 jmp .UNIQUE5274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5274: 
	movq	%rax, %rdi
 jmp .UNIQUE5275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5275: 
	call	insert_data_into_stack_mem
.L460:
 jmp .UNIQUE5276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5276: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5277: 
	movq	16(%rax), %rax
 jmp .UNIQUE5278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5278: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE5279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5279: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5280: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5281: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE5282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5282: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5283: 
	movq	16(%rax), %rax
 jmp .UNIQUE5284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5284: 
	movq	16(%rax), %rax
 jmp .UNIQUE5285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5285: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE5286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5286: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5287: 
	salq	$2, %rax
 jmp .UNIQUE5288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5288: 
	movq	%rax, %rdi
 jmp .UNIQUE5289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5289: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5290: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5291: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5292: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5293: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE5294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5294: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5295: 
	movq	8(%rax), %rdx
 jmp .UNIQUE5296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5296: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5297: 
	addq	%rax, %rdx
 jmp .UNIQUE5298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5298: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5299: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5300: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5301: 
	movq	16(%rax), %rax
 jmp .UNIQUE5302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5302: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5303: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE5304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5304: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5305: 
	je	.L461
 jmp .UNIQUE5306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5306: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5307: 
	movq	16(%rax), %rax
 jmp .UNIQUE5308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5308: 
	movq	24(%rax), %rcx
 jmp .UNIQUE5309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5309: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5310: 
	salq	$2, %rax
 jmp .UNIQUE5311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5311: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5312: 
	movq	%rcx, %rsi
 jmp .UNIQUE5313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5313: 
	movq	%rax, %rdi
 jmp .UNIQUE5314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5314: 
	call	insert_data_into_stack_mem
.L461:
 jmp .UNIQUE5315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5315: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5316: 
	movq	16(%rax), %rax
 jmp .UNIQUE5317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5317: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE5318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5318: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5319: 
	movq	32(%rdx), %rdx
 jmp .UNIQUE5320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5320: 
	movq	%rdx, 32(%rax)
 jmp .UNIQUE5321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5321: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5322: 
	movq	16(%rax), %rax
 jmp .UNIQUE5323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5323: 
	movq	32(%rax), %rax
 jmp .UNIQUE5324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5324: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE5325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5325: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5326: 
	salq	$3, %rax
 jmp .UNIQUE5327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5327: 
	movq	%rax, %rdi
 jmp .UNIQUE5328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5328: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5329: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5330: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5331: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5332: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE5333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5333: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5334: 
	movq	8(%rax), %rdx
 jmp .UNIQUE5335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5335: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5336: 
	addq	%rax, %rdx
 jmp .UNIQUE5337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5337: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5338: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5339: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5340: 
	movq	16(%rax), %rax
 jmp .UNIQUE5341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5341: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5342: 
	movq	%rdx, 40(%rax)
 jmp .UNIQUE5343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5343: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5344: 
	je	.L462
 jmp .UNIQUE5345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5345: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5346: 
	movq	16(%rax), %rax
 jmp .UNIQUE5347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5347: 
	movq	40(%rax), %rcx
 jmp .UNIQUE5348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5348: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5349: 
	salq	$3, %rax
 jmp .UNIQUE5350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5350: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5351: 
	movq	%rcx, %rsi
 jmp .UNIQUE5352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5352: 
	movq	%rax, %rdi
 jmp .UNIQUE5353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5353: 
	call	insert_data_into_stack_mem
.L462:
 jmp .UNIQUE5354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5354: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5355: 
	movq	16(%rax), %rax
 jmp .UNIQUE5356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5356: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE5357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5357: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5358: 
	movq	48(%rdx), %rdx
 jmp .UNIQUE5359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5359: 
	movq	%rdx, 48(%rax)
 jmp .UNIQUE5360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5360: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5361: 
	movq	16(%rax), %rax
 jmp .UNIQUE5362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5362: 
	movq	48(%rax), %rax
 jmp .UNIQUE5363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5363: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE5364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5364: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5365: 
	salq	$2, %rax
 jmp .UNIQUE5366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5366: 
	movq	%rax, %rdi
 jmp .UNIQUE5367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5367: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5368: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5369: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5370: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5371: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE5372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5372: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5373: 
	movq	8(%rax), %rdx
 jmp .UNIQUE5374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5374: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5375: 
	addq	%rax, %rdx
 jmp .UNIQUE5376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5376: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5377: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5378: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5379: 
	movq	16(%rax), %rax
 jmp .UNIQUE5380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5380: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5381: 
	movq	%rdx, 56(%rax)
 jmp .UNIQUE5382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5382: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5383: 
	je	.L463
 jmp .UNIQUE5384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5384: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5385: 
	movq	16(%rax), %rax
 jmp .UNIQUE5386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5386: 
	movq	56(%rax), %rcx
 jmp .UNIQUE5387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5387: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5388: 
	salq	$2, %rax
 jmp .UNIQUE5389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5389: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5390: 
	movq	%rcx, %rsi
 jmp .UNIQUE5391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5391: 
	movq	%rax, %rdi
 jmp .UNIQUE5392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5392: 
	call	insert_data_into_stack_mem
.L463:
 jmp .UNIQUE5393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5393: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5394: 
	movq	16(%rax), %rax
 jmp .UNIQUE5395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5395: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE5396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5396: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5397: 
	movq	64(%rdx), %rdx
 jmp .UNIQUE5398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5398: 
	movq	%rdx, 64(%rax)
 jmp .UNIQUE5399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5399: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5400: 
	movq	16(%rax), %rax
 jmp .UNIQUE5401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5401: 
	movq	64(%rax), %rax
 jmp .UNIQUE5402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5402: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE5403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5403: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5404: 
	salq	$3, %rax
 jmp .UNIQUE5405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5405: 
	movq	%rax, %rdi
 jmp .UNIQUE5406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5406: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5407: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5408: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5409: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5410: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE5411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5411: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5412: 
	movq	8(%rax), %rdx
 jmp .UNIQUE5413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5413: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5414: 
	addq	%rax, %rdx
 jmp .UNIQUE5415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5415: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5416: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5417: 
	movq	-64(%rbp), %rax
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
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5420: 
	movq	%rdx, 72(%rax)
 jmp .UNIQUE5421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5421: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5422: 
	je	.L464
 jmp .UNIQUE5423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5423: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5424: 
	movq	16(%rax), %rax
 jmp .UNIQUE5425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5425: 
	movq	72(%rax), %rcx
 jmp .UNIQUE5426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5426: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5427: 
	salq	$3, %rax
 jmp .UNIQUE5428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5428: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5429: 
	movq	%rcx, %rsi
 jmp .UNIQUE5430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5430: 
	movq	%rax, %rdi
 jmp .UNIQUE5431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5431: 
	call	insert_data_into_stack_mem
.L464:
 jmp .UNIQUE5432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5432: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5433: 
	movq	16(%rax), %rax
 jmp .UNIQUE5434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5434: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE5435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5435: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5436: 
	movq	80(%rdx), %rdx
 jmp .UNIQUE5437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5437: 
	movq	%rdx, 80(%rax)
 jmp .UNIQUE5438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5438: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5439: 
	movq	16(%rax), %rax
 jmp .UNIQUE5440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5440: 
	movq	80(%rax), %rax
 jmp .UNIQUE5441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5441: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE5442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5442: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5443: 
	salq	$3, %rax
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
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5446: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5447: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5448: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5449: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE5450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5450: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5451: 
	movq	8(%rax), %rdx
 jmp .UNIQUE5452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5452: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5453: 
	addq	%rax, %rdx
 jmp .UNIQUE5454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5454: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5455: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5456: 
	movq	-64(%rbp), %rax
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
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5459: 
	movq	%rdx, 96(%rax)
 jmp .UNIQUE5460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5460: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5461: 
	je	.L465
 jmp .UNIQUE5462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5462: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5463: 
	movq	16(%rax), %rax
 jmp .UNIQUE5464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5464: 
	movq	96(%rax), %rcx
 jmp .UNIQUE5465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5465: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5466: 
	salq	$3, %rax
 jmp .UNIQUE5467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5467: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5468: 
	movq	%rcx, %rsi
 jmp .UNIQUE5469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5469: 
	movq	%rax, %rdi
 jmp .UNIQUE5470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5470: 
	call	insert_data_into_stack_mem
.L465:
 jmp .UNIQUE5471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5471: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5472: 
	movq	16(%rax), %rbx
 jmp .UNIQUE5473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5473: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5474: 
	salq	$3, %rax
 jmp .UNIQUE5475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5475: 
	movl	$1013, %edx
 jmp .UNIQUE5476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5476: 
	movl	$__func__.5734, %esi
 jmp .UNIQUE5477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5477: 
	movq	%rax, %rdi
 jmp .UNIQUE5478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5478: 
	call	error_checking_malloc
 jmp .UNIQUE5479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5479: 
	movq	%rax, 88(%rbx)
 jmp .UNIQUE5480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5480: 
	movq	$0, -72(%rbp)
 jmp .UNIQUE5481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5481: 
	jmp	.L466
.L467:
 jmp .UNIQUE5482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5482: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5483: 
	movq	16(%rax), %rax
 jmp .UNIQUE5484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5484: 
	movq	88(%rax), %rax
 jmp .UNIQUE5485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5485: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE5486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5486: 
	salq	$3, %rdx
 jmp .UNIQUE5487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5487: 
	addq	%rax, %rdx
 jmp .UNIQUE5488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5488: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5489: 
	movq	16(%rax), %rax
 jmp .UNIQUE5490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5490: 
	movq	88(%rax), %rax
 jmp .UNIQUE5491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5491: 
	movq	-72(%rbp), %rcx
 jmp .UNIQUE5492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5492: 
	salq	$3, %rcx
 jmp .UNIQUE5493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5493: 
	addq	%rcx, %rax
 jmp .UNIQUE5494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5494: 
	movq	(%rax), %rax
 jmp .UNIQUE5495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5495: 
	movq	%rax, (%rdx)
 jmp .UNIQUE5496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5496: 
	addq	$1, -72(%rbp)
.L466:
 jmp .UNIQUE5497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5497: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE5498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5498: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE5499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5499: 
	jl	.L467
 jmp .UNIQUE5500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5500: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5501: 
	movq	16(%rax), %rax
 jmp .UNIQUE5502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5502: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE5503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5503: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5504: 
	movq	104(%rdx), %rdx
 jmp .UNIQUE5505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5505: 
	movq	%rdx, 104(%rax)
 jmp .UNIQUE5506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5506: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5507: 
	movq	16(%rax), %rax
 jmp .UNIQUE5508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5508: 
	movq	104(%rax), %rax
 jmp .UNIQUE5509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5509: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE5510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5510: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5511: 
	movq	16(%rax), %rbx
 jmp .UNIQUE5512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5512: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5513: 
	salq	$3, %rax
 jmp .UNIQUE5514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5514: 
	movl	$1020, %edx
 jmp .UNIQUE5515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5515: 
	movl	$__func__.5734, %esi
 jmp .UNIQUE5516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5516: 
	movq	%rax, %rdi
 jmp .UNIQUE5517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5517: 
	call	error_checking_malloc
 jmp .UNIQUE5518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5518: 
	movq	%rax, 112(%rbx)
 jmp .UNIQUE5519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5519: 
	movq	$0, -72(%rbp)
 jmp .UNIQUE5520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5520: 
	jmp	.L468
.L469:
 jmp .UNIQUE5521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5521: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5522: 
	movq	16(%rax), %rax
 jmp .UNIQUE5523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5523: 
	movq	112(%rax), %rax
 jmp .UNIQUE5524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5524: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE5525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5525: 
	salq	$3, %rdx
 jmp .UNIQUE5526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5526: 
	addq	%rax, %rdx
 jmp .UNIQUE5527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5527: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5528: 
	movq	16(%rax), %rax
 jmp .UNIQUE5529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5529: 
	movq	112(%rax), %rax
 jmp .UNIQUE5530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5530: 
	movq	-72(%rbp), %rcx
 jmp .UNIQUE5531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5531: 
	salq	$3, %rcx
 jmp .UNIQUE5532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5532: 
	addq	%rcx, %rax
 jmp .UNIQUE5533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5533: 
	movq	(%rax), %rax
 jmp .UNIQUE5534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5534: 
	movq	%rax, (%rdx)
 jmp .UNIQUE5535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5535: 
	addq	$1, -72(%rbp)
.L468:
 jmp .UNIQUE5536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5536: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE5537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5537: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE5538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5538: 
	jl	.L469
 jmp .UNIQUE5539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5539: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5540: 
	movq	16(%rax), %rbx
 jmp .UNIQUE5541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5541: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5542: 
	salq	$3, %rax
 jmp .UNIQUE5543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5543: 
	movl	$1023, %edx
 jmp .UNIQUE5544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5544: 
	movl	$__func__.5734, %esi
 jmp .UNIQUE5545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5545: 
	movq	%rax, %rdi
 jmp .UNIQUE5546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5546: 
	call	error_checking_malloc
 jmp .UNIQUE5547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5547: 
	movq	%rax, 120(%rbx)
 jmp .UNIQUE5548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5548: 
	movq	$0, -72(%rbp)
 jmp .UNIQUE5549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5549: 
	jmp	.L470
.L472:
 jmp .UNIQUE5550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5550: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5551: 
	movq	16(%rax), %rax
 jmp .UNIQUE5552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5552: 
	movq	112(%rax), %rax
 jmp .UNIQUE5553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5553: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE5554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5554: 
	salq	$3, %rdx
 jmp .UNIQUE5555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5555: 
	addq	%rdx, %rax
 jmp .UNIQUE5556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5556: 
	movq	(%rax), %rax
 jmp .UNIQUE5557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5557: 
	movq	%rax, %rdi
 jmp .UNIQUE5558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5558: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5559: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5560: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5561: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5562: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE5563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5563: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5564: 
	movq	8(%rax), %rdx
 jmp .UNIQUE5565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5565: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5566: 
	addq	%rax, %rdx
 jmp .UNIQUE5567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5567: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5568: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5569: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5570: 
	je	.L471
 jmp .UNIQUE5571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5571: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5572: 
	movq	16(%rax), %rax
 jmp .UNIQUE5573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5573: 
	movq	120(%rax), %rax
 jmp .UNIQUE5574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5574: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE5575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5575: 
	salq	$3, %rdx
 jmp .UNIQUE5576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5576: 
	addq	%rdx, %rax
 jmp .UNIQUE5577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5577: 
	movq	(%rax), %rax
 jmp .UNIQUE5578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5578: 
	testq	%rax, %rax
 jmp .UNIQUE5579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5579: 
	je	.L471
 jmp .UNIQUE5580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5580: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5581: 
	movq	16(%rax), %rax
 jmp .UNIQUE5582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5582: 
	movq	120(%rax), %rax
 jmp .UNIQUE5583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5583: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE5584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5584: 
	salq	$3, %rdx
 jmp .UNIQUE5585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5585: 
	addq	%rdx, %rax
 jmp .UNIQUE5586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5586: 
	movq	(%rax), %rcx
 jmp .UNIQUE5587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5587: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5588: 
	movq	16(%rax), %rax
 jmp .UNIQUE5589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5589: 
	movq	112(%rax), %rax
 jmp .UNIQUE5590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5590: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE5591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5591: 
	salq	$3, %rdx
 jmp .UNIQUE5592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5592: 
	addq	%rdx, %rax
 jmp .UNIQUE5593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5593: 
	movq	(%rax), %rax
 jmp .UNIQUE5594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5594: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5595: 
	movq	%rcx, %rsi
 jmp .UNIQUE5596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5596: 
	movq	%rax, %rdi
 jmp .UNIQUE5597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5597: 
	call	insert_data_into_stack_mem
.L471:
 jmp .UNIQUE5598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5598: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5599: 
	movq	16(%rax), %rax
 jmp .UNIQUE5600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5600: 
	movq	120(%rax), %rax
 jmp .UNIQUE5601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5601: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE5602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5602: 
	salq	$3, %rdx
 jmp .UNIQUE5603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5603: 
	addq	%rax, %rdx
 jmp .UNIQUE5604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5604: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE5605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5605: 
	movq	%rax, (%rdx)
 jmp .UNIQUE5606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5606: 
	addq	$1, -72(%rbp)
.L470:
 jmp .UNIQUE5607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5607: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE5608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5608: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE5609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5609: 
	jl	.L472
.L459:
 jmp .UNIQUE5610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5610: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5611: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE5612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5612: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE5613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5613: 
	addq	$88, %rsp
 jmp .UNIQUE5614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5614: 
	popq	%rbx
 jmp .UNIQUE5615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5615: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5616: 
	ret
	.cfi_endproc
.LFE83:
	.size	put_fun_params_into_secure_stack, .-put_fun_params_into_secure_stack
	.globl	free_fun_params
	.type	free_fun_params, @function
free_fun_params:
.LFB84:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5617: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5618: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5619: 
	subq	$16, %rsp
 jmp .UNIQUE5620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5620: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5621: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE5622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5622: 
	je	.L474
 jmp .UNIQUE5623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5623: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5624: 
	movq	16(%rax), %rax
 jmp .UNIQUE5625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5625: 
	testq	%rax, %rax
 jmp .UNIQUE5626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5626: 
	je	.L476
 jmp .UNIQUE5627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5627: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5628: 
	movq	16(%rax), %rax
 jmp .UNIQUE5629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5629: 
	movq	8(%rax), %rax
 jmp .UNIQUE5630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5630: 
	movq	%rax, %rdi
 jmp .UNIQUE5631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5631: 
	call	free
 jmp .UNIQUE5632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5632: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5633: 
	movq	16(%rax), %rax
 jmp .UNIQUE5634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5634: 
	movq	24(%rax), %rax
 jmp .UNIQUE5635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5635: 
	movq	%rax, %rdi
 jmp .UNIQUE5636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5636: 
	call	free
 jmp .UNIQUE5637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5637: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5638: 
	movq	16(%rax), %rax
 jmp .UNIQUE5639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5639: 
	movq	40(%rax), %rax
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
	call	free
 jmp .UNIQUE5642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5642: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5643: 
	movq	16(%rax), %rax
 jmp .UNIQUE5644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5644: 
	movq	56(%rax), %rax
 jmp .UNIQUE5645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5645: 
	movq	%rax, %rdi
 jmp .UNIQUE5646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5646: 
	call	free
 jmp .UNIQUE5647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5647: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5648: 
	movq	16(%rax), %rax
 jmp .UNIQUE5649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5649: 
	movq	72(%rax), %rax
 jmp .UNIQUE5650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5650: 
	movq	%rax, %rdi
 jmp .UNIQUE5651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5651: 
	call	free
 jmp .UNIQUE5652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5652: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5653: 
	movq	16(%rax), %rax
 jmp .UNIQUE5654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5654: 
	movq	96(%rax), %rax
 jmp .UNIQUE5655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5655: 
	movq	%rax, %rdi
 jmp .UNIQUE5656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5656: 
	call	free
 jmp .UNIQUE5657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5657: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5658: 
	movq	16(%rax), %rax
 jmp .UNIQUE5659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5659: 
	movq	88(%rax), %rax
 jmp .UNIQUE5660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5660: 
	movq	%rax, %rdi
 jmp .UNIQUE5661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5661: 
	call	free
 jmp .UNIQUE5662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5662: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5663: 
	movq	16(%rax), %rax
 jmp .UNIQUE5664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5664: 
	movq	112(%rax), %rax
 jmp .UNIQUE5665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5665: 
	movq	%rax, %rdi
 jmp .UNIQUE5666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5666: 
	call	free
 jmp .UNIQUE5667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5667: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5668: 
	movq	16(%rax), %rax
 jmp .UNIQUE5669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5669: 
	movq	%rax, %rdi
 jmp .UNIQUE5670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5670: 
	call	free
.L476:
 jmp .UNIQUE5671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5671: 
	movq	-8(%rbp), %rax
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
	call	free
.L474:
 jmp .UNIQUE5674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5674: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5675: 
	ret
	.cfi_endproc
.LFE84:
	.size	free_fun_params, .-free_fun_params
	.globl	free_fun_params_that_point_to_stack
	.type	free_fun_params_that_point_to_stack, @function
free_fun_params_that_point_to_stack:
.LFB85:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5676: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5677: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5678: 
	subq	$16, %rsp
 jmp .UNIQUE5679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5679: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5680: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5681: 
	movq	16(%rax), %rax
 jmp .UNIQUE5682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5682: 
	movq	88(%rax), %rax
 jmp .UNIQUE5683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5683: 
	movq	%rax, %rdi
 jmp .UNIQUE5684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5684: 
	call	free
 jmp .UNIQUE5685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5685: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5686: 
	movq	16(%rax), %rax
 jmp .UNIQUE5687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5687: 
	movq	112(%rax), %rax
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
	call	free
 jmp .UNIQUE5690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5690: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5691: 
	movq	16(%rax), %rax
 jmp .UNIQUE5692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5692: 
	movq	%rax, %rdi
 jmp .UNIQUE5693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5693: 
	call	free
 jmp .UNIQUE5694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5694: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5695: 
	movq	%rax, %rdi
 jmp .UNIQUE5696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5696: 
	call	free
 jmp .UNIQUE5697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5697: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5698: 
	ret
	.cfi_endproc
.LFE85:
	.size	free_fun_params_that_point_to_stack, .-free_fun_params_that_point_to_stack
	.globl	put_fun_params_into_secure_stack_and_free
	.type	put_fun_params_into_secure_stack_and_free, @function
put_fun_params_into_secure_stack_and_free:
.LFB86:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5699: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5700: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5701: 
	subq	$32, %rsp
 jmp .UNIQUE5702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5702: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5703: 
	movq	-24(%rbp), %rax
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
	call	put_fun_params_into_secure_stack
 jmp .UNIQUE5706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5706: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE5707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5707: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5708: 
	movq	%rax, %rdi
 jmp .UNIQUE5709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5709: 
	call	free_fun_params
 jmp .UNIQUE5710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5710: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5711: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5712: 
	ret
	.cfi_endproc
.LFE86:
	.size	put_fun_params_into_secure_stack_and_free, .-put_fun_params_into_secure_stack_and_free
	.globl	get_stack_char
	.type	get_stack_char, @function
get_stack_char:
.LFB87:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5713: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5714: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5715: 
	subq	$32, %rsp
 jmp .UNIQUE5716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5716: 
	movq	%rdi, -24(%rbp)
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
	leaq	-1(%rbp), %rax
 jmp .UNIQUE5719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5719: 
	movl	$0, %r8d
 jmp .UNIQUE5720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5720: 
	movl	$0, %ecx
 jmp .UNIQUE5721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5721: 
	movl	$1, %esi
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
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE5725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5725: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5726: 
	ret
	.cfi_endproc
.LFE87:
	.size	get_stack_char, .-get_stack_char
	.globl	get_stack_int
	.type	get_stack_int, @function
get_stack_int:
.LFB88:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5727: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5728: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5729: 
	subq	$32, %rsp
 jmp .UNIQUE5730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5730: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5731: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5732: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5733: 
	movl	$0, %r8d
 jmp .UNIQUE5734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5734: 
	movl	$0, %ecx
 jmp .UNIQUE5735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5735: 
	movl	$4, %esi
 jmp .UNIQUE5736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5736: 
	movq	%rax, %rdi
 jmp .UNIQUE5737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5737: 
	call	get_secure_stack_data
 jmp .UNIQUE5738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5738: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE5739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5739: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5740: 
	ret
	.cfi_endproc
.LFE88:
	.size	get_stack_int, .-get_stack_int
	.globl	get_stack_long_int
	.type	get_stack_long_int, @function
get_stack_long_int:
.LFB89:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5741: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5742: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5743: 
	subq	$32, %rsp
 jmp .UNIQUE5744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5744: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5745: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5746: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5747: 
	movl	$0, %r8d
 jmp .UNIQUE5748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5748: 
	movl	$0, %ecx
 jmp .UNIQUE5749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5749: 
	movl	$8, %esi
 jmp .UNIQUE5750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5750: 
	movq	%rax, %rdi
 jmp .UNIQUE5751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5751: 
	call	get_secure_stack_data
 jmp .UNIQUE5752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5752: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5753: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5754: 
	ret
	.cfi_endproc
.LFE89:
	.size	get_stack_long_int, .-get_stack_long_int
	.globl	get_stack_pointer
	.type	get_stack_pointer, @function
get_stack_pointer:
.LFB90:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5755: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5756: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5757: 
	subq	$32, %rsp
 jmp .UNIQUE5758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5758: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5759: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5760: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5761: 
	movl	$0, %r8d
 jmp .UNIQUE5762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5762: 
	movl	$0, %ecx
 jmp .UNIQUE5763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5763: 
	movl	$8, %esi
 jmp .UNIQUE5764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5764: 
	movq	%rax, %rdi
 jmp .UNIQUE5765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5765: 
	call	get_secure_stack_data
 jmp .UNIQUE5766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5766: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5767: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5768: 
	ret
	.cfi_endproc
.LFE90:
	.size	get_stack_pointer, .-get_stack_pointer
	.globl	get_stack_float
	.type	get_stack_float, @function
get_stack_float:
.LFB91:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5769: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5770: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5771: 
	subq	$32, %rsp
 jmp .UNIQUE5772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5772: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5773: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5774: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5775: 
	movl	$0, %r8d
 jmp .UNIQUE5776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5776: 
	movl	$0, %ecx
 jmp .UNIQUE5777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5777: 
	movl	$4, %esi
 jmp .UNIQUE5778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5778: 
	movq	%rax, %rdi
 jmp .UNIQUE5779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5779: 
	call	get_secure_stack_data
 jmp .UNIQUE5780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5780: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE5781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5781: 
	movl	%eax, -28(%rbp)
 jmp .UNIQUE5782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5782: 
	movss	-28(%rbp), %xmm0
 jmp .UNIQUE5783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5783: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5784: 
	ret
	.cfi_endproc
.LFE91:
	.size	get_stack_float, .-get_stack_float
	.globl	get_stack_double
	.type	get_stack_double, @function
get_stack_double:
.LFB92:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5785: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5786: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5787: 
	subq	$32, %rsp
 jmp .UNIQUE5788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5788: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5789: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5790: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5791: 
	movl	$0, %r8d
 jmp .UNIQUE5792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5792: 
	movl	$0, %ecx
 jmp .UNIQUE5793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5793: 
	movl	$8, %esi
 jmp .UNIQUE5794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5794: 
	movq	%rax, %rdi
 jmp .UNIQUE5795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5795: 
	call	get_secure_stack_data
 jmp .UNIQUE5796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5796: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5797: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5798: 
	movsd	-32(%rbp), %xmm0
 jmp .UNIQUE5799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5799: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5800: 
	ret
	.cfi_endproc
.LFE92:
	.size	get_stack_double, .-get_stack_double
	.globl	get_stack_array_element
	.type	get_stack_array_element, @function
get_stack_array_element:
.LFB93:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5801: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5802: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5803: 
	subq	$32, %rsp
 jmp .UNIQUE5804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5804: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5805: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5806: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5807: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE5808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5808: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE5809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5809: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE5810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5810: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE5811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5811: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5812: 
	movq	%rcx, %r8
 jmp .UNIQUE5813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5813: 
	movl	$1, %ecx
 jmp .UNIQUE5814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5814: 
	movq	%rax, %rdi
 jmp .UNIQUE5815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5815: 
	call	get_secure_stack_data
 jmp .UNIQUE5816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5816: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5817: 
	ret
	.cfi_endproc
.LFE93:
	.size	get_stack_array_element, .-get_stack_array_element
	.globl	get_stack_char_array_element
	.type	get_stack_char_array_element, @function
get_stack_char_array_element:
.LFB94:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5818: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5819: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5820: 
	subq	$32, %rsp
 jmp .UNIQUE5821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5821: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5822: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5823: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5824: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5825: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE5826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5826: 
	movq	%rcx, %r8
 jmp .UNIQUE5827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5827: 
	movl	$1, %ecx
 jmp .UNIQUE5828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5828: 
	movl	$1, %esi
 jmp .UNIQUE5829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5829: 
	movq	%rax, %rdi
 jmp .UNIQUE5830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5830: 
	call	get_secure_stack_data
 jmp .UNIQUE5831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5831: 
	movzbl	-1(%rbp), %eax
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
.LFE94:
	.size	get_stack_char_array_element, .-get_stack_char_array_element
	.globl	get_stack_int_array_element
	.type	get_stack_int_array_element, @function
get_stack_int_array_element:
.LFB95:
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
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5838: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5839: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5840: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5841: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5842: 
	movq	%rcx, %r8
 jmp .UNIQUE5843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5843: 
	movl	$1, %ecx
 jmp .UNIQUE5844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5844: 
	movl	$4, %esi
 jmp .UNIQUE5845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5845: 
	movq	%rax, %rdi
 jmp .UNIQUE5846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5846: 
	call	get_secure_stack_data
 jmp .UNIQUE5847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5847: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE5848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5848: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5849: 
	ret
	.cfi_endproc
.LFE95:
	.size	get_stack_int_array_element, .-get_stack_int_array_element
	.globl	get_stack_long_int_array_element
	.type	get_stack_long_int_array_element, @function
get_stack_long_int_array_element:
.LFB96:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5850: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5851: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5852: 
	subq	$32, %rsp
 jmp .UNIQUE5853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5853: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5854: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5855: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5856: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5857: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5858: 
	movq	%rcx, %r8
 jmp .UNIQUE5859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5859: 
	movl	$1, %ecx
 jmp .UNIQUE5860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5860: 
	movl	$8, %esi
 jmp .UNIQUE5861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5861: 
	movq	%rax, %rdi
 jmp .UNIQUE5862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5862: 
	call	get_secure_stack_data
 jmp .UNIQUE5863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5863: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5864: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5865: 
	ret
	.cfi_endproc
.LFE96:
	.size	get_stack_long_int_array_element, .-get_stack_long_int_array_element
	.globl	get_stack_pointer_array_element
	.type	get_stack_pointer_array_element, @function
get_stack_pointer_array_element:
.LFB97:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5866: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5867: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5868: 
	subq	$32, %rsp
 jmp .UNIQUE5869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5869: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5870: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5871: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5872: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5873: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5874: 
	movq	%rcx, %r8
 jmp .UNIQUE5875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5875: 
	movl	$1, %ecx
 jmp .UNIQUE5876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5876: 
	movl	$8, %esi
 jmp .UNIQUE5877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5877: 
	movq	%rax, %rdi
 jmp .UNIQUE5878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5878: 
	call	get_secure_stack_data
 jmp .UNIQUE5879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5879: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5880: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5881: 
	ret
	.cfi_endproc
.LFE97:
	.size	get_stack_pointer_array_element, .-get_stack_pointer_array_element
	.globl	get_stack_float_array_element
	.type	get_stack_float_array_element, @function
get_stack_float_array_element:
.LFB98:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5882: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5883: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5884: 
	subq	$48, %rsp
 jmp .UNIQUE5885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5885: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5886: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5887: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5888: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5889: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5890: 
	movq	%rcx, %r8
 jmp .UNIQUE5891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5891: 
	movl	$1, %ecx
 jmp .UNIQUE5892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5892: 
	movl	$4, %esi
 jmp .UNIQUE5893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5893: 
	movq	%rax, %rdi
 jmp .UNIQUE5894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5894: 
	call	get_secure_stack_data
 jmp .UNIQUE5895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5895: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE5896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5896: 
	movl	%eax, -36(%rbp)
 jmp .UNIQUE5897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5897: 
	movss	-36(%rbp), %xmm0
 jmp .UNIQUE5898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5898: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5899: 
	ret
	.cfi_endproc
.LFE98:
	.size	get_stack_float_array_element, .-get_stack_float_array_element
	.globl	get_stack_double_array_element
	.type	get_stack_double_array_element, @function
get_stack_double_array_element:
.LFB99:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5900: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5901: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5902: 
	subq	$48, %rsp
 jmp .UNIQUE5903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5903: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5904: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5905: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5906: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5907: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5908: 
	movq	%rcx, %r8
 jmp .UNIQUE5909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5909: 
	movl	$1, %ecx
 jmp .UNIQUE5910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5910: 
	movl	$8, %esi
 jmp .UNIQUE5911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5911: 
	movq	%rax, %rdi
 jmp .UNIQUE5912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5912: 
	call	get_secure_stack_data
 jmp .UNIQUE5913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5913: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5914: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE5915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5915: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE5916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5916: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5917: 
	ret
	.cfi_endproc
.LFE99:
	.size	get_stack_double_array_element, .-get_stack_double_array_element
	.globl	get_arbitrary_block_in_stack
	.type	get_arbitrary_block_in_stack, @function
get_arbitrary_block_in_stack:
.LFB100:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5918: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5919: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5920: 
	subq	$32, %rsp
 jmp .UNIQUE5921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5921: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5922: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5923: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5924: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE5925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5925: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE5926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5926: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5927: 
	movl	$0, %r8d
 jmp .UNIQUE5928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5928: 
	movl	$0, %ecx
 jmp .UNIQUE5929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5929: 
	movq	%rax, %rdi
 jmp .UNIQUE5930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5930: 
	call	get_secure_stack_data
 jmp .UNIQUE5931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5931: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5932: 
	ret
	.cfi_endproc
.LFE100:
	.size	get_arbitrary_block_in_stack, .-get_arbitrary_block_in_stack
	.globl	get_arbitrary_block_in_stack_with_offset
	.type	get_arbitrary_block_in_stack_with_offset, @function
get_arbitrary_block_in_stack_with_offset:
.LFB101:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5933: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5934: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5935: 
	subq	$32, %rsp
 jmp .UNIQUE5936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5936: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5937: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5938: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5939: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE5940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5940: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE5941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5941: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE5942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5942: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE5943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5943: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5944: 
	movq	%rcx, %r8
 jmp .UNIQUE5945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5945: 
	movl	$2, %ecx
 jmp .UNIQUE5946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5946: 
	movq	%rax, %rdi
 jmp .UNIQUE5947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5947: 
	call	get_secure_stack_data
 jmp .UNIQUE5948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5948: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5949: 
	ret
	.cfi_endproc
.LFE101:
	.size	get_arbitrary_block_in_stack_with_offset, .-get_arbitrary_block_in_stack_with_offset
	.globl	set_stack_char
	.type	set_stack_char, @function
set_stack_char:
.LFB102:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5950: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5951: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5952: 
	subq	$16, %rsp
 jmp .UNIQUE5953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5953: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5954: 
	movl	%esi, %eax
 jmp .UNIQUE5955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5955: 
	movb	%al, -12(%rbp)
 jmp .UNIQUE5956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5956: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5957: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE5958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5958: 
	movq	%rax, %rsi
 jmp .UNIQUE5959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5959: 
	movl	$1, %edi
 jmp .UNIQUE5960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5960: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE5961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5961: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5962: 
	ret
	.cfi_endproc
.LFE102:
	.size	set_stack_char, .-set_stack_char
	.globl	set_stack_int
	.type	set_stack_int, @function
set_stack_int:
.LFB103:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5963: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5964: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5965: 
	subq	$16, %rsp
 jmp .UNIQUE5966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5966: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5967: 
	movl	%esi, -12(%rbp)
 jmp .UNIQUE5968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5968: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5969: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE5970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5970: 
	movq	%rax, %rsi
 jmp .UNIQUE5971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5971: 
	movl	$4, %edi
 jmp .UNIQUE5972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5972: 
	call	insert_data_into_stack_mem
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
.LFE103:
	.size	set_stack_int, .-set_stack_int
	.globl	set_stack_long_int
	.type	set_stack_long_int, @function
set_stack_long_int:
.LFB104:
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
	subq	$16, %rsp
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
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5981: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5982: 
	movq	%rax, %rsi
 jmp .UNIQUE5983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5983: 
	movl	$8, %edi
 jmp .UNIQUE5984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5984: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE5985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5985: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5986: 
	ret
	.cfi_endproc
.LFE104:
	.size	set_stack_long_int, .-set_stack_long_int
	.globl	set_stack_pointer
	.type	set_stack_pointer, @function
set_stack_pointer:
.LFB105:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5987: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5988: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5989: 
	subq	$16, %rsp
 jmp .UNIQUE5990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5990: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5991: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5992: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5993: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5994: 
	movq	%rax, %rsi
 jmp .UNIQUE5995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5995: 
	movl	$8, %edi
 jmp .UNIQUE5996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5996: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE5997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5997: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5998: 
	ret
	.cfi_endproc
.LFE105:
	.size	set_stack_pointer, .-set_stack_pointer
	.globl	set_stack_float
	.type	set_stack_float, @function
set_stack_float:
.LFB106:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5999: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6000: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6001: 
	subq	$16, %rsp
 jmp .UNIQUE6002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6002: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE6003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6003: 
	movss	%xmm0, -12(%rbp)
 jmp .UNIQUE6004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6004: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE6005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6005: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE6006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6006: 
	movq	%rax, %rsi
 jmp .UNIQUE6007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6007: 
	movl	$4, %edi
 jmp .UNIQUE6008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6008: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE6009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6009: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6010: 
	ret
	.cfi_endproc
.LFE106:
	.size	set_stack_float, .-set_stack_float
	.globl	set_stack_double
	.type	set_stack_double, @function
set_stack_double:
.LFB107:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6011: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6012: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6013: 
	subq	$16, %rsp
 jmp .UNIQUE6014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6014: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE6015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6015: 
	movsd	%xmm0, -16(%rbp)
 jmp .UNIQUE6016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6016: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE6017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6017: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE6018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6018: 
	movq	%rax, %rsi
 jmp .UNIQUE6019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6019: 
	movl	$8, %edi
 jmp .UNIQUE6020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6020: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE6021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6021: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6022: 
	ret
	.cfi_endproc
.LFE107:
	.size	set_stack_double, .-set_stack_double
	.globl	set_stack_array_element
	.type	set_stack_array_element, @function
set_stack_array_element:
.LFB108:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6023: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6024: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6025: 
	subq	$32, %rsp
 jmp .UNIQUE6026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6026: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE6027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6027: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE6028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6028: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE6029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6029: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE6030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6030: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE6031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6031: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6032: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE6033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6033: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE6034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6034: 
	movq	%rcx, %r8
 jmp .UNIQUE6035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6035: 
	movl	$1, %ecx
 jmp .UNIQUE6036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6036: 
	movq	%rax, %rdi
 jmp .UNIQUE6037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6037: 
	call	set_secure_stack_data
 jmp .UNIQUE6038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6038: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6039: 
	ret
	.cfi_endproc
.LFE108:
	.size	set_stack_array_element, .-set_stack_array_element
	.globl	set_stack_char_array_element
	.type	set_stack_char_array_element, @function
set_stack_char_array_element:
.LFB109:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6040: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6041: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6042: 
	subq	$48, %rsp
 jmp .UNIQUE6043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6043: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6044: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE6045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6045: 
	movl	%edx, %eax
 jmp .UNIQUE6046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6046: 
	movb	%al, -36(%rbp)
 jmp .UNIQUE6047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6047: 
	movzbl	-36(%rbp), %eax
 jmp .UNIQUE6048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6048: 
	movb	%al, -1(%rbp)
 jmp .UNIQUE6049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6049: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE6050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6050: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE6051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6051: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE6052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6052: 
	movq	%rcx, %r8
 jmp .UNIQUE6053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6053: 
	movl	$1, %ecx
 jmp .UNIQUE6054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6054: 
	movl	$1, %esi
 jmp .UNIQUE6055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6055: 
	movq	%rax, %rdi
 jmp .UNIQUE6056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6056: 
	call	set_secure_stack_data
 jmp .UNIQUE6057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6057: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6058: 
	ret
	.cfi_endproc
.LFE109:
	.size	set_stack_char_array_element, .-set_stack_char_array_element
	.globl	set_stack_int_array_element
	.type	set_stack_int_array_element, @function
set_stack_int_array_element:
.LFB110:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6059: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6060: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6061: 
	subq	$48, %rsp
 jmp .UNIQUE6062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6062: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6063: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE6064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6064: 
	movl	%edx, -36(%rbp)
 jmp .UNIQUE6065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6065: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE6066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6066: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE6067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6067: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE6068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6068: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE6069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6069: 
	leaq	-4(%rbp), %rax
 jmp .UNIQUE6070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6070: 
	movq	%rcx, %r8
 jmp .UNIQUE6071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6071: 
	movl	$1, %ecx
 jmp .UNIQUE6072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6072: 
	movl	$4, %esi
 jmp .UNIQUE6073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6073: 
	movq	%rax, %rdi
 jmp .UNIQUE6074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6074: 
	call	set_secure_stack_data
 jmp .UNIQUE6075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6075: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6076: 
	ret
	.cfi_endproc
.LFE110:
	.size	set_stack_int_array_element, .-set_stack_int_array_element
	.globl	set_stack_long_int_array_element
	.type	set_stack_long_int_array_element, @function
set_stack_long_int_array_element:
.LFB111:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6077: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6078: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6079: 
	subq	$48, %rsp
 jmp .UNIQUE6080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6080: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6081: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE6082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6082: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE6083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6083: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE6084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6084: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6085: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE6086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6086: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE6087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6087: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE6088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6088: 
	movq	%rcx, %r8
 jmp .UNIQUE6089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6089: 
	movl	$1, %ecx
 jmp .UNIQUE6090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6090: 
	movl	$8, %esi
 jmp .UNIQUE6091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6091: 
	movq	%rax, %rdi
 jmp .UNIQUE6092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6092: 
	call	set_secure_stack_data
 jmp .UNIQUE6093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6093: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6094: 
	ret
	.cfi_endproc
.LFE111:
	.size	set_stack_long_int_array_element, .-set_stack_long_int_array_element
	.globl	set_stack_pointer_array_element
	.type	set_stack_pointer_array_element, @function
set_stack_pointer_array_element:
.LFB112:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6095: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6096: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6097: 
	subq	$48, %rsp
 jmp .UNIQUE6098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6098: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6099: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE6100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6100: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE6101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6101: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE6102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6102: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6103: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE6104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6104: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE6105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6105: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE6106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6106: 
	movq	%rcx, %r8
 jmp .UNIQUE6107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6107: 
	movl	$1, %ecx
 jmp .UNIQUE6108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6108: 
	movl	$8, %esi
 jmp .UNIQUE6109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6109: 
	movq	%rax, %rdi
 jmp .UNIQUE6110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6110: 
	call	set_secure_stack_data
 jmp .UNIQUE6111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6111: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6112: 
	ret
	.cfi_endproc
.LFE112:
	.size	set_stack_pointer_array_element, .-set_stack_pointer_array_element
	.globl	set_stack_float_array_element
	.type	set_stack_float_array_element, @function
set_stack_float_array_element:
.LFB113:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6113: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6114: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6115: 
	subq	$48, %rsp
 jmp .UNIQUE6116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6116: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6117: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE6118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6118: 
	movss	%xmm0, -36(%rbp)
 jmp .UNIQUE6119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6119: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE6120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6120: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE6121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6121: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE6122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6122: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE6123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6123: 
	leaq	-4(%rbp), %rax
 jmp .UNIQUE6124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6124: 
	movq	%rcx, %r8
 jmp .UNIQUE6125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6125: 
	movl	$1, %ecx
 jmp .UNIQUE6126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6126: 
	movl	$4, %esi
 jmp .UNIQUE6127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6127: 
	movq	%rax, %rdi
 jmp .UNIQUE6128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6128: 
	call	set_secure_stack_data
 jmp .UNIQUE6129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6129: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6130: 
	ret
	.cfi_endproc
.LFE113:
	.size	set_stack_float_array_element, .-set_stack_float_array_element
	.globl	set_stack_double_array_element
	.type	set_stack_double_array_element, @function
set_stack_double_array_element:
.LFB114:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6131: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6132: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6133: 
	subq	$48, %rsp
 jmp .UNIQUE6134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6134: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6135: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE6136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6136: 
	movsd	%xmm0, -40(%rbp)
 jmp .UNIQUE6137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6137: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE6138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6138: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6139: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE6140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6140: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE6141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6141: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE6142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6142: 
	movq	%rcx, %r8
 jmp .UNIQUE6143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6143: 
	movl	$1, %ecx
 jmp .UNIQUE6144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6144: 
	movl	$8, %esi
 jmp .UNIQUE6145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6145: 
	movq	%rax, %rdi
 jmp .UNIQUE6146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6146: 
	call	set_secure_stack_data
 jmp .UNIQUE6147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6147: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6148: 
	ret
	.cfi_endproc
.LFE114:
	.size	set_stack_double_array_element, .-set_stack_double_array_element
	.globl	set_arbitrary_block_in_stack
	.type	set_arbitrary_block_in_stack, @function
set_arbitrary_block_in_stack:
.LFB115:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6149: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6150: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6151: 
	subq	$32, %rsp
 jmp .UNIQUE6152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6152: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE6153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6153: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE6154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6154: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE6155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6155: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6156: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE6157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6157: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6158: 
	movl	$0, %r8d
 jmp .UNIQUE6159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6159: 
	movl	$0, %ecx
 jmp .UNIQUE6160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6160: 
	movq	%rax, %rdi
 jmp .UNIQUE6161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6161: 
	call	set_secure_stack_data
 jmp .UNIQUE6162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6162: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6163: 
	ret
	.cfi_endproc
.LFE115:
	.size	set_arbitrary_block_in_stack, .-set_arbitrary_block_in_stack
	.globl	set_arbitrary_block_in_stack_with_offset
	.type	set_arbitrary_block_in_stack_with_offset, @function
set_arbitrary_block_in_stack_with_offset:
.LFB116:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6164: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6165: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6166: 
	subq	$32, %rsp
 jmp .UNIQUE6167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6167: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE6168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6168: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE6169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6169: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE6170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6170: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE6171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6171: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE6172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6172: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6173: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE6174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6174: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE6175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6175: 
	movq	%rcx, %r8
 jmp .UNIQUE6176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6176: 
	movl	$2, %ecx
 jmp .UNIQUE6177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6177: 
	movq	%rax, %rdi
 jmp .UNIQUE6178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6178: 
	call	set_secure_stack_data
 jmp .UNIQUE6179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6179: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6180: 
	ret
	.cfi_endproc
.LFE116:
	.size	set_arbitrary_block_in_stack_with_offset, .-set_arbitrary_block_in_stack_with_offset
	.section	.rodata
.LC83:
	.string	"Printing stack memory:"
	.text
	.globl	print_stack_mem
	.type	print_stack_mem, @function
print_stack_mem:
.LFB117:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6181: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6182: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6183: 
	subq	$32, %rsp
 jmp .UNIQUE6184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6184: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6185: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6186: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6187: 
	movl	$.LC83, %edi
 jmp .UNIQUE6188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6188: 
	call	puts
 jmp .UNIQUE6189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6189: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6190: 
	jmp	.L523
.L524:
 jmp .UNIQUE6191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6191: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6192: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6193: 
	addq	%rdx, %rax
 jmp .UNIQUE6194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6194: 
	movzbl	(%rax), %eax
 jmp .UNIQUE6195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6195: 
	movzbl	%al, %eax
 jmp .UNIQUE6196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6196: 
	movl	%eax, %esi
 jmp .UNIQUE6197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6197: 
	movl	$.LC10, %edi
 jmp .UNIQUE6198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6198: 
	movl	$0, %eax
 jmp .UNIQUE6199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6199: 
	call	printf
 jmp .UNIQUE6200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6200: 
	addq	$1, -16(%rbp)
.L523:
 jmp .UNIQUE6201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6201: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE6202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6202: 
	cmpq	%rax, -16(%rbp)
 jmp .UNIQUE6203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6203: 
	jl	.L524
 jmp .UNIQUE6204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6204: 
	movl	$10, %edi
 jmp .UNIQUE6205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6205: 
	call	putchar
 jmp .UNIQUE6206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6206: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6207: 
	ret
	.cfi_endproc
.LFE117:
	.size	print_stack_mem, .-print_stack_mem
	.section	.rodata
.LC84:
	.string	"Printing fun params:"
	.align 8
.LC85:
	.string	"Total size of all params in bytes: %ld\n"
	.align 8
.LC86:
	.string	"Total amount of chunks needed in secure stack: %ld\n"
.LC87:
	.string	"Number of char elements: %ld\n"
.LC88:
	.string	"Char elements:"
.LC89:
	.string	"%c "
.LC90:
	.string	"Number of int elements: %ld\n"
.LC91:
	.string	"Int elements:"
	.align 8
.LC92:
	.string	"Number of long int elements: %ld\n"
.LC93:
	.string	"Long int elements:"
.LC94:
	.string	"%ld "
	.align 8
.LC95:
	.string	"Number of float elements: %ld\n"
.LC96:
	.string	"Float elements:"
.LC97:
	.string	"%f "
	.align 8
.LC98:
	.string	"Number of double elements: %ld\n"
.LC99:
	.string	"Double elements:"
.LC100:
	.string	"%lf "
	.align 8
.LC101:
	.string	"Number of pointer elements: %ld\n"
.LC102:
	.string	"Pointer element sizes:"
.LC103:
	.string	"pointer elements:"
	.align 8
.LC104:
	.string	"Number of arb pointer elements: %ld\n"
.LC105:
	.string	"Arb pointer element sizes:"
.LC106:
	.string	"Arb pointers:"
	.text
	.globl	print_fun_params
	.type	print_fun_params, @function
print_fun_params:
.LFB118:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6208: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6209: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6210: 
	subq	$32, %rsp
 jmp .UNIQUE6211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6211: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6212: 
	movl	$.LC84, %edi
 jmp .UNIQUE6213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6213: 
	call	puts
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
	movq	(%rax), %rax
 jmp .UNIQUE6216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6216: 
	movq	%rax, %rsi
 jmp .UNIQUE6217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6217: 
	movl	$.LC85, %edi
 jmp .UNIQUE6218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6218: 
	movl	$0, %eax
 jmp .UNIQUE6219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6219: 
	call	printf
 jmp .UNIQUE6220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6220: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6221: 
	movq	8(%rax), %rax
 jmp .UNIQUE6222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6222: 
	movq	%rax, %rsi
 jmp .UNIQUE6223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6223: 
	movl	$.LC86, %edi
 jmp .UNIQUE6224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6224: 
	movl	$0, %eax
 jmp .UNIQUE6225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6225: 
	call	printf
 jmp .UNIQUE6226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6226: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6227: 
	movq	16(%rax), %rax
 jmp .UNIQUE6228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6228: 
	movq	(%rax), %rax
 jmp .UNIQUE6229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6229: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6230: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6231: 
	movq	%rax, %rsi
 jmp .UNIQUE6232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6232: 
	movl	$.LC87, %edi
 jmp .UNIQUE6233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6233: 
	movl	$0, %eax
 jmp .UNIQUE6234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6234: 
	call	printf
 jmp .UNIQUE6235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6235: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6236: 
	jle	.L526
 jmp .UNIQUE6237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6237: 
	movl	$.LC88, %edi
 jmp .UNIQUE6238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6238: 
	call	puts
 jmp .UNIQUE6239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6239: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6240: 
	jmp	.L527
.L528:
 jmp .UNIQUE6241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6241: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6242: 
	movq	16(%rax), %rax
 jmp .UNIQUE6243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6243: 
	movq	8(%rax), %rdx
 jmp .UNIQUE6244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6244: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6245: 
	addq	%rdx, %rax
 jmp .UNIQUE6246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6246: 
	movzbl	(%rax), %eax
 jmp .UNIQUE6247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6247: 
	movsbl	%al, %eax
 jmp .UNIQUE6248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6248: 
	movl	%eax, %esi
 jmp .UNIQUE6249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6249: 
	movl	$.LC89, %edi
 jmp .UNIQUE6250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6250: 
	movl	$0, %eax
 jmp .UNIQUE6251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6251: 
	call	printf
 jmp .UNIQUE6252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6252: 
	addq	$1, -16(%rbp)
.L527:
 jmp .UNIQUE6253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6253: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6254: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6255: 
	jl	.L528
 jmp .UNIQUE6256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6256: 
	movl	$10, %edi
 jmp .UNIQUE6257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6257: 
	call	putchar
.L526:
 jmp .UNIQUE6258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6258: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6259: 
	movq	16(%rax), %rax
 jmp .UNIQUE6260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6260: 
	movq	16(%rax), %rax
 jmp .UNIQUE6261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6261: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6262: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6263: 
	movq	%rax, %rsi
 jmp .UNIQUE6264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6264: 
	movl	$.LC90, %edi
 jmp .UNIQUE6265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6265: 
	movl	$0, %eax
 jmp .UNIQUE6266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6266: 
	call	printf
 jmp .UNIQUE6267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6267: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6268: 
	jle	.L529
 jmp .UNIQUE6269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6269: 
	movl	$.LC91, %edi
 jmp .UNIQUE6270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6270: 
	call	puts
 jmp .UNIQUE6271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6271: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6272: 
	jmp	.L530
.L531:
 jmp .UNIQUE6273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6273: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6274: 
	movq	16(%rax), %rax
 jmp .UNIQUE6275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6275: 
	movq	24(%rax), %rax
 jmp .UNIQUE6276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6276: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6277: 
	salq	$2, %rdx
 jmp .UNIQUE6278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6278: 
	addq	%rdx, %rax
 jmp .UNIQUE6279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6279: 
	movl	(%rax), %eax
 jmp .UNIQUE6280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6280: 
	movl	%eax, %esi
 jmp .UNIQUE6281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6281: 
	movl	$.LC22, %edi
 jmp .UNIQUE6282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6282: 
	movl	$0, %eax
 jmp .UNIQUE6283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6283: 
	call	printf
 jmp .UNIQUE6284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6284: 
	addq	$1, -16(%rbp)
.L530:
 jmp .UNIQUE6285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6285: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6286: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6287: 
	jl	.L531
 jmp .UNIQUE6288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6288: 
	movl	$10, %edi
 jmp .UNIQUE6289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6289: 
	call	putchar
.L529:
 jmp .UNIQUE6290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6290: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6291: 
	movq	16(%rax), %rax
 jmp .UNIQUE6292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6292: 
	movq	32(%rax), %rax
 jmp .UNIQUE6293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6293: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6294: 
	movq	-8(%rbp), %rax
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
	movl	$.LC92, %edi
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
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6300: 
	jle	.L532
 jmp .UNIQUE6301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6301: 
	movl	$.LC93, %edi
 jmp .UNIQUE6302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6302: 
	call	puts
 jmp .UNIQUE6303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6303: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6304: 
	jmp	.L533
.L534:
 jmp .UNIQUE6305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6305: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6306: 
	movq	16(%rax), %rax
 jmp .UNIQUE6307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6307: 
	movq	40(%rax), %rax
 jmp .UNIQUE6308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6308: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6309: 
	salq	$3, %rdx
 jmp .UNIQUE6310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6310: 
	addq	%rdx, %rax
 jmp .UNIQUE6311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6311: 
	movq	(%rax), %rax
 jmp .UNIQUE6312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6312: 
	movq	%rax, %rsi
 jmp .UNIQUE6313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6313: 
	movl	$.LC94, %edi
 jmp .UNIQUE6314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6314: 
	movl	$0, %eax
 jmp .UNIQUE6315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6315: 
	call	printf
 jmp .UNIQUE6316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6316: 
	addq	$1, -16(%rbp)
.L533:
 jmp .UNIQUE6317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6317: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6318: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6319: 
	jl	.L534
 jmp .UNIQUE6320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6320: 
	movl	$10, %edi
 jmp .UNIQUE6321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6321: 
	call	putchar
.L532:
 jmp .UNIQUE6322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6322: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6323: 
	movq	16(%rax), %rax
 jmp .UNIQUE6324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6324: 
	movq	48(%rax), %rax
 jmp .UNIQUE6325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6325: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6326: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6327: 
	movq	%rax, %rsi
 jmp .UNIQUE6328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6328: 
	movl	$.LC95, %edi
 jmp .UNIQUE6329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6329: 
	movl	$0, %eax
 jmp .UNIQUE6330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6330: 
	call	printf
 jmp .UNIQUE6331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6331: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6332: 
	jle	.L535
 jmp .UNIQUE6333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6333: 
	movl	$.LC96, %edi
 jmp .UNIQUE6334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6334: 
	call	puts
 jmp .UNIQUE6335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6335: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6336: 
	jmp	.L536
.L537:
 jmp .UNIQUE6337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6337: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6338: 
	movq	16(%rax), %rax
 jmp .UNIQUE6339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6339: 
	movq	56(%rax), %rax
 jmp .UNIQUE6340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6340: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6341: 
	salq	$2, %rdx
 jmp .UNIQUE6342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6342: 
	addq	%rdx, %rax
 jmp .UNIQUE6343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6343: 
	movss	(%rax), %xmm0
 jmp .UNIQUE6344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6344: 
	unpcklps	%xmm0, %xmm0
 jmp .UNIQUE6345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6345: 
	cvtps2pd	%xmm0, %xmm0
 jmp .UNIQUE6346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6346: 
	movl	$.LC97, %edi
 jmp .UNIQUE6347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6347: 
	movl	$1, %eax
 jmp .UNIQUE6348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6348: 
	call	printf
 jmp .UNIQUE6349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6349: 
	addq	$1, -16(%rbp)
.L536:
 jmp .UNIQUE6350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6350: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6351: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6352: 
	jl	.L537
 jmp .UNIQUE6353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6353: 
	movl	$10, %edi
 jmp .UNIQUE6354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6354: 
	call	putchar
.L535:
 jmp .UNIQUE6355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6355: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6356: 
	movq	16(%rax), %rax
 jmp .UNIQUE6357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6357: 
	movq	64(%rax), %rax
 jmp .UNIQUE6358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6358: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6359: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6360: 
	movq	%rax, %rsi
 jmp .UNIQUE6361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6361: 
	movl	$.LC98, %edi
 jmp .UNIQUE6362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6362: 
	movl	$0, %eax
 jmp .UNIQUE6363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6363: 
	call	printf
 jmp .UNIQUE6364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6364: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6365: 
	jle	.L538
 jmp .UNIQUE6366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6366: 
	movl	$.LC99, %edi
 jmp .UNIQUE6367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6367: 
	call	puts
 jmp .UNIQUE6368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6368: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6369: 
	jmp	.L539
.L540:
 jmp .UNIQUE6370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6370: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6371: 
	movq	16(%rax), %rax
 jmp .UNIQUE6372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6372: 
	movq	72(%rax), %rax
 jmp .UNIQUE6373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6373: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6374: 
	salq	$3, %rdx
 jmp .UNIQUE6375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6375: 
	addq	%rdx, %rax
 jmp .UNIQUE6376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6376: 
	movq	(%rax), %rax
 jmp .UNIQUE6377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6377: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE6378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6378: 
	movsd	-32(%rbp), %xmm0
 jmp .UNIQUE6379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6379: 
	movl	$.LC100, %edi
 jmp .UNIQUE6380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6380: 
	movl	$1, %eax
 jmp .UNIQUE6381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6381: 
	call	printf
 jmp .UNIQUE6382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6382: 
	addq	$1, -16(%rbp)
.L539:
 jmp .UNIQUE6383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6383: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6384: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6385: 
	jl	.L540
 jmp .UNIQUE6386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6386: 
	movl	$10, %edi
 jmp .UNIQUE6387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6387: 
	call	putchar
.L538:
 jmp .UNIQUE6388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6388: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6389: 
	movq	16(%rax), %rax
 jmp .UNIQUE6390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6390: 
	movq	80(%rax), %rax
 jmp .UNIQUE6391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6391: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6392: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6393: 
	movq	%rax, %rsi
 jmp .UNIQUE6394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6394: 
	movl	$.LC101, %edi
 jmp .UNIQUE6395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6395: 
	movl	$0, %eax
 jmp .UNIQUE6396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6396: 
	call	printf
 jmp .UNIQUE6397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6397: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6398: 
	jle	.L541
 jmp .UNIQUE6399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6399: 
	movl	$.LC102, %edi
 jmp .UNIQUE6400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6400: 
	call	puts
 jmp .UNIQUE6401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6401: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6402: 
	jmp	.L542
.L543:
 jmp .UNIQUE6403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6403: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6404: 
	movq	16(%rax), %rax
 jmp .UNIQUE6405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6405: 
	movq	88(%rax), %rax
 jmp .UNIQUE6406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6406: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6407: 
	salq	$3, %rdx
 jmp .UNIQUE6408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6408: 
	addq	%rdx, %rax
 jmp .UNIQUE6409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6409: 
	movq	(%rax), %rax
 jmp .UNIQUE6410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6410: 
	movq	%rax, %rsi
 jmp .UNIQUE6411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6411: 
	movl	$.LC94, %edi
 jmp .UNIQUE6412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6412: 
	movl	$0, %eax
 jmp .UNIQUE6413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6413: 
	call	printf
 jmp .UNIQUE6414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6414: 
	addq	$1, -16(%rbp)
.L542:
 jmp .UNIQUE6415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6415: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6416: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6417: 
	jl	.L543
 jmp .UNIQUE6418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6418: 
	movl	$10, %edi
 jmp .UNIQUE6419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6419: 
	call	putchar
 jmp .UNIQUE6420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6420: 
	movl	$.LC103, %edi
 jmp .UNIQUE6421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6421: 
	call	puts
 jmp .UNIQUE6422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6422: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6423: 
	jmp	.L544
.L545:
 jmp .UNIQUE6424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6424: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6425: 
	movq	16(%rax), %rax
 jmp .UNIQUE6426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6426: 
	movq	96(%rax), %rax
 jmp .UNIQUE6427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6427: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6428: 
	salq	$3, %rdx
 jmp .UNIQUE6429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6429: 
	addq	%rdx, %rax
 jmp .UNIQUE6430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6430: 
	movq	(%rax), %rax
 jmp .UNIQUE6431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6431: 
	movq	%rax, %rsi
 jmp .UNIQUE6432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6432: 
	movl	$.LC94, %edi
 jmp .UNIQUE6433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6433: 
	movl	$0, %eax
 jmp .UNIQUE6434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6434: 
	call	printf
 jmp .UNIQUE6435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6435: 
	addq	$1, -16(%rbp)
.L544:
 jmp .UNIQUE6436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6436: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6437: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6438: 
	jl	.L545
 jmp .UNIQUE6439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6439: 
	movl	$10, %edi
 jmp .UNIQUE6440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6440: 
	call	putchar
.L541:
 jmp .UNIQUE6441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6441: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6442: 
	movq	16(%rax), %rax
 jmp .UNIQUE6443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6443: 
	movq	104(%rax), %rax
 jmp .UNIQUE6444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6444: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6445: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6446: 
	movq	%rax, %rsi
 jmp .UNIQUE6447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6447: 
	movl	$.LC104, %edi
 jmp .UNIQUE6448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6448: 
	movl	$0, %eax
 jmp .UNIQUE6449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6449: 
	call	printf
 jmp .UNIQUE6450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6450: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6451: 
	jle	.L525
 jmp .UNIQUE6452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6452: 
	movl	$.LC105, %edi
 jmp .UNIQUE6453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6453: 
	call	puts
 jmp .UNIQUE6454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6454: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6455: 
	jmp	.L547
.L548:
 jmp .UNIQUE6456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6456: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6457: 
	movq	16(%rax), %rax
 jmp .UNIQUE6458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6458: 
	movq	112(%rax), %rax
 jmp .UNIQUE6459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6459: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6460: 
	salq	$3, %rdx
 jmp .UNIQUE6461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6461: 
	addq	%rdx, %rax
 jmp .UNIQUE6462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6462: 
	movq	(%rax), %rax
 jmp .UNIQUE6463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6463: 
	movq	%rax, %rsi
 jmp .UNIQUE6464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6464: 
	movl	$.LC94, %edi
 jmp .UNIQUE6465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6465: 
	movl	$0, %eax
 jmp .UNIQUE6466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6466: 
	call	printf
 jmp .UNIQUE6467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6467: 
	addq	$1, -16(%rbp)
.L547:
 jmp .UNIQUE6468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6468: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6469: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6470: 
	jl	.L548
 jmp .UNIQUE6471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6471: 
	movl	$10, %edi
 jmp .UNIQUE6472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6472: 
	call	putchar
 jmp .UNIQUE6473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6473: 
	movl	$.LC106, %edi
 jmp .UNIQUE6474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6474: 
	call	puts
 jmp .UNIQUE6475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6475: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6476: 
	jmp	.L549
.L550:
 jmp .UNIQUE6477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6477: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6478: 
	movq	16(%rax), %rax
 jmp .UNIQUE6479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6479: 
	movq	120(%rax), %rax
 jmp .UNIQUE6480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6480: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6481: 
	salq	$3, %rdx
 jmp .UNIQUE6482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6482: 
	addq	%rdx, %rax
 jmp .UNIQUE6483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6483: 
	movq	(%rax), %rax
 jmp .UNIQUE6484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6484: 
	movq	%rax, %rsi
 jmp .UNIQUE6485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6485: 
	movl	$.LC94, %edi
 jmp .UNIQUE6486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6486: 
	movl	$0, %eax
 jmp .UNIQUE6487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6487: 
	call	printf
 jmp .UNIQUE6488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6488: 
	addq	$1, -16(%rbp)
.L549:
 jmp .UNIQUE6489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6489: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6490: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6491: 
	jl	.L550
 jmp .UNIQUE6492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6492: 
	movl	$10, %edi
 jmp .UNIQUE6493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6493: 
	call	putchar
.L525:
 jmp .UNIQUE6494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6494: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6495: 
	ret
	.cfi_endproc
.LFE118:
	.size	print_fun_params, .-print_fun_params
	.section	.rodata
	.align 8
.LC107:
	.string	"Printing fun params that point in stack:"
	.text
	.globl	print_fun_params_that_point_in_stack
	.type	print_fun_params_that_point_in_stack, @function
print_fun_params_that_point_in_stack:
.LFB119:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6496: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6497: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6498: 
	subq	$32, %rsp
 jmp .UNIQUE6499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6499: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6500: 
	movl	$.LC107, %edi
 jmp .UNIQUE6501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6501: 
	call	puts
 jmp .UNIQUE6502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6502: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6503: 
	movq	(%rax), %rax
 jmp .UNIQUE6504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6504: 
	movq	%rax, %rsi
 jmp .UNIQUE6505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6505: 
	movl	$.LC85, %edi
 jmp .UNIQUE6506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6506: 
	movl	$0, %eax
 jmp .UNIQUE6507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6507: 
	call	printf
 jmp .UNIQUE6508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6508: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6509: 
	movq	8(%rax), %rax
 jmp .UNIQUE6510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6510: 
	movq	%rax, %rsi
 jmp .UNIQUE6511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6511: 
	movl	$.LC86, %edi
 jmp .UNIQUE6512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6512: 
	movl	$0, %eax
 jmp .UNIQUE6513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6513: 
	call	printf
 jmp .UNIQUE6514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6514: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6515: 
	movq	16(%rax), %rax
 jmp .UNIQUE6516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6516: 
	movq	(%rax), %rax
 jmp .UNIQUE6517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6517: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6518: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6519: 
	movq	%rax, %rsi
 jmp .UNIQUE6520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6520: 
	movl	$.LC87, %edi
 jmp .UNIQUE6521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6521: 
	movl	$0, %eax
 jmp .UNIQUE6522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6522: 
	call	printf
 jmp .UNIQUE6523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6523: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6524: 
	jle	.L552
 jmp .UNIQUE6525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6525: 
	movl	$.LC88, %edi
 jmp .UNIQUE6526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6526: 
	call	puts
 jmp .UNIQUE6527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6527: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6528: 
	jmp	.L553
.L554:
 jmp .UNIQUE6529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6529: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6530: 
	movq	16(%rax), %rax
 jmp .UNIQUE6531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6531: 
	movq	8(%rax), %rax
 jmp .UNIQUE6532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6532: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6533: 
	movq	%rdx, %rsi
 jmp .UNIQUE6534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6534: 
	movq	%rax, %rdi
 jmp .UNIQUE6535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6535: 
	call	get_stack_char_array_element
 jmp .UNIQUE6536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6536: 
	movsbl	%al, %eax
 jmp .UNIQUE6537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6537: 
	movl	%eax, %esi
 jmp .UNIQUE6538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6538: 
	movl	$.LC89, %edi
 jmp .UNIQUE6539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6539: 
	movl	$0, %eax
 jmp .UNIQUE6540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6540: 
	call	printf
 jmp .UNIQUE6541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6541: 
	addq	$1, -16(%rbp)
.L553:
 jmp .UNIQUE6542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6542: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6543: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6544: 
	jl	.L554
 jmp .UNIQUE6545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6545: 
	movl	$10, %edi
 jmp .UNIQUE6546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6546: 
	call	putchar
.L552:
 jmp .UNIQUE6547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6547: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6548: 
	movq	16(%rax), %rax
 jmp .UNIQUE6549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6549: 
	movq	16(%rax), %rax
 jmp .UNIQUE6550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6550: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6551: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6552: 
	movq	%rax, %rsi
 jmp .UNIQUE6553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6553: 
	movl	$.LC90, %edi
 jmp .UNIQUE6554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6554: 
	movl	$0, %eax
 jmp .UNIQUE6555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6555: 
	call	printf
 jmp .UNIQUE6556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6556: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6557: 
	jle	.L555
 jmp .UNIQUE6558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6558: 
	movl	$.LC91, %edi
 jmp .UNIQUE6559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6559: 
	call	puts
 jmp .UNIQUE6560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6560: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6561: 
	jmp	.L556
.L557:
 jmp .UNIQUE6562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6562: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6563: 
	movq	16(%rax), %rax
 jmp .UNIQUE6564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6564: 
	movq	24(%rax), %rax
 jmp .UNIQUE6565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6565: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6566: 
	movq	%rdx, %rsi
 jmp .UNIQUE6567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6567: 
	movq	%rax, %rdi
 jmp .UNIQUE6568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6568: 
	call	get_stack_int_array_element
 jmp .UNIQUE6569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6569: 
	movl	%eax, %esi
 jmp .UNIQUE6570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6570: 
	movl	$.LC22, %edi
 jmp .UNIQUE6571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6571: 
	movl	$0, %eax
 jmp .UNIQUE6572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6572: 
	call	printf
 jmp .UNIQUE6573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6573: 
	addq	$1, -16(%rbp)
.L556:
 jmp .UNIQUE6574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6574: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6575: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6576: 
	jl	.L557
 jmp .UNIQUE6577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6577: 
	movl	$10, %edi
 jmp .UNIQUE6578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6578: 
	call	putchar
.L555:
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
	movq	32(%rax), %rax
 jmp .UNIQUE6582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6582: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6583: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6584: 
	movq	%rax, %rsi
 jmp .UNIQUE6585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6585: 
	movl	$.LC92, %edi
 jmp .UNIQUE6586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6586: 
	movl	$0, %eax
 jmp .UNIQUE6587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6587: 
	call	printf
 jmp .UNIQUE6588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6588: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6589: 
	jle	.L558
 jmp .UNIQUE6590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6590: 
	movl	$.LC93, %edi
 jmp .UNIQUE6591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6591: 
	call	puts
 jmp .UNIQUE6592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6592: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6593: 
	jmp	.L559
.L560:
 jmp .UNIQUE6594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6594: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6595: 
	movq	16(%rax), %rax
 jmp .UNIQUE6596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6596: 
	movq	40(%rax), %rax
 jmp .UNIQUE6597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6597: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6598: 
	movq	%rdx, %rsi
 jmp .UNIQUE6599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6599: 
	movq	%rax, %rdi
 jmp .UNIQUE6600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6600: 
	call	get_stack_long_int_array_element
 jmp .UNIQUE6601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6601: 
	movq	%rax, %rsi
 jmp .UNIQUE6602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6602: 
	movl	$.LC94, %edi
 jmp .UNIQUE6603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6603: 
	movl	$0, %eax
 jmp .UNIQUE6604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6604: 
	call	printf
 jmp .UNIQUE6605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6605: 
	addq	$1, -16(%rbp)
.L559:
 jmp .UNIQUE6606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6606: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6607: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6608: 
	jl	.L560
 jmp .UNIQUE6609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6609: 
	movl	$10, %edi
 jmp .UNIQUE6610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6610: 
	call	putchar
.L558:
 jmp .UNIQUE6611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6611: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6612: 
	movq	16(%rax), %rax
 jmp .UNIQUE6613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6613: 
	movq	48(%rax), %rax
 jmp .UNIQUE6614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6614: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6615: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6616: 
	movq	%rax, %rsi
 jmp .UNIQUE6617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6617: 
	movl	$.LC95, %edi
 jmp .UNIQUE6618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6618: 
	movl	$0, %eax
 jmp .UNIQUE6619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6619: 
	call	printf
 jmp .UNIQUE6620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6620: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6621: 
	jle	.L561
 jmp .UNIQUE6622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6622: 
	movl	$.LC96, %edi
 jmp .UNIQUE6623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6623: 
	call	puts
 jmp .UNIQUE6624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6624: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6625: 
	jmp	.L562
.L563:
 jmp .UNIQUE6626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6626: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6627: 
	movq	16(%rax), %rax
 jmp .UNIQUE6628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6628: 
	movq	56(%rax), %rax
 jmp .UNIQUE6629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6629: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6630: 
	movq	%rdx, %rsi
 jmp .UNIQUE6631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6631: 
	movq	%rax, %rdi
 jmp .UNIQUE6632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6632: 
	call	get_stack_float_array_element
 jmp .UNIQUE6633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6633: 
	unpcklps	%xmm0, %xmm0
 jmp .UNIQUE6634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6634: 
	cvtps2pd	%xmm0, %xmm0
 jmp .UNIQUE6635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6635: 
	movl	$.LC97, %edi
 jmp .UNIQUE6636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6636: 
	movl	$1, %eax
 jmp .UNIQUE6637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6637: 
	call	printf
 jmp .UNIQUE6638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6638: 
	addq	$1, -16(%rbp)
.L562:
 jmp .UNIQUE6639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6639: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6640: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6641: 
	jl	.L563
 jmp .UNIQUE6642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6642: 
	movl	$10, %edi
 jmp .UNIQUE6643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6643: 
	call	putchar
.L561:
 jmp .UNIQUE6644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6644: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6645: 
	movq	16(%rax), %rax
 jmp .UNIQUE6646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6646: 
	movq	64(%rax), %rax
 jmp .UNIQUE6647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6647: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6648: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6649: 
	movq	%rax, %rsi
 jmp .UNIQUE6650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6650: 
	movl	$.LC98, %edi
 jmp .UNIQUE6651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6651: 
	movl	$0, %eax
 jmp .UNIQUE6652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6652: 
	call	printf
 jmp .UNIQUE6653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6653: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6654: 
	jle	.L564
 jmp .UNIQUE6655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6655: 
	movl	$.LC99, %edi
 jmp .UNIQUE6656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6656: 
	call	puts
 jmp .UNIQUE6657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6657: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6658: 
	jmp	.L565
.L566:
 jmp .UNIQUE6659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6659: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6660: 
	movq	16(%rax), %rax
 jmp .UNIQUE6661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6661: 
	movq	72(%rax), %rax
 jmp .UNIQUE6662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6662: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6663: 
	movq	%rdx, %rsi
 jmp .UNIQUE6664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6664: 
	movq	%rax, %rdi
 jmp .UNIQUE6665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6665: 
	call	get_stack_double_array_element
 jmp .UNIQUE6666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6666: 
	movsd	%xmm0, -32(%rbp)
 jmp .UNIQUE6667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6667: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE6668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6668: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE6669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6669: 
	movsd	-32(%rbp), %xmm0
 jmp .UNIQUE6670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6670: 
	movl	$.LC100, %edi
 jmp .UNIQUE6671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6671: 
	movl	$1, %eax
 jmp .UNIQUE6672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6672: 
	call	printf
 jmp .UNIQUE6673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6673: 
	addq	$1, -16(%rbp)
.L565:
 jmp .UNIQUE6674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6674: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6675: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6676: 
	jl	.L566
 jmp .UNIQUE6677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6677: 
	movl	$10, %edi
 jmp .UNIQUE6678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6678: 
	call	putchar
.L564:
 jmp .UNIQUE6679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6679: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6680: 
	movq	16(%rax), %rax
 jmp .UNIQUE6681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6681: 
	movq	80(%rax), %rax
 jmp .UNIQUE6682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6682: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6683: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6684: 
	movq	%rax, %rsi
 jmp .UNIQUE6685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6685: 
	movl	$.LC101, %edi
 jmp .UNIQUE6686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6686: 
	movl	$0, %eax
 jmp .UNIQUE6687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6687: 
	call	printf
 jmp .UNIQUE6688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6688: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6689: 
	jle	.L567
 jmp .UNIQUE6690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6690: 
	movl	$.LC102, %edi
 jmp .UNIQUE6691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6691: 
	call	puts
 jmp .UNIQUE6692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6692: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6693: 
	jmp	.L568
.L569:
 jmp .UNIQUE6694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6694: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6695: 
	movq	16(%rax), %rax
 jmp .UNIQUE6696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6696: 
	movq	88(%rax), %rax
 jmp .UNIQUE6697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6697: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6698: 
	salq	$3, %rdx
 jmp .UNIQUE6699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6699: 
	addq	%rdx, %rax
 jmp .UNIQUE6700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6700: 
	movq	(%rax), %rax
 jmp .UNIQUE6701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6701: 
	movq	%rax, %rsi
 jmp .UNIQUE6702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6702: 
	movl	$.LC94, %edi
 jmp .UNIQUE6703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6703: 
	movl	$0, %eax
 jmp .UNIQUE6704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6704: 
	call	printf
 jmp .UNIQUE6705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6705: 
	addq	$1, -16(%rbp)
.L568:
 jmp .UNIQUE6706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6706: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6707: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6708: 
	jl	.L569
 jmp .UNIQUE6709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6709: 
	movl	$10, %edi
 jmp .UNIQUE6710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6710: 
	call	putchar
 jmp .UNIQUE6711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6711: 
	movl	$.LC103, %edi
 jmp .UNIQUE6712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6712: 
	call	puts
 jmp .UNIQUE6713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6713: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6714: 
	jmp	.L570
.L571:
 jmp .UNIQUE6715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6715: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6716: 
	movq	16(%rax), %rax
 jmp .UNIQUE6717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6717: 
	movq	96(%rax), %rax
 jmp .UNIQUE6718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6718: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6719: 
	movq	%rdx, %rsi
 jmp .UNIQUE6720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6720: 
	movq	%rax, %rdi
 jmp .UNIQUE6721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6721: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE6722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6722: 
	movq	%rax, %rsi
 jmp .UNIQUE6723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6723: 
	movl	$.LC94, %edi
 jmp .UNIQUE6724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6724: 
	movl	$0, %eax
 jmp .UNIQUE6725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6725: 
	call	printf
 jmp .UNIQUE6726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6726: 
	addq	$1, -16(%rbp)
.L570:
 jmp .UNIQUE6727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6727: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6728: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6729: 
	jl	.L571
 jmp .UNIQUE6730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6730: 
	movl	$10, %edi
 jmp .UNIQUE6731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6731: 
	call	putchar
.L567:
 jmp .UNIQUE6732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6732: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6733: 
	movq	16(%rax), %rax
 jmp .UNIQUE6734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6734: 
	movq	104(%rax), %rax
 jmp .UNIQUE6735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6735: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6736: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6737: 
	movq	%rax, %rsi
 jmp .UNIQUE6738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6738: 
	movl	$.LC104, %edi
 jmp .UNIQUE6739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6739: 
	movl	$0, %eax
 jmp .UNIQUE6740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6740: 
	call	printf
 jmp .UNIQUE6741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6741: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6742: 
	jle	.L551
 jmp .UNIQUE6743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6743: 
	movl	$.LC105, %edi
 jmp .UNIQUE6744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6744: 
	call	puts
 jmp .UNIQUE6745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6745: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6746: 
	jmp	.L573
.L574:
 jmp .UNIQUE6747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6747: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6748: 
	movq	16(%rax), %rax
 jmp .UNIQUE6749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6749: 
	movq	112(%rax), %rax
 jmp .UNIQUE6750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6750: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6751: 
	salq	$3, %rdx
 jmp .UNIQUE6752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6752: 
	addq	%rdx, %rax
 jmp .UNIQUE6753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6753: 
	movq	(%rax), %rax
 jmp .UNIQUE6754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6754: 
	movq	%rax, %rsi
 jmp .UNIQUE6755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6755: 
	movl	$.LC94, %edi
 jmp .UNIQUE6756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6756: 
	movl	$0, %eax
 jmp .UNIQUE6757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6757: 
	call	printf
 jmp .UNIQUE6758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6758: 
	addq	$1, -16(%rbp)
.L573:
 jmp .UNIQUE6759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6759: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6760: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6761: 
	jl	.L574
 jmp .UNIQUE6762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6762: 
	movl	$10, %edi
 jmp .UNIQUE6763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6763: 
	call	putchar
 jmp .UNIQUE6764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6764: 
	movl	$.LC106, %edi
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
	movq	$0, -16(%rbp)
 jmp .UNIQUE6767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6767: 
	jmp	.L575
.L576:
 jmp .UNIQUE6768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6768: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6769: 
	movq	16(%rax), %rax
 jmp .UNIQUE6770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6770: 
	movq	120(%rax), %rax
 jmp .UNIQUE6771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6771: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6772: 
	salq	$3, %rdx
 jmp .UNIQUE6773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6773: 
	addq	%rdx, %rax
 jmp .UNIQUE6774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6774: 
	movq	(%rax), %rax
 jmp .UNIQUE6775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6775: 
	movq	%rax, %rsi
 jmp .UNIQUE6776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6776: 
	movl	$.LC94, %edi
 jmp .UNIQUE6777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6777: 
	movl	$0, %eax
 jmp .UNIQUE6778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6778: 
	call	printf
 jmp .UNIQUE6779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6779: 
	addq	$1, -16(%rbp)
.L575:
 jmp .UNIQUE6780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6780: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6781: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6782: 
	jl	.L576
 jmp .UNIQUE6783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6783: 
	movl	$10, %edi
 jmp .UNIQUE6784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6784: 
	call	putchar
.L551:
 jmp .UNIQUE6785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6785: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6786: 
	ret
	.cfi_endproc
.LFE119:
	.size	print_fun_params_that_point_in_stack, .-print_fun_params_that_point_in_stack
	.globl	tower_of_Hanoi_init_secure_template
	.type	tower_of_Hanoi_init_secure_template, @function
tower_of_Hanoi_init_secure_template:
.LFB120:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6787: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6788: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6789: 
	pushq	%rbx
 jmp .UNIQUE6790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6790: 
	subq	$88, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE6791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6791: 
	movl	%edi, -84(%rbp)
 jmp .UNIQUE6792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6792: 
	movl	%ecx, %eax
 jmp .UNIQUE6793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6793: 
	movb	%sil, -88(%rbp)
 jmp .UNIQUE6794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6794: 
	movb	%dl, -92(%rbp)
 jmp .UNIQUE6795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6795: 
	movb	%al, -96(%rbp)
 jmp .UNIQUE6796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6796: 
	movq	$4, -56(%rbp)
 jmp .UNIQUE6797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6797: 
	movzbl	-88(%rbp), %eax
 jmp .UNIQUE6798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6798: 
	movb	%al, -80(%rbp)
 jmp .UNIQUE6799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6799: 
	movzbl	-92(%rbp), %eax
 jmp .UNIQUE6800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6800: 
	movb	%al, -79(%rbp)
 jmp .UNIQUE6801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6801: 
	movzbl	-96(%rbp), %eax
 jmp .UNIQUE6802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6802: 
	movb	%al, -78(%rbp)
 jmp .UNIQUE6803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6803: 
	movl	$1556, %edx
 jmp .UNIQUE6804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6804: 
	movl	$__func__.5988, %esi
 jmp .UNIQUE6805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6805: 
	movl	$24, %edi
 jmp .UNIQUE6806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6806: 
	call	error_checking_malloc
 jmp .UNIQUE6807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6807: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE6808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6808: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6809: 
	movq	$7, (%rax)
 jmp .UNIQUE6810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6810: 
	movq	-56(%rbp), %rbx
 jmp .UNIQUE6811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6811: 
	movl	$3, %eax
 jmp .UNIQUE6812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6812: 
	movl	$0, %edx
 jmp .UNIQUE6813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6813: 
	divq	%rbx
 jmp .UNIQUE6814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6814: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE6815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6815: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE6816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6816: 
	imulq	-56(%rbp), %rax
 jmp .UNIQUE6817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6817: 
	cmpq	$2, %rax
 jmp .UNIQUE6818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6818: 
	ja	.L578
 jmp .UNIQUE6819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6819: 
	addq	$1, -72(%rbp)
.L578:
 jmp .UNIQUE6820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6820: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE6821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6821: 
	movl	$4, %eax
 jmp .UNIQUE6822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6822: 
	movl	$0, %edx
 jmp .UNIQUE6823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6823: 
	divq	%rcx
 jmp .UNIQUE6824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6824: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE6825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6825: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE6826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6826: 
	imulq	-56(%rbp), %rax
 jmp .UNIQUE6827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6827: 
	cmpq	$3, %rax
 jmp .UNIQUE6828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6828: 
	ja	.L579
 jmp .UNIQUE6829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6829: 
	addq	$1, -64(%rbp)
.L579:
 jmp .UNIQUE6830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6830: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE6831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6831: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE6832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6832: 
	addq	%rax, %rdx
 jmp .UNIQUE6833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6833: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6834: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE6835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6835: 
	movl	$1566, %edx
 jmp .UNIQUE6836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6836: 
	movl	$__func__.5988, %esi
 jmp .UNIQUE6837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6837: 
	movl	$128, %edi
 jmp .UNIQUE6838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6838: 
	call	error_checking_malloc
 jmp .UNIQUE6839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6839: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE6840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6840: 
	movq	%rax, 16(%rdx)
 jmp .UNIQUE6841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6841: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6842: 
	movq	16(%rax), %rax
 jmp .UNIQUE6843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6843: 
	movl	$128, %edx
 jmp .UNIQUE6844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6844: 
	movl	$0, %esi
 jmp .UNIQUE6845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6845: 
	movq	%rax, %rdi
 jmp .UNIQUE6846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6846: 
	call	memset
 jmp .UNIQUE6847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6847: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6848: 
	movq	16(%rax), %rax
 jmp .UNIQUE6849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6849: 
	movq	$3, (%rax)
 jmp .UNIQUE6850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6850: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6851: 
	movq	16(%rax), %rax
 jmp .UNIQUE6852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6852: 
	movq	$1, 16(%rax)
 jmp .UNIQUE6853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6853: 
	movl	$3, %edi
 jmp .UNIQUE6854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6854: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE6855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6855: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE6856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6856: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE6857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6857: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6858: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE6859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6859: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6860: 
	movq	16(%rax), %rax
 jmp .UNIQUE6861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6861: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE6862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6862: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE6863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6863: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE6864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6864: 
	je	.L580
 jmp .UNIQUE6865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6865: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE6866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6866: 
	leaq	-80(%rbp), %rax
 jmp .UNIQUE6867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6867: 
	movq	%rax, %rsi
 jmp .UNIQUE6868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6868: 
	movl	$3, %edi
 jmp .UNIQUE6869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6869: 
	call	insert_data_into_stack_mem
.L580:
 jmp .UNIQUE6870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6870: 
	movl	$4, %edi
 jmp .UNIQUE6871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6871: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE6872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6872: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE6873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6873: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE6874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6874: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6875: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE6876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6876: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6877: 
	movq	16(%rax), %rax
 jmp .UNIQUE6878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6878: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE6879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6879: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE6880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6880: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE6881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6881: 
	je	.L581
 jmp .UNIQUE6882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6882: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE6883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6883: 
	leaq	-84(%rbp), %rax
 jmp .UNIQUE6884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6884: 
	movq	%rax, %rsi
 jmp .UNIQUE6885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6885: 
	movl	$4, %edi
 jmp .UNIQUE6886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6886: 
	call	insert_data_into_stack_mem
.L581:
 jmp .UNIQUE6887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6887: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6888: 
	addq	$88, %rsp
 jmp .UNIQUE6889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6889: 
	popq	%rbx
 jmp .UNIQUE6890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6890: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6891: 
	ret
	.cfi_endproc
.LFE120:
	.size	tower_of_Hanoi_init_secure_template, .-tower_of_Hanoi_init_secure_template
	.section	.rodata
.LC108:
	.string	"Allocating double array"
.LC109:
	.string	"Initializing fun params"
	.align 8
.LC112:
	.string	"Inserting fun params into secure stack"
.LC113:
	.string	"Printing chars"
.LC114:
	.string	"Printing ints"
.LC115:
	.string	"Printing doubles"
.LC116:
	.string	"Changing pointer"
.LC117:
	.string	"Printing array of doubles"
.LC118:
	.string	"i=%d, %lf "
	.align 8
.LC119:
	.string	"Fetching double array using arbitrary block"
	.align 8
.LC120:
	.string	"Fetching double array elements (one by one), using arbitrary blocks"
	.text
	.globl	stack_fun_params_test
	.type	stack_fun_params_test, @function
stack_fun_params_test:
.LFB121:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6892: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6893: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6894: 
	subq	$144, %rsp
 jmp .UNIQUE6895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6895: 
	movl	$.LC108, %edi
 jmp .UNIQUE6896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6896: 
	call	puts
 jmp .UNIQUE6897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6897: 
	movl	$9, %edx
 jmp .UNIQUE6898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6898: 
	movl	$__func__.5994, %esi
 jmp .UNIQUE6899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6899: 
	movl	$80, %edi
 jmp .UNIQUE6900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6900: 
	call	error_checking_malloc
 jmp .UNIQUE6901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6901: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE6902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6902: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE6903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6903: 
	jmp	.L584
.L585:
 jmp .UNIQUE6904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6904: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE6905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6905: 
	cltq
 jmp .UNIQUE6906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6906: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE6907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6907: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6908: 
	addq	%rdx, %rax
 jmp .UNIQUE6909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6909: 
	movl	-20(%rbp), %edx
 jmp .UNIQUE6910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6910: 
	addl	$100, %edx
 jmp .UNIQUE6911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6911: 
	cvtsi2sd	%edx, %xmm0
 jmp .UNIQUE6912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6912: 
	movsd	%xmm0, (%rax)
 jmp .UNIQUE6913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6913: 
	addl	$1, -20(%rbp)
.L584:
 jmp .UNIQUE6914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6914: 
	cmpl	$9, -20(%rbp)
 jmp .UNIQUE6915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6915: 
	jle	.L585
 jmp .UNIQUE6916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6916: 
	movl	$.LC109, %edi
 jmp .UNIQUE6917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6917: 
	call	puts
 jmp .UNIQUE6918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6918: 
	movabsq	$4633156929650876744, %rdx
 jmp .UNIQUE6919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6919: 
	movabsq	$4631166901565532406, %rax
 jmp .UNIQUE6920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6920: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE6921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6921: 
	movq	%rcx, 96(%rsp)
 jmp .UNIQUE6922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6922: 
	movq	$80, 88(%rsp)
 jmp .UNIQUE6923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6923: 
	movq	$1, 80(%rsp)
 jmp .UNIQUE6924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6924: 
	movl	$424242, 72(%rsp)
 jmp .UNIQUE6925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6925: 
	movq	$10, 64(%rsp)
 jmp .UNIQUE6926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6926: 
	movq	$1, 56(%rsp)
 jmp .UNIQUE6927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6927: 
	movq	$2, 48(%rsp)
 jmp .UNIQUE6928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6928: 
	movq	$0, 40(%rsp)
 jmp .UNIQUE6929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6929: 
	movq	$0, 32(%rsp)
 jmp .UNIQUE6930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6930: 
	movl	$41, 24(%rsp)
 jmp .UNIQUE6931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6931: 
	movl	$42, 16(%rsp)
 jmp .UNIQUE6932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6932: 
	movq	$2, 8(%rsp)
 jmp .UNIQUE6933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6933: 
	movl	$103, (%rsp)
 jmp .UNIQUE6934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6934: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE6935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6935: 
	movsd	-40(%rbp), %xmm1
 jmp .UNIQUE6936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6936: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE6937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6937: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE6938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6938: 
	movl	$102, %r9d
 jmp .UNIQUE6939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6939: 
	movl	$101, %r8d
 jmp .UNIQUE6940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6940: 
	movl	$100, %ecx
 jmp .UNIQUE6941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6941: 
	movl	$99, %edx
 jmp .UNIQUE6942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6942: 
	movl	$5, %esi
 jmp .UNIQUE6943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6943: 
	movl	$1, %edi
 jmp .UNIQUE6944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6944: 
	movl	$2, %eax
 jmp .UNIQUE6945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6945: 
	call	init_function_params
 jmp .UNIQUE6946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6946: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6947: 
	movl	$.LC112, %edi
 jmp .UNIQUE6948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6948: 
	call	puts
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
	movq	%rax, %rdi
 jmp .UNIQUE6951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6951: 
	call	put_fun_params_into_secure_stack_and_free
 jmp .UNIQUE6952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6952: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6953: 
	movl	$.LC113, %edi
 jmp .UNIQUE6954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6954: 
	call	puts
 jmp .UNIQUE6955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6955: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE6956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6956: 
	jmp	.L586
.L587:
 jmp .UNIQUE6957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6957: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE6958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6958: 
	movslq	%eax, %rdx
 jmp .UNIQUE6959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6959: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6960: 
	movq	16(%rax), %rax
 jmp .UNIQUE6961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6961: 
	movq	8(%rax), %rax
 jmp .UNIQUE6962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6962: 
	movq	%rdx, %rsi
 jmp .UNIQUE6963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6963: 
	movq	%rax, %rdi
 jmp .UNIQUE6964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6964: 
	call	get_stack_char_array_element
 jmp .UNIQUE6965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6965: 
	movsbl	%al, %eax
 jmp .UNIQUE6966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6966: 
	movl	%eax, %esi
 jmp .UNIQUE6967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6967: 
	movl	$.LC89, %edi
 jmp .UNIQUE6968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6968: 
	movl	$0, %eax
 jmp .UNIQUE6969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6969: 
	call	printf
 jmp .UNIQUE6970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6970: 
	addl	$1, -20(%rbp)
.L586:
 jmp .UNIQUE6971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6971: 
	cmpl	$4, -20(%rbp)
 jmp .UNIQUE6972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6972: 
	jle	.L587
 jmp .UNIQUE6973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6973: 
	movl	$10, %edi
 jmp .UNIQUE6974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6974: 
	call	putchar
 jmp .UNIQUE6975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6975: 
	movl	$.LC114, %edi
 jmp .UNIQUE6976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6976: 
	call	puts
 jmp .UNIQUE6977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6977: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE6978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6978: 
	jmp	.L588
.L589:
 jmp .UNIQUE6979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6979: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE6980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6980: 
	movslq	%eax, %rdx
 jmp .UNIQUE6981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6981: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6982: 
	movq	16(%rax), %rax
 jmp .UNIQUE6983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6983: 
	movq	24(%rax), %rax
 jmp .UNIQUE6984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6984: 
	movq	%rdx, %rsi
 jmp .UNIQUE6985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6985: 
	movq	%rax, %rdi
 jmp .UNIQUE6986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6986: 
	call	get_stack_int_array_element
 jmp .UNIQUE6987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6987: 
	movl	%eax, %esi
 jmp .UNIQUE6988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6988: 
	movl	$.LC22, %edi
 jmp .UNIQUE6989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6989: 
	movl	$0, %eax
 jmp .UNIQUE6990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6990: 
	call	printf
 jmp .UNIQUE6991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6991: 
	addl	$1, -20(%rbp)
.L588:
 jmp .UNIQUE6992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6992: 
	cmpl	$1, -20(%rbp)
 jmp .UNIQUE6993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6993: 
	jle	.L589
 jmp .UNIQUE6994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6994: 
	movl	$10, %edi
 jmp .UNIQUE6995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6995: 
	call	putchar
 jmp .UNIQUE6996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6996: 
	movl	$.LC115, %edi
 jmp .UNIQUE6997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6997: 
	call	puts
 jmp .UNIQUE6998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6998: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE6999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6999: 
	jmp	.L590
.L591:
 jmp .UNIQUE7000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7000: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE7001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7001: 
	movslq	%eax, %rdx
 jmp .UNIQUE7002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7002: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7003: 
	movq	16(%rax), %rax
 jmp .UNIQUE7004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7004: 
	movq	72(%rax), %rax
 jmp .UNIQUE7005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7005: 
	movq	%rdx, %rsi
 jmp .UNIQUE7006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7006: 
	movq	%rax, %rdi
 jmp .UNIQUE7007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7007: 
	call	get_stack_double_array_element
 jmp .UNIQUE7008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7008: 
	movsd	%xmm0, -40(%rbp)
 jmp .UNIQUE7009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7009: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7010: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE7011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7011: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE7012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7012: 
	movl	$.LC100, %edi
 jmp .UNIQUE7013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7013: 
	movl	$1, %eax
 jmp .UNIQUE7014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7014: 
	call	printf
 jmp .UNIQUE7015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7015: 
	addl	$1, -20(%rbp)
.L590:
 jmp .UNIQUE7016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7016: 
	cmpl	$1, -20(%rbp)
 jmp .UNIQUE7017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7017: 
	jle	.L591
 jmp .UNIQUE7018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7018: 
	movl	$10, %edi
 jmp .UNIQUE7019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7019: 
	call	putchar
 jmp .UNIQUE7020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7020: 
	movl	$.LC116, %edi
 jmp .UNIQUE7021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7021: 
	call	puts
 jmp .UNIQUE7022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7022: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7023: 
	movq	16(%rax), %rax
 jmp .UNIQUE7024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7024: 
	movq	24(%rax), %rdx
 jmp .UNIQUE7025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7025: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7026: 
	movq	16(%rax), %rax
 jmp .UNIQUE7027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7027: 
	movq	96(%rax), %rax
 jmp .UNIQUE7028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7028: 
	movl	$0, %esi
 jmp .UNIQUE7029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7029: 
	movq	%rax, %rdi
 jmp .UNIQUE7030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7030: 
	call	set_stack_pointer_array_element
 jmp .UNIQUE7031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7031: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7032: 
	movq	16(%rax), %rax
 jmp .UNIQUE7033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7033: 
	movq	96(%rax), %rax
 jmp .UNIQUE7034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7034: 
	movl	$0, %esi
 jmp .UNIQUE7035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7035: 
	movq	%rax, %rdi
 jmp .UNIQUE7036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7036: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE7037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7037: 
	movl	$45, %edx
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
	call	set_stack_int_array_element
 jmp .UNIQUE7041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7041: 
	movl	$.LC114, %edi
 jmp .UNIQUE7042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7042: 
	call	puts
 jmp .UNIQUE7043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7043: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE7044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7044: 
	jmp	.L592
.L593:
 jmp .UNIQUE7045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7045: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE7046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7046: 
	movslq	%eax, %rdx
 jmp .UNIQUE7047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7047: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7048: 
	movq	16(%rax), %rax
 jmp .UNIQUE7049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7049: 
	movq	24(%rax), %rax
 jmp .UNIQUE7050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7050: 
	movq	%rdx, %rsi
 jmp .UNIQUE7051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7051: 
	movq	%rax, %rdi
 jmp .UNIQUE7052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7052: 
	call	get_stack_int_array_element
 jmp .UNIQUE7053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7053: 
	movl	%eax, %esi
 jmp .UNIQUE7054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7054: 
	movl	$.LC22, %edi
 jmp .UNIQUE7055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7055: 
	movl	$0, %eax
 jmp .UNIQUE7056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7056: 
	call	printf
 jmp .UNIQUE7057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7057: 
	addl	$1, -20(%rbp)
.L592:
 jmp .UNIQUE7058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7058: 
	cmpl	$1, -20(%rbp)
 jmp .UNIQUE7059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7059: 
	jle	.L593
 jmp .UNIQUE7060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7060: 
	movl	$10, %edi
 jmp .UNIQUE7061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7061: 
	call	putchar
 jmp .UNIQUE7062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7062: 
	movl	$.LC117, %edi
 jmp .UNIQUE7063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7063: 
	call	puts
 jmp .UNIQUE7064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7064: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE7065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7065: 
	jmp	.L594
.L595:
 jmp .UNIQUE7066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7066: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE7067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7067: 
	movslq	%eax, %rdx
 jmp .UNIQUE7068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7068: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7069: 
	movq	16(%rax), %rax
 jmp .UNIQUE7070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7070: 
	movq	120(%rax), %rax
 jmp .UNIQUE7071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7071: 
	movq	(%rax), %rax
 jmp .UNIQUE7072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7072: 
	movq	%rdx, %rsi
 jmp .UNIQUE7073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7073: 
	movq	%rax, %rdi
 jmp .UNIQUE7074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7074: 
	call	get_stack_double_array_element
 jmp .UNIQUE7075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7075: 
	movsd	%xmm0, -40(%rbp)
 jmp .UNIQUE7076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7076: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7077: 
	movl	-20(%rbp), %edx
 jmp .UNIQUE7078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7078: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE7079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7079: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE7080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7080: 
	movl	%edx, %esi
 jmp .UNIQUE7081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7081: 
	movl	$.LC118, %edi
 jmp .UNIQUE7082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7082: 
	movl	$1, %eax
 jmp .UNIQUE7083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7083: 
	call	printf
 jmp .UNIQUE7084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7084: 
	addl	$1, -20(%rbp)
.L594:
 jmp .UNIQUE7085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7085: 
	cmpl	$9, -20(%rbp)
 jmp .UNIQUE7086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7086: 
	jle	.L595
 jmp .UNIQUE7087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7087: 
	movl	$.LC119, %edi
 jmp .UNIQUE7088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7088: 
	call	puts
 jmp .UNIQUE7089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7089: 
	movl	$57, %edx
 jmp .UNIQUE7090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7090: 
	movl	$__func__.5994, %esi
 jmp .UNIQUE7091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7091: 
	movl	$80, %edi
 jmp .UNIQUE7092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7092: 
	call	error_checking_malloc
 jmp .UNIQUE7093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7093: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE7094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7094: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7095: 
	movq	16(%rax), %rax
 jmp .UNIQUE7096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7096: 
	movq	120(%rax), %rax
 jmp .UNIQUE7097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7097: 
	movq	(%rax), %rax
 jmp .UNIQUE7098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7098: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE7099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7099: 
	movq	%rax, %rsi
 jmp .UNIQUE7100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7100: 
	movl	$80, %edi
 jmp .UNIQUE7101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7101: 
	call	get_arbitrary_block_in_stack
 jmp .UNIQUE7102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7102: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE7103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7103: 
	jmp	.L596
.L597:
 jmp .UNIQUE7104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7104: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE7105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7105: 
	cltq
 jmp .UNIQUE7106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7106: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE7107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7107: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE7108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7108: 
	addq	%rdx, %rax
 jmp .UNIQUE7109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7109: 
	movq	(%rax), %rax
 jmp .UNIQUE7110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7110: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE7111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7111: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE7112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7112: 
	movl	$.LC69, %edi
 jmp .UNIQUE7113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7113: 
	movl	$1, %eax
 jmp .UNIQUE7114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7114: 
	call	printf
 jmp .UNIQUE7115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7115: 
	addl	$1, -20(%rbp)
.L596:
 jmp .UNIQUE7116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7116: 
	cmpl	$9, -20(%rbp)
 jmp .UNIQUE7117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7117: 
	jle	.L597
 jmp .UNIQUE7118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7118: 
	movl	$10, %edi
 jmp .UNIQUE7119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7119: 
	call	putchar
 jmp .UNIQUE7120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7120: 
	movl	$.LC120, %edi
 jmp .UNIQUE7121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7121: 
	call	puts
 jmp .UNIQUE7122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7122: 
	movl	$66, %edx
 jmp .UNIQUE7123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7123: 
	movl	$__func__.5994, %esi
 jmp .UNIQUE7124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7124: 
	movl	$80, %edi
 jmp .UNIQUE7125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7125: 
	call	error_checking_malloc
 jmp .UNIQUE7126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7126: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE7127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7127: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE7128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7128: 
	jmp	.L598
.L599:
 jmp .UNIQUE7129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7129: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE7130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7130: 
	cltq
 jmp .UNIQUE7131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7131: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE7132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7132: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE7133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7133: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE7134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7134: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE7135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7135: 
	cltq
 jmp .UNIQUE7136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7136: 
	salq	$3, %rax
 jmp .UNIQUE7137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7137: 
	movq	%rax, %rdx
 jmp .UNIQUE7138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7138: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7139: 
	movq	16(%rax), %rax
 jmp .UNIQUE7140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7140: 
	movq	120(%rax), %rax
 jmp .UNIQUE7141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7141: 
	movq	(%rax), %rax
 jmp .UNIQUE7142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7142: 
	movq	%rax, %rsi
 jmp .UNIQUE7143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7143: 
	movl	$8, %edi
 jmp .UNIQUE7144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7144: 
	call	get_arbitrary_block_in_stack_with_offset
 jmp .UNIQUE7145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7145: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE7146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7146: 
	cltq
 jmp .UNIQUE7147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7147: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE7148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7148: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE7149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7149: 
	addq	%rdx, %rax
 jmp .UNIQUE7150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7150: 
	movq	(%rax), %rax
 jmp .UNIQUE7151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7151: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE7152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7152: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE7153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7153: 
	movl	$.LC69, %edi
 jmp .UNIQUE7154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7154: 
	movl	$1, %eax
 jmp .UNIQUE7155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7155: 
	call	printf
 jmp .UNIQUE7156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7156: 
	addl	$1, -20(%rbp)
.L598:
 jmp .UNIQUE7157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7157: 
	cmpl	$9, -20(%rbp)
 jmp .UNIQUE7158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7158: 
	jle	.L599
 jmp .UNIQUE7159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7159: 
	movl	$10, %edi
 jmp .UNIQUE7160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7160: 
	call	putchar
 jmp .UNIQUE7161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7161: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7162: 
	ret
	.cfi_endproc
.LFE121:
	.size	stack_fun_params_test, .-stack_fun_params_test
	.globl	towerOfHanoi
	.type	towerOfHanoi, @function
towerOfHanoi:
.LFB122:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE7163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7163: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7164: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7165: 
	subq	$16, %rsp
 jmp .UNIQUE7166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7166: 
	movl	%edi, -4(%rbp)
 jmp .UNIQUE7167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7167: 
	movl	%ecx, %eax
 jmp .UNIQUE7168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7168: 
	movb	%sil, -8(%rbp)
 jmp .UNIQUE7169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7169: 
	movb	%dl, -12(%rbp)
 jmp .UNIQUE7170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7170: 
	movb	%al, -16(%rbp)
 jmp .UNIQUE7171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7171: 
	cmpl	$1, -4(%rbp)
 jmp .UNIQUE7172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7172: 
	jne	.L601
 jmp .UNIQUE7173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7173: 
	jmp	.L600
.L601:
 jmp .UNIQUE7174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7174: 
	movsbl	-12(%rbp), %ecx
 jmp .UNIQUE7175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7175: 
	movsbl	-16(%rbp), %edx
 jmp .UNIQUE7176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7176: 
	movsbl	-8(%rbp), %eax
 jmp .UNIQUE7177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7177: 
	movl	-4(%rbp), %esi
 jmp .UNIQUE7178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7178: 
	leal	-1(%rsi), %edi
 jmp .UNIQUE7179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7179: 
	movl	%eax, %esi
 jmp .UNIQUE7180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7180: 
	call	towerOfHanoi
 jmp .UNIQUE7181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7181: 
	movsbl	-8(%rbp), %ecx
 jmp .UNIQUE7182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7182: 
	movsbl	-12(%rbp), %edx
 jmp .UNIQUE7183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7183: 
	movsbl	-16(%rbp), %eax
 jmp .UNIQUE7184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7184: 
	movl	-4(%rbp), %esi
 jmp .UNIQUE7185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7185: 
	leal	-1(%rsi), %edi
 jmp .UNIQUE7186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7186: 
	movl	%eax, %esi
 jmp .UNIQUE7187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7187: 
	call	towerOfHanoi
.L600:
 jmp .UNIQUE7188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7188: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7189: 
	ret
	.cfi_endproc
.LFE122:
	.size	towerOfHanoi, .-towerOfHanoi
	.globl	towerOfHanoi_secure
	.type	towerOfHanoi_secure, @function
towerOfHanoi_secure:
.LFB123:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE7190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7190: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7191: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7192: 
	pushq	%r13
 jmp .UNIQUE7193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7193: 
	pushq	%r12
 jmp .UNIQUE7194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7194: 
	pushq	%rbx
 jmp .UNIQUE7195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7195: 
	subq	$88, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
 jmp .UNIQUE7196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7196: 
	movl	%edi, -52(%rbp)
 jmp .UNIQUE7197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7197: 
	movl	%ecx, %eax
 jmp .UNIQUE7198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7198: 
	movb	%sil, -56(%rbp)
 jmp .UNIQUE7199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7199: 
	movb	%dl, -60(%rbp)
 jmp .UNIQUE7200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7200: 
	movb	%al, -64(%rbp)
 jmp .UNIQUE7201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7201: 
	movsbl	-64(%rbp), %esi
 jmp .UNIQUE7202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7202: 
	movsbl	-60(%rbp), %edx
 jmp .UNIQUE7203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7203: 
	movsbl	-56(%rbp), %eax
 jmp .UNIQUE7204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7204: 
	movq	$0, 40(%rsp)
 jmp .UNIQUE7205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7205: 
	movq	$0, 32(%rsp)
 jmp .UNIQUE7206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7206: 
	movq	$0, 24(%rsp)
 jmp .UNIQUE7207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7207: 
	movq	$0, 16(%rsp)
 jmp .UNIQUE7208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7208: 
	movq	$0, 8(%rsp)
 jmp .UNIQUE7209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7209: 
	movl	-52(%rbp), %ecx
 jmp .UNIQUE7210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7210: 
	movl	%ecx, (%rsp)
 jmp .UNIQUE7211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7211: 
	movl	$1, %r9d
 jmp .UNIQUE7212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7212: 
	movl	%esi, %r8d
 jmp .UNIQUE7213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7213: 
	movl	%edx, %ecx
 jmp .UNIQUE7214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7214: 
	movl	%eax, %edx
 jmp .UNIQUE7215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7215: 
	movl	$3, %esi
 jmp .UNIQUE7216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7216: 
	movl	$1, %edi
 jmp .UNIQUE7217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7217: 
	movl	$0, %eax
 jmp .UNIQUE7218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7218: 
	call	init_function_params
 jmp .UNIQUE7219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7219: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE7220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7220: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7221: 
	movq	%rax, %rdi
 jmp .UNIQUE7222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7222: 
	call	put_fun_params_into_secure_stack_and_free
 jmp .UNIQUE7223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7223: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE7224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7224: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7225: 
	movq	16(%rax), %rax
 jmp .UNIQUE7226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7226: 
	movq	24(%rax), %rax
 jmp .UNIQUE7227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7227: 
	movl	$0, %esi
 jmp .UNIQUE7228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7228: 
	movq	%rax, %rdi
 jmp .UNIQUE7229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7229: 
	call	get_stack_int_array_element
 jmp .UNIQUE7230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7230: 
	cmpl	$1, %eax
 jmp .UNIQUE7231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7231: 
	jne	.L604
 jmp .UNIQUE7232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7232: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7233: 
	movq	8(%rax), %rax
 jmp .UNIQUE7234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7234: 
	movq	%rax, %rdi
 jmp .UNIQUE7235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7235: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE7236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7236: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7237: 
	movq	%rax, %rdi
 jmp .UNIQUE7238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7238: 
	call	free_fun_params_that_point_to_stack
 jmp .UNIQUE7239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7239: 
	jmp	.L603
.L604:
 jmp .UNIQUE7240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7240: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7241: 
	movq	16(%rax), %rax
 jmp .UNIQUE7242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7242: 
	movq	8(%rax), %rax
 jmp .UNIQUE7243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7243: 
	movl	$1, %esi
 jmp .UNIQUE7244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7244: 
	movq	%rax, %rdi
 jmp .UNIQUE7245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7245: 
	call	get_stack_char_array_element
 jmp .UNIQUE7246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7246: 
	movsbl	%al, %r13d
 jmp .UNIQUE7247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7247: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7248: 
	movq	16(%rax), %rax
 jmp .UNIQUE7249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7249: 
	movq	8(%rax), %rax
 jmp .UNIQUE7250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7250: 
	movl	$2, %esi
 jmp .UNIQUE7251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7251: 
	movq	%rax, %rdi
 jmp .UNIQUE7252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7252: 
	call	get_stack_char_array_element
 jmp .UNIQUE7253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7253: 
	movsbl	%al, %r12d
 jmp .UNIQUE7254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7254: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7255: 
	movq	16(%rax), %rax
 jmp .UNIQUE7256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7256: 
	movq	8(%rax), %rax
 jmp .UNIQUE7257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7257: 
	movl	$0, %esi
 jmp .UNIQUE7258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7258: 
	movq	%rax, %rdi
 jmp .UNIQUE7259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7259: 
	call	get_stack_char_array_element
 jmp .UNIQUE7260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7260: 
	movsbl	%al, %ebx
 jmp .UNIQUE7261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7261: 
	movq	-40(%rbp), %rax
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
	movl	$0, %esi
 jmp .UNIQUE7265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7265: 
	movq	%rax, %rdi
 jmp .UNIQUE7266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7266: 
	call	get_stack_int_array_element
 jmp .UNIQUE7267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7267: 
	subl	$1, %eax
 jmp .UNIQUE7268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7268: 
	movl	%r13d, %ecx
 jmp .UNIQUE7269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7269: 
	movl	%r12d, %edx
 jmp .UNIQUE7270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7270: 
	movl	%ebx, %esi
 jmp .UNIQUE7271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7271: 
	movl	%eax, %edi
 jmp .UNIQUE7272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7272: 
	call	towerOfHanoi_secure
 jmp .UNIQUE7273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7273: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7274: 
	movq	16(%rax), %rax
 jmp .UNIQUE7275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7275: 
	movq	8(%rax), %rax
 jmp .UNIQUE7276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7276: 
	movl	$0, %esi
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
	call	get_stack_char_array_element
 jmp .UNIQUE7279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7279: 
	movsbl	%al, %r13d
 jmp .UNIQUE7280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7280: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7281: 
	movq	16(%rax), %rax
 jmp .UNIQUE7282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7282: 
	movq	8(%rax), %rax
 jmp .UNIQUE7283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7283: 
	movl	$1, %esi
 jmp .UNIQUE7284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7284: 
	movq	%rax, %rdi
 jmp .UNIQUE7285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7285: 
	call	get_stack_char_array_element
 jmp .UNIQUE7286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7286: 
	movsbl	%al, %r12d
 jmp .UNIQUE7287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7287: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7288: 
	movq	16(%rax), %rax
 jmp .UNIQUE7289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7289: 
	movq	8(%rax), %rax
 jmp .UNIQUE7290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7290: 
	movl	$2, %esi
 jmp .UNIQUE7291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7291: 
	movq	%rax, %rdi
 jmp .UNIQUE7292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7292: 
	call	get_stack_char_array_element
 jmp .UNIQUE7293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7293: 
	movsbl	%al, %ebx
 jmp .UNIQUE7294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7294: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7295: 
	movq	16(%rax), %rax
 jmp .UNIQUE7296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7296: 
	movq	24(%rax), %rax
 jmp .UNIQUE7297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7297: 
	movl	$0, %esi
 jmp .UNIQUE7298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7298: 
	movq	%rax, %rdi
 jmp .UNIQUE7299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7299: 
	call	get_stack_int_array_element
 jmp .UNIQUE7300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7300: 
	subl	$1, %eax
 jmp .UNIQUE7301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7301: 
	movl	%r13d, %ecx
 jmp .UNIQUE7302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7302: 
	movl	%r12d, %edx
 jmp .UNIQUE7303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7303: 
	movl	%ebx, %esi
 jmp .UNIQUE7304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7304: 
	movl	%eax, %edi
 jmp .UNIQUE7305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7305: 
	call	towerOfHanoi_secure
 jmp .UNIQUE7306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7306: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7307: 
	movq	8(%rax), %rax
 jmp .UNIQUE7308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7308: 
	movq	%rax, %rdi
 jmp .UNIQUE7309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7309: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE7310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7310: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7311: 
	movq	%rax, %rdi
 jmp .UNIQUE7312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7312: 
	call	free_fun_params_that_point_to_stack
.L603:
 jmp .UNIQUE7313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7313: 
	addq	$88, %rsp
 jmp .UNIQUE7314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7314: 
	popq	%rbx
 jmp .UNIQUE7315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7315: 
	popq	%r12
 jmp .UNIQUE7316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7316: 
	popq	%r13
 jmp .UNIQUE7317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7317: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7318: 
	ret
	.cfi_endproc
.LFE123:
	.size	towerOfHanoi_secure, .-towerOfHanoi_secure
	.globl	towerOfHanoi_secure_using_template
	.type	towerOfHanoi_secure_using_template, @function
towerOfHanoi_secure_using_template:
.LFB124:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE7319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7319: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7320: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7321: 
	pushq	%r13
 jmp .UNIQUE7322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7322: 
	pushq	%r12
 jmp .UNIQUE7323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7323: 
	pushq	%rbx
 jmp .UNIQUE7324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7324: 
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
 jmp .UNIQUE7325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7325: 
	movl	%edi, -52(%rbp)
 jmp .UNIQUE7326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7326: 
	movl	%ecx, %eax
 jmp .UNIQUE7327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7327: 
	movb	%sil, -56(%rbp)
 jmp .UNIQUE7328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7328: 
	movb	%dl, -60(%rbp)
 jmp .UNIQUE7329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7329: 
	movb	%al, -64(%rbp)
 jmp .UNIQUE7330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7330: 
	movsbl	-64(%rbp), %ecx
 jmp .UNIQUE7331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7331: 
	movsbl	-60(%rbp), %edx
 jmp .UNIQUE7332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7332: 
	movsbl	-56(%rbp), %esi
 jmp .UNIQUE7333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7333: 
	movl	-52(%rbp), %eax
 jmp .UNIQUE7334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7334: 
	movl	%eax, %edi
 jmp .UNIQUE7335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7335: 
	call	tower_of_Hanoi_init_secure_template
 jmp .UNIQUE7336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7336: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE7337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7337: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7338: 
	movq	16(%rax), %rax
 jmp .UNIQUE7339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7339: 
	movq	24(%rax), %rax
 jmp .UNIQUE7340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7340: 
	movl	$0, %esi
 jmp .UNIQUE7341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7341: 
	movq	%rax, %rdi
 jmp .UNIQUE7342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7342: 
	call	get_stack_int_array_element
 jmp .UNIQUE7343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7343: 
	cmpl	$1, %eax
 jmp .UNIQUE7344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7344: 
	jne	.L607
 jmp .UNIQUE7345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7345: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7346: 
	movq	8(%rax), %rax
 jmp .UNIQUE7347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7347: 
	movq	%rax, %rdi
 jmp .UNIQUE7348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7348: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE7349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7349: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7350: 
	movq	%rax, %rdi
 jmp .UNIQUE7351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7351: 
	call	free_fun_params_that_point_to_stack
 jmp .UNIQUE7352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7352: 
	jmp	.L606
.L607:
 jmp .UNIQUE7353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7353: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7354: 
	movq	16(%rax), %rax
 jmp .UNIQUE7355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7355: 
	movq	8(%rax), %rax
 jmp .UNIQUE7356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7356: 
	movl	$1, %esi
 jmp .UNIQUE7357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7357: 
	movq	%rax, %rdi
 jmp .UNIQUE7358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7358: 
	call	get_stack_char_array_element
 jmp .UNIQUE7359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7359: 
	movsbl	%al, %r13d
 jmp .UNIQUE7360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7360: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7361: 
	movq	16(%rax), %rax
 jmp .UNIQUE7362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7362: 
	movq	8(%rax), %rax
 jmp .UNIQUE7363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7363: 
	movl	$2, %esi
 jmp .UNIQUE7364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7364: 
	movq	%rax, %rdi
 jmp .UNIQUE7365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7365: 
	call	get_stack_char_array_element
 jmp .UNIQUE7366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7366: 
	movsbl	%al, %r12d
 jmp .UNIQUE7367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7367: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7368: 
	movq	16(%rax), %rax
 jmp .UNIQUE7369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7369: 
	movq	8(%rax), %rax
 jmp .UNIQUE7370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7370: 
	movl	$0, %esi
 jmp .UNIQUE7371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7371: 
	movq	%rax, %rdi
 jmp .UNIQUE7372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7372: 
	call	get_stack_char_array_element
 jmp .UNIQUE7373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7373: 
	movsbl	%al, %ebx
 jmp .UNIQUE7374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7374: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7375: 
	movq	16(%rax), %rax
 jmp .UNIQUE7376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7376: 
	movq	24(%rax), %rax
 jmp .UNIQUE7377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7377: 
	movl	$0, %esi
 jmp .UNIQUE7378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7378: 
	movq	%rax, %rdi
 jmp .UNIQUE7379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7379: 
	call	get_stack_int_array_element
 jmp .UNIQUE7380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7380: 
	subl	$1, %eax
 jmp .UNIQUE7381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7381: 
	movl	%r13d, %ecx
 jmp .UNIQUE7382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7382: 
	movl	%r12d, %edx
 jmp .UNIQUE7383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7383: 
	movl	%ebx, %esi
 jmp .UNIQUE7384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7384: 
	movl	%eax, %edi
 jmp .UNIQUE7385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7385: 
	call	towerOfHanoi_secure_using_template
 jmp .UNIQUE7386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7386: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7387: 
	movq	16(%rax), %rax
 jmp .UNIQUE7388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7388: 
	movq	8(%rax), %rax
 jmp .UNIQUE7389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7389: 
	movl	$0, %esi
 jmp .UNIQUE7390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7390: 
	movq	%rax, %rdi
 jmp .UNIQUE7391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7391: 
	call	get_stack_char_array_element
 jmp .UNIQUE7392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7392: 
	movsbl	%al, %r13d
 jmp .UNIQUE7393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7393: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7394: 
	movq	16(%rax), %rax
 jmp .UNIQUE7395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7395: 
	movq	8(%rax), %rax
 jmp .UNIQUE7396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7396: 
	movl	$1, %esi
 jmp .UNIQUE7397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7397: 
	movq	%rax, %rdi
 jmp .UNIQUE7398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7398: 
	call	get_stack_char_array_element
 jmp .UNIQUE7399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7399: 
	movsbl	%al, %r12d
 jmp .UNIQUE7400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7400: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7401: 
	movq	16(%rax), %rax
 jmp .UNIQUE7402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7402: 
	movq	8(%rax), %rax
 jmp .UNIQUE7403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7403: 
	movl	$2, %esi
 jmp .UNIQUE7404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7404: 
	movq	%rax, %rdi
 jmp .UNIQUE7405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7405: 
	call	get_stack_char_array_element
 jmp .UNIQUE7406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7406: 
	movsbl	%al, %ebx
 jmp .UNIQUE7407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7407: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7408: 
	movq	16(%rax), %rax
 jmp .UNIQUE7409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7409: 
	movq	24(%rax), %rax
 jmp .UNIQUE7410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7410: 
	movl	$0, %esi
 jmp .UNIQUE7411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7411: 
	movq	%rax, %rdi
 jmp .UNIQUE7412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7412: 
	call	get_stack_int_array_element
 jmp .UNIQUE7413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7413: 
	subl	$1, %eax
 jmp .UNIQUE7414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7414: 
	movl	%r13d, %ecx
 jmp .UNIQUE7415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7415: 
	movl	%r12d, %edx
 jmp .UNIQUE7416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7416: 
	movl	%ebx, %esi
 jmp .UNIQUE7417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7417: 
	movl	%eax, %edi
 jmp .UNIQUE7418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7418: 
	call	towerOfHanoi_secure_using_template
 jmp .UNIQUE7419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7419: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7420: 
	movq	8(%rax), %rax
 jmp .UNIQUE7421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7421: 
	movq	%rax, %rdi
 jmp .UNIQUE7422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7422: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE7423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7423: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7424: 
	movq	%rax, %rdi
 jmp .UNIQUE7425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7425: 
	call	free_fun_params_that_point_to_stack
.L606:
 jmp .UNIQUE7426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7426: 
	addq	$40, %rsp
 jmp .UNIQUE7427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7427: 
	popq	%rbx
 jmp .UNIQUE7428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7428: 
	popq	%r12
 jmp .UNIQUE7429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7429: 
	popq	%r13
 jmp .UNIQUE7430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7430: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7431: 
	ret
	.cfi_endproc
.LFE124:
	.size	towerOfHanoi_secure_using_template, .-towerOfHanoi_secure_using_template
	.globl	towerOfHanoi_secure_using_changed_accesses
	.type	towerOfHanoi_secure_using_changed_accesses, @function
towerOfHanoi_secure_using_changed_accesses:
.LFB125:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE7432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7432: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7433: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7434: 
	pushq	%r13
 jmp .UNIQUE7435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7435: 
	pushq	%r12
 jmp .UNIQUE7436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7436: 
	pushq	%rbx
 jmp .UNIQUE7437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7437: 
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
 jmp .UNIQUE7438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7438: 
	movl	%edi, -68(%rbp)
 jmp .UNIQUE7439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7439: 
	movl	%ecx, %eax
 jmp .UNIQUE7440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7440: 
	movb	%sil, -72(%rbp)
 jmp .UNIQUE7441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7441: 
	movb	%dl, -76(%rbp)
 jmp .UNIQUE7442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7442: 
	movb	%al, -80(%rbp)
 jmp .UNIQUE7443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7443: 
	movsbl	-80(%rbp), %ecx
 jmp .UNIQUE7444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7444: 
	movsbl	-76(%rbp), %edx
 jmp .UNIQUE7445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7445: 
	movsbl	-72(%rbp), %esi
 jmp .UNIQUE7446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7446: 
	movl	-68(%rbp), %eax
 jmp .UNIQUE7447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7447: 
	movl	%eax, %edi
 jmp .UNIQUE7448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7448: 
	call	tower_of_Hanoi_init_secure_template
 jmp .UNIQUE7449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7449: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE7450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7450: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE7451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7451: 
	movq	16(%rax), %rax
 jmp .UNIQUE7452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7452: 
	movq	24(%rax), %rax
 jmp .UNIQUE7453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7453: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE7454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7454: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE7455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7455: 
	movq	16(%rax), %rax
 jmp .UNIQUE7456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7456: 
	movq	8(%rax), %rax
 jmp .UNIQUE7457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7457: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE7458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7458: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE7459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7459: 
	movl	$0, %esi
 jmp .UNIQUE7460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7460: 
	movq	%rax, %rdi
 jmp .UNIQUE7461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7461: 
	call	get_stack_int_array_element
 jmp .UNIQUE7462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7462: 
	cmpl	$1, %eax
 jmp .UNIQUE7463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7463: 
	jne	.L610
 jmp .UNIQUE7464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7464: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE7465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7465: 
	movq	8(%rax), %rax
 jmp .UNIQUE7466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7466: 
	movq	%rax, %rdi
 jmp .UNIQUE7467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7467: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE7468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7468: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE7469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7469: 
	movq	%rax, %rdi
 jmp .UNIQUE7470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7470: 
	call	free_fun_params_that_point_to_stack
 jmp .UNIQUE7471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7471: 
	jmp	.L609
.L610:
 jmp .UNIQUE7472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7472: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7473: 
	movl	$1, %esi
 jmp .UNIQUE7474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7474: 
	movq	%rax, %rdi
 jmp .UNIQUE7475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7475: 
	call	get_stack_char_array_element
 jmp .UNIQUE7476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7476: 
	movsbl	%al, %r13d
 jmp .UNIQUE7477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7477: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7478: 
	movl	$2, %esi
 jmp .UNIQUE7479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7479: 
	movq	%rax, %rdi
 jmp .UNIQUE7480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7480: 
	call	get_stack_char_array_element
 jmp .UNIQUE7481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7481: 
	movsbl	%al, %r12d
 jmp .UNIQUE7482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7482: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7483: 
	movl	$0, %esi
 jmp .UNIQUE7484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7484: 
	movq	%rax, %rdi
 jmp .UNIQUE7485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7485: 
	call	get_stack_char_array_element
 jmp .UNIQUE7486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7486: 
	movsbl	%al, %ebx
 jmp .UNIQUE7487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7487: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE7488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7488: 
	movl	$0, %esi
 jmp .UNIQUE7489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7489: 
	movq	%rax, %rdi
 jmp .UNIQUE7490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7490: 
	call	get_stack_int_array_element
 jmp .UNIQUE7491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7491: 
	subl	$1, %eax
 jmp .UNIQUE7492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7492: 
	movl	%r13d, %ecx
 jmp .UNIQUE7493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7493: 
	movl	%r12d, %edx
 jmp .UNIQUE7494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7494: 
	movl	%ebx, %esi
 jmp .UNIQUE7495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7495: 
	movl	%eax, %edi
 jmp .UNIQUE7496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7496: 
	call	towerOfHanoi_secure_using_template
 jmp .UNIQUE7497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7497: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7498: 
	movl	$0, %esi
 jmp .UNIQUE7499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7499: 
	movq	%rax, %rdi
 jmp .UNIQUE7500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7500: 
	call	get_stack_char_array_element
 jmp .UNIQUE7501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7501: 
	movsbl	%al, %r13d
 jmp .UNIQUE7502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7502: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7503: 
	movl	$1, %esi
 jmp .UNIQUE7504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7504: 
	movq	%rax, %rdi
 jmp .UNIQUE7505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7505: 
	call	get_stack_char_array_element
 jmp .UNIQUE7506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7506: 
	movsbl	%al, %r12d
 jmp .UNIQUE7507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7507: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7508: 
	movl	$2, %esi
 jmp .UNIQUE7509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7509: 
	movq	%rax, %rdi
 jmp .UNIQUE7510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7510: 
	call	get_stack_char_array_element
 jmp .UNIQUE7511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7511: 
	movsbl	%al, %ebx
 jmp .UNIQUE7512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7512: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE7513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7513: 
	movl	$0, %esi
 jmp .UNIQUE7514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7514: 
	movq	%rax, %rdi
 jmp .UNIQUE7515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7515: 
	call	get_stack_int_array_element
 jmp .UNIQUE7516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7516: 
	subl	$1, %eax
 jmp .UNIQUE7517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7517: 
	movl	%r13d, %ecx
 jmp .UNIQUE7518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7518: 
	movl	%r12d, %edx
 jmp .UNIQUE7519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7519: 
	movl	%ebx, %esi
 jmp .UNIQUE7520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7520: 
	movl	%eax, %edi
 jmp .UNIQUE7521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7521: 
	call	towerOfHanoi_secure_using_template
 jmp .UNIQUE7522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7522: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE7523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7523: 
	movq	8(%rax), %rax
 jmp .UNIQUE7524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7524: 
	movq	%rax, %rdi
 jmp .UNIQUE7525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7525: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE7526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7526: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE7527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7527: 
	movq	%rax, %rdi
 jmp .UNIQUE7528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7528: 
	call	free_fun_params_that_point_to_stack
.L609:
 jmp .UNIQUE7529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7529: 
	addq	$56, %rsp
 jmp .UNIQUE7530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7530: 
	popq	%rbx
 jmp .UNIQUE7531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7531: 
	popq	%r12
 jmp .UNIQUE7532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7532: 
	popq	%r13
 jmp .UNIQUE7533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7533: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7534: 
	ret
	.cfi_endproc
.LFE125:
	.size	towerOfHanoi_secure_using_changed_accesses, .-towerOfHanoi_secure_using_changed_accesses
	.comm	sa,152,32
	.globl	check_next_canaries
	.type	check_next_canaries, @function
check_next_canaries:
.LFB126:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE7535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7535: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7536: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7537: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE7538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7538: 
	movl	$0, -4(%rbp)
 jmp .UNIQUE7539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7539: 
	jmp	.L613
.L616:
 jmp .UNIQUE7540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7540: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE7541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7541: 
	movslq	%eax, %rdx
 jmp .UNIQUE7542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7542: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7543: 
	addq	%rdx, %rax
 jmp .UNIQUE7544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7544: 
	movzbl	(%rax), %eax
 jmp .UNIQUE7545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7545: 
	cmpb	$66, %al
 jmp .UNIQUE7546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7546: 
	je	.L614
 jmp .UNIQUE7547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7547: 
	movl	$0, %eax
 jmp .UNIQUE7548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7548: 
	jmp	.L615
.L614:
 jmp .UNIQUE7549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7549: 
	addl	$1, -4(%rbp)
.L613:
 jmp .UNIQUE7550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7550: 
	cmpl	$1, -4(%rbp)
 jmp .UNIQUE7551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7551: 
	jle	.L616
 jmp .UNIQUE7552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7552: 
	movl	$1, %eax
.L615:
 jmp .UNIQUE7553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7553: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7554: 
	ret
	.cfi_endproc
.LFE126:
	.size	check_next_canaries, .-check_next_canaries
	.section	.rodata
.LC121:
	.string	"key no%d=0x%02x\n"
	.text
	.globl	find_keyshares
	.type	find_keyshares, @function
find_keyshares:
.LFB127:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE7555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7555: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7556: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7557: 
	subq	$112, %rsp
 jmp .UNIQUE7558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7558: 
	movq	%fs:40, %rax
 jmp .UNIQUE7559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7559: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE7560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7560: 
	xorl	%eax, %eax
 jmp .UNIQUE7561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7561: 
	movl	$0, -92(%rbp)
 jmp .UNIQUE7562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7562: 
	movq	$foo, -64(%rbp)
 jmp .UNIQUE7563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7563: 
	movq	$main, -56(%rbp)
 jmp .UNIQUE7564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7564: 
	movq	$foo2, -48(%rbp)
 jmp .UNIQUE7565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7565: 
	movq	$find_keyshares, -40(%rbp)
 jmp .UNIQUE7566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7566: 
	movl	$0, -96(%rbp)
 jmp .UNIQUE7567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7567: 
	movq	$__executable_start, -32(%rbp)
 jmp .UNIQUE7568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7568: 
	movq	$__etext, -24(%rbp)
 jmp .UNIQUE7569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7569: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE7570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7570: 
	jmp	.L618
.L619:
 jmp .UNIQUE7571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7571: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7572: 
	cltq
 jmp .UNIQUE7573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7573: 
	movb	$0, -16(%rbp,%rax)
 jmp .UNIQUE7574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7574: 
	addl	$1, -100(%rbp)
.L618:
 jmp .UNIQUE7575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7575: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE7576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7576: 
	jle	.L619
 jmp .UNIQUE7577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7577: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE7578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7578: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE7579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7579: 
	jmp	.L620
.L624:
 jmp .UNIQUE7580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7580: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7581: 
	movzbl	(%rax), %eax
 jmp .UNIQUE7582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7582: 
	cmpb	$-21, %al
 jmp .UNIQUE7583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7583: 
	jne	.L621
 jmp .UNIQUE7584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7584: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7585: 
	addq	$1, %rax
 jmp .UNIQUE7586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7586: 
	movzbl	(%rax), %eax
 jmp .UNIQUE7587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7587: 
	cmpb	$7, %al
 jmp .UNIQUE7588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7588: 
	jne	.L621
 jmp .UNIQUE7589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7589: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7590: 
	addq	$2, %rax
 jmp .UNIQUE7591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7591: 
	movq	%rax, %rdi
 jmp .UNIQUE7592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7592: 
	call	check_next_canaries
 jmp .UNIQUE7593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7593: 
	testl	%eax, %eax
 jmp .UNIQUE7594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7594: 
	je	.L621
 jmp .UNIQUE7595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7595: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE7596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7596: 
	jmp	.L622
.L623:
 jmp .UNIQUE7597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7597: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7598: 
	cltq
 jmp .UNIQUE7599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7599: 
	movzbl	-16(%rbp,%rax), %edx
 jmp .UNIQUE7600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7600: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7601: 
	cltq
 jmp .UNIQUE7602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7602: 
	leaq	4(%rax), %rcx
 jmp .UNIQUE7603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7603: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7604: 
	addq	%rcx, %rax
 jmp .UNIQUE7605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7605: 
	movzbl	(%rax), %eax
 jmp .UNIQUE7606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7606: 
	xorl	%eax, %edx
 jmp .UNIQUE7607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7607: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7608: 
	cltq
 jmp .UNIQUE7609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7609: 
	movb	%dl, -16(%rbp,%rax)
 jmp .UNIQUE7610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7610: 
	addl	$1, -100(%rbp)
.L622:
 jmp .UNIQUE7611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7611: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE7612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7612: 
	jle	.L623
.L621:
 jmp .UNIQUE7613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7613: 
	addq	$1, -88(%rbp)
.L620:
 jmp .UNIQUE7614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7614: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7615: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE7616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7616: 
	jbe	.L624
 jmp .UNIQUE7617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7617: 
	movl	$0, -96(%rbp)
 jmp .UNIQUE7618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7618: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE7619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7619: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE7620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7620: 
	movq	$0, -80(%rbp)
 jmp .UNIQUE7621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7621: 
	jmp	.L625
.L629:
 jmp .UNIQUE7622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7622: 
	cmpl	$0, -96(%rbp)
 jmp .UNIQUE7623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7623: 
	jne	.L626
 jmp .UNIQUE7624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7624: 
	addq	$4, -80(%rbp)
 jmp .UNIQUE7625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7625: 
	movl	$1, -96(%rbp)
 jmp .UNIQUE7626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7626: 
	jmp	.L625
.L626:
 jmp .UNIQUE7627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7627: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE7628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7628: 
	jmp	.L627
.L628:
 jmp .UNIQUE7629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7629: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7630: 
	cltq
 jmp .UNIQUE7631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7631: 
	movzbl	-16(%rbp,%rax), %edx
 jmp .UNIQUE7632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7632: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7633: 
	movslq	%eax, %rcx
 jmp .UNIQUE7634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7634: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE7635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7635: 
	addq	%rax, %rcx
 jmp .UNIQUE7636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7636: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7637: 
	addq	%rcx, %rax
 jmp .UNIQUE7638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7638: 
	movzbl	(%rax), %eax
 jmp .UNIQUE7639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7639: 
	xorl	%eax, %edx
 jmp .UNIQUE7640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7640: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7641: 
	cltq
 jmp .UNIQUE7642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7642: 
	movb	%dl, -16(%rbp,%rax)
 jmp .UNIQUE7643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7643: 
	addl	$1, -100(%rbp)
.L627:
 jmp .UNIQUE7644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7644: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE7645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7645: 
	jle	.L628
 jmp .UNIQUE7646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7646: 
	addq	$5, -80(%rbp)
 jmp .UNIQUE7647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7647: 
	movl	$0, -96(%rbp)
.L625:
 jmp .UNIQUE7648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7648: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE7649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7649: 
	cmpq	%rax, -80(%rbp)
 jmp .UNIQUE7650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7650: 
	jl	.L629
 jmp .UNIQUE7651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7651: 
	movl	$0, -96(%rbp)
 jmp .UNIQUE7652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7652: 
	movq	entire_stack_memory_chunk(%rip), %rax
 jmp .UNIQUE7653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7653: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE7654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7654: 
	movq	$0, -72(%rbp)
 jmp .UNIQUE7655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7655: 
	jmp	.L630
.L634:
 jmp .UNIQUE7656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7656: 
	cmpl	$0, -96(%rbp)
 jmp .UNIQUE7657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7657: 
	jne	.L631
 jmp .UNIQUE7658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7658: 
	addq	$4, -72(%rbp)
 jmp .UNIQUE7659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7659: 
	movl	$1, -96(%rbp)
 jmp .UNIQUE7660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7660: 
	jmp	.L630
.L631:
 jmp .UNIQUE7661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7661: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE7662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7662: 
	jmp	.L632
.L633:
 jmp .UNIQUE7663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7663: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7664: 
	cltq
 jmp .UNIQUE7665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7665: 
	movzbl	-16(%rbp,%rax), %edx
 jmp .UNIQUE7666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7666: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7667: 
	movslq	%eax, %rcx
 jmp .UNIQUE7668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7668: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE7669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7669: 
	addq	%rax, %rcx
 jmp .UNIQUE7670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7670: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7671: 
	addq	%rcx, %rax
 jmp .UNIQUE7672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7672: 
	movzbl	(%rax), %eax
 jmp .UNIQUE7673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7673: 
	xorl	%eax, %edx
 jmp .UNIQUE7674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7674: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7675: 
	cltq
 jmp .UNIQUE7676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7676: 
	movb	%dl, -16(%rbp,%rax)
 jmp .UNIQUE7677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7677: 
	addl	$1, -100(%rbp)
.L632:
 jmp .UNIQUE7678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7678: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE7679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7679: 
	jle	.L633
 jmp .UNIQUE7680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7680: 
	addq	$5, -72(%rbp)
 jmp .UNIQUE7681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7681: 
	movl	$0, -96(%rbp)
.L630:
 jmp .UNIQUE7682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7682: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE7683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7683: 
	cmpq	%rax, -72(%rbp)
 jmp .UNIQUE7684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7684: 
	jl	.L634
 jmp .UNIQUE7685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7685: 
	movl	$10, %edi
 jmp .UNIQUE7686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7686: 
	call	putchar
 jmp .UNIQUE7687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7687: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE7688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7688: 
	jmp	.L635
.L636:
 jmp .UNIQUE7689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7689: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7690: 
	cltq
 jmp .UNIQUE7691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7691: 
	movzbl	-16(%rbp,%rax), %eax
 jmp .UNIQUE7692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7692: 
	movzbl	%al, %edx
 jmp .UNIQUE7693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7693: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7694: 
	movl	%eax, %esi
 jmp .UNIQUE7695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7695: 
	movl	$.LC121, %edi
 jmp .UNIQUE7696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7696: 
	movl	$0, %eax
 jmp .UNIQUE7697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7697: 
	call	printf
 jmp .UNIQUE7698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7698: 
	addl	$1, -100(%rbp)
.L635:
 jmp .UNIQUE7699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7699: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE7700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7700: 
	jle	.L636
 jmp .UNIQUE7701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7701: 
	nop
 jmp .UNIQUE7702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7702: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7703: 
	xorq	%fs:40, %rax
 jmp .UNIQUE7704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7704: 
	je	.L638
 jmp .UNIQUE7705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7705: 
	call	__stack_chk_fail
.L638:
 jmp .UNIQUE7706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7706: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7707: 
	ret
	.cfi_endproc
.LFE127:
	.size	find_keyshares, .-find_keyshares
	.section	.rodata
.LC122:
	.string	"Verification requested!"
	.text
	.globl	verification_procedure
	.type	verification_procedure, @function
verification_procedure:
.LFB128:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE7708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7708: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7709: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7710: 
	movl	$.LC122, %edi
 jmp .UNIQUE7711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7711: 
	call	puts
 jmp .UNIQUE7712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7712: 
	movl	$0, %eax
 jmp .UNIQUE7713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7713: 
	call	find_keyshares
 jmp .UNIQUE7714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7714: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7715: 
	ret
	.cfi_endproc
.LFE128:
	.size	verification_procedure, .-verification_procedure
	.section	.rodata
	.align 8
.LC123:
	.string	"Going to find primes up to %d\n"
.LC124:
	.string	"Initialised parameters."
.LC125:
	.string	"Allocated space"
.LC126:
	.string	"Set 2 as first prime"
.LC127:
	.string	"\nPrimes:"
.LC128:
	.string	"\n"
.LC129:
	.string	"Total number of primes:%d\n"
	.text
	.globl	secure_find_primes_up_to_a_number
	.type	secure_find_primes_up_to_a_number, @function
secure_find_primes_up_to_a_number:
.LFB129:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE7716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7716: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7717: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7718: 
	pushq	%r12
 jmp .UNIQUE7719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7719: 
	pushq	%rbx
 jmp .UNIQUE7720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7720: 
	subq	$96, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
 jmp .UNIQUE7721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7721: 
	movl	%edi, -36(%rbp)
 jmp .UNIQUE7722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7722: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE7723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7723: 
	movl	%eax, %esi
 jmp .UNIQUE7724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7724: 
	movl	$.LC123, %edi
 jmp .UNIQUE7725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7725: 
	movl	$0, %eax
 jmp .UNIQUE7726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7726: 
	call	printf
 jmp .UNIQUE7727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7727: 
	movq	$0, 56(%rsp)
 jmp .UNIQUE7728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7728: 
	movq	$0, 48(%rsp)
 jmp .UNIQUE7729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7729: 
	movq	$4, 40(%rsp)
 jmp .UNIQUE7730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7730: 
	movq	$1, 32(%rsp)
 jmp .UNIQUE7731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7731: 
	movq	$0, 24(%rsp)
 jmp .UNIQUE7732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7732: 
	movq	$0, 16(%rsp)
 jmp .UNIQUE7733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7733: 
	movq	$0, 8(%rsp)
 jmp .UNIQUE7734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7734: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE7735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7735: 
	movl	%eax, (%rsp)
 jmp .UNIQUE7736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7736: 
	movl	$1, %r9d
 jmp .UNIQUE7737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7737: 
	movl	$4, %r8d
 jmp .UNIQUE7738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7738: 
	movl	$0, %ecx
 jmp .UNIQUE7739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7739: 
	movl	$1, %edx
 jmp .UNIQUE7740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7740: 
	movl	$1, %esi
 jmp .UNIQUE7741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7741: 
	movl	$1, %edi
 jmp .UNIQUE7742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7742: 
	movl	$0, %eax
 jmp .UNIQUE7743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7743: 
	call	init_function_params_with_uninitialised_elements
 jmp .UNIQUE7744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7744: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE7745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7745: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7746: 
	movq	%rax, %rdi
 jmp .UNIQUE7747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7747: 
	call	put_fun_params_into_secure_stack_and_free
 jmp .UNIQUE7748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7748: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE7749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7749: 
	movl	$.LC124, %edi
 jmp .UNIQUE7750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7750: 
	call	puts
 jmp .UNIQUE7751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7751: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7752: 
	movq	16(%rax), %rax
 jmp .UNIQUE7753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7753: 
	movq	24(%rax), %rax
 jmp .UNIQUE7754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7754: 
	movl	$0, %esi
 jmp .UNIQUE7755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7755: 
	movq	%rax, %rdi
 jmp .UNIQUE7756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7756: 
	call	get_stack_int_array_element
 jmp .UNIQUE7757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7757: 
	cltq
 jmp .UNIQUE7758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7758: 
	salq	$2, %rax
 jmp .UNIQUE7759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7759: 
	movl	$30, %edx
 jmp .UNIQUE7760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7760: 
	movl	$__func__.6114, %esi
 jmp .UNIQUE7761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7761: 
	movq	%rax, %rdi
 jmp .UNIQUE7762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7762: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE7763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7763: 
	movq	%rax, %rdx
 jmp .UNIQUE7764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7764: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7765: 
	movq	16(%rax), %rax
 jmp .UNIQUE7766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7766: 
	movq	96(%rax), %rax
 jmp .UNIQUE7767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7767: 
	movl	$0, %esi
 jmp .UNIQUE7768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7768: 
	movq	%rax, %rdi
 jmp .UNIQUE7769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7769: 
	call	set_stack_pointer_array_element
 jmp .UNIQUE7770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7770: 
	movl	$.LC125, %edi
 jmp .UNIQUE7771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7771: 
	call	puts
 jmp .UNIQUE7772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7772: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7773: 
	movq	16(%rax), %rax
 jmp .UNIQUE7774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7774: 
	movq	24(%rax), %rax
 jmp .UNIQUE7775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7775: 
	movl	$1, %edx
 jmp .UNIQUE7776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7776: 
	movl	$3, %esi
 jmp .UNIQUE7777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7777: 
	movq	%rax, %rdi
 jmp .UNIQUE7778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7778: 
	call	set_stack_int_array_element
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
	movl	$3, %esi
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
	subl	$1, %eax
 jmp .UNIQUE7786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7786: 
	movslq	%eax, %rbx
 jmp .UNIQUE7787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7787: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7788: 
	movq	16(%rax), %rax
 jmp .UNIQUE7789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7789: 
	movq	96(%rax), %rax
 jmp .UNIQUE7790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7790: 
	movl	$0, %esi
 jmp .UNIQUE7791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7791: 
	movq	%rax, %rdi
 jmp .UNIQUE7792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7792: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE7793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7793: 
	movl	$2, %edx
 jmp .UNIQUE7794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7794: 
	movq	%rbx, %rsi
 jmp .UNIQUE7795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7795: 
	movq	%rax, %rdi
 jmp .UNIQUE7796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7796: 
	call	set_int_array_element
 jmp .UNIQUE7797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7797: 
	movl	$.LC126, %edi
 jmp .UNIQUE7798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7798: 
	call	puts
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
	movl	$3, %edx
 jmp .UNIQUE7803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7803: 
	movl	$1, %esi
 jmp .UNIQUE7804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7804: 
	movq	%rax, %rdi
 jmp .UNIQUE7805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7805: 
	call	set_stack_int_array_element
 jmp .UNIQUE7806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7806: 
	jmp	.L641
.L647:
 jmp .UNIQUE7807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7807: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7808: 
	movq	16(%rax), %rax
 jmp .UNIQUE7809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7809: 
	movq	8(%rax), %rax
 jmp .UNIQUE7810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7810: 
	movl	$0, %edx
 jmp .UNIQUE7811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7811: 
	movl	$0, %esi
 jmp .UNIQUE7812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7812: 
	movq	%rax, %rdi
 jmp .UNIQUE7813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7813: 
	call	set_stack_char_array_element
 jmp .UNIQUE7814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7814: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7815: 
	movq	16(%rax), %rax
 jmp .UNIQUE7816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7816: 
	movq	24(%rax), %rax
 jmp .UNIQUE7817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7817: 
	movl	$2, %edx
 jmp .UNIQUE7818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7818: 
	movl	$2, %esi
 jmp .UNIQUE7819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7819: 
	movq	%rax, %rdi
 jmp .UNIQUE7820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7820: 
	call	set_stack_int_array_element
 jmp .UNIQUE7821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7821: 
	jmp	.L642
.L645:
 jmp .UNIQUE7822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7822: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7823: 
	movq	16(%rax), %rax
 jmp .UNIQUE7824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7824: 
	movq	24(%rax), %rax
 jmp .UNIQUE7825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7825: 
	movl	$1, %esi
 jmp .UNIQUE7826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7826: 
	movq	%rax, %rdi
 jmp .UNIQUE7827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7827: 
	call	get_stack_int_array_element
 jmp .UNIQUE7828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7828: 
	movl	%eax, %ebx
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
	movl	$2, %esi
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
	movl	%eax, %ecx
 jmp .UNIQUE7836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7836: 
	movl	%ebx, %eax
 jmp .UNIQUE7837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7837: 
	cltd
 jmp .UNIQUE7838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7838: 
	idivl	%ecx
 jmp .UNIQUE7839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7839: 
	movl	%edx, %ecx
 jmp .UNIQUE7840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7840: 
	movl	%ecx, %eax
 jmp .UNIQUE7841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7841: 
	testl	%eax, %eax
 jmp .UNIQUE7842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7842: 
	jne	.L643
 jmp .UNIQUE7843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7843: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7844: 
	movq	16(%rax), %rax
 jmp .UNIQUE7845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7845: 
	movq	8(%rax), %rax
 jmp .UNIQUE7846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7846: 
	movl	$1, %edx
 jmp .UNIQUE7847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7847: 
	movl	$0, %esi
 jmp .UNIQUE7848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7848: 
	movq	%rax, %rdi
 jmp .UNIQUE7849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7849: 
	call	set_stack_char_array_element
 jmp .UNIQUE7850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7850: 
	jmp	.L644
.L643:
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
	movq	16(%rax), %rax
 jmp .UNIQUE7853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7853: 
	movq	24(%rax), %rax
 jmp .UNIQUE7854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7854: 
	movl	$2, %esi
 jmp .UNIQUE7855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7855: 
	movq	%rax, %rdi
 jmp .UNIQUE7856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7856: 
	call	get_stack_int_array_element
 jmp .UNIQUE7857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7857: 
	leal	1(%rax), %edx
 jmp .UNIQUE7858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7858: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7859: 
	movq	16(%rax), %rax
 jmp .UNIQUE7860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7860: 
	movq	24(%rax), %rax
 jmp .UNIQUE7861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7861: 
	movl	$2, %esi
 jmp .UNIQUE7862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7862: 
	movq	%rax, %rdi
 jmp .UNIQUE7863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7863: 
	call	set_stack_int_array_element
.L642:
 jmp .UNIQUE7864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7864: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7865: 
	movq	16(%rax), %rax
 jmp .UNIQUE7866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7866: 
	movq	24(%rax), %rax
 jmp .UNIQUE7867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7867: 
	movl	$2, %esi
 jmp .UNIQUE7868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7868: 
	movq	%rax, %rdi
 jmp .UNIQUE7869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7869: 
	call	get_stack_int_array_element
 jmp .UNIQUE7870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7870: 
	movl	%eax, %ebx
 jmp .UNIQUE7871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7871: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7872: 
	movq	16(%rax), %rax
 jmp .UNIQUE7873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7873: 
	movq	24(%rax), %rax
 jmp .UNIQUE7874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7874: 
	movl	$1, %esi
 jmp .UNIQUE7875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7875: 
	movq	%rax, %rdi
 jmp .UNIQUE7876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7876: 
	call	get_stack_int_array_element
 jmp .UNIQUE7877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7877: 
	movl	%eax, %edx
 jmp .UNIQUE7878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7878: 
	shrl	$31, %edx
 jmp .UNIQUE7879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7879: 
	addl	%edx, %eax
 jmp .UNIQUE7880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7880: 
	sarl	%eax
 jmp .UNIQUE7881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7881: 
	addl	$1, %eax
 jmp .UNIQUE7882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7882: 
	cmpl	%eax, %ebx
 jmp .UNIQUE7883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7883: 
	jle	.L645
.L644:
 jmp .UNIQUE7884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7884: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7885: 
	movq	16(%rax), %rax
 jmp .UNIQUE7886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7886: 
	movq	8(%rax), %rax
 jmp .UNIQUE7887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7887: 
	movl	$0, %esi
 jmp .UNIQUE7888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7888: 
	movq	%rax, %rdi
 jmp .UNIQUE7889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7889: 
	call	get_stack_char_array_element
 jmp .UNIQUE7890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7890: 
	testb	%al, %al
 jmp .UNIQUE7891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7891: 
	jne	.L646
 jmp .UNIQUE7892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7892: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7893: 
	movq	16(%rax), %rax
 jmp .UNIQUE7894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7894: 
	movq	24(%rax), %rax
 jmp .UNIQUE7895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7895: 
	movl	$3, %esi
 jmp .UNIQUE7896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7896: 
	movq	%rax, %rdi
 jmp .UNIQUE7897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7897: 
	call	get_stack_int_array_element
 jmp .UNIQUE7898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7898: 
	leal	1(%rax), %edx
 jmp .UNIQUE7899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7899: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7900: 
	movq	16(%rax), %rax
 jmp .UNIQUE7901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7901: 
	movq	24(%rax), %rax
 jmp .UNIQUE7902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7902: 
	movl	$3, %esi
 jmp .UNIQUE7903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7903: 
	movq	%rax, %rdi
 jmp .UNIQUE7904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7904: 
	call	set_stack_int_array_element
 jmp .UNIQUE7905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7905: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7906: 
	movq	16(%rax), %rax
 jmp .UNIQUE7907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7907: 
	movq	24(%rax), %rax
 jmp .UNIQUE7908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7908: 
	movl	$1, %esi
 jmp .UNIQUE7909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7909: 
	movq	%rax, %rdi
 jmp .UNIQUE7910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7910: 
	call	get_stack_int_array_element
 jmp .UNIQUE7911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7911: 
	movl	%eax, %r12d
 jmp .UNIQUE7912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7912: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7913: 
	movq	16(%rax), %rax
 jmp .UNIQUE7914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7914: 
	movq	24(%rax), %rax
 jmp .UNIQUE7915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7915: 
	movl	$3, %esi
 jmp .UNIQUE7916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7916: 
	movq	%rax, %rdi
 jmp .UNIQUE7917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7917: 
	call	get_stack_int_array_element
 jmp .UNIQUE7918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7918: 
	subl	$1, %eax
 jmp .UNIQUE7919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7919: 
	movslq	%eax, %rbx
 jmp .UNIQUE7920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7920: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7921: 
	movq	16(%rax), %rax
 jmp .UNIQUE7922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7922: 
	movq	96(%rax), %rax
 jmp .UNIQUE7923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7923: 
	movl	$0, %esi
 jmp .UNIQUE7924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7924: 
	movq	%rax, %rdi
 jmp .UNIQUE7925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7925: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE7926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7926: 
	movl	%r12d, %edx
 jmp .UNIQUE7927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7927: 
	movq	%rbx, %rsi
 jmp .UNIQUE7928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7928: 
	movq	%rax, %rdi
 jmp .UNIQUE7929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7929: 
	call	set_int_array_element
.L646:
 jmp .UNIQUE7930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7930: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7931: 
	movq	16(%rax), %rax
 jmp .UNIQUE7932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7932: 
	movq	24(%rax), %rax
 jmp .UNIQUE7933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7933: 
	movl	$1, %esi
 jmp .UNIQUE7934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7934: 
	movq	%rax, %rdi
 jmp .UNIQUE7935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7935: 
	call	get_stack_int_array_element
 jmp .UNIQUE7936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7936: 
	leal	2(%rax), %edx
 jmp .UNIQUE7937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7937: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7938: 
	movq	16(%rax), %rax
 jmp .UNIQUE7939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7939: 
	movq	24(%rax), %rax
 jmp .UNIQUE7940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7940: 
	movl	$1, %esi
 jmp .UNIQUE7941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7941: 
	movq	%rax, %rdi
 jmp .UNIQUE7942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7942: 
	call	set_stack_int_array_element
.L641:
 jmp .UNIQUE7943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7943: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7944: 
	movq	16(%rax), %rax
 jmp .UNIQUE7945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7945: 
	movq	24(%rax), %rax
 jmp .UNIQUE7946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7946: 
	movl	$1, %esi
 jmp .UNIQUE7947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7947: 
	movq	%rax, %rdi
 jmp .UNIQUE7948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7948: 
	call	get_stack_int_array_element
 jmp .UNIQUE7949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7949: 
	movl	%eax, %ebx
 jmp .UNIQUE7950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7950: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7951: 
	movq	16(%rax), %rax
 jmp .UNIQUE7952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7952: 
	movq	24(%rax), %rax
 jmp .UNIQUE7953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7953: 
	movl	$0, %esi
 jmp .UNIQUE7954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7954: 
	movq	%rax, %rdi
 jmp .UNIQUE7955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7955: 
	call	get_stack_int_array_element
 jmp .UNIQUE7956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7956: 
	cmpl	%eax, %ebx
 jmp .UNIQUE7957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7957: 
	jle	.L647
 jmp .UNIQUE7958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7958: 
	movl	$.LC127, %edi
 jmp .UNIQUE7959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7959: 
	call	puts
 jmp .UNIQUE7960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7960: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7961: 
	movq	16(%rax), %rax
 jmp .UNIQUE7962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7962: 
	movq	24(%rax), %rax
 jmp .UNIQUE7963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7963: 
	movl	$0, %edx
 jmp .UNIQUE7964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7964: 
	movl	$1, %esi
 jmp .UNIQUE7965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7965: 
	movq	%rax, %rdi
 jmp .UNIQUE7966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7966: 
	call	set_stack_int_array_element
 jmp .UNIQUE7967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7967: 
	jmp	.L648
.L649:
 jmp .UNIQUE7968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7968: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7969: 
	movq	16(%rax), %rax
 jmp .UNIQUE7970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7970: 
	movq	24(%rax), %rax
 jmp .UNIQUE7971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7971: 
	movl	$1, %esi
 jmp .UNIQUE7972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7972: 
	movq	%rax, %rdi
 jmp .UNIQUE7973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7973: 
	call	get_stack_int_array_element
 jmp .UNIQUE7974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7974: 
	movslq	%eax, %rbx
 jmp .UNIQUE7975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7975: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7976: 
	movq	16(%rax), %rax
 jmp .UNIQUE7977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7977: 
	movq	96(%rax), %rax
 jmp .UNIQUE7978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7978: 
	movl	$0, %esi
 jmp .UNIQUE7979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7979: 
	movq	%rax, %rdi
 jmp .UNIQUE7980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7980: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE7981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7981: 
	movq	%rbx, %rsi
 jmp .UNIQUE7982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7982: 
	movq	%rax, %rdi
 jmp .UNIQUE7983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7983: 
	call	get_int_array_element
 jmp .UNIQUE7984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7984: 
	movl	%eax, %esi
 jmp .UNIQUE7985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7985: 
	movl	$.LC22, %edi
 jmp .UNIQUE7986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7986: 
	movl	$0, %eax
 jmp .UNIQUE7987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7987: 
	call	printf
 jmp .UNIQUE7988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7988: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7989: 
	movq	16(%rax), %rax
 jmp .UNIQUE7990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7990: 
	movq	24(%rax), %rax
 jmp .UNIQUE7991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7991: 
	movl	$1, %esi
 jmp .UNIQUE7992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7992: 
	movq	%rax, %rdi
 jmp .UNIQUE7993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7993: 
	call	get_stack_int_array_element
 jmp .UNIQUE7994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7994: 
	leal	1(%rax), %edx
 jmp .UNIQUE7995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7995: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7996: 
	movq	16(%rax), %rax
 jmp .UNIQUE7997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7997: 
	movq	24(%rax), %rax
 jmp .UNIQUE7998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7998: 
	movl	$1, %esi
 jmp .UNIQUE7999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7999: 
	movq	%rax, %rdi
 jmp .UNIQUE8000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8000: 
	call	set_stack_int_array_element
.L648:
 jmp .UNIQUE8001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8001: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8002: 
	movq	16(%rax), %rax
 jmp .UNIQUE8003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8003: 
	movq	24(%rax), %rax
 jmp .UNIQUE8004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8004: 
	movl	$1, %esi
 jmp .UNIQUE8005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8005: 
	movq	%rax, %rdi
 jmp .UNIQUE8006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8006: 
	call	get_stack_int_array_element
 jmp .UNIQUE8007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8007: 
	movl	%eax, %ebx
 jmp .UNIQUE8008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8008: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8009: 
	movq	16(%rax), %rax
 jmp .UNIQUE8010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8010: 
	movq	24(%rax), %rax
 jmp .UNIQUE8011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8011: 
	movl	$3, %esi
 jmp .UNIQUE8012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8012: 
	movq	%rax, %rdi
 jmp .UNIQUE8013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8013: 
	call	get_stack_int_array_element
 jmp .UNIQUE8014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8014: 
	cmpl	%eax, %ebx
 jmp .UNIQUE8015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8015: 
	jl	.L649
 jmp .UNIQUE8016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8016: 
	movl	$.LC128, %edi
 jmp .UNIQUE8017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8017: 
	call	puts
 jmp .UNIQUE8018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8018: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8019: 
	movq	16(%rax), %rax
 jmp .UNIQUE8020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8020: 
	movq	24(%rax), %rax
 jmp .UNIQUE8021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8021: 
	movl	$3, %esi
 jmp .UNIQUE8022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8022: 
	movq	%rax, %rdi
 jmp .UNIQUE8023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8023: 
	call	get_stack_int_array_element
 jmp .UNIQUE8024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8024: 
	movl	%eax, %esi
 jmp .UNIQUE8025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8025: 
	movl	$.LC129, %edi
 jmp .UNIQUE8026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8026: 
	movl	$0, %eax
 jmp .UNIQUE8027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8027: 
	call	printf
 jmp .UNIQUE8028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8028: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8029: 
	movq	16(%rax), %rax
 jmp .UNIQUE8030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8030: 
	movq	96(%rax), %rax
 jmp .UNIQUE8031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8031: 
	movl	$0, %esi
 jmp .UNIQUE8032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8032: 
	movq	%rax, %rdi
 jmp .UNIQUE8033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8033: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8034: 
	movq	%rax, %rdi
 jmp .UNIQUE8035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8035: 
	call	managed_secure_free
 jmp .UNIQUE8036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8036: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8037: 
	movq	8(%rax), %rax
 jmp .UNIQUE8038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8038: 
	movq	%rax, %rdi
 jmp .UNIQUE8039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8039: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE8040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8040: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8041: 
	movq	%rax, %rdi
 jmp .UNIQUE8042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8042: 
	call	free_fun_params_that_point_to_stack
 jmp .UNIQUE8043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8043: 
	addq	$96, %rsp
 jmp .UNIQUE8044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8044: 
	popq	%rbx
 jmp .UNIQUE8045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8045: 
	popq	%r12
 jmp .UNIQUE8046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8046: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE8047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8047: 
	ret
	.cfi_endproc
.LFE129:
	.size	secure_find_primes_up_to_a_number, .-secure_find_primes_up_to_a_number
	.globl	find_primes_up_to_a_number
	.type	find_primes_up_to_a_number, @function
find_primes_up_to_a_number:
.LFB130:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE8048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8048: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE8049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8049: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE8050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8050: 
	subq	$48, %rsp
 jmp .UNIQUE8051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8051: 
	movl	%edi, -36(%rbp)
 jmp .UNIQUE8052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8052: 
	movb	$0, -21(%rbp)
 jmp .UNIQUE8053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8053: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE8054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8054: 
	movl	%eax, %esi
 jmp .UNIQUE8055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8055: 
	movl	$.LC123, %edi
 jmp .UNIQUE8056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8056: 
	movl	$0, %eax
 jmp .UNIQUE8057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8057: 
	call	printf
 jmp .UNIQUE8058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8058: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE8059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8059: 
	cltq
 jmp .UNIQUE8060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8060: 
	salq	$2, %rax
 jmp .UNIQUE8061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8061: 
	movl	$122, %edx
 jmp .UNIQUE8062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8062: 
	movl	$__func__.6132, %esi
 jmp .UNIQUE8063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8063: 
	movq	%rax, %rdi
 jmp .UNIQUE8064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8064: 
	call	error_checking_malloc
 jmp .UNIQUE8065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8065: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE8066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8066: 
	movl	$1, -12(%rbp)
 jmp .UNIQUE8067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8067: 
	movl	-12(%rbp), %eax
 jmp .UNIQUE8068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8068: 
	cltq
 jmp .UNIQUE8069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8069: 
	salq	$2, %rax
 jmp .UNIQUE8070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8070: 
	leaq	-4(%rax), %rdx
 jmp .UNIQUE8071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8071: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE8072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8072: 
	addq	%rdx, %rax
 jmp .UNIQUE8073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8073: 
	movl	$2, (%rax)
 jmp .UNIQUE8074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8074: 
	movl	$3, -20(%rbp)
 jmp .UNIQUE8075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8075: 
	jmp	.L651
.L657:
 jmp .UNIQUE8076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8076: 
	movb	$0, -21(%rbp)
 jmp .UNIQUE8077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8077: 
	movl	$2, -16(%rbp)
 jmp .UNIQUE8078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8078: 
	jmp	.L652
.L655:
 jmp .UNIQUE8079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8079: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE8080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8080: 
	cltd
 jmp .UNIQUE8081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8081: 
	idivl	-16(%rbp)
 jmp .UNIQUE8082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8082: 
	movl	%edx, %eax
 jmp .UNIQUE8083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8083: 
	testl	%eax, %eax
 jmp .UNIQUE8084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8084: 
	jne	.L653
 jmp .UNIQUE8085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8085: 
	movb	$1, -21(%rbp)
 jmp .UNIQUE8086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8086: 
	jmp	.L654
.L653:
 jmp .UNIQUE8087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8087: 
	addl	$1, -16(%rbp)
.L652:
 jmp .UNIQUE8088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8088: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE8089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8089: 
	movl	%eax, %edx
 jmp .UNIQUE8090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8090: 
	shrl	$31, %edx
 jmp .UNIQUE8091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8091: 
	addl	%edx, %eax
 jmp .UNIQUE8092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8092: 
	sarl	%eax
 jmp .UNIQUE8093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8093: 
	addl	$1, %eax
 jmp .UNIQUE8094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8094: 
	cmpl	-16(%rbp), %eax
 jmp .UNIQUE8095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8095: 
	jge	.L655
.L654:
 jmp .UNIQUE8096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8096: 
	cmpb	$0, -21(%rbp)
 jmp .UNIQUE8097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8097: 
	jne	.L656
 jmp .UNIQUE8098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8098: 
	addl	$1, -12(%rbp)
 jmp .UNIQUE8099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8099: 
	movl	-12(%rbp), %eax
 jmp .UNIQUE8100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8100: 
	cltq
 jmp .UNIQUE8101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8101: 
	salq	$2, %rax
 jmp .UNIQUE8102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8102: 
	leaq	-4(%rax), %rdx
 jmp .UNIQUE8103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8103: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE8104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8104: 
	addq	%rax, %rdx
 jmp .UNIQUE8105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8105: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE8106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8106: 
	movl	%eax, (%rdx)
.L656:
 jmp .UNIQUE8107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8107: 
	addl	$2, -20(%rbp)
.L651:
 jmp .UNIQUE8108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8108: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE8109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8109: 
	cmpl	-36(%rbp), %eax
 jmp .UNIQUE8110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8110: 
	jle	.L657
 jmp .UNIQUE8111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8111: 
	movl	$.LC127, %edi
 jmp .UNIQUE8112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8112: 
	call	puts
 jmp .UNIQUE8113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8113: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE8114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8114: 
	jmp	.L658
.L659:
 jmp .UNIQUE8115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8115: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE8116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8116: 
	cltq
 jmp .UNIQUE8117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8117: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE8118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8118: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE8119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8119: 
	addq	%rdx, %rax
 jmp .UNIQUE8120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8120: 
	movl	(%rax), %eax
 jmp .UNIQUE8121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8121: 
	movl	%eax, %esi
 jmp .UNIQUE8122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8122: 
	movl	$.LC22, %edi
 jmp .UNIQUE8123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8123: 
	movl	$0, %eax
 jmp .UNIQUE8124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8124: 
	call	printf
 jmp .UNIQUE8125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8125: 
	addl	$1, -20(%rbp)
.L658:
 jmp .UNIQUE8126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8126: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE8127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8127: 
	cmpl	-12(%rbp), %eax
 jmp .UNIQUE8128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8128: 
	jl	.L659
 jmp .UNIQUE8129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8129: 
	movl	$.LC128, %edi
 jmp .UNIQUE8130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8130: 
	call	puts
 jmp .UNIQUE8131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8131: 
	movl	-12(%rbp), %eax
 jmp .UNIQUE8132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8132: 
	movl	%eax, %esi
 jmp .UNIQUE8133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8133: 
	movl	$.LC129, %edi
 jmp .UNIQUE8134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8134: 
	movl	$0, %eax
 jmp .UNIQUE8135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8135: 
	call	printf
 jmp .UNIQUE8136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8136: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE8137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8137: 
	movq	%rax, %rdi
 jmp .UNIQUE8138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8138: 
	call	free
 jmp .UNIQUE8139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8139: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE8140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8140: 
	ret
	.cfi_endproc
.LFE130:
	.size	find_primes_up_to_a_number, .-find_primes_up_to_a_number
	.section	.rodata
.LC130:
	.string	"Primes with sieve:"
.LC131:
	.string	"Total: %d primes.\n"
	.text
	.globl	simple_sieve_of_Eratosthenes
	.type	simple_sieve_of_Eratosthenes, @function
simple_sieve_of_Eratosthenes:
.LFB131:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE8141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8141: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE8142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8142: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE8143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8143: 
	subq	$48, %rsp
 jmp .UNIQUE8144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8144: 
	movl	%edi, -36(%rbp)
 jmp .UNIQUE8145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8145: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE8146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8146: 
	cvtsi2sd	-36(%rbp), %xmm0
 jmp .UNIQUE8147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8147: 
	call	sqrt
 jmp .UNIQUE8148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8148: 
	movsd	%xmm0, -48(%rbp)
 jmp .UNIQUE8149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8149: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE8150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8150: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE8151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8151: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE8152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8152: 
	addl	$1, %eax
 jmp .UNIQUE8153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8153: 
	cltq
 jmp .UNIQUE8154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8154: 
	movl	$174, %edx
 jmp .UNIQUE8155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8155: 
	movl	$__func__.6150, %esi
 jmp .UNIQUE8156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8156: 
	movq	%rax, %rdi
 jmp .UNIQUE8157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8157: 
	call	error_checking_malloc
 jmp .UNIQUE8158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8158: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE8159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8159: 
	movl	$2, -28(%rbp)
 jmp .UNIQUE8160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8160: 
	jmp	.L661
.L662:
 jmp .UNIQUE8161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8161: 
	movl	-28(%rbp), %eax
 jmp .UNIQUE8162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8162: 
	movslq	%eax, %rdx
 jmp .UNIQUE8163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8163: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE8164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8164: 
	addq	%rdx, %rax
 jmp .UNIQUE8165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8165: 
	movb	$1, (%rax)
 jmp .UNIQUE8166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8166: 
	addl	$1, -28(%rbp)
.L661:
 jmp .UNIQUE8167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8167: 
	movl	-28(%rbp), %eax
 jmp .UNIQUE8168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8168: 
	cmpl	-36(%rbp), %eax
 jmp .UNIQUE8169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8169: 
	jle	.L662
 jmp .UNIQUE8170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8170: 
	movl	$2, -28(%rbp)
 jmp .UNIQUE8171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8171: 
	jmp	.L663
.L667:
 jmp .UNIQUE8172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8172: 
	movl	-28(%rbp), %eax
 jmp .UNIQUE8173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8173: 
	movslq	%eax, %rdx
 jmp .UNIQUE8174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8174: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE8175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8175: 
	addq	%rdx, %rax
 jmp .UNIQUE8176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8176: 
	movzbl	(%rax), %eax
 jmp .UNIQUE8177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8177: 
	cmpb	$1, %al
 jmp .UNIQUE8178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8178: 
	jne	.L664
 jmp .UNIQUE8179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8179: 
	movl	-28(%rbp), %eax
 jmp .UNIQUE8180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8180: 
	addl	%eax, %eax
 jmp .UNIQUE8181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8181: 
	movl	%eax, -24(%rbp)
 jmp .UNIQUE8182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8182: 
	jmp	.L665
.L666:
 jmp .UNIQUE8183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8183: 
	movl	-24(%rbp), %eax
 jmp .UNIQUE8184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8184: 
	movslq	%eax, %rdx
 jmp .UNIQUE8185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8185: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE8186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8186: 
	addq	%rdx, %rax
 jmp .UNIQUE8187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8187: 
	movb	$0, (%rax)
 jmp .UNIQUE8188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8188: 
	movl	-28(%rbp), %eax
 jmp .UNIQUE8189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8189: 
	addl	%eax, -24(%rbp)
.L665:
 jmp .UNIQUE8190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8190: 
	movl	-24(%rbp), %eax
 jmp .UNIQUE8191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8191: 
	cmpl	-36(%rbp), %eax
 jmp .UNIQUE8192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8192: 
	jle	.L666
.L664:
 jmp .UNIQUE8193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8193: 
	addl	$1, -28(%rbp)
.L663:
 jmp .UNIQUE8194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8194: 
	cvtsi2sd	-28(%rbp), %xmm1
 jmp .UNIQUE8195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8195: 
	movsd	-16(%rbp), %xmm2
 jmp .UNIQUE8196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8196: 
	movsd	.LC45(%rip), %xmm0
 jmp .UNIQUE8197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8197: 
	addsd	%xmm2, %xmm0
 jmp .UNIQUE8198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8198: 
	ucomisd	%xmm1, %xmm0
 jmp .UNIQUE8199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8199: 
	jnb	.L667
 jmp .UNIQUE8200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8200: 
	movl	$10, %edi
 jmp .UNIQUE8201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8201: 
	call	putchar
 jmp .UNIQUE8202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8202: 
	movl	$.LC130, %edi
 jmp .UNIQUE8203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8203: 
	call	puts
 jmp .UNIQUE8204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8204: 
	movl	$2, -28(%rbp)
 jmp .UNIQUE8205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8205: 
	jmp	.L668
.L670:
 jmp .UNIQUE8206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8206: 
	movl	-28(%rbp), %eax
 jmp .UNIQUE8207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8207: 
	movslq	%eax, %rdx
 jmp .UNIQUE8208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8208: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE8209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8209: 
	addq	%rdx, %rax
 jmp .UNIQUE8210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8210: 
	movzbl	(%rax), %eax
 jmp .UNIQUE8211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8211: 
	cmpb	$1, %al
 jmp .UNIQUE8212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8212: 
	jne	.L669
 jmp .UNIQUE8213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8213: 
	movl	-28(%rbp), %eax
 jmp .UNIQUE8214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8214: 
	movl	%eax, %esi
 jmp .UNIQUE8215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8215: 
	movl	$.LC22, %edi
 jmp .UNIQUE8216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8216: 
	movl	$0, %eax
 jmp .UNIQUE8217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8217: 
	call	printf
 jmp .UNIQUE8218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8218: 
	addl	$1, -20(%rbp)
.L669:
 jmp .UNIQUE8219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8219: 
	addl	$1, -28(%rbp)
.L668:
 jmp .UNIQUE8220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8220: 
	movl	-28(%rbp), %eax
 jmp .UNIQUE8221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8221: 
	cmpl	-36(%rbp), %eax
 jmp .UNIQUE8222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8222: 
	jle	.L670
 jmp .UNIQUE8223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8223: 
	movl	$10, %edi
 jmp .UNIQUE8224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8224: 
	call	putchar
 jmp .UNIQUE8225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8225: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE8226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8226: 
	movl	%eax, %esi
 jmp .UNIQUE8227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8227: 
	movl	$.LC131, %edi
 jmp .UNIQUE8228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8228: 
	movl	$0, %eax
 jmp .UNIQUE8229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8229: 
	call	printf
 jmp .UNIQUE8230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8230: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE8231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8231: 
	ret
	.cfi_endproc
.LFE131:
	.size	simple_sieve_of_Eratosthenes, .-simple_sieve_of_Eratosthenes
	.section	.rodata
.LC132:
	.string	"Primes with secure sieve:"
	.text
	.globl	secure_sieve_of_Eratosthenes
	.type	secure_sieve_of_Eratosthenes, @function
secure_sieve_of_Eratosthenes:
.LFB132:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE8232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8232: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE8233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8233: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE8234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8234: 
	pushq	%rbx
 jmp .UNIQUE8235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8235: 
	subq	$104, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE8236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8236: 
	movl	%edi, -36(%rbp)
 jmp .UNIQUE8237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8237: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE8238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8238: 
	movq	$0, 56(%rsp)
 jmp .UNIQUE8239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8239: 
	movq	$0, 48(%rsp)
 jmp .UNIQUE8240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8240: 
	movq	$1, 40(%rsp)
 jmp .UNIQUE8241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8241: 
	movq	$1, 32(%rsp)
 jmp .UNIQUE8242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8242: 
	movq	$0, 24(%rsp)
 jmp .UNIQUE8243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8243: 
	movq	$1, 16(%rsp)
 jmp .UNIQUE8244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8244: 
	movq	$0, 8(%rsp)
 jmp .UNIQUE8245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8245: 
	movq	$0, (%rsp)
 jmp .UNIQUE8246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8246: 
	movl	$0, %r9d
 jmp .UNIQUE8247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8247: 
	movl	%eax, %r8d
 jmp .UNIQUE8248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8248: 
	movl	$2, %ecx
 jmp .UNIQUE8249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8249: 
	movl	$4, %edx
 jmp .UNIQUE8250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8250: 
	movl	$0, %esi
 jmp .UNIQUE8251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8251: 
	movl	$1, %edi
 jmp .UNIQUE8252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8252: 
	movl	$0, %eax
 jmp .UNIQUE8253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8253: 
	call	init_function_params_with_uninitialised_elements
 jmp .UNIQUE8254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8254: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE8255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8255: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8256: 
	movq	%rax, %rdi
 jmp .UNIQUE8257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8257: 
	call	put_fun_params_into_secure_stack_and_free
 jmp .UNIQUE8258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8258: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE8259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8259: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8260: 
	movq	16(%rax), %rax
 jmp .UNIQUE8261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8261: 
	movq	24(%rax), %rax
 jmp .UNIQUE8262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8262: 
	movl	$0, %esi
 jmp .UNIQUE8263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8263: 
	movq	%rax, %rdi
 jmp .UNIQUE8264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8264: 
	call	get_stack_int_array_element
 jmp .UNIQUE8265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8265: 
	cvtsi2sd	%eax, %xmm0
 jmp .UNIQUE8266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8266: 
	call	sqrt
 jmp .UNIQUE8267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8267: 
	movsd	%xmm0, -48(%rbp)
 jmp .UNIQUE8268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8268: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE8269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8269: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE8270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8270: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE8271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8271: 
	movq	72(%rdx), %rdx
 jmp .UNIQUE8272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8272: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE8273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8273: 
	movsd	-48(%rbp), %xmm0
 jmp .UNIQUE8274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8274: 
	movl	$0, %esi
 jmp .UNIQUE8275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8275: 
	movq	%rdx, %rdi
 jmp .UNIQUE8276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8276: 
	call	set_stack_double_array_element
 jmp .UNIQUE8277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8277: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8278: 
	movq	16(%rax), %rax
 jmp .UNIQUE8279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8279: 
	movq	24(%rax), %rax
 jmp .UNIQUE8280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8280: 
	movl	$0, %esi
 jmp .UNIQUE8281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8281: 
	movq	%rax, %rdi
 jmp .UNIQUE8282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8282: 
	call	get_stack_int_array_element
 jmp .UNIQUE8283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8283: 
	addl	$1, %eax
 jmp .UNIQUE8284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8284: 
	cltq
 jmp .UNIQUE8285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8285: 
	movl	$245, %edx
 jmp .UNIQUE8286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8286: 
	movl	$__func__.6167, %esi
 jmp .UNIQUE8287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8287: 
	movq	%rax, %rdi
 jmp .UNIQUE8288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8288: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE8289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8289: 
	movq	%rax, %rdx
 jmp .UNIQUE8290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8290: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8291: 
	movq	16(%rax), %rax
 jmp .UNIQUE8292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8292: 
	movq	96(%rax), %rax
 jmp .UNIQUE8293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8293: 
	movl	$0, %esi
 jmp .UNIQUE8294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8294: 
	movq	%rax, %rdi
 jmp .UNIQUE8295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8295: 
	call	set_stack_pointer_array_element
 jmp .UNIQUE8296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8296: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8297: 
	movq	16(%rax), %rax
 jmp .UNIQUE8298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8298: 
	movq	24(%rax), %rax
 jmp .UNIQUE8299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8299: 
	movl	$2, %edx
 jmp .UNIQUE8300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8300: 
	movl	$2, %esi
 jmp .UNIQUE8301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8301: 
	movq	%rax, %rdi
 jmp .UNIQUE8302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8302: 
	call	set_stack_int_array_element
 jmp .UNIQUE8303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8303: 
	jmp	.L672
.L673:
 jmp .UNIQUE8304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8304: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8305: 
	movq	16(%rax), %rax
 jmp .UNIQUE8306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8306: 
	movq	24(%rax), %rax
 jmp .UNIQUE8307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8307: 
	movl	$2, %esi
 jmp .UNIQUE8308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8308: 
	movq	%rax, %rdi
 jmp .UNIQUE8309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8309: 
	call	get_stack_int_array_element
 jmp .UNIQUE8310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8310: 
	movslq	%eax, %rbx
 jmp .UNIQUE8311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8311: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8312: 
	movq	16(%rax), %rax
 jmp .UNIQUE8313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8313: 
	movq	96(%rax), %rax
 jmp .UNIQUE8314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8314: 
	movl	$0, %esi
 jmp .UNIQUE8315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8315: 
	movq	%rax, %rdi
 jmp .UNIQUE8316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8316: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8317: 
	movl	$1, %edx
 jmp .UNIQUE8318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8318: 
	movq	%rbx, %rsi
 jmp .UNIQUE8319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8319: 
	movq	%rax, %rdi
 jmp .UNIQUE8320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8320: 
	call	set_char_array_element
 jmp .UNIQUE8321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8321: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8322: 
	movq	16(%rax), %rax
 jmp .UNIQUE8323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8323: 
	movq	24(%rax), %rax
 jmp .UNIQUE8324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8324: 
	movl	$2, %esi
 jmp .UNIQUE8325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8325: 
	movq	%rax, %rdi
 jmp .UNIQUE8326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8326: 
	call	get_stack_int_array_element
 jmp .UNIQUE8327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8327: 
	leal	1(%rax), %edx
 jmp .UNIQUE8328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8328: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8329: 
	movq	16(%rax), %rax
 jmp .UNIQUE8330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8330: 
	movq	24(%rax), %rax
 jmp .UNIQUE8331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8331: 
	movl	$2, %esi
 jmp .UNIQUE8332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8332: 
	movq	%rax, %rdi
 jmp .UNIQUE8333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8333: 
	call	set_stack_int_array_element
.L672:
 jmp .UNIQUE8334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8334: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8335: 
	movq	16(%rax), %rax
 jmp .UNIQUE8336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8336: 
	movq	24(%rax), %rax
 jmp .UNIQUE8337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8337: 
	movl	$2, %esi
 jmp .UNIQUE8338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8338: 
	movq	%rax, %rdi
 jmp .UNIQUE8339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8339: 
	call	get_stack_int_array_element
 jmp .UNIQUE8340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8340: 
	movl	%eax, %ebx
 jmp .UNIQUE8341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8341: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8342: 
	movq	16(%rax), %rax
 jmp .UNIQUE8343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8343: 
	movq	24(%rax), %rax
 jmp .UNIQUE8344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8344: 
	movl	$0, %esi
 jmp .UNIQUE8345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8345: 
	movq	%rax, %rdi
 jmp .UNIQUE8346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8346: 
	call	get_stack_int_array_element
 jmp .UNIQUE8347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8347: 
	cmpl	%eax, %ebx
 jmp .UNIQUE8348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8348: 
	jle	.L673
 jmp .UNIQUE8349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8349: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8350: 
	movq	16(%rax), %rax
 jmp .UNIQUE8351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8351: 
	movq	24(%rax), %rax
 jmp .UNIQUE8352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8352: 
	movl	$2, %edx
 jmp .UNIQUE8353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8353: 
	movl	$2, %esi
 jmp .UNIQUE8354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8354: 
	movq	%rax, %rdi
 jmp .UNIQUE8355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8355: 
	call	set_stack_int_array_element
 jmp .UNIQUE8356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8356: 
	jmp	.L674
.L678:
 jmp .UNIQUE8357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8357: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8358: 
	movq	16(%rax), %rax
 jmp .UNIQUE8359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8359: 
	movq	24(%rax), %rax
 jmp .UNIQUE8360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8360: 
	movl	$2, %esi
 jmp .UNIQUE8361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8361: 
	movq	%rax, %rdi
 jmp .UNIQUE8362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8362: 
	call	get_stack_int_array_element
 jmp .UNIQUE8363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8363: 
	movslq	%eax, %rbx
 jmp .UNIQUE8364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8364: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8365: 
	movq	16(%rax), %rax
 jmp .UNIQUE8366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8366: 
	movq	96(%rax), %rax
 jmp .UNIQUE8367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8367: 
	movl	$0, %esi
 jmp .UNIQUE8368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8368: 
	movq	%rax, %rdi
 jmp .UNIQUE8369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8369: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8370: 
	movq	%rbx, %rsi
 jmp .UNIQUE8371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8371: 
	movq	%rax, %rdi
 jmp .UNIQUE8372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8372: 
	call	get_char_array_element
 jmp .UNIQUE8373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8373: 
	cmpb	$1, %al
 jmp .UNIQUE8374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8374: 
	jne	.L675
 jmp .UNIQUE8375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8375: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8376: 
	movq	16(%rax), %rax
 jmp .UNIQUE8377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8377: 
	movq	24(%rax), %rax
 jmp .UNIQUE8378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8378: 
	movl	$2, %esi
 jmp .UNIQUE8379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8379: 
	movq	%rax, %rdi
 jmp .UNIQUE8380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8380: 
	call	get_stack_int_array_element
 jmp .UNIQUE8381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8381: 
	leal	(%rax,%rax), %edx
 jmp .UNIQUE8382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8382: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8383: 
	movq	16(%rax), %rax
 jmp .UNIQUE8384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8384: 
	movq	24(%rax), %rax
 jmp .UNIQUE8385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8385: 
	movl	$3, %esi
 jmp .UNIQUE8386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8386: 
	movq	%rax, %rdi
 jmp .UNIQUE8387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8387: 
	call	set_stack_int_array_element
 jmp .UNIQUE8388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8388: 
	jmp	.L676
.L677:
 jmp .UNIQUE8389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8389: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8390: 
	movq	16(%rax), %rax
 jmp .UNIQUE8391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8391: 
	movq	24(%rax), %rax
 jmp .UNIQUE8392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8392: 
	movl	$3, %esi
 jmp .UNIQUE8393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8393: 
	movq	%rax, %rdi
 jmp .UNIQUE8394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8394: 
	call	get_stack_int_array_element
 jmp .UNIQUE8395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8395: 
	movslq	%eax, %rbx
 jmp .UNIQUE8396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8396: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8397: 
	movq	16(%rax), %rax
 jmp .UNIQUE8398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8398: 
	movq	96(%rax), %rax
 jmp .UNIQUE8399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8399: 
	movl	$0, %esi
 jmp .UNIQUE8400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8400: 
	movq	%rax, %rdi
 jmp .UNIQUE8401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8401: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8402: 
	movl	$0, %edx
 jmp .UNIQUE8403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8403: 
	movq	%rbx, %rsi
 jmp .UNIQUE8404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8404: 
	movq	%rax, %rdi
 jmp .UNIQUE8405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8405: 
	call	set_char_array_element
 jmp .UNIQUE8406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8406: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8407: 
	movq	16(%rax), %rax
 jmp .UNIQUE8408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8408: 
	movq	24(%rax), %rax
 jmp .UNIQUE8409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8409: 
	movl	$3, %esi
 jmp .UNIQUE8410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8410: 
	movq	%rax, %rdi
 jmp .UNIQUE8411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8411: 
	call	get_stack_int_array_element
 jmp .UNIQUE8412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8412: 
	movl	%eax, %ebx
 jmp .UNIQUE8413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8413: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8414: 
	movq	16(%rax), %rax
 jmp .UNIQUE8415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8415: 
	movq	24(%rax), %rax
 jmp .UNIQUE8416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8416: 
	movl	$2, %esi
 jmp .UNIQUE8417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8417: 
	movq	%rax, %rdi
 jmp .UNIQUE8418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8418: 
	call	get_stack_int_array_element
 jmp .UNIQUE8419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8419: 
	leal	(%rbx,%rax), %edx
 jmp .UNIQUE8420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8420: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8421: 
	movq	16(%rax), %rax
 jmp .UNIQUE8422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8422: 
	movq	24(%rax), %rax
 jmp .UNIQUE8423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8423: 
	movl	$3, %esi
 jmp .UNIQUE8424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8424: 
	movq	%rax, %rdi
 jmp .UNIQUE8425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8425: 
	call	set_stack_int_array_element
.L676:
 jmp .UNIQUE8426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8426: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8427: 
	movq	16(%rax), %rax
 jmp .UNIQUE8428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8428: 
	movq	24(%rax), %rax
 jmp .UNIQUE8429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8429: 
	movl	$3, %esi
 jmp .UNIQUE8430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8430: 
	movq	%rax, %rdi
 jmp .UNIQUE8431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8431: 
	call	get_stack_int_array_element
 jmp .UNIQUE8432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8432: 
	movl	%eax, %ebx
 jmp .UNIQUE8433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8433: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8434: 
	movq	16(%rax), %rax
 jmp .UNIQUE8435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8435: 
	movq	24(%rax), %rax
 jmp .UNIQUE8436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8436: 
	movl	$0, %esi
 jmp .UNIQUE8437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8437: 
	movq	%rax, %rdi
 jmp .UNIQUE8438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8438: 
	call	get_stack_int_array_element
 jmp .UNIQUE8439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8439: 
	cmpl	%eax, %ebx
 jmp .UNIQUE8440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8440: 
	jle	.L677
.L675:
 jmp .UNIQUE8441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8441: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8442: 
	movq	16(%rax), %rax
 jmp .UNIQUE8443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8443: 
	movq	24(%rax), %rax
 jmp .UNIQUE8444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8444: 
	movl	$2, %esi
 jmp .UNIQUE8445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8445: 
	movq	%rax, %rdi
 jmp .UNIQUE8446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8446: 
	call	get_stack_int_array_element
 jmp .UNIQUE8447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8447: 
	leal	1(%rax), %edx
 jmp .UNIQUE8448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8448: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8449: 
	movq	16(%rax), %rax
 jmp .UNIQUE8450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8450: 
	movq	24(%rax), %rax
 jmp .UNIQUE8451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8451: 
	movl	$2, %esi
 jmp .UNIQUE8452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8452: 
	movq	%rax, %rdi
 jmp .UNIQUE8453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8453: 
	call	set_stack_int_array_element
.L674:
 jmp .UNIQUE8454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8454: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8455: 
	movq	16(%rax), %rax
 jmp .UNIQUE8456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8456: 
	movq	24(%rax), %rax
 jmp .UNIQUE8457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8457: 
	movl	$2, %esi
 jmp .UNIQUE8458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8458: 
	movq	%rax, %rdi
 jmp .UNIQUE8459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8459: 
	call	get_stack_int_array_element
 jmp .UNIQUE8460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8460: 
	cvtsi2sd	%eax, %xmm2
 jmp .UNIQUE8461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8461: 
	movsd	%xmm2, -48(%rbp)
 jmp .UNIQUE8462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8462: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8463: 
	movq	16(%rax), %rax
 jmp .UNIQUE8464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8464: 
	movq	72(%rax), %rax
 jmp .UNIQUE8465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8465: 
	movl	$0, %esi
 jmp .UNIQUE8466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8466: 
	movq	%rax, %rdi
 jmp .UNIQUE8467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8467: 
	call	get_stack_double_array_element
 jmp .UNIQUE8468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8468: 
	movsd	.LC45(%rip), %xmm1
 jmp .UNIQUE8469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8469: 
	addsd	%xmm1, %xmm0
 jmp .UNIQUE8470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8470: 
	ucomisd	-48(%rbp), %xmm0
 jmp .UNIQUE8471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8471: 
	jnb	.L678
 jmp .UNIQUE8472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8472: 
	movl	$10, %edi
 jmp .UNIQUE8473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8473: 
	call	putchar
 jmp .UNIQUE8474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8474: 
	movl	$.LC132, %edi
 jmp .UNIQUE8475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8475: 
	call	puts
 jmp .UNIQUE8476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8476: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8477: 
	movq	16(%rax), %rax
 jmp .UNIQUE8478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8478: 
	movq	24(%rax), %rax
 jmp .UNIQUE8479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8479: 
	movl	$2, %edx
 jmp .UNIQUE8480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8480: 
	movl	$2, %esi
 jmp .UNIQUE8481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8481: 
	movq	%rax, %rdi
 jmp .UNIQUE8482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8482: 
	call	set_stack_int_array_element
 jmp .UNIQUE8483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8483: 
	jmp	.L679
.L681:
 jmp .UNIQUE8484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8484: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8485: 
	movq	16(%rax), %rax
 jmp .UNIQUE8486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8486: 
	movq	24(%rax), %rax
 jmp .UNIQUE8487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8487: 
	movl	$2, %esi
 jmp .UNIQUE8488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8488: 
	movq	%rax, %rdi
 jmp .UNIQUE8489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8489: 
	call	get_stack_int_array_element
 jmp .UNIQUE8490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8490: 
	movslq	%eax, %rbx
 jmp .UNIQUE8491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8491: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8492: 
	movq	16(%rax), %rax
 jmp .UNIQUE8493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8493: 
	movq	96(%rax), %rax
 jmp .UNIQUE8494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8494: 
	movl	$0, %esi
 jmp .UNIQUE8495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8495: 
	movq	%rax, %rdi
 jmp .UNIQUE8496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8496: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8497: 
	movq	%rbx, %rsi
 jmp .UNIQUE8498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8498: 
	movq	%rax, %rdi
 jmp .UNIQUE8499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8499: 
	call	get_char_array_element
 jmp .UNIQUE8500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8500: 
	cmpb	$1, %al
 jmp .UNIQUE8501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8501: 
	jne	.L680
 jmp .UNIQUE8502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8502: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8503: 
	movq	16(%rax), %rax
 jmp .UNIQUE8504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8504: 
	movq	24(%rax), %rax
 jmp .UNIQUE8505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8505: 
	movl	$2, %esi
 jmp .UNIQUE8506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8506: 
	movq	%rax, %rdi
 jmp .UNIQUE8507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8507: 
	call	get_stack_int_array_element
 jmp .UNIQUE8508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8508: 
	movl	%eax, %esi
 jmp .UNIQUE8509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8509: 
	movl	$.LC22, %edi
 jmp .UNIQUE8510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8510: 
	movl	$0, %eax
 jmp .UNIQUE8511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8511: 
	call	printf
 jmp .UNIQUE8512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8512: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8513: 
	movq	16(%rax), %rax
 jmp .UNIQUE8514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8514: 
	movq	24(%rax), %rax
 jmp .UNIQUE8515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8515: 
	movl	$1, %esi
 jmp .UNIQUE8516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8516: 
	movq	%rax, %rdi
 jmp .UNIQUE8517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8517: 
	call	get_stack_int_array_element
 jmp .UNIQUE8518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8518: 
	leal	1(%rax), %edx
 jmp .UNIQUE8519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8519: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8520: 
	movq	16(%rax), %rax
 jmp .UNIQUE8521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8521: 
	movq	24(%rax), %rax
 jmp .UNIQUE8522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8522: 
	movl	$1, %esi
 jmp .UNIQUE8523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8523: 
	movq	%rax, %rdi
 jmp .UNIQUE8524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8524: 
	call	set_stack_int_array_element
.L680:
 jmp .UNIQUE8525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8525: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8526: 
	movq	16(%rax), %rax
 jmp .UNIQUE8527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8527: 
	movq	24(%rax), %rax
 jmp .UNIQUE8528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8528: 
	movl	$2, %esi
 jmp .UNIQUE8529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8529: 
	movq	%rax, %rdi
 jmp .UNIQUE8530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8530: 
	call	get_stack_int_array_element
 jmp .UNIQUE8531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8531: 
	leal	1(%rax), %edx
 jmp .UNIQUE8532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8532: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8533: 
	movq	16(%rax), %rax
 jmp .UNIQUE8534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8534: 
	movq	24(%rax), %rax
 jmp .UNIQUE8535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8535: 
	movl	$2, %esi
 jmp .UNIQUE8536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8536: 
	movq	%rax, %rdi
 jmp .UNIQUE8537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8537: 
	call	set_stack_int_array_element
.L679:
 jmp .UNIQUE8538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8538: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8539: 
	movq	16(%rax), %rax
 jmp .UNIQUE8540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8540: 
	movq	24(%rax), %rax
 jmp .UNIQUE8541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8541: 
	movl	$2, %esi
 jmp .UNIQUE8542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8542: 
	movq	%rax, %rdi
 jmp .UNIQUE8543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8543: 
	call	get_stack_int_array_element
 jmp .UNIQUE8544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8544: 
	movl	%eax, %ebx
 jmp .UNIQUE8545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8545: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8546: 
	movq	16(%rax), %rax
 jmp .UNIQUE8547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8547: 
	movq	24(%rax), %rax
 jmp .UNIQUE8548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8548: 
	movl	$0, %esi
 jmp .UNIQUE8549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8549: 
	movq	%rax, %rdi
 jmp .UNIQUE8550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8550: 
	call	get_stack_int_array_element
 jmp .UNIQUE8551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8551: 
	cmpl	%eax, %ebx
 jmp .UNIQUE8552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8552: 
	jle	.L681
 jmp .UNIQUE8553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8553: 
	movl	$10, %edi
 jmp .UNIQUE8554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8554: 
	call	putchar
 jmp .UNIQUE8555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8555: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8556: 
	movq	16(%rax), %rax
 jmp .UNIQUE8557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8557: 
	movq	24(%rax), %rax
 jmp .UNIQUE8558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8558: 
	movl	$1, %esi
 jmp .UNIQUE8559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8559: 
	movq	%rax, %rdi
 jmp .UNIQUE8560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8560: 
	call	get_stack_int_array_element
 jmp .UNIQUE8561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8561: 
	movl	%eax, %esi
 jmp .UNIQUE8562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8562: 
	movl	$.LC131, %edi
 jmp .UNIQUE8563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8563: 
	movl	$0, %eax
 jmp .UNIQUE8564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8564: 
	call	printf
 jmp .UNIQUE8565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8565: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8566: 
	movq	16(%rax), %rax
 jmp .UNIQUE8567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8567: 
	movq	96(%rax), %rax
 jmp .UNIQUE8568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8568: 
	movl	$0, %esi
 jmp .UNIQUE8569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8569: 
	movq	%rax, %rdi
 jmp .UNIQUE8570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8570: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8571: 
	movq	%rax, %rdi
 jmp .UNIQUE8572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8572: 
	call	managed_secure_free
 jmp .UNIQUE8573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8573: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8574: 
	movq	8(%rax), %rax
 jmp .UNIQUE8575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8575: 
	movq	%rax, %rdi
 jmp .UNIQUE8576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8576: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE8577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8577: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8578: 
	movq	%rax, %rdi
 jmp .UNIQUE8579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8579: 
	call	free_fun_params_that_point_to_stack
 jmp .UNIQUE8580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8580: 
	addq	$104, %rsp
 jmp .UNIQUE8581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8581: 
	popq	%rbx
 jmp .UNIQUE8582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8582: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE8583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8583: 
	ret
	.cfi_endproc
.LFE132:
	.size	secure_sieve_of_Eratosthenes, .-secure_sieve_of_Eratosthenes
	.globl	user_friendly_secure_sieve_of_Eratosthenes
	.type	user_friendly_secure_sieve_of_Eratosthenes, @function
user_friendly_secure_sieve_of_Eratosthenes:
.LFB133:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE8584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8584: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE8585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8585: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE8586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8586: 
	pushq	%rbx
 jmp .UNIQUE8587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8587: 
	subq	$104, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE8588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8588: 
	movl	%edi, -36(%rbp)
 jmp .UNIQUE8589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8589: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE8590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8590: 
	movq	$0, 56(%rsp)
 jmp .UNIQUE8591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8591: 
	movq	$0, 48(%rsp)
 jmp .UNIQUE8592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8592: 
	movq	$1, 40(%rsp)
 jmp .UNIQUE8593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8593: 
	movq	$1, 32(%rsp)
 jmp .UNIQUE8594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8594: 
	movq	$0, 24(%rsp)
 jmp .UNIQUE8595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8595: 
	movq	$1, 16(%rsp)
 jmp .UNIQUE8596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8596: 
	movq	$0, 8(%rsp)
 jmp .UNIQUE8597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8597: 
	movq	$0, (%rsp)
 jmp .UNIQUE8598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8598: 
	movl	$0, %r9d
 jmp .UNIQUE8599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8599: 
	movl	%eax, %r8d
 jmp .UNIQUE8600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8600: 
	movl	$2, %ecx
 jmp .UNIQUE8601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8601: 
	movl	$4, %edx
 jmp .UNIQUE8602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8602: 
	movl	$0, %esi
 jmp .UNIQUE8603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8603: 
	movl	$1, %edi
 jmp .UNIQUE8604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8604: 
	movl	$0, %eax
 jmp .UNIQUE8605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8605: 
	call	init_function_params_with_uninitialised_elements
 jmp .UNIQUE8606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8606: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE8607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8607: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8608: 
	movq	%rax, %rdi
 jmp .UNIQUE8609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8609: 
	call	put_fun_params_into_secure_stack_and_free
 jmp .UNIQUE8610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8610: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE8611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8611: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8612: 
	movq	16(%rax), %rax
 jmp .UNIQUE8613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8613: 
	movq	24(%rax), %rax
 jmp .UNIQUE8614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8614: 
	movl	$0, %esi
 jmp .UNIQUE8615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8615: 
	movq	%rax, %rdi
 jmp .UNIQUE8616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8616: 
	call	get_stack_int_array_element
 jmp .UNIQUE8617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8617: 
	cvtsi2sd	%eax, %xmm0
 jmp .UNIQUE8618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8618: 
	call	sqrt
 jmp .UNIQUE8619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8619: 
	movsd	%xmm0, -48(%rbp)
 jmp .UNIQUE8620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8620: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE8621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8621: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE8622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8622: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE8623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8623: 
	movq	72(%rdx), %rdx
 jmp .UNIQUE8624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8624: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE8625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8625: 
	movsd	-48(%rbp), %xmm0
 jmp .UNIQUE8626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8626: 
	movl	$0, %esi
 jmp .UNIQUE8627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8627: 
	movq	%rdx, %rdi
 jmp .UNIQUE8628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8628: 
	call	set_stack_double_array_element
 jmp .UNIQUE8629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8629: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8630: 
	movq	16(%rax), %rax
 jmp .UNIQUE8631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8631: 
	movq	24(%rax), %rax
 jmp .UNIQUE8632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8632: 
	movl	$0, %esi
 jmp .UNIQUE8633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8633: 
	movq	%rax, %rdi
 jmp .UNIQUE8634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8634: 
	call	get_stack_int_array_element
 jmp .UNIQUE8635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8635: 
	addl	$1, %eax
 jmp .UNIQUE8636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8636: 
	cltq
 jmp .UNIQUE8637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8637: 
	movl	$376, %edx
 jmp .UNIQUE8638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8638: 
	movl	$__func__.6184, %esi
 jmp .UNIQUE8639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8639: 
	movq	%rax, %rdi
 jmp .UNIQUE8640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8640: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE8641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8641: 
	movq	%rax, %rdx
 jmp .UNIQUE8642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8642: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8643: 
	movq	16(%rax), %rax
 jmp .UNIQUE8644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8644: 
	movq	96(%rax), %rax
 jmp .UNIQUE8645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8645: 
	movl	$0, %esi
 jmp .UNIQUE8646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8646: 
	movq	%rax, %rdi
 jmp .UNIQUE8647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8647: 
	call	set_stack_pointer_array_element
 jmp .UNIQUE8648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8648: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8649: 
	movq	16(%rax), %rax
 jmp .UNIQUE8650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8650: 
	movq	24(%rax), %rax
 jmp .UNIQUE8651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8651: 
	movl	$2, %edx
 jmp .UNIQUE8652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8652: 
	movl	$2, %esi
 jmp .UNIQUE8653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8653: 
	movq	%rax, %rdi
 jmp .UNIQUE8654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8654: 
	call	set_stack_int_array_element
 jmp .UNIQUE8655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8655: 
	jmp	.L683
.L684:
 jmp .UNIQUE8656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8656: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8657: 
	movq	16(%rax), %rax
 jmp .UNIQUE8658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8658: 
	movq	24(%rax), %rax
 jmp .UNIQUE8659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8659: 
	movl	$2, %esi
 jmp .UNIQUE8660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8660: 
	movq	%rax, %rdi
 jmp .UNIQUE8661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8661: 
	call	get_stack_int_array_element
 jmp .UNIQUE8662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8662: 
	movslq	%eax, %rbx
 jmp .UNIQUE8663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8663: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8664: 
	movq	16(%rax), %rax
 jmp .UNIQUE8665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8665: 
	movq	96(%rax), %rax
 jmp .UNIQUE8666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8666: 
	movl	$0, %esi
 jmp .UNIQUE8667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8667: 
	movq	%rax, %rdi
 jmp .UNIQUE8668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8668: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8669: 
	movl	$1, %edx
 jmp .UNIQUE8670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8670: 
	movq	%rbx, %rsi
 jmp .UNIQUE8671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8671: 
	movq	%rax, %rdi
 jmp .UNIQUE8672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8672: 
	call	set_char_array_element
 jmp .UNIQUE8673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8673: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8674: 
	movq	16(%rax), %rax
 jmp .UNIQUE8675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8675: 
	movq	24(%rax), %rax
 jmp .UNIQUE8676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8676: 
	movl	$2, %esi
 jmp .UNIQUE8677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8677: 
	movq	%rax, %rdi
 jmp .UNIQUE8678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8678: 
	call	get_stack_int_array_element
 jmp .UNIQUE8679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8679: 
	leal	1(%rax), %edx
 jmp .UNIQUE8680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8680: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8681: 
	movq	16(%rax), %rax
 jmp .UNIQUE8682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8682: 
	movq	24(%rax), %rax
 jmp .UNIQUE8683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8683: 
	movl	$2, %esi
 jmp .UNIQUE8684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8684: 
	movq	%rax, %rdi
 jmp .UNIQUE8685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8685: 
	call	set_stack_int_array_element
.L683:
 jmp .UNIQUE8686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8686: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8687: 
	movq	16(%rax), %rax
 jmp .UNIQUE8688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8688: 
	movq	24(%rax), %rax
 jmp .UNIQUE8689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8689: 
	movl	$2, %esi
 jmp .UNIQUE8690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8690: 
	movq	%rax, %rdi
 jmp .UNIQUE8691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8691: 
	call	get_stack_int_array_element
 jmp .UNIQUE8692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8692: 
	movl	%eax, %ebx
 jmp .UNIQUE8693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8693: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8694: 
	movq	16(%rax), %rax
 jmp .UNIQUE8695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8695: 
	movq	24(%rax), %rax
 jmp .UNIQUE8696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8696: 
	movl	$0, %esi
 jmp .UNIQUE8697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8697: 
	movq	%rax, %rdi
 jmp .UNIQUE8698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8698: 
	call	get_stack_int_array_element
 jmp .UNIQUE8699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8699: 
	cmpl	%eax, %ebx
 jmp .UNIQUE8700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8700: 
	jle	.L684
 jmp .UNIQUE8701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8701: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8702: 
	movq	16(%rax), %rax
 jmp .UNIQUE8703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8703: 
	movq	24(%rax), %rax
 jmp .UNIQUE8704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8704: 
	movl	$2, %edx
 jmp .UNIQUE8705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8705: 
	movl	$2, %esi
 jmp .UNIQUE8706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8706: 
	movq	%rax, %rdi
 jmp .UNIQUE8707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8707: 
	call	set_stack_int_array_element
 jmp .UNIQUE8708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8708: 
	jmp	.L685
.L689:
 jmp .UNIQUE8709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8709: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8710: 
	movq	16(%rax), %rax
 jmp .UNIQUE8711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8711: 
	movq	24(%rax), %rax
 jmp .UNIQUE8712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8712: 
	movl	$2, %esi
 jmp .UNIQUE8713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8713: 
	movq	%rax, %rdi
 jmp .UNIQUE8714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8714: 
	call	get_stack_int_array_element
 jmp .UNIQUE8715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8715: 
	movslq	%eax, %rbx
 jmp .UNIQUE8716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8716: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8717: 
	movq	16(%rax), %rax
 jmp .UNIQUE8718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8718: 
	movq	96(%rax), %rax
 jmp .UNIQUE8719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8719: 
	movl	$0, %esi
 jmp .UNIQUE8720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8720: 
	movq	%rax, %rdi
 jmp .UNIQUE8721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8721: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8722: 
	movq	%rbx, %rsi
 jmp .UNIQUE8723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8723: 
	movq	%rax, %rdi
 jmp .UNIQUE8724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8724: 
	call	get_char_array_element
 jmp .UNIQUE8725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8725: 
	cmpb	$1, %al
 jmp .UNIQUE8726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8726: 
	jne	.L686
 jmp .UNIQUE8727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8727: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8728: 
	movq	16(%rax), %rax
 jmp .UNIQUE8729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8729: 
	movq	24(%rax), %rax
 jmp .UNIQUE8730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8730: 
	movl	$2, %esi
 jmp .UNIQUE8731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8731: 
	movq	%rax, %rdi
 jmp .UNIQUE8732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8732: 
	call	get_stack_int_array_element
 jmp .UNIQUE8733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8733: 
	leal	(%rax,%rax), %edx
 jmp .UNIQUE8734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8734: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8735: 
	movq	16(%rax), %rax
 jmp .UNIQUE8736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8736: 
	movq	24(%rax), %rax
 jmp .UNIQUE8737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8737: 
	movl	$3, %esi
 jmp .UNIQUE8738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8738: 
	movq	%rax, %rdi
 jmp .UNIQUE8739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8739: 
	call	set_stack_int_array_element
 jmp .UNIQUE8740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8740: 
	jmp	.L687
.L688:
 jmp .UNIQUE8741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8741: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8742: 
	movq	16(%rax), %rax
 jmp .UNIQUE8743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8743: 
	movq	24(%rax), %rax
 jmp .UNIQUE8744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8744: 
	movl	$3, %esi
 jmp .UNIQUE8745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8745: 
	movq	%rax, %rdi
 jmp .UNIQUE8746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8746: 
	call	get_stack_int_array_element
 jmp .UNIQUE8747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8747: 
	movslq	%eax, %rbx
 jmp .UNIQUE8748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8748: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8749: 
	movq	16(%rax), %rax
 jmp .UNIQUE8750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8750: 
	movq	96(%rax), %rax
 jmp .UNIQUE8751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8751: 
	movl	$0, %esi
 jmp .UNIQUE8752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8752: 
	movq	%rax, %rdi
 jmp .UNIQUE8753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8753: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8754: 
	movl	$0, %edx
 jmp .UNIQUE8755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8755: 
	movq	%rbx, %rsi
 jmp .UNIQUE8756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8756: 
	movq	%rax, %rdi
 jmp .UNIQUE8757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8757: 
	call	set_char_array_element
 jmp .UNIQUE8758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8758: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8759: 
	movq	16(%rax), %rax
 jmp .UNIQUE8760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8760: 
	movq	24(%rax), %rax
 jmp .UNIQUE8761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8761: 
	movl	$3, %esi
 jmp .UNIQUE8762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8762: 
	movq	%rax, %rdi
 jmp .UNIQUE8763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8763: 
	call	get_stack_int_array_element
 jmp .UNIQUE8764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8764: 
	movl	%eax, %ebx
 jmp .UNIQUE8765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8765: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8766: 
	movq	16(%rax), %rax
 jmp .UNIQUE8767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8767: 
	movq	24(%rax), %rax
 jmp .UNIQUE8768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8768: 
	movl	$2, %esi
 jmp .UNIQUE8769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8769: 
	movq	%rax, %rdi
 jmp .UNIQUE8770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8770: 
	call	get_stack_int_array_element
 jmp .UNIQUE8771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8771: 
	leal	(%rbx,%rax), %edx
 jmp .UNIQUE8772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8772: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8773: 
	movq	16(%rax), %rax
 jmp .UNIQUE8774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8774: 
	movq	24(%rax), %rax
 jmp .UNIQUE8775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8775: 
	movl	$3, %esi
 jmp .UNIQUE8776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8776: 
	movq	%rax, %rdi
 jmp .UNIQUE8777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8777: 
	call	set_stack_int_array_element
.L687:
 jmp .UNIQUE8778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8778: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8779: 
	movq	16(%rax), %rax
 jmp .UNIQUE8780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8780: 
	movq	24(%rax), %rax
 jmp .UNIQUE8781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8781: 
	movl	$3, %esi
 jmp .UNIQUE8782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8782: 
	movq	%rax, %rdi
 jmp .UNIQUE8783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8783: 
	call	get_stack_int_array_element
 jmp .UNIQUE8784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8784: 
	movl	%eax, %ebx
 jmp .UNIQUE8785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8785: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8786: 
	movq	16(%rax), %rax
 jmp .UNIQUE8787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8787: 
	movq	24(%rax), %rax
 jmp .UNIQUE8788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8788: 
	movl	$0, %esi
 jmp .UNIQUE8789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8789: 
	movq	%rax, %rdi
 jmp .UNIQUE8790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8790: 
	call	get_stack_int_array_element
 jmp .UNIQUE8791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8791: 
	cmpl	%eax, %ebx
 jmp .UNIQUE8792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8792: 
	jle	.L688
.L686:
 jmp .UNIQUE8793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8793: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8794: 
	movq	16(%rax), %rax
 jmp .UNIQUE8795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8795: 
	movq	24(%rax), %rax
 jmp .UNIQUE8796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8796: 
	movl	$2, %esi
 jmp .UNIQUE8797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8797: 
	movq	%rax, %rdi
 jmp .UNIQUE8798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8798: 
	call	get_stack_int_array_element
 jmp .UNIQUE8799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8799: 
	leal	1(%rax), %edx
 jmp .UNIQUE8800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8800: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8801: 
	movq	16(%rax), %rax
 jmp .UNIQUE8802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8802: 
	movq	24(%rax), %rax
 jmp .UNIQUE8803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8803: 
	movl	$2, %esi
 jmp .UNIQUE8804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8804: 
	movq	%rax, %rdi
 jmp .UNIQUE8805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8805: 
	call	set_stack_int_array_element
.L685:
 jmp .UNIQUE8806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8806: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8807: 
	movq	16(%rax), %rax
 jmp .UNIQUE8808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8808: 
	movq	24(%rax), %rax
 jmp .UNIQUE8809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8809: 
	movl	$2, %esi
 jmp .UNIQUE8810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8810: 
	movq	%rax, %rdi
 jmp .UNIQUE8811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8811: 
	call	get_stack_int_array_element
 jmp .UNIQUE8812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8812: 
	cvtsi2sd	%eax, %xmm2
 jmp .UNIQUE8813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8813: 
	movsd	%xmm2, -48(%rbp)
 jmp .UNIQUE8814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8814: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8815: 
	movq	16(%rax), %rax
 jmp .UNIQUE8816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8816: 
	movq	72(%rax), %rax
 jmp .UNIQUE8817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8817: 
	movl	$0, %esi
 jmp .UNIQUE8818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8818: 
	movq	%rax, %rdi
 jmp .UNIQUE8819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8819: 
	call	get_stack_double_array_element
 jmp .UNIQUE8820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8820: 
	movsd	.LC45(%rip), %xmm1
 jmp .UNIQUE8821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8821: 
	addsd	%xmm1, %xmm0
 jmp .UNIQUE8822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8822: 
	ucomisd	-48(%rbp), %xmm0
 jmp .UNIQUE8823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8823: 
	jnb	.L689
 jmp .UNIQUE8824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8824: 
	movl	$10, %edi
 jmp .UNIQUE8825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8825: 
	call	putchar
 jmp .UNIQUE8826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8826: 
	movl	$.LC132, %edi
 jmp .UNIQUE8827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8827: 
	call	puts
 jmp .UNIQUE8828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8828: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8829: 
	movq	16(%rax), %rax
 jmp .UNIQUE8830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8830: 
	movq	24(%rax), %rax
 jmp .UNIQUE8831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8831: 
	movl	$2, %edx
 jmp .UNIQUE8832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8832: 
	movl	$2, %esi
 jmp .UNIQUE8833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8833: 
	movq	%rax, %rdi
 jmp .UNIQUE8834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8834: 
	call	set_stack_int_array_element
 jmp .UNIQUE8835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8835: 
	jmp	.L690
.L692:
 jmp .UNIQUE8836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8836: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8837: 
	movq	16(%rax), %rax
 jmp .UNIQUE8838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8838: 
	movq	24(%rax), %rax
 jmp .UNIQUE8839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8839: 
	movl	$2, %esi
 jmp .UNIQUE8840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8840: 
	movq	%rax, %rdi
 jmp .UNIQUE8841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8841: 
	call	get_stack_int_array_element
 jmp .UNIQUE8842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8842: 
	movslq	%eax, %rbx
 jmp .UNIQUE8843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8843: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8844: 
	movq	16(%rax), %rax
 jmp .UNIQUE8845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8845: 
	movq	96(%rax), %rax
 jmp .UNIQUE8846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8846: 
	movl	$0, %esi
 jmp .UNIQUE8847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8847: 
	movq	%rax, %rdi
 jmp .UNIQUE8848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8848: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8849: 
	movq	%rbx, %rsi
 jmp .UNIQUE8850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8850: 
	movq	%rax, %rdi
 jmp .UNIQUE8851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8851: 
	call	get_char_array_element
 jmp .UNIQUE8852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8852: 
	cmpb	$1, %al
 jmp .UNIQUE8853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8853: 
	jne	.L691
 jmp .UNIQUE8854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8854: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8855: 
	movq	16(%rax), %rax
 jmp .UNIQUE8856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8856: 
	movq	24(%rax), %rax
 jmp .UNIQUE8857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8857: 
	movl	$2, %esi
 jmp .UNIQUE8858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8858: 
	movq	%rax, %rdi
 jmp .UNIQUE8859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8859: 
	call	get_stack_int_array_element
 jmp .UNIQUE8860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8860: 
	movl	%eax, %esi
 jmp .UNIQUE8861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8861: 
	movl	$.LC22, %edi
 jmp .UNIQUE8862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8862: 
	movl	$0, %eax
 jmp .UNIQUE8863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8863: 
	call	printf
 jmp .UNIQUE8864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8864: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8865: 
	movq	16(%rax), %rax
 jmp .UNIQUE8866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8866: 
	movq	24(%rax), %rax
 jmp .UNIQUE8867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8867: 
	movl	$1, %esi
 jmp .UNIQUE8868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8868: 
	movq	%rax, %rdi
 jmp .UNIQUE8869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8869: 
	call	get_stack_int_array_element
 jmp .UNIQUE8870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8870: 
	leal	1(%rax), %edx
 jmp .UNIQUE8871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8871: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8872: 
	movq	16(%rax), %rax
 jmp .UNIQUE8873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8873: 
	movq	24(%rax), %rax
 jmp .UNIQUE8874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8874: 
	movl	$1, %esi
 jmp .UNIQUE8875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8875: 
	movq	%rax, %rdi
 jmp .UNIQUE8876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8876: 
	call	set_stack_int_array_element
.L691:
 jmp .UNIQUE8877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8877: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8878: 
	movq	16(%rax), %rax
 jmp .UNIQUE8879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8879: 
	movq	24(%rax), %rax
 jmp .UNIQUE8880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8880: 
	movl	$2, %esi
 jmp .UNIQUE8881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8881: 
	movq	%rax, %rdi
 jmp .UNIQUE8882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8882: 
	call	get_stack_int_array_element
 jmp .UNIQUE8883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8883: 
	leal	1(%rax), %edx
 jmp .UNIQUE8884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8884: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8885: 
	movq	16(%rax), %rax
 jmp .UNIQUE8886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8886: 
	movq	24(%rax), %rax
 jmp .UNIQUE8887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8887: 
	movl	$2, %esi
 jmp .UNIQUE8888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8888: 
	movq	%rax, %rdi
 jmp .UNIQUE8889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8889: 
	call	set_stack_int_array_element
.L690:
 jmp .UNIQUE8890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8890: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8891: 
	movq	16(%rax), %rax
 jmp .UNIQUE8892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8892: 
	movq	24(%rax), %rax
 jmp .UNIQUE8893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8893: 
	movl	$2, %esi
 jmp .UNIQUE8894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8894: 
	movq	%rax, %rdi
 jmp .UNIQUE8895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8895: 
	call	get_stack_int_array_element
 jmp .UNIQUE8896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8896: 
	movl	%eax, %ebx
 jmp .UNIQUE8897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8897: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8898: 
	movq	16(%rax), %rax
 jmp .UNIQUE8899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8899: 
	movq	24(%rax), %rax
 jmp .UNIQUE8900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8900: 
	movl	$0, %esi
 jmp .UNIQUE8901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8901: 
	movq	%rax, %rdi
 jmp .UNIQUE8902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8902: 
	call	get_stack_int_array_element
 jmp .UNIQUE8903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8903: 
	cmpl	%eax, %ebx
 jmp .UNIQUE8904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8904: 
	jle	.L692
 jmp .UNIQUE8905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8905: 
	movl	$10, %edi
 jmp .UNIQUE8906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8906: 
	call	putchar
 jmp .UNIQUE8907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8907: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8908: 
	movq	16(%rax), %rax
 jmp .UNIQUE8909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8909: 
	movq	24(%rax), %rax
 jmp .UNIQUE8910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8910: 
	movl	$1, %esi
 jmp .UNIQUE8911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8911: 
	movq	%rax, %rdi
 jmp .UNIQUE8912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8912: 
	call	get_stack_int_array_element
 jmp .UNIQUE8913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8913: 
	movl	%eax, %esi
 jmp .UNIQUE8914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8914: 
	movl	$.LC131, %edi
 jmp .UNIQUE8915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8915: 
	movl	$0, %eax
 jmp .UNIQUE8916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8916: 
	call	printf
 jmp .UNIQUE8917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8917: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8918: 
	movq	16(%rax), %rax
 jmp .UNIQUE8919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8919: 
	movq	96(%rax), %rax
 jmp .UNIQUE8920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8920: 
	movl	$0, %esi
 jmp .UNIQUE8921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8921: 
	movq	%rax, %rdi
 jmp .UNIQUE8922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8922: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8923: 
	movq	%rax, %rdi
 jmp .UNIQUE8924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8924: 
	call	managed_secure_free
 jmp .UNIQUE8925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8925: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8926: 
	movq	8(%rax), %rax
 jmp .UNIQUE8927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8927: 
	movq	%rax, %rdi
 jmp .UNIQUE8928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8928: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE8929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8929: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8930: 
	movq	%rax, %rdi
 jmp .UNIQUE8931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8931: 
	call	free_fun_params_that_point_to_stack
 jmp .UNIQUE8932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8932: 
	addq	$104, %rsp
 jmp .UNIQUE8933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8933: 
	popq	%rbx
 jmp .UNIQUE8934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8934: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE8935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8935: 
	ret
	.cfi_endproc
.LFE133:
	.size	user_friendly_secure_sieve_of_Eratosthenes, .-user_friendly_secure_sieve_of_Eratosthenes
	.comm	matrix_res1,4008004,32
	.comm	matrix_res2,4008004,32
	.comm	matrix1,4008004,32
	.comm	matrix2,4008004,32
	.globl	test_array
	.data
	.align 16
	.type	test_array, @object
	.size	test_array, 16
test_array:
	.long	42
	.long	43
	.long	44
	.long	45
	.text
	.globl	fill_matrices_for_multiplication
	.type	fill_matrices_for_multiplication, @function
fill_matrices_for_multiplication:
.LFB134:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE8936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8936: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE8937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8937: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE8938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8938: 
	subq	$32, %rsp
 jmp .UNIQUE8939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8939: 
	movl	%edi, -20(%rbp)
 jmp .UNIQUE8940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8940: 
	movl	%esi, -24(%rbp)
 jmp .UNIQUE8941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8941: 
	movl	$0, -8(%rbp)
 jmp .UNIQUE8942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8942: 
	jmp	.L694
.L697:
 jmp .UNIQUE8943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8943: 
	movl	$0, -4(%rbp)
 jmp .UNIQUE8944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8944: 
	jmp	.L695
.L696:
 jmp .UNIQUE8945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8945: 
	call	rand
 jmp .UNIQUE8946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8946: 
	cltd
 jmp .UNIQUE8947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8947: 
	idivl	-24(%rbp)
 jmp .UNIQUE8948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8948: 
	movl	%edx, %eax
 jmp .UNIQUE8949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8949: 
	movl	-4(%rbp), %edx
 jmp .UNIQUE8950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8950: 
	movslq	%edx, %rdx
 jmp .UNIQUE8951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8951: 
	movl	-8(%rbp), %ecx
 jmp .UNIQUE8952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8952: 
	movslq	%ecx, %rcx
 jmp .UNIQUE8953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8953: 
	imulq	$1001, %rcx, %rcx
 jmp .UNIQUE8954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8954: 
	addq	%rcx, %rdx
 jmp .UNIQUE8955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8955: 
	movl	%eax, matrix1(,%rdx,4)
 jmp .UNIQUE8956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8956: 
	call	rand
 jmp .UNIQUE8957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8957: 
	cltd
 jmp .UNIQUE8958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8958: 
	idivl	-24(%rbp)
 jmp .UNIQUE8959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8959: 
	movl	%edx, %eax
 jmp .UNIQUE8960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8960: 
	movl	-4(%rbp), %edx
 jmp .UNIQUE8961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8961: 
	movslq	%edx, %rdx
 jmp .UNIQUE8962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8962: 
	movl	-8(%rbp), %ecx
 jmp .UNIQUE8963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8963: 
	movslq	%ecx, %rcx
 jmp .UNIQUE8964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8964: 
	imulq	$1001, %rcx, %rcx
 jmp .UNIQUE8965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8965: 
	addq	%rcx, %rdx
 jmp .UNIQUE8966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8966: 
	movl	%eax, matrix2(,%rdx,4)
 jmp .UNIQUE8967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8967: 
	addl	$1, -4(%rbp)
.L695:
 jmp .UNIQUE8968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8968: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE8969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8969: 
	cmpl	-20(%rbp), %eax
 jmp .UNIQUE8970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8970: 
	jl	.L696
 jmp .UNIQUE8971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8971: 
	addl	$1, -8(%rbp)
.L694:
 jmp .UNIQUE8972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8972: 
	movl	-8(%rbp), %eax
 jmp .UNIQUE8973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8973: 
	cmpl	-20(%rbp), %eax
 jmp .UNIQUE8974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8974: 
	jl	.L697
 jmp .UNIQUE8975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8975: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE8976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8976: 
	ret
	.cfi_endproc
.LFE134:
	.size	fill_matrices_for_multiplication, .-fill_matrices_for_multiplication
	.section	.rodata
.LC133:
	.string	"Test array:"
	.text
	.globl	matrix_multiplication
	.type	matrix_multiplication, @function
matrix_multiplication:
.LFB135:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE8977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8977: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE8978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8978: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE8979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8979: 
	pushq	%r15
 jmp .UNIQUE8980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8980: 
	pushq	%r14
 jmp .UNIQUE8981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8981: 
	pushq	%r13
 jmp .UNIQUE8982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8982: 
	pushq	%r12
 jmp .UNIQUE8983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8983: 
	pushq	%rbx
 jmp .UNIQUE8984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8984: 
	subq	$168, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
 jmp .UNIQUE8985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8985: 
	movl	%edi, -116(%rbp)
 jmp .UNIQUE8986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8986: 
	movl	%esi, -120(%rbp)
 jmp .UNIQUE8987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8987: 
	movq	%rsp, %rax
 jmp .UNIQUE8988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8988: 
	movq	%rax, -128(%rbp)
 jmp .UNIQUE8989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8989: 
	movl	-116(%rbp), %esi
 jmp .UNIQUE8990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8990: 
	movl	-116(%rbp), %edi
 jmp .UNIQUE8991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8991: 
	movslq	%esi, %rax
 jmp .UNIQUE8992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8992: 
	subq	$1, %rax
 jmp .UNIQUE8993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8993: 
	movq	%rax, -96(%rbp)
 jmp .UNIQUE8994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8994: 
	movslq	%esi, %rax
 jmp .UNIQUE8995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8995: 
	movq	%rax, %rdx
 jmp .UNIQUE8996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8996: 
	movl	$0, %ecx
 jmp .UNIQUE8997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8997: 
	movslq	%esi, %rax
 jmp .UNIQUE8998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8998: 
	leaq	0(,%rax,4), %rbx
 jmp .UNIQUE8999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8999: 
	movslq	%edi, %rax
 jmp .UNIQUE9000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9000: 
	subq	$1, %rax
 jmp .UNIQUE9001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9001: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE9002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9002: 
	movslq	%esi, %rax
 jmp .UNIQUE9003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9003: 
	movq	%rax, %r10
 jmp .UNIQUE9004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9004: 
	movl	$0, %r11d
 jmp .UNIQUE9005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9005: 
	movslq	%edi, %rax
 jmp .UNIQUE9006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9006: 
	movq	%rax, %r8
 jmp .UNIQUE9007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9007: 
	movl	$0, %r9d
 jmp .UNIQUE9008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9008: 
	movq	%r11, %rdx
 jmp .UNIQUE9009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9009: 
	imulq	%r8, %rdx
 jmp .UNIQUE9010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9010: 
	movq	%r9, %rax
 jmp .UNIQUE9011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9011: 
	imulq	%r10, %rax
 jmp .UNIQUE9012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9012: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE9013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9013: 
	movq	%r10, %rax
 jmp .UNIQUE9014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9014: 
	mulq	%r8
 jmp .UNIQUE9015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9015: 
	addq	%rdx, %rcx
 jmp .UNIQUE9016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9016: 
	movq	%rcx, %rdx
 jmp .UNIQUE9017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9017: 
	movslq	%esi, %rax
 jmp .UNIQUE9018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9018: 
	movq	%rax, %r14
 jmp .UNIQUE9019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9019: 
	movl	$0, %r15d
 jmp .UNIQUE9020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9020: 
	movslq	%edi, %rax
 jmp .UNIQUE9021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9021: 
	movq	%rax, %r12
 jmp .UNIQUE9022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9022: 
	movl	$0, %r13d
 jmp .UNIQUE9023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9023: 
	movq	%r15, %rdx
 jmp .UNIQUE9024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9024: 
	imulq	%r12, %rdx
 jmp .UNIQUE9025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9025: 
	movq	%r13, %rax
 jmp .UNIQUE9026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9026: 
	imulq	%r14, %rax
 jmp .UNIQUE9027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9027: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE9028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9028: 
	movq	%r14, %rax
 jmp .UNIQUE9029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9029: 
	mulq	%r12
 jmp .UNIQUE9030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9030: 
	addq	%rdx, %rcx
 jmp .UNIQUE9031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9031: 
	movq	%rcx, %rdx
 jmp .UNIQUE9032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9032: 
	movslq	%esi, %rdx
 jmp .UNIQUE9033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9033: 
	movslq	%edi, %rax
 jmp .UNIQUE9034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9034: 
	imulq	%rdx, %rax
 jmp .UNIQUE9035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9035: 
	salq	$2, %rax
 jmp .UNIQUE9036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9036: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE9037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9037: 
	movl	$16, %eax
 jmp .UNIQUE9038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9038: 
	subq	$1, %rax
 jmp .UNIQUE9039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9039: 
	addq	%rdx, %rax
 jmp .UNIQUE9040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9040: 
	movl	$16, %ecx
 jmp .UNIQUE9041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9041: 
	movl	$0, %edx
 jmp .UNIQUE9042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9042: 
	divq	%rcx
 jmp .UNIQUE9043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9043: 
	imulq	$16, %rax, %rax
 jmp .UNIQUE9044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9044: 
	subq	%rax, %rsp
 jmp .UNIQUE9045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9045: 
	movq	%rsp, %rax
 jmp .UNIQUE9046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9046: 
	addq	$3, %rax
 jmp .UNIQUE9047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9047: 
	shrq	$2, %rax
 jmp .UNIQUE9048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9048: 
	salq	$2, %rax
 jmp .UNIQUE9049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9049: 
	movq	%rax, -80(%rbp)
 jmp .UNIQUE9050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9050: 
	movl	-116(%rbp), %edi
 jmp .UNIQUE9051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9051: 
	movl	-116(%rbp), %r8d
 jmp .UNIQUE9052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9052: 
	movslq	%edi, %rax
 jmp .UNIQUE9053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9053: 
	subq	$1, %rax
 jmp .UNIQUE9054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9054: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE9055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9055: 
	movslq	%edi, %rax
 jmp .UNIQUE9056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9056: 
	movq	%rax, -208(%rbp)
 jmp .UNIQUE9057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9057: 
	movq	$0, -200(%rbp)
 jmp .UNIQUE9058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9058: 
	movslq	%edi, %rax
 jmp .UNIQUE9059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9059: 
	leaq	0(,%rax,4), %rcx
 jmp .UNIQUE9060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9060: 
	movslq	%r8d, %rax
 jmp .UNIQUE9061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9061: 
	subq	$1, %rax
 jmp .UNIQUE9062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9062: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE9063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9063: 
	movslq	%edi, %rax
 jmp .UNIQUE9064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9064: 
	movq	%rax, -144(%rbp)
 jmp .UNIQUE9065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9065: 
	movq	$0, -136(%rbp)
 jmp .UNIQUE9066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9066: 
	movslq	%r8d, %rax
 jmp .UNIQUE9067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9067: 
	movq	%rax, -160(%rbp)
 jmp .UNIQUE9068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9068: 
	movq	$0, -152(%rbp)
 jmp .UNIQUE9069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9069: 
	movq	-144(%rbp), %r14
 jmp .UNIQUE9070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9070: 
	movq	-136(%rbp), %r15
 jmp .UNIQUE9071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9071: 
	movq	%r15, %rdx
 jmp .UNIQUE9072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9072: 
	movq	-160(%rbp), %r9
 jmp .UNIQUE9073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9073: 
	movq	-152(%rbp), %r10
 jmp .UNIQUE9074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9074: 
	imulq	%r9, %rdx
 jmp .UNIQUE9075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9075: 
	movq	%r10, %rax
 jmp .UNIQUE9076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9076: 
	imulq	%r14, %rax
 jmp .UNIQUE9077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9077: 
	leaq	(%rdx,%rax), %rsi
 jmp .UNIQUE9078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9078: 
	movq	%r14, %rax
 jmp .UNIQUE9079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9079: 
	mulq	%r9
 jmp .UNIQUE9080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9080: 
	addq	%rdx, %rsi
 jmp .UNIQUE9081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9081: 
	movq	%rsi, %rdx
 jmp .UNIQUE9082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9082: 
	movslq	%edi, %rax
 jmp .UNIQUE9083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9083: 
	movq	%rax, -176(%rbp)
 jmp .UNIQUE9084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9084: 
	movq	$0, -168(%rbp)
 jmp .UNIQUE9085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9085: 
	movslq	%r8d, %rax
 jmp .UNIQUE9086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9086: 
	movq	%rax, -192(%rbp)
 jmp .UNIQUE9087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9087: 
	movq	$0, -184(%rbp)
 jmp .UNIQUE9088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9088: 
	movq	-176(%rbp), %r9
 jmp .UNIQUE9089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9089: 
	movq	-168(%rbp), %r10
 jmp .UNIQUE9090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9090: 
	movq	%r10, %rdx
 jmp .UNIQUE9091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9091: 
	movq	-192(%rbp), %r11
 jmp .UNIQUE9092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9092: 
	movq	-184(%rbp), %r12
 jmp .UNIQUE9093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9093: 
	imulq	%r11, %rdx
 jmp .UNIQUE9094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9094: 
	movq	%r12, %rax
 jmp .UNIQUE9095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9095: 
	imulq	%r9, %rax
 jmp .UNIQUE9096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9096: 
	leaq	(%rdx,%rax), %rsi
 jmp .UNIQUE9097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9097: 
	movq	%r9, %rax
 jmp .UNIQUE9098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9098: 
	mulq	%r11
 jmp .UNIQUE9099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9099: 
	addq	%rdx, %rsi
 jmp .UNIQUE9100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9100: 
	movq	%rsi, %rdx
 jmp .UNIQUE9101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9101: 
	movslq	%edi, %rdx
 jmp .UNIQUE9102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9102: 
	movslq	%r8d, %rax
 jmp .UNIQUE9103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9103: 
	imulq	%rdx, %rax
 jmp .UNIQUE9104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9104: 
	salq	$2, %rax
 jmp .UNIQUE9105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9105: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE9106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9106: 
	movl	$16, %eax
 jmp .UNIQUE9107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9107: 
	subq	$1, %rax
 jmp .UNIQUE9108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9108: 
	addq	%rdx, %rax
 jmp .UNIQUE9109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9109: 
	movl	$16, %edi
 jmp .UNIQUE9110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9110: 
	movl	$0, %edx
 jmp .UNIQUE9111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9111: 
	divq	%rdi
 jmp .UNIQUE9112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9112: 
	imulq	$16, %rax, %rax
 jmp .UNIQUE9113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9113: 
	subq	%rax, %rsp
 jmp .UNIQUE9114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9114: 
	movq	%rsp, %rax
 jmp .UNIQUE9115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9115: 
	addq	$3, %rax
 jmp .UNIQUE9116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9116: 
	shrq	$2, %rax
 jmp .UNIQUE9117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9117: 
	salq	$2, %rax
 jmp .UNIQUE9118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9118: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE9119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9119: 
	movl	$0, -112(%rbp)
 jmp .UNIQUE9120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9120: 
	jmp	.L699
.L702:
 jmp .UNIQUE9121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9121: 
	movl	$0, -108(%rbp)
 jmp .UNIQUE9122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9122: 
	jmp	.L700
.L701:
 jmp .UNIQUE9123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9123: 
	movq	%rbx, %r8
 jmp .UNIQUE9124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9124: 
	shrq	$2, %r8
 jmp .UNIQUE9125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9125: 
	movl	-108(%rbp), %eax
 jmp .UNIQUE9126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9126: 
	cltq
 jmp .UNIQUE9127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9127: 
	movl	-112(%rbp), %edx
 jmp .UNIQUE9128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9128: 
	movslq	%edx, %rdx
 jmp .UNIQUE9129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9129: 
	imulq	$1001, %rdx, %rdx
 jmp .UNIQUE9130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9130: 
	addq	%rdx, %rax
 jmp .UNIQUE9131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9131: 
	movl	matrix1(,%rax,4), %edx
 jmp .UNIQUE9132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9132: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE9133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9133: 
	movl	-108(%rbp), %esi
 jmp .UNIQUE9134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9134: 
	movslq	%esi, %rdi
 jmp .UNIQUE9135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9135: 
	movl	-112(%rbp), %esi
 jmp .UNIQUE9136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9136: 
	movslq	%esi, %rsi
 jmp .UNIQUE9137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9137: 
	imulq	%r8, %rsi
 jmp .UNIQUE9138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9138: 
	addq	%rdi, %rsi
 jmp .UNIQUE9139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9139: 
	movl	%edx, (%rax,%rsi,4)
 jmp .UNIQUE9140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9140: 
	movq	%rcx, %r8
 jmp .UNIQUE9141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9141: 
	shrq	$2, %r8
 jmp .UNIQUE9142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9142: 
	movl	-108(%rbp), %eax
 jmp .UNIQUE9143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9143: 
	cltq
 jmp .UNIQUE9144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9144: 
	movl	-112(%rbp), %edx
 jmp .UNIQUE9145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9145: 
	movslq	%edx, %rdx
 jmp .UNIQUE9146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9146: 
	imulq	$1001, %rdx, %rdx
 jmp .UNIQUE9147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9147: 
	addq	%rdx, %rax
 jmp .UNIQUE9148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9148: 
	movl	matrix2(,%rax,4), %edx
 jmp .UNIQUE9149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9149: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE9150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9150: 
	movl	-108(%rbp), %esi
 jmp .UNIQUE9151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9151: 
	movslq	%esi, %rdi
 jmp .UNIQUE9152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9152: 
	movl	-112(%rbp), %esi
 jmp .UNIQUE9153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9153: 
	movslq	%esi, %rsi
 jmp .UNIQUE9154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9154: 
	imulq	%r8, %rsi
 jmp .UNIQUE9155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9155: 
	addq	%rdi, %rsi
 jmp .UNIQUE9156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9156: 
	movl	%edx, (%rax,%rsi,4)
 jmp .UNIQUE9157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9157: 
	addl	$1, -108(%rbp)
.L700:
 jmp .UNIQUE9158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9158: 
	movl	-108(%rbp), %eax
 jmp .UNIQUE9159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9159: 
	cmpl	-116(%rbp), %eax
 jmp .UNIQUE9160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9160: 
	jl	.L701
 jmp .UNIQUE9161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9161: 
	addl	$1, -112(%rbp)
.L699:
 jmp .UNIQUE9162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9162: 
	movl	-112(%rbp), %eax
 jmp .UNIQUE9163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9163: 
	cmpl	-116(%rbp), %eax
 jmp .UNIQUE9164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9164: 
	jl	.L702
 jmp .UNIQUE9165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9165: 
	movl	$0, -112(%rbp)
 jmp .UNIQUE9166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9166: 
	jmp	.L703
.L708:
 jmp .UNIQUE9167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9167: 
	movl	$0, -108(%rbp)
 jmp .UNIQUE9168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9168: 
	jmp	.L704
.L707:
 jmp .UNIQUE9169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9169: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE9170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9170: 
	movl	$0, -104(%rbp)
 jmp .UNIQUE9171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9171: 
	jmp	.L705
.L706:
 jmp .UNIQUE9172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9172: 
	movq	%rbx, %rdi
 jmp .UNIQUE9173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9173: 
	shrq	$2, %rdi
 jmp .UNIQUE9174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9174: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE9175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9175: 
	movl	-104(%rbp), %edx
 jmp .UNIQUE9176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9176: 
	movslq	%edx, %rsi
 jmp .UNIQUE9177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9177: 
	movl	-112(%rbp), %edx
 jmp .UNIQUE9178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9178: 
	movslq	%edx, %rdx
 jmp .UNIQUE9179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9179: 
	imulq	%rdi, %rdx
 jmp .UNIQUE9180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9180: 
	addq	%rsi, %rdx
 jmp .UNIQUE9181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9181: 
	movl	(%rax,%rdx,4), %edx
 jmp .UNIQUE9182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9182: 
	movq	%rcx, %r8
 jmp .UNIQUE9183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9183: 
	shrq	$2, %r8
 jmp .UNIQUE9184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9184: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE9185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9185: 
	movl	-108(%rbp), %esi
 jmp .UNIQUE9186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9186: 
	movslq	%esi, %rdi
 jmp .UNIQUE9187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9187: 
	movl	-104(%rbp), %esi
 jmp .UNIQUE9188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9188: 
	movslq	%esi, %rsi
 jmp .UNIQUE9189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9189: 
	imulq	%r8, %rsi
 jmp .UNIQUE9190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9190: 
	addq	%rdi, %rsi
 jmp .UNIQUE9191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9191: 
	movl	(%rax,%rsi,4), %eax
 jmp .UNIQUE9192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9192: 
	imull	%edx, %eax
 jmp .UNIQUE9193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9193: 
	addl	%eax, -100(%rbp)
 jmp .UNIQUE9194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9194: 
	addl	$1, -104(%rbp)
.L705:
 jmp .UNIQUE9195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9195: 
	movl	-104(%rbp), %eax
 jmp .UNIQUE9196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9196: 
	cmpl	-116(%rbp), %eax
 jmp .UNIQUE9197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9197: 
	jl	.L706
 jmp .UNIQUE9198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9198: 
	movl	-108(%rbp), %eax
 jmp .UNIQUE9199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9199: 
	cltq
 jmp .UNIQUE9200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9200: 
	movl	-112(%rbp), %edx
 jmp .UNIQUE9201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9201: 
	movslq	%edx, %rdx
 jmp .UNIQUE9202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9202: 
	imulq	$1001, %rdx, %rdx
 jmp .UNIQUE9203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9203: 
	addq	%rax, %rdx
 jmp .UNIQUE9204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9204: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE9205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9205: 
	movl	%eax, matrix_res1(,%rdx,4)
 jmp .UNIQUE9206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9206: 
	addl	$1, -108(%rbp)
.L704:
 jmp .UNIQUE9207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9207: 
	movl	-108(%rbp), %eax
 jmp .UNIQUE9208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9208: 
	cmpl	-116(%rbp), %eax
 jmp .UNIQUE9209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9209: 
	jl	.L707
 jmp .UNIQUE9210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9210: 
	addl	$1, -112(%rbp)
.L703:
 jmp .UNIQUE9211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9211: 
	movl	-112(%rbp), %eax
 jmp .UNIQUE9212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9212: 
	cmpl	-116(%rbp), %eax
 jmp .UNIQUE9213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9213: 
	jl	.L708
 jmp .UNIQUE9214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9214: 
	movl	$.LC133, %edi
 jmp .UNIQUE9215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9215: 
	call	puts
 jmp .UNIQUE9216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9216: 
	movl	$0, -112(%rbp)
 jmp .UNIQUE9217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9217: 
	jmp	.L709
.L710:
 jmp .UNIQUE9218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9218: 
	movl	-112(%rbp), %eax
 jmp .UNIQUE9219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9219: 
	cltq
 jmp .UNIQUE9220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9220: 
	movl	test_array(,%rax,4), %eax
 jmp .UNIQUE9221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9221: 
	movl	%eax, %esi
 jmp .UNIQUE9222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9222: 
	movl	$.LC22, %edi
 jmp .UNIQUE9223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9223: 
	movl	$0, %eax
 jmp .UNIQUE9224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9224: 
	call	printf
 jmp .UNIQUE9225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9225: 
	addl	$1, -112(%rbp)
.L709:
 jmp .UNIQUE9226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9226: 
	cmpl	$3, -112(%rbp)
 jmp .UNIQUE9227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9227: 
	jle	.L710
 jmp .UNIQUE9228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9228: 
	movl	$10, %edi
 jmp .UNIQUE9229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9229: 
	call	putchar
 jmp .UNIQUE9230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9230: 
	movq	-128(%rbp), %rsp
 jmp .UNIQUE9231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9231: 
	leaq	-40(%rbp), %rsp
 jmp .UNIQUE9232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9232: 
	popq	%rbx
 jmp .UNIQUE9233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9233: 
	popq	%r12
 jmp .UNIQUE9234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9234: 
	popq	%r13
 jmp .UNIQUE9235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9235: 
	popq	%r14
 jmp .UNIQUE9236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9236: 
	popq	%r15
 jmp .UNIQUE9237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9237: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE9238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9238: 
	ret
	.cfi_endproc
.LFE135:
	.size	matrix_multiplication, .-matrix_multiplication
	.globl	user_friendly_secure_matrix_multiplication
	.type	user_friendly_secure_matrix_multiplication, @function
user_friendly_secure_matrix_multiplication:
.LFB136:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE9239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9239: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE9240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9240: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE9241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9241: 
	pushq	%r13
 jmp .UNIQUE9242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9242: 
	pushq	%r12
 jmp .UNIQUE9243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9243: 
	pushq	%rbx
 jmp .UNIQUE9244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9244: 
	subq	$120, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
 jmp .UNIQUE9245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9245: 
	movl	%edi, -52(%rbp)
 jmp .UNIQUE9246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9246: 
	movl	%esi, -56(%rbp)
 jmp .UNIQUE9247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9247: 
	movl	-52(%rbp), %eax
 jmp .UNIQUE9248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9248: 
	movslq	%eax, %rdx
 jmp .UNIQUE9249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9249: 
	movl	-52(%rbp), %eax
 jmp .UNIQUE9250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9250: 
	cltq
 jmp .UNIQUE9251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9251: 
	imulq	%rdx, %rax
 jmp .UNIQUE9252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9252: 
	salq	$2, %rax
 jmp .UNIQUE9253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9253: 
	movq	%rax, %rdx
 jmp .UNIQUE9254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9254: 
	movl	-52(%rbp), %eax
 jmp .UNIQUE9255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9255: 
	movslq	%eax, %rcx
 jmp .UNIQUE9256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9256: 
	movl	-52(%rbp), %eax
 jmp .UNIQUE9257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9257: 
	cltq
 jmp .UNIQUE9258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9258: 
	imulq	%rcx, %rax
 jmp .UNIQUE9259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9259: 
	salq	$2, %rax
 jmp .UNIQUE9260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9260: 
	movl	-56(%rbp), %esi
 jmp .UNIQUE9261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9261: 
	movl	-52(%rbp), %ecx
 jmp .UNIQUE9262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9262: 
	movq	$test_array, 72(%rsp)
 jmp .UNIQUE9263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9263: 
	movq	$1, 64(%rsp)
 jmp .UNIQUE9264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9264: 
	movq	%rdx, 56(%rsp)
 jmp .UNIQUE9265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9265: 
	movq	%rax, 48(%rsp)
 jmp .UNIQUE9266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9266: 
	movq	$16, 40(%rsp)
 jmp .UNIQUE9267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9267: 
	movq	$3, 32(%rsp)
 jmp .UNIQUE9268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9268: 
	movq	$0, 24(%rsp)
 jmp .UNIQUE9269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9269: 
	movq	$0, 16(%rsp)
 jmp .UNIQUE9270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9270: 
	movq	$0, 8(%rsp)
 jmp .UNIQUE9271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9271: 
	movq	$0, (%rsp)
 jmp .UNIQUE9272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9272: 
	movl	%esi, %r9d
 jmp .UNIQUE9273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9273: 
	movl	%ecx, %r8d
 jmp .UNIQUE9274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9274: 
	movl	$2, %ecx
 jmp .UNIQUE9275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9275: 
	movl	$7, %edx
 jmp .UNIQUE9276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9276: 
	movl	$0, %esi
 jmp .UNIQUE9277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9277: 
	movl	$1, %edi
 jmp .UNIQUE9278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9278: 
	movl	$0, %eax
 jmp .UNIQUE9279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9279: 
	call	init_function_params_with_uninitialised_elements
 jmp .UNIQUE9280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9280: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE9281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9281: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9282: 
	movq	%rax, %rdi
 jmp .UNIQUE9283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9283: 
	call	put_fun_params_into_secure_stack_and_free
 jmp .UNIQUE9284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9284: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE9285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9285: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9286: 
	movq	16(%rax), %rax
 jmp .UNIQUE9287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9287: 
	movq	24(%rax), %rax
 jmp .UNIQUE9288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9288: 
	movl	$0, %edx
 jmp .UNIQUE9289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9289: 
	movl	$2, %esi
 jmp .UNIQUE9290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9290: 
	movq	%rax, %rdi
 jmp .UNIQUE9291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9291: 
	call	set_stack_int_array_element
 jmp .UNIQUE9292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9292: 
	jmp	.L712
.L715:
 jmp .UNIQUE9293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9293: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9294: 
	movq	16(%rax), %rax
 jmp .UNIQUE9295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9295: 
	movq	24(%rax), %rax
 jmp .UNIQUE9296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9296: 
	movl	$0, %edx
 jmp .UNIQUE9297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9297: 
	movl	$3, %esi
 jmp .UNIQUE9298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9298: 
	movq	%rax, %rdi
 jmp .UNIQUE9299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9299: 
	call	set_stack_int_array_element
 jmp .UNIQUE9300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9300: 
	jmp	.L713
.L714:
 jmp .UNIQUE9301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9301: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9302: 
	movq	16(%rax), %rax
 jmp .UNIQUE9303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9303: 
	movq	24(%rax), %rax
 jmp .UNIQUE9304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9304: 
	movl	$2, %esi
 jmp .UNIQUE9305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9305: 
	movq	%rax, %rdi
 jmp .UNIQUE9306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9306: 
	call	get_stack_int_array_element
 jmp .UNIQUE9307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9307: 
	movl	%eax, %ebx
 jmp .UNIQUE9308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9308: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9309: 
	movq	16(%rax), %rax
 jmp .UNIQUE9310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9310: 
	movq	24(%rax), %rax
 jmp .UNIQUE9311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9311: 
	movl	$3, %esi
 jmp .UNIQUE9312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9312: 
	movq	%rax, %rdi
 jmp .UNIQUE9313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9313: 
	call	get_stack_int_array_element
 jmp .UNIQUE9314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9314: 
	cltq
 jmp .UNIQUE9315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9315: 
	movslq	%ebx, %rdx
 jmp .UNIQUE9316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9316: 
	imulq	$1001, %rdx, %rdx
 jmp .UNIQUE9317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9317: 
	addq	%rdx, %rax
 jmp .UNIQUE9318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9318: 
	movl	matrix1(,%rax,4), %ebx
 jmp .UNIQUE9319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9319: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9320: 
	movq	16(%rax), %rax
 jmp .UNIQUE9321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9321: 
	movq	24(%rax), %rax
 jmp .UNIQUE9322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9322: 
	movl	$2, %esi
 jmp .UNIQUE9323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9323: 
	movq	%rax, %rdi
 jmp .UNIQUE9324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9324: 
	call	get_stack_int_array_element
 jmp .UNIQUE9325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9325: 
	movl	%eax, %r12d
 jmp .UNIQUE9326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9326: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9327: 
	movq	16(%rax), %rax
 jmp .UNIQUE9328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9328: 
	movq	24(%rax), %rax
 jmp .UNIQUE9329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9329: 
	movl	$0, %esi
 jmp .UNIQUE9330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9330: 
	movq	%rax, %rdi
 jmp .UNIQUE9331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9331: 
	call	get_stack_int_array_element
 jmp .UNIQUE9332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9332: 
	imull	%eax, %r12d
 jmp .UNIQUE9333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9333: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9334: 
	movq	16(%rax), %rax
 jmp .UNIQUE9335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9335: 
	movq	24(%rax), %rax
 jmp .UNIQUE9336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9336: 
	movl	$3, %esi
 jmp .UNIQUE9337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9337: 
	movq	%rax, %rdi
 jmp .UNIQUE9338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9338: 
	call	get_stack_int_array_element
 jmp .UNIQUE9339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9339: 
	addl	%r12d, %eax
 jmp .UNIQUE9340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9340: 
	movslq	%eax, %rcx
 jmp .UNIQUE9341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9341: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9342: 
	movq	16(%rax), %rax
 jmp .UNIQUE9343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9343: 
	movq	120(%rax), %rax
 jmp .UNIQUE9344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9344: 
	addq	$8, %rax
 jmp .UNIQUE9345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9345: 
	movq	(%rax), %rax
 jmp .UNIQUE9346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9346: 
	movl	%ebx, %edx
 jmp .UNIQUE9347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9347: 
	movq	%rcx, %rsi
 jmp .UNIQUE9348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9348: 
	movq	%rax, %rdi
 jmp .UNIQUE9349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9349: 
	call	set_stack_int_array_element
 jmp .UNIQUE9350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9350: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9351: 
	movq	16(%rax), %rax
 jmp .UNIQUE9352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9352: 
	movq	24(%rax), %rax
 jmp .UNIQUE9353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9353: 
	movl	$2, %esi
 jmp .UNIQUE9354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9354: 
	movq	%rax, %rdi
 jmp .UNIQUE9355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9355: 
	call	get_stack_int_array_element
 jmp .UNIQUE9356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9356: 
	movl	%eax, %ebx
 jmp .UNIQUE9357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9357: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9358: 
	movq	16(%rax), %rax
 jmp .UNIQUE9359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9359: 
	movq	24(%rax), %rax
 jmp .UNIQUE9360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9360: 
	movl	$3, %esi
 jmp .UNIQUE9361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9361: 
	movq	%rax, %rdi
 jmp .UNIQUE9362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9362: 
	call	get_stack_int_array_element
 jmp .UNIQUE9363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9363: 
	cltq
 jmp .UNIQUE9364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9364: 
	movslq	%ebx, %rdx
 jmp .UNIQUE9365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9365: 
	imulq	$1001, %rdx, %rdx
 jmp .UNIQUE9366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9366: 
	addq	%rdx, %rax
 jmp .UNIQUE9367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9367: 
	movl	matrix2(,%rax,4), %ebx
 jmp .UNIQUE9368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9368: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9369: 
	movq	16(%rax), %rax
 jmp .UNIQUE9370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9370: 
	movq	24(%rax), %rax
 jmp .UNIQUE9371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9371: 
	movl	$2, %esi
 jmp .UNIQUE9372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9372: 
	movq	%rax, %rdi
 jmp .UNIQUE9373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9373: 
	call	get_stack_int_array_element
 jmp .UNIQUE9374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9374: 
	movl	%eax, %r12d
 jmp .UNIQUE9375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9375: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9376: 
	movq	16(%rax), %rax
 jmp .UNIQUE9377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9377: 
	movq	24(%rax), %rax
 jmp .UNIQUE9378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9378: 
	movl	$0, %esi
 jmp .UNIQUE9379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9379: 
	movq	%rax, %rdi
 jmp .UNIQUE9380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9380: 
	call	get_stack_int_array_element
 jmp .UNIQUE9381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9381: 
	imull	%eax, %r12d
 jmp .UNIQUE9382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9382: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9383: 
	movq	16(%rax), %rax
 jmp .UNIQUE9384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9384: 
	movq	24(%rax), %rax
 jmp .UNIQUE9385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9385: 
	movl	$3, %esi
 jmp .UNIQUE9386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9386: 
	movq	%rax, %rdi
 jmp .UNIQUE9387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9387: 
	call	get_stack_int_array_element
 jmp .UNIQUE9388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9388: 
	addl	%r12d, %eax
 jmp .UNIQUE9389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9389: 
	movslq	%eax, %rcx
 jmp .UNIQUE9390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9390: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9391: 
	movq	16(%rax), %rax
 jmp .UNIQUE9392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9392: 
	movq	120(%rax), %rax
 jmp .UNIQUE9393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9393: 
	addq	$16, %rax
 jmp .UNIQUE9394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9394: 
	movq	(%rax), %rax
 jmp .UNIQUE9395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9395: 
	movl	%ebx, %edx
 jmp .UNIQUE9396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9396: 
	movq	%rcx, %rsi
 jmp .UNIQUE9397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9397: 
	movq	%rax, %rdi
 jmp .UNIQUE9398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9398: 
	call	set_stack_int_array_element
 jmp .UNIQUE9399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9399: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9400: 
	movq	16(%rax), %rax
 jmp .UNIQUE9401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9401: 
	movq	24(%rax), %rax
 jmp .UNIQUE9402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9402: 
	movl	$3, %esi
 jmp .UNIQUE9403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9403: 
	movq	%rax, %rdi
 jmp .UNIQUE9404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9404: 
	call	get_stack_int_array_element
 jmp .UNIQUE9405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9405: 
	leal	1(%rax), %edx
 jmp .UNIQUE9406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9406: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9407: 
	movq	16(%rax), %rax
 jmp .UNIQUE9408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9408: 
	movq	24(%rax), %rax
 jmp .UNIQUE9409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9409: 
	movl	$3, %esi
 jmp .UNIQUE9410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9410: 
	movq	%rax, %rdi
 jmp .UNIQUE9411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9411: 
	call	set_stack_int_array_element
.L713:
 jmp .UNIQUE9412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9412: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9413: 
	movq	16(%rax), %rax
 jmp .UNIQUE9414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9414: 
	movq	24(%rax), %rax
 jmp .UNIQUE9415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9415: 
	movl	$3, %esi
 jmp .UNIQUE9416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9416: 
	movq	%rax, %rdi
 jmp .UNIQUE9417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9417: 
	call	get_stack_int_array_element
 jmp .UNIQUE9418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9418: 
	movl	%eax, %ebx
 jmp .UNIQUE9419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9419: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9420: 
	movq	16(%rax), %rax
 jmp .UNIQUE9421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9421: 
	movq	24(%rax), %rax
 jmp .UNIQUE9422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9422: 
	movl	$0, %esi
 jmp .UNIQUE9423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9423: 
	movq	%rax, %rdi
 jmp .UNIQUE9424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9424: 
	call	get_stack_int_array_element
 jmp .UNIQUE9425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9425: 
	cmpl	%eax, %ebx
 jmp .UNIQUE9426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9426: 
	jl	.L714
 jmp .UNIQUE9427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9427: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9428: 
	movq	16(%rax), %rax
 jmp .UNIQUE9429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9429: 
	movq	24(%rax), %rax
 jmp .UNIQUE9430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9430: 
	movl	$2, %esi
 jmp .UNIQUE9431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9431: 
	movq	%rax, %rdi
 jmp .UNIQUE9432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9432: 
	call	get_stack_int_array_element
 jmp .UNIQUE9433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9433: 
	leal	1(%rax), %edx
 jmp .UNIQUE9434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9434: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9435: 
	movq	16(%rax), %rax
 jmp .UNIQUE9436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9436: 
	movq	24(%rax), %rax
 jmp .UNIQUE9437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9437: 
	movl	$2, %esi
 jmp .UNIQUE9438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9438: 
	movq	%rax, %rdi
 jmp .UNIQUE9439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9439: 
	call	set_stack_int_array_element
.L712:
 jmp .UNIQUE9440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9440: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9441: 
	movq	16(%rax), %rax
 jmp .UNIQUE9442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9442: 
	movq	24(%rax), %rax
 jmp .UNIQUE9443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9443: 
	movl	$2, %esi
 jmp .UNIQUE9444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9444: 
	movq	%rax, %rdi
 jmp .UNIQUE9445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9445: 
	call	get_stack_int_array_element
 jmp .UNIQUE9446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9446: 
	movl	%eax, %ebx
 jmp .UNIQUE9447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9447: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9448: 
	movq	16(%rax), %rax
 jmp .UNIQUE9449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9449: 
	movq	24(%rax), %rax
 jmp .UNIQUE9450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9450: 
	movl	$0, %esi
 jmp .UNIQUE9451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9451: 
	movq	%rax, %rdi
 jmp .UNIQUE9452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9452: 
	call	get_stack_int_array_element
 jmp .UNIQUE9453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9453: 
	cmpl	%eax, %ebx
 jmp .UNIQUE9454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9454: 
	jl	.L715
 jmp .UNIQUE9455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9455: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9456: 
	movq	16(%rax), %rax
 jmp .UNIQUE9457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9457: 
	movq	24(%rax), %rax
 jmp .UNIQUE9458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9458: 
	movl	$0, %edx
 jmp .UNIQUE9459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9459: 
	movl	$2, %esi
 jmp .UNIQUE9460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9460: 
	movq	%rax, %rdi
 jmp .UNIQUE9461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9461: 
	call	set_stack_int_array_element
 jmp .UNIQUE9462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9462: 
	jmp	.L716
.L721:
 jmp .UNIQUE9463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9463: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9464: 
	movq	16(%rax), %rax
 jmp .UNIQUE9465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9465: 
	movq	24(%rax), %rax
 jmp .UNIQUE9466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9466: 
	movl	$0, %edx
 jmp .UNIQUE9467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9467: 
	movl	$3, %esi
 jmp .UNIQUE9468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9468: 
	movq	%rax, %rdi
 jmp .UNIQUE9469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9469: 
	call	set_stack_int_array_element
 jmp .UNIQUE9470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9470: 
	jmp	.L717
.L720:
 jmp .UNIQUE9471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9471: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9472: 
	movq	16(%rax), %rax
 jmp .UNIQUE9473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9473: 
	movq	24(%rax), %rax
 jmp .UNIQUE9474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9474: 
	movl	$0, %edx
 jmp .UNIQUE9475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9475: 
	movl	$6, %esi
 jmp .UNIQUE9476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9476: 
	movq	%rax, %rdi
 jmp .UNIQUE9477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9477: 
	call	set_stack_int_array_element
 jmp .UNIQUE9478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9478: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9479: 
	movq	16(%rax), %rax
 jmp .UNIQUE9480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9480: 
	movq	24(%rax), %rax
 jmp .UNIQUE9481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9481: 
	movl	$0, %edx
 jmp .UNIQUE9482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9482: 
	movl	$4, %esi
 jmp .UNIQUE9483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9483: 
	movq	%rax, %rdi
 jmp .UNIQUE9484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9484: 
	call	set_stack_int_array_element
 jmp .UNIQUE9485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9485: 
	jmp	.L718
.L719:
 jmp .UNIQUE9486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9486: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9487: 
	movq	16(%rax), %rax
 jmp .UNIQUE9488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9488: 
	movq	24(%rax), %rax
 jmp .UNIQUE9489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9489: 
	movl	$6, %esi
 jmp .UNIQUE9490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9490: 
	movq	%rax, %rdi
 jmp .UNIQUE9491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9491: 
	call	get_stack_int_array_element
 jmp .UNIQUE9492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9492: 
	movl	%eax, %ebx
 jmp .UNIQUE9493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9493: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9494: 
	movq	16(%rax), %rax
 jmp .UNIQUE9495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9495: 
	movq	24(%rax), %rax
 jmp .UNIQUE9496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9496: 
	movl	$2, %esi
 jmp .UNIQUE9497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9497: 
	movq	%rax, %rdi
 jmp .UNIQUE9498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9498: 
	call	get_stack_int_array_element
 jmp .UNIQUE9499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9499: 
	movl	%eax, %r12d
 jmp .UNIQUE9500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9500: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9501: 
	movq	16(%rax), %rax
 jmp .UNIQUE9502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9502: 
	movq	24(%rax), %rax
 jmp .UNIQUE9503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9503: 
	movl	$0, %esi
 jmp .UNIQUE9504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9504: 
	movq	%rax, %rdi
 jmp .UNIQUE9505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9505: 
	call	get_stack_int_array_element
 jmp .UNIQUE9506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9506: 
	imull	%eax, %r12d
 jmp .UNIQUE9507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9507: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9508: 
	movq	16(%rax), %rax
 jmp .UNIQUE9509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9509: 
	movq	24(%rax), %rax
 jmp .UNIQUE9510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9510: 
	movl	$4, %esi
 jmp .UNIQUE9511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9511: 
	movq	%rax, %rdi
 jmp .UNIQUE9512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9512: 
	call	get_stack_int_array_element
 jmp .UNIQUE9513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9513: 
	addl	%r12d, %eax
 jmp .UNIQUE9514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9514: 
	movslq	%eax, %rdx
 jmp .UNIQUE9515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9515: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9516: 
	movq	16(%rax), %rax
 jmp .UNIQUE9517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9517: 
	movq	120(%rax), %rax
 jmp .UNIQUE9518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9518: 
	addq	$8, %rax
 jmp .UNIQUE9519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9519: 
	movq	(%rax), %rax
 jmp .UNIQUE9520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9520: 
	movq	%rdx, %rsi
 jmp .UNIQUE9521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9521: 
	movq	%rax, %rdi
 jmp .UNIQUE9522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9522: 
	call	get_stack_int_array_element
 jmp .UNIQUE9523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9523: 
	movl	%eax, %r12d
 jmp .UNIQUE9524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9524: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9525: 
	movq	16(%rax), %rax
 jmp .UNIQUE9526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9526: 
	movq	24(%rax), %rax
 jmp .UNIQUE9527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9527: 
	movl	$4, %esi
 jmp .UNIQUE9528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9528: 
	movq	%rax, %rdi
 jmp .UNIQUE9529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9529: 
	call	get_stack_int_array_element
 jmp .UNIQUE9530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9530: 
	movl	%eax, %r13d
 jmp .UNIQUE9531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9531: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9532: 
	movq	16(%rax), %rax
 jmp .UNIQUE9533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9533: 
	movq	24(%rax), %rax
 jmp .UNIQUE9534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9534: 
	movl	$0, %esi
 jmp .UNIQUE9535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9535: 
	movq	%rax, %rdi
 jmp .UNIQUE9536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9536: 
	call	get_stack_int_array_element
 jmp .UNIQUE9537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9537: 
	imull	%eax, %r13d
 jmp .UNIQUE9538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9538: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9539: 
	movq	16(%rax), %rax
 jmp .UNIQUE9540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9540: 
	movq	24(%rax), %rax
 jmp .UNIQUE9541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9541: 
	movl	$3, %esi
 jmp .UNIQUE9542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9542: 
	movq	%rax, %rdi
 jmp .UNIQUE9543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9543: 
	call	get_stack_int_array_element
 jmp .UNIQUE9544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9544: 
	addl	%r13d, %eax
 jmp .UNIQUE9545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9545: 
	movslq	%eax, %rdx
 jmp .UNIQUE9546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9546: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9547: 
	movq	16(%rax), %rax
 jmp .UNIQUE9548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9548: 
	movq	120(%rax), %rax
 jmp .UNIQUE9549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9549: 
	addq	$16, %rax
 jmp .UNIQUE9550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9550: 
	movq	(%rax), %rax
 jmp .UNIQUE9551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9551: 
	movq	%rdx, %rsi
 jmp .UNIQUE9552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9552: 
	movq	%rax, %rdi
 jmp .UNIQUE9553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9553: 
	call	get_stack_int_array_element
 jmp .UNIQUE9554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9554: 
	imull	%r12d, %eax
 jmp .UNIQUE9555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9555: 
	leal	(%rbx,%rax), %edx
 jmp .UNIQUE9556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9556: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9557: 
	movq	16(%rax), %rax
 jmp .UNIQUE9558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9558: 
	movq	24(%rax), %rax
 jmp .UNIQUE9559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9559: 
	movl	$6, %esi
 jmp .UNIQUE9560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9560: 
	movq	%rax, %rdi
 jmp .UNIQUE9561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9561: 
	call	set_stack_int_array_element
 jmp .UNIQUE9562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9562: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9563: 
	movq	16(%rax), %rax
 jmp .UNIQUE9564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9564: 
	movq	24(%rax), %rax
 jmp .UNIQUE9565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9565: 
	movl	$4, %esi
 jmp .UNIQUE9566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9566: 
	movq	%rax, %rdi
 jmp .UNIQUE9567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9567: 
	call	get_stack_int_array_element
 jmp .UNIQUE9568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9568: 
	leal	1(%rax), %edx
 jmp .UNIQUE9569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9569: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9570: 
	movq	16(%rax), %rax
 jmp .UNIQUE9571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9571: 
	movq	24(%rax), %rax
 jmp .UNIQUE9572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9572: 
	movl	$4, %esi
 jmp .UNIQUE9573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9573: 
	movq	%rax, %rdi
 jmp .UNIQUE9574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9574: 
	call	set_stack_int_array_element
.L718:
 jmp .UNIQUE9575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9575: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9576: 
	movq	16(%rax), %rax
 jmp .UNIQUE9577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9577: 
	movq	24(%rax), %rax
 jmp .UNIQUE9578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9578: 
	movl	$4, %esi
 jmp .UNIQUE9579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9579: 
	movq	%rax, %rdi
 jmp .UNIQUE9580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9580: 
	call	get_stack_int_array_element
 jmp .UNIQUE9581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9581: 
	movl	%eax, %ebx
 jmp .UNIQUE9582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9582: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9583: 
	movq	16(%rax), %rax
 jmp .UNIQUE9584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9584: 
	movq	24(%rax), %rax
 jmp .UNIQUE9585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9585: 
	movl	$0, %esi
 jmp .UNIQUE9586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9586: 
	movq	%rax, %rdi
 jmp .UNIQUE9587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9587: 
	call	get_stack_int_array_element
 jmp .UNIQUE9588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9588: 
	cmpl	%eax, %ebx
 jmp .UNIQUE9589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9589: 
	jl	.L719
 jmp .UNIQUE9590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9590: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9591: 
	movq	16(%rax), %rax
 jmp .UNIQUE9592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9592: 
	movq	24(%rax), %rax
 jmp .UNIQUE9593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9593: 
	movl	$2, %esi
 jmp .UNIQUE9594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9594: 
	movq	%rax, %rdi
 jmp .UNIQUE9595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9595: 
	call	get_stack_int_array_element
 jmp .UNIQUE9596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9596: 
	movl	%eax, %ebx
 jmp .UNIQUE9597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9597: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9598: 
	movq	16(%rax), %rax
 jmp .UNIQUE9599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9599: 
	movq	24(%rax), %rax
 jmp .UNIQUE9600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9600: 
	movl	$3, %esi
 jmp .UNIQUE9601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9601: 
	movq	%rax, %rdi
 jmp .UNIQUE9602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9602: 
	call	get_stack_int_array_element
 jmp .UNIQUE9603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9603: 
	movl	%eax, %r12d
 jmp .UNIQUE9604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9604: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9605: 
	movq	16(%rax), %rax
 jmp .UNIQUE9606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9606: 
	movq	24(%rax), %rax
 jmp .UNIQUE9607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9607: 
	movl	$6, %esi
 jmp .UNIQUE9608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9608: 
	movq	%rax, %rdi
 jmp .UNIQUE9609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9609: 
	call	get_stack_int_array_element
 jmp .UNIQUE9610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9610: 
	movslq	%r12d, %rdx
 jmp .UNIQUE9611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9611: 
	movslq	%ebx, %rcx
 jmp .UNIQUE9612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9612: 
	imulq	$1001, %rcx, %rcx
 jmp .UNIQUE9613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9613: 
	addq	%rcx, %rdx
 jmp .UNIQUE9614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9614: 
	movl	%eax, matrix_res2(,%rdx,4)
 jmp .UNIQUE9615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9615: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9616: 
	movq	16(%rax), %rax
 jmp .UNIQUE9617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9617: 
	movq	24(%rax), %rax
 jmp .UNIQUE9618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9618: 
	movl	$3, %esi
 jmp .UNIQUE9619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9619: 
	movq	%rax, %rdi
 jmp .UNIQUE9620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9620: 
	call	get_stack_int_array_element
 jmp .UNIQUE9621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9621: 
	leal	1(%rax), %edx
 jmp .UNIQUE9622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9622: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9623: 
	movq	16(%rax), %rax
 jmp .UNIQUE9624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9624: 
	movq	24(%rax), %rax
 jmp .UNIQUE9625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9625: 
	movl	$3, %esi
 jmp .UNIQUE9626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9626: 
	movq	%rax, %rdi
 jmp .UNIQUE9627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9627: 
	call	set_stack_int_array_element
.L717:
 jmp .UNIQUE9628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9628: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9629: 
	movq	16(%rax), %rax
 jmp .UNIQUE9630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9630: 
	movq	24(%rax), %rax
 jmp .UNIQUE9631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9631: 
	movl	$3, %esi
 jmp .UNIQUE9632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9632: 
	movq	%rax, %rdi
 jmp .UNIQUE9633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9633: 
	call	get_stack_int_array_element
 jmp .UNIQUE9634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9634: 
	movl	%eax, %ebx
 jmp .UNIQUE9635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9635: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9636: 
	movq	16(%rax), %rax
 jmp .UNIQUE9637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9637: 
	movq	24(%rax), %rax
 jmp .UNIQUE9638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9638: 
	movl	$0, %esi
 jmp .UNIQUE9639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9639: 
	movq	%rax, %rdi
 jmp .UNIQUE9640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9640: 
	call	get_stack_int_array_element
 jmp .UNIQUE9641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9641: 
	cmpl	%eax, %ebx
 jmp .UNIQUE9642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9642: 
	jl	.L720
 jmp .UNIQUE9643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9643: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9644: 
	movq	16(%rax), %rax
 jmp .UNIQUE9645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9645: 
	movq	24(%rax), %rax
 jmp .UNIQUE9646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9646: 
	movl	$2, %esi
 jmp .UNIQUE9647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9647: 
	movq	%rax, %rdi
 jmp .UNIQUE9648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9648: 
	call	get_stack_int_array_element
 jmp .UNIQUE9649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9649: 
	leal	1(%rax), %edx
 jmp .UNIQUE9650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9650: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9651: 
	movq	16(%rax), %rax
 jmp .UNIQUE9652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9652: 
	movq	24(%rax), %rax
 jmp .UNIQUE9653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9653: 
	movl	$2, %esi
 jmp .UNIQUE9654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9654: 
	movq	%rax, %rdi
 jmp .UNIQUE9655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9655: 
	call	set_stack_int_array_element
.L716:
 jmp .UNIQUE9656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9656: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9657: 
	movq	16(%rax), %rax
 jmp .UNIQUE9658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9658: 
	movq	24(%rax), %rax
 jmp .UNIQUE9659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9659: 
	movl	$2, %esi
 jmp .UNIQUE9660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9660: 
	movq	%rax, %rdi
 jmp .UNIQUE9661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9661: 
	call	get_stack_int_array_element
 jmp .UNIQUE9662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9662: 
	movl	%eax, %ebx
 jmp .UNIQUE9663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9663: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9664: 
	movq	16(%rax), %rax
 jmp .UNIQUE9665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9665: 
	movq	24(%rax), %rax
 jmp .UNIQUE9666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9666: 
	movl	$0, %esi
 jmp .UNIQUE9667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9667: 
	movq	%rax, %rdi
 jmp .UNIQUE9668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9668: 
	call	get_stack_int_array_element
 jmp .UNIQUE9669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9669: 
	cmpl	%eax, %ebx
 jmp .UNIQUE9670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9670: 
	jl	.L721
 jmp .UNIQUE9671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9671: 
	movl	$.LC133, %edi
 jmp .UNIQUE9672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9672: 
	call	puts
 jmp .UNIQUE9673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9673: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9674: 
	movq	16(%rax), %rax
 jmp .UNIQUE9675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9675: 
	movq	24(%rax), %rax
 jmp .UNIQUE9676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9676: 
	movl	$0, %edx
 jmp .UNIQUE9677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9677: 
	movl	$2, %esi
 jmp .UNIQUE9678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9678: 
	movq	%rax, %rdi
 jmp .UNIQUE9679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9679: 
	call	set_stack_int_array_element
 jmp .UNIQUE9680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9680: 
	jmp	.L722
.L723:
 jmp .UNIQUE9681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9681: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9682: 
	movq	16(%rax), %rax
 jmp .UNIQUE9683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9683: 
	movq	24(%rax), %rax
 jmp .UNIQUE9684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9684: 
	movl	$2, %esi
 jmp .UNIQUE9685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9685: 
	movq	%rax, %rdi
 jmp .UNIQUE9686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9686: 
	call	get_stack_int_array_element
 jmp .UNIQUE9687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9687: 
	movslq	%eax, %rdx
 jmp .UNIQUE9688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9688: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9689: 
	movq	16(%rax), %rax
 jmp .UNIQUE9690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9690: 
	movq	120(%rax), %rax
 jmp .UNIQUE9691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9691: 
	movq	(%rax), %rax
 jmp .UNIQUE9692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9692: 
	movq	%rdx, %rsi
 jmp .UNIQUE9693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9693: 
	movq	%rax, %rdi
 jmp .UNIQUE9694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9694: 
	call	get_stack_int_array_element
 jmp .UNIQUE9695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9695: 
	movl	%eax, %esi
 jmp .UNIQUE9696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9696: 
	movl	$.LC22, %edi
 jmp .UNIQUE9697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9697: 
	movl	$0, %eax
 jmp .UNIQUE9698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9698: 
	call	printf
 jmp .UNIQUE9699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9699: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9700: 
	movq	16(%rax), %rax
 jmp .UNIQUE9701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9701: 
	movq	24(%rax), %rax
 jmp .UNIQUE9702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9702: 
	movl	$2, %esi
 jmp .UNIQUE9703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9703: 
	movq	%rax, %rdi
 jmp .UNIQUE9704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9704: 
	call	get_stack_int_array_element
 jmp .UNIQUE9705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9705: 
	leal	1(%rax), %edx
 jmp .UNIQUE9706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9706: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9707: 
	movq	16(%rax), %rax
 jmp .UNIQUE9708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9708: 
	movq	24(%rax), %rax
 jmp .UNIQUE9709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9709: 
	movl	$2, %esi
 jmp .UNIQUE9710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9710: 
	movq	%rax, %rdi
 jmp .UNIQUE9711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9711: 
	call	set_stack_int_array_element
.L722:
 jmp .UNIQUE9712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9712: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9713: 
	movq	16(%rax), %rax
 jmp .UNIQUE9714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9714: 
	movq	24(%rax), %rax
 jmp .UNIQUE9715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9715: 
	movl	$2, %esi
 jmp .UNIQUE9716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9716: 
	movq	%rax, %rdi
 jmp .UNIQUE9717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9717: 
	call	get_stack_int_array_element
 jmp .UNIQUE9718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9718: 
	cmpl	$3, %eax
 jmp .UNIQUE9719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9719: 
	jle	.L723
 jmp .UNIQUE9720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9720: 
	movl	$10, %edi
 jmp .UNIQUE9721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9721: 
	call	putchar
 jmp .UNIQUE9722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9722: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9723: 
	movq	8(%rax), %rax
 jmp .UNIQUE9724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9724: 
	movq	%rax, %rdi
 jmp .UNIQUE9725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9725: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE9726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9726: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9727: 
	movq	%rax, %rdi
 jmp .UNIQUE9728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9728: 
	call	free_fun_params_that_point_to_stack
 jmp .UNIQUE9729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9729: 
	addq	$120, %rsp
 jmp .UNIQUE9730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9730: 
	popq	%rbx
 jmp .UNIQUE9731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9731: 
	popq	%r12
 jmp .UNIQUE9732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9732: 
	popq	%r13
 jmp .UNIQUE9733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9733: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE9734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9734: 
	ret
	.cfi_endproc
.LFE136:
	.size	user_friendly_secure_matrix_multiplication, .-user_friendly_secure_matrix_multiplication
	.globl	the_matrices_are_the_same
	.type	the_matrices_are_the_same, @function
the_matrices_are_the_same:
.LFB137:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE9735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9735: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE9736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9736: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE9737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9737: 
	movl	%edi, -20(%rbp)
 jmp .UNIQUE9738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9738: 
	movl	$1, -4(%rbp)
 jmp .UNIQUE9739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9739: 
	movl	$0, -12(%rbp)
 jmp .UNIQUE9740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9740: 
	jmp	.L725
.L732:
 jmp .UNIQUE9741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9741: 
	movl	$0, -8(%rbp)
 jmp .UNIQUE9742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9742: 
	jmp	.L726
.L729:
 jmp .UNIQUE9743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9743: 
	movl	-8(%rbp), %eax
 jmp .UNIQUE9744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9744: 
	cltq
 jmp .UNIQUE9745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9745: 
	movl	-12(%rbp), %edx
 jmp .UNIQUE9746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9746: 
	movslq	%edx, %rdx
 jmp .UNIQUE9747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9747: 
	imulq	$1001, %rdx, %rdx
 jmp .UNIQUE9748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9748: 
	addq	%rdx, %rax
 jmp .UNIQUE9749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9749: 
	movl	matrix_res1(,%rax,4), %edx
 jmp .UNIQUE9750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9750: 
	movl	-8(%rbp), %eax
 jmp .UNIQUE9751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9751: 
	cltq
 jmp .UNIQUE9752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9752: 
	movl	-12(%rbp), %ecx
 jmp .UNIQUE9753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9753: 
	movslq	%ecx, %rcx
 jmp .UNIQUE9754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9754: 
	imulq	$1001, %rcx, %rcx
 jmp .UNIQUE9755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9755: 
	addq	%rcx, %rax
 jmp .UNIQUE9756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9756: 
	movl	matrix_res2(,%rax,4), %eax
 jmp .UNIQUE9757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9757: 
	cmpl	%eax, %edx
 jmp .UNIQUE9758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9758: 
	je	.L727
 jmp .UNIQUE9759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9759: 
	movl	$0, -4(%rbp)
 jmp .UNIQUE9760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9760: 
	jmp	.L728
.L727:
 jmp .UNIQUE9761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9761: 
	addl	$1, -8(%rbp)
.L726:
 jmp .UNIQUE9762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9762: 
	movl	-8(%rbp), %eax
 jmp .UNIQUE9763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9763: 
	cmpl	-20(%rbp), %eax
 jmp .UNIQUE9764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9764: 
	jl	.L729
.L728:
 jmp .UNIQUE9765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9765: 
	cmpl	$0, -4(%rbp)
 jmp .UNIQUE9766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9766: 
	jne	.L730
 jmp .UNIQUE9767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9767: 
	jmp	.L731
.L730:
 jmp .UNIQUE9768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9768: 
	addl	$1, -12(%rbp)
.L725:
 jmp .UNIQUE9769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9769: 
	movl	-12(%rbp), %eax
 jmp .UNIQUE9770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9770: 
	cmpl	-20(%rbp), %eax
 jmp .UNIQUE9771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9771: 
	jl	.L732
.L731:
 jmp .UNIQUE9772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9772: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE9773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9773: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE9774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9774: 
	ret
	.cfi_endproc
.LFE137:
	.size	the_matrices_are_the_same, .-the_matrices_are_the_same
	.section	.rodata
.LC134:
	.string	"Initializing heap memory"
	.align 8
.LC135:
	.string	"bytes_to_allocate_on_start:%d\n"
.LC136:
	.string	"Init_mem, alloc+key insertion"
	.align 8
.LC137:
	.string	"If successful, total bytes allocated:%ld\n"
.LC138:
	.string	"Initializing stack memory"
	.align 8
.LC139:
	.string	"Stack bytes_to_allocate_on_start:%d\n"
	.align 8
.LC140:
	.string	"Init_stack_mem, alloc+key insertion"
	.text
	.globl	init_heap_and_stack_mem
	.type	init_heap_and_stack_mem, @function
init_heap_and_stack_mem:
.LFB138:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE9775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9775: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE9776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9776: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE9777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9777: 
	movl	$.LC134, %edi
 jmp .UNIQUE9778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9778: 
	call	puts
 jmp .UNIQUE9779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9779: 
	movl	$30000, %esi
 jmp .UNIQUE9780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9780: 
	movl	$.LC135, %edi
 jmp .UNIQUE9781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9781: 
	movl	$0, %eax
 jmp .UNIQUE9782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9782: 
	call	printf
 jmp .UNIQUE9783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9783: 
	movl	$.LC136, %edi
 jmp .UNIQUE9784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9784: 
	call	puts
 jmp .UNIQUE9785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9785: 
	movl	$0, %eax
 jmp .UNIQUE9786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9786: 
	call	init_mem
 jmp .UNIQUE9787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9787: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE9788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9788: 
	movq	%rax, %rsi
 jmp .UNIQUE9789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9789: 
	movl	$.LC137, %edi
 jmp .UNIQUE9790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9790: 
	movl	$0, %eax
 jmp .UNIQUE9791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9791: 
	call	printf
 jmp .UNIQUE9792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9792: 
	movl	$.LC138, %edi
 jmp .UNIQUE9793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9793: 
	call	puts
 jmp .UNIQUE9794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9794: 
	movl	$50000, %esi
 jmp .UNIQUE9795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9795: 
	movl	$.LC139, %edi
 jmp .UNIQUE9796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9796: 
	movl	$0, %eax
 jmp .UNIQUE9797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9797: 
	call	printf
 jmp .UNIQUE9798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9798: 
	movl	$.LC140, %edi
 jmp .UNIQUE9799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9799: 
	call	puts
 jmp .UNIQUE9800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9800: 
	movl	$0, %eax
 jmp .UNIQUE9801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9801: 
	call	init_stack_mem
 jmp .UNIQUE9802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9802: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE9803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9803: 
	movq	%rax, %rsi
 jmp .UNIQUE9804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9804: 
	movl	$.LC137, %edi
 jmp .UNIQUE9805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9805: 
	movl	$0, %eax
 jmp .UNIQUE9806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9806: 
	call	printf
 jmp .UNIQUE9807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9807: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE9808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9808: 
	ret
	.cfi_endproc
.LFE138:
	.size	init_heap_and_stack_mem, .-init_heap_and_stack_mem
	.section	.rodata
.LC141:
	.string	"Installing signal handler"
	.align 8
.LC142:
	.string	"Could not install signal handler"
.LC143:
	.string	"Signal handler installed"
	.text
	.globl	install_signal_handler
	.type	install_signal_handler, @function
install_signal_handler:
.LFB139:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE9809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9809: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE9810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9810: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE9811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9811: 
	movl	$.LC141, %edi
 jmp .UNIQUE9812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9812: 
	call	puts
 jmp .UNIQUE9813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9813: 
	movq	$verification_procedure, sa(%rip)
 jmp .UNIQUE9814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9814: 
	movl	$sa+8, %edi
 jmp .UNIQUE9815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9815: 
	call	sigemptyset
 jmp .UNIQUE9816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9816: 
	movl	$268435456, sa+136(%rip)
 jmp .UNIQUE9817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9817: 
	movl	$0, %edx
 jmp .UNIQUE9818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9818: 
	movl	$sa, %esi
 jmp .UNIQUE9819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9819: 
	movl	$10, %edi
 jmp .UNIQUE9820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9820: 
	call	sigaction
 jmp .UNIQUE9821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9821: 
	cmpl	$-1, %eax
 jmp .UNIQUE9822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9822: 
	jne	.L736
 jmp .UNIQUE9823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9823: 
	movl	$.LC142, %edi
 jmp .UNIQUE9824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9824: 
	call	perror
 jmp .UNIQUE9825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9825: 
	movl	$45, %edi
 jmp .UNIQUE9826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9826: 
	call	exit
.L736:
 jmp .UNIQUE9827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9827: 
	movl	$.LC143, %edi
 jmp .UNIQUE9828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9828: 
	call	puts
 jmp .UNIQUE9829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9829: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE9830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9830: 
	ret
	.cfi_endproc
.LFE139:
	.size	install_signal_handler, .-install_signal_handler
	.globl	free_heap_and_stack_memory
	.type	free_heap_and_stack_memory, @function
free_heap_and_stack_memory:
.LFB140:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE9831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9831: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE9832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9832: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE9833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9833: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE9834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9834: 
	movq	%rax, %rdi
 jmp .UNIQUE9835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9835: 
	call	free_secure_mem
 jmp .UNIQUE9836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9836: 
	movq	entire_stack_memory_chunk(%rip), %rax
 jmp .UNIQUE9837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9837: 
	movq	%rax, %rdi
 jmp .UNIQUE9838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9838: 
	call	free_secure_stack_mem
 jmp .UNIQUE9839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9839: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE9840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9840: 
	ret
	.cfi_endproc
.LFE140:
	.size	free_heap_and_stack_memory, .-free_heap_and_stack_memory
	.local	static_global_variable_for_testing
	.comm	static_global_variable_for_testing,4,4
	.globl	foo
	.type	foo, @function
foo:
.LFB141:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE9841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9841: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE9842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9842: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE9843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9843: 
	movl	%edi, -20(%rbp)
 jmp .UNIQUE9844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9844: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE9845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9845: 
	addl	$2, %eax
 jmp .UNIQUE9846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9846: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE9847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9847: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE9848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9848: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE9849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9849: 
	ret
	.cfi_endproc
.LFE141:
	.size	foo, .-foo
	.section	.rodata
.LC144:
	.string	"My pid=%ld\n"
.LC145:
	.string	"K=%d\n"
.LC146:
	.string	"n=%d\n"
.LC147:
	.string	"main is at %p\n"
	.align 8
.LC148:
	.string	"Calculating time for primes not very fast version. Normal primes not very fast version:"
	.align 8
.LC150:
	.string	"Normal primes not very fast version:%lg cpu seconds\n"
	.align 8
.LC151:
	.string	"Secure primes not very fast version:"
	.align 8
.LC152:
	.string	"Normal primes not very fast version time:%lg cpu seconds\n"
	.align 8
.LC153:
	.string	"Secure primes not very fast version time:%lg cpu seconds\n"
.LC154:
	.string	"Ratio: %lg times slowdown\n"
.LC155:
	.string	"Going to find keyshares."
	.text
	.globl	main
	.type	main, @function
main:
.LFB142:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE9850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9850: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE9851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9851: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE9852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9852: 
	addq	$-128, %rsp
 jmp .UNIQUE9853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9853: 
	movq	%fs:40, %rax
 jmp .UNIQUE9854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9854: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE9855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9855: 
	xorl	%eax, %eax
 jmp .UNIQUE9856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9856: 
	movl	$1, -100(%rbp)
 jmp .UNIQUE9857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9857: 
	movl	$2, -96(%rbp)
 jmp .UNIQUE9858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9858: 
	addl	$1, -96(%rbp)
 jmp .UNIQUE9859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9859: 
	addl	$1, -96(%rbp)
 jmp .UNIQUE9860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9860: 
	subl	$1, -96(%rbp)
 jmp .UNIQUE9861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9861: 
	movl	-96(%rbp), %eax
 jmp .UNIQUE9862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9862: 
	addl	%eax, -100(%rbp)
 jmp .UNIQUE9863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9863: 
	addl	$2, -100(%rbp)
 jmp .UNIQUE9864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9864: 
	addl	$1, -96(%rbp)
 jmp .UNIQUE9865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9865: 
	movl	$1, static_main_variable_for_testing.6297(%rip)
 jmp .UNIQUE9866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9866: 
	movl	$2, static_global_variable_for_testing(%rip)
 jmp .UNIQUE9867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9867: 
	movl	$0, %eax
 jmp .UNIQUE9868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9868: 
	call	init_heap_and_stack_mem
 jmp .UNIQUE9869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9869: 
	movl	$0, %eax
 jmp .UNIQUE9870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9870: 
	call	install_signal_handler
 jmp .UNIQUE9871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9871: 
	call	getpid
 jmp .UNIQUE9872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9872: 
	movl	%eax, -92(%rbp)
 jmp .UNIQUE9873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9873: 
	movl	-92(%rbp), %eax
 jmp .UNIQUE9874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9874: 
	cltq
 jmp .UNIQUE9875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9875: 
	movq	%rax, %rsi
 jmp .UNIQUE9876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9876: 
	movl	$.LC144, %edi
 jmp .UNIQUE9877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9877: 
	movl	$0, %eax
 jmp .UNIQUE9878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9878: 
	call	printf
 jmp .UNIQUE9879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9879: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE9880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9880: 
	movl	%eax, %esi
 jmp .UNIQUE9881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9881: 
	movl	$.LC145, %edi
 jmp .UNIQUE9882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9882: 
	movl	$0, %eax
 jmp .UNIQUE9883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9883: 
	call	printf
 jmp .UNIQUE9884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9884: 
	movl	$5, %edi
 jmp .UNIQUE9885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9885: 
	call	foo
 jmp .UNIQUE9886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9886: 
	movl	%eax, -88(%rbp)
 jmp .UNIQUE9887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9887: 
	movl	-88(%rbp), %eax
 jmp .UNIQUE9888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9888: 
	movl	%eax, %edi
 jmp .UNIQUE9889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9889: 
	call	foo2
 jmp .UNIQUE9890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9890: 
	movl	%eax, -88(%rbp)
 jmp .UNIQUE9891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9891: 
	movl	-88(%rbp), %eax
 jmp .UNIQUE9892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9892: 
	movl	%eax, %esi
 jmp .UNIQUE9893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9893: 
	movl	$.LC146, %edi
 jmp .UNIQUE9894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9894: 
	movl	$0, %eax
 jmp .UNIQUE9895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9895: 
	call	printf
 jmp .UNIQUE9896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9896: 
	movl	$main, %esi
 jmp .UNIQUE9897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9897: 
	movl	$.LC147, %edi
 jmp .UNIQUE9898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9898: 
	movl	$0, %eax
 jmp .UNIQUE9899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9899: 
	call	printf
 jmp .UNIQUE9900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9900: 
	movl	$1000, -84(%rbp)
 jmp .UNIQUE9901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9901: 
	movl	$10, %edi
 jmp .UNIQUE9902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9902: 
	call	putchar
 jmp .UNIQUE9903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9903: 
	movl	$.LC148, %edi
 jmp .UNIQUE9904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9904: 
	call	puts
 jmp .UNIQUE9905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9905: 
	call	clock
 jmp .UNIQUE9906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9906: 
	movq	%rax, -80(%rbp)
 jmp .UNIQUE9907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9907: 
	movl	-84(%rbp), %eax
 jmp .UNIQUE9908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9908: 
	movl	%eax, %edi
 jmp .UNIQUE9909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9909: 
	call	find_primes_up_to_a_number
 jmp .UNIQUE9910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9910: 
	call	clock
 jmp .UNIQUE9911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9911: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE9912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9912: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE9913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9913: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE9914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9914: 
	subq	%rax, %rdx
 jmp .UNIQUE9915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9915: 
	movq	%rdx, %rax
 jmp .UNIQUE9916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9916: 
	cvtsi2sdq	%rax, %xmm0
 jmp .UNIQUE9917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9917: 
	movsd	.LC149(%rip), %xmm1
 jmp .UNIQUE9918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9918: 
	divsd	%xmm1, %xmm0
 jmp .UNIQUE9919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9919: 
	movsd	%xmm0, -64(%rbp)
 jmp .UNIQUE9920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9920: 
	movl	$10, %edi
 jmp .UNIQUE9921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9921: 
	call	putchar
 jmp .UNIQUE9922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9922: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE9923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9923: 
	movq	%rax, -120(%rbp)
 jmp .UNIQUE9924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9924: 
	movsd	-120(%rbp), %xmm0
 jmp .UNIQUE9925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9925: 
	movl	$.LC150, %edi
 jmp .UNIQUE9926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9926: 
	movl	$1, %eax
 jmp .UNIQUE9927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9927: 
	call	printf
 jmp .UNIQUE9928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9928: 
	movl	$.LC151, %edi
 jmp .UNIQUE9929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9929: 
	call	puts
 jmp .UNIQUE9930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9930: 
	call	clock
 jmp .UNIQUE9931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9931: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE9932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9932: 
	movl	-84(%rbp), %eax
 jmp .UNIQUE9933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9933: 
	movl	%eax, %edi
 jmp .UNIQUE9934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9934: 
	call	secure_find_primes_up_to_a_number
 jmp .UNIQUE9935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9935: 
	call	clock
 jmp .UNIQUE9936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9936: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE9937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9937: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE9938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9938: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE9939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9939: 
	subq	%rax, %rdx
 jmp .UNIQUE9940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9940: 
	movq	%rdx, %rax
 jmp .UNIQUE9941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9941: 
	cvtsi2sdq	%rax, %xmm0
 jmp .UNIQUE9942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9942: 
	movsd	.LC149(%rip), %xmm1
 jmp .UNIQUE9943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9943: 
	divsd	%xmm1, %xmm0
 jmp .UNIQUE9944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9944: 
	movsd	%xmm0, -40(%rbp)
 jmp .UNIQUE9945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9945: 
	movl	$10, %edi
 jmp .UNIQUE9946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9946: 
	call	putchar
 jmp .UNIQUE9947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9947: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE9948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9948: 
	movq	%rax, -120(%rbp)
 jmp .UNIQUE9949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9949: 
	movsd	-120(%rbp), %xmm0
 jmp .UNIQUE9950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9950: 
	movl	$.LC152, %edi
 jmp .UNIQUE9951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9951: 
	movl	$1, %eax
 jmp .UNIQUE9952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9952: 
	call	printf
 jmp .UNIQUE9953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9953: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9954: 
	movq	%rax, -120(%rbp)
 jmp .UNIQUE9955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9955: 
	movsd	-120(%rbp), %xmm0
 jmp .UNIQUE9956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9956: 
	movl	$.LC153, %edi
 jmp .UNIQUE9957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9957: 
	movl	$1, %eax
 jmp .UNIQUE9958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9958: 
	call	printf
 jmp .UNIQUE9959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9959: 
	movl	$10, %edi
 jmp .UNIQUE9960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9960: 
	call	putchar
 jmp .UNIQUE9961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9961: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE9962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9962: 
	divsd	-64(%rbp), %xmm0
 jmp .UNIQUE9963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9963: 
	movl	$.LC154, %edi
 jmp .UNIQUE9964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9964: 
	movl	$1, %eax
 jmp .UNIQUE9965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9965: 
	call	printf
 jmp .UNIQUE9966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9966: 
	movl	$10, %edi
 jmp .UNIQUE9967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9967: 
	call	putchar
 jmp .UNIQUE9968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9968: 
	movl	$.LC155, %edi
 jmp .UNIQUE9969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9969: 
	call	puts
 jmp .UNIQUE9970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9970: 
	movl	$0, %eax
 jmp .UNIQUE9971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9971: 
	call	find_keyshares
 jmp .UNIQUE9972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9972: 
	movl	$0, %eax
 jmp .UNIQUE9973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9973: 
	call	free_heap_and_stack_memory
 jmp .UNIQUE9974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9974: 
	movl	$0, %eax
 jmp .UNIQUE9975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9975: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE9976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9976: 
	xorq	%fs:40, %rcx
 jmp .UNIQUE9977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9977: 
	je	.L742
 jmp .UNIQUE9978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9978: 
	call	__stack_chk_fail
.L742:
 jmp .UNIQUE9979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9979: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE9980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9980: 
	ret
	.cfi_endproc
.LFE142:
	.size	main, .-main
	.globl	foo2
	.type	foo2, @function
foo2:
.LFB143:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE9981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9981: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE9982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9982: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE9983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9983: 
	movl	%edi, -20(%rbp)
 jmp .UNIQUE9984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9984: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE9985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9985: 
	addl	$3, %eax
 jmp .UNIQUE9986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9986: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE9987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9987: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE9988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9988: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE9989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9989: 
	ret
	.cfi_endproc
.LFE143:
	.size	foo2, .-foo2
	.section	.rodata
	.type	__func__.5001, @object
	.size	__func__.5001, 11
__func__.5001:
	.string	"alloc_list"
	.align 16
	.type	__func__.5010, @object
	.size	__func__.5010, 17
__func__.5010:
	.string	"add_node_to_list"
	.type	__func__.5054, @object
	.size	__func__.5054, 13
__func__.5054:
	.string	"allocate_mem"
	.align 16
	.type	__func__.5320, @object
	.size	__func__.5320, 16
__func__.5320:
	.string	"check_and_merge"
	.align 16
	.type	__func__.5336, @object
	.size	__func__.5336, 20
__func__.5336:
	.string	"managed_secure_free"
	.type	__func__.5387, @object
	.size	__func__.5387, 9
__func__.5387:
	.string	"mem_test"
	.align 32
	.type	__func__.5455, @object
	.size	__func__.5455, 32
__func__.5455:
	.string	"adding_heap_arrays_time_measure"
	.align 32
	.type	__func__.5470, @object
	.size	__func__.5470, 34
__func__.5470:
	.string	"multiple_simple_mallocs_and_frees"
	.align 32
	.type	__func__.5485, @object
	.size	__func__.5485, 34
__func__.5485:
	.string	"multiple_secure_mallocs_and_frees"
	.align 16
	.type	__func__.5542, @object
	.size	__func__.5542, 19
__func__.5542:
	.string	"allocate_stack_mem"
	.align 16
	.type	__func__.5653, @object
	.size	__func__.5653, 21
__func__.5653:
	.string	"init_function_params"
	.align 32
	.type	__func__.5691, @object
	.size	__func__.5691, 49
__func__.5691:
	.string	"init_function_params_with_uninitialised_elements"
	.align 32
	.type	__func__.5734, @object
	.size	__func__.5734, 33
__func__.5734:
	.string	"put_fun_params_into_secure_stack"
	.align 32
	.type	__func__.5988, @object
	.size	__func__.5988, 36
__func__.5988:
	.string	"tower_of_Hanoi_init_secure_template"
	.align 16
	.type	__func__.5994, @object
	.size	__func__.5994, 22
__func__.5994:
	.string	"stack_fun_params_test"
	.align 32
	.type	__func__.6114, @object
	.size	__func__.6114, 34
__func__.6114:
	.string	"secure_find_primes_up_to_a_number"
	.align 16
	.type	__func__.6132, @object
	.size	__func__.6132, 27
__func__.6132:
	.string	"find_primes_up_to_a_number"
	.align 16
	.type	__func__.6150, @object
	.size	__func__.6150, 29
__func__.6150:
	.string	"simple_sieve_of_Eratosthenes"
	.align 16
	.type	__func__.6167, @object
	.size	__func__.6167, 29
__func__.6167:
	.string	"secure_sieve_of_Eratosthenes"
	.align 32
	.type	__func__.6184, @object
	.size	__func__.6184, 43
__func__.6184:
	.string	"user_friendly_secure_sieve_of_Eratosthenes"
	.local	static_main_variable_for_testing.6297
	.comm	static_main_variable_for_testing.6297,4,4
	.align 8
.LC45:
	.long	0
	.long	1072693248
	.align 8
.LC66:
	.long	0
	.long	1071644672
	.align 8
.LC73:
	.long	0
	.long	1074790400
	.align 8
.LC149:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
