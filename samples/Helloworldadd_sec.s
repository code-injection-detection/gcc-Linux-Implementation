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
	movq	%rdi, -88(%rbp)
 jmp .UNIQUE604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE604: 
	movq	%rsi, -96(%rbp)
 jmp .UNIQUE605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE605: 
	movq	%rdx, -104(%rbp)
 jmp .UNIQUE606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE606: 
	movl	%ecx, -108(%rbp)
 jmp .UNIQUE607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE607: 
	movq	%r8, -120(%rbp)
 jmp .UNIQUE608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE608: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE609: 
	movl	$0, -68(%rbp)
 jmp .UNIQUE610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE610: 
	movq	-88(%rbp), %rax
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
	movq	-104(%rbp), %rax
 jmp .UNIQUE613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE613: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE614: 
	cmpl	$2, -108(%rbp)
 jmp .UNIQUE615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE615: 
	jne	.L66
 jmp .UNIQUE616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE616: 
	movq	$1, -24(%rbp)
 jmp .UNIQUE617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE617: 
	jmp	.L67
.L66:
 jmp .UNIQUE618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE618: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE619: 
	movq	%rax, -24(%rbp)
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
	movq	$0, -64(%rbp)
 jmp .UNIQUE621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE621: 
	cmpl	$0, -108(%rbp)
 jmp .UNIQUE622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE622: 
	je	.L68
 jmp .UNIQUE623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE623: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE624: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE625: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE626: 
	testq	%rax, %rax
 jmp .UNIQUE627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE627: 
	cmovs	%rdx, %rax
 jmp .UNIQUE628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE628: 
	sarq	$2, %rax
 jmp .UNIQUE629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE629: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE630: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE631: 
	leaq	0(,%rax,4), %rdx
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
	imulq	-24(%rbp), %rax
 jmp .UNIQUE634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE634: 
	cmpq	%rax, %rdx
 jmp .UNIQUE635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE635: 
	jne	.L69
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
	addq	%rax, -40(%rbp)
 jmp .UNIQUE641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE641: 
	jmp	.L68
.L69:
 jmp .UNIQUE642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE642: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE643: 
	movq	%rdx, %rax
 jmp .UNIQUE644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE644: 
	salq	$3, %rax
 jmp .UNIQUE645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE645: 
	addq	%rdx, %rax
 jmp .UNIQUE646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE646: 
	addq	%rax, -40(%rbp)
 jmp .UNIQUE647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE647: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE648: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE649: 
	movq	%rax, %rdx
 jmp .UNIQUE650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE650: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE651: 
	movl	$0, %eax
 jmp .UNIQUE652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE652: 
	subq	%rcx, %rax
 jmp .UNIQUE653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE653: 
	salq	$2, %rax
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
	movq	%rax, -56(%rbp)
 jmp .UNIQUE656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE656: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE657: 
	jmp	.L70
.L72:
 jmp .UNIQUE658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE658: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE659: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE660: 
	addq	%rdx, %rax
 jmp .UNIQUE661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE661: 
	movq	%rax, %rdx
 jmp .UNIQUE662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE662: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE663: 
	addq	%rax, %rdx
 jmp .UNIQUE664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE664: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE665: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE666: 
	addq	%rcx, %rax
 jmp .UNIQUE667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE667: 
	movq	%rax, %rcx
 jmp .UNIQUE668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE668: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE669: 
	addq	%rcx, %rax
 jmp .UNIQUE670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE670: 
	movzbl	(%rax), %eax
 jmp .UNIQUE671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE671: 
	movb	%al, (%rdx)
 jmp .UNIQUE672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE672: 
	addq	$1, -48(%rbp)
.L70:
 jmp .UNIQUE673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE673: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE674: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE675: 
	addq	%rdx, %rax
 jmp .UNIQUE676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE676: 
	cmpq	$3, %rax
 jmp .UNIQUE677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE677: 
	jg	.L71
 jmp .UNIQUE678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE678: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE679: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE680: 
	addq	%rdx, %rax
 jmp .UNIQUE681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE681: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE682: 
	jl	.L72
.L71:
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
	addq	%rax, -32(%rbp)
 jmp .UNIQUE685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE685: 
	addq	$9, -40(%rbp)
 jmp .UNIQUE686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE686: 
	jmp	.L73
.L68:
 jmp .UNIQUE687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE687: 
	jmp	.L73
.L78:
 jmp .UNIQUE688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE688: 
	cmpl	$0, -68(%rbp)
 jmp .UNIQUE689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE689: 
	je	.L74
 jmp .UNIQUE690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE690: 
	addq	$5, -64(%rbp)
 jmp .UNIQUE691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE691: 
	movl	$0, -68(%rbp)
 jmp .UNIQUE692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE692: 
	jmp	.L73
.L74:
 jmp .UNIQUE693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE693: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE694: 
	jmp	.L75
.L77:
 jmp .UNIQUE695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE695: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE696: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE697: 
	addq	%rdx, %rax
 jmp .UNIQUE698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE698: 
	movq	%rax, %rdx
 jmp .UNIQUE699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE699: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE700: 
	addq	%rax, %rdx
 jmp .UNIQUE701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE701: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE702: 
	movq	-64(%rbp), %rcx
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
	movq	%rax, %rcx
 jmp .UNIQUE705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE705: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE706: 
	addq	%rcx, %rax
 jmp .UNIQUE707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE707: 
	movzbl	(%rax), %eax
 jmp .UNIQUE708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE708: 
	movb	%al, (%rdx)
 jmp .UNIQUE709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE709: 
	addq	$1, -56(%rbp)
.L75:
 jmp .UNIQUE710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE710: 
	cmpq	$3, -56(%rbp)
 jmp .UNIQUE711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE711: 
	jg	.L76
 jmp .UNIQUE712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE712: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE713: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE714: 
	addq	%rdx, %rax
 jmp .UNIQUE715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE715: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE716: 
	jl	.L77
.L76:
 jmp .UNIQUE717
NOP
NOP
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
NOP
NOP
.UNIQUE718: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE719: 
	addq	$4, -64(%rbp)
 jmp .UNIQUE720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE720: 
	movl	$1, -68(%rbp)
.L73:
 jmp .UNIQUE721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE721: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE722: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE723: 
	jl	.L78
 jmp .UNIQUE724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE724: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE725: 
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
 jmp .UNIQUE726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE726: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE727: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE728: 
	movq	%rdi, -88(%rbp)
 jmp .UNIQUE729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE729: 
	movq	%rsi, -96(%rbp)
 jmp .UNIQUE730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE730: 
	movq	%rdx, -104(%rbp)
 jmp .UNIQUE731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE731: 
	movl	%ecx, -108(%rbp)
 jmp .UNIQUE732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE732: 
	movq	%r8, -120(%rbp)
 jmp .UNIQUE733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE733: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE734: 
	movl	$0, -68(%rbp)
 jmp .UNIQUE735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE735: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE736: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE737: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE738: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE739: 
	cmpl	$2, -108(%rbp)
 jmp .UNIQUE740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE740: 
	jne	.L80
 jmp .UNIQUE741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE741: 
	movq	$1, -24(%rbp)
 jmp .UNIQUE742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE742: 
	jmp	.L81
.L80:
 jmp .UNIQUE743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE743: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE744: 
	movq	%rax, -24(%rbp)
.L81:
 jmp .UNIQUE745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE745: 
	movq	$0, -64(%rbp)
 jmp .UNIQUE746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE746: 
	cmpl	$0, -108(%rbp)
 jmp .UNIQUE747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE747: 
	je	.L82
 jmp .UNIQUE748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE748: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE749: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE750: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE751: 
	testq	%rax, %rax
 jmp .UNIQUE752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE752: 
	cmovs	%rdx, %rax
 jmp .UNIQUE753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE753: 
	sarq	$2, %rax
 jmp .UNIQUE754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE754: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE755: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE756: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE757: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE758: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE759: 
	cmpq	%rax, %rdx
 jmp .UNIQUE760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE760: 
	jne	.L83
 jmp .UNIQUE761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE761: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE762: 
	movq	%rdx, %rax
 jmp .UNIQUE763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE763: 
	salq	$3, %rax
 jmp .UNIQUE764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE764: 
	addq	%rdx, %rax
 jmp .UNIQUE765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE765: 
	addq	%rax, -40(%rbp)
 jmp .UNIQUE766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE766: 
	jmp	.L82
.L83:
 jmp .UNIQUE767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE767: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE768: 
	movq	%rdx, %rax
 jmp .UNIQUE769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE769: 
	salq	$3, %rax
 jmp .UNIQUE770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE770: 
	addq	%rdx, %rax
 jmp .UNIQUE771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE771: 
	addq	%rax, -40(%rbp)
 jmp .UNIQUE772
NOP
NOP
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
NOP
NOP
.UNIQUE773: 
	imulq	-24(%rbp), %rax
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
	movq	-8(%rbp), %rcx
 jmp .UNIQUE776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE776: 
	movl	$0, %eax
 jmp .UNIQUE777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE777: 
	subq	%rcx, %rax
 jmp .UNIQUE778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE778: 
	salq	$2, %rax
 jmp .UNIQUE779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE779: 
	addq	%rdx, %rax
 jmp .UNIQUE780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE780: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE781: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE782: 
	jmp	.L84
.L86:
 jmp .UNIQUE783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE783: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE784: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE785: 
	addq	%rdx, %rax
 jmp .UNIQUE786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE786: 
	movq	%rax, %rdx
 jmp .UNIQUE787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE787: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE788: 
	addq	%rax, %rdx
 jmp .UNIQUE789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE789: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE790: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE791: 
	addq	%rcx, %rax
 jmp .UNIQUE792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE792: 
	movq	%rax, %rcx
 jmp .UNIQUE793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE793: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE794: 
	addq	%rcx, %rax
 jmp .UNIQUE795
NOP
NOP
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
NOP
NOP
.UNIQUE796: 
	movb	%al, (%rdx)
 jmp .UNIQUE797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE797: 
	addq	$1, -48(%rbp)
.L84:
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
	movq	-56(%rbp), %rdx
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
	cmpq	$3, %rax
 jmp .UNIQUE802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE802: 
	jg	.L85
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
	movq	-32(%rbp), %rdx
 jmp .UNIQUE805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE805: 
	addq	%rdx, %rax
 jmp .UNIQUE806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE806: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE807: 
	jl	.L86
.L85:
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
	addq	%rax, -32(%rbp)
 jmp .UNIQUE810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE810: 
	addq	$9, -40(%rbp)
 jmp .UNIQUE811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE811: 
	jmp	.L87
.L82:
 jmp .UNIQUE812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE812: 
	jmp	.L87
.L92:
 jmp .UNIQUE813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE813: 
	cmpl	$0, -68(%rbp)
 jmp .UNIQUE814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE814: 
	je	.L88
 jmp .UNIQUE815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE815: 
	addq	$5, -64(%rbp)
 jmp .UNIQUE816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE816: 
	movl	$0, -68(%rbp)
 jmp .UNIQUE817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE817: 
	jmp	.L87
.L88:
 jmp .UNIQUE818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE818: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE819: 
	jmp	.L89
.L91:
 jmp .UNIQUE820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE820: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE821: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE822: 
	addq	%rdx, %rax
 jmp .UNIQUE823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE823: 
	movq	%rax, %rdx
 jmp .UNIQUE824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE824: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE825: 
	addq	%rax, %rdx
 jmp .UNIQUE826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE826: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE827: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE828: 
	addq	%rcx, %rax
 jmp .UNIQUE829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE829: 
	movq	%rax, %rcx
 jmp .UNIQUE830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE830: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE831: 
	addq	%rcx, %rax
 jmp .UNIQUE832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE832: 
	movzbl	(%rax), %eax
 jmp .UNIQUE833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE833: 
	movb	%al, (%rdx)
 jmp .UNIQUE834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE834: 
	addq	$1, -56(%rbp)
.L89:
 jmp .UNIQUE835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE835: 
	cmpq	$3, -56(%rbp)
 jmp .UNIQUE836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE836: 
	jg	.L90
 jmp .UNIQUE837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE837: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE838: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE839: 
	addq	%rdx, %rax
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
	jl	.L91
.L90:
 jmp .UNIQUE842
NOP
NOP
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
NOP
NOP
.UNIQUE843: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE844: 
	addq	$4, -64(%rbp)
 jmp .UNIQUE845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE845: 
	movl	$1, -68(%rbp)
.L87:
 jmp .UNIQUE846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE846: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE847: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE848: 
	jl	.L92
 jmp .UNIQUE849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE849: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE850: 
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
 jmp .UNIQUE851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE851: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE852: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE853: 
	subq	$16, %rsp
 jmp .UNIQUE854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE854: 
	movl	$0, %edi
 jmp .UNIQUE855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE855: 
	call	time
 jmp .UNIQUE856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE856: 
	movl	%eax, %edi
 jmp .UNIQUE857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE857: 
	call	srand
 jmp .UNIQUE858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE858: 
	movl	$0, %eax
 jmp .UNIQUE859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE859: 
	call	allocate_mem
 jmp .UNIQUE860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE860: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE861: 
	movl	$.LC10, %esi
 jmp .UNIQUE862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE862: 
	movl	$.LC11, %edi
 jmp .UNIQUE863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE863: 
	call	fopen
 jmp .UNIQUE864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE864: 
	movq	%rax, keyshare_input_file(%rip)
 jmp .UNIQUE865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE865: 
	movq	keyshare_input_file(%rip), %rax
 jmp .UNIQUE866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE866: 
	testq	%rax, %rax
 jmp .UNIQUE867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE867: 
	jne	.L94
 jmp .UNIQUE868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE868: 
	movl	$.LC12, %edi
 jmp .UNIQUE869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE869: 
	call	perror
 jmp .UNIQUE870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE870: 
	movl	$43, %edi
 jmp .UNIQUE871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE871: 
	call	exit
.L94:
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
	call	insert_keys_into_mem
 jmp .UNIQUE875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE875: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE876: 
	movq	%rax, entire_memory_chunk(%rip)
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
	movq	%rax, last_unused_memory(%rip)
 jmp .UNIQUE879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE879: 
	movq	keyshare_input_file(%rip), %rax
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
	call	fclose
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
	call	init_memory_manager
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
.LFE22:
	.size	init_mem, .-init_mem
	.globl	free_secure_mem
	.type	free_secure_mem, @function
free_secure_mem:
.LFB23:
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
	subq	$16, %rsp
 jmp .UNIQUE890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE890: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE891: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE892: 
	movq	%rax, %rdi
 jmp .UNIQUE893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE893: 
	call	free
 jmp .UNIQUE894
NOP
NOP
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
NOP
NOP
.UNIQUE895: 
	call	free_memory_manager_structures
 jmp .UNIQUE896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE896: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE897: 
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
 jmp .UNIQUE898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE898: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE899: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE900: 
	subq	$24, %rsp
 jmp .UNIQUE901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE901: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE902: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE903: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE904: 
	movl	$0, %r8d
 jmp .UNIQUE905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE905: 
	movl	$0, %ecx
 jmp .UNIQUE906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE906: 
	movl	$1, %esi
 jmp .UNIQUE907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE907: 
	movq	%rax, %rdi
 jmp .UNIQUE908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE908: 
	call	get_secure_data
 jmp .UNIQUE909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE909: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE910: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE911: 
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
 jmp .UNIQUE912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE912: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE913: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE914: 
	subq	$24, %rsp
 jmp .UNIQUE915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE915: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE916: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE917: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE918: 
	movl	$0, %r8d
 jmp .UNIQUE919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE919: 
	movl	$0, %ecx
 jmp .UNIQUE920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE920: 
	movl	$4, %esi
 jmp .UNIQUE921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE921: 
	movq	%rax, %rdi
 jmp .UNIQUE922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE922: 
	call	get_secure_data
 jmp .UNIQUE923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE923: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE924: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE925: 
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
 jmp .UNIQUE926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE926: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE927: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE928: 
	subq	$24, %rsp
 jmp .UNIQUE929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE929: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE930: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE931: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE932: 
	movl	$0, %r8d
 jmp .UNIQUE933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE933: 
	movl	$0, %ecx
 jmp .UNIQUE934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE934: 
	movl	$8, %esi
 jmp .UNIQUE935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE935: 
	movq	%rax, %rdi
 jmp .UNIQUE936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE936: 
	call	get_secure_data
 jmp .UNIQUE937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE937: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE938: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE939: 
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
 jmp .UNIQUE940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE940: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE941: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE942: 
	subq	$24, %rsp
 jmp .UNIQUE943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE943: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE944: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE945: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE946: 
	movl	$0, %r8d
 jmp .UNIQUE947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE947: 
	movl	$0, %ecx
 jmp .UNIQUE948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE948: 
	movl	$8, %esi
 jmp .UNIQUE949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE949: 
	movq	%rax, %rdi
 jmp .UNIQUE950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE950: 
	call	get_secure_data
 jmp .UNIQUE951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE951: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE952: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE953: 
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
 jmp .UNIQUE954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE954: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE955: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE956: 
	subq	$32, %rsp
 jmp .UNIQUE957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE957: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE958: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE959: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE960: 
	movl	$0, %r8d
 jmp .UNIQUE961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE961: 
	movl	$0, %ecx
 jmp .UNIQUE962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE962: 
	movl	$4, %esi
 jmp .UNIQUE963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE963: 
	movq	%rax, %rdi
 jmp .UNIQUE964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE964: 
	call	get_secure_data
 jmp .UNIQUE965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE965: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE966: 
	movl	%eax, -28(%rbp)
 jmp .UNIQUE967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE967: 
	movss	-28(%rbp), %xmm0
 jmp .UNIQUE968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE968: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE969: 
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
 jmp .UNIQUE970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE970: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE971: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE972: 
	subq	$32, %rsp
 jmp .UNIQUE973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE973: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE974: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE975: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE976: 
	movl	$0, %r8d
 jmp .UNIQUE977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE977: 
	movl	$0, %ecx
 jmp .UNIQUE978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE978: 
	movl	$8, %esi
 jmp .UNIQUE979
NOP
NOP
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
NOP
NOP
.UNIQUE980: 
	call	get_secure_data
 jmp .UNIQUE981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE981: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE982: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE983: 
	movsd	-32(%rbp), %xmm0
 jmp .UNIQUE984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE984: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE985: 
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
 jmp .UNIQUE986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE986: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE987: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE988: 
	subq	$32, %rsp
 jmp .UNIQUE989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE989: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE990: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE991: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE992: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE993: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE994: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE995: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE996
NOP
NOP
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
NOP
NOP
.UNIQUE997: 
	movq	%rcx, %r8
 jmp .UNIQUE998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE998: 
	movl	$1, %ecx
 jmp .UNIQUE999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE999: 
	movq	%rax, %rdi
 jmp .UNIQUE1000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1000: 
	call	get_secure_data
 jmp .UNIQUE1001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1001: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1002: 
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
 jmp .UNIQUE1003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1003: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1004: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1005: 
	subq	$32, %rsp
 jmp .UNIQUE1006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1006: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1007: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1008: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1009: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1010: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE1011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1011: 
	movq	%rcx, %r8
 jmp .UNIQUE1012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1012: 
	movl	$1, %ecx
 jmp .UNIQUE1013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1013: 
	movl	$1, %esi
 jmp .UNIQUE1014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1014: 
	movq	%rax, %rdi
 jmp .UNIQUE1015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1015: 
	call	get_secure_data
 jmp .UNIQUE1016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1016: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE1017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1017: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1018: 
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
 jmp .UNIQUE1019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1019: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1020: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1021: 
	subq	$32, %rsp
 jmp .UNIQUE1022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1022: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1023: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1024: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1025: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1026: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1027: 
	movq	%rcx, %r8
 jmp .UNIQUE1028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1028: 
	movl	$1, %ecx
 jmp .UNIQUE1029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1029: 
	movl	$4, %esi
 jmp .UNIQUE1030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1030: 
	movq	%rax, %rdi
 jmp .UNIQUE1031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1031: 
	call	get_secure_data
 jmp .UNIQUE1032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1032: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE1033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1033: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1034: 
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
 jmp .UNIQUE1035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1035: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1036: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1037: 
	subq	$32, %rsp
 jmp .UNIQUE1038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1038: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1039: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1040: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1041: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1042: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1043: 
	movq	%rcx, %r8
 jmp .UNIQUE1044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1044: 
	movl	$1, %ecx
 jmp .UNIQUE1045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1045: 
	movl	$8, %esi
 jmp .UNIQUE1046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1046: 
	movq	%rax, %rdi
 jmp .UNIQUE1047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1047: 
	call	get_secure_data
 jmp .UNIQUE1048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1048: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1049: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1050: 
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
 jmp .UNIQUE1051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1051: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1052: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1053: 
	subq	$32, %rsp
 jmp .UNIQUE1054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1054: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1055: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1056: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1057: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1058: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1059: 
	movq	%rcx, %r8
 jmp .UNIQUE1060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1060: 
	movl	$1, %ecx
 jmp .UNIQUE1061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1061: 
	movl	$8, %esi
 jmp .UNIQUE1062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1062: 
	movq	%rax, %rdi
 jmp .UNIQUE1063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1063: 
	call	get_secure_data
 jmp .UNIQUE1064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1064: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1065: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1066: 
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
 jmp .UNIQUE1067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1067: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1068: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1069: 
	subq	$40, %rsp
 jmp .UNIQUE1070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1070: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1071: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1072: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1073: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1074: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1075: 
	movq	%rcx, %r8
 jmp .UNIQUE1076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1076: 
	movl	$1, %ecx
 jmp .UNIQUE1077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1077: 
	movl	$4, %esi
 jmp .UNIQUE1078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1078: 
	movq	%rax, %rdi
 jmp .UNIQUE1079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1079: 
	call	get_secure_data
 jmp .UNIQUE1080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1080: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE1081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1081: 
	movl	%eax, -36(%rbp)
 jmp .UNIQUE1082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1082: 
	movss	-36(%rbp), %xmm0
 jmp .UNIQUE1083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1083: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1084: 
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
 jmp .UNIQUE1085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1085: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1086: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1087: 
	subq	$40, %rsp
 jmp .UNIQUE1088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1088: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1089: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1090: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1091: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1092: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1093: 
	movq	%rcx, %r8
 jmp .UNIQUE1094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1094: 
	movl	$1, %ecx
 jmp .UNIQUE1095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1095: 
	movl	$8, %esi
 jmp .UNIQUE1096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1096: 
	movq	%rax, %rdi
 jmp .UNIQUE1097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1097: 
	call	get_secure_data
 jmp .UNIQUE1098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1098: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1099: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE1100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1100: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE1101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1101: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1102: 
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
 jmp .UNIQUE1103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1103: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1104: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1105: 
	subq	$24, %rsp
 jmp .UNIQUE1106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1106: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1107: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1108: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE1109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1109: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1110: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE1111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1111: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1112: 
	movl	$0, %r8d
 jmp .UNIQUE1113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1113: 
	movl	$0, %ecx
 jmp .UNIQUE1114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1114: 
	movq	%rax, %rdi
 jmp .UNIQUE1115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1115: 
	call	get_secure_data
 jmp .UNIQUE1116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1116: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1117: 
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
 jmp .UNIQUE1118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1118: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1119: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1120: 
	subq	$32, %rsp
 jmp .UNIQUE1121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1121: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1122: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1123: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE1124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1124: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE1125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1125: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE1126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1126: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1127: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE1128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1128: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1129: 
	movq	%rcx, %r8
 jmp .UNIQUE1130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1130: 
	movl	$2, %ecx
 jmp .UNIQUE1131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1131: 
	movq	%rax, %rdi
 jmp .UNIQUE1132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1132: 
	call	get_secure_data
 jmp .UNIQUE1133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1133: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1134: 
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
 jmp .UNIQUE1135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1135: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1136: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1137: 
	subq	$16, %rsp
 jmp .UNIQUE1138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1138: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1139: 
	movl	%esi, %eax
 jmp .UNIQUE1140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1140: 
	movb	%al, -12(%rbp)
 jmp .UNIQUE1141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1141: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1142: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE1143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1143: 
	movq	%rax, %rsi
 jmp .UNIQUE1144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1144: 
	movl	$1, %edi
 jmp .UNIQUE1145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1145: 
	call	insert_data_into_mem
 jmp .UNIQUE1146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1146: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1147: 
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
 jmp .UNIQUE1148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1148: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1149: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1150: 
	subq	$16, %rsp
 jmp .UNIQUE1151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1151: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1152: 
	movl	%esi, -12(%rbp)
 jmp .UNIQUE1153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1153: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1154: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE1155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1155: 
	movq	%rax, %rsi
 jmp .UNIQUE1156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1156: 
	movl	$4, %edi
 jmp .UNIQUE1157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1157: 
	call	insert_data_into_mem
 jmp .UNIQUE1158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1158: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1159: 
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
 jmp .UNIQUE1160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1160: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1161: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1162: 
	subq	$16, %rsp
 jmp .UNIQUE1163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1163: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1164: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1165: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1166: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1167: 
	movq	%rax, %rsi
 jmp .UNIQUE1168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1168: 
	movl	$8, %edi
 jmp .UNIQUE1169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1169: 
	call	insert_data_into_mem
 jmp .UNIQUE1170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1170: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1171: 
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
 jmp .UNIQUE1172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1172: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1173: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1174: 
	subq	$16, %rsp
 jmp .UNIQUE1175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1175: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1176: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1177: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1178: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1179: 
	movq	%rax, %rsi
 jmp .UNIQUE1180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1180: 
	movl	$8, %edi
 jmp .UNIQUE1181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1181: 
	call	insert_data_into_mem
 jmp .UNIQUE1182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1182: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1183: 
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
 jmp .UNIQUE1184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1184: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1185: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1186: 
	subq	$16, %rsp
 jmp .UNIQUE1187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1187: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1188: 
	movss	%xmm0, -12(%rbp)
 jmp .UNIQUE1189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1189: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1190: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE1191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1191: 
	movq	%rax, %rsi
 jmp .UNIQUE1192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1192: 
	movl	$4, %edi
 jmp .UNIQUE1193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1193: 
	call	insert_data_into_mem
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
.LFE43:
	.size	set_float, .-set_float
	.globl	set_double
	.type	set_double, @function
set_double:
.LFB44:
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
	subq	$16, %rsp
 jmp .UNIQUE1199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1199: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1200: 
	movsd	%xmm0, -16(%rbp)
 jmp .UNIQUE1201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1201: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1202: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1203: 
	movq	%rax, %rsi
 jmp .UNIQUE1204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1204: 
	movl	$8, %edi
 jmp .UNIQUE1205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1205: 
	call	insert_data_into_mem
 jmp .UNIQUE1206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1206: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1207: 
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
 jmp .UNIQUE1208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1208: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1209: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1210: 
	subq	$32, %rsp
 jmp .UNIQUE1211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1211: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1212: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1213: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE1214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1214: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE1215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1215: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE1216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1216: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1217: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE1218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1218: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1219: 
	movq	%rcx, %r8
 jmp .UNIQUE1220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1220: 
	movl	$1, %ecx
 jmp .UNIQUE1221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1221: 
	movq	%rax, %rdi
 jmp .UNIQUE1222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1222: 
	call	set_secure_data
 jmp .UNIQUE1223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1223: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1224: 
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
 jmp .UNIQUE1225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1225: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1226: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1227: 
	subq	$40, %rsp
 jmp .UNIQUE1228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1228: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1229: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1230: 
	movl	%edx, %eax
 jmp .UNIQUE1231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1231: 
	movb	%al, -36(%rbp)
 jmp .UNIQUE1232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1232: 
	movzbl	-36(%rbp), %eax
 jmp .UNIQUE1233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1233: 
	movb	%al, -1(%rbp)
 jmp .UNIQUE1234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1234: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1235: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1236: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE1237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1237: 
	movq	%rcx, %r8
 jmp .UNIQUE1238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1238: 
	movl	$1, %ecx
 jmp .UNIQUE1239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1239: 
	movl	$1, %esi
 jmp .UNIQUE1240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1240: 
	movq	%rax, %rdi
 jmp .UNIQUE1241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1241: 
	call	set_secure_data
 jmp .UNIQUE1242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1242: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1243: 
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
 jmp .UNIQUE1244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1244: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1245: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1246: 
	subq	$40, %rsp
 jmp .UNIQUE1247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1247: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1248: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1249: 
	movl	%edx, -36(%rbp)
 jmp .UNIQUE1250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1250: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE1251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1251: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE1252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1252: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1253: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1254: 
	leaq	-4(%rbp), %rax
 jmp .UNIQUE1255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1255: 
	movq	%rcx, %r8
 jmp .UNIQUE1256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1256: 
	movl	$1, %ecx
 jmp .UNIQUE1257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1257: 
	movl	$4, %esi
 jmp .UNIQUE1258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1258: 
	movq	%rax, %rdi
 jmp .UNIQUE1259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1259: 
	call	set_secure_data
 jmp .UNIQUE1260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1260: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1261: 
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
 jmp .UNIQUE1262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1262: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1263: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1264: 
	subq	$40, %rsp
 jmp .UNIQUE1265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1265: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1266: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1267: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE1268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1268: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1269: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1270: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1271: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1272: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE1273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1273: 
	movq	%rcx, %r8
 jmp .UNIQUE1274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1274: 
	movl	$1, %ecx
 jmp .UNIQUE1275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1275: 
	movl	$8, %esi
 jmp .UNIQUE1276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1276: 
	movq	%rax, %rdi
 jmp .UNIQUE1277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1277: 
	call	set_secure_data
 jmp .UNIQUE1278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1278: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1279: 
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
 jmp .UNIQUE1280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1280: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1281: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1282: 
	subq	$40, %rsp
 jmp .UNIQUE1283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1283: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1284: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1285: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE1286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1286: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1287: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1288: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1289: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1290: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE1291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1291: 
	movq	%rcx, %r8
 jmp .UNIQUE1292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1292: 
	movl	$1, %ecx
 jmp .UNIQUE1293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1293: 
	movl	$8, %esi
 jmp .UNIQUE1294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1294: 
	movq	%rax, %rdi
 jmp .UNIQUE1295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1295: 
	call	set_secure_data
 jmp .UNIQUE1296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1296: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1297: 
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
 jmp .UNIQUE1298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1298: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1299: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1300: 
	subq	$40, %rsp
 jmp .UNIQUE1301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1301: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1302: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1303: 
	movss	%xmm0, -36(%rbp)
 jmp .UNIQUE1304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1304: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE1305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1305: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE1306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1306: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1307: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1308: 
	leaq	-4(%rbp), %rax
 jmp .UNIQUE1309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1309: 
	movq	%rcx, %r8
 jmp .UNIQUE1310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1310: 
	movl	$1, %ecx
 jmp .UNIQUE1311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1311: 
	movl	$4, %esi
 jmp .UNIQUE1312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1312: 
	movq	%rax, %rdi
 jmp .UNIQUE1313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1313: 
	call	set_secure_data
 jmp .UNIQUE1314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1314: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1315: 
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
 jmp .UNIQUE1316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1316: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1317: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1318: 
	subq	$40, %rsp
 jmp .UNIQUE1319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1319: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1320: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1321: 
	movsd	%xmm0, -40(%rbp)
 jmp .UNIQUE1322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1322: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1323: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1324: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE1325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1325: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1326: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE1327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1327: 
	movq	%rcx, %r8
 jmp .UNIQUE1328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1328: 
	movl	$1, %ecx
 jmp .UNIQUE1329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1329: 
	movl	$8, %esi
 jmp .UNIQUE1330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1330: 
	movq	%rax, %rdi
 jmp .UNIQUE1331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1331: 
	call	set_secure_data
 jmp .UNIQUE1332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1332: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1333: 
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
 jmp .UNIQUE1334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1334: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1335: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1336: 
	subq	$24, %rsp
 jmp .UNIQUE1337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1337: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1338: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1339: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE1340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1340: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1341: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE1342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1342: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1343: 
	movl	$0, %r8d
 jmp .UNIQUE1344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1344: 
	movl	$0, %ecx
 jmp .UNIQUE1345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1345: 
	movq	%rax, %rdi
 jmp .UNIQUE1346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1346: 
	call	set_secure_data
 jmp .UNIQUE1347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1347: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1348: 
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
 jmp .UNIQUE1349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1349: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1350: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1351: 
	subq	$32, %rsp
 jmp .UNIQUE1352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1352: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1353: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1354: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE1355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1355: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE1356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1356: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE1357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1357: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1358: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE1359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1359: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1360: 
	movq	%rcx, %r8
 jmp .UNIQUE1361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1361: 
	movl	$2, %ecx
 jmp .UNIQUE1362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1362: 
	movq	%rax, %rdi
 jmp .UNIQUE1363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1363: 
	call	set_secure_data
 jmp .UNIQUE1364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1364: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1365: 
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
 jmp .UNIQUE1366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1366: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1367: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1368: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1369: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1370: 
	testq	%rax, %rax
 jmp .UNIQUE1371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1371: 
	jne	.L140
 jmp .UNIQUE1372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1372: 
	movl	$0, %eax
 jmp .UNIQUE1373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1373: 
	jmp	.L141
.L140:
 jmp .UNIQUE1374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1374: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1375: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1376: 
	jmp	.L142
.L144:
 jmp .UNIQUE1377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1377: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1378: 
	movq	(%rax), %rax
 jmp .UNIQUE1379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1379: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE1380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1380: 
	jl	.L143
 jmp .UNIQUE1381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1381: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1382: 
	jmp	.L141
.L143:
 jmp .UNIQUE1383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1383: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1384: 
	movq	16(%rax), %rax
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
.L142:
 jmp .UNIQUE1386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1386: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1387: 
	jne	.L144
 jmp .UNIQUE1388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1388: 
	movl	$0, %eax
.L141:
 jmp .UNIQUE1389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1389: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1390: 
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
 jmp .UNIQUE1391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1391: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1392: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1393: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1394: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE1395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1395: 
	testq	%rax, %rax
 jmp .UNIQUE1396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1396: 
	jne	.L146
 jmp .UNIQUE1397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1397: 
	movl	$0, %eax
 jmp .UNIQUE1398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1398: 
	jmp	.L147
.L146:
 jmp .UNIQUE1399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1399: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE1400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1400: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1401: 
	jmp	.L148
.L150:
 jmp .UNIQUE1402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1402: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1403: 
	movq	8(%rax), %rax
 jmp .UNIQUE1404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1404: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE1405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1405: 
	jne	.L149
 jmp .UNIQUE1406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1406: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1407: 
	jmp	.L147
.L149:
 jmp .UNIQUE1408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1408: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1409: 
	movq	16(%rax), %rax
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
.L148:
 jmp .UNIQUE1411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1411: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1412: 
	jne	.L150
 jmp .UNIQUE1413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1413: 
	movl	$0, %eax
.L147:
 jmp .UNIQUE1414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1414: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1415: 
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
 jmp .UNIQUE1416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1416: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1417: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1418: 
	subq	$48, %rsp
 jmp .UNIQUE1419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1419: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1420: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1421: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE1422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1422: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1423: 
	movq	8(%rax), %rax
 jmp .UNIQUE1424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1424: 
	movq	%rax, %rcx
 jmp .UNIQUE1425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1425: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1426: 
	movq	(%rax), %rdx
 jmp .UNIQUE1427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1427: 
	movq	%rdx, %rax
 jmp .UNIQUE1428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1428: 
	salq	$3, %rax
 jmp .UNIQUE1429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1429: 
	addq	%rdx, %rax
 jmp .UNIQUE1430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1430: 
	leaq	(%rcx,%rax), %rdx
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
	movq	8(%rax), %rax
 jmp .UNIQUE1433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1433: 
	cmpq	%rax, %rdx
 jmp .UNIQUE1434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1434: 
	jne	.L152
 jmp .UNIQUE1435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1435: 
	movl	$929, %edx
 jmp .UNIQUE1436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1436: 
	movl	$__func__.4136, %esi
 jmp .UNIQUE1437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1437: 
	movl	$32, %edi
 jmp .UNIQUE1438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1438: 
	call	error_checking_malloc
 jmp .UNIQUE1439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1439: 
	movq	%rax, -8(%rbp)
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
	movq	(%rax), %rdx
 jmp .UNIQUE1442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1442: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1443: 
	movq	(%rax), %rax
 jmp .UNIQUE1444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1444: 
	addq	%rax, %rdx
 jmp .UNIQUE1445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1445: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1446: 
	movq	%rdx, (%rax)
 jmp .UNIQUE1447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1447: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1448: 
	movq	8(%rax), %rdx
 jmp .UNIQUE1449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1449: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1450: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE1451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1451: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1452: 
	movq	24(%rax), %rdx
 jmp .UNIQUE1453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1453: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1454: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE1455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1455: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1456: 
	movq	16(%rax), %rdx
 jmp .UNIQUE1457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1457: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1458: 
	movq	%rdx, 16(%rax)
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
	movq	24(%rax), %rax
 jmp .UNIQUE1461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1461: 
	testq	%rax, %rax
 jmp .UNIQUE1462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1462: 
	je	.L153
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
	movq	24(%rax), %rax
 jmp .UNIQUE1465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1465: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1466: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE1467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1467: 
	jmp	.L154
.L153:
 jmp .UNIQUE1468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1468: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1469: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1470: 
	movq	%rdx, (%rax)
.L154:
 jmp .UNIQUE1471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1471: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1472: 
	movq	16(%rax), %rax
 jmp .UNIQUE1473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1473: 
	testq	%rax, %rax
 jmp .UNIQUE1474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1474: 
	je	.L155
 jmp .UNIQUE1475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1475: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1476: 
	movq	16(%rax), %rax
 jmp .UNIQUE1477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1477: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1478: 
	movq	%rdx, 24(%rax)
.L155:
 jmp .UNIQUE1479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1479: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1480: 
	movq	%rax, %rdi
 jmp .UNIQUE1481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1481: 
	call	free
 jmp .UNIQUE1482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1482: 
	movq	-32(%rbp), %rax
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
	call	free
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
	jmp	.L156
.L152:
 jmp .UNIQUE1487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1487: 
	movl	$0, %eax
.L156:
 jmp .UNIQUE1488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1488: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1489: 
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
 jmp .UNIQUE1490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1490: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1491: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1492: 
	subq	$96, %rsp
 jmp .UNIQUE1493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1493: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE1494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1494: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1495: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE1496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1496: 
	testq	%rax, %rax
 jmp .UNIQUE1497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1497: 
	cmovs	%rdx, %rax
 jmp .UNIQUE1498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1498: 
	sarq	$2, %rax
 jmp .UNIQUE1499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1499: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE1500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1500: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE1501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1501: 
	salq	$2, %rax
 jmp .UNIQUE1502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1502: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE1503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1503: 
	jge	.L158
 jmp .UNIQUE1504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1504: 
	addq	$1, -48(%rbp)
