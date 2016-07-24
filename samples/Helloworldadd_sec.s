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
	movq	$204800, -56(%rbp)
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
	movl	$__func__.5333, %esi
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
	movl	$__func__.5349, %esi
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
	movl	$__func__.5400, %esi
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
	movl	$__func__.5400, %esi
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
	movl	$__func__.5400, %esi
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
	movl	$__func__.5400, %esi
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
	movl	$__func__.5400, %esi
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
	movl	$__func__.5400, %esi
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
	movl	$__func__.5400, %esi
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
	movl	$__func__.5400, %esi
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
	movl	$__func__.5400, %esi
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
	movl	$__func__.5400, %esi
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
	movl	$__func__.5400, %esi
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
	movl	$__func__.5400, %esi
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
	movl	$__func__.5400, %esi
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
	movl	$__func__.5468, %esi
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
	movl	$__func__.5468, %esi
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
	movl	$__func__.5468, %esi
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
	movl	$__func__.5468, %esi
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
	pushq	%rbx
 jmp .UNIQUE2999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2999: 
	subq	$56, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE3000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3000: 
	movl	%edi, -52(%rbp)
 jmp .UNIQUE3001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3001: 
	movl	%esi, -56(%rbp)
 jmp .UNIQUE3002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3002: 
	movl	$0, %eax
 jmp .UNIQUE3003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3003: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE3004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3004: 
	movl	$0, %edi
 jmp .UNIQUE3005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3005: 
	call	time
 jmp .UNIQUE3006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3006: 
	movl	%eax, %edi
 jmp .UNIQUE3007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3007: 
	call	srand
 jmp .UNIQUE3008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3008: 
	movl	-56(%rbp), %eax
 jmp .UNIQUE3009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3009: 
	cltq
 jmp .UNIQUE3010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3010: 
	salq	$3, %rax
 jmp .UNIQUE3011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3011: 
	movl	$489, %edx
 jmp .UNIQUE3012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3012: 
	movl	$__func__.5483, %esi
 jmp .UNIQUE3013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3013: 
	movq	%rax, %rdi
 jmp .UNIQUE3014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3014: 
	call	error_checking_malloc
 jmp .UNIQUE3015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3015: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE3016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3016: 
	movl	$0, -40(%rbp)
 jmp .UNIQUE3017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3017: 
	jmp	.L235
.L236:
 jmp .UNIQUE3018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3018: 
	movl	-40(%rbp), %eax
 jmp .UNIQUE3019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3019: 
	cltq
 jmp .UNIQUE3020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3020: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3021: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3022: 
	addq	%rdx, %rax
 jmp .UNIQUE3023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3023: 
	movq	$0, (%rax)
 jmp .UNIQUE3024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3024: 
	addl	$1, -40(%rbp)
.L235:
 jmp .UNIQUE3025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3025: 
	movl	-40(%rbp), %eax
 jmp .UNIQUE3026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3026: 
	cmpl	-56(%rbp), %eax
 jmp .UNIQUE3027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3027: 
	jl	.L236
 jmp .UNIQUE3028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3028: 
	movl	$0, -40(%rbp)
 jmp .UNIQUE3029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3029: 
	jmp	.L237
.L240:
 jmp .UNIQUE3030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3030: 
	call	rand
 jmp .UNIQUE3031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3031: 
	cltd
 jmp .UNIQUE3032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3032: 
	idivl	-56(%rbp)
 jmp .UNIQUE3033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3033: 
	movl	%edx, -36(%rbp)
 jmp .UNIQUE3034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3034: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE3035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3035: 
	cltq
 jmp .UNIQUE3036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3036: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3037: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3038: 
	addq	%rdx, %rax
 jmp .UNIQUE3039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3039: 
	movq	(%rax), %rax
 jmp .UNIQUE3040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3040: 
	testq	%rax, %rax
 jmp .UNIQUE3041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3041: 
	jne	.L238
 jmp .UNIQUE3042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3042: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE3043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3043: 
	cltq
 jmp .UNIQUE3044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3044: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3045: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3046: 
	leaq	(%rdx,%rax), %rbx
 jmp .UNIQUE3047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3047: 
	movl	$501, %edx
 jmp .UNIQUE3048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3048: 
	movl	$__func__.5483, %esi
 jmp .UNIQUE3049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3049: 
	movl	$8, %edi
 jmp .UNIQUE3050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3050: 
	call	error_checking_malloc
 jmp .UNIQUE3051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3051: 
	movq	%rax, (%rbx)
 jmp .UNIQUE3052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3052: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE3053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3053: 
	cltq
 jmp .UNIQUE3054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3054: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3055: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3056: 
	addq	%rdx, %rax
 jmp .UNIQUE3057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3057: 
	movq	(%rax), %rax
 jmp .UNIQUE3058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3058: 
	cvtsi2sd	-36(%rbp), %xmm0
 jmp .UNIQUE3059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3059: 
	movsd	%xmm0, (%rax)
 jmp .UNIQUE3060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3060: 
	jmp	.L239
.L238:
 jmp .UNIQUE3061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3061: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE3062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3062: 
	cltq
 jmp .UNIQUE3063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3063: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3064: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3065: 
	addq	%rdx, %rax
 jmp .UNIQUE3066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3066: 
	movq	(%rax), %rax
 jmp .UNIQUE3067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3067: 
	movsd	(%rax), %xmm0
 jmp .UNIQUE3068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3068: 
	movsd	-32(%rbp), %xmm1
 jmp .UNIQUE3069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3069: 
	addsd	%xmm1, %xmm0
 jmp .UNIQUE3070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3070: 
	movsd	%xmm0, -32(%rbp)
 jmp .UNIQUE3071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3071: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE3072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3072: 
	cltq
 jmp .UNIQUE3073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3073: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3074: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3075: 
	addq	%rdx, %rax
 jmp .UNIQUE3076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3076: 
	movq	(%rax), %rax
 jmp .UNIQUE3077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3077: 
	movq	%rax, %rdi
 jmp .UNIQUE3078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3078: 
	call	free
 jmp .UNIQUE3079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3079: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE3080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3080: 
	cltq
 jmp .UNIQUE3081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3081: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3082: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3083: 
	addq	%rdx, %rax
 jmp .UNIQUE3084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3084: 
	movq	$0, (%rax)
.L239:
 jmp .UNIQUE3085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3085: 
	addl	$1, -40(%rbp)
.L237:
 jmp .UNIQUE3086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3086: 
	movl	-40(%rbp), %eax
 jmp .UNIQUE3087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3087: 
	cmpl	-52(%rbp), %eax
 jmp .UNIQUE3088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3088: 
	jl	.L240
 jmp .UNIQUE3089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3089: 
	movl	-56(%rbp), %eax
 jmp .UNIQUE3090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3090: 
	subl	$1, %eax
 jmp .UNIQUE3091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3091: 
	cvtsi2sd	%eax, %xmm0
 jmp .UNIQUE3092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3092: 
	movsd	.LC73(%rip), %xmm1
 jmp .UNIQUE3093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3093: 
	divsd	%xmm1, %xmm0
 jmp .UNIQUE3094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3094: 
	movl	$.LC74, %edi
 jmp .UNIQUE3095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3095: 
	movl	$1, %eax
 jmp .UNIQUE3096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3096: 
	call	printf
 jmp .UNIQUE3097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3097: 
	cvtsi2sd	-52(%rbp), %xmm0
 jmp .UNIQUE3098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3098: 
	movsd	-32(%rbp), %xmm1
 jmp .UNIQUE3099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3099: 
	divsd	%xmm0, %xmm1
 jmp .UNIQUE3100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3100: 
	movapd	%xmm1, %xmm0
 jmp .UNIQUE3101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3101: 
	movl	$.LC75, %edi
 jmp .UNIQUE3102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3102: 
	movl	$1, %eax
 jmp .UNIQUE3103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3103: 
	call	printf
 jmp .UNIQUE3104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3104: 
	addq	$56, %rsp
 jmp .UNIQUE3105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3105: 
	popq	%rbx
 jmp .UNIQUE3106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3106: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3107: 
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
 jmp .UNIQUE3108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3108: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3109: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3110: 
	subq	$48, %rsp
 jmp .UNIQUE3111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3111: 
	movl	%edi, -36(%rbp)
 jmp .UNIQUE3112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3112: 
	movl	%esi, -40(%rbp)
 jmp .UNIQUE3113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3113: 
	movl	$0, %eax
 jmp .UNIQUE3114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3114: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE3115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3115: 
	movl	$0, %edi
 jmp .UNIQUE3116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3116: 
	call	time
 jmp .UNIQUE3117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3117: 
	movl	%eax, %edi
 jmp .UNIQUE3118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3118: 
	call	srand
 jmp .UNIQUE3119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3119: 
	movl	-40(%rbp), %eax
 jmp .UNIQUE3120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3120: 
	cltq
 jmp .UNIQUE3121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3121: 
	salq	$3, %rax
 jmp .UNIQUE3122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3122: 
	movl	$528, %edx
 jmp .UNIQUE3123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3123: 
	movl	$__func__.5498, %esi
 jmp .UNIQUE3124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3124: 
	movq	%rax, %rdi
 jmp .UNIQUE3125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3125: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE3126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3126: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3127: 
	movl	$0, -24(%rbp)
 jmp .UNIQUE3128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3128: 
	jmp	.L242
.L243:
 jmp .UNIQUE3129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3129: 
	movl	-24(%rbp), %eax
 jmp .UNIQUE3130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3130: 
	movslq	%eax, %rcx
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
	movl	$0, %edx
 jmp .UNIQUE3133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3133: 
	movq	%rcx, %rsi
 jmp .UNIQUE3134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3134: 
	movq	%rax, %rdi
 jmp .UNIQUE3135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3135: 
	call	set_pointer_array_element
 jmp .UNIQUE3136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3136: 
	addl	$1, -24(%rbp)
.L242:
 jmp .UNIQUE3137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3137: 
	movl	-24(%rbp), %eax
 jmp .UNIQUE3138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3138: 
	cmpl	-40(%rbp), %eax
 jmp .UNIQUE3139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3139: 
	jl	.L243
 jmp .UNIQUE3140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3140: 
	movl	$0, -24(%rbp)
 jmp .UNIQUE3141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3141: 
	jmp	.L244
.L247:
 jmp .UNIQUE3142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3142: 
	call	rand
 jmp .UNIQUE3143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3143: 
	cltd
 jmp .UNIQUE3144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3144: 
	idivl	-40(%rbp)
 jmp .UNIQUE3145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3145: 
	movl	%edx, -20(%rbp)
 jmp .UNIQUE3146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3146: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE3147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3147: 
	movslq	%eax, %rdx
 jmp .UNIQUE3148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3148: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3149: 
	movq	%rdx, %rsi
 jmp .UNIQUE3150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3150: 
	movq	%rax, %rdi
 jmp .UNIQUE3151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3151: 
	call	get_pointer_array_element
 jmp .UNIQUE3152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3152: 
	testq	%rax, %rax
 jmp .UNIQUE3153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3153: 
	jne	.L245
 jmp .UNIQUE3154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3154: 
	movl	$540, %edx
 jmp .UNIQUE3155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3155: 
	movl	$__func__.5498, %esi
 jmp .UNIQUE3156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3156: 
	movl	$8, %edi
 jmp .UNIQUE3157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3157: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE3158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3158: 
	movq	%rax, %rdx
 jmp .UNIQUE3159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3159: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE3160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3160: 
	movslq	%eax, %rcx
 jmp .UNIQUE3161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3161: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3162: 
	movq	%rcx, %rsi
 jmp .UNIQUE3163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3163: 
	movq	%rax, %rdi
 jmp .UNIQUE3164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3164: 
	call	set_pointer_array_element
 jmp .UNIQUE3165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3165: 
	cvtsi2sd	-20(%rbp), %xmm2
 jmp .UNIQUE3166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3166: 
	movsd	%xmm2, -48(%rbp)
 jmp .UNIQUE3167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3167: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE3168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3168: 
	movslq	%eax, %rdx
 jmp .UNIQUE3169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3169: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3170: 
	movq	%rdx, %rsi
 jmp .UNIQUE3171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3171: 
	movq	%rax, %rdi
 jmp .UNIQUE3172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3172: 
	call	get_pointer_array_element
 jmp .UNIQUE3173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3173: 
	movsd	-48(%rbp), %xmm0
 jmp .UNIQUE3174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3174: 
	movl	$0, %esi
 jmp .UNIQUE3175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3175: 
	movq	%rax, %rdi
 jmp .UNIQUE3176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3176: 
	call	set_double_array_element
 jmp .UNIQUE3177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3177: 
	jmp	.L246
.L245:
 jmp .UNIQUE3178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3178: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE3179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3179: 
	movslq	%eax, %rdx
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
	movq	%rdx, %rsi
 jmp .UNIQUE3182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3182: 
	movq	%rax, %rdi
 jmp .UNIQUE3183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3183: 
	call	get_pointer_array_element
 jmp .UNIQUE3184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3184: 
	movl	$0, %esi
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
	call	get_double_array_element
 jmp .UNIQUE3187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3187: 
	movsd	-16(%rbp), %xmm1
 jmp .UNIQUE3188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3188: 
	addsd	%xmm1, %xmm0
 jmp .UNIQUE3189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3189: 
	movsd	%xmm0, -16(%rbp)
 jmp .UNIQUE3190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3190: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE3191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3191: 
	movslq	%eax, %rdx
 jmp .UNIQUE3192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3192: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3193: 
	movq	%rdx, %rsi
 jmp .UNIQUE3194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3194: 
	movq	%rax, %rdi
 jmp .UNIQUE3195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3195: 
	call	get_pointer_array_element
 jmp .UNIQUE3196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3196: 
	movq	%rax, %rdi
 jmp .UNIQUE3197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3197: 
	call	managed_secure_free
 jmp .UNIQUE3198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3198: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE3199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3199: 
	movslq	%eax, %rcx
 jmp .UNIQUE3200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3200: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3201: 
	movl	$0, %edx
 jmp .UNIQUE3202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3202: 
	movq	%rcx, %rsi
 jmp .UNIQUE3203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3203: 
	movq	%rax, %rdi
 jmp .UNIQUE3204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3204: 
	call	set_pointer_array_element
.L246:
 jmp .UNIQUE3205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3205: 
	addl	$1, -24(%rbp)
.L244:
 jmp .UNIQUE3206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3206: 
	movl	-24(%rbp), %eax
 jmp .UNIQUE3207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3207: 
	cmpl	-36(%rbp), %eax
 jmp .UNIQUE3208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3208: 
	jl	.L247
 jmp .UNIQUE3209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3209: 
	movl	-40(%rbp), %eax
 jmp .UNIQUE3210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3210: 
	subl	$1, %eax
 jmp .UNIQUE3211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3211: 
	cvtsi2sd	%eax, %xmm0
 jmp .UNIQUE3212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3212: 
	movsd	.LC73(%rip), %xmm1
 jmp .UNIQUE3213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3213: 
	divsd	%xmm1, %xmm0
 jmp .UNIQUE3214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3214: 
	movl	$.LC74, %edi
 jmp .UNIQUE3215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3215: 
	movl	$1, %eax
 jmp .UNIQUE3216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3216: 
	call	printf
 jmp .UNIQUE3217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3217: 
	cvtsi2sd	-36(%rbp), %xmm0
 jmp .UNIQUE3218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3218: 
	movsd	-16(%rbp), %xmm1
 jmp .UNIQUE3219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3219: 
	divsd	%xmm0, %xmm1
 jmp .UNIQUE3220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3220: 
	movapd	%xmm1, %xmm0
 jmp .UNIQUE3221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3221: 
	movl	$.LC75, %edi
 jmp .UNIQUE3222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3222: 
	movl	$1, %eax
 jmp .UNIQUE3223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3223: 
	call	printf
 jmp .UNIQUE3224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3224: 
	leave
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
	movq	%rdi, -40(%rbp)
 jmp .UNIQUE3229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3229: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3230: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE3231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3231: 
	movq	$5, -16(%rbp)
 jmp .UNIQUE3232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3232: 
	movq	$4, -8(%rbp)
 jmp .UNIQUE3233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3233: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3234: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE3235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3235: 
	addq	%rdx, %rax
 jmp .UNIQUE3236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3236: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3237: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE3238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3238: 
	leaq	(%rdx,%rcx), %rsi
 jmp .UNIQUE3239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3239: 
	cqto
 jmp .UNIQUE3240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3240: 
	idivq	%rsi
 jmp .UNIQUE3241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3241: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3242: 
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
 jmp .UNIQUE3243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3243: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3244: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3245: 
	movl	$8, %eax
 jmp .UNIQUE3246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3246: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3247: 
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
 jmp .UNIQUE3248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3248: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3249: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3250: 
	subq	$16, %rsp
 jmp .UNIQUE3251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3251: 
	movq	stack_keyshare_input_file(%rip), %rax
 jmp .UNIQUE3252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3252: 
	movq	%rax, %rdi
 jmp .UNIQUE3253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3253: 
	call	feof
 jmp .UNIQUE3254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3254: 
	testl	%eax, %eax
 jmp .UNIQUE3255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3255: 
	je	.L253
 jmp .UNIQUE3256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3256: 
	movl	$.LC76, %edi
 jmp .UNIQUE3257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3257: 
	call	perror
 jmp .UNIQUE3258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3258: 
	movl	$45, %edi
 jmp .UNIQUE3259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3259: 
	call	exit
.L253:
 jmp .UNIQUE3260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3260: 
	movq	stack_keyshare_input_file(%rip), %rdx
 jmp .UNIQUE3261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3261: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE3262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3262: 
	movq	%rdx, %rcx
 jmp .UNIQUE3263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3263: 
	movl	$1, %edx
 jmp .UNIQUE3264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3264: 
	movl	$1, %esi
 jmp .UNIQUE3265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3265: 
	movq	%rax, %rdi
 jmp .UNIQUE3266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3266: 
	call	fread
 jmp .UNIQUE3267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3267: 
	cmpq	$1, %rax
 jmp .UNIQUE3268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3268: 
	je	.L254
 jmp .UNIQUE3269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3269: 
	movl	$.LC8, %edi
 jmp .UNIQUE3270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3270: 
	call	perror
 jmp .UNIQUE3271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3271: 
	movl	$47, %edi
 jmp .UNIQUE3272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3272: 
	call	exit
.L254:
 jmp .UNIQUE3273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3273: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE3274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3274: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3275: 
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
 jmp .UNIQUE3276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3276: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3277: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3278: 
	pushq	%rbx
 jmp .UNIQUE3279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3279: 
	subq	$56, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE3280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3280: 
	movq	$1024, -56(%rbp)
 jmp .UNIQUE3281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3281: 
	movq	$5, -48(%rbp)
 jmp .UNIQUE3282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3282: 
	movq	$4, -40(%rbp)
 jmp .UNIQUE3283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3283: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3284: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE3285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3285: 
	addq	%rdx, %rax
 jmp .UNIQUE3286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3286: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE3287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3287: 
	movq	-48(%rbp), %rcx
 jmp .UNIQUE3288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3288: 
	leaq	(%rdx,%rcx), %rbx
 jmp .UNIQUE3289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3289: 
	cqto
 jmp .UNIQUE3290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3290: 
	idivq	%rbx
 jmp .UNIQUE3291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3291: 
	movq	%rax, -32(%rbp)
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
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE3300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3300: 
	jne	.L257
 jmp .UNIQUE3301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3301: 
	movl	$.LC77, %edi
 jmp .UNIQUE3302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3302: 
	call	puts
 jmp .UNIQUE3303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3303: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3304: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE3305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3305: 
	jmp	.L258
.L257:
 jmp .UNIQUE3306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3306: 
	movl	$.LC78, %edi
 jmp .UNIQUE3307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3307: 
	call	puts
 jmp .UNIQUE3308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3308: 
	addq	$1, -32(%rbp)
 jmp .UNIQUE3309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3309: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3310: 
	imulq	-40(%rbp), %rax
 jmp .UNIQUE3311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3311: 
	movq	%rax, %rdx
 jmp .UNIQUE3312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3312: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3313: 
	subq	$1, %rax
 jmp .UNIQUE3314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3314: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE3315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3315: 
	addq	%rdx, %rax
 jmp .UNIQUE3316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3316: 
	movq	%rax, -64(%rbp)
.L258:
 jmp .UNIQUE3317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3317: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE3318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3318: 
	movl	$143, %edx
 jmp .UNIQUE3319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3319: 
	movl	$__func__.5555, %esi
 jmp .UNIQUE3320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3320: 
	movq	%rax, %rdi
 jmp .UNIQUE3321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3321: 
	call	error_checking_malloc
 jmp .UNIQUE3322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3322: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE3323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3323: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE3324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3324: 
	movq	%rax, total_stack_bytes_allocated(%rip)
 jmp .UNIQUE3325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3325: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3326: 
	addq	$56, %rsp
 jmp .UNIQUE3327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3327: 
	popq	%rbx
 jmp .UNIQUE3328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3328: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3329: 
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
 jmp .UNIQUE3330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3330: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3331: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3332: 
	subq	$16, %rsp
 jmp .UNIQUE3333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3333: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE3334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3334: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3335: 
	movq	%rax, %rdi
 jmp .UNIQUE3336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3336: 
	call	free
 jmp .UNIQUE3337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3337: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3338: 
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
 jmp .UNIQUE3339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3339: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3340: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3341: 
	pushq	%rbx
 jmp .UNIQUE3342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3342: 
	subq	$72, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE3343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3343: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE3344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3344: 
	movl	$0, -52(%rbp)
 jmp .UNIQUE3345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3345: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE3346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3346: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE3347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3347: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE3348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3348: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE3349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3349: 
	jmp	.L262
.L267:
 jmp .UNIQUE3350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3350: 
	cmpl	$0, -52(%rbp)
 jmp .UNIQUE3351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3351: 
	je	.L263
 jmp .UNIQUE3352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3352: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE3353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3353: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3354: 
	leaq	(%rdx,%rax), %rbx
 jmp .UNIQUE3355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3355: 
	movl	$0, %eax
 jmp .UNIQUE3356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3356: 
	call	get_next_stack_keyshare
 jmp .UNIQUE3357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3357: 
	movb	%al, (%rbx)
 jmp .UNIQUE3358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3358: 
	addq	$1, -32(%rbp)
 jmp .UNIQUE3359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3359: 
	addq	$1, -48(%rbp)
 jmp .UNIQUE3360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3360: 
	jmp	.L264
.L263:
 jmp .UNIQUE3361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3361: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE3362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3362: 
	jmp	.L265
.L266:
 jmp .UNIQUE3363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3363: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3364: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE3365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3365: 
	addq	%rdx, %rax
 jmp .UNIQUE3366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3366: 
	movq	%rax, %rdx
 jmp .UNIQUE3367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3367: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3368: 
	addq	%rdx, %rax
 jmp .UNIQUE3369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3369: 
	movb	$0, (%rax)
 jmp .UNIQUE3370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3370: 
	addq	$1, -40(%rbp)
.L265:
 jmp .UNIQUE3371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3371: 
	cmpq	$3, -40(%rbp)
 jmp .UNIQUE3372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3372: 
	jle	.L266
 jmp .UNIQUE3373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3373: 
	addq	$4, -48(%rbp)
 jmp .UNIQUE3374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3374: 
	movl	$1, -52(%rbp)
.L264:
 jmp .UNIQUE3375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3375: 
	cmpq	$5, -32(%rbp)
 jmp .UNIQUE3376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3376: 
	jne	.L262
 jmp .UNIQUE3377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3377: 
	movl	$0, -52(%rbp)
 jmp .UNIQUE3378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3378: 
	movq	$0, -32(%rbp)
.L262:
 jmp .UNIQUE3379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3379: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE3380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3380: 
	cmpq	%rax, -48(%rbp)
 jmp .UNIQUE3381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3381: 
	jl	.L267
 jmp .UNIQUE3382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3382: 
	addq	$72, %rsp
 jmp .UNIQUE3383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3383: 
	popq	%rbx
 jmp .UNIQUE3384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3384: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3385: 
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
 jmp .UNIQUE3386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3386: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3387: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3388: 
	subq	$16, %rsp
 jmp .UNIQUE3389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3389: 
	movl	$0, %edi
 jmp .UNIQUE3390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3390: 
	call	time
 jmp .UNIQUE3391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3391: 
	movl	%eax, %edi
 jmp .UNIQUE3392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3392: 
	call	srand
 jmp .UNIQUE3393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3393: 
	movl	$0, %eax
 jmp .UNIQUE3394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3394: 
	call	allocate_stack_mem
 jmp .UNIQUE3395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3395: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3396: 
	movl	$.LC11, %esi
 jmp .UNIQUE3397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3397: 
	movl	$.LC79, %edi
 jmp .UNIQUE3398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3398: 
	call	fopen
 jmp .UNIQUE3399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3399: 
	movq	%rax, stack_keyshare_input_file(%rip)
 jmp .UNIQUE3400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3400: 
	movq	stack_keyshare_input_file(%rip), %rax
 jmp .UNIQUE3401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3401: 
	testq	%rax, %rax
 jmp .UNIQUE3402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3402: 
	jne	.L269
 jmp .UNIQUE3403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3403: 
	movl	$.LC80, %edi
 jmp .UNIQUE3404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3404: 
	call	perror
 jmp .UNIQUE3405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3405: 
	movl	$46, %edi
 jmp .UNIQUE3406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3406: 
	call	exit
.L269:
 jmp .UNIQUE3407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3407: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3408: 
	movq	%rax, %rdi
 jmp .UNIQUE3409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3409: 
	call	insert_keys_into_stack_mem
 jmp .UNIQUE3410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3410: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3411: 
	movq	%rax, entire_stack_memory_chunk(%rip)
 jmp .UNIQUE3412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3412: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3413: 
	movq	%rax, last_unused_stack_memory(%rip)
 jmp .UNIQUE3414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3414: 
	movq	stack_keyshare_input_file(%rip), %rax
 jmp .UNIQUE3415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3415: 
	movq	%rax, %rdi
 jmp .UNIQUE3416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3416: 
	call	fclose
 jmp .UNIQUE3417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3417: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3418: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3419: 
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
 jmp .UNIQUE3420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3420: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3421: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3422: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE3423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3423: 
	movq	%rsi, -64(%rbp)
 jmp .UNIQUE3424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3424: 
	movq	%rdx, -72(%rbp)
 jmp .UNIQUE3425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3425: 
	movq	$0, -24(%rbp)
 jmp .UNIQUE3426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3426: 
	movl	$0, -44(%rbp)
 jmp .UNIQUE3427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3427: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE3428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3428: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE3429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3429: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3430: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE3431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3431: 
	jmp	.L272
.L277:
 jmp .UNIQUE3432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3432: 
	cmpl	$0, -44(%rbp)
 jmp .UNIQUE3433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3433: 
	je	.L273
 jmp .UNIQUE3434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3434: 
	addq	$5, -40(%rbp)
 jmp .UNIQUE3435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3435: 
	movl	$0, -44(%rbp)
 jmp .UNIQUE3436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3436: 
	jmp	.L272
.L273:
 jmp .UNIQUE3437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3437: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE3438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3438: 
	jmp	.L274
.L276:
 jmp .UNIQUE3439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3439: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3440: 
	movq	-40(%rbp), %rdx
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
	movq	%rax, %rdx
 jmp .UNIQUE3443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3443: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3444: 
	addq	%rax, %rdx
 jmp .UNIQUE3445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3445: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3446: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE3447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3447: 
	addq	%rcx, %rax
 jmp .UNIQUE3448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3448: 
	movq	%rax, %rcx
 jmp .UNIQUE3449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3449: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE3450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3450: 
	addq	%rcx, %rax
 jmp .UNIQUE3451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3451: 
	movzbl	(%rax), %eax
 jmp .UNIQUE3452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3452: 
	movb	%al, (%rdx)
 jmp .UNIQUE3453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3453: 
	addq	$1, -32(%rbp)
.L274:
 jmp .UNIQUE3454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3454: 
	cmpq	$3, -32(%rbp)
 jmp .UNIQUE3455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3455: 
	jg	.L275
 jmp .UNIQUE3456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3456: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3457: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE3458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3458: 
	addq	%rdx, %rax
 jmp .UNIQUE3459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3459: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE3460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3460: 
	jl	.L276
.L275:
 jmp .UNIQUE3461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3461: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3462: 
	addq	%rax, -16(%rbp)
 jmp .UNIQUE3463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3463: 
	addq	$1, -24(%rbp)
 jmp .UNIQUE3464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3464: 
	addq	$4, -40(%rbp)
 jmp .UNIQUE3465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3465: 
	movl	$1, -44(%rbp)
.L272:
 jmp .UNIQUE3466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3466: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3467: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE3468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3468: 
	jl	.L277
 jmp .UNIQUE3469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3469: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3470: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3471: 
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
 jmp .UNIQUE3472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3472: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3473: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3474: 
	movq	%rdi, -88(%rbp)
 jmp .UNIQUE3475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3475: 
	movq	%rsi, -96(%rbp)
 jmp .UNIQUE3476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3476: 
	movq	%rdx, -104(%rbp)
 jmp .UNIQUE3477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3477: 
	movl	%ecx, -108(%rbp)
 jmp .UNIQUE3478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3478: 
	movq	%r8, -120(%rbp)
 jmp .UNIQUE3479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3479: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE3480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3480: 
	movl	$0, -68(%rbp)
 jmp .UNIQUE3481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3481: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE3482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3482: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE3483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3483: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE3484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3484: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE3485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3485: 
	cmpl	$2, -108(%rbp)
 jmp .UNIQUE3486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3486: 
	jne	.L280
 jmp .UNIQUE3487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3487: 
	movq	$1, -24(%rbp)
 jmp .UNIQUE3488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3488: 
	jmp	.L281
.L280:
 jmp .UNIQUE3489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3489: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE3490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3490: 
	movq	%rax, -24(%rbp)
.L281:
 jmp .UNIQUE3491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3491: 
	movq	$0, -64(%rbp)
 jmp .UNIQUE3492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3492: 
	cmpl	$0, -108(%rbp)
 jmp .UNIQUE3493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3493: 
	je	.L282
 jmp .UNIQUE3494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3494: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE3495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3495: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE3496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3496: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE3497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3497: 
	testq	%rax, %rax
 jmp .UNIQUE3498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3498: 
	cmovs	%rdx, %rax
 jmp .UNIQUE3499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3499: 
	sarq	$2, %rax
 jmp .UNIQUE3500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3500: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3501: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3502: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE3503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3503: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE3504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3504: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE3505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3505: 
	cmpq	%rax, %rdx
 jmp .UNIQUE3506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3506: 
	jne	.L283
 jmp .UNIQUE3507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3507: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3508: 
	movq	%rdx, %rax
 jmp .UNIQUE3509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3509: 
	salq	$3, %rax
 jmp .UNIQUE3510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3510: 
	addq	%rdx, %rax
 jmp .UNIQUE3511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3511: 
	addq	%rax, -40(%rbp)
 jmp .UNIQUE3512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3512: 
	jmp	.L282
.L283:
 jmp .UNIQUE3513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3513: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3514: 
	movq	%rdx, %rax
 jmp .UNIQUE3515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3515: 
	salq	$3, %rax
 jmp .UNIQUE3516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3516: 
	addq	%rdx, %rax
 jmp .UNIQUE3517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3517: 
	addq	%rax, -40(%rbp)
 jmp .UNIQUE3518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3518: 
	movq	-120(%rbp), %rax
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
	movq	%rax, %rdx
 jmp .UNIQUE3521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3521: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE3522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3522: 
	movl	$0, %eax
 jmp .UNIQUE3523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3523: 
	subq	%rcx, %rax
 jmp .UNIQUE3524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3524: 
	salq	$2, %rax
 jmp .UNIQUE3525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3525: 
	addq	%rdx, %rax
 jmp .UNIQUE3526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3526: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE3527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3527: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE3528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3528: 
	jmp	.L284
.L286:
 jmp .UNIQUE3529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3529: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3530: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3531: 
	addq	%rdx, %rax
 jmp .UNIQUE3532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3532: 
	movq	%rax, %rdx
 jmp .UNIQUE3533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3533: 
	movq	-16(%rbp), %rax
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
	movq	-48(%rbp), %rax
 jmp .UNIQUE3536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3536: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE3537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3537: 
	addq	%rcx, %rax
 jmp .UNIQUE3538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3538: 
	movq	%rax, %rcx
 jmp .UNIQUE3539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3539: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3540: 
	addq	%rcx, %rax
 jmp .UNIQUE3541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3541: 
	movzbl	(%rax), %eax
 jmp .UNIQUE3542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3542: 
	movb	%al, (%rdx)
 jmp .UNIQUE3543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3543: 
	addq	$1, -48(%rbp)
.L284:
 jmp .UNIQUE3544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3544: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3545: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE3546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3546: 
	addq	%rdx, %rax
 jmp .UNIQUE3547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3547: 
	cmpq	$3, %rax
 jmp .UNIQUE3548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3548: 
	jg	.L285
 jmp .UNIQUE3549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3549: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3550: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3551: 
	addq	%rdx, %rax
 jmp .UNIQUE3552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3552: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE3553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3553: 
	jl	.L286
.L285:
 jmp .UNIQUE3554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3554: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3555: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE3556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3556: 
	addq	$9, -40(%rbp)
 jmp .UNIQUE3557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3557: 
	jmp	.L287
.L282:
 jmp .UNIQUE3558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3558: 
	jmp	.L287
.L292:
 jmp .UNIQUE3559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3559: 
	cmpl	$0, -68(%rbp)
 jmp .UNIQUE3560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3560: 
	je	.L288
 jmp .UNIQUE3561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3561: 
	addq	$5, -64(%rbp)
 jmp .UNIQUE3562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3562: 
	movl	$0, -68(%rbp)
 jmp .UNIQUE3563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3563: 
	jmp	.L287
.L288:
 jmp .UNIQUE3564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3564: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE3565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3565: 
	jmp	.L289
.L291:
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
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3568: 
	addq	%rdx, %rax
 jmp .UNIQUE3569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3569: 
	movq	%rax, %rdx
 jmp .UNIQUE3570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3570: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3571: 
	addq	%rax, %rdx
 jmp .UNIQUE3572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3572: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3573: 
	movq	-64(%rbp), %rcx
 jmp .UNIQUE3574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3574: 
	addq	%rcx, %rax
 jmp .UNIQUE3575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3575: 
	movq	%rax, %rcx
 jmp .UNIQUE3576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3576: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3577: 
	addq	%rcx, %rax
 jmp .UNIQUE3578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3578: 
	movzbl	(%rax), %eax
 jmp .UNIQUE3579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3579: 
	movb	%al, (%rdx)
 jmp .UNIQUE3580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3580: 
	addq	$1, -56(%rbp)
.L289:
 jmp .UNIQUE3581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3581: 
	cmpq	$3, -56(%rbp)
 jmp .UNIQUE3582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3582: 
	jg	.L290
 jmp .UNIQUE3583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3583: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3584: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3585: 
	addq	%rdx, %rax
 jmp .UNIQUE3586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3586: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE3587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3587: 
	jl	.L291
.L290:
 jmp .UNIQUE3588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3588: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3589: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE3590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3590: 
	addq	$4, -64(%rbp)
 jmp .UNIQUE3591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3591: 
	movl	$1, -68(%rbp)
.L287:
 jmp .UNIQUE3592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3592: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3593: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE3594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3594: 
	jl	.L292
 jmp .UNIQUE3595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3595: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3596: 
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
 jmp .UNIQUE3597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3597: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3598: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3599: 
	movq	%rdi, -88(%rbp)
 jmp .UNIQUE3600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3600: 
	movq	%rsi, -96(%rbp)
 jmp .UNIQUE3601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3601: 
	movq	%rdx, -104(%rbp)
 jmp .UNIQUE3602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3602: 
	movl	%ecx, -108(%rbp)
 jmp .UNIQUE3603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3603: 
	movq	%r8, -120(%rbp)
 jmp .UNIQUE3604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3604: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE3605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3605: 
	movl	$0, -68(%rbp)
 jmp .UNIQUE3606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3606: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE3607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3607: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE3608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3608: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE3609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3609: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE3610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3610: 
	cmpl	$2, -108(%rbp)
 jmp .UNIQUE3611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3611: 
	jne	.L294
 jmp .UNIQUE3612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3612: 
	movq	$1, -24(%rbp)
 jmp .UNIQUE3613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3613: 
	jmp	.L295
.L294:
 jmp .UNIQUE3614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3614: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE3615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3615: 
	movq	%rax, -24(%rbp)
.L295:
 jmp .UNIQUE3616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3616: 
	movq	$0, -64(%rbp)
 jmp .UNIQUE3617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3617: 
	cmpl	$0, -108(%rbp)
 jmp .UNIQUE3618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3618: 
	je	.L296
 jmp .UNIQUE3619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3619: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE3620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3620: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE3621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3621: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE3622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3622: 
	testq	%rax, %rax
 jmp .UNIQUE3623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3623: 
	cmovs	%rdx, %rax
 jmp .UNIQUE3624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3624: 
	sarq	$2, %rax
 jmp .UNIQUE3625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3625: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3626: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3627: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE3628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3628: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE3629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3629: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE3630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3630: 
	cmpq	%rax, %rdx
 jmp .UNIQUE3631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3631: 
	jne	.L297
 jmp .UNIQUE3632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3632: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3633: 
	movq	%rdx, %rax
 jmp .UNIQUE3634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3634: 
	salq	$3, %rax
 jmp .UNIQUE3635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3635: 
	addq	%rdx, %rax
 jmp .UNIQUE3636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3636: 
	addq	%rax, -40(%rbp)
 jmp .UNIQUE3637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3637: 
	jmp	.L296
.L297:
 jmp .UNIQUE3638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3638: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3639: 
	movq	%rdx, %rax
 jmp .UNIQUE3640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3640: 
	salq	$3, %rax
 jmp .UNIQUE3641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3641: 
	addq	%rdx, %rax
 jmp .UNIQUE3642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3642: 
	addq	%rax, -40(%rbp)
 jmp .UNIQUE3643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3643: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE3644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3644: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE3645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3645: 
	movq	%rax, %rdx
 jmp .UNIQUE3646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3646: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE3647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3647: 
	movl	$0, %eax
 jmp .UNIQUE3648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3648: 
	subq	%rcx, %rax
 jmp .UNIQUE3649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3649: 
	salq	$2, %rax
 jmp .UNIQUE3650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3650: 
	addq	%rdx, %rax
 jmp .UNIQUE3651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3651: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE3652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3652: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE3653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3653: 
	jmp	.L298
.L300:
 jmp .UNIQUE3654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3654: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3655: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE3656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3656: 
	addq	%rdx, %rax
 jmp .UNIQUE3657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3657: 
	movq	%rax, %rdx
 jmp .UNIQUE3658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3658: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3659: 
	addq	%rax, %rdx
 jmp .UNIQUE3660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3660: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3661: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE3662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3662: 
	addq	%rcx, %rax
 jmp .UNIQUE3663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3663: 
	movq	%rax, %rcx
 jmp .UNIQUE3664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3664: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3665: 
	addq	%rcx, %rax
 jmp .UNIQUE3666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3666: 
	movzbl	(%rax), %eax
 jmp .UNIQUE3667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3667: 
	movb	%al, (%rdx)
 jmp .UNIQUE3668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3668: 
	addq	$1, -48(%rbp)
.L298:
 jmp .UNIQUE3669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3669: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3670: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE3671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3671: 
	addq	%rdx, %rax
 jmp .UNIQUE3672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3672: 
	cmpq	$3, %rax
 jmp .UNIQUE3673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3673: 
	jg	.L299
 jmp .UNIQUE3674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3674: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3675: 
	movq	-32(%rbp), %rdx
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
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE3678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3678: 
	jl	.L300
.L299:
 jmp .UNIQUE3679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3679: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3680: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE3681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3681: 
	addq	$9, -40(%rbp)
 jmp .UNIQUE3682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3682: 
	jmp	.L301
.L296:
 jmp .UNIQUE3683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3683: 
	jmp	.L301
.L306:
 jmp .UNIQUE3684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3684: 
	cmpl	$0, -68(%rbp)
 jmp .UNIQUE3685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3685: 
	je	.L302
 jmp .UNIQUE3686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3686: 
	addq	$5, -64(%rbp)
 jmp .UNIQUE3687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3687: 
	movl	$0, -68(%rbp)
 jmp .UNIQUE3688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3688: 
	jmp	.L301
.L302:
 jmp .UNIQUE3689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3689: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE3690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3690: 
	jmp	.L303
.L305:
 jmp .UNIQUE3691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3691: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3692: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE3693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3693: 
	addq	%rdx, %rax
 jmp .UNIQUE3694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3694: 
	movq	%rax, %rdx
 jmp .UNIQUE3695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3695: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3696: 
	addq	%rax, %rdx
 jmp .UNIQUE3697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3697: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3698: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE3699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3699: 
	addq	%rcx, %rax
 jmp .UNIQUE3700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3700: 
	movq	%rax, %rcx
 jmp .UNIQUE3701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3701: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3702: 
	addq	%rcx, %rax
 jmp .UNIQUE3703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3703: 
	movzbl	(%rax), %eax
 jmp .UNIQUE3704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3704: 
	movb	%al, (%rdx)
 jmp .UNIQUE3705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3705: 
	addq	$1, -56(%rbp)
.L303:
 jmp .UNIQUE3706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3706: 
	cmpq	$3, -56(%rbp)
 jmp .UNIQUE3707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3707: 
	jg	.L304
 jmp .UNIQUE3708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3708: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3709: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3710: 
	addq	%rdx, %rax
 jmp .UNIQUE3711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3711: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE3712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3712: 
	jl	.L305
.L304:
 jmp .UNIQUE3713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3713: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3714: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE3715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3715: 
	addq	$4, -64(%rbp)
 jmp .UNIQUE3716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3716: 
	movl	$1, -68(%rbp)
.L301:
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
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE3719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3719: 
	jl	.L306
 jmp .UNIQUE3720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3720: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3721: 
	ret
	.cfi_endproc
.LFE77:
	.size	set_secure_stack_data, .-set_secure_stack_data
	.globl	allocate_mem_into_secure_stack
	.type	allocate_mem_into_secure_stack, @function
allocate_mem_into_secure_stack:
.LFB78:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3722: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3723: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3724: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE3725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3725: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3726: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE3727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3727: 
	movq	$5, -32(%rbp)
 jmp .UNIQUE3728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3728: 
	movq	$4, -24(%rbp)
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
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3731: 
	cmpq	$0, -56(%rbp)
 jmp .UNIQUE3732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3732: 
	jne	.L308
 jmp .UNIQUE3733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3733: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE3734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3734: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE3735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3735: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3736: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3737: 
	jmp	.L312
.L308:
 jmp .UNIQUE3738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3738: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3739: 
	cqto
 jmp .UNIQUE3740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3740: 
	idivq	-24(%rbp)
 jmp .UNIQUE3741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3741: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE3742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3742: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3743: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE3744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3744: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE3745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3745: 
	jge	.L310
 jmp .UNIQUE3746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3746: 
	addq	$1, -48(%rbp)
.L310:
 jmp .UNIQUE3747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3747: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3748: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE3749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3749: 
	movq	last_unused_stack_memory(%rip), %rdx
 jmp .UNIQUE3750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3750: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3751: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE3752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3752: 
	addq	%rcx, %rax
 jmp .UNIQUE3753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3753: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE3754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3754: 
	addq	%rdx, %rax
 jmp .UNIQUE3755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3755: 
	movq	%rax, last_unused_stack_memory(%rip)
 jmp .UNIQUE3756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3756: 
	movq	entire_stack_memory_chunk(%rip), %rdx
 jmp .UNIQUE3757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3757: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE3758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3758: 
	addq	%rax, %rdx
 jmp .UNIQUE3759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3759: 
	movq	last_unused_stack_memory(%rip), %rax
 jmp .UNIQUE3760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3760: 
	cmpq	%rax, %rdx
 jmp .UNIQUE3761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3761: 
	ja	.L311
 jmp .UNIQUE3762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3762: 
	movq	last_unused_stack_memory(%rip), %rax
 jmp .UNIQUE3763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3763: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3764: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE3765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3765: 
	addq	%rcx, %rdx
 jmp .UNIQUE3766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3766: 
	imulq	-48(%rbp), %rdx
 jmp .UNIQUE3767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3767: 
	negq	%rdx
 jmp .UNIQUE3768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3768: 
	addq	%rdx, %rax
 jmp .UNIQUE3769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3769: 
	movq	%rax, last_unused_stack_memory(%rip)
 jmp .UNIQUE3770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3770: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE3771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3771: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE3772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3772: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3773: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3774: 
	jmp	.L312
.L311:
 jmp .UNIQUE3775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3775: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3776: 
	movq	-8(%rbp), %rdx
.L312:
 jmp .UNIQUE3777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3777: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3778: 
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
 jmp .UNIQUE3779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3779: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3780: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3781: 
	movq	%rdi, -40(%rbp)
 jmp .UNIQUE3782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3782: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3783: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE3784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3784: 
	movq	$5, -16(%rbp)
 jmp .UNIQUE3785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3785: 
	movq	$4, -8(%rbp)
 jmp .UNIQUE3786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3786: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3787: 
	cqto
 jmp .UNIQUE3788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3788: 
	idivq	-8(%rbp)
 jmp .UNIQUE3789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3789: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE3790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3790: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3791: 
	imulq	-8(%rbp), %rax
 jmp .UNIQUE3792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3792: 
	cmpq	-40(%rbp), %rax
 jmp .UNIQUE3793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3793: 
	jge	.L314
 jmp .UNIQUE3794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3794: 
	addq	$1, -32(%rbp)
.L314:
 jmp .UNIQUE3795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3795: 
	movq	last_unused_stack_memory(%rip), %rax
 jmp .UNIQUE3796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3796: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE3797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3797: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE3798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3798: 
	addq	%rcx, %rdx
 jmp .UNIQUE3799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3799: 
	imulq	-32(%rbp), %rdx
 jmp .UNIQUE3800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3800: 
	negq	%rdx
 jmp .UNIQUE3801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3801: 
	addq	%rdx, %rax
 jmp .UNIQUE3802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3802: 
	movq	%rax, last_unused_stack_memory(%rip)
 jmp .UNIQUE3803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3803: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3804: 
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
 jmp .UNIQUE3805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3805: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3806: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3807: 
	movq	%rdi, -40(%rbp)
 jmp .UNIQUE3808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3808: 
	movq	$5, -24(%rbp)
 jmp .UNIQUE3809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3809: 
	movq	$4, -16(%rbp)
 jmp .UNIQUE3810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3810: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3811: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3812: 
	movq	last_unused_stack_memory(%rip), %rax
 jmp .UNIQUE3813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3813: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE3814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3814: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE3815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3815: 
	addq	%rcx, %rdx
 jmp .UNIQUE3816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3816: 
	imulq	-8(%rbp), %rdx
 jmp .UNIQUE3817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3817: 
	negq	%rdx
 jmp .UNIQUE3818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3818: 
	addq	%rdx, %rax
 jmp .UNIQUE3819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3819: 
	movq	%rax, last_unused_stack_memory(%rip)
 jmp .UNIQUE3820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3820: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3821: 
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
 jmp .UNIQUE3822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3822: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3823: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3824: 
	pushq	%rbx
 jmp .UNIQUE3825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3825: 
	subq	$264, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE3826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3826: 
	movq	%rsi, -184(%rbp)
 jmp .UNIQUE3827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3827: 
	movq	%rdx, -176(%rbp)
 jmp .UNIQUE3828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3828: 
	movq	%rcx, -168(%rbp)
 jmp .UNIQUE3829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3829: 
	movq	%r8, -160(%rbp)
 jmp .UNIQUE3830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3830: 
	movq	%r9, -152(%rbp)
 jmp .UNIQUE3831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3831: 
	testb	%al, %al
 jmp .UNIQUE3832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3832: 
	je	.L317
 jmp .UNIQUE3833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3833: 
	movaps	%xmm0, -144(%rbp)
 jmp .UNIQUE3834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3834: 
	movaps	%xmm1, -128(%rbp)
 jmp .UNIQUE3835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3835: 
	movaps	%xmm2, -112(%rbp)
 jmp .UNIQUE3836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3836: 
	movaps	%xmm3, -96(%rbp)
 jmp .UNIQUE3837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3837: 
	movaps	%xmm4, -80(%rbp)
 jmp .UNIQUE3838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3838: 
	movaps	%xmm5, -64(%rbp)
 jmp .UNIQUE3839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3839: 
	movaps	%xmm6, -48(%rbp)
 jmp .UNIQUE3840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3840: 
	movaps	%xmm7, -32(%rbp)
.L317:
 jmp .UNIQUE3841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3841: 
	movl	%edi, -260(%rbp)
 jmp .UNIQUE3842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3842: 
	movq	$0, -248(%rbp)
 jmp .UNIQUE3843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3843: 
	movq	$-1, -240(%rbp)
 jmp .UNIQUE3844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3844: 
	movl	$8, -216(%rbp)
 jmp .UNIQUE3845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3845: 
	movl	$48, -212(%rbp)
 jmp .UNIQUE3846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3846: 
	leaq	16(%rbp), %rax
 jmp .UNIQUE3847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3847: 
	movq	%rax, -208(%rbp)
 jmp .UNIQUE3848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3848: 
	leaq	-192(%rbp), %rax
 jmp .UNIQUE3849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3849: 
	movq	%rax, -200(%rbp)
 jmp .UNIQUE3850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3850: 
	movl	$555, %edx
 jmp .UNIQUE3851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3851: 
	movl	$__func__.5679, %esi
 jmp .UNIQUE3852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3852: 
	movl	$24, %edi
 jmp .UNIQUE3853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3853: 
	call	error_checking_malloc
 jmp .UNIQUE3854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3854: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE3855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3855: 
	cmpl	$0, -260(%rbp)
 jmp .UNIQUE3856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3856: 
	je	.L318
 jmp .UNIQUE3857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3857: 
	movl	$558, %edx
 jmp .UNIQUE3858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3858: 
	movl	$__func__.5679, %esi
 jmp .UNIQUE3859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3859: 
	movl	$128, %edi
 jmp .UNIQUE3860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3860: 
	call	error_checking_malloc
 jmp .UNIQUE3861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3861: 
	movq	-232(%rbp), %rdx
 jmp .UNIQUE3862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3862: 
	movq	%rax, 16(%rdx)
 jmp .UNIQUE3863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3863: 
	jmp	.L319
.L318:
 jmp .UNIQUE3864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3864: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3865: 
	movq	$0, 16(%rax)
.L319:
 jmp .UNIQUE3866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3866: 
	cmpl	$0, -260(%rbp)
 jmp .UNIQUE3867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3867: 
	je	.L320
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
	movq	16(%rax), %rcx
 jmp .UNIQUE3870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3870: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3871: 
	cmpl	$48, %eax
 jmp .UNIQUE3872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3872: 
	jnb	.L321
 jmp .UNIQUE3873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3873: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3874: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3875: 
	movl	%eax, %eax
 jmp .UNIQUE3876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3876: 
	addq	%rdx, %rax
 jmp .UNIQUE3877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3877: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3878: 
	addl	$8, %edx
 jmp .UNIQUE3879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3879: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3880: 
	jmp	.L322
.L321:
 jmp .UNIQUE3881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3881: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3882: 
	movq	%rdx, %rax
 jmp .UNIQUE3883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3883: 
	addq	$8, %rdx
 jmp .UNIQUE3884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3884: 
	movq	%rdx, -208(%rbp)
.L322:
 jmp .UNIQUE3885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3885: 
	movq	(%rax), %rax
 jmp .UNIQUE3886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3886: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3887: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3888: 
	movq	%rax, (%rcx)
 jmp .UNIQUE3889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3889: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE3890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3890: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3891: 
	addq	%rdx, %rax
 jmp .UNIQUE3892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3892: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE3893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3893: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE3894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3894: 
	je	.L323
 jmp .UNIQUE3895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3895: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3896: 
	movq	16(%rax), %rbx
 jmp .UNIQUE3897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3897: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3898: 
	movl	$570, %edx
 jmp .UNIQUE3899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3899: 
	movl	$__func__.5679, %esi
 jmp .UNIQUE3900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3900: 
	movq	%rax, %rdi
 jmp .UNIQUE3901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3901: 
	call	error_checking_malloc
 jmp .UNIQUE3902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3902: 
	movq	%rax, 8(%rbx)
 jmp .UNIQUE3903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3903: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE3904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3904: 
	jmp	.L324
.L327:
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
	movq	8(%rax), %rdx
 jmp .UNIQUE3908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3908: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE3909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3909: 
	leaq	(%rdx,%rax), %rcx
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
	jnb	.L325
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
	jmp	.L326
.L325:
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
.L326:
 jmp .UNIQUE3925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3925: 
	movl	(%rax), %eax
 jmp .UNIQUE3926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3926: 
	movb	%al, (%rcx)
 jmp .UNIQUE3927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3927: 
	addq	$1, -256(%rbp)
.L324:
 jmp .UNIQUE3928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3928: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE3929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3929: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3930: 
	jl	.L327
 jmp .UNIQUE3931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3931: 
	jmp	.L328
.L323:
 jmp .UNIQUE3932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3932: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3933: 
	movq	16(%rax), %rax
 jmp .UNIQUE3934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3934: 
	movq	$0, 8(%rax)
.L328:
 jmp .UNIQUE3935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3935: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3936: 
	movq	16(%rax), %rcx
 jmp .UNIQUE3937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3937: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3938: 
	cmpl	$48, %eax
 jmp .UNIQUE3939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3939: 
	jnb	.L329
 jmp .UNIQUE3940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3940: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3941: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3942: 
	movl	%eax, %eax
 jmp .UNIQUE3943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3943: 
	addq	%rdx, %rax
 jmp .UNIQUE3944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3944: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3945: 
	addl	$8, %edx
 jmp .UNIQUE3946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3946: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3947: 
	jmp	.L330
.L329:
 jmp .UNIQUE3948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3948: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3949: 
	movq	%rdx, %rax
 jmp .UNIQUE3950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3950: 
	addq	$8, %rdx
 jmp .UNIQUE3951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3951: 
	movq	%rdx, -208(%rbp)
.L330:
 jmp .UNIQUE3952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3952: 
	movq	(%rax), %rax
 jmp .UNIQUE3953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3953: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3954: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3955: 
	movq	%rax, 16(%rcx)
 jmp .UNIQUE3956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3956: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3957: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE3958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3958: 
	movq	-248(%rbp), %rax
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
	movq	%rax, -248(%rbp)
 jmp .UNIQUE3961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3961: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE3962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3962: 
	je	.L331
 jmp .UNIQUE3963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3963: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3964: 
	movq	16(%rax), %rbx
 jmp .UNIQUE3965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3965: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3966: 
	salq	$2, %rax
 jmp .UNIQUE3967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3967: 
	movl	$586, %edx
 jmp .UNIQUE3968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3968: 
	movl	$__func__.5679, %esi
 jmp .UNIQUE3969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3969: 
	movq	%rax, %rdi
 jmp .UNIQUE3970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3970: 
	call	error_checking_malloc
 jmp .UNIQUE3971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3971: 
	movq	%rax, 24(%rbx)
 jmp .UNIQUE3972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3972: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE3973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3973: 
	jmp	.L332
.L335:
 jmp .UNIQUE3974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3974: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3975: 
	movq	16(%rax), %rax
 jmp .UNIQUE3976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3976: 
	movq	24(%rax), %rax
 jmp .UNIQUE3977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3977: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE3978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3978: 
	salq	$2, %rdx
 jmp .UNIQUE3979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3979: 
	leaq	(%rax,%rdx), %rcx
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
	jnb	.L333
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
	jmp	.L334
.L333:
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
.L334:
 jmp .UNIQUE3995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3995: 
	movl	(%rax), %eax
 jmp .UNIQUE3996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3996: 
	movl	%eax, (%rcx)
 jmp .UNIQUE3997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3997: 
	addq	$1, -256(%rbp)
.L332:
 jmp .UNIQUE3998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3998: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE3999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3999: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4000: 
	jl	.L335
 jmp .UNIQUE4001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4001: 
	jmp	.L336
.L331:
 jmp .UNIQUE4002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4002: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4003: 
	movq	16(%rax), %rax
 jmp .UNIQUE4004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4004: 
	movq	$0, 24(%rax)
.L336:
 jmp .UNIQUE4005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4005: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4006: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4007: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4008: 
	cmpl	$48, %eax
 jmp .UNIQUE4009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4009: 
	jnb	.L337
 jmp .UNIQUE4010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4010: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4011: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4012: 
	movl	%eax, %eax
 jmp .UNIQUE4013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4013: 
	addq	%rdx, %rax
 jmp .UNIQUE4014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4014: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4015: 
	addl	$8, %edx
 jmp .UNIQUE4016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4016: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4017: 
	jmp	.L338
.L337:
 jmp .UNIQUE4018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4018: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4019: 
	movq	%rdx, %rax
 jmp .UNIQUE4020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4020: 
	addq	$8, %rdx
 jmp .UNIQUE4021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4021: 
	movq	%rdx, -208(%rbp)
.L338:
 jmp .UNIQUE4022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4022: 
	movq	(%rax), %rax
 jmp .UNIQUE4023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4023: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4024: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4025: 
	movq	%rax, 32(%rcx)
 jmp .UNIQUE4026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4026: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4027: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4028: 
	movq	-248(%rbp), %rax
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
	movq	%rax, -248(%rbp)
 jmp .UNIQUE4031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4031: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE4032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4032: 
	je	.L339
 jmp .UNIQUE4033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4033: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4034: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4035: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4036: 
	salq	$3, %rax
 jmp .UNIQUE4037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4037: 
	movl	$602, %edx
 jmp .UNIQUE4038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4038: 
	movl	$__func__.5679, %esi
 jmp .UNIQUE4039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4039: 
	movq	%rax, %rdi
 jmp .UNIQUE4040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4040: 
	call	error_checking_malloc
 jmp .UNIQUE4041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4041: 
	movq	%rax, 40(%rbx)
 jmp .UNIQUE4042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4042: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4043: 
	jmp	.L340
.L343:
 jmp .UNIQUE4044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4044: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4045: 
	movq	16(%rax), %rax
 jmp .UNIQUE4046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4046: 
	movq	40(%rax), %rax
 jmp .UNIQUE4047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4047: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4048: 
	salq	$3, %rdx
 jmp .UNIQUE4049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4049: 
	leaq	(%rax,%rdx), %rcx
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
	jnb	.L341
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
	jmp	.L342
.L341:
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
.L342:
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
	movq	%rax, (%rcx)
 jmp .UNIQUE4067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4067: 
	addq	$1, -256(%rbp)
.L340:
 jmp .UNIQUE4068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4068: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4069: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4070: 
	jl	.L343
 jmp .UNIQUE4071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4071: 
	jmp	.L344
.L339:
 jmp .UNIQUE4072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4072: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4073: 
	movq	16(%rax), %rax
 jmp .UNIQUE4074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4074: 
	movq	$0, 40(%rax)
.L344:
 jmp .UNIQUE4075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4075: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4076: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4077: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4078: 
	cmpl	$48, %eax
 jmp .UNIQUE4079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4079: 
	jnb	.L345
 jmp .UNIQUE4080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4080: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4081: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4082: 
	movl	%eax, %eax
 jmp .UNIQUE4083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4083: 
	addq	%rdx, %rax
 jmp .UNIQUE4084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4084: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4085: 
	addl	$8, %edx
 jmp .UNIQUE4086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4086: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4087: 
	jmp	.L346
.L345:
 jmp .UNIQUE4088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4088: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4089: 
	movq	%rdx, %rax
 jmp .UNIQUE4090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4090: 
	addq	$8, %rdx
 jmp .UNIQUE4091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4091: 
	movq	%rdx, -208(%rbp)
.L346:
 jmp .UNIQUE4092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4092: 
	movq	(%rax), %rax
 jmp .UNIQUE4093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4093: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4094: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4095: 
	movq	%rax, 48(%rcx)
 jmp .UNIQUE4096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4096: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4097: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE4098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4098: 
	movq	-248(%rbp), %rax
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
	movq	%rax, -248(%rbp)
 jmp .UNIQUE4101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4101: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE4102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4102: 
	je	.L347
 jmp .UNIQUE4103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4103: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4104: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4105: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4106: 
	salq	$2, %rax
 jmp .UNIQUE4107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4107: 
	movl	$618, %edx
 jmp .UNIQUE4108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4108: 
	movl	$__func__.5679, %esi
 jmp .UNIQUE4109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4109: 
	movq	%rax, %rdi
 jmp .UNIQUE4110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4110: 
	call	error_checking_malloc
 jmp .UNIQUE4111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4111: 
	movq	%rax, 56(%rbx)
 jmp .UNIQUE4112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4112: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4113: 
	jmp	.L348
.L351:
 jmp .UNIQUE4114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4114: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4115: 
	movq	16(%rax), %rax
 jmp .UNIQUE4116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4116: 
	movq	56(%rax), %rax
 jmp .UNIQUE4117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4117: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4118: 
	salq	$2, %rdx
 jmp .UNIQUE4119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4119: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4120: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4121: 
	cmpl	$176, %eax
 jmp .UNIQUE4122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4122: 
	jnb	.L349
 jmp .UNIQUE4123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4123: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4124: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4125: 
	movl	%eax, %eax
 jmp .UNIQUE4126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4126: 
	addq	%rdx, %rax
 jmp .UNIQUE4127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4127: 
	movl	-212(%rbp), %edx
 jmp .UNIQUE4128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4128: 
	addl	$16, %edx
 jmp .UNIQUE4129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4129: 
	movl	%edx, -212(%rbp)
 jmp .UNIQUE4130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4130: 
	jmp	.L350
.L349:
 jmp .UNIQUE4131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4131: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4132: 
	movq	%rdx, %rax
 jmp .UNIQUE4133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4133: 
	addq	$8, %rdx
 jmp .UNIQUE4134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4134: 
	movq	%rdx, -208(%rbp)
.L350:
 jmp .UNIQUE4135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4135: 
	movsd	(%rax), %xmm0
 jmp .UNIQUE4136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4136: 
	unpcklpd	%xmm0, %xmm0
 jmp .UNIQUE4137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4137: 
	cvtpd2ps	%xmm0, %xmm0
 jmp .UNIQUE4138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4138: 
	movss	%xmm0, (%rcx)
 jmp .UNIQUE4139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4139: 
	addq	$1, -256(%rbp)
.L348:
 jmp .UNIQUE4140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4140: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4141: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4142: 
	jl	.L351
 jmp .UNIQUE4143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4143: 
	jmp	.L352
.L347:
 jmp .UNIQUE4144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4144: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4145: 
	movq	16(%rax), %rax
 jmp .UNIQUE4146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4146: 
	movq	$0, 56(%rax)
.L352:
 jmp .UNIQUE4147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4147: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4148: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4149: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4150: 
	cmpl	$48, %eax
 jmp .UNIQUE4151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4151: 
	jnb	.L353
 jmp .UNIQUE4152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4152: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4153: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4154: 
	movl	%eax, %eax
 jmp .UNIQUE4155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4155: 
	addq	%rdx, %rax
 jmp .UNIQUE4156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4156: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4157: 
	addl	$8, %edx
 jmp .UNIQUE4158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4158: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4159: 
	jmp	.L354
.L353:
 jmp .UNIQUE4160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4160: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4161: 
	movq	%rdx, %rax
 jmp .UNIQUE4162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4162: 
	addq	$8, %rdx
 jmp .UNIQUE4163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4163: 
	movq	%rdx, -208(%rbp)
.L354:
 jmp .UNIQUE4164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4164: 
	movq	(%rax), %rax
 jmp .UNIQUE4165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4165: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4166: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4167: 
	movq	%rax, 64(%rcx)
 jmp .UNIQUE4168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4168: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4169: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4170: 
	movq	-248(%rbp), %rax
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
	movq	%rax, -248(%rbp)
 jmp .UNIQUE4173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4173: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE4174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4174: 
	je	.L355
 jmp .UNIQUE4175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4175: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4176: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4177: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4178: 
	salq	$3, %rax
 jmp .UNIQUE4179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4179: 
	movl	$634, %edx
 jmp .UNIQUE4180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4180: 
	movl	$__func__.5679, %esi
 jmp .UNIQUE4181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4181: 
	movq	%rax, %rdi
 jmp .UNIQUE4182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4182: 
	call	error_checking_malloc
 jmp .UNIQUE4183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4183: 
	movq	%rax, 72(%rbx)
 jmp .UNIQUE4184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4184: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4185: 
	jmp	.L356
.L359:
 jmp .UNIQUE4186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4186: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4187: 
	movq	16(%rax), %rax
 jmp .UNIQUE4188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4188: 
	movq	72(%rax), %rax
 jmp .UNIQUE4189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4189: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4190: 
	salq	$3, %rdx
 jmp .UNIQUE4191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4191: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4192: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4193: 
	cmpl	$176, %eax
 jmp .UNIQUE4194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4194: 
	jnb	.L357
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
	movl	-212(%rbp), %eax
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
	movl	-212(%rbp), %edx
 jmp .UNIQUE4200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4200: 
	addl	$16, %edx
 jmp .UNIQUE4201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4201: 
	movl	%edx, -212(%rbp)
 jmp .UNIQUE4202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4202: 
	jmp	.L358
.L357:
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
.L358:
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
	movq	%rax, (%rcx)
 jmp .UNIQUE4209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4209: 
	addq	$1, -256(%rbp)
.L356:
 jmp .UNIQUE4210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4210: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4211: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4212: 
	jl	.L359
 jmp .UNIQUE4213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4213: 
	jmp	.L360
.L355:
 jmp .UNIQUE4214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4214: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4215: 
	movq	16(%rax), %rax
 jmp .UNIQUE4216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4216: 
	movq	$0, 72(%rax)
.L360:
 jmp .UNIQUE4217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4217: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4218: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4219: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4220: 
	cmpl	$48, %eax
 jmp .UNIQUE4221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4221: 
	jnb	.L361
 jmp .UNIQUE4222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4222: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4223: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4224: 
	movl	%eax, %eax
 jmp .UNIQUE4225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4225: 
	addq	%rdx, %rax
 jmp .UNIQUE4226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4226: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4227: 
	addl	$8, %edx
 jmp .UNIQUE4228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4228: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4229: 
	jmp	.L362
.L361:
 jmp .UNIQUE4230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4230: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4231: 
	movq	%rdx, %rax
 jmp .UNIQUE4232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4232: 
	addq	$8, %rdx
 jmp .UNIQUE4233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4233: 
	movq	%rdx, -208(%rbp)
.L362:
 jmp .UNIQUE4234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4234: 
	movq	(%rax), %rax
 jmp .UNIQUE4235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4235: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4236: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4237: 
	movq	%rax, 80(%rcx)
 jmp .UNIQUE4238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4238: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4239: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4240: 
	movq	-248(%rbp), %rax
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
	movq	%rax, -248(%rbp)
 jmp .UNIQUE4243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4243: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE4244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4244: 
	je	.L363
 jmp .UNIQUE4245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4245: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4246: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4247: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4248: 
	salq	$3, %rax
 jmp .UNIQUE4249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4249: 
	movl	$651, %edx
 jmp .UNIQUE4250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4250: 
	movl	$__func__.5679, %esi
 jmp .UNIQUE4251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4251: 
	movq	%rax, %rdi
 jmp .UNIQUE4252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4252: 
	call	error_checking_malloc
 jmp .UNIQUE4253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4253: 
	movq	%rax, 88(%rbx)
 jmp .UNIQUE4254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4254: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4255: 
	jmp	.L364
.L367:
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
	movq	16(%rax), %rax
 jmp .UNIQUE4258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4258: 
	movq	88(%rax), %rax
 jmp .UNIQUE4259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4259: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4260: 
	salq	$3, %rdx
 jmp .UNIQUE4261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4261: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4262: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4263: 
	cmpl	$48, %eax
 jmp .UNIQUE4264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4264: 
	jnb	.L365
 jmp .UNIQUE4265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4265: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4266: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4267: 
	movl	%eax, %eax
 jmp .UNIQUE4268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4268: 
	addq	%rdx, %rax
 jmp .UNIQUE4269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4269: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4270: 
	addl	$8, %edx
 jmp .UNIQUE4271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4271: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4272: 
	jmp	.L366
.L365:
 jmp .UNIQUE4273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4273: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4274: 
	movq	%rdx, %rax
 jmp .UNIQUE4275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4275: 
	addq	$8, %rdx
 jmp .UNIQUE4276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4276: 
	movq	%rdx, -208(%rbp)
.L366:
 jmp .UNIQUE4277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4277: 
	movq	(%rax), %rax
 jmp .UNIQUE4278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4278: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4279: 
	addq	$1, -256(%rbp)
.L364:
 jmp .UNIQUE4280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4280: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4281: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4282: 
	jl	.L367
 jmp .UNIQUE4283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4283: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4284: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4285: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4286: 
	salq	$3, %rax
 jmp .UNIQUE4287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4287: 
	movl	$656, %edx
 jmp .UNIQUE4288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4288: 
	movl	$__func__.5679, %esi
 jmp .UNIQUE4289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4289: 
	movq	%rax, %rdi
 jmp .UNIQUE4290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4290: 
	call	error_checking_malloc
 jmp .UNIQUE4291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4291: 
	movq	%rax, 96(%rbx)
 jmp .UNIQUE4292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4292: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4293: 
	jmp	.L368
.L371:
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
	movq	16(%rax), %rax
 jmp .UNIQUE4296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4296: 
	movq	96(%rax), %rax
 jmp .UNIQUE4297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4297: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4298: 
	salq	$3, %rdx
 jmp .UNIQUE4299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4299: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4300: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4301: 
	cmpl	$48, %eax
 jmp .UNIQUE4302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4302: 
	jnb	.L369
 jmp .UNIQUE4303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4303: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4304: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4305: 
	movl	%eax, %eax
 jmp .UNIQUE4306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4306: 
	addq	%rdx, %rax
 jmp .UNIQUE4307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4307: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4308: 
	addl	$8, %edx
 jmp .UNIQUE4309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4309: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4310: 
	jmp	.L370
.L369:
 jmp .UNIQUE4311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4311: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4312: 
	movq	%rdx, %rax
 jmp .UNIQUE4313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4313: 
	addq	$8, %rdx
 jmp .UNIQUE4314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4314: 
	movq	%rdx, -208(%rbp)
.L370:
 jmp .UNIQUE4315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4315: 
	movq	(%rax), %rax
 jmp .UNIQUE4316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4316: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4317: 
	addq	$1, -256(%rbp)
.L368:
 jmp .UNIQUE4318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4318: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4319: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4320: 
	jl	.L371
 jmp .UNIQUE4321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4321: 
	jmp	.L372
.L363:
 jmp .UNIQUE4322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4322: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4323: 
	movq	16(%rax), %rax
 jmp .UNIQUE4324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4324: 
	movq	$0, 88(%rax)
 jmp .UNIQUE4325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4325: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4326: 
	movq	16(%rax), %rax
 jmp .UNIQUE4327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4327: 
	movq	$0, 96(%rax)
.L372:
 jmp .UNIQUE4328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4328: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4329: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4330: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4331: 
	cmpl	$48, %eax
 jmp .UNIQUE4332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4332: 
	jnb	.L373
 jmp .UNIQUE4333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4333: 
	movq	-200(%rbp), %rdx
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
	movl	%eax, %eax
 jmp .UNIQUE4336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4336: 
	addq	%rdx, %rax
 jmp .UNIQUE4337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4337: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4338: 
	addl	$8, %edx
 jmp .UNIQUE4339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4339: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4340: 
	jmp	.L374
.L373:
 jmp .UNIQUE4341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4341: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4342: 
	movq	%rdx, %rax
 jmp .UNIQUE4343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4343: 
	addq	$8, %rdx
 jmp .UNIQUE4344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4344: 
	movq	%rdx, -208(%rbp)
.L374:
 jmp .UNIQUE4345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4345: 
	movq	(%rax), %rax
 jmp .UNIQUE4346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4346: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4347: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4348: 
	movq	%rax, 104(%rcx)
 jmp .UNIQUE4349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4349: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE4350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4350: 
	je	.L375
 jmp .UNIQUE4351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4351: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4352: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4353: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4354: 
	salq	$3, %rax
 jmp .UNIQUE4355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4355: 
	movl	$673, %edx
 jmp .UNIQUE4356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4356: 
	movl	$__func__.5679, %esi
 jmp .UNIQUE4357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4357: 
	movq	%rax, %rdi
 jmp .UNIQUE4358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4358: 
	call	error_checking_malloc
 jmp .UNIQUE4359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4359: 
	movq	%rax, 112(%rbx)
 jmp .UNIQUE4360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4360: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4361: 
	jmp	.L376
.L379:
 jmp .UNIQUE4362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4362: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4363: 
	movq	16(%rax), %rax
 jmp .UNIQUE4364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4364: 
	movq	112(%rax), %rax
 jmp .UNIQUE4365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4365: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4366: 
	salq	$3, %rdx
 jmp .UNIQUE4367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4367: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4368: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4369: 
	cmpl	$48, %eax
 jmp .UNIQUE4370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4370: 
	jnb	.L377
 jmp .UNIQUE4371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4371: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4372: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4373: 
	movl	%eax, %eax
 jmp .UNIQUE4374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4374: 
	addq	%rdx, %rax
 jmp .UNIQUE4375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4375: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4376: 
	addl	$8, %edx
 jmp .UNIQUE4377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4377: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4378: 
	jmp	.L378
.L377:
 jmp .UNIQUE4379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4379: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4380: 
	movq	%rdx, %rax
 jmp .UNIQUE4381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4381: 
	addq	$8, %rdx
 jmp .UNIQUE4382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4382: 
	movq	%rdx, -208(%rbp)
.L378:
 jmp .UNIQUE4383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4383: 
	movq	(%rax), %rax
 jmp .UNIQUE4384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4384: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4385: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4386: 
	movq	16(%rax), %rax
 jmp .UNIQUE4387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4387: 
	movq	112(%rax), %rax
 jmp .UNIQUE4388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4388: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4389: 
	salq	$3, %rdx
 jmp .UNIQUE4390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4390: 
	addq	%rdx, %rax
 jmp .UNIQUE4391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4391: 
	movq	(%rax), %rax
 jmp .UNIQUE4392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4392: 
	addq	%rax, -248(%rbp)
 jmp .UNIQUE4393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4393: 
	addq	$1, -256(%rbp)
.L376:
 jmp .UNIQUE4394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4394: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4395: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4396: 
	jl	.L379
 jmp .UNIQUE4397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4397: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4398: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4399: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4400: 
	salq	$3, %rax
 jmp .UNIQUE4401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4401: 
	movl	$680, %edx
 jmp .UNIQUE4402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4402: 
	movl	$__func__.5679, %esi
 jmp .UNIQUE4403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4403: 
	movq	%rax, %rdi
 jmp .UNIQUE4404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4404: 
	call	error_checking_malloc
 jmp .UNIQUE4405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4405: 
	movq	%rax, 120(%rbx)
 jmp .UNIQUE4406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4406: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4407: 
	jmp	.L380
.L383:
 jmp .UNIQUE4408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4408: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4409: 
	movq	16(%rax), %rax
 jmp .UNIQUE4410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4410: 
	movq	120(%rax), %rax
 jmp .UNIQUE4411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4411: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4412: 
	salq	$3, %rdx
 jmp .UNIQUE4413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4413: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4414: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4415: 
	cmpl	$48, %eax
 jmp .UNIQUE4416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4416: 
	jnb	.L381
 jmp .UNIQUE4417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4417: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4418: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4419: 
	movl	%eax, %eax
 jmp .UNIQUE4420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4420: 
	addq	%rdx, %rax
 jmp .UNIQUE4421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4421: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4422: 
	addl	$8, %edx
 jmp .UNIQUE4423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4423: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4424: 
	jmp	.L382
.L381:
 jmp .UNIQUE4425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4425: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4426: 
	movq	%rdx, %rax
 jmp .UNIQUE4427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4427: 
	addq	$8, %rdx
 jmp .UNIQUE4428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4428: 
	movq	%rdx, -208(%rbp)
.L382:
 jmp .UNIQUE4429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4429: 
	movq	(%rax), %rax
 jmp .UNIQUE4430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4430: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4431: 
	addq	$1, -256(%rbp)
.L380:
 jmp .UNIQUE4432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4432: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4433: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4434: 
	jl	.L383
 jmp .UNIQUE4435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4435: 
	jmp	.L320
.L375:
 jmp .UNIQUE4436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4436: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4437: 
	movq	16(%rax), %rax
 jmp .UNIQUE4438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4438: 
	movq	$0, 112(%rax)
 jmp .UNIQUE4439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4439: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4440: 
	movq	16(%rax), %rax
 jmp .UNIQUE4441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4441: 
	movq	$0, 120(%rax)
.L320:
 jmp .UNIQUE4442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4442: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4443: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE4444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4444: 
	movq	%rdx, (%rax)
 jmp .UNIQUE4445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4445: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4446: 
	movq	-240(%rbp), %rdx
 jmp .UNIQUE4447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4447: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE4448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4448: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4449: 
	addq	$264, %rsp
 jmp .UNIQUE4450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4450: 
	popq	%rbx
 jmp .UNIQUE4451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4451: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE4452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4452: 
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
 jmp .UNIQUE4453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4453: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE4454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4454: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE4455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4455: 
	pushq	%rbx
 jmp .UNIQUE4456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4456: 
	subq	$280, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE4457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4457: 
	movq	%rsi, -184(%rbp)
 jmp .UNIQUE4458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4458: 
	movq	%rdx, -176(%rbp)
 jmp .UNIQUE4459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4459: 
	movq	%rcx, -168(%rbp)
 jmp .UNIQUE4460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4460: 
	movq	%r8, -160(%rbp)
 jmp .UNIQUE4461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4461: 
	movq	%r9, -152(%rbp)
 jmp .UNIQUE4462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4462: 
	testb	%al, %al
 jmp .UNIQUE4463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4463: 
	je	.L386
 jmp .UNIQUE4464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4464: 
	movaps	%xmm0, -144(%rbp)
 jmp .UNIQUE4465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4465: 
	movaps	%xmm1, -128(%rbp)
 jmp .UNIQUE4466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4466: 
	movaps	%xmm2, -112(%rbp)
 jmp .UNIQUE4467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4467: 
	movaps	%xmm3, -96(%rbp)
 jmp .UNIQUE4468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4468: 
	movaps	%xmm4, -80(%rbp)
 jmp .UNIQUE4469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4469: 
	movaps	%xmm5, -64(%rbp)
 jmp .UNIQUE4470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4470: 
	movaps	%xmm6, -48(%rbp)
 jmp .UNIQUE4471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4471: 
	movaps	%xmm7, -32(%rbp)
.L386:
 jmp .UNIQUE4472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4472: 
	movl	%edi, -276(%rbp)
 jmp .UNIQUE4473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4473: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4474: 
	movq	$-1, -248(%rbp)
 jmp .UNIQUE4475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4475: 
	movl	$8, -216(%rbp)
 jmp .UNIQUE4476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4476: 
	movl	$48, -212(%rbp)
 jmp .UNIQUE4477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4477: 
	leaq	16(%rbp), %rax
 jmp .UNIQUE4478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4478: 
	movq	%rax, -208(%rbp)
 jmp .UNIQUE4479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4479: 
	leaq	-192(%rbp), %rax
 jmp .UNIQUE4480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4480: 
	movq	%rax, -200(%rbp)
 jmp .UNIQUE4481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4481: 
	movl	$736, %edx
 jmp .UNIQUE4482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4482: 
	movl	$__func__.5717, %esi
 jmp .UNIQUE4483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4483: 
	movl	$24, %edi
 jmp .UNIQUE4484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4484: 
	call	error_checking_malloc
 jmp .UNIQUE4485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4485: 
	movq	%rax, -240(%rbp)
 jmp .UNIQUE4486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4486: 
	cmpl	$0, -276(%rbp)
 jmp .UNIQUE4487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4487: 
	je	.L387
 jmp .UNIQUE4488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4488: 
	movl	$739, %edx
 jmp .UNIQUE4489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4489: 
	movl	$__func__.5717, %esi
 jmp .UNIQUE4490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4490: 
	movl	$128, %edi
 jmp .UNIQUE4491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4491: 
	call	error_checking_malloc
 jmp .UNIQUE4492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4492: 
	movq	-240(%rbp), %rdx
 jmp .UNIQUE4493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4493: 
	movq	%rax, 16(%rdx)
 jmp .UNIQUE4494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4494: 
	jmp	.L388
.L387:
 jmp .UNIQUE4495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4495: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4496: 
	movq	$0, 16(%rax)
.L388:
 jmp .UNIQUE4497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4497: 
	cmpl	$0, -276(%rbp)
 jmp .UNIQUE4498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4498: 
	je	.L389
 jmp .UNIQUE4499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4499: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4500: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4501: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4502: 
	cmpl	$48, %eax
 jmp .UNIQUE4503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4503: 
	jnb	.L390
 jmp .UNIQUE4504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4504: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4505: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4506: 
	movl	%eax, %eax
 jmp .UNIQUE4507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4507: 
	addq	%rdx, %rax
 jmp .UNIQUE4508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4508: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4509: 
	addl	$8, %edx
 jmp .UNIQUE4510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4510: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4511: 
	jmp	.L391
.L390:
 jmp .UNIQUE4512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4512: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4513: 
	movq	%rdx, %rax
 jmp .UNIQUE4514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4514: 
	addq	$8, %rdx
 jmp .UNIQUE4515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4515: 
	movq	%rdx, -208(%rbp)
.L391:
 jmp .UNIQUE4516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4516: 
	movq	(%rax), %rax
 jmp .UNIQUE4517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4517: 
	movq	%rax, -232(%rbp)
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
	movq	%rax, (%rcx)
 jmp .UNIQUE4520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4520: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4521: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4522: 
	addq	%rdx, %rax
 jmp .UNIQUE4523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4523: 
	movq	%rax, -256(%rbp)
 jmp .UNIQUE4524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4524: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4525: 
	je	.L392
 jmp .UNIQUE4526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4526: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4527: 
	cmpl	$48, %eax
 jmp .UNIQUE4528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4528: 
	jnb	.L393
 jmp .UNIQUE4529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4529: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4530: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4531: 
	movl	%eax, %eax
 jmp .UNIQUE4532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4532: 
	addq	%rdx, %rax
 jmp .UNIQUE4533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4533: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4534: 
	addl	$8, %edx
 jmp .UNIQUE4535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4535: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4536: 
	jmp	.L394
.L393:
 jmp .UNIQUE4537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4537: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4538: 
	movq	%rdx, %rax
 jmp .UNIQUE4539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4539: 
	addq	$8, %rdx
 jmp .UNIQUE4540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4540: 
	movq	%rdx, -208(%rbp)
.L394:
 jmp .UNIQUE4541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4541: 
	movq	(%rax), %rax
 jmp .UNIQUE4542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4542: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4543: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4544: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4545: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4546: 
	movl	$752, %edx
 jmp .UNIQUE4547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4547: 
	movl	$__func__.5717, %esi
 jmp .UNIQUE4548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4548: 
	movq	%rax, %rdi
 jmp .UNIQUE4549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4549: 
	call	error_checking_malloc
 jmp .UNIQUE4550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4550: 
	movq	%rax, 8(%rbx)
 jmp .UNIQUE4551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4551: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4552: 
	jmp	.L395
.L398:
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
	movq	8(%rax), %rdx
 jmp .UNIQUE4556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4556: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4557: 
	leaq	(%rdx,%rax), %rcx
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
	jnb	.L396
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
	jmp	.L397
.L396:
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
.L397:
 jmp .UNIQUE4573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4573: 
	movl	(%rax), %eax
 jmp .UNIQUE4574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4574: 
	movb	%al, (%rcx)
 jmp .UNIQUE4575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4575: 
	addq	$1, -264(%rbp)
.L395:
 jmp .UNIQUE4576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4576: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4577: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4578: 
	jl	.L398
 jmp .UNIQUE4579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4579: 
	jmp	.L399
.L392:
 jmp .UNIQUE4580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4580: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4581: 
	movq	16(%rax), %rax
 jmp .UNIQUE4582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4582: 
	movq	$0, 8(%rax)
.L399:
 jmp .UNIQUE4583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4583: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4584: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4585: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4586: 
	cmpl	$48, %eax
 jmp .UNIQUE4587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4587: 
	jnb	.L400
 jmp .UNIQUE4588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4588: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4589: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4590: 
	movl	%eax, %eax
 jmp .UNIQUE4591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4591: 
	addq	%rdx, %rax
 jmp .UNIQUE4592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4592: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4593: 
	addl	$8, %edx
 jmp .UNIQUE4594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4594: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4595: 
	jmp	.L401
.L400:
 jmp .UNIQUE4596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4596: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4597: 
	movq	%rdx, %rax
 jmp .UNIQUE4598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4598: 
	addq	$8, %rdx
 jmp .UNIQUE4599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4599: 
	movq	%rdx, -208(%rbp)
.L401:
 jmp .UNIQUE4600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4600: 
	movq	(%rax), %rax
 jmp .UNIQUE4601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4601: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4602: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4603: 
	movq	%rax, 16(%rcx)
 jmp .UNIQUE4604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4604: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4605: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE4606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4606: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4607: 
	addq	%rdx, %rax
 jmp .UNIQUE4608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4608: 
	movq	%rax, -256(%rbp)
 jmp .UNIQUE4609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4609: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4610: 
	je	.L402
 jmp .UNIQUE4611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4611: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4612: 
	cmpl	$48, %eax
 jmp .UNIQUE4613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4613: 
	jnb	.L403
 jmp .UNIQUE4614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4614: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4615: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4616: 
	movl	%eax, %eax
 jmp .UNIQUE4617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4617: 
	addq	%rdx, %rax
 jmp .UNIQUE4618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4618: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4619: 
	addl	$8, %edx
 jmp .UNIQUE4620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4620: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4621: 
	jmp	.L404
.L403:
 jmp .UNIQUE4622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4622: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4623: 
	movq	%rdx, %rax
 jmp .UNIQUE4624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4624: 
	addq	$8, %rdx
 jmp .UNIQUE4625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4625: 
	movq	%rdx, -208(%rbp)
.L404:
 jmp .UNIQUE4626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4626: 
	movq	(%rax), %rax
 jmp .UNIQUE4627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4627: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4628: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4629: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4630: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4631: 
	salq	$2, %rax
 jmp .UNIQUE4632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4632: 
	movl	$769, %edx
 jmp .UNIQUE4633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4633: 
	movl	$__func__.5717, %esi
 jmp .UNIQUE4634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4634: 
	movq	%rax, %rdi
 jmp .UNIQUE4635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4635: 
	call	error_checking_malloc
 jmp .UNIQUE4636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4636: 
	movq	%rax, 24(%rbx)
 jmp .UNIQUE4637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4637: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4638: 
	jmp	.L405
.L408:
 jmp .UNIQUE4639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4639: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4640: 
	movq	16(%rax), %rax
 jmp .UNIQUE4641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4641: 
	movq	24(%rax), %rax
 jmp .UNIQUE4642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4642: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE4643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4643: 
	salq	$2, %rdx
 jmp .UNIQUE4644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4644: 
	leaq	(%rax,%rdx), %rcx
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
	jnb	.L406
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
	jmp	.L407
.L406:
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
.L407:
 jmp .UNIQUE4660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4660: 
	movl	(%rax), %eax
 jmp .UNIQUE4661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4661: 
	movl	%eax, (%rcx)
 jmp .UNIQUE4662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4662: 
	addq	$1, -264(%rbp)
.L405:
 jmp .UNIQUE4663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4663: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4664: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4665: 
	jl	.L408
 jmp .UNIQUE4666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4666: 
	jmp	.L409
.L402:
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
	movq	16(%rax), %rax
 jmp .UNIQUE4669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4669: 
	movq	$0, 24(%rax)
.L409:
 jmp .UNIQUE4670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4670: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4671: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4672: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4673: 
	cmpl	$48, %eax
 jmp .UNIQUE4674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4674: 
	jnb	.L410
 jmp .UNIQUE4675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4675: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4676: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4677: 
	movl	%eax, %eax
 jmp .UNIQUE4678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4678: 
	addq	%rdx, %rax
 jmp .UNIQUE4679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4679: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4680: 
	addl	$8, %edx
 jmp .UNIQUE4681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4681: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4682: 
	jmp	.L411
.L410:
 jmp .UNIQUE4683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4683: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4684: 
	movq	%rdx, %rax
 jmp .UNIQUE4685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4685: 
	addq	$8, %rdx
 jmp .UNIQUE4686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4686: 
	movq	%rdx, -208(%rbp)
.L411:
 jmp .UNIQUE4687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4687: 
	movq	(%rax), %rax
 jmp .UNIQUE4688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4688: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4689: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4690: 
	movq	%rax, 32(%rcx)
 jmp .UNIQUE4691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4691: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4692: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4693: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4694: 
	addq	%rdx, %rax
 jmp .UNIQUE4695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4695: 
	movq	%rax, -256(%rbp)
 jmp .UNIQUE4696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4696: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4697: 
	je	.L412
 jmp .UNIQUE4698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4698: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4699: 
	cmpl	$48, %eax
 jmp .UNIQUE4700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4700: 
	jnb	.L413
 jmp .UNIQUE4701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4701: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4702: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4703: 
	movl	%eax, %eax
 jmp .UNIQUE4704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4704: 
	addq	%rdx, %rax
 jmp .UNIQUE4705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4705: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4706: 
	addl	$8, %edx
 jmp .UNIQUE4707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4707: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4708: 
	jmp	.L414
.L413:
 jmp .UNIQUE4709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4709: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4710: 
	movq	%rdx, %rax
 jmp .UNIQUE4711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4711: 
	addq	$8, %rdx
 jmp .UNIQUE4712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4712: 
	movq	%rdx, -208(%rbp)
.L414:
 jmp .UNIQUE4713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4713: 
	movq	(%rax), %rax
 jmp .UNIQUE4714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4714: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4715: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4716: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4717: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4718: 
	salq	$3, %rax
 jmp .UNIQUE4719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4719: 
	movl	$786, %edx
 jmp .UNIQUE4720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4720: 
	movl	$__func__.5717, %esi
 jmp .UNIQUE4721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4721: 
	movq	%rax, %rdi
 jmp .UNIQUE4722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4722: 
	call	error_checking_malloc
 jmp .UNIQUE4723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4723: 
	movq	%rax, 40(%rbx)
 jmp .UNIQUE4724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4724: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4725: 
	jmp	.L415
.L418:
 jmp .UNIQUE4726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4726: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4727: 
	movq	16(%rax), %rax
 jmp .UNIQUE4728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4728: 
	movq	40(%rax), %rax
 jmp .UNIQUE4729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4729: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE4730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4730: 
	salq	$3, %rdx
 jmp .UNIQUE4731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4731: 
	leaq	(%rax,%rdx), %rcx
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
	jnb	.L416
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
	jmp	.L417
.L416:
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
.L417:
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
	movq	%rax, (%rcx)
 jmp .UNIQUE4749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4749: 
	addq	$1, -264(%rbp)
.L415:
 jmp .UNIQUE4750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4750: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4751: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4752: 
	jl	.L418
 jmp .UNIQUE4753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4753: 
	jmp	.L419
.L412:
 jmp .UNIQUE4754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4754: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4755: 
	movq	16(%rax), %rax
 jmp .UNIQUE4756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4756: 
	movq	$0, 40(%rax)
.L419:
 jmp .UNIQUE4757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4757: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4758: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4759: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4760: 
	cmpl	$48, %eax
 jmp .UNIQUE4761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4761: 
	jnb	.L420
 jmp .UNIQUE4762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4762: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4763: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4764: 
	movl	%eax, %eax
 jmp .UNIQUE4765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4765: 
	addq	%rdx, %rax
 jmp .UNIQUE4766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4766: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4767: 
	addl	$8, %edx
 jmp .UNIQUE4768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4768: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4769: 
	jmp	.L421
.L420:
 jmp .UNIQUE4770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4770: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4771: 
	movq	%rdx, %rax
 jmp .UNIQUE4772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4772: 
	addq	$8, %rdx
 jmp .UNIQUE4773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4773: 
	movq	%rdx, -208(%rbp)
.L421:
 jmp .UNIQUE4774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4774: 
	movq	(%rax), %rax
 jmp .UNIQUE4775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4775: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4776: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4777: 
	movq	%rax, 48(%rcx)
 jmp .UNIQUE4778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4778: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4779: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE4780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4780: 
	movq	-256(%rbp), %rax
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
	movq	%rax, -256(%rbp)
 jmp .UNIQUE4783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4783: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4784: 
	je	.L422
 jmp .UNIQUE4785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4785: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4786: 
	cmpl	$48, %eax
 jmp .UNIQUE4787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4787: 
	jnb	.L423
 jmp .UNIQUE4788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4788: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4789: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4790: 
	movl	%eax, %eax
 jmp .UNIQUE4791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4791: 
	addq	%rdx, %rax
 jmp .UNIQUE4792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4792: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4793: 
	addl	$8, %edx
 jmp .UNIQUE4794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4794: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4795: 
	jmp	.L424
.L423:
 jmp .UNIQUE4796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4796: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4797: 
	movq	%rdx, %rax
 jmp .UNIQUE4798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4798: 
	addq	$8, %rdx
 jmp .UNIQUE4799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4799: 
	movq	%rdx, -208(%rbp)
.L424:
 jmp .UNIQUE4800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4800: 
	movq	(%rax), %rax
 jmp .UNIQUE4801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4801: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4802: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4803: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4804: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4805: 
	salq	$2, %rax
 jmp .UNIQUE4806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4806: 
	movl	$803, %edx
 jmp .UNIQUE4807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4807: 
	movl	$__func__.5717, %esi
 jmp .UNIQUE4808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4808: 
	movq	%rax, %rdi
 jmp .UNIQUE4809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4809: 
	call	error_checking_malloc
 jmp .UNIQUE4810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4810: 
	movq	%rax, 56(%rbx)
 jmp .UNIQUE4811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4811: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4812: 
	jmp	.L425
.L428:
 jmp .UNIQUE4813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4813: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4814: 
	movq	16(%rax), %rax
 jmp .UNIQUE4815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4815: 
	movq	56(%rax), %rax
 jmp .UNIQUE4816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4816: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE4817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4817: 
	salq	$2, %rdx
 jmp .UNIQUE4818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4818: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4819: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4820: 
	cmpl	$176, %eax
 jmp .UNIQUE4821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4821: 
	jnb	.L426
 jmp .UNIQUE4822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4822: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4823: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4824: 
	movl	%eax, %eax
 jmp .UNIQUE4825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4825: 
	addq	%rdx, %rax
 jmp .UNIQUE4826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4826: 
	movl	-212(%rbp), %edx
 jmp .UNIQUE4827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4827: 
	addl	$16, %edx
 jmp .UNIQUE4828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4828: 
	movl	%edx, -212(%rbp)
 jmp .UNIQUE4829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4829: 
	jmp	.L427
.L426:
 jmp .UNIQUE4830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4830: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4831: 
	movq	%rdx, %rax
 jmp .UNIQUE4832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4832: 
	addq	$8, %rdx
 jmp .UNIQUE4833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4833: 
	movq	%rdx, -208(%rbp)
.L427:
 jmp .UNIQUE4834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4834: 
	movsd	(%rax), %xmm0
 jmp .UNIQUE4835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4835: 
	unpcklpd	%xmm0, %xmm0
 jmp .UNIQUE4836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4836: 
	cvtpd2ps	%xmm0, %xmm0
 jmp .UNIQUE4837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4837: 
	movss	%xmm0, (%rcx)
 jmp .UNIQUE4838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4838: 
	addq	$1, -264(%rbp)
.L425:
 jmp .UNIQUE4839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4839: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4840: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4841: 
	jl	.L428
 jmp .UNIQUE4842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4842: 
	jmp	.L429
.L422:
 jmp .UNIQUE4843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4843: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4844: 
	movq	16(%rax), %rax
 jmp .UNIQUE4845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4845: 
	movq	$0, 56(%rax)
.L429:
 jmp .UNIQUE4846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4846: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4847: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4848: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4849: 
	cmpl	$48, %eax
 jmp .UNIQUE4850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4850: 
	jnb	.L430
 jmp .UNIQUE4851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4851: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4852: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4853: 
	movl	%eax, %eax
 jmp .UNIQUE4854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4854: 
	addq	%rdx, %rax
 jmp .UNIQUE4855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4855: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4856: 
	addl	$8, %edx
 jmp .UNIQUE4857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4857: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4858: 
	jmp	.L431
.L430:
 jmp .UNIQUE4859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4859: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4860: 
	movq	%rdx, %rax
 jmp .UNIQUE4861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4861: 
	addq	$8, %rdx
 jmp .UNIQUE4862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4862: 
	movq	%rdx, -208(%rbp)
.L431:
 jmp .UNIQUE4863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4863: 
	movq	(%rax), %rax
 jmp .UNIQUE4864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4864: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4865: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4866: 
	movq	%rax, 64(%rcx)
 jmp .UNIQUE4867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4867: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4868: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4869: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4870: 
	addq	%rdx, %rax
 jmp .UNIQUE4871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4871: 
	movq	%rax, -256(%rbp)
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
	je	.L432
 jmp .UNIQUE4874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4874: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4875: 
	cmpl	$48, %eax
 jmp .UNIQUE4876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4876: 
	jnb	.L433
 jmp .UNIQUE4877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4877: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4878: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4879: 
	movl	%eax, %eax
 jmp .UNIQUE4880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4880: 
	addq	%rdx, %rax
 jmp .UNIQUE4881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4881: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4882: 
	addl	$8, %edx
 jmp .UNIQUE4883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4883: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4884: 
	jmp	.L434
.L433:
 jmp .UNIQUE4885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4885: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4886: 
	movq	%rdx, %rax
 jmp .UNIQUE4887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4887: 
	addq	$8, %rdx
 jmp .UNIQUE4888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4888: 
	movq	%rdx, -208(%rbp)
.L434:
 jmp .UNIQUE4889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4889: 
	movq	(%rax), %rax
 jmp .UNIQUE4890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4890: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4891: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4892: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4893: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4894: 
	salq	$3, %rax
 jmp .UNIQUE4895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4895: 
	movl	$820, %edx
 jmp .UNIQUE4896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4896: 
	movl	$__func__.5717, %esi
 jmp .UNIQUE4897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4897: 
	movq	%rax, %rdi
 jmp .UNIQUE4898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4898: 
	call	error_checking_malloc
 jmp .UNIQUE4899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4899: 
	movq	%rax, 72(%rbx)
 jmp .UNIQUE4900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4900: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4901: 
	jmp	.L435
.L438:
 jmp .UNIQUE4902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4902: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4903: 
	movq	16(%rax), %rax
 jmp .UNIQUE4904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4904: 
	movq	72(%rax), %rax
 jmp .UNIQUE4905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4905: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE4906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4906: 
	salq	$3, %rdx
 jmp .UNIQUE4907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4907: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4908: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4909: 
	cmpl	$176, %eax
 jmp .UNIQUE4910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4910: 
	jnb	.L436
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
	movl	-212(%rbp), %eax
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
	movl	-212(%rbp), %edx
 jmp .UNIQUE4916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4916: 
	addl	$16, %edx
 jmp .UNIQUE4917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4917: 
	movl	%edx, -212(%rbp)
 jmp .UNIQUE4918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4918: 
	jmp	.L437
.L436:
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
.L437:
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
	movq	%rax, (%rcx)
 jmp .UNIQUE4925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4925: 
	addq	$1, -264(%rbp)
.L435:
 jmp .UNIQUE4926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4926: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4927: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4928: 
	jl	.L438
 jmp .UNIQUE4929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4929: 
	jmp	.L439
.L432:
 jmp .UNIQUE4930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4930: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4931: 
	movq	16(%rax), %rax
 jmp .UNIQUE4932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4932: 
	movq	$0, 72(%rax)
.L439:
 jmp .UNIQUE4933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4933: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4934: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4935: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4936: 
	cmpl	$48, %eax
 jmp .UNIQUE4937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4937: 
	jnb	.L440
 jmp .UNIQUE4938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4938: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4939: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4940: 
	movl	%eax, %eax
 jmp .UNIQUE4941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4941: 
	addq	%rdx, %rax
 jmp .UNIQUE4942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4942: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4943: 
	addl	$8, %edx
 jmp .UNIQUE4944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4944: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4945: 
	jmp	.L441
.L440:
 jmp .UNIQUE4946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4946: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4947: 
	movq	%rdx, %rax
 jmp .UNIQUE4948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4948: 
	addq	$8, %rdx
 jmp .UNIQUE4949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4949: 
	movq	%rdx, -208(%rbp)
.L441:
 jmp .UNIQUE4950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4950: 
	movq	(%rax), %rax
 jmp .UNIQUE4951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4951: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4952: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4953: 
	movq	%rax, 80(%rcx)
 jmp .UNIQUE4954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4954: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4955: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4956: 
	movq	-256(%rbp), %rax
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
	movq	%rax, -256(%rbp)
 jmp .UNIQUE4959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4959: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4960: 
	je	.L442
 jmp .UNIQUE4961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4961: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4962: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4963: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4964: 
	salq	$3, %rax
 jmp .UNIQUE4965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4965: 
	movl	$836, %edx
 jmp .UNIQUE4966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4966: 
	movl	$__func__.5717, %esi
 jmp .UNIQUE4967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4967: 
	movq	%rax, %rdi
 jmp .UNIQUE4968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4968: 
	call	error_checking_malloc
 jmp .UNIQUE4969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4969: 
	movq	%rax, 88(%rbx)
 jmp .UNIQUE4970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4970: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4971: 
	jmp	.L443
.L446:
 jmp .UNIQUE4972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4972: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4973: 
	movq	16(%rax), %rax
 jmp .UNIQUE4974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4974: 
	movq	88(%rax), %rax
 jmp .UNIQUE4975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4975: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE4976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4976: 
	salq	$3, %rdx
 jmp .UNIQUE4977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4977: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4978: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4979: 
	cmpl	$48, %eax
 jmp .UNIQUE4980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4980: 
	jnb	.L444
 jmp .UNIQUE4981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4981: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4982: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4983: 
	movl	%eax, %eax
 jmp .UNIQUE4984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4984: 
	addq	%rdx, %rax
 jmp .UNIQUE4985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4985: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4986: 
	addl	$8, %edx
 jmp .UNIQUE4987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4987: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4988: 
	jmp	.L445
.L444:
 jmp .UNIQUE4989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4989: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4990: 
	movq	%rdx, %rax
 jmp .UNIQUE4991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4991: 
	addq	$8, %rdx
 jmp .UNIQUE4992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4992: 
	movq	%rdx, -208(%rbp)
.L445:
 jmp .UNIQUE4993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4993: 
	movq	(%rax), %rax
 jmp .UNIQUE4994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4994: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4995: 
	addq	$1, -264(%rbp)
.L443:
 jmp .UNIQUE4996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4996: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4997: 
	cmpq	-232(%rbp), %rax
 jmp .UNIQUE4998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4998: 
	jl	.L446
 jmp .UNIQUE4999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4999: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5000: 
	cmpl	$48, %eax
 jmp .UNIQUE5001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5001: 
	jnb	.L447
 jmp .UNIQUE5002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5002: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE5003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5003: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5004: 
	movl	%eax, %eax
 jmp .UNIQUE5005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5005: 
	addq	%rdx, %rax
 jmp .UNIQUE5006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5006: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE5007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5007: 
	addl	$8, %edx
 jmp .UNIQUE5008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5008: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE5009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5009: 
	jmp	.L448
.L447:
 jmp .UNIQUE5010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5010: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE5011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5011: 
	movq	%rdx, %rax
 jmp .UNIQUE5012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5012: 
	addq	$8, %rdx
 jmp .UNIQUE5013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5013: 
	movq	%rdx, -208(%rbp)
.L448:
 jmp .UNIQUE5014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5014: 
	movq	(%rax), %rax
 jmp .UNIQUE5015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5015: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE5016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5016: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5017: 
	movq	16(%rax), %rbx
 jmp .UNIQUE5018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5018: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE5019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5019: 
	salq	$3, %rax
 jmp .UNIQUE5020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5020: 
	movl	$843, %edx
 jmp .UNIQUE5021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5021: 
	movl	$__func__.5717, %esi
 jmp .UNIQUE5022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5022: 
	movq	%rax, %rdi
 jmp .UNIQUE5023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5023: 
	call	error_checking_malloc
 jmp .UNIQUE5024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5024: 
	movq	%rax, 96(%rbx)
 jmp .UNIQUE5025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5025: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE5026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5026: 
	jmp	.L449
.L452:
 jmp .UNIQUE5027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5027: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5028: 
	movq	16(%rax), %rax
 jmp .UNIQUE5029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5029: 
	movq	96(%rax), %rax
 jmp .UNIQUE5030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5030: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE5031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5031: 
	salq	$3, %rdx
 jmp .UNIQUE5032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5032: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE5033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5033: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5034: 
	cmpl	$48, %eax
 jmp .UNIQUE5035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5035: 
	jnb	.L450
 jmp .UNIQUE5036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5036: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE5037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5037: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5038: 
	movl	%eax, %eax
 jmp .UNIQUE5039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5039: 
	addq	%rdx, %rax
 jmp .UNIQUE5040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5040: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE5041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5041: 
	addl	$8, %edx
 jmp .UNIQUE5042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5042: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE5043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5043: 
	jmp	.L451
.L450:
 jmp .UNIQUE5044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5044: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE5045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5045: 
	movq	%rdx, %rax
 jmp .UNIQUE5046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5046: 
	addq	$8, %rdx
 jmp .UNIQUE5047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5047: 
	movq	%rdx, -208(%rbp)
.L451:
 jmp .UNIQUE5048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5048: 
	movq	(%rax), %rax
 jmp .UNIQUE5049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5049: 
	movq	%rax, (%rcx)
 jmp .UNIQUE5050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5050: 
	addq	$1, -264(%rbp)
.L449:
 jmp .UNIQUE5051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5051: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE5052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5052: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE5053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5053: 
	jl	.L452
 jmp .UNIQUE5054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5054: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE5055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5055: 
	movq	%rax, -264(%rbp)
 jmp .UNIQUE5056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5056: 
	jmp	.L453
.L454:
 jmp .UNIQUE5057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5057: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5058: 
	movq	16(%rax), %rax
 jmp .UNIQUE5059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5059: 
	movq	96(%rax), %rax
 jmp .UNIQUE5060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5060: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE5061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5061: 
	salq	$3, %rdx
 jmp .UNIQUE5062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5062: 
	addq	%rdx, %rax
 jmp .UNIQUE5063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5063: 
	movq	$0, (%rax)
 jmp .UNIQUE5064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5064: 
	addq	$1, -264(%rbp)
.L453:
 jmp .UNIQUE5065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5065: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE5066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5066: 
	cmpq	-232(%rbp), %rax
 jmp .UNIQUE5067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5067: 
	jl	.L454
 jmp .UNIQUE5068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5068: 
	jmp	.L455
.L442:
 jmp .UNIQUE5069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5069: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5070: 
	movq	16(%rax), %rax
 jmp .UNIQUE5071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5071: 
	movq	$0, 88(%rax)
 jmp .UNIQUE5072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5072: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5073: 
	movq	16(%rax), %rax
 jmp .UNIQUE5074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5074: 
	movq	$0, 96(%rax)
.L455:
 jmp .UNIQUE5075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5075: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5076: 
	movq	16(%rax), %rcx
 jmp .UNIQUE5077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5077: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5078: 
	cmpl	$48, %eax
 jmp .UNIQUE5079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5079: 
	jnb	.L456
 jmp .UNIQUE5080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5080: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE5081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5081: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5082: 
	movl	%eax, %eax
 jmp .UNIQUE5083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5083: 
	addq	%rdx, %rax
 jmp .UNIQUE5084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5084: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE5085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5085: 
	addl	$8, %edx
 jmp .UNIQUE5086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5086: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE5087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5087: 
	jmp	.L457
.L456:
 jmp .UNIQUE5088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5088: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE5089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5089: 
	movq	%rdx, %rax
 jmp .UNIQUE5090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5090: 
	addq	$8, %rdx
 jmp .UNIQUE5091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5091: 
	movq	%rdx, -208(%rbp)
.L457:
 jmp .UNIQUE5092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5092: 
	movq	(%rax), %rax
 jmp .UNIQUE5093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5093: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE5094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5094: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE5095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5095: 
	movq	%rax, 104(%rcx)
 jmp .UNIQUE5096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5096: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE5097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5097: 
	je	.L458
 jmp .UNIQUE5098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5098: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5099: 
	movq	16(%rax), %rbx
 jmp .UNIQUE5100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5100: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE5101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5101: 
	salq	$3, %rax
 jmp .UNIQUE5102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5102: 
	movl	$864, %edx
 jmp .UNIQUE5103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5103: 
	movl	$__func__.5717, %esi
 jmp .UNIQUE5104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5104: 
	movq	%rax, %rdi
 jmp .UNIQUE5105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5105: 
	call	error_checking_malloc
 jmp .UNIQUE5106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5106: 
	movq	%rax, 112(%rbx)
 jmp .UNIQUE5107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5107: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE5108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5108: 
	jmp	.L459
.L462:
 jmp .UNIQUE5109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5109: 
	movq	-240(%rbp), %rax
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
	movq	112(%rax), %rax
 jmp .UNIQUE5112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5112: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE5113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5113: 
	salq	$3, %rdx
 jmp .UNIQUE5114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5114: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE5115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5115: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5116: 
	cmpl	$48, %eax
 jmp .UNIQUE5117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5117: 
	jnb	.L460
 jmp .UNIQUE5118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5118: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE5119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5119: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5120: 
	movl	%eax, %eax
 jmp .UNIQUE5121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5121: 
	addq	%rdx, %rax
 jmp .UNIQUE5122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5122: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE5123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5123: 
	addl	$8, %edx
 jmp .UNIQUE5124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5124: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE5125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5125: 
	jmp	.L461
.L460:
 jmp .UNIQUE5126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5126: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE5127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5127: 
	movq	%rdx, %rax
 jmp .UNIQUE5128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5128: 
	addq	$8, %rdx
 jmp .UNIQUE5129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5129: 
	movq	%rdx, -208(%rbp)
.L461:
 jmp .UNIQUE5130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5130: 
	movq	(%rax), %rax
 jmp .UNIQUE5131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5131: 
	movq	%rax, (%rcx)
 jmp .UNIQUE5132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5132: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5133: 
	movq	16(%rax), %rax
 jmp .UNIQUE5134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5134: 
	movq	112(%rax), %rax
 jmp .UNIQUE5135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5135: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE5136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5136: 
	salq	$3, %rdx
 jmp .UNIQUE5137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5137: 
	addq	%rdx, %rax
 jmp .UNIQUE5138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5138: 
	movq	(%rax), %rax
 jmp .UNIQUE5139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5139: 
	addq	%rax, -256(%rbp)
 jmp .UNIQUE5140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5140: 
	addq	$1, -264(%rbp)
.L459:
 jmp .UNIQUE5141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5141: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE5142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5142: 
	cmpq	-232(%rbp), %rax
 jmp .UNIQUE5143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5143: 
	jl	.L462
 jmp .UNIQUE5144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5144: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5145: 
	cmpl	$48, %eax
 jmp .UNIQUE5146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5146: 
	jnb	.L463
 jmp .UNIQUE5147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5147: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE5148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5148: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5149: 
	movl	%eax, %eax
 jmp .UNIQUE5150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5150: 
	addq	%rdx, %rax
 jmp .UNIQUE5151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5151: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE5152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5152: 
	addl	$8, %edx
 jmp .UNIQUE5153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5153: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE5154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5154: 
	jmp	.L464
.L463:
 jmp .UNIQUE5155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5155: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE5156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5156: 
	movq	%rdx, %rax
 jmp .UNIQUE5157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5157: 
	addq	$8, %rdx
 jmp .UNIQUE5158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5158: 
	movq	%rdx, -208(%rbp)
.L464:
 jmp .UNIQUE5159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5159: 
	movq	(%rax), %rax
 jmp .UNIQUE5160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5160: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE5161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5161: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5162: 
	movq	16(%rax), %rbx
 jmp .UNIQUE5163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5163: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE5164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5164: 
	salq	$3, %rax
 jmp .UNIQUE5165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5165: 
	movl	$872, %edx
 jmp .UNIQUE5166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5166: 
	movl	$__func__.5717, %esi
 jmp .UNIQUE5167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5167: 
	movq	%rax, %rdi
 jmp .UNIQUE5168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5168: 
	call	error_checking_malloc
 jmp .UNIQUE5169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5169: 
	movq	%rax, 120(%rbx)
 jmp .UNIQUE5170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5170: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE5171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5171: 
	jmp	.L465
.L468:
 jmp .UNIQUE5172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5172: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5173: 
	movq	16(%rax), %rax
 jmp .UNIQUE5174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5174: 
	movq	120(%rax), %rax
 jmp .UNIQUE5175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5175: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE5176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5176: 
	salq	$3, %rdx
 jmp .UNIQUE5177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5177: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE5178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5178: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5179: 
	cmpl	$48, %eax
 jmp .UNIQUE5180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5180: 
	jnb	.L466
 jmp .UNIQUE5181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5181: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE5182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5182: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5183: 
	movl	%eax, %eax
 jmp .UNIQUE5184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5184: 
	addq	%rdx, %rax
 jmp .UNIQUE5185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5185: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE5186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5186: 
	addl	$8, %edx
 jmp .UNIQUE5187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5187: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE5188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5188: 
	jmp	.L467
.L466:
 jmp .UNIQUE5189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5189: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE5190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5190: 
	movq	%rdx, %rax
 jmp .UNIQUE5191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5191: 
	addq	$8, %rdx
 jmp .UNIQUE5192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5192: 
	movq	%rdx, -208(%rbp)
.L467:
 jmp .UNIQUE5193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5193: 
	movq	(%rax), %rax
 jmp .UNIQUE5194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5194: 
	movq	%rax, (%rcx)
 jmp .UNIQUE5195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5195: 
	addq	$1, -264(%rbp)
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
	movq	-264(%rbp), %rax
 jmp .UNIQUE5197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5197: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE5198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5198: 
	jl	.L468
 jmp .UNIQUE5199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5199: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE5200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5200: 
	movq	%rax, -264(%rbp)
 jmp .UNIQUE5201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5201: 
	jmp	.L469
.L470:
 jmp .UNIQUE5202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5202: 
	movq	-240(%rbp), %rax
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
	movq	120(%rax), %rax
 jmp .UNIQUE5205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5205: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE5206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5206: 
	salq	$3, %rdx
 jmp .UNIQUE5207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5207: 
	addq	%rdx, %rax
 jmp .UNIQUE5208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5208: 
	movq	$0, (%rax)
 jmp .UNIQUE5209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5209: 
	addq	$1, -264(%rbp)
.L469:
 jmp .UNIQUE5210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5210: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE5211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5211: 
	cmpq	-232(%rbp), %rax
 jmp .UNIQUE5212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5212: 
	jl	.L470
 jmp .UNIQUE5213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5213: 
	jmp	.L389
.L458:
 jmp .UNIQUE5214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5214: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5215: 
	movq	16(%rax), %rax
 jmp .UNIQUE5216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5216: 
	movq	$0, 112(%rax)
 jmp .UNIQUE5217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5217: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5218: 
	movq	16(%rax), %rax
 jmp .UNIQUE5219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5219: 
	movq	$0, 120(%rax)
.L389:
 jmp .UNIQUE5220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5220: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5221: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE5222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5222: 
	movq	%rdx, (%rax)
 jmp .UNIQUE5223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5223: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5224: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE5225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5225: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5226: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5227: 
	addq	$280, %rsp
 jmp .UNIQUE5228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5228: 
	popq	%rbx
 jmp .UNIQUE5229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5229: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5230: 
	ret
	.cfi_endproc
.LFE82:
	.size	init_function_params_with_uninitialised_elements, .-init_function_params_with_uninitialised_elements
	.section	.rodata
.LC81:
	.string	"No parameters? Strange..."
	.text
	.globl	put_fun_params_into_secure_stack
	.type	put_fun_params_into_secure_stack, @function
put_fun_params_into_secure_stack:
.LFB83:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5231: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5232: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5233: 
	pushq	%rbx
 jmp .UNIQUE5234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5234: 
	subq	$88, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE5235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5235: 
	movq	%rdi, -88(%rbp)
 jmp .UNIQUE5236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5236: 
	movl	$916, %edx
 jmp .UNIQUE5237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5237: 
	movl	$__func__.5760, %esi
 jmp .UNIQUE5238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5238: 
	movl	$24, %edi
 jmp .UNIQUE5239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5239: 
	call	error_checking_malloc
 jmp .UNIQUE5240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5240: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE5241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5241: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5242: 
	movq	(%rax), %rdx
 jmp .UNIQUE5243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5243: 
	movq	-64(%rbp), %rax
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
	movq	$0, 8(%rax)
 jmp .UNIQUE5247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5247: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5248: 
	movq	16(%rax), %rax
 jmp .UNIQUE5249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5249: 
	testq	%rax, %rax
 jmp .UNIQUE5250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5250: 
	je	.L473
 jmp .UNIQUE5251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5251: 
	movl	$924, %edx
 jmp .UNIQUE5252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5252: 
	movl	$__func__.5760, %esi
 jmp .UNIQUE5253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5253: 
	movl	$128, %edi
 jmp .UNIQUE5254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5254: 
	call	error_checking_malloc
 jmp .UNIQUE5255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5255: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE5256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5256: 
	movq	%rax, 16(%rdx)
 jmp .UNIQUE5257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5257: 
	jmp	.L474
.L473:
 jmp .UNIQUE5258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5258: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5259: 
	movq	$0, 16(%rax)
 jmp .UNIQUE5260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5260: 
	movl	$.LC81, %edi
 jmp .UNIQUE5261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5261: 
	call	puts
.L474:
 jmp .UNIQUE5262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5262: 
	movq	-88(%rbp), %rax
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
	testq	%rax, %rax
 jmp .UNIQUE5265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5265: 
	je	.L475
 jmp .UNIQUE5266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5266: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5267: 
	movq	16(%rax), %rax
 jmp .UNIQUE5268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5268: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE5269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5269: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5270: 
	movq	(%rdx), %rdx
 jmp .UNIQUE5271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5271: 
	movq	%rdx, (%rax)
 jmp .UNIQUE5272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5272: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5273: 
	movq	16(%rax), %rax
 jmp .UNIQUE5274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5274: 
	movq	(%rax), %rax
 jmp .UNIQUE5275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5275: 
	movq	%rax, -56(%rbp)
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
	movq	%rax, %rdi
 jmp .UNIQUE5278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5278: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5279: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5280: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5281: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5282: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE5283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5283: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5284: 
	movq	8(%rax), %rdx
 jmp .UNIQUE5285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5285: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5286: 
	addq	%rax, %rdx
 jmp .UNIQUE5287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5287: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5288: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5289: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5290: 
	movq	16(%rax), %rax
 jmp .UNIQUE5291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5291: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5292: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5293: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5294: 
	je	.L476
 jmp .UNIQUE5295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5295: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5296: 
	movq	16(%rax), %rax
 jmp .UNIQUE5297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5297: 
	movq	8(%rax), %rcx
 jmp .UNIQUE5298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5298: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5299: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5300: 
	movq	%rcx, %rsi
 jmp .UNIQUE5301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5301: 
	movq	%rax, %rdi
 jmp .UNIQUE5302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5302: 
	call	insert_data_into_stack_mem
.L476:
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
	movq	16(%rdx), %rdx
 jmp .UNIQUE5308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5308: 
	movq	%rdx, 16(%rax)
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
	movq	16(%rax), %rax
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
	movq	-56(%rbp), %rax
 jmp .UNIQUE5314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5314: 
	salq	$2, %rax
 jmp .UNIQUE5315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5315: 
	movq	%rax, %rdi
 jmp .UNIQUE5316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5316: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5317: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5318: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5319: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5320: 
	movq	%rax, -48(%rbp)
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
	movq	8(%rax), %rdx
 jmp .UNIQUE5323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5323: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5324: 
	addq	%rax, %rdx
 jmp .UNIQUE5325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5325: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5326: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5327: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5328: 
	movq	16(%rax), %rax
 jmp .UNIQUE5329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5329: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5330: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE5331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5331: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5332: 
	je	.L477
 jmp .UNIQUE5333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5333: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5334: 
	movq	16(%rax), %rax
 jmp .UNIQUE5335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5335: 
	movq	24(%rax), %rcx
 jmp .UNIQUE5336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5336: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5337: 
	salq	$2, %rax
 jmp .UNIQUE5338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5338: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5339: 
	movq	%rcx, %rsi
 jmp .UNIQUE5340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5340: 
	movq	%rax, %rdi
 jmp .UNIQUE5341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5341: 
	call	insert_data_into_stack_mem
.L477:
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
	movq	16(%rax), %rax
 jmp .UNIQUE5344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5344: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE5345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5345: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5346: 
	movq	32(%rdx), %rdx
 jmp .UNIQUE5347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5347: 
	movq	%rdx, 32(%rax)
 jmp .UNIQUE5348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5348: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5349: 
	movq	16(%rax), %rax
 jmp .UNIQUE5350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5350: 
	movq	32(%rax), %rax
 jmp .UNIQUE5351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5351: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE5352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5352: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5353: 
	salq	$3, %rax
 jmp .UNIQUE5354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5354: 
	movq	%rax, %rdi
 jmp .UNIQUE5355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5355: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5356: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5357: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5358: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5359: 
	movq	%rax, -48(%rbp)
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
	movq	8(%rax), %rdx
 jmp .UNIQUE5362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5362: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5363: 
	addq	%rax, %rdx
 jmp .UNIQUE5364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5364: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5365: 
	movq	%rdx, 8(%rax)
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
	movq	16(%rax), %rax
 jmp .UNIQUE5368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5368: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5369: 
	movq	%rdx, 40(%rax)
 jmp .UNIQUE5370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5370: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5371: 
	je	.L478
 jmp .UNIQUE5372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5372: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5373: 
	movq	16(%rax), %rax
 jmp .UNIQUE5374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5374: 
	movq	40(%rax), %rcx
 jmp .UNIQUE5375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5375: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5376: 
	salq	$3, %rax
 jmp .UNIQUE5377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5377: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5378: 
	movq	%rcx, %rsi
 jmp .UNIQUE5379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5379: 
	movq	%rax, %rdi
 jmp .UNIQUE5380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5380: 
	call	insert_data_into_stack_mem
.L478:
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
	movq	-88(%rbp), %rdx
 jmp .UNIQUE5384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5384: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5385: 
	movq	48(%rdx), %rdx
 jmp .UNIQUE5386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5386: 
	movq	%rdx, 48(%rax)
 jmp .UNIQUE5387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5387: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5388: 
	movq	16(%rax), %rax
 jmp .UNIQUE5389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5389: 
	movq	48(%rax), %rax
 jmp .UNIQUE5390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5390: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE5391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5391: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5392: 
	salq	$2, %rax
 jmp .UNIQUE5393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5393: 
	movq	%rax, %rdi
 jmp .UNIQUE5394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5394: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5395: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5396: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5397: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5398: 
	movq	%rax, -48(%rbp)
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
	movq	8(%rax), %rdx
 jmp .UNIQUE5401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5401: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5402: 
	addq	%rax, %rdx
 jmp .UNIQUE5403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5403: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5404: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5405: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5406: 
	movq	16(%rax), %rax
 jmp .UNIQUE5407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5407: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5408: 
	movq	%rdx, 56(%rax)
 jmp .UNIQUE5409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5409: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5410: 
	je	.L479
 jmp .UNIQUE5411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5411: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5412: 
	movq	16(%rax), %rax
 jmp .UNIQUE5413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5413: 
	movq	56(%rax), %rcx
 jmp .UNIQUE5414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5414: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5415: 
	salq	$2, %rax
 jmp .UNIQUE5416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5416: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5417: 
	movq	%rcx, %rsi
 jmp .UNIQUE5418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5418: 
	movq	%rax, %rdi
 jmp .UNIQUE5419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5419: 
	call	insert_data_into_stack_mem
.L479:
 jmp .UNIQUE5420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5420: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5421: 
	movq	16(%rax), %rax
 jmp .UNIQUE5422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5422: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE5423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5423: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5424: 
	movq	64(%rdx), %rdx
 jmp .UNIQUE5425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5425: 
	movq	%rdx, 64(%rax)
 jmp .UNIQUE5426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5426: 
	movq	-64(%rbp), %rax
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
	movq	64(%rax), %rax
 jmp .UNIQUE5429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5429: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE5430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5430: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5431: 
	salq	$3, %rax
 jmp .UNIQUE5432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5432: 
	movq	%rax, %rdi
 jmp .UNIQUE5433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5433: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5434: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5435: 
	movq	%rdx, -24(%rbp)
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
	movq	%rax, -48(%rbp)
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
	movq	8(%rax), %rdx
 jmp .UNIQUE5440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5440: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5441: 
	addq	%rax, %rdx
 jmp .UNIQUE5442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5442: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5443: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5444: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5445: 
	movq	16(%rax), %rax
 jmp .UNIQUE5446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5446: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5447: 
	movq	%rdx, 72(%rax)
 jmp .UNIQUE5448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5448: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5449: 
	je	.L480
 jmp .UNIQUE5450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5450: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5451: 
	movq	16(%rax), %rax
 jmp .UNIQUE5452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5452: 
	movq	72(%rax), %rcx
 jmp .UNIQUE5453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5453: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5454: 
	salq	$3, %rax
 jmp .UNIQUE5455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5455: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5456: 
	movq	%rcx, %rsi
 jmp .UNIQUE5457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5457: 
	movq	%rax, %rdi
 jmp .UNIQUE5458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5458: 
	call	insert_data_into_stack_mem
.L480:
 jmp .UNIQUE5459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5459: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5460: 
	movq	16(%rax), %rax
 jmp .UNIQUE5461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5461: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE5462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5462: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5463: 
	movq	80(%rdx), %rdx
 jmp .UNIQUE5464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5464: 
	movq	%rdx, 80(%rax)
 jmp .UNIQUE5465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5465: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5466: 
	movq	16(%rax), %rax
 jmp .UNIQUE5467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5467: 
	movq	80(%rax), %rax
 jmp .UNIQUE5468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5468: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE5469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5469: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5470: 
	salq	$3, %rax
 jmp .UNIQUE5471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5471: 
	movq	%rax, %rdi
 jmp .UNIQUE5472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5472: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5473: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5474: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5475: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5476: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE5477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5477: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5478: 
	movq	8(%rax), %rdx
 jmp .UNIQUE5479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5479: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5480: 
	addq	%rax, %rdx
 jmp .UNIQUE5481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5481: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5482: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5483: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5484: 
	movq	16(%rax), %rax
 jmp .UNIQUE5485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5485: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5486: 
	movq	%rdx, 96(%rax)
 jmp .UNIQUE5487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5487: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5488: 
	je	.L481
 jmp .UNIQUE5489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5489: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5490: 
	movq	16(%rax), %rax
 jmp .UNIQUE5491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5491: 
	movq	96(%rax), %rcx
 jmp .UNIQUE5492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5492: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5493: 
	salq	$3, %rax
 jmp .UNIQUE5494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5494: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5495: 
	movq	%rcx, %rsi
 jmp .UNIQUE5496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5496: 
	movq	%rax, %rdi
 jmp .UNIQUE5497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5497: 
	call	insert_data_into_stack_mem
.L481:
 jmp .UNIQUE5498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5498: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5499: 
	movq	16(%rax), %rbx
 jmp .UNIQUE5500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5500: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5501: 
	salq	$3, %rax
 jmp .UNIQUE5502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5502: 
	movl	$1006, %edx
 jmp .UNIQUE5503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5503: 
	movl	$__func__.5760, %esi
 jmp .UNIQUE5504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5504: 
	movq	%rax, %rdi
 jmp .UNIQUE5505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5505: 
	call	error_checking_malloc
 jmp .UNIQUE5506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5506: 
	movq	%rax, 88(%rbx)
 jmp .UNIQUE5507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5507: 
	movq	$0, -72(%rbp)
 jmp .UNIQUE5508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5508: 
	jmp	.L482
.L483:
 jmp .UNIQUE5509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5509: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5510: 
	movq	16(%rax), %rax
 jmp .UNIQUE5511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5511: 
	movq	88(%rax), %rax
 jmp .UNIQUE5512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5512: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE5513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5513: 
	salq	$3, %rdx
 jmp .UNIQUE5514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5514: 
	addq	%rax, %rdx
 jmp .UNIQUE5515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5515: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5516: 
	movq	16(%rax), %rax
 jmp .UNIQUE5517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5517: 
	movq	88(%rax), %rax
 jmp .UNIQUE5518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5518: 
	movq	-72(%rbp), %rcx
 jmp .UNIQUE5519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5519: 
	salq	$3, %rcx
 jmp .UNIQUE5520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5520: 
	addq	%rcx, %rax
 jmp .UNIQUE5521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5521: 
	movq	(%rax), %rax
 jmp .UNIQUE5522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5522: 
	movq	%rax, (%rdx)
 jmp .UNIQUE5523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5523: 
	addq	$1, -72(%rbp)
.L482:
 jmp .UNIQUE5524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5524: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE5525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5525: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE5526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5526: 
	jl	.L483
 jmp .UNIQUE5527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5527: 
	movq	-64(%rbp), %rax
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
	movq	-88(%rbp), %rdx
 jmp .UNIQUE5530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5530: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5531: 
	movq	104(%rdx), %rdx
 jmp .UNIQUE5532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5532: 
	movq	%rdx, 104(%rax)
 jmp .UNIQUE5533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5533: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5534: 
	movq	16(%rax), %rax
 jmp .UNIQUE5535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5535: 
	movq	104(%rax), %rax
 jmp .UNIQUE5536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5536: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE5537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5537: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5538: 
	movq	16(%rax), %rbx
 jmp .UNIQUE5539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5539: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5540: 
	salq	$3, %rax
 jmp .UNIQUE5541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5541: 
	movl	$1013, %edx
 jmp .UNIQUE5542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5542: 
	movl	$__func__.5760, %esi
 jmp .UNIQUE5543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5543: 
	movq	%rax, %rdi
 jmp .UNIQUE5544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5544: 
	call	error_checking_malloc
 jmp .UNIQUE5545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5545: 
	movq	%rax, 112(%rbx)
 jmp .UNIQUE5546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5546: 
	movq	$0, -72(%rbp)
 jmp .UNIQUE5547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5547: 
	jmp	.L484
.L485:
 jmp .UNIQUE5548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5548: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5549: 
	movq	16(%rax), %rax
 jmp .UNIQUE5550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5550: 
	movq	112(%rax), %rax
 jmp .UNIQUE5551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5551: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE5552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5552: 
	salq	$3, %rdx
 jmp .UNIQUE5553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5553: 
	addq	%rax, %rdx
 jmp .UNIQUE5554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5554: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5555: 
	movq	16(%rax), %rax
 jmp .UNIQUE5556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5556: 
	movq	112(%rax), %rax
 jmp .UNIQUE5557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5557: 
	movq	-72(%rbp), %rcx
 jmp .UNIQUE5558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5558: 
	salq	$3, %rcx
 jmp .UNIQUE5559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5559: 
	addq	%rcx, %rax
 jmp .UNIQUE5560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5560: 
	movq	(%rax), %rax
 jmp .UNIQUE5561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5561: 
	movq	%rax, (%rdx)
 jmp .UNIQUE5562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5562: 
	addq	$1, -72(%rbp)
.L484:
 jmp .UNIQUE5563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5563: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE5564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5564: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE5565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5565: 
	jl	.L485
 jmp .UNIQUE5566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5566: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5567: 
	movq	16(%rax), %rbx
 jmp .UNIQUE5568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5568: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5569: 
	salq	$3, %rax
 jmp .UNIQUE5570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5570: 
	movl	$1016, %edx
 jmp .UNIQUE5571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5571: 
	movl	$__func__.5760, %esi
 jmp .UNIQUE5572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5572: 
	movq	%rax, %rdi
 jmp .UNIQUE5573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5573: 
	call	error_checking_malloc
 jmp .UNIQUE5574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5574: 
	movq	%rax, 120(%rbx)
 jmp .UNIQUE5575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5575: 
	movq	$0, -72(%rbp)
 jmp .UNIQUE5576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5576: 
	jmp	.L486
.L488:
 jmp .UNIQUE5577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5577: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5578: 
	movq	16(%rax), %rax
 jmp .UNIQUE5579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5579: 
	movq	112(%rax), %rax
 jmp .UNIQUE5580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5580: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE5581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5581: 
	salq	$3, %rdx
 jmp .UNIQUE5582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5582: 
	addq	%rdx, %rax
 jmp .UNIQUE5583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5583: 
	movq	(%rax), %rax
 jmp .UNIQUE5584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5584: 
	movq	%rax, %rdi
 jmp .UNIQUE5585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5585: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5586: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5587: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5588: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5589: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE5590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5590: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5591: 
	movq	8(%rax), %rdx
 jmp .UNIQUE5592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5592: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5593: 
	addq	%rax, %rdx
 jmp .UNIQUE5594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5594: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5595: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5596: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5597: 
	je	.L487
 jmp .UNIQUE5598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5598: 
	movq	-88(%rbp), %rax
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
	addq	%rdx, %rax
 jmp .UNIQUE5604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5604: 
	movq	(%rax), %rcx
 jmp .UNIQUE5605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5605: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5606: 
	movq	16(%rax), %rax
 jmp .UNIQUE5607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5607: 
	movq	112(%rax), %rax
 jmp .UNIQUE5608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5608: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE5609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5609: 
	salq	$3, %rdx
 jmp .UNIQUE5610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5610: 
	addq	%rdx, %rax
 jmp .UNIQUE5611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5611: 
	movq	(%rax), %rax
 jmp .UNIQUE5612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5612: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5613: 
	movq	%rcx, %rsi
 jmp .UNIQUE5614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5614: 
	movq	%rax, %rdi
 jmp .UNIQUE5615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5615: 
	call	insert_data_into_stack_mem
.L487:
 jmp .UNIQUE5616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5616: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5617: 
	movq	16(%rax), %rax
 jmp .UNIQUE5618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5618: 
	movq	120(%rax), %rax
 jmp .UNIQUE5619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5619: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE5620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5620: 
	salq	$3, %rdx
 jmp .UNIQUE5621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5621: 
	addq	%rax, %rdx
 jmp .UNIQUE5622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5622: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE5623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5623: 
	movq	%rax, (%rdx)
 jmp .UNIQUE5624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5624: 
	addq	$1, -72(%rbp)
.L486:
 jmp .UNIQUE5625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5625: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE5626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5626: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE5627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5627: 
	jl	.L488
.L475:
 jmp .UNIQUE5628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5628: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5629: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE5630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5630: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE5631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5631: 
	addq	$88, %rsp
 jmp .UNIQUE5632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5632: 
	popq	%rbx
 jmp .UNIQUE5633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5633: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5634: 
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
 jmp .UNIQUE5635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5635: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5636: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5637: 
	subq	$32, %rsp
 jmp .UNIQUE5638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5638: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5639: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE5640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5640: 
	je	.L490
 jmp .UNIQUE5641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5641: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5642: 
	movq	16(%rax), %rax
 jmp .UNIQUE5643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5643: 
	testq	%rax, %rax
 jmp .UNIQUE5644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5644: 
	je	.L492
 jmp .UNIQUE5645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5645: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5646: 
	movq	16(%rax), %rax
 jmp .UNIQUE5647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5647: 
	movq	8(%rax), %rax
 jmp .UNIQUE5648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5648: 
	movq	%rax, %rdi
 jmp .UNIQUE5649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5649: 
	call	free
 jmp .UNIQUE5650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5650: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5651: 
	movq	16(%rax), %rax
 jmp .UNIQUE5652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5652: 
	movq	24(%rax), %rax
 jmp .UNIQUE5653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5653: 
	movq	%rax, %rdi
 jmp .UNIQUE5654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5654: 
	call	free
 jmp .UNIQUE5655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5655: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5656: 
	movq	16(%rax), %rax
 jmp .UNIQUE5657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5657: 
	movq	40(%rax), %rax
 jmp .UNIQUE5658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5658: 
	movq	%rax, %rdi
 jmp .UNIQUE5659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5659: 
	call	free
 jmp .UNIQUE5660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5660: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5661: 
	movq	16(%rax), %rax
 jmp .UNIQUE5662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5662: 
	movq	56(%rax), %rax
 jmp .UNIQUE5663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5663: 
	movq	%rax, %rdi
 jmp .UNIQUE5664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5664: 
	call	free
 jmp .UNIQUE5665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5665: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5666: 
	movq	16(%rax), %rax
 jmp .UNIQUE5667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5667: 
	movq	72(%rax), %rax
 jmp .UNIQUE5668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5668: 
	movq	%rax, %rdi
 jmp .UNIQUE5669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5669: 
	call	free
 jmp .UNIQUE5670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5670: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5671: 
	movq	16(%rax), %rax
 jmp .UNIQUE5672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5672: 
	movq	96(%rax), %rax
 jmp .UNIQUE5673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5673: 
	movq	%rax, %rdi
 jmp .UNIQUE5674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5674: 
	call	free
 jmp .UNIQUE5675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5675: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5676: 
	movq	16(%rax), %rax
 jmp .UNIQUE5677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5677: 
	movq	88(%rax), %rax
 jmp .UNIQUE5678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5678: 
	movq	%rax, %rdi
 jmp .UNIQUE5679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5679: 
	call	free
 jmp .UNIQUE5680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5680: 
	movq	-24(%rbp), %rax
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
	movq	112(%rax), %rax
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
	movq	$0, -8(%rbp)
 jmp .UNIQUE5686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5686: 
	jmp	.L493
.L494:
 jmp .UNIQUE5687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5687: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5688: 
	movq	16(%rax), %rax
 jmp .UNIQUE5689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5689: 
	movq	120(%rax), %rax
 jmp .UNIQUE5690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5690: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5691: 
	salq	$3, %rdx
 jmp .UNIQUE5692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5692: 
	addq	%rdx, %rax
 jmp .UNIQUE5693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5693: 
	movq	(%rax), %rax
 jmp .UNIQUE5694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5694: 
	movq	%rax, %rdi
 jmp .UNIQUE5695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5695: 
	call	free
 jmp .UNIQUE5696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5696: 
	addq	$1, -8(%rbp)
.L493:
 jmp .UNIQUE5697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5697: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5698: 
	movq	16(%rax), %rax
 jmp .UNIQUE5699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5699: 
	movq	104(%rax), %rax
 jmp .UNIQUE5700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5700: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE5701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5701: 
	jg	.L494
 jmp .UNIQUE5702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5702: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5703: 
	movq	16(%rax), %rax
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
	call	free
.L492:
 jmp .UNIQUE5706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5706: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5707: 
	movq	%rax, %rdi
 jmp .UNIQUE5708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5708: 
	call	free
.L490:
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
.LFE84:
	.size	free_fun_params, .-free_fun_params
	.globl	free_fun_params_that_point_to_stack
	.type	free_fun_params_that_point_to_stack, @function
free_fun_params_that_point_to_stack:
.LFB85:
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
	subq	$16, %rsp
 jmp .UNIQUE5714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5714: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5715: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5716: 
	movq	16(%rax), %rax
 jmp .UNIQUE5717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5717: 
	movq	88(%rax), %rax
 jmp .UNIQUE5718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5718: 
	movq	%rax, %rdi
 jmp .UNIQUE5719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5719: 
	call	free
 jmp .UNIQUE5720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5720: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5721: 
	movq	16(%rax), %rax
 jmp .UNIQUE5722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5722: 
	movq	112(%rax), %rax
 jmp .UNIQUE5723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5723: 
	movq	%rax, %rdi
 jmp .UNIQUE5724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5724: 
	call	free
 jmp .UNIQUE5725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5725: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5726: 
	movq	16(%rax), %rax
 jmp .UNIQUE5727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5727: 
	movq	%rax, %rdi
 jmp .UNIQUE5728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5728: 
	call	free
 jmp .UNIQUE5729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5729: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5730: 
	movq	%rax, %rdi
 jmp .UNIQUE5731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5731: 
	call	free
 jmp .UNIQUE5732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5732: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5733: 
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
 jmp .UNIQUE5734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5734: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5735: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5736: 
	subq	$32, %rsp
 jmp .UNIQUE5737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5737: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5738: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5739: 
	movq	%rax, %rdi
 jmp .UNIQUE5740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5740: 
	call	put_fun_params_into_secure_stack
 jmp .UNIQUE5741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5741: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE5742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5742: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5743: 
	movq	%rax, %rdi
 jmp .UNIQUE5744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5744: 
	call	free_fun_params
 jmp .UNIQUE5745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5745: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5746: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5747: 
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
 jmp .UNIQUE5748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5748: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5749: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5750: 
	subq	$24, %rsp
 jmp .UNIQUE5751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5751: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5752: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5753: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE5754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5754: 
	movl	$0, %r8d
 jmp .UNIQUE5755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5755: 
	movl	$0, %ecx
 jmp .UNIQUE5756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5756: 
	movl	$1, %esi
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
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE5760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5760: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5761: 
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
 jmp .UNIQUE5762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5762: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5763: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5764: 
	subq	$24, %rsp
 jmp .UNIQUE5765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5765: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5766: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5767: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5768: 
	movl	$0, %r8d
 jmp .UNIQUE5769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5769: 
	movl	$0, %ecx
 jmp .UNIQUE5770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5770: 
	movl	$4, %esi
 jmp .UNIQUE5771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5771: 
	movq	%rax, %rdi
 jmp .UNIQUE5772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5772: 
	call	get_secure_stack_data
 jmp .UNIQUE5773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5773: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE5774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5774: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5775: 
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
 jmp .UNIQUE5776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5776: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5777: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5778: 
	subq	$24, %rsp
 jmp .UNIQUE5779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5779: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5780: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5781: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5782: 
	movl	$0, %r8d
 jmp .UNIQUE5783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5783: 
	movl	$0, %ecx
 jmp .UNIQUE5784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5784: 
	movl	$8, %esi
 jmp .UNIQUE5785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5785: 
	movq	%rax, %rdi
 jmp .UNIQUE5786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5786: 
	call	get_secure_stack_data
 jmp .UNIQUE5787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5787: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5788: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5789: 
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
 jmp .UNIQUE5790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5790: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5791: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5792: 
	subq	$24, %rsp
 jmp .UNIQUE5793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5793: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5794: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5795: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5796: 
	movl	$0, %r8d
 jmp .UNIQUE5797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5797: 
	movl	$0, %ecx
 jmp .UNIQUE5798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5798: 
	movl	$8, %esi
 jmp .UNIQUE5799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5799: 
	movq	%rax, %rdi
 jmp .UNIQUE5800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5800: 
	call	get_secure_stack_data
 jmp .UNIQUE5801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5801: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5802: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5803: 
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
 jmp .UNIQUE5804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5804: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5805: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5806: 
	subq	$32, %rsp
 jmp .UNIQUE5807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5807: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5808: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5809: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5810: 
	movl	$0, %r8d
 jmp .UNIQUE5811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5811: 
	movl	$0, %ecx
 jmp .UNIQUE5812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5812: 
	movl	$4, %esi
 jmp .UNIQUE5813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5813: 
	movq	%rax, %rdi
 jmp .UNIQUE5814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5814: 
	call	get_secure_stack_data
 jmp .UNIQUE5815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5815: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE5816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5816: 
	movl	%eax, -28(%rbp)
 jmp .UNIQUE5817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5817: 
	movss	-28(%rbp), %xmm0
 jmp .UNIQUE5818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5818: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5819: 
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
 jmp .UNIQUE5820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5820: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5821: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5822: 
	subq	$32, %rsp
 jmp .UNIQUE5823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5823: 
	movq	%rdi, -24(%rbp)
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
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5826: 
	movl	$0, %r8d
 jmp .UNIQUE5827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5827: 
	movl	$0, %ecx
 jmp .UNIQUE5828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5828: 
	movl	$8, %esi
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
	movq	-16(%rbp), %rax
 jmp .UNIQUE5832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5832: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5833: 
	movsd	-32(%rbp), %xmm0
 jmp .UNIQUE5834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5834: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5835: 
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
 jmp .UNIQUE5836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5836: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5837: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5838: 
	subq	$32, %rsp
 jmp .UNIQUE5839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5839: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5840: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5841: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5842: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE5843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5843: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE5844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5844: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE5845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5845: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE5846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5846: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5847: 
	movq	%rcx, %r8
 jmp .UNIQUE5848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5848: 
	movl	$1, %ecx
 jmp .UNIQUE5849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5849: 
	movq	%rax, %rdi
 jmp .UNIQUE5850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5850: 
	call	get_secure_stack_data
 jmp .UNIQUE5851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5851: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5852: 
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
 jmp .UNIQUE5853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5853: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5854: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5855: 
	subq	$32, %rsp
 jmp .UNIQUE5856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5856: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5857: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5858: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5859: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5860: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE5861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5861: 
	movq	%rcx, %r8
 jmp .UNIQUE5862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5862: 
	movl	$1, %ecx
 jmp .UNIQUE5863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5863: 
	movl	$1, %esi
 jmp .UNIQUE5864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5864: 
	movq	%rax, %rdi
 jmp .UNIQUE5865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5865: 
	call	get_secure_stack_data
 jmp .UNIQUE5866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5866: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE5867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5867: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5868: 
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
 jmp .UNIQUE5869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5869: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5870: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5871: 
	subq	$32, %rsp
 jmp .UNIQUE5872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5872: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5873: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5874: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5875: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5876: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5877: 
	movq	%rcx, %r8
 jmp .UNIQUE5878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5878: 
	movl	$1, %ecx
 jmp .UNIQUE5879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5879: 
	movl	$4, %esi
 jmp .UNIQUE5880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5880: 
	movq	%rax, %rdi
 jmp .UNIQUE5881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5881: 
	call	get_secure_stack_data
 jmp .UNIQUE5882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5882: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE5883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5883: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5884: 
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
 jmp .UNIQUE5885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5885: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5886: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5887: 
	subq	$32, %rsp
 jmp .UNIQUE5888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5888: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5889: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5890: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5891: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5892: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5893: 
	movq	%rcx, %r8
 jmp .UNIQUE5894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5894: 
	movl	$1, %ecx
 jmp .UNIQUE5895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5895: 
	movl	$8, %esi
 jmp .UNIQUE5896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5896: 
	movq	%rax, %rdi
 jmp .UNIQUE5897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5897: 
	call	get_secure_stack_data
 jmp .UNIQUE5898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5898: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5899: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5900: 
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
 jmp .UNIQUE5901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5901: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5902: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5903: 
	subq	$32, %rsp
 jmp .UNIQUE5904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5904: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5905: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5906: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5907: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5908: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5909: 
	movq	%rcx, %r8
 jmp .UNIQUE5910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5910: 
	movl	$1, %ecx
 jmp .UNIQUE5911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5911: 
	movl	$8, %esi
 jmp .UNIQUE5912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5912: 
	movq	%rax, %rdi
 jmp .UNIQUE5913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5913: 
	call	get_secure_stack_data
 jmp .UNIQUE5914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5914: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5915: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5916: 
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
 jmp .UNIQUE5917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5917: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5918: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5919: 
	subq	$40, %rsp
 jmp .UNIQUE5920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5920: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5921: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5922: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5923: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5924: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5925: 
	movq	%rcx, %r8
 jmp .UNIQUE5926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5926: 
	movl	$1, %ecx
 jmp .UNIQUE5927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5927: 
	movl	$4, %esi
 jmp .UNIQUE5928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5928: 
	movq	%rax, %rdi
 jmp .UNIQUE5929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5929: 
	call	get_secure_stack_data
 jmp .UNIQUE5930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5930: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE5931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5931: 
	movl	%eax, -36(%rbp)
 jmp .UNIQUE5932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5932: 
	movss	-36(%rbp), %xmm0
 jmp .UNIQUE5933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5933: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5934: 
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
 jmp .UNIQUE5935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5935: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5936: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5937: 
	subq	$40, %rsp
 jmp .UNIQUE5938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5938: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5939: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5940: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5941: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5942: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5943: 
	movq	%rcx, %r8
 jmp .UNIQUE5944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5944: 
	movl	$1, %ecx
 jmp .UNIQUE5945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5945: 
	movl	$8, %esi
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
	movq	-16(%rbp), %rax
 jmp .UNIQUE5949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5949: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE5950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5950: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE5951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5951: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5952: 
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
 jmp .UNIQUE5953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5953: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5954: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5955: 
	subq	$24, %rsp
 jmp .UNIQUE5956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5956: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5957: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5958: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5959: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE5960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5960: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE5961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5961: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5962: 
	movl	$0, %r8d
 jmp .UNIQUE5963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5963: 
	movl	$0, %ecx
 jmp .UNIQUE5964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5964: 
	movq	%rax, %rdi
 jmp .UNIQUE5965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5965: 
	call	get_secure_stack_data
 jmp .UNIQUE5966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5966: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5967: 
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
 jmp .UNIQUE5968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5968: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5969: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5970: 
	subq	$32, %rsp
 jmp .UNIQUE5971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5971: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5972: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5973: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5974: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE5975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5975: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE5976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5976: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE5977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5977: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE5978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5978: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5979: 
	movq	%rcx, %r8
 jmp .UNIQUE5980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5980: 
	movl	$2, %ecx
 jmp .UNIQUE5981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5981: 
	movq	%rax, %rdi
 jmp .UNIQUE5982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5982: 
	call	get_secure_stack_data
 jmp .UNIQUE5983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5983: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5984: 
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
 jmp .UNIQUE5985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5985: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5986: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5987: 
	subq	$16, %rsp
 jmp .UNIQUE5988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5988: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5989: 
	movl	%esi, %eax
 jmp .UNIQUE5990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5990: 
	movb	%al, -12(%rbp)
 jmp .UNIQUE5991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5991: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5992: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE5993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5993: 
	movq	%rax, %rsi
 jmp .UNIQUE5994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5994: 
	movl	$1, %edi
 jmp .UNIQUE5995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5995: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE5996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5996: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5997: 
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
 jmp .UNIQUE5998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5998: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5999: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6000: 
	subq	$16, %rsp
 jmp .UNIQUE6001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6001: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE6002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6002: 
	movl	%esi, -12(%rbp)
 jmp .UNIQUE6003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6003: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE6004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6004: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE6005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6005: 
	movq	%rax, %rsi
 jmp .UNIQUE6006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6006: 
	movl	$4, %edi
 jmp .UNIQUE6007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6007: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE6008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6008: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6009: 
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
 jmp .UNIQUE6010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6010: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6011: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6012: 
	subq	$16, %rsp
 jmp .UNIQUE6013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6013: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE6014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6014: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE6015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6015: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE6016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6016: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE6017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6017: 
	movq	%rax, %rsi
 jmp .UNIQUE6018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6018: 
	movl	$8, %edi
 jmp .UNIQUE6019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6019: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE6020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6020: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6021: 
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
 jmp .UNIQUE6022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6022: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6023: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6024: 
	subq	$16, %rsp
 jmp .UNIQUE6025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6025: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE6026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6026: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE6027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6027: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE6028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6028: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE6029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6029: 
	movq	%rax, %rsi
 jmp .UNIQUE6030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6030: 
	movl	$8, %edi
 jmp .UNIQUE6031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6031: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE6032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6032: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6033: 
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
 jmp .UNIQUE6034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6034: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6035: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6036: 
	subq	$16, %rsp
 jmp .UNIQUE6037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6037: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE6038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6038: 
	movss	%xmm0, -12(%rbp)
 jmp .UNIQUE6039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6039: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE6040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6040: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE6041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6041: 
	movq	%rax, %rsi
 jmp .UNIQUE6042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6042: 
	movl	$4, %edi
 jmp .UNIQUE6043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6043: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE6044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6044: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6045: 
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
 jmp .UNIQUE6046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6046: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6047: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6048: 
	subq	$16, %rsp
 jmp .UNIQUE6049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6049: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE6050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6050: 
	movsd	%xmm0, -16(%rbp)
 jmp .UNIQUE6051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6051: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE6052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6052: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE6053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6053: 
	movq	%rax, %rsi
 jmp .UNIQUE6054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6054: 
	movl	$8, %edi
 jmp .UNIQUE6055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6055: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE6056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6056: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6057: 
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
 jmp .UNIQUE6058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6058: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6059: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6060: 
	subq	$32, %rsp
 jmp .UNIQUE6061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6061: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE6062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6062: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE6063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6063: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE6064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6064: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE6065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6065: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE6066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6066: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6067: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE6068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6068: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE6069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6069: 
	movq	%rcx, %r8
 jmp .UNIQUE6070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6070: 
	movl	$1, %ecx
 jmp .UNIQUE6071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6071: 
	movq	%rax, %rdi
 jmp .UNIQUE6072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6072: 
	call	set_secure_stack_data
 jmp .UNIQUE6073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6073: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6074: 
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
 jmp .UNIQUE6075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6075: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6076: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6077: 
	subq	$40, %rsp
 jmp .UNIQUE6078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6078: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6079: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE6080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6080: 
	movl	%edx, %eax
 jmp .UNIQUE6081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6081: 
	movb	%al, -36(%rbp)
 jmp .UNIQUE6082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6082: 
	movzbl	-36(%rbp), %eax
 jmp .UNIQUE6083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6083: 
	movb	%al, -1(%rbp)
 jmp .UNIQUE6084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6084: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE6085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6085: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE6086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6086: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE6087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6087: 
	movq	%rcx, %r8
 jmp .UNIQUE6088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6088: 
	movl	$1, %ecx
 jmp .UNIQUE6089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6089: 
	movl	$1, %esi
 jmp .UNIQUE6090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6090: 
	movq	%rax, %rdi
 jmp .UNIQUE6091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6091: 
	call	set_secure_stack_data
 jmp .UNIQUE6092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6092: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6093: 
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
 jmp .UNIQUE6094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6094: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6095: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6096: 
	subq	$40, %rsp
 jmp .UNIQUE6097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6097: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6098: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE6099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6099: 
	movl	%edx, -36(%rbp)
 jmp .UNIQUE6100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6100: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE6101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6101: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE6102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6102: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE6103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6103: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE6104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6104: 
	leaq	-4(%rbp), %rax
 jmp .UNIQUE6105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6105: 
	movq	%rcx, %r8
 jmp .UNIQUE6106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6106: 
	movl	$1, %ecx
 jmp .UNIQUE6107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6107: 
	movl	$4, %esi
 jmp .UNIQUE6108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6108: 
	movq	%rax, %rdi
 jmp .UNIQUE6109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6109: 
	call	set_secure_stack_data
 jmp .UNIQUE6110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6110: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6111: 
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
 jmp .UNIQUE6112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6112: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6113: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6114: 
	subq	$40, %rsp
 jmp .UNIQUE6115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6115: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6116: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE6117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6117: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE6118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6118: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE6119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6119: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6120: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE6121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6121: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE6122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6122: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE6123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6123: 
	movq	%rcx, %r8
 jmp .UNIQUE6124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6124: 
	movl	$1, %ecx
 jmp .UNIQUE6125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6125: 
	movl	$8, %esi
 jmp .UNIQUE6126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6126: 
	movq	%rax, %rdi
 jmp .UNIQUE6127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6127: 
	call	set_secure_stack_data
 jmp .UNIQUE6128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6128: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6129: 
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
 jmp .UNIQUE6130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6130: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6131: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6132: 
	subq	$40, %rsp
 jmp .UNIQUE6133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6133: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6134: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE6135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6135: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE6136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6136: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE6137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6137: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6138: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE6139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6139: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE6140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6140: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE6141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6141: 
	movq	%rcx, %r8
 jmp .UNIQUE6142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6142: 
	movl	$1, %ecx
 jmp .UNIQUE6143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6143: 
	movl	$8, %esi
 jmp .UNIQUE6144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6144: 
	movq	%rax, %rdi
 jmp .UNIQUE6145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6145: 
	call	set_secure_stack_data
 jmp .UNIQUE6146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6146: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6147: 
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
 jmp .UNIQUE6148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6148: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6149: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6150: 
	subq	$40, %rsp
 jmp .UNIQUE6151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6151: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6152: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE6153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6153: 
	movss	%xmm0, -36(%rbp)
 jmp .UNIQUE6154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6154: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE6155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6155: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE6156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6156: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE6157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6157: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE6158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6158: 
	leaq	-4(%rbp), %rax
 jmp .UNIQUE6159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6159: 
	movq	%rcx, %r8
 jmp .UNIQUE6160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6160: 
	movl	$1, %ecx
 jmp .UNIQUE6161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6161: 
	movl	$4, %esi
 jmp .UNIQUE6162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6162: 
	movq	%rax, %rdi
 jmp .UNIQUE6163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6163: 
	call	set_secure_stack_data
 jmp .UNIQUE6164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6164: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6165: 
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
 jmp .UNIQUE6166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6166: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6167: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6168: 
	subq	$40, %rsp
 jmp .UNIQUE6169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6169: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6170: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE6171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6171: 
	movsd	%xmm0, -40(%rbp)
 jmp .UNIQUE6172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6172: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE6173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6173: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6174: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE6175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6175: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE6176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6176: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE6177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6177: 
	movq	%rcx, %r8
 jmp .UNIQUE6178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6178: 
	movl	$1, %ecx
 jmp .UNIQUE6179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6179: 
	movl	$8, %esi
 jmp .UNIQUE6180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6180: 
	movq	%rax, %rdi
 jmp .UNIQUE6181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6181: 
	call	set_secure_stack_data
 jmp .UNIQUE6182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6182: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6183: 
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
 jmp .UNIQUE6184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6184: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6185: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6186: 
	subq	$24, %rsp
 jmp .UNIQUE6187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6187: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE6188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6188: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE6189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6189: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE6190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6190: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6191: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE6192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6192: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6193: 
	movl	$0, %r8d
 jmp .UNIQUE6194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6194: 
	movl	$0, %ecx
 jmp .UNIQUE6195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6195: 
	movq	%rax, %rdi
 jmp .UNIQUE6196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6196: 
	call	set_secure_stack_data
 jmp .UNIQUE6197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6197: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6198: 
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
 jmp .UNIQUE6199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6199: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6200: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6201: 
	subq	$32, %rsp
 jmp .UNIQUE6202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6202: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE6203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6203: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE6204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6204: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE6205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6205: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE6206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6206: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE6207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6207: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6208: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE6209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6209: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE6210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6210: 
	movq	%rcx, %r8
 jmp .UNIQUE6211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6211: 
	movl	$2, %ecx
 jmp .UNIQUE6212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6212: 
	movq	%rax, %rdi
 jmp .UNIQUE6213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6213: 
	call	set_secure_stack_data
 jmp .UNIQUE6214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6214: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6215: 
	ret
	.cfi_endproc
.LFE116:
	.size	set_arbitrary_block_in_stack_with_offset, .-set_arbitrary_block_in_stack_with_offset
	.section	.rodata
.LC82:
	.string	"Printing stack memory:"
	.text
	.globl	print_stack_mem
	.type	print_stack_mem, @function
print_stack_mem:
.LFB117:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6216: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6217: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6218: 
	subq	$32, %rsp
 jmp .UNIQUE6219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6219: 
	movq	%rdi, -24(%rbp)
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
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6222: 
	movl	$.LC82, %edi
 jmp .UNIQUE6223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6223: 
	call	puts
 jmp .UNIQUE6224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6224: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6225: 
	jmp	.L541
.L542:
 jmp .UNIQUE6226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6226: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6227: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6228: 
	addq	%rdx, %rax
 jmp .UNIQUE6229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6229: 
	movzbl	(%rax), %eax
 jmp .UNIQUE6230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6230: 
	movzbl	%al, %eax
 jmp .UNIQUE6231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6231: 
	movl	%eax, %esi
 jmp .UNIQUE6232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6232: 
	movl	$.LC10, %edi
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
	addq	$1, -16(%rbp)
.L541:
 jmp .UNIQUE6236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6236: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE6237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6237: 
	cmpq	%rax, -16(%rbp)
 jmp .UNIQUE6238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6238: 
	jl	.L542
 jmp .UNIQUE6239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6239: 
	movl	$10, %edi
 jmp .UNIQUE6240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6240: 
	call	putchar
 jmp .UNIQUE6241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6241: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6242: 
	ret
	.cfi_endproc
.LFE117:
	.size	print_stack_mem, .-print_stack_mem
	.section	.rodata
.LC83:
	.string	"Printing fun params:"
	.align 8
.LC84:
	.string	"Total size of all params in bytes: %ld\n"
	.align 8
.LC85:
	.string	"Total amount of chunks needed in secure stack: %ld\n"
.LC86:
	.string	"Number of char elements: %ld\n"
.LC87:
	.string	"Char elements:"
.LC88:
	.string	"%c "
.LC89:
	.string	"Number of int elements: %ld\n"
.LC90:
	.string	"Int elements:"
	.align 8
.LC91:
	.string	"Number of long int elements: %ld\n"
.LC92:
	.string	"Long int elements:"
.LC93:
	.string	"%ld "
	.align 8
.LC94:
	.string	"Number of float elements: %ld\n"
.LC95:
	.string	"Float elements:"
.LC96:
	.string	"%f "
	.align 8
.LC97:
	.string	"Number of double elements: %ld\n"
.LC98:
	.string	"Double elements:"
.LC99:
	.string	"%lf "
	.align 8
.LC100:
	.string	"Number of pointer elements: %ld\n"
.LC101:
	.string	"Pointer element sizes:"
.LC102:
	.string	"pointer elements:"
	.align 8
.LC103:
	.string	"Number of arb pointer elements: %ld\n"
.LC104:
	.string	"Arb pointer element sizes:"
.LC105:
	.string	"Arb pointers:"
	.text
	.globl	print_fun_params
	.type	print_fun_params, @function
print_fun_params:
.LFB118:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6243: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6244: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6245: 
	subq	$32, %rsp
 jmp .UNIQUE6246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6246: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6247: 
	movl	$.LC83, %edi
 jmp .UNIQUE6248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6248: 
	call	puts
 jmp .UNIQUE6249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6249: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6250: 
	movq	(%rax), %rax
 jmp .UNIQUE6251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6251: 
	movq	%rax, %rsi
 jmp .UNIQUE6252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6252: 
	movl	$.LC84, %edi
 jmp .UNIQUE6253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6253: 
	movl	$0, %eax
 jmp .UNIQUE6254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6254: 
	call	printf
 jmp .UNIQUE6255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6255: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6256: 
	movq	8(%rax), %rax
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
	movl	$.LC85, %edi
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
	movq	-24(%rbp), %rax
 jmp .UNIQUE6262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6262: 
	movq	16(%rax), %rax
 jmp .UNIQUE6263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6263: 
	movq	(%rax), %rax
 jmp .UNIQUE6264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6264: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6265: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6266: 
	movq	%rax, %rsi
 jmp .UNIQUE6267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6267: 
	movl	$.LC86, %edi
 jmp .UNIQUE6268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6268: 
	movl	$0, %eax
 jmp .UNIQUE6269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6269: 
	call	printf
 jmp .UNIQUE6270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6270: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6271: 
	jle	.L544
 jmp .UNIQUE6272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6272: 
	movl	$.LC87, %edi
 jmp .UNIQUE6273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6273: 
	call	puts
 jmp .UNIQUE6274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6274: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6275: 
	jmp	.L545
.L546:
 jmp .UNIQUE6276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6276: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6277: 
	movq	16(%rax), %rax
 jmp .UNIQUE6278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6278: 
	movq	8(%rax), %rdx
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
	addq	%rdx, %rax
 jmp .UNIQUE6281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6281: 
	movzbl	(%rax), %eax
 jmp .UNIQUE6282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6282: 
	movsbl	%al, %eax
 jmp .UNIQUE6283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6283: 
	movl	%eax, %esi
 jmp .UNIQUE6284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6284: 
	movl	$.LC88, %edi
 jmp .UNIQUE6285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6285: 
	movl	$0, %eax
 jmp .UNIQUE6286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6286: 
	call	printf
 jmp .UNIQUE6287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6287: 
	addq	$1, -16(%rbp)
.L545:
 jmp .UNIQUE6288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6288: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6289: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6290: 
	jl	.L546
 jmp .UNIQUE6291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6291: 
	movl	$10, %edi
 jmp .UNIQUE6292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6292: 
	call	putchar
.L544:
 jmp .UNIQUE6293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6293: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6294: 
	movq	16(%rax), %rax
 jmp .UNIQUE6295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6295: 
	movq	16(%rax), %rax
 jmp .UNIQUE6296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6296: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6297: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6298: 
	movq	%rax, %rsi
 jmp .UNIQUE6299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6299: 
	movl	$.LC89, %edi
 jmp .UNIQUE6300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6300: 
	movl	$0, %eax
 jmp .UNIQUE6301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6301: 
	call	printf
 jmp .UNIQUE6302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6302: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6303: 
	jle	.L547
 jmp .UNIQUE6304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6304: 
	movl	$.LC90, %edi
 jmp .UNIQUE6305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6305: 
	call	puts
 jmp .UNIQUE6306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6306: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6307: 
	jmp	.L548
.L549:
 jmp .UNIQUE6308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6308: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6309: 
	movq	16(%rax), %rax
 jmp .UNIQUE6310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6310: 
	movq	24(%rax), %rax
 jmp .UNIQUE6311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6311: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6312: 
	salq	$2, %rdx
 jmp .UNIQUE6313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6313: 
	addq	%rdx, %rax
 jmp .UNIQUE6314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6314: 
	movl	(%rax), %eax
 jmp .UNIQUE6315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6315: 
	movl	%eax, %esi
 jmp .UNIQUE6316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6316: 
	movl	$.LC22, %edi
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
	addq	$1, -16(%rbp)
.L548:
 jmp .UNIQUE6320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6320: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6321: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6322: 
	jl	.L549
 jmp .UNIQUE6323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6323: 
	movl	$10, %edi
 jmp .UNIQUE6324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6324: 
	call	putchar
.L547:
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
	movq	32(%rax), %rax
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
	movl	$.LC91, %edi
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
	jle	.L550
 jmp .UNIQUE6336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6336: 
	movl	$.LC92, %edi
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
	jmp	.L551
.L552:
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
	movq	40(%rax), %rax
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
	salq	$3, %rdx
 jmp .UNIQUE6345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6345: 
	addq	%rdx, %rax
 jmp .UNIQUE6346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6346: 
	movq	(%rax), %rax
 jmp .UNIQUE6347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6347: 
	movq	%rax, %rsi
 jmp .UNIQUE6348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6348: 
	movl	$.LC93, %edi
 jmp .UNIQUE6349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6349: 
	movl	$0, %eax
 jmp .UNIQUE6350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6350: 
	call	printf
 jmp .UNIQUE6351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6351: 
	addq	$1, -16(%rbp)
.L551:
 jmp .UNIQUE6352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6352: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6353: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6354: 
	jl	.L552
 jmp .UNIQUE6355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6355: 
	movl	$10, %edi
 jmp .UNIQUE6356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6356: 
	call	putchar
.L550:
 jmp .UNIQUE6357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6357: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6358: 
	movq	16(%rax), %rax
 jmp .UNIQUE6359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6359: 
	movq	48(%rax), %rax
 jmp .UNIQUE6360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6360: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6361: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6362: 
	movq	%rax, %rsi
 jmp .UNIQUE6363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6363: 
	movl	$.LC94, %edi
 jmp .UNIQUE6364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6364: 
	movl	$0, %eax
 jmp .UNIQUE6365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6365: 
	call	printf
 jmp .UNIQUE6366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6366: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6367: 
	jle	.L553
 jmp .UNIQUE6368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6368: 
	movl	$.LC95, %edi
 jmp .UNIQUE6369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6369: 
	call	puts
 jmp .UNIQUE6370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6370: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6371: 
	jmp	.L554
.L555:
 jmp .UNIQUE6372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6372: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6373: 
	movq	16(%rax), %rax
 jmp .UNIQUE6374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6374: 
	movq	56(%rax), %rax
 jmp .UNIQUE6375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6375: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6376: 
	salq	$2, %rdx
 jmp .UNIQUE6377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6377: 
	addq	%rdx, %rax
 jmp .UNIQUE6378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6378: 
	movss	(%rax), %xmm0
 jmp .UNIQUE6379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6379: 
	unpcklps	%xmm0, %xmm0
 jmp .UNIQUE6380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6380: 
	cvtps2pd	%xmm0, %xmm0
 jmp .UNIQUE6381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6381: 
	movl	$.LC96, %edi
 jmp .UNIQUE6382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6382: 
	movl	$1, %eax
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
.L554:
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
	jl	.L555
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
.L553:
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
	movq	64(%rax), %rax
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
	movl	$.LC97, %edi
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
	jle	.L556
 jmp .UNIQUE6401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6401: 
	movl	$.LC98, %edi
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
	jmp	.L557
.L558:
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
	movq	72(%rax), %rax
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
	salq	$3, %rdx
 jmp .UNIQUE6410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6410: 
	addq	%rdx, %rax
 jmp .UNIQUE6411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6411: 
	movq	(%rax), %rax
 jmp .UNIQUE6412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6412: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE6413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6413: 
	movsd	-32(%rbp), %xmm0
 jmp .UNIQUE6414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6414: 
	movl	$.LC99, %edi
 jmp .UNIQUE6415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6415: 
	movl	$1, %eax
 jmp .UNIQUE6416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6416: 
	call	printf
 jmp .UNIQUE6417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6417: 
	addq	$1, -16(%rbp)
.L557:
 jmp .UNIQUE6418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6418: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6419: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6420: 
	jl	.L558
 jmp .UNIQUE6421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6421: 
	movl	$10, %edi
 jmp .UNIQUE6422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6422: 
	call	putchar
.L556:
 jmp .UNIQUE6423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6423: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6424: 
	movq	16(%rax), %rax
 jmp .UNIQUE6425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6425: 
	movq	80(%rax), %rax
 jmp .UNIQUE6426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6426: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6427: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6428: 
	movq	%rax, %rsi
 jmp .UNIQUE6429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6429: 
	movl	$.LC100, %edi
 jmp .UNIQUE6430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6430: 
	movl	$0, %eax
 jmp .UNIQUE6431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6431: 
	call	printf
 jmp .UNIQUE6432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6432: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6433: 
	jle	.L559
 jmp .UNIQUE6434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6434: 
	movl	$.LC101, %edi
 jmp .UNIQUE6435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6435: 
	call	puts
 jmp .UNIQUE6436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6436: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6437: 
	jmp	.L560
.L561:
 jmp .UNIQUE6438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6438: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6439: 
	movq	16(%rax), %rax
 jmp .UNIQUE6440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6440: 
	movq	88(%rax), %rax
 jmp .UNIQUE6441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6441: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6442: 
	salq	$3, %rdx
 jmp .UNIQUE6443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6443: 
	addq	%rdx, %rax
 jmp .UNIQUE6444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6444: 
	movq	(%rax), %rax
 jmp .UNIQUE6445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6445: 
	movq	%rax, %rsi
 jmp .UNIQUE6446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6446: 
	movl	$.LC93, %edi
 jmp .UNIQUE6447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6447: 
	movl	$0, %eax
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
.L560:
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
	jl	.L561
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
 jmp .UNIQUE6455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6455: 
	movl	$.LC102, %edi
 jmp .UNIQUE6456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6456: 
	call	puts
 jmp .UNIQUE6457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6457: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6458: 
	jmp	.L562
.L563:
 jmp .UNIQUE6459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6459: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6460: 
	movq	16(%rax), %rax
 jmp .UNIQUE6461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6461: 
	movq	96(%rax), %rax
 jmp .UNIQUE6462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6462: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6463: 
	salq	$3, %rdx
 jmp .UNIQUE6464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6464: 
	addq	%rdx, %rax
 jmp .UNIQUE6465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6465: 
	movq	(%rax), %rax
 jmp .UNIQUE6466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6466: 
	movq	%rax, %rsi
 jmp .UNIQUE6467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6467: 
	movl	$.LC93, %edi
 jmp .UNIQUE6468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6468: 
	movl	$0, %eax
 jmp .UNIQUE6469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6469: 
	call	printf
 jmp .UNIQUE6470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6470: 
	addq	$1, -16(%rbp)
.L562:
 jmp .UNIQUE6471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6471: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6472: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6473: 
	jl	.L563
 jmp .UNIQUE6474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6474: 
	movl	$10, %edi
 jmp .UNIQUE6475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6475: 
	call	putchar
.L559:
 jmp .UNIQUE6476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6476: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6477: 
	movq	16(%rax), %rax
 jmp .UNIQUE6478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6478: 
	movq	104(%rax), %rax
 jmp .UNIQUE6479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6479: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6480: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6481: 
	movq	%rax, %rsi
 jmp .UNIQUE6482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6482: 
	movl	$.LC103, %edi
 jmp .UNIQUE6483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6483: 
	movl	$0, %eax
 jmp .UNIQUE6484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6484: 
	call	printf
 jmp .UNIQUE6485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6485: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6486: 
	jle	.L543
 jmp .UNIQUE6487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6487: 
	movl	$.LC104, %edi
 jmp .UNIQUE6488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6488: 
	call	puts
 jmp .UNIQUE6489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6489: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6490: 
	jmp	.L565
.L566:
 jmp .UNIQUE6491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6491: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6492: 
	movq	16(%rax), %rax
 jmp .UNIQUE6493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6493: 
	movq	112(%rax), %rax
 jmp .UNIQUE6494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6494: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6495: 
	salq	$3, %rdx
 jmp .UNIQUE6496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6496: 
	addq	%rdx, %rax
 jmp .UNIQUE6497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6497: 
	movq	(%rax), %rax
 jmp .UNIQUE6498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6498: 
	movq	%rax, %rsi
 jmp .UNIQUE6499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6499: 
	movl	$.LC93, %edi
 jmp .UNIQUE6500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6500: 
	movl	$0, %eax
 jmp .UNIQUE6501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6501: 
	call	printf
 jmp .UNIQUE6502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6502: 
	addq	$1, -16(%rbp)
.L565:
 jmp .UNIQUE6503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6503: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6504: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6505: 
	jl	.L566
 jmp .UNIQUE6506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6506: 
	movl	$10, %edi
 jmp .UNIQUE6507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6507: 
	call	putchar
 jmp .UNIQUE6508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6508: 
	movl	$.LC105, %edi
 jmp .UNIQUE6509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6509: 
	call	puts
 jmp .UNIQUE6510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6510: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6511: 
	jmp	.L567
.L568:
 jmp .UNIQUE6512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6512: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6513: 
	movq	16(%rax), %rax
 jmp .UNIQUE6514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6514: 
	movq	120(%rax), %rax
 jmp .UNIQUE6515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6515: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6516: 
	salq	$3, %rdx
 jmp .UNIQUE6517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6517: 
	addq	%rdx, %rax
 jmp .UNIQUE6518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6518: 
	movq	(%rax), %rax
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
	movl	$.LC93, %edi
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
	addq	$1, -16(%rbp)
.L567:
 jmp .UNIQUE6524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6524: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6525: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6526: 
	jl	.L568
 jmp .UNIQUE6527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6527: 
	movl	$10, %edi
 jmp .UNIQUE6528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6528: 
	call	putchar
.L543:
 jmp .UNIQUE6529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6529: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6530: 
	ret
	.cfi_endproc
.LFE118:
	.size	print_fun_params, .-print_fun_params
	.section	.rodata
	.align 8
.LC106:
	.string	"Printing fun params that point in stack:"
	.text
	.globl	print_fun_params_that_point_in_stack
	.type	print_fun_params_that_point_in_stack, @function
print_fun_params_that_point_in_stack:
.LFB119:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6531: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6532: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6533: 
	subq	$32, %rsp
 jmp .UNIQUE6534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6534: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6535: 
	movl	$.LC106, %edi
 jmp .UNIQUE6536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6536: 
	call	puts
 jmp .UNIQUE6537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6537: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6538: 
	movq	(%rax), %rax
 jmp .UNIQUE6539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6539: 
	movq	%rax, %rsi
 jmp .UNIQUE6540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6540: 
	movl	$.LC84, %edi
 jmp .UNIQUE6541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6541: 
	movl	$0, %eax
 jmp .UNIQUE6542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6542: 
	call	printf
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
	movq	8(%rax), %rax
 jmp .UNIQUE6545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6545: 
	movq	%rax, %rsi
 jmp .UNIQUE6546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6546: 
	movl	$.LC85, %edi
 jmp .UNIQUE6547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6547: 
	movl	$0, %eax
 jmp .UNIQUE6548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6548: 
	call	printf
 jmp .UNIQUE6549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6549: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6550: 
	movq	16(%rax), %rax
 jmp .UNIQUE6551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6551: 
	movq	(%rax), %rax
 jmp .UNIQUE6552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6552: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6553: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6554: 
	movq	%rax, %rsi
 jmp .UNIQUE6555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6555: 
	movl	$.LC86, %edi
 jmp .UNIQUE6556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6556: 
	movl	$0, %eax
 jmp .UNIQUE6557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6557: 
	call	printf
 jmp .UNIQUE6558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6558: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6559: 
	jle	.L570
 jmp .UNIQUE6560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6560: 
	movl	$.LC87, %edi
 jmp .UNIQUE6561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6561: 
	call	puts
 jmp .UNIQUE6562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6562: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6563: 
	jmp	.L571
.L572:
 jmp .UNIQUE6564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6564: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6565: 
	movq	16(%rax), %rax
 jmp .UNIQUE6566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6566: 
	movq	8(%rax), %rax
 jmp .UNIQUE6567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6567: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6568: 
	movq	%rdx, %rsi
 jmp .UNIQUE6569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6569: 
	movq	%rax, %rdi
 jmp .UNIQUE6570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6570: 
	call	get_stack_char_array_element
 jmp .UNIQUE6571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6571: 
	movsbl	%al, %eax
 jmp .UNIQUE6572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6572: 
	movl	%eax, %esi
 jmp .UNIQUE6573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6573: 
	movl	$.LC88, %edi
 jmp .UNIQUE6574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6574: 
	movl	$0, %eax
 jmp .UNIQUE6575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6575: 
	call	printf
 jmp .UNIQUE6576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6576: 
	addq	$1, -16(%rbp)
.L571:
 jmp .UNIQUE6577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6577: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6578: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6579: 
	jl	.L572
 jmp .UNIQUE6580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6580: 
	movl	$10, %edi
 jmp .UNIQUE6581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6581: 
	call	putchar
.L570:
 jmp .UNIQUE6582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6582: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6583: 
	movq	16(%rax), %rax
 jmp .UNIQUE6584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6584: 
	movq	16(%rax), %rax
 jmp .UNIQUE6585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6585: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6586: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6587: 
	movq	%rax, %rsi
 jmp .UNIQUE6588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6588: 
	movl	$.LC89, %edi
 jmp .UNIQUE6589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6589: 
	movl	$0, %eax
 jmp .UNIQUE6590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6590: 
	call	printf
 jmp .UNIQUE6591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6591: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6592: 
	jle	.L573
 jmp .UNIQUE6593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6593: 
	movl	$.LC90, %edi
 jmp .UNIQUE6594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6594: 
	call	puts
 jmp .UNIQUE6595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6595: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6596: 
	jmp	.L574
.L575:
 jmp .UNIQUE6597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6597: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6598: 
	movq	16(%rax), %rax
 jmp .UNIQUE6599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6599: 
	movq	24(%rax), %rax
 jmp .UNIQUE6600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6600: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6601: 
	movq	%rdx, %rsi
 jmp .UNIQUE6602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6602: 
	movq	%rax, %rdi
 jmp .UNIQUE6603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6603: 
	call	get_stack_int_array_element
 jmp .UNIQUE6604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6604: 
	movl	%eax, %esi
 jmp .UNIQUE6605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6605: 
	movl	$.LC22, %edi
 jmp .UNIQUE6606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6606: 
	movl	$0, %eax
 jmp .UNIQUE6607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6607: 
	call	printf
 jmp .UNIQUE6608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6608: 
	addq	$1, -16(%rbp)
.L574:
 jmp .UNIQUE6609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6609: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6610: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6611: 
	jl	.L575
 jmp .UNIQUE6612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6612: 
	movl	$10, %edi
 jmp .UNIQUE6613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6613: 
	call	putchar
.L573:
 jmp .UNIQUE6614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6614: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6615: 
	movq	16(%rax), %rax
 jmp .UNIQUE6616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6616: 
	movq	32(%rax), %rax
 jmp .UNIQUE6617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6617: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6618: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6619: 
	movq	%rax, %rsi
 jmp .UNIQUE6620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6620: 
	movl	$.LC91, %edi
 jmp .UNIQUE6621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6621: 
	movl	$0, %eax
 jmp .UNIQUE6622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6622: 
	call	printf
 jmp .UNIQUE6623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6623: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6624: 
	jle	.L576
 jmp .UNIQUE6625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6625: 
	movl	$.LC92, %edi
 jmp .UNIQUE6626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6626: 
	call	puts
 jmp .UNIQUE6627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6627: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6628: 
	jmp	.L577
.L578:
 jmp .UNIQUE6629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6629: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6630: 
	movq	16(%rax), %rax
 jmp .UNIQUE6631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6631: 
	movq	40(%rax), %rax
 jmp .UNIQUE6632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6632: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6633: 
	movq	%rdx, %rsi
 jmp .UNIQUE6634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6634: 
	movq	%rax, %rdi
 jmp .UNIQUE6635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6635: 
	call	get_stack_long_int_array_element
 jmp .UNIQUE6636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6636: 
	movq	%rax, %rsi
 jmp .UNIQUE6637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6637: 
	movl	$.LC93, %edi
 jmp .UNIQUE6638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6638: 
	movl	$0, %eax
 jmp .UNIQUE6639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6639: 
	call	printf
 jmp .UNIQUE6640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6640: 
	addq	$1, -16(%rbp)
.L577:
 jmp .UNIQUE6641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6641: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6642: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6643: 
	jl	.L578
 jmp .UNIQUE6644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6644: 
	movl	$10, %edi
 jmp .UNIQUE6645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6645: 
	call	putchar
.L576:
 jmp .UNIQUE6646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6646: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6647: 
	movq	16(%rax), %rax
 jmp .UNIQUE6648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6648: 
	movq	48(%rax), %rax
 jmp .UNIQUE6649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6649: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6650: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6651: 
	movq	%rax, %rsi
 jmp .UNIQUE6652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6652: 
	movl	$.LC94, %edi
 jmp .UNIQUE6653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6653: 
	movl	$0, %eax
 jmp .UNIQUE6654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6654: 
	call	printf
 jmp .UNIQUE6655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6655: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6656: 
	jle	.L579
 jmp .UNIQUE6657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6657: 
	movl	$.LC95, %edi
 jmp .UNIQUE6658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6658: 
	call	puts
 jmp .UNIQUE6659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6659: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6660: 
	jmp	.L580
.L581:
 jmp .UNIQUE6661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6661: 
	movq	-24(%rbp), %rax
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
	movq	56(%rax), %rax
 jmp .UNIQUE6664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6664: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6665: 
	movq	%rdx, %rsi
 jmp .UNIQUE6666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6666: 
	movq	%rax, %rdi
 jmp .UNIQUE6667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6667: 
	call	get_stack_float_array_element
 jmp .UNIQUE6668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6668: 
	unpcklps	%xmm0, %xmm0
 jmp .UNIQUE6669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6669: 
	cvtps2pd	%xmm0, %xmm0
 jmp .UNIQUE6670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6670: 
	movl	$.LC96, %edi
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
.L580:
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
	jl	.L581
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
.L579:
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
	movq	64(%rax), %rax
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
	movl	$.LC97, %edi
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
	jle	.L582
 jmp .UNIQUE6690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6690: 
	movl	$.LC98, %edi
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
	jmp	.L583
.L584:
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
	movq	72(%rax), %rax
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
	movq	%rdx, %rsi
 jmp .UNIQUE6699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6699: 
	movq	%rax, %rdi
 jmp .UNIQUE6700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6700: 
	call	get_stack_double_array_element
 jmp .UNIQUE6701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6701: 
	movsd	%xmm0, -32(%rbp)
 jmp .UNIQUE6702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6702: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE6703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6703: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE6704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6704: 
	movsd	-32(%rbp), %xmm0
 jmp .UNIQUE6705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6705: 
	movl	$.LC99, %edi
 jmp .UNIQUE6706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6706: 
	movl	$1, %eax
 jmp .UNIQUE6707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6707: 
	call	printf
 jmp .UNIQUE6708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6708: 
	addq	$1, -16(%rbp)
.L583:
 jmp .UNIQUE6709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6709: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6710: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6711: 
	jl	.L584
 jmp .UNIQUE6712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6712: 
	movl	$10, %edi
 jmp .UNIQUE6713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6713: 
	call	putchar
.L582:
 jmp .UNIQUE6714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6714: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6715: 
	movq	16(%rax), %rax
 jmp .UNIQUE6716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6716: 
	movq	80(%rax), %rax
 jmp .UNIQUE6717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6717: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6718: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6719: 
	movq	%rax, %rsi
 jmp .UNIQUE6720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6720: 
	movl	$.LC100, %edi
 jmp .UNIQUE6721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6721: 
	movl	$0, %eax
 jmp .UNIQUE6722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6722: 
	call	printf
 jmp .UNIQUE6723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6723: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6724: 
	jle	.L585
 jmp .UNIQUE6725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6725: 
	movl	$.LC101, %edi
 jmp .UNIQUE6726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6726: 
	call	puts
 jmp .UNIQUE6727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6727: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6728: 
	jmp	.L586
.L587:
 jmp .UNIQUE6729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6729: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6730: 
	movq	16(%rax), %rax
 jmp .UNIQUE6731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6731: 
	movq	88(%rax), %rax
 jmp .UNIQUE6732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6732: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6733: 
	salq	$3, %rdx
 jmp .UNIQUE6734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6734: 
	addq	%rdx, %rax
 jmp .UNIQUE6735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6735: 
	movq	(%rax), %rax
 jmp .UNIQUE6736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6736: 
	movq	%rax, %rsi
 jmp .UNIQUE6737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6737: 
	movl	$.LC93, %edi
 jmp .UNIQUE6738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6738: 
	movl	$0, %eax
 jmp .UNIQUE6739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6739: 
	call	printf
 jmp .UNIQUE6740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6740: 
	addq	$1, -16(%rbp)
.L586:
 jmp .UNIQUE6741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6741: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6742: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6743: 
	jl	.L587
 jmp .UNIQUE6744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6744: 
	movl	$10, %edi
 jmp .UNIQUE6745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6745: 
	call	putchar
 jmp .UNIQUE6746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6746: 
	movl	$.LC102, %edi
 jmp .UNIQUE6747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6747: 
	call	puts
 jmp .UNIQUE6748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6748: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6749: 
	jmp	.L588
.L589:
 jmp .UNIQUE6750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6750: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6751: 
	movq	16(%rax), %rax
 jmp .UNIQUE6752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6752: 
	movq	96(%rax), %rax
 jmp .UNIQUE6753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6753: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6754: 
	movq	%rdx, %rsi
 jmp .UNIQUE6755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6755: 
	movq	%rax, %rdi
 jmp .UNIQUE6756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6756: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE6757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6757: 
	movq	%rax, %rsi
 jmp .UNIQUE6758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6758: 
	movl	$.LC93, %edi
 jmp .UNIQUE6759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6759: 
	movl	$0, %eax
 jmp .UNIQUE6760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6760: 
	call	printf
 jmp .UNIQUE6761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6761: 
	addq	$1, -16(%rbp)
.L588:
 jmp .UNIQUE6762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6762: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6763: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6764: 
	jl	.L589
 jmp .UNIQUE6765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6765: 
	movl	$10, %edi
 jmp .UNIQUE6766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6766: 
	call	putchar
.L585:
 jmp .UNIQUE6767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6767: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6768: 
	movq	16(%rax), %rax
 jmp .UNIQUE6769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6769: 
	movq	104(%rax), %rax
 jmp .UNIQUE6770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6770: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6771: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6772: 
	movq	%rax, %rsi
 jmp .UNIQUE6773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6773: 
	movl	$.LC103, %edi
 jmp .UNIQUE6774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6774: 
	movl	$0, %eax
 jmp .UNIQUE6775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6775: 
	call	printf
 jmp .UNIQUE6776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6776: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6777: 
	jle	.L569
 jmp .UNIQUE6778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6778: 
	movl	$.LC104, %edi
 jmp .UNIQUE6779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6779: 
	call	puts
 jmp .UNIQUE6780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6780: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6781: 
	jmp	.L591
.L592:
 jmp .UNIQUE6782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6782: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6783: 
	movq	16(%rax), %rax
 jmp .UNIQUE6784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6784: 
	movq	112(%rax), %rax
 jmp .UNIQUE6785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6785: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6786: 
	salq	$3, %rdx
 jmp .UNIQUE6787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6787: 
	addq	%rdx, %rax
 jmp .UNIQUE6788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6788: 
	movq	(%rax), %rax
 jmp .UNIQUE6789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6789: 
	movq	%rax, %rsi
 jmp .UNIQUE6790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6790: 
	movl	$.LC93, %edi
 jmp .UNIQUE6791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6791: 
	movl	$0, %eax
 jmp .UNIQUE6792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6792: 
	call	printf
 jmp .UNIQUE6793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6793: 
	addq	$1, -16(%rbp)
.L591:
 jmp .UNIQUE6794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6794: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6795: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6796: 
	jl	.L592
 jmp .UNIQUE6797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6797: 
	movl	$10, %edi
 jmp .UNIQUE6798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6798: 
	call	putchar
 jmp .UNIQUE6799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6799: 
	movl	$.LC105, %edi
 jmp .UNIQUE6800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6800: 
	call	puts
 jmp .UNIQUE6801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6801: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6802: 
	jmp	.L593
.L594:
 jmp .UNIQUE6803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6803: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6804: 
	movq	16(%rax), %rax
 jmp .UNIQUE6805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6805: 
	movq	120(%rax), %rax
 jmp .UNIQUE6806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6806: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6807: 
	salq	$3, %rdx
 jmp .UNIQUE6808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6808: 
	addq	%rdx, %rax
 jmp .UNIQUE6809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6809: 
	movq	(%rax), %rax
 jmp .UNIQUE6810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6810: 
	movq	%rax, %rsi
 jmp .UNIQUE6811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6811: 
	movl	$.LC93, %edi
 jmp .UNIQUE6812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6812: 
	movl	$0, %eax
 jmp .UNIQUE6813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6813: 
	call	printf
 jmp .UNIQUE6814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6814: 
	addq	$1, -16(%rbp)
.L593:
 jmp .UNIQUE6815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6815: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6816: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6817: 
	jl	.L594
 jmp .UNIQUE6818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6818: 
	movl	$10, %edi
 jmp .UNIQUE6819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6819: 
	call	putchar
.L569:
 jmp .UNIQUE6820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6820: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6821: 
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
 jmp .UNIQUE6822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6822: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6823: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6824: 
	pushq	%rbx
 jmp .UNIQUE6825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6825: 
	subq	$88, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE6826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6826: 
	movl	%edi, -84(%rbp)
 jmp .UNIQUE6827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6827: 
	movl	%ecx, %eax
 jmp .UNIQUE6828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6828: 
	movb	%sil, -88(%rbp)
 jmp .UNIQUE6829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6829: 
	movb	%dl, -92(%rbp)
 jmp .UNIQUE6830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6830: 
	movb	%al, -96(%rbp)
 jmp .UNIQUE6831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6831: 
	movq	$4, -56(%rbp)
 jmp .UNIQUE6832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6832: 
	movzbl	-88(%rbp), %eax
 jmp .UNIQUE6833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6833: 
	movb	%al, -80(%rbp)
 jmp .UNIQUE6834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6834: 
	movzbl	-92(%rbp), %eax
 jmp .UNIQUE6835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6835: 
	movb	%al, -79(%rbp)
 jmp .UNIQUE6836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6836: 
	movzbl	-96(%rbp), %eax
 jmp .UNIQUE6837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6837: 
	movb	%al, -78(%rbp)
 jmp .UNIQUE6838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6838: 
	movl	$1546, %edx
 jmp .UNIQUE6839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6839: 
	movl	$__func__.6017, %esi
 jmp .UNIQUE6840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6840: 
	movl	$24, %edi
 jmp .UNIQUE6841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6841: 
	call	error_checking_malloc
 jmp .UNIQUE6842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6842: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE6843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6843: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6844: 
	movq	$7, (%rax)
 jmp .UNIQUE6845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6845: 
	movq	-56(%rbp), %rbx
 jmp .UNIQUE6846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6846: 
	movl	$3, %eax
 jmp .UNIQUE6847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6847: 
	movl	$0, %edx
 jmp .UNIQUE6848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6848: 
	divq	%rbx
 jmp .UNIQUE6849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6849: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE6850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6850: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE6851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6851: 
	imulq	-56(%rbp), %rax
 jmp .UNIQUE6852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6852: 
	cmpq	$2, %rax
 jmp .UNIQUE6853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6853: 
	ja	.L596
 jmp .UNIQUE6854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6854: 
	addq	$1, -72(%rbp)
.L596:
 jmp .UNIQUE6855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6855: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE6856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6856: 
	movl	$4, %eax
 jmp .UNIQUE6857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6857: 
	movl	$0, %edx
 jmp .UNIQUE6858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6858: 
	divq	%rcx
 jmp .UNIQUE6859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6859: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE6860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6860: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE6861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6861: 
	imulq	-56(%rbp), %rax
 jmp .UNIQUE6862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6862: 
	cmpq	$3, %rax
 jmp .UNIQUE6863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6863: 
	ja	.L597
 jmp .UNIQUE6864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6864: 
	addq	$1, -64(%rbp)
.L597:
 jmp .UNIQUE6865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6865: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE6866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6866: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE6867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6867: 
	addq	%rax, %rdx
 jmp .UNIQUE6868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6868: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6869: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE6870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6870: 
	movl	$1556, %edx
 jmp .UNIQUE6871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6871: 
	movl	$__func__.6017, %esi
 jmp .UNIQUE6872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6872: 
	movl	$128, %edi
 jmp .UNIQUE6873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6873: 
	call	error_checking_malloc
 jmp .UNIQUE6874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6874: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE6875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6875: 
	movq	%rax, 16(%rdx)
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
	movl	$128, %edx
 jmp .UNIQUE6879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6879: 
	movl	$0, %esi
 jmp .UNIQUE6880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6880: 
	movq	%rax, %rdi
 jmp .UNIQUE6881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6881: 
	call	memset
 jmp .UNIQUE6882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6882: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6883: 
	movq	16(%rax), %rax
 jmp .UNIQUE6884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6884: 
	movq	$3, (%rax)
 jmp .UNIQUE6885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6885: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6886: 
	movq	16(%rax), %rax
 jmp .UNIQUE6887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6887: 
	movq	$1, 16(%rax)
 jmp .UNIQUE6888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6888: 
	movl	$3, %edi
 jmp .UNIQUE6889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6889: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE6890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6890: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE6891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6891: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE6892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6892: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6893: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE6894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6894: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6895: 
	movq	16(%rax), %rax
 jmp .UNIQUE6896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6896: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE6897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6897: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE6898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6898: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE6899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6899: 
	je	.L598
 jmp .UNIQUE6900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6900: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE6901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6901: 
	leaq	-80(%rbp), %rax
 jmp .UNIQUE6902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6902: 
	movq	%rax, %rsi
 jmp .UNIQUE6903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6903: 
	movl	$3, %edi
 jmp .UNIQUE6904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6904: 
	call	insert_data_into_stack_mem
.L598:
 jmp .UNIQUE6905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6905: 
	movl	$4, %edi
 jmp .UNIQUE6906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6906: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE6907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6907: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE6908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6908: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE6909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6909: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6910: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE6911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6911: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6912: 
	movq	16(%rax), %rax
 jmp .UNIQUE6913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6913: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE6914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6914: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE6915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6915: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE6916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6916: 
	je	.L599
 jmp .UNIQUE6917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6917: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE6918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6918: 
	leaq	-84(%rbp), %rax
 jmp .UNIQUE6919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6919: 
	movq	%rax, %rsi
 jmp .UNIQUE6920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6920: 
	movl	$4, %edi
 jmp .UNIQUE6921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6921: 
	call	insert_data_into_stack_mem
.L599:
 jmp .UNIQUE6922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6922: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6923: 
	addq	$88, %rsp
 jmp .UNIQUE6924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6924: 
	popq	%rbx
 jmp .UNIQUE6925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6925: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6926: 
	ret
	.cfi_endproc
.LFE120:
	.size	tower_of_Hanoi_init_secure_template, .-tower_of_Hanoi_init_secure_template
	.section	.rodata
.LC107:
	.string	"Allocating double array"
.LC108:
	.string	"Initializing fun params"
	.align 8
.LC111:
	.string	"Inserting fun params into secure stack"
.LC112:
	.string	"Printing chars"
.LC113:
	.string	"Printing ints"
.LC114:
	.string	"Printing doubles"
.LC115:
	.string	"Changing pointer"
.LC116:
	.string	"Printing array of doubles"
.LC117:
	.string	"i=%d, %lf "
	.align 8
.LC118:
	.string	"Fetching double array using arbitrary block"
	.align 8
.LC119:
	.string	"Fetching double array elements (one by one), using arbitrary blocks"
	.text
	.globl	stack_fun_params_test
	.type	stack_fun_params_test, @function
stack_fun_params_test:
.LFB121:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6927: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6928: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6929: 
	subq	$144, %rsp
 jmp .UNIQUE6930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6930: 
	movl	$.LC107, %edi
 jmp .UNIQUE6931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6931: 
	call	puts
 jmp .UNIQUE6932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6932: 
	movl	$9, %edx
 jmp .UNIQUE6933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6933: 
	movl	$__func__.6023, %esi
 jmp .UNIQUE6934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6934: 
	movl	$80, %edi
 jmp .UNIQUE6935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6935: 
	call	error_checking_malloc
 jmp .UNIQUE6936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6936: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE6937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6937: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE6938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6938: 
	jmp	.L602
.L603:
 jmp .UNIQUE6939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6939: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE6940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6940: 
	cltq
 jmp .UNIQUE6941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6941: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE6942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6942: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6943: 
	addq	%rdx, %rax
 jmp .UNIQUE6944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6944: 
	movl	-20(%rbp), %edx
 jmp .UNIQUE6945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6945: 
	addl	$100, %edx
 jmp .UNIQUE6946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6946: 
	cvtsi2sd	%edx, %xmm0
 jmp .UNIQUE6947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6947: 
	movsd	%xmm0, (%rax)
 jmp .UNIQUE6948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6948: 
	addl	$1, -20(%rbp)
.L602:
 jmp .UNIQUE6949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6949: 
	cmpl	$9, -20(%rbp)
 jmp .UNIQUE6950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6950: 
	jle	.L603
 jmp .UNIQUE6951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6951: 
	movl	$.LC108, %edi
 jmp .UNIQUE6952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6952: 
	call	puts
 jmp .UNIQUE6953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6953: 
	movabsq	$4633156929650876744, %rdx
 jmp .UNIQUE6954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6954: 
	movabsq	$4631166901565532406, %rax
 jmp .UNIQUE6955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6955: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE6956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6956: 
	movq	%rcx, 96(%rsp)
 jmp .UNIQUE6957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6957: 
	movq	$80, 88(%rsp)
 jmp .UNIQUE6958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6958: 
	movq	$1, 80(%rsp)
 jmp .UNIQUE6959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6959: 
	movl	$424242, 72(%rsp)
 jmp .UNIQUE6960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6960: 
	movq	$10, 64(%rsp)
 jmp .UNIQUE6961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6961: 
	movq	$1, 56(%rsp)
 jmp .UNIQUE6962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6962: 
	movq	$2, 48(%rsp)
 jmp .UNIQUE6963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6963: 
	movq	$0, 40(%rsp)
 jmp .UNIQUE6964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6964: 
	movq	$0, 32(%rsp)
 jmp .UNIQUE6965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6965: 
	movl	$41, 24(%rsp)
 jmp .UNIQUE6966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6966: 
	movl	$42, 16(%rsp)
 jmp .UNIQUE6967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6967: 
	movq	$2, 8(%rsp)
 jmp .UNIQUE6968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6968: 
	movl	$103, (%rsp)
 jmp .UNIQUE6969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6969: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE6970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6970: 
	movsd	-40(%rbp), %xmm1
 jmp .UNIQUE6971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6971: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE6972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6972: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE6973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6973: 
	movl	$102, %r9d
 jmp .UNIQUE6974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6974: 
	movl	$101, %r8d
 jmp .UNIQUE6975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6975: 
	movl	$100, %ecx
 jmp .UNIQUE6976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6976: 
	movl	$99, %edx
 jmp .UNIQUE6977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6977: 
	movl	$5, %esi
 jmp .UNIQUE6978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6978: 
	movl	$1, %edi
 jmp .UNIQUE6979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6979: 
	movl	$2, %eax
 jmp .UNIQUE6980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6980: 
	call	init_function_params
 jmp .UNIQUE6981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6981: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6982: 
	movl	$.LC111, %edi
 jmp .UNIQUE6983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6983: 
	call	puts
 jmp .UNIQUE6984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6984: 
	movq	-8(%rbp), %rax
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
	call	put_fun_params_into_secure_stack_and_free
 jmp .UNIQUE6987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6987: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6988: 
	movl	$.LC112, %edi
 jmp .UNIQUE6989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6989: 
	call	puts
 jmp .UNIQUE6990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6990: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE6991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6991: 
	jmp	.L604
.L605:
 jmp .UNIQUE6992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6992: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE6993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6993: 
	movslq	%eax, %rdx
 jmp .UNIQUE6994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6994: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6995: 
	movq	16(%rax), %rax
 jmp .UNIQUE6996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6996: 
	movq	8(%rax), %rax
 jmp .UNIQUE6997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6997: 
	movq	%rdx, %rsi
 jmp .UNIQUE6998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6998: 
	movq	%rax, %rdi
 jmp .UNIQUE6999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6999: 
	call	get_stack_char_array_element
 jmp .UNIQUE7000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7000: 
	movsbl	%al, %eax
 jmp .UNIQUE7001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7001: 
	movl	%eax, %esi
 jmp .UNIQUE7002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7002: 
	movl	$.LC88, %edi
 jmp .UNIQUE7003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7003: 
	movl	$0, %eax
 jmp .UNIQUE7004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7004: 
	call	printf
 jmp .UNIQUE7005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7005: 
	addl	$1, -20(%rbp)
.L604:
 jmp .UNIQUE7006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7006: 
	cmpl	$4, -20(%rbp)
 jmp .UNIQUE7007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7007: 
	jle	.L605
 jmp .UNIQUE7008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7008: 
	movl	$10, %edi
 jmp .UNIQUE7009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7009: 
	call	putchar
 jmp .UNIQUE7010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7010: 
	movl	$.LC113, %edi
 jmp .UNIQUE7011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7011: 
	call	puts
 jmp .UNIQUE7012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7012: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE7013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7013: 
	jmp	.L606
.L607:
 jmp .UNIQUE7014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7014: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE7015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7015: 
	movslq	%eax, %rdx
 jmp .UNIQUE7016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7016: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7017: 
	movq	16(%rax), %rax
 jmp .UNIQUE7018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7018: 
	movq	24(%rax), %rax
 jmp .UNIQUE7019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7019: 
	movq	%rdx, %rsi
 jmp .UNIQUE7020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7020: 
	movq	%rax, %rdi
 jmp .UNIQUE7021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7021: 
	call	get_stack_int_array_element
 jmp .UNIQUE7022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7022: 
	movl	%eax, %esi
 jmp .UNIQUE7023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7023: 
	movl	$.LC22, %edi
 jmp .UNIQUE7024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7024: 
	movl	$0, %eax
 jmp .UNIQUE7025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7025: 
	call	printf
 jmp .UNIQUE7026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7026: 
	addl	$1, -20(%rbp)
.L606:
 jmp .UNIQUE7027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7027: 
	cmpl	$1, -20(%rbp)
 jmp .UNIQUE7028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7028: 
	jle	.L607
 jmp .UNIQUE7029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7029: 
	movl	$10, %edi
 jmp .UNIQUE7030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7030: 
	call	putchar
 jmp .UNIQUE7031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7031: 
	movl	$.LC114, %edi
 jmp .UNIQUE7032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7032: 
	call	puts
 jmp .UNIQUE7033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7033: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE7034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7034: 
	jmp	.L608
.L609:
 jmp .UNIQUE7035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7035: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE7036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7036: 
	movslq	%eax, %rdx
 jmp .UNIQUE7037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7037: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7038: 
	movq	16(%rax), %rax
 jmp .UNIQUE7039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7039: 
	movq	72(%rax), %rax
 jmp .UNIQUE7040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7040: 
	movq	%rdx, %rsi
 jmp .UNIQUE7041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7041: 
	movq	%rax, %rdi
 jmp .UNIQUE7042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7042: 
	call	get_stack_double_array_element
 jmp .UNIQUE7043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7043: 
	movsd	%xmm0, -40(%rbp)
 jmp .UNIQUE7044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7044: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7045: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE7046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7046: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE7047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7047: 
	movl	$.LC99, %edi
 jmp .UNIQUE7048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7048: 
	movl	$1, %eax
 jmp .UNIQUE7049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7049: 
	call	printf
 jmp .UNIQUE7050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7050: 
	addl	$1, -20(%rbp)
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
	cmpl	$1, -20(%rbp)
 jmp .UNIQUE7052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7052: 
	jle	.L609
 jmp .UNIQUE7053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7053: 
	movl	$10, %edi
 jmp .UNIQUE7054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7054: 
	call	putchar
 jmp .UNIQUE7055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7055: 
	movl	$.LC115, %edi
 jmp .UNIQUE7056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7056: 
	call	puts
 jmp .UNIQUE7057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7057: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7058: 
	movq	16(%rax), %rax
 jmp .UNIQUE7059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7059: 
	movq	24(%rax), %rdx
 jmp .UNIQUE7060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7060: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7061: 
	movq	16(%rax), %rax
 jmp .UNIQUE7062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7062: 
	movq	96(%rax), %rax
 jmp .UNIQUE7063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7063: 
	movl	$0, %esi
 jmp .UNIQUE7064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7064: 
	movq	%rax, %rdi
 jmp .UNIQUE7065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7065: 
	call	set_stack_pointer_array_element
 jmp .UNIQUE7066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7066: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7067: 
	movq	16(%rax), %rax
 jmp .UNIQUE7068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7068: 
	movq	96(%rax), %rax
 jmp .UNIQUE7069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7069: 
	movl	$0, %esi
 jmp .UNIQUE7070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7070: 
	movq	%rax, %rdi
 jmp .UNIQUE7071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7071: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE7072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7072: 
	movl	$45, %edx
 jmp .UNIQUE7073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7073: 
	movl	$0, %esi
 jmp .UNIQUE7074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7074: 
	movq	%rax, %rdi
 jmp .UNIQUE7075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7075: 
	call	set_stack_int_array_element
 jmp .UNIQUE7076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7076: 
	movl	$.LC113, %edi
 jmp .UNIQUE7077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7077: 
	call	puts
 jmp .UNIQUE7078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7078: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE7079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7079: 
	jmp	.L610
.L611:
 jmp .UNIQUE7080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7080: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE7081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7081: 
	movslq	%eax, %rdx
 jmp .UNIQUE7082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7082: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7083: 
	movq	16(%rax), %rax
 jmp .UNIQUE7084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7084: 
	movq	24(%rax), %rax
 jmp .UNIQUE7085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7085: 
	movq	%rdx, %rsi
 jmp .UNIQUE7086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7086: 
	movq	%rax, %rdi
 jmp .UNIQUE7087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7087: 
	call	get_stack_int_array_element
 jmp .UNIQUE7088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7088: 
	movl	%eax, %esi
 jmp .UNIQUE7089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7089: 
	movl	$.LC22, %edi
 jmp .UNIQUE7090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7090: 
	movl	$0, %eax
 jmp .UNIQUE7091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7091: 
	call	printf
 jmp .UNIQUE7092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7092: 
	addl	$1, -20(%rbp)
.L610:
 jmp .UNIQUE7093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7093: 
	cmpl	$1, -20(%rbp)
 jmp .UNIQUE7094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7094: 
	jle	.L611
 jmp .UNIQUE7095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7095: 
	movl	$10, %edi
 jmp .UNIQUE7096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7096: 
	call	putchar
 jmp .UNIQUE7097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7097: 
	movl	$.LC116, %edi
 jmp .UNIQUE7098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7098: 
	call	puts
 jmp .UNIQUE7099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7099: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE7100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7100: 
	jmp	.L612
.L613:
 jmp .UNIQUE7101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7101: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE7102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7102: 
	movslq	%eax, %rdx
 jmp .UNIQUE7103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7103: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7104: 
	movq	16(%rax), %rax
 jmp .UNIQUE7105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7105: 
	movq	120(%rax), %rax
 jmp .UNIQUE7106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7106: 
	movq	(%rax), %rax
 jmp .UNIQUE7107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7107: 
	movq	%rdx, %rsi
 jmp .UNIQUE7108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7108: 
	movq	%rax, %rdi
 jmp .UNIQUE7109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7109: 
	call	get_stack_double_array_element
 jmp .UNIQUE7110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7110: 
	movsd	%xmm0, -40(%rbp)
 jmp .UNIQUE7111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7111: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7112: 
	movl	-20(%rbp), %edx
 jmp .UNIQUE7113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7113: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE7114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7114: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE7115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7115: 
	movl	%edx, %esi
 jmp .UNIQUE7116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7116: 
	movl	$.LC117, %edi
 jmp .UNIQUE7117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7117: 
	movl	$1, %eax
 jmp .UNIQUE7118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7118: 
	call	printf
 jmp .UNIQUE7119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7119: 
	addl	$1, -20(%rbp)
.L612:
 jmp .UNIQUE7120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7120: 
	cmpl	$9, -20(%rbp)
 jmp .UNIQUE7121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7121: 
	jle	.L613
 jmp .UNIQUE7122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7122: 
	movl	$.LC118, %edi
 jmp .UNIQUE7123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7123: 
	call	puts
 jmp .UNIQUE7124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7124: 
	movl	$57, %edx
 jmp .UNIQUE7125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7125: 
	movl	$__func__.6023, %esi
 jmp .UNIQUE7126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7126: 
	movl	$80, %edi
 jmp .UNIQUE7127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7127: 
	call	error_checking_malloc
 jmp .UNIQUE7128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7128: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE7129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7129: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7130: 
	movq	16(%rax), %rax
 jmp .UNIQUE7131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7131: 
	movq	120(%rax), %rax
 jmp .UNIQUE7132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7132: 
	movq	(%rax), %rax
 jmp .UNIQUE7133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7133: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE7134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7134: 
	movq	%rax, %rsi
 jmp .UNIQUE7135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7135: 
	movl	$80, %edi
 jmp .UNIQUE7136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7136: 
	call	get_arbitrary_block_in_stack
 jmp .UNIQUE7137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7137: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE7138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7138: 
	jmp	.L614
.L615:
 jmp .UNIQUE7139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7139: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE7140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7140: 
	cltq
 jmp .UNIQUE7141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7141: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE7142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7142: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE7143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7143: 
	addq	%rdx, %rax
 jmp .UNIQUE7144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7144: 
	movq	(%rax), %rax
 jmp .UNIQUE7145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7145: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE7146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7146: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE7147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7147: 
	movl	$.LC69, %edi
 jmp .UNIQUE7148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7148: 
	movl	$1, %eax
 jmp .UNIQUE7149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7149: 
	call	printf
 jmp .UNIQUE7150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7150: 
	addl	$1, -20(%rbp)
.L614:
 jmp .UNIQUE7151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7151: 
	cmpl	$9, -20(%rbp)
 jmp .UNIQUE7152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7152: 
	jle	.L615
 jmp .UNIQUE7153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7153: 
	movl	$10, %edi
 jmp .UNIQUE7154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7154: 
	call	putchar
 jmp .UNIQUE7155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7155: 
	movl	$.LC119, %edi
 jmp .UNIQUE7156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7156: 
	call	puts
 jmp .UNIQUE7157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7157: 
	movl	$66, %edx
 jmp .UNIQUE7158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7158: 
	movl	$__func__.6023, %esi
 jmp .UNIQUE7159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7159: 
	movl	$80, %edi
 jmp .UNIQUE7160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7160: 
	call	error_checking_malloc
 jmp .UNIQUE7161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7161: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE7162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7162: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE7163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7163: 
	jmp	.L616
.L617:
 jmp .UNIQUE7164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7164: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE7165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7165: 
	cltq
 jmp .UNIQUE7166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7166: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE7167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7167: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE7168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7168: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE7169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7169: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE7170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7170: 
	cltq
 jmp .UNIQUE7171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7171: 
	salq	$3, %rax
 jmp .UNIQUE7172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7172: 
	movq	%rax, %rdx
 jmp .UNIQUE7173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7173: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7174: 
	movq	16(%rax), %rax
 jmp .UNIQUE7175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7175: 
	movq	120(%rax), %rax
 jmp .UNIQUE7176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7176: 
	movq	(%rax), %rax
 jmp .UNIQUE7177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7177: 
	movq	%rax, %rsi
 jmp .UNIQUE7178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7178: 
	movl	$8, %edi
 jmp .UNIQUE7179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7179: 
	call	get_arbitrary_block_in_stack_with_offset
 jmp .UNIQUE7180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7180: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE7181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7181: 
	cltq
 jmp .UNIQUE7182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7182: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE7183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7183: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE7184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7184: 
	addq	%rdx, %rax
 jmp .UNIQUE7185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7185: 
	movq	(%rax), %rax
 jmp .UNIQUE7186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7186: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE7187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7187: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE7188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7188: 
	movl	$.LC69, %edi
 jmp .UNIQUE7189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7189: 
	movl	$1, %eax
 jmp .UNIQUE7190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7190: 
	call	printf
 jmp .UNIQUE7191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7191: 
	addl	$1, -20(%rbp)
.L616:
 jmp .UNIQUE7192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7192: 
	cmpl	$9, -20(%rbp)
 jmp .UNIQUE7193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7193: 
	jle	.L617
 jmp .UNIQUE7194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7194: 
	movl	$10, %edi
 jmp .UNIQUE7195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7195: 
	call	putchar
 jmp .UNIQUE7196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7196: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7197: 
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
 jmp .UNIQUE7198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7198: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7199: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7200: 
	subq	$16, %rsp
 jmp .UNIQUE7201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7201: 
	movl	%edi, -4(%rbp)
 jmp .UNIQUE7202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7202: 
	movl	%ecx, %eax
 jmp .UNIQUE7203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7203: 
	movb	%sil, -8(%rbp)
 jmp .UNIQUE7204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7204: 
	movb	%dl, -12(%rbp)
 jmp .UNIQUE7205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7205: 
	movb	%al, -16(%rbp)
 jmp .UNIQUE7206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7206: 
	cmpl	$1, -4(%rbp)
 jmp .UNIQUE7207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7207: 
	jne	.L619
 jmp .UNIQUE7208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7208: 
	jmp	.L618
.L619:
 jmp .UNIQUE7209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7209: 
	movsbl	-12(%rbp), %ecx
 jmp .UNIQUE7210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7210: 
	movsbl	-16(%rbp), %edx
 jmp .UNIQUE7211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7211: 
	movsbl	-8(%rbp), %eax
 jmp .UNIQUE7212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7212: 
	movl	-4(%rbp), %esi
 jmp .UNIQUE7213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7213: 
	leal	-1(%rsi), %edi
 jmp .UNIQUE7214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7214: 
	movl	%eax, %esi
 jmp .UNIQUE7215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7215: 
	call	towerOfHanoi
 jmp .UNIQUE7216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7216: 
	movsbl	-8(%rbp), %ecx
 jmp .UNIQUE7217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7217: 
	movsbl	-12(%rbp), %edx
 jmp .UNIQUE7218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7218: 
	movsbl	-16(%rbp), %eax
 jmp .UNIQUE7219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7219: 
	movl	-4(%rbp), %esi
 jmp .UNIQUE7220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7220: 
	leal	-1(%rsi), %edi
 jmp .UNIQUE7221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7221: 
	movl	%eax, %esi
 jmp .UNIQUE7222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7222: 
	call	towerOfHanoi
.L618:
 jmp .UNIQUE7223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7223: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7224: 
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
 jmp .UNIQUE7225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7225: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7226: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7227: 
	pushq	%r13
 jmp .UNIQUE7228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7228: 
	pushq	%r12
 jmp .UNIQUE7229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7229: 
	pushq	%rbx
 jmp .UNIQUE7230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7230: 
	subq	$88, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
 jmp .UNIQUE7231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7231: 
	movl	%edi, -52(%rbp)
 jmp .UNIQUE7232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7232: 
	movl	%ecx, %eax
 jmp .UNIQUE7233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7233: 
	movb	%sil, -56(%rbp)
 jmp .UNIQUE7234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7234: 
	movb	%dl, -60(%rbp)
 jmp .UNIQUE7235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7235: 
	movb	%al, -64(%rbp)
 jmp .UNIQUE7236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7236: 
	movsbl	-64(%rbp), %esi
 jmp .UNIQUE7237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7237: 
	movsbl	-60(%rbp), %edx
 jmp .UNIQUE7238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7238: 
	movsbl	-56(%rbp), %eax
 jmp .UNIQUE7239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7239: 
	movq	$0, 40(%rsp)
 jmp .UNIQUE7240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7240: 
	movq	$0, 32(%rsp)
 jmp .UNIQUE7241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7241: 
	movq	$0, 24(%rsp)
 jmp .UNIQUE7242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7242: 
	movq	$0, 16(%rsp)
 jmp .UNIQUE7243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7243: 
	movq	$0, 8(%rsp)
 jmp .UNIQUE7244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7244: 
	movl	-52(%rbp), %ecx
 jmp .UNIQUE7245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7245: 
	movl	%ecx, (%rsp)
 jmp .UNIQUE7246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7246: 
	movl	$1, %r9d
 jmp .UNIQUE7247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7247: 
	movl	%esi, %r8d
 jmp .UNIQUE7248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7248: 
	movl	%edx, %ecx
 jmp .UNIQUE7249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7249: 
	movl	%eax, %edx
 jmp .UNIQUE7250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7250: 
	movl	$3, %esi
 jmp .UNIQUE7251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7251: 
	movl	$1, %edi
 jmp .UNIQUE7252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7252: 
	movl	$0, %eax
 jmp .UNIQUE7253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7253: 
	call	init_function_params
 jmp .UNIQUE7254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7254: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE7255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7255: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7256: 
	movq	%rax, %rdi
 jmp .UNIQUE7257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7257: 
	call	put_fun_params_into_secure_stack_and_free
 jmp .UNIQUE7258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7258: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE7259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7259: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7260: 
	movq	16(%rax), %rax
 jmp .UNIQUE7261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7261: 
	movq	24(%rax), %rax
 jmp .UNIQUE7262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7262: 
	movl	$0, %esi
 jmp .UNIQUE7263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7263: 
	movq	%rax, %rdi
 jmp .UNIQUE7264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7264: 
	call	get_stack_int_array_element
 jmp .UNIQUE7265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7265: 
	cmpl	$1, %eax
 jmp .UNIQUE7266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7266: 
	jne	.L622
 jmp .UNIQUE7267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7267: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7268: 
	movq	8(%rax), %rax
 jmp .UNIQUE7269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7269: 
	movq	%rax, %rdi
 jmp .UNIQUE7270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7270: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE7271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7271: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7272: 
	movq	%rax, %rdi
 jmp .UNIQUE7273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7273: 
	call	free_fun_params_that_point_to_stack
 jmp .UNIQUE7274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7274: 
	jmp	.L621
.L622:
 jmp .UNIQUE7275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7275: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7276: 
	movq	16(%rax), %rax
 jmp .UNIQUE7277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7277: 
	movq	8(%rax), %rax
 jmp .UNIQUE7278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7278: 
	movl	$1, %esi
 jmp .UNIQUE7279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7279: 
	movq	%rax, %rdi
 jmp .UNIQUE7280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7280: 
	call	get_stack_char_array_element
 jmp .UNIQUE7281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7281: 
	movsbl	%al, %r13d
 jmp .UNIQUE7282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7282: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7283: 
	movq	16(%rax), %rax
 jmp .UNIQUE7284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7284: 
	movq	8(%rax), %rax
 jmp .UNIQUE7285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7285: 
	movl	$2, %esi
 jmp .UNIQUE7286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7286: 
	movq	%rax, %rdi
 jmp .UNIQUE7287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7287: 
	call	get_stack_char_array_element
 jmp .UNIQUE7288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7288: 
	movsbl	%al, %r12d
 jmp .UNIQUE7289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7289: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7290: 
	movq	16(%rax), %rax
 jmp .UNIQUE7291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7291: 
	movq	8(%rax), %rax
 jmp .UNIQUE7292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7292: 
	movl	$0, %esi
 jmp .UNIQUE7293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7293: 
	movq	%rax, %rdi
 jmp .UNIQUE7294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7294: 
	call	get_stack_char_array_element
 jmp .UNIQUE7295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7295: 
	movsbl	%al, %ebx
 jmp .UNIQUE7296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7296: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7297: 
	movq	16(%rax), %rax
 jmp .UNIQUE7298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7298: 
	movq	24(%rax), %rax
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
	call	towerOfHanoi_secure
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
	movq	16(%rax), %rax
 jmp .UNIQUE7310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7310: 
	movq	8(%rax), %rax
 jmp .UNIQUE7311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7311: 
	movl	$0, %esi
 jmp .UNIQUE7312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7312: 
	movq	%rax, %rdi
 jmp .UNIQUE7313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7313: 
	call	get_stack_char_array_element
 jmp .UNIQUE7314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7314: 
	movsbl	%al, %r13d
 jmp .UNIQUE7315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7315: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7316: 
	movq	16(%rax), %rax
 jmp .UNIQUE7317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7317: 
	movq	8(%rax), %rax
 jmp .UNIQUE7318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7318: 
	movl	$1, %esi
 jmp .UNIQUE7319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7319: 
	movq	%rax, %rdi
 jmp .UNIQUE7320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7320: 
	call	get_stack_char_array_element
 jmp .UNIQUE7321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7321: 
	movsbl	%al, %r12d
 jmp .UNIQUE7322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7322: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7323: 
	movq	16(%rax), %rax
 jmp .UNIQUE7324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7324: 
	movq	8(%rax), %rax
 jmp .UNIQUE7325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7325: 
	movl	$2, %esi
 jmp .UNIQUE7326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7326: 
	movq	%rax, %rdi
 jmp .UNIQUE7327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7327: 
	call	get_stack_char_array_element
 jmp .UNIQUE7328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7328: 
	movsbl	%al, %ebx
 jmp .UNIQUE7329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7329: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7330: 
	movq	16(%rax), %rax
 jmp .UNIQUE7331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7331: 
	movq	24(%rax), %rax
 jmp .UNIQUE7332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7332: 
	movl	$0, %esi
 jmp .UNIQUE7333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7333: 
	movq	%rax, %rdi
 jmp .UNIQUE7334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7334: 
	call	get_stack_int_array_element
 jmp .UNIQUE7335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7335: 
	subl	$1, %eax
 jmp .UNIQUE7336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7336: 
	movl	%r13d, %ecx
 jmp .UNIQUE7337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7337: 
	movl	%r12d, %edx
 jmp .UNIQUE7338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7338: 
	movl	%ebx, %esi
 jmp .UNIQUE7339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7339: 
	movl	%eax, %edi
 jmp .UNIQUE7340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7340: 
	call	towerOfHanoi_secure
 jmp .UNIQUE7341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7341: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7342: 
	movq	8(%rax), %rax
 jmp .UNIQUE7343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7343: 
	movq	%rax, %rdi
 jmp .UNIQUE7344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7344: 
	call	free_chunks_from_secure_stack
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
	movq	%rax, %rdi
 jmp .UNIQUE7347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7347: 
	call	free_fun_params_that_point_to_stack
.L621:
 jmp .UNIQUE7348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7348: 
	addq	$88, %rsp
 jmp .UNIQUE7349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7349: 
	popq	%rbx
 jmp .UNIQUE7350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7350: 
	popq	%r12
 jmp .UNIQUE7351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7351: 
	popq	%r13
 jmp .UNIQUE7352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7352: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7353: 
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
 jmp .UNIQUE7354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7354: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7355: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7356: 
	pushq	%r13
 jmp .UNIQUE7357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7357: 
	pushq	%r12
 jmp .UNIQUE7358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7358: 
	pushq	%rbx
 jmp .UNIQUE7359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7359: 
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
 jmp .UNIQUE7360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7360: 
	movl	%edi, -52(%rbp)
 jmp .UNIQUE7361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7361: 
	movl	%ecx, %eax
 jmp .UNIQUE7362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7362: 
	movb	%sil, -56(%rbp)
 jmp .UNIQUE7363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7363: 
	movb	%dl, -60(%rbp)
 jmp .UNIQUE7364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7364: 
	movb	%al, -64(%rbp)
 jmp .UNIQUE7365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7365: 
	movsbl	-64(%rbp), %ecx
 jmp .UNIQUE7366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7366: 
	movsbl	-60(%rbp), %edx
 jmp .UNIQUE7367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7367: 
	movsbl	-56(%rbp), %esi
 jmp .UNIQUE7368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7368: 
	movl	-52(%rbp), %eax
 jmp .UNIQUE7369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7369: 
	movl	%eax, %edi
 jmp .UNIQUE7370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7370: 
	call	tower_of_Hanoi_init_secure_template
 jmp .UNIQUE7371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7371: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE7372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7372: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7373: 
	movq	16(%rax), %rax
 jmp .UNIQUE7374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7374: 
	movq	24(%rax), %rax
 jmp .UNIQUE7375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7375: 
	movl	$0, %esi
 jmp .UNIQUE7376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7376: 
	movq	%rax, %rdi
 jmp .UNIQUE7377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7377: 
	call	get_stack_int_array_element
 jmp .UNIQUE7378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7378: 
	cmpl	$1, %eax
 jmp .UNIQUE7379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7379: 
	jne	.L625
 jmp .UNIQUE7380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7380: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7381: 
	movq	8(%rax), %rax
 jmp .UNIQUE7382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7382: 
	movq	%rax, %rdi
 jmp .UNIQUE7383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7383: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE7384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7384: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7385: 
	movq	%rax, %rdi
 jmp .UNIQUE7386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7386: 
	call	free_fun_params_that_point_to_stack
 jmp .UNIQUE7387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7387: 
	jmp	.L624
.L625:
 jmp .UNIQUE7388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7388: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7389: 
	movq	16(%rax), %rax
 jmp .UNIQUE7390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7390: 
	movq	8(%rax), %rax
 jmp .UNIQUE7391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7391: 
	movl	$1, %esi
 jmp .UNIQUE7392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7392: 
	movq	%rax, %rdi
 jmp .UNIQUE7393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7393: 
	call	get_stack_char_array_element
 jmp .UNIQUE7394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7394: 
	movsbl	%al, %r13d
 jmp .UNIQUE7395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7395: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7396: 
	movq	16(%rax), %rax
 jmp .UNIQUE7397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7397: 
	movq	8(%rax), %rax
 jmp .UNIQUE7398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7398: 
	movl	$2, %esi
 jmp .UNIQUE7399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7399: 
	movq	%rax, %rdi
 jmp .UNIQUE7400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7400: 
	call	get_stack_char_array_element
 jmp .UNIQUE7401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7401: 
	movsbl	%al, %r12d
 jmp .UNIQUE7402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7402: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7403: 
	movq	16(%rax), %rax
 jmp .UNIQUE7404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7404: 
	movq	8(%rax), %rax
 jmp .UNIQUE7405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7405: 
	movl	$0, %esi
 jmp .UNIQUE7406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7406: 
	movq	%rax, %rdi
 jmp .UNIQUE7407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7407: 
	call	get_stack_char_array_element
 jmp .UNIQUE7408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7408: 
	movsbl	%al, %ebx
 jmp .UNIQUE7409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7409: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7410: 
	movq	16(%rax), %rax
 jmp .UNIQUE7411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7411: 
	movq	24(%rax), %rax
 jmp .UNIQUE7412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7412: 
	movl	$0, %esi
 jmp .UNIQUE7413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7413: 
	movq	%rax, %rdi
 jmp .UNIQUE7414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7414: 
	call	get_stack_int_array_element
 jmp .UNIQUE7415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7415: 
	subl	$1, %eax
 jmp .UNIQUE7416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7416: 
	movl	%r13d, %ecx
 jmp .UNIQUE7417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7417: 
	movl	%r12d, %edx
 jmp .UNIQUE7418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7418: 
	movl	%ebx, %esi
 jmp .UNIQUE7419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7419: 
	movl	%eax, %edi
 jmp .UNIQUE7420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7420: 
	call	towerOfHanoi_secure_using_template
 jmp .UNIQUE7421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7421: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7422: 
	movq	16(%rax), %rax
 jmp .UNIQUE7423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7423: 
	movq	8(%rax), %rax
 jmp .UNIQUE7424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7424: 
	movl	$0, %esi
 jmp .UNIQUE7425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7425: 
	movq	%rax, %rdi
 jmp .UNIQUE7426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7426: 
	call	get_stack_char_array_element
 jmp .UNIQUE7427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7427: 
	movsbl	%al, %r13d
 jmp .UNIQUE7428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7428: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7429: 
	movq	16(%rax), %rax
 jmp .UNIQUE7430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7430: 
	movq	8(%rax), %rax
 jmp .UNIQUE7431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7431: 
	movl	$1, %esi
 jmp .UNIQUE7432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7432: 
	movq	%rax, %rdi
 jmp .UNIQUE7433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7433: 
	call	get_stack_char_array_element
 jmp .UNIQUE7434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7434: 
	movsbl	%al, %r12d
 jmp .UNIQUE7435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7435: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7436: 
	movq	16(%rax), %rax
 jmp .UNIQUE7437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7437: 
	movq	8(%rax), %rax
 jmp .UNIQUE7438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7438: 
	movl	$2, %esi
 jmp .UNIQUE7439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7439: 
	movq	%rax, %rdi
 jmp .UNIQUE7440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7440: 
	call	get_stack_char_array_element
 jmp .UNIQUE7441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7441: 
	movsbl	%al, %ebx
 jmp .UNIQUE7442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7442: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7443: 
	movq	16(%rax), %rax
 jmp .UNIQUE7444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7444: 
	movq	24(%rax), %rax
 jmp .UNIQUE7445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7445: 
	movl	$0, %esi
 jmp .UNIQUE7446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7446: 
	movq	%rax, %rdi
 jmp .UNIQUE7447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7447: 
	call	get_stack_int_array_element
 jmp .UNIQUE7448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7448: 
	subl	$1, %eax
 jmp .UNIQUE7449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7449: 
	movl	%r13d, %ecx
 jmp .UNIQUE7450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7450: 
	movl	%r12d, %edx
 jmp .UNIQUE7451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7451: 
	movl	%ebx, %esi
 jmp .UNIQUE7452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7452: 
	movl	%eax, %edi
 jmp .UNIQUE7453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7453: 
	call	towerOfHanoi_secure_using_template
 jmp .UNIQUE7454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7454: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7455: 
	movq	8(%rax), %rax
 jmp .UNIQUE7456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7456: 
	movq	%rax, %rdi
 jmp .UNIQUE7457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7457: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE7458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7458: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7459: 
	movq	%rax, %rdi
 jmp .UNIQUE7460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7460: 
	call	free_fun_params_that_point_to_stack
.L624:
 jmp .UNIQUE7461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7461: 
	addq	$40, %rsp
 jmp .UNIQUE7462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7462: 
	popq	%rbx
 jmp .UNIQUE7463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7463: 
	popq	%r12
 jmp .UNIQUE7464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7464: 
	popq	%r13
 jmp .UNIQUE7465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7465: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7466: 
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
 jmp .UNIQUE7467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7467: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7468: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7469: 
	pushq	%r13
 jmp .UNIQUE7470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7470: 
	pushq	%r12
 jmp .UNIQUE7471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7471: 
	pushq	%rbx
 jmp .UNIQUE7472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7472: 
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
 jmp .UNIQUE7473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7473: 
	movl	%edi, -68(%rbp)
 jmp .UNIQUE7474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7474: 
	movl	%ecx, %eax
 jmp .UNIQUE7475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7475: 
	movb	%sil, -72(%rbp)
 jmp .UNIQUE7476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7476: 
	movb	%dl, -76(%rbp)
 jmp .UNIQUE7477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7477: 
	movb	%al, -80(%rbp)
 jmp .UNIQUE7478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7478: 
	movsbl	-80(%rbp), %ecx
 jmp .UNIQUE7479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7479: 
	movsbl	-76(%rbp), %edx
 jmp .UNIQUE7480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7480: 
	movsbl	-72(%rbp), %esi
 jmp .UNIQUE7481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7481: 
	movl	-68(%rbp), %eax
 jmp .UNIQUE7482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7482: 
	movl	%eax, %edi
 jmp .UNIQUE7483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7483: 
	call	tower_of_Hanoi_init_secure_template
 jmp .UNIQUE7484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7484: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE7485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7485: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE7486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7486: 
	movq	16(%rax), %rax
 jmp .UNIQUE7487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7487: 
	movq	24(%rax), %rax
 jmp .UNIQUE7488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7488: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE7489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7489: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE7490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7490: 
	movq	16(%rax), %rax
 jmp .UNIQUE7491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7491: 
	movq	8(%rax), %rax
 jmp .UNIQUE7492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7492: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE7493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7493: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE7494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7494: 
	movl	$0, %esi
 jmp .UNIQUE7495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7495: 
	movq	%rax, %rdi
 jmp .UNIQUE7496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7496: 
	call	get_stack_int_array_element
 jmp .UNIQUE7497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7497: 
	cmpl	$1, %eax
 jmp .UNIQUE7498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7498: 
	jne	.L628
 jmp .UNIQUE7499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7499: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE7500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7500: 
	movq	8(%rax), %rax
 jmp .UNIQUE7501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7501: 
	movq	%rax, %rdi
 jmp .UNIQUE7502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7502: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE7503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7503: 
	movq	-56(%rbp), %rax
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
	call	free_fun_params_that_point_to_stack
 jmp .UNIQUE7506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7506: 
	jmp	.L627
.L628:
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
	movl	$1, %esi
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
	movsbl	%al, %r13d
 jmp .UNIQUE7512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7512: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7513: 
	movl	$2, %esi
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
	call	get_stack_char_array_element
 jmp .UNIQUE7516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7516: 
	movsbl	%al, %r12d
 jmp .UNIQUE7517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7517: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7518: 
	movl	$0, %esi
 jmp .UNIQUE7519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7519: 
	movq	%rax, %rdi
 jmp .UNIQUE7520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7520: 
	call	get_stack_char_array_element
 jmp .UNIQUE7521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7521: 
	movsbl	%al, %ebx
 jmp .UNIQUE7522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7522: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE7523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7523: 
	movl	$0, %esi
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
	call	get_stack_int_array_element
 jmp .UNIQUE7526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7526: 
	subl	$1, %eax
 jmp .UNIQUE7527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7527: 
	movl	%r13d, %ecx
 jmp .UNIQUE7528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7528: 
	movl	%r12d, %edx
 jmp .UNIQUE7529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7529: 
	movl	%ebx, %esi
 jmp .UNIQUE7530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7530: 
	movl	%eax, %edi
 jmp .UNIQUE7531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7531: 
	call	towerOfHanoi_secure_using_template
 jmp .UNIQUE7532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7532: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7533: 
	movl	$0, %esi
 jmp .UNIQUE7534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7534: 
	movq	%rax, %rdi
 jmp .UNIQUE7535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7535: 
	call	get_stack_char_array_element
 jmp .UNIQUE7536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7536: 
	movsbl	%al, %r13d
 jmp .UNIQUE7537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7537: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7538: 
	movl	$1, %esi
 jmp .UNIQUE7539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7539: 
	movq	%rax, %rdi
 jmp .UNIQUE7540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7540: 
	call	get_stack_char_array_element
 jmp .UNIQUE7541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7541: 
	movsbl	%al, %r12d
 jmp .UNIQUE7542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7542: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7543: 
	movl	$2, %esi
 jmp .UNIQUE7544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7544: 
	movq	%rax, %rdi
 jmp .UNIQUE7545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7545: 
	call	get_stack_char_array_element
 jmp .UNIQUE7546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7546: 
	movsbl	%al, %ebx
 jmp .UNIQUE7547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7547: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE7548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7548: 
	movl	$0, %esi
 jmp .UNIQUE7549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7549: 
	movq	%rax, %rdi
 jmp .UNIQUE7550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7550: 
	call	get_stack_int_array_element
 jmp .UNIQUE7551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7551: 
	subl	$1, %eax
 jmp .UNIQUE7552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7552: 
	movl	%r13d, %ecx
 jmp .UNIQUE7553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7553: 
	movl	%r12d, %edx
 jmp .UNIQUE7554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7554: 
	movl	%ebx, %esi
 jmp .UNIQUE7555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7555: 
	movl	%eax, %edi
 jmp .UNIQUE7556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7556: 
	call	towerOfHanoi_secure_using_template
 jmp .UNIQUE7557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7557: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE7558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7558: 
	movq	8(%rax), %rax
 jmp .UNIQUE7559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7559: 
	movq	%rax, %rdi
 jmp .UNIQUE7560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7560: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE7561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7561: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE7562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7562: 
	movq	%rax, %rdi
 jmp .UNIQUE7563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7563: 
	call	free_fun_params_that_point_to_stack
.L627:
 jmp .UNIQUE7564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7564: 
	addq	$56, %rsp
 jmp .UNIQUE7565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7565: 
	popq	%rbx
 jmp .UNIQUE7566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7566: 
	popq	%r12
 jmp .UNIQUE7567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7567: 
	popq	%r13
 jmp .UNIQUE7568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7568: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7569: 
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
 jmp .UNIQUE7570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7570: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7571: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7572: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE7573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7573: 
	movl	$0, -4(%rbp)
 jmp .UNIQUE7574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7574: 
	jmp	.L631
.L634:
 jmp .UNIQUE7575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7575: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE7576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7576: 
	movslq	%eax, %rdx
 jmp .UNIQUE7577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7577: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7578: 
	addq	%rdx, %rax
 jmp .UNIQUE7579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7579: 
	movzbl	(%rax), %eax
 jmp .UNIQUE7580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7580: 
	cmpb	$66, %al
 jmp .UNIQUE7581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7581: 
	je	.L632
 jmp .UNIQUE7582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7582: 
	movl	$0, %eax
 jmp .UNIQUE7583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7583: 
	jmp	.L633
.L632:
 jmp .UNIQUE7584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7584: 
	addl	$1, -4(%rbp)
.L631:
 jmp .UNIQUE7585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7585: 
	cmpl	$1, -4(%rbp)
 jmp .UNIQUE7586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7586: 
	jle	.L634
 jmp .UNIQUE7587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7587: 
	movl	$1, %eax
.L633:
 jmp .UNIQUE7588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7588: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7589: 
	ret
	.cfi_endproc
.LFE126:
	.size	check_next_canaries, .-check_next_canaries
	.section	.rodata
.LC120:
	.string	"key no%d=0x%02x\n"
	.text
	.globl	find_keyshares
	.type	find_keyshares, @function
find_keyshares:
.LFB127:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE7590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7590: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7591: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7592: 
	subq	$112, %rsp
 jmp .UNIQUE7593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7593: 
	movq	%fs:40, %rax
 jmp .UNIQUE7594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7594: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE7595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7595: 
	xorl	%eax, %eax
 jmp .UNIQUE7596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7596: 
	movl	$0, -92(%rbp)
 jmp .UNIQUE7597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7597: 
	movq	$foo, -64(%rbp)
 jmp .UNIQUE7598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7598: 
	movq	$main, -56(%rbp)
 jmp .UNIQUE7599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7599: 
	movq	$foo2, -48(%rbp)
 jmp .UNIQUE7600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7600: 
	movq	$find_keyshares, -40(%rbp)
 jmp .UNIQUE7601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7601: 
	movl	$0, -96(%rbp)
 jmp .UNIQUE7602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7602: 
	movq	$__executable_start, -32(%rbp)
 jmp .UNIQUE7603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7603: 
	movq	$__etext, -24(%rbp)
 jmp .UNIQUE7604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7604: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE7605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7605: 
	jmp	.L636
.L637:
 jmp .UNIQUE7606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7606: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7607: 
	cltq
 jmp .UNIQUE7608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7608: 
	movb	$0, -16(%rbp,%rax)
 jmp .UNIQUE7609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7609: 
	addl	$1, -100(%rbp)
.L636:
 jmp .UNIQUE7610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7610: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE7611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7611: 
	jle	.L637
 jmp .UNIQUE7612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7612: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE7613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7613: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE7614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7614: 
	jmp	.L638
.L642:
 jmp .UNIQUE7615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7615: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7616: 
	movzbl	(%rax), %eax
 jmp .UNIQUE7617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7617: 
	cmpb	$-21, %al
 jmp .UNIQUE7618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7618: 
	jne	.L639
 jmp .UNIQUE7619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7619: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7620: 
	addq	$1, %rax
 jmp .UNIQUE7621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7621: 
	movzbl	(%rax), %eax
 jmp .UNIQUE7622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7622: 
	cmpb	$7, %al
 jmp .UNIQUE7623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7623: 
	jne	.L639
 jmp .UNIQUE7624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7624: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7625: 
	addq	$2, %rax
 jmp .UNIQUE7626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7626: 
	movq	%rax, %rdi
 jmp .UNIQUE7627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7627: 
	call	check_next_canaries
 jmp .UNIQUE7628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7628: 
	testl	%eax, %eax
 jmp .UNIQUE7629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7629: 
	je	.L639
 jmp .UNIQUE7630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7630: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE7631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7631: 
	jmp	.L640
.L641:
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
	cltq
 jmp .UNIQUE7634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7634: 
	movzbl	-16(%rbp,%rax), %edx
 jmp .UNIQUE7635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7635: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7636: 
	cltq
 jmp .UNIQUE7637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7637: 
	leaq	4(%rax), %rcx
 jmp .UNIQUE7638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7638: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7639: 
	addq	%rcx, %rax
 jmp .UNIQUE7640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7640: 
	movzbl	(%rax), %eax
 jmp .UNIQUE7641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7641: 
	xorl	%eax, %edx
 jmp .UNIQUE7642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7642: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7643: 
	cltq
 jmp .UNIQUE7644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7644: 
	movb	%dl, -16(%rbp,%rax)
 jmp .UNIQUE7645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7645: 
	addl	$1, -100(%rbp)
.L640:
 jmp .UNIQUE7646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7646: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE7647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7647: 
	jle	.L641
.L639:
 jmp .UNIQUE7648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7648: 
	addq	$1, -88(%rbp)
.L638:
 jmp .UNIQUE7649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7649: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7650: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE7651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7651: 
	jbe	.L642
 jmp .UNIQUE7652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7652: 
	movl	$0, -96(%rbp)
 jmp .UNIQUE7653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7653: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE7654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7654: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE7655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7655: 
	movq	$0, -80(%rbp)
 jmp .UNIQUE7656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7656: 
	jmp	.L643
.L647:
 jmp .UNIQUE7657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7657: 
	cmpl	$0, -96(%rbp)
 jmp .UNIQUE7658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7658: 
	jne	.L644
 jmp .UNIQUE7659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7659: 
	addq	$4, -80(%rbp)
 jmp .UNIQUE7660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7660: 
	movl	$1, -96(%rbp)
 jmp .UNIQUE7661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7661: 
	jmp	.L643
.L644:
 jmp .UNIQUE7662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7662: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE7663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7663: 
	jmp	.L645
.L646:
 jmp .UNIQUE7664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7664: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7665: 
	cltq
 jmp .UNIQUE7666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7666: 
	movzbl	-16(%rbp,%rax), %edx
 jmp .UNIQUE7667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7667: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7668: 
	movslq	%eax, %rcx
 jmp .UNIQUE7669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7669: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE7670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7670: 
	addq	%rax, %rcx
 jmp .UNIQUE7671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7671: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7672: 
	addq	%rcx, %rax
 jmp .UNIQUE7673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7673: 
	movzbl	(%rax), %eax
 jmp .UNIQUE7674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7674: 
	xorl	%eax, %edx
 jmp .UNIQUE7675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7675: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7676: 
	cltq
 jmp .UNIQUE7677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7677: 
	movb	%dl, -16(%rbp,%rax)
 jmp .UNIQUE7678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7678: 
	addl	$1, -100(%rbp)
.L645:
 jmp .UNIQUE7679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7679: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE7680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7680: 
	jle	.L646
 jmp .UNIQUE7681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7681: 
	addq	$5, -80(%rbp)
 jmp .UNIQUE7682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7682: 
	movl	$0, -96(%rbp)
.L643:
 jmp .UNIQUE7683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7683: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE7684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7684: 
	cmpq	%rax, -80(%rbp)
 jmp .UNIQUE7685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7685: 
	jl	.L647
 jmp .UNIQUE7686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7686: 
	movl	$0, -96(%rbp)
 jmp .UNIQUE7687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7687: 
	movq	entire_stack_memory_chunk(%rip), %rax
 jmp .UNIQUE7688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7688: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE7689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7689: 
	movq	$0, -72(%rbp)
 jmp .UNIQUE7690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7690: 
	jmp	.L648
.L652:
 jmp .UNIQUE7691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7691: 
	cmpl	$0, -96(%rbp)
 jmp .UNIQUE7692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7692: 
	jne	.L649
 jmp .UNIQUE7693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7693: 
	addq	$4, -72(%rbp)
 jmp .UNIQUE7694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7694: 
	movl	$1, -96(%rbp)
 jmp .UNIQUE7695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7695: 
	jmp	.L648
.L649:
 jmp .UNIQUE7696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7696: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE7697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7697: 
	jmp	.L650
.L651:
 jmp .UNIQUE7698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7698: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7699: 
	cltq
 jmp .UNIQUE7700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7700: 
	movzbl	-16(%rbp,%rax), %edx
 jmp .UNIQUE7701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7701: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7702: 
	movslq	%eax, %rcx
 jmp .UNIQUE7703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7703: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE7704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7704: 
	addq	%rax, %rcx
 jmp .UNIQUE7705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7705: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7706: 
	addq	%rcx, %rax
 jmp .UNIQUE7707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7707: 
	movzbl	(%rax), %eax
 jmp .UNIQUE7708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7708: 
	xorl	%eax, %edx
 jmp .UNIQUE7709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7709: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7710: 
	cltq
 jmp .UNIQUE7711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7711: 
	movb	%dl, -16(%rbp,%rax)
 jmp .UNIQUE7712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7712: 
	addl	$1, -100(%rbp)
.L650:
 jmp .UNIQUE7713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7713: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE7714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7714: 
	jle	.L651
 jmp .UNIQUE7715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7715: 
	addq	$5, -72(%rbp)
 jmp .UNIQUE7716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7716: 
	movl	$0, -96(%rbp)
.L648:
 jmp .UNIQUE7717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7717: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE7718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7718: 
	cmpq	%rax, -72(%rbp)
 jmp .UNIQUE7719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7719: 
	jl	.L652
 jmp .UNIQUE7720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7720: 
	movl	$10, %edi
 jmp .UNIQUE7721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7721: 
	call	putchar
 jmp .UNIQUE7722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7722: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE7723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7723: 
	jmp	.L653
.L654:
 jmp .UNIQUE7724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7724: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7725: 
	cltq
 jmp .UNIQUE7726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7726: 
	movzbl	-16(%rbp,%rax), %eax
 jmp .UNIQUE7727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7727: 
	movzbl	%al, %edx
 jmp .UNIQUE7728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7728: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7729: 
	movl	%eax, %esi
 jmp .UNIQUE7730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7730: 
	movl	$.LC120, %edi
 jmp .UNIQUE7731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7731: 
	movl	$0, %eax
 jmp .UNIQUE7732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7732: 
	call	printf
 jmp .UNIQUE7733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7733: 
	addl	$1, -100(%rbp)
.L653:
 jmp .UNIQUE7734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7734: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE7735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7735: 
	jle	.L654
 jmp .UNIQUE7736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7736: 
	nop
 jmp .UNIQUE7737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7737: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7738: 
	xorq	%fs:40, %rax
 jmp .UNIQUE7739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7739: 
	je	.L656
 jmp .UNIQUE7740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7740: 
	call	__stack_chk_fail
.L656:
 jmp .UNIQUE7741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7741: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7742: 
	ret
	.cfi_endproc
.LFE127:
	.size	find_keyshares, .-find_keyshares
	.section	.rodata
.LC121:
	.string	"Verification requested!"
	.text
	.globl	verification_procedure
	.type	verification_procedure, @function
verification_procedure:
.LFB128:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE7743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7743: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7744: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7745: 
	movl	$.LC121, %edi
 jmp .UNIQUE7746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7746: 
	call	puts
 jmp .UNIQUE7747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7747: 
	movl	$0, %eax
 jmp .UNIQUE7748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7748: 
	call	find_keyshares
 jmp .UNIQUE7749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7749: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7750: 
	ret
	.cfi_endproc
.LFE128:
	.size	verification_procedure, .-verification_procedure
	.section	.rodata
	.align 8
.LC122:
	.string	"Going to find primes up to %d\n"
.LC123:
	.string	"Initialized parameters."
.LC124:
	.string	"Allocated space"
.LC125:
	.string	"Set 2 as first prime"
.LC126:
	.string	"\nPrimes:"
.LC127:
	.string	"\n"
.LC128:
	.string	"Total number of primes:%d\n"
	.text
	.globl	secure_find_primes_up_to_a_number
	.type	secure_find_primes_up_to_a_number, @function
secure_find_primes_up_to_a_number:
.LFB129:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE7751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7751: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7752: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7753: 
	pushq	%r12
 jmp .UNIQUE7754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7754: 
	pushq	%rbx
 jmp .UNIQUE7755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7755: 
	subq	$96, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
 jmp .UNIQUE7756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7756: 
	movl	%edi, -36(%rbp)
 jmp .UNIQUE7757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7757: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE7758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7758: 
	movl	%eax, %esi
 jmp .UNIQUE7759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7759: 
	movl	$.LC122, %edi
 jmp .UNIQUE7760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7760: 
	movl	$0, %eax
 jmp .UNIQUE7761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7761: 
	call	printf
 jmp .UNIQUE7762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7762: 
	movq	$0, 56(%rsp)
 jmp .UNIQUE7763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7763: 
	movq	$0, 48(%rsp)
 jmp .UNIQUE7764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7764: 
	movq	$4, 40(%rsp)
 jmp .UNIQUE7765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7765: 
	movq	$1, 32(%rsp)
 jmp .UNIQUE7766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7766: 
	movq	$0, 24(%rsp)
 jmp .UNIQUE7767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7767: 
	movq	$0, 16(%rsp)
 jmp .UNIQUE7768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7768: 
	movq	$0, 8(%rsp)
 jmp .UNIQUE7769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7769: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE7770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7770: 
	movl	%eax, (%rsp)
 jmp .UNIQUE7771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7771: 
	movl	$1, %r9d
 jmp .UNIQUE7772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7772: 
	movl	$4, %r8d
 jmp .UNIQUE7773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7773: 
	movl	$0, %ecx
 jmp .UNIQUE7774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7774: 
	movl	$1, %edx
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
	movl	$1, %edi
 jmp .UNIQUE7777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7777: 
	movl	$0, %eax
 jmp .UNIQUE7778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7778: 
	call	init_function_params_with_uninitialised_elements
 jmp .UNIQUE7779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7779: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE7780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7780: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7781: 
	movq	%rax, %rdi
 jmp .UNIQUE7782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7782: 
	call	put_fun_params_into_secure_stack_and_free
 jmp .UNIQUE7783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7783: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE7784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7784: 
	movl	$.LC123, %edi
 jmp .UNIQUE7785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7785: 
	call	puts
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
	movq	24(%rax), %rax
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
	call	get_stack_int_array_element
 jmp .UNIQUE7792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7792: 
	cltq
 jmp .UNIQUE7793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7793: 
	salq	$2, %rax
 jmp .UNIQUE7794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7794: 
	movl	$30, %edx
 jmp .UNIQUE7795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7795: 
	movl	$__func__.6143, %esi
 jmp .UNIQUE7796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7796: 
	movq	%rax, %rdi
 jmp .UNIQUE7797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7797: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE7798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7798: 
	movq	%rax, %rdx
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
	movq	96(%rax), %rax
 jmp .UNIQUE7802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7802: 
	movl	$0, %esi
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
	call	set_stack_pointer_array_element
 jmp .UNIQUE7805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7805: 
	movl	$.LC124, %edi
 jmp .UNIQUE7806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7806: 
	call	puts
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
	movq	24(%rax), %rax
 jmp .UNIQUE7810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7810: 
	movl	$1, %edx
 jmp .UNIQUE7811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7811: 
	movl	$3, %esi
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
	call	set_stack_int_array_element
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
	movl	$3, %esi
 jmp .UNIQUE7818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7818: 
	movq	%rax, %rdi
 jmp .UNIQUE7819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7819: 
	call	get_stack_int_array_element
 jmp .UNIQUE7820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7820: 
	subl	$1, %eax
 jmp .UNIQUE7821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7821: 
	movslq	%eax, %rbx
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
	movq	96(%rax), %rax
 jmp .UNIQUE7825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7825: 
	movl	$0, %esi
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
	call	get_stack_pointer_array_element
 jmp .UNIQUE7828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7828: 
	movl	$2, %edx
 jmp .UNIQUE7829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7829: 
	movq	%rbx, %rsi
 jmp .UNIQUE7830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7830: 
	movq	%rax, %rdi
 jmp .UNIQUE7831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7831: 
	call	set_int_array_element
 jmp .UNIQUE7832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7832: 
	movl	$.LC125, %edi
 jmp .UNIQUE7833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7833: 
	call	puts
 jmp .UNIQUE7834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7834: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7835: 
	movq	16(%rax), %rax
 jmp .UNIQUE7836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7836: 
	movq	24(%rax), %rax
 jmp .UNIQUE7837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7837: 
	movl	$3, %edx
 jmp .UNIQUE7838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7838: 
	movl	$1, %esi
 jmp .UNIQUE7839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7839: 
	movq	%rax, %rdi
 jmp .UNIQUE7840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7840: 
	call	set_stack_int_array_element
 jmp .UNIQUE7841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7841: 
	jmp	.L659
.L665:
 jmp .UNIQUE7842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7842: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7843: 
	movq	16(%rax), %rax
 jmp .UNIQUE7844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7844: 
	movq	8(%rax), %rax
 jmp .UNIQUE7845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7845: 
	movl	$0, %edx
 jmp .UNIQUE7846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7846: 
	movl	$0, %esi
 jmp .UNIQUE7847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7847: 
	movq	%rax, %rdi
 jmp .UNIQUE7848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7848: 
	call	set_stack_char_array_element
 jmp .UNIQUE7849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7849: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7850: 
	movq	16(%rax), %rax
 jmp .UNIQUE7851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7851: 
	movq	24(%rax), %rax
 jmp .UNIQUE7852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7852: 
	movl	$2, %edx
 jmp .UNIQUE7853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7853: 
	movl	$2, %esi
 jmp .UNIQUE7854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7854: 
	movq	%rax, %rdi
 jmp .UNIQUE7855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7855: 
	call	set_stack_int_array_element
 jmp .UNIQUE7856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7856: 
	jmp	.L660
.L663:
 jmp .UNIQUE7857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7857: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7858: 
	movq	16(%rax), %rax
 jmp .UNIQUE7859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7859: 
	movq	24(%rax), %rax
 jmp .UNIQUE7860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7860: 
	movl	$1, %esi
 jmp .UNIQUE7861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7861: 
	movq	%rax, %rdi
 jmp .UNIQUE7862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7862: 
	call	get_stack_int_array_element
 jmp .UNIQUE7863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7863: 
	movl	%eax, %ebx
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
	movl	%eax, %ecx
 jmp .UNIQUE7871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7871: 
	movl	%ebx, %eax
 jmp .UNIQUE7872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7872: 
	cltd
 jmp .UNIQUE7873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7873: 
	idivl	%ecx
 jmp .UNIQUE7874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7874: 
	movl	%edx, %ecx
 jmp .UNIQUE7875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7875: 
	movl	%ecx, %eax
 jmp .UNIQUE7876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7876: 
	testl	%eax, %eax
 jmp .UNIQUE7877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7877: 
	jne	.L661
 jmp .UNIQUE7878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7878: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7879: 
	movq	16(%rax), %rax
 jmp .UNIQUE7880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7880: 
	movq	8(%rax), %rax
 jmp .UNIQUE7881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7881: 
	movl	$1, %edx
 jmp .UNIQUE7882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7882: 
	movl	$0, %esi
 jmp .UNIQUE7883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7883: 
	movq	%rax, %rdi
 jmp .UNIQUE7884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7884: 
	call	set_stack_char_array_element
 jmp .UNIQUE7885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7885: 
	jmp	.L662
.L661:
 jmp .UNIQUE7886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7886: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7887: 
	movq	16(%rax), %rax
 jmp .UNIQUE7888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7888: 
	movq	24(%rax), %rax
 jmp .UNIQUE7889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7889: 
	movl	$2, %esi
 jmp .UNIQUE7890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7890: 
	movq	%rax, %rdi
 jmp .UNIQUE7891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7891: 
	call	get_stack_int_array_element
 jmp .UNIQUE7892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7892: 
	leal	1(%rax), %edx
 jmp .UNIQUE7893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7893: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7894: 
	movq	16(%rax), %rax
 jmp .UNIQUE7895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7895: 
	movq	24(%rax), %rax
 jmp .UNIQUE7896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7896: 
	movl	$2, %esi
 jmp .UNIQUE7897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7897: 
	movq	%rax, %rdi
 jmp .UNIQUE7898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7898: 
	call	set_stack_int_array_element
.L660:
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
	movl	$2, %esi
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
	call	get_stack_int_array_element
 jmp .UNIQUE7905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7905: 
	movl	%eax, %ebx
 jmp .UNIQUE7906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7906: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7907: 
	movq	16(%rax), %rax
 jmp .UNIQUE7908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7908: 
	movq	24(%rax), %rax
 jmp .UNIQUE7909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7909: 
	movl	$1, %esi
 jmp .UNIQUE7910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7910: 
	movq	%rax, %rdi
 jmp .UNIQUE7911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7911: 
	call	get_stack_int_array_element
 jmp .UNIQUE7912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7912: 
	movl	%eax, %edx
 jmp .UNIQUE7913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7913: 
	shrl	$31, %edx
 jmp .UNIQUE7914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7914: 
	addl	%edx, %eax
 jmp .UNIQUE7915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7915: 
	sarl	%eax
 jmp .UNIQUE7916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7916: 
	addl	$1, %eax
 jmp .UNIQUE7917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7917: 
	cmpl	%eax, %ebx
 jmp .UNIQUE7918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7918: 
	jle	.L663
.L662:
 jmp .UNIQUE7919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7919: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7920: 
	movq	16(%rax), %rax
 jmp .UNIQUE7921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7921: 
	movq	8(%rax), %rax
 jmp .UNIQUE7922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7922: 
	movl	$0, %esi
 jmp .UNIQUE7923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7923: 
	movq	%rax, %rdi
 jmp .UNIQUE7924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7924: 
	call	get_stack_char_array_element
 jmp .UNIQUE7925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7925: 
	testb	%al, %al
 jmp .UNIQUE7926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7926: 
	jne	.L664
 jmp .UNIQUE7927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7927: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7928: 
	movq	16(%rax), %rax
 jmp .UNIQUE7929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7929: 
	movq	24(%rax), %rax
 jmp .UNIQUE7930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7930: 
	movl	$3, %esi
 jmp .UNIQUE7931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7931: 
	movq	%rax, %rdi
 jmp .UNIQUE7932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7932: 
	call	get_stack_int_array_element
 jmp .UNIQUE7933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7933: 
	leal	1(%rax), %edx
 jmp .UNIQUE7934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7934: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7935: 
	movq	16(%rax), %rax
 jmp .UNIQUE7936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7936: 
	movq	24(%rax), %rax
 jmp .UNIQUE7937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7937: 
	movl	$3, %esi
 jmp .UNIQUE7938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7938: 
	movq	%rax, %rdi
 jmp .UNIQUE7939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7939: 
	call	set_stack_int_array_element
 jmp .UNIQUE7940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7940: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7941: 
	movq	16(%rax), %rax
 jmp .UNIQUE7942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7942: 
	movq	24(%rax), %rax
 jmp .UNIQUE7943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7943: 
	movl	$1, %esi
 jmp .UNIQUE7944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7944: 
	movq	%rax, %rdi
 jmp .UNIQUE7945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7945: 
	call	get_stack_int_array_element
 jmp .UNIQUE7946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7946: 
	movl	%eax, %r12d
 jmp .UNIQUE7947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7947: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7948: 
	movq	16(%rax), %rax
 jmp .UNIQUE7949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7949: 
	movq	24(%rax), %rax
 jmp .UNIQUE7950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7950: 
	movl	$3, %esi
 jmp .UNIQUE7951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7951: 
	movq	%rax, %rdi
 jmp .UNIQUE7952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7952: 
	call	get_stack_int_array_element
 jmp .UNIQUE7953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7953: 
	subl	$1, %eax
 jmp .UNIQUE7954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7954: 
	movslq	%eax, %rbx
 jmp .UNIQUE7955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7955: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7956: 
	movq	16(%rax), %rax
 jmp .UNIQUE7957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7957: 
	movq	96(%rax), %rax
 jmp .UNIQUE7958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7958: 
	movl	$0, %esi
 jmp .UNIQUE7959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7959: 
	movq	%rax, %rdi
 jmp .UNIQUE7960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7960: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE7961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7961: 
	movl	%r12d, %edx
 jmp .UNIQUE7962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7962: 
	movq	%rbx, %rsi
 jmp .UNIQUE7963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7963: 
	movq	%rax, %rdi
 jmp .UNIQUE7964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7964: 
	call	set_int_array_element
.L664:
 jmp .UNIQUE7965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7965: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7966: 
	movq	16(%rax), %rax
 jmp .UNIQUE7967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7967: 
	movq	24(%rax), %rax
 jmp .UNIQUE7968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7968: 
	movl	$1, %esi
 jmp .UNIQUE7969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7969: 
	movq	%rax, %rdi
 jmp .UNIQUE7970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7970: 
	call	get_stack_int_array_element
 jmp .UNIQUE7971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7971: 
	leal	2(%rax), %edx
 jmp .UNIQUE7972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7972: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7973: 
	movq	16(%rax), %rax
 jmp .UNIQUE7974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7974: 
	movq	24(%rax), %rax
 jmp .UNIQUE7975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7975: 
	movl	$1, %esi
 jmp .UNIQUE7976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7976: 
	movq	%rax, %rdi
 jmp .UNIQUE7977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7977: 
	call	set_stack_int_array_element
.L659:
 jmp .UNIQUE7978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7978: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7979: 
	movq	16(%rax), %rax
 jmp .UNIQUE7980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7980: 
	movq	24(%rax), %rax
 jmp .UNIQUE7981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7981: 
	movl	$1, %esi
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
	call	get_stack_int_array_element
 jmp .UNIQUE7984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7984: 
	movl	%eax, %ebx
 jmp .UNIQUE7985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7985: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7986: 
	movq	16(%rax), %rax
 jmp .UNIQUE7987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7987: 
	movq	24(%rax), %rax
 jmp .UNIQUE7988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7988: 
	movl	$0, %esi
 jmp .UNIQUE7989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7989: 
	movq	%rax, %rdi
 jmp .UNIQUE7990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7990: 
	call	get_stack_int_array_element
 jmp .UNIQUE7991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7991: 
	cmpl	%eax, %ebx
 jmp .UNIQUE7992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7992: 
	jle	.L665
 jmp .UNIQUE7993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7993: 
	movl	$.LC126, %edi
 jmp .UNIQUE7994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7994: 
	call	puts
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
	movl	$0, %edx
 jmp .UNIQUE7999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7999: 
	movl	$1, %esi
 jmp .UNIQUE8000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8000: 
	movq	%rax, %rdi
 jmp .UNIQUE8001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8001: 
	call	set_stack_int_array_element
 jmp .UNIQUE8002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8002: 
	jmp	.L666
.L667:
 jmp .UNIQUE8003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8003: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8004: 
	movq	16(%rax), %rax
 jmp .UNIQUE8005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8005: 
	movq	24(%rax), %rax
 jmp .UNIQUE8006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8006: 
	movl	$1, %esi
 jmp .UNIQUE8007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8007: 
	movq	%rax, %rdi
 jmp .UNIQUE8008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8008: 
	call	get_stack_int_array_element
 jmp .UNIQUE8009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8009: 
	movslq	%eax, %rbx
 jmp .UNIQUE8010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8010: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8011: 
	movq	16(%rax), %rax
 jmp .UNIQUE8012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8012: 
	movq	96(%rax), %rax
 jmp .UNIQUE8013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8013: 
	movl	$0, %esi
 jmp .UNIQUE8014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8014: 
	movq	%rax, %rdi
 jmp .UNIQUE8015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8015: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8016: 
	movq	%rbx, %rsi
 jmp .UNIQUE8017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8017: 
	movq	%rax, %rdi
 jmp .UNIQUE8018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8018: 
	call	get_int_array_element
 jmp .UNIQUE8019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8019: 
	movl	%eax, %esi
 jmp .UNIQUE8020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8020: 
	movl	$.LC22, %edi
 jmp .UNIQUE8021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8021: 
	movl	$0, %eax
 jmp .UNIQUE8022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8022: 
	call	printf
 jmp .UNIQUE8023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8023: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8024: 
	movq	16(%rax), %rax
 jmp .UNIQUE8025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8025: 
	movq	24(%rax), %rax
 jmp .UNIQUE8026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8026: 
	movl	$1, %esi
 jmp .UNIQUE8027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8027: 
	movq	%rax, %rdi
 jmp .UNIQUE8028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8028: 
	call	get_stack_int_array_element
 jmp .UNIQUE8029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8029: 
	leal	1(%rax), %edx
 jmp .UNIQUE8030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8030: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8031: 
	movq	16(%rax), %rax
 jmp .UNIQUE8032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8032: 
	movq	24(%rax), %rax
 jmp .UNIQUE8033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8033: 
	movl	$1, %esi
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
	call	set_stack_int_array_element
.L666:
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
	movq	16(%rax), %rax
 jmp .UNIQUE8038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8038: 
	movq	24(%rax), %rax
 jmp .UNIQUE8039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8039: 
	movl	$1, %esi
 jmp .UNIQUE8040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8040: 
	movq	%rax, %rdi
 jmp .UNIQUE8041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8041: 
	call	get_stack_int_array_element
 jmp .UNIQUE8042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8042: 
	movl	%eax, %ebx
 jmp .UNIQUE8043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8043: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8044: 
	movq	16(%rax), %rax
 jmp .UNIQUE8045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8045: 
	movq	24(%rax), %rax
 jmp .UNIQUE8046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8046: 
	movl	$3, %esi
 jmp .UNIQUE8047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8047: 
	movq	%rax, %rdi
 jmp .UNIQUE8048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8048: 
	call	get_stack_int_array_element
 jmp .UNIQUE8049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8049: 
	cmpl	%eax, %ebx
 jmp .UNIQUE8050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8050: 
	jl	.L667
 jmp .UNIQUE8051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8051: 
	movl	$.LC127, %edi
 jmp .UNIQUE8052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8052: 
	call	puts
 jmp .UNIQUE8053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8053: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8054: 
	movq	16(%rax), %rax
 jmp .UNIQUE8055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8055: 
	movq	24(%rax), %rax
 jmp .UNIQUE8056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8056: 
	movl	$3, %esi
 jmp .UNIQUE8057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8057: 
	movq	%rax, %rdi
 jmp .UNIQUE8058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8058: 
	call	get_stack_int_array_element
 jmp .UNIQUE8059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8059: 
	movl	%eax, %esi
 jmp .UNIQUE8060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8060: 
	movl	$.LC128, %edi
 jmp .UNIQUE8061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8061: 
	movl	$0, %eax
 jmp .UNIQUE8062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8062: 
	call	printf
 jmp .UNIQUE8063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8063: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8064: 
	movq	16(%rax), %rax
 jmp .UNIQUE8065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8065: 
	movq	96(%rax), %rax
 jmp .UNIQUE8066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8066: 
	movl	$0, %esi
 jmp .UNIQUE8067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8067: 
	movq	%rax, %rdi
 jmp .UNIQUE8068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8068: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8069: 
	movq	%rax, %rdi
 jmp .UNIQUE8070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8070: 
	call	managed_secure_free
 jmp .UNIQUE8071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8071: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8072: 
	movq	8(%rax), %rax
 jmp .UNIQUE8073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8073: 
	movq	%rax, %rdi
 jmp .UNIQUE8074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8074: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE8075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8075: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8076: 
	movq	%rax, %rdi
 jmp .UNIQUE8077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8077: 
	call	free_fun_params_that_point_to_stack
 jmp .UNIQUE8078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8078: 
	addq	$96, %rsp
 jmp .UNIQUE8079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8079: 
	popq	%rbx
 jmp .UNIQUE8080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8080: 
	popq	%r12
 jmp .UNIQUE8081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8081: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE8082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8082: 
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
 jmp .UNIQUE8083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8083: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE8084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8084: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE8085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8085: 
	subq	$48, %rsp
 jmp .UNIQUE8086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8086: 
	movl	%edi, -36(%rbp)
 jmp .UNIQUE8087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8087: 
	movb	$0, -21(%rbp)
 jmp .UNIQUE8088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8088: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE8089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8089: 
	movl	%eax, %esi
 jmp .UNIQUE8090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8090: 
	movl	$.LC122, %edi
 jmp .UNIQUE8091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8091: 
	movl	$0, %eax
 jmp .UNIQUE8092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8092: 
	call	printf
 jmp .UNIQUE8093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8093: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE8094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8094: 
	cltq
 jmp .UNIQUE8095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8095: 
	salq	$2, %rax
 jmp .UNIQUE8096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8096: 
	movl	$122, %edx
 jmp .UNIQUE8097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8097: 
	movl	$__func__.6161, %esi
 jmp .UNIQUE8098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8098: 
	movq	%rax, %rdi
 jmp .UNIQUE8099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8099: 
	call	error_checking_malloc
 jmp .UNIQUE8100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8100: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE8101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8101: 
	movl	$1, -12(%rbp)
 jmp .UNIQUE8102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8102: 
	movl	-12(%rbp), %eax
 jmp .UNIQUE8103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8103: 
	cltq
 jmp .UNIQUE8104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8104: 
	salq	$2, %rax
 jmp .UNIQUE8105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8105: 
	leaq	-4(%rax), %rdx
 jmp .UNIQUE8106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8106: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE8107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8107: 
	addq	%rdx, %rax
 jmp .UNIQUE8108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8108: 
	movl	$2, (%rax)
 jmp .UNIQUE8109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8109: 
	movl	$3, -20(%rbp)
 jmp .UNIQUE8110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8110: 
	jmp	.L669
.L675:
 jmp .UNIQUE8111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8111: 
	movb	$0, -21(%rbp)
 jmp .UNIQUE8112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8112: 
	movl	$2, -16(%rbp)
 jmp .UNIQUE8113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8113: 
	jmp	.L670
.L673:
 jmp .UNIQUE8114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8114: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE8115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8115: 
	cltd
 jmp .UNIQUE8116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8116: 
	idivl	-16(%rbp)
 jmp .UNIQUE8117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8117: 
	movl	%edx, %eax
 jmp .UNIQUE8118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8118: 
	testl	%eax, %eax
 jmp .UNIQUE8119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8119: 
	jne	.L671
 jmp .UNIQUE8120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8120: 
	movb	$1, -21(%rbp)
 jmp .UNIQUE8121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8121: 
	jmp	.L672
.L671:
 jmp .UNIQUE8122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8122: 
	addl	$1, -16(%rbp)
.L670:
 jmp .UNIQUE8123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8123: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE8124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8124: 
	movl	%eax, %edx
 jmp .UNIQUE8125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8125: 
	shrl	$31, %edx
 jmp .UNIQUE8126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8126: 
	addl	%edx, %eax
 jmp .UNIQUE8127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8127: 
	sarl	%eax
 jmp .UNIQUE8128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8128: 
	addl	$1, %eax
 jmp .UNIQUE8129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8129: 
	cmpl	-16(%rbp), %eax
 jmp .UNIQUE8130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8130: 
	jge	.L673
.L672:
 jmp .UNIQUE8131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8131: 
	cmpb	$0, -21(%rbp)
 jmp .UNIQUE8132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8132: 
	jne	.L674
 jmp .UNIQUE8133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8133: 
	addl	$1, -12(%rbp)
 jmp .UNIQUE8134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8134: 
	movl	-12(%rbp), %eax
 jmp .UNIQUE8135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8135: 
	cltq
 jmp .UNIQUE8136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8136: 
	salq	$2, %rax
 jmp .UNIQUE8137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8137: 
	leaq	-4(%rax), %rdx
 jmp .UNIQUE8138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8138: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE8139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8139: 
	addq	%rax, %rdx
 jmp .UNIQUE8140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8140: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE8141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8141: 
	movl	%eax, (%rdx)
.L674:
 jmp .UNIQUE8142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8142: 
	addl	$2, -20(%rbp)
.L669:
 jmp .UNIQUE8143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8143: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE8144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8144: 
	cmpl	-36(%rbp), %eax
 jmp .UNIQUE8145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8145: 
	jle	.L675
 jmp .UNIQUE8146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8146: 
	movl	$.LC126, %edi
 jmp .UNIQUE8147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8147: 
	call	puts
 jmp .UNIQUE8148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8148: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE8149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8149: 
	jmp	.L676
.L677:
 jmp .UNIQUE8150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8150: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE8151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8151: 
	cltq
 jmp .UNIQUE8152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8152: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE8153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8153: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE8154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8154: 
	addq	%rdx, %rax
 jmp .UNIQUE8155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8155: 
	movl	(%rax), %eax
 jmp .UNIQUE8156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8156: 
	movl	%eax, %esi
 jmp .UNIQUE8157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8157: 
	movl	$.LC22, %edi
 jmp .UNIQUE8158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8158: 
	movl	$0, %eax
 jmp .UNIQUE8159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8159: 
	call	printf
 jmp .UNIQUE8160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8160: 
	addl	$1, -20(%rbp)
.L676:
 jmp .UNIQUE8161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8161: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE8162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8162: 
	cmpl	-12(%rbp), %eax
 jmp .UNIQUE8163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8163: 
	jl	.L677
 jmp .UNIQUE8164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8164: 
	movl	$.LC127, %edi
 jmp .UNIQUE8165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8165: 
	call	puts
 jmp .UNIQUE8166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8166: 
	movl	-12(%rbp), %eax
 jmp .UNIQUE8167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8167: 
	movl	%eax, %esi
 jmp .UNIQUE8168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8168: 
	movl	$.LC128, %edi
 jmp .UNIQUE8169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8169: 
	movl	$0, %eax
 jmp .UNIQUE8170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8170: 
	call	printf
 jmp .UNIQUE8171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8171: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE8172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8172: 
	movq	%rax, %rdi
 jmp .UNIQUE8173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8173: 
	call	free
 jmp .UNIQUE8174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8174: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE8175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8175: 
	ret
	.cfi_endproc
.LFE130:
	.size	find_primes_up_to_a_number, .-find_primes_up_to_a_number
	.section	.rodata
.LC129:
	.string	"Primes with sieve:"
.LC130:
	.string	"Total: %d primes.\n"
	.text
	.globl	simple_sieve_of_Eratosthenes
	.type	simple_sieve_of_Eratosthenes, @function
simple_sieve_of_Eratosthenes:
.LFB131:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE8176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8176: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE8177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8177: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE8178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8178: 
	subq	$48, %rsp
 jmp .UNIQUE8179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8179: 
	movl	%edi, -36(%rbp)
 jmp .UNIQUE8180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8180: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE8181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8181: 
	cvtsi2sd	-36(%rbp), %xmm0
 jmp .UNIQUE8182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8182: 
	call	sqrt
 jmp .UNIQUE8183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8183: 
	movsd	%xmm0, -48(%rbp)
 jmp .UNIQUE8184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8184: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE8185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8185: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE8186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8186: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE8187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8187: 
	addl	$1, %eax
 jmp .UNIQUE8188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8188: 
	cltq
 jmp .UNIQUE8189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8189: 
	movl	$174, %edx
 jmp .UNIQUE8190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8190: 
	movl	$__func__.6179, %esi
 jmp .UNIQUE8191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8191: 
	movq	%rax, %rdi
 jmp .UNIQUE8192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8192: 
	call	error_checking_malloc
 jmp .UNIQUE8193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8193: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE8194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8194: 
	movl	$2, -28(%rbp)
 jmp .UNIQUE8195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8195: 
	jmp	.L679
.L680:
 jmp .UNIQUE8196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8196: 
	movl	-28(%rbp), %eax
 jmp .UNIQUE8197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8197: 
	movslq	%eax, %rdx
 jmp .UNIQUE8198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8198: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE8199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8199: 
	addq	%rdx, %rax
 jmp .UNIQUE8200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8200: 
	movb	$1, (%rax)
 jmp .UNIQUE8201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8201: 
	addl	$1, -28(%rbp)
.L679:
 jmp .UNIQUE8202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8202: 
	movl	-28(%rbp), %eax
 jmp .UNIQUE8203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8203: 
	cmpl	-36(%rbp), %eax
 jmp .UNIQUE8204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8204: 
	jle	.L680
 jmp .UNIQUE8205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8205: 
	movl	$2, -28(%rbp)
 jmp .UNIQUE8206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8206: 
	jmp	.L681
.L685:
 jmp .UNIQUE8207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8207: 
	movl	-28(%rbp), %eax
 jmp .UNIQUE8208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8208: 
	movslq	%eax, %rdx
 jmp .UNIQUE8209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8209: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE8210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8210: 
	addq	%rdx, %rax
 jmp .UNIQUE8211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8211: 
	movzbl	(%rax), %eax
 jmp .UNIQUE8212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8212: 
	cmpb	$1, %al
 jmp .UNIQUE8213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8213: 
	jne	.L682
 jmp .UNIQUE8214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8214: 
	movl	-28(%rbp), %eax
 jmp .UNIQUE8215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8215: 
	addl	%eax, %eax
 jmp .UNIQUE8216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8216: 
	movl	%eax, -24(%rbp)
 jmp .UNIQUE8217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8217: 
	jmp	.L683
.L684:
 jmp .UNIQUE8218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8218: 
	movl	-24(%rbp), %eax
 jmp .UNIQUE8219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8219: 
	movslq	%eax, %rdx
 jmp .UNIQUE8220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8220: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE8221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8221: 
	addq	%rdx, %rax
 jmp .UNIQUE8222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8222: 
	movb	$0, (%rax)
 jmp .UNIQUE8223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8223: 
	movl	-28(%rbp), %eax
 jmp .UNIQUE8224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8224: 
	addl	%eax, -24(%rbp)
.L683:
 jmp .UNIQUE8225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8225: 
	movl	-24(%rbp), %eax
 jmp .UNIQUE8226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8226: 
	cmpl	-36(%rbp), %eax
 jmp .UNIQUE8227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8227: 
	jle	.L684
.L682:
 jmp .UNIQUE8228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8228: 
	addl	$1, -28(%rbp)
.L681:
 jmp .UNIQUE8229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8229: 
	cvtsi2sd	-28(%rbp), %xmm1
 jmp .UNIQUE8230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8230: 
	movsd	-16(%rbp), %xmm2
 jmp .UNIQUE8231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8231: 
	movsd	.LC45(%rip), %xmm0
 jmp .UNIQUE8232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8232: 
	addsd	%xmm2, %xmm0
 jmp .UNIQUE8233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8233: 
	ucomisd	%xmm1, %xmm0
 jmp .UNIQUE8234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8234: 
	jnb	.L685
 jmp .UNIQUE8235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8235: 
	movl	$10, %edi
 jmp .UNIQUE8236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8236: 
	call	putchar
 jmp .UNIQUE8237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8237: 
	movl	$.LC129, %edi
 jmp .UNIQUE8238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8238: 
	call	puts
 jmp .UNIQUE8239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8239: 
	movl	$2, -28(%rbp)
 jmp .UNIQUE8240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8240: 
	jmp	.L686
.L688:
 jmp .UNIQUE8241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8241: 
	movl	-28(%rbp), %eax
 jmp .UNIQUE8242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8242: 
	movslq	%eax, %rdx
 jmp .UNIQUE8243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8243: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE8244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8244: 
	addq	%rdx, %rax
 jmp .UNIQUE8245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8245: 
	movzbl	(%rax), %eax
 jmp .UNIQUE8246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8246: 
	cmpb	$1, %al
 jmp .UNIQUE8247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8247: 
	jne	.L687
 jmp .UNIQUE8248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8248: 
	movl	-28(%rbp), %eax
 jmp .UNIQUE8249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8249: 
	movl	%eax, %esi
 jmp .UNIQUE8250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8250: 
	movl	$.LC22, %edi
 jmp .UNIQUE8251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8251: 
	movl	$0, %eax
 jmp .UNIQUE8252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8252: 
	call	printf
 jmp .UNIQUE8253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8253: 
	addl	$1, -20(%rbp)
.L687:
 jmp .UNIQUE8254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8254: 
	addl	$1, -28(%rbp)
.L686:
 jmp .UNIQUE8255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8255: 
	movl	-28(%rbp), %eax
 jmp .UNIQUE8256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8256: 
	cmpl	-36(%rbp), %eax
 jmp .UNIQUE8257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8257: 
	jle	.L688
 jmp .UNIQUE8258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8258: 
	movl	$10, %edi
 jmp .UNIQUE8259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8259: 
	call	putchar
 jmp .UNIQUE8260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8260: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE8261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8261: 
	movl	%eax, %esi
 jmp .UNIQUE8262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8262: 
	movl	$.LC130, %edi
 jmp .UNIQUE8263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8263: 
	movl	$0, %eax
 jmp .UNIQUE8264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8264: 
	call	printf
 jmp .UNIQUE8265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8265: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE8266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8266: 
	ret
	.cfi_endproc
.LFE131:
	.size	simple_sieve_of_Eratosthenes, .-simple_sieve_of_Eratosthenes
	.section	.rodata
.LC131:
	.string	"Primes with secure sieve:"
	.text
	.globl	secure_sieve_of_Eratosthenes
	.type	secure_sieve_of_Eratosthenes, @function
secure_sieve_of_Eratosthenes:
.LFB132:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE8267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8267: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE8268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8268: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE8269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8269: 
	pushq	%rbx
 jmp .UNIQUE8270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8270: 
	subq	$104, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE8271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8271: 
	movl	%edi, -36(%rbp)
 jmp .UNIQUE8272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8272: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE8273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8273: 
	movq	$0, 56(%rsp)
 jmp .UNIQUE8274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8274: 
	movq	$0, 48(%rsp)
 jmp .UNIQUE8275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8275: 
	movq	$1, 40(%rsp)
 jmp .UNIQUE8276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8276: 
	movq	$1, 32(%rsp)
 jmp .UNIQUE8277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8277: 
	movq	$0, 24(%rsp)
 jmp .UNIQUE8278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8278: 
	movq	$1, 16(%rsp)
 jmp .UNIQUE8279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8279: 
	movq	$0, 8(%rsp)
 jmp .UNIQUE8280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8280: 
	movq	$0, (%rsp)
 jmp .UNIQUE8281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8281: 
	movl	$0, %r9d
 jmp .UNIQUE8282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8282: 
	movl	%eax, %r8d
 jmp .UNIQUE8283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8283: 
	movl	$2, %ecx
 jmp .UNIQUE8284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8284: 
	movl	$4, %edx
 jmp .UNIQUE8285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8285: 
	movl	$0, %esi
 jmp .UNIQUE8286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8286: 
	movl	$1, %edi
 jmp .UNIQUE8287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8287: 
	movl	$0, %eax
 jmp .UNIQUE8288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8288: 
	call	init_function_params_with_uninitialised_elements
 jmp .UNIQUE8289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8289: 
	movq	%rax, -24(%rbp)
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
	movq	%rax, %rdi
 jmp .UNIQUE8292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8292: 
	call	put_fun_params_into_secure_stack_and_free
 jmp .UNIQUE8293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8293: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE8294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8294: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8295: 
	movq	16(%rax), %rax
 jmp .UNIQUE8296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8296: 
	movq	24(%rax), %rax
 jmp .UNIQUE8297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8297: 
	movl	$0, %esi
 jmp .UNIQUE8298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8298: 
	movq	%rax, %rdi
 jmp .UNIQUE8299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8299: 
	call	get_stack_int_array_element
 jmp .UNIQUE8300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8300: 
	cvtsi2sd	%eax, %xmm0
 jmp .UNIQUE8301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8301: 
	call	sqrt
 jmp .UNIQUE8302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8302: 
	movsd	%xmm0, -48(%rbp)
 jmp .UNIQUE8303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8303: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE8304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8304: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE8305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8305: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE8306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8306: 
	movq	72(%rdx), %rdx
 jmp .UNIQUE8307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8307: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE8308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8308: 
	movsd	-48(%rbp), %xmm0
 jmp .UNIQUE8309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8309: 
	movl	$0, %esi
 jmp .UNIQUE8310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8310: 
	movq	%rdx, %rdi
 jmp .UNIQUE8311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8311: 
	call	set_stack_double_array_element
 jmp .UNIQUE8312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8312: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8313: 
	movq	16(%rax), %rax
 jmp .UNIQUE8314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8314: 
	movq	24(%rax), %rax
 jmp .UNIQUE8315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8315: 
	movl	$0, %esi
 jmp .UNIQUE8316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8316: 
	movq	%rax, %rdi
 jmp .UNIQUE8317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8317: 
	call	get_stack_int_array_element
 jmp .UNIQUE8318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8318: 
	addl	$1, %eax
 jmp .UNIQUE8319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8319: 
	cltq
 jmp .UNIQUE8320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8320: 
	movl	$243, %edx
 jmp .UNIQUE8321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8321: 
	movl	$__func__.6196, %esi
 jmp .UNIQUE8322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8322: 
	movq	%rax, %rdi
 jmp .UNIQUE8323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8323: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE8324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8324: 
	movq	%rax, %rdx
 jmp .UNIQUE8325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8325: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8326: 
	movq	16(%rax), %rax
 jmp .UNIQUE8327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8327: 
	movq	96(%rax), %rax
 jmp .UNIQUE8328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8328: 
	movl	$0, %esi
 jmp .UNIQUE8329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8329: 
	movq	%rax, %rdi
 jmp .UNIQUE8330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8330: 
	call	set_stack_pointer_array_element
 jmp .UNIQUE8331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8331: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8332: 
	movq	16(%rax), %rax
 jmp .UNIQUE8333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8333: 
	movq	24(%rax), %rax
 jmp .UNIQUE8334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8334: 
	movl	$2, %edx
 jmp .UNIQUE8335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8335: 
	movl	$2, %esi
 jmp .UNIQUE8336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8336: 
	movq	%rax, %rdi
 jmp .UNIQUE8337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8337: 
	call	set_stack_int_array_element
 jmp .UNIQUE8338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8338: 
	jmp	.L690
.L691:
 jmp .UNIQUE8339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8339: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8340: 
	movq	16(%rax), %rax
 jmp .UNIQUE8341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8341: 
	movq	24(%rax), %rax
 jmp .UNIQUE8342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8342: 
	movl	$2, %esi
 jmp .UNIQUE8343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8343: 
	movq	%rax, %rdi
 jmp .UNIQUE8344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8344: 
	call	get_stack_int_array_element
 jmp .UNIQUE8345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8345: 
	movslq	%eax, %rbx
 jmp .UNIQUE8346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8346: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8347: 
	movq	16(%rax), %rax
 jmp .UNIQUE8348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8348: 
	movq	96(%rax), %rax
 jmp .UNIQUE8349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8349: 
	movl	$0, %esi
 jmp .UNIQUE8350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8350: 
	movq	%rax, %rdi
 jmp .UNIQUE8351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8351: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8352: 
	movl	$1, %edx
 jmp .UNIQUE8353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8353: 
	movq	%rbx, %rsi
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
	call	set_char_array_element
 jmp .UNIQUE8356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8356: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8357: 
	movq	16(%rax), %rax
 jmp .UNIQUE8358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8358: 
	movq	24(%rax), %rax
 jmp .UNIQUE8359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8359: 
	movl	$2, %esi
 jmp .UNIQUE8360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8360: 
	movq	%rax, %rdi
 jmp .UNIQUE8361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8361: 
	call	get_stack_int_array_element
 jmp .UNIQUE8362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8362: 
	leal	1(%rax), %edx
 jmp .UNIQUE8363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8363: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8364: 
	movq	16(%rax), %rax
 jmp .UNIQUE8365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8365: 
	movq	24(%rax), %rax
 jmp .UNIQUE8366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8366: 
	movl	$2, %esi
 jmp .UNIQUE8367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8367: 
	movq	%rax, %rdi
 jmp .UNIQUE8368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8368: 
	call	set_stack_int_array_element
.L690:
 jmp .UNIQUE8369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8369: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8370: 
	movq	16(%rax), %rax
 jmp .UNIQUE8371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8371: 
	movq	24(%rax), %rax
 jmp .UNIQUE8372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8372: 
	movl	$2, %esi
 jmp .UNIQUE8373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8373: 
	movq	%rax, %rdi
 jmp .UNIQUE8374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8374: 
	call	get_stack_int_array_element
 jmp .UNIQUE8375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8375: 
	movl	%eax, %ebx
 jmp .UNIQUE8376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8376: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8377: 
	movq	16(%rax), %rax
 jmp .UNIQUE8378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8378: 
	movq	24(%rax), %rax
 jmp .UNIQUE8379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8379: 
	movl	$0, %esi
 jmp .UNIQUE8380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8380: 
	movq	%rax, %rdi
 jmp .UNIQUE8381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8381: 
	call	get_stack_int_array_element
 jmp .UNIQUE8382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8382: 
	cmpl	%eax, %ebx
 jmp .UNIQUE8383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8383: 
	jle	.L691
 jmp .UNIQUE8384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8384: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8385: 
	movq	16(%rax), %rax
 jmp .UNIQUE8386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8386: 
	movq	24(%rax), %rax
 jmp .UNIQUE8387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8387: 
	movl	$2, %edx
 jmp .UNIQUE8388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8388: 
	movl	$2, %esi
 jmp .UNIQUE8389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8389: 
	movq	%rax, %rdi
 jmp .UNIQUE8390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8390: 
	call	set_stack_int_array_element
 jmp .UNIQUE8391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8391: 
	jmp	.L692
.L696:
 jmp .UNIQUE8392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8392: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8393: 
	movq	16(%rax), %rax
 jmp .UNIQUE8394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8394: 
	movq	24(%rax), %rax
 jmp .UNIQUE8395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8395: 
	movl	$2, %esi
 jmp .UNIQUE8396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8396: 
	movq	%rax, %rdi
 jmp .UNIQUE8397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8397: 
	call	get_stack_int_array_element
 jmp .UNIQUE8398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8398: 
	movslq	%eax, %rbx
 jmp .UNIQUE8399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8399: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8400: 
	movq	16(%rax), %rax
 jmp .UNIQUE8401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8401: 
	movq	96(%rax), %rax
 jmp .UNIQUE8402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8402: 
	movl	$0, %esi
 jmp .UNIQUE8403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8403: 
	movq	%rax, %rdi
 jmp .UNIQUE8404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8404: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8405: 
	movq	%rbx, %rsi
 jmp .UNIQUE8406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8406: 
	movq	%rax, %rdi
 jmp .UNIQUE8407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8407: 
	call	get_char_array_element
 jmp .UNIQUE8408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8408: 
	cmpb	$1, %al
 jmp .UNIQUE8409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8409: 
	jne	.L693
 jmp .UNIQUE8410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8410: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8411: 
	movq	16(%rax), %rax
 jmp .UNIQUE8412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8412: 
	movq	24(%rax), %rax
 jmp .UNIQUE8413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8413: 
	movl	$2, %esi
 jmp .UNIQUE8414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8414: 
	movq	%rax, %rdi
 jmp .UNIQUE8415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8415: 
	call	get_stack_int_array_element
 jmp .UNIQUE8416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8416: 
	leal	(%rax,%rax), %edx
 jmp .UNIQUE8417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8417: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8418: 
	movq	16(%rax), %rax
 jmp .UNIQUE8419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8419: 
	movq	24(%rax), %rax
 jmp .UNIQUE8420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8420: 
	movl	$3, %esi
 jmp .UNIQUE8421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8421: 
	movq	%rax, %rdi
 jmp .UNIQUE8422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8422: 
	call	set_stack_int_array_element
 jmp .UNIQUE8423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8423: 
	jmp	.L694
.L695:
 jmp .UNIQUE8424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8424: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8425: 
	movq	16(%rax), %rax
 jmp .UNIQUE8426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8426: 
	movq	24(%rax), %rax
 jmp .UNIQUE8427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8427: 
	movl	$3, %esi
 jmp .UNIQUE8428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8428: 
	movq	%rax, %rdi
 jmp .UNIQUE8429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8429: 
	call	get_stack_int_array_element
 jmp .UNIQUE8430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8430: 
	movslq	%eax, %rbx
 jmp .UNIQUE8431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8431: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8432: 
	movq	16(%rax), %rax
 jmp .UNIQUE8433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8433: 
	movq	96(%rax), %rax
 jmp .UNIQUE8434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8434: 
	movl	$0, %esi
 jmp .UNIQUE8435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8435: 
	movq	%rax, %rdi
 jmp .UNIQUE8436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8436: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8437: 
	movl	$0, %edx
 jmp .UNIQUE8438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8438: 
	movq	%rbx, %rsi
 jmp .UNIQUE8439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8439: 
	movq	%rax, %rdi
 jmp .UNIQUE8440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8440: 
	call	set_char_array_element
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
	movl	$3, %esi
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
	movl	%eax, %ebx
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
	call	get_stack_int_array_element
 jmp .UNIQUE8454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8454: 
	leal	(%rbx,%rax), %edx
 jmp .UNIQUE8455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8455: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8456: 
	movq	16(%rax), %rax
 jmp .UNIQUE8457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8457: 
	movq	24(%rax), %rax
 jmp .UNIQUE8458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8458: 
	movl	$3, %esi
 jmp .UNIQUE8459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8459: 
	movq	%rax, %rdi
 jmp .UNIQUE8460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8460: 
	call	set_stack_int_array_element
.L694:
 jmp .UNIQUE8461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8461: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8462: 
	movq	16(%rax), %rax
 jmp .UNIQUE8463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8463: 
	movq	24(%rax), %rax
 jmp .UNIQUE8464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8464: 
	movl	$3, %esi
 jmp .UNIQUE8465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8465: 
	movq	%rax, %rdi
 jmp .UNIQUE8466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8466: 
	call	get_stack_int_array_element
 jmp .UNIQUE8467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8467: 
	movl	%eax, %ebx
 jmp .UNIQUE8468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8468: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8469: 
	movq	16(%rax), %rax
 jmp .UNIQUE8470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8470: 
	movq	24(%rax), %rax
 jmp .UNIQUE8471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8471: 
	movl	$0, %esi
 jmp .UNIQUE8472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8472: 
	movq	%rax, %rdi
 jmp .UNIQUE8473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8473: 
	call	get_stack_int_array_element
 jmp .UNIQUE8474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8474: 
	cmpl	%eax, %ebx
 jmp .UNIQUE8475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8475: 
	jle	.L695
.L693:
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
	movl	$2, %esi
 jmp .UNIQUE8480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8480: 
	movq	%rax, %rdi
 jmp .UNIQUE8481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8481: 
	call	get_stack_int_array_element
 jmp .UNIQUE8482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8482: 
	leal	1(%rax), %edx
 jmp .UNIQUE8483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8483: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8484: 
	movq	16(%rax), %rax
 jmp .UNIQUE8485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8485: 
	movq	24(%rax), %rax
 jmp .UNIQUE8486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8486: 
	movl	$2, %esi
 jmp .UNIQUE8487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8487: 
	movq	%rax, %rdi
 jmp .UNIQUE8488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8488: 
	call	set_stack_int_array_element
.L692:
 jmp .UNIQUE8489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8489: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8490: 
	movq	16(%rax), %rax
 jmp .UNIQUE8491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8491: 
	movq	24(%rax), %rax
 jmp .UNIQUE8492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8492: 
	movl	$2, %esi
 jmp .UNIQUE8493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8493: 
	movq	%rax, %rdi
 jmp .UNIQUE8494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8494: 
	call	get_stack_int_array_element
 jmp .UNIQUE8495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8495: 
	cvtsi2sd	%eax, %xmm2
 jmp .UNIQUE8496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8496: 
	movsd	%xmm2, -48(%rbp)
 jmp .UNIQUE8497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8497: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8498: 
	movq	16(%rax), %rax
 jmp .UNIQUE8499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8499: 
	movq	72(%rax), %rax
 jmp .UNIQUE8500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8500: 
	movl	$0, %esi
 jmp .UNIQUE8501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8501: 
	movq	%rax, %rdi
 jmp .UNIQUE8502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8502: 
	call	get_stack_double_array_element
 jmp .UNIQUE8503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8503: 
	movsd	.LC45(%rip), %xmm1
 jmp .UNIQUE8504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8504: 
	addsd	%xmm1, %xmm0
 jmp .UNIQUE8505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8505: 
	ucomisd	-48(%rbp), %xmm0
 jmp .UNIQUE8506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8506: 
	jnb	.L696
 jmp .UNIQUE8507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8507: 
	movl	$10, %edi
 jmp .UNIQUE8508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8508: 
	call	putchar
 jmp .UNIQUE8509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8509: 
	movl	$.LC131, %edi
 jmp .UNIQUE8510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8510: 
	call	puts
 jmp .UNIQUE8511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8511: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8512: 
	movq	16(%rax), %rax
 jmp .UNIQUE8513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8513: 
	movq	24(%rax), %rax
 jmp .UNIQUE8514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8514: 
	movl	$2, %edx
 jmp .UNIQUE8515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8515: 
	movl	$2, %esi
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
	call	set_stack_int_array_element
 jmp .UNIQUE8518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8518: 
	jmp	.L697
.L699:
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
	movl	$2, %esi
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
	call	get_stack_int_array_element
 jmp .UNIQUE8525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8525: 
	movslq	%eax, %rbx
 jmp .UNIQUE8526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8526: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8527: 
	movq	16(%rax), %rax
 jmp .UNIQUE8528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8528: 
	movq	96(%rax), %rax
 jmp .UNIQUE8529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8529: 
	movl	$0, %esi
 jmp .UNIQUE8530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8530: 
	movq	%rax, %rdi
 jmp .UNIQUE8531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8531: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8532: 
	movq	%rbx, %rsi
 jmp .UNIQUE8533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8533: 
	movq	%rax, %rdi
 jmp .UNIQUE8534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8534: 
	call	get_char_array_element
 jmp .UNIQUE8535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8535: 
	cmpb	$1, %al
 jmp .UNIQUE8536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8536: 
	jne	.L698
 jmp .UNIQUE8537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8537: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8538: 
	movq	16(%rax), %rax
 jmp .UNIQUE8539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8539: 
	movq	24(%rax), %rax
 jmp .UNIQUE8540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8540: 
	movl	$2, %esi
 jmp .UNIQUE8541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8541: 
	movq	%rax, %rdi
 jmp .UNIQUE8542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8542: 
	call	get_stack_int_array_element
 jmp .UNIQUE8543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8543: 
	movl	%eax, %esi
 jmp .UNIQUE8544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8544: 
	movl	$.LC22, %edi
 jmp .UNIQUE8545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8545: 
	movl	$0, %eax
 jmp .UNIQUE8546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8546: 
	call	printf
 jmp .UNIQUE8547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8547: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8548: 
	movq	16(%rax), %rax
 jmp .UNIQUE8549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8549: 
	movq	24(%rax), %rax
 jmp .UNIQUE8550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8550: 
	movl	$1, %esi
 jmp .UNIQUE8551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8551: 
	movq	%rax, %rdi
 jmp .UNIQUE8552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8552: 
	call	get_stack_int_array_element
 jmp .UNIQUE8553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8553: 
	leal	1(%rax), %edx
 jmp .UNIQUE8554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8554: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8555: 
	movq	16(%rax), %rax
 jmp .UNIQUE8556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8556: 
	movq	24(%rax), %rax
 jmp .UNIQUE8557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8557: 
	movl	$1, %esi
 jmp .UNIQUE8558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8558: 
	movq	%rax, %rdi
 jmp .UNIQUE8559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8559: 
	call	set_stack_int_array_element
.L698:
 jmp .UNIQUE8560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8560: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8561: 
	movq	16(%rax), %rax
 jmp .UNIQUE8562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8562: 
	movq	24(%rax), %rax
 jmp .UNIQUE8563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8563: 
	movl	$2, %esi
 jmp .UNIQUE8564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8564: 
	movq	%rax, %rdi
 jmp .UNIQUE8565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8565: 
	call	get_stack_int_array_element
 jmp .UNIQUE8566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8566: 
	leal	1(%rax), %edx
 jmp .UNIQUE8567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8567: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8568: 
	movq	16(%rax), %rax
 jmp .UNIQUE8569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8569: 
	movq	24(%rax), %rax
 jmp .UNIQUE8570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8570: 
	movl	$2, %esi
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
	call	set_stack_int_array_element
.L697:
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
	movq	16(%rax), %rax
 jmp .UNIQUE8575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8575: 
	movq	24(%rax), %rax
 jmp .UNIQUE8576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8576: 
	movl	$2, %esi
 jmp .UNIQUE8577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8577: 
	movq	%rax, %rdi
 jmp .UNIQUE8578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8578: 
	call	get_stack_int_array_element
 jmp .UNIQUE8579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8579: 
	movl	%eax, %ebx
 jmp .UNIQUE8580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8580: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8581: 
	movq	16(%rax), %rax
 jmp .UNIQUE8582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8582: 
	movq	24(%rax), %rax
 jmp .UNIQUE8583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8583: 
	movl	$0, %esi
 jmp .UNIQUE8584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8584: 
	movq	%rax, %rdi
 jmp .UNIQUE8585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8585: 
	call	get_stack_int_array_element
 jmp .UNIQUE8586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8586: 
	cmpl	%eax, %ebx
 jmp .UNIQUE8587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8587: 
	jle	.L699
 jmp .UNIQUE8588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8588: 
	movl	$10, %edi
 jmp .UNIQUE8589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8589: 
	call	putchar
 jmp .UNIQUE8590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8590: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8591: 
	movq	16(%rax), %rax
 jmp .UNIQUE8592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8592: 
	movq	24(%rax), %rax
 jmp .UNIQUE8593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8593: 
	movl	$1, %esi
 jmp .UNIQUE8594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8594: 
	movq	%rax, %rdi
 jmp .UNIQUE8595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8595: 
	call	get_stack_int_array_element
 jmp .UNIQUE8596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8596: 
	movl	%eax, %esi
 jmp .UNIQUE8597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8597: 
	movl	$.LC130, %edi
 jmp .UNIQUE8598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8598: 
	movl	$0, %eax
 jmp .UNIQUE8599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8599: 
	call	printf
 jmp .UNIQUE8600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8600: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8601: 
	movq	16(%rax), %rax
 jmp .UNIQUE8602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8602: 
	movq	96(%rax), %rax
 jmp .UNIQUE8603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8603: 
	movl	$0, %esi
 jmp .UNIQUE8604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8604: 
	movq	%rax, %rdi
 jmp .UNIQUE8605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8605: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8606: 
	movq	%rax, %rdi
 jmp .UNIQUE8607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8607: 
	call	managed_secure_free
 jmp .UNIQUE8608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8608: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8609: 
	movq	8(%rax), %rax
 jmp .UNIQUE8610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8610: 
	movq	%rax, %rdi
 jmp .UNIQUE8611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8611: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE8612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8612: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8613: 
	movq	%rax, %rdi
 jmp .UNIQUE8614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8614: 
	call	free_fun_params_that_point_to_stack
 jmp .UNIQUE8615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8615: 
	addq	$104, %rsp
 jmp .UNIQUE8616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8616: 
	popq	%rbx
 jmp .UNIQUE8617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8617: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE8618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8618: 
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
 jmp .UNIQUE8619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8619: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE8620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8620: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE8621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8621: 
	pushq	%rbx
 jmp .UNIQUE8622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8622: 
	subq	$104, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE8623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8623: 
	movl	%edi, -36(%rbp)
 jmp .UNIQUE8624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8624: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE8625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8625: 
	movq	$0, 56(%rsp)
 jmp .UNIQUE8626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8626: 
	movq	$0, 48(%rsp)
 jmp .UNIQUE8627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8627: 
	movq	$1, 40(%rsp)
 jmp .UNIQUE8628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8628: 
	movq	$1, 32(%rsp)
 jmp .UNIQUE8629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8629: 
	movq	$0, 24(%rsp)
 jmp .UNIQUE8630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8630: 
	movq	$1, 16(%rsp)
 jmp .UNIQUE8631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8631: 
	movq	$0, 8(%rsp)
 jmp .UNIQUE8632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8632: 
	movq	$0, (%rsp)
 jmp .UNIQUE8633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8633: 
	movl	$0, %r9d
 jmp .UNIQUE8634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8634: 
	movl	%eax, %r8d
 jmp .UNIQUE8635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8635: 
	movl	$2, %ecx
 jmp .UNIQUE8636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8636: 
	movl	$4, %edx
 jmp .UNIQUE8637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8637: 
	movl	$0, %esi
 jmp .UNIQUE8638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8638: 
	movl	$1, %edi
 jmp .UNIQUE8639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8639: 
	movl	$0, %eax
 jmp .UNIQUE8640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8640: 
	call	init_function_params_with_uninitialised_elements
 jmp .UNIQUE8641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8641: 
	movq	%rax, -24(%rbp)
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
	movq	%rax, %rdi
 jmp .UNIQUE8644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8644: 
	call	put_fun_params_into_secure_stack_and_free
 jmp .UNIQUE8645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8645: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE8646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8646: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8647: 
	movq	16(%rax), %rax
 jmp .UNIQUE8648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8648: 
	movq	24(%rax), %rax
 jmp .UNIQUE8649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8649: 
	movl	$0, %esi
 jmp .UNIQUE8650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8650: 
	movq	%rax, %rdi
 jmp .UNIQUE8651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8651: 
	call	get_stack_int_array_element
 jmp .UNIQUE8652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8652: 
	cvtsi2sd	%eax, %xmm0
 jmp .UNIQUE8653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8653: 
	call	sqrt
 jmp .UNIQUE8654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8654: 
	movsd	%xmm0, -48(%rbp)
 jmp .UNIQUE8655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8655: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE8656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8656: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE8657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8657: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE8658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8658: 
	movq	72(%rdx), %rdx
 jmp .UNIQUE8659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8659: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE8660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8660: 
	movsd	-48(%rbp), %xmm0
 jmp .UNIQUE8661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8661: 
	movl	$0, %esi
 jmp .UNIQUE8662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8662: 
	movq	%rdx, %rdi
 jmp .UNIQUE8663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8663: 
	call	set_stack_double_array_element
 jmp .UNIQUE8664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8664: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8665: 
	movq	16(%rax), %rax
 jmp .UNIQUE8666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8666: 
	movq	24(%rax), %rax
 jmp .UNIQUE8667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8667: 
	movl	$0, %esi
 jmp .UNIQUE8668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8668: 
	movq	%rax, %rdi
 jmp .UNIQUE8669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8669: 
	call	get_stack_int_array_element
 jmp .UNIQUE8670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8670: 
	addl	$1, %eax
 jmp .UNIQUE8671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8671: 
	cltq
 jmp .UNIQUE8672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8672: 
	movl	$350, %edx
 jmp .UNIQUE8673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8673: 
	movl	$__func__.6213, %esi
 jmp .UNIQUE8674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8674: 
	movq	%rax, %rdi
 jmp .UNIQUE8675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8675: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE8676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8676: 
	movq	%rax, %rdx
 jmp .UNIQUE8677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8677: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8678: 
	movq	16(%rax), %rax
 jmp .UNIQUE8679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8679: 
	movq	96(%rax), %rax
 jmp .UNIQUE8680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8680: 
	movl	$0, %esi
 jmp .UNIQUE8681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8681: 
	movq	%rax, %rdi
 jmp .UNIQUE8682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8682: 
	call	set_stack_pointer_array_element
 jmp .UNIQUE8683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8683: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8684: 
	movq	16(%rax), %rax
 jmp .UNIQUE8685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8685: 
	movq	24(%rax), %rax
 jmp .UNIQUE8686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8686: 
	movl	$2, %edx
 jmp .UNIQUE8687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8687: 
	movl	$2, %esi
 jmp .UNIQUE8688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8688: 
	movq	%rax, %rdi
 jmp .UNIQUE8689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8689: 
	call	set_stack_int_array_element
 jmp .UNIQUE8690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8690: 
	jmp	.L701
.L702:
 jmp .UNIQUE8691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8691: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8692: 
	movq	16(%rax), %rax
 jmp .UNIQUE8693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8693: 
	movq	24(%rax), %rax
 jmp .UNIQUE8694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8694: 
	movl	$2, %esi
 jmp .UNIQUE8695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8695: 
	movq	%rax, %rdi
 jmp .UNIQUE8696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8696: 
	call	get_stack_int_array_element
 jmp .UNIQUE8697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8697: 
	movslq	%eax, %rbx
 jmp .UNIQUE8698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8698: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8699: 
	movq	16(%rax), %rax
 jmp .UNIQUE8700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8700: 
	movq	96(%rax), %rax
 jmp .UNIQUE8701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8701: 
	movl	$0, %esi
 jmp .UNIQUE8702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8702: 
	movq	%rax, %rdi
 jmp .UNIQUE8703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8703: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8704: 
	movl	$1, %edx
 jmp .UNIQUE8705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8705: 
	movq	%rbx, %rsi
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
	call	set_char_array_element
 jmp .UNIQUE8708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8708: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8709: 
	movq	16(%rax), %rax
 jmp .UNIQUE8710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8710: 
	movq	24(%rax), %rax
 jmp .UNIQUE8711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8711: 
	movl	$2, %esi
 jmp .UNIQUE8712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8712: 
	movq	%rax, %rdi
 jmp .UNIQUE8713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8713: 
	call	get_stack_int_array_element
 jmp .UNIQUE8714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8714: 
	leal	1(%rax), %edx
 jmp .UNIQUE8715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8715: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8716: 
	movq	16(%rax), %rax
 jmp .UNIQUE8717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8717: 
	movq	24(%rax), %rax
 jmp .UNIQUE8718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8718: 
	movl	$2, %esi
 jmp .UNIQUE8719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8719: 
	movq	%rax, %rdi
 jmp .UNIQUE8720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8720: 
	call	set_stack_int_array_element
.L701:
 jmp .UNIQUE8721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8721: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8722: 
	movq	16(%rax), %rax
 jmp .UNIQUE8723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8723: 
	movq	24(%rax), %rax
 jmp .UNIQUE8724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8724: 
	movl	$2, %esi
 jmp .UNIQUE8725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8725: 
	movq	%rax, %rdi
 jmp .UNIQUE8726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8726: 
	call	get_stack_int_array_element
 jmp .UNIQUE8727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8727: 
	movl	%eax, %ebx
 jmp .UNIQUE8728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8728: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8729: 
	movq	16(%rax), %rax
 jmp .UNIQUE8730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8730: 
	movq	24(%rax), %rax
 jmp .UNIQUE8731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8731: 
	movl	$0, %esi
 jmp .UNIQUE8732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8732: 
	movq	%rax, %rdi
 jmp .UNIQUE8733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8733: 
	call	get_stack_int_array_element
 jmp .UNIQUE8734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8734: 
	cmpl	%eax, %ebx
 jmp .UNIQUE8735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8735: 
	jle	.L702
 jmp .UNIQUE8736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8736: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8737: 
	movq	16(%rax), %rax
 jmp .UNIQUE8738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8738: 
	movq	24(%rax), %rax
 jmp .UNIQUE8739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8739: 
	movl	$2, %edx
 jmp .UNIQUE8740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8740: 
	movl	$2, %esi
 jmp .UNIQUE8741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8741: 
	movq	%rax, %rdi
 jmp .UNIQUE8742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8742: 
	call	set_stack_int_array_element
 jmp .UNIQUE8743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8743: 
	jmp	.L703
.L707:
 jmp .UNIQUE8744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8744: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8745: 
	movq	16(%rax), %rax
 jmp .UNIQUE8746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8746: 
	movq	24(%rax), %rax
 jmp .UNIQUE8747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8747: 
	movl	$2, %esi
 jmp .UNIQUE8748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8748: 
	movq	%rax, %rdi
 jmp .UNIQUE8749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8749: 
	call	get_stack_int_array_element
 jmp .UNIQUE8750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8750: 
	movslq	%eax, %rbx
 jmp .UNIQUE8751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8751: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8752: 
	movq	16(%rax), %rax
 jmp .UNIQUE8753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8753: 
	movq	96(%rax), %rax
 jmp .UNIQUE8754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8754: 
	movl	$0, %esi
 jmp .UNIQUE8755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8755: 
	movq	%rax, %rdi
 jmp .UNIQUE8756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8756: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8757: 
	movq	%rbx, %rsi
 jmp .UNIQUE8758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8758: 
	movq	%rax, %rdi
 jmp .UNIQUE8759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8759: 
	call	get_char_array_element
 jmp .UNIQUE8760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8760: 
	cmpb	$1, %al
 jmp .UNIQUE8761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8761: 
	jne	.L704
 jmp .UNIQUE8762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8762: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8763: 
	movq	16(%rax), %rax
 jmp .UNIQUE8764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8764: 
	movq	24(%rax), %rax
 jmp .UNIQUE8765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8765: 
	movl	$2, %esi
 jmp .UNIQUE8766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8766: 
	movq	%rax, %rdi
 jmp .UNIQUE8767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8767: 
	call	get_stack_int_array_element
 jmp .UNIQUE8768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8768: 
	leal	(%rax,%rax), %edx
 jmp .UNIQUE8769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8769: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8770: 
	movq	16(%rax), %rax
 jmp .UNIQUE8771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8771: 
	movq	24(%rax), %rax
 jmp .UNIQUE8772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8772: 
	movl	$3, %esi
 jmp .UNIQUE8773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8773: 
	movq	%rax, %rdi
 jmp .UNIQUE8774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8774: 
	call	set_stack_int_array_element
 jmp .UNIQUE8775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8775: 
	jmp	.L705
.L706:
 jmp .UNIQUE8776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8776: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8777: 
	movq	16(%rax), %rax
 jmp .UNIQUE8778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8778: 
	movq	24(%rax), %rax
 jmp .UNIQUE8779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8779: 
	movl	$3, %esi
 jmp .UNIQUE8780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8780: 
	movq	%rax, %rdi
 jmp .UNIQUE8781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8781: 
	call	get_stack_int_array_element
 jmp .UNIQUE8782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8782: 
	movslq	%eax, %rbx
 jmp .UNIQUE8783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8783: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8784: 
	movq	16(%rax), %rax
 jmp .UNIQUE8785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8785: 
	movq	96(%rax), %rax
 jmp .UNIQUE8786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8786: 
	movl	$0, %esi
 jmp .UNIQUE8787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8787: 
	movq	%rax, %rdi
 jmp .UNIQUE8788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8788: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8789: 
	movl	$0, %edx
 jmp .UNIQUE8790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8790: 
	movq	%rbx, %rsi
 jmp .UNIQUE8791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8791: 
	movq	%rax, %rdi
 jmp .UNIQUE8792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8792: 
	call	set_char_array_element
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
	movl	$3, %esi
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
	movl	%eax, %ebx
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
	call	get_stack_int_array_element
 jmp .UNIQUE8806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8806: 
	leal	(%rbx,%rax), %edx
 jmp .UNIQUE8807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8807: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8808: 
	movq	16(%rax), %rax
 jmp .UNIQUE8809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8809: 
	movq	24(%rax), %rax
 jmp .UNIQUE8810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8810: 
	movl	$3, %esi
 jmp .UNIQUE8811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8811: 
	movq	%rax, %rdi
 jmp .UNIQUE8812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8812: 
	call	set_stack_int_array_element
.L705:
 jmp .UNIQUE8813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8813: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8814: 
	movq	16(%rax), %rax
 jmp .UNIQUE8815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8815: 
	movq	24(%rax), %rax
 jmp .UNIQUE8816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8816: 
	movl	$3, %esi
 jmp .UNIQUE8817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8817: 
	movq	%rax, %rdi
 jmp .UNIQUE8818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8818: 
	call	get_stack_int_array_element
 jmp .UNIQUE8819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8819: 
	movl	%eax, %ebx
 jmp .UNIQUE8820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8820: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8821: 
	movq	16(%rax), %rax
 jmp .UNIQUE8822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8822: 
	movq	24(%rax), %rax
 jmp .UNIQUE8823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8823: 
	movl	$0, %esi
 jmp .UNIQUE8824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8824: 
	movq	%rax, %rdi
 jmp .UNIQUE8825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8825: 
	call	get_stack_int_array_element
 jmp .UNIQUE8826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8826: 
	cmpl	%eax, %ebx
 jmp .UNIQUE8827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8827: 
	jle	.L706
.L704:
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
	movl	$2, %esi
 jmp .UNIQUE8832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8832: 
	movq	%rax, %rdi
 jmp .UNIQUE8833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8833: 
	call	get_stack_int_array_element
 jmp .UNIQUE8834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8834: 
	leal	1(%rax), %edx
 jmp .UNIQUE8835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8835: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8836: 
	movq	16(%rax), %rax
 jmp .UNIQUE8837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8837: 
	movq	24(%rax), %rax
 jmp .UNIQUE8838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8838: 
	movl	$2, %esi
 jmp .UNIQUE8839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8839: 
	movq	%rax, %rdi
 jmp .UNIQUE8840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8840: 
	call	set_stack_int_array_element
.L703:
 jmp .UNIQUE8841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8841: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8842: 
	movq	16(%rax), %rax
 jmp .UNIQUE8843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8843: 
	movq	24(%rax), %rax
 jmp .UNIQUE8844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8844: 
	movl	$2, %esi
 jmp .UNIQUE8845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8845: 
	movq	%rax, %rdi
 jmp .UNIQUE8846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8846: 
	call	get_stack_int_array_element
 jmp .UNIQUE8847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8847: 
	cvtsi2sd	%eax, %xmm2
 jmp .UNIQUE8848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8848: 
	movsd	%xmm2, -48(%rbp)
 jmp .UNIQUE8849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8849: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8850: 
	movq	16(%rax), %rax
 jmp .UNIQUE8851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8851: 
	movq	72(%rax), %rax
 jmp .UNIQUE8852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8852: 
	movl	$0, %esi
 jmp .UNIQUE8853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8853: 
	movq	%rax, %rdi
 jmp .UNIQUE8854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8854: 
	call	get_stack_double_array_element
 jmp .UNIQUE8855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8855: 
	movsd	.LC45(%rip), %xmm1
 jmp .UNIQUE8856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8856: 
	addsd	%xmm1, %xmm0
 jmp .UNIQUE8857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8857: 
	ucomisd	-48(%rbp), %xmm0
 jmp .UNIQUE8858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8858: 
	jnb	.L707
 jmp .UNIQUE8859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8859: 
	movl	$10, %edi
 jmp .UNIQUE8860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8860: 
	call	putchar
 jmp .UNIQUE8861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8861: 
	movl	$.LC131, %edi
 jmp .UNIQUE8862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8862: 
	call	puts
 jmp .UNIQUE8863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8863: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8864: 
	movq	16(%rax), %rax
 jmp .UNIQUE8865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8865: 
	movq	24(%rax), %rax
 jmp .UNIQUE8866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8866: 
	movl	$2, %edx
 jmp .UNIQUE8867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8867: 
	movl	$2, %esi
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
	call	set_stack_int_array_element
 jmp .UNIQUE8870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8870: 
	jmp	.L708
.L710:
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
	movl	$2, %esi
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
	call	get_stack_int_array_element
 jmp .UNIQUE8877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8877: 
	movslq	%eax, %rbx
 jmp .UNIQUE8878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8878: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8879: 
	movq	16(%rax), %rax
 jmp .UNIQUE8880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8880: 
	movq	96(%rax), %rax
 jmp .UNIQUE8881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8881: 
	movl	$0, %esi
 jmp .UNIQUE8882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8882: 
	movq	%rax, %rdi
 jmp .UNIQUE8883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8883: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8884: 
	movq	%rbx, %rsi
 jmp .UNIQUE8885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8885: 
	movq	%rax, %rdi
 jmp .UNIQUE8886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8886: 
	call	get_char_array_element
 jmp .UNIQUE8887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8887: 
	cmpb	$1, %al
 jmp .UNIQUE8888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8888: 
	jne	.L709
 jmp .UNIQUE8889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8889: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8890: 
	movq	16(%rax), %rax
 jmp .UNIQUE8891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8891: 
	movq	24(%rax), %rax
 jmp .UNIQUE8892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8892: 
	movl	$2, %esi
 jmp .UNIQUE8893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8893: 
	movq	%rax, %rdi
 jmp .UNIQUE8894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8894: 
	call	get_stack_int_array_element
 jmp .UNIQUE8895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8895: 
	movl	%eax, %esi
 jmp .UNIQUE8896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8896: 
	movl	$.LC22, %edi
 jmp .UNIQUE8897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8897: 
	movl	$0, %eax
 jmp .UNIQUE8898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8898: 
	call	printf
 jmp .UNIQUE8899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8899: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8900: 
	movq	16(%rax), %rax
 jmp .UNIQUE8901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8901: 
	movq	24(%rax), %rax
 jmp .UNIQUE8902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8902: 
	movl	$1, %esi
 jmp .UNIQUE8903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8903: 
	movq	%rax, %rdi
 jmp .UNIQUE8904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8904: 
	call	get_stack_int_array_element
 jmp .UNIQUE8905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8905: 
	leal	1(%rax), %edx
 jmp .UNIQUE8906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8906: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8907: 
	movq	16(%rax), %rax
 jmp .UNIQUE8908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8908: 
	movq	24(%rax), %rax
 jmp .UNIQUE8909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8909: 
	movl	$1, %esi
 jmp .UNIQUE8910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8910: 
	movq	%rax, %rdi
 jmp .UNIQUE8911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8911: 
	call	set_stack_int_array_element
.L709:
 jmp .UNIQUE8912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8912: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8913: 
	movq	16(%rax), %rax
 jmp .UNIQUE8914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8914: 
	movq	24(%rax), %rax
 jmp .UNIQUE8915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8915: 
	movl	$2, %esi
 jmp .UNIQUE8916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8916: 
	movq	%rax, %rdi
 jmp .UNIQUE8917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8917: 
	call	get_stack_int_array_element
 jmp .UNIQUE8918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8918: 
	leal	1(%rax), %edx
 jmp .UNIQUE8919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8919: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8920: 
	movq	16(%rax), %rax
 jmp .UNIQUE8921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8921: 
	movq	24(%rax), %rax
 jmp .UNIQUE8922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8922: 
	movl	$2, %esi
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
	call	set_stack_int_array_element
.L708:
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
	movq	16(%rax), %rax
 jmp .UNIQUE8927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8927: 
	movq	24(%rax), %rax
 jmp .UNIQUE8928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8928: 
	movl	$2, %esi
 jmp .UNIQUE8929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8929: 
	movq	%rax, %rdi
 jmp .UNIQUE8930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8930: 
	call	get_stack_int_array_element
 jmp .UNIQUE8931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8931: 
	movl	%eax, %ebx
 jmp .UNIQUE8932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8932: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8933: 
	movq	16(%rax), %rax
 jmp .UNIQUE8934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8934: 
	movq	24(%rax), %rax
 jmp .UNIQUE8935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8935: 
	movl	$0, %esi
 jmp .UNIQUE8936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8936: 
	movq	%rax, %rdi
 jmp .UNIQUE8937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8937: 
	call	get_stack_int_array_element
 jmp .UNIQUE8938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8938: 
	cmpl	%eax, %ebx
 jmp .UNIQUE8939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8939: 
	jle	.L710
 jmp .UNIQUE8940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8940: 
	movl	$10, %edi
 jmp .UNIQUE8941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8941: 
	call	putchar
 jmp .UNIQUE8942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8942: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8943: 
	movq	16(%rax), %rax
 jmp .UNIQUE8944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8944: 
	movq	24(%rax), %rax
 jmp .UNIQUE8945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8945: 
	movl	$1, %esi
 jmp .UNIQUE8946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8946: 
	movq	%rax, %rdi
 jmp .UNIQUE8947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8947: 
	call	get_stack_int_array_element
 jmp .UNIQUE8948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8948: 
	movl	%eax, %esi
 jmp .UNIQUE8949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8949: 
	movl	$.LC130, %edi
 jmp .UNIQUE8950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8950: 
	movl	$0, %eax
 jmp .UNIQUE8951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8951: 
	call	printf
 jmp .UNIQUE8952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8952: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8953: 
	movq	16(%rax), %rax
 jmp .UNIQUE8954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8954: 
	movq	96(%rax), %rax
 jmp .UNIQUE8955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8955: 
	movl	$0, %esi
 jmp .UNIQUE8956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8956: 
	movq	%rax, %rdi
 jmp .UNIQUE8957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8957: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8958: 
	movq	%rax, %rdi
 jmp .UNIQUE8959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8959: 
	call	managed_secure_free
 jmp .UNIQUE8960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8960: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8961: 
	movq	8(%rax), %rax
 jmp .UNIQUE8962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8962: 
	movq	%rax, %rdi
 jmp .UNIQUE8963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8963: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE8964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8964: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8965: 
	movq	%rax, %rdi
 jmp .UNIQUE8966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8966: 
	call	free_fun_params_that_point_to_stack
 jmp .UNIQUE8967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8967: 
	addq	$104, %rsp
 jmp .UNIQUE8968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8968: 
	popq	%rbx
 jmp .UNIQUE8969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8969: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE8970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8970: 
	ret
	.cfi_endproc
.LFE133:
	.size	user_friendly_secure_sieve_of_Eratosthenes, .-user_friendly_secure_sieve_of_Eratosthenes
	.section	.rodata
.LC132:
	.string	"Initializing heap memory"
	.align 8
.LC133:
	.string	"bytes_to_allocate_on_start:%d\n"
.LC134:
	.string	"Init_mem, alloc+key insertion"
	.align 8
.LC135:
	.string	"If successful, total bytes allocated:%ld\n"
.LC136:
	.string	"Initializing stack memory"
	.align 8
.LC137:
	.string	"Stack bytes_to_allocate_on_start:%d\n"
	.align 8
.LC138:
	.string	"Init_stack_mem, alloc+key insertion"
	.text
	.globl	init_heap_and_stack_mem
	.type	init_heap_and_stack_mem, @function
init_heap_and_stack_mem:
.LFB134:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE8971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8971: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE8972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8972: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE8973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8973: 
	movl	$.LC132, %edi
 jmp .UNIQUE8974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8974: 
	call	puts
 jmp .UNIQUE8975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8975: 
	movl	$204800, %esi
 jmp .UNIQUE8976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8976: 
	movl	$.LC133, %edi
 jmp .UNIQUE8977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8977: 
	movl	$0, %eax
 jmp .UNIQUE8978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8978: 
	call	printf
 jmp .UNIQUE8979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8979: 
	movl	$.LC134, %edi
 jmp .UNIQUE8980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8980: 
	call	puts
 jmp .UNIQUE8981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8981: 
	movl	$0, %eax
 jmp .UNIQUE8982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8982: 
	call	init_mem
 jmp .UNIQUE8983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8983: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE8984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8984: 
	movq	%rax, %rsi
 jmp .UNIQUE8985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8985: 
	movl	$.LC135, %edi
 jmp .UNIQUE8986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8986: 
	movl	$0, %eax
 jmp .UNIQUE8987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8987: 
	call	printf
 jmp .UNIQUE8988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8988: 
	movl	$.LC136, %edi
 jmp .UNIQUE8989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8989: 
	call	puts
 jmp .UNIQUE8990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8990: 
	movl	$1024, %esi
 jmp .UNIQUE8991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8991: 
	movl	$.LC137, %edi
 jmp .UNIQUE8992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8992: 
	movl	$0, %eax
 jmp .UNIQUE8993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8993: 
	call	printf
 jmp .UNIQUE8994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8994: 
	movl	$.LC138, %edi
 jmp .UNIQUE8995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8995: 
	call	puts
 jmp .UNIQUE8996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8996: 
	movl	$0, %eax
 jmp .UNIQUE8997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8997: 
	call	init_stack_mem
 jmp .UNIQUE8998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8998: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE8999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8999: 
	movq	%rax, %rsi
 jmp .UNIQUE9000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9000: 
	movl	$.LC135, %edi
 jmp .UNIQUE9001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9001: 
	movl	$0, %eax
 jmp .UNIQUE9002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9002: 
	call	printf
 jmp .UNIQUE9003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9003: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE9004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9004: 
	ret
	.cfi_endproc
.LFE134:
	.size	init_heap_and_stack_mem, .-init_heap_and_stack_mem
	.section	.rodata
.LC139:
	.string	"Installing signal handler"
	.align 8
.LC140:
	.string	"Could not install signal handler"
.LC141:
	.string	"Signal handler installed"
	.text
	.globl	install_signal_handler
	.type	install_signal_handler, @function
install_signal_handler:
.LFB135:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE9005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9005: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE9006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9006: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE9007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9007: 
	movl	$.LC139, %edi
 jmp .UNIQUE9008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9008: 
	call	puts
 jmp .UNIQUE9009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9009: 
	movq	$verification_procedure, sa(%rip)
 jmp .UNIQUE9010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9010: 
	movl	$sa+8, %edi
 jmp .UNIQUE9011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9011: 
	call	sigemptyset
 jmp .UNIQUE9012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9012: 
	movl	$268435456, sa+136(%rip)
 jmp .UNIQUE9013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9013: 
	movl	$0, %edx
 jmp .UNIQUE9014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9014: 
	movl	$sa, %esi
 jmp .UNIQUE9015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9015: 
	movl	$10, %edi
 jmp .UNIQUE9016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9016: 
	call	sigaction
 jmp .UNIQUE9017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9017: 
	cmpl	$-1, %eax
 jmp .UNIQUE9018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9018: 
	jne	.L713
 jmp .UNIQUE9019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9019: 
	movl	$.LC140, %edi
 jmp .UNIQUE9020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9020: 
	call	perror
 jmp .UNIQUE9021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9021: 
	movl	$45, %edi
 jmp .UNIQUE9022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9022: 
	call	exit
.L713:
 jmp .UNIQUE9023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9023: 
	movl	$.LC141, %edi
 jmp .UNIQUE9024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9024: 
	call	puts
 jmp .UNIQUE9025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9025: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE9026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9026: 
	ret
	.cfi_endproc
.LFE135:
	.size	install_signal_handler, .-install_signal_handler
	.globl	free_heap_and_stack_memory
	.type	free_heap_and_stack_memory, @function
free_heap_and_stack_memory:
.LFB136:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE9027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9027: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE9028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9028: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE9029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9029: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE9030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9030: 
	movq	%rax, %rdi
 jmp .UNIQUE9031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9031: 
	call	free_secure_mem
 jmp .UNIQUE9032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9032: 
	movq	entire_stack_memory_chunk(%rip), %rax
 jmp .UNIQUE9033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9033: 
	movq	%rax, %rdi
 jmp .UNIQUE9034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9034: 
	call	free_secure_stack_mem
 jmp .UNIQUE9035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9035: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE9036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9036: 
	ret
	.cfi_endproc
.LFE136:
	.size	free_heap_and_stack_memory, .-free_heap_and_stack_memory
	.local	static_global_variable_for_testing
	.comm	static_global_variable_for_testing,4,4
	.globl	foo
	.type	foo, @function
foo:
.LFB137:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE9037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9037: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE9038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9038: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE9039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9039: 
	movl	%edi, -20(%rbp)
 jmp .UNIQUE9040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9040: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE9041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9041: 
	addl	$2, %eax
 jmp .UNIQUE9042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9042: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE9043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9043: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE9044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9044: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE9045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9045: 
	ret
	.cfi_endproc
.LFE137:
	.size	foo, .-foo
	.section	.rodata
.LC142:
	.string	"My pid=%ld\n"
.LC143:
	.string	"K=%d\n"
.LC144:
	.string	"n=%d\n"
.LC145:
	.string	"main is at %p\n"
	.align 8
.LC146:
	.string	"Calculating time for primes with sieve of Eratosthenes. Normal sieve:"
	.align 8
.LC148:
	.string	"Normal sieve time:%lg cpu seconds\n"
.LC149:
	.string	"Secure sieve:"
	.align 8
.LC150:
	.string	"Secure sieve time:%lg cpu seconds\n"
.LC151:
	.string	"Ratio: %lg times slowdown\n"
.LC152:
	.string	"Going to find keyshares."
	.text
	.globl	main
	.type	main, @function
main:
.LFB138:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE9046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9046: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE9047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9047: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE9048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9048: 
	subq	$112, %rsp
 jmp .UNIQUE9049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9049: 
	movq	%fs:40, %rax
 jmp .UNIQUE9050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9050: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE9051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9051: 
	xorl	%eax, %eax
 jmp .UNIQUE9052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9052: 
	movl	$1, -96(%rbp)
 jmp .UNIQUE9053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9053: 
	movl	$2, -92(%rbp)
 jmp .UNIQUE9054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9054: 
	addl	$1, -92(%rbp)
 jmp .UNIQUE9055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9055: 
	addl	$1, -92(%rbp)
 jmp .UNIQUE9056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9056: 
	subl	$1, -92(%rbp)
 jmp .UNIQUE9057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9057: 
	movl	-92(%rbp), %eax
 jmp .UNIQUE9058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9058: 
	addl	%eax, -96(%rbp)
 jmp .UNIQUE9059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9059: 
	addl	$2, -96(%rbp)
 jmp .UNIQUE9060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9060: 
	addl	$1, -92(%rbp)
 jmp .UNIQUE9061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9061: 
	movl	$1, static_main_variable_for_testing.6245(%rip)
 jmp .UNIQUE9062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9062: 
	movl	$2, static_global_variable_for_testing(%rip)
 jmp .UNIQUE9063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9063: 
	movl	$0, %eax
 jmp .UNIQUE9064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9064: 
	call	init_heap_and_stack_mem
 jmp .UNIQUE9065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9065: 
	movl	$0, %eax
 jmp .UNIQUE9066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9066: 
	call	install_signal_handler
 jmp .UNIQUE9067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9067: 
	call	getpid
 jmp .UNIQUE9068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9068: 
	movl	%eax, -88(%rbp)
 jmp .UNIQUE9069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9069: 
	movl	-88(%rbp), %eax
 jmp .UNIQUE9070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9070: 
	cltq
 jmp .UNIQUE9071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9071: 
	movq	%rax, %rsi
 jmp .UNIQUE9072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9072: 
	movl	$.LC142, %edi
 jmp .UNIQUE9073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9073: 
	movl	$0, %eax
 jmp .UNIQUE9074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9074: 
	call	printf
 jmp .UNIQUE9075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9075: 
	movl	-96(%rbp), %eax
 jmp .UNIQUE9076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9076: 
	movl	%eax, %esi
 jmp .UNIQUE9077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9077: 
	movl	$.LC143, %edi
 jmp .UNIQUE9078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9078: 
	movl	$0, %eax
 jmp .UNIQUE9079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9079: 
	call	printf
 jmp .UNIQUE9080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9080: 
	movl	$5, %edi
 jmp .UNIQUE9081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9081: 
	call	foo
 jmp .UNIQUE9082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9082: 
	movl	%eax, -84(%rbp)
 jmp .UNIQUE9083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9083: 
	movl	-84(%rbp), %eax
 jmp .UNIQUE9084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9084: 
	movl	%eax, %edi
 jmp .UNIQUE9085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9085: 
	call	foo2
 jmp .UNIQUE9086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9086: 
	movl	%eax, -84(%rbp)
 jmp .UNIQUE9087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9087: 
	movl	-84(%rbp), %eax
 jmp .UNIQUE9088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9088: 
	movl	%eax, %esi
 jmp .UNIQUE9089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9089: 
	movl	$.LC144, %edi
 jmp .UNIQUE9090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9090: 
	movl	$0, %eax
 jmp .UNIQUE9091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9091: 
	call	printf
 jmp .UNIQUE9092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9092: 
	movl	$main, %esi
 jmp .UNIQUE9093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9093: 
	movl	$.LC145, %edi
 jmp .UNIQUE9094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9094: 
	movl	$0, %eax
 jmp .UNIQUE9095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9095: 
	call	printf
 jmp .UNIQUE9096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9096: 
	movl	$10, %edi
 jmp .UNIQUE9097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9097: 
	call	putchar
 jmp .UNIQUE9098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9098: 
	movl	$.LC146, %edi
 jmp .UNIQUE9099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9099: 
	call	puts
 jmp .UNIQUE9100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9100: 
	call	clock
 jmp .UNIQUE9101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9101: 
	movq	%rax, -80(%rbp)
 jmp .UNIQUE9102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9102: 
	movl	$10000, %edi
 jmp .UNIQUE9103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9103: 
	call	simple_sieve_of_Eratosthenes
 jmp .UNIQUE9104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9104: 
	call	clock
 jmp .UNIQUE9105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9105: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE9106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9106: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE9107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9107: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE9108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9108: 
	subq	%rax, %rdx
 jmp .UNIQUE9109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9109: 
	movq	%rdx, %rax
 jmp .UNIQUE9110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9110: 
	cvtsi2sdq	%rax, %xmm0
 jmp .UNIQUE9111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9111: 
	movsd	.LC147(%rip), %xmm1
 jmp .UNIQUE9112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9112: 
	divsd	%xmm1, %xmm0
 jmp .UNIQUE9113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9113: 
	movsd	%xmm0, -64(%rbp)
 jmp .UNIQUE9114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9114: 
	movl	$10, %edi
 jmp .UNIQUE9115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9115: 
	call	putchar
 jmp .UNIQUE9116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9116: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE9117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9117: 
	movq	%rax, -104(%rbp)
 jmp .UNIQUE9118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9118: 
	movsd	-104(%rbp), %xmm0
 jmp .UNIQUE9119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9119: 
	movl	$.LC148, %edi
 jmp .UNIQUE9120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9120: 
	movl	$1, %eax
 jmp .UNIQUE9121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9121: 
	call	printf
 jmp .UNIQUE9122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9122: 
	movl	$.LC149, %edi
 jmp .UNIQUE9123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9123: 
	call	puts
 jmp .UNIQUE9124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9124: 
	call	clock
 jmp .UNIQUE9125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9125: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE9126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9126: 
	movl	$10000, %edi
 jmp .UNIQUE9127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9127: 
	call	user_friendly_secure_sieve_of_Eratosthenes
 jmp .UNIQUE9128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9128: 
	call	clock
 jmp .UNIQUE9129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9129: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE9130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9130: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE9131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9131: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE9132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9132: 
	subq	%rax, %rdx
 jmp .UNIQUE9133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9133: 
	movq	%rdx, %rax
 jmp .UNIQUE9134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9134: 
	cvtsi2sdq	%rax, %xmm0
 jmp .UNIQUE9135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9135: 
	movsd	.LC147(%rip), %xmm1
 jmp .UNIQUE9136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9136: 
	divsd	%xmm1, %xmm0
 jmp .UNIQUE9137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9137: 
	movsd	%xmm0, -40(%rbp)
 jmp .UNIQUE9138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9138: 
	movl	$10, %edi
 jmp .UNIQUE9139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9139: 
	call	putchar
 jmp .UNIQUE9140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9140: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE9141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9141: 
	movq	%rax, -104(%rbp)
 jmp .UNIQUE9142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9142: 
	movsd	-104(%rbp), %xmm0
 jmp .UNIQUE9143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9143: 
	movl	$.LC148, %edi
 jmp .UNIQUE9144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9144: 
	movl	$1, %eax
 jmp .UNIQUE9145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9145: 
	call	printf
 jmp .UNIQUE9146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9146: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9147: 
	movq	%rax, -104(%rbp)
 jmp .UNIQUE9148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9148: 
	movsd	-104(%rbp), %xmm0
 jmp .UNIQUE9149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9149: 
	movl	$.LC150, %edi
 jmp .UNIQUE9150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9150: 
	movl	$1, %eax
 jmp .UNIQUE9151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9151: 
	call	printf
 jmp .UNIQUE9152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9152: 
	movl	$10, %edi
 jmp .UNIQUE9153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9153: 
	call	putchar
 jmp .UNIQUE9154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9154: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE9155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9155: 
	divsd	-64(%rbp), %xmm0
 jmp .UNIQUE9156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9156: 
	movl	$.LC151, %edi
 jmp .UNIQUE9157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9157: 
	movl	$1, %eax
 jmp .UNIQUE9158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9158: 
	call	printf
 jmp .UNIQUE9159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9159: 
	movl	$10, %edi
 jmp .UNIQUE9160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9160: 
	call	putchar
 jmp .UNIQUE9161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9161: 
	movl	$.LC152, %edi
 jmp .UNIQUE9162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9162: 
	call	puts
 jmp .UNIQUE9163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9163: 
	movl	$0, %eax
 jmp .UNIQUE9164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9164: 
	call	find_keyshares
 jmp .UNIQUE9165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9165: 
	movl	$0, %eax
 jmp .UNIQUE9166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9166: 
	call	free_heap_and_stack_memory
 jmp .UNIQUE9167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9167: 
	movl	$0, %eax
 jmp .UNIQUE9168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9168: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE9169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9169: 
	xorq	%fs:40, %rcx
 jmp .UNIQUE9170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9170: 
	je	.L719
 jmp .UNIQUE9171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9171: 
	call	__stack_chk_fail
.L719:
 jmp .UNIQUE9172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9172: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE9173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9173: 
	ret
	.cfi_endproc
.LFE138:
	.size	main, .-main
	.globl	foo2
	.type	foo2, @function
foo2:
.LFB139:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE9174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9174: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE9175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9175: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE9176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9176: 
	movl	%edi, -20(%rbp)
 jmp .UNIQUE9177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9177: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE9178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9178: 
	addl	$3, %eax
 jmp .UNIQUE9179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9179: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE9180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9180: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE9181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9181: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE9182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9182: 
	ret
	.cfi_endproc
.LFE139:
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
	.type	__func__.5333, @object
	.size	__func__.5333, 16
__func__.5333:
	.string	"check_and_merge"
	.align 16
	.type	__func__.5349, @object
	.size	__func__.5349, 20
__func__.5349:
	.string	"managed_secure_free"
	.type	__func__.5400, @object
	.size	__func__.5400, 9
__func__.5400:
	.string	"mem_test"
	.align 32
	.type	__func__.5468, @object
	.size	__func__.5468, 32
__func__.5468:
	.string	"adding_heap_arrays_time_measure"
	.align 32
	.type	__func__.5483, @object
	.size	__func__.5483, 34
__func__.5483:
	.string	"multiple_simple_mallocs_and_frees"
	.align 32
	.type	__func__.5498, @object
	.size	__func__.5498, 34
__func__.5498:
	.string	"multiple_secure_mallocs_and_frees"
	.align 16
	.type	__func__.5555, @object
	.size	__func__.5555, 19
__func__.5555:
	.string	"allocate_stack_mem"
	.align 16
	.type	__func__.5679, @object
	.size	__func__.5679, 21
__func__.5679:
	.string	"init_function_params"
	.align 32
	.type	__func__.5717, @object
	.size	__func__.5717, 49
__func__.5717:
	.string	"init_function_params_with_uninitialised_elements"
	.align 32
	.type	__func__.5760, @object
	.size	__func__.5760, 33
__func__.5760:
	.string	"put_fun_params_into_secure_stack"
	.align 32
	.type	__func__.6017, @object
	.size	__func__.6017, 36
__func__.6017:
	.string	"tower_of_Hanoi_init_secure_template"
	.align 16
	.type	__func__.6023, @object
	.size	__func__.6023, 22
__func__.6023:
	.string	"stack_fun_params_test"
	.align 32
	.type	__func__.6143, @object
	.size	__func__.6143, 34
__func__.6143:
	.string	"secure_find_primes_up_to_a_number"
	.align 16
	.type	__func__.6161, @object
	.size	__func__.6161, 27
__func__.6161:
	.string	"find_primes_up_to_a_number"
	.align 16
	.type	__func__.6179, @object
	.size	__func__.6179, 29
__func__.6179:
	.string	"simple_sieve_of_Eratosthenes"
	.align 16
	.type	__func__.6196, @object
	.size	__func__.6196, 29
__func__.6196:
	.string	"secure_sieve_of_Eratosthenes"
	.align 32
	.type	__func__.6213, @object
	.size	__func__.6213, 43
__func__.6213:
	.string	"user_friendly_secure_sieve_of_Eratosthenes"
	.local	static_main_variable_for_testing.6245
	.comm	static_main_variable_for_testing.6245,4,4
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
.LC147:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
