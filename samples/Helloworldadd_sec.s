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
	movq	-24(%rbp), %rax
 jmp .UNIQUE6
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6: 
	movq	%rax, %rdi
 jmp .UNIQUE7
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE7: 
	call	malloc
 jmp .UNIQUE8
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE8: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE9
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE9: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE10
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE10: 
	jne	.L2
 jmp .UNIQUE11
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE11: 
	movq	stderr(%rip), %rax
 jmp .UNIQUE12
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE12: 
	movl	-36(%rbp), %ecx
 jmp .UNIQUE13
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE13: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE14
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE14: 
	movl	$.LC0, %esi
 jmp .UNIQUE15
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE15: 
	movq	%rax, %rdi
 jmp .UNIQUE16
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE16: 
	movl	$0, %eax
 jmp .UNIQUE17
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE17: 
	call	fprintf
 jmp .UNIQUE18
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE18: 
	movl	$42, %edi
 jmp .UNIQUE19
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE19: 
	call	exit
.L2:
 jmp .UNIQUE20
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE20: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE21
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE21: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE22
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE22: 
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
 jmp .UNIQUE23
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE23: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE24
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE24: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE25
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE25: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE26
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE26: 
	movq	16(%rbp), %rdx
 jmp .UNIQUE27
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE27: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE28
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE28: 
	movq	%rdx, (%rax)
 jmp .UNIQUE29
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE29: 
	movq	24(%rbp), %rdx
 jmp .UNIQUE30
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE30: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE31
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE31: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE32
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE32: 
	movq	32(%rbp), %rdx
 jmp .UNIQUE33
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE33: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE34
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE34: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE35
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE35: 
	movq	40(%rbp), %rdx
 jmp .UNIQUE36
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE36: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE37
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE37: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE38
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE38: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE39
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE39: 
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
 jmp .UNIQUE40
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE40: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE41
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE41: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE42
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE42: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE43
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE43: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE44
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE44: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE45
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE45: 
	movq	(%rax), %rdx
 jmp .UNIQUE46
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE46: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE47
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE47: 
	movq	%rdx, (%rax)
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
	movq	8(%rax), %rdx
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
	movq	%rdx, 8(%rax)
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
	movq	16(%rax), %rdx
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
	movq	%rdx, 16(%rax)
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
	movq	24(%rax), %rdx
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
	movq	%rdx, 24(%rax)
 jmp .UNIQUE60
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE60: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE61
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE61: 
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
 jmp .UNIQUE62
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE62: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE63
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE63: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE64
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE64: 
	subq	$48, %rsp
 jmp .UNIQUE65
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE65: 
	movq	%rdi, -40(%rbp)
 jmp .UNIQUE66
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE66: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE67
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE67: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE68
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE68: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE69
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE69: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE70
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE70: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE71
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE71: 
	movq	$1, -8(%rbp)
 jmp .UNIQUE72
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE72: 
	jmp	.L7
.L10:
 jmp .UNIQUE73
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE73: 
	movl	$67, %edx
 jmp .UNIQUE74
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE74: 
	movl	$__func__.3804, %esi
 jmp .UNIQUE75
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE75: 
	movl	$32, %edi
 jmp .UNIQUE76
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE76: 
	call	error_checking_malloc
 jmp .UNIQUE77
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE77: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE78
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE78: 
	cmpq	$1, -8(%rbp)
 jmp .UNIQUE79
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE79: 
	jne	.L8
 jmp .UNIQUE80
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE80: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE81
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE81: 
	movq	%rax, -32(%rbp)
.L8:
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
	jle	.L9
 jmp .UNIQUE84
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE84: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE85
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE85: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE86
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE86: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE87
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE87: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE88
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE88: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE89
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE89: 
	movq	%rdx, 24(%rax)
.L9:
 jmp .UNIQUE90
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE90: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE91
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE91: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE92
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE92: 
	addq	$1, -8(%rbp)
.L7:
 jmp .UNIQUE93
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE93: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE94
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE94: 
	cmpq	-40(%rbp), %rax
 jmp .UNIQUE95
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE95: 
	jle	.L10
 jmp .UNIQUE96
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE96: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE97
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE97: 
	jle	.L11
 jmp .UNIQUE98
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE98: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE99
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE99: 
	movq	$0, 16(%rax)
 jmp .UNIQUE100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE100: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE101: 
	movq	$0, 24(%rax)
.L11:
 jmp .UNIQUE102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE102: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE103: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE104: 
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
 jmp .UNIQUE105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE105: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE106: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE107: 
	subq	$64, %rsp
 jmp .UNIQUE108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE108: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE109: 
	movl	$94, %edx
 jmp .UNIQUE110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE110: 
	movl	$__func__.3813, %esi
 jmp .UNIQUE111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE111: 
	movl	$32, %edi
 jmp .UNIQUE112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE112: 
	call	error_checking_malloc
 jmp .UNIQUE113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE113: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE114: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE115: 
	movq	16(%rbp), %rdx
 jmp .UNIQUE116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE116: 
	movq	%rdx, (%rsp)
 jmp .UNIQUE117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE117: 
	movq	24(%rbp), %rdx
 jmp .UNIQUE118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE118: 
	movq	%rdx, 8(%rsp)
 jmp .UNIQUE119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE119: 
	movq	32(%rbp), %rdx
 jmp .UNIQUE120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE120: 
	movq	%rdx, 16(%rsp)
 jmp .UNIQUE121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE121: 
	movq	40(%rbp), %rdx
 jmp .UNIQUE122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE122: 
	movq	%rdx, 24(%rsp)
 jmp .UNIQUE123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE123: 
	movq	%rax, %rdi
 jmp .UNIQUE124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE124: 
	call	copy_nodes
 jmp .UNIQUE125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE125: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE126: 
	jne	.L14
 jmp .UNIQUE127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE127: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE128: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE129: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE130: 
	movq	$0, 16(%rax)
 jmp .UNIQUE131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE131: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE132: 
	movq	$0, 24(%rax)
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
	jmp	.L15
.L14:
 jmp .UNIQUE135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE135: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE136: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE137: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE138
NOP
NOP
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
NOP
NOP
.UNIQUE139: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE140: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE141: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE142: 
	movq	$0, 24(%rax)
 jmp .UNIQUE143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE143: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE144: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE145: 
	movq	-24(%rbp), %rax
.L15:
 jmp .UNIQUE146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE146: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE147: 
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
 jmp .UNIQUE148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE148: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE149: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE150: 
	subq	$32, %rsp
 jmp .UNIQUE151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE151: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE152: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE153: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE154: 
	movq	16(%rax), %rax
 jmp .UNIQUE155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE155: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE156: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE157: 
	movq	24(%rax), %rax
 jmp .UNIQUE158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE158: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE159: 
	cmpq	$0, -16(%rbp)
 jmp .UNIQUE160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE160: 
	jne	.L17
 jmp .UNIQUE161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE161: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE162: 
	jne	.L17
 jmp .UNIQUE163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE163: 
	movq	$0, -24(%rbp)
 jmp .UNIQUE164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE164: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE165: 
	movq	%rax, %rdi
 jmp .UNIQUE166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE166: 
	call	free
 jmp .UNIQUE167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE167: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE168: 
	jmp	.L18
.L17:
 jmp .UNIQUE169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE169: 
	cmpq	$0, -16(%rbp)
 jmp .UNIQUE170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE170: 
	jne	.L19
 jmp .UNIQUE171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE171: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE172: 
	je	.L19
 jmp .UNIQUE173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE173: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE174: 
	movq	$0, 16(%rax)
 jmp .UNIQUE175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE175: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE176: 
	movq	%rax, %rdi
 jmp .UNIQUE177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE177: 
	call	free
 jmp .UNIQUE178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE178: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE179: 
	jmp	.L18
.L19:
 jmp .UNIQUE180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE180: 
	cmpq	$0, -16(%rbp)
 jmp .UNIQUE181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE181: 
	je	.L20
 jmp .UNIQUE182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE182: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE183: 
	jne	.L20
 jmp .UNIQUE184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE184: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE185: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE186: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE187: 
	movq	$0, 24(%rax)
 jmp .UNIQUE188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE188: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE189: 
	movq	%rax, %rdi
 jmp .UNIQUE190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE190: 
	call	free
 jmp .UNIQUE191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE191: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE192: 
	jmp	.L18
.L20:
 jmp .UNIQUE193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE193: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE194: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE195: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE196: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE197: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE198: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE199: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE200: 
	movq	%rax, %rdi
 jmp .UNIQUE201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE201: 
	call	free
 jmp .UNIQUE202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE202: 
	movq	-24(%rbp), %rax
.L18:
 jmp .UNIQUE203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE203: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE204: 
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
 jmp .UNIQUE205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE205: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE206: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE207: 
	subq	$32, %rsp
 jmp .UNIQUE208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE208: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE209: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE210: 
	jne	.L22
 jmp .UNIQUE211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE211: 
	jmp	.L21
.L22:
 jmp .UNIQUE212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE212: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE213: 
	movq	16(%rax), %rax
 jmp .UNIQUE214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE214: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE215: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE216: 
	movq	%rax, -8(%rbp)
.L25:
 jmp .UNIQUE217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE217: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE218: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE219: 
	movq	%rdx, %rsi
 jmp .UNIQUE220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE220: 
	movq	%rax, %rdi
 jmp .UNIQUE221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE221: 
	call	delete_node_from_list
 jmp .UNIQUE222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE222: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE223: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE224: 
	cmpq	$0, -16(%rbp)
 jmp .UNIQUE225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE225: 
	jne	.L24
 jmp .UNIQUE226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE226: 
	jmp	.L21
.L24:
 jmp .UNIQUE227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE227: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE228: 
	movq	16(%rax), %rax
 jmp .UNIQUE229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE229: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE230: 
	jmp	.L25
.L21:
 jmp .UNIQUE231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE231: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE232: 
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
 jmp .UNIQUE233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE233: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE234: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE235: 
	subq	$32, %rsp
 jmp .UNIQUE236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE236: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE237: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE238: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE239: 
	jne	.L27
 jmp .UNIQUE240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE240: 
	movl	$.LC1, %edi
 jmp .UNIQUE241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE241: 
	call	puts
 jmp .UNIQUE242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE242: 
	jmp	.L26
.L27:
 jmp .UNIQUE243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE243: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE244: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE245: 
	jmp	.L29
.L30:
 jmp .UNIQUE246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE246: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE247: 
	movq	8(%rax), %rax
 jmp .UNIQUE248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE248: 
	movq	%rax, %rcx
 jmp .UNIQUE249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE249: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE250: 
	movq	(%rax), %rdx
 jmp .UNIQUE251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE251: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE252: 
	movq	%rax, %rsi
 jmp .UNIQUE253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE253: 
	movl	$.LC2, %edi
 jmp .UNIQUE254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE254: 
	movl	$0, %eax
 jmp .UNIQUE255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE255: 
	call	printf
 jmp .UNIQUE256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE256: 
	addq	$1, -8(%rbp)
 jmp .UNIQUE257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE257: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE258: 
	movq	16(%rax), %rax
 jmp .UNIQUE259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE259: 
	movq	%rax, -16(%rbp)
.L29:
 jmp .UNIQUE260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE260: 
	cmpq	$0, -16(%rbp)
 jmp .UNIQUE261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE261: 
	jne	.L30
.L26:
 jmp .UNIQUE262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE262: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE263: 
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
 jmp .UNIQUE264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE264: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE265: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE266: 
	movl	$.LC3, %edi
 jmp .UNIQUE267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE267: 
	call	puts
 jmp .UNIQUE268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE268: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE269: 
	movq	%rax, %rdi
 jmp .UNIQUE270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE270: 
	call	print_list
 jmp .UNIQUE271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE271: 
	movl	$.LC4, %edi
 jmp .UNIQUE272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE272: 
	call	puts
 jmp .UNIQUE273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE273: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE274: 
	movq	%rax, %rdi
 jmp .UNIQUE275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE275: 
	call	print_list
 jmp .UNIQUE276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE276: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE277: 
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
 jmp .UNIQUE278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE278: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE279: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE280: 
	movq	%rdi, -40(%rbp)
 jmp .UNIQUE281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE281: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE282: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE283: 
	movq	$5, -16(%rbp)
 jmp .UNIQUE284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE284: 
	movq	$4, -8(%rbp)
 jmp .UNIQUE285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE285: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE286: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE287: 
	addq	%rdx, %rax
 jmp .UNIQUE288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE288: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE289: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE290: 
	leaq	(%rdx,%rcx), %rsi
 jmp .UNIQUE291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE291: 
	cqto
 jmp .UNIQUE292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE292: 
	idivq	%rsi
 jmp .UNIQUE293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE293: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE294: 
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
 jmp .UNIQUE295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE295: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE296: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE297: 
	subq	$80, %rsp
 jmp .UNIQUE298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE298: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE299: 
	movq	%rax, %rdi
 jmp .UNIQUE300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE300: 
	call	find_number_of_useful_chunks
 jmp .UNIQUE301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE301: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE302: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE303: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE304: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE305: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE306: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE307: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE308: 
	movq	$0, free_chunks_list(%rip)
 jmp .UNIQUE309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE309: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE310: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE311: 
	movq	%rdx, (%rsp)
 jmp .UNIQUE312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE312: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE313: 
	movq	%rdx, 8(%rsp)
 jmp .UNIQUE314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE314: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE315: 
	movq	%rdx, 16(%rsp)
 jmp .UNIQUE316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE316: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE317: 
	movq	%rdx, 24(%rsp)
 jmp .UNIQUE318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE318: 
	movq	%rax, %rdi
 jmp .UNIQUE319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE319: 
	call	add_node_to_list
 jmp .UNIQUE320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE320: 
	movq	%rax, free_chunks_list(%rip)
 jmp .UNIQUE321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE321: 
	movq	$1, free_chunks_num(%rip)
 jmp .UNIQUE322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE322: 
	movq	$0, allocated_chunks_list(%rip)
 jmp .UNIQUE323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE323: 
	movq	$0, allocated_chunks_num(%rip)
 jmp .UNIQUE324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE324: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE325: 
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
 jmp .UNIQUE326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE326: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE327: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE328: 
	movq	$0, free_chunks_num(%rip)
 jmp .UNIQUE329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE329: 
	movq	$0, allocated_chunks_num(%rip)
 jmp .UNIQUE330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE330: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE331: 
	movq	%rax, %rdi
 jmp .UNIQUE332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE332: 
	call	free_list
 jmp .UNIQUE333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE333: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE334: 
	movq	%rax, %rdi
 jmp .UNIQUE335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE335: 
	call	free_list
 jmp .UNIQUE336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE336: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE337: 
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
 jmp .UNIQUE338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE338: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE339: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE340: 
	pushq	%rbx
 jmp .UNIQUE341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE341: 
	subq	$56, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE342: 
	movq	$2048, -56(%rbp)
 jmp .UNIQUE343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE343: 
	movq	$5, -48(%rbp)
 jmp .UNIQUE344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE344: 
	movq	$4, -40(%rbp)
 jmp .UNIQUE345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE345: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE346: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE347: 
	addq	%rdx, %rax
 jmp .UNIQUE348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE348: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE349: 
	movq	-48(%rbp), %rcx
 jmp .UNIQUE350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE350: 
	leaq	(%rdx,%rcx), %rbx
 jmp .UNIQUE351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE351: 
	cqto
 jmp .UNIQUE352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE352: 
	idivq	%rbx
 jmp .UNIQUE353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE353: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE354: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE355: 
	imulq	-40(%rbp), %rax
 jmp .UNIQUE356
NOP
NOP
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
NOP
NOP
.UNIQUE357: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE358: 
	subq	$1, %rax
 jmp .UNIQUE359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE359: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE360: 
	addq	%rdx, %rax
 jmp .UNIQUE361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE361: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE362: 
	jne	.L37
 jmp .UNIQUE363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE363: 
	movl	$.LC5, %edi
 jmp .UNIQUE364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE364: 
	call	puts
 jmp .UNIQUE365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE365: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE366: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE367: 
	jmp	.L38
.L37:
 jmp .UNIQUE368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE368: 
	movl	$.LC6, %edi
 jmp .UNIQUE369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE369: 
	call	puts
 jmp .UNIQUE370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE370: 
	addq	$1, -32(%rbp)
 jmp .UNIQUE371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE371: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE372: 
	imulq	-40(%rbp), %rax
 jmp .UNIQUE373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE373: 
	movq	%rax, %rdx
 jmp .UNIQUE374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE374: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE375: 
	subq	$1, %rax
 jmp .UNIQUE376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE376: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE377: 
	addq	%rdx, %rax
 jmp .UNIQUE378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE378: 
	movq	%rax, -64(%rbp)
.L38:
 jmp .UNIQUE379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE379: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE380: 
	movl	$293, %edx
 jmp .UNIQUE381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE381: 
	movl	$__func__.3857, %esi
 jmp .UNIQUE382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE382: 
	movq	%rax, %rdi
 jmp .UNIQUE383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE383: 
	call	error_checking_malloc
 jmp .UNIQUE384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE384: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE385: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE386: 
	movq	%rax, total_bytes_allocated(%rip)
 jmp .UNIQUE387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE387: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE388: 
	addq	$56, %rsp
 jmp .UNIQUE389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE389: 
	popq	%rbx
 jmp .UNIQUE390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE390: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE391: 
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
 jmp .UNIQUE392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE392: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE393: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE394: 
	subq	$96, %rsp
 jmp .UNIQUE395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE395: 
	movq	%rdi, -88(%rbp)
 jmp .UNIQUE396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE396: 
	movq	last_unused_memory(%rip), %rax
 jmp .UNIQUE397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE397: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE398: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE399: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE400: 
	movq	$5, -48(%rbp)
 jmp .UNIQUE401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE401: 
	movq	$4, -40(%rbp)
 jmp .UNIQUE402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE402: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE403: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE404: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE405: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE406: 
	subq	%rax, %rdx
 jmp .UNIQUE407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE407: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE408: 
	addq	%rdx, %rax
 jmp .UNIQUE409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE409: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE410: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE411: 
	movq	-24(%rbp), %rdx
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
	movq	-40(%rbp), %rdx
 jmp .UNIQUE414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE414: 
	movq	-48(%rbp), %rcx
 jmp .UNIQUE415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE415: 
	leaq	(%rdx,%rcx), %rsi
 jmp .UNIQUE416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE416: 
	cqto
 jmp .UNIQUE417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE417: 
	idivq	%rsi
 jmp .UNIQUE418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE418: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE419: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE420: 
	imulq	-40(%rbp), %rax
 jmp .UNIQUE421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE421: 
	cmpq	-88(%rbp), %rax
 jmp .UNIQUE422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE422: 
	jge	.L41
 jmp .UNIQUE423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE423: 
	call	__errno_location
 jmp .UNIQUE424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE424: 
	movl	$12, (%rax)
 jmp .UNIQUE425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE425: 
	movl	$0, %eax
 jmp .UNIQUE426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE426: 
	jmp	.L42
.L41:
 jmp .UNIQUE427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE427: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE428: 
	cqto
 jmp .UNIQUE429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE429: 
	idivq	-40(%rbp)
 jmp .UNIQUE430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE430: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE431: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE432: 
	imulq	-40(%rbp), %rax
 jmp .UNIQUE433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE433: 
	cmpq	-88(%rbp), %rax
 jmp .UNIQUE434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE434: 
	je	.L43
 jmp .UNIQUE435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE435: 
	addq	$1, -72(%rbp)
.L43:
 jmp .UNIQUE436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE436: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE437: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE438: 
	movq	last_unused_memory(%rip), %rdx
 jmp .UNIQUE439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE439: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE440: 
	imulq	-40(%rbp), %rax
 jmp .UNIQUE441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE441: 
	movq	%rax, %rcx
 jmp .UNIQUE442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE442: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE443: 
	subq	$1, %rax
 jmp .UNIQUE444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE444: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE445: 
	addq	%rax, %rcx
 jmp .UNIQUE446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE446: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE447: 
	addq	%rcx, %rax
 jmp .UNIQUE448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE448: 
	addq	%rdx, %rax
 jmp .UNIQUE449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE449: 
	movq	%rax, last_unused_memory(%rip)
 jmp .UNIQUE450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE450: 
	movq	-8(%rbp), %rax
.L42:
 jmp .UNIQUE451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE451: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE452: 
	ret
	.cfi_endproc
.LFE15:
	.size	secure_malloc, .-secure_malloc
	.section	.rodata
	.align 8
.LC7:
	.string	"Attempted to read more keyshares that the ones stored\n"
	.text
	.globl	get_next_keyshare
	.type	get_next_keyshare, @function
get_next_keyshare:
.LFB16:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE453: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE454: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE455: 
	subq	$16, %rsp
 jmp .UNIQUE456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE456: 
	movq	keyshare_input_file(%rip), %rax
 jmp .UNIQUE457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE457: 
	movq	%rax, %rdi
 jmp .UNIQUE458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE458: 
	call	feof
 jmp .UNIQUE459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE459: 
	testl	%eax, %eax
 jmp .UNIQUE460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE460: 
	je	.L45
 jmp .UNIQUE461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE461: 
	movl	$.LC7, %edi
 jmp .UNIQUE462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE462: 
	call	perror
 jmp .UNIQUE463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE463: 
	movl	$44, %edi
 jmp .UNIQUE464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE464: 
	call	exit
.L45:
 jmp .UNIQUE465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE465: 
	movq	keyshare_input_file(%rip), %rdx
 jmp .UNIQUE466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE466: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE467: 
	movq	%rdx, %rcx
 jmp .UNIQUE468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE468: 
	movl	$1, %edx
 jmp .UNIQUE469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE469: 
	movl	$1, %esi
 jmp .UNIQUE470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE470: 
	movq	%rax, %rdi
 jmp .UNIQUE471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE471: 
	call	fread
 jmp .UNIQUE472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE472: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE473: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE474: 
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
 jmp .UNIQUE475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE475: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE476: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE477: 
	pushq	%rbx
 jmp .UNIQUE478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE478: 
	subq	$72, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE479: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE480: 
	movl	$0, -52(%rbp)
 jmp .UNIQUE481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE481: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE482: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE483: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE484: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE485: 
	jmp	.L48
.L53:
 jmp .UNIQUE486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE486: 
	cmpl	$0, -52(%rbp)
 jmp .UNIQUE487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE487: 
	je	.L49
 jmp .UNIQUE488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE488: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE489: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE490: 
	leaq	(%rdx,%rax), %rbx
 jmp .UNIQUE491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE491: 
	movl	$0, %eax
 jmp .UNIQUE492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE492: 
	call	get_next_keyshare
 jmp .UNIQUE493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE493: 
	movb	%al, (%rbx)
 jmp .UNIQUE494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE494: 
	addq	$1, -32(%rbp)
 jmp .UNIQUE495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE495: 
	addq	$1, -48(%rbp)
 jmp .UNIQUE496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE496: 
	jmp	.L50
.L49:
 jmp .UNIQUE497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE497: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE498: 
	jmp	.L51
.L52:
 jmp .UNIQUE499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE499: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE500: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE501: 
	addq	%rdx, %rax
 jmp .UNIQUE502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE502: 
	movq	%rax, %rdx
 jmp .UNIQUE503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE503: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE504: 
	addq	%rdx, %rax
 jmp .UNIQUE505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE505: 
	movb	$0, (%rax)
 jmp .UNIQUE506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE506: 
	addq	$1, -40(%rbp)
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
	cmpq	$3, -40(%rbp)
 jmp .UNIQUE508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE508: 
	jle	.L52
 jmp .UNIQUE509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE509: 
	addq	$4, -48(%rbp)
 jmp .UNIQUE510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE510: 
	movl	$1, -52(%rbp)
.L50:
 jmp .UNIQUE511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE511: 
	cmpq	$5, -32(%rbp)
 jmp .UNIQUE512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE512: 
	jne	.L48
 jmp .UNIQUE513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE513: 
	movl	$0, -52(%rbp)
 jmp .UNIQUE514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE514: 
	movq	$0, -32(%rbp)
.L48:
 jmp .UNIQUE515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE515: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE516: 
	cmpq	%rax, -48(%rbp)
 jmp .UNIQUE517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE517: 
	jl	.L53
 jmp .UNIQUE518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE518: 
	addq	$72, %rsp
 jmp .UNIQUE519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE519: 
	popq	%rbx
 jmp .UNIQUE520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE520: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE521: 
	ret
	.cfi_endproc
.LFE17:
	.size	insert_keys_into_mem, .-insert_keys_into_mem
	.section	.rodata
.LC8:
	.string	"Printing heap memory:"
.LC9:
	.string	"0x%02x "
	.text
	.globl	print_mem
	.type	print_mem, @function
print_mem:
.LFB18:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE522: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE523: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE524: 
	subq	$32, %rsp
 jmp .UNIQUE525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE525: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE526: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE527: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE528: 
	movl	$.LC8, %edi
 jmp .UNIQUE529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE529: 
	call	puts
 jmp .UNIQUE530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE530: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE531: 
	jmp	.L55
.L56:
 jmp .UNIQUE532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE532: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE533: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE534: 
	addq	%rdx, %rax
 jmp .UNIQUE535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE535: 
	movzbl	(%rax), %eax
 jmp .UNIQUE536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE536: 
	movzbl	%al, %eax
 jmp .UNIQUE537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE537: 
	movl	%eax, %esi
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
	movl	$0, %eax
 jmp .UNIQUE540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE540: 
	call	printf
 jmp .UNIQUE541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE541: 
	addq	$1, -16(%rbp)
.L55:
 jmp .UNIQUE542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE542: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE543: 
	cmpq	%rax, -16(%rbp)
 jmp .UNIQUE544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE544: 
	jl	.L56
 jmp .UNIQUE545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE545: 
	movl	$10, %edi
 jmp .UNIQUE546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE546: 
	call	putchar
 jmp .UNIQUE547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE547: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE548: 
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
 jmp .UNIQUE549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE549: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE550: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE551: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE552: 
	movq	%rsi, -64(%rbp)
 jmp .UNIQUE553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE553: 
	movq	%rdx, -72(%rbp)
 jmp .UNIQUE554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE554: 
	movq	$0, -24(%rbp)
 jmp .UNIQUE555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE555: 
	movl	$0, -44(%rbp)
 jmp .UNIQUE556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE556: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE557: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE558: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE559: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE560: 
	jmp	.L58
.L63:
 jmp .UNIQUE561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE561: 
	cmpl	$0, -44(%rbp)
 jmp .UNIQUE562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE562: 
	je	.L59
 jmp .UNIQUE563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE563: 
	addq	$5, -40(%rbp)
 jmp .UNIQUE564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE564: 
	movl	$0, -44(%rbp)
 jmp .UNIQUE565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE565: 
	jmp	.L58
.L59:
 jmp .UNIQUE566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE566: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE567: 
	jmp	.L60
.L62:
 jmp .UNIQUE568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE568: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE569: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE570: 
	addq	%rdx, %rax
 jmp .UNIQUE571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE571: 
	movq	%rax, %rdx
 jmp .UNIQUE572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE572: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE573: 
	addq	%rax, %rdx
 jmp .UNIQUE574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE574: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE575: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE576: 
	addq	%rcx, %rax
 jmp .UNIQUE577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE577: 
	movq	%rax, %rcx
 jmp .UNIQUE578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE578: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE579: 
	addq	%rcx, %rax
 jmp .UNIQUE580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE580: 
	movzbl	(%rax), %eax
 jmp .UNIQUE581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE581: 
	movb	%al, (%rdx)
 jmp .UNIQUE582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE582: 
	addq	$1, -32(%rbp)
.L60:
 jmp .UNIQUE583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE583: 
	cmpq	$3, -32(%rbp)
 jmp .UNIQUE584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE584: 
	jg	.L61
 jmp .UNIQUE585
NOP
NOP
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
NOP
NOP
.UNIQUE586: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE587: 
	addq	%rdx, %rax
 jmp .UNIQUE588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE588: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE589: 
	jl	.L62
.L61:
 jmp .UNIQUE590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE590: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE591: 
	addq	%rax, -16(%rbp)
 jmp .UNIQUE592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE592: 
	addq	$1, -24(%rbp)
 jmp .UNIQUE593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE593: 
	addq	$4, -40(%rbp)
 jmp .UNIQUE594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE594: 
	movl	$1, -44(%rbp)
.L58:
 jmp .UNIQUE595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE595: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE596: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE597: 
	jl	.L63
 jmp .UNIQUE598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE598: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE599: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE600: 
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
 jmp .UNIQUE601
NOP
NOP
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
NOP
NOP
.UNIQUE603: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE604: 
	movq	%rsi, -80(%rbp)
 jmp .UNIQUE605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE605: 
	movq	%rdx, -88(%rbp)
 jmp .UNIQUE606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE606: 
	movl	%ecx, -92(%rbp)
 jmp .UNIQUE607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE607: 
	movq	%r8, -104(%rbp)
 jmp .UNIQUE608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE608: 
	movq	$0, -24(%rbp)
 jmp .UNIQUE609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE609: 
	movl	$0, -60(%rbp)
 jmp .UNIQUE610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE610: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE611: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE612: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE613: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE614: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE615: 
	cmpl	$0, -92(%rbp)
 jmp .UNIQUE616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE616: 
	je	.L66
 jmp .UNIQUE617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE617: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE618: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE619: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE620: 
	testq	%rax, %rax
 jmp .UNIQUE621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE621: 
	cmovs	%rdx, %rax
 jmp .UNIQUE622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE622: 
	sarq	$2, %rax
 jmp .UNIQUE623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE623: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE624: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE625: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE626: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE627: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE628: 
	cmpq	%rax, %rdx
 jmp .UNIQUE629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE629: 
	jne	.L67
 jmp .UNIQUE630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE630: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE631: 
	movq	%rdx, %rax
 jmp .UNIQUE632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE632: 
	salq	$3, %rax
 jmp .UNIQUE633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE633: 
	addq	%rdx, %rax
 jmp .UNIQUE634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE634: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE635: 
	jmp	.L66
.L67:
 jmp .UNIQUE636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE636: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE637: 
	movq	%rdx, %rax
 jmp .UNIQUE638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE638: 
	salq	$3, %rax
 jmp .UNIQUE639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE639: 
	addq	%rdx, %rax
 jmp .UNIQUE640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE640: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE641: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE642: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE643: 
	movq	%rax, %rdx
 jmp .UNIQUE644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE644: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE645: 
	movl	$0, %eax
 jmp .UNIQUE646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE646: 
	subq	%rcx, %rax
 jmp .UNIQUE647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE647: 
	salq	$2, %rax
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
	movq	%rax, -48(%rbp)
 jmp .UNIQUE650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE650: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE651: 
	jmp	.L68
.L70:
 jmp .UNIQUE652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE652: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE653: 
	movq	-24(%rbp), %rdx
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
	movq	%rax, %rdx
 jmp .UNIQUE656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE656: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE657: 
	addq	%rax, %rdx
 jmp .UNIQUE658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE658: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE659: 
	movq	-48(%rbp), %rcx
 jmp .UNIQUE660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE660: 
	addq	%rcx, %rax
 jmp .UNIQUE661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE661: 
	movq	%rax, %rcx
 jmp .UNIQUE662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE662: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE663: 
	addq	%rcx, %rax
 jmp .UNIQUE664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE664: 
	movzbl	(%rax), %eax
 jmp .UNIQUE665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE665: 
	movb	%al, (%rdx)
 jmp .UNIQUE666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE666: 
	addq	$1, -40(%rbp)
.L68:
 jmp .UNIQUE667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE667: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE668: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE669: 
	addq	%rdx, %rax
 jmp .UNIQUE670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE670: 
	cmpq	$3, %rax
 jmp .UNIQUE671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE671: 
	jg	.L69
 jmp .UNIQUE672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE672: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE673: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE674: 
	addq	%rdx, %rax
 jmp .UNIQUE675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE675: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE676: 
	jl	.L70
.L69:
 jmp .UNIQUE677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE677: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE678: 
	addq	%rax, -24(%rbp)
 jmp .UNIQUE679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE679: 
	addq	$9, -32(%rbp)
 jmp .UNIQUE680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE680: 
	jmp	.L71
.L66:
 jmp .UNIQUE681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE681: 
	jmp	.L71
.L76:
 jmp .UNIQUE682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE682: 
	cmpl	$0, -60(%rbp)
 jmp .UNIQUE683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE683: 
	je	.L72
 jmp .UNIQUE684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE684: 
	addq	$5, -56(%rbp)
 jmp .UNIQUE685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE685: 
	movl	$0, -60(%rbp)
 jmp .UNIQUE686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE686: 
	jmp	.L71
.L72:
 jmp .UNIQUE687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE687: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE688: 
	jmp	.L73
.L75:
 jmp .UNIQUE689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE689: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE690: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE691: 
	addq	%rdx, %rax
 jmp .UNIQUE692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE692: 
	movq	%rax, %rdx
 jmp .UNIQUE693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE693: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE694: 
	addq	%rax, %rdx
 jmp .UNIQUE695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE695: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE696: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE697: 
	addq	%rcx, %rax
 jmp .UNIQUE698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE698: 
	movq	%rax, %rcx
 jmp .UNIQUE699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE699: 
	movq	-32(%rbp), %rax
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
	movzbl	(%rax), %eax
 jmp .UNIQUE702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE702: 
	movb	%al, (%rdx)
 jmp .UNIQUE703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE703: 
	addq	$1, -48(%rbp)
.L73:
 jmp .UNIQUE704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE704: 
	cmpq	$3, -48(%rbp)
 jmp .UNIQUE705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE705: 
	jg	.L74
 jmp .UNIQUE706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE706: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE707: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE708: 
	addq	%rdx, %rax
 jmp .UNIQUE709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE709: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE710: 
	jl	.L75
.L74:
 jmp .UNIQUE711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE711: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE712: 
	addq	%rax, -24(%rbp)
 jmp .UNIQUE713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE713: 
	addq	$4, -56(%rbp)
 jmp .UNIQUE714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE714: 
	movl	$1, -60(%rbp)
.L71:
 jmp .UNIQUE715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE715: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE716: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE717: 
	jl	.L76
 jmp .UNIQUE718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE718: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE719: 
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
 jmp .UNIQUE720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE720: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE721: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE722: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE723: 
	movq	%rsi, -80(%rbp)
 jmp .UNIQUE724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE724: 
	movq	%rdx, -88(%rbp)
 jmp .UNIQUE725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE725: 
	movl	%ecx, -92(%rbp)
 jmp .UNIQUE726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE726: 
	movq	%r8, -104(%rbp)
 jmp .UNIQUE727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE727: 
	movq	$0, -24(%rbp)
 jmp .UNIQUE728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE728: 
	movl	$0, -60(%rbp)
 jmp .UNIQUE729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE729: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE730: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE731: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE732: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE733: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE734: 
	cmpl	$0, -92(%rbp)
 jmp .UNIQUE735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE735: 
	je	.L78
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
	imulq	-80(%rbp), %rax
 jmp .UNIQUE738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE738: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE739: 
	testq	%rax, %rax
 jmp .UNIQUE740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE740: 
	cmovs	%rdx, %rax
 jmp .UNIQUE741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE741: 
	sarq	$2, %rax
 jmp .UNIQUE742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE742: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE743: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE744: 
	leaq	0(,%rax,4), %rdx
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
	imulq	-80(%rbp), %rax
 jmp .UNIQUE747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE747: 
	cmpq	%rax, %rdx
 jmp .UNIQUE748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE748: 
	jne	.L79
 jmp .UNIQUE749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE749: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE750: 
	movq	%rdx, %rax
 jmp .UNIQUE751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE751: 
	salq	$3, %rax
 jmp .UNIQUE752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE752: 
	addq	%rdx, %rax
 jmp .UNIQUE753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE753: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE754: 
	jmp	.L78
.L79:
 jmp .UNIQUE755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE755: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE756: 
	movq	%rdx, %rax
 jmp .UNIQUE757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE757: 
	salq	$3, %rax
 jmp .UNIQUE758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE758: 
	addq	%rdx, %rax
 jmp .UNIQUE759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE759: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE760
NOP
NOP
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
NOP
NOP
.UNIQUE761: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE762: 
	movq	%rax, %rdx
 jmp .UNIQUE763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE763: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE764: 
	movl	$0, %eax
 jmp .UNIQUE765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE765: 
	subq	%rcx, %rax
 jmp .UNIQUE766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE766: 
	salq	$2, %rax
 jmp .UNIQUE767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE767: 
	addq	%rdx, %rax
 jmp .UNIQUE768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE768: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE769: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE770: 
	jmp	.L80
.L82:
 jmp .UNIQUE771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE771: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE772: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE773: 
	addq	%rdx, %rax
 jmp .UNIQUE774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE774: 
	movq	%rax, %rdx
 jmp .UNIQUE775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE775: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE776: 
	addq	%rax, %rdx
 jmp .UNIQUE777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE777: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE778: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE779: 
	addq	%rcx, %rax
 jmp .UNIQUE780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE780: 
	movq	%rax, %rcx
 jmp .UNIQUE781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE781: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE782: 
	addq	%rcx, %rax
 jmp .UNIQUE783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE783: 
	movzbl	(%rax), %eax
 jmp .UNIQUE784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE784: 
	movb	%al, (%rdx)
 jmp .UNIQUE785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE785: 
	addq	$1, -40(%rbp)
.L80:
 jmp .UNIQUE786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE786: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE787: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE788: 
	addq	%rdx, %rax
 jmp .UNIQUE789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE789: 
	cmpq	$3, %rax
 jmp .UNIQUE790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE790: 
	jg	.L81
 jmp .UNIQUE791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE791: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE792: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE793: 
	addq	%rdx, %rax
 jmp .UNIQUE794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE794: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE795: 
	jl	.L82
.L81:
 jmp .UNIQUE796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE796: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE797: 
	addq	%rax, -24(%rbp)
 jmp .UNIQUE798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE798: 
	addq	$9, -32(%rbp)
 jmp .UNIQUE799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE799: 
	jmp	.L83
.L78:
 jmp .UNIQUE800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE800: 
	jmp	.L83
.L88:
 jmp .UNIQUE801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE801: 
	cmpl	$0, -60(%rbp)
 jmp .UNIQUE802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE802: 
	je	.L84
 jmp .UNIQUE803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE803: 
	addq	$5, -56(%rbp)
 jmp .UNIQUE804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE804: 
	movl	$0, -60(%rbp)
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
.L84:
 jmp .UNIQUE806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE806: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE807: 
	jmp	.L85
.L87:
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
	movq	%rax, %rdx
 jmp .UNIQUE812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE812: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE813: 
	addq	%rax, %rdx
 jmp .UNIQUE814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE814: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE815: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE816: 
	addq	%rcx, %rax
 jmp .UNIQUE817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE817: 
	movq	%rax, %rcx
 jmp .UNIQUE818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE818: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE819: 
	addq	%rcx, %rax
 jmp .UNIQUE820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE820: 
	movzbl	(%rax), %eax
 jmp .UNIQUE821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE821: 
	movb	%al, (%rdx)
 jmp .UNIQUE822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE822: 
	addq	$1, -48(%rbp)
.L85:
 jmp .UNIQUE823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE823: 
	cmpq	$3, -48(%rbp)
 jmp .UNIQUE824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE824: 
	jg	.L86
 jmp .UNIQUE825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE825: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE826: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE827: 
	addq	%rdx, %rax
 jmp .UNIQUE828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE828: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE829: 
	jl	.L87
.L86:
 jmp .UNIQUE830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE830: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE831: 
	addq	%rax, -24(%rbp)
 jmp .UNIQUE832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE832: 
	addq	$4, -56(%rbp)
 jmp .UNIQUE833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE833: 
	movl	$1, -60(%rbp)
.L83:
 jmp .UNIQUE834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE834: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE835: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE836: 
	jl	.L88
 jmp .UNIQUE837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE837: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE838: 
	ret
	.cfi_endproc
.LFE21:
	.size	set_secure_data, .-set_secure_data
	.section	.rodata
.LC10:
	.string	"rb"
.LC11:
	.string	"heap_keyshares"
	.align 8
.LC12:
	.string	"init_mem:heap_keyshares file error\n"
	.text
	.globl	init_mem
	.type	init_mem, @function
init_mem:
.LFB22:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE839: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE840: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE841: 
	subq	$16, %rsp
 jmp .UNIQUE842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE842: 
	movl	$0, %edi
 jmp .UNIQUE843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE843: 
	call	time
 jmp .UNIQUE844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE844: 
	movl	%eax, %edi
 jmp .UNIQUE845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE845: 
	call	srand
 jmp .UNIQUE846
NOP
NOP
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
NOP
NOP
.UNIQUE847: 
	call	allocate_mem
 jmp .UNIQUE848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE848: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE849: 
	movl	$.LC10, %esi
 jmp .UNIQUE850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE850: 
	movl	$.LC11, %edi
 jmp .UNIQUE851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE851: 
	call	fopen
 jmp .UNIQUE852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE852: 
	movq	%rax, keyshare_input_file(%rip)
 jmp .UNIQUE853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE853: 
	movq	keyshare_input_file(%rip), %rax
 jmp .UNIQUE854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE854: 
	testq	%rax, %rax
 jmp .UNIQUE855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE855: 
	jne	.L90
 jmp .UNIQUE856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE856: 
	movl	$.LC12, %edi
 jmp .UNIQUE857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE857: 
	call	perror
 jmp .UNIQUE858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE858: 
	movl	$43, %edi
 jmp .UNIQUE859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE859: 
	call	exit
.L90:
 jmp .UNIQUE860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE860: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE861: 
	movq	%rax, %rdi
 jmp .UNIQUE862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE862: 
	call	insert_keys_into_mem
 jmp .UNIQUE863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE863: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE864: 
	movq	%rax, entire_memory_chunk(%rip)
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
	movq	%rax, last_unused_memory(%rip)
 jmp .UNIQUE867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE867: 
	movq	keyshare_input_file(%rip), %rax
 jmp .UNIQUE868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE868: 
	movq	%rax, %rdi
 jmp .UNIQUE869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE869: 
	call	fclose
 jmp .UNIQUE870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE870: 
	movl	$0, %eax
 jmp .UNIQUE871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE871: 
	call	init_memory_manager
 jmp .UNIQUE872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE872: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE873: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE874: 
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
 jmp .UNIQUE875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE875: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE876: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE877: 
	subq	$16, %rsp
 jmp .UNIQUE878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE878: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE879: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE880: 
	movq	%rax, %rdi
 jmp .UNIQUE881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE881: 
	call	free
 jmp .UNIQUE882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE882: 
	movl	$0, %eax
 jmp .UNIQUE883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE883: 
	call	free_memory_manager_structures
 jmp .UNIQUE884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE884: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE885: 
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
 jmp .UNIQUE886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE886: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE887: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE888: 
	subq	$24, %rsp
 jmp .UNIQUE889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE889: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE890: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE891: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE892: 
	movl	$0, %r8d
 jmp .UNIQUE893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE893: 
	movl	$0, %ecx
 jmp .UNIQUE894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE894: 
	movl	$1, %esi
 jmp .UNIQUE895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE895: 
	movq	%rax, %rdi
 jmp .UNIQUE896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE896: 
	call	get_secure_data
 jmp .UNIQUE897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE897: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE898: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE899: 
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
 jmp .UNIQUE900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE900: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE901: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE902: 
	subq	$24, %rsp
 jmp .UNIQUE903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE903: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE904: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE905: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE906: 
	movl	$0, %r8d
 jmp .UNIQUE907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE907: 
	movl	$0, %ecx
 jmp .UNIQUE908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE908: 
	movl	$4, %esi
 jmp .UNIQUE909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE909: 
	movq	%rax, %rdi
 jmp .UNIQUE910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE910: 
	call	get_secure_data
 jmp .UNIQUE911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE911: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE912: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE913: 
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
 jmp .UNIQUE914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE914: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE915: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE916: 
	subq	$24, %rsp
 jmp .UNIQUE917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE917: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE918: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE919: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE920: 
	movl	$0, %r8d
 jmp .UNIQUE921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE921: 
	movl	$0, %ecx
 jmp .UNIQUE922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE922: 
	movl	$8, %esi
 jmp .UNIQUE923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE923: 
	movq	%rax, %rdi
 jmp .UNIQUE924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE924: 
	call	get_secure_data
 jmp .UNIQUE925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE925: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE926: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE927: 
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
 jmp .UNIQUE928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE928: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE929: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE930: 
	subq	$24, %rsp
 jmp .UNIQUE931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE931: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE932: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE933: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE934: 
	movl	$0, %r8d
 jmp .UNIQUE935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE935: 
	movl	$0, %ecx
 jmp .UNIQUE936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE936: 
	movl	$8, %esi
 jmp .UNIQUE937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE937: 
	movq	%rax, %rdi
 jmp .UNIQUE938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE938: 
	call	get_secure_data
 jmp .UNIQUE939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE939: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE940: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE941: 
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
 jmp .UNIQUE942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE942: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE943: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE944: 
	subq	$32, %rsp
 jmp .UNIQUE945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE945: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE946: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE947: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE948: 
	movl	$0, %r8d
 jmp .UNIQUE949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE949: 
	movl	$0, %ecx
 jmp .UNIQUE950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE950: 
	movl	$4, %esi
 jmp .UNIQUE951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE951: 
	movq	%rax, %rdi
 jmp .UNIQUE952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE952: 
	call	get_secure_data
 jmp .UNIQUE953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE953: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE954: 
	movl	%eax, -28(%rbp)
 jmp .UNIQUE955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE955: 
	movss	-28(%rbp), %xmm0
 jmp .UNIQUE956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE956: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE957: 
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
 jmp .UNIQUE958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE958: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE959: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE960: 
	subq	$32, %rsp
 jmp .UNIQUE961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE961: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE962: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE963: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE964: 
	movl	$0, %r8d
 jmp .UNIQUE965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE965: 
	movl	$0, %ecx
 jmp .UNIQUE966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE966: 
	movl	$8, %esi
 jmp .UNIQUE967
NOP
NOP
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
NOP
NOP
.UNIQUE968: 
	call	get_secure_data
 jmp .UNIQUE969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE969: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE970: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE971: 
	movsd	-32(%rbp), %xmm0
 jmp .UNIQUE972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE972: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE973: 
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
 jmp .UNIQUE974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE974: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE975: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE976: 
	subq	$32, %rsp
 jmp .UNIQUE977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE977: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE978: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE979: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE980: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE981: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE982: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE983: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE984: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE985: 
	movq	%rcx, %r8
 jmp .UNIQUE986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE986: 
	movl	$1, %ecx
 jmp .UNIQUE987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE987: 
	movq	%rax, %rdi
 jmp .UNIQUE988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE988: 
	call	get_secure_data
 jmp .UNIQUE989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE989: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE990: 
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
 jmp .UNIQUE991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE991: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE992: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE993: 
	subq	$32, %rsp
 jmp .UNIQUE994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE994: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE995: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE996: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE997: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE998: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE999: 
	movq	%rcx, %r8
 jmp .UNIQUE1000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1000: 
	movl	$1, %ecx
 jmp .UNIQUE1001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1001: 
	movl	$1, %esi
 jmp .UNIQUE1002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1002: 
	movq	%rax, %rdi
 jmp .UNIQUE1003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1003: 
	call	get_secure_data
 jmp .UNIQUE1004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1004: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE1005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1005: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1006: 
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
 jmp .UNIQUE1007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1007: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1008: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1009: 
	subq	$32, %rsp
 jmp .UNIQUE1010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1010: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1011: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1012: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1013: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1014: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1015: 
	movq	%rcx, %r8
 jmp .UNIQUE1016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1016: 
	movl	$1, %ecx
 jmp .UNIQUE1017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1017: 
	movl	$4, %esi
 jmp .UNIQUE1018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1018: 
	movq	%rax, %rdi
 jmp .UNIQUE1019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1019: 
	call	get_secure_data
 jmp .UNIQUE1020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1020: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE1021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1021: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1022: 
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
 jmp .UNIQUE1023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1023: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1024: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1025: 
	subq	$32, %rsp
 jmp .UNIQUE1026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1026: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1027: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1028: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1029: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1030: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1031: 
	movq	%rcx, %r8
 jmp .UNIQUE1032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1032: 
	movl	$1, %ecx
 jmp .UNIQUE1033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1033: 
	movl	$8, %esi
 jmp .UNIQUE1034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1034: 
	movq	%rax, %rdi
 jmp .UNIQUE1035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1035: 
	call	get_secure_data
 jmp .UNIQUE1036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1036: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1037: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1038: 
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
 jmp .UNIQUE1039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1039: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1040: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1041: 
	subq	$32, %rsp
 jmp .UNIQUE1042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1042: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1043: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1044: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1045: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1046: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1047: 
	movq	%rcx, %r8
 jmp .UNIQUE1048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1048: 
	movl	$1, %ecx
 jmp .UNIQUE1049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1049: 
	movl	$8, %esi
 jmp .UNIQUE1050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1050: 
	movq	%rax, %rdi
 jmp .UNIQUE1051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1051: 
	call	get_secure_data
 jmp .UNIQUE1052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1052: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1053: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1054: 
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
 jmp .UNIQUE1055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1055: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1056: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1057: 
	subq	$40, %rsp
 jmp .UNIQUE1058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1058: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1059: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1060: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1061: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1062: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1063: 
	movq	%rcx, %r8
 jmp .UNIQUE1064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1064: 
	movl	$1, %ecx
 jmp .UNIQUE1065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1065: 
	movl	$4, %esi
 jmp .UNIQUE1066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1066: 
	movq	%rax, %rdi
 jmp .UNIQUE1067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1067: 
	call	get_secure_data
 jmp .UNIQUE1068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1068: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE1069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1069: 
	movl	%eax, -36(%rbp)
 jmp .UNIQUE1070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1070: 
	movss	-36(%rbp), %xmm0
 jmp .UNIQUE1071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1071: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1072: 
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
 jmp .UNIQUE1073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1073: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1074: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1075: 
	subq	$40, %rsp
 jmp .UNIQUE1076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1076: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1077: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1078: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1079: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1080: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1081: 
	movq	%rcx, %r8
 jmp .UNIQUE1082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1082: 
	movl	$1, %ecx
 jmp .UNIQUE1083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1083: 
	movl	$8, %esi
 jmp .UNIQUE1084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1084: 
	movq	%rax, %rdi
 jmp .UNIQUE1085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1085: 
	call	get_secure_data
 jmp .UNIQUE1086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1086: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1087: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE1088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1088: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE1089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1089: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1090: 
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
 jmp .UNIQUE1091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1091: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1092: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1093: 
	subq	$24, %rsp
 jmp .UNIQUE1094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1094: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1095: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1096: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE1097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1097: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1098: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE1099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1099: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1100: 
	movl	$0, %r8d
 jmp .UNIQUE1101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1101: 
	movl	$0, %ecx
 jmp .UNIQUE1102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1102: 
	movq	%rax, %rdi
 jmp .UNIQUE1103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1103: 
	call	get_secure_data
 jmp .UNIQUE1104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1104: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1105: 
	ret
	.cfi_endproc
.LFE37:
	.size	get_arbitrary_block_in_heap, .-get_arbitrary_block_in_heap
	.globl	set_char
	.type	set_char, @function
set_char:
.LFB38:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1106: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1107: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1108: 
	subq	$16, %rsp
 jmp .UNIQUE1109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1109: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1110: 
	movl	%esi, %eax
 jmp .UNIQUE1111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1111: 
	movb	%al, -12(%rbp)
 jmp .UNIQUE1112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1112: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1113: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE1114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1114: 
	movq	%rax, %rsi
 jmp .UNIQUE1115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1115: 
	movl	$1, %edi
 jmp .UNIQUE1116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1116: 
	call	insert_data_into_mem
 jmp .UNIQUE1117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1117: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1118: 
	ret
	.cfi_endproc
.LFE38:
	.size	set_char, .-set_char
	.globl	set_int
	.type	set_int, @function
set_int:
.LFB39:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1119: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1120: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1121: 
	subq	$16, %rsp
 jmp .UNIQUE1122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1122: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1123: 
	movl	%esi, -12(%rbp)
 jmp .UNIQUE1124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1124: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1125: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE1126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1126: 
	movq	%rax, %rsi
 jmp .UNIQUE1127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1127: 
	movl	$4, %edi
 jmp .UNIQUE1128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1128: 
	call	insert_data_into_mem
 jmp .UNIQUE1129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1129: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1130: 
	ret
	.cfi_endproc
.LFE39:
	.size	set_int, .-set_int
	.globl	set_long_int
	.type	set_long_int, @function
set_long_int:
.LFB40:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1131: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1132: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1133: 
	subq	$16, %rsp
 jmp .UNIQUE1134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1134: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1135: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1136: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1137: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1138: 
	movq	%rax, %rsi
 jmp .UNIQUE1139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1139: 
	movl	$8, %edi
 jmp .UNIQUE1140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1140: 
	call	insert_data_into_mem
 jmp .UNIQUE1141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1141: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1142: 
	ret
	.cfi_endproc
.LFE40:
	.size	set_long_int, .-set_long_int
	.globl	set_pointer
	.type	set_pointer, @function
set_pointer:
.LFB41:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1143: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1144: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1145: 
	subq	$16, %rsp
 jmp .UNIQUE1146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1146: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1147: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1148: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1149: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1150: 
	movq	%rax, %rsi
 jmp .UNIQUE1151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1151: 
	movl	$8, %edi
 jmp .UNIQUE1152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1152: 
	call	insert_data_into_mem
 jmp .UNIQUE1153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1153: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1154: 
	ret
	.cfi_endproc
.LFE41:
	.size	set_pointer, .-set_pointer
	.globl	set_float
	.type	set_float, @function
set_float:
.LFB42:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1155: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1156: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1157: 
	subq	$16, %rsp
 jmp .UNIQUE1158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1158: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1159: 
	movss	%xmm0, -12(%rbp)
 jmp .UNIQUE1160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1160: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1161: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE1162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1162: 
	movq	%rax, %rsi
 jmp .UNIQUE1163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1163: 
	movl	$4, %edi
 jmp .UNIQUE1164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1164: 
	call	insert_data_into_mem
 jmp .UNIQUE1165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1165: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1166: 
	ret
	.cfi_endproc
.LFE42:
	.size	set_float, .-set_float
	.globl	set_double
	.type	set_double, @function
set_double:
.LFB43:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1167: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1168: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1169: 
	subq	$16, %rsp
 jmp .UNIQUE1170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1170: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1171: 
	movsd	%xmm0, -16(%rbp)
 jmp .UNIQUE1172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1172: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1173: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1174: 
	movq	%rax, %rsi
 jmp .UNIQUE1175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1175: 
	movl	$8, %edi
 jmp .UNIQUE1176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1176: 
	call	insert_data_into_mem
 jmp .UNIQUE1177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1177: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1178: 
	ret
	.cfi_endproc
.LFE43:
	.size	set_double, .-set_double
	.globl	set_array_element
	.type	set_array_element, @function
set_array_element:
.LFB44:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1179: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1180: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1181: 
	subq	$32, %rsp
 jmp .UNIQUE1182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1182: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1183: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1184: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE1185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1185: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE1186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1186: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE1187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1187: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1188: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE1189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1189: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1190: 
	movq	%rcx, %r8
 jmp .UNIQUE1191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1191: 
	movl	$1, %ecx
 jmp .UNIQUE1192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1192: 
	movq	%rax, %rdi
 jmp .UNIQUE1193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1193: 
	call	set_secure_data
 jmp .UNIQUE1194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1194: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1195: 
	ret
	.cfi_endproc
.LFE44:
	.size	set_array_element, .-set_array_element
	.globl	set_char_array_element
	.type	set_char_array_element, @function
set_char_array_element:
.LFB45:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1196: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1197: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1198: 
	subq	$40, %rsp
 jmp .UNIQUE1199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1199: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1200: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1201: 
	movl	%edx, %eax
 jmp .UNIQUE1202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1202: 
	movb	%al, -36(%rbp)
 jmp .UNIQUE1203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1203: 
	movzbl	-36(%rbp), %eax
 jmp .UNIQUE1204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1204: 
	movb	%al, -1(%rbp)
 jmp .UNIQUE1205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1205: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1206: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1207: 
	leaq	-1(%rbp), %rax
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
	movl	$1, %esi
 jmp .UNIQUE1211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1211: 
	movq	%rax, %rdi
 jmp .UNIQUE1212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1212: 
	call	set_secure_data
 jmp .UNIQUE1213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1213: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1214: 
	ret
	.cfi_endproc
.LFE45:
	.size	set_char_array_element, .-set_char_array_element
	.globl	set_int_array_element
	.type	set_int_array_element, @function
set_int_array_element:
.LFB46:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1215: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1216: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1217: 
	subq	$40, %rsp
 jmp .UNIQUE1218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1218: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1219: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1220: 
	movl	%edx, -36(%rbp)
 jmp .UNIQUE1221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1221: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE1222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1222: 
	movl	%eax, -4(%rbp)
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
	leaq	-4(%rbp), %rax
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
	movl	$4, %esi
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
	.size	set_int_array_element, .-set_int_array_element
	.globl	set_long_int_array_element
	.type	set_long_int_array_element, @function
set_long_int_array_element:
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
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE1239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1239: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1240: 
	movq	%rax, -8(%rbp)
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
	leaq	-8(%rbp), %rax
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
	movl	$8, %esi
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
	.size	set_long_int_array_element, .-set_long_int_array_element
	.globl	set_pointer_array_element
	.type	set_pointer_array_element, @function
set_pointer_array_element:
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
	.size	set_pointer_array_element, .-set_pointer_array_element
	.globl	set_float_array_element
	.type	set_float_array_element, @function
set_float_array_element:
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
	movss	%xmm0, -36(%rbp)
 jmp .UNIQUE1275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1275: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE1276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1276: 
	movl	%eax, -4(%rbp)
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
	leaq	-4(%rbp), %rax
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
	movl	$4, %esi
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
	.size	set_float_array_element, .-set_float_array_element
	.globl	set_double_array_element
	.type	set_double_array_element, @function
set_double_array_element:
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
	movsd	%xmm0, -40(%rbp)
 jmp .UNIQUE1293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1293: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1294: 
	movq	%rax, -8(%rbp)
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
	leaq	-8(%rbp), %rax
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
	movl	$8, %esi
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
	.size	set_double_array_element, .-set_double_array_element
	.globl	set_arbitrary_block_in_heap
	.type	set_arbitrary_block_in_heap, @function
set_arbitrary_block_in_heap:
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
	subq	$24, %rsp
 jmp .UNIQUE1308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1308: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1309: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1310: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE1311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1311: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1312: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE1313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1313: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1314: 
	movl	$0, %r8d
 jmp .UNIQUE1315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1315: 
	movl	$0, %ecx
 jmp .UNIQUE1316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1316: 
	movq	%rax, %rdi
 jmp .UNIQUE1317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1317: 
	call	set_secure_data
 jmp .UNIQUE1318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1318: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1319: 
	ret
	.cfi_endproc
.LFE51:
	.size	set_arbitrary_block_in_heap, .-set_arbitrary_block_in_heap
	.globl	find_large_enough_free_group
	.type	find_large_enough_free_group, @function
find_large_enough_free_group:
.LFB52:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1320: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1321: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1322: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1323: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1324: 
	testq	%rax, %rax
 jmp .UNIQUE1325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1325: 
	jne	.L134
 jmp .UNIQUE1326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1326: 
	movl	$0, %eax
 jmp .UNIQUE1327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1327: 
	jmp	.L135
.L134:
 jmp .UNIQUE1328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1328: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1329: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1330: 
	jmp	.L136
.L138:
 jmp .UNIQUE1331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1331: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1332: 
	movq	(%rax), %rax
 jmp .UNIQUE1333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1333: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE1334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1334: 
	jl	.L137
 jmp .UNIQUE1335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1335: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1336: 
	jmp	.L135
.L137:
 jmp .UNIQUE1337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1337: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1338: 
	movq	16(%rax), %rax
 jmp .UNIQUE1339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1339: 
	movq	%rax, -8(%rbp)
.L136:
 jmp .UNIQUE1340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1340: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1341: 
	jne	.L138
 jmp .UNIQUE1342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1342: 
	movl	$0, %eax
.L135:
 jmp .UNIQUE1343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1343: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1344: 
	ret
	.cfi_endproc
.LFE52:
	.size	find_large_enough_free_group, .-find_large_enough_free_group
	.globl	find_which_group_to_free
	.type	find_which_group_to_free, @function
find_which_group_to_free:
.LFB53:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1345: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1346: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1347: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1348: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE1349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1349: 
	testq	%rax, %rax
 jmp .UNIQUE1350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1350: 
	jne	.L140
 jmp .UNIQUE1351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1351: 
	movl	$0, %eax
 jmp .UNIQUE1352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1352: 
	jmp	.L141
.L140:
 jmp .UNIQUE1353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1353: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE1354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1354: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1355: 
	jmp	.L142
.L144:
 jmp .UNIQUE1356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1356: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1357: 
	movq	8(%rax), %rax
 jmp .UNIQUE1358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1358: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE1359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1359: 
	jne	.L143
 jmp .UNIQUE1360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1360: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1361: 
	jmp	.L141
.L143:
 jmp .UNIQUE1362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1362: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1363: 
	movq	16(%rax), %rax
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
.L142:
 jmp .UNIQUE1365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1365: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1366: 
	jne	.L144
 jmp .UNIQUE1367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1367: 
	movl	$0, %eax
.L141:
 jmp .UNIQUE1368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1368: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1369: 
	ret
	.cfi_endproc
.LFE53:
	.size	find_which_group_to_free, .-find_which_group_to_free
	.globl	check_and_merge
	.type	check_and_merge, @function
check_and_merge:
.LFB54:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1370: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1371: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1372: 
	subq	$48, %rsp
 jmp .UNIQUE1373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1373: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1374: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1375: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE1376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1376: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1377: 
	movq	8(%rax), %rax
 jmp .UNIQUE1378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1378: 
	movq	%rax, %rcx
 jmp .UNIQUE1379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1379: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1380: 
	movq	(%rax), %rdx
 jmp .UNIQUE1381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1381: 
	movq	%rdx, %rax
 jmp .UNIQUE1382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1382: 
	salq	$3, %rax
 jmp .UNIQUE1383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1383: 
	addq	%rdx, %rax
 jmp .UNIQUE1384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1384: 
	leaq	(%rcx,%rax), %rdx
 jmp .UNIQUE1385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1385: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1386: 
	movq	8(%rax), %rax
 jmp .UNIQUE1387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1387: 
	cmpq	%rax, %rdx
 jmp .UNIQUE1388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1388: 
	jne	.L146
 jmp .UNIQUE1389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1389: 
	movl	$904, %edx
 jmp .UNIQUE1390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1390: 
	movl	$__func__.4122, %esi
 jmp .UNIQUE1391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1391: 
	movl	$32, %edi
 jmp .UNIQUE1392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1392: 
	call	error_checking_malloc
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
	movq	-24(%rbp), %rax
 jmp .UNIQUE1395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1395: 
	movq	(%rax), %rdx
 jmp .UNIQUE1396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1396: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1397: 
	movq	(%rax), %rax
 jmp .UNIQUE1398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1398: 
	addq	%rax, %rdx
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
	movq	%rdx, (%rax)
 jmp .UNIQUE1401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1401: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1402: 
	movq	8(%rax), %rdx
 jmp .UNIQUE1403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1403: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1404: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE1405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1405: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1406: 
	movq	24(%rax), %rdx
 jmp .UNIQUE1407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1407: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1408: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE1409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1409: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1410: 
	movq	16(%rax), %rdx
 jmp .UNIQUE1411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1411: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1412: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE1413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1413: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1414: 
	movq	24(%rax), %rax
 jmp .UNIQUE1415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1415: 
	testq	%rax, %rax
 jmp .UNIQUE1416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1416: 
	je	.L147
 jmp .UNIQUE1417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1417: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1418: 
	movq	24(%rax), %rax
 jmp .UNIQUE1419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1419: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1420: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE1421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1421: 
	jmp	.L148
.L147:
 jmp .UNIQUE1422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1422: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1423: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1424: 
	movq	%rdx, (%rax)
.L148:
 jmp .UNIQUE1425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1425: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1426: 
	movq	16(%rax), %rax
 jmp .UNIQUE1427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1427: 
	testq	%rax, %rax
 jmp .UNIQUE1428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1428: 
	je	.L149
 jmp .UNIQUE1429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1429: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1430: 
	movq	16(%rax), %rax
 jmp .UNIQUE1431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1431: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1432: 
	movq	%rdx, 24(%rax)
.L149:
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
	movq	%rax, %rdi
 jmp .UNIQUE1435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1435: 
	call	free
 jmp .UNIQUE1436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1436: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1437: 
	movq	%rax, %rdi
 jmp .UNIQUE1438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1438: 
	call	free
 jmp .UNIQUE1439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1439: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1440: 
	jmp	.L150
.L146:
 jmp .UNIQUE1441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1441: 
	movl	$0, %eax
.L150:
 jmp .UNIQUE1442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1442: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1443: 
	ret
	.cfi_endproc
.LFE54:
	.size	check_and_merge, .-check_and_merge
	.globl	managed_secure_malloc
	.type	managed_secure_malloc, @function
managed_secure_malloc:
.LFB55:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1444: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1445: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1446: 
	subq	$96, %rsp
 jmp .UNIQUE1447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1447: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE1448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1448: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1449: 
	leaq	3(%rax), %rdx
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
	cmovs	%rdx, %rax
 jmp .UNIQUE1452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1452: 
	sarq	$2, %rax
 jmp .UNIQUE1453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1453: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE1454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1454: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE1455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1455: 
	salq	$2, %rax
 jmp .UNIQUE1456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1456: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE1457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1457: 
	jge	.L152
 jmp .UNIQUE1458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1458: 
	addq	$1, -48(%rbp)
.L152:
 jmp .UNIQUE1459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1459: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE1460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1460: 
	movq	%rax, %rdi
 jmp .UNIQUE1461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1461: 
	call	find_large_enough_free_group
 jmp .UNIQUE1462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1462: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE1463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1463: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE1464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1464: 
	jne	.L153
 jmp .UNIQUE1465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1465: 
	movl	$0, %eax
 jmp .UNIQUE1466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1466: 
	jmp	.L157
.L153:
 jmp .UNIQUE1467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1467: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE1468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1468: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE1469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1469: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1470: 
	movq	8(%rax), %rax
 jmp .UNIQUE1471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1471: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1472: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE1473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1473: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE1474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1474: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE1475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1475: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE1476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1476: 
	movq	%rdx, (%rsp)
 jmp .UNIQUE1477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1477: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1478: 
	movq	%rdx, 8(%rsp)
 jmp .UNIQUE1479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1479: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1480: 
	movq	%rdx, 16(%rsp)
 jmp .UNIQUE1481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1481: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1482: 
	movq	%rdx, 24(%rsp)
 jmp .UNIQUE1483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1483: 
	movq	%rax, %rdi
 jmp .UNIQUE1484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1484: 
	call	add_node_to_list
 jmp .UNIQUE1485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1485: 
	movq	%rax, allocated_chunks_list(%rip)
 jmp .UNIQUE1486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1486: 
	movq	allocated_chunks_num(%rip), %rax
 jmp .UNIQUE1487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1487: 
	addq	$1, %rax
 jmp .UNIQUE1488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1488: 
	movq	%rax, allocated_chunks_num(%rip)
 jmp .UNIQUE1489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1489: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1490: 
	movq	(%rax), %rax
 jmp .UNIQUE1491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1491: 
	cmpq	-48(%rbp), %rax
 jmp .UNIQUE1492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1492: 
	jne	.L155
 jmp .UNIQUE1493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1493: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1494: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE1495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1495: 
	movq	%rdx, %rsi
 jmp .UNIQUE1496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1496: 
	movq	%rax, %rdi
 jmp .UNIQUE1497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1497: 
	call	delete_node_from_list
 jmp .UNIQUE1498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1498: 
	movq	%rax, free_chunks_list(%rip)
 jmp .UNIQUE1499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1499: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1500: 
	subq	$1, %rax
 jmp .UNIQUE1501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1501: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1502: 
	jmp	.L156
.L155:
 jmp .UNIQUE1503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1503: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1504: 
	movq	(%rax), %rax
 jmp .UNIQUE1505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1505: 
	subq	-48(%rbp), %rax
 jmp .UNIQUE1506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1506: 
	movq	%rax, %rdx
 jmp .UNIQUE1507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1507: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1508: 
	movq	%rdx, (%rax)
 jmp .UNIQUE1509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1509: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1510: 
	movq	8(%rax), %rcx
 jmp .UNIQUE1511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1511: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE1512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1512: 
	movq	%rdx, %rax
 jmp .UNIQUE1513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1513: 
	salq	$3, %rax
 jmp .UNIQUE1514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1514: 
	addq	%rdx, %rax
 jmp .UNIQUE1515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1515: 
	leaq	(%rcx,%rax), %rdx
 jmp .UNIQUE1516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1516: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1517: 
	movq	%rdx, 8(%rax)
.L156:
 jmp .UNIQUE1518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1518: 
	movq	-24(%rbp), %rax
.L157:
 jmp .UNIQUE1519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1519: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1520: 
	ret
	.cfi_endproc
.LFE55:
	.size	managed_secure_malloc, .-managed_secure_malloc
	.globl	managed_secure_free
	.type	managed_secure_free, @function
managed_secure_free:
.LFB56:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1521: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1522: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1523: 
	subq	$96, %rsp
 jmp .UNIQUE1524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1524: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE1525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1525: 
	movl	$0, -44(%rbp)
 jmp .UNIQUE1526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1526: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1527: 
	movq	%rax, %rdi
 jmp .UNIQUE1528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1528: 
	call	find_which_group_to_free
 jmp .UNIQUE1529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1529: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE1530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1530: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE1531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1531: 
	jne	.L159
 jmp .UNIQUE1532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1532: 
	movl	$0, %eax
 jmp .UNIQUE1533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1533: 
	jmp	.L160
.L159:
 jmp .UNIQUE1534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1534: 
	movl	$997, %edx
 jmp .UNIQUE1535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1535: 
	movl	$__func__.4138, %esi
 jmp .UNIQUE1536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1536: 
	movl	$32, %edi
 jmp .UNIQUE1537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1537: 
	call	error_checking_malloc
 jmp .UNIQUE1538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1538: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE1539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1539: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE1540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1540: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1541: 
	movq	%rdx, %rsi
 jmp .UNIQUE1542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1542: 
	movq	%rax, %rdi
 jmp .UNIQUE1543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1543: 
	call	copy_nodes_ptr
 jmp .UNIQUE1544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1544: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE1545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1545: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE1546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1546: 
	movq	%rdx, %rsi
 jmp .UNIQUE1547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1547: 
	movq	%rax, %rdi
 jmp .UNIQUE1548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1548: 
	call	delete_node_from_list
 jmp .UNIQUE1549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1549: 
	movq	%rax, allocated_chunks_list(%rip)
 jmp .UNIQUE1550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1550: 
	movq	allocated_chunks_num(%rip), %rax
 jmp .UNIQUE1551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1551: 
	subq	$1, %rax
 jmp .UNIQUE1552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1552: 
	movq	%rax, allocated_chunks_num(%rip)
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
	movq	%rax, -40(%rbp)
 jmp .UNIQUE1555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1555: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE1556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1556: 
	jne	.L161
 jmp .UNIQUE1557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1557: 
	movq	free_chunks_list(%rip), %rdx
 jmp .UNIQUE1558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1558: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1559: 
	movq	(%rax), %rcx
 jmp .UNIQUE1560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1560: 
	movq	%rcx, (%rsp)
 jmp .UNIQUE1561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1561: 
	movq	8(%rax), %rcx
 jmp .UNIQUE1562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1562: 
	movq	%rcx, 8(%rsp)
 jmp .UNIQUE1563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1563: 
	movq	16(%rax), %rcx
 jmp .UNIQUE1564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1564: 
	movq	%rcx, 16(%rsp)
 jmp .UNIQUE1565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1565: 
	movq	24(%rax), %rax
 jmp .UNIQUE1566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1566: 
	movq	%rax, 24(%rsp)
 jmp .UNIQUE1567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1567: 
	movq	%rdx, %rdi
 jmp .UNIQUE1568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1568: 
	call	add_node_to_list
 jmp .UNIQUE1569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1569: 
	movq	%rax, free_chunks_list(%rip)
 jmp .UNIQUE1570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1570: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1571: 
	addq	$1, %rax
 jmp .UNIQUE1572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1572: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1573: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1574: 
	movq	%rax, %rdi
 jmp .UNIQUE1575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1575: 
	call	free
 jmp .UNIQUE1576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1576: 
	movl	$1, -44(%rbp)
 jmp .UNIQUE1577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1577: 
	jmp	.L162
.L161:
 jmp .UNIQUE1578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1578: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE1579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1579: 
	jmp	.L163
.L166:
 jmp .UNIQUE1580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1580: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1581: 
	movq	8(%rax), %rax
 jmp .UNIQUE1582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1582: 
	movq	%rax, %rdx
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
	movq	8(%rax), %rax
 jmp .UNIQUE1585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1585: 
	cmpq	%rax, %rdx
 jmp .UNIQUE1586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1586: 
	jle	.L164
 jmp .UNIQUE1587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1587: 
	jmp	.L165
.L164:
 jmp .UNIQUE1588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1588: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1589: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE1590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1590: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1591: 
	movq	16(%rax), %rax
 jmp .UNIQUE1592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1592: 
	movq	%rax, -40(%rbp)
.L163:
 jmp .UNIQUE1593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1593: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE1594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1594: 
	jne	.L166
.L165:
 jmp .UNIQUE1595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1595: 
	cmpq	$0, -32(%rbp)
 jmp .UNIQUE1596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1596: 
	jne	.L167
 jmp .UNIQUE1597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1597: 
	movq	free_chunks_list(%rip), %rdx
 jmp .UNIQUE1598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1598: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1599: 
	movq	(%rax), %rcx
 jmp .UNIQUE1600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1600: 
	movq	%rcx, (%rsp)
 jmp .UNIQUE1601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1601: 
	movq	8(%rax), %rcx
 jmp .UNIQUE1602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1602: 
	movq	%rcx, 8(%rsp)
 jmp .UNIQUE1603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1603: 
	movq	16(%rax), %rcx
 jmp .UNIQUE1604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1604: 
	movq	%rcx, 16(%rsp)
 jmp .UNIQUE1605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1605: 
	movq	24(%rax), %rax
 jmp .UNIQUE1606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1606: 
	movq	%rax, 24(%rsp)
 jmp .UNIQUE1607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1607: 
	movq	%rdx, %rdi
 jmp .UNIQUE1608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1608: 
	call	add_node_to_list
 jmp .UNIQUE1609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1609: 
	movq	%rax, free_chunks_list(%rip)
 jmp .UNIQUE1610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1610: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1611: 
	addq	$1, %rax
 jmp .UNIQUE1612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1612: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1613: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1614: 
	movq	%rax, %rdi
 jmp .UNIQUE1615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1615: 
	call	free
 jmp .UNIQUE1616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1616: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1617: 
	movq	%rax, -16(%rbp)
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
	movq	16(%rax), %rax
 jmp .UNIQUE1620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1620: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1621: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1622: 
	je	.L168
 jmp .UNIQUE1623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1623: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE1624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1624: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1625: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1626: 
	movq	%rcx, %rsi
 jmp .UNIQUE1627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1627: 
	movq	%rax, %rdi
 jmp .UNIQUE1628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1628: 
	call	check_and_merge
 jmp .UNIQUE1629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1629: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1630: 
	jmp	.L169
.L171:
 jmp .UNIQUE1631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1631: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1632: 
	subq	$1, %rax
 jmp .UNIQUE1633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1633: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1634: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1635: 
	movq	16(%rax), %rax
 jmp .UNIQUE1636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1636: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1637: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1638: 
	je	.L170
 jmp .UNIQUE1639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1639: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE1640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1640: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1641: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1642: 
	movq	%rcx, %rsi
 jmp .UNIQUE1643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1643: 
	movq	%rax, %rdi
 jmp .UNIQUE1644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1644: 
	call	check_and_merge
 jmp .UNIQUE1645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1645: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1646: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1647: 
	jne	.L169
 jmp .UNIQUE1648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1648: 
	jmp	.L168
.L170:
 jmp .UNIQUE1649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1649: 
	jmp	.L168
.L169:
 jmp .UNIQUE1650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1650: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1651: 
	jne	.L171
.L168:
 jmp .UNIQUE1652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1652: 
	movl	$1, -44(%rbp)
 jmp .UNIQUE1653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1653: 
	jmp	.L162
.L167:
 jmp .UNIQUE1654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1654: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1655: 
	movq	16(%rax), %rax
 jmp .UNIQUE1656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1656: 
	testq	%rax, %rax
 jmp .UNIQUE1657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1657: 
	jne	.L172
 jmp .UNIQUE1658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1658: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1659: 
	movq	8(%rax), %rax
 jmp .UNIQUE1660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1660: 
	movq	%rax, %rdx
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
	movq	8(%rax), %rax
 jmp .UNIQUE1663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1663: 
	cmpq	%rax, %rdx
 jmp .UNIQUE1664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1664: 
	jge	.L172
 jmp .UNIQUE1665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1665: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1666: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1667: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE1668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1668: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1669: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE1670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1670: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE1671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1671: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1672: 
	movq	$0, 16(%rax)
 jmp .UNIQUE1673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1673: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1674: 
	addq	$1, %rax
 jmp .UNIQUE1675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1675: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1676: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE1677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1677: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1678: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1679: 
	movq	%rcx, %rsi
 jmp .UNIQUE1680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1680: 
	movq	%rax, %rdi
 jmp .UNIQUE1681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1681: 
	call	check_and_merge
 jmp .UNIQUE1682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1682: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1683: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1684: 
	je	.L173
 jmp .UNIQUE1685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1685: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1686: 
	subq	$1, %rax
 jmp .UNIQUE1687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1687: 
	movq	%rax, free_chunks_num(%rip)
.L173:
 jmp .UNIQUE1688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1688: 
	movl	$1, -44(%rbp)
 jmp .UNIQUE1689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1689: 
	jmp	.L162
.L172:
 jmp .UNIQUE1690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1690: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1691: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1692: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE1693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1693: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1694: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE1695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1695: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE1696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1696: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1697: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE1698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1698: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE1699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1699: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1700: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1701: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE1702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1702: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1703: 
	addq	$1, %rax
 jmp .UNIQUE1704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1704: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1705: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE1706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1706: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1707: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1708: 
	movq	%rcx, %rsi
 jmp .UNIQUE1709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1709: 
	movq	%rax, %rdi
 jmp .UNIQUE1710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1710: 
	call	check_and_merge
 jmp .UNIQUE1711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1711: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1712: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1713: 
	jne	.L174
 jmp .UNIQUE1714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1714: 
	movq	-40(%rbp), %rcx
 jmp .UNIQUE1715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1715: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1716: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1717: 
	movq	%rcx, %rsi
 jmp .UNIQUE1718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1718: 
	movq	%rax, %rdi
 jmp .UNIQUE1719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1719: 
	call	check_and_merge
 jmp .UNIQUE1720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1720: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1721: 
	jmp	.L175
.L174:
 jmp .UNIQUE1722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1722: 
	jmp	.L175
.L178:
 jmp .UNIQUE1723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1723: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1724: 
	subq	$1, %rax
 jmp .UNIQUE1725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1725: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1726: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1727: 
	movq	16(%rax), %rax
 jmp .UNIQUE1728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1728: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1729: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1730: 
	je	.L176
 jmp .UNIQUE1731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1731: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE1732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1732: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1733: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1734: 
	movq	%rcx, %rsi
 jmp .UNIQUE1735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1735: 
	movq	%rax, %rdi
 jmp .UNIQUE1736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1736: 
	call	check_and_merge
 jmp .UNIQUE1737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1737: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1738: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1739: 
	jne	.L175
 jmp .UNIQUE1740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1740: 
	jmp	.L177
.L176:
 jmp .UNIQUE1741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1741: 
	jmp	.L177
.L175:
 jmp .UNIQUE1742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1742: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1743: 
	jne	.L178
.L177:
 jmp .UNIQUE1744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1744: 
	movl	$1, -44(%rbp)
.L162:
 jmp .UNIQUE1745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1745: 
	movl	-44(%rbp), %eax
.L160:
 jmp .UNIQUE1746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1746: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1747: 
	ret
	.cfi_endproc
.LFE56:
	.size	managed_secure_free, .-managed_secure_free
	.section	.rodata
	.align 8
.LC13:
	.string	"Managed secure malloc error n function %s, line %d\n"
	.text
	.globl	error_checking_managed_secure_malloc
	.type	error_checking_managed_secure_malloc, @function
error_checking_managed_secure_malloc:
.LFB57:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1748: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1749: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1750: 
	subq	$48, %rsp
 jmp .UNIQUE1751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1751: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1752: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1753: 
	movl	%edx, -36(%rbp)
 jmp .UNIQUE1754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1754: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1755: 
	movq	%rax, %rdi
 jmp .UNIQUE1756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1756: 
	call	managed_secure_malloc
 jmp .UNIQUE1757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1757: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1758: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1759: 
	jne	.L180
 jmp .UNIQUE1760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1760: 
	movq	stderr(%rip), %rax
 jmp .UNIQUE1761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1761: 
	movl	-36(%rbp), %ecx
 jmp .UNIQUE1762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1762: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE1763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1763: 
	movl	$.LC13, %esi
 jmp .UNIQUE1764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1764: 
	movq	%rax, %rdi
 jmp .UNIQUE1765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1765: 
	movl	$0, %eax
 jmp .UNIQUE1766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1766: 
	call	fprintf
 jmp .UNIQUE1767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1767: 
	movl	$52, %edi
 jmp .UNIQUE1768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1768: 
	call	exit
.L180:
 jmp .UNIQUE1769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1769: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1770: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1771: 
	ret
	.cfi_endproc
.LFE57:
	.size	error_checking_managed_secure_malloc, .-error_checking_managed_secure_malloc
	.globl	insert_data_into_normal_array
	.type	insert_data_into_normal_array, @function
insert_data_into_normal_array:
.LFB58:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1772: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1773: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1774: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1775: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1776: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE1777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1777: 
	movl	$0, -4(%rbp)
 jmp .UNIQUE1778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1778: 
	jmp	.L183
.L184:
 jmp .UNIQUE1779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1779: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE1780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1780: 
	movslq	%eax, %rdx
 jmp .UNIQUE1781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1781: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1782: 
	addq	%rax, %rdx
 jmp .UNIQUE1783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1783: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE1784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1784: 
	movslq	%eax, %rcx
 jmp .UNIQUE1785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1785: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1786: 
	addq	%rcx, %rax
 jmp .UNIQUE1787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1787: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1788: 
	movb	%al, (%rdx)
 jmp .UNIQUE1789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1789: 
	addl	$1, -4(%rbp)
.L183:
 jmp .UNIQUE1790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1790: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE1791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1791: 
	cltq
 jmp .UNIQUE1792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1792: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE1793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1793: 
	jl	.L184
 jmp .UNIQUE1794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1794: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1795: 
	ret
	.cfi_endproc
.LFE58:
	.size	insert_data_into_normal_array, .-insert_data_into_normal_array
	.section	.rodata
	.align 8
.LC14:
	.string	"Zero hex test printing: 0x%02x \n"
.LC15:
	.string	"Starting mem test"
.LC16:
	.string	"chunks:%ld\n"
.LC17:
	.string	"After init, print mem"
.LC18:
	.string	"Trying to secure malloc"
	.align 8
.LC19:
	.string	"After malloc,try to insert some data"
	.align 8
.LC20:
	.string	"Now let's retrieve the data and display them"
.LC21:
	.string	"%d "
	.align 8
.LC22:
	.string	"Again, Trying to secure malloc"
	.align 8
.LC23:
	.string	"Again, after malloc,try to insert some data"
	.align 8
.LC24:
	.string	"After displaying the two arrays:"
.LC25:
	.string	"After freeing one of them:"
	.align 8
.LC26:
	.string	"Now trying to store and retrieve 424242424..."
.LC27:
	.string	"\n\n%d \n\n"
.LC28:
	.string	"After retrieving int:"
	.align 8
.LC29:
	.string	"After freeing the second array:"
.LC30:
	.string	"After freeing the int:"
.LC31:
	.string	"Testing wrapper functions"
.LC32:
	.string	"Got %d\n"
.LC33:
	.string	"Got %c\n"
.LC34:
	.string	"Got %ld\n"
.LC35:
	.string	"After long int printing:"
.LC36:
	.string	"After long int free:"
.LC37:
	.string	"After another char alloc:"
.LC39:
	.string	"Got %lf\n"
.LC40:
	.string	"After double alloc:"
	.align 8
.LC41:
	.string	"Array wrapper function testing"
.LC45:
	.string	"array index 2 is %lf\n"
.LC46:
	.string	"array index 3 is %lf\n"
.LC47:
	.string	"\n\n"
	.align 8
.LC48:
	.string	"After data retrieval, print mem"
.LC49:
	.string	"Mem test done"
	.text
	.globl	mem_test
	.type	mem_test, @function
mem_test:
.LFB59:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1796: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1797: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1798: 
	subq	$176, %rsp
 jmp .UNIQUE1799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1799: 
	movq	$20, -128(%rbp)
 jmp .UNIQUE1800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1800: 
	movl	$0, %esi
 jmp .UNIQUE1801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1801: 
	movl	$.LC14, %edi
 jmp .UNIQUE1802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1802: 
	movl	$0, %eax
 jmp .UNIQUE1803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1803: 
	call	printf
 jmp .UNIQUE1804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1804: 
	movl	$.LC15, %edi
 jmp .UNIQUE1805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1805: 
	call	puts
 jmp .UNIQUE1806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1806: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE1807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1807: 
	movq	%rax, -120(%rbp)
 jmp .UNIQUE1808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1808: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE1809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1809: 
	movq	%rax, %rdi
 jmp .UNIQUE1810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1810: 
	call	find_number_of_useful_chunks
 jmp .UNIQUE1811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1811: 
	movq	%rax, -112(%rbp)
 jmp .UNIQUE1812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1812: 
	movq	-112(%rbp), %rax
 jmp .UNIQUE1813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1813: 
	movq	%rax, %rsi
 jmp .UNIQUE1814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1814: 
	movl	$.LC16, %edi
 jmp .UNIQUE1815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1815: 
	movl	$0, %eax
 jmp .UNIQUE1816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1816: 
	call	printf
 jmp .UNIQUE1817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1817: 
	movl	$.LC17, %edi
 jmp .UNIQUE1818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1818: 
	call	puts
 jmp .UNIQUE1819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1819: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE1820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1820: 
	movq	%rax, %rdi
 jmp .UNIQUE1821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1821: 
	call	print_mem
 jmp .UNIQUE1822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1822: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1823: 
	salq	$2, %rax
 jmp .UNIQUE1824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1824: 
	movl	$60, %edx
 jmp .UNIQUE1825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1825: 
	movl	$__func__.4189, %esi
 jmp .UNIQUE1826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1826: 
	movq	%rax, %rdi
 jmp .UNIQUE1827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1827: 
	call	error_checking_malloc
 jmp .UNIQUE1828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1828: 
	movq	%rax, -104(%rbp)
 jmp .UNIQUE1829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1829: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1830: 
	salq	$2, %rax
 jmp .UNIQUE1831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1831: 
	movl	$61, %edx
 jmp .UNIQUE1832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1832: 
	movl	$__func__.4189, %esi
 jmp .UNIQUE1833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1833: 
	movq	%rax, %rdi
 jmp .UNIQUE1834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1834: 
	call	error_checking_malloc
 jmp .UNIQUE1835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1835: 
	movq	%rax, -96(%rbp)
 jmp .UNIQUE1836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1836: 
	movq	$5, -144(%rbp)
 jmp .UNIQUE1837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1837: 
	jmp	.L186
.L187:
 jmp .UNIQUE1838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1838: 
	movq	-144(%rbp), %rax
 jmp .UNIQUE1839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1839: 
	salq	$2, %rax
 jmp .UNIQUE1840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1840: 
	leaq	-20(%rax), %rdx
 jmp .UNIQUE1841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1841: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE1842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1842: 
	addq	%rax, %rdx
 jmp .UNIQUE1843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1843: 
	movq	-144(%rbp), %rax
 jmp .UNIQUE1844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1844: 
	movl	%eax, %ecx
 jmp .UNIQUE1845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1845: 
	movq	-144(%rbp), %rax
 jmp .UNIQUE1846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1846: 
	imull	%ecx, %eax
 jmp .UNIQUE1847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1847: 
	movl	%eax, (%rdx)
 jmp .UNIQUE1848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1848: 
	addq	$1, -144(%rbp)
.L186:
 jmp .UNIQUE1849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1849: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1850: 
	addq	$5, %rax
 jmp .UNIQUE1851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1851: 
	cmpq	-144(%rbp), %rax
 jmp .UNIQUE1852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1852: 
	jg	.L187
 jmp .UNIQUE1853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1853: 
	movl	$.LC18, %edi
 jmp .UNIQUE1854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1854: 
	call	puts
 jmp .UNIQUE1855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1855: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1856: 
	salq	$2, %rax
 jmp .UNIQUE1857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1857: 
	movl	$70, %edx
 jmp .UNIQUE1858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1858: 
	movl	$__func__.4189, %esi
 jmp .UNIQUE1859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1859: 
	movq	%rax, %rdi
 jmp .UNIQUE1860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1860: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE1861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1861: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE1862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1862: 
	movl	$.LC19, %edi
 jmp .UNIQUE1863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1863: 
	call	puts
 jmp .UNIQUE1864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1864: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1865: 
	salq	$2, %rax
 jmp .UNIQUE1866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1866: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE1867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1867: 
	movq	-104(%rbp), %rcx
 jmp .UNIQUE1868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1868: 
	movq	%rcx, %rsi
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
	call	insert_data_into_mem
 jmp .UNIQUE1871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1871: 
	movl	$.LC20, %edi
 jmp .UNIQUE1872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1872: 
	call	puts
 jmp .UNIQUE1873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1873: 
	movl	$78, %edx
 jmp .UNIQUE1874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1874: 
	movl	$__func__.4189, %esi
 jmp .UNIQUE1875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1875: 
	movl	$4, %edi
 jmp .UNIQUE1876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1876: 
	call	error_checking_malloc
 jmp .UNIQUE1877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1877: 
	movq	%rax, -80(%rbp)
 jmp .UNIQUE1878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1878: 
	movq	$0, -136(%rbp)
 jmp .UNIQUE1879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1879: 
	jmp	.L188
.L189:
 jmp .UNIQUE1880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1880: 
	movq	-136(%rbp), %rcx
 jmp .UNIQUE1881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1881: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE1882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1882: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE1883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1883: 
	movq	%rcx, %r8
 jmp .UNIQUE1884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1884: 
	movl	$1, %ecx
 jmp .UNIQUE1885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1885: 
	movl	$4, %esi
 jmp .UNIQUE1886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1886: 
	movq	%rax, %rdi
 jmp .UNIQUE1887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1887: 
	call	get_secure_data
 jmp .UNIQUE1888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1888: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE1889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1889: 
	movl	(%rax), %eax
 jmp .UNIQUE1890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1890: 
	movl	%eax, %esi
 jmp .UNIQUE1891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1891: 
	movl	$.LC21, %edi
 jmp .UNIQUE1892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1892: 
	movl	$0, %eax
 jmp .UNIQUE1893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1893: 
	call	printf
 jmp .UNIQUE1894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1894: 
	addq	$1, -136(%rbp)
.L188:
 jmp .UNIQUE1895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1895: 
	movq	-136(%rbp), %rax
 jmp .UNIQUE1896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1896: 
	cmpq	-128(%rbp), %rax
 jmp .UNIQUE1897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1897: 
	jl	.L189
 jmp .UNIQUE1898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1898: 
	movl	$10, %edi
 jmp .UNIQUE1899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1899: 
	call	putchar
 jmp .UNIQUE1900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1900: 
	movl	$.LC22, %edi
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
	movl	$91, %edx
 jmp .UNIQUE1905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1905: 
	movl	$__func__.4189, %esi
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
	movq	%rax, -72(%rbp)
 jmp .UNIQUE1909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1909: 
	movq	$5, -144(%rbp)
 jmp .UNIQUE1910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1910: 
	jmp	.L190
.L191:
 jmp .UNIQUE1911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1911: 
	movq	-144(%rbp), %rax
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
	leaq	-20(%rax), %rdx
 jmp .UNIQUE1914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1914: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE1915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1915: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE1916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1916: 
	movq	-144(%rbp), %rax
 jmp .UNIQUE1917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1917: 
	movl	%eax, %edx
 jmp .UNIQUE1918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1918: 
	movl	%edx, %eax
 jmp .UNIQUE1919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1919: 
	addl	%eax, %eax
 jmp .UNIQUE1920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1920: 
	addl	%edx, %eax
 jmp .UNIQUE1921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1921: 
	movl	%eax, (%rcx)
 jmp .UNIQUE1922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1922: 
	addq	$1, -144(%rbp)
.L190:
 jmp .UNIQUE1923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1923: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1924: 
	addq	$5, %rax
 jmp .UNIQUE1925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1925: 
	cmpq	-144(%rbp), %rax
 jmp .UNIQUE1926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1926: 
	jg	.L191
 jmp .UNIQUE1927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1927: 
	movl	$.LC23, %edi
 jmp .UNIQUE1928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1928: 
	call	puts
 jmp .UNIQUE1929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1929: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1930: 
	salq	$2, %rax
 jmp .UNIQUE1931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1931: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE1932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1932: 
	movq	-104(%rbp), %rcx
 jmp .UNIQUE1933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1933: 
	movq	%rcx, %rsi
 jmp .UNIQUE1934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1934: 
	movq	%rax, %rdi
 jmp .UNIQUE1935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1935: 
	call	insert_data_into_mem
 jmp .UNIQUE1936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1936: 
	movl	$.LC20, %edi
 jmp .UNIQUE1937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1937: 
	call	puts
 jmp .UNIQUE1938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1938: 
	movq	$0, -136(%rbp)
 jmp .UNIQUE1939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1939: 
	jmp	.L192
.L193:
 jmp .UNIQUE1940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1940: 
	movq	-136(%rbp), %rcx
 jmp .UNIQUE1941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1941: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE1942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1942: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE1943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1943: 
	movq	%rcx, %r8
 jmp .UNIQUE1944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1944: 
	movl	$1, %ecx
 jmp .UNIQUE1945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1945: 
	movl	$4, %esi
 jmp .UNIQUE1946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1946: 
	movq	%rax, %rdi
 jmp .UNIQUE1947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1947: 
	call	get_secure_data
 jmp .UNIQUE1948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1948: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE1949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1949: 
	movl	(%rax), %eax
 jmp .UNIQUE1950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1950: 
	movl	%eax, %esi
 jmp .UNIQUE1951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1951: 
	movl	$.LC21, %edi
 jmp .UNIQUE1952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1952: 
	movl	$0, %eax
 jmp .UNIQUE1953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1953: 
	call	printf
 jmp .UNIQUE1954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1954: 
	addq	$1, -136(%rbp)
.L192:
 jmp .UNIQUE1955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1955: 
	movq	-136(%rbp), %rax
 jmp .UNIQUE1956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1956: 
	cmpq	-128(%rbp), %rax
 jmp .UNIQUE1957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1957: 
	jl	.L193
 jmp .UNIQUE1958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1958: 
	movl	$10, %edi
 jmp .UNIQUE1959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1959: 
	call	putchar
 jmp .UNIQUE1960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1960: 
	movl	$.LC24, %edi
 jmp .UNIQUE1961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1961: 
	call	puts
 jmp .UNIQUE1962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1962: 
	movl	$0, %eax
 jmp .UNIQUE1963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1963: 
	call	print_lists
 jmp .UNIQUE1964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1964: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE1965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1965: 
	movq	%rax, %rdi
 jmp .UNIQUE1966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1966: 
	call	managed_secure_free
 jmp .UNIQUE1967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1967: 
	movl	$.LC25, %edi
 jmp .UNIQUE1968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1968: 
	call	puts
 jmp .UNIQUE1969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1969: 
	movl	$0, %eax
 jmp .UNIQUE1970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1970: 
	call	print_lists
 jmp .UNIQUE1971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1971: 
	movl	$.LC26, %edi
 jmp .UNIQUE1972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1972: 
	call	puts
 jmp .UNIQUE1973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1973: 
	movl	$120, %edx
 jmp .UNIQUE1974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1974: 
	movl	$__func__.4189, %esi
 jmp .UNIQUE1975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1975: 
	movl	$4, %edi
 jmp .UNIQUE1976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1976: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE1977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1977: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE1978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1978: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE1979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1979: 
	movl	$424242424, (%rax)
 jmp .UNIQUE1980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1980: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE1981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1981: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE1982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1982: 
	movq	%rax, %rsi
 jmp .UNIQUE1983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1983: 
	movl	$4, %edi
 jmp .UNIQUE1984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1984: 
	call	insert_data_into_mem
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
	movq	%rax, %rdi
 jmp .UNIQUE1987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1987: 
	call	free
 jmp .UNIQUE1988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1988: 
	movl	$124, %edx
 jmp .UNIQUE1989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1989: 
	movl	$__func__.4189, %esi
 jmp .UNIQUE1990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1990: 
	movl	$4, %edi
 jmp .UNIQUE1991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1991: 
	call	error_checking_malloc
 jmp .UNIQUE1992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1992: 
	movq	%rax, -80(%rbp)
 jmp .UNIQUE1993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1993: 
	movq	-136(%rbp), %rcx
 jmp .UNIQUE1994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1994: 
	movq	-72(%rbp), %rdx
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
	movq	%rcx, %r8
 jmp .UNIQUE1997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1997: 
	movl	$0, %ecx
 jmp .UNIQUE1998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1998: 
	movl	$4, %esi
 jmp .UNIQUE1999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1999: 
	movq	%rax, %rdi
 jmp .UNIQUE2000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2000: 
	call	get_secure_data
 jmp .UNIQUE2001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2001: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2002: 
	movl	(%rax), %eax
 jmp .UNIQUE2003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2003: 
	movl	%eax, %esi
 jmp .UNIQUE2004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2004: 
	movl	$.LC27, %edi
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
	call	printf
 jmp .UNIQUE2007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2007: 
	movq	-80(%rbp), %rax
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
	call	free
 jmp .UNIQUE2010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2010: 
	movl	$.LC28, %edi
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
	movq	-88(%rbp), %rax
 jmp .UNIQUE2015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2015: 
	movq	%rax, %rdi
 jmp .UNIQUE2016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2016: 
	call	managed_secure_free
 jmp .UNIQUE2017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2017: 
	movl	$.LC29, %edi
 jmp .UNIQUE2018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2018: 
	call	puts
 jmp .UNIQUE2019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2019: 
	movl	$0, %eax
 jmp .UNIQUE2020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2020: 
	call	print_lists
 jmp .UNIQUE2021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2021: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2022: 
	movq	%rax, %rdi
 jmp .UNIQUE2023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2023: 
	call	managed_secure_free
 jmp .UNIQUE2024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2024: 
	movl	$.LC30, %edi
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
	movl	$.LC31, %edi
 jmp .UNIQUE2029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2029: 
	call	puts
 jmp .UNIQUE2030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2030: 
	movl	$146, %edx
 jmp .UNIQUE2031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2031: 
	movl	$__func__.4189, %esi
 jmp .UNIQUE2032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2032: 
	movl	$4, %edi
 jmp .UNIQUE2033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2033: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2034: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE2035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2035: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2036: 
	movl	$99998, %esi
 jmp .UNIQUE2037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2037: 
	movq	%rax, %rdi
 jmp .UNIQUE2038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2038: 
	call	set_int
 jmp .UNIQUE2039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2039: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2040: 
	movq	%rax, %rdi
 jmp .UNIQUE2041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2041: 
	call	get_int
 jmp .UNIQUE2042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2042: 
	movl	%eax, -156(%rbp)
 jmp .UNIQUE2043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2043: 
	movl	-156(%rbp), %eax
 jmp .UNIQUE2044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2044: 
	movl	%eax, %esi
 jmp .UNIQUE2045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2045: 
	movl	$.LC32, %edi
 jmp .UNIQUE2046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2046: 
	movl	$0, %eax
 jmp .UNIQUE2047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2047: 
	call	printf
 jmp .UNIQUE2048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2048: 
	movl	$152, %edx
 jmp .UNIQUE2049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2049: 
	movl	$__func__.4189, %esi
 jmp .UNIQUE2050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2050: 
	movl	$1, %edi
 jmp .UNIQUE2051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2051: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2052: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE2053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2053: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE2054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2054: 
	movl	$98, %esi
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
	call	set_char
 jmp .UNIQUE2057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2057: 
	movq	-56(%rbp), %rax
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
	call	get_char
 jmp .UNIQUE2060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2060: 
	movb	%al, -157(%rbp)
 jmp .UNIQUE2061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2061: 
	movsbl	-157(%rbp), %eax
 jmp .UNIQUE2062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2062: 
	movl	%eax, %esi
 jmp .UNIQUE2063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2063: 
	movl	$.LC33, %edi
 jmp .UNIQUE2064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2064: 
	movl	$0, %eax
 jmp .UNIQUE2065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2065: 
	call	printf
 jmp .UNIQUE2066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2066: 
	movl	$158, %edx
 jmp .UNIQUE2067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2067: 
	movl	$__func__.4189, %esi
 jmp .UNIQUE2068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2068: 
	movl	$8, %edi
 jmp .UNIQUE2069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2069: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2070: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE2071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2071: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2072: 
	movl	$54545454, %esi
 jmp .UNIQUE2073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2073: 
	movq	%rax, %rdi
 jmp .UNIQUE2074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2074: 
	call	set_long_int
 jmp .UNIQUE2075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2075: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2076: 
	movq	%rax, %rdi
 jmp .UNIQUE2077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2077: 
	call	get_long_int
 jmp .UNIQUE2078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2078: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE2079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2079: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2080: 
	movq	%rax, %rsi
 jmp .UNIQUE2081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2081: 
	movl	$.LC34, %edi
 jmp .UNIQUE2082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2082: 
	movl	$0, %eax
 jmp .UNIQUE2083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2083: 
	call	printf
 jmp .UNIQUE2084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2084: 
	movl	$.LC35, %edi
 jmp .UNIQUE2085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2085: 
	call	puts
 jmp .UNIQUE2086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2086: 
	movl	$0, %eax
 jmp .UNIQUE2087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2087: 
	call	print_lists
 jmp .UNIQUE2088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2088: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2089: 
	movq	%rax, %rdi
 jmp .UNIQUE2090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2090: 
	call	managed_secure_free
 jmp .UNIQUE2091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2091: 
	movl	$.LC36, %edi
 jmp .UNIQUE2092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2092: 
	call	puts
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
	call	print_lists
 jmp .UNIQUE2095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2095: 
	movl	$172, %edx
 jmp .UNIQUE2096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2096: 
	movl	$__func__.4189, %esi
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
	movq	%rax, -32(%rbp)
 jmp .UNIQUE2100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2100: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2101: 
	movl	$97, %esi
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
	movq	-32(%rbp), %rax
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
	movl	$.LC33, %edi
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
	movl	$.LC37, %edi
 jmp .UNIQUE2114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2114: 
	call	puts
 jmp .UNIQUE2115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2115: 
	movl	$0, %eax
 jmp .UNIQUE2116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2116: 
	call	print_lists
 jmp .UNIQUE2117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2117: 
	movl	$182, %edx
 jmp .UNIQUE2118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2118: 
	movl	$__func__.4189, %esi
 jmp .UNIQUE2119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2119: 
	movl	$8, %edi
 jmp .UNIQUE2120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2120: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2121: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2122: 
	movabsq	$4665384344877005170, %rax
 jmp .UNIQUE2123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2123: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE2124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2124: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE2125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2125: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE2126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2126: 
	movq	%rdx, %rdi
 jmp .UNIQUE2127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2127: 
	call	set_double
 jmp .UNIQUE2128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2128: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2129: 
	movq	%rax, %rdi
 jmp .UNIQUE2130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2130: 
	call	get_double
 jmp .UNIQUE2131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2131: 
	movsd	%xmm0, -168(%rbp)
 jmp .UNIQUE2132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2132: 
	movq	-168(%rbp), %rax
 jmp .UNIQUE2133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2133: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE2134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2134: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE2135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2135: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE2136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2136: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE2137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2137: 
	movl	$.LC39, %edi
 jmp .UNIQUE2138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2138: 
	movl	$1, %eax
 jmp .UNIQUE2139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2139: 
	call	printf
 jmp .UNIQUE2140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2140: 
	movl	$.LC40, %edi
 jmp .UNIQUE2141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2141: 
	call	puts
 jmp .UNIQUE2142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2142: 
	movl	$0, %eax
 jmp .UNIQUE2143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2143: 
	call	print_lists
 jmp .UNIQUE2144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2144: 
	movl	$.LC41, %edi
 jmp .UNIQUE2145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2145: 
	call	puts
 jmp .UNIQUE2146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2146: 
	movl	$193, %edx
 jmp .UNIQUE2147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2147: 
	movl	$__func__.4189, %esi
 jmp .UNIQUE2148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2148: 
	movl	$80, %edi
 jmp .UNIQUE2149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2149: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2150: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE2151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2151: 
	movabsq	$4631167498573958009, %rax
 jmp .UNIQUE2152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2152: 
	movq	%rax, -152(%rbp)
 jmp .UNIQUE2153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2153: 
	leaq	-152(%rbp), %rdx
 jmp .UNIQUE2154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2154: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2155: 
	movq	%rdx, %rcx
 jmp .UNIQUE2156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2156: 
	movl	$2, %edx
 jmp .UNIQUE2157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2157: 
	movq	%rax, %rsi
 jmp .UNIQUE2158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2158: 
	movl	$8, %edi
 jmp .UNIQUE2159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2159: 
	call	set_array_element
 jmp .UNIQUE2160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2160: 
	movabsq	$4629998950986019070, %rax
 jmp .UNIQUE2161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2161: 
	movq	%rax, -152(%rbp)
 jmp .UNIQUE2162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2162: 
	leaq	-152(%rbp), %rdx
 jmp .UNIQUE2163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2163: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2164: 
	movq	%rdx, %rcx
 jmp .UNIQUE2165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2165: 
	movl	$3, %edx
 jmp .UNIQUE2166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2166: 
	movq	%rax, %rsi
 jmp .UNIQUE2167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2167: 
	movl	$8, %edi
 jmp .UNIQUE2168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2168: 
	call	set_array_element
 jmp .UNIQUE2169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2169: 
	movabsq	$4607182418800017408, %rax
 jmp .UNIQUE2170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2170: 
	movq	%rax, -152(%rbp)
 jmp .UNIQUE2171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2171: 
	leaq	-152(%rbp), %rdx
 jmp .UNIQUE2172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2172: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2173: 
	movq	%rdx, %rcx
 jmp .UNIQUE2174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2174: 
	movl	$2, %edx
 jmp .UNIQUE2175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2175: 
	movq	%rax, %rsi
 jmp .UNIQUE2176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2176: 
	movl	$8, %edi
 jmp .UNIQUE2177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2177: 
	call	get_array_element
 jmp .UNIQUE2178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2178: 
	movq	-152(%rbp), %rax
 jmp .UNIQUE2179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2179: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE2180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2180: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE2181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2181: 
	movl	$.LC45, %edi
 jmp .UNIQUE2182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2182: 
	movl	$1, %eax
 jmp .UNIQUE2183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2183: 
	call	printf
 jmp .UNIQUE2184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2184: 
	leaq	-152(%rbp), %rdx
 jmp .UNIQUE2185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2185: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2186: 
	movq	%rdx, %rcx
 jmp .UNIQUE2187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2187: 
	movl	$3, %edx
 jmp .UNIQUE2188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2188: 
	movq	%rax, %rsi
 jmp .UNIQUE2189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2189: 
	movl	$8, %edi
 jmp .UNIQUE2190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2190: 
	call	get_array_element
 jmp .UNIQUE2191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2191: 
	movq	-152(%rbp), %rax
 jmp .UNIQUE2192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2192: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE2193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2193: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE2194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2194: 
	movl	$.LC46, %edi
 jmp .UNIQUE2195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2195: 
	movl	$1, %eax
 jmp .UNIQUE2196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2196: 
	call	printf
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
	movl	$3, %esi
 jmp .UNIQUE2199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2199: 
	movq	%rax, %rdi
 jmp .UNIQUE2200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2200: 
	call	get_double_array_element
 jmp .UNIQUE2201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2201: 
	movsd	%xmm0, -168(%rbp)
 jmp .UNIQUE2202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2202: 
	movq	-168(%rbp), %rax
 jmp .UNIQUE2203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2203: 
	movq	%rax, -152(%rbp)
 jmp .UNIQUE2204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2204: 
	movq	-152(%rbp), %rax
 jmp .UNIQUE2205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2205: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE2206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2206: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE2207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2207: 
	movl	$.LC46, %edi
 jmp .UNIQUE2208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2208: 
	movl	$1, %eax
 jmp .UNIQUE2209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2209: 
	call	printf
 jmp .UNIQUE2210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2210: 
	movl	$.LC47, %edi
 jmp .UNIQUE2211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2211: 
	call	puts
 jmp .UNIQUE2212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2212: 
	movl	$.LC48, %edi
 jmp .UNIQUE2213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2213: 
	call	puts
 jmp .UNIQUE2214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2214: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE2215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2215: 
	movq	%rax, %rdi
 jmp .UNIQUE2216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2216: 
	call	print_mem
 jmp .UNIQUE2217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2217: 
	movl	$.LC49, %edi
 jmp .UNIQUE2218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2218: 
	call	puts
 jmp .UNIQUE2219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2219: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2220: 
	ret
	.cfi_endproc
.LFE59:
	.size	mem_test, .-mem_test
	.section	.rodata
.LC50:
	.string	"a---------"
.LC51:
	.string	"Returned NULL! -.- 1"
.LC52:
	.string	"b---------"
.LC53:
	.string	"Returned NULL! -.- 2"
.LC54:
	.string	"c---------"
.LC55:
	.string	"Returned NULL! -.- 3"
.LC56:
	.string	"d---------"
.LC57:
	.string	"Something went wrong"
.LC58:
	.string	"e---------"
.LC59:
	.string	"Returned NULL! -.- 4"
.LC60:
	.string	"f---------"
.LC61:
	.string	"Returned NULL! -.- 5"
.LC62:
	.string	"g---------"
	.text
	.globl	list_test
	.type	list_test, @function
list_test:
.LFB60:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2221: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2222: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2223: 
	subq	$80, %rsp
 jmp .UNIQUE2224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2224: 
	movl	$.LC3, %edi
 jmp .UNIQUE2225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2225: 
	call	puts
 jmp .UNIQUE2226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2226: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE2227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2227: 
	movq	%rax, %rdi
 jmp .UNIQUE2228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2228: 
	call	print_list
 jmp .UNIQUE2229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2229: 
	movl	$.LC4, %edi
 jmp .UNIQUE2230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2230: 
	call	puts
 jmp .UNIQUE2231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2231: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE2232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2232: 
	movq	%rax, %rdi
 jmp .UNIQUE2233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2233: 
	call	print_list
 jmp .UNIQUE2234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2234: 
	movq	$10, -32(%rbp)
 jmp .UNIQUE2235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2235: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE2236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2236: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2237: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE2238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2238: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE2239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2239: 
	movl	$.LC50, %edi
 jmp .UNIQUE2240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2240: 
	call	puts
 jmp .UNIQUE2241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2241: 
	movl	$101, %edi
 jmp .UNIQUE2242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2242: 
	call	managed_secure_malloc
 jmp .UNIQUE2243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2243: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE2244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2244: 
	cmpq	$0, -64(%rbp)
 jmp .UNIQUE2245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2245: 
	jne	.L195
 jmp .UNIQUE2246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2246: 
	movl	$.LC51, %edi
 jmp .UNIQUE2247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2247: 
	call	puts
.L195:
 jmp .UNIQUE2248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2248: 
	movl	$0, %eax
 jmp .UNIQUE2249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2249: 
	call	print_lists
 jmp .UNIQUE2250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2250: 
	movl	$.LC52, %edi
 jmp .UNIQUE2251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2251: 
	call	puts
 jmp .UNIQUE2252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2252: 
	movl	$42, %edi
 jmp .UNIQUE2253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2253: 
	call	managed_secure_malloc
 jmp .UNIQUE2254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2254: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE2255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2255: 
	cmpq	$0, -56(%rbp)
 jmp .UNIQUE2256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2256: 
	jne	.L196
 jmp .UNIQUE2257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2257: 
	movl	$.LC53, %edi
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
.L196:
 jmp .UNIQUE2259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2259: 
	movl	$0, %eax
 jmp .UNIQUE2260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2260: 
	call	print_lists
 jmp .UNIQUE2261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2261: 
	movl	$.LC54, %edi
 jmp .UNIQUE2262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2262: 
	call	puts
 jmp .UNIQUE2263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2263: 
	movl	$61, %edi
 jmp .UNIQUE2264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2264: 
	call	managed_secure_malloc
 jmp .UNIQUE2265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2265: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE2266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2266: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE2267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2267: 
	jne	.L197
 jmp .UNIQUE2268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2268: 
	movl	$.LC55, %edi
 jmp .UNIQUE2269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2269: 
	call	puts
.L197:
 jmp .UNIQUE2270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2270: 
	movl	$0, %eax
 jmp .UNIQUE2271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2271: 
	call	print_lists
 jmp .UNIQUE2272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2272: 
	movl	$.LC56, %edi
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
	movq	-56(%rbp), %rax
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
	call	managed_secure_free
 jmp .UNIQUE2277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2277: 
	movl	%eax, -68(%rbp)
 jmp .UNIQUE2278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2278: 
	cmpl	$0, -68(%rbp)
 jmp .UNIQUE2279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2279: 
	jne	.L198
 jmp .UNIQUE2280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2280: 
	movl	$.LC57, %edi
 jmp .UNIQUE2281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2281: 
	call	puts
.L198:
 jmp .UNIQUE2282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2282: 
	movl	$0, %eax
 jmp .UNIQUE2283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2283: 
	call	print_lists
 jmp .UNIQUE2284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2284: 
	movl	$.LC58, %edi
 jmp .UNIQUE2285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2285: 
	call	puts
 jmp .UNIQUE2286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2286: 
	movl	$80, %edi
 jmp .UNIQUE2287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2287: 
	call	managed_secure_malloc
 jmp .UNIQUE2288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2288: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE2289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2289: 
	cmpq	$0, -56(%rbp)
 jmp .UNIQUE2290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2290: 
	jne	.L199
 jmp .UNIQUE2291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2291: 
	movl	$.LC59, %edi
 jmp .UNIQUE2292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2292: 
	call	puts
.L199:
 jmp .UNIQUE2293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2293: 
	movl	$0, %eax
 jmp .UNIQUE2294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2294: 
	call	print_lists
 jmp .UNIQUE2295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2295: 
	movl	$.LC60, %edi
 jmp .UNIQUE2296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2296: 
	call	puts
 jmp .UNIQUE2297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2297: 
	movl	$29, %edi
 jmp .UNIQUE2298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2298: 
	call	managed_secure_malloc
 jmp .UNIQUE2299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2299: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE2300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2300: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE2301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2301: 
	jne	.L200
 jmp .UNIQUE2302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2302: 
	movl	$.LC61, %edi
 jmp .UNIQUE2303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2303: 
	call	puts
.L200:
 jmp .UNIQUE2304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2304: 
	movl	$0, %eax
 jmp .UNIQUE2305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2305: 
	call	print_lists
 jmp .UNIQUE2306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2306: 
	movl	$.LC62, %edi
 jmp .UNIQUE2307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2307: 
	call	puts
 jmp .UNIQUE2308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2308: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2309: 
	movq	%rax, %rdi
 jmp .UNIQUE2310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2310: 
	call	managed_secure_free
 jmp .UNIQUE2311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2311: 
	movl	%eax, -68(%rbp)
 jmp .UNIQUE2312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2312: 
	cmpl	$0, -68(%rbp)
 jmp .UNIQUE2313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2313: 
	jne	.L201
 jmp .UNIQUE2314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2314: 
	movl	$.LC57, %edi
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
.L201:
 jmp .UNIQUE2316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2316: 
	movl	$0, %eax
 jmp .UNIQUE2317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2317: 
	call	print_lists
 jmp .UNIQUE2318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2318: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2319: 
	ret
	.cfi_endproc
.LFE60:
	.size	list_test, .-list_test
	.section	.rodata
.LC63:
	.string	"Need more mem!"
.LC64:
	.string	"setting"
.LC66:
	.string	"adding"
.LC67:
	.string	"printing"
.LC68:
	.string	"%lg "
.LC69:
	.string	"freeing"
	.text
	.globl	simple_array_tests
	.type	simple_array_tests, @function
simple_array_tests:
.LFB61:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2320: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2321: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2322: 
	pushq	%rbx
 jmp .UNIQUE2323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2323: 
	subq	$88, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE2324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2324: 
	movl	$4, %edi
 jmp .UNIQUE2325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2325: 
	call	managed_secure_malloc
 jmp .UNIQUE2326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2326: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE2327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2327: 
	movl	$8, %edi
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
	movq	%rax, -64(%rbp)
 jmp .UNIQUE2330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2330: 
	movl	$8, %edi
 jmp .UNIQUE2331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2331: 
	call	managed_secure_malloc
 jmp .UNIQUE2332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2332: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE2333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2333: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2334: 
	movl	$5, %esi
 jmp .UNIQUE2335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2335: 
	movq	%rax, %rdi
 jmp .UNIQUE2336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2336: 
	call	set_long_int
 jmp .UNIQUE2337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2337: 
	movq	-64(%rbp), %rdx
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
	movq	%rdx, %rsi
 jmp .UNIQUE2340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2340: 
	movq	%rax, %rdi
 jmp .UNIQUE2341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2341: 
	call	set_pointer
 jmp .UNIQUE2342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2342: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE2343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2343: 
	movq	%rax, %rdi
 jmp .UNIQUE2344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2344: 
	call	get_pointer
 jmp .UNIQUE2345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2345: 
	movl	$21, %esi
 jmp .UNIQUE2346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2346: 
	movq	%rax, %rdi
 jmp .UNIQUE2347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2347: 
	call	set_long_int
 jmp .UNIQUE2348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2348: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2349: 
	movq	%rax, %rdi
 jmp .UNIQUE2350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2350: 
	call	get_long_int
 jmp .UNIQUE2351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2351: 
	salq	$2, %rax
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
	call	managed_secure_malloc
 jmp .UNIQUE2354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2354: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE2355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2355: 
	movq	-64(%rbp), %rax
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
	call	get_long_int
 jmp .UNIQUE2358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2358: 
	salq	$2, %rax
 jmp .UNIQUE2359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2359: 
	movq	%rax, %rdi
 jmp .UNIQUE2360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2360: 
	call	managed_secure_malloc
 jmp .UNIQUE2361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2361: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE2362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2362: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2363: 
	movq	%rax, %rdi
 jmp .UNIQUE2364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2364: 
	call	get_long_int
 jmp .UNIQUE2365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2365: 
	salq	$3, %rax
 jmp .UNIQUE2366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2366: 
	movq	%rax, %rdi
 jmp .UNIQUE2367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2367: 
	call	managed_secure_malloc
 jmp .UNIQUE2368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2368: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE2369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2369: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2370: 
	movq	%rax, %rdi
 jmp .UNIQUE2371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2371: 
	call	get_long_int
 jmp .UNIQUE2372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2372: 
	salq	$2, %rax
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
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2376: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE2377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2377: 
	jne	.L203
 jmp .UNIQUE2378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2378: 
	movl	$.LC63, %edi
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
 jmp .UNIQUE2380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2380: 
	movl	$42, %edi
 jmp .UNIQUE2381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2381: 
	call	exit
.L203:
 jmp .UNIQUE2382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2382: 
	movl	$.LC64, %edi
 jmp .UNIQUE2383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2383: 
	call	puts
 jmp .UNIQUE2384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2384: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2385: 
	movl	$0, %esi
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
	call	set_int
 jmp .UNIQUE2388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2388: 
	jmp	.L204
.L205:
 jmp .UNIQUE2389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2389: 
	movq	-72(%rbp), %rax
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
	call	get_int
 jmp .UNIQUE2392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2392: 
	leal	(%rax,%rax), %ebx
 jmp .UNIQUE2393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2393: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2394: 
	movq	%rax, %rdi
 jmp .UNIQUE2395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2395: 
	call	get_int
 jmp .UNIQUE2396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2396: 
	movslq	%eax, %rcx
 jmp .UNIQUE2397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2397: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2398: 
	movl	%ebx, %edx
 jmp .UNIQUE2399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2399: 
	movq	%rcx, %rsi
 jmp .UNIQUE2400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2400: 
	movq	%rax, %rdi
 jmp .UNIQUE2401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2401: 
	call	set_int_array_element
 jmp .UNIQUE2402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2402: 
	movq	-72(%rbp), %rax
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
	call	get_int
 jmp .UNIQUE2405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2405: 
	movl	%eax, %edx
 jmp .UNIQUE2406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2406: 
	movl	%edx, %eax
 jmp .UNIQUE2407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2407: 
	addl	%eax, %eax
 jmp .UNIQUE2408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2408: 
	leal	(%rax,%rdx), %ebx
 jmp .UNIQUE2409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2409: 
	movq	-72(%rbp), %rax
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
	call	get_int
 jmp .UNIQUE2412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2412: 
	movslq	%eax, %rcx
 jmp .UNIQUE2413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2413: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2414: 
	movl	%ebx, %edx
 jmp .UNIQUE2415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2415: 
	movq	%rcx, %rsi
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
	call	set_int_array_element
 jmp .UNIQUE2418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2418: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2419: 
	movq	%rax, %rdi
 jmp .UNIQUE2420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2420: 
	call	get_int
 jmp .UNIQUE2421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2421: 
	cvtsi2sd	%eax, %xmm0
 jmp .UNIQUE2422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2422: 
	movsd	.LC65(%rip), %xmm1
 jmp .UNIQUE2423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2423: 
	mulsd	%xmm1, %xmm0
 jmp .UNIQUE2424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2424: 
	movsd	%xmm0, -88(%rbp)
 jmp .UNIQUE2425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2425: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2426: 
	movq	%rax, %rdi
 jmp .UNIQUE2427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2427: 
	call	get_int
 jmp .UNIQUE2428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2428: 
	movslq	%eax, %rdx
 jmp .UNIQUE2429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2429: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2430: 
	movsd	-88(%rbp), %xmm0
 jmp .UNIQUE2431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2431: 
	movq	%rdx, %rsi
 jmp .UNIQUE2432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2432: 
	movq	%rax, %rdi
 jmp .UNIQUE2433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2433: 
	call	set_double_array_element
 jmp .UNIQUE2434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2434: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2435: 
	movq	%rax, %rdi
 jmp .UNIQUE2436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2436: 
	call	get_int
 jmp .UNIQUE2437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2437: 
	addl	%eax, %eax
 jmp .UNIQUE2438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2438: 
	cvtsi2ss	%eax, %xmm3
 jmp .UNIQUE2439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2439: 
	movss	%xmm3, -88(%rbp)
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
	movslq	%eax, %rdx
 jmp .UNIQUE2444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2444: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2445: 
	movss	-88(%rbp), %xmm0
 jmp .UNIQUE2446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2446: 
	movq	%rdx, %rsi
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
	call	set_float_array_element
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
	leal	1(%rax), %edx
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
	movl	%edx, %esi
 jmp .UNIQUE2455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2455: 
	movq	%rax, %rdi
 jmp .UNIQUE2456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2456: 
	call	set_int
.L204:
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
	movslq	%eax, %rbx
 jmp .UNIQUE2461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2461: 
	movq	-64(%rbp), %rax
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
	call	get_long_int
 jmp .UNIQUE2464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2464: 
	cmpq	%rax, %rbx
 jmp .UNIQUE2465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2465: 
	jl	.L205
 jmp .UNIQUE2466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2466: 
	movl	$.LC66, %edi
 jmp .UNIQUE2467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2467: 
	call	puts
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
	movl	$0, %esi
 jmp .UNIQUE2470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2470: 
	movq	%rax, %rdi
 jmp .UNIQUE2471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2471: 
	call	set_int
 jmp .UNIQUE2472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2472: 
	jmp	.L206
.L207:
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
	movslq	%eax, %rdx
 jmp .UNIQUE2477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2477: 
	movq	-48(%rbp), %rax
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
	call	get_int_array_element
 jmp .UNIQUE2481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2481: 
	movl	%eax, %ebx
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
	movslq	%eax, %rdx
 jmp .UNIQUE2486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2486: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2487: 
	movq	%rdx, %rsi
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
	call	get_int_array_element
 jmp .UNIQUE2490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2490: 
	addl	%eax, %ebx
 jmp .UNIQUE2491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2491: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2492: 
	movq	%rax, %rdi
 jmp .UNIQUE2493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2493: 
	call	get_int
 jmp .UNIQUE2494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2494: 
	movslq	%eax, %rcx
 jmp .UNIQUE2495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2495: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2496: 
	movl	%ebx, %edx
 jmp .UNIQUE2497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2497: 
	movq	%rcx, %rsi
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
	call	set_int_array_element
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
	movslq	%eax, %rdx
 jmp .UNIQUE2504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2504: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2505: 
	movq	%rdx, %rsi
 jmp .UNIQUE2506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2506: 
	movq	%rax, %rdi
 jmp .UNIQUE2507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2507: 
	call	get_double_array_element
 jmp .UNIQUE2508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2508: 
	movsd	%xmm0, -88(%rbp)
 jmp .UNIQUE2509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2509: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2510: 
	movq	%rax, %rdi
 jmp .UNIQUE2511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2511: 
	call	get_int
 jmp .UNIQUE2512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2512: 
	movslq	%eax, %rdx
 jmp .UNIQUE2513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2513: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2514: 
	movq	%rdx, %rsi
 jmp .UNIQUE2515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2515: 
	movq	%rax, %rdi
 jmp .UNIQUE2516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2516: 
	call	get_float_array_element
 jmp .UNIQUE2517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2517: 
	unpcklps	%xmm0, %xmm0
 jmp .UNIQUE2518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2518: 
	cvtps2pd	%xmm0, %xmm0
 jmp .UNIQUE2519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2519: 
	movapd	%xmm0, %xmm2
 jmp .UNIQUE2520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2520: 
	addsd	-88(%rbp), %xmm2
 jmp .UNIQUE2521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2521: 
	movsd	%xmm2, -88(%rbp)
 jmp .UNIQUE2522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2522: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2523: 
	movq	%rax, %rdi
 jmp .UNIQUE2524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2524: 
	call	get_int
 jmp .UNIQUE2525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2525: 
	movslq	%eax, %rdx
 jmp .UNIQUE2526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2526: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2527: 
	movsd	-88(%rbp), %xmm0
 jmp .UNIQUE2528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2528: 
	movq	%rdx, %rsi
 jmp .UNIQUE2529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2529: 
	movq	%rax, %rdi
 jmp .UNIQUE2530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2530: 
	call	set_double_array_element
 jmp .UNIQUE2531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2531: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2532: 
	movq	%rax, %rdi
 jmp .UNIQUE2533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2533: 
	call	get_int
 jmp .UNIQUE2534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2534: 
	leal	1(%rax), %edx
 jmp .UNIQUE2535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2535: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2536: 
	movl	%edx, %esi
 jmp .UNIQUE2537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2537: 
	movq	%rax, %rdi
 jmp .UNIQUE2538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2538: 
	call	set_int
.L206:
 jmp .UNIQUE2539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2539: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2540: 
	movq	%rax, %rdi
 jmp .UNIQUE2541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2541: 
	call	get_int
 jmp .UNIQUE2542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2542: 
	movslq	%eax, %rbx
 jmp .UNIQUE2543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2543: 
	movq	-64(%rbp), %rax
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
	call	get_long_int
 jmp .UNIQUE2546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2546: 
	cmpq	%rax, %rbx
 jmp .UNIQUE2547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2547: 
	jl	.L207
 jmp .UNIQUE2548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2548: 
	movl	$.LC67, %edi
 jmp .UNIQUE2549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2549: 
	call	puts
 jmp .UNIQUE2550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2550: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2551: 
	movl	$0, %esi
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
	call	set_int
 jmp .UNIQUE2554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2554: 
	jmp	.L208
.L209:
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
	movslq	%eax, %rdx
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
	movq	%rdx, %rsi
 jmp .UNIQUE2561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2561: 
	movq	%rax, %rdi
 jmp .UNIQUE2562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2562: 
	call	get_int_array_element
 jmp .UNIQUE2563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2563: 
	movl	%eax, %esi
 jmp .UNIQUE2564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2564: 
	movl	$.LC21, %edi
 jmp .UNIQUE2565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2565: 
	movl	$0, %eax
 jmp .UNIQUE2566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2566: 
	call	printf
 jmp .UNIQUE2567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2567: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2568: 
	movq	%rax, %rdi
 jmp .UNIQUE2569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2569: 
	call	get_int
 jmp .UNIQUE2570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2570: 
	leal	1(%rax), %edx
 jmp .UNIQUE2571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2571: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2572: 
	movl	%edx, %esi
 jmp .UNIQUE2573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2573: 
	movq	%rax, %rdi
 jmp .UNIQUE2574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2574: 
	call	set_int
.L208:
 jmp .UNIQUE2575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2575: 
	movq	-72(%rbp), %rax
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
	call	get_int
 jmp .UNIQUE2578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2578: 
	movslq	%eax, %rbx
 jmp .UNIQUE2579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2579: 
	movq	-64(%rbp), %rax
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
	call	get_long_int
 jmp .UNIQUE2582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2582: 
	cmpq	%rax, %rbx
 jmp .UNIQUE2583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2583: 
	jl	.L209
 jmp .UNIQUE2584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2584: 
	movl	$10, %edi
 jmp .UNIQUE2585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2585: 
	call	putchar
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
	movl	$0, %esi
 jmp .UNIQUE2588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2588: 
	movq	%rax, %rdi
 jmp .UNIQUE2589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2589: 
	call	set_int
 jmp .UNIQUE2590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2590: 
	jmp	.L210
.L211:
 jmp .UNIQUE2591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2591: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2592: 
	movq	%rax, %rdi
 jmp .UNIQUE2593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2593: 
	call	get_int
 jmp .UNIQUE2594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2594: 
	movslq	%eax, %rdx
 jmp .UNIQUE2595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2595: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2596: 
	movq	%rdx, %rsi
 jmp .UNIQUE2597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2597: 
	movq	%rax, %rdi
 jmp .UNIQUE2598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2598: 
	call	get_double_array_element
 jmp .UNIQUE2599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2599: 
	movsd	%xmm0, -88(%rbp)
 jmp .UNIQUE2600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2600: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE2601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2601: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE2602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2602: 
	movsd	-88(%rbp), %xmm0
 jmp .UNIQUE2603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2603: 
	movl	$.LC68, %edi
 jmp .UNIQUE2604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2604: 
	movl	$1, %eax
 jmp .UNIQUE2605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2605: 
	call	printf
 jmp .UNIQUE2606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2606: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2607: 
	movq	%rax, %rdi
 jmp .UNIQUE2608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2608: 
	call	get_int
 jmp .UNIQUE2609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2609: 
	leal	1(%rax), %edx
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
	movl	%edx, %esi
 jmp .UNIQUE2612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2612: 
	movq	%rax, %rdi
 jmp .UNIQUE2613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2613: 
	call	set_int
.L210:
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
	movslq	%eax, %rbx
 jmp .UNIQUE2618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2618: 
	movq	-64(%rbp), %rax
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
	call	get_long_int
 jmp .UNIQUE2621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2621: 
	cmpq	%rax, %rbx
 jmp .UNIQUE2622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2622: 
	jl	.L211
 jmp .UNIQUE2623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2623: 
	movl	$10, %edi
 jmp .UNIQUE2624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2624: 
	call	putchar
 jmp .UNIQUE2625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2625: 
	movl	$.LC69, %edi
 jmp .UNIQUE2626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2626: 
	call	puts
 jmp .UNIQUE2627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2627: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2628: 
	movq	%rax, %rdi
 jmp .UNIQUE2629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2629: 
	call	managed_secure_free
 jmp .UNIQUE2630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2630: 
	movq	-64(%rbp), %rax
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
	call	managed_secure_free
 jmp .UNIQUE2633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2633: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2634: 
	movq	%rax, %rdi
 jmp .UNIQUE2635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2635: 
	call	managed_secure_free
 jmp .UNIQUE2636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2636: 
	movq	-40(%rbp), %rax
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
	call	managed_secure_free
 jmp .UNIQUE2639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2639: 
	movq	-32(%rbp), %rax
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
	call	managed_secure_free
 jmp .UNIQUE2642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2642: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2643: 
	movq	%rax, %rdi
 jmp .UNIQUE2644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2644: 
	call	managed_secure_free
 jmp .UNIQUE2645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2645: 
	addq	$88, %rsp
 jmp .UNIQUE2646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2646: 
	popq	%rbx
 jmp .UNIQUE2647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2647: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2648: 
	ret
	.cfi_endproc
.LFE61:
	.size	simple_array_tests, .-simple_array_tests
	.comm	total_stack_bytes_allocated,8,8
	.comm	entire_stack_memory_chunk,8,8
	.comm	last_unused_stack_memory,8,8
	.comm	stack_keyshare_input_file,8,8
	.globl	find_number_of_useful_stack_chunks
	.type	find_number_of_useful_stack_chunks, @function
find_number_of_useful_stack_chunks:
.LFB62:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2649: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2650: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2651: 
	movq	%rdi, -40(%rbp)
 jmp .UNIQUE2652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2652: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2653: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2654: 
	movq	$5, -16(%rbp)
 jmp .UNIQUE2655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2655: 
	movq	$3, -8(%rbp)
 jmp .UNIQUE2656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2656: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE2657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2657: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE2658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2658: 
	addq	%rdx, %rax
 jmp .UNIQUE2659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2659: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE2660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2660: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE2661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2661: 
	leaq	(%rdx,%rcx), %rsi
 jmp .UNIQUE2662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2662: 
	cqto
 jmp .UNIQUE2663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2663: 
	idivq	%rsi
 jmp .UNIQUE2664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2664: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2665: 
	ret
	.cfi_endproc
.LFE62:
	.size	find_number_of_useful_stack_chunks, .-find_number_of_useful_stack_chunks
	.globl	get_ptr_size
	.type	get_ptr_size, @function
get_ptr_size:
.LFB63:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2666: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2667: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2668: 
	movl	$8, %eax
 jmp .UNIQUE2669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2669: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2670: 
	ret
	.cfi_endproc
.LFE63:
	.size	get_ptr_size, .-get_ptr_size
	.section	.rodata
	.align 8
.LC70:
	.string	"Stack: Great!. No need to allocate more than the defined amount."
	.align 8
.LC71:
	.string	"Stack: Whoops. We need to allocate a bit more space."
	.text
	.globl	allocate_stack_mem
	.type	allocate_stack_mem, @function
allocate_stack_mem:
.LFB64:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2671: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2672: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2673: 
	pushq	%rbx
 jmp .UNIQUE2674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2674: 
	subq	$56, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE2675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2675: 
	movq	$1024, -56(%rbp)
 jmp .UNIQUE2676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2676: 
	movq	$5, -48(%rbp)
 jmp .UNIQUE2677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2677: 
	movq	$3, -40(%rbp)
 jmp .UNIQUE2678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2678: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2679: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE2680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2680: 
	addq	%rdx, %rax
 jmp .UNIQUE2681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2681: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE2682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2682: 
	movq	-48(%rbp), %rcx
 jmp .UNIQUE2683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2683: 
	leaq	(%rdx,%rcx), %rbx
 jmp .UNIQUE2684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2684: 
	cqto
 jmp .UNIQUE2685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2685: 
	idivq	%rbx
 jmp .UNIQUE2686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2686: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE2687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2687: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2688: 
	imulq	-40(%rbp), %rax
 jmp .UNIQUE2689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2689: 
	movq	%rax, %rdx
 jmp .UNIQUE2690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2690: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2691: 
	subq	$1, %rax
 jmp .UNIQUE2692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2692: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE2693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2693: 
	addq	%rdx, %rax
 jmp .UNIQUE2694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2694: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE2695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2695: 
	jne	.L217
 jmp .UNIQUE2696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2696: 
	movl	$.LC70, %edi
 jmp .UNIQUE2697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2697: 
	call	puts
 jmp .UNIQUE2698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2698: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE2699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2699: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE2700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2700: 
	jmp	.L218
.L217:
 jmp .UNIQUE2701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2701: 
	movl	$.LC71, %edi
 jmp .UNIQUE2702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2702: 
	call	puts
 jmp .UNIQUE2703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2703: 
	addq	$1, -32(%rbp)
 jmp .UNIQUE2704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2704: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2705: 
	imulq	-40(%rbp), %rax
 jmp .UNIQUE2706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2706: 
	movq	%rax, %rdx
 jmp .UNIQUE2707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2707: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2708: 
	subq	$1, %rax
 jmp .UNIQUE2709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2709: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE2710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2710: 
	addq	%rdx, %rax
 jmp .UNIQUE2711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2711: 
	movq	%rax, -64(%rbp)
.L218:
 jmp .UNIQUE2712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2712: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2713: 
	movl	$144, %edx
 jmp .UNIQUE2714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2714: 
	movl	$__func__.4295, %esi
 jmp .UNIQUE2715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2715: 
	movq	%rax, %rdi
 jmp .UNIQUE2716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2716: 
	call	error_checking_malloc
 jmp .UNIQUE2717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2717: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2718: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2719: 
	movq	%rax, total_stack_bytes_allocated(%rip)
 jmp .UNIQUE2720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2720: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2721: 
	addq	$56, %rsp
 jmp .UNIQUE2722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2722: 
	popq	%rbx
 jmp .UNIQUE2723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2723: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2724: 
	ret
	.cfi_endproc
.LFE64:
	.size	allocate_stack_mem, .-allocate_stack_mem
	.globl	free_secure_stack_mem
	.type	free_secure_stack_mem, @function
free_secure_stack_mem:
.LFB65:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2725: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2726: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2727: 
	subq	$16, %rsp
 jmp .UNIQUE2728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2728: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE2729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2729: 
	movq	-8(%rbp), %rax
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
	call	free
 jmp .UNIQUE2732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2732: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2733: 
	ret
	.cfi_endproc
.LFE65:
	.size	free_secure_stack_mem, .-free_secure_stack_mem
	.section	.rodata
	.align 8
.LC72:
	.string	"Stack:Attempted to read more keyshares that the ones stored\n"
	.text
	.globl	get_next_stack_keyshare
	.type	get_next_stack_keyshare, @function
get_next_stack_keyshare:
.LFB66:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2734: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2735: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2736: 
	subq	$16, %rsp
 jmp .UNIQUE2737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2737: 
	movq	stack_keyshare_input_file(%rip), %rax
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
	call	feof
 jmp .UNIQUE2740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2740: 
	testl	%eax, %eax
 jmp .UNIQUE2741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2741: 
	je	.L222
 jmp .UNIQUE2742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2742: 
	movl	$.LC72, %edi
 jmp .UNIQUE2743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2743: 
	call	perror
 jmp .UNIQUE2744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2744: 
	movl	$45, %edi
 jmp .UNIQUE2745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2745: 
	call	exit
.L222:
 jmp .UNIQUE2746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2746: 
	movq	stack_keyshare_input_file(%rip), %rdx
 jmp .UNIQUE2747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2747: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE2748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2748: 
	movq	%rdx, %rcx
 jmp .UNIQUE2749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2749: 
	movl	$1, %edx
 jmp .UNIQUE2750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2750: 
	movl	$1, %esi
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
	call	fread
 jmp .UNIQUE2753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2753: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE2754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2754: 
	leave
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
.LFE66:
	.size	get_next_stack_keyshare, .-get_next_stack_keyshare
	.globl	insert_keys_into_stack_mem
	.type	insert_keys_into_stack_mem, @function
insert_keys_into_stack_mem:
.LFB67:
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
	pushq	%rbx
 jmp .UNIQUE2759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2759: 
	subq	$72, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE2760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2760: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE2761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2761: 
	movl	$0, -52(%rbp)
 jmp .UNIQUE2762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2762: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2763: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2764: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE2765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2765: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE2766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2766: 
	jmp	.L225
.L230:
 jmp .UNIQUE2767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2767: 
	cmpl	$0, -52(%rbp)
 jmp .UNIQUE2768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2768: 
	je	.L226
 jmp .UNIQUE2769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2769: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE2770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2770: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2771: 
	leaq	(%rdx,%rax), %rbx
 jmp .UNIQUE2772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2772: 
	movl	$0, %eax
 jmp .UNIQUE2773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2773: 
	call	get_next_stack_keyshare
 jmp .UNIQUE2774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2774: 
	movb	%al, (%rbx)
 jmp .UNIQUE2775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2775: 
	addq	$1, -32(%rbp)
 jmp .UNIQUE2776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2776: 
	addq	$1, -48(%rbp)
 jmp .UNIQUE2777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2777: 
	jmp	.L227
.L226:
 jmp .UNIQUE2778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2778: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE2779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2779: 
	jmp	.L228
.L229:
 jmp .UNIQUE2780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2780: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2781: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE2782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2782: 
	addq	%rdx, %rax
 jmp .UNIQUE2783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2783: 
	movq	%rax, %rdx
 jmp .UNIQUE2784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2784: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2785: 
	addq	%rdx, %rax
 jmp .UNIQUE2786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2786: 
	movb	$0, (%rax)
 jmp .UNIQUE2787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2787: 
	addq	$1, -40(%rbp)
.L228:
 jmp .UNIQUE2788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2788: 
	cmpq	$2, -40(%rbp)
 jmp .UNIQUE2789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2789: 
	jle	.L229
 jmp .UNIQUE2790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2790: 
	addq	$3, -48(%rbp)
 jmp .UNIQUE2791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2791: 
	movl	$1, -52(%rbp)
.L227:
 jmp .UNIQUE2792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2792: 
	cmpq	$5, -32(%rbp)
 jmp .UNIQUE2793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2793: 
	jne	.L225
 jmp .UNIQUE2794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2794: 
	movl	$0, -52(%rbp)
 jmp .UNIQUE2795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2795: 
	movq	$0, -32(%rbp)
.L225:
 jmp .UNIQUE2796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2796: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE2797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2797: 
	cmpq	%rax, -48(%rbp)
 jmp .UNIQUE2798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2798: 
	jl	.L230
 jmp .UNIQUE2799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2799: 
	addq	$72, %rsp
 jmp .UNIQUE2800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2800: 
	popq	%rbx
 jmp .UNIQUE2801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2801: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2802: 
	ret
	.cfi_endproc
.LFE67:
	.size	insert_keys_into_stack_mem, .-insert_keys_into_stack_mem
	.section	.rodata
.LC73:
	.string	"stack_keyshares"
	.align 8
.LC74:
	.string	"init_mem:stack_keyshares file error\n"
	.text
	.globl	init_stack_mem
	.type	init_stack_mem, @function
init_stack_mem:
.LFB68:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2803: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2804: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2805: 
	subq	$16, %rsp
 jmp .UNIQUE2806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2806: 
	movl	$0, %edi
 jmp .UNIQUE2807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2807: 
	call	time
 jmp .UNIQUE2808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2808: 
	movl	%eax, %edi
 jmp .UNIQUE2809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2809: 
	call	srand
 jmp .UNIQUE2810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2810: 
	movl	$0, %eax
 jmp .UNIQUE2811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2811: 
	call	allocate_stack_mem
 jmp .UNIQUE2812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2812: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE2813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2813: 
	movl	$.LC10, %esi
 jmp .UNIQUE2814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2814: 
	movl	$.LC73, %edi
 jmp .UNIQUE2815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2815: 
	call	fopen
 jmp .UNIQUE2816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2816: 
	movq	%rax, stack_keyshare_input_file(%rip)
 jmp .UNIQUE2817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2817: 
	movq	stack_keyshare_input_file(%rip), %rax
 jmp .UNIQUE2818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2818: 
	testq	%rax, %rax
 jmp .UNIQUE2819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2819: 
	jne	.L232
 jmp .UNIQUE2820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2820: 
	movl	$.LC74, %edi
 jmp .UNIQUE2821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2821: 
	call	perror
 jmp .UNIQUE2822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2822: 
	movl	$46, %edi
 jmp .UNIQUE2823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2823: 
	call	exit
.L232:
 jmp .UNIQUE2824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2824: 
	movq	-8(%rbp), %rax
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
	call	insert_keys_into_stack_mem
 jmp .UNIQUE2827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2827: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2828: 
	movq	%rax, entire_stack_memory_chunk(%rip)
 jmp .UNIQUE2829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2829: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2830: 
	movq	%rax, last_unused_stack_memory(%rip)
 jmp .UNIQUE2831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2831: 
	movq	stack_keyshare_input_file(%rip), %rax
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
	call	fclose
 jmp .UNIQUE2834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2834: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2835: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2836: 
	ret
	.cfi_endproc
.LFE68:
	.size	init_stack_mem, .-init_stack_mem
	.section	.rodata
.LC75:
	.string	"Printing stack memory:"
	.text
	.globl	print_stack_mem
	.type	print_stack_mem, @function
print_stack_mem:
.LFB69:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2837: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2838: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2839: 
	subq	$32, %rsp
 jmp .UNIQUE2840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2840: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE2841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2841: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2842: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE2843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2843: 
	movl	$.LC75, %edi
 jmp .UNIQUE2844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2844: 
	call	puts
 jmp .UNIQUE2845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2845: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE2846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2846: 
	jmp	.L235
.L236:
 jmp .UNIQUE2847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2847: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE2848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2848: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2849: 
	addq	%rdx, %rax
 jmp .UNIQUE2850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2850: 
	movzbl	(%rax), %eax
 jmp .UNIQUE2851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2851: 
	movzbl	%al, %eax
 jmp .UNIQUE2852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2852: 
	movl	%eax, %esi
 jmp .UNIQUE2853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2853: 
	movl	$.LC9, %edi
 jmp .UNIQUE2854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2854: 
	movl	$0, %eax
 jmp .UNIQUE2855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2855: 
	call	printf
 jmp .UNIQUE2856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2856: 
	addq	$1, -16(%rbp)
.L235:
 jmp .UNIQUE2857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2857: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE2858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2858: 
	cmpq	%rax, -16(%rbp)
 jmp .UNIQUE2859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2859: 
	jl	.L236
 jmp .UNIQUE2860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2860: 
	movl	$10, %edi
 jmp .UNIQUE2861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2861: 
	call	putchar
 jmp .UNIQUE2862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2862: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2863: 
	ret
	.cfi_endproc
.LFE69:
	.size	print_stack_mem, .-print_stack_mem
	.globl	insert_data_into_stack_mem
	.type	insert_data_into_stack_mem, @function
insert_data_into_stack_mem:
.LFB70:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2864: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2865: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2866: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE2867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2867: 
	movq	%rsi, -64(%rbp)
 jmp .UNIQUE2868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2868: 
	movq	%rdx, -72(%rbp)
 jmp .UNIQUE2869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2869: 
	movq	$0, -24(%rbp)
 jmp .UNIQUE2870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2870: 
	movl	$0, -44(%rbp)
 jmp .UNIQUE2871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2871: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE2872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2872: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2873: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE2874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2874: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE2875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2875: 
	jmp	.L238
.L243:
 jmp .UNIQUE2876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2876: 
	cmpl	$0, -44(%rbp)
 jmp .UNIQUE2877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2877: 
	je	.L239
 jmp .UNIQUE2878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2878: 
	addq	$5, -40(%rbp)
 jmp .UNIQUE2879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2879: 
	movl	$0, -44(%rbp)
 jmp .UNIQUE2880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2880: 
	jmp	.L238
.L239:
 jmp .UNIQUE2881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2881: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE2882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2882: 
	jmp	.L240
.L242:
 jmp .UNIQUE2883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2883: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2884: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE2885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2885: 
	addq	%rdx, %rax
 jmp .UNIQUE2886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2886: 
	movq	%rax, %rdx
 jmp .UNIQUE2887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2887: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2888: 
	addq	%rax, %rdx
 jmp .UNIQUE2889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2889: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2890: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE2891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2891: 
	addq	%rcx, %rax
 jmp .UNIQUE2892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2892: 
	movq	%rax, %rcx
 jmp .UNIQUE2893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2893: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2894: 
	addq	%rcx, %rax
 jmp .UNIQUE2895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2895: 
	movzbl	(%rax), %eax
 jmp .UNIQUE2896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2896: 
	movb	%al, (%rdx)
 jmp .UNIQUE2897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2897: 
	addq	$1, -32(%rbp)
.L240:
 jmp .UNIQUE2898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2898: 
	cmpq	$2, -32(%rbp)
 jmp .UNIQUE2899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2899: 
	jg	.L241
 jmp .UNIQUE2900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2900: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2901: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE2902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2902: 
	addq	%rdx, %rax
 jmp .UNIQUE2903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2903: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE2904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2904: 
	jl	.L242
.L241:
 jmp .UNIQUE2905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2905: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2906: 
	addq	%rax, -16(%rbp)
 jmp .UNIQUE2907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2907: 
	addq	$1, -24(%rbp)
 jmp .UNIQUE2908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2908: 
	addq	$3, -40(%rbp)
 jmp .UNIQUE2909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2909: 
	movl	$1, -44(%rbp)
.L238:
 jmp .UNIQUE2910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2910: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE2911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2911: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE2912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2912: 
	jl	.L243
 jmp .UNIQUE2913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2913: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2914: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2915: 
	ret
	.cfi_endproc
.LFE70:
	.size	insert_data_into_stack_mem, .-insert_data_into_stack_mem
	.globl	get_secure_stack_data
	.type	get_secure_stack_data, @function
get_secure_stack_data:
.LFB71:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2916: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2917: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2918: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE2919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2919: 
	movq	%rsi, -80(%rbp)
 jmp .UNIQUE2920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2920: 
	movq	%rdx, -88(%rbp)
 jmp .UNIQUE2921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2921: 
	movl	%ecx, -92(%rbp)
 jmp .UNIQUE2922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2922: 
	movq	%r8, -104(%rbp)
 jmp .UNIQUE2923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2923: 
	movq	$0, -24(%rbp)
 jmp .UNIQUE2924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2924: 
	movl	$0, -60(%rbp)
 jmp .UNIQUE2925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2925: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2926: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE2927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2927: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE2928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2928: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE2929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2929: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE2930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2930: 
	cmpl	$0, -92(%rbp)
 jmp .UNIQUE2931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2931: 
	je	.L246
 jmp .UNIQUE2932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2932: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE2933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2933: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE2934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2934: 
	movq	%rax, %rcx
 jmp .UNIQUE2935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2935: 
	movabsq	$6148914691236517206, %rdx
 jmp .UNIQUE2936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2936: 
	movq	%rcx, %rax
 jmp .UNIQUE2937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2937: 
	imulq	%rdx
 jmp .UNIQUE2938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2938: 
	movq	%rcx, %rax
 jmp .UNIQUE2939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2939: 
	sarq	$63, %rax
 jmp .UNIQUE2940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2940: 
	subq	%rax, %rdx
 jmp .UNIQUE2941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2941: 
	movq	%rdx, %rax
 jmp .UNIQUE2942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2942: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE2943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2943: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE2944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2944: 
	movq	%rdx, %rax
 jmp .UNIQUE2945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2945: 
	addq	%rax, %rax
 jmp .UNIQUE2946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2946: 
	addq	%rax, %rdx
 jmp .UNIQUE2947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2947: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE2948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2948: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE2949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2949: 
	cmpq	%rax, %rdx
 jmp .UNIQUE2950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2950: 
	jne	.L247
 jmp .UNIQUE2951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2951: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2952: 
	salq	$3, %rax
 jmp .UNIQUE2953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2953: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE2954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2954: 
	jmp	.L246
.L247:
 jmp .UNIQUE2955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2955: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2956: 
	salq	$3, %rax
 jmp .UNIQUE2957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2957: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE2958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2958: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE2959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2959: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE2960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2960: 
	movq	%rax, %rcx
 jmp .UNIQUE2961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2961: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE2962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2962: 
	movl	$0, %eax
 jmp .UNIQUE2963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2963: 
	subq	%rdx, %rax
 jmp .UNIQUE2964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2964: 
	salq	$2, %rax
 jmp .UNIQUE2965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2965: 
	addq	%rdx, %rax
 jmp .UNIQUE2966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2966: 
	addq	%rcx, %rax
 jmp .UNIQUE2967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2967: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE2968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2968: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE2969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2969: 
	jmp	.L248
.L250:
 jmp .UNIQUE2970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2970: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2971: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE2972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2972: 
	addq	%rdx, %rax
 jmp .UNIQUE2973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2973: 
	movq	%rax, %rdx
 jmp .UNIQUE2974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2974: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE2975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2975: 
	addq	%rax, %rdx
 jmp .UNIQUE2976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2976: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2977: 
	movq	-48(%rbp), %rcx
 jmp .UNIQUE2978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2978: 
	addq	%rcx, %rax
 jmp .UNIQUE2979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2979: 
	movq	%rax, %rcx
 jmp .UNIQUE2980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2980: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2981: 
	addq	%rcx, %rax
 jmp .UNIQUE2982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2982: 
	movzbl	(%rax), %eax
 jmp .UNIQUE2983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2983: 
	movb	%al, (%rdx)
 jmp .UNIQUE2984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2984: 
	addq	$1, -40(%rbp)
.L248:
 jmp .UNIQUE2985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2985: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2986: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE2987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2987: 
	addq	%rdx, %rax
 jmp .UNIQUE2988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2988: 
	cmpq	$2, %rax
 jmp .UNIQUE2989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2989: 
	jg	.L249
 jmp .UNIQUE2990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2990: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2991: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE2992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2992: 
	addq	%rdx, %rax
 jmp .UNIQUE2993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2993: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE2994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2994: 
	jl	.L250
.L249:
 jmp .UNIQUE2995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2995: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2996: 
	addq	%rax, -24(%rbp)
 jmp .UNIQUE2997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2997: 
	addq	$8, -32(%rbp)
 jmp .UNIQUE2998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2998: 
	jmp	.L251
.L246:
 jmp .UNIQUE2999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2999: 
	jmp	.L251
.L256:
 jmp .UNIQUE3000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3000: 
	cmpl	$0, -60(%rbp)
 jmp .UNIQUE3001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3001: 
	je	.L252
 jmp .UNIQUE3002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3002: 
	addq	$5, -56(%rbp)
 jmp .UNIQUE3003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3003: 
	movl	$0, -60(%rbp)
 jmp .UNIQUE3004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3004: 
	jmp	.L251
.L252:
 jmp .UNIQUE3005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3005: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE3006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3006: 
	jmp	.L253
.L255:
 jmp .UNIQUE3007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3007: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3008: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE3009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3009: 
	addq	%rdx, %rax
 jmp .UNIQUE3010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3010: 
	movq	%rax, %rdx
 jmp .UNIQUE3011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3011: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3012: 
	addq	%rax, %rdx
 jmp .UNIQUE3013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3013: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3014: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE3015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3015: 
	addq	%rcx, %rax
 jmp .UNIQUE3016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3016: 
	movq	%rax, %rcx
 jmp .UNIQUE3017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3017: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3018: 
	addq	%rcx, %rax
 jmp .UNIQUE3019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3019: 
	movzbl	(%rax), %eax
 jmp .UNIQUE3020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3020: 
	movb	%al, (%rdx)
 jmp .UNIQUE3021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3021: 
	addq	$1, -48(%rbp)
.L253:
 jmp .UNIQUE3022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3022: 
	cmpq	$2, -48(%rbp)
 jmp .UNIQUE3023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3023: 
	jg	.L254
 jmp .UNIQUE3024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3024: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3025: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE3026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3026: 
	addq	%rdx, %rax
 jmp .UNIQUE3027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3027: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE3028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3028: 
	jl	.L255
.L254:
 jmp .UNIQUE3029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3029: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3030: 
	addq	%rax, -24(%rbp)
 jmp .UNIQUE3031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3031: 
	addq	$3, -56(%rbp)
 jmp .UNIQUE3032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3032: 
	movl	$1, -60(%rbp)
.L251:
 jmp .UNIQUE3033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3033: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3034: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE3035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3035: 
	jl	.L256
 jmp .UNIQUE3036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3036: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3037: 
	ret
	.cfi_endproc
.LFE71:
	.size	get_secure_stack_data, .-get_secure_stack_data
	.globl	set_secure_stack_data
	.type	set_secure_stack_data, @function
set_secure_stack_data:
.LFB72:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3038: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3039: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3040: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE3041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3041: 
	movq	%rsi, -80(%rbp)
 jmp .UNIQUE3042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3042: 
	movq	%rdx, -88(%rbp)
 jmp .UNIQUE3043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3043: 
	movl	%ecx, -92(%rbp)
 jmp .UNIQUE3044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3044: 
	movq	%r8, -104(%rbp)
 jmp .UNIQUE3045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3045: 
	movq	$0, -24(%rbp)
 jmp .UNIQUE3046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3046: 
	movl	$0, -60(%rbp)
 jmp .UNIQUE3047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3047: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE3048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3048: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE3049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3049: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE3050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3050: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE3051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3051: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE3052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3052: 
	cmpl	$0, -92(%rbp)
 jmp .UNIQUE3053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3053: 
	je	.L258
 jmp .UNIQUE3054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3054: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE3055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3055: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE3056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3056: 
	movq	%rax, %rcx
 jmp .UNIQUE3057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3057: 
	movabsq	$6148914691236517206, %rdx
 jmp .UNIQUE3058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3058: 
	movq	%rcx, %rax
 jmp .UNIQUE3059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3059: 
	imulq	%rdx
 jmp .UNIQUE3060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3060: 
	movq	%rcx, %rax
 jmp .UNIQUE3061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3061: 
	sarq	$63, %rax
 jmp .UNIQUE3062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3062: 
	subq	%rax, %rdx
 jmp .UNIQUE3063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3063: 
	movq	%rdx, %rax
 jmp .UNIQUE3064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3064: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3065: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3066: 
	movq	%rdx, %rax
 jmp .UNIQUE3067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3067: 
	addq	%rax, %rax
 jmp .UNIQUE3068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3068: 
	addq	%rax, %rdx
 jmp .UNIQUE3069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3069: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE3070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3070: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE3071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3071: 
	cmpq	%rax, %rdx
 jmp .UNIQUE3072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3072: 
	jne	.L259
 jmp .UNIQUE3073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3073: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3074: 
	salq	$3, %rax
 jmp .UNIQUE3075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3075: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE3076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3076: 
	jmp	.L258
.L259:
 jmp .UNIQUE3077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3077: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3078: 
	salq	$3, %rax
 jmp .UNIQUE3079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3079: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE3080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3080: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE3081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3081: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE3082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3082: 
	movq	%rax, %rcx
 jmp .UNIQUE3083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3083: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3084: 
	movl	$0, %eax
 jmp .UNIQUE3085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3085: 
	subq	%rdx, %rax
 jmp .UNIQUE3086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3086: 
	salq	$2, %rax
 jmp .UNIQUE3087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3087: 
	addq	%rdx, %rax
 jmp .UNIQUE3088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3088: 
	addq	%rcx, %rax
 jmp .UNIQUE3089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3089: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE3090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3090: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE3091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3091: 
	jmp	.L260
.L262:
 jmp .UNIQUE3092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3092: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3093: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE3094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3094: 
	addq	%rdx, %rax
 jmp .UNIQUE3095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3095: 
	movq	%rax, %rdx
 jmp .UNIQUE3096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3096: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3097: 
	addq	%rax, %rdx
 jmp .UNIQUE3098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3098: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3099: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE3100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3100: 
	addq	%rcx, %rax
 jmp .UNIQUE3101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3101: 
	movq	%rax, %rcx
 jmp .UNIQUE3102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3102: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3103: 
	addq	%rcx, %rax
 jmp .UNIQUE3104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3104: 
	movzbl	(%rax), %eax
 jmp .UNIQUE3105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3105: 
	movb	%al, (%rdx)
 jmp .UNIQUE3106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3106: 
	addq	$1, -40(%rbp)
.L260:
 jmp .UNIQUE3107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3107: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3108: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE3109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3109: 
	addq	%rdx, %rax
 jmp .UNIQUE3110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3110: 
	cmpq	$2, %rax
 jmp .UNIQUE3111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3111: 
	jg	.L261
 jmp .UNIQUE3112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3112: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3113: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE3114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3114: 
	addq	%rdx, %rax
 jmp .UNIQUE3115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3115: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE3116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3116: 
	jl	.L262
.L261:
 jmp .UNIQUE3117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3117: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3118: 
	addq	%rax, -24(%rbp)
 jmp .UNIQUE3119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3119: 
	addq	$8, -32(%rbp)
 jmp .UNIQUE3120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3120: 
	jmp	.L263
.L258:
 jmp .UNIQUE3121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3121: 
	jmp	.L263
.L268:
 jmp .UNIQUE3122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3122: 
	cmpl	$0, -60(%rbp)
 jmp .UNIQUE3123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3123: 
	je	.L264
 jmp .UNIQUE3124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3124: 
	addq	$5, -56(%rbp)
 jmp .UNIQUE3125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3125: 
	movl	$0, -60(%rbp)
 jmp .UNIQUE3126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3126: 
	jmp	.L263
.L264:
 jmp .UNIQUE3127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3127: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE3128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3128: 
	jmp	.L265
.L267:
 jmp .UNIQUE3129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3129: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3130: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE3131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3131: 
	addq	%rdx, %rax
 jmp .UNIQUE3132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3132: 
	movq	%rax, %rdx
 jmp .UNIQUE3133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3133: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3134: 
	addq	%rax, %rdx
 jmp .UNIQUE3135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3135: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3136: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE3137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3137: 
	addq	%rcx, %rax
 jmp .UNIQUE3138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3138: 
	movq	%rax, %rcx
 jmp .UNIQUE3139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3139: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3140: 
	addq	%rcx, %rax
 jmp .UNIQUE3141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3141: 
	movzbl	(%rax), %eax
 jmp .UNIQUE3142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3142: 
	movb	%al, (%rdx)
 jmp .UNIQUE3143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3143: 
	addq	$1, -48(%rbp)
.L265:
 jmp .UNIQUE3144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3144: 
	cmpq	$2, -48(%rbp)
 jmp .UNIQUE3145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3145: 
	jg	.L266
 jmp .UNIQUE3146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3146: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3147: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE3148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3148: 
	addq	%rdx, %rax
 jmp .UNIQUE3149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3149: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE3150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3150: 
	jl	.L267
.L266:
 jmp .UNIQUE3151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3151: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3152: 
	addq	%rax, -24(%rbp)
 jmp .UNIQUE3153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3153: 
	addq	$3, -56(%rbp)
 jmp .UNIQUE3154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3154: 
	movl	$1, -60(%rbp)
.L263:
 jmp .UNIQUE3155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3155: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3156: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE3157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3157: 
	jl	.L268
 jmp .UNIQUE3158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3158: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3159: 
	ret
	.cfi_endproc
.LFE72:
	.size	set_secure_stack_data, .-set_secure_stack_data
	.globl	allocate_mem_into_secure_stack
	.type	allocate_mem_into_secure_stack, @function
allocate_mem_into_secure_stack:
.LFB73:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3160: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3161: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3162: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE3163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3163: 
	movq	last_unused_stack_memory(%rip), %rax
 jmp .UNIQUE3164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3164: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE3165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3165: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3166: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE3167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3167: 
	movq	$5, -16(%rbp)
 jmp .UNIQUE3168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3168: 
	movq	$3, -8(%rbp)
 jmp .UNIQUE3169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3169: 
	cmpq	$0, -56(%rbp)
 jmp .UNIQUE3170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3170: 
	jne	.L270
 jmp .UNIQUE3171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3171: 
	movl	$0, %eax
 jmp .UNIQUE3172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3172: 
	jmp	.L271
.L270:
 jmp .UNIQUE3173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3173: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3174: 
	cqto
 jmp .UNIQUE3175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3175: 
	idivq	-8(%rbp)
 jmp .UNIQUE3176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3176: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE3177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3177: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3178: 
	imulq	-8(%rbp), %rax
 jmp .UNIQUE3179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3179: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE3180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3180: 
	jge	.L272
 jmp .UNIQUE3181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3181: 
	addq	$1, -40(%rbp)
.L272:
 jmp .UNIQUE3182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3182: 
	movq	last_unused_stack_memory(%rip), %rdx
 jmp .UNIQUE3183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3183: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3184: 
	imulq	-8(%rbp), %rax
 jmp .UNIQUE3185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3185: 
	movq	%rax, %rcx
 jmp .UNIQUE3186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3186: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3187: 
	imulq	-16(%rbp), %rax
 jmp .UNIQUE3188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3188: 
	addq	%rcx, %rax
 jmp .UNIQUE3189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3189: 
	addq	%rdx, %rax
 jmp .UNIQUE3190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3190: 
	movq	%rax, last_unused_stack_memory(%rip)
 jmp .UNIQUE3191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3191: 
	movq	-32(%rbp), %rax
.L271:
 jmp .UNIQUE3192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3192: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3193: 
	ret
	.cfi_endproc
.LFE73:
	.size	allocate_mem_into_secure_stack, .-allocate_mem_into_secure_stack
	.globl	init_function_params
	.type	init_function_params, @function
init_function_params:
.LFB74:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3194: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3195: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3196: 
	pushq	%rbx
 jmp .UNIQUE3197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3197: 
	subq	$264, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE3198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3198: 
	movl	%edi, -260(%rbp)
 jmp .UNIQUE3199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3199: 
	movq	%rdx, -176(%rbp)
 jmp .UNIQUE3200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3200: 
	movq	%rcx, -168(%rbp)
 jmp .UNIQUE3201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3201: 
	movq	%r8, -160(%rbp)
 jmp .UNIQUE3202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3202: 
	movq	%r9, -152(%rbp)
 jmp .UNIQUE3203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3203: 
	testb	%al, %al
 jmp .UNIQUE3204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3204: 
	je	.L274
 jmp .UNIQUE3205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3205: 
	movaps	%xmm0, -144(%rbp)
 jmp .UNIQUE3206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3206: 
	movaps	%xmm1, -128(%rbp)
 jmp .UNIQUE3207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3207: 
	movaps	%xmm2, -112(%rbp)
 jmp .UNIQUE3208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3208: 
	movaps	%xmm3, -96(%rbp)
 jmp .UNIQUE3209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3209: 
	movaps	%xmm4, -80(%rbp)
 jmp .UNIQUE3210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3210: 
	movaps	%xmm5, -64(%rbp)
 jmp .UNIQUE3211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3211: 
	movaps	%xmm6, -48(%rbp)
 jmp .UNIQUE3212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3212: 
	movaps	%xmm7, -32(%rbp)
.L274:
 jmp .UNIQUE3213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3213: 
	movl	%esi, -264(%rbp)
 jmp .UNIQUE3214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3214: 
	movq	$0, -240(%rbp)
 jmp .UNIQUE3215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3215: 
	movl	$16, -216(%rbp)
 jmp .UNIQUE3216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3216: 
	movl	$48, -212(%rbp)
 jmp .UNIQUE3217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3217: 
	leaq	16(%rbp), %rax
 jmp .UNIQUE3218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3218: 
	movq	%rax, -208(%rbp)
 jmp .UNIQUE3219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3219: 
	leaq	-192(%rbp), %rax
 jmp .UNIQUE3220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3220: 
	movq	%rax, -200(%rbp)
 jmp .UNIQUE3221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3221: 
	movl	$514, %edx
 jmp .UNIQUE3222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3222: 
	movl	$__func__.4409, %esi
 jmp .UNIQUE3223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3223: 
	movl	$24, %edi
 jmp .UNIQUE3224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3224: 
	call	error_checking_malloc
 jmp .UNIQUE3225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3225: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE3226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3226: 
	cmpl	$0, -260(%rbp)
 jmp .UNIQUE3227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3227: 
	je	.L275
 jmp .UNIQUE3228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3228: 
	movl	$517, %edx
 jmp .UNIQUE3229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3229: 
	movl	$__func__.4409, %esi
 jmp .UNIQUE3230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3230: 
	movl	$128, %edi
 jmp .UNIQUE3231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3231: 
	call	error_checking_malloc
 jmp .UNIQUE3232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3232: 
	movq	-232(%rbp), %rdx
 jmp .UNIQUE3233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3233: 
	movq	%rax, 8(%rdx)
 jmp .UNIQUE3234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3234: 
	jmp	.L276
.L275:
 jmp .UNIQUE3235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3235: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3236: 
	movq	$0, 8(%rax)
.L276:
 jmp .UNIQUE3237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3237: 
	cmpl	$0, -264(%rbp)
 jmp .UNIQUE3238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3238: 
	je	.L277
 jmp .UNIQUE3239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3239: 
	movl	$522, %edx
 jmp .UNIQUE3240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3240: 
	movl	$__func__.4409, %esi
 jmp .UNIQUE3241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3241: 
	movl	$152, %edi
 jmp .UNIQUE3242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3242: 
	call	error_checking_malloc
 jmp .UNIQUE3243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3243: 
	movq	-232(%rbp), %rdx
 jmp .UNIQUE3244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3244: 
	movq	%rax, 16(%rdx)
 jmp .UNIQUE3245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3245: 
	jmp	.L278
.L277:
 jmp .UNIQUE3246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3246: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3247: 
	movq	$0, 16(%rax)
.L278:
 jmp .UNIQUE3248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3248: 
	cmpl	$0, -260(%rbp)
 jmp .UNIQUE3249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3249: 
	je	.L344
 jmp .UNIQUE3250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3250: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3251: 
	movq	8(%rax), %rcx
 jmp .UNIQUE3252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3252: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3253: 
	cmpl	$48, %eax
 jmp .UNIQUE3254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3254: 
	jnb	.L280
 jmp .UNIQUE3255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3255: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3256: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3257: 
	movl	%eax, %eax
 jmp .UNIQUE3258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3258: 
	addq	%rdx, %rax
 jmp .UNIQUE3259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3259: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3260: 
	addl	$8, %edx
 jmp .UNIQUE3261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3261: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3262: 
	jmp	.L281
.L280:
 jmp .UNIQUE3263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3263: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3264: 
	movq	%rdx, %rax
 jmp .UNIQUE3265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3265: 
	addq	$8, %rdx
 jmp .UNIQUE3266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3266: 
	movq	%rdx, -208(%rbp)
.L281:
 jmp .UNIQUE3267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3267: 
	movq	(%rax), %rax
 jmp .UNIQUE3268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3268: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3269: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3270: 
	movq	%rax, (%rcx)
 jmp .UNIQUE3271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3271: 
	movq	-240(%rbp), %rdx
 jmp .UNIQUE3272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3272: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3273: 
	addq	%rdx, %rax
 jmp .UNIQUE3274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3274: 
	movq	%rax, -240(%rbp)
 jmp .UNIQUE3275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3275: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE3276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3276: 
	je	.L282
 jmp .UNIQUE3277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3277: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3278: 
	movq	8(%rax), %rbx
 jmp .UNIQUE3279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3279: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3280: 
	movl	$533, %edx
 jmp .UNIQUE3281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3281: 
	movl	$__func__.4409, %esi
 jmp .UNIQUE3282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3282: 
	movq	%rax, %rdi
 jmp .UNIQUE3283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3283: 
	call	error_checking_malloc
 jmp .UNIQUE3284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3284: 
	movq	%rax, 8(%rbx)
 jmp .UNIQUE3285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3285: 
	movq	$0, -248(%rbp)
 jmp .UNIQUE3286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3286: 
	jmp	.L283
.L286:
 jmp .UNIQUE3287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3287: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3288: 
	movq	8(%rax), %rax
 jmp .UNIQUE3289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3289: 
	movq	8(%rax), %rdx
 jmp .UNIQUE3290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3290: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE3291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3291: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE3292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3292: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3293: 
	cmpl	$48, %eax
 jmp .UNIQUE3294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3294: 
	jnb	.L284
 jmp .UNIQUE3295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3295: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3296: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3297: 
	movl	%eax, %eax
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
	movl	-216(%rbp), %edx
 jmp .UNIQUE3300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3300: 
	addl	$8, %edx
 jmp .UNIQUE3301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3301: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3302: 
	jmp	.L285
.L284:
 jmp .UNIQUE3303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3303: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3304: 
	movq	%rdx, %rax
 jmp .UNIQUE3305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3305: 
	addq	$8, %rdx
 jmp .UNIQUE3306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3306: 
	movq	%rdx, -208(%rbp)
.L285:
 jmp .UNIQUE3307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3307: 
	movl	(%rax), %eax
 jmp .UNIQUE3308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3308: 
	movb	%al, (%rcx)
 jmp .UNIQUE3309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3309: 
	addq	$1, -248(%rbp)
.L283:
 jmp .UNIQUE3310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3310: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE3311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3311: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3312: 
	jl	.L286
 jmp .UNIQUE3313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3313: 
	jmp	.L287
.L282:
 jmp .UNIQUE3314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3314: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3315: 
	movq	8(%rax), %rax
 jmp .UNIQUE3316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3316: 
	movq	$0, 8(%rax)
.L287:
 jmp .UNIQUE3317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3317: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3318: 
	movq	8(%rax), %rcx
 jmp .UNIQUE3319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3319: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3320: 
	cmpl	$48, %eax
 jmp .UNIQUE3321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3321: 
	jnb	.L288
 jmp .UNIQUE3322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3322: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3323: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3324: 
	movl	%eax, %eax
 jmp .UNIQUE3325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3325: 
	addq	%rdx, %rax
 jmp .UNIQUE3326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3326: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3327: 
	addl	$8, %edx
 jmp .UNIQUE3328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3328: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3329: 
	jmp	.L289
.L288:
 jmp .UNIQUE3330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3330: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3331: 
	movq	%rdx, %rax
 jmp .UNIQUE3332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3332: 
	addq	$8, %rdx
 jmp .UNIQUE3333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3333: 
	movq	%rdx, -208(%rbp)
.L289:
 jmp .UNIQUE3334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3334: 
	movq	(%rax), %rax
 jmp .UNIQUE3335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3335: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3336: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3337: 
	movq	%rax, 16(%rcx)
 jmp .UNIQUE3338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3338: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3339: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE3340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3340: 
	movq	-240(%rbp), %rax
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
	movq	%rax, -240(%rbp)
 jmp .UNIQUE3343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3343: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE3344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3344: 
	je	.L290
 jmp .UNIQUE3345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3345: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3346: 
	movq	8(%rax), %rbx
 jmp .UNIQUE3347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3347: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3348: 
	salq	$2, %rax
 jmp .UNIQUE3349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3349: 
	movl	$549, %edx
 jmp .UNIQUE3350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3350: 
	movl	$__func__.4409, %esi
 jmp .UNIQUE3351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3351: 
	movq	%rax, %rdi
 jmp .UNIQUE3352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3352: 
	call	error_checking_malloc
 jmp .UNIQUE3353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3353: 
	movq	%rax, 24(%rbx)
 jmp .UNIQUE3354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3354: 
	movq	$0, -248(%rbp)
 jmp .UNIQUE3355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3355: 
	jmp	.L291
.L294:
 jmp .UNIQUE3356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3356: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3357: 
	movq	8(%rax), %rax
 jmp .UNIQUE3358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3358: 
	movq	24(%rax), %rax
 jmp .UNIQUE3359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3359: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE3360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3360: 
	salq	$2, %rdx
 jmp .UNIQUE3361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3361: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE3362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3362: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3363: 
	cmpl	$48, %eax
 jmp .UNIQUE3364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3364: 
	jnb	.L292
 jmp .UNIQUE3365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3365: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3366: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3367: 
	movl	%eax, %eax
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
	movl	-216(%rbp), %edx
 jmp .UNIQUE3370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3370: 
	addl	$8, %edx
 jmp .UNIQUE3371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3371: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3372: 
	jmp	.L293
.L292:
 jmp .UNIQUE3373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3373: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3374: 
	movq	%rdx, %rax
 jmp .UNIQUE3375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3375: 
	addq	$8, %rdx
 jmp .UNIQUE3376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3376: 
	movq	%rdx, -208(%rbp)
.L293:
 jmp .UNIQUE3377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3377: 
	movl	(%rax), %eax
 jmp .UNIQUE3378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3378: 
	movl	%eax, (%rcx)
 jmp .UNIQUE3379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3379: 
	addq	$1, -248(%rbp)
.L291:
 jmp .UNIQUE3380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3380: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE3381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3381: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3382: 
	jl	.L294
 jmp .UNIQUE3383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3383: 
	jmp	.L295
.L290:
 jmp .UNIQUE3384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3384: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3385: 
	movq	8(%rax), %rax
 jmp .UNIQUE3386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3386: 
	movq	$0, 24(%rax)
.L295:
 jmp .UNIQUE3387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3387: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3388: 
	movq	8(%rax), %rcx
 jmp .UNIQUE3389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3389: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3390: 
	cmpl	$48, %eax
 jmp .UNIQUE3391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3391: 
	jnb	.L296
 jmp .UNIQUE3392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3392: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3393: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3394: 
	movl	%eax, %eax
 jmp .UNIQUE3395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3395: 
	addq	%rdx, %rax
 jmp .UNIQUE3396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3396: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3397: 
	addl	$8, %edx
 jmp .UNIQUE3398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3398: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3399: 
	jmp	.L297
.L296:
 jmp .UNIQUE3400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3400: 
	movq	-208(%rbp), %rdx
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
	addq	$8, %rdx
 jmp .UNIQUE3403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3403: 
	movq	%rdx, -208(%rbp)
.L297:
 jmp .UNIQUE3404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3404: 
	movq	(%rax), %rax
 jmp .UNIQUE3405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3405: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3406: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3407: 
	movq	%rax, 32(%rcx)
 jmp .UNIQUE3408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3408: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3409: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3410: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE3411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3411: 
	addq	%rdx, %rax
 jmp .UNIQUE3412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3412: 
	movq	%rax, -240(%rbp)
 jmp .UNIQUE3413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3413: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE3414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3414: 
	je	.L298
 jmp .UNIQUE3415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3415: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3416: 
	movq	8(%rax), %rbx
 jmp .UNIQUE3417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3417: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3418: 
	salq	$3, %rax
 jmp .UNIQUE3419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3419: 
	movl	$565, %edx
 jmp .UNIQUE3420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3420: 
	movl	$__func__.4409, %esi
 jmp .UNIQUE3421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3421: 
	movq	%rax, %rdi
 jmp .UNIQUE3422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3422: 
	call	error_checking_malloc
 jmp .UNIQUE3423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3423: 
	movq	%rax, 40(%rbx)
 jmp .UNIQUE3424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3424: 
	movq	$0, -248(%rbp)
 jmp .UNIQUE3425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3425: 
	jmp	.L299
.L302:
 jmp .UNIQUE3426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3426: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3427: 
	movq	8(%rax), %rax
 jmp .UNIQUE3428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3428: 
	movq	40(%rax), %rax
 jmp .UNIQUE3429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3429: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE3430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3430: 
	salq	$3, %rdx
 jmp .UNIQUE3431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3431: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE3432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3432: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3433: 
	cmpl	$48, %eax
 jmp .UNIQUE3434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3434: 
	jnb	.L300
 jmp .UNIQUE3435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3435: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3436: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3437: 
	movl	%eax, %eax
 jmp .UNIQUE3438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3438: 
	addq	%rdx, %rax
 jmp .UNIQUE3439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3439: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3440: 
	addl	$8, %edx
 jmp .UNIQUE3441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3441: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3442: 
	jmp	.L301
.L300:
 jmp .UNIQUE3443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3443: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3444: 
	movq	%rdx, %rax
 jmp .UNIQUE3445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3445: 
	addq	$8, %rdx
 jmp .UNIQUE3446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3446: 
	movq	%rdx, -208(%rbp)
.L301:
 jmp .UNIQUE3447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3447: 
	movq	(%rax), %rax
 jmp .UNIQUE3448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3448: 
	movq	%rax, (%rcx)
 jmp .UNIQUE3449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3449: 
	addq	$1, -248(%rbp)
.L299:
 jmp .UNIQUE3450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3450: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE3451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3451: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3452: 
	jl	.L302
 jmp .UNIQUE3453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3453: 
	jmp	.L303
.L298:
 jmp .UNIQUE3454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3454: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3455: 
	movq	8(%rax), %rax
 jmp .UNIQUE3456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3456: 
	movq	$0, 40(%rax)
.L303:
 jmp .UNIQUE3457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3457: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3458: 
	movq	8(%rax), %rcx
 jmp .UNIQUE3459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3459: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3460: 
	cmpl	$48, %eax
 jmp .UNIQUE3461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3461: 
	jnb	.L304
 jmp .UNIQUE3462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3462: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3463: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3464: 
	movl	%eax, %eax
 jmp .UNIQUE3465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3465: 
	addq	%rdx, %rax
 jmp .UNIQUE3466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3466: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3467: 
	addl	$8, %edx
 jmp .UNIQUE3468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3468: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3469: 
	jmp	.L305
.L304:
 jmp .UNIQUE3470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3470: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3471: 
	movq	%rdx, %rax
 jmp .UNIQUE3472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3472: 
	addq	$8, %rdx
 jmp .UNIQUE3473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3473: 
	movq	%rdx, -208(%rbp)
.L305:
 jmp .UNIQUE3474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3474: 
	movq	(%rax), %rax
 jmp .UNIQUE3475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3475: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3476: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3477: 
	movq	%rax, 48(%rcx)
 jmp .UNIQUE3478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3478: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3479: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE3480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3480: 
	movq	-240(%rbp), %rax
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
	movq	%rax, -240(%rbp)
 jmp .UNIQUE3483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3483: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE3484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3484: 
	je	.L306
 jmp .UNIQUE3485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3485: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3486: 
	movq	8(%rax), %rbx
 jmp .UNIQUE3487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3487: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3488: 
	salq	$2, %rax
 jmp .UNIQUE3489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3489: 
	movl	$581, %edx
 jmp .UNIQUE3490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3490: 
	movl	$__func__.4409, %esi
 jmp .UNIQUE3491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3491: 
	movq	%rax, %rdi
 jmp .UNIQUE3492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3492: 
	call	error_checking_malloc
 jmp .UNIQUE3493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3493: 
	movq	%rax, 56(%rbx)
 jmp .UNIQUE3494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3494: 
	movq	$0, -248(%rbp)
 jmp .UNIQUE3495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3495: 
	jmp	.L307
.L310:
 jmp .UNIQUE3496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3496: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3497: 
	movq	8(%rax), %rax
 jmp .UNIQUE3498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3498: 
	movq	56(%rax), %rax
 jmp .UNIQUE3499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3499: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE3500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3500: 
	salq	$2, %rdx
 jmp .UNIQUE3501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3501: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE3502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3502: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE3503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3503: 
	cmpl	$176, %eax
 jmp .UNIQUE3504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3504: 
	jnb	.L308
 jmp .UNIQUE3505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3505: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3506: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE3507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3507: 
	movl	%eax, %eax
 jmp .UNIQUE3508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3508: 
	addq	%rdx, %rax
 jmp .UNIQUE3509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3509: 
	movl	-212(%rbp), %edx
 jmp .UNIQUE3510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3510: 
	addl	$16, %edx
 jmp .UNIQUE3511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3511: 
	movl	%edx, -212(%rbp)
 jmp .UNIQUE3512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3512: 
	jmp	.L309
.L308:
 jmp .UNIQUE3513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3513: 
	movq	-208(%rbp), %rdx
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
	addq	$8, %rdx
 jmp .UNIQUE3516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3516: 
	movq	%rdx, -208(%rbp)
.L309:
 jmp .UNIQUE3517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3517: 
	movsd	(%rax), %xmm0
 jmp .UNIQUE3518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3518: 
	unpcklpd	%xmm0, %xmm0
 jmp .UNIQUE3519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3519: 
	cvtpd2ps	%xmm0, %xmm0
 jmp .UNIQUE3520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3520: 
	movss	%xmm0, (%rcx)
 jmp .UNIQUE3521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3521: 
	addq	$1, -248(%rbp)
.L307:
 jmp .UNIQUE3522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3522: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE3523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3523: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3524: 
	jl	.L310
 jmp .UNIQUE3525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3525: 
	jmp	.L311
.L306:
 jmp .UNIQUE3526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3526: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3527: 
	movq	8(%rax), %rax
 jmp .UNIQUE3528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3528: 
	movq	$0, 56(%rax)
.L311:
 jmp .UNIQUE3529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3529: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3530: 
	movq	8(%rax), %rcx
 jmp .UNIQUE3531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3531: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3532: 
	cmpl	$48, %eax
 jmp .UNIQUE3533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3533: 
	jnb	.L312
 jmp .UNIQUE3534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3534: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3535: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3536: 
	movl	%eax, %eax
 jmp .UNIQUE3537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3537: 
	addq	%rdx, %rax
 jmp .UNIQUE3538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3538: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3539: 
	addl	$8, %edx
 jmp .UNIQUE3540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3540: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3541: 
	jmp	.L313
.L312:
 jmp .UNIQUE3542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3542: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3543: 
	movq	%rdx, %rax
 jmp .UNIQUE3544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3544: 
	addq	$8, %rdx
 jmp .UNIQUE3545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3545: 
	movq	%rdx, -208(%rbp)
.L313:
 jmp .UNIQUE3546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3546: 
	movq	(%rax), %rax
 jmp .UNIQUE3547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3547: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3548: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3549: 
	movq	%rax, 64(%rcx)
 jmp .UNIQUE3550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3550: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3551: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3552: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE3553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3553: 
	addq	%rdx, %rax
 jmp .UNIQUE3554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3554: 
	movq	%rax, -240(%rbp)
 jmp .UNIQUE3555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3555: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE3556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3556: 
	je	.L314
 jmp .UNIQUE3557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3557: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3558: 
	movq	8(%rax), %rbx
 jmp .UNIQUE3559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3559: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3560: 
	salq	$3, %rax
 jmp .UNIQUE3561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3561: 
	movl	$597, %edx
 jmp .UNIQUE3562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3562: 
	movl	$__func__.4409, %esi
 jmp .UNIQUE3563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3563: 
	movq	%rax, %rdi
 jmp .UNIQUE3564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3564: 
	call	error_checking_malloc
 jmp .UNIQUE3565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3565: 
	movq	%rax, 72(%rbx)
 jmp .UNIQUE3566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3566: 
	movq	$0, -248(%rbp)
 jmp .UNIQUE3567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3567: 
	jmp	.L315
.L318:
 jmp .UNIQUE3568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3568: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3569: 
	movq	8(%rax), %rax
 jmp .UNIQUE3570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3570: 
	movq	72(%rax), %rax
 jmp .UNIQUE3571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3571: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE3572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3572: 
	salq	$3, %rdx
 jmp .UNIQUE3573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3573: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE3574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3574: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE3575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3575: 
	cmpl	$176, %eax
 jmp .UNIQUE3576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3576: 
	jnb	.L316
 jmp .UNIQUE3577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3577: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3578: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE3579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3579: 
	movl	%eax, %eax
 jmp .UNIQUE3580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3580: 
	addq	%rdx, %rax
 jmp .UNIQUE3581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3581: 
	movl	-212(%rbp), %edx
 jmp .UNIQUE3582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3582: 
	addl	$16, %edx
 jmp .UNIQUE3583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3583: 
	movl	%edx, -212(%rbp)
 jmp .UNIQUE3584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3584: 
	jmp	.L317
.L316:
 jmp .UNIQUE3585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3585: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3586: 
	movq	%rdx, %rax
 jmp .UNIQUE3587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3587: 
	addq	$8, %rdx
 jmp .UNIQUE3588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3588: 
	movq	%rdx, -208(%rbp)
.L317:
 jmp .UNIQUE3589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3589: 
	movq	(%rax), %rax
 jmp .UNIQUE3590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3590: 
	movq	%rax, (%rcx)
 jmp .UNIQUE3591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3591: 
	addq	$1, -248(%rbp)
.L315:
 jmp .UNIQUE3592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3592: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE3593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3593: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3594: 
	jl	.L318
 jmp .UNIQUE3595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3595: 
	jmp	.L319
.L314:
 jmp .UNIQUE3596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3596: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3597: 
	movq	8(%rax), %rax
 jmp .UNIQUE3598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3598: 
	movq	$0, 72(%rax)
.L319:
 jmp .UNIQUE3599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3599: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3600: 
	movq	8(%rax), %rcx
 jmp .UNIQUE3601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3601: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3602: 
	cmpl	$48, %eax
 jmp .UNIQUE3603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3603: 
	jnb	.L320
 jmp .UNIQUE3604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3604: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3605: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3606: 
	movl	%eax, %eax
 jmp .UNIQUE3607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3607: 
	addq	%rdx, %rax
 jmp .UNIQUE3608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3608: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3609: 
	addl	$8, %edx
 jmp .UNIQUE3610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3610: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3611: 
	jmp	.L321
.L320:
 jmp .UNIQUE3612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3612: 
	movq	-208(%rbp), %rdx
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
	addq	$8, %rdx
 jmp .UNIQUE3615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3615: 
	movq	%rdx, -208(%rbp)
.L321:
 jmp .UNIQUE3616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3616: 
	movq	(%rax), %rax
 jmp .UNIQUE3617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3617: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3618: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3619: 
	movq	%rax, 80(%rcx)
 jmp .UNIQUE3620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3620: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3621: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3622: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE3623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3623: 
	addq	%rdx, %rax
 jmp .UNIQUE3624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3624: 
	movq	%rax, -240(%rbp)
 jmp .UNIQUE3625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3625: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE3626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3626: 
	je	.L322
 jmp .UNIQUE3627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3627: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3628: 
	movq	8(%rax), %rbx
 jmp .UNIQUE3629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3629: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3630: 
	salq	$3, %rax
 jmp .UNIQUE3631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3631: 
	movl	$614, %edx
 jmp .UNIQUE3632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3632: 
	movl	$__func__.4409, %esi
 jmp .UNIQUE3633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3633: 
	movq	%rax, %rdi
 jmp .UNIQUE3634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3634: 
	call	error_checking_malloc
 jmp .UNIQUE3635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3635: 
	movq	%rax, 88(%rbx)
 jmp .UNIQUE3636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3636: 
	movq	$0, -248(%rbp)
 jmp .UNIQUE3637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3637: 
	jmp	.L323
.L326:
 jmp .UNIQUE3638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3638: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3639: 
	movq	8(%rax), %rax
 jmp .UNIQUE3640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3640: 
	movq	88(%rax), %rax
 jmp .UNIQUE3641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3641: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE3642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3642: 
	salq	$3, %rdx
 jmp .UNIQUE3643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3643: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE3644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3644: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3645: 
	cmpl	$48, %eax
 jmp .UNIQUE3646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3646: 
	jnb	.L324
 jmp .UNIQUE3647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3647: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3648: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3649: 
	movl	%eax, %eax
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
	movl	-216(%rbp), %edx
 jmp .UNIQUE3652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3652: 
	addl	$8, %edx
 jmp .UNIQUE3653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3653: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3654: 
	jmp	.L325
.L324:
 jmp .UNIQUE3655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3655: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3656: 
	movq	%rdx, %rax
 jmp .UNIQUE3657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3657: 
	addq	$8, %rdx
 jmp .UNIQUE3658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3658: 
	movq	%rdx, -208(%rbp)
.L325:
 jmp .UNIQUE3659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3659: 
	movq	(%rax), %rax
 jmp .UNIQUE3660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3660: 
	movq	%rax, (%rcx)
 jmp .UNIQUE3661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3661: 
	addq	$1, -248(%rbp)
.L323:
 jmp .UNIQUE3662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3662: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE3663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3663: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3664: 
	jl	.L326
 jmp .UNIQUE3665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3665: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3666: 
	movq	8(%rax), %rbx
 jmp .UNIQUE3667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3667: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3668: 
	salq	$3, %rax
 jmp .UNIQUE3669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3669: 
	movl	$620, %edx
 jmp .UNIQUE3670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3670: 
	movl	$__func__.4409, %esi
 jmp .UNIQUE3671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3671: 
	movq	%rax, %rdi
 jmp .UNIQUE3672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3672: 
	call	error_checking_malloc
 jmp .UNIQUE3673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3673: 
	movq	%rax, 96(%rbx)
 jmp .UNIQUE3674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3674: 
	movq	$0, -248(%rbp)
 jmp .UNIQUE3675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3675: 
	jmp	.L327
.L330:
 jmp .UNIQUE3676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3676: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3677: 
	movq	8(%rax), %rax
 jmp .UNIQUE3678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3678: 
	movq	96(%rax), %rax
 jmp .UNIQUE3679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3679: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE3680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3680: 
	salq	$3, %rdx
 jmp .UNIQUE3681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3681: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE3682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3682: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3683: 
	cmpl	$48, %eax
 jmp .UNIQUE3684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3684: 
	jnb	.L328
 jmp .UNIQUE3685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3685: 
	movq	-200(%rbp), %rdx
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
	movl	%eax, %eax
 jmp .UNIQUE3688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3688: 
	addq	%rdx, %rax
 jmp .UNIQUE3689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3689: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3690: 
	addl	$8, %edx
 jmp .UNIQUE3691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3691: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3692: 
	jmp	.L329
.L328:
 jmp .UNIQUE3693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3693: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3694: 
	movq	%rdx, %rax
 jmp .UNIQUE3695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3695: 
	addq	$8, %rdx
 jmp .UNIQUE3696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3696: 
	movq	%rdx, -208(%rbp)
.L329:
 jmp .UNIQUE3697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3697: 
	movq	(%rax), %rax
 jmp .UNIQUE3698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3698: 
	movq	%rax, (%rcx)
 jmp .UNIQUE3699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3699: 
	addq	$1, -248(%rbp)
.L327:
 jmp .UNIQUE3700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3700: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE3701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3701: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3702: 
	jl	.L330
 jmp .UNIQUE3703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3703: 
	jmp	.L331
.L322:
 jmp .UNIQUE3704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3704: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3705: 
	movq	8(%rax), %rax
 jmp .UNIQUE3706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3706: 
	movq	$0, 88(%rax)
 jmp .UNIQUE3707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3707: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3708: 
	movq	8(%rax), %rax
 jmp .UNIQUE3709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3709: 
	movq	$0, 96(%rax)
.L331:
 jmp .UNIQUE3710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3710: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3711: 
	movq	8(%rax), %rcx
 jmp .UNIQUE3712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3712: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3713: 
	cmpl	$48, %eax
 jmp .UNIQUE3714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3714: 
	jnb	.L332
 jmp .UNIQUE3715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3715: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3716: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3717: 
	movl	%eax, %eax
 jmp .UNIQUE3718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3718: 
	addq	%rdx, %rax
 jmp .UNIQUE3719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3719: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3720: 
	addl	$8, %edx
 jmp .UNIQUE3721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3721: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3722: 
	jmp	.L333
.L332:
 jmp .UNIQUE3723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3723: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3724: 
	movq	%rdx, %rax
 jmp .UNIQUE3725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3725: 
	addq	$8, %rdx
 jmp .UNIQUE3726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3726: 
	movq	%rdx, -208(%rbp)
.L333:
 jmp .UNIQUE3727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3727: 
	movq	(%rax), %rax
 jmp .UNIQUE3728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3728: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3729: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3730: 
	movq	%rax, 104(%rcx)
 jmp .UNIQUE3731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3731: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3732: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3733: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE3734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3734: 
	addq	%rdx, %rax
 jmp .UNIQUE3735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3735: 
	movq	%rax, -240(%rbp)
 jmp .UNIQUE3736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3736: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE3737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3737: 
	je	.L334
 jmp .UNIQUE3738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3738: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3739: 
	movq	8(%rax), %rbx
 jmp .UNIQUE3740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3740: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3741: 
	salq	$3, %rax
 jmp .UNIQUE3742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3742: 
	movl	$638, %edx
 jmp .UNIQUE3743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3743: 
	movl	$__func__.4409, %esi
 jmp .UNIQUE3744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3744: 
	movq	%rax, %rdi
 jmp .UNIQUE3745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3745: 
	call	error_checking_malloc
 jmp .UNIQUE3746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3746: 
	movq	%rax, 112(%rbx)
 jmp .UNIQUE3747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3747: 
	movq	$0, -248(%rbp)
 jmp .UNIQUE3748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3748: 
	jmp	.L335
.L338:
 jmp .UNIQUE3749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3749: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3750: 
	movq	8(%rax), %rax
 jmp .UNIQUE3751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3751: 
	movq	112(%rax), %rax
 jmp .UNIQUE3752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3752: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE3753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3753: 
	salq	$3, %rdx
 jmp .UNIQUE3754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3754: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE3755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3755: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3756: 
	cmpl	$48, %eax
 jmp .UNIQUE3757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3757: 
	jnb	.L336
 jmp .UNIQUE3758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3758: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3759: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3760: 
	movl	%eax, %eax
 jmp .UNIQUE3761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3761: 
	addq	%rdx, %rax
 jmp .UNIQUE3762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3762: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3763: 
	addl	$8, %edx
 jmp .UNIQUE3764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3764: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3765: 
	jmp	.L337
.L336:
 jmp .UNIQUE3766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3766: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3767: 
	movq	%rdx, %rax
 jmp .UNIQUE3768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3768: 
	addq	$8, %rdx
 jmp .UNIQUE3769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3769: 
	movq	%rdx, -208(%rbp)
.L337:
 jmp .UNIQUE3770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3770: 
	movq	(%rax), %rax
 jmp .UNIQUE3771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3771: 
	movq	%rax, (%rcx)
 jmp .UNIQUE3772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3772: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3773: 
	movq	8(%rax), %rax
 jmp .UNIQUE3774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3774: 
	movq	112(%rax), %rax
 jmp .UNIQUE3775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3775: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE3776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3776: 
	salq	$3, %rdx
 jmp .UNIQUE3777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3777: 
	addq	%rdx, %rax
 jmp .UNIQUE3778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3778: 
	movq	(%rax), %rax
 jmp .UNIQUE3779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3779: 
	addq	%rax, -240(%rbp)
 jmp .UNIQUE3780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3780: 
	addq	$1, -248(%rbp)
.L335:
 jmp .UNIQUE3781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3781: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE3782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3782: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3783: 
	jl	.L338
 jmp .UNIQUE3784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3784: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3785: 
	movq	8(%rax), %rbx
 jmp .UNIQUE3786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3786: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3787: 
	salq	$3, %rax
 jmp .UNIQUE3788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3788: 
	movl	$645, %edx
 jmp .UNIQUE3789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3789: 
	movl	$__func__.4409, %esi
 jmp .UNIQUE3790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3790: 
	movq	%rax, %rdi
 jmp .UNIQUE3791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3791: 
	call	error_checking_malloc
 jmp .UNIQUE3792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3792: 
	movq	%rax, 120(%rbx)
 jmp .UNIQUE3793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3793: 
	movq	$0, -248(%rbp)
 jmp .UNIQUE3794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3794: 
	jmp	.L339
.L342:
 jmp .UNIQUE3795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3795: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3796: 
	movq	8(%rax), %rax
 jmp .UNIQUE3797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3797: 
	movq	120(%rax), %rax
 jmp .UNIQUE3798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3798: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE3799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3799: 
	salq	$3, %rdx
 jmp .UNIQUE3800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3800: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE3801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3801: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3802: 
	cmpl	$48, %eax
 jmp .UNIQUE3803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3803: 
	jnb	.L340
 jmp .UNIQUE3804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3804: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3805: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3806: 
	movl	%eax, %eax
 jmp .UNIQUE3807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3807: 
	addq	%rdx, %rax
 jmp .UNIQUE3808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3808: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3809: 
	addl	$8, %edx
 jmp .UNIQUE3810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3810: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3811: 
	jmp	.L341
.L340:
 jmp .UNIQUE3812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3812: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3813: 
	movq	%rdx, %rax
 jmp .UNIQUE3814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3814: 
	addq	$8, %rdx
 jmp .UNIQUE3815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3815: 
	movq	%rdx, -208(%rbp)
.L341:
 jmp .UNIQUE3816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3816: 
	movq	(%rax), %rax
 jmp .UNIQUE3817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3817: 
	movq	%rax, (%rcx)
 jmp .UNIQUE3818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3818: 
	addq	$1, -248(%rbp)
.L339:
 jmp .UNIQUE3819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3819: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE3820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3820: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3821: 
	jl	.L342
 jmp .UNIQUE3822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3822: 
	jmp	.L344
.L334:
 jmp .UNIQUE3823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3823: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3824: 
	movq	8(%rax), %rax
 jmp .UNIQUE3825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3825: 
	movq	$0, 112(%rax)
 jmp .UNIQUE3826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3826: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3827: 
	movq	8(%rax), %rax
 jmp .UNIQUE3828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3828: 
	movq	$0, 120(%rax)
.L344:
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
	movq	-240(%rbp), %rdx
 jmp .UNIQUE3831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3831: 
	movq	%rdx, (%rax)
 jmp .UNIQUE3832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3832: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3833: 
	addq	$264, %rsp
 jmp .UNIQUE3834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3834: 
	popq	%rbx
 jmp .UNIQUE3835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3835: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3836: 
	ret
	.cfi_endproc
.LFE74:
	.size	init_function_params, .-init_function_params
	.globl	init_function_params_with_uninitialised_elements
	.type	init_function_params_with_uninitialised_elements, @function
init_function_params_with_uninitialised_elements:
.LFB75:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3837: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3838: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3839: 
	pushq	%rbx
 jmp .UNIQUE3840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3840: 
	subq	$264, %rsp
	.cfi_offset 3, -24
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
	movq	%rdx, -176(%rbp)
 jmp .UNIQUE3843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3843: 
	movq	%rcx, -168(%rbp)
 jmp .UNIQUE3844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3844: 
	movq	%r8, -160(%rbp)
 jmp .UNIQUE3845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3845: 
	movq	%r9, -152(%rbp)
 jmp .UNIQUE3846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3846: 
	testb	%al, %al
 jmp .UNIQUE3847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3847: 
	je	.L346
 jmp .UNIQUE3848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3848: 
	movaps	%xmm0, -144(%rbp)
 jmp .UNIQUE3849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3849: 
	movaps	%xmm1, -128(%rbp)
 jmp .UNIQUE3850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3850: 
	movaps	%xmm2, -112(%rbp)
 jmp .UNIQUE3851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3851: 
	movaps	%xmm3, -96(%rbp)
 jmp .UNIQUE3852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3852: 
	movaps	%xmm4, -80(%rbp)
 jmp .UNIQUE3853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3853: 
	movaps	%xmm5, -64(%rbp)
 jmp .UNIQUE3854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3854: 
	movaps	%xmm6, -48(%rbp)
 jmp .UNIQUE3855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3855: 
	movaps	%xmm7, -32(%rbp)
.L346:
 jmp .UNIQUE3856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3856: 
	movl	%esi, -264(%rbp)
 jmp .UNIQUE3857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3857: 
	movq	$0, -248(%rbp)
 jmp .UNIQUE3858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3858: 
	movl	$16, -216(%rbp)
 jmp .UNIQUE3859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3859: 
	movl	$48, -212(%rbp)
 jmp .UNIQUE3860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3860: 
	leaq	16(%rbp), %rax
 jmp .UNIQUE3861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3861: 
	movq	%rax, -208(%rbp)
 jmp .UNIQUE3862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3862: 
	leaq	-192(%rbp), %rax
 jmp .UNIQUE3863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3863: 
	movq	%rax, -200(%rbp)
 jmp .UNIQUE3864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3864: 
	movl	$705, %edx
 jmp .UNIQUE3865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3865: 
	movl	$__func__.4447, %esi
 jmp .UNIQUE3866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3866: 
	movl	$24, %edi
 jmp .UNIQUE3867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3867: 
	call	error_checking_malloc
 jmp .UNIQUE3868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3868: 
	movq	%rax, -240(%rbp)
 jmp .UNIQUE3869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3869: 
	cmpl	$0, -260(%rbp)
 jmp .UNIQUE3870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3870: 
	je	.L347
 jmp .UNIQUE3871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3871: 
	movl	$708, %edx
 jmp .UNIQUE3872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3872: 
	movl	$__func__.4447, %esi
 jmp .UNIQUE3873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3873: 
	movl	$128, %edi
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
	movq	-240(%rbp), %rdx
 jmp .UNIQUE3876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3876: 
	movq	%rax, 8(%rdx)
 jmp .UNIQUE3877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3877: 
	jmp	.L348
.L347:
 jmp .UNIQUE3878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3878: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE3879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3879: 
	movq	$0, 8(%rax)
.L348:
 jmp .UNIQUE3880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3880: 
	cmpl	$0, -264(%rbp)
 jmp .UNIQUE3881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3881: 
	je	.L349
 jmp .UNIQUE3882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3882: 
	movl	$713, %edx
 jmp .UNIQUE3883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3883: 
	movl	$__func__.4447, %esi
 jmp .UNIQUE3884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3884: 
	movl	$152, %edi
 jmp .UNIQUE3885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3885: 
	call	error_checking_malloc
 jmp .UNIQUE3886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3886: 
	movq	-240(%rbp), %rdx
 jmp .UNIQUE3887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3887: 
	movq	%rax, 16(%rdx)
 jmp .UNIQUE3888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3888: 
	jmp	.L350
.L349:
 jmp .UNIQUE3889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3889: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE3890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3890: 
	movq	$0, 16(%rax)
.L350:
 jmp .UNIQUE3891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3891: 
	cmpl	$0, -260(%rbp)
 jmp .UNIQUE3892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3892: 
	je	.L434
 jmp .UNIQUE3893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3893: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE3894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3894: 
	movq	8(%rax), %rcx
 jmp .UNIQUE3895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3895: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3896: 
	cmpl	$48, %eax
 jmp .UNIQUE3897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3897: 
	jnb	.L352
 jmp .UNIQUE3898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3898: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3899: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3900: 
	movl	%eax, %eax
 jmp .UNIQUE3901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3901: 
	addq	%rdx, %rax
 jmp .UNIQUE3902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3902: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3903: 
	addl	$8, %edx
 jmp .UNIQUE3904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3904: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3905: 
	jmp	.L353
.L352:
 jmp .UNIQUE3906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3906: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3907: 
	movq	%rdx, %rax
 jmp .UNIQUE3908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3908: 
	addq	$8, %rdx
 jmp .UNIQUE3909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3909: 
	movq	%rdx, -208(%rbp)
.L353:
 jmp .UNIQUE3910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3910: 
	movq	(%rax), %rax
 jmp .UNIQUE3911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3911: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE3912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3912: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3913: 
	movq	%rax, (%rcx)
 jmp .UNIQUE3914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3914: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE3915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3915: 
	movq	-232(%rbp), %rax
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
	movq	%rax, -248(%rbp)
 jmp .UNIQUE3918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3918: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE3919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3919: 
	je	.L354
 jmp .UNIQUE3920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3920: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3921: 
	cmpl	$48, %eax
 jmp .UNIQUE3922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3922: 
	jnb	.L355
 jmp .UNIQUE3923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3923: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3924: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3925: 
	movl	%eax, %eax
 jmp .UNIQUE3926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3926: 
	addq	%rdx, %rax
 jmp .UNIQUE3927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3927: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3928: 
	addl	$8, %edx
 jmp .UNIQUE3929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3929: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3930: 
	jmp	.L356
.L355:
 jmp .UNIQUE3931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3931: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3932: 
	movq	%rdx, %rax
 jmp .UNIQUE3933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3933: 
	addq	$8, %rdx
 jmp .UNIQUE3934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3934: 
	movq	%rdx, -208(%rbp)
.L356:
 jmp .UNIQUE3935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3935: 
	movq	(%rax), %rax
 jmp .UNIQUE3936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3936: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3937: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE3938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3938: 
	movq	8(%rax), %rbx
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
	movl	$725, %edx
 jmp .UNIQUE3941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3941: 
	movl	$__func__.4447, %esi
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
	movq	%rax, 8(%rbx)
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
	jmp	.L357
.L360:
 jmp .UNIQUE3947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3947: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE3948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3948: 
	movq	8(%rax), %rax
 jmp .UNIQUE3949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3949: 
	movq	8(%rax), %rdx
 jmp .UNIQUE3950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3950: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE3951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3951: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE3952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3952: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3953: 
	cmpl	$48, %eax
 jmp .UNIQUE3954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3954: 
	jnb	.L358
 jmp .UNIQUE3955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3955: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3956: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3957: 
	movl	%eax, %eax
 jmp .UNIQUE3958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3958: 
	addq	%rdx, %rax
 jmp .UNIQUE3959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3959: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3960: 
	addl	$8, %edx
 jmp .UNIQUE3961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3961: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3962: 
	jmp	.L359
.L358:
 jmp .UNIQUE3963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3963: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3964: 
	movq	%rdx, %rax
 jmp .UNIQUE3965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3965: 
	addq	$8, %rdx
 jmp .UNIQUE3966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3966: 
	movq	%rdx, -208(%rbp)
.L359:
 jmp .UNIQUE3967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3967: 
	movl	(%rax), %eax
 jmp .UNIQUE3968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3968: 
	movb	%al, (%rcx)
 jmp .UNIQUE3969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3969: 
	addq	$1, -256(%rbp)
.L357:
 jmp .UNIQUE3970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3970: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE3971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3971: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3972: 
	jl	.L360
 jmp .UNIQUE3973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3973: 
	jmp	.L361
.L354:
 jmp .UNIQUE3974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3974: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE3975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3975: 
	movq	8(%rax), %rax
 jmp .UNIQUE3976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3976: 
	movq	$0, 8(%rax)
.L361:
 jmp .UNIQUE3977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3977: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE3978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3978: 
	movq	8(%rax), %rcx
 jmp .UNIQUE3979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3979: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3980: 
	cmpl	$48, %eax
 jmp .UNIQUE3981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3981: 
	jnb	.L362
 jmp .UNIQUE3982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3982: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3983: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3984: 
	movl	%eax, %eax
 jmp .UNIQUE3985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3985: 
	addq	%rdx, %rax
 jmp .UNIQUE3986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3986: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3987: 
	addl	$8, %edx
 jmp .UNIQUE3988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3988: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3989: 
	jmp	.L363
.L362:
 jmp .UNIQUE3990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3990: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3991: 
	movq	%rdx, %rax
 jmp .UNIQUE3992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3992: 
	addq	$8, %rdx
 jmp .UNIQUE3993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3993: 
	movq	%rdx, -208(%rbp)
.L363:
 jmp .UNIQUE3994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3994: 
	movq	(%rax), %rax
 jmp .UNIQUE3995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3995: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE3996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3996: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3997: 
	movq	%rax, 16(%rcx)
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
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE4000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4000: 
	movq	-248(%rbp), %rax
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
	movq	%rax, -248(%rbp)
 jmp .UNIQUE4003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4003: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4004: 
	je	.L364
 jmp .UNIQUE4005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4005: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4006: 
	cmpl	$48, %eax
 jmp .UNIQUE4007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4007: 
	jnb	.L365
 jmp .UNIQUE4008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4008: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4009: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4010: 
	movl	%eax, %eax
 jmp .UNIQUE4011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4011: 
	addq	%rdx, %rax
 jmp .UNIQUE4012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4012: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4013: 
	addl	$8, %edx
 jmp .UNIQUE4014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4014: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4015: 
	jmp	.L366
.L365:
 jmp .UNIQUE4016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4016: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4017: 
	movq	%rdx, %rax
 jmp .UNIQUE4018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4018: 
	addq	$8, %rdx
 jmp .UNIQUE4019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4019: 
	movq	%rdx, -208(%rbp)
.L366:
 jmp .UNIQUE4020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4020: 
	movq	(%rax), %rax
 jmp .UNIQUE4021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4021: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4022: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4023: 
	movq	8(%rax), %rbx
 jmp .UNIQUE4024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4024: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4025: 
	salq	$2, %rax
 jmp .UNIQUE4026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4026: 
	movl	$742, %edx
 jmp .UNIQUE4027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4027: 
	movl	$__func__.4447, %esi
 jmp .UNIQUE4028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4028: 
	movq	%rax, %rdi
 jmp .UNIQUE4029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4029: 
	call	error_checking_malloc
 jmp .UNIQUE4030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4030: 
	movq	%rax, 24(%rbx)
 jmp .UNIQUE4031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4031: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4032: 
	jmp	.L367
.L370:
 jmp .UNIQUE4033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4033: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4034: 
	movq	8(%rax), %rax
 jmp .UNIQUE4035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4035: 
	movq	24(%rax), %rax
 jmp .UNIQUE4036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4036: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4037: 
	salq	$2, %rdx
 jmp .UNIQUE4038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4038: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4039: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4040: 
	cmpl	$48, %eax
 jmp .UNIQUE4041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4041: 
	jnb	.L368
 jmp .UNIQUE4042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4042: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4043: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4044: 
	movl	%eax, %eax
 jmp .UNIQUE4045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4045: 
	addq	%rdx, %rax
 jmp .UNIQUE4046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4046: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4047: 
	addl	$8, %edx
 jmp .UNIQUE4048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4048: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4049: 
	jmp	.L369
.L368:
 jmp .UNIQUE4050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4050: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4051: 
	movq	%rdx, %rax
 jmp .UNIQUE4052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4052: 
	addq	$8, %rdx
 jmp .UNIQUE4053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4053: 
	movq	%rdx, -208(%rbp)
.L369:
 jmp .UNIQUE4054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4054: 
	movl	(%rax), %eax
 jmp .UNIQUE4055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4055: 
	movl	%eax, (%rcx)
 jmp .UNIQUE4056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4056: 
	addq	$1, -256(%rbp)
.L367:
 jmp .UNIQUE4057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4057: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4058: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4059: 
	jl	.L370
 jmp .UNIQUE4060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4060: 
	jmp	.L371
.L364:
 jmp .UNIQUE4061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4061: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4062: 
	movq	8(%rax), %rax
 jmp .UNIQUE4063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4063: 
	movq	$0, 24(%rax)
.L371:
 jmp .UNIQUE4064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4064: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4065: 
	movq	8(%rax), %rcx
 jmp .UNIQUE4066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4066: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4067: 
	cmpl	$48, %eax
 jmp .UNIQUE4068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4068: 
	jnb	.L372
 jmp .UNIQUE4069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4069: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4070: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4071: 
	movl	%eax, %eax
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
	movl	-216(%rbp), %edx
 jmp .UNIQUE4074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4074: 
	addl	$8, %edx
 jmp .UNIQUE4075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4075: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4076: 
	jmp	.L373
.L372:
 jmp .UNIQUE4077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4077: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4078: 
	movq	%rdx, %rax
 jmp .UNIQUE4079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4079: 
	addq	$8, %rdx
 jmp .UNIQUE4080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4080: 
	movq	%rdx, -208(%rbp)
.L373:
 jmp .UNIQUE4081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4081: 
	movq	(%rax), %rax
 jmp .UNIQUE4082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4082: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4083: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4084: 
	movq	%rax, 32(%rcx)
 jmp .UNIQUE4085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4085: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4086: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4087: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE4088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4088: 
	addq	%rdx, %rax
 jmp .UNIQUE4089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4089: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE4090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4090: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4091: 
	je	.L374
 jmp .UNIQUE4092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4092: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4093: 
	cmpl	$48, %eax
 jmp .UNIQUE4094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4094: 
	jnb	.L375
 jmp .UNIQUE4095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4095: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4096: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4097: 
	movl	%eax, %eax
 jmp .UNIQUE4098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4098: 
	addq	%rdx, %rax
 jmp .UNIQUE4099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4099: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4100: 
	addl	$8, %edx
 jmp .UNIQUE4101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4101: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4102: 
	jmp	.L376
.L375:
 jmp .UNIQUE4103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4103: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4104: 
	movq	%rdx, %rax
 jmp .UNIQUE4105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4105: 
	addq	$8, %rdx
 jmp .UNIQUE4106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4106: 
	movq	%rdx, -208(%rbp)
.L376:
 jmp .UNIQUE4107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4107: 
	movq	(%rax), %rax
 jmp .UNIQUE4108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4108: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4109: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4110: 
	movq	8(%rax), %rbx
 jmp .UNIQUE4111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4111: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4112: 
	salq	$3, %rax
 jmp .UNIQUE4113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4113: 
	movl	$759, %edx
 jmp .UNIQUE4114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4114: 
	movl	$__func__.4447, %esi
 jmp .UNIQUE4115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4115: 
	movq	%rax, %rdi
 jmp .UNIQUE4116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4116: 
	call	error_checking_malloc
 jmp .UNIQUE4117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4117: 
	movq	%rax, 40(%rbx)
 jmp .UNIQUE4118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4118: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4119: 
	jmp	.L377
.L380:
 jmp .UNIQUE4120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4120: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4121: 
	movq	8(%rax), %rax
 jmp .UNIQUE4122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4122: 
	movq	40(%rax), %rax
 jmp .UNIQUE4123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4123: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4124: 
	salq	$3, %rdx
 jmp .UNIQUE4125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4125: 
	leaq	(%rax,%rdx), %rcx
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
	cmpl	$48, %eax
 jmp .UNIQUE4128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4128: 
	jnb	.L378
 jmp .UNIQUE4129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4129: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4130: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4131: 
	movl	%eax, %eax
 jmp .UNIQUE4132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4132: 
	addq	%rdx, %rax
 jmp .UNIQUE4133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4133: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4134: 
	addl	$8, %edx
 jmp .UNIQUE4135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4135: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4136: 
	jmp	.L379
.L378:
 jmp .UNIQUE4137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4137: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4138: 
	movq	%rdx, %rax
 jmp .UNIQUE4139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4139: 
	addq	$8, %rdx
 jmp .UNIQUE4140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4140: 
	movq	%rdx, -208(%rbp)
.L379:
 jmp .UNIQUE4141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4141: 
	movq	(%rax), %rax
 jmp .UNIQUE4142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4142: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4143: 
	addq	$1, -256(%rbp)
.L377:
 jmp .UNIQUE4144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4144: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4145: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4146: 
	jl	.L380
 jmp .UNIQUE4147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4147: 
	jmp	.L381
.L374:
 jmp .UNIQUE4148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4148: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4149: 
	movq	8(%rax), %rax
 jmp .UNIQUE4150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4150: 
	movq	$0, 40(%rax)
.L381:
 jmp .UNIQUE4151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4151: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4152: 
	movq	8(%rax), %rcx
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
	cmpl	$48, %eax
 jmp .UNIQUE4155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4155: 
	jnb	.L382
 jmp .UNIQUE4156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4156: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4157: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4158: 
	movl	%eax, %eax
 jmp .UNIQUE4159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4159: 
	addq	%rdx, %rax
 jmp .UNIQUE4160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4160: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4161: 
	addl	$8, %edx
 jmp .UNIQUE4162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4162: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4163: 
	jmp	.L383
.L382:
 jmp .UNIQUE4164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4164: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4165: 
	movq	%rdx, %rax
 jmp .UNIQUE4166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4166: 
	addq	$8, %rdx
 jmp .UNIQUE4167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4167: 
	movq	%rdx, -208(%rbp)
.L383:
 jmp .UNIQUE4168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4168: 
	movq	(%rax), %rax
 jmp .UNIQUE4169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4169: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4170: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4171: 
	movq	%rax, 48(%rcx)
 jmp .UNIQUE4172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4172: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4173: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE4174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4174: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE4175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4175: 
	addq	%rdx, %rax
 jmp .UNIQUE4176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4176: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE4177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4177: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4178: 
	je	.L384
 jmp .UNIQUE4179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4179: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4180: 
	cmpl	$48, %eax
 jmp .UNIQUE4181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4181: 
	jnb	.L385
 jmp .UNIQUE4182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4182: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4183: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4184: 
	movl	%eax, %eax
 jmp .UNIQUE4185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4185: 
	addq	%rdx, %rax
 jmp .UNIQUE4186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4186: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4187: 
	addl	$8, %edx
 jmp .UNIQUE4188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4188: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4189: 
	jmp	.L386
.L385:
 jmp .UNIQUE4190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4190: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4191: 
	movq	%rdx, %rax
 jmp .UNIQUE4192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4192: 
	addq	$8, %rdx
 jmp .UNIQUE4193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4193: 
	movq	%rdx, -208(%rbp)
.L386:
 jmp .UNIQUE4194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4194: 
	movq	(%rax), %rax
 jmp .UNIQUE4195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4195: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4196: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4197: 
	movq	8(%rax), %rbx
 jmp .UNIQUE4198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4198: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4199: 
	salq	$2, %rax
 jmp .UNIQUE4200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4200: 
	movl	$776, %edx
 jmp .UNIQUE4201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4201: 
	movl	$__func__.4447, %esi
 jmp .UNIQUE4202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4202: 
	movq	%rax, %rdi
 jmp .UNIQUE4203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4203: 
	call	error_checking_malloc
 jmp .UNIQUE4204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4204: 
	movq	%rax, 56(%rbx)
 jmp .UNIQUE4205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4205: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4206: 
	jmp	.L387
.L390:
 jmp .UNIQUE4207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4207: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4208: 
	movq	8(%rax), %rax
 jmp .UNIQUE4209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4209: 
	movq	56(%rax), %rax
 jmp .UNIQUE4210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4210: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4211: 
	salq	$2, %rdx
 jmp .UNIQUE4212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4212: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4213: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4214: 
	cmpl	$176, %eax
 jmp .UNIQUE4215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4215: 
	jnb	.L388
 jmp .UNIQUE4216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4216: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4217: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4218: 
	movl	%eax, %eax
 jmp .UNIQUE4219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4219: 
	addq	%rdx, %rax
 jmp .UNIQUE4220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4220: 
	movl	-212(%rbp), %edx
 jmp .UNIQUE4221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4221: 
	addl	$16, %edx
 jmp .UNIQUE4222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4222: 
	movl	%edx, -212(%rbp)
 jmp .UNIQUE4223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4223: 
	jmp	.L389
.L388:
 jmp .UNIQUE4224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4224: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4225: 
	movq	%rdx, %rax
 jmp .UNIQUE4226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4226: 
	addq	$8, %rdx
 jmp .UNIQUE4227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4227: 
	movq	%rdx, -208(%rbp)
.L389:
 jmp .UNIQUE4228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4228: 
	movsd	(%rax), %xmm0
 jmp .UNIQUE4229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4229: 
	unpcklpd	%xmm0, %xmm0
 jmp .UNIQUE4230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4230: 
	cvtpd2ps	%xmm0, %xmm0
 jmp .UNIQUE4231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4231: 
	movss	%xmm0, (%rcx)
 jmp .UNIQUE4232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4232: 
	addq	$1, -256(%rbp)
.L387:
 jmp .UNIQUE4233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4233: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4234: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4235: 
	jl	.L390
 jmp .UNIQUE4236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4236: 
	jmp	.L391
.L384:
 jmp .UNIQUE4237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4237: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4238: 
	movq	8(%rax), %rax
 jmp .UNIQUE4239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4239: 
	movq	$0, 56(%rax)
.L391:
 jmp .UNIQUE4240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4240: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4241: 
	movq	8(%rax), %rcx
 jmp .UNIQUE4242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4242: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4243: 
	cmpl	$48, %eax
 jmp .UNIQUE4244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4244: 
	jnb	.L392
 jmp .UNIQUE4245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4245: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4246: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4247: 
	movl	%eax, %eax
 jmp .UNIQUE4248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4248: 
	addq	%rdx, %rax
 jmp .UNIQUE4249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4249: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4250: 
	addl	$8, %edx
 jmp .UNIQUE4251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4251: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4252: 
	jmp	.L393
.L392:
 jmp .UNIQUE4253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4253: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4254: 
	movq	%rdx, %rax
 jmp .UNIQUE4255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4255: 
	addq	$8, %rdx
 jmp .UNIQUE4256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4256: 
	movq	%rdx, -208(%rbp)
.L393:
 jmp .UNIQUE4257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4257: 
	movq	(%rax), %rax
 jmp .UNIQUE4258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4258: 
	movq	%rax, -232(%rbp)
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
	movq	%rax, 64(%rcx)
 jmp .UNIQUE4261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4261: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4262: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4263: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE4264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4264: 
	addq	%rdx, %rax
 jmp .UNIQUE4265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4265: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE4266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4266: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4267: 
	je	.L394
 jmp .UNIQUE4268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4268: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4269: 
	cmpl	$48, %eax
 jmp .UNIQUE4270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4270: 
	jnb	.L395
 jmp .UNIQUE4271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4271: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4272: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4273: 
	movl	%eax, %eax
 jmp .UNIQUE4274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4274: 
	addq	%rdx, %rax
 jmp .UNIQUE4275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4275: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4276: 
	addl	$8, %edx
 jmp .UNIQUE4277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4277: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4278: 
	jmp	.L396
.L395:
 jmp .UNIQUE4279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4279: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4280: 
	movq	%rdx, %rax
 jmp .UNIQUE4281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4281: 
	addq	$8, %rdx
 jmp .UNIQUE4282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4282: 
	movq	%rdx, -208(%rbp)
.L396:
 jmp .UNIQUE4283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4283: 
	movq	(%rax), %rax
 jmp .UNIQUE4284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4284: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4285: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4286: 
	movq	8(%rax), %rbx
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
	salq	$3, %rax
 jmp .UNIQUE4289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4289: 
	movl	$793, %edx
 jmp .UNIQUE4290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4290: 
	movl	$__func__.4447, %esi
 jmp .UNIQUE4291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4291: 
	movq	%rax, %rdi
 jmp .UNIQUE4292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4292: 
	call	error_checking_malloc
 jmp .UNIQUE4293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4293: 
	movq	%rax, 72(%rbx)
 jmp .UNIQUE4294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4294: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4295: 
	jmp	.L397
.L400:
 jmp .UNIQUE4296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4296: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4297: 
	movq	8(%rax), %rax
 jmp .UNIQUE4298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4298: 
	movq	72(%rax), %rax
 jmp .UNIQUE4299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4299: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4300: 
	salq	$3, %rdx
 jmp .UNIQUE4301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4301: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4302: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4303: 
	cmpl	$176, %eax
 jmp .UNIQUE4304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4304: 
	jnb	.L398
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
	movl	-212(%rbp), %eax
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
	movl	-212(%rbp), %edx
 jmp .UNIQUE4310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4310: 
	addl	$16, %edx
 jmp .UNIQUE4311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4311: 
	movl	%edx, -212(%rbp)
 jmp .UNIQUE4312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4312: 
	jmp	.L399
.L398:
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
.L399:
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
	movq	%rax, (%rcx)
 jmp .UNIQUE4319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4319: 
	addq	$1, -256(%rbp)
.L397:
 jmp .UNIQUE4320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4320: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4321: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4322: 
	jl	.L400
 jmp .UNIQUE4323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4323: 
	jmp	.L401
.L394:
 jmp .UNIQUE4324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4324: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4325: 
	movq	8(%rax), %rax
 jmp .UNIQUE4326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4326: 
	movq	$0, 72(%rax)
.L401:
 jmp .UNIQUE4327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4327: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4328: 
	movq	8(%rax), %rcx
 jmp .UNIQUE4329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4329: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4330: 
	cmpl	$48, %eax
 jmp .UNIQUE4331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4331: 
	jnb	.L402
 jmp .UNIQUE4332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4332: 
	movq	-200(%rbp), %rdx
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
	movl	%eax, %eax
 jmp .UNIQUE4335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4335: 
	addq	%rdx, %rax
 jmp .UNIQUE4336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4336: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4337: 
	addl	$8, %edx
 jmp .UNIQUE4338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4338: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4339: 
	jmp	.L403
.L402:
 jmp .UNIQUE4340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4340: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4341: 
	movq	%rdx, %rax
 jmp .UNIQUE4342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4342: 
	addq	$8, %rdx
 jmp .UNIQUE4343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4343: 
	movq	%rdx, -208(%rbp)
.L403:
 jmp .UNIQUE4344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4344: 
	movq	(%rax), %rax
 jmp .UNIQUE4345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4345: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4346: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4347: 
	movq	%rax, 80(%rcx)
 jmp .UNIQUE4348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4348: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4349: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4350: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE4351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4351: 
	addq	%rdx, %rax
 jmp .UNIQUE4352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4352: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE4353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4353: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4354: 
	je	.L404
 jmp .UNIQUE4355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4355: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4356: 
	movq	8(%rax), %rbx
 jmp .UNIQUE4357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4357: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4358: 
	salq	$3, %rax
 jmp .UNIQUE4359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4359: 
	movl	$809, %edx
 jmp .UNIQUE4360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4360: 
	movl	$__func__.4447, %esi
 jmp .UNIQUE4361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4361: 
	movq	%rax, %rdi
 jmp .UNIQUE4362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4362: 
	call	error_checking_malloc
 jmp .UNIQUE4363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4363: 
	movq	%rax, 88(%rbx)
 jmp .UNIQUE4364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4364: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4365: 
	jmp	.L405
.L408:
 jmp .UNIQUE4366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4366: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4367: 
	movq	8(%rax), %rax
 jmp .UNIQUE4368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4368: 
	movq	88(%rax), %rax
 jmp .UNIQUE4369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4369: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4370: 
	salq	$3, %rdx
 jmp .UNIQUE4371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4371: 
	leaq	(%rax,%rdx), %rcx
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
	cmpl	$48, %eax
 jmp .UNIQUE4374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4374: 
	jnb	.L406
 jmp .UNIQUE4375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4375: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4376: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4377: 
	movl	%eax, %eax
 jmp .UNIQUE4378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4378: 
	addq	%rdx, %rax
 jmp .UNIQUE4379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4379: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4380: 
	addl	$8, %edx
 jmp .UNIQUE4381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4381: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4382: 
	jmp	.L407
.L406:
 jmp .UNIQUE4383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4383: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4384: 
	movq	%rdx, %rax
 jmp .UNIQUE4385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4385: 
	addq	$8, %rdx
 jmp .UNIQUE4386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4386: 
	movq	%rdx, -208(%rbp)
.L407:
 jmp .UNIQUE4387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4387: 
	movq	(%rax), %rax
 jmp .UNIQUE4388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4388: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4389: 
	addq	$1, -256(%rbp)
.L405:
 jmp .UNIQUE4390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4390: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4391: 
	cmpq	-232(%rbp), %rax
 jmp .UNIQUE4392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4392: 
	jl	.L408
 jmp .UNIQUE4393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4393: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4394: 
	cmpl	$48, %eax
 jmp .UNIQUE4395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4395: 
	jnb	.L409
 jmp .UNIQUE4396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4396: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4397: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4398: 
	movl	%eax, %eax
 jmp .UNIQUE4399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4399: 
	addq	%rdx, %rax
 jmp .UNIQUE4400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4400: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4401: 
	addl	$8, %edx
 jmp .UNIQUE4402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4402: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4403: 
	jmp	.L410
.L409:
 jmp .UNIQUE4404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4404: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4405: 
	movq	%rdx, %rax
 jmp .UNIQUE4406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4406: 
	addq	$8, %rdx
 jmp .UNIQUE4407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4407: 
	movq	%rdx, -208(%rbp)
.L410:
 jmp .UNIQUE4408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4408: 
	movq	(%rax), %rax
 jmp .UNIQUE4409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4409: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4410: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4411: 
	movq	8(%rax), %rbx
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
	salq	$3, %rax
 jmp .UNIQUE4414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4414: 
	movl	$816, %edx
 jmp .UNIQUE4415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4415: 
	movl	$__func__.4447, %esi
 jmp .UNIQUE4416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4416: 
	movq	%rax, %rdi
 jmp .UNIQUE4417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4417: 
	call	error_checking_malloc
 jmp .UNIQUE4418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4418: 
	movq	%rax, 96(%rbx)
 jmp .UNIQUE4419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4419: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4420: 
	jmp	.L411
.L414:
 jmp .UNIQUE4421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4421: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4422: 
	movq	8(%rax), %rax
 jmp .UNIQUE4423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4423: 
	movq	96(%rax), %rax
 jmp .UNIQUE4424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4424: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4425: 
	salq	$3, %rdx
 jmp .UNIQUE4426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4426: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4427: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4428: 
	cmpl	$48, %eax
 jmp .UNIQUE4429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4429: 
	jnb	.L412
 jmp .UNIQUE4430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4430: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4431: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4432: 
	movl	%eax, %eax
 jmp .UNIQUE4433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4433: 
	addq	%rdx, %rax
 jmp .UNIQUE4434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4434: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4435: 
	addl	$8, %edx
 jmp .UNIQUE4436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4436: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4437: 
	jmp	.L413
.L412:
 jmp .UNIQUE4438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4438: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4439: 
	movq	%rdx, %rax
 jmp .UNIQUE4440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4440: 
	addq	$8, %rdx
 jmp .UNIQUE4441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4441: 
	movq	%rdx, -208(%rbp)
.L413:
 jmp .UNIQUE4442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4442: 
	movq	(%rax), %rax
 jmp .UNIQUE4443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4443: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4444: 
	addq	$1, -256(%rbp)
.L411:
 jmp .UNIQUE4445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4445: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4446: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4447: 
	jl	.L414
 jmp .UNIQUE4448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4448: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4449: 
	movq	%rax, -256(%rbp)
 jmp .UNIQUE4450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4450: 
	jmp	.L415
.L416:
 jmp .UNIQUE4451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4451: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4452: 
	movq	8(%rax), %rax
 jmp .UNIQUE4453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4453: 
	movq	96(%rax), %rax
 jmp .UNIQUE4454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4454: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4455: 
	salq	$3, %rdx
 jmp .UNIQUE4456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4456: 
	addq	%rdx, %rax
 jmp .UNIQUE4457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4457: 
	movq	$0, (%rax)
 jmp .UNIQUE4458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4458: 
	addq	$1, -256(%rbp)
.L415:
 jmp .UNIQUE4459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4459: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4460: 
	cmpq	-232(%rbp), %rax
 jmp .UNIQUE4461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4461: 
	jl	.L416
 jmp .UNIQUE4462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4462: 
	jmp	.L417
.L404:
 jmp .UNIQUE4463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4463: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4464: 
	movq	8(%rax), %rax
 jmp .UNIQUE4465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4465: 
	movq	$0, 88(%rax)
 jmp .UNIQUE4466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4466: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4467: 
	movq	8(%rax), %rax
 jmp .UNIQUE4468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4468: 
	movq	$0, 96(%rax)
.L417:
 jmp .UNIQUE4469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4469: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4470: 
	movq	8(%rax), %rcx
 jmp .UNIQUE4471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4471: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4472: 
	cmpl	$48, %eax
 jmp .UNIQUE4473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4473: 
	jnb	.L418
 jmp .UNIQUE4474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4474: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4475: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4476: 
	movl	%eax, %eax
 jmp .UNIQUE4477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4477: 
	addq	%rdx, %rax
 jmp .UNIQUE4478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4478: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4479: 
	addl	$8, %edx
 jmp .UNIQUE4480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4480: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4481: 
	jmp	.L419
.L418:
 jmp .UNIQUE4482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4482: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4483: 
	movq	%rdx, %rax
 jmp .UNIQUE4484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4484: 
	addq	$8, %rdx
 jmp .UNIQUE4485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4485: 
	movq	%rdx, -208(%rbp)
.L419:
 jmp .UNIQUE4486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4486: 
	movq	(%rax), %rax
 jmp .UNIQUE4487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4487: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4488: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4489: 
	movq	%rax, 104(%rcx)
 jmp .UNIQUE4490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4490: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4491: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4492: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE4493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4493: 
	addq	%rdx, %rax
 jmp .UNIQUE4494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4494: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE4495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4495: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4496: 
	je	.L420
 jmp .UNIQUE4497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4497: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4498: 
	movq	8(%rax), %rbx
 jmp .UNIQUE4499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4499: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4500: 
	salq	$3, %rax
 jmp .UNIQUE4501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4501: 
	movl	$838, %edx
 jmp .UNIQUE4502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4502: 
	movl	$__func__.4447, %esi
 jmp .UNIQUE4503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4503: 
	movq	%rax, %rdi
 jmp .UNIQUE4504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4504: 
	call	error_checking_malloc
 jmp .UNIQUE4505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4505: 
	movq	%rax, 112(%rbx)
 jmp .UNIQUE4506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4506: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4507: 
	jmp	.L421
.L424:
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
	movq	8(%rax), %rax
 jmp .UNIQUE4510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4510: 
	movq	112(%rax), %rax
 jmp .UNIQUE4511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4511: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4512: 
	salq	$3, %rdx
 jmp .UNIQUE4513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4513: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4514: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4515: 
	cmpl	$48, %eax
 jmp .UNIQUE4516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4516: 
	jnb	.L422
 jmp .UNIQUE4517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4517: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4518: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4519: 
	movl	%eax, %eax
 jmp .UNIQUE4520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4520: 
	addq	%rdx, %rax
 jmp .UNIQUE4521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4521: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4522: 
	addl	$8, %edx
 jmp .UNIQUE4523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4523: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4524: 
	jmp	.L423
.L422:
 jmp .UNIQUE4525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4525: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4526: 
	movq	%rdx, %rax
 jmp .UNIQUE4527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4527: 
	addq	$8, %rdx
 jmp .UNIQUE4528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4528: 
	movq	%rdx, -208(%rbp)
.L423:
 jmp .UNIQUE4529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4529: 
	movq	(%rax), %rax
 jmp .UNIQUE4530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4530: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4531: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4532: 
	movq	8(%rax), %rax
 jmp .UNIQUE4533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4533: 
	movq	112(%rax), %rax
 jmp .UNIQUE4534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4534: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4535: 
	salq	$3, %rdx
 jmp .UNIQUE4536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4536: 
	addq	%rdx, %rax
 jmp .UNIQUE4537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4537: 
	movq	(%rax), %rax
 jmp .UNIQUE4538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4538: 
	addq	%rax, -248(%rbp)
 jmp .UNIQUE4539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4539: 
	addq	$1, -256(%rbp)
.L421:
 jmp .UNIQUE4540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4540: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4541: 
	cmpq	-232(%rbp), %rax
 jmp .UNIQUE4542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4542: 
	jl	.L424
 jmp .UNIQUE4543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4543: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4544: 
	cmpl	$48, %eax
 jmp .UNIQUE4545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4545: 
	jnb	.L425
 jmp .UNIQUE4546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4546: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4547: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4548: 
	movl	%eax, %eax
 jmp .UNIQUE4549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4549: 
	addq	%rdx, %rax
 jmp .UNIQUE4550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4550: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4551: 
	addl	$8, %edx
 jmp .UNIQUE4552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4552: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4553: 
	jmp	.L426
.L425:
 jmp .UNIQUE4554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4554: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4555: 
	movq	%rdx, %rax
 jmp .UNIQUE4556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4556: 
	addq	$8, %rdx
 jmp .UNIQUE4557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4557: 
	movq	%rdx, -208(%rbp)
.L426:
 jmp .UNIQUE4558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4558: 
	movq	(%rax), %rax
 jmp .UNIQUE4559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4559: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4560: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4561: 
	movq	8(%rax), %rbx
 jmp .UNIQUE4562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4562: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4563: 
	salq	$3, %rax
 jmp .UNIQUE4564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4564: 
	movl	$846, %edx
 jmp .UNIQUE4565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4565: 
	movl	$__func__.4447, %esi
 jmp .UNIQUE4566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4566: 
	movq	%rax, %rdi
 jmp .UNIQUE4567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4567: 
	call	error_checking_malloc
 jmp .UNIQUE4568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4568: 
	movq	%rax, 120(%rbx)
 jmp .UNIQUE4569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4569: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4570: 
	jmp	.L427
.L430:
 jmp .UNIQUE4571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4571: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4572: 
	movq	8(%rax), %rax
 jmp .UNIQUE4573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4573: 
	movq	120(%rax), %rax
 jmp .UNIQUE4574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4574: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4575: 
	salq	$3, %rdx
 jmp .UNIQUE4576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4576: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4577: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4578: 
	cmpl	$48, %eax
 jmp .UNIQUE4579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4579: 
	jnb	.L428
 jmp .UNIQUE4580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4580: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4581: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4582: 
	movl	%eax, %eax
 jmp .UNIQUE4583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4583: 
	addq	%rdx, %rax
 jmp .UNIQUE4584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4584: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4585: 
	addl	$8, %edx
 jmp .UNIQUE4586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4586: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4587: 
	jmp	.L429
.L428:
 jmp .UNIQUE4588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4588: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4589: 
	movq	%rdx, %rax
 jmp .UNIQUE4590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4590: 
	addq	$8, %rdx
 jmp .UNIQUE4591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4591: 
	movq	%rdx, -208(%rbp)
.L429:
 jmp .UNIQUE4592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4592: 
	movq	(%rax), %rax
 jmp .UNIQUE4593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4593: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4594: 
	addq	$1, -256(%rbp)
.L427:
 jmp .UNIQUE4595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4595: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4596: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4597: 
	jl	.L430
 jmp .UNIQUE4598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4598: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4599: 
	movq	%rax, -256(%rbp)
 jmp .UNIQUE4600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4600: 
	jmp	.L431
.L432:
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
	movq	8(%rax), %rax
 jmp .UNIQUE4603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4603: 
	movq	120(%rax), %rax
 jmp .UNIQUE4604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4604: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4605: 
	salq	$3, %rdx
 jmp .UNIQUE4606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4606: 
	addq	%rdx, %rax
 jmp .UNIQUE4607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4607: 
	movq	$0, (%rax)
 jmp .UNIQUE4608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4608: 
	addq	$1, -256(%rbp)
.L431:
 jmp .UNIQUE4609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4609: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4610: 
	cmpq	-232(%rbp), %rax
 jmp .UNIQUE4611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4611: 
	jl	.L432
 jmp .UNIQUE4612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4612: 
	jmp	.L434
.L420:
 jmp .UNIQUE4613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4613: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4614: 
	movq	8(%rax), %rax
 jmp .UNIQUE4615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4615: 
	movq	$0, 112(%rax)
 jmp .UNIQUE4616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4616: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4617: 
	movq	8(%rax), %rax
 jmp .UNIQUE4618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4618: 
	movq	$0, 120(%rax)
.L434:
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
	movq	-248(%rbp), %rdx
 jmp .UNIQUE4621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4621: 
	movq	%rdx, (%rax)
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
	addq	$264, %rsp
 jmp .UNIQUE4624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4624: 
	popq	%rbx
 jmp .UNIQUE4625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4625: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE4626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4626: 
	ret
	.cfi_endproc
.LFE75:
	.size	init_function_params_with_uninitialised_elements, .-init_function_params_with_uninitialised_elements
	.globl	put_fun_params_into_secure_stack
	.type	put_fun_params_into_secure_stack, @function
put_fun_params_into_secure_stack:
.LFB76:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE4627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4627: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE4628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4628: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE4629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4629: 
	pushq	%rbx
 jmp .UNIQUE4630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4630: 
	subq	$72, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE4631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4631: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE4632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4632: 
	movl	$894, %edx
 jmp .UNIQUE4633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4633: 
	movl	$__func__.4489, %esi
 jmp .UNIQUE4634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4634: 
	movl	$24, %edi
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
	movq	%rax, -48(%rbp)
 jmp .UNIQUE4637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4637: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE4638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4638: 
	movq	(%rax), %rdx
 jmp .UNIQUE4639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4639: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4640: 
	movq	%rdx, (%rax)
 jmp .UNIQUE4641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4641: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE4642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4642: 
	movq	8(%rax), %rax
 jmp .UNIQUE4643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4643: 
	testq	%rax, %rax
 jmp .UNIQUE4644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4644: 
	je	.L436
 jmp .UNIQUE4645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4645: 
	movl	$901, %edx
 jmp .UNIQUE4646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4646: 
	movl	$__func__.4489, %esi
 jmp .UNIQUE4647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4647: 
	movl	$128, %edi
 jmp .UNIQUE4648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4648: 
	call	error_checking_malloc
 jmp .UNIQUE4649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4649: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE4650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4650: 
	movq	%rax, 8(%rdx)
 jmp .UNIQUE4651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4651: 
	jmp	.L437
.L436:
 jmp .UNIQUE4652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4652: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4653: 
	movq	$0, 8(%rax)
.L437:
 jmp .UNIQUE4654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4654: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE4655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4655: 
	movq	16(%rax), %rax
 jmp .UNIQUE4656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4656: 
	testq	%rax, %rax
 jmp .UNIQUE4657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4657: 
	je	.L438
 jmp .UNIQUE4658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4658: 
	movl	$906, %edx
 jmp .UNIQUE4659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4659: 
	movl	$__func__.4489, %esi
 jmp .UNIQUE4660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4660: 
	movl	$152, %edi
 jmp .UNIQUE4661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4661: 
	call	error_checking_malloc
 jmp .UNIQUE4662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4662: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE4663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4663: 
	movq	%rax, 16(%rdx)
 jmp .UNIQUE4664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4664: 
	jmp	.L439
.L438:
 jmp .UNIQUE4665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4665: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4666: 
	movq	$0, 16(%rax)
.L439:
 jmp .UNIQUE4667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4667: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE4668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4668: 
	movq	8(%rax), %rax
 jmp .UNIQUE4669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4669: 
	testq	%rax, %rax
 jmp .UNIQUE4670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4670: 
	je	.L440
 jmp .UNIQUE4671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4671: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4672: 
	movq	8(%rax), %rax
 jmp .UNIQUE4673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4673: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE4674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4674: 
	movq	8(%rdx), %rdx
 jmp .UNIQUE4675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4675: 
	movq	(%rdx), %rdx
 jmp .UNIQUE4676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4676: 
	movq	%rdx, (%rax)
 jmp .UNIQUE4677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4677: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4678: 
	movq	8(%rax), %rax
 jmp .UNIQUE4679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4679: 
	movq	(%rax), %rax
 jmp .UNIQUE4680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4680: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE4681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4681: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4682: 
	movq	%rax, %rdi
 jmp .UNIQUE4683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4683: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE4684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4684: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE4685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4685: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4686: 
	movq	8(%rax), %rax
 jmp .UNIQUE4687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4687: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE4688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4688: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE4689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4689: 
	cmpq	$0, -32(%rbp)
 jmp .UNIQUE4690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4690: 
	je	.L441
 jmp .UNIQUE4691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4691: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE4692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4692: 
	movq	8(%rax), %rax
 jmp .UNIQUE4693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4693: 
	movq	8(%rax), %rcx
 jmp .UNIQUE4694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4694: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE4695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4695: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4696: 
	movq	%rcx, %rsi
 jmp .UNIQUE4697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4697: 
	movq	%rax, %rdi
 jmp .UNIQUE4698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4698: 
	call	insert_data_into_stack_mem
.L441:
 jmp .UNIQUE4699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4699: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4700: 
	movq	8(%rax), %rax
 jmp .UNIQUE4701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4701: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE4702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4702: 
	movq	8(%rdx), %rdx
 jmp .UNIQUE4703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4703: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE4704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4704: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE4705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4705: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4706: 
	movq	8(%rax), %rax
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
	movq	%rax, -40(%rbp)
 jmp .UNIQUE4709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4709: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4710: 
	salq	$2, %rax
 jmp .UNIQUE4711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4711: 
	movq	%rax, %rdi
 jmp .UNIQUE4712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4712: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE4713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4713: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE4714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4714: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4715: 
	movq	8(%rax), %rax
 jmp .UNIQUE4716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4716: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE4717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4717: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE4718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4718: 
	cmpq	$0, -32(%rbp)
 jmp .UNIQUE4719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4719: 
	je	.L442
 jmp .UNIQUE4720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4720: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE4721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4721: 
	movq	8(%rax), %rax
 jmp .UNIQUE4722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4722: 
	movq	24(%rax), %rcx
 jmp .UNIQUE4723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4723: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4724: 
	salq	$2, %rax
 jmp .UNIQUE4725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4725: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE4726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4726: 
	movq	%rcx, %rsi
 jmp .UNIQUE4727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4727: 
	movq	%rax, %rdi
 jmp .UNIQUE4728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4728: 
	call	insert_data_into_stack_mem
.L442:
 jmp .UNIQUE4729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4729: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4730: 
	movq	8(%rax), %rax
 jmp .UNIQUE4731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4731: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE4732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4732: 
	movq	8(%rdx), %rdx
 jmp .UNIQUE4733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4733: 
	movq	32(%rdx), %rdx
 jmp .UNIQUE4734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4734: 
	movq	%rdx, 32(%rax)
 jmp .UNIQUE4735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4735: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4736: 
	movq	8(%rax), %rax
 jmp .UNIQUE4737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4737: 
	movq	32(%rax), %rax
 jmp .UNIQUE4738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4738: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE4739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4739: 
	movq	-40(%rbp), %rax
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
	movq	%rax, %rdi
 jmp .UNIQUE4742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4742: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE4743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4743: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE4744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4744: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4745: 
	movq	8(%rax), %rax
 jmp .UNIQUE4746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4746: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE4747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4747: 
	movq	%rdx, 40(%rax)
 jmp .UNIQUE4748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4748: 
	cmpq	$0, -32(%rbp)
 jmp .UNIQUE4749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4749: 
	je	.L443
 jmp .UNIQUE4750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4750: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE4751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4751: 
	movq	8(%rax), %rax
 jmp .UNIQUE4752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4752: 
	movq	40(%rax), %rcx
 jmp .UNIQUE4753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4753: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4754: 
	salq	$3, %rax
 jmp .UNIQUE4755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4755: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE4756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4756: 
	movq	%rcx, %rsi
 jmp .UNIQUE4757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4757: 
	movq	%rax, %rdi
 jmp .UNIQUE4758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4758: 
	call	insert_data_into_stack_mem
.L443:
 jmp .UNIQUE4759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4759: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4760: 
	movq	8(%rax), %rax
 jmp .UNIQUE4761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4761: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE4762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4762: 
	movq	8(%rdx), %rdx
 jmp .UNIQUE4763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4763: 
	movq	48(%rdx), %rdx
 jmp .UNIQUE4764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4764: 
	movq	%rdx, 48(%rax)
 jmp .UNIQUE4765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4765: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4766: 
	movq	8(%rax), %rax
 jmp .UNIQUE4767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4767: 
	movq	48(%rax), %rax
 jmp .UNIQUE4768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4768: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE4769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4769: 
	movq	-40(%rbp), %rax
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
	movq	%rax, %rdi
 jmp .UNIQUE4772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4772: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE4773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4773: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE4774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4774: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4775: 
	movq	8(%rax), %rax
 jmp .UNIQUE4776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4776: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE4777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4777: 
	movq	%rdx, 56(%rax)
 jmp .UNIQUE4778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4778: 
	cmpq	$0, -32(%rbp)
 jmp .UNIQUE4779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4779: 
	je	.L444
 jmp .UNIQUE4780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4780: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE4781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4781: 
	movq	8(%rax), %rax
 jmp .UNIQUE4782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4782: 
	movq	56(%rax), %rcx
 jmp .UNIQUE4783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4783: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4784: 
	salq	$2, %rax
 jmp .UNIQUE4785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4785: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE4786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4786: 
	movq	%rcx, %rsi
 jmp .UNIQUE4787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4787: 
	movq	%rax, %rdi
 jmp .UNIQUE4788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4788: 
	call	insert_data_into_stack_mem
.L444:
 jmp .UNIQUE4789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4789: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4790: 
	movq	8(%rax), %rax
 jmp .UNIQUE4791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4791: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE4792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4792: 
	movq	8(%rdx), %rdx
 jmp .UNIQUE4793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4793: 
	movq	64(%rdx), %rdx
 jmp .UNIQUE4794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4794: 
	movq	%rdx, 64(%rax)
 jmp .UNIQUE4795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4795: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4796: 
	movq	8(%rax), %rax
 jmp .UNIQUE4797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4797: 
	movq	64(%rax), %rax
 jmp .UNIQUE4798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4798: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE4799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4799: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4800: 
	salq	$3, %rax
 jmp .UNIQUE4801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4801: 
	movq	%rax, %rdi
 jmp .UNIQUE4802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4802: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE4803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4803: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE4804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4804: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4805: 
	movq	8(%rax), %rax
 jmp .UNIQUE4806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4806: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE4807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4807: 
	movq	%rdx, 72(%rax)
 jmp .UNIQUE4808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4808: 
	cmpq	$0, -32(%rbp)
 jmp .UNIQUE4809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4809: 
	je	.L445
 jmp .UNIQUE4810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4810: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE4811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4811: 
	movq	8(%rax), %rax
 jmp .UNIQUE4812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4812: 
	movq	72(%rax), %rcx
 jmp .UNIQUE4813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4813: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4814: 
	salq	$3, %rax
 jmp .UNIQUE4815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4815: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE4816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4816: 
	movq	%rcx, %rsi
 jmp .UNIQUE4817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4817: 
	movq	%rax, %rdi
 jmp .UNIQUE4818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4818: 
	call	insert_data_into_stack_mem
.L445:
 jmp .UNIQUE4819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4819: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4820: 
	movq	8(%rax), %rax
 jmp .UNIQUE4821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4821: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE4822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4822: 
	movq	8(%rdx), %rdx
 jmp .UNIQUE4823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4823: 
	movq	80(%rdx), %rdx
 jmp .UNIQUE4824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4824: 
	movq	%rdx, 80(%rax)
 jmp .UNIQUE4825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4825: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4826: 
	movq	8(%rax), %rax
 jmp .UNIQUE4827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4827: 
	movq	80(%rax), %rax
 jmp .UNIQUE4828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4828: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE4829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4829: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4830: 
	salq	$3, %rax
 jmp .UNIQUE4831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4831: 
	movq	%rax, %rdi
 jmp .UNIQUE4832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4832: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE4833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4833: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE4834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4834: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4835: 
	movq	8(%rax), %rax
 jmp .UNIQUE4836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4836: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE4837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4837: 
	movq	%rdx, 96(%rax)
 jmp .UNIQUE4838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4838: 
	cmpq	$0, -32(%rbp)
 jmp .UNIQUE4839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4839: 
	je	.L446
 jmp .UNIQUE4840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4840: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE4841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4841: 
	movq	8(%rax), %rax
 jmp .UNIQUE4842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4842: 
	movq	96(%rax), %rcx
 jmp .UNIQUE4843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4843: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4844: 
	salq	$3, %rax
 jmp .UNIQUE4845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4845: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE4846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4846: 
	movq	%rcx, %rsi
 jmp .UNIQUE4847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4847: 
	movq	%rax, %rdi
 jmp .UNIQUE4848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4848: 
	call	insert_data_into_stack_mem
.L446:
 jmp .UNIQUE4849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4849: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4850: 
	movq	8(%rax), %rbx
 jmp .UNIQUE4851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4851: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4852: 
	salq	$3, %rax
 jmp .UNIQUE4853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4853: 
	movl	$975, %edx
 jmp .UNIQUE4854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4854: 
	movl	$__func__.4489, %esi
 jmp .UNIQUE4855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4855: 
	movq	%rax, %rdi
 jmp .UNIQUE4856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4856: 
	call	error_checking_malloc
 jmp .UNIQUE4857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4857: 
	movq	%rax, 88(%rbx)
 jmp .UNIQUE4858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4858: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE4859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4859: 
	jmp	.L447
.L448:
 jmp .UNIQUE4860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4860: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4861: 
	movq	8(%rax), %rax
 jmp .UNIQUE4862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4862: 
	movq	88(%rax), %rax
 jmp .UNIQUE4863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4863: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE4864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4864: 
	salq	$3, %rdx
 jmp .UNIQUE4865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4865: 
	addq	%rax, %rdx
 jmp .UNIQUE4866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4866: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE4867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4867: 
	movq	8(%rax), %rax
 jmp .UNIQUE4868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4868: 
	movq	88(%rax), %rax
 jmp .UNIQUE4869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4869: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE4870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4870: 
	salq	$3, %rcx
 jmp .UNIQUE4871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4871: 
	addq	%rcx, %rax
 jmp .UNIQUE4872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4872: 
	movq	(%rax), %rax
 jmp .UNIQUE4873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4873: 
	movq	%rax, (%rdx)
 jmp .UNIQUE4874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4874: 
	addq	$1, -56(%rbp)
.L447:
 jmp .UNIQUE4875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4875: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE4876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4876: 
	cmpq	-40(%rbp), %rax
 jmp .UNIQUE4877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4877: 
	jl	.L448
 jmp .UNIQUE4878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4878: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4879: 
	movq	8(%rax), %rax
 jmp .UNIQUE4880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4880: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE4881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4881: 
	movq	8(%rdx), %rdx
 jmp .UNIQUE4882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4882: 
	movq	104(%rdx), %rdx
 jmp .UNIQUE4883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4883: 
	movq	%rdx, 104(%rax)
 jmp .UNIQUE4884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4884: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4885: 
	movq	8(%rax), %rax
 jmp .UNIQUE4886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4886: 
	movq	104(%rax), %rax
 jmp .UNIQUE4887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4887: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE4888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4888: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4889: 
	movq	8(%rax), %rbx
 jmp .UNIQUE4890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4890: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4891: 
	salq	$3, %rax
 jmp .UNIQUE4892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4892: 
	movl	$983, %edx
 jmp .UNIQUE4893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4893: 
	movl	$__func__.4489, %esi
 jmp .UNIQUE4894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4894: 
	movq	%rax, %rdi
 jmp .UNIQUE4895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4895: 
	call	error_checking_malloc
 jmp .UNIQUE4896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4896: 
	movq	%rax, 112(%rbx)
 jmp .UNIQUE4897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4897: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE4898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4898: 
	jmp	.L449
.L450:
 jmp .UNIQUE4899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4899: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4900: 
	movq	8(%rax), %rax
 jmp .UNIQUE4901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4901: 
	movq	112(%rax), %rax
 jmp .UNIQUE4902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4902: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE4903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4903: 
	salq	$3, %rdx
 jmp .UNIQUE4904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4904: 
	addq	%rax, %rdx
 jmp .UNIQUE4905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4905: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE4906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4906: 
	movq	8(%rax), %rax
 jmp .UNIQUE4907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4907: 
	movq	112(%rax), %rax
 jmp .UNIQUE4908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4908: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE4909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4909: 
	salq	$3, %rcx
 jmp .UNIQUE4910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4910: 
	addq	%rcx, %rax
 jmp .UNIQUE4911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4911: 
	movq	(%rax), %rax
 jmp .UNIQUE4912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4912: 
	movq	%rax, (%rdx)
 jmp .UNIQUE4913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4913: 
	addq	$1, -56(%rbp)
.L449:
 jmp .UNIQUE4914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4914: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE4915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4915: 
	cmpq	-40(%rbp), %rax
 jmp .UNIQUE4916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4916: 
	jl	.L450
 jmp .UNIQUE4917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4917: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4918: 
	movq	8(%rax), %rbx
 jmp .UNIQUE4919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4919: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4920: 
	salq	$3, %rax
 jmp .UNIQUE4921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4921: 
	movl	$986, %edx
 jmp .UNIQUE4922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4922: 
	movl	$__func__.4489, %esi
 jmp .UNIQUE4923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4923: 
	movq	%rax, %rdi
 jmp .UNIQUE4924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4924: 
	call	error_checking_malloc
 jmp .UNIQUE4925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4925: 
	movq	%rax, 120(%rbx)
 jmp .UNIQUE4926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4926: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE4927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4927: 
	jmp	.L451
.L453:
 jmp .UNIQUE4928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4928: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4929: 
	movq	8(%rax), %rax
 jmp .UNIQUE4930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4930: 
	movq	112(%rax), %rax
 jmp .UNIQUE4931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4931: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE4932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4932: 
	salq	$3, %rdx
 jmp .UNIQUE4933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4933: 
	addq	%rdx, %rax
 jmp .UNIQUE4934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4934: 
	movq	(%rax), %rax
 jmp .UNIQUE4935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4935: 
	movq	%rax, %rdi
 jmp .UNIQUE4936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4936: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE4937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4937: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE4938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4938: 
	cmpq	$0, -32(%rbp)
 jmp .UNIQUE4939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4939: 
	je	.L452
 jmp .UNIQUE4940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4940: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE4941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4941: 
	movq	8(%rax), %rax
 jmp .UNIQUE4942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4942: 
	movq	120(%rax), %rax
 jmp .UNIQUE4943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4943: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE4944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4944: 
	salq	$3, %rdx
 jmp .UNIQUE4945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4945: 
	addq	%rdx, %rax
 jmp .UNIQUE4946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4946: 
	movq	(%rax), %rcx
 jmp .UNIQUE4947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4947: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4948: 
	movq	8(%rax), %rax
 jmp .UNIQUE4949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4949: 
	movq	112(%rax), %rax
 jmp .UNIQUE4950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4950: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE4951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4951: 
	salq	$3, %rdx
 jmp .UNIQUE4952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4952: 
	addq	%rdx, %rax
 jmp .UNIQUE4953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4953: 
	movq	(%rax), %rax
 jmp .UNIQUE4954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4954: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE4955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4955: 
	movq	%rcx, %rsi
 jmp .UNIQUE4956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4956: 
	movq	%rax, %rdi
 jmp .UNIQUE4957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4957: 
	call	insert_data_into_stack_mem
.L452:
 jmp .UNIQUE4958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4958: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4959: 
	movq	8(%rax), %rax
 jmp .UNIQUE4960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4960: 
	movq	120(%rax), %rax
 jmp .UNIQUE4961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4961: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE4962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4962: 
	salq	$3, %rdx
 jmp .UNIQUE4963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4963: 
	addq	%rax, %rdx
 jmp .UNIQUE4964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4964: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE4965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4965: 
	movq	%rax, (%rdx)
 jmp .UNIQUE4966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4966: 
	addq	$1, -56(%rbp)
.L451:
 jmp .UNIQUE4967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4967: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE4968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4968: 
	cmpq	-40(%rbp), %rax
 jmp .UNIQUE4969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4969: 
	jl	.L453
.L440:
 jmp .UNIQUE4970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4970: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4971: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE4972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4972: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE4973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4973: 
	addq	$72, %rsp
 jmp .UNIQUE4974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4974: 
	popq	%rbx
 jmp .UNIQUE4975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4975: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE4976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4976: 
	ret
	.cfi_endproc
.LFE76:
	.size	put_fun_params_into_secure_stack, .-put_fun_params_into_secure_stack
	.globl	free_fun_params
	.type	free_fun_params, @function
free_fun_params:
.LFB77:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE4977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4977: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE4978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4978: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE4979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4979: 
	subq	$32, %rsp
 jmp .UNIQUE4980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4980: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE4981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4981: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE4982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4982: 
	movq	8(%rax), %rax
 jmp .UNIQUE4983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4983: 
	movq	8(%rax), %rax
 jmp .UNIQUE4984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4984: 
	movq	%rax, %rdi
 jmp .UNIQUE4985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4985: 
	call	free
 jmp .UNIQUE4986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4986: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE4987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4987: 
	movq	8(%rax), %rax
 jmp .UNIQUE4988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4988: 
	movq	24(%rax), %rax
 jmp .UNIQUE4989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4989: 
	movq	%rax, %rdi
 jmp .UNIQUE4990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4990: 
	call	free
 jmp .UNIQUE4991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4991: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE4992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4992: 
	movq	8(%rax), %rax
 jmp .UNIQUE4993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4993: 
	movq	40(%rax), %rax
 jmp .UNIQUE4994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4994: 
	movq	%rax, %rdi
 jmp .UNIQUE4995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4995: 
	call	free
 jmp .UNIQUE4996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4996: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE4997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4997: 
	movq	8(%rax), %rax
 jmp .UNIQUE4998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4998: 
	movq	56(%rax), %rax
 jmp .UNIQUE4999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4999: 
	movq	%rax, %rdi
 jmp .UNIQUE5000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5000: 
	call	free
 jmp .UNIQUE5001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5001: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5002: 
	movq	8(%rax), %rax
 jmp .UNIQUE5003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5003: 
	movq	72(%rax), %rax
 jmp .UNIQUE5004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5004: 
	movq	%rax, %rdi
 jmp .UNIQUE5005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5005: 
	call	free
 jmp .UNIQUE5006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5006: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5007: 
	movq	8(%rax), %rax
 jmp .UNIQUE5008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5008: 
	movq	96(%rax), %rax
 jmp .UNIQUE5009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5009: 
	movq	%rax, %rdi
 jmp .UNIQUE5010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5010: 
	call	free
 jmp .UNIQUE5011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5011: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5012: 
	movq	8(%rax), %rax
 jmp .UNIQUE5013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5013: 
	movq	88(%rax), %rax
 jmp .UNIQUE5014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5014: 
	movq	%rax, %rdi
 jmp .UNIQUE5015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5015: 
	call	free
 jmp .UNIQUE5016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5016: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5017: 
	movq	8(%rax), %rax
 jmp .UNIQUE5018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5018: 
	movq	112(%rax), %rax
 jmp .UNIQUE5019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5019: 
	movq	%rax, %rdi
 jmp .UNIQUE5020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5020: 
	call	free
 jmp .UNIQUE5021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5021: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE5022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5022: 
	jmp	.L456
.L457:
 jmp .UNIQUE5023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5023: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5024: 
	movq	8(%rax), %rax
 jmp .UNIQUE5025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5025: 
	movq	120(%rax), %rax
 jmp .UNIQUE5026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5026: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5027: 
	salq	$3, %rdx
 jmp .UNIQUE5028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5028: 
	addq	%rdx, %rax
 jmp .UNIQUE5029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5029: 
	movq	(%rax), %rax
 jmp .UNIQUE5030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5030: 
	movq	%rax, %rdi
 jmp .UNIQUE5031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5031: 
	call	free
 jmp .UNIQUE5032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5032: 
	addq	$1, -8(%rbp)
.L456:
 jmp .UNIQUE5033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5033: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5034: 
	movq	8(%rax), %rax
 jmp .UNIQUE5035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5035: 
	movq	104(%rax), %rax
 jmp .UNIQUE5036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5036: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE5037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5037: 
	jg	.L457
 jmp .UNIQUE5038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5038: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5039: 
	movq	8(%rax), %rax
 jmp .UNIQUE5040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5040: 
	movq	96(%rax), %rax
 jmp .UNIQUE5041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5041: 
	movq	%rax, %rdi
 jmp .UNIQUE5042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5042: 
	call	free
 jmp .UNIQUE5043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5043: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5044: 
	movq	8(%rax), %rax
 jmp .UNIQUE5045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5045: 
	movq	%rax, %rdi
 jmp .UNIQUE5046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5046: 
	call	free
 jmp .UNIQUE5047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5047: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5048: 
	movq	16(%rax), %rax
 jmp .UNIQUE5049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5049: 
	movq	%rax, %rdi
 jmp .UNIQUE5050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5050: 
	call	free
 jmp .UNIQUE5051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5051: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5052: 
	movq	%rax, %rdi
 jmp .UNIQUE5053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5053: 
	call	free
 jmp .UNIQUE5054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5054: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5055: 
	ret
	.cfi_endproc
.LFE77:
	.size	free_fun_params, .-free_fun_params
	.globl	put_fun_params_into_secure_stack_and_free
	.type	put_fun_params_into_secure_stack_and_free, @function
put_fun_params_into_secure_stack_and_free:
.LFB78:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5056: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5057: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5058: 
	subq	$32, %rsp
 jmp .UNIQUE5059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5059: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5060: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5061: 
	movq	%rax, %rdi
 jmp .UNIQUE5062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5062: 
	call	put_fun_params_into_secure_stack
 jmp .UNIQUE5063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5063: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE5064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5064: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5065: 
	movq	%rax, %rdi
 jmp .UNIQUE5066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5066: 
	call	free_fun_params
 jmp .UNIQUE5067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5067: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5068: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5069: 
	ret
	.cfi_endproc
.LFE78:
	.size	put_fun_params_into_secure_stack_and_free, .-put_fun_params_into_secure_stack_and_free
	.globl	get_stack_char
	.type	get_stack_char, @function
get_stack_char:
.LFB79:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5070: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5071: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5072: 
	subq	$24, %rsp
 jmp .UNIQUE5073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5073: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5074: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5075: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE5076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5076: 
	movl	$0, %r8d
 jmp .UNIQUE5077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5077: 
	movl	$0, %ecx
 jmp .UNIQUE5078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5078: 
	movl	$1, %esi
 jmp .UNIQUE5079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5079: 
	movq	%rax, %rdi
 jmp .UNIQUE5080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5080: 
	call	get_secure_stack_data
 jmp .UNIQUE5081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5081: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE5082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5082: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5083: 
	ret
	.cfi_endproc
.LFE79:
	.size	get_stack_char, .-get_stack_char
	.globl	get_stack_int
	.type	get_stack_int, @function
get_stack_int:
.LFB80:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5084: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5085: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5086: 
	subq	$24, %rsp
 jmp .UNIQUE5087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5087: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5088: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5089: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5090: 
	movl	$0, %r8d
 jmp .UNIQUE5091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5091: 
	movl	$0, %ecx
 jmp .UNIQUE5092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5092: 
	movl	$4, %esi
 jmp .UNIQUE5093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5093: 
	movq	%rax, %rdi
 jmp .UNIQUE5094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5094: 
	call	get_secure_stack_data
 jmp .UNIQUE5095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5095: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE5096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5096: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5097: 
	ret
	.cfi_endproc
.LFE80:
	.size	get_stack_int, .-get_stack_int
	.globl	get_stack_long_int
	.type	get_stack_long_int, @function
get_stack_long_int:
.LFB81:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5098: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5099: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5100: 
	subq	$24, %rsp
 jmp .UNIQUE5101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5101: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5102: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5103: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5104: 
	movl	$0, %r8d
 jmp .UNIQUE5105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5105: 
	movl	$0, %ecx
 jmp .UNIQUE5106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5106: 
	movl	$8, %esi
 jmp .UNIQUE5107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5107: 
	movq	%rax, %rdi
 jmp .UNIQUE5108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5108: 
	call	get_secure_stack_data
 jmp .UNIQUE5109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5109: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5110: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5111: 
	ret
	.cfi_endproc
.LFE81:
	.size	get_stack_long_int, .-get_stack_long_int
	.globl	get_stack_pointer
	.type	get_stack_pointer, @function
get_stack_pointer:
.LFB82:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5112: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5113: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5114: 
	subq	$24, %rsp
 jmp .UNIQUE5115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5115: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5116: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5117: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5118: 
	movl	$0, %r8d
 jmp .UNIQUE5119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5119: 
	movl	$0, %ecx
 jmp .UNIQUE5120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5120: 
	movl	$8, %esi
 jmp .UNIQUE5121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5121: 
	movq	%rax, %rdi
 jmp .UNIQUE5122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5122: 
	call	get_secure_stack_data
 jmp .UNIQUE5123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5123: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5124: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5125: 
	ret
	.cfi_endproc
.LFE82:
	.size	get_stack_pointer, .-get_stack_pointer
	.globl	get_stack_float
	.type	get_stack_float, @function
get_stack_float:
.LFB83:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5126: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5127: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5128: 
	subq	$32, %rsp
 jmp .UNIQUE5129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5129: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5130: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5131: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5132: 
	movl	$0, %r8d
 jmp .UNIQUE5133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5133: 
	movl	$0, %ecx
 jmp .UNIQUE5134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5134: 
	movl	$4, %esi
 jmp .UNIQUE5135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5135: 
	movq	%rax, %rdi
 jmp .UNIQUE5136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5136: 
	call	get_secure_stack_data
 jmp .UNIQUE5137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5137: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE5138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5138: 
	movl	%eax, -28(%rbp)
 jmp .UNIQUE5139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5139: 
	movss	-28(%rbp), %xmm0
 jmp .UNIQUE5140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5140: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5141: 
	ret
	.cfi_endproc
.LFE83:
	.size	get_stack_float, .-get_stack_float
	.globl	get_stack_double
	.type	get_stack_double, @function
get_stack_double:
.LFB84:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5142: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5143: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5144: 
	subq	$32, %rsp
 jmp .UNIQUE5145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5145: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5146: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5147: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5148: 
	movl	$0, %r8d
 jmp .UNIQUE5149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5149: 
	movl	$0, %ecx
 jmp .UNIQUE5150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5150: 
	movl	$8, %esi
 jmp .UNIQUE5151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5151: 
	movq	%rax, %rdi
 jmp .UNIQUE5152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5152: 
	call	get_secure_stack_data
 jmp .UNIQUE5153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5153: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5154: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5155: 
	movsd	-32(%rbp), %xmm0
 jmp .UNIQUE5156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5156: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5157: 
	ret
	.cfi_endproc
.LFE84:
	.size	get_stack_double, .-get_stack_double
	.globl	get_stack_array_element
	.type	get_stack_array_element, @function
get_stack_array_element:
.LFB85:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5158: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5159: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5160: 
	subq	$32, %rsp
 jmp .UNIQUE5161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5161: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5162: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5163: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5164: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE5165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5165: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE5166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5166: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE5167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5167: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE5168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5168: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5169: 
	movq	%rcx, %r8
 jmp .UNIQUE5170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5170: 
	movl	$1, %ecx
 jmp .UNIQUE5171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5171: 
	movq	%rax, %rdi
 jmp .UNIQUE5172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5172: 
	call	get_secure_stack_data
 jmp .UNIQUE5173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5173: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5174: 
	ret
	.cfi_endproc
.LFE85:
	.size	get_stack_array_element, .-get_stack_array_element
	.globl	get_stack_char_array_element
	.type	get_stack_char_array_element, @function
get_stack_char_array_element:
.LFB86:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5175: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5176: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5177: 
	subq	$32, %rsp
 jmp .UNIQUE5178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5178: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5179: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5180: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5181: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5182: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE5183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5183: 
	movq	%rcx, %r8
 jmp .UNIQUE5184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5184: 
	movl	$1, %ecx
 jmp .UNIQUE5185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5185: 
	movl	$1, %esi
 jmp .UNIQUE5186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5186: 
	movq	%rax, %rdi
 jmp .UNIQUE5187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5187: 
	call	get_secure_stack_data
 jmp .UNIQUE5188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5188: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE5189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5189: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5190: 
	ret
	.cfi_endproc
.LFE86:
	.size	get_stack_char_array_element, .-get_stack_char_array_element
	.globl	get_stack_int_array_element
	.type	get_stack_int_array_element, @function
get_stack_int_array_element:
.LFB87:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5191: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5192: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5193: 
	subq	$32, %rsp
 jmp .UNIQUE5194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5194: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5195: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5196: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5197: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5198: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5199: 
	movq	%rcx, %r8
 jmp .UNIQUE5200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5200: 
	movl	$1, %ecx
 jmp .UNIQUE5201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5201: 
	movl	$4, %esi
 jmp .UNIQUE5202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5202: 
	movq	%rax, %rdi
 jmp .UNIQUE5203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5203: 
	call	get_secure_stack_data
 jmp .UNIQUE5204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5204: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE5205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5205: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5206: 
	ret
	.cfi_endproc
.LFE87:
	.size	get_stack_int_array_element, .-get_stack_int_array_element
	.globl	get_stack_long_int_array_element
	.type	get_stack_long_int_array_element, @function
get_stack_long_int_array_element:
.LFB88:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5207: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5208: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5209: 
	subq	$32, %rsp
 jmp .UNIQUE5210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5210: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5211: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5212: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5213: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5214: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5215: 
	movq	%rcx, %r8
 jmp .UNIQUE5216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5216: 
	movl	$1, %ecx
 jmp .UNIQUE5217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5217: 
	movl	$8, %esi
 jmp .UNIQUE5218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5218: 
	movq	%rax, %rdi
 jmp .UNIQUE5219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5219: 
	call	get_secure_stack_data
 jmp .UNIQUE5220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5220: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5221: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5222: 
	ret
	.cfi_endproc
.LFE88:
	.size	get_stack_long_int_array_element, .-get_stack_long_int_array_element
	.globl	get_stack_pointer_array_element
	.type	get_stack_pointer_array_element, @function
get_stack_pointer_array_element:
.LFB89:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5223: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5224: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5225: 
	subq	$32, %rsp
 jmp .UNIQUE5226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5226: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5227: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5228: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5229: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5230: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5231: 
	movq	%rcx, %r8
 jmp .UNIQUE5232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5232: 
	movl	$1, %ecx
 jmp .UNIQUE5233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5233: 
	movl	$8, %esi
 jmp .UNIQUE5234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5234: 
	movq	%rax, %rdi
 jmp .UNIQUE5235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5235: 
	call	get_secure_stack_data
 jmp .UNIQUE5236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5236: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5237: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5238: 
	ret
	.cfi_endproc
.LFE89:
	.size	get_stack_pointer_array_element, .-get_stack_pointer_array_element
	.globl	get_stack_float_array_element
	.type	get_stack_float_array_element, @function
get_stack_float_array_element:
.LFB90:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5239: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5240: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5241: 
	subq	$40, %rsp
 jmp .UNIQUE5242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5242: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5243: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5244: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5245: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5246: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5247: 
	movq	%rcx, %r8
 jmp .UNIQUE5248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5248: 
	movl	$1, %ecx
 jmp .UNIQUE5249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5249: 
	movl	$4, %esi
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
	call	get_secure_stack_data
 jmp .UNIQUE5252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5252: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE5253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5253: 
	movl	%eax, -36(%rbp)
 jmp .UNIQUE5254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5254: 
	movss	-36(%rbp), %xmm0
 jmp .UNIQUE5255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5255: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5256: 
	ret
	.cfi_endproc
.LFE90:
	.size	get_stack_float_array_element, .-get_stack_float_array_element
	.globl	get_stack_double_array_element
	.type	get_stack_double_array_element, @function
get_stack_double_array_element:
.LFB91:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5257: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5258: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5259: 
	subq	$40, %rsp
 jmp .UNIQUE5260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5260: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5261: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5262: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5263: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5264: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5265: 
	movq	%rcx, %r8
 jmp .UNIQUE5266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5266: 
	movl	$1, %ecx
 jmp .UNIQUE5267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5267: 
	movl	$8, %esi
 jmp .UNIQUE5268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5268: 
	movq	%rax, %rdi
 jmp .UNIQUE5269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5269: 
	call	get_secure_stack_data
 jmp .UNIQUE5270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5270: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5271: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE5272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5272: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE5273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5273: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5274: 
	ret
	.cfi_endproc
.LFE91:
	.size	get_stack_double_array_element, .-get_stack_double_array_element
	.globl	get_arbitrary_block_in_stack
	.type	get_arbitrary_block_in_stack, @function
get_arbitrary_block_in_stack:
.LFB92:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5275: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5276: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5277: 
	subq	$24, %rsp
 jmp .UNIQUE5278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5278: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5279: 
	movq	%rsi, -16(%rbp)
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
	movq	-16(%rbp), %rdx
 jmp .UNIQUE5282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5282: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE5283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5283: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5284: 
	movl	$0, %r8d
 jmp .UNIQUE5285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5285: 
	movl	$0, %ecx
 jmp .UNIQUE5286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5286: 
	movq	%rax, %rdi
 jmp .UNIQUE5287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5287: 
	call	get_secure_stack_data
 jmp .UNIQUE5288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5288: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5289: 
	ret
	.cfi_endproc
.LFE92:
	.size	get_arbitrary_block_in_stack, .-get_arbitrary_block_in_stack
	.globl	set_stack_char
	.type	set_stack_char, @function
set_stack_char:
.LFB93:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5290: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5291: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5292: 
	subq	$16, %rsp
 jmp .UNIQUE5293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5293: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5294: 
	movl	%esi, %eax
 jmp .UNIQUE5295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5295: 
	movb	%al, -12(%rbp)
 jmp .UNIQUE5296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5296: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5297: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE5298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5298: 
	movq	%rax, %rsi
 jmp .UNIQUE5299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5299: 
	movl	$1, %edi
 jmp .UNIQUE5300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5300: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE5301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5301: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5302: 
	ret
	.cfi_endproc
.LFE93:
	.size	set_stack_char, .-set_stack_char
	.globl	set_stack_int
	.type	set_stack_int, @function
set_stack_int:
.LFB94:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5303: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5304: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5305: 
	subq	$16, %rsp
 jmp .UNIQUE5306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5306: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5307: 
	movl	%esi, -12(%rbp)
 jmp .UNIQUE5308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5308: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5309: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE5310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5310: 
	movq	%rax, %rsi
 jmp .UNIQUE5311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5311: 
	movl	$4, %edi
 jmp .UNIQUE5312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5312: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE5313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5313: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5314: 
	ret
	.cfi_endproc
.LFE94:
	.size	set_stack_int, .-set_stack_int
	.globl	set_stack_long_int
	.type	set_stack_long_int, @function
set_stack_long_int:
.LFB95:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5315: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5316: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5317: 
	subq	$16, %rsp
 jmp .UNIQUE5318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5318: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5319: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5320: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5321: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5322: 
	movq	%rax, %rsi
 jmp .UNIQUE5323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5323: 
	movl	$8, %edi
 jmp .UNIQUE5324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5324: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE5325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5325: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5326: 
	ret
	.cfi_endproc
.LFE95:
	.size	set_stack_long_int, .-set_stack_long_int
	.globl	set_stack_pointer
	.type	set_stack_pointer, @function
set_stack_pointer:
.LFB96:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5327: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5328: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5329: 
	subq	$16, %rsp
 jmp .UNIQUE5330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5330: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5331: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5332: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5333: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5334: 
	movq	%rax, %rsi
 jmp .UNIQUE5335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5335: 
	movl	$8, %edi
 jmp .UNIQUE5336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5336: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE5337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5337: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5338: 
	ret
	.cfi_endproc
.LFE96:
	.size	set_stack_pointer, .-set_stack_pointer
	.globl	set_stack_float
	.type	set_stack_float, @function
set_stack_float:
.LFB97:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5339: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5340: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5341: 
	subq	$16, %rsp
 jmp .UNIQUE5342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5342: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5343: 
	movss	%xmm0, -12(%rbp)
 jmp .UNIQUE5344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5344: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5345: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE5346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5346: 
	movq	%rax, %rsi
 jmp .UNIQUE5347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5347: 
	movl	$4, %edi
 jmp .UNIQUE5348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5348: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE5349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5349: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5350: 
	ret
	.cfi_endproc
.LFE97:
	.size	set_stack_float, .-set_stack_float
	.globl	set_stack_double
	.type	set_stack_double, @function
set_stack_double:
.LFB98:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5351: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5352: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5353: 
	subq	$16, %rsp
 jmp .UNIQUE5354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5354: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5355: 
	movsd	%xmm0, -16(%rbp)
 jmp .UNIQUE5356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5356: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5357: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5358: 
	movq	%rax, %rsi
 jmp .UNIQUE5359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5359: 
	movl	$8, %edi
 jmp .UNIQUE5360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5360: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE5361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5361: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5362: 
	ret
	.cfi_endproc
.LFE98:
	.size	set_stack_double, .-set_stack_double
	.globl	set_stack_array_element
	.type	set_stack_array_element, @function
set_stack_array_element:
.LFB99:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5363: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5364: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5365: 
	subq	$32, %rsp
 jmp .UNIQUE5366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5366: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5367: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5368: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5369: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE5370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5370: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE5371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5371: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE5372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5372: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE5373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5373: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5374: 
	movq	%rcx, %r8
 jmp .UNIQUE5375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5375: 
	movl	$1, %ecx
 jmp .UNIQUE5376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5376: 
	movq	%rax, %rdi
 jmp .UNIQUE5377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5377: 
	call	set_secure_stack_data
 jmp .UNIQUE5378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5378: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5379: 
	ret
	.cfi_endproc
.LFE99:
	.size	set_stack_array_element, .-set_stack_array_element
	.globl	set_stack_char_array_element
	.type	set_stack_char_array_element, @function
set_stack_char_array_element:
.LFB100:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5380: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5381: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5382: 
	subq	$40, %rsp
 jmp .UNIQUE5383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5383: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5384: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5385: 
	movl	%edx, %eax
 jmp .UNIQUE5386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5386: 
	movb	%al, -36(%rbp)
 jmp .UNIQUE5387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5387: 
	movzbl	-36(%rbp), %eax
 jmp .UNIQUE5388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5388: 
	movb	%al, -1(%rbp)
 jmp .UNIQUE5389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5389: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5390: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5391: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE5392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5392: 
	movq	%rcx, %r8
 jmp .UNIQUE5393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5393: 
	movl	$1, %ecx
 jmp .UNIQUE5394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5394: 
	movl	$1, %esi
 jmp .UNIQUE5395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5395: 
	movq	%rax, %rdi
 jmp .UNIQUE5396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5396: 
	call	set_secure_stack_data
 jmp .UNIQUE5397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5397: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5398: 
	ret
	.cfi_endproc
.LFE100:
	.size	set_stack_char_array_element, .-set_stack_char_array_element
	.globl	set_stack_int_array_element
	.type	set_stack_int_array_element, @function
set_stack_int_array_element:
.LFB101:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5399: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5400: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5401: 
	subq	$40, %rsp
 jmp .UNIQUE5402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5402: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5403: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5404: 
	movl	%edx, -36(%rbp)
 jmp .UNIQUE5405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5405: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE5406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5406: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE5407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5407: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5408: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5409: 
	leaq	-4(%rbp), %rax
 jmp .UNIQUE5410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5410: 
	movq	%rcx, %r8
 jmp .UNIQUE5411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5411: 
	movl	$1, %ecx
 jmp .UNIQUE5412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5412: 
	movl	$4, %esi
 jmp .UNIQUE5413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5413: 
	movq	%rax, %rdi
 jmp .UNIQUE5414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5414: 
	call	set_secure_stack_data
 jmp .UNIQUE5415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5415: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5416: 
	ret
	.cfi_endproc
.LFE101:
	.size	set_stack_int_array_element, .-set_stack_int_array_element
	.globl	set_stack_long_int_array_element
	.type	set_stack_long_int_array_element, @function
set_stack_long_int_array_element:
.LFB102:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5417: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5418: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5419: 
	subq	$40, %rsp
 jmp .UNIQUE5420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5420: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5421: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5422: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE5423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5423: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE5424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5424: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE5425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5425: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5426: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5427: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE5428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5428: 
	movq	%rcx, %r8
 jmp .UNIQUE5429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5429: 
	movl	$1, %ecx
 jmp .UNIQUE5430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5430: 
	movl	$8, %esi
 jmp .UNIQUE5431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5431: 
	movq	%rax, %rdi
 jmp .UNIQUE5432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5432: 
	call	set_secure_stack_data
 jmp .UNIQUE5433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5433: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5434: 
	ret
	.cfi_endproc
.LFE102:
	.size	set_stack_long_int_array_element, .-set_stack_long_int_array_element
	.globl	set_stack_pointer_array_element
	.type	set_stack_pointer_array_element, @function
set_stack_pointer_array_element:
.LFB103:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5435: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5436: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5437: 
	subq	$40, %rsp
 jmp .UNIQUE5438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5438: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5439: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5440: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE5441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5441: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE5442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5442: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE5443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5443: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5444: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5445: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE5446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5446: 
	movq	%rcx, %r8
 jmp .UNIQUE5447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5447: 
	movl	$1, %ecx
 jmp .UNIQUE5448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5448: 
	movl	$8, %esi
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
	call	set_secure_stack_data
 jmp .UNIQUE5451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5451: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5452: 
	ret
	.cfi_endproc
.LFE103:
	.size	set_stack_pointer_array_element, .-set_stack_pointer_array_element
	.globl	set_stack_float_array_element
	.type	set_stack_float_array_element, @function
set_stack_float_array_element:
.LFB104:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5453: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5454: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5455: 
	subq	$40, %rsp
 jmp .UNIQUE5456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5456: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5457: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5458: 
	movss	%xmm0, -36(%rbp)
 jmp .UNIQUE5459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5459: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE5460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5460: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE5461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5461: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5462: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5463: 
	leaq	-4(%rbp), %rax
 jmp .UNIQUE5464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5464: 
	movq	%rcx, %r8
 jmp .UNIQUE5465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5465: 
	movl	$1, %ecx
 jmp .UNIQUE5466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5466: 
	movl	$4, %esi
 jmp .UNIQUE5467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5467: 
	movq	%rax, %rdi
 jmp .UNIQUE5468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5468: 
	call	set_secure_stack_data
 jmp .UNIQUE5469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5469: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5470: 
	ret
	.cfi_endproc
.LFE104:
	.size	set_stack_float_array_element, .-set_stack_float_array_element
	.globl	set_stack_double_array_element
	.type	set_stack_double_array_element, @function
set_stack_double_array_element:
.LFB105:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5471: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5472: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5473: 
	subq	$40, %rsp
 jmp .UNIQUE5474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5474: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5475: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5476: 
	movsd	%xmm0, -40(%rbp)
 jmp .UNIQUE5477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5477: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE5478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5478: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE5479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5479: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5480: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5481: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE5482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5482: 
	movq	%rcx, %r8
 jmp .UNIQUE5483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5483: 
	movl	$1, %ecx
 jmp .UNIQUE5484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5484: 
	movl	$8, %esi
 jmp .UNIQUE5485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5485: 
	movq	%rax, %rdi
 jmp .UNIQUE5486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5486: 
	call	set_secure_stack_data
 jmp .UNIQUE5487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5487: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5488: 
	ret
	.cfi_endproc
.LFE105:
	.size	set_stack_double_array_element, .-set_stack_double_array_element
	.globl	set_arbitrary_block_in_stack
	.type	set_arbitrary_block_in_stack, @function
set_arbitrary_block_in_stack:
.LFB106:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5489: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5490: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5491: 
	subq	$24, %rsp
 jmp .UNIQUE5492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5492: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5493: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5494: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5495: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE5496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5496: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE5497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5497: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5498: 
	movl	$0, %r8d
 jmp .UNIQUE5499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5499: 
	movl	$0, %ecx
 jmp .UNIQUE5500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5500: 
	movq	%rax, %rdi
 jmp .UNIQUE5501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5501: 
	call	set_secure_stack_data
 jmp .UNIQUE5502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5502: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5503: 
	ret
	.cfi_endproc
.LFE106:
	.size	set_arbitrary_block_in_stack, .-set_arbitrary_block_in_stack
	.section	.rodata
.LC76:
	.string	"Allocating double array"
.LC77:
	.string	"Initializing fun params"
	.align 8
.LC80:
	.string	"Inserting fun params into secure stack"
.LC81:
	.string	"Printing chars"
.LC82:
	.string	"%c "
.LC83:
	.string	"Printing ints"
.LC84:
	.string	"Printing doubles"
.LC85:
	.string	"%lf "
.LC86:
	.string	"Changing pointer"
.LC87:
	.string	"Printing array of doubles"
.LC88:
	.string	"i=%d, %lf "
	.align 8
.LC89:
	.string	"Fetching double array using arbitrary block"
	.text
	.globl	stack_fun_params_test
	.type	stack_fun_params_test, @function
stack_fun_params_test:
.LFB107:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5504: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5505: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5506: 
	subq	$160, %rsp
 jmp .UNIQUE5507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5507: 
	movl	$.LC76, %edi
 jmp .UNIQUE5508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5508: 
	call	puts
 jmp .UNIQUE5509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5509: 
	movl	$9, %edx
 jmp .UNIQUE5510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5510: 
	movl	$__func__.4651, %esi
 jmp .UNIQUE5511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5511: 
	movl	$80, %edi
 jmp .UNIQUE5512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5512: 
	call	error_checking_malloc
 jmp .UNIQUE5513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5513: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE5514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5514: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE5515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5515: 
	jmp	.L501
.L502:
 jmp .UNIQUE5516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5516: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE5517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5517: 
	cltq
 jmp .UNIQUE5518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5518: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE5519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5519: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5520: 
	addq	%rdx, %rax
 jmp .UNIQUE5521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5521: 
	movl	-20(%rbp), %edx
 jmp .UNIQUE5522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5522: 
	addl	$100, %edx
 jmp .UNIQUE5523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5523: 
	cvtsi2sd	%edx, %xmm0
 jmp .UNIQUE5524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5524: 
	movsd	%xmm0, (%rax)
 jmp .UNIQUE5525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5525: 
	addl	$1, -20(%rbp)
.L501:
 jmp .UNIQUE5526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5526: 
	cmpl	$9, -20(%rbp)
 jmp .UNIQUE5527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5527: 
	jle	.L502
 jmp .UNIQUE5528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5528: 
	movl	$.LC77, %edi
 jmp .UNIQUE5529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5529: 
	call	puts
 jmp .UNIQUE5530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5530: 
	movabsq	$4633156929650876744, %rdx
 jmp .UNIQUE5531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5531: 
	movabsq	$4631166901565532406, %rax
 jmp .UNIQUE5532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5532: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE5533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5533: 
	movq	%rcx, 104(%rsp)
 jmp .UNIQUE5534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5534: 
	movq	$80, 96(%rsp)
 jmp .UNIQUE5535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5535: 
	movq	$1, 88(%rsp)
 jmp .UNIQUE5536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5536: 
	movl	$424242, 80(%rsp)
 jmp .UNIQUE5537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5537: 
	movq	$100, 72(%rsp)
 jmp .UNIQUE5538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5538: 
	movq	$1, 64(%rsp)
 jmp .UNIQUE5539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5539: 
	movq	$2, 56(%rsp)
 jmp .UNIQUE5540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5540: 
	movq	$0, 48(%rsp)
 jmp .UNIQUE5541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5541: 
	movq	$0, 40(%rsp)
 jmp .UNIQUE5542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5542: 
	movl	$41, 32(%rsp)
 jmp .UNIQUE5543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5543: 
	movl	$42, 24(%rsp)
 jmp .UNIQUE5544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5544: 
	movq	$2, 16(%rsp)
 jmp .UNIQUE5545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5545: 
	movl	$103, 8(%rsp)
 jmp .UNIQUE5546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5546: 
	movl	$102, (%rsp)
 jmp .UNIQUE5547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5547: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE5548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5548: 
	movsd	-40(%rbp), %xmm1
 jmp .UNIQUE5549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5549: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE5550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5550: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE5551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5551: 
	movl	$101, %r9d
 jmp .UNIQUE5552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5552: 
	movl	$100, %r8d
 jmp .UNIQUE5553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5553: 
	movl	$99, %ecx
 jmp .UNIQUE5554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5554: 
	movl	$5, %edx
 jmp .UNIQUE5555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5555: 
	movl	$0, %esi
 jmp .UNIQUE5556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5556: 
	movl	$1, %edi
 jmp .UNIQUE5557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5557: 
	movl	$2, %eax
 jmp .UNIQUE5558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5558: 
	call	init_function_params
 jmp .UNIQUE5559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5559: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE5560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5560: 
	movl	$.LC80, %edi
 jmp .UNIQUE5561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5561: 
	call	puts
 jmp .UNIQUE5562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5562: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5563: 
	movq	%rax, %rdi
 jmp .UNIQUE5564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5564: 
	call	put_fun_params_into_secure_stack_and_free
 jmp .UNIQUE5565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5565: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE5566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5566: 
	movl	$.LC81, %edi
 jmp .UNIQUE5567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5567: 
	call	puts
 jmp .UNIQUE5568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5568: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE5569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5569: 
	jmp	.L503
.L504:
 jmp .UNIQUE5570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5570: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE5571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5571: 
	movslq	%eax, %rdx
 jmp .UNIQUE5572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5572: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5573: 
	movq	8(%rax), %rax
 jmp .UNIQUE5574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5574: 
	movq	8(%rax), %rax
 jmp .UNIQUE5575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5575: 
	movq	%rdx, %rsi
 jmp .UNIQUE5576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5576: 
	movq	%rax, %rdi
 jmp .UNIQUE5577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5577: 
	call	get_stack_char_array_element
 jmp .UNIQUE5578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5578: 
	movsbl	%al, %eax
 jmp .UNIQUE5579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5579: 
	movl	%eax, %esi
 jmp .UNIQUE5580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5580: 
	movl	$.LC82, %edi
 jmp .UNIQUE5581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5581: 
	movl	$0, %eax
 jmp .UNIQUE5582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5582: 
	call	printf
 jmp .UNIQUE5583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5583: 
	addl	$1, -20(%rbp)
.L503:
 jmp .UNIQUE5584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5584: 
	cmpl	$4, -20(%rbp)
 jmp .UNIQUE5585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5585: 
	jle	.L504
 jmp .UNIQUE5586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5586: 
	movl	$10, %edi
 jmp .UNIQUE5587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5587: 
	call	putchar
 jmp .UNIQUE5588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5588: 
	movl	$.LC83, %edi
 jmp .UNIQUE5589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5589: 
	call	puts
 jmp .UNIQUE5590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5590: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE5591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5591: 
	jmp	.L505
.L506:
 jmp .UNIQUE5592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5592: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE5593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5593: 
	movslq	%eax, %rdx
 jmp .UNIQUE5594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5594: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5595: 
	movq	8(%rax), %rax
 jmp .UNIQUE5596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5596: 
	movq	24(%rax), %rax
 jmp .UNIQUE5597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5597: 
	movq	%rdx, %rsi
 jmp .UNIQUE5598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5598: 
	movq	%rax, %rdi
 jmp .UNIQUE5599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5599: 
	call	get_stack_int_array_element
 jmp .UNIQUE5600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5600: 
	movl	%eax, %esi
 jmp .UNIQUE5601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5601: 
	movl	$.LC21, %edi
 jmp .UNIQUE5602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5602: 
	movl	$0, %eax
 jmp .UNIQUE5603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5603: 
	call	printf
 jmp .UNIQUE5604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5604: 
	addl	$1, -20(%rbp)
.L505:
 jmp .UNIQUE5605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5605: 
	cmpl	$1, -20(%rbp)
 jmp .UNIQUE5606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5606: 
	jle	.L506
 jmp .UNIQUE5607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5607: 
	movl	$10, %edi
 jmp .UNIQUE5608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5608: 
	call	putchar
 jmp .UNIQUE5609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5609: 
	movl	$.LC84, %edi
 jmp .UNIQUE5610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5610: 
	call	puts
 jmp .UNIQUE5611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5611: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE5612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5612: 
	jmp	.L507
.L508:
 jmp .UNIQUE5613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5613: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE5614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5614: 
	movslq	%eax, %rdx
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
	movq	8(%rax), %rax
 jmp .UNIQUE5617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5617: 
	movq	72(%rax), %rax
 jmp .UNIQUE5618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5618: 
	movq	%rdx, %rsi
 jmp .UNIQUE5619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5619: 
	movq	%rax, %rdi
 jmp .UNIQUE5620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5620: 
	call	get_stack_double_array_element
 jmp .UNIQUE5621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5621: 
	movsd	%xmm0, -40(%rbp)
 jmp .UNIQUE5622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5622: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE5623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5623: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE5624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5624: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE5625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5625: 
	movl	$.LC85, %edi
 jmp .UNIQUE5626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5626: 
	movl	$1, %eax
 jmp .UNIQUE5627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5627: 
	call	printf
 jmp .UNIQUE5628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5628: 
	addl	$1, -20(%rbp)
.L507:
 jmp .UNIQUE5629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5629: 
	cmpl	$1, -20(%rbp)
 jmp .UNIQUE5630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5630: 
	jle	.L508
 jmp .UNIQUE5631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5631: 
	movl	$10, %edi
 jmp .UNIQUE5632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5632: 
	call	putchar
 jmp .UNIQUE5633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5633: 
	movl	$.LC86, %edi
 jmp .UNIQUE5634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5634: 
	call	puts
 jmp .UNIQUE5635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5635: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5636: 
	movq	8(%rax), %rax
 jmp .UNIQUE5637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5637: 
	movq	24(%rax), %rdx
 jmp .UNIQUE5638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5638: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5639: 
	movq	8(%rax), %rax
 jmp .UNIQUE5640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5640: 
	movq	96(%rax), %rax
 jmp .UNIQUE5641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5641: 
	movl	$0, %esi
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
	call	set_stack_pointer_array_element
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
	movq	8(%rax), %rax
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
	movl	$0, %esi
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
	call	get_stack_pointer_array_element
 jmp .UNIQUE5650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5650: 
	movl	$45, %edx
 jmp .UNIQUE5651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5651: 
	movl	$0, %esi
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
	call	set_stack_int_array_element
 jmp .UNIQUE5654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5654: 
	movl	$.LC83, %edi
 jmp .UNIQUE5655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5655: 
	call	puts
 jmp .UNIQUE5656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5656: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE5657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5657: 
	jmp	.L509
.L510:
 jmp .UNIQUE5658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5658: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE5659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5659: 
	movslq	%eax, %rdx
 jmp .UNIQUE5660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5660: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5661: 
	movq	8(%rax), %rax
 jmp .UNIQUE5662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5662: 
	movq	24(%rax), %rax
 jmp .UNIQUE5663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5663: 
	movq	%rdx, %rsi
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
	call	get_stack_int_array_element
 jmp .UNIQUE5666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5666: 
	movl	%eax, %esi
 jmp .UNIQUE5667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5667: 
	movl	$.LC21, %edi
 jmp .UNIQUE5668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5668: 
	movl	$0, %eax
 jmp .UNIQUE5669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5669: 
	call	printf
 jmp .UNIQUE5670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5670: 
	addl	$1, -20(%rbp)
.L509:
 jmp .UNIQUE5671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5671: 
	cmpl	$1, -20(%rbp)
 jmp .UNIQUE5672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5672: 
	jle	.L510
 jmp .UNIQUE5673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5673: 
	movl	$10, %edi
 jmp .UNIQUE5674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5674: 
	call	putchar
 jmp .UNIQUE5675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5675: 
	movl	$.LC87, %edi
 jmp .UNIQUE5676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5676: 
	call	puts
 jmp .UNIQUE5677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5677: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE5678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5678: 
	jmp	.L511
.L512:
 jmp .UNIQUE5679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5679: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE5680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5680: 
	movslq	%eax, %rdx
 jmp .UNIQUE5681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5681: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5682: 
	movq	8(%rax), %rax
 jmp .UNIQUE5683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5683: 
	movq	120(%rax), %rax
 jmp .UNIQUE5684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5684: 
	movq	(%rax), %rax
 jmp .UNIQUE5685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5685: 
	movq	%rdx, %rsi
 jmp .UNIQUE5686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5686: 
	movq	%rax, %rdi
 jmp .UNIQUE5687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5687: 
	call	get_stack_double_array_element
 jmp .UNIQUE5688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5688: 
	movsd	%xmm0, -40(%rbp)
 jmp .UNIQUE5689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5689: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE5690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5690: 
	movl	-20(%rbp), %edx
 jmp .UNIQUE5691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5691: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE5692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5692: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE5693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5693: 
	movl	%edx, %esi
 jmp .UNIQUE5694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5694: 
	movl	$.LC88, %edi
 jmp .UNIQUE5695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5695: 
	movl	$1, %eax
 jmp .UNIQUE5696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5696: 
	call	printf
 jmp .UNIQUE5697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5697: 
	addl	$1, -20(%rbp)
.L511:
 jmp .UNIQUE5698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5698: 
	cmpl	$9, -20(%rbp)
 jmp .UNIQUE5699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5699: 
	jle	.L512
 jmp .UNIQUE5700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5700: 
	movl	$.LC89, %edi
 jmp .UNIQUE5701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5701: 
	call	puts
 jmp .UNIQUE5702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5702: 
	movl	$55, %edx
 jmp .UNIQUE5703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5703: 
	movl	$__func__.4651, %esi
 jmp .UNIQUE5704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5704: 
	movl	$80, %edi
 jmp .UNIQUE5705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5705: 
	call	error_checking_malloc
 jmp .UNIQUE5706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5706: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE5707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5707: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5708: 
	movq	8(%rax), %rax
 jmp .UNIQUE5709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5709: 
	movq	120(%rax), %rax
 jmp .UNIQUE5710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5710: 
	movq	(%rax), %rax
 jmp .UNIQUE5711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5711: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE5712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5712: 
	movq	%rax, %rsi
 jmp .UNIQUE5713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5713: 
	movl	$80, %edi
 jmp .UNIQUE5714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5714: 
	call	get_arbitrary_block_in_stack
 jmp .UNIQUE5715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5715: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE5716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5716: 
	jmp	.L513
.L514:
 jmp .UNIQUE5717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5717: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE5718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5718: 
	cltq
 jmp .UNIQUE5719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5719: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE5720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5720: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5721: 
	addq	%rdx, %rax
 jmp .UNIQUE5722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5722: 
	movq	(%rax), %rax
 jmp .UNIQUE5723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5723: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE5724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5724: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE5725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5725: 
	movl	$.LC68, %edi
 jmp .UNIQUE5726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5726: 
	movl	$1, %eax
 jmp .UNIQUE5727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5727: 
	call	printf
 jmp .UNIQUE5728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5728: 
	addl	$1, -20(%rbp)
.L513:
 jmp .UNIQUE5729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5729: 
	cmpl	$9, -20(%rbp)
 jmp .UNIQUE5730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5730: 
	jle	.L514
 jmp .UNIQUE5731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5731: 
	movl	$10, %edi
 jmp .UNIQUE5732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5732: 
	call	putchar
 jmp .UNIQUE5733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5733: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5734: 
	ret
	.cfi_endproc
.LFE107:
	.size	stack_fun_params_test, .-stack_fun_params_test
	.comm	sa,152,32
	.globl	check_next_canaries
	.type	check_next_canaries, @function
check_next_canaries:
.LFB108:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5735: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5736: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
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
	movl	$0, -4(%rbp)
 jmp .UNIQUE5739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5739: 
	jmp	.L516
.L519:
 jmp .UNIQUE5740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5740: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE5741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5741: 
	movslq	%eax, %rdx
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
	addq	%rdx, %rax
 jmp .UNIQUE5744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5744: 
	movzbl	(%rax), %eax
 jmp .UNIQUE5745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5745: 
	cmpb	$66, %al
 jmp .UNIQUE5746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5746: 
	je	.L517
 jmp .UNIQUE5747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5747: 
	movl	$0, %eax
 jmp .UNIQUE5748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5748: 
	jmp	.L518
.L517:
 jmp .UNIQUE5749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5749: 
	addl	$1, -4(%rbp)
.L516:
 jmp .UNIQUE5750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5750: 
	cmpl	$1, -4(%rbp)
 jmp .UNIQUE5751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5751: 
	jle	.L519
 jmp .UNIQUE5752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5752: 
	movl	$1, %eax
.L518:
 jmp .UNIQUE5753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5753: 
	popq	%rbp
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
.LFE108:
	.size	check_next_canaries, .-check_next_canaries
	.section	.rodata
.LC90:
	.string	"key no%d=0x%02x\n"
	.text
	.globl	find_keyshares
	.type	find_keyshares, @function
find_keyshares:
.LFB109:
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
	subq	$112, %rsp
 jmp .UNIQUE5758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5758: 
	movq	%fs:40, %rax
 jmp .UNIQUE5759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5759: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE5760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5760: 
	xorl	%eax, %eax
 jmp .UNIQUE5761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5761: 
	movl	$0, -92(%rbp)
 jmp .UNIQUE5762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5762: 
	movq	$foo, -64(%rbp)
 jmp .UNIQUE5763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5763: 
	movq	$main, -56(%rbp)
 jmp .UNIQUE5764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5764: 
	movq	$foo2, -48(%rbp)
 jmp .UNIQUE5765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5765: 
	movq	$find_keyshares, -40(%rbp)
 jmp .UNIQUE5766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5766: 
	movl	$0, -96(%rbp)
 jmp .UNIQUE5767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5767: 
	movq	$__executable_start, -32(%rbp)
 jmp .UNIQUE5768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5768: 
	movq	$__etext, -24(%rbp)
 jmp .UNIQUE5769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5769: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE5770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5770: 
	jmp	.L521
.L522:
 jmp .UNIQUE5771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5771: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE5772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5772: 
	cltq
 jmp .UNIQUE5773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5773: 
	movb	$0, -16(%rbp,%rax)
 jmp .UNIQUE5774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5774: 
	addl	$1, -100(%rbp)
.L521:
 jmp .UNIQUE5775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5775: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE5776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5776: 
	jle	.L522
 jmp .UNIQUE5777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5777: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5778: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE5779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5779: 
	jmp	.L523
.L527:
 jmp .UNIQUE5780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5780: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5781: 
	movzbl	(%rax), %eax
 jmp .UNIQUE5782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5782: 
	cmpb	$-21, %al
 jmp .UNIQUE5783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5783: 
	jne	.L524
 jmp .UNIQUE5784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5784: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5785: 
	addq	$1, %rax
 jmp .UNIQUE5786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5786: 
	movzbl	(%rax), %eax
 jmp .UNIQUE5787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5787: 
	cmpb	$7, %al
 jmp .UNIQUE5788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5788: 
	jne	.L524
 jmp .UNIQUE5789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5789: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5790: 
	addq	$2, %rax
 jmp .UNIQUE5791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5791: 
	movq	%rax, %rdi
 jmp .UNIQUE5792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5792: 
	call	check_next_canaries
 jmp .UNIQUE5793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5793: 
	testl	%eax, %eax
 jmp .UNIQUE5794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5794: 
	je	.L524
 jmp .UNIQUE5795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5795: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE5796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5796: 
	jmp	.L525
.L526:
 jmp .UNIQUE5797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5797: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE5798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5798: 
	cltq
 jmp .UNIQUE5799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5799: 
	movzbl	-16(%rbp,%rax), %edx
 jmp .UNIQUE5800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5800: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE5801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5801: 
	cltq
 jmp .UNIQUE5802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5802: 
	leaq	4(%rax), %rcx
 jmp .UNIQUE5803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5803: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5804: 
	addq	%rcx, %rax
 jmp .UNIQUE5805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5805: 
	movzbl	(%rax), %eax
 jmp .UNIQUE5806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5806: 
	xorl	%eax, %edx
 jmp .UNIQUE5807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5807: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE5808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5808: 
	cltq
 jmp .UNIQUE5809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5809: 
	movb	%dl, -16(%rbp,%rax)
 jmp .UNIQUE5810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5810: 
	addl	$1, -100(%rbp)
.L525:
 jmp .UNIQUE5811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5811: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE5812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5812: 
	jle	.L526
.L524:
 jmp .UNIQUE5813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5813: 
	addq	$1, -88(%rbp)
.L523:
 jmp .UNIQUE5814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5814: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5815: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE5816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5816: 
	jbe	.L527
 jmp .UNIQUE5817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5817: 
	movl	$0, -96(%rbp)
 jmp .UNIQUE5818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5818: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE5819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5819: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE5820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5820: 
	movq	$0, -80(%rbp)
 jmp .UNIQUE5821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5821: 
	jmp	.L528
.L532:
 jmp .UNIQUE5822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5822: 
	cmpl	$0, -96(%rbp)
 jmp .UNIQUE5823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5823: 
	jne	.L529
 jmp .UNIQUE5824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5824: 
	addq	$4, -80(%rbp)
 jmp .UNIQUE5825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5825: 
	movl	$1, -96(%rbp)
 jmp .UNIQUE5826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5826: 
	jmp	.L528
.L529:
 jmp .UNIQUE5827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5827: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE5828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5828: 
	jmp	.L530
.L531:
 jmp .UNIQUE5829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5829: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE5830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5830: 
	cltq
 jmp .UNIQUE5831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5831: 
	movzbl	-16(%rbp,%rax), %edx
 jmp .UNIQUE5832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5832: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE5833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5833: 
	movslq	%eax, %rcx
 jmp .UNIQUE5834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5834: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE5835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5835: 
	addq	%rax, %rcx
 jmp .UNIQUE5836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5836: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5837: 
	addq	%rcx, %rax
 jmp .UNIQUE5838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5838: 
	movzbl	(%rax), %eax
 jmp .UNIQUE5839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5839: 
	xorl	%eax, %edx
 jmp .UNIQUE5840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5840: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE5841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5841: 
	cltq
 jmp .UNIQUE5842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5842: 
	movb	%dl, -16(%rbp,%rax)
 jmp .UNIQUE5843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5843: 
	addl	$1, -100(%rbp)
.L530:
 jmp .UNIQUE5844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5844: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE5845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5845: 
	jle	.L531
 jmp .UNIQUE5846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5846: 
	addq	$5, -80(%rbp)
 jmp .UNIQUE5847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5847: 
	movl	$0, -96(%rbp)
.L528:
 jmp .UNIQUE5848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5848: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE5849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5849: 
	cmpq	%rax, -80(%rbp)
 jmp .UNIQUE5850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5850: 
	jl	.L532
 jmp .UNIQUE5851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5851: 
	movl	$0, -96(%rbp)
 jmp .UNIQUE5852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5852: 
	movq	entire_stack_memory_chunk(%rip), %rax
 jmp .UNIQUE5853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5853: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE5854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5854: 
	movq	$0, -72(%rbp)
 jmp .UNIQUE5855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5855: 
	jmp	.L533
.L537:
 jmp .UNIQUE5856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5856: 
	cmpl	$0, -96(%rbp)
 jmp .UNIQUE5857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5857: 
	jne	.L534
 jmp .UNIQUE5858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5858: 
	addq	$3, -72(%rbp)
 jmp .UNIQUE5859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5859: 
	movl	$1, -96(%rbp)
 jmp .UNIQUE5860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5860: 
	jmp	.L533
.L534:
 jmp .UNIQUE5861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5861: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE5862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5862: 
	jmp	.L535
.L536:
 jmp .UNIQUE5863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5863: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE5864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5864: 
	cltq
 jmp .UNIQUE5865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5865: 
	movzbl	-16(%rbp,%rax), %edx
 jmp .UNIQUE5866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5866: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE5867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5867: 
	movslq	%eax, %rcx
 jmp .UNIQUE5868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5868: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE5869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5869: 
	addq	%rax, %rcx
 jmp .UNIQUE5870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5870: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5871: 
	addq	%rcx, %rax
 jmp .UNIQUE5872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5872: 
	movzbl	(%rax), %eax
 jmp .UNIQUE5873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5873: 
	xorl	%eax, %edx
 jmp .UNIQUE5874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5874: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE5875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5875: 
	cltq
 jmp .UNIQUE5876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5876: 
	movb	%dl, -16(%rbp,%rax)
 jmp .UNIQUE5877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5877: 
	addl	$1, -100(%rbp)
.L535:
 jmp .UNIQUE5878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5878: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE5879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5879: 
	jle	.L536
 jmp .UNIQUE5880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5880: 
	addq	$5, -72(%rbp)
 jmp .UNIQUE5881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5881: 
	movl	$0, -96(%rbp)
.L533:
 jmp .UNIQUE5882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5882: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE5883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5883: 
	cmpq	%rax, -72(%rbp)
 jmp .UNIQUE5884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5884: 
	jl	.L537
 jmp .UNIQUE5885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5885: 
	movl	$10, %edi
 jmp .UNIQUE5886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5886: 
	call	putchar
 jmp .UNIQUE5887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5887: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE5888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5888: 
	jmp	.L538
.L539:
 jmp .UNIQUE5889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5889: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE5890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5890: 
	cltq
 jmp .UNIQUE5891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5891: 
	movzbl	-16(%rbp,%rax), %eax
 jmp .UNIQUE5892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5892: 
	movzbl	%al, %edx
 jmp .UNIQUE5893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5893: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE5894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5894: 
	movl	%eax, %esi
 jmp .UNIQUE5895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5895: 
	movl	$.LC90, %edi
 jmp .UNIQUE5896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5896: 
	movl	$0, %eax
 jmp .UNIQUE5897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5897: 
	call	printf
 jmp .UNIQUE5898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5898: 
	addl	$1, -100(%rbp)
.L538:
 jmp .UNIQUE5899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5899: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE5900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5900: 
	jle	.L539
 jmp .UNIQUE5901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5901: 
	nop
 jmp .UNIQUE5902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5902: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5903: 
	xorq	%fs:40, %rax
 jmp .UNIQUE5904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5904: 
	je	.L541
 jmp .UNIQUE5905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5905: 
	call	__stack_chk_fail
.L541:
 jmp .UNIQUE5906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5906: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5907: 
	ret
	.cfi_endproc
.LFE109:
	.size	find_keyshares, .-find_keyshares
	.section	.rodata
.LC91:
	.string	"Verification requested!"
	.text
	.globl	verification_procedure
	.type	verification_procedure, @function
verification_procedure:
.LFB110:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5908: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5909: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5910: 
	movl	$.LC91, %edi
 jmp .UNIQUE5911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5911: 
	call	puts
 jmp .UNIQUE5912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5912: 
	movl	$0, %eax
 jmp .UNIQUE5913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5913: 
	call	find_keyshares
 jmp .UNIQUE5914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5914: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5915: 
	ret
	.cfi_endproc
.LFE110:
	.size	verification_procedure, .-verification_procedure
	.section	.rodata
.LC92:
	.string	"Initializing heap memory"
	.align 8
.LC93:
	.string	"bytes_to_allocate_on_start:%d\n"
.LC94:
	.string	"Init_mem, alloc+key insertion"
	.align 8
.LC95:
	.string	"If successful, total bytes allocated:%ld\n"
.LC96:
	.string	"Initializing stack memory"
	.align 8
.LC97:
	.string	"Stack bytes_to_allocate_on_start:%d\n"
	.align 8
.LC98:
	.string	"Init_stack_mem, alloc+key insertion"
	.text
	.globl	init_heap_and_stack_mem
	.type	init_heap_and_stack_mem, @function
init_heap_and_stack_mem:
.LFB111:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5916: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5917: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5918: 
	movl	$.LC92, %edi
 jmp .UNIQUE5919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5919: 
	call	puts
 jmp .UNIQUE5920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5920: 
	movl	$2048, %esi
 jmp .UNIQUE5921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5921: 
	movl	$.LC93, %edi
 jmp .UNIQUE5922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5922: 
	movl	$0, %eax
 jmp .UNIQUE5923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5923: 
	call	printf
 jmp .UNIQUE5924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5924: 
	movl	$.LC94, %edi
 jmp .UNIQUE5925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5925: 
	call	puts
 jmp .UNIQUE5926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5926: 
	movl	$0, %eax
 jmp .UNIQUE5927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5927: 
	call	init_mem
 jmp .UNIQUE5928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5928: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE5929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5929: 
	movq	%rax, %rsi
 jmp .UNIQUE5930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5930: 
	movl	$.LC95, %edi
 jmp .UNIQUE5931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5931: 
	movl	$0, %eax
 jmp .UNIQUE5932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5932: 
	call	printf
 jmp .UNIQUE5933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5933: 
	movl	$.LC96, %edi
 jmp .UNIQUE5934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5934: 
	call	puts
 jmp .UNIQUE5935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5935: 
	movl	$1024, %esi
 jmp .UNIQUE5936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5936: 
	movl	$.LC97, %edi
 jmp .UNIQUE5937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5937: 
	movl	$0, %eax
 jmp .UNIQUE5938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5938: 
	call	printf
 jmp .UNIQUE5939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5939: 
	movl	$.LC98, %edi
 jmp .UNIQUE5940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5940: 
	call	puts
 jmp .UNIQUE5941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5941: 
	movl	$0, %eax
 jmp .UNIQUE5942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5942: 
	call	init_stack_mem
 jmp .UNIQUE5943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5943: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE5944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5944: 
	movq	%rax, %rsi
 jmp .UNIQUE5945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5945: 
	movl	$.LC95, %edi
 jmp .UNIQUE5946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5946: 
	movl	$0, %eax
 jmp .UNIQUE5947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5947: 
	call	printf
 jmp .UNIQUE5948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5948: 
	popq	%rbp
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
.LFE111:
	.size	init_heap_and_stack_mem, .-init_heap_and_stack_mem
	.section	.rodata
.LC99:
	.string	"Installing signal handler"
	.align 8
.LC100:
	.string	"Could not install signal handler"
.LC101:
	.string	"Signal handler installed"
	.text
	.globl	install_signal_handler
	.type	install_signal_handler, @function
install_signal_handler:
.LFB112:
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
	movl	$.LC99, %edi
 jmp .UNIQUE5953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5953: 
	call	puts
 jmp .UNIQUE5954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5954: 
	movq	$verification_procedure, sa(%rip)
 jmp .UNIQUE5955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5955: 
	movl	$sa+8, %edi
 jmp .UNIQUE5956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5956: 
	call	sigemptyset
 jmp .UNIQUE5957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5957: 
	movl	$268435456, sa+136(%rip)
 jmp .UNIQUE5958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5958: 
	movl	$0, %edx
 jmp .UNIQUE5959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5959: 
	movl	$sa, %esi
 jmp .UNIQUE5960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5960: 
	movl	$10, %edi
 jmp .UNIQUE5961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5961: 
	call	sigaction
 jmp .UNIQUE5962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5962: 
	cmpl	$-1, %eax
 jmp .UNIQUE5963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5963: 
	jne	.L545
 jmp .UNIQUE5964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5964: 
	movl	$.LC100, %edi
 jmp .UNIQUE5965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5965: 
	call	perror
 jmp .UNIQUE5966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5966: 
	movl	$45, %edi
 jmp .UNIQUE5967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5967: 
	call	exit
.L545:
 jmp .UNIQUE5968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5968: 
	movl	$.LC101, %edi
 jmp .UNIQUE5969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5969: 
	call	puts
 jmp .UNIQUE5970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5970: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5971: 
	ret
	.cfi_endproc
.LFE112:
	.size	install_signal_handler, .-install_signal_handler
	.globl	free_heap_and_stack_memory
	.type	free_heap_and_stack_memory, @function
free_heap_and_stack_memory:
.LFB113:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5972: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5973: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5974: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE5975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5975: 
	movq	%rax, %rdi
 jmp .UNIQUE5976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5976: 
	call	free_secure_mem
 jmp .UNIQUE5977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5977: 
	movq	entire_stack_memory_chunk(%rip), %rax
 jmp .UNIQUE5978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5978: 
	movq	%rax, %rdi
 jmp .UNIQUE5979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5979: 
	call	free_secure_stack_mem
 jmp .UNIQUE5980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5980: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5981: 
	ret
	.cfi_endproc
.LFE113:
	.size	free_heap_and_stack_memory, .-free_heap_and_stack_memory
	.local	static_global_variable_for_testing
	.comm	static_global_variable_for_testing,4,4
	.globl	foo
	.type	foo, @function
foo:
.LFB114:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5982: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5983: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5984: 
	movl	%edi, -20(%rbp)
 jmp .UNIQUE5985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5985: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE5986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5986: 
	addl	$2, %eax
 jmp .UNIQUE5987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5987: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE5988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5988: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE5989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5989: 
	popq	%rbp
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
.LFE114:
	.size	foo, .-foo
	.section	.rodata
.LC102:
	.string	"My pid=%ld\n"
.LC103:
	.string	"K=%d\n"
.LC104:
	.string	"n=%d\n"
.LC105:
	.string	"main is at %p\n"
.LC106:
	.string	"\nSimple array tests in heap"
.LC107:
	.string	"\nStack fun params test"
.LC108:
	.string	"\nEnd of tests"
.LC109:
	.string	"Going to find keyshares"
	.text
	.globl	main
	.type	main, @function
main:
.LFB115:
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
	subq	$48, %rsp
 jmp .UNIQUE5994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5994: 
	movq	%fs:40, %rax
 jmp .UNIQUE5995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5995: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE5996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5996: 
	xorl	%eax, %eax
 jmp .UNIQUE5997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5997: 
	movl	$1, -48(%rbp)
 jmp .UNIQUE5998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5998: 
	movl	$2, -44(%rbp)
 jmp .UNIQUE5999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5999: 
	addl	$1, -44(%rbp)
 jmp .UNIQUE6000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6000: 
	addl	$1, -44(%rbp)
 jmp .UNIQUE6001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6001: 
	subl	$1, -44(%rbp)
 jmp .UNIQUE6002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6002: 
	movl	-44(%rbp), %eax
 jmp .UNIQUE6003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6003: 
	addl	%eax, -48(%rbp)
 jmp .UNIQUE6004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6004: 
	addl	$2, -48(%rbp)
 jmp .UNIQUE6005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6005: 
	addl	$1, -44(%rbp)
 jmp .UNIQUE6006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6006: 
	movl	$1, static_main_variable_for_testing.4754(%rip)
 jmp .UNIQUE6007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6007: 
	movl	$2, static_global_variable_for_testing(%rip)
 jmp .UNIQUE6008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6008: 
	movl	$0, %eax
 jmp .UNIQUE6009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6009: 
	call	init_heap_and_stack_mem
 jmp .UNIQUE6010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6010: 
	movl	$0, %eax
 jmp .UNIQUE6011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6011: 
	call	install_signal_handler
 jmp .UNIQUE6012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6012: 
	call	getpid
 jmp .UNIQUE6013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6013: 
	movl	%eax, -40(%rbp)
 jmp .UNIQUE6014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6014: 
	movl	-40(%rbp), %eax
 jmp .UNIQUE6015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6015: 
	cltq
 jmp .UNIQUE6016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6016: 
	movq	%rax, %rsi
 jmp .UNIQUE6017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6017: 
	movl	$.LC102, %edi
 jmp .UNIQUE6018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6018: 
	movl	$0, %eax
 jmp .UNIQUE6019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6019: 
	call	printf
 jmp .UNIQUE6020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6020: 
	movl	-48(%rbp), %eax
 jmp .UNIQUE6021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6021: 
	movl	%eax, %esi
 jmp .UNIQUE6022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6022: 
	movl	$.LC103, %edi
 jmp .UNIQUE6023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6023: 
	movl	$0, %eax
 jmp .UNIQUE6024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6024: 
	call	printf
 jmp .UNIQUE6025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6025: 
	movl	$5, %edi
 jmp .UNIQUE6026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6026: 
	call	foo
 jmp .UNIQUE6027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6027: 
	movl	%eax, -36(%rbp)
 jmp .UNIQUE6028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6028: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE6029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6029: 
	movl	%eax, %edi
 jmp .UNIQUE6030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6030: 
	call	foo2
 jmp .UNIQUE6031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6031: 
	movl	%eax, -36(%rbp)
 jmp .UNIQUE6032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6032: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE6033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6033: 
	movl	%eax, %esi
 jmp .UNIQUE6034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6034: 
	movl	$.LC104, %edi
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
	movl	$main, %esi
 jmp .UNIQUE6038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6038: 
	movl	$.LC105, %edi
 jmp .UNIQUE6039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6039: 
	movl	$0, %eax
 jmp .UNIQUE6040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6040: 
	call	printf
 jmp .UNIQUE6041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6041: 
	movl	$.LC106, %edi
 jmp .UNIQUE6042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6042: 
	call	puts
 jmp .UNIQUE6043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6043: 
	movl	$0, %eax
 jmp .UNIQUE6044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6044: 
	call	simple_array_tests
 jmp .UNIQUE6045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6045: 
	movl	$.LC107, %edi
 jmp .UNIQUE6046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6046: 
	call	puts
 jmp .UNIQUE6047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6047: 
	movl	$0, %eax
 jmp .UNIQUE6048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6048: 
	call	stack_fun_params_test
 jmp .UNIQUE6049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6049: 
	movl	$.LC108, %edi
 jmp .UNIQUE6050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6050: 
	call	puts
 jmp .UNIQUE6051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6051: 
	movl	$.LC109, %edi
 jmp .UNIQUE6052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6052: 
	call	puts
 jmp .UNIQUE6053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6053: 
	movl	$0, %eax
 jmp .UNIQUE6054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6054: 
	call	find_keyshares
 jmp .UNIQUE6055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6055: 
	movl	$0, %eax
 jmp .UNIQUE6056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6056: 
	call	free_heap_and_stack_memory
 jmp .UNIQUE6057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6057: 
	movl	$0, %eax
 jmp .UNIQUE6058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6058: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE6059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6059: 
	xorq	%fs:40, %rdx
 jmp .UNIQUE6060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6060: 
	je	.L551
 jmp .UNIQUE6061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6061: 
	call	__stack_chk_fail
.L551:
 jmp .UNIQUE6062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6062: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6063: 
	ret
	.cfi_endproc
.LFE115:
	.size	main, .-main
	.globl	foo2
	.type	foo2, @function
foo2:
.LFB116:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6064: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6065: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6066: 
	movl	%edi, -20(%rbp)
 jmp .UNIQUE6067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6067: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE6068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6068: 
	addl	$3, %eax
 jmp .UNIQUE6069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6069: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE6070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6070: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE6071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6071: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6072: 
	ret
	.cfi_endproc
.LFE116:
	.size	foo2, .-foo2
	.section	.rodata
	.type	__func__.3804, @object
	.size	__func__.3804, 11
__func__.3804:
	.string	"alloc_list"
	.align 16
	.type	__func__.3813, @object
	.size	__func__.3813, 17
__func__.3813:
	.string	"add_node_to_list"
	.type	__func__.3857, @object
	.size	__func__.3857, 13
__func__.3857:
	.string	"allocate_mem"
	.align 16
	.type	__func__.4122, @object
	.size	__func__.4122, 16
__func__.4122:
	.string	"check_and_merge"
	.align 16
	.type	__func__.4138, @object
	.size	__func__.4138, 20
__func__.4138:
	.string	"managed_secure_free"
	.type	__func__.4189, @object
	.size	__func__.4189, 9
__func__.4189:
	.string	"mem_test"
	.align 16
	.type	__func__.4295, @object
	.size	__func__.4295, 19
__func__.4295:
	.string	"allocate_stack_mem"
	.align 16
	.type	__func__.4409, @object
	.size	__func__.4409, 21
__func__.4409:
	.string	"init_function_params"
	.align 32
	.type	__func__.4447, @object
	.size	__func__.4447, 49
__func__.4447:
	.string	"init_function_params_with_uninitialised_elements"
	.align 32
	.type	__func__.4489, @object
	.size	__func__.4489, 33
__func__.4489:
	.string	"put_fun_params_into_secure_stack"
	.align 16
	.type	__func__.4651, @object
	.size	__func__.4651, 22
__func__.4651:
	.string	"stack_fun_params_test"
	.local	static_main_variable_for_testing.4754
	.comm	static_main_variable_for_testing.4754,4,4
	.align 8
.LC65:
	.long	0
	.long	1071644672
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