.L158:
 jmp .UNIQUE1505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1505: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE1506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1506: 
	movq	%rax, %rdi
 jmp .UNIQUE1507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1507: 
	call	find_large_enough_free_group
 jmp .UNIQUE1508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1508: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE1509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1509: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE1510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1510: 
	jne	.L159
 jmp .UNIQUE1511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1511: 
	movl	$0, %eax
 jmp .UNIQUE1512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1512: 
	jmp	.L163
.L159:
 jmp .UNIQUE1513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1513: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE1514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1514: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE1515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1515: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1516: 
	movq	8(%rax), %rax
 jmp .UNIQUE1517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1517: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1518: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE1519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1519: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE1520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1520: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE1521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1521: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE1522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1522: 
	movq	%rdx, (%rsp)
 jmp .UNIQUE1523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1523: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1524: 
	movq	%rdx, 8(%rsp)
 jmp .UNIQUE1525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1525: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1526: 
	movq	%rdx, 16(%rsp)
 jmp .UNIQUE1527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1527: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1528: 
	movq	%rdx, 24(%rsp)
 jmp .UNIQUE1529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1529: 
	movq	%rax, %rdi
 jmp .UNIQUE1530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1530: 
	call	add_node_to_list
 jmp .UNIQUE1531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1531: 
	movq	%rax, allocated_chunks_list(%rip)
 jmp .UNIQUE1532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1532: 
	movq	allocated_chunks_num(%rip), %rax
 jmp .UNIQUE1533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1533: 
	addq	$1, %rax
 jmp .UNIQUE1534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1534: 
	movq	%rax, allocated_chunks_num(%rip)
 jmp .UNIQUE1535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1535: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1536: 
	movq	(%rax), %rax
 jmp .UNIQUE1537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1537: 
	cmpq	-48(%rbp), %rax
 jmp .UNIQUE1538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1538: 
	jne	.L161
 jmp .UNIQUE1539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1539: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1540: 
	movq	-40(%rbp), %rdx
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
	call	delete_node_from_list
 jmp .UNIQUE1544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1544: 
	movq	%rax, free_chunks_list(%rip)
 jmp .UNIQUE1545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1545: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1546: 
	subq	$1, %rax
 jmp .UNIQUE1547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1547: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1548: 
	jmp	.L162
.L161:
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
	subq	-48(%rbp), %rax
 jmp .UNIQUE1552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1552: 
	movq	%rax, %rdx
 jmp .UNIQUE1553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1553: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1554: 
	movq	%rdx, (%rax)
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
	movq	8(%rax), %rcx
 jmp .UNIQUE1557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1557: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE1558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1558: 
	movq	%rdx, %rax
 jmp .UNIQUE1559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1559: 
	salq	$3, %rax
 jmp .UNIQUE1560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1560: 
	addq	%rdx, %rax
 jmp .UNIQUE1561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1561: 
	leaq	(%rcx,%rax), %rdx
 jmp .UNIQUE1562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1562: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1563: 
	movq	%rdx, 8(%rax)
.L162:
 jmp .UNIQUE1564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1564: 
	movq	-24(%rbp), %rax
.L163:
 jmp .UNIQUE1565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1565: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1566: 
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
 jmp .UNIQUE1567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1567: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1568: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1569: 
	subq	$96, %rsp
 jmp .UNIQUE1570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1570: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE1571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1571: 
	movl	$0, -44(%rbp)
 jmp .UNIQUE1572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1572: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1573: 
	movq	%rax, %rdi
 jmp .UNIQUE1574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1574: 
	call	find_which_group_to_free
 jmp .UNIQUE1575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1575: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE1576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1576: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE1577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1577: 
	jne	.L165
 jmp .UNIQUE1578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1578: 
	movl	$0, %eax
 jmp .UNIQUE1579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1579: 
	jmp	.L166
.L165:
 jmp .UNIQUE1580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1580: 
	movl	$1022, %edx
 jmp .UNIQUE1581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1581: 
	movl	$__func__.4152, %esi
 jmp .UNIQUE1582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1582: 
	movl	$32, %edi
 jmp .UNIQUE1583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1583: 
	call	error_checking_malloc
 jmp .UNIQUE1584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1584: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE1585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1585: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE1586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1586: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1587: 
	movq	%rdx, %rsi
 jmp .UNIQUE1588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1588: 
	movq	%rax, %rdi
 jmp .UNIQUE1589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1589: 
	call	copy_nodes_ptr
 jmp .UNIQUE1590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1590: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE1591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1591: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE1592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1592: 
	movq	%rdx, %rsi
 jmp .UNIQUE1593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1593: 
	movq	%rax, %rdi
 jmp .UNIQUE1594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1594: 
	call	delete_node_from_list
 jmp .UNIQUE1595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1595: 
	movq	%rax, allocated_chunks_list(%rip)
 jmp .UNIQUE1596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1596: 
	movq	allocated_chunks_num(%rip), %rax
 jmp .UNIQUE1597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1597: 
	subq	$1, %rax
 jmp .UNIQUE1598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1598: 
	movq	%rax, allocated_chunks_num(%rip)
 jmp .UNIQUE1599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1599: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1600: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE1601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1601: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE1602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1602: 
	jne	.L167
 jmp .UNIQUE1603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1603: 
	movq	free_chunks_list(%rip), %rdx
 jmp .UNIQUE1604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1604: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1605: 
	movq	(%rax), %rcx
 jmp .UNIQUE1606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1606: 
	movq	%rcx, (%rsp)
 jmp .UNIQUE1607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1607: 
	movq	8(%rax), %rcx
 jmp .UNIQUE1608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1608: 
	movq	%rcx, 8(%rsp)
 jmp .UNIQUE1609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1609: 
	movq	16(%rax), %rcx
 jmp .UNIQUE1610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1610: 
	movq	%rcx, 16(%rsp)
 jmp .UNIQUE1611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1611: 
	movq	24(%rax), %rax
 jmp .UNIQUE1612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1612: 
	movq	%rax, 24(%rsp)
 jmp .UNIQUE1613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1613: 
	movq	%rdx, %rdi
 jmp .UNIQUE1614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1614: 
	call	add_node_to_list
 jmp .UNIQUE1615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1615: 
	movq	%rax, free_chunks_list(%rip)
 jmp .UNIQUE1616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1616: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1617: 
	addq	$1, %rax
 jmp .UNIQUE1618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1618: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1619: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1620: 
	movq	%rax, %rdi
 jmp .UNIQUE1621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1621: 
	call	free
 jmp .UNIQUE1622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1622: 
	movl	$1, -44(%rbp)
 jmp .UNIQUE1623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1623: 
	jmp	.L168
.L167:
 jmp .UNIQUE1624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1624: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE1625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1625: 
	jmp	.L169
.L172:
 jmp .UNIQUE1626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1626: 
	movq	-40(%rbp), %rax
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
	movq	%rax, %rdx
 jmp .UNIQUE1629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1629: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1630: 
	movq	8(%rax), %rax
 jmp .UNIQUE1631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1631: 
	cmpq	%rax, %rdx
 jmp .UNIQUE1632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1632: 
	jle	.L170
 jmp .UNIQUE1633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1633: 
	jmp	.L171
.L170:
 jmp .UNIQUE1634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1634: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1635: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE1636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1636: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1637: 
	movq	16(%rax), %rax
 jmp .UNIQUE1638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1638: 
	movq	%rax, -40(%rbp)
.L169:
 jmp .UNIQUE1639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1639: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE1640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1640: 
	jne	.L172
.L171:
 jmp .UNIQUE1641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1641: 
	cmpq	$0, -32(%rbp)
 jmp .UNIQUE1642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1642: 
	jne	.L173
 jmp .UNIQUE1643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1643: 
	movq	free_chunks_list(%rip), %rdx
 jmp .UNIQUE1644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1644: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1645: 
	movq	(%rax), %rcx
 jmp .UNIQUE1646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1646: 
	movq	%rcx, (%rsp)
 jmp .UNIQUE1647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1647: 
	movq	8(%rax), %rcx
 jmp .UNIQUE1648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1648: 
	movq	%rcx, 8(%rsp)
 jmp .UNIQUE1649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1649: 
	movq	16(%rax), %rcx
 jmp .UNIQUE1650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1650: 
	movq	%rcx, 16(%rsp)
 jmp .UNIQUE1651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1651: 
	movq	24(%rax), %rax
 jmp .UNIQUE1652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1652: 
	movq	%rax, 24(%rsp)
 jmp .UNIQUE1653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1653: 
	movq	%rdx, %rdi
 jmp .UNIQUE1654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1654: 
	call	add_node_to_list
 jmp .UNIQUE1655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1655: 
	movq	%rax, free_chunks_list(%rip)
 jmp .UNIQUE1656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1656: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1657: 
	addq	$1, %rax
 jmp .UNIQUE1658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1658: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1659: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1660: 
	movq	%rax, %rdi
 jmp .UNIQUE1661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1661: 
	call	free
 jmp .UNIQUE1662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1662: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1663: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE1664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1664: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1665: 
	movq	16(%rax), %rax
 jmp .UNIQUE1666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1666: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1667: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1668: 
	je	.L174
 jmp .UNIQUE1669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1669: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE1670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1670: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1671: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1672: 
	movq	%rcx, %rsi
 jmp .UNIQUE1673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1673: 
	movq	%rax, %rdi
 jmp .UNIQUE1674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1674: 
	call	check_and_merge
 jmp .UNIQUE1675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1675: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1676: 
	jmp	.L175
.L177:
 jmp .UNIQUE1677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1677: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1678: 
	subq	$1, %rax
 jmp .UNIQUE1679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1679: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1680: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1681: 
	movq	16(%rax), %rax
 jmp .UNIQUE1682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1682: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1683: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1684: 
	je	.L176
 jmp .UNIQUE1685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1685: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE1686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1686: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1687: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1688: 
	movq	%rcx, %rsi
 jmp .UNIQUE1689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1689: 
	movq	%rax, %rdi
 jmp .UNIQUE1690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1690: 
	call	check_and_merge
 jmp .UNIQUE1691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1691: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1692: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1693: 
	jne	.L175
 jmp .UNIQUE1694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1694: 
	jmp	.L174
.L176:
 jmp .UNIQUE1695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1695: 
	jmp	.L174
.L175:
 jmp .UNIQUE1696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1696: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1697: 
	jne	.L177
.L174:
 jmp .UNIQUE1698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1698: 
	movl	$1, -44(%rbp)
 jmp .UNIQUE1699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1699: 
	jmp	.L168
.L173:
 jmp .UNIQUE1700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1700: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1701: 
	movq	16(%rax), %rax
 jmp .UNIQUE1702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1702: 
	testq	%rax, %rax
 jmp .UNIQUE1703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1703: 
	jne	.L178
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
	movq	%rax, %rdx
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
	movq	8(%rax), %rax
 jmp .UNIQUE1709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1709: 
	cmpq	%rax, %rdx
 jmp .UNIQUE1710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1710: 
	jge	.L178
 jmp .UNIQUE1711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1711: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1712: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1713: 
	movq	%rdx, 16(%rax)
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
	movq	-32(%rbp), %rdx
 jmp .UNIQUE1716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1716: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE1717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1717: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1718: 
	movq	$0, 16(%rax)
 jmp .UNIQUE1719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1719: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1720: 
	addq	$1, %rax
 jmp .UNIQUE1721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1721: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1722: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE1723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1723: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1724: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1725: 
	movq	%rcx, %rsi
 jmp .UNIQUE1726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1726: 
	movq	%rax, %rdi
 jmp .UNIQUE1727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1727: 
	call	check_and_merge
 jmp .UNIQUE1728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1728: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1729: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1730: 
	je	.L179
 jmp .UNIQUE1731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1731: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1732: 
	subq	$1, %rax
 jmp .UNIQUE1733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1733: 
	movq	%rax, free_chunks_num(%rip)
.L179:
 jmp .UNIQUE1734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1734: 
	movl	$1, -44(%rbp)
 jmp .UNIQUE1735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1735: 
	jmp	.L168
.L178:
 jmp .UNIQUE1736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1736: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1737: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1738: 
	movq	%rdx, 16(%rax)
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
	movq	-32(%rbp), %rdx
 jmp .UNIQUE1741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1741: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE1742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1742: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1743: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE1744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1744: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE1745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1745: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1746: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1747: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE1748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1748: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1749: 
	addq	$1, %rax
 jmp .UNIQUE1750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1750: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1751: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE1752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1752: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1753: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1754: 
	movq	%rcx, %rsi
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
	call	check_and_merge
 jmp .UNIQUE1757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1757: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1758: 
	cmpq	$0, -24(%rbp)
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
	movq	-40(%rbp), %rcx
 jmp .UNIQUE1761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1761: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1762: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1763: 
	movq	%rcx, %rsi
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
	call	check_and_merge
 jmp .UNIQUE1766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1766: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1767: 
	jmp	.L181
.L180:
 jmp .UNIQUE1768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1768: 
	jmp	.L181
.L184:
 jmp .UNIQUE1769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1769: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1770: 
	subq	$1, %rax
 jmp .UNIQUE1771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1771: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1772: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1773: 
	movq	16(%rax), %rax
 jmp .UNIQUE1774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1774: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1775: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1776: 
	je	.L182
 jmp .UNIQUE1777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1777: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE1778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1778: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1779: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1780: 
	movq	%rcx, %rsi
 jmp .UNIQUE1781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1781: 
	movq	%rax, %rdi
 jmp .UNIQUE1782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1782: 
	call	check_and_merge
 jmp .UNIQUE1783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1783: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1784: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1785: 
	jne	.L181
 jmp .UNIQUE1786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1786: 
	jmp	.L183
.L182:
 jmp .UNIQUE1787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1787: 
	jmp	.L183
.L181:
 jmp .UNIQUE1788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1788: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1789: 
	jne	.L184
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
	movl	$1, -44(%rbp)
.L168:
 jmp .UNIQUE1791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1791: 
	movl	-44(%rbp), %eax
.L166:
 jmp .UNIQUE1792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1792: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1793: 
	ret
	.cfi_endproc
.LFE58:
	.size	managed_secure_free, .-managed_secure_free
	.section	.rodata
	.align 8
.LC13:
	.string	"Managed secure malloc error n function %s, line %d\n"
	.text
	.globl	error_checking_managed_secure_malloc
	.type	error_checking_managed_secure_malloc, @function
error_checking_managed_secure_malloc:
.LFB59:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1794: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1795: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1796: 
	subq	$48, %rsp
 jmp .UNIQUE1797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1797: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1798: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1799: 
	movl	%edx, -36(%rbp)
 jmp .UNIQUE1800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1800: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1801: 
	movq	%rax, %rdi
 jmp .UNIQUE1802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1802: 
	call	managed_secure_malloc
 jmp .UNIQUE1803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1803: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1804: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1805: 
	jne	.L186
 jmp .UNIQUE1806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1806: 
	movq	stderr(%rip), %rax
 jmp .UNIQUE1807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1807: 
	movl	-36(%rbp), %ecx
 jmp .UNIQUE1808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1808: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE1809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1809: 
	movl	$.LC13, %esi
 jmp .UNIQUE1810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1810: 
	movq	%rax, %rdi
 jmp .UNIQUE1811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1811: 
	movl	$0, %eax
 jmp .UNIQUE1812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1812: 
	call	fprintf
 jmp .UNIQUE1813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1813: 
	movl	$52, %edi
 jmp .UNIQUE1814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1814: 
	call	exit
.L186:
 jmp .UNIQUE1815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1815: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1816: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1817: 
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
 jmp .UNIQUE1818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1818: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1819: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1820: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1821: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1822: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE1823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1823: 
	movl	$0, -4(%rbp)
 jmp .UNIQUE1824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1824: 
	jmp	.L189
.L190:
 jmp .UNIQUE1825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1825: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE1826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1826: 
	movslq	%eax, %rdx
 jmp .UNIQUE1827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1827: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1828: 
	addq	%rax, %rdx
 jmp .UNIQUE1829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1829: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE1830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1830: 
	movslq	%eax, %rcx
 jmp .UNIQUE1831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1831: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1832: 
	addq	%rcx, %rax
 jmp .UNIQUE1833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1833: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1834: 
	movb	%al, (%rdx)
 jmp .UNIQUE1835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1835: 
	addl	$1, -4(%rbp)
.L189:
 jmp .UNIQUE1836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1836: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE1837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1837: 
	cltq
 jmp .UNIQUE1838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1838: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE1839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1839: 
	jl	.L190
 jmp .UNIQUE1840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1840: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1841: 
	ret
	.cfi_endproc
.LFE60:
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
.LFB61:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1842: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1843: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1844: 
	subq	$176, %rsp
 jmp .UNIQUE1845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1845: 
	movq	$20, -128(%rbp)
 jmp .UNIQUE1846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1846: 
	movl	$0, %esi
 jmp .UNIQUE1847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1847: 
	movl	$.LC14, %edi
 jmp .UNIQUE1848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1848: 
	movl	$0, %eax
 jmp .UNIQUE1849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1849: 
	call	printf
 jmp .UNIQUE1850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1850: 
	movl	$.LC15, %edi
 jmp .UNIQUE1851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1851: 
	call	puts
 jmp .UNIQUE1852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1852: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE1853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1853: 
	movq	%rax, -120(%rbp)
 jmp .UNIQUE1854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1854: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE1855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1855: 
	movq	%rax, %rdi
 jmp .UNIQUE1856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1856: 
	call	find_number_of_useful_chunks
 jmp .UNIQUE1857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1857: 
	movq	%rax, -112(%rbp)
 jmp .UNIQUE1858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1858: 
	movq	-112(%rbp), %rax
 jmp .UNIQUE1859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1859: 
	movq	%rax, %rsi
 jmp .UNIQUE1860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1860: 
	movl	$.LC16, %edi
 jmp .UNIQUE1861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1861: 
	movl	$0, %eax
 jmp .UNIQUE1862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1862: 
	call	printf
 jmp .UNIQUE1863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1863: 
	movl	$.LC17, %edi
 jmp .UNIQUE1864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1864: 
	call	puts
 jmp .UNIQUE1865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1865: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE1866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1866: 
	movq	%rax, %rdi
 jmp .UNIQUE1867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1867: 
	call	print_mem
 jmp .UNIQUE1868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1868: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1869: 
	salq	$2, %rax
 jmp .UNIQUE1870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1870: 
	movl	$60, %edx
 jmp .UNIQUE1871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1871: 
	movl	$__func__.4203, %esi
 jmp .UNIQUE1872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1872: 
	movq	%rax, %rdi
 jmp .UNIQUE1873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1873: 
	call	error_checking_malloc
 jmp .UNIQUE1874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1874: 
	movq	%rax, -104(%rbp)
 jmp .UNIQUE1875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1875: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1876: 
	salq	$2, %rax
 jmp .UNIQUE1877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1877: 
	movl	$61, %edx
 jmp .UNIQUE1878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1878: 
	movl	$__func__.4203, %esi
 jmp .UNIQUE1879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1879: 
	movq	%rax, %rdi
 jmp .UNIQUE1880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1880: 
	call	error_checking_malloc
 jmp .UNIQUE1881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1881: 
	movq	%rax, -96(%rbp)
 jmp .UNIQUE1882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1882: 
	movq	$5, -144(%rbp)
 jmp .UNIQUE1883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1883: 
	jmp	.L192
.L193:
 jmp .UNIQUE1884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1884: 
	movq	-144(%rbp), %rax
 jmp .UNIQUE1885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1885: 
	salq	$2, %rax
 jmp .UNIQUE1886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1886: 
	leaq	-20(%rax), %rdx
 jmp .UNIQUE1887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1887: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE1888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1888: 
	addq	%rax, %rdx
 jmp .UNIQUE1889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1889: 
	movq	-144(%rbp), %rax
 jmp .UNIQUE1890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1890: 
	movl	%eax, %ecx
 jmp .UNIQUE1891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1891: 
	movq	-144(%rbp), %rax
 jmp .UNIQUE1892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1892: 
	imull	%ecx, %eax
 jmp .UNIQUE1893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1893: 
	movl	%eax, (%rdx)
 jmp .UNIQUE1894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1894: 
	addq	$1, -144(%rbp)
.L192:
 jmp .UNIQUE1895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1895: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1896: 
	addq	$5, %rax
 jmp .UNIQUE1897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1897: 
	cmpq	-144(%rbp), %rax
 jmp .UNIQUE1898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1898: 
	jg	.L193
 jmp .UNIQUE1899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1899: 
	movl	$.LC18, %edi
 jmp .UNIQUE1900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1900: 
	call	puts
 jmp .UNIQUE1901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1901: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1902: 
	salq	$2, %rax
 jmp .UNIQUE1903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1903: 
	movl	$70, %edx
 jmp .UNIQUE1904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1904: 
	movl	$__func__.4203, %esi
 jmp .UNIQUE1905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1905: 
	movq	%rax, %rdi
 jmp .UNIQUE1906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1906: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE1907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1907: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE1908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1908: 
	movl	$.LC19, %edi
 jmp .UNIQUE1909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1909: 
	call	puts
 jmp .UNIQUE1910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1910: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1911: 
	salq	$2, %rax
 jmp .UNIQUE1912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1912: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE1913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1913: 
	movq	-104(%rbp), %rcx
 jmp .UNIQUE1914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1914: 
	movq	%rcx, %rsi
 jmp .UNIQUE1915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1915: 
	movq	%rax, %rdi
 jmp .UNIQUE1916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1916: 
	call	insert_data_into_mem
 jmp .UNIQUE1917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1917: 
	movl	$.LC20, %edi
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
	movl	$78, %edx
 jmp .UNIQUE1920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1920: 
	movl	$__func__.4203, %esi
 jmp .UNIQUE1921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1921: 
	movl	$4, %edi
 jmp .UNIQUE1922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1922: 
	call	error_checking_malloc
 jmp .UNIQUE1923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1923: 
	movq	%rax, -80(%rbp)
 jmp .UNIQUE1924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1924: 
	movq	$0, -136(%rbp)
 jmp .UNIQUE1925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1925: 
	jmp	.L194
.L195:
 jmp .UNIQUE1926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1926: 
	movq	-136(%rbp), %rcx
 jmp .UNIQUE1927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1927: 
	movq	-88(%rbp), %rdx
 jmp .UNIQUE1928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1928: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE1929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1929: 
	movq	%rcx, %r8
 jmp .UNIQUE1930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1930: 
	movl	$1, %ecx
 jmp .UNIQUE1931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1931: 
	movl	$4, %esi
 jmp .UNIQUE1932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1932: 
	movq	%rax, %rdi
 jmp .UNIQUE1933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1933: 
	call	get_secure_data
 jmp .UNIQUE1934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1934: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE1935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1935: 
	movl	(%rax), %eax
 jmp .UNIQUE1936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1936: 
	movl	%eax, %esi
 jmp .UNIQUE1937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1937: 
	movl	$.LC21, %edi
 jmp .UNIQUE1938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1938: 
	movl	$0, %eax
 jmp .UNIQUE1939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1939: 
	call	printf
 jmp .UNIQUE1940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1940: 
	addq	$1, -136(%rbp)
.L194:
 jmp .UNIQUE1941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1941: 
	movq	-136(%rbp), %rax
 jmp .UNIQUE1942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1942: 
	cmpq	-128(%rbp), %rax
 jmp .UNIQUE1943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1943: 
	jl	.L195
 jmp .UNIQUE1944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1944: 
	movl	$10, %edi
 jmp .UNIQUE1945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1945: 
	call	putchar
 jmp .UNIQUE1946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1946: 
	movl	$.LC22, %edi
 jmp .UNIQUE1947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1947: 
	call	puts
 jmp .UNIQUE1948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1948: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1949: 
	salq	$2, %rax
 jmp .UNIQUE1950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1950: 
	movl	$91, %edx
 jmp .UNIQUE1951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1951: 
	movl	$__func__.4203, %esi
 jmp .UNIQUE1952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1952: 
	movq	%rax, %rdi
 jmp .UNIQUE1953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1953: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE1954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1954: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE1955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1955: 
	movq	$5, -144(%rbp)
 jmp .UNIQUE1956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1956: 
	jmp	.L196
.L197:
 jmp .UNIQUE1957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1957: 
	movq	-144(%rbp), %rax
 jmp .UNIQUE1958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1958: 
	salq	$2, %rax
 jmp .UNIQUE1959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1959: 
	leaq	-20(%rax), %rdx
 jmp .UNIQUE1960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1960: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE1961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1961: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE1962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1962: 
	movq	-144(%rbp), %rax
 jmp .UNIQUE1963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1963: 
	movl	%eax, %edx
 jmp .UNIQUE1964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1964: 
	movl	%edx, %eax
 jmp .UNIQUE1965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1965: 
	addl	%eax, %eax
 jmp .UNIQUE1966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1966: 
	addl	%edx, %eax
 jmp .UNIQUE1967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1967: 
	movl	%eax, (%rcx)
 jmp .UNIQUE1968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1968: 
	addq	$1, -144(%rbp)
.L196:
 jmp .UNIQUE1969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1969: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1970: 
	addq	$5, %rax
 jmp .UNIQUE1971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1971: 
	cmpq	-144(%rbp), %rax
 jmp .UNIQUE1972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1972: 
	jg	.L197
 jmp .UNIQUE1973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1973: 
	movl	$.LC23, %edi
 jmp .UNIQUE1974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1974: 
	call	puts
 jmp .UNIQUE1975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1975: 
	movq	-128(%rbp), %rax
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
	movq	-72(%rbp), %rdx
 jmp .UNIQUE1978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1978: 
	movq	-104(%rbp), %rcx
 jmp .UNIQUE1979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1979: 
	movq	%rcx, %rsi
 jmp .UNIQUE1980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1980: 
	movq	%rax, %rdi
 jmp .UNIQUE1981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1981: 
	call	insert_data_into_mem
 jmp .UNIQUE1982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1982: 
	movl	$.LC20, %edi
 jmp .UNIQUE1983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1983: 
	call	puts
 jmp .UNIQUE1984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1984: 
	movq	$0, -136(%rbp)
 jmp .UNIQUE1985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1985: 
	jmp	.L198
.L199:
 jmp .UNIQUE1986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1986: 
	movq	-136(%rbp), %rcx
 jmp .UNIQUE1987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1987: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE1988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1988: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE1989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1989: 
	movq	%rcx, %r8
 jmp .UNIQUE1990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1990: 
	movl	$1, %ecx
 jmp .UNIQUE1991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1991: 
	movl	$4, %esi
 jmp .UNIQUE1992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1992: 
	movq	%rax, %rdi
 jmp .UNIQUE1993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1993: 
	call	get_secure_data
 jmp .UNIQUE1994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1994: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE1995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1995: 
	movl	(%rax), %eax
 jmp .UNIQUE1996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1996: 
	movl	%eax, %esi
 jmp .UNIQUE1997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1997: 
	movl	$.LC21, %edi
 jmp .UNIQUE1998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1998: 
	movl	$0, %eax
 jmp .UNIQUE1999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE1999: 
	call	printf
 jmp .UNIQUE2000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2000: 
	addq	$1, -136(%rbp)
.L198:
 jmp .UNIQUE2001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2001: 
	movq	-136(%rbp), %rax
 jmp .UNIQUE2002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2002: 
	cmpq	-128(%rbp), %rax
 jmp .UNIQUE2003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2003: 
	jl	.L199
 jmp .UNIQUE2004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2004: 
	movl	$10, %edi
 jmp .UNIQUE2005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2005: 
	call	putchar
 jmp .UNIQUE2006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2006: 
	movl	$.LC24, %edi
 jmp .UNIQUE2007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2007: 
	call	puts
 jmp .UNIQUE2008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2008: 
	movl	$0, %eax
 jmp .UNIQUE2009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2009: 
	call	print_lists
 jmp .UNIQUE2010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2010: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2011: 
	movq	%rax, %rdi
 jmp .UNIQUE2012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2012: 
	call	managed_secure_free
 jmp .UNIQUE2013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2013: 
	movl	$.LC25, %edi
 jmp .UNIQUE2014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2014: 
	call	puts
 jmp .UNIQUE2015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2015: 
	movl	$0, %eax
 jmp .UNIQUE2016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2016: 
	call	print_lists
 jmp .UNIQUE2017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2017: 
	movl	$.LC26, %edi
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
	movl	$120, %edx
 jmp .UNIQUE2020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2020: 
	movl	$__func__.4203, %esi
 jmp .UNIQUE2021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2021: 
	movl	$4, %edi
 jmp .UNIQUE2022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2022: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2023: 
	movq	%rax, -72(%rbp)
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
	movl	$424242424, (%rax)
 jmp .UNIQUE2026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2026: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE2027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2027: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2028: 
	movq	%rax, %rsi
 jmp .UNIQUE2029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2029: 
	movl	$4, %edi
 jmp .UNIQUE2030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2030: 
	call	insert_data_into_mem
 jmp .UNIQUE2031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2031: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2032: 
	movq	%rax, %rdi
 jmp .UNIQUE2033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2033: 
	call	free
 jmp .UNIQUE2034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2034: 
	movl	$124, %edx
 jmp .UNIQUE2035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2035: 
	movl	$__func__.4203, %esi
 jmp .UNIQUE2036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2036: 
	movl	$4, %edi
 jmp .UNIQUE2037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2037: 
	call	error_checking_malloc
 jmp .UNIQUE2038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2038: 
	movq	%rax, -80(%rbp)
 jmp .UNIQUE2039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2039: 
	movq	-136(%rbp), %rcx
 jmp .UNIQUE2040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2040: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE2041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2041: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2042: 
	movq	%rcx, %r8
 jmp .UNIQUE2043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2043: 
	movl	$0, %ecx
 jmp .UNIQUE2044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2044: 
	movl	$4, %esi
 jmp .UNIQUE2045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2045: 
	movq	%rax, %rdi
 jmp .UNIQUE2046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2046: 
	call	get_secure_data
 jmp .UNIQUE2047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2047: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2048: 
	movl	(%rax), %eax
 jmp .UNIQUE2049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2049: 
	movl	%eax, %esi
 jmp .UNIQUE2050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2050: 
	movl	$.LC27, %edi
 jmp .UNIQUE2051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2051: 
	movl	$0, %eax
 jmp .UNIQUE2052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2052: 
	call	printf
 jmp .UNIQUE2053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2053: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2054: 
	movq	%rax, %rdi
 jmp .UNIQUE2055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2055: 
	call	free
 jmp .UNIQUE2056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2056: 
	movl	$.LC28, %edi
 jmp .UNIQUE2057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2057: 
	call	puts
 jmp .UNIQUE2058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2058: 
	movl	$0, %eax
 jmp .UNIQUE2059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2059: 
	call	print_lists
 jmp .UNIQUE2060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2060: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE2061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2061: 
	movq	%rax, %rdi
 jmp .UNIQUE2062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2062: 
	call	managed_secure_free
 jmp .UNIQUE2063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2063: 
	movl	$.LC29, %edi
 jmp .UNIQUE2064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2064: 
	call	puts
 jmp .UNIQUE2065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2065: 
	movl	$0, %eax
 jmp .UNIQUE2066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2066: 
	call	print_lists
 jmp .UNIQUE2067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2067: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2068: 
	movq	%rax, %rdi
 jmp .UNIQUE2069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2069: 
	call	managed_secure_free
 jmp .UNIQUE2070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2070: 
	movl	$.LC30, %edi
 jmp .UNIQUE2071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2071: 
	call	puts
 jmp .UNIQUE2072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2072: 
	movl	$0, %eax
 jmp .UNIQUE2073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2073: 
	call	print_lists
 jmp .UNIQUE2074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2074: 
	movl	$.LC31, %edi
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
	movl	$146, %edx
 jmp .UNIQUE2077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2077: 
	movl	$__func__.4203, %esi
 jmp .UNIQUE2078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2078: 
	movl	$4, %edi
 jmp .UNIQUE2079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2079: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2080: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE2081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2081: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2082: 
	movl	$99998, %esi
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
	call	set_int
 jmp .UNIQUE2085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2085: 
	movq	-64(%rbp), %rax
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
	call	get_int
 jmp .UNIQUE2088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2088: 
	movl	%eax, -156(%rbp)
 jmp .UNIQUE2089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2089: 
	movl	-156(%rbp), %eax
 jmp .UNIQUE2090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2090: 
	movl	%eax, %esi
 jmp .UNIQUE2091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2091: 
	movl	$.LC32, %edi
 jmp .UNIQUE2092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2092: 
	movl	$0, %eax
 jmp .UNIQUE2093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2093: 
	call	printf
 jmp .UNIQUE2094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2094: 
	movl	$152, %edx
 jmp .UNIQUE2095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2095: 
	movl	$__func__.4203, %esi
 jmp .UNIQUE2096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2096: 
	movl	$1, %edi
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
	movq	%rax, -56(%rbp)
 jmp .UNIQUE2099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2099: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE2100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2100: 
	movl	$98, %esi
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
	call	set_char
 jmp .UNIQUE2103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2103: 
	movq	-56(%rbp), %rax
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
	call	get_char
 jmp .UNIQUE2106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2106: 
	movb	%al, -157(%rbp)
 jmp .UNIQUE2107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2107: 
	movsbl	-157(%rbp), %eax
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
	movl	$158, %edx
 jmp .UNIQUE2113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2113: 
	movl	$__func__.4203, %esi
 jmp .UNIQUE2114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2114: 
	movl	$8, %edi
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
	movq	%rax, -48(%rbp)
 jmp .UNIQUE2117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2117: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2118: 
	movl	$54545454, %esi
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
	call	set_long_int
 jmp .UNIQUE2121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2121: 
	movq	-48(%rbp), %rax
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
	call	get_long_int
 jmp .UNIQUE2124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2124: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE2125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2125: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2126: 
	movq	%rax, %rsi
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
	movl	$.LC35, %edi
 jmp .UNIQUE2131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2131: 
	call	puts
 jmp .UNIQUE2132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2132: 
	movl	$0, %eax
 jmp .UNIQUE2133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2133: 
	call	print_lists
 jmp .UNIQUE2134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2134: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2135: 
	movq	%rax, %rdi
 jmp .UNIQUE2136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2136: 
	call	managed_secure_free
 jmp .UNIQUE2137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2137: 
	movl	$.LC36, %edi
 jmp .UNIQUE2138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2138: 
	call	puts
 jmp .UNIQUE2139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2139: 
	movl	$0, %eax
 jmp .UNIQUE2140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2140: 
	call	print_lists
 jmp .UNIQUE2141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2141: 
	movl	$172, %edx
 jmp .UNIQUE2142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2142: 
	movl	$__func__.4203, %esi
 jmp .UNIQUE2143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2143: 
	movl	$1, %edi
 jmp .UNIQUE2144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2144: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2145: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE2146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2146: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2147: 
	movl	$97, %esi
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
	call	set_char
 jmp .UNIQUE2150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2150: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2151: 
	movq	%rax, %rdi
 jmp .UNIQUE2152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2152: 
	call	get_char
 jmp .UNIQUE2153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2153: 
	movb	%al, -157(%rbp)
 jmp .UNIQUE2154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2154: 
	movsbl	-157(%rbp), %eax
 jmp .UNIQUE2155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2155: 
	movl	%eax, %esi
 jmp .UNIQUE2156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2156: 
	movl	$.LC33, %edi
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
	call	printf
 jmp .UNIQUE2159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2159: 
	movl	$.LC37, %edi
 jmp .UNIQUE2160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2160: 
	call	puts
 jmp .UNIQUE2161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2161: 
	movl	$0, %eax
 jmp .UNIQUE2162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2162: 
	call	print_lists
 jmp .UNIQUE2163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2163: 
	movl	$182, %edx
 jmp .UNIQUE2164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2164: 
	movl	$__func__.4203, %esi
 jmp .UNIQUE2165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2165: 
	movl	$8, %edi
 jmp .UNIQUE2166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2166: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2167: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2168: 
	movabsq	$4665384344877005170, %rax
 jmp .UNIQUE2169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2169: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE2170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2170: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE2171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2171: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE2172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2172: 
	movq	%rdx, %rdi
 jmp .UNIQUE2173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2173: 
	call	set_double
 jmp .UNIQUE2174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2174: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2175: 
	movq	%rax, %rdi
 jmp .UNIQUE2176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2176: 
	call	get_double
 jmp .UNIQUE2177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2177: 
	movsd	%xmm0, -168(%rbp)
 jmp .UNIQUE2178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2178: 
	movq	-168(%rbp), %rax
 jmp .UNIQUE2179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2179: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE2180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2180: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE2181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2181: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE2182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2182: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE2183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2183: 
	movl	$.LC39, %edi
 jmp .UNIQUE2184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2184: 
	movl	$1, %eax
 jmp .UNIQUE2185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2185: 
	call	printf
 jmp .UNIQUE2186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2186: 
	movl	$.LC40, %edi
 jmp .UNIQUE2187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2187: 
	call	puts
 jmp .UNIQUE2188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2188: 
	movl	$0, %eax
 jmp .UNIQUE2189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2189: 
	call	print_lists
 jmp .UNIQUE2190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2190: 
	movl	$.LC41, %edi
 jmp .UNIQUE2191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2191: 
	call	puts
 jmp .UNIQUE2192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2192: 
	movl	$193, %edx
 jmp .UNIQUE2193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2193: 
	movl	$__func__.4203, %esi
 jmp .UNIQUE2194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2194: 
	movl	$80, %edi
 jmp .UNIQUE2195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2195: 
	call	error_checking_managed_secure_malloc
 jmp .UNIQUE2196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2196: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE2197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2197: 
	movabsq	$4631167498573958009, %rax
 jmp .UNIQUE2198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2198: 
	movq	%rax, -152(%rbp)
 jmp .UNIQUE2199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2199: 
	leaq	-152(%rbp), %rdx
 jmp .UNIQUE2200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2200: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2201: 
	movq	%rdx, %rcx
 jmp .UNIQUE2202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2202: 
	movl	$2, %edx
 jmp .UNIQUE2203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2203: 
	movq	%rax, %rsi
 jmp .UNIQUE2204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2204: 
	movl	$8, %edi
 jmp .UNIQUE2205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2205: 
	call	set_array_element
 jmp .UNIQUE2206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2206: 
	movabsq	$4629998950986019070, %rax
 jmp .UNIQUE2207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2207: 
	movq	%rax, -152(%rbp)
 jmp .UNIQUE2208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2208: 
	leaq	-152(%rbp), %rdx
 jmp .UNIQUE2209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2209: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2210: 
	movq	%rdx, %rcx
 jmp .UNIQUE2211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2211: 
	movl	$3, %edx
 jmp .UNIQUE2212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2212: 
	movq	%rax, %rsi
 jmp .UNIQUE2213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2213: 
	movl	$8, %edi
 jmp .UNIQUE2214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2214: 
	call	set_array_element
 jmp .UNIQUE2215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2215: 
	movabsq	$4607182418800017408, %rax
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
	call	get_array_element
 jmp .UNIQUE2224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2224: 
	movq	-152(%rbp), %rax
 jmp .UNIQUE2225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2225: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE2226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2226: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE2227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2227: 
	movl	$.LC45, %edi
 jmp .UNIQUE2228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2228: 
	movl	$1, %eax
 jmp .UNIQUE2229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2229: 
	call	printf
 jmp .UNIQUE2230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2230: 
	leaq	-152(%rbp), %rdx
 jmp .UNIQUE2231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2231: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2232: 
	movq	%rdx, %rcx
 jmp .UNIQUE2233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2233: 
	movl	$3, %edx
 jmp .UNIQUE2234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2234: 
	movq	%rax, %rsi
 jmp .UNIQUE2235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2235: 
	movl	$8, %edi
 jmp .UNIQUE2236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2236: 
	call	get_array_element
 jmp .UNIQUE2237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2237: 
	movq	-152(%rbp), %rax
 jmp .UNIQUE2238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2238: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE2239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2239: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE2240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2240: 
	movl	$.LC46, %edi
 jmp .UNIQUE2241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2241: 
	movl	$1, %eax
 jmp .UNIQUE2242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2242: 
	call	printf
 jmp .UNIQUE2243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2243: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2244: 
	movl	$3, %esi
 jmp .UNIQUE2245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2245: 
	movq	%rax, %rdi
 jmp .UNIQUE2246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2246: 
	call	get_double_array_element
 jmp .UNIQUE2247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2247: 
	movsd	%xmm0, -168(%rbp)
 jmp .UNIQUE2248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2248: 
	movq	-168(%rbp), %rax
 jmp .UNIQUE2249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2249: 
	movq	%rax, -152(%rbp)
 jmp .UNIQUE2250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2250: 
	movq	-152(%rbp), %rax
 jmp .UNIQUE2251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2251: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE2252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2252: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE2253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2253: 
	movl	$.LC46, %edi
 jmp .UNIQUE2254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2254: 
	movl	$1, %eax
 jmp .UNIQUE2255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2255: 
	call	printf
 jmp .UNIQUE2256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2256: 
	movl	$.LC47, %edi
 jmp .UNIQUE2257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2257: 
	call	puts
 jmp .UNIQUE2258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2258: 
	movl	$.LC48, %edi
 jmp .UNIQUE2259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2259: 
	call	puts
 jmp .UNIQUE2260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2260: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE2261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2261: 
	movq	%rax, %rdi
 jmp .UNIQUE2262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2262: 
	call	print_mem
 jmp .UNIQUE2263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2263: 
	movl	$.LC49, %edi
 jmp .UNIQUE2264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2264: 
	call	puts
 jmp .UNIQUE2265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2265: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2266: 
	ret
	.cfi_endproc
