	.file	"Helloworldadd.c"
	.comm	total_bytes_allocated,8,8
	.comm	entire_memory_chunk,8,8
	.comm	last_unused_memory,8,8
	.comm	keyshare_input_file,8,8
	.comm	free_chunks_list,8,8
	.comm	free_chunks_num,8,8
	.comm	allocated_chunks_list,8,8
	.comm	allocated_chunks_num,8,8
	.text
	.globl	copy_nodes
	.type	copy_nodes, @function
copy_nodes:
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
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE2
NOP
NOP
NOP
NOP
NOP
.UNIQUE2: 
	movq	16(%rbp), %rdx
 jmp .UNIQUE3
NOP
NOP
NOP
NOP
NOP
.UNIQUE3: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE4
NOP
NOP
NOP
NOP
NOP
.UNIQUE4: 
	movq	%rdx, (%rax)
 jmp .UNIQUE5
NOP
NOP
NOP
NOP
NOP
.UNIQUE5: 
	movq	24(%rbp), %rdx
 jmp .UNIQUE6
NOP
NOP
NOP
NOP
NOP
.UNIQUE6: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE7
NOP
NOP
NOP
NOP
NOP
.UNIQUE7: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE8
NOP
NOP
NOP
NOP
NOP
.UNIQUE8: 
	movq	32(%rbp), %rdx
 jmp .UNIQUE9
NOP
NOP
NOP
NOP
NOP
.UNIQUE9: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE10
NOP
NOP
NOP
NOP
NOP
.UNIQUE10: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE11
NOP
NOP
NOP
NOP
NOP
.UNIQUE11: 
	movq	40(%rbp), %rdx
 jmp .UNIQUE12
NOP
NOP
NOP
NOP
NOP
.UNIQUE12: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE13
NOP
NOP
NOP
NOP
NOP
.UNIQUE13: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE14
NOP
NOP
NOP
NOP
NOP
.UNIQUE14: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE15
NOP
NOP
NOP
NOP
NOP
.UNIQUE15: 
	ret
	.cfi_endproc
.LFE2:
	.size	copy_nodes, .-copy_nodes
	.globl	copy_nodes_ptr
	.type	copy_nodes_ptr, @function
copy_nodes_ptr:
.LFB3:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE16
NOP
NOP
NOP
NOP
NOP
.UNIQUE16: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE17
NOP
NOP
NOP
NOP
NOP
.UNIQUE17: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE18
NOP
NOP
NOP
NOP
NOP
.UNIQUE18: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE19
NOP
NOP
NOP
NOP
NOP
.UNIQUE19: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE20
NOP
NOP
NOP
NOP
NOP
.UNIQUE20: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE21
NOP
NOP
NOP
NOP
NOP
.UNIQUE21: 
	movq	(%rax), %rdx
 jmp .UNIQUE22
NOP
NOP
NOP
NOP
NOP
.UNIQUE22: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE23
NOP
NOP
NOP
NOP
NOP
.UNIQUE23: 
	movq	%rdx, (%rax)
 jmp .UNIQUE24
NOP
NOP
NOP
NOP
NOP
.UNIQUE24: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE25
NOP
NOP
NOP
NOP
NOP
.UNIQUE25: 
	movq	8(%rax), %rdx
 jmp .UNIQUE26
NOP
NOP
NOP
NOP
NOP
.UNIQUE26: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE27
NOP
NOP
NOP
NOP
NOP
.UNIQUE27: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE28
NOP
NOP
NOP
NOP
NOP
.UNIQUE28: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE29
NOP
NOP
NOP
NOP
NOP
.UNIQUE29: 
	movq	16(%rax), %rdx
 jmp .UNIQUE30
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
.UNIQUE31: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE32
NOP
NOP
NOP
NOP
NOP
.UNIQUE32: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE33
NOP
NOP
NOP
NOP
NOP
.UNIQUE33: 
	movq	24(%rax), %rdx
 jmp .UNIQUE34
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
.UNIQUE35: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE36
NOP
NOP
NOP
NOP
NOP
.UNIQUE36: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE37
NOP
NOP
NOP
NOP
NOP
.UNIQUE37: 
	ret
	.cfi_endproc
.LFE3:
	.size	copy_nodes_ptr, .-copy_nodes_ptr
	.section	.rodata
.LC0:
	.string	"alloc_list:malloc failed.\n"
	.text
	.globl	alloc_list
	.type	alloc_list, @function
alloc_list:
.LFB4:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE38
NOP
NOP
NOP
NOP
NOP
.UNIQUE38: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE39
NOP
NOP
NOP
NOP
NOP
.UNIQUE39: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE40
NOP
NOP
NOP
NOP
NOP
.UNIQUE40: 
	subq	$48, %rsp
 jmp .UNIQUE41
NOP
NOP
NOP
NOP
NOP
.UNIQUE41: 
	movq	%rdi, -40(%rbp)
 jmp .UNIQUE42
NOP
NOP
NOP
NOP
NOP
.UNIQUE42: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE43
NOP
NOP
NOP
NOP
NOP
.UNIQUE43: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE44
NOP
NOP
NOP
NOP
NOP
.UNIQUE44: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE45
NOP
NOP
NOP
NOP
NOP
.UNIQUE45: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE46
NOP
NOP
NOP
NOP
NOP
.UNIQUE46: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE47
NOP
NOP
NOP
NOP
NOP
.UNIQUE47: 
	movq	$1, -8(%rbp)
 jmp .UNIQUE48
NOP
NOP
NOP
NOP
NOP
.UNIQUE48: 
	jmp	.L4
.L8:
 jmp .UNIQUE49
NOP
NOP
NOP
NOP
NOP
.UNIQUE49: 
	movl	$32, %edi
 jmp .UNIQUE50
NOP
NOP
NOP
NOP
NOP
.UNIQUE50: 
	call	malloc
 jmp .UNIQUE51
NOP
NOP
NOP
NOP
NOP
.UNIQUE51: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE52
NOP
NOP
NOP
NOP
NOP
.UNIQUE52: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE53
NOP
NOP
NOP
NOP
NOP
.UNIQUE53: 
	jne	.L5
 jmp .UNIQUE54
NOP
NOP
NOP
NOP
NOP
.UNIQUE54: 
	movl	$.LC0, %edi
 jmp .UNIQUE55
NOP
NOP
NOP
NOP
NOP
.UNIQUE55: 
	call	perror
 jmp .UNIQUE56
NOP
NOP
NOP
NOP
NOP
.UNIQUE56: 
	movl	$42, %edi
 jmp .UNIQUE57
NOP
NOP
NOP
NOP
NOP
.UNIQUE57: 
	call	exit
.L5:
 jmp .UNIQUE58
NOP
NOP
NOP
NOP
NOP
.UNIQUE58: 
	cmpq	$1, -8(%rbp)
 jmp .UNIQUE59
NOP
NOP
NOP
NOP
NOP
.UNIQUE59: 
	jne	.L6
 jmp .UNIQUE60
NOP
NOP
NOP
NOP
NOP
.UNIQUE60: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE61
NOP
NOP
NOP
NOP
NOP
.UNIQUE61: 
	movq	%rax, -32(%rbp)
.L6:
 jmp .UNIQUE62
NOP
NOP
NOP
NOP
NOP
.UNIQUE62: 
	cmpq	$1, -8(%rbp)
 jmp .UNIQUE63
NOP
NOP
NOP
NOP
NOP
.UNIQUE63: 
	jle	.L7
 jmp .UNIQUE64
NOP
NOP
NOP
NOP
NOP
.UNIQUE64: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE65
NOP
NOP
NOP
NOP
NOP
.UNIQUE65: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE66
NOP
NOP
NOP
NOP
NOP
.UNIQUE66: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE67
NOP
NOP
NOP
NOP
NOP
.UNIQUE67: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE68
NOP
NOP
NOP
NOP
NOP
.UNIQUE68: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE69
NOP
NOP
NOP
NOP
NOP
.UNIQUE69: 
	movq	%rdx, 24(%rax)
.L7:
 jmp .UNIQUE70
NOP
NOP
NOP
NOP
NOP
.UNIQUE70: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE71
NOP
NOP
NOP
NOP
NOP
.UNIQUE71: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE72
NOP
NOP
NOP
NOP
NOP
.UNIQUE72: 
	addq	$1, -8(%rbp)
.L4:
 jmp .UNIQUE73
NOP
NOP
NOP
NOP
NOP
.UNIQUE73: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE74
NOP
NOP
NOP
NOP
NOP
.UNIQUE74: 
	cmpq	-40(%rbp), %rax
 jmp .UNIQUE75
NOP
NOP
NOP
NOP
NOP
.UNIQUE75: 
	jle	.L8
 jmp .UNIQUE76
NOP
NOP
NOP
NOP
NOP
.UNIQUE76: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE77
NOP
NOP
NOP
NOP
NOP
.UNIQUE77: 
	jle	.L9
 jmp .UNIQUE78
NOP
NOP
NOP
NOP
NOP
.UNIQUE78: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE79
NOP
NOP
NOP
NOP
NOP
.UNIQUE79: 
	movq	$0, 16(%rax)
 jmp .UNIQUE80
NOP
NOP
NOP
NOP
NOP
.UNIQUE80: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE81
NOP
NOP
NOP
NOP
NOP
.UNIQUE81: 
	movq	$0, 24(%rax)
.L9:
 jmp .UNIQUE82
NOP
NOP
NOP
NOP
NOP
.UNIQUE82: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE83
NOP
NOP
NOP
NOP
NOP
.UNIQUE83: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE84
NOP
NOP
NOP
NOP
NOP
.UNIQUE84: 
	ret
	.cfi_endproc
.LFE4:
	.size	alloc_list, .-alloc_list
	.section	.rodata
	.align 8
.LC1:
	.string	"add_node_to_list:malloc failed.\n"
	.text
	.globl	add_node_to_list
	.type	add_node_to_list, @function
add_node_to_list:
.LFB5:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE85
NOP
NOP
NOP
NOP
NOP
.UNIQUE85: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE86
NOP
NOP
NOP
NOP
NOP
.UNIQUE86: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE87
NOP
NOP
NOP
NOP
NOP
.UNIQUE87: 
	subq	$64, %rsp
 jmp .UNIQUE88
NOP
NOP
NOP
NOP
NOP
.UNIQUE88: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE89
NOP
NOP
NOP
NOP
NOP
.UNIQUE89: 
	movl	$32, %edi
 jmp .UNIQUE90
NOP
NOP
NOP
NOP
NOP
.UNIQUE90: 
	call	malloc
 jmp .UNIQUE91
NOP
NOP
NOP
NOP
NOP
.UNIQUE91: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE92
NOP
NOP
NOP
NOP
NOP
.UNIQUE92: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE93
NOP
NOP
NOP
NOP
NOP
.UNIQUE93: 
	jne	.L12
 jmp .UNIQUE94
NOP
NOP
NOP
NOP
NOP
.UNIQUE94: 
	movl	$.LC1, %edi
 jmp .UNIQUE95
NOP
NOP
NOP
NOP
NOP
.UNIQUE95: 
	call	perror
 jmp .UNIQUE96
NOP
NOP
NOP
NOP
NOP
.UNIQUE96: 
	movl	$42, %edi
 jmp .UNIQUE97
NOP
NOP
NOP
NOP
NOP
.UNIQUE97: 
	call	exit
.L12:
 jmp .UNIQUE98
NOP
NOP
NOP
NOP
NOP
.UNIQUE98: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE99
NOP
NOP
NOP
NOP
NOP
.UNIQUE99: 
	movq	16(%rbp), %rdx
 jmp .UNIQUE100
NOP
NOP
NOP
NOP
NOP
.UNIQUE100: 
	movq	%rdx, (%rsp)
 jmp .UNIQUE101
NOP
NOP
NOP
NOP
NOP
.UNIQUE101: 
	movq	24(%rbp), %rdx
 jmp .UNIQUE102
NOP
NOP
NOP
NOP
NOP
.UNIQUE102: 
	movq	%rdx, 8(%rsp)
 jmp .UNIQUE103
NOP
NOP
NOP
NOP
NOP
.UNIQUE103: 
	movq	32(%rbp), %rdx
 jmp .UNIQUE104
NOP
NOP
NOP
NOP
NOP
.UNIQUE104: 
	movq	%rdx, 16(%rsp)
 jmp .UNIQUE105
NOP
NOP
NOP
NOP
NOP
.UNIQUE105: 
	movq	40(%rbp), %rdx
 jmp .UNIQUE106
NOP
NOP
NOP
NOP
NOP
.UNIQUE106: 
	movq	%rdx, 24(%rsp)
 jmp .UNIQUE107
NOP
NOP
NOP
NOP
NOP
.UNIQUE107: 
	movq	%rax, %rdi
 jmp .UNIQUE108
NOP
NOP
NOP
NOP
NOP
.UNIQUE108: 
	call	copy_nodes
 jmp .UNIQUE109
NOP
NOP
NOP
NOP
NOP
.UNIQUE109: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE110
NOP
NOP
NOP
NOP
NOP
.UNIQUE110: 
	jne	.L13
 jmp .UNIQUE111
NOP
NOP
NOP
NOP
NOP
.UNIQUE111: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE112
NOP
NOP
NOP
NOP
NOP
.UNIQUE112: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE113
NOP
NOP
NOP
NOP
NOP
.UNIQUE113: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE114
NOP
NOP
NOP
NOP
NOP
.UNIQUE114: 
	movq	$0, 16(%rax)
 jmp .UNIQUE115
NOP
NOP
NOP
NOP
NOP
.UNIQUE115: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE116
NOP
NOP
NOP
NOP
NOP
.UNIQUE116: 
	movq	$0, 24(%rax)
 jmp .UNIQUE117
NOP
NOP
NOP
NOP
NOP
.UNIQUE117: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE118
NOP
NOP
NOP
NOP
NOP
.UNIQUE118: 
	jmp	.L14
.L13:
 jmp .UNIQUE119
NOP
NOP
NOP
NOP
NOP
.UNIQUE119: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE120
NOP
NOP
NOP
NOP
NOP
.UNIQUE120: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE121
NOP
NOP
NOP
NOP
NOP
.UNIQUE121: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE122
NOP
NOP
NOP
NOP
NOP
.UNIQUE122: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE123
NOP
NOP
NOP
NOP
NOP
.UNIQUE123: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE124
NOP
NOP
NOP
NOP
NOP
.UNIQUE124: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE125
NOP
NOP
NOP
NOP
NOP
.UNIQUE125: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE126
NOP
NOP
NOP
NOP
NOP
.UNIQUE126: 
	movq	$0, 24(%rax)
 jmp .UNIQUE127
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
.UNIQUE128: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE129
NOP
NOP
NOP
NOP
NOP
.UNIQUE129: 
	movq	-24(%rbp), %rax
.L14:
 jmp .UNIQUE130
NOP
NOP
NOP
NOP
NOP
.UNIQUE130: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE131
NOP
NOP
NOP
NOP
NOP
.UNIQUE131: 
	ret
	.cfi_endproc
.LFE5:
	.size	add_node_to_list, .-add_node_to_list
	.globl	delete_node_from_list
	.type	delete_node_from_list, @function
delete_node_from_list:
.LFB6:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE132
NOP
NOP
NOP
NOP
NOP
.UNIQUE132: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE133
NOP
NOP
NOP
NOP
NOP
.UNIQUE133: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE134
NOP
NOP
NOP
NOP
NOP
.UNIQUE134: 
	subq	$32, %rsp
 jmp .UNIQUE135
NOP
NOP
NOP
NOP
NOP
.UNIQUE135: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE136
NOP
NOP
NOP
NOP
NOP
.UNIQUE136: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE137
NOP
NOP
NOP
NOP
NOP
.UNIQUE137: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE138
NOP
NOP
NOP
NOP
NOP
.UNIQUE138: 
	movq	16(%rax), %rax
 jmp .UNIQUE139
NOP
NOP
NOP
NOP
NOP
.UNIQUE139: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE140
NOP
NOP
NOP
NOP
NOP
.UNIQUE140: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE141
NOP
NOP
NOP
NOP
NOP
.UNIQUE141: 
	movq	24(%rax), %rax
 jmp .UNIQUE142
NOP
NOP
NOP
NOP
NOP
.UNIQUE142: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE143
NOP
NOP
NOP
NOP
NOP
.UNIQUE143: 
	cmpq	$0, -16(%rbp)
 jmp .UNIQUE144
NOP
NOP
NOP
NOP
NOP
.UNIQUE144: 
	jne	.L16
 jmp .UNIQUE145
NOP
NOP
NOP
NOP
NOP
.UNIQUE145: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE146
NOP
NOP
NOP
NOP
NOP
.UNIQUE146: 
	jne	.L16
 jmp .UNIQUE147
NOP
NOP
NOP
NOP
NOP
.UNIQUE147: 
	movq	$0, -24(%rbp)
 jmp .UNIQUE148
NOP
NOP
NOP
NOP
NOP
.UNIQUE148: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE149
NOP
NOP
NOP
NOP
NOP
.UNIQUE149: 
	movq	%rax, %rdi
 jmp .UNIQUE150
NOP
NOP
NOP
NOP
NOP
.UNIQUE150: 
	call	free
 jmp .UNIQUE151
NOP
NOP
NOP
NOP
NOP
.UNIQUE151: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE152
NOP
NOP
NOP
NOP
NOP
.UNIQUE152: 
	jmp	.L17
.L16:
 jmp .UNIQUE153
NOP
NOP
NOP
NOP
NOP
.UNIQUE153: 
	cmpq	$0, -16(%rbp)
 jmp .UNIQUE154
NOP
NOP
NOP
NOP
NOP
.UNIQUE154: 
	jne	.L18
 jmp .UNIQUE155
NOP
NOP
NOP
NOP
NOP
.UNIQUE155: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE156
NOP
NOP
NOP
NOP
NOP
.UNIQUE156: 
	je	.L18
 jmp .UNIQUE157
NOP
NOP
NOP
NOP
NOP
.UNIQUE157: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE158
NOP
NOP
NOP
NOP
NOP
.UNIQUE158: 
	movq	$0, 16(%rax)
 jmp .UNIQUE159
NOP
NOP
NOP
NOP
NOP
.UNIQUE159: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE160
NOP
NOP
NOP
NOP
NOP
.UNIQUE160: 
	movq	%rax, %rdi
 jmp .UNIQUE161
NOP
NOP
NOP
NOP
NOP
.UNIQUE161: 
	call	free
 jmp .UNIQUE162
NOP
NOP
NOP
NOP
NOP
.UNIQUE162: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE163
NOP
NOP
NOP
NOP
NOP
.UNIQUE163: 
	jmp	.L17
.L18:
 jmp .UNIQUE164
NOP
NOP
NOP
NOP
NOP
.UNIQUE164: 
	cmpq	$0, -16(%rbp)
 jmp .UNIQUE165
NOP
NOP
NOP
NOP
NOP
.UNIQUE165: 
	je	.L19
 jmp .UNIQUE166
NOP
NOP
NOP
NOP
NOP
.UNIQUE166: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE167
NOP
NOP
NOP
NOP
NOP
.UNIQUE167: 
	jne	.L19
 jmp .UNIQUE168
NOP
NOP
NOP
NOP
NOP
.UNIQUE168: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE169
NOP
NOP
NOP
NOP
NOP
.UNIQUE169: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE170
NOP
NOP
NOP
NOP
NOP
.UNIQUE170: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE171
NOP
NOP
NOP
NOP
NOP
.UNIQUE171: 
	movq	$0, 24(%rax)
 jmp .UNIQUE172
NOP
NOP
NOP
NOP
NOP
.UNIQUE172: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE173
NOP
NOP
NOP
NOP
NOP
.UNIQUE173: 
	movq	%rax, %rdi
 jmp .UNIQUE174
NOP
NOP
NOP
NOP
NOP
.UNIQUE174: 
	call	free
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
	jmp	.L17
.L19:
 jmp .UNIQUE177
NOP
NOP
NOP
NOP
NOP
.UNIQUE177: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE178
NOP
NOP
NOP
NOP
NOP
.UNIQUE178: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE179
NOP
NOP
NOP
NOP
NOP
.UNIQUE179: 
	movq	%rdx, 24(%rax)
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
	movq	-16(%rbp), %rdx
 jmp .UNIQUE182
NOP
NOP
NOP
NOP
NOP
.UNIQUE182: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE183
NOP
NOP
NOP
NOP
NOP
.UNIQUE183: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE184
NOP
NOP
NOP
NOP
NOP
.UNIQUE184: 
	movq	%rax, %rdi
 jmp .UNIQUE185
NOP
NOP
NOP
NOP
NOP
.UNIQUE185: 
	call	free
 jmp .UNIQUE186
NOP
NOP
NOP
NOP
NOP
.UNIQUE186: 
	movq	-24(%rbp), %rax
.L17:
 jmp .UNIQUE187
NOP
NOP
NOP
NOP
NOP
.UNIQUE187: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE188
NOP
NOP
NOP
NOP
NOP
.UNIQUE188: 
	ret
	.cfi_endproc
.LFE6:
	.size	delete_node_from_list, .-delete_node_from_list
	.globl	free_list
	.type	free_list, @function
free_list:
.LFB7:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE189
NOP
NOP
NOP
NOP
NOP
.UNIQUE189: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE190
NOP
NOP
NOP
NOP
NOP
.UNIQUE190: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE191
NOP
NOP
NOP
NOP
NOP
.UNIQUE191: 
	subq	$32, %rsp
 jmp .UNIQUE192
NOP
NOP
NOP
NOP
NOP
.UNIQUE192: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE193
NOP
NOP
NOP
NOP
NOP
.UNIQUE193: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE194
NOP
NOP
NOP
NOP
NOP
.UNIQUE194: 
	jne	.L21
 jmp .UNIQUE195
NOP
NOP
NOP
NOP
NOP
.UNIQUE195: 
	jmp	.L20
.L21:
 jmp .UNIQUE196
NOP
NOP
NOP
NOP
NOP
.UNIQUE196: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE197
NOP
NOP
NOP
NOP
NOP
.UNIQUE197: 
	movq	16(%rax), %rax
 jmp .UNIQUE198
NOP
NOP
NOP
NOP
NOP
.UNIQUE198: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE199
NOP
NOP
NOP
NOP
NOP
.UNIQUE199: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE200
NOP
NOP
NOP
NOP
NOP
.UNIQUE200: 
	movq	%rax, -8(%rbp)
.L24:
 jmp .UNIQUE201
NOP
NOP
NOP
NOP
NOP
.UNIQUE201: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE202
NOP
NOP
NOP
NOP
NOP
.UNIQUE202: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE203
NOP
NOP
NOP
NOP
NOP
.UNIQUE203: 
	movq	%rdx, %rsi
 jmp .UNIQUE204
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
.UNIQUE205: 
	call	delete_node_from_list
 jmp .UNIQUE206
NOP
NOP
NOP
NOP
NOP
.UNIQUE206: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE207
NOP
NOP
NOP
NOP
NOP
.UNIQUE207: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE208
NOP
NOP
NOP
NOP
NOP
.UNIQUE208: 
	cmpq	$0, -16(%rbp)
 jmp .UNIQUE209
NOP
NOP
NOP
NOP
NOP
.UNIQUE209: 
	jne	.L23
 jmp .UNIQUE210
NOP
NOP
NOP
NOP
NOP
.UNIQUE210: 
	jmp	.L20
.L23:
 jmp .UNIQUE211
NOP
NOP
NOP
NOP
NOP
.UNIQUE211: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE212
NOP
NOP
NOP
NOP
NOP
.UNIQUE212: 
	movq	16(%rax), %rax
 jmp .UNIQUE213
NOP
NOP
NOP
NOP
NOP
.UNIQUE213: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE214
NOP
NOP
NOP
NOP
NOP
.UNIQUE214: 
	jmp	.L24
.L20:
 jmp .UNIQUE215
NOP
NOP
NOP
NOP
NOP
.UNIQUE215: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE216
NOP
NOP
NOP
NOP
NOP
.UNIQUE216: 
	ret
	.cfi_endproc
.LFE7:
	.size	free_list, .-free_list
	.section	.rodata
.LC2:
	.string	"List is empty."
	.align 8
.LC3:
	.string	"Node %ld: Length in chunks=%ld, pointer to mem=%ld\n"
	.text
	.globl	print_list
	.type	print_list, @function
print_list:
.LFB8:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE217
NOP
NOP
NOP
NOP
NOP
.UNIQUE217: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE218
NOP
NOP
NOP
NOP
NOP
.UNIQUE218: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE219
NOP
NOP
NOP
NOP
NOP
.UNIQUE219: 
	subq	$32, %rsp
 jmp .UNIQUE220
NOP
NOP
NOP
NOP
NOP
.UNIQUE220: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE221
NOP
NOP
NOP
NOP
NOP
.UNIQUE221: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE222
NOP
NOP
NOP
NOP
NOP
.UNIQUE222: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE223
NOP
NOP
NOP
NOP
NOP
.UNIQUE223: 
	jne	.L26
 jmp .UNIQUE224
NOP
NOP
NOP
NOP
NOP
.UNIQUE224: 
	movl	$.LC2, %edi
 jmp .UNIQUE225
NOP
NOP
NOP
NOP
NOP
.UNIQUE225: 
	call	puts
 jmp .UNIQUE226
NOP
NOP
NOP
NOP
NOP
.UNIQUE226: 
	jmp	.L25
.L26:
 jmp .UNIQUE227
NOP
NOP
NOP
NOP
NOP
.UNIQUE227: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE228
NOP
NOP
NOP
NOP
NOP
.UNIQUE228: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE229
NOP
NOP
NOP
NOP
NOP
.UNIQUE229: 
	jmp	.L28
.L29:
 jmp .UNIQUE230
NOP
NOP
NOP
NOP
NOP
.UNIQUE230: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE231
NOP
NOP
NOP
NOP
NOP
.UNIQUE231: 
	movq	8(%rax), %rax
 jmp .UNIQUE232
NOP
NOP
NOP
NOP
NOP
.UNIQUE232: 
	movq	%rax, %rcx
 jmp .UNIQUE233
NOP
NOP
NOP
NOP
NOP
.UNIQUE233: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE234
NOP
NOP
NOP
NOP
NOP
.UNIQUE234: 
	movq	(%rax), %rdx
 jmp .UNIQUE235
NOP
NOP
NOP
NOP
NOP
.UNIQUE235: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE236
NOP
NOP
NOP
NOP
NOP
.UNIQUE236: 
	movq	%rax, %rsi
 jmp .UNIQUE237
NOP
NOP
NOP
NOP
NOP
.UNIQUE237: 
	movl	$.LC3, %edi
 jmp .UNIQUE238
NOP
NOP
NOP
NOP
NOP
.UNIQUE238: 
	movl	$0, %eax
 jmp .UNIQUE239
NOP
NOP
NOP
NOP
NOP
.UNIQUE239: 
	call	printf
 jmp .UNIQUE240
NOP
NOP
NOP
NOP
NOP
.UNIQUE240: 
	addq	$1, -8(%rbp)
 jmp .UNIQUE241
NOP
NOP
NOP
NOP
NOP
.UNIQUE241: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE242
NOP
NOP
NOP
NOP
NOP
.UNIQUE242: 
	movq	16(%rax), %rax
 jmp .UNIQUE243
NOP
NOP
NOP
NOP
NOP
.UNIQUE243: 
	movq	%rax, -16(%rbp)
.L28:
 jmp .UNIQUE244
NOP
NOP
NOP
NOP
NOP
.UNIQUE244: 
	cmpq	$0, -16(%rbp)
 jmp .UNIQUE245
NOP
NOP
NOP
NOP
NOP
.UNIQUE245: 
	jne	.L29
.L25:
 jmp .UNIQUE246
NOP
NOP
NOP
NOP
NOP
.UNIQUE246: 
	leave
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
.LFE8:
	.size	print_list, .-print_list
	.section	.rodata
.LC4:
	.string	"Free chunks list:"
.LC5:
	.string	"Allocated chunks list:"
	.text
	.globl	print_lists
	.type	print_lists, @function
print_lists:
.LFB9:
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
	movl	$.LC4, %edi
 jmp .UNIQUE251
NOP
NOP
NOP
NOP
NOP
.UNIQUE251: 
	call	puts
 jmp .UNIQUE252
NOP
NOP
NOP
NOP
NOP
.UNIQUE252: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE253
NOP
NOP
NOP
NOP
NOP
.UNIQUE253: 
	movq	%rax, %rdi
 jmp .UNIQUE254
NOP
NOP
NOP
NOP
NOP
.UNIQUE254: 
	call	print_list
 jmp .UNIQUE255
NOP
NOP
NOP
NOP
NOP
.UNIQUE255: 
	movl	$.LC5, %edi
 jmp .UNIQUE256
NOP
NOP
NOP
NOP
NOP
.UNIQUE256: 
	call	puts
 jmp .UNIQUE257
NOP
NOP
NOP
NOP
NOP
.UNIQUE257: 
	movq	allocated_chunks_list(%rip), %rax
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
	call	print_list
 jmp .UNIQUE260
NOP
NOP
NOP
NOP
NOP
.UNIQUE260: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE261
NOP
NOP
NOP
NOP
NOP
.UNIQUE261: 
	ret
	.cfi_endproc
.LFE9:
	.size	print_lists, .-print_lists
	.globl	find_number_of_useful_chunks
	.type	find_number_of_useful_chunks, @function
find_number_of_useful_chunks:
.LFB10:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE262
NOP
NOP
NOP
NOP
NOP
.UNIQUE262: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE263
NOP
NOP
NOP
NOP
NOP
.UNIQUE263: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE264
NOP
NOP
NOP
NOP
NOP
.UNIQUE264: 
	movq	%rdi, -40(%rbp)
 jmp .UNIQUE265
NOP
NOP
NOP
NOP
NOP
.UNIQUE265: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE266
NOP
NOP
NOP
NOP
NOP
.UNIQUE266: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE267
NOP
NOP
NOP
NOP
NOP
.UNIQUE267: 
	movq	$5, -16(%rbp)
 jmp .UNIQUE268
NOP
NOP
NOP
NOP
NOP
.UNIQUE268: 
	movq	$4, -8(%rbp)
 jmp .UNIQUE269
NOP
NOP
NOP
NOP
NOP
.UNIQUE269: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE270
NOP
NOP
NOP
NOP
NOP
.UNIQUE270: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE271
NOP
NOP
NOP
NOP
NOP
.UNIQUE271: 
	addq	%rdx, %rax
 jmp .UNIQUE272
NOP
NOP
NOP
NOP
NOP
.UNIQUE272: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE273
NOP
NOP
NOP
NOP
NOP
.UNIQUE273: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE274
NOP
NOP
NOP
NOP
NOP
.UNIQUE274: 
	leaq	(%rdx,%rcx), %rsi
 jmp .UNIQUE275
NOP
NOP
NOP
NOP
NOP
.UNIQUE275: 
	cqto
 jmp .UNIQUE276
NOP
NOP
NOP
NOP
NOP
.UNIQUE276: 
	idivq	%rsi
 jmp .UNIQUE277
NOP
NOP
NOP
NOP
NOP
.UNIQUE277: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE278
NOP
NOP
NOP
NOP
NOP
.UNIQUE278: 
	ret
	.cfi_endproc
.LFE10:
	.size	find_number_of_useful_chunks, .-find_number_of_useful_chunks
	.globl	init_memory_manager
	.type	init_memory_manager, @function
init_memory_manager:
.LFB11:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE279
NOP
NOP
NOP
NOP
NOP
.UNIQUE279: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE280
NOP
NOP
NOP
NOP
NOP
.UNIQUE280: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE281
NOP
NOP
NOP
NOP
NOP
.UNIQUE281: 
	subq	$80, %rsp
 jmp .UNIQUE282
NOP
NOP
NOP
NOP
NOP
.UNIQUE282: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE283
NOP
NOP
NOP
NOP
NOP
.UNIQUE283: 
	movq	%rax, %rdi
 jmp .UNIQUE284
NOP
NOP
NOP
NOP
NOP
.UNIQUE284: 
	call	find_number_of_useful_chunks
 jmp .UNIQUE285
NOP
NOP
NOP
NOP
NOP
.UNIQUE285: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE286
NOP
NOP
NOP
NOP
NOP
.UNIQUE286: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE287
NOP
NOP
NOP
NOP
NOP
.UNIQUE287: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE288
NOP
NOP
NOP
NOP
NOP
.UNIQUE288: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE289
NOP
NOP
NOP
NOP
NOP
.UNIQUE289: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE290
NOP
NOP
NOP
NOP
NOP
.UNIQUE290: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE291
NOP
NOP
NOP
NOP
NOP
.UNIQUE291: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE292
NOP
NOP
NOP
NOP
NOP
.UNIQUE292: 
	movq	$0, free_chunks_list(%rip)
 jmp .UNIQUE293
NOP
NOP
NOP
NOP
NOP
.UNIQUE293: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE294
NOP
NOP
NOP
NOP
NOP
.UNIQUE294: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE295
NOP
NOP
NOP
NOP
NOP
.UNIQUE295: 
	movq	%rdx, (%rsp)
 jmp .UNIQUE296
NOP
NOP
NOP
NOP
NOP
.UNIQUE296: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE297
NOP
NOP
NOP
NOP
NOP
.UNIQUE297: 
	movq	%rdx, 8(%rsp)
 jmp .UNIQUE298
NOP
NOP
NOP
NOP
NOP
.UNIQUE298: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE299
NOP
NOP
NOP
NOP
NOP
.UNIQUE299: 
	movq	%rdx, 16(%rsp)
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
	movq	%rdx, 24(%rsp)
 jmp .UNIQUE302
NOP
NOP
NOP
NOP
NOP
.UNIQUE302: 
	movq	%rax, %rdi
 jmp .UNIQUE303
NOP
NOP
NOP
NOP
NOP
.UNIQUE303: 
	call	add_node_to_list
 jmp .UNIQUE304
NOP
NOP
NOP
NOP
NOP
.UNIQUE304: 
	movq	%rax, free_chunks_list(%rip)
 jmp .UNIQUE305
NOP
NOP
NOP
NOP
NOP
.UNIQUE305: 
	movq	$1, free_chunks_num(%rip)
 jmp .UNIQUE306
NOP
NOP
NOP
NOP
NOP
.UNIQUE306: 
	movq	$0, allocated_chunks_list(%rip)
 jmp .UNIQUE307
