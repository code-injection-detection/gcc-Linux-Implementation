	.file	"Helloworldadd.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"malloc failed in function %s, line %d\n"
	.section	.text.unlikely,"ax",@progbits
	.type	error_checking_malloc.part.0, @function
error_checking_malloc.part.0:
.LFB215:
	.cfi_startproc
	movq	%rdi, %rcx
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movl	%esi, %r8d
	movl	$.LC0, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk
	movl	$42, %edi
	call	exit
	.cfi_endproc
.LFE215:
	.size	error_checking_malloc.part.0, .-error_checking_malloc.part.0
	.section	.rodata.str1.8
	.align 8
.LC1:
	.string	"Managed secure malloc error in function %s, line %d\n"
	.section	.text.unlikely
	.type	error_checking_managed_secure_malloc.part.3, @function
error_checking_managed_secure_malloc.part.3:
.LFB218:
	.cfi_startproc
	movq	%rdi, %rcx
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movl	%esi, %r8d
	movl	$.LC1, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk
	movl	$52, %edi
	call	exit
	.cfi_endproc
.LFE218:
	.size	error_checking_managed_secure_malloc.part.3, .-error_checking_managed_secure_malloc.part.3
	.text
	.p2align 4,,15
	.type	set_secure_stack_data.constprop.5, @function
set_secure_stack_data.constprop.5:
.LFB245:
	.cfi_startproc
	leaq	0(,%rdx,8), %rcx
	movabsq	$6148914691236517206, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rsi,%rdx,8), %rsi
	cmpq	%rax, %rcx
	je	.L25
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L8
	movzbl	(%rdi), %edx
	cmpq	$2, %rax
	movb	%dl, (%rsi,%rax)
	je	.L15
	movzbl	1(%rdi), %edx
	movb	%dl, 1(%rsi,%rax)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L16
	movzbl	2(%rdi), %edx
	movb	%dl, 2(%rsi,%rax)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L17
	movzbl	3(%rdi), %edx
	movb	%dl, 3(%rsi,%rax)
	leaq	4(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L18
	movzbl	4(%rdi), %edx
	movb	%dl, 4(%rsi,%rax)
	leaq	5(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L19
	movzbl	5(%rdi), %edx
	movb	%dl, 5(%rsi,%rax)
	leaq	6(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L20
	movzbl	6(%rdi), %edx
	movb	%dl, 6(%rsi,%rax)
	leaq	7(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L21
	movzbl	7(%rdi), %edx
	cmpq	$-5, %rax
	movb	%dl, 7(%rsi,%rax)
	jge	.L26
	rep ret
	.p2align 4,,10
	.p2align 3
.L25:
	xorl	%eax, %eax
.L11:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L28:
	movzbl	(%rdi,%rax), %ecx
	cmpq	$7, %rax
	movb	%cl, (%rsi,%rdx)
	je	.L22
	movzbl	1(%rdi,%rax), %ecx
	movb	%cl, 1(%rsi,%rdx)
	leaq	2(%rax), %rcx
	cmpq	$7, %rcx
	jg	.L23
	movzbl	2(%rdi,%rax), %ecx
	addq	$3, %rax
	movb	%cl, 2(%rsi,%rdx)
.L13:
	addq	$3, %rdx
	cmpq	$7, %rax
	movl	$1, %ecx
	jg	.L27
.L7:
	testl	%ecx, %ecx
	je	.L28
	addq	$5, %rdx
	xorl	%ecx, %ecx
	cmpq	$7, %rax
	jle	.L7
.L27:
	rep ret
	.p2align 4,,10
	.p2align 3
.L22:
	movl	$8, %eax
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L23:
	movq	%rcx, %rax
	jmp	.L13
.L8:
	addq	$8, %rsi
	xorl	%eax, %eax
	jmp	.L11
.L15:
	movl	$1, %eax
	.p2align 4,,10
	.p2align 3
.L9:
	addq	$8, %rsi
	cmpq	$8, %rax
	jne	.L11
	rep ret
	.p2align 4,,10
	.p2align 3
.L17:
	movl	$3, %eax
	jmp	.L9
.L18:
	movl	$4, %eax
	jmp	.L9
.L16:
	movl	$2, %eax
	jmp	.L9
.L20:
	movl	$6, %eax
	jmp	.L9
.L21:
	movl	$7, %eax
	jmp	.L9
.L19:
	movl	$5, %eax
	jmp	.L9
.L26:
	movl	$8, %eax
	jmp	.L9
	.cfi_endproc
.LFE245:
	.size	set_secure_stack_data.constprop.5, .-set_secure_stack_data.constprop.5
	.p2align 4,,15
	.type	set_secure_stack_data.constprop.6, @function
set_secure_stack_data.constprop.6:
.LFB244:
	.cfi_startproc
	leaq	0(,%rdx,4), %rcx
	movabsq	$6148914691236517206, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rsi,%rdx,8), %rsi
	cmpq	%rax, %rcx
	je	.L44
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rax, %rcx
	cmpq	$2, %rcx
	jg	.L32
	movzbl	(%rdi), %eax
	cmpq	$2, %rcx
	movb	%al, (%rsi,%rcx)
	je	.L39
	movzbl	1(%rdi), %eax
	movb	%al, 1(%rsi,%rcx)
	leaq	2(%rcx), %rax
	cmpq	$2, %rax
	jg	.L40
	movzbl	2(%rdi), %eax
	movb	%al, 2(%rsi,%rcx)
	leaq	3(%rcx), %rax
	cmpq	$2, %rax
	jg	.L41
	movzbl	3(%rdi), %eax
	cmpq	$-1, %rcx
	movb	%al, 3(%rsi,%rcx)
	movl	$4, %eax
	jge	.L33
	rep ret
.L41:
	movl	$3, %eax
.L33:
	addq	$8, %rsi
	cmpq	$4, %rax
	je	.L45
.L35:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L47:
	movzbl	(%rdi,%rax), %ecx
	cmpq	$3, %rax
	movb	%cl, (%rsi,%rdx)
	je	.L42
	movzbl	1(%rdi,%rax), %ecx
	movb	%cl, 1(%rsi,%rdx)
	leaq	2(%rax), %rcx
	cmpq	$3, %rcx
	jg	.L43
	movzbl	2(%rdi,%rax), %ecx
	addq	$3, %rax
	movb	%cl, 2(%rsi,%rdx)
.L37:
	addq	$3, %rdx
	cmpq	$3, %rax
	movl	$1, %ecx
	jg	.L46
.L31:
	testl	%ecx, %ecx
	je	.L47
	addq	$5, %rdx
	xorl	%ecx, %ecx
	cmpq	$3, %rax
	jle	.L31
.L46:
	rep ret
	.p2align 4,,10
	.p2align 3
.L42:
	movl	$4, %eax
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L43:
	movq	%rcx, %rax
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L44:
	xorl	%eax, %eax
	jmp	.L35
.L32:
	addq	$8, %rsi
	xorl	%eax, %eax
	jmp	.L35
.L39:
	movl	$1, %eax
	jmp	.L33
.L40:
	movl	$2, %eax
	jmp	.L33
.L45:
	.p2align 4,,1
	ret
	.cfi_endproc
.LFE244:
	.size	set_secure_stack_data.constprop.6, .-set_secure_stack_data.constprop.6
	.p2align 4,,15
	.type	get_secure_stack_data.constprop.10, @function
get_secure_stack_data.constprop.10:
.LFB240:
	.cfi_startproc
	cmpl	$2, %edx
	je	.L60
	testl	%edx, %edx
	movl	$4, %eax
	jne	.L49
.L50:
	xorl	%eax, %eax
.L55:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L59
	.p2align 4,,10
	.p2align 3
.L70:
	movzbl	(%rsi,%rdx), %ecx
	cmpq	$3, %rax
	movb	%cl, (%rdi,%rax)
	je	.L64
	movzbl	1(%rsi,%rdx), %ecx
	movb	%cl, 1(%rdi,%rax)
	leaq	2(%rax), %rcx
	cmpq	$3, %rcx
	jg	.L65
	movzbl	2(%rsi,%rdx), %ecx
	movb	%cl, 2(%rdi,%rax)
	addq	$3, %rax
.L57:
	addq	$3, %rdx
	cmpq	$3, %rax
	movl	$1, %ecx
	jg	.L69
.L59:
	testl	%ecx, %ecx
	je	.L70
	addq	$5, %rdx
	xorl	%ecx, %ecx
	cmpq	$3, %rax
	jle	.L59
.L69:
	rep ret
	.p2align 4,,10
	.p2align 3
.L60:
	movl	$1, %eax
.L49:
	imulq	%rax, %rcx
	movabsq	$6148914691236517206, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rsi,%rdx,8), %rsi
	cmpq	%rax, %rcx
	je	.L50
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L52
	movzbl	(%rsi,%rax), %edx
	cmpq	$2, %rax
	movb	%dl, (%rdi)
	je	.L61
	movzbl	1(%rsi,%rax), %edx
	movb	%dl, 1(%rdi)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L62
	movzbl	2(%rsi,%rax), %edx
	movb	%dl, 2(%rdi)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L63
	movzbl	3(%rsi,%rax), %edx
	cmpq	$-1, %rax
	movb	%dl, 3(%rdi)
	jge	.L71
	rep ret
	.p2align 4,,10
	.p2align 3
.L64:
	movl	$4, %eax
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L65:
	movq	%rcx, %rax
	jmp	.L57
.L52:
	addq	$8, %rsi
	xorl	%eax, %eax
	jmp	.L55
.L61:
	movl	$1, %eax
.L53:
	addq	$8, %rsi
	cmpq	$4, %rax
	jne	.L55
	rep ret
	.p2align 4,,10
	.p2align 3
.L62:
	movl	$2, %eax
	jmp	.L53
.L63:
	movl	$3, %eax
	jmp	.L53
.L71:
	movl	$4, %eax
	jmp	.L53
	.cfi_endproc
.LFE240:
	.size	get_secure_stack_data.constprop.10, .-get_secure_stack_data.constprop.10
	.p2align 4,,15
	.type	get_secure_stack_data.constprop.11, @function
get_secure_stack_data.constprop.11:
.LFB239:
	.cfi_startproc
	cmpl	$2, %edx
	je	.L84
	testl	%edx, %edx
	movl	$8, %eax
	jne	.L73
.L74:
	xorl	%eax, %eax
.L79:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L83
	.p2align 4,,10
	.p2align 3
.L98:
	movzbl	(%rsi,%rdx), %ecx
	cmpq	$7, %rax
	movb	%cl, (%rdi,%rax)
	je	.L92
	movzbl	1(%rsi,%rdx), %ecx
	movb	%cl, 1(%rdi,%rax)
	leaq	2(%rax), %rcx
	cmpq	$7, %rcx
	jg	.L93
	movzbl	2(%rsi,%rdx), %ecx
	movb	%cl, 2(%rdi,%rax)
	addq	$3, %rax
.L81:
	addq	$3, %rdx
	cmpq	$7, %rax
	movl	$1, %ecx
	jg	.L97
.L83:
	testl	%ecx, %ecx
	je	.L98
	addq	$5, %rdx
	xorl	%ecx, %ecx
	cmpq	$7, %rax
	jle	.L83
.L97:
	rep ret
	.p2align 4,,10
	.p2align 3
.L84:
	movl	$1, %eax
.L73:
	imulq	%rax, %rcx
	movabsq	$6148914691236517206, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rsi,%rdx,8), %rsi
	cmpq	%rax, %rcx
	je	.L74
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L76
	movzbl	(%rsi,%rax), %edx
	cmpq	$2, %rax
	movb	%dl, (%rdi)
	je	.L85
	movzbl	1(%rsi,%rax), %edx
	movb	%dl, 1(%rdi)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L86
	movzbl	2(%rsi,%rax), %edx
	movb	%dl, 2(%rdi)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L87
	movzbl	3(%rsi,%rax), %edx
	movb	%dl, 3(%rdi)
	leaq	4(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L88
	movzbl	4(%rsi,%rax), %edx
	movb	%dl, 4(%rdi)
	leaq	5(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L89
	movzbl	5(%rsi,%rax), %edx
	movb	%dl, 5(%rdi)
	leaq	6(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L90
	movzbl	6(%rsi,%rax), %edx
	movb	%dl, 6(%rdi)
	leaq	7(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L91
	movzbl	7(%rsi,%rax), %edx
	cmpq	$-5, %rax
	movb	%dl, 7(%rdi)
	jge	.L99
	rep ret
	.p2align 4,,10
	.p2align 3
.L92:
	movl	$8, %eax
	jmp	.L81
	.p2align 4,,10
	.p2align 3
.L93:
	movq	%rcx, %rax
	jmp	.L81
.L76:
	addq	$8, %rsi
	xorl	%eax, %eax
	jmp	.L79
.L85:
	movl	$1, %eax
	.p2align 4,,10
	.p2align 3
.L77:
	addq	$8, %rsi
	cmpq	$8, %rax
	jne	.L79
	rep ret
	.p2align 4,,10
	.p2align 3
.L86:
	movl	$2, %eax
	jmp	.L77
.L87:
	movl	$3, %eax
	jmp	.L77
.L88:
	movl	$4, %eax
	jmp	.L77
.L89:
	movl	$5, %eax
	jmp	.L77
.L90:
	movl	$6, %eax
	jmp	.L77
.L91:
	movl	$7, %eax
	jmp	.L77
.L99:
	movl	$8, %eax
	jmp	.L77
	.cfi_endproc
.LFE239:
	.size	get_secure_stack_data.constprop.11, .-get_secure_stack_data.constprop.11
	.p2align 4,,15
	.type	set_secure_data.constprop.18, @function
set_secure_data.constprop.18:
.LFB232:
	.cfi_startproc
	salq	$3, %rdx
	leaq	3(%rdx), %rax
	testq	%rdx, %rdx
	cmovns	%rdx, %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	sarq	$2, %rax
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rsi
	xorl	%eax, %eax
	jmp	.L105
	.p2align 4,,10
	.p2align 3
.L110:
	movzbl	(%rdi,%rax), %ecx
	cmpq	$7, %rax
	movb	%cl, (%rsi,%rdx)
	je	.L106
	movzbl	1(%rdi,%rax), %ecx
	movb	%cl, 1(%rsi,%rdx)
	leaq	2(%rax), %rcx
	cmpq	$7, %rcx
	jg	.L108
	movzbl	2(%rdi,%rax), %ecx
	movb	%cl, 2(%rsi,%rdx)
	leaq	3(%rax), %rcx
	cmpq	$7, %rcx
	jg	.L108
	movzbl	3(%rdi,%rax), %ecx
	addq	$4, %rax
	movb	%cl, 3(%rsi,%rdx)
.L102:
	addq	$4, %rdx
	cmpq	$7, %rax
	movl	$1, %ecx
	jg	.L109
.L105:
	testl	%ecx, %ecx
	je	.L110
	addq	$5, %rdx
	xorl	%ecx, %ecx
	cmpq	$7, %rax
	jle	.L105
.L109:
	rep ret
	.p2align 4,,10
	.p2align 3
.L108:
	movq	%rcx, %rax
	jmp	.L102
	.p2align 4,,10
	.p2align 3
.L106:
	movl	$8, %eax
	jmp	.L102
	.cfi_endproc
.LFE232:
	.size	set_secure_data.constprop.18, .-set_secure_data.constprop.18
	.p2align 4,,15
	.type	set_secure_data.constprop.19, @function
set_secure_data.constprop.19:
.LFB231:
	.cfi_startproc
	leaq	(%rdx,%rdx,8), %rax
	addq	%rax, %rsi
	movzbl	(%rdi), %eax
	movb	%al, (%rsi)
	movzbl	1(%rdi), %eax
	movb	%al, 1(%rsi)
	movzbl	2(%rdi), %eax
	movb	%al, 2(%rsi)
	movzbl	3(%rdi), %eax
	movb	%al, 3(%rsi)
	ret
	.cfi_endproc
.LFE231:
	.size	set_secure_data.constprop.19, .-set_secure_data.constprop.19
	.p2align 4,,15
	.type	get_secure_data.constprop.22, @function
get_secure_data.constprop.22:
.LFB228:
	.cfi_startproc
	cmpl	$2, %edx
	je	.L124
	testl	%edx, %edx
	movl	$8, %eax
	jne	.L113
.L114:
	xorl	%eax, %eax
.L119:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L123
	.p2align 4,,10
	.p2align 3
.L139:
	movzbl	(%rsi,%rdx), %ecx
	cmpq	$7, %rax
	movb	%cl, (%rdi,%rax)
	je	.L132
	movzbl	1(%rsi,%rdx), %ecx
	movb	%cl, 1(%rdi,%rax)
	leaq	2(%rax), %rcx
	cmpq	$7, %rcx
	jg	.L134
	movzbl	2(%rsi,%rdx), %ecx
	movb	%cl, 2(%rdi,%rax)
	leaq	3(%rax), %rcx
	cmpq	$7, %rcx
	jg	.L134
	movzbl	3(%rsi,%rdx), %ecx
	movb	%cl, 3(%rdi,%rax)
	addq	$4, %rax
.L121:
	addq	$4, %rdx
	cmpq	$7, %rax
	movl	$1, %ecx
	jg	.L138
.L123:
	testl	%ecx, %ecx
	je	.L139
	addq	$5, %rdx
	xorl	%ecx, %ecx
	cmpq	$7, %rax
	jle	.L123
.L138:
	rep ret
	.p2align 4,,10
	.p2align 3
.L124:
	movl	$1, %eax
.L113:
	imulq	%rax, %rcx
	leaq	3(%rcx), %rax
	testq	%rcx, %rcx
	cmovns	%rcx, %rax
	sarq	$2, %rax
	leaq	0(,%rax,4), %rdx
	cmpq	%rdx, %rcx
	je	.L140
	leaq	(%rax,%rax,8), %rdx
	negq	%rax
	leaq	(%rcx,%rax,4), %rax
	addq	%rdx, %rsi
	cmpq	$3, %rax
	jg	.L116
	movzbl	(%rsi,%rax), %edx
	cmpq	$3, %rax
	movb	%dl, (%rdi)
	je	.L125
	movzbl	1(%rsi,%rax), %edx
	movb	%dl, 1(%rdi)
	leaq	2(%rax), %rdx
	cmpq	$3, %rdx
	jg	.L126
	movzbl	2(%rsi,%rax), %edx
	movb	%dl, 2(%rdi)
	leaq	3(%rax), %rdx
	cmpq	$3, %rdx
	jg	.L127
	movzbl	3(%rsi,%rax), %edx
	movb	%dl, 3(%rdi)
	leaq	4(%rax), %rdx
	cmpq	$3, %rdx
	jg	.L128
	movzbl	4(%rsi,%rax), %edx
	movb	%dl, 4(%rdi)
	leaq	5(%rax), %rdx
	cmpq	$3, %rdx
	jg	.L129
	movzbl	5(%rsi,%rax), %edx
	movb	%dl, 5(%rdi)
	leaq	6(%rax), %rdx
	cmpq	$3, %rdx
	jg	.L130
	movzbl	6(%rsi,%rax), %edx
	movb	%dl, 6(%rdi)
	leaq	7(%rax), %rdx
	cmpq	$3, %rdx
	jg	.L131
	movzbl	7(%rsi,%rax), %edx
	cmpq	$-4, %rax
	movb	%dl, 7(%rdi)
	jge	.L141
	rep ret
	.p2align 4,,10
	.p2align 3
.L134:
	movq	%rcx, %rax
	jmp	.L121
	.p2align 4,,10
	.p2align 3
.L132:
	movl	$8, %eax
	jmp	.L121
	.p2align 4,,10
	.p2align 3
.L140:
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rsi
	jmp	.L114
.L116:
	addq	$9, %rsi
	xorl	%eax, %eax
	jmp	.L119
.L126:
	movl	$2, %eax
	.p2align 4,,10
	.p2align 3
.L117:
	addq	$9, %rsi
	cmpq	$8, %rax
	jne	.L119
	rep ret
	.p2align 4,,10
	.p2align 3
.L127:
	movl	$3, %eax
	jmp	.L117
.L125:
	movl	$1, %eax
	jmp	.L117
.L130:
	movl	$6, %eax
	jmp	.L117
.L128:
	movl	$4, %eax
	jmp	.L117
.L129:
	movl	$5, %eax
	jmp	.L117
.L131:
	movl	$7, %eax
	jmp	.L117
.L141:
	movl	$8, %eax
	jmp	.L117
	.cfi_endproc
.LFE228:
	.size	get_secure_data.constprop.22, .-get_secure_data.constprop.22
	.p2align 4,,15
	.type	get_secure_data.constprop.23, @function
get_secure_data.constprop.23:
.LFB227:
	.cfi_startproc
	cmpl	$2, %edx
	je	.L153
	testl	%edx, %edx
	movl	$4, %eax
	jne	.L143
.L151:
	movzbl	(%rsi), %eax
	movl	$1, %ecx
	movb	%al, (%rdi)
	xorl	%eax, %eax
.L152:
	movzbl	1(%rsi), %edx
	movb	%dl, (%rdi,%rcx)
	leaq	2(%rax), %rdx
	cmpq	$3, %rdx
	jg	.L142
	movzbl	2(%rsi), %edx
	testq	%rax, %rax
	movb	%dl, 2(%rdi,%rax)
	jne	.L142
	movzbl	3(%rsi), %eax
	movb	%al, 3(%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L153:
	movl	$1, %eax
.L143:
	imulq	%rax, %rcx
	leaq	3(%rcx), %rax
	testq	%rcx, %rcx
	cmovns	%rcx, %rax
	sarq	$2, %rax
	leaq	0(,%rax,4), %rdx
	cmpq	%rdx, %rcx
	je	.L160
	leaq	(%rax,%rax,8), %rdx
	negq	%rax
	leaq	(%rcx,%rax,4), %rax
	addq	%rsi, %rdx
	cmpq	$3, %rax
	jg	.L146
	movzbl	(%rdx,%rax), %ecx
	cmpq	$3, %rax
	movb	%cl, (%rdi)
	je	.L154
	movzbl	1(%rdx,%rax), %ecx
	movb	%cl, 1(%rdi)
	leaq	2(%rax), %rcx
	cmpq	$3, %rcx
	jg	.L155
	movzbl	2(%rdx,%rax), %ecx
	movb	%cl, 2(%rdi)
	leaq	3(%rax), %rcx
	cmpq	$3, %rcx
	jg	.L156
	movzbl	3(%rdx,%rax), %ecx
	testq	%rax, %rax
	movb	%cl, 3(%rdi)
	jns	.L161
.L142:
	rep ret
	.p2align 4,,10
	.p2align 3
.L160:
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rsi
	jmp	.L151
.L161:
	movl	$4, %eax
.L147:
	cmpq	$4, %rax
	leaq	9(%rdx), %rsi
	je	.L162
	movzbl	9(%rdx), %edx
	leaq	1(%rax), %rcx
	cmpq	$4, %rcx
	movb	%dl, (%rdi,%rax)
	jne	.L152
	rep ret
.L146:
	leaq	9(%rdx), %rsi
	jmp	.L151
.L155:
	movl	$2, %eax
	.p2align 4,,2
	jmp	.L147
.L156:
	movl	$3, %eax
	jmp	.L147
.L154:
	movl	$1, %eax
	jmp	.L147
.L162:
	.p2align 4,,1
	ret
	.cfi_endproc
.LFE227:
	.size	get_secure_data.constprop.23, .-get_secure_data.constprop.23
	.p2align 4,,15
	.type	insert_data_into_mem.constprop.26, @function
insert_data_into_mem.constprop.26:
.LFB224:
	.cfi_startproc
	movzbl	(%rdi), %eax
	movb	%al, (%rsi)
	movzbl	1(%rdi), %eax
	movb	%al, 1(%rsi)
	movzbl	2(%rdi), %eax
	movb	%al, 2(%rsi)
	movzbl	3(%rdi), %eax
	movb	%al, 3(%rsi)
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE224:
	.size	insert_data_into_mem.constprop.26, .-insert_data_into_mem.constprop.26
	.p2align 4,,15
	.globl	error_checking_malloc
	.type	error_checking_malloc, @function
error_checking_malloc:
.LFB78:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L166
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%edx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	malloc
	testq	%rax, %rax
	je	.L170
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L166:
	xorl	%eax, %eax
	ret
.L170:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	movl	%ebp, %esi
	movq	%rbx, %rdi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE78:
	.size	error_checking_malloc, .-error_checking_malloc
	.p2align 4,,15
	.globl	copy_nodes
	.type	copy_nodes, @function
copy_nodes:
.LFB79:
	.cfi_startproc
	movq	8(%rsp), %rax
	movq	%rax, (%rdi)
	movq	16(%rsp), %rax
	movq	%rax, 8(%rdi)
	movq	24(%rsp), %rax
	movq	%rax, 16(%rdi)
	movq	32(%rsp), %rax
	movq	%rax, 24(%rdi)
	ret
	.cfi_endproc
.LFE79:
	.size	copy_nodes, .-copy_nodes
	.p2align 4,,15
	.globl	copy_nodes_ptr
	.type	copy_nodes_ptr, @function
copy_nodes_ptr:
.LFB80:
	.cfi_startproc
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	movq	8(%rsi), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rsi), %rax
	movq	%rax, 24(%rdi)
	ret
	.cfi_endproc
.LFE80:
	.size	copy_nodes_ptr, .-copy_nodes_ptr
	.p2align 4,,15
	.globl	alloc_list
	.type	alloc_list, @function
alloc_list:
.LFB81:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	testq	%rdi, %rdi
	jle	.L179
	movl	$1, %ebx
	xorl	%ebp, %ebp
	xorl	%r13d, %r13d
	jmp	.L178
	.p2align 4,,10
	.p2align 3
.L184:
	movq	%rax, %rbp
.L178:
	movl	$32, %edi
	call	malloc
	testq	%rax, %rax
	je	.L183
	cmpq	$1, %rbx
	je	.L180
	movq	%rax, 16(%rbp)
	movq	%rbp, 24(%rax)
.L176:
	addq	$1, %rbx
	cmpq	%rbx, %r12
	jge	.L184
	movq	$0, 16(%rax)
	movq	$0, 24(%r13)
.L181:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%r13, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L179:
	.cfi_restore_state
	xorl	%r13d, %r13d
	jmp	.L181
.L183:
	movl	$67, %esi
	movl	$__func__.5770, %edi
	call	error_checking_malloc.part.0
.L180:
	movq	%rax, %r13
	jmp	.L176
	.cfi_endproc
.LFE81:
	.size	alloc_list, .-alloc_list
	.p2align 4,,15
	.globl	add_node_to_list
	.type	add_node_to_list, @function
add_node_to_list:
.LFB82:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movl	$32, %edi
	call	malloc
	testq	%rax, %rax
	je	.L190
	movq	16(%rsp), %rdx
	testq	%rbx, %rbx
	movq	%rdx, (%rax)
	movq	24(%rsp), %rdx
	movq	%rdx, 8(%rax)
	movq	32(%rsp), %rdx
	movq	%rdx, 16(%rax)
	movq	40(%rsp), %rdx
	movq	%rdx, 24(%rax)
	je	.L191
	movq	%rbx, 16(%rax)
	movq	%rax, 24(%rbx)
	movq	$0, 24(%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L191:
	.cfi_restore_state
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L190:
	.cfi_restore_state
	movl	$94, %esi
	movl	$__func__.5779, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE82:
	.size	add_node_to_list, .-add_node_to_list
	.p2align 4,,15
	.globl	delete_node_from_list
	.type	delete_node_from_list, @function
delete_node_from_list:
.LFB83:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	16(%rsi), %rbx
	movq	24(%rsi), %rdx
	testq	%rbx, %rbx
	sete	%cl
	testq	%rdx, %rdx
	sete	%al
	je	.L216
.L193:
	testq	%rdx, %rdx
	jne	.L217
.L195:
	testq	%rbx, %rbx
	jne	.L218
.L196:
	movq	%rdx, 24(%rbx)
	movq	%rsi, %rdi
	movq	%rbx, 16(%rdx)
	call	free
	movq	%rbp, %rax
.L194:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L218:
	.cfi_restore_state
	testb	%al, %al
	je	.L196
	movq	$0, 24(%rbx)
	movq	%rsi, %rdi
	call	free
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L217:
	.cfi_restore_state
	testb	%cl, %cl
	je	.L195
	movq	$0, 16(%rdx)
	movq	%rsi, %rdi
	call	free
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L216:
	.cfi_restore_state
	testb	%cl, %cl
	je	.L193
	movq	%rsi, %rdi
	call	free
	xorl	%eax, %eax
	jmp	.L194
	.cfi_endproc
.LFE83:
	.size	delete_node_from_list, .-delete_node_from_list
	.p2align 4,,15
	.globl	free_list
	.type	free_list, @function
free_list:
.LFB84:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L243
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	16(%rdi), %rbx
	jmp	.L225
	.p2align 4,,10
	.p2align 3
.L224:
	movq	%rax, 24(%rbx)
	movq	%rbx, 16(%rax)
.L244:
	call	free
.L222:
	testb	%bpl, %bpl
	jne	.L219
.L246:
	movq	%rbx, %rdi
	movq	16(%rbx), %rbx
.L225:
	movq	24(%rdi), %rax
	testq	%rbx, %rbx
	sete	%bpl
	testq	%rax, %rax
	sete	%dl
	testb	%bpl, %bpl
	jne	.L245
.L223:
	testq	%rbx, %rbx
	je	.L224
	testb	%dl, %dl
	je	.L224
	movq	$0, 24(%rbx)
	call	free
	testb	%bpl, %bpl
	je	.L246
.L219:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
.L243:
	rep ret
	.p2align 4,,10
	.p2align 3
.L245:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	testb	%dl, %dl
	jne	.L244
	testq	%rax, %rax
	je	.L223
	movq	$0, 16(%rax)
	call	free
	jmp	.L222
	.cfi_endproc
.LFE84:
	.size	free_list, .-free_list
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"List is empty."
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"Node %ld: Length in chunks=%ld, pointer to mem=%ld\n"
	.text
	.p2align 4,,15
	.globl	print_list
	.type	print_list, @function
print_list:
.LFB85:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xorl	%ebp, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	testq	%rdi, %rdi
	je	.L253
	.p2align 4,,10
	.p2align 3
.L251:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L251
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L253:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movl	$.LC2, %edi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	puts
	.cfi_endproc
.LFE85:
	.size	print_list, .-print_list
	.section	.rodata.str1.1
.LC4:
	.string	"Free chunks list:"
.LC5:
	.string	"Allocated chunks list:"
	.text
	.p2align 4,,15
	.globl	print_lists
	.type	print_lists, @function
print_lists:
.LFB86:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$.LC4, %edi
	xorl	%ebp, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L267
	.p2align 4,,10
	.p2align 3
.L263:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L263
.L256:
	movl	$.LC5, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L268
	.p2align 4,,10
	.p2align 3
.L264:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L264
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L267:
	.cfi_restore_state
	movl	$.LC2, %edi
	call	puts
	jmp	.L256
.L268:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movl	$.LC2, %edi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	puts
	.cfi_endproc
.LFE86:
	.size	print_lists, .-print_lists
	.p2align 4,,15
	.globl	find_number_of_useful_chunks
	.type	find_number_of_useful_chunks, @function
find_number_of_useful_chunks:
.LFB87:
	.cfi_startproc
	addq	$5, %rdi
	movabsq	$2049638230412172402, %rdx
	movq	%rdi, %rax
	sarq	$63, %rdi
	imulq	%rdx
	subq	%rdi, %rdx
	movq	%rdx, %rax
	ret
	.cfi_endproc
.LFE87:
	.size	find_number_of_useful_chunks, .-find_number_of_useful_chunks
	.p2align 4,,15
	.globl	init_memory_manager
	.type	init_memory_manager, @function
init_memory_manager:
.LFB88:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$32, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movabsq	$2049638230412172402, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	total_bytes_allocated(%rip), %rax
	movq	entire_memory_chunk(%rip), %rbp
	movq	$0, free_chunks_list(%rip)
	leaq	5(%rax), %rcx
	movq	%rcx, %rax
	sarq	$63, %rcx
	imulq	%rbx
	movq	%rdx, %rbx
	subq	%rcx, %rbx
	call	malloc
	testq	%rax, %rax
	je	.L273
	movq	%rbx, (%rax)
	movq	%rbp, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	%rax, free_chunks_list(%rip)
	movq	$1, free_chunks_num(%rip)
	movq	$0, allocated_chunks_list(%rip)
	movq	$0, allocated_chunks_num(%rip)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L273:
	.cfi_restore_state
	movl	$94, %esi
	movl	$__func__.5779, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE88:
	.size	init_memory_manager, .-init_memory_manager
	.p2align 4,,15
	.globl	free_memory_manager_structures
	.type	free_memory_manager_structures, @function
free_memory_manager_structures:
.LFB89:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	free_chunks_list(%rip), %rdi
	movq	$0, free_chunks_num(%rip)
	movq	$0, allocated_chunks_num(%rip)
	testq	%rdi, %rdi
	je	.L275
	movq	16(%rdi), %rbx
	jmp	.L280
	.p2align 4,,10
	.p2align 3
.L279:
	movq	%rax, 24(%rbx)
	movq	%rbx, 16(%rax)
.L318:
	call	free
.L277:
	testb	%bpl, %bpl
	jne	.L275
.L321:
	movq	%rbx, %rdi
	movq	16(%rbx), %rbx
.L280:
	movq	24(%rdi), %rax
	testq	%rbx, %rbx
	sete	%bpl
	testq	%rax, %rax
	sete	%dl
	testb	%bpl, %bpl
	jne	.L320
.L278:
	testq	%rbx, %rbx
	je	.L279
	testb	%dl, %dl
	je	.L279
	movq	$0, 24(%rbx)
	call	free
	testb	%bpl, %bpl
	je	.L321
.L275:
	movq	allocated_chunks_list(%rip), %rdi
	testq	%rdi, %rdi
	je	.L274
	movq	16(%rdi), %rbx
	jmp	.L286
	.p2align 4,,10
	.p2align 3
.L285:
	movq	%rax, 24(%rbx)
	movq	%rbx, 16(%rax)
.L319:
	call	free
.L283:
	testb	%bpl, %bpl
	jne	.L274
.L323:
	movq	%rbx, %rdi
	movq	16(%rbx), %rbx
.L286:
	movq	24(%rdi), %rax
	testq	%rbx, %rbx
	sete	%bpl
	testq	%rax, %rax
	sete	%dl
	testb	%bpl, %bpl
	jne	.L322
.L284:
	testq	%rbx, %rbx
	je	.L285
	testb	%dl, %dl
	je	.L285
	movq	$0, 24(%rbx)
	call	free
	testb	%bpl, %bpl
	je	.L323
.L274:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L320:
	.cfi_restore_state
	testb	%dl, %dl
	jne	.L318
	testq	%rax, %rax
	je	.L278
	movq	$0, 16(%rax)
	call	free
	jmp	.L277
	.p2align 4,,10
	.p2align 3
.L322:
	testb	%dl, %dl
	jne	.L319
	testq	%rax, %rax
	.p2align 4,,6
	je	.L284
	movq	$0, 16(%rax)
	call	free
	jmp	.L283
	.cfi_endproc
.LFE89:
	.size	free_memory_manager_structures, .-free_memory_manager_structures
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"Whoops. We need to allocate a bit more space."
	.text
	.p2align 4,,15
	.globl	allocate_mem
	.type	allocate_mem, @function
allocate_mem:
.LFB90:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$.LC6, %edi
	call	puts
	movl	$40486, %edi
	call	malloc
	testq	%rax, %rax
	je	.L327
	movq	$40486, total_bytes_allocated(%rip)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L327:
	.cfi_restore_state
	movl	$293, %esi
	movl	$__func__.5823, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE90:
	.size	allocate_mem, .-allocate_mem
	.p2align 4,,15
	.globl	secure_malloc
	.type	secure_malloc, @function
secure_malloc:
.LFB91:
	.cfi_startproc
	movq	last_unused_memory(%rip), %rsi
	movq	entire_memory_chunk(%rip), %rdx
	subq	%rsi, %rdx
	addq	total_bytes_allocated(%rip), %rdx
	leaq	5(%rdx), %rcx
	movabsq	$2049638230412172402, %rdx
	movq	%rcx, %rax
	sarq	$63, %rcx
	imulq	%rdx
	subq	%rcx, %rdx
	salq	$2, %rdx
	cmpq	%rdi, %rdx
	jl	.L334
	leaq	3(%rdi), %rdx
	testq	%rdi, %rdi
	cmovns	%rdi, %rdx
	sarq	$2, %rdx
	leaq	0(,%rdx,4), %rcx
	cmpq	%rdi, %rcx
	je	.L331
	addq	$1, %rdx
	addq	$4, %rcx
.L331:
	leaq	-5(%rdx,%rdx,4), %rax
	leaq	5(%rcx,%rax), %rax
	addq	%rsi, %rax
	movq	%rax, last_unused_memory(%rip)
	movq	%rsi, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L334:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	__errno_location
	movl	$12, (%rax)
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE91:
	.size	secure_malloc, .-secure_malloc
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"Attempted to read more keyshares that the ones stored\n"
	.align 8
.LC8:
	.string	"Did not read byte in get_next_keyshare()\n"
	.text
	.p2align 4,,15
	.globl	get_next_keyshare
	.type	get_next_keyshare, @function
get_next_keyshare:
.LFB92:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	keyshare_input_file(%rip), %rdi
	call	feof
	testl	%eax, %eax
	jne	.L339
	movq	keyshare_input_file(%rip), %rcx
	movl	$1, %edx
	movl	$1, %esi
	movq	%rsp, %rdi
	call	fread
	cmpq	$1, %rax
	jne	.L340
	movzbl	(%rsp), %eax
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L339:
	.cfi_restore_state
	movl	$.LC7, %edi
	call	perror
	movl	$44, %edi
	call	exit
.L340:
	movl	$.LC8, %edi
	call	perror
	movl	$47, %edi
	call	exit
	.cfi_endproc
.LFE92:
	.size	get_next_keyshare, .-get_next_keyshare
	.p2align 4,,15
	.globl	insert_keys_into_mem
	.type	insert_keys_into_mem, @function
insert_keys_into_mem:
.LFB93:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	xorl	%eax, %eax
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	xorl	%r12d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	xorl	%ebx, %ebx
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	.p2align 4,,10
	.p2align 3
.L342:
	cmpq	total_bytes_allocated(%rip), %rbx
	jge	.L351
.L348:
	testl	%eax, %eax
	jne	.L343
	movb	$0, 0(%rbp,%rbx)
	movb	$0, 1(%rbp,%rbx)
	movb	$0, 2(%rbp,%rbx)
	movb	$0, 3(%rbp,%rbx)
	addq	$4, %rbx
.L344:
	cmpq	$5, %r12
	movl	$1, %eax
	jne	.L342
	xorl	%eax, %eax
	xorl	%r12d, %r12d
	cmpq	total_bytes_allocated(%rip), %rbx
	jl	.L348
.L351:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L343:
	.cfi_restore_state
	movq	keyshare_input_file(%rip), %rdi
	leaq	0(%rbp,%rbx), %r13
	call	feof
	testl	%eax, %eax
	jne	.L352
	movq	keyshare_input_file(%rip), %rcx
	movl	$1, %edx
	movl	$1, %esi
	movq	%rsp, %rdi
	call	fread
	cmpq	$1, %rax
	jne	.L353
	movzbl	(%rsp), %eax
	addq	$1, %r12
	addq	$1, %rbx
	movb	%al, 0(%r13)
	jmp	.L344
.L352:
	movl	$.LC7, %edi
	call	perror
	movl	$44, %edi
	call	exit
.L353:
	movl	$.LC8, %edi
	call	perror
	movl	$47, %edi
	call	exit
	.cfi_endproc
.LFE93:
	.size	insert_keys_into_mem, .-insert_keys_into_mem
	.section	.rodata.str1.1
.LC9:
	.string	"Printing heap memory:"
.LC10:
	.string	"0x%02x "
	.text
	.p2align 4,,15
	.globl	print_mem
	.type	print_mem, @function
print_mem:
.LFB94:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	movl	$.LC9, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	xorl	%ebx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	puts
	cmpq	$0, total_bytes_allocated(%rip)
	jle	.L356
	.p2align 4,,10
	.p2align 3
.L358:
	movzbl	0(%rbp,%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC10, %esi
	movl	$1, %edi
	addq	$1, %rbx
	call	__printf_chk
	cmpq	%rbx, total_bytes_allocated(%rip)
	jg	.L358
.L356:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movl	$10, %edi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	putchar
	.cfi_endproc
.LFE94:
	.size	print_mem, .-print_mem
	.p2align 4,,15
	.globl	insert_data_into_mem
	.type	insert_data_into_mem, @function
insert_data_into_mem:
.LFB95:
	.cfi_startproc
	testq	%rdi, %rdi
	jle	.L366
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	jmp	.L365
	.p2align 4,,10
	.p2align 3
.L371:
	movzbl	(%rsi,%rcx), %r9d
	movb	%r9b, (%rdx,%r8)
	leaq	1(%rcx), %r9
	cmpq	%r9, %rdi
	jle	.L369
	movzbl	1(%rsi,%rcx), %r9d
	movb	%r9b, 1(%rdx,%r8)
	leaq	2(%rcx), %r9
	cmpq	%r9, %rdi
	jle	.L369
	movzbl	2(%rsi,%rcx), %r9d
	movb	%r9b, 2(%rdx,%r8)
	leaq	3(%rcx), %r9
	cmpq	%r9, %rdi
	jle	.L369
	movzbl	3(%rsi,%rcx), %r9d
	addq	$4, %rcx
	movb	%r9b, 3(%rdx,%r8)
.L363:
	addq	$1, %rax
	addq	$4, %r8
	cmpq	%rcx, %rdi
	movl	$1, %r9d
	jle	.L370
.L365:
	testl	%r9d, %r9d
	je	.L371
	addq	$5, %r8
	xorl	%r9d, %r9d
	cmpq	%rcx, %rdi
	jg	.L365
.L370:
	rep ret
	.p2align 4,,10
	.p2align 3
.L369:
	movq	%r9, %rcx
	jmp	.L363
.L366:
	xorl	%eax, %eax
	.p2align 4,,6
	ret
	.cfi_endproc
.LFE95:
	.size	insert_data_into_mem, .-insert_data_into_mem
	.p2align 4,,15
	.globl	get_secure_data
	.type	get_secure_data, @function
get_secure_data:
.LFB96:
	.cfi_startproc
	cmpl	$2, %ecx
	je	.L384
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.L394
.L374:
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L393:
	cmpq	%rax, %rsi
	jle	.L372
.L395:
	testl	%r8d, %r8d
	jne	.L379
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rdi,%rax)
	leaq	1(%rax), %r8
	cmpq	%r8, %rsi
	jle	.L390
	movzbl	1(%rdx,%rcx), %r8d
	movb	%r8b, 1(%rdi,%rax)
	leaq	2(%rax), %r8
	cmpq	%r8, %rsi
	jle	.L390
	movzbl	2(%rdx,%rcx), %r8d
	movb	%r8b, 2(%rdi,%rax)
	leaq	3(%rax), %r8
	cmpq	%r8, %rsi
	jle	.L390
	movzbl	3(%rdx,%rcx), %r8d
	movb	%r8b, 3(%rdi,%rax)
	addq	$4, %rax
.L380:
	addq	$4, %rcx
	cmpq	%rax, %rsi
	movl	$1, %r8d
	jg	.L395
.L372:
	rep ret
	.p2align 4,,10
	.p2align 3
.L379:
	addq	$5, %rcx
	xorl	%r8d, %r8d
	jmp	.L393
	.p2align 4,,10
	.p2align 3
.L390:
	movq	%r8, %rax
	jmp	.L380
	.p2align 4,,10
	.p2align 3
.L384:
	movl	$1, %eax
.L373:
	imulq	%rax, %r8
	leaq	3(%r8), %rax
	testq	%r8, %r8
	cmovns	%r8, %rax
	sarq	$2, %rax
	leaq	0(,%rax,4), %rcx
	cmpq	%rcx, %r8
	je	.L396
	leaq	(%rax,%rax,8), %rcx
	negq	%rax
	leaq	(%r8,%rax,4), %r8
	addq	%rcx, %rdx
	cmpq	$3, %r8
	jg	.L387
	testq	%rsi, %rsi
	jle	.L387
	movl	$4, %r9d
	movq	%r8, %rcx
	xorl	%eax, %eax
	subq	%r8, %r9
	jmp	.L377
	.p2align 4,,10
	.p2align 3
.L397:
	cmpq	%rsi, %rax
	je	.L376
.L377:
	movzbl	(%rdx,%rcx), %ecx
	movb	%cl, (%rdi,%rax)
	addq	$1, %rax
	cmpq	%r9, %rax
	leaq	(%rax,%r8), %rcx
	jne	.L397
.L376:
	addq	$9, %rdx
	jmp	.L374
	.p2align 4,,10
	.p2align 3
.L394:
	movq	%rsi, %rax
	jmp	.L373
	.p2align 4,,10
	.p2align 3
.L396:
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rdx
	xorl	%eax, %eax
	jmp	.L374
.L387:
	xorl	%eax, %eax
	jmp	.L376
	.cfi_endproc
.LFE96:
	.size	get_secure_data, .-get_secure_data
	.p2align 4,,15
	.globl	set_secure_data
	.type	set_secure_data, @function
set_secure_data:
.LFB97:
	.cfi_startproc
	cmpl	$2, %ecx
	je	.L410
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.L420
.L400:
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L419:
	cmpq	%rax, %rsi
	jle	.L398
.L421:
	testl	%r8d, %r8d
	jne	.L405
	movzbl	(%rdi,%rax), %r8d
	movb	%r8b, (%rdx,%rcx)
	leaq	1(%rax), %r8
	cmpq	%r8, %rsi
	jle	.L416
	movzbl	1(%rdi,%rax), %r8d
	movb	%r8b, 1(%rdx,%rcx)
	leaq	2(%rax), %r8
	cmpq	%r8, %rsi
	jle	.L416
	movzbl	2(%rdi,%rax), %r8d
	movb	%r8b, 2(%rdx,%rcx)
	leaq	3(%rax), %r8
	cmpq	%r8, %rsi
	jle	.L416
	movzbl	3(%rdi,%rax), %r8d
	addq	$4, %rax
	movb	%r8b, 3(%rdx,%rcx)
.L406:
	addq	$4, %rcx
	cmpq	%rax, %rsi
	movl	$1, %r8d
	jg	.L421
.L398:
	rep ret
	.p2align 4,,10
	.p2align 3
.L405:
	addq	$5, %rcx
	xorl	%r8d, %r8d
	jmp	.L419
	.p2align 4,,10
	.p2align 3
.L416:
	movq	%r8, %rax
	jmp	.L406
	.p2align 4,,10
	.p2align 3
.L410:
	movl	$1, %eax
.L399:
	imulq	%rax, %r8
	leaq	3(%r8), %rax
	testq	%r8, %r8
	cmovns	%r8, %rax
	sarq	$2, %rax
	leaq	0(,%rax,4), %rcx
	cmpq	%rcx, %r8
	je	.L422
	leaq	(%rax,%rax,8), %rcx
	negq	%rax
	leaq	(%r8,%rax,4), %r9
	addq	%rcx, %rdx
	cmpq	$3, %r9
	jg	.L413
	testq	%rsi, %rsi
	jle	.L413
	movl	$4, %r10d
	movq	%r9, %rcx
	xorl	%eax, %eax
	subq	%r9, %r10
	jmp	.L403
	.p2align 4,,10
	.p2align 3
.L423:
	cmpq	%rsi, %rax
	je	.L402
.L403:
	movzbl	(%rdi,%rax), %r8d
	addq	$1, %rax
	cmpq	%r10, %rax
	movb	%r8b, (%rdx,%rcx)
	leaq	(%rax,%r9), %rcx
	jne	.L423
.L402:
	addq	$9, %rdx
	jmp	.L400
	.p2align 4,,10
	.p2align 3
.L420:
	movq	%rsi, %rax
	jmp	.L399
	.p2align 4,,10
	.p2align 3
.L422:
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rdx
	xorl	%eax, %eax
	jmp	.L400
.L413:
	xorl	%eax, %eax
	jmp	.L402
	.cfi_endproc
.LFE97:
	.size	set_secure_data, .-set_secure_data
	.section	.rodata.str1.1
.LC11:
	.string	"rb"
.LC12:
	.string	"heap_keyshares"
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"init_mem:heap_keyshares file error\n"
	.text
	.p2align 4,,15
	.globl	init_mem
	.type	init_mem, @function
init_mem:
.LFB98:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	xorl	%edi, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	call	time
	movl	%eax, %edi
	call	srand
	movl	$.LC6, %edi
	call	puts
	movl	$40486, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L429
	movl	$.LC11, %esi
	movl	$.LC12, %edi
	movq	$40486, total_bytes_allocated(%rip)
	call	fopen
	testq	%rax, %rax
	movq	%rax, keyshare_input_file(%rip)
	je	.L430
	movq	%rbx, %rdi
	movabsq	$2049638230412172402, %rbp
	call	insert_keys_into_mem
	movq	keyshare_input_file(%rip), %rdi
	movq	%rbx, entire_memory_chunk(%rip)
	movq	%rbx, last_unused_memory(%rip)
	call	fclose
	movq	total_bytes_allocated(%rip), %rax
	movl	$32, %edi
	movq	entire_memory_chunk(%rip), %r12
	movq	$0, free_chunks_list(%rip)
	leaq	5(%rax), %rcx
	movq	%rcx, %rax
	sarq	$63, %rcx
	imulq	%rbp
	movq	%rdx, %rbp
	subq	%rcx, %rbp
	call	malloc
	testq	%rax, %rax
	je	.L431
	movq	%rbp, (%rax)
	movq	%r12, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	%rax, free_chunks_list(%rip)
	movq	%rbx, %rax
	movq	$1, free_chunks_num(%rip)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	movq	$0, allocated_chunks_list(%rip)
	movq	$0, allocated_chunks_num(%rip)
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L429:
	.cfi_restore_state
	movl	$293, %esi
	movl	$__func__.5823, %edi
	call	error_checking_malloc.part.0
.L431:
	movl	$94, %esi
	movl	$__func__.5779, %edi
	call	error_checking_malloc.part.0
.L430:
	movl	$.LC13, %edi
	call	perror
	movl	$43, %edi
	call	exit
	.cfi_endproc
.LFE98:
	.size	init_mem, .-init_mem
	.p2align 4,,15
	.globl	free_secure_mem
	.type	free_secure_mem, @function
free_secure_mem:
.LFB99:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	free
	movq	free_chunks_list(%rip), %rdi
	movq	$0, free_chunks_num(%rip)
	movq	$0, allocated_chunks_num(%rip)
	testq	%rdi, %rdi
	je	.L433
	movq	16(%rdi), %rbx
	jmp	.L438
	.p2align 4,,10
	.p2align 3
.L437:
	movq	%rax, 24(%rbx)
	movq	%rbx, 16(%rax)
.L476:
	call	free
.L435:
	testb	%bpl, %bpl
	jne	.L433
.L479:
	movq	%rbx, %rdi
	movq	16(%rbx), %rbx
.L438:
	movq	24(%rdi), %rax
	testq	%rbx, %rbx
	sete	%bpl
	testq	%rax, %rax
	sete	%dl
	testb	%bpl, %bpl
	jne	.L478
.L436:
	testq	%rbx, %rbx
	je	.L437
	testb	%dl, %dl
	je	.L437
	movq	$0, 24(%rbx)
	call	free
	testb	%bpl, %bpl
	je	.L479
.L433:
	movq	allocated_chunks_list(%rip), %rdi
	testq	%rdi, %rdi
	je	.L432
	movq	16(%rdi), %rbx
	jmp	.L444
	.p2align 4,,10
	.p2align 3
.L443:
	movq	%rax, 24(%rbx)
	movq	%rbx, 16(%rax)
.L477:
	call	free
.L441:
	testb	%bpl, %bpl
	jne	.L432
.L481:
	movq	%rbx, %rdi
	movq	16(%rbx), %rbx
.L444:
	movq	24(%rdi), %rax
	testq	%rbx, %rbx
	sete	%bpl
	testq	%rax, %rax
	sete	%dl
	testb	%bpl, %bpl
	jne	.L480
.L442:
	testq	%rbx, %rbx
	je	.L443
	testb	%dl, %dl
	je	.L443
	movq	$0, 24(%rbx)
	call	free
	testb	%bpl, %bpl
	je	.L481
.L432:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L478:
	.cfi_restore_state
	testb	%dl, %dl
	jne	.L476
	testq	%rax, %rax
	je	.L436
	movq	$0, 16(%rax)
	call	free
	jmp	.L435
	.p2align 4,,10
	.p2align 3
.L480:
	testb	%dl, %dl
	jne	.L477
	testq	%rax, %rax
	.p2align 4,,6
	je	.L442
	movq	$0, 16(%rax)
	call	free
	jmp	.L441
	.cfi_endproc
.LFE99:
	.size	free_secure_mem, .-free_secure_mem
	.p2align 4,,15
	.globl	get_char
	.type	get_char, @function
get_char:
.LFB100:
	.cfi_startproc
	movzbl	(%rdi), %eax
	ret
	.cfi_endproc
.LFE100:
	.size	get_char, .-get_char
	.p2align 4,,15
	.globl	get_int
	.type	get_int, @function
get_int:
.LFB101:
	.cfi_startproc
	movzbl	1(%rdi), %edx
	xorl	%eax, %eax
	movb	(%rdi), %al
	movzbl	2(%rdi), %ecx
	movb	%dl, %ah
	movzbl	3(%rdi), %edx
	sall	$16, %ecx
	movzwl	%ax, %eax
	orl	%ecx, %eax
	sall	$24, %edx
	orl	%edx, %eax
	ret
	.cfi_endproc
.LFE101:
	.size	get_int, .-get_int
	.p2align 4,,15
	.globl	get_long_int
	.type	get_long_int, @function
get_long_int:
.LFB102:
	.cfi_startproc
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L489
	.p2align 4,,10
	.p2align 3
.L494:
	movzbl	(%rdi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L490
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%sil, -23(%rsp,%rdx)
	jg	.L492
	movzbl	2(%rdi,%rax), %esi
	movb	%sil, -24(%rsp,%rcx)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L492
	movzbl	3(%rdi,%rax), %esi
	addq	$4, %rdx
	movb	%sil, -24(%rsp,%rcx)
.L486:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L493
.L489:
	testl	%ecx, %ecx
	je	.L494
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L489
.L493:
	movq	-24(%rsp), %rax
	ret
	.p2align 4,,10
	.p2align 3
.L492:
	movq	%rcx, %rdx
	jmp	.L486
	.p2align 4,,10
	.p2align 3
.L490:
	movl	$8, %edx
	jmp	.L486
	.cfi_endproc
.LFE102:
	.size	get_long_int, .-get_long_int
	.p2align 4,,15
	.globl	get_pointer
	.type	get_pointer, @function
get_pointer:
.LFB103:
	.cfi_startproc
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L500
	.p2align 4,,10
	.p2align 3
.L505:
	movzbl	(%rdi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L501
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%sil, -23(%rsp,%rdx)
	jg	.L503
	movzbl	2(%rdi,%rax), %esi
	movb	%sil, -24(%rsp,%rcx)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L503
	movzbl	3(%rdi,%rax), %esi
	addq	$4, %rdx
	movb	%sil, -24(%rsp,%rcx)
.L497:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L504
.L500:
	testl	%ecx, %ecx
	je	.L505
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L500
.L504:
	movq	-24(%rsp), %rax
	ret
	.p2align 4,,10
	.p2align 3
.L503:
	movq	%rcx, %rdx
	jmp	.L497
	.p2align 4,,10
	.p2align 3
.L501:
	movl	$8, %edx
	jmp	.L497
	.cfi_endproc
.LFE103:
	.size	get_pointer, .-get_pointer
	.p2align 4,,15
	.globl	get_float
	.type	get_float, @function
get_float:
.LFB104:
	.cfi_startproc
	movzbl	1(%rdi), %edx
	movzbl	(%rdi), %eax
	movzbl	2(%rdi), %ecx
	movb	%dl, %ah
	movzbl	3(%rdi), %edx
	sall	$16, %ecx
	movzwl	%ax, %eax
	orl	%ecx, %eax
	sall	$24, %edx
	orl	%edx, %eax
	movl	%eax, -12(%rsp)
	movss	-12(%rsp), %xmm0
	ret
	.cfi_endproc
.LFE104:
	.size	get_float, .-get_float
	.p2align 4,,15
	.globl	get_double
	.type	get_double, @function
get_double:
.LFB105:
	.cfi_startproc
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L512
	.p2align 4,,10
	.p2align 3
.L517:
	movzbl	(%rdi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L513
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%sil, -23(%rsp,%rdx)
	jg	.L515
	movzbl	2(%rdi,%rax), %esi
	movb	%sil, -24(%rsp,%rcx)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L515
	movzbl	3(%rdi,%rax), %esi
	addq	$4, %rdx
	movb	%sil, -24(%rsp,%rcx)
.L509:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L516
.L512:
	testl	%ecx, %ecx
	je	.L517
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L512
.L516:
	movsd	-24(%rsp), %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L515:
	movq	%rcx, %rdx
	jmp	.L509
	.p2align 4,,10
	.p2align 3
.L513:
	movl	$8, %edx
	jmp	.L509
	.cfi_endproc
.LFE105:
	.size	get_double, .-get_double
	.p2align 4,,15
	.globl	get_array_element
	.type	get_array_element, @function
get_array_element:
.LFB106:
	.cfi_startproc
	imulq	%rdi, %rdx
	leaq	3(%rdx), %rax
	testq	%rdx, %rdx
	cmovns	%rdx, %rax
	sarq	$2, %rax
	leaq	0(,%rax,4), %r8
	cmpq	%r8, %rdx
	leaq	(%rax,%rax,8), %r8
	je	.L536
	negq	%rax
	addq	%rsi, %r8
	leaq	(%rdx,%rax,4), %r9
	cmpq	$3, %r9
	jg	.L530
	testq	%rdi, %rdi
	jle	.L530
	movl	$4, %r10d
	movq	%r9, %rdx
	xorl	%eax, %eax
	subq	%r9, %r10
	jmp	.L522
	.p2align 4,,10
	.p2align 3
.L537:
	cmpq	%rdi, %rax
	je	.L521
.L522:
	movzbl	(%r8,%rdx), %edx
	movb	%dl, (%rcx,%rax)
	addq	$1, %rax
	cmpq	%r10, %rax
	leaq	(%rax,%r9), %rdx
	jne	.L537
.L521:
	addq	$9, %r8
.L520:
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L535:
	cmpq	%rax, %rdi
	jle	.L518
.L538:
	testl	%esi, %esi
	jne	.L524
	movzbl	(%r8,%rdx), %esi
	movb	%sil, (%rcx,%rax)
	leaq	1(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L533
	movzbl	1(%r8,%rdx), %esi
	movb	%sil, 1(%rcx,%rax)
	leaq	2(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L533
	movzbl	2(%r8,%rdx), %esi
	movb	%sil, 2(%rcx,%rax)
	leaq	3(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L533
	movzbl	3(%r8,%rdx), %esi
	movb	%sil, 3(%rcx,%rax)
	addq	$4, %rax
.L525:
	addq	$4, %rdx
	cmpq	%rax, %rdi
	movl	$1, %esi
	jg	.L538
.L518:
	rep ret
	.p2align 4,,10
	.p2align 3
.L524:
	addq	$5, %rdx
	xorl	%esi, %esi
	jmp	.L535
	.p2align 4,,10
	.p2align 3
.L533:
	movq	%rsi, %rax
	jmp	.L525
	.p2align 4,,10
	.p2align 3
.L536:
	addq	%rsi, %r8
	xorl	%eax, %eax
	jmp	.L520
.L530:
	xorl	%eax, %eax
	jmp	.L521
	.cfi_endproc
.LFE106:
	.size	get_array_element, .-get_array_element
	.p2align 4,,15
	.globl	get_char_array_element
	.type	get_char_array_element, @function
get_char_array_element:
.LFB107:
	.cfi_startproc
	leaq	3(%rsi), %rdx
	testq	%rsi, %rsi
	cmovns	%rsi, %rdx
	sarq	$2, %rdx
	leaq	0(,%rdx,4), %rax
	cmpq	%rax, %rsi
	leaq	(%rdx,%rdx,8), %rax
	je	.L545
	negq	%rdx
	addq	%rax, %rdi
	leaq	(%rsi,%rdx,4), %rdx
	cmpq	$3, %rdx
	jg	.L542
	movzbl	(%rdi,%rdx), %eax
	ret
	.p2align 4,,10
	.p2align 3
.L545:
	addq	%rdi, %rax
.L541:
	movzbl	(%rax), %eax
	ret
.L542:
	leaq	9(%rdi), %rax
	jmp	.L541
	.cfi_endproc
.LFE107:
	.size	get_char_array_element, .-get_char_array_element
	.p2align 4,,15
	.globl	get_int_array_element
	.type	get_int_array_element, @function
get_int_array_element:
.LFB108:
	.cfi_startproc
	leaq	(%rsi,%rsi,8), %rax
	addq	%rax, %rdi
	xorl	%eax, %eax
	movzbl	1(%rdi), %edx
	movb	(%rdi), %al
	movzbl	2(%rdi), %ecx
	movb	%dl, %ah
	movzbl	3(%rdi), %edx
	sall	$16, %ecx
	movzwl	%ax, %eax
	orl	%ecx, %eax
	sall	$24, %edx
	orl	%edx, %eax
	ret
	.cfi_endproc
.LFE108:
	.size	get_int_array_element, .-get_int_array_element
	.p2align 4,,15
	.globl	get_long_int_array_element
	.type	get_long_int_array_element, @function
get_long_int_array_element:
.LFB109:
	.cfi_startproc
	salq	$3, %rsi
	leaq	3(%rsi), %rax
	testq	%rsi, %rsi
	cmovns	%rsi, %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	sarq	$2, %rax
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rdi
	xorl	%eax, %eax
	jmp	.L552
	.p2align 4,,10
	.p2align 3
.L557:
	movzbl	(%rdi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L553
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%sil, -23(%rsp,%rdx)
	jg	.L555
	movzbl	2(%rdi,%rax), %esi
	movb	%sil, -24(%rsp,%rcx)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L555
	movzbl	3(%rdi,%rax), %esi
	addq	$4, %rdx
	movb	%sil, -24(%rsp,%rcx)
.L549:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L556
.L552:
	testl	%ecx, %ecx
	je	.L557
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L552
.L556:
	movq	-24(%rsp), %rax
	ret
	.p2align 4,,10
	.p2align 3
.L555:
	movq	%rcx, %rdx
	jmp	.L549
	.p2align 4,,10
	.p2align 3
.L553:
	movl	$8, %edx
	jmp	.L549
	.cfi_endproc
.LFE109:
	.size	get_long_int_array_element, .-get_long_int_array_element
	.p2align 4,,15
	.globl	get_pointer_array_element
	.type	get_pointer_array_element, @function
get_pointer_array_element:
.LFB110:
	.cfi_startproc
	salq	$3, %rsi
	leaq	3(%rsi), %rax
	testq	%rsi, %rsi
	cmovns	%rsi, %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	sarq	$2, %rax
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rdi
	xorl	%eax, %eax
	jmp	.L563
	.p2align 4,,10
	.p2align 3
.L568:
	movzbl	(%rdi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L564
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%sil, -23(%rsp,%rdx)
	jg	.L566
	movzbl	2(%rdi,%rax), %esi
	movb	%sil, -24(%rsp,%rcx)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L566
	movzbl	3(%rdi,%rax), %esi
	addq	$4, %rdx
	movb	%sil, -24(%rsp,%rcx)
.L560:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L567
.L563:
	testl	%ecx, %ecx
	je	.L568
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L563
.L567:
	movq	-24(%rsp), %rax
	ret
	.p2align 4,,10
	.p2align 3
.L566:
	movq	%rcx, %rdx
	jmp	.L560
	.p2align 4,,10
	.p2align 3
.L564:
	movl	$8, %edx
	jmp	.L560
	.cfi_endproc
.LFE110:
	.size	get_pointer_array_element, .-get_pointer_array_element
	.p2align 4,,15
	.globl	get_float_array_element
	.type	get_float_array_element, @function
get_float_array_element:
.LFB111:
	.cfi_startproc
	leaq	(%rsi,%rsi,8), %rax
	addq	%rax, %rdi
	movzbl	1(%rdi), %edx
	movzbl	(%rdi), %eax
	movzbl	2(%rdi), %ecx
	movb	%dl, %ah
	movzbl	3(%rdi), %edx
	sall	$16, %ecx
	movzwl	%ax, %eax
	orl	%ecx, %eax
	sall	$24, %edx
	orl	%edx, %eax
	movl	%eax, -12(%rsp)
	movss	-12(%rsp), %xmm0
	ret
	.cfi_endproc
.LFE111:
	.size	get_float_array_element, .-get_float_array_element
	.p2align 4,,15
	.globl	get_double_array_element
	.type	get_double_array_element, @function
get_double_array_element:
.LFB112:
	.cfi_startproc
	salq	$3, %rsi
	leaq	3(%rsi), %rax
	testq	%rsi, %rsi
	cmovns	%rsi, %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	sarq	$2, %rax
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rdi
	xorl	%eax, %eax
	jmp	.L575
	.p2align 4,,10
	.p2align 3
.L580:
	movzbl	(%rdi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L576
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%sil, -23(%rsp,%rdx)
	jg	.L578
	movzbl	2(%rdi,%rax), %esi
	movb	%sil, -24(%rsp,%rcx)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L578
	movzbl	3(%rdi,%rax), %esi
	addq	$4, %rdx
	movb	%sil, -24(%rsp,%rcx)
.L572:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L579
.L575:
	testl	%ecx, %ecx
	je	.L580
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L575
.L579:
	movsd	-24(%rsp), %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L578:
	movq	%rcx, %rdx
	jmp	.L572
	.p2align 4,,10
	.p2align 3
.L576:
	movl	$8, %edx
	jmp	.L572
	.cfi_endproc
.LFE112:
	.size	get_double_array_element, .-get_double_array_element
	.p2align 4,,15
	.globl	get_arbitrary_block_in_heap
	.type	get_arbitrary_block_in_heap, @function
get_arbitrary_block_in_heap:
.LFB113:
	.cfi_startproc
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	testq	%rdi, %rdi
	jg	.L591
	jmp	.L581
	.p2align 4,,10
	.p2align 3
.L592:
	cmpq	%rax, %rdi
	jle	.L584
	movzbl	(%rsi,%rcx), %r8d
	movb	%r8b, (%rdx,%rax)
	leaq	1(%rax), %r8
	cmpq	%r8, %rdi
	jle	.L590
	movzbl	1(%rsi,%rcx), %r8d
	movb	%r8b, 1(%rdx,%rax)
	leaq	2(%rax), %r8
	cmpq	%r8, %rdi
	jle	.L590
	movzbl	2(%rsi,%rcx), %r8d
	movb	%r8b, 2(%rdx,%rax)
	leaq	3(%rax), %r8
	cmpq	%r8, %rdi
	jle	.L590
	movzbl	3(%rsi,%rcx), %r8d
	movb	%r8b, 3(%rdx,%rax)
	addq	$4, %rax
.L584:
	addq	$4, %rcx
	cmpq	%rax, %rdi
	movl	$1, %r8d
	jle	.L581
.L591:
	testl	%r8d, %r8d
	je	.L592
	addq	$5, %rcx
	xorl	%r8d, %r8d
	cmpq	%rax, %rdi
	jg	.L591
.L581:
	rep ret
	.p2align 4,,10
	.p2align 3
.L590:
	movq	%r8, %rax
	jmp	.L584
	.cfi_endproc
.LFE113:
	.size	get_arbitrary_block_in_heap, .-get_arbitrary_block_in_heap
	.p2align 4,,15
	.globl	get_arbitrary_block_in_heap_with_offset
	.type	get_arbitrary_block_in_heap_with_offset, @function
get_arbitrary_block_in_heap_with_offset:
.LFB114:
	.cfi_startproc
	leaq	3(%rdx), %rax
	testq	%rdx, %rdx
	cmovns	%rdx, %rax
	sarq	$2, %rax
	leaq	0(,%rax,4), %r8
	cmpq	%r8, %rdx
	leaq	(%rax,%rax,8), %r8
	je	.L611
	negq	%rax
	addq	%rsi, %r8
	leaq	(%rdx,%rax,4), %r9
	cmpq	$3, %r9
	jg	.L605
	testq	%rdi, %rdi
	jle	.L605
	movl	$4, %r10d
	movq	%r9, %rdx
	xorl	%eax, %eax
	subq	%r9, %r10
	jmp	.L597
	.p2align 4,,10
	.p2align 3
.L612:
	cmpq	%rdi, %rax
	je	.L596
.L597:
	movzbl	(%r8,%rdx), %edx
	movb	%dl, (%rcx,%rax)
	addq	$1, %rax
	cmpq	%r10, %rax
	leaq	(%rax,%r9), %rdx
	jne	.L612
.L596:
	addq	$9, %r8
.L595:
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L610:
	cmpq	%rax, %rdi
	jle	.L593
.L613:
	testl	%esi, %esi
	jne	.L599
	movzbl	(%r8,%rdx), %esi
	movb	%sil, (%rcx,%rax)
	leaq	1(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L608
	movzbl	1(%r8,%rdx), %esi
	movb	%sil, 1(%rcx,%rax)
	leaq	2(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L608
	movzbl	2(%r8,%rdx), %esi
	movb	%sil, 2(%rcx,%rax)
	leaq	3(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L608
	movzbl	3(%r8,%rdx), %esi
	movb	%sil, 3(%rcx,%rax)
	addq	$4, %rax
.L600:
	addq	$4, %rdx
	cmpq	%rax, %rdi
	movl	$1, %esi
	jg	.L613
.L593:
	rep ret
	.p2align 4,,10
	.p2align 3
.L599:
	addq	$5, %rdx
	xorl	%esi, %esi
	jmp	.L610
	.p2align 4,,10
	.p2align 3
.L608:
	movq	%rsi, %rax
	jmp	.L600
	.p2align 4,,10
	.p2align 3
.L611:
	addq	%rsi, %r8
	xorl	%eax, %eax
	jmp	.L595
.L605:
	xorl	%eax, %eax
	jmp	.L596
	.cfi_endproc
.LFE114:
	.size	get_arbitrary_block_in_heap_with_offset, .-get_arbitrary_block_in_heap_with_offset
	.p2align 4,,15
	.globl	set_char
	.type	set_char, @function
set_char:
.LFB115:
	.cfi_startproc
	movb	%sil, (%rdi)
	ret
	.cfi_endproc
.LFE115:
	.size	set_char, .-set_char
	.p2align 4,,15
	.globl	set_int
	.type	set_int, @function
set_int:
.LFB116:
	.cfi_startproc
	movl	%esi, %edx
	movl	%esi, %eax
	movb	%sil, (%rdi)
	shrw	$8, %dx
	shrl	$16, %eax
	shrl	$24, %esi
	movb	%dl, 1(%rdi)
	movb	%al, 2(%rdi)
	movb	%sil, 3(%rdi)
	ret
	.cfi_endproc
.LFE116:
	.size	set_int, .-set_int
	.p2align 4,,15
	.globl	set_long_int
	.type	set_long_int, @function
set_long_int:
.LFB117:
	.cfi_startproc
	movq	%rsi, -8(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L621
	.p2align 4,,10
	.p2align 3
.L626:
	movzbl	-8(%rsp,%rdx), %ecx
	movb	%cl, (%rdi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L622
	movzbl	-7(%rsp,%rdx), %ecx
	movb	%cl, 1(%rdi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L624
	movzbl	-8(%rsp,%rcx), %ecx
	movb	%cl, 2(%rdi,%rax)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L624
	movzbl	-8(%rsp,%rcx), %ecx
	addq	$4, %rdx
	movb	%cl, 3(%rdi,%rax)
.L618:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L625
.L621:
	testl	%ecx, %ecx
	je	.L626
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L621
.L625:
	rep ret
	.p2align 4,,10
	.p2align 3
.L624:
	movq	%rcx, %rdx
	jmp	.L618
	.p2align 4,,10
	.p2align 3
.L622:
	movl	$8, %edx
	jmp	.L618
	.cfi_endproc
.LFE117:
	.size	set_long_int, .-set_long_int
	.p2align 4,,15
	.globl	set_pointer
	.type	set_pointer, @function
set_pointer:
.LFB118:
	.cfi_startproc
	movq	%rsi, -8(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L632
	.p2align 4,,10
	.p2align 3
.L637:
	movzbl	-8(%rsp,%rdx), %ecx
	movb	%cl, (%rdi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L633
	movzbl	-7(%rsp,%rdx), %ecx
	movb	%cl, 1(%rdi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L635
	movzbl	-8(%rsp,%rcx), %ecx
	movb	%cl, 2(%rdi,%rax)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L635
	movzbl	-8(%rsp,%rcx), %ecx
	addq	$4, %rdx
	movb	%cl, 3(%rdi,%rax)
.L629:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L636
.L632:
	testl	%ecx, %ecx
	je	.L637
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L632
.L636:
	rep ret
	.p2align 4,,10
	.p2align 3
.L635:
	movq	%rcx, %rdx
	jmp	.L629
	.p2align 4,,10
	.p2align 3
.L633:
	movl	$8, %edx
	jmp	.L629
	.cfi_endproc
.LFE118:
	.size	set_pointer, .-set_pointer
	.p2align 4,,15
	.globl	set_float
	.type	set_float, @function
set_float:
.LFB119:
	.cfi_startproc
	movss	%xmm0, -4(%rsp)
	movzbl	-4(%rsp), %eax
	movb	%al, (%rdi)
	movzbl	-3(%rsp), %eax
	movb	%al, 1(%rdi)
	movzbl	-2(%rsp), %eax
	movb	%al, 2(%rdi)
	movzbl	-1(%rsp), %eax
	movb	%al, 3(%rdi)
	ret
	.cfi_endproc
.LFE119:
	.size	set_float, .-set_float
	.p2align 4,,15
	.globl	set_double
	.type	set_double, @function
set_double:
.LFB120:
	.cfi_startproc
	movsd	%xmm0, -8(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L644
	.p2align 4,,10
	.p2align 3
.L649:
	movzbl	-8(%rsp,%rdx), %ecx
	movb	%cl, (%rdi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L645
	movzbl	-7(%rsp,%rdx), %ecx
	movb	%cl, 1(%rdi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L647
	movzbl	-8(%rsp,%rcx), %ecx
	movb	%cl, 2(%rdi,%rax)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L647
	movzbl	-8(%rsp,%rcx), %ecx
	addq	$4, %rdx
	movb	%cl, 3(%rdi,%rax)
.L641:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L648
.L644:
	testl	%ecx, %ecx
	je	.L649
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L644
.L648:
	rep ret
	.p2align 4,,10
	.p2align 3
.L647:
	movq	%rcx, %rdx
	jmp	.L641
	.p2align 4,,10
	.p2align 3
.L645:
	movl	$8, %edx
	jmp	.L641
	.cfi_endproc
.LFE120:
	.size	set_double, .-set_double
	.p2align 4,,15
	.globl	set_array_element
	.type	set_array_element, @function
set_array_element:
.LFB121:
	.cfi_startproc
	imulq	%rdi, %rdx
	leaq	3(%rdx), %rax
	testq	%rdx, %rdx
	cmovns	%rdx, %rax
	sarq	$2, %rax
	leaq	0(,%rax,4), %r8
	cmpq	%r8, %rdx
	leaq	(%rax,%rax,8), %r8
	je	.L668
	negq	%rax
	addq	%rsi, %r8
	leaq	(%rdx,%rax,4), %r10
	cmpq	$3, %r10
	jg	.L662
	testq	%rdi, %rdi
	jle	.L662
	movl	$4, %r11d
	movq	%r10, %rdx
	xorl	%eax, %eax
	subq	%r10, %r11
	jmp	.L654
	.p2align 4,,10
	.p2align 3
.L669:
	cmpq	%rdi, %rax
	je	.L653
.L654:
	movzbl	(%rcx,%rax), %r9d
	addq	$1, %rax
	cmpq	%r11, %rax
	movb	%r9b, (%r8,%rdx)
	leaq	(%rax,%r10), %rdx
	jne	.L669
.L653:
	addq	$9, %r8
.L652:
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L667:
	cmpq	%rax, %rdi
	jle	.L650
.L670:
	testl	%esi, %esi
	jne	.L656
	movzbl	(%rcx,%rax), %esi
	movb	%sil, (%r8,%rdx)
	leaq	1(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L665
	movzbl	1(%rcx,%rax), %esi
	movb	%sil, 1(%r8,%rdx)
	leaq	2(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L665
	movzbl	2(%rcx,%rax), %esi
	movb	%sil, 2(%r8,%rdx)
	leaq	3(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L665
	movzbl	3(%rcx,%rax), %esi
	addq	$4, %rax
	movb	%sil, 3(%r8,%rdx)
.L657:
	addq	$4, %rdx
	cmpq	%rax, %rdi
	movl	$1, %esi
	jg	.L670
.L650:
	rep ret
	.p2align 4,,10
	.p2align 3
.L656:
	addq	$5, %rdx
	xorl	%esi, %esi
	jmp	.L667
	.p2align 4,,10
	.p2align 3
.L665:
	movq	%rsi, %rax
	jmp	.L657
	.p2align 4,,10
	.p2align 3
.L668:
	addq	%rsi, %r8
	xorl	%eax, %eax
	jmp	.L652
.L662:
	xorl	%eax, %eax
	jmp	.L653
	.cfi_endproc
.LFE121:
	.size	set_array_element, .-set_array_element
	.p2align 4,,15
	.globl	set_char_array_element
	.type	set_char_array_element, @function
set_char_array_element:
.LFB122:
	.cfi_startproc
	leaq	3(%rsi), %rcx
	testq	%rsi, %rsi
	cmovns	%rsi, %rcx
	sarq	$2, %rcx
	leaq	0(,%rcx,4), %rax
	cmpq	%rax, %rsi
	leaq	(%rcx,%rcx,8), %rax
	je	.L676
	negq	%rcx
	addq	%rax, %rdi
	leaq	(%rsi,%rcx,4), %rcx
	cmpq	$3, %rcx
	jg	.L674
	movb	%dl, (%rdi,%rcx)
	ret
	.p2align 4,,10
	.p2align 3
.L676:
	addq	%rdi, %rax
.L673:
	movb	%dl, (%rax)
	ret
.L674:
	leaq	9(%rdi), %rax
	jmp	.L673
	.cfi_endproc
.LFE122:
	.size	set_char_array_element, .-set_char_array_element
	.p2align 4,,15
	.globl	set_int_array_element
	.type	set_int_array_element, @function
set_int_array_element:
.LFB123:
	.cfi_startproc
	leaq	(%rsi,%rsi,8), %rax
	addq	%rax, %rdi
	movl	%edx, %eax
	shrw	$8, %ax
	movb	%dl, (%rdi)
	movb	%al, 1(%rdi)
	movl	%edx, %eax
	shrl	$24, %edx
	shrl	$16, %eax
	movb	%dl, 3(%rdi)
	movb	%al, 2(%rdi)
	ret
	.cfi_endproc
.LFE123:
	.size	set_int_array_element, .-set_int_array_element
	.p2align 4,,15
	.globl	set_long_int_array_element
	.type	set_long_int_array_element, @function
set_long_int_array_element:
.LFB124:
	.cfi_startproc
	salq	$3, %rsi
	movq	%rdx, -24(%rsp)
	leaq	3(%rsi), %rax
	testq	%rsi, %rsi
	cmovns	%rsi, %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	sarq	$2, %rax
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rdi
	xorl	%eax, %eax
	jmp	.L683
	.p2align 4,,10
	.p2align 3
.L688:
	movzbl	-24(%rsp,%rdx), %ecx
	movb	%cl, (%rdi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L684
	movzbl	-23(%rsp,%rdx), %ecx
	movb	%cl, 1(%rdi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L686
	movzbl	-24(%rsp,%rcx), %ecx
	movb	%cl, 2(%rdi,%rax)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L686
	movzbl	-24(%rsp,%rcx), %ecx
	addq	$4, %rdx
	movb	%cl, 3(%rdi,%rax)
.L680:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L687
.L683:
	testl	%ecx, %ecx
	je	.L688
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L683
.L687:
	rep ret
	.p2align 4,,10
	.p2align 3
.L686:
	movq	%rcx, %rdx
	jmp	.L680
	.p2align 4,,10
	.p2align 3
.L684:
	movl	$8, %edx
	jmp	.L680
	.cfi_endproc
.LFE124:
	.size	set_long_int_array_element, .-set_long_int_array_element
	.p2align 4,,15
	.globl	set_pointer_array_element
	.type	set_pointer_array_element, @function
set_pointer_array_element:
.LFB125:
	.cfi_startproc
	salq	$3, %rsi
	movq	%rdx, -24(%rsp)
	leaq	3(%rsi), %rax
	testq	%rsi, %rsi
	cmovns	%rsi, %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	sarq	$2, %rax
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rdi
	xorl	%eax, %eax
	jmp	.L694
	.p2align 4,,10
	.p2align 3
.L699:
	movzbl	-24(%rsp,%rdx), %ecx
	movb	%cl, (%rdi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L695
	movzbl	-23(%rsp,%rdx), %ecx
	movb	%cl, 1(%rdi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L697
	movzbl	-24(%rsp,%rcx), %ecx
	movb	%cl, 2(%rdi,%rax)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L697
	movzbl	-24(%rsp,%rcx), %ecx
	addq	$4, %rdx
	movb	%cl, 3(%rdi,%rax)
.L691:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L698
.L694:
	testl	%ecx, %ecx
	je	.L699
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L694
.L698:
	rep ret
	.p2align 4,,10
	.p2align 3
.L697:
	movq	%rcx, %rdx
	jmp	.L691
	.p2align 4,,10
	.p2align 3
.L695:
	movl	$8, %edx
	jmp	.L691
	.cfi_endproc
.LFE125:
	.size	set_pointer_array_element, .-set_pointer_array_element
	.p2align 4,,15
	.globl	set_float_array_element
	.type	set_float_array_element, @function
set_float_array_element:
.LFB126:
	.cfi_startproc
	leaq	(%rsi,%rsi,8), %rax
	movss	%xmm0, -4(%rsp)
	addq	%rax, %rdi
	movzbl	-4(%rsp), %eax
	movb	%al, (%rdi)
	movzbl	-3(%rsp), %eax
	movb	%al, 1(%rdi)
	movzbl	-2(%rsp), %eax
	movb	%al, 2(%rdi)
	movzbl	-1(%rsp), %eax
	movb	%al, 3(%rdi)
	ret
	.cfi_endproc
.LFE126:
	.size	set_float_array_element, .-set_float_array_element
	.p2align 4,,15
	.globl	set_double_array_element
	.type	set_double_array_element, @function
set_double_array_element:
.LFB127:
	.cfi_startproc
	salq	$3, %rsi
	movsd	%xmm0, -24(%rsp)
	leaq	3(%rsi), %rax
	testq	%rsi, %rsi
	cmovns	%rsi, %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	sarq	$2, %rax
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rdi
	xorl	%eax, %eax
	jmp	.L706
	.p2align 4,,10
	.p2align 3
.L711:
	movzbl	-24(%rsp,%rdx), %ecx
	movb	%cl, (%rdi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L707
	movzbl	-23(%rsp,%rdx), %ecx
	movb	%cl, 1(%rdi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L709
	movzbl	-24(%rsp,%rcx), %ecx
	movb	%cl, 2(%rdi,%rax)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L709
	movzbl	-24(%rsp,%rcx), %ecx
	addq	$4, %rdx
	movb	%cl, 3(%rdi,%rax)
.L703:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L710
.L706:
	testl	%ecx, %ecx
	je	.L711
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L706
.L710:
	rep ret
	.p2align 4,,10
	.p2align 3
.L709:
	movq	%rcx, %rdx
	jmp	.L703
	.p2align 4,,10
	.p2align 3
.L707:
	movl	$8, %edx
	jmp	.L703
	.cfi_endproc
.LFE127:
	.size	set_double_array_element, .-set_double_array_element
	.p2align 4,,15
	.globl	set_arbitrary_block_in_heap
	.type	set_arbitrary_block_in_heap, @function
set_arbitrary_block_in_heap:
.LFB128:
	.cfi_startproc
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	testq	%rdi, %rdi
	jg	.L722
	jmp	.L712
	.p2align 4,,10
	.p2align 3
.L723:
	cmpq	%rax, %rdi
	jle	.L715
	movzbl	(%rdx,%rax), %r8d
	movb	%r8b, (%rsi,%rcx)
	leaq	1(%rax), %r8
	cmpq	%r8, %rdi
	jle	.L721
	movzbl	1(%rdx,%rax), %r8d
	movb	%r8b, 1(%rsi,%rcx)
	leaq	2(%rax), %r8
	cmpq	%r8, %rdi
	jle	.L721
	movzbl	2(%rdx,%rax), %r8d
	movb	%r8b, 2(%rsi,%rcx)
	leaq	3(%rax), %r8
	cmpq	%r8, %rdi
	jle	.L721
	movzbl	3(%rdx,%rax), %r8d
	addq	$4, %rax
	movb	%r8b, 3(%rsi,%rcx)
.L715:
	addq	$4, %rcx
	cmpq	%rax, %rdi
	movl	$1, %r8d
	jle	.L712
.L722:
	testl	%r8d, %r8d
	je	.L723
	addq	$5, %rcx
	xorl	%r8d, %r8d
	cmpq	%rax, %rdi
	jg	.L722
.L712:
	rep ret
	.p2align 4,,10
	.p2align 3
.L721:
	movq	%r8, %rax
	jmp	.L715
	.cfi_endproc
.LFE128:
	.size	set_arbitrary_block_in_heap, .-set_arbitrary_block_in_heap
	.p2align 4,,15
	.globl	set_arbitrary_block_in_heap_with_offset
	.type	set_arbitrary_block_in_heap_with_offset, @function
set_arbitrary_block_in_heap_with_offset:
.LFB129:
	.cfi_startproc
	leaq	3(%rdx), %rax
	testq	%rdx, %rdx
	cmovns	%rdx, %rax
	sarq	$2, %rax
	leaq	0(,%rax,4), %r8
	cmpq	%r8, %rdx
	leaq	(%rax,%rax,8), %r8
	je	.L742
	negq	%rax
	addq	%rsi, %r8
	leaq	(%rdx,%rax,4), %r10
	cmpq	$3, %r10
	jg	.L736
	testq	%rdi, %rdi
	jle	.L736
	movl	$4, %r11d
	movq	%r10, %rdx
	xorl	%eax, %eax
	subq	%r10, %r11
	jmp	.L728
	.p2align 4,,10
	.p2align 3
.L743:
	cmpq	%rdi, %rax
	je	.L727
.L728:
	movzbl	(%rcx,%rax), %r9d
	addq	$1, %rax
	cmpq	%r11, %rax
	movb	%r9b, (%r8,%rdx)
	leaq	(%rax,%r10), %rdx
	jne	.L743
.L727:
	addq	$9, %r8
.L726:
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L741:
	cmpq	%rax, %rdi
	jle	.L724
.L744:
	testl	%esi, %esi
	jne	.L730
	movzbl	(%rcx,%rax), %esi
	movb	%sil, (%r8,%rdx)
	leaq	1(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L739
	movzbl	1(%rcx,%rax), %esi
	movb	%sil, 1(%r8,%rdx)
	leaq	2(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L739
	movzbl	2(%rcx,%rax), %esi
	movb	%sil, 2(%r8,%rdx)
	leaq	3(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L739
	movzbl	3(%rcx,%rax), %esi
	addq	$4, %rax
	movb	%sil, 3(%r8,%rdx)
.L731:
	addq	$4, %rdx
	cmpq	%rax, %rdi
	movl	$1, %esi
	jg	.L744
.L724:
	rep ret
	.p2align 4,,10
	.p2align 3
.L730:
	addq	$5, %rdx
	xorl	%esi, %esi
	jmp	.L741
	.p2align 4,,10
	.p2align 3
.L739:
	movq	%rsi, %rax
	jmp	.L731
	.p2align 4,,10
	.p2align 3
.L742:
	addq	%rsi, %r8
	xorl	%eax, %eax
	jmp	.L726
.L736:
	xorl	%eax, %eax
	jmp	.L727
	.cfi_endproc
.LFE129:
	.size	set_arbitrary_block_in_heap_with_offset, .-set_arbitrary_block_in_heap_with_offset
	.p2align 4,,15
	.globl	find_large_enough_free_group
	.type	find_large_enough_free_group, @function
find_large_enough_free_group:
.LFB130:
	.cfi_startproc
	movq	free_chunks_list(%rip), %rax
	testq	%rax, %rax
	je	.L750
	.p2align 4,,10
	.p2align 3
.L747:
	cmpq	%rdi, (%rax)
	jge	.L746
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L747
.L750:
	xorl	%eax, %eax
.L746:
	rep ret
	.cfi_endproc
.LFE130:
	.size	find_large_enough_free_group, .-find_large_enough_free_group
	.p2align 4,,15
	.globl	find_which_group_to_free
	.type	find_which_group_to_free, @function
find_which_group_to_free:
.LFB131:
	.cfi_startproc
	movq	allocated_chunks_list(%rip), %rax
	testq	%rax, %rax
	je	.L756
	.p2align 4,,10
	.p2align 3
.L753:
	cmpq	%rdi, 8(%rax)
	je	.L752
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L753
.L756:
	xorl	%eax, %eax
.L752:
	rep ret
	.cfi_endproc
.LFE131:
	.size	find_which_group_to_free, .-find_which_group_to_free
	.p2align 4,,15
	.globl	check_and_merge
	.type	check_and_merge, @function
check_and_merge:
.LFB132:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movq	(%rdi), %r13
	movq	8(%rdi), %r14
	leaq	0(%r13,%r13,8), %rax
	addq	%r14, %rax
	cmpq	%rax, 8(%rsi)
	jne	.L763
	movl	$32, %edi
	movq	%rdx, %r15
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L768
	addq	(%r12), %r13
	movq	%r14, 8(%rax)
	movq	16(%r12), %rdx
	movq	%r13, (%rax)
	movq	24(%rbp), %rax
	movq	%rdx, 16(%rbx)
	testq	%rax, %rax
	movq	%rax, 24(%rbx)
	je	.L760
	movq	%rbx, 16(%rax)
.L761:
	movq	16(%rbx), %rax
	testq	%rax, %rax
	je	.L762
	movq	%rbx, 24(%rax)
.L762:
	movq	%rbp, %rdi
	call	free
	movq	%r12, %rdi
	call	free
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L763:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L760:
	.cfi_restore_state
	movq	%rbx, (%r15)
	jmp	.L761
.L768:
	movl	$933, %esi
	movl	$__func__.6102, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE132:
	.size	check_and_merge, .-check_and_merge
	.p2align 4,,15
	.globl	managed_secure_malloc
	.type	managed_secure_malloc, @function
managed_secure_malloc:
.LFB133:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L782
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	testq	%rdi, %rdi
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	free_chunks_list(%rip), %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	leaq	3(%rdi), %rbp
	cmovns	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	sarq	$2, %rbp
	leaq	0(,%rbp,4), %rdx
	leaq	1(%rbp), %rax
	cmpq	%rdx, %rdi
	cmovg	%rax, %rbp
	testq	%r13, %r13
	je	.L784
	movq	%r13, %rbx
	.p2align 4,,10
	.p2align 3
.L773:
	cmpq	(%rbx), %rbp
	jle	.L772
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L773
.L784:
	popq	%rbx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L772:
	.cfi_restore_state
	movl	$32, %edi
	movq	8(%rbx), %r14
	movq	allocated_chunks_list(%rip), %r12
	call	malloc
	testq	%rax, %rax
	je	.L809
	testq	%r12, %r12
	movq	%rbp, (%rax)
	movq	%r14, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	je	.L774
	movq	%r12, 16(%rax)
	movq	%rax, 24(%r12)
	movq	$0, 24(%rax)
.L774:
	movq	(%rbx), %rdx
	addq	$1, allocated_chunks_num(%rip)
	movq	%rax, allocated_chunks_list(%rip)
	cmpq	%rbp, %rdx
	je	.L810
	leaq	0(%rbp,%rbp,8), %rax
	subq	%rbp, %rdx
	addq	%rax, 8(%rbx)
	movq	%rdx, (%rbx)
	movq	%r14, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L810:
	.cfi_restore_state
	movq	16(%rbx), %rbp
	movq	24(%rbx), %rax
	testq	%rbp, %rbp
	sete	%cl
	testq	%rax, %rax
	sete	%dl
	je	.L811
.L776:
	testq	%rax, %rax
	jne	.L812
.L778:
	testq	%rbp, %rbp
	jne	.L813
.L779:
	movq	%rax, 24(%rbp)
	movq	%rbx, %rdi
	movq	%rbp, 16(%rax)
	call	free
.L777:
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 24
	movq	%r13, free_chunks_list(%rip)
	movq	%r14, %rax
	subq	$1, free_chunks_num(%rip)
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L782:
	xorl	%eax, %eax
	ret
.L813:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	testb	%dl, %dl
	je	.L779
	movq	$0, 24(%rbp)
	movq	%rbx, %rdi
	movq	%rbp, %r13
	call	free
	jmp	.L777
.L812:
	testb	%cl, %cl
	je	.L778
	movq	$0, 16(%rax)
	movq	%rbx, %rdi
	call	free
	jmp	.L777
.L811:
	testb	%cl, %cl
	je	.L776
	movq	%rbx, %rdi
	xorl	%r13d, %r13d
	call	free
	jmp	.L777
.L809:
	movl	$94, %esi
	movl	$__func__.5779, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE133:
	.size	managed_secure_malloc, .-managed_secure_malloc
	.p2align 4,,15
	.globl	managed_secure_free
	.type	managed_secure_free, @function
managed_secure_free:
.LFB134:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	allocated_chunks_list(%rip), %r12
	testq	%r12, %r12
	je	.L864
	movq	%rdi, %rbp
	movq	%r12, %rbx
	.p2align 4,,10
	.p2align 3
.L817:
	cmpq	8(%rbx), %rbp
	je	.L816
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L817
.L864:
	xorl	%eax, %eax
.L925:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L816:
	.cfi_restore_state
	movl	$32, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r13
	je	.L930
	movq	(%rbx), %rax
	movq	%rbp, 8(%r13)
	movq	%rax, 0(%r13)
	movq	16(%rbx), %rax
	movq	%rax, 16(%r13)
	movq	24(%rbx), %rax
	movq	16(%rbx), %rbp
	movq	%rax, 24(%r13)
	movq	24(%rbx), %rax
	testq	%rbp, %rbp
	sete	%cl
	testq	%rax, %rax
	sete	%dl
	je	.L931
.L818:
	testq	%rax, %rax
	jne	.L932
.L820:
	testq	%rbp, %rbp
	jne	.L933
.L821:
	movq	%rax, 24(%rbp)
	movq	%rbx, %rdi
	movq	%rbp, 16(%rax)
	call	free
.L819:
	movq	free_chunks_list(%rip), %r14
	subq	$1, allocated_chunks_num(%rip)
	movq	%r12, allocated_chunks_list(%rip)
	testq	%r14, %r14
	je	.L934
	movq	8(%r13), %r12
	movq	%r14, %rbx
	xorl	%ebp, %ebp
	jmp	.L826
	.p2align 4,,10
	.p2align 3
.L935:
	movq	%rbx, %rbp
	movq	%rdx, %rbx
.L826:
	cmpq	%r12, 8(%rbx)
	jg	.L824
	movq	16(%rbx), %rdx
	testq	%rdx, %rdx
	jne	.L935
.L862:
	movq	8(%rbx), %rcx
	cmpq	%rcx, %r12
	jg	.L936
	movq	%rbx, %rbp
	movq	%rdx, %rbx
	jmp	.L840
	.p2align 4,,10
	.p2align 3
.L824:
	testq	%rbp, %rbp
	je	.L937
	cmpq	$0, 16(%rbp)
	je	.L938
	movq	8(%rbp), %rcx
.L840:
	movq	0(%rbp), %r15
	addq	$1, free_chunks_num(%rip)
	movq	%r13, 16(%rbp)
	movq	%rcx, 8(%rsp)
	movq	%rbp, 24(%r13)
	movq	%rbx, 16(%r13)
	leaq	(%r15,%r15,8), %rax
	movq	%r13, 24(%rbx)
	addq	%rcx, %rax
	cmpq	%rax, %r12
	jne	.L844
	movl	$32, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r14
	je	.L835
	addq	0(%r13), %r15
	movq	8(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	%r15, (%rax)
	movq	24(%rbp), %rax
	movq	%rbx, 16(%r14)
	testq	%rax, %rax
	movq	%rax, 24(%r14)
	je	.L845
	movq	%r14, 16(%rax)
	movq	16(%r14), %rbx
	testq	%rbx, %rbx
	je	.L847
.L846:
	movq	%r14, 24(%rbx)
.L847:
	movq	%rbp, %rdi
	call	free
	movq	%r13, %rdi
	call	free
.L848:
	movq	16(%r14), %rbp
	subq	$1, free_chunks_num(%rip)
	testq	%rbp, %rbp
	je	.L928
	movq	(%r14), %r12
	movq	8(%r14), %r13
	leaq	(%r12,%r12,8), %rax
	addq	%r13, %rax
	cmpq	%rax, 8(%rbp)
	je	.L905
	jmp	.L928
	.p2align 4,,10
	.p2align 3
.L939:
	movq	%rbx, %r14
.L905:
	movl	$32, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L835
	addq	0(%rbp), %r12
	movq	%r13, 8(%rax)
	movq	16(%rbp), %rdx
	movq	%r12, (%rax)
	movq	24(%r14), %rax
	movq	%rdx, 16(%rbx)
	testq	%rax, %rax
	movq	%rax, 24(%rbx)
	je	.L853
	movq	%rbx, 16(%rax)
	movq	16(%rbx), %rdx
.L854:
	testq	%rdx, %rdx
	je	.L855
	movq	%rbx, 24(%rdx)
.L855:
	movq	%r14, %rdi
	call	free
	movq	%rbp, %rdi
	call	free
	movq	16(%rbx), %rbp
	subq	$1, free_chunks_num(%rip)
	testq	%rbp, %rbp
	je	.L928
	movq	(%rbx), %r12
	movq	8(%rbx), %r13
	leaq	(%r12,%r12,8), %rax
	addq	%r13, %rax
	cmpq	%rax, 8(%rbp)
	je	.L939
.L928:
	movl	$1, %eax
.L941:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L853:
	.cfi_restore_state
	movq	%rbx, free_chunks_list(%rip)
	jmp	.L854
	.p2align 4,,10
	.p2align 3
.L844:
	movq	0(%r13), %rbp
	leaq	0(%rbp,%rbp,8), %rax
	addq	%r12, %rax
	cmpq	%rax, 8(%rbx)
	jne	.L928
	movl	$32, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r14
	je	.L835
	addq	(%rbx), %rbp
	movq	24(%r13), %rdx
	movq	%r12, 8(%rax)
	movq	%rdx, 24(%rax)
	testq	%rdx, %rdx
	movq	%rbp, (%rax)
	movq	16(%rbx), %rax
	movq	%rax, 16(%r14)
	je	.L849
	movq	%r14, 16(%rdx)
	movq	16(%r14), %rax
.L850:
	testq	%rax, %rax
	je	.L851
	movq	%r14, 24(%rax)
.L851:
	movq	%r13, %rdi
	call	free
	movq	%rbx, %rdi
	call	free
	jmp	.L848
	.p2align 4,,10
	.p2align 3
.L933:
	testb	%dl, %dl
	je	.L821
	movq	$0, 24(%rbp)
	movq	%rbx, %rdi
	movq	%rbp, %r12
	call	free
	jmp	.L819
.L936:
	movq	(%rbx), %rbp
	addq	$1, free_chunks_num(%rip)
	movq	%r13, 16(%rbx)
	movq	%rcx, 8(%rsp)
	movq	%rbx, 24(%r13)
	movq	$0, 16(%r13)
	leaq	0(%rbp,%rbp,8), %rax
	addq	%rcx, %rax
	cmpq	%rax, %r12
	jne	.L928
	movl	$32, %edi
	call	malloc
	testq	%rax, %rax
	je	.L835
	movq	24(%rbx), %rdx
	addq	0(%r13), %rbp
	movq	8(%rsp), %rcx
	movq	$0, 16(%rax)
	testq	%rdx, %rdx
	movq	%rdx, 24(%rax)
	movq	%rbp, (%rax)
	movq	%rcx, 8(%rax)
	je	.L841
	movq	%rax, 16(%rdx)
	movq	16(%rax), %rdx
	testq	%rdx, %rdx
	je	.L843
	movq	%rax, 24(%rdx)
.L843:
	movq	%rbx, %rdi
	call	free
	movq	%r13, %rdi
	call	free
	subq	$1, free_chunks_num(%rip)
	jmp	.L928
	.p2align 4,,10
	.p2align 3
.L932:
	testb	%cl, %cl
	je	.L820
	movq	$0, 16(%rax)
	movq	%rbx, %rdi
	call	free
	jmp	.L819
.L845:
	movq	%r14, free_chunks_list(%rip)
	jmp	.L846
.L937:
	movl	$32, %edi
	movq	0(%r13), %rbp
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L828
	movq	%rbp, (%rax)
	movq	%r12, 8(%rax)
	movq	%r13, %rdi
	movq	%r14, 16(%rax)
	movq	%rax, 24(%r14)
	movq	$0, 24(%rax)
	movq	%rax, free_chunks_list(%rip)
	addq	$1, free_chunks_num(%rip)
	call	free
	leaq	0(%rbp,%rbp,8), %rax
	addq	%r12, %rax
	cmpq	%rax, 8(%r14)
	jne	.L928
	movl	$32, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r15
	je	.L835
	addq	(%r14), %rbp
	movq	%r12, 8(%rax)
	movq	$0, 24(%rax)
	movq	%r15, free_chunks_list(%rip)
	movq	%rbp, (%rax)
	movq	16(%r14), %rax
	testq	%rax, %rax
	movq	%rax, 16(%r15)
	je	.L831
	movq	%r15, 24(%rax)
.L831:
	movq	%rbx, %rdi
	call	free
	movq	%r14, %rdi
	call	free
	movq	16(%r15), %rbp
	subq	$1, free_chunks_num(%rip)
	testq	%rbp, %rbp
	je	.L928
	movq	(%r15), %r12
	movq	8(%r15), %r13
	leaq	(%r12,%r12,8), %rax
	addq	%r13, %rax
	cmpq	%rax, 8(%rbp)
	je	.L904
	jmp	.L928
	.p2align 4,,10
	.p2align 3
.L940:
	movq	%rbx, %r15
.L904:
	movl	$32, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L835
	addq	0(%rbp), %r12
	movq	%r13, 8(%rax)
	movq	16(%rbp), %rdx
	movq	%r12, (%rax)
	movq	24(%r15), %rax
	movq	%rdx, 16(%rbx)
	testq	%rax, %rax
	movq	%rax, 24(%rbx)
	je	.L836
	movq	%rbx, 16(%rax)
	movq	16(%rbx), %rdx
.L837:
	testq	%rdx, %rdx
	je	.L838
	movq	%rbx, 24(%rdx)
.L838:
	movq	%r15, %rdi
	call	free
	movq	%rbp, %rdi
	call	free
	movq	16(%rbx), %rbp
	subq	$1, free_chunks_num(%rip)
	testq	%rbp, %rbp
	je	.L928
	movq	(%rbx), %r12
	movq	8(%rbx), %r13
	leaq	(%r12,%r12,8), %rax
	addq	%r13, %rax
	cmpq	%rax, 8(%rbp)
	je	.L940
	movl	$1, %eax
	jmp	.L941
.L836:
	movq	%rbx, free_chunks_list(%rip)
	jmp	.L837
.L934:
	movl	$32, %edi
	movq	0(%r13), %rbp
	movq	8(%r13), %rbx
	call	malloc
	testq	%rax, %rax
	je	.L828
	movq	%rbp, (%rax)
	movq	%rbx, 8(%rax)
	movq	%r13, %rdi
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	%rax, free_chunks_list(%rip)
	addq	$1, free_chunks_num(%rip)
	call	free
	movl	$1, %eax
	jmp	.L925
.L931:
	testb	%cl, %cl
	je	.L818
	movq	%rbx, %rdi
	xorl	%r12d, %r12d
	call	free
	jmp	.L819
.L841:
	movq	%rax, free_chunks_list(%rip)
	jmp	.L843
.L849:
	movq	%r14, free_chunks_list(%rip)
	jmp	.L850
.L835:
	movl	$933, %esi
	movl	$__func__.6102, %edi
	call	error_checking_malloc.part.0
.L828:
	movl	$94, %esi
	movl	$__func__.5779, %edi
	call	error_checking_malloc.part.0
.L938:
	movq	%rbx, %rdx
	movq	%rbp, %rbx
	jmp	.L862
.L930:
	movl	$1027, %esi
	movl	$__func__.6118, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE134:
	.size	managed_secure_free, .-managed_secure_free
	.p2align 4,,15
	.globl	error_checking_managed_secure_malloc
	.type	error_checking_managed_secure_malloc, @function
error_checking_managed_secure_malloc:
.LFB135:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L958
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rsi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	leaq	3(%rdi), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	testq	%rdi, %rdi
	movq	free_chunks_list(%rip), %r13
	cmovns	%rdi, %rbp
	sarq	$2, %rbp
	leaq	0(,%rbp,4), %rcx
	leaq	1(%rbp), %rax
	movq	%r13, %rbx
	cmpq	%rcx, %rdi
	cmovg	%rax, %rbp
	testq	%r13, %r13
	je	.L947
	.p2align 4,,10
	.p2align 3
.L977:
	cmpq	%rbp, (%rbx)
	jge	.L946
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L977
.L947:
	movl	%edx, %esi
	movq	%r15, %rdi
	call	error_checking_managed_secure_malloc.part.3
	.p2align 4,,10
	.p2align 3
.L946:
	movl	$32, %edi
	movl	%edx, 12(%rsp)
	movq	8(%rbx), %r14
	movq	allocated_chunks_list(%rip), %r12
	call	malloc
	testq	%rax, %rax
	movl	12(%rsp), %edx
	je	.L990
	testq	%r12, %r12
	movq	%rbp, (%rax)
	movq	%r14, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	je	.L949
	movq	%r12, 16(%rax)
	movq	%rax, 24(%r12)
	movq	$0, 24(%rax)
.L949:
	movq	(%rbx), %rcx
	addq	$1, allocated_chunks_num(%rip)
	movq	%rax, allocated_chunks_list(%rip)
	cmpq	%rcx, %rbp
	je	.L991
	leaq	0(%rbp,%rbp,8), %rax
	addq	%rax, 8(%rbx)
	subq	%rbp, %rcx
	movq	%rcx, (%rbx)
.L955:
	testq	%r14, %r14
	je	.L947
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	movq	%r14, %rax
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L958:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L991:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	16(%rbx), %rbp
	movq	24(%rbx), %rax
	movl	%edx, 12(%rsp)
	testq	%rbp, %rbp
	sete	%sil
	testq	%rax, %rax
	sete	%cl
	je	.L992
.L951:
	testq	%rax, %rax
	jne	.L993
.L953:
	testq	%rbp, %rbp
	jne	.L994
.L954:
	movq	%rax, 24(%rbp)
	movq	%rbx, %rdi
	movq	%rbp, 16(%rax)
	call	free
	movl	12(%rsp), %edx
.L952:
	movq	%r13, free_chunks_list(%rip)
	subq	$1, free_chunks_num(%rip)
	jmp	.L955
.L994:
	testb	%cl, %cl
	je	.L954
	movq	$0, 24(%rbp)
	movq	%rbx, %rdi
	movq	%rbp, %r13
	call	free
	movl	12(%rsp), %edx
	jmp	.L952
.L993:
	testb	%sil, %sil
	je	.L953
	movq	$0, 16(%rax)
	movq	%rbx, %rdi
	call	free
	movl	12(%rsp), %edx
	jmp	.L952
.L992:
	testb	%sil, %sil
	je	.L951
	movq	%rbx, %rdi
	xorl	%r13d, %r13d
	call	free
	movl	12(%rsp), %edx
	jmp	.L952
.L990:
	movl	$94, %esi
	movl	$__func__.5779, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE135:
	.size	error_checking_managed_secure_malloc, .-error_checking_managed_secure_malloc
	.p2align 4,,15
	.globl	insert_data_into_normal_array
	.type	insert_data_into_normal_array, @function
insert_data_into_normal_array:
.LFB136:
	.cfi_startproc
	testq	%rdi, %rdi
	jle	.L995
	leaq	16(%rsi), %rax
	cmpq	%rax, %rdx
	leaq	16(%rdx), %rax
	setnb	%cl
	cmpq	%rax, %rsi
	setnb	%al
	orb	%al, %cl
	je	.L997
	cmpq	$15, %rdi
	jbe	.L997
	movq	%rdi, %r8
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	shrq	$4, %r8
	movq	%r8, %rax
	salq	$4, %rax
.L1003:
	movdqu	(%rdx,%rcx), %xmm0
	addq	$1, %r9
	movdqu	%xmm0, (%rsi,%rcx)
	addq	$16, %rcx
	cmpq	%r9, %r8
	ja	.L1003
	cmpq	%rax, %rdi
	je	.L995
	movslq	%eax, %rcx
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	1(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L995
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	2(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L995
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	3(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L995
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	4(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L995
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	5(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L995
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	6(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L995
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	7(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L995
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	8(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L995
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	9(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L995
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	10(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L995
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	11(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L995
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	12(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L995
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	13(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L995
	movzbl	(%rdx,%rcx), %r8d
	addl	$14, %eax
	cltq
	cmpq	%rax, %rdi
	movb	%r8b, (%rsi,%rcx)
	jle	.L1013
	movzbl	(%rdx,%rax), %edx
	movb	%dl, (%rsi,%rax)
	ret
	.p2align 4,,10
	.p2align 3
.L997:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1005:
	movzbl	(%rdx,%rax), %ecx
	movb	%cl, (%rsi,%rax)
	addq	$1, %rax
	cmpq	%rax, %rdi
	jne	.L1005
	.p2align 4,,10
	.p2align 3
.L995:
	rep ret
	.p2align 4,,10
	.p2align 3
.L1013:
	rep ret
	.cfi_endproc
.LFE136:
	.size	insert_data_into_normal_array, .-insert_data_into_normal_array
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"Zero hex test printing: 0x%02x \n"
	.section	.rodata.str1.1
.LC16:
	.string	"Starting mem test"
.LC17:
	.string	"chunks:%ld\n"
.LC18:
	.string	"After init, print mem"
.LC21:
	.string	"Trying to secure malloc"
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"After malloc,try to insert some data"
	.align 8
.LC23:
	.string	"Now let's retrieve the data and display them"
	.section	.rodata.str1.1
.LC24:
	.string	"%d "
	.section	.rodata.str1.8
	.align 8
.LC25:
	.string	"Again, Trying to secure malloc"
	.align 8
.LC26:
	.string	"Again, after malloc,try to insert some data"
	.align 8
.LC27:
	.string	"After displaying the two arrays:"
	.section	.rodata.str1.1
.LC28:
	.string	"After freeing one of them:"
	.section	.rodata.str1.8
	.align 8
.LC29:
	.string	"Now trying to store and retrieve 424242424..."
	.section	.rodata.str1.1
.LC30:
	.string	"\n\n%d \n\n"
.LC31:
	.string	"After retrieving int:"
	.section	.rodata.str1.8
	.align 8
.LC32:
	.string	"After freeing the second array:"
	.section	.rodata.str1.1
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
	.section	.rodata.str1.8
	.align 8
.LC44:
	.string	"Array wrapper function testing"
	.section	.rodata.str1.1
.LC48:
	.string	"array index 2 is %lf\n"
.LC49:
	.string	"array index 3 is %lf\n"
.LC50:
	.string	"\n\n"
	.section	.rodata.str1.8
	.align 8
.LC51:
	.string	"After data retrieval, print mem"
	.section	.rodata.str1.1
.LC52:
	.string	"Mem test done"
	.text
	.p2align 4,,15
	.globl	mem_test
	.type	mem_test, @function
mem_test:
.LFB137:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	xorl	%edx, %edx
	movl	$.LC15, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	xorl	%ebx, %ebx
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	call	__printf_chk
	movl	$.LC16, %edi
	call	puts
	movq	entire_memory_chunk(%rip), %rax
	movabsq	$2049638230412172402, %rdx
	movl	$.LC17, %esi
	movl	$1, %edi
	movq	%rax, 8(%rsp)
	movq	total_bytes_allocated(%rip), %rax
	leaq	5(%rax), %rcx
	movq	%rcx, %rax
	sarq	$63, %rcx
	imulq	%rdx
	xorl	%eax, %eax
	subq	%rcx, %rdx
	call	__printf_chk
	movl	$.LC18, %edi
	call	puts
	movl	$.LC9, %edi
	call	puts
	cmpq	$0, total_bytes_allocated(%rip)
	movq	8(%rsp), %rbp
	jle	.L1018
	.p2align 4,,10
	.p2align 3
.L1107:
	movzbl	0(%rbp,%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC10, %esi
	movl	$1, %edi
	addq	$1, %rbx
	call	__printf_chk
	cmpq	total_bytes_allocated(%rip), %rbx
	jl	.L1107
.L1018:
	movl	$10, %edi
	call	putchar
	movl	$80, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r15
	je	.L1116
	movl	$80, %edi
	call	malloc
	testq	%rax, %rax
	je	.L1117
	movq	%r15, %rax
	andl	$15, %eax
	shrq	$2, %rax
	negq	%rax
	andl	$3, %eax
	movq	%rax, 24(%rsp)
	je	.L1079
	cmpq	$1, %rax
	movl	$25, (%r15)
	jbe	.L1080
	cmpq	$2, %rax
	movl	$36, 4(%r15)
	jbe	.L1081
	movl	$49, 8(%r15)
	movl	$17, %edx
	movl	$8, %eax
.L1021:
	movq	$20, 16(%rsp)
	movq	24(%rsp), %rdi
	subq	%rdi, 16(%rsp)
	movq	%rax, 40(%rsp)
	movq	16(%rsp), %rbx
	movq	40(%rsp), %xmm1
	movdqa	.LC19(%rip), %xmm2
	leaq	(%r15,%rdi,4), %rdi
	shrq	$2, %rbx
	movq	%rdi, 40(%rsp)
	leaq	0(,%rbx,4), %rsi
	movdqa	.LC20(%rip), %xmm0
	cmpq	$4, %rbx
	movq	%rbx, 48(%rsp)
	movq	%rsi, 32(%rsp)
	leaq	1(%rax), %rsi
	movq	%rsi, (%rsp)
	movhps	(%rsp), %xmm1
	paddq	%xmm1, %xmm2
	paddq	%xmm1, %xmm0
	shufps	$136, %xmm0, %xmm1
	movdqa	%xmm1, %xmm3
	pmuludq	%xmm1, %xmm3
	psrlq	$32, %xmm1
	pshufd	$8, %xmm3, %xmm0
	pmuludq	%xmm1, %xmm1
	pshufd	$8, %xmm1, %xmm1
	punpckldq	%xmm1, %xmm0
	movdqa	.LC19(%rip), %xmm1
	movdqu	%xmm0, (%rdi)
	paddq	%xmm2, %xmm1
	movdqa	.LC20(%rip), %xmm0
	paddq	%xmm2, %xmm0
	shufps	$136, %xmm0, %xmm2
	movdqa	%xmm2, %xmm4
	pmuludq	%xmm2, %xmm4
	psrlq	$32, %xmm2
	pshufd	$8, %xmm4, %xmm0
	pmuludq	%xmm2, %xmm2
	pshufd	$8, %xmm2, %xmm2
	punpckldq	%xmm2, %xmm0
	movdqa	.LC19(%rip), %xmm2
	movdqu	%xmm0, 16(%rdi)
	paddq	%xmm1, %xmm2
	movdqa	.LC20(%rip), %xmm0
	paddq	%xmm1, %xmm0
	shufps	$136, %xmm0, %xmm1
	movdqa	%xmm1, %xmm5
	pmuludq	%xmm1, %xmm5
	psrlq	$32, %xmm1
	pshufd	$8, %xmm5, %xmm0
	pmuludq	%xmm1, %xmm1
	pshufd	$8, %xmm1, %xmm1
	punpckldq	%xmm1, %xmm0
	movdqa	.LC19(%rip), %xmm1
	movdqu	%xmm0, 32(%rdi)
	paddq	%xmm2, %xmm1
	movdqa	.LC20(%rip), %xmm0
	paddq	%xmm2, %xmm0
	shufps	$136, %xmm0, %xmm2
	movdqa	%xmm2, %xmm6
	pmuludq	%xmm2, %xmm6
	psrlq	$32, %xmm2
	pshufd	$8, %xmm6, %xmm0
	pmuludq	%xmm2, %xmm2
	pshufd	$8, %xmm2, %xmm2
	punpckldq	%xmm2, %xmm0
	movdqu	%xmm0, 48(%rdi)
	jbe	.L1023
	movdqa	.LC20(%rip), %xmm0
	paddq	%xmm1, %xmm0
	shufps	$136, %xmm0, %xmm1
	movdqa	%xmm1, %xmm7
	pmuludq	%xmm1, %xmm7
	psrlq	$32, %xmm1
	pshufd	$8, %xmm7, %xmm0
	pmuludq	%xmm1, %xmm1
	pshufd	$8, %xmm1, %xmm1
	punpckldq	%xmm1, %xmm0
	movdqu	%xmm0, 64(%rdi)
.L1023:
	movq	32(%rsp), %rbx
	movq	16(%rsp), %rdi
	addq	%rbx, %rax
	subq	%rbx, %rdx
	cmpq	%rdi, %rbx
	je	.L1024
	movl	%eax, %ecx
	imull	%eax, %ecx
	cmpq	$1, %rdx
	movl	%ecx, -20(%r15,%rax,4)
	leaq	1(%rax), %rcx
	je	.L1024
	movl	%ecx, %esi
	addq	$2, %rax
	imull	%ecx, %esi
	cmpq	$2, %rdx
	movl	%esi, -20(%r15,%rcx,4)
	je	.L1024
	movl	%eax, %edx
	imull	%eax, %edx
	movl	%edx, -20(%r15,%rax,4)
.L1024:
	movl	$.LC21, %edi
	call	puts
	movl	$80, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, (%rsp)
	je	.L1118
	movl	$.LC22, %edi
	call	puts
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movq	(%rsp), %rsi
	jmp	.L1031
	.p2align 4,,10
	.p2align 3
.L1120:
	movzbl	(%r15,%rdx), %ecx
	cmpq	$79, %rdx
	movb	%cl, (%rsi,%rax)
	je	.L1082
	movzbl	1(%r15,%rdx), %ecx
	movb	%cl, 1(%rsi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$79, %rcx
	jg	.L1084
	movzbl	2(%r15,%rdx), %ecx
	movb	%cl, 2(%rsi,%rax)
	leaq	3(%rdx), %rcx
	cmpq	$79, %rcx
	jg	.L1084
	movzbl	3(%r15,%rdx), %ecx
	addq	$4, %rdx
	movb	%cl, 3(%rsi,%rax)
.L1028:
	addq	$4, %rax
	cmpq	$79, %rdx
	movl	$1, %ecx
	jg	.L1119
.L1031:
	testl	%ecx, %ecx
	je	.L1120
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$79, %rdx
	jle	.L1031
.L1119:
	movl	$.LC23, %edi
	call	puts
	movl	$4, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r14
	je	.L1121
	movq	(%rsp), %r13
	leaq	1(%rax), %rbx
	leaq	2(%rax), %rbp
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L1034:
	movzbl	0(%r13), %eax
	movl	$.LC24, %esi
	movl	$1, %edi
	addq	$1, %r12
	addq	$9, %r13
	movb	%al, (%r14)
	movzbl	-8(%r13), %eax
	movb	%al, (%rbx)
	movzbl	-7(%r13), %eax
	movb	%al, 0(%rbp)
	movzbl	-6(%r13), %eax
	movb	%al, 3(%r14)
	movl	(%r14), %edx
	xorl	%eax, %eax
	call	__printf_chk
	cmpq	$20, %r12
	jne	.L1034
	movl	$10, %edi
	call	putchar
	movl	$.LC25, %edi
	call	puts
	movl	$80, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, %r12
	je	.L1122
	movq	24(%rsp), %rax
	testq	%rax, %rax
	je	.L1085
	cmpq	$1, %rax
	movl	$15, (%r15)
	jbe	.L1086
	cmpq	$2, %rax
	movl	$18, 4(%r15)
	jbe	.L1087
	movl	$21, 8(%r15)
	movl	$17, %edx
	movl	$8, %eax
.L1036:
	leaq	1(%rax), %rdi
	movq	%rax, 56(%rsp)
	cmpq	$4, 48(%rsp)
	movq	56(%rsp), %xmm0
	movq	%rdi, 24(%rsp)
	movq	40(%rsp), %rdi
	movhps	24(%rsp), %xmm0
	movdqa	.LC20(%rip), %xmm2
	movdqa	%xmm0, %xmm7
	paddq	%xmm0, %xmm2
	movdqa	.LC19(%rip), %xmm1
	shufps	$136, %xmm2, %xmm7
	paddq	%xmm0, %xmm1
	movdqa	.LC20(%rip), %xmm2
	movdqa	%xmm7, %xmm0
	paddq	%xmm1, %xmm2
	pslld	$1, %xmm0
	paddd	%xmm7, %xmm0
	movdqa	%xmm1, %xmm7
	movdqu	%xmm0, (%rdi)
	shufps	$136, %xmm2, %xmm7
	movdqa	.LC19(%rip), %xmm0
	movdqa	.LC20(%rip), %xmm2
	paddq	%xmm1, %xmm0
	movdqa	%xmm7, %xmm1
	movdqa	%xmm0, %xmm3
	paddq	%xmm0, %xmm2
	pslld	$1, %xmm1
	shufps	$136, %xmm2, %xmm3
	paddd	%xmm7, %xmm1
	movdqu	%xmm1, 16(%rdi)
	movdqa	.LC19(%rip), %xmm1
	movdqa	.LC20(%rip), %xmm2
	paddq	%xmm0, %xmm1
	movdqa	%xmm1, %xmm4
	movdqa	%xmm3, %xmm0
	paddq	%xmm1, %xmm2
	shufps	$136, %xmm2, %xmm4
	pslld	$1, %xmm0
	paddd	%xmm3, %xmm0
	movdqu	%xmm0, 32(%rdi)
	movdqa	.LC19(%rip), %xmm0
	paddq	%xmm1, %xmm0
	movdqa	%xmm4, %xmm1
	pslld	$1, %xmm1
	paddd	%xmm4, %xmm1
	movdqu	%xmm1, 48(%rdi)
	jbe	.L1038
	movdqa	.LC20(%rip), %xmm1
	paddq	%xmm0, %xmm1
	shufps	$136, %xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	pslld	$1, %xmm1
	paddd	%xmm0, %xmm1
	movdqu	%xmm1, 64(%rdi)
.L1038:
	movq	32(%rsp), %rdi
	movq	16(%rsp), %rsi
	addq	%rdi, %rax
	subq	%rdi, %rdx
	cmpq	%rsi, %rdi
	je	.L1039
	leal	(%rax,%rax,2), %esi
	cmpq	$1, %rdx
	movl	%esi, -20(%r15,%rax,4)
	leaq	1(%rax), %rsi
	je	.L1039
	leal	(%rsi,%rsi,2), %edi
	addq	$2, %rax
	cmpq	$2, %rdx
	movl	%edi, -20(%r15,%rsi,4)
	je	.L1039
	leal	(%rax,%rax,2), %edx
	movl	%edx, -20(%r15,%rax,4)
.L1039:
	movl	$.LC26, %edi
	call	puts
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.L1045
	.p2align 4,,10
	.p2align 3
.L1124:
	movzbl	(%r15,%rax), %ecx
	cmpq	$79, %rax
	movb	%cl, (%r12,%rdx)
	je	.L1088
	movzbl	1(%r15,%rax), %ecx
	movb	%cl, 1(%r12,%rdx)
	leaq	2(%rax), %rcx
	cmpq	$79, %rcx
	jg	.L1090
	movzbl	2(%r15,%rax), %ecx
	movb	%cl, 2(%r12,%rdx)
	leaq	3(%rax), %rcx
	cmpq	$79, %rcx
	jg	.L1090
	movzbl	3(%r15,%rax), %ecx
	addq	$4, %rax
	movb	%cl, 3(%r12,%rdx)
.L1042:
	addq	$4, %rdx
	cmpq	$79, %rax
	movl	$1, %esi
	jg	.L1123
.L1045:
	testl	%esi, %esi
	je	.L1124
	addq	$5, %rdx
	xorl	%esi, %esi
	cmpq	$79, %rax
	jle	.L1045
.L1123:
	movl	$.LC23, %edi
	movq	%r12, %r15
	xorl	%r13d, %r13d
	call	puts
	.p2align 4,,10
	.p2align 3
.L1047:
	movzbl	(%r15), %eax
	movl	$.LC24, %esi
	movl	$1, %edi
	addq	$1, %r13
	addq	$9, %r15
	movb	%al, (%r14)
	movzbl	-8(%r15), %eax
	movb	%al, (%rbx)
	movzbl	-7(%r15), %eax
	movb	%al, 0(%rbp)
	movzbl	-6(%r15), %eax
	movb	%al, 3(%r14)
	movl	(%r14), %edx
	xorl	%eax, %eax
	call	__printf_chk
	cmpq	$20, %r13
	jne	.L1047
	movl	$10, %edi
	call	putchar
	movl	$.LC27, %edi
	call	puts
	xorl	%eax, %eax
	call	print_lists
	movq	%r12, %rdi
	call	managed_secure_free
	movl	$.LC28, %edi
	call	puts
	xorl	%eax, %eax
	call	print_lists
	movl	$.LC29, %edi
	call	puts
	movl	$4, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, %rbp
	je	.L1125
	movl	$25, %r13d
	movb	$-8, (%rax)
	movb	$108, 1(%rax)
	movb	$73, 2(%rax)
	movb	%r13b, 3(%rax)
	movq	%r14, %rdi
	movl	$424242424, (%r14)
	call	free
	movl	$4, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L1126
	movzbl	0(%rbp), %eax
	movb	%r13b, 3(%rbx)
	movl	$.LC30, %esi
	movl	$1, %edi
	movb	%al, (%rbx)
	movzbl	1(%rbp), %eax
	movb	%al, 1(%rbx)
	movzbl	2(%rbp), %eax
	movb	%al, 2(%rbx)
	movl	(%rbx), %edx
	xorl	%eax, %eax
	call	__printf_chk
	movq	%rbx, %rdi
	call	free
	movl	$.LC31, %edi
	call	puts
	xorl	%eax, %eax
	call	print_lists
	movq	(%rsp), %rdi
	call	managed_secure_free
	movl	$.LC32, %edi
	call	puts
	xorl	%eax, %eax
	call	print_lists
	movq	%rbp, %rdi
	call	managed_secure_free
	movl	$.LC33, %edi
	call	puts
	xorl	%eax, %eax
	call	print_lists
	movl	$.LC34, %edi
	call	puts
	movl	$4, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	je	.L1127
	movl	$1, %ecx
	movl	$-98, %esi
	movl	$-122, %ebx
	xorl	%edx, %edx
	movb	%sil, (%rax)
	movb	%cl, 2(%rax)
	movb	%bl, 1(%rax)
	movb	$0, 3(%rax)
	movb	%sil, %dl
	movl	%ecx, %eax
	movb	%bl, %dh
	movl	$.LC35, %esi
	andl	$1, %eax
	movzwl	%dx, %edx
	movl	$1, %edi
	sall	$16, %eax
	movl	$99998, 76(%rsp)
	orl	%eax, %edx
	xorl	%eax, %eax
	call	__printf_chk
	movl	$1, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	je	.L1128
	movb	$98, (%rax)
	movl	$98, %edx
	movl	$.LC36, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$8, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L1129
	movq	$54545454, 96(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L1057
	.p2align 4,,10
	.p2align 3
.L1131:
	movzbl	96(%rsp,%rdx), %ecx
	movb	%cl, (%rbx,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L1091
	movzbl	97(%rsp,%rdx), %ecx
	movb	%cl, 1(%rbx,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L1093
	movzbl	96(%rsp,%rcx), %ecx
	movb	%cl, 2(%rbx,%rax)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L1093
	movzbl	96(%rsp,%rcx), %ecx
	addq	$4, %rdx
	movb	%cl, 3(%rbx,%rax)
.L1054:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L1130
.L1057:
	testl	%ecx, %ecx
	je	.L1131
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L1057
.L1130:
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L1062
	.p2align 4,,10
	.p2align 3
.L1133:
	movzbl	(%rbx,%rax), %ecx
	movb	%cl, 128(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L1094
	movzbl	1(%rbx,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%sil, 129(%rsp,%rdx)
	jg	.L1096
	movzbl	2(%rbx,%rax), %esi
	movb	%sil, 128(%rsp,%rcx)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L1096
	movzbl	3(%rbx,%rax), %esi
	addq	$4, %rdx
	movb	%sil, 128(%rsp,%rcx)
.L1059:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L1132
.L1062:
	testl	%ecx, %ecx
	je	.L1133
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L1062
.L1132:
	movq	128(%rsp), %rdx
	movl	$.LC37, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$.LC38, %edi
	call	puts
	xorl	%eax, %eax
	call	print_lists
	movq	%rbx, %rdi
	call	managed_secure_free
	movl	$.LC39, %edi
	call	puts
	xorl	%eax, %eax
	call	print_lists
	movl	$1, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	je	.L1134
	movl	$97, %edx
	movl	$.LC36, %esi
	movb	$97, (%rax)
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$.LC40, %edi
	call	puts
	xorl	%eax, %eax
	call	print_lists
	movl	$8, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	je	.L1135
	movsd	.LC41(%rip), %xmm3
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	movsd	%xmm3, 112(%rsp)
	jmp	.L1069
	.p2align 4,,10
	.p2align 3
.L1137:
	movzbl	112(%rsp,%rdx), %esi
	movb	%sil, (%rax,%rcx)
	leaq	1(%rdx), %rsi
	cmpq	$8, %rsi
	je	.L1097
	movzbl	113(%rsp,%rdx), %esi
	movb	%sil, 1(%rax,%rcx)
	leaq	2(%rdx), %rsi
	cmpq	$7, %rsi
	jg	.L1099
	movzbl	112(%rsp,%rsi), %esi
	movb	%sil, 2(%rax,%rcx)
	leaq	3(%rdx), %rsi
	cmpq	$7, %rsi
	jg	.L1099
	movzbl	112(%rsp,%rsi), %esi
	addq	$4, %rdx
	movb	%sil, 3(%rax,%rcx)
.L1066:
	addq	$4, %rcx
	cmpq	$7, %rdx
	movl	$1, %esi
	jg	.L1136
.L1069:
	testl	%esi, %esi
	je	.L1137
	addq	$5, %rcx
	xorl	%esi, %esi
	cmpq	$7, %rdx
	jle	.L1069
.L1136:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	jmp	.L1074
	.p2align 4,,10
	.p2align 3
.L1139:
	movzbl	(%rax,%rcx), %esi
	movb	%sil, 128(%rsp,%rdx)
	leaq	1(%rdx), %rsi
	cmpq	$8, %rsi
	je	.L1100
	movzbl	1(%rax,%rcx), %edi
	leaq	2(%rdx), %rsi
	cmpq	$7, %rsi
	movb	%dil, 129(%rsp,%rdx)
	jg	.L1102
	movzbl	2(%rax,%rcx), %edi
	movb	%dil, 128(%rsp,%rsi)
	leaq	3(%rdx), %rsi
	cmpq	$7, %rsi
	jg	.L1102
	movzbl	3(%rax,%rcx), %edi
	addq	$4, %rdx
	movb	%dil, 128(%rsp,%rsi)
.L1071:
	addq	$4, %rcx
	cmpq	$7, %rdx
	movl	$1, %esi
	jg	.L1138
.L1074:
	testl	%esi, %esi
	je	.L1139
	addq	$5, %rcx
	xorl	%esi, %esi
	cmpq	$7, %rdx
	jle	.L1074
.L1138:
	movsd	128(%rsp), %xmm0
	movl	$.LC42, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	movl	$.LC43, %edi
	call	puts
	xorl	%eax, %eax
	call	print_lists
	movl	$.LC44, %edi
	call	puts
	movl	$80, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L1140
	movsd	.LC45(%rip), %xmm4
	leaq	80(%rsp), %rdi
	movq	%rax, %rsi
	movl	$2, %edx
	movsd	%xmm4, 80(%rsp)
	call	set_secure_data.constprop.18
	movsd	.LC46(%rip), %xmm5
	leaq	80(%rsp), %rdi
	movq	%rbx, %rsi
	movl	$3, %edx
	movsd	%xmm5, 80(%rsp)
	call	set_secure_data.constprop.18
	movsd	.LC47(%rip), %xmm6
	leaq	80(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	%rbx, %rsi
	movsd	%xmm6, 80(%rsp)
	call	get_secure_data.constprop.22
	movsd	80(%rsp), %xmm0
	movl	$.LC48, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	leaq	80(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movq	%rbx, %rsi
	call	get_secure_data.constprop.22
	movsd	80(%rsp), %xmm0
	movl	$.LC49, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	leaq	128(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movq	%rbx, %rsi
	xorl	%ebx, %ebx
	call	get_secure_data.constprop.22
	movsd	128(%rsp), %xmm0
	movl	$.LC49, %esi
	movl	$1, %edi
	movl	$1, %eax
	movsd	%xmm0, 80(%rsp)
	call	__printf_chk
	movl	$.LC50, %edi
	call	puts
	movl	$.LC51, %edi
	call	puts
	movl	$.LC9, %edi
	call	puts
	cmpq	$0, total_bytes_allocated(%rip)
	movq	8(%rsp), %rbp
	jle	.L1077
	.p2align 4,,10
	.p2align 3
.L1108:
	movzbl	0(%rbp,%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC10, %esi
	movl	$1, %edi
	addq	$1, %rbx
	call	__printf_chk
	cmpq	total_bytes_allocated(%rip), %rbx
	jl	.L1108
.L1077:
	movl	$10, %edi
	call	putchar
	movl	$.LC52, %edi
	call	puts
	addq	$152, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1084:
	.cfi_restore_state
	movq	%rcx, %rdx
	jmp	.L1028
	.p2align 4,,10
	.p2align 3
.L1102:
	movq	%rsi, %rdx
	jmp	.L1071
	.p2align 4,,10
	.p2align 3
.L1099:
	movq	%rsi, %rdx
	jmp	.L1066
	.p2align 4,,10
	.p2align 3
.L1096:
	movq	%rcx, %rdx
	jmp	.L1059
	.p2align 4,,10
	.p2align 3
.L1093:
	movq	%rcx, %rdx
	jmp	.L1054
	.p2align 4,,10
	.p2align 3
.L1090:
	movq	%rcx, %rax
	jmp	.L1042
	.p2align 4,,10
	.p2align 3
.L1085:
	movl	$20, %edx
	movl	$5, %eax
	jmp	.L1036
	.p2align 4,,10
	.p2align 3
.L1079:
	movl	$20, %edx
	movl	$5, %eax
	jmp	.L1021
	.p2align 4,,10
	.p2align 3
.L1100:
	movl	$8, %edx
	jmp	.L1071
	.p2align 4,,10
	.p2align 3
.L1097:
	movl	$8, %edx
	jmp	.L1066
	.p2align 4,,10
	.p2align 3
.L1082:
	movl	$80, %edx
	jmp	.L1028
	.p2align 4,,10
	.p2align 3
.L1094:
	movl	$8, %edx
	jmp	.L1059
	.p2align 4,,10
	.p2align 3
.L1091:
	movl	$8, %edx
	jmp	.L1054
	.p2align 4,,10
	.p2align 3
.L1088:
	movl	$80, %eax
	jmp	.L1042
.L1087:
	movl	$18, %edx
	movl	$7, %eax
	jmp	.L1036
.L1086:
	movl	$19, %edx
	movl	$6, %eax
	jmp	.L1036
.L1081:
	movl	$18, %edx
	movl	$7, %eax
	jmp	.L1021
.L1080:
	movl	$19, %edx
	movl	$6, %eax
	jmp	.L1021
.L1125:
	movl	$120, %esi
	movl	$__func__.6169, %edi
	call	error_checking_managed_secure_malloc.part.3
.L1129:
	movl	$158, %esi
	movl	$__func__.6169, %edi
	call	error_checking_managed_secure_malloc.part.3
.L1128:
	movl	$152, %esi
	movl	$__func__.6169, %edi
	call	error_checking_managed_secure_malloc.part.3
.L1127:
	movl	$146, %esi
	movl	$__func__.6169, %edi
	call	error_checking_managed_secure_malloc.part.3
.L1126:
	movl	$124, %esi
	movl	$__func__.6169, %edi
	call	error_checking_malloc.part.0
.L1122:
	movl	$91, %esi
	movl	$__func__.6169, %edi
	call	error_checking_managed_secure_malloc.part.3
.L1121:
	movl	$78, %esi
	movl	$__func__.6169, %edi
	call	error_checking_malloc.part.0
.L1135:
	movl	$182, %esi
	movl	$__func__.6169, %edi
	call	error_checking_managed_secure_malloc.part.3
.L1134:
	movl	$172, %esi
	movl	$__func__.6169, %edi
	call	error_checking_managed_secure_malloc.part.3
.L1117:
	movl	$61, %esi
	movl	$__func__.6169, %edi
	call	error_checking_malloc.part.0
.L1118:
	movl	$70, %esi
	movl	$__func__.6169, %edi
	call	error_checking_managed_secure_malloc.part.3
.L1116:
	movl	$60, %esi
	movl	$__func__.6169, %edi
	call	error_checking_malloc.part.0
.L1140:
	movl	$193, %esi
	movl	$__func__.6169, %edi
	call	error_checking_managed_secure_malloc.part.3
	.cfi_endproc
.LFE137:
	.size	mem_test, .-mem_test
	.section	.rodata.str1.1
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
	.p2align 4,,15
	.globl	list_test
	.type	list_test, @function
list_test:
.LFB138:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	$.LC4, %edi
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	xorl	%ebp, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1259
	.p2align 4,,10
	.p2align 3
.L1227:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1227
.L1143:
	movl	$.LC5, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1260
	.p2align 4,,10
	.p2align 3
.L1228:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1228
.L1146:
	movl	$.LC53, %edi
	call	puts
	movl	$101, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	je	.L1261
.L1148:
	movl	$.LC4, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1262
	.p2align 4,,10
	.p2align 3
.L1229:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1229
.L1150:
	movl	$.LC5, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1263
	.p2align 4,,10
	.p2align 3
.L1230:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1230
.L1153:
	movl	$.LC55, %edi
	call	puts
	movl	$42, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, %r12
	je	.L1264
.L1155:
	movl	$.LC4, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1265
	.p2align 4,,10
	.p2align 3
.L1231:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1231
.L1157:
	movl	$.LC5, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1266
	.p2align 4,,10
	.p2align 3
.L1232:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1232
.L1160:
	movl	$.LC57, %edi
	call	puts
	movl	$61, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, %rbp
	je	.L1267
.L1162:
	movl	$.LC4, %edi
	xorl	%r13d, %r13d
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1268
	.p2align 4,,10
	.p2align 3
.L1233:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%r13, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %r13
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1233
.L1164:
	movl	$.LC5, %edi
	xorl	%r13d, %r13d
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1269
	.p2align 4,,10
	.p2align 3
.L1234:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%r13, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %r13
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1234
.L1167:
	movl	$.LC59, %edi
	call	puts
	movq	%r12, %rdi
	call	managed_secure_free
	testl	%eax, %eax
	je	.L1270
.L1169:
	movl	$.LC4, %edi
	xorl	%r12d, %r12d
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1271
	.p2align 4,,10
	.p2align 3
.L1235:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%r12, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %r12
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1235
.L1171:
	movl	$.LC5, %edi
	xorl	%r12d, %r12d
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1272
	.p2align 4,,10
	.p2align 3
.L1236:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%r12, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %r12
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1236
.L1174:
	movl	$.LC61, %edi
	call	puts
	movl	$80, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	je	.L1273
.L1176:
	movl	$.LC4, %edi
	xorl	%r12d, %r12d
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1274
	.p2align 4,,10
	.p2align 3
.L1237:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%r12, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %r12
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1237
.L1178:
	movl	$.LC5, %edi
	xorl	%r12d, %r12d
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1275
	.p2align 4,,10
	.p2align 3
.L1238:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%r12, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %r12
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1238
.L1181:
	movl	$.LC63, %edi
	call	puts
	movl	$29, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	je	.L1276
.L1183:
	movl	$.LC4, %edi
	xorl	%r12d, %r12d
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1277
	.p2align 4,,10
	.p2align 3
.L1239:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%r12, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %r12
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1239
.L1185:
	movl	$.LC5, %edi
	xorl	%r12d, %r12d
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1278
	.p2align 4,,10
	.p2align 3
.L1240:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%r12, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %r12
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1240
.L1188:
	movl	$.LC65, %edi
	call	puts
	movq	%rbp, %rdi
	call	managed_secure_free
	testl	%eax, %eax
	jne	.L1190
	movl	$.LC60, %edi
	call	puts
.L1190:
	movl	$.LC4, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1279
	.p2align 4,,10
	.p2align 3
.L1241:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1241
.L1192:
	movl	$.LC5, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L1280
	.p2align 4,,10
	.p2align 3
.L1242:
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	%rbp, %rdx
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1242
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1270:
	.cfi_restore_state
	movl	$.LC60, %edi
	call	puts
	jmp	.L1169
.L1276:
	movl	$.LC64, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1183
.L1267:
	movl	$.LC58, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1162
.L1273:
	movl	$.LC62, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1176
.L1261:
	movl	$.LC54, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1148
.L1264:
	movl	$.LC56, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1155
.L1277:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1185
.L1266:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1160
.L1265:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1157
.L1272:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1174
.L1271:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1171
.L1263:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1153
.L1262:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1150
.L1260:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1146
.L1259:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1143
.L1274:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1178
.L1268:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1164
.L1280:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	$.LC2, %edi
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	puts
.L1279:
	.cfi_restore_state
	movl	$.LC2, %edi
	call	puts
	jmp	.L1192
.L1269:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1167
.L1275:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1181
.L1278:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L1188
	.cfi_endproc
.LFE138:
	.size	list_test, .-list_test
	.section	.rodata.str1.1
.LC66:
	.string	"Need more mem!"
.LC67:
	.string	"setting"
.LC69:
	.string	"adding"
.LC70:
	.string	"printing"
.LC71:
	.string	"%lg "
	.section	.rodata.str1.8
	.align 8
.LC72:
	.string	"printing as blocks of data using arbitrary blocks"
	.section	.rodata.str1.1
.LC73:
	.string	"freeing"
	.text
	.p2align 4,,15
	.globl	simple_array_tests
	.type	simple_array_tests, @function
simple_array_tests:
.LFB139:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$4, %edi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	movl	%r9d, 44(%rsp)
	movl	%r10d, 40(%rsp)
	movl	%r11d, 32(%rsp)
	movl	%r8d, 24(%rsp)
	call	managed_secure_malloc
	movl	$8, %edi
	movq	%rax, %rbx
	call	managed_secure_malloc
	movl	$8, %edi
	movq	%rax, %rbp
	call	managed_secure_malloc
	leaq	184(%rsp), %rsi
	movq	%rbp, %rdx
	movl	$8, %edi
	movq	%rax, (%rsp)
	movq	$5, 184(%rsp)
	call	insert_data_into_mem
	movq	(%rsp), %rdx
	leaq	192(%rsp), %rax
	movl	$8, %edi
	movq	%rbp, 192(%rsp)
	movq	%rax, %rsi
	call	insert_data_into_mem
	movq	(%rsp), %rsi
	leaq	208(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	call	get_secure_data.constprop.22
	movq	208(%rsp), %rdx
	leaq	200(%rsp), %rsi
	movl	$8, %edi
	movq	$21, 200(%rsp)
	call	insert_data_into_mem
	leaq	208(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rbp, %rsi
	call	get_secure_data.constprop.22
	movq	208(%rsp), %rax
	leaq	0(,%rax,4), %rdi
	call	managed_secure_malloc
	leaq	208(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movq	%rax, 8(%rsp)
	call	get_secure_data.constprop.22
	movq	208(%rsp), %rax
	leaq	0(,%rax,4), %rdi
	call	managed_secure_malloc
	leaq	208(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movq	%rax, 16(%rsp)
	call	get_secure_data.constprop.22
	movq	208(%rsp), %rax
	leaq	0(,%rax,8), %rdi
	call	managed_secure_malloc
	xorl	%edx, %edx
	movq	%rax, (%rsp)
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movl	24(%rsp), %r8d
	movl	32(%rsp), %r11d
	movl	40(%rsp), %r10d
	movl	44(%rsp), %r9d
	jmp	.L1286
	.p2align 4,,10
	.p2align 3
.L1378:
	movzbl	0(%rbp,%rax), %ecx
	movb	%cl, 208(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L1348
	movzbl	1(%rbp,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%sil, 209(%rsp,%rdx)
	jg	.L1350
	movzbl	2(%rbp,%rax), %esi
	movb	%sil, 208(%rsp,%rcx)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L1350
	movzbl	3(%rbp,%rax), %esi
	addq	$4, %rdx
	movb	%sil, 208(%rsp,%rcx)
.L1283:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L1377
.L1286:
	testl	%ecx, %ecx
	je	.L1378
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L1286
.L1377:
	movq	208(%rsp), %rax
	movl	%r8d, 56(%rsp)
	movl	%r11d, 44(%rsp)
	movl	%r10d, 40(%rsp)
	movl	%r9d, 32(%rsp)
	leaq	0(,%rax,4), %rdi
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, 24(%rsp)
	movl	32(%rsp), %r9d
	movl	40(%rsp), %r10d
	movl	44(%rsp), %r11d
	movl	56(%rsp), %r8d
	je	.L1379
	movl	$.LC67, %edi
	movl	%r9d, 56(%rsp)
	movl	%r10d, 44(%rsp)
	movl	%r11d, 40(%rsp)
	movl	%r8d, 32(%rsp)
	call	puts
	leaq	136(%rsp), %rdi
	movq	%rbx, %rsi
	movl	$0, 136(%rsp)
	call	insert_data_into_mem.constprop.26
	xorl	%ecx, %ecx
	movl	32(%rsp), %r8d
	movl	40(%rsp), %r11d
	movq	%rbp, 48(%rsp)
	movl	%ecx, %edi
	movl	%r13d, 60(%rsp)
	movl	%r14d, 64(%rsp)
	movl	112(%rsp), %r13d
	xorl	%eax, %eax
	movl	116(%rsp), %r14d
	movl	120(%rsp), %ebp
	movq	%rax, %rsi
	movl	124(%rsp), %ecx
	movl	44(%rsp), %r10d
	xorl	%edx, %edx
	movl	56(%rsp), %r9d
	movl	%r8d, 68(%rsp)
	movl	%r11d, %eax
	.p2align 4,,10
	.p2align 3
.L1288:
	cmpq	$3, %rdx
	jg	.L1380
.L1293:
	testl	%edi, %edi
	jne	.L1290
	.p2align 4,,10
	.p2align 3
.L1385:
	movzbl	(%rbx,%rsi), %edi
	movb	%dil, 208(%rsp,%rdx)
	leaq	1(%rdx), %rdi
	cmpq	$4, %rdi
	je	.L1351
	movzbl	1(%rbx,%rsi), %r11d
	leaq	2(%rdx), %rdi
	cmpq	$3, %rdi
	movb	%r11b, 209(%rsp,%rdx)
	jg	.L1352
	movzbl	2(%rbx,%rsi), %r11d
	testq	%rdx, %rdx
	movb	%r11b, 208(%rsp,%rdi)
	jne	.L1381
	movzbl	3(%rbx,%rsi), %edx
	movb	%dl, 211(%rsp)
	movl	$4, %edx
.L1291:
	addq	$4, %rsi
	cmpq	$3, %rdx
	movl	$1, %edi
	jle	.L1293
.L1380:
	movslq	208(%rsp), %r11
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	48(%rsp), %r8
	movl	%eax, 32(%rsp)
	jmp	.L1298
	.p2align 4,,10
	.p2align 3
.L1383:
	movzbl	(%r8,%rdx), %edi
	movb	%dil, 208(%rsp,%rsi)
	leaq	1(%rsi), %rdi
	cmpq	$8, %rdi
	je	.L1353
	movzbl	1(%r8,%rdx), %eax
	leaq	2(%rsi), %rdi
	cmpq	$7, %rdi
	movb	%al, 209(%rsp,%rsi)
	jg	.L1355
	movzbl	2(%r8,%rdx), %eax
	movb	%al, 208(%rsp,%rdi)
	leaq	3(%rsi), %rdi
	cmpq	$7, %rdi
	jg	.L1355
	movzbl	3(%r8,%rdx), %eax
	addq	$4, %rsi
	movb	%al, 208(%rsp,%rdi)
.L1295:
	addq	$4, %rdx
	cmpq	$7, %rsi
	movl	$1, %edi
	jg	.L1382
.L1298:
	testl	%edi, %edi
	je	.L1383
	addq	$5, %rdx
	xorl	%edi, %edi
	cmpq	$7, %rsi
	jle	.L1298
.L1382:
	cmpq	208(%rsp), %r11
	movl	32(%rsp), %eax
	jge	.L1384
	movzbl	(%rbx), %r11d
	movzbl	1(%rbx), %edi
	movzbl	2(%rbx), %esi
	movzbl	3(%rbx), %edx
	movl	%ecx, 40(%rsp)
	movl	%eax, 32(%rsp)
	movb	%r11b, %r9b
	movq	%rdi, %rcx
	movb	%r11b, %r10b
	movq	%r9, %rax
	sall	$16, %esi
	sall	$24, %edx
	movb	%cl, %ah
	leaq	208(%rsp), %rdi
	movzwl	%ax, %r9d
	movq	%r10, %rax
	movb	%cl, %ah
	orl	%esi, %r9d
	movzwl	%ax, %r10d
	orl	%edx, %r9d
	orl	%esi, %r10d
	movq	8(%rsp), %rsi
	movl	%r9d, 56(%rsp)
	orl	%edx, %r10d
	leal	(%r9,%r9), %edx
	movl	%r10d, 44(%rsp)
	movl	%edx, 208(%rsp)
	movslq	%r10d, %rdx
	call	set_secure_data.constprop.19
	movzbl	(%rbx), %r11d
	movzbl	1(%rbx), %edi
	movzbl	2(%rbx), %esi
	movzbl	3(%rbx), %edx
	movb	%r11b, %r12b
	movq	%rdi, %rcx
	movq	%r12, %rax
	sall	$16, %esi
	sall	$24, %edx
	movb	%cl, %ah
	movl	40(%rsp), %ecx
	movzwl	%ax, %r12d
	movq	%rdi, %rax
	leaq	208(%rsp), %rdi
	orl	%esi, %r12d
	movb	%r11b, %cl
	orl	%edx, %r12d
	movb	%al, %ch
	movzwl	%cx, %ecx
	orl	%esi, %ecx
	movq	16(%rsp), %rsi
	orl	%edx, %ecx
	leal	(%r12,%r12,2), %edx
	movl	%ecx, 40(%rsp)
	movl	%edx, 208(%rsp)
	movslq	%ecx, %rdx
	call	set_secure_data.constprop.19
	movzbl	(%rbx), %r11d
	movzbl	1(%rbx), %edi
	movl	32(%rsp), %eax
	movzbl	2(%rbx), %esi
	movzbl	3(%rbx), %r8d
	movb	%r11b, %al
	movq	%rdi, %rcx
	movb	%r11b, %bpl
	movb	%cl, %ah
	sall	$16, %esi
	movq	%rdi, %rdx
	movzwl	%ax, %eax
	sall	$24, %r8d
	movq	%rbp, %rcx
	orl	%esi, %eax
	movb	%dl, %ch
	leaq	208(%rsp), %rdi
	orl	%r8d, %eax
	movzwl	%cx, %ebp
	cvtsi2sd	%eax, %xmm0
	orl	%esi, %ebp
	movq	(%rsp), %rsi
	orl	%r8d, %ebp
	movl	%eax, 32(%rsp)
	movslq	%ebp, %rdx
	mulsd	.LC68(%rip), %xmm0
	movsd	%xmm0, 208(%rsp)
	call	set_secure_data.constprop.18
	movzbl	(%rbx), %r11d
	movzbl	1(%rbx), %edi
	movzbl	2(%rbx), %esi
	movzbl	3(%rbx), %edx
	movb	%r11b, %r14b
	movb	%r11b, %r13b
	movq	%rdi, %rcx
	movq	%r14, %rax
	sall	$16, %esi
	movb	%cl, %ah
	sall	$24, %edx
	leaq	208(%rsp), %rdi
	movzwl	%ax, %r14d
	movq	%r13, %rax
	movb	%cl, %ah
	orl	%esi, %r14d
	movzwl	%ax, %r13d
	orl	%edx, %r14d
	orl	%esi, %r13d
	movq	24(%rsp), %rsi
	orl	%edx, %r13d
	leal	(%r14,%r14), %edx
	cvtsi2ss	%edx, %xmm0
	movslq	%r13d, %rdx
	movss	%xmm0, 208(%rsp)
	call	set_secure_data.constprop.19
	movb	(%rbx), %r15b
	movzbl	1(%rbx), %edx
	movzbl	2(%rbx), %esi
	movl	56(%rsp), %r9d
	movl	44(%rsp), %r10d
	movq	%r15, %rax
	movl	40(%rsp), %ecx
	movb	%dl, %ah
	movzbl	3(%rbx), %edx
	sall	$16, %esi
	movzwl	%ax, %r15d
	orl	%esi, %r15d
	sall	$24, %edx
	orl	%edx, %r15d
	leal	1(%r15), %edx
	movl	%edx, %eax
	movl	%edx, 140(%rsp)
	movb	%dl, (%rbx)
	shrw	$8, %ax
	movb	%al, 1(%rbx)
	movl	%edx, %eax
	shrl	$16, %eax
	shrl	$24, %edx
	xorl	%edi, %edi
	movb	%dl, 3(%rbx)
	xorl	%esi, %esi
	xorl	%edx, %edx
	testl	%edi, %edi
	movb	%al, 2(%rbx)
	movl	32(%rsp), %eax
	je	.L1385
.L1290:
	addq	$5, %rsi
	xorl	%edi, %edi
	jmp	.L1288
	.p2align 4,,10
	.p2align 3
.L1355:
	movq	%rdi, %rsi
	jmp	.L1295
	.p2align 4,,10
	.p2align 3
.L1351:
	movl	$4, %edx
	jmp	.L1291
	.p2align 4,,10
	.p2align 3
.L1353:
	movl	$8, %esi
	jmp	.L1295
	.p2align 4,,10
	.p2align 3
.L1352:
	movq	%rdi, %rdx
	jmp	.L1291
	.p2align 4,,10
	.p2align 3
.L1381:
	addq	$3, %rdx
	jmp	.L1291
.L1384:
	movl	68(%rsp), %r8d
	movl	$.LC69, %edi
	movq	48(%rsp), %rbp
	movl	60(%rsp), %r13d
	movl	64(%rsp), %r14d
	movl	%r8d, 32(%rsp)
	call	puts
	leaq	144(%rsp), %rdi
	movq	%rbx, %rsi
	movl	$0, 144(%rsp)
	call	insert_data_into_mem.constprop.26
	xorl	%eax, %eax
	movl	%r13d, 48(%rsp)
	movl	92(%rsp), %r12d
	movq	%rax, %rsi
	movq	%rbp, %r13
	movl	96(%rsp), %r15d
	movl	100(%rsp), %ebp
	movl	104(%rsp), %eax
	xorl	%ecx, %ecx
	movl	108(%rsp), %r9d
	movl	32(%rsp), %r8d
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L1300:
	cmpq	$3, %rdx
	jg	.L1386
.L1305:
	testl	%ecx, %ecx
	jne	.L1302
	.p2align 4,,10
	.p2align 3
.L1391:
	movzbl	(%rbx,%rsi), %ecx
	movb	%cl, 208(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$4, %rcx
	je	.L1356
	movzbl	1(%rbx,%rsi), %edi
	leaq	2(%rdx), %rcx
	cmpq	$3, %rcx
	movb	%dil, 209(%rsp,%rdx)
	jg	.L1357
	movzbl	2(%rbx,%rsi), %edi
	testq	%rdx, %rdx
	movb	%dil, 208(%rsp,%rcx)
	jne	.L1387
	movzbl	3(%rbx,%rsi), %edx
	movb	%dl, 211(%rsp)
	movl	$4, %edx
.L1303:
	addq	$4, %rsi
	cmpq	$3, %rdx
	movl	$1, %ecx
	jle	.L1305
.L1386:
	movslq	208(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.L1310
	.p2align 4,,10
	.p2align 3
.L1389:
	movzbl	0(%r13,%rdx), %esi
	movb	%sil, 208(%rsp,%rcx)
	leaq	1(%rcx), %rsi
	cmpq	$8, %rsi
	je	.L1358
	movzbl	1(%r13,%rdx), %r10d
	leaq	2(%rcx), %rsi
	cmpq	$7, %rsi
	movb	%r10b, 209(%rsp,%rcx)
	jg	.L1360
	movzbl	2(%r13,%rdx), %r10d
	movb	%r10b, 208(%rsp,%rsi)
	leaq	3(%rcx), %rsi
	cmpq	$7, %rsi
	jg	.L1360
	movzbl	3(%r13,%rdx), %r10d
	addq	$4, %rcx
	movb	%r10b, 208(%rsp,%rsi)
.L1307:
	addq	$4, %rdx
	cmpq	$7, %rcx
	movl	$1, %esi
	jg	.L1388
.L1310:
	testl	%esi, %esi
	je	.L1389
	addq	$5, %rdx
	xorl	%esi, %esi
	cmpq	$7, %rcx
	jle	.L1310
.L1388:
	cmpq	208(%rsp), %rdi
	jge	.L1390
	movb	(%rbx), %r8b
	movzbl	1(%rbx), %edx
	leaq	208(%rsp), %rdi
	movl	%eax, 40(%rsp)
	movzbl	2(%rbx), %ecx
	movq	8(%rsp), %rsi
	movl	%r9d, 44(%rsp)
	movq	%r8, %rax
	movb	%dl, %ah
	movzbl	3(%rbx), %edx
	sall	$16, %ecx
	movzwl	%ax, %r8d
	orl	%ecx, %r8d
	sall	$24, %edx
	orl	%edx, %r8d
	movl	$1, %edx
	movslq	%r8d, %rcx
	movl	%r8d, 56(%rsp)
	call	get_secure_data.constprop.23
	movl	44(%rsp), %r9d
	movzbl	1(%rbx), %edx
	leaq	208(%rsp), %rdi
	movb	(%rbx), %r9b
	movzbl	2(%rbx), %ecx
	movl	208(%rsp), %r11d
	movq	16(%rsp), %rsi
	movq	%r9, %rax
	movb	%dl, %ah
	movzbl	3(%rbx), %edx
	sall	$16, %ecx
	movzwl	%ax, %r9d
	movl	%r11d, 32(%rsp)
	orl	%ecx, %r9d
	sall	$24, %edx
	orl	%edx, %r9d
	movl	$1, %edx
	movslq	%r9d, %rcx
	movl	%r9d, 44(%rsp)
	call	get_secure_data.constprop.23
	movzbl	1(%rbx), %edx
	movl	40(%rsp), %eax
	leaq	208(%rsp), %rdi
	movb	(%rbx), %al
	movzbl	2(%rbx), %ecx
	movq	8(%rsp), %rsi
	movl	32(%rsp), %r11d
	movb	%dl, %ah
	movzbl	3(%rbx), %edx
	addl	%r11d, 208(%rsp)
	sall	$16, %ecx
	movzwl	%ax, %eax
	orl	%ecx, %eax
	sall	$24, %edx
	orl	%edx, %eax
	movslq	%eax, %rdx
	movl	%eax, 40(%rsp)
	call	set_secure_data.constprop.19
	movb	(%rbx), %bpl
	movzbl	1(%rbx), %edx
	leaq	208(%rsp), %rdi
	movzbl	2(%rbx), %ecx
	movq	(%rsp), %rsi
	movq	%rbp, %rax
	movb	%dl, %ah
	movzbl	3(%rbx), %edx
	sall	$16, %ecx
	movzwl	%ax, %ebp
	orl	%ecx, %ebp
	sall	$24, %edx
	orl	%edx, %ebp
	movl	$1, %edx
	movslq	%ebp, %rcx
	call	get_secure_data.constprop.22
	movb	(%rbx), %r15b
	movzbl	1(%rbx), %edx
	leaq	208(%rsp), %rdi
	movzbl	2(%rbx), %ecx
	movq	24(%rsp), %rsi
	movsd	208(%rsp), %xmm1
	movq	%r15, %rax
	movb	%dl, %ah
	movzbl	3(%rbx), %edx
	movsd	%xmm1, 32(%rsp)
	sall	$16, %ecx
	movzwl	%ax, %r15d
	orl	%ecx, %r15d
	sall	$24, %edx
	orl	%edx, %r15d
	movl	$1, %edx
	movslq	%r15d, %rcx
	call	get_secure_data.constprop.23
	movb	(%rbx), %r12b
	movzbl	1(%rbx), %edx
	movss	208(%rsp), %xmm0
	movzbl	2(%rbx), %ecx
	movq	(%rsp), %rsi
	leaq	208(%rsp), %rdi
	cvtps2pd	%xmm0, %xmm0
	movq	%r12, %rax
	movb	%dl, %ah
	movzbl	3(%rbx), %edx
	addsd	32(%rsp), %xmm0
	sall	$16, %ecx
	movzwl	%ax, %r12d
	orl	%ecx, %r12d
	sall	$24, %edx
	orl	%edx, %r12d
	movslq	%r12d, %rdx
	movsd	%xmm0, 208(%rsp)
	call	set_secure_data.constprop.18
	movb	(%rbx), %r14b
	movzbl	1(%rbx), %edx
	movzbl	2(%rbx), %ecx
	movl	56(%rsp), %r8d
	movl	44(%rsp), %r9d
	movq	%r14, %rax
	movb	%dl, %ah
	movzbl	3(%rbx), %edx
	sall	$16, %ecx
	movzwl	%ax, %r14d
	sall	$24, %edx
	orl	%ecx, %r14d
	xorl	%ecx, %ecx
	orl	%edx, %r14d
	xorl	%esi, %esi
	leal	1(%r14), %edx
	movl	%edx, %eax
	movl	%edx, 148(%rsp)
	movb	%dl, (%rbx)
	shrw	$8, %ax
	movb	%al, 1(%rbx)
	movl	%edx, %eax
	shrl	$24, %edx
	shrl	$16, %eax
	movb	%dl, 3(%rbx)
	xorl	%edx, %edx
	testl	%ecx, %ecx
	movb	%al, 2(%rbx)
	movl	40(%rsp), %eax
	je	.L1391
.L1302:
	addq	$5, %rsi
	xorl	%ecx, %ecx
	jmp	.L1300
	.p2align 4,,10
	.p2align 3
.L1360:
	movq	%rsi, %rcx
	jmp	.L1307
	.p2align 4,,10
	.p2align 3
.L1356:
	movl	$4, %edx
	jmp	.L1303
	.p2align 4,,10
	.p2align 3
.L1358:
	movl	$8, %ecx
	jmp	.L1307
	.p2align 4,,10
	.p2align 3
.L1357:
	movq	%rcx, %rdx
	jmp	.L1303
	.p2align 4,,10
	.p2align 3
.L1387:
	addq	$3, %rdx
	jmp	.L1303
.L1390:
	movl	$.LC70, %edi
	movq	%r13, %rbp
	movl	48(%rsp), %r13d
	call	puts
	leaq	152(%rsp), %rdi
	movq	%rbx, %rsi
	movl	$0, 152(%rsp)
	call	insert_data_into_mem.constprop.26
	movl	88(%rsp), %r12d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1312:
	cmpq	$3, %rdx
	jg	.L1392
.L1317:
	testl	%ecx, %ecx
	jne	.L1314
	.p2align 4,,10
	.p2align 3
.L1397:
	movzbl	(%rbx,%rax), %ecx
	movb	%cl, 208(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$4, %rcx
	je	.L1361
	movzbl	1(%rbx,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$3, %rcx
	movb	%sil, 209(%rsp,%rdx)
	jg	.L1362
	movzbl	2(%rbx,%rax), %esi
	testq	%rdx, %rdx
	movb	%sil, 208(%rsp,%rcx)
	jne	.L1393
	movzbl	3(%rbx,%rax), %edx
	movb	%dl, 211(%rsp)
	movl	$4, %edx
.L1315:
	addq	$4, %rax
	cmpq	$3, %rdx
	movl	$1, %ecx
	jle	.L1317
.L1392:
	movslq	208(%rsp), %rdi
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L1322
	.p2align 4,,10
	.p2align 3
.L1395:
	movzbl	0(%rbp,%rax), %ecx
	movb	%cl, 208(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L1363
	movzbl	1(%rbp,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%sil, 209(%rsp,%rdx)
	jg	.L1365
	movzbl	2(%rbp,%rax), %esi
	movb	%sil, 208(%rsp,%rcx)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L1365
	movzbl	3(%rbp,%rax), %esi
	addq	$4, %rdx
	movb	%sil, 208(%rsp,%rcx)
.L1319:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L1394
.L1322:
	testl	%ecx, %ecx
	je	.L1395
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L1322
.L1394:
	cmpq	208(%rsp), %rdi
	jge	.L1396
	movb	(%rbx), %r12b
	movzbl	1(%rbx), %eax
	leaq	208(%rsp), %rdi
	movzbl	2(%rbx), %edx
	movq	8(%rsp), %rsi
	movq	%r12, %rcx
	movb	%al, %ch
	movzbl	3(%rbx), %eax
	sall	$16, %edx
	movzwl	%cx, %r12d
	orl	%edx, %r12d
	movl	$1, %edx
	sall	$24, %eax
	orl	%eax, %r12d
	movslq	%r12d, %rcx
	call	get_secure_data.constprop.23
	movl	208(%rsp), %edx
	movl	$1, %edi
	xorl	%eax, %eax
	movl	$.LC24, %esi
	call	__printf_chk
	movb	(%rbx), %r13b
	movzbl	1(%rbx), %eax
	movzbl	2(%rbx), %edx
	movq	%r13, %rcx
	movb	%al, %ch
	movzbl	3(%rbx), %eax
	sall	$16, %edx
	movzwl	%cx, %r13d
	xorl	%ecx, %ecx
	orl	%edx, %r13d
	xorl	%edx, %edx
	sall	$24, %eax
	orl	%eax, %r13d
	leal	1(%r13), %eax
	movl	%eax, %edi
	movl	%eax, 156(%rsp)
	movb	%al, (%rbx)
	shrw	$8, %di
	movb	%dil, 1(%rbx)
	movl	%eax, %edi
	shrl	$24, %eax
	shrl	$16, %edi
	movb	%al, 3(%rbx)
	xorl	%eax, %eax
	testl	%ecx, %ecx
	movb	%dil, 2(%rbx)
	je	.L1397
.L1314:
	addq	$5, %rax
	xorl	%ecx, %ecx
	jmp	.L1312
	.p2align 4,,10
	.p2align 3
.L1365:
	movq	%rcx, %rdx
	jmp	.L1319
	.p2align 4,,10
	.p2align 3
.L1361:
	movl	$4, %edx
	jmp	.L1315
	.p2align 4,,10
	.p2align 3
.L1363:
	movl	$8, %edx
	jmp	.L1319
	.p2align 4,,10
	.p2align 3
.L1362:
	movq	%rcx, %rdx
	jmp	.L1315
	.p2align 4,,10
	.p2align 3
.L1393:
	addq	$3, %rdx
	jmp	.L1315
.L1396:
	movl	$10, %edi
	call	putchar
	leaq	160(%rsp), %rdi
	movq	%rbx, %rsi
	movl	$0, 160(%rsp)
	call	insert_data_into_mem.constprop.26
	movl	80(%rsp), %r12d
	movl	84(%rsp), %r13d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1324:
	cmpq	$3, %rdx
	jg	.L1398
.L1329:
	testl	%ecx, %ecx
	jne	.L1326
	.p2align 4,,10
	.p2align 3
.L1403:
	movzbl	(%rbx,%rax), %ecx
	movb	%cl, 208(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$4, %rcx
	je	.L1366
	movzbl	1(%rbx,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$3, %rcx
	movb	%sil, 209(%rsp,%rdx)
	jg	.L1367
	movzbl	2(%rbx,%rax), %esi
	testq	%rdx, %rdx
	movb	%sil, 208(%rsp,%rcx)
	jne	.L1399
	movzbl	3(%rbx,%rax), %edx
	movb	%dl, 211(%rsp)
	movl	$4, %edx
.L1327:
	addq	$4, %rax
	cmpq	$3, %rdx
	movl	$1, %ecx
	jle	.L1329
.L1398:
	movslq	208(%rsp), %rdi
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L1334
	.p2align 4,,10
	.p2align 3
.L1401:
	movzbl	0(%rbp,%rax), %ecx
	movb	%cl, 208(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L1368
	movzbl	1(%rbp,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%sil, 209(%rsp,%rdx)
	jg	.L1370
	movzbl	2(%rbp,%rax), %esi
	movb	%sil, 208(%rsp,%rcx)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L1370
	movzbl	3(%rbp,%rax), %esi
	addq	$4, %rdx
	movb	%sil, 208(%rsp,%rcx)
.L1331:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L1400
.L1334:
	testl	%ecx, %ecx
	je	.L1401
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L1334
.L1400:
	cmpq	208(%rsp), %rdi
	jge	.L1402
	movb	(%rbx), %r13b
	movzbl	1(%rbx), %eax
	leaq	208(%rsp), %rdi
	movzbl	2(%rbx), %edx
	movq	(%rsp), %rsi
	movq	%r13, %rcx
	movb	%al, %ch
	movzbl	3(%rbx), %eax
	sall	$16, %edx
	movzwl	%cx, %r13d
	orl	%edx, %r13d
	movl	$1, %edx
	sall	$24, %eax
	orl	%eax, %r13d
	movslq	%r13d, %rcx
	call	get_secure_data.constprop.22
	movsd	208(%rsp), %xmm0
	movl	$1, %edi
	movl	$.LC71, %esi
	movl	$1, %eax
	call	__printf_chk
	movb	(%rbx), %r12b
	movzbl	1(%rbx), %eax
	movzbl	2(%rbx), %edx
	movq	%r12, %rcx
	movb	%al, %ch
	movzbl	3(%rbx), %eax
	sall	$16, %edx
	movzwl	%cx, %r12d
	xorl	%ecx, %ecx
	orl	%edx, %r12d
	xorl	%edx, %edx
	sall	$24, %eax
	orl	%eax, %r12d
	leal	1(%r12), %eax
	movl	%eax, %edi
	movl	%eax, 164(%rsp)
	movb	%al, (%rbx)
	shrw	$8, %di
	movb	%dil, 1(%rbx)
	movl	%eax, %edi
	shrl	$24, %eax
	shrl	$16, %edi
	movb	%al, 3(%rbx)
	xorl	%eax, %eax
	testl	%ecx, %ecx
	movb	%dil, 2(%rbx)
	je	.L1403
.L1326:
	addq	$5, %rax
	xorl	%ecx, %ecx
	jmp	.L1324
	.p2align 4,,10
	.p2align 3
.L1370:
	movq	%rcx, %rdx
	jmp	.L1331
	.p2align 4,,10
	.p2align 3
.L1366:
	movl	$4, %edx
	jmp	.L1327
	.p2align 4,,10
	.p2align 3
.L1368:
	movl	$8, %edx
	jmp	.L1331
	.p2align 4,,10
	.p2align 3
.L1367:
	movq	%rcx, %rdx
	jmp	.L1327
	.p2align 4,,10
	.p2align 3
.L1399:
	addq	$3, %rdx
	jmp	.L1327
.L1402:
	movl	$10, %edi
	call	putchar
	movl	$.LC72, %edi
	call	puts
	leaq	168(%rsp), %rdi
	movq	%rbx, %rsi
	movl	$0, 168(%rsp)
	call	insert_data_into_mem.constprop.26
	movl	72(%rsp), %r12d
	movl	76(%rsp), %r13d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1336:
	cmpq	$3, %rdx
	jg	.L1404
.L1341:
	testl	%ecx, %ecx
	jne	.L1338
	.p2align 4,,10
	.p2align 3
.L1409:
	movzbl	(%rbx,%rax), %ecx
	movb	%cl, 176(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$4, %rcx
	je	.L1371
	movzbl	1(%rbx,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$3, %rcx
	movb	%sil, 177(%rsp,%rdx)
	jg	.L1372
	movzbl	2(%rbx,%rax), %esi
	testq	%rdx, %rdx
	movb	%sil, 176(%rsp,%rcx)
	jne	.L1405
	movzbl	3(%rbx,%rax), %edx
	movb	%dl, 179(%rsp)
	movl	$4, %edx
.L1339:
	addq	$4, %rax
	cmpq	$3, %rdx
	movl	$1, %ecx
	jle	.L1341
.L1404:
	movslq	176(%rsp), %rdi
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L1346
	.p2align 4,,10
	.p2align 3
.L1407:
	movzbl	0(%rbp,%rax), %ecx
	movb	%cl, 176(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L1373
	movzbl	1(%rbp,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%sil, 177(%rsp,%rdx)
	jg	.L1375
	movzbl	2(%rbp,%rax), %esi
	movb	%sil, 176(%rsp,%rcx)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L1375
	movzbl	3(%rbp,%rax), %esi
	addq	$4, %rdx
	movb	%sil, 176(%rsp,%rcx)
.L1343:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L1406
.L1346:
	testl	%ecx, %ecx
	je	.L1407
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L1346
.L1406:
	cmpq	176(%rsp), %rdi
	jge	.L1408
	movb	(%rbx), %r13b
	movzbl	1(%rbx), %eax
	leaq	208(%rsp), %rdi
	movzbl	2(%rbx), %edx
	movq	(%rsp), %rsi
	movq	%r13, %rcx
	movb	%al, %ch
	movzbl	3(%rbx), %eax
	sall	$16, %edx
	movzwl	%cx, %r13d
	orl	%edx, %r13d
	movl	$2, %edx
	sall	$24, %eax
	orl	%eax, %r13d
	movslq	%r13d, %rcx
	salq	$3, %rcx
	call	get_secure_data.constprop.22
	movsd	208(%rsp), %xmm0
	movl	$1, %edi
	movl	$.LC71, %esi
	movl	$1, %eax
	call	__printf_chk
	movb	(%rbx), %r12b
	movzbl	1(%rbx), %eax
	movzbl	2(%rbx), %edx
	movq	%r12, %rcx
	movb	%al, %ch
	movzbl	3(%rbx), %eax
	sall	$16, %edx
	movzwl	%cx, %r12d
	xorl	%ecx, %ecx
	orl	%edx, %r12d
	xorl	%edx, %edx
	sall	$24, %eax
	orl	%eax, %r12d
	leal	1(%r12), %eax
	movl	%eax, %edi
	movl	%eax, 172(%rsp)
	movb	%al, (%rbx)
	shrw	$8, %di
	movb	%dil, 1(%rbx)
	movl	%eax, %edi
	shrl	$24, %eax
	shrl	$16, %edi
	movb	%al, 3(%rbx)
	xorl	%eax, %eax
	testl	%ecx, %ecx
	movb	%dil, 2(%rbx)
	je	.L1409
.L1338:
	addq	$5, %rax
	xorl	%ecx, %ecx
	jmp	.L1336
	.p2align 4,,10
	.p2align 3
.L1375:
	movq	%rcx, %rdx
	jmp	.L1343
	.p2align 4,,10
	.p2align 3
.L1371:
	movl	$4, %edx
	jmp	.L1339
	.p2align 4,,10
	.p2align 3
.L1373:
	movl	$8, %edx
	jmp	.L1343
	.p2align 4,,10
	.p2align 3
.L1372:
	movq	%rcx, %rdx
	jmp	.L1339
	.p2align 4,,10
	.p2align 3
.L1405:
	addq	$3, %rdx
	jmp	.L1339
.L1408:
	movl	$10, %edi
	call	putchar
	movl	$.LC73, %edi
	call	puts
	movq	%rbx, %rdi
	call	managed_secure_free
	movq	%rbp, %rdi
	call	managed_secure_free
	movq	8(%rsp), %rdi
	call	managed_secure_free
	movq	16(%rsp), %rdi
	call	managed_secure_free
	movq	(%rsp), %rdi
	call	managed_secure_free
	movq	24(%rsp), %rdi
	call	managed_secure_free
	addq	$232, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L1350:
	.cfi_restore_state
	movq	%rcx, %rdx
	jmp	.L1283
.L1348:
	movl	$8, %edx
	jmp	.L1283
.L1379:
	movl	$.LC66, %edi
	call	puts
	movl	$42, %edi
	call	exit
	.cfi_endproc
.LFE139:
	.size	simple_array_tests, .-simple_array_tests
	.p2align 4,,15
	.globl	adding_unsecured_arrays_time_measure
	.type	adding_unsecured_arrays_time_measure, @function
adding_unsecured_arrays_time_measure:
.LFB140:
	.cfi_startproc
	rep ret
	.cfi_endproc
.LFE140:
	.size	adding_unsecured_arrays_time_measure, .-adding_unsecured_arrays_time_measure
	.p2align 4,,15
	.globl	adding_heap_arrays_time_measure
	.type	adding_heap_arrays_time_measure, @function
adding_heap_arrays_time_measure:
.LFB141:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	movq	%rdi, (%rsp)
	movl	$4, %edi
	movl	%r10d, 24(%rsp)
	movl	%r9d, 16(%rsp)
	movl	%r8d, 8(%rsp)
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, %rbp
	movl	8(%rsp), %r8d
	movl	16(%rsp), %r9d
	movl	24(%rsp), %r10d
	je	.L1434
	movl	$8, %edi
	movl	%r10d, 24(%rsp)
	movl	%r9d, 16(%rsp)
	movl	%r8d, 8(%rsp)
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, 64(%rsp)
	movl	8(%rsp), %r8d
	movl	16(%rsp), %r9d
	movl	24(%rsp), %r10d
	je	.L1435
	movq	%rax, %rdx
	movq	(%rsp), %rax
	leaq	96(%rsp), %rsi
	movl	$8, %edi
	movl	%r10d, 48(%rsp)
	movl	%r9d, 40(%rsp)
	movl	%r8d, 8(%rsp)
	movq	%rax, 96(%rsp)
	call	insert_data_into_mem
	movq	64(%rsp), %rsi
	leaq	112(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	call	get_secure_data.constprop.22
	movq	112(%rsp), %rax
	movl	$461, %edx
	movl	$__func__.6237, %esi
	leaq	0(,%rax,4), %rdi
	call	error_checking_managed_secure_malloc
	movq	64(%rsp), %rsi
	leaq	112(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rax, 16(%rsp)
	call	get_secure_data.constprop.22
	movq	112(%rsp), %rax
	movl	$462, %edx
	movl	$__func__.6237, %esi
	leaq	0(,%rax,4), %rdi
	call	error_checking_managed_secure_malloc
	movl	8(%rsp), %r8d
	leaq	2(%rbp), %rdi
	movq	%rax, 32(%rsp)
	movl	40(%rsp), %r9d
	leaq	1(%rbp), %rax
	movl	48(%rsp), %r10d
	movq	%rdi, 24(%rsp)
	leaq	3(%rbp), %r11
	movl	$100000, 76(%rsp)
	movl	%r8d, %edi
	movq	%rax, %r8
	movl	%edi, %eax
.L1427:
	movq	24(%rsp), %rdi
	movb	$0, 0(%rbp)
	xorl	%esi, %esi
	movb	$0, (%r8)
	movl	$0, 88(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%ebx, (%rsp)
	movb	$0, (%rdi)
	movb	$0, (%r11)
	.p2align 4,,10
	.p2align 3
.L1414:
	cmpq	$3, %rcx
	jg	.L1436
.L1419:
	testl	%esi, %esi
	jne	.L1416
	.p2align 4,,10
	.p2align 3
.L1441:
	movzbl	0(%rbp,%rdx), %esi
	movb	%sil, 112(%rsp,%rcx)
	leaq	1(%rcx), %rsi
	cmpq	$4, %rsi
	je	.L1428
	movzbl	1(%rbp,%rdx), %edi
	leaq	2(%rcx), %rsi
	cmpq	$3, %rsi
	movb	%dil, 113(%rsp,%rcx)
	jg	.L1429
	movzbl	2(%rbp,%rdx), %edi
	testq	%rcx, %rcx
	movb	%dil, 112(%rsp,%rsi)
	jne	.L1437
	movzbl	3(%rbp,%rdx), %ecx
	movb	%cl, 115(%rsp)
	movl	$4, %ecx
.L1417:
	addq	$4, %rdx
	cmpq	$3, %rcx
	movl	$1, %esi
	jle	.L1419
.L1436:
	movslq	112(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	%eax, 40(%rsp)
	movl	(%rsp), %ebx
	movq	%rdi, 8(%rsp)
	movq	64(%rsp), %rdi
	jmp	.L1424
	.p2align 4,,10
	.p2align 3
.L1439:
	movzbl	(%rdi,%rdx), %esi
	movb	%sil, 112(%rsp,%rcx)
	leaq	1(%rcx), %rsi
	cmpq	$8, %rsi
	je	.L1430
	movzbl	1(%rdi,%rdx), %eax
	leaq	2(%rcx), %rsi
	cmpq	$7, %rsi
	movb	%al, 113(%rsp,%rcx)
	jg	.L1432
	movzbl	2(%rdi,%rdx), %eax
	movb	%al, 112(%rsp,%rsi)
	leaq	3(%rcx), %rsi
	cmpq	$7, %rsi
	jg	.L1432
	movzbl	3(%rdi,%rdx), %eax
	addq	$4, %rcx
	movb	%al, 112(%rsp,%rsi)
.L1421:
	addq	$4, %rdx
	cmpq	$7, %rcx
	movl	$1, %esi
	jg	.L1438
.L1424:
	testl	%esi, %esi
	je	.L1439
	addq	$5, %rdx
	xorl	%esi, %esi
	cmpq	$7, %rcx
	jle	.L1424
.L1438:
	movq	8(%rsp), %rdi
	cmpq	112(%rsp), %rdi
	movl	40(%rsp), %eax
	movl	%ebx, (%rsp)
	jge	.L1440
	movzbl	0(%rbp), %edi
	movzbl	(%r8), %esi
	movb	%dil, %r10b
	movq	%rsi, %rbx
	movb	%dil, %r9b
	movq	%r10, %rcx
	movq	%rsi, %rdx
	movb	%bl, %ch
	movq	24(%rsp), %rbx
	movq	%rcx, %r10
	movzwl	%r10w, %r10d
	movzbl	(%rbx), %ecx
	movzbl	(%r11), %ebx
	movl	%ebx, 8(%rsp)
	movq	%r9, %rbx
	sall	$16, %ecx
	movb	%dl, %bh
	sall	$24, 8(%rsp)
	orl	%ecx, %r10d
	movzwl	%bx, %r9d
	orl	8(%rsp), %r10d
	orl	%ecx, %r9d
	orl	8(%rsp), %r9d
	leal	(%r10,%r10), %ecx
	movl	%r10d, 72(%rsp)
	movq	16(%rsp), %r10
	movslq	%r9d, %rdx
	movl	%r9d, 60(%rsp)
	movq	24(%rsp), %r9
	leaq	(%rdx,%rdx,8), %rdx
	movl	%ecx, 112(%rsp)
	addq	%r10, %rdx
	movb	%cl, (%rdx)
	movzbl	113(%rsp), %ecx
	movb	%cl, 1(%rdx)
	movzbl	114(%rsp), %ecx
	movb	%cl, 2(%rdx)
	movzbl	115(%rsp), %ecx
	movb	%cl, 3(%rdx)
	movzbl	0(%rbp), %edi
	movzbl	(%r8), %esi
	movzbl	(%r9), %ecx
	movb	%dil, (%rsp)
	movq	(%rsp), %rdx
	movb	%dil, %al
	movq	%rsi, %rbx
	sall	$16, %ecx
	movb	%bl, %dh
	movzwl	%dx, %ebx
	movzbl	(%r11), %edx
	movl	%ebx, (%rsp)
	orl	%ecx, (%rsp)
	movq	%rsi, %rbx
	movb	%bl, %ah
	movq	%r10, %rsi
	movq	%r9, %rbx
	movzwl	%ax, %eax
	sall	$24, %edx
	orl	%edx, (%rsp)
	orl	%ecx, %eax
	movl	(%rsp), %edi
	orl	%edx, %eax
	movslq	%eax, %rdx
	leaq	(%rdx,%rdx,8), %rdx
	leal	(%rdi,%rdi,2), %ecx
	leaq	112(%rsp), %rdi
	movl	%ecx, 112(%rsp)
	addq	32(%rsp), %rdx
	movl	%eax, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r11, 40(%rsp)
	movb	%cl, (%rdx)
	movzbl	113(%rsp), %ecx
	movb	%cl, 1(%rdx)
	movzbl	114(%rsp), %ecx
	movb	%cl, 2(%rdx)
	movzbl	115(%rsp), %ecx
	movb	%cl, 3(%rdx)
	movzbl	(%r8), %edx
	movb	0(%rbp), %r15b
	movzbl	(%r9), %ecx
	movq	%r15, %rax
	movb	%dl, %ah
	movzbl	(%r11), %edx
	sall	$16, %ecx
	movzwl	%ax, %r15d
	orl	%ecx, %r15d
	sall	$24, %edx
	orl	%edx, %r15d
	movl	$1, %edx
	movslq	%r15d, %rcx
	call	get_secure_data.constprop.23
	movq	48(%rsp), %r8
	movl	112(%rsp), %eax
	leaq	112(%rsp), %rdi
	movb	0(%rbp), %r14b
	movq	40(%rsp), %r11
	movzbl	(%rbx), %ecx
	movq	32(%rsp), %rsi
	movzbl	(%r8), %edx
	movl	%eax, 8(%rsp)
	movq	%r14, %rax
	sall	$16, %ecx
	movb	%dl, %ah
	movzbl	(%r11), %edx
	movzwl	%ax, %r14d
	orl	%ecx, %r14d
	sall	$24, %edx
	orl	%edx, %r14d
	movl	$1, %edx
	movslq	%r14d, %rcx
	call	get_secure_data.constprop.23
	movq	48(%rsp), %r8
	movb	0(%rbp), %r13b
	movq	40(%rsp), %r11
	movzbl	(%rbx), %ecx
	movl	72(%rsp), %r10d
	movl	60(%rsp), %r9d
	movzbl	(%r8), %edx
	movq	%r13, %rax
	sall	$16, %ecx
	movb	%dl, %ah
	movzbl	(%r11), %edx
	movzwl	%ax, %r13d
	orl	%ecx, %r13d
	movl	8(%rsp), %ecx
	addl	112(%rsp), %ecx
	sall	$24, %edx
	orl	%edx, %r13d
	movslq	%r13d, %rdx
	movl	%ecx, 112(%rsp)
	leaq	(%rdx,%rdx,8), %rdx
	addq	16(%rsp), %rdx
	movb	%cl, (%rdx)
	movzbl	113(%rsp), %ecx
	movb	%cl, 1(%rdx)
	movzbl	114(%rsp), %ecx
	movb	%cl, 2(%rdx)
	movzbl	115(%rsp), %ecx
	movb	%cl, 3(%rdx)
	movb	0(%rbp), %r12b
	movzbl	(%r8), %edx
	movzbl	(%rbx), %ecx
	movq	%r12, %rax
	movb	%dl, %ah
	movzbl	(%r11), %edx
	sall	$16, %ecx
	movzwl	%ax, %r12d
	orl	%ecx, %r12d
	sall	$24, %edx
	orl	%edx, %r12d
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	leal	1(%r12), %edx
	movl	%edx, %eax
	movb	%dl, 0(%rbp)
	movl	%edx, 92(%rsp)
	shrw	$8, %ax
	movb	%al, (%r8)
	movl	%edx, %eax
	shrl	$24, %edx
	shrl	$16, %eax
	movb	%al, (%rbx)
	movb	%dl, (%r11)
	xorl	%edx, %edx
	testl	%esi, %esi
	movl	56(%rsp), %eax
	je	.L1441
.L1416:
	addq	$5, %rdx
	xorl	%esi, %esi
	jmp	.L1414
	.p2align 4,,10
	.p2align 3
.L1432:
	movq	%rsi, %rcx
	jmp	.L1421
	.p2align 4,,10
	.p2align 3
.L1428:
	movl	$4, %ecx
	jmp	.L1417
	.p2align 4,,10
	.p2align 3
.L1430:
	movl	$8, %ecx
	jmp	.L1421
	.p2align 4,,10
	.p2align 3
.L1429:
	movq	%rsi, %rcx
	jmp	.L1417
	.p2align 4,,10
	.p2align 3
.L1437:
	addq	$3, %rcx
	jmp	.L1417
.L1440:
	subl	$1, 76(%rsp)
	jne	.L1427
	movq	%rbp, %rdi
	call	managed_secure_free
	movq	64(%rsp), %rdi
	call	managed_secure_free
	movq	16(%rsp), %rdi
	call	managed_secure_free
	movq	32(%rsp), %rdi
	call	managed_secure_free
	addq	$136, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L1435:
	.cfi_restore_state
	movl	$458, %esi
	movl	$__func__.6237, %edi
	call	error_checking_managed_secure_malloc.part.3
.L1434:
	movl	$457, %esi
	movl	$__func__.6237, %edi
	call	error_checking_managed_secure_malloc.part.3
	.cfi_endproc
.LFE141:
	.size	adding_heap_arrays_time_measure, .-adding_heap_arrays_time_measure
	.section	.rodata.str1.1
.LC76:
	.string	"(pointercount-1)/4)= %.8lf\n"
.LC77:
	.string	"Got result: %.8lf\n"
	.text
	.p2align 4,,15
	.globl	multiple_simple_mallocs_and_frees
	.type	multiple_simple_mallocs_and_frees, @function
multiple_simple_mallocs_and_frees:
.LFB142:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movl	%edi, %r13d
	xorl	%edi, %edi
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movl	%esi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movslq	%r12d, %rbx
	salq	$3, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	call	time
	movl	%eax, %edi
	call	srand
	testq	%rbx, %rbx
	je	.L1452
	movq	%rbx, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L1456
	movq	%rax, %r14
.L1443:
	testl	%r12d, %r12d
	jle	.L1447
	movq	%rbx, %rdx
	xorl	%esi, %esi
	movq	%r14, %rdi
	call	memset
.L1447:
	xorpd	%xmm3, %xmm3
	xorl	%ebx, %ebx
	testl	%r13d, %r13d
	movsd	%xmm3, (%rsp)
	jg	.L1454
	jmp	.L1446
	.p2align 4,,10
	.p2align 3
.L1448:
	movsd	(%rsp), %xmm1
	addl	$1, %ebx
	addsd	(%rdi), %xmm1
	movsd	%xmm1, (%rsp)
	call	free
	cmpl	%r13d, %ebx
	movq	$0, 0(%rbp)
	je	.L1446
.L1454:
	call	rand
	cltd
	idivl	%r12d
	movslq	%edx, %rax
	leaq	(%r14,%rax,8), %rbp
	movq	0(%rbp), %rdi
	testq	%rdi, %rdi
	jne	.L1448
	movb	$8, %dil
	movl	%edx, 12(%rsp)
	call	malloc
	testq	%rax, %rax
	movl	12(%rsp), %edx
	je	.L1457
	cvtsi2sd	%edx, %xmm0
	addl	$1, %ebx
	movq	%rax, 0(%rbp)
	cmpl	%r13d, %ebx
	movsd	%xmm0, (%rax)
	jne	.L1454
	.p2align 4,,10
	.p2align 3
.L1446:
	subl	$1, %r12d
	movl	$.LC76, %esi
	movl	$1, %edi
	cvtsi2sd	%r12d, %xmm0
	movl	$1, %eax
	mulsd	.LC75(%rip), %xmm0
	call	__printf_chk
	cvtsi2sd	%r13d, %xmm0
	movl	$.LC77, %esi
	movsd	(%rsp), %xmm2
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	movl	$1, %edi
	movl	$1, %eax
	divsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	jmp	__printf_chk
	.p2align 4,,10
	.p2align 3
.L1452:
	.cfi_restore_state
	xorl	%r14d, %r14d
	jmp	.L1443
.L1457:
	movl	$501, %esi
	movl	$__func__.6252, %edi
	call	error_checking_malloc.part.0
.L1456:
	movl	$489, %esi
	movl	$__func__.6252, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE142:
	.size	multiple_simple_mallocs_and_frees, .-multiple_simple_mallocs_and_frees
	.p2align 4,,15
	.globl	multiple_secure_mallocs_and_frees
	.type	multiple_secure_mallocs_and_frees, @function
multiple_secure_mallocs_and_frees:
.LFB143:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%edi, %r13d
	xorl	%edi, %edi
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	call	time
	movl	%eax, %edi
	call	srand
	movslq	%ebp, %rdi
	salq	$3, %rdi
	testq	%rdi, %rdi
	je	.L1499
	call	managed_secure_malloc
	testq	%rax, %rax
	je	.L1521
	movq	%rax, %r12
.L1459:
	testl	%ebp, %ebp
	jle	.L1468
	leal	-1(%rbp), %eax
	xorl	%edi, %edi
	leaq	8(,%rax,8), %r8
	.p2align 4,,10
	.p2align 3
.L1469:
	movq	%rdi, %rax
	movq	$0, 16(%rsp)
	xorl	%edx, %edx
	sarq	$2, %rax
	xorl	%ecx, %ecx
	leaq	(%rax,%rax,8), %rsi
	xorl	%eax, %eax
	addq	%r12, %rsi
	jmp	.L1467
	.p2align 4,,10
	.p2align 3
.L1523:
	movzbl	16(%rsp,%rax), %ecx
	movb	%cl, (%rsi,%rdx)
	leaq	1(%rax), %rcx
	cmpq	$8, %rcx
	je	.L1501
	movzbl	17(%rsp,%rax), %ecx
	movb	%cl, 1(%rsi,%rdx)
	leaq	2(%rax), %rcx
	cmpq	$7, %rcx
	jg	.L1503
	movzbl	16(%rsp,%rcx), %ecx
	movb	%cl, 2(%rsi,%rdx)
	leaq	3(%rax), %rcx
	cmpq	$7, %rcx
	jg	.L1503
	movzbl	16(%rsp,%rcx), %ecx
	addq	$4, %rax
	movb	%cl, 3(%rsi,%rdx)
.L1464:
	addq	$4, %rdx
	cmpq	$7, %rax
	movl	$1, %ecx
	jg	.L1522
.L1467:
	testl	%ecx, %ecx
	je	.L1523
	addq	$5, %rdx
	xorl	%ecx, %ecx
	cmpq	$7, %rax
	jle	.L1467
.L1522:
	addq	$8, %rdi
	cmpq	%r8, %rdi
	jne	.L1469
.L1468:
	xorpd	%xmm3, %xmm3
	xorl	%r14d, %r14d
	testl	%r13d, %r13d
	movsd	%xmm3, (%rsp)
	jle	.L1462
	.p2align 4,,10
	.p2align 3
.L1519:
	call	rand
	cltd
	idivl	%ebp
	movslq	%edx, %rcx
	movl	%edx, %r15d
	leaq	0(,%rcx,8), %rax
	leaq	3(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	sarq	$2, %rax
	xorl	%edi, %edi
	leaq	(%rax,%rax,8), %rbx
	addq	%r12, %rbx
	jmp	.L1474
	.p2align 4,,10
	.p2align 3
.L1525:
	movzbl	(%rbx,%r8), %eax
	leaq	1(%rsi), %rdi
	cmpq	$8, %rdi
	movb	%al, 16(%rsp,%rsi)
	je	.L1504
	movzbl	1(%rbx,%r8), %eax
	movb	%al, 17(%rsp,%rsi)
	leaq	2(%rsi), %rax
	cmpq	$7, %rax
	jg	.L1506
	movzbl	2(%rbx,%r8), %edx
	movb	%dl, 16(%rsp,%rax)
	leaq	3(%rsi), %rax
	cmpq	$7, %rax
	jg	.L1506
	movzbl	3(%rbx,%r8), %edx
	addq	$4, %rsi
	movb	%dl, 16(%rsp,%rax)
.L1471:
	addq	$4, %r8
	cmpq	$7, %rsi
	movl	$1, %edi
	jg	.L1524
.L1474:
	testl	%edi, %edi
	je	.L1525
	addq	$5, %r8
	xorl	%edi, %edi
	cmpq	$7, %rsi
	jle	.L1474
.L1524:
	cmpq	$0, 16(%rsp)
	je	.L1526
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L1482
	.p2align 4,,10
	.p2align 3
.L1528:
	movzbl	(%rbx,%rax), %ecx
	movb	%cl, 16(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L1507
	movzbl	1(%rbx,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%sil, 17(%rsp,%rdx)
	jg	.L1509
	movzbl	2(%rbx,%rax), %esi
	movb	%sil, 16(%rsp,%rcx)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L1509
	movzbl	3(%rbx,%rax), %esi
	addq	$4, %rdx
	movb	%sil, 16(%rsp,%rcx)
.L1479:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L1527
.L1482:
	testl	%ecx, %ecx
	je	.L1528
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L1482
.L1527:
	movq	16(%rsp), %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L1487
	.p2align 4,,10
	.p2align 3
.L1530:
	movzbl	(%rsi,%rax), %ecx
	movb	%cl, 16(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L1510
	movzbl	1(%rsi,%rax), %edi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%dil, 17(%rsp,%rdx)
	jg	.L1512
	movzbl	2(%rsi,%rax), %edi
	movb	%dil, 16(%rsp,%rcx)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L1512
	movzbl	3(%rsi,%rax), %edi
	addq	$4, %rdx
	movb	%dil, 16(%rsp,%rcx)
.L1484:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L1529
.L1487:
	testl	%ecx, %ecx
	je	.L1530
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L1487
.L1529:
	movsd	(%rsp), %xmm1
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	addsd	16(%rsp), %xmm1
	movsd	%xmm1, (%rsp)
	jmp	.L1492
	.p2align 4,,10
	.p2align 3
.L1532:
	movzbl	(%rbx,%rax), %ecx
	movb	%cl, 16(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L1513
	movzbl	1(%rbx,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%sil, 17(%rsp,%rdx)
	jg	.L1515
	movzbl	2(%rbx,%rax), %esi
	movb	%sil, 16(%rsp,%rcx)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L1515
	movzbl	3(%rbx,%rax), %esi
	addq	$4, %rdx
	movb	%sil, 16(%rsp,%rcx)
.L1489:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L1531
.L1492:
	testl	%ecx, %ecx
	je	.L1532
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L1492
.L1531:
	movq	16(%rsp), %rdi
	call	managed_secure_free
	movq	$0, 16(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L1497
	.p2align 4,,10
	.p2align 3
.L1533:
	movzbl	16(%rsp,%rdx), %ecx
	movb	%cl, (%rbx,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L1516
	movzbl	17(%rsp,%rdx), %ecx
	movb	%cl, 1(%rbx,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L1518
	movzbl	16(%rsp,%rcx), %ecx
	movb	%cl, 2(%rbx,%rax)
	leaq	3(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L1518
	movzbl	16(%rsp,%rcx), %ecx
	addq	$4, %rdx
	movb	%cl, 3(%rbx,%rax)
.L1494:
	addq	$4, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L1477
.L1497:
	testl	%ecx, %ecx
	je	.L1533
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L1497
.L1477:
	addl	$1, %r14d
	cmpl	%r13d, %r14d
	jne	.L1519
.L1462:
	subl	$1, %ebp
	movl	$.LC76, %esi
	movl	$1, %edi
	cvtsi2sd	%ebp, %xmm0
	movl	$1, %eax
	mulsd	.LC75(%rip), %xmm0
	call	__printf_chk
	cvtsi2sd	%r13d, %xmm0
	movl	$.LC77, %esi
	movsd	(%rsp), %xmm2
	movl	$1, %edi
	movl	$1, %eax
	divsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	call	__printf_chk
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1503:
	.cfi_restore_state
	movq	%rcx, %rax
	jmp	.L1464
	.p2align 4,,10
	.p2align 3
.L1506:
	movq	%rax, %rsi
	jmp	.L1471
	.p2align 4,,10
	.p2align 3
.L1512:
	movq	%rcx, %rdx
	jmp	.L1484
	.p2align 4,,10
	.p2align 3
.L1515:
	movq	%rcx, %rdx
	jmp	.L1489
	.p2align 4,,10
	.p2align 3
.L1518:
	movq	%rcx, %rdx
	jmp	.L1494
	.p2align 4,,10
	.p2align 3
.L1509:
	movq	%rcx, %rdx
	jmp	.L1479
	.p2align 4,,10
	.p2align 3
.L1501:
	movl	$8, %eax
	jmp	.L1464
	.p2align 4,,10
	.p2align 3
.L1504:
	movl	$8, %esi
	jmp	.L1471
	.p2align 4,,10
	.p2align 3
.L1516:
	movl	$8, %edx
	jmp	.L1494
	.p2align 4,,10
	.p2align 3
.L1507:
	movl	$8, %edx
	jmp	.L1479
	.p2align 4,,10
	.p2align 3
.L1510:
	movl	$8, %edx
	jmp	.L1484
	.p2align 4,,10
	.p2align 3
.L1513:
	movl	$8, %edx
	jmp	.L1489
	.p2align 4,,10
	.p2align 3
.L1526:
	movl	$8, %edi
	movq	%rcx, 8(%rsp)
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	8(%rsp), %rcx
	je	.L1534
	leaq	16(%rsp), %rdi
	movq	%rcx, %rdx
	movq	%r12, %rsi
	movq	%rax, 16(%rsp)
	movq	%rcx, 8(%rsp)
	addl	$1, %r14d
	call	set_secure_data.constprop.18
	movq	8(%rsp), %rcx
	leaq	16(%rsp), %rdi
	movl	$1, %edx
	movq	%r12, %rsi
	call	get_secure_data.constprop.22
	cvtsi2sd	%r15d, %xmm0
	movq	16(%rsp), %rsi
	leaq	16(%rsp), %rdi
	xorl	%edx, %edx
	movsd	%xmm0, 16(%rsp)
	call	set_secure_data.constprop.18
	cmpl	%r13d, %r14d
	jne	.L1519
	jmp	.L1462
.L1499:
	xorl	%r12d, %r12d
	.p2align 4,,5
	jmp	.L1459
.L1534:
	movl	$540, %esi
	movl	$__func__.6267, %edi
	call	error_checking_managed_secure_malloc.part.3
.L1521:
	movl	$528, %esi
	movl	$__func__.6267, %edi
	call	error_checking_managed_secure_malloc.part.3
	.cfi_endproc
.LFE143:
	.size	multiple_secure_mallocs_and_frees, .-multiple_secure_mallocs_and_frees
	.p2align 4,,15
	.globl	find_number_of_useful_stack_chunks
	.type	find_number_of_useful_stack_chunks, @function
find_number_of_useful_stack_chunks:
.LFB144:
	.cfi_startproc
	leaq	12(%rdi), %rax
	addq	$5, %rdi
	cmovns	%rdi, %rax
	sarq	$3, %rax
	ret
	.cfi_endproc
.LFE144:
	.size	find_number_of_useful_stack_chunks, .-find_number_of_useful_stack_chunks
	.p2align 4,,15
	.globl	get_ptr_size
	.type	get_ptr_size, @function
get_ptr_size:
.LFB145:
	.cfi_startproc
	movl	$8, %eax
	ret
	.cfi_endproc
.LFE145:
	.size	get_ptr_size, .-get_ptr_size
	.section	.rodata.str1.8
	.align 8
.LC78:
	.string	"Stack:Attempted to read more keyshares that the ones stored\n"
	.text
	.p2align 4,,15
	.globl	get_next_stack_keyshare
	.type	get_next_stack_keyshare, @function
get_next_stack_keyshare:
.LFB146:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	stack_keyshare_input_file(%rip), %rdi
	call	feof
	testl	%eax, %eax
	jne	.L1541
	movq	stack_keyshare_input_file(%rip), %rcx
	movl	$1, %edx
	movl	$1, %esi
	movq	%rsp, %rdi
	call	fread
	cmpq	$1, %rax
	jne	.L1542
	movzbl	(%rsp), %eax
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L1541:
	.cfi_restore_state
	movl	$.LC78, %edi
	call	perror
	movl	$45, %edi
	call	exit
.L1542:
	movl	$.LC8, %edi
	call	perror
	movl	$47, %edi
	call	exit
	.cfi_endproc
.LFE146:
	.size	get_next_stack_keyshare, .-get_next_stack_keyshare
	.section	.rodata.str1.8
	.align 8
.LC79:
	.string	"Stack: Whoops. We need to allocate a bit more space."
	.text
	.p2align 4,,15
	.globl	allocate_stack_mem
	.type	allocate_stack_mem, @function
allocate_stack_mem:
.LFB147:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$.LC79, %edi
	call	puts
	movl	$2051, %edi
	call	malloc
	testq	%rax, %rax
	je	.L1546
	movq	$2051, total_stack_bytes_allocated(%rip)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L1546:
	.cfi_restore_state
	movl	$143, %esi
	movl	$__func__.6324, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE147:
	.size	allocate_stack_mem, .-allocate_stack_mem
	.p2align 4,,15
	.globl	free_secure_stack_mem
	.type	free_secure_stack_mem, @function
free_secure_stack_mem:
.LFB148:
	.cfi_startproc
	jmp	free
	.cfi_endproc
.LFE148:
	.size	free_secure_stack_mem, .-free_secure_stack_mem
	.p2align 4,,15
	.globl	insert_keys_into_stack_mem
	.type	insert_keys_into_stack_mem, @function
insert_keys_into_stack_mem:
.LFB149:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	xorl	%eax, %eax
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	xorl	%r12d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	xorl	%ebx, %ebx
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	.p2align 4,,10
	.p2align 3
.L1549:
	cmpq	total_stack_bytes_allocated(%rip), %rbx
	jge	.L1558
.L1555:
	testl	%eax, %eax
	jne	.L1550
	movb	$0, 0(%rbp,%rbx)
	movb	$0, 1(%rbp,%rbx)
	movb	$0, 2(%rbp,%rbx)
	addq	$3, %rbx
.L1551:
	cmpq	$5, %r12
	movl	$1, %eax
	jne	.L1549
	xorl	%eax, %eax
	xorl	%r12d, %r12d
	cmpq	total_stack_bytes_allocated(%rip), %rbx
	jl	.L1555
.L1558:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1550:
	.cfi_restore_state
	movq	stack_keyshare_input_file(%rip), %rdi
	leaq	0(%rbp,%rbx), %r13
	call	feof
	testl	%eax, %eax
	jne	.L1559
	movq	stack_keyshare_input_file(%rip), %rcx
	movl	$1, %edx
	movl	$1, %esi
	movq	%rsp, %rdi
	call	fread
	cmpq	$1, %rax
	jne	.L1560
	movzbl	(%rsp), %eax
	addq	$1, %r12
	addq	$1, %rbx
	movb	%al, 0(%r13)
	jmp	.L1551
.L1559:
	movl	$.LC78, %edi
	call	perror
	movl	$45, %edi
	call	exit
.L1560:
	movl	$.LC8, %edi
	call	perror
	movl	$47, %edi
	call	exit
	.cfi_endproc
.LFE149:
	.size	insert_keys_into_stack_mem, .-insert_keys_into_stack_mem
	.section	.rodata.str1.1
.LC80:
	.string	"stack_keyshares"
	.section	.rodata.str1.8
	.align 8
.LC81:
	.string	"init_mem:stack_keyshares file error\n"
	.text
	.p2align 4,,15
	.globl	init_stack_mem
	.type	init_stack_mem, @function
init_stack_mem:
.LFB150:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xorl	%edi, %edi
	call	time
	movl	%eax, %edi
	call	srand
	movl	$.LC79, %edi
	call	puts
	movl	$2051, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L1565
	movl	$.LC11, %esi
	movl	$.LC80, %edi
	movq	$2051, total_stack_bytes_allocated(%rip)
	call	fopen
	testq	%rax, %rax
	movq	%rax, stack_keyshare_input_file(%rip)
	je	.L1566
	movq	%rbx, %rdi
	call	insert_keys_into_stack_mem
	movq	stack_keyshare_input_file(%rip), %rdi
	movq	%rbx, entire_stack_memory_chunk(%rip)
	movq	%rbx, last_unused_stack_memory(%rip)
	call	fclose
	movq	%rbx, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L1565:
	.cfi_restore_state
	movl	$143, %esi
	movl	$__func__.6324, %edi
	call	error_checking_malloc.part.0
.L1566:
	movl	$.LC81, %edi
	call	perror
	movl	$46, %edi
	call	exit
	.cfi_endproc
.LFE150:
	.size	init_stack_mem, .-init_stack_mem
	.p2align 4,,15
	.globl	insert_data_into_stack_mem
	.type	insert_data_into_stack_mem, @function
insert_data_into_stack_mem:
.LFB151:
	.cfi_startproc
	testq	%rdi, %rdi
	jle	.L1573
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	jmp	.L1572
	.p2align 4,,10
	.p2align 3
.L1577:
	movzbl	(%rsi,%rcx), %r9d
	movb	%r9b, (%rdx,%r8)
	leaq	1(%rcx), %r9
	cmpq	%r9, %rdi
	jle	.L1575
	movzbl	1(%rsi,%rcx), %r9d
	movb	%r9b, 1(%rdx,%r8)
	leaq	2(%rcx), %r9
	cmpq	%r9, %rdi
	jle	.L1575
	movzbl	2(%rsi,%rcx), %r9d
	addq	$3, %rcx
	movb	%r9b, 2(%rdx,%r8)
.L1570:
	addq	$1, %rax
	addq	$3, %r8
	cmpq	%rcx, %rdi
	movl	$1, %r9d
	jle	.L1576
.L1572:
	testl	%r9d, %r9d
	je	.L1577
	addq	$5, %r8
	xorl	%r9d, %r9d
	cmpq	%rcx, %rdi
	jg	.L1572
.L1576:
	rep ret
	.p2align 4,,10
	.p2align 3
.L1575:
	movq	%r9, %rcx
	jmp	.L1570
.L1573:
	xorl	%eax, %eax
	.p2align 4,,6
	ret
	.cfi_endproc
.LFE151:
	.size	insert_data_into_stack_mem, .-insert_data_into_stack_mem
	.p2align 4,,15
	.globl	get_secure_stack_data
	.type	get_secure_stack_data, @function
get_secure_stack_data:
.LFB152:
	.cfi_startproc
	cmpl	$2, %ecx
	movq	%rdx, %r9
	je	.L1590
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.L1599
.L1580:
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L1598:
	cmpq	%rax, %rsi
	jle	.L1578
.L1600:
	testl	%r8d, %r8d
	jne	.L1585
	movzbl	(%r9,%rcx), %edx
	movb	%dl, (%rdi,%rax)
	leaq	1(%rax), %rdx
	cmpq	%rdx, %rsi
	jle	.L1595
	movzbl	1(%r9,%rcx), %edx
	movb	%dl, 1(%rdi,%rax)
	leaq	2(%rax), %rdx
	cmpq	%rdx, %rsi
	jle	.L1595
	movzbl	2(%r9,%rcx), %edx
	movb	%dl, 2(%rdi,%rax)
	addq	$3, %rax
.L1586:
	addq	$3, %rcx
	cmpq	%rax, %rsi
	movl	$1, %r8d
	jg	.L1600
.L1578:
	rep ret
	.p2align 4,,10
	.p2align 3
.L1585:
	addq	$5, %rcx
	xorl	%r8d, %r8d
	jmp	.L1598
	.p2align 4,,10
	.p2align 3
.L1595:
	movq	%rdx, %rax
	jmp	.L1586
	.p2align 4,,10
	.p2align 3
.L1590:
	movl	$1, %ecx
.L1579:
	imulq	%rcx, %r8
	movabsq	$6148914691236517206, %rdx
	movq	%r8, %rax
	imulq	%rdx
	movq	%r8, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%r9,%rdx,8), %r9
	cmpq	%rax, %r8
	je	.L1601
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rcx
	addq	%r8, %rcx
	cmpq	$2, %rcx
	jg	.L1593
	testq	%rsi, %rsi
	jle	.L1593
	movl	$3, %r8d
	movq	%rcx, %rdx
	xorl	%eax, %eax
	subq	%rcx, %r8
	jmp	.L1583
	.p2align 4,,10
	.p2align 3
.L1602:
	cmpq	%rsi, %rax
	je	.L1582
.L1583:
	movzbl	(%r9,%rdx), %edx
	movb	%dl, (%rdi,%rax)
	addq	$1, %rax
	cmpq	%r8, %rax
	leaq	(%rax,%rcx), %rdx
	jne	.L1602
.L1582:
	addq	$8, %r9
	jmp	.L1580
	.p2align 4,,10
	.p2align 3
.L1599:
	movq	%rsi, %rcx
	jmp	.L1579
	.p2align 4,,10
	.p2align 3
.L1601:
	xorl	%eax, %eax
	jmp	.L1580
.L1593:
	xorl	%eax, %eax
	.p2align 4,,4
	jmp	.L1582
	.cfi_endproc
.LFE152:
	.size	get_secure_stack_data, .-get_secure_stack_data
	.p2align 4,,15
	.globl	set_secure_stack_data
	.type	set_secure_stack_data, @function
set_secure_stack_data:
.LFB153:
	.cfi_startproc
	cmpl	$2, %ecx
	movq	%rdx, %r9
	je	.L1615
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.L1624
.L1605:
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L1623:
	cmpq	%rax, %rsi
	jle	.L1603
.L1625:
	testl	%r8d, %r8d
	jne	.L1610
	movzbl	(%rdi,%rax), %edx
	movb	%dl, (%r9,%rcx)
	leaq	1(%rax), %rdx
	cmpq	%rdx, %rsi
	jle	.L1620
	movzbl	1(%rdi,%rax), %edx
	movb	%dl, 1(%r9,%rcx)
	leaq	2(%rax), %rdx
	cmpq	%rdx, %rsi
	jle	.L1620
	movzbl	2(%rdi,%rax), %edx
	addq	$3, %rax
	movb	%dl, 2(%r9,%rcx)
.L1611:
	addq	$3, %rcx
	cmpq	%rax, %rsi
	movl	$1, %r8d
	jg	.L1625
.L1603:
	rep ret
	.p2align 4,,10
	.p2align 3
.L1610:
	addq	$5, %rcx
	xorl	%r8d, %r8d
	jmp	.L1623
	.p2align 4,,10
	.p2align 3
.L1620:
	movq	%rdx, %rax
	jmp	.L1611
	.p2align 4,,10
	.p2align 3
.L1615:
	movl	$1, %eax
.L1604:
	imulq	%rax, %r8
	movabsq	$6148914691236517206, %rdx
	movq	%r8, %rax
	imulq	%rdx
	movq	%r8, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%r9,%rdx,8), %r9
	cmpq	%rax, %r8
	je	.L1626
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rax, %r8
	cmpq	$2, %r8
	jg	.L1618
	testq	%rsi, %rsi
	jle	.L1618
	movl	$3, %r10d
	movq	%r8, %rdx
	xorl	%eax, %eax
	subq	%r8, %r10
	jmp	.L1608
	.p2align 4,,10
	.p2align 3
.L1627:
	cmpq	%rsi, %rax
	je	.L1607
.L1608:
	movzbl	(%rdi,%rax), %ecx
	addq	$1, %rax
	cmpq	%r10, %rax
	movb	%cl, (%r9,%rdx)
	leaq	(%rax,%r8), %rdx
	jne	.L1627
.L1607:
	addq	$8, %r9
	jmp	.L1605
	.p2align 4,,10
	.p2align 3
.L1624:
	movq	%rsi, %rax
	jmp	.L1604
	.p2align 4,,10
	.p2align 3
.L1626:
	xorl	%eax, %eax
	jmp	.L1605
.L1618:
	xorl	%eax, %eax
	.p2align 4,,4
	jmp	.L1607
	.cfi_endproc
.LFE153:
	.size	set_secure_stack_data, .-set_secure_stack_data
	.p2align 4,,15
	.globl	allocate_mem_into_secure_stack
	.type	allocate_mem_into_secure_stack, @function
allocate_mem_into_secure_stack:
.LFB154:
	.cfi_startproc
	testq	%rdi, %rdi
	movq	last_unused_stack_memory(%rip), %rsi
	je	.L1633
	movq	%rdi, %rax
	movabsq	$6148914691236517206, %rdx
	movq	entire_stack_memory_chunk(%rip), %rcx
	imulq	%rdx
	movq	%rdi, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	cmpq	%rax, %rdi
	setg	%al
	addq	total_stack_bytes_allocated(%rip), %rcx
	movzbl	%al, %eax
	addq	%rax, %rdx
	leaq	0(,%rdx,8), %r8
	movq	%rdx, %rax
	movq	%rsi, %rdx
	leaq	(%rsi,%r8), %rdi
	cmpq	%rcx, %rdi
	movq	%rdi, last_unused_stack_memory(%rip)
	jnb	.L1634
	rep ret
	.p2align 4,,10
	.p2align 3
.L1634:
	subq	%r8, %rdi
	movq	%rdi, last_unused_stack_memory(%rip)
.L1633:
	xorl	%eax, %eax
	xorl	%edx, %edx
	ret
	.cfi_endproc
.LFE154:
	.size	allocate_mem_into_secure_stack, .-allocate_mem_into_secure_stack
	.p2align 4,,15
	.globl	free_mem_from_secure_stack
	.type	free_mem_from_secure_stack, @function
free_mem_from_secure_stack:
.LFB155:
	.cfi_startproc
	movq	%rdi, %rax
	movabsq	$6148914691236517206, %rdx
	imulq	%rdx
	movq	%rdi, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	cmpq	%rax, %rdi
	setg	%al
	movzbl	%al, %eax
	addq	%rax, %rdx
	salq	$3, %rdx
	subq	%rdx, last_unused_stack_memory(%rip)
	ret
	.cfi_endproc
.LFE155:
	.size	free_mem_from_secure_stack, .-free_mem_from_secure_stack
	.p2align 4,,15
	.globl	free_chunks_from_secure_stack
	.type	free_chunks_from_secure_stack, @function
free_chunks_from_secure_stack:
.LFB156:
	.cfi_startproc
	salq	$3, %rdi
	subq	%rdi, last_unused_stack_memory(%rip)
	ret
	.cfi_endproc
.LFE156:
	.size	free_chunks_from_secure_stack, .-free_chunks_from_secure_stack
	.p2align 4,,15
	.globl	init_function_params
	.type	init_function_params, @function
init_function_params:
.LFB157:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	testb	%al, %al
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	je	.L1639
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm1, 112(%rsp)
	movaps	%xmm2, 128(%rsp)
	movaps	%xmm3, 144(%rsp)
	movaps	%xmm4, 160(%rsp)
	movaps	%xmm5, 176(%rsp)
	movaps	%xmm6, 192(%rsp)
	movaps	%xmm7, 208(%rsp)
.L1639:
	leaq	288(%rsp), %rax
	movl	%edi, %ebx
	movl	$24, %edi
	movq	%rax, 24(%rsp)
	leaq	48(%rsp), %rax
	movl	$8, 16(%rsp)
	movl	$48, 20(%rsp)
	movq	%rax, 32(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r13
	je	.L1729
	testl	%ebx, %ebx
	jne	.L1730
	movq	$0, 16(%rax)
	xorl	%r12d, %r12d
.L1645:
	movq	%r12, 0(%r13)
	movq	$-1, 8(%r13)
	addq	$232, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	movq	%r13, %rax
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1730:
	.cfi_restore_state
	movl	$128, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r14
	je	.L1731
	movl	16(%rsp), %edx
	movq	%rax, 16(%r13)
	cmpl	$48, %edx
	jnb	.L1643
	movl	%edx, %eax
	addq	32(%rsp), %rax
	addl	$8, %edx
	movl	%edx, 16(%rsp)
	movq	(%rax), %rbp
	testq	%rbp, %rbp
	movq	%rbp, (%r14)
	jne	.L1732
.L1647:
	movl	16(%rsp), %ebx
	movq	$0, 8(%r14)
.L1650:
	cmpl	$47, %ebx
	ja	.L1655
.L1742:
	movl	%ebx, %eax
	addq	32(%rsp), %rax
	addl	$8, %ebx
	movl	%ebx, 16(%rsp)
.L1656:
	movq	(%rax), %r12
	leaq	0(,%r12,4), %r15
	movq	%r12, 16(%r14)
	addq	%r15, %rbp
	testq	%r12, %r12
	jne	.L1733
	movl	16(%rsp), %r12d
	movq	$0, 24(%r14)
.L1659:
	cmpl	$47, %r12d
	ja	.L1662
	movl	%r12d, %eax
	addq	32(%rsp), %rax
	addl	$8, %r12d
	movl	%r12d, 16(%rsp)
.L1663:
	movq	(%rax), %r15
	leaq	0(,%r15,8), %r9
	testq	%r15, %r15
	movq	%r15, 32(%r14)
	leaq	0(%rbp,%r9), %rbx
	jne	.L1734
	movl	16(%rsp), %ebp
	movq	$0, 40(%r14)
.L1666:
	cmpl	$47, %ebp
	ja	.L1669
	movl	%ebp, %eax
	addq	32(%rsp), %rax
	addl	$8, %ebp
	movl	%ebp, 16(%rsp)
.L1670:
	movq	(%rax), %r15
	leaq	0(,%r15,4), %r11
	testq	%r15, %r15
	movq	%r15, 48(%r14)
	leaq	(%rbx,%r11), %r12
	jne	.L1735
	movl	16(%rsp), %ebp
	movq	$0, 56(%r14)
.L1673:
	cmpl	$47, %ebp
	ja	.L1676
	movl	%ebp, %eax
	addq	32(%rsp), %rax
	addl	$8, %ebp
	movl	%ebp, 16(%rsp)
.L1677:
	movq	(%rax), %rbx
	leaq	0(,%rbx,8), %r15
	movq	%rbx, 64(%r14)
	addq	%r15, %r12
	testq	%rbx, %rbx
	jne	.L1736
	movl	16(%rsp), %ebp
	movq	$0, 72(%r14)
.L1680:
	cmpl	$47, %ebp
	ja	.L1683
	movl	%ebp, %eax
	addq	32(%rsp), %rax
	addl	$8, %ebp
	movl	%ebp, 16(%rsp)
.L1684:
	movq	(%rax), %r15
	leaq	0(,%r15,8), %r9
	movq	%r15, 80(%r14)
	addq	%r9, %r12
	testq	%r15, %r15
	jne	.L1737
	movl	16(%rsp), %ebx
	movq	$0, 88(%r14)
	movq	$0, 96(%r14)
.L1691:
	cmpl	$47, %ebx
	ja	.L1696
	movl	%ebx, %eax
	addq	32(%rsp), %rax
	addl	$8, %ebx
	movl	%ebx, 16(%rsp)
	movq	(%rax), %r15
	testq	%r15, %r15
	movq	%r15, 104(%r14)
	jne	.L1738
.L1698:
	movq	$0, 112(%r14)
	movq	$0, 120(%r14)
	jmp	.L1645
	.p2align 4,,10
	.p2align 3
.L1643:
	movq	24(%rsp), %rax
	movq	(%rax), %rbp
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	testq	%rbp, %rbp
	movq	%rbp, (%r14)
	je	.L1647
.L1732:
	movq	%rbp, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L1739
	testq	%rbp, %rbp
	movq	%rax, 8(%r14)
	movl	16(%rsp), %ebx
	jle	.L1650
	movq	32(%rsp), %rdi
	movq	24(%rsp), %rsi
	xorl	%edx, %edx
	jmp	.L1654
	.p2align 4,,10
	.p2align 3
.L1741:
	movl	%ebx, %ecx
	addq	$1, %rdx
	addl	$8, %ebx
	addq	%rdi, %rcx
	cmpq	%rbp, %rdx
	movl	(%rcx), %ecx
	movb	%cl, (%rax)
	je	.L1740
.L1653:
	movq	16(%r13), %rax
	movq	8(%rax), %rax
.L1654:
	addq	%rdx, %rax
	cmpl	$47, %ebx
	jbe	.L1741
	movq	%rsi, %rcx
	addq	$1, %rdx
	addq	$8, %rsi
	movl	(%rcx), %ecx
	cmpq	%rbp, %rdx
	movb	%cl, (%rax)
	jne	.L1653
.L1740:
	cmpl	$47, %ebx
	movl	%ebx, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movq	16(%r13), %r14
	jbe	.L1742
.L1655:
	movq	24(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	jmp	.L1656
	.p2align 4,,10
	.p2align 3
.L1683:
	movq	24(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	jmp	.L1684
	.p2align 4,,10
	.p2align 3
.L1676:
	movq	24(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	jmp	.L1677
	.p2align 4,,10
	.p2align 3
.L1669:
	movq	24(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	jmp	.L1670
	.p2align 4,,10
	.p2align 3
.L1662:
	movq	24(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	jmp	.L1663
	.p2align 4,,10
	.p2align 3
.L1696:
	movq	24(%rsp), %rax
	movq	(%rax), %r15
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	testq	%r15, %r15
	movq	%r15, 104(%r14)
	je	.L1698
.L1738:
	leaq	0(,%r15,8), %r9
	testq	%r9, %r9
	je	.L1722
	movq	%r9, %rdi
	movq	%r9, 8(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	8(%rsp), %r9
	je	.L1743
.L1699:
	testq	%r15, %r15
	movq	%rax, 112(%r14)
	jle	.L1724
	movq	32(%rsp), %r10
	movl	16(%rsp), %r8d
	leaq	(%rax,%r9), %rdi
	movq	24(%rsp), %rdx
	jmp	.L1702
	.p2align 4,,10
	.p2align 3
.L1744:
	movl	%ebp, %ebx
.L1702:
	movl	%ebx, %ecx
	leal	8(%rbx), %esi
	leaq	8(%rdx), %r11
	addq	%r10, %rcx
	cmpl	$47, %ebx
	cmova	%rdx, %rcx
	movl	%esi, %ebp
	cmovbe	%esi, %r8d
	movq	(%rcx), %rcx
	cmova	%ebx, %ebp
	cmova	%r11, %rdx
	addq	$8, %rax
	movq	%rcx, -8(%rax)
	addq	%rcx, %r12
	cmpq	%rdi, %rax
	jne	.L1744
	movl	%r8d, 16(%rsp)
	movq	%rdx, 24(%rsp)
.L1700:
	testq	%r9, %r9
	je	.L1725
	movq	%r9, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L1745
.L1703:
	testq	%r15, %r15
	movq	%rax, 120(%r14)
	jle	.L1645
	movq	32(%rsp), %rdi
	movq	24(%rsp), %rsi
	xorl	%edx, %edx
	jmp	.L1706
	.p2align 4,,10
	.p2align 3
.L1746:
	movl	%ebp, %ecx
	addl	$8, %ebp
	addq	%rdi, %rcx
.L1705:
	movq	(%rcx), %rcx
	addq	$1, %rdx
	cmpq	%r15, %rdx
	movq	%rcx, (%rax)
	je	.L1645
	movq	16(%r13), %rax
	movq	120(%rax), %rax
.L1706:
	cmpl	$47, %ebp
	leaq	(%rax,%rdx,8), %rax
	jbe	.L1746
	movq	%rsi, %rcx
	addq	$8, %rsi
	jmp	.L1705
	.p2align 4,,10
	.p2align 3
.L1733:
	testq	%r15, %r15
	je	.L1707
	movq	%r15, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L1747
.L1658:
	testq	%r12, %r12
	movq	%rax, 24(%r14)
	jle	.L1709
	movq	32(%rsp), %r10
	movl	16(%rsp), %r8d
	leaq	(%rax,%r15), %r9
	movq	24(%rsp), %rdx
	jmp	.L1661
	.p2align 4,,10
	.p2align 3
.L1660:
	movl	%r12d, %ebx
.L1661:
	movl	%ebx, %ecx
	leal	8(%rbx), %esi
	leaq	8(%rdx), %rdi
	addq	%r10, %rcx
	cmpl	$47, %ebx
	cmova	%rdx, %rcx
	movl	%esi, %r12d
	cmovbe	%esi, %r8d
	movl	(%rcx), %ecx
	cmova	%ebx, %r12d
	cmova	%rdi, %rdx
	addq	$4, %rax
	movl	%ecx, -4(%rax)
	cmpq	%r9, %rax
	jne	.L1660
	movl	%r8d, 16(%rsp)
	movq	%rdx, 24(%rsp)
	jmp	.L1659
	.p2align 4,,10
	.p2align 3
.L1737:
	testq	%r9, %r9
	je	.L1717
	movq	%r9, %rdi
	movq	%r9, 8(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	8(%rsp), %r9
	je	.L1748
.L1686:
	testq	%r15, %r15
	movq	%rax, 88(%r14)
	jle	.L1719
	movq	32(%rsp), %r10
	movl	16(%rsp), %r8d
	leaq	(%rax,%r9), %rdi
	movq	24(%rsp), %rdx
	jmp	.L1689
	.p2align 4,,10
	.p2align 3
.L1749:
	movl	%ebx, %ebp
.L1689:
	movl	%ebp, %ecx
	leal	8(%rbp), %esi
	leaq	8(%rdx), %r11
	addq	%r10, %rcx
	cmpl	$47, %ebp
	cmova	%rdx, %rcx
	movl	%esi, %ebx
	cmovbe	%esi, %r8d
	movq	(%rcx), %rcx
	cmova	%ebp, %ebx
	cmova	%r11, %rdx
	addq	$8, %rax
	movq	%rcx, -8(%rax)
	cmpq	%rdi, %rax
	jne	.L1749
	movl	%r8d, 16(%rsp)
	movq	%rdx, 24(%rsp)
.L1687:
	testq	%r9, %r9
	je	.L1720
	movq	%r9, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L1750
.L1690:
	testq	%r15, %r15
	movq	%rax, 96(%r14)
	jle	.L1691
	movq	32(%rsp), %r8
	movl	16(%rsp), %edi
	xorl	%edx, %edx
	movq	24(%rsp), %rsi
	jmp	.L1695
	.p2align 4,,10
	.p2align 3
.L1752:
	movl	%ebx, %ecx
	addq	$1, %rdx
	addl	$8, %ebx
	addq	%r8, %rcx
	cmpq	%r15, %rdx
	movl	%ebx, %edi
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	je	.L1751
.L1694:
	movq	16(%r13), %rax
	movq	96(%rax), %rax
.L1695:
	cmpl	$47, %ebx
	leaq	(%rax,%rdx,8), %rax
	jbe	.L1752
	movq	%rsi, %rcx
	addq	$1, %rdx
	addq	$8, %rsi
	movq	(%rcx), %rcx
	cmpq	%r15, %rdx
	movq	%rcx, (%rax)
	jne	.L1694
.L1751:
	movl	%edi, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movq	16(%r13), %r14
	jmp	.L1691
	.p2align 4,,10
	.p2align 3
.L1736:
	testq	%r15, %r15
	je	.L1715
	movq	%r15, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L1753
.L1679:
	testq	%rbx, %rbx
	movq	%rax, 72(%r14)
	jle	.L1680
	movl	20(%rsp), %edx
	movq	32(%rsp), %rbx
	leaq	(%rax,%r15), %r11
	movq	24(%rsp), %rcx
	movl	%edx, %r8d
	jmp	.L1682
	.p2align 4,,10
	.p2align 3
.L1681:
	movl	%r10d, %edx
.L1682:
	movl	%edx, %esi
	leal	16(%rdx), %edi
	leaq	8(%rcx), %r9
	addq	%rbx, %rsi
	cmpl	$175, %edx
	cmova	%rcx, %rsi
	movl	%edi, %r10d
	cmova	%r9, %rcx
	movsd	(%rsi), %xmm0
	cmova	%edx, %r10d
	cmovbe	%edi, %r8d
	addq	$8, %rax
	movsd	%xmm0, -8(%rax)
	cmpq	%r11, %rax
	jne	.L1681
	movq	%rcx, 24(%rsp)
	movl	%r8d, 20(%rsp)
	jmp	.L1680
	.p2align 4,,10
	.p2align 3
.L1735:
	testq	%r11, %r11
	je	.L1713
	movq	%r11, %rdi
	movq	%r11, 8(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	8(%rsp), %r11
	je	.L1754
.L1672:
	testq	%r15, %r15
	movq	%rax, 56(%r14)
	jle	.L1673
	movl	20(%rsp), %edx
	movq	32(%rsp), %rbx
	addq	%rax, %r11
	movq	24(%rsp), %rcx
	movl	%edx, %r8d
	jmp	.L1675
	.p2align 4,,10
	.p2align 3
.L1674:
	movl	%r10d, %edx
.L1675:
	movl	%edx, %esi
	leal	16(%rdx), %edi
	leaq	8(%rcx), %r9
	addq	%rbx, %rsi
	cmpl	$175, %edx
	cmova	%rcx, %rsi
	movl	%edi, %r10d
	cmova	%r9, %rcx
	movsd	(%rsi), %xmm1
	cmova	%edx, %r10d
	cmovbe	%edi, %r8d
	addq	$4, %rax
	cvtpd2ps	%xmm1, %xmm1
	movss	%xmm1, -4(%rax)
	cmpq	%r11, %rax
	jne	.L1674
	movq	%rcx, 24(%rsp)
	movl	%r8d, 20(%rsp)
	jmp	.L1673
	.p2align 4,,10
	.p2align 3
.L1734:
	testq	%r9, %r9
	je	.L1710
	movq	%r9, %rdi
	movq	%r9, 8(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	8(%rsp), %r9
	je	.L1755
.L1665:
	testq	%r15, %r15
	movq	%rax, 40(%r14)
	jle	.L1712
	movq	32(%rsp), %r10
	movl	16(%rsp), %r8d
	addq	%rax, %r9
	movq	24(%rsp), %rdx
	jmp	.L1668
	.p2align 4,,10
	.p2align 3
.L1667:
	movl	%ebp, %r12d
.L1668:
	movl	%r12d, %ecx
	leal	8(%r12), %esi
	leaq	8(%rdx), %rdi
	addq	%r10, %rcx
	cmpl	$47, %r12d
	cmova	%rdx, %rcx
	movl	%esi, %ebp
	cmovbe	%esi, %r8d
	movq	(%rcx), %rcx
	cmova	%r12d, %ebp
	cmova	%rdi, %rdx
	addq	$8, %rax
	movq	%rcx, -8(%rax)
	cmpq	%r9, %rax
	jne	.L1667
	movl	%r8d, 16(%rsp)
	movq	%rdx, 24(%rsp)
	jmp	.L1666
	.p2align 4,,10
	.p2align 3
.L1707:
	xorl	%eax, %eax
	jmp	.L1658
	.p2align 4,,10
	.p2align 3
.L1710:
	xorl	%eax, %eax
	jmp	.L1665
	.p2align 4,,10
	.p2align 3
.L1713:
	xorl	%eax, %eax
	jmp	.L1672
	.p2align 4,,10
	.p2align 3
.L1715:
	xorl	%eax, %eax
	jmp	.L1679
	.p2align 4,,10
	.p2align 3
.L1720:
	xorl	%eax, %eax
	jmp	.L1690
	.p2align 4,,10
	.p2align 3
.L1717:
	xorl	%eax, %eax
	jmp	.L1686
	.p2align 4,,10
	.p2align 3
.L1722:
	xorl	%eax, %eax
	jmp	.L1699
	.p2align 4,,10
	.p2align 3
.L1725:
	xorl	%eax, %eax
	jmp	.L1703
.L1724:
	movl	%ebx, %ebp
	.p2align 4,,5
	jmp	.L1700
.L1709:
	movl	%ebx, %r12d
	.p2align 4,,4
	jmp	.L1659
.L1719:
	movl	%ebp, %ebx
	.p2align 4,,4
	jmp	.L1687
.L1712:
	movl	%r12d, %ebp
	.p2align 4,,3
	jmp	.L1666
.L1729:
	movl	$555, %esi
	movl	$__func__.6448, %edi
	call	error_checking_malloc.part.0
.L1731:
	movl	$558, %esi
	movl	$__func__.6448, %edi
	call	error_checking_malloc.part.0
.L1739:
	movl	$570, %esi
	movl	$__func__.6448, %edi
	call	error_checking_malloc.part.0
.L1755:
	movl	$602, %esi
	movl	$__func__.6448, %edi
	call	error_checking_malloc.part.0
.L1754:
	movl	$618, %esi
	movl	$__func__.6448, %edi
	call	error_checking_malloc.part.0
.L1745:
	movl	$680, %esi
	movl	$__func__.6448, %edi
	call	error_checking_malloc.part.0
.L1743:
	movl	$673, %esi
	movl	$__func__.6448, %edi
	call	error_checking_malloc.part.0
.L1747:
	movl	$586, %esi
	movl	$__func__.6448, %edi
	call	error_checking_malloc.part.0
.L1748:
	movl	$651, %esi
	movl	$__func__.6448, %edi
	call	error_checking_malloc.part.0
.L1753:
	movl	$634, %esi
	movl	$__func__.6448, %edi
	call	error_checking_malloc.part.0
.L1750:
	movl	$656, %esi
	movl	$__func__.6448, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE157:
	.size	init_function_params, .-init_function_params
	.p2align 4,,15
	.globl	init_function_params_with_uninitialised_elements
	.type	init_function_params_with_uninitialised_elements, @function
init_function_params_with_uninitialised_elements:
.LFB158:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	testb	%al, %al
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	je	.L1757
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm1, 112(%rsp)
	movaps	%xmm2, 128(%rsp)
	movaps	%xmm3, 144(%rsp)
	movaps	%xmm4, 160(%rsp)
	movaps	%xmm5, 176(%rsp)
	movaps	%xmm6, 192(%rsp)
	movaps	%xmm7, 208(%rsp)
.L1757:
	leaq	288(%rsp), %rax
	movl	%edi, %ebx
	movl	$24, %edi
	movq	%rax, 24(%rsp)
	leaq	48(%rsp), %rax
	movl	$8, 16(%rsp)
	movl	$48, 20(%rsp)
	movq	%rax, 32(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r12
	je	.L1884
	testl	%ebx, %ebx
	jne	.L1885
	movq	$0, 16(%rax)
	xorl	%r14d, %r14d
.L1763:
	movq	%r14, (%r12)
	movq	$-1, 8(%r12)
	addq	$232, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	movq	%r12, %rax
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1885:
	.cfi_restore_state
	movl	$128, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r13
	je	.L1886
	movl	16(%rsp), %ecx
	movq	%rax, 16(%r12)
	cmpl	$48, %ecx
	jb	.L1887
	movq	24(%rsp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	(%rax), %r14
	movq	%rdx, 24(%rsp)
	testq	%r14, %r14
	movq	%r14, 0(%r13)
	je	.L1765
.L1766:
	leaq	8(%rdx), %rax
	movq	%rax, 24(%rsp)
.L1767:
	movq	%r14, %rdi
	movq	(%rdx), %rbx
	call	malloc
	testq	%rax, %rax
	je	.L1888
	testq	%rbx, %rbx
	movq	%rax, 8(%r13)
	movl	16(%rsp), %ecx
	jle	.L1770
	movq	32(%rsp), %rdi
	movq	24(%rsp), %r8
	xorl	%edx, %edx
	jmp	.L1774
	.p2align 4,,10
	.p2align 3
.L1890:
	movl	%ecx, %esi
	addq	$1, %rdx
	addl	$8, %ecx
	addq	%rdi, %rsi
	cmpq	%rbx, %rdx
	movl	(%rsi), %esi
	movb	%sil, (%rax)
	je	.L1889
.L1773:
	movq	16(%r12), %rax
	movq	8(%rax), %rax
.L1774:
	addq	%rdx, %rax
	cmpl	$47, %ecx
	jbe	.L1890
	movq	%r8, %rsi
	addq	$1, %rdx
	addq	$8, %r8
	movl	(%rsi), %esi
	cmpq	%rbx, %rdx
	movb	%sil, (%rax)
	jne	.L1773
.L1889:
	cmpl	$47, %ecx
	movl	%ecx, 16(%rsp)
	movq	%r8, 24(%rsp)
	movq	16(%r12), %r13
	jbe	.L1891
.L1775:
	movq	24(%rsp), %rdx
	movl	%ecx, %r8d
	movq	%rdx, %rax
	leaq	8(%rdx), %rdx
	movq	(%rax), %rax
	movq	%rdx, 24(%rsp)
	leaq	0(,%rax,4), %rdi
	movq	%rax, 16(%r13)
	addq	%rdi, %r14
	testq	%rax, %rax
	je	.L1777
.L1778:
	leaq	8(%rdx), %rax
	movl	%r8d, %ebx
	movq	%rax, 24(%rsp)
.L1779:
	testq	%rdi, %rdi
	movq	(%rdx), %rbp
	je	.L1848
	call	malloc
	testq	%rax, %rax
	je	.L1892
.L1780:
	testq	%rbp, %rbp
	movq	%rax, 24(%r13)
	jle	.L1850
	movq	32(%rsp), %r11
	movl	16(%rsp), %r9d
	leaq	(%rax,%rbp,4), %r10
	movq	24(%rsp), %rdx
	jmp	.L1783
	.p2align 4,,10
	.p2align 3
.L1782:
	movl	%r8d, %ebx
.L1783:
	movl	%ebx, %ecx
	leal	8(%rbx), %esi
	leaq	8(%rdx), %rdi
	addq	%r11, %rcx
	cmpl	$47, %ebx
	cmova	%rdx, %rcx
	movl	%esi, %r8d
	cmovbe	%esi, %r9d
	movl	(%rcx), %ecx
	cmova	%ebx, %r8d
	cmova	%rdi, %rdx
	addq	$4, %rax
	movl	%ecx, -4(%rax)
	cmpq	%r10, %rax
	jne	.L1782
	cmpl	$47, %r8d
	movl	%r9d, 16(%rsp)
	movq	%rdx, 24(%rsp)
	jbe	.L1893
.L1784:
	movq	24(%rsp), %rdx
	movl	%r8d, %r9d
	movq	%rdx, %rax
	leaq	8(%rdx), %rdx
	movq	(%rax), %rax
	movq	%rdx, 24(%rsp)
	leaq	0(,%rax,8), %rdi
	movq	%rax, 32(%r13)
	addq	%rdi, %r14
	testq	%rax, %rax
	je	.L1786
.L1787:
	leaq	8(%rdx), %rax
	movl	%r9d, %ebx
	movq	%rax, 24(%rsp)
.L1788:
	testq	%rdi, %rdi
	movq	(%rdx), %rbp
	je	.L1852
	call	malloc
	testq	%rax, %rax
	je	.L1894
.L1789:
	testq	%rbp, %rbp
	movq	%rax, 40(%r13)
	jle	.L1854
	movq	32(%rsp), %r11
	movl	16(%rsp), %edi
	leaq	(%rax,%rbp,8), %r10
	movq	24(%rsp), %rdx
	jmp	.L1792
	.p2align 4,,10
	.p2align 3
.L1791:
	movl	%r9d, %ebx
.L1792:
	movl	%ebx, %ecx
	leal	8(%rbx), %esi
	leaq	8(%rdx), %r8
	addq	%r11, %rcx
	cmpl	$47, %ebx
	cmova	%rdx, %rcx
	movl	%esi, %r9d
	cmovbe	%esi, %edi
	movq	(%rcx), %rcx
	cmova	%ebx, %r9d
	cmova	%r8, %rdx
	addq	$8, %rax
	movq	%rcx, -8(%rax)
	cmpq	%r10, %rax
	jne	.L1791
	cmpl	$47, %r9d
	movl	%edi, 16(%rsp)
	movq	%rdx, 24(%rsp)
	jbe	.L1895
.L1793:
	movq	24(%rsp), %rdx
	movl	%r9d, %ebx
	movq	%rdx, %rax
	leaq	8(%rdx), %rdx
	movq	(%rax), %rax
	movq	%rdx, 24(%rsp)
	leaq	0(,%rax,4), %rdi
	movq	%rax, 48(%r13)
	addq	%rdi, %r14
	testq	%rax, %rax
	je	.L1795
.L1796:
	leaq	8(%rdx), %rax
	movq	%rax, 24(%rsp)
.L1797:
	testq	%rdi, %rdi
	movq	(%rdx), %r15
	je	.L1856
	call	malloc
	testq	%rax, %rax
	je	.L1896
	movq	%rax, %rsi
.L1798:
	testq	%r15, %r15
	movq	%rsi, 56(%r13)
	jle	.L1799
	movl	20(%rsp), %edx
	movq	32(%rsp), %rbp
	leaq	(%rsi,%r15,4), %r11
	movq	24(%rsp), %rcx
	movl	%edx, %r8d
	jmp	.L1801
	.p2align 4,,10
	.p2align 3
.L1800:
	movl	%r10d, %edx
.L1801:
	movl	%edx, %eax
	leal	16(%rdx), %edi
	leaq	8(%rcx), %r9
	addq	%rbp, %rax
	cmpl	$175, %edx
	cmova	%rcx, %rax
	movl	%edi, %r10d
	cmova	%r9, %rcx
	movsd	(%rax), %xmm1
	cmova	%edx, %r10d
	cmovbe	%edi, %r8d
	addq	$4, %rsi
	cvtpd2ps	%xmm1, %xmm1
	movss	%xmm1, -4(%rsi)
	cmpq	%r11, %rsi
	jne	.L1800
	cmpl	$47, %ebx
	movq	%rcx, 24(%rsp)
	movl	%r8d, 20(%rsp)
	jbe	.L1897
.L1802:
	movq	24(%rsp), %rdx
	movl	%ebx, %ebp
	movq	%rdx, %rax
	leaq	8(%rdx), %rdx
	movq	(%rax), %rax
	movq	%rdx, 24(%rsp)
	leaq	0(,%rax,8), %rdi
	movq	%rax, 64(%r13)
	addq	%rdi, %r14
	testq	%rax, %rax
	jne	.L1805
.L1804:
	movq	$0, 72(%r13)
.L1808:
	cmpl	$47, %ebp
	ja	.L1811
.L1902:
	movl	%ebp, %eax
	addq	32(%rsp), %rax
	addl	$8, %ebp
	movl	%ebp, 16(%rsp)
.L1812:
	movq	(%rax), %r15
	leaq	0(,%r15,8), %r8
	movq	%r15, 80(%r13)
	addq	%r8, %r14
	testq	%r15, %r15
	jne	.L1898
	movl	16(%rsp), %ebx
	movq	$0, 88(%r13)
	movq	$0, 96(%r13)
.L1826:
	cmpl	$47, %ebx
	ja	.L1829
	movl	%ebx, %eax
	addq	32(%rsp), %rax
	addl	$8, %ebx
	movl	%ebx, 16(%rsp)
	movq	(%rax), %r15
	testq	%r15, %r15
	movq	%r15, 104(%r13)
	jne	.L1899
.L1831:
	movq	$0, 112(%r13)
	movq	$0, 120(%r13)
	jmp	.L1763
	.p2align 4,,10
	.p2align 3
.L1887:
	movq	32(%rsp), %rdx
	movl	%ecx, %esi
	leal	8(%rcx), %eax
	movl	%eax, 16(%rsp)
	movq	(%rdx,%rsi), %r14
	testq	%r14, %r14
	movq	%r14, 0(%r13)
	je	.L1900
	cmpl	$47, %eax
	jbe	.L1878
	movq	24(%rsp), %rdx
	jmp	.L1766
	.p2align 4,,10
	.p2align 3
.L1900:
	movl	%eax, %ecx
.L1765:
	movq	$0, 8(%r13)
.L1770:
	cmpl	$47, %ecx
	ja	.L1775
.L1891:
	movq	32(%rsp), %rdx
	movl	%ecx, %eax
	leal	8(%rcx), %r8d
	movl	%r8d, 16(%rsp)
	movq	(%rdx,%rax), %rax
	leaq	0(,%rax,4), %rdi
	movq	%rax, 16(%r13)
	addq	%rdi, %r14
	testq	%rax, %rax
	jne	.L1776
.L1777:
	movq	$0, 24(%r13)
.L1781:
	cmpl	$47, %r8d
	ja	.L1784
.L1893:
	movq	32(%rsp), %rdx
	movl	%r8d, %eax
	leal	8(%r8), %r9d
	movl	%r9d, 16(%rsp)
	movq	(%rdx,%rax), %rax
	leaq	0(,%rax,8), %rdi
	movq	%rax, 32(%r13)
	addq	%rdi, %r14
	testq	%rax, %rax
	jne	.L1785
.L1786:
	movq	$0, 40(%r13)
.L1790:
	cmpl	$47, %r9d
	ja	.L1793
.L1895:
	movq	32(%rsp), %rdx
	movl	%r9d, %eax
	leal	8(%r9), %ebx
	movl	%ebx, 16(%rsp)
	movq	(%rdx,%rax), %rax
	leaq	0(,%rax,4), %rdi
	movq	%rax, 48(%r13)
	addq	%rdi, %r14
	testq	%rax, %rax
	jne	.L1794
.L1795:
	movq	$0, 56(%r13)
.L1799:
	cmpl	$47, %ebx
	ja	.L1802
.L1897:
	movq	32(%rsp), %rdx
	movl	%ebx, %eax
	leal	8(%rbx), %ebp
	movl	%ebp, 16(%rsp)
	movq	(%rdx,%rax), %rax
	leaq	0(,%rax,8), %rdi
	movq	%rax, 64(%r13)
	addq	%rdi, %r14
	testq	%rax, %rax
	je	.L1804
	cmpl	$47, %ebp
	jbe	.L1882
	movq	24(%rsp), %rdx
.L1805:
	leaq	8(%rdx), %rax
	movq	%rax, 24(%rsp)
.L1806:
	testq	%rdi, %rdi
	movq	(%rdx), %r15
	je	.L1859
	call	malloc
	testq	%rax, %rax
	je	.L1901
	movq	%rax, %rsi
.L1807:
	testq	%r15, %r15
	movq	%rsi, 72(%r13)
	jle	.L1808
	movl	20(%rsp), %edx
	movq	32(%rsp), %rbx
	leaq	(%rsi,%r15,8), %r11
	movq	24(%rsp), %rcx
	movl	%edx, %r8d
	jmp	.L1810
	.p2align 4,,10
	.p2align 3
.L1809:
	movl	%r10d, %edx
.L1810:
	movl	%edx, %eax
	leal	16(%rdx), %edi
	leaq	8(%rcx), %r9
	addq	%rbx, %rax
	cmpl	$175, %edx
	cmova	%rcx, %rax
	movl	%edi, %r10d
	cmova	%r9, %rcx
	movsd	(%rax), %xmm0
	cmova	%edx, %r10d
	cmovbe	%edi, %r8d
	addq	$8, %rsi
	movsd	%xmm0, -8(%rsi)
	cmpq	%r11, %rsi
	jne	.L1809
	cmpl	$47, %ebp
	movq	%rcx, 24(%rsp)
	movl	%r8d, 20(%rsp)
	jbe	.L1902
.L1811:
	movq	24(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	jmp	.L1812
	.p2align 4,,10
	.p2align 3
.L1794:
	cmpl	$47, %ebx
	jbe	.L1881
	movq	24(%rsp), %rdx
	jmp	.L1796
	.p2align 4,,10
	.p2align 3
.L1785:
	cmpl	$47, %r9d
	jbe	.L1880
	movq	24(%rsp), %rdx
	jmp	.L1787
	.p2align 4,,10
	.p2align 3
.L1776:
	cmpl	$47, %r8d
	jbe	.L1879
	movq	24(%rsp), %rdx
	jmp	.L1778
	.p2align 4,,10
	.p2align 3
.L1829:
	movq	24(%rsp), %rax
	movq	(%rax), %r15
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	testq	%r15, %r15
	movq	%r15, 104(%r13)
	je	.L1831
.L1899:
	leaq	0(,%r15,8), %r8
	testq	%r8, %r8
	je	.L1866
	movq	%r8, %rdi
	movq	%r8, 8(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	8(%rsp), %r8
	je	.L1903
.L1832:
	testq	%r15, %r15
	movq	%rax, 112(%r13)
	jle	.L1868
	movq	32(%rsp), %r10
	movl	16(%rsp), %edi
	leaq	(%rax,%r8), %r9
	movq	24(%rsp), %rdx
	jmp	.L1835
	.p2align 4,,10
	.p2align 3
.L1904:
	movl	%ebp, %ebx
.L1835:
	movl	%ebx, %ecx
	leal	8(%rbx), %esi
	leaq	8(%rdx), %r11
	addq	%r10, %rcx
	cmpl	$47, %ebx
	cmova	%rdx, %rcx
	movl	%esi, %ebp
	cmovbe	%esi, %edi
	movq	(%rcx), %rcx
	cmova	%ebx, %ebp
	cmova	%r11, %rdx
	addq	$8, %rax
	movq	%rcx, -8(%rax)
	addq	%rcx, %r14
	cmpq	%r9, %rax
	jne	.L1904
	movl	%edi, 16(%rsp)
	movq	%rdx, 24(%rsp)
.L1833:
	cmpl	$47, %ebp
	ja	.L1836
	movl	%ebp, %eax
	addq	32(%rsp), %rax
	addl	$8, %ebp
	movl	%ebp, 16(%rsp)
.L1837:
	testq	%r8, %r8
	movq	(%rax), %rbx
	je	.L1869
	movq	%r8, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L1905
.L1838:
	testq	%rbx, %rbx
	movq	%rax, 120(%r13)
	jle	.L1844
	movq	32(%rsp), %r8
	movl	16(%rsp), %edi
	xorl	%edx, %edx
	movq	24(%rsp), %rsi
	jmp	.L1845
	.p2align 4,,10
	.p2align 3
.L1907:
	movl	%ebp, %ecx
	addq	$1, %rdx
	addl	$8, %ebp
	addq	%r8, %rcx
	cmpq	%rbx, %rdx
	movl	%ebp, %edi
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	je	.L1906
.L1843:
	movq	16(%r12), %rax
	movq	120(%rax), %rax
.L1845:
	cmpl	$47, %ebp
	leaq	(%rax,%rdx,8), %rax
	jbe	.L1907
	movq	%rsi, %rcx
	addq	$1, %rdx
	addq	$8, %rsi
	movq	(%rcx), %rcx
	cmpq	%rbx, %rdx
	movq	%rcx, (%rax)
	jne	.L1843
.L1906:
	movl	%edi, 16(%rsp)
	movq	%rsi, 24(%rsp)
.L1844:
	cmpq	%rbx, %r15
	leaq	0(,%rbx,8), %rax
	jle	.L1763
	.p2align 4,,10
	.p2align 3
.L1876:
	movq	16(%r12), %rdx
	addq	$1, %rbx
	movq	120(%rdx), %rdx
	movq	$0, (%rdx,%rax)
	addq	$8, %rax
	cmpq	%r15, %rbx
	jne	.L1876
	jmp	.L1763
	.p2align 4,,10
	.p2align 3
.L1879:
	leal	16(%rcx), %ebx
	addq	%r8, %rdx
	movl	%ebx, 16(%rsp)
	jmp	.L1779
	.p2align 4,,10
	.p2align 3
.L1880:
	leal	16(%r8), %ebx
	addq	%r9, %rdx
	movl	%ebx, 16(%rsp)
	jmp	.L1788
	.p2align 4,,10
	.p2align 3
.L1881:
	addq	%rbx, %rdx
	leal	16(%r9), %ebx
	movl	%ebx, 16(%rsp)
	jmp	.L1797
	.p2align 4,,10
	.p2align 3
.L1882:
	addq	%rbp, %rdx
	leal	16(%rbx), %ebp
	movl	%ebp, 16(%rsp)
	jmp	.L1806
	.p2align 4,,10
	.p2align 3
.L1878:
	addl	$16, %ecx
	addq	%rax, %rdx
	movl	%ecx, 16(%rsp)
	jmp	.L1767
	.p2align 4,,10
	.p2align 3
.L1898:
	testq	%r8, %r8
	je	.L1861
	movq	%r8, %rdi
	movq	%r8, 8(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	8(%rsp), %r8
	je	.L1908
.L1814:
	testq	%r15, %r15
	movq	%rax, 88(%r13)
	jle	.L1863
	movq	32(%rsp), %r10
	movl	16(%rsp), %edi
	leaq	(%rax,%r8), %r9
	movq	24(%rsp), %rdx
	jmp	.L1817
	.p2align 4,,10
	.p2align 3
.L1909:
	movl	%ebx, %ebp
.L1817:
	movl	%ebp, %ecx
	leal	8(%rbp), %esi
	leaq	8(%rdx), %r11
	addq	%r10, %rcx
	cmpl	$47, %ebp
	cmova	%rdx, %rcx
	movl	%esi, %ebx
	cmovbe	%esi, %edi
	movq	(%rcx), %rcx
	cmova	%ebp, %ebx
	cmova	%r11, %rdx
	addq	$8, %rax
	movq	%rcx, -8(%rax)
	cmpq	%r9, %rax
	jne	.L1909
	movl	%edi, 16(%rsp)
	movq	%rdx, 24(%rsp)
.L1815:
	cmpl	$47, %ebx
	ja	.L1818
	movl	%ebx, %eax
	addq	32(%rsp), %rax
	addl	$8, %ebx
	movl	%ebx, 16(%rsp)
.L1819:
	testq	%r8, %r8
	movq	(%rax), %rbp
	je	.L1864
	movq	%r8, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L1910
.L1820:
	testq	%rbp, %rbp
	movq	%rax, 96(%r13)
	jle	.L1821
	movq	32(%rsp), %r8
	movl	16(%rsp), %edi
	xorl	%edx, %edx
	movq	24(%rsp), %rsi
	jmp	.L1825
	.p2align 4,,10
	.p2align 3
.L1911:
	movl	%ebx, %ecx
	addq	$1, %rdx
	addl	$8, %ebx
	addq	%r8, %rcx
	cmpq	%rbp, %rdx
	movl	%ebx, %edi
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	je	.L1824
.L1912:
	movq	16(%r12), %rax
	movq	96(%rax), %rax
.L1825:
	cmpl	$47, %ebx
	leaq	(%rax,%rdx,8), %rax
	jbe	.L1911
	movq	%rsi, %rcx
	addq	$1, %rdx
	addq	$8, %rsi
	movq	(%rcx), %rcx
	cmpq	%rbp, %rdx
	movq	%rcx, (%rax)
	jne	.L1912
.L1824:
	movq	16(%r12), %r13
	movl	%edi, 16(%rsp)
	movq	%rsi, 24(%rsp)
.L1821:
	cmpq	%rbp, %r15
	jle	.L1826
	leaq	0(,%rbp,8), %rax
	.p2align 4,,10
	.p2align 3
.L1828:
	movq	96(%r13), %rdx
	addq	$1, %rbp
	movq	$0, (%rdx,%rax)
	addq	$8, %rax
	cmpq	%r15, %rbp
	movq	16(%r12), %r13
	jne	.L1828
	jmp	.L1826
	.p2align 4,,10
	.p2align 3
.L1818:
	movq	24(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	jmp	.L1819
	.p2align 4,,10
	.p2align 3
.L1836:
	movq	24(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	jmp	.L1837
	.p2align 4,,10
	.p2align 3
.L1852:
	xorl	%eax, %eax
	jmp	.L1789
	.p2align 4,,10
	.p2align 3
.L1848:
	xorl	%eax, %eax
	jmp	.L1780
	.p2align 4,,10
	.p2align 3
.L1859:
	xorl	%esi, %esi
	jmp	.L1807
	.p2align 4,,10
	.p2align 3
.L1856:
	xorl	%esi, %esi
	jmp	.L1798
	.p2align 4,,10
	.p2align 3
.L1866:
	xorl	%eax, %eax
	jmp	.L1832
	.p2align 4,,10
	.p2align 3
.L1864:
	xorl	%eax, %eax
	jmp	.L1820
	.p2align 4,,10
	.p2align 3
.L1861:
	xorl	%eax, %eax
	jmp	.L1814
	.p2align 4,,10
	.p2align 3
.L1869:
	xorl	%eax, %eax
	jmp	.L1838
.L1854:
	movl	%ebx, %r9d
	.p2align 4,,4
	jmp	.L1790
.L1850:
	movl	%ebx, %r8d
	.p2align 4,,3
	jmp	.L1781
.L1863:
	movl	%ebp, %ebx
	.p2align 4,,3
	jmp	.L1815
.L1868:
	movl	%ebx, %ebp
	.p2align 4,,4
	jmp	.L1833
.L1884:
	movl	$736, %esi
	movl	$__func__.6486, %edi
	call	error_checking_malloc.part.0
.L1892:
	movl	$769, %esi
	movl	$__func__.6486, %edi
	call	error_checking_malloc.part.0
.L1901:
	movl	$820, %esi
	movl	$__func__.6486, %edi
	call	error_checking_malloc.part.0
.L1903:
	movl	$864, %esi
	movl	$__func__.6486, %edi
	call	error_checking_malloc.part.0
.L1910:
	movl	$843, %esi
	movl	$__func__.6486, %edi
	call	error_checking_malloc.part.0
.L1896:
	movl	$803, %esi
	movl	$__func__.6486, %edi
	call	error_checking_malloc.part.0
.L1886:
	movl	$739, %esi
	movl	$__func__.6486, %edi
	call	error_checking_malloc.part.0
.L1894:
	movl	$786, %esi
	movl	$__func__.6486, %edi
	call	error_checking_malloc.part.0
.L1908:
	movl	$836, %esi
	movl	$__func__.6486, %edi
	call	error_checking_malloc.part.0
.L1905:
	movl	$872, %esi
	movl	$__func__.6486, %edi
	call	error_checking_malloc.part.0
.L1888:
	movl	$752, %esi
	movl	$__func__.6486, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE158:
	.size	init_function_params_with_uninitialised_elements, .-init_function_params_with_uninitialised_elements
	.section	.rodata.str1.1
.LC82:
	.string	"No parameters? Strange..."
	.text
	.p2align 4,,15
	.globl	put_fun_params_into_secure_stack
	.type	put_fun_params_into_secure_stack, @function
put_fun_params_into_secure_stack:
.LFB159:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13
	movl	$24, %edi
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L2054
	cmpq	$0, 16(%r13)
	movq	0(%r13), %rax
	movq	$0, 8(%rbx)
	movq	%rax, (%rbx)
	je	.L1915
	movl	$128, %edi
	call	malloc
	testq	%rax, %rax
	je	.L2055
	movq	%rax, 16(%rbx)
.L1917:
	movq	16(%r13), %rbp
	testq	%rbp, %rbp
	je	.L2034
	movq	0(%rbp), %rdi
	movq	16(%rbx), %r14
	movq	last_unused_stack_memory(%rip), %rcx
	testq	%rdi, %rdi
	movq	%rdi, (%r14)
	je	.L1919
	movq	%rdi, %rax
	movabsq	$6148914691236517206, %rdx
	imulq	%rdx
	movq	%rdi, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	cmpq	%rax, %rdi
	setg	%al
	movzbl	%al, %eax
	addq	%rax, %rdx
	movq	entire_stack_memory_chunk(%rip), %rax
	addq	total_stack_bytes_allocated(%rip), %rax
	leaq	0(,%rdx,8), %rsi
	leaq	(%rcx,%rsi), %r9
	cmpq	%rax, %r9
	movq	%r9, last_unused_stack_memory(%rip)
	jnb	.L2056
	movq	%rdx, %rsi
	addq	8(%rbx), %rsi
	testq	%rcx, %rcx
	movq	%rsi, 8(%rbx)
	movq	%rcx, 8(%r14)
	je	.L1997
	testq	%rdi, %rdi
	movq	8(%rbp), %r8
	jle	.L1997
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	jmp	.L1927
	.p2align 4,,10
	.p2align 3
.L2058:
	cmpq	%rdx, %rdi
	jle	.L1924
	movzbl	(%r8,%rdx), %eax
	movb	%al, (%rcx,%rsi)
	leaq	1(%rdx), %rax
	cmpq	%rax, %rdi
	jle	.L1999
	movzbl	1(%r8,%rdx), %eax
	movb	%al, 1(%rcx,%rsi)
	leaq	2(%rdx), %rax
	cmpq	%rax, %rdi
	jle	.L1999
	movzbl	2(%r8,%rdx), %eax
	addq	$3, %rdx
	movb	%al, 2(%rcx,%rsi)
.L1924:
	addq	$3, %rsi
	cmpq	%rdx, %rdi
	movl	$1, %eax
	jle	.L2057
.L1927:
	testl	%eax, %eax
	je	.L2058
	addq	$5, %rsi
	xorl	%eax, %eax
	cmpq	%rdx, %rdi
	jg	.L1927
.L2057:
	movq	16(%rbx), %r14
	movq	16(%r13), %rbp
	movq	8(%rbx), %rsi
	movq	last_unused_stack_memory(%rip), %rcx
	jmp	.L1922
	.p2align 4,,10
	.p2align 3
.L2034:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L2056:
	.cfi_restore_state
	movq	%r9, %rcx
	subq	%rsi, %rcx
	movq	%rcx, last_unused_stack_memory(%rip)
.L1919:
	movq	8(%rbx), %rsi
	movq	$0, 8(%r14)
.L1922:
	movq	16(%rbp), %rdi
	movq	%rdi, 16(%r14)
	salq	$2, %rdi
	testq	%rdi, %rdi
	je	.L1928
	movq	%rdi, %rax
	movabsq	$6148914691236517206, %rdx
	imulq	%rdx
	movq	%rdi, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	cmpq	%rax, %rdi
	setg	%al
	movzbl	%al, %eax
	addq	%rax, %rdx
	movq	entire_stack_memory_chunk(%rip), %rax
	addq	total_stack_bytes_allocated(%rip), %rax
	leaq	0(,%rdx,8), %r8
	leaq	(%rcx,%r8), %r9
	cmpq	%rax, %r9
	movq	%r9, last_unused_stack_memory(%rip)
	jnb	.L2059
	addq	%rdx, %rsi
	testq	%rcx, %rcx
	movq	%rsi, 8(%rbx)
	movq	%rcx, 24(%r14)
	je	.L2001
	testq	%rdi, %rdi
	movq	24(%rbp), %r8
	jle	.L2001
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	jmp	.L1936
	.p2align 4,,10
	.p2align 3
.L2061:
	cmpq	%rdx, %rdi
	jle	.L1933
	movzbl	(%r8,%rdx), %eax
	movb	%al, (%rcx,%rsi)
	leaq	1(%rdx), %rax
	cmpq	%rax, %rdi
	jle	.L2003
	movzbl	1(%r8,%rdx), %eax
	movb	%al, 1(%rcx,%rsi)
	leaq	2(%rdx), %rax
	cmpq	%rax, %rdi
	jle	.L2003
	movzbl	2(%r8,%rdx), %eax
	addq	$3, %rdx
	movb	%al, 2(%rcx,%rsi)
.L1933:
	addq	$3, %rsi
	cmpq	%rdx, %rdi
	movl	$1, %eax
	jle	.L2060
.L1936:
	testl	%eax, %eax
	je	.L2061
	addq	$5, %rsi
	xorl	%eax, %eax
	cmpq	%rdx, %rdi
	jg	.L1936
.L2060:
	movq	16(%rbx), %r14
	movq	16(%r13), %rbp
	movq	8(%rbx), %rsi
	movq	last_unused_stack_memory(%rip), %rcx
	jmp	.L1931
.L2059:
	movq	%r9, %rcx
	subq	%r8, %rcx
	movq	%rcx, last_unused_stack_memory(%rip)
.L1928:
	movq	$0, 24(%r14)
.L1931:
	movq	32(%rbp), %rdi
	movq	%rdi, 32(%r14)
	salq	$3, %rdi
	testq	%rdi, %rdi
	je	.L1937
	movq	%rdi, %rax
	movabsq	$6148914691236517206, %rdx
	imulq	%rdx
	movq	%rdi, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	cmpq	%rax, %rdi
	setg	%al
	movzbl	%al, %eax
	addq	%rax, %rdx
	movq	entire_stack_memory_chunk(%rip), %rax
	addq	total_stack_bytes_allocated(%rip), %rax
	leaq	0(,%rdx,8), %r8
	leaq	(%rcx,%r8), %r9
	cmpq	%rax, %r9
	movq	%r9, last_unused_stack_memory(%rip)
	jnb	.L2062
	addq	%rdx, %rsi
	testq	%rcx, %rcx
	movq	%rsi, 8(%rbx)
	movq	%rcx, 40(%r14)
	je	.L2005
	testq	%rdi, %rdi
	movq	40(%rbp), %r8
	jle	.L2005
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	jmp	.L1945
	.p2align 4,,10
	.p2align 3
.L2064:
	cmpq	%rdx, %rdi
	jle	.L1942
	movzbl	(%r8,%rdx), %eax
	movb	%al, (%rcx,%rsi)
	leaq	1(%rdx), %rax
	cmpq	%rax, %rdi
	jle	.L2007
	movzbl	1(%r8,%rdx), %eax
	movb	%al, 1(%rcx,%rsi)
	leaq	2(%rdx), %rax
	cmpq	%rax, %rdi
	jle	.L2007
	movzbl	2(%r8,%rdx), %eax
	addq	$3, %rdx
	movb	%al, 2(%rcx,%rsi)
.L1942:
	addq	$3, %rsi
	cmpq	%rdx, %rdi
	movl	$1, %eax
	jle	.L2063
.L1945:
	testl	%eax, %eax
	je	.L2064
	addq	$5, %rsi
	xorl	%eax, %eax
	cmpq	%rdx, %rdi
	jg	.L1945
.L2063:
	movq	16(%rbx), %r14
	movq	16(%r13), %rbp
	movq	8(%rbx), %rsi
	movq	last_unused_stack_memory(%rip), %rcx
.L1940:
	movq	48(%rbp), %rdi
	movq	%rdi, 48(%r14)
	salq	$2, %rdi
	testq	%rdi, %rdi
	je	.L1946
	movq	%rdi, %rax
	movabsq	$6148914691236517206, %rdx
	imulq	%rdx
	movq	%rdi, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	cmpq	%rax, %rdi
	setg	%al
	movzbl	%al, %eax
	addq	%rax, %rdx
	movq	entire_stack_memory_chunk(%rip), %rax
	addq	total_stack_bytes_allocated(%rip), %rax
	leaq	0(,%rdx,8), %r8
	leaq	(%rcx,%r8), %r9
	cmpq	%rax, %r9
	movq	%r9, last_unused_stack_memory(%rip)
	jnb	.L2065
	addq	%rdx, %rsi
	testq	%rcx, %rcx
	movq	%rsi, 8(%rbx)
	movq	%rcx, 56(%r14)
	je	.L2009
	testq	%rdi, %rdi
	movq	56(%rbp), %r8
	jle	.L2009
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	jmp	.L1954
	.p2align 4,,10
	.p2align 3
.L2067:
	cmpq	%rdx, %rdi
	jle	.L1951
	movzbl	(%r8,%rdx), %eax
	movb	%al, (%rcx,%rsi)
	leaq	1(%rdx), %rax
	cmpq	%rax, %rdi
	jle	.L2011
	movzbl	1(%r8,%rdx), %eax
	movb	%al, 1(%rcx,%rsi)
	leaq	2(%rdx), %rax
	cmpq	%rax, %rdi
	jle	.L2011
	movzbl	2(%r8,%rdx), %eax
	addq	$3, %rdx
	movb	%al, 2(%rcx,%rsi)
.L1951:
	addq	$3, %rsi
	cmpq	%rdx, %rdi
	movl	$1, %eax
	jle	.L2066
.L1954:
	testl	%eax, %eax
	je	.L2067
	addq	$5, %rsi
	xorl	%eax, %eax
	cmpq	%rdx, %rdi
	jg	.L1954
.L2066:
	movq	16(%rbx), %r14
	movq	16(%r13), %rbp
	movq	8(%rbx), %rsi
	movq	last_unused_stack_memory(%rip), %rcx
.L1949:
	movq	64(%rbp), %rdi
	movq	%rdi, 64(%r14)
	salq	$3, %rdi
	testq	%rdi, %rdi
	je	.L1955
	movq	%rdi, %rax
	movabsq	$6148914691236517206, %rdx
	imulq	%rdx
	movq	%rdi, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	cmpq	%rax, %rdi
	setg	%al
	movzbl	%al, %eax
	addq	%rax, %rdx
	movq	entire_stack_memory_chunk(%rip), %rax
	addq	total_stack_bytes_allocated(%rip), %rax
	leaq	0(,%rdx,8), %r8
	leaq	(%rcx,%r8), %r9
	cmpq	%rax, %r9
	movq	%r9, last_unused_stack_memory(%rip)
	jnb	.L2068
	addq	%rdx, %rsi
	testq	%rcx, %rcx
	movq	%rsi, 8(%rbx)
	movq	%rcx, 72(%r14)
	je	.L2013
	testq	%rdi, %rdi
	movq	72(%rbp), %r8
	jle	.L2013
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	jmp	.L1963
	.p2align 4,,10
	.p2align 3
.L2070:
	cmpq	%rdx, %rdi
	jle	.L1960
	movzbl	(%r8,%rdx), %eax
	movb	%al, (%rcx,%rsi)
	leaq	1(%rdx), %rax
	cmpq	%rax, %rdi
	jle	.L2015
	movzbl	1(%r8,%rdx), %eax
	movb	%al, 1(%rcx,%rsi)
	leaq	2(%rdx), %rax
	cmpq	%rax, %rdi
	jle	.L2015
	movzbl	2(%r8,%rdx), %eax
	addq	$3, %rdx
	movb	%al, 2(%rcx,%rsi)
.L1960:
	addq	$3, %rsi
	cmpq	%rdx, %rdi
	movl	$1, %eax
	jle	.L2069
.L1963:
	testl	%eax, %eax
	je	.L2070
	addq	$5, %rsi
	xorl	%eax, %eax
	cmpq	%rdx, %rdi
	jg	.L1963
.L2069:
	movq	16(%rbx), %r14
	movq	16(%r13), %rbp
	movq	8(%rbx), %rsi
	movq	last_unused_stack_memory(%rip), %rcx
.L1958:
	movq	80(%rbp), %r12
	leaq	0(,%r12,8), %rdi
	movq	%r12, 80(%r14)
	testq	%rdi, %rdi
	je	.L1964
	movq	%rdi, %rax
	movabsq	$6148914691236517206, %rdx
	imulq	%rdx
	movq	%rdi, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	cmpq	%rax, %rdi
	setg	%al
	movzbl	%al, %eax
	addq	%rax, %rdx
	movq	entire_stack_memory_chunk(%rip), %rax
	addq	total_stack_bytes_allocated(%rip), %rax
	leaq	0(,%rdx,8), %r9
	leaq	(%rcx,%r9), %r8
	cmpq	%rax, %r8
	movq	%r8, last_unused_stack_memory(%rip)
	jnb	.L2071
	addq	%rsi, %rdx
	testq	%rcx, %rcx
	movq	%rdx, 8(%rbx)
	movq	%rcx, 96(%r14)
	je	.L1994
	testq	%rdi, %rdi
	movq	96(%rbp), %r8
	jle	.L1994
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	jmp	.L1972
	.p2align 4,,10
	.p2align 3
.L2073:
	cmpq	%rdx, %rdi
	jle	.L1969
	movzbl	(%r8,%rdx), %eax
	movb	%al, (%rcx,%rsi)
	leaq	1(%rdx), %rax
	cmpq	%rax, %rdi
	jle	.L2017
	movzbl	1(%r8,%rdx), %eax
	movb	%al, 1(%rcx,%rsi)
	leaq	2(%rdx), %rax
	cmpq	%rax, %rdi
	jle	.L2017
	movzbl	2(%r8,%rdx), %eax
	addq	$3, %rdx
	movb	%al, 2(%rcx,%rsi)
.L1969:
	addq	$3, %rsi
	cmpq	%rdx, %rdi
	movl	$1, %eax
	jle	.L2072
.L1972:
	testl	%eax, %eax
	je	.L2073
	addq	$5, %rsi
	xorl	%eax, %eax
	cmpq	%rdx, %rdi
	jg	.L1972
.L2072:
	movq	16(%rbx), %r14
.L1994:
	call	malloc
	testq	%rax, %rax
	je	.L2074
	movq	16(%r13), %rbp
.L1973:
	testq	%r12, %r12
	movq	%rax, 88(%r14)
	jle	.L1975
	movq	88(%rbp), %rsi
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L1976:
	movq	(%rsi,%rdx,8), %rcx
	movq	%rcx, (%rax,%rdx,8)
	addq	$1, %rdx
	cmpq	%r12, %rdx
	jne	.L1976
.L1975:
	movq	104(%rbp), %r12
	leaq	0(,%r12,8), %r8
	movq	%r12, 104(%r14)
	testq	%r8, %r8
	je	.L2019
	movq	%r8, %rdi
	movq	%r8, 8(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	8(%rsp), %r8
	je	.L2075
	movq	%rax, %r15
.L1977:
	testq	%r12, %r12
	movq	%r15, 112(%r14)
	jle	.L1981
	movq	112(%rbp), %rax
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L1982:
	movq	(%rax,%rdx,8), %rcx
	movq	%rcx, (%r15,%rdx,8)
	addq	$1, %rdx
	cmpq	%r12, %rdx
	jne	.L1982
.L1981:
	testq	%r8, %r8
	je	.L2076
	movq	%r8, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L2077
.L1979:
	testq	%r12, %r12
	movq	%rax, 120(%r14)
	jle	.L2034
	movq	%r15, %rsi
	xorl	%r11d, %r11d
	movabsq	$6148914691236517206, %rdi
	.p2align 4,,10
	.p2align 3
.L1993:
	leaq	0(,%r11,8), %rbp
	movq	last_unused_stack_memory(%rip), %r9
	addq	%rbp, %rsi
	movq	(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L1984
	movq	%rcx, %rax
	imulq	%rdi
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	cmpq	%rax, %rcx
	setg	%al
	movzbl	%al, %eax
	addq	%rax, %rdx
	movq	entire_stack_memory_chunk(%rip), %rax
	addq	total_stack_bytes_allocated(%rip), %rax
	leaq	0(,%rdx,8), %r8
	leaq	(%r9,%r8), %rcx
	cmpq	%rax, %rcx
	movq	%rcx, last_unused_stack_memory(%rip)
	jnb	.L2078
	addq	%rdx, 8(%rbx)
	testq	%r9, %r9
	je	.L1987
	movq	16(%r13), %rax
	movq	(%rsi), %rsi
	movq	120(%rax), %rax
	testq	%rsi, %rsi
	movq	(%rax,%rbp), %r10
	jle	.L1987
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	jmp	.L1992
	.p2align 4,,10
	.p2align 3
.L2080:
	cmpq	%rdx, %rsi
	jle	.L1989
	movzbl	(%r10,%rdx), %eax
	leaq	1(%rdx), %r8
	cmpq	%r8, %rsi
	movb	%al, (%r9,%rcx)
	jle	.L2023
	movzbl	1(%r10,%rdx), %eax
	movb	%al, 1(%r9,%rcx)
	leaq	2(%rdx), %rax
	cmpq	%rax, %rsi
	jle	.L2024
	movzbl	2(%r10,%rdx), %eax
	addq	$3, %rdx
	movb	%al, 2(%r9,%rcx)
.L1989:
	addq	$3, %rcx
	cmpq	%rdx, %rsi
	movl	$1, %r8d
	jle	.L2079
.L1992:
	testl	%r8d, %r8d
	je	.L2080
	addq	$5, %rcx
	xorl	%r8d, %r8d
	cmpq	%rdx, %rsi
	jg	.L1992
.L2079:
	movq	16(%rbx), %r14
.L1987:
	movq	120(%r14), %rax
	addq	$1, %r11
	cmpq	%r12, %r11
	movq	%r9, (%rax,%rbp)
	je	.L2034
	movq	16(%rbx), %r14
	movq	112(%r14), %rsi
	jmp	.L1993
	.p2align 4,,10
	.p2align 3
.L2078:
	subq	%r8, %rcx
	movq	%rcx, last_unused_stack_memory(%rip)
.L1984:
	xorl	%r9d, %r9d
	jmp	.L1987
	.p2align 4,,10
	.p2align 3
.L2023:
	movq	%r8, %rdx
	jmp	.L1989
	.p2align 4,,10
	.p2align 3
.L2024:
	movq	%rax, %rdx
	jmp	.L1989
.L2071:
	subq	%r9, %r8
	movq	%r8, last_unused_stack_memory(%rip)
.L1964:
	xorl	%eax, %eax
	testq	%rdi, %rdi
	movq	$0, 96(%r14)
	je	.L1973
	jmp	.L1994
.L2068:
	movq	%r9, %rcx
	subq	%r8, %rcx
	movq	%rcx, last_unused_stack_memory(%rip)
.L1955:
	movq	$0, 72(%r14)
	jmp	.L1958
.L2065:
	movq	%r9, %rcx
	subq	%r8, %rcx
	movq	%rcx, last_unused_stack_memory(%rip)
.L1946:
	movq	$0, 56(%r14)
	jmp	.L1949
.L2062:
	movq	%r9, %rcx
	subq	%r8, %rcx
	movq	%rcx, last_unused_stack_memory(%rip)
.L1937:
	movq	$0, 40(%r14)
	jmp	.L1940
.L1999:
	movq	%rax, %rdx
	jmp	.L1924
.L2017:
	movq	%rax, %rdx
	jmp	.L1969
.L2015:
	movq	%rax, %rdx
	.p2align 4,,2
	jmp	.L1960
.L2003:
	movq	%rax, %rdx
	.p2align 4,,2
	jmp	.L1933
.L2011:
	movq	%rax, %rdx
	.p2align 4,,2
	jmp	.L1951
.L2007:
	movq	%rax, %rdx
	.p2align 4,,2
	jmp	.L1942
.L2019:
	xorl	%r15d, %r15d
	.p2align 4,,2
	jmp	.L1977
.L2076:
	xorl	%eax, %eax
	.p2align 4,,3
	jmp	.L1979
.L1915:
	movl	$.LC82, %edi
	movq	$0, 16(%rbx)
	call	puts
	jmp	.L1917
.L2013:
	movq	%r9, %rcx
	jmp	.L1958
.L2009:
	movq	%r9, %rcx
	.p2align 4,,5
	jmp	.L1949
.L2005:
	movq	%r9, %rcx
	.p2align 4,,2
	jmp	.L1940
.L2001:
	movq	%r9, %rcx
	.p2align 4,,2
	jmp	.L1931
.L1997:
	movq	%r9, %rcx
	.p2align 4,,2
	jmp	.L1922
.L2074:
	movl	$1006, %esi
	movl	$__func__.6529, %edi
	call	error_checking_malloc.part.0
.L2055:
	movl	$924, %esi
	movl	$__func__.6529, %edi
	call	error_checking_malloc.part.0
.L2054:
	movl	$916, %esi
	movl	$__func__.6529, %edi
	call	error_checking_malloc.part.0
.L2077:
	movl	$1016, %esi
	movl	$__func__.6529, %edi
	call	error_checking_malloc.part.0
.L2075:
	movl	$1013, %esi
	movl	$__func__.6529, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE159:
	.size	put_fun_params_into_secure_stack, .-put_fun_params_into_secure_stack
	.p2align 4,,15
	.globl	free_fun_params
	.type	free_fun_params, @function
free_fun_params:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	testq	%rdi, %rdi
	je	.L2081
	movq	16(%rdi), %rax
	testq	%rax, %rax
	je	.L2083
	movq	8(%rax), %rdi
	call	free
	movq	16(%rbp), %rax
	movq	24(%rax), %rdi
	call	free
	movq	16(%rbp), %rax
	movq	40(%rax), %rdi
	call	free
	movq	16(%rbp), %rax
	movq	56(%rax), %rdi
	call	free
	movq	16(%rbp), %rax
	movq	72(%rax), %rdi
	call	free
	movq	16(%rbp), %rax
	movq	96(%rax), %rdi
	call	free
	movq	16(%rbp), %rax
	movq	88(%rax), %rdi
	call	free
	movq	16(%rbp), %rax
	movq	112(%rax), %rdi
	call	free
	movq	16(%rbp), %rdi
	cmpq	$0, 104(%rdi)
	jle	.L2084
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L2085:
	movq	120(%rdi), %rax
	movq	(%rax,%rbx,8), %rdi
	addq	$1, %rbx
	call	free
	movq	16(%rbp), %rdi
	cmpq	%rbx, 104(%rdi)
	jg	.L2085
.L2084:
	call	free
.L2083:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbp, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free
	.p2align 4,,10
	.p2align 3
.L2081:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE160:
	.size	free_fun_params, .-free_fun_params
	.p2align 4,,15
	.globl	free_fun_params_that_point_to_stack
	.type	free_fun_params_that_point_to_stack, @function
free_fun_params_that_point_to_stack:
.LFB161:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	16(%rdi), %rax
	movq	%rdi, %rbx
	movq	88(%rax), %rdi
	call	free
	movq	16(%rbx), %rax
	movq	112(%rax), %rdi
	call	free
	movq	16(%rbx), %rdi
	call	free
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free
	.cfi_endproc
.LFE161:
	.size	free_fun_params_that_point_to_stack, .-free_fun_params_that_point_to_stack
	.p2align 4,,15
	.globl	put_fun_params_into_secure_stack_and_free
	.type	put_fun_params_into_secure_stack_and_free, @function
put_fun_params_into_secure_stack_and_free:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	put_fun_params_into_secure_stack
	movq	%rbx, %rdi
	movq	%rax, %rbp
	call	free_fun_params
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE162:
	.size	put_fun_params_into_secure_stack_and_free, .-put_fun_params_into_secure_stack_and_free
	.p2align 4,,15
	.globl	get_stack_char
	.type	get_stack_char, @function
get_stack_char:
.LFB163:
	.cfi_startproc
	movzbl	(%rdi), %eax
	ret
	.cfi_endproc
.LFE163:
	.size	get_stack_char, .-get_stack_char
	.p2align 4,,15
	.globl	get_stack_int
	.type	get_stack_int, @function
get_stack_int:
.LFB164:
	.cfi_startproc
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2100
	.p2align 4,,10
	.p2align 3
.L2104:
	movzbl	(%rdi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$4, %rcx
	je	.L2101
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$3, %rcx
	movb	%sil, -23(%rsp,%rdx)
	jg	.L2102
	movzbl	2(%rdi,%rax), %esi
	addq	$3, %rdx
	movb	%sil, -24(%rsp,%rcx)
.L2097:
	addq	$3, %rax
	cmpq	$3, %rdx
	movl	$1, %ecx
	jg	.L2103
.L2100:
	testl	%ecx, %ecx
	je	.L2104
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$3, %rdx
	jle	.L2100
.L2103:
	movl	-24(%rsp), %eax
	ret
	.p2align 4,,10
	.p2align 3
.L2101:
	movl	$4, %edx
	jmp	.L2097
	.p2align 4,,10
	.p2align 3
.L2102:
	movq	%rcx, %rdx
	jmp	.L2097
	.cfi_endproc
.LFE164:
	.size	get_stack_int, .-get_stack_int
	.p2align 4,,15
	.globl	get_stack_long_int
	.type	get_stack_long_int, @function
get_stack_long_int:
.LFB165:
	.cfi_startproc
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2110
	.p2align 4,,10
	.p2align 3
.L2114:
	movzbl	(%rdi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L2111
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%sil, -23(%rsp,%rdx)
	jg	.L2112
	movzbl	2(%rdi,%rax), %esi
	addq	$3, %rdx
	movb	%sil, -24(%rsp,%rcx)
.L2107:
	addq	$3, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L2113
.L2110:
	testl	%ecx, %ecx
	je	.L2114
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L2110
.L2113:
	movq	-24(%rsp), %rax
	ret
	.p2align 4,,10
	.p2align 3
.L2111:
	movl	$8, %edx
	jmp	.L2107
	.p2align 4,,10
	.p2align 3
.L2112:
	movq	%rcx, %rdx
	jmp	.L2107
	.cfi_endproc
.LFE165:
	.size	get_stack_long_int, .-get_stack_long_int
	.p2align 4,,15
	.globl	get_stack_pointer
	.type	get_stack_pointer, @function
get_stack_pointer:
.LFB166:
	.cfi_startproc
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2120
	.p2align 4,,10
	.p2align 3
.L2124:
	movzbl	(%rdi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L2121
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%sil, -23(%rsp,%rdx)
	jg	.L2122
	movzbl	2(%rdi,%rax), %esi
	addq	$3, %rdx
	movb	%sil, -24(%rsp,%rcx)
.L2117:
	addq	$3, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L2123
.L2120:
	testl	%ecx, %ecx
	je	.L2124
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L2120
.L2123:
	movq	-24(%rsp), %rax
	ret
	.p2align 4,,10
	.p2align 3
.L2121:
	movl	$8, %edx
	jmp	.L2117
	.p2align 4,,10
	.p2align 3
.L2122:
	movq	%rcx, %rdx
	jmp	.L2117
	.cfi_endproc
.LFE166:
	.size	get_stack_pointer, .-get_stack_pointer
	.p2align 4,,15
	.globl	get_stack_float
	.type	get_stack_float, @function
get_stack_float:
.LFB167:
	.cfi_startproc
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2130
	.p2align 4,,10
	.p2align 3
.L2134:
	movzbl	(%rdi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$4, %rcx
	je	.L2131
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$3, %rcx
	movb	%sil, -23(%rsp,%rdx)
	jg	.L2132
	movzbl	2(%rdi,%rax), %esi
	addq	$3, %rdx
	movb	%sil, -24(%rsp,%rcx)
.L2127:
	addq	$3, %rax
	cmpq	$3, %rdx
	movl	$1, %ecx
	jg	.L2133
.L2130:
	testl	%ecx, %ecx
	je	.L2134
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$3, %rdx
	jle	.L2130
.L2133:
	movss	-24(%rsp), %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L2131:
	movl	$4, %edx
	jmp	.L2127
	.p2align 4,,10
	.p2align 3
.L2132:
	movq	%rcx, %rdx
	jmp	.L2127
	.cfi_endproc
.LFE167:
	.size	get_stack_float, .-get_stack_float
	.p2align 4,,15
	.globl	get_stack_double
	.type	get_stack_double, @function
get_stack_double:
.LFB168:
	.cfi_startproc
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2140
	.p2align 4,,10
	.p2align 3
.L2144:
	movzbl	(%rdi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L2141
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%sil, -23(%rsp,%rdx)
	jg	.L2142
	movzbl	2(%rdi,%rax), %esi
	addq	$3, %rdx
	movb	%sil, -24(%rsp,%rcx)
.L2137:
	addq	$3, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L2143
.L2140:
	testl	%ecx, %ecx
	je	.L2144
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L2140
.L2143:
	movsd	-24(%rsp), %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L2141:
	movl	$8, %edx
	jmp	.L2137
	.p2align 4,,10
	.p2align 3
.L2142:
	movq	%rcx, %rdx
	jmp	.L2137
	.cfi_endproc
.LFE168:
	.size	get_stack_double, .-get_stack_double
	.p2align 4,,15
	.globl	get_stack_array_element
	.type	get_stack_array_element, @function
get_stack_array_element:
.LFB169:
	.cfi_startproc
	imulq	%rdi, %rdx
	movq	%rdx, %r9
	movabsq	$6148914691236517206, %rdx
	movq	%r9, %rax
	imulq	%rdx
	movq	%r9, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rsi,%rdx,8), %r8
	cmpq	%rax, %r9
	je	.L2162
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rsi
	addq	%r9, %rsi
	cmpq	$2, %rsi
	jg	.L2157
	testq	%rdi, %rdi
	jle	.L2157
	movl	$3, %r9d
	movq	%rsi, %rdx
	xorl	%eax, %eax
	subq	%rsi, %r9
	jmp	.L2149
	.p2align 4,,10
	.p2align 3
.L2163:
	cmpq	%rdi, %rax
	je	.L2148
.L2149:
	movzbl	(%r8,%rdx), %edx
	movb	%dl, (%rcx,%rax)
	addq	$1, %rax
	cmpq	%r9, %rax
	leaq	(%rax,%rsi), %rdx
	jne	.L2163
.L2148:
	addq	$8, %r8
.L2147:
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L2161:
	cmpq	%rax, %rdi
	jle	.L2145
.L2164:
	testl	%esi, %esi
	jne	.L2151
	movzbl	(%r8,%rdx), %esi
	movb	%sil, (%rcx,%rax)
	leaq	1(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L2159
	movzbl	1(%r8,%rdx), %esi
	movb	%sil, 1(%rcx,%rax)
	leaq	2(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L2159
	movzbl	2(%r8,%rdx), %esi
	movb	%sil, 2(%rcx,%rax)
	addq	$3, %rax
.L2152:
	addq	$3, %rdx
	cmpq	%rax, %rdi
	movl	$1, %esi
	jg	.L2164
.L2145:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2151:
	addq	$5, %rdx
	xorl	%esi, %esi
	jmp	.L2161
	.p2align 4,,10
	.p2align 3
.L2159:
	movq	%rsi, %rax
	jmp	.L2152
	.p2align 4,,10
	.p2align 3
.L2162:
	xorl	%eax, %eax
	jmp	.L2147
.L2157:
	xorl	%eax, %eax
	.p2align 4,,4
	jmp	.L2148
	.cfi_endproc
.LFE169:
	.size	get_stack_array_element, .-get_stack_array_element
	.p2align 4,,15
	.globl	get_stack_char_array_element
	.type	get_stack_char_array_element, @function
get_stack_char_array_element:
.LFB170:
	.cfi_startproc
	movq	%rsi, %rax
	movabsq	$6148914691236517206, %rdx
	imulq	%rdx
	movq	%rsi, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	cmpq	%rax, %rsi
	leaq	(%rdi,%rdx,8), %rax
	je	.L2167
	movq	%rdx, %rcx
	negq	%rcx
	leaq	(%rdx,%rcx,4), %rdx
	addq	%rdx, %rsi
	cmpq	$2, %rsi
	jg	.L2168
	movzbl	(%rax,%rsi), %eax
	ret
.L2168:
	addq	$8, %rax
	.p2align 4,,10
	.p2align 3
.L2167:
	movzbl	(%rax), %eax
	ret
	.cfi_endproc
.LFE170:
	.size	get_stack_char_array_element, .-get_stack_char_array_element
	.p2align 4,,15
	.globl	get_stack_int_array_element
	.type	get_stack_int_array_element, @function
get_stack_int_array_element:
.LFB171:
	.cfi_startproc
	leaq	0(,%rsi,4), %rcx
	movabsq	$6148914691236517206, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rdi,%rdx,8), %rsi
	cmpq	%rax, %rcx
	je	.L2187
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2174
	movzbl	(%rsi,%rax), %edx
	cmpq	$2, %rax
	movb	%dl, -24(%rsp)
	je	.L2181
	movzbl	1(%rsi,%rax), %edx
	movb	%dl, -23(%rsp)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2182
	movzbl	2(%rsi,%rax), %edx
	movb	%dl, -22(%rsp)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2183
	movzbl	3(%rsi,%rax), %edx
	cmpq	$-1, %rax
	movb	%dl, -21(%rsp)
	movl	$4, %edx
	jge	.L2175
.L2176:
	movl	-24(%rsp), %eax
	ret
.L2183:
	movl	$3, %edx
.L2175:
	addq	$8, %rsi
	cmpq	$4, %rdx
	je	.L2176
.L2177:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2173
	.p2align 4,,10
	.p2align 3
.L2188:
	movzbl	(%rsi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$4, %rcx
	je	.L2184
	movzbl	1(%rsi,%rax), %edi
	leaq	2(%rdx), %rcx
	cmpq	$3, %rcx
	movb	%dil, -23(%rsp,%rdx)
	jg	.L2185
	movzbl	2(%rsi,%rax), %edi
	addq	$3, %rdx
	movb	%dil, -24(%rsp,%rcx)
.L2179:
	addq	$3, %rax
	movl	$1, %ecx
.L2180:
	cmpq	$3, %rdx
	jg	.L2176
.L2173:
	testl	%ecx, %ecx
	je	.L2188
	addq	$5, %rax
	xorl	%ecx, %ecx
	jmp	.L2180
	.p2align 4,,10
	.p2align 3
.L2187:
	xorl	%edx, %edx
	jmp	.L2177
	.p2align 4,,10
	.p2align 3
.L2184:
	movl	$4, %edx
	jmp	.L2179
	.p2align 4,,10
	.p2align 3
.L2185:
	movq	%rcx, %rdx
	jmp	.L2179
.L2174:
	addq	$8, %rsi
	xorl	%edx, %edx
	jmp	.L2177
.L2182:
	movl	$2, %edx
	jmp	.L2175
.L2181:
	movl	$1, %edx
	jmp	.L2175
	.cfi_endproc
.LFE171:
	.size	get_stack_int_array_element, .-get_stack_int_array_element
	.p2align 4,,15
	.globl	get_stack_long_int_array_element
	.type	get_stack_long_int_array_element, @function
get_stack_long_int_array_element:
.LFB172:
	.cfi_startproc
	leaq	0(,%rsi,8), %rcx
	movabsq	$6148914691236517206, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rdi,%rdx,8), %rsi
	cmpq	%rax, %rcx
	je	.L2209
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2192
	movzbl	(%rsi,%rax), %edx
	cmpq	$2, %rax
	movb	%dl, -24(%rsp)
	je	.L2199
	movzbl	1(%rsi,%rax), %edx
	movb	%dl, -23(%rsp)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2200
	movzbl	2(%rsi,%rax), %edx
	movb	%dl, -22(%rsp)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2201
	movzbl	3(%rsi,%rax), %edx
	movb	%dl, -21(%rsp)
	leaq	4(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2202
	movzbl	4(%rsi,%rax), %edx
	movb	%dl, -20(%rsp)
	leaq	5(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2203
	movzbl	5(%rsi,%rax), %edx
	movb	%dl, -19(%rsp)
	leaq	6(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2204
	movzbl	6(%rsi,%rax), %edx
	movb	%dl, -18(%rsp)
	leaq	7(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2205
	movzbl	7(%rsi,%rax), %edx
	cmpq	$-5, %rax
	movb	%dl, -17(%rsp)
	movl	$8, %edx
	jge	.L2193
.L2194:
	movq	-24(%rsp), %rax
	ret
.L2205:
	movl	$7, %edx
	.p2align 4,,10
	.p2align 3
.L2193:
	addq	$8, %rsi
	cmpq	$8, %rdx
	je	.L2194
.L2195:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2191
	.p2align 4,,10
	.p2align 3
.L2210:
	movzbl	(%rsi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L2206
	movzbl	1(%rsi,%rax), %edi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%dil, -23(%rsp,%rdx)
	jg	.L2207
	movzbl	2(%rsi,%rax), %edi
	addq	$3, %rdx
	movb	%dil, -24(%rsp,%rcx)
.L2197:
	addq	$3, %rax
	movl	$1, %ecx
.L2198:
	cmpq	$7, %rdx
	jg	.L2194
.L2191:
	testl	%ecx, %ecx
	je	.L2210
	addq	$5, %rax
	xorl	%ecx, %ecx
	jmp	.L2198
	.p2align 4,,10
	.p2align 3
.L2209:
	xorl	%edx, %edx
	jmp	.L2195
	.p2align 4,,10
	.p2align 3
.L2206:
	movl	$8, %edx
	jmp	.L2197
	.p2align 4,,10
	.p2align 3
.L2207:
	movq	%rcx, %rdx
	jmp	.L2197
.L2192:
	addq	$8, %rsi
	xorl	%edx, %edx
	jmp	.L2195
.L2200:
	movl	$2, %edx
	jmp	.L2193
.L2199:
	movl	$1, %edx
	jmp	.L2193
.L2201:
	movl	$3, %edx
	jmp	.L2193
.L2202:
	movl	$4, %edx
	jmp	.L2193
.L2204:
	movl	$6, %edx
	jmp	.L2193
.L2203:
	movl	$5, %edx
	jmp	.L2193
	.cfi_endproc
.LFE172:
	.size	get_stack_long_int_array_element, .-get_stack_long_int_array_element
	.p2align 4,,15
	.globl	get_stack_pointer_array_element
	.type	get_stack_pointer_array_element, @function
get_stack_pointer_array_element:
.LFB173:
	.cfi_startproc
	leaq	0(,%rsi,8), %rcx
	movabsq	$6148914691236517206, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rdi,%rdx,8), %rsi
	cmpq	%rax, %rcx
	je	.L2231
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2214
	movzbl	(%rsi,%rax), %edx
	cmpq	$2, %rax
	movb	%dl, -24(%rsp)
	je	.L2221
	movzbl	1(%rsi,%rax), %edx
	movb	%dl, -23(%rsp)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2222
	movzbl	2(%rsi,%rax), %edx
	movb	%dl, -22(%rsp)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2223
	movzbl	3(%rsi,%rax), %edx
	movb	%dl, -21(%rsp)
	leaq	4(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2224
	movzbl	4(%rsi,%rax), %edx
	movb	%dl, -20(%rsp)
	leaq	5(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2225
	movzbl	5(%rsi,%rax), %edx
	movb	%dl, -19(%rsp)
	leaq	6(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2226
	movzbl	6(%rsi,%rax), %edx
	movb	%dl, -18(%rsp)
	leaq	7(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2227
	movzbl	7(%rsi,%rax), %edx
	cmpq	$-5, %rax
	movb	%dl, -17(%rsp)
	movl	$8, %edx
	jge	.L2215
.L2216:
	movq	-24(%rsp), %rax
	ret
.L2227:
	movl	$7, %edx
	.p2align 4,,10
	.p2align 3
.L2215:
	addq	$8, %rsi
	cmpq	$8, %rdx
	je	.L2216
.L2217:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2213
	.p2align 4,,10
	.p2align 3
.L2232:
	movzbl	(%rsi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L2228
	movzbl	1(%rsi,%rax), %edi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%dil, -23(%rsp,%rdx)
	jg	.L2229
	movzbl	2(%rsi,%rax), %edi
	addq	$3, %rdx
	movb	%dil, -24(%rsp,%rcx)
.L2219:
	addq	$3, %rax
	movl	$1, %ecx
.L2220:
	cmpq	$7, %rdx
	jg	.L2216
.L2213:
	testl	%ecx, %ecx
	je	.L2232
	addq	$5, %rax
	xorl	%ecx, %ecx
	jmp	.L2220
	.p2align 4,,10
	.p2align 3
.L2231:
	xorl	%edx, %edx
	jmp	.L2217
	.p2align 4,,10
	.p2align 3
.L2228:
	movl	$8, %edx
	jmp	.L2219
	.p2align 4,,10
	.p2align 3
.L2229:
	movq	%rcx, %rdx
	jmp	.L2219
.L2214:
	addq	$8, %rsi
	xorl	%edx, %edx
	jmp	.L2217
.L2222:
	movl	$2, %edx
	jmp	.L2215
.L2221:
	movl	$1, %edx
	jmp	.L2215
.L2223:
	movl	$3, %edx
	jmp	.L2215
.L2224:
	movl	$4, %edx
	jmp	.L2215
.L2226:
	movl	$6, %edx
	jmp	.L2215
.L2225:
	movl	$5, %edx
	jmp	.L2215
	.cfi_endproc
.LFE173:
	.size	get_stack_pointer_array_element, .-get_stack_pointer_array_element
	.p2align 4,,15
	.globl	get_stack_float_array_element
	.type	get_stack_float_array_element, @function
get_stack_float_array_element:
.LFB174:
	.cfi_startproc
	leaq	0(,%rsi,4), %rcx
	movabsq	$6148914691236517206, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rdi,%rdx,8), %rsi
	cmpq	%rax, %rcx
	je	.L2249
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2236
	movzbl	(%rsi,%rax), %edx
	cmpq	$2, %rax
	movb	%dl, -24(%rsp)
	je	.L2243
	movzbl	1(%rsi,%rax), %edx
	movb	%dl, -23(%rsp)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2244
	movzbl	2(%rsi,%rax), %edx
	movb	%dl, -22(%rsp)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2245
	movzbl	3(%rsi,%rax), %edx
	cmpq	$-1, %rax
	movb	%dl, -21(%rsp)
	movl	$4, %edx
	jge	.L2237
.L2238:
	movss	-24(%rsp), %xmm0
	ret
.L2245:
	movl	$3, %edx
.L2237:
	addq	$8, %rsi
	cmpq	$4, %rdx
	je	.L2238
.L2239:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2235
	.p2align 4,,10
	.p2align 3
.L2250:
	movzbl	(%rsi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$4, %rcx
	je	.L2246
	movzbl	1(%rsi,%rax), %edi
	leaq	2(%rdx), %rcx
	cmpq	$3, %rcx
	movb	%dil, -23(%rsp,%rdx)
	jg	.L2247
	movzbl	2(%rsi,%rax), %edi
	addq	$3, %rdx
	movb	%dil, -24(%rsp,%rcx)
.L2241:
	addq	$3, %rax
	movl	$1, %ecx
.L2242:
	cmpq	$3, %rdx
	jg	.L2238
.L2235:
	testl	%ecx, %ecx
	je	.L2250
	addq	$5, %rax
	xorl	%ecx, %ecx
	jmp	.L2242
	.p2align 4,,10
	.p2align 3
.L2249:
	xorl	%edx, %edx
	jmp	.L2239
	.p2align 4,,10
	.p2align 3
.L2246:
	movl	$4, %edx
	jmp	.L2241
	.p2align 4,,10
	.p2align 3
.L2247:
	movq	%rcx, %rdx
	jmp	.L2241
.L2236:
	addq	$8, %rsi
	xorl	%edx, %edx
	jmp	.L2239
.L2244:
	movl	$2, %edx
	jmp	.L2237
.L2243:
	movl	$1, %edx
	jmp	.L2237
	.cfi_endproc
.LFE174:
	.size	get_stack_float_array_element, .-get_stack_float_array_element
	.p2align 4,,15
	.globl	get_stack_double_array_element
	.type	get_stack_double_array_element, @function
get_stack_double_array_element:
.LFB175:
	.cfi_startproc
	leaq	0(,%rsi,8), %rcx
	movabsq	$6148914691236517206, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rdi,%rdx,8), %rsi
	cmpq	%rax, %rcx
	je	.L2271
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2254
	movzbl	(%rsi,%rax), %edx
	cmpq	$2, %rax
	movb	%dl, -24(%rsp)
	je	.L2261
	movzbl	1(%rsi,%rax), %edx
	movb	%dl, -23(%rsp)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2262
	movzbl	2(%rsi,%rax), %edx
	movb	%dl, -22(%rsp)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2263
	movzbl	3(%rsi,%rax), %edx
	movb	%dl, -21(%rsp)
	leaq	4(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2264
	movzbl	4(%rsi,%rax), %edx
	movb	%dl, -20(%rsp)
	leaq	5(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2265
	movzbl	5(%rsi,%rax), %edx
	movb	%dl, -19(%rsp)
	leaq	6(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2266
	movzbl	6(%rsi,%rax), %edx
	movb	%dl, -18(%rsp)
	leaq	7(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2267
	movzbl	7(%rsi,%rax), %edx
	cmpq	$-5, %rax
	movb	%dl, -17(%rsp)
	movl	$8, %edx
	jge	.L2255
.L2256:
	movsd	-24(%rsp), %xmm0
	ret
.L2267:
	movl	$7, %edx
	.p2align 4,,10
	.p2align 3
.L2255:
	addq	$8, %rsi
	cmpq	$8, %rdx
	je	.L2256
.L2257:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2253
	.p2align 4,,10
	.p2align 3
.L2272:
	movzbl	(%rsi,%rax), %ecx
	movb	%cl, -24(%rsp,%rdx)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L2268
	movzbl	1(%rsi,%rax), %edi
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	movb	%dil, -23(%rsp,%rdx)
	jg	.L2269
	movzbl	2(%rsi,%rax), %edi
	addq	$3, %rdx
	movb	%dil, -24(%rsp,%rcx)
.L2259:
	addq	$3, %rax
	movl	$1, %ecx
.L2260:
	cmpq	$7, %rdx
	jg	.L2256
.L2253:
	testl	%ecx, %ecx
	je	.L2272
	addq	$5, %rax
	xorl	%ecx, %ecx
	jmp	.L2260
	.p2align 4,,10
	.p2align 3
.L2271:
	xorl	%edx, %edx
	jmp	.L2257
	.p2align 4,,10
	.p2align 3
.L2268:
	movl	$8, %edx
	jmp	.L2259
	.p2align 4,,10
	.p2align 3
.L2269:
	movq	%rcx, %rdx
	jmp	.L2259
.L2254:
	addq	$8, %rsi
	xorl	%edx, %edx
	jmp	.L2257
.L2262:
	movl	$2, %edx
	jmp	.L2255
.L2261:
	movl	$1, %edx
	jmp	.L2255
.L2263:
	movl	$3, %edx
	jmp	.L2255
.L2264:
	movl	$4, %edx
	jmp	.L2255
.L2266:
	movl	$6, %edx
	jmp	.L2255
.L2265:
	movl	$5, %edx
	jmp	.L2255
	.cfi_endproc
.LFE175:
	.size	get_stack_double_array_element, .-get_stack_double_array_element
	.p2align 4,,15
	.globl	get_arbitrary_block_in_stack
	.type	get_arbitrary_block_in_stack, @function
get_arbitrary_block_in_stack:
.LFB176:
	.cfi_startproc
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	testq	%rdi, %rdi
	jg	.L2282
	jmp	.L2273
	.p2align 4,,10
	.p2align 3
.L2283:
	cmpq	%rax, %rdi
	jle	.L2276
	movzbl	(%rsi,%rcx), %r8d
	movb	%r8b, (%rdx,%rax)
	leaq	1(%rax), %r8
	cmpq	%r8, %rdi
	jle	.L2281
	movzbl	1(%rsi,%rcx), %r8d
	movb	%r8b, 1(%rdx,%rax)
	leaq	2(%rax), %r8
	cmpq	%r8, %rdi
	jle	.L2281
	movzbl	2(%rsi,%rcx), %r8d
	movb	%r8b, 2(%rdx,%rax)
	addq	$3, %rax
.L2276:
	addq	$3, %rcx
	cmpq	%rax, %rdi
	movl	$1, %r8d
	jle	.L2273
.L2282:
	testl	%r8d, %r8d
	je	.L2283
	addq	$5, %rcx
	xorl	%r8d, %r8d
	cmpq	%rax, %rdi
	jg	.L2282
.L2273:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2281:
	movq	%r8, %rax
	jmp	.L2276
	.cfi_endproc
.LFE176:
	.size	get_arbitrary_block_in_stack, .-get_arbitrary_block_in_stack
	.p2align 4,,15
	.globl	get_arbitrary_block_in_stack_with_offset
	.type	get_arbitrary_block_in_stack_with_offset, @function
get_arbitrary_block_in_stack_with_offset:
.LFB177:
	.cfi_startproc
	movq	%rdx, %rax
	movabsq	$6148914691236517206, %r9
	movq	%rdx, %r10
	imulq	%r9
	movq	%r10, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rsi,%rdx,8), %r8
	cmpq	%rax, %r10
	je	.L2301
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rdx
	addq	%r10, %rdx
	cmpq	$2, %rdx
	jg	.L2296
	testq	%rdi, %rdi
	jle	.L2296
	movl	$3, %r9d
	movq	%rdx, %rsi
	xorl	%eax, %eax
	subq	%rdx, %r9
	jmp	.L2288
	.p2align 4,,10
	.p2align 3
.L2302:
	cmpq	%rdi, %rax
	je	.L2287
.L2288:
	movzbl	(%r8,%rsi), %esi
	movb	%sil, (%rcx,%rax)
	addq	$1, %rax
	cmpq	%r9, %rax
	leaq	(%rax,%rdx), %rsi
	jne	.L2302
.L2287:
	addq	$8, %r8
.L2286:
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L2300:
	cmpq	%rax, %rdi
	jle	.L2284
.L2303:
	testl	%esi, %esi
	jne	.L2290
	movzbl	(%r8,%rdx), %esi
	movb	%sil, (%rcx,%rax)
	leaq	1(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L2298
	movzbl	1(%r8,%rdx), %esi
	movb	%sil, 1(%rcx,%rax)
	leaq	2(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L2298
	movzbl	2(%r8,%rdx), %esi
	movb	%sil, 2(%rcx,%rax)
	addq	$3, %rax
.L2291:
	addq	$3, %rdx
	cmpq	%rax, %rdi
	movl	$1, %esi
	jg	.L2303
.L2284:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2290:
	addq	$5, %rdx
	xorl	%esi, %esi
	jmp	.L2300
	.p2align 4,,10
	.p2align 3
.L2298:
	movq	%rsi, %rax
	jmp	.L2291
	.p2align 4,,10
	.p2align 3
.L2301:
	xorl	%eax, %eax
	jmp	.L2286
.L2296:
	xorl	%eax, %eax
	.p2align 4,,4
	jmp	.L2287
	.cfi_endproc
.LFE177:
	.size	get_arbitrary_block_in_stack_with_offset, .-get_arbitrary_block_in_stack_with_offset
	.p2align 4,,15
	.globl	set_stack_char
	.type	set_stack_char, @function
set_stack_char:
.LFB178:
	.cfi_startproc
	movb	%sil, (%rdi)
	ret
	.cfi_endproc
.LFE178:
	.size	set_stack_char, .-set_stack_char
	.p2align 4,,15
	.globl	set_stack_int
	.type	set_stack_int, @function
set_stack_int:
.LFB179:
	.cfi_startproc
	movl	%esi, -4(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2310
	.p2align 4,,10
	.p2align 3
.L2314:
	movzbl	-4(%rsp,%rdx), %ecx
	movb	%cl, (%rdi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$4, %rcx
	je	.L2311
	movzbl	-3(%rsp,%rdx), %ecx
	movb	%cl, 1(%rdi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$3, %rcx
	jg	.L2312
	movzbl	-4(%rsp,%rcx), %ecx
	addq	$3, %rdx
	movb	%cl, 2(%rdi,%rax)
.L2307:
	addq	$3, %rax
	cmpq	$3, %rdx
	movl	$1, %ecx
	jg	.L2313
.L2310:
	testl	%ecx, %ecx
	je	.L2314
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$3, %rdx
	jle	.L2310
.L2313:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2311:
	movl	$4, %edx
	jmp	.L2307
	.p2align 4,,10
	.p2align 3
.L2312:
	movq	%rcx, %rdx
	jmp	.L2307
	.cfi_endproc
.LFE179:
	.size	set_stack_int, .-set_stack_int
	.p2align 4,,15
	.globl	set_stack_long_int
	.type	set_stack_long_int, @function
set_stack_long_int:
.LFB180:
	.cfi_startproc
	movq	%rsi, -8(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2320
	.p2align 4,,10
	.p2align 3
.L2324:
	movzbl	-8(%rsp,%rdx), %ecx
	movb	%cl, (%rdi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L2321
	movzbl	-7(%rsp,%rdx), %ecx
	movb	%cl, 1(%rdi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L2322
	movzbl	-8(%rsp,%rcx), %ecx
	addq	$3, %rdx
	movb	%cl, 2(%rdi,%rax)
.L2317:
	addq	$3, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L2323
.L2320:
	testl	%ecx, %ecx
	je	.L2324
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L2320
.L2323:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2321:
	movl	$8, %edx
	jmp	.L2317
	.p2align 4,,10
	.p2align 3
.L2322:
	movq	%rcx, %rdx
	jmp	.L2317
	.cfi_endproc
.LFE180:
	.size	set_stack_long_int, .-set_stack_long_int
	.p2align 4,,15
	.globl	set_stack_pointer
	.type	set_stack_pointer, @function
set_stack_pointer:
.LFB181:
	.cfi_startproc
	movq	%rsi, -8(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2330
	.p2align 4,,10
	.p2align 3
.L2334:
	movzbl	-8(%rsp,%rdx), %ecx
	movb	%cl, (%rdi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L2331
	movzbl	-7(%rsp,%rdx), %ecx
	movb	%cl, 1(%rdi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L2332
	movzbl	-8(%rsp,%rcx), %ecx
	addq	$3, %rdx
	movb	%cl, 2(%rdi,%rax)
.L2327:
	addq	$3, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L2333
.L2330:
	testl	%ecx, %ecx
	je	.L2334
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L2330
.L2333:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2331:
	movl	$8, %edx
	jmp	.L2327
	.p2align 4,,10
	.p2align 3
.L2332:
	movq	%rcx, %rdx
	jmp	.L2327
	.cfi_endproc
.LFE181:
	.size	set_stack_pointer, .-set_stack_pointer
	.p2align 4,,15
	.globl	set_stack_float
	.type	set_stack_float, @function
set_stack_float:
.LFB182:
	.cfi_startproc
	movss	%xmm0, -4(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2340
	.p2align 4,,10
	.p2align 3
.L2344:
	movzbl	-4(%rsp,%rdx), %ecx
	movb	%cl, (%rdi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$4, %rcx
	je	.L2341
	movzbl	-3(%rsp,%rdx), %ecx
	movb	%cl, 1(%rdi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$3, %rcx
	jg	.L2342
	movzbl	-4(%rsp,%rcx), %ecx
	addq	$3, %rdx
	movb	%cl, 2(%rdi,%rax)
.L2337:
	addq	$3, %rax
	cmpq	$3, %rdx
	movl	$1, %ecx
	jg	.L2343
.L2340:
	testl	%ecx, %ecx
	je	.L2344
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$3, %rdx
	jle	.L2340
.L2343:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2341:
	movl	$4, %edx
	jmp	.L2337
	.p2align 4,,10
	.p2align 3
.L2342:
	movq	%rcx, %rdx
	jmp	.L2337
	.cfi_endproc
.LFE182:
	.size	set_stack_float, .-set_stack_float
	.p2align 4,,15
	.globl	set_stack_double
	.type	set_stack_double, @function
set_stack_double:
.LFB183:
	.cfi_startproc
	movsd	%xmm0, -8(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2350
	.p2align 4,,10
	.p2align 3
.L2354:
	movzbl	-8(%rsp,%rdx), %ecx
	movb	%cl, (%rdi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L2351
	movzbl	-7(%rsp,%rdx), %ecx
	movb	%cl, 1(%rdi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L2352
	movzbl	-8(%rsp,%rcx), %ecx
	addq	$3, %rdx
	movb	%cl, 2(%rdi,%rax)
.L2347:
	addq	$3, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L2353
.L2350:
	testl	%ecx, %ecx
	je	.L2354
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L2350
.L2353:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2351:
	movl	$8, %edx
	jmp	.L2347
	.p2align 4,,10
	.p2align 3
.L2352:
	movq	%rcx, %rdx
	jmp	.L2347
	.cfi_endproc
.LFE183:
	.size	set_stack_double, .-set_stack_double
	.p2align 4,,15
	.globl	set_stack_array_element
	.type	set_stack_array_element, @function
set_stack_array_element:
.LFB184:
	.cfi_startproc
	imulq	%rdi, %rdx
	movq	%rdx, %r9
	movabsq	$6148914691236517206, %rdx
	movq	%r9, %rax
	imulq	%rdx
	movq	%r9, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rsi,%rdx,8), %r8
	cmpq	%rax, %r9
	je	.L2372
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rax, %r9
	cmpq	$2, %r9
	jg	.L2367
	testq	%rdi, %rdi
	jle	.L2367
	movl	$3, %r10d
	movq	%r9, %rdx
	xorl	%eax, %eax
	subq	%r9, %r10
	jmp	.L2359
	.p2align 4,,10
	.p2align 3
.L2373:
	cmpq	%rdi, %rax
	je	.L2358
.L2359:
	movzbl	(%rcx,%rax), %esi
	addq	$1, %rax
	cmpq	%r10, %rax
	movb	%sil, (%r8,%rdx)
	leaq	(%rax,%r9), %rdx
	jne	.L2373
.L2358:
	addq	$8, %r8
.L2357:
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L2371:
	cmpq	%rax, %rdi
	jle	.L2355
.L2374:
	testl	%esi, %esi
	jne	.L2361
	movzbl	(%rcx,%rax), %esi
	movb	%sil, (%r8,%rdx)
	leaq	1(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L2369
	movzbl	1(%rcx,%rax), %esi
	movb	%sil, 1(%r8,%rdx)
	leaq	2(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L2369
	movzbl	2(%rcx,%rax), %esi
	addq	$3, %rax
	movb	%sil, 2(%r8,%rdx)
.L2362:
	addq	$3, %rdx
	cmpq	%rax, %rdi
	movl	$1, %esi
	jg	.L2374
.L2355:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2361:
	addq	$5, %rdx
	xorl	%esi, %esi
	jmp	.L2371
	.p2align 4,,10
	.p2align 3
.L2369:
	movq	%rsi, %rax
	jmp	.L2362
	.p2align 4,,10
	.p2align 3
.L2372:
	xorl	%eax, %eax
	jmp	.L2357
.L2367:
	xorl	%eax, %eax
	.p2align 4,,4
	jmp	.L2358
	.cfi_endproc
.LFE184:
	.size	set_stack_array_element, .-set_stack_array_element
	.p2align 4,,15
	.globl	set_stack_char_array_element
	.type	set_stack_char_array_element, @function
set_stack_char_array_element:
.LFB185:
	.cfi_startproc
	movq	%rsi, %rax
	movl	%edx, %ecx
	movabsq	$6148914691236517206, %rdx
	imulq	%rdx
	movq	%rsi, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	cmpq	%rax, %rsi
	leaq	(%rdi,%rdx,8), %rax
	je	.L2377
	movq	%rdx, %rdi
	negq	%rdi
	leaq	(%rdx,%rdi,4), %rdx
	addq	%rdx, %rsi
	cmpq	$2, %rsi
	jg	.L2378
	movb	%cl, (%rax,%rsi)
	ret
.L2378:
	addq	$8, %rax
	.p2align 4,,10
	.p2align 3
.L2377:
	movb	%cl, (%rax)
	ret
	.cfi_endproc
.LFE185:
	.size	set_stack_char_array_element, .-set_stack_char_array_element
	.p2align 4,,15
	.globl	set_stack_int_array_element
	.type	set_stack_int_array_element, @function
set_stack_int_array_element:
.LFB186:
	.cfi_startproc
	leaq	0(,%rsi,4), %rcx
	movl	%edx, -24(%rsp)
	movabsq	$6148914691236517206, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rdi,%rdx,8), %rsi
	cmpq	%rax, %rcx
	je	.L2395
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2383
	movzbl	-24(%rsp), %edx
	cmpq	$2, %rax
	movb	%dl, (%rsi,%rax)
	je	.L2390
	movzbl	-23(%rsp), %edx
	movb	%dl, 1(%rsi,%rax)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2391
	movzbl	-22(%rsp), %edx
	movb	%dl, 2(%rsi,%rax)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2392
	movzbl	-21(%rsp), %edx
	cmpq	$-1, %rax
	movb	%dl, 3(%rsi,%rax)
	movl	$4, %edx
	jge	.L2384
	rep ret
.L2392:
	movl	$3, %edx
.L2384:
	addq	$8, %rsi
	cmpq	$4, %rdx
	je	.L2396
.L2386:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2382
	.p2align 4,,10
	.p2align 3
.L2398:
	movzbl	-24(%rsp,%rdx), %ecx
	movb	%cl, (%rsi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$4, %rcx
	je	.L2393
	movzbl	-23(%rsp,%rdx), %ecx
	movb	%cl, 1(%rsi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$3, %rcx
	jg	.L2394
	movzbl	-24(%rsp,%rcx), %ecx
	addq	$3, %rdx
	movb	%cl, 2(%rsi,%rax)
.L2388:
	addq	$3, %rax
	cmpq	$3, %rdx
	movl	$1, %ecx
	jg	.L2397
.L2382:
	testl	%ecx, %ecx
	je	.L2398
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$3, %rdx
	jle	.L2382
.L2397:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2395:
	xorl	%edx, %edx
	jmp	.L2386
	.p2align 4,,10
	.p2align 3
.L2393:
	movl	$4, %edx
	jmp	.L2388
	.p2align 4,,10
	.p2align 3
.L2394:
	movq	%rcx, %rdx
	jmp	.L2388
.L2383:
	addq	$8, %rsi
	xorl	%edx, %edx
	jmp	.L2386
.L2391:
	movl	$2, %edx
	jmp	.L2384
.L2390:
	movl	$1, %edx
	jmp	.L2384
.L2396:
	.p2align 4,,1
	ret
	.cfi_endproc
.LFE186:
	.size	set_stack_int_array_element, .-set_stack_int_array_element
	.p2align 4,,15
	.globl	set_stack_long_int_array_element
	.type	set_stack_long_int_array_element, @function
set_stack_long_int_array_element:
.LFB187:
	.cfi_startproc
	leaq	0(,%rsi,8), %rcx
	movq	%rdx, -24(%rsp)
	movabsq	$6148914691236517206, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rdi,%rdx,8), %rsi
	cmpq	%rax, %rcx
	je	.L2418
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2402
	movzbl	-24(%rsp), %edx
	cmpq	$2, %rax
	movb	%dl, (%rsi,%rax)
	je	.L2409
	movzbl	-23(%rsp), %edx
	movb	%dl, 1(%rsi,%rax)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2410
	movzbl	-22(%rsp), %edx
	movb	%dl, 2(%rsi,%rax)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2411
	movzbl	-21(%rsp), %edx
	movb	%dl, 3(%rsi,%rax)
	leaq	4(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2412
	movzbl	-20(%rsp), %edx
	movb	%dl, 4(%rsi,%rax)
	leaq	5(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2413
	movzbl	-19(%rsp), %edx
	movb	%dl, 5(%rsi,%rax)
	leaq	6(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2414
	movzbl	-18(%rsp), %edx
	movb	%dl, 6(%rsi,%rax)
	leaq	7(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2415
	movzbl	-17(%rsp), %edx
	cmpq	$-5, %rax
	movb	%dl, 7(%rsi,%rax)
	movl	$8, %edx
	jge	.L2403
	rep ret
.L2415:
	movl	$7, %edx
	.p2align 4,,10
	.p2align 3
.L2403:
	addq	$8, %rsi
	cmpq	$8, %rdx
	je	.L2419
.L2405:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2401
	.p2align 4,,10
	.p2align 3
.L2421:
	movzbl	-24(%rsp,%rdx), %ecx
	movb	%cl, (%rsi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L2416
	movzbl	-23(%rsp,%rdx), %ecx
	movb	%cl, 1(%rsi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L2417
	movzbl	-24(%rsp,%rcx), %ecx
	addq	$3, %rdx
	movb	%cl, 2(%rsi,%rax)
.L2407:
	addq	$3, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L2420
.L2401:
	testl	%ecx, %ecx
	je	.L2421
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L2401
.L2420:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2418:
	xorl	%edx, %edx
	jmp	.L2405
	.p2align 4,,10
	.p2align 3
.L2416:
	movl	$8, %edx
	jmp	.L2407
	.p2align 4,,10
	.p2align 3
.L2417:
	movq	%rcx, %rdx
	jmp	.L2407
.L2402:
	addq	$8, %rsi
	xorl	%edx, %edx
	jmp	.L2405
.L2410:
	movl	$2, %edx
	jmp	.L2403
.L2409:
	movl	$1, %edx
	jmp	.L2403
.L2411:
	movl	$3, %edx
	jmp	.L2403
.L2412:
	movl	$4, %edx
	jmp	.L2403
.L2414:
	movl	$6, %edx
	jmp	.L2403
.L2413:
	movl	$5, %edx
	jmp	.L2403
.L2419:
	.p2align 4,,1
	ret
	.cfi_endproc
.LFE187:
	.size	set_stack_long_int_array_element, .-set_stack_long_int_array_element
	.p2align 4,,15
	.globl	set_stack_pointer_array_element
	.type	set_stack_pointer_array_element, @function
set_stack_pointer_array_element:
.LFB188:
	.cfi_startproc
	leaq	0(,%rsi,8), %rcx
	movq	%rdx, -24(%rsp)
	movabsq	$6148914691236517206, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rdi,%rdx,8), %rsi
	cmpq	%rax, %rcx
	je	.L2441
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2425
	movzbl	-24(%rsp), %edx
	cmpq	$2, %rax
	movb	%dl, (%rsi,%rax)
	je	.L2432
	movzbl	-23(%rsp), %edx
	movb	%dl, 1(%rsi,%rax)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2433
	movzbl	-22(%rsp), %edx
	movb	%dl, 2(%rsi,%rax)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2434
	movzbl	-21(%rsp), %edx
	movb	%dl, 3(%rsi,%rax)
	leaq	4(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2435
	movzbl	-20(%rsp), %edx
	movb	%dl, 4(%rsi,%rax)
	leaq	5(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2436
	movzbl	-19(%rsp), %edx
	movb	%dl, 5(%rsi,%rax)
	leaq	6(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2437
	movzbl	-18(%rsp), %edx
	movb	%dl, 6(%rsi,%rax)
	leaq	7(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2438
	movzbl	-17(%rsp), %edx
	cmpq	$-5, %rax
	movb	%dl, 7(%rsi,%rax)
	movl	$8, %edx
	jge	.L2426
	rep ret
.L2438:
	movl	$7, %edx
	.p2align 4,,10
	.p2align 3
.L2426:
	addq	$8, %rsi
	cmpq	$8, %rdx
	je	.L2442
.L2428:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2424
	.p2align 4,,10
	.p2align 3
.L2444:
	movzbl	-24(%rsp,%rdx), %ecx
	movb	%cl, (%rsi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L2439
	movzbl	-23(%rsp,%rdx), %ecx
	movb	%cl, 1(%rsi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L2440
	movzbl	-24(%rsp,%rcx), %ecx
	addq	$3, %rdx
	movb	%cl, 2(%rsi,%rax)
.L2430:
	addq	$3, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L2443
.L2424:
	testl	%ecx, %ecx
	je	.L2444
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L2424
.L2443:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2441:
	xorl	%edx, %edx
	jmp	.L2428
	.p2align 4,,10
	.p2align 3
.L2439:
	movl	$8, %edx
	jmp	.L2430
	.p2align 4,,10
	.p2align 3
.L2440:
	movq	%rcx, %rdx
	jmp	.L2430
.L2425:
	addq	$8, %rsi
	xorl	%edx, %edx
	jmp	.L2428
.L2433:
	movl	$2, %edx
	jmp	.L2426
.L2432:
	movl	$1, %edx
	jmp	.L2426
.L2434:
	movl	$3, %edx
	jmp	.L2426
.L2435:
	movl	$4, %edx
	jmp	.L2426
.L2437:
	movl	$6, %edx
	jmp	.L2426
.L2436:
	movl	$5, %edx
	jmp	.L2426
.L2442:
	.p2align 4,,1
	ret
	.cfi_endproc
.LFE188:
	.size	set_stack_pointer_array_element, .-set_stack_pointer_array_element
	.p2align 4,,15
	.globl	set_stack_float_array_element
	.type	set_stack_float_array_element, @function
set_stack_float_array_element:
.LFB189:
	.cfi_startproc
	leaq	0(,%rsi,4), %rcx
	movabsq	$6148914691236517206, %rdx
	movss	%xmm0, -24(%rsp)
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rdi,%rdx,8), %rsi
	cmpq	%rax, %rcx
	je	.L2460
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2448
	movzbl	-24(%rsp), %edx
	cmpq	$2, %rax
	movb	%dl, (%rsi,%rax)
	je	.L2455
	movzbl	-23(%rsp), %edx
	movb	%dl, 1(%rsi,%rax)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2456
	movzbl	-22(%rsp), %edx
	movb	%dl, 2(%rsi,%rax)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2457
	movzbl	-21(%rsp), %edx
	cmpq	$-1, %rax
	movb	%dl, 3(%rsi,%rax)
	movl	$4, %edx
	jge	.L2449
	rep ret
.L2457:
	movl	$3, %edx
.L2449:
	addq	$8, %rsi
	cmpq	$4, %rdx
	je	.L2461
.L2451:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2447
	.p2align 4,,10
	.p2align 3
.L2463:
	movzbl	-24(%rsp,%rdx), %ecx
	movb	%cl, (%rsi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$4, %rcx
	je	.L2458
	movzbl	-23(%rsp,%rdx), %ecx
	movb	%cl, 1(%rsi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$3, %rcx
	jg	.L2459
	movzbl	-24(%rsp,%rcx), %ecx
	addq	$3, %rdx
	movb	%cl, 2(%rsi,%rax)
.L2453:
	addq	$3, %rax
	cmpq	$3, %rdx
	movl	$1, %ecx
	jg	.L2462
.L2447:
	testl	%ecx, %ecx
	je	.L2463
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$3, %rdx
	jle	.L2447
.L2462:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2460:
	xorl	%edx, %edx
	jmp	.L2451
	.p2align 4,,10
	.p2align 3
.L2458:
	movl	$4, %edx
	jmp	.L2453
	.p2align 4,,10
	.p2align 3
.L2459:
	movq	%rcx, %rdx
	jmp	.L2453
.L2448:
	addq	$8, %rsi
	xorl	%edx, %edx
	jmp	.L2451
.L2456:
	movl	$2, %edx
	jmp	.L2449
.L2455:
	movl	$1, %edx
	jmp	.L2449
.L2461:
	.p2align 4,,1
	ret
	.cfi_endproc
.LFE189:
	.size	set_stack_float_array_element, .-set_stack_float_array_element
	.p2align 4,,15
	.globl	set_stack_double_array_element
	.type	set_stack_double_array_element, @function
set_stack_double_array_element:
.LFB190:
	.cfi_startproc
	leaq	0(,%rsi,8), %rcx
	movabsq	$6148914691236517206, %rdx
	movsd	%xmm0, -24(%rsp)
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rdi,%rdx,8), %rsi
	cmpq	%rax, %rcx
	je	.L2483
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2467
	movzbl	-24(%rsp), %edx
	cmpq	$2, %rax
	movb	%dl, (%rsi,%rax)
	je	.L2474
	movzbl	-23(%rsp), %edx
	movb	%dl, 1(%rsi,%rax)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2475
	movzbl	-22(%rsp), %edx
	movb	%dl, 2(%rsi,%rax)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2476
	movzbl	-21(%rsp), %edx
	movb	%dl, 3(%rsi,%rax)
	leaq	4(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2477
	movzbl	-20(%rsp), %edx
	movb	%dl, 4(%rsi,%rax)
	leaq	5(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2478
	movzbl	-19(%rsp), %edx
	movb	%dl, 5(%rsi,%rax)
	leaq	6(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2479
	movzbl	-18(%rsp), %edx
	movb	%dl, 6(%rsi,%rax)
	leaq	7(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2480
	movzbl	-17(%rsp), %edx
	cmpq	$-5, %rax
	movb	%dl, 7(%rsi,%rax)
	movl	$8, %edx
	jge	.L2468
	rep ret
.L2480:
	movl	$7, %edx
	.p2align 4,,10
	.p2align 3
.L2468:
	addq	$8, %rsi
	cmpq	$8, %rdx
	je	.L2484
.L2470:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L2466
	.p2align 4,,10
	.p2align 3
.L2486:
	movzbl	-24(%rsp,%rdx), %ecx
	movb	%cl, (%rsi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L2481
	movzbl	-23(%rsp,%rdx), %ecx
	movb	%cl, 1(%rsi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L2482
	movzbl	-24(%rsp,%rcx), %ecx
	addq	$3, %rdx
	movb	%cl, 2(%rsi,%rax)
.L2472:
	addq	$3, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L2485
.L2466:
	testl	%ecx, %ecx
	je	.L2486
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L2466
.L2485:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2483:
	xorl	%edx, %edx
	jmp	.L2470
	.p2align 4,,10
	.p2align 3
.L2481:
	movl	$8, %edx
	jmp	.L2472
	.p2align 4,,10
	.p2align 3
.L2482:
	movq	%rcx, %rdx
	jmp	.L2472
.L2467:
	addq	$8, %rsi
	xorl	%edx, %edx
	jmp	.L2470
.L2475:
	movl	$2, %edx
	jmp	.L2468
.L2474:
	movl	$1, %edx
	jmp	.L2468
.L2476:
	movl	$3, %edx
	jmp	.L2468
.L2477:
	movl	$4, %edx
	jmp	.L2468
.L2479:
	movl	$6, %edx
	jmp	.L2468
.L2478:
	movl	$5, %edx
	jmp	.L2468
.L2484:
	.p2align 4,,1
	ret
	.cfi_endproc
.LFE190:
	.size	set_stack_double_array_element, .-set_stack_double_array_element
	.p2align 4,,15
	.globl	set_arbitrary_block_in_stack
	.type	set_arbitrary_block_in_stack, @function
set_arbitrary_block_in_stack:
.LFB191:
	.cfi_startproc
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	testq	%rdi, %rdi
	jg	.L2496
	jmp	.L2487
	.p2align 4,,10
	.p2align 3
.L2497:
	cmpq	%rax, %rdi
	jle	.L2490
	movzbl	(%rdx,%rax), %r8d
	movb	%r8b, (%rsi,%rcx)
	leaq	1(%rax), %r8
	cmpq	%r8, %rdi
	jle	.L2495
	movzbl	1(%rdx,%rax), %r8d
	movb	%r8b, 1(%rsi,%rcx)
	leaq	2(%rax), %r8
	cmpq	%r8, %rdi
	jle	.L2495
	movzbl	2(%rdx,%rax), %r8d
	addq	$3, %rax
	movb	%r8b, 2(%rsi,%rcx)
.L2490:
	addq	$3, %rcx
	cmpq	%rax, %rdi
	movl	$1, %r8d
	jle	.L2487
.L2496:
	testl	%r8d, %r8d
	je	.L2497
	addq	$5, %rcx
	xorl	%r8d, %r8d
	cmpq	%rax, %rdi
	jg	.L2496
.L2487:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2495:
	movq	%r8, %rax
	jmp	.L2490
	.cfi_endproc
.LFE191:
	.size	set_arbitrary_block_in_stack, .-set_arbitrary_block_in_stack
	.p2align 4,,15
	.globl	set_arbitrary_block_in_stack_with_offset
	.type	set_arbitrary_block_in_stack_with_offset, @function
set_arbitrary_block_in_stack_with_offset:
.LFB192:
	.cfi_startproc
	movq	%rdx, %rax
	movabsq	$6148914691236517206, %r9
	movq	%rdx, %r10
	imulq	%r9
	movq	%r10, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rsi,%rdx,8), %r8
	cmpq	%rax, %r10
	je	.L2515
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rdx
	addq	%r10, %rdx
	cmpq	$2, %rdx
	jg	.L2510
	testq	%rdi, %rdi
	jle	.L2510
	movl	$3, %r10d
	movq	%rdx, %rsi
	xorl	%eax, %eax
	subq	%rdx, %r10
	jmp	.L2502
	.p2align 4,,10
	.p2align 3
.L2516:
	cmpq	%rdi, %rax
	je	.L2501
.L2502:
	movzbl	(%rcx,%rax), %r9d
	addq	$1, %rax
	cmpq	%r10, %rax
	movb	%r9b, (%r8,%rsi)
	leaq	(%rax,%rdx), %rsi
	jne	.L2516
.L2501:
	addq	$8, %r8
.L2500:
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L2514:
	cmpq	%rax, %rdi
	jle	.L2498
.L2517:
	testl	%esi, %esi
	jne	.L2504
	movzbl	(%rcx,%rax), %esi
	movb	%sil, (%r8,%rdx)
	leaq	1(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L2512
	movzbl	1(%rcx,%rax), %esi
	movb	%sil, 1(%r8,%rdx)
	leaq	2(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L2512
	movzbl	2(%rcx,%rax), %esi
	addq	$3, %rax
	movb	%sil, 2(%r8,%rdx)
.L2505:
	addq	$3, %rdx
	cmpq	%rax, %rdi
	movl	$1, %esi
	jg	.L2517
.L2498:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2504:
	addq	$5, %rdx
	xorl	%esi, %esi
	jmp	.L2514
	.p2align 4,,10
	.p2align 3
.L2512:
	movq	%rsi, %rax
	jmp	.L2505
	.p2align 4,,10
	.p2align 3
.L2515:
	xorl	%eax, %eax
	jmp	.L2500
.L2510:
	xorl	%eax, %eax
	.p2align 4,,4
	jmp	.L2501
	.cfi_endproc
.LFE192:
	.size	set_arbitrary_block_in_stack_with_offset, .-set_arbitrary_block_in_stack_with_offset
	.section	.rodata.str1.1
.LC83:
	.string	"Printing stack memory:"
	.text
	.p2align 4,,15
	.globl	print_stack_mem
	.type	print_stack_mem, @function
print_stack_mem:
.LFB193:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	movl	$.LC83, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	xorl	%ebx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	puts
	cmpq	$0, total_stack_bytes_allocated(%rip)
	jle	.L2520
	.p2align 4,,10
	.p2align 3
.L2522:
	movzbl	0(%rbp,%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC10, %esi
	movl	$1, %edi
	addq	$1, %rbx
	call	__printf_chk
	cmpq	%rbx, total_stack_bytes_allocated(%rip)
	jg	.L2522
.L2520:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movl	$10, %edi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	putchar
	.cfi_endproc
.LFE193:
	.size	print_stack_mem, .-print_stack_mem
	.section	.rodata.str1.1
.LC84:
	.string	"Printing fun params:"
	.section	.rodata.str1.8
	.align 8
.LC85:
	.string	"Total size of all params in bytes: %ld\n"
	.align 8
.LC86:
	.string	"Total amount of chunks needed in secure stack: %ld\n"
	.section	.rodata.str1.1
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
	.section	.rodata.str1.8
	.align 8
.LC92:
	.string	"Number of long int elements: %ld\n"
	.section	.rodata.str1.1
.LC93:
	.string	"Long int elements:"
.LC94:
	.string	"%ld "
	.section	.rodata.str1.8
	.align 8
.LC95:
	.string	"Number of float elements: %ld\n"
	.section	.rodata.str1.1
.LC96:
	.string	"Float elements:"
.LC97:
	.string	"%f "
	.section	.rodata.str1.8
	.align 8
.LC98:
	.string	"Number of double elements: %ld\n"
	.section	.rodata.str1.1
.LC99:
	.string	"Double elements:"
.LC100:
	.string	"%lf "
	.section	.rodata.str1.8
	.align 8
.LC101:
	.string	"Number of pointer elements: %ld\n"
	.section	.rodata.str1.1
.LC102:
	.string	"Pointer element sizes:"
.LC103:
	.string	"pointer elements:"
	.section	.rodata.str1.8
	.align 8
.LC104:
	.string	"Number of arb pointer elements: %ld\n"
	.section	.rodata.str1.1
.LC105:
	.string	"Arb pointer element sizes:"
.LC106:
	.string	"Arb pointers:"
	.text
	.p2align 4,,15
	.globl	print_fun_params
	.type	print_fun_params, @function
print_fun_params:
.LFB194:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movl	$.LC84, %edi
	call	puts
	movq	(%rbx), %rdx
	movl	$.LC85, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movq	8(%rbx), %rdx
	movl	$.LC86, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movq	16(%rbx), %rax
	movl	$.LC87, %esi
	movl	$1, %edi
	movq	(%rax), %r12
	xorl	%eax, %eax
	movq	%r12, %rdx
	call	__printf_chk
	testq	%r12, %r12
	jle	.L2525
	movl	$.LC88, %edi
	xorl	%ebp, %ebp
	call	puts
	.p2align 4,,10
	.p2align 3
.L2527:
	movq	16(%rbx), %rax
	movl	$.LC89, %esi
	movl	$1, %edi
	movq	8(%rax), %rax
	movsbl	(%rax,%rbp), %edx
	xorl	%eax, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L2527
	movl	$10, %edi
	call	putchar
.L2525:
	movq	16(%rbx), %rax
	movl	$.LC90, %esi
	movl	$1, %edi
	movq	16(%rax), %r12
	xorl	%eax, %eax
	movq	%r12, %rdx
	call	__printf_chk
	testq	%r12, %r12
	jle	.L2528
	movl	$.LC91, %edi
	xorl	%ebp, %ebp
	call	puts
	.p2align 4,,10
	.p2align 3
.L2530:
	movq	16(%rbx), %rax
	movl	$.LC24, %esi
	movl	$1, %edi
	movq	24(%rax), %rax
	movl	(%rax,%rbp,4), %edx
	xorl	%eax, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L2530
	movl	$10, %edi
	call	putchar
.L2528:
	movq	16(%rbx), %rax
	movl	$.LC92, %esi
	movl	$1, %edi
	movq	32(%rax), %r12
	xorl	%eax, %eax
	movq	%r12, %rdx
	call	__printf_chk
	testq	%r12, %r12
	jle	.L2531
	movl	$.LC93, %edi
	xorl	%ebp, %ebp
	call	puts
	.p2align 4,,10
	.p2align 3
.L2533:
	movq	16(%rbx), %rax
	movl	$.LC94, %esi
	movl	$1, %edi
	movq	40(%rax), %rax
	movq	(%rax,%rbp,8), %rdx
	xorl	%eax, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L2533
	movl	$10, %edi
	call	putchar
.L2531:
	movq	16(%rbx), %rax
	movl	$.LC95, %esi
	movl	$1, %edi
	movq	48(%rax), %r12
	xorl	%eax, %eax
	movq	%r12, %rdx
	call	__printf_chk
	testq	%r12, %r12
	jle	.L2534
	movl	$.LC96, %edi
	xorl	%ebp, %ebp
	call	puts
	.p2align 4,,10
	.p2align 3
.L2536:
	movq	16(%rbx), %rax
	movl	$.LC97, %esi
	movl	$1, %edi
	movq	56(%rax), %rax
	movss	(%rax,%rbp,4), %xmm0
	movl	$1, %eax
	addq	$1, %rbp
	cvtps2pd	%xmm0, %xmm0
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L2536
	movl	$10, %edi
	call	putchar
.L2534:
	movq	16(%rbx), %rax
	movl	$.LC98, %esi
	movl	$1, %edi
	movq	64(%rax), %r12
	xorl	%eax, %eax
	movq	%r12, %rdx
	call	__printf_chk
	testq	%r12, %r12
	jle	.L2537
	movl	$.LC99, %edi
	xorl	%ebp, %ebp
	call	puts
	.p2align 4,,10
	.p2align 3
.L2539:
	movq	16(%rbx), %rax
	movl	$.LC100, %esi
	movl	$1, %edi
	movq	72(%rax), %rax
	movsd	(%rax,%rbp,8), %xmm0
	movl	$1, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L2539
	movl	$10, %edi
	call	putchar
.L2537:
	movq	16(%rbx), %rax
	movl	$.LC101, %esi
	movl	$1, %edi
	movq	80(%rax), %r12
	xorl	%eax, %eax
	movq	%r12, %rdx
	call	__printf_chk
	testq	%r12, %r12
	jle	.L2540
	movl	$.LC102, %edi
	xorl	%ebp, %ebp
	call	puts
	.p2align 4,,10
	.p2align 3
.L2542:
	movq	16(%rbx), %rax
	movl	$.LC94, %esi
	movl	$1, %edi
	movq	88(%rax), %rax
	movq	(%rax,%rbp,8), %rdx
	xorl	%eax, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L2542
	movl	$10, %edi
	xorl	%ebp, %ebp
	call	putchar
	movl	$.LC103, %edi
	call	puts
	.p2align 4,,10
	.p2align 3
.L2544:
	movq	16(%rbx), %rax
	movl	$.LC94, %esi
	movl	$1, %edi
	movq	96(%rax), %rax
	movq	(%rax,%rbp,8), %rdx
	xorl	%eax, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L2544
	movl	$10, %edi
	call	putchar
.L2540:
	movq	16(%rbx), %rax
	movl	$.LC104, %esi
	movl	$1, %edi
	movq	104(%rax), %r12
	xorl	%eax, %eax
	movq	%r12, %rdx
	call	__printf_chk
	testq	%r12, %r12
	jle	.L2524
	movl	$.LC105, %edi
	xorl	%ebp, %ebp
	call	puts
	.p2align 4,,10
	.p2align 3
.L2547:
	movq	16(%rbx), %rax
	movl	$.LC94, %esi
	movl	$1, %edi
	movq	112(%rax), %rax
	movq	(%rax,%rbp,8), %rdx
	xorl	%eax, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L2547
	movl	$10, %edi
	xorl	%ebp, %ebp
	call	putchar
	movl	$.LC106, %edi
	call	puts
	.p2align 4,,10
	.p2align 3
.L2549:
	movq	16(%rbx), %rax
	movl	$.LC94, %esi
	movl	$1, %edi
	movq	120(%rax), %rax
	movq	(%rax,%rbp,8), %rdx
	xorl	%eax, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L2549
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	movl	$10, %edi
	jmp	putchar
	.p2align 4,,10
	.p2align 3
.L2524:
	.cfi_restore_state
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE194:
	.size	print_fun_params, .-print_fun_params
	.section	.rodata.str1.8
	.align 8
.LC107:
	.string	"Printing fun params that point in stack:"
	.text
	.p2align 4,,15
	.globl	print_fun_params_that_point_in_stack
	.type	print_fun_params_that_point_in_stack, @function
print_fun_params_that_point_in_stack:
.LFB195:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	movl	$.LC107, %edi
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	call	puts
	movq	(%rbx), %rdx
	movl	$.LC85, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movq	8(%rbx), %rdx
	movl	$.LC86, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movq	16(%rbx), %rax
	movl	$.LC87, %esi
	movl	$1, %edi
	movq	(%rax), %rbp
	xorl	%eax, %eax
	movq	%rbp, %rdx
	call	__printf_chk
	testq	%rbp, %rbp
	jle	.L2552
	movl	$.LC88, %edi
	xorl	%r13d, %r13d
	movabsq	$6148914691236517206, %r12
	call	puts
	jmp	.L2558
	.p2align 4,,10
	.p2align 3
.L2553:
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%r13, %rax
	cmpq	$2, %rax
	jg	.L2555
	movzbl	(%rcx,%rax), %ecx
	.p2align 4,,10
	.p2align 3
.L2556:
	xorl	%eax, %eax
	movsbl	%cl, %edx
	movl	$.LC89, %esi
	movl	$1, %edi
	addq	$1, %r13
	call	__printf_chk
	cmpq	%rbp, %r13
	je	.L2642
.L2558:
	movq	16(%rbx), %rax
	movq	8(%rax), %rcx
	movq	%r13, %rax
	imulq	%r12
	movq	%r13, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rcx,%rdx,8), %rcx
	cmpq	%rax, %r13
	jne	.L2553
	movzbl	(%rcx), %ecx
	jmp	.L2556
.L2642:
	movl	$10, %edi
	call	putchar
.L2552:
	movq	16(%rbx), %rax
	movl	$.LC90, %esi
	movl	$1, %edi
	movq	16(%rax), %r13
	xorl	%eax, %eax
	movq	%r13, %rdx
	call	__printf_chk
	testq	%r13, %r13
	jle	.L2559
	movl	$.LC91, %edi
	xorl	%ebp, %ebp
	movq	%rsp, %r12
	call	puts
	.p2align 4,,10
	.p2align 3
.L2561:
	movq	16(%rbx), %rax
	movq	%rbp, %rcx
	movl	$1, %edx
	movq	%r12, %rdi
	addq	$1, %rbp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	movl	(%rsp), %edx
	xorl	%eax, %eax
	movl	$.LC24, %esi
	movl	$1, %edi
	call	__printf_chk
	cmpq	%r13, %rbp
	jne	.L2561
	movl	$10, %edi
	call	putchar
.L2559:
	movq	16(%rbx), %rax
	movl	$.LC92, %esi
	movl	$1, %edi
	movq	32(%rax), %rbp
	xorl	%eax, %eax
	movq	%rbp, %rdx
	call	__printf_chk
	testq	%rbp, %rbp
	jle	.L2562
	movl	$.LC93, %edi
	xorl	%r13d, %r13d
	movabsq	$6148914691236517206, %r12
	call	puts
	jmp	.L2572
	.p2align 4,,10
	.p2align 3
.L2563:
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2608
	movzbl	(%rdi,%rax), %edx
	cmpq	$2, %rax
	movb	%dl, (%rsp)
	je	.L2609
	movzbl	1(%rdi,%rax), %edx
	movb	%dl, 1(%rsp)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2610
	movzbl	2(%rdi,%rax), %edx
	movb	%dl, 2(%rsp)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2611
	movzbl	3(%rdi,%rax), %edx
	movb	%dl, 3(%rsp)
	leaq	4(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2612
	movzbl	4(%rdi,%rax), %edx
	movb	%dl, 4(%rsp)
	leaq	5(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2613
	movzbl	5(%rdi,%rax), %edx
	movb	%dl, 5(%rsp)
	leaq	6(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2614
	movzbl	6(%rdi,%rax), %edx
	movb	%dl, 6(%rsp)
	leaq	7(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2615
	movzbl	7(%rdi,%rax), %eax
	movb	%al, 7(%rsp)
.L2571:
	movq	(%rsp), %rdx
	xorl	%eax, %eax
	movl	$.LC94, %esi
	movl	$1, %edi
	addq	$1, %r13
	call	__printf_chk
	cmpq	%rbp, %r13
	je	.L2643
.L2572:
	movq	16(%rbx), %rax
	leaq	0(,%r13,8), %rcx
	movq	40(%rax), %rsi
	movq	%rcx, %rax
	imulq	%r12
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rsi,%rdx,8), %rdi
	cmpq	%rcx, %rax
	jne	.L2563
	xorl	%ecx, %ecx
.L2605:
	xorl	%eax, %eax
	xorl	%esi, %esi
	jmp	.L2564
	.p2align 4,,10
	.p2align 3
.L2644:
	movzbl	(%rdi,%rax), %edx
	movb	%dl, (%rsp,%rcx)
	leaq	1(%rcx), %rdx
	cmpq	$8, %rdx
	je	.L2616
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rcx), %rdx
	cmpq	$7, %rdx
	movb	%sil, 1(%rsp,%rcx)
	jg	.L2617
	movzbl	2(%rdi,%rax), %esi
	addq	$3, %rcx
	movb	%sil, (%rsp,%rdx)
.L2569:
	addq	$3, %rax
	movl	$1, %esi
.L2570:
	cmpq	$7, %rcx
	jg	.L2571
.L2564:
	testl	%esi, %esi
	je	.L2644
	addq	$5, %rax
	xorl	%esi, %esi
	jmp	.L2570
	.p2align 4,,10
	.p2align 3
.L2616:
	movl	$8, %ecx
	jmp	.L2569
	.p2align 4,,10
	.p2align 3
.L2617:
	movq	%rdx, %rcx
	jmp	.L2569
.L2643:
	movl	$10, %edi
	call	putchar
.L2562:
	movq	16(%rbx), %rax
	movl	$.LC95, %esi
	movl	$1, %edi
	movq	48(%rax), %r13
	xorl	%eax, %eax
	movq	%r13, %rdx
	call	__printf_chk
	testq	%r13, %r13
	jle	.L2573
	movl	$.LC96, %edi
	xorl	%ebp, %ebp
	movq	%rsp, %r12
	call	puts
	.p2align 4,,10
	.p2align 3
.L2575:
	movq	16(%rbx), %rax
	movq	%rbp, %rcx
	movl	$1, %edx
	movq	%r12, %rdi
	addq	$1, %rbp
	movq	56(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	movss	(%rsp), %xmm0
	movl	$.LC97, %esi
	movl	$1, %edi
	movl	$1, %eax
	cvtps2pd	%xmm0, %xmm0
	call	__printf_chk
	cmpq	%r13, %rbp
	jne	.L2575
	movl	$10, %edi
	call	putchar
.L2573:
	movq	16(%rbx), %rax
	movl	$.LC98, %esi
	movl	$1, %edi
	movq	64(%rax), %rbp
	xorl	%eax, %eax
	movq	%rbp, %rdx
	call	__printf_chk
	testq	%rbp, %rbp
	jle	.L2576
	movl	$.LC99, %edi
	xorl	%r13d, %r13d
	movabsq	$6148914691236517206, %r12
	call	puts
	jmp	.L2586
	.p2align 4,,10
	.p2align 3
.L2577:
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2618
	movzbl	(%rdi,%rax), %edx
	cmpq	$2, %rax
	movb	%dl, (%rsp)
	je	.L2619
	movzbl	1(%rdi,%rax), %edx
	movb	%dl, 1(%rsp)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2620
	movzbl	2(%rdi,%rax), %edx
	movb	%dl, 2(%rsp)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2621
	movzbl	3(%rdi,%rax), %edx
	movb	%dl, 3(%rsp)
	leaq	4(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2622
	movzbl	4(%rdi,%rax), %edx
	movb	%dl, 4(%rsp)
	leaq	5(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2623
	movzbl	5(%rdi,%rax), %edx
	movb	%dl, 5(%rsp)
	leaq	6(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2624
	movzbl	6(%rdi,%rax), %edx
	movb	%dl, 6(%rsp)
	leaq	7(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2625
	movzbl	7(%rdi,%rax), %eax
	movb	%al, 7(%rsp)
.L2585:
	movsd	(%rsp), %xmm0
	movl	$.LC100, %esi
	movl	$1, %edi
	movl	$1, %eax
	addq	$1, %r13
	call	__printf_chk
	cmpq	%rbp, %r13
	je	.L2645
.L2586:
	movq	16(%rbx), %rax
	leaq	0(,%r13,8), %rcx
	movq	72(%rax), %rsi
	movq	%rcx, %rax
	imulq	%r12
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rsi,%rdx,8), %rdi
	cmpq	%rax, %rcx
	jne	.L2577
	xorl	%ecx, %ecx
.L2606:
	xorl	%eax, %eax
	xorl	%esi, %esi
	jmp	.L2578
	.p2align 4,,10
	.p2align 3
.L2646:
	movzbl	(%rdi,%rax), %edx
	movb	%dl, (%rsp,%rcx)
	leaq	1(%rcx), %rdx
	cmpq	$8, %rdx
	je	.L2626
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rcx), %rdx
	cmpq	$7, %rdx
	movb	%sil, 1(%rsp,%rcx)
	jg	.L2627
	movzbl	2(%rdi,%rax), %esi
	addq	$3, %rcx
	movb	%sil, (%rsp,%rdx)
.L2583:
	addq	$3, %rax
	movl	$1, %esi
.L2584:
	cmpq	$7, %rcx
	jg	.L2585
.L2578:
	testl	%esi, %esi
	je	.L2646
	addq	$5, %rax
	xorl	%esi, %esi
	jmp	.L2584
	.p2align 4,,10
	.p2align 3
.L2626:
	movl	$8, %ecx
	jmp	.L2583
	.p2align 4,,10
	.p2align 3
.L2627:
	movq	%rdx, %rcx
	jmp	.L2583
.L2645:
	movl	$10, %edi
	call	putchar
.L2576:
	movq	16(%rbx), %rax
	movl	$.LC101, %esi
	movl	$1, %edi
	movq	80(%rax), %rbp
	xorl	%eax, %eax
	movq	%rbp, %rdx
	call	__printf_chk
	testq	%rbp, %rbp
	jle	.L2587
	movl	$.LC102, %edi
	xorl	%r12d, %r12d
	call	puts
	.p2align 4,,10
	.p2align 3
.L2589:
	movq	16(%rbx), %rax
	movl	$.LC94, %esi
	movl	$1, %edi
	movq	88(%rax), %rax
	movq	(%rax,%r12,8), %rdx
	xorl	%eax, %eax
	addq	$1, %r12
	call	__printf_chk
	cmpq	%rbp, %r12
	jne	.L2589
	movl	$10, %edi
	xorl	%r13d, %r13d
	movabsq	$6148914691236517206, %r12
	call	putchar
	movl	$.LC103, %edi
	call	puts
	jmp	.L2599
	.p2align 4,,10
	.p2align 3
.L2590:
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2628
	movzbl	(%rdi,%rax), %edx
	cmpq	$2, %rax
	movb	%dl, (%rsp)
	je	.L2629
	movzbl	1(%rdi,%rax), %edx
	movb	%dl, 1(%rsp)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2630
	movzbl	2(%rdi,%rax), %edx
	movb	%dl, 2(%rsp)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2631
	movzbl	3(%rdi,%rax), %edx
	movb	%dl, 3(%rsp)
	leaq	4(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2632
	movzbl	4(%rdi,%rax), %edx
	movb	%dl, 4(%rsp)
	leaq	5(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2633
	movzbl	5(%rdi,%rax), %edx
	movb	%dl, 5(%rsp)
	leaq	6(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2634
	movzbl	6(%rdi,%rax), %edx
	movb	%dl, 6(%rsp)
	leaq	7(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2635
	movzbl	7(%rdi,%rax), %eax
	movb	%al, 7(%rsp)
.L2598:
	movq	(%rsp), %rdx
	xorl	%eax, %eax
	movl	$.LC94, %esi
	movl	$1, %edi
	addq	$1, %r13
	call	__printf_chk
	cmpq	%rbp, %r13
	je	.L2647
.L2599:
	movq	16(%rbx), %rax
	leaq	0(,%r13,8), %rcx
	movq	96(%rax), %rsi
	movq	%rcx, %rax
	imulq	%r12
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rsi,%rdx,8), %rdi
	cmpq	%rax, %rcx
	jne	.L2590
	xorl	%ecx, %ecx
.L2607:
	xorl	%eax, %eax
	xorl	%esi, %esi
	jmp	.L2591
	.p2align 4,,10
	.p2align 3
.L2648:
	movzbl	(%rdi,%rax), %edx
	movb	%dl, (%rsp,%rcx)
	leaq	1(%rcx), %rdx
	cmpq	$8, %rdx
	je	.L2636
	movzbl	1(%rdi,%rax), %esi
	leaq	2(%rcx), %rdx
	cmpq	$7, %rdx
	movb	%sil, 1(%rsp,%rcx)
	jg	.L2637
	movzbl	2(%rdi,%rax), %esi
	addq	$3, %rcx
	movb	%sil, (%rsp,%rdx)
.L2596:
	addq	$3, %rax
	movl	$1, %esi
.L2597:
	cmpq	$7, %rcx
	jg	.L2598
.L2591:
	testl	%esi, %esi
	je	.L2648
	addq	$5, %rax
	xorl	%esi, %esi
	jmp	.L2597
	.p2align 4,,10
	.p2align 3
.L2636:
	movl	$8, %ecx
	jmp	.L2596
	.p2align 4,,10
	.p2align 3
.L2637:
	movq	%rdx, %rcx
	jmp	.L2596
.L2647:
	movl	$10, %edi
	call	putchar
.L2587:
	movq	16(%rbx), %rax
	movl	$.LC104, %esi
	movl	$1, %edi
	movq	104(%rax), %r12
	xorl	%eax, %eax
	movq	%r12, %rdx
	call	__printf_chk
	testq	%r12, %r12
	jle	.L2551
	movl	$.LC105, %edi
	xorl	%ebp, %ebp
	call	puts
	.p2align 4,,10
	.p2align 3
.L2602:
	movq	16(%rbx), %rax
	movl	$.LC94, %esi
	movl	$1, %edi
	movq	112(%rax), %rax
	movq	(%rax,%rbp,8), %rdx
	xorl	%eax, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L2602
	movl	$10, %edi
	xorl	%ebp, %ebp
	call	putchar
	movl	$.LC106, %edi
	call	puts
	.p2align 4,,10
	.p2align 3
.L2604:
	movq	16(%rbx), %rax
	movl	$.LC94, %esi
	movl	$1, %edi
	movq	120(%rax), %rax
	movq	(%rax,%rbp,8), %rdx
	xorl	%eax, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L2604
	movl	$10, %edi
	call	putchar
.L2551:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L2555:
	.cfi_restore_state
	addq	$8, %rcx
	movzbl	(%rcx), %ecx
	jmp	.L2556
.L2608:
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L2565:
	addq	$8, %rdi
	jmp	.L2605
.L2618:
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L2579:
	addq	$8, %rdi
	jmp	.L2606
.L2628:
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L2592:
	addq	$8, %rdi
	jmp	.L2607
.L2609:
	movl	$1, %ecx
	jmp	.L2565
.L2619:
	movl	$1, %ecx
	jmp	.L2579
.L2629:
	movl	$1, %ecx
	jmp	.L2592
.L2610:
	movl	$2, %ecx
	jmp	.L2565
.L2630:
	movl	$2, %ecx
	jmp	.L2592
.L2620:
	movl	$2, %ecx
	jmp	.L2579
.L2621:
	movl	$3, %ecx
	jmp	.L2579
.L2611:
	movl	$3, %ecx
	jmp	.L2565
.L2631:
	movl	$3, %ecx
	jmp	.L2592
.L2612:
	movl	$4, %ecx
	jmp	.L2565
.L2632:
	movl	$4, %ecx
	jmp	.L2592
.L2622:
	movl	$4, %ecx
	jmp	.L2579
.L2613:
	movl	$5, %ecx
	jmp	.L2565
.L2634:
	movl	$6, %ecx
	jmp	.L2592
.L2633:
	movl	$5, %ecx
	jmp	.L2592
.L2623:
	movl	$5, %ecx
	jmp	.L2579
.L2614:
	movl	$6, %ecx
	jmp	.L2565
.L2624:
	movl	$6, %ecx
	jmp	.L2579
.L2635:
	movl	$7, %ecx
	jmp	.L2592
.L2615:
	movl	$7, %ecx
	jmp	.L2565
.L2625:
	movl	$7, %ecx
	jmp	.L2579
	.cfi_endproc
.LFE195:
	.size	print_fun_params_that_point_in_stack, .-print_fun_params_that_point_in_stack
	.p2align 4,,15
	.globl	tower_of_Hanoi_init_secure_template
	.type	tower_of_Hanoi_init_secure_template, @function
tower_of_Hanoi_init_secure_template:
.LFB196:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	%edx, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	%ecx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movl	%edi, 12(%rsp)
	movl	$24, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L2666
	movq	$7, (%rax)
	movq	$3, 8(%rax)
	movl	$128, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r10
	je	.L2667
	movq	last_unused_stack_memory(%rip), %r9
	movq	entire_stack_memory_chunk(%rip), %r8
	movl	$16, %ecx
	addq	total_stack_bytes_allocated(%rip), %r8
	movq	%rax, 16(%rbx)
	movq	%r10, %rdi
	xorl	%eax, %eax
	rep stosq
	leaq	8(%r9), %rax
	movq	$3, (%r10)
	movq	$1, 16(%r10)
	cmpq	%r8, %rax
	movq	%rax, last_unused_stack_memory(%rip)
	jnb	.L2668
	testq	%r9, %r9
	movq	%r9, 8(%r10)
	je	.L2662
	movb	%bpl, (%r9)
	movb	%r13b, 1(%r9)
	movb	%r12b, 2(%r9)
	movq	entire_stack_memory_chunk(%rip), %r8
	addq	total_stack_bytes_allocated(%rip), %r8
	movq	16(%rbx), %rdi
	movq	last_unused_stack_memory(%rip), %r9
.L2653:
	leaq	16(%r9), %rax
	cmpq	%r8, %rax
	movq	%rax, last_unused_stack_memory(%rip)
	jnb	.L2669
.L2654:
	testq	%r9, %r9
	movq	%r9, 24(%rdi)
	je	.L2655
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.L2661
	.p2align 4,,10
	.p2align 3
.L2670:
	movzbl	12(%rsp,%rcx), %eax
	movb	%al, (%r9,%rdx)
	leaq	1(%rcx), %rax
	cmpq	$4, %rax
	je	.L2663
	movzbl	13(%rsp,%rcx), %eax
	movb	%al, 1(%r9,%rdx)
	leaq	2(%rcx), %rax
	cmpq	$3, %rax
	jg	.L2664
	movzbl	12(%rsp,%rax), %eax
	addq	$3, %rcx
	movb	%al, 2(%r9,%rdx)
.L2658:
	addq	$3, %rdx
	cmpq	$3, %rcx
	movl	$1, %esi
	jg	.L2655
.L2661:
	testl	%esi, %esi
	je	.L2670
	addq	$5, %rdx
	xorl	%esi, %esi
	cmpq	$3, %rcx
	jle	.L2661
.L2655:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2668:
	.cfi_restore_state
	leaq	16(%r9), %rax
	movq	$0, 8(%r10)
	movq	%r10, %rdi
	cmpq	%r8, %rax
	movq	%rax, last_unused_stack_memory(%rip)
	jb	.L2654
.L2669:
	movq	$0, 24(%rdi)
	movq	%r9, last_unused_stack_memory(%rip)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2663:
	.cfi_restore_state
	movl	$4, %ecx
	jmp	.L2658
	.p2align 4,,10
	.p2align 3
.L2664:
	movq	%rax, %rcx
	jmp	.L2658
.L2662:
	movq	%rax, %r9
	movq	%r10, %rdi
	jmp	.L2653
.L2667:
	movl	$1556, %esi
	movl	$__func__.6786, %edi
	call	error_checking_malloc.part.0
.L2666:
	movl	$1546, %esi
	movl	$__func__.6786, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE196:
	.size	tower_of_Hanoi_init_secure_template, .-tower_of_Hanoi_init_secure_template
	.section	.rodata.str1.1
.LC108:
	.string	"Allocating double array"
.LC112:
	.string	"Initializing fun params"
	.section	.rodata.str1.8
	.align 8
.LC115:
	.string	"Inserting fun params into secure stack"
	.section	.rodata.str1.1
.LC116:
	.string	"Printing chars"
.LC117:
	.string	"Printing ints"
.LC118:
	.string	"Printing doubles"
.LC119:
	.string	"Changing pointer"
.LC120:
	.string	"Printing array of doubles"
.LC121:
	.string	"i=%d, %lf "
	.section	.rodata.str1.8
	.align 8
.LC122:
	.string	"Fetching double array using arbitrary block"
	.align 8
.LC123:
	.string	"Fetching double array elements (one by one), using arbitrary blocks"
	.text
	.p2align 4,,15
	.globl	stack_fun_params_test
	.type	stack_fun_params_test, @function
stack_fun_params_test:
.LFB197:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	$.LC108, %edi
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$152, %rsp
	.cfi_def_cfa_offset 192
	call	puts
	movl	$80, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L2755
	salq	$60, %rax
	shrq	$63, %rax
	testl	%eax, %eax
	je	.L2723
	movsd	.LC109(%rip), %xmm6
	movl	$9, %esi
	movl	$1, %ecx
	movsd	%xmm6, (%rbx)
.L2673:
	leal	1(%rcx), %edi
	movl	%eax, %eax
	cmpl	$9, %esi
	leaq	(%rbx,%rax,8), %rdx
	leal	8(%rcx), %eax
	movl	%edi, 116(%rsp)
	leal	2(%rcx), %edi
	movd	116(%rsp), %xmm5
	cltq
	movl	%edi, 120(%rsp)
	leal	3(%rcx), %edi
	movd	120(%rsp), %xmm1
	movl	%ecx, 120(%rsp)
	movl	%edi, 124(%rsp)
	movd	120(%rsp), %xmm0
	movd	124(%rsp), %xmm4
	punpckldq	%xmm5, %xmm0
	punpckldq	%xmm4, %xmm1
	punpcklqdq	%xmm1, %xmm0
	movdqa	.LC110(%rip), %xmm1
	movdqa	%xmm0, %xmm2
	paddd	.LC111(%rip), %xmm0
	paddd	%xmm1, %xmm0
	paddd	%xmm1, %xmm2
	cvtdq2pd	%xmm0, %xmm1
	cvtdq2pd	%xmm2, %xmm3
	pshufd	$238, %xmm0, %xmm0
	movlpd	%xmm3, (%rdx)
	pshufd	$238, %xmm2, %xmm2
	movhpd	%xmm3, 8(%rdx)
	movlpd	%xmm1, 32(%rdx)
	cvtdq2pd	%xmm0, %xmm0
	movhpd	%xmm1, 40(%rdx)
	movlpd	%xmm0, 48(%rdx)
	cvtdq2pd	%xmm2, %xmm2
	movhpd	%xmm0, 56(%rdx)
	movlpd	%xmm2, 16(%rdx)
	movhpd	%xmm2, 24(%rdx)
	leal	108(%rcx), %edx
	cvtsi2sd	%edx, %xmm0
	movsd	%xmm0, (%rbx,%rax,8)
	leal	9(%rcx), %eax
	je	.L2674
	addl	$109, %ecx
	cltq
	cvtsi2sd	%ecx, %xmm0
	movsd	%xmm0, (%rbx,%rax,8)
.L2674:
	movl	$.LC112, %edi
	movabsq	$6148914691236517206, %r12
	call	puts
	movsd	.LC113(%rip), %xmm1
	movl	$102, %r9d
	movsd	.LC114(%rip), %xmm0
	movl	$101, %r8d
	movl	$100, %ecx
	movl	$99, %edx
	movl	$5, %esi
	movq	%rbx, 96(%rsp)
	movl	$1, %edi
	movq	$80, 88(%rsp)
	movq	$1, 80(%rsp)
	movl	$424242, 72(%rsp)
	movl	$2, %eax
	movq	$10, 64(%rsp)
	movq	$1, 56(%rsp)
	movq	$2, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$41, 24(%rsp)
	movl	$42, 16(%rsp)
	movq	$2, 8(%rsp)
	movl	$103, (%rsp)
	call	init_function_params
	movl	$.LC115, %edi
	movq	%rax, %rbx
	call	puts
	movq	%rbx, %rdi
	call	put_fun_params_into_secure_stack
	movq	%rbx, %rdi
	movq	%rax, %rbp
	xorl	%ebx, %ebx
	call	free_fun_params
	movl	$.LC116, %edi
	call	puts
	jmp	.L2680
	.p2align 4,,10
	.p2align 3
.L2675:
	movq	%rdx, %rax
	leaq	(%rcx,%rdx,8), %rcx
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rbx, %rax
	cmpq	$2, %rax
	jg	.L2677
	movsbl	(%rcx,%rax), %edx
	.p2align 4,,10
	.p2align 3
.L2678:
	xorl	%eax, %eax
	movl	$.LC89, %esi
	movl	$1, %edi
	addq	$1, %rbx
	call	__printf_chk
	cmpq	$5, %rbx
	je	.L2756
.L2680:
	movq	16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rbx, %rax
	imulq	%r12
	movq	%rbx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	cmpq	%rax, %rbx
	jne	.L2675
	leaq	(%rcx,%rdx,8), %rdx
.L2676:
	movsbl	(%rdx), %edx
	jmp	.L2678
.L2756:
	movl	$10, %edi
	xorb	%bl, %bl
	call	putchar
	movl	$.LC117, %edi
	call	puts
.L2682:
	movq	16(%rbp), %rax
	leaq	128(%rsp), %rdi
	movq	%rbx, %rcx
	movl	$1, %edx
	addq	$1, %rbx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	movl	128(%rsp), %edx
	xorl	%eax, %eax
	movl	$.LC24, %esi
	movl	$1, %edi
	call	__printf_chk
	cmpq	$2, %rbx
	jne	.L2682
	movl	$10, %edi
	xorb	%bl, %bl
	call	putchar
	movl	$.LC118, %edi
	call	puts
.L2684:
	movq	16(%rbp), %rax
	leaq	128(%rsp), %rdi
	movq	%rbx, %rcx
	movl	$1, %edx
	addq	$1, %rbx
	movq	72(%rax), %rsi
	call	get_secure_stack_data.constprop.11
	movsd	128(%rsp), %xmm0
	movl	$.LC100, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	cmpq	$2, %rbx
	jne	.L2684
	movl	$10, %edi
	call	putchar
	movl	$.LC119, %edi
	call	puts
	movq	16(%rbp), %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	96(%rax), %rsi
	movq	24(%rax), %rax
	movq	%rax, 128(%rsp)
	xorl	%eax, %eax
	jmp	.L2689
	.p2align 4,,10
	.p2align 3
.L2758:
	movzbl	128(%rsp,%rdx), %ecx
	movb	%cl, (%rsi,%rax)
	leaq	1(%rdx), %rcx
	cmpq	$8, %rcx
	je	.L2724
	movzbl	129(%rsp,%rdx), %ecx
	movb	%cl, 1(%rsi,%rax)
	leaq	2(%rdx), %rcx
	cmpq	$7, %rcx
	jg	.L2725
	movzbl	128(%rsp,%rcx), %ecx
	addq	$3, %rdx
	movb	%cl, 2(%rsi,%rax)
.L2686:
	addq	$3, %rax
	cmpq	$7, %rdx
	movl	$1, %ecx
	jg	.L2757
.L2689:
	testl	%ecx, %ecx
	je	.L2758
	addq	$5, %rax
	xorl	%ecx, %ecx
	cmpq	$7, %rdx
	jle	.L2689
.L2757:
	movq	16(%rbp), %rax
	leaq	128(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	xorl	%ebx, %ebx
	movq	96(%rax), %rsi
	call	get_secure_stack_data.constprop.11
	movq	128(%rsp), %rsi
	leaq	128(%rsp), %rdi
	xorl	%edx, %edx
	movl	$45, 128(%rsp)
	call	set_secure_stack_data.constprop.6
	movl	$.LC117, %edi
	call	puts
.L2691:
	movq	16(%rbp), %rax
	leaq	128(%rsp), %rdi
	movq	%rbx, %rcx
	movl	$1, %edx
	addq	$1, %rbx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	movl	128(%rsp), %edx
	xorl	%eax, %eax
	movl	$.LC24, %esi
	movl	$1, %edi
	call	__printf_chk
	cmpq	$2, %rbx
	jne	.L2691
	movl	$10, %edi
	xorl	%r12d, %r12d
	movabsq	$6148914691236517206, %rbx
	call	putchar
	movl	$.LC120, %edi
	call	puts
	jmp	.L2701
	.p2align 4,,10
	.p2align 3
.L2692:
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rax
	cmpq	$2, %rax
	jg	.L2726
	movzbl	(%rdi,%rax), %edx
	cmpq	$2, %rax
	movb	%dl, 128(%rsp)
	je	.L2727
	movzbl	1(%rdi,%rax), %edx
	movb	%dl, 129(%rsp)
	leaq	2(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2728
	movzbl	2(%rdi,%rax), %edx
	movb	%dl, 130(%rsp)
	leaq	3(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2729
	movzbl	3(%rdi,%rax), %edx
	movb	%dl, 131(%rsp)
	leaq	4(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2730
	movzbl	4(%rdi,%rax), %edx
	movb	%dl, 132(%rsp)
	leaq	5(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2731
	movzbl	5(%rdi,%rax), %edx
	movb	%dl, 133(%rsp)
	leaq	6(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2732
	movzbl	6(%rdi,%rax), %edx
	movb	%dl, 134(%rsp)
	leaq	7(%rax), %rdx
	cmpq	$2, %rdx
	jg	.L2733
	movzbl	7(%rdi,%rax), %eax
	movb	%al, 135(%rsp)
.L2700:
	movsd	128(%rsp), %xmm0
	movl	%r9d, %edx
	movl	$.LC121, %esi
	movl	$1, %edi
	movl	$1, %eax
	addq	$1, %r12
	call	__printf_chk
	cmpq	$10, %r12
	je	.L2759
.L2701:
	movq	16(%rbp), %rax
	leaq	0(,%r12,8), %rcx
	movl	%r12d, %r9d
	movq	120(%rax), %rax
	movq	(%rax), %rsi
	movq	%rcx, %rax
	imulq	%rbx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rsi,%rdx,8), %rdi
	cmpq	%rcx, %rax
	jne	.L2692
	xorl	%esi, %esi
.L2721:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	.L2693
	.p2align 4,,10
	.p2align 3
.L2760:
	movzbl	(%rdi,%rcx), %eax
	movb	%al, 128(%rsp,%rsi)
	leaq	1(%rsi), %rax
	cmpq	$8, %rax
	je	.L2734
	movzbl	1(%rdi,%rcx), %r8d
	leaq	2(%rsi), %rax
	cmpq	$7, %rax
	movb	%r8b, 129(%rsp,%rsi)
	jg	.L2735
	movzbl	2(%rdi,%rcx), %edx
	addq	$3, %rsi
	movb	%dl, 128(%rsp,%rax)
.L2698:
	addq	$3, %rcx
	movl	$1, %eax
.L2699:
	cmpq	$7, %rsi
	jg	.L2700
.L2693:
	testl	%eax, %eax
	je	.L2760
	addq	$5, %rcx
	xorl	%eax, %eax
	jmp	.L2699
	.p2align 4,,10
	.p2align 3
.L2734:
	movl	$8, %esi
	jmp	.L2698
	.p2align 4,,10
	.p2align 3
.L2735:
	movq	%rax, %rsi
	jmp	.L2698
.L2759:
	movl	$.LC122, %edi
	call	puts
	movl	$80, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r12
	je	.L2761
	movq	16(%rbp), %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	120(%rax), %rax
	movq	(%rax), %rsi
	xorl	%eax, %eax
	jmp	.L2707
	.p2align 4,,10
	.p2align 3
.L2763:
	movzbl	(%rsi,%rcx), %eax
	cmpq	$79, %rdx
	movb	%al, (%r12,%rdx)
	je	.L2736
	movzbl	1(%rsi,%rcx), %eax
	movb	%al, 1(%r12,%rdx)
	leaq	2(%rdx), %rax
	cmpq	$79, %rax
	jg	.L2737
	movzbl	2(%rsi,%rcx), %eax
	movb	%al, 2(%r12,%rdx)
	addq	$3, %rdx
.L2704:
	addq	$3, %rcx
	cmpq	$79, %rdx
	movl	$1, %eax
	jg	.L2762
.L2707:
	testl	%eax, %eax
	je	.L2763
	addq	$5, %rcx
	xorl	%eax, %eax
	cmpq	$79, %rdx
	jle	.L2707
.L2762:
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L2709:
	movsd	(%r12,%rbx), %xmm0
	movl	$.LC71, %esi
	movl	$1, %edi
	movl	$1, %eax
	addq	$8, %rbx
	call	__printf_chk
	cmpq	$80, %rbx
	jne	.L2709
	movl	$10, %edi
	call	putchar
	movl	$.LC123, %edi
	call	puts
	movl	$80, %edi
	call	malloc
	testq	%rax, %rax
	je	.L2764
	movq	%rax, %rbx
	xorl	%r13d, %r13d
	movabsq	$6148914691236517206, %r12
	jmp	.L2720
	.p2align 4,,10
	.p2align 3
.L2711:
	movq	%rdx, %rax
	negq	%rax
	leaq	(%rdx,%rax,4), %rdx
	addq	%r13, %rdx
	cmpq	$2, %rdx
	jg	.L2738
	movzbl	(%rdi,%rdx), %eax
	cmpq	$2, %rdx
	movb	%al, (%rbx)
	je	.L2739
	movzbl	1(%rdi,%rdx), %eax
	movb	%al, 1(%rbx)
	leaq	2(%rdx), %rax
	cmpq	$2, %rax
	jg	.L2740
	movzbl	2(%rdi,%rdx), %eax
	movb	%al, 2(%rbx)
	leaq	3(%rdx), %rax
	cmpq	$2, %rax
	jg	.L2741
	movzbl	3(%rdi,%rdx), %eax
	movb	%al, 3(%rbx)
	leaq	4(%rdx), %rax
	cmpq	$2, %rax
	jg	.L2742
	movzbl	4(%rdi,%rdx), %eax
	movb	%al, 4(%rbx)
	leaq	5(%rdx), %rax
	cmpq	$2, %rax
	jg	.L2743
	movzbl	5(%rdi,%rdx), %eax
	movb	%al, 5(%rbx)
	leaq	6(%rdx), %rax
	cmpq	$2, %rax
	jg	.L2744
	movzbl	6(%rdi,%rdx), %eax
	movb	%al, 6(%rbx)
	leaq	7(%rdx), %rax
	cmpq	$2, %rax
	jg	.L2745
	movzbl	7(%rdi,%rdx), %eax
	movb	%al, 7(%rbx)
.L2719:
	movsd	(%rbx), %xmm0
	movl	$.LC71, %esi
	movl	$1, %edi
	movl	$1, %eax
	addq	$8, %r13
	addq	$8, %rbx
	call	__printf_chk
	cmpq	$80, %r13
	je	.L2765
.L2720:
	movq	16(%rbp), %rax
	movq	120(%rax), %rax
	movq	(%rax), %rcx
	movq	%r13, %rax
	imulq	%r12
	movq	%r13, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rcx,%rdx,8), %rdi
	cmpq	%rax, %r13
	jne	.L2711
	xorl	%edx, %edx
.L2722:
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	jmp	.L2712
	.p2align 4,,10
	.p2align 3
.L2766:
	movzbl	(%rdi,%rcx), %esi
	cmpq	$7, %rdx
	movb	%sil, (%rbx,%rdx)
	je	.L2746
	movzbl	1(%rdi,%rcx), %eax
	leaq	2(%rdx), %rsi
	cmpq	$7, %rsi
	movb	%al, 1(%rdx,%rbx)
	jg	.L2747
	movzbl	2(%rdi,%rcx), %eax
	addq	$3, %rdx
	movb	%al, -1(%rdx,%rbx)
.L2717:
	addq	$3, %rcx
	movl	$1, %esi
.L2718:
	cmpq	$7, %rdx
	jg	.L2719
.L2712:
	testl	%esi, %esi
	je	.L2766
	addq	$5, %rcx
	xorl	%esi, %esi
	jmp	.L2718
	.p2align 4,,10
	.p2align 3
.L2746:
	movl	$8, %edx
	jmp	.L2717
	.p2align 4,,10
	.p2align 3
.L2747:
	movq	%rsi, %rdx
	jmp	.L2717
.L2765:
	movl	$10, %edi
	call	putchar
	addq	$152, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L2723:
	.cfi_restore_state
	movl	$10, %esi
	xorl	%ecx, %ecx
	jmp	.L2673
.L2738:
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L2713:
	addq	$8, %rdi
	jmp	.L2722
.L2726:
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L2694:
	addq	$8, %rdi
	jmp	.L2721
.L2728:
	movl	$2, %esi
	jmp	.L2694
.L2727:
	movl	$1, %esi
	jmp	.L2694
.L2740:
	movl	$2, %edx
	jmp	.L2713
.L2739:
	movl	$1, %edx
	jmp	.L2713
.L2741:
	movl	$3, %edx
	jmp	.L2713
.L2729:
	movl	$3, %esi
	jmp	.L2694
.L2742:
	movl	$4, %edx
	jmp	.L2713
.L2730:
	movl	$4, %esi
	jmp	.L2694
.L2732:
	movl	$6, %esi
	jmp	.L2694
.L2731:
	movl	$5, %esi
	jmp	.L2694
.L2744:
	movl	$6, %edx
	jmp	.L2713
.L2743:
	movl	$5, %edx
	jmp	.L2713
.L2745:
	movl	$7, %edx
	jmp	.L2713
.L2724:
	movl	$8, %edx
	jmp	.L2686
.L2736:
	movl	$80, %edx
	jmp	.L2704
.L2733:
	movl	$7, %esi
	jmp	.L2694
.L2737:
	movq	%rax, %rdx
	jmp	.L2704
.L2725:
	movq	%rcx, %rdx
	jmp	.L2686
.L2677:
	leaq	8(%rcx), %rdx
	jmp	.L2676
.L2764:
	movl	$66, %esi
	movl	$__func__.6792, %edi
	call	error_checking_malloc.part.0
.L2755:
	movl	$9, %esi
	movl	$__func__.6792, %edi
	call	error_checking_malloc.part.0
.L2761:
	movl	$57, %esi
	movl	$__func__.6792, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE197:
	.size	stack_fun_params_test, .-stack_fun_params_test
	.p2align 4,,15
	.globl	towerOfHanoi
	.type	towerOfHanoi, @function
towerOfHanoi:
.LFB198:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leal	-1(%rdi), %eax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edi, %ebx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	cmpl	$1, %eax
	jbe	.L2767
	cmpl	$3, %edi
	je	.L2767
	leal	-3(%rdi), %eax
	cmpl	$1, %eax
	je	.L2767
	leal	-4(%rdi), %r10d
	movl	%esi, %r13d
	movl	%edx, %r9d
	movl	%ecx, %r8d
	cmpl	$1, %r10d
	je	.L2769
	leal	-5(%rdi), %r14d
	movsbl	%dl, %r12d
	movsbl	%cl, %ebp
	movsbl	%sil, %r15d
	movl	%edx, 4(%rsp)
	movl	%ecx, (%rsp)
	movl	%ebp, %edx
	movl	%r12d, %ecx
	movl	%r15d, %esi
	movl	%r14d, %edi
	movl	%r10d, 12(%rsp)
	movl	%eax, 8(%rsp)
	call	towerOfHanoi
	movl	%r15d, %ecx
	movl	%r12d, %edx
	movl	%ebp, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%ebp, %ecx
	movl	%r15d, %edx
	movl	%r12d, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%r12d, %ecx
	movl	%ebp, %edx
	movl	%r15d, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%r15d, %ecx
	movl	%r12d, %edx
	movl	%ebp, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%ebp, %ecx
	movl	%r15d, %edx
	movl	%r12d, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%r12d, %ecx
	movl	%ebp, %edx
	movl	%r15d, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%r15d, %ecx
	movl	%r12d, %edx
	movl	%ebp, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%ebp, %ecx
	movl	%r15d, %edx
	movl	%r12d, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%r12d, %ecx
	movl	%ebp, %edx
	movl	%r15d, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%r15d, %ecx
	movl	%r12d, %edx
	movl	%ebp, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%ebp, %ecx
	movl	%r15d, %edx
	movl	%r12d, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%r12d, %ecx
	movl	%ebp, %edx
	movl	%r15d, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%r15d, %ecx
	movl	%r12d, %edx
	movl	%ebp, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%ebp, %ecx
	movl	%r15d, %edx
	movl	%r12d, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	%r12d, %ecx
	movl	%ebp, %edx
	movl	%r15d, %esi
	movl	%r14d, %edi
	call	towerOfHanoi
	movl	12(%rsp), %r10d
	movl	8(%rsp), %eax
	movl	4(%rsp), %r9d
	movl	(%rsp), %r8d
.L2769:
	cmpl	$1, %eax
	je	.L2767
	cmpl	$1, %r10d
	je	.L2767
	movsbl	%r9b, %r12d
	movsbl	%r8b, %ebp
	movsbl	%r13b, %r13d
	subl	$5, %ebx
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movl	%ebp, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%ebp, %ecx
	movl	%r13d, %edx
	movl	%r12d, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%r12d, %ecx
	movl	%ebp, %edx
	movl	%r13d, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movl	%ebp, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%ebp, %ecx
	movl	%r13d, %edx
	movl	%r12d, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%r12d, %ecx
	movl	%ebp, %edx
	movl	%r13d, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movl	%ebp, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%ebp, %ecx
	movl	%r13d, %edx
	movl	%r12d, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%r12d, %ecx
	movl	%ebp, %edx
	movl	%r13d, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movl	%ebp, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%ebp, %ecx
	movl	%r13d, %edx
	movl	%r12d, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%r12d, %ecx
	movl	%ebp, %edx
	movl	%r13d, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movl	%ebp, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%ebp, %ecx
	movl	%r13d, %edx
	movl	%r12d, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	movl	%r12d, %ecx
	movl	%ebp, %edx
	movl	%r13d, %esi
	movl	%ebx, %edi
	call	towerOfHanoi
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%ebx, %edi
	movl	%ebp, %esi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	movl	%r12d, %edx
	movl	%r13d, %ecx
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	towerOfHanoi
	.p2align 4,,10
	.p2align 3
.L2767:
	.cfi_restore_state
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE198:
	.size	towerOfHanoi, .-towerOfHanoi
	.p2align 4,,15
	.globl	towerOfHanoi_secure
	.type	towerOfHanoi_secure, @function
towerOfHanoi_secure:
.LFB199:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movsbl	%dl, %eax
	movsbl	%cl, %r8d
	movsbl	%sil, %edx
	movl	%eax, %ecx
	movl	$1, %r9d
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	$3, %esi
	xorl	%eax, %eax
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$72, %rsp
	.cfi_def_cfa_offset 112
	movl	%edi, (%rsp)
	movq	$0, 40(%rsp)
	movl	$1, %edi
	movq	$0, 32(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 8(%rsp)
	call	init_function_params
	movq	%rax, %rbp
	movq	%rax, %rdi
	call	put_fun_params_into_secure_stack
	movq	%rbp, %rdi
	movq	%rax, %rbx
	call	free_fun_params
	movq	16(%rbx), %rax
	leaq	48(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	cmpl	$1, 48(%rsp)
	je	.L2792
	movq	16(%rbx), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	8(%rdi), %rax
	movq	24(%rdi), %rsi
	leaq	48(%rsp), %rdi
	movsbl	1(%rax), %r13d
	movsbl	2(%rax), %r12d
	movsbl	(%rax), %ebp
	call	get_secure_stack_data.constprop.10
	movl	48(%rsp), %eax
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movl	%ebp, %esi
	leal	-1(%rax), %edi
	call	towerOfHanoi_secure
	movq	16(%rbx), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	8(%rdi), %rax
	movq	24(%rdi), %rsi
	leaq	48(%rsp), %rdi
	movsbl	(%rax), %r13d
	movsbl	1(%rax), %r12d
	movsbl	2(%rax), %ebp
	call	get_secure_stack_data.constprop.10
	movl	48(%rsp), %eax
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movl	%ebp, %esi
	leal	-1(%rax), %edi
	call	towerOfHanoi_secure
.L2792:
	movq	8(%rbx), %rax
	salq	$3, %rax
	subq	%rax, last_unused_stack_memory(%rip)
	movq	16(%rbx), %rax
	movq	88(%rax), %rdi
	call	free
	movq	16(%rbx), %rax
	movq	112(%rax), %rdi
	call	free
	movq	16(%rbx), %rdi
	call	free
	movq	%rbx, %rdi
	call	free
	addq	$72, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE199:
	.size	towerOfHanoi_secure, .-towerOfHanoi_secure
	.p2align 4,,15
	.globl	towerOfHanoi_secure_using_template
	.type	towerOfHanoi_secure_using_template, @function
towerOfHanoi_secure_using_template:
.LFB200:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movsbl	%cl, %ecx
	movsbl	%dl, %edx
	movsbl	%sil, %esi
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	call	tower_of_Hanoi_init_secure_template
	movq	%rax, %rbx
	movq	16(%rax), %rax
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rsp, %rdi
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	cmpl	$1, (%rsp)
	je	.L2797
	movq	16(%rbx), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	8(%rdi), %rax
	movq	24(%rdi), %rsi
	movq	%rsp, %rdi
	movsbl	1(%rax), %r13d
	movsbl	2(%rax), %r12d
	movsbl	(%rax), %ebp
	call	get_secure_stack_data.constprop.10
	movl	(%rsp), %eax
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movl	%ebp, %esi
	leal	-1(%rax), %edi
	call	towerOfHanoi_secure_using_template
	movq	16(%rbx), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	8(%rdi), %rax
	movq	24(%rdi), %rsi
	movq	%rsp, %rdi
	movsbl	(%rax), %r13d
	movsbl	1(%rax), %r12d
	movsbl	2(%rax), %ebp
	call	get_secure_stack_data.constprop.10
	movl	(%rsp), %eax
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movl	%ebp, %esi
	leal	-1(%rax), %edi
	call	towerOfHanoi_secure_using_template
.L2797:
	movq	8(%rbx), %rax
	salq	$3, %rax
	subq	%rax, last_unused_stack_memory(%rip)
	movq	16(%rbx), %rax
	movq	88(%rax), %rdi
	call	free
	movq	16(%rbx), %rax
	movq	112(%rax), %rdi
	call	free
	movq	16(%rbx), %rdi
	call	free
	movq	%rbx, %rdi
	call	free
	addq	$24, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE200:
	.size	towerOfHanoi_secure_using_template, .-towerOfHanoi_secure_using_template
	.p2align 4,,15
	.globl	towerOfHanoi_secure_using_changed_accesses
	.type	towerOfHanoi_secure_using_changed_accesses, @function
towerOfHanoi_secure_using_changed_accesses:
.LFB201:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movsbl	%cl, %ecx
	movsbl	%dl, %edx
	movsbl	%sil, %esi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	call	tower_of_Hanoi_init_secure_template
	movq	%rax, %rbx
	movq	16(%rax), %rax
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rsp, %rdi
	movq	24(%rax), %r12
	movq	8(%rax), %rbp
	movq	%r12, %rsi
	call	get_secure_stack_data.constprop.10
	cmpl	$1, (%rsp)
	je	.L2802
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%r12, %rsi
	movq	%rsp, %rdi
	movsbl	2(%rbp), %r14d
	movsbl	0(%rbp), %r13d
	movsbl	1(%rbp), %r15d
	call	get_secure_stack_data.constprop.10
	movl	(%rsp), %eax
	movl	%r14d, %edx
	movl	%r13d, %esi
	movl	%r15d, %ecx
	leal	-1(%rax), %edi
	call	towerOfHanoi_secure_using_template
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%r12, %rsi
	movq	%rsp, %rdi
	movsbl	0(%rbp), %r14d
	movsbl	1(%rbp), %r13d
	movsbl	2(%rbp), %ebp
	call	get_secure_stack_data.constprop.10
	movl	(%rsp), %eax
	movl	%r14d, %ecx
	movl	%r13d, %edx
	movl	%ebp, %esi
	leal	-1(%rax), %edi
	call	towerOfHanoi_secure_using_template
.L2802:
	movq	8(%rbx), %rax
	salq	$3, %rax
	subq	%rax, last_unused_stack_memory(%rip)
	movq	16(%rbx), %rax
	movq	88(%rax), %rdi
	call	free
	movq	16(%rbx), %rax
	movq	112(%rax), %rdi
	call	free
	movq	16(%rbx), %rdi
	call	free
	movq	%rbx, %rdi
	call	free
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE201:
	.size	towerOfHanoi_secure_using_changed_accesses, .-towerOfHanoi_secure_using_changed_accesses
	.p2align 4,,15
	.globl	check_next_canaries
	.type	check_next_canaries, @function
check_next_canaries:
.LFB202:
	.cfi_startproc
	cmpb	$66, (%rdi)
	jne	.L2805
	xorl	%eax, %eax
	cmpb	$66, 1(%rdi)
	sete	%al
	ret
	.p2align 4,,10
	.p2align 3
.L2805:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE202:
	.size	check_next_canaries, .-check_next_canaries
	.section	.rodata.str1.1
.LC124:
	.string	"key no%d=0x%02x\n"
	.text
	.p2align 4,,15
	.globl	find_keyshares
	.type	find_keyshares, @function
find_keyshares:
.LFB203:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movl	$__executable_start, %eax
	movb	$0, (%rsp)
	movb	$0, 1(%rsp)
	cmpq	$__etext, %rax
	movb	$0, 2(%rsp)
	movb	$0, 3(%rsp)
	movb	$0, 4(%rsp)
	ja	.L2823
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.L2811
	.p2align 4,,10
	.p2align 3
.L2808:
	addq	$1, %rax
	cmpq	$__etext+1, %rax
	je	.L2825
.L2811:
	cmpb	$-21, (%rax)
	jne	.L2808
	cmpb	$7, 1(%rax)
	jne	.L2808
	cmpb	$66, 2(%rax)
	jne	.L2808
	cmpb	$66, 3(%rax)
	jne	.L2808
	xorb	4(%rax), %dl
	xorb	8(%rax), %cl
	addq	$1, %rax
	xorb	6(%rax), %sil
	xorb	5(%rax), %dil
	xorb	4(%rax), %r8b
	cmpq	$__etext+1, %rax
	movl	%edx, %r9d
	jne	.L2811
	.p2align 4,,10
	.p2align 3
.L2825:
	movb	%r8b, 1(%rsp)
	movb	%r9b, (%rsp)
	movl	%r9d, %ebx
	movb	%dil, 2(%rsp)
	movb	%sil, 3(%rsp)
	movl	%edi, %r8d
	movb	%cl, 4(%rsp)
	movl	%ecx, %r10d
.L2807:
	movzbl	1(%rsp), %r9d
	movzbl	3(%rsp), %edi
	xorl	%esi, %esi
	movq	entire_memory_chunk(%rip), %rcx
	movq	total_bytes_allocated(%rip), %r11
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L2812:
	cmpq	%r11, %rax
	jge	.L2826
.L2815:
	testl	%esi, %esi
	je	.L2813
	xorb	(%rcx,%rax), %dl
	xorb	1(%rcx,%rax), %r9b
	xorl	%esi, %esi
	xorb	2(%rcx,%rax), %r8b
	xorb	3(%rcx,%rax), %dil
	xorb	4(%rcx,%rax), %r10b
	addq	$5, %rax
	cmpq	%r11, %rax
	movl	%edx, %ebx
	jl	.L2815
.L2826:
	movq	entire_stack_memory_chunk(%rip), %rcx
	movq	total_stack_bytes_allocated(%rip), %r11
	xorl	%esi, %esi
	movb	%bl, (%rsp)
	movb	%r9b, 1(%rsp)
	xorl	%eax, %eax
	movb	%r8b, 2(%rsp)
	movb	%dil, 3(%rsp)
	.p2align 4,,10
	.p2align 3
.L2816:
	cmpq	%r11, %rax
	jge	.L2827
.L2819:
	testl	%esi, %esi
	je	.L2817
	xorb	(%rcx,%rax), %dl
	xorb	1(%rcx,%rax), %r9b
	xorl	%esi, %esi
	xorb	2(%rcx,%rax), %r8b
	xorb	3(%rcx,%rax), %dil
	xorb	4(%rcx,%rax), %r10b
	addq	$5, %rax
	cmpq	%r11, %rax
	movl	%edx, %ebx
	jl	.L2819
.L2827:
	movb	%bl, (%rsp)
	movb	%dil, 3(%rsp)
	xorl	%ebx, %ebx
	movl	$10, %edi
	movb	%r9b, 1(%rsp)
	movb	%r8b, 2(%rsp)
	movb	%r10b, 4(%rsp)
	call	putchar
.L2821:
	movzbl	(%rsp,%rbx), %ecx
	movl	%ebx, %edx
	xorl	%eax, %eax
	movl	$.LC124, %esi
	movl	$1, %edi
	addq	$1, %rbx
	call	__printf_chk
	cmpq	$5, %rbx
	jne	.L2821
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L2828
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2813:
	.cfi_restore_state
	addq	$4, %rax
	movl	$1, %esi
	jmp	.L2812
	.p2align 4,,10
	.p2align 3
.L2817:
	addq	$3, %rax
	movl	$1, %esi
	jmp	.L2816
.L2823:
	xorl	%edx, %edx
	movzbl	(%rsp), %ebx
	movzbl	2(%rsp), %r8d
	movzbl	4(%rsp), %r10d
	jmp	.L2807
.L2828:
	call	__stack_chk_fail
	.cfi_endproc
.LFE203:
	.size	find_keyshares, .-find_keyshares
	.section	.rodata.str1.1
.LC125:
	.string	"Verification requested!"
	.text
	.p2align 4,,15
	.globl	verification_procedure
	.type	verification_procedure, @function
verification_procedure:
.LFB204:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$.LC125, %edi
	call	puts
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	find_keyshares
	.cfi_endproc
.LFE204:
	.size	verification_procedure, .-verification_procedure
	.section	.rodata.str1.8
	.align 8
.LC126:
	.string	"Going to find primes up to %d\n"
	.section	.rodata.str1.1
.LC127:
	.string	"Initialized parameters."
.LC128:
	.string	"Allocated space"
.LC129:
	.string	"Set 2 as first prime"
.LC130:
	.string	"\nPrimes:"
.LC131:
	.string	"\n"
.LC132:
	.string	"Total number of primes:%d\n"
	.text
	.p2align 4,,15
	.globl	secure_find_primes_up_to_a_number
	.type	secure_find_primes_up_to_a_number, @function
secure_find_primes_up_to_a_number:
.LFB205:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%edi, %edx
	movl	$.LC126, %esi
	xorl	%eax, %eax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%edi, %r13d
	movl	$1, %edi
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	call	__printf_chk
	xorl	%ecx, %ecx
	movl	$1, %r9d
	movl	$4, %r8d
	movl	$1, %edx
	movl	$1, %esi
	movl	%r13d, (%rsp)
	movl	$1, %edi
	xorl	%eax, %eax
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$4, 40(%rsp)
	movq	$1, 32(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 8(%rsp)
	call	init_function_params_with_uninitialised_elements
	movq	%rax, %r14
	movq	%rax, %rdi
	call	put_fun_params_into_secure_stack
	movq	%r14, %rdi
	movq	%rax, %r13
	call	free_fun_params
	movl	$.LC127, %edi
	call	puts
	movq	16(%r13), %rax
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	movslq	64(%rsp), %rdi
	salq	$2, %rdi
	testq	%rdi, %rdi
	je	.L2842
	call	managed_secure_malloc
	testq	%rax, %rax
	je	.L2845
.L2832:
	movq	16(%r13), %rdx
	leaq	64(%rsp), %rdi
	movq	96(%rdx), %rsi
	xorl	%edx, %edx
	movq	%rax, 64(%rsp)
	call	set_secure_stack_data.constprop.5
	movl	$.LC128, %edi
	call	puts
	movq	16(%r13), %rax
	leaq	64(%rsp), %rdi
	movl	$3, %edx
	movq	24(%rax), %rsi
	movl	$1, 64(%rsp)
	call	set_secure_stack_data.constprop.6
	movq	16(%r13), %rax
	leaq	64(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	movq	16(%r13), %rax
	movl	64(%rsp), %r14d
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	96(%rax), %rsi
	call	get_secure_stack_data.constprop.11
	movq	64(%rsp), %rsi
	leal	-1(%r14), %edx
	leaq	64(%rsp), %rdi
	movl	$2, 64(%rsp)
	movslq	%edx, %rdx
	call	set_secure_data.constprop.19
	movl	$.LC129, %edi
	call	puts
	movq	16(%r13), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %edx
	movq	24(%rax), %rsi
	movl	$3, 64(%rsp)
	call	set_secure_stack_data.constprop.6
	.p2align 4,,10
	.p2align 3
.L2833:
	movq	16(%r13), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	movq	16(%r13), %rax
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	64(%rsp), %r14d
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	cmpl	64(%rsp), %r14d
	jg	.L2846
	movq	16(%r13), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %edx
	movq	8(%rax), %rax
	movb	$0, (%rax)
	movq	16(%r13), %rax
	movq	24(%rax), %rsi
	movl	$2, 64(%rsp)
	call	set_secure_stack_data.constprop.6
	jmp	.L2834
	.p2align 4,,10
	.p2align 3
.L2837:
	movq	16(%r13), %r10
	movq	24(%r10), %rcx
	movb	9(%rcx), %bpl
	movzbl	10(%rcx), %eax
	movzbl	18(%rcx), %r9d
	movzbl	24(%rcx), %edi
	movzbl	25(%rcx), %r8d
	movzbl	26(%rcx), %esi
	movq	%rbp, %rdx
	movb	%al, %dh
	movzbl	17(%rcx), %eax
	movq	%rdx, %rbp
	movzbl	16(%rcx), %edx
	movb	%r9b, %bl
	movzwl	%bp, %ebp
	sall	$16, %r8d
	sall	$24, %esi
	sall	$24, %eax
	sall	$16, %edx
	orl	%edx, %ebp
	orl	%eax, %ebp
	movq	%rdi, %rax
	movb	%al, %bh
	movl	%ebp, %eax
	movzwl	%bx, %ebx
	cltd
	orl	%r8d, %ebx
	orl	%esi, %ebx
	idivl	%ebx
	testl	%edx, %edx
	je	.L2847
	movb	%r9b, %r12b
	movq	%rdi, %rdx
	movq	%r12, %rax
	movb	%dl, %ah
	movzwl	%ax, %r12d
	orl	%r8d, %r12d
	orl	%esi, %r12d
	leal	1(%r12), %eax
	movl	%eax, 64(%rsp)
	movb	%al, 18(%rcx)
	movzbl	65(%rsp), %eax
	movb	%al, 24(%rcx)
	movzbl	66(%rsp), %eax
	movb	%al, 25(%rcx)
	movzbl	67(%rsp), %eax
	movb	%al, 26(%rcx)
.L2834:
	movq	16(%r13), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	movq	16(%r13), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %edx
	movl	$1, %ecx
	movl	64(%rsp), %r14d
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	movl	64(%rsp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	addl	$1, %eax
	cmpl	%r14d, %eax
	jge	.L2837
	movq	16(%r13), %rax
	movq	8(%rax), %rdx
	cmpb	$0, (%rdx)
	je	.L2848
.L2838:
	movq	24(%rax), %rsi
	leaq	64(%rsp), %rdi
	movl	$1, %ecx
	movl	$1, %edx
	call	get_secure_stack_data.constprop.10
	movq	16(%r13), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %edx
	movq	24(%rax), %rsi
	addl	$2, 64(%rsp)
	call	set_secure_stack_data.constprop.6
	jmp	.L2833
	.p2align 4,,10
	.p2align 3
.L2847:
	movq	8(%r10), %rax
	movb	$1, (%rax)
	movq	16(%r13), %rax
	movq	8(%rax), %rdx
	cmpb	$0, (%rdx)
	jne	.L2838
.L2848:
	movq	24(%rax), %rsi
	leaq	64(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	call	get_secure_stack_data.constprop.10
	movq	16(%r13), %rax
	leaq	64(%rsp), %rdi
	movl	$3, %edx
	movq	24(%rax), %rsi
	addl	$1, 64(%rsp)
	call	set_secure_stack_data.constprop.6
	movq	16(%r13), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	movq	16(%r13), %rax
	leaq	64(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movl	64(%rsp), %r15d
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	movq	16(%r13), %rax
	movl	64(%rsp), %r14d
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	96(%rax), %rsi
	call	get_secure_stack_data.constprop.11
	movq	64(%rsp), %rsi
	leal	-1(%r14), %edx
	leaq	64(%rsp), %rdi
	movl	%r15d, 64(%rsp)
	movslq	%edx, %rdx
	call	set_secure_data.constprop.19
	movq	16(%r13), %rax
	jmp	.L2838
.L2846:
	movl	$.LC130, %edi
	call	puts
	movq	16(%r13), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %edx
	movq	24(%rax), %rsi
	movl	$0, 64(%rsp)
	call	set_secure_stack_data.constprop.6
	jmp	.L2840
	.p2align 4,,10
	.p2align 3
.L2841:
	movq	16(%r13), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	movq	16(%r13), %rax
	movslq	64(%rsp), %rbx
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	96(%rax), %rsi
	call	get_secure_stack_data.constprop.11
	movq	64(%rsp), %rsi
	leaq	64(%rsp), %rdi
	movq	%rbx, %rcx
	movl	$1, %edx
	call	get_secure_data.constprop.23
	movl	64(%rsp), %edx
	movl	$.LC24, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movq	16(%r13), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %edx
	movl	$1, %ecx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	movq	16(%r13), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %edx
	movq	24(%rax), %rsi
	addl	$1, 64(%rsp)
	call	set_secure_stack_data.constprop.6
.L2840:
	movq	16(%r13), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	movq	16(%r13), %rax
	leaq	64(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movl	64(%rsp), %ebx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	cmpl	64(%rsp), %ebx
	jl	.L2841
	movl	$.LC131, %edi
	call	puts
	movq	16(%r13), %rax
	leaq	64(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	movl	64(%rsp), %edx
	movl	$.LC132, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movq	16(%r13), %rax
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	96(%rax), %rsi
	call	get_secure_stack_data.constprop.11
	movq	64(%rsp), %rdi
	call	managed_secure_free
	movq	8(%r13), %rax
	salq	$3, %rax
	subq	%rax, last_unused_stack_memory(%rip)
	movq	16(%r13), %rax
	movq	88(%rax), %rdi
	call	free
	movq	16(%r13), %rax
	movq	112(%rax), %rdi
	call	free
	movq	16(%r13), %rdi
	call	free
	movq	%r13, %rdi
	call	free
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L2842:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L2832
.L2845:
	movl	$30, %esi
	movl	$__func__.6912, %edi
	call	error_checking_managed_secure_malloc.part.3
	.cfi_endproc
.LFE205:
	.size	secure_find_primes_up_to_a_number, .-secure_find_primes_up_to_a_number
	.p2align 4,,15
	.globl	find_primes_up_to_a_number
	.type	find_primes_up_to_a_number, @function
find_primes_up_to_a_number:
.LFB206:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	%edi, %edx
	xorl	%eax, %eax
	movl	$.LC126, %esi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%edi, %ebp
	movl	$1, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	call	__printf_chk
	movslq	%ebp, %rdi
	salq	$2, %rdi
	testq	%rdi, %rdi
	je	.L2859
	call	malloc
	testq	%rax, %rax
	je	.L2870
	movq	%rax, %r12
.L2850:
	cmpl	$2, %ebp
	movl	$2, (%r12)
	movl	$1, %ebx
	jle	.L2851
	movl	$3, %esi
	.p2align 4,,10
	.p2align 3
.L2852:
	movl	%esi, %r8d
	sarl	%r8d
	addl	$1, %r8d
	testb	$1, %sil
	je	.L2853
	movl	$2, %ecx
	jmp	.L2856
	.p2align 4,,10
	.p2align 3
.L2854:
	movl	%esi, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	je	.L2853
.L2856:
	addl	$1, %ecx
	cmpl	%ecx, %r8d
	jge	.L2854
	addl	$1, %ebx
	movslq	%ebx, %rax
	movl	%esi, -4(%r12,%rax,4)
.L2853:
	addl	$2, %esi
	cmpl	%esi, %ebp
	jge	.L2852
.L2851:
	movl	$.LC130, %edi
	xorl	%ebp, %ebp
	call	puts
	.p2align 4,,10
	.p2align 3
.L2858:
	movl	(%r12,%rbp,4), %edx
	xorl	%eax, %eax
	movl	$.LC24, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	cmpl	%ebp, %ebx
	jg	.L2858
	movl	$.LC131, %edi
	call	puts
	movl	%ebx, %edx
	movl	$1, %edi
	movl	$.LC132, %esi
	xorl	%eax, %eax
	call	__printf_chk
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	movq	%r12, %rdi
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	free
.L2859:
	.cfi_restore_state
	xorl	%r12d, %r12d
	jmp	.L2850
.L2870:
	movl	$122, %esi
	movl	$__func__.6930, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE206:
	.size	find_primes_up_to_a_number, .-find_primes_up_to_a_number
	.section	.rodata.str1.1
.LC134:
	.string	"Primes with sieve:"
.LC135:
	.string	"Total: %d primes.\n"
	.text
	.p2align 4,,15
	.globl	simple_sieve_of_Eratosthenes
	.type	simple_sieve_of_Eratosthenes, @function
simple_sieve_of_Eratosthenes:
.LFB207:
	.cfi_startproc
	cvtsi2sd	%edi, %xmm0
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movl	%edi, %ebx
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jp	.L2893
.L2872:
	movl	%ebx, %edi
	addl	$1, %edi
	je	.L2888
	movslq	%edi, %rdi
	movsd	%xmm1, 8(%rsp)
	call	malloc
	testq	%rax, %rax
	movsd	8(%rsp), %xmm1
	je	.L2894
	movq	%rax, %r12
.L2874:
	cmpl	$1, %ebx
	jle	.L2878
	leal	-1(%rbx), %edx
	leaq	2(%r12), %rdi
	movl	$1, %esi
	movsd	%xmm1, 8(%rsp)
	call	memset
	movsd	8(%rsp), %xmm1
.L2878:
	addsd	.LC47(%rip), %xmm1
	leaq	4(%r12), %r9
	movl	$2, %esi
	movl	$4, %r8d
	ucomisd	.LC133(%rip), %xmm1
	jnb	.L2890
	jmp	.L2877
	.p2align 4,,10
	.p2align 3
.L2883:
	leal	1(%rsi), %edx
	addl	$2, %r8d
	addq	$2, %r9
	addq	$1, %rsi
	cvtsi2sd	%edx, %xmm0
	ucomisd	%xmm0, %xmm1
	jb	.L2877
.L2890:
	cmpb	$1, (%r12,%rsi)
	movl	%esi, %edi
	jne	.L2883
	cmpl	%r8d, %ebx
	movl	%r8d, %edx
	jl	.L2883
	movq	%r9, %rcx
	.p2align 4,,10
	.p2align 3
.L2884:
	addl	%edi, %edx
	movb	$0, (%rcx)
	addq	%rsi, %rcx
	cmpl	%edx, %ebx
	jge	.L2884
	jmp	.L2883
	.p2align 4,,10
	.p2align 3
.L2877:
	movl	$10, %edi
	addq	$2, %r12
	xorl	%r13d, %r13d
	call	putchar
	movl	$.LC134, %edi
	movl	$2, %ebp
	call	puts
	cmpl	$1, %ebx
	jg	.L2891
	jmp	.L2880
	.p2align 4,,10
	.p2align 3
.L2886:
	addl	$1, %ebp
	addq	$1, %r12
	cmpl	%ebp, %ebx
	jl	.L2880
.L2891:
	cmpb	$1, (%r12)
	jne	.L2886
	movl	%ebp, %edx
	xorl	%eax, %eax
	movl	$.LC24, %esi
	movl	$1, %edi
	addl	$1, %ebp
	addl	$1, %r13d
	call	__printf_chk
	addq	$1, %r12
	cmpl	%ebp, %ebx
	jge	.L2891
	.p2align 4,,10
	.p2align 3
.L2880:
	movl	$10, %edi
	call	putchar
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	%r13d, %edx
	movl	$.LC135, %esi
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	movl	$1, %edi
	xorl	%eax, %eax
	jmp	__printf_chk
.L2888:
	.cfi_restore_state
	xorl	%r12d, %r12d
	jmp	.L2874
.L2893:
	call	sqrt
	movapd	%xmm0, %xmm1
	jmp	.L2872
.L2894:
	movl	$174, %esi
	movl	$__func__.6948, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE207:
	.size	simple_sieve_of_Eratosthenes, .-simple_sieve_of_Eratosthenes
	.section	.rodata.str1.1
.LC136:
	.string	"Primes with secure sieve:"
	.text
	.p2align 4,,15
	.globl	secure_sieve_of_Eratosthenes
	.type	secure_sieve_of_Eratosthenes, @function
secure_sieve_of_Eratosthenes:
.LFB208:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%edi, %r8d
	xorl	%r9d, %r9d
	xorl	%esi, %esi
	movl	$2, %ecx
	movl	$4, %edx
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	$1, %edi
	xorl	%eax, %eax
	subq	$88, %rsp
	.cfi_def_cfa_offset 112
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$1, 40(%rsp)
	movq	$1, 32(%rsp)
	movq	$0, 24(%rsp)
	movq	$1, 16(%rsp)
	movq	$0, 8(%rsp)
	movq	$0, (%rsp)
	call	init_function_params_with_uninitialised_elements
	movq	%rax, %rbp
	movq	%rax, %rdi
	call	put_fun_params_into_secure_stack
	movq	%rbp, %rdi
	movq	%rax, %rbx
	call	free_fun_params
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	cvtsi2sd	64(%rsp), %xmm0
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jp	.L2971
.L2896:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	xorl	%edx, %edx
	movq	72(%rax), %rsi
	movsd	%xmm1, 64(%rsp)
	call	set_secure_stack_data.constprop.5
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	movl	64(%rsp), %eax
	leal	1(%rax), %edi
	movslq	%edi, %rdi
	testq	%rdi, %rdi
	je	.L2955
	call	managed_secure_malloc
	testq	%rax, %rax
	je	.L2972
.L2898:
	movq	16(%rbx), %rdx
	leaq	64(%rsp), %rdi
	movq	96(%rdx), %rsi
	xorl	%edx, %edx
	movq	%rax, 64(%rsp)
	call	set_secure_stack_data.constprop.5
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %edx
	movq	24(%rax), %rsi
	movl	$2, 64(%rsp)
	call	set_secure_stack_data.constprop.6
	.p2align 4,,10
	.p2align 3
.L2899:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	64(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	cmpl	64(%rsp), %ebp
	movq	16(%rbx), %rax
	movq	24(%rax), %rsi
	jg	.L2973
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	call	get_secure_stack_data.constprop.10
	movq	16(%rbx), %rax
	movslq	64(%rsp), %r8
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	96(%rax), %rsi
	xorl	%eax, %eax
	jmp	.L2904
	.p2align 4,,10
	.p2align 3
.L2975:
	movzbl	(%rsi,%rdx), %ecx
	movb	%cl, 64(%rsp,%rax)
	leaq	1(%rax), %rcx
	cmpq	$8, %rcx
	je	.L2957
	movzbl	1(%rsi,%rdx), %edi
	leaq	2(%rax), %rcx
	cmpq	$7, %rcx
	movb	%dil, 65(%rsp,%rax)
	jg	.L2958
	movzbl	2(%rsi,%rdx), %edi
	addq	$3, %rax
	movb	%dil, 64(%rsp,%rcx)
.L2901:
	addq	$3, %rdx
	cmpq	$7, %rax
	movl	$1, %ecx
	jg	.L2974
.L2904:
	testl	%ecx, %ecx
	je	.L2975
	addq	$5, %rdx
	xorl	%ecx, %ecx
	cmpq	$7, %rax
	jle	.L2904
.L2974:
	leaq	3(%r8), %rdx
	testq	%r8, %r8
	movq	64(%rsp), %rax
	cmovns	%r8, %rdx
	sarq	$2, %rdx
	leaq	0(,%rdx,4), %rcx
	cmpq	%rcx, %r8
	je	.L2976
	leaq	(%rdx,%rdx,8), %rcx
	negq	%rdx
	leaq	(%r8,%rdx,4), %rdx
	addq	%rcx, %rax
	cmpq	$3, %rdx
	jg	.L2907
	movb	$1, (%rax,%rdx)
	.p2align 4,,10
	.p2align 3
.L2908:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %edx
	movq	24(%rax), %rsi
	addl	$1, 64(%rsp)
	call	set_secure_stack_data.constprop.6
	jmp	.L2899
	.p2align 4,,10
	.p2align 3
.L2976:
	leaq	(%rdx,%rdx,8), %rdx
	addq	%rdx, %rax
.L2906:
	movb	$1, (%rax)
	jmp	.L2908
	.p2align 4,,10
	.p2align 3
.L2957:
	movl	$8, %eax
	jmp	.L2901
	.p2align 4,,10
	.p2align 3
.L2958:
	movq	%rcx, %rax
	jmp	.L2901
.L2973:
	leaq	64(%rsp), %rdi
	movl	$2, %edx
	movl	$2, 64(%rsp)
	call	set_secure_stack_data.constprop.6
	.p2align 4,,10
	.p2align 3
.L2910:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	cvtsi2sd	64(%rsp), %xmm0
	movq	16(%rbx), %r8
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	72(%r8), %rsi
	jmp	.L2941
	.p2align 4,,10
	.p2align 3
.L2978:
	movzbl	(%rsi,%rdx), %eax
	movb	%al, 64(%rsp,%rcx)
	leaq	1(%rcx), %rax
	cmpq	$8, %rax
	je	.L2965
	movzbl	1(%rsi,%rdx), %edi
	leaq	2(%rcx), %rax
	cmpq	$7, %rax
	movb	%dil, 65(%rsp,%rcx)
	jg	.L2966
	movzbl	2(%rsi,%rdx), %edi
	addq	$3, %rcx
	movb	%dil, 64(%rsp,%rax)
.L2938:
	addq	$3, %rdx
	cmpq	$7, %rcx
	movl	$1, %eax
	jg	.L2977
.L2941:
	testl	%eax, %eax
	je	.L2978
	addq	$5, %rdx
	xorl	%eax, %eax
	cmpq	$7, %rcx
	jle	.L2941
.L2977:
	movsd	.LC47(%rip), %xmm1
	addsd	64(%rsp), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.L2979
	movq	24(%r8), %rsi
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	call	get_secure_stack_data.constprop.10
	movq	16(%rbx), %r9
	movslq	64(%rsp), %r8
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	96(%r9), %rsi
	jmp	.L2915
	.p2align 4,,10
	.p2align 3
.L2981:
	movzbl	(%rsi,%rdx), %ecx
	movb	%cl, 64(%rsp,%rax)
	leaq	1(%rax), %rcx
	cmpq	$8, %rcx
	je	.L2959
	movzbl	1(%rsi,%rdx), %edi
	leaq	2(%rax), %rcx
	cmpq	$7, %rcx
	movb	%dil, 65(%rsp,%rax)
	jg	.L2960
	movzbl	2(%rsi,%rdx), %edi
	addq	$3, %rax
	movb	%dil, 64(%rsp,%rcx)
.L2912:
	addq	$3, %rdx
	cmpq	$7, %rax
	movl	$1, %ecx
	jg	.L2980
.L2915:
	testl	%ecx, %ecx
	je	.L2981
	addq	$5, %rdx
	xorl	%ecx, %ecx
	cmpq	$7, %rax
	jle	.L2915
.L2980:
	leaq	3(%r8), %rdx
	testq	%r8, %r8
	movq	64(%rsp), %rax
	cmovns	%r8, %rdx
	sarq	$2, %rdx
	leaq	0(,%rdx,4), %rcx
	cmpq	%rcx, %r8
	je	.L2982
	leaq	(%rdx,%rdx,8), %rcx
	negq	%rdx
	leaq	(%r8,%rdx,4), %rdx
	addq	%rcx, %rax
	cmpq	$3, %rdx
	jg	.L2918
	movzbl	(%rax,%rdx), %eax
	cmpb	$1, %al
	je	.L2983
	.p2align 4,,10
	.p2align 3
.L2920:
	movq	24(%r9), %rsi
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	call	get_secure_stack_data.constprop.10
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %edx
	movq	24(%rax), %rsi
	addl	$1, 64(%rsp)
	call	set_secure_stack_data.constprop.6
	jmp	.L2910
	.p2align 4,,10
	.p2align 3
.L2982:
	leaq	(%rdx,%rdx,8), %rdx
	addq	%rdx, %rax
.L2917:
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L2920
.L2983:
	movq	24(%r9), %rsi
	leaq	64(%rsp), %rdi
	movl	$1, %edx
	movl	$2, %ecx
	call	get_secure_stack_data.constprop.10
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$3, %edx
	movq	24(%rax), %rsi
	sall	64(%rsp)
	call	set_secure_stack_data.constprop.6
	.p2align 4,,10
	.p2align 3
.L2921:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	64(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	cmpl	64(%rsp), %ebp
	jg	.L2984
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	movq	16(%rbx), %rax
	movslq	64(%rsp), %r8
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	96(%rax), %rsi
	xorl	%eax, %eax
	jmp	.L2926
	.p2align 4,,10
	.p2align 3
.L2986:
	movzbl	(%rsi,%rdx), %eax
	movb	%al, 64(%rsp,%rcx)
	leaq	1(%rcx), %rax
	cmpq	$8, %rax
	je	.L2961
	movzbl	1(%rsi,%rdx), %edi
	leaq	2(%rcx), %rax
	cmpq	$7, %rax
	movb	%dil, 65(%rsp,%rcx)
	jg	.L2962
	movzbl	2(%rsi,%rdx), %edi
	addq	$3, %rcx
	movb	%dil, 64(%rsp,%rax)
.L2923:
	addq	$3, %rdx
	cmpq	$7, %rcx
	movl	$1, %eax
	jg	.L2985
.L2926:
	testl	%eax, %eax
	je	.L2986
	addq	$5, %rdx
	xorl	%eax, %eax
	cmpq	$7, %rcx
	jle	.L2926
.L2985:
	leaq	3(%r8), %rdx
	testq	%r8, %r8
	movq	64(%rsp), %rax
	cmovns	%r8, %rdx
	sarq	$2, %rdx
	leaq	0(,%rdx,4), %rcx
	cmpq	%rcx, %r8
	je	.L2987
	leaq	(%rdx,%rdx,8), %rcx
	negq	%rdx
	leaq	(%r8,%rdx,4), %rdx
	addq	%rcx, %rax
	cmpq	$3, %rdx
	jg	.L2929
	movb	$0, (%rax,%rdx)
	.p2align 4,,10
	.p2align 3
.L2930:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movl	64(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	movq	16(%rbx), %rax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	24(%rax), %rsi
	addl	%ebp, 64(%rsp)
	xorl	%eax, %eax
	addq	$32, %rsi
	jmp	.L2935
	.p2align 4,,10
	.p2align 3
.L2988:
	movzbl	64(%rsp,%rcx), %eax
	movb	%al, (%rsi,%rdx)
	leaq	1(%rcx), %rax
	cmpq	$4, %rax
	je	.L2963
	movzbl	65(%rsp,%rcx), %eax
	movb	%al, 1(%rsi,%rdx)
	leaq	2(%rcx), %rax
	cmpq	$3, %rax
	jg	.L2964
	movzbl	64(%rsp,%rax), %eax
	addq	$3, %rcx
	movb	%al, 2(%rsi,%rdx)
.L2932:
	addq	$3, %rdx
	movl	$1, %eax
.L2933:
	cmpq	$3, %rcx
	jg	.L2921
.L2935:
	testl	%eax, %eax
	je	.L2988
	addq	$5, %rdx
	xorl	%eax, %eax
	jmp	.L2933
	.p2align 4,,10
	.p2align 3
.L2965:
	movl	$8, %ecx
	jmp	.L2938
	.p2align 4,,10
	.p2align 3
.L2966:
	movq	%rax, %rcx
	jmp	.L2938
	.p2align 4,,10
	.p2align 3
.L2959:
	movl	$8, %eax
	jmp	.L2912
	.p2align 4,,10
	.p2align 3
.L2960:
	movq	%rcx, %rax
	jmp	.L2912
	.p2align 4,,10
	.p2align 3
.L2987:
	leaq	(%rdx,%rdx,8), %rdx
	addq	%rdx, %rax
.L2928:
	movb	$0, (%rax)
	jmp	.L2930
	.p2align 4,,10
	.p2align 3
.L2963:
	movl	$4, %ecx
	jmp	.L2932
	.p2align 4,,10
	.p2align 3
.L2961:
	movl	$8, %ecx
	jmp	.L2923
	.p2align 4,,10
	.p2align 3
.L2964:
	movq	%rax, %rcx
	jmp	.L2932
	.p2align 4,,10
	.p2align 3
.L2962:
	movq	%rax, %rcx
	jmp	.L2923
.L2984:
	movq	16(%rbx), %r9
	jmp	.L2920
.L2979:
	movl	$10, %edi
	call	putchar
	movl	$.LC136, %edi
	call	puts
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %edx
	movq	24(%rax), %rsi
	movl	$2, 64(%rsp)
	call	set_secure_stack_data.constprop.6
	.p2align 4,,10
	.p2align 3
.L2943:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	64(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	cmpl	64(%rsp), %ebp
	jg	.L2989
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	movq	16(%rbx), %r9
	movslq	64(%rsp), %r8
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	96(%r9), %rsi
	jmp	.L2948
	.p2align 4,,10
	.p2align 3
.L2991:
	movzbl	(%rsi,%rdx), %ecx
	movb	%cl, 64(%rsp,%rax)
	leaq	1(%rax), %rcx
	cmpq	$8, %rcx
	je	.L2967
	movzbl	1(%rsi,%rdx), %edi
	leaq	2(%rax), %rcx
	cmpq	$7, %rcx
	movb	%dil, 65(%rsp,%rax)
	jg	.L2968
	movzbl	2(%rsi,%rdx), %edi
	addq	$3, %rax
	movb	%dil, 64(%rsp,%rcx)
.L2945:
	addq	$3, %rdx
	cmpq	$7, %rax
	movl	$1, %ecx
	jg	.L2990
.L2948:
	testl	%ecx, %ecx
	je	.L2991
	addq	$5, %rdx
	xorl	%ecx, %ecx
	cmpq	$7, %rax
	jle	.L2948
.L2990:
	leaq	3(%r8), %rdx
	testq	%r8, %r8
	movq	64(%rsp), %rax
	cmovns	%r8, %rdx
	sarq	$2, %rdx
	leaq	0(,%rdx,4), %rcx
	cmpq	%rcx, %r8
	je	.L2992
	leaq	(%rdx,%rdx,8), %rcx
	negq	%rdx
	leaq	(%r8,%rdx,4), %rdx
	addq	%rcx, %rax
	cmpq	$3, %rdx
	jg	.L2951
	movzbl	(%rax,%rdx), %eax
	cmpb	$1, %al
	je	.L2993
	.p2align 4,,10
	.p2align 3
.L2953:
	movq	24(%r9), %rsi
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	call	get_secure_stack_data.constprop.10
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %edx
	movq	24(%rax), %rsi
	addl	$1, 64(%rsp)
	call	set_secure_stack_data.constprop.6
	jmp	.L2943
	.p2align 4,,10
	.p2align 3
.L2992:
	leaq	(%rdx,%rdx,8), %rdx
	addq	%rdx, %rax
.L2950:
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L2953
.L2993:
	movq	24(%r9), %rsi
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	call	get_secure_stack_data.constprop.10
	movl	64(%rsp), %edx
	movl	$.LC24, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %edx
	movq	24(%rax), %rsi
	addl	$1, 64(%rsp)
	call	set_secure_stack_data.constprop.6
	movq	16(%rbx), %r9
	jmp	.L2953
	.p2align 4,,10
	.p2align 3
.L2967:
	movl	$8, %eax
	jmp	.L2945
	.p2align 4,,10
	.p2align 3
.L2968:
	movq	%rcx, %rax
	jmp	.L2945
.L2989:
	movl	$10, %edi
	call	putchar
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.10
	movl	64(%rsp), %edx
	movl	$.LC135, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	96(%rax), %rsi
	call	get_secure_stack_data.constprop.11
	movq	64(%rsp), %rdi
	call	managed_secure_free
	movq	8(%rbx), %rax
	salq	$3, %rax
	subq	%rax, last_unused_stack_memory(%rip)
	movq	16(%rbx), %rax
	movq	88(%rax), %rdi
	call	free
	movq	16(%rbx), %rax
	movq	112(%rax), %rdi
	call	free
	movq	16(%rbx), %rdi
	call	free
	movq	%rbx, %rdi
	call	free
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L2929:
	.cfi_restore_state
	addq	$9, %rax
	jmp	.L2928
.L2918:
	addq	$9, %rax
	jmp	.L2917
.L2907:
	addq	$9, %rax
	jmp	.L2906
.L2951:
	addq	$9, %rax
	jmp	.L2950
.L2955:
	xorl	%eax, %eax
	jmp	.L2898
.L2971:
	.p2align 4,,5
	call	sqrt
	movapd	%xmm0, %xmm1
	.p2align 4,,2
	jmp	.L2896
.L2972:
	movl	$242, %esi
	movl	$__func__.6965, %edi
	call	error_checking_managed_secure_malloc.part.3
	.cfi_endproc
.LFE208:
	.size	secure_sieve_of_Eratosthenes, .-secure_sieve_of_Eratosthenes
	.section	.rodata.str1.1
.LC137:
	.string	"Initializing heap memory"
	.section	.rodata.str1.8
	.align 8
.LC138:
	.string	"bytes_to_allocate_on_start:%d\n"
	.section	.rodata.str1.1
.LC139:
	.string	"Init_mem, alloc+key insertion"
	.section	.rodata.str1.8
	.align 8
.LC140:
	.string	"If successful, total bytes allocated:%ld\n"
	.section	.rodata.str1.1
.LC141:
	.string	"Initializing stack memory"
	.section	.rodata.str1.8
	.align 8
.LC142:
	.string	"Stack bytes_to_allocate_on_start:%d\n"
	.align 8
.LC143:
	.string	"Init_stack_mem, alloc+key insertion"
	.text
	.p2align 4,,15
	.globl	init_heap_and_stack_mem
	.type	init_heap_and_stack_mem, @function
init_heap_and_stack_mem:
.LFB209:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$.LC137, %edi
	call	puts
	movl	$40480, %edx
	movl	$.LC138, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$.LC139, %edi
	call	puts
	xorl	%eax, %eax
	call	init_mem
	movq	total_bytes_allocated(%rip), %rdx
	movl	$.LC140, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$.LC141, %edi
	call	puts
	movl	$2048, %edx
	movl	$.LC142, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$.LC143, %edi
	call	puts
	xorl	%edi, %edi
	call	time
	movl	%eax, %edi
	call	srand
	movl	$.LC79, %edi
	call	puts
	movl	$2051, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L2998
	movl	$.LC11, %esi
	movl	$.LC80, %edi
	movq	$2051, total_stack_bytes_allocated(%rip)
	call	fopen
	testq	%rax, %rax
	movq	%rax, stack_keyshare_input_file(%rip)
	je	.L2999
	movq	%rbx, %rdi
	call	insert_keys_into_stack_mem
	movq	stack_keyshare_input_file(%rip), %rdi
	movq	%rbx, entire_stack_memory_chunk(%rip)
	movq	%rbx, last_unused_stack_memory(%rip)
	call	fclose
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movq	total_stack_bytes_allocated(%rip), %rdx
	movl	$.LC140, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	jmp	__printf_chk
.L2998:
	.cfi_restore_state
	movl	$143, %esi
	movl	$__func__.6324, %edi
	call	error_checking_malloc.part.0
.L2999:
	movl	$.LC81, %edi
	call	perror
	movl	$46, %edi
	call	exit
	.cfi_endproc
.LFE209:
	.size	init_heap_and_stack_mem, .-init_heap_and_stack_mem
	.section	.rodata.str1.1
.LC144:
	.string	"Installing signal handler"
	.section	.rodata.str1.8
	.align 8
.LC145:
	.string	"Could not install signal handler"
	.section	.rodata.str1.1
.LC146:
	.string	"Signal handler installed"
	.text
	.p2align 4,,15
	.globl	install_signal_handler
	.type	install_signal_handler, @function
install_signal_handler:
.LFB210:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$.LC144, %edi
	call	puts
	movl	$sa+8, %edi
	movq	$verification_procedure, sa(%rip)
	call	sigemptyset
	xorl	%edx, %edx
	movl	$sa, %esi
	movl	$10, %edi
	movl	$268435456, sa+136(%rip)
	call	sigaction
	cmpl	$-1, %eax
	je	.L3003
	movl	$.LC146, %edi
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	puts
.L3003:
	.cfi_restore_state
	movl	$.LC145, %edi
	call	perror
	movl	$45, %edi
	call	exit
	.cfi_endproc
.LFE210:
	.size	install_signal_handler, .-install_signal_handler
	.p2align 4,,15
	.globl	free_heap_and_stack_memory
	.type	free_heap_and_stack_memory, @function
free_heap_and_stack_memory:
.LFB211:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	entire_memory_chunk(%rip), %rdi
	call	free
	movq	free_chunks_list(%rip), %rdi
	movq	$0, free_chunks_num(%rip)
	movq	$0, allocated_chunks_num(%rip)
	testq	%rdi, %rdi
	je	.L3005
	movq	16(%rdi), %rbx
	jmp	.L3010
	.p2align 4,,10
	.p2align 3
.L3009:
	movq	%rax, 24(%rbx)
	movq	%rbx, 16(%rax)
.L3048:
	call	free
.L3007:
	testb	%bpl, %bpl
	jne	.L3005
.L3051:
	movq	%rbx, %rdi
	movq	16(%rbx), %rbx
.L3010:
	movq	24(%rdi), %rax
	testq	%rbx, %rbx
	sete	%bpl
	testq	%rax, %rax
	sete	%dl
	testb	%bpl, %bpl
	jne	.L3050
.L3008:
	testq	%rbx, %rbx
	je	.L3009
	testb	%dl, %dl
	je	.L3009
	movq	$0, 24(%rbx)
	call	free
	testb	%bpl, %bpl
	je	.L3051
.L3005:
	movq	allocated_chunks_list(%rip), %rdi
	testq	%rdi, %rdi
	je	.L3011
	movq	16(%rdi), %rbx
	jmp	.L3016
	.p2align 4,,10
	.p2align 3
.L3015:
	movq	%rax, 24(%rbx)
	movq	%rbx, 16(%rax)
.L3049:
	call	free
.L3013:
	testb	%bpl, %bpl
	jne	.L3011
.L3053:
	movq	%rbx, %rdi
	movq	16(%rbx), %rbx
.L3016:
	movq	24(%rdi), %rax
	testq	%rbx, %rbx
	sete	%bpl
	testq	%rax, %rax
	sete	%dl
	testb	%bpl, %bpl
	jne	.L3052
.L3014:
	testq	%rbx, %rbx
	je	.L3015
	testb	%dl, %dl
	je	.L3015
	movq	$0, 24(%rbx)
	call	free
	testb	%bpl, %bpl
	je	.L3053
.L3011:
	movq	entire_stack_memory_chunk(%rip), %rdi
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free
	.p2align 4,,10
	.p2align 3
.L3050:
	.cfi_restore_state
	testb	%dl, %dl
	jne	.L3048
	testq	%rax, %rax
	je	.L3008
	movq	$0, 16(%rax)
	call	free
	jmp	.L3007
	.p2align 4,,10
	.p2align 3
.L3052:
	testb	%dl, %dl
	jne	.L3049
	testq	%rax, %rax
	.p2align 4,,6
	je	.L3014
	movq	$0, 16(%rax)
	call	free
	jmp	.L3013
	.cfi_endproc
.LFE211:
	.size	free_heap_and_stack_memory, .-free_heap_and_stack_memory
	.section	.rodata.str1.1
.LC147:
	.string	"My pid=%ld\n"
.LC148:
	.string	"K=%d\n"
.LC149:
	.string	"n=%d\n"
.LC150:
	.string	"main is at %p\n"
	.section	.rodata.str1.8
	.align 8
.LC151:
	.string	"Calculating time for primes with sieve of Eratosthenes. Normal sieve:"
	.align 8
.LC153:
	.string	"Normal sieve time:%lg cpu seconds\n"
	.section	.rodata.str1.1
.LC154:
	.string	"Secure sieve:"
	.section	.rodata.str1.8
	.align 8
.LC155:
	.string	"Secure sieve time:%lg cpu seconds\n"
	.section	.rodata.str1.1
.LC156:
	.string	"Ratio: %lg times slowdown\n"
.LC157:
	.string	"Going to find keyshares."
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB213:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xorl	%eax, %eax
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movl	$1, static_main_variable_for_testing.6997(%rip)
	movl	$2, static_global_variable_for_testing(%rip)
	call	init_heap_and_stack_mem
	xorl	%eax, %eax
	call	install_signal_handler
	call	getpid
	movl	$.LC147, %esi
	movslq	%eax, %rdx
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$6, %edx
	movl	$.LC148, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$10, %edx
	movl	$.LC149, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$main, %edx
	movl	$.LC150, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$10, %edi
	call	putchar
	movl	$.LC151, %edi
	call	puts
	call	clock
	movl	$10000, %edi
	movq	%rax, %rbx
	call	simple_sieve_of_Eratosthenes
	call	clock
	subq	%rbx, %rax
	movl	$10, %edi
	cvtsi2sdq	%rax, %xmm2
	divsd	.LC152(%rip), %xmm2
	movsd	%xmm2, (%rsp)
	call	putchar
	movsd	(%rsp), %xmm0
	movl	$.LC153, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	movl	$.LC154, %edi
	call	puts
	call	clock
	movl	$10000, %edi
	movq	%rax, %rbx
	call	secure_sieve_of_Eratosthenes
	call	clock
	subq	%rbx, %rax
	movl	$10, %edi
	cvtsi2sdq	%rax, %xmm1
	divsd	.LC152(%rip), %xmm1
	movsd	%xmm1, 8(%rsp)
	call	putchar
	movsd	(%rsp), %xmm0
	movl	$.LC153, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	movsd	8(%rsp), %xmm1
	movl	$.LC155, %esi
	movl	$1, %edi
	movl	$1, %eax
	movapd	%xmm1, %xmm0
	call	__printf_chk
	movl	$10, %edi
	call	putchar
	movsd	8(%rsp), %xmm1
	movl	$.LC156, %esi
	movl	$1, %edi
	movl	$1, %eax
	movapd	%xmm1, %xmm0
	divsd	(%rsp), %xmm0
	call	__printf_chk
	movl	$10, %edi
	call	putchar
	movl	$.LC157, %edi
	call	puts
	xorl	%eax, %eax
	call	find_keyshares
	xorl	%eax, %eax
	call	free_heap_and_stack_memory
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE213:
	.size	main, .-main
	.text
	.p2align 4,,15
	.globl	foo
	.type	foo, @function
foo:
.LFB212:
	.cfi_startproc
	leal	2(%rdi), %eax
	ret
	.cfi_endproc
.LFE212:
	.size	foo, .-foo
	.p2align 4,,15
	.globl	foo2
	.type	foo2, @function
foo2:
.LFB214:
	.cfi_startproc
	leal	3(%rdi), %eax
	ret
	.cfi_endproc
.LFE214:
	.size	foo2, .-foo2
	.local	static_main_variable_for_testing.6997
	.comm	static_main_variable_for_testing.6997,4,16
	.section	.rodata
	.align 16
	.type	__func__.6965, @object
	.size	__func__.6965, 29
__func__.6965:
	.string	"secure_sieve_of_Eratosthenes"
	.align 16
	.type	__func__.6948, @object
	.size	__func__.6948, 29
__func__.6948:
	.string	"simple_sieve_of_Eratosthenes"
	.align 16
	.type	__func__.6930, @object
	.size	__func__.6930, 27
__func__.6930:
	.string	"find_primes_up_to_a_number"
	.align 32
	.type	__func__.6912, @object
	.size	__func__.6912, 34
__func__.6912:
	.string	"secure_find_primes_up_to_a_number"
	.align 16
	.type	__func__.6792, @object
	.size	__func__.6792, 22
__func__.6792:
	.string	"stack_fun_params_test"
	.align 32
	.type	__func__.6786, @object
	.size	__func__.6786, 36
__func__.6786:
	.string	"tower_of_Hanoi_init_secure_template"
	.align 32
	.type	__func__.6529, @object
	.size	__func__.6529, 33
__func__.6529:
	.string	"put_fun_params_into_secure_stack"
	.align 32
	.type	__func__.6486, @object
	.size	__func__.6486, 49
__func__.6486:
	.string	"init_function_params_with_uninitialised_elements"
	.align 16
	.type	__func__.6448, @object
	.size	__func__.6448, 21
__func__.6448:
	.string	"init_function_params"
	.align 16
	.type	__func__.6324, @object
	.size	__func__.6324, 19
__func__.6324:
	.string	"allocate_stack_mem"
	.align 32
	.type	__func__.6267, @object
	.size	__func__.6267, 34
__func__.6267:
	.string	"multiple_secure_mallocs_and_frees"
	.align 32
	.type	__func__.6252, @object
	.size	__func__.6252, 34
__func__.6252:
	.string	"multiple_simple_mallocs_and_frees"
	.align 32
	.type	__func__.6237, @object
	.size	__func__.6237, 32
__func__.6237:
	.string	"adding_heap_arrays_time_measure"
	.type	__func__.6169, @object
	.size	__func__.6169, 9
__func__.6169:
	.string	"mem_test"
	.align 16
	.type	__func__.6118, @object
	.size	__func__.6118, 20
__func__.6118:
	.string	"managed_secure_free"
	.align 16
	.type	__func__.6102, @object
	.size	__func__.6102, 16
__func__.6102:
	.string	"check_and_merge"
	.type	__func__.5823, @object
	.size	__func__.5823, 13
__func__.5823:
	.string	"allocate_mem"
	.align 16
	.type	__func__.5779, @object
	.size	__func__.5779, 17
__func__.5779:
	.string	"add_node_to_list"
	.type	__func__.5770, @object
	.size	__func__.5770, 11
__func__.5770:
	.string	"alloc_list"
	.local	static_global_variable_for_testing
	.comm	static_global_variable_for_testing,4,16
	.comm	sa,152,32
	.comm	stack_keyshare_input_file,8,8
	.comm	last_unused_stack_memory,8,8
	.comm	entire_stack_memory_chunk,8,8
	.comm	total_stack_bytes_allocated,8,8
	.comm	allocated_chunks_num,8,8
	.comm	allocated_chunks_list,8,8
	.comm	free_chunks_num,8,8
	.comm	free_chunks_list,8,8
	.comm	keyshare_input_file,8,8
	.comm	last_unused_memory,8,8
	.comm	entire_memory_chunk,8,8
	.comm	total_bytes_allocated,8,8
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC19:
	.quad	4
	.quad	4
	.align 16
.LC20:
	.quad	2
	.quad	2
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC41:
	.long	3910138226
	.long	1086244439
	.align 8
.LC45:
	.long	2413153145
	.long	1078277709
	.align 8
.LC46:
	.long	3757306110
	.long	1078005635
	.align 8
.LC47:
	.long	0
	.long	1072693248
	.align 8
.LC68:
	.long	0
	.long	1071644672
	.align 8
.LC75:
	.long	0
	.long	1070596096
	.align 8
.LC109:
	.long	0
	.long	1079574528
	.section	.rodata.cst16
	.align 16
.LC110:
	.long	100
	.long	100
	.long	100
	.long	100
	.align 16
.LC111:
	.long	4
	.long	4
	.long	4
	.long	4
	.section	.rodata.cst8
	.align 8
.LC113:
	.long	343597384
	.long	1078740910
	.align 8
.LC114:
	.long	2405181686
	.long	1078277570
	.align 8
.LC133:
	.long	0
	.long	1073741824
	.align 8
.LC152:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