.LFE61:
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
.LFB62:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2267: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2268: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2269: 
	subq	$80, %rsp
 jmp .UNIQUE2270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2270: 
	movl	$.LC3, %edi
 jmp .UNIQUE2271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2271: 
	call	puts
 jmp .UNIQUE2272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2272: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE2273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2273: 
	movq	%rax, %rdi
 jmp .UNIQUE2274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2274: 
	call	print_list
 jmp .UNIQUE2275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2275: 
	movl	$.LC4, %edi
 jmp .UNIQUE2276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2276: 
	call	puts
 jmp .UNIQUE2277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2277: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE2278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2278: 
	movq	%rax, %rdi
 jmp .UNIQUE2279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2279: 
	call	print_list
 jmp .UNIQUE2280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2280: 
	movq	$10, -32(%rbp)
 jmp .UNIQUE2281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2281: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE2282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2282: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2283: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE2284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2284: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE2285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2285: 
	movl	$.LC50, %edi
 jmp .UNIQUE2286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2286: 
	call	puts
 jmp .UNIQUE2287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2287: 
	movl	$101, %edi
 jmp .UNIQUE2288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2288: 
	call	managed_secure_malloc
 jmp .UNIQUE2289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2289: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE2290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2290: 
	cmpq	$0, -64(%rbp)
 jmp .UNIQUE2291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2291: 
	jne	.L201
 jmp .UNIQUE2292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2292: 
	movl	$.LC51, %edi
 jmp .UNIQUE2293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2293: 
	call	puts
.L201:
 jmp .UNIQUE2294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2294: 
	movl	$0, %eax
 jmp .UNIQUE2295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2295: 
	call	print_lists
 jmp .UNIQUE2296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2296: 
	movl	$.LC52, %edi
 jmp .UNIQUE2297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2297: 
	call	puts
 jmp .UNIQUE2298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2298: 
	movl	$42, %edi
 jmp .UNIQUE2299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2299: 
	call	managed_secure_malloc
 jmp .UNIQUE2300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2300: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE2301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2301: 
	cmpq	$0, -56(%rbp)
 jmp .UNIQUE2302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2302: 
	jne	.L202
 jmp .UNIQUE2303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2303: 
	movl	$.LC53, %edi
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
.L202:
 jmp .UNIQUE2305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2305: 
	movl	$0, %eax
 jmp .UNIQUE2306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2306: 
	call	print_lists
 jmp .UNIQUE2307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2307: 
	movl	$.LC54, %edi
 jmp .UNIQUE2308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2308: 
	call	puts
 jmp .UNIQUE2309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2309: 
	movl	$61, %edi
 jmp .UNIQUE2310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2310: 
	call	managed_secure_malloc
 jmp .UNIQUE2311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2311: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE2312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2312: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE2313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2313: 
	jne	.L203
 jmp .UNIQUE2314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2314: 
	movl	$.LC55, %edi
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
.L203:
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
	movl	$.LC56, %edi
 jmp .UNIQUE2319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2319: 
	call	puts
 jmp .UNIQUE2320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2320: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE2321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2321: 
	movq	%rax, %rdi
 jmp .UNIQUE2322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2322: 
	call	managed_secure_free
 jmp .UNIQUE2323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2323: 
	movl	%eax, -68(%rbp)
 jmp .UNIQUE2324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2324: 
	cmpl	$0, -68(%rbp)
 jmp .UNIQUE2325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2325: 
	jne	.L204
 jmp .UNIQUE2326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2326: 
	movl	$.LC57, %edi
 jmp .UNIQUE2327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2327: 
	call	puts
.L204:
 jmp .UNIQUE2328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2328: 
	movl	$0, %eax
 jmp .UNIQUE2329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2329: 
	call	print_lists
 jmp .UNIQUE2330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2330: 
	movl	$.LC58, %edi
 jmp .UNIQUE2331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2331: 
	call	puts
 jmp .UNIQUE2332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2332: 
	movl	$80, %edi
 jmp .UNIQUE2333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2333: 
	call	managed_secure_malloc
 jmp .UNIQUE2334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2334: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE2335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2335: 
	cmpq	$0, -56(%rbp)
 jmp .UNIQUE2336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2336: 
	jne	.L205
 jmp .UNIQUE2337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2337: 
	movl	$.LC59, %edi
 jmp .UNIQUE2338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2338: 
	call	puts
.L205:
 jmp .UNIQUE2339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2339: 
	movl	$0, %eax
 jmp .UNIQUE2340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2340: 
	call	print_lists
 jmp .UNIQUE2341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2341: 
	movl	$.LC60, %edi
 jmp .UNIQUE2342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2342: 
	call	puts
 jmp .UNIQUE2343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2343: 
	movl	$29, %edi
 jmp .UNIQUE2344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2344: 
	call	managed_secure_malloc
 jmp .UNIQUE2345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2345: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE2346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2346: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE2347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2347: 
	jne	.L206
 jmp .UNIQUE2348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2348: 
	movl	$.LC61, %edi
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
.L206:
 jmp .UNIQUE2350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2350: 
	movl	$0, %eax
 jmp .UNIQUE2351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2351: 
	call	print_lists
 jmp .UNIQUE2352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2352: 
	movl	$.LC62, %edi
 jmp .UNIQUE2353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2353: 
	call	puts
 jmp .UNIQUE2354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2354: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2355: 
	movq	%rax, %rdi
 jmp .UNIQUE2356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2356: 
	call	managed_secure_free
 jmp .UNIQUE2357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2357: 
	movl	%eax, -68(%rbp)
 jmp .UNIQUE2358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2358: 
	cmpl	$0, -68(%rbp)
 jmp .UNIQUE2359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2359: 
	jne	.L207
 jmp .UNIQUE2360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2360: 
	movl	$.LC57, %edi
 jmp .UNIQUE2361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2361: 
	call	puts
.L207:
 jmp .UNIQUE2362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2362: 
	movl	$0, %eax
 jmp .UNIQUE2363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2363: 
	call	print_lists
 jmp .UNIQUE2364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2364: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2365: 
	ret
	.cfi_endproc
.LFE62:
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
	.string	"printing as blocks of data"
.LC70:
	.string	"freeing"
	.text
	.globl	simple_array_tests
	.type	simple_array_tests, @function
simple_array_tests:
.LFB63:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2366: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2367: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2368: 
	pushq	%rbx
 jmp .UNIQUE2369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2369: 
	subq	$88, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE2370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2370: 
	movl	$4, %edi
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
	movq	%rax, -72(%rbp)
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
	movq	%rax, -64(%rbp)
 jmp .UNIQUE2376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2376: 
	movl	$8, %edi
 jmp .UNIQUE2377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2377: 
	call	managed_secure_malloc
 jmp .UNIQUE2378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2378: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE2379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2379: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2380: 
	movl	$5, %esi
 jmp .UNIQUE2381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2381: 
	movq	%rax, %rdi
 jmp .UNIQUE2382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2382: 
	call	set_long_int
 jmp .UNIQUE2383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2383: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE2384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2384: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE2385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2385: 
	movq	%rdx, %rsi
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
	call	set_pointer
 jmp .UNIQUE2388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2388: 
	movq	-56(%rbp), %rax
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
	call	get_pointer
 jmp .UNIQUE2391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2391: 
	movl	$21, %esi
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
	call	set_long_int
 jmp .UNIQUE2394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2394: 
	movq	-64(%rbp), %rax
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
	call	get_long_int
 jmp .UNIQUE2397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2397: 
	salq	$2, %rax
 jmp .UNIQUE2398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2398: 
	movq	%rax, %rdi
 jmp .UNIQUE2399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2399: 
	call	managed_secure_malloc
 jmp .UNIQUE2400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2400: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE2401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2401: 
	movq	-64(%rbp), %rax
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
	call	get_long_int
 jmp .UNIQUE2404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2404: 
	salq	$2, %rax
 jmp .UNIQUE2405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2405: 
	movq	%rax, %rdi
 jmp .UNIQUE2406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2406: 
	call	managed_secure_malloc
 jmp .UNIQUE2407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2407: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE2408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2408: 
	movq	-64(%rbp), %rax
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
	call	get_long_int
 jmp .UNIQUE2411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2411: 
	salq	$3, %rax
 jmp .UNIQUE2412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2412: 
	movq	%rax, %rdi
 jmp .UNIQUE2413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2413: 
	call	managed_secure_malloc
 jmp .UNIQUE2414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2414: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE2415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2415: 
	movq	-64(%rbp), %rax
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
	call	get_long_int
 jmp .UNIQUE2418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2418: 
	salq	$2, %rax
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
	call	managed_secure_malloc
 jmp .UNIQUE2421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2421: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2422: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE2423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2423: 
	jne	.L209
 jmp .UNIQUE2424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2424: 
	movl	$.LC63, %edi
 jmp .UNIQUE2425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2425: 
	call	puts
 jmp .UNIQUE2426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2426: 
	movl	$42, %edi
 jmp .UNIQUE2427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2427: 
	call	exit
.L209:
 jmp .UNIQUE2428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2428: 
	movl	$.LC64, %edi
 jmp .UNIQUE2429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2429: 
	call	puts
 jmp .UNIQUE2430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2430: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2431: 
	movl	$0, %esi
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
	call	set_int
 jmp .UNIQUE2434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2434: 
	jmp	.L210
.L211:
 jmp .UNIQUE2435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2435: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2436: 
	movq	%rax, %rdi
 jmp .UNIQUE2437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2437: 
	call	get_int
 jmp .UNIQUE2438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2438: 
	leal	(%rax,%rax), %ebx
 jmp .UNIQUE2439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2439: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2440: 
	movq	%rax, %rdi
 jmp .UNIQUE2441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2441: 
	call	get_int
 jmp .UNIQUE2442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2442: 
	movslq	%eax, %rcx
 jmp .UNIQUE2443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2443: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2444: 
	movl	%ebx, %edx
 jmp .UNIQUE2445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2445: 
	movq	%rcx, %rsi
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
	call	set_int_array_element
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
	movq	%rax, %rdi
 jmp .UNIQUE2450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2450: 
	call	get_int
 jmp .UNIQUE2451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2451: 
	movl	%eax, %edx
 jmp .UNIQUE2452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2452: 
	movl	%edx, %eax
 jmp .UNIQUE2453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2453: 
	addl	%eax, %eax
 jmp .UNIQUE2454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2454: 
	leal	(%rax,%rdx), %ebx
 jmp .UNIQUE2455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2455: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2456: 
	movq	%rax, %rdi
 jmp .UNIQUE2457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2457: 
	call	get_int
 jmp .UNIQUE2458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2458: 
	movslq	%eax, %rcx
 jmp .UNIQUE2459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2459: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2460: 
	movl	%ebx, %edx
 jmp .UNIQUE2461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2461: 
	movq	%rcx, %rsi
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
	call	set_int_array_element
 jmp .UNIQUE2464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2464: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2465: 
	movq	%rax, %rdi
 jmp .UNIQUE2466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2466: 
	call	get_int
 jmp .UNIQUE2467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2467: 
	cvtsi2sd	%eax, %xmm0
 jmp .UNIQUE2468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2468: 
	movsd	.LC65(%rip), %xmm1
 jmp .UNIQUE2469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2469: 
	mulsd	%xmm1, %xmm0
 jmp .UNIQUE2470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2470: 
	movsd	%xmm0, -88(%rbp)
 jmp .UNIQUE2471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2471: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2472: 
	movq	%rax, %rdi
 jmp .UNIQUE2473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2473: 
	call	get_int
 jmp .UNIQUE2474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2474: 
	movslq	%eax, %rdx
 jmp .UNIQUE2475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2475: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2476: 
	movsd	-88(%rbp), %xmm0
 jmp .UNIQUE2477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2477: 
	movq	%rdx, %rsi
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
	call	set_double_array_element
 jmp .UNIQUE2480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2480: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2481: 
	movq	%rax, %rdi
 jmp .UNIQUE2482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2482: 
	call	get_int
 jmp .UNIQUE2483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2483: 
	addl	%eax, %eax
 jmp .UNIQUE2484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2484: 
	cvtsi2ss	%eax, %xmm3
 jmp .UNIQUE2485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2485: 
	movss	%xmm3, -88(%rbp)
 jmp .UNIQUE2486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2486: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2487: 
	movq	%rax, %rdi
 jmp .UNIQUE2488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2488: 
	call	get_int
 jmp .UNIQUE2489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2489: 
	movslq	%eax, %rdx
 jmp .UNIQUE2490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2490: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2491: 
	movss	-88(%rbp), %xmm0
 jmp .UNIQUE2492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2492: 
	movq	%rdx, %rsi
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
	call	set_float_array_element
 jmp .UNIQUE2495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2495: 
	movq	-72(%rbp), %rax
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
	call	get_int
 jmp .UNIQUE2498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2498: 
	leal	1(%rax), %edx
 jmp .UNIQUE2499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2499: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2500: 
	movl	%edx, %esi
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
	call	set_int
.L210:
 jmp .UNIQUE2503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2503: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2504: 
	movq	%rax, %rdi
 jmp .UNIQUE2505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2505: 
	call	get_int
 jmp .UNIQUE2506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2506: 
	movslq	%eax, %rbx
 jmp .UNIQUE2507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2507: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2508: 
	movq	%rax, %rdi
 jmp .UNIQUE2509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2509: 
	call	get_long_int
 jmp .UNIQUE2510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2510: 
	cmpq	%rax, %rbx
 jmp .UNIQUE2511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2511: 
	jl	.L211
 jmp .UNIQUE2512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2512: 
	movl	$.LC66, %edi
 jmp .UNIQUE2513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2513: 
	call	puts
 jmp .UNIQUE2514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2514: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2515: 
	movl	$0, %esi
 jmp .UNIQUE2516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2516: 
	movq	%rax, %rdi
 jmp .UNIQUE2517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2517: 
	call	set_int
 jmp .UNIQUE2518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2518: 
	jmp	.L212
.L213:
 jmp .UNIQUE2519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2519: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2520: 
	movq	%rax, %rdi
 jmp .UNIQUE2521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2521: 
	call	get_int
 jmp .UNIQUE2522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2522: 
	movslq	%eax, %rdx
 jmp .UNIQUE2523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2523: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2524: 
	movq	%rdx, %rsi
 jmp .UNIQUE2525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2525: 
	movq	%rax, %rdi
 jmp .UNIQUE2526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2526: 
	call	get_int_array_element
 jmp .UNIQUE2527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2527: 
	movl	%eax, %ebx
 jmp .UNIQUE2528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2528: 
	movq	-72(%rbp), %rax
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
	call	get_int
 jmp .UNIQUE2531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2531: 
	movslq	%eax, %rdx
 jmp .UNIQUE2532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2532: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2533: 
	movq	%rdx, %rsi
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
	call	get_int_array_element
 jmp .UNIQUE2536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2536: 
	addl	%eax, %ebx
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
	movslq	%eax, %rcx
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
	movl	%ebx, %edx
 jmp .UNIQUE2543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2543: 
	movq	%rcx, %rsi
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
	call	set_int_array_element
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
	movq	-32(%rbp), %rax
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
	call	get_double_array_element
 jmp .UNIQUE2554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2554: 
	movsd	%xmm0, -88(%rbp)
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
	movq	-24(%rbp), %rax
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
	call	get_float_array_element
 jmp .UNIQUE2563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2563: 
	unpcklps	%xmm0, %xmm0
 jmp .UNIQUE2564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2564: 
	cvtps2pd	%xmm0, %xmm0
 jmp .UNIQUE2565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2565: 
	movapd	%xmm0, %xmm2
 jmp .UNIQUE2566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2566: 
	addsd	-88(%rbp), %xmm2
 jmp .UNIQUE2567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2567: 
	movsd	%xmm2, -88(%rbp)
 jmp .UNIQUE2568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2568: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2569: 
	movq	%rax, %rdi
 jmp .UNIQUE2570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2570: 
	call	get_int
 jmp .UNIQUE2571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2571: 
	movslq	%eax, %rdx
 jmp .UNIQUE2572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2572: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2573: 
	movsd	-88(%rbp), %xmm0
 jmp .UNIQUE2574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2574: 
	movq	%rdx, %rsi
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
	call	set_double_array_element
 jmp .UNIQUE2577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2577: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2578: 
	movq	%rax, %rdi
 jmp .UNIQUE2579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2579: 
	call	get_int
 jmp .UNIQUE2580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2580: 
	leal	1(%rax), %edx
 jmp .UNIQUE2581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2581: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2582: 
	movl	%edx, %esi
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
	call	set_int
.L212:
 jmp .UNIQUE2585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2585: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2586: 
	movq	%rax, %rdi
 jmp .UNIQUE2587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2587: 
	call	get_int
 jmp .UNIQUE2588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2588: 
	movslq	%eax, %rbx
 jmp .UNIQUE2589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2589: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2590: 
	movq	%rax, %rdi
 jmp .UNIQUE2591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2591: 
	call	get_long_int
 jmp .UNIQUE2592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2592: 
	cmpq	%rax, %rbx
 jmp .UNIQUE2593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2593: 
	jl	.L213
 jmp .UNIQUE2594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2594: 
	movl	$.LC67, %edi
 jmp .UNIQUE2595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2595: 
	call	puts
 jmp .UNIQUE2596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2596: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2597: 
	movl	$0, %esi
 jmp .UNIQUE2598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2598: 
	movq	%rax, %rdi
 jmp .UNIQUE2599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2599: 
	call	set_int
 jmp .UNIQUE2600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2600: 
	jmp	.L214
.L215:
 jmp .UNIQUE2601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2601: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2602: 
	movq	%rax, %rdi
 jmp .UNIQUE2603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2603: 
	call	get_int
 jmp .UNIQUE2604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2604: 
	movslq	%eax, %rdx
 jmp .UNIQUE2605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2605: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2606: 
	movq	%rdx, %rsi
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
	call	get_int_array_element
 jmp .UNIQUE2609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2609: 
	movl	%eax, %esi
 jmp .UNIQUE2610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2610: 
	movl	$.LC21, %edi
 jmp .UNIQUE2611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2611: 
	movl	$0, %eax
 jmp .UNIQUE2612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2612: 
	call	printf
 jmp .UNIQUE2613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2613: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2614: 
	movq	%rax, %rdi
 jmp .UNIQUE2615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2615: 
	call	get_int
 jmp .UNIQUE2616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2616: 
	leal	1(%rax), %edx
 jmp .UNIQUE2617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2617: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2618: 
	movl	%edx, %esi
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
	call	set_int
.L214:
 jmp .UNIQUE2621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2621: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2622: 
	movq	%rax, %rdi
 jmp .UNIQUE2623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2623: 
	call	get_int
 jmp .UNIQUE2624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2624: 
	movslq	%eax, %rbx
 jmp .UNIQUE2625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2625: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2626: 
	movq	%rax, %rdi
 jmp .UNIQUE2627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2627: 
	call	get_long_int
 jmp .UNIQUE2628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2628: 
	cmpq	%rax, %rbx
 jmp .UNIQUE2629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2629: 
	jl	.L215
 jmp .UNIQUE2630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2630: 
	movl	$10, %edi
 jmp .UNIQUE2631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2631: 
	call	putchar
 jmp .UNIQUE2632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2632: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2633: 
	movl	$0, %esi
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
	call	set_int
 jmp .UNIQUE2636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2636: 
	jmp	.L216
.L217:
 jmp .UNIQUE2637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2637: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2638: 
	movq	%rax, %rdi
 jmp .UNIQUE2639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2639: 
	call	get_int
 jmp .UNIQUE2640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2640: 
	movslq	%eax, %rdx
 jmp .UNIQUE2641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2641: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2642: 
	movq	%rdx, %rsi
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
	call	get_double_array_element
 jmp .UNIQUE2645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2645: 
	movsd	%xmm0, -88(%rbp)
 jmp .UNIQUE2646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2646: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE2647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2647: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE2648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2648: 
	movsd	-88(%rbp), %xmm0
 jmp .UNIQUE2649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2649: 
	movl	$.LC68, %edi
 jmp .UNIQUE2650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2650: 
	movl	$1, %eax
 jmp .UNIQUE2651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2651: 
	call	printf
 jmp .UNIQUE2652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2652: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2653: 
	movq	%rax, %rdi
 jmp .UNIQUE2654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2654: 
	call	get_int
 jmp .UNIQUE2655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2655: 
	leal	1(%rax), %edx
 jmp .UNIQUE2656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2656: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2657: 
	movl	%edx, %esi
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
	call	set_int
.L216:
 jmp .UNIQUE2660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2660: 
	movq	-72(%rbp), %rax
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
	call	get_int
 jmp .UNIQUE2663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2663: 
	movslq	%eax, %rbx
 jmp .UNIQUE2664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2664: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2665: 
	movq	%rax, %rdi
 jmp .UNIQUE2666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2666: 
	call	get_long_int
 jmp .UNIQUE2667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2667: 
	cmpq	%rax, %rbx
 jmp .UNIQUE2668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2668: 
	jl	.L217
 jmp .UNIQUE2669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2669: 
	movl	$10, %edi
 jmp .UNIQUE2670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2670: 
	call	putchar
 jmp .UNIQUE2671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2671: 
	movl	$.LC69, %edi
 jmp .UNIQUE2672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2672: 
	call	puts
 jmp .UNIQUE2673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2673: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2674: 
	movl	$0, %esi
 jmp .UNIQUE2675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2675: 
	movq	%rax, %rdi
 jmp .UNIQUE2676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2676: 
	call	set_int
 jmp .UNIQUE2677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2677: 
	jmp	.L218
.L219:
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
	cltq
 jmp .UNIQUE2682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2682: 
	salq	$3, %rax
 jmp .UNIQUE2683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2683: 
	movq	%rax, %rdx
 jmp .UNIQUE2684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2684: 
	leaq	-80(%rbp), %rcx
 jmp .UNIQUE2685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2685: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2686: 
	movq	%rax, %rsi
 jmp .UNIQUE2687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2687: 
	movl	$8, %edi
 jmp .UNIQUE2688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2688: 
	call	get_arbitrary_block_in_heap_with_offset
 jmp .UNIQUE2689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2689: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2690: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE2691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2691: 
	movsd	-88(%rbp), %xmm0
 jmp .UNIQUE2692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2692: 
	movl	$.LC68, %edi
 jmp .UNIQUE2693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2693: 
	movl	$1, %eax
 jmp .UNIQUE2694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2694: 
	call	printf
 jmp .UNIQUE2695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2695: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2696: 
	movq	%rax, %rdi
 jmp .UNIQUE2697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2697: 
	call	get_int
 jmp .UNIQUE2698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2698: 
	leal	1(%rax), %edx
 jmp .UNIQUE2699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2699: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2700: 
	movl	%edx, %esi
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
	call	set_int
.L218:
 jmp .UNIQUE2703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2703: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2704: 
	movq	%rax, %rdi
 jmp .UNIQUE2705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2705: 
	call	get_int
 jmp .UNIQUE2706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2706: 
	movslq	%eax, %rbx
 jmp .UNIQUE2707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2707: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2708: 
	movq	%rax, %rdi
 jmp .UNIQUE2709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2709: 
	call	get_long_int
 jmp .UNIQUE2710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2710: 
	cmpq	%rax, %rbx
 jmp .UNIQUE2711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2711: 
	jl	.L219
 jmp .UNIQUE2712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2712: 
	movl	$10, %edi
 jmp .UNIQUE2713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2713: 
	call	putchar
 jmp .UNIQUE2714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2714: 
	movl	$.LC70, %edi
 jmp .UNIQUE2715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2715: 
	call	puts
 jmp .UNIQUE2716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2716: 
	movq	-72(%rbp), %rax
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
	movq	-64(%rbp), %rax
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
	movq	-48(%rbp), %rax
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
	movq	-40(%rbp), %rax
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
	movq	-32(%rbp), %rax
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
	movq	-24(%rbp), %rax
 jmp .UNIQUE2732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2732: 
	movq	%rax, %rdi
 jmp .UNIQUE2733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2733: 
	call	managed_secure_free
 jmp .UNIQUE2734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2734: 
	addq	$88, %rsp
 jmp .UNIQUE2735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2735: 
	popq	%rbx
 jmp .UNIQUE2736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2736: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2737: 
	ret
	.cfi_endproc
.LFE63:
	.size	simple_array_tests, .-simple_array_tests
	.comm	total_stack_bytes_allocated,8,8
	.comm	entire_stack_memory_chunk,8,8
	.comm	last_unused_stack_memory,8,8
	.comm	stack_keyshare_input_file,8,8
	.globl	find_number_of_useful_stack_chunks
	.type	find_number_of_useful_stack_chunks, @function
find_number_of_useful_stack_chunks:
.LFB64:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2738: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2739: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2740: 
	movq	%rdi, -40(%rbp)
 jmp .UNIQUE2741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2741: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2742: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2743: 
	movq	$5, -16(%rbp)
 jmp .UNIQUE2744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2744: 
	movq	$3, -8(%rbp)
 jmp .UNIQUE2745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2745: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE2746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2746: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE2747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2747: 
	addq	%rdx, %rax
 jmp .UNIQUE2748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2748: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE2749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2749: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE2750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2750: 
	leaq	(%rdx,%rcx), %rsi
 jmp .UNIQUE2751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2751: 
	cqto
 jmp .UNIQUE2752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2752: 
	idivq	%rsi
 jmp .UNIQUE2753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2753: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2754: 
	ret
	.cfi_endproc
.LFE64:
	.size	find_number_of_useful_stack_chunks, .-find_number_of_useful_stack_chunks
	.globl	get_ptr_size
	.type	get_ptr_size, @function
get_ptr_size:
.LFB65:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2755: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2756: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2757: 
	movl	$8, %eax
 jmp .UNIQUE2758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2758: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2759: 
	ret
	.cfi_endproc
.LFE65:
	.size	get_ptr_size, .-get_ptr_size
	.section	.rodata
	.align 8
.LC71:
	.string	"Stack: Great!. No need to allocate more than the defined amount."
	.align 8
.LC72:
	.string	"Stack: Whoops. We need to allocate a bit more space."
	.text
	.globl	allocate_stack_mem
	.type	allocate_stack_mem, @function
allocate_stack_mem:
.LFB66:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2760: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2761: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2762: 
	pushq	%rbx
 jmp .UNIQUE2763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2763: 
	subq	$56, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE2764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2764: 
	movq	$1024, -56(%rbp)
 jmp .UNIQUE2765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2765: 
	movq	$5, -48(%rbp)
 jmp .UNIQUE2766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2766: 
	movq	$3, -40(%rbp)
 jmp .UNIQUE2767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2767: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE2768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2768: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE2769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2769: 
	addq	%rdx, %rax
 jmp .UNIQUE2770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2770: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE2771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2771: 
	movq	-48(%rbp), %rcx
 jmp .UNIQUE2772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2772: 
	leaq	(%rdx,%rcx), %rbx
 jmp .UNIQUE2773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2773: 
	cqto
 jmp .UNIQUE2774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2774: 
	idivq	%rbx
 jmp .UNIQUE2775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2775: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE2776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2776: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2777: 
	imulq	-40(%rbp), %rax
 jmp .UNIQUE2778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2778: 
	movq	%rax, %rdx
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
	subq	$1, %rax
 jmp .UNIQUE2781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2781: 
	imulq	-48(%rbp), %rax
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
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE2784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2784: 
	jne	.L225
 jmp .UNIQUE2785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2785: 
	movl	$.LC71, %edi
 jmp .UNIQUE2786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2786: 
	call	puts
 jmp .UNIQUE2787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2787: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE2788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2788: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE2789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2789: 
	jmp	.L226
.L225:
 jmp .UNIQUE2790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2790: 
	movl	$.LC72, %edi
 jmp .UNIQUE2791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2791: 
	call	puts
 jmp .UNIQUE2792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2792: 
	addq	$1, -32(%rbp)
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
	imulq	-40(%rbp), %rax
 jmp .UNIQUE2795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2795: 
	movq	%rax, %rdx
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
	subq	$1, %rax
 jmp .UNIQUE2798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2798: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE2799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2799: 
	addq	%rdx, %rax
 jmp .UNIQUE2800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2800: 
	movq	%rax, -64(%rbp)
.L226:
 jmp .UNIQUE2801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2801: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2802: 
	movl	$112, %edx
 jmp .UNIQUE2803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2803: 
	movl	$__func__.4291, %esi
 jmp .UNIQUE2804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2804: 
	movq	%rax, %rdi
 jmp .UNIQUE2805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2805: 
	call	error_checking_malloc
 jmp .UNIQUE2806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2806: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2807: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2808: 
	movq	%rax, total_stack_bytes_allocated(%rip)
 jmp .UNIQUE2809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2809: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2810: 
	addq	$56, %rsp
 jmp .UNIQUE2811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2811: 
	popq	%rbx
 jmp .UNIQUE2812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2812: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2813: 
	ret
	.cfi_endproc
.LFE66:
	.size	allocate_stack_mem, .-allocate_stack_mem
	.globl	free_secure_stack_mem
	.type	free_secure_stack_mem, @function
free_secure_stack_mem:
.LFB67:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2814: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2815: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2816: 
	subq	$16, %rsp
 jmp .UNIQUE2817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2817: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE2818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2818: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2819: 
	movq	%rax, %rdi
 jmp .UNIQUE2820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2820: 
	call	free
 jmp .UNIQUE2821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2821: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2822: 
	ret
	.cfi_endproc
.LFE67:
	.size	free_secure_stack_mem, .-free_secure_stack_mem
	.section	.rodata
	.align 8
.LC73:
	.string	"Stack:Attempted to read more keyshares that the ones stored\n"
	.text
	.globl	get_next_stack_keyshare
	.type	get_next_stack_keyshare, @function
get_next_stack_keyshare:
.LFB68:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2823: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2824: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2825: 
	subq	$16, %rsp
 jmp .UNIQUE2826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2826: 
	movq	stack_keyshare_input_file(%rip), %rax
 jmp .UNIQUE2827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2827: 
	movq	%rax, %rdi
 jmp .UNIQUE2828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2828: 
	call	feof
 jmp .UNIQUE2829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2829: 
	testl	%eax, %eax
 jmp .UNIQUE2830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2830: 
	je	.L230
 jmp .UNIQUE2831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2831: 
	movl	$.LC73, %edi
 jmp .UNIQUE2832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2832: 
	call	perror
 jmp .UNIQUE2833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2833: 
	movl	$45, %edi
 jmp .UNIQUE2834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2834: 
	call	exit
.L230:
 jmp .UNIQUE2835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2835: 
	movq	stack_keyshare_input_file(%rip), %rdx
 jmp .UNIQUE2836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2836: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE2837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2837: 
	movq	%rdx, %rcx
 jmp .UNIQUE2838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2838: 
	movl	$1, %edx
 jmp .UNIQUE2839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2839: 
	movl	$1, %esi
 jmp .UNIQUE2840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2840: 
	movq	%rax, %rdi
 jmp .UNIQUE2841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2841: 
	call	fread
 jmp .UNIQUE2842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2842: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE2843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2843: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2844: 
	ret
	.cfi_endproc
.LFE68:
	.size	get_next_stack_keyshare, .-get_next_stack_keyshare
	.globl	insert_keys_into_stack_mem
	.type	insert_keys_into_stack_mem, @function
insert_keys_into_stack_mem:
.LFB69:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2845: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2846: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2847: 
	pushq	%rbx
 jmp .UNIQUE2848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2848: 
	subq	$72, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE2849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2849: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE2850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2850: 
	movl	$0, -52(%rbp)
 jmp .UNIQUE2851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2851: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2852: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2853: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE2854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2854: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE2855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2855: 
	jmp	.L233
.L238:
 jmp .UNIQUE2856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2856: 
	cmpl	$0, -52(%rbp)
 jmp .UNIQUE2857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2857: 
	je	.L234
 jmp .UNIQUE2858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2858: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE2859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2859: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2860: 
	leaq	(%rdx,%rax), %rbx
 jmp .UNIQUE2861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2861: 
	movl	$0, %eax
 jmp .UNIQUE2862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2862: 
	call	get_next_stack_keyshare
 jmp .UNIQUE2863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2863: 
	movb	%al, (%rbx)
 jmp .UNIQUE2864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2864: 
	addq	$1, -32(%rbp)
 jmp .UNIQUE2865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2865: 
	addq	$1, -48(%rbp)
 jmp .UNIQUE2866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2866: 
	jmp	.L235
.L234:
 jmp .UNIQUE2867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2867: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE2868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2868: 
	jmp	.L236
.L237:
 jmp .UNIQUE2869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2869: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2870: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE2871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2871: 
	addq	%rdx, %rax
 jmp .UNIQUE2872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2872: 
	movq	%rax, %rdx
 jmp .UNIQUE2873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2873: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2874: 
	addq	%rdx, %rax
 jmp .UNIQUE2875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2875: 
	movb	$0, (%rax)
 jmp .UNIQUE2876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2876: 
	addq	$1, -40(%rbp)
.L236:
 jmp .UNIQUE2877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2877: 
	cmpq	$2, -40(%rbp)
 jmp .UNIQUE2878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2878: 
	jle	.L237
 jmp .UNIQUE2879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2879: 
	addq	$3, -48(%rbp)
 jmp .UNIQUE2880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2880: 
	movl	$1, -52(%rbp)
.L235:
 jmp .UNIQUE2881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2881: 
	cmpq	$5, -32(%rbp)
 jmp .UNIQUE2882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2882: 
	jne	.L233
 jmp .UNIQUE2883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2883: 
	movl	$0, -52(%rbp)
 jmp .UNIQUE2884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2884: 
	movq	$0, -32(%rbp)
.L233:
 jmp .UNIQUE2885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2885: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE2886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2886: 
	cmpq	%rax, -48(%rbp)
 jmp .UNIQUE2887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2887: 
	jl	.L238
 jmp .UNIQUE2888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2888: 
	addq	$72, %rsp
 jmp .UNIQUE2889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2889: 
	popq	%rbx
 jmp .UNIQUE2890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2890: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2891: 
	ret
	.cfi_endproc
.LFE69:
	.size	insert_keys_into_stack_mem, .-insert_keys_into_stack_mem
	.section	.rodata
.LC74:
	.string	"stack_keyshares"
	.align 8
.LC75:
	.string	"init_mem:stack_keyshares file error\n"
	.text
	.globl	init_stack_mem
	.type	init_stack_mem, @function
init_stack_mem:
.LFB70:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2892: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2893: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2894: 
	subq	$16, %rsp
 jmp .UNIQUE2895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2895: 
	movl	$0, %edi
 jmp .UNIQUE2896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2896: 
	call	time
 jmp .UNIQUE2897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2897: 
	movl	%eax, %edi
 jmp .UNIQUE2898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2898: 
	call	srand
 jmp .UNIQUE2899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2899: 
	movl	$0, %eax
 jmp .UNIQUE2900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2900: 
	call	allocate_stack_mem
 jmp .UNIQUE2901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2901: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE2902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2902: 
	movl	$.LC10, %esi
 jmp .UNIQUE2903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2903: 
	movl	$.LC74, %edi
 jmp .UNIQUE2904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2904: 
	call	fopen
 jmp .UNIQUE2905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2905: 
	movq	%rax, stack_keyshare_input_file(%rip)
 jmp .UNIQUE2906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2906: 
	movq	stack_keyshare_input_file(%rip), %rax
 jmp .UNIQUE2907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2907: 
	testq	%rax, %rax
 jmp .UNIQUE2908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2908: 
	jne	.L240
 jmp .UNIQUE2909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2909: 
	movl	$.LC75, %edi
 jmp .UNIQUE2910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2910: 
	call	perror
 jmp .UNIQUE2911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2911: 
	movl	$46, %edi
 jmp .UNIQUE2912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2912: 
	call	exit