NOP
NOP
NOP
NOP
NOP
.UNIQUE307: 
	movq	$0, allocated_chunks_num(%rip)
 jmp .UNIQUE308
NOP
NOP
NOP
NOP
NOP
.UNIQUE308: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE309
NOP
NOP
NOP
NOP
NOP
.UNIQUE309: 
	ret
	.cfi_endproc
.LFE11:
	.size	init_memory_manager, .-init_memory_manager
	.globl	free_memory_manager_structures
	.type	free_memory_manager_structures, @function
free_memory_manager_structures:
.LFB12:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE310
NOP
NOP
NOP
NOP
NOP
.UNIQUE310: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE311
NOP
NOP
NOP
NOP
NOP
.UNIQUE311: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE312
NOP
NOP
NOP
NOP
NOP
.UNIQUE312: 
	movq	$0, free_chunks_num(%rip)
 jmp .UNIQUE313
NOP
NOP
NOP
NOP
NOP
.UNIQUE313: 
	movq	$0, allocated_chunks_num(%rip)
 jmp .UNIQUE314
NOP
NOP
NOP
NOP
NOP
.UNIQUE314: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE315
NOP
NOP
NOP
NOP
NOP
.UNIQUE315: 
	movq	%rax, %rdi
 jmp .UNIQUE316
NOP
NOP
NOP
NOP
NOP
.UNIQUE316: 
	call	free_list
 jmp .UNIQUE317
NOP
NOP
NOP
NOP
NOP
.UNIQUE317: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE318
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
.UNIQUE319: 
	call	free_list
 jmp .UNIQUE320
NOP
NOP
NOP
NOP
NOP
.UNIQUE320: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE321
NOP
NOP
NOP
NOP
NOP
.UNIQUE321: 
	ret
	.cfi_endproc
.LFE12:
	.size	free_memory_manager_structures, .-free_memory_manager_structures
	.section	.rodata
	.align 8
.LC6:
	.string	"Great!. No need to allocate more than the defined amount."
	.align 8
.LC7:
	.string	"Whoops. We need to allocate a bit more space."
.LC8:
	.string	"allocate_mem:malloc failed.\n"
	.text
	.globl	allocate_mem
	.type	allocate_mem, @function
allocate_mem:
.LFB13:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE322
NOP
NOP
NOP
NOP
NOP
.UNIQUE322: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE323
NOP
NOP
NOP
NOP
NOP
.UNIQUE323: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE324
NOP
NOP
NOP
NOP
NOP
.UNIQUE324: 
	subq	$48, %rsp
 jmp .UNIQUE325
NOP
NOP
NOP
NOP
NOP
.UNIQUE325: 
	movq	$2048, -40(%rbp)
 jmp .UNIQUE326
NOP
NOP
NOP
NOP
NOP
.UNIQUE326: 
	movq	$5, -32(%rbp)
 jmp .UNIQUE327
NOP
NOP
NOP
NOP
NOP
.UNIQUE327: 
	movq	$4, -24(%rbp)
 jmp .UNIQUE328
NOP
NOP
NOP
NOP
NOP
.UNIQUE328: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE329
NOP
NOP
NOP
NOP
NOP
.UNIQUE329: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE330
NOP
NOP
NOP
NOP
NOP
.UNIQUE330: 
	addq	%rdx, %rax
 jmp .UNIQUE331
NOP
NOP
NOP
NOP
NOP
.UNIQUE331: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE332
NOP
NOP
NOP
NOP
NOP
.UNIQUE332: 
	movq	-32(%rbp), %rcx
 jmp .UNIQUE333
NOP
NOP
NOP
NOP
NOP
.UNIQUE333: 
	leaq	(%rdx,%rcx), %rsi
 jmp .UNIQUE334
NOP
NOP
NOP
NOP
NOP
.UNIQUE334: 
	cqto
 jmp .UNIQUE335
NOP
NOP
NOP
NOP
NOP
.UNIQUE335: 
	idivq	%rsi
 jmp .UNIQUE336
NOP
NOP
NOP
NOP
NOP
.UNIQUE336: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE337
NOP
NOP
NOP
NOP
NOP
.UNIQUE337: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE338
NOP
NOP
NOP
NOP
NOP
.UNIQUE338: 
	imulq	-24(%rbp), %rax
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
	subq	$1, %rax
 jmp .UNIQUE342
NOP
NOP
NOP
NOP
NOP
.UNIQUE342: 
	imulq	-32(%rbp), %rax
 jmp .UNIQUE343
NOP
NOP
NOP
NOP
NOP
.UNIQUE343: 
	addq	%rdx, %rax
 jmp .UNIQUE344
NOP
NOP
NOP
NOP
NOP
.UNIQUE344: 
	cmpq	-40(%rbp), %rax
 jmp .UNIQUE345
NOP
NOP
NOP
NOP
NOP
.UNIQUE345: 
	jne	.L36
 jmp .UNIQUE346
NOP
NOP
NOP
NOP
NOP
.UNIQUE346: 
	movl	$.LC6, %edi
 jmp .UNIQUE347
NOP
NOP
NOP
NOP
NOP
.UNIQUE347: 
	call	puts
 jmp .UNIQUE348
NOP
NOP
NOP
NOP
NOP
.UNIQUE348: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE349
NOP
NOP
NOP
NOP
NOP
.UNIQUE349: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE350
NOP
NOP
NOP
NOP
NOP
.UNIQUE350: 
	jmp	.L37
.L36:
 jmp .UNIQUE351
NOP
NOP
NOP
NOP
NOP
.UNIQUE351: 
	movl	$.LC7, %edi
 jmp .UNIQUE352
NOP
NOP
NOP
NOP
NOP
.UNIQUE352: 
	call	puts
 jmp .UNIQUE353
NOP
NOP
NOP
NOP
NOP
.UNIQUE353: 
	addq	$1, -16(%rbp)
 jmp .UNIQUE354
NOP
NOP
NOP
NOP
NOP
.UNIQUE354: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE355
NOP
NOP
NOP
NOP
NOP
.UNIQUE355: 
	imulq	-24(%rbp), %rax
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
	subq	$1, %rax
 jmp .UNIQUE359
NOP
NOP
NOP
NOP
NOP
.UNIQUE359: 
	imulq	-32(%rbp), %rax
 jmp .UNIQUE360
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
.UNIQUE361: 
	movq	%rax, -48(%rbp)
.L37:
 jmp .UNIQUE362
NOP
NOP
NOP
NOP
NOP
.UNIQUE362: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE363
NOP
NOP
NOP
NOP
NOP
.UNIQUE363: 
	movq	%rax, %rdi
 jmp .UNIQUE364
NOP
NOP
NOP
NOP
NOP
.UNIQUE364: 
	call	malloc
 jmp .UNIQUE365
NOP
NOP
NOP
NOP
NOP
.UNIQUE365: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE366
NOP
NOP
NOP
NOP
NOP
.UNIQUE366: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE367
NOP
NOP
NOP
NOP
NOP
.UNIQUE367: 
	jne	.L38
 jmp .UNIQUE368
NOP
NOP
NOP
NOP
NOP
.UNIQUE368: 
	movl	$.LC8, %edi
 jmp .UNIQUE369
NOP
NOP
NOP
NOP
NOP
.UNIQUE369: 
	call	perror
 jmp .UNIQUE370
NOP
NOP
NOP
NOP
NOP
.UNIQUE370: 
	movl	$42, %edi
 jmp .UNIQUE371
NOP
NOP
NOP
NOP
NOP
.UNIQUE371: 
	call	exit
.L38:
 jmp .UNIQUE372
NOP
NOP
NOP
NOP
NOP
.UNIQUE372: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE373
NOP
NOP
NOP
NOP
NOP
.UNIQUE373: 
	movq	%rax, total_bytes_allocated(%rip)
 jmp .UNIQUE374
NOP
NOP
NOP
NOP
NOP
.UNIQUE374: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE375
NOP
NOP
NOP
NOP
NOP
.UNIQUE375: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE376
NOP
NOP
NOP
NOP
NOP
.UNIQUE376: 
	ret
	.cfi_endproc
.LFE13:
	.size	allocate_mem, .-allocate_mem
	.globl	secure_malloc
	.type	secure_malloc, @function
secure_malloc:
.LFB14:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE377
NOP
NOP
NOP
NOP
NOP
.UNIQUE377: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE378
NOP
NOP
NOP
NOP
NOP
.UNIQUE378: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE379
NOP
NOP
NOP
NOP
NOP
.UNIQUE379: 
	subq	$96, %rsp
 jmp .UNIQUE380
NOP
NOP
NOP
NOP
NOP
.UNIQUE380: 
	movq	%rdi, -88(%rbp)
 jmp .UNIQUE381
NOP
NOP
NOP
NOP
NOP
.UNIQUE381: 
	movq	last_unused_memory(%rip), %rax
 jmp .UNIQUE382
NOP
NOP
NOP
NOP
NOP
.UNIQUE382: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE383
NOP
NOP
NOP
NOP
NOP
.UNIQUE383: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE384
NOP
NOP
NOP
NOP
NOP
.UNIQUE384: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE385
NOP
NOP
NOP
NOP
NOP
.UNIQUE385: 
	movq	$5, -48(%rbp)
 jmp .UNIQUE386
NOP
NOP
NOP
NOP
NOP
.UNIQUE386: 
	movq	$4, -40(%rbp)
 jmp .UNIQUE387
NOP
NOP
NOP
NOP
NOP
.UNIQUE387: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE388
NOP
NOP
NOP
NOP
NOP
.UNIQUE388: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE389
NOP
NOP
NOP
NOP
NOP
.UNIQUE389: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE390
NOP
NOP
NOP
NOP
NOP
.UNIQUE390: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE391
NOP
NOP
NOP
NOP
NOP
.UNIQUE391: 
	subq	%rax, %rdx
 jmp .UNIQUE392
NOP
NOP
NOP
NOP
NOP
.UNIQUE392: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE393
NOP
NOP
NOP
NOP
NOP
.UNIQUE393: 
	addq	%rdx, %rax
 jmp .UNIQUE394
NOP
NOP
NOP
NOP
NOP
.UNIQUE394: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE395
NOP
NOP
NOP
NOP
NOP
.UNIQUE395: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE396
NOP
NOP
NOP
NOP
NOP
.UNIQUE396: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE397
NOP
NOP
NOP
NOP
NOP
.UNIQUE397: 
	addq	%rdx, %rax
 jmp .UNIQUE398
NOP
NOP
NOP
NOP
NOP
.UNIQUE398: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE399
NOP
NOP
NOP
NOP
NOP
.UNIQUE399: 
	movq	-48(%rbp), %rcx
 jmp .UNIQUE400
NOP
NOP
NOP
NOP
NOP
.UNIQUE400: 
	leaq	(%rdx,%rcx), %rsi
 jmp .UNIQUE401
NOP
NOP
NOP
NOP
NOP
.UNIQUE401: 
	cqto
 jmp .UNIQUE402
NOP
NOP
NOP
NOP
NOP
.UNIQUE402: 
	idivq	%rsi
 jmp .UNIQUE403
NOP
NOP
NOP
NOP
NOP
.UNIQUE403: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE404
NOP
NOP
NOP
NOP
NOP
.UNIQUE404: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE405
NOP
NOP
NOP
NOP
NOP
.UNIQUE405: 
	imulq	-40(%rbp), %rax
 jmp .UNIQUE406
NOP
NOP
NOP
NOP
NOP
.UNIQUE406: 
	cmpq	-88(%rbp), %rax
 jmp .UNIQUE407
NOP
NOP
NOP
NOP
NOP
.UNIQUE407: 
	jge	.L41
 jmp .UNIQUE408
NOP
NOP
NOP
NOP
NOP
.UNIQUE408: 
	call	__errno_location
 jmp .UNIQUE409
NOP
NOP
NOP
NOP
NOP
.UNIQUE409: 
	movl	$12, (%rax)
 jmp .UNIQUE410
NOP
NOP
NOP
NOP
NOP
.UNIQUE410: 
	movl	$0, %eax
 jmp .UNIQUE411
NOP
NOP
NOP
NOP
NOP
.UNIQUE411: 
	jmp	.L42
.L41:
 jmp .UNIQUE412
NOP
NOP
NOP
NOP
NOP
.UNIQUE412: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE413
NOP
NOP
NOP
NOP
NOP
.UNIQUE413: 
	cqto
 jmp .UNIQUE414
NOP
NOP
NOP
NOP
NOP
.UNIQUE414: 
	idivq	-40(%rbp)
 jmp .UNIQUE415
NOP
NOP
NOP
NOP
NOP
.UNIQUE415: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE416
NOP
NOP
NOP
NOP
NOP
.UNIQUE416: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE417
NOP
NOP
NOP
NOP
NOP
.UNIQUE417: 
	imulq	-40(%rbp), %rax
 jmp .UNIQUE418
NOP
NOP
NOP
NOP
NOP
.UNIQUE418: 
	cmpq	-88(%rbp), %rax
 jmp .UNIQUE419
NOP
NOP
NOP
NOP
NOP
.UNIQUE419: 
	je	.L43
 jmp .UNIQUE420
NOP
NOP
NOP
NOP
NOP
.UNIQUE420: 
	addq	$1, -72(%rbp)
.L43:
 jmp .UNIQUE421
NOP
NOP
NOP
NOP
NOP
.UNIQUE421: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE422
NOP
NOP
NOP
NOP
NOP
.UNIQUE422: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE423
NOP
NOP
NOP
NOP
NOP
.UNIQUE423: 
	movq	last_unused_memory(%rip), %rdx
 jmp .UNIQUE424
NOP
NOP
NOP
NOP
NOP
.UNIQUE424: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE425
NOP
NOP
NOP
NOP
NOP
.UNIQUE425: 
	imulq	-40(%rbp), %rax
 jmp .UNIQUE426
NOP
NOP
NOP
NOP
NOP
.UNIQUE426: 
	movq	%rax, %rcx
 jmp .UNIQUE427
NOP
NOP
NOP
NOP
NOP
.UNIQUE427: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE428
NOP
NOP
NOP
NOP
NOP
.UNIQUE428: 
	subq	$1, %rax
 jmp .UNIQUE429
NOP
NOP
NOP
NOP
NOP
.UNIQUE429: 
	imulq	-48(%rbp), %rax
 jmp .UNIQUE430
NOP
NOP
NOP
NOP
NOP
.UNIQUE430: 
	addq	%rax, %rcx
 jmp .UNIQUE431
NOP
NOP
NOP
NOP
NOP
.UNIQUE431: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE432
NOP
NOP
NOP
NOP
NOP
.UNIQUE432: 
	addq	%rcx, %rax
 jmp .UNIQUE433
NOP
NOP
NOP
NOP
NOP
.UNIQUE433: 
	addq	%rdx, %rax
 jmp .UNIQUE434
NOP
NOP
NOP
NOP
NOP
.UNIQUE434: 
	movq	%rax, last_unused_memory(%rip)
 jmp .UNIQUE435
NOP
NOP
NOP
NOP
NOP
.UNIQUE435: 
	movq	-8(%rbp), %rax
.L42:
 jmp .UNIQUE436
NOP
NOP
NOP
NOP
NOP
.UNIQUE436: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE437
NOP
NOP
NOP
NOP
NOP
.UNIQUE437: 
	ret
	.cfi_endproc
.LFE14:
	.size	secure_malloc, .-secure_malloc
	.section	.rodata
	.align 8
.LC9:
	.string	"Attempted to read more keyshares that the ones stored\n"
	.text
	.globl	get_next_keyshare
	.type	get_next_keyshare, @function
get_next_keyshare:
.LFB15:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE438
NOP
NOP
NOP
NOP
NOP
.UNIQUE438: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE439
NOP
NOP
NOP
NOP
NOP
.UNIQUE439: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE440
NOP
NOP
NOP
NOP
NOP
.UNIQUE440: 
	subq	$16, %rsp
 jmp .UNIQUE441
NOP
NOP
NOP
NOP
NOP
.UNIQUE441: 
	movq	keyshare_input_file(%rip), %rax
 jmp .UNIQUE442
NOP
NOP
NOP
NOP
NOP
.UNIQUE442: 
	movq	%rax, %rdi
 jmp .UNIQUE443
NOP
NOP
NOP
NOP
NOP
.UNIQUE443: 
	call	feof
 jmp .UNIQUE444
NOP
NOP
NOP
NOP
NOP
.UNIQUE444: 
	testl	%eax, %eax
 jmp .UNIQUE445
NOP
NOP
NOP
NOP
NOP
.UNIQUE445: 
	je	.L45
 jmp .UNIQUE446
NOP
NOP
NOP
NOP
NOP
.UNIQUE446: 
	movl	$.LC9, %edi
 jmp .UNIQUE447
NOP
NOP
NOP
NOP
NOP
.UNIQUE447: 
	call	perror
 jmp .UNIQUE448
NOP
NOP
NOP
NOP
NOP
.UNIQUE448: 
	movl	$44, %edi
 jmp .UNIQUE449
NOP
NOP
NOP
NOP
NOP
.UNIQUE449: 
	call	exit
.L45:
 jmp .UNIQUE450
NOP
NOP
NOP
NOP
NOP
.UNIQUE450: 
	movq	keyshare_input_file(%rip), %rdx
 jmp .UNIQUE451
NOP
NOP
NOP
NOP
NOP
.UNIQUE451: 
	leaq	-1(%rbp), %rax
 jmp .UNIQUE452
NOP
NOP
NOP
NOP
NOP
.UNIQUE452: 
	movq	%rdx, %rcx
 jmp .UNIQUE453
NOP
NOP
NOP
NOP
NOP
.UNIQUE453: 
	movl	$1, %edx
 jmp .UNIQUE454
NOP
NOP
NOP
NOP
NOP
.UNIQUE454: 
	movl	$1, %esi
 jmp .UNIQUE455
NOP
NOP
NOP
NOP
NOP
.UNIQUE455: 
	movq	%rax, %rdi
 jmp .UNIQUE456
NOP
NOP
NOP
NOP
NOP
.UNIQUE456: 
	call	fread
 jmp .UNIQUE457
NOP
NOP
NOP
NOP
NOP
.UNIQUE457: 
	movzbl	-1(%rbp), %eax
 jmp .UNIQUE458
NOP
NOP
NOP
NOP
NOP
.UNIQUE458: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE459
NOP
NOP
NOP
NOP
NOP
.UNIQUE459: 
	ret
	.cfi_endproc
.LFE15:
	.size	get_next_keyshare, .-get_next_keyshare
	.globl	insert_keys_into_mem
	.type	insert_keys_into_mem, @function
insert_keys_into_mem:
.LFB16:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE460
NOP
NOP
NOP
NOP
NOP
.UNIQUE460: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE461
NOP
NOP
NOP
NOP
NOP
.UNIQUE461: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE462
NOP
NOP
NOP
NOP
NOP
.UNIQUE462: 
	pushq	%rbx
 jmp .UNIQUE463
NOP
NOP
NOP
NOP
NOP
.UNIQUE463: 
	subq	$72, %rsp
	.cfi_offset 3, -24
 jmp .UNIQUE464
NOP
NOP
NOP
NOP
NOP
.UNIQUE464: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE465
NOP
NOP
NOP
NOP
NOP
.UNIQUE465: 
	movl	$0, -52(%rbp)
 jmp .UNIQUE466
NOP
NOP
NOP
NOP
NOP
.UNIQUE466: 
	movl	$0, %edi
 jmp .UNIQUE467
NOP
NOP
NOP
NOP
NOP
.UNIQUE467: 
	call	time
 jmp .UNIQUE468
NOP
NOP
NOP
NOP
NOP
.UNIQUE468: 
	movl	%eax, %edi
 jmp .UNIQUE469
NOP
NOP
NOP
NOP
NOP
.UNIQUE469: 
	call	srand
 jmp .UNIQUE470
NOP
NOP
NOP
NOP
NOP
.UNIQUE470: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE471
NOP
NOP
NOP
NOP
NOP
.UNIQUE471: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE472
NOP
NOP
NOP
NOP
NOP
.UNIQUE472: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE473
NOP
NOP
NOP
NOP
NOP
.UNIQUE473: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE474
NOP
NOP
NOP
NOP
NOP
.UNIQUE474: 
	jmp	.L48
.L53:
 jmp .UNIQUE475
NOP
NOP
NOP
NOP
NOP
.UNIQUE475: 
	cmpl	$0, -52(%rbp)
 jmp .UNIQUE476
NOP
NOP
NOP
NOP
NOP
.UNIQUE476: 
	je	.L49
 jmp .UNIQUE477
NOP
NOP
NOP
NOP
NOP
.UNIQUE477: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE478
NOP
NOP
NOP
NOP
NOP
.UNIQUE478: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE479
NOP
NOP
NOP
NOP
NOP
.UNIQUE479: 
	leaq	(%rdx,%rax), %rbx
 jmp .UNIQUE480
NOP
NOP
NOP
NOP
NOP
.UNIQUE480: 
	movl	$0, %eax
 jmp .UNIQUE481
NOP
NOP
NOP
NOP
NOP
.UNIQUE481: 
	call	get_next_keyshare
 jmp .UNIQUE482
NOP
NOP
NOP
NOP
NOP
.UNIQUE482: 
	movb	%al, (%rbx)
 jmp .UNIQUE483
NOP
NOP
NOP
NOP
NOP
.UNIQUE483: 
	addq	$1, -32(%rbp)
 jmp .UNIQUE484
NOP
NOP
NOP
NOP
NOP
.UNIQUE484: 
	addq	$1, -48(%rbp)
 jmp .UNIQUE485
NOP
NOP
NOP
NOP
NOP
.UNIQUE485: 
	jmp	.L50
.L49:
 jmp .UNIQUE486
NOP
NOP
NOP
NOP
NOP
.UNIQUE486: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE487
NOP
NOP
NOP
NOP
NOP
.UNIQUE487: 
	jmp	.L51
.L52:
 jmp .UNIQUE488
NOP
NOP
NOP
NOP
NOP
.UNIQUE488: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE489
NOP
NOP
NOP
NOP
NOP
.UNIQUE489: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE490
NOP
NOP
NOP
NOP
NOP
.UNIQUE490: 
	addq	%rdx, %rax
 jmp .UNIQUE491
NOP
NOP
NOP
NOP
NOP
.UNIQUE491: 
	movq	%rax, %rdx
 jmp .UNIQUE492
NOP
NOP
NOP
NOP
NOP
.UNIQUE492: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE493
NOP
NOP
NOP
NOP
NOP
.UNIQUE493: 
	addq	%rdx, %rax
 jmp .UNIQUE494
NOP
NOP
NOP
NOP
NOP
.UNIQUE494: 
	movb	$0, (%rax)
 jmp .UNIQUE495
NOP
NOP
NOP
NOP
NOP
.UNIQUE495: 
	addq	$1, -40(%rbp)
.L51:
 jmp .UNIQUE496
NOP
NOP
NOP
NOP
NOP
.UNIQUE496: 
	cmpq	$3, -40(%rbp)
 jmp .UNIQUE497
NOP
NOP
NOP
NOP
NOP
.UNIQUE497: 
	jle	.L52
 jmp .UNIQUE498
NOP
NOP
NOP
NOP
NOP
.UNIQUE498: 
	addq	$4, -48(%rbp)
 jmp .UNIQUE499
NOP
NOP
NOP
NOP
NOP
.UNIQUE499: 
	movl	$1, -52(%rbp)
.L50:
 jmp .UNIQUE500
NOP
NOP
NOP
NOP
NOP
.UNIQUE500: 
	cmpq	$5, -32(%rbp)
 jmp .UNIQUE501
NOP
NOP
NOP
NOP
NOP
.UNIQUE501: 
	jne	.L48
 jmp .UNIQUE502
NOP
NOP
NOP
NOP
NOP
.UNIQUE502: 
	movl	$0, -52(%rbp)
 jmp .UNIQUE503
NOP
NOP
NOP
NOP
NOP
.UNIQUE503: 
	movq	$0, -32(%rbp)
.L48:
 jmp .UNIQUE504
NOP
NOP
NOP
NOP
NOP
.UNIQUE504: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE505
NOP
NOP
NOP
NOP
NOP
.UNIQUE505: 
	cmpq	%rax, -48(%rbp)
 jmp .UNIQUE506
NOP
NOP
NOP
NOP
NOP
.UNIQUE506: 
	jl	.L53
 jmp .UNIQUE507
NOP
NOP
NOP
NOP
NOP
.UNIQUE507: 
	addq	$72, %rsp
 jmp .UNIQUE508
NOP
NOP
NOP
NOP
NOP
.UNIQUE508: 
	popq	%rbx
 jmp .UNIQUE509
NOP
NOP
NOP
NOP
NOP
.UNIQUE509: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE510
NOP
NOP
NOP
NOP
NOP
.UNIQUE510: 
	ret
	.cfi_endproc
.LFE16:
	.size	insert_keys_into_mem, .-insert_keys_into_mem
	.section	.rodata
.LC10:
	.string	"0x%02x "
	.text
	.globl	print_mem
	.type	print_mem, @function
print_mem:
.LFB17:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE511
NOP
NOP
NOP
NOP
NOP
.UNIQUE511: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE512
NOP
NOP
NOP
NOP
NOP
.UNIQUE512: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE513
NOP
NOP
NOP
NOP
NOP
.UNIQUE513: 
	subq	$32, %rsp
 jmp .UNIQUE514
NOP
NOP
NOP
NOP
NOP
.UNIQUE514: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE515
NOP
NOP
NOP
NOP
NOP
.UNIQUE515: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE516
NOP
NOP
NOP
NOP
NOP
.UNIQUE516: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE517
NOP
NOP
NOP
NOP
NOP
.UNIQUE517: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE518
NOP
NOP
NOP
NOP
NOP
.UNIQUE518: 
	jmp	.L55
.L56:
 jmp .UNIQUE519
NOP
NOP
NOP
NOP
NOP
.UNIQUE519: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE520
NOP
NOP
NOP
NOP
NOP
.UNIQUE520: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE521
NOP
NOP
NOP
NOP
NOP
.UNIQUE521: 
	addq	%rdx, %rax
 jmp .UNIQUE522
NOP
NOP
NOP
NOP
NOP
.UNIQUE522: 
	movzbl	(%rax), %eax
 jmp .UNIQUE523
NOP
NOP
NOP
NOP
NOP
.UNIQUE523: 
	movzbl	%al, %eax
 jmp .UNIQUE524
NOP
NOP
NOP
NOP
NOP
.UNIQUE524: 
	movl	%eax, %esi
 jmp .UNIQUE525
NOP
NOP
NOP
NOP
NOP
.UNIQUE525: 
	movl	$.LC10, %edi
 jmp .UNIQUE526
NOP
NOP
NOP
NOP
NOP
.UNIQUE526: 
	movl	$0, %eax
 jmp .UNIQUE527
NOP
NOP
NOP
NOP
NOP
.UNIQUE527: 
	call	printf
 jmp .UNIQUE528
NOP
NOP
NOP
NOP
NOP
.UNIQUE528: 
	addq	$1, -16(%rbp)
.L55:
 jmp .UNIQUE529
NOP
NOP
NOP
NOP
NOP
.UNIQUE529: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE530
NOP
NOP
NOP
NOP
NOP
.UNIQUE530: 
	cmpq	%rax, -16(%rbp)
 jmp .UNIQUE531
NOP
NOP
NOP
NOP
NOP
.UNIQUE531: 
	jl	.L56
 jmp .UNIQUE532
NOP
NOP
NOP
NOP
NOP
.UNIQUE532: 
	movl	$10, %edi
 jmp .UNIQUE533
NOP
NOP
NOP
NOP
NOP
.UNIQUE533: 
	call	putchar
 jmp .UNIQUE534
NOP
NOP
NOP
NOP
NOP
.UNIQUE534: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE535
NOP
NOP
NOP
NOP
NOP
.UNIQUE535: 
	ret
	.cfi_endproc
.LFE17:
	.size	print_mem, .-print_mem
	.globl	insert_data_into_mem
	.type	insert_data_into_mem, @function
insert_data_into_mem:
.LFB18:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE536
NOP
NOP
NOP
NOP
NOP
.UNIQUE536: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE537
NOP
NOP
NOP
NOP
NOP
.UNIQUE537: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE538
NOP
NOP
NOP
NOP
NOP
.UNIQUE538: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE539
NOP
NOP
NOP
NOP
NOP
.UNIQUE539: 
	movq	%rsi, -64(%rbp)
 jmp .UNIQUE540
NOP
NOP
NOP
NOP
NOP
.UNIQUE540: 
	movq	%rdx, -72(%rbp)
 jmp .UNIQUE541
NOP
NOP
NOP
NOP
NOP
.UNIQUE541: 
	movq	$0, -24(%rbp)
 jmp .UNIQUE542
NOP
NOP
NOP
NOP
NOP
.UNIQUE542: 
	movl	$0, -44(%rbp)
 jmp .UNIQUE543
NOP
NOP
NOP
NOP
NOP
.UNIQUE543: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE544
NOP
NOP
NOP
NOP
NOP
.UNIQUE544: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE545
NOP
NOP
NOP
NOP
NOP
.UNIQUE545: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE546
NOP
NOP
NOP
NOP
NOP
.UNIQUE546: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE547
NOP
NOP
NOP
NOP
NOP
.UNIQUE547: 
	jmp	.L58
.L63:
 jmp .UNIQUE548
NOP
NOP
NOP
NOP
NOP
.UNIQUE548: 
	cmpl	$0, -44(%rbp)
 jmp .UNIQUE549
NOP
NOP
NOP
NOP
NOP
.UNIQUE549: 
	je	.L59
 jmp .UNIQUE550
NOP
NOP
NOP
NOP
NOP
.UNIQUE550: 
	addq	$5, -40(%rbp)
 jmp .UNIQUE551
NOP
NOP
NOP
NOP
NOP
.UNIQUE551: 
	movl	$0, -44(%rbp)
 jmp .UNIQUE552
NOP
NOP
NOP
NOP
NOP
.UNIQUE552: 
	jmp	.L58
.L59:
 jmp .UNIQUE553
NOP
NOP
NOP
NOP
NOP
.UNIQUE553: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE554
NOP
NOP
NOP
NOP
NOP
.UNIQUE554: 
	jmp	.L60
.L62:
 jmp .UNIQUE555
NOP
NOP
NOP
NOP
NOP
.UNIQUE555: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE556
NOP
NOP
NOP
NOP
NOP
.UNIQUE556: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE557
NOP
NOP
NOP
NOP
NOP
.UNIQUE557: 
	addq	%rdx, %rax
 jmp .UNIQUE558
NOP
NOP
NOP
NOP
NOP
.UNIQUE558: 
	movq	%rax, %rdx
 jmp .UNIQUE559
NOP
NOP
NOP
NOP
NOP
.UNIQUE559: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE560
NOP
NOP
NOP
NOP
NOP
.UNIQUE560: 
	addq	%rax, %rdx
 jmp .UNIQUE561
NOP
NOP
NOP
NOP
NOP
.UNIQUE561: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE562
NOP
NOP
NOP
NOP
NOP
.UNIQUE562: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE563
NOP
NOP
NOP
NOP
NOP
.UNIQUE563: 
	addq	%rcx, %rax
 jmp .UNIQUE564
NOP
NOP
NOP
NOP
NOP
.UNIQUE564: 
	movq	%rax, %rcx
 jmp .UNIQUE565
NOP
NOP
NOP
NOP
NOP
.UNIQUE565: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE566
NOP
NOP
NOP
NOP
NOP
.UNIQUE566: 
	addq	%rcx, %rax
 jmp .UNIQUE567
NOP
NOP
NOP
NOP
NOP
.UNIQUE567: 
	movzbl	(%rax), %eax
 jmp .UNIQUE568
NOP
NOP
NOP
NOP
NOP
.UNIQUE568: 
	movb	%al, (%rdx)
 jmp .UNIQUE569
NOP
NOP
NOP
NOP
NOP
.UNIQUE569: 
	addq	$1, -32(%rbp)
.L60:
 jmp .UNIQUE570
NOP
NOP
NOP
NOP
NOP
.UNIQUE570: 
	cmpq	$3, -32(%rbp)
 jmp .UNIQUE571
NOP
NOP
NOP
NOP
NOP
.UNIQUE571: 
	jg	.L61
 jmp .UNIQUE572
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
.UNIQUE573: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE574
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
.UNIQUE575: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE576
NOP
NOP
NOP
NOP
NOP
.UNIQUE576: 
	jl	.L62
.L61:
 jmp .UNIQUE577
NOP
NOP
NOP
NOP
NOP
.UNIQUE577: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE578
NOP
NOP
NOP
NOP
NOP
.UNIQUE578: 
	addq	%rax, -16(%rbp)
 jmp .UNIQUE579
NOP
NOP
NOP
NOP
NOP
.UNIQUE579: 
	addq	$1, -24(%rbp)
 jmp .UNIQUE580
NOP
NOP
NOP
NOP
NOP
.UNIQUE580: 
	addq	$4, -40(%rbp)
 jmp .UNIQUE581
NOP
NOP
NOP
NOP
NOP
.UNIQUE581: 
	movl	$1, -44(%rbp)
.L58:
 jmp .UNIQUE582
NOP
NOP
NOP
NOP
NOP
.UNIQUE582: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE583
NOP
NOP
NOP
NOP
NOP
.UNIQUE583: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE584
NOP
NOP
NOP
NOP
NOP
.UNIQUE584: 
	jl	.L63
 jmp .UNIQUE585
NOP
NOP
NOP
NOP
NOP
.UNIQUE585: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE586
NOP
NOP
NOP
NOP
NOP
.UNIQUE586: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE587
NOP
NOP
NOP
NOP
NOP
.UNIQUE587: 
	ret
	.cfi_endproc
.LFE18:
	.size	insert_data_into_mem, .-insert_data_into_mem
	.globl	get_secure_data
	.type	get_secure_data, @function
get_secure_data:
.LFB19:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE588
NOP
NOP
NOP
NOP
NOP
.UNIQUE588: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE589
NOP
NOP
NOP
NOP
NOP
.UNIQUE589: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE590
NOP
NOP
NOP
NOP
NOP
.UNIQUE590: 
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE591
NOP
NOP
NOP
NOP
NOP
.UNIQUE591: 
	movq	%rsi, -80(%rbp)
 jmp .UNIQUE592
NOP
NOP
NOP
NOP
NOP
.UNIQUE592: 
	movq	%rdx, -88(%rbp)
 jmp .UNIQUE593
