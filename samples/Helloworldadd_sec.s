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
	movq	$3000, -56(%rbp)
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
	movq	$0, -16(%rbp)
 jmp .UNIQUE566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE566: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE567: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE568: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE569: 
	jmp	.L60
.L64:
 jmp .UNIQUE570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE570: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE571: 
	jmp	.L61
.L63:
 jmp .UNIQUE572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE572: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE573: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE574: 
	addq	%rdx, %rax
 jmp .UNIQUE575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE575: 
	movq	%rax, %rdx
 jmp .UNIQUE576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE576: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE577: 
	addq	%rax, %rdx
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
	movq	-16(%rbp), %rcx
 jmp .UNIQUE580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE580: 
	addq	%rcx, %rax
 jmp .UNIQUE581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE581: 
	movq	%rax, %rcx
 jmp .UNIQUE582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE582: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE583: 
	addq	%rcx, %rax
 jmp .UNIQUE584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE584: 
	movzbl	(%rax), %eax
 jmp .UNIQUE585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE585: 
	movb	%al, (%rdx)
 jmp .UNIQUE586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE586: 
	addq	$1, -32(%rbp)
.L61:
 jmp .UNIQUE587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE587: 
	cmpq	$3, -32(%rbp)
 jmp .UNIQUE588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE588: 
	jg	.L62
 jmp .UNIQUE589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE589: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE590: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE591: 
	addq	%rdx, %rax
 jmp .UNIQUE592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE592: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE593: 
	jl	.L63
.L62:
 jmp .UNIQUE594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE594: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE595: 
	addq	%rax, -16(%rbp)
 jmp .UNIQUE596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE596: 
	addq	$1, -24(%rbp)
 jmp .UNIQUE597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE597: 
	addq	$9, -40(%rbp)
.L60:
 jmp .UNIQUE598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE598: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE599: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE600: 
	jl	.L64
 jmp .UNIQUE601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE601: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE602: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE603: 
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
 jmp .UNIQUE604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE604: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE605: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE606: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE607: 
	movq	%rsi, -80(%rbp)
 jmp .UNIQUE608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE608: 
	movq	%rdx, -88(%rbp)
 jmp .UNIQUE609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE609: 
	movl	%ecx, -92(%rbp)
 jmp .UNIQUE610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE610: 
	movq	%r8, -104(%rbp)
 jmp .UNIQUE611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE611: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE612: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE613: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE614: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE615: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE616: 
	cmpl	$2, -92(%rbp)
 jmp .UNIQUE617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE617: 
	jne	.L67
 jmp .UNIQUE618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE618: 
	movq	$1, -24(%rbp)
 jmp .UNIQUE619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE619: 
	jmp	.L68
.L67:
 jmp .UNIQUE620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE620: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE621: 
	movq	%rax, -24(%rbp)
.L68:
 jmp .UNIQUE622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE622: 
	movq	$0, -64(%rbp)
 jmp .UNIQUE623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE623: 
	cmpl	$0, -92(%rbp)
 jmp .UNIQUE624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE624: 
	je	.L69
 jmp .UNIQUE625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE625: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE626: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE627: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE628: 
	testq	%rax, %rax
 jmp .UNIQUE629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE629: 
	cmovs	%rdx, %rax
 jmp .UNIQUE630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE630: 
	sarq	$2, %rax
 jmp .UNIQUE631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE631: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE632: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE633: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE634: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE635: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE636: 
	cmpq	%rax, %rdx
 jmp .UNIQUE637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE637: 
	jne	.L70
 jmp .UNIQUE638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE638: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE639: 
	movq	%rdx, %rax
 jmp .UNIQUE640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE640: 
	salq	$3, %rax
 jmp .UNIQUE641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE641: 
	addq	%rdx, %rax
 jmp .UNIQUE642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE642: 
	addq	%rax, -40(%rbp)
 jmp .UNIQUE643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE643: 
	jmp	.L69
.L70:
 jmp .UNIQUE644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE644: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE645: 
	movq	%rdx, %rax
 jmp .UNIQUE646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE646: 
	salq	$3, %rax
 jmp .UNIQUE647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE647: 
	addq	%rdx, %rax
 jmp .UNIQUE648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE648: 
	addq	%rax, -40(%rbp)
 jmp .UNIQUE649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE649: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE650: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE651: 
	movq	%rax, %rdx
 jmp .UNIQUE652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE652: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE653: 
	movl	$0, %eax
 jmp .UNIQUE654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE654: 
	subq	%rcx, %rax
 jmp .UNIQUE655
NOP
NOP
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
NOP
NOP
.UNIQUE656: 
	addq	%rdx, %rax
 jmp .UNIQUE657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE657: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE658: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE659: 
	jmp	.L71
.L73:
 jmp .UNIQUE660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE660: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE661: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE662: 
	addq	%rdx, %rax
 jmp .UNIQUE663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE663: 
	movq	%rax, %rdx
 jmp .UNIQUE664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE664: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE665: 
	addq	%rax, %rdx
 jmp .UNIQUE666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE666: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE667: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE668: 
	addq	%rcx, %rax
 jmp .UNIQUE669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE669: 
	movq	%rax, %rcx
 jmp .UNIQUE670
NOP
NOP
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
NOP
NOP
.UNIQUE671: 
	addq	%rcx, %rax
 jmp .UNIQUE672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE672: 
	movzbl	(%rax), %eax
 jmp .UNIQUE673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE673: 
	movb	%al, (%rdx)
 jmp .UNIQUE674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE674: 
	addq	$1, -48(%rbp)
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
	movq	-48(%rbp), %rax
 jmp .UNIQUE676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE676: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE677: 
	addq	%rdx, %rax
 jmp .UNIQUE678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE678: 
	cmpq	$3, %rax
 jmp .UNIQUE679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE679: 
	jg	.L72
 jmp .UNIQUE680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE680: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE681: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE682: 
	addq	%rdx, %rax
 jmp .UNIQUE683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE683: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE684: 
	jl	.L73
.L72:
 jmp .UNIQUE685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE685: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE686: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE687: 
	addq	$9, -40(%rbp)
 jmp .UNIQUE688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE688: 
	jmp	.L74
.L69:
 jmp .UNIQUE689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE689: 
	jmp	.L74
.L78:
 jmp .UNIQUE690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE690: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE691: 
	jmp	.L75
.L77:
 jmp .UNIQUE692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE692: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE693: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE694: 
	addq	%rdx, %rax
 jmp .UNIQUE695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE695: 
	movq	%rax, %rdx
 jmp .UNIQUE696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE696: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE697: 
	addq	%rax, %rdx
 jmp .UNIQUE698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE698: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE699: 
	movq	-64(%rbp), %rcx
 jmp .UNIQUE700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE700: 
	addq	%rcx, %rax
 jmp .UNIQUE701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE701: 
	movq	%rax, %rcx
 jmp .UNIQUE702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE702: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE703: 
	addq	%rcx, %rax
 jmp .UNIQUE704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE704: 
	movzbl	(%rax), %eax
 jmp .UNIQUE705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE705: 
	movb	%al, (%rdx)
 jmp .UNIQUE706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE706: 
	addq	$1, -56(%rbp)
.L75:
 jmp .UNIQUE707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE707: 
	cmpq	$3, -56(%rbp)
 jmp .UNIQUE708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE708: 
	jg	.L76
 jmp .UNIQUE709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE709: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE710: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE711: 
	addq	%rdx, %rax
 jmp .UNIQUE712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE712: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE713: 
	jl	.L77
.L76:
 jmp .UNIQUE714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE714: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE715: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE716: 
	addq	$9, -64(%rbp)
.L74:
 jmp .UNIQUE717
NOP
NOP
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
NOP
NOP
.UNIQUE718: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE719: 
	jl	.L78
 jmp .UNIQUE720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE720: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE721: 
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
 jmp .UNIQUE722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE722: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE723: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE724: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE725: 
	movq	%rsi, -80(%rbp)
 jmp .UNIQUE726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE726: 
	movq	%rdx, -88(%rbp)
 jmp .UNIQUE727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE727: 
	movl	%ecx, -92(%rbp)
 jmp .UNIQUE728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE728: 
	movq	%r8, -104(%rbp)
 jmp .UNIQUE729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE729: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE730: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE731: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE732: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE733: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE734: 
	cmpl	$2, -92(%rbp)
 jmp .UNIQUE735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE735: 
	jne	.L80
 jmp .UNIQUE736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE736: 
	movq	$1, -24(%rbp)
 jmp .UNIQUE737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE737: 
	jmp	.L81
.L80:
 jmp .UNIQUE738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE738: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE739: 
	movq	%rax, -24(%rbp)
.L81:
 jmp .UNIQUE740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE740: 
	movq	$0, -64(%rbp)
 jmp .UNIQUE741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE741: 
	cmpl	$0, -92(%rbp)
 jmp .UNIQUE742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE742: 
	je	.L82
 jmp .UNIQUE743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE743: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE744: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE745: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE746: 
	testq	%rax, %rax
 jmp .UNIQUE747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE747: 
	cmovs	%rdx, %rax
 jmp .UNIQUE748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE748: 
	sarq	$2, %rax
 jmp .UNIQUE749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE749: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE750: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE751: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE752: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE753: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE754: 
	cmpq	%rax, %rdx
 jmp .UNIQUE755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE755: 
	jne	.L83
 jmp .UNIQUE756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE756: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE757: 
	movq	%rdx, %rax
 jmp .UNIQUE758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE758: 
	salq	$3, %rax
 jmp .UNIQUE759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE759: 
	addq	%rdx, %rax
 jmp .UNIQUE760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE760: 
	addq	%rax, -40(%rbp)
 jmp .UNIQUE761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE761: 
	jmp	.L82
.L83:
 jmp .UNIQUE762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE762: 
	movq	-8(%rbp), %rdx
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
	addq	%rax, -40(%rbp)
 jmp .UNIQUE767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE767: 
	movq	-104(%rbp), %rax
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
	movq	%rax, %rdx
 jmp .UNIQUE770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE770: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE771: 
	movl	$0, %eax
 jmp .UNIQUE772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE772: 
	subq	%rcx, %rax
 jmp .UNIQUE773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE773: 
	salq	$2, %rax
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
	movq	%rax, -56(%rbp)
 jmp .UNIQUE776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE776: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE777: 
	jmp	.L84
.L86:
 jmp .UNIQUE778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE778: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE779: 
	movq	-56(%rbp), %rdx
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
	movq	%rax, %rdx
 jmp .UNIQUE782
NOP
NOP
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
NOP
NOP
.UNIQUE783: 
	addq	%rax, %rdx
 jmp .UNIQUE784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE784: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE785: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE786: 
	addq	%rcx, %rax
 jmp .UNIQUE787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE787: 
	movq	%rax, %rcx
 jmp .UNIQUE788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE788: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE789: 
	addq	%rcx, %rax
 jmp .UNIQUE790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE790: 
	movzbl	(%rax), %eax
 jmp .UNIQUE791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE791: 
	movb	%al, (%rdx)
 jmp .UNIQUE792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE792: 
	addq	$1, -48(%rbp)
.L84:
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
	cmpq	$3, %rax
 jmp .UNIQUE797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE797: 
	jg	.L85
 jmp .UNIQUE798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE798: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE799: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE800: 
	addq	%rdx, %rax
 jmp .UNIQUE801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE801: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE802: 
	jl	.L86
.L85:
 jmp .UNIQUE803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE803: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE804: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE805: 
	addq	$9, -40(%rbp)
 jmp .UNIQUE806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE806: 
	jmp	.L87
.L82:
 jmp .UNIQUE807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE807: 
	jmp	.L87
.L91:
 jmp .UNIQUE808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE808: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE809: 
	jmp	.L88
.L90:
 jmp .UNIQUE810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE810: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE811: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE812: 
	addq	%rdx, %rax
 jmp .UNIQUE813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE813: 
	movq	%rax, %rdx
 jmp .UNIQUE814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE814: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE815: 
	addq	%rax, %rdx
 jmp .UNIQUE816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE816: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE817: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE818: 
	addq	%rcx, %rax
 jmp .UNIQUE819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE819: 
	movq	%rax, %rcx
 jmp .UNIQUE820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE820: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE821: 
	addq	%rcx, %rax
 jmp .UNIQUE822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE822: 
	movzbl	(%rax), %eax
 jmp .UNIQUE823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE823: 
	movb	%al, (%rdx)
 jmp .UNIQUE824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE824: 
	addq	$1, -56(%rbp)
.L88:
 jmp .UNIQUE825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE825: 
	cmpq	$3, -56(%rbp)
 jmp .UNIQUE826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE826: 
	jg	.L89
 jmp .UNIQUE827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE827: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE828: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE829: 
	addq	%rdx, %rax
 jmp .UNIQUE830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE830: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE831: 
	jl	.L90
.L89:
 jmp .UNIQUE832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE832: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE833: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE834: 
	addq	$9, -64(%rbp)
.L87:
 jmp .UNIQUE835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE835: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE836: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE837: 
	jl	.L91
 jmp .UNIQUE838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE838: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE839: 
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
 jmp .UNIQUE840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE840: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE841: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE842: 
	subq	$16, %rsp
 jmp .UNIQUE843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE843: 
	movl	$0, %edi
 jmp .UNIQUE844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE844: 
	call	time
 jmp .UNIQUE845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE845: 
	movl	%eax, %edi
 jmp .UNIQUE846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE846: 
	call	srand
 jmp .UNIQUE847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE847: 
	movl	$0, %eax
 jmp .UNIQUE848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE848: 
	call	allocate_mem
 jmp .UNIQUE849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE849: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE850: 
	movl	$.LC11, %esi
 jmp .UNIQUE851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE851: 
	movl	$.LC12, %edi
 jmp .UNIQUE852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE852: 
	call	fopen
 jmp .UNIQUE853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE853: 
	movq	%rax, keyshare_input_file(%rip)
 jmp .UNIQUE854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE854: 
	movq	keyshare_input_file(%rip), %rax
 jmp .UNIQUE855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE855: 
	testq	%rax, %rax
 jmp .UNIQUE856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE856: 
	jne	.L93
 jmp .UNIQUE857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE857: 
	movl	$.LC13, %edi
 jmp .UNIQUE858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE858: 
	call	perror
 jmp .UNIQUE859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE859: 
	movl	$43, %edi
 jmp .UNIQUE860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE860: 
	call	exit
.L93:
 jmp .UNIQUE861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE861: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE862: 
	movq	%rax, %rdi
 jmp .UNIQUE863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE863: 
	call	insert_keys_into_mem
 jmp .UNIQUE864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE864: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE865: 
	movq	%rax, entire_memory_chunk(%rip)
 jmp .UNIQUE866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE866: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE867: 
	movq	%rax, last_unused_memory(%rip)
 jmp .UNIQUE868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE868: 
	movq	keyshare_input_file(%rip), %rax
 jmp .UNIQUE869
NOP
NOP
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
NOP
NOP
.UNIQUE870: 
	call	fclose
 jmp .UNIQUE871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE871: 
	movl	$0, %eax
 jmp .UNIQUE872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE872: 
	call	init_memory_manager
 jmp .UNIQUE873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE873: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE874: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE875: 
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
 jmp .UNIQUE876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE876: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE877: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE878: 
	subq	$16, %rsp
 jmp .UNIQUE879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE879: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE880: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE881: 
	movq	%rax, %rdi
 jmp .UNIQUE882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE882: 
	call	free
 jmp .UNIQUE883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE883: 
	movl	$0, %eax
 jmp .UNIQUE884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE884: 
	call	free_memory_manager_structures
 jmp .UNIQUE885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE885: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE886: 
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
 jmp .UNIQUE887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE887: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE888: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE889: 
	subq	$24, %rsp
 jmp .UNIQUE890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE890: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE891: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE892: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE893: 
	movl	$0, %r8d
 jmp .UNIQUE894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE894: 
	movl	$0, %ecx
 jmp .UNIQUE895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE895: 
	movl	$1, %esi
 jmp .UNIQUE896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE896: 
	movq	%rax, %rdi
 jmp .UNIQUE897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE897: 
	call	get_secure_data
 jmp .UNIQUE898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE898: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE899: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE900: 
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
 jmp .UNIQUE901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE901: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE902: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE903: 
	subq	$24, %rsp
 jmp .UNIQUE904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE904: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE905: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE906: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE907: 
	movl	$0, %r8d
 jmp .UNIQUE908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE908: 
	movl	$0, %ecx
 jmp .UNIQUE909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE909: 
	movl	$4, %esi
 jmp .UNIQUE910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE910: 
	movq	%rax, %rdi
 jmp .UNIQUE911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE911: 
	call	get_secure_data
 jmp .UNIQUE912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE912: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE913: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE914: 
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
 jmp .UNIQUE915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE915: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE916: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE917: 
	subq	$24, %rsp
 jmp .UNIQUE918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE918: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE919: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE920: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE921: 
	movl	$0, %r8d
 jmp .UNIQUE922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE922: 
	movl	$0, %ecx
 jmp .UNIQUE923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE923: 
	movl	$8, %esi
 jmp .UNIQUE924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE924: 
	movq	%rax, %rdi
 jmp .UNIQUE925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE925: 
	call	get_secure_data
 jmp .UNIQUE926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE926: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE927: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE928: 
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
 jmp .UNIQUE929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE929: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE930: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE931: 
	subq	$24, %rsp
 jmp .UNIQUE932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE932: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE933: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE934: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE935: 
	movl	$0, %r8d
 jmp .UNIQUE936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE936: 
	movl	$0, %ecx
 jmp .UNIQUE937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE937: 
	movl	$8, %esi
 jmp .UNIQUE938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE938: 
	movq	%rax, %rdi
 jmp .UNIQUE939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE939: 
	call	get_secure_data
 jmp .UNIQUE940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE940: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE941: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE942: 
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
 jmp .UNIQUE943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE943: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE944: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE945: 
	subq	$32, %rsp
 jmp .UNIQUE946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE946: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE947: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE948: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE949: 
	movl	$0, %r8d
 jmp .UNIQUE950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE950: 
	movl	$0, %ecx
 jmp .UNIQUE951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE951: 
	movl	$4, %esi
 jmp .UNIQUE952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE952: 
	movq	%rax, %rdi
 jmp .UNIQUE953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE953: 
	call	get_secure_data
 jmp .UNIQUE954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE954: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE955: 
	movl	%eax, -28(%rbp)
 jmp .UNIQUE956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE956: 
	movss	-28(%rbp), %xmm0
 jmp .UNIQUE957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE957: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE958: 
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
 jmp .UNIQUE959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE959: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE960: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE961: 
	subq	$32, %rsp
 jmp .UNIQUE962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE962: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE963: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE964: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE965: 
	movl	$0, %r8d
 jmp .UNIQUE966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE966: 
	movl	$0, %ecx
 jmp .UNIQUE967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE967: 
	movl	$8, %esi
 jmp .UNIQUE968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE968: 
	movq	%rax, %rdi
 jmp .UNIQUE969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE969: 
	call	get_secure_data
 jmp .UNIQUE970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE970: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE971
NOP
NOP
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
NOP
NOP
.UNIQUE972: 
	movsd	-32(%rbp), %xmm0
 jmp .UNIQUE973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE973: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE974: 
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
 jmp .UNIQUE975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE975: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE976: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE977: 
	subq	$32, %rsp
 jmp .UNIQUE978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE978: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE979: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE980: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE981: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE982: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE983: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE984: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE985: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE986: 
	movq	%rcx, %r8
 jmp .UNIQUE987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE987: 
	movl	$1, %ecx
 jmp .UNIQUE988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE988: 
	movq	%rax, %rdi
 jmp .UNIQUE989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE989: 
	call	get_secure_data
 jmp .UNIQUE990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE990: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE991: 
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
 jmp .UNIQUE992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE992: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE993: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE994: 
	subq	$32, %rsp
 jmp .UNIQUE995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE995: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE996: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE997: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE998: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE999: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE1000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1000: 
	movq	%rcx, %r8
 jmp .UNIQUE1001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1001: 
	movl	$1, %ecx
 jmp .UNIQUE1002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1002: 
	movl	$1, %esi
 jmp .UNIQUE1003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1003: 
	movq	%rax, %rdi
 jmp .UNIQUE1004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1004: 
	call	get_secure_data
 jmp .UNIQUE1005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1005: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE1006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1006: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1007: 
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
 jmp .UNIQUE1008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1008: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1009: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1010: 
	subq	$32, %rsp
 jmp .UNIQUE1011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1011: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1012: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1013: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1014: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1015: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1016: 
	movq	%rcx, %r8
 jmp .UNIQUE1017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1017: 
	movl	$1, %ecx
 jmp .UNIQUE1018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1018: 
	movl	$4, %esi
 jmp .UNIQUE1019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1019: 
	movq	%rax, %rdi
 jmp .UNIQUE1020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1020: 
	call	get_secure_data
 jmp .UNIQUE1021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1021: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE1022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1022: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1023: 
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
 jmp .UNIQUE1024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1024: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1025: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1026: 
	subq	$32, %rsp
 jmp .UNIQUE1027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1027: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1028: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1029: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1030: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1031: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1032: 
	movq	%rcx, %r8
 jmp .UNIQUE1033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1033: 
	movl	$1, %ecx
 jmp .UNIQUE1034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1034: 
	movl	$8, %esi
 jmp .UNIQUE1035
NOP
NOP
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
NOP
NOP
.UNIQUE1036: 
	call	get_secure_data
 jmp .UNIQUE1037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1037: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1038: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1039: 
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
 jmp .UNIQUE1040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1040: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1041: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1042: 
	subq	$32, %rsp
 jmp .UNIQUE1043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1043: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1044: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1045: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1046: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1047: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1048: 
	movq	%rcx, %r8
 jmp .UNIQUE1049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1049: 
	movl	$1, %ecx
 jmp .UNIQUE1050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1050: 
	movl	$8, %esi
 jmp .UNIQUE1051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1051: 
	movq	%rax, %rdi
 jmp .UNIQUE1052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1052: 
	call	get_secure_data
 jmp .UNIQUE1053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1053: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1054: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1055: 
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
 jmp .UNIQUE1056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1056: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1057: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1058: 
	subq	$40, %rsp
 jmp .UNIQUE1059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1059: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1060: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1061: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1062: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1063: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1064: 
	movq	%rcx, %r8
 jmp .UNIQUE1065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1065: 
	movl	$1, %ecx
 jmp .UNIQUE1066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1066: 
	movl	$4, %esi
 jmp .UNIQUE1067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1067: 
	movq	%rax, %rdi
 jmp .UNIQUE1068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1068: 
	call	get_secure_data
 jmp .UNIQUE1069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1069: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE1070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1070: 
	movl	%eax, -36(%rbp)
 jmp .UNIQUE1071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1071: 
	movss	-36(%rbp), %xmm0
 jmp .UNIQUE1072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1072: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1073: 
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
 jmp .UNIQUE1074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1074: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1075: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1076: 
	subq	$40, %rsp
 jmp .UNIQUE1077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1077: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1078: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1079: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1080: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1081: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1082: 
	movq	%rcx, %r8
 jmp .UNIQUE1083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1083: 
	movl	$1, %ecx
 jmp .UNIQUE1084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1084: 
	movl	$8, %esi
 jmp .UNIQUE1085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1085: 
	movq	%rax, %rdi
 jmp .UNIQUE1086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1086: 
	call	get_secure_data
 jmp .UNIQUE1087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1087: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1088: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE1089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1089: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE1090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1090: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1091: 
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
 jmp .UNIQUE1092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1092: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1093: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1094: 
	subq	$24, %rsp
 jmp .UNIQUE1095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1095: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1096: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1097: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE1098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1098: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1099: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE1100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1100: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1101: 
	movl	$0, %r8d
 jmp .UNIQUE1102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1102: 
	movl	$0, %ecx
 jmp .UNIQUE1103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1103: 
	movq	%rax, %rdi
 jmp .UNIQUE1104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1104: 
	call	get_secure_data
 jmp .UNIQUE1105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1105: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1106: 
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
 jmp .UNIQUE1107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1107: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1108: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1109: 
	subq	$32, %rsp
 jmp .UNIQUE1110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1110: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1111: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1112: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE1113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1113: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE1114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1114: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE1115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1115: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1116: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE1117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1117: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1118: 
	movq	%rcx, %r8
 jmp .UNIQUE1119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1119: 
	movl	$2, %ecx
 jmp .UNIQUE1120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1120: 
	movq	%rax, %rdi
 jmp .UNIQUE1121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1121: 
	call	get_secure_data
 jmp .UNIQUE1122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1122: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1123: 
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
 jmp .UNIQUE1124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1124: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1125: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1126: 
	subq	$16, %rsp
 jmp .UNIQUE1127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1127: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1128: 
	movl	%esi, %eax
 jmp .UNIQUE1129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1129: 
	movb	%al, -12(%rbp)
 jmp .UNIQUE1130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1130: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1131: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE1132
NOP
NOP
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
NOP
NOP
.UNIQUE1133: 
	movl	$1, %edi
 jmp .UNIQUE1134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1134: 
	call	insert_data_into_mem
 jmp .UNIQUE1135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1135: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1136: 
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
 jmp .UNIQUE1137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1137: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1138: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1139: 
	subq	$16, %rsp
 jmp .UNIQUE1140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1140: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1141: 
	movl	%esi, -12(%rbp)
 jmp .UNIQUE1142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1142: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1143: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE1144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1144: 
	movq	%rax, %rsi
 jmp .UNIQUE1145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1145: 
	movl	$4, %edi
 jmp .UNIQUE1146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1146: 
	call	insert_data_into_mem
 jmp .UNIQUE1147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1147: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1148: 
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
 jmp .UNIQUE1149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1149: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1150: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1151: 
	subq	$16, %rsp
 jmp .UNIQUE1152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1152: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1153: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1154: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1155: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1156: 
	movq	%rax, %rsi
 jmp .UNIQUE1157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1157: 
	movl	$8, %edi
 jmp .UNIQUE1158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1158: 
	call	insert_data_into_mem
 jmp .UNIQUE1159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1159: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1160: 
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
 jmp .UNIQUE1161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1161: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1162: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1163: 
	subq	$16, %rsp
 jmp .UNIQUE1164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1164: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1165: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1166: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1167: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1168: 
	movq	%rax, %rsi
 jmp .UNIQUE1169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1169: 
	movl	$8, %edi
 jmp .UNIQUE1170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1170: 
	call	insert_data_into_mem
 jmp .UNIQUE1171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1171: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1172: 
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
 jmp .UNIQUE1173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1173: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1174: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1175: 
	subq	$16, %rsp
 jmp .UNIQUE1176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1176: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1177: 
	movss	%xmm0, -12(%rbp)
 jmp .UNIQUE1178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1178: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1179: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE1180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1180: 
	movq	%rax, %rsi
 jmp .UNIQUE1181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1181: 
	movl	$4, %edi
 jmp .UNIQUE1182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1182: 
	call	insert_data_into_mem
 jmp .UNIQUE1183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1183: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1184: 
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
 jmp .UNIQUE1185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1185: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1186: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1187: 
	subq	$16, %rsp
 jmp .UNIQUE1188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1188: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1189: 
	movsd	%xmm0, -16(%rbp)
 jmp .UNIQUE1190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1190: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1191: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1192: 
	movq	%rax, %rsi
 jmp .UNIQUE1193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1193: 
	movl	$8, %edi
 jmp .UNIQUE1194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1194: 
	call	insert_data_into_mem
 jmp .UNIQUE1195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1195: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1196: 
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
 jmp .UNIQUE1197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1197: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1198: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1199: 
	subq	$32, %rsp
 jmp .UNIQUE1200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1200: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1201: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1202: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE1203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1203: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE1204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1204: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE1205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1205: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1206: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE1207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1207: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1208: 
	movq	%rcx, %r8
 jmp .UNIQUE1209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1209: 
	movl	$1, %ecx
 jmp .UNIQUE1210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1210: 
	movq	%rax, %rdi
 jmp .UNIQUE1211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1211: 
	call	set_secure_data
 jmp .UNIQUE1212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1212: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1213: 
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
 jmp .UNIQUE1214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1214: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1215: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1216: 
	subq	$40, %rsp
 jmp .UNIQUE1217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1217: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1218: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1219: 
	movl	%edx, %eax
 jmp .UNIQUE1220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1220: 
	movb	%al, -36(%rbp)
 jmp .UNIQUE1221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1221: 
	movzbl	-36(%rbp), %eax
 jmp .UNIQUE1222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1222: 
	movb	%al, -1(%rbp)
 jmp .UNIQUE1223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1223: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1224: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1225: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE1226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1226: 
	movq	%rcx, %r8
 jmp .UNIQUE1227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1227: 
	movl	$1, %ecx
 jmp .UNIQUE1228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1228: 
	movl	$1, %esi
 jmp .UNIQUE1229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1229: 
	movq	%rax, %rdi
 jmp .UNIQUE1230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1230: 
	call	set_secure_data
 jmp .UNIQUE1231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1231: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1232: 
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
 jmp .UNIQUE1233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1233: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1234: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1235: 
	subq	$40, %rsp
 jmp .UNIQUE1236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1236: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1237: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1238: 
	movl	%edx, -36(%rbp)
 jmp .UNIQUE1239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1239: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE1240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1240: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE1241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1241: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1242: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1243: 
	leaq	-4(%rbp), %rax
 jmp .UNIQUE1244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1244: 
	movq	%rcx, %r8
 jmp .UNIQUE1245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1245: 
	movl	$1, %ecx
 jmp .UNIQUE1246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1246: 
	movl	$4, %esi
 jmp .UNIQUE1247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1247: 
	movq	%rax, %rdi
 jmp .UNIQUE1248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1248: 
	call	set_secure_data
 jmp .UNIQUE1249
NOP
NOP
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
NOP
NOP
.UNIQUE1250: 
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
 jmp .UNIQUE1251
NOP
NOP
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
NOP
NOP
.UNIQUE1253: 
	subq	$40, %rsp
 jmp .UNIQUE1254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1254: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1255: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1256: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE1257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1257: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1258: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1259: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1260: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1261: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE1262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1262: 
	movq	%rcx, %r8
 jmp .UNIQUE1263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1263: 
	movl	$1, %ecx
 jmp .UNIQUE1264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1264: 
	movl	$8, %esi
 jmp .UNIQUE1265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1265: 
	movq	%rax, %rdi
 jmp .UNIQUE1266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1266: 
	call	set_secure_data
 jmp .UNIQUE1267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1267: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1268: 
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
 jmp .UNIQUE1269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1269: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1270: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1271: 
	subq	$40, %rsp
 jmp .UNIQUE1272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1272: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1273: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1274: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE1275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1275: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1276: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1277: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1278: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1279: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE1280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1280: 
	movq	%rcx, %r8
 jmp .UNIQUE1281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1281: 
	movl	$1, %ecx
 jmp .UNIQUE1282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1282: 
	movl	$8, %esi
 jmp .UNIQUE1283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1283: 
	movq	%rax, %rdi
 jmp .UNIQUE1284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1284: 
	call	set_secure_data
 jmp .UNIQUE1285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1285: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1286: 
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
 jmp .UNIQUE1287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1287: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1288: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1289: 
	subq	$40, %rsp
 jmp .UNIQUE1290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1290: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1291: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1292: 
	movss	%xmm0, -36(%rbp)
 jmp .UNIQUE1293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1293: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE1294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1294: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE1295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1295: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1296: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1297: 
	leaq	-4(%rbp), %rax
 jmp .UNIQUE1298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1298: 
	movq	%rcx, %r8
 jmp .UNIQUE1299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1299: 
	movl	$1, %ecx
 jmp .UNIQUE1300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1300: 
	movl	$4, %esi
 jmp .UNIQUE1301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1301: 
	movq	%rax, %rdi
 jmp .UNIQUE1302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1302: 
	call	set_secure_data
 jmp .UNIQUE1303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1303: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1304: 
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
 jmp .UNIQUE1305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1305: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1306: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1307: 
	subq	$40, %rsp
 jmp .UNIQUE1308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1308: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1309: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1310: 
	movsd	%xmm0, -40(%rbp)
 jmp .UNIQUE1311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1311: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1312: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1313: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1314: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1315: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE1316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1316: 
	movq	%rcx, %r8
 jmp .UNIQUE1317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1317: 
	movl	$1, %ecx
 jmp .UNIQUE1318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1318: 
	movl	$8, %esi
 jmp .UNIQUE1319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1319: 
	movq	%rax, %rdi
 jmp .UNIQUE1320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1320: 
	call	set_secure_data
 jmp .UNIQUE1321
NOP
NOP
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
NOP
NOP
.UNIQUE1322: 
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
 jmp .UNIQUE1323
NOP
NOP
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
NOP
NOP
.UNIQUE1325: 
	subq	$24, %rsp
 jmp .UNIQUE1326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1326: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1327: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1328: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE1329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1329: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1330: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE1331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1331: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1332: 
	movl	$0, %r8d
 jmp .UNIQUE1333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1333: 
	movl	$0, %ecx
 jmp .UNIQUE1334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1334: 
	movq	%rax, %rdi
 jmp .UNIQUE1335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1335: 
	call	set_secure_data
 jmp .UNIQUE1336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1336: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1337: 
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
 jmp .UNIQUE1338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1338: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1339: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1340: 
	subq	$32, %rsp
 jmp .UNIQUE1341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1341: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1342: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1343: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE1344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1344: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE1345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1345: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE1346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1346: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1347: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE1348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1348: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1349: 
	movq	%rcx, %r8
 jmp .UNIQUE1350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1350: 
	movl	$2, %ecx
 jmp .UNIQUE1351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1351: 
	movq	%rax, %rdi
 jmp .UNIQUE1352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1352: 
	call	set_secure_data
 jmp .UNIQUE1353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1353: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1354: 
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
 jmp .UNIQUE1355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1355: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1356: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1357: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1358: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1359: 
	testq	%rax, %rax
 jmp .UNIQUE1360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1360: 
	jne	.L139
 jmp .UNIQUE1361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1361: 
	movl	$0, %eax
 jmp .UNIQUE1362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1362: 
	jmp	.L140
.L139:
 jmp .UNIQUE1363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1363: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1364: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1365: 
	jmp	.L141
.L143:
 jmp .UNIQUE1366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1366: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1367: 
	movq	(%rax), %rax
 jmp .UNIQUE1368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1368: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE1369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1369: 
	jl	.L142
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
	jmp	.L140
.L142:
 jmp .UNIQUE1372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1372: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1373: 
	movq	16(%rax), %rax
 jmp .UNIQUE1374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1374: 
	movq	%rax, -8(%rbp)
.L141:
 jmp .UNIQUE1375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1375: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1376: 
	jne	.L143
 jmp .UNIQUE1377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1377: 
	movl	$0, %eax
.L140:
 jmp .UNIQUE1378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1378: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1379: 
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
 jmp .UNIQUE1380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1380: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1381: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1382: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1383: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE1384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1384: 
	testq	%rax, %rax
 jmp .UNIQUE1385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1385: 
	jne	.L145
 jmp .UNIQUE1386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1386: 
	movl	$0, %eax
 jmp .UNIQUE1387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1387: 
	jmp	.L146
.L145:
 jmp .UNIQUE1388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1388: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE1389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1389: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1390: 
	jmp	.L147
.L149:
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
	movq	8(%rax), %rax
 jmp .UNIQUE1393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1393: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE1394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1394: 
	jne	.L148
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
	jmp	.L146
.L148:
 jmp .UNIQUE1397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1397: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1398: 
	movq	16(%rax), %rax
 jmp .UNIQUE1399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1399: 
	movq	%rax, -8(%rbp)
.L147:
 jmp .UNIQUE1400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1400: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1401: 
	jne	.L149
 jmp .UNIQUE1402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1402: 
	movl	$0, %eax
.L146:
 jmp .UNIQUE1403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1403: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1404: 
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
 jmp .UNIQUE1405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1405: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1406: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1407: 
	subq	$48, %rsp
 jmp .UNIQUE1408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1408: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1409: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1410: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE1411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1411: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1412: 
	movq	8(%rax), %rax
 jmp .UNIQUE1413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1413: 
	movq	%rax, %rcx
 jmp .UNIQUE1414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1414: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1415: 
	movq	(%rax), %rdx
 jmp .UNIQUE1416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1416: 
	movq	%rdx, %rax
 jmp .UNIQUE1417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1417: 
	salq	$3, %rax
 jmp .UNIQUE1418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1418: 
	addq	%rdx, %rax
 jmp .UNIQUE1419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1419: 
	leaq	(%rcx,%rax), %rdx
 jmp .UNIQUE1420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1420: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1421: 
	movq	8(%rax), %rax
 jmp .UNIQUE1422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1422: 
	cmpq	%rax, %rdx
 jmp .UNIQUE1423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1423: 
	jne	.L151
 jmp .UNIQUE1424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1424: 
	movl	$903, %edx
 jmp .UNIQUE1425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1425: 
	movl	$__func__.5330, %esi
 jmp .UNIQUE1426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1426: 
	movl	$32, %edi
 jmp .UNIQUE1427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1427: 
	call	error_checking_malloc
 jmp .UNIQUE1428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1428: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1429: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1430: 
	movq	(%rax), %rdx
 jmp .UNIQUE1431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1431: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1432: 
	movq	(%rax), %rax
 jmp .UNIQUE1433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1433: 
	addq	%rax, %rdx
 jmp .UNIQUE1434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1434: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1435: 
	movq	%rdx, (%rax)
 jmp .UNIQUE1436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1436: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1437: 
	movq	8(%rax), %rdx
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
	movq	%rdx, 8(%rax)
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
	movq	24(%rax), %rdx
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
	movq	%rdx, 24(%rax)
 jmp .UNIQUE1444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1444: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1445: 
	movq	16(%rax), %rdx
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
	movq	%rdx, 16(%rax)
 jmp .UNIQUE1448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1448: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1449: 
	movq	24(%rax), %rax
 jmp .UNIQUE1450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1450: 
	testq	%rax, %rax
 jmp .UNIQUE1451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1451: 
	je	.L152
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
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1455: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE1456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1456: 
	jmp	.L153
.L152:
 jmp .UNIQUE1457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1457: 
	movq	-40(%rbp), %rax
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
	movq	%rdx, (%rax)
.L153:
 jmp .UNIQUE1460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1460: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1461: 
	movq	16(%rax), %rax
 jmp .UNIQUE1462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1462: 
	testq	%rax, %rax
 jmp .UNIQUE1463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1463: 
	je	.L154
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
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1467: 
	movq	%rdx, 24(%rax)
.L154:
 jmp .UNIQUE1468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1468: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1469: 
	movq	%rax, %rdi
 jmp .UNIQUE1470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1470: 
	call	free
 jmp .UNIQUE1471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1471: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1472: 
	movq	%rax, %rdi
 jmp .UNIQUE1473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1473: 
	call	free
 jmp .UNIQUE1474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1474: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1475: 
	jmp	.L155
.L151:
 jmp .UNIQUE1476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1476: 
	movl	$0, %eax
.L155:
 jmp .UNIQUE1477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1477: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1478: 
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
 jmp .UNIQUE1479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1479: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1480: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1481: 
	subq	$96, %rsp
 jmp .UNIQUE1482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1482: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE1483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1483: 
	cmpq	$0, -56(%rbp)
 jmp .UNIQUE1484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1484: 
	jne	.L157
 jmp .UNIQUE1485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1485: 
	movl	$0, %eax
 jmp .UNIQUE1486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1486: 
	jmp	.L163
.L157:
 jmp .UNIQUE1487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1487: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1488: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE1489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1489: 
	testq	%rax, %rax
 jmp .UNIQUE1490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1490: 
	cmovs	%rdx, %rax
 jmp .UNIQUE1491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1491: 
	sarq	$2, %rax
 jmp .UNIQUE1492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1492: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE1493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1493: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE1494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1494: 
	salq	$2, %rax
 jmp .UNIQUE1495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1495: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE1496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1496: 
	jge	.L159
 jmp .UNIQUE1497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1497: 
	addq	$1, -48(%rbp)
.L159:
 jmp .UNIQUE1498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1498: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE1499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1499: 
	movq	%rax, %rdi
 jmp .UNIQUE1500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1500: 
	call	find_large_enough_free_group
 jmp .UNIQUE1501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1501: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE1502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1502: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE1503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1503: 
	jne	.L160
 jmp .UNIQUE1504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1504: 
	movl	$0, %eax
 jmp .UNIQUE1505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1505: 
	jmp	.L163
.L160:
 jmp .UNIQUE1506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1506: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE1507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1507: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE1508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1508: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1509: 
	movq	8(%rax), %rax
 jmp .UNIQUE1510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1510: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1511: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE1512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1512: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE1513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1513: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE1514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1514: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE1515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1515: 
	movq	%rdx, (%rsp)
 jmp .UNIQUE1516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1516: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1517: 
	movq	%rdx, 8(%rsp)
 jmp .UNIQUE1518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1518: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1519: 
	movq	%rdx, 16(%rsp)
 jmp .UNIQUE1520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1520: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1521: 
	movq	%rdx, 24(%rsp)
 jmp .UNIQUE1522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1522: 
	movq	%rax, %rdi
 jmp .UNIQUE1523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1523: 
	call	add_node_to_list
 jmp .UNIQUE1524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1524: 
	movq	%rax, allocated_chunks_list(%rip)
 jmp .UNIQUE1525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1525: 
	movq	allocated_chunks_num(%rip), %rax
 jmp .UNIQUE1526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1526: 
	addq	$1, %rax
 jmp .UNIQUE1527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1527: 
	movq	%rax, allocated_chunks_num(%rip)
 jmp .UNIQUE1528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1528: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1529: 
	movq	(%rax), %rax
 jmp .UNIQUE1530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1530: 
	cmpq	-48(%rbp), %rax
 jmp .UNIQUE1531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1531: 
	jne	.L161
 jmp .UNIQUE1532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1532: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1533: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE1534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1534: 
	movq	%rdx, %rsi
 jmp .UNIQUE1535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1535: 
	movq	%rax, %rdi
 jmp .UNIQUE1536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1536: 
	call	delete_node_from_list
 jmp .UNIQUE1537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1537: 
	movq	%rax, free_chunks_list(%rip)
 jmp .UNIQUE1538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1538: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1539: 
	subq	$1, %rax
 jmp .UNIQUE1540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1540: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1541: 
	jmp	.L162
.L161:
 jmp .UNIQUE1542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1542: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1543: 
	movq	(%rax), %rax
 jmp .UNIQUE1544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1544: 
	subq	-48(%rbp), %rax
 jmp .UNIQUE1545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1545: 
	movq	%rax, %rdx
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
	movq	%rdx, (%rax)
 jmp .UNIQUE1548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1548: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1549: 
	movq	8(%rax), %rcx
 jmp .UNIQUE1550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1550: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE1551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1551: 
	movq	%rdx, %rax
 jmp .UNIQUE1552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1552: 
	salq	$3, %rax
 jmp .UNIQUE1553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1553: 
	addq	%rdx, %rax
 jmp .UNIQUE1554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1554: 
	leaq	(%rcx,%rax), %rdx
 jmp .UNIQUE1555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1555: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1556: 
	movq	%rdx, 8(%rax)
.L162:
 jmp .UNIQUE1557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1557: 
	movq	-24(%rbp), %rax
.L163:
 jmp .UNIQUE1558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1558: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1559: 
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
 jmp .UNIQUE1560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1560: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1561: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1562: 
	subq	$96, %rsp
 jmp .UNIQUE1563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1563: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE1564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1564: 
	movl	$0, -44(%rbp)
 jmp .UNIQUE1565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1565: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1566: 
	movq	%rax, %rdi
 jmp .UNIQUE1567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1567: 
	call	find_which_group_to_free
 jmp .UNIQUE1568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1568: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE1569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1569: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE1570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1570: 
	jne	.L165
 jmp .UNIQUE1571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1571: 
	movl	$0, %eax
 jmp .UNIQUE1572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1572: 
	jmp	.L166
.L165:
 jmp .UNIQUE1573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1573: 
	movl	$997, %edx
 jmp .UNIQUE1574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1574: 
	movl	$__func__.5346, %esi
 jmp .UNIQUE1575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1575: 
	movl	$32, %edi
 jmp .UNIQUE1576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1576: 
	call	error_checking_malloc
 jmp .UNIQUE1577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1577: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE1578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1578: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE1579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1579: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1580: 
	movq	%rdx, %rsi
 jmp .UNIQUE1581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1581: 
	movq	%rax, %rdi
 jmp .UNIQUE1582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1582: 
	call	copy_nodes_ptr
 jmp .UNIQUE1583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1583: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE1584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1584: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE1585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1585: 
	movq	%rdx, %rsi
 jmp .UNIQUE1586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1586: 
	movq	%rax, %rdi
 jmp .UNIQUE1587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1587: 
	call	delete_node_from_list
 jmp .UNIQUE1588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1588: 
	movq	%rax, allocated_chunks_list(%rip)
 jmp .UNIQUE1589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1589: 
	movq	allocated_chunks_num(%rip), %rax
 jmp .UNIQUE1590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1590: 
	subq	$1, %rax
 jmp .UNIQUE1591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1591: 
	movq	%rax, allocated_chunks_num(%rip)
 jmp .UNIQUE1592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1592: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1593: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE1594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1594: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE1595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1595: 
	jne	.L167
 jmp .UNIQUE1596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1596: 
	movq	free_chunks_list(%rip), %rdx
 jmp .UNIQUE1597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1597: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1598: 
	movq	(%rax), %rcx
 jmp .UNIQUE1599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1599: 
	movq	%rcx, (%rsp)
 jmp .UNIQUE1600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1600: 
	movq	8(%rax), %rcx
 jmp .UNIQUE1601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1601: 
	movq	%rcx, 8(%rsp)
 jmp .UNIQUE1602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1602: 
	movq	16(%rax), %rcx
 jmp .UNIQUE1603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1603: 
	movq	%rcx, 16(%rsp)
 jmp .UNIQUE1604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1604: 
	movq	24(%rax), %rax
 jmp .UNIQUE1605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1605: 
	movq	%rax, 24(%rsp)
 jmp .UNIQUE1606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1606: 
	movq	%rdx, %rdi
 jmp .UNIQUE1607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1607: 
	call	add_node_to_list
 jmp .UNIQUE1608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1608: 
	movq	%rax, free_chunks_list(%rip)
 jmp .UNIQUE1609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1609: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1610: 
	addq	$1, %rax
 jmp .UNIQUE1611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1611: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1612: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1613: 
	movq	%rax, %rdi
 jmp .UNIQUE1614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1614: 
	call	free
 jmp .UNIQUE1615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1615: 
	movl	$1, -44(%rbp)
 jmp .UNIQUE1616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1616: 
	jmp	.L168
.L167:
 jmp .UNIQUE1617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1617: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE1618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1618: 
	jmp	.L169
.L172:
 jmp .UNIQUE1619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1619: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1620: 
	movq	8(%rax), %rax
 jmp .UNIQUE1621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1621: 
	movq	%rax, %rdx
 jmp .UNIQUE1622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1622: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1623: 
	movq	8(%rax), %rax
 jmp .UNIQUE1624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1624: 
	cmpq	%rax, %rdx
 jmp .UNIQUE1625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1625: 
	jle	.L170
 jmp .UNIQUE1626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1626: 
	jmp	.L171
.L170:
 jmp .UNIQUE1627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1627: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1628: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE1629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1629: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1630: 
	movq	16(%rax), %rax
 jmp .UNIQUE1631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1631: 
	movq	%rax, -40(%rbp)
.L169:
 jmp .UNIQUE1632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1632: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE1633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1633: 
	jne	.L172
.L171:
 jmp .UNIQUE1634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1634: 
	cmpq	$0, -32(%rbp)
 jmp .UNIQUE1635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1635: 
	jne	.L173
 jmp .UNIQUE1636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1636: 
	movq	free_chunks_list(%rip), %rdx
 jmp .UNIQUE1637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1637: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1638: 
	movq	(%rax), %rcx
 jmp .UNIQUE1639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1639: 
	movq	%rcx, (%rsp)
 jmp .UNIQUE1640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1640: 
	movq	8(%rax), %rcx
 jmp .UNIQUE1641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1641: 
	movq	%rcx, 8(%rsp)
 jmp .UNIQUE1642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1642: 
	movq	16(%rax), %rcx
 jmp .UNIQUE1643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1643: 
	movq	%rcx, 16(%rsp)
 jmp .UNIQUE1644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1644: 
	movq	24(%rax), %rax
 jmp .UNIQUE1645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1645: 
	movq	%rax, 24(%rsp)
 jmp .UNIQUE1646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1646: 
	movq	%rdx, %rdi
 jmp .UNIQUE1647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1647: 
	call	add_node_to_list
 jmp .UNIQUE1648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1648: 
	movq	%rax, free_chunks_list(%rip)
 jmp .UNIQUE1649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1649: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1650: 
	addq	$1, %rax
 jmp .UNIQUE1651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1651: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1652: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1653: 
	movq	%rax, %rdi
 jmp .UNIQUE1654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1654: 
	call	free
 jmp .UNIQUE1655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1655: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1656: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE1657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1657: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1658: 
	movq	16(%rax), %rax
 jmp .UNIQUE1659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1659: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1660: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1661: 
	je	.L174
 jmp .UNIQUE1662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1662: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE1663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1663: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1664: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1665: 
	movq	%rcx, %rsi
 jmp .UNIQUE1666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1666: 
	movq	%rax, %rdi
 jmp .UNIQUE1667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1667: 
	call	check_and_merge
 jmp .UNIQUE1668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1668: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1669: 
	jmp	.L175
.L177:
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
	subq	$1, %rax
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
	movq	-24(%rbp), %rax
 jmp .UNIQUE1674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1674: 
	movq	16(%rax), %rax
 jmp .UNIQUE1675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1675: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1676: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1677: 
	je	.L176
 jmp .UNIQUE1678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1678: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE1679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1679: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1680: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1681: 
	movq	%rcx, %rsi
 jmp .UNIQUE1682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1682: 
	movq	%rax, %rdi
 jmp .UNIQUE1683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1683: 
	call	check_and_merge
 jmp .UNIQUE1684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1684: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1685: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1686: 
	jne	.L175
 jmp .UNIQUE1687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1687: 
	jmp	.L174
.L176:
 jmp .UNIQUE1688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1688: 
	jmp	.L174
.L175:
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
	jne	.L177
.L174:
 jmp .UNIQUE1691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1691: 
	movl	$1, -44(%rbp)
 jmp .UNIQUE1692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1692: 
	jmp	.L168
.L173:
 jmp .UNIQUE1693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1693: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1694: 
	movq	16(%rax), %rax
 jmp .UNIQUE1695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1695: 
	testq	%rax, %rax
 jmp .UNIQUE1696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1696: 
	jne	.L178
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
	movq	8(%rax), %rax
 jmp .UNIQUE1699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1699: 
	movq	%rax, %rdx
 jmp .UNIQUE1700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1700: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1701: 
	movq	8(%rax), %rax
 jmp .UNIQUE1702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1702: 
	cmpq	%rax, %rdx
 jmp .UNIQUE1703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1703: 
	jge	.L178
 jmp .UNIQUE1704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1704: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1705: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1706: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE1707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1707: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1708: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE1709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1709: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE1710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1710: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1711: 
	movq	$0, 16(%rax)
 jmp .UNIQUE1712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1712: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1713: 
	addq	$1, %rax
 jmp .UNIQUE1714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1714: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1715: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE1716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1716: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1717: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1718: 
	movq	%rcx, %rsi
 jmp .UNIQUE1719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1719: 
	movq	%rax, %rdi
 jmp .UNIQUE1720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1720: 
	call	check_and_merge
 jmp .UNIQUE1721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1721: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1722: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1723: 
	je	.L179
 jmp .UNIQUE1724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1724: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1725: 
	subq	$1, %rax
 jmp .UNIQUE1726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1726: 
	movq	%rax, free_chunks_num(%rip)
.L179:
 jmp .UNIQUE1727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1727: 
	movl	$1, -44(%rbp)
 jmp .UNIQUE1728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1728: 
	jmp	.L168
.L178:
 jmp .UNIQUE1729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1729: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1730: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1731: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE1732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1732: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1733: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE1734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1734: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE1735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1735: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1736: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE1737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1737: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE1738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1738: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1739: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1740: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE1741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1741: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1742: 
	addq	$1, %rax
 jmp .UNIQUE1743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1743: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1744: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE1745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1745: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1746: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1747: 
	movq	%rcx, %rsi
 jmp .UNIQUE1748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1748: 
	movq	%rax, %rdi
 jmp .UNIQUE1749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1749: 
	call	check_and_merge
 jmp .UNIQUE1750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1750: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1751: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1752: 
	jne	.L180
 jmp .UNIQUE1753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1753: 
	movq	-40(%rbp), %rcx
 jmp .UNIQUE1754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1754: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1755: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1756: 
	movq	%rcx, %rsi
 jmp .UNIQUE1757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1757: 
	movq	%rax, %rdi
 jmp .UNIQUE1758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1758: 
	call	check_and_merge
 jmp .UNIQUE1759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1759: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1760: 
	jmp	.L181
.L180:
 jmp .UNIQUE1761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1761: 
	jmp	.L181
.L184:
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
	subq	$1, %rax
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
	movq	-24(%rbp), %rax
 jmp .UNIQUE1766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1766: 
	movq	16(%rax), %rax
 jmp .UNIQUE1767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1767: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1768: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1769: 
	je	.L182
 jmp .UNIQUE1770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1770: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE1771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1771: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1772: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1773: 
	movq	%rcx, %rsi
 jmp .UNIQUE1774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1774: 
	movq	%rax, %rdi
 jmp .UNIQUE1775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1775: 
	call	check_and_merge
 jmp .UNIQUE1776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1776: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1777: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1778: 
	jne	.L181
 jmp .UNIQUE1779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1779: 
	jmp	.L183
.L182:
 jmp .UNIQUE1780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1780: 
	jmp	.L183
.L181:
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
	jne	.L184
.L183:
 jmp .UNIQUE1783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1783: 
	movl	$1, -44(%rbp)
.L168:
 jmp .UNIQUE1784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1784: 
	movl	-44(%rbp), %eax
.L166:
 jmp .UNIQUE1785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1785: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1786: 
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
 jmp .UNIQUE1787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1787: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1788: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1789: 
	subq	$48, %rsp
 jmp .UNIQUE1790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1790: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1791: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1792: 
	movl	%edx, -36(%rbp)
 jmp .UNIQUE1793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1793: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1794: 
	jne	.L186
 jmp .UNIQUE1795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1795: 
	movl	$0, %eax
 jmp .UNIQUE1796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1796: 
	jmp	.L187
.L186:
 jmp .UNIQUE1797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1797: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1798: 
	movq	%rax, %rdi
 jmp .UNIQUE1799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1799: 
	call	managed_secure_malloc
 jmp .UNIQUE1800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1800: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1801: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1802: 
	jne	.L188
 jmp .UNIQUE1803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1803: 
	movq	stderr(%rip), %rax
 jmp .UNIQUE1804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1804: 
	movl	-36(%rbp), %ecx
 jmp .UNIQUE1805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1805: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE1806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1806: 
	movl	$.LC14, %esi
 jmp .UNIQUE1807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1807: 
	movq	%rax, %rdi
 jmp .UNIQUE1808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1808: 
	movl	$0, %eax
 jmp .UNIQUE1809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1809: 
	call	fprintf
 jmp .UNIQUE1810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1810: 
	movl	$52, %edi
 jmp .UNIQUE1811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1811: 
	call	exit
.L188:
 jmp .UNIQUE1812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1812: 
	movq	-8(%rbp), %rax
.L187:
 jmp .UNIQUE1813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1813: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1814: 
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
 jmp .UNIQUE1815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1815: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1816: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1817: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1818: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1819: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE1820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1820: 
	movl	$0, -4(%rbp)
 jmp .UNIQUE1821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1821: 
	jmp	.L190
.L191:
 jmp .UNIQUE1822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1822: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE1823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1823: 
	movslq	%eax, %rdx
 jmp .UNIQUE1824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1824: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1825: 
	addq	%rax, %rdx
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
	movslq	%eax, %rcx
 jmp .UNIQUE1828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1828: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1829: 
	addq	%rcx, %rax
 jmp .UNIQUE1830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1830: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1831: 
	movb	%al, (%rdx)
 jmp .UNIQUE1832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1832: 
	addl	$1, -4(%rbp)
.L190:
 jmp .UNIQUE1833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1833: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE1834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1834: 
	cltq
 jmp .UNIQUE1835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1835: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE1836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1836: 
	jl	.L191
 jmp .UNIQUE1837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1837: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1838: 
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
 jmp .UNIQUE1839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1839: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1840: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1841: 
	subq	$176, %rsp
 jmp .UNIQUE1842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1842: 
	movq	$20, -128(%rbp)
 jmp .UNIQUE1843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1843: 
	movl	$0, %esi
 jmp .UNIQUE1844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1844: 
	movl	$.LC15, %edi
 jmp .UNIQUE1845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1845: 
	movl	$0, %eax
 jmp .UNIQUE1846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1846: 
	call	printf
 jmp .UNIQUE1847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1847: 
	movl	$.LC16, %edi
 jmp .UNIQUE1848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1848: 
	call	puts
 jmp .UNIQUE1849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1849: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE1850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1850: 
	movq	%rax, -120(%rbp)
 jmp .UNIQUE1851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1851: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE1852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1852: 
	movq	%rax, %rdi
 jmp .UNIQUE1853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1853: 
	call	find_number_of_useful_chunks
 jmp .UNIQUE1854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1854: 
	movq	%rax, -112(%rbp)
 jmp .UNIQUE1855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1855: 
	movq	-112(%rbp), %rax
 jmp .UNIQUE1856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1856: 
	movq	%rax, %rsi
 jmp .UNIQUE1857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1857: 
	movl	$.LC17, %edi
 jmp .UNIQUE1858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1858: 
	movl	$0, %eax
 jmp .UNIQUE1859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1859: 
	call	printf
 jmp .UNIQUE1860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1860: 
	movl	$.LC18, %edi
 jmp .UNIQUE1861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1861: 
	call	puts
 jmp .UNIQUE1862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1862: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE1863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1863: 
	movq	%rax, %rdi
 jmp .UNIQUE1864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1864: 
	call	print_mem
 jmp .UNIQUE1865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1865: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1866: 
	salq	$2, %rax
 jmp .UNIQUE1867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1867: 
	movl	$60, %edx
 jmp .UNIQUE1868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1868: 
	movl	$__func__.5397, %esi
 jmp .UNIQUE1869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1869: 
	movq	%rax, %rdi
 jmp .UNIQUE1870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1870: 
	call	error_checking_malloc
 jmp .UNIQUE1871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1871: 
	movq	%rax, -104(%rbp)
 jmp .UNIQUE1872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1872: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1873: 
	salq	$2, %rax
 jmp .UNIQUE1874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1874: 
	movl	$61, %edx
 jmp .UNIQUE1875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1875: 
	movl	$__func__.5397, %esi
 jmp .UNIQUE1876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1876: 
	movq	%rax, %rdi
 jmp .UNIQUE1877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1877: 
	call	error_checking_malloc
 jmp .UNIQUE1878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1878: 
	movq	%rax, -96(%rbp)
 jmp .UNIQUE1879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1879: 
	movq	$5, -144(%rbp)
 jmp .UNIQUE1880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1880: 
	jmp	.L193
.L194:
 jmp .UNIQUE1881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1881: 
	movq	-144(%rbp), %rax
 jmp .UNIQUE1882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1882: 
	salq	$2, %rax
 jmp .UNIQUE1883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1883: 
	leaq	-20(%rax), %rdx
 jmp .UNIQUE1884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1884: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE1885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1885: 
	addq	%rax, %rdx
 jmp .UNIQUE1886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1886: 
	movq	-144(%rbp), %rax
 jmp .UNIQUE1887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1887: 
	movl	%eax, %ecx
 jmp .UNIQUE1888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1888: 
	movq	-144(%rbp), %rax
 jmp .UNIQUE1889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1889: 
	imull	%ecx, %eax
 jmp .UNIQUE1890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1890: 
	movl	%eax, (%rdx)
 jmp .UNIQUE1891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1891: 
	addq	$1, -144(%rbp)
.L193:
 jmp .UNIQUE1892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1892: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1893: 
	addq	$5, %rax
 jmp .UNIQUE1894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1894: 
	cmpq	-144(%rbp), %rax
 jmp .UNIQUE1895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1895: 
	jg	.L194
 jmp .UNIQUE1896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1896: 
	movl	$.LC19, %edi
 jmp .UNIQUE1897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1897: 
	call	puts
 jmp .UNIQUE1898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1898: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1899: 
	salq	$2, %rax
 jmp .UNIQUE1900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1900: 
	movl	$70, %edx
 jmp .UNIQUE1901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1901: 
	movl	$__func__.5397, %esi
 jmp .UNIQUE1902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1902: 
	movq	%rax, %rdi
 jmp .UNIQUE1903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1903: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE1904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1904: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE1905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1905: 
	movl	$.LC20, %edi
 jmp .UNIQUE1906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1906: 
	call	puts
 jmp .UNIQUE1907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1907: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1908: 
	salq	$2, %rax
 jmp .UNIQUE1909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1909: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE1910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1910: 
	movq	-104(%rbp), %rcx
 jmp .UNIQUE1911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1911: 
	movq	%rcx, %rsi
 jmp .UNIQUE1912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1912: 
	movq	%rax, %rdi
 jmp .UNIQUE1913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1913: 
	call	insert_data_into_mem
 jmp .UNIQUE1914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1914: 
	movl	$.LC21, %edi
 jmp .UNIQUE1915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1915: 
	call	puts
 jmp .UNIQUE1916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1916: 
	movl	$78, %edx
 jmp .UNIQUE1917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1917: 
	movl	$__func__.5397, %esi
 jmp .UNIQUE1918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1918: 
	movl	$4, %edi
 jmp .UNIQUE1919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1919: 
	call	error_checking_malloc
 jmp .UNIQUE1920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1920: 
	movq	%rax, -80(%rbp)
 jmp .UNIQUE1921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1921: 
	movq	$0, -136(%rbp)
 jmp .UNIQUE1922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1922: 
	jmp	.L195
.L196:
 jmp .UNIQUE1923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1923: 
	movq	-136(%rbp), %rcx
 jmp .UNIQUE1924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1924: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE1925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1925: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE1926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1926: 
	movq	%rcx, %r8
 jmp .UNIQUE1927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1927: 
	movl	$1, %ecx
 jmp .UNIQUE1928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1928: 
	movl	$4, %esi
 jmp .UNIQUE1929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1929: 
	movq	%rax, %rdi
 jmp .UNIQUE1930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1930: 
	call	get_secure_data
 jmp .UNIQUE1931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1931: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE1932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1932: 
	movl	(%rax), %eax
 jmp .UNIQUE1933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1933: 
	movl	%eax, %esi
 jmp .UNIQUE1934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1934: 
	movl	$.LC22, %edi
 jmp .UNIQUE1935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1935: 
	movl	$0, %eax
 jmp .UNIQUE1936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1936: 
	call	printf
 jmp .UNIQUE1937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1937: 
	addq	$1, -136(%rbp)
.L195:
 jmp .UNIQUE1938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1938: 
	movq	-136(%rbp), %rax
 jmp .UNIQUE1939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1939: 
	cmpq	-128(%rbp), %rax
 jmp .UNIQUE1940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1940: 
	jl	.L196
 jmp .UNIQUE1941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1941: 
	movl	$10, %edi
 jmp .UNIQUE1942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1942: 
	call	putchar
 jmp .UNIQUE1943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1943: 
	movl	$.LC23, %edi
 jmp .UNIQUE1944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1944: 
	call	puts
 jmp .UNIQUE1945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1945: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1946: 
	salq	$2, %rax
 jmp .UNIQUE1947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1947: 
	movl	$91, %edx
 jmp .UNIQUE1948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1948: 
	movl	$__func__.5397, %esi
 jmp .UNIQUE1949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1949: 
	movq	%rax, %rdi
 jmp .UNIQUE1950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1950: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE1951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1951: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE1952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1952: 
	movq	$5, -144(%rbp)
 jmp .UNIQUE1953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1953: 
	jmp	.L197
.L198:
 jmp .UNIQUE1954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1954: 
	movq	-144(%rbp), %rax
 jmp .UNIQUE1955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1955: 
	salq	$2, %rax
 jmp .UNIQUE1956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1956: 
	leaq	-20(%rax), %rdx
 jmp .UNIQUE1957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1957: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE1958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1958: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE1959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1959: 
	movq	-144(%rbp), %rax
 jmp .UNIQUE1960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1960: 
	movl	%eax, %edx
 jmp .UNIQUE1961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1961: 
	movl	%edx, %eax
 jmp .UNIQUE1962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1962: 
	addl	%eax, %eax
 jmp .UNIQUE1963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1963: 
	addl	%edx, %eax
 jmp .UNIQUE1964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1964: 
	movl	%eax, (%rcx)
 jmp .UNIQUE1965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1965: 
	addq	$1, -144(%rbp)
.L197:
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
	addq	$5, %rax
 jmp .UNIQUE1968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1968: 
	cmpq	-144(%rbp), %rax
 jmp .UNIQUE1969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1969: 
	jg	.L198
 jmp .UNIQUE1970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1970: 
	movl	$.LC24, %edi
 jmp .UNIQUE1971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1971: 
	call	puts
 jmp .UNIQUE1972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1972: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1973: 
	salq	$2, %rax
 jmp .UNIQUE1974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1974: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE1975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1975: 
	movq	-104(%rbp), %rcx
 jmp .UNIQUE1976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1976: 
	movq	%rcx, %rsi
 jmp .UNIQUE1977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1977: 
	movq	%rax, %rdi
 jmp .UNIQUE1978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1978: 
	call	insert_data_into_mem
 jmp .UNIQUE1979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1979: 
	movl	$.LC21, %edi
 jmp .UNIQUE1980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1980: 
	call	puts
 jmp .UNIQUE1981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1981: 
	movq	$0, -136(%rbp)
 jmp .UNIQUE1982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1982: 
	jmp	.L199
.L200:
 jmp .UNIQUE1983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1983: 
	movq	-136(%rbp), %rcx
 jmp .UNIQUE1984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1984: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE1985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1985: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE1986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1986: 
	movq	%rcx, %r8
 jmp .UNIQUE1987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1987: 
	movl	$1, %ecx
 jmp .UNIQUE1988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1988: 
	movl	$4, %esi
 jmp .UNIQUE1989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1989: 
	movq	%rax, %rdi
 jmp .UNIQUE1990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1990: 
	call	get_secure_data
 jmp .UNIQUE1991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1991: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE1992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1992: 
	movl	(%rax), %eax
 jmp .UNIQUE1993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1993: 
	movl	%eax, %esi
 jmp .UNIQUE1994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1994: 
	movl	$.LC22, %edi
 jmp .UNIQUE1995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1995: 
	movl	$0, %eax
 jmp .UNIQUE1996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1996: 
	call	printf
 jmp .UNIQUE1997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1997: 
	addq	$1, -136(%rbp)
.L199:
 jmp .UNIQUE1998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1998: 
	movq	-136(%rbp), %rax
 jmp .UNIQUE1999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1999: 
	cmpq	-128(%rbp), %rax
 jmp .UNIQUE2000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2000: 
	jl	.L200
 jmp .UNIQUE2001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2001: 
	movl	$10, %edi
 jmp .UNIQUE2002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2002: 
	call	putchar
 jmp .UNIQUE2003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2003: 
	movl	$.LC25, %edi
 jmp .UNIQUE2004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2004: 
	call	puts
 jmp .UNIQUE2005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2005: 
	movl	$0, %eax
 jmp .UNIQUE2006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2006: 
	call	print_lists
 jmp .UNIQUE2007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2007: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2008: 
	movq	%rax, %rdi
 jmp .UNIQUE2009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2009: 
	call	managed_secure_free
 jmp .UNIQUE2010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2010: 
	movl	$.LC26, %edi
 jmp .UNIQUE2011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2011: 
	call	puts
 jmp .UNIQUE2012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2012: 
	movl	$0, %eax
 jmp .UNIQUE2013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2013: 
	call	print_lists
 jmp .UNIQUE2014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2014: 
	movl	$.LC27, %edi
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
	movl	$120, %edx
 jmp .UNIQUE2017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2017: 
	movl	$__func__.5397, %esi
 jmp .UNIQUE2018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2018: 
	movl	$4, %edi
 jmp .UNIQUE2019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2019: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2020: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE2021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2021: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2022: 
	movl	$424242424, (%rax)
 jmp .UNIQUE2023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2023: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE2024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2024: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2025: 
	movq	%rax, %rsi
 jmp .UNIQUE2026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2026: 
	movl	$4, %edi
 jmp .UNIQUE2027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2027: 
	call	insert_data_into_mem
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
	call	free
 jmp .UNIQUE2031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2031: 
	movl	$124, %edx
 jmp .UNIQUE2032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2032: 
	movl	$__func__.5397, %esi
 jmp .UNIQUE2033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2033: 
	movl	$4, %edi
 jmp .UNIQUE2034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2034: 
	call	error_checking_malloc
 jmp .UNIQUE2035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2035: 
	movq	%rax, -80(%rbp)
 jmp .UNIQUE2036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2036: 
	movq	-136(%rbp), %rcx
 jmp .UNIQUE2037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2037: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE2038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2038: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2039: 
	movq	%rcx, %r8
 jmp .UNIQUE2040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2040: 
	movl	$0, %ecx
 jmp .UNIQUE2041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2041: 
	movl	$4, %esi
 jmp .UNIQUE2042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2042: 
	movq	%rax, %rdi
 jmp .UNIQUE2043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2043: 
	call	get_secure_data
 jmp .UNIQUE2044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2044: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2045: 
	movl	(%rax), %eax
 jmp .UNIQUE2046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2046: 
	movl	%eax, %esi
 jmp .UNIQUE2047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2047: 
	movl	$.LC28, %edi
 jmp .UNIQUE2048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2048: 
	movl	$0, %eax
 jmp .UNIQUE2049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2049: 
	call	printf
 jmp .UNIQUE2050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2050: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2051: 
	movq	%rax, %rdi
 jmp .UNIQUE2052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2052: 
	call	free
 jmp .UNIQUE2053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2053: 
	movl	$.LC29, %edi
 jmp .UNIQUE2054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2054: 
	call	puts
 jmp .UNIQUE2055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2055: 
	movl	$0, %eax
 jmp .UNIQUE2056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2056: 
	call	print_lists
 jmp .UNIQUE2057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2057: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE2058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2058: 
	movq	%rax, %rdi
 jmp .UNIQUE2059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2059: 
	call	managed_secure_free
 jmp .UNIQUE2060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2060: 
	movl	$.LC30, %edi
 jmp .UNIQUE2061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2061: 
	call	puts
 jmp .UNIQUE2062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2062: 
	movl	$0, %eax
 jmp .UNIQUE2063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2063: 
	call	print_lists
 jmp .UNIQUE2064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2064: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2065: 
	movq	%rax, %rdi
 jmp .UNIQUE2066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2066: 
	call	managed_secure_free
 jmp .UNIQUE2067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2067: 
	movl	$.LC31, %edi
 jmp .UNIQUE2068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2068: 
	call	puts
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
	call	print_lists
 jmp .UNIQUE2071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2071: 
	movl	$.LC32, %edi
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
	movl	$146, %edx
 jmp .UNIQUE2074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2074: 
	movl	$__func__.5397, %esi
 jmp .UNIQUE2075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2075: 
	movl	$4, %edi
 jmp .UNIQUE2076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2076: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2077: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE2078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2078: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2079: 
	movl	$99998, %esi
 jmp .UNIQUE2080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2080: 
	movq	%rax, %rdi
 jmp .UNIQUE2081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2081: 
	call	set_int
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
	movq	%rax, %rdi
 jmp .UNIQUE2084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2084: 
	call	get_int
 jmp .UNIQUE2085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2085: 
	movl	%eax, -156(%rbp)
 jmp .UNIQUE2086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2086: 
	movl	-156(%rbp), %eax
 jmp .UNIQUE2087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2087: 
	movl	%eax, %esi
 jmp .UNIQUE2088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2088: 
	movl	$.LC33, %edi
 jmp .UNIQUE2089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2089: 
	movl	$0, %eax
 jmp .UNIQUE2090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2090: 
	call	printf
 jmp .UNIQUE2091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2091: 
	movl	$152, %edx
 jmp .UNIQUE2092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2092: 
	movl	$__func__.5397, %esi
 jmp .UNIQUE2093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2093: 
	movl	$1, %edi
 jmp .UNIQUE2094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2094: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2095: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE2096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2096: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE2097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2097: 
	movl	$98, %esi
 jmp .UNIQUE2098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2098: 
	movq	%rax, %rdi
 jmp .UNIQUE2099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2099: 
	call	set_char
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
	call	get_char
 jmp .UNIQUE2103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2103: 
	movb	%al, -157(%rbp)
 jmp .UNIQUE2104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2104: 
	movsbl	-157(%rbp), %eax
 jmp .UNIQUE2105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2105: 
	movl	%eax, %esi
 jmp .UNIQUE2106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2106: 
	movl	$.LC34, %edi
 jmp .UNIQUE2107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2107: 
	movl	$0, %eax
 jmp .UNIQUE2108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2108: 
	call	printf
 jmp .UNIQUE2109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2109: 
	movl	$158, %edx
 jmp .UNIQUE2110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2110: 
	movl	$__func__.5397, %esi
 jmp .UNIQUE2111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2111: 
	movl	$8, %edi
 jmp .UNIQUE2112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2112: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2113: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE2114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2114: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2115: 
	movl	$54545454, %esi
 jmp .UNIQUE2116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2116: 
	movq	%rax, %rdi
 jmp .UNIQUE2117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2117: 
	call	set_long_int
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
	call	get_long_int
 jmp .UNIQUE2121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2121: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE2122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2122: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2123: 
	movq	%rax, %rsi
 jmp .UNIQUE2124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2124: 
	movl	$.LC35, %edi
 jmp .UNIQUE2125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2125: 
	movl	$0, %eax
 jmp .UNIQUE2126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2126: 
	call	printf
 jmp .UNIQUE2127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2127: 
	movl	$.LC36, %edi
 jmp .UNIQUE2128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2128: 
	call	puts
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
	call	print_lists
 jmp .UNIQUE2131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2131: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2132: 
	movq	%rax, %rdi
 jmp .UNIQUE2133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2133: 
	call	managed_secure_free
 jmp .UNIQUE2134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2134: 
	movl	$.LC37, %edi
 jmp .UNIQUE2135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2135: 
	call	puts
 jmp .UNIQUE2136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2136: 
	movl	$0, %eax
 jmp .UNIQUE2137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2137: 
	call	print_lists
 jmp .UNIQUE2138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2138: 
	movl	$172, %edx
 jmp .UNIQUE2139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2139: 
	movl	$__func__.5397, %esi
 jmp .UNIQUE2140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2140: 
	movl	$1, %edi
 jmp .UNIQUE2141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2141: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2142: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE2143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2143: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2144: 
	movl	$97, %esi
 jmp .UNIQUE2145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2145: 
	movq	%rax, %rdi
 jmp .UNIQUE2146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2146: 
	call	set_char
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
	movq	%rax, %rdi
 jmp .UNIQUE2149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2149: 
	call	get_char
 jmp .UNIQUE2150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2150: 
	movb	%al, -157(%rbp)
 jmp .UNIQUE2151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2151: 
	movsbl	-157(%rbp), %eax
 jmp .UNIQUE2152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2152: 
	movl	%eax, %esi
 jmp .UNIQUE2153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2153: 
	movl	$.LC34, %edi
 jmp .UNIQUE2154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2154: 
	movl	$0, %eax
 jmp .UNIQUE2155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2155: 
	call	printf
 jmp .UNIQUE2156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2156: 
	movl	$.LC38, %edi
 jmp .UNIQUE2157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2157: 
	call	puts
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
	call	print_lists
 jmp .UNIQUE2160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2160: 
	movl	$182, %edx
 jmp .UNIQUE2161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2161: 
	movl	$__func__.5397, %esi
 jmp .UNIQUE2162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2162: 
	movl	$8, %edi
 jmp .UNIQUE2163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2163: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2164: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2165: 
	movabsq	$4665384344877005170, %rax
 jmp .UNIQUE2166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2166: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE2167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2167: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE2168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2168: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE2169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2169: 
	movq	%rdx, %rdi
 jmp .UNIQUE2170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2170: 
	call	set_double
 jmp .UNIQUE2171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2171: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2172: 
	movq	%rax, %rdi
 jmp .UNIQUE2173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2173: 
	call	get_double
 jmp .UNIQUE2174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2174: 
	movsd	%xmm0, -168(%rbp)
 jmp .UNIQUE2175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2175: 
	movq	-168(%rbp), %rax
 jmp .UNIQUE2176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2176: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE2177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2177: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE2178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2178: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE2179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2179: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE2180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2180: 
	movl	$.LC40, %edi
 jmp .UNIQUE2181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2181: 
	movl	$1, %eax
 jmp .UNIQUE2182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2182: 
	call	printf
 jmp .UNIQUE2183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2183: 
	movl	$.LC41, %edi
 jmp .UNIQUE2184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2184: 
	call	puts
 jmp .UNIQUE2185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2185: 
	movl	$0, %eax
 jmp .UNIQUE2186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2186: 
	call	print_lists
 jmp .UNIQUE2187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2187: 
	movl	$.LC42, %edi
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
	movl	$193, %edx
 jmp .UNIQUE2190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2190: 
	movl	$__func__.5397, %esi
 jmp .UNIQUE2191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2191: 
	movl	$80, %edi
 jmp .UNIQUE2192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2192: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2193: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE2194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2194: 
	movabsq	$4631167498573958009, %rax
 jmp .UNIQUE2195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2195: 
	movq	%rax, -152(%rbp)
 jmp .UNIQUE2196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2196: 
	leaq	-152(%rbp), %rdx
 jmp .UNIQUE2197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2197: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2198: 
	movq	%rdx, %rcx
 jmp .UNIQUE2199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2199: 
	movl	$2, %edx
 jmp .UNIQUE2200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2200: 
	movq	%rax, %rsi
 jmp .UNIQUE2201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2201: 
	movl	$8, %edi
 jmp .UNIQUE2202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2202: 
	call	set_array_element
 jmp .UNIQUE2203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2203: 
	movabsq	$4629998950986019070, %rax
 jmp .UNIQUE2204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2204: 
	movq	%rax, -152(%rbp)
 jmp .UNIQUE2205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2205: 
	leaq	-152(%rbp), %rdx
 jmp .UNIQUE2206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2206: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2207: 
	movq	%rdx, %rcx
 jmp .UNIQUE2208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2208: 
	movl	$3, %edx
 jmp .UNIQUE2209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2209: 
	movq	%rax, %rsi
 jmp .UNIQUE2210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2210: 
	movl	$8, %edi
 jmp .UNIQUE2211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2211: 
	call	set_array_element
 jmp .UNIQUE2212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2212: 
	movabsq	$4607182418800017408, %rax
 jmp .UNIQUE2213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2213: 
	movq	%rax, -152(%rbp)
 jmp .UNIQUE2214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2214: 
	leaq	-152(%rbp), %rdx
 jmp .UNIQUE2215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2215: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2216: 
	movq	%rdx, %rcx
 jmp .UNIQUE2217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2217: 
	movl	$2, %edx
 jmp .UNIQUE2218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2218: 
	movq	%rax, %rsi
 jmp .UNIQUE2219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2219: 
	movl	$8, %edi
 jmp .UNIQUE2220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2220: 
	call	get_array_element
 jmp .UNIQUE2221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2221: 
	movq	-152(%rbp), %rax
 jmp .UNIQUE2222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2222: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE2223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2223: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE2224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2224: 
	movl	$.LC46, %edi
 jmp .UNIQUE2225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2225: 
	movl	$1, %eax
 jmp .UNIQUE2226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2226: 
	call	printf
 jmp .UNIQUE2227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2227: 
	leaq	-152(%rbp), %rdx
 jmp .UNIQUE2228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2228: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2229: 
	movq	%rdx, %rcx
 jmp .UNIQUE2230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2230: 
	movl	$3, %edx
 jmp .UNIQUE2231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2231: 
	movq	%rax, %rsi
 jmp .UNIQUE2232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2232: 
	movl	$8, %edi
 jmp .UNIQUE2233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2233: 
	call	get_array_element
 jmp .UNIQUE2234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2234: 
	movq	-152(%rbp), %rax
 jmp .UNIQUE2235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2235: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE2236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2236: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE2237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2237: 
	movl	$.LC47, %edi
 jmp .UNIQUE2238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2238: 
	movl	$1, %eax
 jmp .UNIQUE2239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2239: 
	call	printf
 jmp .UNIQUE2240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2240: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2241: 
	movl	$3, %esi
 jmp .UNIQUE2242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2242: 
	movq	%rax, %rdi
 jmp .UNIQUE2243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2243: 
	call	get_double_array_element
 jmp .UNIQUE2244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2244: 
	movsd	%xmm0, -168(%rbp)
 jmp .UNIQUE2245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2245: 
	movq	-168(%rbp), %rax
 jmp .UNIQUE2246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2246: 
	movq	%rax, -152(%rbp)
 jmp .UNIQUE2247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2247: 
	movq	-152(%rbp), %rax
 jmp .UNIQUE2248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2248: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE2249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2249: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE2250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2250: 
	movl	$.LC47, %edi
 jmp .UNIQUE2251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2251: 
	movl	$1, %eax
 jmp .UNIQUE2252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2252: 
	call	printf
 jmp .UNIQUE2253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2253: 
	movl	$.LC48, %edi
 jmp .UNIQUE2254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2254: 
	call	puts
 jmp .UNIQUE2255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2255: 
	movl	$.LC49, %edi
 jmp .UNIQUE2256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2256: 
	call	puts
 jmp .UNIQUE2257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2257: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE2258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2258: 
	movq	%rax, %rdi
 jmp .UNIQUE2259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2259: 
	call	print_mem
 jmp .UNIQUE2260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2260: 
	movl	$.LC50, %edi
 jmp .UNIQUE2261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2261: 
	call	puts
 jmp .UNIQUE2262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2262: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2263: 
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
 jmp .UNIQUE2264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2264: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2265: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2266: 
	subq	$80, %rsp
 jmp .UNIQUE2267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2267: 
	movl	$.LC3, %edi
 jmp .UNIQUE2268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2268: 
	call	puts
 jmp .UNIQUE2269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2269: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE2270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2270: 
	movq	%rax, %rdi
 jmp .UNIQUE2271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2271: 
	call	print_list
 jmp .UNIQUE2272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2272: 
	movl	$.LC4, %edi
 jmp .UNIQUE2273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2273: 
	call	puts
 jmp .UNIQUE2274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2274: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE2275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2275: 
	movq	%rax, %rdi
 jmp .UNIQUE2276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2276: 
	call	print_list
 jmp .UNIQUE2277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2277: 
	movq	$10, -32(%rbp)
 jmp .UNIQUE2278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2278: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE2279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2279: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2280: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE2281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2281: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE2282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2282: 
	movl	$.LC51, %edi
 jmp .UNIQUE2283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2283: 
	call	puts
 jmp .UNIQUE2284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2284: 
	movl	$101, %edi
 jmp .UNIQUE2285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2285: 
	call	managed_secure_malloc
 jmp .UNIQUE2286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2286: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE2287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2287: 
	cmpq	$0, -64(%rbp)
 jmp .UNIQUE2288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2288: 
	jne	.L202
 jmp .UNIQUE2289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2289: 
	movl	$.LC52, %edi
 jmp .UNIQUE2290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2290: 
	call	puts
.L202:
 jmp .UNIQUE2291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2291: 
	movl	$0, %eax
 jmp .UNIQUE2292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2292: 
	call	print_lists
 jmp .UNIQUE2293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2293: 
	movl	$.LC53, %edi
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
	movl	$42, %edi
 jmp .UNIQUE2296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2296: 
	call	managed_secure_malloc
 jmp .UNIQUE2297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2297: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE2298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2298: 
	cmpq	$0, -56(%rbp)
 jmp .UNIQUE2299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2299: 
	jne	.L203
 jmp .UNIQUE2300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2300: 
	movl	$.LC54, %edi
 jmp .UNIQUE2301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2301: 
	call	puts
.L203:
 jmp .UNIQUE2302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2302: 
	movl	$0, %eax
 jmp .UNIQUE2303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2303: 
	call	print_lists
 jmp .UNIQUE2304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2304: 
	movl	$.LC55, %edi
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
 jmp .UNIQUE2306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2306: 
	movl	$61, %edi
 jmp .UNIQUE2307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2307: 
	call	managed_secure_malloc
 jmp .UNIQUE2308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2308: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE2309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2309: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE2310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2310: 
	jne	.L204
 jmp .UNIQUE2311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2311: 
	movl	$.LC56, %edi
 jmp .UNIQUE2312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2312: 
	call	puts
.L204:
 jmp .UNIQUE2313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2313: 
	movl	$0, %eax
 jmp .UNIQUE2314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2314: 
	call	print_lists
 jmp .UNIQUE2315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2315: 
	movl	$.LC57, %edi
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
 jmp .UNIQUE2317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2317: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE2318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2318: 
	movq	%rax, %rdi
 jmp .UNIQUE2319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2319: 
	call	managed_secure_free
 jmp .UNIQUE2320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2320: 
	movl	%eax, -68(%rbp)
 jmp .UNIQUE2321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2321: 
	cmpl	$0, -68(%rbp)
 jmp .UNIQUE2322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2322: 
	jne	.L205
 jmp .UNIQUE2323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2323: 
	movl	$.LC58, %edi
 jmp .UNIQUE2324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2324: 
	call	puts
.L205:
 jmp .UNIQUE2325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2325: 
	movl	$0, %eax
 jmp .UNIQUE2326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2326: 
	call	print_lists
 jmp .UNIQUE2327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2327: 
	movl	$.LC59, %edi
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
 jmp .UNIQUE2329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2329: 
	movl	$80, %edi
 jmp .UNIQUE2330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2330: 
	call	managed_secure_malloc
 jmp .UNIQUE2331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2331: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE2332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2332: 
	cmpq	$0, -56(%rbp)
 jmp .UNIQUE2333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2333: 
	jne	.L206
 jmp .UNIQUE2334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2334: 
	movl	$.LC60, %edi
 jmp .UNIQUE2335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2335: 
	call	puts
.L206:
 jmp .UNIQUE2336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2336: 
	movl	$0, %eax
 jmp .UNIQUE2337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2337: 
	call	print_lists
 jmp .UNIQUE2338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2338: 
	movl	$.LC61, %edi
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
 jmp .UNIQUE2340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2340: 
	movl	$29, %edi
 jmp .UNIQUE2341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2341: 
	call	managed_secure_malloc
 jmp .UNIQUE2342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2342: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE2343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2343: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE2344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2344: 
	jne	.L207
 jmp .UNIQUE2345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2345: 
	movl	$.LC62, %edi
 jmp .UNIQUE2346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2346: 
	call	puts
.L207:
 jmp .UNIQUE2347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2347: 
	movl	$0, %eax
 jmp .UNIQUE2348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2348: 
	call	print_lists
 jmp .UNIQUE2349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2349: 
	movl	$.LC63, %edi
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
 jmp .UNIQUE2351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2351: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2352: 
	movq	%rax, %rdi
 jmp .UNIQUE2353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2353: 
	call	managed_secure_free
 jmp .UNIQUE2354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2354: 
	movl	%eax, -68(%rbp)
 jmp .UNIQUE2355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2355: 
	cmpl	$0, -68(%rbp)
 jmp .UNIQUE2356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2356: 
	jne	.L208
 jmp .UNIQUE2357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2357: 
	movl	$.LC58, %edi
 jmp .UNIQUE2358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2358: 
	call	puts
.L208:
 jmp .UNIQUE2359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2359: 
	movl	$0, %eax
 jmp .UNIQUE2360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2360: 
	call	print_lists
 jmp .UNIQUE2361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2361: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2362: 
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
 jmp .UNIQUE2363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2363: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2364: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2365: 
	pushq	%rbx
 jmp .UNIQUE2366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2366: 
	subq	$88, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE2367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2367: 
	movl	$4, %edi
 jmp .UNIQUE2368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2368: 
	call	managed_secure_malloc
 jmp .UNIQUE2369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2369: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE2370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2370: 
	movl	$8, %edi
 jmp .UNIQUE2371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2371: 
	call	managed_secure_malloc
 jmp .UNIQUE2372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2372: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE2373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2373: 
	movl	$8, %edi
 jmp .UNIQUE2374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2374: 
	call	managed_secure_malloc
 jmp .UNIQUE2375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2375: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE2376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2376: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2377: 
	movl	$5, %esi
 jmp .UNIQUE2378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2378: 
	movq	%rax, %rdi
 jmp .UNIQUE2379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2379: 
	call	set_long_int
 jmp .UNIQUE2380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2380: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE2381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2381: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE2382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2382: 
	movq	%rdx, %rsi
 jmp .UNIQUE2383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2383: 
	movq	%rax, %rdi
 jmp .UNIQUE2384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2384: 
	call	set_pointer
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
	movq	%rax, %rdi
 jmp .UNIQUE2387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2387: 
	call	get_pointer
 jmp .UNIQUE2388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2388: 
	movl	$21, %esi
 jmp .UNIQUE2389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2389: 
	movq	%rax, %rdi
 jmp .UNIQUE2390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2390: 
	call	set_long_int
 jmp .UNIQUE2391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2391: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2392: 
	movq	%rax, %rdi
 jmp .UNIQUE2393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2393: 
	call	get_long_int
 jmp .UNIQUE2394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2394: 
	salq	$2, %rax
 jmp .UNIQUE2395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2395: 
	movq	%rax, %rdi
 jmp .UNIQUE2396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2396: 
	call	managed_secure_malloc
 jmp .UNIQUE2397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2397: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE2398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2398: 
	movq	-64(%rbp), %rax
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
	call	get_long_int
 jmp .UNIQUE2401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2401: 
	salq	$2, %rax
 jmp .UNIQUE2402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2402: 
	movq	%rax, %rdi
 jmp .UNIQUE2403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2403: 
	call	managed_secure_malloc
 jmp .UNIQUE2404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2404: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE2405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2405: 
	movq	-64(%rbp), %rax
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
	call	get_long_int
 jmp .UNIQUE2408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2408: 
	salq	$3, %rax
 jmp .UNIQUE2409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2409: 
	movq	%rax, %rdi
 jmp .UNIQUE2410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2410: 
	call	managed_secure_malloc
 jmp .UNIQUE2411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2411: 
	movq	%rax, -32(%rbp)
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
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2419: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE2420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2420: 
	jne	.L210
 jmp .UNIQUE2421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2421: 
	movl	$.LC64, %edi
 jmp .UNIQUE2422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2422: 
	call	puts
 jmp .UNIQUE2423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2423: 
	movl	$42, %edi
 jmp .UNIQUE2424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2424: 
	call	exit
.L210:
 jmp .UNIQUE2425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2425: 
	movl	$.LC65, %edi
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
	movq	-72(%rbp), %rax
 jmp .UNIQUE2428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2428: 
	movl	$0, %esi
 jmp .UNIQUE2429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2429: 
	movq	%rax, %rdi
 jmp .UNIQUE2430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2430: 
	call	set_int
 jmp .UNIQUE2431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2431: 
	jmp	.L211
.L212:
 jmp .UNIQUE2432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2432: 
	movq	-72(%rbp), %rax
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
	call	get_int
 jmp .UNIQUE2435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2435: 
	leal	(%rax,%rax), %ebx
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
	movslq	%eax, %rcx
 jmp .UNIQUE2440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2440: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2441: 
	movl	%ebx, %edx
 jmp .UNIQUE2442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2442: 
	movq	%rcx, %rsi
 jmp .UNIQUE2443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2443: 
	movq	%rax, %rdi
 jmp .UNIQUE2444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2444: 
	call	set_int_array_element
 jmp .UNIQUE2445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2445: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2446: 
	movq	%rax, %rdi
 jmp .UNIQUE2447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2447: 
	call	get_int
 jmp .UNIQUE2448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2448: 
	movl	%eax, %edx
 jmp .UNIQUE2449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2449: 
	movl	%edx, %eax
 jmp .UNIQUE2450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2450: 
	addl	%eax, %eax
 jmp .UNIQUE2451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2451: 
	leal	(%rax,%rdx), %ebx
 jmp .UNIQUE2452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2452: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2453: 
	movq	%rax, %rdi
 jmp .UNIQUE2454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2454: 
	call	get_int
 jmp .UNIQUE2455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2455: 
	movslq	%eax, %rcx
 jmp .UNIQUE2456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2456: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2457: 
	movl	%ebx, %edx
 jmp .UNIQUE2458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2458: 
	movq	%rcx, %rsi
 jmp .UNIQUE2459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2459: 
	movq	%rax, %rdi
 jmp .UNIQUE2460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2460: 
	call	set_int_array_element
 jmp .UNIQUE2461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2461: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2462: 
	movq	%rax, %rdi
 jmp .UNIQUE2463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2463: 
	call	get_int
 jmp .UNIQUE2464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2464: 
	cvtsi2sd	%eax, %xmm0
 jmp .UNIQUE2465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2465: 
	movsd	.LC66(%rip), %xmm1
 jmp .UNIQUE2466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2466: 
	mulsd	%xmm1, %xmm0
 jmp .UNIQUE2467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2467: 
	movsd	%xmm0, -88(%rbp)
 jmp .UNIQUE2468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2468: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2469: 
	movq	%rax, %rdi
 jmp .UNIQUE2470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2470: 
	call	get_int
 jmp .UNIQUE2471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2471: 
	movslq	%eax, %rdx
 jmp .UNIQUE2472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2472: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2473: 
	movsd	-88(%rbp), %xmm0
 jmp .UNIQUE2474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2474: 
	movq	%rdx, %rsi
 jmp .UNIQUE2475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2475: 
	movq	%rax, %rdi
 jmp .UNIQUE2476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2476: 
	call	set_double_array_element
 jmp .UNIQUE2477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2477: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2478: 
	movq	%rax, %rdi
 jmp .UNIQUE2479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2479: 
	call	get_int
 jmp .UNIQUE2480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2480: 
	addl	%eax, %eax
 jmp .UNIQUE2481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2481: 
	cvtsi2ss	%eax, %xmm3
 jmp .UNIQUE2482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2482: 
	movss	%xmm3, -88(%rbp)
 jmp .UNIQUE2483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2483: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2484: 
	movq	%rax, %rdi
 jmp .UNIQUE2485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2485: 
	call	get_int
 jmp .UNIQUE2486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2486: 
	movslq	%eax, %rdx
 jmp .UNIQUE2487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2487: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2488: 
	movss	-88(%rbp), %xmm0
 jmp .UNIQUE2489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2489: 
	movq	%rdx, %rsi
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
	call	set_float_array_element
 jmp .UNIQUE2492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2492: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2493: 
	movq	%rax, %rdi
 jmp .UNIQUE2494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2494: 
	call	get_int
 jmp .UNIQUE2495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2495: 
	leal	1(%rax), %edx
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
	movl	%edx, %esi
 jmp .UNIQUE2498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2498: 
	movq	%rax, %rdi
 jmp .UNIQUE2499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2499: 
	call	set_int
.L211:
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
	movq	%rax, %rdi
 jmp .UNIQUE2502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2502: 
	call	get_int
 jmp .UNIQUE2503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2503: 
	movslq	%eax, %rbx
 jmp .UNIQUE2504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2504: 
	movq	-64(%rbp), %rax
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
	call	get_long_int
 jmp .UNIQUE2507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2507: 
	cmpq	%rax, %rbx
 jmp .UNIQUE2508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2508: 
	jl	.L212
 jmp .UNIQUE2509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2509: 
	movl	$.LC67, %edi
 jmp .UNIQUE2510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2510: 
	call	puts
 jmp .UNIQUE2511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2511: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2512: 
	movl	$0, %esi
 jmp .UNIQUE2513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2513: 
	movq	%rax, %rdi
 jmp .UNIQUE2514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2514: 
	call	set_int
 jmp .UNIQUE2515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2515: 
	jmp	.L213
.L214:
 jmp .UNIQUE2516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2516: 
	movq	-72(%rbp), %rax
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
	call	get_int
 jmp .UNIQUE2519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2519: 
	movslq	%eax, %rdx
 jmp .UNIQUE2520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2520: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2521: 
	movq	%rdx, %rsi
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
	call	get_int_array_element
 jmp .UNIQUE2524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2524: 
	movl	%eax, %ebx
 jmp .UNIQUE2525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2525: 
	movq	-72(%rbp), %rax
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
	call	get_int
 jmp .UNIQUE2528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2528: 
	movslq	%eax, %rdx
 jmp .UNIQUE2529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2529: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2530: 
	movq	%rdx, %rsi
 jmp .UNIQUE2531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2531: 
	movq	%rax, %rdi
 jmp .UNIQUE2532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2532: 
	call	get_int_array_element
 jmp .UNIQUE2533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2533: 
	addl	%eax, %ebx
 jmp .UNIQUE2534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2534: 
	movq	-72(%rbp), %rax
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
	call	get_int
 jmp .UNIQUE2537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2537: 
	movslq	%eax, %rcx
 jmp .UNIQUE2538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2538: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2539: 
	movl	%ebx, %edx
 jmp .UNIQUE2540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2540: 
	movq	%rcx, %rsi
 jmp .UNIQUE2541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2541: 
	movq	%rax, %rdi
 jmp .UNIQUE2542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2542: 
	call	set_int_array_element
 jmp .UNIQUE2543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2543: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2544: 
	movq	%rax, %rdi
 jmp .UNIQUE2545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2545: 
	call	get_int
 jmp .UNIQUE2546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2546: 
	movslq	%eax, %rdx
 jmp .UNIQUE2547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2547: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2548: 
	movq	%rdx, %rsi
 jmp .UNIQUE2549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2549: 
	movq	%rax, %rdi
 jmp .UNIQUE2550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2550: 
	call	get_double_array_element
 jmp .UNIQUE2551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2551: 
	movsd	%xmm0, -88(%rbp)
 jmp .UNIQUE2552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2552: 
	movq	-72(%rbp), %rax
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
	call	get_int
 jmp .UNIQUE2555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2555: 
	movslq	%eax, %rdx
 jmp .UNIQUE2556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2556: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2557: 
	movq	%rdx, %rsi
 jmp .UNIQUE2558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2558: 
	movq	%rax, %rdi
 jmp .UNIQUE2559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2559: 
	call	get_float_array_element
 jmp .UNIQUE2560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2560: 
	unpcklps	%xmm0, %xmm0
 jmp .UNIQUE2561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2561: 
	cvtps2pd	%xmm0, %xmm0
 jmp .UNIQUE2562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2562: 
	movapd	%xmm0, %xmm2
 jmp .UNIQUE2563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2563: 
	addsd	-88(%rbp), %xmm2
 jmp .UNIQUE2564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2564: 
	movsd	%xmm2, -88(%rbp)
 jmp .UNIQUE2565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2565: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2566: 
	movq	%rax, %rdi
 jmp .UNIQUE2567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2567: 
	call	get_int
 jmp .UNIQUE2568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2568: 
	movslq	%eax, %rdx
 jmp .UNIQUE2569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2569: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2570: 
	movsd	-88(%rbp), %xmm0
 jmp .UNIQUE2571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2571: 
	movq	%rdx, %rsi
 jmp .UNIQUE2572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2572: 
	movq	%rax, %rdi
 jmp .UNIQUE2573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2573: 
	call	set_double_array_element
 jmp .UNIQUE2574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2574: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2575: 
	movq	%rax, %rdi
 jmp .UNIQUE2576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2576: 
	call	get_int
 jmp .UNIQUE2577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2577: 
	leal	1(%rax), %edx
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
	movl	%edx, %esi
 jmp .UNIQUE2580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2580: 
	movq	%rax, %rdi
 jmp .UNIQUE2581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2581: 
	call	set_int
.L213:
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
	movq	%rax, %rdi
 jmp .UNIQUE2584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2584: 
	call	get_int
 jmp .UNIQUE2585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2585: 
	movslq	%eax, %rbx
 jmp .UNIQUE2586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2586: 
	movq	-64(%rbp), %rax
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
	call	get_long_int
 jmp .UNIQUE2589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2589: 
	cmpq	%rax, %rbx
 jmp .UNIQUE2590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2590: 
	jl	.L214
 jmp .UNIQUE2591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2591: 
	movl	$.LC68, %edi
 jmp .UNIQUE2592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2592: 
	call	puts
 jmp .UNIQUE2593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2593: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2594: 
	movl	$0, %esi
 jmp .UNIQUE2595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2595: 
	movq	%rax, %rdi
 jmp .UNIQUE2596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2596: 
	call	set_int
 jmp .UNIQUE2597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2597: 
	jmp	.L215
.L216:
 jmp .UNIQUE2598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2598: 
	movq	-72(%rbp), %rax
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
	call	get_int
 jmp .UNIQUE2601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2601: 
	movslq	%eax, %rdx
 jmp .UNIQUE2602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2602: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2603: 
	movq	%rdx, %rsi
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
	call	get_int_array_element
 jmp .UNIQUE2606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2606: 
	movl	%eax, %esi
 jmp .UNIQUE2607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2607: 
	movl	$.LC22, %edi
 jmp .UNIQUE2608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2608: 
	movl	$0, %eax
 jmp .UNIQUE2609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2609: 
	call	printf
 jmp .UNIQUE2610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2610: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2611: 
	movq	%rax, %rdi
 jmp .UNIQUE2612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2612: 
	call	get_int
 jmp .UNIQUE2613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2613: 
	leal	1(%rax), %edx
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
	movl	%edx, %esi
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
.L215:
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
	movq	%rax, %rdi
 jmp .UNIQUE2620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2620: 
	call	get_int
 jmp .UNIQUE2621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2621: 
	movslq	%eax, %rbx
 jmp .UNIQUE2622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2622: 
	movq	-64(%rbp), %rax
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
	call	get_long_int
 jmp .UNIQUE2625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2625: 
	cmpq	%rax, %rbx
 jmp .UNIQUE2626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2626: 
	jl	.L216
 jmp .UNIQUE2627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2627: 
	movl	$10, %edi
 jmp .UNIQUE2628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2628: 
	call	putchar
 jmp .UNIQUE2629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2629: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2630: 
	movl	$0, %esi
 jmp .UNIQUE2631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2631: 
	movq	%rax, %rdi
 jmp .UNIQUE2632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2632: 
	call	set_int
 jmp .UNIQUE2633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2633: 
	jmp	.L217
.L218:
 jmp .UNIQUE2634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2634: 
	movq	-72(%rbp), %rax
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
	call	get_int
 jmp .UNIQUE2637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2637: 
	movslq	%eax, %rdx
 jmp .UNIQUE2638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2638: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2639: 
	movq	%rdx, %rsi
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
	call	get_double_array_element
 jmp .UNIQUE2642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2642: 
	movsd	%xmm0, -88(%rbp)
 jmp .UNIQUE2643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2643: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE2644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2644: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE2645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2645: 
	movsd	-88(%rbp), %xmm0
 jmp .UNIQUE2646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2646: 
	movl	$.LC69, %edi
 jmp .UNIQUE2647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2647: 
	movl	$1, %eax
 jmp .UNIQUE2648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2648: 
	call	printf
 jmp .UNIQUE2649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2649: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2650: 
	movq	%rax, %rdi
 jmp .UNIQUE2651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2651: 
	call	get_int
 jmp .UNIQUE2652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2652: 
	leal	1(%rax), %edx
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
	movl	%edx, %esi
 jmp .UNIQUE2655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2655: 
	movq	%rax, %rdi
 jmp .UNIQUE2656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2656: 
	call	set_int
.L217:
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
	movq	%rax, %rdi
 jmp .UNIQUE2659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2659: 
	call	get_int
 jmp .UNIQUE2660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2660: 
	movslq	%eax, %rbx
 jmp .UNIQUE2661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2661: 
	movq	-64(%rbp), %rax
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
	call	get_long_int
 jmp .UNIQUE2664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2664: 
	cmpq	%rax, %rbx
 jmp .UNIQUE2665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2665: 
	jl	.L218
 jmp .UNIQUE2666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2666: 
	movl	$10, %edi
 jmp .UNIQUE2667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2667: 
	call	putchar
 jmp .UNIQUE2668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2668: 
	movl	$.LC70, %edi
 jmp .UNIQUE2669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2669: 
	call	puts
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
	movl	$0, %esi
 jmp .UNIQUE2672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2672: 
	movq	%rax, %rdi
 jmp .UNIQUE2673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2673: 
	call	set_int
 jmp .UNIQUE2674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2674: 
	jmp	.L219
.L220:
 jmp .UNIQUE2675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2675: 
	movq	-72(%rbp), %rax
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
	call	get_int
 jmp .UNIQUE2678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2678: 
	cltq
 jmp .UNIQUE2679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2679: 
	salq	$3, %rax
 jmp .UNIQUE2680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2680: 
	movq	%rax, %rdx
 jmp .UNIQUE2681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2681: 
	leaq	-80(%rbp), %rcx
 jmp .UNIQUE2682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2682: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2683: 
	movq	%rax, %rsi
 jmp .UNIQUE2684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2684: 
	movl	$8, %edi
 jmp .UNIQUE2685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2685: 
	call	get_arbitrary_block_in_heap_with_offset
 jmp .UNIQUE2686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2686: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2687: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE2688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2688: 
	movsd	-88(%rbp), %xmm0
 jmp .UNIQUE2689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2689: 
	movl	$.LC69, %edi
 jmp .UNIQUE2690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2690: 
	movl	$1, %eax
 jmp .UNIQUE2691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2691: 
	call	printf
 jmp .UNIQUE2692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2692: 
	movq	-72(%rbp), %rax
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
	call	get_int
 jmp .UNIQUE2695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2695: 
	leal	1(%rax), %edx
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
	movl	%edx, %esi
 jmp .UNIQUE2698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2698: 
	movq	%rax, %rdi
 jmp .UNIQUE2699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2699: 
	call	set_int
.L219:
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
	movq	%rax, %rdi
 jmp .UNIQUE2702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2702: 
	call	get_int
 jmp .UNIQUE2703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2703: 
	movslq	%eax, %rbx
 jmp .UNIQUE2704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2704: 
	movq	-64(%rbp), %rax
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
	call	get_long_int
 jmp .UNIQUE2707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2707: 
	cmpq	%rax, %rbx
 jmp .UNIQUE2708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2708: 
	jl	.L220
 jmp .UNIQUE2709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2709: 
	movl	$10, %edi
 jmp .UNIQUE2710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2710: 
	call	putchar
 jmp .UNIQUE2711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2711: 
	movl	$.LC71, %edi
 jmp .UNIQUE2712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2712: 
	call	puts
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
	call	managed_secure_free
 jmp .UNIQUE2716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2716: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2717: 
	movq	%rax, %rdi
 jmp .UNIQUE2718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2718: 
	call	managed_secure_free
 jmp .UNIQUE2719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2719: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2720: 
	movq	%rax, %rdi
 jmp .UNIQUE2721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2721: 
	call	managed_secure_free
 jmp .UNIQUE2722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2722: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2723: 
	movq	%rax, %rdi
 jmp .UNIQUE2724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2724: 
	call	managed_secure_free
 jmp .UNIQUE2725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2725: 
	movq	-32(%rbp), %rax
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
	call	managed_secure_free
 jmp .UNIQUE2728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2728: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2729: 
	movq	%rax, %rdi
 jmp .UNIQUE2730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2730: 
	call	managed_secure_free
 jmp .UNIQUE2731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2731: 
	addq	$88, %rsp
 jmp .UNIQUE2732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2732: 
	popq	%rbx
 jmp .UNIQUE2733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2733: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2734: 
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
 jmp .UNIQUE2735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2735: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2736: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2737: 
	subq	$64, %rsp
 jmp .UNIQUE2738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2738: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE2739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2739: 
	movl	$4, %edi
 jmp .UNIQUE2740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2740: 
	call	malloc
 jmp .UNIQUE2741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2741: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE2742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2742: 
	movl	$8, %edi
 jmp .UNIQUE2743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2743: 
	call	malloc
 jmp .UNIQUE2744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2744: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2745: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2746: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE2747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2747: 
	movq	%rdx, (%rax)
 jmp .UNIQUE2748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2748: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2749: 
	movq	(%rax), %rax
 jmp .UNIQUE2750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2750: 
	salq	$2, %rax
 jmp .UNIQUE2751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2751: 
	movq	%rax, %rdi
 jmp .UNIQUE2752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2752: 
	call	malloc
 jmp .UNIQUE2753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2753: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE2754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2754: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2755: 
	movq	(%rax), %rax
 jmp .UNIQUE2756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2756: 
	salq	$2, %rax
 jmp .UNIQUE2757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2757: 
	movq	%rax, %rdi
 jmp .UNIQUE2758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2758: 
	call	malloc
 jmp .UNIQUE2759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2759: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE2760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2760: 
	movl	$0, -36(%rbp)
 jmp .UNIQUE2761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2761: 
	jmp	.L222
.L225:
 jmp .UNIQUE2762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2762: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2763: 
	movl	$0, (%rax)
 jmp .UNIQUE2764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2764: 
	jmp	.L223
.L224:
 jmp .UNIQUE2765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2765: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2766: 
	movl	(%rax), %eax
 jmp .UNIQUE2767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2767: 
	cltq
 jmp .UNIQUE2768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2768: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE2769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2769: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE2770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2770: 
	addq	%rax, %rdx
 jmp .UNIQUE2771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2771: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2772: 
	movl	(%rax), %eax
 jmp .UNIQUE2773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2773: 
	addl	%eax, %eax
 jmp .UNIQUE2774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2774: 
	movl	%eax, (%rdx)
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
	cltq
 jmp .UNIQUE2778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2778: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE2779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2779: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2780: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE2781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2781: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2782: 
	movl	(%rax), %edx
 jmp .UNIQUE2783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2783: 
	movl	%edx, %eax
 jmp .UNIQUE2784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2784: 
	addl	%eax, %eax
 jmp .UNIQUE2785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2785: 
	addl	%edx, %eax
 jmp .UNIQUE2786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2786: 
	movl	%eax, (%rcx)
 jmp .UNIQUE2787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2787: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2788: 
	movl	(%rax), %eax
 jmp .UNIQUE2789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2789: 
	cltq
 jmp .UNIQUE2790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2790: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE2791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2791: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE2792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2792: 
	addq	%rax, %rdx
 jmp .UNIQUE2793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2793: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2794: 
	movl	(%rax), %eax
 jmp .UNIQUE2795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2795: 
	cltq
 jmp .UNIQUE2796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2796: 
	leaq	0(,%rax,4), %rcx
 jmp .UNIQUE2797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2797: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE2798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2798: 
	addq	%rcx, %rax
 jmp .UNIQUE2799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2799: 
	movl	(%rax), %ecx
 jmp .UNIQUE2800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2800: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2801: 
	movl	(%rax), %eax
 jmp .UNIQUE2802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2802: 
	cltq
 jmp .UNIQUE2803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2803: 
	leaq	0(,%rax,4), %rsi
 jmp .UNIQUE2804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2804: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2805: 
	addq	%rsi, %rax
 jmp .UNIQUE2806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2806: 
	movl	(%rax), %eax
 jmp .UNIQUE2807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2807: 
	addl	%ecx, %eax
 jmp .UNIQUE2808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2808: 
	movl	%eax, (%rdx)
 jmp .UNIQUE2809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2809: 
	movq	-32(%rbp), %rax
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
	leal	1(%rax), %edx
 jmp .UNIQUE2812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2812: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2813: 
	movl	%edx, (%rax)
.L223:
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
	movslq	%eax, %rdx
 jmp .UNIQUE2817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2817: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2818: 
	movq	(%rax), %rax
 jmp .UNIQUE2819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2819: 
	cmpq	%rax, %rdx
 jmp .UNIQUE2820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2820: 
	jl	.L224
 jmp .UNIQUE2821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2821: 
	addl	$1, -36(%rbp)
.L222:
 jmp .UNIQUE2822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2822: 
	cmpl	$99999, -36(%rbp)
 jmp .UNIQUE2823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2823: 
	jle	.L225
 jmp .UNIQUE2824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2824: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2825: 
	movq	%rax, %rdi
 jmp .UNIQUE2826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2826: 
	call	free
 jmp .UNIQUE2827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2827: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2828: 
	movq	%rax, %rdi
 jmp .UNIQUE2829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2829: 
	call	free
 jmp .UNIQUE2830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2830: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE2831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2831: 
	movq	%rax, %rdi
 jmp .UNIQUE2832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2832: 
	call	free
 jmp .UNIQUE2833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2833: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2834: 
	movq	%rax, %rdi
 jmp .UNIQUE2835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2835: 
	call	free
 jmp .UNIQUE2836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2836: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2837: 
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
 jmp .UNIQUE2838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2838: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2839: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2840: 
	pushq	%rbx
 jmp .UNIQUE2841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2841: 
	subq	$72, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE2842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2842: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE2843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2843: 
	movl	$457, %edx
 jmp .UNIQUE2844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2844: 
	movl	$__func__.5465, %esi
 jmp .UNIQUE2845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2845: 
	movl	$4, %edi
 jmp .UNIQUE2846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2846: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2847: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE2848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2848: 
	movl	$458, %edx
 jmp .UNIQUE2849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2849: 
	movl	$__func__.5465, %esi
 jmp .UNIQUE2850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2850: 
	movl	$8, %edi
 jmp .UNIQUE2851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2851: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2852: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE2853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2853: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE2854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2854: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2855: 
	movq	%rdx, %rsi
 jmp .UNIQUE2856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2856: 
	movq	%rax, %rdi
 jmp .UNIQUE2857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2857: 
	call	set_long_int
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
	movq	%rax, %rdi
 jmp .UNIQUE2860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2860: 
	call	get_long_int
 jmp .UNIQUE2861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2861: 
	salq	$2, %rax
 jmp .UNIQUE2862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2862: 
	movl	$461, %edx
 jmp .UNIQUE2863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2863: 
	movl	$__func__.5465, %esi
 jmp .UNIQUE2864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2864: 
	movq	%rax, %rdi
 jmp .UNIQUE2865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2865: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2866: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE2867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2867: 
	movq	-40(%rbp), %rax
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
	call	get_long_int
 jmp .UNIQUE2870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2870: 
	salq	$2, %rax
 jmp .UNIQUE2871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2871: 
	movl	$462, %edx
 jmp .UNIQUE2872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2872: 
	movl	$__func__.5465, %esi
 jmp .UNIQUE2873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2873: 
	movq	%rax, %rdi
 jmp .UNIQUE2874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2874: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2875: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2876: 
	movl	$0, -52(%rbp)
 jmp .UNIQUE2877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2877: 
	jmp	.L227
.L230:
 jmp .UNIQUE2878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2878: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2879: 
	movl	$0, %esi
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
	call	set_int
 jmp .UNIQUE2882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2882: 
	jmp	.L228
.L229:
 jmp .UNIQUE2883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2883: 
	movq	-48(%rbp), %rax
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
	call	get_int
 jmp .UNIQUE2886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2886: 
	leal	(%rax,%rax), %ebx
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
	movslq	%eax, %rcx
 jmp .UNIQUE2891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2891: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2892: 
	movl	%ebx, %edx
 jmp .UNIQUE2893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2893: 
	movq	%rcx, %rsi
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
	call	set_int_array_element
 jmp .UNIQUE2896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2896: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2897: 
	movq	%rax, %rdi
 jmp .UNIQUE2898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2898: 
	call	get_int
 jmp .UNIQUE2899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2899: 
	movl	%eax, %edx
 jmp .UNIQUE2900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2900: 
	movl	%edx, %eax
 jmp .UNIQUE2901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2901: 
	addl	%eax, %eax
 jmp .UNIQUE2902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2902: 
	leal	(%rax,%rdx), %ebx
 jmp .UNIQUE2903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2903: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2904: 
	movq	%rax, %rdi
 jmp .UNIQUE2905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2905: 
	call	get_int
 jmp .UNIQUE2906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2906: 
	movslq	%eax, %rcx
 jmp .UNIQUE2907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2907: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2908: 
	movl	%ebx, %edx
 jmp .UNIQUE2909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2909: 
	movq	%rcx, %rsi
 jmp .UNIQUE2910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2910: 
	movq	%rax, %rdi
 jmp .UNIQUE2911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2911: 
	call	set_int_array_element
 jmp .UNIQUE2912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2912: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2913: 
	movq	%rax, %rdi
 jmp .UNIQUE2914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2914: 
	call	get_int
 jmp .UNIQUE2915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2915: 
	movslq	%eax, %rdx
 jmp .UNIQUE2916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2916: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2917: 
	movq	%rdx, %rsi
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
	call	get_int_array_element
 jmp .UNIQUE2920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2920: 
	movl	%eax, %ebx
 jmp .UNIQUE2921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2921: 
	movq	-48(%rbp), %rax
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
	call	get_int
 jmp .UNIQUE2924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2924: 
	movslq	%eax, %rdx
 jmp .UNIQUE2925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2925: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2926: 
	movq	%rdx, %rsi
 jmp .UNIQUE2927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2927: 
	movq	%rax, %rdi
 jmp .UNIQUE2928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2928: 
	call	get_int_array_element
 jmp .UNIQUE2929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2929: 
	addl	%eax, %ebx
 jmp .UNIQUE2930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2930: 
	movq	-48(%rbp), %rax
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
	call	get_int
 jmp .UNIQUE2933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2933: 
	movslq	%eax, %rcx
 jmp .UNIQUE2934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2934: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2935: 
	movl	%ebx, %edx
 jmp .UNIQUE2936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2936: 
	movq	%rcx, %rsi
 jmp .UNIQUE2937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2937: 
	movq	%rax, %rdi
 jmp .UNIQUE2938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2938: 
	call	set_int_array_element
 jmp .UNIQUE2939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2939: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2940: 
	movq	%rax, %rdi
 jmp .UNIQUE2941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2941: 
	call	get_int
 jmp .UNIQUE2942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2942: 
	leal	1(%rax), %edx
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
	movl	%edx, %esi
 jmp .UNIQUE2945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2945: 
	movq	%rax, %rdi
 jmp .UNIQUE2946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2946: 
	call	set_int
.L228:
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
	call	get_int
 jmp .UNIQUE2950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2950: 
	movslq	%eax, %rbx
 jmp .UNIQUE2951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2951: 
	movq	-40(%rbp), %rax
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
	call	get_long_int
 jmp .UNIQUE2954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2954: 
	cmpq	%rax, %rbx
 jmp .UNIQUE2955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2955: 
	jl	.L229
 jmp .UNIQUE2956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2956: 
	addl	$1, -52(%rbp)
.L227:
 jmp .UNIQUE2957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2957: 
	cmpl	$99999, -52(%rbp)
 jmp .UNIQUE2958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2958: 
	jle	.L230
 jmp .UNIQUE2959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2959: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2960: 
	movq	%rax, %rdi
 jmp .UNIQUE2961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2961: 
	call	managed_secure_free
 jmp .UNIQUE2962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2962: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2963: 
	movq	%rax, %rdi
 jmp .UNIQUE2964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2964: 
	call	managed_secure_free
 jmp .UNIQUE2965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2965: 
	movq	-32(%rbp), %rax
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
	call	managed_secure_free
 jmp .UNIQUE2968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2968: 
	movq	-24(%rbp), %rax
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
	call	managed_secure_free
 jmp .UNIQUE2971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2971: 
	addq	$72, %rsp
 jmp .UNIQUE2972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2972: 
	popq	%rbx
 jmp .UNIQUE2973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2973: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2974: 
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
 jmp .UNIQUE2975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2975: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2976: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2977: 
	pushq	%rbx
 jmp .UNIQUE2978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2978: 
	subq	$56, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE2979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2979: 
	movl	%edi, -52(%rbp)
 jmp .UNIQUE2980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2980: 
	movl	%esi, -56(%rbp)
 jmp .UNIQUE2981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2981: 
	movl	$0, %eax
 jmp .UNIQUE2982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2982: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE2983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2983: 
	movl	$0, %edi
 jmp .UNIQUE2984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2984: 
	call	time
 jmp .UNIQUE2985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2985: 
	movl	%eax, %edi
 jmp .UNIQUE2986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2986: 
	call	srand
 jmp .UNIQUE2987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2987: 
	movl	-56(%rbp), %eax
 jmp .UNIQUE2988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2988: 
	cltq
 jmp .UNIQUE2989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2989: 
	salq	$3, %rax
 jmp .UNIQUE2990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2990: 
	movl	$489, %edx
 jmp .UNIQUE2991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2991: 
	movl	$__func__.5480, %esi
 jmp .UNIQUE2992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2992: 
	movq	%rax, %rdi
 jmp .UNIQUE2993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2993: 
	call	error_checking_malloc
 jmp .UNIQUE2994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2994: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2995: 
	movl	$0, -40(%rbp)
 jmp .UNIQUE2996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2996: 
	jmp	.L232
.L233:
 jmp .UNIQUE2997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2997: 
	movl	-40(%rbp), %eax
 jmp .UNIQUE2998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2998: 
	cltq
 jmp .UNIQUE2999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2999: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3000: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3001: 
	addq	%rdx, %rax
 jmp .UNIQUE3002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3002: 
	movq	$0, (%rax)
 jmp .UNIQUE3003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3003: 
	addl	$1, -40(%rbp)
.L232:
 jmp .UNIQUE3004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3004: 
	movl	-40(%rbp), %eax
 jmp .UNIQUE3005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3005: 
	cmpl	-56(%rbp), %eax
 jmp .UNIQUE3006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3006: 
	jl	.L233
 jmp .UNIQUE3007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3007: 
	movl	$0, -40(%rbp)
 jmp .UNIQUE3008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3008: 
	jmp	.L234
.L237:
 jmp .UNIQUE3009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3009: 
	call	rand
 jmp .UNIQUE3010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3010: 
	cltd
 jmp .UNIQUE3011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3011: 
	idivl	-56(%rbp)
 jmp .UNIQUE3012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3012: 
	movl	%edx, -36(%rbp)
 jmp .UNIQUE3013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3013: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE3014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3014: 
	cltq
 jmp .UNIQUE3015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3015: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3016: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3017: 
	addq	%rdx, %rax
 jmp .UNIQUE3018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3018: 
	movq	(%rax), %rax
 jmp .UNIQUE3019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3019: 
	testq	%rax, %rax
 jmp .UNIQUE3020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3020: 
	jne	.L235
 jmp .UNIQUE3021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3021: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE3022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3022: 
	cltq
 jmp .UNIQUE3023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3023: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3024: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3025: 
	leaq	(%rdx,%rax), %rbx
 jmp .UNIQUE3026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3026: 
	movl	$501, %edx
 jmp .UNIQUE3027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3027: 
	movl	$__func__.5480, %esi
 jmp .UNIQUE3028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3028: 
	movl	$8, %edi
 jmp .UNIQUE3029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3029: 
	call	error_checking_malloc
 jmp .UNIQUE3030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3030: 
	movq	%rax, (%rbx)
 jmp .UNIQUE3031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3031: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE3032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3032: 
	cltq
 jmp .UNIQUE3033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3033: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3034: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3035: 
	addq	%rdx, %rax
 jmp .UNIQUE3036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3036: 
	movq	(%rax), %rax
 jmp .UNIQUE3037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3037: 
	cvtsi2sd	-36(%rbp), %xmm0
 jmp .UNIQUE3038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3038: 
	movsd	%xmm0, (%rax)
 jmp .UNIQUE3039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3039: 
	jmp	.L236
.L235:
 jmp .UNIQUE3040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3040: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE3041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3041: 
	cltq
 jmp .UNIQUE3042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3042: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3043: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3044: 
	addq	%rdx, %rax
 jmp .UNIQUE3045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3045: 
	movq	(%rax), %rax
 jmp .UNIQUE3046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3046: 
	movsd	(%rax), %xmm0
 jmp .UNIQUE3047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3047: 
	movsd	-32(%rbp), %xmm1
 jmp .UNIQUE3048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3048: 
	addsd	%xmm1, %xmm0
 jmp .UNIQUE3049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3049: 
	movsd	%xmm0, -32(%rbp)
 jmp .UNIQUE3050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3050: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE3051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3051: 
	cltq
 jmp .UNIQUE3052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3052: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3053: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3054: 
	addq	%rdx, %rax
 jmp .UNIQUE3055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3055: 
	movq	(%rax), %rax
 jmp .UNIQUE3056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3056: 
	movq	%rax, %rdi
 jmp .UNIQUE3057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3057: 
	call	free
 jmp .UNIQUE3058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3058: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE3059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3059: 
	cltq
 jmp .UNIQUE3060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3060: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3061: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3062: 
	addq	%rdx, %rax
 jmp .UNIQUE3063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3063: 
	movq	$0, (%rax)
.L236:
 jmp .UNIQUE3064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3064: 
	addl	$1, -40(%rbp)
.L234:
 jmp .UNIQUE3065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3065: 
	movl	-40(%rbp), %eax
 jmp .UNIQUE3066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3066: 
	cmpl	-52(%rbp), %eax
 jmp .UNIQUE3067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3067: 
	jl	.L237
 jmp .UNIQUE3068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3068: 
	movl	-56(%rbp), %eax
 jmp .UNIQUE3069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3069: 
	subl	$1, %eax
 jmp .UNIQUE3070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3070: 
	cvtsi2sd	%eax, %xmm0
 jmp .UNIQUE3071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3071: 
	movsd	.LC73(%rip), %xmm1
 jmp .UNIQUE3072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3072: 
	divsd	%xmm1, %xmm0
 jmp .UNIQUE3073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3073: 
	movl	$.LC74, %edi
 jmp .UNIQUE3074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3074: 
	movl	$1, %eax
 jmp .UNIQUE3075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3075: 
	call	printf
 jmp .UNIQUE3076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3076: 
	cvtsi2sd	-52(%rbp), %xmm0
 jmp .UNIQUE3077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3077: 
	movsd	-32(%rbp), %xmm1
 jmp .UNIQUE3078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3078: 
	divsd	%xmm0, %xmm1
 jmp .UNIQUE3079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3079: 
	movapd	%xmm1, %xmm0
 jmp .UNIQUE3080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3080: 
	movl	$.LC75, %edi
 jmp .UNIQUE3081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3081: 
	movl	$1, %eax
 jmp .UNIQUE3082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3082: 
	call	printf
 jmp .UNIQUE3083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3083: 
	addq	$56, %rsp
 jmp .UNIQUE3084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3084: 
	popq	%rbx
 jmp .UNIQUE3085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3085: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3086: 
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
 jmp .UNIQUE3087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3087: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3088: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3089: 
	subq	$48, %rsp
 jmp .UNIQUE3090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3090: 
	movl	%edi, -36(%rbp)
 jmp .UNIQUE3091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3091: 
	movl	%esi, -40(%rbp)
 jmp .UNIQUE3092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3092: 
	movl	$0, %eax
 jmp .UNIQUE3093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3093: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE3094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3094: 
	movl	$0, %edi
 jmp .UNIQUE3095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3095: 
	call	time
 jmp .UNIQUE3096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3096: 
	movl	%eax, %edi
 jmp .UNIQUE3097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3097: 
	call	srand
 jmp .UNIQUE3098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3098: 
	movl	-40(%rbp), %eax
 jmp .UNIQUE3099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3099: 
	cltq
 jmp .UNIQUE3100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3100: 
	salq	$3, %rax
 jmp .UNIQUE3101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3101: 
	movl	$528, %edx
 jmp .UNIQUE3102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3102: 
	movl	$__func__.5495, %esi
 jmp .UNIQUE3103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3103: 
	movq	%rax, %rdi
 jmp .UNIQUE3104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3104: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE3105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3105: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3106: 
	movl	$0, -24(%rbp)
 jmp .UNIQUE3107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3107: 
	jmp	.L239
.L240:
 jmp .UNIQUE3108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3108: 
	movl	-24(%rbp), %eax
 jmp .UNIQUE3109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3109: 
	movslq	%eax, %rcx
 jmp .UNIQUE3110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3110: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3111: 
	movl	$0, %edx
 jmp .UNIQUE3112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3112: 
	movq	%rcx, %rsi
 jmp .UNIQUE3113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3113: 
	movq	%rax, %rdi
 jmp .UNIQUE3114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3114: 
	call	set_pointer_array_element
 jmp .UNIQUE3115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3115: 
	addl	$1, -24(%rbp)
.L239:
 jmp .UNIQUE3116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3116: 
	movl	-24(%rbp), %eax
 jmp .UNIQUE3117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3117: 
	cmpl	-40(%rbp), %eax
 jmp .UNIQUE3118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3118: 
	jl	.L240
 jmp .UNIQUE3119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3119: 
	movl	$0, -24(%rbp)
 jmp .UNIQUE3120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3120: 
	jmp	.L241
.L244:
 jmp .UNIQUE3121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3121: 
	call	rand
 jmp .UNIQUE3122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3122: 
	cltd
 jmp .UNIQUE3123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3123: 
	idivl	-40(%rbp)
 jmp .UNIQUE3124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3124: 
	movl	%edx, -20(%rbp)
 jmp .UNIQUE3125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3125: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE3126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3126: 
	movslq	%eax, %rdx
 jmp .UNIQUE3127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3127: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3128: 
	movq	%rdx, %rsi
 jmp .UNIQUE3129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3129: 
	movq	%rax, %rdi
 jmp .UNIQUE3130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3130: 
	call	get_pointer_array_element
 jmp .UNIQUE3131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3131: 
	testq	%rax, %rax
 jmp .UNIQUE3132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3132: 
	jne	.L242
 jmp .UNIQUE3133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3133: 
	movl	$540, %edx
 jmp .UNIQUE3134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3134: 
	movl	$__func__.5495, %esi
 jmp .UNIQUE3135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3135: 
	movl	$8, %edi
 jmp .UNIQUE3136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3136: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE3137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3137: 
	movq	%rax, %rdx
 jmp .UNIQUE3138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3138: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE3139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3139: 
	movslq	%eax, %rcx
 jmp .UNIQUE3140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3140: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3141: 
	movq	%rcx, %rsi
 jmp .UNIQUE3142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3142: 
	movq	%rax, %rdi
 jmp .UNIQUE3143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3143: 
	call	set_pointer_array_element
 jmp .UNIQUE3144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3144: 
	cvtsi2sd	-20(%rbp), %xmm2
 jmp .UNIQUE3145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3145: 
	movsd	%xmm2, -48(%rbp)
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
	movsd	-48(%rbp), %xmm0
 jmp .UNIQUE3153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3153: 
	movl	$0, %esi
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
	call	set_double_array_element
 jmp .UNIQUE3156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3156: 
	jmp	.L243
.L242:
 jmp .UNIQUE3157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3157: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE3158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3158: 
	movslq	%eax, %rdx
 jmp .UNIQUE3159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3159: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3160: 
	movq	%rdx, %rsi
 jmp .UNIQUE3161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3161: 
	movq	%rax, %rdi
 jmp .UNIQUE3162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3162: 
	call	get_pointer_array_element
 jmp .UNIQUE3163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3163: 
	movl	$0, %esi
 jmp .UNIQUE3164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3164: 
	movq	%rax, %rdi
 jmp .UNIQUE3165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3165: 
	call	get_double_array_element
 jmp .UNIQUE3166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3166: 
	movsd	-16(%rbp), %xmm1
 jmp .UNIQUE3167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3167: 
	addsd	%xmm1, %xmm0
 jmp .UNIQUE3168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3168: 
	movsd	%xmm0, -16(%rbp)
 jmp .UNIQUE3169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3169: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE3170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3170: 
	movslq	%eax, %rdx
 jmp .UNIQUE3171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3171: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3172: 
	movq	%rdx, %rsi
 jmp .UNIQUE3173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3173: 
	movq	%rax, %rdi
 jmp .UNIQUE3174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3174: 
	call	get_pointer_array_element
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
	call	managed_secure_free
 jmp .UNIQUE3177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3177: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE3178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3178: 
	movslq	%eax, %rcx
 jmp .UNIQUE3179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3179: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3180: 
	movl	$0, %edx
 jmp .UNIQUE3181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3181: 
	movq	%rcx, %rsi
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
	call	set_pointer_array_element
.L243:
 jmp .UNIQUE3184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3184: 
	addl	$1, -24(%rbp)
.L241:
 jmp .UNIQUE3185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3185: 
	movl	-24(%rbp), %eax
 jmp .UNIQUE3186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3186: 
	cmpl	-36(%rbp), %eax
 jmp .UNIQUE3187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3187: 
	jl	.L244
 jmp .UNIQUE3188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3188: 
	movl	-40(%rbp), %eax
 jmp .UNIQUE3189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3189: 
	subl	$1, %eax
 jmp .UNIQUE3190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3190: 
	cvtsi2sd	%eax, %xmm0
 jmp .UNIQUE3191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3191: 
	movsd	.LC73(%rip), %xmm1
 jmp .UNIQUE3192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3192: 
	divsd	%xmm1, %xmm0
 jmp .UNIQUE3193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3193: 
	movl	$.LC74, %edi
 jmp .UNIQUE3194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3194: 
	movl	$1, %eax
 jmp .UNIQUE3195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3195: 
	call	printf
 jmp .UNIQUE3196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3196: 
	cvtsi2sd	-36(%rbp), %xmm0
 jmp .UNIQUE3197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3197: 
	movsd	-16(%rbp), %xmm1
 jmp .UNIQUE3198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3198: 
	divsd	%xmm0, %xmm1
 jmp .UNIQUE3199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3199: 
	movapd	%xmm1, %xmm0
 jmp .UNIQUE3200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3200: 
	movl	$.LC75, %edi
 jmp .UNIQUE3201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3201: 
	movl	$1, %eax
 jmp .UNIQUE3202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3202: 
	call	printf
 jmp .UNIQUE3203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3203: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3204: 
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
 jmp .UNIQUE3205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3205: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3206: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3207: 
	movq	%rdi, -40(%rbp)
 jmp .UNIQUE3208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3208: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3209: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE3210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3210: 
	movq	$5, -16(%rbp)
 jmp .UNIQUE3211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3211: 
	movq	$4, -8(%rbp)
 jmp .UNIQUE3212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3212: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3213: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE3214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3214: 
	addq	%rdx, %rax
 jmp .UNIQUE3215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3215: 
	movq	-8(%rbp), %rdx
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
	leaq	(%rdx,%rcx), %rsi
 jmp .UNIQUE3218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3218: 
	cqto
 jmp .UNIQUE3219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3219: 
	idivq	%rsi
 jmp .UNIQUE3220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3220: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3221: 
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
 jmp .UNIQUE3222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3222: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3223: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3224: 
	movl	$8, %eax
 jmp .UNIQUE3225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3225: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3226: 
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
 jmp .UNIQUE3227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3227: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3228: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3229: 
	subq	$16, %rsp
 jmp .UNIQUE3230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3230: 
	movq	stack_keyshare_input_file(%rip), %rax
 jmp .UNIQUE3231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3231: 
	movq	%rax, %rdi
 jmp .UNIQUE3232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3232: 
	call	feof
 jmp .UNIQUE3233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3233: 
	testl	%eax, %eax
 jmp .UNIQUE3234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3234: 
	je	.L250
 jmp .UNIQUE3235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3235: 
	movl	$.LC76, %edi
 jmp .UNIQUE3236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3236: 
	call	perror
 jmp .UNIQUE3237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3237: 
	movl	$45, %edi
 jmp .UNIQUE3238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3238: 
	call	exit
.L250:
 jmp .UNIQUE3239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3239: 
	movq	stack_keyshare_input_file(%rip), %rdx
 jmp .UNIQUE3240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3240: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE3241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3241: 
	movq	%rdx, %rcx
 jmp .UNIQUE3242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3242: 
	movl	$1, %edx
 jmp .UNIQUE3243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3243: 
	movl	$1, %esi
 jmp .UNIQUE3244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3244: 
	movq	%rax, %rdi
 jmp .UNIQUE3245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3245: 
	call	fread
 jmp .UNIQUE3246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3246: 
	cmpq	$1, %rax
 jmp .UNIQUE3247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3247: 
	je	.L251
 jmp .UNIQUE3248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3248: 
	movl	$.LC8, %edi
 jmp .UNIQUE3249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3249: 
	call	perror
 jmp .UNIQUE3250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3250: 
	movl	$47, %edi
 jmp .UNIQUE3251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3251: 
	call	exit
.L251:
 jmp .UNIQUE3252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3252: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE3253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3253: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3254: 
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
 jmp .UNIQUE3255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3255: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3256: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3257: 
	pushq	%rbx
 jmp .UNIQUE3258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3258: 
	subq	$56, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE3259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3259: 
	movq	$2048, -56(%rbp)
 jmp .UNIQUE3260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3260: 
	movq	$5, -48(%rbp)
 jmp .UNIQUE3261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3261: 
	movq	$4, -40(%rbp)
 jmp .UNIQUE3262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3262: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3263: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE3264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3264: 
	addq	%rdx, %rax
 jmp .UNIQUE3265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3265: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE3266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3266: 
	movq	-48(%rbp), %rcx
 jmp .UNIQUE3267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3267: 
	leaq	(%rdx,%rcx), %rbx
 jmp .UNIQUE3268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3268: 
	cqto
 jmp .UNIQUE3269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3269: 
	idivq	%rbx
 jmp .UNIQUE3270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3270: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE3271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3271: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3272: 
	imulq	-40(%rbp), %rax
 jmp .UNIQUE3273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3273: 
	movq	%rax, %rdx
 jmp .UNIQUE3274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3274: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3275: 
	subq	$1, %rax
 jmp .UNIQUE3276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3276: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE3277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3277: 
	addq	%rdx, %rax
 jmp .UNIQUE3278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3278: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE3279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3279: 
	jne	.L254
 jmp .UNIQUE3280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3280: 
	movl	$.LC77, %edi
 jmp .UNIQUE3281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3281: 
	call	puts
 jmp .UNIQUE3282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3282: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3283: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE3284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3284: 
	jmp	.L255
.L254:
 jmp .UNIQUE3285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3285: 
	movl	$.LC78, %edi
 jmp .UNIQUE3286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3286: 
	call	puts
 jmp .UNIQUE3287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3287: 
	addq	$1, -32(%rbp)
 jmp .UNIQUE3288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3288: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3289: 
	imulq	-40(%rbp), %rax
 jmp .UNIQUE3290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3290: 
	movq	%rax, %rdx
 jmp .UNIQUE3291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3291: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3292: 
	subq	$1, %rax
 jmp .UNIQUE3293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3293: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE3294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3294: 
	addq	%rdx, %rax
 jmp .UNIQUE3295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3295: 
	movq	%rax, -64(%rbp)
.L255:
 jmp .UNIQUE3296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3296: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE3297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3297: 
	movl	$143, %edx
 jmp .UNIQUE3298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3298: 
	movl	$__func__.5552, %esi
 jmp .UNIQUE3299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3299: 
	movq	%rax, %rdi
 jmp .UNIQUE3300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3300: 
	call	error_checking_malloc
 jmp .UNIQUE3301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3301: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE3302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3302: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE3303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3303: 
	movq	%rax, total_stack_bytes_allocated(%rip)
 jmp .UNIQUE3304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3304: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3305: 
	addq	$56, %rsp
 jmp .UNIQUE3306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3306: 
	popq	%rbx
 jmp .UNIQUE3307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3307: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3308: 
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
 jmp .UNIQUE3309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3309: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3310: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3311: 
	subq	$16, %rsp
 jmp .UNIQUE3312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3312: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE3313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3313: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3314: 
	movq	%rax, %rdi
 jmp .UNIQUE3315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3315: 
	call	free
 jmp .UNIQUE3316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3316: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3317: 
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
 jmp .UNIQUE3318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3318: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3319: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3320: 
	pushq	%rbx
 jmp .UNIQUE3321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3321: 
	subq	$72, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE3322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3322: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE3323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3323: 
	movl	$0, -52(%rbp)
 jmp .UNIQUE3324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3324: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE3325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3325: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE3326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3326: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE3327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3327: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE3328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3328: 
	jmp	.L259
.L264:
 jmp .UNIQUE3329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3329: 
	cmpl	$0, -52(%rbp)
 jmp .UNIQUE3330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3330: 
	je	.L260
 jmp .UNIQUE3331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3331: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE3332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3332: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3333: 
	leaq	(%rdx,%rax), %rbx
 jmp .UNIQUE3334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3334: 
	movl	$0, %eax
 jmp .UNIQUE3335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3335: 
	call	get_next_stack_keyshare
 jmp .UNIQUE3336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3336: 
	movb	%al, (%rbx)
 jmp .UNIQUE3337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3337: 
	addq	$1, -32(%rbp)
 jmp .UNIQUE3338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3338: 
	addq	$1, -48(%rbp)
 jmp .UNIQUE3339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3339: 
	jmp	.L261
.L260:
 jmp .UNIQUE3340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3340: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE3341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3341: 
	jmp	.L262
.L263:
 jmp .UNIQUE3342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3342: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3343: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE3344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3344: 
	addq	%rdx, %rax
 jmp .UNIQUE3345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3345: 
	movq	%rax, %rdx
 jmp .UNIQUE3346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3346: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3347: 
	addq	%rdx, %rax
 jmp .UNIQUE3348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3348: 
	movb	$0, (%rax)
 jmp .UNIQUE3349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3349: 
	addq	$1, -40(%rbp)
.L262:
 jmp .UNIQUE3350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3350: 
	cmpq	$3, -40(%rbp)
 jmp .UNIQUE3351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3351: 
	jle	.L263
 jmp .UNIQUE3352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3352: 
	addq	$4, -48(%rbp)
 jmp .UNIQUE3353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3353: 
	movl	$1, -52(%rbp)
.L261:
 jmp .UNIQUE3354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3354: 
	cmpq	$5, -32(%rbp)
 jmp .UNIQUE3355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3355: 
	jne	.L259
 jmp .UNIQUE3356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3356: 
	movl	$0, -52(%rbp)
 jmp .UNIQUE3357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3357: 
	movq	$0, -32(%rbp)
.L259:
 jmp .UNIQUE3358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3358: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE3359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3359: 
	cmpq	%rax, -48(%rbp)
 jmp .UNIQUE3360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3360: 
	jl	.L264
 jmp .UNIQUE3361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3361: 
	addq	$72, %rsp
 jmp .UNIQUE3362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3362: 
	popq	%rbx
 jmp .UNIQUE3363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3363: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3364: 
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
 jmp .UNIQUE3365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3365: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3366: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3367: 
	subq	$16, %rsp
 jmp .UNIQUE3368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3368: 
	movl	$0, %edi
 jmp .UNIQUE3369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3369: 
	call	time
 jmp .UNIQUE3370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3370: 
	movl	%eax, %edi
 jmp .UNIQUE3371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3371: 
	call	srand
 jmp .UNIQUE3372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3372: 
	movl	$0, %eax
 jmp .UNIQUE3373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3373: 
	call	allocate_stack_mem
 jmp .UNIQUE3374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3374: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3375: 
	movl	$.LC11, %esi
 jmp .UNIQUE3376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3376: 
	movl	$.LC79, %edi
 jmp .UNIQUE3377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3377: 
	call	fopen
 jmp .UNIQUE3378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3378: 
	movq	%rax, stack_keyshare_input_file(%rip)
 jmp .UNIQUE3379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3379: 
	movq	stack_keyshare_input_file(%rip), %rax
 jmp .UNIQUE3380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3380: 
	testq	%rax, %rax
 jmp .UNIQUE3381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3381: 
	jne	.L266
 jmp .UNIQUE3382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3382: 
	movl	$.LC80, %edi
 jmp .UNIQUE3383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3383: 
	call	perror
 jmp .UNIQUE3384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3384: 
	movl	$46, %edi
 jmp .UNIQUE3385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3385: 
	call	exit
.L266:
 jmp .UNIQUE3386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3386: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3387: 
	movq	%rax, %rdi
 jmp .UNIQUE3388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3388: 
	call	insert_keys_into_stack_mem
 jmp .UNIQUE3389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3389: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3390: 
	movq	%rax, entire_stack_memory_chunk(%rip)
 jmp .UNIQUE3391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3391: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3392: 
	movq	%rax, last_unused_stack_memory(%rip)
 jmp .UNIQUE3393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3393: 
	movq	stack_keyshare_input_file(%rip), %rax
 jmp .UNIQUE3394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3394: 
	movq	%rax, %rdi
 jmp .UNIQUE3395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3395: 
	call	fclose
 jmp .UNIQUE3396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3396: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3397: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3398: 
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
 jmp .UNIQUE3399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3399: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3400: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3401: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE3402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3402: 
	movq	%rsi, -64(%rbp)
 jmp .UNIQUE3403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3403: 
	movq	%rdx, -72(%rbp)
 jmp .UNIQUE3404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3404: 
	movq	$0, -24(%rbp)
 jmp .UNIQUE3405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3405: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE3406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3406: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE3407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3407: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3408: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE3409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3409: 
	jmp	.L269
.L273:
 jmp .UNIQUE3410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3410: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE3411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3411: 
	jmp	.L270
.L272:
 jmp .UNIQUE3412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3412: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3413: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE3414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3414: 
	addq	%rdx, %rax
 jmp .UNIQUE3415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3415: 
	movq	%rax, %rdx
 jmp .UNIQUE3416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3416: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3417: 
	addq	%rax, %rdx
 jmp .UNIQUE3418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3418: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3419: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE3420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3420: 
	addq	%rcx, %rax
 jmp .UNIQUE3421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3421: 
	movq	%rax, %rcx
 jmp .UNIQUE3422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3422: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE3423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3423: 
	addq	%rcx, %rax
 jmp .UNIQUE3424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3424: 
	movzbl	(%rax), %eax
 jmp .UNIQUE3425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3425: 
	movb	%al, (%rdx)
 jmp .UNIQUE3426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3426: 
	addq	$1, -32(%rbp)
.L270:
 jmp .UNIQUE3427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3427: 
	cmpq	$3, -32(%rbp)
 jmp .UNIQUE3428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3428: 
	jg	.L271
 jmp .UNIQUE3429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3429: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3430: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE3431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3431: 
	addq	%rdx, %rax
 jmp .UNIQUE3432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3432: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE3433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3433: 
	jl	.L272
.L271:
 jmp .UNIQUE3434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3434: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3435: 
	addq	%rax, -16(%rbp)
 jmp .UNIQUE3436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3436: 
	addq	$1, -24(%rbp)
 jmp .UNIQUE3437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3437: 
	addq	$9, -40(%rbp)
.L269:
 jmp .UNIQUE3438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3438: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3439: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE3440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3440: 
	jl	.L273
 jmp .UNIQUE3441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3441: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3442: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3443: 
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
 jmp .UNIQUE3444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3444: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3445: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3446: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE3447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3447: 
	movq	%rsi, -80(%rbp)
 jmp .UNIQUE3448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3448: 
	movq	%rdx, -88(%rbp)
 jmp .UNIQUE3449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3449: 
	movl	%ecx, -92(%rbp)
 jmp .UNIQUE3450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3450: 
	movq	%r8, -104(%rbp)
 jmp .UNIQUE3451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3451: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE3452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3452: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE3453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3453: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE3454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3454: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE3455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3455: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE3456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3456: 
	cmpl	$2, -92(%rbp)
 jmp .UNIQUE3457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3457: 
	jne	.L276
 jmp .UNIQUE3458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3458: 
	movq	$1, -24(%rbp)
 jmp .UNIQUE3459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3459: 
	jmp	.L277
.L276:
 jmp .UNIQUE3460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3460: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE3461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3461: 
	movq	%rax, -24(%rbp)
.L277:
 jmp .UNIQUE3462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3462: 
	movq	$0, -64(%rbp)
 jmp .UNIQUE3463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3463: 
	cmpl	$0, -92(%rbp)
 jmp .UNIQUE3464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3464: 
	je	.L278
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
	imulq	-24(%rbp), %rax
 jmp .UNIQUE3467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3467: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE3468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3468: 
	testq	%rax, %rax
 jmp .UNIQUE3469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3469: 
	cmovs	%rdx, %rax
 jmp .UNIQUE3470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3470: 
	sarq	$2, %rax
 jmp .UNIQUE3471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3471: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3472: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3473: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE3474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3474: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE3475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3475: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE3476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3476: 
	cmpq	%rax, %rdx
 jmp .UNIQUE3477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3477: 
	jne	.L279
 jmp .UNIQUE3478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3478: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3479: 
	movq	%rdx, %rax
 jmp .UNIQUE3480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3480: 
	salq	$3, %rax
 jmp .UNIQUE3481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3481: 
	addq	%rdx, %rax
 jmp .UNIQUE3482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3482: 
	addq	%rax, -40(%rbp)
 jmp .UNIQUE3483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3483: 
	jmp	.L278
.L279:
 jmp .UNIQUE3484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3484: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3485: 
	movq	%rdx, %rax
 jmp .UNIQUE3486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3486: 
	salq	$3, %rax
 jmp .UNIQUE3487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3487: 
	addq	%rdx, %rax
 jmp .UNIQUE3488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3488: 
	addq	%rax, -40(%rbp)
 jmp .UNIQUE3489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3489: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE3490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3490: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE3491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3491: 
	movq	%rax, %rdx
 jmp .UNIQUE3492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3492: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE3493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3493: 
	movl	$0, %eax
 jmp .UNIQUE3494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3494: 
	subq	%rcx, %rax
 jmp .UNIQUE3495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3495: 
	salq	$2, %rax
 jmp .UNIQUE3496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3496: 
	addq	%rdx, %rax
 jmp .UNIQUE3497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3497: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE3498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3498: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE3499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3499: 
	jmp	.L280
.L282:
 jmp .UNIQUE3500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3500: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3501: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3502: 
	addq	%rdx, %rax
 jmp .UNIQUE3503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3503: 
	movq	%rax, %rdx
 jmp .UNIQUE3504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3504: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3505: 
	addq	%rax, %rdx
 jmp .UNIQUE3506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3506: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3507: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE3508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3508: 
	addq	%rcx, %rax
 jmp .UNIQUE3509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3509: 
	movq	%rax, %rcx
 jmp .UNIQUE3510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3510: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3511: 
	addq	%rcx, %rax
 jmp .UNIQUE3512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3512: 
	movzbl	(%rax), %eax
 jmp .UNIQUE3513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3513: 
	movb	%al, (%rdx)
 jmp .UNIQUE3514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3514: 
	addq	$1, -48(%rbp)
.L280:
 jmp .UNIQUE3515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3515: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3516: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE3517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3517: 
	addq	%rdx, %rax
 jmp .UNIQUE3518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3518: 
	cmpq	$3, %rax
 jmp .UNIQUE3519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3519: 
	jg	.L281
 jmp .UNIQUE3520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3520: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3521: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3522: 
	addq	%rdx, %rax
 jmp .UNIQUE3523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3523: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE3524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3524: 
	jl	.L282
.L281:
 jmp .UNIQUE3525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3525: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3526: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE3527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3527: 
	addq	$9, -40(%rbp)
 jmp .UNIQUE3528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3528: 
	jmp	.L283
.L278:
 jmp .UNIQUE3529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3529: 
	jmp	.L283
.L287:
 jmp .UNIQUE3530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3530: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE3531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3531: 
	jmp	.L284
.L286:
 jmp .UNIQUE3532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3532: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3533: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3534: 
	addq	%rdx, %rax
 jmp .UNIQUE3535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3535: 
	movq	%rax, %rdx
 jmp .UNIQUE3536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3536: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3537: 
	addq	%rax, %rdx
 jmp .UNIQUE3538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3538: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3539: 
	movq	-64(%rbp), %rcx
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
	movq	%rax, %rcx
 jmp .UNIQUE3542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3542: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3543: 
	addq	%rcx, %rax
 jmp .UNIQUE3544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3544: 
	movzbl	(%rax), %eax
 jmp .UNIQUE3545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3545: 
	movb	%al, (%rdx)
 jmp .UNIQUE3546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3546: 
	addq	$1, -56(%rbp)
.L284:
 jmp .UNIQUE3547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3547: 
	cmpq	$3, -56(%rbp)
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
	movq	-56(%rbp), %rax
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
	cmpq	-80(%rbp), %rax
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
	movq	-56(%rbp), %rax
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
	addq	$9, -64(%rbp)
.L283:
 jmp .UNIQUE3557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3557: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3558: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE3559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3559: 
	jl	.L287
 jmp .UNIQUE3560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3560: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3561: 
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
 jmp .UNIQUE3562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3562: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3563: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3564: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE3565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3565: 
	movq	%rsi, -80(%rbp)
 jmp .UNIQUE3566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3566: 
	movq	%rdx, -88(%rbp)
 jmp .UNIQUE3567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3567: 
	movl	%ecx, -92(%rbp)
 jmp .UNIQUE3568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3568: 
	movq	%r8, -104(%rbp)
 jmp .UNIQUE3569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3569: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE3570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3570: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE3571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3571: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE3572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3572: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE3573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3573: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE3574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3574: 
	cmpl	$2, -92(%rbp)
 jmp .UNIQUE3575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3575: 
	jne	.L289
 jmp .UNIQUE3576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3576: 
	movq	$1, -24(%rbp)
 jmp .UNIQUE3577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3577: 
	jmp	.L290
.L289:
 jmp .UNIQUE3578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3578: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE3579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3579: 
	movq	%rax, -24(%rbp)
.L290:
 jmp .UNIQUE3580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3580: 
	movq	$0, -64(%rbp)
 jmp .UNIQUE3581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3581: 
	cmpl	$0, -92(%rbp)
 jmp .UNIQUE3582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3582: 
	je	.L291
 jmp .UNIQUE3583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3583: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE3584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3584: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE3585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3585: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE3586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3586: 
	testq	%rax, %rax
 jmp .UNIQUE3587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3587: 
	cmovs	%rdx, %rax
 jmp .UNIQUE3588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3588: 
	sarq	$2, %rax
 jmp .UNIQUE3589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3589: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3590: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3591: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE3592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3592: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE3593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3593: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE3594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3594: 
	cmpq	%rax, %rdx
 jmp .UNIQUE3595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3595: 
	jne	.L292
 jmp .UNIQUE3596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3596: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3597: 
	movq	%rdx, %rax
 jmp .UNIQUE3598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3598: 
	salq	$3, %rax
 jmp .UNIQUE3599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3599: 
	addq	%rdx, %rax
 jmp .UNIQUE3600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3600: 
	addq	%rax, -40(%rbp)
 jmp .UNIQUE3601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3601: 
	jmp	.L291
.L292:
 jmp .UNIQUE3602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3602: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3603: 
	movq	%rdx, %rax
 jmp .UNIQUE3604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3604: 
	salq	$3, %rax
 jmp .UNIQUE3605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3605: 
	addq	%rdx, %rax
 jmp .UNIQUE3606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3606: 
	addq	%rax, -40(%rbp)
 jmp .UNIQUE3607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3607: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE3608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3608: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE3609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3609: 
	movq	%rax, %rdx
 jmp .UNIQUE3610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3610: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE3611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3611: 
	movl	$0, %eax
 jmp .UNIQUE3612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3612: 
	subq	%rcx, %rax
 jmp .UNIQUE3613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3613: 
	salq	$2, %rax
 jmp .UNIQUE3614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3614: 
	addq	%rdx, %rax
 jmp .UNIQUE3615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3615: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE3616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3616: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE3617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3617: 
	jmp	.L293
.L295:
 jmp .UNIQUE3618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3618: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3619: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE3620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3620: 
	addq	%rdx, %rax
 jmp .UNIQUE3621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3621: 
	movq	%rax, %rdx
 jmp .UNIQUE3622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3622: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3623: 
	addq	%rax, %rdx
 jmp .UNIQUE3624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3624: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3625: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE3626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3626: 
	addq	%rcx, %rax
 jmp .UNIQUE3627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3627: 
	movq	%rax, %rcx
 jmp .UNIQUE3628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3628: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3629: 
	addq	%rcx, %rax
 jmp .UNIQUE3630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3630: 
	movzbl	(%rax), %eax
 jmp .UNIQUE3631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3631: 
	movb	%al, (%rdx)
 jmp .UNIQUE3632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3632: 
	addq	$1, -48(%rbp)
.L293:
 jmp .UNIQUE3633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3633: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3634: 
	movq	-56(%rbp), %rdx
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
	cmpq	$3, %rax
 jmp .UNIQUE3637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3637: 
	jg	.L294
 jmp .UNIQUE3638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3638: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3639: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3640: 
	addq	%rdx, %rax
 jmp .UNIQUE3641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3641: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE3642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3642: 
	jl	.L295
.L294:
 jmp .UNIQUE3643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3643: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3644: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE3645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3645: 
	addq	$9, -40(%rbp)
 jmp .UNIQUE3646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3646: 
	jmp	.L296
.L291:
 jmp .UNIQUE3647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3647: 
	jmp	.L296
.L300:
 jmp .UNIQUE3648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3648: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE3649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3649: 
	jmp	.L297
.L299:
 jmp .UNIQUE3650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3650: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3651: 
	movq	-64(%rbp), %rdx
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
	movq	%rax, %rdx
 jmp .UNIQUE3654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3654: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3655: 
	addq	%rax, %rdx
 jmp .UNIQUE3656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3656: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3657: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE3658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3658: 
	addq	%rcx, %rax
 jmp .UNIQUE3659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3659: 
	movq	%rax, %rcx
 jmp .UNIQUE3660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3660: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3661: 
	addq	%rcx, %rax
 jmp .UNIQUE3662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3662: 
	movzbl	(%rax), %eax
 jmp .UNIQUE3663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3663: 
	movb	%al, (%rdx)
 jmp .UNIQUE3664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3664: 
	addq	$1, -56(%rbp)
.L297:
 jmp .UNIQUE3665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3665: 
	cmpq	$3, -56(%rbp)
 jmp .UNIQUE3666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3666: 
	jg	.L298
 jmp .UNIQUE3667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3667: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3668: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3669: 
	addq	%rdx, %rax
 jmp .UNIQUE3670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3670: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE3671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3671: 
	jl	.L299
.L298:
 jmp .UNIQUE3672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3672: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3673: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE3674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3674: 
	addq	$9, -64(%rbp)
.L296:
 jmp .UNIQUE3675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3675: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3676: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE3677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3677: 
	jl	.L300
 jmp .UNIQUE3678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3678: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3679: 
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
 jmp .UNIQUE3680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3680: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3681: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3682: 
	subq	$64, %rsp
 jmp .UNIQUE3683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3683: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE3684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3684: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3685: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE3686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3686: 
	movq	$5, -32(%rbp)
 jmp .UNIQUE3687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3687: 
	movq	$4, -24(%rbp)
 jmp .UNIQUE3688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3688: 
	movq	last_unused_stack_memory(%rip), %rax
 jmp .UNIQUE3689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3689: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3690: 
	cmpq	$0, -56(%rbp)
 jmp .UNIQUE3691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3691: 
	jne	.L302
 jmp .UNIQUE3692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3692: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE3693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3693: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE3694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3694: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3695: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3696: 
	jmp	.L306
.L302:
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
	cqto
 jmp .UNIQUE3699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3699: 
	idivq	-24(%rbp)
 jmp .UNIQUE3700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3700: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE3701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3701: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3702: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE3703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3703: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE3704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3704: 
	jge	.L304
 jmp .UNIQUE3705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3705: 
	addq	$1, -48(%rbp)
.L304:
 jmp .UNIQUE3706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3706: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3707: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE3708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3708: 
	movq	last_unused_stack_memory(%rip), %rdx
 jmp .UNIQUE3709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3709: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3710: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE3711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3711: 
	addq	%rcx, %rax
 jmp .UNIQUE3712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3712: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE3713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3713: 
	addq	%rdx, %rax
 jmp .UNIQUE3714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3714: 
	movq	%rax, last_unused_stack_memory(%rip)
 jmp .UNIQUE3715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3715: 
	movq	entire_stack_memory_chunk(%rip), %rdx
 jmp .UNIQUE3716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3716: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE3717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3717: 
	addq	%rax, %rdx
 jmp .UNIQUE3718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3718: 
	movq	last_unused_stack_memory(%rip), %rax
 jmp .UNIQUE3719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3719: 
	cmpq	%rax, %rdx
 jmp .UNIQUE3720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3720: 
	ja	.L305
 jmp .UNIQUE3721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3721: 
	movq	last_unused_stack_memory(%rip), %rax
 jmp .UNIQUE3722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3722: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3723: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE3724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3724: 
	addq	%rcx, %rdx
 jmp .UNIQUE3725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3725: 
	imulq	-48(%rbp), %rdx
 jmp .UNIQUE3726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3726: 
	negq	%rdx
 jmp .UNIQUE3727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3727: 
	addq	%rdx, %rax
 jmp .UNIQUE3728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3728: 
	movq	%rax, last_unused_stack_memory(%rip)
 jmp .UNIQUE3729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3729: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE3730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3730: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE3731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3731: 
	movq	stderr(%rip), %rax
 jmp .UNIQUE3732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3732: 
	movq	%rax, %rcx
 jmp .UNIQUE3733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3733: 
	movl	$68, %edx
 jmp .UNIQUE3734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3734: 
	movl	$1, %esi
 jmp .UNIQUE3735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3735: 
	movl	$.LC81, %edi
 jmp .UNIQUE3736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3736: 
	call	fwrite
 jmp .UNIQUE3737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3737: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3738: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3739: 
	jmp	.L306
.L305:
 jmp .UNIQUE3740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3740: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3741: 
	movq	-8(%rbp), %rdx
.L306:
 jmp .UNIQUE3742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3742: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3743: 
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
 jmp .UNIQUE3744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3744: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3745: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3746: 
	movq	%rdi, -40(%rbp)
 jmp .UNIQUE3747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3747: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3748: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE3749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3749: 
	movq	$5, -16(%rbp)
 jmp .UNIQUE3750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3750: 
	movq	$4, -8(%rbp)
 jmp .UNIQUE3751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3751: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3752: 
	cqto
 jmp .UNIQUE3753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3753: 
	idivq	-8(%rbp)
 jmp .UNIQUE3754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3754: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE3755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3755: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3756: 
	imulq	-8(%rbp), %rax
 jmp .UNIQUE3757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3757: 
	cmpq	-40(%rbp), %rax
 jmp .UNIQUE3758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3758: 
	jge	.L308
 jmp .UNIQUE3759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3759: 
	addq	$1, -32(%rbp)
.L308:
 jmp .UNIQUE3760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3760: 
	movq	last_unused_stack_memory(%rip), %rax
 jmp .UNIQUE3761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3761: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE3762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3762: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE3763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3763: 
	addq	%rcx, %rdx
 jmp .UNIQUE3764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3764: 
	imulq	-32(%rbp), %rdx
 jmp .UNIQUE3765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3765: 
	negq	%rdx
 jmp .UNIQUE3766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3766: 
	addq	%rdx, %rax
 jmp .UNIQUE3767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3767: 
	movq	%rax, last_unused_stack_memory(%rip)
 jmp .UNIQUE3768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3768: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3769: 
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
 jmp .UNIQUE3770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3770: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3771: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3772: 
	movq	%rdi, -40(%rbp)
 jmp .UNIQUE3773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3773: 
	movq	$5, -24(%rbp)
 jmp .UNIQUE3774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3774: 
	movq	$4, -16(%rbp)
 jmp .UNIQUE3775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3775: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3776: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3777: 
	movq	last_unused_stack_memory(%rip), %rax
 jmp .UNIQUE3778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3778: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE3779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3779: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE3780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3780: 
	addq	%rcx, %rdx
 jmp .UNIQUE3781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3781: 
	imulq	-8(%rbp), %rdx
 jmp .UNIQUE3782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3782: 
	negq	%rdx
 jmp .UNIQUE3783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3783: 
	addq	%rdx, %rax
 jmp .UNIQUE3784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3784: 
	movq	%rax, last_unused_stack_memory(%rip)
 jmp .UNIQUE3785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3785: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3786: 
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
 jmp .UNIQUE3787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3787: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3788: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3789: 
	pushq	%rbx
 jmp .UNIQUE3790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3790: 
	subq	$264, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE3791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3791: 
	movq	%rsi, -184(%rbp)
 jmp .UNIQUE3792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3792: 
	movq	%rdx, -176(%rbp)
 jmp .UNIQUE3793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3793: 
	movq	%rcx, -168(%rbp)
 jmp .UNIQUE3794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3794: 
	movq	%r8, -160(%rbp)
 jmp .UNIQUE3795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3795: 
	movq	%r9, -152(%rbp)
 jmp .UNIQUE3796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3796: 
	testb	%al, %al
 jmp .UNIQUE3797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3797: 
	je	.L311
 jmp .UNIQUE3798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3798: 
	movaps	%xmm0, -144(%rbp)
 jmp .UNIQUE3799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3799: 
	movaps	%xmm1, -128(%rbp)
 jmp .UNIQUE3800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3800: 
	movaps	%xmm2, -112(%rbp)
 jmp .UNIQUE3801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3801: 
	movaps	%xmm3, -96(%rbp)
 jmp .UNIQUE3802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3802: 
	movaps	%xmm4, -80(%rbp)
 jmp .UNIQUE3803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3803: 
	movaps	%xmm5, -64(%rbp)
 jmp .UNIQUE3804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3804: 
	movaps	%xmm6, -48(%rbp)
 jmp .UNIQUE3805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3805: 
	movaps	%xmm7, -32(%rbp)
.L311:
 jmp .UNIQUE3806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3806: 
	movl	%edi, -260(%rbp)
 jmp .UNIQUE3807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3807: 
	movq	$0, -248(%rbp)
 jmp .UNIQUE3808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3808: 
	movq	$-1, -240(%rbp)
 jmp .UNIQUE3809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3809: 
	movl	$8, -216(%rbp)
 jmp .UNIQUE3810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3810: 
	movl	$48, -212(%rbp)
 jmp .UNIQUE3811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3811: 
	leaq	16(%rbp), %rax
 jmp .UNIQUE3812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3812: 
	movq	%rax, -208(%rbp)
 jmp .UNIQUE3813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3813: 
	leaq	-192(%rbp), %rax
 jmp .UNIQUE3814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3814: 
	movq	%rax, -200(%rbp)
 jmp .UNIQUE3815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3815: 
	movl	$528, %edx
 jmp .UNIQUE3816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3816: 
	movl	$__func__.5673, %esi
 jmp .UNIQUE3817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3817: 
	movl	$24, %edi
 jmp .UNIQUE3818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3818: 
	call	error_checking_malloc
 jmp .UNIQUE3819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3819: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE3820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3820: 
	cmpl	$0, -260(%rbp)
 jmp .UNIQUE3821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3821: 
	je	.L312
 jmp .UNIQUE3822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3822: 
	movl	$531, %edx
 jmp .UNIQUE3823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3823: 
	movl	$__func__.5673, %esi
 jmp .UNIQUE3824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3824: 
	movl	$128, %edi
 jmp .UNIQUE3825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3825: 
	call	error_checking_malloc
 jmp .UNIQUE3826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3826: 
	movq	-232(%rbp), %rdx
 jmp .UNIQUE3827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3827: 
	movq	%rax, 16(%rdx)
 jmp .UNIQUE3828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3828: 
	jmp	.L313
.L312:
 jmp .UNIQUE3829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3829: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3830: 
	movq	$0, 16(%rax)
.L313:
 jmp .UNIQUE3831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3831: 
	cmpl	$0, -260(%rbp)
 jmp .UNIQUE3832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3832: 
	je	.L314
 jmp .UNIQUE3833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3833: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3834: 
	movq	16(%rax), %rcx
 jmp .UNIQUE3835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3835: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3836: 
	cmpl	$48, %eax
 jmp .UNIQUE3837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3837: 
	jnb	.L315
 jmp .UNIQUE3838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3838: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3839: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3840: 
	movl	%eax, %eax
 jmp .UNIQUE3841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3841: 
	addq	%rdx, %rax
 jmp .UNIQUE3842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3842: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3843: 
	addl	$8, %edx
 jmp .UNIQUE3844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3844: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3845: 
	jmp	.L316
.L315:
 jmp .UNIQUE3846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3846: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3847: 
	movq	%rdx, %rax
 jmp .UNIQUE3848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3848: 
	addq	$8, %rdx
 jmp .UNIQUE3849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3849: 
	movq	%rdx, -208(%rbp)
.L316:
 jmp .UNIQUE3850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3850: 
	movq	(%rax), %rax
 jmp .UNIQUE3851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3851: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3852: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3853: 
	movq	%rax, (%rcx)
 jmp .UNIQUE3854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3854: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE3855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3855: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3856: 
	addq	%rdx, %rax
 jmp .UNIQUE3857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3857: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE3858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3858: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE3859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3859: 
	je	.L317
 jmp .UNIQUE3860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3860: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3861: 
	movq	16(%rax), %rbx
 jmp .UNIQUE3862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3862: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3863: 
	movl	$543, %edx
 jmp .UNIQUE3864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3864: 
	movl	$__func__.5673, %esi
 jmp .UNIQUE3865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3865: 
	movq	%rax, %rdi
 jmp .UNIQUE3866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3866: 
	call	error_checking_malloc
 jmp .UNIQUE3867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3867: 
	movq	%rax, 8(%rbx)
 jmp .UNIQUE3868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3868: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE3869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3869: 
	jmp	.L318
.L321:
 jmp .UNIQUE3870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3870: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3871: 
	movq	16(%rax), %rax
 jmp .UNIQUE3872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3872: 
	movq	8(%rax), %rdx
 jmp .UNIQUE3873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3873: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE3874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3874: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE3875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3875: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3876: 
	cmpl	$48, %eax
 jmp .UNIQUE3877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3877: 
	jnb	.L319
 jmp .UNIQUE3878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3878: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3879: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3880: 
	movl	%eax, %eax
 jmp .UNIQUE3881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3881: 
	addq	%rdx, %rax
 jmp .UNIQUE3882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3882: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3883: 
	addl	$8, %edx
 jmp .UNIQUE3884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3884: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3885: 
	jmp	.L320
.L319:
 jmp .UNIQUE3886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3886: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3887: 
	movq	%rdx, %rax
 jmp .UNIQUE3888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3888: 
	addq	$8, %rdx
 jmp .UNIQUE3889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3889: 
	movq	%rdx, -208(%rbp)
.L320:
 jmp .UNIQUE3890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3890: 
	movl	(%rax), %eax
 jmp .UNIQUE3891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3891: 
	movb	%al, (%rcx)
 jmp .UNIQUE3892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3892: 
	addq	$1, -256(%rbp)
.L318:
 jmp .UNIQUE3893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3893: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE3894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3894: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3895: 
	jl	.L321
 jmp .UNIQUE3896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3896: 
	jmp	.L322
.L317:
 jmp .UNIQUE3897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3897: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3898: 
	movq	16(%rax), %rax
 jmp .UNIQUE3899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3899: 
	movq	$0, 8(%rax)
.L322:
 jmp .UNIQUE3900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3900: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3901: 
	movq	16(%rax), %rcx
 jmp .UNIQUE3902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3902: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3903: 
	cmpl	$48, %eax
 jmp .UNIQUE3904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3904: 
	jnb	.L323
 jmp .UNIQUE3905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3905: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3906: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3907: 
	movl	%eax, %eax
 jmp .UNIQUE3908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3908: 
	addq	%rdx, %rax
 jmp .UNIQUE3909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3909: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3910: 
	addl	$8, %edx
 jmp .UNIQUE3911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3911: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3912: 
	jmp	.L324
.L323:
 jmp .UNIQUE3913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3913: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3914: 
	movq	%rdx, %rax
 jmp .UNIQUE3915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3915: 
	addq	$8, %rdx
 jmp .UNIQUE3916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3916: 
	movq	%rdx, -208(%rbp)
.L324:
 jmp .UNIQUE3917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3917: 
	movq	(%rax), %rax
 jmp .UNIQUE3918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3918: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3919: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3920: 
	movq	%rax, 16(%rcx)
 jmp .UNIQUE3921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3921: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3922: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE3923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3923: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE3924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3924: 
	addq	%rdx, %rax
 jmp .UNIQUE3925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3925: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE3926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3926: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE3927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3927: 
	je	.L325
 jmp .UNIQUE3928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3928: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3929: 
	movq	16(%rax), %rbx
 jmp .UNIQUE3930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3930: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3931: 
	salq	$2, %rax
 jmp .UNIQUE3932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3932: 
	movl	$559, %edx
 jmp .UNIQUE3933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3933: 
	movl	$__func__.5673, %esi
 jmp .UNIQUE3934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3934: 
	movq	%rax, %rdi
 jmp .UNIQUE3935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3935: 
	call	error_checking_malloc
 jmp .UNIQUE3936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3936: 
	movq	%rax, 24(%rbx)
 jmp .UNIQUE3937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3937: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE3938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3938: 
	jmp	.L326
.L329:
 jmp .UNIQUE3939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3939: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3940: 
	movq	16(%rax), %rax
 jmp .UNIQUE3941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3941: 
	movq	24(%rax), %rax
 jmp .UNIQUE3942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3942: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE3943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3943: 
	salq	$2, %rdx
 jmp .UNIQUE3944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3944: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE3945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3945: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3946: 
	cmpl	$48, %eax
 jmp .UNIQUE3947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3947: 
	jnb	.L327
 jmp .UNIQUE3948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3948: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3949: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3950: 
	movl	%eax, %eax
 jmp .UNIQUE3951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3951: 
	addq	%rdx, %rax
 jmp .UNIQUE3952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3952: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3953: 
	addl	$8, %edx
 jmp .UNIQUE3954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3954: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3955: 
	jmp	.L328
.L327:
 jmp .UNIQUE3956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3956: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3957: 
	movq	%rdx, %rax
 jmp .UNIQUE3958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3958: 
	addq	$8, %rdx
 jmp .UNIQUE3959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3959: 
	movq	%rdx, -208(%rbp)
.L328:
 jmp .UNIQUE3960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3960: 
	movl	(%rax), %eax
 jmp .UNIQUE3961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3961: 
	movl	%eax, (%rcx)
 jmp .UNIQUE3962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3962: 
	addq	$1, -256(%rbp)
.L326:
 jmp .UNIQUE3963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3963: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE3964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3964: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3965: 
	jl	.L329
 jmp .UNIQUE3966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3966: 
	jmp	.L330
.L325:
 jmp .UNIQUE3967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3967: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3968: 
	movq	16(%rax), %rax
 jmp .UNIQUE3969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3969: 
	movq	$0, 24(%rax)
.L330:
 jmp .UNIQUE3970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3970: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3971: 
	movq	16(%rax), %rcx
 jmp .UNIQUE3972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3972: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3973: 
	cmpl	$48, %eax
 jmp .UNIQUE3974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3974: 
	jnb	.L331
 jmp .UNIQUE3975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3975: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3976: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3977: 
	movl	%eax, %eax
 jmp .UNIQUE3978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3978: 
	addq	%rdx, %rax
 jmp .UNIQUE3979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3979: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3980: 
	addl	$8, %edx
 jmp .UNIQUE3981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3981: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3982: 
	jmp	.L332
.L331:
 jmp .UNIQUE3983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3983: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3984: 
	movq	%rdx, %rax
 jmp .UNIQUE3985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3985: 
	addq	$8, %rdx
 jmp .UNIQUE3986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3986: 
	movq	%rdx, -208(%rbp)
.L332:
 jmp .UNIQUE3987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3987: 
	movq	(%rax), %rax
 jmp .UNIQUE3988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3988: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3989: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3990: 
	movq	%rax, 32(%rcx)
 jmp .UNIQUE3991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3991: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3992: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3993: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE3994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3994: 
	addq	%rdx, %rax
 jmp .UNIQUE3995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3995: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE3996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3996: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE3997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3997: 
	je	.L333
 jmp .UNIQUE3998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3998: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3999: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4000: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4001: 
	salq	$3, %rax
 jmp .UNIQUE4002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4002: 
	movl	$575, %edx
 jmp .UNIQUE4003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4003: 
	movl	$__func__.5673, %esi
 jmp .UNIQUE4004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4004: 
	movq	%rax, %rdi
 jmp .UNIQUE4005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4005: 
	call	error_checking_malloc
 jmp .UNIQUE4006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4006: 
	movq	%rax, 40(%rbx)
 jmp .UNIQUE4007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4007: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4008: 
	jmp	.L334
.L337:
 jmp .UNIQUE4009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4009: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4010: 
	movq	16(%rax), %rax
 jmp .UNIQUE4011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4011: 
	movq	40(%rax), %rax
 jmp .UNIQUE4012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4012: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4013: 
	salq	$3, %rdx
 jmp .UNIQUE4014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4014: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4015: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4016: 
	cmpl	$48, %eax
 jmp .UNIQUE4017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4017: 
	jnb	.L335
 jmp .UNIQUE4018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4018: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4019: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4020: 
	movl	%eax, %eax
 jmp .UNIQUE4021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4021: 
	addq	%rdx, %rax
 jmp .UNIQUE4022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4022: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4023: 
	addl	$8, %edx
 jmp .UNIQUE4024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4024: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4025: 
	jmp	.L336
.L335:
 jmp .UNIQUE4026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4026: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4027: 
	movq	%rdx, %rax
 jmp .UNIQUE4028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4028: 
	addq	$8, %rdx
 jmp .UNIQUE4029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4029: 
	movq	%rdx, -208(%rbp)
.L336:
 jmp .UNIQUE4030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4030: 
	movq	(%rax), %rax
 jmp .UNIQUE4031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4031: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4032: 
	addq	$1, -256(%rbp)
.L334:
 jmp .UNIQUE4033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4033: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4034: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4035: 
	jl	.L337
 jmp .UNIQUE4036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4036: 
	jmp	.L338
.L333:
 jmp .UNIQUE4037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4037: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4038: 
	movq	16(%rax), %rax
 jmp .UNIQUE4039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4039: 
	movq	$0, 40(%rax)
.L338:
 jmp .UNIQUE4040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4040: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4041: 
	movq	16(%rax), %rcx
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
	cmpl	$48, %eax
 jmp .UNIQUE4044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4044: 
	jnb	.L339
 jmp .UNIQUE4045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4045: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4046: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4047: 
	movl	%eax, %eax
 jmp .UNIQUE4048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4048: 
	addq	%rdx, %rax
 jmp .UNIQUE4049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4049: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4050: 
	addl	$8, %edx
 jmp .UNIQUE4051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4051: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4052: 
	jmp	.L340
.L339:
 jmp .UNIQUE4053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4053: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4054: 
	movq	%rdx, %rax
 jmp .UNIQUE4055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4055: 
	addq	$8, %rdx
 jmp .UNIQUE4056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4056: 
	movq	%rdx, -208(%rbp)
.L340:
 jmp .UNIQUE4057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4057: 
	movq	(%rax), %rax
 jmp .UNIQUE4058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4058: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4059: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4060: 
	movq	%rax, 48(%rcx)
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
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE4063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4063: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE4064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4064: 
	addq	%rdx, %rax
 jmp .UNIQUE4065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4065: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE4066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4066: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE4067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4067: 
	je	.L341
 jmp .UNIQUE4068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4068: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4069: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4070: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4071: 
	salq	$2, %rax
 jmp .UNIQUE4072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4072: 
	movl	$591, %edx
 jmp .UNIQUE4073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4073: 
	movl	$__func__.5673, %esi
 jmp .UNIQUE4074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4074: 
	movq	%rax, %rdi
 jmp .UNIQUE4075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4075: 
	call	error_checking_malloc
 jmp .UNIQUE4076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4076: 
	movq	%rax, 56(%rbx)
 jmp .UNIQUE4077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4077: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4078: 
	jmp	.L342
.L345:
 jmp .UNIQUE4079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4079: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4080: 
	movq	16(%rax), %rax
 jmp .UNIQUE4081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4081: 
	movq	56(%rax), %rax
 jmp .UNIQUE4082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4082: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4083: 
	salq	$2, %rdx
 jmp .UNIQUE4084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4084: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4085: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4086: 
	cmpl	$176, %eax
 jmp .UNIQUE4087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4087: 
	jnb	.L343
 jmp .UNIQUE4088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4088: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4089: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4090: 
	movl	%eax, %eax
 jmp .UNIQUE4091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4091: 
	addq	%rdx, %rax
 jmp .UNIQUE4092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4092: 
	movl	-212(%rbp), %edx
 jmp .UNIQUE4093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4093: 
	addl	$16, %edx
 jmp .UNIQUE4094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4094: 
	movl	%edx, -212(%rbp)
 jmp .UNIQUE4095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4095: 
	jmp	.L344
.L343:
 jmp .UNIQUE4096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4096: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4097: 
	movq	%rdx, %rax
 jmp .UNIQUE4098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4098: 
	addq	$8, %rdx
 jmp .UNIQUE4099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4099: 
	movq	%rdx, -208(%rbp)
.L344:
 jmp .UNIQUE4100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4100: 
	movsd	(%rax), %xmm0
 jmp .UNIQUE4101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4101: 
	unpcklpd	%xmm0, %xmm0
 jmp .UNIQUE4102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4102: 
	cvtpd2ps	%xmm0, %xmm0
 jmp .UNIQUE4103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4103: 
	movss	%xmm0, (%rcx)
 jmp .UNIQUE4104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4104: 
	addq	$1, -256(%rbp)
.L342:
 jmp .UNIQUE4105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4105: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4106: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4107: 
	jl	.L345
 jmp .UNIQUE4108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4108: 
	jmp	.L346
.L341:
 jmp .UNIQUE4109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4109: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4110: 
	movq	16(%rax), %rax
 jmp .UNIQUE4111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4111: 
	movq	$0, 56(%rax)
.L346:
 jmp .UNIQUE4112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4112: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4113: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4114: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4115: 
	cmpl	$48, %eax
 jmp .UNIQUE4116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4116: 
	jnb	.L347
 jmp .UNIQUE4117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4117: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4118: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4119: 
	movl	%eax, %eax
 jmp .UNIQUE4120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4120: 
	addq	%rdx, %rax
 jmp .UNIQUE4121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4121: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4122: 
	addl	$8, %edx
 jmp .UNIQUE4123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4123: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4124: 
	jmp	.L348
.L347:
 jmp .UNIQUE4125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4125: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4126: 
	movq	%rdx, %rax
 jmp .UNIQUE4127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4127: 
	addq	$8, %rdx
 jmp .UNIQUE4128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4128: 
	movq	%rdx, -208(%rbp)
.L348:
 jmp .UNIQUE4129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4129: 
	movq	(%rax), %rax
 jmp .UNIQUE4130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4130: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4131: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4132: 
	movq	%rax, 64(%rcx)
 jmp .UNIQUE4133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4133: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4134: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4135: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE4136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4136: 
	addq	%rdx, %rax
 jmp .UNIQUE4137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4137: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE4138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4138: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE4139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4139: 
	je	.L349
 jmp .UNIQUE4140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4140: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4141: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4142: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4143: 
	salq	$3, %rax
 jmp .UNIQUE4144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4144: 
	movl	$607, %edx
 jmp .UNIQUE4145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4145: 
	movl	$__func__.5673, %esi
 jmp .UNIQUE4146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4146: 
	movq	%rax, %rdi
 jmp .UNIQUE4147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4147: 
	call	error_checking_malloc
 jmp .UNIQUE4148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4148: 
	movq	%rax, 72(%rbx)
 jmp .UNIQUE4149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4149: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4150: 
	jmp	.L350
.L353:
 jmp .UNIQUE4151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4151: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4152: 
	movq	16(%rax), %rax
 jmp .UNIQUE4153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4153: 
	movq	72(%rax), %rax
 jmp .UNIQUE4154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4154: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4155: 
	salq	$3, %rdx
 jmp .UNIQUE4156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4156: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4157: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4158: 
	cmpl	$176, %eax
 jmp .UNIQUE4159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4159: 
	jnb	.L351
 jmp .UNIQUE4160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4160: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4161: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4162: 
	movl	%eax, %eax
 jmp .UNIQUE4163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4163: 
	addq	%rdx, %rax
 jmp .UNIQUE4164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4164: 
	movl	-212(%rbp), %edx
 jmp .UNIQUE4165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4165: 
	addl	$16, %edx
 jmp .UNIQUE4166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4166: 
	movl	%edx, -212(%rbp)
 jmp .UNIQUE4167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4167: 
	jmp	.L352
.L351:
 jmp .UNIQUE4168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4168: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4169: 
	movq	%rdx, %rax
 jmp .UNIQUE4170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4170: 
	addq	$8, %rdx
 jmp .UNIQUE4171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4171: 
	movq	%rdx, -208(%rbp)
.L352:
 jmp .UNIQUE4172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4172: 
	movq	(%rax), %rax
 jmp .UNIQUE4173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4173: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4174: 
	addq	$1, -256(%rbp)
.L350:
 jmp .UNIQUE4175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4175: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4176: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4177: 
	jl	.L353
 jmp .UNIQUE4178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4178: 
	jmp	.L354
.L349:
 jmp .UNIQUE4179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4179: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4180: 
	movq	16(%rax), %rax
 jmp .UNIQUE4181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4181: 
	movq	$0, 72(%rax)
.L354:
 jmp .UNIQUE4182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4182: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4183: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4184: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4185: 
	cmpl	$48, %eax
 jmp .UNIQUE4186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4186: 
	jnb	.L355
 jmp .UNIQUE4187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4187: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4188: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4189: 
	movl	%eax, %eax
 jmp .UNIQUE4190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4190: 
	addq	%rdx, %rax
 jmp .UNIQUE4191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4191: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4192: 
	addl	$8, %edx
 jmp .UNIQUE4193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4193: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4194: 
	jmp	.L356
.L355:
 jmp .UNIQUE4195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4195: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4196: 
	movq	%rdx, %rax
 jmp .UNIQUE4197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4197: 
	addq	$8, %rdx
 jmp .UNIQUE4198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4198: 
	movq	%rdx, -208(%rbp)
.L356:
 jmp .UNIQUE4199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4199: 
	movq	(%rax), %rax
 jmp .UNIQUE4200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4200: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4201: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4202: 
	movq	%rax, 80(%rcx)
 jmp .UNIQUE4203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4203: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4204: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4205: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE4206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4206: 
	addq	%rdx, %rax
 jmp .UNIQUE4207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4207: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE4208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4208: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE4209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4209: 
	je	.L357
 jmp .UNIQUE4210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4210: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4211: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4212: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4213: 
	salq	$3, %rax
 jmp .UNIQUE4214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4214: 
	movl	$624, %edx
 jmp .UNIQUE4215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4215: 
	movl	$__func__.5673, %esi
 jmp .UNIQUE4216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4216: 
	movq	%rax, %rdi
 jmp .UNIQUE4217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4217: 
	call	error_checking_malloc
 jmp .UNIQUE4218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4218: 
	movq	%rax, 88(%rbx)
 jmp .UNIQUE4219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4219: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4220: 
	jmp	.L358
.L361:
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
	movq	16(%rax), %rax
 jmp .UNIQUE4223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4223: 
	movq	88(%rax), %rax
 jmp .UNIQUE4224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4224: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4225: 
	salq	$3, %rdx
 jmp .UNIQUE4226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4226: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4227: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4228: 
	cmpl	$48, %eax
 jmp .UNIQUE4229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4229: 
	jnb	.L359
 jmp .UNIQUE4230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4230: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4231: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4232: 
	movl	%eax, %eax
 jmp .UNIQUE4233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4233: 
	addq	%rdx, %rax
 jmp .UNIQUE4234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4234: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4235: 
	addl	$8, %edx
 jmp .UNIQUE4236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4236: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4237: 
	jmp	.L360
.L359:
 jmp .UNIQUE4238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4238: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4239: 
	movq	%rdx, %rax
 jmp .UNIQUE4240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4240: 
	addq	$8, %rdx
 jmp .UNIQUE4241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4241: 
	movq	%rdx, -208(%rbp)
.L360:
 jmp .UNIQUE4242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4242: 
	movq	(%rax), %rax
 jmp .UNIQUE4243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4243: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4244: 
	addq	$1, -256(%rbp)
.L358:
 jmp .UNIQUE4245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4245: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4246: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4247: 
	jl	.L361
 jmp .UNIQUE4248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4248: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4249: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4250: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4251: 
	salq	$3, %rax
 jmp .UNIQUE4252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4252: 
	movl	$629, %edx
 jmp .UNIQUE4253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4253: 
	movl	$__func__.5673, %esi
 jmp .UNIQUE4254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4254: 
	movq	%rax, %rdi
 jmp .UNIQUE4255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4255: 
	call	error_checking_malloc
 jmp .UNIQUE4256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4256: 
	movq	%rax, 96(%rbx)
 jmp .UNIQUE4257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4257: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4258: 
	jmp	.L362
.L365:
 jmp .UNIQUE4259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4259: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4260: 
	movq	16(%rax), %rax
 jmp .UNIQUE4261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4261: 
	movq	96(%rax), %rax
 jmp .UNIQUE4262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4262: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4263: 
	salq	$3, %rdx
 jmp .UNIQUE4264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4264: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4265: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4266: 
	cmpl	$48, %eax
 jmp .UNIQUE4267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4267: 
	jnb	.L363
 jmp .UNIQUE4268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4268: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4269: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4270: 
	movl	%eax, %eax
 jmp .UNIQUE4271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4271: 
	addq	%rdx, %rax
 jmp .UNIQUE4272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4272: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4273: 
	addl	$8, %edx
 jmp .UNIQUE4274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4274: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4275: 
	jmp	.L364
.L363:
 jmp .UNIQUE4276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4276: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4277: 
	movq	%rdx, %rax
 jmp .UNIQUE4278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4278: 
	addq	$8, %rdx
 jmp .UNIQUE4279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4279: 
	movq	%rdx, -208(%rbp)
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
	movq	(%rax), %rax
 jmp .UNIQUE4281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4281: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4282: 
	addq	$1, -256(%rbp)
.L362:
 jmp .UNIQUE4283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4283: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4284: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4285: 
	jl	.L365
 jmp .UNIQUE4286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4286: 
	jmp	.L366
.L357:
 jmp .UNIQUE4287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4287: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4288: 
	movq	16(%rax), %rax
 jmp .UNIQUE4289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4289: 
	movq	$0, 88(%rax)
 jmp .UNIQUE4290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4290: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4291: 
	movq	16(%rax), %rax
 jmp .UNIQUE4292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4292: 
	movq	$0, 96(%rax)
.L366:
 jmp .UNIQUE4293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4293: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4294: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4295: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4296: 
	cmpl	$48, %eax
 jmp .UNIQUE4297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4297: 
	jnb	.L367
 jmp .UNIQUE4298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4298: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4299: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4300: 
	movl	%eax, %eax
 jmp .UNIQUE4301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4301: 
	addq	%rdx, %rax
 jmp .UNIQUE4302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4302: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4303: 
	addl	$8, %edx
 jmp .UNIQUE4304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4304: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4305: 
	jmp	.L368
.L367:
 jmp .UNIQUE4306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4306: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4307: 
	movq	%rdx, %rax
 jmp .UNIQUE4308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4308: 
	addq	$8, %rdx
 jmp .UNIQUE4309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4309: 
	movq	%rdx, -208(%rbp)
.L368:
 jmp .UNIQUE4310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4310: 
	movq	(%rax), %rax
 jmp .UNIQUE4311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4311: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4312: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4313: 
	movq	%rax, 104(%rcx)
 jmp .UNIQUE4314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4314: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE4315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4315: 
	je	.L369
 jmp .UNIQUE4316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4316: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4317: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4318: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4319: 
	salq	$3, %rax
 jmp .UNIQUE4320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4320: 
	movl	$646, %edx
 jmp .UNIQUE4321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4321: 
	movl	$__func__.5673, %esi
 jmp .UNIQUE4322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4322: 
	movq	%rax, %rdi
 jmp .UNIQUE4323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4323: 
	call	error_checking_malloc
 jmp .UNIQUE4324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4324: 
	movq	%rax, 112(%rbx)
 jmp .UNIQUE4325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4325: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4326: 
	jmp	.L370
.L373:
 jmp .UNIQUE4327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4327: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4328: 
	movq	16(%rax), %rax
 jmp .UNIQUE4329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4329: 
	movq	112(%rax), %rax
 jmp .UNIQUE4330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4330: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4331: 
	salq	$3, %rdx
 jmp .UNIQUE4332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4332: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4333: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4334: 
	cmpl	$48, %eax
 jmp .UNIQUE4335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4335: 
	jnb	.L371
 jmp .UNIQUE4336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4336: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4337: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4338: 
	movl	%eax, %eax
 jmp .UNIQUE4339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4339: 
	addq	%rdx, %rax
 jmp .UNIQUE4340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4340: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4341: 
	addl	$8, %edx
 jmp .UNIQUE4342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4342: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4343: 
	jmp	.L372
.L371:
 jmp .UNIQUE4344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4344: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4345: 
	movq	%rdx, %rax
 jmp .UNIQUE4346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4346: 
	addq	$8, %rdx
 jmp .UNIQUE4347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4347: 
	movq	%rdx, -208(%rbp)
.L372:
 jmp .UNIQUE4348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4348: 
	movq	(%rax), %rax
 jmp .UNIQUE4349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4349: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4350: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4351: 
	movq	16(%rax), %rax
 jmp .UNIQUE4352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4352: 
	movq	112(%rax), %rax
 jmp .UNIQUE4353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4353: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4354: 
	salq	$3, %rdx
 jmp .UNIQUE4355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4355: 
	addq	%rdx, %rax
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
	addq	%rax, -248(%rbp)
 jmp .UNIQUE4358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4358: 
	addq	$1, -256(%rbp)
.L370:
 jmp .UNIQUE4359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4359: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4360: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4361: 
	jl	.L373
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
	movq	16(%rax), %rbx
 jmp .UNIQUE4364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4364: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4365: 
	salq	$3, %rax
 jmp .UNIQUE4366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4366: 
	movl	$653, %edx
 jmp .UNIQUE4367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4367: 
	movl	$__func__.5673, %esi
 jmp .UNIQUE4368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4368: 
	movq	%rax, %rdi
 jmp .UNIQUE4369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4369: 
	call	error_checking_malloc
 jmp .UNIQUE4370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4370: 
	movq	%rax, 120(%rbx)
 jmp .UNIQUE4371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4371: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4372: 
	jmp	.L374
.L377:
 jmp .UNIQUE4373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4373: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4374: 
	movq	16(%rax), %rax
 jmp .UNIQUE4375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4375: 
	movq	120(%rax), %rax
 jmp .UNIQUE4376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4376: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4377: 
	salq	$3, %rdx
 jmp .UNIQUE4378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4378: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4379: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4380: 
	cmpl	$48, %eax
 jmp .UNIQUE4381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4381: 
	jnb	.L375
 jmp .UNIQUE4382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4382: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4383: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4384: 
	movl	%eax, %eax
 jmp .UNIQUE4385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4385: 
	addq	%rdx, %rax
 jmp .UNIQUE4386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4386: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4387: 
	addl	$8, %edx
 jmp .UNIQUE4388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4388: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4389: 
	jmp	.L376
.L375:
 jmp .UNIQUE4390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4390: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4391: 
	movq	%rdx, %rax
 jmp .UNIQUE4392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4392: 
	addq	$8, %rdx
 jmp .UNIQUE4393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4393: 
	movq	%rdx, -208(%rbp)
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
	movq	(%rax), %rax
 jmp .UNIQUE4395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4395: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4396: 
	addq	$1, -256(%rbp)
.L374:
 jmp .UNIQUE4397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4397: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4398: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4399: 
	jl	.L377
 jmp .UNIQUE4400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4400: 
	jmp	.L314
.L369:
 jmp .UNIQUE4401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4401: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4402: 
	movq	16(%rax), %rax
 jmp .UNIQUE4403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4403: 
	movq	$0, 112(%rax)
 jmp .UNIQUE4404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4404: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4405: 
	movq	16(%rax), %rax
 jmp .UNIQUE4406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4406: 
	movq	$0, 120(%rax)
.L314:
 jmp .UNIQUE4407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4407: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4408: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE4409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4409: 
	movq	%rdx, (%rax)
 jmp .UNIQUE4410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4410: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4411: 
	movq	-240(%rbp), %rdx
 jmp .UNIQUE4412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4412: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE4413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4413: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4414: 
	addq	$264, %rsp
 jmp .UNIQUE4415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4415: 
	popq	%rbx
 jmp .UNIQUE4416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4416: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE4417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4417: 
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
 jmp .UNIQUE4418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4418: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE4419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4419: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE4420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4420: 
	pushq	%rbx
 jmp .UNIQUE4421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4421: 
	subq	$280, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE4422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4422: 
	movq	%rsi, -184(%rbp)
 jmp .UNIQUE4423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4423: 
	movq	%rdx, -176(%rbp)
 jmp .UNIQUE4424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4424: 
	movq	%rcx, -168(%rbp)
 jmp .UNIQUE4425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4425: 
	movq	%r8, -160(%rbp)
 jmp .UNIQUE4426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4426: 
	movq	%r9, -152(%rbp)
 jmp .UNIQUE4427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4427: 
	testb	%al, %al
 jmp .UNIQUE4428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4428: 
	je	.L380
 jmp .UNIQUE4429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4429: 
	movaps	%xmm0, -144(%rbp)
 jmp .UNIQUE4430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4430: 
	movaps	%xmm1, -128(%rbp)
 jmp .UNIQUE4431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4431: 
	movaps	%xmm2, -112(%rbp)
 jmp .UNIQUE4432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4432: 
	movaps	%xmm3, -96(%rbp)
 jmp .UNIQUE4433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4433: 
	movaps	%xmm4, -80(%rbp)
 jmp .UNIQUE4434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4434: 
	movaps	%xmm5, -64(%rbp)
 jmp .UNIQUE4435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4435: 
	movaps	%xmm6, -48(%rbp)
 jmp .UNIQUE4436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4436: 
	movaps	%xmm7, -32(%rbp)
.L380:
 jmp .UNIQUE4437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4437: 
	movl	%edi, -276(%rbp)
 jmp .UNIQUE4438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4438: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4439: 
	movq	$-1, -248(%rbp)
 jmp .UNIQUE4440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4440: 
	movl	$8, -216(%rbp)
 jmp .UNIQUE4441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4441: 
	movl	$48, -212(%rbp)
 jmp .UNIQUE4442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4442: 
	leaq	16(%rbp), %rax
 jmp .UNIQUE4443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4443: 
	movq	%rax, -208(%rbp)
 jmp .UNIQUE4444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4444: 
	leaq	-192(%rbp), %rax
 jmp .UNIQUE4445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4445: 
	movq	%rax, -200(%rbp)
 jmp .UNIQUE4446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4446: 
	movl	$709, %edx
 jmp .UNIQUE4447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4447: 
	movl	$__func__.5711, %esi
 jmp .UNIQUE4448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4448: 
	movl	$24, %edi
 jmp .UNIQUE4449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4449: 
	call	error_checking_malloc
 jmp .UNIQUE4450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4450: 
	movq	%rax, -240(%rbp)
 jmp .UNIQUE4451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4451: 
	cmpl	$0, -276(%rbp)
 jmp .UNIQUE4452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4452: 
	je	.L381
 jmp .UNIQUE4453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4453: 
	movl	$712, %edx
 jmp .UNIQUE4454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4454: 
	movl	$__func__.5711, %esi
 jmp .UNIQUE4455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4455: 
	movl	$128, %edi
 jmp .UNIQUE4456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4456: 
	call	error_checking_malloc
 jmp .UNIQUE4457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4457: 
	movq	-240(%rbp), %rdx
 jmp .UNIQUE4458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4458: 
	movq	%rax, 16(%rdx)
 jmp .UNIQUE4459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4459: 
	jmp	.L382
.L381:
 jmp .UNIQUE4460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4460: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4461: 
	movq	$0, 16(%rax)
.L382:
 jmp .UNIQUE4462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4462: 
	cmpl	$0, -276(%rbp)
 jmp .UNIQUE4463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4463: 
	je	.L383
 jmp .UNIQUE4464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4464: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4465: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4466: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4467: 
	cmpl	$48, %eax
 jmp .UNIQUE4468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4468: 
	jnb	.L384
 jmp .UNIQUE4469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4469: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4470: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4471: 
	movl	%eax, %eax
 jmp .UNIQUE4472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4472: 
	addq	%rdx, %rax
 jmp .UNIQUE4473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4473: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4474: 
	addl	$8, %edx
 jmp .UNIQUE4475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4475: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4476: 
	jmp	.L385
.L384:
 jmp .UNIQUE4477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4477: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4478: 
	movq	%rdx, %rax
 jmp .UNIQUE4479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4479: 
	addq	$8, %rdx
 jmp .UNIQUE4480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4480: 
	movq	%rdx, -208(%rbp)
.L385:
 jmp .UNIQUE4481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4481: 
	movq	(%rax), %rax
 jmp .UNIQUE4482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4482: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4483: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4484: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4485: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4486: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4487: 
	addq	%rdx, %rax
 jmp .UNIQUE4488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4488: 
	movq	%rax, -256(%rbp)
 jmp .UNIQUE4489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4489: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4490: 
	je	.L386
 jmp .UNIQUE4491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4491: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4492: 
	cmpl	$48, %eax
 jmp .UNIQUE4493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4493: 
	jnb	.L387
 jmp .UNIQUE4494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4494: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4495: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4496: 
	movl	%eax, %eax
 jmp .UNIQUE4497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4497: 
	addq	%rdx, %rax
 jmp .UNIQUE4498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4498: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4499: 
	addl	$8, %edx
 jmp .UNIQUE4500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4500: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4501: 
	jmp	.L388
.L387:
 jmp .UNIQUE4502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4502: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4503: 
	movq	%rdx, %rax
 jmp .UNIQUE4504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4504: 
	addq	$8, %rdx
 jmp .UNIQUE4505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4505: 
	movq	%rdx, -208(%rbp)
.L388:
 jmp .UNIQUE4506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4506: 
	movq	(%rax), %rax
 jmp .UNIQUE4507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4507: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4508: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4509: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4510: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4511: 
	movl	$725, %edx
 jmp .UNIQUE4512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4512: 
	movl	$__func__.5711, %esi
 jmp .UNIQUE4513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4513: 
	movq	%rax, %rdi
 jmp .UNIQUE4514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4514: 
	call	error_checking_malloc
 jmp .UNIQUE4515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4515: 
	movq	%rax, 8(%rbx)
 jmp .UNIQUE4516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4516: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4517: 
	jmp	.L389
.L392:
 jmp .UNIQUE4518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4518: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4519: 
	movq	16(%rax), %rax
 jmp .UNIQUE4520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4520: 
	movq	8(%rax), %rdx
 jmp .UNIQUE4521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4521: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4522: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE4523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4523: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4524: 
	cmpl	$48, %eax
 jmp .UNIQUE4525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4525: 
	jnb	.L390
 jmp .UNIQUE4526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4526: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4527: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4528: 
	movl	%eax, %eax
 jmp .UNIQUE4529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4529: 
	addq	%rdx, %rax
 jmp .UNIQUE4530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4530: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4531: 
	addl	$8, %edx
 jmp .UNIQUE4532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4532: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4533: 
	jmp	.L391
.L390:
 jmp .UNIQUE4534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4534: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4535: 
	movq	%rdx, %rax
 jmp .UNIQUE4536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4536: 
	addq	$8, %rdx
 jmp .UNIQUE4537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4537: 
	movq	%rdx, -208(%rbp)
.L391:
 jmp .UNIQUE4538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4538: 
	movl	(%rax), %eax
 jmp .UNIQUE4539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4539: 
	movb	%al, (%rcx)
 jmp .UNIQUE4540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4540: 
	addq	$1, -264(%rbp)
.L389:
 jmp .UNIQUE4541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4541: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4542: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4543: 
	jl	.L392
 jmp .UNIQUE4544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4544: 
	jmp	.L393
.L386:
 jmp .UNIQUE4545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4545: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4546: 
	movq	16(%rax), %rax
 jmp .UNIQUE4547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4547: 
	movq	$0, 8(%rax)
.L393:
 jmp .UNIQUE4548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4548: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4549: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4550: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4551: 
	cmpl	$48, %eax
 jmp .UNIQUE4552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4552: 
	jnb	.L394
 jmp .UNIQUE4553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4553: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4554: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4555: 
	movl	%eax, %eax
 jmp .UNIQUE4556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4556: 
	addq	%rdx, %rax
 jmp .UNIQUE4557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4557: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4558: 
	addl	$8, %edx
 jmp .UNIQUE4559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4559: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4560: 
	jmp	.L395
.L394:
 jmp .UNIQUE4561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4561: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4562: 
	movq	%rdx, %rax
 jmp .UNIQUE4563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4563: 
	addq	$8, %rdx
 jmp .UNIQUE4564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4564: 
	movq	%rdx, -208(%rbp)
.L395:
 jmp .UNIQUE4565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4565: 
	movq	(%rax), %rax
 jmp .UNIQUE4566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4566: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4567: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4568: 
	movq	%rax, 16(%rcx)
 jmp .UNIQUE4569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4569: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4570: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE4571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4571: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4572: 
	addq	%rdx, %rax
 jmp .UNIQUE4573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4573: 
	movq	%rax, -256(%rbp)
 jmp .UNIQUE4574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4574: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4575: 
	je	.L396
 jmp .UNIQUE4576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4576: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4577: 
	cmpl	$48, %eax
 jmp .UNIQUE4578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4578: 
	jnb	.L397
 jmp .UNIQUE4579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4579: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4580: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4581: 
	movl	%eax, %eax
 jmp .UNIQUE4582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4582: 
	addq	%rdx, %rax
 jmp .UNIQUE4583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4583: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4584: 
	addl	$8, %edx
 jmp .UNIQUE4585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4585: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4586: 
	jmp	.L398
.L397:
 jmp .UNIQUE4587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4587: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4588: 
	movq	%rdx, %rax
 jmp .UNIQUE4589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4589: 
	addq	$8, %rdx
 jmp .UNIQUE4590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4590: 
	movq	%rdx, -208(%rbp)
.L398:
 jmp .UNIQUE4591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4591: 
	movq	(%rax), %rax
 jmp .UNIQUE4592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4592: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4593: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4594: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4595: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4596: 
	salq	$2, %rax
 jmp .UNIQUE4597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4597: 
	movl	$742, %edx
 jmp .UNIQUE4598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4598: 
	movl	$__func__.5711, %esi
 jmp .UNIQUE4599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4599: 
	movq	%rax, %rdi
 jmp .UNIQUE4600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4600: 
	call	error_checking_malloc
 jmp .UNIQUE4601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4601: 
	movq	%rax, 24(%rbx)
 jmp .UNIQUE4602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4602: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4603: 
	jmp	.L399
.L402:
 jmp .UNIQUE4604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4604: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4605: 
	movq	16(%rax), %rax
 jmp .UNIQUE4606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4606: 
	movq	24(%rax), %rax
 jmp .UNIQUE4607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4607: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE4608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4608: 
	salq	$2, %rdx
 jmp .UNIQUE4609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4609: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4610: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4611: 
	cmpl	$48, %eax
 jmp .UNIQUE4612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4612: 
	jnb	.L400
 jmp .UNIQUE4613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4613: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4614: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4615: 
	movl	%eax, %eax
 jmp .UNIQUE4616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4616: 
	addq	%rdx, %rax
 jmp .UNIQUE4617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4617: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4618: 
	addl	$8, %edx
 jmp .UNIQUE4619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4619: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4620: 
	jmp	.L401
.L400:
 jmp .UNIQUE4621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4621: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4622: 
	movq	%rdx, %rax
 jmp .UNIQUE4623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4623: 
	addq	$8, %rdx
 jmp .UNIQUE4624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4624: 
	movq	%rdx, -208(%rbp)
.L401:
 jmp .UNIQUE4625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4625: 
	movl	(%rax), %eax
 jmp .UNIQUE4626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4626: 
	movl	%eax, (%rcx)
 jmp .UNIQUE4627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4627: 
	addq	$1, -264(%rbp)
.L399:
 jmp .UNIQUE4628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4628: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4629: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4630: 
	jl	.L402
 jmp .UNIQUE4631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4631: 
	jmp	.L403
.L396:
 jmp .UNIQUE4632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4632: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4633: 
	movq	16(%rax), %rax
 jmp .UNIQUE4634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4634: 
	movq	$0, 24(%rax)
.L403:
 jmp .UNIQUE4635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4635: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4636: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4637: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4638: 
	cmpl	$48, %eax
 jmp .UNIQUE4639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4639: 
	jnb	.L404
 jmp .UNIQUE4640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4640: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4641: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4642: 
	movl	%eax, %eax
 jmp .UNIQUE4643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4643: 
	addq	%rdx, %rax
 jmp .UNIQUE4644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4644: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4645: 
	addl	$8, %edx
 jmp .UNIQUE4646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4646: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4647: 
	jmp	.L405
.L404:
 jmp .UNIQUE4648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4648: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4649: 
	movq	%rdx, %rax
 jmp .UNIQUE4650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4650: 
	addq	$8, %rdx
 jmp .UNIQUE4651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4651: 
	movq	%rdx, -208(%rbp)
.L405:
 jmp .UNIQUE4652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4652: 
	movq	(%rax), %rax
 jmp .UNIQUE4653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4653: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4654: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4655: 
	movq	%rax, 32(%rcx)
 jmp .UNIQUE4656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4656: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4657: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4658: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4659: 
	addq	%rdx, %rax
 jmp .UNIQUE4660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4660: 
	movq	%rax, -256(%rbp)
 jmp .UNIQUE4661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4661: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4662: 
	je	.L406
 jmp .UNIQUE4663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4663: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4664: 
	cmpl	$48, %eax
 jmp .UNIQUE4665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4665: 
	jnb	.L407
 jmp .UNIQUE4666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4666: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4667: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4668: 
	movl	%eax, %eax
 jmp .UNIQUE4669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4669: 
	addq	%rdx, %rax
 jmp .UNIQUE4670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4670: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4671: 
	addl	$8, %edx
 jmp .UNIQUE4672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4672: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4673: 
	jmp	.L408
.L407:
 jmp .UNIQUE4674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4674: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4675: 
	movq	%rdx, %rax
 jmp .UNIQUE4676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4676: 
	addq	$8, %rdx
 jmp .UNIQUE4677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4677: 
	movq	%rdx, -208(%rbp)
.L408:
 jmp .UNIQUE4678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4678: 
	movq	(%rax), %rax
 jmp .UNIQUE4679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4679: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4680: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4681: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4682: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4683: 
	salq	$3, %rax
 jmp .UNIQUE4684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4684: 
	movl	$759, %edx
 jmp .UNIQUE4685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4685: 
	movl	$__func__.5711, %esi
 jmp .UNIQUE4686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4686: 
	movq	%rax, %rdi
 jmp .UNIQUE4687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4687: 
	call	error_checking_malloc
 jmp .UNIQUE4688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4688: 
	movq	%rax, 40(%rbx)
 jmp .UNIQUE4689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4689: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4690: 
	jmp	.L409
.L412:
 jmp .UNIQUE4691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4691: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4692: 
	movq	16(%rax), %rax
 jmp .UNIQUE4693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4693: 
	movq	40(%rax), %rax
 jmp .UNIQUE4694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4694: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE4695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4695: 
	salq	$3, %rdx
 jmp .UNIQUE4696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4696: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4697: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4698: 
	cmpl	$48, %eax
 jmp .UNIQUE4699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4699: 
	jnb	.L410
 jmp .UNIQUE4700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4700: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4701: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4702: 
	movl	%eax, %eax
 jmp .UNIQUE4703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4703: 
	addq	%rdx, %rax
 jmp .UNIQUE4704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4704: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4705: 
	addl	$8, %edx
 jmp .UNIQUE4706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4706: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4707: 
	jmp	.L411
.L410:
 jmp .UNIQUE4708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4708: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4709: 
	movq	%rdx, %rax
 jmp .UNIQUE4710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4710: 
	addq	$8, %rdx
 jmp .UNIQUE4711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4711: 
	movq	%rdx, -208(%rbp)
.L411:
 jmp .UNIQUE4712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4712: 
	movq	(%rax), %rax
 jmp .UNIQUE4713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4713: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4714: 
	addq	$1, -264(%rbp)
.L409:
 jmp .UNIQUE4715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4715: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4716: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4717: 
	jl	.L412
 jmp .UNIQUE4718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4718: 
	jmp	.L413
.L406:
 jmp .UNIQUE4719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4719: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4720: 
	movq	16(%rax), %rax
 jmp .UNIQUE4721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4721: 
	movq	$0, 40(%rax)
.L413:
 jmp .UNIQUE4722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4722: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4723: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4724: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4725: 
	cmpl	$48, %eax
 jmp .UNIQUE4726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4726: 
	jnb	.L414
 jmp .UNIQUE4727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4727: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4728: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4729: 
	movl	%eax, %eax
 jmp .UNIQUE4730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4730: 
	addq	%rdx, %rax
 jmp .UNIQUE4731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4731: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4732: 
	addl	$8, %edx
 jmp .UNIQUE4733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4733: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4734: 
	jmp	.L415
.L414:
 jmp .UNIQUE4735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4735: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4736: 
	movq	%rdx, %rax
 jmp .UNIQUE4737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4737: 
	addq	$8, %rdx
 jmp .UNIQUE4738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4738: 
	movq	%rdx, -208(%rbp)
.L415:
 jmp .UNIQUE4739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4739: 
	movq	(%rax), %rax
 jmp .UNIQUE4740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4740: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4741: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4742: 
	movq	%rax, 48(%rcx)
 jmp .UNIQUE4743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4743: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4744: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE4745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4745: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4746: 
	addq	%rdx, %rax
 jmp .UNIQUE4747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4747: 
	movq	%rax, -256(%rbp)
 jmp .UNIQUE4748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4748: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4749: 
	je	.L416
 jmp .UNIQUE4750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4750: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4751: 
	cmpl	$48, %eax
 jmp .UNIQUE4752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4752: 
	jnb	.L417
 jmp .UNIQUE4753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4753: 
	movq	-200(%rbp), %rdx
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
	movl	%eax, %eax
 jmp .UNIQUE4756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4756: 
	addq	%rdx, %rax
 jmp .UNIQUE4757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4757: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4758: 
	addl	$8, %edx
 jmp .UNIQUE4759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4759: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4760: 
	jmp	.L418
.L417:
 jmp .UNIQUE4761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4761: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4762: 
	movq	%rdx, %rax
 jmp .UNIQUE4763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4763: 
	addq	$8, %rdx
 jmp .UNIQUE4764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4764: 
	movq	%rdx, -208(%rbp)
.L418:
 jmp .UNIQUE4765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4765: 
	movq	(%rax), %rax
 jmp .UNIQUE4766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4766: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4767: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4768: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4769: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4770: 
	salq	$2, %rax
 jmp .UNIQUE4771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4771: 
	movl	$776, %edx
 jmp .UNIQUE4772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4772: 
	movl	$__func__.5711, %esi
 jmp .UNIQUE4773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4773: 
	movq	%rax, %rdi
 jmp .UNIQUE4774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4774: 
	call	error_checking_malloc
 jmp .UNIQUE4775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4775: 
	movq	%rax, 56(%rbx)
 jmp .UNIQUE4776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4776: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4777: 
	jmp	.L419
.L422:
 jmp .UNIQUE4778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4778: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4779: 
	movq	16(%rax), %rax
 jmp .UNIQUE4780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4780: 
	movq	56(%rax), %rax
 jmp .UNIQUE4781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4781: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE4782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4782: 
	salq	$2, %rdx
 jmp .UNIQUE4783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4783: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4784: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4785: 
	cmpl	$176, %eax
 jmp .UNIQUE4786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4786: 
	jnb	.L420
 jmp .UNIQUE4787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4787: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4788: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4789: 
	movl	%eax, %eax
 jmp .UNIQUE4790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4790: 
	addq	%rdx, %rax
 jmp .UNIQUE4791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4791: 
	movl	-212(%rbp), %edx
 jmp .UNIQUE4792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4792: 
	addl	$16, %edx
 jmp .UNIQUE4793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4793: 
	movl	%edx, -212(%rbp)
 jmp .UNIQUE4794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4794: 
	jmp	.L421
.L420:
 jmp .UNIQUE4795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4795: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4796: 
	movq	%rdx, %rax
 jmp .UNIQUE4797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4797: 
	addq	$8, %rdx
 jmp .UNIQUE4798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4798: 
	movq	%rdx, -208(%rbp)
.L421:
 jmp .UNIQUE4799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4799: 
	movsd	(%rax), %xmm0
 jmp .UNIQUE4800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4800: 
	unpcklpd	%xmm0, %xmm0
 jmp .UNIQUE4801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4801: 
	cvtpd2ps	%xmm0, %xmm0
 jmp .UNIQUE4802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4802: 
	movss	%xmm0, (%rcx)
 jmp .UNIQUE4803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4803: 
	addq	$1, -264(%rbp)
.L419:
 jmp .UNIQUE4804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4804: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4805: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4806: 
	jl	.L422
 jmp .UNIQUE4807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4807: 
	jmp	.L423
.L416:
 jmp .UNIQUE4808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4808: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4809: 
	movq	16(%rax), %rax
 jmp .UNIQUE4810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4810: 
	movq	$0, 56(%rax)
.L423:
 jmp .UNIQUE4811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4811: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4812: 
	movq	16(%rax), %rcx
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
	cmpl	$48, %eax
 jmp .UNIQUE4815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4815: 
	jnb	.L424
 jmp .UNIQUE4816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4816: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4817: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4818: 
	movl	%eax, %eax
 jmp .UNIQUE4819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4819: 
	addq	%rdx, %rax
 jmp .UNIQUE4820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4820: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4821: 
	addl	$8, %edx
 jmp .UNIQUE4822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4822: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4823: 
	jmp	.L425
.L424:
 jmp .UNIQUE4824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4824: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4825: 
	movq	%rdx, %rax
 jmp .UNIQUE4826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4826: 
	addq	$8, %rdx
 jmp .UNIQUE4827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4827: 
	movq	%rdx, -208(%rbp)
.L425:
 jmp .UNIQUE4828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4828: 
	movq	(%rax), %rax
 jmp .UNIQUE4829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4829: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4830: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4831: 
	movq	%rax, 64(%rcx)
 jmp .UNIQUE4832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4832: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4833: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4834: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4835: 
	addq	%rdx, %rax
 jmp .UNIQUE4836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4836: 
	movq	%rax, -256(%rbp)
 jmp .UNIQUE4837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4837: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4838: 
	je	.L426
 jmp .UNIQUE4839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4839: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4840: 
	cmpl	$48, %eax
 jmp .UNIQUE4841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4841: 
	jnb	.L427
 jmp .UNIQUE4842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4842: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4843: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4844: 
	movl	%eax, %eax
 jmp .UNIQUE4845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4845: 
	addq	%rdx, %rax
 jmp .UNIQUE4846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4846: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4847: 
	addl	$8, %edx
 jmp .UNIQUE4848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4848: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4849: 
	jmp	.L428
.L427:
 jmp .UNIQUE4850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4850: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4851: 
	movq	%rdx, %rax
 jmp .UNIQUE4852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4852: 
	addq	$8, %rdx
 jmp .UNIQUE4853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4853: 
	movq	%rdx, -208(%rbp)
.L428:
 jmp .UNIQUE4854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4854: 
	movq	(%rax), %rax
 jmp .UNIQUE4855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4855: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4856: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4857: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4858: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4859: 
	salq	$3, %rax
 jmp .UNIQUE4860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4860: 
	movl	$793, %edx
 jmp .UNIQUE4861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4861: 
	movl	$__func__.5711, %esi
 jmp .UNIQUE4862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4862: 
	movq	%rax, %rdi
 jmp .UNIQUE4863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4863: 
	call	error_checking_malloc
 jmp .UNIQUE4864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4864: 
	movq	%rax, 72(%rbx)
 jmp .UNIQUE4865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4865: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4866: 
	jmp	.L429
.L432:
 jmp .UNIQUE4867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4867: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4868: 
	movq	16(%rax), %rax
 jmp .UNIQUE4869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4869: 
	movq	72(%rax), %rax
 jmp .UNIQUE4870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4870: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE4871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4871: 
	salq	$3, %rdx
 jmp .UNIQUE4872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4872: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4873: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4874: 
	cmpl	$176, %eax
 jmp .UNIQUE4875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4875: 
	jnb	.L430
 jmp .UNIQUE4876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4876: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4877: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4878: 
	movl	%eax, %eax
 jmp .UNIQUE4879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4879: 
	addq	%rdx, %rax
 jmp .UNIQUE4880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4880: 
	movl	-212(%rbp), %edx
 jmp .UNIQUE4881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4881: 
	addl	$16, %edx
 jmp .UNIQUE4882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4882: 
	movl	%edx, -212(%rbp)
 jmp .UNIQUE4883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4883: 
	jmp	.L431
.L430:
 jmp .UNIQUE4884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4884: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4885: 
	movq	%rdx, %rax
 jmp .UNIQUE4886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4886: 
	addq	$8, %rdx
 jmp .UNIQUE4887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4887: 
	movq	%rdx, -208(%rbp)
.L431:
 jmp .UNIQUE4888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4888: 
	movq	(%rax), %rax
 jmp .UNIQUE4889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4889: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4890: 
	addq	$1, -264(%rbp)
.L429:
 jmp .UNIQUE4891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4891: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4892: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4893: 
	jl	.L432
 jmp .UNIQUE4894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4894: 
	jmp	.L433
.L426:
 jmp .UNIQUE4895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4895: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4896: 
	movq	16(%rax), %rax
 jmp .UNIQUE4897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4897: 
	movq	$0, 72(%rax)
.L433:
 jmp .UNIQUE4898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4898: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4899: 
	movq	16(%rax), %rcx
 jmp .UNIQUE4900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4900: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4901: 
	cmpl	$48, %eax
 jmp .UNIQUE4902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4902: 
	jnb	.L434
 jmp .UNIQUE4903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4903: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4904: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4905: 
	movl	%eax, %eax
 jmp .UNIQUE4906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4906: 
	addq	%rdx, %rax
 jmp .UNIQUE4907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4907: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4908: 
	addl	$8, %edx
 jmp .UNIQUE4909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4909: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4910: 
	jmp	.L435
.L434:
 jmp .UNIQUE4911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4911: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4912: 
	movq	%rdx, %rax
 jmp .UNIQUE4913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4913: 
	addq	$8, %rdx
 jmp .UNIQUE4914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4914: 
	movq	%rdx, -208(%rbp)
.L435:
 jmp .UNIQUE4915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4915: 
	movq	(%rax), %rax
 jmp .UNIQUE4916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4916: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4917: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4918: 
	movq	%rax, 80(%rcx)
 jmp .UNIQUE4919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4919: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4920: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4921: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4922: 
	addq	%rdx, %rax
 jmp .UNIQUE4923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4923: 
	movq	%rax, -256(%rbp)
 jmp .UNIQUE4924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4924: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4925: 
	je	.L436
 jmp .UNIQUE4926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4926: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4927: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4928: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4929: 
	salq	$3, %rax
 jmp .UNIQUE4930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4930: 
	movl	$809, %edx
 jmp .UNIQUE4931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4931: 
	movl	$__func__.5711, %esi
 jmp .UNIQUE4932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4932: 
	movq	%rax, %rdi
 jmp .UNIQUE4933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4933: 
	call	error_checking_malloc
 jmp .UNIQUE4934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4934: 
	movq	%rax, 88(%rbx)
 jmp .UNIQUE4935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4935: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4936: 
	jmp	.L437
.L440:
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
	movq	16(%rax), %rax
 jmp .UNIQUE4939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4939: 
	movq	88(%rax), %rax
 jmp .UNIQUE4940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4940: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE4941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4941: 
	salq	$3, %rdx
 jmp .UNIQUE4942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4942: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4943: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4944: 
	cmpl	$48, %eax
 jmp .UNIQUE4945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4945: 
	jnb	.L438
 jmp .UNIQUE4946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4946: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4947: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4948: 
	movl	%eax, %eax
 jmp .UNIQUE4949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4949: 
	addq	%rdx, %rax
 jmp .UNIQUE4950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4950: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4951: 
	addl	$8, %edx
 jmp .UNIQUE4952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4952: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4953: 
	jmp	.L439
.L438:
 jmp .UNIQUE4954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4954: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4955: 
	movq	%rdx, %rax
 jmp .UNIQUE4956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4956: 
	addq	$8, %rdx
 jmp .UNIQUE4957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4957: 
	movq	%rdx, -208(%rbp)
.L439:
 jmp .UNIQUE4958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4958: 
	movq	(%rax), %rax
 jmp .UNIQUE4959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4959: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4960: 
	addq	$1, -264(%rbp)
.L437:
 jmp .UNIQUE4961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4961: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE4962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4962: 
	cmpq	-232(%rbp), %rax
 jmp .UNIQUE4963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4963: 
	jl	.L440
 jmp .UNIQUE4964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4964: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4965: 
	cmpl	$48, %eax
 jmp .UNIQUE4966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4966: 
	jnb	.L441
 jmp .UNIQUE4967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4967: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4968: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4969: 
	movl	%eax, %eax
 jmp .UNIQUE4970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4970: 
	addq	%rdx, %rax
 jmp .UNIQUE4971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4971: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4972: 
	addl	$8, %edx
 jmp .UNIQUE4973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4973: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4974: 
	jmp	.L442
.L441:
 jmp .UNIQUE4975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4975: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4976: 
	movq	%rdx, %rax
 jmp .UNIQUE4977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4977: 
	addq	$8, %rdx
 jmp .UNIQUE4978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4978: 
	movq	%rdx, -208(%rbp)
.L442:
 jmp .UNIQUE4979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4979: 
	movq	(%rax), %rax
 jmp .UNIQUE4980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4980: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4981: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4982: 
	movq	16(%rax), %rbx
 jmp .UNIQUE4983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4983: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4984: 
	salq	$3, %rax
 jmp .UNIQUE4985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4985: 
	movl	$816, %edx
 jmp .UNIQUE4986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4986: 
	movl	$__func__.5711, %esi
 jmp .UNIQUE4987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4987: 
	movq	%rax, %rdi
 jmp .UNIQUE4988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4988: 
	call	error_checking_malloc
 jmp .UNIQUE4989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4989: 
	movq	%rax, 96(%rbx)
 jmp .UNIQUE4990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4990: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE4991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4991: 
	jmp	.L443
.L446:
 jmp .UNIQUE4992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4992: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4993: 
	movq	16(%rax), %rax
 jmp .UNIQUE4994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4994: 
	movq	96(%rax), %rax
 jmp .UNIQUE4995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4995: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE4996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4996: 
	salq	$3, %rdx
 jmp .UNIQUE4997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4997: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4998: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4999: 
	cmpl	$48, %eax
 jmp .UNIQUE5000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5000: 
	jnb	.L444
 jmp .UNIQUE5001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5001: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE5002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5002: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5003: 
	movl	%eax, %eax
 jmp .UNIQUE5004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5004: 
	addq	%rdx, %rax
 jmp .UNIQUE5005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5005: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE5006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5006: 
	addl	$8, %edx
 jmp .UNIQUE5007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5007: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE5008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5008: 
	jmp	.L445
.L444:
 jmp .UNIQUE5009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5009: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE5010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5010: 
	movq	%rdx, %rax
 jmp .UNIQUE5011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5011: 
	addq	$8, %rdx
 jmp .UNIQUE5012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5012: 
	movq	%rdx, -208(%rbp)
.L445:
 jmp .UNIQUE5013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5013: 
	movq	(%rax), %rax
 jmp .UNIQUE5014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5014: 
	movq	%rax, (%rcx)
 jmp .UNIQUE5015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5015: 
	addq	$1, -264(%rbp)
.L443:
 jmp .UNIQUE5016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5016: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE5017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5017: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE5018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5018: 
	jl	.L446
 jmp .UNIQUE5019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5019: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE5020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5020: 
	movq	%rax, -264(%rbp)
 jmp .UNIQUE5021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5021: 
	jmp	.L447
.L448:
 jmp .UNIQUE5022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5022: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5023: 
	movq	16(%rax), %rax
 jmp .UNIQUE5024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5024: 
	movq	96(%rax), %rax
 jmp .UNIQUE5025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5025: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE5026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5026: 
	salq	$3, %rdx
 jmp .UNIQUE5027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5027: 
	addq	%rdx, %rax
 jmp .UNIQUE5028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5028: 
	movq	$0, (%rax)
 jmp .UNIQUE5029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5029: 
	addq	$1, -264(%rbp)
.L447:
 jmp .UNIQUE5030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5030: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE5031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5031: 
	cmpq	-232(%rbp), %rax
 jmp .UNIQUE5032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5032: 
	jl	.L448
 jmp .UNIQUE5033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5033: 
	jmp	.L449
.L436:
 jmp .UNIQUE5034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5034: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5035: 
	movq	16(%rax), %rax
 jmp .UNIQUE5036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5036: 
	movq	$0, 88(%rax)
 jmp .UNIQUE5037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5037: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5038: 
	movq	16(%rax), %rax
 jmp .UNIQUE5039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5039: 
	movq	$0, 96(%rax)
.L449:
 jmp .UNIQUE5040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5040: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5041: 
	movq	16(%rax), %rcx
 jmp .UNIQUE5042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5042: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5043: 
	cmpl	$48, %eax
 jmp .UNIQUE5044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5044: 
	jnb	.L450
 jmp .UNIQUE5045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5045: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE5046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5046: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5047: 
	movl	%eax, %eax
 jmp .UNIQUE5048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5048: 
	addq	%rdx, %rax
 jmp .UNIQUE5049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5049: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE5050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5050: 
	addl	$8, %edx
 jmp .UNIQUE5051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5051: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE5052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5052: 
	jmp	.L451
.L450:
 jmp .UNIQUE5053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5053: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE5054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5054: 
	movq	%rdx, %rax
 jmp .UNIQUE5055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5055: 
	addq	$8, %rdx
 jmp .UNIQUE5056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5056: 
	movq	%rdx, -208(%rbp)
.L451:
 jmp .UNIQUE5057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5057: 
	movq	(%rax), %rax
 jmp .UNIQUE5058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5058: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE5059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5059: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE5060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5060: 
	movq	%rax, 104(%rcx)
 jmp .UNIQUE5061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5061: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE5062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5062: 
	je	.L452
 jmp .UNIQUE5063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5063: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5064: 
	movq	16(%rax), %rbx
 jmp .UNIQUE5065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5065: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE5066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5066: 
	salq	$3, %rax
 jmp .UNIQUE5067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5067: 
	movl	$837, %edx
 jmp .UNIQUE5068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5068: 
	movl	$__func__.5711, %esi
 jmp .UNIQUE5069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5069: 
	movq	%rax, %rdi
 jmp .UNIQUE5070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5070: 
	call	error_checking_malloc
 jmp .UNIQUE5071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5071: 
	movq	%rax, 112(%rbx)
 jmp .UNIQUE5072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5072: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE5073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5073: 
	jmp	.L453
.L456:
 jmp .UNIQUE5074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5074: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5075: 
	movq	16(%rax), %rax
 jmp .UNIQUE5076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5076: 
	movq	112(%rax), %rax
 jmp .UNIQUE5077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5077: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE5078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5078: 
	salq	$3, %rdx
 jmp .UNIQUE5079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5079: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE5080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5080: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5081: 
	cmpl	$48, %eax
 jmp .UNIQUE5082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5082: 
	jnb	.L454
 jmp .UNIQUE5083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5083: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE5084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5084: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5085: 
	movl	%eax, %eax
 jmp .UNIQUE5086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5086: 
	addq	%rdx, %rax
 jmp .UNIQUE5087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5087: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE5088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5088: 
	addl	$8, %edx
 jmp .UNIQUE5089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5089: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE5090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5090: 
	jmp	.L455
.L454:
 jmp .UNIQUE5091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5091: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE5092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5092: 
	movq	%rdx, %rax
 jmp .UNIQUE5093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5093: 
	addq	$8, %rdx
 jmp .UNIQUE5094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5094: 
	movq	%rdx, -208(%rbp)
.L455:
 jmp .UNIQUE5095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5095: 
	movq	(%rax), %rax
 jmp .UNIQUE5096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5096: 
	movq	%rax, (%rcx)
 jmp .UNIQUE5097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5097: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5098: 
	movq	16(%rax), %rax
 jmp .UNIQUE5099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5099: 
	movq	112(%rax), %rax
 jmp .UNIQUE5100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5100: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE5101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5101: 
	salq	$3, %rdx
 jmp .UNIQUE5102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5102: 
	addq	%rdx, %rax
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
	addq	%rax, -256(%rbp)
 jmp .UNIQUE5105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5105: 
	addq	$1, -264(%rbp)
.L453:
 jmp .UNIQUE5106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5106: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE5107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5107: 
	cmpq	-232(%rbp), %rax
 jmp .UNIQUE5108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5108: 
	jl	.L456
 jmp .UNIQUE5109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5109: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5110: 
	cmpl	$48, %eax
 jmp .UNIQUE5111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5111: 
	jnb	.L457
 jmp .UNIQUE5112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5112: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE5113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5113: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5114: 
	movl	%eax, %eax
 jmp .UNIQUE5115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5115: 
	addq	%rdx, %rax
 jmp .UNIQUE5116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5116: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE5117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5117: 
	addl	$8, %edx
 jmp .UNIQUE5118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5118: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE5119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5119: 
	jmp	.L458
.L457:
 jmp .UNIQUE5120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5120: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE5121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5121: 
	movq	%rdx, %rax
 jmp .UNIQUE5122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5122: 
	addq	$8, %rdx
 jmp .UNIQUE5123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5123: 
	movq	%rdx, -208(%rbp)
.L458:
 jmp .UNIQUE5124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5124: 
	movq	(%rax), %rax
 jmp .UNIQUE5125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5125: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE5126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5126: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5127: 
	movq	16(%rax), %rbx
 jmp .UNIQUE5128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5128: 
	movq	-232(%rbp), %rax
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
	movl	$845, %edx
 jmp .UNIQUE5131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5131: 
	movl	$__func__.5711, %esi
 jmp .UNIQUE5132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5132: 
	movq	%rax, %rdi
 jmp .UNIQUE5133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5133: 
	call	error_checking_malloc
 jmp .UNIQUE5134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5134: 
	movq	%rax, 120(%rbx)
 jmp .UNIQUE5135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5135: 
	movq	$0, -264(%rbp)
 jmp .UNIQUE5136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5136: 
	jmp	.L459
.L462:
 jmp .UNIQUE5137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5137: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5138: 
	movq	16(%rax), %rax
 jmp .UNIQUE5139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5139: 
	movq	120(%rax), %rax
 jmp .UNIQUE5140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5140: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE5141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5141: 
	salq	$3, %rdx
 jmp .UNIQUE5142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5142: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE5143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5143: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5144: 
	cmpl	$48, %eax
 jmp .UNIQUE5145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5145: 
	jnb	.L460
 jmp .UNIQUE5146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5146: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE5147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5147: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE5148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5148: 
	movl	%eax, %eax
 jmp .UNIQUE5149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5149: 
	addq	%rdx, %rax
 jmp .UNIQUE5150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5150: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE5151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5151: 
	addl	$8, %edx
 jmp .UNIQUE5152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5152: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE5153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5153: 
	jmp	.L461
.L460:
 jmp .UNIQUE5154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5154: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE5155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5155: 
	movq	%rdx, %rax
 jmp .UNIQUE5156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5156: 
	addq	$8, %rdx
 jmp .UNIQUE5157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5157: 
	movq	%rdx, -208(%rbp)
.L461:
 jmp .UNIQUE5158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5158: 
	movq	(%rax), %rax
 jmp .UNIQUE5159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5159: 
	movq	%rax, (%rcx)
 jmp .UNIQUE5160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5160: 
	addq	$1, -264(%rbp)
.L459:
 jmp .UNIQUE5161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5161: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE5162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5162: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE5163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5163: 
	jl	.L462
 jmp .UNIQUE5164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5164: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE5165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5165: 
	movq	%rax, -264(%rbp)
 jmp .UNIQUE5166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5166: 
	jmp	.L463
.L464:
 jmp .UNIQUE5167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5167: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5168: 
	movq	16(%rax), %rax
 jmp .UNIQUE5169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5169: 
	movq	120(%rax), %rax
 jmp .UNIQUE5170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5170: 
	movq	-264(%rbp), %rdx
 jmp .UNIQUE5171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5171: 
	salq	$3, %rdx
 jmp .UNIQUE5172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5172: 
	addq	%rdx, %rax
 jmp .UNIQUE5173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5173: 
	movq	$0, (%rax)
 jmp .UNIQUE5174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5174: 
	addq	$1, -264(%rbp)
.L463:
 jmp .UNIQUE5175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5175: 
	movq	-264(%rbp), %rax
 jmp .UNIQUE5176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5176: 
	cmpq	-232(%rbp), %rax
 jmp .UNIQUE5177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5177: 
	jl	.L464
 jmp .UNIQUE5178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5178: 
	jmp	.L383
.L452:
 jmp .UNIQUE5179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5179: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5180: 
	movq	16(%rax), %rax
 jmp .UNIQUE5181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5181: 
	movq	$0, 112(%rax)
 jmp .UNIQUE5182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5182: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5183: 
	movq	16(%rax), %rax
 jmp .UNIQUE5184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5184: 
	movq	$0, 120(%rax)
.L383:
 jmp .UNIQUE5185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5185: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5186: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE5187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5187: 
	movq	%rdx, (%rax)
 jmp .UNIQUE5188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5188: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5189: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE5190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5190: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5191: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE5192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5192: 
	addq	$280, %rsp
 jmp .UNIQUE5193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5193: 
	popq	%rbx
 jmp .UNIQUE5194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5194: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5195: 
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
 jmp .UNIQUE5196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5196: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5197: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5198: 
	pushq	%rbx
 jmp .UNIQUE5199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5199: 
	subq	$88, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE5200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5200: 
	movq	%rdi, -88(%rbp)
 jmp .UNIQUE5201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5201: 
	movl	$889, %edx
 jmp .UNIQUE5202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5202: 
	movl	$__func__.5754, %esi
 jmp .UNIQUE5203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5203: 
	movl	$24, %edi
 jmp .UNIQUE5204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5204: 
	call	error_checking_malloc
 jmp .UNIQUE5205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5205: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE5206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5206: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5207: 
	movq	(%rax), %rdx
 jmp .UNIQUE5208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5208: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5209: 
	movq	%rdx, (%rax)
 jmp .UNIQUE5210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5210: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5211: 
	movq	$0, 8(%rax)
 jmp .UNIQUE5212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5212: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5213: 
	movq	16(%rax), %rax
 jmp .UNIQUE5214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5214: 
	testq	%rax, %rax
 jmp .UNIQUE5215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5215: 
	je	.L467
 jmp .UNIQUE5216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5216: 
	movl	$897, %edx
 jmp .UNIQUE5217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5217: 
	movl	$__func__.5754, %esi
 jmp .UNIQUE5218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5218: 
	movl	$128, %edi
 jmp .UNIQUE5219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5219: 
	call	error_checking_malloc
 jmp .UNIQUE5220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5220: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE5221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5221: 
	movq	%rax, 16(%rdx)
 jmp .UNIQUE5222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5222: 
	jmp	.L468
.L467:
 jmp .UNIQUE5223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5223: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5224: 
	movq	$0, 16(%rax)
 jmp .UNIQUE5225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5225: 
	movl	$.LC82, %edi
 jmp .UNIQUE5226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5226: 
	call	puts
.L468:
 jmp .UNIQUE5227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5227: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5228: 
	movq	16(%rax), %rax
 jmp .UNIQUE5229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5229: 
	testq	%rax, %rax
 jmp .UNIQUE5230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5230: 
	je	.L469
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
	movq	16(%rax), %rax
 jmp .UNIQUE5233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5233: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE5234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5234: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5235: 
	movq	(%rdx), %rdx
 jmp .UNIQUE5236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5236: 
	movq	%rdx, (%rax)
 jmp .UNIQUE5237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5237: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5238: 
	movq	16(%rax), %rax
 jmp .UNIQUE5239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5239: 
	movq	(%rax), %rax
 jmp .UNIQUE5240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5240: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE5241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5241: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5242: 
	movq	%rax, %rdi
 jmp .UNIQUE5243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5243: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5244: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5245: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5246: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5247: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE5248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5248: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5249: 
	movq	8(%rax), %rdx
 jmp .UNIQUE5250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5250: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5251: 
	addq	%rax, %rdx
 jmp .UNIQUE5252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5252: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5253: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5254: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5255: 
	movq	16(%rax), %rax
 jmp .UNIQUE5256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5256: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5257: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5258: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5259: 
	je	.L470
 jmp .UNIQUE5260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5260: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5261: 
	movq	16(%rax), %rax
 jmp .UNIQUE5262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5262: 
	movq	8(%rax), %rcx
 jmp .UNIQUE5263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5263: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5264: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5265: 
	movq	%rcx, %rsi
 jmp .UNIQUE5266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5266: 
	movq	%rax, %rdi
 jmp .UNIQUE5267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5267: 
	call	insert_data_into_stack_mem
.L470:
 jmp .UNIQUE5268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5268: 
	movq	-64(%rbp), %rax
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
	movq	-88(%rbp), %rdx
 jmp .UNIQUE5271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5271: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5272: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5273: 
	movq	%rdx, 16(%rax)
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
	movq	16(%rax), %rax
 jmp .UNIQUE5276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5276: 
	movq	16(%rax), %rax
 jmp .UNIQUE5277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5277: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE5278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5278: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5279: 
	salq	$2, %rax
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
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5282: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5283: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5284: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5285: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE5286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5286: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5287: 
	movq	8(%rax), %rdx
 jmp .UNIQUE5288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5288: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5289: 
	addq	%rax, %rdx
 jmp .UNIQUE5290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5290: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5291: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5292: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5293: 
	movq	16(%rax), %rax
 jmp .UNIQUE5294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5294: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5295: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE5296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5296: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5297: 
	je	.L471
 jmp .UNIQUE5298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5298: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5299: 
	movq	16(%rax), %rax
 jmp .UNIQUE5300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5300: 
	movq	24(%rax), %rcx
 jmp .UNIQUE5301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5301: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5302: 
	salq	$2, %rax
 jmp .UNIQUE5303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5303: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5304: 
	movq	%rcx, %rsi
 jmp .UNIQUE5305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5305: 
	movq	%rax, %rdi
 jmp .UNIQUE5306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5306: 
	call	insert_data_into_stack_mem
.L471:
 jmp .UNIQUE5307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5307: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5308: 
	movq	16(%rax), %rax
 jmp .UNIQUE5309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5309: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE5310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5310: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5311: 
	movq	32(%rdx), %rdx
 jmp .UNIQUE5312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5312: 
	movq	%rdx, 32(%rax)
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
	movq	16(%rax), %rax
 jmp .UNIQUE5315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5315: 
	movq	32(%rax), %rax
 jmp .UNIQUE5316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5316: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE5317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5317: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5318: 
	salq	$3, %rax
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
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5321: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5322: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5323: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5324: 
	movq	%rax, -48(%rbp)
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
	movq	8(%rax), %rdx
 jmp .UNIQUE5327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5327: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5328: 
	addq	%rax, %rdx
 jmp .UNIQUE5329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5329: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5330: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5331: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5332: 
	movq	16(%rax), %rax
 jmp .UNIQUE5333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5333: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5334: 
	movq	%rdx, 40(%rax)
 jmp .UNIQUE5335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5335: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5336: 
	je	.L472
 jmp .UNIQUE5337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5337: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5338: 
	movq	16(%rax), %rax
 jmp .UNIQUE5339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5339: 
	movq	40(%rax), %rcx
 jmp .UNIQUE5340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5340: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5341: 
	salq	$3, %rax
 jmp .UNIQUE5342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5342: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5343: 
	movq	%rcx, %rsi
 jmp .UNIQUE5344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5344: 
	movq	%rax, %rdi
 jmp .UNIQUE5345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5345: 
	call	insert_data_into_stack_mem
.L472:
 jmp .UNIQUE5346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5346: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5347: 
	movq	16(%rax), %rax
 jmp .UNIQUE5348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5348: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE5349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5349: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5350: 
	movq	48(%rdx), %rdx
 jmp .UNIQUE5351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5351: 
	movq	%rdx, 48(%rax)
 jmp .UNIQUE5352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5352: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5353: 
	movq	16(%rax), %rax
 jmp .UNIQUE5354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5354: 
	movq	48(%rax), %rax
 jmp .UNIQUE5355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5355: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE5356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5356: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5357: 
	salq	$2, %rax
 jmp .UNIQUE5358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5358: 
	movq	%rax, %rdi
 jmp .UNIQUE5359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5359: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5360: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5361: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5362: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5363: 
	movq	%rax, -48(%rbp)
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
	movq	8(%rax), %rdx
 jmp .UNIQUE5366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5366: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5367: 
	addq	%rax, %rdx
 jmp .UNIQUE5368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5368: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5369: 
	movq	%rdx, 8(%rax)
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
	movq	16(%rax), %rax
 jmp .UNIQUE5372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5372: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5373: 
	movq	%rdx, 56(%rax)
 jmp .UNIQUE5374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5374: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5375: 
	je	.L473
 jmp .UNIQUE5376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5376: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5377: 
	movq	16(%rax), %rax
 jmp .UNIQUE5378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5378: 
	movq	56(%rax), %rcx
 jmp .UNIQUE5379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5379: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5380: 
	salq	$2, %rax
 jmp .UNIQUE5381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5381: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5382: 
	movq	%rcx, %rsi
 jmp .UNIQUE5383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5383: 
	movq	%rax, %rdi
 jmp .UNIQUE5384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5384: 
	call	insert_data_into_stack_mem
.L473:
 jmp .UNIQUE5385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5385: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5386: 
	movq	16(%rax), %rax
 jmp .UNIQUE5387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5387: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE5388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5388: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5389: 
	movq	64(%rdx), %rdx
 jmp .UNIQUE5390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5390: 
	movq	%rdx, 64(%rax)
 jmp .UNIQUE5391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5391: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5392: 
	movq	16(%rax), %rax
 jmp .UNIQUE5393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5393: 
	movq	64(%rax), %rax
 jmp .UNIQUE5394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5394: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE5395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5395: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5396: 
	salq	$3, %rax
 jmp .UNIQUE5397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5397: 
	movq	%rax, %rdi
 jmp .UNIQUE5398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5398: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5399: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5400: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5401: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5402: 
	movq	%rax, -48(%rbp)
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
	movq	8(%rax), %rdx
 jmp .UNIQUE5405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5405: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5406: 
	addq	%rax, %rdx
 jmp .UNIQUE5407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5407: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5408: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5409: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5410: 
	movq	16(%rax), %rax
 jmp .UNIQUE5411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5411: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5412: 
	movq	%rdx, 72(%rax)
 jmp .UNIQUE5413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5413: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5414: 
	je	.L474
 jmp .UNIQUE5415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5415: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5416: 
	movq	16(%rax), %rax
 jmp .UNIQUE5417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5417: 
	movq	72(%rax), %rcx
 jmp .UNIQUE5418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5418: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5419: 
	salq	$3, %rax
 jmp .UNIQUE5420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5420: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5421: 
	movq	%rcx, %rsi
 jmp .UNIQUE5422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5422: 
	movq	%rax, %rdi
 jmp .UNIQUE5423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5423: 
	call	insert_data_into_stack_mem
.L474:
 jmp .UNIQUE5424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5424: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5425: 
	movq	16(%rax), %rax
 jmp .UNIQUE5426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5426: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE5427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5427: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5428: 
	movq	80(%rdx), %rdx
 jmp .UNIQUE5429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5429: 
	movq	%rdx, 80(%rax)
 jmp .UNIQUE5430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5430: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5431: 
	movq	16(%rax), %rax
 jmp .UNIQUE5432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5432: 
	movq	80(%rax), %rax
 jmp .UNIQUE5433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5433: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE5434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5434: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5435: 
	salq	$3, %rax
 jmp .UNIQUE5436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5436: 
	movq	%rax, %rdi
 jmp .UNIQUE5437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5437: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5438: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5439: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5440: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5441: 
	movq	%rax, -48(%rbp)
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
	movq	8(%rax), %rdx
 jmp .UNIQUE5444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5444: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5445: 
	addq	%rax, %rdx
 jmp .UNIQUE5446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5446: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5447: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5448: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5449: 
	movq	16(%rax), %rax
 jmp .UNIQUE5450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5450: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5451: 
	movq	%rdx, 96(%rax)
 jmp .UNIQUE5452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5452: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5453: 
	je	.L475
 jmp .UNIQUE5454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5454: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5455: 
	movq	16(%rax), %rax
 jmp .UNIQUE5456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5456: 
	movq	96(%rax), %rcx
 jmp .UNIQUE5457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5457: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5458: 
	salq	$3, %rax
 jmp .UNIQUE5459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5459: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5460: 
	movq	%rcx, %rsi
 jmp .UNIQUE5461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5461: 
	movq	%rax, %rdi
 jmp .UNIQUE5462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5462: 
	call	insert_data_into_stack_mem
.L475:
 jmp .UNIQUE5463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5463: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5464: 
	movq	16(%rax), %rbx
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
	movl	$979, %edx
 jmp .UNIQUE5468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5468: 
	movl	$__func__.5754, %esi
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
	call	error_checking_malloc
 jmp .UNIQUE5471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5471: 
	movq	%rax, 88(%rbx)
 jmp .UNIQUE5472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5472: 
	movq	$0, -72(%rbp)
 jmp .UNIQUE5473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5473: 
	jmp	.L476
.L477:
 jmp .UNIQUE5474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5474: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5475: 
	movq	16(%rax), %rax
 jmp .UNIQUE5476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5476: 
	movq	88(%rax), %rax
 jmp .UNIQUE5477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5477: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE5478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5478: 
	salq	$3, %rdx
 jmp .UNIQUE5479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5479: 
	addq	%rax, %rdx
 jmp .UNIQUE5480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5480: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5481: 
	movq	16(%rax), %rax
 jmp .UNIQUE5482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5482: 
	movq	88(%rax), %rax
 jmp .UNIQUE5483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5483: 
	movq	-72(%rbp), %rcx
 jmp .UNIQUE5484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5484: 
	salq	$3, %rcx
 jmp .UNIQUE5485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5485: 
	addq	%rcx, %rax
 jmp .UNIQUE5486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5486: 
	movq	(%rax), %rax
 jmp .UNIQUE5487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5487: 
	movq	%rax, (%rdx)
 jmp .UNIQUE5488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5488: 
	addq	$1, -72(%rbp)
.L476:
 jmp .UNIQUE5489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5489: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE5490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5490: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE5491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5491: 
	jl	.L477
 jmp .UNIQUE5492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5492: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5493: 
	movq	16(%rax), %rax
 jmp .UNIQUE5494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5494: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE5495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5495: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE5496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5496: 
	movq	104(%rdx), %rdx
 jmp .UNIQUE5497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5497: 
	movq	%rdx, 104(%rax)
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
	movq	16(%rax), %rax
 jmp .UNIQUE5500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5500: 
	movq	104(%rax), %rax
 jmp .UNIQUE5501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5501: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE5502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5502: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5503: 
	movq	16(%rax), %rbx
 jmp .UNIQUE5504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5504: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5505: 
	salq	$3, %rax
 jmp .UNIQUE5506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5506: 
	movl	$986, %edx
 jmp .UNIQUE5507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5507: 
	movl	$__func__.5754, %esi
 jmp .UNIQUE5508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5508: 
	movq	%rax, %rdi
 jmp .UNIQUE5509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5509: 
	call	error_checking_malloc
 jmp .UNIQUE5510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5510: 
	movq	%rax, 112(%rbx)
 jmp .UNIQUE5511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5511: 
	movq	$0, -72(%rbp)
 jmp .UNIQUE5512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5512: 
	jmp	.L478
.L479:
 jmp .UNIQUE5513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5513: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5514: 
	movq	16(%rax), %rax
 jmp .UNIQUE5515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5515: 
	movq	112(%rax), %rax
 jmp .UNIQUE5516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5516: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE5517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5517: 
	salq	$3, %rdx
 jmp .UNIQUE5518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5518: 
	addq	%rax, %rdx
 jmp .UNIQUE5519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5519: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5520: 
	movq	16(%rax), %rax
 jmp .UNIQUE5521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5521: 
	movq	112(%rax), %rax
 jmp .UNIQUE5522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5522: 
	movq	-72(%rbp), %rcx
 jmp .UNIQUE5523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5523: 
	salq	$3, %rcx
 jmp .UNIQUE5524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5524: 
	addq	%rcx, %rax
 jmp .UNIQUE5525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5525: 
	movq	(%rax), %rax
 jmp .UNIQUE5526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5526: 
	movq	%rax, (%rdx)
 jmp .UNIQUE5527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5527: 
	addq	$1, -72(%rbp)
.L478:
 jmp .UNIQUE5528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5528: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE5529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5529: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE5530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5530: 
	jl	.L479
 jmp .UNIQUE5531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5531: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5532: 
	movq	16(%rax), %rbx
 jmp .UNIQUE5533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5533: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5534: 
	salq	$3, %rax
 jmp .UNIQUE5535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5535: 
	movl	$989, %edx
 jmp .UNIQUE5536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5536: 
	movl	$__func__.5754, %esi
 jmp .UNIQUE5537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5537: 
	movq	%rax, %rdi
 jmp .UNIQUE5538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5538: 
	call	error_checking_malloc
 jmp .UNIQUE5539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5539: 
	movq	%rax, 120(%rbx)
 jmp .UNIQUE5540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5540: 
	movq	$0, -72(%rbp)
 jmp .UNIQUE5541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5541: 
	jmp	.L480
.L482:
 jmp .UNIQUE5542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5542: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5543: 
	movq	16(%rax), %rax
 jmp .UNIQUE5544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5544: 
	movq	112(%rax), %rax
 jmp .UNIQUE5545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5545: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE5546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5546: 
	salq	$3, %rdx
 jmp .UNIQUE5547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5547: 
	addq	%rdx, %rax
 jmp .UNIQUE5548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5548: 
	movq	(%rax), %rax
 jmp .UNIQUE5549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5549: 
	movq	%rax, %rdi
 jmp .UNIQUE5550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5550: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5551: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5552: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5553: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5554: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE5555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5555: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5556: 
	movq	8(%rax), %rdx
 jmp .UNIQUE5557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5557: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5558: 
	addq	%rax, %rdx
 jmp .UNIQUE5559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5559: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5560: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE5561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5561: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE5562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5562: 
	je	.L481
 jmp .UNIQUE5563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5563: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5564: 
	movq	16(%rax), %rax
 jmp .UNIQUE5565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5565: 
	movq	120(%rax), %rax
 jmp .UNIQUE5566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5566: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE5567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5567: 
	salq	$3, %rdx
 jmp .UNIQUE5568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5568: 
	addq	%rdx, %rax
 jmp .UNIQUE5569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5569: 
	movq	(%rax), %rax
 jmp .UNIQUE5570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5570: 
	testq	%rax, %rax
 jmp .UNIQUE5571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5571: 
	je	.L481
 jmp .UNIQUE5572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5572: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5573: 
	movq	16(%rax), %rax
 jmp .UNIQUE5574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5574: 
	movq	120(%rax), %rax
 jmp .UNIQUE5575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5575: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE5576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5576: 
	salq	$3, %rdx
 jmp .UNIQUE5577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5577: 
	addq	%rdx, %rax
 jmp .UNIQUE5578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5578: 
	movq	(%rax), %rcx
 jmp .UNIQUE5579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5579: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5580: 
	movq	16(%rax), %rax
 jmp .UNIQUE5581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5581: 
	movq	112(%rax), %rax
 jmp .UNIQUE5582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5582: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE5583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5583: 
	salq	$3, %rdx
 jmp .UNIQUE5584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5584: 
	addq	%rdx, %rax
 jmp .UNIQUE5585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5585: 
	movq	(%rax), %rax
 jmp .UNIQUE5586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5586: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE5587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5587: 
	movq	%rcx, %rsi
 jmp .UNIQUE5588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5588: 
	movq	%rax, %rdi
 jmp .UNIQUE5589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5589: 
	call	insert_data_into_stack_mem
.L481:
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
	movq	16(%rax), %rax
 jmp .UNIQUE5592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5592: 
	movq	120(%rax), %rax
 jmp .UNIQUE5593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5593: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE5594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5594: 
	salq	$3, %rdx
 jmp .UNIQUE5595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5595: 
	addq	%rax, %rdx
 jmp .UNIQUE5596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5596: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE5597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5597: 
	movq	%rax, (%rdx)
 jmp .UNIQUE5598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5598: 
	addq	$1, -72(%rbp)
.L480:
 jmp .UNIQUE5599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5599: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE5600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5600: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE5601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5601: 
	jl	.L482
.L469:
 jmp .UNIQUE5602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5602: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE5603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5603: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE5604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5604: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE5605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5605: 
	addq	$88, %rsp
 jmp .UNIQUE5606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5606: 
	popq	%rbx
 jmp .UNIQUE5607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5607: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5608: 
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
 jmp .UNIQUE5609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5609: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5610: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5611: 
	subq	$16, %rsp
 jmp .UNIQUE5612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5612: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5613: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE5614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5614: 
	je	.L484
 jmp .UNIQUE5615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5615: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5616: 
	movq	16(%rax), %rax
 jmp .UNIQUE5617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5617: 
	testq	%rax, %rax
 jmp .UNIQUE5618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5618: 
	je	.L486
 jmp .UNIQUE5619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5619: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5620: 
	movq	16(%rax), %rax
 jmp .UNIQUE5621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5621: 
	movq	8(%rax), %rax
 jmp .UNIQUE5622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5622: 
	movq	%rax, %rdi
 jmp .UNIQUE5623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5623: 
	call	free
 jmp .UNIQUE5624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5624: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5625: 
	movq	16(%rax), %rax
 jmp .UNIQUE5626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5626: 
	movq	24(%rax), %rax
 jmp .UNIQUE5627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5627: 
	movq	%rax, %rdi
 jmp .UNIQUE5628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5628: 
	call	free
 jmp .UNIQUE5629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5629: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5630: 
	movq	16(%rax), %rax
 jmp .UNIQUE5631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5631: 
	movq	40(%rax), %rax
 jmp .UNIQUE5632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5632: 
	movq	%rax, %rdi
 jmp .UNIQUE5633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5633: 
	call	free
 jmp .UNIQUE5634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5634: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5635: 
	movq	16(%rax), %rax
 jmp .UNIQUE5636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5636: 
	movq	56(%rax), %rax
 jmp .UNIQUE5637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5637: 
	movq	%rax, %rdi
 jmp .UNIQUE5638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5638: 
	call	free
 jmp .UNIQUE5639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5639: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5640: 
	movq	16(%rax), %rax
 jmp .UNIQUE5641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5641: 
	movq	72(%rax), %rax
 jmp .UNIQUE5642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5642: 
	movq	%rax, %rdi
 jmp .UNIQUE5643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5643: 
	call	free
 jmp .UNIQUE5644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5644: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5645: 
	movq	16(%rax), %rax
 jmp .UNIQUE5646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5646: 
	movq	96(%rax), %rax
 jmp .UNIQUE5647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5647: 
	movq	%rax, %rdi
 jmp .UNIQUE5648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5648: 
	call	free
 jmp .UNIQUE5649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5649: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5650: 
	movq	16(%rax), %rax
 jmp .UNIQUE5651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5651: 
	movq	88(%rax), %rax
 jmp .UNIQUE5652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5652: 
	movq	%rax, %rdi
 jmp .UNIQUE5653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5653: 
	call	free
 jmp .UNIQUE5654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5654: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5655: 
	movq	16(%rax), %rax
 jmp .UNIQUE5656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5656: 
	movq	112(%rax), %rax
 jmp .UNIQUE5657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5657: 
	movq	%rax, %rdi
 jmp .UNIQUE5658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5658: 
	call	free
 jmp .UNIQUE5659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5659: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5660: 
	movq	16(%rax), %rax
 jmp .UNIQUE5661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5661: 
	movq	%rax, %rdi
 jmp .UNIQUE5662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5662: 
	call	free
.L486:
 jmp .UNIQUE5663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5663: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5664: 
	movq	%rax, %rdi
 jmp .UNIQUE5665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5665: 
	call	free
.L484:
 jmp .UNIQUE5666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5666: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5667: 
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
 jmp .UNIQUE5668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5668: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5669: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5670: 
	subq	$16, %rsp
 jmp .UNIQUE5671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5671: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5672: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5673: 
	movq	16(%rax), %rax
 jmp .UNIQUE5674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5674: 
	movq	88(%rax), %rax
 jmp .UNIQUE5675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5675: 
	movq	%rax, %rdi
 jmp .UNIQUE5676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5676: 
	call	free
 jmp .UNIQUE5677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5677: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5678: 
	movq	16(%rax), %rax
 jmp .UNIQUE5679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5679: 
	movq	112(%rax), %rax
 jmp .UNIQUE5680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5680: 
	movq	%rax, %rdi
 jmp .UNIQUE5681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5681: 
	call	free
 jmp .UNIQUE5682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5682: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5683: 
	movq	16(%rax), %rax
 jmp .UNIQUE5684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5684: 
	movq	%rax, %rdi
 jmp .UNIQUE5685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5685: 
	call	free
 jmp .UNIQUE5686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5686: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5687: 
	movq	%rax, %rdi
 jmp .UNIQUE5688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5688: 
	call	free
 jmp .UNIQUE5689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5689: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5690: 
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
 jmp .UNIQUE5691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5691: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5692: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5693: 
	subq	$32, %rsp
 jmp .UNIQUE5694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5694: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5695: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5696: 
	movq	%rax, %rdi
 jmp .UNIQUE5697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5697: 
	call	put_fun_params_into_secure_stack
 jmp .UNIQUE5698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5698: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE5699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5699: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5700: 
	movq	%rax, %rdi
 jmp .UNIQUE5701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5701: 
	call	free_fun_params
 jmp .UNIQUE5702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5702: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5703: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5704: 
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
 jmp .UNIQUE5705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5705: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5706: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5707: 
	subq	$24, %rsp
 jmp .UNIQUE5708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5708: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5709: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5710: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE5711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5711: 
	movl	$0, %r8d
 jmp .UNIQUE5712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5712: 
	movl	$0, %ecx
 jmp .UNIQUE5713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5713: 
	movl	$1, %esi
 jmp .UNIQUE5714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5714: 
	movq	%rax, %rdi
 jmp .UNIQUE5715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5715: 
	call	get_secure_stack_data
 jmp .UNIQUE5716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5716: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE5717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5717: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5718: 
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
 jmp .UNIQUE5719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5719: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5720: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5721: 
	subq	$24, %rsp
 jmp .UNIQUE5722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5722: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5723: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5724: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5725: 
	movl	$0, %r8d
 jmp .UNIQUE5726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5726: 
	movl	$0, %ecx
 jmp .UNIQUE5727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5727: 
	movl	$4, %esi
 jmp .UNIQUE5728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5728: 
	movq	%rax, %rdi
 jmp .UNIQUE5729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5729: 
	call	get_secure_stack_data
 jmp .UNIQUE5730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5730: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE5731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5731: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5732: 
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
 jmp .UNIQUE5733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5733: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5734: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5735: 
	subq	$24, %rsp
 jmp .UNIQUE5736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5736: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5737: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5738: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5739: 
	movl	$0, %r8d
 jmp .UNIQUE5740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5740: 
	movl	$0, %ecx
 jmp .UNIQUE5741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5741: 
	movl	$8, %esi
 jmp .UNIQUE5742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5742: 
	movq	%rax, %rdi
 jmp .UNIQUE5743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5743: 
	call	get_secure_stack_data
 jmp .UNIQUE5744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5744: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5745: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5746: 
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
 jmp .UNIQUE5747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5747: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5748: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5749: 
	subq	$24, %rsp
 jmp .UNIQUE5750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5750: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5751: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5752: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5753: 
	movl	$0, %r8d
 jmp .UNIQUE5754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5754: 
	movl	$0, %ecx
 jmp .UNIQUE5755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5755: 
	movl	$8, %esi
 jmp .UNIQUE5756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5756: 
	movq	%rax, %rdi
 jmp .UNIQUE5757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5757: 
	call	get_secure_stack_data
 jmp .UNIQUE5758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5758: 
	movq	-16(%rbp), %rax
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
.LFE90:
	.size	get_stack_pointer, .-get_stack_pointer
	.globl	get_stack_float
	.type	get_stack_float, @function
get_stack_float:
.LFB91:
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
	subq	$32, %rsp
 jmp .UNIQUE5764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5764: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5765: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5766: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5767: 
	movl	$0, %r8d
 jmp .UNIQUE5768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5768: 
	movl	$0, %ecx
 jmp .UNIQUE5769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5769: 
	movl	$4, %esi
 jmp .UNIQUE5770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5770: 
	movq	%rax, %rdi
 jmp .UNIQUE5771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5771: 
	call	get_secure_stack_data
 jmp .UNIQUE5772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5772: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE5773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5773: 
	movl	%eax, -28(%rbp)
 jmp .UNIQUE5774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5774: 
	movss	-28(%rbp), %xmm0
 jmp .UNIQUE5775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5775: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5776: 
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
 jmp .UNIQUE5777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5777: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5778: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5779: 
	subq	$32, %rsp
 jmp .UNIQUE5780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5780: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5781: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5782: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5783: 
	movl	$0, %r8d
 jmp .UNIQUE5784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5784: 
	movl	$0, %ecx
 jmp .UNIQUE5785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5785: 
	movl	$8, %esi
 jmp .UNIQUE5786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5786: 
	movq	%rax, %rdi
 jmp .UNIQUE5787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5787: 
	call	get_secure_stack_data
 jmp .UNIQUE5788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5788: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5789: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5790: 
	movsd	-32(%rbp), %xmm0
 jmp .UNIQUE5791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5791: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5792: 
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
 jmp .UNIQUE5793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5793: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5794: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5795: 
	subq	$32, %rsp
 jmp .UNIQUE5796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5796: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5797: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5798: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5799: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE5800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5800: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE5801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5801: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE5802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5802: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE5803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5803: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5804: 
	movq	%rcx, %r8
 jmp .UNIQUE5805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5805: 
	movl	$1, %ecx
 jmp .UNIQUE5806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5806: 
	movq	%rax, %rdi
 jmp .UNIQUE5807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5807: 
	call	get_secure_stack_data
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
.LFE93:
	.size	get_stack_array_element, .-get_stack_array_element
	.globl	get_stack_char_array_element
	.type	get_stack_char_array_element, @function
get_stack_char_array_element:
.LFB94:
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
	subq	$32, %rsp
 jmp .UNIQUE5813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5813: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5814: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5815: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5816: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5817: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE5818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5818: 
	movq	%rcx, %r8
 jmp .UNIQUE5819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5819: 
	movl	$1, %ecx
 jmp .UNIQUE5820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5820: 
	movl	$1, %esi
 jmp .UNIQUE5821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5821: 
	movq	%rax, %rdi
 jmp .UNIQUE5822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5822: 
	call	get_secure_stack_data
 jmp .UNIQUE5823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5823: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE5824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5824: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5825: 
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
 jmp .UNIQUE5826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5826: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5827: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5828: 
	subq	$32, %rsp
 jmp .UNIQUE5829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5829: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5830: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5831: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5832: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5833: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5834: 
	movq	%rcx, %r8
 jmp .UNIQUE5835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5835: 
	movl	$1, %ecx
 jmp .UNIQUE5836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5836: 
	movl	$4, %esi
 jmp .UNIQUE5837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5837: 
	movq	%rax, %rdi
 jmp .UNIQUE5838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5838: 
	call	get_secure_stack_data
 jmp .UNIQUE5839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5839: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE5840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5840: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5841: 
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
 jmp .UNIQUE5842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5842: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5843: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5844: 
	subq	$32, %rsp
 jmp .UNIQUE5845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5845: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5846: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5847: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5848: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5849: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5850: 
	movq	%rcx, %r8
 jmp .UNIQUE5851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5851: 
	movl	$1, %ecx
 jmp .UNIQUE5852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5852: 
	movl	$8, %esi
 jmp .UNIQUE5853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5853: 
	movq	%rax, %rdi
 jmp .UNIQUE5854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5854: 
	call	get_secure_stack_data
 jmp .UNIQUE5855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5855: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5856: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5857: 
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
 jmp .UNIQUE5858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5858: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5859: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5860: 
	subq	$32, %rsp
 jmp .UNIQUE5861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5861: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5862: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5863: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5864: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5865: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5866: 
	movq	%rcx, %r8
 jmp .UNIQUE5867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5867: 
	movl	$1, %ecx
 jmp .UNIQUE5868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5868: 
	movl	$8, %esi
 jmp .UNIQUE5869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5869: 
	movq	%rax, %rdi
 jmp .UNIQUE5870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5870: 
	call	get_secure_stack_data
 jmp .UNIQUE5871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5871: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5872: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5873: 
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
 jmp .UNIQUE5874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5874: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5875: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5876: 
	subq	$40, %rsp
 jmp .UNIQUE5877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5877: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5878: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5879: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5880: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5881: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5882: 
	movq	%rcx, %r8
 jmp .UNIQUE5883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5883: 
	movl	$1, %ecx
 jmp .UNIQUE5884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5884: 
	movl	$4, %esi
 jmp .UNIQUE5885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5885: 
	movq	%rax, %rdi
 jmp .UNIQUE5886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5886: 
	call	get_secure_stack_data
 jmp .UNIQUE5887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5887: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE5888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5888: 
	movl	%eax, -36(%rbp)
 jmp .UNIQUE5889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5889: 
	movss	-36(%rbp), %xmm0
 jmp .UNIQUE5890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5890: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5891: 
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
 jmp .UNIQUE5892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5892: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5893: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5894: 
	subq	$40, %rsp
 jmp .UNIQUE5895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5895: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5896: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5897: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5898: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5899: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5900: 
	movq	%rcx, %r8
 jmp .UNIQUE5901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5901: 
	movl	$1, %ecx
 jmp .UNIQUE5902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5902: 
	movl	$8, %esi
 jmp .UNIQUE5903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5903: 
	movq	%rax, %rdi
 jmp .UNIQUE5904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5904: 
	call	get_secure_stack_data
 jmp .UNIQUE5905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5905: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5906: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE5907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5907: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE5908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5908: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5909: 
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
 jmp .UNIQUE5910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5910: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5911: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5912: 
	subq	$24, %rsp
 jmp .UNIQUE5913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5913: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5914: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5915: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5916: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE5917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5917: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE5918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5918: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5919: 
	movl	$0, %r8d
 jmp .UNIQUE5920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5920: 
	movl	$0, %ecx
 jmp .UNIQUE5921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5921: 
	movq	%rax, %rdi
 jmp .UNIQUE5922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5922: 
	call	get_secure_stack_data
 jmp .UNIQUE5923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5923: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5924: 
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
 jmp .UNIQUE5925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5925: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5926: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5927: 
	subq	$32, %rsp
 jmp .UNIQUE5928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5928: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5929: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5930: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5931: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE5932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5932: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE5933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5933: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE5934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5934: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE5935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5935: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5936: 
	movq	%rcx, %r8
 jmp .UNIQUE5937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5937: 
	movl	$2, %ecx
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
	call	get_secure_stack_data
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
.LFE101:
	.size	get_arbitrary_block_in_stack_with_offset, .-get_arbitrary_block_in_stack_with_offset
	.globl	set_stack_char
	.type	set_stack_char, @function
set_stack_char:
.LFB102:
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
	subq	$16, %rsp
 jmp .UNIQUE5945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5945: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5946: 
	movl	%esi, %eax
 jmp .UNIQUE5947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5947: 
	movb	%al, -12(%rbp)
 jmp .UNIQUE5948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5948: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5949: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE5950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5950: 
	movq	%rax, %rsi
 jmp .UNIQUE5951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5951: 
	movl	$1, %edi
 jmp .UNIQUE5952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5952: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE5953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5953: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5954: 
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
 jmp .UNIQUE5955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5955: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5956: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5957: 
	subq	$16, %rsp
 jmp .UNIQUE5958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5958: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5959: 
	movl	%esi, -12(%rbp)
 jmp .UNIQUE5960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5960: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5961: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE5962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5962: 
	movq	%rax, %rsi
 jmp .UNIQUE5963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5963: 
	movl	$4, %edi
 jmp .UNIQUE5964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5964: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE5965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5965: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5966: 
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
 jmp .UNIQUE5967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5967: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5968: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5969: 
	subq	$16, %rsp
 jmp .UNIQUE5970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5970: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5971: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5972: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5973: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5974: 
	movq	%rax, %rsi
 jmp .UNIQUE5975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5975: 
	movl	$8, %edi
 jmp .UNIQUE5976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5976: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE5977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5977: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5978: 
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
 jmp .UNIQUE5979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5979: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5980: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5981: 
	subq	$16, %rsp
 jmp .UNIQUE5982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5982: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5983: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5984: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5985: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5986: 
	movq	%rax, %rsi
 jmp .UNIQUE5987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5987: 
	movl	$8, %edi
 jmp .UNIQUE5988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5988: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE5989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5989: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5990: 
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
 jmp .UNIQUE5991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5991: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5992: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5993: 
	subq	$16, %rsp
 jmp .UNIQUE5994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5994: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5995: 
	movss	%xmm0, -12(%rbp)
 jmp .UNIQUE5996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5996: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5997: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE5998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5998: 
	movq	%rax, %rsi
 jmp .UNIQUE5999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5999: 
	movl	$4, %edi
 jmp .UNIQUE6000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6000: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE6001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6001: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6002: 
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
 jmp .UNIQUE6003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6003: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6004: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6005: 
	subq	$16, %rsp
 jmp .UNIQUE6006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6006: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE6007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6007: 
	movsd	%xmm0, -16(%rbp)
 jmp .UNIQUE6008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6008: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE6009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6009: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE6010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6010: 
	movq	%rax, %rsi
 jmp .UNIQUE6011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6011: 
	movl	$8, %edi
 jmp .UNIQUE6012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6012: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE6013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6013: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6014: 
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
 jmp .UNIQUE6015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6015: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6016: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6017: 
	subq	$32, %rsp
 jmp .UNIQUE6018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6018: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE6019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6019: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE6020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6020: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE6021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6021: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE6022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6022: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE6023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6023: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6024: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE6025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6025: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE6026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6026: 
	movq	%rcx, %r8
 jmp .UNIQUE6027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6027: 
	movl	$1, %ecx
 jmp .UNIQUE6028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6028: 
	movq	%rax, %rdi
 jmp .UNIQUE6029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6029: 
	call	set_secure_stack_data
 jmp .UNIQUE6030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6030: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6031: 
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
 jmp .UNIQUE6032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6032: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6033: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6034: 
	subq	$40, %rsp
 jmp .UNIQUE6035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6035: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6036: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE6037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6037: 
	movl	%edx, %eax
 jmp .UNIQUE6038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6038: 
	movb	%al, -36(%rbp)
 jmp .UNIQUE6039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6039: 
	movzbl	-36(%rbp), %eax
 jmp .UNIQUE6040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6040: 
	movb	%al, -1(%rbp)
 jmp .UNIQUE6041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6041: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE6042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6042: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE6043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6043: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE6044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6044: 
	movq	%rcx, %r8
 jmp .UNIQUE6045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6045: 
	movl	$1, %ecx
 jmp .UNIQUE6046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6046: 
	movl	$1, %esi
 jmp .UNIQUE6047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6047: 
	movq	%rax, %rdi
 jmp .UNIQUE6048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6048: 
	call	set_secure_stack_data
 jmp .UNIQUE6049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6049: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6050: 
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
 jmp .UNIQUE6051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6051: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6052: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6053: 
	subq	$40, %rsp
 jmp .UNIQUE6054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6054: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6055: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE6056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6056: 
	movl	%edx, -36(%rbp)
 jmp .UNIQUE6057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6057: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE6058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6058: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE6059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6059: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE6060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6060: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE6061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6061: 
	leaq	-4(%rbp), %rax
 jmp .UNIQUE6062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6062: 
	movq	%rcx, %r8
 jmp .UNIQUE6063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6063: 
	movl	$1, %ecx
 jmp .UNIQUE6064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6064: 
	movl	$4, %esi
 jmp .UNIQUE6065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6065: 
	movq	%rax, %rdi
 jmp .UNIQUE6066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6066: 
	call	set_secure_stack_data
 jmp .UNIQUE6067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6067: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6068: 
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
 jmp .UNIQUE6069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6069: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6070: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6071: 
	subq	$40, %rsp
 jmp .UNIQUE6072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6072: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6073: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE6074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6074: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE6075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6075: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE6076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6076: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6077: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE6078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6078: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE6079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6079: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE6080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6080: 
	movq	%rcx, %r8
 jmp .UNIQUE6081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6081: 
	movl	$1, %ecx
 jmp .UNIQUE6082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6082: 
	movl	$8, %esi
 jmp .UNIQUE6083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6083: 
	movq	%rax, %rdi
 jmp .UNIQUE6084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6084: 
	call	set_secure_stack_data
 jmp .UNIQUE6085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6085: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6086: 
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
 jmp .UNIQUE6087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6087: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6088: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6089: 
	subq	$40, %rsp
 jmp .UNIQUE6090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6090: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6091: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE6092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6092: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE6093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6093: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE6094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6094: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6095: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE6096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6096: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE6097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6097: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE6098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6098: 
	movq	%rcx, %r8
 jmp .UNIQUE6099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6099: 
	movl	$1, %ecx
 jmp .UNIQUE6100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6100: 
	movl	$8, %esi
 jmp .UNIQUE6101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6101: 
	movq	%rax, %rdi
 jmp .UNIQUE6102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6102: 
	call	set_secure_stack_data
 jmp .UNIQUE6103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6103: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6104: 
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
 jmp .UNIQUE6105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6105: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6106: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6107: 
	subq	$40, %rsp
 jmp .UNIQUE6108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6108: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6109: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE6110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6110: 
	movss	%xmm0, -36(%rbp)
 jmp .UNIQUE6111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6111: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE6112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6112: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE6113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6113: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE6114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6114: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE6115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6115: 
	leaq	-4(%rbp), %rax
 jmp .UNIQUE6116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6116: 
	movq	%rcx, %r8
 jmp .UNIQUE6117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6117: 
	movl	$1, %ecx
 jmp .UNIQUE6118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6118: 
	movl	$4, %esi
 jmp .UNIQUE6119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6119: 
	movq	%rax, %rdi
 jmp .UNIQUE6120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6120: 
	call	set_secure_stack_data
 jmp .UNIQUE6121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6121: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6122: 
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
 jmp .UNIQUE6123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6123: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6124: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6125: 
	subq	$40, %rsp
 jmp .UNIQUE6126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6126: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6127: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE6128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6128: 
	movsd	%xmm0, -40(%rbp)
 jmp .UNIQUE6129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6129: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE6130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6130: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6131: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE6132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6132: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE6133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6133: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE6134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6134: 
	movq	%rcx, %r8
 jmp .UNIQUE6135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6135: 
	movl	$1, %ecx
 jmp .UNIQUE6136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6136: 
	movl	$8, %esi
 jmp .UNIQUE6137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6137: 
	movq	%rax, %rdi
 jmp .UNIQUE6138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6138: 
	call	set_secure_stack_data
 jmp .UNIQUE6139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6139: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6140: 
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
 jmp .UNIQUE6141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6141: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6142: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6143: 
	subq	$24, %rsp
 jmp .UNIQUE6144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6144: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE6145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6145: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE6146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6146: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE6147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6147: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6148: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE6149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6149: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6150: 
	movl	$0, %r8d
 jmp .UNIQUE6151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6151: 
	movl	$0, %ecx
 jmp .UNIQUE6152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6152: 
	movq	%rax, %rdi
 jmp .UNIQUE6153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6153: 
	call	set_secure_stack_data
 jmp .UNIQUE6154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6154: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6155: 
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
 jmp .UNIQUE6156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6156: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6157: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6158: 
	subq	$32, %rsp
 jmp .UNIQUE6159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6159: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE6160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6160: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE6161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6161: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE6162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6162: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE6163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6163: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE6164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6164: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6165: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE6166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6166: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE6167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6167: 
	movq	%rcx, %r8
 jmp .UNIQUE6168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6168: 
	movl	$2, %ecx
 jmp .UNIQUE6169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6169: 
	movq	%rax, %rdi
 jmp .UNIQUE6170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6170: 
	call	set_secure_stack_data
 jmp .UNIQUE6171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6171: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6172: 
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
 jmp .UNIQUE6173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6173: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6174: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6175: 
	subq	$32, %rsp
 jmp .UNIQUE6176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6176: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6177: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6178: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6179: 
	movl	$.LC83, %edi
 jmp .UNIQUE6180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6180: 
	call	puts
 jmp .UNIQUE6181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6181: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6182: 
	jmp	.L533
.L534:
 jmp .UNIQUE6183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6183: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6184: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6185: 
	addq	%rdx, %rax
 jmp .UNIQUE6186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6186: 
	movzbl	(%rax), %eax
 jmp .UNIQUE6187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6187: 
	movzbl	%al, %eax
 jmp .UNIQUE6188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6188: 
	movl	%eax, %esi
 jmp .UNIQUE6189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6189: 
	movl	$.LC10, %edi
 jmp .UNIQUE6190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6190: 
	movl	$0, %eax
 jmp .UNIQUE6191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6191: 
	call	printf
 jmp .UNIQUE6192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6192: 
	addq	$1, -16(%rbp)
.L533:
 jmp .UNIQUE6193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6193: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE6194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6194: 
	cmpq	%rax, -16(%rbp)
 jmp .UNIQUE6195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6195: 
	jl	.L534
 jmp .UNIQUE6196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6196: 
	movl	$10, %edi
 jmp .UNIQUE6197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6197: 
	call	putchar
 jmp .UNIQUE6198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6198: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6199: 
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
 jmp .UNIQUE6200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6200: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6201: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6202: 
	subq	$32, %rsp
 jmp .UNIQUE6203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6203: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6204: 
	movl	$.LC84, %edi
 jmp .UNIQUE6205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6205: 
	call	puts
 jmp .UNIQUE6206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6206: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6207: 
	movq	(%rax), %rax
 jmp .UNIQUE6208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6208: 
	movq	%rax, %rsi
 jmp .UNIQUE6209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6209: 
	movl	$.LC85, %edi
 jmp .UNIQUE6210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6210: 
	movl	$0, %eax
 jmp .UNIQUE6211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6211: 
	call	printf
 jmp .UNIQUE6212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6212: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6213: 
	movq	8(%rax), %rax
 jmp .UNIQUE6214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6214: 
	movq	%rax, %rsi
 jmp .UNIQUE6215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6215: 
	movl	$.LC86, %edi
 jmp .UNIQUE6216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6216: 
	movl	$0, %eax
 jmp .UNIQUE6217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6217: 
	call	printf
 jmp .UNIQUE6218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6218: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6219: 
	movq	16(%rax), %rax
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
	movq	-8(%rbp), %rax
 jmp .UNIQUE6223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6223: 
	movq	%rax, %rsi
 jmp .UNIQUE6224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6224: 
	movl	$.LC87, %edi
 jmp .UNIQUE6225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6225: 
	movl	$0, %eax
 jmp .UNIQUE6226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6226: 
	call	printf
 jmp .UNIQUE6227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6227: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6228: 
	jle	.L536
 jmp .UNIQUE6229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6229: 
	movl	$.LC88, %edi
 jmp .UNIQUE6230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6230: 
	call	puts
 jmp .UNIQUE6231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6231: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6232: 
	jmp	.L537
.L538:
 jmp .UNIQUE6233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6233: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6234: 
	movq	16(%rax), %rax
 jmp .UNIQUE6235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6235: 
	movq	8(%rax), %rdx
 jmp .UNIQUE6236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6236: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6237: 
	addq	%rdx, %rax
 jmp .UNIQUE6238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6238: 
	movzbl	(%rax), %eax
 jmp .UNIQUE6239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6239: 
	movsbl	%al, %eax
 jmp .UNIQUE6240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6240: 
	movl	%eax, %esi
 jmp .UNIQUE6241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6241: 
	movl	$.LC89, %edi
 jmp .UNIQUE6242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6242: 
	movl	$0, %eax
 jmp .UNIQUE6243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6243: 
	call	printf
 jmp .UNIQUE6244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6244: 
	addq	$1, -16(%rbp)
.L537:
 jmp .UNIQUE6245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6245: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6246: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6247: 
	jl	.L538
 jmp .UNIQUE6248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6248: 
	movl	$10, %edi
 jmp .UNIQUE6249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6249: 
	call	putchar
.L536:
 jmp .UNIQUE6250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6250: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6251: 
	movq	16(%rax), %rax
 jmp .UNIQUE6252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6252: 
	movq	16(%rax), %rax
 jmp .UNIQUE6253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6253: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6254: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6255: 
	movq	%rax, %rsi
 jmp .UNIQUE6256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6256: 
	movl	$.LC90, %edi
 jmp .UNIQUE6257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6257: 
	movl	$0, %eax
 jmp .UNIQUE6258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6258: 
	call	printf
 jmp .UNIQUE6259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6259: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6260: 
	jle	.L539
 jmp .UNIQUE6261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6261: 
	movl	$.LC91, %edi
 jmp .UNIQUE6262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6262: 
	call	puts
 jmp .UNIQUE6263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6263: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6264: 
	jmp	.L540
.L541:
 jmp .UNIQUE6265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6265: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6266: 
	movq	16(%rax), %rax
 jmp .UNIQUE6267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6267: 
	movq	24(%rax), %rax
 jmp .UNIQUE6268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6268: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6269: 
	salq	$2, %rdx
 jmp .UNIQUE6270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6270: 
	addq	%rdx, %rax
 jmp .UNIQUE6271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6271: 
	movl	(%rax), %eax
 jmp .UNIQUE6272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6272: 
	movl	%eax, %esi
 jmp .UNIQUE6273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6273: 
	movl	$.LC22, %edi
 jmp .UNIQUE6274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6274: 
	movl	$0, %eax
 jmp .UNIQUE6275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6275: 
	call	printf
 jmp .UNIQUE6276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6276: 
	addq	$1, -16(%rbp)
.L540:
 jmp .UNIQUE6277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6277: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6278: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6279: 
	jl	.L541
 jmp .UNIQUE6280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6280: 
	movl	$10, %edi
 jmp .UNIQUE6281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6281: 
	call	putchar
.L539:
 jmp .UNIQUE6282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6282: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6283: 
	movq	16(%rax), %rax
 jmp .UNIQUE6284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6284: 
	movq	32(%rax), %rax
 jmp .UNIQUE6285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6285: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6286: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6287: 
	movq	%rax, %rsi
 jmp .UNIQUE6288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6288: 
	movl	$.LC92, %edi
 jmp .UNIQUE6289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6289: 
	movl	$0, %eax
 jmp .UNIQUE6290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6290: 
	call	printf
 jmp .UNIQUE6291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6291: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6292: 
	jle	.L542
 jmp .UNIQUE6293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6293: 
	movl	$.LC93, %edi
 jmp .UNIQUE6294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6294: 
	call	puts
 jmp .UNIQUE6295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6295: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6296: 
	jmp	.L543
.L544:
 jmp .UNIQUE6297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6297: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6298: 
	movq	16(%rax), %rax
 jmp .UNIQUE6299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6299: 
	movq	40(%rax), %rax
 jmp .UNIQUE6300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6300: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6301: 
	salq	$3, %rdx
 jmp .UNIQUE6302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6302: 
	addq	%rdx, %rax
 jmp .UNIQUE6303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6303: 
	movq	(%rax), %rax
 jmp .UNIQUE6304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6304: 
	movq	%rax, %rsi
 jmp .UNIQUE6305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6305: 
	movl	$.LC94, %edi
 jmp .UNIQUE6306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6306: 
	movl	$0, %eax
 jmp .UNIQUE6307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6307: 
	call	printf
 jmp .UNIQUE6308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6308: 
	addq	$1, -16(%rbp)
.L543:
 jmp .UNIQUE6309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6309: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6310: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6311: 
	jl	.L544
 jmp .UNIQUE6312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6312: 
	movl	$10, %edi
 jmp .UNIQUE6313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6313: 
	call	putchar
.L542:
 jmp .UNIQUE6314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6314: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6315: 
	movq	16(%rax), %rax
 jmp .UNIQUE6316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6316: 
	movq	48(%rax), %rax
 jmp .UNIQUE6317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6317: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6318: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6319: 
	movq	%rax, %rsi
 jmp .UNIQUE6320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6320: 
	movl	$.LC95, %edi
 jmp .UNIQUE6321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6321: 
	movl	$0, %eax
 jmp .UNIQUE6322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6322: 
	call	printf
 jmp .UNIQUE6323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6323: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6324: 
	jle	.L545
 jmp .UNIQUE6325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6325: 
	movl	$.LC96, %edi
 jmp .UNIQUE6326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6326: 
	call	puts
 jmp .UNIQUE6327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6327: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6328: 
	jmp	.L546
.L547:
 jmp .UNIQUE6329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6329: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6330: 
	movq	16(%rax), %rax
 jmp .UNIQUE6331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6331: 
	movq	56(%rax), %rax
 jmp .UNIQUE6332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6332: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6333: 
	salq	$2, %rdx
 jmp .UNIQUE6334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6334: 
	addq	%rdx, %rax
 jmp .UNIQUE6335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6335: 
	movss	(%rax), %xmm0
 jmp .UNIQUE6336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6336: 
	unpcklps	%xmm0, %xmm0
 jmp .UNIQUE6337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6337: 
	cvtps2pd	%xmm0, %xmm0
 jmp .UNIQUE6338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6338: 
	movl	$.LC97, %edi
 jmp .UNIQUE6339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6339: 
	movl	$1, %eax
 jmp .UNIQUE6340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6340: 
	call	printf
 jmp .UNIQUE6341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6341: 
	addq	$1, -16(%rbp)
.L546:
 jmp .UNIQUE6342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6342: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6343: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6344: 
	jl	.L547
 jmp .UNIQUE6345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6345: 
	movl	$10, %edi
 jmp .UNIQUE6346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6346: 
	call	putchar
.L545:
 jmp .UNIQUE6347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6347: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6348: 
	movq	16(%rax), %rax
 jmp .UNIQUE6349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6349: 
	movq	64(%rax), %rax
 jmp .UNIQUE6350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6350: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6351: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6352: 
	movq	%rax, %rsi
 jmp .UNIQUE6353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6353: 
	movl	$.LC98, %edi
 jmp .UNIQUE6354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6354: 
	movl	$0, %eax
 jmp .UNIQUE6355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6355: 
	call	printf
 jmp .UNIQUE6356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6356: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6357: 
	jle	.L548
 jmp .UNIQUE6358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6358: 
	movl	$.LC99, %edi
 jmp .UNIQUE6359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6359: 
	call	puts
 jmp .UNIQUE6360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6360: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6361: 
	jmp	.L549
.L550:
 jmp .UNIQUE6362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6362: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6363: 
	movq	16(%rax), %rax
 jmp .UNIQUE6364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6364: 
	movq	72(%rax), %rax
 jmp .UNIQUE6365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6365: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6366: 
	salq	$3, %rdx
 jmp .UNIQUE6367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6367: 
	addq	%rdx, %rax
 jmp .UNIQUE6368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6368: 
	movq	(%rax), %rax
 jmp .UNIQUE6369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6369: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE6370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6370: 
	movsd	-32(%rbp), %xmm0
 jmp .UNIQUE6371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6371: 
	movl	$.LC100, %edi
 jmp .UNIQUE6372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6372: 
	movl	$1, %eax
 jmp .UNIQUE6373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6373: 
	call	printf
 jmp .UNIQUE6374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6374: 
	addq	$1, -16(%rbp)
.L549:
 jmp .UNIQUE6375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6375: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6376: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6377: 
	jl	.L550
 jmp .UNIQUE6378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6378: 
	movl	$10, %edi
 jmp .UNIQUE6379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6379: 
	call	putchar
.L548:
 jmp .UNIQUE6380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6380: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6381: 
	movq	16(%rax), %rax
 jmp .UNIQUE6382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6382: 
	movq	80(%rax), %rax
 jmp .UNIQUE6383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6383: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6384: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6385: 
	movq	%rax, %rsi
 jmp .UNIQUE6386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6386: 
	movl	$.LC101, %edi
 jmp .UNIQUE6387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6387: 
	movl	$0, %eax
 jmp .UNIQUE6388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6388: 
	call	printf
 jmp .UNIQUE6389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6389: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6390: 
	jle	.L551
 jmp .UNIQUE6391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6391: 
	movl	$.LC102, %edi
 jmp .UNIQUE6392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6392: 
	call	puts
 jmp .UNIQUE6393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6393: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6394: 
	jmp	.L552
.L553:
 jmp .UNIQUE6395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6395: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6396: 
	movq	16(%rax), %rax
 jmp .UNIQUE6397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6397: 
	movq	88(%rax), %rax
 jmp .UNIQUE6398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6398: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6399: 
	salq	$3, %rdx
 jmp .UNIQUE6400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6400: 
	addq	%rdx, %rax
 jmp .UNIQUE6401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6401: 
	movq	(%rax), %rax
 jmp .UNIQUE6402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6402: 
	movq	%rax, %rsi
 jmp .UNIQUE6403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6403: 
	movl	$.LC94, %edi
 jmp .UNIQUE6404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6404: 
	movl	$0, %eax
 jmp .UNIQUE6405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6405: 
	call	printf
 jmp .UNIQUE6406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6406: 
	addq	$1, -16(%rbp)
.L552:
 jmp .UNIQUE6407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6407: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6408: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6409: 
	jl	.L553
 jmp .UNIQUE6410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6410: 
	movl	$10, %edi
 jmp .UNIQUE6411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6411: 
	call	putchar
 jmp .UNIQUE6412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6412: 
	movl	$.LC103, %edi
 jmp .UNIQUE6413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6413: 
	call	puts
 jmp .UNIQUE6414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6414: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6415: 
	jmp	.L554
.L555:
 jmp .UNIQUE6416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6416: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6417: 
	movq	16(%rax), %rax
 jmp .UNIQUE6418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6418: 
	movq	96(%rax), %rax
 jmp .UNIQUE6419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6419: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6420: 
	salq	$3, %rdx
 jmp .UNIQUE6421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6421: 
	addq	%rdx, %rax
 jmp .UNIQUE6422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6422: 
	movq	(%rax), %rax
 jmp .UNIQUE6423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6423: 
	movq	%rax, %rsi
 jmp .UNIQUE6424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6424: 
	movl	$.LC94, %edi
 jmp .UNIQUE6425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6425: 
	movl	$0, %eax
 jmp .UNIQUE6426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6426: 
	call	printf
 jmp .UNIQUE6427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6427: 
	addq	$1, -16(%rbp)
.L554:
 jmp .UNIQUE6428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6428: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6429: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6430: 
	jl	.L555
 jmp .UNIQUE6431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6431: 
	movl	$10, %edi
 jmp .UNIQUE6432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6432: 
	call	putchar
.L551:
 jmp .UNIQUE6433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6433: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6434: 
	movq	16(%rax), %rax
 jmp .UNIQUE6435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6435: 
	movq	104(%rax), %rax
 jmp .UNIQUE6436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6436: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6437: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6438: 
	movq	%rax, %rsi
 jmp .UNIQUE6439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6439: 
	movl	$.LC104, %edi
 jmp .UNIQUE6440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6440: 
	movl	$0, %eax
 jmp .UNIQUE6441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6441: 
	call	printf
 jmp .UNIQUE6442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6442: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6443: 
	jle	.L535
 jmp .UNIQUE6444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6444: 
	movl	$.LC105, %edi
 jmp .UNIQUE6445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6445: 
	call	puts
 jmp .UNIQUE6446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6446: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6447: 
	jmp	.L557
.L558:
 jmp .UNIQUE6448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6448: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6449: 
	movq	16(%rax), %rax
 jmp .UNIQUE6450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6450: 
	movq	112(%rax), %rax
 jmp .UNIQUE6451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6451: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6452: 
	salq	$3, %rdx
 jmp .UNIQUE6453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6453: 
	addq	%rdx, %rax
 jmp .UNIQUE6454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6454: 
	movq	(%rax), %rax
 jmp .UNIQUE6455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6455: 
	movq	%rax, %rsi
 jmp .UNIQUE6456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6456: 
	movl	$.LC94, %edi
 jmp .UNIQUE6457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6457: 
	movl	$0, %eax
 jmp .UNIQUE6458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6458: 
	call	printf
 jmp .UNIQUE6459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6459: 
	addq	$1, -16(%rbp)
.L557:
 jmp .UNIQUE6460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6460: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6461: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6462: 
	jl	.L558
 jmp .UNIQUE6463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6463: 
	movl	$10, %edi
 jmp .UNIQUE6464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6464: 
	call	putchar
 jmp .UNIQUE6465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6465: 
	movl	$.LC106, %edi
 jmp .UNIQUE6466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6466: 
	call	puts
 jmp .UNIQUE6467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6467: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6468: 
	jmp	.L559
.L560:
 jmp .UNIQUE6469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6469: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6470: 
	movq	16(%rax), %rax
 jmp .UNIQUE6471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6471: 
	movq	120(%rax), %rax
 jmp .UNIQUE6472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6472: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6473: 
	salq	$3, %rdx
 jmp .UNIQUE6474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6474: 
	addq	%rdx, %rax
 jmp .UNIQUE6475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6475: 
	movq	(%rax), %rax
 jmp .UNIQUE6476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6476: 
	movq	%rax, %rsi
 jmp .UNIQUE6477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6477: 
	movl	$.LC94, %edi
 jmp .UNIQUE6478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6478: 
	movl	$0, %eax
 jmp .UNIQUE6479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6479: 
	call	printf
 jmp .UNIQUE6480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6480: 
	addq	$1, -16(%rbp)
.L559:
 jmp .UNIQUE6481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6481: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6482: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6483: 
	jl	.L560
 jmp .UNIQUE6484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6484: 
	movl	$10, %edi
 jmp .UNIQUE6485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6485: 
	call	putchar
.L535:
 jmp .UNIQUE6486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6486: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6487: 
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
 jmp .UNIQUE6488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6488: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6489: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6490: 
	subq	$32, %rsp
 jmp .UNIQUE6491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6491: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE6492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6492: 
	movl	$.LC107, %edi
 jmp .UNIQUE6493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6493: 
	call	puts
 jmp .UNIQUE6494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6494: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6495: 
	movq	(%rax), %rax
 jmp .UNIQUE6496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6496: 
	movq	%rax, %rsi
 jmp .UNIQUE6497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6497: 
	movl	$.LC85, %edi
 jmp .UNIQUE6498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6498: 
	movl	$0, %eax
 jmp .UNIQUE6499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6499: 
	call	printf
 jmp .UNIQUE6500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6500: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6501: 
	movq	8(%rax), %rax
 jmp .UNIQUE6502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6502: 
	movq	%rax, %rsi
 jmp .UNIQUE6503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6503: 
	movl	$.LC86, %edi
 jmp .UNIQUE6504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6504: 
	movl	$0, %eax
 jmp .UNIQUE6505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6505: 
	call	printf
 jmp .UNIQUE6506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6506: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6507: 
	movq	16(%rax), %rax
 jmp .UNIQUE6508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6508: 
	movq	(%rax), %rax
 jmp .UNIQUE6509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6509: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6510: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6511: 
	movq	%rax, %rsi
 jmp .UNIQUE6512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6512: 
	movl	$.LC87, %edi
 jmp .UNIQUE6513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6513: 
	movl	$0, %eax
 jmp .UNIQUE6514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6514: 
	call	printf
 jmp .UNIQUE6515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6515: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6516: 
	jle	.L562
 jmp .UNIQUE6517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6517: 
	movl	$.LC88, %edi
 jmp .UNIQUE6518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6518: 
	call	puts
 jmp .UNIQUE6519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6519: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6520: 
	jmp	.L563
.L564:
 jmp .UNIQUE6521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6521: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6522: 
	movq	16(%rax), %rax
 jmp .UNIQUE6523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6523: 
	movq	8(%rax), %rax
 jmp .UNIQUE6524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6524: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6525: 
	movq	%rdx, %rsi
 jmp .UNIQUE6526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6526: 
	movq	%rax, %rdi
 jmp .UNIQUE6527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6527: 
	call	get_stack_char_array_element
 jmp .UNIQUE6528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6528: 
	movsbl	%al, %eax
 jmp .UNIQUE6529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6529: 
	movl	%eax, %esi
 jmp .UNIQUE6530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6530: 
	movl	$.LC89, %edi
 jmp .UNIQUE6531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6531: 
	movl	$0, %eax
 jmp .UNIQUE6532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6532: 
	call	printf
 jmp .UNIQUE6533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6533: 
	addq	$1, -16(%rbp)
.L563:
 jmp .UNIQUE6534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6534: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6535: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6536: 
	jl	.L564
 jmp .UNIQUE6537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6537: 
	movl	$10, %edi
 jmp .UNIQUE6538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6538: 
	call	putchar
.L562:
 jmp .UNIQUE6539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6539: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6540: 
	movq	16(%rax), %rax
 jmp .UNIQUE6541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6541: 
	movq	16(%rax), %rax
 jmp .UNIQUE6542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6542: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6543: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6544: 
	movq	%rax, %rsi
 jmp .UNIQUE6545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6545: 
	movl	$.LC90, %edi
 jmp .UNIQUE6546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6546: 
	movl	$0, %eax
 jmp .UNIQUE6547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6547: 
	call	printf
 jmp .UNIQUE6548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6548: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6549: 
	jle	.L565
 jmp .UNIQUE6550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6550: 
	movl	$.LC91, %edi
 jmp .UNIQUE6551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6551: 
	call	puts
 jmp .UNIQUE6552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6552: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6553: 
	jmp	.L566
.L567:
 jmp .UNIQUE6554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6554: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6555: 
	movq	16(%rax), %rax
 jmp .UNIQUE6556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6556: 
	movq	24(%rax), %rax
 jmp .UNIQUE6557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6557: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6558: 
	movq	%rdx, %rsi
 jmp .UNIQUE6559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6559: 
	movq	%rax, %rdi
 jmp .UNIQUE6560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6560: 
	call	get_stack_int_array_element
 jmp .UNIQUE6561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6561: 
	movl	%eax, %esi
 jmp .UNIQUE6562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6562: 
	movl	$.LC22, %edi
 jmp .UNIQUE6563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6563: 
	movl	$0, %eax
 jmp .UNIQUE6564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6564: 
	call	printf
 jmp .UNIQUE6565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6565: 
	addq	$1, -16(%rbp)
.L566:
 jmp .UNIQUE6566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6566: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6567: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6568: 
	jl	.L567
 jmp .UNIQUE6569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6569: 
	movl	$10, %edi
 jmp .UNIQUE6570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6570: 
	call	putchar
.L565:
 jmp .UNIQUE6571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6571: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6572: 
	movq	16(%rax), %rax
 jmp .UNIQUE6573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6573: 
	movq	32(%rax), %rax
 jmp .UNIQUE6574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6574: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6575: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6576: 
	movq	%rax, %rsi
 jmp .UNIQUE6577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6577: 
	movl	$.LC92, %edi
 jmp .UNIQUE6578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6578: 
	movl	$0, %eax
 jmp .UNIQUE6579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6579: 
	call	printf
 jmp .UNIQUE6580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6580: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6581: 
	jle	.L568
 jmp .UNIQUE6582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6582: 
	movl	$.LC93, %edi
 jmp .UNIQUE6583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6583: 
	call	puts
 jmp .UNIQUE6584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6584: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6585: 
	jmp	.L569
.L570:
 jmp .UNIQUE6586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6586: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6587: 
	movq	16(%rax), %rax
 jmp .UNIQUE6588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6588: 
	movq	40(%rax), %rax
 jmp .UNIQUE6589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6589: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6590: 
	movq	%rdx, %rsi
 jmp .UNIQUE6591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6591: 
	movq	%rax, %rdi
 jmp .UNIQUE6592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6592: 
	call	get_stack_long_int_array_element
 jmp .UNIQUE6593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6593: 
	movq	%rax, %rsi
 jmp .UNIQUE6594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6594: 
	movl	$.LC94, %edi
 jmp .UNIQUE6595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6595: 
	movl	$0, %eax
 jmp .UNIQUE6596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6596: 
	call	printf
 jmp .UNIQUE6597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6597: 
	addq	$1, -16(%rbp)
.L569:
 jmp .UNIQUE6598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6598: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6599: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6600: 
	jl	.L570
 jmp .UNIQUE6601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6601: 
	movl	$10, %edi
 jmp .UNIQUE6602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6602: 
	call	putchar
.L568:
 jmp .UNIQUE6603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6603: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6604: 
	movq	16(%rax), %rax
 jmp .UNIQUE6605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6605: 
	movq	48(%rax), %rax
 jmp .UNIQUE6606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6606: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6607: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6608: 
	movq	%rax, %rsi
 jmp .UNIQUE6609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6609: 
	movl	$.LC95, %edi
 jmp .UNIQUE6610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6610: 
	movl	$0, %eax
 jmp .UNIQUE6611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6611: 
	call	printf
 jmp .UNIQUE6612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6612: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6613: 
	jle	.L571
 jmp .UNIQUE6614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6614: 
	movl	$.LC96, %edi
 jmp .UNIQUE6615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6615: 
	call	puts
 jmp .UNIQUE6616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6616: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6617: 
	jmp	.L572
.L573:
 jmp .UNIQUE6618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6618: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6619: 
	movq	16(%rax), %rax
 jmp .UNIQUE6620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6620: 
	movq	56(%rax), %rax
 jmp .UNIQUE6621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6621: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6622: 
	movq	%rdx, %rsi
 jmp .UNIQUE6623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6623: 
	movq	%rax, %rdi
 jmp .UNIQUE6624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6624: 
	call	get_stack_float_array_element
 jmp .UNIQUE6625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6625: 
	unpcklps	%xmm0, %xmm0
 jmp .UNIQUE6626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6626: 
	cvtps2pd	%xmm0, %xmm0
 jmp .UNIQUE6627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6627: 
	movl	$.LC97, %edi
 jmp .UNIQUE6628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6628: 
	movl	$1, %eax
 jmp .UNIQUE6629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6629: 
	call	printf
 jmp .UNIQUE6630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6630: 
	addq	$1, -16(%rbp)
.L572:
 jmp .UNIQUE6631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6631: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6632: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6633: 
	jl	.L573
 jmp .UNIQUE6634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6634: 
	movl	$10, %edi
 jmp .UNIQUE6635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6635: 
	call	putchar
.L571:
 jmp .UNIQUE6636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6636: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6637: 
	movq	16(%rax), %rax
 jmp .UNIQUE6638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6638: 
	movq	64(%rax), %rax
 jmp .UNIQUE6639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6639: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6640: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6641: 
	movq	%rax, %rsi
 jmp .UNIQUE6642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6642: 
	movl	$.LC98, %edi
 jmp .UNIQUE6643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6643: 
	movl	$0, %eax
 jmp .UNIQUE6644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6644: 
	call	printf
 jmp .UNIQUE6645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6645: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6646: 
	jle	.L574
 jmp .UNIQUE6647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6647: 
	movl	$.LC99, %edi
 jmp .UNIQUE6648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6648: 
	call	puts
 jmp .UNIQUE6649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6649: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6650: 
	jmp	.L575
.L576:
 jmp .UNIQUE6651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6651: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6652: 
	movq	16(%rax), %rax
 jmp .UNIQUE6653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6653: 
	movq	72(%rax), %rax
 jmp .UNIQUE6654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6654: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6655: 
	movq	%rdx, %rsi
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
	call	get_stack_double_array_element
 jmp .UNIQUE6658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6658: 
	movsd	%xmm0, -32(%rbp)
 jmp .UNIQUE6659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6659: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE6660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6660: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE6661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6661: 
	movsd	-32(%rbp), %xmm0
 jmp .UNIQUE6662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6662: 
	movl	$.LC100, %edi
 jmp .UNIQUE6663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6663: 
	movl	$1, %eax
 jmp .UNIQUE6664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6664: 
	call	printf
 jmp .UNIQUE6665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6665: 
	addq	$1, -16(%rbp)
.L575:
 jmp .UNIQUE6666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6666: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6667: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6668: 
	jl	.L576
 jmp .UNIQUE6669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6669: 
	movl	$10, %edi
 jmp .UNIQUE6670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6670: 
	call	putchar
.L574:
 jmp .UNIQUE6671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6671: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6672: 
	movq	16(%rax), %rax
 jmp .UNIQUE6673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6673: 
	movq	80(%rax), %rax
 jmp .UNIQUE6674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6674: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6675: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6676: 
	movq	%rax, %rsi
 jmp .UNIQUE6677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6677: 
	movl	$.LC101, %edi
 jmp .UNIQUE6678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6678: 
	movl	$0, %eax
 jmp .UNIQUE6679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6679: 
	call	printf
 jmp .UNIQUE6680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6680: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6681: 
	jle	.L577
 jmp .UNIQUE6682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6682: 
	movl	$.LC102, %edi
 jmp .UNIQUE6683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6683: 
	call	puts
 jmp .UNIQUE6684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6684: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6685: 
	jmp	.L578
.L579:
 jmp .UNIQUE6686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6686: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6687: 
	movq	16(%rax), %rax
 jmp .UNIQUE6688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6688: 
	movq	88(%rax), %rax
 jmp .UNIQUE6689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6689: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6690: 
	salq	$3, %rdx
 jmp .UNIQUE6691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6691: 
	addq	%rdx, %rax
 jmp .UNIQUE6692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6692: 
	movq	(%rax), %rax
 jmp .UNIQUE6693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6693: 
	movq	%rax, %rsi
 jmp .UNIQUE6694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6694: 
	movl	$.LC94, %edi
 jmp .UNIQUE6695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6695: 
	movl	$0, %eax
 jmp .UNIQUE6696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6696: 
	call	printf
 jmp .UNIQUE6697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6697: 
	addq	$1, -16(%rbp)
.L578:
 jmp .UNIQUE6698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6698: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6699: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6700: 
	jl	.L579
 jmp .UNIQUE6701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6701: 
	movl	$10, %edi
 jmp .UNIQUE6702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6702: 
	call	putchar
 jmp .UNIQUE6703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6703: 
	movl	$.LC103, %edi
 jmp .UNIQUE6704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6704: 
	call	puts
 jmp .UNIQUE6705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6705: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6706: 
	jmp	.L580
.L581:
 jmp .UNIQUE6707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6707: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6708: 
	movq	16(%rax), %rax
 jmp .UNIQUE6709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6709: 
	movq	96(%rax), %rax
 jmp .UNIQUE6710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6710: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6711: 
	movq	%rdx, %rsi
 jmp .UNIQUE6712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6712: 
	movq	%rax, %rdi
 jmp .UNIQUE6713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6713: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE6714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6714: 
	movq	%rax, %rsi
 jmp .UNIQUE6715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6715: 
	movl	$.LC94, %edi
 jmp .UNIQUE6716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6716: 
	movl	$0, %eax
 jmp .UNIQUE6717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6717: 
	call	printf
 jmp .UNIQUE6718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6718: 
	addq	$1, -16(%rbp)
.L580:
 jmp .UNIQUE6719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6719: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6720: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6721: 
	jl	.L581
 jmp .UNIQUE6722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6722: 
	movl	$10, %edi
 jmp .UNIQUE6723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6723: 
	call	putchar
.L577:
 jmp .UNIQUE6724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6724: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6725: 
	movq	16(%rax), %rax
 jmp .UNIQUE6726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6726: 
	movq	104(%rax), %rax
 jmp .UNIQUE6727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6727: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6728: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6729: 
	movq	%rax, %rsi
 jmp .UNIQUE6730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6730: 
	movl	$.LC104, %edi
 jmp .UNIQUE6731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6731: 
	movl	$0, %eax
 jmp .UNIQUE6732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6732: 
	call	printf
 jmp .UNIQUE6733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6733: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE6734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6734: 
	jle	.L561
 jmp .UNIQUE6735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6735: 
	movl	$.LC105, %edi
 jmp .UNIQUE6736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6736: 
	call	puts
 jmp .UNIQUE6737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6737: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6738: 
	jmp	.L583
.L584:
 jmp .UNIQUE6739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6739: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6740: 
	movq	16(%rax), %rax
 jmp .UNIQUE6741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6741: 
	movq	112(%rax), %rax
 jmp .UNIQUE6742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6742: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6743: 
	salq	$3, %rdx
 jmp .UNIQUE6744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6744: 
	addq	%rdx, %rax
 jmp .UNIQUE6745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6745: 
	movq	(%rax), %rax
 jmp .UNIQUE6746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6746: 
	movq	%rax, %rsi
 jmp .UNIQUE6747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6747: 
	movl	$.LC94, %edi
 jmp .UNIQUE6748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6748: 
	movl	$0, %eax
 jmp .UNIQUE6749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6749: 
	call	printf
 jmp .UNIQUE6750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6750: 
	addq	$1, -16(%rbp)
.L583:
 jmp .UNIQUE6751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6751: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6752: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6753: 
	jl	.L584
 jmp .UNIQUE6754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6754: 
	movl	$10, %edi
 jmp .UNIQUE6755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6755: 
	call	putchar
 jmp .UNIQUE6756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6756: 
	movl	$.LC106, %edi
 jmp .UNIQUE6757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6757: 
	call	puts
 jmp .UNIQUE6758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6758: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE6759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6759: 
	jmp	.L585
.L586:
 jmp .UNIQUE6760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6760: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6761: 
	movq	16(%rax), %rax
 jmp .UNIQUE6762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6762: 
	movq	120(%rax), %rax
 jmp .UNIQUE6763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6763: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE6764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6764: 
	salq	$3, %rdx
 jmp .UNIQUE6765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6765: 
	addq	%rdx, %rax
 jmp .UNIQUE6766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6766: 
	movq	(%rax), %rax
 jmp .UNIQUE6767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6767: 
	movq	%rax, %rsi
 jmp .UNIQUE6768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6768: 
	movl	$.LC94, %edi
 jmp .UNIQUE6769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6769: 
	movl	$0, %eax
 jmp .UNIQUE6770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6770: 
	call	printf
 jmp .UNIQUE6771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6771: 
	addq	$1, -16(%rbp)
.L585:
 jmp .UNIQUE6772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6772: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6773: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE6774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6774: 
	jl	.L586
 jmp .UNIQUE6775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6775: 
	movl	$10, %edi
 jmp .UNIQUE6776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6776: 
	call	putchar
.L561:
 jmp .UNIQUE6777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6777: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6778: 
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
 jmp .UNIQUE6779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6779: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6780: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6781: 
	pushq	%rbx
 jmp .UNIQUE6782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6782: 
	subq	$88, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE6783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6783: 
	movl	%edi, -84(%rbp)
 jmp .UNIQUE6784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6784: 
	movl	%ecx, %eax
 jmp .UNIQUE6785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6785: 
	movb	%sil, -88(%rbp)
 jmp .UNIQUE6786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6786: 
	movb	%dl, -92(%rbp)
 jmp .UNIQUE6787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6787: 
	movb	%al, -96(%rbp)
 jmp .UNIQUE6788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6788: 
	movq	$4, -56(%rbp)
 jmp .UNIQUE6789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6789: 
	movzbl	-88(%rbp), %eax
 jmp .UNIQUE6790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6790: 
	movb	%al, -80(%rbp)
 jmp .UNIQUE6791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6791: 
	movzbl	-92(%rbp), %eax
 jmp .UNIQUE6792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6792: 
	movb	%al, -79(%rbp)
 jmp .UNIQUE6793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6793: 
	movzbl	-96(%rbp), %eax
 jmp .UNIQUE6794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6794: 
	movb	%al, -78(%rbp)
 jmp .UNIQUE6795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6795: 
	movl	$1522, %edx
 jmp .UNIQUE6796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6796: 
	movl	$__func__.6008, %esi
 jmp .UNIQUE6797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6797: 
	movl	$24, %edi
 jmp .UNIQUE6798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6798: 
	call	error_checking_malloc
 jmp .UNIQUE6799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6799: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE6800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6800: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6801: 
	movq	$7, (%rax)
 jmp .UNIQUE6802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6802: 
	movq	-56(%rbp), %rbx
 jmp .UNIQUE6803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6803: 
	movl	$3, %eax
 jmp .UNIQUE6804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6804: 
	movl	$0, %edx
 jmp .UNIQUE6805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6805: 
	divq	%rbx
 jmp .UNIQUE6806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6806: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE6807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6807: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE6808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6808: 
	imulq	-56(%rbp), %rax
 jmp .UNIQUE6809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6809: 
	cmpq	$2, %rax
 jmp .UNIQUE6810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6810: 
	ja	.L588
 jmp .UNIQUE6811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6811: 
	addq	$1, -72(%rbp)
.L588:
 jmp .UNIQUE6812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6812: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE6813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6813: 
	movl	$4, %eax
 jmp .UNIQUE6814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6814: 
	movl	$0, %edx
 jmp .UNIQUE6815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6815: 
	divq	%rcx
 jmp .UNIQUE6816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6816: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE6817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6817: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE6818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6818: 
	imulq	-56(%rbp), %rax
 jmp .UNIQUE6819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6819: 
	cmpq	$3, %rax
 jmp .UNIQUE6820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6820: 
	ja	.L589
 jmp .UNIQUE6821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6821: 
	addq	$1, -64(%rbp)
.L589:
 jmp .UNIQUE6822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6822: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE6823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6823: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE6824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6824: 
	addq	%rax, %rdx
 jmp .UNIQUE6825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6825: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6826: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE6827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6827: 
	movl	$1532, %edx
 jmp .UNIQUE6828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6828: 
	movl	$__func__.6008, %esi
 jmp .UNIQUE6829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6829: 
	movl	$128, %edi
 jmp .UNIQUE6830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6830: 
	call	error_checking_malloc
 jmp .UNIQUE6831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6831: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE6832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6832: 
	movq	%rax, 16(%rdx)
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
	movl	$128, %edx
 jmp .UNIQUE6836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6836: 
	movl	$0, %esi
 jmp .UNIQUE6837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6837: 
	movq	%rax, %rdi
 jmp .UNIQUE6838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6838: 
	call	memset
 jmp .UNIQUE6839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6839: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6840: 
	movq	16(%rax), %rax
 jmp .UNIQUE6841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6841: 
	movq	$3, (%rax)
 jmp .UNIQUE6842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6842: 
	movq	-48(%rbp), %rax
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
	movq	$1, 16(%rax)
 jmp .UNIQUE6845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6845: 
	movl	$3, %edi
 jmp .UNIQUE6846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6846: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE6847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6847: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE6848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6848: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE6849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6849: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6850: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE6851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6851: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6852: 
	movq	16(%rax), %rax
 jmp .UNIQUE6853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6853: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE6854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6854: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE6855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6855: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE6856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6856: 
	je	.L590
 jmp .UNIQUE6857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6857: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE6858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6858: 
	leaq	-80(%rbp), %rax
 jmp .UNIQUE6859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6859: 
	movq	%rax, %rsi
 jmp .UNIQUE6860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6860: 
	movl	$3, %edi
 jmp .UNIQUE6861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6861: 
	call	insert_data_into_stack_mem
.L590:
 jmp .UNIQUE6862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6862: 
	movl	$4, %edi
 jmp .UNIQUE6863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6863: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE6864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6864: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE6865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6865: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE6866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6866: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE6867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6867: 
	movq	%rax, -40(%rbp)
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
	movq	16(%rax), %rax
 jmp .UNIQUE6870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6870: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE6871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6871: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE6872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6872: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE6873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6873: 
	je	.L591
 jmp .UNIQUE6874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6874: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE6875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6875: 
	leaq	-84(%rbp), %rax
 jmp .UNIQUE6876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6876: 
	movq	%rax, %rsi
 jmp .UNIQUE6877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6877: 
	movl	$4, %edi
 jmp .UNIQUE6878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6878: 
	call	insert_data_into_stack_mem
.L591:
 jmp .UNIQUE6879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6879: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE6880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6880: 
	addq	$88, %rsp
 jmp .UNIQUE6881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6881: 
	popq	%rbx
 jmp .UNIQUE6882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6882: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6883: 
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
 jmp .UNIQUE6884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6884: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6885: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6886: 
	subq	$144, %rsp
 jmp .UNIQUE6887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6887: 
	movl	$.LC108, %edi
 jmp .UNIQUE6888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6888: 
	call	puts
 jmp .UNIQUE6889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6889: 
	movl	$9, %edx
 jmp .UNIQUE6890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6890: 
	movl	$__func__.6014, %esi
 jmp .UNIQUE6891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6891: 
	movl	$80, %edi
 jmp .UNIQUE6892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6892: 
	call	error_checking_malloc
 jmp .UNIQUE6893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6893: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE6894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6894: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE6895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6895: 
	jmp	.L594
.L595:
 jmp .UNIQUE6896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6896: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE6897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6897: 
	cltq
 jmp .UNIQUE6898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6898: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE6899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6899: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE6900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6900: 
	addq	%rdx, %rax
 jmp .UNIQUE6901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6901: 
	movl	-20(%rbp), %edx
 jmp .UNIQUE6902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6902: 
	addl	$100, %edx
 jmp .UNIQUE6903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6903: 
	cvtsi2sd	%edx, %xmm0
 jmp .UNIQUE6904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6904: 
	movsd	%xmm0, (%rax)
 jmp .UNIQUE6905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6905: 
	addl	$1, -20(%rbp)
.L594:
 jmp .UNIQUE6906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6906: 
	cmpl	$9, -20(%rbp)
 jmp .UNIQUE6907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6907: 
	jle	.L595
 jmp .UNIQUE6908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6908: 
	movl	$.LC109, %edi
 jmp .UNIQUE6909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6909: 
	call	puts
 jmp .UNIQUE6910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6910: 
	movabsq	$4633156929650876744, %rdx
 jmp .UNIQUE6911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6911: 
	movabsq	$4631166901565532406, %rax
 jmp .UNIQUE6912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6912: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE6913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6913: 
	movq	%rcx, 96(%rsp)
 jmp .UNIQUE6914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6914: 
	movq	$80, 88(%rsp)
 jmp .UNIQUE6915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6915: 
	movq	$1, 80(%rsp)
 jmp .UNIQUE6916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6916: 
	movl	$424242, 72(%rsp)
 jmp .UNIQUE6917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6917: 
	movq	$10, 64(%rsp)
 jmp .UNIQUE6918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6918: 
	movq	$1, 56(%rsp)
 jmp .UNIQUE6919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6919: 
	movq	$2, 48(%rsp)
 jmp .UNIQUE6920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6920: 
	movq	$0, 40(%rsp)
 jmp .UNIQUE6921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6921: 
	movq	$0, 32(%rsp)
 jmp .UNIQUE6922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6922: 
	movl	$41, 24(%rsp)
 jmp .UNIQUE6923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6923: 
	movl	$42, 16(%rsp)
 jmp .UNIQUE6924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6924: 
	movq	$2, 8(%rsp)
 jmp .UNIQUE6925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6925: 
	movl	$103, (%rsp)
 jmp .UNIQUE6926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6926: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE6927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6927: 
	movsd	-40(%rbp), %xmm1
 jmp .UNIQUE6928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6928: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE6929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6929: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE6930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6930: 
	movl	$102, %r9d
 jmp .UNIQUE6931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6931: 
	movl	$101, %r8d
 jmp .UNIQUE6932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6932: 
	movl	$100, %ecx
 jmp .UNIQUE6933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6933: 
	movl	$99, %edx
 jmp .UNIQUE6934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6934: 
	movl	$5, %esi
 jmp .UNIQUE6935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6935: 
	movl	$1, %edi
 jmp .UNIQUE6936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6936: 
	movl	$2, %eax
 jmp .UNIQUE6937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6937: 
	call	init_function_params
 jmp .UNIQUE6938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6938: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6939: 
	movl	$.LC112, %edi
 jmp .UNIQUE6940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6940: 
	call	puts
 jmp .UNIQUE6941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6941: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6942: 
	movq	%rax, %rdi
 jmp .UNIQUE6943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6943: 
	call	put_fun_params_into_secure_stack_and_free
 jmp .UNIQUE6944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6944: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6945: 
	movl	$.LC113, %edi
 jmp .UNIQUE6946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6946: 
	call	puts
 jmp .UNIQUE6947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6947: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE6948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6948: 
	jmp	.L596
.L597:
 jmp .UNIQUE6949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6949: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE6950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6950: 
	movslq	%eax, %rdx
 jmp .UNIQUE6951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6951: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6952: 
	movq	16(%rax), %rax
 jmp .UNIQUE6953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6953: 
	movq	8(%rax), %rax
 jmp .UNIQUE6954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6954: 
	movq	%rdx, %rsi
 jmp .UNIQUE6955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6955: 
	movq	%rax, %rdi
 jmp .UNIQUE6956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6956: 
	call	get_stack_char_array_element
 jmp .UNIQUE6957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6957: 
	movsbl	%al, %eax
 jmp .UNIQUE6958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6958: 
	movl	%eax, %esi
 jmp .UNIQUE6959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6959: 
	movl	$.LC89, %edi
 jmp .UNIQUE6960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6960: 
	movl	$0, %eax
 jmp .UNIQUE6961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6961: 
	call	printf
 jmp .UNIQUE6962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6962: 
	addl	$1, -20(%rbp)
.L596:
 jmp .UNIQUE6963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6963: 
	cmpl	$4, -20(%rbp)
 jmp .UNIQUE6964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6964: 
	jle	.L597
 jmp .UNIQUE6965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6965: 
	movl	$10, %edi
 jmp .UNIQUE6966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6966: 
	call	putchar
 jmp .UNIQUE6967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6967: 
	movl	$.LC114, %edi
 jmp .UNIQUE6968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6968: 
	call	puts
 jmp .UNIQUE6969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6969: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE6970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6970: 
	jmp	.L598
.L599:
 jmp .UNIQUE6971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6971: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE6972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6972: 
	movslq	%eax, %rdx
 jmp .UNIQUE6973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6973: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6974: 
	movq	16(%rax), %rax
 jmp .UNIQUE6975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6975: 
	movq	24(%rax), %rax
 jmp .UNIQUE6976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6976: 
	movq	%rdx, %rsi
 jmp .UNIQUE6977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6977: 
	movq	%rax, %rdi
 jmp .UNIQUE6978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6978: 
	call	get_stack_int_array_element
 jmp .UNIQUE6979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6979: 
	movl	%eax, %esi
 jmp .UNIQUE6980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6980: 
	movl	$.LC22, %edi
 jmp .UNIQUE6981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6981: 
	movl	$0, %eax
 jmp .UNIQUE6982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6982: 
	call	printf
 jmp .UNIQUE6983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6983: 
	addl	$1, -20(%rbp)
.L598:
 jmp .UNIQUE6984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6984: 
	cmpl	$1, -20(%rbp)
 jmp .UNIQUE6985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6985: 
	jle	.L599
 jmp .UNIQUE6986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6986: 
	movl	$10, %edi
 jmp .UNIQUE6987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6987: 
	call	putchar
 jmp .UNIQUE6988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6988: 
	movl	$.LC115, %edi
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
	jmp	.L600
.L601:
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
	movq	72(%rax), %rax
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
	call	get_stack_double_array_element
 jmp .UNIQUE7000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7000: 
	movsd	%xmm0, -40(%rbp)
 jmp .UNIQUE7001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7001: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7002: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE7003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7003: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE7004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7004: 
	movl	$.LC100, %edi
 jmp .UNIQUE7005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7005: 
	movl	$1, %eax
 jmp .UNIQUE7006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7006: 
	call	printf
 jmp .UNIQUE7007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7007: 
	addl	$1, -20(%rbp)
.L600:
 jmp .UNIQUE7008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7008: 
	cmpl	$1, -20(%rbp)
 jmp .UNIQUE7009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7009: 
	jle	.L601
 jmp .UNIQUE7010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7010: 
	movl	$10, %edi
 jmp .UNIQUE7011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7011: 
	call	putchar
 jmp .UNIQUE7012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7012: 
	movl	$.LC116, %edi
 jmp .UNIQUE7013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7013: 
	call	puts
 jmp .UNIQUE7014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7014: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7015: 
	movq	16(%rax), %rax
 jmp .UNIQUE7016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7016: 
	movq	24(%rax), %rdx
 jmp .UNIQUE7017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7017: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7018: 
	movq	16(%rax), %rax
 jmp .UNIQUE7019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7019: 
	movq	96(%rax), %rax
 jmp .UNIQUE7020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7020: 
	movl	$0, %esi
 jmp .UNIQUE7021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7021: 
	movq	%rax, %rdi
 jmp .UNIQUE7022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7022: 
	call	set_stack_pointer_array_element
 jmp .UNIQUE7023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7023: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7024: 
	movq	16(%rax), %rax
 jmp .UNIQUE7025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7025: 
	movq	96(%rax), %rax
 jmp .UNIQUE7026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7026: 
	movl	$0, %esi
 jmp .UNIQUE7027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7027: 
	movq	%rax, %rdi
 jmp .UNIQUE7028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7028: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE7029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7029: 
	movl	$45, %edx
 jmp .UNIQUE7030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7030: 
	movl	$0, %esi
 jmp .UNIQUE7031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7031: 
	movq	%rax, %rdi
 jmp .UNIQUE7032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7032: 
	call	set_stack_int_array_element
 jmp .UNIQUE7033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7033: 
	movl	$.LC114, %edi
 jmp .UNIQUE7034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7034: 
	call	puts
 jmp .UNIQUE7035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7035: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE7036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7036: 
	jmp	.L602
.L603:
 jmp .UNIQUE7037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7037: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE7038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7038: 
	movslq	%eax, %rdx
 jmp .UNIQUE7039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7039: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7040: 
	movq	16(%rax), %rax
 jmp .UNIQUE7041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7041: 
	movq	24(%rax), %rax
 jmp .UNIQUE7042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7042: 
	movq	%rdx, %rsi
 jmp .UNIQUE7043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7043: 
	movq	%rax, %rdi
 jmp .UNIQUE7044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7044: 
	call	get_stack_int_array_element
 jmp .UNIQUE7045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7045: 
	movl	%eax, %esi
 jmp .UNIQUE7046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7046: 
	movl	$.LC22, %edi
 jmp .UNIQUE7047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7047: 
	movl	$0, %eax
 jmp .UNIQUE7048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7048: 
	call	printf
 jmp .UNIQUE7049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7049: 
	addl	$1, -20(%rbp)
.L602:
 jmp .UNIQUE7050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7050: 
	cmpl	$1, -20(%rbp)
 jmp .UNIQUE7051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7051: 
	jle	.L603
 jmp .UNIQUE7052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7052: 
	movl	$10, %edi
 jmp .UNIQUE7053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7053: 
	call	putchar
 jmp .UNIQUE7054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7054: 
	movl	$.LC117, %edi
 jmp .UNIQUE7055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7055: 
	call	puts
 jmp .UNIQUE7056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7056: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE7057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7057: 
	jmp	.L604
.L605:
 jmp .UNIQUE7058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7058: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE7059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7059: 
	movslq	%eax, %rdx
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
	movq	120(%rax), %rax
 jmp .UNIQUE7063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7063: 
	movq	(%rax), %rax
 jmp .UNIQUE7064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7064: 
	movq	%rdx, %rsi
 jmp .UNIQUE7065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7065: 
	movq	%rax, %rdi
 jmp .UNIQUE7066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7066: 
	call	get_stack_double_array_element
 jmp .UNIQUE7067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7067: 
	movsd	%xmm0, -40(%rbp)
 jmp .UNIQUE7068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7068: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7069: 
	movl	-20(%rbp), %edx
 jmp .UNIQUE7070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7070: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE7071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7071: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE7072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7072: 
	movl	%edx, %esi
 jmp .UNIQUE7073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7073: 
	movl	$.LC118, %edi
 jmp .UNIQUE7074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7074: 
	movl	$1, %eax
 jmp .UNIQUE7075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7075: 
	call	printf
 jmp .UNIQUE7076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7076: 
	addl	$1, -20(%rbp)
.L604:
 jmp .UNIQUE7077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7077: 
	cmpl	$9, -20(%rbp)
 jmp .UNIQUE7078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7078: 
	jle	.L605
 jmp .UNIQUE7079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7079: 
	movl	$.LC119, %edi
 jmp .UNIQUE7080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7080: 
	call	puts
 jmp .UNIQUE7081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7081: 
	movl	$57, %edx
 jmp .UNIQUE7082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7082: 
	movl	$__func__.6014, %esi
 jmp .UNIQUE7083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7083: 
	movl	$80, %edi
 jmp .UNIQUE7084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7084: 
	call	error_checking_malloc
 jmp .UNIQUE7085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7085: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE7086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7086: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7087: 
	movq	16(%rax), %rax
 jmp .UNIQUE7088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7088: 
	movq	120(%rax), %rax
 jmp .UNIQUE7089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7089: 
	movq	(%rax), %rax
 jmp .UNIQUE7090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7090: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE7091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7091: 
	movq	%rax, %rsi
 jmp .UNIQUE7092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7092: 
	movl	$80, %edi
 jmp .UNIQUE7093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7093: 
	call	get_arbitrary_block_in_stack
 jmp .UNIQUE7094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7094: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE7095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7095: 
	jmp	.L606
.L607:
 jmp .UNIQUE7096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7096: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE7097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7097: 
	cltq
 jmp .UNIQUE7098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7098: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE7099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7099: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE7100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7100: 
	addq	%rdx, %rax
 jmp .UNIQUE7101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7101: 
	movq	(%rax), %rax
 jmp .UNIQUE7102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7102: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE7103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7103: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE7104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7104: 
	movl	$.LC69, %edi
 jmp .UNIQUE7105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7105: 
	movl	$1, %eax
 jmp .UNIQUE7106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7106: 
	call	printf
 jmp .UNIQUE7107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7107: 
	addl	$1, -20(%rbp)
.L606:
 jmp .UNIQUE7108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7108: 
	cmpl	$9, -20(%rbp)
 jmp .UNIQUE7109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7109: 
	jle	.L607
 jmp .UNIQUE7110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7110: 
	movl	$10, %edi
 jmp .UNIQUE7111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7111: 
	call	putchar
 jmp .UNIQUE7112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7112: 
	movl	$.LC120, %edi
 jmp .UNIQUE7113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7113: 
	call	puts
 jmp .UNIQUE7114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7114: 
	movl	$66, %edx
 jmp .UNIQUE7115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7115: 
	movl	$__func__.6014, %esi
 jmp .UNIQUE7116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7116: 
	movl	$80, %edi
 jmp .UNIQUE7117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7117: 
	call	error_checking_malloc
 jmp .UNIQUE7118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7118: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE7119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7119: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE7120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7120: 
	jmp	.L608
.L609:
 jmp .UNIQUE7121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7121: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE7122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7122: 
	cltq
 jmp .UNIQUE7123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7123: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE7124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7124: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE7125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7125: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE7126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7126: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE7127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7127: 
	cltq
 jmp .UNIQUE7128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7128: 
	salq	$3, %rax
 jmp .UNIQUE7129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7129: 
	movq	%rax, %rdx
 jmp .UNIQUE7130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7130: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7131: 
	movq	16(%rax), %rax
 jmp .UNIQUE7132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7132: 
	movq	120(%rax), %rax
 jmp .UNIQUE7133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7133: 
	movq	(%rax), %rax
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
	movl	$8, %edi
 jmp .UNIQUE7136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7136: 
	call	get_arbitrary_block_in_stack_with_offset
 jmp .UNIQUE7137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7137: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE7138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7138: 
	cltq
 jmp .UNIQUE7139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7139: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE7140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7140: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE7141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7141: 
	addq	%rdx, %rax
 jmp .UNIQUE7142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7142: 
	movq	(%rax), %rax
 jmp .UNIQUE7143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7143: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE7144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7144: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE7145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7145: 
	movl	$.LC69, %edi
 jmp .UNIQUE7146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7146: 
	movl	$1, %eax
 jmp .UNIQUE7147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7147: 
	call	printf
 jmp .UNIQUE7148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7148: 
	addl	$1, -20(%rbp)
.L608:
 jmp .UNIQUE7149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7149: 
	cmpl	$9, -20(%rbp)
 jmp .UNIQUE7150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7150: 
	jle	.L609
 jmp .UNIQUE7151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7151: 
	movl	$10, %edi
 jmp .UNIQUE7152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7152: 
	call	putchar
 jmp .UNIQUE7153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7153: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7154: 
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
 jmp .UNIQUE7155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7155: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7156: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7157: 
	subq	$16, %rsp
 jmp .UNIQUE7158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7158: 
	movl	%edi, -4(%rbp)
 jmp .UNIQUE7159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7159: 
	movl	%ecx, %eax
 jmp .UNIQUE7160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7160: 
	movb	%sil, -8(%rbp)
 jmp .UNIQUE7161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7161: 
	movb	%dl, -12(%rbp)
 jmp .UNIQUE7162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7162: 
	movb	%al, -16(%rbp)
 jmp .UNIQUE7163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7163: 
	cmpl	$1, -4(%rbp)
 jmp .UNIQUE7164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7164: 
	jne	.L611
 jmp .UNIQUE7165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7165: 
	jmp	.L610
.L611:
 jmp .UNIQUE7166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7166: 
	movsbl	-12(%rbp), %ecx
 jmp .UNIQUE7167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7167: 
	movsbl	-16(%rbp), %edx
 jmp .UNIQUE7168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7168: 
	movsbl	-8(%rbp), %eax
 jmp .UNIQUE7169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7169: 
	movl	-4(%rbp), %esi
 jmp .UNIQUE7170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7170: 
	leal	-1(%rsi), %edi
 jmp .UNIQUE7171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7171: 
	movl	%eax, %esi
 jmp .UNIQUE7172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7172: 
	call	towerOfHanoi
 jmp .UNIQUE7173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7173: 
	movsbl	-8(%rbp), %ecx
 jmp .UNIQUE7174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7174: 
	movsbl	-12(%rbp), %edx
 jmp .UNIQUE7175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7175: 
	movsbl	-16(%rbp), %eax
 jmp .UNIQUE7176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7176: 
	movl	-4(%rbp), %esi
 jmp .UNIQUE7177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7177: 
	leal	-1(%rsi), %edi
 jmp .UNIQUE7178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7178: 
	movl	%eax, %esi
 jmp .UNIQUE7179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7179: 
	call	towerOfHanoi
.L610:
 jmp .UNIQUE7180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7180: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7181: 
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
 jmp .UNIQUE7182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7182: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7183: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7184: 
	pushq	%r13
 jmp .UNIQUE7185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7185: 
	pushq	%r12
 jmp .UNIQUE7186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7186: 
	pushq	%rbx
 jmp .UNIQUE7187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7187: 
	subq	$88, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
 jmp .UNIQUE7188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7188: 
	movl	%edi, -52(%rbp)
 jmp .UNIQUE7189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7189: 
	movl	%ecx, %eax
 jmp .UNIQUE7190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7190: 
	movb	%sil, -56(%rbp)
 jmp .UNIQUE7191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7191: 
	movb	%dl, -60(%rbp)
 jmp .UNIQUE7192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7192: 
	movb	%al, -64(%rbp)
 jmp .UNIQUE7193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7193: 
	movsbl	-64(%rbp), %esi
 jmp .UNIQUE7194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7194: 
	movsbl	-60(%rbp), %edx
 jmp .UNIQUE7195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7195: 
	movsbl	-56(%rbp), %eax
 jmp .UNIQUE7196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7196: 
	movq	$0, 40(%rsp)
 jmp .UNIQUE7197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7197: 
	movq	$0, 32(%rsp)
 jmp .UNIQUE7198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7198: 
	movq	$0, 24(%rsp)
 jmp .UNIQUE7199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7199: 
	movq	$0, 16(%rsp)
 jmp .UNIQUE7200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7200: 
	movq	$0, 8(%rsp)
 jmp .UNIQUE7201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7201: 
	movl	-52(%rbp), %ecx
 jmp .UNIQUE7202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7202: 
	movl	%ecx, (%rsp)
 jmp .UNIQUE7203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7203: 
	movl	$1, %r9d
 jmp .UNIQUE7204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7204: 
	movl	%esi, %r8d
 jmp .UNIQUE7205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7205: 
	movl	%edx, %ecx
 jmp .UNIQUE7206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7206: 
	movl	%eax, %edx
 jmp .UNIQUE7207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7207: 
	movl	$3, %esi
 jmp .UNIQUE7208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7208: 
	movl	$1, %edi
 jmp .UNIQUE7209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7209: 
	movl	$0, %eax
 jmp .UNIQUE7210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7210: 
	call	init_function_params
 jmp .UNIQUE7211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7211: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE7212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7212: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7213: 
	movq	%rax, %rdi
 jmp .UNIQUE7214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7214: 
	call	put_fun_params_into_secure_stack_and_free
 jmp .UNIQUE7215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7215: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE7216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7216: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7217: 
	movq	16(%rax), %rax
 jmp .UNIQUE7218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7218: 
	movq	24(%rax), %rax
 jmp .UNIQUE7219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7219: 
	movl	$0, %esi
 jmp .UNIQUE7220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7220: 
	movq	%rax, %rdi
 jmp .UNIQUE7221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7221: 
	call	get_stack_int_array_element
 jmp .UNIQUE7222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7222: 
	cmpl	$1, %eax
 jmp .UNIQUE7223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7223: 
	jne	.L614
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
	movq	8(%rax), %rax
 jmp .UNIQUE7226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7226: 
	movq	%rax, %rdi
 jmp .UNIQUE7227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7227: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE7228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7228: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7229: 
	movq	%rax, %rdi
 jmp .UNIQUE7230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7230: 
	call	free_fun_params_that_point_to_stack
 jmp .UNIQUE7231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7231: 
	jmp	.L613
.L614:
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
	movq	16(%rax), %rax
 jmp .UNIQUE7234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7234: 
	movq	8(%rax), %rax
 jmp .UNIQUE7235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7235: 
	movl	$1, %esi
 jmp .UNIQUE7236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7236: 
	movq	%rax, %rdi
 jmp .UNIQUE7237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7237: 
	call	get_stack_char_array_element
 jmp .UNIQUE7238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7238: 
	movsbl	%al, %r13d
 jmp .UNIQUE7239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7239: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7240: 
	movq	16(%rax), %rax
 jmp .UNIQUE7241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7241: 
	movq	8(%rax), %rax
 jmp .UNIQUE7242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7242: 
	movl	$2, %esi
 jmp .UNIQUE7243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7243: 
	movq	%rax, %rdi
 jmp .UNIQUE7244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7244: 
	call	get_stack_char_array_element
 jmp .UNIQUE7245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7245: 
	movsbl	%al, %r12d
 jmp .UNIQUE7246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7246: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7247: 
	movq	16(%rax), %rax
 jmp .UNIQUE7248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7248: 
	movq	8(%rax), %rax
 jmp .UNIQUE7249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7249: 
	movl	$0, %esi
 jmp .UNIQUE7250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7250: 
	movq	%rax, %rdi
 jmp .UNIQUE7251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7251: 
	call	get_stack_char_array_element
 jmp .UNIQUE7252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7252: 
	movsbl	%al, %ebx
 jmp .UNIQUE7253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7253: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7254: 
	movq	16(%rax), %rax
 jmp .UNIQUE7255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7255: 
	movq	24(%rax), %rax
 jmp .UNIQUE7256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7256: 
	movl	$0, %esi
 jmp .UNIQUE7257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7257: 
	movq	%rax, %rdi
 jmp .UNIQUE7258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7258: 
	call	get_stack_int_array_element
 jmp .UNIQUE7259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7259: 
	subl	$1, %eax
 jmp .UNIQUE7260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7260: 
	movl	%r13d, %ecx
 jmp .UNIQUE7261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7261: 
	movl	%r12d, %edx
 jmp .UNIQUE7262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7262: 
	movl	%ebx, %esi
 jmp .UNIQUE7263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7263: 
	movl	%eax, %edi
 jmp .UNIQUE7264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7264: 
	call	towerOfHanoi_secure
 jmp .UNIQUE7265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7265: 
	movq	-40(%rbp), %rax
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
	movl	$0, %esi
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
	call	get_stack_char_array_element
 jmp .UNIQUE7271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7271: 
	movsbl	%al, %r13d
 jmp .UNIQUE7272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7272: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7273: 
	movq	16(%rax), %rax
 jmp .UNIQUE7274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7274: 
	movq	8(%rax), %rax
 jmp .UNIQUE7275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7275: 
	movl	$1, %esi
 jmp .UNIQUE7276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7276: 
	movq	%rax, %rdi
 jmp .UNIQUE7277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7277: 
	call	get_stack_char_array_element
 jmp .UNIQUE7278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7278: 
	movsbl	%al, %r12d
 jmp .UNIQUE7279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7279: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7280: 
	movq	16(%rax), %rax
 jmp .UNIQUE7281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7281: 
	movq	8(%rax), %rax
 jmp .UNIQUE7282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7282: 
	movl	$2, %esi
 jmp .UNIQUE7283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7283: 
	movq	%rax, %rdi
 jmp .UNIQUE7284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7284: 
	call	get_stack_char_array_element
 jmp .UNIQUE7285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7285: 
	movsbl	%al, %ebx
 jmp .UNIQUE7286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7286: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7287: 
	movq	16(%rax), %rax
 jmp .UNIQUE7288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7288: 
	movq	24(%rax), %rax
 jmp .UNIQUE7289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7289: 
	movl	$0, %esi
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
	call	get_stack_int_array_element
 jmp .UNIQUE7292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7292: 
	subl	$1, %eax
 jmp .UNIQUE7293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7293: 
	movl	%r13d, %ecx
 jmp .UNIQUE7294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7294: 
	movl	%r12d, %edx
 jmp .UNIQUE7295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7295: 
	movl	%ebx, %esi
 jmp .UNIQUE7296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7296: 
	movl	%eax, %edi
 jmp .UNIQUE7297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7297: 
	call	towerOfHanoi_secure
 jmp .UNIQUE7298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7298: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7299: 
	movq	8(%rax), %rax
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
	call	free_chunks_from_secure_stack
 jmp .UNIQUE7302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7302: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7303: 
	movq	%rax, %rdi
 jmp .UNIQUE7304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7304: 
	call	free_fun_params_that_point_to_stack
.L613:
 jmp .UNIQUE7305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7305: 
	addq	$88, %rsp
 jmp .UNIQUE7306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7306: 
	popq	%rbx
 jmp .UNIQUE7307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7307: 
	popq	%r12
 jmp .UNIQUE7308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7308: 
	popq	%r13
 jmp .UNIQUE7309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7309: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7310: 
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
 jmp .UNIQUE7311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7311: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7312: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7313: 
	pushq	%r13
 jmp .UNIQUE7314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7314: 
	pushq	%r12
 jmp .UNIQUE7315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7315: 
	pushq	%rbx
 jmp .UNIQUE7316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7316: 
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
 jmp .UNIQUE7317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7317: 
	movl	%edi, -52(%rbp)
 jmp .UNIQUE7318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7318: 
	movl	%ecx, %eax
 jmp .UNIQUE7319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7319: 
	movb	%sil, -56(%rbp)
 jmp .UNIQUE7320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7320: 
	movb	%dl, -60(%rbp)
 jmp .UNIQUE7321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7321: 
	movb	%al, -64(%rbp)
 jmp .UNIQUE7322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7322: 
	movsbl	-64(%rbp), %ecx
 jmp .UNIQUE7323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7323: 
	movsbl	-60(%rbp), %edx
 jmp .UNIQUE7324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7324: 
	movsbl	-56(%rbp), %esi
 jmp .UNIQUE7325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7325: 
	movl	-52(%rbp), %eax
 jmp .UNIQUE7326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7326: 
	movl	%eax, %edi
 jmp .UNIQUE7327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7327: 
	call	tower_of_Hanoi_init_secure_template
 jmp .UNIQUE7328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7328: 
	movq	%rax, -40(%rbp)
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
	cmpl	$1, %eax
 jmp .UNIQUE7336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7336: 
	jne	.L617
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
	movq	8(%rax), %rax
 jmp .UNIQUE7339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7339: 
	movq	%rax, %rdi
 jmp .UNIQUE7340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7340: 
	call	free_chunks_from_secure_stack
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
	movq	%rax, %rdi
 jmp .UNIQUE7343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7343: 
	call	free_fun_params_that_point_to_stack
 jmp .UNIQUE7344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7344: 
	jmp	.L616
.L617:
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
	movq	16(%rax), %rax
 jmp .UNIQUE7347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7347: 
	movq	8(%rax), %rax
 jmp .UNIQUE7348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7348: 
	movl	$1, %esi
 jmp .UNIQUE7349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7349: 
	movq	%rax, %rdi
 jmp .UNIQUE7350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7350: 
	call	get_stack_char_array_element
 jmp .UNIQUE7351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7351: 
	movsbl	%al, %r13d
 jmp .UNIQUE7352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7352: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7353: 
	movq	16(%rax), %rax
 jmp .UNIQUE7354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7354: 
	movq	8(%rax), %rax
 jmp .UNIQUE7355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7355: 
	movl	$2, %esi
 jmp .UNIQUE7356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7356: 
	movq	%rax, %rdi
 jmp .UNIQUE7357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7357: 
	call	get_stack_char_array_element
 jmp .UNIQUE7358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7358: 
	movsbl	%al, %r12d
 jmp .UNIQUE7359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7359: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7360: 
	movq	16(%rax), %rax
 jmp .UNIQUE7361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7361: 
	movq	8(%rax), %rax
 jmp .UNIQUE7362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7362: 
	movl	$0, %esi
 jmp .UNIQUE7363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7363: 
	movq	%rax, %rdi
 jmp .UNIQUE7364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7364: 
	call	get_stack_char_array_element
 jmp .UNIQUE7365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7365: 
	movsbl	%al, %ebx
 jmp .UNIQUE7366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7366: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7367: 
	movq	16(%rax), %rax
 jmp .UNIQUE7368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7368: 
	movq	24(%rax), %rax
 jmp .UNIQUE7369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7369: 
	movl	$0, %esi
 jmp .UNIQUE7370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7370: 
	movq	%rax, %rdi
 jmp .UNIQUE7371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7371: 
	call	get_stack_int_array_element
 jmp .UNIQUE7372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7372: 
	subl	$1, %eax
 jmp .UNIQUE7373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7373: 
	movl	%r13d, %ecx
 jmp .UNIQUE7374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7374: 
	movl	%r12d, %edx
 jmp .UNIQUE7375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7375: 
	movl	%ebx, %esi
 jmp .UNIQUE7376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7376: 
	movl	%eax, %edi
 jmp .UNIQUE7377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7377: 
	call	towerOfHanoi_secure_using_template
 jmp .UNIQUE7378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7378: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7379: 
	movq	16(%rax), %rax
 jmp .UNIQUE7380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7380: 
	movq	8(%rax), %rax
 jmp .UNIQUE7381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7381: 
	movl	$0, %esi
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
	call	get_stack_char_array_element
 jmp .UNIQUE7384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7384: 
	movsbl	%al, %r13d
 jmp .UNIQUE7385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7385: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7386: 
	movq	16(%rax), %rax
 jmp .UNIQUE7387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7387: 
	movq	8(%rax), %rax
 jmp .UNIQUE7388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7388: 
	movl	$1, %esi
 jmp .UNIQUE7389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7389: 
	movq	%rax, %rdi
 jmp .UNIQUE7390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7390: 
	call	get_stack_char_array_element
 jmp .UNIQUE7391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7391: 
	movsbl	%al, %r12d
 jmp .UNIQUE7392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7392: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7393: 
	movq	16(%rax), %rax
 jmp .UNIQUE7394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7394: 
	movq	8(%rax), %rax
 jmp .UNIQUE7395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7395: 
	movl	$2, %esi
 jmp .UNIQUE7396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7396: 
	movq	%rax, %rdi
 jmp .UNIQUE7397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7397: 
	call	get_stack_char_array_element
 jmp .UNIQUE7398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7398: 
	movsbl	%al, %ebx
 jmp .UNIQUE7399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7399: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7400: 
	movq	16(%rax), %rax
 jmp .UNIQUE7401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7401: 
	movq	24(%rax), %rax
 jmp .UNIQUE7402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7402: 
	movl	$0, %esi
 jmp .UNIQUE7403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7403: 
	movq	%rax, %rdi
 jmp .UNIQUE7404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7404: 
	call	get_stack_int_array_element
 jmp .UNIQUE7405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7405: 
	subl	$1, %eax
 jmp .UNIQUE7406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7406: 
	movl	%r13d, %ecx
 jmp .UNIQUE7407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7407: 
	movl	%r12d, %edx
 jmp .UNIQUE7408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7408: 
	movl	%ebx, %esi
 jmp .UNIQUE7409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7409: 
	movl	%eax, %edi
 jmp .UNIQUE7410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7410: 
	call	towerOfHanoi_secure_using_template
 jmp .UNIQUE7411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7411: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7412: 
	movq	8(%rax), %rax
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
	call	free_chunks_from_secure_stack
 jmp .UNIQUE7415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7415: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7416: 
	movq	%rax, %rdi
 jmp .UNIQUE7417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7417: 
	call	free_fun_params_that_point_to_stack
.L616:
 jmp .UNIQUE7418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7418: 
	addq	$40, %rsp
 jmp .UNIQUE7419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7419: 
	popq	%rbx
 jmp .UNIQUE7420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7420: 
	popq	%r12
 jmp .UNIQUE7421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7421: 
	popq	%r13
 jmp .UNIQUE7422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7422: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7423: 
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
 jmp .UNIQUE7424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7424: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7425: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7426: 
	pushq	%r13
 jmp .UNIQUE7427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7427: 
	pushq	%r12
 jmp .UNIQUE7428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7428: 
	pushq	%rbx
 jmp .UNIQUE7429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7429: 
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
 jmp .UNIQUE7430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7430: 
	movl	%edi, -68(%rbp)
 jmp .UNIQUE7431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7431: 
	movl	%ecx, %eax
 jmp .UNIQUE7432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7432: 
	movb	%sil, -72(%rbp)
 jmp .UNIQUE7433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7433: 
	movb	%dl, -76(%rbp)
 jmp .UNIQUE7434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7434: 
	movb	%al, -80(%rbp)
 jmp .UNIQUE7435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7435: 
	movsbl	-80(%rbp), %ecx
 jmp .UNIQUE7436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7436: 
	movsbl	-76(%rbp), %edx
 jmp .UNIQUE7437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7437: 
	movsbl	-72(%rbp), %esi
 jmp .UNIQUE7438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7438: 
	movl	-68(%rbp), %eax
 jmp .UNIQUE7439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7439: 
	movl	%eax, %edi
 jmp .UNIQUE7440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7440: 
	call	tower_of_Hanoi_init_secure_template
 jmp .UNIQUE7441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7441: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE7442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7442: 
	movq	-56(%rbp), %rax
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
	movq	%rax, -48(%rbp)
 jmp .UNIQUE7446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7446: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE7447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7447: 
	movq	16(%rax), %rax
 jmp .UNIQUE7448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7448: 
	movq	8(%rax), %rax
 jmp .UNIQUE7449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7449: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE7450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7450: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE7451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7451: 
	movl	$0, %esi
 jmp .UNIQUE7452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7452: 
	movq	%rax, %rdi
 jmp .UNIQUE7453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7453: 
	call	get_stack_int_array_element
 jmp .UNIQUE7454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7454: 
	cmpl	$1, %eax
 jmp .UNIQUE7455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7455: 
	jne	.L620
 jmp .UNIQUE7456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7456: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE7457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7457: 
	movq	8(%rax), %rax
 jmp .UNIQUE7458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7458: 
	movq	%rax, %rdi
 jmp .UNIQUE7459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7459: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE7460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7460: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE7461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7461: 
	movq	%rax, %rdi
 jmp .UNIQUE7462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7462: 
	call	free_fun_params_that_point_to_stack
 jmp .UNIQUE7463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7463: 
	jmp	.L619
.L620:
 jmp .UNIQUE7464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7464: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7465: 
	movl	$1, %esi
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
	call	get_stack_char_array_element
 jmp .UNIQUE7468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7468: 
	movsbl	%al, %r13d
 jmp .UNIQUE7469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7469: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7470: 
	movl	$2, %esi
 jmp .UNIQUE7471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7471: 
	movq	%rax, %rdi
 jmp .UNIQUE7472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7472: 
	call	get_stack_char_array_element
 jmp .UNIQUE7473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7473: 
	movsbl	%al, %r12d
 jmp .UNIQUE7474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7474: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7475: 
	movl	$0, %esi
 jmp .UNIQUE7476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7476: 
	movq	%rax, %rdi
 jmp .UNIQUE7477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7477: 
	call	get_stack_char_array_element
 jmp .UNIQUE7478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7478: 
	movsbl	%al, %ebx
 jmp .UNIQUE7479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7479: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE7480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7480: 
	movl	$0, %esi
 jmp .UNIQUE7481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7481: 
	movq	%rax, %rdi
 jmp .UNIQUE7482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7482: 
	call	get_stack_int_array_element
 jmp .UNIQUE7483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7483: 
	subl	$1, %eax
 jmp .UNIQUE7484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7484: 
	movl	%r13d, %ecx
 jmp .UNIQUE7485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7485: 
	movl	%r12d, %edx
 jmp .UNIQUE7486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7486: 
	movl	%ebx, %esi
 jmp .UNIQUE7487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7487: 
	movl	%eax, %edi
 jmp .UNIQUE7488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7488: 
	call	towerOfHanoi_secure_using_template
 jmp .UNIQUE7489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7489: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7490: 
	movl	$0, %esi
 jmp .UNIQUE7491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7491: 
	movq	%rax, %rdi
 jmp .UNIQUE7492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7492: 
	call	get_stack_char_array_element
 jmp .UNIQUE7493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7493: 
	movsbl	%al, %r13d
 jmp .UNIQUE7494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7494: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7495: 
	movl	$1, %esi
 jmp .UNIQUE7496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7496: 
	movq	%rax, %rdi
 jmp .UNIQUE7497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7497: 
	call	get_stack_char_array_element
 jmp .UNIQUE7498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7498: 
	movsbl	%al, %r12d
 jmp .UNIQUE7499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7499: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE7500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7500: 
	movl	$2, %esi
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
	call	get_stack_char_array_element
 jmp .UNIQUE7503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7503: 
	movsbl	%al, %ebx
 jmp .UNIQUE7504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7504: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE7505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7505: 
	movl	$0, %esi
 jmp .UNIQUE7506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7506: 
	movq	%rax, %rdi
 jmp .UNIQUE7507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7507: 
	call	get_stack_int_array_element
 jmp .UNIQUE7508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7508: 
	subl	$1, %eax
 jmp .UNIQUE7509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7509: 
	movl	%r13d, %ecx
 jmp .UNIQUE7510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7510: 
	movl	%r12d, %edx
 jmp .UNIQUE7511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7511: 
	movl	%ebx, %esi
 jmp .UNIQUE7512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7512: 
	movl	%eax, %edi
 jmp .UNIQUE7513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7513: 
	call	towerOfHanoi_secure_using_template
 jmp .UNIQUE7514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7514: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE7515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7515: 
	movq	8(%rax), %rax
 jmp .UNIQUE7516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7516: 
	movq	%rax, %rdi
 jmp .UNIQUE7517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7517: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE7518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7518: 
	movq	-56(%rbp), %rax
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
	call	free_fun_params_that_point_to_stack
.L619:
 jmp .UNIQUE7521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7521: 
	addq	$56, %rsp
 jmp .UNIQUE7522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7522: 
	popq	%rbx
 jmp .UNIQUE7523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7523: 
	popq	%r12
 jmp .UNIQUE7524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7524: 
	popq	%r13
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
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE7530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7530: 
	movl	$0, -4(%rbp)
 jmp .UNIQUE7531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7531: 
	jmp	.L623
.L626:
 jmp .UNIQUE7532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7532: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE7533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7533: 
	movslq	%eax, %rdx
 jmp .UNIQUE7534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7534: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7535: 
	addq	%rdx, %rax
 jmp .UNIQUE7536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7536: 
	movzbl	(%rax), %eax
 jmp .UNIQUE7537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7537: 
	cmpb	$66, %al
 jmp .UNIQUE7538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7538: 
	je	.L624
 jmp .UNIQUE7539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7539: 
	movl	$0, %eax
 jmp .UNIQUE7540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7540: 
	jmp	.L625
.L624:
 jmp .UNIQUE7541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7541: 
	addl	$1, -4(%rbp)
.L623:
 jmp .UNIQUE7542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7542: 
	cmpl	$1, -4(%rbp)
 jmp .UNIQUE7543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7543: 
	jle	.L626
 jmp .UNIQUE7544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7544: 
	movl	$1, %eax
.L625:
 jmp .UNIQUE7545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7545: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7546: 
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
 jmp .UNIQUE7547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7547: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7548: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7549: 
	subq	$112, %rsp
 jmp .UNIQUE7550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7550: 
	movq	%fs:40, %rax
 jmp .UNIQUE7551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7551: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE7552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7552: 
	xorl	%eax, %eax
 jmp .UNIQUE7553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7553: 
	movl	$0, -92(%rbp)
 jmp .UNIQUE7554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7554: 
	movq	$foo, -64(%rbp)
 jmp .UNIQUE7555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7555: 
	movq	$main, -56(%rbp)
 jmp .UNIQUE7556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7556: 
	movq	$foo2, -48(%rbp)
 jmp .UNIQUE7557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7557: 
	movq	$find_keyshares, -40(%rbp)
 jmp .UNIQUE7558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7558: 
	movl	$0, -96(%rbp)
 jmp .UNIQUE7559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7559: 
	movq	$__executable_start, -32(%rbp)
 jmp .UNIQUE7560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7560: 
	movq	$__etext, -24(%rbp)
 jmp .UNIQUE7561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7561: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE7562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7562: 
	jmp	.L628
.L629:
 jmp .UNIQUE7563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7563: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7564: 
	cltq
 jmp .UNIQUE7565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7565: 
	movb	$0, -16(%rbp,%rax)
 jmp .UNIQUE7566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7566: 
	addl	$1, -100(%rbp)
.L628:
 jmp .UNIQUE7567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7567: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE7568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7568: 
	jle	.L629
 jmp .UNIQUE7569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7569: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE7570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7570: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE7571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7571: 
	jmp	.L630
.L634:
 jmp .UNIQUE7572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7572: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7573: 
	movzbl	(%rax), %eax
 jmp .UNIQUE7574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7574: 
	cmpb	$-21, %al
 jmp .UNIQUE7575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7575: 
	jne	.L631
 jmp .UNIQUE7576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7576: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7577: 
	addq	$1, %rax
 jmp .UNIQUE7578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7578: 
	movzbl	(%rax), %eax
 jmp .UNIQUE7579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7579: 
	cmpb	$7, %al
 jmp .UNIQUE7580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7580: 
	jne	.L631
 jmp .UNIQUE7581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7581: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7582: 
	addq	$2, %rax
 jmp .UNIQUE7583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7583: 
	movq	%rax, %rdi
 jmp .UNIQUE7584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7584: 
	call	check_next_canaries
 jmp .UNIQUE7585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7585: 
	testl	%eax, %eax
 jmp .UNIQUE7586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7586: 
	je	.L631
 jmp .UNIQUE7587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7587: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE7588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7588: 
	jmp	.L632
.L633:
 jmp .UNIQUE7589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7589: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7590: 
	cltq
 jmp .UNIQUE7591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7591: 
	movzbl	-16(%rbp,%rax), %edx
 jmp .UNIQUE7592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7592: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7593: 
	cltq
 jmp .UNIQUE7594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7594: 
	leaq	4(%rax), %rcx
 jmp .UNIQUE7595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7595: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7596: 
	addq	%rcx, %rax
 jmp .UNIQUE7597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7597: 
	movzbl	(%rax), %eax
 jmp .UNIQUE7598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7598: 
	xorl	%eax, %edx
 jmp .UNIQUE7599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7599: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7600: 
	cltq
 jmp .UNIQUE7601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7601: 
	movb	%dl, -16(%rbp,%rax)
 jmp .UNIQUE7602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7602: 
	addl	$1, -100(%rbp)
.L632:
 jmp .UNIQUE7603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7603: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE7604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7604: 
	jle	.L633
.L631:
 jmp .UNIQUE7605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7605: 
	addq	$1, -88(%rbp)
.L630:
 jmp .UNIQUE7606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7606: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7607: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE7608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7608: 
	jbe	.L634
 jmp .UNIQUE7609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7609: 
	movl	$0, -96(%rbp)
 jmp .UNIQUE7610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7610: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE7611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7611: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE7612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7612: 
	movq	$0, -80(%rbp)
 jmp .UNIQUE7613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7613: 
	jmp	.L635
.L639:
 jmp .UNIQUE7614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7614: 
	cmpl	$0, -96(%rbp)
 jmp .UNIQUE7615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7615: 
	jne	.L636
 jmp .UNIQUE7616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7616: 
	addq	$4, -80(%rbp)
 jmp .UNIQUE7617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7617: 
	movl	$1, -96(%rbp)
 jmp .UNIQUE7618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7618: 
	jmp	.L635
.L636:
 jmp .UNIQUE7619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7619: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE7620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7620: 
	jmp	.L637
.L638:
 jmp .UNIQUE7621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7621: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7622: 
	cltq
 jmp .UNIQUE7623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7623: 
	movzbl	-16(%rbp,%rax), %edx
 jmp .UNIQUE7624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7624: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7625: 
	movslq	%eax, %rcx
 jmp .UNIQUE7626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7626: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE7627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7627: 
	addq	%rax, %rcx
 jmp .UNIQUE7628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7628: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7629: 
	addq	%rcx, %rax
 jmp .UNIQUE7630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7630: 
	movzbl	(%rax), %eax
 jmp .UNIQUE7631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7631: 
	xorl	%eax, %edx
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
	movb	%dl, -16(%rbp,%rax)
 jmp .UNIQUE7635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7635: 
	addl	$1, -100(%rbp)
.L637:
 jmp .UNIQUE7636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7636: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE7637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7637: 
	jle	.L638
 jmp .UNIQUE7638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7638: 
	addq	$5, -80(%rbp)
 jmp .UNIQUE7639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7639: 
	movl	$0, -96(%rbp)
.L635:
 jmp .UNIQUE7640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7640: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE7641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7641: 
	cmpq	%rax, -80(%rbp)
 jmp .UNIQUE7642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7642: 
	jl	.L639
 jmp .UNIQUE7643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7643: 
	movl	$0, -96(%rbp)
 jmp .UNIQUE7644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7644: 
	movq	entire_stack_memory_chunk(%rip), %rax
 jmp .UNIQUE7645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7645: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE7646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7646: 
	movq	$0, -72(%rbp)
 jmp .UNIQUE7647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7647: 
	jmp	.L640
.L644:
 jmp .UNIQUE7648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7648: 
	cmpl	$0, -96(%rbp)
 jmp .UNIQUE7649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7649: 
	jne	.L641
 jmp .UNIQUE7650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7650: 
	addq	$4, -72(%rbp)
 jmp .UNIQUE7651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7651: 
	movl	$1, -96(%rbp)
 jmp .UNIQUE7652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7652: 
	jmp	.L640
.L641:
 jmp .UNIQUE7653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7653: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE7654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7654: 
	jmp	.L642
.L643:
 jmp .UNIQUE7655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7655: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7656: 
	cltq
 jmp .UNIQUE7657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7657: 
	movzbl	-16(%rbp,%rax), %edx
 jmp .UNIQUE7658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7658: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7659: 
	movslq	%eax, %rcx
 jmp .UNIQUE7660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7660: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE7661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7661: 
	addq	%rax, %rcx
 jmp .UNIQUE7662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7662: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE7663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7663: 
	addq	%rcx, %rax
 jmp .UNIQUE7664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7664: 
	movzbl	(%rax), %eax
 jmp .UNIQUE7665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7665: 
	xorl	%eax, %edx
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
	cltq
 jmp .UNIQUE7668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7668: 
	movb	%dl, -16(%rbp,%rax)
 jmp .UNIQUE7669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7669: 
	addl	$1, -100(%rbp)
.L642:
 jmp .UNIQUE7670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7670: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE7671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7671: 
	jle	.L643
 jmp .UNIQUE7672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7672: 
	addq	$5, -72(%rbp)
 jmp .UNIQUE7673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7673: 
	movl	$0, -96(%rbp)
.L640:
 jmp .UNIQUE7674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7674: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE7675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7675: 
	cmpq	%rax, -72(%rbp)
 jmp .UNIQUE7676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7676: 
	jl	.L644
 jmp .UNIQUE7677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7677: 
	movl	$10, %edi
 jmp .UNIQUE7678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7678: 
	call	putchar
 jmp .UNIQUE7679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7679: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE7680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7680: 
	jmp	.L645
.L646:
 jmp .UNIQUE7681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7681: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7682: 
	cltq
 jmp .UNIQUE7683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7683: 
	movzbl	-16(%rbp,%rax), %eax
 jmp .UNIQUE7684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7684: 
	movzbl	%al, %edx
 jmp .UNIQUE7685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7685: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE7686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7686: 
	movl	%eax, %esi
 jmp .UNIQUE7687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7687: 
	movl	$.LC121, %edi
 jmp .UNIQUE7688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7688: 
	movl	$0, %eax
 jmp .UNIQUE7689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7689: 
	call	printf
 jmp .UNIQUE7690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7690: 
	addl	$1, -100(%rbp)
.L645:
 jmp .UNIQUE7691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7691: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE7692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7692: 
	jle	.L646
 jmp .UNIQUE7693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7693: 
	nop
 jmp .UNIQUE7694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7694: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7695: 
	xorq	%fs:40, %rax
 jmp .UNIQUE7696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7696: 
	je	.L648
 jmp .UNIQUE7697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7697: 
	call	__stack_chk_fail
.L648:
 jmp .UNIQUE7698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7698: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE7699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7699: 
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
 jmp .UNIQUE7700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7700: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE7701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7701: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE7702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7702: 
	movl	$.LC122, %edi
 jmp .UNIQUE7703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7703: 
	call	puts
 jmp .UNIQUE7704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7704: 
	movl	$0, %eax
 jmp .UNIQUE7705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7705: 
	call	find_keyshares
 jmp .UNIQUE7706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7706: 
	popq	%rbp
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
	pushq	%r12
 jmp .UNIQUE7711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7711: 
	pushq	%rbx
 jmp .UNIQUE7712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7712: 
	subq	$96, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
 jmp .UNIQUE7713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7713: 
	movl	%edi, -36(%rbp)
 jmp .UNIQUE7714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7714: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE7715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7715: 
	movl	%eax, %esi
 jmp .UNIQUE7716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7716: 
	movl	$.LC123, %edi
 jmp .UNIQUE7717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7717: 
	movl	$0, %eax
 jmp .UNIQUE7718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7718: 
	call	printf
 jmp .UNIQUE7719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7719: 
	movq	$0, 56(%rsp)
 jmp .UNIQUE7720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7720: 
	movq	$0, 48(%rsp)
 jmp .UNIQUE7721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7721: 
	movq	$4, 40(%rsp)
 jmp .UNIQUE7722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7722: 
	movq	$1, 32(%rsp)
 jmp .UNIQUE7723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7723: 
	movq	$0, 24(%rsp)
 jmp .UNIQUE7724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7724: 
	movq	$0, 16(%rsp)
 jmp .UNIQUE7725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7725: 
	movq	$0, 8(%rsp)
 jmp .UNIQUE7726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7726: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE7727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7727: 
	movl	%eax, (%rsp)
 jmp .UNIQUE7728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7728: 
	movl	$1, %r9d
 jmp .UNIQUE7729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7729: 
	movl	$4, %r8d
 jmp .UNIQUE7730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7730: 
	movl	$0, %ecx
 jmp .UNIQUE7731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7731: 
	movl	$1, %edx
 jmp .UNIQUE7732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7732: 
	movl	$1, %esi
 jmp .UNIQUE7733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7733: 
	movl	$1, %edi
 jmp .UNIQUE7734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7734: 
	movl	$0, %eax
 jmp .UNIQUE7735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7735: 
	call	init_function_params_with_uninitialised_elements
 jmp .UNIQUE7736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7736: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE7737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7737: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7738: 
	movq	%rax, %rdi
 jmp .UNIQUE7739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7739: 
	call	put_fun_params_into_secure_stack_and_free
 jmp .UNIQUE7740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7740: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE7741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7741: 
	movl	$.LC124, %edi
 jmp .UNIQUE7742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7742: 
	call	puts
 jmp .UNIQUE7743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7743: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7744: 
	movq	16(%rax), %rax
 jmp .UNIQUE7745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7745: 
	movq	24(%rax), %rax
 jmp .UNIQUE7746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7746: 
	movl	$0, %esi
 jmp .UNIQUE7747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7747: 
	movq	%rax, %rdi
 jmp .UNIQUE7748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7748: 
	call	get_stack_int_array_element
 jmp .UNIQUE7749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7749: 
	cltq
 jmp .UNIQUE7750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7750: 
	salq	$2, %rax
 jmp .UNIQUE7751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7751: 
	movl	$30, %edx
 jmp .UNIQUE7752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7752: 
	movl	$__func__.6134, %esi
 jmp .UNIQUE7753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7753: 
	movq	%rax, %rdi
 jmp .UNIQUE7754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7754: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE7755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7755: 
	movq	%rax, %rdx
 jmp .UNIQUE7756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7756: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7757: 
	movq	16(%rax), %rax
 jmp .UNIQUE7758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7758: 
	movq	96(%rax), %rax
 jmp .UNIQUE7759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7759: 
	movl	$0, %esi
 jmp .UNIQUE7760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7760: 
	movq	%rax, %rdi
 jmp .UNIQUE7761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7761: 
	call	set_stack_pointer_array_element
 jmp .UNIQUE7762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7762: 
	movl	$.LC125, %edi
 jmp .UNIQUE7763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7763: 
	call	puts
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
	movq	24(%rax), %rax
 jmp .UNIQUE7767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7767: 
	movl	$1, %edx
 jmp .UNIQUE7768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7768: 
	movl	$3, %esi
 jmp .UNIQUE7769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7769: 
	movq	%rax, %rdi
 jmp .UNIQUE7770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7770: 
	call	set_stack_int_array_element
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
	movl	$3, %esi
 jmp .UNIQUE7775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7775: 
	movq	%rax, %rdi
 jmp .UNIQUE7776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7776: 
	call	get_stack_int_array_element
 jmp .UNIQUE7777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7777: 
	subl	$1, %eax
 jmp .UNIQUE7778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7778: 
	movslq	%eax, %rbx
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
	movq	96(%rax), %rax
 jmp .UNIQUE7782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7782: 
	movl	$0, %esi
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
	call	get_stack_pointer_array_element
 jmp .UNIQUE7785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7785: 
	movl	$2, %edx
 jmp .UNIQUE7786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7786: 
	movq	%rbx, %rsi
 jmp .UNIQUE7787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7787: 
	movq	%rax, %rdi
 jmp .UNIQUE7788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7788: 
	call	set_int_array_element
 jmp .UNIQUE7789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7789: 
	movl	$.LC126, %edi
 jmp .UNIQUE7790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7790: 
	call	puts
 jmp .UNIQUE7791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7791: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7792: 
	movq	16(%rax), %rax
 jmp .UNIQUE7793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7793: 
	movq	24(%rax), %rax
 jmp .UNIQUE7794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7794: 
	movl	$3, %edx
 jmp .UNIQUE7795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7795: 
	movl	$1, %esi
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
	call	set_stack_int_array_element
 jmp .UNIQUE7798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7798: 
	jmp	.L651
.L657:
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
	movq	8(%rax), %rax
 jmp .UNIQUE7802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7802: 
	movl	$0, %edx
 jmp .UNIQUE7803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7803: 
	movl	$0, %esi
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
	call	set_stack_char_array_element
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
	movl	$2, %edx
 jmp .UNIQUE7810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7810: 
	movl	$2, %esi
 jmp .UNIQUE7811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7811: 
	movq	%rax, %rdi
 jmp .UNIQUE7812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7812: 
	call	set_stack_int_array_element
 jmp .UNIQUE7813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7813: 
	jmp	.L652
.L655:
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
	movl	$1, %esi
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
	movl	%eax, %ebx
 jmp .UNIQUE7821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7821: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7822: 
	movq	16(%rax), %rax
 jmp .UNIQUE7823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7823: 
	movq	24(%rax), %rax
 jmp .UNIQUE7824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7824: 
	movl	$2, %esi
 jmp .UNIQUE7825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7825: 
	movq	%rax, %rdi
 jmp .UNIQUE7826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7826: 
	call	get_stack_int_array_element
 jmp .UNIQUE7827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7827: 
	movl	%eax, %ecx
 jmp .UNIQUE7828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7828: 
	movl	%ebx, %eax
 jmp .UNIQUE7829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7829: 
	cltd
 jmp .UNIQUE7830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7830: 
	idivl	%ecx
 jmp .UNIQUE7831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7831: 
	movl	%edx, %ecx
 jmp .UNIQUE7832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7832: 
	movl	%ecx, %eax
 jmp .UNIQUE7833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7833: 
	testl	%eax, %eax
 jmp .UNIQUE7834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7834: 
	jne	.L653
 jmp .UNIQUE7835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7835: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7836: 
	movq	16(%rax), %rax
 jmp .UNIQUE7837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7837: 
	movq	8(%rax), %rax
 jmp .UNIQUE7838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7838: 
	movl	$1, %edx
 jmp .UNIQUE7839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7839: 
	movl	$0, %esi
 jmp .UNIQUE7840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7840: 
	movq	%rax, %rdi
 jmp .UNIQUE7841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7841: 
	call	set_stack_char_array_element
 jmp .UNIQUE7842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7842: 
	jmp	.L654
.L653:
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
	movq	24(%rax), %rax
 jmp .UNIQUE7846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7846: 
	movl	$2, %esi
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
	call	get_stack_int_array_element
 jmp .UNIQUE7849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7849: 
	leal	1(%rax), %edx
 jmp .UNIQUE7850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7850: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7851: 
	movq	16(%rax), %rax
 jmp .UNIQUE7852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7852: 
	movq	24(%rax), %rax
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
.L652:
 jmp .UNIQUE7856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7856: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7857: 
	movq	16(%rax), %rax
 jmp .UNIQUE7858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7858: 
	movq	24(%rax), %rax
 jmp .UNIQUE7859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7859: 
	movl	$2, %esi
 jmp .UNIQUE7860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7860: 
	movq	%rax, %rdi
 jmp .UNIQUE7861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7861: 
	call	get_stack_int_array_element
 jmp .UNIQUE7862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7862: 
	movl	%eax, %ebx
 jmp .UNIQUE7863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7863: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7864: 
	movq	16(%rax), %rax
 jmp .UNIQUE7865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7865: 
	movq	24(%rax), %rax
 jmp .UNIQUE7866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7866: 
	movl	$1, %esi
 jmp .UNIQUE7867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7867: 
	movq	%rax, %rdi
 jmp .UNIQUE7868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7868: 
	call	get_stack_int_array_element
 jmp .UNIQUE7869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7869: 
	movl	%eax, %edx
 jmp .UNIQUE7870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7870: 
	shrl	$31, %edx
 jmp .UNIQUE7871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7871: 
	addl	%edx, %eax
 jmp .UNIQUE7872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7872: 
	sarl	%eax
 jmp .UNIQUE7873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7873: 
	addl	$1, %eax
 jmp .UNIQUE7874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7874: 
	cmpl	%eax, %ebx
 jmp .UNIQUE7875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7875: 
	jle	.L655
.L654:
 jmp .UNIQUE7876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7876: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7877: 
	movq	16(%rax), %rax
 jmp .UNIQUE7878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7878: 
	movq	8(%rax), %rax
 jmp .UNIQUE7879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7879: 
	movl	$0, %esi
 jmp .UNIQUE7880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7880: 
	movq	%rax, %rdi
 jmp .UNIQUE7881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7881: 
	call	get_stack_char_array_element
 jmp .UNIQUE7882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7882: 
	testb	%al, %al
 jmp .UNIQUE7883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7883: 
	jne	.L656
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
	movq	24(%rax), %rax
 jmp .UNIQUE7887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7887: 
	movl	$3, %esi
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
	call	get_stack_int_array_element
 jmp .UNIQUE7890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7890: 
	leal	1(%rax), %edx
 jmp .UNIQUE7891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7891: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7892: 
	movq	16(%rax), %rax
 jmp .UNIQUE7893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7893: 
	movq	24(%rax), %rax
 jmp .UNIQUE7894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7894: 
	movl	$3, %esi
 jmp .UNIQUE7895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7895: 
	movq	%rax, %rdi
 jmp .UNIQUE7896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7896: 
	call	set_stack_int_array_element
 jmp .UNIQUE7897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7897: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7898: 
	movq	16(%rax), %rax
 jmp .UNIQUE7899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7899: 
	movq	24(%rax), %rax
 jmp .UNIQUE7900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7900: 
	movl	$1, %esi
 jmp .UNIQUE7901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7901: 
	movq	%rax, %rdi
 jmp .UNIQUE7902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7902: 
	call	get_stack_int_array_element
 jmp .UNIQUE7903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7903: 
	movl	%eax, %r12d
 jmp .UNIQUE7904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7904: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7905: 
	movq	16(%rax), %rax
 jmp .UNIQUE7906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7906: 
	movq	24(%rax), %rax
 jmp .UNIQUE7907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7907: 
	movl	$3, %esi
 jmp .UNIQUE7908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7908: 
	movq	%rax, %rdi
 jmp .UNIQUE7909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7909: 
	call	get_stack_int_array_element
 jmp .UNIQUE7910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7910: 
	subl	$1, %eax
 jmp .UNIQUE7911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7911: 
	movslq	%eax, %rbx
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
	movq	96(%rax), %rax
 jmp .UNIQUE7915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7915: 
	movl	$0, %esi
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
	call	get_stack_pointer_array_element
 jmp .UNIQUE7918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7918: 
	movl	%r12d, %edx
 jmp .UNIQUE7919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7919: 
	movq	%rbx, %rsi
 jmp .UNIQUE7920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7920: 
	movq	%rax, %rdi
 jmp .UNIQUE7921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7921: 
	call	set_int_array_element
.L656:
 jmp .UNIQUE7922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7922: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7923: 
	movq	16(%rax), %rax
 jmp .UNIQUE7924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7924: 
	movq	24(%rax), %rax
 jmp .UNIQUE7925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7925: 
	movl	$1, %esi
 jmp .UNIQUE7926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7926: 
	movq	%rax, %rdi
 jmp .UNIQUE7927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7927: 
	call	get_stack_int_array_element
 jmp .UNIQUE7928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7928: 
	leal	2(%rax), %edx
 jmp .UNIQUE7929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7929: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7930: 
	movq	16(%rax), %rax
 jmp .UNIQUE7931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7931: 
	movq	24(%rax), %rax
 jmp .UNIQUE7932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7932: 
	movl	$1, %esi
 jmp .UNIQUE7933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7933: 
	movq	%rax, %rdi
 jmp .UNIQUE7934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7934: 
	call	set_stack_int_array_element
.L651:
 jmp .UNIQUE7935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7935: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7936: 
	movq	16(%rax), %rax
 jmp .UNIQUE7937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7937: 
	movq	24(%rax), %rax
 jmp .UNIQUE7938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7938: 
	movl	$1, %esi
 jmp .UNIQUE7939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7939: 
	movq	%rax, %rdi
 jmp .UNIQUE7940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7940: 
	call	get_stack_int_array_element
 jmp .UNIQUE7941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7941: 
	movl	%eax, %ebx
 jmp .UNIQUE7942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7942: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7943: 
	movq	16(%rax), %rax
 jmp .UNIQUE7944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7944: 
	movq	24(%rax), %rax
 jmp .UNIQUE7945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7945: 
	movl	$0, %esi
 jmp .UNIQUE7946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7946: 
	movq	%rax, %rdi
 jmp .UNIQUE7947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7947: 
	call	get_stack_int_array_element
 jmp .UNIQUE7948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7948: 
	cmpl	%eax, %ebx
 jmp .UNIQUE7949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7949: 
	jle	.L657
 jmp .UNIQUE7950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7950: 
	movl	$.LC127, %edi
 jmp .UNIQUE7951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7951: 
	call	puts
 jmp .UNIQUE7952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7952: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7953: 
	movq	16(%rax), %rax
 jmp .UNIQUE7954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7954: 
	movq	24(%rax), %rax
 jmp .UNIQUE7955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7955: 
	movl	$0, %edx
 jmp .UNIQUE7956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7956: 
	movl	$1, %esi
 jmp .UNIQUE7957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7957: 
	movq	%rax, %rdi
 jmp .UNIQUE7958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7958: 
	call	set_stack_int_array_element
 jmp .UNIQUE7959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7959: 
	jmp	.L658
.L659:
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
	movl	$1, %esi
 jmp .UNIQUE7964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7964: 
	movq	%rax, %rdi
 jmp .UNIQUE7965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7965: 
	call	get_stack_int_array_element
 jmp .UNIQUE7966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7966: 
	movslq	%eax, %rbx
 jmp .UNIQUE7967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7967: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7968: 
	movq	16(%rax), %rax
 jmp .UNIQUE7969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7969: 
	movq	96(%rax), %rax
 jmp .UNIQUE7970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7970: 
	movl	$0, %esi
 jmp .UNIQUE7971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7971: 
	movq	%rax, %rdi
 jmp .UNIQUE7972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7972: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE7973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7973: 
	movq	%rbx, %rsi
 jmp .UNIQUE7974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7974: 
	movq	%rax, %rdi
 jmp .UNIQUE7975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7975: 
	call	get_int_array_element
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
	movl	$.LC22, %edi
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
	movq	-24(%rbp), %rax
 jmp .UNIQUE7981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7981: 
	movq	16(%rax), %rax
 jmp .UNIQUE7982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7982: 
	movq	24(%rax), %rax
 jmp .UNIQUE7983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7983: 
	movl	$1, %esi
 jmp .UNIQUE7984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7984: 
	movq	%rax, %rdi
 jmp .UNIQUE7985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7985: 
	call	get_stack_int_array_element
 jmp .UNIQUE7986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7986: 
	leal	1(%rax), %edx
 jmp .UNIQUE7987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7987: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7988: 
	movq	16(%rax), %rax
 jmp .UNIQUE7989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7989: 
	movq	24(%rax), %rax
 jmp .UNIQUE7990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7990: 
	movl	$1, %esi
 jmp .UNIQUE7991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7991: 
	movq	%rax, %rdi
 jmp .UNIQUE7992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7992: 
	call	set_stack_int_array_element
.L658:
 jmp .UNIQUE7993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7993: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE7994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7994: 
	movq	16(%rax), %rax
 jmp .UNIQUE7995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7995: 
	movq	24(%rax), %rax
 jmp .UNIQUE7996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7996: 
	movl	$1, %esi
 jmp .UNIQUE7997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7997: 
	movq	%rax, %rdi
 jmp .UNIQUE7998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7998: 
	call	get_stack_int_array_element
 jmp .UNIQUE7999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7999: 
	movl	%eax, %ebx
 jmp .UNIQUE8000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8000: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8001: 
	movq	16(%rax), %rax
 jmp .UNIQUE8002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8002: 
	movq	24(%rax), %rax
 jmp .UNIQUE8003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8003: 
	movl	$3, %esi
 jmp .UNIQUE8004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8004: 
	movq	%rax, %rdi
 jmp .UNIQUE8005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8005: 
	call	get_stack_int_array_element
 jmp .UNIQUE8006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8006: 
	cmpl	%eax, %ebx
 jmp .UNIQUE8007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8007: 
	jl	.L659
 jmp .UNIQUE8008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8008: 
	movl	$.LC128, %edi
 jmp .UNIQUE8009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8009: 
	call	puts
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
	movq	24(%rax), %rax
 jmp .UNIQUE8013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8013: 
	movl	$3, %esi
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
	call	get_stack_int_array_element
 jmp .UNIQUE8016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8016: 
	movl	%eax, %esi
 jmp .UNIQUE8017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8017: 
	movl	$.LC129, %edi
 jmp .UNIQUE8018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8018: 
	movl	$0, %eax
 jmp .UNIQUE8019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8019: 
	call	printf
 jmp .UNIQUE8020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8020: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8021: 
	movq	16(%rax), %rax
 jmp .UNIQUE8022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8022: 
	movq	96(%rax), %rax
 jmp .UNIQUE8023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8023: 
	movl	$0, %esi
 jmp .UNIQUE8024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8024: 
	movq	%rax, %rdi
 jmp .UNIQUE8025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8025: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8026: 
	movq	%rax, %rdi
 jmp .UNIQUE8027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8027: 
	call	managed_secure_free
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
	movq	8(%rax), %rax
 jmp .UNIQUE8030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8030: 
	movq	%rax, %rdi
 jmp .UNIQUE8031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8031: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE8032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8032: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8033: 
	movq	%rax, %rdi
 jmp .UNIQUE8034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8034: 
	call	free_fun_params_that_point_to_stack
 jmp .UNIQUE8035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8035: 
	addq	$96, %rsp
 jmp .UNIQUE8036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8036: 
	popq	%rbx
 jmp .UNIQUE8037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8037: 
	popq	%r12
 jmp .UNIQUE8038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8038: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE8039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8039: 
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
 jmp .UNIQUE8040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8040: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE8041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8041: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE8042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8042: 
	subq	$48, %rsp
 jmp .UNIQUE8043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8043: 
	movl	%edi, -36(%rbp)
 jmp .UNIQUE8044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8044: 
	movb	$0, -21(%rbp)
 jmp .UNIQUE8045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8045: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE8046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8046: 
	movl	%eax, %esi
 jmp .UNIQUE8047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8047: 
	movl	$.LC123, %edi
 jmp .UNIQUE8048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8048: 
	movl	$0, %eax
 jmp .UNIQUE8049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8049: 
	call	printf
 jmp .UNIQUE8050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8050: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE8051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8051: 
	cltq
 jmp .UNIQUE8052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8052: 
	salq	$2, %rax
 jmp .UNIQUE8053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8053: 
	movl	$122, %edx
 jmp .UNIQUE8054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8054: 
	movl	$__func__.6152, %esi
 jmp .UNIQUE8055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8055: 
	movq	%rax, %rdi
 jmp .UNIQUE8056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8056: 
	call	error_checking_malloc
 jmp .UNIQUE8057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8057: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE8058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8058: 
	movl	$1, -12(%rbp)
 jmp .UNIQUE8059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8059: 
	movl	-12(%rbp), %eax
 jmp .UNIQUE8060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8060: 
	cltq
 jmp .UNIQUE8061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8061: 
	salq	$2, %rax
 jmp .UNIQUE8062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8062: 
	leaq	-4(%rax), %rdx
 jmp .UNIQUE8063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8063: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE8064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8064: 
	addq	%rdx, %rax
 jmp .UNIQUE8065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8065: 
	movl	$2, (%rax)
 jmp .UNIQUE8066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8066: 
	movl	$3, -20(%rbp)
 jmp .UNIQUE8067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8067: 
	jmp	.L661
.L667:
 jmp .UNIQUE8068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8068: 
	movb	$0, -21(%rbp)
 jmp .UNIQUE8069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8069: 
	movl	$2, -16(%rbp)
 jmp .UNIQUE8070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8070: 
	jmp	.L662
.L665:
 jmp .UNIQUE8071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8071: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE8072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8072: 
	cltd
 jmp .UNIQUE8073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8073: 
	idivl	-16(%rbp)
 jmp .UNIQUE8074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8074: 
	movl	%edx, %eax
 jmp .UNIQUE8075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8075: 
	testl	%eax, %eax
 jmp .UNIQUE8076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8076: 
	jne	.L663
 jmp .UNIQUE8077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8077: 
	movb	$1, -21(%rbp)
 jmp .UNIQUE8078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8078: 
	jmp	.L664
.L663:
 jmp .UNIQUE8079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8079: 
	addl	$1, -16(%rbp)
.L662:
 jmp .UNIQUE8080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8080: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE8081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8081: 
	movl	%eax, %edx
 jmp .UNIQUE8082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8082: 
	shrl	$31, %edx
 jmp .UNIQUE8083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8083: 
	addl	%edx, %eax
 jmp .UNIQUE8084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8084: 
	sarl	%eax
 jmp .UNIQUE8085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8085: 
	addl	$1, %eax
 jmp .UNIQUE8086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8086: 
	cmpl	-16(%rbp), %eax
 jmp .UNIQUE8087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8087: 
	jge	.L665
.L664:
 jmp .UNIQUE8088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8088: 
	cmpb	$0, -21(%rbp)
 jmp .UNIQUE8089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8089: 
	jne	.L666
 jmp .UNIQUE8090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8090: 
	addl	$1, -12(%rbp)
 jmp .UNIQUE8091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8091: 
	movl	-12(%rbp), %eax
 jmp .UNIQUE8092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8092: 
	cltq
 jmp .UNIQUE8093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8093: 
	salq	$2, %rax
 jmp .UNIQUE8094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8094: 
	leaq	-4(%rax), %rdx
 jmp .UNIQUE8095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8095: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE8096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8096: 
	addq	%rax, %rdx
 jmp .UNIQUE8097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8097: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE8098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8098: 
	movl	%eax, (%rdx)
.L666:
 jmp .UNIQUE8099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8099: 
	addl	$2, -20(%rbp)
.L661:
 jmp .UNIQUE8100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8100: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE8101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8101: 
	cmpl	-36(%rbp), %eax
 jmp .UNIQUE8102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8102: 
	jle	.L667
 jmp .UNIQUE8103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8103: 
	movl	$.LC127, %edi
 jmp .UNIQUE8104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8104: 
	call	puts
 jmp .UNIQUE8105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8105: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE8106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8106: 
	jmp	.L668
.L669:
 jmp .UNIQUE8107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8107: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE8108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8108: 
	cltq
 jmp .UNIQUE8109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8109: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE8110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8110: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE8111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8111: 
	addq	%rdx, %rax
 jmp .UNIQUE8112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8112: 
	movl	(%rax), %eax
 jmp .UNIQUE8113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8113: 
	movl	%eax, %esi
 jmp .UNIQUE8114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8114: 
	movl	$.LC22, %edi
 jmp .UNIQUE8115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8115: 
	movl	$0, %eax
 jmp .UNIQUE8116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8116: 
	call	printf
 jmp .UNIQUE8117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8117: 
	addl	$1, -20(%rbp)
.L668:
 jmp .UNIQUE8118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8118: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE8119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8119: 
	cmpl	-12(%rbp), %eax
 jmp .UNIQUE8120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8120: 
	jl	.L669
 jmp .UNIQUE8121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8121: 
	movl	$.LC128, %edi
 jmp .UNIQUE8122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8122: 
	call	puts
 jmp .UNIQUE8123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8123: 
	movl	-12(%rbp), %eax
 jmp .UNIQUE8124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8124: 
	movl	%eax, %esi
 jmp .UNIQUE8125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8125: 
	movl	$.LC129, %edi
 jmp .UNIQUE8126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8126: 
	movl	$0, %eax
 jmp .UNIQUE8127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8127: 
	call	printf
 jmp .UNIQUE8128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8128: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE8129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8129: 
	movq	%rax, %rdi
 jmp .UNIQUE8130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8130: 
	call	free
 jmp .UNIQUE8131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8131: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE8132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8132: 
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
 jmp .UNIQUE8133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8133: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE8134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8134: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE8135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8135: 
	subq	$48, %rsp
 jmp .UNIQUE8136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8136: 
	movl	%edi, -36(%rbp)
 jmp .UNIQUE8137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8137: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE8138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8138: 
	cvtsi2sd	-36(%rbp), %xmm0
 jmp .UNIQUE8139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8139: 
	call	sqrt
 jmp .UNIQUE8140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8140: 
	movsd	%xmm0, -48(%rbp)
 jmp .UNIQUE8141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8141: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE8142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8142: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE8143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8143: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE8144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8144: 
	addl	$1, %eax
 jmp .UNIQUE8145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8145: 
	cltq
 jmp .UNIQUE8146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8146: 
	movl	$174, %edx
 jmp .UNIQUE8147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8147: 
	movl	$__func__.6170, %esi
 jmp .UNIQUE8148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8148: 
	movq	%rax, %rdi
 jmp .UNIQUE8149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8149: 
	call	error_checking_malloc
 jmp .UNIQUE8150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8150: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE8151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8151: 
	movl	$2, -28(%rbp)
 jmp .UNIQUE8152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8152: 
	jmp	.L671
.L672:
 jmp .UNIQUE8153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8153: 
	movl	-28(%rbp), %eax
 jmp .UNIQUE8154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8154: 
	movslq	%eax, %rdx
 jmp .UNIQUE8155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8155: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE8156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8156: 
	addq	%rdx, %rax
 jmp .UNIQUE8157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8157: 
	movb	$1, (%rax)
 jmp .UNIQUE8158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8158: 
	addl	$1, -28(%rbp)
.L671:
 jmp .UNIQUE8159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8159: 
	movl	-28(%rbp), %eax
 jmp .UNIQUE8160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8160: 
	cmpl	-36(%rbp), %eax
 jmp .UNIQUE8161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8161: 
	jle	.L672
 jmp .UNIQUE8162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8162: 
	movl	$2, -28(%rbp)
 jmp .UNIQUE8163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8163: 
	jmp	.L673
.L677:
 jmp .UNIQUE8164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8164: 
	movl	-28(%rbp), %eax
 jmp .UNIQUE8165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8165: 
	movslq	%eax, %rdx
 jmp .UNIQUE8166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8166: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE8167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8167: 
	addq	%rdx, %rax
 jmp .UNIQUE8168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8168: 
	movzbl	(%rax), %eax
 jmp .UNIQUE8169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8169: 
	cmpb	$1, %al
 jmp .UNIQUE8170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8170: 
	jne	.L674
 jmp .UNIQUE8171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8171: 
	movl	-28(%rbp), %eax
 jmp .UNIQUE8172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8172: 
	addl	%eax, %eax
 jmp .UNIQUE8173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8173: 
	movl	%eax, -24(%rbp)
 jmp .UNIQUE8174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8174: 
	jmp	.L675
.L676:
 jmp .UNIQUE8175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8175: 
	movl	-24(%rbp), %eax
 jmp .UNIQUE8176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8176: 
	movslq	%eax, %rdx
 jmp .UNIQUE8177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8177: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE8178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8178: 
	addq	%rdx, %rax
 jmp .UNIQUE8179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8179: 
	movb	$0, (%rax)
 jmp .UNIQUE8180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8180: 
	movl	-28(%rbp), %eax
 jmp .UNIQUE8181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8181: 
	addl	%eax, -24(%rbp)
.L675:
 jmp .UNIQUE8182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8182: 
	movl	-24(%rbp), %eax
 jmp .UNIQUE8183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8183: 
	cmpl	-36(%rbp), %eax
 jmp .UNIQUE8184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8184: 
	jle	.L676
.L674:
 jmp .UNIQUE8185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8185: 
	addl	$1, -28(%rbp)
.L673:
 jmp .UNIQUE8186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8186: 
	cvtsi2sd	-28(%rbp), %xmm1
 jmp .UNIQUE8187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8187: 
	movsd	-16(%rbp), %xmm2
 jmp .UNIQUE8188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8188: 
	movsd	.LC45(%rip), %xmm0
 jmp .UNIQUE8189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8189: 
	addsd	%xmm2, %xmm0
 jmp .UNIQUE8190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8190: 
	ucomisd	%xmm1, %xmm0
 jmp .UNIQUE8191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8191: 
	jnb	.L677
 jmp .UNIQUE8192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8192: 
	movl	$10, %edi
 jmp .UNIQUE8193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8193: 
	call	putchar
 jmp .UNIQUE8194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8194: 
	movl	$.LC130, %edi
 jmp .UNIQUE8195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8195: 
	call	puts
 jmp .UNIQUE8196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8196: 
	movl	$2, -28(%rbp)
 jmp .UNIQUE8197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8197: 
	jmp	.L678
.L680:
 jmp .UNIQUE8198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8198: 
	movl	-28(%rbp), %eax
 jmp .UNIQUE8199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8199: 
	movslq	%eax, %rdx
 jmp .UNIQUE8200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8200: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE8201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8201: 
	addq	%rdx, %rax
 jmp .UNIQUE8202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8202: 
	movzbl	(%rax), %eax
 jmp .UNIQUE8203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8203: 
	cmpb	$1, %al
 jmp .UNIQUE8204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8204: 
	jne	.L679
 jmp .UNIQUE8205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8205: 
	movl	-28(%rbp), %eax
 jmp .UNIQUE8206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8206: 
	movl	%eax, %esi
 jmp .UNIQUE8207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8207: 
	movl	$.LC22, %edi
 jmp .UNIQUE8208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8208: 
	movl	$0, %eax
 jmp .UNIQUE8209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8209: 
	call	printf
 jmp .UNIQUE8210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8210: 
	addl	$1, -20(%rbp)
.L679:
 jmp .UNIQUE8211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8211: 
	addl	$1, -28(%rbp)
.L678:
 jmp .UNIQUE8212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8212: 
	movl	-28(%rbp), %eax
 jmp .UNIQUE8213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8213: 
	cmpl	-36(%rbp), %eax
 jmp .UNIQUE8214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8214: 
	jle	.L680
 jmp .UNIQUE8215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8215: 
	movl	$10, %edi
 jmp .UNIQUE8216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8216: 
	call	putchar
 jmp .UNIQUE8217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8217: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE8218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8218: 
	movl	%eax, %esi
 jmp .UNIQUE8219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8219: 
	movl	$.LC131, %edi
 jmp .UNIQUE8220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8220: 
	movl	$0, %eax
 jmp .UNIQUE8221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8221: 
	call	printf
 jmp .UNIQUE8222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8222: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE8223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8223: 
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
 jmp .UNIQUE8224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8224: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE8225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8225: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE8226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8226: 
	pushq	%rbx
 jmp .UNIQUE8227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8227: 
	subq	$104, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE8228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8228: 
	movl	%edi, -36(%rbp)
 jmp .UNIQUE8229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8229: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE8230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8230: 
	movq	$0, 56(%rsp)
 jmp .UNIQUE8231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8231: 
	movq	$0, 48(%rsp)
 jmp .UNIQUE8232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8232: 
	movq	$1, 40(%rsp)
 jmp .UNIQUE8233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8233: 
	movq	$1, 32(%rsp)
 jmp .UNIQUE8234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8234: 
	movq	$0, 24(%rsp)
 jmp .UNIQUE8235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8235: 
	movq	$1, 16(%rsp)
 jmp .UNIQUE8236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8236: 
	movq	$0, 8(%rsp)
 jmp .UNIQUE8237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8237: 
	movq	$0, (%rsp)
 jmp .UNIQUE8238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8238: 
	movl	$0, %r9d
 jmp .UNIQUE8239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8239: 
	movl	%eax, %r8d
 jmp .UNIQUE8240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8240: 
	movl	$2, %ecx
 jmp .UNIQUE8241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8241: 
	movl	$4, %edx
 jmp .UNIQUE8242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8242: 
	movl	$0, %esi
 jmp .UNIQUE8243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8243: 
	movl	$1, %edi
 jmp .UNIQUE8244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8244: 
	movl	$0, %eax
 jmp .UNIQUE8245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8245: 
	call	init_function_params_with_uninitialised_elements
 jmp .UNIQUE8246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8246: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE8247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8247: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8248: 
	movq	%rax, %rdi
 jmp .UNIQUE8249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8249: 
	call	put_fun_params_into_secure_stack_and_free
 jmp .UNIQUE8250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8250: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE8251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8251: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8252: 
	movq	16(%rax), %rax
 jmp .UNIQUE8253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8253: 
	movq	24(%rax), %rax
 jmp .UNIQUE8254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8254: 
	movl	$0, %esi
 jmp .UNIQUE8255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8255: 
	movq	%rax, %rdi
 jmp .UNIQUE8256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8256: 
	call	get_stack_int_array_element
 jmp .UNIQUE8257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8257: 
	cvtsi2sd	%eax, %xmm0
 jmp .UNIQUE8258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8258: 
	call	sqrt
 jmp .UNIQUE8259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8259: 
	movsd	%xmm0, -48(%rbp)
 jmp .UNIQUE8260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8260: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE8261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8261: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE8262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8262: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE8263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8263: 
	movq	72(%rdx), %rdx
 jmp .UNIQUE8264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8264: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE8265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8265: 
	movsd	-48(%rbp), %xmm0
 jmp .UNIQUE8266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8266: 
	movl	$0, %esi
 jmp .UNIQUE8267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8267: 
	movq	%rdx, %rdi
 jmp .UNIQUE8268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8268: 
	call	set_stack_double_array_element
 jmp .UNIQUE8269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8269: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8270: 
	movq	16(%rax), %rax
 jmp .UNIQUE8271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8271: 
	movq	24(%rax), %rax
 jmp .UNIQUE8272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8272: 
	movl	$0, %esi
 jmp .UNIQUE8273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8273: 
	movq	%rax, %rdi
 jmp .UNIQUE8274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8274: 
	call	get_stack_int_array_element
 jmp .UNIQUE8275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8275: 
	addl	$1, %eax
 jmp .UNIQUE8276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8276: 
	cltq
 jmp .UNIQUE8277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8277: 
	movl	$243, %edx
 jmp .UNIQUE8278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8278: 
	movl	$__func__.6187, %esi
 jmp .UNIQUE8279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8279: 
	movq	%rax, %rdi
 jmp .UNIQUE8280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8280: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE8281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8281: 
	movq	%rax, %rdx
 jmp .UNIQUE8282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8282: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8283: 
	movq	16(%rax), %rax
 jmp .UNIQUE8284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8284: 
	movq	96(%rax), %rax
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
	movq	%rax, %rdi
 jmp .UNIQUE8287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8287: 
	call	set_stack_pointer_array_element
 jmp .UNIQUE8288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8288: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8289: 
	movq	16(%rax), %rax
 jmp .UNIQUE8290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8290: 
	movq	24(%rax), %rax
 jmp .UNIQUE8291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8291: 
	movl	$2, %edx
 jmp .UNIQUE8292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8292: 
	movl	$2, %esi
 jmp .UNIQUE8293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8293: 
	movq	%rax, %rdi
 jmp .UNIQUE8294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8294: 
	call	set_stack_int_array_element
 jmp .UNIQUE8295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8295: 
	jmp	.L682
.L683:
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
	movl	$2, %esi
 jmp .UNIQUE8300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8300: 
	movq	%rax, %rdi
 jmp .UNIQUE8301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8301: 
	call	get_stack_int_array_element
 jmp .UNIQUE8302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8302: 
	movslq	%eax, %rbx
 jmp .UNIQUE8303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8303: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8304: 
	movq	16(%rax), %rax
 jmp .UNIQUE8305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8305: 
	movq	96(%rax), %rax
 jmp .UNIQUE8306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8306: 
	movl	$0, %esi
 jmp .UNIQUE8307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8307: 
	movq	%rax, %rdi
 jmp .UNIQUE8308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8308: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8309: 
	movl	$1, %edx
 jmp .UNIQUE8310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8310: 
	movq	%rbx, %rsi
 jmp .UNIQUE8311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8311: 
	movq	%rax, %rdi
 jmp .UNIQUE8312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8312: 
	call	set_char_array_element
 jmp .UNIQUE8313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8313: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8314: 
	movq	16(%rax), %rax
 jmp .UNIQUE8315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8315: 
	movq	24(%rax), %rax
 jmp .UNIQUE8316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8316: 
	movl	$2, %esi
 jmp .UNIQUE8317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8317: 
	movq	%rax, %rdi
 jmp .UNIQUE8318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8318: 
	call	get_stack_int_array_element
 jmp .UNIQUE8319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8319: 
	leal	1(%rax), %edx
 jmp .UNIQUE8320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8320: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8321: 
	movq	16(%rax), %rax
 jmp .UNIQUE8322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8322: 
	movq	24(%rax), %rax
 jmp .UNIQUE8323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8323: 
	movl	$2, %esi
 jmp .UNIQUE8324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8324: 
	movq	%rax, %rdi
 jmp .UNIQUE8325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8325: 
	call	set_stack_int_array_element
.L682:
 jmp .UNIQUE8326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8326: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8327: 
	movq	16(%rax), %rax
 jmp .UNIQUE8328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8328: 
	movq	24(%rax), %rax
 jmp .UNIQUE8329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8329: 
	movl	$2, %esi
 jmp .UNIQUE8330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8330: 
	movq	%rax, %rdi
 jmp .UNIQUE8331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8331: 
	call	get_stack_int_array_element
 jmp .UNIQUE8332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8332: 
	movl	%eax, %ebx
 jmp .UNIQUE8333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8333: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8334: 
	movq	16(%rax), %rax
 jmp .UNIQUE8335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8335: 
	movq	24(%rax), %rax
 jmp .UNIQUE8336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8336: 
	movl	$0, %esi
 jmp .UNIQUE8337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8337: 
	movq	%rax, %rdi
 jmp .UNIQUE8338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8338: 
	call	get_stack_int_array_element
 jmp .UNIQUE8339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8339: 
	cmpl	%eax, %ebx
 jmp .UNIQUE8340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8340: 
	jle	.L683
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
	movl	$2, %edx
 jmp .UNIQUE8345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8345: 
	movl	$2, %esi
 jmp .UNIQUE8346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8346: 
	movq	%rax, %rdi
 jmp .UNIQUE8347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8347: 
	call	set_stack_int_array_element
 jmp .UNIQUE8348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8348: 
	jmp	.L684
.L688:
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
	movl	$2, %esi
 jmp .UNIQUE8353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8353: 
	movq	%rax, %rdi
 jmp .UNIQUE8354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8354: 
	call	get_stack_int_array_element
 jmp .UNIQUE8355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8355: 
	movslq	%eax, %rbx
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
	movq	96(%rax), %rax
 jmp .UNIQUE8359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8359: 
	movl	$0, %esi
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
	call	get_stack_pointer_array_element
 jmp .UNIQUE8362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8362: 
	movq	%rbx, %rsi
 jmp .UNIQUE8363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8363: 
	movq	%rax, %rdi
 jmp .UNIQUE8364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8364: 
	call	get_char_array_element
 jmp .UNIQUE8365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8365: 
	cmpb	$1, %al
 jmp .UNIQUE8366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8366: 
	jne	.L685
 jmp .UNIQUE8367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8367: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8368: 
	movq	16(%rax), %rax
 jmp .UNIQUE8369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8369: 
	movq	24(%rax), %rax
 jmp .UNIQUE8370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8370: 
	movl	$2, %esi
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
	call	get_stack_int_array_element
 jmp .UNIQUE8373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8373: 
	leal	(%rax,%rax), %edx
 jmp .UNIQUE8374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8374: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8375: 
	movq	16(%rax), %rax
 jmp .UNIQUE8376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8376: 
	movq	24(%rax), %rax
 jmp .UNIQUE8377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8377: 
	movl	$3, %esi
 jmp .UNIQUE8378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8378: 
	movq	%rax, %rdi
 jmp .UNIQUE8379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8379: 
	call	set_stack_int_array_element
 jmp .UNIQUE8380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8380: 
	jmp	.L686
.L687:
 jmp .UNIQUE8381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8381: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8382: 
	movq	16(%rax), %rax
 jmp .UNIQUE8383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8383: 
	movq	24(%rax), %rax
 jmp .UNIQUE8384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8384: 
	movl	$3, %esi
 jmp .UNIQUE8385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8385: 
	movq	%rax, %rdi
 jmp .UNIQUE8386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8386: 
	call	get_stack_int_array_element
 jmp .UNIQUE8387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8387: 
	movslq	%eax, %rbx
 jmp .UNIQUE8388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8388: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8389: 
	movq	16(%rax), %rax
 jmp .UNIQUE8390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8390: 
	movq	96(%rax), %rax
 jmp .UNIQUE8391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8391: 
	movl	$0, %esi
 jmp .UNIQUE8392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8392: 
	movq	%rax, %rdi
 jmp .UNIQUE8393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8393: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8394: 
	movl	$0, %edx
 jmp .UNIQUE8395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8395: 
	movq	%rbx, %rsi
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
	call	set_char_array_element
 jmp .UNIQUE8398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8398: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8399: 
	movq	16(%rax), %rax
 jmp .UNIQUE8400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8400: 
	movq	24(%rax), %rax
 jmp .UNIQUE8401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8401: 
	movl	$3, %esi
 jmp .UNIQUE8402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8402: 
	movq	%rax, %rdi
 jmp .UNIQUE8403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8403: 
	call	get_stack_int_array_element
 jmp .UNIQUE8404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8404: 
	movl	%eax, %ebx
 jmp .UNIQUE8405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8405: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8406: 
	movq	16(%rax), %rax
 jmp .UNIQUE8407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8407: 
	movq	24(%rax), %rax
 jmp .UNIQUE8408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8408: 
	movl	$2, %esi
 jmp .UNIQUE8409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8409: 
	movq	%rax, %rdi
 jmp .UNIQUE8410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8410: 
	call	get_stack_int_array_element
 jmp .UNIQUE8411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8411: 
	leal	(%rbx,%rax), %edx
 jmp .UNIQUE8412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8412: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8413: 
	movq	16(%rax), %rax
 jmp .UNIQUE8414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8414: 
	movq	24(%rax), %rax
 jmp .UNIQUE8415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8415: 
	movl	$3, %esi
 jmp .UNIQUE8416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8416: 
	movq	%rax, %rdi
 jmp .UNIQUE8417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8417: 
	call	set_stack_int_array_element
.L686:
 jmp .UNIQUE8418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8418: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8419: 
	movq	16(%rax), %rax
 jmp .UNIQUE8420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8420: 
	movq	24(%rax), %rax
 jmp .UNIQUE8421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8421: 
	movl	$3, %esi
 jmp .UNIQUE8422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8422: 
	movq	%rax, %rdi
 jmp .UNIQUE8423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8423: 
	call	get_stack_int_array_element
 jmp .UNIQUE8424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8424: 
	movl	%eax, %ebx
 jmp .UNIQUE8425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8425: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8426: 
	movq	16(%rax), %rax
 jmp .UNIQUE8427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8427: 
	movq	24(%rax), %rax
 jmp .UNIQUE8428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8428: 
	movl	$0, %esi
 jmp .UNIQUE8429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8429: 
	movq	%rax, %rdi
 jmp .UNIQUE8430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8430: 
	call	get_stack_int_array_element
 jmp .UNIQUE8431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8431: 
	cmpl	%eax, %ebx
 jmp .UNIQUE8432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8432: 
	jle	.L687
.L685:
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
	movl	$2, %esi
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
	leal	1(%rax), %edx
 jmp .UNIQUE8440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8440: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8441: 
	movq	16(%rax), %rax
 jmp .UNIQUE8442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8442: 
	movq	24(%rax), %rax
 jmp .UNIQUE8443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8443: 
	movl	$2, %esi
 jmp .UNIQUE8444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8444: 
	movq	%rax, %rdi
 jmp .UNIQUE8445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8445: 
	call	set_stack_int_array_element
.L684:
 jmp .UNIQUE8446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8446: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8447: 
	movq	16(%rax), %rax
 jmp .UNIQUE8448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8448: 
	movq	24(%rax), %rax
 jmp .UNIQUE8449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8449: 
	movl	$2, %esi
 jmp .UNIQUE8450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8450: 
	movq	%rax, %rdi
 jmp .UNIQUE8451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8451: 
	call	get_stack_int_array_element
 jmp .UNIQUE8452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8452: 
	cvtsi2sd	%eax, %xmm2
 jmp .UNIQUE8453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8453: 
	movsd	%xmm2, -48(%rbp)
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
	movq	72(%rax), %rax
 jmp .UNIQUE8457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8457: 
	movl	$0, %esi
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
	call	get_stack_double_array_element
 jmp .UNIQUE8460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8460: 
	movsd	.LC45(%rip), %xmm1
 jmp .UNIQUE8461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8461: 
	addsd	%xmm1, %xmm0
 jmp .UNIQUE8462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8462: 
	ucomisd	-48(%rbp), %xmm0
 jmp .UNIQUE8463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8463: 
	jnb	.L688
 jmp .UNIQUE8464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8464: 
	movl	$10, %edi
 jmp .UNIQUE8465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8465: 
	call	putchar
 jmp .UNIQUE8466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8466: 
	movl	$.LC132, %edi
 jmp .UNIQUE8467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8467: 
	call	puts
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
	movl	$2, %edx
 jmp .UNIQUE8472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8472: 
	movl	$2, %esi
 jmp .UNIQUE8473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8473: 
	movq	%rax, %rdi
 jmp .UNIQUE8474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8474: 
	call	set_stack_int_array_element
 jmp .UNIQUE8475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8475: 
	jmp	.L689
.L691:
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
	movslq	%eax, %rbx
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
	movq	96(%rax), %rax
 jmp .UNIQUE8486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8486: 
	movl	$0, %esi
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
	call	get_stack_pointer_array_element
 jmp .UNIQUE8489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8489: 
	movq	%rbx, %rsi
 jmp .UNIQUE8490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8490: 
	movq	%rax, %rdi
 jmp .UNIQUE8491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8491: 
	call	get_char_array_element
 jmp .UNIQUE8492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8492: 
	cmpb	$1, %al
 jmp .UNIQUE8493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8493: 
	jne	.L690
 jmp .UNIQUE8494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8494: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8495: 
	movq	16(%rax), %rax
 jmp .UNIQUE8496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8496: 
	movq	24(%rax), %rax
 jmp .UNIQUE8497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8497: 
	movl	$2, %esi
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
	call	get_stack_int_array_element
 jmp .UNIQUE8500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8500: 
	movl	%eax, %esi
 jmp .UNIQUE8501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8501: 
	movl	$.LC22, %edi
 jmp .UNIQUE8502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8502: 
	movl	$0, %eax
 jmp .UNIQUE8503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8503: 
	call	printf
 jmp .UNIQUE8504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8504: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8505: 
	movq	16(%rax), %rax
 jmp .UNIQUE8506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8506: 
	movq	24(%rax), %rax
 jmp .UNIQUE8507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8507: 
	movl	$1, %esi
 jmp .UNIQUE8508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8508: 
	movq	%rax, %rdi
 jmp .UNIQUE8509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8509: 
	call	get_stack_int_array_element
 jmp .UNIQUE8510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8510: 
	leal	1(%rax), %edx
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
	movl	$1, %esi
 jmp .UNIQUE8515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8515: 
	movq	%rax, %rdi
 jmp .UNIQUE8516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8516: 
	call	set_stack_int_array_element
.L690:
 jmp .UNIQUE8517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8517: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8518: 
	movq	16(%rax), %rax
 jmp .UNIQUE8519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8519: 
	movq	24(%rax), %rax
 jmp .UNIQUE8520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8520: 
	movl	$2, %esi
 jmp .UNIQUE8521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8521: 
	movq	%rax, %rdi
 jmp .UNIQUE8522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8522: 
	call	get_stack_int_array_element
 jmp .UNIQUE8523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8523: 
	leal	1(%rax), %edx
 jmp .UNIQUE8524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8524: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8525: 
	movq	16(%rax), %rax
 jmp .UNIQUE8526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8526: 
	movq	24(%rax), %rax
 jmp .UNIQUE8527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8527: 
	movl	$2, %esi
 jmp .UNIQUE8528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8528: 
	movq	%rax, %rdi
 jmp .UNIQUE8529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8529: 
	call	set_stack_int_array_element
.L689:
 jmp .UNIQUE8530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8530: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8531: 
	movq	16(%rax), %rax
 jmp .UNIQUE8532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8532: 
	movq	24(%rax), %rax
 jmp .UNIQUE8533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8533: 
	movl	$2, %esi
 jmp .UNIQUE8534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8534: 
	movq	%rax, %rdi
 jmp .UNIQUE8535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8535: 
	call	get_stack_int_array_element
 jmp .UNIQUE8536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8536: 
	movl	%eax, %ebx
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
	movl	$0, %esi
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
	cmpl	%eax, %ebx
 jmp .UNIQUE8544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8544: 
	jle	.L691
 jmp .UNIQUE8545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8545: 
	movl	$10, %edi
 jmp .UNIQUE8546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8546: 
	call	putchar
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
	movl	%eax, %esi
 jmp .UNIQUE8554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8554: 
	movl	$.LC131, %edi
 jmp .UNIQUE8555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8555: 
	movl	$0, %eax
 jmp .UNIQUE8556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8556: 
	call	printf
 jmp .UNIQUE8557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8557: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8558: 
	movq	16(%rax), %rax
 jmp .UNIQUE8559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8559: 
	movq	96(%rax), %rax
 jmp .UNIQUE8560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8560: 
	movl	$0, %esi
 jmp .UNIQUE8561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8561: 
	movq	%rax, %rdi
 jmp .UNIQUE8562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8562: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8563: 
	movq	%rax, %rdi
 jmp .UNIQUE8564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8564: 
	call	managed_secure_free
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
	movq	8(%rax), %rax
 jmp .UNIQUE8567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8567: 
	movq	%rax, %rdi
 jmp .UNIQUE8568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8568: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE8569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8569: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8570: 
	movq	%rax, %rdi
 jmp .UNIQUE8571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8571: 
	call	free_fun_params_that_point_to_stack
 jmp .UNIQUE8572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8572: 
	addq	$104, %rsp
 jmp .UNIQUE8573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8573: 
	popq	%rbx
 jmp .UNIQUE8574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8574: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE8575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8575: 
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
 jmp .UNIQUE8576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8576: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE8577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8577: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE8578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8578: 
	pushq	%rbx
 jmp .UNIQUE8579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8579: 
	subq	$104, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE8580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8580: 
	movl	%edi, -36(%rbp)
 jmp .UNIQUE8581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8581: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE8582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8582: 
	movq	$0, 56(%rsp)
 jmp .UNIQUE8583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8583: 
	movq	$0, 48(%rsp)
 jmp .UNIQUE8584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8584: 
	movq	$1, 40(%rsp)
 jmp .UNIQUE8585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8585: 
	movq	$1, 32(%rsp)
 jmp .UNIQUE8586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8586: 
	movq	$0, 24(%rsp)
 jmp .UNIQUE8587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8587: 
	movq	$1, 16(%rsp)
 jmp .UNIQUE8588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8588: 
	movq	$0, 8(%rsp)
 jmp .UNIQUE8589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8589: 
	movq	$0, (%rsp)
 jmp .UNIQUE8590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8590: 
	movl	$0, %r9d
 jmp .UNIQUE8591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8591: 
	movl	%eax, %r8d
 jmp .UNIQUE8592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8592: 
	movl	$2, %ecx
 jmp .UNIQUE8593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8593: 
	movl	$4, %edx
 jmp .UNIQUE8594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8594: 
	movl	$0, %esi
 jmp .UNIQUE8595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8595: 
	movl	$1, %edi
 jmp .UNIQUE8596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8596: 
	movl	$0, %eax
 jmp .UNIQUE8597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8597: 
	call	init_function_params_with_uninitialised_elements
 jmp .UNIQUE8598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8598: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE8599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8599: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8600: 
	movq	%rax, %rdi
 jmp .UNIQUE8601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8601: 
	call	put_fun_params_into_secure_stack_and_free
 jmp .UNIQUE8602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8602: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE8603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8603: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8604: 
	movq	16(%rax), %rax
 jmp .UNIQUE8605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8605: 
	movq	24(%rax), %rax
 jmp .UNIQUE8606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8606: 
	movl	$0, %esi
 jmp .UNIQUE8607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8607: 
	movq	%rax, %rdi
 jmp .UNIQUE8608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8608: 
	call	get_stack_int_array_element
 jmp .UNIQUE8609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8609: 
	cvtsi2sd	%eax, %xmm0
 jmp .UNIQUE8610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8610: 
	call	sqrt
 jmp .UNIQUE8611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8611: 
	movsd	%xmm0, -48(%rbp)
 jmp .UNIQUE8612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8612: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE8613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8613: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE8614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8614: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE8615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8615: 
	movq	72(%rdx), %rdx
 jmp .UNIQUE8616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8616: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE8617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8617: 
	movsd	-48(%rbp), %xmm0
 jmp .UNIQUE8618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8618: 
	movl	$0, %esi
 jmp .UNIQUE8619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8619: 
	movq	%rdx, %rdi
 jmp .UNIQUE8620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8620: 
	call	set_stack_double_array_element
 jmp .UNIQUE8621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8621: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8622: 
	movq	16(%rax), %rax
 jmp .UNIQUE8623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8623: 
	movq	24(%rax), %rax
 jmp .UNIQUE8624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8624: 
	movl	$0, %esi
 jmp .UNIQUE8625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8625: 
	movq	%rax, %rdi
 jmp .UNIQUE8626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8626: 
	call	get_stack_int_array_element
 jmp .UNIQUE8627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8627: 
	addl	$1, %eax
 jmp .UNIQUE8628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8628: 
	cltq
 jmp .UNIQUE8629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8629: 
	movl	$374, %edx
 jmp .UNIQUE8630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8630: 
	movl	$__func__.6204, %esi
 jmp .UNIQUE8631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8631: 
	movq	%rax, %rdi
 jmp .UNIQUE8632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8632: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE8633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8633: 
	movq	%rax, %rdx
 jmp .UNIQUE8634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8634: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8635: 
	movq	16(%rax), %rax
 jmp .UNIQUE8636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8636: 
	movq	96(%rax), %rax
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
	movq	%rax, %rdi
 jmp .UNIQUE8639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8639: 
	call	set_stack_pointer_array_element
 jmp .UNIQUE8640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8640: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8641: 
	movq	16(%rax), %rax
 jmp .UNIQUE8642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8642: 
	movq	24(%rax), %rax
 jmp .UNIQUE8643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8643: 
	movl	$2, %edx
 jmp .UNIQUE8644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8644: 
	movl	$2, %esi
 jmp .UNIQUE8645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8645: 
	movq	%rax, %rdi
 jmp .UNIQUE8646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8646: 
	call	set_stack_int_array_element
 jmp .UNIQUE8647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8647: 
	jmp	.L693
.L694:
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
	movl	$2, %esi
 jmp .UNIQUE8652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8652: 
	movq	%rax, %rdi
 jmp .UNIQUE8653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8653: 
	call	get_stack_int_array_element
 jmp .UNIQUE8654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8654: 
	movslq	%eax, %rbx
 jmp .UNIQUE8655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8655: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8656: 
	movq	16(%rax), %rax
 jmp .UNIQUE8657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8657: 
	movq	96(%rax), %rax
 jmp .UNIQUE8658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8658: 
	movl	$0, %esi
 jmp .UNIQUE8659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8659: 
	movq	%rax, %rdi
 jmp .UNIQUE8660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8660: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8661: 
	movl	$1, %edx
 jmp .UNIQUE8662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8662: 
	movq	%rbx, %rsi
 jmp .UNIQUE8663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8663: 
	movq	%rax, %rdi
 jmp .UNIQUE8664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8664: 
	call	set_char_array_element
 jmp .UNIQUE8665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8665: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8666: 
	movq	16(%rax), %rax
 jmp .UNIQUE8667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8667: 
	movq	24(%rax), %rax
 jmp .UNIQUE8668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8668: 
	movl	$2, %esi
 jmp .UNIQUE8669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8669: 
	movq	%rax, %rdi
 jmp .UNIQUE8670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8670: 
	call	get_stack_int_array_element
 jmp .UNIQUE8671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8671: 
	leal	1(%rax), %edx
 jmp .UNIQUE8672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8672: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8673: 
	movq	16(%rax), %rax
 jmp .UNIQUE8674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8674: 
	movq	24(%rax), %rax
 jmp .UNIQUE8675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8675: 
	movl	$2, %esi
 jmp .UNIQUE8676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8676: 
	movq	%rax, %rdi
 jmp .UNIQUE8677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8677: 
	call	set_stack_int_array_element
.L693:
 jmp .UNIQUE8678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8678: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8679: 
	movq	16(%rax), %rax
 jmp .UNIQUE8680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8680: 
	movq	24(%rax), %rax
 jmp .UNIQUE8681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8681: 
	movl	$2, %esi
 jmp .UNIQUE8682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8682: 
	movq	%rax, %rdi
 jmp .UNIQUE8683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8683: 
	call	get_stack_int_array_element
 jmp .UNIQUE8684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8684: 
	movl	%eax, %ebx
 jmp .UNIQUE8685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8685: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8686: 
	movq	16(%rax), %rax
 jmp .UNIQUE8687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8687: 
	movq	24(%rax), %rax
 jmp .UNIQUE8688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8688: 
	movl	$0, %esi
 jmp .UNIQUE8689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8689: 
	movq	%rax, %rdi
 jmp .UNIQUE8690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8690: 
	call	get_stack_int_array_element
 jmp .UNIQUE8691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8691: 
	cmpl	%eax, %ebx
 jmp .UNIQUE8692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8692: 
	jle	.L694
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
	movl	$2, %edx
 jmp .UNIQUE8697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8697: 
	movl	$2, %esi
 jmp .UNIQUE8698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8698: 
	movq	%rax, %rdi
 jmp .UNIQUE8699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8699: 
	call	set_stack_int_array_element
 jmp .UNIQUE8700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8700: 
	jmp	.L695
.L699:
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
	movl	$2, %esi
 jmp .UNIQUE8705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8705: 
	movq	%rax, %rdi
 jmp .UNIQUE8706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8706: 
	call	get_stack_int_array_element
 jmp .UNIQUE8707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8707: 
	movslq	%eax, %rbx
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
	movq	96(%rax), %rax
 jmp .UNIQUE8711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8711: 
	movl	$0, %esi
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
	call	get_stack_pointer_array_element
 jmp .UNIQUE8714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8714: 
	movq	%rbx, %rsi
 jmp .UNIQUE8715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8715: 
	movq	%rax, %rdi
 jmp .UNIQUE8716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8716: 
	call	get_char_array_element
 jmp .UNIQUE8717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8717: 
	cmpb	$1, %al
 jmp .UNIQUE8718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8718: 
	jne	.L696
 jmp .UNIQUE8719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8719: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8720: 
	movq	16(%rax), %rax
 jmp .UNIQUE8721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8721: 
	movq	24(%rax), %rax
 jmp .UNIQUE8722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8722: 
	movl	$2, %esi
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
	call	get_stack_int_array_element
 jmp .UNIQUE8725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8725: 
	leal	(%rax,%rax), %edx
 jmp .UNIQUE8726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8726: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8727: 
	movq	16(%rax), %rax
 jmp .UNIQUE8728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8728: 
	movq	24(%rax), %rax
 jmp .UNIQUE8729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8729: 
	movl	$3, %esi
 jmp .UNIQUE8730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8730: 
	movq	%rax, %rdi
 jmp .UNIQUE8731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8731: 
	call	set_stack_int_array_element
 jmp .UNIQUE8732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8732: 
	jmp	.L697
.L698:
 jmp .UNIQUE8733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8733: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8734: 
	movq	16(%rax), %rax
 jmp .UNIQUE8735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8735: 
	movq	24(%rax), %rax
 jmp .UNIQUE8736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8736: 
	movl	$3, %esi
 jmp .UNIQUE8737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8737: 
	movq	%rax, %rdi
 jmp .UNIQUE8738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8738: 
	call	get_stack_int_array_element
 jmp .UNIQUE8739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8739: 
	movslq	%eax, %rbx
 jmp .UNIQUE8740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8740: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8741: 
	movq	16(%rax), %rax
 jmp .UNIQUE8742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8742: 
	movq	96(%rax), %rax
 jmp .UNIQUE8743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8743: 
	movl	$0, %esi
 jmp .UNIQUE8744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8744: 
	movq	%rax, %rdi
 jmp .UNIQUE8745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8745: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8746: 
	movl	$0, %edx
 jmp .UNIQUE8747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8747: 
	movq	%rbx, %rsi
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
	call	set_char_array_element
 jmp .UNIQUE8750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8750: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8751: 
	movq	16(%rax), %rax
 jmp .UNIQUE8752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8752: 
	movq	24(%rax), %rax
 jmp .UNIQUE8753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8753: 
	movl	$3, %esi
 jmp .UNIQUE8754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8754: 
	movq	%rax, %rdi
 jmp .UNIQUE8755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8755: 
	call	get_stack_int_array_element
 jmp .UNIQUE8756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8756: 
	movl	%eax, %ebx
 jmp .UNIQUE8757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8757: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8758: 
	movq	16(%rax), %rax
 jmp .UNIQUE8759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8759: 
	movq	24(%rax), %rax
 jmp .UNIQUE8760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8760: 
	movl	$2, %esi
 jmp .UNIQUE8761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8761: 
	movq	%rax, %rdi
 jmp .UNIQUE8762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8762: 
	call	get_stack_int_array_element
 jmp .UNIQUE8763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8763: 
	leal	(%rbx,%rax), %edx
 jmp .UNIQUE8764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8764: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8765: 
	movq	16(%rax), %rax
 jmp .UNIQUE8766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8766: 
	movq	24(%rax), %rax
 jmp .UNIQUE8767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8767: 
	movl	$3, %esi
 jmp .UNIQUE8768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8768: 
	movq	%rax, %rdi
 jmp .UNIQUE8769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8769: 
	call	set_stack_int_array_element
.L697:
 jmp .UNIQUE8770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8770: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8771: 
	movq	16(%rax), %rax
 jmp .UNIQUE8772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8772: 
	movq	24(%rax), %rax
 jmp .UNIQUE8773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8773: 
	movl	$3, %esi
 jmp .UNIQUE8774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8774: 
	movq	%rax, %rdi
 jmp .UNIQUE8775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8775: 
	call	get_stack_int_array_element
 jmp .UNIQUE8776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8776: 
	movl	%eax, %ebx
 jmp .UNIQUE8777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8777: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8778: 
	movq	16(%rax), %rax
 jmp .UNIQUE8779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8779: 
	movq	24(%rax), %rax
 jmp .UNIQUE8780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8780: 
	movl	$0, %esi
 jmp .UNIQUE8781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8781: 
	movq	%rax, %rdi
 jmp .UNIQUE8782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8782: 
	call	get_stack_int_array_element
 jmp .UNIQUE8783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8783: 
	cmpl	%eax, %ebx
 jmp .UNIQUE8784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8784: 
	jle	.L698
.L696:
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
	movl	$2, %esi
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
	leal	1(%rax), %edx
 jmp .UNIQUE8792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8792: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8793: 
	movq	16(%rax), %rax
 jmp .UNIQUE8794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8794: 
	movq	24(%rax), %rax
 jmp .UNIQUE8795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8795: 
	movl	$2, %esi
 jmp .UNIQUE8796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8796: 
	movq	%rax, %rdi
 jmp .UNIQUE8797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8797: 
	call	set_stack_int_array_element
.L695:
 jmp .UNIQUE8798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8798: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8799: 
	movq	16(%rax), %rax
 jmp .UNIQUE8800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8800: 
	movq	24(%rax), %rax
 jmp .UNIQUE8801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8801: 
	movl	$2, %esi
 jmp .UNIQUE8802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8802: 
	movq	%rax, %rdi
 jmp .UNIQUE8803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8803: 
	call	get_stack_int_array_element
 jmp .UNIQUE8804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8804: 
	cvtsi2sd	%eax, %xmm2
 jmp .UNIQUE8805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8805: 
	movsd	%xmm2, -48(%rbp)
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
	movq	72(%rax), %rax
 jmp .UNIQUE8809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8809: 
	movl	$0, %esi
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
	call	get_stack_double_array_element
 jmp .UNIQUE8812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8812: 
	movsd	.LC45(%rip), %xmm1
 jmp .UNIQUE8813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8813: 
	addsd	%xmm1, %xmm0
 jmp .UNIQUE8814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8814: 
	ucomisd	-48(%rbp), %xmm0
 jmp .UNIQUE8815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8815: 
	jnb	.L699
 jmp .UNIQUE8816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8816: 
	movl	$10, %edi
 jmp .UNIQUE8817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8817: 
	call	putchar
 jmp .UNIQUE8818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8818: 
	movl	$.LC132, %edi
 jmp .UNIQUE8819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8819: 
	call	puts
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
	movl	$2, %edx
 jmp .UNIQUE8824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8824: 
	movl	$2, %esi
 jmp .UNIQUE8825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8825: 
	movq	%rax, %rdi
 jmp .UNIQUE8826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8826: 
	call	set_stack_int_array_element
 jmp .UNIQUE8827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8827: 
	jmp	.L700
.L702:
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
	movslq	%eax, %rbx
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
	movq	96(%rax), %rax
 jmp .UNIQUE8838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8838: 
	movl	$0, %esi
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
	call	get_stack_pointer_array_element
 jmp .UNIQUE8841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8841: 
	movq	%rbx, %rsi
 jmp .UNIQUE8842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8842: 
	movq	%rax, %rdi
 jmp .UNIQUE8843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8843: 
	call	get_char_array_element
 jmp .UNIQUE8844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8844: 
	cmpb	$1, %al
 jmp .UNIQUE8845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8845: 
	jne	.L701
 jmp .UNIQUE8846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8846: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8847: 
	movq	16(%rax), %rax
 jmp .UNIQUE8848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8848: 
	movq	24(%rax), %rax
 jmp .UNIQUE8849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8849: 
	movl	$2, %esi
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
	call	get_stack_int_array_element
 jmp .UNIQUE8852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8852: 
	movl	%eax, %esi
 jmp .UNIQUE8853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8853: 
	movl	$.LC22, %edi
 jmp .UNIQUE8854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8854: 
	movl	$0, %eax
 jmp .UNIQUE8855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8855: 
	call	printf
 jmp .UNIQUE8856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8856: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8857: 
	movq	16(%rax), %rax
 jmp .UNIQUE8858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8858: 
	movq	24(%rax), %rax
 jmp .UNIQUE8859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8859: 
	movl	$1, %esi
 jmp .UNIQUE8860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8860: 
	movq	%rax, %rdi
 jmp .UNIQUE8861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8861: 
	call	get_stack_int_array_element
 jmp .UNIQUE8862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8862: 
	leal	1(%rax), %edx
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
	movl	$1, %esi
 jmp .UNIQUE8867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8867: 
	movq	%rax, %rdi
 jmp .UNIQUE8868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8868: 
	call	set_stack_int_array_element
.L701:
 jmp .UNIQUE8869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8869: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8870: 
	movq	16(%rax), %rax
 jmp .UNIQUE8871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8871: 
	movq	24(%rax), %rax
 jmp .UNIQUE8872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8872: 
	movl	$2, %esi
 jmp .UNIQUE8873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8873: 
	movq	%rax, %rdi
 jmp .UNIQUE8874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8874: 
	call	get_stack_int_array_element
 jmp .UNIQUE8875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8875: 
	leal	1(%rax), %edx
 jmp .UNIQUE8876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8876: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8877: 
	movq	16(%rax), %rax
 jmp .UNIQUE8878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8878: 
	movq	24(%rax), %rax
 jmp .UNIQUE8879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8879: 
	movl	$2, %esi
 jmp .UNIQUE8880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8880: 
	movq	%rax, %rdi
 jmp .UNIQUE8881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8881: 
	call	set_stack_int_array_element
.L700:
 jmp .UNIQUE8882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8882: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8883: 
	movq	16(%rax), %rax
 jmp .UNIQUE8884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8884: 
	movq	24(%rax), %rax
 jmp .UNIQUE8885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8885: 
	movl	$2, %esi
 jmp .UNIQUE8886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8886: 
	movq	%rax, %rdi
 jmp .UNIQUE8887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8887: 
	call	get_stack_int_array_element
 jmp .UNIQUE8888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8888: 
	movl	%eax, %ebx
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
	movl	$0, %esi
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
	cmpl	%eax, %ebx
 jmp .UNIQUE8896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8896: 
	jle	.L702
 jmp .UNIQUE8897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8897: 
	movl	$10, %edi
 jmp .UNIQUE8898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8898: 
	call	putchar
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
	movl	%eax, %esi
 jmp .UNIQUE8906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8906: 
	movl	$.LC131, %edi
 jmp .UNIQUE8907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8907: 
	movl	$0, %eax
 jmp .UNIQUE8908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8908: 
	call	printf
 jmp .UNIQUE8909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8909: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8910: 
	movq	16(%rax), %rax
 jmp .UNIQUE8911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8911: 
	movq	96(%rax), %rax
 jmp .UNIQUE8912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8912: 
	movl	$0, %esi
 jmp .UNIQUE8913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8913: 
	movq	%rax, %rdi
 jmp .UNIQUE8914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8914: 
	call	get_stack_pointer_array_element
 jmp .UNIQUE8915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8915: 
	movq	%rax, %rdi
 jmp .UNIQUE8916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8916: 
	call	managed_secure_free
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
	movq	8(%rax), %rax
 jmp .UNIQUE8919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8919: 
	movq	%rax, %rdi
 jmp .UNIQUE8920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8920: 
	call	free_chunks_from_secure_stack
 jmp .UNIQUE8921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8921: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE8922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8922: 
	movq	%rax, %rdi
 jmp .UNIQUE8923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8923: 
	call	free_fun_params_that_point_to_stack
 jmp .UNIQUE8924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8924: 
	addq	$104, %rsp
 jmp .UNIQUE8925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8925: 
	popq	%rbx
 jmp .UNIQUE8926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8926: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE8927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8927: 
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
 jmp .UNIQUE8928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8928: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE8929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8929: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE8930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8930: 
	subq	$32, %rsp
 jmp .UNIQUE8931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8931: 
	movl	%edi, -20(%rbp)
 jmp .UNIQUE8932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8932: 
	movl	%esi, -24(%rbp)
 jmp .UNIQUE8933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8933: 
	movl	$0, -8(%rbp)
 jmp .UNIQUE8934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8934: 
	jmp	.L704
.L707:
 jmp .UNIQUE8935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8935: 
	movl	$0, -4(%rbp)
 jmp .UNIQUE8936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8936: 
	jmp	.L705
.L706:
 jmp .UNIQUE8937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8937: 
	call	rand
 jmp .UNIQUE8938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8938: 
	cltd
 jmp .UNIQUE8939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8939: 
	idivl	-24(%rbp)
 jmp .UNIQUE8940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8940: 
	movl	%edx, %eax
 jmp .UNIQUE8941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8941: 
	movl	-4(%rbp), %edx
 jmp .UNIQUE8942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8942: 
	movslq	%edx, %rdx
 jmp .UNIQUE8943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8943: 
	movl	-8(%rbp), %ecx
 jmp .UNIQUE8944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8944: 
	movslq	%ecx, %rcx
 jmp .UNIQUE8945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8945: 
	imulq	$1001, %rcx, %rcx
 jmp .UNIQUE8946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8946: 
	addq	%rcx, %rdx
 jmp .UNIQUE8947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8947: 
	movl	%eax, matrix1(,%rdx,4)
 jmp .UNIQUE8948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8948: 
	call	rand
 jmp .UNIQUE8949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8949: 
	cltd
 jmp .UNIQUE8950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8950: 
	idivl	-24(%rbp)
 jmp .UNIQUE8951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8951: 
	movl	%edx, %eax
 jmp .UNIQUE8952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8952: 
	movl	-4(%rbp), %edx
 jmp .UNIQUE8953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8953: 
	movslq	%edx, %rdx
 jmp .UNIQUE8954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8954: 
	movl	-8(%rbp), %ecx
 jmp .UNIQUE8955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8955: 
	movslq	%ecx, %rcx
 jmp .UNIQUE8956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8956: 
	imulq	$1001, %rcx, %rcx
 jmp .UNIQUE8957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8957: 
	addq	%rcx, %rdx
 jmp .UNIQUE8958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8958: 
	movl	%eax, matrix2(,%rdx,4)
 jmp .UNIQUE8959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8959: 
	addl	$1, -4(%rbp)
.L705:
 jmp .UNIQUE8960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8960: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE8961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8961: 
	cmpl	-20(%rbp), %eax
 jmp .UNIQUE8962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8962: 
	jl	.L706
 jmp .UNIQUE8963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8963: 
	addl	$1, -8(%rbp)
.L704:
 jmp .UNIQUE8964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8964: 
	movl	-8(%rbp), %eax
 jmp .UNIQUE8965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8965: 
	cmpl	-20(%rbp), %eax
 jmp .UNIQUE8966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8966: 
	jl	.L707
 jmp .UNIQUE8967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8967: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE8968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8968: 
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
 jmp .UNIQUE8969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8969: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE8970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8970: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE8971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8971: 
	pushq	%r15
 jmp .UNIQUE8972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8972: 
	pushq	%r14
 jmp .UNIQUE8973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8973: 
	pushq	%r13
 jmp .UNIQUE8974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8974: 
	pushq	%r12
 jmp .UNIQUE8975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8975: 
	pushq	%rbx
 jmp .UNIQUE8976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8976: 
	subq	$168, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
 jmp .UNIQUE8977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8977: 
	movl	%edi, -116(%rbp)
 jmp .UNIQUE8978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8978: 
	movl	%esi, -120(%rbp)
 jmp .UNIQUE8979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8979: 
	movq	%rsp, %rax
 jmp .UNIQUE8980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8980: 
	movq	%rax, -128(%rbp)
 jmp .UNIQUE8981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8981: 
	movl	-116(%rbp), %esi
 jmp .UNIQUE8982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8982: 
	movl	-116(%rbp), %edi
 jmp .UNIQUE8983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8983: 
	movslq	%esi, %rax
 jmp .UNIQUE8984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8984: 
	subq	$1, %rax
 jmp .UNIQUE8985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8985: 
	movq	%rax, -96(%rbp)
 jmp .UNIQUE8986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8986: 
	movslq	%esi, %rax
 jmp .UNIQUE8987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8987: 
	movq	%rax, %rdx
 jmp .UNIQUE8988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8988: 
	movl	$0, %ecx
 jmp .UNIQUE8989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8989: 
	movslq	%esi, %rax
 jmp .UNIQUE8990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8990: 
	leaq	0(,%rax,4), %rbx
 jmp .UNIQUE8991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8991: 
	movslq	%edi, %rax
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
	movq	%rax, -88(%rbp)
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
	movq	%rax, %r10
 jmp .UNIQUE8996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8996: 
	movl	$0, %r11d
 jmp .UNIQUE8997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8997: 
	movslq	%edi, %rax
 jmp .UNIQUE8998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8998: 
	movq	%rax, %r8
 jmp .UNIQUE8999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8999: 
	movl	$0, %r9d
 jmp .UNIQUE9000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9000: 
	movq	%r11, %rdx
 jmp .UNIQUE9001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9001: 
	imulq	%r8, %rdx
 jmp .UNIQUE9002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9002: 
	movq	%r9, %rax
 jmp .UNIQUE9003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9003: 
	imulq	%r10, %rax
 jmp .UNIQUE9004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9004: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE9005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9005: 
	movq	%r10, %rax
 jmp .UNIQUE9006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9006: 
	mulq	%r8
 jmp .UNIQUE9007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9007: 
	addq	%rdx, %rcx
 jmp .UNIQUE9008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9008: 
	movq	%rcx, %rdx
 jmp .UNIQUE9009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9009: 
	movslq	%esi, %rax
 jmp .UNIQUE9010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9010: 
	movq	%rax, %r14
 jmp .UNIQUE9011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9011: 
	movl	$0, %r15d
 jmp .UNIQUE9012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9012: 
	movslq	%edi, %rax
 jmp .UNIQUE9013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9013: 
	movq	%rax, %r12
 jmp .UNIQUE9014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9014: 
	movl	$0, %r13d
 jmp .UNIQUE9015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9015: 
	movq	%r15, %rdx
 jmp .UNIQUE9016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9016: 
	imulq	%r12, %rdx
 jmp .UNIQUE9017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9017: 
	movq	%r13, %rax
 jmp .UNIQUE9018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9018: 
	imulq	%r14, %rax
 jmp .UNIQUE9019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9019: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE9020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9020: 
	movq	%r14, %rax
 jmp .UNIQUE9021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9021: 
	mulq	%r12
 jmp .UNIQUE9022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9022: 
	addq	%rdx, %rcx
 jmp .UNIQUE9023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9023: 
	movq	%rcx, %rdx
 jmp .UNIQUE9024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9024: 
	movslq	%esi, %rdx
 jmp .UNIQUE9025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9025: 
	movslq	%edi, %rax
 jmp .UNIQUE9026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9026: 
	imulq	%rdx, %rax
 jmp .UNIQUE9027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9027: 
	salq	$2, %rax
 jmp .UNIQUE9028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9028: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE9029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9029: 
	movl	$16, %eax
 jmp .UNIQUE9030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9030: 
	subq	$1, %rax
 jmp .UNIQUE9031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9031: 
	addq	%rdx, %rax
 jmp .UNIQUE9032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9032: 
	movl	$16, %ecx
 jmp .UNIQUE9033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9033: 
	movl	$0, %edx
 jmp .UNIQUE9034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9034: 
	divq	%rcx
 jmp .UNIQUE9035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9035: 
	imulq	$16, %rax, %rax
 jmp .UNIQUE9036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9036: 
	subq	%rax, %rsp
 jmp .UNIQUE9037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9037: 
	movq	%rsp, %rax
 jmp .UNIQUE9038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9038: 
	addq	$3, %rax
 jmp .UNIQUE9039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9039: 
	shrq	$2, %rax
 jmp .UNIQUE9040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9040: 
	salq	$2, %rax
 jmp .UNIQUE9041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9041: 
	movq	%rax, -80(%rbp)
 jmp .UNIQUE9042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9042: 
	movl	-116(%rbp), %edi
 jmp .UNIQUE9043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9043: 
	movl	-116(%rbp), %r8d
 jmp .UNIQUE9044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9044: 
	movslq	%edi, %rax
 jmp .UNIQUE9045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9045: 
	subq	$1, %rax
 jmp .UNIQUE9046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9046: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE9047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9047: 
	movslq	%edi, %rax
 jmp .UNIQUE9048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9048: 
	movq	%rax, -208(%rbp)
 jmp .UNIQUE9049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9049: 
	movq	$0, -200(%rbp)
 jmp .UNIQUE9050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9050: 
	movslq	%edi, %rax
 jmp .UNIQUE9051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9051: 
	leaq	0(,%rax,4), %rcx
 jmp .UNIQUE9052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9052: 
	movslq	%r8d, %rax
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
	movq	%rax, -64(%rbp)
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
	movq	%rax, -144(%rbp)
 jmp .UNIQUE9057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9057: 
	movq	$0, -136(%rbp)
 jmp .UNIQUE9058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9058: 
	movslq	%r8d, %rax
 jmp .UNIQUE9059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9059: 
	movq	%rax, -160(%rbp)
 jmp .UNIQUE9060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9060: 
	movq	$0, -152(%rbp)
 jmp .UNIQUE9061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9061: 
	movq	-144(%rbp), %r14
 jmp .UNIQUE9062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9062: 
	movq	-136(%rbp), %r15
 jmp .UNIQUE9063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9063: 
	movq	%r15, %rdx
 jmp .UNIQUE9064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9064: 
	movq	-160(%rbp), %r9
 jmp .UNIQUE9065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9065: 
	movq	-152(%rbp), %r10
 jmp .UNIQUE9066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9066: 
	imulq	%r9, %rdx
 jmp .UNIQUE9067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9067: 
	movq	%r10, %rax
 jmp .UNIQUE9068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9068: 
	imulq	%r14, %rax
 jmp .UNIQUE9069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9069: 
	leaq	(%rdx,%rax), %rsi
 jmp .UNIQUE9070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9070: 
	movq	%r14, %rax
 jmp .UNIQUE9071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9071: 
	mulq	%r9
 jmp .UNIQUE9072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9072: 
	addq	%rdx, %rsi
 jmp .UNIQUE9073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9073: 
	movq	%rsi, %rdx
 jmp .UNIQUE9074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9074: 
	movslq	%edi, %rax
 jmp .UNIQUE9075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9075: 
	movq	%rax, -176(%rbp)
 jmp .UNIQUE9076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9076: 
	movq	$0, -168(%rbp)
 jmp .UNIQUE9077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9077: 
	movslq	%r8d, %rax
 jmp .UNIQUE9078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9078: 
	movq	%rax, -192(%rbp)
 jmp .UNIQUE9079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9079: 
	movq	$0, -184(%rbp)
 jmp .UNIQUE9080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9080: 
	movq	-176(%rbp), %r9
 jmp .UNIQUE9081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9081: 
	movq	-168(%rbp), %r10
 jmp .UNIQUE9082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9082: 
	movq	%r10, %rdx
 jmp .UNIQUE9083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9083: 
	movq	-192(%rbp), %r11
 jmp .UNIQUE9084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9084: 
	movq	-184(%rbp), %r12
 jmp .UNIQUE9085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9085: 
	imulq	%r11, %rdx
 jmp .UNIQUE9086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9086: 
	movq	%r12, %rax
 jmp .UNIQUE9087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9087: 
	imulq	%r9, %rax
 jmp .UNIQUE9088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9088: 
	leaq	(%rdx,%rax), %rsi
 jmp .UNIQUE9089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9089: 
	movq	%r9, %rax
 jmp .UNIQUE9090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9090: 
	mulq	%r11
 jmp .UNIQUE9091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9091: 
	addq	%rdx, %rsi
 jmp .UNIQUE9092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9092: 
	movq	%rsi, %rdx
 jmp .UNIQUE9093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9093: 
	movslq	%edi, %rdx
 jmp .UNIQUE9094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9094: 
	movslq	%r8d, %rax
 jmp .UNIQUE9095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9095: 
	imulq	%rdx, %rax
 jmp .UNIQUE9096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9096: 
	salq	$2, %rax
 jmp .UNIQUE9097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9097: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE9098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9098: 
	movl	$16, %eax
 jmp .UNIQUE9099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9099: 
	subq	$1, %rax
 jmp .UNIQUE9100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9100: 
	addq	%rdx, %rax
 jmp .UNIQUE9101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9101: 
	movl	$16, %edi
 jmp .UNIQUE9102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9102: 
	movl	$0, %edx
 jmp .UNIQUE9103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9103: 
	divq	%rdi
 jmp .UNIQUE9104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9104: 
	imulq	$16, %rax, %rax
 jmp .UNIQUE9105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9105: 
	subq	%rax, %rsp
 jmp .UNIQUE9106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9106: 
	movq	%rsp, %rax
 jmp .UNIQUE9107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9107: 
	addq	$3, %rax
 jmp .UNIQUE9108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9108: 
	shrq	$2, %rax
 jmp .UNIQUE9109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9109: 
	salq	$2, %rax
 jmp .UNIQUE9110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9110: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE9111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9111: 
	movl	$0, -112(%rbp)
 jmp .UNIQUE9112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9112: 
	jmp	.L709
.L712:
 jmp .UNIQUE9113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9113: 
	movl	$0, -108(%rbp)
 jmp .UNIQUE9114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9114: 
	jmp	.L710
.L711:
 jmp .UNIQUE9115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9115: 
	movq	%rbx, %r8
 jmp .UNIQUE9116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9116: 
	shrq	$2, %r8
 jmp .UNIQUE9117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9117: 
	movl	-108(%rbp), %eax
 jmp .UNIQUE9118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9118: 
	cltq
 jmp .UNIQUE9119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9119: 
	movl	-112(%rbp), %edx
 jmp .UNIQUE9120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9120: 
	movslq	%edx, %rdx
 jmp .UNIQUE9121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9121: 
	imulq	$1001, %rdx, %rdx
 jmp .UNIQUE9122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9122: 
	addq	%rdx, %rax
 jmp .UNIQUE9123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9123: 
	movl	matrix1(,%rax,4), %edx
 jmp .UNIQUE9124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9124: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE9125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9125: 
	movl	-108(%rbp), %esi
 jmp .UNIQUE9126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9126: 
	movslq	%esi, %rdi
 jmp .UNIQUE9127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9127: 
	movl	-112(%rbp), %esi
 jmp .UNIQUE9128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9128: 
	movslq	%esi, %rsi
 jmp .UNIQUE9129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9129: 
	imulq	%r8, %rsi
 jmp .UNIQUE9130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9130: 
	addq	%rdi, %rsi
 jmp .UNIQUE9131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9131: 
	movl	%edx, (%rax,%rsi,4)
 jmp .UNIQUE9132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9132: 
	movq	%rcx, %r8
 jmp .UNIQUE9133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9133: 
	shrq	$2, %r8
 jmp .UNIQUE9134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9134: 
	movl	-108(%rbp), %eax
 jmp .UNIQUE9135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9135: 
	cltq
 jmp .UNIQUE9136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9136: 
	movl	-112(%rbp), %edx
 jmp .UNIQUE9137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9137: 
	movslq	%edx, %rdx
 jmp .UNIQUE9138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9138: 
	imulq	$1001, %rdx, %rdx
 jmp .UNIQUE9139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9139: 
	addq	%rdx, %rax
 jmp .UNIQUE9140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9140: 
	movl	matrix2(,%rax,4), %edx
 jmp .UNIQUE9141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9141: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE9142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9142: 
	movl	-108(%rbp), %esi
 jmp .UNIQUE9143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9143: 
	movslq	%esi, %rdi
 jmp .UNIQUE9144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9144: 
	movl	-112(%rbp), %esi
 jmp .UNIQUE9145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9145: 
	movslq	%esi, %rsi
 jmp .UNIQUE9146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9146: 
	imulq	%r8, %rsi
 jmp .UNIQUE9147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9147: 
	addq	%rdi, %rsi
 jmp .UNIQUE9148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9148: 
	movl	%edx, (%rax,%rsi,4)
 jmp .UNIQUE9149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9149: 
	addl	$1, -108(%rbp)
.L710:
 jmp .UNIQUE9150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9150: 
	movl	-108(%rbp), %eax
 jmp .UNIQUE9151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9151: 
	cmpl	-116(%rbp), %eax
 jmp .UNIQUE9152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9152: 
	jl	.L711
 jmp .UNIQUE9153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9153: 
	addl	$1, -112(%rbp)
.L709:
 jmp .UNIQUE9154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9154: 
	movl	-112(%rbp), %eax
 jmp .UNIQUE9155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9155: 
	cmpl	-116(%rbp), %eax
 jmp .UNIQUE9156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9156: 
	jl	.L712
 jmp .UNIQUE9157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9157: 
	movl	$0, -112(%rbp)
 jmp .UNIQUE9158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9158: 
	jmp	.L713
.L718:
 jmp .UNIQUE9159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9159: 
	movl	$0, -108(%rbp)
 jmp .UNIQUE9160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9160: 
	jmp	.L714
.L717:
 jmp .UNIQUE9161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9161: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE9162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9162: 
	movl	$0, -104(%rbp)
 jmp .UNIQUE9163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9163: 
	jmp	.L715
.L716:
 jmp .UNIQUE9164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9164: 
	movq	%rbx, %rdi
 jmp .UNIQUE9165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9165: 
	shrq	$2, %rdi
 jmp .UNIQUE9166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9166: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE9167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9167: 
	movl	-104(%rbp), %edx
 jmp .UNIQUE9168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9168: 
	movslq	%edx, %rsi
 jmp .UNIQUE9169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9169: 
	movl	-112(%rbp), %edx
 jmp .UNIQUE9170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9170: 
	movslq	%edx, %rdx
 jmp .UNIQUE9171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9171: 
	imulq	%rdi, %rdx
 jmp .UNIQUE9172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9172: 
	addq	%rsi, %rdx
 jmp .UNIQUE9173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9173: 
	movl	(%rax,%rdx,4), %edx
 jmp .UNIQUE9174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9174: 
	movq	%rcx, %r8
 jmp .UNIQUE9175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9175: 
	shrq	$2, %r8
 jmp .UNIQUE9176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9176: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE9177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9177: 
	movl	-108(%rbp), %esi
 jmp .UNIQUE9178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9178: 
	movslq	%esi, %rdi
 jmp .UNIQUE9179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9179: 
	movl	-104(%rbp), %esi
 jmp .UNIQUE9180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9180: 
	movslq	%esi, %rsi
 jmp .UNIQUE9181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9181: 
	imulq	%r8, %rsi
 jmp .UNIQUE9182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9182: 
	addq	%rdi, %rsi
 jmp .UNIQUE9183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9183: 
	movl	(%rax,%rsi,4), %eax
 jmp .UNIQUE9184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9184: 
	imull	%edx, %eax
 jmp .UNIQUE9185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9185: 
	addl	%eax, -100(%rbp)
 jmp .UNIQUE9186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9186: 
	addl	$1, -104(%rbp)
.L715:
 jmp .UNIQUE9187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9187: 
	movl	-104(%rbp), %eax
 jmp .UNIQUE9188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9188: 
	cmpl	-116(%rbp), %eax
 jmp .UNIQUE9189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9189: 
	jl	.L716
 jmp .UNIQUE9190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9190: 
	movl	-108(%rbp), %eax
 jmp .UNIQUE9191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9191: 
	cltq
 jmp .UNIQUE9192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9192: 
	movl	-112(%rbp), %edx
 jmp .UNIQUE9193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9193: 
	movslq	%edx, %rdx
 jmp .UNIQUE9194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9194: 
	imulq	$1001, %rdx, %rdx
 jmp .UNIQUE9195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9195: 
	addq	%rax, %rdx
 jmp .UNIQUE9196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9196: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE9197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9197: 
	movl	%eax, matrix_res1(,%rdx,4)
 jmp .UNIQUE9198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9198: 
	addl	$1, -108(%rbp)
.L714:
 jmp .UNIQUE9199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9199: 
	movl	-108(%rbp), %eax
 jmp .UNIQUE9200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9200: 
	cmpl	-116(%rbp), %eax
 jmp .UNIQUE9201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9201: 
	jl	.L717
 jmp .UNIQUE9202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9202: 
	addl	$1, -112(%rbp)
.L713:
 jmp .UNIQUE9203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9203: 
	movl	-112(%rbp), %eax
 jmp .UNIQUE9204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9204: 
	cmpl	-116(%rbp), %eax
 jmp .UNIQUE9205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9205: 
	jl	.L718
 jmp .UNIQUE9206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9206: 
	movl	$.LC133, %edi
 jmp .UNIQUE9207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9207: 
	call	puts
 jmp .UNIQUE9208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9208: 
	movl	$0, -112(%rbp)
 jmp .UNIQUE9209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9209: 
	jmp	.L719
.L720:
 jmp .UNIQUE9210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9210: 
	movl	-112(%rbp), %eax
 jmp .UNIQUE9211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9211: 
	cltq
 jmp .UNIQUE9212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9212: 
	movl	test_array(,%rax,4), %eax
 jmp .UNIQUE9213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9213: 
	movl	%eax, %esi
 jmp .UNIQUE9214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9214: 
	movl	$.LC22, %edi
 jmp .UNIQUE9215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9215: 
	movl	$0, %eax
 jmp .UNIQUE9216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9216: 
	call	printf
 jmp .UNIQUE9217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9217: 
	addl	$1, -112(%rbp)
.L719:
 jmp .UNIQUE9218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9218: 
	cmpl	$3, -112(%rbp)
 jmp .UNIQUE9219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9219: 
	jle	.L720
 jmp .UNIQUE9220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9220: 
	movl	$10, %edi
 jmp .UNIQUE9221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9221: 
	call	putchar
 jmp .UNIQUE9222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9222: 
	movq	-128(%rbp), %rsp
 jmp .UNIQUE9223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9223: 
	leaq	-40(%rbp), %rsp
 jmp .UNIQUE9224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9224: 
	popq	%rbx
 jmp .UNIQUE9225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9225: 
	popq	%r12
 jmp .UNIQUE9226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9226: 
	popq	%r13
 jmp .UNIQUE9227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9227: 
	popq	%r14
 jmp .UNIQUE9228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9228: 
	popq	%r15
 jmp .UNIQUE9229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9229: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE9230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9230: 
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
 jmp .UNIQUE9231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9231: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE9232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9232: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE9233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9233: 
	pushq	%r13
 jmp .UNIQUE9234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9234: 
	pushq	%r12
 jmp .UNIQUE9235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9235: 
	pushq	%rbx
 jmp .UNIQUE9236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9236: 
	subq	$120, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
 jmp .UNIQUE9237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9237: 
	movl	%edi, -52(%rbp)
 jmp .UNIQUE9238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9238: 
	movl	%esi, -56(%rbp)
 jmp .UNIQUE9239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9239: 
	movl	-52(%rbp), %eax
 jmp .UNIQUE9240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9240: 
	movslq	%eax, %rdx
 jmp .UNIQUE9241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9241: 
	movl	-52(%rbp), %eax
 jmp .UNIQUE9242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9242: 
	cltq
 jmp .UNIQUE9243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9243: 
	imulq	%rdx, %rax
 jmp .UNIQUE9244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9244: 
	salq	$2, %rax
 jmp .UNIQUE9245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9245: 
	movq	%rax, %rdx
 jmp .UNIQUE9246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9246: 
	movl	-52(%rbp), %eax
 jmp .UNIQUE9247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9247: 
	movslq	%eax, %rcx
 jmp .UNIQUE9248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9248: 
	movl	-52(%rbp), %eax
 jmp .UNIQUE9249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9249: 
	cltq
 jmp .UNIQUE9250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9250: 
	imulq	%rcx, %rax
 jmp .UNIQUE9251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9251: 
	salq	$2, %rax
 jmp .UNIQUE9252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9252: 
	movl	-56(%rbp), %esi
 jmp .UNIQUE9253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9253: 
	movl	-52(%rbp), %ecx
 jmp .UNIQUE9254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9254: 
	movq	$test_array, 72(%rsp)
 jmp .UNIQUE9255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9255: 
	movq	$1, 64(%rsp)
 jmp .UNIQUE9256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9256: 
	movq	%rdx, 56(%rsp)
 jmp .UNIQUE9257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9257: 
	movq	%rax, 48(%rsp)
 jmp .UNIQUE9258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9258: 
	movq	$16, 40(%rsp)
 jmp .UNIQUE9259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9259: 
	movq	$3, 32(%rsp)
 jmp .UNIQUE9260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9260: 
	movq	$0, 24(%rsp)
 jmp .UNIQUE9261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9261: 
	movq	$0, 16(%rsp)
 jmp .UNIQUE9262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9262: 
	movq	$0, 8(%rsp)
 jmp .UNIQUE9263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9263: 
	movq	$0, (%rsp)
 jmp .UNIQUE9264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9264: 
	movl	%esi, %r9d
 jmp .UNIQUE9265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9265: 
	movl	%ecx, %r8d
 jmp .UNIQUE9266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9266: 
	movl	$2, %ecx
 jmp .UNIQUE9267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9267: 
	movl	$7, %edx
 jmp .UNIQUE9268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9268: 
	movl	$0, %esi
 jmp .UNIQUE9269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9269: 
	movl	$1, %edi
 jmp .UNIQUE9270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9270: 
	movl	$0, %eax
 jmp .UNIQUE9271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9271: 
	call	init_function_params_with_uninitialised_elements
 jmp .UNIQUE9272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9272: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE9273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9273: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9274: 
	movq	%rax, %rdi
 jmp .UNIQUE9275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9275: 
	call	put_fun_params_into_secure_stack_and_free
 jmp .UNIQUE9276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9276: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE9277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9277: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9278: 
	movq	16(%rax), %rax
 jmp .UNIQUE9279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9279: 
	movq	24(%rax), %rax
 jmp .UNIQUE9280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9280: 
	movl	$0, %edx
 jmp .UNIQUE9281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9281: 
	movl	$2, %esi
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
	call	set_stack_int_array_element
 jmp .UNIQUE9284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9284: 
	jmp	.L722
.L725:
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
	movl	$3, %esi
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
	jmp	.L723
.L724:
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
	movl	$2, %esi
 jmp .UNIQUE9297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9297: 
	movq	%rax, %rdi
 jmp .UNIQUE9298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9298: 
	call	get_stack_int_array_element
 jmp .UNIQUE9299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9299: 
	movl	%eax, %ebx
 jmp .UNIQUE9300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9300: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9301: 
	movq	16(%rax), %rax
 jmp .UNIQUE9302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9302: 
	movq	24(%rax), %rax
 jmp .UNIQUE9303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9303: 
	movl	$3, %esi
 jmp .UNIQUE9304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9304: 
	movq	%rax, %rdi
 jmp .UNIQUE9305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9305: 
	call	get_stack_int_array_element
 jmp .UNIQUE9306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9306: 
	cltq
 jmp .UNIQUE9307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9307: 
	movslq	%ebx, %rdx
 jmp .UNIQUE9308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9308: 
	imulq	$1001, %rdx, %rdx
 jmp .UNIQUE9309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9309: 
	addq	%rdx, %rax
 jmp .UNIQUE9310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9310: 
	movl	matrix1(,%rax,4), %ebx
 jmp .UNIQUE9311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9311: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9312: 
	movq	16(%rax), %rax
 jmp .UNIQUE9313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9313: 
	movq	24(%rax), %rax
 jmp .UNIQUE9314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9314: 
	movl	$2, %esi
 jmp .UNIQUE9315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9315: 
	movq	%rax, %rdi
 jmp .UNIQUE9316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9316: 
	call	get_stack_int_array_element
 jmp .UNIQUE9317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9317: 
	movl	%eax, %r12d
 jmp .UNIQUE9318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9318: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9319: 
	movq	16(%rax), %rax
 jmp .UNIQUE9320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9320: 
	movq	24(%rax), %rax
 jmp .UNIQUE9321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9321: 
	movl	$0, %esi
 jmp .UNIQUE9322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9322: 
	movq	%rax, %rdi
 jmp .UNIQUE9323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9323: 
	call	get_stack_int_array_element
 jmp .UNIQUE9324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9324: 
	imull	%eax, %r12d
 jmp .UNIQUE9325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9325: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9326: 
	movq	16(%rax), %rax
 jmp .UNIQUE9327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9327: 
	movq	24(%rax), %rax
 jmp .UNIQUE9328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9328: 
	movl	$3, %esi
 jmp .UNIQUE9329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9329: 
	movq	%rax, %rdi
 jmp .UNIQUE9330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9330: 
	call	get_stack_int_array_element
 jmp .UNIQUE9331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9331: 
	addl	%r12d, %eax
 jmp .UNIQUE9332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9332: 
	movslq	%eax, %rcx
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
	movq	120(%rax), %rax
 jmp .UNIQUE9336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9336: 
	addq	$8, %rax
 jmp .UNIQUE9337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9337: 
	movq	(%rax), %rax
 jmp .UNIQUE9338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9338: 
	movl	%ebx, %edx
 jmp .UNIQUE9339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9339: 
	movq	%rcx, %rsi
 jmp .UNIQUE9340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9340: 
	movq	%rax, %rdi
 jmp .UNIQUE9341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9341: 
	call	set_stack_int_array_element
 jmp .UNIQUE9342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9342: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9343: 
	movq	16(%rax), %rax
 jmp .UNIQUE9344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9344: 
	movq	24(%rax), %rax
 jmp .UNIQUE9345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9345: 
	movl	$2, %esi
 jmp .UNIQUE9346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9346: 
	movq	%rax, %rdi
 jmp .UNIQUE9347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9347: 
	call	get_stack_int_array_element
 jmp .UNIQUE9348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9348: 
	movl	%eax, %ebx
 jmp .UNIQUE9349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9349: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9350: 
	movq	16(%rax), %rax
 jmp .UNIQUE9351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9351: 
	movq	24(%rax), %rax
 jmp .UNIQUE9352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9352: 
	movl	$3, %esi
 jmp .UNIQUE9353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9353: 
	movq	%rax, %rdi
 jmp .UNIQUE9354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9354: 
	call	get_stack_int_array_element
 jmp .UNIQUE9355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9355: 
	cltq
 jmp .UNIQUE9356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9356: 
	movslq	%ebx, %rdx
 jmp .UNIQUE9357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9357: 
	imulq	$1001, %rdx, %rdx
 jmp .UNIQUE9358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9358: 
	addq	%rdx, %rax
 jmp .UNIQUE9359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9359: 
	movl	matrix2(,%rax,4), %ebx
 jmp .UNIQUE9360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9360: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9361: 
	movq	16(%rax), %rax
 jmp .UNIQUE9362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9362: 
	movq	24(%rax), %rax
 jmp .UNIQUE9363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9363: 
	movl	$2, %esi
 jmp .UNIQUE9364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9364: 
	movq	%rax, %rdi
 jmp .UNIQUE9365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9365: 
	call	get_stack_int_array_element
 jmp .UNIQUE9366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9366: 
	movl	%eax, %r12d
 jmp .UNIQUE9367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9367: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9368: 
	movq	16(%rax), %rax
 jmp .UNIQUE9369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9369: 
	movq	24(%rax), %rax
 jmp .UNIQUE9370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9370: 
	movl	$0, %esi
 jmp .UNIQUE9371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9371: 
	movq	%rax, %rdi
 jmp .UNIQUE9372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9372: 
	call	get_stack_int_array_element
 jmp .UNIQUE9373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9373: 
	imull	%eax, %r12d
 jmp .UNIQUE9374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9374: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9375: 
	movq	16(%rax), %rax
 jmp .UNIQUE9376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9376: 
	movq	24(%rax), %rax
 jmp .UNIQUE9377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9377: 
	movl	$3, %esi
 jmp .UNIQUE9378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9378: 
	movq	%rax, %rdi
 jmp .UNIQUE9379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9379: 
	call	get_stack_int_array_element
 jmp .UNIQUE9380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9380: 
	addl	%r12d, %eax
 jmp .UNIQUE9381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9381: 
	movslq	%eax, %rcx
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
	movq	120(%rax), %rax
 jmp .UNIQUE9385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9385: 
	addq	$16, %rax
 jmp .UNIQUE9386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9386: 
	movq	(%rax), %rax
 jmp .UNIQUE9387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9387: 
	movl	%ebx, %edx
 jmp .UNIQUE9388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9388: 
	movq	%rcx, %rsi
 jmp .UNIQUE9389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9389: 
	movq	%rax, %rdi
 jmp .UNIQUE9390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9390: 
	call	set_stack_int_array_element
 jmp .UNIQUE9391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9391: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9392: 
	movq	16(%rax), %rax
 jmp .UNIQUE9393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9393: 
	movq	24(%rax), %rax
 jmp .UNIQUE9394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9394: 
	movl	$3, %esi
 jmp .UNIQUE9395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9395: 
	movq	%rax, %rdi
 jmp .UNIQUE9396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9396: 
	call	get_stack_int_array_element
 jmp .UNIQUE9397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9397: 
	leal	1(%rax), %edx
 jmp .UNIQUE9398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9398: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9399: 
	movq	16(%rax), %rax
 jmp .UNIQUE9400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9400: 
	movq	24(%rax), %rax
 jmp .UNIQUE9401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9401: 
	movl	$3, %esi
 jmp .UNIQUE9402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9402: 
	movq	%rax, %rdi
 jmp .UNIQUE9403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9403: 
	call	set_stack_int_array_element
.L723:
 jmp .UNIQUE9404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9404: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9405: 
	movq	16(%rax), %rax
 jmp .UNIQUE9406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9406: 
	movq	24(%rax), %rax
 jmp .UNIQUE9407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9407: 
	movl	$3, %esi
 jmp .UNIQUE9408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9408: 
	movq	%rax, %rdi
 jmp .UNIQUE9409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9409: 
	call	get_stack_int_array_element
 jmp .UNIQUE9410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9410: 
	movl	%eax, %ebx
 jmp .UNIQUE9411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9411: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9412: 
	movq	16(%rax), %rax
 jmp .UNIQUE9413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9413: 
	movq	24(%rax), %rax
 jmp .UNIQUE9414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9414: 
	movl	$0, %esi
 jmp .UNIQUE9415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9415: 
	movq	%rax, %rdi
 jmp .UNIQUE9416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9416: 
	call	get_stack_int_array_element
 jmp .UNIQUE9417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9417: 
	cmpl	%eax, %ebx
 jmp .UNIQUE9418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9418: 
	jl	.L724
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
	movl	$2, %esi
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
	leal	1(%rax), %edx
 jmp .UNIQUE9426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9426: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9427: 
	movq	16(%rax), %rax
 jmp .UNIQUE9428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9428: 
	movq	24(%rax), %rax
 jmp .UNIQUE9429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9429: 
	movl	$2, %esi
 jmp .UNIQUE9430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9430: 
	movq	%rax, %rdi
 jmp .UNIQUE9431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9431: 
	call	set_stack_int_array_element
.L722:
 jmp .UNIQUE9432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9432: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9433: 
	movq	16(%rax), %rax
 jmp .UNIQUE9434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9434: 
	movq	24(%rax), %rax
 jmp .UNIQUE9435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9435: 
	movl	$2, %esi
 jmp .UNIQUE9436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9436: 
	movq	%rax, %rdi
 jmp .UNIQUE9437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9437: 
	call	get_stack_int_array_element
 jmp .UNIQUE9438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9438: 
	movl	%eax, %ebx
 jmp .UNIQUE9439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9439: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9440: 
	movq	16(%rax), %rax
 jmp .UNIQUE9441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9441: 
	movq	24(%rax), %rax
 jmp .UNIQUE9442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9442: 
	movl	$0, %esi
 jmp .UNIQUE9443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9443: 
	movq	%rax, %rdi
 jmp .UNIQUE9444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9444: 
	call	get_stack_int_array_element
 jmp .UNIQUE9445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9445: 
	cmpl	%eax, %ebx
 jmp .UNIQUE9446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9446: 
	jl	.L725
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
	movl	$0, %edx
 jmp .UNIQUE9451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9451: 
	movl	$2, %esi
 jmp .UNIQUE9452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9452: 
	movq	%rax, %rdi
 jmp .UNIQUE9453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9453: 
	call	set_stack_int_array_element
 jmp .UNIQUE9454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9454: 
	jmp	.L726
.L731:
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
	movl	$3, %esi
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
	jmp	.L727
.L730:
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
	movl	$6, %esi
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
	movq	-40(%rbp), %rax
 jmp .UNIQUE9471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9471: 
	movq	16(%rax), %rax
 jmp .UNIQUE9472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9472: 
	movq	24(%rax), %rax
 jmp .UNIQUE9473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9473: 
	movl	$0, %edx
 jmp .UNIQUE9474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9474: 
	movl	$4, %esi
 jmp .UNIQUE9475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9475: 
	movq	%rax, %rdi
 jmp .UNIQUE9476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9476: 
	call	set_stack_int_array_element
 jmp .UNIQUE9477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9477: 
	jmp	.L728
.L729:
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
	movl	$6, %esi
 jmp .UNIQUE9482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9482: 
	movq	%rax, %rdi
 jmp .UNIQUE9483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9483: 
	call	get_stack_int_array_element
 jmp .UNIQUE9484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9484: 
	movl	%eax, %ebx
 jmp .UNIQUE9485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9485: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9486: 
	movq	16(%rax), %rax
 jmp .UNIQUE9487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9487: 
	movq	24(%rax), %rax
 jmp .UNIQUE9488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9488: 
	movl	$2, %esi
 jmp .UNIQUE9489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9489: 
	movq	%rax, %rdi
 jmp .UNIQUE9490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9490: 
	call	get_stack_int_array_element
 jmp .UNIQUE9491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9491: 
	movl	%eax, %r12d
 jmp .UNIQUE9492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9492: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9493: 
	movq	16(%rax), %rax
 jmp .UNIQUE9494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9494: 
	movq	24(%rax), %rax
 jmp .UNIQUE9495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9495: 
	movl	$0, %esi
 jmp .UNIQUE9496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9496: 
	movq	%rax, %rdi
 jmp .UNIQUE9497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9497: 
	call	get_stack_int_array_element
 jmp .UNIQUE9498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9498: 
	imull	%eax, %r12d
 jmp .UNIQUE9499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9499: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9500: 
	movq	16(%rax), %rax
 jmp .UNIQUE9501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9501: 
	movq	24(%rax), %rax
 jmp .UNIQUE9502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9502: 
	movl	$4, %esi
 jmp .UNIQUE9503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9503: 
	movq	%rax, %rdi
 jmp .UNIQUE9504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9504: 
	call	get_stack_int_array_element
 jmp .UNIQUE9505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9505: 
	addl	%r12d, %eax
 jmp .UNIQUE9506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9506: 
	movslq	%eax, %rdx
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
	movq	120(%rax), %rax
 jmp .UNIQUE9510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9510: 
	addq	$8, %rax
 jmp .UNIQUE9511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9511: 
	movq	(%rax), %rax
 jmp .UNIQUE9512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9512: 
	movq	%rdx, %rsi
 jmp .UNIQUE9513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9513: 
	movq	%rax, %rdi
 jmp .UNIQUE9514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9514: 
	call	get_stack_int_array_element
 jmp .UNIQUE9515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9515: 
	movl	%eax, %r12d
 jmp .UNIQUE9516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9516: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9517: 
	movq	16(%rax), %rax
 jmp .UNIQUE9518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9518: 
	movq	24(%rax), %rax
 jmp .UNIQUE9519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9519: 
	movl	$4, %esi
 jmp .UNIQUE9520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9520: 
	movq	%rax, %rdi
 jmp .UNIQUE9521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9521: 
	call	get_stack_int_array_element
 jmp .UNIQUE9522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9522: 
	movl	%eax, %r13d
 jmp .UNIQUE9523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9523: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9524: 
	movq	16(%rax), %rax
 jmp .UNIQUE9525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9525: 
	movq	24(%rax), %rax
 jmp .UNIQUE9526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9526: 
	movl	$0, %esi
 jmp .UNIQUE9527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9527: 
	movq	%rax, %rdi
 jmp .UNIQUE9528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9528: 
	call	get_stack_int_array_element
 jmp .UNIQUE9529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9529: 
	imull	%eax, %r13d
 jmp .UNIQUE9530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9530: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9531: 
	movq	16(%rax), %rax
 jmp .UNIQUE9532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9532: 
	movq	24(%rax), %rax
 jmp .UNIQUE9533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9533: 
	movl	$3, %esi
 jmp .UNIQUE9534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9534: 
	movq	%rax, %rdi
 jmp .UNIQUE9535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9535: 
	call	get_stack_int_array_element
 jmp .UNIQUE9536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9536: 
	addl	%r13d, %eax
 jmp .UNIQUE9537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9537: 
	movslq	%eax, %rdx
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
	movq	120(%rax), %rax
 jmp .UNIQUE9541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9541: 
	addq	$16, %rax
 jmp .UNIQUE9542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9542: 
	movq	(%rax), %rax
 jmp .UNIQUE9543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9543: 
	movq	%rdx, %rsi
 jmp .UNIQUE9544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9544: 
	movq	%rax, %rdi
 jmp .UNIQUE9545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9545: 
	call	get_stack_int_array_element
 jmp .UNIQUE9546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9546: 
	imull	%r12d, %eax
 jmp .UNIQUE9547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9547: 
	leal	(%rbx,%rax), %edx
 jmp .UNIQUE9548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9548: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9549: 
	movq	16(%rax), %rax
 jmp .UNIQUE9550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9550: 
	movq	24(%rax), %rax
 jmp .UNIQUE9551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9551: 
	movl	$6, %esi
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
	call	set_stack_int_array_element
 jmp .UNIQUE9554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9554: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9555: 
	movq	16(%rax), %rax
 jmp .UNIQUE9556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9556: 
	movq	24(%rax), %rax
 jmp .UNIQUE9557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9557: 
	movl	$4, %esi
 jmp .UNIQUE9558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9558: 
	movq	%rax, %rdi
 jmp .UNIQUE9559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9559: 
	call	get_stack_int_array_element
 jmp .UNIQUE9560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9560: 
	leal	1(%rax), %edx
 jmp .UNIQUE9561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9561: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9562: 
	movq	16(%rax), %rax
 jmp .UNIQUE9563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9563: 
	movq	24(%rax), %rax
 jmp .UNIQUE9564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9564: 
	movl	$4, %esi
 jmp .UNIQUE9565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9565: 
	movq	%rax, %rdi
 jmp .UNIQUE9566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9566: 
	call	set_stack_int_array_element
.L728:
 jmp .UNIQUE9567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9567: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9568: 
	movq	16(%rax), %rax
 jmp .UNIQUE9569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9569: 
	movq	24(%rax), %rax
 jmp .UNIQUE9570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9570: 
	movl	$4, %esi
 jmp .UNIQUE9571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9571: 
	movq	%rax, %rdi
 jmp .UNIQUE9572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9572: 
	call	get_stack_int_array_element
 jmp .UNIQUE9573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9573: 
	movl	%eax, %ebx
 jmp .UNIQUE9574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9574: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9575: 
	movq	16(%rax), %rax
 jmp .UNIQUE9576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9576: 
	movq	24(%rax), %rax
 jmp .UNIQUE9577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9577: 
	movl	$0, %esi
 jmp .UNIQUE9578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9578: 
	movq	%rax, %rdi
 jmp .UNIQUE9579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9579: 
	call	get_stack_int_array_element
 jmp .UNIQUE9580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9580: 
	cmpl	%eax, %ebx
 jmp .UNIQUE9581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9581: 
	jl	.L729
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
	movl	$2, %esi
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
	movl	%eax, %ebx
 jmp .UNIQUE9589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9589: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9590: 
	movq	16(%rax), %rax
 jmp .UNIQUE9591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9591: 
	movq	24(%rax), %rax
 jmp .UNIQUE9592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9592: 
	movl	$3, %esi
 jmp .UNIQUE9593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9593: 
	movq	%rax, %rdi
 jmp .UNIQUE9594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9594: 
	call	get_stack_int_array_element
 jmp .UNIQUE9595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9595: 
	movl	%eax, %r12d
 jmp .UNIQUE9596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9596: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9597: 
	movq	16(%rax), %rax
 jmp .UNIQUE9598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9598: 
	movq	24(%rax), %rax
 jmp .UNIQUE9599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9599: 
	movl	$6, %esi
 jmp .UNIQUE9600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9600: 
	movq	%rax, %rdi
 jmp .UNIQUE9601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9601: 
	call	get_stack_int_array_element
 jmp .UNIQUE9602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9602: 
	movslq	%r12d, %rdx
 jmp .UNIQUE9603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9603: 
	movslq	%ebx, %rcx
 jmp .UNIQUE9604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9604: 
	imulq	$1001, %rcx, %rcx
 jmp .UNIQUE9605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9605: 
	addq	%rcx, %rdx
 jmp .UNIQUE9606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9606: 
	movl	%eax, matrix_res2(,%rdx,4)
 jmp .UNIQUE9607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9607: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9608: 
	movq	16(%rax), %rax
 jmp .UNIQUE9609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9609: 
	movq	24(%rax), %rax
 jmp .UNIQUE9610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9610: 
	movl	$3, %esi
 jmp .UNIQUE9611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9611: 
	movq	%rax, %rdi
 jmp .UNIQUE9612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9612: 
	call	get_stack_int_array_element
 jmp .UNIQUE9613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9613: 
	leal	1(%rax), %edx
 jmp .UNIQUE9614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9614: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9615: 
	movq	16(%rax), %rax
 jmp .UNIQUE9616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9616: 
	movq	24(%rax), %rax
 jmp .UNIQUE9617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9617: 
	movl	$3, %esi
 jmp .UNIQUE9618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9618: 
	movq	%rax, %rdi
 jmp .UNIQUE9619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9619: 
	call	set_stack_int_array_element
.L727:
 jmp .UNIQUE9620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9620: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9621: 
	movq	16(%rax), %rax
 jmp .UNIQUE9622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9622: 
	movq	24(%rax), %rax
 jmp .UNIQUE9623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9623: 
	movl	$3, %esi
 jmp .UNIQUE9624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9624: 
	movq	%rax, %rdi
 jmp .UNIQUE9625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9625: 
	call	get_stack_int_array_element
 jmp .UNIQUE9626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9626: 
	movl	%eax, %ebx
 jmp .UNIQUE9627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9627: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9628: 
	movq	16(%rax), %rax
 jmp .UNIQUE9629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9629: 
	movq	24(%rax), %rax
 jmp .UNIQUE9630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9630: 
	movl	$0, %esi
 jmp .UNIQUE9631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9631: 
	movq	%rax, %rdi
 jmp .UNIQUE9632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9632: 
	call	get_stack_int_array_element
 jmp .UNIQUE9633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9633: 
	cmpl	%eax, %ebx
 jmp .UNIQUE9634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9634: 
	jl	.L730
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
	movl	$2, %esi
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
	leal	1(%rax), %edx
 jmp .UNIQUE9642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9642: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9643: 
	movq	16(%rax), %rax
 jmp .UNIQUE9644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9644: 
	movq	24(%rax), %rax
 jmp .UNIQUE9645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9645: 
	movl	$2, %esi
 jmp .UNIQUE9646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9646: 
	movq	%rax, %rdi
 jmp .UNIQUE9647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9647: 
	call	set_stack_int_array_element
.L726:
 jmp .UNIQUE9648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9648: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9649: 
	movq	16(%rax), %rax
 jmp .UNIQUE9650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9650: 
	movq	24(%rax), %rax
 jmp .UNIQUE9651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9651: 
	movl	$2, %esi
 jmp .UNIQUE9652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9652: 
	movq	%rax, %rdi
 jmp .UNIQUE9653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9653: 
	call	get_stack_int_array_element
 jmp .UNIQUE9654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9654: 
	movl	%eax, %ebx
 jmp .UNIQUE9655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9655: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9656: 
	movq	16(%rax), %rax
 jmp .UNIQUE9657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9657: 
	movq	24(%rax), %rax
 jmp .UNIQUE9658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9658: 
	movl	$0, %esi
 jmp .UNIQUE9659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9659: 
	movq	%rax, %rdi
 jmp .UNIQUE9660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9660: 
	call	get_stack_int_array_element
 jmp .UNIQUE9661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9661: 
	cmpl	%eax, %ebx
 jmp .UNIQUE9662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9662: 
	jl	.L731
 jmp .UNIQUE9663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9663: 
	movl	$.LC133, %edi
 jmp .UNIQUE9664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9664: 
	call	puts
 jmp .UNIQUE9665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9665: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9666: 
	movq	16(%rax), %rax
 jmp .UNIQUE9667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9667: 
	movq	24(%rax), %rax
 jmp .UNIQUE9668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9668: 
	movl	$0, %edx
 jmp .UNIQUE9669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9669: 
	movl	$2, %esi
 jmp .UNIQUE9670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9670: 
	movq	%rax, %rdi
 jmp .UNIQUE9671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9671: 
	call	set_stack_int_array_element
 jmp .UNIQUE9672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9672: 
	jmp	.L732
.L733:
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
	movl	$2, %esi
 jmp .UNIQUE9677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9677: 
	movq	%rax, %rdi
 jmp .UNIQUE9678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9678: 
	call	get_stack_int_array_element
 jmp .UNIQUE9679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9679: 
	movslq	%eax, %rdx
 jmp .UNIQUE9680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9680: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9681: 
	movq	16(%rax), %rax
 jmp .UNIQUE9682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9682: 
	movq	120(%rax), %rax
 jmp .UNIQUE9683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9683: 
	movq	(%rax), %rax
 jmp .UNIQUE9684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9684: 
	movq	%rdx, %rsi
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
	movl	%eax, %esi
 jmp .UNIQUE9688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9688: 
	movl	$.LC22, %edi
 jmp .UNIQUE9689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9689: 
	movl	$0, %eax
 jmp .UNIQUE9690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9690: 
	call	printf
 jmp .UNIQUE9691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9691: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9692: 
	movq	16(%rax), %rax
 jmp .UNIQUE9693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9693: 
	movq	24(%rax), %rax
 jmp .UNIQUE9694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9694: 
	movl	$2, %esi
 jmp .UNIQUE9695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9695: 
	movq	%rax, %rdi
 jmp .UNIQUE9696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9696: 
	call	get_stack_int_array_element
 jmp .UNIQUE9697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9697: 
	leal	1(%rax), %edx
 jmp .UNIQUE9698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9698: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9699: 
	movq	16(%rax), %rax
 jmp .UNIQUE9700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9700: 
	movq	24(%rax), %rax
 jmp .UNIQUE9701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9701: 
	movl	$2, %esi
 jmp .UNIQUE9702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9702: 
	movq	%rax, %rdi
 jmp .UNIQUE9703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9703: 
	call	set_stack_int_array_element
.L732:
 jmp .UNIQUE9704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9704: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9705: 
	movq	16(%rax), %rax
 jmp .UNIQUE9706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9706: 
	movq	24(%rax), %rax
 jmp .UNIQUE9707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9707: 
	movl	$2, %esi
 jmp .UNIQUE9708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9708: 
	movq	%rax, %rdi
 jmp .UNIQUE9709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9709: 
	call	get_stack_int_array_element
 jmp .UNIQUE9710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9710: 
	cmpl	$3, %eax
 jmp .UNIQUE9711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9711: 
	jle	.L733
 jmp .UNIQUE9712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9712: 
	movl	$10, %edi
 jmp .UNIQUE9713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9713: 
	call	putchar
 jmp .UNIQUE9714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9714: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9715: 
	movq	8(%rax), %rax
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
	call	free_chunks_from_secure_stack
 jmp .UNIQUE9718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9718: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9719: 
	movq	%rax, %rdi
 jmp .UNIQUE9720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9720: 
	call	free_fun_params_that_point_to_stack
 jmp .UNIQUE9721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9721: 
	addq	$120, %rsp
 jmp .UNIQUE9722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9722: 
	popq	%rbx
 jmp .UNIQUE9723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9723: 
	popq	%r12
 jmp .UNIQUE9724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9724: 
	popq	%r13
 jmp .UNIQUE9725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9725: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE9726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9726: 
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
 jmp .UNIQUE9727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9727: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE9728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9728: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE9729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9729: 
	movl	%edi, -20(%rbp)
 jmp .UNIQUE9730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9730: 
	movl	$1, -4(%rbp)
 jmp .UNIQUE9731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9731: 
	movl	$0, -12(%rbp)
 jmp .UNIQUE9732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9732: 
	jmp	.L735
.L742:
 jmp .UNIQUE9733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9733: 
	movl	$0, -8(%rbp)
 jmp .UNIQUE9734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9734: 
	jmp	.L736
.L739:
 jmp .UNIQUE9735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9735: 
	movl	-8(%rbp), %eax
 jmp .UNIQUE9736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9736: 
	cltq
 jmp .UNIQUE9737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9737: 
	movl	-12(%rbp), %edx
 jmp .UNIQUE9738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9738: 
	movslq	%edx, %rdx
 jmp .UNIQUE9739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9739: 
	imulq	$1001, %rdx, %rdx
 jmp .UNIQUE9740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9740: 
	addq	%rdx, %rax
 jmp .UNIQUE9741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9741: 
	movl	matrix_res1(,%rax,4), %edx
 jmp .UNIQUE9742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9742: 
	movl	-8(%rbp), %eax
 jmp .UNIQUE9743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9743: 
	cltq
 jmp .UNIQUE9744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9744: 
	movl	-12(%rbp), %ecx
 jmp .UNIQUE9745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9745: 
	movslq	%ecx, %rcx
 jmp .UNIQUE9746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9746: 
	imulq	$1001, %rcx, %rcx
 jmp .UNIQUE9747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9747: 
	addq	%rcx, %rax
 jmp .UNIQUE9748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9748: 
	movl	matrix_res2(,%rax,4), %eax
 jmp .UNIQUE9749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9749: 
	cmpl	%eax, %edx
 jmp .UNIQUE9750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9750: 
	je	.L737
 jmp .UNIQUE9751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9751: 
	movl	$0, -4(%rbp)
 jmp .UNIQUE9752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9752: 
	jmp	.L738
.L737:
 jmp .UNIQUE9753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9753: 
	addl	$1, -8(%rbp)
.L736:
 jmp .UNIQUE9754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9754: 
	movl	-8(%rbp), %eax
 jmp .UNIQUE9755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9755: 
	cmpl	-20(%rbp), %eax
 jmp .UNIQUE9756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9756: 
	jl	.L739
.L738:
 jmp .UNIQUE9757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9757: 
	cmpl	$0, -4(%rbp)
 jmp .UNIQUE9758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9758: 
	jne	.L740
 jmp .UNIQUE9759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9759: 
	jmp	.L741
.L740:
 jmp .UNIQUE9760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9760: 
	addl	$1, -12(%rbp)
.L735:
 jmp .UNIQUE9761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9761: 
	movl	-12(%rbp), %eax
 jmp .UNIQUE9762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9762: 
	cmpl	-20(%rbp), %eax
 jmp .UNIQUE9763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9763: 
	jl	.L742
.L741:
 jmp .UNIQUE9764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9764: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE9765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9765: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE9766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9766: 
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
 jmp .UNIQUE9767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9767: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE9768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9768: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE9769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9769: 
	movl	$.LC134, %edi
 jmp .UNIQUE9770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9770: 
	call	puts
 jmp .UNIQUE9771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9771: 
	movl	$3000, %esi
 jmp .UNIQUE9772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9772: 
	movl	$.LC135, %edi
 jmp .UNIQUE9773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9773: 
	movl	$0, %eax
 jmp .UNIQUE9774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9774: 
	call	printf
 jmp .UNIQUE9775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9775: 
	movl	$.LC136, %edi
 jmp .UNIQUE9776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9776: 
	call	puts
 jmp .UNIQUE9777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9777: 
	movl	$0, %eax
 jmp .UNIQUE9778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9778: 
	call	init_mem
 jmp .UNIQUE9779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9779: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE9780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9780: 
	movq	%rax, %rsi
 jmp .UNIQUE9781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9781: 
	movl	$.LC137, %edi
 jmp .UNIQUE9782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9782: 
	movl	$0, %eax
 jmp .UNIQUE9783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9783: 
	call	printf
 jmp .UNIQUE9784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9784: 
	movl	$.LC138, %edi
 jmp .UNIQUE9785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9785: 
	call	puts
 jmp .UNIQUE9786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9786: 
	movl	$2048, %esi
 jmp .UNIQUE9787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9787: 
	movl	$.LC139, %edi
 jmp .UNIQUE9788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9788: 
	movl	$0, %eax
 jmp .UNIQUE9789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9789: 
	call	printf
 jmp .UNIQUE9790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9790: 
	movl	$.LC140, %edi
 jmp .UNIQUE9791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9791: 
	call	puts
 jmp .UNIQUE9792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9792: 
	movl	$0, %eax
 jmp .UNIQUE9793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9793: 
	call	init_stack_mem
 jmp .UNIQUE9794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9794: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE9795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9795: 
	movq	%rax, %rsi
 jmp .UNIQUE9796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9796: 
	movl	$.LC137, %edi
 jmp .UNIQUE9797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9797: 
	movl	$0, %eax
 jmp .UNIQUE9798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9798: 
	call	printf
 jmp .UNIQUE9799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9799: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE9800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9800: 
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
 jmp .UNIQUE9801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9801: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE9802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9802: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE9803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9803: 
	movl	$.LC141, %edi
 jmp .UNIQUE9804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9804: 
	call	puts
 jmp .UNIQUE9805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9805: 
	movq	$verification_procedure, sa(%rip)
 jmp .UNIQUE9806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9806: 
	movl	$sa+8, %edi
 jmp .UNIQUE9807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9807: 
	call	sigemptyset
 jmp .UNIQUE9808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9808: 
	movl	$268435456, sa+136(%rip)
 jmp .UNIQUE9809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9809: 
	movl	$0, %edx
 jmp .UNIQUE9810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9810: 
	movl	$sa, %esi
 jmp .UNIQUE9811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9811: 
	movl	$10, %edi
 jmp .UNIQUE9812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9812: 
	call	sigaction
 jmp .UNIQUE9813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9813: 
	cmpl	$-1, %eax
 jmp .UNIQUE9814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9814: 
	jne	.L746
 jmp .UNIQUE9815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9815: 
	movl	$.LC142, %edi
 jmp .UNIQUE9816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9816: 
	call	perror
 jmp .UNIQUE9817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9817: 
	movl	$45, %edi
 jmp .UNIQUE9818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9818: 
	call	exit
.L746:
 jmp .UNIQUE9819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9819: 
	movl	$.LC143, %edi
 jmp .UNIQUE9820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9820: 
	call	puts
 jmp .UNIQUE9821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9821: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE9822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9822: 
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
 jmp .UNIQUE9823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9823: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE9824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9824: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE9825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9825: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE9826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9826: 
	movq	%rax, %rdi
 jmp .UNIQUE9827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9827: 
	call	free_secure_mem
 jmp .UNIQUE9828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9828: 
	movq	entire_stack_memory_chunk(%rip), %rax
 jmp .UNIQUE9829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9829: 
	movq	%rax, %rdi
 jmp .UNIQUE9830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9830: 
	call	free_secure_stack_mem
 jmp .UNIQUE9831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9831: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE9832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9832: 
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
 jmp .UNIQUE9833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9833: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE9834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9834: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE9835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9835: 
	movl	%edi, -20(%rbp)
 jmp .UNIQUE9836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9836: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE9837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9837: 
	addl	$2, %eax
 jmp .UNIQUE9838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9838: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE9839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9839: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE9840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9840: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE9841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9841: 
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
	.string	"Calculating time for sieve of Eratosthenes. Normal sieve of Eratosthenes:"
	.align 8
.LC150:
	.string	"Normal sieve of Eratosthenes:%lg cpu seconds\n"
.LC151:
	.string	"Secure sieve of Eratosthenes:"
	.align 8
.LC152:
	.string	"Normal sieve of Eratosthenes time:%lg cpu seconds\n"
	.align 8
.LC153:
	.string	"Secure sieve of Eratosthenes time:%lg cpu seconds\n"
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
 jmp .UNIQUE9842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9842: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE9843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9843: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE9844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9844: 
	addq	$-128, %rsp
 jmp .UNIQUE9845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9845: 
	movq	%fs:40, %rax
 jmp .UNIQUE9846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9846: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE9847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9847: 
	xorl	%eax, %eax
 jmp .UNIQUE9848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9848: 
	movl	$1, -100(%rbp)
 jmp .UNIQUE9849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9849: 
	movl	$2, -96(%rbp)
 jmp .UNIQUE9850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9850: 
	addl	$1, -96(%rbp)
 jmp .UNIQUE9851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9851: 
	addl	$1, -96(%rbp)
 jmp .UNIQUE9852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9852: 
	subl	$1, -96(%rbp)
 jmp .UNIQUE9853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9853: 
	movl	-96(%rbp), %eax
 jmp .UNIQUE9854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9854: 
	addl	%eax, -100(%rbp)
 jmp .UNIQUE9855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9855: 
	addl	$2, -100(%rbp)
 jmp .UNIQUE9856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9856: 
	addl	$1, -96(%rbp)
 jmp .UNIQUE9857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9857: 
	movl	$1, static_main_variable_for_testing.6317(%rip)
 jmp .UNIQUE9858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9858: 
	movl	$2, static_global_variable_for_testing(%rip)
 jmp .UNIQUE9859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9859: 
	movl	$0, %eax
 jmp .UNIQUE9860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9860: 
	call	init_heap_and_stack_mem
 jmp .UNIQUE9861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9861: 
	movl	$0, %eax
 jmp .UNIQUE9862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9862: 
	call	install_signal_handler
 jmp .UNIQUE9863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9863: 
	call	getpid
 jmp .UNIQUE9864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9864: 
	movl	%eax, -92(%rbp)
 jmp .UNIQUE9865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9865: 
	movl	-92(%rbp), %eax
 jmp .UNIQUE9866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9866: 
	cltq
 jmp .UNIQUE9867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9867: 
	movq	%rax, %rsi
 jmp .UNIQUE9868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9868: 
	movl	$.LC144, %edi
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
	call	printf
 jmp .UNIQUE9871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9871: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE9872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9872: 
	movl	%eax, %esi
 jmp .UNIQUE9873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9873: 
	movl	$.LC145, %edi
 jmp .UNIQUE9874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9874: 
	movl	$0, %eax
 jmp .UNIQUE9875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9875: 
	call	printf
 jmp .UNIQUE9876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9876: 
	movl	$5, %edi
 jmp .UNIQUE9877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9877: 
	call	foo
 jmp .UNIQUE9878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9878: 
	movl	%eax, -88(%rbp)
 jmp .UNIQUE9879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9879: 
	movl	-88(%rbp), %eax
 jmp .UNIQUE9880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9880: 
	movl	%eax, %edi
 jmp .UNIQUE9881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9881: 
	call	foo2
 jmp .UNIQUE9882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9882: 
	movl	%eax, -88(%rbp)
 jmp .UNIQUE9883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9883: 
	movl	-88(%rbp), %eax
 jmp .UNIQUE9884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9884: 
	movl	%eax, %esi
 jmp .UNIQUE9885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9885: 
	movl	$.LC146, %edi
 jmp .UNIQUE9886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9886: 
	movl	$0, %eax
 jmp .UNIQUE9887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9887: 
	call	printf
 jmp .UNIQUE9888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9888: 
	movl	$main, %esi
 jmp .UNIQUE9889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9889: 
	movl	$.LC147, %edi
 jmp .UNIQUE9890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9890: 
	movl	$0, %eax
 jmp .UNIQUE9891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9891: 
	call	printf
 jmp .UNIQUE9892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9892: 
	movl	$1000, -84(%rbp)
 jmp .UNIQUE9893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9893: 
	movl	$10, %edi
 jmp .UNIQUE9894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9894: 
	call	putchar
 jmp .UNIQUE9895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9895: 
	movl	$.LC148, %edi
 jmp .UNIQUE9896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9896: 
	call	puts
 jmp .UNIQUE9897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9897: 
	call	clock
 jmp .UNIQUE9898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9898: 
	movq	%rax, -80(%rbp)
 jmp .UNIQUE9899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9899: 
	movl	-84(%rbp), %eax
 jmp .UNIQUE9900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9900: 
	movl	%eax, %edi
 jmp .UNIQUE9901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9901: 
	call	simple_sieve_of_Eratosthenes
 jmp .UNIQUE9902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9902: 
	call	clock
 jmp .UNIQUE9903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9903: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE9904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9904: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE9905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9905: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE9906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9906: 
	subq	%rax, %rdx
 jmp .UNIQUE9907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9907: 
	movq	%rdx, %rax
 jmp .UNIQUE9908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9908: 
	cvtsi2sdq	%rax, %xmm0
 jmp .UNIQUE9909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9909: 
	movsd	.LC149(%rip), %xmm1
 jmp .UNIQUE9910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9910: 
	divsd	%xmm1, %xmm0
 jmp .UNIQUE9911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9911: 
	movsd	%xmm0, -64(%rbp)
 jmp .UNIQUE9912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9912: 
	movl	$10, %edi
 jmp .UNIQUE9913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9913: 
	call	putchar
 jmp .UNIQUE9914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9914: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE9915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9915: 
	movq	%rax, -120(%rbp)
 jmp .UNIQUE9916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9916: 
	movsd	-120(%rbp), %xmm0
 jmp .UNIQUE9917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9917: 
	movl	$.LC150, %edi
 jmp .UNIQUE9918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9918: 
	movl	$1, %eax
 jmp .UNIQUE9919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9919: 
	call	printf
 jmp .UNIQUE9920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9920: 
	movl	$.LC151, %edi
 jmp .UNIQUE9921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9921: 
	call	puts
 jmp .UNIQUE9922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9922: 
	call	clock
 jmp .UNIQUE9923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9923: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE9924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9924: 
	movl	-84(%rbp), %eax
 jmp .UNIQUE9925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9925: 
	movl	%eax, %edi
 jmp .UNIQUE9926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9926: 
	call	user_friendly_secure_sieve_of_Eratosthenes
 jmp .UNIQUE9927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9927: 
	call	clock
 jmp .UNIQUE9928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9928: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE9929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9929: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE9930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9930: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE9931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9931: 
	subq	%rax, %rdx
 jmp .UNIQUE9932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9932: 
	movq	%rdx, %rax
 jmp .UNIQUE9933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9933: 
	cvtsi2sdq	%rax, %xmm0
 jmp .UNIQUE9934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9934: 
	movsd	.LC149(%rip), %xmm1
 jmp .UNIQUE9935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9935: 
	divsd	%xmm1, %xmm0
 jmp .UNIQUE9936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9936: 
	movsd	%xmm0, -40(%rbp)
 jmp .UNIQUE9937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9937: 
	movl	$10, %edi
 jmp .UNIQUE9938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9938: 
	call	putchar
 jmp .UNIQUE9939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9939: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE9940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9940: 
	movq	%rax, -120(%rbp)
 jmp .UNIQUE9941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9941: 
	movsd	-120(%rbp), %xmm0
 jmp .UNIQUE9942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9942: 
	movl	$.LC152, %edi
 jmp .UNIQUE9943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9943: 
	movl	$1, %eax
 jmp .UNIQUE9944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9944: 
	call	printf
 jmp .UNIQUE9945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9945: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE9946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9946: 
	movq	%rax, -120(%rbp)
 jmp .UNIQUE9947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9947: 
	movsd	-120(%rbp), %xmm0
 jmp .UNIQUE9948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9948: 
	movl	$.LC153, %edi
 jmp .UNIQUE9949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9949: 
	movl	$1, %eax
 jmp .UNIQUE9950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9950: 
	call	printf
 jmp .UNIQUE9951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9951: 
	movl	$10, %edi
 jmp .UNIQUE9952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9952: 
	call	putchar
 jmp .UNIQUE9953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9953: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE9954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9954: 
	divsd	-64(%rbp), %xmm0
 jmp .UNIQUE9955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9955: 
	movl	$.LC154, %edi
 jmp .UNIQUE9956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9956: 
	movl	$1, %eax
 jmp .UNIQUE9957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9957: 
	call	printf
 jmp .UNIQUE9958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9958: 
	movl	$10, %edi
 jmp .UNIQUE9959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9959: 
	call	putchar
 jmp .UNIQUE9960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9960: 
	movl	$.LC155, %edi
 jmp .UNIQUE9961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9961: 
	call	puts
 jmp .UNIQUE9962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9962: 
	movl	$0, %eax
 jmp .UNIQUE9963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9963: 
	call	find_keyshares
 jmp .UNIQUE9964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9964: 
	movl	$0, %eax
 jmp .UNIQUE9965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9965: 
	call	free_heap_and_stack_memory
 jmp .UNIQUE9966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9966: 
	movl	$0, %eax
 jmp .UNIQUE9967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9967: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE9968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9968: 
	xorq	%fs:40, %rcx
 jmp .UNIQUE9969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9969: 
	je	.L752
 jmp .UNIQUE9970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9970: 
	call	__stack_chk_fail
.L752:
 jmp .UNIQUE9971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9971: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE9972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9972: 
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
 jmp .UNIQUE9973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9973: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE9974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9974: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE9975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9975: 
	movl	%edi, -20(%rbp)
 jmp .UNIQUE9976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9976: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE9977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9977: 
	addl	$3, %eax
 jmp .UNIQUE9978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9978: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE9979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9979: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE9980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9980: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE9981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9981: 
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
	.type	__func__.5330, @object
	.size	__func__.5330, 16
__func__.5330:
	.string	"check_and_merge"
	.align 16
	.type	__func__.5346, @object
	.size	__func__.5346, 20
__func__.5346:
	.string	"managed_secure_free"
	.type	__func__.5397, @object
	.size	__func__.5397, 9
__func__.5397:
	.string	"mem_test"
	.align 32
	.type	__func__.5465, @object
	.size	__func__.5465, 32
__func__.5465:
	.string	"adding_heap_arrays_time_measure"
	.align 32
	.type	__func__.5480, @object
	.size	__func__.5480, 34
__func__.5480:
	.string	"multiple_simple_mallocs_and_frees"
	.align 32
	.type	__func__.5495, @object
	.size	__func__.5495, 34
__func__.5495:
	.string	"multiple_secure_mallocs_and_frees"
	.align 16
	.type	__func__.5552, @object
	.size	__func__.5552, 19
__func__.5552:
	.string	"allocate_stack_mem"
	.align 16
	.type	__func__.5673, @object
	.size	__func__.5673, 21
__func__.5673:
	.string	"init_function_params"
	.align 32
	.type	__func__.5711, @object
	.size	__func__.5711, 49
__func__.5711:
	.string	"init_function_params_with_uninitialised_elements"
	.align 32
	.type	__func__.5754, @object
	.size	__func__.5754, 33
__func__.5754:
	.string	"put_fun_params_into_secure_stack"
	.align 32
	.type	__func__.6008, @object
	.size	__func__.6008, 36
__func__.6008:
	.string	"tower_of_Hanoi_init_secure_template"
	.align 16
	.type	__func__.6014, @object
	.size	__func__.6014, 22
__func__.6014:
	.string	"stack_fun_params_test"
	.align 32
	.type	__func__.6134, @object
	.size	__func__.6134, 34
__func__.6134:
	.string	"secure_find_primes_up_to_a_number"
	.align 16
	.type	__func__.6152, @object
	.size	__func__.6152, 27
__func__.6152:
	.string	"find_primes_up_to_a_number"
	.align 16
	.type	__func__.6170, @object
	.size	__func__.6170, 29
__func__.6170:
	.string	"simple_sieve_of_Eratosthenes"
	.align 16
	.type	__func__.6187, @object
	.size	__func__.6187, 29
__func__.6187:
	.string	"secure_sieve_of_Eratosthenes"
	.align 32
	.type	__func__.6204, @object
	.size	__func__.6204, 43
__func__.6204:
	.string	"user_friendly_secure_sieve_of_Eratosthenes"
	.local	static_main_variable_for_testing.6317
	.comm	static_main_variable_for_testing.6317,4,4
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