.L240:
 jmp .UNIQUE2913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2913: 
	movq	-8(%rbp), %rax
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
	call	insert_keys_into_stack_mem
 jmp .UNIQUE2916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2916: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2917: 
	movq	%rax, entire_stack_memory_chunk(%rip)
 jmp .UNIQUE2918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2918: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2919: 
	movq	%rax, last_unused_stack_memory(%rip)
 jmp .UNIQUE2920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2920: 
	movq	stack_keyshare_input_file(%rip), %rax
 jmp .UNIQUE2921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2921: 
	movq	%rax, %rdi
 jmp .UNIQUE2922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2922: 
	call	fclose
 jmp .UNIQUE2923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2923: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2924: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2925: 
	ret
	.cfi_endproc
.LFE70:
	.size	init_stack_mem, .-init_stack_mem
	.section	.rodata
.LC76:
	.string	"Printing stack memory:"
	.text
	.globl	print_stack_mem
	.type	print_stack_mem, @function
print_stack_mem:
.LFB71:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2926: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2927: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2928: 
	subq	$32, %rsp
 jmp .UNIQUE2929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2929: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE2930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2930: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2931: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE2932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2932: 
	movl	$.LC76, %edi
 jmp .UNIQUE2933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2933: 
	call	puts
 jmp .UNIQUE2934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2934: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE2935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2935: 
	jmp	.L243
.L244:
 jmp .UNIQUE2936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2936: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE2937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2937: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2938: 
	addq	%rdx, %rax
 jmp .UNIQUE2939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2939: 
	movzbl	(%rax), %eax
 jmp .UNIQUE2940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2940: 
	movzbl	%al, %eax
 jmp .UNIQUE2941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2941: 
	movl	%eax, %esi
 jmp .UNIQUE2942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2942: 
	movl	$.LC9, %edi
 jmp .UNIQUE2943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2943: 
	movl	$0, %eax
 jmp .UNIQUE2944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2944: 
	call	printf
 jmp .UNIQUE2945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2945: 
	addq	$1, -16(%rbp)
.L243:
 jmp .UNIQUE2946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2946: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE2947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2947: 
	cmpq	%rax, -16(%rbp)
 jmp .UNIQUE2948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2948: 
	jl	.L244
 jmp .UNIQUE2949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2949: 
	movl	$10, %edi
 jmp .UNIQUE2950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2950: 
	call	putchar
 jmp .UNIQUE2951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2951: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2952: 
	ret
	.cfi_endproc
.LFE71:
	.size	print_stack_mem, .-print_stack_mem
	.globl	insert_data_into_stack_mem
	.type	insert_data_into_stack_mem, @function
insert_data_into_stack_mem:
.LFB72:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2953: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2954: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2955: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE2956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2956: 
	movq	%rsi, -64(%rbp)
 jmp .UNIQUE2957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2957: 
	movq	%rdx, -72(%rbp)
 jmp .UNIQUE2958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2958: 
	movq	$0, -24(%rbp)
 jmp .UNIQUE2959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2959: 
	movl	$0, -44(%rbp)
 jmp .UNIQUE2960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2960: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE2961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2961: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE2962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2962: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE2963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2963: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE2964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2964: 
	jmp	.L246
.L251:
 jmp .UNIQUE2965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2965: 
	cmpl	$0, -44(%rbp)
 jmp .UNIQUE2966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2966: 
	je	.L247
 jmp .UNIQUE2967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2967: 
	addq	$5, -40(%rbp)
 jmp .UNIQUE2968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2968: 
	movl	$0, -44(%rbp)
 jmp .UNIQUE2969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2969: 
	jmp	.L246
.L247:
 jmp .UNIQUE2970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2970: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE2971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2971: 
	jmp	.L248
.L250:
 jmp .UNIQUE2972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2972: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2973: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE2974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2974: 
	addq	%rdx, %rax
 jmp .UNIQUE2975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2975: 
	movq	%rax, %rdx
 jmp .UNIQUE2976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2976: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2977: 
	addq	%rax, %rdx
 jmp .UNIQUE2978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2978: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2979: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE2980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2980: 
	addq	%rcx, %rax
 jmp .UNIQUE2981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2981: 
	movq	%rax, %rcx
 jmp .UNIQUE2982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2982: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE2983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2983: 
	addq	%rcx, %rax
 jmp .UNIQUE2984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2984: 
	movzbl	(%rax), %eax
 jmp .UNIQUE2985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2985: 
	movb	%al, (%rdx)
 jmp .UNIQUE2986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2986: 
	addq	$1, -32(%rbp)
.L248:
 jmp .UNIQUE2987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2987: 
	cmpq	$2, -32(%rbp)
 jmp .UNIQUE2988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2988: 
	jg	.L249
 jmp .UNIQUE2989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2989: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2990: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE2991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2991: 
	addq	%rdx, %rax
 jmp .UNIQUE2992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2992: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE2993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2993: 
	jl	.L250
.L249:
 jmp .UNIQUE2994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2994: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE2995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2995: 
	addq	%rax, -16(%rbp)
 jmp .UNIQUE2996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2996: 
	addq	$1, -24(%rbp)
 jmp .UNIQUE2997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2997: 
	addq	$3, -40(%rbp)
 jmp .UNIQUE2998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE2998: 
	movl	$1, -44(%rbp)
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
	movq	-16(%rbp), %rax
 jmp .UNIQUE3000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3000: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE3001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3001: 
	jl	.L251
 jmp .UNIQUE3002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3002: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE3003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3003: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3004: 
	ret
	.cfi_endproc
.LFE72:
	.size	insert_data_into_stack_mem, .-insert_data_into_stack_mem
	.globl	get_secure_stack_data
	.type	get_secure_stack_data, @function
get_secure_stack_data:
.LFB73:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3005: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3006: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3007: 
	movq	%rdi, -88(%rbp)
 jmp .UNIQUE3008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3008: 
	movq	%rsi, -96(%rbp)
 jmp .UNIQUE3009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3009: 
	movq	%rdx, -104(%rbp)
 jmp .UNIQUE3010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3010: 
	movl	%ecx, -108(%rbp)
 jmp .UNIQUE3011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3011: 
	movq	%r8, -120(%rbp)
 jmp .UNIQUE3012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3012: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE3013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3013: 
	movl	$0, -68(%rbp)
 jmp .UNIQUE3014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3014: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE3015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3015: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE3016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3016: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE3017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3017: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE3018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3018: 
	cmpl	$2, -108(%rbp)
 jmp .UNIQUE3019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3019: 
	jne	.L254
 jmp .UNIQUE3020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3020: 
	movq	$1, -24(%rbp)
 jmp .UNIQUE3021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3021: 
	jmp	.L255
.L254:
 jmp .UNIQUE3022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3022: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE3023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3023: 
	movq	%rax, -24(%rbp)
.L255:
 jmp .UNIQUE3024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3024: 
	movq	$0, -64(%rbp)
 jmp .UNIQUE3025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3025: 
	cmpl	$0, -108(%rbp)
 jmp .UNIQUE3026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3026: 
	je	.L256
 jmp .UNIQUE3027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3027: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE3028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3028: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE3029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3029: 
	movq	%rax, %rcx
 jmp .UNIQUE3030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3030: 
	movabsq	$6148914691236517206, %rdx
 jmp .UNIQUE3031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3031: 
	movq	%rcx, %rax
 jmp .UNIQUE3032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3032: 
	imulq	%rdx
 jmp .UNIQUE3033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3033: 
	movq	%rcx, %rax
 jmp .UNIQUE3034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3034: 
	sarq	$63, %rax
 jmp .UNIQUE3035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3035: 
	subq	%rax, %rdx
 jmp .UNIQUE3036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3036: 
	movq	%rdx, %rax
 jmp .UNIQUE3037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3037: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE3038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3038: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3039: 
	movq	%rdx, %rax
 jmp .UNIQUE3040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3040: 
	addq	%rax, %rax
 jmp .UNIQUE3041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3041: 
	addq	%rax, %rdx
 jmp .UNIQUE3042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3042: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE3043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3043: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE3044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3044: 
	cmpq	%rax, %rdx
 jmp .UNIQUE3045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3045: 
	jne	.L257
 jmp .UNIQUE3046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3046: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3047: 
	salq	$3, %rax
 jmp .UNIQUE3048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3048: 
	addq	%rax, -40(%rbp)
 jmp .UNIQUE3049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3049: 
	jmp	.L256
.L257:
 jmp .UNIQUE3050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3050: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3051: 
	salq	$3, %rax
 jmp .UNIQUE3052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3052: 
	addq	%rax, -40(%rbp)
 jmp .UNIQUE3053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3053: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE3054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3054: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE3055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3055: 
	movq	%rax, %rcx
 jmp .UNIQUE3056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3056: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3057: 
	movl	$0, %eax
 jmp .UNIQUE3058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3058: 
	subq	%rdx, %rax
 jmp .UNIQUE3059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3059: 
	salq	$2, %rax
 jmp .UNIQUE3060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3060: 
	addq	%rdx, %rax
 jmp .UNIQUE3061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3061: 
	addq	%rcx, %rax
 jmp .UNIQUE3062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3062: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE3063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3063: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE3064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3064: 
	jmp	.L258
.L260:
 jmp .UNIQUE3065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3065: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3066: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3067: 
	addq	%rdx, %rax
 jmp .UNIQUE3068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3068: 
	movq	%rax, %rdx
 jmp .UNIQUE3069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3069: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3070: 
	addq	%rax, %rdx
 jmp .UNIQUE3071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3071: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3072: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE3073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3073: 
	addq	%rcx, %rax
 jmp .UNIQUE3074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3074: 
	movq	%rax, %rcx
 jmp .UNIQUE3075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3075: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3076: 
	addq	%rcx, %rax
 jmp .UNIQUE3077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3077: 
	movzbl	(%rax), %eax
 jmp .UNIQUE3078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3078: 
	movb	%al, (%rdx)
 jmp .UNIQUE3079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3079: 
	addq	$1, -48(%rbp)
.L258:
 jmp .UNIQUE3080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3080: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3081: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE3082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3082: 
	addq	%rdx, %rax
 jmp .UNIQUE3083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3083: 
	cmpq	$2, %rax
 jmp .UNIQUE3084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3084: 
	jg	.L259
 jmp .UNIQUE3085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3085: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3086: 
	movq	-32(%rbp), %rdx
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
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE3089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3089: 
	jl	.L260
.L259:
 jmp .UNIQUE3090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3090: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3091: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE3092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3092: 
	addq	$8, -40(%rbp)
 jmp .UNIQUE3093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3093: 
	jmp	.L261
.L256:
 jmp .UNIQUE3094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3094: 
	jmp	.L261
.L266:
 jmp .UNIQUE3095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3095: 
	cmpl	$0, -68(%rbp)
 jmp .UNIQUE3096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3096: 
	je	.L262
 jmp .UNIQUE3097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3097: 
	addq	$5, -64(%rbp)
 jmp .UNIQUE3098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3098: 
	movl	$0, -68(%rbp)
 jmp .UNIQUE3099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3099: 
	jmp	.L261
.L262:
 jmp .UNIQUE3100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3100: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE3101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3101: 
	jmp	.L263
.L265:
 jmp .UNIQUE3102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3102: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3103: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3104: 
	addq	%rdx, %rax
 jmp .UNIQUE3105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3105: 
	movq	%rax, %rdx
 jmp .UNIQUE3106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3106: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3107: 
	addq	%rax, %rdx
 jmp .UNIQUE3108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3108: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3109: 
	movq	-64(%rbp), %rcx
 jmp .UNIQUE3110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3110: 
	addq	%rcx, %rax
 jmp .UNIQUE3111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3111: 
	movq	%rax, %rcx
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
	addq	%rcx, %rax
 jmp .UNIQUE3114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3114: 
	movzbl	(%rax), %eax
 jmp .UNIQUE3115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3115: 
	movb	%al, (%rdx)
 jmp .UNIQUE3116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3116: 
	addq	$1, -56(%rbp)
.L263:
 jmp .UNIQUE3117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3117: 
	cmpq	$2, -56(%rbp)
 jmp .UNIQUE3118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3118: 
	jg	.L264
 jmp .UNIQUE3119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3119: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3120: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3121: 
	addq	%rdx, %rax
 jmp .UNIQUE3122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3122: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE3123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3123: 
	jl	.L265
.L264:
 jmp .UNIQUE3124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3124: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3125: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE3126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3126: 
	addq	$3, -64(%rbp)
 jmp .UNIQUE3127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3127: 
	movl	$1, -68(%rbp)
.L261:
 jmp .UNIQUE3128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3128: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3129: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE3130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3130: 
	jl	.L266
 jmp .UNIQUE3131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3131: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3132: 
	ret
	.cfi_endproc
.LFE73:
	.size	get_secure_stack_data, .-get_secure_stack_data
	.globl	set_secure_stack_data
	.type	set_secure_stack_data, @function
set_secure_stack_data:
.LFB74:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3133: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3134: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3135: 
	movq	%rdi, -88(%rbp)
 jmp .UNIQUE3136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3136: 
	movq	%rsi, -96(%rbp)
 jmp .UNIQUE3137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3137: 
	movq	%rdx, -104(%rbp)
 jmp .UNIQUE3138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3138: 
	movl	%ecx, -108(%rbp)
 jmp .UNIQUE3139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3139: 
	movq	%r8, -120(%rbp)
 jmp .UNIQUE3140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3140: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE3141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3141: 
	movl	$0, -68(%rbp)
 jmp .UNIQUE3142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3142: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE3143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3143: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE3144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3144: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE3145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3145: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE3146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3146: 
	cmpl	$2, -108(%rbp)
 jmp .UNIQUE3147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3147: 
	jne	.L268
 jmp .UNIQUE3148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3148: 
	movq	$1, -24(%rbp)
 jmp .UNIQUE3149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3149: 
	jmp	.L269
.L268:
 jmp .UNIQUE3150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3150: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE3151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3151: 
	movq	%rax, -24(%rbp)
.L269:
 jmp .UNIQUE3152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3152: 
	movq	$0, -64(%rbp)
 jmp .UNIQUE3153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3153: 
	cmpl	$0, -108(%rbp)
 jmp .UNIQUE3154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3154: 
	je	.L270
 jmp .UNIQUE3155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3155: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE3156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3156: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE3157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3157: 
	movq	%rax, %rcx
 jmp .UNIQUE3158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3158: 
	movabsq	$6148914691236517206, %rdx
 jmp .UNIQUE3159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3159: 
	movq	%rcx, %rax
 jmp .UNIQUE3160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3160: 
	imulq	%rdx
 jmp .UNIQUE3161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3161: 
	movq	%rcx, %rax
 jmp .UNIQUE3162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3162: 
	sarq	$63, %rax
 jmp .UNIQUE3163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3163: 
	subq	%rax, %rdx
 jmp .UNIQUE3164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3164: 
	movq	%rdx, %rax
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
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3167: 
	movq	%rdx, %rax
 jmp .UNIQUE3168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3168: 
	addq	%rax, %rax
 jmp .UNIQUE3169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3169: 
	addq	%rax, %rdx
 jmp .UNIQUE3170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3170: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE3171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3171: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE3172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3172: 
	cmpq	%rax, %rdx
 jmp .UNIQUE3173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3173: 
	jne	.L271
 jmp .UNIQUE3174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3174: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3175: 
	salq	$3, %rax
 jmp .UNIQUE3176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3176: 
	addq	%rax, -40(%rbp)
 jmp .UNIQUE3177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3177: 
	jmp	.L270
.L271:
 jmp .UNIQUE3178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3178: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE3179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3179: 
	salq	$3, %rax
 jmp .UNIQUE3180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3180: 
	addq	%rax, -40(%rbp)
 jmp .UNIQUE3181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3181: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE3182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3182: 
	imulq	-24(%rbp), %rax
 jmp .UNIQUE3183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3183: 
	movq	%rax, %rcx
 jmp .UNIQUE3184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3184: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE3185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3185: 
	movl	$0, %eax
 jmp .UNIQUE3186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3186: 
	subq	%rdx, %rax
 jmp .UNIQUE3187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3187: 
	salq	$2, %rax
 jmp .UNIQUE3188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3188: 
	addq	%rdx, %rax
 jmp .UNIQUE3189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3189: 
	addq	%rcx, %rax
 jmp .UNIQUE3190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3190: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE3191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3191: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE3192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3192: 
	jmp	.L272
.L274:
 jmp .UNIQUE3193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3193: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3194: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE3195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3195: 
	addq	%rdx, %rax
 jmp .UNIQUE3196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3196: 
	movq	%rax, %rdx
 jmp .UNIQUE3197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3197: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3198: 
	addq	%rax, %rdx
 jmp .UNIQUE3199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3199: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3200: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE3201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3201: 
	addq	%rcx, %rax
 jmp .UNIQUE3202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3202: 
	movq	%rax, %rcx
 jmp .UNIQUE3203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3203: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3204: 
	addq	%rcx, %rax
 jmp .UNIQUE3205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3205: 
	movzbl	(%rax), %eax
 jmp .UNIQUE3206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3206: 
	movb	%al, (%rdx)
 jmp .UNIQUE3207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3207: 
	addq	$1, -48(%rbp)
.L272:
 jmp .UNIQUE3208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3208: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3209: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE3210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3210: 
	addq	%rdx, %rax
 jmp .UNIQUE3211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3211: 
	cmpq	$2, %rax
 jmp .UNIQUE3212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3212: 
	jg	.L273
 jmp .UNIQUE3213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3213: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3214: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3215: 
	addq	%rdx, %rax
 jmp .UNIQUE3216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3216: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE3217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3217: 
	jl	.L274
.L273:
 jmp .UNIQUE3218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3218: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE3219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3219: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE3220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3220: 
	addq	$8, -40(%rbp)
 jmp .UNIQUE3221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3221: 
	jmp	.L275
.L270:
 jmp .UNIQUE3222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3222: 
	jmp	.L275
.L280:
 jmp .UNIQUE3223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3223: 
	cmpl	$0, -68(%rbp)
 jmp .UNIQUE3224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3224: 
	je	.L276
 jmp .UNIQUE3225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3225: 
	addq	$5, -64(%rbp)
 jmp .UNIQUE3226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3226: 
	movl	$0, -68(%rbp)
 jmp .UNIQUE3227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3227: 
	jmp	.L275
.L276:
 jmp .UNIQUE3228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3228: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE3229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3229: 
	jmp	.L277
.L279:
 jmp .UNIQUE3230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3230: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3231: 
	movq	-64(%rbp), %rdx
 jmp .UNIQUE3232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3232: 
	addq	%rdx, %rax
 jmp .UNIQUE3233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3233: 
	movq	%rax, %rdx
 jmp .UNIQUE3234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3234: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3235: 
	addq	%rax, %rdx
 jmp .UNIQUE3236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3236: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3237: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE3238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3238: 
	addq	%rcx, %rax
 jmp .UNIQUE3239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3239: 
	movq	%rax, %rcx
 jmp .UNIQUE3240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3240: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE3241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3241: 
	addq	%rcx, %rax
 jmp .UNIQUE3242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3242: 
	movzbl	(%rax), %eax
 jmp .UNIQUE3243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3243: 
	movb	%al, (%rdx)
 jmp .UNIQUE3244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3244: 
	addq	$1, -56(%rbp)
.L277:
 jmp .UNIQUE3245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3245: 
	cmpq	$2, -56(%rbp)
 jmp .UNIQUE3246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3246: 
	jg	.L278
 jmp .UNIQUE3247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3247: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3248: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE3249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3249: 
	addq	%rdx, %rax
 jmp .UNIQUE3250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3250: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE3251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3251: 
	jl	.L279
.L278:
 jmp .UNIQUE3252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3252: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3253: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE3254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3254: 
	addq	$3, -64(%rbp)
 jmp .UNIQUE3255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3255: 
	movl	$1, -68(%rbp)
.L275:
 jmp .UNIQUE3256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3256: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE3257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3257: 
	cmpq	-96(%rbp), %rax
 jmp .UNIQUE3258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3258: 
	jl	.L280
 jmp .UNIQUE3259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3259: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3260: 
	ret
	.cfi_endproc
.LFE74:
	.size	set_secure_stack_data, .-set_secure_stack_data
	.globl	allocate_mem_into_secure_stack
	.type	allocate_mem_into_secure_stack, @function
allocate_mem_into_secure_stack:
.LFB75:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3261: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3262: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3263: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE3264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3264: 
	movq	last_unused_stack_memory(%rip), %rax
 jmp .UNIQUE3265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3265: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE3266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3266: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3267: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE3268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3268: 
	movq	$5, -16(%rbp)
 jmp .UNIQUE3269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3269: 
	movq	$3, -8(%rbp)
 jmp .UNIQUE3270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3270: 
	cmpq	$0, -56(%rbp)
 jmp .UNIQUE3271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3271: 
	jne	.L282
 jmp .UNIQUE3272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3272: 
	movl	$0, %eax
 jmp .UNIQUE3273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3273: 
	jmp	.L283
.L282:
 jmp .UNIQUE3274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3274: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE3275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3275: 
	cqto
 jmp .UNIQUE3276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3276: 
	idivq	-8(%rbp)
 jmp .UNIQUE3277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3277: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE3278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3278: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3279: 
	imulq	-8(%rbp), %rax
 jmp .UNIQUE3280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3280: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE3281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3281: 
	jge	.L284
 jmp .UNIQUE3282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3282: 
	addq	$1, -40(%rbp)
.L284:
 jmp .UNIQUE3283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3283: 
	movq	last_unused_stack_memory(%rip), %rdx
 jmp .UNIQUE3284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3284: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3285: 
	imulq	-8(%rbp), %rax
 jmp .UNIQUE3286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3286: 
	movq	%rax, %rcx
 jmp .UNIQUE3287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3287: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE3288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3288: 
	imulq	-16(%rbp), %rax
 jmp .UNIQUE3289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3289: 
	addq	%rcx, %rax
 jmp .UNIQUE3290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3290: 
	addq	%rdx, %rax
 jmp .UNIQUE3291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3291: 
	movq	%rax, last_unused_stack_memory(%rip)
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
.L283:
 jmp .UNIQUE3293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3293: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3294: 
	ret
	.cfi_endproc
.LFE75:
	.size	allocate_mem_into_secure_stack, .-allocate_mem_into_secure_stack
	.globl	init_function_params
	.type	init_function_params, @function
init_function_params:
.LFB76:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3295: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3296: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3297: 
	pushq	%rbx
 jmp .UNIQUE3298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3298: 
	subq	$264, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE3299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3299: 
	movq	%rsi, -184(%rbp)
 jmp .UNIQUE3300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3300: 
	movq	%rdx, -176(%rbp)
 jmp .UNIQUE3301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3301: 
	movq	%rcx, -168(%rbp)
 jmp .UNIQUE3302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3302: 
	movq	%r8, -160(%rbp)
 jmp .UNIQUE3303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3303: 
	movq	%r9, -152(%rbp)
 jmp .UNIQUE3304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3304: 
	testb	%al, %al
 jmp .UNIQUE3305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3305: 
	je	.L286
 jmp .UNIQUE3306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3306: 
	movaps	%xmm0, -144(%rbp)
 jmp .UNIQUE3307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3307: 
	movaps	%xmm1, -128(%rbp)
 jmp .UNIQUE3308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3308: 
	movaps	%xmm2, -112(%rbp)
 jmp .UNIQUE3309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3309: 
	movaps	%xmm3, -96(%rbp)
 jmp .UNIQUE3310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3310: 
	movaps	%xmm4, -80(%rbp)
 jmp .UNIQUE3311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3311: 
	movaps	%xmm5, -64(%rbp)
 jmp .UNIQUE3312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3312: 
	movaps	%xmm6, -48(%rbp)
 jmp .UNIQUE3313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3313: 
	movaps	%xmm7, -32(%rbp)
.L286:
 jmp .UNIQUE3314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3314: 
	movl	%edi, -260(%rbp)
 jmp .UNIQUE3315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3315: 
	movq	$0, -240(%rbp)
 jmp .UNIQUE3316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3316: 
	movl	$8, -216(%rbp)
 jmp .UNIQUE3317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3317: 
	movl	$48, -212(%rbp)
 jmp .UNIQUE3318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3318: 
	leaq	16(%rbp), %rax
 jmp .UNIQUE3319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3319: 
	movq	%rax, -208(%rbp)
 jmp .UNIQUE3320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3320: 
	leaq	-192(%rbp), %rax
 jmp .UNIQUE3321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3321: 
	movq	%rax, -200(%rbp)
 jmp .UNIQUE3322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3322: 
	movl	$492, %edx
 jmp .UNIQUE3323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3323: 
	movl	$__func__.4406, %esi
 jmp .UNIQUE3324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3324: 
	movl	$16, %edi
 jmp .UNIQUE3325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3325: 
	call	error_checking_malloc
 jmp .UNIQUE3326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3326: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE3327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3327: 
	cmpl	$0, -260(%rbp)
 jmp .UNIQUE3328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3328: 
	je	.L287
 jmp .UNIQUE3329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3329: 
	movl	$495, %edx
 jmp .UNIQUE3330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3330: 
	movl	$__func__.4406, %esi
 jmp .UNIQUE3331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3331: 
	movl	$128, %edi
 jmp .UNIQUE3332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3332: 
	call	error_checking_malloc
 jmp .UNIQUE3333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3333: 
	movq	-232(%rbp), %rdx
 jmp .UNIQUE3334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3334: 
	movq	%rax, 8(%rdx)
 jmp .UNIQUE3335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3335: 
	jmp	.L288
.L287:
 jmp .UNIQUE3336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3336: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3337: 
	movq	$0, 8(%rax)
.L288:
 jmp .UNIQUE3338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3338: 
	cmpl	$0, -260(%rbp)
 jmp .UNIQUE3339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3339: 
	je	.L289
 jmp .UNIQUE3340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3340: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3341: 
	movq	8(%rax), %rcx
 jmp .UNIQUE3342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3342: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3343: 
	cmpl	$48, %eax
 jmp .UNIQUE3344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3344: 
	jnb	.L290
 jmp .UNIQUE3345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3345: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3346: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3347: 
	movl	%eax, %eax
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
	movl	-216(%rbp), %edx
 jmp .UNIQUE3350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3350: 
	addl	$8, %edx
 jmp .UNIQUE3351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3351: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3352: 
	jmp	.L291
.L290:
 jmp .UNIQUE3353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3353: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3354: 
	movq	%rdx, %rax
 jmp .UNIQUE3355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3355: 
	addq	$8, %rdx
 jmp .UNIQUE3356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3356: 
	movq	%rdx, -208(%rbp)
.L291:
 jmp .UNIQUE3357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3357: 
	movq	(%rax), %rax
 jmp .UNIQUE3358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3358: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3359: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3360: 
	movq	%rax, (%rcx)
 jmp .UNIQUE3361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3361: 
	movq	-240(%rbp), %rdx
 jmp .UNIQUE3362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3362: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3363: 
	addq	%rdx, %rax
 jmp .UNIQUE3364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3364: 
	movq	%rax, -240(%rbp)
 jmp .UNIQUE3365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3365: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE3366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3366: 
	je	.L292
 jmp .UNIQUE3367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3367: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3368: 
	movq	8(%rax), %rbx
 jmp .UNIQUE3369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3369: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3370: 
	movl	$507, %edx
 jmp .UNIQUE3371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3371: 
	movl	$__func__.4406, %esi
 jmp .UNIQUE3372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3372: 
	movq	%rax, %rdi
 jmp .UNIQUE3373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3373: 
	call	error_checking_malloc
 jmp .UNIQUE3374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3374: 
	movq	%rax, 8(%rbx)
 jmp .UNIQUE3375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3375: 
	movq	$0, -248(%rbp)
 jmp .UNIQUE3376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3376: 
	jmp	.L293
.L296:
 jmp .UNIQUE3377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3377: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3378: 
	movq	8(%rax), %rax
 jmp .UNIQUE3379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3379: 
	movq	8(%rax), %rdx
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
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE3382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3382: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3383: 
	cmpl	$48, %eax
 jmp .UNIQUE3384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3384: 
	jnb	.L294
 jmp .UNIQUE3385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3385: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3386: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3387: 
	movl	%eax, %eax
 jmp .UNIQUE3388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3388: 
	addq	%rdx, %rax
 jmp .UNIQUE3389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3389: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3390: 
	addl	$8, %edx
 jmp .UNIQUE3391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3391: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3392: 
	jmp	.L295
.L294:
 jmp .UNIQUE3393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3393: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3394: 
	movq	%rdx, %rax
 jmp .UNIQUE3395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3395: 
	addq	$8, %rdx
 jmp .UNIQUE3396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3396: 
	movq	%rdx, -208(%rbp)
.L295:
 jmp .UNIQUE3397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3397: 
	movl	(%rax), %eax
 jmp .UNIQUE3398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3398: 
	movb	%al, (%rcx)
 jmp .UNIQUE3399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3399: 
	addq	$1, -248(%rbp)
.L293:
 jmp .UNIQUE3400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3400: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE3401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3401: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3402: 
	jl	.L296
 jmp .UNIQUE3403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3403: 
	jmp	.L297
.L292:
 jmp .UNIQUE3404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3404: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3405: 
	movq	8(%rax), %rax
 jmp .UNIQUE3406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3406: 
	movq	$0, 8(%rax)
.L297:
 jmp .UNIQUE3407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3407: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3408: 
	movq	8(%rax), %rcx
 jmp .UNIQUE3409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3409: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3410: 
	cmpl	$48, %eax
 jmp .UNIQUE3411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3411: 
	jnb	.L298
 jmp .UNIQUE3412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3412: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3413: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3414: 
	movl	%eax, %eax
 jmp .UNIQUE3415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3415: 
	addq	%rdx, %rax
 jmp .UNIQUE3416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3416: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3417: 
	addl	$8, %edx
 jmp .UNIQUE3418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3418: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3419: 
	jmp	.L299
.L298:
 jmp .UNIQUE3420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3420: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3421: 
	movq	%rdx, %rax
 jmp .UNIQUE3422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3422: 
	addq	$8, %rdx
 jmp .UNIQUE3423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3423: 
	movq	%rdx, -208(%rbp)
.L299:
 jmp .UNIQUE3424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3424: 
	movq	(%rax), %rax
 jmp .UNIQUE3425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3425: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3426: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3427: 
	movq	%rax, 16(%rcx)
 jmp .UNIQUE3428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3428: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3429: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE3430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3430: 
	movq	-240(%rbp), %rax
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
	movq	%rax, -240(%rbp)
 jmp .UNIQUE3433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3433: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE3434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3434: 
	je	.L300
 jmp .UNIQUE3435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3435: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3436: 
	movq	8(%rax), %rbx
 jmp .UNIQUE3437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3437: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3438: 
	salq	$2, %rax
 jmp .UNIQUE3439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3439: 
	movl	$523, %edx
 jmp .UNIQUE3440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3440: 
	movl	$__func__.4406, %esi
 jmp .UNIQUE3441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3441: 
	movq	%rax, %rdi
 jmp .UNIQUE3442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3442: 
	call	error_checking_malloc
 jmp .UNIQUE3443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3443: 
	movq	%rax, 24(%rbx)
 jmp .UNIQUE3444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3444: 
	movq	$0, -248(%rbp)
 jmp .UNIQUE3445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3445: 
	jmp	.L301
.L304:
 jmp .UNIQUE3446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3446: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3447: 
	movq	8(%rax), %rax
 jmp .UNIQUE3448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3448: 
	movq	24(%rax), %rax
 jmp .UNIQUE3449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3449: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE3450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3450: 
	salq	$2, %rdx
 jmp .UNIQUE3451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3451: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE3452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3452: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3453: 
	cmpl	$48, %eax
 jmp .UNIQUE3454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3454: 
	jnb	.L302
 jmp .UNIQUE3455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3455: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3456: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3457: 
	movl	%eax, %eax
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
	movl	-216(%rbp), %edx
 jmp .UNIQUE3460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3460: 
	addl	$8, %edx
 jmp .UNIQUE3461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3461: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3462: 
	jmp	.L303
.L302:
 jmp .UNIQUE3463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3463: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3464: 
	movq	%rdx, %rax
 jmp .UNIQUE3465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3465: 
	addq	$8, %rdx
 jmp .UNIQUE3466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3466: 
	movq	%rdx, -208(%rbp)
.L303:
 jmp .UNIQUE3467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3467: 
	movl	(%rax), %eax
 jmp .UNIQUE3468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3468: 
	movl	%eax, (%rcx)
 jmp .UNIQUE3469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3469: 
	addq	$1, -248(%rbp)
.L301:
 jmp .UNIQUE3470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3470: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE3471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3471: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3472: 
	jl	.L304
 jmp .UNIQUE3473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3473: 
	jmp	.L305
.L300:
 jmp .UNIQUE3474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3474: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3475: 
	movq	8(%rax), %rax
 jmp .UNIQUE3476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3476: 
	movq	$0, 24(%rax)
.L305:
 jmp .UNIQUE3477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3477: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3478: 
	movq	8(%rax), %rcx
 jmp .UNIQUE3479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3479: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3480: 
	cmpl	$48, %eax
 jmp .UNIQUE3481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3481: 
	jnb	.L306
 jmp .UNIQUE3482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3482: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3483: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3484: 
	movl	%eax, %eax
 jmp .UNIQUE3485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3485: 
	addq	%rdx, %rax
 jmp .UNIQUE3486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3486: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3487: 
	addl	$8, %edx
 jmp .UNIQUE3488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3488: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3489: 
	jmp	.L307
.L306:
 jmp .UNIQUE3490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3490: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3491: 
	movq	%rdx, %rax
 jmp .UNIQUE3492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3492: 
	addq	$8, %rdx
 jmp .UNIQUE3493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3493: 
	movq	%rdx, -208(%rbp)
.L307:
 jmp .UNIQUE3494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3494: 
	movq	(%rax), %rax
 jmp .UNIQUE3495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3495: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3496: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3497: 
	movq	%rax, 32(%rcx)
 jmp .UNIQUE3498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3498: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3499: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3500: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE3501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3501: 
	addq	%rdx, %rax
 jmp .UNIQUE3502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3502: 
	movq	%rax, -240(%rbp)
 jmp .UNIQUE3503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3503: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE3504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3504: 
	je	.L308
 jmp .UNIQUE3505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3505: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3506: 
	movq	8(%rax), %rbx
 jmp .UNIQUE3507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3507: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3508: 
	salq	$3, %rax
 jmp .UNIQUE3509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3509: 
	movl	$539, %edx
 jmp .UNIQUE3510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3510: 
	movl	$__func__.4406, %esi
 jmp .UNIQUE3511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3511: 
	movq	%rax, %rdi
 jmp .UNIQUE3512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3512: 
	call	error_checking_malloc
 jmp .UNIQUE3513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3513: 
	movq	%rax, 40(%rbx)
 jmp .UNIQUE3514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3514: 
	movq	$0, -248(%rbp)
 jmp .UNIQUE3515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3515: 
	jmp	.L309
.L312:
 jmp .UNIQUE3516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3516: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3517: 
	movq	8(%rax), %rax
 jmp .UNIQUE3518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3518: 
	movq	40(%rax), %rax
 jmp .UNIQUE3519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3519: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE3520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3520: 
	salq	$3, %rdx
 jmp .UNIQUE3521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3521: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE3522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3522: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3523: 
	cmpl	$48, %eax
 jmp .UNIQUE3524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3524: 
	jnb	.L310
 jmp .UNIQUE3525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3525: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3526: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3527: 
	movl	%eax, %eax
 jmp .UNIQUE3528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3528: 
	addq	%rdx, %rax
 jmp .UNIQUE3529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3529: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3530: 
	addl	$8, %edx
 jmp .UNIQUE3531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3531: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3532: 
	jmp	.L311
.L310:
 jmp .UNIQUE3533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3533: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3534: 
	movq	%rdx, %rax
 jmp .UNIQUE3535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3535: 
	addq	$8, %rdx
 jmp .UNIQUE3536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3536: 
	movq	%rdx, -208(%rbp)
.L311:
 jmp .UNIQUE3537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3537: 
	movq	(%rax), %rax
 jmp .UNIQUE3538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3538: 
	movq	%rax, (%rcx)
 jmp .UNIQUE3539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3539: 
	addq	$1, -248(%rbp)
.L309:
 jmp .UNIQUE3540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3540: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE3541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3541: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3542: 
	jl	.L312
 jmp .UNIQUE3543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3543: 
	jmp	.L313
.L308:
 jmp .UNIQUE3544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3544: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3545: 
	movq	8(%rax), %rax
 jmp .UNIQUE3546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3546: 
	movq	$0, 40(%rax)
.L313:
 jmp .UNIQUE3547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3547: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3548: 
	movq	8(%rax), %rcx
 jmp .UNIQUE3549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3549: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3550: 
	cmpl	$48, %eax
 jmp .UNIQUE3551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3551: 
	jnb	.L314
 jmp .UNIQUE3552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3552: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3553: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3554: 
	movl	%eax, %eax
 jmp .UNIQUE3555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3555: 
	addq	%rdx, %rax
 jmp .UNIQUE3556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3556: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3557: 
	addl	$8, %edx
 jmp .UNIQUE3558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3558: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3559: 
	jmp	.L315
.L314:
 jmp .UNIQUE3560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3560: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3561: 
	movq	%rdx, %rax
 jmp .UNIQUE3562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3562: 
	addq	$8, %rdx
 jmp .UNIQUE3563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3563: 
	movq	%rdx, -208(%rbp)
.L315:
 jmp .UNIQUE3564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3564: 
	movq	(%rax), %rax
 jmp .UNIQUE3565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3565: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3566: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3567: 
	movq	%rax, 48(%rcx)
 jmp .UNIQUE3568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3568: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3569: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE3570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3570: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE3571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3571: 
	addq	%rdx, %rax
 jmp .UNIQUE3572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3572: 
	movq	%rax, -240(%rbp)
 jmp .UNIQUE3573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3573: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE3574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3574: 
	je	.L316
 jmp .UNIQUE3575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3575: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3576: 
	movq	8(%rax), %rbx
 jmp .UNIQUE3577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3577: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3578: 
	salq	$2, %rax
 jmp .UNIQUE3579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3579: 
	movl	$555, %edx
 jmp .UNIQUE3580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3580: 
	movl	$__func__.4406, %esi
 jmp .UNIQUE3581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3581: 
	movq	%rax, %rdi
 jmp .UNIQUE3582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3582: 
	call	error_checking_malloc
 jmp .UNIQUE3583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3583: 
	movq	%rax, 56(%rbx)
 jmp .UNIQUE3584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3584: 
	movq	$0, -248(%rbp)
 jmp .UNIQUE3585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3585: 
	jmp	.L317