NOP
NOP
NOP
NOP
NOP
.UNIQUE593: 
	movl	%ecx, -92(%rbp)
 jmp .UNIQUE594
NOP
NOP
NOP
NOP
NOP
.UNIQUE594: 
	movq	%r8, -104(%rbp)
 jmp .UNIQUE595
NOP
NOP
NOP
NOP
NOP
.UNIQUE595: 
	movq	$0, -24(%rbp)
 jmp .UNIQUE596
NOP
NOP
NOP
NOP
NOP
.UNIQUE596: 
	movl	$0, -60(%rbp)
 jmp .UNIQUE597
NOP
NOP
NOP
NOP
NOP
.UNIQUE597: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE598
NOP
NOP
NOP
NOP
NOP
.UNIQUE598: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE599
NOP
NOP
NOP
NOP
NOP
.UNIQUE599: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE600
NOP
NOP
NOP
NOP
NOP
.UNIQUE600: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE601
NOP
NOP
NOP
NOP
NOP
.UNIQUE601: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE602
NOP
NOP
NOP
NOP
NOP
.UNIQUE602: 
	cmpl	$0, -92(%rbp)
 jmp .UNIQUE603
NOP
NOP
NOP
NOP
NOP
.UNIQUE603: 
	je	.L66
 jmp .UNIQUE604
NOP
NOP
NOP
NOP
NOP
.UNIQUE604: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE605
NOP
NOP
NOP
NOP
NOP
.UNIQUE605: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE606
NOP
NOP
NOP
NOP
NOP
.UNIQUE606: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE607
NOP
NOP
NOP
NOP
NOP
.UNIQUE607: 
	testq	%rax, %rax
 jmp .UNIQUE608
NOP
NOP
NOP
NOP
NOP
.UNIQUE608: 
	cmovs	%rdx, %rax
 jmp .UNIQUE609
NOP
NOP
NOP
NOP
NOP
.UNIQUE609: 
	sarq	$2, %rax
 jmp .UNIQUE610
NOP
NOP
NOP
NOP
NOP
.UNIQUE610: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE611
NOP
NOP
NOP
NOP
NOP
.UNIQUE611: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE612
NOP
NOP
NOP
NOP
NOP
.UNIQUE612: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE613
NOP
NOP
NOP
NOP
NOP
.UNIQUE613: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE614
NOP
NOP
NOP
NOP
NOP
.UNIQUE614: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE615
NOP
NOP
NOP
NOP
NOP
.UNIQUE615: 
	cmpq	%rax, %rdx
 jmp .UNIQUE616
NOP
NOP
NOP
NOP
NOP
.UNIQUE616: 
	jne	.L67
 jmp .UNIQUE617
NOP
NOP
NOP
NOP
NOP
.UNIQUE617: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE618
NOP
NOP
NOP
NOP
NOP
.UNIQUE618: 
	movq	%rdx, %rax
 jmp .UNIQUE619
NOP
NOP
NOP
NOP
NOP
.UNIQUE619: 
	salq	$3, %rax
 jmp .UNIQUE620
NOP
NOP
NOP
NOP
NOP
.UNIQUE620: 
	addq	%rdx, %rax
 jmp .UNIQUE621
NOP
NOP
NOP
NOP
NOP
.UNIQUE621: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE622
NOP
NOP
NOP
NOP
NOP
.UNIQUE622: 
	jmp	.L66
.L67:
 jmp .UNIQUE623
NOP
NOP
NOP
NOP
NOP
.UNIQUE623: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE624
NOP
NOP
NOP
NOP
NOP
.UNIQUE624: 
	movq	%rdx, %rax
 jmp .UNIQUE625
NOP
NOP
NOP
NOP
NOP
.UNIQUE625: 
	salq	$3, %rax
 jmp .UNIQUE626
NOP
NOP
NOP
NOP
NOP
.UNIQUE626: 
	addq	%rdx, %rax
 jmp .UNIQUE627
NOP
NOP
NOP
NOP
NOP
.UNIQUE627: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE628
NOP
NOP
NOP
NOP
NOP
.UNIQUE628: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE629
NOP
NOP
NOP
NOP
NOP
.UNIQUE629: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE630
NOP
NOP
NOP
NOP
NOP
.UNIQUE630: 
	movq	%rax, %rdx
 jmp .UNIQUE631
NOP
NOP
NOP
NOP
NOP
.UNIQUE631: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE632
NOP
NOP
NOP
NOP
NOP
.UNIQUE632: 
	movl	$0, %eax
 jmp .UNIQUE633
NOP
NOP
NOP
NOP
NOP
.UNIQUE633: 
	subq	%rcx, %rax
 jmp .UNIQUE634
NOP
NOP
NOP
NOP
NOP
.UNIQUE634: 
	salq	$2, %rax
 jmp .UNIQUE635
NOP
NOP
NOP
NOP
NOP
.UNIQUE635: 
	addq	%rdx, %rax
 jmp .UNIQUE636
NOP
NOP
NOP
NOP
NOP
.UNIQUE636: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE637
NOP
NOP
NOP
NOP
NOP
.UNIQUE637: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE638
NOP
NOP
NOP
NOP
NOP
.UNIQUE638: 
	jmp	.L68
.L70:
 jmp .UNIQUE639
NOP
NOP
NOP
NOP
NOP
.UNIQUE639: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE640
NOP
NOP
NOP
NOP
NOP
.UNIQUE640: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE641
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
.UNIQUE642: 
	movq	%rax, %rdx
 jmp .UNIQUE643
NOP
NOP
NOP
NOP
NOP
.UNIQUE643: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE644
NOP
NOP
NOP
NOP
NOP
.UNIQUE644: 
	addq	%rax, %rdx
 jmp .UNIQUE645
NOP
NOP
NOP
NOP
NOP
.UNIQUE645: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE646
NOP
NOP
NOP
NOP
NOP
.UNIQUE646: 
	movq	-48(%rbp), %rcx
 jmp .UNIQUE647
NOP
NOP
NOP
NOP
NOP
.UNIQUE647: 
	addq	%rcx, %rax
 jmp .UNIQUE648
NOP
NOP
NOP
NOP
NOP
.UNIQUE648: 
	movq	%rax, %rcx
 jmp .UNIQUE649
NOP
NOP
NOP
NOP
NOP
.UNIQUE649: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE650
NOP
NOP
NOP
NOP
NOP
.UNIQUE650: 
	addq	%rcx, %rax
 jmp .UNIQUE651
NOP
NOP
NOP
NOP
NOP
.UNIQUE651: 
	movzbl	(%rax), %eax
 jmp .UNIQUE652
NOP
NOP
NOP
NOP
NOP
.UNIQUE652: 
	movb	%al, (%rdx)
 jmp .UNIQUE653
NOP
NOP
NOP
NOP
NOP
.UNIQUE653: 
	addq	$1, -40(%rbp)
.L68:
 jmp .UNIQUE654
NOP
NOP
NOP
NOP
NOP
.UNIQUE654: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE655
NOP
NOP
NOP
NOP
NOP
.UNIQUE655: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE656
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
.UNIQUE657: 
	cmpq	$3, %rax
 jmp .UNIQUE658
NOP
NOP
NOP
NOP
NOP
.UNIQUE658: 
	jg	.L69
 jmp .UNIQUE659
NOP
NOP
NOP
NOP
NOP
.UNIQUE659: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE660
NOP
NOP
NOP
NOP
NOP
.UNIQUE660: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE661
NOP
NOP
NOP
NOP
NOP
.UNIQUE661: 
	addq	%rdx, %rax
 jmp .UNIQUE662
NOP
NOP
NOP
NOP
NOP
.UNIQUE662: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE663
NOP
NOP
NOP
NOP
NOP
.UNIQUE663: 
	jl	.L70
.L69:
 jmp .UNIQUE664
NOP
NOP
NOP
NOP
NOP
.UNIQUE664: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE665
NOP
NOP
NOP
NOP
NOP
.UNIQUE665: 
	addq	%rax, -24(%rbp)
 jmp .UNIQUE666
NOP
NOP
NOP
NOP
NOP
.UNIQUE666: 
	addq	$9, -32(%rbp)
 jmp .UNIQUE667
NOP
NOP
NOP
NOP
NOP
.UNIQUE667: 
	jmp	.L71
.L66:
 jmp .UNIQUE668
NOP
NOP
NOP
NOP
NOP
.UNIQUE668: 
	jmp	.L71
.L76:
 jmp .UNIQUE669
NOP
NOP
NOP
NOP
NOP
.UNIQUE669: 
	cmpl	$0, -60(%rbp)
 jmp .UNIQUE670
NOP
NOP
NOP
NOP
NOP
.UNIQUE670: 
	je	.L72
 jmp .UNIQUE671
NOP
NOP
NOP
NOP
NOP
.UNIQUE671: 
	addq	$5, -56(%rbp)
 jmp .UNIQUE672
NOP
NOP
NOP
NOP
NOP
.UNIQUE672: 
	movl	$0, -60(%rbp)
 jmp .UNIQUE673
NOP
NOP
NOP
NOP
NOP
.UNIQUE673: 
	jmp	.L71
.L72:
 jmp .UNIQUE674
NOP
NOP
NOP
NOP
NOP
.UNIQUE674: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE675
NOP
NOP
NOP
NOP
NOP
.UNIQUE675: 
	jmp	.L73
.L75:
 jmp .UNIQUE676
NOP
NOP
NOP
NOP
NOP
.UNIQUE676: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE677
NOP
NOP
NOP
NOP
NOP
.UNIQUE677: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE678
NOP
NOP
NOP
NOP
NOP
.UNIQUE678: 
	addq	%rdx, %rax
 jmp .UNIQUE679
NOP
NOP
NOP
NOP
NOP
.UNIQUE679: 
	movq	%rax, %rdx
 jmp .UNIQUE680
NOP
NOP
NOP
NOP
NOP
.UNIQUE680: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE681
NOP
NOP
NOP
NOP
NOP
.UNIQUE681: 
	addq	%rax, %rdx
 jmp .UNIQUE682
NOP
NOP
NOP
NOP
NOP
.UNIQUE682: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE683
NOP
NOP
NOP
NOP
NOP
.UNIQUE683: 
	movq	-56(%rbp), %rcx
 jmp .UNIQUE684
NOP
NOP
NOP
NOP
NOP
.UNIQUE684: 
	addq	%rcx, %rax
 jmp .UNIQUE685
NOP
NOP
NOP
NOP
NOP
.UNIQUE685: 
	movq	%rax, %rcx
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
	addq	%rcx, %rax
 jmp .UNIQUE688
NOP
NOP
NOP
NOP
NOP
.UNIQUE688: 
	movzbl	(%rax), %eax
 jmp .UNIQUE689
NOP
NOP
NOP
NOP
NOP
.UNIQUE689: 
	movb	%al, (%rdx)
 jmp .UNIQUE690
NOP
NOP
NOP
NOP
NOP
.UNIQUE690: 
	addq	$1, -48(%rbp)
.L73:
 jmp .UNIQUE691
NOP
NOP
NOP
NOP
NOP
.UNIQUE691: 
	cmpq	$3, -48(%rbp)
 jmp .UNIQUE692
NOP
NOP
NOP
NOP
NOP
.UNIQUE692: 
	jg	.L74
 jmp .UNIQUE693
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
.UNIQUE694: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE695
NOP
NOP
NOP
NOP
NOP
.UNIQUE695: 
	addq	%rdx, %rax
 jmp .UNIQUE696
NOP
NOP
NOP
NOP
NOP
.UNIQUE696: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE697
NOP
NOP
NOP
NOP
NOP
.UNIQUE697: 
	jl	.L75
.L74:
 jmp .UNIQUE698
NOP
NOP
NOP
NOP
NOP
.UNIQUE698: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE699
NOP
NOP
NOP
NOP
NOP
.UNIQUE699: 
	addq	%rax, -24(%rbp)
 jmp .UNIQUE700
NOP
NOP
NOP
NOP
NOP
.UNIQUE700: 
	addq	$4, -56(%rbp)
 jmp .UNIQUE701
NOP
NOP
NOP
NOP
NOP
.UNIQUE701: 
	movl	$1, -60(%rbp)
.L71:
 jmp .UNIQUE702
NOP
NOP
NOP
NOP
NOP
.UNIQUE702: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE703
NOP
NOP
NOP
NOP
NOP
.UNIQUE703: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE704
NOP
NOP
NOP
NOP
NOP
.UNIQUE704: 
	jl	.L76
 jmp .UNIQUE705
NOP
NOP
NOP
NOP
NOP
.UNIQUE705: 
	popq	%rbp
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
.LFE19:
	.size	get_secure_data, .-get_secure_data
	.globl	set_secure_data
	.type	set_secure_data, @function
set_secure_data:
.LFB20:
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
	movq	%rdi, -72(%rbp)
 jmp .UNIQUE710
NOP
NOP
NOP
NOP
NOP
.UNIQUE710: 
	movq	%rsi, -80(%rbp)
 jmp .UNIQUE711
NOP
NOP
NOP
NOP
NOP
.UNIQUE711: 
	movq	%rdx, -88(%rbp)
 jmp .UNIQUE712
NOP
NOP
NOP
NOP
NOP
.UNIQUE712: 
	movl	%ecx, -92(%rbp)
 jmp .UNIQUE713
NOP
NOP
NOP
NOP
NOP
.UNIQUE713: 
	movq	%r8, -104(%rbp)
 jmp .UNIQUE714
NOP
NOP
NOP
NOP
NOP
.UNIQUE714: 
	movq	$0, -24(%rbp)
 jmp .UNIQUE715
NOP
NOP
NOP
NOP
NOP
.UNIQUE715: 
	movl	$0, -60(%rbp)
 jmp .UNIQUE716
NOP
NOP
NOP
NOP
NOP
.UNIQUE716: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE717
NOP
NOP
NOP
NOP
NOP
.UNIQUE717: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE718
NOP
NOP
NOP
NOP
NOP
.UNIQUE718: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE719
NOP
NOP
NOP
NOP
NOP
.UNIQUE719: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE720
NOP
NOP
NOP
NOP
NOP
.UNIQUE720: 
	movq	$0, -56(%rbp)
 jmp .UNIQUE721
NOP
NOP
NOP
NOP
NOP
.UNIQUE721: 
	cmpl	$0, -92(%rbp)
 jmp .UNIQUE722
NOP
NOP
NOP
NOP
NOP
.UNIQUE722: 
	je	.L78
 jmp .UNIQUE723
NOP
NOP
NOP
NOP
NOP
.UNIQUE723: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE724
NOP
NOP
NOP
NOP
NOP
.UNIQUE724: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE725
NOP
NOP
NOP
NOP
NOP
.UNIQUE725: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE726
NOP
NOP
NOP
NOP
NOP
.UNIQUE726: 
	testq	%rax, %rax
 jmp .UNIQUE727
NOP
NOP
NOP
NOP
NOP
.UNIQUE727: 
	cmovs	%rdx, %rax
 jmp .UNIQUE728
NOP
NOP
NOP
NOP
NOP
.UNIQUE728: 
	sarq	$2, %rax
 jmp .UNIQUE729
NOP
NOP
NOP
NOP
NOP
.UNIQUE729: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE730
NOP
NOP
NOP
NOP
NOP
.UNIQUE730: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE731
NOP
NOP
NOP
NOP
NOP
.UNIQUE731: 
	leaq	0(,%rax,4), %rdx
 jmp .UNIQUE732
NOP
NOP
NOP
NOP
NOP
.UNIQUE732: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE733
NOP
NOP
NOP
NOP
NOP
.UNIQUE733: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE734
NOP
NOP
NOP
NOP
NOP
.UNIQUE734: 
	cmpq	%rax, %rdx
 jmp .UNIQUE735
NOP
NOP
NOP
NOP
NOP
.UNIQUE735: 
	jne	.L79
 jmp .UNIQUE736
NOP
NOP
NOP
NOP
NOP
.UNIQUE736: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE737
NOP
NOP
NOP
NOP
NOP
.UNIQUE737: 
	movq	%rdx, %rax
 jmp .UNIQUE738
NOP
NOP
NOP
NOP
NOP
.UNIQUE738: 
	salq	$3, %rax
 jmp .UNIQUE739
NOP
NOP
NOP
NOP
NOP
.UNIQUE739: 
	addq	%rdx, %rax
 jmp .UNIQUE740
NOP
NOP
NOP
NOP
NOP
.UNIQUE740: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE741
NOP
NOP
NOP
NOP
NOP
.UNIQUE741: 
	jmp	.L78
.L79:
 jmp .UNIQUE742
NOP
NOP
NOP
NOP
NOP
.UNIQUE742: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE743
NOP
NOP
NOP
NOP
NOP
.UNIQUE743: 
	movq	%rdx, %rax
 jmp .UNIQUE744
NOP
NOP
NOP
NOP
NOP
.UNIQUE744: 
	salq	$3, %rax
 jmp .UNIQUE745
NOP
NOP
NOP
NOP
NOP
.UNIQUE745: 
	addq	%rdx, %rax
 jmp .UNIQUE746
NOP
NOP
NOP
NOP
NOP
.UNIQUE746: 
	addq	%rax, -32(%rbp)
 jmp .UNIQUE747
NOP
NOP
NOP
NOP
NOP
.UNIQUE747: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE748
NOP
NOP
NOP
NOP
NOP
.UNIQUE748: 
	imulq	-80(%rbp), %rax
 jmp .UNIQUE749
NOP
NOP
NOP
NOP
NOP
.UNIQUE749: 
	movq	%rax, %rdx
 jmp .UNIQUE750
NOP
NOP
NOP
NOP
NOP
.UNIQUE750: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE751
NOP
NOP
NOP
NOP
NOP
.UNIQUE751: 
	movl	$0, %eax
 jmp .UNIQUE752
NOP
NOP
NOP
NOP
NOP
.UNIQUE752: 
	subq	%rcx, %rax
 jmp .UNIQUE753
NOP
NOP
NOP
NOP
NOP
.UNIQUE753: 
	salq	$2, %rax
 jmp .UNIQUE754
NOP
NOP
NOP
NOP
NOP
.UNIQUE754: 
	addq	%rdx, %rax
 jmp .UNIQUE755
NOP
NOP
NOP
NOP
NOP
.UNIQUE755: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE756
NOP
NOP
NOP
NOP
NOP
.UNIQUE756: 
	movq	$0, -40(%rbp)
 jmp .UNIQUE757
NOP
NOP
NOP
NOP
NOP
.UNIQUE757: 
	jmp	.L80
.L82:
 jmp .UNIQUE758
NOP
NOP
NOP
NOP
NOP
.UNIQUE758: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE759
NOP
NOP
NOP
NOP
NOP
.UNIQUE759: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE760
NOP
NOP
NOP
NOP
NOP
.UNIQUE760: 
	addq	%rdx, %rax
 jmp .UNIQUE761
NOP
NOP
NOP
NOP
NOP
.UNIQUE761: 
	movq	%rax, %rdx
 jmp .UNIQUE762
NOP
NOP
NOP
NOP
NOP
.UNIQUE762: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE763
NOP
NOP
NOP
NOP
NOP
.UNIQUE763: 
	addq	%rax, %rdx
 jmp .UNIQUE764
NOP
NOP
NOP
NOP
NOP
.UNIQUE764: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE765
NOP
NOP
NOP
NOP
NOP
.UNIQUE765: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE766
NOP
NOP
NOP
NOP
NOP
.UNIQUE766: 
	addq	%rcx, %rax
 jmp .UNIQUE767
NOP
NOP
NOP
NOP
NOP
.UNIQUE767: 
	movq	%rax, %rcx
 jmp .UNIQUE768
NOP
NOP
NOP
NOP
NOP
.UNIQUE768: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE769
NOP
NOP
NOP
NOP
NOP
.UNIQUE769: 
	addq	%rcx, %rax
 jmp .UNIQUE770
NOP
NOP
NOP
NOP
NOP
.UNIQUE770: 
	movzbl	(%rax), %eax
 jmp .UNIQUE771
NOP
NOP
NOP
NOP
NOP
.UNIQUE771: 
	movb	%al, (%rdx)
 jmp .UNIQUE772
NOP
NOP
NOP
NOP
NOP
.UNIQUE772: 
	addq	$1, -40(%rbp)
.L80:
 jmp .UNIQUE773
NOP
NOP
NOP
NOP
NOP
.UNIQUE773: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE774
NOP
NOP
NOP
NOP
NOP
.UNIQUE774: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE775
NOP
NOP
NOP
NOP
NOP
.UNIQUE775: 
	addq	%rdx, %rax
 jmp .UNIQUE776
NOP
NOP
NOP
NOP
NOP
.UNIQUE776: 
	cmpq	$3, %rax
 jmp .UNIQUE777
NOP
NOP
NOP
NOP
NOP
.UNIQUE777: 
	jg	.L81
 jmp .UNIQUE778
NOP
NOP
NOP
NOP
NOP
.UNIQUE778: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE779
NOP
NOP
NOP
NOP
NOP
.UNIQUE779: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE780
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
.UNIQUE781: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE782
NOP
NOP
NOP
NOP
NOP
.UNIQUE782: 
	jl	.L82
.L81:
 jmp .UNIQUE783
NOP
NOP
NOP
NOP
NOP
.UNIQUE783: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE784
NOP
NOP
NOP
NOP
NOP
.UNIQUE784: 
	addq	%rax, -24(%rbp)
 jmp .UNIQUE785
NOP
NOP
NOP
NOP
NOP
.UNIQUE785: 
	addq	$9, -32(%rbp)
 jmp .UNIQUE786
NOP
NOP
NOP
NOP
NOP
.UNIQUE786: 
	jmp	.L83
.L78:
 jmp .UNIQUE787
NOP
NOP
NOP
NOP
NOP
.UNIQUE787: 
	jmp	.L83
.L88:
 jmp .UNIQUE788
NOP
NOP
NOP
NOP
NOP
.UNIQUE788: 
	cmpl	$0, -60(%rbp)
 jmp .UNIQUE789
NOP
NOP
NOP
NOP
NOP
.UNIQUE789: 
	je	.L84
 jmp .UNIQUE790
NOP
NOP
NOP
NOP
NOP
.UNIQUE790: 
	addq	$5, -56(%rbp)
 jmp .UNIQUE791
NOP
NOP
NOP
NOP
NOP
.UNIQUE791: 
	movl	$0, -60(%rbp)
 jmp .UNIQUE792
NOP
NOP
NOP
NOP
NOP
.UNIQUE792: 
	jmp	.L83
.L84:
 jmp .UNIQUE793
NOP
NOP
NOP
NOP
NOP
.UNIQUE793: 
	movq	$0, -48(%rbp)
 jmp .UNIQUE794
NOP
NOP
NOP
NOP
NOP
.UNIQUE794: 
	jmp	.L85
.L87:
 jmp .UNIQUE795
NOP
NOP
NOP
NOP
NOP
.UNIQUE795: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE796
NOP
NOP
NOP
NOP
NOP
.UNIQUE796: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE797
NOP
NOP
NOP
NOP
NOP
.UNIQUE797: 
	addq	%rdx, %rax
 jmp .UNIQUE798
NOP
NOP
NOP
NOP
NOP
.UNIQUE798: 
	movq	%rax, %rdx
 jmp .UNIQUE799
NOP
NOP
NOP
NOP
NOP
.UNIQUE799: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE800
NOP
NOP
NOP
NOP
NOP
.UNIQUE800: 
	addq	%rax, %rdx
 jmp .UNIQUE801
NOP
NOP
NOP
NOP
NOP
.UNIQUE801: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE802
NOP
NOP
NOP
NOP
NOP
.UNIQUE802: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE803
NOP
NOP
NOP
NOP
NOP
.UNIQUE803: 
	addq	%rcx, %rax
 jmp .UNIQUE804
NOP
NOP
NOP
NOP
NOP
.UNIQUE804: 
	movq	%rax, %rcx
 jmp .UNIQUE805
NOP
NOP
NOP
NOP
NOP
.UNIQUE805: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE806
NOP
NOP
NOP
NOP
NOP
.UNIQUE806: 
	addq	%rcx, %rax
 jmp .UNIQUE807
NOP
NOP
NOP
NOP
NOP
.UNIQUE807: 
	movzbl	(%rax), %eax
 jmp .UNIQUE808
NOP
NOP
NOP
NOP
NOP
.UNIQUE808: 
	movb	%al, (%rdx)
 jmp .UNIQUE809
NOP
NOP
NOP
NOP
NOP
.UNIQUE809: 
	addq	$1, -48(%rbp)
.L85:
 jmp .UNIQUE810
NOP
NOP
NOP
NOP
NOP
.UNIQUE810: 
	cmpq	$3, -48(%rbp)
 jmp .UNIQUE811
NOP
NOP
NOP
NOP
NOP
.UNIQUE811: 
	jg	.L86
 jmp .UNIQUE812
NOP
NOP
NOP
NOP
NOP
.UNIQUE812: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE813
NOP
NOP
NOP
NOP
NOP
.UNIQUE813: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE814
NOP
NOP
NOP
NOP
NOP
.UNIQUE814: 
	addq	%rdx, %rax
 jmp .UNIQUE815
NOP
NOP
NOP
NOP
NOP
.UNIQUE815: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE816
NOP
NOP
NOP
NOP
NOP
.UNIQUE816: 
	jl	.L87
.L86:
 jmp .UNIQUE817
NOP
NOP
NOP
NOP
NOP
.UNIQUE817: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE818
NOP
NOP
NOP
NOP
NOP
.UNIQUE818: 
	addq	%rax, -24(%rbp)
 jmp .UNIQUE819
NOP
NOP
NOP
NOP
NOP
.UNIQUE819: 
	addq	$4, -56(%rbp)
 jmp .UNIQUE820
NOP
NOP
NOP
NOP
NOP
.UNIQUE820: 
	movl	$1, -60(%rbp)
.L83:
 jmp .UNIQUE821
NOP
NOP
NOP
NOP
NOP
.UNIQUE821: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE822
NOP
NOP
NOP
NOP
NOP
.UNIQUE822: 
	cmpq	-80(%rbp), %rax
 jmp .UNIQUE823
NOP
NOP
NOP
NOP
NOP
.UNIQUE823: 
	jl	.L88
 jmp .UNIQUE824
NOP
NOP
NOP
NOP
NOP
.UNIQUE824: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE825
NOP
NOP
NOP
NOP
NOP
.UNIQUE825: 
	ret
	.cfi_endproc
.LFE20:
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
.LFB21:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE826
NOP
NOP
NOP
NOP
NOP
.UNIQUE826: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE827
NOP
NOP
NOP
NOP
NOP
.UNIQUE827: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE828
NOP
NOP
NOP
NOP
NOP
.UNIQUE828: 
	subq	$16, %rsp
 jmp .UNIQUE829
NOP
NOP
NOP
NOP
NOP
.UNIQUE829: 
	movl	$0, %eax
 jmp .UNIQUE830
NOP
NOP
NOP
NOP
NOP
.UNIQUE830: 
	call	allocate_mem
 jmp .UNIQUE831
NOP
NOP
NOP
NOP
NOP
.UNIQUE831: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE832
NOP
NOP
NOP
NOP
NOP
.UNIQUE832: 
	movl	$.LC11, %esi
 jmp .UNIQUE833
NOP
NOP
NOP
NOP
NOP
.UNIQUE833: 
	movl	$.LC12, %edi
 jmp .UNIQUE834
NOP
NOP
NOP
NOP
NOP
.UNIQUE834: 
	call	fopen
 jmp .UNIQUE835
NOP
NOP
NOP
NOP
NOP
.UNIQUE835: 
	movq	%rax, keyshare_input_file(%rip)
 jmp .UNIQUE836
NOP
NOP
NOP
NOP
NOP
.UNIQUE836: 
	movq	keyshare_input_file(%rip), %rax
 jmp .UNIQUE837
NOP
NOP
NOP
NOP
NOP
.UNIQUE837: 
	testq	%rax, %rax
 jmp .UNIQUE838
NOP
NOP
NOP
NOP
NOP
.UNIQUE838: 
	jne	.L90
 jmp .UNIQUE839
NOP
NOP
NOP
NOP
NOP
.UNIQUE839: 
	movl	$.LC13, %edi
 jmp .UNIQUE840
NOP
NOP
NOP
NOP
NOP
.UNIQUE840: 
	call	perror
 jmp .UNIQUE841
NOP
NOP
NOP
NOP
NOP
.UNIQUE841: 
	movl	$43, %edi
 jmp .UNIQUE842
NOP
NOP
NOP
NOP
NOP
.UNIQUE842: 
	call	exit
.L90:
 jmp .UNIQUE843
NOP
NOP
NOP
NOP
NOP
.UNIQUE843: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE844
NOP
NOP
NOP
NOP
NOP
.UNIQUE844: 
	movq	%rax, %rdi
 jmp .UNIQUE845
NOP
NOP
NOP
NOP
NOP
.UNIQUE845: 
	call	insert_keys_into_mem
 jmp .UNIQUE846
NOP
NOP
NOP
NOP
NOP
.UNIQUE846: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE847
NOP
NOP
NOP
NOP
NOP
.UNIQUE847: 
	movq	%rax, entire_memory_chunk(%rip)
 jmp .UNIQUE848
NOP
NOP
NOP
NOP
NOP
.UNIQUE848: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE849
NOP
NOP
NOP
NOP
NOP
.UNIQUE849: 
	movq	%rax, last_unused_memory(%rip)
 jmp .UNIQUE850
NOP
NOP
NOP
NOP
NOP
.UNIQUE850: 
	movq	keyshare_input_file(%rip), %rax
 jmp .UNIQUE851
NOP
NOP
NOP
NOP
NOP
.UNIQUE851: 
	movq	%rax, %rdi
 jmp .UNIQUE852
NOP
NOP
NOP
NOP
NOP
.UNIQUE852: 
	call	fclose
 jmp .UNIQUE853
NOP
NOP
NOP
NOP
NOP
.UNIQUE853: 
	movl	$0, %eax
 jmp .UNIQUE854
NOP
NOP
NOP
NOP
NOP
.UNIQUE854: 
	call	init_memory_manager
 jmp .UNIQUE855
NOP
NOP
NOP
NOP
NOP
.UNIQUE855: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE856
NOP
NOP
NOP
NOP
NOP
.UNIQUE856: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE857
NOP
NOP
NOP
NOP
NOP
.UNIQUE857: 
	ret
	.cfi_endproc
.LFE21:
	.size	init_mem, .-init_mem
	.globl	free_secure_mem
	.type	free_secure_mem, @function
free_secure_mem:
.LFB22:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE858
NOP
NOP
NOP
NOP
NOP
.UNIQUE858: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE859
NOP
NOP
NOP
NOP
NOP
.UNIQUE859: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE860
NOP
NOP
NOP
NOP
NOP
.UNIQUE860: 
	subq	$16, %rsp
 jmp .UNIQUE861
NOP
NOP
NOP
NOP
NOP
.UNIQUE861: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE862
NOP
NOP
NOP
NOP
NOP
.UNIQUE862: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE863
NOP
NOP
NOP
NOP
NOP
.UNIQUE863: 
	movq	%rax, %rdi
 jmp .UNIQUE864
NOP
NOP
NOP
NOP
NOP
.UNIQUE864: 
	call	free
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
	call	free_memory_manager_structures
 jmp .UNIQUE867
NOP
NOP
NOP
NOP
NOP
.UNIQUE867: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE868
NOP
NOP
NOP
NOP
NOP
.UNIQUE868: 
	ret
	.cfi_endproc
.LFE22:
	.size	free_secure_mem, .-free_secure_mem
	.globl	get_char
	.type	get_char, @function
get_char:
.LFB23:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE869
NOP
NOP
NOP
NOP
NOP
.UNIQUE869: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE870
NOP
NOP
NOP
NOP
NOP
.UNIQUE870: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE871
NOP
NOP
NOP
NOP
NOP
.UNIQUE871: 
	subq	$16, %rsp
 jmp .UNIQUE872
NOP
NOP
NOP
NOP
NOP
.UNIQUE872: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE873
NOP
NOP
NOP
NOP
NOP
.UNIQUE873: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE874
NOP
NOP
NOP
NOP
NOP
.UNIQUE874: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE875
NOP
NOP
NOP
NOP
NOP
.UNIQUE875: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE876
NOP
NOP
NOP
NOP
NOP
.UNIQUE876: 
	movl	$0, %r8d
 jmp .UNIQUE877
NOP
NOP
NOP
NOP
NOP
.UNIQUE877: 
	movl	$0, %ecx
 jmp .UNIQUE878
NOP
NOP
NOP
NOP
NOP
.UNIQUE878: 
	movl	$1, %esi
 jmp .UNIQUE879
NOP
NOP
NOP
NOP
NOP
.UNIQUE879: 
	movq	%rax, %rdi
 jmp .UNIQUE880
NOP
NOP
NOP
NOP
NOP
.UNIQUE880: 
	call	get_secure_data
 jmp .UNIQUE881
NOP
NOP
NOP
NOP
NOP
.UNIQUE881: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE882
NOP
NOP
NOP
NOP
NOP
.UNIQUE882: 
	ret
	.cfi_endproc
.LFE23:
	.size	get_char, .-get_char
	.globl	get_int
	.type	get_int, @function
get_int:
.LFB24:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE883
NOP
NOP
NOP
NOP
NOP
.UNIQUE883: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE884
NOP
NOP
NOP
NOP
NOP
.UNIQUE884: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE885
NOP
NOP
NOP
NOP
NOP
.UNIQUE885: 
	subq	$16, %rsp
 jmp .UNIQUE886
NOP
NOP
NOP
NOP
NOP
.UNIQUE886: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE887
NOP
NOP
NOP
NOP
NOP
.UNIQUE887: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE888
NOP
NOP
NOP
NOP
NOP
.UNIQUE888: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE889
NOP
NOP
NOP
NOP
NOP
.UNIQUE889: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE890
NOP
NOP
NOP
NOP
NOP
.UNIQUE890: 
	movl	$0, %r8d
 jmp .UNIQUE891
NOP
NOP
NOP
NOP
NOP
.UNIQUE891: 
	movl	$0, %ecx
 jmp .UNIQUE892
NOP
NOP
NOP
NOP
NOP
.UNIQUE892: 
	movl	$4, %esi
 jmp .UNIQUE893
NOP
NOP
NOP
NOP
NOP
.UNIQUE893: 
	movq	%rax, %rdi
 jmp .UNIQUE894
