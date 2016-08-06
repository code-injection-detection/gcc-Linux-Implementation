	.file	"Helloworldadd.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"malloc failed in function %s, line %d\n"
	.section	.text.unlikely,"ax",@progbits
	.type	error_checking_malloc.part.0, @function
error_checking_malloc.part.0:
.LFB220:
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
.LFE220:
	.size	error_checking_malloc.part.0, .-error_checking_malloc.part.0
	.section	.rodata.str1.8
	.align 8
.LC1:
	.string	"Managed secure malloc error in function %s, line %d\n"
	.section	.text.unlikely
	.type	error_checking_managed_secure_malloc.part.3, @function
error_checking_managed_secure_malloc.part.3:
.LFB223:
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
.LFE223:
	.size	error_checking_managed_secure_malloc.part.3, .-error_checking_managed_secure_malloc.part.3
	.text
	.p2align 4,,15
	.type	set_secure_stack_data.constprop.4, @function
set_secure_stack_data.constprop.4:
.LFB249:
	.cfi_startproc
	leaq	(%rdx,%rdx,8), %rax
	movl	(%rdi), %edx
	movl	%edx, (%rsi,%rax)
	ret
	.cfi_endproc
.LFE249:
	.size	set_secure_stack_data.constprop.4, .-set_secure_stack_data.constprop.4
	.p2align 4,,15
	.type	set_secure_stack_data.constprop.6, @function
set_secure_stack_data.constprop.6:
.LFB247:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	imulq	%rsi, %rcx
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp
	leaq	3(%rcx), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	testq	%rcx, %rcx
	cmovns	%rcx, %rax
	sarq	$2, %rax
	leaq	0(,%rax,4), %rsi
	cmpq	%rsi, %rcx
	je	.L16
	leaq	(%rax,%rax,8), %r13
	negq	%rax
	movl	$4, %ebx
	leaq	(%rcx,%rax,4), %rdi
	movq	%rbp, %rsi
	addq	%rdx, %r13
	subq	%rdi, %rbx
	cmpq	%r12, %rbx
	cmovg	%r12, %rbx
	addq	%r13, %rdi
	movq	%rbx, %rdx
	call	memcpy
	leaq	9(%r13), %rdi
.L8:
	cmpq	%rbx, %r12
	jle	.L6
	leaq	-1(%r12), %rsi
	movq	%r12, %rdx
	xorl	%eax, %eax
	subq	%rbx, %rdx
	subq	%rbx, %rsi
	shrq	$2, %rsi
	leaq	9(%rsi,%rsi,8), %rsi
	.p2align 4,,10
	.p2align 3
.L13:
	cmpq	$4, %rdx
	jg	.L11
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	leaq	0(%rbp,%rbx), %rsi
	addq	%rax, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	memcpy
	.p2align 4,,10
	.p2align 3
.L11:
	.cfi_restore_state
	movl	0(%rbp,%rbx), %ecx
	subq	$4, %rdx
	addq	$4, %rbx
	movl	%ecx, (%rdi,%rax)
	addq	$9, %rax
	cmpq	%rsi, %rax
	jne	.L13
.L6:
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
.L16:
	.cfi_restore_state
	leaq	(%rax,%rax,8), %rdi
	xorl	%ebx, %ebx
	addq	%rdx, %rdi
	jmp	.L8
	.cfi_endproc
.LFE247:
	.size	set_secure_stack_data.constprop.6, .-set_secure_stack_data.constprop.6
	.p2align 4,,15
	.type	get_secure_stack_data.constprop.7, @function
get_secure_stack_data.constprop.7:
.LFB246:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %r8
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	testl	%edx, %edx
	je	.L18
	leaq	3(%rcx), %rax
	testq	%rcx, %rcx
	cmovns	%rcx, %rax
	sarq	$2, %rax
	leaq	0(,%rax,4), %rdx
	cmpq	%rdx, %rcx
	je	.L30
	leaq	(%rax,%rax,8), %rbp
	negq	%rax
	movl	$4, %ebx
	leaq	(%rcx,%rax,4), %rax
	addq	%rsi, %rbp
	subq	%rax, %rbx
	testq	%rbx, %rbx
	jle	.L31
	movzbl	0(%rbp,%rax), %eax
	movb	%al, (%rdi)
.L17:
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
.L30:
	.cfi_restore_state
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rsi
.L18:
	xorl	%ebx, %ebx
.L21:
	movl	$1, %edx
	xorl	%eax, %eax
	subq	%rbx, %rdx
.L25:
	cmpq	$4, %rdx
	jg	.L23
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	leaq	(%r8,%rbx), %rdi
	addq	%rax, %rsi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	memcpy
	.p2align 4,,10
	.p2align 3
.L23:
	.cfi_restore_state
	movl	(%rsi,%rax), %ecx
	subq	$4, %rdx
	addq	$9, %rax
	movl	%ecx, (%r8,%rbx)
	addq	$4, %rbx
	testq	%rbx, %rbx
	jle	.L25
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L31:
	leaq	0(%rbp,%rax), %rsi
	movq	%rbx, %rdx
	call	memcpy
	leaq	9(%rbp), %rsi
	movq	%rax, %r8
	jmp	.L21
	.cfi_endproc
.LFE246:
	.size	get_secure_stack_data.constprop.7, .-get_secure_stack_data.constprop.7
	.p2align 4,,15
	.type	get_secure_stack_data.constprop.8, @function
get_secure_stack_data.constprop.8:
.LFB245:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %r8
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	cmpl	$2, %edx
	je	.L42
	testl	%edx, %edx
	movl	$8, %eax
	jne	.L33
.L34:
	xorl	%ebx, %ebx
.L37:
	movl	$8, %edx
	xorl	%eax, %eax
	subq	%rbx, %rdx
.L41:
	cmpq	$4, %rdx
	jg	.L39
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	leaq	(%r8,%rbx), %rdi
	addq	%rax, %rsi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	memcpy
	.p2align 4,,10
	.p2align 3
.L42:
	.cfi_restore_state
	movl	$1, %eax
.L33:
	imulq	%rax, %rcx
	leaq	3(%rcx), %rax
	testq	%rcx, %rcx
	cmovns	%rcx, %rax
	sarq	$2, %rax
	leaq	0(,%rax,4), %rdx
	cmpq	%rdx, %rcx
	je	.L47
	leaq	(%rax,%rax,8), %rbp
	negq	%rax
	movl	$4, %ebx
	leaq	(%rcx,%rax,4), %rax
	addq	%rsi, %rbp
	subq	%rax, %rbx
	cmpq	$7, %rbx
	jle	.L48
	movq	0(%rbp,%rax), %rax
	movq	%rax, (%r8)
.L32:
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
.L39:
	.cfi_restore_state
	movl	(%rsi,%rax), %ecx
	subq	$4, %rdx
	addq	$9, %rax
	movl	%ecx, (%r8,%rbx)
	addq	$4, %rbx
	cmpq	$7, %rbx
	jle	.L41
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L48:
	leaq	0(%rbp,%rax), %rsi
	movq	%r8, %rdi
	movq	%rbx, %rdx
	call	memcpy
	leaq	9(%rbp), %rsi
	movq	%rax, %r8
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L47:
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rsi
	jmp	.L34
	.cfi_endproc
.LFE245:
	.size	get_secure_stack_data.constprop.8, .-get_secure_stack_data.constprop.8
	.p2align 4,,15
	.type	get_secure_stack_data.constprop.9, @function
get_secure_stack_data.constprop.9:
.LFB244:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %r8
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	cmpl	$2, %edx
	je	.L59
	testl	%edx, %edx
	movl	$4, %eax
	jne	.L50
.L51:
	xorl	%ebx, %ebx
.L54:
	movl	$4, %edx
	xorl	%eax, %eax
	subq	%rbx, %rdx
.L58:
	cmpq	$4, %rdx
	jg	.L56
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	leaq	(%r8,%rbx), %rdi
	addq	%rax, %rsi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	memcpy
	.p2align 4,,10
	.p2align 3
.L59:
	.cfi_restore_state
	movl	$1, %eax
.L50:
	imulq	%rax, %rcx
	leaq	3(%rcx), %rax
	testq	%rcx, %rcx
	cmovns	%rcx, %rax
	sarq	$2, %rax
	leaq	0(,%rax,4), %rdx
	cmpq	%rdx, %rcx
	je	.L64
	leaq	(%rax,%rax,8), %rbp
	negq	%rax
	movl	$4, %ebx
	leaq	(%rcx,%rax,4), %rax
	addq	%rsi, %rbp
	subq	%rax, %rbx
	cmpq	$3, %rbx
	jle	.L65
	movl	0(%rbp,%rax), %eax
	movl	%eax, (%r8)
.L49:
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
.L56:
	.cfi_restore_state
	movl	(%rsi,%rax), %ecx
	subq	$4, %rdx
	addq	$9, %rax
	movl	%ecx, (%r8,%rbx)
	addq	$4, %rbx
	cmpq	$3, %rbx
	jle	.L58
	jmp	.L49
	.p2align 4,,10
	.p2align 3
.L65:
	leaq	0(%rbp,%rax), %rsi
	movq	%r8, %rdi
	movq	%rbx, %rdx
	call	memcpy
	leaq	9(%rbp), %rsi
	movq	%rax, %r8
	jmp	.L54
	.p2align 4,,10
	.p2align 3
.L64:
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rsi
	jmp	.L51
	.cfi_endproc
.LFE244:
	.size	get_secure_stack_data.constprop.9, .-get_secure_stack_data.constprop.9
	.p2align 4,,15
	.type	set_secure_data.constprop.16, @function
set_secure_data.constprop.16:
.LFB237:
	.cfi_startproc
	salq	$3, %rdx
	leaq	3(%rdx), %rax
	testq	%rdx, %rdx
	cmovns	%rdx, %rax
	sarq	$2, %rax
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rsi
	movzbl	(%rdi), %eax
	movb	%al, (%rsi)
	movzbl	1(%rdi), %eax
	movb	%al, 1(%rsi)
	movzbl	2(%rdi), %eax
	movb	%al, 2(%rsi)
	movzbl	3(%rdi), %eax
	movb	%al, 3(%rsi)
	movzbl	4(%rdi), %eax
	movb	%al, 9(%rsi)
	movzbl	5(%rdi), %eax
	movb	%al, 10(%rsi)
	movzbl	6(%rdi), %eax
	movb	%al, 11(%rsi)
	movzbl	7(%rdi), %eax
	movb	%al, 12(%rsi)
	ret
	.cfi_endproc
.LFE237:
	.size	set_secure_data.constprop.16, .-set_secure_data.constprop.16
	.p2align 4,,15
	.type	set_secure_data.constprop.17, @function
set_secure_data.constprop.17:
.LFB236:
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
.LFE236:
	.size	set_secure_data.constprop.17, .-set_secure_data.constprop.17
	.p2align 4,,15
	.type	get_secure_data.constprop.20, @function
get_secure_data.constprop.20:
.LFB233:
	.cfi_startproc
	cmpl	$2, %edx
	je	.L79
	testl	%edx, %edx
	jne	.L93
.L70:
	xorl	%eax, %eax
.L75:
	addq	%rax, %rdi
	jmp	.L78
	.p2align 4,,10
	.p2align 3
.L95:
	movzbl	1(%rsi), %edx
	movb	%dl, 1(%rdi)
	leaq	2(%rax), %rdx
	cmpq	$7, %rdx
	jg	.L68
	movzbl	2(%rsi), %edx
	movb	%dl, 2(%rdi)
	leaq	3(%rax), %rdx
	cmpq	$7, %rdx
	jg	.L68
	movzbl	3(%rsi), %edx
	addq	$4, %rax
	addq	$9, %rsi
	addq	$4, %rdi
	movb	%dl, -1(%rdi)
	cmpq	$7, %rax
	jg	.L94
.L78:
	movzbl	(%rsi), %edx
	cmpq	$7, %rax
	movb	%dl, (%rdi)
	jne	.L95
.L68:
	rep ret
	.p2align 4,,10
	.p2align 3
.L93:
	movl	$8, %edx
.L69:
	imulq	%rcx, %rdx
	leaq	3(%rdx), %rax
	testq	%rdx, %rdx
	cmovns	%rdx, %rax
	sarq	$2, %rax
	leaq	0(,%rax,4), %rcx
	cmpq	%rcx, %rdx
	je	.L96
	leaq	(%rax,%rax,8), %rcx
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rsi
	cmpq	$3, %rax
	jg	.L72
	movzbl	(%rsi,%rax), %edx
	cmpq	$3, %rax
	movb	%dl, (%rdi)
	je	.L80
	movzbl	1(%rsi,%rax), %edx
	movb	%dl, 1(%rdi)
	leaq	2(%rax), %rdx
	cmpq	$3, %rdx
	jg	.L81
	movzbl	2(%rsi,%rax), %edx
	movb	%dl, 2(%rdi)
	leaq	3(%rax), %rdx
	cmpq	$3, %rdx
	jg	.L82
	movzbl	3(%rsi,%rax), %edx
	movb	%dl, 3(%rdi)
	leaq	4(%rax), %rdx
	cmpq	$3, %rdx
	jg	.L83
	movzbl	4(%rsi,%rax), %edx
	movb	%dl, 4(%rdi)
	leaq	5(%rax), %rdx
	cmpq	$3, %rdx
	jg	.L84
	movzbl	5(%rsi,%rax), %edx
	movb	%dl, 5(%rdi)
	leaq	6(%rax), %rdx
	cmpq	$3, %rdx
	jg	.L85
	movzbl	6(%rsi,%rax), %edx
	movb	%dl, 6(%rdi)
	leaq	7(%rax), %rdx
	cmpq	$3, %rdx
	jg	.L86
	movzbl	7(%rsi,%rax), %edx
	cmpq	$-4, %rax
	movb	%dl, 7(%rdi)
	jl	.L68
	movl	$8, %eax
	.p2align 4,,10
	.p2align 3
.L73:
	addq	$9, %rsi
	cmpq	$8, %rax
	jne	.L75
	rep ret
	.p2align 4,,10
	.p2align 3
.L79:
	movl	$1, %edx
	jmp	.L69
	.p2align 4,,10
	.p2align 3
.L96:
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rsi
	jmp	.L70
.L72:
	addq	$9, %rsi
	xorl	%eax, %eax
	jmp	.L75
.L80:
	movl	$1, %eax
	jmp	.L73
.L85:
	movl	$6, %eax
	jmp	.L73
.L86:
	movl	$7, %eax
	jmp	.L73
.L81:
	movl	$2, %eax
	jmp	.L73
.L82:
	movl	$3, %eax
	jmp	.L73
.L83:
	movl	$4, %eax
	jmp	.L73
.L84:
	movl	$5, %eax
	jmp	.L73
.L94:
	.p2align 4,,1
	ret
	.cfi_endproc
.LFE233:
	.size	get_secure_data.constprop.20, .-get_secure_data.constprop.20
	.p2align 4,,15
	.type	get_secure_data.constprop.21, @function
get_secure_data.constprop.21:
.LFB232:
	.cfi_startproc
	cmpl	$2, %edx
	je	.L109
	testl	%edx, %edx
	jne	.L120
.L99:
	xorl	%eax, %eax
.L104:
	movzbl	(%rsi), %edx
	cmpq	$3, %rax
	movb	%dl, (%rdi,%rax)
	je	.L121
	movzbl	1(%rsi), %edx
	movb	%dl, 1(%rdi,%rax)
	leaq	2(%rax), %rdx
	cmpq	$3, %rdx
	jg	.L97
	movzbl	2(%rsi), %edx
	testq	%rax, %rax
	movb	%dl, 2(%rdi,%rax)
	jne	.L97
	movzbl	3(%rsi), %eax
	movb	%al, 3(%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L120:
	movl	$4, %edx
.L98:
	imulq	%rcx, %rdx
	leaq	3(%rdx), %rax
	testq	%rdx, %rdx
	cmovns	%rdx, %rax
	sarq	$2, %rax
	leaq	0(,%rax,4), %rcx
	cmpq	%rcx, %rdx
	je	.L122
	leaq	(%rax,%rax,8), %rcx
	negq	%rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rcx, %rsi
	cmpq	$3, %rax
	jg	.L101
	movzbl	(%rsi,%rax), %edx
	cmpq	$3, %rax
	movb	%dl, (%rdi)
	je	.L110
	movzbl	1(%rsi,%rax), %edx
	movb	%dl, 1(%rdi)
	leaq	2(%rax), %rdx
	cmpq	$3, %rdx
	jg	.L111
	movzbl	2(%rsi,%rax), %edx
	movb	%dl, 2(%rdi)
	leaq	3(%rax), %rdx
	cmpq	$3, %rdx
	jg	.L112
	movzbl	3(%rsi,%rax), %edx
	testq	%rax, %rax
	movb	%dl, 3(%rdi)
	jns	.L123
.L97:
	rep ret
	.p2align 4,,10
	.p2align 3
.L109:
	movl	$1, %edx
	jmp	.L98
	.p2align 4,,10
	.p2align 3
.L122:
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rsi
	jmp	.L99
.L123:
	movl	$4, %eax
.L102:
	addq	$9, %rsi
	cmpq	$4, %rax
	jne	.L104
	rep ret
	.p2align 4,,10
	.p2align 3
.L121:
	rep ret
.L110:
	movl	$1, %eax
	.p2align 4,,6
	jmp	.L102
.L101:
	addq	$9, %rsi
	xorl	%eax, %eax
	jmp	.L104
.L111:
	movl	$2, %eax
	jmp	.L102
.L112:
	movl	$3, %eax
	jmp	.L102
	.cfi_endproc
.LFE232:
	.size	get_secure_data.constprop.21, .-get_secure_data.constprop.21
	.p2align 4,,15
	.type	insert_data_into_mem.constprop.24, @function
insert_data_into_mem.constprop.24:
.LFB229:
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
.LFE229:
	.size	insert_data_into_mem.constprop.24, .-insert_data_into_mem.constprop.24
	.p2align 4,,15
	.globl	error_checking_malloc
	.type	error_checking_malloc, @function
error_checking_malloc:
.LFB78:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L127
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
	je	.L131
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
.L127:
	xorl	%eax, %eax
	ret
.L131:
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
	jle	.L140
	movl	$1, %ebx
	xorl	%ebp, %ebp
	xorl	%r13d, %r13d
	jmp	.L139
	.p2align 4,,10
	.p2align 3
.L145:
	movq	%rax, %rbp
.L139:
	movl	$32, %edi
	call	malloc
	testq	%rax, %rax
	je	.L144
	cmpq	$1, %rbx
	je	.L141
	movq	%rax, 16(%rbp)
	movq	%rbp, 24(%rax)
.L137:
	addq	$1, %rbx
	cmpq	%rbx, %r12
	jge	.L145
	movq	$0, 16(%rax)
	movq	$0, 24(%r13)
.L142:
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
.L140:
	.cfi_restore_state
	xorl	%r13d, %r13d
	jmp	.L142
.L144:
	movl	$67, %esi
	movl	$__func__.5770, %edi
	call	error_checking_malloc.part.0
.L141:
	movq	%rax, %r13
	jmp	.L137
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
	je	.L151
	movq	16(%rsp), %rdx
	testq	%rbx, %rbx
	movq	%rdx, (%rax)
	movq	24(%rsp), %rdx
	movq	%rdx, 8(%rax)
	movq	32(%rsp), %rdx
	movq	%rdx, 16(%rax)
	movq	40(%rsp), %rdx
	movq	%rdx, 24(%rax)
	je	.L152
	movq	%rbx, 16(%rax)
	movq	%rax, 24(%rbx)
	movq	$0, 24(%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L152:
	.cfi_restore_state
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L151:
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
	je	.L177
.L154:
	testq	%rdx, %rdx
	jne	.L178
.L156:
	testq	%rbx, %rbx
	jne	.L179
.L157:
	movq	%rdx, 24(%rbx)
	movq	%rsi, %rdi
	movq	%rbx, 16(%rdx)
	call	free
	movq	%rbp, %rax
.L155:
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
.L179:
	.cfi_restore_state
	testb	%al, %al
	je	.L157
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
.L178:
	.cfi_restore_state
	testb	%cl, %cl
	je	.L156
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
.L177:
	.cfi_restore_state
	testb	%cl, %cl
	je	.L154
	movq	%rsi, %rdi
	call	free
	xorl	%eax, %eax
	jmp	.L155
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
	je	.L204
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	16(%rdi), %rbx
	jmp	.L186
	.p2align 4,,10
	.p2align 3
.L185:
	movq	%rax, 24(%rbx)
	movq	%rbx, 16(%rax)
.L205:
	call	free
.L183:
	testb	%bpl, %bpl
	jne	.L180
.L207:
	movq	%rbx, %rdi
	movq	16(%rbx), %rbx
.L186:
	movq	24(%rdi), %rax
	testq	%rbx, %rbx
	sete	%bpl
	testq	%rax, %rax
	sete	%dl
	testb	%bpl, %bpl
	jne	.L206
.L184:
	testq	%rbx, %rbx
	je	.L185
	testb	%dl, %dl
	je	.L185
	movq	$0, 24(%rbx)
	call	free
	testb	%bpl, %bpl
	je	.L207
.L180:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
.L204:
	rep ret
	.p2align 4,,10
	.p2align 3
.L206:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	testb	%dl, %dl
	jne	.L205
	testq	%rax, %rax
	je	.L184
	movq	$0, 16(%rax)
	call	free
	jmp	.L183
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
	je	.L214
	.p2align 4,,10
	.p2align 3
.L212:
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
	jne	.L212
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L214:
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
	je	.L228
	.p2align 4,,10
	.p2align 3
.L224:
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
	jne	.L224
.L217:
	movl	$.LC5, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L229
	.p2align 4,,10
	.p2align 3
.L225:
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
	jne	.L225
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L228:
	.cfi_restore_state
	movl	$.LC2, %edi
	call	puts
	jmp	.L217
.L229:
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
	je	.L234
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
.L234:
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
	je	.L236
	movq	16(%rdi), %rbx
	jmp	.L241
	.p2align 4,,10
	.p2align 3
.L240:
	movq	%rax, 24(%rbx)
	movq	%rbx, 16(%rax)
.L279:
	call	free
.L238:
	testb	%bpl, %bpl
	jne	.L236
.L282:
	movq	%rbx, %rdi
	movq	16(%rbx), %rbx
.L241:
	movq	24(%rdi), %rax
	testq	%rbx, %rbx
	sete	%bpl
	testq	%rax, %rax
	sete	%dl
	testb	%bpl, %bpl
	jne	.L281
.L239:
	testq	%rbx, %rbx
	je	.L240
	testb	%dl, %dl
	je	.L240
	movq	$0, 24(%rbx)
	call	free
	testb	%bpl, %bpl
	je	.L282
.L236:
	movq	allocated_chunks_list(%rip), %rdi
	testq	%rdi, %rdi
	je	.L235
	movq	16(%rdi), %rbx
	jmp	.L247
	.p2align 4,,10
	.p2align 3
.L246:
	movq	%rax, 24(%rbx)
	movq	%rbx, 16(%rax)
.L280:
	call	free
.L244:
	testb	%bpl, %bpl
	jne	.L235
.L284:
	movq	%rbx, %rdi
	movq	16(%rbx), %rbx
.L247:
	movq	24(%rdi), %rax
	testq	%rbx, %rbx
	sete	%bpl
	testq	%rax, %rax
	sete	%dl
	testb	%bpl, %bpl
	jne	.L283
.L245:
	testq	%rbx, %rbx
	je	.L246
	testb	%dl, %dl
	je	.L246
	movq	$0, 24(%rbx)
	call	free
	testb	%bpl, %bpl
	je	.L284
.L235:
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
.L281:
	.cfi_restore_state
	testb	%dl, %dl
	jne	.L279
	testq	%rax, %rax
	je	.L239
	movq	$0, 16(%rax)
	call	free
	jmp	.L238
	.p2align 4,,10
	.p2align 3
.L283:
	testb	%dl, %dl
	jne	.L280
	testq	%rax, %rax
	.p2align 4,,6
	je	.L245
	movq	$0, 16(%rax)
	call	free
	jmp	.L244
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
	movl	$3001, %edi
	call	malloc
	testq	%rax, %rax
	je	.L288
	movq	$3001, total_bytes_allocated(%rip)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L288:
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
	jl	.L295
	leaq	3(%rdi), %rdx
	testq	%rdi, %rdi
	cmovns	%rdi, %rdx
	sarq	$2, %rdx
	leaq	0(,%rdx,4), %rcx
	cmpq	%rdi, %rcx
	je	.L292
	addq	$1, %rdx
	addq	$4, %rcx
.L292:
	leaq	-5(%rdx,%rdx,4), %rax
	leaq	5(%rcx,%rax), %rax
	addq	%rsi, %rax
	movq	%rax, last_unused_memory(%rip)
	movq	%rsi, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L295:
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
	jne	.L300
	movq	keyshare_input_file(%rip), %rcx
	movl	$1, %edx
	movl	$1, %esi
	movq	%rsp, %rdi
	call	fread
	cmpq	$1, %rax
	jne	.L301
	movzbl	(%rsp), %eax
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L300:
	.cfi_restore_state
	movl	$.LC7, %edi
	call	perror
	movl	$44, %edi
	call	exit
.L301:
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
.L303:
	cmpq	total_bytes_allocated(%rip), %rbx
	jge	.L312
.L309:
	testl	%eax, %eax
	jne	.L304
	movb	$0, 0(%rbp,%rbx)
	movb	$0, 1(%rbp,%rbx)
	movb	$0, 2(%rbp,%rbx)
	movb	$0, 3(%rbp,%rbx)
	addq	$4, %rbx
.L305:
	cmpq	$5, %r12
	movl	$1, %eax
	jne	.L303
	xorl	%eax, %eax
	xorl	%r12d, %r12d
	cmpq	total_bytes_allocated(%rip), %rbx
	jl	.L309
.L312:
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
.L304:
	.cfi_restore_state
	movq	keyshare_input_file(%rip), %rdi
	leaq	0(%rbp,%rbx), %r13
	call	feof
	testl	%eax, %eax
	jne	.L313
	movq	keyshare_input_file(%rip), %rcx
	movl	$1, %edx
	movl	$1, %esi
	movq	%rsp, %rdi
	call	fread
	cmpq	$1, %rax
	jne	.L314
	movzbl	(%rsp), %eax
	addq	$1, %r12
	addq	$1, %rbx
	movb	%al, 0(%r13)
	jmp	.L305
.L313:
	movl	$.LC7, %edi
	call	perror
	movl	$44, %edi
	call	exit
.L314:
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
	jle	.L317
	.p2align 4,,10
	.p2align 3
.L319:
	movzbl	0(%rbp,%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC10, %esi
	movl	$1, %edi
	addq	$1, %rbx
	call	__printf_chk
	cmpq	%rbx, total_bytes_allocated(%rip)
	jg	.L319
.L317:
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
	jle	.L325
	leaq	-1(%rdi), %r10
	leaq	2(%rdi), %r8
	movq	%rdi, %r9
	addq	$1, %rdi
	shrq	$2, %r9
	xorl	%eax, %eax
	shrq	$2, %r10
	shrq	$2, %r8
	shrq	$2, %rdi
	addq	$1, %r10
	jmp	.L324
	.p2align 4,,10
	.p2align 3
.L328:
	movzbl	1(%rsi,%rax,4), %ecx
	cmpq	%rdi, %rax
	movb	%cl, 1(%rdx)
	je	.L323
	movzbl	2(%rsi,%rax,4), %ecx
	cmpq	%r9, %rax
	movb	%cl, 2(%rdx)
	je	.L323
	movzbl	3(%rsi,%rax,4), %ecx
	addq	$1, %rax
	addq	$9, %rdx
	movb	%cl, -6(%rdx)
	cmpq	%r10, %rax
	je	.L327
.L324:
	movzbl	(%rsi,%rax,4), %ecx
	cmpq	%r8, %rax
	movb	%cl, (%rdx)
	jne	.L328
.L323:
	addq	$1, %rax
	ret
.L325:
	xorl	%eax, %eax
	ret
.L327:
	.p2align 4,,7
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
	je	.L340
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.L345
.L331:
	cmpq	%rax, %rsi
	jle	.L329
	leaq	(%rdi,%rax), %rcx
	movq	%rsi, %rdi
	subq	%rax, %rdi
	shrq	$2, %rdi
	leaq	(%rdi,%rdi,8), %r8
	addq	%rdx, %r8
	jmp	.L339
	.p2align 4,,10
	.p2align 3
.L346:
	movzbl	1(%rdx), %edi
	movb	%dil, 1(%rcx)
	leaq	2(%rax), %rdi
	cmpq	%rdi, %rsi
	jle	.L329
	movzbl	2(%rdx), %edi
	cmpq	%r8, %rdx
	movb	%dil, 2(%rcx)
	je	.L329
	movzbl	3(%rdx), %edi
	addq	$4, %rax
	addq	$9, %rdx
	addq	$4, %rcx
	movb	%dil, -1(%rcx)
	cmpq	%rax, %rsi
	jle	.L329
.L339:
	movzbl	(%rdx), %edi
	movb	%dil, (%rcx)
	leaq	1(%rax), %rdi
	cmpq	%rdi, %rsi
	jg	.L346
.L329:
	rep ret
	.p2align 4,,10
	.p2align 3
.L340:
	movl	$1, %ecx
.L330:
	imulq	%r8, %rcx
	leaq	3(%rcx), %rax
	testq	%rcx, %rcx
	cmovns	%rcx, %rax
	sarq	$2, %rax
	leaq	0(,%rax,4), %r8
	cmpq	%r8, %rcx
	je	.L347
	leaq	(%rax,%rax,8), %r8
	negq	%rax
	leaq	(%rcx,%rax,4), %rcx
	addq	%r8, %rdx
	cmpq	$3, %rcx
	jg	.L343
	testq	%rsi, %rsi
	jle	.L343
	movl	$4, %r9d
	movq	%rcx, %r8
	xorl	%eax, %eax
	subq	%rcx, %r9
	jmp	.L334
	.p2align 4,,10
	.p2align 3
.L348:
	cmpq	%rsi, %rax
	je	.L333
.L334:
	movzbl	(%rdx,%r8), %r8d
	movb	%r8b, (%rdi,%rax)
	addq	$1, %rax
	cmpq	%r9, %rax
	leaq	(%rcx,%rax), %r8
	jne	.L348
.L333:
	addq	$9, %rdx
	jmp	.L331
	.p2align 4,,10
	.p2align 3
.L345:
	movq	%rsi, %rcx
	jmp	.L330
	.p2align 4,,10
	.p2align 3
.L347:
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rdx
	xorl	%eax, %eax
	jmp	.L331
.L343:
	xorl	%eax, %eax
	jmp	.L333
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
	je	.L360
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.L365
.L351:
	cmpq	%rax, %rsi
	jle	.L349
	leaq	(%rdi,%rax), %rcx
	movq	%rsi, %rdi
	subq	%rax, %rdi
	shrq	$2, %rdi
	leaq	(%rdi,%rdi,8), %r8
	addq	%rdx, %r8
	jmp	.L359
	.p2align 4,,10
	.p2align 3
.L366:
	movzbl	1(%rcx), %edi
	movb	%dil, 1(%rdx)
	leaq	2(%rax), %rdi
	cmpq	%rdi, %rsi
	jle	.L349
	movzbl	2(%rcx), %edi
	cmpq	%r8, %rdx
	movb	%dil, 2(%rdx)
	je	.L349
	movzbl	3(%rcx), %edi
	addq	$4, %rax
	addq	$4, %rcx
	addq	$9, %rdx
	movb	%dil, -6(%rdx)
	cmpq	%rax, %rsi
	jle	.L349
.L359:
	movzbl	(%rcx), %edi
	movb	%dil, (%rdx)
	leaq	1(%rax), %rdi
	cmpq	%rdi, %rsi
	jg	.L366
.L349:
	rep ret
	.p2align 4,,10
	.p2align 3
.L360:
	movl	$1, %ecx
.L350:
	imulq	%r8, %rcx
	leaq	3(%rcx), %rax
	testq	%rcx, %rcx
	cmovns	%rcx, %rax
	sarq	$2, %rax
	leaq	0(,%rax,4), %r8
	cmpq	%r8, %rcx
	je	.L367
	leaq	(%rax,%rax,8), %r8
	negq	%rax
	leaq	(%rcx,%rax,4), %rcx
	addq	%r8, %rdx
	cmpq	$3, %rcx
	jg	.L363
	testq	%rsi, %rsi
	jle	.L363
	movl	$4, %r10d
	movq	%rcx, %r8
	xorl	%eax, %eax
	subq	%rcx, %r10
	jmp	.L354
	.p2align 4,,10
	.p2align 3
.L368:
	cmpq	%rsi, %rax
	je	.L353
.L354:
	movzbl	(%rdi,%rax), %r9d
	addq	$1, %rax
	cmpq	%r10, %rax
	movb	%r9b, (%rdx,%r8)
	leaq	(%rcx,%rax), %r8
	jne	.L368
.L353:
	addq	$9, %rdx
	jmp	.L351
	.p2align 4,,10
	.p2align 3
.L365:
	movq	%rsi, %rcx
	jmp	.L350
	.p2align 4,,10
	.p2align 3
.L367:
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rdx
	xorl	%eax, %eax
	jmp	.L351
.L363:
	xorl	%eax, %eax
	jmp	.L353
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
	movl	$3001, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L374
	movl	$.LC11, %esi
	movl	$.LC12, %edi
	movq	$3001, total_bytes_allocated(%rip)
	call	fopen
	testq	%rax, %rax
	movq	%rax, keyshare_input_file(%rip)
	je	.L375
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
	je	.L376
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
.L374:
	.cfi_restore_state
	movl	$293, %esi
	movl	$__func__.5823, %edi
	call	error_checking_malloc.part.0
.L376:
	movl	$94, %esi
	movl	$__func__.5779, %edi
	call	error_checking_malloc.part.0
.L375:
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
	je	.L378
	movq	16(%rdi), %rbx
	jmp	.L383
	.p2align 4,,10
	.p2align 3
.L382:
	movq	%rax, 24(%rbx)
	movq	%rbx, 16(%rax)
.L421:
	call	free
.L380:
	testb	%bpl, %bpl
	jne	.L378
.L424:
	movq	%rbx, %rdi
	movq	16(%rbx), %rbx
.L383:
	movq	24(%rdi), %rax
	testq	%rbx, %rbx
	sete	%bpl
	testq	%rax, %rax
	sete	%dl
	testb	%bpl, %bpl
	jne	.L423
.L381:
	testq	%rbx, %rbx
	je	.L382
	testb	%dl, %dl
	je	.L382
	movq	$0, 24(%rbx)
	call	free
	testb	%bpl, %bpl
	je	.L424
.L378:
	movq	allocated_chunks_list(%rip), %rdi
	testq	%rdi, %rdi
	je	.L377
	movq	16(%rdi), %rbx
	jmp	.L389
	.p2align 4,,10
	.p2align 3
.L388:
	movq	%rax, 24(%rbx)
	movq	%rbx, 16(%rax)
.L422:
	call	free
.L386:
	testb	%bpl, %bpl
	jne	.L377
.L426:
	movq	%rbx, %rdi
	movq	16(%rbx), %rbx
.L389:
	movq	24(%rdi), %rax
	testq	%rbx, %rbx
	sete	%bpl
	testq	%rax, %rax
	sete	%dl
	testb	%bpl, %bpl
	jne	.L425
.L387:
	testq	%rbx, %rbx
	je	.L388
	testb	%dl, %dl
	je	.L388
	movq	$0, 24(%rbx)
	call	free
	testb	%bpl, %bpl
	je	.L426
.L377:
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
.L423:
	.cfi_restore_state
	testb	%dl, %dl
	jne	.L421
	testq	%rax, %rax
	je	.L381
	movq	$0, 16(%rax)
	call	free
	jmp	.L380
	.p2align 4,,10
	.p2align 3
.L425:
	testb	%dl, %dl
	jne	.L422
	testq	%rax, %rax
	.p2align 4,,6
	je	.L387
	movq	$0, 16(%rax)
	call	free
	jmp	.L386
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
	movzbl	(%rdi), %eax
	movb	%al, -24(%rsp)
	movzbl	1(%rdi), %eax
	movb	%al, -23(%rsp)
	movzbl	2(%rdi), %eax
	movb	%al, -22(%rsp)
	movzbl	3(%rdi), %eax
	movb	%al, -21(%rsp)
	movzbl	9(%rdi), %eax
	movb	%al, -20(%rsp)
	movzbl	10(%rdi), %eax
	movb	%al, -19(%rsp)
	movzbl	11(%rdi), %eax
	movb	%al, -18(%rsp)
	movzbl	12(%rdi), %eax
	movb	%al, -17(%rsp)
	movq	-24(%rsp), %rax
	ret
	.cfi_endproc
.LFE102:
	.size	get_long_int, .-get_long_int
	.p2align 4,,15
	.globl	get_pointer
	.type	get_pointer, @function
get_pointer:
.LFB103:
	.cfi_startproc
	movzbl	(%rdi), %eax
	movb	%al, -24(%rsp)
	movzbl	1(%rdi), %eax
	movb	%al, -23(%rsp)
	movzbl	2(%rdi), %eax
	movb	%al, -22(%rsp)
	movzbl	3(%rdi), %eax
	movb	%al, -21(%rsp)
	movzbl	9(%rdi), %eax
	movb	%al, -20(%rsp)
	movzbl	10(%rdi), %eax
	movb	%al, -19(%rsp)
	movzbl	11(%rdi), %eax
	movb	%al, -18(%rsp)
	movzbl	12(%rdi), %eax
	movb	%al, -17(%rsp)
	movq	-24(%rsp), %rax
	ret
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
	movzbl	(%rdi), %eax
	movb	%al, -24(%rsp)
	movzbl	1(%rdi), %eax
	movb	%al, -23(%rsp)
	movzbl	2(%rdi), %eax
	movb	%al, -22(%rsp)
	movzbl	3(%rdi), %eax
	movb	%al, -21(%rsp)
	movzbl	9(%rdi), %eax
	movb	%al, -20(%rsp)
	movzbl	10(%rdi), %eax
	movb	%al, -19(%rsp)
	movzbl	11(%rdi), %eax
	movb	%al, -18(%rsp)
	movzbl	12(%rdi), %eax
	movb	%al, -17(%rsp)
	movsd	-24(%rsp), %xmm0
	ret
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
	je	.L445
	leaq	(%rax,%rax,8), %r8
	negq	%rax
	leaq	(%rdx,%rax,4), %r9
	addq	%r8, %rsi
	cmpq	$3, %r9
	jg	.L444
	testq	%rdi, %rdi
	jle	.L444
	movl	$4, %r10d
	movq	%r9, %r8
	xorl	%eax, %eax
	subq	%r9, %r10
	jmp	.L437
	.p2align 4,,10
	.p2align 3
.L446:
	cmpq	%rdi, %rax
	je	.L436
.L437:
	movzbl	(%rsi,%r8), %r8d
	movb	%r8b, (%rcx,%rax)
	addq	$1, %rax
	cmpq	%r10, %rax
	leaq	(%r9,%rax), %r8
	jne	.L446
.L436:
	leaq	9(%rsi), %rdx
.L435:
	cmpq	%rax, %rdi
	jle	.L433
	movq	%rdi, %rsi
	addq	%rax, %rcx
	subq	%rax, %rsi
	shrq	$2, %rsi
	leaq	(%rsi,%rsi,8), %r8
	addq	%rdx, %r8
	jmp	.L442
	.p2align 4,,10
	.p2align 3
.L447:
	movzbl	1(%rdx), %esi
	movb	%sil, 1(%rcx)
	leaq	2(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L433
	movzbl	2(%rdx), %esi
	cmpq	%r8, %rdx
	movb	%sil, 2(%rcx)
	je	.L433
	movzbl	3(%rdx), %esi
	addq	$4, %rax
	addq	$9, %rdx
	addq	$4, %rcx
	movb	%sil, -1(%rcx)
	cmpq	%rax, %rdi
	jle	.L433
.L442:
	movzbl	(%rdx), %esi
	movb	%sil, (%rcx)
	leaq	1(%rax), %rsi
	cmpq	%rsi, %rdi
	jg	.L447
.L433:
	rep ret
	.p2align 4,,10
	.p2align 3
.L445:
	leaq	(%rax,%rax,8), %rdx
	xorl	%eax, %eax
	addq	%rsi, %rdx
	jmp	.L435
.L444:
	xorl	%eax, %eax
	jmp	.L436
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
	leaq	0(,%rdx,4), %rcx
	leaq	(%rdx,%rdx,8), %rax
	cmpq	%rcx, %rsi
	je	.L454
	negq	%rdx
	addq	%rax, %rdi
	leaq	(%rsi,%rdx,4), %rdx
	cmpq	$3, %rdx
	jg	.L451
	movzbl	(%rdi,%rdx), %eax
	ret
	.p2align 4,,10
	.p2align 3
.L454:
	addq	%rdi, %rax
.L450:
	movzbl	(%rax), %eax
	ret
.L451:
	leaq	9(%rdi), %rax
	jmp	.L450
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
	sarq	$2, %rax
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rdi
	movzbl	(%rdi), %eax
	movb	%al, -24(%rsp)
	movzbl	1(%rdi), %eax
	movb	%al, -23(%rsp)
	movzbl	2(%rdi), %eax
	movb	%al, -22(%rsp)
	movzbl	3(%rdi), %eax
	movb	%al, -21(%rsp)
	movzbl	9(%rdi), %eax
	movb	%al, -20(%rsp)
	movzbl	10(%rdi), %eax
	movb	%al, -19(%rsp)
	movzbl	11(%rdi), %eax
	movb	%al, -18(%rsp)
	movzbl	12(%rdi), %eax
	movb	%al, -17(%rsp)
	movq	-24(%rsp), %rax
	ret
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
	sarq	$2, %rax
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rdi
	movzbl	(%rdi), %eax
	movb	%al, -24(%rsp)
	movzbl	1(%rdi), %eax
	movb	%al, -23(%rsp)
	movzbl	2(%rdi), %eax
	movb	%al, -22(%rsp)
	movzbl	3(%rdi), %eax
	movb	%al, -21(%rsp)
	movzbl	9(%rdi), %eax
	movb	%al, -20(%rsp)
	movzbl	10(%rdi), %eax
	movb	%al, -19(%rsp)
	movzbl	11(%rdi), %eax
	movb	%al, -18(%rsp)
	movzbl	12(%rdi), %eax
	movb	%al, -17(%rsp)
	movq	-24(%rsp), %rax
	ret
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
	sarq	$2, %rax
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rdi
	movzbl	(%rdi), %eax
	movb	%al, -24(%rsp)
	movzbl	1(%rdi), %eax
	movb	%al, -23(%rsp)
	movzbl	2(%rdi), %eax
	movb	%al, -22(%rsp)
	movzbl	3(%rdi), %eax
	movb	%al, -21(%rsp)
	movzbl	9(%rdi), %eax
	movb	%al, -20(%rsp)
	movzbl	10(%rdi), %eax
	movb	%al, -19(%rsp)
	movzbl	11(%rdi), %eax
	movb	%al, -18(%rsp)
	movzbl	12(%rdi), %eax
	movb	%al, -17(%rsp)
	movsd	-24(%rsp), %xmm0
	ret
	.cfi_endproc
.LFE112:
	.size	get_double_array_element, .-get_double_array_element
	.p2align 4,,15
	.globl	get_arbitrary_block_in_heap
	.type	get_arbitrary_block_in_heap, @function
get_arbitrary_block_in_heap:
.LFB113:
	.cfi_startproc
	testq	%rdi, %rdi
	jle	.L460
	leaq	2(%rdi), %r8
	leaq	1(%rdi), %r9
	movq	%rdi, %r10
	andq	$-4, %r10
	xorl	%eax, %eax
	andq	$-4, %r8
	andq	$-4, %r9
	jmp	.L465
	.p2align 4,,10
	.p2align 3
.L466:
	movzbl	1(%rsi), %ecx
	cmpq	%r9, %rax
	movb	%cl, 1(%rdx)
	je	.L460
	movzbl	2(%rsi), %ecx
	cmpq	%r10, %rax
	movb	%cl, 2(%rdx)
	je	.L460
	movzbl	3(%rsi), %ecx
	addq	$4, %rax
	addq	$9, %rsi
	addq	$4, %rdx
	movb	%cl, -1(%rdx)
	cmpq	%rax, %rdi
	jle	.L460
.L465:
	movzbl	(%rsi), %ecx
	cmpq	%r8, %rax
	movb	%cl, (%rdx)
	jne	.L466
.L460:
	rep ret
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
	je	.L479
	leaq	(%rax,%rax,8), %r8
	negq	%rax
	leaq	(%rdx,%rax,4), %r9
	addq	%r8, %rsi
	cmpq	$3, %r9
	jg	.L478
	testq	%rdi, %rdi
	jle	.L478
	movl	$4, %r10d
	movq	%r9, %r8
	xorl	%eax, %eax
	subq	%r9, %r10
	jmp	.L471
	.p2align 4,,10
	.p2align 3
.L480:
	cmpq	%rdi, %rax
	je	.L470
.L471:
	movzbl	(%rsi,%r8), %r8d
	movb	%r8b, (%rcx,%rax)
	addq	$1, %rax
	cmpq	%r10, %rax
	leaq	(%r9,%rax), %r8
	jne	.L480
.L470:
	leaq	9(%rsi), %rdx
.L469:
	cmpq	%rax, %rdi
	jle	.L467
	movq	%rdi, %rsi
	addq	%rax, %rcx
	subq	%rax, %rsi
	shrq	$2, %rsi
	leaq	(%rsi,%rsi,8), %r8
	addq	%rdx, %r8
	jmp	.L476
	.p2align 4,,10
	.p2align 3
.L481:
	movzbl	1(%rdx), %esi
	movb	%sil, 1(%rcx)
	leaq	2(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L467
	movzbl	2(%rdx), %esi
	cmpq	%r8, %rdx
	movb	%sil, 2(%rcx)
	je	.L467
	movzbl	3(%rdx), %esi
	addq	$4, %rax
	addq	$9, %rdx
	addq	$4, %rcx
	movb	%sil, -1(%rcx)
	cmpq	%rax, %rdi
	jle	.L467
.L476:
	movzbl	(%rdx), %esi
	movb	%sil, (%rcx)
	leaq	1(%rax), %rsi
	cmpq	%rsi, %rdi
	jg	.L481
.L467:
	rep ret
	.p2align 4,,10
	.p2align 3
.L479:
	leaq	(%rax,%rax,8), %rdx
	xorl	%eax, %eax
	addq	%rsi, %rdx
	jmp	.L469
.L478:
	xorl	%eax, %eax
	jmp	.L470
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
	movl	%esi, %r10d
	movl	%esi, %r9d
	movl	%esi, %r8d
	movq	%rsi, %rcx
	movq	%rsi, %rdx
	movq	%rsi, %rax
	movb	%sil, (%rdi)
	shrw	$8, %r10w
	shrl	$16, %r9d
	shrl	$24, %r8d
	shrq	$32, %rcx
	shrq	$40, %rdx
	shrq	$48, %rax
	shrq	$56, %rsi
	movb	%r10b, 1(%rdi)
	movb	%r9b, 2(%rdi)
	movb	%r8b, 3(%rdi)
	movb	%cl, 9(%rdi)
	movb	%dl, 10(%rdi)
	movb	%al, 11(%rdi)
	movb	%sil, 12(%rdi)
	ret
	.cfi_endproc
.LFE117:
	.size	set_long_int, .-set_long_int
	.p2align 4,,15
	.globl	set_pointer
	.type	set_pointer, @function
set_pointer:
.LFB118:
	.cfi_startproc
	movl	%esi, %r10d
	movl	%esi, %r9d
	movl	%esi, %r8d
	movq	%rsi, %rcx
	movq	%rsi, %rdx
	movq	%rsi, %rax
	movb	%sil, (%rdi)
	shrw	$8, %r10w
	shrl	$16, %r9d
	shrl	$24, %r8d
	shrq	$32, %rcx
	shrq	$40, %rdx
	shrq	$48, %rax
	shrq	$56, %rsi
	movb	%r10b, 1(%rdi)
	movb	%r9b, 2(%rdi)
	movb	%r8b, 3(%rdi)
	movb	%cl, 9(%rdi)
	movb	%dl, 10(%rdi)
	movb	%al, 11(%rdi)
	movb	%sil, 12(%rdi)
	ret
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
	movzbl	-8(%rsp), %eax
	movb	%al, (%rdi)
	movzbl	-7(%rsp), %eax
	movb	%al, 1(%rdi)
	movzbl	-6(%rsp), %eax
	movb	%al, 2(%rdi)
	movzbl	-5(%rsp), %eax
	movb	%al, 3(%rdi)
	movzbl	-4(%rsp), %eax
	movb	%al, 9(%rdi)
	movzbl	-3(%rsp), %eax
	movb	%al, 10(%rdi)
	movzbl	-2(%rsp), %eax
	movb	%al, 11(%rdi)
	movzbl	-1(%rsp), %eax
	movb	%al, 12(%rdi)
	ret
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
	je	.L500
	leaq	(%rax,%rax,8), %r8
	negq	%rax
	leaq	(%rdx,%rax,4), %r10
	addq	%r8, %rsi
	cmpq	$3, %r10
	jg	.L499
	testq	%rdi, %rdi
	jle	.L499
	movl	$4, %r11d
	movq	%r10, %r8
	xorl	%eax, %eax
	subq	%r10, %r11
	jmp	.L492
	.p2align 4,,10
	.p2align 3
.L501:
	cmpq	%rdi, %rax
	je	.L491
.L492:
	movzbl	(%rcx,%rax), %r9d
	addq	$1, %rax
	cmpq	%r11, %rax
	movb	%r9b, (%rsi,%r8)
	leaq	(%r10,%rax), %r8
	jne	.L501
.L491:
	leaq	9(%rsi), %rdx
.L490:
	cmpq	%rax, %rdi
	jle	.L488
	movq	%rdi, %rsi
	addq	%rax, %rcx
	subq	%rax, %rsi
	shrq	$2, %rsi
	leaq	(%rsi,%rsi,8), %r8
	addq	%rdx, %r8
	jmp	.L497
	.p2align 4,,10
	.p2align 3
.L502:
	movzbl	1(%rcx), %esi
	movb	%sil, 1(%rdx)
	leaq	2(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L488
	movzbl	2(%rcx), %esi
	cmpq	%r8, %rdx
	movb	%sil, 2(%rdx)
	je	.L488
	movzbl	3(%rcx), %esi
	addq	$4, %rax
	addq	$4, %rcx
	addq	$9, %rdx
	movb	%sil, -6(%rdx)
	cmpq	%rax, %rdi
	jle	.L488
.L497:
	movzbl	(%rcx), %esi
	movb	%sil, (%rdx)
	leaq	1(%rax), %rsi
	cmpq	%rsi, %rdi
	jg	.L502
.L488:
	rep ret
	.p2align 4,,10
	.p2align 3
.L500:
	leaq	(%rax,%rax,8), %rdx
	xorl	%eax, %eax
	addq	%rsi, %rdx
	jmp	.L490
.L499:
	xorl	%eax, %eax
	jmp	.L491
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
	leaq	0(,%rcx,4), %r8
	leaq	(%rcx,%rcx,8), %rax
	cmpq	%r8, %rsi
	je	.L508
	negq	%rcx
	addq	%rax, %rdi
	leaq	(%rsi,%rcx,4), %rcx
	cmpq	$3, %rcx
	jg	.L506
	movb	%dl, (%rdi,%rcx)
	ret
	.p2align 4,,10
	.p2align 3
.L508:
	addq	%rdi, %rax
.L505:
	movb	%dl, (%rax)
	ret
.L506:
	leaq	9(%rdi), %rax
	jmp	.L505
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
	leaq	3(%rsi), %rax
	testq	%rsi, %rsi
	cmovns	%rsi, %rax
	sarq	$2, %rax
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rdi
	movl	%edx, %eax
	shrw	$8, %ax
	movb	%dl, (%rdi)
	movb	%al, 1(%rdi)
	movl	%edx, %eax
	shrl	$16, %eax
	movb	%al, 2(%rdi)
	movl	%edx, %eax
	shrl	$24, %eax
	movb	%al, 3(%rdi)
	movq	%rdx, %rax
	shrq	$32, %rax
	movb	%al, 9(%rdi)
	movq	%rdx, %rax
	shrq	$40, %rax
	movb	%al, 10(%rdi)
	movq	%rdx, %rax
	shrq	$56, %rdx
	shrq	$48, %rax
	movb	%dl, 12(%rdi)
	movb	%al, 11(%rdi)
	ret
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
	leaq	3(%rsi), %rax
	testq	%rsi, %rsi
	cmovns	%rsi, %rax
	sarq	$2, %rax
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rdi
	movl	%edx, %eax
	shrw	$8, %ax
	movb	%dl, (%rdi)
	movb	%al, 1(%rdi)
	movl	%edx, %eax
	shrl	$16, %eax
	movb	%al, 2(%rdi)
	movl	%edx, %eax
	shrl	$24, %eax
	movb	%al, 3(%rdi)
	movq	%rdx, %rax
	shrq	$32, %rax
	movb	%al, 9(%rdi)
	movq	%rdx, %rax
	shrq	$40, %rax
	movb	%al, 10(%rdi)
	movq	%rdx, %rax
	shrq	$56, %rdx
	shrq	$48, %rax
	movb	%dl, 12(%rdi)
	movb	%al, 11(%rdi)
	ret
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
	movsd	%xmm0, -8(%rsp)
	leaq	3(%rsi), %rax
	testq	%rsi, %rsi
	cmovns	%rsi, %rax
	sarq	$2, %rax
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rdi
	movzbl	-8(%rsp), %eax
	movb	%al, (%rdi)
	movzbl	-7(%rsp), %eax
	movb	%al, 1(%rdi)
	movzbl	-6(%rsp), %eax
	movb	%al, 2(%rdi)
	movzbl	-5(%rsp), %eax
	movb	%al, 3(%rdi)
	movzbl	-4(%rsp), %eax
	movb	%al, 9(%rdi)
	movzbl	-3(%rsp), %eax
	movb	%al, 10(%rdi)
	movzbl	-2(%rsp), %eax
	movb	%al, 11(%rdi)
	movzbl	-1(%rsp), %eax
	movb	%al, 12(%rdi)
	ret
	.cfi_endproc
.LFE127:
	.size	set_double_array_element, .-set_double_array_element
	.p2align 4,,15
	.globl	set_arbitrary_block_in_heap
	.type	set_arbitrary_block_in_heap, @function
set_arbitrary_block_in_heap:
.LFB128:
	.cfi_startproc
	testq	%rdi, %rdi
	jle	.L514
	leaq	2(%rdi), %r8
	leaq	1(%rdi), %r9
	movq	%rdi, %r10
	andq	$-4, %r10
	xorl	%eax, %eax
	andq	$-4, %r8
	andq	$-4, %r9
	jmp	.L519
	.p2align 4,,10
	.p2align 3
.L520:
	movzbl	1(%rdx), %ecx
	cmpq	%r9, %rax
	movb	%cl, 1(%rsi)
	je	.L514
	movzbl	2(%rdx), %ecx
	cmpq	%r10, %rax
	movb	%cl, 2(%rsi)
	je	.L514
	movzbl	3(%rdx), %ecx
	addq	$4, %rax
	addq	$4, %rdx
	addq	$9, %rsi
	movb	%cl, -6(%rsi)
	cmpq	%rax, %rdi
	jle	.L514
.L519:
	movzbl	(%rdx), %ecx
	cmpq	%r8, %rax
	movb	%cl, (%rsi)
	jne	.L520
.L514:
	rep ret
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
	je	.L533
	leaq	(%rax,%rax,8), %r8
	negq	%rax
	leaq	(%rdx,%rax,4), %r10
	addq	%r8, %rsi
	cmpq	$3, %r10
	jg	.L532
	testq	%rdi, %rdi
	jle	.L532
	movl	$4, %r11d
	movq	%r10, %r8
	xorl	%eax, %eax
	subq	%r10, %r11
	jmp	.L525
	.p2align 4,,10
	.p2align 3
.L534:
	cmpq	%rdi, %rax
	je	.L524
.L525:
	movzbl	(%rcx,%rax), %r9d
	addq	$1, %rax
	cmpq	%r11, %rax
	movb	%r9b, (%rsi,%r8)
	leaq	(%r10,%rax), %r8
	jne	.L534
.L524:
	leaq	9(%rsi), %rdx
.L523:
	cmpq	%rax, %rdi
	jle	.L521
	movq	%rdi, %rsi
	addq	%rax, %rcx
	subq	%rax, %rsi
	shrq	$2, %rsi
	leaq	(%rsi,%rsi,8), %r8
	addq	%rdx, %r8
	jmp	.L530
	.p2align 4,,10
	.p2align 3
.L535:
	movzbl	1(%rcx), %esi
	movb	%sil, 1(%rdx)
	leaq	2(%rax), %rsi
	cmpq	%rsi, %rdi
	jle	.L521
	movzbl	2(%rcx), %esi
	cmpq	%r8, %rdx
	movb	%sil, 2(%rdx)
	je	.L521
	movzbl	3(%rcx), %esi
	addq	$4, %rax
	addq	$4, %rcx
	addq	$9, %rdx
	movb	%sil, -6(%rdx)
	cmpq	%rax, %rdi
	jle	.L521
.L530:
	movzbl	(%rcx), %esi
	movb	%sil, (%rdx)
	leaq	1(%rax), %rsi
	cmpq	%rsi, %rdi
	jg	.L535
.L521:
	rep ret
	.p2align 4,,10
	.p2align 3
.L533:
	leaq	(%rax,%rax,8), %rdx
	xorl	%eax, %eax
	addq	%rsi, %rdx
	jmp	.L523
.L532:
	xorl	%eax, %eax
	jmp	.L524
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
	je	.L541
	.p2align 4,,10
	.p2align 3
.L538:
	cmpq	%rdi, (%rax)
	jge	.L537
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L538
.L541:
	xorl	%eax, %eax
.L537:
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
	je	.L547
	.p2align 4,,10
	.p2align 3
.L544:
	cmpq	%rdi, 8(%rax)
	je	.L543
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L544
.L547:
	xorl	%eax, %eax
.L543:
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
	jne	.L554
	movl	$32, %edi
	movq	%rdx, %r15
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L559
	addq	(%r12), %r13
	movq	%r14, 8(%rax)
	movq	16(%r12), %rdx
	movq	%r13, (%rax)
	movq	24(%rbp), %rax
	movq	%rdx, 16(%rbx)
	testq	%rax, %rax
	movq	%rax, 24(%rbx)
	je	.L551
	movq	%rbx, 16(%rax)
.L552:
	movq	16(%rbx), %rax
	testq	%rax, %rax
	je	.L553
	movq	%rbx, 24(%rax)
.L553:
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
.L554:
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
.L551:
	.cfi_restore_state
	movq	%rbx, (%r15)
	jmp	.L552
.L559:
	movl	$903, %esi
	movl	$__func__.6099, %edi
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
	je	.L573
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
	je	.L575
	movq	%r13, %rbx
	.p2align 4,,10
	.p2align 3
.L564:
	cmpq	(%rbx), %rbp
	jle	.L563
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L564
.L575:
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
.L563:
	.cfi_restore_state
	movl	$32, %edi
	movq	8(%rbx), %r14
	movq	allocated_chunks_list(%rip), %r12
	call	malloc
	testq	%rax, %rax
	je	.L600
	testq	%r12, %r12
	movq	%rbp, (%rax)
	movq	%r14, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	je	.L565
	movq	%r12, 16(%rax)
	movq	%rax, 24(%r12)
	movq	$0, 24(%rax)
.L565:
	movq	(%rbx), %rdx
	addq	$1, allocated_chunks_num(%rip)
	movq	%rax, allocated_chunks_list(%rip)
	cmpq	%rbp, %rdx
	je	.L601
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
.L601:
	.cfi_restore_state
	movq	16(%rbx), %rbp
	movq	24(%rbx), %rax
	testq	%rbp, %rbp
	sete	%cl
	testq	%rax, %rax
	sete	%dl
	je	.L602
.L567:
	testq	%rax, %rax
	jne	.L603
.L569:
	testq	%rbp, %rbp
	jne	.L604
.L570:
	movq	%rax, 24(%rbp)
	movq	%rbx, %rdi
	movq	%rbp, 16(%rax)
	call	free
.L568:
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
.L573:
	xorl	%eax, %eax
	ret
.L604:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	testb	%dl, %dl
	je	.L570
	movq	$0, 24(%rbp)
	movq	%rbx, %rdi
	movq	%rbp, %r13
	call	free
	jmp	.L568
.L603:
	testb	%cl, %cl
	je	.L569
	movq	$0, 16(%rax)
	movq	%rbx, %rdi
	call	free
	jmp	.L568
.L602:
	testb	%cl, %cl
	je	.L567
	movq	%rbx, %rdi
	xorl	%r13d, %r13d
	call	free
	jmp	.L568
.L600:
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
	je	.L655
	movq	%rdi, %rbp
	movq	%r12, %rbx
	.p2align 4,,10
	.p2align 3
.L608:
	cmpq	8(%rbx), %rbp
	je	.L607
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L608
.L655:
	xorl	%eax, %eax
.L716:
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
.L607:
	.cfi_restore_state
	movl	$32, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r13
	je	.L721
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
	je	.L722
.L609:
	testq	%rax, %rax
	jne	.L723
.L611:
	testq	%rbp, %rbp
	jne	.L724
.L612:
	movq	%rax, 24(%rbp)
	movq	%rbx, %rdi
	movq	%rbp, 16(%rax)
	call	free
.L610:
	movq	free_chunks_list(%rip), %r14
	subq	$1, allocated_chunks_num(%rip)
	movq	%r12, allocated_chunks_list(%rip)
	testq	%r14, %r14
	je	.L725
	movq	8(%r13), %r12
	movq	%r14, %rbx
	xorl	%ebp, %ebp
	jmp	.L617
	.p2align 4,,10
	.p2align 3
.L726:
	movq	%rbx, %rbp
	movq	%rdx, %rbx
.L617:
	cmpq	%r12, 8(%rbx)
	jg	.L615
	movq	16(%rbx), %rdx
	testq	%rdx, %rdx
	jne	.L726
.L653:
	movq	8(%rbx), %rcx
	cmpq	%rcx, %r12
	jg	.L727
	movq	%rbx, %rbp
	movq	%rdx, %rbx
	jmp	.L631
	.p2align 4,,10
	.p2align 3
.L615:
	testq	%rbp, %rbp
	je	.L728
	cmpq	$0, 16(%rbp)
	je	.L729
	movq	8(%rbp), %rcx
.L631:
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
	jne	.L635
	movl	$32, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r14
	je	.L626
	addq	0(%r13), %r15
	movq	8(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	%r15, (%rax)
	movq	24(%rbp), %rax
	movq	%rbx, 16(%r14)
	testq	%rax, %rax
	movq	%rax, 24(%r14)
	je	.L636
	movq	%r14, 16(%rax)
	movq	16(%r14), %rbx
	testq	%rbx, %rbx
	je	.L638
.L637:
	movq	%r14, 24(%rbx)
.L638:
	movq	%rbp, %rdi
	call	free
	movq	%r13, %rdi
	call	free
.L639:
	movq	16(%r14), %rbp
	subq	$1, free_chunks_num(%rip)
	testq	%rbp, %rbp
	je	.L719
	movq	(%r14), %r12
	movq	8(%r14), %r13
	leaq	(%r12,%r12,8), %rax
	addq	%r13, %rax
	cmpq	%rax, 8(%rbp)
	je	.L696
	jmp	.L719
	.p2align 4,,10
	.p2align 3
.L730:
	movq	%rbx, %r14
.L696:
	movl	$32, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L626
	addq	0(%rbp), %r12
	movq	%r13, 8(%rax)
	movq	16(%rbp), %rdx
	movq	%r12, (%rax)
	movq	24(%r14), %rax
	movq	%rdx, 16(%rbx)
	testq	%rax, %rax
	movq	%rax, 24(%rbx)
	je	.L644
	movq	%rbx, 16(%rax)
	movq	16(%rbx), %rdx
.L645:
	testq	%rdx, %rdx
	je	.L646
	movq	%rbx, 24(%rdx)
.L646:
	movq	%r14, %rdi
	call	free
	movq	%rbp, %rdi
	call	free
	movq	16(%rbx), %rbp
	subq	$1, free_chunks_num(%rip)
	testq	%rbp, %rbp
	je	.L719
	movq	(%rbx), %r12
	movq	8(%rbx), %r13
	leaq	(%r12,%r12,8), %rax
	addq	%r13, %rax
	cmpq	%rax, 8(%rbp)
	je	.L730
.L719:
	movl	$1, %eax
.L732:
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
.L644:
	.cfi_restore_state
	movq	%rbx, free_chunks_list(%rip)
	jmp	.L645
	.p2align 4,,10
	.p2align 3
.L635:
	movq	0(%r13), %rbp
	leaq	0(%rbp,%rbp,8), %rax
	addq	%r12, %rax
	cmpq	%rax, 8(%rbx)
	jne	.L719
	movl	$32, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r14
	je	.L626
	addq	(%rbx), %rbp
	movq	24(%r13), %rdx
	movq	%r12, 8(%rax)
	movq	%rdx, 24(%rax)
	testq	%rdx, %rdx
	movq	%rbp, (%rax)
	movq	16(%rbx), %rax
	movq	%rax, 16(%r14)
	je	.L640
	movq	%r14, 16(%rdx)
	movq	16(%r14), %rax
.L641:
	testq	%rax, %rax
	je	.L642
	movq	%r14, 24(%rax)
.L642:
	movq	%r13, %rdi
	call	free
	movq	%rbx, %rdi
	call	free
	jmp	.L639
	.p2align 4,,10
	.p2align 3
.L724:
	testb	%dl, %dl
	je	.L612
	movq	$0, 24(%rbp)
	movq	%rbx, %rdi
	movq	%rbp, %r12
	call	free
	jmp	.L610
.L727:
	movq	(%rbx), %rbp
	addq	$1, free_chunks_num(%rip)
	movq	%r13, 16(%rbx)
	movq	%rcx, 8(%rsp)
	movq	%rbx, 24(%r13)
	movq	$0, 16(%r13)
	leaq	0(%rbp,%rbp,8), %rax
	addq	%rcx, %rax
	cmpq	%rax, %r12
	jne	.L719
	movl	$32, %edi
	call	malloc
	testq	%rax, %rax
	je	.L626
	movq	24(%rbx), %rdx
	addq	0(%r13), %rbp
	movq	8(%rsp), %rcx
	movq	$0, 16(%rax)
	testq	%rdx, %rdx
	movq	%rdx, 24(%rax)
	movq	%rbp, (%rax)
	movq	%rcx, 8(%rax)
	je	.L632
	movq	%rax, 16(%rdx)
	movq	16(%rax), %rdx
	testq	%rdx, %rdx
	je	.L634
	movq	%rax, 24(%rdx)
.L634:
	movq	%rbx, %rdi
	call	free
	movq	%r13, %rdi
	call	free
	subq	$1, free_chunks_num(%rip)
	jmp	.L719
	.p2align 4,,10
	.p2align 3
.L723:
	testb	%cl, %cl
	je	.L611
	movq	$0, 16(%rax)
	movq	%rbx, %rdi
	call	free
	jmp	.L610
.L636:
	movq	%r14, free_chunks_list(%rip)
	jmp	.L637
.L728:
	movl	$32, %edi
	movq	0(%r13), %rbp
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L619
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
	jne	.L719
	movl	$32, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r15
	je	.L626
	addq	(%r14), %rbp
	movq	%r12, 8(%rax)
	movq	$0, 24(%rax)
	movq	%r15, free_chunks_list(%rip)
	movq	%rbp, (%rax)
	movq	16(%r14), %rax
	testq	%rax, %rax
	movq	%rax, 16(%r15)
	je	.L622
	movq	%r15, 24(%rax)
.L622:
	movq	%rbx, %rdi
	call	free
	movq	%r14, %rdi
	call	free
	movq	16(%r15), %rbp
	subq	$1, free_chunks_num(%rip)
	testq	%rbp, %rbp
	je	.L719
	movq	(%r15), %r12
	movq	8(%r15), %r13
	leaq	(%r12,%r12,8), %rax
	addq	%r13, %rax
	cmpq	%rax, 8(%rbp)
	je	.L695
	jmp	.L719
	.p2align 4,,10
	.p2align 3
.L731:
	movq	%rbx, %r15
.L695:
	movl	$32, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L626
	addq	0(%rbp), %r12
	movq	%r13, 8(%rax)
	movq	16(%rbp), %rdx
	movq	%r12, (%rax)
	movq	24(%r15), %rax
	movq	%rdx, 16(%rbx)
	testq	%rax, %rax
	movq	%rax, 24(%rbx)
	je	.L627
	movq	%rbx, 16(%rax)
	movq	16(%rbx), %rdx
.L628:
	testq	%rdx, %rdx
	je	.L629
	movq	%rbx, 24(%rdx)
.L629:
	movq	%r15, %rdi
	call	free
	movq	%rbp, %rdi
	call	free
	movq	16(%rbx), %rbp
	subq	$1, free_chunks_num(%rip)
	testq	%rbp, %rbp
	je	.L719
	movq	(%rbx), %r12
	movq	8(%rbx), %r13
	leaq	(%r12,%r12,8), %rax
	addq	%r13, %rax
	cmpq	%rax, 8(%rbp)
	je	.L731
	movl	$1, %eax
	jmp	.L732
.L627:
	movq	%rbx, free_chunks_list(%rip)
	jmp	.L628
.L725:
	movl	$32, %edi
	movq	0(%r13), %rbp
	movq	8(%r13), %rbx
	call	malloc
	testq	%rax, %rax
	je	.L619
	movq	%rbp, (%rax)
	movq	%rbx, 8(%rax)
	movq	%r13, %rdi
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	%rax, free_chunks_list(%rip)
	addq	$1, free_chunks_num(%rip)
	call	free
	movl	$1, %eax
	jmp	.L716
.L722:
	testb	%cl, %cl
	je	.L609
	movq	%rbx, %rdi
	xorl	%r12d, %r12d
	call	free
	jmp	.L610
.L632:
	movq	%rax, free_chunks_list(%rip)
	jmp	.L634
.L640:
	movq	%r14, free_chunks_list(%rip)
	jmp	.L641
.L626:
	movl	$903, %esi
	movl	$__func__.6099, %edi
	call	error_checking_malloc.part.0
.L619:
	movl	$94, %esi
	movl	$__func__.5779, %edi
	call	error_checking_malloc.part.0
.L729:
	movq	%rbx, %rdx
	movq	%rbp, %rbx
	jmp	.L653
.L721:
	movl	$997, %esi
	movl	$__func__.6115, %edi
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
	je	.L749
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
	je	.L738
	.p2align 4,,10
	.p2align 3
.L768:
	cmpq	%rbp, (%rbx)
	jge	.L737
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L768
.L738:
	movl	%edx, %esi
	movq	%r15, %rdi
	call	error_checking_managed_secure_malloc.part.3
	.p2align 4,,10
	.p2align 3
.L737:
	movl	$32, %edi
	movl	%edx, 12(%rsp)
	movq	8(%rbx), %r14
	movq	allocated_chunks_list(%rip), %r12
	call	malloc
	testq	%rax, %rax
	movl	12(%rsp), %edx
	je	.L781
	testq	%r12, %r12
	movq	%rbp, (%rax)
	movq	%r14, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	je	.L740
	movq	%r12, 16(%rax)
	movq	%rax, 24(%r12)
	movq	$0, 24(%rax)
.L740:
	movq	(%rbx), %rcx
	addq	$1, allocated_chunks_num(%rip)
	movq	%rax, allocated_chunks_list(%rip)
	cmpq	%rcx, %rbp
	je	.L782
	leaq	0(%rbp,%rbp,8), %rax
	addq	%rax, 8(%rbx)
	subq	%rbp, %rcx
	movq	%rcx, (%rbx)
.L746:
	testq	%r14, %r14
	je	.L738
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
.L749:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L782:
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
	je	.L783
.L742:
	testq	%rax, %rax
	jne	.L784
.L744:
	testq	%rbp, %rbp
	jne	.L785
.L745:
	movq	%rax, 24(%rbp)
	movq	%rbx, %rdi
	movq	%rbp, 16(%rax)
	call	free
	movl	12(%rsp), %edx
.L743:
	movq	%r13, free_chunks_list(%rip)
	subq	$1, free_chunks_num(%rip)
	jmp	.L746
.L785:
	testb	%cl, %cl
	je	.L745
	movq	$0, 24(%rbp)
	movq	%rbx, %rdi
	movq	%rbp, %r13
	call	free
	movl	12(%rsp), %edx
	jmp	.L743
.L784:
	testb	%sil, %sil
	je	.L744
	movq	$0, 16(%rax)
	movq	%rbx, %rdi
	call	free
	movl	12(%rsp), %edx
	jmp	.L743
.L783:
	testb	%sil, %sil
	je	.L742
	movq	%rbx, %rdi
	xorl	%r13d, %r13d
	call	free
	movl	12(%rsp), %edx
	jmp	.L743
.L781:
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
	jle	.L786
	leaq	16(%rsi), %rax
	cmpq	%rax, %rdx
	leaq	16(%rdx), %rax
	setnb	%cl
	cmpq	%rax, %rsi
	setnb	%al
	orb	%al, %cl
	je	.L788
	cmpq	$15, %rdi
	jbe	.L788
	movq	%rdi, %r8
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	shrq	$4, %r8
	movq	%r8, %rax
	salq	$4, %rax
.L794:
	movdqu	(%rdx,%rcx), %xmm0
	addq	$1, %r9
	movdqu	%xmm0, (%rsi,%rcx)
	addq	$16, %rcx
	cmpq	%r9, %r8
	ja	.L794
	cmpq	%rax, %rdi
	je	.L786
	movslq	%eax, %rcx
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	1(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L786
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	2(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L786
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	3(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L786
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	4(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L786
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	5(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L786
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	6(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L786
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	7(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L786
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	8(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L786
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	9(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L786
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	10(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L786
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	11(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L786
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	12(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L786
	movzbl	(%rdx,%rcx), %r8d
	movb	%r8b, (%rsi,%rcx)
	leal	13(%rax), %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rdi
	jle	.L786
	movzbl	(%rdx,%rcx), %r8d
	addl	$14, %eax
	cltq
	cmpq	%rax, %rdi
	movb	%r8b, (%rsi,%rcx)
	jle	.L804
	movzbl	(%rdx,%rax), %edx
	movb	%dl, (%rsi,%rax)
	ret
	.p2align 4,,10
	.p2align 3
.L788:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L796:
	movzbl	(%rdx,%rax), %ecx
	movb	%cl, (%rsi,%rax)
	addq	$1, %rax
	cmpq	%rax, %rdi
	jne	.L796
	.p2align 4,,10
	.p2align 3
.L786:
	rep ret
	.p2align 4,,10
	.p2align 3
.L804:
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
	.string	"Got %d\n"
.LC31:
	.string	"Got %c\n"
.LC32:
	.string	"Got %ld\n"
.LC33:
	.string	"After long int printing:"
.LC34:
	.string	"After long int free:"
.LC35:
	.string	"After another char alloc:"
.LC37:
	.string	"Got %lf\n"
.LC38:
	.string	"After double alloc:"
	.section	.rodata.str1.8
	.align 8
.LC39:
	.string	"Array wrapper function testing"
	.section	.rodata.str1.1
.LC43:
	.string	"array index 2 is %lf\n"
.LC44:
	.string	"array index 3 is %lf\n"
.LC45:
	.string	"\n\n"
	.section	.rodata.str1.8
	.align 8
.LC46:
	.string	"After data retrieval, print mem"
	.section	.rodata.str1.1
.LC47:
	.string	"Mem test done"
.LC48:
	.string	"\n\n%d \n\n"
.LC49:
	.string	"After retrieving int:"
	.section	.rodata.str1.8
	.align 8
.LC50:
	.string	"After freeing the second array:"
	.section	.rodata.str1.1
.LC51:
	.string	"After freeing the int:"
.LC52:
	.string	"Testing wrapper functions"
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
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	call	__printf_chk
	movl	$.LC16, %edi
	call	puts
	movq	entire_memory_chunk(%rip), %rax
	movabsq	$2049638230412172402, %rdx
	movl	$.LC17, %esi
	movl	$1, %edi
	movq	%rax, 16(%rsp)
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
	movq	16(%rsp), %rbp
	jle	.L809
	.p2align 4,,10
	.p2align 3
.L851:
	movzbl	0(%rbp,%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC10, %esi
	movl	$1, %edi
	addq	$1, %rbx
	call	__printf_chk
	cmpq	total_bytes_allocated(%rip), %rbx
	jl	.L851
.L809:
	movl	$10, %edi
	call	putchar
	movl	$80, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r13
	je	.L861
	movl	$80, %edi
	call	malloc
	testq	%rax, %rax
	je	.L862
	movq	%r13, %rax
	andl	$15, %eax
	shrq	$2, %rax
	negq	%rax
	andl	$3, %eax
	movq	%rax, 24(%rsp)
	je	.L841
	cmpq	$1, %rax
	movl	$25, 0(%r13)
	jbe	.L842
	cmpq	$2, %rax
	movl	$36, 4(%r13)
	jbe	.L843
	movl	$49, 8(%r13)
	movl	$17, %edx
	movl	$8, %eax
.L812:
	movq	$20, (%rsp)
	movq	24(%rsp), %rdi
	subq	%rdi, (%rsp)
	movq	%rax, 40(%rsp)
	movq	(%rsp), %rcx
	movq	40(%rsp), %xmm1
	movdqa	.LC19(%rip), %xmm2
	shrq	$2, %rcx
	movq	%rcx, %rsi
	movq	%rcx, 48(%rsp)
	salq	$2, %rcx
	movq	%rcx, 32(%rsp)
	leaq	1(%rax), %rcx
	cmpq	$4, %rsi
	movdqa	.LC20(%rip), %xmm0
	movq	%rcx, 8(%rsp)
	leaq	0(%r13,%rdi,4), %rcx
	movhps	8(%rsp), %xmm1
	movq	%rcx, 40(%rsp)
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
	movdqu	%xmm0, (%rcx)
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
	movdqu	%xmm0, 16(%rcx)
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
	movdqu	%xmm0, 32(%rcx)
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
	movdqu	%xmm0, 48(%rcx)
	jbe	.L814
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
	movdqu	%xmm0, 64(%rcx)
.L814:
	movq	32(%rsp), %rcx
	movq	(%rsp), %rsi
	addq	%rcx, %rax
	subq	%rcx, %rdx
	cmpq	%rsi, %rcx
	je	.L815
	movl	%eax, %ecx
	imull	%eax, %ecx
	cmpq	$1, %rdx
	movl	%ecx, -20(%r13,%rax,4)
	leaq	1(%rax), %rcx
	je	.L815
	movl	%ecx, %esi
	addq	$2, %rax
	imull	%ecx, %esi
	cmpq	$2, %rdx
	movl	%esi, -20(%r13,%rcx,4)
	je	.L815
	movl	%eax, %edx
	imull	%eax, %edx
	movl	%edx, -20(%r13,%rax,4)
.L815:
	movl	$.LC21, %edi
	call	puts
	movl	$80, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, 8(%rsp)
	je	.L863
	movl	$.LC22, %edi
	call	puts
	movq	8(%rsp), %rdx
	movq	%r13, %rsi
	movl	$80, %edi
	call	insert_data_into_mem
	movl	$.LC23, %edi
	call	puts
	movl	$4, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r12
	je	.L864
	movq	8(%rsp), %r15
	leaq	1(%rax), %rbx
	leaq	2(%rax), %rbp
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L820:
	movzbl	(%r15), %eax
	movl	$.LC24, %esi
	movl	$1, %edi
	addq	$1, %r14
	addq	$9, %r15
	movb	%al, (%r12)
	movzbl	-8(%r15), %eax
	movb	%al, (%rbx)
	movzbl	-7(%r15), %eax
	movb	%al, 0(%rbp)
	movzbl	-6(%r15), %eax
	movb	%al, 3(%r12)
	movl	(%r12), %edx
	xorl	%eax, %eax
	call	__printf_chk
	cmpq	$20, %r14
	jne	.L820
	movl	$10, %edi
	call	putchar
	movl	$.LC25, %edi
	call	puts
	movl	$80, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, %r15
	je	.L865
	movq	24(%rsp), %rax
	testq	%rax, %rax
	je	.L844
	cmpq	$1, %rax
	movl	$15, 0(%r13)
	jbe	.L845
	cmpq	$2, %rax
	movl	$18, 4(%r13)
	jbe	.L846
	movl	$21, 8(%r13)
	movl	$17, %edx
	movl	$8, %eax
.L822:
	leaq	1(%rax), %rcx
	movq	%rax, 56(%rsp)
	cmpq	$4, 48(%rsp)
	movq	56(%rsp), %xmm0
	movq	%rcx, 24(%rsp)
	movq	40(%rsp), %rcx
	movhps	24(%rsp), %xmm0
	movdqa	.LC20(%rip), %xmm2
	movdqa	%xmm0, %xmm3
	paddq	%xmm0, %xmm2
	movdqa	.LC19(%rip), %xmm1
	shufps	$136, %xmm2, %xmm3
	paddq	%xmm0, %xmm1
	movdqa	.LC20(%rip), %xmm2
	movdqa	%xmm1, %xmm4
	movdqa	%xmm3, %xmm0
	paddq	%xmm1, %xmm2
	shufps	$136, %xmm2, %xmm4
	movdqa	.LC20(%rip), %xmm2
	pslld	$1, %xmm0
	paddd	%xmm3, %xmm0
	movdqu	%xmm0, (%rcx)
	movdqa	.LC19(%rip), %xmm0
	paddq	%xmm1, %xmm0
	movdqa	%xmm4, %xmm1
	paddq	%xmm0, %xmm2
	movdqa	%xmm0, %xmm5
	pslld	$1, %xmm1
	paddd	%xmm4, %xmm1
	movdqu	%xmm1, 16(%rcx)
	shufps	$136, %xmm2, %xmm5
	movdqa	.LC19(%rip), %xmm1
	movdqa	.LC20(%rip), %xmm2
	paddq	%xmm0, %xmm1
	movdqa	%xmm1, %xmm6
	movdqa	%xmm5, %xmm0
	paddq	%xmm1, %xmm2
	shufps	$136, %xmm2, %xmm6
	pslld	$1, %xmm0
	paddd	%xmm5, %xmm0
	movdqu	%xmm0, 32(%rcx)
	movdqa	.LC19(%rip), %xmm0
	paddq	%xmm1, %xmm0
	movdqa	%xmm6, %xmm1
	pslld	$1, %xmm1
	paddd	%xmm6, %xmm1
	movdqu	%xmm1, 48(%rcx)
	jbe	.L824
	movdqa	.LC20(%rip), %xmm1
	paddq	%xmm0, %xmm1
	shufps	$136, %xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	pslld	$1, %xmm1
	paddd	%xmm0, %xmm1
	movdqu	%xmm1, 64(%rcx)
.L824:
	movq	32(%rsp), %rcx
	movq	(%rsp), %rsi
	addq	%rcx, %rax
	subq	%rcx, %rdx
	cmpq	%rsi, %rcx
	je	.L825
	leal	(%rax,%rax,2), %esi
	cmpq	$1, %rdx
	movl	%esi, -20(%r13,%rax,4)
	leaq	1(%rax), %rsi
	je	.L825
	leal	(%rsi,%rsi,2), %edi
	addq	$2, %rax
	cmpq	$2, %rdx
	movl	%edi, -20(%r13,%rsi,4)
	je	.L825
	leal	(%rax,%rax,2), %edx
	movl	%edx, -20(%r13,%rax,4)
.L825:
	movl	$.LC26, %edi
	xorl	%r14d, %r14d
	call	puts
	movq	%r13, %rsi
	movq	%r15, %rdx
	movl	$80, %edi
	call	insert_data_into_mem
	movq	%r15, %r13
	movl	$.LC23, %edi
	call	puts
	.p2align 4,,10
	.p2align 3
.L828:
	movzbl	0(%r13), %eax
	movl	$.LC24, %esi
	movl	$1, %edi
	addq	$1, %r14
	addq	$9, %r13
	movb	%al, (%r12)
	movzbl	-8(%r13), %eax
	movb	%al, (%rbx)
	movzbl	-7(%r13), %eax
	movb	%al, 0(%rbp)
	movzbl	-6(%r13), %eax
	movb	%al, 3(%r12)
	movl	(%r12), %edx
	xorl	%eax, %eax
	call	__printf_chk
	cmpq	$20, %r14
	jne	.L828
	movl	$10, %edi
	call	putchar
	movl	$.LC27, %edi
	call	puts
	xorl	%eax, %eax
	call	print_lists
	movq	%r15, %rdi
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
	movq	%rax, %rbx
	je	.L866
	movq	%rax, %rsi
	movq	%r12, %rdi
	movl	$424242424, (%r12)
	call	insert_data_into_mem.constprop.24
	movq	%r12, %rdi
	call	free
	movl	$4, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbp
	je	.L867
	movzbl	(%rbx), %eax
	movl	$.LC48, %esi
	movl	$1, %edi
	movb	%al, 0(%rbp)
	movzbl	1(%rbx), %eax
	movb	%al, 1(%rbp)
	movzbl	2(%rbx), %eax
	movb	%al, 2(%rbp)
	movzbl	3(%rbx), %eax
	movb	%al, 3(%rbp)
	movl	0(%rbp), %edx
	xorl	%eax, %eax
	call	__printf_chk
	movq	%rbp, %rdi
	call	free
	movl	$.LC49, %edi
	call	puts
	xorl	%eax, %eax
	call	print_lists
	movq	8(%rsp), %rdi
	call	managed_secure_free
	movl	$.LC50, %edi
	call	puts
	xorl	%eax, %eax
	call	print_lists
	movq	%rbx, %rdi
	call	managed_secure_free
	movl	$.LC51, %edi
	call	puts
	xorl	%eax, %eax
	call	print_lists
	movl	$.LC52, %edi
	call	puts
	movl	$4, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L868
	leaq	96(%rsp), %rdi
	movq	%rbx, %rsi
	movl	$99998, 96(%rsp)
	call	insert_data_into_mem.constprop.24
	movzbl	1(%rbx), %eax
	xorl	%edx, %edx
	movb	(%rbx), %dl
	movzbl	2(%rbx), %ecx
	movl	$.LC30, %esi
	movl	$1, %edi
	movb	%al, %dh
	movzbl	3(%rbx), %eax
	sall	$16, %ecx
	movzwl	%dx, %edx
	orl	%ecx, %edx
	sall	$24, %eax
	orl	%eax, %edx
	xorl	%eax, %eax
	call	__printf_chk
	movl	$1, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L869
	leaq	64(%rsp), %rsi
	movq	%rax, %rdx
	movl	$1, %edi
	movb	$98, 64(%rsp)
	call	insert_data_into_mem
	movsbl	(%rbx), %edx
	movl	$.LC31, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$8, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L870
	leaq	128(%rsp), %rsi
	movq	%rax, %rdx
	movl	$8, %edi
	movq	$54545454, 128(%rsp)
	call	insert_data_into_mem
	movzbl	(%rbx), %eax
	movl	$.LC32, %esi
	movl	$1, %edi
	movb	%al, 160(%rsp)
	movzbl	1(%rbx), %eax
	movb	%al, 161(%rsp)
	movzbl	2(%rbx), %eax
	movb	%al, 162(%rsp)
	movzbl	3(%rbx), %eax
	movb	%al, 163(%rsp)
	movzbl	9(%rbx), %eax
	movb	%al, 164(%rsp)
	movzbl	10(%rbx), %eax
	movb	%al, 165(%rsp)
	movzbl	11(%rbx), %eax
	movb	%al, 166(%rsp)
	movzbl	12(%rbx), %eax
	movb	%al, 167(%rsp)
	movq	160(%rsp), %rdx
	xorl	%eax, %eax
	call	__printf_chk
	movl	$.LC33, %edi
	call	puts
	xorl	%eax, %eax
	call	print_lists
	movq	%rbx, %rdi
	call	managed_secure_free
	movl	$.LC34, %edi
	call	puts
	xorl	%eax, %eax
	call	print_lists
	movl	$1, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L871
	leaq	80(%rsp), %rsi
	movq	%rax, %rdx
	movl	$1, %edi
	movb	$97, 80(%rsp)
	call	insert_data_into_mem
	movsbl	(%rbx), %edx
	movl	$.LC31, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$.LC35, %edi
	call	puts
	xorl	%eax, %eax
	call	print_lists
	movl	$8, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L872
	movsd	.LC36(%rip), %xmm7
	leaq	144(%rsp), %rsi
	movq	%rax, %rdx
	movl	$8, %edi
	movsd	%xmm7, 144(%rsp)
	call	insert_data_into_mem
	movzbl	(%rbx), %eax
	movl	$.LC37, %esi
	movl	$1, %edi
	movb	%al, 160(%rsp)
	movzbl	1(%rbx), %eax
	movb	%al, 161(%rsp)
	movzbl	2(%rbx), %eax
	movb	%al, 162(%rsp)
	movzbl	3(%rbx), %eax
	movb	%al, 163(%rsp)
	movzbl	9(%rbx), %eax
	movb	%al, 164(%rsp)
	movzbl	10(%rbx), %eax
	movb	%al, 165(%rsp)
	movzbl	11(%rbx), %eax
	movb	%al, 166(%rsp)
	movzbl	12(%rbx), %eax
	movb	%al, 167(%rsp)
	movl	$1, %eax
	movsd	160(%rsp), %xmm0
	call	__printf_chk
	movl	$.LC38, %edi
	call	puts
	xorl	%eax, %eax
	call	print_lists
	movl	$.LC39, %edi
	call	puts
	movl	$80, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L873
	movsd	.LC40(%rip), %xmm7
	leaq	112(%rsp), %rdi
	movq	%rax, %rsi
	movl	$2, %edx
	movsd	%xmm7, 112(%rsp)
	call	set_secure_data.constprop.16
	movsd	.LC41(%rip), %xmm3
	leaq	112(%rsp), %rdi
	movq	%rbx, %rsi
	movl	$3, %edx
	movsd	%xmm3, 112(%rsp)
	call	set_secure_data.constprop.16
	movsd	.LC42(%rip), %xmm4
	leaq	112(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	%rbx, %rsi
	movsd	%xmm4, 112(%rsp)
	call	get_secure_data.constprop.20
	movsd	112(%rsp), %xmm0
	movl	$.LC43, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	leaq	112(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movq	%rbx, %rsi
	call	get_secure_data.constprop.20
	movsd	112(%rsp), %xmm0
	movl	$.LC44, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	leaq	160(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movq	%rbx, %rsi
	xorl	%ebx, %ebx
	call	get_secure_data.constprop.20
	movsd	160(%rsp), %xmm0
	movl	$.LC44, %esi
	movl	$1, %edi
	movl	$1, %eax
	movsd	%xmm0, 112(%rsp)
	call	__printf_chk
	movl	$.LC45, %edi
	call	puts
	movl	$.LC46, %edi
	call	puts
	movl	$.LC9, %edi
	call	puts
	cmpq	$0, total_bytes_allocated(%rip)
	movq	16(%rsp), %rbp
	jle	.L837
	.p2align 4,,10
	.p2align 3
.L852:
	movzbl	0(%rbp,%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC10, %esi
	movl	$1, %edi
	addq	$1, %rbx
	call	__printf_chk
	cmpq	total_bytes_allocated(%rip), %rbx
	jl	.L852
.L837:
	movl	$10, %edi
	call	putchar
	movl	$.LC47, %edi
	call	puts
	addq	$184, %rsp
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
.L841:
	.cfi_restore_state
	movl	$20, %edx
	movl	$5, %eax
	jmp	.L812
	.p2align 4,,10
	.p2align 3
.L844:
	movl	$20, %edx
	movl	$5, %eax
	jmp	.L822
.L846:
	movl	$18, %edx
	movl	$7, %eax
	jmp	.L822
.L845:
	movl	$19, %edx
	movl	$6, %eax
	jmp	.L822
.L843:
	movl	$18, %edx
	movl	$7, %eax
	jmp	.L812
.L842:
	movl	$19, %edx
	movl	$6, %eax
	jmp	.L812
.L865:
	movl	$91, %esi
	movl	$__func__.6166, %edi
	call	error_checking_managed_secure_malloc.part.3
.L866:
	movl	$120, %esi
	movl	$__func__.6166, %edi
	call	error_checking_managed_secure_malloc.part.3
.L867:
	movl	$124, %esi
	movl	$__func__.6166, %edi
	call	error_checking_malloc.part.0
.L868:
	movl	$146, %esi
	movl	$__func__.6166, %edi
	call	error_checking_managed_secure_malloc.part.3
.L869:
	movl	$152, %esi
	movl	$__func__.6166, %edi
	call	error_checking_managed_secure_malloc.part.3
.L870:
	movl	$158, %esi
	movl	$__func__.6166, %edi
	call	error_checking_managed_secure_malloc.part.3
.L871:
	movl	$172, %esi
	movl	$__func__.6166, %edi
	call	error_checking_managed_secure_malloc.part.3
.L872:
	movl	$182, %esi
	movl	$__func__.6166, %edi
	call	error_checking_managed_secure_malloc.part.3
.L873:
	movl	$193, %esi
	movl	$__func__.6166, %edi
	call	error_checking_managed_secure_malloc.part.3
.L863:
	movl	$70, %esi
	movl	$__func__.6166, %edi
	call	error_checking_managed_secure_malloc.part.3
.L864:
	movl	$78, %esi
	movl	$__func__.6166, %edi
	call	error_checking_malloc.part.0
.L861:
	movl	$60, %esi
	movl	$__func__.6166, %edi
	call	error_checking_malloc.part.0
.L862:
	movl	$61, %esi
	movl	$__func__.6166, %edi
	call	error_checking_malloc.part.0
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
	je	.L964
	.p2align 4,,10
	.p2align 3
.L940:
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
	jne	.L940
.L876:
	movl	$.LC5, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L965
	.p2align 4,,10
	.p2align 3
.L941:
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
	jne	.L941
.L879:
	movl	$.LC53, %edi
	call	puts
	movl	$101, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	je	.L966
.L881:
	movl	$.LC4, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L967
	.p2align 4,,10
	.p2align 3
.L942:
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
	jne	.L942
.L883:
	movl	$.LC5, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L968
	.p2align 4,,10
	.p2align 3
.L943:
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
	jne	.L943
.L886:
	movl	$.LC55, %edi
	call	puts
	movl	$42, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, %r13
	je	.L969
.L888:
	movl	$.LC4, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L970
	.p2align 4,,10
	.p2align 3
.L944:
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
	jne	.L944
.L890:
	movl	$.LC5, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L971
	.p2align 4,,10
	.p2align 3
.L945:
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
	jne	.L945
.L893:
	movl	$.LC57, %edi
	call	puts
	movl	$61, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, %r12
	je	.L972
.L895:
	xorl	%eax, %eax
	call	print_lists
	movl	$.LC59, %edi
	call	puts
	movq	%r13, %rdi
	call	managed_secure_free
	testl	%eax, %eax
	je	.L973
.L896:
	movl	$.LC4, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L974
	.p2align 4,,10
	.p2align 3
.L946:
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
	jne	.L946
.L898:
	movl	$.LC5, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L975
	.p2align 4,,10
	.p2align 3
.L947:
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
	jne	.L947
.L901:
	movl	$.LC61, %edi
	call	puts
	movl	$80, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	je	.L976
.L903:
	movl	$.LC4, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L977
	.p2align 4,,10
	.p2align 3
.L948:
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
	jne	.L948
.L905:
	movl	$.LC5, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L978
	.p2align 4,,10
	.p2align 3
.L949:
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
	jne	.L949
.L908:
	movl	$.LC63, %edi
	call	puts
	movl	$29, %edi
	call	managed_secure_malloc
	testq	%rax, %rax
	je	.L979
.L910:
	xorl	%eax, %eax
	call	print_lists
	movl	$.LC65, %edi
	call	puts
	movq	%r12, %rdi
	call	managed_secure_free
	testl	%eax, %eax
	jne	.L911
	movl	$.LC60, %edi
	call	puts
.L911:
	movl	$.LC4, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	free_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L980
	.p2align 4,,10
	.p2align 3
.L950:
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
	jne	.L950
.L913:
	movl	$.LC5, %edi
	xorl	%ebp, %ebp
	call	puts
	movq	allocated_chunks_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.L981
	.p2align 4,,10
	.p2align 3
.L951:
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
	jne	.L951
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
.L973:
	.cfi_restore_state
	movl	$.LC60, %edi
	call	puts
	jmp	.L896
.L972:
	movl	$.LC58, %edi
	call	puts
	.p2align 4,,3
	jmp	.L895
.L976:
	movl	$.LC62, %edi
	call	puts
	.p2align 4,,3
	jmp	.L903
.L979:
	movl	$.LC64, %edi
	call	puts
	.p2align 4,,3
	jmp	.L910
.L966:
	movl	$.LC54, %edi
	call	puts
	.p2align 4,,3
	jmp	.L881
.L969:
	movl	$.LC56, %edi
	call	puts
	.p2align 4,,3
	jmp	.L888
.L964:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L876
.L978:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L908
.L977:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L905
.L971:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L893
.L970:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L890
.L975:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L901
.L974:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L898
.L981:
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
.L980:
	.cfi_restore_state
	movl	$.LC2, %edi
	call	puts
	jmp	.L913
.L968:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L886
.L967:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L883
.L965:
	movl	$.LC2, %edi
	call	puts
	.p2align 4,,3
	jmp	.L879
	.cfi_endproc
.LFE138:
	.size	list_test, .-list_test
	.section	.rodata.str1.1
.LC66:
	.string	"Need more mem!"
.LC67:
	.string	"setting"
.LC68:
	.string	"adding"
.LC69:
	.string	"printing"
	.section	.rodata.str1.8
	.align 8
.LC70:
	.string	"printing as blocks of data using arbitrary blocks"
	.section	.rodata.str1.1
.LC71:
	.string	"freeing"
.LC72:
	.string	"%lg "
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
	movl	%r10d, 52(%rsp)
	movl	%r9d, 48(%rsp)
	movl	%r11d, 44(%rsp)
	movl	%r8d, 32(%rsp)
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
	call	get_secure_data.constprop.20
	movq	208(%rsp), %rdx
	leaq	200(%rsp), %rsi
	movl	$8, %edi
	movq	$21, 200(%rsp)
	call	insert_data_into_mem
	leaq	208(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rbp, %rsi
	call	get_secure_data.constprop.20
	movq	208(%rsp), %rax
	leaq	0(,%rax,4), %rdi
	call	managed_secure_malloc
	leaq	208(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movq	%rax, 8(%rsp)
	call	get_secure_data.constprop.20
	movq	208(%rsp), %rax
	leaq	0(,%rax,4), %rdi
	call	managed_secure_malloc
	leaq	208(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movq	%rax, 16(%rsp)
	call	get_secure_data.constprop.20
	movq	208(%rsp), %rax
	leaq	0(,%rax,8), %rdi
	call	managed_secure_malloc
	leaq	208(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movq	%rax, (%rsp)
	call	get_secure_data.constprop.20
	movq	208(%rsp), %rax
	leaq	0(,%rax,4), %rdi
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, 24(%rsp)
	movl	32(%rsp), %r8d
	movl	44(%rsp), %r11d
	movl	48(%rsp), %r9d
	movl	52(%rsp), %r10d
	je	.L1031
	movl	$.LC67, %edi
	movl	%r10d, 52(%rsp)
	movl	%r9d, 48(%rsp)
	movl	%r11d, 44(%rsp)
	movl	%r8d, 32(%rsp)
	call	puts
	leaq	136(%rsp), %rdi
	movq	%rbx, %rsi
	movl	$0, 136(%rsp)
	call	insert_data_into_mem.constprop.24
	movl	32(%rsp), %r8d
	movl	44(%rsp), %r11d
	xorl	%eax, %eax
	movl	%r13d, 60(%rsp)
	movl	%r14d, 64(%rsp)
	xorl	%edx, %edx
	movl	%r15d, 68(%rsp)
	movl	56(%rsp), %r14d
	movl	%r8d, 72(%rsp)
	movl	%r11d, %r13d
	movl	112(%rsp), %r15d
	movl	116(%rsp), %ecx
	movl	120(%rsp), %r8d
	movl	124(%rsp), %r11d
	movl	48(%rsp), %r9d
	movl	52(%rsp), %r10d
	jmp	.L984
	.p2align 4,,10
	.p2align 3
.L1029:
	movzbl	(%rbx,%rdx), %esi
	movb	%sil, 208(%rsp,%rax)
	leaq	1(%rax), %rsi
	cmpq	$4, %rsi
	je	.L1009
	movzbl	1(%rbx,%rdx), %edi
	leaq	2(%rax), %rsi
	cmpq	$3, %rsi
	movb	%dil, 209(%rsp,%rax)
	jg	.L1011
	movzbl	2(%rbx,%rdx), %edi
	movb	%dil, 208(%rsp,%rsi)
	leaq	3(%rax), %rsi
	cmpq	$3, %rsi
	jne	.L1011
	movzbl	3(%rbx,%rdx), %esi
	addq	$4, %rax
	movb	%sil, 211(%rsp)
.L986:
	addq	$9, %rdx
.L984:
	cmpq	$3, %rax
	jle	.L1029
	movzbl	0(%rbp), %edx
	movslq	208(%rsp), %rax
	movb	%dl, 208(%rsp)
	movzbl	1(%rbp), %edx
	movb	%dl, 209(%rsp)
	movzbl	2(%rbp), %edx
	movb	%dl, 210(%rsp)
	movzbl	3(%rbp), %edx
	movb	%dl, 211(%rsp)
	movzbl	9(%rbp), %edx
	movb	%dl, 212(%rsp)
	movzbl	10(%rbp), %edx
	movb	%dl, 213(%rsp)
	movzbl	11(%rbp), %edx
	movb	%dl, 214(%rsp)
	movzbl	12(%rbp), %edx
	movb	%dl, 215(%rsp)
	cmpq	208(%rsp), %rax
	jge	.L1032
	movzbl	(%rbx), %edi
	movzbl	1(%rbx), %esi
	movzbl	2(%rbx), %edx
	movl	%r8d, 44(%rsp)
	movl	%ecx, 32(%rsp)
	movzbl	3(%rbx), %r8d
	movl	%r11d, 48(%rsp)
	movb	%dil, %r10b
	movq	%rsi, %rcx
	movb	%dil, %r9b
	movq	%r10, %rax
	sall	$16, %edx
	leaq	208(%rsp), %rdi
	movb	%cl, %ah
	movq	%r9, %rcx
	sall	$24, %r8d
	movzwl	%ax, %r10d
	movq	%rsi, %rax
	movq	8(%rsp), %rsi
	movb	%al, %ch
	orl	%edx, %r10d
	movzwl	%cx, %r9d
	orl	%r8d, %r10d
	orl	%edx, %r9d
	leal	(%r10,%r10), %eax
	movl	%r10d, 56(%rsp)
	orl	%r8d, %r9d
	movslq	%r9d, %rdx
	movl	%eax, 208(%rsp)
	movl	%r9d, 52(%rsp)
	call	set_secure_data.constprop.17
	movzbl	(%rbx), %edi
	movzbl	1(%rbx), %esi
	movl	48(%rsp), %r11d
	movzbl	2(%rbx), %edx
	movzbl	3(%rbx), %r9d
	movb	%dil, %r12b
	movq	%rsi, %rcx
	movb	%dil, %r11b
	movq	%r12, %rax
	sall	$16, %edx
	leaq	208(%rsp), %rdi
	movb	%cl, %ah
	movq	%r11, %rcx
	sall	$24, %r9d
	movzwl	%ax, %r12d
	movq	%rsi, %rax
	movq	16(%rsp), %rsi
	movb	%al, %ch
	orl	%edx, %r12d
	movzwl	%cx, %r11d
	orl	%r9d, %r12d
	orl	%edx, %r11d
	leal	(%r12,%r12,2), %eax
	orl	%r9d, %r11d
	movslq	%r11d, %rdx
	movl	%r11d, 48(%rsp)
	movl	%eax, 208(%rsp)
	call	set_secure_data.constprop.17
	movzbl	(%rbx), %edi
	movzbl	1(%rbx), %esi
	movl	44(%rsp), %r8d
	movzbl	2(%rbx), %edx
	movzbl	3(%rbx), %r9d
	movb	%dil, %r8b
	movq	%rsi, %rcx
	movq	%r8, %rax
	sall	$16, %edx
	movb	%cl, %ah
	sall	$24, %r9d
	movl	32(%rsp), %ecx
	movzwl	%ax, %r8d
	movq	%rsi, %rax
	movq	(%rsp), %rsi
	orl	%edx, %r8d
	orl	%r9d, %r8d
	movb	%dil, %cl
	leaq	208(%rsp), %rdi
	cvtsi2sd	%r8d, %xmm0
	movb	%al, %ch
	movzwl	%cx, %ecx
	movl	%r8d, 44(%rsp)
	orl	%edx, %ecx
	orl	%r9d, %ecx
	movslq	%ecx, %rdx
	movl	%ecx, 32(%rsp)
	mulsd	.LC73(%rip), %xmm0
	movsd	%xmm0, 208(%rsp)
	call	set_secure_data.constprop.16
	movzbl	(%rbx), %edi
	movzbl	1(%rbx), %esi
	movzbl	2(%rbx), %edx
	movzbl	3(%rbx), %r9d
	movb	%dil, %r15b
	movb	%dil, %r14b
	leaq	208(%rsp), %rdi
	movq	%rsi, %rcx
	movq	%r15, %rax
	sall	$16, %edx
	movb	%cl, %ah
	sall	$24, %r9d
	movq	%r14, %rcx
	movzwl	%ax, %r15d
	movq	%rsi, %rax
	movq	24(%rsp), %rsi
	orl	%edx, %r15d
	movb	%al, %ch
	orl	%r9d, %r15d
	movzwl	%cx, %r14d
	leal	(%r15,%r15), %eax
	orl	%edx, %r14d
	orl	%r9d, %r14d
	cvtsi2ss	%eax, %xmm0
	movslq	%r14d, %rdx
	movss	%xmm0, 208(%rsp)
	call	set_secure_data.constprop.17
	movb	(%rbx), %r13b
	leaq	140(%rsp), %rdi
	movq	%rbx, %rsi
	movzbl	1(%rbx), %eax
	movzbl	2(%rbx), %edx
	movq	%r13, %rcx
	movb	%al, %ch
	movzbl	3(%rbx), %eax
	sall	$16, %edx
	movzwl	%cx, %r13d
	orl	%edx, %r13d
	sall	$24, %eax
	orl	%eax, %r13d
	leal	1(%r13), %eax
	movl	%eax, 140(%rsp)
	call	insert_data_into_mem.constprop.24
	xorl	%eax, %eax
	movl	32(%rsp), %ecx
	xorl	%edx, %edx
	movl	44(%rsp), %r8d
	movl	48(%rsp), %r11d
	movl	52(%rsp), %r9d
	movl	56(%rsp), %r10d
	jmp	.L1029
	.p2align 4,,10
	.p2align 3
.L1011:
	movq	%rsi, %rax
	jmp	.L986
	.p2align 4,,10
	.p2align 3
.L1009:
	movl	$4, %eax
	jmp	.L986
.L1032:
	movl	72(%rsp), %r8d
	movl	60(%rsp), %r13d
	movl	$.LC68, %edi
	movl	64(%rsp), %r14d
	movl	68(%rsp), %r15d
	movl	%r8d, 32(%rsp)
	call	puts
	leaq	144(%rsp), %rdi
	movq	%rbx, %rsi
	movl	$0, 144(%rsp)
	call	insert_data_into_mem.constprop.24
	movl	%r13d, 56(%rsp)
	movl	%r14d, 60(%rsp)
	xorl	%eax, %eax
	movl	%r15d, 64(%rsp)
	xorl	%edx, %edx
	movl	88(%rsp), %r12d
	movl	92(%rsp), %r13d
	movl	96(%rsp), %r14d
	movl	100(%rsp), %r15d
	movl	104(%rsp), %r10d
	movl	108(%rsp), %r11d
	movl	32(%rsp), %r8d
	jmp	.L988
	.p2align 4,,10
	.p2align 3
.L1028:
	movzbl	(%rbx,%rdx), %ecx
	movb	%cl, 208(%rsp,%rax)
	leaq	1(%rax), %rcx
	cmpq	$4, %rcx
	je	.L1012
	movzbl	1(%rbx,%rdx), %esi
	leaq	2(%rax), %rcx
	cmpq	$3, %rcx
	movb	%sil, 209(%rsp,%rax)
	jg	.L1014
	movzbl	2(%rbx,%rdx), %esi
	movb	%sil, 208(%rsp,%rcx)
	leaq	3(%rax), %rcx
	cmpq	$3, %rcx
	jne	.L1014
	movzbl	3(%rbx,%rdx), %ecx
	addq	$4, %rax
	movb	%cl, 211(%rsp)
.L990:
	addq	$9, %rdx
.L988:
	cmpq	$3, %rax
	jle	.L1028
	movzbl	0(%rbp), %edx
	movslq	208(%rsp), %rax
	movb	%dl, 208(%rsp)
	movzbl	1(%rbp), %edx
	movb	%dl, 209(%rsp)
	movzbl	2(%rbp), %edx
	movb	%dl, 210(%rsp)
	movzbl	3(%rbp), %edx
	movb	%dl, 211(%rsp)
	movzbl	9(%rbp), %edx
	movb	%dl, 212(%rsp)
	movzbl	10(%rbp), %edx
	movb	%dl, 213(%rsp)
	movzbl	11(%rbp), %edx
	movb	%dl, 214(%rsp)
	movzbl	12(%rbp), %edx
	movb	%dl, 215(%rsp)
	cmpq	208(%rsp), %rax
	jge	.L1033
	movb	(%rbx), %r8b
	movzbl	1(%rbx), %eax
	leaq	208(%rsp), %rdi
	movzbl	2(%rbx), %edx
	movq	8(%rsp), %rsi
	movl	%r10d, 44(%rsp)
	movl	%r11d, 48(%rsp)
	movq	%r8, %rcx
	movb	%al, %ch
	movzbl	3(%rbx), %eax
	sall	$16, %edx
	movzwl	%cx, %r8d
	orl	%edx, %r8d
	movl	$1, %edx
	sall	$24, %eax
	orl	%eax, %r8d
	movslq	%r8d, %rcx
	movl	%r8d, 52(%rsp)
	call	get_secure_data.constprop.21
	movl	208(%rsp), %eax
	movl	48(%rsp), %r11d
	leaq	208(%rsp), %rdi
	movb	(%rbx), %r11b
	movzbl	1(%rbx), %edx
	movzbl	2(%rbx), %ecx
	movq	16(%rsp), %rsi
	movl	%eax, 32(%rsp)
	movq	%r11, %rax
	movb	%dl, %ah
	movzbl	3(%rbx), %edx
	sall	$16, %ecx
	movzwl	%ax, %r11d
	orl	%ecx, %r11d
	sall	$24, %edx
	orl	%edx, %r11d
	movl	$1, %edx
	movslq	%r11d, %rcx
	movl	%r11d, 48(%rsp)
	call	get_secure_data.constprop.21
	movzbl	1(%rbx), %edx
	movl	44(%rsp), %r10d
	leaq	208(%rsp), %rdi
	movb	(%rbx), %r10b
	movzbl	2(%rbx), %ecx
	movq	8(%rsp), %rsi
	movq	%r10, %rax
	movb	%dl, %ah
	movzbl	3(%rbx), %edx
	sall	$16, %ecx
	movzwl	%ax, %r10d
	movl	32(%rsp), %eax
	addl	%eax, 208(%rsp)
	orl	%ecx, %r10d
	sall	$24, %edx
	orl	%edx, %r10d
	movslq	%r10d, %rdx
	movl	%r10d, 44(%rsp)
	call	set_secure_data.constprop.17
	movb	(%rbx), %r15b
	movzbl	1(%rbx), %eax
	leaq	208(%rsp), %rdi
	movzbl	2(%rbx), %edx
	movq	(%rsp), %rsi
	movq	%r15, %rcx
	movb	%al, %ch
	movzbl	3(%rbx), %eax
	sall	$16, %edx
	movzwl	%cx, %r15d
	orl	%edx, %r15d
	movl	$1, %edx
	sall	$24, %eax
	orl	%eax, %r15d
	movslq	%r15d, %rcx
	call	get_secure_data.constprop.20
	movb	(%rbx), %r14b
	movzbl	1(%rbx), %eax
	leaq	208(%rsp), %rdi
	movzbl	2(%rbx), %edx
	movq	24(%rsp), %rsi
	movsd	208(%rsp), %xmm1
	movq	%r14, %rcx
	movb	%al, %ch
	movzbl	3(%rbx), %eax
	movsd	%xmm1, 32(%rsp)
	sall	$16, %edx
	movzwl	%cx, %r14d
	orl	%edx, %r14d
	movl	$1, %edx
	sall	$24, %eax
	orl	%eax, %r14d
	movslq	%r14d, %rcx
	call	get_secure_data.constprop.21
	movb	(%rbx), %r13b
	movzbl	1(%rbx), %eax
	movss	208(%rsp), %xmm0
	movzbl	2(%rbx), %edx
	movq	(%rsp), %rsi
	leaq	208(%rsp), %rdi
	cvtps2pd	%xmm0, %xmm0
	movq	%r13, %rcx
	movb	%al, %ch
	movzbl	3(%rbx), %eax
	addsd	32(%rsp), %xmm0
	sall	$16, %edx
	movzwl	%cx, %r13d
	orl	%edx, %r13d
	sall	$24, %eax
	orl	%eax, %r13d
	movslq	%r13d, %rdx
	movsd	%xmm0, 208(%rsp)
	call	set_secure_data.constprop.16
	movb	(%rbx), %r12b
	leaq	148(%rsp), %rdi
	movq	%rbx, %rsi
	movzbl	1(%rbx), %eax
	movzbl	2(%rbx), %edx
	movq	%r12, %rcx
	movb	%al, %ch
	movzbl	3(%rbx), %eax
	sall	$16, %edx
	movzwl	%cx, %r12d
	sall	$24, %eax
	orl	%edx, %r12d
	orl	%eax, %r12d
	leal	1(%r12), %eax
	movl	%eax, 148(%rsp)
	call	insert_data_into_mem.constprop.24
	xorl	%eax, %eax
	xorl	%edx, %edx
	movl	44(%rsp), %r10d
	movl	48(%rsp), %r11d
	movl	52(%rsp), %r8d
	jmp	.L1028
	.p2align 4,,10
	.p2align 3
.L1014:
	movq	%rcx, %rax
	jmp	.L990
	.p2align 4,,10
	.p2align 3
.L1012:
	movl	$4, %eax
	jmp	.L990
.L1033:
	movl	$.LC69, %edi
	movl	56(%rsp), %r13d
	movl	60(%rsp), %r14d
	movl	64(%rsp), %r15d
	call	puts
	leaq	152(%rsp), %rdi
	movq	%rbx, %rsi
	movl	$0, 152(%rsp)
	call	insert_data_into_mem.constprop.24
	xorl	%eax, %eax
	movl	%r13d, 32(%rsp)
	movl	%r14d, 44(%rsp)
	xorl	%edx, %edx
	movq	8(%rsp), %r12
	movq	%rax, %rcx
	movl	80(%rsp), %r13d
	movl	84(%rsp), %r14d
	jmp	.L992
	.p2align 4,,10
	.p2align 3
.L1027:
	movzbl	(%rbx,%rdx), %eax
	movb	%al, 208(%rsp,%rcx)
	leaq	1(%rcx), %rax
	cmpq	$4, %rax
	je	.L1015
	movzbl	1(%rbx,%rdx), %esi
	leaq	2(%rcx), %rax
	cmpq	$3, %rax
	movb	%sil, 209(%rsp,%rcx)
	jg	.L1017
	movzbl	2(%rbx,%rdx), %esi
	movb	%sil, 208(%rsp,%rax)
	leaq	3(%rcx), %rax
	cmpq	$3, %rax
	jne	.L1017
	movzbl	3(%rbx,%rdx), %eax
	addq	$4, %rcx
	movb	%al, 211(%rsp)
.L994:
	addq	$9, %rdx
.L992:
	cmpq	$3, %rcx
	jle	.L1027
	movzbl	0(%rbp), %edx
	movslq	208(%rsp), %rax
	movb	%dl, 208(%rsp)
	movzbl	1(%rbp), %edx
	movb	%dl, 209(%rsp)
	movzbl	2(%rbp), %edx
	movb	%dl, 210(%rsp)
	movzbl	3(%rbp), %edx
	movb	%dl, 211(%rsp)
	movzbl	9(%rbp), %edx
	movb	%dl, 212(%rsp)
	movzbl	10(%rbp), %edx
	movb	%dl, 213(%rsp)
	movzbl	11(%rbp), %edx
	movb	%dl, 214(%rsp)
	movzbl	12(%rbp), %edx
	movb	%dl, 215(%rsp)
	cmpq	208(%rsp), %rax
	jge	.L1034
	movb	(%rbx), %r14b
	movzbl	1(%rbx), %eax
	leaq	208(%rsp), %rdi
	movzbl	2(%rbx), %edx
	movq	%r12, %rsi
	movq	%r14, %rcx
	movb	%al, %ch
	movzbl	3(%rbx), %eax
	sall	$16, %edx
	movzwl	%cx, %r14d
	orl	%edx, %r14d
	movl	$1, %edx
	sall	$24, %eax
	orl	%eax, %r14d
	movslq	%r14d, %rcx
	call	get_secure_data.constprop.21
	movl	208(%rsp), %edx
	movl	$.LC24, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movb	(%rbx), %r13b
	movzbl	1(%rbx), %eax
	leaq	156(%rsp), %rdi
	movzbl	2(%rbx), %edx
	movq	%rbx, %rsi
	movq	%r13, %rcx
	movb	%al, %ch
	movzbl	3(%rbx), %eax
	sall	$16, %edx
	movzwl	%cx, %r13d
	orl	%edx, %r13d
	sall	$24, %eax
	orl	%eax, %r13d
	leal	1(%r13), %eax
	movl	%eax, 156(%rsp)
	call	insert_data_into_mem.constprop.24
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.L1027
	.p2align 4,,10
	.p2align 3
.L1017:
	movq	%rax, %rcx
	jmp	.L994
	.p2align 4,,10
	.p2align 3
.L1015:
	movl	$4, %ecx
	jmp	.L994
.L1034:
	movl	$10, %edi
	movl	32(%rsp), %r13d
	movl	44(%rsp), %r14d
	call	putchar
	leaq	160(%rsp), %rdi
	movq	%rbx, %rsi
	movl	$0, 160(%rsp)
	call	insert_data_into_mem.constprop.24
	xorl	%eax, %eax
	xorl	%edx, %edx
	movq	(%rsp), %r12
	movq	%rax, %rcx
	jmp	.L996
	.p2align 4,,10
	.p2align 3
.L1026:
	movzbl	(%rbx,%rdx), %eax
	leaq	1(%rcx), %rdi
	cmpq	$4, %rdi
	movb	%al, 208(%rsp,%rcx)
	je	.L1018
	movzbl	1(%rbx,%rdx), %eax
	movb	%al, 209(%rsp,%rcx)
	leaq	2(%rcx), %rax
	cmpq	$3, %rax
	jg	.L1020
	movzbl	2(%rbx,%rdx), %esi
	movb	%sil, 208(%rsp,%rax)
	leaq	3(%rcx), %rax
	cmpq	$3, %rax
	jne	.L1020
	movzbl	3(%rbx,%rdx), %eax
	addq	$4, %rcx
	movb	%al, 211(%rsp)
.L998:
	addq	$9, %rdx
.L996:
	cmpq	$3, %rcx
	jle	.L1026
	movzbl	0(%rbp), %edx
	movslq	208(%rsp), %rax
	movb	%dl, 208(%rsp)
	movzbl	1(%rbp), %edx
	movb	%dl, 209(%rsp)
	movzbl	2(%rbp), %edx
	movb	%dl, 210(%rsp)
	movzbl	3(%rbp), %edx
	movb	%dl, 211(%rsp)
	movzbl	9(%rbp), %edx
	movb	%dl, 212(%rsp)
	movzbl	10(%rbp), %edx
	movb	%dl, 213(%rsp)
	movzbl	11(%rbp), %edx
	movb	%dl, 214(%rsp)
	movzbl	12(%rbp), %edx
	movb	%dl, 215(%rsp)
	cmpq	208(%rsp), %rax
	jge	.L1035
	movb	(%rbx), %r15b
	movzbl	1(%rbx), %eax
	leaq	208(%rsp), %rdi
	movzbl	2(%rbx), %edx
	movq	%r12, %rsi
	movq	%r15, %rcx
	movb	%al, %ch
	movzbl	3(%rbx), %eax
	sall	$16, %edx
	movzwl	%cx, %r15d
	orl	%edx, %r15d
	movl	$1, %edx
	sall	$24, %eax
	orl	%eax, %r15d
	movslq	%r15d, %rcx
	call	get_secure_data.constprop.20
	movsd	208(%rsp), %xmm0
	movl	$.LC72, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	movb	(%rbx), %r14b
	movzbl	1(%rbx), %eax
	leaq	164(%rsp), %rdi
	movzbl	2(%rbx), %edx
	movq	%rbx, %rsi
	movq	%r14, %rcx
	movb	%al, %ch
	movzbl	3(%rbx), %eax
	sall	$16, %edx
	movzwl	%cx, %r14d
	orl	%edx, %r14d
	sall	$24, %eax
	orl	%eax, %r14d
	leal	1(%r14), %eax
	movl	%eax, 164(%rsp)
	call	insert_data_into_mem.constprop.24
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.L1026
	.p2align 4,,10
	.p2align 3
.L1020:
	movq	%rax, %rcx
	jmp	.L998
	.p2align 4,,10
	.p2align 3
.L1018:
	movl	$4, %ecx
	jmp	.L998
.L1035:
	movl	$10, %edi
	call	putchar
	movl	$.LC70, %edi
	call	puts
	leaq	168(%rsp), %rdi
	movq	%rbx, %rsi
	movl	$0, 168(%rsp)
	call	insert_data_into_mem.constprop.24
	xorl	%eax, %eax
	xorl	%edx, %edx
	movq	(%rsp), %r12
	movq	%rax, %rcx
	movl	76(%rsp), %r14d
	jmp	.L1000
	.p2align 4,,10
	.p2align 3
.L1025:
	movzbl	(%rbx,%rdx), %eax
	leaq	1(%rcx), %rdi
	cmpq	$4, %rdi
	movb	%al, 176(%rsp,%rcx)
	je	.L1021
	movzbl	1(%rbx,%rdx), %eax
	leaq	2(%rcx), %rdi
	cmpq	$3, %rdi
	movb	%al, 177(%rsp,%rcx)
	jg	.L1022
	movzbl	2(%rbx,%rdx), %eax
	movb	%al, 176(%rsp,%rdi)
	leaq	3(%rcx), %rax
	cmpq	$3, %rax
	jne	.L1023
	movzbl	3(%rbx,%rdx), %eax
	addq	$4, %rcx
	movb	%al, 179(%rsp)
.L1002:
	addq	$9, %rdx
.L1000:
	cmpq	$3, %rcx
	jle	.L1025
	movzbl	0(%rbp), %edx
	movslq	176(%rsp), %rax
	movb	%dl, 176(%rsp)
	movzbl	1(%rbp), %edx
	movb	%dl, 177(%rsp)
	movzbl	2(%rbp), %edx
	movb	%dl, 178(%rsp)
	movzbl	3(%rbp), %edx
	movb	%dl, 179(%rsp)
	movzbl	9(%rbp), %edx
	movb	%dl, 180(%rsp)
	movzbl	10(%rbp), %edx
	movb	%dl, 181(%rsp)
	movzbl	11(%rbp), %edx
	movb	%dl, 182(%rsp)
	movzbl	12(%rbp), %edx
	movb	%dl, 183(%rsp)
	cmpq	176(%rsp), %rax
	jge	.L1036
	movb	(%rbx), %r14b
	movzbl	1(%rbx), %eax
	leaq	208(%rsp), %rdi
	movzbl	2(%rbx), %edx
	movq	%r12, %rsi
	movq	%r14, %rcx
	movb	%al, %ch
	movzbl	3(%rbx), %eax
	sall	$16, %edx
	movzwl	%cx, %r14d
	orl	%edx, %r14d
	movl	$2, %edx
	sall	$24, %eax
	orl	%eax, %r14d
	movslq	%r14d, %rcx
	salq	$3, %rcx
	call	get_secure_data.constprop.20
	movsd	208(%rsp), %xmm0
	movl	$.LC72, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	movb	(%rbx), %r13b
	movzbl	1(%rbx), %eax
	leaq	172(%rsp), %rdi
	movzbl	2(%rbx), %edx
	movq	%rbx, %rsi
	movq	%r13, %rcx
	movb	%al, %ch
	movzbl	3(%rbx), %eax
	sall	$16, %edx
	movzwl	%cx, %r13d
	orl	%edx, %r13d
	sall	$24, %eax
	orl	%eax, %r13d
	leal	1(%r13), %eax
	movl	%eax, 172(%rsp)
	call	insert_data_into_mem.constprop.24
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.L1025
	.p2align 4,,10
	.p2align 3
.L1021:
	movl	$4, %ecx
	jmp	.L1002
	.p2align 4,,10
	.p2align 3
.L1022:
	movq	%rdi, %rcx
	jmp	.L1002
	.p2align 4,,10
	.p2align 3
.L1023:
	movq	%rax, %rcx
	jmp	.L1002
.L1036:
	movl	$10, %edi
	call	putchar
	movl	$.LC71, %edi
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
.L1031:
	.cfi_restore_state
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
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	movq	%rdi, (%rsp)
	movl	$4, %edi
	movl	%r11d, 32(%rsp)
	movl	%r10d, 24(%rsp)
	movl	%r9d, 16(%rsp)
	movl	%r8d, 8(%rsp)
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	movl	8(%rsp), %r8d
	movl	16(%rsp), %r9d
	movl	24(%rsp), %r10d
	movl	32(%rsp), %r11d
	je	.L1054
	movl	$8, %edi
	movl	%r11d, 32(%rsp)
	movl	%r10d, 24(%rsp)
	movl	%r9d, 16(%rsp)
	movl	%r8d, 8(%rsp)
	call	managed_secure_malloc
	testq	%rax, %rax
	movq	%rax, %rbp
	movl	8(%rsp), %r8d
	movl	16(%rsp), %r9d
	movl	24(%rsp), %r10d
	movl	32(%rsp), %r11d
	je	.L1055
	movq	(%rsp), %rax
	leaq	80(%rsp), %rsi
	movq	%rbp, %rdx
	movl	$8, %edi
	movl	%r11d, 52(%rsp)
	movl	%r10d, 48(%rsp)
	movl	%r9d, 44(%rsp)
	movl	%r8d, 40(%rsp)
	movq	%rax, 80(%rsp)
	call	insert_data_into_mem
	leaq	96(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rbp, %rsi
	call	get_secure_data.constprop.20
	movq	96(%rsp), %rax
	movl	$461, %edx
	movl	$__func__.6234, %esi
	leaq	0(,%rax,4), %rdi
	call	error_checking_managed_secure_malloc
	leaq	96(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movq	%rax, 24(%rsp)
	call	get_secure_data.constprop.20
	movq	96(%rsp), %rax
	movl	$462, %edx
	movl	$__func__.6234, %esi
	leaq	0(,%rax,4), %rdi
	call	error_checking_managed_secure_malloc
	movq	%rax, 32(%rsp)
	leaq	1(%rbx), %rax
	movl	40(%rsp), %r8d
	movl	44(%rsp), %r9d
	movl	48(%rsp), %r10d
	movq	%rax, 8(%rsp)
	leaq	2(%rbx), %rax
	movl	52(%rsp), %r11d
	movl	$100000, 60(%rsp)
	movq	%rax, 16(%rsp)
	leaq	3(%rbx), %rax
	movq	%rax, (%rsp)
	movl	%r8d, %eax
.L1046:
	movq	8(%rsp), %rdi
	movb	$0, (%rbx)
	xorl	%edx, %edx
	movl	$0, 72(%rsp)
	xorl	%ecx, %ecx
	movb	$0, (%rdi)
	movq	16(%rsp), %rdi
	movb	$0, (%rdi)
	movq	(%rsp), %rdi
	movb	$0, (%rdi)
	jmp	.L1041
	.p2align 4,,10
	.p2align 3
.L1052:
	movzbl	(%rbx,%rcx), %esi
	movb	%sil, 96(%rsp,%rdx)
	leaq	1(%rdx), %rsi
	cmpq	$4, %rsi
	je	.L1048
	movzbl	1(%rbx,%rcx), %edi
	leaq	2(%rdx), %rsi
	cmpq	$3, %rsi
	movb	%dil, 97(%rsp,%rdx)
	jg	.L1050
	movzbl	2(%rbx,%rcx), %edi
	movb	%dil, 96(%rsp,%rsi)
	leaq	3(%rdx), %rsi
	cmpq	$3, %rsi
	jne	.L1050
	movzbl	3(%rbx,%rcx), %esi
	addq	$4, %rdx
	movb	%sil, 99(%rsp)
.L1043:
	addq	$9, %rcx
.L1041:
	cmpq	$3, %rdx
	jle	.L1052
	movzbl	0(%rbp), %ecx
	movslq	96(%rsp), %rdx
	movb	%cl, 96(%rsp)
	movzbl	1(%rbp), %ecx
	movb	%cl, 97(%rsp)
	movzbl	2(%rbp), %ecx
	movb	%cl, 98(%rsp)
	movzbl	3(%rbp), %ecx
	movb	%cl, 99(%rsp)
	movzbl	9(%rbp), %ecx
	movb	%cl, 100(%rsp)
	movzbl	10(%rbp), %ecx
	movb	%cl, 101(%rsp)
	movzbl	11(%rbp), %ecx
	movb	%cl, 102(%rsp)
	movzbl	12(%rbp), %ecx
	movb	%cl, 103(%rsp)
	cmpq	96(%rsp), %rdx
	jge	.L1056
	movl	%eax, 40(%rsp)
	movq	8(%rsp), %rax
	movzbl	(%rbx), %edi
	movq	(%rsp), %rdx
	movl	%r9d, 44(%rsp)
	movzbl	(%rax), %esi
	movzbl	(%rdx), %r8d
	movb	%dil, %r11b
	movb	%dil, %r10b
	leaq	96(%rsp), %rdi
	movq	%r11, %rax
	movq	%rsi, %rcx
	movq	%rsi, %rdx
	movq	24(%rsp), %rsi
	movb	%cl, %ah
	movq	16(%rsp), %rcx
	sall	$24, %r8d
	movzwl	%ax, %r11d
	movq	%r10, %rax
	movb	%dl, %ah
	movzbl	(%rcx), %ecx
	movzwl	%ax, %r10d
	sall	$16, %ecx
	orl	%ecx, %r11d
	orl	%ecx, %r10d
	orl	%r8d, %r11d
	orl	%r8d, %r10d
	leal	(%r11,%r11), %edx
	movl	%r11d, 56(%rsp)
	movl	%r10d, 52(%rsp)
	movl	%edx, 96(%rsp)
	movslq	%r10d, %rdx
	call	set_secure_data.constprop.17
	movq	8(%rsp), %rax
	movzbl	(%rbx), %edi
	movq	(%rsp), %rdx
	movl	44(%rsp), %r9d
	movzbl	(%rax), %esi
	movb	%dil, %r12b
	movzbl	(%rdx), %r10d
	movb	%dil, %r9b
	movq	%r12, %rax
	leaq	96(%rsp), %rdi
	movq	%rsi, %rcx
	movq	%rsi, %rdx
	movq	32(%rsp), %rsi
	movb	%cl, %ah
	movq	16(%rsp), %rcx
	sall	$24, %r10d
	movzwl	%ax, %r12d
	movq	%r9, %rax
	movb	%dl, %ah
	movzbl	(%rcx), %ecx
	movzwl	%ax, %r9d
	sall	$16, %ecx
	orl	%ecx, %r12d
	orl	%ecx, %r9d
	orl	%r10d, %r12d
	orl	%r10d, %r9d
	leal	(%r12,%r12,2), %edx
	movl	%r9d, 48(%rsp)
	movl	%edx, 96(%rsp)
	movslq	%r9d, %rdx
	call	set_secure_data.constprop.17
	movq	8(%rsp), %rdi
	movl	40(%rsp), %eax
	leaq	96(%rsp), %r8
	movb	(%rbx), %al
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rsi
	movzbl	(%rdi), %edx
	movq	%r8, %rdi
	movzbl	(%rcx), %ecx
	movb	%dl, %ah
	movq	(%rsp), %rdx
	sall	$16, %ecx
	movzwl	%ax, %eax
	orl	%ecx, %eax
	movzbl	(%rdx), %edx
	sall	$24, %edx
	orl	%edx, %eax
	movl	$1, %edx
	movslq	%eax, %rcx
	movl	%eax, 44(%rsp)
	call	get_secure_data.constprop.21
	movq	8(%rsp), %rdi
	movb	(%rbx), %r15b
	movq	16(%rsp), %rcx
	movl	96(%rsp), %r8d
	movq	32(%rsp), %rsi
	movzbl	(%rdi), %edx
	movq	%r15, %rax
	movzbl	(%rcx), %ecx
	movl	%r8d, 40(%rsp)
	leaq	96(%rsp), %r8
	movq	%r8, %rdi
	movb	%dl, %ah
	movq	(%rsp), %rdx
	sall	$16, %ecx
	movzwl	%ax, %r15d
	orl	%ecx, %r15d
	movzbl	(%rdx), %edx
	sall	$24, %edx
	orl	%edx, %r15d
	movl	$1, %edx
	movslq	%r15d, %rcx
	call	get_secure_data.constprop.21
	movq	8(%rsp), %rdi
	movb	(%rbx), %r14b
	movq	16(%rsp), %rcx
	movl	40(%rsp), %r8d
	movq	24(%rsp), %rsi
	movzbl	(%rdi), %edx
	movq	%r14, %rax
	movzbl	(%rcx), %ecx
	movb	%dl, %ah
	movq	(%rsp), %rdx
	sall	$16, %ecx
	movzwl	%ax, %r14d
	orl	%ecx, %r14d
	movzbl	(%rdx), %edx
	addl	%r8d, 96(%rsp)
	leaq	96(%rsp), %r8
	movq	%r8, %rdi
	sall	$24, %edx
	orl	%edx, %r14d
	movslq	%r14d, %rdx
	call	set_secure_data.constprop.17
	movq	8(%rsp), %rdi
	movb	(%rbx), %r13b
	movq	(%rsp), %rsi
	movl	48(%rsp), %r9d
	movl	52(%rsp), %r10d
	movl	56(%rsp), %r11d
	movzbl	(%rdi), %edx
	movq	%r13, %rax
	movb	%dl, %ah
	movzbl	(%rsi), %edx
	movq	%rax, %r13
	movq	16(%rsp), %rax
	movzwl	%r13w, %r13d
	movzbl	(%rax), %ecx
	sall	$24, %edx
	sall	$16, %ecx
	orl	%ecx, %r13d
	orl	%edx, %r13d
	leal	1(%r13), %edx
	movl	%edx, %ecx
	movb	%dl, (%rbx)
	movl	%edx, 76(%rsp)
	shrw	$8, %cx
	movb	%cl, (%rdi)
	movl	%edx, %edi
	shrl	$24, %edx
	shrl	$16, %edi
	xorl	%ecx, %ecx
	movb	%dil, (%rax)
	movb	%dl, (%rsi)
	xorl	%edx, %edx
	movl	44(%rsp), %eax
	jmp	.L1052
	.p2align 4,,10
	.p2align 3
.L1050:
	movq	%rsi, %rdx
	jmp	.L1043
	.p2align 4,,10
	.p2align 3
.L1048:
	movl	$4, %edx
	jmp	.L1043
.L1056:
	subl	$1, 60(%rsp)
	jne	.L1046
	movq	%rbx, %rdi
	call	managed_secure_free
	movq	%rbp, %rdi
	call	managed_secure_free
	movq	24(%rsp), %rdi
	call	managed_secure_free
	movq	32(%rsp), %rdi
	call	managed_secure_free
	addq	$120, %rsp
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
.L1055:
	.cfi_restore_state
	movl	$458, %esi
	movl	$__func__.6234, %edi
	call	error_checking_managed_secure_malloc.part.3
.L1054:
	movl	$457, %esi
	movl	$__func__.6234, %edi
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
	je	.L1067
	movq	%rbx, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L1071
	movq	%rax, %r14
.L1058:
	testl	%r12d, %r12d
	jle	.L1062
	movq	%rbx, %rdx
	xorl	%esi, %esi
	movq	%r14, %rdi
	call	memset
.L1062:
	xorpd	%xmm3, %xmm3
	xorl	%ebx, %ebx
	testl	%r13d, %r13d
	movsd	%xmm3, (%rsp)
	jg	.L1069
	jmp	.L1061
	.p2align 4,,10
	.p2align 3
.L1063:
	movsd	(%rsp), %xmm1
	addl	$1, %ebx
	addsd	(%rdi), %xmm1
	movsd	%xmm1, (%rsp)
	call	free
	cmpl	%r13d, %ebx
	movq	$0, 0(%rbp)
	je	.L1061
.L1069:
	call	rand
	cltd
	idivl	%r12d
	movslq	%edx, %rax
	leaq	(%r14,%rax,8), %rbp
	movq	0(%rbp), %rdi
	testq	%rdi, %rdi
	jne	.L1063
	movb	$8, %dil
	movl	%edx, 12(%rsp)
	call	malloc
	testq	%rax, %rax
	movl	12(%rsp), %edx
	je	.L1072
	cvtsi2sd	%edx, %xmm0
	addl	$1, %ebx
	movq	%rax, 0(%rbp)
	cmpl	%r13d, %ebx
	movsd	%xmm0, (%rax)
	jne	.L1069
	.p2align 4,,10
	.p2align 3
.L1061:
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
.L1067:
	.cfi_restore_state
	xorl	%r14d, %r14d
	jmp	.L1058
.L1072:
	movl	$501, %esi
	movl	$__func__.6249, %edi
	call	error_checking_malloc.part.0
.L1071:
	movl	$489, %esi
	movl	$__func__.6249, %edi
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
	movl	%esi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	call	time
	movl	%eax, %edi
	call	srand
	movslq	%r12d, %rdi
	salq	$3, %rdi
	testq	%rdi, %rdi
	je	.L1084
	call	managed_secure_malloc
	testq	%rax, %rax
	je	.L1088
	movq	%rax, %rbp
.L1074:
	testl	%r12d, %r12d
	jle	.L1078
	leal	-1(%r12), %eax
	xorl	%edx, %edx
	leaq	8(,%rax,8), %rsi
	.p2align 4,,10
	.p2align 3
.L1079:
	movq	%rdx, %rax
	movq	$0, 16(%rsp)
	addq	$8, %rdx
	sarq	$2, %rax
	leaq	(%rax,%rax,8), %rax
	addq	%rbp, %rax
	cmpq	%rsi, %rdx
	movb	$0, (%rax)
	movzbl	17(%rsp), %ecx
	movb	%cl, 1(%rax)
	movzbl	18(%rsp), %ecx
	movb	%cl, 2(%rax)
	movzbl	19(%rsp), %ecx
	movb	%cl, 3(%rax)
	movzbl	20(%rsp), %ecx
	movb	%cl, 9(%rax)
	movzbl	21(%rsp), %ecx
	movb	%cl, 10(%rax)
	movzbl	22(%rsp), %ecx
	movb	%cl, 11(%rax)
	movzbl	23(%rsp), %ecx
	movb	%cl, 12(%rax)
	jne	.L1079
.L1078:
	xorpd	%xmm3, %xmm3
	xorl	%r14d, %r14d
	testl	%r13d, %r13d
	movsd	%xmm3, (%rsp)
	jg	.L1086
	jmp	.L1077
	.p2align 4,,10
	.p2align 3
.L1080:
	leaq	16(%rsp), %rdi
	movq	%r15, %rcx
	movl	$1, %edx
	movq	%rbp, %rsi
	addl	$1, %r14d
	call	get_secure_data.constprop.20
	movq	16(%rsp), %rsi
	leaq	16(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	get_secure_data.constprop.20
	movsd	(%rsp), %xmm1
	leaq	16(%rsp), %rdi
	movq	%r15, %rcx
	movl	$1, %edx
	movq	%rbp, %rsi
	addsd	16(%rsp), %xmm1
	movsd	%xmm1, (%rsp)
	call	get_secure_data.constprop.20
	movq	16(%rsp), %rdi
	call	managed_secure_free
	movq	$0, 16(%rsp)
	movb	$0, (%rbx)
	cmpl	%r13d, %r14d
	movzbl	17(%rsp), %eax
	movb	%al, 1(%rbx)
	movzbl	18(%rsp), %eax
	movb	%al, 2(%rbx)
	movzbl	19(%rsp), %eax
	movb	%al, 3(%rbx)
	movzbl	20(%rsp), %eax
	movb	%al, 9(%rbx)
	movzbl	21(%rsp), %eax
	movb	%al, 10(%rbx)
	movzbl	22(%rsp), %eax
	movb	%al, 11(%rbx)
	movzbl	23(%rsp), %eax
	movb	%al, 12(%rbx)
	je	.L1077
.L1086:
	call	rand
	cltd
	idivl	%r12d
	movslq	%edx, %r15
	leaq	0(,%r15,8), %rsi
	leaq	3(%rsi), %r8
	testq	%rsi, %rsi
	cmovns	%rsi, %r8
	sarq	$2, %r8
	leaq	(%r8,%r8,8), %rbx
	addq	%rbp, %rbx
	movzbl	(%rbx), %eax
	movb	%al, 16(%rsp)
	movzbl	1(%rbx), %eax
	movb	%al, 17(%rsp)
	movzbl	2(%rbx), %eax
	movb	%al, 18(%rsp)
	movzbl	3(%rbx), %eax
	movb	%al, 19(%rsp)
	movzbl	9(%rbx), %eax
	movb	%al, 20(%rsp)
	movzbl	10(%rbx), %eax
	movb	%al, 21(%rsp)
	movzbl	11(%rbx), %eax
	movb	%al, 22(%rsp)
	movzbl	12(%rbx), %eax
	movb	%al, 23(%rsp)
	cmpq	$0, 16(%rsp)
	jne	.L1080
	movl	$8, %edi
	movl	%edx, 12(%rsp)
	call	managed_secure_malloc
	testq	%rax, %rax
	movl	12(%rsp), %r9d
	je	.L1089
	leaq	16(%rsp), %rdi
	movq	%r15, %rdx
	movq	%rbp, %rsi
	movl	%r9d, 12(%rsp)
	movq	%rax, 16(%rsp)
	addl	$1, %r14d
	call	set_secure_data.constprop.16
	leaq	16(%rsp), %rdi
	movq	%r15, %rcx
	movl	$1, %edx
	movq	%rbp, %rsi
	call	get_secure_data.constprop.20
	movl	12(%rsp), %r9d
	movq	16(%rsp), %rsi
	leaq	16(%rsp), %rdi
	xorl	%edx, %edx
	cvtsi2sd	%r9d, %xmm0
	movsd	%xmm0, 16(%rsp)
	call	set_secure_data.constprop.16
	cmpl	%r13d, %r14d
	jne	.L1086
	.p2align 4,,10
	.p2align 3
.L1077:
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
.L1084:
	.cfi_restore_state
	xorl	%ebp, %ebp
	jmp	.L1074
.L1089:
	movl	$540, %esi
	movl	$__func__.6264, %edi
	call	error_checking_managed_secure_malloc.part.3
.L1088:
	movl	$528, %esi
	movl	$__func__.6264, %edi
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
	addq	$5, %rdi
	movabsq	$2049638230412172402, %rdx
	movq	%rdi, %rax
	sarq	$63, %rdi
	imulq	%rdx
	subq	%rdi, %rdx
	movq	%rdx, %rax
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
	jne	.L1096
	movq	stack_keyshare_input_file(%rip), %rcx
	movl	$1, %edx
	movl	$1, %esi
	movq	%rsp, %rdi
	call	fread
	cmpq	$1, %rax
	jne	.L1097
	movzbl	(%rsp), %eax
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L1096:
	.cfi_restore_state
	movl	$.LC78, %edi
	call	perror
	movl	$45, %edi
	call	exit
.L1097:
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
	movl	$5000008, %edi
	call	malloc
	testq	%rax, %rax
	je	.L1101
	movq	$5000008, total_stack_bytes_allocated(%rip)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L1101:
	.cfi_restore_state
	movl	$143, %esi
	movl	$__func__.6321, %edi
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
.L1104:
	cmpq	total_stack_bytes_allocated(%rip), %rbx
	jge	.L1113
.L1110:
	testl	%eax, %eax
	jne	.L1105
	movb	$0, 0(%rbp,%rbx)
	movb	$0, 1(%rbp,%rbx)
	movb	$0, 2(%rbp,%rbx)
	movb	$0, 3(%rbp,%rbx)
	addq	$4, %rbx
.L1106:
	cmpq	$5, %r12
	movl	$1, %eax
	jne	.L1104
	xorl	%eax, %eax
	xorl	%r12d, %r12d
	cmpq	total_stack_bytes_allocated(%rip), %rbx
	jl	.L1110
.L1113:
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
.L1105:
	.cfi_restore_state
	movq	stack_keyshare_input_file(%rip), %rdi
	leaq	0(%rbp,%rbx), %r13
	call	feof
	testl	%eax, %eax
	jne	.L1114
	movq	stack_keyshare_input_file(%rip), %rcx
	movl	$1, %edx
	movl	$1, %esi
	movq	%rsp, %rdi
	call	fread
	cmpq	$1, %rax
	jne	.L1115
	movzbl	(%rsp), %eax
	addq	$1, %r12
	addq	$1, %rbx
	movb	%al, 0(%r13)
	jmp	.L1106
.L1114:
	movl	$.LC78, %edi
	call	perror
	movl	$45, %edi
	call	exit
.L1115:
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
	movl	$5000008, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L1120
	movl	$.LC11, %esi
	movl	$.LC80, %edi
	movq	$5000008, total_stack_bytes_allocated(%rip)
	call	fopen
	testq	%rax, %rax
	movq	%rax, stack_keyshare_input_file(%rip)
	je	.L1121
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
.L1120:
	.cfi_restore_state
	movl	$143, %esi
	movl	$__func__.6321, %edi
	call	error_checking_malloc.part.0
.L1121:
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	jle	.L1126
	leaq	-1(%rdi), %rax
	movq	%rdx, %r9
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	xorl	%ebx, %ebx
	shrq	$2, %rax
	leaq	9(%rax,%rax,8), %r10
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1125:
	leaq	0(,%rbx,4), %r8
	addq	$1, %rbx
	cmpq	$4, %rdx
	jg	.L1124
	leaq	(%r9,%rax), %rdi
	addq	%r8, %rsi
	call	memcpy
.L1123:
	movq	%rbx, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1124:
	.cfi_restore_state
	movl	(%rcx), %edi
	subq	$4, %rdx
	addq	$4, %rcx
	movl	%edi, (%r9,%rax)
	addq	$9, %rax
	cmpq	%r10, %rax
	jne	.L1125
	jmp	.L1123
	.p2align 4,,10
	.p2align 3
.L1126:
	xorl	%ebx, %ebx
	jmp	.L1123
	.cfi_endproc
.LFE151:
	.size	insert_data_into_stack_mem, .-insert_data_into_stack_mem
	.p2align 4,,15
	.globl	get_secure_stack_data
	.type	get_secure_stack_data, @function
get_secure_stack_data:
.LFB152:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	cmpl	$2, %ecx
	movq	%rdi, %r10
	movq	%rdx, %r9
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	je	.L1137
	xorl	%ebx, %ebx
	testl	%ecx, %ecx
	movq	%rsi, %rax
	jne	.L1129
.L1130:
	cmpq	%rbx, %rbp
	jle	.L1128
	leaq	-1(%rbp), %rsi
	movq	%rbp, %rdx
	xorl	%eax, %eax
	subq	%rbx, %rdx
	subq	%rbx, %rsi
	shrq	$2, %rsi
	leaq	9(%rsi,%rsi,8), %rsi
	.p2align 4,,10
	.p2align 3
.L1136:
	cmpq	$4, %rdx
	jg	.L1134
	leaq	(%r10,%rbx), %rdi
	leaq	(%r9,%rax), %rsi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	memcpy
	.p2align 4,,10
	.p2align 3
.L1134:
	.cfi_restore_state
	movl	(%r9,%rax), %ecx
	addq	$9, %rax
	subq	$4, %rdx
	movl	%ecx, (%r10,%rbx)
	addq	$4, %rbx
	cmpq	%rsi, %rax
	jne	.L1136
.L1128:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1137:
	.cfi_restore_state
	movl	$1, %eax
.L1129:
	imulq	%rax, %r8
	leaq	3(%r8), %rdx
	testq	%r8, %r8
	cmovns	%r8, %rdx
	sarq	$2, %rdx
	leaq	0(,%rdx,4), %rax
	cmpq	%rax, %r8
	je	.L1141
	leaq	(%rdx,%rdx,8), %r12
	negq	%rdx
	movl	$4, %ebx
	leaq	(%r8,%rdx,4), %rsi
	movq	%r10, %rdi
	addq	%r9, %r12
	subq	%rsi, %rbx
	cmpq	%rbp, %rbx
	cmovg	%rbp, %rbx
	addq	%r12, %rsi
	movq	%rbx, %rdx
	call	memcpy
	leaq	9(%r12), %r9
	movq	%rax, %r10
	jmp	.L1130
	.p2align 4,,10
	.p2align 3
.L1141:
	leaq	(%rdx,%rdx,8), %rax
	xorl	%ebx, %ebx
	addq	%rax, %r9
	jmp	.L1130
	.cfi_endproc
.LFE152:
	.size	get_secure_stack_data, .-get_secure_stack_data
	.p2align 4,,15
	.globl	set_secure_stack_data
	.type	set_secure_stack_data, @function
set_secure_stack_data:
.LFB153:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdx, %r9
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	cmpl	$2, %ecx
	je	.L1151
	xorl	%ebx, %ebx
	testl	%ecx, %ecx
	movq	%rsi, %rax
	jne	.L1143
.L1144:
	cmpq	%rbx, %r12
	jle	.L1142
	leaq	-1(%r12), %rsi
	movq	%r12, %rdx
	xorl	%eax, %eax
	subq	%rbx, %rdx
	subq	%rbx, %rsi
	shrq	$2, %rsi
	leaq	9(%rsi,%rsi,8), %rsi
	.p2align 4,,10
	.p2align 3
.L1150:
	cmpq	$4, %rdx
	jg	.L1148
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	leaq	0(%rbp,%rbx), %rsi
	leaq	(%r9,%rax), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	memcpy
	.p2align 4,,10
	.p2align 3
.L1148:
	.cfi_restore_state
	movl	0(%rbp,%rbx), %ecx
	subq	$4, %rdx
	addq	$4, %rbx
	movl	%ecx, (%r9,%rax)
	addq	$9, %rax
	cmpq	%rsi, %rax
	jne	.L1150
.L1142:
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
.L1151:
	.cfi_restore_state
	movl	$1, %eax
.L1143:
	imulq	%rax, %r8
	leaq	3(%r8), %rdx
	testq	%r8, %r8
	cmovns	%r8, %rdx
	sarq	$2, %rdx
	leaq	0(,%rdx,4), %rax
	cmpq	%rax, %r8
	je	.L1155
	leaq	(%rdx,%rdx,8), %r13
	negq	%rdx
	movl	$4, %ebx
	leaq	(%r8,%rdx,4), %rdi
	movq	%rbp, %rsi
	addq	%r9, %r13
	subq	%rdi, %rbx
	cmpq	%r12, %rbx
	cmovg	%r12, %rbx
	addq	%r13, %rdi
	movq	%rbx, %rdx
	call	memcpy
	leaq	9(%r13), %r9
	jmp	.L1144
	.p2align 4,,10
	.p2align 3
.L1155:
	leaq	(%rdx,%rdx,8), %rax
	xorl	%ebx, %ebx
	addq	%rax, %r9
	jmp	.L1144
	.cfi_endproc
.LFE153:
	.size	set_secure_stack_data, .-set_secure_stack_data
	.section	.rodata.str1.8
	.align 8
.LC82:
	.string	"Error:Attempted to allocate more memory than the secure stack size.\n"
	.text
	.p2align 4,,15
	.globl	allocate_mem_into_secure_stack
	.type	allocate_mem_into_secure_stack, @function
allocate_mem_into_secure_stack:
.LFB154:
	.cfi_startproc
	testq	%rdi, %rdi
	movq	last_unused_stack_memory(%rip), %rdx
	je	.L1164
	leaq	3(%rdi), %rax
	testq	%rdi, %rdi
	cmovns	%rdi, %rax
	sarq	$2, %rax
	leaq	0(,%rax,4), %rsi
	leaq	1(%rax), %rcx
	cmpq	%rsi, %rdi
	cmovg	%rcx, %rax
	movq	entire_stack_memory_chunk(%rip), %rcx
	addq	total_stack_bytes_allocated(%rip), %rcx
	leaq	(%rax,%rax,8), %rdi
	leaq	(%rdx,%rdi), %rsi
	cmpq	%rcx, %rsi
	movq	%rsi, last_unused_stack_memory(%rip)
	jnb	.L1165
	ret
	.p2align 4,,10
	.p2align 3
.L1164:
	xorl	%eax, %eax
	xorl	%edx, %edx
	ret
	.p2align 4,,10
	.p2align 3
.L1165:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rcx
	subq	%rdi, %rsi
	movq	%rsi, last_unused_stack_memory(%rip)
	movl	$68, %edx
	movl	$1, %esi
	movl	$.LC82, %edi
	call	fwrite
	xorl	%eax, %eax
	xorl	%edx, %edx
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
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
	leaq	3(%rdi), %rax
	testq	%rdi, %rdi
	cmovns	%rdi, %rax
	sarq	$2, %rax
	leaq	0(,%rax,4), %rcx
	leaq	1(%rax), %rdx
	cmpq	%rcx, %rdi
	cmovg	%rdx, %rax
	leaq	(%rax,%rax,8), %rax
	subq	%rax, last_unused_stack_memory(%rip)
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
	leaq	(%rdi,%rdi,8), %rax
	subq	%rax, last_unused_stack_memory(%rip)
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
	je	.L1170
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm1, 112(%rsp)
	movaps	%xmm2, 128(%rsp)
	movaps	%xmm3, 144(%rsp)
	movaps	%xmm4, 160(%rsp)
	movaps	%xmm5, 176(%rsp)
	movaps	%xmm6, 192(%rsp)
	movaps	%xmm7, 208(%rsp)
.L1170:
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
	je	.L1260
	testl	%ebx, %ebx
	jne	.L1261
	movq	$0, 16(%rax)
	xorl	%r12d, %r12d
.L1176:
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
.L1261:
	.cfi_restore_state
	movl	$128, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r14
	je	.L1262
	movl	16(%rsp), %edx
	movq	%rax, 16(%r13)
	cmpl	$48, %edx
	jnb	.L1174
	movl	%edx, %eax
	addq	32(%rsp), %rax
	addl	$8, %edx
	movl	%edx, 16(%rsp)
	movq	(%rax), %rbp
	testq	%rbp, %rbp
	movq	%rbp, (%r14)
	jne	.L1263
.L1178:
	movl	16(%rsp), %ebx
	movq	$0, 8(%r14)
.L1181:
	cmpl	$47, %ebx
	ja	.L1186
.L1273:
	movl	%ebx, %eax
	addq	32(%rsp), %rax
	addl	$8, %ebx
	movl	%ebx, 16(%rsp)
.L1187:
	movq	(%rax), %r12
	leaq	0(,%r12,4), %r15
	movq	%r12, 16(%r14)
	addq	%r15, %rbp
	testq	%r12, %r12
	jne	.L1264
	movl	16(%rsp), %r12d
	movq	$0, 24(%r14)
.L1190:
	cmpl	$47, %r12d
	ja	.L1193
	movl	%r12d, %eax
	addq	32(%rsp), %rax
	addl	$8, %r12d
	movl	%r12d, 16(%rsp)
.L1194:
	movq	(%rax), %r15
	leaq	0(,%r15,8), %r9
	testq	%r15, %r15
	movq	%r15, 32(%r14)
	leaq	0(%rbp,%r9), %rbx
	jne	.L1265
	movl	16(%rsp), %ebp
	movq	$0, 40(%r14)
.L1197:
	cmpl	$47, %ebp
	ja	.L1200
	movl	%ebp, %eax
	addq	32(%rsp), %rax
	addl	$8, %ebp
	movl	%ebp, 16(%rsp)
.L1201:
	movq	(%rax), %r15
	leaq	0(,%r15,4), %r11
	testq	%r15, %r15
	movq	%r15, 48(%r14)
	leaq	(%rbx,%r11), %r12
	jne	.L1266
	movl	16(%rsp), %ebp
	movq	$0, 56(%r14)
.L1204:
	cmpl	$47, %ebp
	ja	.L1207
	movl	%ebp, %eax
	addq	32(%rsp), %rax
	addl	$8, %ebp
	movl	%ebp, 16(%rsp)
.L1208:
	movq	(%rax), %rbx
	leaq	0(,%rbx,8), %r15
	movq	%rbx, 64(%r14)
	addq	%r15, %r12
	testq	%rbx, %rbx
	jne	.L1267
	movl	16(%rsp), %ebp
	movq	$0, 72(%r14)
.L1211:
	cmpl	$47, %ebp
	ja	.L1214
	movl	%ebp, %eax
	addq	32(%rsp), %rax
	addl	$8, %ebp
	movl	%ebp, 16(%rsp)
.L1215:
	movq	(%rax), %r15
	leaq	0(,%r15,8), %r9
	movq	%r15, 80(%r14)
	addq	%r9, %r12
	testq	%r15, %r15
	jne	.L1268
	movl	16(%rsp), %ebx
	movq	$0, 88(%r14)
	movq	$0, 96(%r14)
.L1222:
	cmpl	$47, %ebx
	ja	.L1227
	movl	%ebx, %eax
	addq	32(%rsp), %rax
	addl	$8, %ebx
	movl	%ebx, 16(%rsp)
	movq	(%rax), %r15
	testq	%r15, %r15
	movq	%r15, 104(%r14)
	jne	.L1269
.L1229:
	movq	$0, 112(%r14)
	movq	$0, 120(%r14)
	jmp	.L1176
	.p2align 4,,10
	.p2align 3
.L1174:
	movq	24(%rsp), %rax
	movq	(%rax), %rbp
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	testq	%rbp, %rbp
	movq	%rbp, (%r14)
	je	.L1178
.L1263:
	movq	%rbp, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L1270
	testq	%rbp, %rbp
	movq	%rax, 8(%r14)
	movl	16(%rsp), %ebx
	jle	.L1181
	movq	32(%rsp), %rdi
	movq	24(%rsp), %rsi
	xorl	%edx, %edx
	jmp	.L1185
	.p2align 4,,10
	.p2align 3
.L1272:
	movl	%ebx, %ecx
	addq	$1, %rdx
	addl	$8, %ebx
	addq	%rdi, %rcx
	cmpq	%rbp, %rdx
	movl	(%rcx), %ecx
	movb	%cl, (%rax)
	je	.L1271
.L1184:
	movq	16(%r13), %rax
	movq	8(%rax), %rax
.L1185:
	addq	%rdx, %rax
	cmpl	$47, %ebx
	jbe	.L1272
	movq	%rsi, %rcx
	addq	$1, %rdx
	addq	$8, %rsi
	movl	(%rcx), %ecx
	cmpq	%rbp, %rdx
	movb	%cl, (%rax)
	jne	.L1184
.L1271:
	cmpl	$47, %ebx
	movl	%ebx, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movq	16(%r13), %r14
	jbe	.L1273
.L1186:
	movq	24(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	jmp	.L1187
	.p2align 4,,10
	.p2align 3
.L1214:
	movq	24(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	jmp	.L1215
	.p2align 4,,10
	.p2align 3
.L1207:
	movq	24(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	jmp	.L1208
	.p2align 4,,10
	.p2align 3
.L1200:
	movq	24(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	jmp	.L1201
	.p2align 4,,10
	.p2align 3
.L1193:
	movq	24(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	jmp	.L1194
	.p2align 4,,10
	.p2align 3
.L1227:
	movq	24(%rsp), %rax
	movq	(%rax), %r15
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	testq	%r15, %r15
	movq	%r15, 104(%r14)
	je	.L1229
.L1269:
	leaq	0(,%r15,8), %r9
	testq	%r9, %r9
	je	.L1253
	movq	%r9, %rdi
	movq	%r9, 8(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	8(%rsp), %r9
	je	.L1274
.L1230:
	testq	%r15, %r15
	movq	%rax, 112(%r14)
	jle	.L1255
	movq	32(%rsp), %r10
	movl	16(%rsp), %r8d
	leaq	(%rax,%r9), %rdi
	movq	24(%rsp), %rdx
	jmp	.L1233
	.p2align 4,,10
	.p2align 3
.L1275:
	movl	%ebp, %ebx
.L1233:
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
	jne	.L1275
	movl	%r8d, 16(%rsp)
	movq	%rdx, 24(%rsp)
.L1231:
	testq	%r9, %r9
	je	.L1256
	movq	%r9, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L1276
.L1234:
	testq	%r15, %r15
	movq	%rax, 120(%r14)
	jle	.L1176
	movq	32(%rsp), %rdi
	movq	24(%rsp), %rsi
	xorl	%edx, %edx
	jmp	.L1237
	.p2align 4,,10
	.p2align 3
.L1277:
	movl	%ebp, %ecx
	addl	$8, %ebp
	addq	%rdi, %rcx
.L1236:
	movq	(%rcx), %rcx
	addq	$1, %rdx
	cmpq	%r15, %rdx
	movq	%rcx, (%rax)
	je	.L1176
	movq	16(%r13), %rax
	movq	120(%rax), %rax
.L1237:
	cmpl	$47, %ebp
	leaq	(%rax,%rdx,8), %rax
	jbe	.L1277
	movq	%rsi, %rcx
	addq	$8, %rsi
	jmp	.L1236
	.p2align 4,,10
	.p2align 3
.L1264:
	testq	%r15, %r15
	je	.L1238
	movq	%r15, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L1278
.L1189:
	testq	%r12, %r12
	movq	%rax, 24(%r14)
	jle	.L1240
	movq	32(%rsp), %r10
	movl	16(%rsp), %r8d
	leaq	(%rax,%r15), %r9
	movq	24(%rsp), %rdx
	jmp	.L1192
	.p2align 4,,10
	.p2align 3
.L1191:
	movl	%r12d, %ebx
.L1192:
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
	jne	.L1191
	movl	%r8d, 16(%rsp)
	movq	%rdx, 24(%rsp)
	jmp	.L1190
	.p2align 4,,10
	.p2align 3
.L1268:
	testq	%r9, %r9
	je	.L1248
	movq	%r9, %rdi
	movq	%r9, 8(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	8(%rsp), %r9
	je	.L1279
.L1217:
	testq	%r15, %r15
	movq	%rax, 88(%r14)
	jle	.L1250
	movq	32(%rsp), %r10
	movl	16(%rsp), %r8d
	leaq	(%rax,%r9), %rdi
	movq	24(%rsp), %rdx
	jmp	.L1220
	.p2align 4,,10
	.p2align 3
.L1280:
	movl	%ebx, %ebp
.L1220:
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
	jne	.L1280
	movl	%r8d, 16(%rsp)
	movq	%rdx, 24(%rsp)
.L1218:
	testq	%r9, %r9
	je	.L1251
	movq	%r9, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L1281
.L1221:
	testq	%r15, %r15
	movq	%rax, 96(%r14)
	jle	.L1222
	movq	32(%rsp), %r8
	movl	16(%rsp), %edi
	xorl	%edx, %edx
	movq	24(%rsp), %rsi
	jmp	.L1226
	.p2align 4,,10
	.p2align 3
.L1283:
	movl	%ebx, %ecx
	addq	$1, %rdx
	addl	$8, %ebx
	addq	%r8, %rcx
	cmpq	%r15, %rdx
	movl	%ebx, %edi
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	je	.L1282
.L1225:
	movq	16(%r13), %rax
	movq	96(%rax), %rax
.L1226:
	cmpl	$47, %ebx
	leaq	(%rax,%rdx,8), %rax
	jbe	.L1283
	movq	%rsi, %rcx
	addq	$1, %rdx
	addq	$8, %rsi
	movq	(%rcx), %rcx
	cmpq	%r15, %rdx
	movq	%rcx, (%rax)
	jne	.L1225
.L1282:
	movl	%edi, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movq	16(%r13), %r14
	jmp	.L1222
	.p2align 4,,10
	.p2align 3
.L1267:
	testq	%r15, %r15
	je	.L1246
	movq	%r15, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L1284
.L1210:
	testq	%rbx, %rbx
	movq	%rax, 72(%r14)
	jle	.L1211
	movl	20(%rsp), %edx
	movq	32(%rsp), %rbx
	leaq	(%rax,%r15), %r11
	movq	24(%rsp), %rcx
	movl	%edx, %r8d
	jmp	.L1213
	.p2align 4,,10
	.p2align 3
.L1212:
	movl	%r10d, %edx
.L1213:
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
	jne	.L1212
	movq	%rcx, 24(%rsp)
	movl	%r8d, 20(%rsp)
	jmp	.L1211
	.p2align 4,,10
	.p2align 3
.L1266:
	testq	%r11, %r11
	je	.L1244
	movq	%r11, %rdi
	movq	%r11, 8(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	8(%rsp), %r11
	je	.L1285
.L1203:
	testq	%r15, %r15
	movq	%rax, 56(%r14)
	jle	.L1204
	movl	20(%rsp), %edx
	movq	32(%rsp), %rbx
	addq	%rax, %r11
	movq	24(%rsp), %rcx
	movl	%edx, %r8d
	jmp	.L1206
	.p2align 4,,10
	.p2align 3
.L1205:
	movl	%r10d, %edx
.L1206:
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
	jne	.L1205
	movq	%rcx, 24(%rsp)
	movl	%r8d, 20(%rsp)
	jmp	.L1204
	.p2align 4,,10
	.p2align 3
.L1265:
	testq	%r9, %r9
	je	.L1241
	movq	%r9, %rdi
	movq	%r9, 8(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	8(%rsp), %r9
	je	.L1286
.L1196:
	testq	%r15, %r15
	movq	%rax, 40(%r14)
	jle	.L1243
	movq	32(%rsp), %r10
	movl	16(%rsp), %r8d
	addq	%rax, %r9
	movq	24(%rsp), %rdx
	jmp	.L1199
	.p2align 4,,10
	.p2align 3
.L1198:
	movl	%ebp, %r12d
.L1199:
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
	jne	.L1198
	movl	%r8d, 16(%rsp)
	movq	%rdx, 24(%rsp)
	jmp	.L1197
	.p2align 4,,10
	.p2align 3
.L1238:
	xorl	%eax, %eax
	jmp	.L1189
	.p2align 4,,10
	.p2align 3
.L1241:
	xorl	%eax, %eax
	jmp	.L1196
	.p2align 4,,10
	.p2align 3
.L1244:
	xorl	%eax, %eax
	jmp	.L1203
	.p2align 4,,10
	.p2align 3
.L1246:
	xorl	%eax, %eax
	jmp	.L1210
	.p2align 4,,10
	.p2align 3
.L1251:
	xorl	%eax, %eax
	jmp	.L1221
	.p2align 4,,10
	.p2align 3
.L1248:
	xorl	%eax, %eax
	jmp	.L1217
	.p2align 4,,10
	.p2align 3
.L1253:
	xorl	%eax, %eax
	jmp	.L1230
	.p2align 4,,10
	.p2align 3
.L1256:
	xorl	%eax, %eax
	jmp	.L1234
.L1255:
	movl	%ebx, %ebp
	.p2align 4,,5
	jmp	.L1231
.L1240:
	movl	%ebx, %r12d
	.p2align 4,,4
	jmp	.L1190
.L1250:
	movl	%ebp, %ebx
	.p2align 4,,4
	jmp	.L1218
.L1243:
	movl	%r12d, %ebp
	.p2align 4,,3
	jmp	.L1197
.L1260:
	movl	$562, %esi
	movl	$__func__.6432, %edi
	call	error_checking_malloc.part.0
.L1262:
	movl	$565, %esi
	movl	$__func__.6432, %edi
	call	error_checking_malloc.part.0
.L1270:
	movl	$577, %esi
	movl	$__func__.6432, %edi
	call	error_checking_malloc.part.0
.L1286:
	movl	$609, %esi
	movl	$__func__.6432, %edi
	call	error_checking_malloc.part.0
.L1285:
	movl	$625, %esi
	movl	$__func__.6432, %edi
	call	error_checking_malloc.part.0
.L1276:
	movl	$687, %esi
	movl	$__func__.6432, %edi
	call	error_checking_malloc.part.0
.L1274:
	movl	$680, %esi
	movl	$__func__.6432, %edi
	call	error_checking_malloc.part.0
.L1278:
	movl	$593, %esi
	movl	$__func__.6432, %edi
	call	error_checking_malloc.part.0
.L1279:
	movl	$658, %esi
	movl	$__func__.6432, %edi
	call	error_checking_malloc.part.0
.L1284:
	movl	$641, %esi
	movl	$__func__.6432, %edi
	call	error_checking_malloc.part.0
.L1281:
	movl	$663, %esi
	movl	$__func__.6432, %edi
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
	je	.L1288
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm1, 112(%rsp)
	movaps	%xmm2, 128(%rsp)
	movaps	%xmm3, 144(%rsp)
	movaps	%xmm4, 160(%rsp)
	movaps	%xmm5, 176(%rsp)
	movaps	%xmm6, 192(%rsp)
	movaps	%xmm7, 208(%rsp)
.L1288:
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
	je	.L1415
	testl	%ebx, %ebx
	jne	.L1416
	movq	$0, 16(%rax)
	xorl	%r14d, %r14d
.L1294:
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
.L1416:
	.cfi_restore_state
	movl	$128, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r13
	je	.L1417
	movl	16(%rsp), %ecx
	movq	%rax, 16(%r12)
	cmpl	$48, %ecx
	jb	.L1418
	movq	24(%rsp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	(%rax), %r14
	movq	%rdx, 24(%rsp)
	testq	%r14, %r14
	movq	%r14, 0(%r13)
	je	.L1296
.L1297:
	leaq	8(%rdx), %rax
	movq	%rax, 24(%rsp)
.L1298:
	movq	%r14, %rdi
	movq	(%rdx), %rbx
	call	malloc
	testq	%rax, %rax
	je	.L1419
	testq	%rbx, %rbx
	movq	%rax, 8(%r13)
	movl	16(%rsp), %ecx
	jle	.L1301
	movq	32(%rsp), %rdi
	movq	24(%rsp), %r8
	xorl	%edx, %edx
	jmp	.L1305
	.p2align 4,,10
	.p2align 3
.L1421:
	movl	%ecx, %esi
	addq	$1, %rdx
	addl	$8, %ecx
	addq	%rdi, %rsi
	cmpq	%rbx, %rdx
	movl	(%rsi), %esi
	movb	%sil, (%rax)
	je	.L1420
.L1304:
	movq	16(%r12), %rax
	movq	8(%rax), %rax
.L1305:
	addq	%rdx, %rax
	cmpl	$47, %ecx
	jbe	.L1421
	movq	%r8, %rsi
	addq	$1, %rdx
	addq	$8, %r8
	movl	(%rsi), %esi
	cmpq	%rbx, %rdx
	movb	%sil, (%rax)
	jne	.L1304
.L1420:
	cmpl	$47, %ecx
	movl	%ecx, 16(%rsp)
	movq	%r8, 24(%rsp)
	movq	16(%r12), %r13
	jbe	.L1422
.L1306:
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
	je	.L1308
.L1309:
	leaq	8(%rdx), %rax
	movl	%r8d, %ebx
	movq	%rax, 24(%rsp)
.L1310:
	testq	%rdi, %rdi
	movq	(%rdx), %rbp
	je	.L1379
	call	malloc
	testq	%rax, %rax
	je	.L1423
.L1311:
	testq	%rbp, %rbp
	movq	%rax, 24(%r13)
	jle	.L1381
	movq	32(%rsp), %r11
	movl	16(%rsp), %r9d
	leaq	(%rax,%rbp,4), %r10
	movq	24(%rsp), %rdx
	jmp	.L1314
	.p2align 4,,10
	.p2align 3
.L1313:
	movl	%r8d, %ebx
.L1314:
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
	jne	.L1313
	cmpl	$47, %r8d
	movl	%r9d, 16(%rsp)
	movq	%rdx, 24(%rsp)
	jbe	.L1424
.L1315:
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
	je	.L1317
.L1318:
	leaq	8(%rdx), %rax
	movl	%r9d, %ebx
	movq	%rax, 24(%rsp)
.L1319:
	testq	%rdi, %rdi
	movq	(%rdx), %rbp
	je	.L1383
	call	malloc
	testq	%rax, %rax
	je	.L1425
.L1320:
	testq	%rbp, %rbp
	movq	%rax, 40(%r13)
	jle	.L1385
	movq	32(%rsp), %r11
	movl	16(%rsp), %edi
	leaq	(%rax,%rbp,8), %r10
	movq	24(%rsp), %rdx
	jmp	.L1323
	.p2align 4,,10
	.p2align 3
.L1322:
	movl	%r9d, %ebx
.L1323:
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
	jne	.L1322
	cmpl	$47, %r9d
	movl	%edi, 16(%rsp)
	movq	%rdx, 24(%rsp)
	jbe	.L1426
.L1324:
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
	je	.L1326
.L1327:
	leaq	8(%rdx), %rax
	movq	%rax, 24(%rsp)
.L1328:
	testq	%rdi, %rdi
	movq	(%rdx), %r15
	je	.L1387
	call	malloc
	testq	%rax, %rax
	je	.L1427
	movq	%rax, %rsi
.L1329:
	testq	%r15, %r15
	movq	%rsi, 56(%r13)
	jle	.L1330
	movl	20(%rsp), %edx
	movq	32(%rsp), %rbp
	leaq	(%rsi,%r15,4), %r11
	movq	24(%rsp), %rcx
	movl	%edx, %r8d
	jmp	.L1332
	.p2align 4,,10
	.p2align 3
.L1331:
	movl	%r10d, %edx
.L1332:
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
	jne	.L1331
	cmpl	$47, %ebx
	movq	%rcx, 24(%rsp)
	movl	%r8d, 20(%rsp)
	jbe	.L1428
.L1333:
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
	jne	.L1336
.L1335:
	movq	$0, 72(%r13)
.L1339:
	cmpl	$47, %ebp
	ja	.L1342
.L1433:
	movl	%ebp, %eax
	addq	32(%rsp), %rax
	addl	$8, %ebp
	movl	%ebp, 16(%rsp)
.L1343:
	movq	(%rax), %r15
	leaq	0(,%r15,8), %r8
	movq	%r15, 80(%r13)
	addq	%r8, %r14
	testq	%r15, %r15
	jne	.L1429
	movl	16(%rsp), %ebx
	movq	$0, 88(%r13)
	movq	$0, 96(%r13)
.L1357:
	cmpl	$47, %ebx
	ja	.L1360
	movl	%ebx, %eax
	addq	32(%rsp), %rax
	addl	$8, %ebx
	movl	%ebx, 16(%rsp)
	movq	(%rax), %r15
	testq	%r15, %r15
	movq	%r15, 104(%r13)
	jne	.L1430
.L1362:
	movq	$0, 112(%r13)
	movq	$0, 120(%r13)
	jmp	.L1294
	.p2align 4,,10
	.p2align 3
.L1418:
	movq	32(%rsp), %rdx
	movl	%ecx, %esi
	leal	8(%rcx), %eax
	movl	%eax, 16(%rsp)
	movq	(%rdx,%rsi), %r14
	testq	%r14, %r14
	movq	%r14, 0(%r13)
	je	.L1431
	cmpl	$47, %eax
	jbe	.L1409
	movq	24(%rsp), %rdx
	jmp	.L1297
	.p2align 4,,10
	.p2align 3
.L1431:
	movl	%eax, %ecx
.L1296:
	movq	$0, 8(%r13)
.L1301:
	cmpl	$47, %ecx
	ja	.L1306
.L1422:
	movq	32(%rsp), %rdx
	movl	%ecx, %eax
	leal	8(%rcx), %r8d
	movl	%r8d, 16(%rsp)
	movq	(%rdx,%rax), %rax
	leaq	0(,%rax,4), %rdi
	movq	%rax, 16(%r13)
	addq	%rdi, %r14
	testq	%rax, %rax
	jne	.L1307
.L1308:
	movq	$0, 24(%r13)
.L1312:
	cmpl	$47, %r8d
	ja	.L1315
.L1424:
	movq	32(%rsp), %rdx
	movl	%r8d, %eax
	leal	8(%r8), %r9d
	movl	%r9d, 16(%rsp)
	movq	(%rdx,%rax), %rax
	leaq	0(,%rax,8), %rdi
	movq	%rax, 32(%r13)
	addq	%rdi, %r14
	testq	%rax, %rax
	jne	.L1316
.L1317:
	movq	$0, 40(%r13)
.L1321:
	cmpl	$47, %r9d
	ja	.L1324
.L1426:
	movq	32(%rsp), %rdx
	movl	%r9d, %eax
	leal	8(%r9), %ebx
	movl	%ebx, 16(%rsp)
	movq	(%rdx,%rax), %rax
	leaq	0(,%rax,4), %rdi
	movq	%rax, 48(%r13)
	addq	%rdi, %r14
	testq	%rax, %rax
	jne	.L1325
.L1326:
	movq	$0, 56(%r13)
.L1330:
	cmpl	$47, %ebx
	ja	.L1333
.L1428:
	movq	32(%rsp), %rdx
	movl	%ebx, %eax
	leal	8(%rbx), %ebp
	movl	%ebp, 16(%rsp)
	movq	(%rdx,%rax), %rax
	leaq	0(,%rax,8), %rdi
	movq	%rax, 64(%r13)
	addq	%rdi, %r14
	testq	%rax, %rax
	je	.L1335
	cmpl	$47, %ebp
	jbe	.L1413
	movq	24(%rsp), %rdx
.L1336:
	leaq	8(%rdx), %rax
	movq	%rax, 24(%rsp)
.L1337:
	testq	%rdi, %rdi
	movq	(%rdx), %r15
	je	.L1390
	call	malloc
	testq	%rax, %rax
	je	.L1432
	movq	%rax, %rsi
.L1338:
	testq	%r15, %r15
	movq	%rsi, 72(%r13)
	jle	.L1339
	movl	20(%rsp), %edx
	movq	32(%rsp), %rbx
	leaq	(%rsi,%r15,8), %r11
	movq	24(%rsp), %rcx
	movl	%edx, %r8d
	jmp	.L1341
	.p2align 4,,10
	.p2align 3
.L1340:
	movl	%r10d, %edx
.L1341:
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
	jne	.L1340
	cmpl	$47, %ebp
	movq	%rcx, 24(%rsp)
	movl	%r8d, 20(%rsp)
	jbe	.L1433
.L1342:
	movq	24(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	jmp	.L1343
	.p2align 4,,10
	.p2align 3
.L1325:
	cmpl	$47, %ebx
	jbe	.L1412
	movq	24(%rsp), %rdx
	jmp	.L1327
	.p2align 4,,10
	.p2align 3
.L1316:
	cmpl	$47, %r9d
	jbe	.L1411
	movq	24(%rsp), %rdx
	jmp	.L1318
	.p2align 4,,10
	.p2align 3
.L1307:
	cmpl	$47, %r8d
	jbe	.L1410
	movq	24(%rsp), %rdx
	jmp	.L1309
	.p2align 4,,10
	.p2align 3
.L1360:
	movq	24(%rsp), %rax
	movq	(%rax), %r15
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	testq	%r15, %r15
	movq	%r15, 104(%r13)
	je	.L1362
.L1430:
	leaq	0(,%r15,8), %r8
	testq	%r8, %r8
	je	.L1397
	movq	%r8, %rdi
	movq	%r8, 8(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	8(%rsp), %r8
	je	.L1434
.L1363:
	testq	%r15, %r15
	movq	%rax, 112(%r13)
	jle	.L1399
	movq	32(%rsp), %r10
	movl	16(%rsp), %edi
	leaq	(%rax,%r8), %r9
	movq	24(%rsp), %rdx
	jmp	.L1366
	.p2align 4,,10
	.p2align 3
.L1435:
	movl	%ebp, %ebx
.L1366:
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
	jne	.L1435
	movl	%edi, 16(%rsp)
	movq	%rdx, 24(%rsp)
.L1364:
	cmpl	$47, %ebp
	ja	.L1367
	movl	%ebp, %eax
	addq	32(%rsp), %rax
	addl	$8, %ebp
	movl	%ebp, 16(%rsp)
.L1368:
	testq	%r8, %r8
	movq	(%rax), %rbx
	je	.L1400
	movq	%r8, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L1436
.L1369:
	testq	%rbx, %rbx
	movq	%rax, 120(%r13)
	jle	.L1375
	movq	32(%rsp), %r8
	movl	16(%rsp), %edi
	xorl	%edx, %edx
	movq	24(%rsp), %rsi
	jmp	.L1376
	.p2align 4,,10
	.p2align 3
.L1438:
	movl	%ebp, %ecx
	addq	$1, %rdx
	addl	$8, %ebp
	addq	%r8, %rcx
	cmpq	%rbx, %rdx
	movl	%ebp, %edi
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	je	.L1437
.L1374:
	movq	16(%r12), %rax
	movq	120(%rax), %rax
.L1376:
	cmpl	$47, %ebp
	leaq	(%rax,%rdx,8), %rax
	jbe	.L1438
	movq	%rsi, %rcx
	addq	$1, %rdx
	addq	$8, %rsi
	movq	(%rcx), %rcx
	cmpq	%rbx, %rdx
	movq	%rcx, (%rax)
	jne	.L1374
.L1437:
	movl	%edi, 16(%rsp)
	movq	%rsi, 24(%rsp)
.L1375:
	cmpq	%rbx, %r15
	leaq	0(,%rbx,8), %rax
	jle	.L1294
	.p2align 4,,10
	.p2align 3
.L1407:
	movq	16(%r12), %rdx
	addq	$1, %rbx
	movq	120(%rdx), %rdx
	movq	$0, (%rdx,%rax)
	addq	$8, %rax
	cmpq	%r15, %rbx
	jne	.L1407
	jmp	.L1294
	.p2align 4,,10
	.p2align 3
.L1410:
	leal	16(%rcx), %ebx
	addq	%r8, %rdx
	movl	%ebx, 16(%rsp)
	jmp	.L1310
	.p2align 4,,10
	.p2align 3
.L1411:
	leal	16(%r8), %ebx
	addq	%r9, %rdx
	movl	%ebx, 16(%rsp)
	jmp	.L1319
	.p2align 4,,10
	.p2align 3
.L1412:
	addq	%rbx, %rdx
	leal	16(%r9), %ebx
	movl	%ebx, 16(%rsp)
	jmp	.L1328
	.p2align 4,,10
	.p2align 3
.L1413:
	addq	%rbp, %rdx
	leal	16(%rbx), %ebp
	movl	%ebp, 16(%rsp)
	jmp	.L1337
	.p2align 4,,10
	.p2align 3
.L1409:
	addl	$16, %ecx
	addq	%rax, %rdx
	movl	%ecx, 16(%rsp)
	jmp	.L1298
	.p2align 4,,10
	.p2align 3
.L1429:
	testq	%r8, %r8
	je	.L1392
	movq	%r8, %rdi
	movq	%r8, 8(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	8(%rsp), %r8
	je	.L1439
.L1345:
	testq	%r15, %r15
	movq	%rax, 88(%r13)
	jle	.L1394
	movq	32(%rsp), %r10
	movl	16(%rsp), %edi
	leaq	(%rax,%r8), %r9
	movq	24(%rsp), %rdx
	jmp	.L1348
	.p2align 4,,10
	.p2align 3
.L1440:
	movl	%ebx, %ebp
.L1348:
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
	jne	.L1440
	movl	%edi, 16(%rsp)
	movq	%rdx, 24(%rsp)
.L1346:
	cmpl	$47, %ebx
	ja	.L1349
	movl	%ebx, %eax
	addq	32(%rsp), %rax
	addl	$8, %ebx
	movl	%ebx, 16(%rsp)
.L1350:
	testq	%r8, %r8
	movq	(%rax), %rbp
	je	.L1395
	movq	%r8, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L1441
.L1351:
	testq	%rbp, %rbp
	movq	%rax, 96(%r13)
	jle	.L1352
	movq	32(%rsp), %r8
	movl	16(%rsp), %edi
	xorl	%edx, %edx
	movq	24(%rsp), %rsi
	jmp	.L1356
	.p2align 4,,10
	.p2align 3
.L1442:
	movl	%ebx, %ecx
	addq	$1, %rdx
	addl	$8, %ebx
	addq	%r8, %rcx
	cmpq	%rbp, %rdx
	movl	%ebx, %edi
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	je	.L1355
.L1443:
	movq	16(%r12), %rax
	movq	96(%rax), %rax
.L1356:
	cmpl	$47, %ebx
	leaq	(%rax,%rdx,8), %rax
	jbe	.L1442
	movq	%rsi, %rcx
	addq	$1, %rdx
	addq	$8, %rsi
	movq	(%rcx), %rcx
	cmpq	%rbp, %rdx
	movq	%rcx, (%rax)
	jne	.L1443
.L1355:
	movq	16(%r12), %r13
	movl	%edi, 16(%rsp)
	movq	%rsi, 24(%rsp)
.L1352:
	cmpq	%rbp, %r15
	jle	.L1357
	leaq	0(,%rbp,8), %rax
	.p2align 4,,10
	.p2align 3
.L1359:
	movq	96(%r13), %rdx
	addq	$1, %rbp
	movq	$0, (%rdx,%rax)
	addq	$8, %rax
	cmpq	%r15, %rbp
	movq	16(%r12), %r13
	jne	.L1359
	jmp	.L1357
	.p2align 4,,10
	.p2align 3
.L1349:
	movq	24(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	jmp	.L1350
	.p2align 4,,10
	.p2align 3
.L1367:
	movq	24(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 24(%rsp)
	jmp	.L1368
	.p2align 4,,10
	.p2align 3
.L1383:
	xorl	%eax, %eax
	jmp	.L1320
	.p2align 4,,10
	.p2align 3
.L1379:
	xorl	%eax, %eax
	jmp	.L1311
	.p2align 4,,10
	.p2align 3
.L1390:
	xorl	%esi, %esi
	jmp	.L1338
	.p2align 4,,10
	.p2align 3
.L1387:
	xorl	%esi, %esi
	jmp	.L1329
	.p2align 4,,10
	.p2align 3
.L1397:
	xorl	%eax, %eax
	jmp	.L1363
	.p2align 4,,10
	.p2align 3
.L1395:
	xorl	%eax, %eax
	jmp	.L1351
	.p2align 4,,10
	.p2align 3
.L1392:
	xorl	%eax, %eax
	jmp	.L1345
	.p2align 4,,10
	.p2align 3
.L1400:
	xorl	%eax, %eax
	jmp	.L1369
.L1385:
	movl	%ebx, %r9d
	.p2align 4,,4
	jmp	.L1321
.L1381:
	movl	%ebx, %r8d
	.p2align 4,,3
	jmp	.L1312
.L1394:
	movl	%ebp, %ebx
	.p2align 4,,3
	jmp	.L1346
.L1399:
	movl	%ebx, %ebp
	.p2align 4,,4
	jmp	.L1364
.L1415:
	movl	$743, %esi
	movl	$__func__.6470, %edi
	call	error_checking_malloc.part.0
.L1423:
	movl	$776, %esi
	movl	$__func__.6470, %edi
	call	error_checking_malloc.part.0
.L1432:
	movl	$827, %esi
	movl	$__func__.6470, %edi
	call	error_checking_malloc.part.0
.L1434:
	movl	$871, %esi
	movl	$__func__.6470, %edi
	call	error_checking_malloc.part.0
.L1441:
	movl	$850, %esi
	movl	$__func__.6470, %edi
	call	error_checking_malloc.part.0
.L1427:
	movl	$810, %esi
	movl	$__func__.6470, %edi
	call	error_checking_malloc.part.0
.L1417:
	movl	$746, %esi
	movl	$__func__.6470, %edi
	call	error_checking_malloc.part.0
.L1425:
	movl	$793, %esi
	movl	$__func__.6470, %edi
	call	error_checking_malloc.part.0
.L1439:
	movl	$843, %esi
	movl	$__func__.6470, %edi
	call	error_checking_malloc.part.0
.L1436:
	movl	$879, %esi
	movl	$__func__.6470, %edi
	call	error_checking_malloc.part.0
.L1419:
	movl	$759, %esi
	movl	$__func__.6470, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE158:
	.size	init_function_params_with_uninitialised_elements, .-init_function_params_with_uninitialised_elements
	.section	.rodata.str1.1
.LC83:
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
	je	.L1559
	cmpq	$0, 16(%r13)
	movq	0(%r13), %rax
	movq	$0, 8(%rbx)
	movq	%rax, (%rbx)
	je	.L1446
	movl	$128, %edi
	call	malloc
	testq	%rax, %rax
	je	.L1560
	movq	%rax, 16(%rbx)
.L1448:
	movq	16(%r13), %rdx
	testq	%rdx, %rdx
	je	.L1538
	movq	(%rdx), %r8
	movq	16(%rbx), %r15
	movq	last_unused_stack_memory(%rip), %rax
	testq	%r8, %r8
	movq	%r8, (%r15)
	je	.L1450
	leaq	3(%r8), %rcx
	testq	%r8, %r8
	cmovns	%r8, %rcx
	sarq	$2, %rcx
	leaq	0(,%rcx,4), %rdi
	leaq	1(%rcx), %rsi
	cmpq	%rdi, %r8
	cmovg	%rsi, %rcx
	movq	entire_stack_memory_chunk(%rip), %rsi
	addq	total_stack_bytes_allocated(%rip), %rsi
	leaq	(%rcx,%rcx,8), %r9
	leaq	(%rax,%r9), %rdi
	cmpq	%rsi, %rdi
	movq	%rdi, last_unused_stack_memory(%rip)
	jnb	.L1561
	addq	%rcx, 8(%rbx)
	testq	%rax, %rax
	movq	%rax, 8(%r15)
	je	.L1514
	testq	%r8, %r8
	movq	8(%rdx), %rsi
	jle	.L1514
	movq	%r8, %rdx
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L1456:
	cmpq	$4, %rdx
	jg	.L1454
	addq	%rax, %rdi
	addq	%rcx, %rsi
	call	memcpy
	movq	16(%rbx), %r15
	movq	16(%r13), %rdx
	movq	last_unused_stack_memory(%rip), %rax
.L1453:
	movq	16(%rdx), %r8
	movq	%r8, 16(%r15)
	salq	$2, %r8
	testq	%r8, %r8
	je	.L1457
	leaq	3(%r8), %rcx
	testq	%r8, %r8
	cmovns	%r8, %rcx
	sarq	$2, %rcx
	leaq	0(,%rcx,4), %rdi
	leaq	1(%rcx), %rsi
	cmpq	%rdi, %r8
	cmovg	%rsi, %rcx
	movq	entire_stack_memory_chunk(%rip), %rsi
	addq	total_stack_bytes_allocated(%rip), %rsi
	leaq	(%rcx,%rcx,8), %r9
	leaq	(%rax,%r9), %rdi
	cmpq	%rsi, %rdi
	movq	%rdi, last_unused_stack_memory(%rip)
	jnb	.L1562
	addq	%rcx, 8(%rbx)
	testq	%rax, %rax
	movq	%rax, 24(%r15)
	je	.L1516
	testq	%r8, %r8
	movq	24(%rdx), %rsi
	jle	.L1516
	movq	%r8, %rdx
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L1463:
	cmpq	$4, %rdx
	jg	.L1461
	addq	%rax, %rdi
	addq	%rcx, %rsi
	call	memcpy
	movq	16(%rbx), %r15
	movq	16(%r13), %rdx
	movq	last_unused_stack_memory(%rip), %rax
.L1460:
	movq	32(%rdx), %r8
	movq	%r8, 32(%r15)
	salq	$3, %r8
	testq	%r8, %r8
	je	.L1464
	leaq	3(%r8), %rcx
	testq	%r8, %r8
	cmovns	%r8, %rcx
	sarq	$2, %rcx
	leaq	0(,%rcx,4), %rdi
	leaq	1(%rcx), %rsi
	cmpq	%rdi, %r8
	cmovg	%rsi, %rcx
	movq	entire_stack_memory_chunk(%rip), %rsi
	addq	total_stack_bytes_allocated(%rip), %rsi
	leaq	(%rcx,%rcx,8), %r9
	leaq	(%rax,%r9), %rdi
	cmpq	%rsi, %rdi
	movq	%rdi, last_unused_stack_memory(%rip)
	jnb	.L1563
	addq	%rcx, 8(%rbx)
	testq	%rax, %rax
	movq	%rax, 40(%r15)
	je	.L1518
	testq	%r8, %r8
	movq	40(%rdx), %rsi
	jle	.L1518
	movq	%r8, %rdx
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L1470:
	cmpq	$4, %rdx
	jg	.L1468
	addq	%rax, %rdi
	addq	%rcx, %rsi
	call	memcpy
	movq	16(%rbx), %r15
	movq	16(%r13), %rdx
	movq	last_unused_stack_memory(%rip), %rax
.L1467:
	movq	48(%rdx), %r8
	movq	%r8, 48(%r15)
	salq	$2, %r8
	testq	%r8, %r8
	je	.L1471
	leaq	3(%r8), %rcx
	testq	%r8, %r8
	cmovns	%r8, %rcx
	sarq	$2, %rcx
	leaq	0(,%rcx,4), %rdi
	leaq	1(%rcx), %rsi
	cmpq	%rdi, %r8
	cmovg	%rsi, %rcx
	movq	entire_stack_memory_chunk(%rip), %rsi
	addq	total_stack_bytes_allocated(%rip), %rsi
	leaq	(%rcx,%rcx,8), %r9
	leaq	(%rax,%r9), %rdi
	cmpq	%rsi, %rdi
	movq	%rdi, last_unused_stack_memory(%rip)
	jnb	.L1564
	addq	%rcx, 8(%rbx)
	testq	%rax, %rax
	movq	%rax, 56(%r15)
	je	.L1520
	testq	%r8, %r8
	movq	56(%rdx), %rsi
	jle	.L1520
	movq	%r8, %rdx
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L1477:
	cmpq	$4, %rdx
	jg	.L1475
	addq	%rax, %rdi
	addq	%rcx, %rsi
	call	memcpy
	movq	16(%rbx), %r15
	movq	16(%r13), %rdx
	movq	last_unused_stack_memory(%rip), %rax
.L1474:
	movq	64(%rdx), %r8
	movq	%r8, 64(%r15)
	salq	$3, %r8
	testq	%r8, %r8
	je	.L1478
	leaq	3(%r8), %rcx
	testq	%r8, %r8
	cmovns	%r8, %rcx
	sarq	$2, %rcx
	leaq	0(,%rcx,4), %rdi
	leaq	1(%rcx), %rsi
	cmpq	%rdi, %r8
	cmovg	%rsi, %rcx
	movq	entire_stack_memory_chunk(%rip), %rsi
	addq	total_stack_bytes_allocated(%rip), %rsi
	leaq	(%rcx,%rcx,8), %r9
	leaq	(%rax,%r9), %rdi
	cmpq	%rsi, %rdi
	movq	%rdi, last_unused_stack_memory(%rip)
	jnb	.L1565
	addq	%rcx, 8(%rbx)
	testq	%rax, %rax
	movq	%rax, 72(%r15)
	je	.L1522
	testq	%r8, %r8
	movq	72(%rdx), %rsi
	jle	.L1522
	movq	%r8, %rdx
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L1484:
	cmpq	$4, %rdx
	jg	.L1482
	addq	%rax, %rdi
	addq	%rcx, %rsi
	call	memcpy
	movq	16(%rbx), %r15
	movq	16(%r13), %rdx
	movq	last_unused_stack_memory(%rip), %rax
.L1481:
	movq	80(%rdx), %rbp
	leaq	0(,%rbp,8), %r12
	movq	%rbp, 80(%r15)
	testq	%r12, %r12
	je	.L1485
	leaq	3(%r12), %rcx
	testq	%r12, %r12
	cmovns	%r12, %rcx
	sarq	$2, %rcx
	leaq	0(,%rcx,4), %rdi
	leaq	1(%rcx), %rsi
	cmpq	%rdi, %r12
	cmovg	%rsi, %rcx
	movq	entire_stack_memory_chunk(%rip), %rsi
	addq	total_stack_bytes_allocated(%rip), %rsi
	leaq	(%rcx,%rcx,8), %r8
	leaq	(%rax,%r8), %rdi
	cmpq	%rsi, %rdi
	movq	%rdi, last_unused_stack_memory(%rip)
	jnb	.L1566
	addq	%rcx, 8(%rbx)
	testq	%rax, %rax
	movq	%rax, 96(%r15)
	je	.L1511
	testq	%r12, %r12
	movq	96(%rdx), %rsi
	jle	.L1511
	movq	%r12, %rdx
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L1491:
	cmpq	$4, %rdx
	jg	.L1489
	leaq	(%rax,%r8), %rdi
	addq	%rcx, %rsi
	call	memcpy
	movq	16(%rbx), %r15
.L1511:
	movq	%r12, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L1567
.L1492:
	testq	%rbp, %rbp
	movq	%rax, 88(%r15)
	movq	16(%r13), %r8
	jle	.L1494
	movq	88(%r8), %rsi
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L1495:
	movq	(%rsi,%rdx,8), %rcx
	movq	%rcx, (%rax,%rdx,8)
	addq	$1, %rdx
	cmpq	%rbp, %rdx
	jne	.L1495
.L1494:
	movq	104(%r8), %rax
	leaq	0(,%rax,8), %r12
	movq	%rax, (%rsp)
	movq	%rax, 104(%r15)
	testq	%r12, %r12
	je	.L1524
	movq	%r12, %rdi
	movq	%r8, 8(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	8(%rsp), %r8
	je	.L1568
	movq	%rax, %rbp
.L1496:
	cmpq	$0, (%rsp)
	movq	%rbp, 112(%r15)
	jle	.L1500
	movq	112(%r8), %rax
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L1501:
	movq	(%rax,%rdx,8), %rcx
	movq	%rcx, 0(%rbp,%rdx,8)
	addq	$1, %rdx
	cmpq	(%rsp), %rdx
	jne	.L1501
.L1500:
	testq	%r12, %r12
	je	.L1569
	movq	%r12, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L1570
.L1498:
	cmpq	$0, (%rsp)
	movq	%rax, 120(%r15)
	jle	.L1538
	movq	%rbp, %rax
	xorl	%ebp, %ebp
	jmp	.L1510
	.p2align 4,,10
	.p2align 3
.L1572:
	addq	%r14, %rdi
	addq	%rax, %rsi
	call	memcpy
	movq	16(%rbx), %r15
.L1506:
	addq	$1, %rbp
	cmpq	(%rsp), %rbp
	movq	120(%r15), %rax
	movq	%r14, (%rax,%r12)
	je	.L1538
	movq	16(%rbx), %r15
	movq	112(%r15), %rax
.L1510:
	movq	(%rax,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	movq	last_unused_stack_memory(%rip), %r14
	testq	%rax, %rax
	je	.L1503
	leaq	3(%rax), %rdx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	sarq	$2, %rdx
	leaq	0(,%rdx,4), %rdi
	leaq	1(%rdx), %rsi
	cmpq	%rdi, %rax
	movq	entire_stack_memory_chunk(%rip), %rax
	cmovg	%rsi, %rdx
	addq	total_stack_bytes_allocated(%rip), %rax
	leaq	(%rdx,%rdx,8), %rdi
	leaq	(%r14,%rdi), %rsi
	cmpq	%rax, %rsi
	movq	%rsi, last_unused_stack_memory(%rip)
	jnb	.L1571
	addq	%rdx, 8(%rbx)
	testq	%r14, %r14
	je	.L1506
	movq	16(%r13), %rax
	movq	120(%rax), %rax
	movq	(%rax,%r12), %rsi
	testq	%rsi, %rsi
	je	.L1506
	movq	16(%rbx), %rax
	movq	112(%rax), %rax
	movq	(%rax,%r12), %r9
	testq	%r9, %r9
	jle	.L1506
	movq	%r9, %rdx
	xorl	%edi, %edi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1509:
	cmpq	$4, %rdx
	jle	.L1572
	movl	(%rsi,%rax), %r8d
	addq	$4, %rax
	subq	$4, %rdx
	movl	%r8d, (%r14,%rdi)
	addq	$9, %rdi
	cmpq	%rax, %r9
	jg	.L1509
	movq	16(%rbx), %r15
	jmp	.L1506
	.p2align 4,,10
	.p2align 3
.L1538:
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
.L1561:
	.cfi_restore_state
	movq	stderr(%rip), %rcx
	subq	%r9, %rdi
	movl	$68, %edx
	movq	%rdi, last_unused_stack_memory(%rip)
	movl	$1, %esi
	movl	$.LC82, %edi
	call	fwrite
	movq	16(%rbx), %r15
	movq	16(%r13), %rdx
	movq	last_unused_stack_memory(%rip), %rax
.L1450:
	movq	$0, 8(%r15)
	jmp	.L1453
	.p2align 4,,10
	.p2align 3
.L1571:
	movq	stderr(%rip), %rcx
	subq	%rdi, %rsi
	movl	$68, %edx
	movq	%rsi, last_unused_stack_memory(%rip)
	movl	$.LC82, %edi
	movl	$1, %esi
	call	fwrite
	movq	16(%rbx), %r15
.L1503:
	xorl	%r14d, %r14d
	jmp	.L1506
	.p2align 4,,10
	.p2align 3
.L1482:
	movl	(%rsi,%rcx), %r9d
	addq	$4, %rcx
	subq	$4, %rdx
	movl	%r9d, (%rax,%rdi)
	addq	$9, %rdi
	cmpq	%rcx, %r8
	jg	.L1484
	movq	16(%rbx), %r15
	movq	16(%r13), %rdx
	movq	last_unused_stack_memory(%rip), %rax
	jmp	.L1481
	.p2align 4,,10
	.p2align 3
.L1475:
	movl	(%rsi,%rcx), %r9d
	addq	$4, %rcx
	subq	$4, %rdx
	movl	%r9d, (%rax,%rdi)
	addq	$9, %rdi
	cmpq	%rcx, %r8
	jg	.L1477
	movq	16(%rbx), %r15
	movq	16(%r13), %rdx
	movq	last_unused_stack_memory(%rip), %rax
	jmp	.L1474
	.p2align 4,,10
	.p2align 3
.L1468:
	movl	(%rsi,%rcx), %r9d
	addq	$4, %rcx
	subq	$4, %rdx
	movl	%r9d, (%rax,%rdi)
	addq	$9, %rdi
	cmpq	%rcx, %r8
	jg	.L1470
	movq	16(%rbx), %r15
	movq	16(%r13), %rdx
	movq	last_unused_stack_memory(%rip), %rax
	jmp	.L1467
	.p2align 4,,10
	.p2align 3
.L1461:
	movl	(%rsi,%rcx), %r9d
	addq	$4, %rcx
	subq	$4, %rdx
	movl	%r9d, (%rax,%rdi)
	addq	$9, %rdi
	cmpq	%rcx, %r8
	jg	.L1463
	movq	16(%rbx), %r15
	movq	16(%r13), %rdx
	movq	last_unused_stack_memory(%rip), %rax
	jmp	.L1460
	.p2align 4,,10
	.p2align 3
.L1454:
	movl	(%rsi,%rcx), %r9d
	addq	$4, %rcx
	subq	$4, %rdx
	movl	%r9d, (%rax,%rdi)
	addq	$9, %rdi
	cmpq	%rcx, %r8
	jg	.L1456
	movq	16(%rbx), %r15
	movq	16(%r13), %rdx
	movq	last_unused_stack_memory(%rip), %rax
	jmp	.L1453
	.p2align 4,,10
	.p2align 3
.L1489:
	movl	(%rsi,%rcx), %edi
	addq	$4, %rcx
	subq	$4, %rdx
	movl	%edi, (%rax,%r8)
	addq	$9, %r8
	cmpq	%rcx, %r12
	jg	.L1491
	movq	16(%rbx), %r15
	jmp	.L1511
	.p2align 4,,10
	.p2align 3
.L1562:
	movq	stderr(%rip), %rcx
	subq	%r9, %rdi
	movl	$68, %edx
	movq	%rdi, last_unused_stack_memory(%rip)
	movl	$1, %esi
	movl	$.LC82, %edi
	call	fwrite
	movq	16(%rbx), %r15
	movq	16(%r13), %rdx
	movq	last_unused_stack_memory(%rip), %rax
.L1457:
	movq	$0, 24(%r15)
	jmp	.L1460
.L1565:
	movq	stderr(%rip), %rcx
	subq	%r9, %rdi
	movl	$68, %edx
	movq	%rdi, last_unused_stack_memory(%rip)
	movl	$1, %esi
	movl	$.LC82, %edi
	call	fwrite
	movq	16(%rbx), %r15
	movq	16(%r13), %rdx
	movq	last_unused_stack_memory(%rip), %rax
.L1478:
	movq	$0, 72(%r15)
	jmp	.L1481
.L1564:
	movq	stderr(%rip), %rcx
	subq	%r9, %rdi
	movl	$68, %edx
	movq	%rdi, last_unused_stack_memory(%rip)
	movl	$1, %esi
	movl	$.LC82, %edi
	call	fwrite
	movq	16(%rbx), %r15
	movq	16(%r13), %rdx
	movq	last_unused_stack_memory(%rip), %rax
.L1471:
	movq	$0, 56(%r15)
	jmp	.L1474
.L1563:
	movq	stderr(%rip), %rcx
	subq	%r9, %rdi
	movl	$68, %edx
	movq	%rdi, last_unused_stack_memory(%rip)
	movl	$1, %esi
	movl	$.LC82, %edi
	call	fwrite
	movq	16(%rbx), %r15
	movq	16(%r13), %rdx
	movq	last_unused_stack_memory(%rip), %rax
.L1464:
	movq	$0, 40(%r15)
	jmp	.L1467
.L1566:
	movq	stderr(%rip), %rcx
	subq	%r8, %rdi
	movl	$68, %edx
	movq	%rdi, last_unused_stack_memory(%rip)
	movl	$1, %esi
	movl	$.LC82, %edi
	call	fwrite
	movq	16(%rbx), %r15
.L1485:
	testq	%r12, %r12
	movq	$0, 96(%r15)
	jne	.L1511
	xorl	%eax, %eax
	jmp	.L1492
.L1524:
	xorl	%ebp, %ebp
	jmp	.L1496
.L1569:
	xorl	%eax, %eax
	.p2align 4,,5
	jmp	.L1498
.L1446:
	movl	$.LC83, %edi
	movq	$0, 16(%rbx)
	call	puts
	jmp	.L1448
.L1516:
	movq	%rdi, %rax
	jmp	.L1460
.L1522:
	movq	%rdi, %rax
	.p2align 4,,5
	jmp	.L1481
.L1520:
	movq	%rdi, %rax
	.p2align 4,,2
	jmp	.L1474
.L1518:
	movq	%rdi, %rax
	.p2align 4,,2
	jmp	.L1467
.L1514:
	movq	%rdi, %rax
	.p2align 4,,2
	jmp	.L1453
.L1559:
	movl	$923, %esi
	movl	$__func__.6513, %edi
	call	error_checking_malloc.part.0
.L1570:
	movl	$1023, %esi
	movl	$__func__.6513, %edi
	call	error_checking_malloc.part.0
.L1568:
	movl	$1020, %esi
	movl	$__func__.6513, %edi
	call	error_checking_malloc.part.0
.L1567:
	movl	$1013, %esi
	movl	$__func__.6513, %edi
	call	error_checking_malloc.part.0
.L1560:
	movl	$931, %esi
	movl	$__func__.6513, %edi
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
	testq	%rdi, %rdi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	je	.L1573
	movq	16(%rdi), %rax
	testq	%rax, %rax
	je	.L1575
	movq	8(%rax), %rdi
	call	free
	movq	16(%rbx), %rax
	movq	24(%rax), %rdi
	call	free
	movq	16(%rbx), %rax
	movq	40(%rax), %rdi
	call	free
	movq	16(%rbx), %rax
	movq	56(%rax), %rdi
	call	free
	movq	16(%rbx), %rax
	movq	72(%rax), %rdi
	call	free
	movq	16(%rbx), %rax
	movq	96(%rax), %rdi
	call	free
	movq	16(%rbx), %rax
	movq	88(%rax), %rdi
	call	free
	movq	16(%rbx), %rax
	movq	112(%rax), %rdi
	call	free
	movq	16(%rbx), %rdi
	call	free
.L1575:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	free
	.p2align 4,,10
	.p2align 3
.L1573:
	.cfi_restore_state
	popq	%rbx
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
	testq	%rbx, %rbx
	movq	%rax, %rbp
	je	.L1583
	movq	16(%rbx), %rdx
	testq	%rdx, %rdx
	je	.L1584
	movq	8(%rdx), %rdi
	call	free
	movq	16(%rbx), %rax
	movq	24(%rax), %rdi
	call	free
	movq	16(%rbx), %rax
	movq	40(%rax), %rdi
	call	free
	movq	16(%rbx), %rax
	movq	56(%rax), %rdi
	call	free
	movq	16(%rbx), %rax
	movq	72(%rax), %rdi
	call	free
	movq	16(%rbx), %rax
	movq	96(%rax), %rdi
	call	free
	movq	16(%rbx), %rax
	movq	88(%rax), %rdi
	call	free
	movq	16(%rbx), %rax
	movq	112(%rax), %rdi
	call	free
	movq	16(%rbx), %rdi
	call	free
.L1584:
	movq	%rbx, %rdi
	call	free
.L1583:
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
	movl	(%rdi), %eax
	ret
	.cfi_endproc
.LFE164:
	.size	get_stack_int, .-get_stack_int
	.p2align 4,,15
	.globl	get_stack_long_int
	.type	get_stack_long_int, @function
get_stack_long_int:
.LFB165:
	.cfi_startproc
	movl	(%rdi), %eax
	movl	%eax, -24(%rsp)
	movl	9(%rdi), %eax
	movl	%eax, -20(%rsp)
	movq	-24(%rsp), %rax
	ret
	.cfi_endproc
.LFE165:
	.size	get_stack_long_int, .-get_stack_long_int
	.p2align 4,,15
	.globl	get_stack_pointer
	.type	get_stack_pointer, @function
get_stack_pointer:
.LFB166:
	.cfi_startproc
	movl	(%rdi), %eax
	movl	%eax, -24(%rsp)
	movl	9(%rdi), %eax
	movl	%eax, -20(%rsp)
	movq	-24(%rsp), %rax
	ret
	.cfi_endproc
.LFE166:
	.size	get_stack_pointer, .-get_stack_pointer
	.p2align 4,,15
	.globl	get_stack_float
	.type	get_stack_float, @function
get_stack_float:
.LFB167:
	.cfi_startproc
	movss	(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE167:
	.size	get_stack_float, .-get_stack_float
	.p2align 4,,15
	.globl	get_stack_double
	.type	get_stack_double, @function
get_stack_double:
.LFB168:
	.cfi_startproc
	movl	(%rdi), %eax
	movl	%eax, -24(%rsp)
	movl	9(%rdi), %eax
	movl	%eax, -20(%rsp)
	movsd	-24(%rsp), %xmm0
	ret
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
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	leaq	3(%rdx), %r8
	testq	%rdx, %rdx
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	cmovns	%rdx, %r8
	sarq	$2, %r8
	leaq	0(,%r8,4), %rax
	cmpq	%rax, %rdx
	je	.L1607
	leaq	(%r8,%r8,8), %r12
	negq	%r8
	movl	$4, %ebx
	addq	%rsi, %r12
	leaq	(%rdx,%r8,4), %rsi
	subq	%rsi, %rbx
	cmpq	%rdi, %rbx
	cmovg	%rdi, %rbx
	addq	%r12, %rsi
	movq	%rcx, %rdi
	movq	%rbx, %rdx
	call	memcpy
	leaq	9(%r12), %rsi
	movq	%rax, %rcx
.L1600:
	cmpq	%rbx, %rbp
	jle	.L1598
	leaq	-1(%rbp), %rdi
	movq	%rbp, %rdx
	xorl	%eax, %eax
	subq	%rbx, %rdx
	subq	%rbx, %rdi
	shrq	$2, %rdi
	leaq	9(%rdi,%rdi,8), %r8
	.p2align 4,,10
	.p2align 3
.L1605:
	cmpq	$4, %rdx
	jg	.L1603
	leaq	(%rcx,%rbx), %rdi
	addq	%rax, %rsi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	memcpy
	.p2align 4,,10
	.p2align 3
.L1603:
	.cfi_restore_state
	movl	(%rsi,%rax), %edi
	addq	$9, %rax
	subq	$4, %rdx
	movl	%edi, (%rcx,%rbx)
	addq	$4, %rbx
	cmpq	%r8, %rax
	jne	.L1605
.L1598:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1607:
	.cfi_restore_state
	leaq	(%r8,%r8,8), %rax
	xorl	%ebx, %ebx
	addq	%rax, %rsi
	jmp	.L1600
	.cfi_endproc
.LFE169:
	.size	get_stack_array_element, .-get_stack_array_element
	.p2align 4,,15
	.globl	get_stack_char_array_element
	.type	get_stack_char_array_element, @function
get_stack_char_array_element:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	3(%rsi), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	testq	%rsi, %rsi
	cmovns	%rsi, %rax
	sarq	$2, %rax
	leaq	0(,%rax,4), %rdx
	cmpq	%rdx, %rsi
	je	.L1618
	leaq	(%rax,%rax,8), %rbp
	negq	%rax
	movl	$4, %ebx
	leaq	(%rsi,%rax,4), %rax
	addq	%rdi, %rbp
	subq	%rax, %rbx
	testq	%rbx, %rbx
	jg	.L1611
	leaq	0(%rbp,%rax), %rsi
	movl	$1, %ecx
	movq	%rbx, %rdx
	movq	%rsp, %rdi
	call	__memcpy_chk
	leaq	9(%rbp), %rsi
	movq	%rsp, %r8
.L1612:
	movl	$1, %edx
	xorl	%eax, %eax
	subq	%rbx, %rdx
.L1610:
	cmpq	$4, %rdx
	jg	.L1614
	leaq	(%r8,%rbx), %rdi
	addq	%rax, %rsi
	call	memcpy
.L1613:
	movzbl	(%rsp), %eax
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1611:
	.cfi_restore_state
	movzbl	0(%rbp,%rax), %eax
	movb	%al, (%rsp)
	movzbl	(%rsp), %eax
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1614:
	.cfi_restore_state
	movl	(%rsi,%rax), %ecx
	subq	$4, %rdx
	addq	$9, %rax
	movl	%ecx, (%r8,%rbx)
	addq	$4, %rbx
	testq	%rbx, %rbx
	jle	.L1610
	jmp	.L1613
	.p2align 4,,10
	.p2align 3
.L1618:
	leaq	(%rax,%rax,8), %rsi
	xorl	%ebx, %ebx
	movq	%rsp, %r8
	addq	%rdi, %rsi
	jmp	.L1612
	.cfi_endproc
.LFE170:
	.size	get_stack_char_array_element, .-get_stack_char_array_element
	.p2align 4,,15
	.globl	get_stack_int_array_element
	.type	get_stack_int_array_element, @function
get_stack_int_array_element:
.LFB171:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rsi, %rcx
	movl	$1, %edx
	movq	%rdi, %rsi
	movq	%rsp, %rdi
	call	get_secure_stack_data.constprop.9
	movl	(%rsp), %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE171:
	.size	get_stack_int_array_element, .-get_stack_int_array_element
	.p2align 4,,15
	.globl	get_stack_long_int_array_element
	.type	get_stack_long_int_array_element, @function
get_stack_long_int_array_element:
.LFB172:
	.cfi_startproc
	salq	$3, %rsi
	leaq	3(%rsi), %rax
	testq	%rsi, %rsi
	cmovs	%rax, %rsi
	sarq	$2, %rsi
	leaq	(%rsi,%rsi,8), %rax
	addq	%rax, %rdi
	movl	(%rdi), %eax
	movl	%eax, -24(%rsp)
	movl	9(%rdi), %eax
	movl	%eax, -20(%rsp)
	movq	-24(%rsp), %rax
	ret
	.cfi_endproc
.LFE172:
	.size	get_stack_long_int_array_element, .-get_stack_long_int_array_element
	.p2align 4,,15
	.globl	get_stack_pointer_array_element
	.type	get_stack_pointer_array_element, @function
get_stack_pointer_array_element:
.LFB173:
	.cfi_startproc
	salq	$3, %rsi
	leaq	3(%rsi), %rax
	testq	%rsi, %rsi
	cmovs	%rax, %rsi
	sarq	$2, %rsi
	leaq	(%rsi,%rsi,8), %rax
	addq	%rax, %rdi
	movl	(%rdi), %eax
	movl	%eax, -24(%rsp)
	movl	9(%rdi), %eax
	movl	%eax, -20(%rsp)
	movq	-24(%rsp), %rax
	ret
	.cfi_endproc
.LFE173:
	.size	get_stack_pointer_array_element, .-get_stack_pointer_array_element
	.p2align 4,,15
	.globl	get_stack_float_array_element
	.type	get_stack_float_array_element, @function
get_stack_float_array_element:
.LFB174:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rsi, %rcx
	movl	$1, %edx
	movq	%rdi, %rsi
	movq	%rsp, %rdi
	call	get_secure_stack_data.constprop.9
	movss	(%rsp), %xmm0
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE174:
	.size	get_stack_float_array_element, .-get_stack_float_array_element
	.p2align 4,,15
	.globl	get_stack_double_array_element
	.type	get_stack_double_array_element, @function
get_stack_double_array_element:
.LFB175:
	.cfi_startproc
	salq	$3, %rsi
	leaq	3(%rsi), %rax
	testq	%rsi, %rsi
	cmovs	%rax, %rsi
	sarq	$2, %rsi
	leaq	(%rsi,%rsi,8), %rax
	addq	%rax, %rdi
	movl	(%rdi), %eax
	movl	%eax, -24(%rsp)
	movl	9(%rdi), %eax
	movl	%eax, -20(%rsp)
	movsd	-24(%rsp), %xmm0
	ret
	.cfi_endproc
.LFE175:
	.size	get_stack_double_array_element, .-get_stack_double_array_element
	.p2align 4,,15
	.globl	get_arbitrary_block_in_stack
	.type	get_arbitrary_block_in_stack, @function
get_arbitrary_block_in_stack:
.LFB176:
	.cfi_startproc
	testq	%rdi, %rdi
	movq	%rdx, %r8
	jle	.L1626
	leaq	-1(%rdi), %rax
	movq	%rdi, %rdx
	xorl	%ecx, %ecx
	shrq	$2, %rax
	leaq	4(,%rax,4), %r9
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1631:
	cmpq	$4, %rdx
	jg	.L1629
	leaq	(%r8,%rax), %rdi
	addq	%rcx, %rsi
	jmp	memcpy
	.p2align 4,,10
	.p2align 3
.L1629:
	movl	(%rsi,%rcx), %edi
	subq	$4, %rdx
	addq	$9, %rcx
	movl	%edi, (%r8,%rax)
	addq	$4, %rax
	cmpq	%r9, %rax
	jne	.L1631
.L1626:
	rep ret
	.cfi_endproc
.LFE176:
	.size	get_arbitrary_block_in_stack, .-get_arbitrary_block_in_stack
	.p2align 4,,15
	.globl	get_arbitrary_block_in_stack_with_offset
	.type	get_arbitrary_block_in_stack_with_offset, @function
get_arbitrary_block_in_stack_with_offset:
.LFB177:
	.cfi_startproc
	leaq	3(%rdx), %r8
	testq	%rdx, %rdx
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	cmovns	%rdx, %r8
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	sarq	$2, %r8
	leaq	0(,%r8,4), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	cmpq	%rax, %rdx
	je	.L1641
	leaq	(%r8,%r8,8), %r12
	negq	%r8
	movl	$4, %ebx
	addq	%rsi, %r12
	leaq	(%rdx,%r8,4), %rsi
	subq	%rsi, %rbx
	cmpq	%rdi, %rbx
	cmovg	%rdi, %rbx
	addq	%r12, %rsi
	movq	%rcx, %rdi
	movq	%rbx, %rdx
	call	memcpy
	leaq	9(%r12), %rsi
	movq	%rax, %rcx
.L1634:
	cmpq	%rbx, %rbp
	jle	.L1632
	leaq	-1(%rbp), %rdi
	movq	%rbp, %rdx
	xorl	%eax, %eax
	subq	%rbx, %rdx
	subq	%rbx, %rdi
	shrq	$2, %rdi
	leaq	9(%rdi,%rdi,8), %r8
	.p2align 4,,10
	.p2align 3
.L1639:
	cmpq	$4, %rdx
	jg	.L1637
	leaq	(%rcx,%rbx), %rdi
	addq	%rax, %rsi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	memcpy
	.p2align 4,,10
	.p2align 3
.L1637:
	.cfi_restore_state
	movl	(%rsi,%rax), %edi
	addq	$9, %rax
	subq	$4, %rdx
	movl	%edi, (%rcx,%rbx)
	addq	$4, %rbx
	cmpq	%r8, %rax
	jne	.L1639
.L1632:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1641:
	.cfi_restore_state
	leaq	(%r8,%r8,8), %rax
	xorl	%ebx, %ebx
	addq	%rax, %rsi
	jmp	.L1634
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
	movl	%esi, (%rdi)
	ret
	.cfi_endproc
.LFE179:
	.size	set_stack_int, .-set_stack_int
	.p2align 4,,15
	.globl	set_stack_long_int
	.type	set_stack_long_int, @function
set_stack_long_int:
.LFB180:
	.cfi_startproc
	movl	%esi, (%rdi)
	shrq	$32, %rsi
	movl	%esi, 9(%rdi)
	ret
	.cfi_endproc
.LFE180:
	.size	set_stack_long_int, .-set_stack_long_int
	.p2align 4,,15
	.globl	set_stack_pointer
	.type	set_stack_pointer, @function
set_stack_pointer:
.LFB181:
	.cfi_startproc
	movl	%esi, (%rdi)
	shrq	$32, %rsi
	movl	%esi, 9(%rdi)
	ret
	.cfi_endproc
.LFE181:
	.size	set_stack_pointer, .-set_stack_pointer
	.p2align 4,,15
	.globl	set_stack_float
	.type	set_stack_float, @function
set_stack_float:
.LFB182:
	.cfi_startproc
	movss	%xmm0, (%rdi)
	ret
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
	movl	-8(%rsp), %eax
	movl	%eax, (%rdi)
	movl	-4(%rsp), %eax
	movl	%eax, 9(%rdi)
	ret
	.cfi_endproc
.LFE183:
	.size	set_stack_double, .-set_stack_double
	.p2align 4,,15
	.globl	set_stack_array_element
	.type	set_stack_array_element, @function
set_stack_array_element:
.LFB184:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	imulq	%rdi, %rdx
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rcx, %rbp
	leaq	3(%rdx), %rcx
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	testq	%rdx, %rdx
	cmovns	%rdx, %rcx
	sarq	$2, %rcx
	leaq	0(,%rcx,4), %rax
	cmpq	%rax, %rdx
	je	.L1657
	leaq	(%rcx,%rcx,8), %r13
	negq	%rcx
	movl	$4, %ebx
	leaq	(%rdx,%rcx,4), %rdi
	addq	%rsi, %r13
	movq	%rbp, %rsi
	subq	%rdi, %rbx
	cmpq	%r12, %rbx
	cmovg	%r12, %rbx
	addq	%r13, %rdi
	movq	%rbx, %rdx
	call	memcpy
	leaq	9(%r13), %rsi
.L1650:
	cmpq	%rbx, %r12
	jle	.L1648
	leaq	-1(%r12), %rdi
	movq	%r12, %rdx
	xorl	%eax, %eax
	subq	%rbx, %rdx
	subq	%rbx, %rdi
	shrq	$2, %rdi
	leaq	9(%rdi,%rdi,8), %rdi
	.p2align 4,,10
	.p2align 3
.L1655:
	cmpq	$4, %rdx
	jg	.L1653
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	leaq	(%rsi,%rax), %rdi
	leaq	0(%rbp,%rbx), %rsi
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	memcpy
	.p2align 4,,10
	.p2align 3
.L1653:
	.cfi_restore_state
	movl	0(%rbp,%rbx), %ecx
	subq	$4, %rdx
	addq	$4, %rbx
	movl	%ecx, (%rsi,%rax)
	addq	$9, %rax
	cmpq	%rdi, %rax
	jne	.L1655
.L1648:
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
.L1657:
	.cfi_restore_state
	leaq	(%rcx,%rcx,8), %rax
	xorl	%ebx, %ebx
	addq	%rax, %rsi
	jmp	.L1650
	.cfi_endproc
.LFE184:
	.size	set_stack_array_element, .-set_stack_array_element
	.p2align 4,,15
	.globl	set_stack_char_array_element
	.type	set_stack_char_array_element, @function
set_stack_char_array_element:
.LFB185:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	3(%rsi), %rax
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	testq	%rsi, %rsi
	cmovns	%rsi, %rax
	movb	%dl, (%rsp)
	sarq	$2, %rax
	leaq	0(,%rax,4), %rcx
	cmpq	%rcx, %rsi
	je	.L1667
	leaq	(%rax,%rax,8), %r12
	negq	%rax
	movl	$4, %ebx
	leaq	(%rsi,%rax,4), %rax
	addq	%rdi, %r12
	subq	%rax, %rbx
	testq	%rbx, %rbx
	jg	.L1661
	leaq	(%r12,%rax), %rdi
	movq	%rbx, %rdx
	movq	%rsp, %rsi
	movq	%rsp, %rbp
	call	memcpy
	leaq	9(%r12), %rdi
.L1662:
	movl	$1, %edx
	xorl	%eax, %eax
	subq	%rbx, %rdx
.L1660:
	cmpq	$4, %rdx
	jg	.L1664
	leaq	0(%rbp,%rbx), %rsi
	addq	%rax, %rdi
	call	memcpy
.L1658:
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1661:
	.cfi_restore_state
	movb	%dl, (%r12,%rax)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1664:
	.cfi_restore_state
	movl	0(%rbp,%rbx), %ecx
	addq	$4, %rbx
	subq	$4, %rdx
	movl	%ecx, (%rdi,%rax)
	addq	$9, %rax
	testq	%rbx, %rbx
	jle	.L1660
	jmp	.L1658
	.p2align 4,,10
	.p2align 3
.L1667:
	leaq	(%rax,%rax,8), %rax
	xorl	%ebx, %ebx
	movq	%rsp, %rbp
	addq	%rax, %rdi
	jmp	.L1662
	.cfi_endproc
.LFE185:
	.size	set_stack_char_array_element, .-set_stack_char_array_element
	.p2align 4,,15
	.globl	set_stack_int_array_element
	.type	set_stack_int_array_element, @function
set_stack_int_array_element:
.LFB186:
	.cfi_startproc
	leaq	(%rsi,%rsi,8), %rax
	movl	%edx, (%rdi,%rax)
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
	salq	$3, %rsi
	leaq	3(%rsi), %rax
	testq	%rsi, %rsi
	cmovs	%rax, %rsi
	sarq	$2, %rsi
	leaq	(%rsi,%rsi,8), %rax
	addq	%rax, %rdi
	movl	%edx, (%rdi)
	shrq	$32, %rdx
	movl	%edx, 9(%rdi)
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
	salq	$3, %rsi
	leaq	3(%rsi), %rax
	testq	%rsi, %rsi
	cmovs	%rax, %rsi
	sarq	$2, %rsi
	leaq	(%rsi,%rsi,8), %rax
	addq	%rax, %rdi
	movl	%edx, (%rdi)
	shrq	$32, %rdx
	movl	%edx, 9(%rdi)
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
	leaq	(%rsi,%rsi,8), %rax
	movss	%xmm0, (%rdi,%rax)
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
	salq	$3, %rsi
	movsd	%xmm0, -24(%rsp)
	leaq	3(%rsi), %rax
	testq	%rsi, %rsi
	cmovs	%rax, %rsi
	sarq	$2, %rsi
	leaq	(%rsi,%rsi,8), %rax
	addq	%rax, %rdi
	movl	-24(%rsp), %eax
	movl	%eax, (%rdi)
	movl	-20(%rsp), %eax
	movl	%eax, 9(%rdi)
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
	testq	%rdi, %rdi
	movq	%rdx, %r8
	jle	.L1673
	leaq	-1(%rdi), %rax
	movq	%rdi, %rdx
	xorl	%ecx, %ecx
	shrq	$2, %rax
	leaq	4(,%rax,4), %r9
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1678:
	cmpq	$4, %rdx
	jg	.L1676
	leaq	(%rsi,%rcx), %rdi
	leaq	(%r8,%rax), %rsi
	jmp	memcpy
	.p2align 4,,10
	.p2align 3
.L1676:
	movl	(%r8,%rax), %edi
	addq	$4, %rax
	subq	$4, %rdx
	movl	%edi, (%rsi,%rcx)
	addq	$9, %rcx
	cmpq	%r9, %rax
	jne	.L1678
.L1673:
	rep ret
	.cfi_endproc
.LFE191:
	.size	set_arbitrary_block_in_stack, .-set_arbitrary_block_in_stack
	.p2align 4,,15
	.globl	set_arbitrary_block_in_stack_with_offset
	.type	set_arbitrary_block_in_stack_with_offset, @function
set_arbitrary_block_in_stack_with_offset:
.LFB192:
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
	movq	%rcx, %rbp
	leaq	3(%rdx), %rcx
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	testq	%rdx, %rdx
	cmovns	%rdx, %rcx
	sarq	$2, %rcx
	leaq	0(,%rcx,4), %rax
	cmpq	%rax, %rdx
	je	.L1688
	leaq	(%rcx,%rcx,8), %r13
	negq	%rcx
	movl	$4, %ebx
	leaq	(%rdx,%rcx,4), %rdi
	addq	%rsi, %r13
	movq	%rbp, %rsi
	subq	%rdi, %rbx
	cmpq	%r12, %rbx
	cmovg	%r12, %rbx
	addq	%r13, %rdi
	movq	%rbx, %rdx
	call	memcpy
	leaq	9(%r13), %rsi
.L1681:
	cmpq	%rbx, %r12
	jle	.L1679
	leaq	-1(%r12), %rdi
	movq	%r12, %rdx
	xorl	%eax, %eax
	subq	%rbx, %rdx
	subq	%rbx, %rdi
	shrq	$2, %rdi
	leaq	9(%rdi,%rdi,8), %rdi
	.p2align 4,,10
	.p2align 3
.L1686:
	cmpq	$4, %rdx
	jg	.L1684
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	leaq	(%rsi,%rax), %rdi
	leaq	0(%rbp,%rbx), %rsi
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	memcpy
	.p2align 4,,10
	.p2align 3
.L1684:
	.cfi_restore_state
	movl	0(%rbp,%rbx), %ecx
	subq	$4, %rdx
	addq	$4, %rbx
	movl	%ecx, (%rsi,%rax)
	addq	$9, %rax
	cmpq	%rdi, %rax
	jne	.L1686
.L1679:
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
.L1688:
	.cfi_restore_state
	leaq	(%rcx,%rcx,8), %rax
	xorl	%ebx, %ebx
	addq	%rax, %rsi
	jmp	.L1681
	.cfi_endproc
.LFE192:
	.size	set_arbitrary_block_in_stack_with_offset, .-set_arbitrary_block_in_stack_with_offset
	.section	.rodata.str1.1
.LC84:
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
	movl	$.LC84, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	xorl	%ebx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	puts
	cmpq	$0, total_stack_bytes_allocated(%rip)
	jle	.L1691
	.p2align 4,,10
	.p2align 3
.L1693:
	movzbl	0(%rbp,%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC10, %esi
	movl	$1, %edi
	addq	$1, %rbx
	call	__printf_chk
	cmpq	%rbx, total_stack_bytes_allocated(%rip)
	jg	.L1693
.L1691:
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
.LC85:
	.string	"Printing fun params:"
	.section	.rodata.str1.8
	.align 8
.LC86:
	.string	"Total size of all params in bytes: %ld\n"
	.align 8
.LC87:
	.string	"Total amount of chunks needed in secure stack: %ld\n"
	.section	.rodata.str1.1
.LC88:
	.string	"Number of char elements: %ld\n"
.LC89:
	.string	"Char elements:"
.LC90:
	.string	"%c "
.LC91:
	.string	"Number of int elements: %ld\n"
.LC92:
	.string	"Int elements:"
	.section	.rodata.str1.8
	.align 8
.LC93:
	.string	"Number of long int elements: %ld\n"
	.section	.rodata.str1.1
.LC94:
	.string	"Long int elements:"
.LC95:
	.string	"%ld "
	.section	.rodata.str1.8
	.align 8
.LC96:
	.string	"Number of float elements: %ld\n"
	.section	.rodata.str1.1
.LC97:
	.string	"Float elements:"
.LC98:
	.string	"%f "
	.section	.rodata.str1.8
	.align 8
.LC99:
	.string	"Number of double elements: %ld\n"
	.section	.rodata.str1.1
.LC100:
	.string	"Double elements:"
.LC101:
	.string	"%lf "
	.section	.rodata.str1.8
	.align 8
.LC102:
	.string	"Number of pointer elements: %ld\n"
	.section	.rodata.str1.1
.LC103:
	.string	"Pointer element sizes:"
.LC104:
	.string	"pointer elements:"
	.section	.rodata.str1.8
	.align 8
.LC105:
	.string	"Number of arb pointer elements: %ld\n"
	.section	.rodata.str1.1
.LC106:
	.string	"Arb pointer element sizes:"
.LC107:
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
	movl	$.LC85, %edi
	call	puts
	movq	(%rbx), %rdx
	movl	$.LC86, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movq	8(%rbx), %rdx
	movl	$.LC87, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movq	16(%rbx), %rax
	movl	$.LC88, %esi
	movl	$1, %edi
	movq	(%rax), %r12
	xorl	%eax, %eax
	movq	%r12, %rdx
	call	__printf_chk
	testq	%r12, %r12
	jle	.L1696
	movl	$.LC89, %edi
	xorl	%ebp, %ebp
	call	puts
	.p2align 4,,10
	.p2align 3
.L1698:
	movq	16(%rbx), %rax
	movl	$.LC90, %esi
	movl	$1, %edi
	movq	8(%rax), %rax
	movsbl	(%rax,%rbp), %edx
	xorl	%eax, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L1698
	movl	$10, %edi
	call	putchar
.L1696:
	movq	16(%rbx), %rax
	movl	$.LC91, %esi
	movl	$1, %edi
	movq	16(%rax), %r12
	xorl	%eax, %eax
	movq	%r12, %rdx
	call	__printf_chk
	testq	%r12, %r12
	jle	.L1699
	movl	$.LC92, %edi
	xorl	%ebp, %ebp
	call	puts
	.p2align 4,,10
	.p2align 3
.L1701:
	movq	16(%rbx), %rax
	movl	$.LC24, %esi
	movl	$1, %edi
	movq	24(%rax), %rax
	movl	(%rax,%rbp,4), %edx
	xorl	%eax, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L1701
	movl	$10, %edi
	call	putchar
.L1699:
	movq	16(%rbx), %rax
	movl	$.LC93, %esi
	movl	$1, %edi
	movq	32(%rax), %r12
	xorl	%eax, %eax
	movq	%r12, %rdx
	call	__printf_chk
	testq	%r12, %r12
	jle	.L1702
	movl	$.LC94, %edi
	xorl	%ebp, %ebp
	call	puts
	.p2align 4,,10
	.p2align 3
.L1704:
	movq	16(%rbx), %rax
	movl	$.LC95, %esi
	movl	$1, %edi
	movq	40(%rax), %rax
	movq	(%rax,%rbp,8), %rdx
	xorl	%eax, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L1704
	movl	$10, %edi
	call	putchar
.L1702:
	movq	16(%rbx), %rax
	movl	$.LC96, %esi
	movl	$1, %edi
	movq	48(%rax), %r12
	xorl	%eax, %eax
	movq	%r12, %rdx
	call	__printf_chk
	testq	%r12, %r12
	jle	.L1705
	movl	$.LC97, %edi
	xorl	%ebp, %ebp
	call	puts
	.p2align 4,,10
	.p2align 3
.L1707:
	movq	16(%rbx), %rax
	movl	$.LC98, %esi
	movl	$1, %edi
	movq	56(%rax), %rax
	movss	(%rax,%rbp,4), %xmm0
	movl	$1, %eax
	addq	$1, %rbp
	cvtps2pd	%xmm0, %xmm0
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L1707
	movl	$10, %edi
	call	putchar
.L1705:
	movq	16(%rbx), %rax
	movl	$.LC99, %esi
	movl	$1, %edi
	movq	64(%rax), %r12
	xorl	%eax, %eax
	movq	%r12, %rdx
	call	__printf_chk
	testq	%r12, %r12
	jle	.L1708
	movl	$.LC100, %edi
	xorl	%ebp, %ebp
	call	puts
	.p2align 4,,10
	.p2align 3
.L1710:
	movq	16(%rbx), %rax
	movl	$.LC101, %esi
	movl	$1, %edi
	movq	72(%rax), %rax
	movsd	(%rax,%rbp,8), %xmm0
	movl	$1, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L1710
	movl	$10, %edi
	call	putchar
.L1708:
	movq	16(%rbx), %rax
	movl	$.LC102, %esi
	movl	$1, %edi
	movq	80(%rax), %r12
	xorl	%eax, %eax
	movq	%r12, %rdx
	call	__printf_chk
	testq	%r12, %r12
	jle	.L1711
	movl	$.LC103, %edi
	xorl	%ebp, %ebp
	call	puts
	.p2align 4,,10
	.p2align 3
.L1713:
	movq	16(%rbx), %rax
	movl	$.LC95, %esi
	movl	$1, %edi
	movq	88(%rax), %rax
	movq	(%rax,%rbp,8), %rdx
	xorl	%eax, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L1713
	movl	$10, %edi
	xorl	%ebp, %ebp
	call	putchar
	movl	$.LC104, %edi
	call	puts
	.p2align 4,,10
	.p2align 3
.L1715:
	movq	16(%rbx), %rax
	movl	$.LC95, %esi
	movl	$1, %edi
	movq	96(%rax), %rax
	movq	(%rax,%rbp,8), %rdx
	xorl	%eax, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L1715
	movl	$10, %edi
	call	putchar
.L1711:
	movq	16(%rbx), %rax
	movl	$.LC105, %esi
	movl	$1, %edi
	movq	104(%rax), %r12
	xorl	%eax, %eax
	movq	%r12, %rdx
	call	__printf_chk
	testq	%r12, %r12
	jle	.L1695
	movl	$.LC106, %edi
	xorl	%ebp, %ebp
	call	puts
	.p2align 4,,10
	.p2align 3
.L1718:
	movq	16(%rbx), %rax
	movl	$.LC95, %esi
	movl	$1, %edi
	movq	112(%rax), %rax
	movq	(%rax,%rbp,8), %rdx
	xorl	%eax, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L1718
	movl	$10, %edi
	xorl	%ebp, %ebp
	call	putchar
	movl	$.LC107, %edi
	call	puts
	.p2align 4,,10
	.p2align 3
.L1720:
	movq	16(%rbx), %rax
	movl	$.LC95, %esi
	movl	$1, %edi
	movq	120(%rax), %rax
	movq	(%rax,%rbp,8), %rdx
	xorl	%eax, %eax
	addq	$1, %rbp
	call	__printf_chk
	cmpq	%r12, %rbp
	jne	.L1720
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
.L1695:
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
.LC108:
	.string	"Printing fun params that point in stack:"
	.text
	.p2align 4,,15
	.globl	print_fun_params_that_point_in_stack
	.type	print_fun_params_that_point_in_stack, @function
print_fun_params_that_point_in_stack:
.LFB195:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp
	movl	$.LC108, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	call	puts
	movq	0(%rbp), %rdx
	movl	$.LC86, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movq	8(%rbp), %rdx
	movl	$.LC87, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movq	16(%rbp), %rax
	movl	$.LC88, %esi
	movl	$1, %edi
	movq	(%rax), %r13
	xorl	%eax, %eax
	movq	%r13, %rdx
	call	__printf_chk
	testq	%r13, %r13
	jle	.L1723
	movl	$.LC89, %edi
	xorl	%r12d, %r12d
	call	puts
	jmp	.L1732
	.p2align 4,,10
	.p2align 3
.L1758:
	leaq	(%rsp,%rbx), %rdi
	addq	%rax, %rsi
	call	memcpy
.L1728:
	movsbl	(%rsp), %edx
	xorl	%eax, %eax
	movl	$.LC90, %esi
	movl	$1, %edi
	addq	$1, %r12
	call	__printf_chk
	cmpq	%r13, %r12
	je	.L1756
.L1732:
	movq	16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%r12, %rax
	sarq	$2, %rax
	leaq	0(,%rax,4), %rdx
	cmpq	%rdx, %r12
	je	.L1757
	leaq	(%rax,%rax,8), %r14
	negq	%rax
	movl	$4, %ebx
	leaq	(%r12,%rax,4), %rax
	addq	%rcx, %r14
	subq	%rax, %rbx
	testq	%rbx, %rbx
	jg	.L1726
	leaq	(%r14,%rax), %rsi
	movl	$1, %ecx
	movq	%rbx, %rdx
	movq	%rsp, %rdi
	call	__memcpy_chk
	leaq	9(%r14), %rsi
.L1727:
	movl	$1, %edx
	xorl	%eax, %eax
	subq	%rbx, %rdx
.L1725:
	cmpq	$4, %rdx
	jle	.L1758
	movl	(%rsi,%rax), %ecx
	subq	$4, %rdx
	addq	$9, %rax
	movl	%ecx, (%rsp,%rbx)
	addq	$4, %rbx
	testq	%rbx, %rbx
	jle	.L1725
	jmp	.L1728
	.p2align 4,,10
	.p2align 3
.L1726:
	movzbl	(%r14,%rax), %eax
	movb	%al, (%rsp)
	jmp	.L1728
	.p2align 4,,10
	.p2align 3
.L1757:
	leaq	(%rax,%rax,8), %rsi
	xorl	%ebx, %ebx
	addq	%rcx, %rsi
	jmp	.L1727
.L1756:
	movl	$10, %edi
	call	putchar
.L1723:
	movq	16(%rbp), %rax
	movl	$.LC91, %esi
	movl	$1, %edi
	movq	16(%rax), %r13
	xorl	%eax, %eax
	movq	%r13, %rdx
	call	__printf_chk
	testq	%r13, %r13
	jle	.L1733
	movl	$.LC92, %edi
	xorl	%r12d, %r12d
	movq	%rsp, %rbx
	call	puts
	.p2align 4,,10
	.p2align 3
.L1735:
	movq	16(%rbp), %rax
	movq	%r12, %rcx
	movl	$1, %edx
	movq	%rbx, %rdi
	addq	$1, %r12
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movl	(%rsp), %edx
	xorl	%eax, %eax
	movl	$.LC24, %esi
	movl	$1, %edi
	call	__printf_chk
	cmpq	%r13, %r12
	jne	.L1735
	movl	$10, %edi
	call	putchar
.L1733:
	movq	16(%rbp), %rax
	movl	$.LC93, %esi
	movl	$1, %edi
	movq	32(%rax), %r13
	xorl	%eax, %eax
	movq	%r13, %rdx
	call	__printf_chk
	testq	%r13, %r13
	jle	.L1736
	movl	$.LC94, %edi
	xorl	%r12d, %r12d
	movq	%rsp, %rbx
	call	puts
	.p2align 4,,10
	.p2align 3
.L1738:
	movq	16(%rbp), %rdx
	leaq	0(,%r12,8), %rax
	movl	$.LC95, %esi
	movl	$1, %edi
	addq	$1, %r12
	sarq	$2, %rax
	leaq	(%rax,%rax,8), %rax
	addq	40(%rdx), %rax
	movl	(%rax), %edx
	movl	%edx, (%rbx)
	movl	9(%rax), %eax
	movl	%eax, 4(%rbx)
	movq	(%rsp), %rdx
	xorl	%eax, %eax
	call	__printf_chk
	cmpq	%r13, %r12
	jne	.L1738
	movl	$10, %edi
	call	putchar
.L1736:
	movq	16(%rbp), %rax
	movl	$.LC96, %esi
	movl	$1, %edi
	movq	48(%rax), %r13
	xorl	%eax, %eax
	movq	%r13, %rdx
	call	__printf_chk
	testq	%r13, %r13
	jle	.L1739
	movl	$.LC97, %edi
	xorl	%r12d, %r12d
	movq	%rsp, %rbx
	call	puts
	.p2align 4,,10
	.p2align 3
.L1741:
	movq	16(%rbp), %rax
	movq	%r12, %rcx
	movl	$1, %edx
	movq	%rbx, %rdi
	addq	$1, %r12
	movq	56(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movss	(%rsp), %xmm0
	movl	$.LC98, %esi
	movl	$1, %edi
	movl	$1, %eax
	cvtps2pd	%xmm0, %xmm0
	call	__printf_chk
	cmpq	%r13, %r12
	jne	.L1741
	movl	$10, %edi
	call	putchar
.L1739:
	movq	16(%rbp), %rax
	movl	$.LC99, %esi
	movl	$1, %edi
	movq	64(%rax), %r13
	xorl	%eax, %eax
	movq	%r13, %rdx
	call	__printf_chk
	testq	%r13, %r13
	jle	.L1742
	movl	$.LC100, %edi
	xorl	%r12d, %r12d
	movq	%rsp, %rbx
	call	puts
	.p2align 4,,10
	.p2align 3
.L1744:
	movq	16(%rbp), %rdx
	leaq	0(,%r12,8), %rax
	movl	$.LC101, %esi
	movl	$1, %edi
	addq	$1, %r12
	sarq	$2, %rax
	leaq	(%rax,%rax,8), %rax
	addq	72(%rdx), %rax
	movl	(%rax), %edx
	movl	%edx, (%rbx)
	movl	9(%rax), %eax
	movl	%eax, 4(%rbx)
	movl	$1, %eax
	movsd	(%rsp), %xmm0
	call	__printf_chk
	cmpq	%r13, %r12
	jne	.L1744
	movl	$10, %edi
	call	putchar
.L1742:
	movq	16(%rbp), %rax
	movl	$.LC102, %esi
	movl	$1, %edi
	movq	80(%rax), %r13
	xorl	%eax, %eax
	movq	%r13, %rdx
	call	__printf_chk
	testq	%r13, %r13
	jle	.L1745
	movl	$.LC103, %edi
	xorl	%ebx, %ebx
	call	puts
	.p2align 4,,10
	.p2align 3
.L1747:
	movq	16(%rbp), %rax
	movl	$.LC95, %esi
	movl	$1, %edi
	movq	88(%rax), %rax
	movq	(%rax,%rbx,8), %rdx
	xorl	%eax, %eax
	addq	$1, %rbx
	call	__printf_chk
	cmpq	%r13, %rbx
	jne	.L1747
	movl	$10, %edi
	xorl	%r12d, %r12d
	movq	%rsp, %rbx
	call	putchar
	movl	$.LC104, %edi
	call	puts
	.p2align 4,,10
	.p2align 3
.L1749:
	movq	16(%rbp), %rax
	movq	%r12, %rcx
	movl	$1, %edx
	movq	%rbx, %rdi
	addq	$1, %r12
	movq	96(%rax), %rsi
	call	get_secure_stack_data.constprop.8
	movq	(%rsp), %rdx
	xorl	%eax, %eax
	movl	$.LC95, %esi
	movl	$1, %edi
	call	__printf_chk
	cmpq	%r13, %r12
	jne	.L1749
	movl	$10, %edi
	call	putchar
.L1745:
	movq	16(%rbp), %rax
	movl	$.LC105, %esi
	movl	$1, %edi
	movq	104(%rax), %r12
	xorl	%eax, %eax
	movq	%r12, %rdx
	call	__printf_chk
	testq	%r12, %r12
	jle	.L1722
	movl	$.LC106, %edi
	xorl	%ebx, %ebx
	call	puts
	.p2align 4,,10
	.p2align 3
.L1752:
	movq	16(%rbp), %rax
	movl	$.LC95, %esi
	movl	$1, %edi
	movq	112(%rax), %rax
	movq	(%rax,%rbx,8), %rdx
	xorl	%eax, %eax
	addq	$1, %rbx
	call	__printf_chk
	cmpq	%r12, %rbx
	jne	.L1752
	movl	$10, %edi
	xorl	%ebx, %ebx
	call	putchar
	movl	$.LC107, %edi
	call	puts
	.p2align 4,,10
	.p2align 3
.L1754:
	movq	16(%rbp), %rax
	movl	$.LC95, %esi
	movl	$1, %edi
	movq	120(%rax), %rax
	movq	(%rax,%rbx,8), %rdx
	xorl	%eax, %eax
	addq	$1, %rbx
	call	__printf_chk
	cmpq	%r12, %rbx
	jne	.L1754
	movl	$10, %edi
	call	putchar
.L1722:
	addq	$16, %rsp
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
	ret
	.cfi_endproc
.LFE195:
	.size	print_fun_params_that_point_in_stack, .-print_fun_params_that_point_in_stack
	.p2align 4,,15
	.globl	tower_of_Hanoi_init_secure_template
	.type	tower_of_Hanoi_init_secure_template, @function
tower_of_Hanoi_init_secure_template:
.LFB196:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%edi, %ebp
	movl	$24, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movb	%sil, (%rsp)
	movb	%dl, 1(%rsp)
	movb	%cl, 2(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L1770
	movq	$7, (%rax)
	movq	$2, 8(%rax)
	movl	$128, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rdx
	je	.L1771
	movq	%rax, 16(%rbx)
	movl	$16, %ecx
	xorl	%eax, %eax
	movq	%rdx, %rdi
	rep stosq
	movq	last_unused_stack_memory(%rip), %rcx
	movq	entire_stack_memory_chunk(%rip), %rax
	addq	total_stack_bytes_allocated(%rip), %rax
	movq	$3, (%rdx)
	movq	$1, 16(%rdx)
	leaq	9(%rcx), %rsi
	cmpq	%rax, %rsi
	movq	%rsi, last_unused_stack_memory(%rip)
	jnb	.L1772
	testq	%rcx, %rcx
	movq	%rcx, 8(%rdx)
	je	.L1773
	movzwl	(%rsp), %eax
	movw	%ax, (%rcx)
	movzbl	2(%rsp), %eax
	movb	%al, 2(%rcx)
	movq	entire_stack_memory_chunk(%rip), %rax
	addq	total_stack_bytes_allocated(%rip), %rax
	movq	last_unused_stack_memory(%rip), %rdx
.L1763:
	leaq	9(%rdx), %rcx
	cmpq	%rax, %rcx
	movq	%rcx, last_unused_stack_memory(%rip)
	jnb	.L1774
.L1765:
	movq	16(%rbx), %rax
	testq	%rdx, %rdx
	movq	%rdx, 24(%rax)
	je	.L1768
	movl	%ebp, (%rdx)
.L1768:
	addq	$24, %rsp
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
.L1772:
	.cfi_restore_state
	movq	%rcx, last_unused_stack_memory(%rip)
	movq	stderr(%rip), %rcx
	movl	$68, %edx
	movl	$1, %esi
	movl	$.LC82, %edi
	call	fwrite
	movq	16(%rbx), %rax
	movq	last_unused_stack_memory(%rip), %rdx
	movq	$0, 8(%rax)
	movq	entire_stack_memory_chunk(%rip), %rax
	leaq	9(%rdx), %rcx
	addq	total_stack_bytes_allocated(%rip), %rax
	movq	%rcx, last_unused_stack_memory(%rip)
	cmpq	%rax, %rcx
	jb	.L1765
.L1774:
	movq	stderr(%rip), %rcx
	movq	%rdx, last_unused_stack_memory(%rip)
	movl	$1, %esi
	movl	$68, %edx
	movl	$.LC82, %edi
	call	fwrite
	movq	16(%rbx), %rax
	movq	$0, 24(%rax)
	addq	$24, %rsp
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
.L1773:
	.cfi_restore_state
	movq	%rsi, %rdx
	jmp	.L1763
.L1770:
	movl	$1556, %esi
	movl	$__func__.6767, %edi
	call	error_checking_malloc.part.0
.L1771:
	movl	$1566, %esi
	movl	$__func__.6767, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE196:
	.size	tower_of_Hanoi_init_secure_template, .-tower_of_Hanoi_init_secure_template
	.section	.rodata.str1.1
.LC109:
	.string	"Allocating double array"
.LC113:
	.string	"Initializing fun params"
	.section	.rodata.str1.8
	.align 8
.LC116:
	.string	"Inserting fun params into secure stack"
	.section	.rodata.str1.1
.LC117:
	.string	"Printing chars"
.LC118:
	.string	"Printing ints"
.LC119:
	.string	"Printing doubles"
.LC120:
	.string	"Changing pointer"
.LC121:
	.string	"Printing array of doubles"
.LC122:
	.string	"i=%d, %lf "
	.section	.rodata.str1.8
	.align 8
.LC123:
	.string	"Fetching double array using arbitrary block"
	.align 8
.LC124:
	.string	"Fetching double array elements (one by one), using arbitrary blocks"
	.text
	.p2align 4,,15
	.globl	stack_fun_params_test
	.type	stack_fun_params_test, @function
stack_fun_params_test:
.LFB197:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$.LC109, %edi
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
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	call	puts
	movl	$80, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L1811
	salq	$60, %rax
	shrq	$63, %rax
	testl	%eax, %eax
	je	.L1805
	movsd	.LC110(%rip), %xmm6
	movl	$9, %esi
	movl	$1, %edx
	movsd	%xmm6, (%rbx)
.L1777:
	leal	1(%rdx), %ecx
	movl	%eax, %eax
	cmpl	$9, %esi
	movl	%ecx, 116(%rsp)
	leal	2(%rdx), %ecx
	movd	116(%rsp), %xmm5
	movl	%ecx, 120(%rsp)
	leal	3(%rdx), %ecx
	movd	120(%rsp), %xmm1
	movl	%edx, 120(%rsp)
	movl	%ecx, 124(%rsp)
	movd	120(%rsp), %xmm0
	leaq	(%rbx,%rax,8), %rcx
	movd	124(%rsp), %xmm4
	leal	8(%rdx), %eax
	punpckldq	%xmm5, %xmm0
	punpckldq	%xmm4, %xmm1
	cltq
	punpcklqdq	%xmm1, %xmm0
	movdqa	.LC111(%rip), %xmm1
	movdqa	%xmm0, %xmm2
	paddd	.LC112(%rip), %xmm0
	paddd	%xmm1, %xmm0
	paddd	%xmm1, %xmm2
	cvtdq2pd	%xmm0, %xmm1
	cvtdq2pd	%xmm2, %xmm3
	pshufd	$238, %xmm0, %xmm0
	movlpd	%xmm3, (%rcx)
	pshufd	$238, %xmm2, %xmm2
	movhpd	%xmm3, 8(%rcx)
	movlpd	%xmm1, 32(%rcx)
	cvtdq2pd	%xmm0, %xmm0
	movhpd	%xmm1, 40(%rcx)
	movlpd	%xmm0, 48(%rcx)
	cvtdq2pd	%xmm2, %xmm2
	movhpd	%xmm0, 56(%rcx)
	movlpd	%xmm2, 16(%rcx)
	movhpd	%xmm2, 24(%rcx)
	leal	108(%rdx), %ecx
	cvtsi2sd	%ecx, %xmm0
	movsd	%xmm0, (%rbx,%rax,8)
	leal	9(%rdx), %eax
	je	.L1778
	addl	$109, %edx
	cltq
	cvtsi2sd	%edx, %xmm0
	movsd	%xmm0, (%rbx,%rax,8)
.L1778:
	movl	$.LC113, %edi
	call	puts
	movsd	.LC114(%rip), %xmm1
	movl	$102, %r9d
	movsd	.LC115(%rip), %xmm0
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
	movl	$.LC116, %edi
	movq	%rax, %rbx
	call	puts
	movq	%rbx, %rdi
	call	put_fun_params_into_secure_stack
	movq	%rbx, %rdi
	movq	%rax, %r13
	xorl	%ebx, %ebx
	call	free_fun_params
	movl	$.LC117, %edi
	call	puts
	.p2align 4,,10
	.p2align 3
.L1780:
	movq	16(%r13), %rax
	leaq	128(%rsp), %rdi
	movq	%rbx, %rcx
	movl	$1, %edx
	addq	$1, %rbx
	movq	8(%rax), %rsi
	call	get_secure_stack_data.constprop.7
	movsbl	128(%rsp), %edx
	xorl	%eax, %eax
	movl	$.LC90, %esi
	movl	$1, %edi
	call	__printf_chk
	cmpq	$5, %rbx
	jne	.L1780
	movl	$10, %edi
	xorb	%bl, %bl
	call	putchar
	movl	$.LC118, %edi
	call	puts
.L1782:
	movq	16(%r13), %rax
	leaq	128(%rsp), %rdi
	movq	%rbx, %rcx
	movl	$1, %edx
	addq	$1, %rbx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movl	128(%rsp), %edx
	xorl	%eax, %eax
	movl	$.LC24, %esi
	movl	$1, %edi
	call	__printf_chk
	cmpq	$2, %rbx
	jne	.L1782
	movl	$10, %edi
	xorb	%bl, %bl
	call	putchar
	movl	$.LC119, %edi
	call	puts
.L1784:
	movq	16(%r13), %rax
	leaq	128(%rsp), %rdi
	movq	%rbx, %rcx
	movl	$1, %edx
	addq	$1, %rbx
	movq	72(%rax), %rsi
	call	get_secure_stack_data.constprop.8
	movsd	128(%rsp), %xmm0
	movl	$.LC101, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	cmpq	$2, %rbx
	jne	.L1784
	movl	$10, %edi
	xorb	%bl, %bl
	call	putchar
	movl	$.LC120, %edi
	call	puts
	movq	16(%r13), %rax
	leaq	128(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$8, %esi
	movq	96(%rax), %rdx
	movq	24(%rax), %rax
	movq	%rax, 128(%rsp)
	call	set_secure_stack_data.constprop.6
	movq	16(%r13), %rax
	leaq	128(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	96(%rax), %rsi
	call	get_secure_stack_data.constprop.8
	movq	128(%rsp), %rsi
	leaq	128(%rsp), %rdi
	xorl	%edx, %edx
	movl	$45, 128(%rsp)
	call	set_secure_stack_data.constprop.4
	movl	$.LC118, %edi
	call	puts
.L1786:
	movq	16(%r13), %rax
	leaq	128(%rsp), %rdi
	movq	%rbx, %rcx
	movl	$1, %edx
	addq	$1, %rbx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movl	128(%rsp), %edx
	xorl	%eax, %eax
	movl	$.LC24, %esi
	movl	$1, %edi
	call	__printf_chk
	cmpq	$2, %rbx
	jne	.L1786
	movl	$10, %edi
	xorb	%bl, %bl
	call	putchar
	movl	$.LC121, %edi
	call	puts
	.p2align 4,,10
	.p2align 3
.L1788:
	movq	16(%r13), %rax
	movl	$.LC122, %esi
	movl	$1, %edi
	movq	120(%rax), %rdx
	leaq	0(,%rbx,8), %rax
	sarq	$2, %rax
	leaq	(%rax,%rax,8), %rax
	addq	(%rdx), %rax
	movl	(%rax), %edx
	movl	%edx, 128(%rsp)
	movl	9(%rax), %eax
	movl	%ebx, %edx
	addq	$1, %rbx
	movl	%eax, 132(%rsp)
	movl	$1, %eax
	movsd	128(%rsp), %xmm0
	call	__printf_chk
	cmpq	$10, %rbx
	jne	.L1788
	movl	$.LC123, %edi
	call	puts
	movl	$80, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbp
	je	.L1812
	movq	16(%r13), %rax
	xorl	%edi, %edi
	movl	$80, %ecx
	movq	120(%rax), %rax
	movq	(%rax), %rsi
	xorl	%eax, %eax
.L1790:
	movl	(%rsi,%rax), %edx
	addq	$9, %rax
	movl	%edx, 0(%rbp,%rdi)
	addq	$4, %rdi
	movq	%rcx, %rdx
	subq	%rdi, %rdx
	cmpq	$171, %rax
	jne	.L1790
	addq	%rbp, %rdi
	addq	$171, %rsi
	xorl	%ebx, %ebx
	call	memcpy
.L1791:
	movsd	0(%rbp,%rbx), %xmm0
	movl	$.LC72, %esi
	movl	$1, %edi
	movl	$1, %eax
	addq	$8, %rbx
	call	__printf_chk
	cmpq	$80, %rbx
	jne	.L1791
	movl	$10, %edi
	call	putchar
	movl	$.LC124, %edi
	call	puts
	movl	$80, %edi
	call	malloc
	testq	%rax, %rax
	je	.L1813
	movq	%rax, %rbp
	xorl	%r12d, %r12d
	movl	$4, %r14d
	jmp	.L1804
	.p2align 4,,10
	.p2align 3
.L1816:
	leaq	0(%rbp,%rbx), %rdi
	addq	%rax, %rsi
	call	memcpy
.L1800:
	movsd	0(%rbp), %xmm0
	movl	$.LC72, %esi
	movl	$1, %edi
	movl	$1, %eax
	addq	$8, %r12
	call	__printf_chk
	addq	$8, %rbp
	cmpq	$80, %r12
	je	.L1814
.L1804:
	movq	16(%r13), %rax
	movq	120(%rax), %rax
	movq	(%rax), %rdx
	movq	%r12, %rax
	sarq	$2, %rax
	leaq	0(,%rax,4), %rcx
	cmpq	%rcx, %r12
	je	.L1815
	leaq	(%rax,%rax,8), %r15
	negq	%rax
	movq	%r14, %rbx
	leaq	(%r12,%rax,4), %rax
	addq	%rdx, %r15
	subq	%rax, %rbx
	cmpq	$7, %rbx
	jg	.L1798
	leaq	(%r15,%rax), %rsi
	movq	%rbx, %rdx
	movq	%rbp, %rdi
	call	memcpy
	leaq	9(%r15), %rsi
.L1799:
	movl	$8, %edx
	xorl	%eax, %eax
	subq	%rbx, %rdx
.L1797:
	cmpq	$4, %rdx
	jle	.L1816
	movl	(%rsi,%rax), %ecx
	addq	$4, %rbx
	addq	$9, %rax
	subq	$4, %rdx
	movl	%ecx, -4(%rbx,%rbp)
	cmpq	$7, %rbx
	jle	.L1797
	jmp	.L1800
	.p2align 4,,10
	.p2align 3
.L1798:
	movq	(%r15,%rax), %rax
	movq	%rax, 0(%rbp)
	jmp	.L1800
	.p2align 4,,10
	.p2align 3
.L1815:
	leaq	(%rax,%rax,8), %rsi
	xorl	%ebx, %ebx
	addq	%rdx, %rsi
	jmp	.L1799
.L1814:
	movl	$10, %edi
	call	putchar
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
.L1805:
	.cfi_restore_state
	movl	$10, %esi
	xorl	%edx, %edx
	jmp	.L1777
.L1811:
	movl	$9, %esi
	movl	$__func__.6773, %edi
	call	error_checking_malloc.part.0
.L1813:
	movl	$66, %esi
	movl	$__func__.6773, %edi
	call	error_checking_malloc.part.0
.L1812:
	movl	$57, %esi
	movl	$__func__.6773, %edi
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
	jbe	.L1817
	cmpl	$3, %edi
	je	.L1817
	leal	-3(%rdi), %eax
	cmpl	$1, %eax
	je	.L1817
	leal	-4(%rdi), %r10d
	movl	%esi, %r13d
	movl	%edx, %r9d
	movl	%ecx, %r8d
	cmpl	$1, %r10d
	je	.L1819
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
.L1819:
	cmpl	$1, %eax
	je	.L1817
	cmpl	$1, %r10d
	je	.L1817
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
.L1817:
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
	testq	%rbp, %rbp
	movq	%rax, %rbx
	je	.L1839
	movq	16(%rbp), %rax
	testq	%rax, %rax
	je	.L1840
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
	call	free
.L1840:
	movq	%rbp, %rdi
	call	free
.L1839:
	movq	16(%rbx), %rax
	leaq	48(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	cmpl	$1, 48(%rsp)
	je	.L1850
	movq	16(%rbx), %rax
	leaq	48(%rsp), %rdi
	movl	$1, %ecx
	movl	$1, %edx
	movq	8(%rax), %rsi
	call	get_secure_stack_data.constprop.7
	movq	16(%rbx), %rax
	leaq	48(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movsbl	48(%rsp), %r13d
	movq	8(%rax), %rsi
	movsbl	2(%rsi), %r12d
	movsbl	(%rsi), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movl	48(%rsp), %eax
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movl	%ebp, %esi
	leal	-1(%rax), %edi
	call	towerOfHanoi_secure
	movq	16(%rbx), %rax
	leaq	48(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	8(%rax), %rsi
	call	get_secure_stack_data.constprop.7
	movq	16(%rbx), %rax
	leaq	48(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movsbl	48(%rsp), %r13d
	movq	8(%rax), %rsi
	movsbl	1(%rsi), %ebp
	call	get_secure_stack_data.constprop.7
	movq	16(%rbx), %rax
	leaq	48(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movsbl	48(%rsp), %r12d
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movl	48(%rsp), %eax
	movl	%r13d, %ecx
	movl	%r12d, %esi
	movl	%ebp, %edx
	leal	-1(%rax), %edi
	call	towerOfHanoi_secure
.L1850:
	movq	8(%rbx), %rax
	leaq	(%rax,%rax,8), %rax
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
	call	get_secure_stack_data.constprop.9
	cmpl	$1, (%rsp)
	je	.L1855
	movq	16(%rbx), %rax
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rsp, %rdi
	movq	8(%rax), %rsi
	movsbl	1(%rsi), %r12d
	movsbl	2(%rsi), %ebp
	call	get_secure_stack_data.constprop.7
	movq	16(%rbx), %rax
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rsp, %rdi
	movsbl	(%rsp), %r13d
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movl	(%rsp), %eax
	movl	%r13d, %esi
	movl	%r12d, %ecx
	movl	%ebp, %edx
	leal	-1(%rax), %edi
	call	towerOfHanoi_secure_using_template
	movq	16(%rbx), %rax
	movl	$2, %ecx
	movl	$1, %edx
	movq	%rsp, %rdi
	movq	8(%rax), %rsi
	movsbl	(%rsi), %r12d
	movsbl	1(%rsi), %ebp
	call	get_secure_stack_data.constprop.7
	movq	16(%rbx), %rax
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rsp, %rdi
	movsbl	(%rsp), %r13d
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movl	(%rsp), %eax
	movl	%r13d, %esi
	movl	%r12d, %ecx
	movl	%ebp, %edx
	leal	-1(%rax), %edi
	call	towerOfHanoi_secure_using_template
.L1855:
	movq	8(%rbx), %rax
	leaq	(%rax,%rax,8), %rax
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
	call	get_secure_stack_data.constprop.9
	cmpl	$1, (%rsp)
	je	.L1860
	movq	%rbp, %rsi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rsp, %rdi
	movsbl	1(%rbp), %r14d
	movsbl	2(%rbp), %r13d
	call	get_secure_stack_data.constprop.7
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%r12, %rsi
	movq	%rsp, %rdi
	movsbl	(%rsp), %r15d
	call	get_secure_stack_data.constprop.9
	movl	(%rsp), %eax
	movl	%r14d, %ecx
	movl	%r13d, %edx
	movl	%r15d, %esi
	leal	-1(%rax), %edi
	call	towerOfHanoi_secure_using_template
	movq	%rbp, %rsi
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rsp, %rdi
	movsbl	0(%rbp), %r13d
	call	get_secure_stack_data.constprop.7
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%r12, %rsi
	movq	%rsp, %rdi
	movsbl	(%rsp), %r14d
	movsbl	2(%rbp), %ebp
	call	get_secure_stack_data.constprop.9
	movl	(%rsp), %eax
	movl	%r13d, %ecx
	movl	%r14d, %edx
	movl	%ebp, %esi
	leal	-1(%rax), %edi
	call	towerOfHanoi_secure_using_template
.L1860:
	movq	8(%rbx), %rax
	leaq	(%rax,%rax,8), %rax
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
	jne	.L1863
	xorl	%eax, %eax
	cmpb	$66, 1(%rdi)
	sete	%al
	ret
	.p2align 4,,10
	.p2align 3
.L1863:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE202:
	.size	check_next_canaries, .-check_next_canaries
	.section	.rodata.str1.1
.LC125:
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
	ja	.L1881
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.L1869
	.p2align 4,,10
	.p2align 3
.L1866:
	addq	$1, %rax
	cmpq	$__etext+1, %rax
	je	.L1883
.L1869:
	cmpb	$-21, (%rax)
	jne	.L1866
	cmpb	$7, 1(%rax)
	jne	.L1866
	cmpb	$66, 2(%rax)
	jne	.L1866
	cmpb	$66, 3(%rax)
	jne	.L1866
	xorb	4(%rax), %dl
	xorb	8(%rax), %cl
	addq	$1, %rax
	xorb	6(%rax), %sil
	xorb	5(%rax), %dil
	xorb	4(%rax), %r8b
	cmpq	$__etext+1, %rax
	movl	%edx, %r9d
	jne	.L1869
	.p2align 4,,10
	.p2align 3
.L1883:
	movb	%r8b, 1(%rsp)
	movb	%r9b, (%rsp)
	movl	%r9d, %ebx
	movb	%dil, 2(%rsp)
	movb	%sil, 3(%rsp)
	movl	%edi, %r8d
	movb	%cl, 4(%rsp)
	movl	%ecx, %r10d
.L1865:
	movzbl	1(%rsp), %r9d
	movzbl	3(%rsp), %edi
	xorl	%esi, %esi
	movq	entire_memory_chunk(%rip), %rcx
	movq	total_bytes_allocated(%rip), %r11
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1870:
	cmpq	%r11, %rax
	jge	.L1884
.L1873:
	testl	%esi, %esi
	je	.L1871
	xorb	(%rcx,%rax), %dl
	xorb	1(%rcx,%rax), %r9b
	xorl	%esi, %esi
	xorb	2(%rcx,%rax), %r8b
	xorb	3(%rcx,%rax), %dil
	xorb	4(%rcx,%rax), %r10b
	addq	$5, %rax
	cmpq	%r11, %rax
	movl	%edx, %ebx
	jl	.L1873
.L1884:
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
.L1874:
	cmpq	%r11, %rax
	jge	.L1885
.L1877:
	testl	%esi, %esi
	je	.L1875
	xorb	(%rcx,%rax), %dl
	xorb	1(%rcx,%rax), %r9b
	xorl	%esi, %esi
	xorb	2(%rcx,%rax), %r8b
	xorb	3(%rcx,%rax), %dil
	xorb	4(%rcx,%rax), %r10b
	addq	$5, %rax
	cmpq	%r11, %rax
	movl	%edx, %ebx
	jl	.L1877
.L1885:
	movb	%bl, (%rsp)
	movb	%dil, 3(%rsp)
	xorl	%ebx, %ebx
	movl	$10, %edi
	movb	%r9b, 1(%rsp)
	movb	%r8b, 2(%rsp)
	movb	%r10b, 4(%rsp)
	call	putchar
.L1879:
	movzbl	(%rsp,%rbx), %ecx
	movl	%ebx, %edx
	xorl	%eax, %eax
	movl	$.LC125, %esi
	movl	$1, %edi
	addq	$1, %rbx
	call	__printf_chk
	cmpq	$5, %rbx
	jne	.L1879
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L1886
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1871:
	.cfi_restore_state
	addq	$4, %rax
	movl	$1, %esi
	jmp	.L1870
	.p2align 4,,10
	.p2align 3
.L1875:
	addq	$4, %rax
	movl	$1, %esi
	jmp	.L1874
.L1881:
	xorl	%edx, %edx
	movzbl	(%rsp), %ebx
	movzbl	2(%rsp), %r8d
	movzbl	4(%rsp), %r10d
	jmp	.L1865
.L1886:
	call	__stack_chk_fail
	.cfi_endproc
.LFE203:
	.size	find_keyshares, .-find_keyshares
	.section	.rodata.str1.1
.LC126:
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
	movl	$.LC126, %edi
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
.LC127:
	.string	"Going to find primes up to %d\n"
	.section	.rodata.str1.1
.LC128:
	.string	"Initialised parameters."
.LC129:
	.string	"Allocated space"
.LC130:
	.string	"Set 2 as first prime"
.LC131:
	.string	"\nPrimes:"
.LC132:
	.string	"\n"
.LC133:
	.string	"Total number of primes:%d\n"
	.text
	.p2align 4,,15
	.globl	secure_find_primes_up_to_a_number
	.type	secure_find_primes_up_to_a_number, @function
secure_find_primes_up_to_a_number:
.LFB205:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	%edi, %edx
	movl	$.LC127, %esi
	xorl	%eax, %eax
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	%edi, %ebx
	movl	$1, %edi
	subq	$80, %rsp
	.cfi_def_cfa_offset 112
	call	__printf_chk
	xorl	%ecx, %ecx
	movl	$1, %r9d
	movl	$4, %r8d
	movl	$1, %edx
	movl	$1, %esi
	movl	%ebx, (%rsp)
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
	movq	%rax, %rbp
	movq	%rax, %rdi
	call	put_fun_params_into_secure_stack
	movq	%rbp, %rdi
	movq	%rax, %rbx
	call	free_fun_params
	movl	$.LC128, %edi
	call	puts
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movslq	64(%rsp), %rdi
	salq	$2, %rdi
	testq	%rdi, %rdi
	je	.L1900
	call	managed_secure_malloc
	testq	%rax, %rax
	je	.L1903
.L1890:
	movq	16(%rbx), %rdx
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$8, %esi
	movq	96(%rdx), %rdx
	movq	%rax, 64(%rsp)
	call	set_secure_stack_data.constprop.6
	movl	$.LC129, %edi
	call	puts
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$3, %edx
	movq	24(%rax), %rsi
	movl	$1, 64(%rsp)
	call	set_secure_stack_data.constprop.4
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	movl	64(%rsp), %ebp
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	96(%rax), %rsi
	call	get_secure_stack_data.constprop.8
	movq	64(%rsp), %rsi
	leal	-1(%rbp), %edx
	leaq	64(%rsp), %rdi
	movl	$2, 64(%rsp)
	movslq	%edx, %rdx
	call	set_secure_data.constprop.17
	movl	$.LC130, %edi
	call	puts
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %edx
	movq	24(%rax), %rsi
	movl	$3, 64(%rsp)
	call	set_secure_stack_data.constprop.4
	.p2align 4,,10
	.p2align 3
.L1891:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	64(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	cmpl	64(%rsp), %ebp
	jg	.L1904
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %esi
	movq	8(%rax), %rdx
	movb	$0, 64(%rsp)
	call	set_secure_stack_data.constprop.6
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %edx
	movq	24(%rax), %rsi
	movl	$2, 64(%rsp)
	call	set_secure_stack_data.constprop.4
	jmp	.L1892
	.p2align 4,,10
	.p2align 3
.L1895:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	movl	64(%rsp), %ebp
	leaq	64(%rsp), %rdi
	movl	$1, %edx
	movl	$2, %ecx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movl	%ebp, %eax
	cltd
	idivl	64(%rsp)
	movq	16(%rbx), %rax
	testl	%edx, %edx
	je	.L1905
	movq	24(%rax), %rsi
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	movl	64(%rsp), %ecx
	movq	24(%rax), %rax
	leal	1(%rcx), %edx
	movl	%edx, 18(%rax)
.L1892:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %edx
	movl	$1, %ecx
	movl	64(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movl	64(%rsp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	addl	$1, %eax
	cmpl	%ebp, %eax
	jge	.L1895
.L1894:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	8(%rax), %rsi
	call	get_secure_stack_data.constprop.7
	cmpb	$0, 64(%rsp)
	je	.L1906
.L1896:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %edx
	movq	24(%rax), %rsi
	addl	$2, 64(%rsp)
	call	set_secure_stack_data.constprop.4
	jmp	.L1891
	.p2align 4,,10
	.p2align 3
.L1905:
	movq	8(%rax), %rdx
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %esi
	movb	$1, 64(%rsp)
	call	set_secure_stack_data.constprop.6
	jmp	.L1894
	.p2align 4,,10
	.p2align 3
.L1906:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$3, %edx
	movq	24(%rax), %rsi
	addl	$1, 64(%rsp)
	call	set_secure_stack_data.constprop.4
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movl	64(%rsp), %r12d
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	movl	64(%rsp), %ebp
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	96(%rax), %rsi
	call	get_secure_stack_data.constprop.8
	movq	64(%rsp), %rsi
	leal	-1(%rbp), %edx
	leaq	64(%rsp), %rdi
	movl	%r12d, 64(%rsp)
	movslq	%edx, %rdx
	call	set_secure_data.constprop.17
	jmp	.L1896
.L1904:
	movl	$.LC131, %edi
	call	puts
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %edx
	movq	24(%rax), %rsi
	movl	$0, 64(%rsp)
	call	set_secure_stack_data.constprop.4
	jmp	.L1898
	.p2align 4,,10
	.p2align 3
.L1899:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	movslq	64(%rsp), %rbp
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	96(%rax), %rsi
	call	get_secure_stack_data.constprop.8
	movq	64(%rsp), %rsi
	leaq	64(%rsp), %rdi
	movq	%rbp, %rcx
	movl	$1, %edx
	call	get_secure_data.constprop.21
	movl	64(%rsp), %edx
	movl	$.LC24, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %edx
	movl	$1, %ecx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %edx
	movq	24(%rax), %rsi
	addl	$1, 64(%rsp)
	call	set_secure_stack_data.constprop.4
.L1898:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movl	64(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	cmpl	64(%rsp), %ebp
	jl	.L1899
	movl	$.LC132, %edi
	call	puts
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movl	64(%rsp), %edx
	movl	$.LC133, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	96(%rax), %rsi
	call	get_secure_stack_data.constprop.8
	movq	64(%rsp), %rdi
	call	managed_secure_free
	movq	8(%rbx), %rax
	leaq	(%rax,%rax,8), %rax
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
	addq	$80, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L1900:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L1890
.L1903:
	movl	$30, %esi
	movl	$__func__.6893, %edi
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
	movl	$.LC127, %esi
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
	je	.L1917
	call	malloc
	testq	%rax, %rax
	je	.L1928
	movq	%rax, %r12
.L1908:
	cmpl	$2, %ebp
	movl	$2, (%r12)
	movl	$1, %ebx
	jle	.L1909
	movl	$3, %esi
	.p2align 4,,10
	.p2align 3
.L1910:
	movl	%esi, %r8d
	sarl	%r8d
	addl	$1, %r8d
	testb	$1, %sil
	je	.L1911
	movl	$2, %ecx
	jmp	.L1914
	.p2align 4,,10
	.p2align 3
.L1912:
	movl	%esi, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	je	.L1911
.L1914:
	addl	$1, %ecx
	cmpl	%ecx, %r8d
	jge	.L1912
	addl	$1, %ebx
	movslq	%ebx, %rax
	movl	%esi, -4(%r12,%rax,4)
.L1911:
	addl	$2, %esi
	cmpl	%esi, %ebp
	jge	.L1910
.L1909:
	movl	$.LC131, %edi
	xorl	%ebp, %ebp
	call	puts
	.p2align 4,,10
	.p2align 3
.L1916:
	movl	(%r12,%rbp,4), %edx
	xorl	%eax, %eax
	movl	$.LC24, %esi
	movl	$1, %edi
	addq	$1, %rbp
	call	__printf_chk
	cmpl	%ebp, %ebx
	jg	.L1916
	movl	$.LC132, %edi
	call	puts
	movl	%ebx, %edx
	movl	$1, %edi
	movl	$.LC133, %esi
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
.L1917:
	.cfi_restore_state
	xorl	%r12d, %r12d
	jmp	.L1908
.L1928:
	movl	$122, %esi
	movl	$__func__.6911, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE206:
	.size	find_primes_up_to_a_number, .-find_primes_up_to_a_number
	.section	.rodata.str1.1
.LC135:
	.string	"Primes with sieve:"
.LC136:
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
	jp	.L1951
.L1930:
	movl	%ebx, %edi
	addl	$1, %edi
	je	.L1946
	movslq	%edi, %rdi
	movsd	%xmm1, 8(%rsp)
	call	malloc
	testq	%rax, %rax
	movsd	8(%rsp), %xmm1
	je	.L1952
	movq	%rax, %r12
.L1932:
	cmpl	$1, %ebx
	jle	.L1936
	leal	-1(%rbx), %edx
	leaq	2(%r12), %rdi
	movl	$1, %esi
	movsd	%xmm1, 8(%rsp)
	call	memset
	movsd	8(%rsp), %xmm1
.L1936:
	addsd	.LC42(%rip), %xmm1
	leaq	4(%r12), %r9
	movl	$2, %esi
	movl	$4, %r8d
	ucomisd	.LC134(%rip), %xmm1
	jnb	.L1948
	jmp	.L1935
	.p2align 4,,10
	.p2align 3
.L1941:
	leal	1(%rsi), %edx
	addl	$2, %r8d
	addq	$2, %r9
	addq	$1, %rsi
	cvtsi2sd	%edx, %xmm0
	ucomisd	%xmm0, %xmm1
	jb	.L1935
.L1948:
	cmpb	$1, (%r12,%rsi)
	movl	%esi, %edi
	jne	.L1941
	cmpl	%r8d, %ebx
	movl	%r8d, %edx
	jl	.L1941
	movq	%r9, %rcx
	.p2align 4,,10
	.p2align 3
.L1942:
	addl	%edi, %edx
	movb	$0, (%rcx)
	addq	%rsi, %rcx
	cmpl	%edx, %ebx
	jge	.L1942
	jmp	.L1941
	.p2align 4,,10
	.p2align 3
.L1935:
	movl	$10, %edi
	addq	$2, %r12
	xorl	%r13d, %r13d
	call	putchar
	movl	$.LC135, %edi
	movl	$2, %ebp
	call	puts
	cmpl	$1, %ebx
	jg	.L1949
	jmp	.L1938
	.p2align 4,,10
	.p2align 3
.L1944:
	addl	$1, %ebp
	addq	$1, %r12
	cmpl	%ebp, %ebx
	jl	.L1938
.L1949:
	cmpb	$1, (%r12)
	jne	.L1944
	movl	%ebp, %edx
	xorl	%eax, %eax
	movl	$.LC24, %esi
	movl	$1, %edi
	addl	$1, %ebp
	addl	$1, %r13d
	call	__printf_chk
	addq	$1, %r12
	cmpl	%ebp, %ebx
	jge	.L1949
	.p2align 4,,10
	.p2align 3
.L1938:
	movl	$10, %edi
	call	putchar
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	%r13d, %edx
	movl	$.LC136, %esi
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
.L1946:
	.cfi_restore_state
	xorl	%r12d, %r12d
	jmp	.L1932
.L1951:
	call	sqrt
	movapd	%xmm0, %xmm1
	jmp	.L1930
.L1952:
	movl	$174, %esi
	movl	$__func__.6929, %edi
	call	error_checking_malloc.part.0
	.cfi_endproc
.LFE207:
	.size	simple_sieve_of_Eratosthenes, .-simple_sieve_of_Eratosthenes
	.section	.rodata.str1.1
.LC137:
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
	call	get_secure_stack_data.constprop.9
	cvtsi2sd	64(%rsp), %xmm0
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jp	.L1989
.L1954:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$8, %esi
	movq	72(%rax), %rdx
	movsd	%xmm1, 64(%rsp)
	call	set_secure_stack_data.constprop.6
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movl	64(%rsp), %eax
	leal	1(%rax), %edi
	movslq	%edi, %rdi
	testq	%rdi, %rdi
	je	.L1985
	call	managed_secure_malloc
	testq	%rax, %rax
	je	.L1990
.L1956:
	movq	16(%rbx), %rdx
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$8, %esi
	movq	96(%rdx), %rdx
	movq	%rax, 64(%rsp)
	call	set_secure_stack_data.constprop.6
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %edx
	movq	24(%rax), %rsi
	movl	$2, 64(%rsp)
	call	set_secure_stack_data.constprop.4
	jmp	.L1957
	.p2align 4,,10
	.p2align 3
.L1958:
	leaq	(%rdx,%rdx,8), %rcx
	negq	%rdx
	leaq	0(%rbp,%rdx,4), %rdx
	addq	%rcx, %rax
	cmpq	$3, %rdx
	jg	.L1960
	movb	$1, (%rax,%rdx)
	.p2align 4,,10
	.p2align 3
.L1961:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %edx
	movl	$2, %ecx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %edx
	movq	24(%rax), %rsi
	addl	$1, 64(%rsp)
	call	set_secure_stack_data.constprop.4
.L1957:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	64(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	cmpl	64(%rsp), %ebp
	movq	16(%rbx), %rax
	movq	24(%rax), %rsi
	jg	.L1991
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	movslq	64(%rsp), %rbp
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	96(%rax), %rsi
	call	get_secure_stack_data.constprop.8
	leaq	3(%rbp), %rdx
	testq	%rbp, %rbp
	movq	64(%rsp), %rax
	cmovns	%rbp, %rdx
	sarq	$2, %rdx
	leaq	0(,%rdx,4), %rcx
	cmpq	%rcx, %rbp
	jne	.L1958
	leaq	(%rdx,%rdx,8), %rdx
	addq	%rdx, %rax
.L1959:
	movb	$1, (%rax)
	jmp	.L1961
.L1991:
	leaq	64(%rsp), %rdi
	movl	$2, %edx
	movl	$2, 64(%rsp)
	call	set_secure_stack_data.constprop.4
	jmp	.L1963
	.p2align 4,,10
	.p2align 3
.L1964:
	leaq	(%rdx,%rdx,8), %rcx
	negq	%rdx
	leaq	0(%rbp,%rdx,4), %rdx
	addq	%rcx, %rax
	cmpq	$3, %rdx
	jg	.L1966
	movzbl	(%rax,%rdx), %eax
	cmpb	$1, %al
	je	.L1992
	.p2align 4,,10
	.p2align 3
.L1969:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %edx
	movl	$2, %ecx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %edx
	movq	24(%rax), %rsi
	addl	$1, 64(%rsp)
	call	set_secure_stack_data.constprop.4
.L1963:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	movl	64(%rsp), %ebp
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	72(%rax), %rsi
	call	get_secure_stack_data.constprop.8
	cvtsi2sd	%ebp, %xmm0
	movsd	.LC42(%rip), %xmm1
	addsd	64(%rsp), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.L1993
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	movslq	64(%rsp), %rbp
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	96(%rax), %rsi
	call	get_secure_stack_data.constprop.8
	leaq	3(%rbp), %rdx
	testq	%rbp, %rbp
	movq	64(%rsp), %rax
	cmovns	%rbp, %rdx
	sarq	$2, %rdx
	leaq	0(,%rdx,4), %rcx
	cmpq	%rcx, %rbp
	jne	.L1964
	leaq	(%rdx,%rdx,8), %rdx
	addq	%rdx, %rax
.L1965:
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L1969
.L1992:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$3, %edx
	movq	24(%rax), %rsi
	sall	64(%rsp)
	call	set_secure_stack_data.constprop.4
	jmp	.L1970
	.p2align 4,,10
	.p2align 3
.L1971:
	leaq	(%rdx,%rdx,8), %rcx
	negq	%rdx
	leaq	0(%rbp,%rdx,4), %rdx
	addq	%rcx, %rax
	cmpq	$3, %rdx
	jg	.L1973
	movb	$0, (%rax,%rdx)
	.p2align 4,,10
	.p2align 3
.L1974:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %edx
	movl	$2, %ecx
	movl	64(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$3, %edx
	movq	24(%rax), %rsi
	addl	%ebp, 64(%rsp)
	call	set_secure_stack_data.constprop.4
.L1970:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	64(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	cmpl	64(%rsp), %ebp
	jg	.L1969
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	movslq	64(%rsp), %rbp
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	96(%rax), %rsi
	call	get_secure_stack_data.constprop.8
	leaq	3(%rbp), %rdx
	testq	%rbp, %rbp
	movq	64(%rsp), %rax
	cmovns	%rbp, %rdx
	sarq	$2, %rdx
	leaq	0(,%rdx,4), %rcx
	cmpq	%rcx, %rbp
	jne	.L1971
	leaq	(%rdx,%rdx,8), %rdx
	addq	%rdx, %rax
.L1972:
	movb	$0, (%rax)
	jmp	.L1974
.L1993:
	movl	$10, %edi
	call	putchar
	movl	$.LC137, %edi
	call	puts
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %edx
	movq	24(%rax), %rsi
	movl	$2, 64(%rsp)
	call	set_secure_stack_data.constprop.4
	jmp	.L1978
	.p2align 4,,10
	.p2align 3
.L1979:
	leaq	(%rdx,%rdx,8), %rcx
	negq	%rdx
	leaq	0(%rbp,%rdx,4), %rdx
	addq	%rcx, %rax
	cmpq	$3, %rdx
	jg	.L1981
	movzbl	(%rax,%rdx), %eax
	cmpb	$1, %al
	je	.L1994
	.p2align 4,,10
	.p2align 3
.L1983:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %edx
	movl	$2, %ecx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %edx
	movq	24(%rax), %rsi
	addl	$1, 64(%rsp)
	call	set_secure_stack_data.constprop.4
.L1978:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	64(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	cmpl	64(%rsp), %ebp
	jg	.L1995
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	movslq	64(%rsp), %rbp
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	96(%rax), %rsi
	call	get_secure_stack_data.constprop.8
	leaq	3(%rbp), %rdx
	testq	%rbp, %rbp
	movq	64(%rsp), %rax
	cmovns	%rbp, %rdx
	sarq	$2, %rdx
	leaq	0(,%rdx,4), %rcx
	cmpq	%rcx, %rbp
	jne	.L1979
	leaq	(%rdx,%rdx,8), %rdx
	addq	%rdx, %rax
.L1980:
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L1983
.L1994:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
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
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %edx
	movq	24(%rax), %rsi
	addl	$1, 64(%rsp)
	call	set_secure_stack_data.constprop.4
	jmp	.L1983
.L1995:
	movl	$10, %edi
	call	putchar
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movl	64(%rsp), %edx
	movl	$.LC136, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	96(%rax), %rsi
	call	get_secure_stack_data.constprop.8
	movq	64(%rsp), %rdi
	call	managed_secure_free
	movq	8(%rbx), %rax
	leaq	(%rax,%rax,8), %rax
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
.L1973:
	.cfi_restore_state
	addq	$9, %rax
	jmp	.L1972
.L1960:
	addq	$9, %rax
	jmp	.L1959
.L1981:
	addq	$9, %rax
	jmp	.L1980
.L1966:
	addq	$9, %rax
	jmp	.L1965
.L1985:
	xorl	%eax, %eax
	jmp	.L1956
.L1990:
	movl	$243, %esi
	movl	$__func__.6946, %edi
	call	error_checking_managed_secure_malloc.part.3
.L1989:
	call	sqrt
	movapd	%xmm0, %xmm1
	jmp	.L1954
	.cfi_endproc
.LFE208:
	.size	secure_sieve_of_Eratosthenes, .-secure_sieve_of_Eratosthenes
	.p2align 4,,15
	.globl	user_friendly_secure_sieve_of_Eratosthenes
	.type	user_friendly_secure_sieve_of_Eratosthenes, @function
user_friendly_secure_sieve_of_Eratosthenes:
.LFB209:
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
	call	get_secure_stack_data.constprop.9
	cvtsi2sd	64(%rsp), %xmm0
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jp	.L2032
.L1997:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$8, %esi
	movq	72(%rax), %rdx
	movsd	%xmm1, 64(%rsp)
	call	set_secure_stack_data.constprop.6
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movl	64(%rsp), %eax
	leal	1(%rax), %edi
	movslq	%edi, %rdi
	testq	%rdi, %rdi
	je	.L2028
	call	managed_secure_malloc
	testq	%rax, %rax
	je	.L2033
.L1999:
	movq	16(%rbx), %rdx
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$8, %esi
	movq	96(%rdx), %rdx
	movq	%rax, 64(%rsp)
	call	set_secure_stack_data.constprop.6
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %edx
	movq	24(%rax), %rsi
	movl	$2, 64(%rsp)
	call	set_secure_stack_data.constprop.4
	jmp	.L2000
	.p2align 4,,10
	.p2align 3
.L2001:
	leaq	(%rdx,%rdx,8), %rcx
	negq	%rdx
	leaq	0(%rbp,%rdx,4), %rdx
	addq	%rcx, %rax
	cmpq	$3, %rdx
	jg	.L2003
	movb	$1, (%rax,%rdx)
	.p2align 4,,10
	.p2align 3
.L2004:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %edx
	movl	$2, %ecx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %edx
	movq	24(%rax), %rsi
	addl	$1, 64(%rsp)
	call	set_secure_stack_data.constprop.4
.L2000:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	64(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	cmpl	64(%rsp), %ebp
	movq	16(%rbx), %rax
	movq	24(%rax), %rsi
	jg	.L2034
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	movslq	64(%rsp), %rbp
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	96(%rax), %rsi
	call	get_secure_stack_data.constprop.8
	leaq	3(%rbp), %rdx
	testq	%rbp, %rbp
	movq	64(%rsp), %rax
	cmovns	%rbp, %rdx
	sarq	$2, %rdx
	leaq	0(,%rdx,4), %rcx
	cmpq	%rcx, %rbp
	jne	.L2001
	leaq	(%rdx,%rdx,8), %rdx
	addq	%rdx, %rax
.L2002:
	movb	$1, (%rax)
	jmp	.L2004
.L2034:
	leaq	64(%rsp), %rdi
	movl	$2, %edx
	movl	$2, 64(%rsp)
	call	set_secure_stack_data.constprop.4
	jmp	.L2006
	.p2align 4,,10
	.p2align 3
.L2007:
	leaq	(%rdx,%rdx,8), %rcx
	negq	%rdx
	leaq	0(%rbp,%rdx,4), %rdx
	addq	%rcx, %rax
	cmpq	$3, %rdx
	jg	.L2009
	movzbl	(%rax,%rdx), %eax
	cmpb	$1, %al
	je	.L2035
	.p2align 4,,10
	.p2align 3
.L2012:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %edx
	movl	$2, %ecx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %edx
	movq	24(%rax), %rsi
	addl	$1, 64(%rsp)
	call	set_secure_stack_data.constprop.4
.L2006:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	movl	64(%rsp), %ebp
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	72(%rax), %rsi
	call	get_secure_stack_data.constprop.8
	cvtsi2sd	%ebp, %xmm0
	movsd	.LC42(%rip), %xmm1
	addsd	64(%rsp), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.L2036
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	movslq	64(%rsp), %rbp
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	96(%rax), %rsi
	call	get_secure_stack_data.constprop.8
	leaq	3(%rbp), %rdx
	testq	%rbp, %rbp
	movq	64(%rsp), %rax
	cmovns	%rbp, %rdx
	sarq	$2, %rdx
	leaq	0(,%rdx,4), %rcx
	cmpq	%rcx, %rbp
	jne	.L2007
	leaq	(%rdx,%rdx,8), %rdx
	addq	%rdx, %rax
.L2008:
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L2012
.L2035:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$3, %edx
	movq	24(%rax), %rsi
	sall	64(%rsp)
	call	set_secure_stack_data.constprop.4
	jmp	.L2013
	.p2align 4,,10
	.p2align 3
.L2014:
	leaq	(%rdx,%rdx,8), %rcx
	negq	%rdx
	leaq	0(%rbp,%rdx,4), %rdx
	addq	%rcx, %rax
	cmpq	$3, %rdx
	jg	.L2016
	movb	$0, (%rax,%rdx)
	.p2align 4,,10
	.p2align 3
.L2017:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %edx
	movl	$2, %ecx
	movl	64(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$3, %edx
	movq	24(%rax), %rsi
	addl	%ebp, 64(%rsp)
	call	set_secure_stack_data.constprop.4
.L2013:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	64(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	cmpl	64(%rsp), %ebp
	jg	.L2012
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	movslq	64(%rsp), %rbp
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	96(%rax), %rsi
	call	get_secure_stack_data.constprop.8
	leaq	3(%rbp), %rdx
	testq	%rbp, %rbp
	movq	64(%rsp), %rax
	cmovns	%rbp, %rdx
	sarq	$2, %rdx
	leaq	0(,%rdx,4), %rcx
	cmpq	%rcx, %rbp
	jne	.L2014
	leaq	(%rdx,%rdx,8), %rdx
	addq	%rdx, %rax
.L2015:
	movb	$0, (%rax)
	jmp	.L2017
.L2036:
	movl	$10, %edi
	call	putchar
	movl	$.LC137, %edi
	call	puts
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %edx
	movq	24(%rax), %rsi
	movl	$2, 64(%rsp)
	call	set_secure_stack_data.constprop.4
	jmp	.L2021
	.p2align 4,,10
	.p2align 3
.L2022:
	leaq	(%rdx,%rdx,8), %rcx
	negq	%rdx
	leaq	0(%rbp,%rdx,4), %rdx
	addq	%rcx, %rax
	cmpq	$3, %rdx
	jg	.L2024
	movzbl	(%rax,%rdx), %eax
	cmpb	$1, %al
	je	.L2037
	.p2align 4,,10
	.p2align 3
.L2026:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %edx
	movl	$2, %ecx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %edx
	movq	24(%rax), %rsi
	addl	$1, 64(%rsp)
	call	set_secure_stack_data.constprop.4
.L2021:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	64(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	cmpl	64(%rsp), %ebp
	jg	.L2038
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	movslq	64(%rsp), %rbp
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	96(%rax), %rsi
	call	get_secure_stack_data.constprop.8
	leaq	3(%rbp), %rdx
	testq	%rbp, %rbp
	movq	64(%rsp), %rax
	cmovns	%rbp, %rdx
	sarq	$2, %rdx
	leaq	0(,%rdx,4), %rcx
	cmpq	%rcx, %rbp
	jne	.L2022
	leaq	(%rdx,%rdx,8), %rdx
	addq	%rdx, %rax
.L2023:
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L2026
.L2037:
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
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
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %edx
	movq	24(%rax), %rsi
	addl	$1, 64(%rsp)
	call	set_secure_stack_data.constprop.4
	jmp	.L2026
.L2038:
	movl	$10, %edi
	call	putchar
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	movl	$1, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movl	64(%rsp), %edx
	movl	$.LC136, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movq	16(%rbx), %rax
	leaq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	96(%rax), %rsi
	call	get_secure_stack_data.constprop.8
	movq	64(%rsp), %rdi
	call	managed_secure_free
	movq	8(%rbx), %rax
	leaq	(%rax,%rax,8), %rax
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
.L2016:
	.cfi_restore_state
	addq	$9, %rax
	jmp	.L2015
.L2003:
	addq	$9, %rax
	jmp	.L2002
.L2024:
	addq	$9, %rax
	jmp	.L2023
.L2009:
	addq	$9, %rax
	jmp	.L2008
.L2028:
	xorl	%eax, %eax
	jmp	.L1999
.L2033:
	movl	$374, %esi
	movl	$__func__.6963, %edi
	call	error_checking_managed_secure_malloc.part.3
.L2032:
	call	sqrt
	movapd	%xmm0, %xmm1
	jmp	.L1997
	.cfi_endproc
.LFE209:
	.size	user_friendly_secure_sieve_of_Eratosthenes, .-user_friendly_secure_sieve_of_Eratosthenes
	.p2align 4,,15
	.globl	fill_matrices_for_multiplication
	.type	fill_matrices_for_multiplication, @function
fill_matrices_for_multiplication:
.LFB210:
	.cfi_startproc
	testl	%edi, %edi
	jle	.L2046
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	leal	-1(%rdi), %r13d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	addq	$1, %r13
	xorl	%r12d, %r12d
	imulq	$4004, %r13, %r14
	salq	$2, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	.p2align 4,,10
	.p2align 3
.L2041:
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L2043:
	call	rand
	cltd
	idivl	%ebp
	movl	%edx, matrix1(%r12,%rbx)
	call	rand
	cltd
	idivl	%ebp
	movl	%edx, matrix2(%r12,%rbx)
	addq	$4, %rbx
	cmpq	%r13, %rbx
	jne	.L2043
	addq	$4004, %r12
	cmpq	%r14, %r12
	jne	.L2041
	popq	%rbx
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
.L2046:
	rep ret
	.cfi_endproc
.LFE210:
	.size	fill_matrices_for_multiplication, .-fill_matrices_for_multiplication
	.section	.rodata.str1.1
.LC138:
	.string	"Test array:"
	.text
	.p2align 4,,15
	.globl	matrix_multiplication
	.type	matrix_multiplication, @function
matrix_multiplication:
.LFB211:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movslq	%edi, %rax
	leaq	0(,%rax,4), %rcx
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	imulq	%rax, %rax
	pushq	%r14
	pushq	%r13
	leaq	18(,%rax,4), %rax
	pushq	%r12
	andq	$-16, %rax
	pushq	%rbx
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, %ebx
	subq	$56, %rsp
	movq	%rcx, -56(%rbp)
	subq	%rax, %rsp
	movq	%rsp, %r9
	subq	%rax, %rsp
	testl	%edi, %edi
	jle	.L2048
	leal	-1(%rdi), %r14d
	shrq	$2, %rcx
	movq	%rsp, %r13
	movq	%rcx, %r12
	leaq	0(,%rcx,4), %rcx
	xorl	%r10d, %r10d
	addq	$1, %r14
	xorl	%r15d, %r15d
	imulq	$4004, %r14, %r8
.L2049:
	movq	-56(%rbp), %rdx
	leaq	(%r9,%r15), %rdi
	leaq	matrix1(%r10), %rsi
	movq	%r8, -88(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r9, -72(%rbp)
	movq	%r10, -64(%rbp)
	call	memcpy
	movq	-64(%rbp), %r10
	movq	-56(%rbp), %rdx
	leaq	0(%r13,%r15), %rdi
	leaq	matrix2(%r10), %rsi
	call	memcpy
	movq	-64(%rbp), %r10
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %r8
	movq	-72(%rbp), %r9
	addq	$4004, %r10
	addq	%rcx, %r15
	cmpq	%r8, %r10
	jne	.L2049
	xorl	%r11d, %r11d
.L2050:
	xorl	%r10d, %r10d
	.p2align 4,,10
	.p2align 3
.L2056:
	xorl	%eax, %eax
	xorl	%esi, %esi
	movslq	%r10d, %rdi
	.p2align 4,,10
	.p2align 3
.L2055:
	movslq	%eax, %rdx
	imulq	%r12, %rdx
	leaq	(%rdi,%rdx), %r15
	movl	(%r9,%rax,4), %edx
	addq	$1, %rax
	imull	0(%r13,%r15,4), %edx
	addl	%edx, %esi
	cmpl	%eax, %ebx
	jg	.L2055
	movl	%esi, matrix_res1(%r11,%r10,4)
	addq	$1, %r10
	cmpq	%r14, %r10
	jne	.L2056
	addq	$4004, %r11
	addq	%rcx, %r9
	cmpq	%r8, %r11
	jne	.L2050
.L2048:
	movl	$.LC138, %edi
	movl	$test_array, %ebx
	call	puts
.L2058:
	movl	(%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC24, %esi
	movl	$1, %edi
	addq	$4, %rbx
	call	__printf_chk
	cmpq	$test_array+16, %rbx
	jne	.L2058
	movl	$10, %edi
	call	putchar
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE211:
	.size	matrix_multiplication, .-matrix_multiplication
	.p2align 4,,15
	.globl	user_friendly_secure_matrix_multiplication
	.type	user_friendly_secure_matrix_multiplication, @function
user_friendly_secure_matrix_multiplication:
.LFB212:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movslq	%edi, %rax
	movl	%edi, %r8d
	imulq	%rax, %rax
	movl	%esi, %r9d
	movl	$7, %edx
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	xorl	%esi, %esi
	movl	$2, %ecx
	movl	$1, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	salq	$2, %rax
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$104, %rsp
	.cfi_def_cfa_offset 144
	movq	%rax, 56(%rsp)
	movq	%rax, 48(%rsp)
	xorl	%eax, %eax
	movq	$test_array, 72(%rsp)
	movq	$1, 64(%rsp)
	movq	$16, 40(%rsp)
	movq	$3, 32(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 16(%rsp)
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
	leaq	80(%rsp), %rdi
	movl	$2, %edx
	movq	24(%rax), %rsi
	movl	$0, 80(%rsp)
	call	set_secure_stack_data.constprop.4
.L2062:
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	80(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	cmpl	80(%rsp), %ebp
	movq	16(%rbx), %rax
	movq	24(%rax), %rsi
	movl	$0, 80(%rsp)
	jl	.L2076
	jmp	.L2075
	.p2align 4,,10
	.p2align 3
.L2064:
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	movslq	80(%rsp), %rbp
	leaq	80(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	imulq	$1001, %rbp, %rbp
	call	get_secure_stack_data.constprop.9
	movslq	80(%rsp), %rax
	leaq	80(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	addq	%rax, %rbp
	movq	16(%rbx), %rax
	movl	matrix1(,%rbp,4), %r12d
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	80(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	imull	80(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	movl	80(%rsp), %edx
	leaq	80(%rsp), %rdi
	movq	120(%rax), %rax
	addl	%edx, %ebp
	movslq	%ebp, %rdx
	movq	8(%rax), %rsi
	movl	%r12d, 80(%rsp)
	call	set_secure_stack_data.constprop.4
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	movslq	80(%rsp), %rbp
	leaq	80(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	imulq	$1001, %rbp, %rbp
	call	get_secure_stack_data.constprop.9
	movslq	80(%rsp), %rax
	leaq	80(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	addq	%rax, %rbp
	movq	16(%rbx), %rax
	movl	matrix2(,%rbp,4), %r12d
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	80(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	imull	80(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	movl	80(%rsp), %edx
	leaq	80(%rsp), %rdi
	movq	120(%rax), %rax
	addl	%edx, %ebp
	movslq	%ebp, %rdx
	movq	16(%rax), %rsi
	movl	%r12d, 80(%rsp)
	call	set_secure_stack_data.constprop.4
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	movq	24(%rax), %rsi
	addl	$1, 80(%rsp)
.L2076:
	leaq	80(%rsp), %rdi
	movl	$3, %edx
	call	set_secure_stack_data.constprop.4
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	80(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	cmpl	80(%rsp), %ebp
	movq	16(%rbx), %rax
	movl	$2, %ecx
	movl	$1, %edx
	leaq	80(%rsp), %rdi
	movq	24(%rax), %rsi
	jl	.L2064
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	movl	$2, %edx
	movq	24(%rax), %rsi
	addl	$1, 80(%rsp)
	call	set_secure_stack_data.constprop.4
	jmp	.L2062
.L2078:
	leaq	80(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	movq	24(%rax), %rsi
	addl	$1, 80(%rsp)
.L2075:
	leaq	80(%rsp), %rdi
	movl	$2, %edx
	call	set_secure_stack_data.constprop.4
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	80(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	cmpl	80(%rsp), %ebp
	jge	.L2077
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	movl	$3, %edx
	movq	24(%rax), %rsi
	movl	$0, 80(%rsp)
	call	set_secure_stack_data.constprop.4
	.p2align 4,,10
	.p2align 3
.L2067:
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	80(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	cmpl	80(%rsp), %ebp
	movq	16(%rbx), %rax
	movq	24(%rax), %rsi
	jge	.L2078
	leaq	80(%rsp), %rdi
	movl	$6, %edx
	movl	$0, 80(%rsp)
	call	set_secure_stack_data.constprop.4
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	movl	$4, %edx
	movq	24(%rax), %rsi
	movl	$0, 80(%rsp)
	call	set_secure_stack_data.constprop.4
	jmp	.L2068
	.p2align 4,,10
	.p2align 3
.L2069:
	leaq	80(%rsp), %rdi
	movl	$6, %ecx
	movl	$1, %edx
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movl	80(%rsp), %r12d
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	80(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	movl	$4, %ecx
	movl	$1, %edx
	imull	80(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	addl	80(%rsp), %ebp
	leaq	80(%rsp), %rdi
	movl	$1, %edx
	movq	120(%rax), %rax
	movslq	%ebp, %rcx
	movq	8(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	movl	$4, %ecx
	movl	$1, %edx
	movl	80(%rsp), %r13d
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	80(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	imull	80(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	addl	80(%rsp), %ebp
	leaq	80(%rsp), %rdi
	movl	$1, %edx
	movq	120(%rax), %rax
	movslq	%ebp, %rcx
	movq	16(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	imull	80(%rsp), %r13d
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	movl	$6, %edx
	movq	24(%rax), %rsi
	addl	%r13d, %r12d
	movl	%r12d, 80(%rsp)
	call	set_secure_stack_data.constprop.4
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	movl	$1, %edx
	movl	$4, %ecx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	movl	$4, %edx
	movq	24(%rax), %rsi
	addl	$1, 80(%rsp)
	call	set_secure_stack_data.constprop.4
.L2068:
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	movl	$4, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	80(%rsp), %ebp
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	cmpl	80(%rsp), %ebp
	movq	16(%rbx), %rax
	movq	24(%rax), %rsi
	jl	.L2069
	leaq	80(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movslq	80(%rsp), %rbp
	movq	24(%rax), %rsi
	imulq	$1001, %rbp, %rbp
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	movslq	80(%rsp), %r12
	leaq	80(%rsp), %rdi
	movl	$6, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	addq	%rbp, %r12
	call	get_secure_stack_data.constprop.9
	movl	80(%rsp), %eax
	leaq	80(%rsp), %rdi
	movl	$3, %ecx
	movl	$1, %edx
	movl	%eax, matrix_res2(,%r12,4)
	movq	16(%rbx), %rax
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	movl	$3, %edx
	movq	24(%rax), %rsi
	addl	$1, 80(%rsp)
	call	set_secure_stack_data.constprop.4
	jmp	.L2067
.L2077:
	movl	$.LC138, %edi
	call	puts
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	movl	$2, %edx
	movq	24(%rax), %rsi
	movl	$0, 80(%rsp)
	call	set_secure_stack_data.constprop.4
	jmp	.L2072
.L2073:
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	movslq	80(%rsp), %rcx
	leaq	80(%rsp), %rdi
	movl	$1, %edx
	movq	120(%rax), %rax
	movq	(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movl	80(%rsp), %edx
	movl	$.LC24, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	movl	$1, %edx
	movl	$2, %ecx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	movl	$2, %edx
	movq	24(%rax), %rsi
	addl	$1, 80(%rsp)
	call	set_secure_stack_data.constprop.4
.L2072:
	movq	16(%rbx), %rax
	leaq	80(%rsp), %rdi
	movl	$2, %ecx
	movl	$1, %edx
	movq	24(%rax), %rsi
	call	get_secure_stack_data.constprop.9
	cmpl	$3, 80(%rsp)
	jle	.L2073
	movl	$10, %edi
	call	putchar
	movq	8(%rbx), %rax
	movq	%rbx, %rdi
	leaq	(%rax,%rax,8), %rax
	subq	%rax, last_unused_stack_memory(%rip)
	call	free_fun_params_that_point_to_stack
	addq	$104, %rsp
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
.LFE212:
	.size	user_friendly_secure_matrix_multiplication, .-user_friendly_secure_matrix_multiplication
	.p2align 4,,15
	.globl	the_matrices_are_the_same
	.type	the_matrices_are_the_same, @function
the_matrices_are_the_same:
.LFB213:
	.cfi_startproc
	testl	%edi, %edi
	jle	.L2086
	leal	-1(%rdi), %esi
	xorl	%edx, %edx
	leaq	1(%rsi), %rdi
	salq	$2, %rsi
	imulq	$4004, %rdi, %rdi
	.p2align 4,,10
	.p2align 3
.L2081:
	movl	matrix_res2(%rdx), %eax
	cmpl	%eax, matrix_res1(%rdx)
	jne	.L2087
	xorl	%eax, %eax
	jmp	.L2083
	.p2align 4,,10
	.p2align 3
.L2082:
	movl	matrix_res1+4(%rdx,%rax), %ecx
	addq	$4, %rax
	cmpl	matrix_res2(%rdx,%rax), %ecx
	jne	.L2087
.L2083:
	cmpq	%rsi, %rax
	jne	.L2082
	addq	$4004, %rdx
	cmpq	%rdi, %rdx
	jne	.L2081
.L2086:
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L2087:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE213:
	.size	the_matrices_are_the_same, .-the_matrices_are_the_same
	.section	.rodata.str1.1
.LC139:
	.string	"Initializing heap memory"
	.section	.rodata.str1.8
	.align 8
.LC140:
	.string	"bytes_to_allocate_on_start:%d\n"
	.section	.rodata.str1.1
.LC141:
	.string	"Init_mem, alloc+key insertion"
	.section	.rodata.str1.8
	.align 8
.LC142:
	.string	"If successful, total bytes allocated:%ld\n"
	.section	.rodata.str1.1
.LC143:
	.string	"Initializing stack memory"
	.section	.rodata.str1.8
	.align 8
.LC144:
	.string	"Stack bytes_to_allocate_on_start:%d\n"
	.align 8
.LC145:
	.string	"Init_stack_mem, alloc+key insertion"
	.text
	.p2align 4,,15
	.globl	init_heap_and_stack_mem
	.type	init_heap_and_stack_mem, @function
init_heap_and_stack_mem:
.LFB214:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$.LC139, %edi
	call	puts
	movl	$3000, %edx
	movl	$.LC140, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$.LC141, %edi
	call	puts
	xorl	%eax, %eax
	call	init_mem
	movq	total_bytes_allocated(%rip), %rdx
	movl	$.LC142, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$.LC143, %edi
	call	puts
	movl	$5000000, %edx
	movl	$.LC144, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$.LC145, %edi
	call	puts
	xorl	%edi, %edi
	call	time
	movl	%eax, %edi
	call	srand
	movl	$.LC79, %edi
	call	puts
	movl	$5000008, %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L2092
	movl	$.LC11, %esi
	movl	$.LC80, %edi
	movq	$5000008, total_stack_bytes_allocated(%rip)
	call	fopen
	testq	%rax, %rax
	movq	%rax, stack_keyshare_input_file(%rip)
	je	.L2093
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
	movl	$.LC142, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	jmp	__printf_chk
.L2092:
	.cfi_restore_state
	movl	$143, %esi
	movl	$__func__.6321, %edi
	call	error_checking_malloc.part.0
.L2093:
	movl	$.LC81, %edi
	call	perror
	movl	$46, %edi
	call	exit
	.cfi_endproc
.LFE214:
	.size	init_heap_and_stack_mem, .-init_heap_and_stack_mem
	.section	.rodata.str1.1
.LC146:
	.string	"Installing signal handler"
	.section	.rodata.str1.8
	.align 8
.LC147:
	.string	"Could not install signal handler"
	.section	.rodata.str1.1
.LC148:
	.string	"Signal handler installed"
	.text
	.p2align 4,,15
	.globl	install_signal_handler
	.type	install_signal_handler, @function
install_signal_handler:
.LFB215:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$.LC146, %edi
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
	je	.L2097
	movl	$.LC148, %edi
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	puts
.L2097:
	.cfi_restore_state
	movl	$.LC147, %edi
	call	perror
	movl	$45, %edi
	call	exit
	.cfi_endproc
.LFE215:
	.size	install_signal_handler, .-install_signal_handler
	.p2align 4,,15
	.globl	free_heap_and_stack_memory
	.type	free_heap_and_stack_memory, @function
free_heap_and_stack_memory:
.LFB216:
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
	je	.L2099
	movq	16(%rdi), %rbx
	jmp	.L2104
	.p2align 4,,10
	.p2align 3
.L2103:
	movq	%rax, 24(%rbx)
	movq	%rbx, 16(%rax)
.L2142:
	call	free
.L2101:
	testb	%bpl, %bpl
	jne	.L2099
.L2145:
	movq	%rbx, %rdi
	movq	16(%rbx), %rbx
.L2104:
	movq	24(%rdi), %rax
	testq	%rbx, %rbx
	sete	%bpl
	testq	%rax, %rax
	sete	%dl
	testb	%bpl, %bpl
	jne	.L2144
.L2102:
	testq	%rbx, %rbx
	je	.L2103
	testb	%dl, %dl
	je	.L2103
	movq	$0, 24(%rbx)
	call	free
	testb	%bpl, %bpl
	je	.L2145
.L2099:
	movq	allocated_chunks_list(%rip), %rdi
	testq	%rdi, %rdi
	je	.L2105
	movq	16(%rdi), %rbx
	jmp	.L2110
	.p2align 4,,10
	.p2align 3
.L2109:
	movq	%rax, 24(%rbx)
	movq	%rbx, 16(%rax)
.L2143:
	call	free
.L2107:
	testb	%bpl, %bpl
	jne	.L2105
.L2147:
	movq	%rbx, %rdi
	movq	16(%rbx), %rbx
.L2110:
	movq	24(%rdi), %rax
	testq	%rbx, %rbx
	sete	%bpl
	testq	%rax, %rax
	sete	%dl
	testb	%bpl, %bpl
	jne	.L2146
.L2108:
	testq	%rbx, %rbx
	je	.L2109
	testb	%dl, %dl
	je	.L2109
	movq	$0, 24(%rbx)
	call	free
	testb	%bpl, %bpl
	je	.L2147
.L2105:
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
.L2144:
	.cfi_restore_state
	testb	%dl, %dl
	jne	.L2142
	testq	%rax, %rax
	je	.L2102
	movq	$0, 16(%rax)
	call	free
	jmp	.L2101
	.p2align 4,,10
	.p2align 3
.L2146:
	testb	%dl, %dl
	jne	.L2143
	testq	%rax, %rax
	.p2align 4,,6
	je	.L2108
	movq	$0, 16(%rax)
	call	free
	jmp	.L2107
	.cfi_endproc
.LFE216:
	.size	free_heap_and_stack_memory, .-free_heap_and_stack_memory
	.section	.rodata.str1.1
.LC149:
	.string	"My pid=%ld\n"
.LC150:
	.string	"K=%d\n"
.LC151:
	.string	"n=%d\n"
.LC152:
	.string	"main is at %p\n"
	.section	.rodata.str1.8
	.align 8
.LC153:
	.string	"Calculating time for matrix multiplication. Normal matrix multiplication:"
	.align 8
.LC155:
	.string	"Normal matrix multiplication:%lg cpu seconds\n"
	.section	.rodata.str1.1
.LC156:
	.string	"Secure matrix multiplication:"
	.section	.rodata.str1.8
	.align 8
.LC157:
	.string	"Normal matrix multiplication time:%lg cpu seconds\n"
	.align 8
.LC158:
	.string	"Secure matrix multiplication time:%lg cpu seconds\n"
	.section	.rodata.str1.1
.LC159:
	.string	"Ratio: %lg times slowdown\n"
.LC160:
	.string	"\nThe matrices are the same.\n"
	.section	.rodata.str1.8
	.align 8
.LC161:
	.string	"\nERROR!THE MATRICES ARE NOT THE SAME!\n"
	.section	.rodata.str1.1
.LC162:
	.string	"Going to find keyshares."
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB218:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xorl	%eax, %eax
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movl	$1, static_main_variable_for_testing.7076(%rip)
	movl	$2, static_global_variable_for_testing(%rip)
	call	init_heap_and_stack_mem
	xorl	%eax, %eax
	call	install_signal_handler
	call	getpid
	movl	$.LC149, %esi
	movslq	%eax, %rdx
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$6, %edx
	movl	$.LC150, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$10, %edx
	movl	$.LC151, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$main, %edx
	movl	$.LC152, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$2000, %esi
	movl	$400, %edi
	call	fill_matrices_for_multiplication
	movl	$10, %edi
	call	putchar
	movl	$.LC153, %edi
	call	puts
	call	clock
	movl	$2000, %esi
	movq	%rax, %rbx
	movl	$400, %edi
	call	matrix_multiplication
	call	clock
	subq	%rbx, %rax
	movl	$10, %edi
	cvtsi2sdq	%rax, %xmm2
	divsd	.LC154(%rip), %xmm2
	movsd	%xmm2, (%rsp)
	call	putchar
	movsd	(%rsp), %xmm0
	movl	$.LC155, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	movl	$.LC156, %edi
	call	puts
	call	clock
	movl	$2000, %esi
	movq	%rax, %rbx
	movl	$400, %edi
	call	user_friendly_secure_matrix_multiplication
	call	clock
	subq	%rbx, %rax
	movl	$10, %edi
	cvtsi2sdq	%rax, %xmm1
	divsd	.LC154(%rip), %xmm1
	movsd	%xmm1, 8(%rsp)
	call	putchar
	movsd	(%rsp), %xmm0
	movl	$.LC157, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	movsd	8(%rsp), %xmm1
	movl	$.LC158, %esi
	movl	$1, %edi
	movl	$1, %eax
	movapd	%xmm1, %xmm0
	call	__printf_chk
	movl	$10, %edi
	call	putchar
	movsd	8(%rsp), %xmm1
	movl	$.LC159, %esi
	movl	$1, %edi
	movl	$1, %eax
	movapd	%xmm1, %xmm0
	divsd	(%rsp), %xmm0
	call	__printf_chk
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L2149:
	xorl	%eax, %eax
	jmp	.L2153
	.p2align 4,,10
	.p2align 3
.L2157:
	addq	$4, %rax
	cmpq	$1600, %rax
	je	.L2156
.L2153:
	movl	matrix_res2(%rax,%rdx), %ecx
	cmpl	%ecx, matrix_res1(%rax,%rdx)
	je	.L2157
	movl	$.LC161, %edi
	call	puts
.L2154:
	movl	$10, %edi
	call	putchar
	movl	$.LC162, %edi
	call	puts
	xorl	%eax, %eax
	call	find_keyshares
	xorl	%eax, %eax
	call	free_heap_and_stack_memory
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2156:
	.cfi_restore_state
	addq	$4004, %rdx
	cmpq	$1601600, %rdx
	jne	.L2149
	movl	$.LC160, %edi
	call	puts
	jmp	.L2154
	.cfi_endproc
.LFE218:
	.size	main, .-main
	.text
	.p2align 4,,15
	.globl	foo
	.type	foo, @function
foo:
.LFB217:
	.cfi_startproc
	leal	2(%rdi), %eax
	ret
	.cfi_endproc
.LFE217:
	.size	foo, .-foo
	.p2align 4,,15
	.globl	foo2
	.type	foo2, @function
foo2:
.LFB219:
	.cfi_startproc
	leal	3(%rdi), %eax
	ret
	.cfi_endproc
.LFE219:
	.size	foo2, .-foo2
	.local	static_main_variable_for_testing.7076
	.comm	static_main_variable_for_testing.7076,4,16
	.section	.rodata
	.align 32
	.type	__func__.6963, @object
	.size	__func__.6963, 43
__func__.6963:
	.string	"user_friendly_secure_sieve_of_Eratosthenes"
	.align 16
	.type	__func__.6946, @object
	.size	__func__.6946, 29
__func__.6946:
	.string	"secure_sieve_of_Eratosthenes"
	.align 16
	.type	__func__.6929, @object
	.size	__func__.6929, 29
__func__.6929:
	.string	"simple_sieve_of_Eratosthenes"
	.align 16
	.type	__func__.6911, @object
	.size	__func__.6911, 27
__func__.6911:
	.string	"find_primes_up_to_a_number"
	.align 32
	.type	__func__.6893, @object
	.size	__func__.6893, 34
__func__.6893:
	.string	"secure_find_primes_up_to_a_number"
	.align 16
	.type	__func__.6773, @object
	.size	__func__.6773, 22
__func__.6773:
	.string	"stack_fun_params_test"
	.align 32
	.type	__func__.6767, @object
	.size	__func__.6767, 36
__func__.6767:
	.string	"tower_of_Hanoi_init_secure_template"
	.align 32
	.type	__func__.6513, @object
	.size	__func__.6513, 33
__func__.6513:
	.string	"put_fun_params_into_secure_stack"
	.align 32
	.type	__func__.6470, @object
	.size	__func__.6470, 49
__func__.6470:
	.string	"init_function_params_with_uninitialised_elements"
	.align 16
	.type	__func__.6432, @object
	.size	__func__.6432, 21
__func__.6432:
	.string	"init_function_params"
	.align 16
	.type	__func__.6321, @object
	.size	__func__.6321, 19
__func__.6321:
	.string	"allocate_stack_mem"
	.align 32
	.type	__func__.6264, @object
	.size	__func__.6264, 34
__func__.6264:
	.string	"multiple_secure_mallocs_and_frees"
	.align 32
	.type	__func__.6249, @object
	.size	__func__.6249, 34
__func__.6249:
	.string	"multiple_simple_mallocs_and_frees"
	.align 32
	.type	__func__.6234, @object
	.size	__func__.6234, 32
__func__.6234:
	.string	"adding_heap_arrays_time_measure"
	.type	__func__.6166, @object
	.size	__func__.6166, 9
__func__.6166:
	.string	"mem_test"
	.align 16
	.type	__func__.6115, @object
	.size	__func__.6115, 20
__func__.6115:
	.string	"managed_secure_free"
	.align 16
	.type	__func__.6099, @object
	.size	__func__.6099, 16
__func__.6099:
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
	.comm	matrix2,4008004,32
	.comm	matrix1,4008004,32
	.comm	matrix_res2,4008004,32
	.comm	matrix_res1,4008004,32
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
.LC36:
	.long	3910138226
	.long	1086244439
	.align 8
.LC40:
	.long	2413153145
	.long	1078277709
	.align 8
.LC41:
	.long	3757306110
	.long	1078005635
	.align 8
.LC42:
	.long	0
	.long	1072693248
	.align 8
.LC73:
	.long	0
	.long	1071644672
	.align 8
.LC75:
	.long	0
	.long	1070596096
	.align 8
.LC110:
	.long	0
	.long	1079574528
	.section	.rodata.cst16
	.align 16
.LC111:
	.long	100
	.long	100
	.long	100
	.long	100
	.align 16
.LC112:
	.long	4
	.long	4
	.long	4
	.long	4
	.section	.rodata.cst8
	.align 8
.LC114:
	.long	343597384
	.long	1078740910
	.align 8
.LC115:
	.long	2405181686
	.long	1078277570
	.align 8
.LC134:
	.long	0
	.long	1073741824
	.align 8
.LC154:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