.L320:
 jmp .UNIQUE3586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3586: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3587: 
	movq	8(%rax), %rax
 jmp .UNIQUE3588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3588: 
	movq	56(%rax), %rax
 jmp .UNIQUE3589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3589: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE3590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3590: 
	salq	$2, %rdx
 jmp .UNIQUE3591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3591: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE3592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3592: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE3593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3593: 
	cmpl	$176, %eax
 jmp .UNIQUE3594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3594: 
	jnb	.L318
 jmp .UNIQUE3595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3595: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3596: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE3597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3597: 
	movl	%eax, %eax
 jmp .UNIQUE3598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3598: 
	addq	%rdx, %rax
 jmp .UNIQUE3599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3599: 
	movl	-212(%rbp), %edx
 jmp .UNIQUE3600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3600: 
	addl	$16, %edx
 jmp .UNIQUE3601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3601: 
	movl	%edx, -212(%rbp)
 jmp .UNIQUE3602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3602: 
	jmp	.L319
.L318:
 jmp .UNIQUE3603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3603: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3604: 
	movq	%rdx, %rax
 jmp .UNIQUE3605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3605: 
	addq	$8, %rdx
 jmp .UNIQUE3606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3606: 
	movq	%rdx, -208(%rbp)
.L319:
 jmp .UNIQUE3607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3607: 
	movsd	(%rax), %xmm0
 jmp .UNIQUE3608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3608: 
	unpcklpd	%xmm0, %xmm0
 jmp .UNIQUE3609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3609: 
	cvtpd2ps	%xmm0, %xmm0
 jmp .UNIQUE3610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3610: 
	movss	%xmm0, (%rcx)
 jmp .UNIQUE3611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3611: 
	addq	$1, -248(%rbp)
.L317:
 jmp .UNIQUE3612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3612: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE3613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3613: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3614: 
	jl	.L320
 jmp .UNIQUE3615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3615: 
	jmp	.L321
.L316:
 jmp .UNIQUE3616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3616: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3617: 
	movq	8(%rax), %rax
 jmp .UNIQUE3618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3618: 
	movq	$0, 56(%rax)
.L321:
 jmp .UNIQUE3619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3619: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3620: 
	movq	8(%rax), %rcx
 jmp .UNIQUE3621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3621: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3622: 
	cmpl	$48, %eax
 jmp .UNIQUE3623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3623: 
	jnb	.L322
 jmp .UNIQUE3624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3624: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3625: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3626: 
	movl	%eax, %eax
 jmp .UNIQUE3627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3627: 
	addq	%rdx, %rax
 jmp .UNIQUE3628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3628: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3629: 
	addl	$8, %edx
 jmp .UNIQUE3630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3630: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3631: 
	jmp	.L323
.L322:
 jmp .UNIQUE3632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3632: 
	movq	-208(%rbp), %rdx
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
	addq	$8, %rdx
 jmp .UNIQUE3635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3635: 
	movq	%rdx, -208(%rbp)
.L323:
 jmp .UNIQUE3636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3636: 
	movq	(%rax), %rax
 jmp .UNIQUE3637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3637: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3638: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3639: 
	movq	%rax, 64(%rcx)
 jmp .UNIQUE3640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3640: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3641: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3642: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE3643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3643: 
	addq	%rdx, %rax
 jmp .UNIQUE3644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3644: 
	movq	%rax, -240(%rbp)
 jmp .UNIQUE3645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3645: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE3646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3646: 
	je	.L324
 jmp .UNIQUE3647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3647: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3648: 
	movq	8(%rax), %rbx
 jmp .UNIQUE3649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3649: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3650: 
	salq	$3, %rax
 jmp .UNIQUE3651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3651: 
	movl	$571, %edx
 jmp .UNIQUE3652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3652: 
	movl	$__func__.4406, %esi
 jmp .UNIQUE3653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3653: 
	movq	%rax, %rdi
 jmp .UNIQUE3654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3654: 
	call	error_checking_malloc
 jmp .UNIQUE3655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3655: 
	movq	%rax, 72(%rbx)
 jmp .UNIQUE3656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3656: 
	movq	$0, -248(%rbp)
 jmp .UNIQUE3657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3657: 
	jmp	.L325
.L328:
 jmp .UNIQUE3658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3658: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3659: 
	movq	8(%rax), %rax
 jmp .UNIQUE3660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3660: 
	movq	72(%rax), %rax
 jmp .UNIQUE3661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3661: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE3662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3662: 
	salq	$3, %rdx
 jmp .UNIQUE3663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3663: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE3664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3664: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE3665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3665: 
	cmpl	$176, %eax
 jmp .UNIQUE3666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3666: 
	jnb	.L326
 jmp .UNIQUE3667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3667: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3668: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE3669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3669: 
	movl	%eax, %eax
 jmp .UNIQUE3670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3670: 
	addq	%rdx, %rax
 jmp .UNIQUE3671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3671: 
	movl	-212(%rbp), %edx
 jmp .UNIQUE3672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3672: 
	addl	$16, %edx
 jmp .UNIQUE3673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3673: 
	movl	%edx, -212(%rbp)
 jmp .UNIQUE3674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3674: 
	jmp	.L327
.L326:
 jmp .UNIQUE3675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3675: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3676: 
	movq	%rdx, %rax
 jmp .UNIQUE3677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3677: 
	addq	$8, %rdx
 jmp .UNIQUE3678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3678: 
	movq	%rdx, -208(%rbp)
.L327:
 jmp .UNIQUE3679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3679: 
	movq	(%rax), %rax
 jmp .UNIQUE3680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3680: 
	movq	%rax, (%rcx)
 jmp .UNIQUE3681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3681: 
	addq	$1, -248(%rbp)
.L325:
 jmp .UNIQUE3682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3682: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE3683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3683: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3684: 
	jl	.L328
 jmp .UNIQUE3685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3685: 
	jmp	.L329
.L324:
 jmp .UNIQUE3686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3686: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3687: 
	movq	8(%rax), %rax
 jmp .UNIQUE3688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3688: 
	movq	$0, 72(%rax)
.L329:
 jmp .UNIQUE3689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3689: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3690: 
	movq	8(%rax), %rcx
 jmp .UNIQUE3691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3691: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3692: 
	cmpl	$48, %eax
 jmp .UNIQUE3693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3693: 
	jnb	.L330
 jmp .UNIQUE3694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3694: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3695: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3696: 
	movl	%eax, %eax
 jmp .UNIQUE3697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3697: 
	addq	%rdx, %rax
 jmp .UNIQUE3698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3698: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3699: 
	addl	$8, %edx
 jmp .UNIQUE3700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3700: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3701: 
	jmp	.L331
.L330:
 jmp .UNIQUE3702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3702: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3703: 
	movq	%rdx, %rax
 jmp .UNIQUE3704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3704: 
	addq	$8, %rdx
 jmp .UNIQUE3705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3705: 
	movq	%rdx, -208(%rbp)
.L331:
 jmp .UNIQUE3706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3706: 
	movq	(%rax), %rax
 jmp .UNIQUE3707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3707: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3708: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3709: 
	movq	%rax, 80(%rcx)
 jmp .UNIQUE3710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3710: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3711: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3712: 
	movq	-240(%rbp), %rax
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
	movq	%rax, -240(%rbp)
 jmp .UNIQUE3715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3715: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE3716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3716: 
	je	.L332
 jmp .UNIQUE3717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3717: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3718: 
	movq	8(%rax), %rbx
 jmp .UNIQUE3719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3719: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3720: 
	salq	$3, %rax
 jmp .UNIQUE3721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3721: 
	movl	$588, %edx
 jmp .UNIQUE3722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3722: 
	movl	$__func__.4406, %esi
 jmp .UNIQUE3723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3723: 
	movq	%rax, %rdi
 jmp .UNIQUE3724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3724: 
	call	error_checking_malloc
 jmp .UNIQUE3725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3725: 
	movq	%rax, 88(%rbx)
 jmp .UNIQUE3726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3726: 
	movq	$0, -248(%rbp)
 jmp .UNIQUE3727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3727: 
	jmp	.L333
.L336:
 jmp .UNIQUE3728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3728: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3729: 
	movq	8(%rax), %rax
 jmp .UNIQUE3730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3730: 
	movq	88(%rax), %rax
 jmp .UNIQUE3731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3731: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE3732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3732: 
	salq	$3, %rdx
 jmp .UNIQUE3733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3733: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE3734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3734: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3735: 
	cmpl	$48, %eax
 jmp .UNIQUE3736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3736: 
	jnb	.L334
 jmp .UNIQUE3737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3737: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3738: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3739: 
	movl	%eax, %eax
 jmp .UNIQUE3740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3740: 
	addq	%rdx, %rax
 jmp .UNIQUE3741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3741: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3742: 
	addl	$8, %edx
 jmp .UNIQUE3743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3743: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3744: 
	jmp	.L335
.L334:
 jmp .UNIQUE3745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3745: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3746: 
	movq	%rdx, %rax
 jmp .UNIQUE3747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3747: 
	addq	$8, %rdx
 jmp .UNIQUE3748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3748: 
	movq	%rdx, -208(%rbp)
.L335:
 jmp .UNIQUE3749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3749: 
	movq	(%rax), %rax
 jmp .UNIQUE3750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3750: 
	movq	%rax, (%rcx)
 jmp .UNIQUE3751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3751: 
	addq	$1, -248(%rbp)
.L333:
 jmp .UNIQUE3752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3752: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE3753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3753: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3754: 
	jl	.L336
 jmp .UNIQUE3755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3755: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3756: 
	movq	8(%rax), %rbx
 jmp .UNIQUE3757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3757: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3758: 
	salq	$3, %rax
 jmp .UNIQUE3759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3759: 
	movl	$594, %edx
 jmp .UNIQUE3760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3760: 
	movl	$__func__.4406, %esi
 jmp .UNIQUE3761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3761: 
	movq	%rax, %rdi
 jmp .UNIQUE3762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3762: 
	call	error_checking_malloc
 jmp .UNIQUE3763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3763: 
	movq	%rax, 96(%rbx)
 jmp .UNIQUE3764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3764: 
	movq	$0, -248(%rbp)
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
.L340:
 jmp .UNIQUE3766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3766: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3767: 
	movq	8(%rax), %rax
 jmp .UNIQUE3768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3768: 
	movq	96(%rax), %rax
 jmp .UNIQUE3769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3769: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE3770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3770: 
	salq	$3, %rdx
 jmp .UNIQUE3771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3771: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE3772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3772: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3773: 
	cmpl	$48, %eax
 jmp .UNIQUE3774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3774: 
	jnb	.L338
 jmp .UNIQUE3775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3775: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3776: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3777: 
	movl	%eax, %eax
 jmp .UNIQUE3778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3778: 
	addq	%rdx, %rax
 jmp .UNIQUE3779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3779: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3780: 
	addl	$8, %edx
 jmp .UNIQUE3781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3781: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3782: 
	jmp	.L339
.L338:
 jmp .UNIQUE3783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3783: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3784: 
	movq	%rdx, %rax
 jmp .UNIQUE3785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3785: 
	addq	$8, %rdx
 jmp .UNIQUE3786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3786: 
	movq	%rdx, -208(%rbp)
.L339:
 jmp .UNIQUE3787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3787: 
	movq	(%rax), %rax
 jmp .UNIQUE3788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3788: 
	movq	%rax, (%rcx)
 jmp .UNIQUE3789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3789: 
	addq	$1, -248(%rbp)
.L337:
 jmp .UNIQUE3790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3790: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE3791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3791: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3792: 
	jl	.L340
 jmp .UNIQUE3793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3793: 
	jmp	.L341
.L332:
 jmp .UNIQUE3794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3794: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3795: 
	movq	8(%rax), %rax
 jmp .UNIQUE3796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3796: 
	movq	$0, 88(%rax)
 jmp .UNIQUE3797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3797: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3798: 
	movq	8(%rax), %rax
 jmp .UNIQUE3799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3799: 
	movq	$0, 96(%rax)
.L341:
 jmp .UNIQUE3800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3800: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3801: 
	movq	8(%rax), %rcx
 jmp .UNIQUE3802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3802: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3803: 
	cmpl	$48, %eax
 jmp .UNIQUE3804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3804: 
	jnb	.L342
 jmp .UNIQUE3805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3805: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3806: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3807: 
	movl	%eax, %eax
 jmp .UNIQUE3808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3808: 
	addq	%rdx, %rax
 jmp .UNIQUE3809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3809: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3810: 
	addl	$8, %edx
 jmp .UNIQUE3811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3811: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3812: 
	jmp	.L343
.L342:
 jmp .UNIQUE3813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3813: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3814: 
	movq	%rdx, %rax
 jmp .UNIQUE3815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3815: 
	addq	$8, %rdx
 jmp .UNIQUE3816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3816: 
	movq	%rdx, -208(%rbp)
.L343:
 jmp .UNIQUE3817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3817: 
	movq	(%rax), %rax
 jmp .UNIQUE3818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3818: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE3819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3819: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3820: 
	movq	%rax, 104(%rcx)
 jmp .UNIQUE3821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3821: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3822: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE3823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3823: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE3824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3824: 
	addq	%rdx, %rax
 jmp .UNIQUE3825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3825: 
	movq	%rax, -240(%rbp)
 jmp .UNIQUE3826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3826: 
	cmpq	$0, -224(%rbp)
 jmp .UNIQUE3827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3827: 
	je	.L344
 jmp .UNIQUE3828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3828: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3829: 
	movq	8(%rax), %rbx
 jmp .UNIQUE3830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3830: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3831: 
	salq	$3, %rax
 jmp .UNIQUE3832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3832: 
	movl	$612, %edx
 jmp .UNIQUE3833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3833: 
	movl	$__func__.4406, %esi
 jmp .UNIQUE3834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3834: 
	movq	%rax, %rdi
 jmp .UNIQUE3835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3835: 
	call	error_checking_malloc
 jmp .UNIQUE3836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3836: 
	movq	%rax, 112(%rbx)
 jmp .UNIQUE3837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3837: 
	movq	$0, -248(%rbp)
 jmp .UNIQUE3838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3838: 
	jmp	.L345
.L348:
 jmp .UNIQUE3839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3839: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3840: 
	movq	8(%rax), %rax
 jmp .UNIQUE3841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3841: 
	movq	112(%rax), %rax
 jmp .UNIQUE3842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3842: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE3843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3843: 
	salq	$3, %rdx
 jmp .UNIQUE3844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3844: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE3845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3845: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3846: 
	cmpl	$48, %eax
 jmp .UNIQUE3847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3847: 
	jnb	.L346
 jmp .UNIQUE3848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3848: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3849: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3850: 
	movl	%eax, %eax
 jmp .UNIQUE3851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3851: 
	addq	%rdx, %rax
 jmp .UNIQUE3852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3852: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3853: 
	addl	$8, %edx
 jmp .UNIQUE3854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3854: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3855: 
	jmp	.L347
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
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3857: 
	movq	%rdx, %rax
 jmp .UNIQUE3858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3858: 
	addq	$8, %rdx
 jmp .UNIQUE3859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3859: 
	movq	%rdx, -208(%rbp)
.L347:
 jmp .UNIQUE3860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3860: 
	movq	(%rax), %rax
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
	movq	-232(%rbp), %rax
 jmp .UNIQUE3863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3863: 
	movq	8(%rax), %rax
 jmp .UNIQUE3864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3864: 
	movq	112(%rax), %rax
 jmp .UNIQUE3865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3865: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE3866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3866: 
	salq	$3, %rdx
 jmp .UNIQUE3867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3867: 
	addq	%rdx, %rax
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
	addq	%rax, -240(%rbp)
 jmp .UNIQUE3870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3870: 
	addq	$1, -248(%rbp)
.L345:
 jmp .UNIQUE3871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3871: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE3872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3872: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3873: 
	jl	.L348
 jmp .UNIQUE3874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3874: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3875: 
	movq	8(%rax), %rbx
 jmp .UNIQUE3876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3876: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE3877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3877: 
	salq	$3, %rax
 jmp .UNIQUE3878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3878: 
	movl	$619, %edx
 jmp .UNIQUE3879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3879: 
	movl	$__func__.4406, %esi
 jmp .UNIQUE3880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3880: 
	movq	%rax, %rdi
 jmp .UNIQUE3881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3881: 
	call	error_checking_malloc
 jmp .UNIQUE3882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3882: 
	movq	%rax, 120(%rbx)
 jmp .UNIQUE3883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3883: 
	movq	$0, -248(%rbp)
 jmp .UNIQUE3884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3884: 
	jmp	.L349
.L352:
 jmp .UNIQUE3885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3885: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3886: 
	movq	8(%rax), %rax
 jmp .UNIQUE3887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3887: 
	movq	120(%rax), %rax
 jmp .UNIQUE3888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3888: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE3889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3889: 
	salq	$3, %rdx
 jmp .UNIQUE3890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3890: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE3891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3891: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3892: 
	cmpl	$48, %eax
 jmp .UNIQUE3893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3893: 
	jnb	.L350
 jmp .UNIQUE3894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3894: 
	movq	-200(%rbp), %rdx
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
	movl	%eax, %eax
 jmp .UNIQUE3897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3897: 
	addq	%rdx, %rax
 jmp .UNIQUE3898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3898: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3899: 
	addl	$8, %edx
 jmp .UNIQUE3900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3900: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3901: 
	jmp	.L351
.L350:
 jmp .UNIQUE3902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3902: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3903: 
	movq	%rdx, %rax
 jmp .UNIQUE3904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3904: 
	addq	$8, %rdx
 jmp .UNIQUE3905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3905: 
	movq	%rdx, -208(%rbp)
.L351:
 jmp .UNIQUE3906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3906: 
	movq	(%rax), %rax
 jmp .UNIQUE3907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3907: 
	movq	%rax, (%rcx)
 jmp .UNIQUE3908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3908: 
	addq	$1, -248(%rbp)
.L349:
 jmp .UNIQUE3909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3909: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE3910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3910: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE3911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3911: 
	jl	.L352
 jmp .UNIQUE3912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3912: 
	jmp	.L289
.L344:
 jmp .UNIQUE3913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3913: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3914: 
	movq	8(%rax), %rax
 jmp .UNIQUE3915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3915: 
	movq	$0, 112(%rax)
 jmp .UNIQUE3916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3916: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3917: 
	movq	8(%rax), %rax
 jmp .UNIQUE3918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3918: 
	movq	$0, 120(%rax)
.L289:
 jmp .UNIQUE3919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3919: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3920: 
	movq	-240(%rbp), %rdx
 jmp .UNIQUE3921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3921: 
	movq	%rdx, (%rax)
 jmp .UNIQUE3922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3922: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3923: 
	addq	$264, %rsp
 jmp .UNIQUE3924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3924: 
	popq	%rbx
 jmp .UNIQUE3925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3925: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE3926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3926: 
	ret
	.cfi_endproc
.LFE76:
	.size	init_function_params, .-init_function_params
	.globl	init_function_params_with_uninitialised_elements
	.type	init_function_params_with_uninitialised_elements, @function
init_function_params_with_uninitialised_elements:
.LFB77:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE3927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3927: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE3928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3928: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE3929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3929: 
	pushq	%rbx
 jmp .UNIQUE3930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3930: 
	subq	$264, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE3931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3931: 
	movq	%rsi, -184(%rbp)
 jmp .UNIQUE3932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3932: 
	movq	%rdx, -176(%rbp)
 jmp .UNIQUE3933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3933: 
	movq	%rcx, -168(%rbp)
 jmp .UNIQUE3934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3934: 
	movq	%r8, -160(%rbp)
 jmp .UNIQUE3935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3935: 
	movq	%r9, -152(%rbp)
 jmp .UNIQUE3936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3936: 
	testb	%al, %al
 jmp .UNIQUE3937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3937: 
	je	.L355
 jmp .UNIQUE3938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3938: 
	movaps	%xmm0, -144(%rbp)
 jmp .UNIQUE3939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3939: 
	movaps	%xmm1, -128(%rbp)
 jmp .UNIQUE3940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3940: 
	movaps	%xmm2, -112(%rbp)
 jmp .UNIQUE3941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3941: 
	movaps	%xmm3, -96(%rbp)
 jmp .UNIQUE3942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3942: 
	movaps	%xmm4, -80(%rbp)
 jmp .UNIQUE3943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3943: 
	movaps	%xmm5, -64(%rbp)
 jmp .UNIQUE3944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3944: 
	movaps	%xmm6, -48(%rbp)
 jmp .UNIQUE3945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3945: 
	movaps	%xmm7, -32(%rbp)
.L355:
 jmp .UNIQUE3946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3946: 
	movl	%edi, -260(%rbp)
 jmp .UNIQUE3947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3947: 
	movq	$0, -248(%rbp)
 jmp .UNIQUE3948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3948: 
	movl	$8, -216(%rbp)
 jmp .UNIQUE3949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3949: 
	movl	$48, -212(%rbp)
 jmp .UNIQUE3950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3950: 
	leaq	16(%rbp), %rax
 jmp .UNIQUE3951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3951: 
	movq	%rax, -208(%rbp)
 jmp .UNIQUE3952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3952: 
	leaq	-192(%rbp), %rax
 jmp .UNIQUE3953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3953: 
	movq	%rax, -200(%rbp)
 jmp .UNIQUE3954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3954: 
	movl	$673, %edx
 jmp .UNIQUE3955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3955: 
	movl	$__func__.4443, %esi
 jmp .UNIQUE3956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3956: 
	movl	$16, %edi
 jmp .UNIQUE3957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3957: 
	call	error_checking_malloc
 jmp .UNIQUE3958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3958: 
	movq	%rax, -240(%rbp)
 jmp .UNIQUE3959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3959: 
	cmpl	$0, -260(%rbp)
 jmp .UNIQUE3960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3960: 
	je	.L356
 jmp .UNIQUE3961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3961: 
	movl	$676, %edx
 jmp .UNIQUE3962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3962: 
	movl	$__func__.4443, %esi
 jmp .UNIQUE3963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3963: 
	movl	$128, %edi
 jmp .UNIQUE3964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3964: 
	call	error_checking_malloc
 jmp .UNIQUE3965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3965: 
	movq	-240(%rbp), %rdx
 jmp .UNIQUE3966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3966: 
	movq	%rax, 8(%rdx)
 jmp .UNIQUE3967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3967: 
	jmp	.L357
.L356:
 jmp .UNIQUE3968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3968: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE3969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3969: 
	movq	$0, 8(%rax)
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
	cmpl	$0, -260(%rbp)
 jmp .UNIQUE3971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3971: 
	je	.L358
 jmp .UNIQUE3972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3972: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE3973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3973: 
	movq	8(%rax), %rcx
 jmp .UNIQUE3974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3974: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3975: 
	cmpl	$48, %eax
 jmp .UNIQUE3976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3976: 
	jnb	.L359
 jmp .UNIQUE3977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3977: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE3978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3978: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE3979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3979: 
	movl	%eax, %eax
 jmp .UNIQUE3980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3980: 
	addq	%rdx, %rax
 jmp .UNIQUE3981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3981: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE3982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3982: 
	addl	$8, %edx
 jmp .UNIQUE3983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3983: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE3984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3984: 
	jmp	.L360
.L359:
 jmp .UNIQUE3985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3985: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE3986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3986: 
	movq	%rdx, %rax
 jmp .UNIQUE3987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3987: 
	addq	$8, %rdx
 jmp .UNIQUE3988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3988: 
	movq	%rdx, -208(%rbp)
.L360:
 jmp .UNIQUE3989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3989: 
	movq	(%rax), %rax
 jmp .UNIQUE3990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3990: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE3991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3991: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3992: 
	movq	%rax, (%rcx)
 jmp .UNIQUE3993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3993: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE3994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3994: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE3995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3995: 
	addq	%rdx, %rax
 jmp .UNIQUE3996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3996: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE3997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3997: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE3998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE3998: 
	je	.L361
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
	cmpl	$48, %eax
 jmp .UNIQUE4001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4001: 
	jnb	.L362
 jmp .UNIQUE4002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4002: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4003: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4004: 
	movl	%eax, %eax
 jmp .UNIQUE4005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4005: 
	addq	%rdx, %rax
 jmp .UNIQUE4006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4006: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4007: 
	addl	$8, %edx
 jmp .UNIQUE4008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4008: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4009: 
	jmp	.L363
.L362:
 jmp .UNIQUE4010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4010: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4011: 
	movq	%rdx, %rax
 jmp .UNIQUE4012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4012: 
	addq	$8, %rdx
 jmp .UNIQUE4013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4013: 
	movq	%rdx, -208(%rbp)
.L363:
 jmp .UNIQUE4014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4014: 
	movq	(%rax), %rax
 jmp .UNIQUE4015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4015: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4016: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4017: 
	movq	8(%rax), %rbx
 jmp .UNIQUE4018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4018: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4019: 
	movl	$689, %edx
 jmp .UNIQUE4020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4020: 
	movl	$__func__.4443, %esi
 jmp .UNIQUE4021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4021: 
	movq	%rax, %rdi
 jmp .UNIQUE4022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4022: 
	call	error_checking_malloc
 jmp .UNIQUE4023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4023: 
	movq	%rax, 8(%rbx)
 jmp .UNIQUE4024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4024: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4025: 
	jmp	.L364
.L367:
 jmp .UNIQUE4026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4026: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4027: 
	movq	8(%rax), %rax
 jmp .UNIQUE4028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4028: 
	movq	8(%rax), %rdx
 jmp .UNIQUE4029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4029: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4030: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE4031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4031: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4032: 
	cmpl	$48, %eax
 jmp .UNIQUE4033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4033: 
	jnb	.L365
 jmp .UNIQUE4034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4034: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4035: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4036: 
	movl	%eax, %eax
 jmp .UNIQUE4037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4037: 
	addq	%rdx, %rax
 jmp .UNIQUE4038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4038: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4039: 
	addl	$8, %edx
 jmp .UNIQUE4040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4040: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4041: 
	jmp	.L366
.L365:
 jmp .UNIQUE4042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4042: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4043: 
	movq	%rdx, %rax
 jmp .UNIQUE4044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4044: 
	addq	$8, %rdx
 jmp .UNIQUE4045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4045: 
	movq	%rdx, -208(%rbp)
.L366:
 jmp .UNIQUE4046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4046: 
	movl	(%rax), %eax
 jmp .UNIQUE4047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4047: 
	movb	%al, (%rcx)
 jmp .UNIQUE4048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4048: 
	addq	$1, -256(%rbp)
.L364:
 jmp .UNIQUE4049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4049: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4050: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4051: 
	jl	.L367
 jmp .UNIQUE4052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4052: 
	jmp	.L368
.L361:
 jmp .UNIQUE4053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4053: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4054: 
	movq	8(%rax), %rax
 jmp .UNIQUE4055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4055: 
	movq	$0, 8(%rax)
.L368:
 jmp .UNIQUE4056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4056: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4057: 
	movq	8(%rax), %rcx
 jmp .UNIQUE4058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4058: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4059: 
	cmpl	$48, %eax
 jmp .UNIQUE4060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4060: 
	jnb	.L369
 jmp .UNIQUE4061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4061: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4062: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4063: 
	movl	%eax, %eax
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
	movl	-216(%rbp), %edx
 jmp .UNIQUE4066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4066: 
	addl	$8, %edx
 jmp .UNIQUE4067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4067: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4068: 
	jmp	.L370
.L369:
 jmp .UNIQUE4069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4069: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4070: 
	movq	%rdx, %rax
 jmp .UNIQUE4071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4071: 
	addq	$8, %rdx
 jmp .UNIQUE4072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4072: 
	movq	%rdx, -208(%rbp)
.L370:
 jmp .UNIQUE4073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4073: 
	movq	(%rax), %rax
 jmp .UNIQUE4074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4074: 
	movq	%rax, -232(%rbp)
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
	movq	%rax, 16(%rcx)
 jmp .UNIQUE4077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4077: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4078: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE4079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4079: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE4080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4080: 
	addq	%rdx, %rax
 jmp .UNIQUE4081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4081: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE4082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4082: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4083: 
	je	.L371
 jmp .UNIQUE4084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4084: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4085: 
	cmpl	$48, %eax
 jmp .UNIQUE4086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4086: 
	jnb	.L372
 jmp .UNIQUE4087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4087: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4088: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4089: 
	movl	%eax, %eax
 jmp .UNIQUE4090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4090: 
	addq	%rdx, %rax
 jmp .UNIQUE4091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4091: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4092: 
	addl	$8, %edx
 jmp .UNIQUE4093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4093: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4094: 
	jmp	.L373
.L372:
 jmp .UNIQUE4095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4095: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4096: 
	movq	%rdx, %rax
 jmp .UNIQUE4097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4097: 
	addq	$8, %rdx
 jmp .UNIQUE4098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4098: 
	movq	%rdx, -208(%rbp)
.L373:
 jmp .UNIQUE4099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4099: 
	movq	(%rax), %rax
 jmp .UNIQUE4100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4100: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4101: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4102: 
	movq	8(%rax), %rbx
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
	salq	$2, %rax
 jmp .UNIQUE4105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4105: 
	movl	$706, %edx
 jmp .UNIQUE4106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4106: 
	movl	$__func__.4443, %esi
 jmp .UNIQUE4107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4107: 
	movq	%rax, %rdi
 jmp .UNIQUE4108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4108: 
	call	error_checking_malloc
 jmp .UNIQUE4109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4109: 
	movq	%rax, 24(%rbx)
 jmp .UNIQUE4110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4110: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4111: 
	jmp	.L374
.L377:
 jmp .UNIQUE4112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4112: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4113: 
	movq	8(%rax), %rax
 jmp .UNIQUE4114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4114: 
	movq	24(%rax), %rax
 jmp .UNIQUE4115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4115: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4116: 
	salq	$2, %rdx
 jmp .UNIQUE4117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4117: 
	leaq	(%rax,%rdx), %rcx
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
	cmpl	$48, %eax
 jmp .UNIQUE4120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4120: 
	jnb	.L375
 jmp .UNIQUE4121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4121: 
	movq	-200(%rbp), %rdx
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
	movl	%eax, %eax
 jmp .UNIQUE4124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4124: 
	addq	%rdx, %rax
 jmp .UNIQUE4125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4125: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4126: 
	addl	$8, %edx
 jmp .UNIQUE4127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4127: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4128: 
	jmp	.L376
.L375:
 jmp .UNIQUE4129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4129: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4130: 
	movq	%rdx, %rax
 jmp .UNIQUE4131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4131: 
	addq	$8, %rdx
 jmp .UNIQUE4132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4132: 
	movq	%rdx, -208(%rbp)
.L376:
 jmp .UNIQUE4133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4133: 
	movl	(%rax), %eax
 jmp .UNIQUE4134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4134: 
	movl	%eax, (%rcx)
 jmp .UNIQUE4135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4135: 
	addq	$1, -256(%rbp)
.L374:
 jmp .UNIQUE4136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4136: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4137: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4138: 
	jl	.L377
 jmp .UNIQUE4139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4139: 
	jmp	.L378
.L371:
 jmp .UNIQUE4140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4140: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4141: 
	movq	8(%rax), %rax
 jmp .UNIQUE4142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4142: 
	movq	$0, 24(%rax)
.L378:
 jmp .UNIQUE4143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4143: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4144: 
	movq	8(%rax), %rcx
 jmp .UNIQUE4145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4145: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4146: 
	cmpl	$48, %eax
 jmp .UNIQUE4147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4147: 
	jnb	.L379
 jmp .UNIQUE4148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4148: 
	movq	-200(%rbp), %rdx
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
	movl	%eax, %eax
 jmp .UNIQUE4151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4151: 
	addq	%rdx, %rax
 jmp .UNIQUE4152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4152: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4153: 
	addl	$8, %edx
 jmp .UNIQUE4154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4154: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4155: 
	jmp	.L380
.L379:
 jmp .UNIQUE4156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4156: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4157: 
	movq	%rdx, %rax
 jmp .UNIQUE4158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4158: 
	addq	$8, %rdx
 jmp .UNIQUE4159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4159: 
	movq	%rdx, -208(%rbp)
.L380:
 jmp .UNIQUE4160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4160: 
	movq	(%rax), %rax
 jmp .UNIQUE4161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4161: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4162: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4163: 
	movq	%rax, 32(%rcx)
 jmp .UNIQUE4164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4164: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4165: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4166: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE4167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4167: 
	addq	%rdx, %rax
 jmp .UNIQUE4168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4168: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE4169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4169: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4170: 
	je	.L381
 jmp .UNIQUE4171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4171: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4172: 
	cmpl	$48, %eax
 jmp .UNIQUE4173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4173: 
	jnb	.L382
 jmp .UNIQUE4174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4174: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4175: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4176: 
	movl	%eax, %eax
 jmp .UNIQUE4177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4177: 
	addq	%rdx, %rax
 jmp .UNIQUE4178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4178: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4179: 
	addl	$8, %edx
 jmp .UNIQUE4180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4180: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4181: 
	jmp	.L383
.L382:
 jmp .UNIQUE4182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4182: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4183: 
	movq	%rdx, %rax
 jmp .UNIQUE4184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4184: 
	addq	$8, %rdx
 jmp .UNIQUE4185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4185: 
	movq	%rdx, -208(%rbp)
.L383:
 jmp .UNIQUE4186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4186: 
	movq	(%rax), %rax
 jmp .UNIQUE4187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4187: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4188: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4189: 
	movq	8(%rax), %rbx
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
	salq	$3, %rax
 jmp .UNIQUE4192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4192: 
	movl	$723, %edx
 jmp .UNIQUE4193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4193: 
	movl	$__func__.4443, %esi
 jmp .UNIQUE4194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4194: 
	movq	%rax, %rdi
 jmp .UNIQUE4195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4195: 
	call	error_checking_malloc
 jmp .UNIQUE4196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4196: 
	movq	%rax, 40(%rbx)
 jmp .UNIQUE4197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4197: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4198: 
	jmp	.L384
.L387:
 jmp .UNIQUE4199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4199: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4200: 
	movq	8(%rax), %rax
 jmp .UNIQUE4201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4201: 
	movq	40(%rax), %rax
 jmp .UNIQUE4202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4202: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4203: 
	salq	$3, %rdx
 jmp .UNIQUE4204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4204: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4205: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4206: 
	cmpl	$48, %eax
 jmp .UNIQUE4207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4207: 
	jnb	.L385
 jmp .UNIQUE4208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4208: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4209: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4210: 
	movl	%eax, %eax
 jmp .UNIQUE4211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4211: 
	addq	%rdx, %rax
 jmp .UNIQUE4212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4212: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4213: 
	addl	$8, %edx
 jmp .UNIQUE4214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4214: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4215: 
	jmp	.L386
.L385:
 jmp .UNIQUE4216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4216: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4217: 
	movq	%rdx, %rax
 jmp .UNIQUE4218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4218: 
	addq	$8, %rdx
 jmp .UNIQUE4219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4219: 
	movq	%rdx, -208(%rbp)
.L386:
 jmp .UNIQUE4220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4220: 
	movq	(%rax), %rax
 jmp .UNIQUE4221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4221: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4222: 
	addq	$1, -256(%rbp)
.L384:
 jmp .UNIQUE4223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4223: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4224: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4225: 
	jl	.L387
 jmp .UNIQUE4226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4226: 
	jmp	.L388
.L381:
 jmp .UNIQUE4227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4227: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4228: 
	movq	8(%rax), %rax
 jmp .UNIQUE4229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4229: 
	movq	$0, 40(%rax)
.L388:
 jmp .UNIQUE4230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4230: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4231
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4231: 
	movq	8(%rax), %rcx
 jmp .UNIQUE4232
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4232: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4233
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4233: 
	cmpl	$48, %eax
 jmp .UNIQUE4234
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4234: 
	jnb	.L389
 jmp .UNIQUE4235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4235: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4236: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4237: 
	movl	%eax, %eax
 jmp .UNIQUE4238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4238: 
	addq	%rdx, %rax
 jmp .UNIQUE4239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4239: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4240: 
	addl	$8, %edx
 jmp .UNIQUE4241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4241: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4242: 
	jmp	.L390
.L389:
 jmp .UNIQUE4243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4243: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4244: 
	movq	%rdx, %rax
 jmp .UNIQUE4245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4245: 
	addq	$8, %rdx
 jmp .UNIQUE4246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4246: 
	movq	%rdx, -208(%rbp)
.L390:
 jmp .UNIQUE4247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4247: 
	movq	(%rax), %rax
 jmp .UNIQUE4248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4248: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4249: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4250: 
	movq	%rax, 48(%rcx)
 jmp .UNIQUE4251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4251: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4252: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE4253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4253: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE4254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4254: 
	addq	%rdx, %rax
 jmp .UNIQUE4255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4255: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE4256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4256: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4257: 
	je	.L391
 jmp .UNIQUE4258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4258: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4259: 
	cmpl	$48, %eax
 jmp .UNIQUE4260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4260: 
	jnb	.L392
 jmp .UNIQUE4261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4261: 
	movq	-200(%rbp), %rdx
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
	movl	%eax, %eax
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
	movl	-216(%rbp), %edx
 jmp .UNIQUE4266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4266: 
	addl	$8, %edx
 jmp .UNIQUE4267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4267: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4268: 
	jmp	.L393
.L392:
 jmp .UNIQUE4269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4269: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4270: 
	movq	%rdx, %rax
 jmp .UNIQUE4271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4271: 
	addq	$8, %rdx
 jmp .UNIQUE4272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4272: 
	movq	%rdx, -208(%rbp)
.L393:
 jmp .UNIQUE4273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4273: 
	movq	(%rax), %rax
 jmp .UNIQUE4274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4274: 
	movq	%rax, -224(%rbp)
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
	movq	8(%rax), %rbx
 jmp .UNIQUE4277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4277: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4278: 
	salq	$2, %rax
 jmp .UNIQUE4279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4279: 
	movl	$740, %edx
 jmp .UNIQUE4280
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4280: 
	movl	$__func__.4443, %esi
 jmp .UNIQUE4281
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4281: 
	movq	%rax, %rdi
 jmp .UNIQUE4282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4282: 
	call	error_checking_malloc
 jmp .UNIQUE4283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4283: 
	movq	%rax, 56(%rbx)
 jmp .UNIQUE4284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4284: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4285: 
	jmp	.L394
.L397:
 jmp .UNIQUE4286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4286: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4287: 
	movq	8(%rax), %rax
 jmp .UNIQUE4288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4288: 
	movq	56(%rax), %rax
 jmp .UNIQUE4289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4289: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4290: 
	salq	$2, %rdx
 jmp .UNIQUE4291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4291: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4292: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4293: 
	cmpl	$176, %eax
 jmp .UNIQUE4294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4294: 
	jnb	.L395
 jmp .UNIQUE4295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4295: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4296: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4297: 
	movl	%eax, %eax
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
	movl	-212(%rbp), %edx
 jmp .UNIQUE4300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4300: 
	addl	$16, %edx
 jmp .UNIQUE4301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4301: 
	movl	%edx, -212(%rbp)
 jmp .UNIQUE4302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4302: 
	jmp	.L396