NOP
NOP
NOP
NOP
NOP
.UNIQUE894: 
	call	get_secure_data
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
.LFE24:
	.size	get_int, .-get_int
	.globl	get_long_int
	.type	get_long_int, @function
get_long_int:
.LFB25:
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
	subq	$16, %rsp
 jmp .UNIQUE900
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
.UNIQUE901: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE902
NOP
NOP
NOP
NOP
NOP
.UNIQUE902: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE903
NOP
NOP
NOP
NOP
NOP
.UNIQUE903: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE904
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
.UNIQUE905: 
	movl	$0, %ecx
 jmp .UNIQUE906
NOP
NOP
NOP
NOP
NOP
.UNIQUE906: 
	movl	$8, %esi
 jmp .UNIQUE907
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
.UNIQUE908: 
	call	get_secure_data
 jmp .UNIQUE909
NOP
NOP
NOP
NOP
NOP
.UNIQUE909: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE910
NOP
NOP
NOP
NOP
NOP
.UNIQUE910: 
	ret
	.cfi_endproc
.LFE25:
	.size	get_long_int, .-get_long_int
	.globl	get_float
	.type	get_float, @function
get_float:
.LFB26:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE911
NOP
NOP
NOP
NOP
NOP
.UNIQUE911: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE912
NOP
NOP
NOP
NOP
NOP
.UNIQUE912: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE913
NOP
NOP
NOP
NOP
NOP
.UNIQUE913: 
	subq	$16, %rsp
 jmp .UNIQUE914
NOP
NOP
NOP
NOP
NOP
.UNIQUE914: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE915
NOP
NOP
NOP
NOP
NOP
.UNIQUE915: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE916
NOP
NOP
NOP
NOP
NOP
.UNIQUE916: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE917
NOP
NOP
NOP
NOP
NOP
.UNIQUE917: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE918
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
.UNIQUE919: 
	movl	$0, %ecx
 jmp .UNIQUE920
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
.UNIQUE921: 
	movq	%rax, %rdi
 jmp .UNIQUE922
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
.UNIQUE923: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE924
NOP
NOP
NOP
NOP
NOP
.UNIQUE924: 
	ret
	.cfi_endproc
.LFE26:
	.size	get_float, .-get_float
	.globl	get_double
	.type	get_double, @function
get_double:
.LFB27:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE925
NOP
NOP
NOP
NOP
NOP
.UNIQUE925: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE926
NOP
NOP
NOP
NOP
NOP
.UNIQUE926: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE927
NOP
NOP
NOP
NOP
NOP
.UNIQUE927: 
	subq	$16, %rsp
 jmp .UNIQUE928
NOP
NOP
NOP
NOP
NOP
.UNIQUE928: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE929
NOP
NOP
NOP
NOP
NOP
.UNIQUE929: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE930
NOP
NOP
NOP
NOP
NOP
.UNIQUE930: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE931
NOP
NOP
NOP
NOP
NOP
.UNIQUE931: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE932
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
.UNIQUE933: 
	movl	$0, %ecx
 jmp .UNIQUE934
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
.UNIQUE935: 
	movq	%rax, %rdi
 jmp .UNIQUE936
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
.UNIQUE937: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE938
NOP
NOP
NOP
NOP
NOP
.UNIQUE938: 
	ret
	.cfi_endproc
.LFE27:
	.size	get_double, .-get_double
	.globl	get_array_element
	.type	get_array_element, @function
get_array_element:
.LFB28:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE939
NOP
NOP
NOP
NOP
NOP
.UNIQUE939: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE940
NOP
NOP
NOP
NOP
NOP
.UNIQUE940: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE941
NOP
NOP
NOP
NOP
NOP
.UNIQUE941: 
	subq	$32, %rsp
 jmp .UNIQUE942
NOP
NOP
NOP
NOP
NOP
.UNIQUE942: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE943
NOP
NOP
NOP
NOP
NOP
.UNIQUE943: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE944
NOP
NOP
NOP
NOP
NOP
.UNIQUE944: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE945
NOP
NOP
NOP
NOP
NOP
.UNIQUE945: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE946
NOP
NOP
NOP
NOP
NOP
.UNIQUE946: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE947
NOP
NOP
NOP
NOP
NOP
.UNIQUE947: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE948
NOP
NOP
NOP
NOP
NOP
.UNIQUE948: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE949
NOP
NOP
NOP
NOP
NOP
.UNIQUE949: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE950
NOP
NOP
NOP
NOP
NOP
.UNIQUE950: 
	movq	%rcx, %r8
 jmp .UNIQUE951
NOP
NOP
NOP
NOP
NOP
.UNIQUE951: 
	movl	$1, %ecx
 jmp .UNIQUE952
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
.UNIQUE953: 
	call	get_secure_data
 jmp .UNIQUE954
NOP
NOP
NOP
NOP
NOP
.UNIQUE954: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE955
NOP
NOP
NOP
NOP
NOP
.UNIQUE955: 
	ret
	.cfi_endproc
.LFE28:
	.size	get_array_element, .-get_array_element
	.globl	set_char
	.type	set_char, @function
set_char:
.LFB29:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE956
NOP
NOP
NOP
NOP
NOP
.UNIQUE956: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE957
NOP
NOP
NOP
NOP
NOP
.UNIQUE957: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE958
NOP
NOP
NOP
NOP
NOP
.UNIQUE958: 
	subq	$16, %rsp
 jmp .UNIQUE959
NOP
NOP
NOP
NOP
NOP
.UNIQUE959: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE960
NOP
NOP
NOP
NOP
NOP
.UNIQUE960: 
	movl	%esi, %eax
 jmp .UNIQUE961
NOP
NOP
NOP
NOP
NOP
.UNIQUE961: 
	movb	%al, -12(%rbp)
 jmp .UNIQUE962
NOP
NOP
NOP
NOP
NOP
.UNIQUE962: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE963
NOP
NOP
NOP
NOP
NOP
.UNIQUE963: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE964
NOP
NOP
NOP
NOP
NOP
.UNIQUE964: 
	movq	%rax, %rsi
 jmp .UNIQUE965
NOP
NOP
NOP
NOP
NOP
.UNIQUE965: 
	movl	$1, %edi
 jmp .UNIQUE966
NOP
NOP
NOP
NOP
NOP
.UNIQUE966: 
	call	insert_data_into_mem
 jmp .UNIQUE967
NOP
NOP
NOP
NOP
NOP
.UNIQUE967: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE968
NOP
NOP
NOP
NOP
NOP
.UNIQUE968: 
	ret
	.cfi_endproc
.LFE29:
	.size	set_char, .-set_char
	.globl	set_int
	.type	set_int, @function
set_int:
.LFB30:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE969
NOP
NOP
NOP
NOP
NOP
.UNIQUE969: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE970
NOP
NOP
NOP
NOP
NOP
.UNIQUE970: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE971
NOP
NOP
NOP
NOP
NOP
.UNIQUE971: 
	subq	$16, %rsp
 jmp .UNIQUE972
NOP
NOP
NOP
NOP
NOP
.UNIQUE972: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE973
NOP
NOP
NOP
NOP
NOP
.UNIQUE973: 
	movl	%esi, -12(%rbp)
 jmp .UNIQUE974
NOP
NOP
NOP
NOP
NOP
.UNIQUE974: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE975
NOP
NOP
NOP
NOP
NOP
.UNIQUE975: 
	leaq	-12(%rbp), %rax
 jmp .UNIQUE976
NOP
NOP
NOP
NOP
NOP
.UNIQUE976: 
	movq	%rax, %rsi
 jmp .UNIQUE977
NOP
NOP
NOP
NOP
NOP
.UNIQUE977: 
	movl	$4, %edi
 jmp .UNIQUE978
NOP
NOP
NOP
NOP
NOP
.UNIQUE978: 
	call	insert_data_into_mem
 jmp .UNIQUE979
NOP
NOP
NOP
NOP
NOP
.UNIQUE979: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE980
NOP
NOP
NOP
NOP
NOP
.UNIQUE980: 
	ret
	.cfi_endproc
.LFE30:
	.size	set_int, .-set_int
	.globl	set_long_int
	.type	set_long_int, @function
set_long_int:
.LFB31:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE981
NOP
NOP
NOP
NOP
NOP
.UNIQUE981: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE982
NOP
NOP
NOP
NOP
NOP
.UNIQUE982: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE983
NOP
NOP
NOP
NOP
NOP
.UNIQUE983: 
	subq	$16, %rsp
 jmp .UNIQUE984
NOP
NOP
NOP
NOP
NOP
.UNIQUE984: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE985
NOP
NOP
NOP
NOP
NOP
.UNIQUE985: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE986
NOP
NOP
NOP
NOP
NOP
.UNIQUE986: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE987
NOP
NOP
NOP
NOP
NOP
.UNIQUE987: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE988
NOP
NOP
NOP
NOP
NOP
.UNIQUE988: 
	movq	%rax, %rsi
 jmp .UNIQUE989
NOP
NOP
NOP
NOP
NOP
.UNIQUE989: 
	movl	$8, %edi
 jmp .UNIQUE990
NOP
NOP
NOP
NOP
NOP
.UNIQUE990: 
	call	insert_data_into_mem
 jmp .UNIQUE991
NOP
NOP
NOP
NOP
NOP
.UNIQUE991: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE992
NOP
NOP
NOP
NOP
NOP
.UNIQUE992: 
	ret
	.cfi_endproc
.LFE31:
	.size	set_long_int, .-set_long_int
	.globl	set_float
	.type	set_float, @function
set_float:
.LFB32:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE993
NOP
NOP
NOP
NOP
NOP
.UNIQUE993: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE994
NOP
NOP
NOP
NOP
NOP
.UNIQUE994: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE995
NOP
NOP
NOP
NOP
NOP
.UNIQUE995: 
	subq	$16, %rsp
 jmp .UNIQUE996
NOP
NOP
NOP
NOP
NOP
.UNIQUE996: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE997
NOP
NOP
NOP
NOP
NOP
.UNIQUE997: 
	movss	%xmm0, -12(%rbp)
 jmp .UNIQUE998
NOP
NOP
NOP
NOP
NOP
.UNIQUE998: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE999
NOP
NOP
NOP
NOP
NOP
.UNIQUE999: 
	leaq	-12(%rbp), %rax
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
	movl	$4, %edi
 jmp .UNIQUE1002
NOP
NOP
NOP
NOP
NOP
.UNIQUE1002: 
	call	insert_data_into_mem
 jmp .UNIQUE1003
NOP
NOP
NOP
NOP
NOP
.UNIQUE1003: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1004
NOP
NOP
NOP
NOP
NOP
.UNIQUE1004: 
	ret
	.cfi_endproc
.LFE32:
	.size	set_float, .-set_float
	.globl	set_double
	.type	set_double, @function
set_double:
.LFB33:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1005
NOP
NOP
NOP
NOP
NOP
.UNIQUE1005: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1006
NOP
NOP
NOP
NOP
NOP
.UNIQUE1006: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1007
NOP
NOP
NOP
NOP
NOP
.UNIQUE1007: 
	subq	$16, %rsp
 jmp .UNIQUE1008
NOP
NOP
NOP
NOP
NOP
.UNIQUE1008: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1009
NOP
NOP
NOP
NOP
NOP
.UNIQUE1009: 
	movsd	%xmm0, -16(%rbp)
 jmp .UNIQUE1010
NOP
NOP
NOP
NOP
NOP
.UNIQUE1010: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1011
NOP
NOP
NOP
NOP
NOP
.UNIQUE1011: 
	leaq	-16(%rbp), %rax
 jmp .UNIQUE1012
NOP
NOP
NOP
NOP
NOP
.UNIQUE1012: 
	movq	%rax, %rsi
 jmp .UNIQUE1013
NOP
NOP
NOP
NOP
NOP
.UNIQUE1013: 
	movl	$8, %edi
 jmp .UNIQUE1014
NOP
NOP
NOP
NOP
NOP
.UNIQUE1014: 
	call	insert_data_into_mem
 jmp .UNIQUE1015
NOP
NOP
NOP
NOP
NOP
.UNIQUE1015: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1016
NOP
NOP
NOP
NOP
NOP
.UNIQUE1016: 
	ret
	.cfi_endproc
.LFE33:
	.size	set_double, .-set_double
	.globl	set_array_element
	.type	set_array_element, @function
set_array_element:
.LFB34:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1017
NOP
NOP
NOP
NOP
NOP
.UNIQUE1017: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1018
NOP
NOP
NOP
NOP
NOP
.UNIQUE1018: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1019
NOP
NOP
NOP
NOP
NOP
.UNIQUE1019: 
	subq	$32, %rsp
 jmp .UNIQUE1020
NOP
NOP
NOP
NOP
NOP
.UNIQUE1020: 
	movq	%rdi, -8(%rbp)
 jmp .UNIQUE1021
NOP
NOP
NOP
NOP
NOP
.UNIQUE1021: 
	movq	%rsi, -16(%rbp)
 jmp .UNIQUE1022
NOP
NOP
NOP
NOP
NOP
.UNIQUE1022: 
	movq	%rdx, -24(%rbp)
 jmp .UNIQUE1023
NOP
NOP
NOP
NOP
NOP
.UNIQUE1023: 
	movq	%rcx, -32(%rbp)
 jmp .UNIQUE1024
NOP
NOP
NOP
NOP
NOP
.UNIQUE1024: 
	movq	-24(%rbp), %rcx
 jmp .UNIQUE1025
NOP
NOP
NOP
NOP
NOP
.UNIQUE1025: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1026
NOP
NOP
NOP
NOP
NOP
.UNIQUE1026: 
	movq	-8(%rbp), %rsi
 jmp .UNIQUE1027
NOP
NOP
NOP
NOP
NOP
.UNIQUE1027: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1028
NOP
NOP
NOP
NOP
NOP
.UNIQUE1028: 
	movq	%rcx, %r8
 jmp .UNIQUE1029
NOP
NOP
NOP
NOP
NOP
.UNIQUE1029: 
	movl	$1, %ecx
 jmp .UNIQUE1030
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
.UNIQUE1031: 
	call	set_secure_data
 jmp .UNIQUE1032
NOP
NOP
NOP
NOP
NOP
.UNIQUE1032: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1033
NOP
NOP
NOP
NOP
NOP
.UNIQUE1033: 
	ret
	.cfi_endproc
.LFE34:
	.size	set_array_element, .-set_array_element
	.globl	find_large_enough_free_group
	.type	find_large_enough_free_group, @function
find_large_enough_free_group:
.LFB35:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1034
NOP
NOP
NOP
NOP
NOP
.UNIQUE1034: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1035
NOP
NOP
NOP
NOP
NOP
.UNIQUE1035: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1036
NOP
NOP
NOP
NOP
NOP
.UNIQUE1036: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1037
NOP
NOP
NOP
NOP
NOP
.UNIQUE1037: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1038
NOP
NOP
NOP
NOP
NOP
.UNIQUE1038: 
	testq	%rax, %rax
 jmp .UNIQUE1039
NOP
NOP
NOP
NOP
NOP
.UNIQUE1039: 
	jne	.L106
 jmp .UNIQUE1040
NOP
NOP
NOP
NOP
NOP
.UNIQUE1040: 
	movl	$0, %eax
 jmp .UNIQUE1041
NOP
NOP
NOP
NOP
NOP
.UNIQUE1041: 
	jmp	.L107
.L106:
 jmp .UNIQUE1042
NOP
NOP
NOP
NOP
NOP
.UNIQUE1042: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1043
NOP
NOP
NOP
NOP
NOP
.UNIQUE1043: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1044
NOP
NOP
NOP
NOP
NOP
.UNIQUE1044: 
	jmp	.L108
.L110:
 jmp .UNIQUE1045
NOP
NOP
NOP
NOP
NOP
.UNIQUE1045: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1046
NOP
NOP
NOP
NOP
NOP
.UNIQUE1046: 
	movq	(%rax), %rax
 jmp .UNIQUE1047
NOP
NOP
NOP
NOP
NOP
.UNIQUE1047: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE1048
NOP
NOP
NOP
NOP
NOP
.UNIQUE1048: 
	jl	.L109
 jmp .UNIQUE1049
NOP
NOP
NOP
NOP
NOP
.UNIQUE1049: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1050
NOP
NOP
NOP
NOP
NOP
.UNIQUE1050: 
	jmp	.L107
.L109:
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
	movq	16(%rax), %rax
 jmp .UNIQUE1053
NOP
NOP
NOP
NOP
NOP
.UNIQUE1053: 
	movq	%rax, -8(%rbp)
.L108:
 jmp .UNIQUE1054
NOP
NOP
NOP
NOP
NOP
.UNIQUE1054: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1055
NOP
NOP
NOP
NOP
NOP
.UNIQUE1055: 
	jne	.L110
 jmp .UNIQUE1056
NOP
NOP
NOP
NOP
NOP
.UNIQUE1056: 
	movl	$0, %eax
.L107:
 jmp .UNIQUE1057
NOP
NOP
NOP
NOP
NOP
.UNIQUE1057: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1058
NOP
NOP
NOP
NOP
NOP
.UNIQUE1058: 
	ret
	.cfi_endproc
.LFE35:
	.size	find_large_enough_free_group, .-find_large_enough_free_group
	.globl	find_which_group_to_free
	.type	find_which_group_to_free, @function
find_which_group_to_free:
.LFB36:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1059
NOP
NOP
NOP
NOP
NOP
.UNIQUE1059: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1060
NOP
NOP
NOP
NOP
NOP
.UNIQUE1060: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1061
NOP
NOP
NOP
NOP
NOP
.UNIQUE1061: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1062
NOP
NOP
NOP
NOP
NOP
.UNIQUE1062: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE1063
NOP
NOP
NOP
NOP
NOP
.UNIQUE1063: 
	testq	%rax, %rax
 jmp .UNIQUE1064
NOP
NOP
NOP
NOP
NOP
.UNIQUE1064: 
	jne	.L112
 jmp .UNIQUE1065
NOP
NOP
NOP
NOP
NOP
.UNIQUE1065: 
	movl	$0, %eax
 jmp .UNIQUE1066
NOP
NOP
NOP
NOP
NOP
.UNIQUE1066: 
	jmp	.L113
.L112:
 jmp .UNIQUE1067
NOP
NOP
NOP
NOP
NOP
.UNIQUE1067: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE1068
NOP
NOP
NOP
NOP
NOP
.UNIQUE1068: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1069
NOP
NOP
NOP
NOP
NOP
.UNIQUE1069: 
	jmp	.L114
.L116:
 jmp .UNIQUE1070
NOP
NOP
NOP
NOP
NOP
.UNIQUE1070: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1071
NOP
NOP
NOP
NOP
NOP
.UNIQUE1071: 
	movq	8(%rax), %rax
 jmp .UNIQUE1072
NOP
NOP
NOP
NOP
NOP
.UNIQUE1072: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE1073
NOP
NOP
NOP
NOP
NOP
.UNIQUE1073: 
	jne	.L115
 jmp .UNIQUE1074
NOP
NOP
NOP
NOP
NOP
.UNIQUE1074: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1075
NOP
NOP
NOP
NOP
NOP
.UNIQUE1075: 
	jmp	.L113
.L115:
 jmp .UNIQUE1076
NOP
NOP
NOP
NOP
NOP
.UNIQUE1076: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1077
NOP
NOP
NOP
NOP
NOP
.UNIQUE1077: 
	movq	16(%rax), %rax
 jmp .UNIQUE1078
NOP
NOP
NOP
NOP
NOP
.UNIQUE1078: 
	movq	%rax, -8(%rbp)
.L114:
 jmp .UNIQUE1079
NOP
NOP
NOP
NOP
NOP
.UNIQUE1079: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1080
NOP
NOP
NOP
NOP
NOP
.UNIQUE1080: 
	jne	.L116
 jmp .UNIQUE1081
NOP
NOP
NOP
NOP
NOP
.UNIQUE1081: 
	movl	$0, %eax
.L113:
 jmp .UNIQUE1082
NOP
NOP
NOP
NOP
NOP
.UNIQUE1082: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1083
NOP
NOP
NOP
NOP
NOP
.UNIQUE1083: 
	ret
	.cfi_endproc
.LFE36:
	.size	find_which_group_to_free, .-find_which_group_to_free
	.section	.rodata
	.align 8
.LC14:
	.string	"check_and_merge:malloc failed.\n"
	.text
	.globl	check_and_merge
	.type	check_and_merge, @function
check_and_merge:
.LFB37:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1084
NOP
NOP
NOP
NOP
NOP
.UNIQUE1084: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1085
NOP
NOP
NOP
NOP
NOP
.UNIQUE1085: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1086
NOP
NOP
NOP
NOP
NOP
.UNIQUE1086: 
	subq	$48, %rsp
 jmp .UNIQUE1087
NOP
NOP
NOP
NOP
NOP
.UNIQUE1087: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1088
NOP
NOP
NOP
NOP
NOP
.UNIQUE1088: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1089
NOP
NOP
NOP
NOP
NOP
.UNIQUE1089: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE1090
NOP
NOP
NOP
NOP
NOP
.UNIQUE1090: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1091
NOP
NOP
NOP
NOP
NOP
.UNIQUE1091: 
	movq	8(%rax), %rax
 jmp .UNIQUE1092
NOP
NOP
NOP
NOP
NOP
.UNIQUE1092: 
	movq	%rax, %rcx
 jmp .UNIQUE1093
NOP
NOP
NOP
NOP
NOP
.UNIQUE1093: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1094
NOP
NOP
NOP
NOP
NOP
.UNIQUE1094: 
	movq	(%rax), %rdx
 jmp .UNIQUE1095
NOP
NOP
NOP
NOP
NOP
.UNIQUE1095: 
	movq	%rdx, %rax
 jmp .UNIQUE1096
NOP
NOP
NOP
NOP
NOP
.UNIQUE1096: 
	salq	$3, %rax
 jmp .UNIQUE1097
NOP
NOP
NOP
NOP
NOP
.UNIQUE1097: 
	addq	%rdx, %rax
 jmp .UNIQUE1098
NOP
NOP
NOP
NOP
NOP
.UNIQUE1098: 
	leaq	(%rcx,%rax), %rdx
 jmp .UNIQUE1099
NOP
NOP
NOP
NOP
NOP
.UNIQUE1099: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1100
NOP
NOP
NOP
NOP
NOP
.UNIQUE1100: 
	movq	8(%rax), %rax
 jmp .UNIQUE1101
NOP
NOP
NOP
NOP
NOP
.UNIQUE1101: 
	cmpq	%rax, %rdx
 jmp .UNIQUE1102
NOP
NOP
NOP
NOP
NOP
.UNIQUE1102: 
	jne	.L118
 jmp .UNIQUE1103
NOP
NOP
NOP
NOP
NOP
.UNIQUE1103: 
	movl	$32, %edi
 jmp .UNIQUE1104
NOP
NOP
NOP
NOP
NOP
.UNIQUE1104: 
	call	malloc
 jmp .UNIQUE1105
NOP
NOP
NOP
NOP
NOP
.UNIQUE1105: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1106
NOP
NOP
NOP
NOP
NOP
.UNIQUE1106: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1107
NOP
NOP
NOP
NOP
NOP
.UNIQUE1107: 
	jne	.L119
 jmp .UNIQUE1108
NOP
NOP
NOP
NOP
NOP
.UNIQUE1108: 
	movl	$.LC14, %edi
 jmp .UNIQUE1109
NOP
NOP
NOP
NOP
NOP
.UNIQUE1109: 
	call	perror
 jmp .UNIQUE1110
NOP
NOP
NOP
NOP
NOP
.UNIQUE1110: 
	movl	$42, %edi
 jmp .UNIQUE1111
NOP
NOP
NOP
NOP
NOP
.UNIQUE1111: 
	call	exit
.L119:
 jmp .UNIQUE1112
NOP
NOP
NOP
NOP
NOP
.UNIQUE1112: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1113
NOP
NOP
NOP
NOP
NOP
.UNIQUE1113: 
	movq	(%rax), %rdx
 jmp .UNIQUE1114
NOP
NOP
NOP
NOP
NOP
.UNIQUE1114: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1115
NOP
NOP
NOP
NOP
NOP
.UNIQUE1115: 
	movq	(%rax), %rax
 jmp .UNIQUE1116
NOP
NOP
NOP
NOP
NOP
.UNIQUE1116: 
	addq	%rax, %rdx
 jmp .UNIQUE1117
NOP
NOP
NOP
NOP
NOP
.UNIQUE1117: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1118
NOP
NOP
NOP
NOP
NOP
.UNIQUE1118: 
	movq	%rdx, (%rax)
 jmp .UNIQUE1119
NOP
NOP
NOP
NOP
NOP
.UNIQUE1119: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1120
NOP
NOP
NOP
NOP
NOP
.UNIQUE1120: 
	movq	8(%rax), %rdx
 jmp .UNIQUE1121
NOP
NOP
NOP
NOP
NOP
.UNIQUE1121: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1122
NOP
NOP
NOP
NOP
NOP
.UNIQUE1122: 
	movq	%rdx, 8(%rax)
 jmp .UNIQUE1123
NOP
NOP
NOP
NOP
NOP
.UNIQUE1123: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1124
NOP
NOP
NOP
NOP
NOP
.UNIQUE1124: 
	movq	24(%rax), %rdx
 jmp .UNIQUE1125
NOP
NOP
NOP
NOP
NOP
.UNIQUE1125: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1126
NOP
NOP
NOP
NOP
NOP
.UNIQUE1126: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE1127
NOP
NOP
NOP
NOP
NOP
.UNIQUE1127: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1128
NOP
NOP
NOP
NOP
NOP
.UNIQUE1128: 
	movq	16(%rax), %rdx
 jmp .UNIQUE1129
NOP
NOP
NOP
NOP
NOP
.UNIQUE1129: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1130
NOP
NOP
NOP
NOP
NOP
.UNIQUE1130: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE1131
NOP
NOP
NOP
NOP
NOP
.UNIQUE1131: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1132
NOP
NOP
NOP
NOP
NOP
.UNIQUE1132: 
	movq	24(%rax), %rax
 jmp .UNIQUE1133
NOP
NOP
NOP
NOP
NOP
.UNIQUE1133: 
	testq	%rax, %rax
 jmp .UNIQUE1134
NOP
NOP
NOP
NOP
NOP
.UNIQUE1134: 
	je	.L120
 jmp .UNIQUE1135
NOP
NOP
NOP
NOP
NOP
.UNIQUE1135: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1136
NOP
NOP
NOP
NOP
NOP
.UNIQUE1136: 
	movq	24(%rax), %rax
 jmp .UNIQUE1137
NOP
NOP
NOP
NOP
NOP
.UNIQUE1137: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1138
NOP
NOP
NOP
NOP
NOP
.UNIQUE1138: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE1139
NOP
NOP
NOP
NOP
NOP
.UNIQUE1139: 
	jmp	.L121
.L120:
 jmp .UNIQUE1140
NOP
NOP
NOP
NOP
NOP
.UNIQUE1140: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1141
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
.UNIQUE1142: 
	movq	%rdx, (%rax)
.L121:
 jmp .UNIQUE1143
NOP
NOP
NOP
NOP
NOP
.UNIQUE1143: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1144
NOP
NOP
NOP
NOP
NOP
.UNIQUE1144: 
	movq	16(%rax), %rax
 jmp .UNIQUE1145
NOP
NOP
NOP
NOP
NOP
.UNIQUE1145: 
	testq	%rax, %rax
 jmp .UNIQUE1146
NOP
NOP
NOP
NOP
NOP
.UNIQUE1146: 
	je	.L122
 jmp .UNIQUE1147
NOP
NOP
NOP
NOP
NOP
.UNIQUE1147: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1148
NOP
NOP
NOP
NOP
NOP
.UNIQUE1148: 
	movq	16(%rax), %rax
 jmp .UNIQUE1149
NOP
NOP
NOP
NOP
NOP
.UNIQUE1149: 
	movq	-8(%rbp), %rdx
 jmp .UNIQUE1150
NOP
NOP
NOP
NOP
NOP
.UNIQUE1150: 
	movq	%rdx, 24(%rax)
.L122:
 jmp .UNIQUE1151
NOP
NOP
NOP
NOP
NOP
.UNIQUE1151: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1152
NOP
NOP
NOP
NOP
NOP
.UNIQUE1152: 
	movq	%rax, %rdi
 jmp .UNIQUE1153
NOP
NOP
NOP
NOP
NOP
.UNIQUE1153: 
	call	free
 jmp .UNIQUE1154
NOP
NOP
NOP
NOP
NOP
.UNIQUE1154: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1155
NOP
NOP
NOP
NOP
NOP
.UNIQUE1155: 
	movq	%rax, %rdi
 jmp .UNIQUE1156
NOP
NOP
NOP
NOP
NOP
.UNIQUE1156: 
	call	free
 jmp .UNIQUE1157
NOP
NOP
NOP
NOP
NOP
.UNIQUE1157: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1158
NOP
NOP
NOP
NOP
NOP
.UNIQUE1158: 
	jmp	.L123
.L118:
 jmp .UNIQUE1159
NOP
NOP
NOP
NOP
NOP
.UNIQUE1159: 
	movl	$0, %eax
.L123:
 jmp .UNIQUE1160
NOP
NOP
NOP
NOP
NOP
.UNIQUE1160: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1161
NOP
NOP
NOP
NOP
NOP
.UNIQUE1161: 
	ret
	.cfi_endproc
.LFE37:
	.size	check_and_merge, .-check_and_merge
	.globl	managed_secure_malloc
	.type	managed_secure_malloc, @function
managed_secure_malloc:
.LFB38:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1162
NOP
NOP
NOP
NOP
NOP
.UNIQUE1162: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1163
NOP
NOP
NOP
NOP
NOP
.UNIQUE1163: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1164
NOP
NOP
NOP
NOP
NOP
.UNIQUE1164: 
	subq	$96, %rsp
 jmp .UNIQUE1165
NOP
NOP
NOP
NOP
NOP
.UNIQUE1165: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE1166
NOP
NOP
NOP
NOP
NOP
.UNIQUE1166: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1167
NOP
NOP
NOP
NOP
NOP
.UNIQUE1167: 
	leaq	3(%rax), %rdx
 jmp .UNIQUE1168
NOP
NOP
NOP
NOP
NOP
.UNIQUE1168: 
	testq	%rax, %rax
 jmp .UNIQUE1169
NOP
NOP
NOP
NOP
NOP
.UNIQUE1169: 
	cmovs	%rdx, %rax
 jmp .UNIQUE1170
NOP
NOP
NOP
NOP
NOP
.UNIQUE1170: 
	sarq	$2, %rax
 jmp .UNIQUE1171
NOP
NOP
NOP
NOP
NOP
.UNIQUE1171: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE1172
NOP
NOP
NOP
NOP
NOP
.UNIQUE1172: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE1173
NOP
NOP
NOP
NOP
NOP
.UNIQUE1173: 
	salq	$2, %rax
 jmp .UNIQUE1174
NOP
NOP
NOP
NOP
NOP
.UNIQUE1174: 
	cmpq	-56(%rbp), %rax
 jmp .UNIQUE1175
NOP
NOP
NOP
NOP
NOP
.UNIQUE1175: 
	jge	.L125
 jmp .UNIQUE1176
NOP
NOP
NOP
NOP
NOP
.UNIQUE1176: 
	addq	$1, -48(%rbp)
.L125:
 jmp .UNIQUE1177
NOP
NOP
NOP
NOP
NOP
.UNIQUE1177: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE1178
NOP
NOP
NOP
NOP
NOP
.UNIQUE1178: 
	movq	%rax, %rdi
 jmp .UNIQUE1179
NOP
NOP
NOP
NOP
NOP
.UNIQUE1179: 
	call	find_large_enough_free_group
 jmp .UNIQUE1180
NOP
NOP
NOP
NOP
NOP
.UNIQUE1180: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE1181
NOP
NOP
NOP
NOP
NOP
.UNIQUE1181: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE1182
NOP
NOP
NOP
NOP
NOP
.UNIQUE1182: 
	jne	.L126
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
	jmp	.L130
.L126:
 jmp .UNIQUE1185
NOP
NOP
NOP
NOP
NOP
.UNIQUE1185: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE1186
NOP
NOP
NOP
NOP
NOP
.UNIQUE1186: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE1187
NOP
NOP
NOP
NOP
NOP
.UNIQUE1187: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1188
NOP
NOP
NOP
NOP
NOP
.UNIQUE1188: 
	movq	8(%rax), %rax
 jmp .UNIQUE1189
NOP
NOP
NOP
NOP
NOP
.UNIQUE1189: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1190
NOP
NOP
NOP
NOP
NOP
.UNIQUE1190: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE1191
NOP
NOP
NOP
NOP
NOP
.UNIQUE1191: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE1192
NOP
NOP
NOP
NOP
NOP
.UNIQUE1192: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE1193
NOP
NOP
NOP
NOP
NOP
.UNIQUE1193: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE1194
NOP
NOP
NOP
NOP
NOP
.UNIQUE1194: 
	movq	%rdx, (%rsp)
 jmp .UNIQUE1195
NOP
NOP
NOP
NOP
NOP
.UNIQUE1195: 
	movq	-24(%rbp), %rdx
 jmp .UNIQUE1196
NOP
NOP
NOP
NOP
NOP
.UNIQUE1196: 
	movq	%rdx, 8(%rsp)
 jmp .UNIQUE1197
NOP
NOP
NOP
NOP
NOP
.UNIQUE1197: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1198
NOP
NOP
NOP
NOP
NOP
.UNIQUE1198: 
	movq	%rdx, 16(%rsp)
 jmp .UNIQUE1199
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
.UNIQUE1200: 
	movq	%rdx, 24(%rsp)
 jmp .UNIQUE1201
NOP
NOP
NOP
NOP
NOP
.UNIQUE1201: 
	movq	%rax, %rdi
 jmp .UNIQUE1202
NOP
NOP
NOP
NOP
NOP
.UNIQUE1202: 
	call	add_node_to_list
 jmp .UNIQUE1203
NOP
NOP
NOP
NOP
NOP
.UNIQUE1203: 
	movq	%rax, allocated_chunks_list(%rip)
 jmp .UNIQUE1204
NOP
NOP
NOP
NOP
NOP
.UNIQUE1204: 
	movq	allocated_chunks_num(%rip), %rax
 jmp .UNIQUE1205
NOP
NOP
NOP
NOP
NOP
.UNIQUE1205: 
	addq	$1, %rax
 jmp .UNIQUE1206