.L395:
 jmp .UNIQUE4303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4303: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4304: 
	movq	%rdx, %rax
 jmp .UNIQUE4305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4305: 
	addq	$8, %rdx
 jmp .UNIQUE4306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4306: 
	movq	%rdx, -208(%rbp)
.L396:
 jmp .UNIQUE4307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4307: 
	movsd	(%rax), %xmm0
 jmp .UNIQUE4308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4308: 
	unpcklpd	%xmm0, %xmm0
 jmp .UNIQUE4309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4309: 
	cvtpd2ps	%xmm0, %xmm0
 jmp .UNIQUE4310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4310: 
	movss	%xmm0, (%rcx)
 jmp .UNIQUE4311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4311: 
	addq	$1, -256(%rbp)
.L394:
 jmp .UNIQUE4312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4312: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4313: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4314: 
	jl	.L397
 jmp .UNIQUE4315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4315: 
	jmp	.L398
.L391:
 jmp .UNIQUE4316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4316: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4317: 
	movq	8(%rax), %rax
 jmp .UNIQUE4318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4318: 
	movq	$0, 56(%rax)
.L398:
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
	movq	8(%rax), %rcx
 jmp .UNIQUE4321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4321: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4322: 
	cmpl	$48, %eax
 jmp .UNIQUE4323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4323: 
	jnb	.L399
 jmp .UNIQUE4324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4324: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4325: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4326: 
	movl	%eax, %eax
 jmp .UNIQUE4327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4327: 
	addq	%rdx, %rax
 jmp .UNIQUE4328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4328: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4329: 
	addl	$8, %edx
 jmp .UNIQUE4330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4330: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4331: 
	jmp	.L400
.L399:
 jmp .UNIQUE4332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4332: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4333: 
	movq	%rdx, %rax
 jmp .UNIQUE4334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4334: 
	addq	$8, %rdx
 jmp .UNIQUE4335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4335: 
	movq	%rdx, -208(%rbp)
.L400:
 jmp .UNIQUE4336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4336: 
	movq	(%rax), %rax
 jmp .UNIQUE4337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4337: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4338: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4339: 
	movq	%rax, 64(%rcx)
 jmp .UNIQUE4340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4340: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4341: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4342: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE4343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4343: 
	addq	%rdx, %rax
 jmp .UNIQUE4344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4344: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE4345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4345: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4346: 
	je	.L401
 jmp .UNIQUE4347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4347: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4348
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4348: 
	cmpl	$48, %eax
 jmp .UNIQUE4349
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4349: 
	jnb	.L402
 jmp .UNIQUE4350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4350: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4351: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4352: 
	movl	%eax, %eax
 jmp .UNIQUE4353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4353: 
	addq	%rdx, %rax
 jmp .UNIQUE4354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4354: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4355: 
	addl	$8, %edx
 jmp .UNIQUE4356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4356: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4357
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4357: 
	jmp	.L403
.L402:
 jmp .UNIQUE4358
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4358: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4359: 
	movq	%rdx, %rax
 jmp .UNIQUE4360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4360: 
	addq	$8, %rdx
 jmp .UNIQUE4361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4361: 
	movq	%rdx, -208(%rbp)
.L403:
 jmp .UNIQUE4362
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4362: 
	movq	(%rax), %rax
 jmp .UNIQUE4363
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4363: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4364: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4365: 
	movq	8(%rax), %rbx
 jmp .UNIQUE4366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4366: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4367: 
	salq	$3, %rax
 jmp .UNIQUE4368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4368: 
	movl	$757, %edx
 jmp .UNIQUE4369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4369: 
	movl	$__func__.4443, %esi
 jmp .UNIQUE4370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4370: 
	movq	%rax, %rdi
 jmp .UNIQUE4371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4371: 
	call	error_checking_malloc
 jmp .UNIQUE4372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4372: 
	movq	%rax, 72(%rbx)
 jmp .UNIQUE4373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4373: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4374: 
	jmp	.L404
.L407:
 jmp .UNIQUE4375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4375: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4376: 
	movq	8(%rax), %rax
 jmp .UNIQUE4377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4377: 
	movq	72(%rax), %rax
 jmp .UNIQUE4378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4378: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4379: 
	salq	$3, %rdx
 jmp .UNIQUE4380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4380: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4381: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4382: 
	cmpl	$176, %eax
 jmp .UNIQUE4383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4383: 
	jnb	.L405
 jmp .UNIQUE4384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4384: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4385: 
	movl	-212(%rbp), %eax
 jmp .UNIQUE4386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4386: 
	movl	%eax, %eax
 jmp .UNIQUE4387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4387: 
	addq	%rdx, %rax
 jmp .UNIQUE4388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4388: 
	movl	-212(%rbp), %edx
 jmp .UNIQUE4389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4389: 
	addl	$16, %edx
 jmp .UNIQUE4390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4390: 
	movl	%edx, -212(%rbp)
 jmp .UNIQUE4391
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4391: 
	jmp	.L406
.L405:
 jmp .UNIQUE4392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4392: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4393: 
	movq	%rdx, %rax
 jmp .UNIQUE4394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4394: 
	addq	$8, %rdx
 jmp .UNIQUE4395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4395: 
	movq	%rdx, -208(%rbp)
.L406:
 jmp .UNIQUE4396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4396: 
	movq	(%rax), %rax
 jmp .UNIQUE4397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4397: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4398: 
	addq	$1, -256(%rbp)
.L404:
 jmp .UNIQUE4399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4399: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4400: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4401: 
	jl	.L407
 jmp .UNIQUE4402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4402: 
	jmp	.L408
.L401:
 jmp .UNIQUE4403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4403: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4404: 
	movq	8(%rax), %rax
 jmp .UNIQUE4405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4405: 
	movq	$0, 72(%rax)
.L408:
 jmp .UNIQUE4406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4406: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4407: 
	movq	8(%rax), %rcx
 jmp .UNIQUE4408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4408: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4409: 
	cmpl	$48, %eax
 jmp .UNIQUE4410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4410: 
	jnb	.L409
 jmp .UNIQUE4411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4411: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4412: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4413: 
	movl	%eax, %eax
 jmp .UNIQUE4414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4414: 
	addq	%rdx, %rax
 jmp .UNIQUE4415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4415: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4416: 
	addl	$8, %edx
 jmp .UNIQUE4417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4417: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4418: 
	jmp	.L410
.L409:
 jmp .UNIQUE4419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4419: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4420: 
	movq	%rdx, %rax
 jmp .UNIQUE4421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4421: 
	addq	$8, %rdx
 jmp .UNIQUE4422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4422: 
	movq	%rdx, -208(%rbp)
.L410:
 jmp .UNIQUE4423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4423: 
	movq	(%rax), %rax
 jmp .UNIQUE4424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4424: 
	movq	%rax, -232(%rbp)
 jmp .UNIQUE4425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4425: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4426: 
	movq	%rax, 80(%rcx)
 jmp .UNIQUE4427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4427: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4428: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4429: 
	movq	-248(%rbp), %rax
 jmp .UNIQUE4430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4430: 
	addq	%rdx, %rax
 jmp .UNIQUE4431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4431: 
	movq	%rax, -248(%rbp)
 jmp .UNIQUE4432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4432: 
	cmpq	$0, -232(%rbp)
 jmp .UNIQUE4433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4433: 
	je	.L411
 jmp .UNIQUE4434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4434: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4435: 
	movq	8(%rax), %rbx
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
	salq	$3, %rax
 jmp .UNIQUE4438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4438: 
	movl	$773, %edx
 jmp .UNIQUE4439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4439: 
	movl	$__func__.4443, %esi
 jmp .UNIQUE4440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4440: 
	movq	%rax, %rdi
 jmp .UNIQUE4441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4441: 
	call	error_checking_malloc
 jmp .UNIQUE4442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4442: 
	movq	%rax, 88(%rbx)
 jmp .UNIQUE4443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4443: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4444: 
	jmp	.L412
.L415:
 jmp .UNIQUE4445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4445: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4446: 
	movq	8(%rax), %rax
 jmp .UNIQUE4447
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4447: 
	movq	88(%rax), %rax
 jmp .UNIQUE4448
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4448: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4449: 
	salq	$3, %rdx
 jmp .UNIQUE4450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4450: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4451: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4452
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4452: 
	cmpl	$48, %eax
 jmp .UNIQUE4453
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4453: 
	jnb	.L413
 jmp .UNIQUE4454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4454: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4455: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4456: 
	movl	%eax, %eax
 jmp .UNIQUE4457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4457: 
	addq	%rdx, %rax
 jmp .UNIQUE4458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4458: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4459: 
	addl	$8, %edx
 jmp .UNIQUE4460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4460: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4461: 
	jmp	.L414
.L413:
 jmp .UNIQUE4462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4462: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4463: 
	movq	%rdx, %rax
 jmp .UNIQUE4464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4464: 
	addq	$8, %rdx
 jmp .UNIQUE4465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4465: 
	movq	%rdx, -208(%rbp)
.L414:
 jmp .UNIQUE4466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4466: 
	movq	(%rax), %rax
 jmp .UNIQUE4467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4467: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4468: 
	addq	$1, -256(%rbp)
.L412:
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
	cmpq	-232(%rbp), %rax
 jmp .UNIQUE4471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4471: 
	jl	.L415
 jmp .UNIQUE4472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4472: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4473: 
	cmpl	$48, %eax
 jmp .UNIQUE4474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4474: 
	jnb	.L416
 jmp .UNIQUE4475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4475: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4476: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4477: 
	movl	%eax, %eax
 jmp .UNIQUE4478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4478: 
	addq	%rdx, %rax
 jmp .UNIQUE4479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4479: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4480: 
	addl	$8, %edx
 jmp .UNIQUE4481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4481: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4482: 
	jmp	.L417
.L416:
 jmp .UNIQUE4483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4483: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4484: 
	movq	%rdx, %rax
 jmp .UNIQUE4485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4485: 
	addq	$8, %rdx
 jmp .UNIQUE4486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4486: 
	movq	%rdx, -208(%rbp)
.L417:
 jmp .UNIQUE4487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4487: 
	movq	(%rax), %rax
 jmp .UNIQUE4488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4488: 
	movq	%rax, -224(%rbp)
 jmp .UNIQUE4489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4489: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4490: 
	movq	8(%rax), %rbx
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
	salq	$3, %rax
 jmp .UNIQUE4493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4493: 
	movl	$780, %edx
 jmp .UNIQUE4494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4494: 
	movl	$__func__.4443, %esi
 jmp .UNIQUE4495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4495: 
	movq	%rax, %rdi
 jmp .UNIQUE4496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4496: 
	call	error_checking_malloc
 jmp .UNIQUE4497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4497: 
	movq	%rax, 96(%rbx)
 jmp .UNIQUE4498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4498: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4499: 
	jmp	.L418
.L421:
 jmp .UNIQUE4500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4500: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4501: 
	movq	8(%rax), %rax
 jmp .UNIQUE4502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4502: 
	movq	96(%rax), %rax
 jmp .UNIQUE4503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4503: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4504: 
	salq	$3, %rdx
 jmp .UNIQUE4505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4505: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4506: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4507: 
	cmpl	$48, %eax
 jmp .UNIQUE4508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4508: 
	jnb	.L419
 jmp .UNIQUE4509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4509: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4510: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4511: 
	movl	%eax, %eax
 jmp .UNIQUE4512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4512: 
	addq	%rdx, %rax
 jmp .UNIQUE4513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4513: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4514: 
	addl	$8, %edx
 jmp .UNIQUE4515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4515: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4516: 
	jmp	.L420
.L419:
 jmp .UNIQUE4517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4517: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4518: 
	movq	%rdx, %rax
 jmp .UNIQUE4519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4519: 
	addq	$8, %rdx
 jmp .UNIQUE4520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4520: 
	movq	%rdx, -208(%rbp)
.L420:
 jmp .UNIQUE4521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4521: 
	movq	(%rax), %rax
 jmp .UNIQUE4522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4522: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4523: 
	addq	$1, -256(%rbp)
.L418:
 jmp .UNIQUE4524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4524: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4525: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4526: 
	jl	.L421
 jmp .UNIQUE4527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4527: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4528: 
	movq	%rax, -256(%rbp)
 jmp .UNIQUE4529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4529: 
	jmp	.L422
.L423:
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
	movq	8(%rax), %rax
 jmp .UNIQUE4532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4532: 
	movq	96(%rax), %rax
 jmp .UNIQUE4533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4533: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4534: 
	salq	$3, %rdx
 jmp .UNIQUE4535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4535: 
	addq	%rdx, %rax
 jmp .UNIQUE4536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4536: 
	movq	$0, (%rax)
 jmp .UNIQUE4537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4537: 
	addq	$1, -256(%rbp)
.L422:
 jmp .UNIQUE4538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4538: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4539: 
	cmpq	-232(%rbp), %rax
 jmp .UNIQUE4540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4540: 
	jl	.L423
 jmp .UNIQUE4541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4541: 
	jmp	.L424
.L411:
 jmp .UNIQUE4542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4542: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4543: 
	movq	8(%rax), %rax
 jmp .UNIQUE4544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4544: 
	movq	$0, 88(%rax)
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
	movq	8(%rax), %rax
 jmp .UNIQUE4547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4547: 
	movq	$0, 96(%rax)
.L424:
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
	movq	8(%rax), %rcx
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
	jnb	.L425
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
	jmp	.L426
.L425:
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
.L426:
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
	movq	%rax, 104(%rcx)
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
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE4571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4571: 
	movq	-248(%rbp), %rax
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
	movq	%rax, -248(%rbp)
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
	je	.L427
 jmp .UNIQUE4576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4576: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4577: 
	movq	8(%rax), %rbx
 jmp .UNIQUE4578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4578: 
	movq	-232(%rbp), %rax
 jmp .UNIQUE4579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4579: 
	salq	$3, %rax
 jmp .UNIQUE4580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4580: 
	movl	$802, %edx
 jmp .UNIQUE4581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4581: 
	movl	$__func__.4443, %esi
 jmp .UNIQUE4582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4582: 
	movq	%rax, %rdi
 jmp .UNIQUE4583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4583: 
	call	error_checking_malloc
 jmp .UNIQUE4584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4584: 
	movq	%rax, 112(%rbx)
 jmp .UNIQUE4585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4585: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4586: 
	jmp	.L428
.L431:
 jmp .UNIQUE4587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4587: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4588: 
	movq	8(%rax), %rax
 jmp .UNIQUE4589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4589: 
	movq	112(%rax), %rax
 jmp .UNIQUE4590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4590: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4591: 
	salq	$3, %rdx
 jmp .UNIQUE4592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4592: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4593: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4594: 
	cmpl	$48, %eax
 jmp .UNIQUE4595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4595: 
	jnb	.L429
 jmp .UNIQUE4596
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4596: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4597
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4597: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4598: 
	movl	%eax, %eax
 jmp .UNIQUE4599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4599: 
	addq	%rdx, %rax
 jmp .UNIQUE4600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4600: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4601: 
	addl	$8, %edx
 jmp .UNIQUE4602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4602: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4603: 
	jmp	.L430
.L429:
 jmp .UNIQUE4604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4604: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4605: 
	movq	%rdx, %rax
 jmp .UNIQUE4606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4606: 
	addq	$8, %rdx
 jmp .UNIQUE4607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4607: 
	movq	%rdx, -208(%rbp)
.L430:
 jmp .UNIQUE4608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4608: 
	movq	(%rax), %rax
 jmp .UNIQUE4609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4609: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4610: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4611: 
	movq	8(%rax), %rax
 jmp .UNIQUE4612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4612: 
	movq	112(%rax), %rax
 jmp .UNIQUE4613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4613: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4614: 
	salq	$3, %rdx
 jmp .UNIQUE4615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4615: 
	addq	%rdx, %rax
 jmp .UNIQUE4616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4616: 
	movq	(%rax), %rax
 jmp .UNIQUE4617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4617: 
	addq	%rax, -248(%rbp)
 jmp .UNIQUE4618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4618: 
	addq	$1, -256(%rbp)
.L428:
 jmp .UNIQUE4619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4619: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4620: 
	cmpq	-232(%rbp), %rax
 jmp .UNIQUE4621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4621: 
	jl	.L431
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
	cmpl	$48, %eax
 jmp .UNIQUE4624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4624: 
	jnb	.L432
 jmp .UNIQUE4625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4625: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4626: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4627: 
	movl	%eax, %eax
 jmp .UNIQUE4628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4628: 
	addq	%rdx, %rax
 jmp .UNIQUE4629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4629: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4630: 
	addl	$8, %edx
 jmp .UNIQUE4631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4631: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4632: 
	jmp	.L433
.L432:
 jmp .UNIQUE4633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4633: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4634: 
	movq	%rdx, %rax
 jmp .UNIQUE4635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4635: 
	addq	$8, %rdx
 jmp .UNIQUE4636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4636: 
	movq	%rdx, -208(%rbp)
.L433:
 jmp .UNIQUE4637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4637: 
	movq	(%rax), %rax
 jmp .UNIQUE4638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4638: 
	movq	%rax, -224(%rbp)
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
	movq	8(%rax), %rbx
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
	salq	$3, %rax
 jmp .UNIQUE4643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4643: 
	movl	$810, %edx
 jmp .UNIQUE4644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4644: 
	movl	$__func__.4443, %esi
 jmp .UNIQUE4645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4645: 
	movq	%rax, %rdi
 jmp .UNIQUE4646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4646: 
	call	error_checking_malloc
 jmp .UNIQUE4647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4647: 
	movq	%rax, 120(%rbx)
 jmp .UNIQUE4648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4648: 
	movq	$0, -256(%rbp)
 jmp .UNIQUE4649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4649: 
	jmp	.L434
.L437:
 jmp .UNIQUE4650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4650: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4651: 
	movq	8(%rax), %rax
 jmp .UNIQUE4652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4652: 
	movq	120(%rax), %rax
 jmp .UNIQUE4653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4653: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4654: 
	salq	$3, %rdx
 jmp .UNIQUE4655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4655: 
	leaq	(%rax,%rdx), %rcx
 jmp .UNIQUE4656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4656: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4657
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4657: 
	cmpl	$48, %eax
 jmp .UNIQUE4658
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4658: 
	jnb	.L435
 jmp .UNIQUE4659
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4659: 
	movq	-200(%rbp), %rdx
 jmp .UNIQUE4660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4660: 
	movl	-216(%rbp), %eax
 jmp .UNIQUE4661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4661: 
	movl	%eax, %eax
 jmp .UNIQUE4662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4662: 
	addq	%rdx, %rax
 jmp .UNIQUE4663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4663: 
	movl	-216(%rbp), %edx
 jmp .UNIQUE4664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4664: 
	addl	$8, %edx
 jmp .UNIQUE4665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4665: 
	movl	%edx, -216(%rbp)
 jmp .UNIQUE4666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4666: 
	jmp	.L436
.L435:
 jmp .UNIQUE4667
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4667: 
	movq	-208(%rbp), %rdx
 jmp .UNIQUE4668
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4668: 
	movq	%rdx, %rax
 jmp .UNIQUE4669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4669: 
	addq	$8, %rdx
 jmp .UNIQUE4670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4670: 
	movq	%rdx, -208(%rbp)
.L436:
 jmp .UNIQUE4671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4671: 
	movq	(%rax), %rax
 jmp .UNIQUE4672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4672: 
	movq	%rax, (%rcx)
 jmp .UNIQUE4673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4673: 
	addq	$1, -256(%rbp)
.L434:
 jmp .UNIQUE4674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4674: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4675: 
	cmpq	-224(%rbp), %rax
 jmp .UNIQUE4676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4676: 
	jl	.L437
 jmp .UNIQUE4677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4677: 
	movq	-224(%rbp), %rax
 jmp .UNIQUE4678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4678: 
	movq	%rax, -256(%rbp)
 jmp .UNIQUE4679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4679: 
	jmp	.L438
.L439:
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
	movq	8(%rax), %rax
 jmp .UNIQUE4682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4682: 
	movq	120(%rax), %rax
 jmp .UNIQUE4683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4683: 
	movq	-256(%rbp), %rdx
 jmp .UNIQUE4684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4684: 
	salq	$3, %rdx
 jmp .UNIQUE4685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4685: 
	addq	%rdx, %rax
 jmp .UNIQUE4686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4686: 
	movq	$0, (%rax)
 jmp .UNIQUE4687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4687: 
	addq	$1, -256(%rbp)
.L438:
 jmp .UNIQUE4688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4688: 
	movq	-256(%rbp), %rax
 jmp .UNIQUE4689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4689: 
	cmpq	-232(%rbp), %rax
 jmp .UNIQUE4690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4690: 
	jl	.L439
 jmp .UNIQUE4691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4691: 
	jmp	.L358
.L427:
 jmp .UNIQUE4692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4692: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4693: 
	movq	8(%rax), %rax
 jmp .UNIQUE4694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4694: 
	movq	$0, 112(%rax)
 jmp .UNIQUE4695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4695: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4696: 
	movq	8(%rax), %rax
 jmp .UNIQUE4697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4697: 
	movq	$0, 120(%rax)
.L358:
 jmp .UNIQUE4698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4698: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4699: 
	movq	-248(%rbp), %rdx
 jmp .UNIQUE4700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4700: 
	movq	%rdx, (%rax)
 jmp .UNIQUE4701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4701: 
	movq	-240(%rbp), %rax
 jmp .UNIQUE4702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4702: 
	addq	$264, %rsp
 jmp .UNIQUE4703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4703: 
	popq	%rbx
 jmp .UNIQUE4704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4704: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE4705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4705: 
	ret
	.cfi_endproc
.LFE77:
	.size	init_function_params_with_uninitialised_elements, .-init_function_params_with_uninitialised_elements
	.globl	put_fun_params_into_secure_stack
	.type	put_fun_params_into_secure_stack, @function
put_fun_params_into_secure_stack:
.LFB78:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE4706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4706: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE4707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4707: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE4708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4708: 
	pushq	%rbx
 jmp .UNIQUE4709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4709: 
	subq	$72, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE4710
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4710: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE4711
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4711: 
	movl	$852, %edx
 jmp .UNIQUE4712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4712: 
	movl	$__func__.4485, %esi
 jmp .UNIQUE4713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4713: 
	movl	$16, %edi
 jmp .UNIQUE4714
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4714: 
	call	error_checking_malloc
 jmp .UNIQUE4715
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4715: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE4716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4716: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE4717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4717: 
	movq	(%rax), %rdx
 jmp .UNIQUE4718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4718: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4719: 
	movq	%rdx, (%rax)
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
	testq	%rax, %rax
 jmp .UNIQUE4723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4723: 
	je	.L442
 jmp .UNIQUE4724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4724: 
	movl	$859, %edx
 jmp .UNIQUE4725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4725: 
	movl	$__func__.4485, %esi
 jmp .UNIQUE4726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4726: 
	movl	$128, %edi
 jmp .UNIQUE4727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4727: 
	call	error_checking_malloc
 jmp .UNIQUE4728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4728: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE4729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4729: 
	movq	%rax, 8(%rdx)
 jmp .UNIQUE4730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4730: 
	jmp	.L443
.L442:
 jmp .UNIQUE4731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4731: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4732: 
	movq	$0, 8(%rax)
.L443:
 jmp .UNIQUE4733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4733: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE4734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4734: 
	movq	8(%rax), %rax
 jmp .UNIQUE4735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4735: 
	testq	%rax, %rax
 jmp .UNIQUE4736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4736: 
	je	.L444
 jmp .UNIQUE4737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4737: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4738: 
	movq	8(%rax), %rax
 jmp .UNIQUE4739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4739: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE4740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4740: 
	movq	8(%rdx), %rdx
 jmp .UNIQUE4741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4741: 
	movq	(%rdx), %rdx
 jmp .UNIQUE4742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4742: 
	movq	%rdx, (%rax)
 jmp .UNIQUE4743
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4743: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4744
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4744: 
	movq	8(%rax), %rax
 jmp .UNIQUE4745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4745: 
	movq	(%rax), %rax
 jmp .UNIQUE4746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4746: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE4747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4747: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4748: 
	movq	%rax, %rdi
 jmp .UNIQUE4749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4749: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE4750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4750: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE4751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4751: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4752: 
	movq	8(%rax), %rax
 jmp .UNIQUE4753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4753: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE4754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4754: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE4755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4755: 
	cmpq	$0, -32(%rbp)
 jmp .UNIQUE4756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4756: 
	je	.L445
 jmp .UNIQUE4757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4757: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE4758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4758: 
	movq	8(%rax), %rax
 jmp .UNIQUE4759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4759: 
	movq	8(%rax), %rcx
 jmp .UNIQUE4760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4760: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE4761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4761: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4762: 
	movq	%rcx, %rsi
 jmp .UNIQUE4763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4763: 
	movq	%rax, %rdi
 jmp .UNIQUE4764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4764: 
	call	insert_data_into_stack_mem
.L445:
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
	movq	-72(%rbp), %rdx
 jmp .UNIQUE4768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4768: 
	movq	8(%rdx), %rdx
 jmp .UNIQUE4769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4769: 
	movq	16(%rdx), %rdx
 jmp .UNIQUE4770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4770: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE4771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4771: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4772: 
	movq	8(%rax), %rax
 jmp .UNIQUE4773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4773: 
	movq	16(%rax), %rax
 jmp .UNIQUE4774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4774: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE4775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4775: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4776: 
	salq	$2, %rax
 jmp .UNIQUE4777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4777: 
	movq	%rax, %rdi
 jmp .UNIQUE4778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4778: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE4779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4779: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE4780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4780: 
	movq	-48(%rbp), %rax
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
	movq	-32(%rbp), %rdx
 jmp .UNIQUE4783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4783: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE4784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4784: 
	cmpq	$0, -32(%rbp)
 jmp .UNIQUE4785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4785: 
	je	.L446
 jmp .UNIQUE4786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4786: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE4787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4787: 
	movq	8(%rax), %rax
 jmp .UNIQUE4788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4788: 
	movq	24(%rax), %rcx
 jmp .UNIQUE4789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4789: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4790: 
	salq	$2, %rax
 jmp .UNIQUE4791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4791: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE4792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4792: 
	movq	%rcx, %rsi
 jmp .UNIQUE4793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4793: 
	movq	%rax, %rdi
 jmp .UNIQUE4794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4794: 
	call	insert_data_into_stack_mem
.L446:
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
	movq	-72(%rbp), %rdx
 jmp .UNIQUE4798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4798: 
	movq	8(%rdx), %rdx
 jmp .UNIQUE4799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4799: 
	movq	32(%rdx), %rdx
 jmp .UNIQUE4800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4800: 
	movq	%rdx, 32(%rax)
 jmp .UNIQUE4801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4801: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4802: 
	movq	8(%rax), %rax
 jmp .UNIQUE4803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4803: 
	movq	32(%rax), %rax
 jmp .UNIQUE4804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4804: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE4805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4805: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4806: 
	salq	$3, %rax
 jmp .UNIQUE4807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4807: 
	movq	%rax, %rdi
 jmp .UNIQUE4808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4808: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE4809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4809: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE4810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4810: 
	movq	-48(%rbp), %rax
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
	movq	-32(%rbp), %rdx
 jmp .UNIQUE4813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4813: 
	movq	%rdx, 40(%rax)
 jmp .UNIQUE4814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4814: 
	cmpq	$0, -32(%rbp)
 jmp .UNIQUE4815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4815: 
	je	.L447
 jmp .UNIQUE4816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4816: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE4817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4817: 
	movq	8(%rax), %rax
 jmp .UNIQUE4818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4818: 
	movq	40(%rax), %rcx
 jmp .UNIQUE4819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4819: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4820: 
	salq	$3, %rax
 jmp .UNIQUE4821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4821: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE4822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4822: 
	movq	%rcx, %rsi
 jmp .UNIQUE4823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4823: 
	movq	%rax, %rdi
 jmp .UNIQUE4824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4824: 
	call	insert_data_into_stack_mem
.L447:
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
	movq	-72(%rbp), %rdx
 jmp .UNIQUE4828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4828: 
	movq	8(%rdx), %rdx
 jmp .UNIQUE4829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4829: 
	movq	48(%rdx), %rdx
 jmp .UNIQUE4830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4830: 
	movq	%rdx, 48(%rax)
 jmp .UNIQUE4831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4831: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4832: 
	movq	8(%rax), %rax
 jmp .UNIQUE4833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4833: 
	movq	48(%rax), %rax
 jmp .UNIQUE4834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4834: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE4835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4835: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4836: 
	salq	$2, %rax
 jmp .UNIQUE4837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4837: 
	movq	%rax, %rdi
 jmp .UNIQUE4838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4838: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE4839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4839: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE4840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4840: 
	movq	-48(%rbp), %rax
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
	movq	-32(%rbp), %rdx
 jmp .UNIQUE4843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4843: 
	movq	%rdx, 56(%rax)
 jmp .UNIQUE4844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4844: 
	cmpq	$0, -32(%rbp)
 jmp .UNIQUE4845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4845: 
	je	.L448
 jmp .UNIQUE4846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4846: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE4847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4847: 
	movq	8(%rax), %rax
 jmp .UNIQUE4848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4848: 
	movq	56(%rax), %rcx
 jmp .UNIQUE4849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4849: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4850: 
	salq	$2, %rax
 jmp .UNIQUE4851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4851: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE4852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4852: 
	movq	%rcx, %rsi
 jmp .UNIQUE4853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4853: 
	movq	%rax, %rdi
 jmp .UNIQUE4854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4854: 
	call	insert_data_into_stack_mem
.L448:
 jmp .UNIQUE4855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4855: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4856: 
	movq	8(%rax), %rax
 jmp .UNIQUE4857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4857: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE4858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4858: 
	movq	8(%rdx), %rdx
 jmp .UNIQUE4859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4859: 
	movq	64(%rdx), %rdx
 jmp .UNIQUE4860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4860: 
	movq	%rdx, 64(%rax)
 jmp .UNIQUE4861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4861: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4862: 
	movq	8(%rax), %rax
 jmp .UNIQUE4863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4863: 
	movq	64(%rax), %rax
 jmp .UNIQUE4864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4864: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE4865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4865: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4866: 
	salq	$3, %rax
 jmp .UNIQUE4867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4867: 
	movq	%rax, %rdi
 jmp .UNIQUE4868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4868: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE4869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4869: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE4870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4870: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4871: 
	movq	8(%rax), %rax
 jmp .UNIQUE4872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4872: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE4873
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4873: 
	movq	%rdx, 72(%rax)
 jmp .UNIQUE4874
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4874: 
	cmpq	$0, -32(%rbp)
 jmp .UNIQUE4875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4875: 
	je	.L449
 jmp .UNIQUE4876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4876: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE4877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4877: 
	movq	8(%rax), %rax
 jmp .UNIQUE4878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4878: 
	movq	72(%rax), %rcx
 jmp .UNIQUE4879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4879: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4880: 
	salq	$3, %rax
 jmp .UNIQUE4881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4881: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE4882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4882: 
	movq	%rcx, %rsi
 jmp .UNIQUE4883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4883: 
	movq	%rax, %rdi
 jmp .UNIQUE4884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4884: 
	call	insert_data_into_stack_mem
.L449:
 jmp .UNIQUE4885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4885: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4886: 
	movq	8(%rax), %rax
 jmp .UNIQUE4887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4887: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE4888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4888: 
	movq	8(%rdx), %rdx
 jmp .UNIQUE4889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4889: 
	movq	80(%rdx), %rdx
 jmp .UNIQUE4890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4890: 
	movq	%rdx, 80(%rax)
 jmp .UNIQUE4891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4891: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4892: 
	movq	8(%rax), %rax
 jmp .UNIQUE4893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4893: 
	movq	80(%rax), %rax
 jmp .UNIQUE4894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4894: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE4895
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4895: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4896
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4896: 
	salq	$3, %rax
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
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE4899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4899: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE4900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4900: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4901: 
	movq	8(%rax), %rax
 jmp .UNIQUE4902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4902: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE4903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4903: 
	movq	%rdx, 96(%rax)
 jmp .UNIQUE4904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4904: 
	cmpq	$0, -32(%rbp)
 jmp .UNIQUE4905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4905: 
	je	.L450
 jmp .UNIQUE4906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4906: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE4907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4907: 
	movq	8(%rax), %rax
 jmp .UNIQUE4908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4908: 
	movq	96(%rax), %rcx
 jmp .UNIQUE4909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4909: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4910: 
	salq	$3, %rax
 jmp .UNIQUE4911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4911: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE4912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4912: 
	movq	%rcx, %rsi
 jmp .UNIQUE4913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4913: 
	movq	%rax, %rdi
 jmp .UNIQUE4914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4914: 
	call	insert_data_into_stack_mem
.L450:
 jmp .UNIQUE4915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4915: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4916: 
	movq	8(%rax), %rbx
 jmp .UNIQUE4917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4917: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4918: 
	salq	$3, %rax
 jmp .UNIQUE4919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4919: 
	movl	$926, %edx
 jmp .UNIQUE4920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4920: 
	movl	$__func__.4485, %esi
 jmp .UNIQUE4921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4921: 
	movq	%rax, %rdi
 jmp .UNIQUE4922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4922: 
	call	error_checking_malloc
 jmp .UNIQUE4923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4923: 
	movq	%rax, 88(%rbx)
 jmp .UNIQUE4924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4924: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE4925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4925: 
	jmp	.L451
.L452:
 jmp .UNIQUE4926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4926: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4927: 
	movq	8(%rax), %rax
 jmp .UNIQUE4928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4928: 
	movq	88(%rax), %rax
 jmp .UNIQUE4929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4929: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE4930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4930: 
	salq	$3, %rdx
 jmp .UNIQUE4931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4931: 
	addq	%rax, %rdx
 jmp .UNIQUE4932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4932: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE4933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4933: 
	movq	8(%rax), %rax
 jmp .UNIQUE4934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4934: 
	movq	88(%rax), %rax
 jmp .UNIQUE4935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4935: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE4936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4936: 
	salq	$3, %rcx
 jmp .UNIQUE4937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4937: 
	addq	%rcx, %rax
 jmp .UNIQUE4938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4938: 
	movq	(%rax), %rax
 jmp .UNIQUE4939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4939: 
	movq	%rax, (%rdx)
 jmp .UNIQUE4940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4940: 
	addq	$1, -56(%rbp)
.L451:
 jmp .UNIQUE4941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4941: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE4942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4942: 
	cmpq	-40(%rbp), %rax
 jmp .UNIQUE4943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4943: 
	jl	.L452
 jmp .UNIQUE4944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4944: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4945: 
	movq	8(%rax), %rax
 jmp .UNIQUE4946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4946: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE4947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4947: 
	movq	8(%rdx), %rdx
 jmp .UNIQUE4948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4948: 
	movq	104(%rdx), %rdx
 jmp .UNIQUE4949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4949: 
	movq	%rdx, 104(%rax)
 jmp .UNIQUE4950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4950: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4951: 
	movq	8(%rax), %rax
 jmp .UNIQUE4952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4952: 
	movq	104(%rax), %rax
 jmp .UNIQUE4953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4953: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE4954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4954: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4955: 
	movq	8(%rax), %rbx
 jmp .UNIQUE4956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4956: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4957: 
	salq	$3, %rax
 jmp .UNIQUE4958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4958: 
	movl	$934, %edx
 jmp .UNIQUE4959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4959: 
	movl	$__func__.4485, %esi
 jmp .UNIQUE4960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4960: 
	movq	%rax, %rdi
 jmp .UNIQUE4961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4961: 
	call	error_checking_malloc
 jmp .UNIQUE4962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4962: 
	movq	%rax, 112(%rbx)
 jmp .UNIQUE4963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4963: 
	movq	$0, -56(%rbp)
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
.L454:
 jmp .UNIQUE4965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4965: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4966: 
	movq	8(%rax), %rax
 jmp .UNIQUE4967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4967: 
	movq	112(%rax), %rax
 jmp .UNIQUE4968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4968: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE4969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4969: 
	salq	$3, %rdx
 jmp .UNIQUE4970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4970: 
	addq	%rax, %rdx
 jmp .UNIQUE4971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4971: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE4972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4972: 
	movq	8(%rax), %rax
 jmp .UNIQUE4973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4973: 
	movq	112(%rax), %rax
 jmp .UNIQUE4974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4974: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE4975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4975: 
	salq	$3, %rcx
 jmp .UNIQUE4976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4976: 
	addq	%rcx, %rax
 jmp .UNIQUE4977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4977: 
	movq	(%rax), %rax
 jmp .UNIQUE4978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4978: 
	movq	%rax, (%rdx)
 jmp .UNIQUE4979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4979: 
	addq	$1, -56(%rbp)
.L453:
 jmp .UNIQUE4980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4980: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE4981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4981: 
	cmpq	-40(%rbp), %rax
 jmp .UNIQUE4982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4982: 
	jl	.L454
 jmp .UNIQUE4983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4983: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4984: 
	movq	8(%rax), %rbx
 jmp .UNIQUE4985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4985: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE4986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4986: 
	salq	$3, %rax
 jmp .UNIQUE4987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4987: 
	movl	$937, %edx
 jmp .UNIQUE4988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4988: 
	movl	$__func__.4485, %esi
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
	call	error_checking_malloc
 jmp .UNIQUE4991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4991: 
	movq	%rax, 120(%rbx)
 jmp .UNIQUE4992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4992: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE4993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4993: 
	jmp	.L455
.L457:
 jmp .UNIQUE4994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4994: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE4995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4995: 
	movq	8(%rax), %rax
 jmp .UNIQUE4996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4996: 
	movq	112(%rax), %rax
 jmp .UNIQUE4997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4997: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE4998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4998: 
	salq	$3, %rdx
 jmp .UNIQUE4999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE4999: 
	addq	%rdx, %rax
 jmp .UNIQUE5000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5000: 
	movq	(%rax), %rax
 jmp .UNIQUE5001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5001: 
	movq	%rax, %rdi
 jmp .UNIQUE5002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5002: 
	call	allocate_mem_into_secure_stack
 jmp .UNIQUE5003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5003: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5004: 
	cmpq	$0, -32(%rbp)
 jmp .UNIQUE5005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5005: 
	je	.L456
 jmp .UNIQUE5006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5006: 
	movq	-72(%rbp), %rax
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
	movq	120(%rax), %rax
 jmp .UNIQUE5009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5009: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE5010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5010: 
	salq	$3, %rdx
 jmp .UNIQUE5011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5011: 
	addq	%rdx, %rax
 jmp .UNIQUE5012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5012: 
	movq	(%rax), %rcx
 jmp .UNIQUE5013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5013: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE5014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5014: 
	movq	8(%rax), %rax
 jmp .UNIQUE5015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5015: 
	movq	112(%rax), %rax
 jmp .UNIQUE5016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5016: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE5017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5017: 
	salq	$3, %rdx
 jmp .UNIQUE5018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5018: 
	addq	%rdx, %rax
 jmp .UNIQUE5019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5019: 
	movq	(%rax), %rax
 jmp .UNIQUE5020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5020: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE5021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5021: 
	movq	%rcx, %rsi
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
	call	insert_data_into_stack_mem