NOP
NOP
NOP
NOP
NOP
.UNIQUE1206: 
	movq	%rax, allocated_chunks_num(%rip)
 jmp .UNIQUE1207
NOP
NOP
NOP
NOP
NOP
.UNIQUE1207: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1208
NOP
NOP
NOP
NOP
NOP
.UNIQUE1208: 
	movq	(%rax), %rax
 jmp .UNIQUE1209
NOP
NOP
NOP
NOP
NOP
.UNIQUE1209: 
	cmpq	-48(%rbp), %rax
 jmp .UNIQUE1210
NOP
NOP
NOP
NOP
NOP
.UNIQUE1210: 
	jne	.L128
 jmp .UNIQUE1211
NOP
NOP
NOP
NOP
NOP
.UNIQUE1211: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1212
NOP
NOP
NOP
NOP
NOP
.UNIQUE1212: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE1213
NOP
NOP
NOP
NOP
NOP
.UNIQUE1213: 
	movq	%rdx, %rsi
 jmp .UNIQUE1214
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
.UNIQUE1215: 
	call	delete_node_from_list
 jmp .UNIQUE1216
NOP
NOP
NOP
NOP
NOP
.UNIQUE1216: 
	movq	%rax, free_chunks_list(%rip)
 jmp .UNIQUE1217
NOP
NOP
NOP
NOP
NOP
.UNIQUE1217: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1218
NOP
NOP
NOP
NOP
NOP
.UNIQUE1218: 
	subq	$1, %rax
 jmp .UNIQUE1219
NOP
NOP
NOP
NOP
NOP
.UNIQUE1219: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1220
NOP
NOP
NOP
NOP
NOP
.UNIQUE1220: 
	jmp	.L129
.L128:
 jmp .UNIQUE1221
NOP
NOP
NOP
NOP
NOP
.UNIQUE1221: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1222
NOP
NOP
NOP
NOP
NOP
.UNIQUE1222: 
	movq	(%rax), %rax
 jmp .UNIQUE1223
NOP
NOP
NOP
NOP
NOP
.UNIQUE1223: 
	subq	-48(%rbp), %rax
 jmp .UNIQUE1224
NOP
NOP
NOP
NOP
NOP
.UNIQUE1224: 
	movq	%rax, %rdx
 jmp .UNIQUE1225
NOP
NOP
NOP
NOP
NOP
.UNIQUE1225: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1226
NOP
NOP
NOP
NOP
NOP
.UNIQUE1226: 
	movq	%rdx, (%rax)
 jmp .UNIQUE1227
NOP
NOP
NOP
NOP
NOP
.UNIQUE1227: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1228
NOP
NOP
NOP
NOP
NOP
.UNIQUE1228: 
	movq	8(%rax), %rcx
 jmp .UNIQUE1229
NOP
NOP
NOP
NOP
NOP
.UNIQUE1229: 
	movq	-48(%rbp), %rdx
 jmp .UNIQUE1230
NOP
NOP
NOP
NOP
NOP
.UNIQUE1230: 
	movq	%rdx, %rax
 jmp .UNIQUE1231
NOP
NOP
NOP
NOP
NOP
.UNIQUE1231: 
	salq	$3, %rax
 jmp .UNIQUE1232
NOP
NOP
NOP
NOP
NOP
.UNIQUE1232: 
	addq	%rdx, %rax
 jmp .UNIQUE1233
NOP
NOP
NOP
NOP
NOP
.UNIQUE1233: 
	leaq	(%rcx,%rax), %rdx
 jmp .UNIQUE1234
NOP
NOP
NOP
NOP
NOP
.UNIQUE1234: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1235
NOP
NOP
NOP
NOP
NOP
.UNIQUE1235: 
	movq	%rdx, 8(%rax)
.L129:
 jmp .UNIQUE1236
NOP
NOP
NOP
NOP
NOP
.UNIQUE1236: 
	movq	-24(%rbp), %rax
.L130:
 jmp .UNIQUE1237
NOP
NOP
NOP
NOP
NOP
.UNIQUE1237: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1238
NOP
NOP
NOP
NOP
NOP
.UNIQUE1238: 
	ret
	.cfi_endproc
.LFE38:
	.size	managed_secure_malloc, .-managed_secure_malloc
	.section	.rodata
	.align 8
.LC15:
	.string	"managed_secure_free:malloc failed.\n"
	.text
	.globl	managed_secure_free
	.type	managed_secure_free, @function
managed_secure_free:
.LFB39:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1239
NOP
NOP
NOP
NOP
NOP
.UNIQUE1239: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1240
NOP
NOP
NOP
NOP
NOP
.UNIQUE1240: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1241
NOP
NOP
NOP
NOP
NOP
.UNIQUE1241: 
	subq	$96, %rsp
 jmp .UNIQUE1242
NOP
NOP
NOP
NOP
NOP
.UNIQUE1242: 
	movq	%rdi, -56(%rbp)
 jmp .UNIQUE1243
NOP
NOP
NOP
NOP
NOP
.UNIQUE1243: 
	movl	$0, -48(%rbp)
 jmp .UNIQUE1244
NOP
NOP
NOP
NOP
NOP
.UNIQUE1244: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1245
NOP
NOP
NOP
NOP
NOP
.UNIQUE1245: 
	movq	%rax, %rdi
 jmp .UNIQUE1246
NOP
NOP
NOP
NOP
NOP
.UNIQUE1246: 
	call	find_which_group_to_free
 jmp .UNIQUE1247
NOP
NOP
NOP
NOP
NOP
.UNIQUE1247: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE1248
NOP
NOP
NOP
NOP
NOP
.UNIQUE1248: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE1249
NOP
NOP
NOP
NOP
NOP
.UNIQUE1249: 
	jne	.L132
 jmp .UNIQUE1250
NOP
NOP
NOP
NOP
NOP
.UNIQUE1250: 
	movl	$0, %eax
 jmp .UNIQUE1251
NOP
NOP
NOP
NOP
NOP
.UNIQUE1251: 
	jmp	.L133
.L132:
 jmp .UNIQUE1252
NOP
NOP
NOP
NOP
NOP
.UNIQUE1252: 
	movl	$32, %edi
 jmp .UNIQUE1253
NOP
NOP
NOP
NOP
NOP
.UNIQUE1253: 
	call	malloc
 jmp .UNIQUE1254
NOP
NOP
NOP
NOP
NOP
.UNIQUE1254: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE1255
NOP
NOP
NOP
NOP
NOP
.UNIQUE1255: 
	cmpq	$0, -16(%rbp)
 jmp .UNIQUE1256
NOP
NOP
NOP
NOP
NOP
.UNIQUE1256: 
	jne	.L134
 jmp .UNIQUE1257
NOP
NOP
NOP
NOP
NOP
.UNIQUE1257: 
	movl	$.LC15, %edi
 jmp .UNIQUE1258
NOP
NOP
NOP
NOP
NOP
.UNIQUE1258: 
	call	perror
 jmp .UNIQUE1259
NOP
NOP
NOP
NOP
NOP
.UNIQUE1259: 
	movl	$42, %edi
 jmp .UNIQUE1260
NOP
NOP
NOP
NOP
NOP
.UNIQUE1260: 
	call	exit
.L134:
 jmp .UNIQUE1261
NOP
NOP
NOP
NOP
NOP
.UNIQUE1261: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE1262
NOP
NOP
NOP
NOP
NOP
.UNIQUE1262: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1263
NOP
NOP
NOP
NOP
NOP
.UNIQUE1263: 
	movq	%rdx, %rsi
 jmp .UNIQUE1264
NOP
NOP
NOP
NOP
NOP
.UNIQUE1264: 
	movq	%rax, %rdi
 jmp .UNIQUE1265
NOP
NOP
NOP
NOP
NOP
.UNIQUE1265: 
	call	copy_nodes_ptr
 jmp .UNIQUE1266
NOP
NOP
NOP
NOP
NOP
.UNIQUE1266: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE1267
NOP
NOP
NOP
NOP
NOP
.UNIQUE1267: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE1268
NOP
NOP
NOP
NOP
NOP
.UNIQUE1268: 
	movq	%rdx, %rsi
 jmp .UNIQUE1269
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
.UNIQUE1270: 
	call	delete_node_from_list
 jmp .UNIQUE1271
NOP
NOP
NOP
NOP
NOP
.UNIQUE1271: 
	movq	%rax, allocated_chunks_list(%rip)
 jmp .UNIQUE1272
NOP
NOP
NOP
NOP
NOP
.UNIQUE1272: 
	movq	allocated_chunks_num(%rip), %rax
 jmp .UNIQUE1273
NOP
NOP
NOP
NOP
NOP
.UNIQUE1273: 
	subq	$1, %rax
 jmp .UNIQUE1274
NOP
NOP
NOP
NOP
NOP
.UNIQUE1274: 
	movq	%rax, allocated_chunks_num(%rip)
 jmp .UNIQUE1275
NOP
NOP
NOP
NOP
NOP
.UNIQUE1275: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1276
NOP
NOP
NOP
NOP
NOP
.UNIQUE1276: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE1277
NOP
NOP
NOP
NOP
NOP
.UNIQUE1277: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE1278
NOP
NOP
NOP
NOP
NOP
.UNIQUE1278: 
	jne	.L135
 jmp .UNIQUE1279
NOP
NOP
NOP
NOP
NOP
.UNIQUE1279: 
	movq	free_chunks_list(%rip), %rdx
 jmp .UNIQUE1280
NOP
NOP
NOP
NOP
NOP
.UNIQUE1280: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1281
NOP
NOP
NOP
NOP
NOP
.UNIQUE1281: 
	movq	(%rax), %rcx
 jmp .UNIQUE1282
NOP
NOP
NOP
NOP
NOP
.UNIQUE1282: 
	movq	%rcx, (%rsp)
 jmp .UNIQUE1283
NOP
NOP
NOP
NOP
NOP
.UNIQUE1283: 
	movq	8(%rax), %rcx
 jmp .UNIQUE1284
NOP
NOP
NOP
NOP
NOP
.UNIQUE1284: 
	movq	%rcx, 8(%rsp)
 jmp .UNIQUE1285
NOP
NOP
NOP
NOP
NOP
.UNIQUE1285: 
	movq	16(%rax), %rcx
 jmp .UNIQUE1286
NOP
NOP
NOP
NOP
NOP
.UNIQUE1286: 
	movq	%rcx, 16(%rsp)
 jmp .UNIQUE1287
NOP
NOP
NOP
NOP
NOP
.UNIQUE1287: 
	movq	24(%rax), %rax
 jmp .UNIQUE1288
NOP
NOP
NOP
NOP
NOP
.UNIQUE1288: 
	movq	%rax, 24(%rsp)
 jmp .UNIQUE1289
NOP
NOP
NOP
NOP
NOP
.UNIQUE1289: 
	movq	%rdx, %rdi
 jmp .UNIQUE1290
NOP
NOP
NOP
NOP
NOP
.UNIQUE1290: 
	call	add_node_to_list
 jmp .UNIQUE1291
NOP
NOP
NOP
NOP
NOP
.UNIQUE1291: 
	movq	%rax, free_chunks_list(%rip)
 jmp .UNIQUE1292
NOP
NOP
NOP
NOP
NOP
.UNIQUE1292: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1293
NOP
NOP
NOP
NOP
NOP
.UNIQUE1293: 
	addq	$1, %rax
 jmp .UNIQUE1294
NOP
NOP
NOP
NOP
NOP
.UNIQUE1294: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1295
NOP
NOP
NOP
NOP
NOP
.UNIQUE1295: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1296
NOP
NOP
NOP
NOP
NOP
.UNIQUE1296: 
	movq	%rax, %rdi
 jmp .UNIQUE1297
NOP
NOP
NOP
NOP
NOP
.UNIQUE1297: 
	call	free
 jmp .UNIQUE1298
NOP
NOP
NOP
NOP
NOP
.UNIQUE1298: 
	movl	$1, -48(%rbp)
 jmp .UNIQUE1299
NOP
NOP
NOP
NOP
NOP
.UNIQUE1299: 
	jmp	.L136
.L135:
 jmp .UNIQUE1300
NOP
NOP
NOP
NOP
NOP
.UNIQUE1300: 
	movq	$0, -32(%rbp)
 jmp .UNIQUE1301
NOP
NOP
NOP
NOP
NOP
.UNIQUE1301: 
	jmp	.L137
.L140:
 jmp .UNIQUE1302
NOP
NOP
NOP
NOP
NOP
.UNIQUE1302: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1303
NOP
NOP
NOP
NOP
NOP
.UNIQUE1303: 
	movq	8(%rax), %rax
 jmp .UNIQUE1304
NOP
NOP
NOP
NOP
NOP
.UNIQUE1304: 
	movq	%rax, %rdx
 jmp .UNIQUE1305
NOP
NOP
NOP
NOP
NOP
.UNIQUE1305: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1306
NOP
NOP
NOP
NOP
NOP
.UNIQUE1306: 
	movq	8(%rax), %rax
 jmp .UNIQUE1307
NOP
NOP
NOP
NOP
NOP
.UNIQUE1307: 
	cmpq	%rax, %rdx
 jmp .UNIQUE1308
NOP
NOP
NOP
NOP
NOP
.UNIQUE1308: 
	jle	.L138
 jmp .UNIQUE1309
NOP
NOP
NOP
NOP
NOP
.UNIQUE1309: 
	jmp	.L139
.L138:
 jmp .UNIQUE1310
NOP
NOP
NOP
NOP
NOP
.UNIQUE1310: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1311
NOP
NOP
NOP
NOP
NOP
.UNIQUE1311: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE1312
NOP
NOP
NOP
NOP
NOP
.UNIQUE1312: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1313
NOP
NOP
NOP
NOP
NOP
.UNIQUE1313: 
	movq	16(%rax), %rax
 jmp .UNIQUE1314
NOP
NOP
NOP
NOP
NOP
.UNIQUE1314: 
	movq	%rax, -40(%rbp)
.L137:
 jmp .UNIQUE1315
NOP
NOP
NOP
NOP
NOP
.UNIQUE1315: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE1316
NOP
NOP
NOP
NOP
NOP
.UNIQUE1316: 
	jne	.L140
.L139:
 jmp .UNIQUE1317
NOP
NOP
NOP
NOP
NOP
.UNIQUE1317: 
	cmpq	$0, -32(%rbp)
 jmp .UNIQUE1318
NOP
NOP
NOP
NOP
NOP
.UNIQUE1318: 
	jne	.L141
 jmp .UNIQUE1319
NOP
NOP
NOP
NOP
NOP
.UNIQUE1319: 
	movq	free_chunks_list(%rip), %rdx
 jmp .UNIQUE1320
NOP
NOP
NOP
NOP
NOP
.UNIQUE1320: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1321
NOP
NOP
NOP
NOP
NOP
.UNIQUE1321: 
	movq	(%rax), %rcx
 jmp .UNIQUE1322
NOP
NOP
NOP
NOP
NOP
.UNIQUE1322: 
	movq	%rcx, (%rsp)
 jmp .UNIQUE1323
NOP
NOP
NOP
NOP
NOP
.UNIQUE1323: 
	movq	8(%rax), %rcx
 jmp .UNIQUE1324
NOP
NOP
NOP
NOP
NOP
.UNIQUE1324: 
	movq	%rcx, 8(%rsp)
 jmp .UNIQUE1325
NOP
NOP
NOP
NOP
NOP
.UNIQUE1325: 
	movq	16(%rax), %rcx
 jmp .UNIQUE1326
NOP
NOP
NOP
NOP
NOP
.UNIQUE1326: 
	movq	%rcx, 16(%rsp)
 jmp .UNIQUE1327
NOP
NOP
NOP
NOP
NOP
.UNIQUE1327: 
	movq	24(%rax), %rax
 jmp .UNIQUE1328
NOP
NOP
NOP
NOP
NOP
.UNIQUE1328: 
	movq	%rax, 24(%rsp)
 jmp .UNIQUE1329
NOP
NOP
NOP
NOP
NOP
.UNIQUE1329: 
	movq	%rdx, %rdi
 jmp .UNIQUE1330
NOP
NOP
NOP
NOP
NOP
.UNIQUE1330: 
	call	add_node_to_list
 jmp .UNIQUE1331
NOP
NOP
NOP
NOP
NOP
.UNIQUE1331: 
	movq	%rax, free_chunks_list(%rip)
 jmp .UNIQUE1332
NOP
NOP
NOP
NOP
NOP
.UNIQUE1332: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1333
NOP
NOP
NOP
NOP
NOP
.UNIQUE1333: 
	addq	$1, %rax
 jmp .UNIQUE1334
NOP
NOP
NOP
NOP
NOP
.UNIQUE1334: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1335
NOP
NOP
NOP
NOP
NOP
.UNIQUE1335: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1336
NOP
NOP
NOP
NOP
NOP
.UNIQUE1336: 
	movq	%rax, %rdi
 jmp .UNIQUE1337
NOP
NOP
NOP
NOP
NOP
.UNIQUE1337: 
	call	free
 jmp .UNIQUE1338
NOP
NOP
NOP
NOP
NOP
.UNIQUE1338: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1339
NOP
NOP
NOP
NOP
NOP
.UNIQUE1339: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE1340
NOP
NOP
NOP
NOP
NOP
.UNIQUE1340: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1341
NOP
NOP
NOP
NOP
NOP
.UNIQUE1341: 
	movq	16(%rax), %rax
 jmp .UNIQUE1342
NOP
NOP
NOP
NOP
NOP
.UNIQUE1342: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1343
NOP
NOP
NOP
NOP
NOP
.UNIQUE1343: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1344
NOP
NOP
NOP
NOP
NOP
.UNIQUE1344: 
	je	.L142
 jmp .UNIQUE1345
NOP
NOP
NOP
NOP
NOP
.UNIQUE1345: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE1346
NOP
NOP
NOP
NOP
NOP
.UNIQUE1346: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1347
NOP
NOP
NOP
NOP
NOP
.UNIQUE1347: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1348
NOP
NOP
NOP
NOP
NOP
.UNIQUE1348: 
	movq	%rcx, %rsi
 jmp .UNIQUE1349
NOP
NOP
NOP
NOP
NOP
.UNIQUE1349: 
	movq	%rax, %rdi
 jmp .UNIQUE1350
NOP
NOP
NOP
NOP
NOP
.UNIQUE1350: 
	call	check_and_merge
 jmp .UNIQUE1351
NOP
NOP
NOP
NOP
NOP
.UNIQUE1351: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1352
NOP
NOP
NOP
NOP
NOP
.UNIQUE1352: 
	jmp	.L143
.L145:
 jmp .UNIQUE1353
NOP
NOP
NOP
NOP
NOP
.UNIQUE1353: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1354
NOP
NOP
NOP
NOP
NOP
.UNIQUE1354: 
	subq	$1, %rax
 jmp .UNIQUE1355
NOP
NOP
NOP
NOP
NOP
.UNIQUE1355: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1356
NOP
NOP
NOP
NOP
NOP
.UNIQUE1356: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1357
NOP
NOP
NOP
NOP
NOP
.UNIQUE1357: 
	movq	16(%rax), %rax
 jmp .UNIQUE1358
NOP
NOP
NOP
NOP
NOP
.UNIQUE1358: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1359
NOP
NOP
NOP
NOP
NOP
.UNIQUE1359: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1360
NOP
NOP
NOP
NOP
NOP
.UNIQUE1360: 
	je	.L144
 jmp .UNIQUE1361
NOP
NOP
NOP
NOP
NOP
.UNIQUE1361: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE1362
NOP
NOP
NOP
NOP
NOP
.UNIQUE1362: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1363
NOP
NOP
NOP
NOP
NOP
.UNIQUE1363: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1364
NOP
NOP
NOP
NOP
NOP
.UNIQUE1364: 
	movq	%rcx, %rsi
 jmp .UNIQUE1365
NOP
NOP
NOP
NOP
NOP
.UNIQUE1365: 
	movq	%rax, %rdi
 jmp .UNIQUE1366
NOP
NOP
NOP
NOP
NOP
.UNIQUE1366: 
	call	check_and_merge
 jmp .UNIQUE1367
NOP
NOP
NOP
NOP
NOP
.UNIQUE1367: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1368
NOP
NOP
NOP
NOP
NOP
.UNIQUE1368: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1369
NOP
NOP
NOP
NOP
NOP
.UNIQUE1369: 
	jne	.L143
 jmp .UNIQUE1370
NOP
NOP
NOP
NOP
NOP
.UNIQUE1370: 
	jmp	.L142
.L144:
 jmp .UNIQUE1371
NOP
NOP
NOP
NOP
NOP
.UNIQUE1371: 
	jmp	.L142
.L143:
 jmp .UNIQUE1372
NOP
NOP
NOP
NOP
NOP
.UNIQUE1372: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1373
NOP
NOP
NOP
NOP
NOP
.UNIQUE1373: 
	jne	.L145
.L142:
 jmp .UNIQUE1374
NOP
NOP
NOP
NOP
NOP
.UNIQUE1374: 
	movl	$1, -48(%rbp)
 jmp .UNIQUE1375
NOP
NOP
NOP
NOP
NOP
.UNIQUE1375: 
	jmp	.L136
.L141:
 jmp .UNIQUE1376
NOP
NOP
NOP
NOP
NOP
.UNIQUE1376: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1377
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
.UNIQUE1378: 
	testq	%rax, %rax
 jmp .UNIQUE1379
NOP
NOP
NOP
NOP
NOP
.UNIQUE1379: 
	jne	.L146
 jmp .UNIQUE1380
NOP
NOP
NOP
NOP
NOP
.UNIQUE1380: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1381
NOP
NOP
NOP
NOP
NOP
.UNIQUE1381: 
	movq	8(%rax), %rax
 jmp .UNIQUE1382
NOP
NOP
NOP
NOP
NOP
.UNIQUE1382: 
	movq	%rax, %rdx
 jmp .UNIQUE1383
NOP
NOP
NOP
NOP
NOP
.UNIQUE1383: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1384
NOP
NOP
NOP
NOP
NOP
.UNIQUE1384: 
	movq	8(%rax), %rax
 jmp .UNIQUE1385
NOP
NOP
NOP
NOP
NOP
.UNIQUE1385: 
	cmpq	%rax, %rdx
 jmp .UNIQUE1386
NOP
NOP
NOP
NOP
NOP
.UNIQUE1386: 
	jge	.L146
 jmp .UNIQUE1387
NOP
NOP
NOP
NOP
NOP
.UNIQUE1387: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1388
NOP
NOP
NOP
NOP
NOP
.UNIQUE1388: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1389
NOP
NOP
NOP
NOP
NOP
.UNIQUE1389: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE1390
NOP
NOP
NOP
NOP
NOP
.UNIQUE1390: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1391
NOP
NOP
NOP
NOP
NOP
.UNIQUE1391: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE1392
NOP
NOP
NOP
NOP
NOP
.UNIQUE1392: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE1393
NOP
NOP
NOP
NOP
NOP
.UNIQUE1393: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1394
NOP
NOP
NOP
NOP
NOP
.UNIQUE1394: 
	movq	$0, 16(%rax)
 jmp .UNIQUE1395
NOP
NOP
NOP
NOP
NOP
.UNIQUE1395: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1396
NOP
NOP
NOP
NOP
NOP
.UNIQUE1396: 
	addq	$1, %rax
 jmp .UNIQUE1397
NOP
NOP
NOP
NOP
NOP
.UNIQUE1397: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1398
NOP
NOP
NOP
NOP
NOP
.UNIQUE1398: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE1399
NOP
NOP
NOP
NOP
NOP
.UNIQUE1399: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1400
NOP
NOP
NOP
NOP
NOP
.UNIQUE1400: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1401
NOP
NOP
NOP
NOP
NOP
.UNIQUE1401: 
	movq	%rcx, %rsi
 jmp .UNIQUE1402
NOP
NOP
NOP
NOP
NOP
.UNIQUE1402: 
	movq	%rax, %rdi
 jmp .UNIQUE1403
NOP
NOP
NOP
NOP
NOP
.UNIQUE1403: 
	call	check_and_merge
 jmp .UNIQUE1404
NOP
NOP
NOP
NOP
NOP
.UNIQUE1404: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1405
NOP
NOP
NOP
NOP
NOP
.UNIQUE1405: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1406
NOP
NOP
NOP
NOP
NOP
.UNIQUE1406: 
	je	.L147
 jmp .UNIQUE1407
NOP
NOP
NOP
NOP
NOP
.UNIQUE1407: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1408
NOP
NOP
NOP
NOP
NOP
.UNIQUE1408: 
	subq	$1, %rax
 jmp .UNIQUE1409
NOP
NOP
NOP
NOP
NOP
.UNIQUE1409: 
	movq	%rax, free_chunks_num(%rip)
.L147:
 jmp .UNIQUE1410
NOP
NOP
NOP
NOP
NOP
.UNIQUE1410: 
	movl	$1, -48(%rbp)
 jmp .UNIQUE1411
NOP
NOP
NOP
NOP
NOP
.UNIQUE1411: 
	jmp	.L136
.L146:
 jmp .UNIQUE1412
NOP
NOP
NOP
NOP
NOP
.UNIQUE1412: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1413
NOP
NOP
NOP
NOP
NOP
.UNIQUE1413: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1414
NOP
NOP
NOP
NOP
NOP
.UNIQUE1414: 
	movq	%rdx, 16(%rax)
 jmp .UNIQUE1415
NOP
NOP
NOP
NOP
NOP
.UNIQUE1415: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1416
NOP
NOP
NOP
NOP
NOP
.UNIQUE1416: 
	movq	-32(%rbp), %rdx
 jmp .UNIQUE1417
NOP
NOP
NOP
NOP
NOP
.UNIQUE1417: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE1418
NOP
NOP
NOP
NOP
NOP
.UNIQUE1418: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1419
NOP
NOP
NOP
NOP
NOP
.UNIQUE1419: 
	movq	-40(%rbp), %rdx
 jmp .UNIQUE1420
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
.UNIQUE1421: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1422
NOP
NOP
NOP
NOP
NOP
.UNIQUE1422: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1423
NOP
NOP
NOP
NOP
NOP
.UNIQUE1423: 
	movq	%rdx, 24(%rax)
 jmp .UNIQUE1424
NOP
NOP
NOP
NOP
NOP
.UNIQUE1424: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1425
NOP
NOP
NOP
NOP
NOP
.UNIQUE1425: 
	addq	$1, %rax
 jmp .UNIQUE1426
NOP
NOP
NOP
NOP
NOP
.UNIQUE1426: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1427
NOP
NOP
NOP
NOP
NOP
.UNIQUE1427: 
	movq	-16(%rbp), %rcx
 jmp .UNIQUE1428
NOP
NOP
NOP
NOP
NOP
.UNIQUE1428: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1429
NOP
NOP
NOP
NOP
NOP
.UNIQUE1429: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1430
NOP
NOP
NOP
NOP
NOP
.UNIQUE1430: 
	movq	%rcx, %rsi
 jmp .UNIQUE1431
NOP
NOP
NOP
NOP
NOP
.UNIQUE1431: 
	movq	%rax, %rdi
 jmp .UNIQUE1432
NOP
NOP
NOP
NOP
NOP
.UNIQUE1432: 
	call	check_and_merge
 jmp .UNIQUE1433
NOP
NOP
NOP
NOP
NOP
.UNIQUE1433: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1434
NOP
NOP
NOP
NOP
NOP
.UNIQUE1434: 
	movl	$1, -44(%rbp)
 jmp .UNIQUE1435
NOP
NOP
NOP
NOP
NOP
.UNIQUE1435: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1436
NOP
NOP
NOP
NOP
NOP
.UNIQUE1436: 
	jne	.L148
 jmp .UNIQUE1437
NOP
NOP
NOP
NOP
NOP
.UNIQUE1437: 
	movq	-40(%rbp), %rcx
 jmp .UNIQUE1438
NOP
NOP
NOP
NOP
NOP
.UNIQUE1438: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1439
NOP
NOP
NOP
NOP
NOP
.UNIQUE1439: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1440
NOP
NOP
NOP
NOP
NOP
.UNIQUE1440: 
	movq	%rcx, %rsi
 jmp .UNIQUE1441
NOP
NOP
NOP
NOP
NOP
.UNIQUE1441: 
	movq	%rax, %rdi
 jmp .UNIQUE1442
NOP
NOP
NOP
NOP
NOP
.UNIQUE1442: 
	call	check_and_merge
 jmp .UNIQUE1443
NOP
NOP
NOP
NOP
NOP
.UNIQUE1443: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1444
NOP
NOP
NOP
NOP
NOP
.UNIQUE1444: 
	jmp	.L149
.L148:
 jmp .UNIQUE1445
NOP
NOP
NOP
NOP
NOP
.UNIQUE1445: 
	jmp	.L149
.L152:
 jmp .UNIQUE1446
NOP
NOP
NOP
NOP
NOP
.UNIQUE1446: 
	movq	free_chunks_num(%rip), %rax
 jmp .UNIQUE1447
NOP
NOP
NOP
NOP
NOP
.UNIQUE1447: 
	subq	$1, %rax
 jmp .UNIQUE1448
NOP
NOP
NOP
NOP
NOP
.UNIQUE1448: 
	movq	%rax, free_chunks_num(%rip)
 jmp .UNIQUE1449
NOP
NOP
NOP
NOP
NOP
.UNIQUE1449: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1450
NOP
NOP
NOP
NOP
NOP
.UNIQUE1450: 
	movq	16(%rax), %rax
 jmp .UNIQUE1451
NOP
NOP
NOP
NOP
NOP
.UNIQUE1451: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1452
NOP
NOP
NOP
NOP
NOP
.UNIQUE1452: 
	cmpq	$0, -8(%rbp)
 jmp .UNIQUE1453
NOP
NOP
NOP
NOP
NOP
.UNIQUE1453: 
	je	.L150
 jmp .UNIQUE1454
NOP
NOP
NOP
NOP
NOP
.UNIQUE1454: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE1455
NOP
NOP
NOP
NOP
NOP
.UNIQUE1455: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1456
NOP
NOP
NOP
NOP
NOP
.UNIQUE1456: 
	movl	$free_chunks_list, %edx
 jmp .UNIQUE1457
NOP
NOP
NOP
NOP
NOP
.UNIQUE1457: 
	movq	%rcx, %rsi
 jmp .UNIQUE1458
NOP
NOP
NOP
NOP
NOP
.UNIQUE1458: 
	movq	%rax, %rdi
 jmp .UNIQUE1459
NOP
NOP
NOP
NOP
NOP
.UNIQUE1459: 
	call	check_and_merge
 jmp .UNIQUE1460
NOP
NOP
NOP
NOP
NOP
.UNIQUE1460: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1461
NOP
NOP
NOP
NOP
NOP
.UNIQUE1461: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1462
NOP
NOP
NOP
NOP
NOP
.UNIQUE1462: 
	jne	.L149
 jmp .UNIQUE1463
NOP
NOP
NOP
NOP
NOP
.UNIQUE1463: 
	jmp	.L151
.L150:
 jmp .UNIQUE1464
NOP
NOP
NOP
NOP
NOP
.UNIQUE1464: 
	jmp	.L151
.L149:
 jmp .UNIQUE1465
NOP
NOP
NOP
NOP
NOP
.UNIQUE1465: 
	cmpq	$0, -24(%rbp)
 jmp .UNIQUE1466
NOP
NOP
NOP
NOP
NOP
.UNIQUE1466: 
	jne	.L152
.L151:
 jmp .UNIQUE1467
NOP
NOP
NOP
NOP
NOP
.UNIQUE1467: 
	movl	$1, -48(%rbp)
.L136:
 jmp .UNIQUE1468
NOP
NOP
NOP
NOP
NOP
.UNIQUE1468: 
	movl	-48(%rbp), %eax
.L133:
 jmp .UNIQUE1469
NOP
NOP
NOP
NOP
NOP
.UNIQUE1469: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1470
NOP
NOP
NOP
NOP
NOP
.UNIQUE1470: 
	ret
	.cfi_endproc
.LFE39:
	.size	managed_secure_free, .-managed_secure_free
	.globl	insert_data_into_normal_array
	.type	insert_data_into_normal_array, @function
insert_data_into_normal_array:
.LFB40:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1471
NOP
NOP
NOP
NOP
NOP
.UNIQUE1471: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1472
NOP
NOP
NOP
NOP
NOP
.UNIQUE1472: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1473
NOP
NOP
NOP
NOP
NOP
.UNIQUE1473: 
	movq	%rdi, -24(%rbp)
 jmp .UNIQUE1474
NOP
NOP
NOP
NOP
NOP
.UNIQUE1474: 
	movq	%rsi, -32(%rbp)
 jmp .UNIQUE1475
NOP
NOP
NOP
NOP
NOP
.UNIQUE1475: 
	movq	%rdx, -40(%rbp)
 jmp .UNIQUE1476
NOP
NOP
NOP
NOP
NOP
.UNIQUE1476: 
	movl	$0, -4(%rbp)
 jmp .UNIQUE1477
NOP
NOP
NOP
NOP
NOP
.UNIQUE1477: 
	jmp	.L154
.L155:
 jmp .UNIQUE1478
NOP
NOP
NOP
NOP
NOP
.UNIQUE1478: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE1479
NOP
NOP
NOP
NOP
NOP
.UNIQUE1479: 
	movslq	%eax, %rdx
 jmp .UNIQUE1480
NOP
NOP
NOP
NOP
NOP
.UNIQUE1480: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1481
NOP
NOP
NOP
NOP
NOP
.UNIQUE1481: 
	addq	%rax, %rdx
 jmp .UNIQUE1482
NOP
NOP
NOP
NOP
NOP
.UNIQUE1482: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE1483
NOP
NOP
NOP
NOP
NOP
.UNIQUE1483: 
	movslq	%eax, %rcx
 jmp .UNIQUE1484
NOP
NOP
NOP
NOP
NOP
.UNIQUE1484: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1485
NOP
NOP
NOP
NOP
NOP
.UNIQUE1485: 
	addq	%rcx, %rax
 jmp .UNIQUE1486
NOP
NOP
NOP
NOP
NOP
.UNIQUE1486: 
	movzbl	(%rax), %eax
 jmp .UNIQUE1487
NOP
NOP
NOP
NOP
NOP
.UNIQUE1487: 
	movb	%al, (%rdx)
 jmp .UNIQUE1488
NOP
NOP
NOP
NOP
NOP
.UNIQUE1488: 
	addl	$1, -4(%rbp)
.L154:
 jmp .UNIQUE1489
NOP
NOP
NOP
NOP
NOP
.UNIQUE1489: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE1490
NOP
NOP
NOP
NOP
NOP
.UNIQUE1490: 
	cltq
 jmp .UNIQUE1491
NOP
NOP
NOP
NOP
NOP
.UNIQUE1491: 
	cmpq	-24(%rbp), %rax
 jmp .UNIQUE1492
NOP
NOP
NOP
NOP
NOP
.UNIQUE1492: 
	jl	.L155
 jmp .UNIQUE1493
NOP
NOP
NOP
NOP
NOP
.UNIQUE1493: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1494
NOP
NOP
NOP
NOP
NOP
.UNIQUE1494: 
	ret
	.cfi_endproc
.LFE40:
	.size	insert_data_into_normal_array, .-insert_data_into_normal_array
	.section	.rodata
	.align 8
.LC16:
	.string	"Zero hex test printing: 0x%02x \n"
.LC17:
	.string	"Starting mem test"
.LC18:
	.string	"chunks:%ld\n"
.LC19:
	.string	"After init, print mem"
.LC20:
	.string	"Trying to secure malloc"
.LC21:
	.string	"Not enough mem"
	.align 8
.LC22:
	.string	"After malloc,try to insert some data"
	.align 8
.LC23:
	.string	"Now let's retrieve the data and display them"
.LC24:
	.string	"%d "
	.align 8
.LC25:
	.string	"Again, Trying to secure malloc"
	.align 8
.LC26:
	.string	"Again, after malloc,try to insert some data"
	.align 8
.LC27:
	.string	"After displaying the two arrays:"
.LC28:
	.string	"After freeing one of them:"
	.align 8
.LC29:
	.string	"Now trying to store and retrieve 424242424..."
.LC30:
	.string	"\n\n%d \n\n"
.LC31:
	.string	"After retrieving int:"
	.align 8
.LC32:
	.string	"After freeing the second array:"
.LC33:
	.string	"After freeing the int:"
.LC34:
	.string	"Testing wrapper functions"
.LC35:
	.string	"Got %d\n"
.LC36:
	.string	"Got %c\n"
.LC37:
	.string	"Got %ld\n"
.LC38:
	.string	"After long int printing:"
.LC39:
	.string	"After long int free:"
.LC40:
	.string	"After another char alloc:"
.LC42:
	.string	"Got %lf\n"
.LC43:
	.string	"After double alloc:"
	.align 8
.LC44:
	.string	"Array wrapper function testing"
.LC48:
	.string	"array index 2 is %lf\n"
.LC49:
	.string	"array index 3 is %lf\n"
.LC50:
	.string	"\n\n"
	.align 8
.LC51:
	.string	"After data retrieval, print mem"
.LC52:
	.string	"Mem test done"
	.text
	.globl	mem_test
	.type	mem_test, @function
mem_test:
.LFB41:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1495
NOP
NOP
NOP
NOP
NOP
.UNIQUE1495: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1496
NOP
NOP
NOP
NOP
NOP
.UNIQUE1496: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1497
NOP
NOP
NOP
NOP
NOP
.UNIQUE1497: 
	subq	$176, %rsp
 jmp .UNIQUE1498
NOP
NOP
NOP
NOP
NOP
.UNIQUE1498: 
	movq	$20, -112(%rbp)
 jmp .UNIQUE1499
NOP
NOP
NOP
NOP
NOP
.UNIQUE1499: 
	movl	$0, %esi
 jmp .UNIQUE1500
NOP
NOP
NOP
NOP
NOP
.UNIQUE1500: 
	movl	$.LC16, %edi
 jmp .UNIQUE1501
NOP
NOP
NOP
NOP
NOP
.UNIQUE1501: 
	movl	$0, %eax
 jmp .UNIQUE1502
NOP
NOP
NOP
NOP
NOP
.UNIQUE1502: 
	call	printf
 jmp .UNIQUE1503
NOP
NOP
NOP
NOP
NOP
.UNIQUE1503: 
	movl	$.LC17, %edi
 jmp .UNIQUE1504
NOP
NOP
NOP
NOP
NOP
.UNIQUE1504: 
	call	puts
 jmp .UNIQUE1505
NOP
NOP
NOP
NOP
NOP
.UNIQUE1505: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE1506
NOP
NOP
NOP
NOP
NOP
.UNIQUE1506: 
	movq	%rax, -104(%rbp)
 jmp .UNIQUE1507
NOP
NOP
NOP
NOP
NOP
.UNIQUE1507: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE1508
NOP
NOP
NOP
NOP
NOP
.UNIQUE1508: 
	movq	%rax, %rdi
 jmp .UNIQUE1509
NOP
NOP
NOP
NOP
NOP
.UNIQUE1509: 
	call	find_number_of_useful_chunks
 jmp .UNIQUE1510
NOP
NOP
NOP
NOP
NOP
.UNIQUE1510: 
	movq	%rax, -96(%rbp)
 jmp .UNIQUE1511
NOP
NOP
NOP
NOP
NOP
.UNIQUE1511: 
	movq	-96(%rbp), %rax
 jmp .UNIQUE1512
NOP
NOP
NOP
NOP
NOP
.UNIQUE1512: 
	movq	%rax, %rsi
 jmp .UNIQUE1513
NOP
NOP
NOP
NOP
NOP
.UNIQUE1513: 
	movl	$.LC18, %edi
 jmp .UNIQUE1514
NOP
NOP
NOP
NOP
NOP
.UNIQUE1514: 
	movl	$0, %eax
 jmp .UNIQUE1515
NOP
NOP
NOP
NOP
NOP
.UNIQUE1515: 
	call	printf
 jmp .UNIQUE1516
NOP
NOP
NOP
NOP
NOP
.UNIQUE1516: 
	movl	$.LC19, %edi
 jmp .UNIQUE1517
NOP
NOP
NOP
NOP
NOP
.UNIQUE1517: 
	call	puts
 jmp .UNIQUE1518
NOP
NOP
NOP
NOP
NOP
.UNIQUE1518: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE1519
NOP
NOP
NOP
NOP
NOP
.UNIQUE1519: 
	movq	%rax, %rdi
 jmp .UNIQUE1520
NOP
NOP
NOP
NOP
NOP
.UNIQUE1520: 
	call	print_mem
 jmp .UNIQUE1521
NOP
NOP
NOP
NOP
NOP
.UNIQUE1521: 
	movq	-112(%rbp), %rax
 jmp .UNIQUE1522
NOP
NOP
NOP
NOP
NOP
.UNIQUE1522: 
	salq	$2, %rax
 jmp .UNIQUE1523
NOP
NOP
NOP
NOP
NOP
.UNIQUE1523: 
	movq	%rax, %rdi
 jmp .UNIQUE1524
NOP
NOP
NOP
NOP
NOP
.UNIQUE1524: 
	call	malloc
 jmp .UNIQUE1525
NOP
NOP
NOP
NOP
NOP
.UNIQUE1525: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE1526
NOP
NOP
NOP
NOP
NOP
.UNIQUE1526: 
	movq	-112(%rbp), %rax
 jmp .UNIQUE1527
NOP
NOP
NOP
NOP
NOP
.UNIQUE1527: 
	salq	$2, %rax
 jmp .UNIQUE1528
NOP
NOP
NOP
NOP
NOP
.UNIQUE1528: 
	movq	%rax, %rdi
 jmp .UNIQUE1529
NOP
NOP
NOP
NOP
NOP
.UNIQUE1529: 
	call	malloc
 jmp .UNIQUE1530
NOP
NOP
NOP
NOP
NOP
.UNIQUE1530: 
	movq	%rax, -80(%rbp)
 jmp .UNIQUE1531
NOP
NOP
NOP
NOP
NOP
.UNIQUE1531: 
	movq	$5, -128(%rbp)
 jmp .UNIQUE1532
NOP
NOP
NOP
NOP
NOP
.UNIQUE1532: 
	jmp	.L157
.L158:
 jmp .UNIQUE1533
NOP
NOP
NOP
NOP
NOP
.UNIQUE1533: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1534
NOP
NOP
NOP
NOP
NOP
.UNIQUE1534: 
	salq	$2, %rax
 jmp .UNIQUE1535
NOP
NOP
NOP
NOP
NOP
.UNIQUE1535: 
	leaq	-20(%rax), %rdx
 jmp .UNIQUE1536
NOP
NOP
NOP
NOP
NOP
.UNIQUE1536: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE1537
NOP
NOP
NOP
NOP
NOP
.UNIQUE1537: 
	addq	%rax, %rdx
 jmp .UNIQUE1538
NOP
NOP
NOP
NOP
NOP
.UNIQUE1538: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1539
NOP
NOP
NOP
NOP
NOP
.UNIQUE1539: 
	movl	%eax, %ecx
 jmp .UNIQUE1540
NOP
NOP
NOP
NOP
NOP
.UNIQUE1540: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1541
NOP
NOP
NOP
NOP
NOP
.UNIQUE1541: 
	imull	%ecx, %eax
 jmp .UNIQUE1542
NOP
NOP
NOP
NOP
NOP
.UNIQUE1542: 
	movl	%eax, (%rdx)
 jmp .UNIQUE1543
NOP
NOP
NOP
NOP
NOP
.UNIQUE1543: 
	addq	$1, -128(%rbp)
.L157:
 jmp .UNIQUE1544
NOP
NOP
NOP
NOP
NOP
.UNIQUE1544: 
	movq	-112(%rbp), %rax
 jmp .UNIQUE1545
NOP
NOP
NOP
NOP
NOP
.UNIQUE1545: 
	addq	$5, %rax
 jmp .UNIQUE1546
NOP
NOP
NOP
NOP
NOP
.UNIQUE1546: 
	cmpq	-128(%rbp), %rax
 jmp .UNIQUE1547
NOP
NOP
NOP
NOP
NOP
.UNIQUE1547: 
	jg	.L158
 jmp .UNIQUE1548
NOP
NOP
NOP
NOP
NOP
.UNIQUE1548: 
	movl	$.LC20, %edi
 jmp .UNIQUE1549
NOP
NOP
NOP
NOP
NOP
.UNIQUE1549: 
	call	puts
 jmp .UNIQUE1550
NOP
NOP
NOP
NOP
NOP
.UNIQUE1550: 
	movq	-112(%rbp), %rax
 jmp .UNIQUE1551
NOP
NOP
NOP
NOP
NOP
.UNIQUE1551: 
	salq	$2, %rax
 jmp .UNIQUE1552
NOP
NOP
NOP
NOP
NOP
.UNIQUE1552: 
	movq	%rax, %rdi
 jmp .UNIQUE1553
NOP
NOP
NOP
NOP
NOP
.UNIQUE1553: 
	call	managed_secure_malloc
 jmp .UNIQUE1554
NOP
NOP
NOP
NOP
NOP
.UNIQUE1554: 
	movq	%rax, -72(%rbp)
 jmp .UNIQUE1555
NOP
NOP
NOP
NOP
NOP
.UNIQUE1555: 
	cmpq	$0, -72(%rbp)
 jmp .UNIQUE1556
NOP
NOP
NOP
NOP
NOP
.UNIQUE1556: 
	jne	.L159
 jmp .UNIQUE1557
NOP
NOP
NOP
NOP
NOP
.UNIQUE1557: 
	movl	$.LC21, %edi
 jmp .UNIQUE1558
NOP
NOP
NOP
NOP
NOP
.UNIQUE1558: 
	call	perror
 jmp .UNIQUE1559
NOP
NOP
NOP
NOP
NOP
.UNIQUE1559: 
	movl	$42, %edi
 jmp .UNIQUE1560
NOP
NOP
NOP
NOP
NOP
.UNIQUE1560: 
	call	exit
.L159:
 jmp .UNIQUE1561
NOP
NOP
NOP
NOP
NOP
.UNIQUE1561: 
	movl	$.LC22, %edi
 jmp .UNIQUE1562
NOP
NOP
NOP
NOP
NOP
.UNIQUE1562: 
	call	puts
 jmp .UNIQUE1563
NOP
NOP
NOP
NOP
NOP
.UNIQUE1563: 
	movq	-112(%rbp), %rax
 jmp .UNIQUE1564
NOP
NOP
NOP
NOP
NOP
.UNIQUE1564: 
	salq	$2, %rax
 jmp .UNIQUE1565
NOP
NOP
NOP
NOP
NOP
.UNIQUE1565: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE1566
NOP
NOP
NOP
NOP
NOP
.UNIQUE1566: 
	movq	-88(%rbp), %rcx
 jmp .UNIQUE1567
NOP
NOP
NOP
NOP
NOP
.UNIQUE1567: 
	movq	%rcx, %rsi
 jmp .UNIQUE1568
NOP
NOP
NOP
NOP
NOP
.UNIQUE1568: 
	movq	%rax, %rdi
 jmp .UNIQUE1569
NOP
NOP
NOP
NOP
NOP
.UNIQUE1569: 
	call	insert_data_into_mem
 jmp .UNIQUE1570
NOP
NOP
NOP
NOP
NOP
.UNIQUE1570: 
	movl	$.LC23, %edi
 jmp .UNIQUE1571
NOP
NOP
NOP
NOP
NOP
.UNIQUE1571: 
	call	puts
 jmp .UNIQUE1572
NOP
NOP
NOP
NOP
NOP
.UNIQUE1572: 
	movl	$4, %edi
 jmp .UNIQUE1573
NOP
NOP
NOP
NOP
NOP
.UNIQUE1573: 
	call	malloc
 jmp .UNIQUE1574
NOP
NOP
NOP
NOP
NOP
.UNIQUE1574: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE1575
NOP
NOP
NOP
NOP
NOP
.UNIQUE1575: 
	movq	$0, -120(%rbp)
 jmp .UNIQUE1576
NOP
NOP
NOP
NOP
NOP
.UNIQUE1576: 
	jmp	.L160
.L161:
 jmp .UNIQUE1577
NOP
NOP
NOP
NOP
NOP
.UNIQUE1577: 
	movq	-120(%rbp), %rcx
 jmp .UNIQUE1578
NOP
NOP
NOP
NOP
NOP
.UNIQUE1578: 
	movq	-72(%rbp), %rdx
 jmp .UNIQUE1579
NOP
NOP
NOP
NOP
NOP
.UNIQUE1579: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE1580
NOP
NOP
NOP
NOP
NOP
.UNIQUE1580: 
	movq	%rcx, %r8
 jmp .UNIQUE1581
NOP
NOP
NOP
NOP
NOP
.UNIQUE1581: 
	movl	$1, %ecx
 jmp .UNIQUE1582
NOP
NOP
NOP
NOP
NOP
.UNIQUE1582: 
	movl	$4, %esi
 jmp .UNIQUE1583
NOP
NOP
NOP
NOP
NOP
.UNIQUE1583: 
	movq	%rax, %rdi
 jmp .UNIQUE1584
NOP
NOP
NOP
NOP
NOP
.UNIQUE1584: 
	call	get_secure_data
 jmp .UNIQUE1585
NOP
NOP
NOP
NOP
NOP
.UNIQUE1585: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE1586
NOP
NOP
NOP
NOP
NOP
.UNIQUE1586: 
	movl	(%rax), %eax
 jmp .UNIQUE1587
NOP
NOP
NOP
NOP
NOP
.UNIQUE1587: 
	movl	%eax, %esi
 jmp .UNIQUE1588
NOP
NOP
NOP
NOP
NOP
.UNIQUE1588: 
	movl	$.LC24, %edi
 jmp .UNIQUE1589
NOP
NOP
NOP
NOP
NOP
.UNIQUE1589: 
	movl	$0, %eax
 jmp .UNIQUE1590
NOP
NOP
NOP
NOP
NOP
.UNIQUE1590: 
	call	printf
 jmp .UNIQUE1591
NOP
NOP
NOP
NOP
NOP
.UNIQUE1591: 
	addq	$1, -120(%rbp)
.L160:
 jmp .UNIQUE1592
NOP
NOP
NOP
NOP
NOP
.UNIQUE1592: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE1593
NOP
NOP
NOP
NOP
NOP
.UNIQUE1593: 
	cmpq	-112(%rbp), %rax
 jmp .UNIQUE1594
NOP
NOP
NOP
NOP
NOP
.UNIQUE1594: 
	jl	.L161
 jmp .UNIQUE1595
NOP
NOP
NOP
NOP
NOP
.UNIQUE1595: 
	movl	$10, %edi
 jmp .UNIQUE1596
NOP
NOP
NOP
NOP
NOP
.UNIQUE1596: 
	call	putchar
 jmp .UNIQUE1597
NOP
NOP
NOP
NOP
NOP
.UNIQUE1597: 
	movl	$.LC25, %edi
 jmp .UNIQUE1598
NOP
NOP
NOP
NOP
NOP
.UNIQUE1598: 
	call	puts
 jmp .UNIQUE1599
NOP
NOP
NOP
NOP
NOP
.UNIQUE1599: 
	movq	-112(%rbp), %rax
 jmp .UNIQUE1600
NOP
NOP
NOP
NOP
NOP
.UNIQUE1600: 
	salq	$2, %rax
 jmp .UNIQUE1601
NOP
NOP
NOP
NOP
NOP
.UNIQUE1601: 
	movq	%rax, %rdi
 jmp .UNIQUE1602
NOP
NOP
NOP
NOP
NOP
.UNIQUE1602: 
	call	managed_secure_malloc
 jmp .UNIQUE1603
NOP
NOP
NOP
NOP
NOP
.UNIQUE1603: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE1604
NOP
NOP
NOP
NOP
NOP
.UNIQUE1604: 
	cmpq	$0, -56(%rbp)
 jmp .UNIQUE1605
NOP
NOP
NOP
NOP
NOP
.UNIQUE1605: 
	jne	.L162
 jmp .UNIQUE1606
NOP
NOP
NOP
NOP
NOP
.UNIQUE1606: 
	movl	$.LC21, %edi
 jmp .UNIQUE1607
NOP
NOP
NOP
NOP
NOP
.UNIQUE1607: 
	call	perror
 jmp .UNIQUE1608
NOP
NOP
NOP
NOP
NOP
.UNIQUE1608: 
	movl	$42, %edi
 jmp .UNIQUE1609
NOP
NOP
NOP
NOP
NOP
.UNIQUE1609: 
	call	exit
.L162:
 jmp .UNIQUE1610
NOP
NOP
NOP
NOP
NOP
.UNIQUE1610: 
	movq	$5, -128(%rbp)
 jmp .UNIQUE1611
NOP
NOP
NOP
NOP
NOP
.UNIQUE1611: 
	jmp	.L163
.L164:
 jmp .UNIQUE1612
NOP
NOP
NOP
NOP
NOP
.UNIQUE1612: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1613
NOP
NOP
NOP
NOP
NOP
.UNIQUE1613: 
	salq	$2, %rax
 jmp .UNIQUE1614
NOP
NOP
NOP
NOP
NOP
.UNIQUE1614: 
	leaq	-20(%rax), %rdx
 jmp .UNIQUE1615
NOP
NOP
NOP
NOP
NOP
.UNIQUE1615: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE1616
NOP
NOP
NOP
NOP
NOP
.UNIQUE1616: 
	leaq	(%rdx,%rax), %rcx
 jmp .UNIQUE1617
NOP
NOP
NOP
NOP
NOP
.UNIQUE1617: 
	movq	-128(%rbp), %rax
 jmp .UNIQUE1618
NOP
NOP
NOP
NOP
NOP
.UNIQUE1618: 
	movl	%eax, %edx
 jmp .UNIQUE1619
NOP
NOP
NOP
NOP
NOP
.UNIQUE1619: 
	movl	%edx, %eax
 jmp .UNIQUE1620
NOP
NOP
NOP
NOP
NOP
.UNIQUE1620: 
	addl	%eax, %eax
 jmp .UNIQUE1621
NOP
NOP
NOP
NOP
NOP
.UNIQUE1621: 
	addl	%edx, %eax
 jmp .UNIQUE1622
NOP
NOP
NOP
NOP
NOP
.UNIQUE1622: 
	movl	%eax, (%rcx)
 jmp .UNIQUE1623
NOP
NOP
NOP
NOP
NOP
.UNIQUE1623: 
	addq	$1, -128(%rbp)
.L163:
 jmp .UNIQUE1624
NOP
NOP
NOP
NOP
NOP
.UNIQUE1624: 
	movq	-112(%rbp), %rax
 jmp .UNIQUE1625
NOP
NOP
NOP
NOP
NOP
.UNIQUE1625: 
	addq	$5, %rax
 jmp .UNIQUE1626
NOP
NOP
NOP
NOP
NOP
.UNIQUE1626: 
	cmpq	-128(%rbp), %rax
 jmp .UNIQUE1627
NOP
NOP
NOP
NOP
NOP
.UNIQUE1627: 
	jg	.L164
 jmp .UNIQUE1628
NOP
NOP
NOP
NOP
NOP
.UNIQUE1628: 
	movl	$.LC26, %edi
 jmp .UNIQUE1629
NOP
NOP
NOP
NOP
NOP
.UNIQUE1629: 
	call	puts
 jmp .UNIQUE1630
NOP
NOP
NOP
NOP
NOP
.UNIQUE1630: 
	movq	-112(%rbp), %rax
 jmp .UNIQUE1631
NOP
NOP
NOP
NOP
NOP
.UNIQUE1631: 
	salq	$2, %rax
 jmp .UNIQUE1632
NOP
NOP
NOP
NOP
NOP
.UNIQUE1632: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE1633
NOP
NOP
NOP
NOP
NOP
.UNIQUE1633: 
	movq	-88(%rbp), %rcx
 jmp .UNIQUE1634
NOP
NOP
NOP
NOP
NOP
.UNIQUE1634: 
	movq	%rcx, %rsi
 jmp .UNIQUE1635
NOP
NOP
NOP
NOP
NOP
.UNIQUE1635: 
	movq	%rax, %rdi
 jmp .UNIQUE1636
NOP
NOP
NOP
NOP
NOP
.UNIQUE1636: 
	call	insert_data_into_mem
 jmp .UNIQUE1637
NOP
NOP
NOP
NOP
NOP
.UNIQUE1637: 
	movl	$.LC23, %edi
 jmp .UNIQUE1638
NOP
NOP
NOP
NOP
NOP
.UNIQUE1638: 
	call	puts
 jmp .UNIQUE1639
NOP
NOP
NOP
NOP
NOP
.UNIQUE1639: 
	movq	$0, -120(%rbp)
 jmp .UNIQUE1640
NOP
NOP
NOP
NOP
NOP
.UNIQUE1640: 
	jmp	.L165
.L166:
 jmp .UNIQUE1641
NOP
NOP
NOP
NOP
NOP
.UNIQUE1641: 
	movq	-120(%rbp), %rcx
 jmp .UNIQUE1642
NOP
NOP
NOP
NOP
NOP
.UNIQUE1642: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE1643
NOP
NOP
NOP
NOP
NOP
.UNIQUE1643: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE1644
NOP
NOP
NOP
NOP
NOP
.UNIQUE1644: 
	movq	%rcx, %r8
 jmp .UNIQUE1645
NOP
NOP
NOP
NOP
NOP
.UNIQUE1645: 
	movl	$1, %ecx
 jmp .UNIQUE1646
NOP
NOP
NOP
NOP
NOP
.UNIQUE1646: 
	movl	$4, %esi
 jmp .UNIQUE1647
NOP
NOP
NOP
NOP
NOP
.UNIQUE1647: 
	movq	%rax, %rdi
 jmp .UNIQUE1648
NOP
NOP
NOP
NOP
NOP
.UNIQUE1648: 
	call	get_secure_data
 jmp .UNIQUE1649
NOP
NOP
NOP
NOP
NOP
.UNIQUE1649: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE1650
NOP
NOP
NOP
NOP
NOP
.UNIQUE1650: 
	movl	(%rax), %eax
 jmp .UNIQUE1651
NOP
NOP
NOP
NOP
NOP
.UNIQUE1651: 
	movl	%eax, %esi
 jmp .UNIQUE1652
NOP
NOP
NOP
NOP
NOP
.UNIQUE1652: 
	movl	$.LC24, %edi
 jmp .UNIQUE1653
NOP
NOP
NOP
NOP
NOP
.UNIQUE1653: 
	movl	$0, %eax
 jmp .UNIQUE1654
NOP
NOP
NOP
NOP
NOP
.UNIQUE1654: 
	call	printf
 jmp .UNIQUE1655
NOP
NOP
NOP
NOP
NOP
.UNIQUE1655: 
	addq	$1, -120(%rbp)
.L165:
 jmp .UNIQUE1656
NOP
NOP
NOP
NOP
NOP
.UNIQUE1656: 
	movq	-120(%rbp), %rax
 jmp .UNIQUE1657
NOP
NOP
NOP
NOP
NOP
.UNIQUE1657: 
	cmpq	-112(%rbp), %rax
 jmp .UNIQUE1658
NOP
NOP
NOP
NOP
NOP
.UNIQUE1658: 
	jl	.L166
 jmp .UNIQUE1659
NOP
NOP
NOP
NOP
NOP
.UNIQUE1659: 
	movl	$10, %edi
 jmp .UNIQUE1660
NOP
NOP
NOP
NOP
NOP
.UNIQUE1660: 
	call	putchar
 jmp .UNIQUE1661
NOP
NOP
NOP
NOP
NOP
.UNIQUE1661: 
	movl	$.LC27, %edi
 jmp .UNIQUE1662
NOP
NOP
NOP
NOP
NOP
.UNIQUE1662: 
	call	puts
 jmp .UNIQUE1663
NOP
NOP
NOP
NOP
NOP
.UNIQUE1663: 
	movl	$0, %eax
 jmp .UNIQUE1664
NOP
NOP
NOP
NOP
NOP
.UNIQUE1664: 
	call	print_lists
 jmp .UNIQUE1665
NOP
NOP
NOP
NOP
NOP
.UNIQUE1665: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1666
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
.UNIQUE1667: 
	call	managed_secure_free
 jmp .UNIQUE1668
NOP
NOP
NOP
NOP
NOP
.UNIQUE1668: 
	movl	$.LC28, %edi
 jmp .UNIQUE1669
NOP
NOP
NOP
NOP
NOP
.UNIQUE1669: 
	call	puts
 jmp .UNIQUE1670
NOP
NOP
NOP
NOP
NOP
.UNIQUE1670: 
	movl	$0, %eax
 jmp .UNIQUE1671
NOP
NOP
NOP
NOP
NOP
.UNIQUE1671: 
	call	print_lists
 jmp .UNIQUE1672
NOP
NOP
NOP
NOP
NOP
.UNIQUE1672: 
	movl	$.LC29, %edi
 jmp .UNIQUE1673
NOP
NOP
NOP
NOP
NOP
.UNIQUE1673: 
	call	puts
 jmp .UNIQUE1674
NOP
NOP
NOP
NOP
NOP
.UNIQUE1674: 
	movl	$4, %edi
 jmp .UNIQUE1675
NOP
NOP
NOP
NOP
NOP
.UNIQUE1675: 
	call	managed_secure_malloc
 jmp .UNIQUE1676
NOP
NOP
NOP
NOP
NOP
.UNIQUE1676: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE1677
NOP
NOP
NOP
NOP
NOP
.UNIQUE1677: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE1678
NOP
NOP
NOP
NOP
NOP
.UNIQUE1678: 
	movl	$424242424, (%rax)
 jmp .UNIQUE1679
NOP
NOP
NOP
NOP
NOP
.UNIQUE1679: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE1680
NOP
NOP
NOP
NOP
NOP
.UNIQUE1680: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE1681
NOP
NOP
NOP
NOP
NOP
.UNIQUE1681: 
	movq	%rax, %rsi
 jmp .UNIQUE1682
NOP
NOP
NOP
NOP
NOP
.UNIQUE1682: 
	movl	$4, %edi
 jmp .UNIQUE1683
NOP
NOP
NOP
NOP
NOP
.UNIQUE1683: 
	call	insert_data_into_mem
 jmp .UNIQUE1684
NOP
NOP
NOP
NOP
NOP
.UNIQUE1684: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE1685
NOP
NOP
NOP
NOP
NOP
.UNIQUE1685: 
	movq	%rax, %rdi
 jmp .UNIQUE1686
NOP
NOP
NOP
NOP
NOP
.UNIQUE1686: 
	call	free
 jmp .UNIQUE1687
NOP
NOP
NOP
NOP
NOP
.UNIQUE1687: 
	movl	$4, %edi
 jmp .UNIQUE1688
NOP
NOP
NOP
NOP
NOP
.UNIQUE1688: 
	call	malloc
 jmp .UNIQUE1689
NOP
NOP
NOP
NOP
NOP
.UNIQUE1689: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE1690
NOP
NOP
NOP
NOP
NOP
.UNIQUE1690: 
	movq	-120(%rbp), %rcx
 jmp .UNIQUE1691
NOP
NOP
NOP
NOP
NOP
.UNIQUE1691: 
	movq	-56(%rbp), %rdx
 jmp .UNIQUE1692
NOP
NOP
NOP
NOP
NOP
.UNIQUE1692: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE1693
NOP
NOP
NOP
NOP
NOP
.UNIQUE1693: 
	movq	%rcx, %r8
 jmp .UNIQUE1694
NOP
NOP
NOP
NOP
NOP
.UNIQUE1694: 
	movl	$0, %ecx
 jmp .UNIQUE1695
NOP
NOP
NOP
NOP
NOP
.UNIQUE1695: 
	movl	$4, %esi
 jmp .UNIQUE1696
NOP
NOP
NOP
NOP
NOP
.UNIQUE1696: 
	movq	%rax, %rdi
 jmp .UNIQUE1697
NOP
NOP
NOP
NOP
NOP
.UNIQUE1697: 
	call	get_secure_data
 jmp .UNIQUE1698
NOP
NOP
NOP
NOP
NOP
.UNIQUE1698: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE1699
NOP
NOP
NOP
NOP
NOP
.UNIQUE1699: 
	movl	(%rax), %eax
 jmp .UNIQUE1700
NOP
NOP
NOP
NOP
NOP
.UNIQUE1700: 
	movl	%eax, %esi
 jmp .UNIQUE1701
NOP
NOP
NOP
NOP
NOP
.UNIQUE1701: 
	movl	$.LC30, %edi
 jmp .UNIQUE1702
NOP
NOP
NOP
NOP
NOP
.UNIQUE1702: 
	movl	$0, %eax
 jmp .UNIQUE1703
NOP
NOP
NOP
NOP
NOP
.UNIQUE1703: 
	call	printf
 jmp .UNIQUE1704
NOP
NOP
NOP
NOP
NOP
.UNIQUE1704: 
	movq	-64(%rbp), %rax
 jmp .UNIQUE1705
NOP
NOP
NOP
NOP
NOP
.UNIQUE1705: 
	movq	%rax, %rdi
 jmp .UNIQUE1706
NOP
NOP
NOP
NOP
NOP
.UNIQUE1706: 
	call	free
 jmp .UNIQUE1707
NOP
NOP
NOP
NOP
NOP
.UNIQUE1707: 
	movl	$.LC31, %edi
 jmp .UNIQUE1708
NOP
NOP
NOP
NOP
NOP
.UNIQUE1708: 
	call	puts
 jmp .UNIQUE1709
NOP
NOP
NOP
NOP
NOP
.UNIQUE1709: 
	movl	$0, %eax
 jmp .UNIQUE1710
NOP
NOP
NOP
NOP
NOP
.UNIQUE1710: 
	call	print_lists
 jmp .UNIQUE1711
NOP
NOP
NOP
NOP
NOP
.UNIQUE1711: 
	movq	-72(%rbp), %rax
 jmp .UNIQUE1712
NOP
NOP
NOP
NOP
NOP
.UNIQUE1712: 
	movq	%rax, %rdi
 jmp .UNIQUE1713
NOP
NOP
NOP
NOP
NOP
.UNIQUE1713: 
	call	managed_secure_free
 jmp .UNIQUE1714
NOP
NOP
NOP
NOP
NOP
.UNIQUE1714: 
	movl	$.LC32, %edi
 jmp .UNIQUE1715
NOP
NOP
NOP
NOP
NOP
.UNIQUE1715: 
	call	puts
 jmp .UNIQUE1716
NOP
NOP
NOP
NOP
NOP
.UNIQUE1716: 
	movl	$0, %eax
 jmp .UNIQUE1717
NOP
NOP
NOP
NOP
NOP
.UNIQUE1717: 
	call	print_lists
 jmp .UNIQUE1718
NOP
NOP
NOP
NOP
NOP
.UNIQUE1718: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1719
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
.UNIQUE1720: 
	call	managed_secure_free
 jmp .UNIQUE1721
NOP
NOP
NOP
NOP
NOP
.UNIQUE1721: 
	movl	$.LC33, %edi
 jmp .UNIQUE1722
NOP
NOP
NOP
NOP
NOP
.UNIQUE1722: 
	call	puts
 jmp .UNIQUE1723
NOP
NOP
NOP
NOP
NOP
.UNIQUE1723: 
	movl	$0, %eax
 jmp .UNIQUE1724
NOP
NOP
NOP
NOP
NOP
.UNIQUE1724: 
	call	print_lists
 jmp .UNIQUE1725
NOP
NOP
NOP
NOP
NOP
.UNIQUE1725: 
	movl	$.LC34, %edi
 jmp .UNIQUE1726
NOP
NOP
NOP
NOP
NOP
.UNIQUE1726: 
	call	puts
 jmp .UNIQUE1727
NOP
NOP
NOP
NOP
NOP
.UNIQUE1727: 
	movl	$4, %edi
 jmp .UNIQUE1728
NOP
NOP
NOP
NOP
NOP
.UNIQUE1728: 
	call	managed_secure_malloc
 jmp .UNIQUE1729
NOP
NOP
NOP
NOP
NOP
.UNIQUE1729: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE1730
NOP
NOP
NOP
NOP
NOP
.UNIQUE1730: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE1731
NOP
NOP
NOP
NOP
NOP
.UNIQUE1731: 
	movl	$99998, %esi
 jmp .UNIQUE1732
NOP
NOP
NOP
NOP
NOP
.UNIQUE1732: 
	movq	%rax, %rdi
 jmp .UNIQUE1733
NOP
NOP
NOP
NOP
NOP
.UNIQUE1733: 
	call	set_int
 jmp .UNIQUE1734
NOP
NOP
NOP
NOP
NOP
.UNIQUE1734: 
	leaq	-156(%rbp), %rdx
 jmp .UNIQUE1735