.L456:
 jmp .UNIQUE5024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5024: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE5025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5025: 
	movq	8(%rax), %rax
 jmp .UNIQUE5026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5026: 
	movq	120(%rax), %rax
 jmp .UNIQUE5027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5027: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE5028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5028: 
	salq	$3, %rdx
 jmp .UNIQUE5029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5029: 
	addq	%rax, %rdx
 jmp .UNIQUE5030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5030: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5031: 
	movq	%rax, (%rdx)
 jmp .UNIQUE5032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5032: 
	addq	$1, -56(%rbp)
.L455:
 jmp .UNIQUE5033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5033: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE5034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5034: 
	cmpq	-40(%rbp), %rax
 jmp .UNIQUE5035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5035: 
	jl	.L457
.L444:
 jmp .UNIQUE5036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5036: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE5037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5037: 
	movq	%rax, -24(%rbp)
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
	addq	$72, %rsp
 jmp .UNIQUE5040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5040: 
	popq	%rbx
 jmp .UNIQUE5041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5041: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5042: 
	ret
	.cfi_endproc
.LFE78:
	.size	put_fun_params_into_secure_stack, .-put_fun_params_into_secure_stack
	.globl	free_fun_params
	.type	free_fun_params, @function
free_fun_params:
.LFB79:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5043: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5044: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5045: 
	subq	$32, %rsp
 jmp .UNIQUE5046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5046: 
	movq	%rdi, -24(%rbp)
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
	movq	8(%rax), %rax
 jmp .UNIQUE5049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5049: 
	movq	8(%rax), %rax
 jmp .UNIQUE5050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5050: 
	movq	%rax, %rdi
 jmp .UNIQUE5051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5051: 
	call	free
 jmp .UNIQUE5052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5052: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5053: 
	movq	8(%rax), %rax
 jmp .UNIQUE5054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5054: 
	movq	24(%rax), %rax
 jmp .UNIQUE5055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5055: 
	movq	%rax, %rdi
 jmp .UNIQUE5056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5056: 
	call	free
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
	movq	8(%rax), %rax
 jmp .UNIQUE5059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5059: 
	movq	40(%rax), %rax
 jmp .UNIQUE5060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5060: 
	movq	%rax, %rdi
 jmp .UNIQUE5061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5061: 
	call	free
 jmp .UNIQUE5062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5062: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5063: 
	movq	8(%rax), %rax
 jmp .UNIQUE5064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5064: 
	movq	56(%rax), %rax
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
	call	free
 jmp .UNIQUE5067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5067: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5068: 
	movq	8(%rax), %rax
 jmp .UNIQUE5069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5069: 
	movq	72(%rax), %rax
 jmp .UNIQUE5070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5070: 
	movq	%rax, %rdi
 jmp .UNIQUE5071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5071: 
	call	free
 jmp .UNIQUE5072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5072: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5073: 
	movq	8(%rax), %rax
 jmp .UNIQUE5074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5074: 
	movq	96(%rax), %rax
 jmp .UNIQUE5075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5075: 
	movq	%rax, %rdi
 jmp .UNIQUE5076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5076: 
	call	free
 jmp .UNIQUE5077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5077: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5078: 
	movq	8(%rax), %rax
 jmp .UNIQUE5079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5079: 
	movq	88(%rax), %rax
 jmp .UNIQUE5080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5080: 
	movq	%rax, %rdi
 jmp .UNIQUE5081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5081: 
	call	free
 jmp .UNIQUE5082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5082: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5083: 
	movq	8(%rax), %rax
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
	movq	%rax, %rdi
 jmp .UNIQUE5086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5086: 
	call	free
 jmp .UNIQUE5087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5087: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE5088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5088: 
	jmp	.L460
.L461:
 jmp .UNIQUE5089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5089: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5090: 
	movq	8(%rax), %rax
 jmp .UNIQUE5091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5091: 
	movq	120(%rax), %rax
 jmp .UNIQUE5092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5092: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5093: 
	salq	$3, %rdx
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
	movq	%rax, %rdi
 jmp .UNIQUE5097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5097: 
	call	free
 jmp .UNIQUE5098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5098: 
	addq	$1, -8(%rbp)
.L460:
 jmp .UNIQUE5099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5099: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5100: 
	movq	8(%rax), %rax
 jmp .UNIQUE5101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5101: 
	movq	104(%rax), %rax
 jmp .UNIQUE5102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5102: 
	cmpq	-8(%rbp), %rax
 jmp .UNIQUE5103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5103: 
	jg	.L461
 jmp .UNIQUE5104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5104: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5105: 
	movq	8(%rax), %rax
 jmp .UNIQUE5106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5106: 
	movq	96(%rax), %rax
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
	call	free
 jmp .UNIQUE5109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5109: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5110: 
	movq	8(%rax), %rax
 jmp .UNIQUE5111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5111: 
	movq	%rax, %rdi
 jmp .UNIQUE5112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5112: 
	call	free
 jmp .UNIQUE5113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5113: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5114: 
	movq	%rax, %rdi
 jmp .UNIQUE5115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5115: 
	call	free
 jmp .UNIQUE5116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5116: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5117: 
	ret
	.cfi_endproc
.LFE79:
	.size	free_fun_params, .-free_fun_params
	.globl	put_fun_params_into_secure_stack_and_free
	.type	put_fun_params_into_secure_stack_and_free, @function
put_fun_params_into_secure_stack_and_free:
.LFB80:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5118: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5119: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5120: 
	subq	$32, %rsp
 jmp .UNIQUE5121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5121: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5122: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5123: 
	movq	%rax, %rdi
 jmp .UNIQUE5124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5124: 
	call	put_fun_params_into_secure_stack
 jmp .UNIQUE5125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5125: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE5126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5126: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5127: 
	movq	%rax, %rdi
 jmp .UNIQUE5128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5128: 
	call	free_fun_params
 jmp .UNIQUE5129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5129: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5130: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5131: 
	ret
	.cfi_endproc
.LFE80:
	.size	put_fun_params_into_secure_stack_and_free, .-put_fun_params_into_secure_stack_and_free
	.globl	get_stack_char
	.type	get_stack_char, @function
get_stack_char:
.LFB81:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5132: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5133: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5134: 
	subq	$24, %rsp
 jmp .UNIQUE5135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5135: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5136: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5137: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE5138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5138: 
	movl	$0, %r8d
 jmp .UNIQUE5139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5139: 
	movl	$0, %ecx
 jmp .UNIQUE5140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5140: 
	movl	$1, %esi
 jmp .UNIQUE5141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5141: 
	movq	%rax, %rdi
 jmp .UNIQUE5142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5142: 
	call	get_secure_stack_data
 jmp .UNIQUE5143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5143: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE5144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5144: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5145: 
	ret
	.cfi_endproc
.LFE81:
	.size	get_stack_char, .-get_stack_char
	.globl	get_stack_int
	.type	get_stack_int, @function
get_stack_int:
.LFB82:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5146: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5147: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5148: 
	subq	$24, %rsp
 jmp .UNIQUE5149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5149: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5150: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5151: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5152: 
	movl	$0, %r8d
 jmp .UNIQUE5153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5153: 
	movl	$0, %ecx
 jmp .UNIQUE5154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5154: 
	movl	$4, %esi
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
	call	get_secure_stack_data
 jmp .UNIQUE5157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5157: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE5158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5158: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5159: 
	ret
	.cfi_endproc
.LFE82:
	.size	get_stack_int, .-get_stack_int
	.globl	get_stack_long_int
	.type	get_stack_long_int, @function
get_stack_long_int:
.LFB83:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5160: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5161: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5162: 
	subq	$24, %rsp
 jmp .UNIQUE5163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5163: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5164: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5165: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5166: 
	movl	$0, %r8d
 jmp .UNIQUE5167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5167: 
	movl	$0, %ecx
 jmp .UNIQUE5168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5168: 
	movl	$8, %esi
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
	call	get_secure_stack_data
 jmp .UNIQUE5171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5171: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5172: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5173: 
	ret
	.cfi_endproc
.LFE83:
	.size	get_stack_long_int, .-get_stack_long_int
	.globl	get_stack_pointer
	.type	get_stack_pointer, @function
get_stack_pointer:
.LFB84:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5174: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5175: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5176: 
	subq	$24, %rsp
 jmp .UNIQUE5177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5177: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5178
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5178: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5179
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5179: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5180: 
	movl	$0, %r8d
 jmp .UNIQUE5181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5181: 
	movl	$0, %ecx
 jmp .UNIQUE5182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5182: 
	movl	$8, %esi
 jmp .UNIQUE5183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5183: 
	movq	%rax, %rdi
 jmp .UNIQUE5184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5184: 
	call	get_secure_stack_data
 jmp .UNIQUE5185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5185: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5186: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5187: 
	ret
	.cfi_endproc
.LFE84:
	.size	get_stack_pointer, .-get_stack_pointer
	.globl	get_stack_float
	.type	get_stack_float, @function
get_stack_float:
.LFB85:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5188
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5188: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5189
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5189: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5190: 
	subq	$32, %rsp
 jmp .UNIQUE5191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5191: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5192: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5193: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5194: 
	movl	$0, %r8d
 jmp .UNIQUE5195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5195: 
	movl	$0, %ecx
 jmp .UNIQUE5196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5196: 
	movl	$4, %esi
 jmp .UNIQUE5197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5197: 
	movq	%rax, %rdi
 jmp .UNIQUE5198
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5198: 
	call	get_secure_stack_data
 jmp .UNIQUE5199
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5199: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE5200
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5200: 
	movl	%eax, -28(%rbp)
 jmp .UNIQUE5201
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5201: 
	movss	-28(%rbp), %xmm0
 jmp .UNIQUE5202
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5202: 
	leave
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
.LFE85:
	.size	get_stack_float, .-get_stack_float
	.globl	get_stack_double
	.type	get_stack_double, @function
get_stack_double:
.LFB86:
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
	subq	$32, %rsp
 jmp .UNIQUE5207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5207: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5208: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5209
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5209: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5210
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5210: 
	movl	$0, %r8d
 jmp .UNIQUE5211
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5211: 
	movl	$0, %ecx
 jmp .UNIQUE5212
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5212: 
	movl	$8, %esi
 jmp .UNIQUE5213
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5213: 
	movq	%rax, %rdi
 jmp .UNIQUE5214
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5214: 
	call	get_secure_stack_data
 jmp .UNIQUE5215
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5215: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5216
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5216: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE5217
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5217: 
	movsd	-32(%rbp), %xmm0
 jmp .UNIQUE5218
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5218: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5219
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5219: 
	ret
	.cfi_endproc
.LFE86:
	.size	get_stack_double, .-get_stack_double
	.globl	get_stack_array_element
	.type	get_stack_array_element, @function
get_stack_array_element:
.LFB87:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5220
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5220: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5221
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5221: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5222
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5222: 
	subq	$32, %rsp
 jmp .UNIQUE5223
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5223: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5224
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5224: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5225
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5225: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5226
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5226: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE5227
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5227: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE5228
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5228: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE5229
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5229: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE5230
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5230: 
	movq	-32(%rbp), %rax
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
	call	get_secure_stack_data
 jmp .UNIQUE5235
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5235: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5236
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5236: 
	ret
	.cfi_endproc
.LFE87:
	.size	get_stack_array_element, .-get_stack_array_element
	.globl	get_stack_char_array_element
	.type	get_stack_char_array_element, @function
get_stack_char_array_element:
.LFB88:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5237
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5237: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5238
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5238: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5239
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5239: 
	subq	$32, %rsp
 jmp .UNIQUE5240
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5240: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5241
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5241: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5242
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5242: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5243
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5243: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5244
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5244: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE5245
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5245: 
	movq	%rcx, %r8
 jmp .UNIQUE5246
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5246: 
	movl	$1, %ecx
 jmp .UNIQUE5247
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5247: 
	movl	$1, %esi
 jmp .UNIQUE5248
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5248: 
	movq	%rax, %rdi
 jmp .UNIQUE5249
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5249: 
	call	get_secure_stack_data
 jmp .UNIQUE5250
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5250: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE5251
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5251: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5252
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5252: 
	ret
	.cfi_endproc
.LFE88:
	.size	get_stack_char_array_element, .-get_stack_char_array_element
	.globl	get_stack_int_array_element
	.type	get_stack_int_array_element, @function
get_stack_int_array_element:
.LFB89:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5253
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5253: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5254
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5254: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5255
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5255: 
	subq	$32, %rsp
 jmp .UNIQUE5256
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5256: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5257
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5257: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5258
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5258: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5259
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5259: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5260
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5260: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5261
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5261: 
	movq	%rcx, %r8
 jmp .UNIQUE5262
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5262: 
	movl	$1, %ecx
 jmp .UNIQUE5263
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5263: 
	movl	$4, %esi
 jmp .UNIQUE5264
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5264: 
	movq	%rax, %rdi
 jmp .UNIQUE5265
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5265: 
	call	get_secure_stack_data
 jmp .UNIQUE5266
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5266: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE5267
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5267: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5268
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5268: 
	ret
	.cfi_endproc
.LFE89:
	.size	get_stack_int_array_element, .-get_stack_int_array_element
	.globl	get_stack_long_int_array_element
	.type	get_stack_long_int_array_element, @function
get_stack_long_int_array_element:
.LFB90:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5269
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5269: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5270
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5270: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5271
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5271: 
	subq	$32, %rsp
 jmp .UNIQUE5272
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5272: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5273
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5273: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5274
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5274: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5275
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5275: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5276
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5276: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5277
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5277: 
	movq	%rcx, %r8
 jmp .UNIQUE5278
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5278: 
	movl	$1, %ecx
 jmp .UNIQUE5279
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5279: 
	movl	$8, %esi
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
	call	get_secure_stack_data
 jmp .UNIQUE5282
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5282: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5283
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5283: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5284
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5284: 
	ret
	.cfi_endproc
.LFE90:
	.size	get_stack_long_int_array_element, .-get_stack_long_int_array_element
	.globl	get_stack_pointer_array_element
	.type	get_stack_pointer_array_element, @function
get_stack_pointer_array_element:
.LFB91:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5285
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5285: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5286
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5286: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5287
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5287: 
	subq	$32, %rsp
 jmp .UNIQUE5288
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5288: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5289
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5289: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5290
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5290: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5291
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5291: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5292
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5292: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5293
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5293: 
	movq	%rcx, %r8
 jmp .UNIQUE5294
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5294: 
	movl	$1, %ecx
 jmp .UNIQUE5295
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5295: 
	movl	$8, %esi
 jmp .UNIQUE5296
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5296: 
	movq	%rax, %rdi
 jmp .UNIQUE5297
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5297: 
	call	get_secure_stack_data
 jmp .UNIQUE5298
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5298: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5299
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5299: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5300
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5300: 
	ret
	.cfi_endproc
.LFE91:
	.size	get_stack_pointer_array_element, .-get_stack_pointer_array_element
	.globl	get_stack_float_array_element
	.type	get_stack_float_array_element, @function
get_stack_float_array_element:
.LFB92:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5301
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5301: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5302
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5302: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5303
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5303: 
	subq	$40, %rsp
 jmp .UNIQUE5304
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5304: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5305
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5305: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5306
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5306: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5307
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5307: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5308
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5308: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5309
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5309: 
	movq	%rcx, %r8
 jmp .UNIQUE5310
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5310: 
	movl	$1, %ecx
 jmp .UNIQUE5311
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5311: 
	movl	$4, %esi
 jmp .UNIQUE5312
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5312: 
	movq	%rax, %rdi
 jmp .UNIQUE5313
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5313: 
	call	get_secure_stack_data
 jmp .UNIQUE5314
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5314: 
	movl	-16(%rbp), %eax
 jmp .UNIQUE5315
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5315: 
	movl	%eax, -36(%rbp)
 jmp .UNIQUE5316
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5316: 
	movss	-36(%rbp), %xmm0
 jmp .UNIQUE5317
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5317: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5318
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5318: 
	ret
	.cfi_endproc
.LFE92:
	.size	get_stack_float_array_element, .-get_stack_float_array_element
	.globl	get_stack_double_array_element
	.type	get_stack_double_array_element, @function
get_stack_double_array_element:
.LFB93:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5319
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5319: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5320
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5320: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5321
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5321: 
	subq	$40, %rsp
 jmp .UNIQUE5322
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5322: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5323
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5323: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5324
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5324: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5325
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5325: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5326
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5326: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5327
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5327: 
	movq	%rcx, %r8
 jmp .UNIQUE5328
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5328: 
	movl	$1, %ecx
 jmp .UNIQUE5329
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5329: 
	movl	$8, %esi
 jmp .UNIQUE5330
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5330: 
	movq	%rax, %rdi
 jmp .UNIQUE5331
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5331: 
	call	get_secure_stack_data
 jmp .UNIQUE5332
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5332: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5333
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5333: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE5334
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5334: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE5335
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5335: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5336
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5336: 
	ret
	.cfi_endproc
.LFE93:
	.size	get_stack_double_array_element, .-get_stack_double_array_element
	.globl	get_arbitrary_block_in_stack
	.type	get_arbitrary_block_in_stack, @function
get_arbitrary_block_in_stack:
.LFB94:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5337
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5337: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5338
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5338: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5339
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5339: 
	subq	$24, %rsp
 jmp .UNIQUE5340
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5340: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5341
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5341: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5342
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5342: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5343
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5343: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE5344
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5344: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE5345
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5345: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5346
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5346: 
	movl	$0, %r8d
 jmp .UNIQUE5347
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5347: 
	movl	$0, %ecx
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
	call	get_secure_stack_data
 jmp .UNIQUE5350
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5350: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5351
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5351: 
	ret
	.cfi_endproc
.LFE94:
	.size	get_arbitrary_block_in_stack, .-get_arbitrary_block_in_stack
	.globl	get_arbitrary_block_in_stack_with_offset
	.type	get_arbitrary_block_in_stack_with_offset, @function
get_arbitrary_block_in_stack_with_offset:
.LFB95:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5352
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5352: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5353
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5353: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5354
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5354: 
	subq	$32, %rsp
 jmp .UNIQUE5355
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5355: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5356
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5356: 
	movq	%rsi, -16(%rbp)
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
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE5359
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5359: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE5360
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5360: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE5361
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5361: 
	movq	-8(%rbp), %rsi
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
	movq	%rcx, %r8
 jmp .UNIQUE5364
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5364: 
	movl	$2, %ecx
 jmp .UNIQUE5365
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5365: 
	movq	%rax, %rdi
 jmp .UNIQUE5366
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5366: 
	call	get_secure_stack_data
 jmp .UNIQUE5367
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5367: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5368
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5368: 
	ret
	.cfi_endproc
.LFE95:
	.size	get_arbitrary_block_in_stack_with_offset, .-get_arbitrary_block_in_stack_with_offset
	.globl	set_stack_char
	.type	set_stack_char, @function
set_stack_char:
.LFB96:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5369
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5369: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5370
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5370: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5371
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5371: 
	subq	$16, %rsp
 jmp .UNIQUE5372
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5372: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5373
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5373: 
	movl	%esi, %eax
 jmp .UNIQUE5374
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5374: 
	movb	%al, -12(%rbp)
 jmp .UNIQUE5375
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5375: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5376
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5376: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE5377
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5377: 
	movq	%rax, %rsi
 jmp .UNIQUE5378
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5378: 
	movl	$1, %edi
 jmp .UNIQUE5379
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5379: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE5380
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5380: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5381
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5381: 
	ret
	.cfi_endproc
.LFE96:
	.size	set_stack_char, .-set_stack_char
	.globl	set_stack_int
	.type	set_stack_int, @function
set_stack_int:
.LFB97:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5382
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5382: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5383
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5383: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5384
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5384: 
	subq	$16, %rsp
 jmp .UNIQUE5385
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5385: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5386
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5386: 
	movl	%esi, -12(%rbp)
 jmp .UNIQUE5387
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5387: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5388
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5388: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE5389
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5389: 
	movq	%rax, %rsi
 jmp .UNIQUE5390
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5390: 
	movl	$4, %edi
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
 jmp .UNIQUE5392
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5392: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5393
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5393: 
	ret
	.cfi_endproc
.LFE97:
	.size	set_stack_int, .-set_stack_int
	.globl	set_stack_long_int
	.type	set_stack_long_int, @function
set_stack_long_int:
.LFB98:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5394
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5394: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5395
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5395: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5396
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5396: 
	subq	$16, %rsp
 jmp .UNIQUE5397
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5397: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5398
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5398: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5399
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5399: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5400
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5400: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5401
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5401: 
	movq	%rax, %rsi
 jmp .UNIQUE5402
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5402: 
	movl	$8, %edi
 jmp .UNIQUE5403
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5403: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE5404
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5404: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5405
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5405: 
	ret
	.cfi_endproc
.LFE98:
	.size	set_stack_long_int, .-set_stack_long_int
	.globl	set_stack_pointer
	.type	set_stack_pointer, @function
set_stack_pointer:
.LFB99:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5406
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5406: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5407
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5407: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5408
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5408: 
	subq	$16, %rsp
 jmp .UNIQUE5409
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5409: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5410
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5410: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5411
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5411: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5412
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5412: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5413
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5413: 
	movq	%rax, %rsi
 jmp .UNIQUE5414
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5414: 
	movl	$8, %edi
 jmp .UNIQUE5415
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5415: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE5416
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5416: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5417
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5417: 
	ret
	.cfi_endproc
.LFE99:
	.size	set_stack_pointer, .-set_stack_pointer
	.globl	set_stack_float
	.type	set_stack_float, @function
set_stack_float:
.LFB100:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5418
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5418: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5419
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5419: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5420
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5420: 
	subq	$16, %rsp
 jmp .UNIQUE5421
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5421: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5422
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5422: 
	movss	%xmm0, -12(%rbp)
 jmp .UNIQUE5423
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5423: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5424
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5424: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE5425
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5425: 
	movq	%rax, %rsi
 jmp .UNIQUE5426
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5426: 
	movl	$4, %edi
 jmp .UNIQUE5427
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5427: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE5428
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5428: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5429
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5429: 
	ret
	.cfi_endproc
.LFE100:
	.size	set_stack_float, .-set_stack_float
	.globl	set_stack_double
	.type	set_stack_double, @function
set_stack_double:
.LFB101:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5430
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5430: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5431
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5431: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5432
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5432: 
	subq	$16, %rsp
 jmp .UNIQUE5433
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5433: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5434
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5434: 
	movsd	%xmm0, -16(%rbp)
 jmp .UNIQUE5435
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5435: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE5436
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5436: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE5437
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5437: 
	movq	%rax, %rsi
 jmp .UNIQUE5438
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5438: 
	movl	$8, %edi
 jmp .UNIQUE5439
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5439: 
	call	insert_data_into_stack_mem
 jmp .UNIQUE5440
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5440: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5441
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5441: 
	ret
	.cfi_endproc
.LFE101:
	.size	set_stack_double, .-set_stack_double
	.globl	set_stack_array_element
	.type	set_stack_array_element, @function
set_stack_array_element:
.LFB102:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5442
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5442: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5443
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5443: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5444
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5444: 
	subq	$32, %rsp
 jmp .UNIQUE5445
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5445: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5446
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5446: 
	movq	%rsi, -16(%rbp)
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
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE5449
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5449: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE5450
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5450: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE5451
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5451: 
	movq	-8(%rbp), %rsi
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
	movq	%rcx, %r8
 jmp .UNIQUE5454
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5454: 
	movl	$1, %ecx
 jmp .UNIQUE5455
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5455: 
	movq	%rax, %rdi
 jmp .UNIQUE5456
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5456: 
	call	set_secure_stack_data
 jmp .UNIQUE5457
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5457: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5458
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5458: 
	ret
	.cfi_endproc
.LFE102:
	.size	set_stack_array_element, .-set_stack_array_element
	.globl	set_stack_char_array_element
	.type	set_stack_char_array_element, @function
set_stack_char_array_element:
.LFB103:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5459
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5459: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5460
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5460: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5461
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5461: 
	subq	$40, %rsp
 jmp .UNIQUE5462
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5462: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5463
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5463: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5464
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5464: 
	movl	%edx, %eax
 jmp .UNIQUE5465
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5465: 
	movb	%al, -36(%rbp)
 jmp .UNIQUE5466
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5466: 
	movzbl	-36(%rbp), %eax
 jmp .UNIQUE5467
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5467: 
	movb	%al, -1(%rbp)
 jmp .UNIQUE5468
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5468: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5469
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5469: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5470
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5470: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE5471
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5471: 
	movq	%rcx, %r8
 jmp .UNIQUE5472
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5472: 
	movl	$1, %ecx
 jmp .UNIQUE5473
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5473: 
	movl	$1, %esi
 jmp .UNIQUE5474
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5474: 
	movq	%rax, %rdi
 jmp .UNIQUE5475
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5475: 
	call	set_secure_stack_data
 jmp .UNIQUE5476
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5476: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5477
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5477: 
	ret
	.cfi_endproc
.LFE103:
	.size	set_stack_char_array_element, .-set_stack_char_array_element
	.globl	set_stack_int_array_element
	.type	set_stack_int_array_element, @function
set_stack_int_array_element:
.LFB104:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5478
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5478: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5479
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5479: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5480
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5480: 
	subq	$40, %rsp
 jmp .UNIQUE5481
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5481: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5482
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5482: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5483
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5483: 
	movl	%edx, -36(%rbp)
 jmp .UNIQUE5484
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5484: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE5485
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5485: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE5486
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5486: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5487
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5487: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5488
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5488: 
	leaq	-4(%rbp), %rax
 jmp .UNIQUE5489
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5489: 
	movq	%rcx, %r8
 jmp .UNIQUE5490
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5490: 
	movl	$1, %ecx
 jmp .UNIQUE5491
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5491: 
	movl	$4, %esi
 jmp .UNIQUE5492
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5492: 
	movq	%rax, %rdi
 jmp .UNIQUE5493
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5493: 
	call	set_secure_stack_data
 jmp .UNIQUE5494
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5494: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5495
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5495: 
	ret
	.cfi_endproc
.LFE104:
	.size	set_stack_int_array_element, .-set_stack_int_array_element
	.globl	set_stack_long_int_array_element
	.type	set_stack_long_int_array_element, @function
set_stack_long_int_array_element:
.LFB105:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5496
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5496: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5497
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5497: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5498
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5498: 
	subq	$40, %rsp
 jmp .UNIQUE5499
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5499: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5500
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5500: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5501
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5501: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE5502
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5502: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE5503
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5503: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE5504
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5504: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5505
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5505: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5506
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5506: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE5507
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5507: 
	movq	%rcx, %r8
 jmp .UNIQUE5508
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5508: 
	movl	$1, %ecx
 jmp .UNIQUE5509
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5509: 
	movl	$8, %esi
 jmp .UNIQUE5510
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5510: 
	movq	%rax, %rdi
 jmp .UNIQUE5511
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5511: 
	call	set_secure_stack_data
 jmp .UNIQUE5512
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5512: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5513
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5513: 
	ret
	.cfi_endproc
.LFE105:
	.size	set_stack_long_int_array_element, .-set_stack_long_int_array_element
	.globl	set_stack_pointer_array_element
	.type	set_stack_pointer_array_element, @function
set_stack_pointer_array_element:
.LFB106:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5514
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5514: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5515
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5515: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5516
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5516: 
	subq	$40, %rsp
 jmp .UNIQUE5517
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5517: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5518
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5518: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5519
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5519: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE5520
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5520: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE5521
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5521: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE5522
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5522: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5523
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5523: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5524
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5524: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE5525
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5525: 
	movq	%rcx, %r8
 jmp .UNIQUE5526
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5526: 
	movl	$1, %ecx
 jmp .UNIQUE5527
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5527: 
	movl	$8, %esi
 jmp .UNIQUE5528
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5528: 
	movq	%rax, %rdi
 jmp .UNIQUE5529
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5529: 
	call	set_secure_stack_data
 jmp .UNIQUE5530
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5530: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5531
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5531: 
	ret
	.cfi_endproc
.LFE106:
	.size	set_stack_pointer_array_element, .-set_stack_pointer_array_element
	.globl	set_stack_float_array_element
	.type	set_stack_float_array_element, @function
set_stack_float_array_element:
.LFB107:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5532
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5532: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5533
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5533: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5534
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5534: 
	subq	$40, %rsp
 jmp .UNIQUE5535
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5535: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5536
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5536: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5537
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5537: 
	movss	%xmm0, -36(%rbp)
 jmp .UNIQUE5538
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5538: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE5539
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5539: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE5540
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5540: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5541
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5541: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5542
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5542: 
	leaq	-4(%rbp), %rax
 jmp .UNIQUE5543
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5543: 
	movq	%rcx, %r8
 jmp .UNIQUE5544
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5544: 
	movl	$1, %ecx
 jmp .UNIQUE5545
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5545: 
	movl	$4, %esi
 jmp .UNIQUE5546
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5546: 
	movq	%rax, %rdi
 jmp .UNIQUE5547
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5547: 
	call	set_secure_stack_data
 jmp .UNIQUE5548
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5548: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5549
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5549: 
	ret
	.cfi_endproc
.LFE107:
	.size	set_stack_float_array_element, .-set_stack_float_array_element
	.globl	set_stack_double_array_element
	.type	set_stack_double_array_element, @function
set_stack_double_array_element:
.LFB108:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5550
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5550: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5551
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5551: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5552
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5552: 
	subq	$40, %rsp
 jmp .UNIQUE5553
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5553: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE5554
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5554: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE5555
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5555: 
	movsd	%xmm0, -40(%rbp)
 jmp .UNIQUE5556
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5556: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE5557
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5557: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE5558
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5558: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE5559
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5559: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE5560
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5560: 
	leaq	-8(%rbp), %rax
 jmp .UNIQUE5561
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5561: 
	movq	%rcx, %r8
 jmp .UNIQUE5562
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5562: 
	movl	$1, %ecx
 jmp .UNIQUE5563
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5563: 
	movl	$8, %esi
 jmp .UNIQUE5564
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5564: 
	movq	%rax, %rdi
 jmp .UNIQUE5565
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5565: 
	call	set_secure_stack_data
 jmp .UNIQUE5566
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5566: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5567
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5567: 
	ret
	.cfi_endproc
.LFE108:
	.size	set_stack_double_array_element, .-set_stack_double_array_element
	.globl	set_arbitrary_block_in_stack
	.type	set_arbitrary_block_in_stack, @function
set_arbitrary_block_in_stack:
.LFB109:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5568
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5568: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5569
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5569: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5570
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5570: 
	subq	$24, %rsp
 jmp .UNIQUE5571
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5571: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5572
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5572: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5573
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5573: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5574
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5574: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE5575
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5575: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE5576
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5576: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5577
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5577: 
	movl	$0, %r8d
 jmp .UNIQUE5578
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5578: 
	movl	$0, %ecx
 jmp .UNIQUE5579
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5579: 
	movq	%rax, %rdi
 jmp .UNIQUE5580
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5580: 
	call	set_secure_stack_data
 jmp .UNIQUE5581
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5581: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5582
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5582: 
	ret
	.cfi_endproc
.LFE109:
	.size	set_arbitrary_block_in_stack, .-set_arbitrary_block_in_stack
	.globl	set_arbitrary_block_in_stack_with_offset
	.type	set_arbitrary_block_in_stack_with_offset, @function
set_arbitrary_block_in_stack_with_offset:
.LFB110:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5583
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5583: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5584
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5584: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5585
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5585: 
	subq	$32, %rsp
 jmp .UNIQUE5586
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5586: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE5587
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5587: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE5588
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5588: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE5589
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5589: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE5590
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5590: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE5591
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5591: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE5592
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5592: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE5593
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5593: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5594
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5594: 
	movq	%rcx, %r8
 jmp .UNIQUE5595
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5595: 
	movl	$2, %ecx
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
	call	set_secure_stack_data
 jmp .UNIQUE5598
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5598: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5599
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5599: 
	ret
	.cfi_endproc
.LFE110:
	.size	set_arbitrary_block_in_stack_with_offset, .-set_arbitrary_block_in_stack_with_offset
	.section	.rodata
.LC77:
	.string	"Allocating double array"
.LC78:
	.string	"Initializing fun params"
	.align 8
.LC81:
	.string	"Inserting fun params into secure stack"
.LC82:
	.string	"Printing chars"
.LC83:
	.string	"%c "
.LC84:
	.string	"Printing ints"
.LC85:
	.string	"Printing doubles"
.LC86:
	.string	"%lf "
.LC87:
	.string	"Changing pointer"
.LC88:
	.string	"Printing array of doubles"
.LC89:
	.string	"i=%d, %lf "
	.align 8
.LC90:
	.string	"Fetching double array using arbitrary block"
	.align 8
.LC91:
	.string	"Fetching double array elements (one by one), using arbitrary blocks"
	.text
	.globl	stack_fun_params_test
	.type	stack_fun_params_test, @function
stack_fun_params_test:
.LFB111:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5600
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5600: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5601
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5601: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5602
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5602: 
	subq	$144, %rsp
 jmp .UNIQUE5603
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5603: 
	movl	$.LC77, %edi
 jmp .UNIQUE5604
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5604: 
	call	puts
 jmp .UNIQUE5605
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5605: 
	movl	$9, %edx
 jmp .UNIQUE5606
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5606: 
	movl	$__func__.4659, %esi
 jmp .UNIQUE5607
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5607: 
	movl	$80, %edi
 jmp .UNIQUE5608
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5608: 
	call	error_checking_malloc
 jmp .UNIQUE5609
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5609: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE5610
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5610: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE5611
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5611: 
	jmp	.L507
.L508:
 jmp .UNIQUE5612
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5612: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE5613
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5613: 
	cltq
 jmp .UNIQUE5614
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5614: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE5615
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5615: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5616
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5616: 
	addq	%rdx, %rax
 jmp .UNIQUE5617
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5617: 
	movl	-20(%rbp), %edx
 jmp .UNIQUE5618
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5618: 
	addl	$100, %edx
 jmp .UNIQUE5619
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5619: 
	cvtsi2sd	%edx, %xmm0
 jmp .UNIQUE5620
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5620: 
	movsd	%xmm0, (%rax)
 jmp .UNIQUE5621
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5621: 
	addl	$1, -20(%rbp)
.L507:
 jmp .UNIQUE5622
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5622: 
	cmpl	$9, -20(%rbp)
 jmp .UNIQUE5623
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5623: 
	jle	.L508
 jmp .UNIQUE5624
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5624: 
	movl	$.LC78, %edi
 jmp .UNIQUE5625
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5625: 
	call	puts
 jmp .UNIQUE5626
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5626: 
	movabsq	$4633156929650876744, %rdx
 jmp .UNIQUE5627
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5627: 
	movabsq	$4631166901565532406, %rax
 jmp .UNIQUE5628
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5628: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE5629
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5629: 
	movq	%rcx, 96(%rsp)
 jmp .UNIQUE5630
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5630: 
	movq	$80, 88(%rsp)
 jmp .UNIQUE5631
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5631: 
	movq	$1, 80(%rsp)
 jmp .UNIQUE5632
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5632: 
	movl	$424242, 72(%rsp)
 jmp .UNIQUE5633
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5633: 
	movq	$100, 64(%rsp)
 jmp .UNIQUE5634
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5634: 
	movq	$1, 56(%rsp)
 jmp .UNIQUE5635
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5635: 
	movq	$2, 48(%rsp)
 jmp .UNIQUE5636
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5636: 
	movq	$0, 40(%rsp)
 jmp .UNIQUE5637
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5637: 
	movq	$0, 32(%rsp)
 jmp .UNIQUE5638
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5638: 
	movl	$41, 24(%rsp)
 jmp .UNIQUE5639
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5639: 
	movl	$42, 16(%rsp)
 jmp .UNIQUE5640
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5640: 
	movq	$2, 8(%rsp)
 jmp .UNIQUE5641
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5641: 
	movl	$103, (%rsp)
 jmp .UNIQUE5642
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5642: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE5643
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5643: 
	movsd	-40(%rbp), %xmm1
 jmp .UNIQUE5644
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5644: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE5645
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5645: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE5646
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5646: 
	movl	$102, %r9d
 jmp .UNIQUE5647
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5647: 
	movl	$101, %r8d
 jmp .UNIQUE5648
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5648: 
	movl	$100, %ecx
 jmp .UNIQUE5649
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5649: 
	movl	$99, %edx
 jmp .UNIQUE5650
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5650: 
	movl	$5, %esi
 jmp .UNIQUE5651
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5651: 
	movl	$1, %edi
 jmp .UNIQUE5652
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5652: 
	movl	$2, %eax
 jmp .UNIQUE5653
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5653: 
	call	init_function_params
 jmp .UNIQUE5654
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5654: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE5655
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5655: 
	movl	$.LC81, %edi
 jmp .UNIQUE5656
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5656: 
	call	puts
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
	call	put_fun_params_into_secure_stack_and_free
 jmp .UNIQUE5660
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5660: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE5661
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5661: 
	movl	$.LC82, %edi
 jmp .UNIQUE5662
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5662: 
	call	puts
 jmp .UNIQUE5663
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5663: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE5664
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5664: 
	jmp	.L509
.L510:
 jmp .UNIQUE5665
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5665: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE5666
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5666: 
	movslq	%eax, %rdx
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
	movq	8(%rax), %rax
 jmp .UNIQUE5669
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5669: 
	movq	8(%rax), %rax
 jmp .UNIQUE5670
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5670: 
	movq	%rdx, %rsi
 jmp .UNIQUE5671
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5671: 
	movq	%rax, %rdi
 jmp .UNIQUE5672
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5672: 
	call	get_stack_char_array_element
 jmp .UNIQUE5673
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5673: 
	movsbl	%al, %eax
 jmp .UNIQUE5674
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5674: 
	movl	%eax, %esi
 jmp .UNIQUE5675
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5675: 
	movl	$.LC83, %edi
 jmp .UNIQUE5676
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5676: 
	movl	$0, %eax
 jmp .UNIQUE5677
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5677: 
	call	printf
 jmp .UNIQUE5678
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5678: 
	addl	$1, -20(%rbp)
.L509:
 jmp .UNIQUE5679
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5679: 
	cmpl	$4, -20(%rbp)
 jmp .UNIQUE5680
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5680: 
	jle	.L510
 jmp .UNIQUE5681
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5681: 
	movl	$10, %edi
 jmp .UNIQUE5682
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5682: 
	call	putchar
 jmp .UNIQUE5683
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5683: 
	movl	$.LC84, %edi
 jmp .UNIQUE5684
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5684: 
	call	puts
 jmp .UNIQUE5685
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5685: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE5686
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5686: 
	jmp	.L511
.L512:
 jmp .UNIQUE5687
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5687: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE5688
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5688: 
	movslq	%eax, %rdx
 jmp .UNIQUE5689
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5689: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5690
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5690: 
	movq	8(%rax), %rax
 jmp .UNIQUE5691
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5691: 
	movq	24(%rax), %rax
 jmp .UNIQUE5692
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5692: 
	movq	%rdx, %rsi
 jmp .UNIQUE5693
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5693: 
	movq	%rax, %rdi
 jmp .UNIQUE5694
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5694: 
	call	get_stack_int_array_element
 jmp .UNIQUE5695
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5695: 
	movl	%eax, %esi
 jmp .UNIQUE5696
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5696: 
	movl	$.LC21, %edi
 jmp .UNIQUE5697
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5697: 
	movl	$0, %eax
 jmp .UNIQUE5698
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5698: 
	call	printf
 jmp .UNIQUE5699
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5699: 
	addl	$1, -20(%rbp)
.L511:
 jmp .UNIQUE5700
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5700: 
	cmpl	$1, -20(%rbp)
 jmp .UNIQUE5701
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5701: 
	jle	.L512
 jmp .UNIQUE5702
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5702: 
	movl	$10, %edi
 jmp .UNIQUE5703
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5703: 
	call	putchar
 jmp .UNIQUE5704
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5704: 
	movl	$.LC85, %edi
 jmp .UNIQUE5705
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5705: 
	call	puts
 jmp .UNIQUE5706
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5706: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE5707
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5707: 
	jmp	.L513
.L514:
 jmp .UNIQUE5708
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5708: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE5709
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5709: 
	movslq	%eax, %rdx
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
	movq	8(%rax), %rax
 jmp .UNIQUE5712
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5712: 
	movq	72(%rax), %rax
 jmp .UNIQUE5713
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5713: 
	movq	%rdx, %rsi
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
	call	get_stack_double_array_element
 jmp .UNIQUE5716
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5716: 
	movsd	%xmm0, -40(%rbp)
 jmp .UNIQUE5717
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5717: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE5718
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5718: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE5719
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5719: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE5720
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5720: 
	movl	$.LC86, %edi
 jmp .UNIQUE5721
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5721: 
	movl	$1, %eax
 jmp .UNIQUE5722
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5722: 
	call	printf
 jmp .UNIQUE5723
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5723: 
	addl	$1, -20(%rbp)
.L513:
 jmp .UNIQUE5724
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5724: 
	cmpl	$1, -20(%rbp)
 jmp .UNIQUE5725
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5725: 
	jle	.L514
 jmp .UNIQUE5726
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5726: 
	movl	$10, %edi
 jmp .UNIQUE5727
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5727: 
	call	putchar
 jmp .UNIQUE5728
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5728: 
	movl	$.LC87, %edi
 jmp .UNIQUE5729
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5729: 
	call	puts
 jmp .UNIQUE5730
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5730: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5731
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5731: 
	movq	8(%rax), %rax
 jmp .UNIQUE5732
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5732: 
	movq	24(%rax), %rdx
 jmp .UNIQUE5733
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5733: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5734
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5734: 
	movq	8(%rax), %rax
 jmp .UNIQUE5735
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5735: 
	movq	96(%rax), %rax
 jmp .UNIQUE5736
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5736: 
	movl	$0, %esi
 jmp .UNIQUE5737
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5737: 
	movq	%rax, %rdi
 jmp .UNIQUE5738
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5738: 
	call	set_stack_pointer_array_element
 jmp .UNIQUE5739
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5739: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5740
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5740: 
	movq	8(%rax), %rax
 jmp .UNIQUE5741
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5741: 
	movq	96(%rax), %rax
 jmp .UNIQUE5742
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5742: 
	movl	$0, %esi
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
	call	get_stack_pointer_array_element
 jmp .UNIQUE5745
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5745: 
	movl	$45, %edx
 jmp .UNIQUE5746
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5746: 
	movl	$0, %esi
 jmp .UNIQUE5747
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5747: 
	movq	%rax, %rdi
 jmp .UNIQUE5748
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5748: 
	call	set_stack_int_array_element
 jmp .UNIQUE5749
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5749: 
	movl	$.LC84, %edi
 jmp .UNIQUE5750
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5750: 
	call	puts
 jmp .UNIQUE5751
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5751: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE5752
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5752: 
	jmp	.L515
.L516:
 jmp .UNIQUE5753
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5753: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE5754
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5754: 
	movslq	%eax, %rdx
 jmp .UNIQUE5755
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5755: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5756
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5756: 
	movq	8(%rax), %rax
 jmp .UNIQUE5757
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5757: 
	movq	24(%rax), %rax
 jmp .UNIQUE5758
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5758: 
	movq	%rdx, %rsi
 jmp .UNIQUE5759
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5759: 
	movq	%rax, %rdi
 jmp .UNIQUE5760
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5760: 
	call	get_stack_int_array_element
 jmp .UNIQUE5761
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5761: 
	movl	%eax, %esi
 jmp .UNIQUE5762
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5762: 
	movl	$.LC21, %edi
 jmp .UNIQUE5763
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5763: 
	movl	$0, %eax
 jmp .UNIQUE5764
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5764: 
	call	printf
 jmp .UNIQUE5765
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5765: 
	addl	$1, -20(%rbp)
.L515:
 jmp .UNIQUE5766
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5766: 
	cmpl	$1, -20(%rbp)
 jmp .UNIQUE5767
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5767: 
	jle	.L516
 jmp .UNIQUE5768
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5768: 
	movl	$10, %edi
 jmp .UNIQUE5769
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5769: 
	call	putchar
 jmp .UNIQUE5770
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5770: 
	movl	$.LC88, %edi
 jmp .UNIQUE5771
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5771: 
	call	puts
 jmp .UNIQUE5772
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5772: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE5773
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5773: 
	jmp	.L517
.L518:
 jmp .UNIQUE5774
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5774: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE5775
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5775: 
	movslq	%eax, %rdx
 jmp .UNIQUE5776
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5776: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5777
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5777: 
	movq	8(%rax), %rax
 jmp .UNIQUE5778
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5778: 
	movq	120(%rax), %rax
 jmp .UNIQUE5779
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5779: 
	movq	(%rax), %rax
 jmp .UNIQUE5780
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5780: 
	movq	%rdx, %rsi
 jmp .UNIQUE5781
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5781: 
	movq	%rax, %rdi
 jmp .UNIQUE5782
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5782: 
	call	get_stack_double_array_element
 jmp .UNIQUE5783
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5783: 
	movsd	%xmm0, -40(%rbp)
 jmp .UNIQUE5784
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5784: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE5785
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5785: 
	movl	-20(%rbp), %edx
 jmp .UNIQUE5786
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5786: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE5787
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5787: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE5788
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5788: 
	movl	%edx, %esi
 jmp .UNIQUE5789
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5789: 
	movl	$.LC89, %edi
 jmp .UNIQUE5790
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5790: 
	movl	$1, %eax
 jmp .UNIQUE5791
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5791: 
	call	printf
 jmp .UNIQUE5792
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5792: 
	addl	$1, -20(%rbp)
.L517:
 jmp .UNIQUE5793
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5793: 
	cmpl	$9, -20(%rbp)
 jmp .UNIQUE5794
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5794: 
	jle	.L518
 jmp .UNIQUE5795
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5795: 
	movl	$.LC90, %edi
 jmp .UNIQUE5796
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5796: 
	call	puts
 jmp .UNIQUE5797
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5797: 
	movl	$55, %edx
 jmp .UNIQUE5798
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5798: 
	movl	$__func__.4659, %esi
 jmp .UNIQUE5799
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5799: 
	movl	$80, %edi
 jmp .UNIQUE5800
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5800: 
	call	error_checking_malloc
 jmp .UNIQUE5801
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5801: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE5802
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5802: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5803
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5803: 
	movq	8(%rax), %rax
 jmp .UNIQUE5804
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5804: 
	movq	120(%rax), %rax
 jmp .UNIQUE5805
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5805: 
	movq	(%rax), %rax
 jmp .UNIQUE5806
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5806: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE5807
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5807: 
	movq	%rax, %rsi
 jmp .UNIQUE5808
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5808: 
	movl	$80, %edi
 jmp .UNIQUE5809
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5809: 
	call	get_arbitrary_block_in_stack
 jmp .UNIQUE5810
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5810: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE5811
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5811: 
	jmp	.L519
.L520:
 jmp .UNIQUE5812
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5812: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE5813
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5813: 
	cltq
 jmp .UNIQUE5814
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5814: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE5815
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5815: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5816
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5816: 
	addq	%rdx, %rax
 jmp .UNIQUE5817
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5817: 
	movq	(%rax), %rax
 jmp .UNIQUE5818
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5818: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE5819
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5819: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE5820
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5820: 
	movl	$.LC68, %edi
 jmp .UNIQUE5821
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5821: 
	movl	$1, %eax
 jmp .UNIQUE5822
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5822: 
	call	printf
 jmp .UNIQUE5823
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5823: 
	addl	$1, -20(%rbp)
.L519:
 jmp .UNIQUE5824
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5824: 
	cmpl	$9, -20(%rbp)
 jmp .UNIQUE5825
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5825: 
	jle	.L520
 jmp .UNIQUE5826
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5826: 
	movl	$10, %edi
 jmp .UNIQUE5827
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5827: 
	call	putchar
 jmp .UNIQUE5828
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5828: 
	movl	$.LC91, %edi
 jmp .UNIQUE5829
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5829: 
	call	puts
 jmp .UNIQUE5830
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5830: 
	movl	$64, %edx
 jmp .UNIQUE5831
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5831: 
	movl	$__func__.4659, %esi
 jmp .UNIQUE5832
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5832: 
	movl	$80, %edi
 jmp .UNIQUE5833
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5833: 
	call	error_checking_malloc
 jmp .UNIQUE5834
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5834: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE5835
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5835: 
	movl	$0, -20(%rbp)
 jmp .UNIQUE5836
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5836: 
	jmp	.L521
.L522:
 jmp .UNIQUE5837
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5837: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE5838
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5838: 
	cltq
 jmp .UNIQUE5839
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5839: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE5840
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5840: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5841
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5841: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE5842
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5842: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE5843
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5843: 
	cltq
 jmp .UNIQUE5844
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5844: 
	salq	$3, %rax
 jmp .UNIQUE5845
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5845: 
	movq	%rax, %rdx
 jmp .UNIQUE5846
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5846: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE5847
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5847: 
	movq	8(%rax), %rax
 jmp .UNIQUE5848
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5848: 
	movq	120(%rax), %rax
 jmp .UNIQUE5849
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5849: 
	movq	(%rax), %rax
 jmp .UNIQUE5850
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5850: 
	movq	%rax, %rsi
 jmp .UNIQUE5851
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5851: 
	movl	$8, %edi
 jmp .UNIQUE5852
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5852: 
	call	get_arbitrary_block_in_stack_with_offset
 jmp .UNIQUE5853
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5853: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE5854
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5854: 
	cltq
 jmp .UNIQUE5855
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5855: 
	leaq	0(,%rax,8), %rdx
 jmp .UNIQUE5856
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5856: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE5857
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5857: 
	addq	%rdx, %rax
 jmp .UNIQUE5858
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5858: 
	movq	(%rax), %rax
 jmp .UNIQUE5859
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5859: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE5860
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5860: 
	movsd	-40(%rbp), %xmm0
 jmp .UNIQUE5861
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5861: 
	movl	$.LC68, %edi
 jmp .UNIQUE5862
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5862: 
	movl	$1, %eax
 jmp .UNIQUE5863
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5863: 
	call	printf
 jmp .UNIQUE5864
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5864: 
	addl	$1, -20(%rbp)
.L521:
 jmp .UNIQUE5865
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5865: 
	cmpl	$9, -20(%rbp)
 jmp .UNIQUE5866
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5866: 
	jle	.L522
 jmp .UNIQUE5867
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5867: 
	movl	$10, %edi
 jmp .UNIQUE5868
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5868: 
	call	putchar
 jmp .UNIQUE5869
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5869: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5870
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5870: 
	ret
	.cfi_endproc
.LFE111:
	.size	stack_fun_params_test, .-stack_fun_params_test
	.comm	sa,152,32
	.globl	check_next_canaries
	.type	check_next_canaries, @function
check_next_canaries:
.LFB112:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5871
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5871: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5872
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5872: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
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
	movl	$0, -4(%rbp)
 jmp .UNIQUE5875
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5875: 
	jmp	.L524
.L527:
 jmp .UNIQUE5876
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5876: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE5877
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5877: 
	movslq	%eax, %rdx
 jmp .UNIQUE5878
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5878: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE5879
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5879: 
	addq	%rdx, %rax
 jmp .UNIQUE5880
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5880: 
	movzbl	(%rax), %eax
 jmp .UNIQUE5881
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5881: 
	cmpb	$66, %al
 jmp .UNIQUE5882
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5882: 
	je	.L525
 jmp .UNIQUE5883
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5883: 
	movl	$0, %eax
 jmp .UNIQUE5884
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5884: 
	jmp	.L526
.L525:
 jmp .UNIQUE5885
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5885: 
	addl	$1, -4(%rbp)
.L524:
 jmp .UNIQUE5886
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5886: 
	cmpl	$1, -4(%rbp)
 jmp .UNIQUE5887
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5887: 
	jle	.L527
 jmp .UNIQUE5888
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5888: 
	movl	$1, %eax
.L526:
 jmp .UNIQUE5889
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5889: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE5890
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5890: 
	ret
	.cfi_endproc
.LFE112:
	.size	check_next_canaries, .-check_next_canaries
	.section	.rodata
.LC92:
	.string	"key no%d=0x%02x\n"
	.text
	.globl	find_keyshares
	.type	find_keyshares, @function
find_keyshares:
.LFB113:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE5891
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5891: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE5892
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5892: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE5893
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5893: 
	subq	$112, %rsp
 jmp .UNIQUE5894
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5894: 
	movq	%fs:40, %rax
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
	xorl	%eax, %eax
 jmp .UNIQUE5897
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5897: 
	movl	$0, -92(%rbp)
 jmp .UNIQUE5898
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5898: 
	movq	$foo, -64(%rbp)
 jmp .UNIQUE5899
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5899: 
	movq	$main, -56(%rbp)
 jmp .UNIQUE5900
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5900: 
	movq	$foo2, -48(%rbp)
 jmp .UNIQUE5901
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5901: 
	movq	$find_keyshares, -40(%rbp)
 jmp .UNIQUE5902
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5902: 
	movl	$0, -96(%rbp)
 jmp .UNIQUE5903
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5903: 
	movq	$__executable_start, -32(%rbp)
 jmp .UNIQUE5904
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5904: 
	movq	$__etext, -24(%rbp)
 jmp .UNIQUE5905
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5905: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE5906
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5906: 
	jmp	.L529
.L530:
 jmp .UNIQUE5907
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5907: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE5908
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5908: 
	cltq
 jmp .UNIQUE5909
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5909: 
	movb	$0, -16(%rbp,%rax)
 jmp .UNIQUE5910
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5910: 
	addl	$1, -100(%rbp)
.L529:
 jmp .UNIQUE5911
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5911: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE5912
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5912: 
	jle	.L530
 jmp .UNIQUE5913
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5913: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE5914
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5914: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE5915
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5915: 
	jmp	.L531
.L535:
 jmp .UNIQUE5916
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5916: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5917
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5917: 
	movzbl	(%rax), %eax
 jmp .UNIQUE5918
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5918: 
	cmpb	$-21, %al
 jmp .UNIQUE5919
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5919: 
	jne	.L532
 jmp .UNIQUE5920
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5920: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5921
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5921: 
	addq	$1, %rax
 jmp .UNIQUE5922
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5922: 
	movzbl	(%rax), %eax
 jmp .UNIQUE5923
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5923: 
	cmpb	$7, %al
 jmp .UNIQUE5924
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5924: 
	jne	.L532
 jmp .UNIQUE5925
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5925: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5926
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5926: 
	addq	$2, %rax
 jmp .UNIQUE5927
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5927: 
	movq	%rax, %rdi
 jmp .UNIQUE5928
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5928: 
	call	check_next_canaries
 jmp .UNIQUE5929
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5929: 
	testl	%eax, %eax
 jmp .UNIQUE5930
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5930: 
	je	.L532
 jmp .UNIQUE5931
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5931: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE5932
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5932: 
	jmp	.L533
.L534:
 jmp .UNIQUE5933
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5933: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE5934
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5934: 
	cltq
 jmp .UNIQUE5935
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5935: 
	movzbl	-16(%rbp,%rax), %edx
 jmp .UNIQUE5936
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5936: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE5937
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5937: 
	cltq
 jmp .UNIQUE5938
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5938: 
	leaq	4(%rax), %rcx
 jmp .UNIQUE5939
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5939: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5940
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5940: 
	addq	%rcx, %rax
 jmp .UNIQUE5941
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5941: 
	movzbl	(%rax), %eax
 jmp .UNIQUE5942
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5942: 
	xorl	%eax, %edx
 jmp .UNIQUE5943
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5943: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE5944
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5944: 
	cltq
 jmp .UNIQUE5945
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5945: 
	movb	%dl, -16(%rbp,%rax)
 jmp .UNIQUE5946
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5946: 
	addl	$1, -100(%rbp)
.L533:
 jmp .UNIQUE5947
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5947: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE5948
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5948: 
	jle	.L534
.L532:
 jmp .UNIQUE5949
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5949: 
	addq	$1, -88(%rbp)
.L531:
 jmp .UNIQUE5950
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5950: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5951
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5951: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE5952
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5952: 
	jbe	.L535
 jmp .UNIQUE5953
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5953: 
	movl	$0, -96(%rbp)
 jmp .UNIQUE5954
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5954: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE5955
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5955: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE5956
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5956: 
	movq	$0, -80(%rbp)
 jmp .UNIQUE5957
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5957: 
	jmp	.L536
.L540:
 jmp .UNIQUE5958
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5958: 
	cmpl	$0, -96(%rbp)
 jmp .UNIQUE5959
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5959: 
	jne	.L537
 jmp .UNIQUE5960
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5960: 
	addq	$4, -80(%rbp)
 jmp .UNIQUE5961
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5961: 
	movl	$1, -96(%rbp)
 jmp .UNIQUE5962
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5962: 
	jmp	.L536
.L537:
 jmp .UNIQUE5963
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5963: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE5964
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5964: 
	jmp	.L538
.L539:
 jmp .UNIQUE5965
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5965: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE5966
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5966: 
	cltq
 jmp .UNIQUE5967
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5967: 
	movzbl	-16(%rbp,%rax), %edx
 jmp .UNIQUE5968
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5968: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE5969
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5969: 
	movslq	%eax, %rcx
 jmp .UNIQUE5970
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5970: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE5971
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5971: 
	addq	%rax, %rcx
 jmp .UNIQUE5972
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5972: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE5973
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5973: 
	addq	%rcx, %rax
 jmp .UNIQUE5974
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5974: 
	movzbl	(%rax), %eax
 jmp .UNIQUE5975
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5975: 
	xorl	%eax, %edx
 jmp .UNIQUE5976
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5976: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE5977
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5977: 
	cltq
 jmp .UNIQUE5978
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5978: 
	movb	%dl, -16(%rbp,%rax)
 jmp .UNIQUE5979
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5979: 
	addl	$1, -100(%rbp)
.L538:
 jmp .UNIQUE5980
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5980: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE5981
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5981: 
	jle	.L539
 jmp .UNIQUE5982
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5982: 
	addq	$5, -80(%rbp)
 jmp .UNIQUE5983
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5983: 
	movl	$0, -96(%rbp)
.L536:
 jmp .UNIQUE5984
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5984: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE5985
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5985: 
	cmpq	%rax, -80(%rbp)
 jmp .UNIQUE5986
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5986: 
	jl	.L540
 jmp .UNIQUE5987
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5987: 
	movl	$0, -96(%rbp)
 jmp .UNIQUE5988
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5988: 
	movq	entire_stack_memory_chunk(%rip), %rax
 jmp .UNIQUE5989
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5989: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE5990
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5990: 
	movq	$0, -72(%rbp)
 jmp .UNIQUE5991
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5991: 
	jmp	.L541
.L545:
 jmp .UNIQUE5992
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5992: 
	cmpl	$0, -96(%rbp)
 jmp .UNIQUE5993
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5993: 
	jne	.L542
 jmp .UNIQUE5994
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5994: 
	addq	$3, -72(%rbp)
 jmp .UNIQUE5995
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5995: 
	movl	$1, -96(%rbp)
 jmp .UNIQUE5996
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5996: 
	jmp	.L541
.L542:
 jmp .UNIQUE5997
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5997: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE5998
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5998: 
	jmp	.L543
.L544:
 jmp .UNIQUE5999
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE5999: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE6000
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6000: 
	cltq
 jmp .UNIQUE6001
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6001: 
	movzbl	-16(%rbp,%rax), %edx
 jmp .UNIQUE6002
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6002: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE6003
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6003: 
	movslq	%eax, %rcx
 jmp .UNIQUE6004
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6004: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE6005
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6005: 
	addq	%rax, %rcx
 jmp .UNIQUE6006
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6006: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE6007
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6007: 
	addq	%rcx, %rax
 jmp .UNIQUE6008
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6008: 
	movzbl	(%rax), %eax
 jmp .UNIQUE6009
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6009: 
	xorl	%eax, %edx
 jmp .UNIQUE6010
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6010: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE6011
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6011: 
	cltq
 jmp .UNIQUE6012
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6012: 
	movb	%dl, -16(%rbp,%rax)
 jmp .UNIQUE6013
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6013: 
	addl	$1, -100(%rbp)
.L543:
 jmp .UNIQUE6014
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6014: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE6015
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6015: 
	jle	.L544
 jmp .UNIQUE6016
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6016: 
	addq	$5, -72(%rbp)
 jmp .UNIQUE6017
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6017: 
	movl	$0, -96(%rbp)
.L541:
 jmp .UNIQUE6018
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6018: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE6019
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6019: 
	cmpq	%rax, -72(%rbp)
 jmp .UNIQUE6020
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6020: 
	jl	.L545
 jmp .UNIQUE6021
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6021: 
	movl	$10, %edi
 jmp .UNIQUE6022
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6022: 
	call	putchar
 jmp .UNIQUE6023
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6023: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE6024
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6024: 
	jmp	.L546
.L547:
 jmp .UNIQUE6025
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6025: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE6026
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6026: 
	cltq
 jmp .UNIQUE6027
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6027: 
	movzbl	-16(%rbp,%rax), %eax
 jmp .UNIQUE6028
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6028: 
	movzbl	%al, %edx
 jmp .UNIQUE6029
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6029: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE6030
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6030: 
	movl	%eax, %esi
 jmp .UNIQUE6031
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6031: 
	movl	$.LC92, %edi
 jmp .UNIQUE6032
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6032: 
	movl	$0, %eax
 jmp .UNIQUE6033
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6033: 
	call	printf
 jmp .UNIQUE6034
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6034: 
	addl	$1, -100(%rbp)
.L546:
 jmp .UNIQUE6035
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6035: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE6036
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6036: 
	jle	.L547
 jmp .UNIQUE6037
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6037: 
	nop
 jmp .UNIQUE6038
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6038: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE6039
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6039: 
	xorq	%fs:40, %rax
 jmp .UNIQUE6040
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6040: 
	je	.L549
 jmp .UNIQUE6041
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6041: 
	call	__stack_chk_fail
.L549:
 jmp .UNIQUE6042
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6042: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6043
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6043: 
	ret
	.cfi_endproc
.LFE113:
	.size	find_keyshares, .-find_keyshares
	.section	.rodata
.LC93:
	.string	"Verification requested!"
	.text
	.globl	verification_procedure
	.type	verification_procedure, @function
verification_procedure:
.LFB114:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6044
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6044: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6045
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6045: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6046
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6046: 
	movl	$.LC93, %edi
 jmp .UNIQUE6047
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6047: 
	call	puts
 jmp .UNIQUE6048
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6048: 
	movl	$0, %eax
 jmp .UNIQUE6049
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6049: 
	call	find_keyshares
 jmp .UNIQUE6050
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6050: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6051
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6051: 
	ret
	.cfi_endproc
.LFE114:
	.size	verification_procedure, .-verification_procedure
	.section	.rodata
.LC94:
	.string	"Initializing heap memory"
	.align 8
.LC95:
	.string	"bytes_to_allocate_on_start:%d\n"
.LC96:
	.string	"Init_mem, alloc+key insertion"
	.align 8
.LC97:
	.string	"If successful, total bytes allocated:%ld\n"
.LC98:
	.string	"Initializing stack memory"
	.align 8
.LC99:
	.string	"Stack bytes_to_allocate_on_start:%d\n"
	.align 8
.LC100:
	.string	"Init_stack_mem, alloc+key insertion"
	.text
	.globl	init_heap_and_stack_mem
	.type	init_heap_and_stack_mem, @function
init_heap_and_stack_mem:
.LFB115:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6052
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6052: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6053
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6053: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6054
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6054: 
	movl	$.LC94, %edi
 jmp .UNIQUE6055
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6055: 
	call	puts
 jmp .UNIQUE6056
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6056: 
	movl	$2048, %esi
 jmp .UNIQUE6057
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6057: 
	movl	$.LC95, %edi
 jmp .UNIQUE6058
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6058: 
	movl	$0, %eax
 jmp .UNIQUE6059
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6059: 
	call	printf
 jmp .UNIQUE6060
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6060: 
	movl	$.LC96, %edi
 jmp .UNIQUE6061
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6061: 
	call	puts
 jmp .UNIQUE6062
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6062: 
	movl	$0, %eax
 jmp .UNIQUE6063
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6063: 
	call	init_mem
 jmp .UNIQUE6064
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6064: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE6065
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6065: 
	movq	%rax, %rsi
 jmp .UNIQUE6066
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6066: 
	movl	$.LC97, %edi
 jmp .UNIQUE6067
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6067: 
	movl	$0, %eax
 jmp .UNIQUE6068
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6068: 
	call	printf
 jmp .UNIQUE6069
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6069: 
	movl	$.LC98, %edi
 jmp .UNIQUE6070
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6070: 
	call	puts
 jmp .UNIQUE6071
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6071: 
	movl	$1024, %esi
 jmp .UNIQUE6072
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6072: 
	movl	$.LC99, %edi
 jmp .UNIQUE6073
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6073: 
	movl	$0, %eax
 jmp .UNIQUE6074
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6074: 
	call	printf
 jmp .UNIQUE6075
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6075: 
	movl	$.LC100, %edi
 jmp .UNIQUE6076
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6076: 
	call	puts
 jmp .UNIQUE6077
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6077: 
	movl	$0, %eax
 jmp .UNIQUE6078
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6078: 
	call	init_stack_mem
 jmp .UNIQUE6079
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6079: 
	movq	total_stack_bytes_allocated(%rip), %rax
 jmp .UNIQUE6080
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6080: 
	movq	%rax, %rsi
 jmp .UNIQUE6081
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6081: 
	movl	$.LC97, %edi
 jmp .UNIQUE6082
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6082: 
	movl	$0, %eax
 jmp .UNIQUE6083
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6083: 
	call	printf
 jmp .UNIQUE6084
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6084: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6085
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6085: 
	ret
	.cfi_endproc
.LFE115:
	.size	init_heap_and_stack_mem, .-init_heap_and_stack_mem
	.section	.rodata
.LC101:
	.string	"Installing signal handler"
	.align 8
.LC102:
	.string	"Could not install signal handler"
.LC103:
	.string	"Signal handler installed"
	.text
	.globl	install_signal_handler
	.type	install_signal_handler, @function
install_signal_handler:
.LFB116:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6086
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6086: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6087
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6087: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6088
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6088: 
	movl	$.LC101, %edi
 jmp .UNIQUE6089
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6089: 
	call	puts
 jmp .UNIQUE6090
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6090: 
	movq	$verification_procedure, sa(%rip)
 jmp .UNIQUE6091
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6091: 
	movl	$sa+8, %edi
 jmp .UNIQUE6092
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6092: 
	call	sigemptyset
 jmp .UNIQUE6093
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6093: 
	movl	$268435456, sa+136(%rip)
 jmp .UNIQUE6094
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6094: 
	movl	$0, %edx
 jmp .UNIQUE6095
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6095: 
	movl	$sa, %esi
 jmp .UNIQUE6096
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6096: 
	movl	$10, %edi
 jmp .UNIQUE6097
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6097: 
	call	sigaction
 jmp .UNIQUE6098
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6098: 
	cmpl	$-1, %eax
 jmp .UNIQUE6099
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6099: 
	jne	.L553
 jmp .UNIQUE6100
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6100: 
	movl	$.LC102, %edi
 jmp .UNIQUE6101
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6101: 
	call	perror
 jmp .UNIQUE6102
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6102: 
	movl	$45, %edi
 jmp .UNIQUE6103
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6103: 
	call	exit
.L553:
 jmp .UNIQUE6104
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6104: 
	movl	$.LC103, %edi
 jmp .UNIQUE6105
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6105: 
	call	puts
 jmp .UNIQUE6106
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6106: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6107
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6107: 
	ret
	.cfi_endproc
.LFE116:
	.size	install_signal_handler, .-install_signal_handler
	.globl	free_heap_and_stack_memory
	.type	free_heap_and_stack_memory, @function
free_heap_and_stack_memory:
.LFB117:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6108
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6108: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6109
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6109: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6110
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6110: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE6111
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6111: 
	movq	%rax, %rdi
 jmp .UNIQUE6112
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6112: 
	call	free_secure_mem
 jmp .UNIQUE6113
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6113: 
	movq	entire_stack_memory_chunk(%rip), %rax
 jmp .UNIQUE6114
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6114: 
	movq	%rax, %rdi
 jmp .UNIQUE6115
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6115: 
	call	free_secure_stack_mem
 jmp .UNIQUE6116
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6116: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6117
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6117: 
	ret
	.cfi_endproc
.LFE117:
	.size	free_heap_and_stack_memory, .-free_heap_and_stack_memory
	.local	static_global_variable_for_testing
	.comm	static_global_variable_for_testing,4,4
	.globl	foo
	.type	foo, @function
foo:
.LFB118:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6118
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6118: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6119
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6119: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6120
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6120: 
	movl	%edi, -20(%rbp)
 jmp .UNIQUE6121
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6121: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE6122
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6122: 
	addl	$2, %eax
 jmp .UNIQUE6123
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6123: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE6124
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6124: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE6125
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6125: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6126
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6126: 
	ret
	.cfi_endproc
.LFE118:
	.size	foo, .-foo
	.section	.rodata
.LC104:
	.string	"My pid=%ld\n"
.LC105:
	.string	"K=%d\n"
.LC106:
	.string	"n=%d\n"
.LC107:
	.string	"main is at %p\n"
.LC108:
	.string	"\nSimple array tests in heap"
.LC109:
	.string	"\nStack fun params test"
.LC110:
	.string	"\nEnd of tests"
.LC111:
	.string	"Going to find keyshares"
	.text
	.globl	main
	.type	main, @function
main:
.LFB119:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE6127
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6127: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE6128
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6128: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE6129
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6129: 
	subq	$48, %rsp
 jmp .UNIQUE6130
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6130: 
	movq	%fs:40, %rax
 jmp .UNIQUE6131
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6131: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE6132
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6132: 
	xorl	%eax, %eax
 jmp .UNIQUE6133
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6133: 
	movl	$1, -48(%rbp)
 jmp .UNIQUE6134
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6134: 
	movl	$2, -44(%rbp)
 jmp .UNIQUE6135
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6135: 
	addl	$1, -44(%rbp)
 jmp .UNIQUE6136
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6136: 
	addl	$1, -44(%rbp)
 jmp .UNIQUE6137
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6137: 
	subl	$1, -44(%rbp)
 jmp .UNIQUE6138
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6138: 
	movl	-44(%rbp), %eax
 jmp .UNIQUE6139
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6139: 
	addl	%eax, -48(%rbp)
 jmp .UNIQUE6140
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6140: 
	addl	$2, -48(%rbp)
 jmp .UNIQUE6141
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6141: 
	addl	$1, -44(%rbp)
 jmp .UNIQUE6142
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6142: 
	movl	$1, static_main_variable_for_testing.4765(%rip)
 jmp .UNIQUE6143
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6143: 
	movl	$2, static_global_variable_for_testing(%rip)
 jmp .UNIQUE6144
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6144: 
	movl	$0, %eax
 jmp .UNIQUE6145
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6145: 
	call	init_heap_and_stack_mem
 jmp .UNIQUE6146
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6146: 
	movl	$0, %eax
 jmp .UNIQUE6147
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6147: 
	call	install_signal_handler
 jmp .UNIQUE6148
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6148: 
	call	getpid
 jmp .UNIQUE6149
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6149: 
	movl	%eax, -40(%rbp)
 jmp .UNIQUE6150
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6150: 
	movl	-40(%rbp), %eax
 jmp .UNIQUE6151
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6151: 
	cltq
 jmp .UNIQUE6152
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6152: 
	movq	%rax, %rsi
 jmp .UNIQUE6153
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6153: 
	movl	$.LC104, %edi
 jmp .UNIQUE6154
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6154: 
	movl	$0, %eax
 jmp .UNIQUE6155
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6155: 
	call	printf
 jmp .UNIQUE6156
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6156: 
	movl	-48(%rbp), %eax
 jmp .UNIQUE6157
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6157: 
	movl	%eax, %esi
 jmp .UNIQUE6158
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6158: 
	movl	$.LC105, %edi
 jmp .UNIQUE6159
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6159: 
	movl	$0, %eax
 jmp .UNIQUE6160
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6160: 
	call	printf
 jmp .UNIQUE6161
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6161: 
	movl	$5, %edi
 jmp .UNIQUE6162
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6162: 
	call	foo
 jmp .UNIQUE6163
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6163: 
	movl	%eax, -36(%rbp)
 jmp .UNIQUE6164
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6164: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE6165
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6165: 
	movl	%eax, %edi
 jmp .UNIQUE6166
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6166: 
	call	foo2
 jmp .UNIQUE6167
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6167: 
	movl	%eax, -36(%rbp)
 jmp .UNIQUE6168
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6168: 
	movl	-36(%rbp), %eax
 jmp .UNIQUE6169
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6169: 
	movl	%eax, %esi
 jmp .UNIQUE6170
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6170: 
	movl	$.LC106, %edi
 jmp .UNIQUE6171
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6171: 
	movl	$0, %eax
 jmp .UNIQUE6172
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6172: 
	call	printf
 jmp .UNIQUE6173
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6173: 
	movl	$main, %esi
 jmp .UNIQUE6174
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6174: 
	movl	$.LC107, %edi
 jmp .UNIQUE6175
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6175: 
	movl	$0, %eax
 jmp .UNIQUE6176
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6176: 
	call	printf
 jmp .UNIQUE6177
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6177: 
	movl	$.LC108, %edi
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
	movl	$0, %eax
 jmp .UNIQUE6180
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6180: 
	call	simple_array_tests
 jmp .UNIQUE6181
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6181: 
	movl	$.LC109, %edi
 jmp .UNIQUE6182
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6182: 
	call	puts
 jmp .UNIQUE6183
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6183: 
	movl	$0, %eax
 jmp .UNIQUE6184
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6184: 
	call	stack_fun_params_test
 jmp .UNIQUE6185
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6185: 
	movl	$.LC110, %edi
 jmp .UNIQUE6186
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6186: 
	call	puts
 jmp .UNIQUE6187
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6187: 
	movl	$.LC111, %edi
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
	movl	$0, %eax
 jmp .UNIQUE6190
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6190: 
	call	find_keyshares
 jmp .UNIQUE6191
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6191: 
	movl	$0, %eax
 jmp .UNIQUE6192
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6192: 
	call	free_heap_and_stack_memory
 jmp .UNIQUE6193
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6193: 
	movl	$0, %eax
 jmp .UNIQUE6194
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6194: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE6195
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6195: 
	xorq	%fs:40, %rdx
 jmp .UNIQUE6196
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6196: 
	je	.L559
 jmp .UNIQUE6197
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6197: 
	call	__stack_chk_fail
.L559:
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
.LFE119:
	.size	main, .-main
	.globl	foo2
	.type	foo2, @function
foo2:
.LFB120:
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
	movl	%edi, -20(%rbp)
 jmp .UNIQUE6203
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6203: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE6204
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6204: 
	addl	$3, %eax
 jmp .UNIQUE6205
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6205: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE6206
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6206: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE6207
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6207: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE6208
NOP
NOP
NOP
NOP
NOP
NOP
NOP
.UNIQUE6208: 
	ret
	.cfi_endproc
.LFE120:
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
	.type	__func__.4136, @object
	.size	__func__.4136, 16
__func__.4136:
	.string	"check_and_merge"
	.align 16
	.type	__func__.4152, @object
	.size	__func__.4152, 20
__func__.4152:
	.string	"managed_secure_free"
	.type	__func__.4203, @object
	.size	__func__.4203, 9
__func__.4203:
	.string	"mem_test"
	.align 16
	.type	__func__.4291, @object
	.size	__func__.4291, 19
__func__.4291:
	.string	"allocate_stack_mem"
	.align 16
	.type	__func__.4406, @object
	.size	__func__.4406, 21
__func__.4406:
	.string	"init_function_params"
	.align 32
	.type	__func__.4443, @object
	.size	__func__.4443, 49
__func__.4443:
	.string	"init_function_params_with_uninitialised_elements"
	.align 32
	.type	__func__.4485, @object
	.size	__func__.4485, 33
__func__.4485:
	.string	"put_fun_params_into_secure_stack"
	.align 16
	.type	__func__.4659, @object
	.size	__func__.4659, 22
__func__.4659:
	.string	"stack_fun_params_test"
	.local	static_main_variable_for_testing.4765
	.comm	static_main_variable_for_testing.4765,4,4
	.align 8
.LC65:
	.long	0
	.long	1071644672
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