NOP
NOP
NOP
NOP
NOP
.UNIQUE1735: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE1736
NOP
NOP
NOP
NOP
NOP
.UNIQUE1736: 
	movq	%rdx, %rsi
 jmp .UNIQUE1737
NOP
NOP
NOP
NOP
NOP
.UNIQUE1737: 
	movq	%rax, %rdi
 jmp .UNIQUE1738
NOP
NOP
NOP
NOP
NOP
.UNIQUE1738: 
	call	get_int
 jmp .UNIQUE1739
NOP
NOP
NOP
NOP
NOP
.UNIQUE1739: 
	movl	-156(%rbp), %eax
 jmp .UNIQUE1740
NOP
NOP
NOP
NOP
NOP
.UNIQUE1740: 
	movl	%eax, %esi
 jmp .UNIQUE1741
NOP
NOP
NOP
NOP
NOP
.UNIQUE1741: 
	movl	$.LC35, %edi
 jmp .UNIQUE1742
NOP
NOP
NOP
NOP
NOP
.UNIQUE1742: 
	movl	$0, %eax
 jmp .UNIQUE1743
NOP
NOP
NOP
NOP
NOP
.UNIQUE1743: 
	call	printf
 jmp .UNIQUE1744
NOP
NOP
NOP
NOP
NOP
.UNIQUE1744: 
	movl	$1, %edi
 jmp .UNIQUE1745
NOP
NOP
NOP
NOP
NOP
.UNIQUE1745: 
	call	managed_secure_malloc
 jmp .UNIQUE1746
NOP
NOP
NOP
NOP
NOP
.UNIQUE1746: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE1747
NOP
NOP
NOP
NOP
NOP
.UNIQUE1747: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1748
NOP
NOP
NOP
NOP
NOP
.UNIQUE1748: 
	movl	$98, %esi
 jmp .UNIQUE1749
NOP
NOP
NOP
NOP
NOP
.UNIQUE1749: 
	movq	%rax, %rdi
 jmp .UNIQUE1750
NOP
NOP
NOP
NOP
NOP
.UNIQUE1750: 
	call	set_char
 jmp .UNIQUE1751
NOP
NOP
NOP
NOP
NOP
.UNIQUE1751: 
	leaq	-157(%rbp), %rdx
 jmp .UNIQUE1752
NOP
NOP
NOP
NOP
NOP
.UNIQUE1752: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE1753
NOP
NOP
NOP
NOP
NOP
.UNIQUE1753: 
	movq	%rdx, %rsi
 jmp .UNIQUE1754
NOP
NOP
NOP
NOP
NOP
.UNIQUE1754: 
	movq	%rax, %rdi
 jmp .UNIQUE1755
NOP
NOP
NOP
NOP
NOP
.UNIQUE1755: 
	call	get_char
 jmp .UNIQUE1756
NOP
NOP
NOP
NOP
NOP
.UNIQUE1756: 
	movzbl	-157(%rbp), %eax
 jmp .UNIQUE1757
NOP
NOP
NOP
NOP
NOP
.UNIQUE1757: 
	movsbl	%al, %eax
 jmp .UNIQUE1758
NOP
NOP
NOP
NOP
NOP
.UNIQUE1758: 
	movl	%eax, %esi
 jmp .UNIQUE1759
NOP
NOP
NOP
NOP
NOP
.UNIQUE1759: 
	movl	$.LC36, %edi
 jmp .UNIQUE1760
NOP
NOP
NOP
NOP
NOP
.UNIQUE1760: 
	movl	$0, %eax
 jmp .UNIQUE1761
NOP
NOP
NOP
NOP
NOP
.UNIQUE1761: 
	call	printf
 jmp .UNIQUE1762
NOP
NOP
NOP
NOP
NOP
.UNIQUE1762: 
	movl	$8, %edi
 jmp .UNIQUE1763
NOP
NOP
NOP
NOP
NOP
.UNIQUE1763: 
	call	managed_secure_malloc
 jmp .UNIQUE1764
NOP
NOP
NOP
NOP
NOP
.UNIQUE1764: 
	movq	%rax, -32(%rbp)
 jmp .UNIQUE1765
NOP
NOP
NOP
NOP
NOP
.UNIQUE1765: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1766
NOP
NOP
NOP
NOP
NOP
.UNIQUE1766: 
	movl	$54545454, %esi
 jmp .UNIQUE1767
NOP
NOP
NOP
NOP
NOP
.UNIQUE1767: 
	movq	%rax, %rdi
 jmp .UNIQUE1768
NOP
NOP
NOP
NOP
NOP
.UNIQUE1768: 
	call	set_long_int
 jmp .UNIQUE1769
NOP
NOP
NOP
NOP
NOP
.UNIQUE1769: 
	leaq	-152(%rbp), %rdx
 jmp .UNIQUE1770
NOP
NOP
NOP
NOP
NOP
.UNIQUE1770: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1771
NOP
NOP
NOP
NOP
NOP
.UNIQUE1771: 
	movq	%rdx, %rsi
 jmp .UNIQUE1772
NOP
NOP
NOP
NOP
NOP
.UNIQUE1772: 
	movq	%rax, %rdi
 jmp .UNIQUE1773
NOP
NOP
NOP
NOP
NOP
.UNIQUE1773: 
	call	get_long_int
 jmp .UNIQUE1774
NOP
NOP
NOP
NOP
NOP
.UNIQUE1774: 
	movq	-152(%rbp), %rax
 jmp .UNIQUE1775
NOP
NOP
NOP
NOP
NOP
.UNIQUE1775: 
	movq	%rax, %rsi
 jmp .UNIQUE1776
NOP
NOP
NOP
NOP
NOP
.UNIQUE1776: 
	movl	$.LC37, %edi
 jmp .UNIQUE1777
NOP
NOP
NOP
NOP
NOP
.UNIQUE1777: 
	movl	$0, %eax
 jmp .UNIQUE1778
NOP
NOP
NOP
NOP
NOP
.UNIQUE1778: 
	call	printf
 jmp .UNIQUE1779
NOP
NOP
NOP
NOP
NOP
.UNIQUE1779: 
	movl	$.LC38, %edi
 jmp .UNIQUE1780
NOP
NOP
NOP
NOP
NOP
.UNIQUE1780: 
	call	puts
 jmp .UNIQUE1781
NOP
NOP
NOP
NOP
NOP
.UNIQUE1781: 
	movl	$0, %eax
 jmp .UNIQUE1782
NOP
NOP
NOP
NOP
NOP
.UNIQUE1782: 
	call	print_lists
 jmp .UNIQUE1783
NOP
NOP
NOP
NOP
NOP
.UNIQUE1783: 
	movq	-32(%rbp), %rax
 jmp .UNIQUE1784
NOP
NOP
NOP
NOP
NOP
.UNIQUE1784: 
	movq	%rax, %rdi
 jmp .UNIQUE1785
NOP
NOP
NOP
NOP
NOP
.UNIQUE1785: 
	call	managed_secure_free
 jmp .UNIQUE1786
NOP
NOP
NOP
NOP
NOP
.UNIQUE1786: 
	movl	$.LC39, %edi
 jmp .UNIQUE1787
NOP
NOP
NOP
NOP
NOP
.UNIQUE1787: 
	call	puts
 jmp .UNIQUE1788
NOP
NOP
NOP
NOP
NOP
.UNIQUE1788: 
	movl	$0, %eax
 jmp .UNIQUE1789
NOP
NOP
NOP
NOP
NOP
.UNIQUE1789: 
	call	print_lists
 jmp .UNIQUE1790
NOP
NOP
NOP
NOP
NOP
.UNIQUE1790: 
	movl	$1, %edi
 jmp .UNIQUE1791
NOP
NOP
NOP
NOP
NOP
.UNIQUE1791: 
	call	managed_secure_malloc
 jmp .UNIQUE1792
NOP
NOP
NOP
NOP
NOP
.UNIQUE1792: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1793
NOP
NOP
NOP
NOP
NOP
.UNIQUE1793: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1794
NOP
NOP
NOP
NOP
NOP
.UNIQUE1794: 
	movl	$97, %esi
 jmp .UNIQUE1795
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
.UNIQUE1796: 
	call	set_char
 jmp .UNIQUE1797
NOP
NOP
NOP
NOP
NOP
.UNIQUE1797: 
	leaq	-157(%rbp), %rdx
 jmp .UNIQUE1798
NOP
NOP
NOP
NOP
NOP
.UNIQUE1798: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE1799
NOP
NOP
NOP
NOP
NOP
.UNIQUE1799: 
	movq	%rdx, %rsi
 jmp .UNIQUE1800
NOP
NOP
NOP
NOP
NOP
.UNIQUE1800: 
	movq	%rax, %rdi
 jmp .UNIQUE1801
NOP
NOP
NOP
NOP
NOP
.UNIQUE1801: 
	call	get_char
 jmp .UNIQUE1802
NOP
NOP
NOP
NOP
NOP
.UNIQUE1802: 
	movzbl	-157(%rbp), %eax
 jmp .UNIQUE1803
NOP
NOP
NOP
NOP
NOP
.UNIQUE1803: 
	movsbl	%al, %eax
 jmp .UNIQUE1804
NOP
NOP
NOP
NOP
NOP
.UNIQUE1804: 
	movl	%eax, %esi
 jmp .UNIQUE1805
NOP
NOP
NOP
NOP
NOP
.UNIQUE1805: 
	movl	$.LC36, %edi
 jmp .UNIQUE1806
NOP
NOP
NOP
NOP
NOP
.UNIQUE1806: 
	movl	$0, %eax
 jmp .UNIQUE1807
NOP
NOP
NOP
NOP
NOP
.UNIQUE1807: 
	call	printf
 jmp .UNIQUE1808
NOP
NOP
NOP
NOP
NOP
.UNIQUE1808: 
	movl	$.LC40, %edi
 jmp .UNIQUE1809
NOP
NOP
NOP
NOP
NOP
.UNIQUE1809: 
	call	puts
 jmp .UNIQUE1810
NOP
NOP
NOP
NOP
NOP
.UNIQUE1810: 
	movl	$0, %eax
 jmp .UNIQUE1811
NOP
NOP
NOP
NOP
NOP
.UNIQUE1811: 
	call	print_lists
 jmp .UNIQUE1812
NOP
NOP
NOP
NOP
NOP
.UNIQUE1812: 
	movl	$8, %edi
 jmp .UNIQUE1813
NOP
NOP
NOP
NOP
NOP
.UNIQUE1813: 
	call	managed_secure_malloc
 jmp .UNIQUE1814
NOP
NOP
NOP
NOP
NOP
.UNIQUE1814: 
	movq	%rax, -16(%rbp)
 jmp .UNIQUE1815
NOP
NOP
NOP
NOP
NOP
.UNIQUE1815: 
	movabsq	$4665384344877005170, %rax
 jmp .UNIQUE1816
NOP
NOP
NOP
NOP
NOP
.UNIQUE1816: 
	movq	-16(%rbp), %rdx
 jmp .UNIQUE1817
NOP
NOP
NOP
NOP
NOP
.UNIQUE1817: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE1818
NOP
NOP
NOP
NOP
NOP
.UNIQUE1818: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE1819
NOP
NOP
NOP
NOP
NOP
.UNIQUE1819: 
	movq	%rdx, %rdi
 jmp .UNIQUE1820
NOP
NOP
NOP
NOP
NOP
.UNIQUE1820: 
	call	set_double
 jmp .UNIQUE1821
NOP
NOP
NOP
NOP
NOP
.UNIQUE1821: 
	leaq	-144(%rbp), %rdx
 jmp .UNIQUE1822
NOP
NOP
NOP
NOP
NOP
.UNIQUE1822: 
	movq	-16(%rbp), %rax
 jmp .UNIQUE1823
NOP
NOP
NOP
NOP
NOP
.UNIQUE1823: 
	movq	%rdx, %rsi
 jmp .UNIQUE1824
NOP
NOP
NOP
NOP
NOP
.UNIQUE1824: 
	movq	%rax, %rdi
 jmp .UNIQUE1825
NOP
NOP
NOP
NOP
NOP
.UNIQUE1825: 
	call	get_double
 jmp .UNIQUE1826
NOP
NOP
NOP
NOP
NOP
.UNIQUE1826: 
	movq	-144(%rbp), %rax
 jmp .UNIQUE1827
NOP
NOP
NOP
NOP
NOP
.UNIQUE1827: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE1828
NOP
NOP
NOP
NOP
NOP
.UNIQUE1828: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE1829
NOP
NOP
NOP
NOP
NOP
.UNIQUE1829: 
	movl	$.LC42, %edi
 jmp .UNIQUE1830
NOP
NOP
NOP
NOP
NOP
.UNIQUE1830: 
	movl	$1, %eax
 jmp .UNIQUE1831
NOP
NOP
NOP
NOP
NOP
.UNIQUE1831: 
	call	printf
 jmp .UNIQUE1832
NOP
NOP
NOP
NOP
NOP
.UNIQUE1832: 
	movl	$.LC43, %edi
 jmp .UNIQUE1833
NOP
NOP
NOP
NOP
NOP
.UNIQUE1833: 
	call	puts
 jmp .UNIQUE1834
NOP
NOP
NOP
NOP
NOP
.UNIQUE1834: 
	movl	$0, %eax
 jmp .UNIQUE1835
NOP
NOP
NOP
NOP
NOP
.UNIQUE1835: 
	call	print_lists
 jmp .UNIQUE1836
NOP
NOP
NOP
NOP
NOP
.UNIQUE1836: 
	movl	$.LC44, %edi
 jmp .UNIQUE1837
NOP
NOP
NOP
NOP
NOP
.UNIQUE1837: 
	call	puts
 jmp .UNIQUE1838
NOP
NOP
NOP
NOP
NOP
.UNIQUE1838: 
	movl	$80, %edi
 jmp .UNIQUE1839
NOP
NOP
NOP
NOP
NOP
.UNIQUE1839: 
	call	managed_secure_malloc
 jmp .UNIQUE1840
NOP
NOP
NOP
NOP
NOP
.UNIQUE1840: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE1841
NOP
NOP
NOP
NOP
NOP
.UNIQUE1841: 
	movabsq	$4631167498573958009, %rax
 jmp .UNIQUE1842
NOP
NOP
NOP
NOP
NOP
.UNIQUE1842: 
	movq	%rax, -136(%rbp)
 jmp .UNIQUE1843
NOP
NOP
NOP
NOP
NOP
.UNIQUE1843: 
	leaq	-136(%rbp), %rdx
 jmp .UNIQUE1844
NOP
NOP
NOP
NOP
NOP
.UNIQUE1844: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1845
NOP
NOP
NOP
NOP
NOP
.UNIQUE1845: 
	movq	%rdx, %rcx
 jmp .UNIQUE1846
NOP
NOP
NOP
NOP
NOP
.UNIQUE1846: 
	movl	$2, %edx
 jmp .UNIQUE1847
NOP
NOP
NOP
NOP
NOP
.UNIQUE1847: 
	movq	%rax, %rsi
 jmp .UNIQUE1848
NOP
NOP
NOP
NOP
NOP
.UNIQUE1848: 
	movl	$8, %edi
 jmp .UNIQUE1849
NOP
NOP
NOP
NOP
NOP
.UNIQUE1849: 
	call	set_array_element
 jmp .UNIQUE1850
NOP
NOP
NOP
NOP
NOP
.UNIQUE1850: 
	movabsq	$4629998950986019070, %rax
 jmp .UNIQUE1851
NOP
NOP
NOP
NOP
NOP
.UNIQUE1851: 
	movq	%rax, -136(%rbp)
 jmp .UNIQUE1852
NOP
NOP
NOP
NOP
NOP
.UNIQUE1852: 
	leaq	-136(%rbp), %rdx
 jmp .UNIQUE1853
NOP
NOP
NOP
NOP
NOP
.UNIQUE1853: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1854
NOP
NOP
NOP
NOP
NOP
.UNIQUE1854: 
	movq	%rdx, %rcx
 jmp .UNIQUE1855
NOP
NOP
NOP
NOP
NOP
.UNIQUE1855: 
	movl	$3, %edx
 jmp .UNIQUE1856
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
.UNIQUE1857: 
	movl	$8, %edi
 jmp .UNIQUE1858
NOP
NOP
NOP
NOP
NOP
.UNIQUE1858: 
	call	set_array_element
 jmp .UNIQUE1859
NOP
NOP
NOP
NOP
NOP
.UNIQUE1859: 
	movabsq	$4607182418800017408, %rax
 jmp .UNIQUE1860
NOP
NOP
NOP
NOP
NOP
.UNIQUE1860: 
	movq	%rax, -136(%rbp)
 jmp .UNIQUE1861
NOP
NOP
NOP
NOP
NOP
.UNIQUE1861: 
	leaq	-136(%rbp), %rdx
 jmp .UNIQUE1862
NOP
NOP
NOP
NOP
NOP
.UNIQUE1862: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1863
NOP
NOP
NOP
NOP
NOP
.UNIQUE1863: 
	movq	%rdx, %rcx
 jmp .UNIQUE1864
NOP
NOP
NOP
NOP
NOP
.UNIQUE1864: 
	movl	$2, %edx
 jmp .UNIQUE1865
NOP
NOP
NOP
NOP
NOP
.UNIQUE1865: 
	movq	%rax, %rsi
 jmp .UNIQUE1866
NOP
NOP
NOP
NOP
NOP
.UNIQUE1866: 
	movl	$8, %edi
 jmp .UNIQUE1867
NOP
NOP
NOP
NOP
NOP
.UNIQUE1867: 
	call	get_array_element
 jmp .UNIQUE1868
NOP
NOP
NOP
NOP
NOP
.UNIQUE1868: 
	movq	-136(%rbp), %rax
 jmp .UNIQUE1869
NOP
NOP
NOP
NOP
NOP
.UNIQUE1869: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE1870
NOP
NOP
NOP
NOP
NOP
.UNIQUE1870: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE1871
NOP
NOP
NOP
NOP
NOP
.UNIQUE1871: 
	movl	$.LC48, %edi
 jmp .UNIQUE1872
NOP
NOP
NOP
NOP
NOP
.UNIQUE1872: 
	movl	$1, %eax
 jmp .UNIQUE1873
NOP
NOP
NOP
NOP
NOP
.UNIQUE1873: 
	call	printf
 jmp .UNIQUE1874
NOP
NOP
NOP
NOP
NOP
.UNIQUE1874: 
	leaq	-136(%rbp), %rdx
 jmp .UNIQUE1875
NOP
NOP
NOP
NOP
NOP
.UNIQUE1875: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE1876
NOP
NOP
NOP
NOP
NOP
.UNIQUE1876: 
	movq	%rdx, %rcx
 jmp .UNIQUE1877
NOP
NOP
NOP
NOP
NOP
.UNIQUE1877: 
	movl	$3, %edx
 jmp .UNIQUE1878
NOP
NOP
NOP
NOP
NOP
.UNIQUE1878: 
	movq	%rax, %rsi
 jmp .UNIQUE1879
NOP
NOP
NOP
NOP
NOP
.UNIQUE1879: 
	movl	$8, %edi
 jmp .UNIQUE1880
NOP
NOP
NOP
NOP
NOP
.UNIQUE1880: 
	call	get_array_element
 jmp .UNIQUE1881
NOP
NOP
NOP
NOP
NOP
.UNIQUE1881: 
	movq	-136(%rbp), %rax
 jmp .UNIQUE1882
NOP
NOP
NOP
NOP
NOP
.UNIQUE1882: 
	movq	%rax, -168(%rbp)
 jmp .UNIQUE1883
NOP
NOP
NOP
NOP
NOP
.UNIQUE1883: 
	movsd	-168(%rbp), %xmm0
 jmp .UNIQUE1884
NOP
NOP
NOP
NOP
NOP
.UNIQUE1884: 
	movl	$.LC49, %edi
 jmp .UNIQUE1885
NOP
NOP
NOP
NOP
NOP
.UNIQUE1885: 
	movl	$1, %eax
 jmp .UNIQUE1886
NOP
NOP
NOP
NOP
NOP
.UNIQUE1886: 
	call	printf
 jmp .UNIQUE1887
NOP
NOP
NOP
NOP
NOP
.UNIQUE1887: 
	movl	$.LC50, %edi
 jmp .UNIQUE1888
NOP
NOP
NOP
NOP
NOP
.UNIQUE1888: 
	call	puts
 jmp .UNIQUE1889
NOP
NOP
NOP
NOP
NOP
.UNIQUE1889: 
	movl	$.LC51, %edi
 jmp .UNIQUE1890
NOP
NOP
NOP
NOP
NOP
.UNIQUE1890: 
	call	puts
 jmp .UNIQUE1891
NOP
NOP
NOP
NOP
NOP
.UNIQUE1891: 
	movq	-104(%rbp), %rax
 jmp .UNIQUE1892
NOP
NOP
NOP
NOP
NOP
.UNIQUE1892: 
	movq	%rax, %rdi
 jmp .UNIQUE1893
NOP
NOP
NOP
NOP
NOP
.UNIQUE1893: 
	call	print_mem
 jmp .UNIQUE1894
NOP
NOP
NOP
NOP
NOP
.UNIQUE1894: 
	movl	$.LC52, %edi
 jmp .UNIQUE1895
NOP
NOP
NOP
NOP
NOP
.UNIQUE1895: 
	call	puts
 jmp .UNIQUE1896
NOP
NOP
NOP
NOP
NOP
.UNIQUE1896: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1897
NOP
NOP
NOP
NOP
NOP
.UNIQUE1897: 
	ret
	.cfi_endproc
.LFE41:
	.size	mem_test, .-mem_test
	.section	.rodata
.LC53:
	.string	"a---------"
.LC54:
	.string	"Returned NULL! -.- 1"
.LC55:
	.string	"b---------"
.LC56:
	.string	"Returned NULL! -.- 2"
.LC57:
	.string	"c---------"
.LC58:
	.string	"Returned NULL! -.- 3"
.LC59:
	.string	"d---------"
.LC60:
	.string	"Something went wrong"
.LC61:
	.string	"e---------"
.LC62:
	.string	"Returned NULL! -.- 4"
.LC63:
	.string	"f---------"
.LC64:
	.string	"Returned NULL! -.- 5"
.LC65:
	.string	"g---------"
	.text
	.globl	list_test
	.type	list_test, @function
list_test:
.LFB42:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1898
NOP
NOP
NOP
NOP
NOP
.UNIQUE1898: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1899
NOP
NOP
NOP
NOP
NOP
.UNIQUE1899: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1900
NOP
NOP
NOP
NOP
NOP
.UNIQUE1900: 
	subq	$80, %rsp
 jmp .UNIQUE1901
NOP
NOP
NOP
NOP
NOP
.UNIQUE1901: 
	movl	$.LC4, %edi
 jmp .UNIQUE1902
NOP
NOP
NOP
NOP
NOP
.UNIQUE1902: 
	call	puts
 jmp .UNIQUE1903
NOP
NOP
NOP
NOP
NOP
.UNIQUE1903: 
	movq	free_chunks_list(%rip), %rax
 jmp .UNIQUE1904
NOP
NOP
NOP
NOP
NOP
.UNIQUE1904: 
	movq	%rax, %rdi
 jmp .UNIQUE1905
NOP
NOP
NOP
NOP
NOP
.UNIQUE1905: 
	call	print_list
 jmp .UNIQUE1906
NOP
NOP
NOP
NOP
NOP
.UNIQUE1906: 
	movl	$.LC5, %edi
 jmp .UNIQUE1907
NOP
NOP
NOP
NOP
NOP
.UNIQUE1907: 
	call	puts
 jmp .UNIQUE1908
NOP
NOP
NOP
NOP
NOP
.UNIQUE1908: 
	movq	allocated_chunks_list(%rip), %rax
 jmp .UNIQUE1909
NOP
NOP
NOP
NOP
NOP
.UNIQUE1909: 
	movq	%rax, %rdi
 jmp .UNIQUE1910
NOP
NOP
NOP
NOP
NOP
.UNIQUE1910: 
	call	print_list
 jmp .UNIQUE1911
NOP
NOP
NOP
NOP
NOP
.UNIQUE1911: 
	movq	$10, -32(%rbp)
 jmp .UNIQUE1912
NOP
NOP
NOP
NOP
NOP
.UNIQUE1912: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE1913
NOP
NOP
NOP
NOP
NOP
.UNIQUE1913: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE1914
NOP
NOP
NOP
NOP
NOP
.UNIQUE1914: 
	movq	$0, -16(%rbp)
 jmp .UNIQUE1915
NOP
NOP
NOP
NOP
NOP
.UNIQUE1915: 
	movq	$0, -8(%rbp)
 jmp .UNIQUE1916
NOP
NOP
NOP
NOP
NOP
.UNIQUE1916: 
	movl	$.LC53, %edi
 jmp .UNIQUE1917
NOP
NOP
NOP
NOP
NOP
.UNIQUE1917: 
	call	puts
 jmp .UNIQUE1918
NOP
NOP
NOP
NOP
NOP
.UNIQUE1918: 
	movl	$101, %edi
 jmp .UNIQUE1919
NOP
NOP
NOP
NOP
NOP
.UNIQUE1919: 
	call	managed_secure_malloc
 jmp .UNIQUE1920
NOP
NOP
NOP
NOP
NOP
.UNIQUE1920: 
	movq	%rax, -64(%rbp)
 jmp .UNIQUE1921
NOP
NOP
NOP
NOP
NOP
.UNIQUE1921: 
	cmpq	$0, -64(%rbp)
 jmp .UNIQUE1922
NOP
NOP
NOP
NOP
NOP
.UNIQUE1922: 
	jne	.L168
 jmp .UNIQUE1923
NOP
NOP
NOP
NOP
NOP
.UNIQUE1923: 
	movl	$.LC54, %edi
 jmp .UNIQUE1924
NOP
NOP
NOP
NOP
NOP
.UNIQUE1924: 
	call	puts
.L168:
 jmp .UNIQUE1925
NOP
NOP
NOP
NOP
NOP
.UNIQUE1925: 
	movl	$0, %eax
 jmp .UNIQUE1926
NOP
NOP
NOP
NOP
NOP
.UNIQUE1926: 
	call	print_lists
 jmp .UNIQUE1927
NOP
NOP
NOP
NOP
NOP
.UNIQUE1927: 
	movl	$.LC55, %edi
 jmp .UNIQUE1928
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
.UNIQUE1929: 
	movl	$42, %edi
 jmp .UNIQUE1930
NOP
NOP
NOP
NOP
NOP
.UNIQUE1930: 
	call	managed_secure_malloc
 jmp .UNIQUE1931
NOP
NOP
NOP
NOP
NOP
.UNIQUE1931: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE1932
NOP
NOP
NOP
NOP
NOP
.UNIQUE1932: 
	cmpq	$0, -56(%rbp)
 jmp .UNIQUE1933
NOP
NOP
NOP
NOP
NOP
.UNIQUE1933: 
	jne	.L169
 jmp .UNIQUE1934
NOP
NOP
NOP
NOP
NOP
.UNIQUE1934: 
	movl	$.LC56, %edi
 jmp .UNIQUE1935
NOP
NOP
NOP
NOP
NOP
.UNIQUE1935: 
	call	puts
.L169:
 jmp .UNIQUE1936
NOP
NOP
NOP
NOP
NOP
.UNIQUE1936: 
	movl	$0, %eax
 jmp .UNIQUE1937
NOP
NOP
NOP
NOP
NOP
.UNIQUE1937: 
	call	print_lists
 jmp .UNIQUE1938
NOP
NOP
NOP
NOP
NOP
.UNIQUE1938: 
	movl	$.LC57, %edi
 jmp .UNIQUE1939
NOP
NOP
NOP
NOP
NOP
.UNIQUE1939: 
	call	puts
 jmp .UNIQUE1940
NOP
NOP
NOP
NOP
NOP
.UNIQUE1940: 
	movl	$61, %edi
 jmp .UNIQUE1941
NOP
NOP
NOP
NOP
NOP
.UNIQUE1941: 
	call	managed_secure_malloc
 jmp .UNIQUE1942
NOP
NOP
NOP
NOP
NOP
.UNIQUE1942: 
	movq	%rax, -48(%rbp)
 jmp .UNIQUE1943
NOP
NOP
NOP
NOP
NOP
.UNIQUE1943: 
	cmpq	$0, -48(%rbp)
 jmp .UNIQUE1944
NOP
NOP
NOP
NOP
NOP
.UNIQUE1944: 
	jne	.L170
 jmp .UNIQUE1945
NOP
NOP
NOP
NOP
NOP
.UNIQUE1945: 
	movl	$.LC58, %edi
 jmp .UNIQUE1946
NOP
NOP
NOP
NOP
NOP
.UNIQUE1946: 
	call	puts
.L170:
 jmp .UNIQUE1947
NOP
NOP
NOP
NOP
NOP
.UNIQUE1947: 
	movl	$0, %eax
 jmp .UNIQUE1948
NOP
NOP
NOP
NOP
NOP
.UNIQUE1948: 
	call	print_lists
 jmp .UNIQUE1949
NOP
NOP
NOP
NOP
NOP
.UNIQUE1949: 
	movl	$.LC59, %edi
 jmp .UNIQUE1950
NOP
NOP
NOP
NOP
NOP
.UNIQUE1950: 
	call	puts
 jmp .UNIQUE1951
NOP
NOP
NOP
NOP
NOP
.UNIQUE1951: 
	movq	-56(%rbp), %rax
 jmp .UNIQUE1952
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
.UNIQUE1953: 
	call	managed_secure_free
 jmp .UNIQUE1954
NOP
NOP
NOP
NOP
NOP
.UNIQUE1954: 
	movl	%eax, -68(%rbp)
 jmp .UNIQUE1955
NOP
NOP
NOP
NOP
NOP
.UNIQUE1955: 
	cmpl	$0, -68(%rbp)
 jmp .UNIQUE1956
NOP
NOP
NOP
NOP
NOP
.UNIQUE1956: 
	jne	.L171
 jmp .UNIQUE1957
NOP
NOP
NOP
NOP
NOP
.UNIQUE1957: 
	movl	$.LC60, %edi
 jmp .UNIQUE1958
NOP
NOP
NOP
NOP
NOP
.UNIQUE1958: 
	call	puts
.L171:
 jmp .UNIQUE1959
NOP
NOP
NOP
NOP
NOP
.UNIQUE1959: 
	movl	$0, %eax
 jmp .UNIQUE1960
NOP
NOP
NOP
NOP
NOP
.UNIQUE1960: 
	call	print_lists
 jmp .UNIQUE1961
NOP
NOP
NOP
NOP
NOP
.UNIQUE1961: 
	movl	$.LC61, %edi
 jmp .UNIQUE1962
NOP
NOP
NOP
NOP
NOP
.UNIQUE1962: 
	call	puts
 jmp .UNIQUE1963
NOP
NOP
NOP
NOP
NOP
.UNIQUE1963: 
	movl	$80, %edi
 jmp .UNIQUE1964
NOP
NOP
NOP
NOP
NOP
.UNIQUE1964: 
	call	managed_secure_malloc
 jmp .UNIQUE1965
NOP
NOP
NOP
NOP
NOP
.UNIQUE1965: 
	movq	%rax, -56(%rbp)
 jmp .UNIQUE1966
NOP
NOP
NOP
NOP
NOP
.UNIQUE1966: 
	cmpq	$0, -56(%rbp)
 jmp .UNIQUE1967
NOP
NOP
NOP
NOP
NOP
.UNIQUE1967: 
	jne	.L172
 jmp .UNIQUE1968
NOP
NOP
NOP
NOP
NOP
.UNIQUE1968: 
	movl	$.LC62, %edi
 jmp .UNIQUE1969
NOP
NOP
NOP
NOP
NOP
.UNIQUE1969: 
	call	puts
.L172:
 jmp .UNIQUE1970
NOP
NOP
NOP
NOP
NOP
.UNIQUE1970: 
	movl	$0, %eax
 jmp .UNIQUE1971
NOP
NOP
NOP
NOP
NOP
.UNIQUE1971: 
	call	print_lists
 jmp .UNIQUE1972
NOP
NOP
NOP
NOP
NOP
.UNIQUE1972: 
	movl	$.LC63, %edi
 jmp .UNIQUE1973
NOP
NOP
NOP
NOP
NOP
.UNIQUE1973: 
	call	puts
 jmp .UNIQUE1974
NOP
NOP
NOP
NOP
NOP
.UNIQUE1974: 
	movl	$29, %edi
 jmp .UNIQUE1975
NOP
NOP
NOP
NOP
NOP
.UNIQUE1975: 
	call	managed_secure_malloc
 jmp .UNIQUE1976
NOP
NOP
NOP
NOP
NOP
.UNIQUE1976: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE1977
NOP
NOP
NOP
NOP
NOP
.UNIQUE1977: 
	cmpq	$0, -40(%rbp)
 jmp .UNIQUE1978
NOP
NOP
NOP
NOP
NOP
.UNIQUE1978: 
	jne	.L173
 jmp .UNIQUE1979
NOP
NOP
NOP
NOP
NOP
.UNIQUE1979: 
	movl	$.LC64, %edi
 jmp .UNIQUE1980
NOP
NOP
NOP
NOP
NOP
.UNIQUE1980: 
	call	puts
.L173:
 jmp .UNIQUE1981
NOP
NOP
NOP
NOP
NOP
.UNIQUE1981: 
	movl	$0, %eax
 jmp .UNIQUE1982
NOP
NOP
NOP
NOP
NOP
.UNIQUE1982: 
	call	print_lists
 jmp .UNIQUE1983
NOP
NOP
NOP
NOP
NOP
.UNIQUE1983: 
	movl	$.LC65, %edi
 jmp .UNIQUE1984
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
.UNIQUE1985: 
	movq	-48(%rbp), %rax
 jmp .UNIQUE1986
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
.UNIQUE1987: 
	call	managed_secure_free
 jmp .UNIQUE1988
NOP
NOP
NOP
NOP
NOP
.UNIQUE1988: 
	movl	%eax, -68(%rbp)
 jmp .UNIQUE1989
NOP
NOP
NOP
NOP
NOP
.UNIQUE1989: 
	cmpl	$0, -68(%rbp)
 jmp .UNIQUE1990
NOP
NOP
NOP
NOP
NOP
.UNIQUE1990: 
	jne	.L174
 jmp .UNIQUE1991
NOP
NOP
NOP
NOP
NOP
.UNIQUE1991: 
	movl	$.LC60, %edi
 jmp .UNIQUE1992
NOP
NOP
NOP
NOP
NOP
.UNIQUE1992: 
	call	puts
.L174:
 jmp .UNIQUE1993
NOP
NOP
NOP
NOP
NOP
.UNIQUE1993: 
	movl	$0, %eax
 jmp .UNIQUE1994
NOP
NOP
NOP
NOP
NOP
.UNIQUE1994: 
	call	print_lists
 jmp .UNIQUE1995
NOP
NOP
NOP
NOP
NOP
.UNIQUE1995: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE1996
NOP
NOP
NOP
NOP
NOP
.UNIQUE1996: 
	ret
	.cfi_endproc
.LFE42:
	.size	list_test, .-list_test
	.comm	sa,152,32
	.section	.rodata
.LC66:
	.string	"key no%d=0x%02x\n"
	.text
	.globl	find_keyshares
	.type	find_keyshares, @function
find_keyshares:
.LFB43:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE1997
NOP
NOP
NOP
NOP
NOP
.UNIQUE1997: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE1998
NOP
NOP
NOP
NOP
NOP
.UNIQUE1998: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE1999
NOP
NOP
NOP
NOP
NOP
.UNIQUE1999: 
	subq	$112, %rsp
 jmp .UNIQUE2000
NOP
NOP
NOP
NOP
NOP
.UNIQUE2000: 
	movq	%fs:40, %rax
 jmp .UNIQUE2001
NOP
NOP
NOP
NOP
NOP
.UNIQUE2001: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE2002
NOP
NOP
NOP
NOP
NOP
.UNIQUE2002: 
	xorl	%eax, %eax
 jmp .UNIQUE2003
NOP
NOP
NOP
NOP
NOP
.UNIQUE2003: 
	movl	$0, -96(%rbp)
 jmp .UNIQUE2004
NOP
NOP
NOP
NOP
NOP
.UNIQUE2004: 
	movq	$foo, -72(%rbp)
 jmp .UNIQUE2005
NOP
NOP
NOP
NOP
NOP
.UNIQUE2005: 
	movq	$main, -64(%rbp)
 jmp .UNIQUE2006
NOP
NOP
NOP
NOP
NOP
.UNIQUE2006: 
	movq	$foo2, -56(%rbp)
 jmp .UNIQUE2007
NOP
NOP
NOP
NOP
NOP
.UNIQUE2007: 
	movq	$find_keyshares, -48(%rbp)
 jmp .UNIQUE2008
NOP
NOP
NOP
NOP
NOP
.UNIQUE2008: 
	movl	$0, -92(%rbp)
 jmp .UNIQUE2009
NOP
NOP
NOP
NOP
NOP
.UNIQUE2009: 
	movq	$__executable_start, -40(%rbp)
 jmp .UNIQUE2010
NOP
NOP
NOP
NOP
NOP
.UNIQUE2010: 
	movq	$__etext, -32(%rbp)
 jmp .UNIQUE2011
NOP
NOP
NOP
NOP
NOP
.UNIQUE2011: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE2012
NOP
NOP
NOP
NOP
NOP
.UNIQUE2012: 
	jmp	.L176
.L177:
 jmp .UNIQUE2013
NOP
NOP
NOP
NOP
NOP
.UNIQUE2013: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE2014
NOP
NOP
NOP
NOP
NOP
.UNIQUE2014: 
	cltq
 jmp .UNIQUE2015
NOP
NOP
NOP
NOP
NOP
.UNIQUE2015: 
	movb	$0, -16(%rbp,%rax)
 jmp .UNIQUE2016
NOP
NOP
NOP
NOP
NOP
.UNIQUE2016: 
	addl	$1, -100(%rbp)
.L176:
 jmp .UNIQUE2017
NOP
NOP
NOP
NOP
NOP
.UNIQUE2017: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE2018
NOP
NOP
NOP
NOP
NOP
.UNIQUE2018: 
	jle	.L177
 jmp .UNIQUE2019
NOP
NOP
NOP
NOP
NOP
.UNIQUE2019: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2020
NOP
NOP
NOP
NOP
NOP
.UNIQUE2020: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE2021
NOP
NOP
NOP
NOP
NOP
.UNIQUE2021: 
	jmp	.L178
.L182:
 jmp .UNIQUE2022
NOP
NOP
NOP
NOP
NOP
.UNIQUE2022: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE2023
NOP
NOP
NOP
NOP
NOP
.UNIQUE2023: 
	movzbl	(%rax), %eax
 jmp .UNIQUE2024
NOP
NOP
NOP
NOP
NOP
.UNIQUE2024: 
	cmpb	$-21, %al
 jmp .UNIQUE2025
NOP
NOP
NOP
NOP
NOP
.UNIQUE2025: 
	jne	.L179
 jmp .UNIQUE2026
NOP
NOP
NOP
NOP
NOP
.UNIQUE2026: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE2027
NOP
NOP
NOP
NOP
NOP
.UNIQUE2027: 
	addq	$1, %rax
 jmp .UNIQUE2028
NOP
NOP
NOP
NOP
NOP
.UNIQUE2028: 
	movzbl	(%rax), %eax
 jmp .UNIQUE2029
NOP
NOP
NOP
NOP
NOP
.UNIQUE2029: 
	cmpb	$5, %al
 jmp .UNIQUE2030
NOP
NOP
NOP
NOP
NOP
.UNIQUE2030: 
	jne	.L179
 jmp .UNIQUE2031
NOP
NOP
NOP
NOP
NOP
.UNIQUE2031: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE2032
NOP
NOP
NOP
NOP
NOP
.UNIQUE2032: 
	jmp	.L180
.L181:
 jmp .UNIQUE2033
NOP
NOP
NOP
NOP
NOP
.UNIQUE2033: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE2034
NOP
NOP
NOP
NOP
NOP
.UNIQUE2034: 
	cltq
 jmp .UNIQUE2035
NOP
NOP
NOP
NOP
NOP
.UNIQUE2035: 
	movzbl	-16(%rbp,%rax), %edx
 jmp .UNIQUE2036
NOP
NOP
NOP
NOP
NOP
.UNIQUE2036: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE2037
NOP
NOP
NOP
NOP
NOP
.UNIQUE2037: 
	cltq
 jmp .UNIQUE2038
NOP
NOP
NOP
NOP
NOP
.UNIQUE2038: 
	leaq	2(%rax), %rcx
 jmp .UNIQUE2039
NOP
NOP
NOP
NOP
NOP
.UNIQUE2039: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE2040
NOP
NOP
NOP
NOP
NOP
.UNIQUE2040: 
	addq	%rcx, %rax
 jmp .UNIQUE2041
NOP
NOP
NOP
NOP
NOP
.UNIQUE2041: 
	movzbl	(%rax), %eax
 jmp .UNIQUE2042
NOP
NOP
NOP
NOP
NOP
.UNIQUE2042: 
	xorl	%eax, %edx
 jmp .UNIQUE2043
NOP
NOP
NOP
NOP
NOP
.UNIQUE2043: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE2044
NOP
NOP
NOP
NOP
NOP
.UNIQUE2044: 
	cltq
 jmp .UNIQUE2045
NOP
NOP
NOP
NOP
NOP
.UNIQUE2045: 
	movb	%dl, -16(%rbp,%rax)
 jmp .UNIQUE2046
NOP
NOP
NOP
NOP
NOP
.UNIQUE2046: 
	addl	$1, -100(%rbp)
.L180:
 jmp .UNIQUE2047
NOP
NOP
NOP
NOP
NOP
.UNIQUE2047: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE2048
NOP
NOP
NOP
NOP
NOP
.UNIQUE2048: 
	jle	.L181
 jmp .UNIQUE2049
NOP
NOP
NOP
NOP
NOP
.UNIQUE2049: 
	addl	$1, -96(%rbp)
.L179:
 jmp .UNIQUE2050
NOP
NOP
NOP
NOP
NOP
.UNIQUE2050: 
	addq	$1, -88(%rbp)
.L178:
 jmp .UNIQUE2051
NOP
NOP
NOP
NOP
NOP
.UNIQUE2051: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE2052
NOP
NOP
NOP
NOP
NOP
.UNIQUE2052: 
	cmpq	-32(%rbp), %rax
 jmp .UNIQUE2053
NOP
NOP
NOP
NOP
NOP
.UNIQUE2053: 
	jbe	.L182
 jmp .UNIQUE2054
NOP
NOP
NOP
NOP
NOP
.UNIQUE2054: 
	movl	$.LC11, %esi
 jmp .UNIQUE2055
NOP
NOP
NOP
NOP
NOP
.UNIQUE2055: 
	movl	$.LC12, %edi
 jmp .UNIQUE2056
NOP
NOP
NOP
NOP
NOP
.UNIQUE2056: 
	call	fopen
 jmp .UNIQUE2057
NOP
NOP
NOP
NOP
NOP
.UNIQUE2057: 
	movq	%rax, -24(%rbp)
 jmp .UNIQUE2058
NOP
NOP
NOP
NOP
NOP
.UNIQUE2058: 
	movq	entire_memory_chunk(%rip), %rax
 jmp .UNIQUE2059
NOP
NOP
NOP
NOP
NOP
.UNIQUE2059: 
	movq	%rax, -88(%rbp)
 jmp .UNIQUE2060
NOP
NOP
NOP
NOP
NOP
.UNIQUE2060: 
	movq	$0, -80(%rbp)
 jmp .UNIQUE2061
NOP
NOP
NOP
NOP
NOP
.UNIQUE2061: 
	jmp	.L183
.L187:
 jmp .UNIQUE2062
NOP
NOP
NOP
NOP
NOP
.UNIQUE2062: 
	cmpl	$0, -92(%rbp)
 jmp .UNIQUE2063
NOP
NOP
NOP
NOP
NOP
.UNIQUE2063: 
	jne	.L184
 jmp .UNIQUE2064
NOP
NOP
NOP
NOP
NOP
.UNIQUE2064: 
	addq	$4, -80(%rbp)
 jmp .UNIQUE2065
NOP
NOP
NOP
NOP
NOP
.UNIQUE2065: 
	movl	$1, -92(%rbp)
 jmp .UNIQUE2066
NOP
NOP
NOP
NOP
NOP
.UNIQUE2066: 
	jmp	.L183
.L184:
 jmp .UNIQUE2067
NOP
NOP
NOP
NOP
NOP
.UNIQUE2067: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE2068
NOP
NOP
NOP
NOP
NOP
.UNIQUE2068: 
	jmp	.L185
.L186:
 jmp .UNIQUE2069
NOP
NOP
NOP
NOP
NOP
.UNIQUE2069: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE2070
NOP
NOP
NOP
NOP
NOP
.UNIQUE2070: 
	cltq
 jmp .UNIQUE2071
NOP
NOP
NOP
NOP
NOP
.UNIQUE2071: 
	movzbl	-16(%rbp,%rax), %edx
 jmp .UNIQUE2072
NOP
NOP
NOP
NOP
NOP
.UNIQUE2072: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE2073
NOP
NOP
NOP
NOP
NOP
.UNIQUE2073: 
	movslq	%eax, %rcx
 jmp .UNIQUE2074
NOP
NOP
NOP
NOP
NOP
.UNIQUE2074: 
	movq	-80(%rbp), %rax
 jmp .UNIQUE2075
NOP
NOP
NOP
NOP
NOP
.UNIQUE2075: 
	addq	%rax, %rcx
 jmp .UNIQUE2076
NOP
NOP
NOP
NOP
NOP
.UNIQUE2076: 
	movq	-88(%rbp), %rax
 jmp .UNIQUE2077
NOP
NOP
NOP
NOP
NOP
.UNIQUE2077: 
	addq	%rcx, %rax
 jmp .UNIQUE2078
NOP
NOP
NOP
NOP
NOP
.UNIQUE2078: 
	movzbl	(%rax), %eax
 jmp .UNIQUE2079
NOP
NOP
NOP
NOP
NOP
.UNIQUE2079: 
	xorl	%eax, %edx
 jmp .UNIQUE2080
NOP
NOP
NOP
NOP
NOP
.UNIQUE2080: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE2081
NOP
NOP
NOP
NOP
NOP
.UNIQUE2081: 
	cltq
 jmp .UNIQUE2082
NOP
NOP
NOP
NOP
NOP
.UNIQUE2082: 
	movb	%dl, -16(%rbp,%rax)
 jmp .UNIQUE2083
NOP
NOP
NOP
NOP
NOP
.UNIQUE2083: 
	addl	$1, -100(%rbp)
.L185:
 jmp .UNIQUE2084
NOP
NOP
NOP
NOP
NOP
.UNIQUE2084: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE2085
NOP
NOP
NOP
NOP
NOP
.UNIQUE2085: 
	jle	.L186
 jmp .UNIQUE2086
NOP
NOP
NOP
NOP
NOP
.UNIQUE2086: 
	addq	$5, -80(%rbp)
 jmp .UNIQUE2087
NOP
NOP
NOP
NOP
NOP
.UNIQUE2087: 
	movl	$0, -92(%rbp)
.L183:
 jmp .UNIQUE2088
NOP
NOP
NOP
NOP
NOP
.UNIQUE2088: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE2089
NOP
NOP
NOP
NOP
NOP
.UNIQUE2089: 
	cmpq	%rax, -80(%rbp)
 jmp .UNIQUE2090
NOP
NOP
NOP
NOP
NOP
.UNIQUE2090: 
	jl	.L187
 jmp .UNIQUE2091
NOP
NOP
NOP
NOP
NOP
.UNIQUE2091: 
	movq	-24(%rbp), %rax
 jmp .UNIQUE2092
NOP
NOP
NOP
NOP
NOP
.UNIQUE2092: 
	movq	%rax, %rdi
 jmp .UNIQUE2093
NOP
NOP
NOP
NOP
NOP
.UNIQUE2093: 
	call	fclose
 jmp .UNIQUE2094
NOP
NOP
NOP
NOP
NOP
.UNIQUE2094: 
	movl	$10, %edi
 jmp .UNIQUE2095
NOP
NOP
NOP
NOP
NOP
.UNIQUE2095: 
	call	putchar
 jmp .UNIQUE2096
NOP
NOP
NOP
NOP
NOP
.UNIQUE2096: 
	movl	$0, -100(%rbp)
 jmp .UNIQUE2097
NOP
NOP
NOP
NOP
NOP
.UNIQUE2097: 
	jmp	.L188
.L189:
 jmp .UNIQUE2098
NOP
NOP
NOP
NOP
NOP
.UNIQUE2098: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE2099
NOP
NOP
NOP
NOP
NOP
.UNIQUE2099: 
	cltq
 jmp .UNIQUE2100
NOP
NOP
NOP
NOP
NOP
.UNIQUE2100: 
	movzbl	-16(%rbp,%rax), %eax
 jmp .UNIQUE2101
NOP
NOP
NOP
NOP
NOP
.UNIQUE2101: 
	movzbl	%al, %edx
 jmp .UNIQUE2102
NOP
NOP
NOP
NOP
NOP
.UNIQUE2102: 
	movl	-100(%rbp), %eax
 jmp .UNIQUE2103
NOP
NOP
NOP
NOP
NOP
.UNIQUE2103: 
	movl	%eax, %esi
 jmp .UNIQUE2104
NOP
NOP
NOP
NOP
NOP
.UNIQUE2104: 
	movl	$.LC66, %edi
 jmp .UNIQUE2105
NOP
NOP
NOP
NOP
NOP
.UNIQUE2105: 
	movl	$0, %eax
 jmp .UNIQUE2106
NOP
NOP
NOP
NOP
NOP
.UNIQUE2106: 
	call	printf
 jmp .UNIQUE2107
NOP
NOP
NOP
NOP
NOP
.UNIQUE2107: 
	addl	$1, -100(%rbp)
.L188:
 jmp .UNIQUE2108
NOP
NOP
NOP
NOP
NOP
.UNIQUE2108: 
	cmpl	$4, -100(%rbp)
 jmp .UNIQUE2109
NOP
NOP
NOP
NOP
NOP
.UNIQUE2109: 
	jle	.L189
 jmp .UNIQUE2110
NOP
NOP
NOP
NOP
NOP
.UNIQUE2110: 
	nop
 jmp .UNIQUE2111
NOP
NOP
NOP
NOP
NOP
.UNIQUE2111: 
	movq	-8(%rbp), %rax
 jmp .UNIQUE2112
NOP
NOP
NOP
NOP
NOP
.UNIQUE2112: 
	xorq	%fs:40, %rax
 jmp .UNIQUE2113
NOP
NOP
NOP
NOP
NOP
.UNIQUE2113: 
	je	.L191
 jmp .UNIQUE2114
NOP
NOP
NOP
NOP
NOP
.UNIQUE2114: 
	call	__stack_chk_fail
.L191:
 jmp .UNIQUE2115
NOP
NOP
NOP
NOP
NOP
.UNIQUE2115: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2116
NOP
NOP
NOP
NOP
NOP
.UNIQUE2116: 
	ret
	.cfi_endproc
.LFE43:
	.size	find_keyshares, .-find_keyshares
	.section	.rodata
.LC67:
	.string	"Verification requested!"
	.text
	.globl	verification_procedure
	.type	verification_procedure, @function
verification_procedure:
.LFB44:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2117
NOP
NOP
NOP
NOP
NOP
.UNIQUE2117: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2118
NOP
NOP
NOP
NOP
NOP
.UNIQUE2118: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2119
NOP
NOP
NOP
NOP
NOP
.UNIQUE2119: 
	movl	$.LC67, %edi
 jmp .UNIQUE2120
NOP
NOP
NOP
NOP
NOP
.UNIQUE2120: 
	call	puts
 jmp .UNIQUE2121
NOP
NOP
NOP
NOP
NOP
.UNIQUE2121: 
	movl	$0, %eax
 jmp .UNIQUE2122
NOP
NOP
NOP
NOP
NOP
.UNIQUE2122: 
	call	find_keyshares
 jmp .UNIQUE2123
NOP
NOP
NOP
NOP
NOP
.UNIQUE2123: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2124
NOP
NOP
NOP
NOP
NOP
.UNIQUE2124: 
	ret
	.cfi_endproc
.LFE44:
	.size	verification_procedure, .-verification_procedure
	.local	static_global_variable_for_testing
	.comm	static_global_variable_for_testing,4,4
	.globl	foo
	.type	foo, @function
foo:
.LFB45:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2125
NOP
NOP
NOP
NOP
NOP
.UNIQUE2125: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2126
NOP
NOP
NOP
NOP
NOP
.UNIQUE2126: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2127
NOP
NOP
NOP
NOP
NOP
.UNIQUE2127: 
	movl	%edi, -20(%rbp)
 jmp .UNIQUE2128
NOP
NOP
NOP
NOP
NOP
.UNIQUE2128: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE2129
NOP
NOP
NOP
NOP
NOP
.UNIQUE2129: 
	addl	$2, %eax
 jmp .UNIQUE2130
NOP
NOP
NOP
NOP
NOP
.UNIQUE2130: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE2131
NOP
NOP
NOP
NOP
NOP
.UNIQUE2131: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE2132
NOP
NOP
NOP
NOP
NOP
.UNIQUE2132: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2133
NOP
NOP
NOP
NOP
NOP
.UNIQUE2133: 
	ret
	.cfi_endproc
.LFE45:
	.size	foo, .-foo
	.section	.rodata
.LC68:
	.string	"Initializing mem"
	.align 8
.LC69:
	.string	"bytes_to_allocate_on_start:%d\n"
.LC70:
	.string	"Init_mem, alloc+key insertion"
	.align 8
.LC71:
	.string	"If successful, total bytes allocated:%ld\n"
.LC72:
	.string	"Installing signal handler"
	.align 8
.LC73:
	.string	"Could not install signal handler"
.LC74:
	.string	"Signal handler installed"
.LC75:
	.string	"My pid=%ld\n"
.LC76:
	.string	"K=%d\n"
.LC77:
	.string	"n=%d\n"
.LC78:
	.string	"main is at %p\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB46:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2134
NOP
NOP
NOP
NOP
NOP
.UNIQUE2134: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2135
NOP
NOP
NOP
NOP
NOP
.UNIQUE2135: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2136
NOP
NOP
NOP
NOP
NOP
.UNIQUE2136: 
	subq	$64, %rsp
 jmp .UNIQUE2137
NOP
NOP
NOP
NOP
NOP
.UNIQUE2137: 
	movq	%fs:40, %rax
 jmp .UNIQUE2138
NOP
NOP
NOP
NOP
NOP
.UNIQUE2138: 
	movq	%rax, -8(%rbp)
 jmp .UNIQUE2139
NOP
NOP
NOP
NOP
NOP
.UNIQUE2139: 
	xorl	%eax, %eax
 jmp .UNIQUE2140
NOP
NOP
NOP
NOP
NOP
.UNIQUE2140: 
	movl	$1, -56(%rbp)
 jmp .UNIQUE2141
NOP
NOP
NOP
NOP
NOP
.UNIQUE2141: 
	movl	$2, -52(%rbp)
 jmp .UNIQUE2142
NOP
NOP
NOP
NOP
NOP
.UNIQUE2142: 
	addl	$1, -52(%rbp)
 jmp .UNIQUE2143
NOP
NOP
NOP
NOP
NOP
.UNIQUE2143: 
	addl	$1, -52(%rbp)
 jmp .UNIQUE2144
NOP
NOP
NOP
NOP
NOP
.UNIQUE2144: 
	subl	$1, -52(%rbp)
 jmp .UNIQUE2145
NOP
NOP
NOP
NOP
NOP
.UNIQUE2145: 
	movl	-52(%rbp), %eax
 jmp .UNIQUE2146
NOP
NOP
NOP
NOP
NOP
.UNIQUE2146: 
	addl	%eax, -56(%rbp)
 jmp .UNIQUE2147
NOP
NOP
NOP
NOP
NOP
.UNIQUE2147: 
	addl	$2, -56(%rbp)
 jmp .UNIQUE2148
NOP
NOP
NOP
NOP
NOP
.UNIQUE2148: 
	addl	$1, -52(%rbp)
 jmp .UNIQUE2149
NOP
NOP
NOP
NOP
NOP
.UNIQUE2149: 
	movl	$1, static_main_variable_for_testing.4172(%rip)
 jmp .UNIQUE2150
NOP
NOP
NOP
NOP
NOP
.UNIQUE2150: 
	movl	$2, static_global_variable_for_testing(%rip)
 jmp .UNIQUE2151
NOP
NOP
NOP
NOP
NOP
.UNIQUE2151: 
	movl	$.LC68, %edi
 jmp .UNIQUE2152
NOP
NOP
NOP
NOP
NOP
.UNIQUE2152: 
	call	puts
 jmp .UNIQUE2153
NOP
NOP
NOP
NOP
NOP
.UNIQUE2153: 
	movl	$2048, %esi
 jmp .UNIQUE2154
NOP
NOP
NOP
NOP
NOP
.UNIQUE2154: 
	movl	$.LC69, %edi
 jmp .UNIQUE2155
NOP
NOP
NOP
NOP
NOP
.UNIQUE2155: 
	movl	$0, %eax
 jmp .UNIQUE2156
NOP
NOP
NOP
NOP
NOP
.UNIQUE2156: 
	call	printf
 jmp .UNIQUE2157
NOP
NOP
NOP
NOP
NOP
.UNIQUE2157: 
	movl	$.LC70, %edi
 jmp .UNIQUE2158
NOP
NOP
NOP
NOP
NOP
.UNIQUE2158: 
	call	puts
 jmp .UNIQUE2159
NOP
NOP
NOP
NOP
NOP
.UNIQUE2159: 
	movl	$0, %eax
 jmp .UNIQUE2160
NOP
NOP
NOP
NOP
NOP
.UNIQUE2160: 
	call	init_mem
 jmp .UNIQUE2161
NOP
NOP
NOP
NOP
NOP
.UNIQUE2161: 
	movq	%rax, -40(%rbp)
 jmp .UNIQUE2162
NOP
NOP
NOP
NOP
NOP
.UNIQUE2162: 
	movq	total_bytes_allocated(%rip), %rax
 jmp .UNIQUE2163
NOP
NOP
NOP
NOP
NOP
.UNIQUE2163: 
	movq	%rax, %rsi
 jmp .UNIQUE2164
NOP
NOP
NOP
NOP
NOP
.UNIQUE2164: 
	movl	$.LC71, %edi
 jmp .UNIQUE2165
NOP
NOP
NOP
NOP
NOP
.UNIQUE2165: 
	movl	$0, %eax
 jmp .UNIQUE2166
NOP
NOP
NOP
NOP
NOP
.UNIQUE2166: 
	call	printf
 jmp .UNIQUE2167
NOP
NOP
NOP
NOP
NOP
.UNIQUE2167: 
	movl	$.LC72, %edi
 jmp .UNIQUE2168
NOP
NOP
NOP
NOP
NOP
.UNIQUE2168: 
	call	puts
 jmp .UNIQUE2169
NOP
NOP
NOP
NOP
NOP
.UNIQUE2169: 
	movq	$verification_procedure, sa(%rip)
 jmp .UNIQUE2170
NOP
NOP
NOP
NOP
NOP
.UNIQUE2170: 
	movl	$sa+8, %edi
 jmp .UNIQUE2171
NOP
NOP
NOP
NOP
NOP
.UNIQUE2171: 
	call	sigemptyset
 jmp .UNIQUE2172
NOP
NOP
NOP
NOP
NOP
.UNIQUE2172: 
	movl	$268435456, sa+136(%rip)
 jmp .UNIQUE2173
NOP
NOP
NOP
NOP
NOP
.UNIQUE2173: 
	movl	$0, %edx
 jmp .UNIQUE2174
NOP
NOP
NOP
NOP
NOP
.UNIQUE2174: 
	movl	$sa, %esi
 jmp .UNIQUE2175
NOP
NOP
NOP
NOP
NOP
.UNIQUE2175: 
	movl	$10, %edi
 jmp .UNIQUE2176
NOP
NOP
NOP
NOP
NOP
.UNIQUE2176: 
	call	sigaction
 jmp .UNIQUE2177
NOP
NOP
NOP
NOP
NOP
.UNIQUE2177: 
	cmpl	$-1, %eax
 jmp .UNIQUE2178
NOP
NOP
NOP
NOP
NOP
.UNIQUE2178: 
	jne	.L196
 jmp .UNIQUE2179
NOP
NOP
NOP
NOP
NOP
.UNIQUE2179: 
	movl	$.LC73, %edi
 jmp .UNIQUE2180
NOP
NOP
NOP
NOP
NOP
.UNIQUE2180: 
	call	perror
 jmp .UNIQUE2181
NOP
NOP
NOP
NOP
NOP
.UNIQUE2181: 
	movl	$45, %edi
 jmp .UNIQUE2182
NOP
NOP
NOP
NOP
NOP
.UNIQUE2182: 
	call	exit
.L196:
 jmp .UNIQUE2183
NOP
NOP
NOP
NOP
NOP
.UNIQUE2183: 
	movl	$.LC74, %edi
 jmp .UNIQUE2184
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
.UNIQUE2185: 
	call	getpid
 jmp .UNIQUE2186
NOP
NOP
NOP
NOP
NOP
.UNIQUE2186: 
	movl	%eax, -48(%rbp)
 jmp .UNIQUE2187
NOP
NOP
NOP
NOP
NOP
.UNIQUE2187: 
	movl	-48(%rbp), %eax
 jmp .UNIQUE2188
NOP
NOP
NOP
NOP
NOP
.UNIQUE2188: 
	cltq
 jmp .UNIQUE2189
NOP
NOP
NOP
NOP
NOP
.UNIQUE2189: 
	movq	%rax, %rsi
 jmp .UNIQUE2190
NOP
NOP
NOP
NOP
NOP
.UNIQUE2190: 
	movl	$.LC75, %edi
 jmp .UNIQUE2191
NOP
NOP
NOP
NOP
NOP
.UNIQUE2191: 
	movl	$0, %eax
 jmp .UNIQUE2192
NOP
NOP
NOP
NOP
NOP
.UNIQUE2192: 
	call	printf
 jmp .UNIQUE2193
NOP
NOP
NOP
NOP
NOP
.UNIQUE2193: 
	movl	-56(%rbp), %eax
 jmp .UNIQUE2194
NOP
NOP
NOP
NOP
NOP
.UNIQUE2194: 
	movl	%eax, %esi
 jmp .UNIQUE2195
NOP
NOP
NOP
NOP
NOP
.UNIQUE2195: 
	movl	$.LC76, %edi
 jmp .UNIQUE2196
NOP
NOP
NOP
NOP
NOP
.UNIQUE2196: 
	movl	$0, %eax
 jmp .UNIQUE2197
NOP
NOP
NOP
NOP
NOP
.UNIQUE2197: 
	call	printf
 jmp .UNIQUE2198
NOP
NOP
NOP
NOP
NOP
.UNIQUE2198: 
	movl	$5, %edi
 jmp .UNIQUE2199
NOP
NOP
NOP
NOP
NOP
.UNIQUE2199: 
	call	foo
 jmp .UNIQUE2200
NOP
NOP
NOP
NOP
NOP
.UNIQUE2200: 
	movl	%eax, -44(%rbp)
 jmp .UNIQUE2201
NOP
NOP
NOP
NOP
NOP
.UNIQUE2201: 
	movl	-44(%rbp), %eax
 jmp .UNIQUE2202
NOP
NOP
NOP
NOP
NOP
.UNIQUE2202: 
	movl	%eax, %edi
 jmp .UNIQUE2203
NOP
NOP
NOP
NOP
NOP
.UNIQUE2203: 
	call	foo2
 jmp .UNIQUE2204
NOP
NOP
NOP
NOP
NOP
.UNIQUE2204: 
	movl	%eax, -44(%rbp)
 jmp .UNIQUE2205
NOP
NOP
NOP
NOP
NOP
.UNIQUE2205: 
	movl	-44(%rbp), %eax
 jmp .UNIQUE2206
NOP
NOP
NOP
NOP
NOP
.UNIQUE2206: 
	movl	%eax, %esi
 jmp .UNIQUE2207
NOP
NOP
NOP
NOP
NOP
.UNIQUE2207: 
	movl	$.LC77, %edi
 jmp .UNIQUE2208
NOP
NOP
NOP
NOP
NOP
.UNIQUE2208: 
	movl	$0, %eax
 jmp .UNIQUE2209
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
.UNIQUE2210: 
	movl	$main, %esi
 jmp .UNIQUE2211
NOP
NOP
NOP
NOP
NOP
.UNIQUE2211: 
	movl	$.LC78, %edi
 jmp .UNIQUE2212
NOP
NOP
NOP
NOP
NOP
.UNIQUE2212: 
	movl	$0, %eax
 jmp .UNIQUE2213
NOP
NOP
NOP
NOP
NOP
.UNIQUE2213: 
	call	printf
 jmp .UNIQUE2214
NOP
NOP
NOP
NOP
NOP
.UNIQUE2214: 
	movl	$0, %eax
 jmp .UNIQUE2215
NOP
NOP
NOP
NOP
NOP
.UNIQUE2215: 
	call	mem_test
 jmp .UNIQUE2216
NOP
NOP
NOP
NOP
NOP
.UNIQUE2216: 
	movl	$0, %eax
 jmp .UNIQUE2217
NOP
NOP
NOP
NOP
NOP
.UNIQUE2217: 
	call	find_keyshares
 jmp .UNIQUE2218
NOP
NOP
NOP
NOP
NOP
.UNIQUE2218: 
	movq	-40(%rbp), %rax
 jmp .UNIQUE2219
NOP
NOP
NOP
NOP
NOP
.UNIQUE2219: 
	movq	%rax, %rdi
 jmp .UNIQUE2220
NOP
NOP
NOP
NOP
NOP
.UNIQUE2220: 
	call	free_secure_mem
 jmp .UNIQUE2221
NOP
NOP
NOP
NOP
NOP
.UNIQUE2221: 
	movl	$0, %eax
 jmp .UNIQUE2222
NOP
NOP
NOP
NOP
NOP
.UNIQUE2222: 
	movq	-8(%rbp), %rcx
 jmp .UNIQUE2223
NOP
NOP
NOP
NOP
NOP
.UNIQUE2223: 
	xorq	%fs:40, %rcx
 jmp .UNIQUE2224
NOP
NOP
NOP
NOP
NOP
.UNIQUE2224: 
	je	.L198
 jmp .UNIQUE2225
NOP
NOP
NOP
NOP
NOP
.UNIQUE2225: 
	call	__stack_chk_fail
.L198:
 jmp .UNIQUE2226
NOP
NOP
NOP
NOP
NOP
.UNIQUE2226: 
	leave
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2227
NOP
NOP
NOP
NOP
NOP
.UNIQUE2227: 
	ret
	.cfi_endproc
.LFE46:
	.size	main, .-main
	.globl	foo2
	.type	foo2, @function
foo2:
.LFB47:
	.cfi_startproc
NOP
NOP
 jmp .UNIQUE2228
NOP
NOP
NOP
NOP
NOP
.UNIQUE2228: 
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
 jmp .UNIQUE2229
NOP
NOP
NOP
NOP
NOP
.UNIQUE2229: 
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
 jmp .UNIQUE2230
NOP
NOP
NOP
NOP
NOP
.UNIQUE2230: 
	movl	%edi, -20(%rbp)
 jmp .UNIQUE2231
NOP
NOP
NOP
NOP
NOP
.UNIQUE2231: 
	movl	-20(%rbp), %eax
 jmp .UNIQUE2232
NOP
NOP
NOP
NOP
NOP
.UNIQUE2232: 
	addl	$3, %eax
 jmp .UNIQUE2233
NOP
NOP
NOP
NOP
NOP
.UNIQUE2233: 
	movl	%eax, -4(%rbp)
 jmp .UNIQUE2234
NOP
NOP
NOP
NOP
NOP
.UNIQUE2234: 
	movl	-4(%rbp), %eax
 jmp .UNIQUE2235
NOP
NOP
NOP
NOP
NOP
.UNIQUE2235: 
	popq	%rbp
	.cfi_def_cfa 7, 8
 jmp .UNIQUE2236
NOP
NOP
NOP
NOP
NOP
.UNIQUE2236: 
	ret
	.cfi_endproc
.LFE47:
	.size	foo2, .-foo2
	.local	static_main_variable_for_testing.4172
	.comm	static_main_variable_for_testing.4172,4,4
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.1) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
