	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"spmv_double.c"
	.def	get_cpu_frequency;
	.scl	2;
	.type	32;
	.endef
	.globl	__real@41e1e1a300000000
	.section	.rdata,"dr",discard,__real@41e1e1a300000000
	.p2align	3, 0x0
__real@41e1e1a300000000:
	.quad	0x41e1e1a300000000
	.section	.text,"xr",one_only,get_cpu_frequency
	.globl	get_cpu_frequency
	.p2align	4, 0x90
get_cpu_frequency:
	movsd	__real@41e1e1a300000000(%rip), %xmm0
	retq

	.def	rdtsc;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,rdtsc
	.globl	rdtsc
	.p2align	4, 0x90
rdtsc:
	#APP
	rdtsc
	#NO_APP
	shlq	$32, %rdx
	movl	%eax, %eax
	orq	%rdx, %rax
	retq

	.def	csc_matrix_vector_product;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,csc_matrix_vector_product
	.globl	csc_matrix_vector_product
	.p2align	4, 0x90
csc_matrix_vector_product:
.seh_proc csc_matrix_vector_product
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	.seh_endprologue
	movl	4(%rcx), %eax
	testl	%eax, %eax
	jle	.LBB2_10
	movq	32(%rcx), %r9
	decq	%rax
	movl	(%r9), %r10d
	xorl	%r11d, %r11d
	jmp	.LBB2_2
	.p2align	4, 0x90
.LBB2_9:
	leaq	1(%r11), %rsi
	cmpq	%rax, %r11
	movq	%rsi, %r11
	je	.LBB2_10
.LBB2_2:
	movl	%r10d, %ebp
	movl	4(%r9,%r11,4), %r10d
	cmpl	%r10d, %ebp
	jge	.LBB2_9
	movslq	%r10d, %rsi
	movq	16(%rcx), %rdi
	movq	24(%rcx), %rbx
	movslq	%ebp, %r14
	movq	%rsi, %r15
	subq	%r14, %r15
	cmpq	$4, %r15
	jb	.LBB2_6
	movq	%r15, %r12
	shrq	$2, %r12
	leaq	12(,%r14,4), %r13
	.p2align	4, 0x90
.LBB2_5:
	movsd	(%rdx,%r11,8), %xmm0
	mulsd	-24(%rdi,%r13,2), %xmm0
	movslq	-12(%rbx,%r13), %rbp
	addsd	(%r8,%rbp,8), %xmm0
	movsd	%xmm0, (%r8,%rbp,8)
	movsd	(%rdx,%r11,8), %xmm0
	mulsd	-16(%rdi,%r13,2), %xmm0
	movslq	-8(%rbx,%r13), %rbp
	addsd	(%r8,%rbp,8), %xmm0
	movsd	%xmm0, (%r8,%rbp,8)
	movsd	(%rdx,%r11,8), %xmm0
	mulsd	-8(%rdi,%r13,2), %xmm0
	movslq	-4(%rbx,%r13), %rbp
	addsd	(%r8,%rbp,8), %xmm0
	movsd	%xmm0, (%r8,%rbp,8)
	movsd	(%rdx,%r11,8), %xmm0
	mulsd	(%rdi,%r13,2), %xmm0
	movslq	(%rbx,%r13), %rbp
	addsd	(%r8,%rbp,8), %xmm0
	movsd	%xmm0, (%r8,%rbp,8)
	addq	$16, %r13
	decq	%r12
	jne	.LBB2_5
.LBB2_6:
	movq	%r15, %r12
	andq	$-4, %r12
	cmpq	%r15, %r12
	je	.LBB2_9
	addq	%r14, %r12
	.p2align	4, 0x90
.LBB2_8:
	movsd	(%rdx,%r11,8), %xmm0
	mulsd	(%rdi,%r12,8), %xmm0
	movslq	(%rbx,%r12,4), %r14
	addsd	(%r8,%r14,8), %xmm0
	movsd	%xmm0, (%r8,%r14,8)
	incq	%r12
	cmpq	%r12, %rsi
	jne	.LBB2_8
	jmp	.LBB2_9
.LBB2_10:
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
	.seh_endproc

	.def	main;
	.scl	2;
	.type	32;
	.endef
	.globl	__xmm@40340000000000004024000000000000
	.section	.rdata,"dr",discard,__xmm@40340000000000004024000000000000
	.p2align	4, 0x0
__xmm@40340000000000004024000000000000:
	.quad	0x4024000000000000
	.quad	0x4034000000000000
	.globl	__xmm@4044000000000000403e000000000000
	.section	.rdata,"dr",discard,__xmm@4044000000000000403e000000000000
	.p2align	4, 0x0
__xmm@4044000000000000403e000000000000:
	.quad	0x403e000000000000
	.quad	0x4044000000000000
	.globl	__xmm@404e0000000000004049000000000000
	.section	.rdata,"dr",discard,__xmm@404e0000000000004049000000000000
	.p2align	4, 0x0
__xmm@404e0000000000004049000000000000:
	.quad	0x4049000000000000
	.quad	0x404e000000000000
	.globl	__real@4051800000000000
	.section	.rdata,"dr",discard,__real@4051800000000000
	.p2align	3, 0x0
__real@4051800000000000:
	.quad	0x4051800000000000
	.globl	__real@4054000000000000
	.section	.rdata,"dr",discard,__real@4054000000000000
	.p2align	3, 0x0
__real@4054000000000000:
	.quad	0x4054000000000000
	.globl	__real@4024000000000000
	.section	.rdata,"dr",discard,__real@4024000000000000
	.p2align	3, 0x0
__real@4024000000000000:
	.quad	0x4024000000000000
	.globl	__xmm@00000000000000004530000043300000
	.section	.rdata,"dr",discard,__xmm@00000000000000004530000043300000
	.p2align	4, 0x0
__xmm@00000000000000004530000043300000:
	.long	1127219200
	.long	1160773632
	.long	0
	.long	0
	.globl	__xmm@45300000000000004330000000000000
	.section	.rdata,"dr",discard,__xmm@45300000000000004330000000000000
	.p2align	4, 0x0
__xmm@45300000000000004330000000000000:
	.quad	0x4330000000000000
	.quad	0x4530000000000000
	.globl	__real@3de316b7e5807ca5
	.section	.rdata,"dr",discard,__real@3de316b7e5807ca5
	.p2align	3, 0x0
__real@3de316b7e5807ca5:
	.quad	0x3de316b7e5807ca5
	.section	.text,"xr",one_only,main
	.globl	main
	.p2align	4, 0x90
main:
.seh_proc main
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$168, %rsp
	.seh_stackalloc 168
	movapd	%xmm7, 144(%rsp)
	.seh_savexmm %xmm7, 144
	movapd	%xmm6, 128(%rsp)
	.seh_savexmm %xmm6, 128
	.seh_endprologue
	stmxcsr	52(%rsp)
	orl	$32832, 52(%rsp)
	ldmxcsr	52(%rsp)
	cmpl	$1, %ecx
	jle	.LBB3_75
	movq	8(%rdx), %rcx
	leaq	"??_C@_01KDCPPGHE@r?$AA@"(%rip), %rdx
	callq	fopen
	testq	%rax, %rax
	je	.LBB3_76
	movq	%rax, %rbp
	leaq	52(%rsp), %rdx
	movq	%rax, %rcx
	callq	mm_read_banner
	testl	%eax, %eax
	jne	.LBB3_77
	cmpb	$67, 54(%rsp)
	jne	.LBB3_6
	cmpb	$77, 52(%rsp)
	jne	.LBB3_6
	cmpb	$67, 53(%rsp)
	je	.LBB3_78
.LBB3_6:
	leaq	76(%rsp), %rdx
	leaq	72(%rsp), %r8
	leaq	68(%rsp), %r9
	movq	%rbp, %rcx
	callq	mm_read_mtx_crd_size
	testl	%eax, %eax
	jne	.LBB3_76
	movslq	68(%rsp), %r12
	leaq	(,%r12,4), %rdi
	movq	%rdi, %rcx
	callq	malloc
	movq	%rax, %rsi
	movq	%rdi, %rcx
	callq	malloc
	movq	%rax, %r14
	leaq	(,%r12,8), %rcx
	callq	malloc
	movq	%rax, %rdi
	testq	%r12, %r12
	jle	.LBB3_11
	xorl	%r15d, %r15d
	movq	%rdi, %rbx
	movq	%r14, %r12
	movq	%rsi, %r13
	.p2align	4, 0x90
.LBB3_9:
	movq	%rbx, 32(%rsp)
	movq	%rbp, %rcx
	leaq	"??_C@_0L@DPCLJHDN@?$CFd?5?$CFd?5?$CFlg?6?$AA@"(%rip), %rdx
	movq	%r13, %r8
	movq	%r12, %r9
	callq	fscanf
	decl	(%r13)
	decl	(%r12)
	incq	%r15
	movslq	68(%rsp), %rax
	addq	$4, %r13
	addq	$4, %r12
	addq	$8, %rbx
	cmpq	%rax, %r15
	jl	.LBB3_9
	movq	%rax, %r12
.LBB3_11:
	movslq	72(%rsp), %rcx
	movl	%ecx, %eax
	movq	%rax, 56(%rsp)
	movq	%rcx, %r15
	leaq	4(,%rcx,4), %rcx
	callq	malloc
	movq	%rax, %rbx
	movl	$0, (%rax)
	movq	%r12, %r11
	testl	%r11d, %r11d
	jle	.LBB3_32
	movl	%r11d, %eax
	xorl	%r8d, %r8d
	cmpl	$8, %r11d
	jae	.LBB3_13
.LBB3_31:
	movl	%eax, %ecx
	andl	$-8, %ecx
	cmpq	%rax, %rcx
	jne	.LBB3_66
.LBB3_32:
	movl	%r11d, (%rbx,%r15,4)
	movq	%r15, %rbp
	leaq	(,%r15,8), %rcx
	callq	malloc
	movq	%rax, %r14
	movslq	76(%rsp), %r15
	movl	%r15d, %eax
	movq	%rax, 80(%rsp)
	shlq	$3, %r15
	movq	%r15, %rcx
	callq	malloc
	movq	%rax, %r13
	movq	%r15, %rcx
	callq	malloc
	movq	%rax, %r12
	movq	%r15, %rcx
	callq	malloc
	movq	%rax, %r15
	cmpl	$0, 56(%rsp)
	jle	.LBB3_33
	cmpl	$8, %ebp
	jb	.LBB3_72
	movq	%rbp, %rax
	shrq	$3, %rax
	movapd	__xmm@40340000000000004024000000000000(%rip), %xmm1
	movapd	__xmm@4044000000000000403e000000000000(%rip), %xmm2
	movapd	__xmm@404e0000000000004049000000000000(%rip), %xmm3
	movsd	__real@4051800000000000(%rip), %xmm4
	movsd	__real@4054000000000000(%rip), %xmm5
	movq	%r14, %rcx
	.p2align	4, 0x90
.LBB3_71:
	movsd	%xmm0, (%rcx)
	movapd	%xmm0, %xmm6
	unpcklpd	%xmm0, %xmm6
	movapd	%xmm6, %xmm7
	addpd	%xmm1, %xmm7
	movupd	%xmm7, 8(%rcx)
	movapd	%xmm6, %xmm7
	addpd	%xmm2, %xmm7
	movupd	%xmm7, 24(%rcx)
	addpd	%xmm3, %xmm6
	movupd	%xmm6, 40(%rcx)
	movapd	%xmm0, %xmm6
	addsd	%xmm4, %xmm6
	movsd	%xmm6, 56(%rcx)
	addsd	%xmm5, %xmm0
	addq	$64, %rcx
	decq	%rax
	jne	.LBB3_71
.LBB3_72:
	movq	%rbp, %rax
	andq	$-8, %rax
	cmpq	%rbp, %rax
	je	.LBB3_33
	movsd	__real@4024000000000000(%rip), %xmm1
	.p2align	4, 0x90
.LBB3_74:
	movsd	%xmm0, (%r14,%rax,8)
	addsd	%xmm1, %xmm0
	incq	%rax
	cmpq	%rax, %rbp
	jne	.LBB3_74
.LBB3_33:
	movq	80(%rsp), %rbp
	testl	%ebp, %ebp
	jle	.LBB3_35
	shlq	$3, %rbp
	movq	%r13, %rcx
	xorl	%edx, %edx
	movq	%rbp, %r8
	callq	_intel_fast_memset
	movq	%r12, %rcx
	xorl	%edx, %edx
	movq	%rbp, %r8
	callq	_intel_fast_memset
	movq	%r15, %rcx
	xorl	%edx, %edx
	movq	%rbp, %r8
	callq	_intel_fast_memset
.LBB3_35:
	#APP
	rdtsc
	#NO_APP
	movq	%rdx, 120(%rsp)
	movl	%eax, 100(%rsp)
	cmpl	$0, 56(%rsp)
	movq	%r14, 80(%rsp)
	jle	.LBB3_45
	movq	56(%rsp), %rax
	decq	%rax
	movl	(%rbx), %edx
	xorl	%r8d, %r8d
	jmp	.LBB3_37
	.p2align	4, 0x90
.LBB3_44:
	leaq	1(%r8), %rcx
	cmpq	%rax, %r8
	movq	%rcx, %r8
	je	.LBB3_45
.LBB3_37:
	movl	%edx, %ecx
	movl	4(%rbx,%r8,4), %edx
	cmpl	%edx, %ecx
	jge	.LBB3_44
	movslq	%edx, %r9
	movsd	(%r14,%r8,8), %xmm0
	movslq	%ecx, %r10
	movq	%r9, %rcx
	subq	%r10, %rcx
	cmpq	$4, %rcx
	jb	.LBB3_41
	movq	%rcx, %r11
	shrq	$2, %r11
	leaq	12(,%r10,4), %rbp
	.p2align	4, 0x90
.LBB3_40:
	movsd	-24(%rdi,%rbp,2), %xmm1
	movslq	-12(%rsi,%rbp), %r14
	mulsd	%xmm0, %xmm1
	addsd	(%r13,%r14,8), %xmm1
	movsd	-16(%rdi,%rbp,2), %xmm2
	movsd	%xmm1, (%r13,%r14,8)
	mulsd	%xmm0, %xmm2
	movslq	-8(%rsi,%rbp), %r14
	addsd	(%r13,%r14,8), %xmm2
	movsd	%xmm2, (%r13,%r14,8)
	movsd	-8(%rdi,%rbp,2), %xmm1
	movslq	-4(%rsi,%rbp), %r14
	mulsd	%xmm0, %xmm1
	addsd	(%r13,%r14,8), %xmm1
	movsd	(%rdi,%rbp,2), %xmm2
	movsd	%xmm1, (%r13,%r14,8)
	mulsd	%xmm0, %xmm2
	movslq	(%rsi,%rbp), %r14
	addsd	(%r13,%r14,8), %xmm2
	movsd	%xmm2, (%r13,%r14,8)
	addq	$16, %rbp
	decq	%r11
	jne	.LBB3_40
.LBB3_41:
	movq	%rcx, %r11
	andq	$-4, %r11
	cmpq	%rcx, %r11
	movq	80(%rsp), %r14
	je	.LBB3_44
	addq	%r10, %r11
	.p2align	4, 0x90
.LBB3_43:
	movsd	(%rdi,%r11,8), %xmm1
	mulsd	%xmm0, %xmm1
	movslq	(%rsi,%r11,4), %rcx
	addsd	(%r13,%rcx,8), %xmm1
	movsd	%xmm1, (%r13,%rcx,8)
	incq	%r11
	cmpq	%r11, %r9
	jne	.LBB3_43
	jmp	.LBB3_44
	.p2align	4, 0x90
.LBB3_68:
	incq	%rcx
	cmpq	%rcx, %rax
	je	.LBB3_32
.LBB3_66:
	movl	(%r14,%rcx,4), %edx
	cmpl	%r8d, %edx
	je	.LBB3_68
	movslq	%edx, %r8
	movl	%ecx, (%rbx,%r8,4)
	movl	%edx, %r8d
	jmp	.LBB3_68
.LBB3_45:
	#APP
	rdtsc
	#NO_APP
	movq	%rdx, 112(%rsp)
	movl	%eax, 96(%rsp)
	#APP
	rdtsc
	#NO_APP
	movq	%rdx, 104(%rsp)
	movl	%eax, 92(%rsp)
	cmpl	$0, 56(%rsp)
	jle	.LBB3_55
	movq	56(%rsp), %rax
	decq	%rax
	movl	(%rbx), %edx
	xorl	%r8d, %r8d
	jmp	.LBB3_47
	.p2align	4, 0x90
.LBB3_54:
	leaq	1(%r8), %rcx
	cmpq	%rax, %r8
	movq	%rcx, %r8
	je	.LBB3_55
.LBB3_47:
	movl	%edx, %ecx
	movl	4(%rbx,%r8,4), %edx
	cmpl	%edx, %ecx
	jge	.LBB3_54
	movslq	%edx, %r13
	movsd	(%r14,%r8,8), %xmm0
	movslq	%ecx, %r10
	movq	%r13, %rcx
	subq	%r10, %rcx
	cmpq	$4, %rcx
	jb	.LBB3_51
	movq	%rcx, %r9
	shrq	$2, %r9
	leaq	12(,%r10,4), %rbp
	.p2align	4, 0x90
.LBB3_50:
	movsd	-24(%rdi,%rbp,2), %xmm1
	movslq	-12(%rsi,%rbp), %r11
	mulsd	%xmm0, %xmm1
	addsd	(%r12,%r11,8), %xmm1
	movsd	-16(%rdi,%rbp,2), %xmm2
	movsd	%xmm1, (%r12,%r11,8)
	mulsd	%xmm0, %xmm2
	movslq	-8(%rsi,%rbp), %r11
	addsd	(%r12,%r11,8), %xmm2
	movsd	%xmm2, (%r12,%r11,8)
	movsd	-8(%rdi,%rbp,2), %xmm1
	movslq	-4(%rsi,%rbp), %r11
	mulsd	%xmm0, %xmm1
	addsd	(%r12,%r11,8), %xmm1
	movsd	(%rdi,%rbp,2), %xmm2
	movsd	%xmm1, (%r12,%r11,8)
	mulsd	%xmm0, %xmm2
	movslq	(%rsi,%rbp), %r11
	addsd	(%r12,%r11,8), %xmm2
	movsd	%xmm2, (%r12,%r11,8)
	addq	$16, %rbp
	decq	%r9
	jne	.LBB3_50
.LBB3_51:
	movq	%rcx, %r9
	andq	$-4, %r9
	cmpq	%rcx, %r9
	je	.LBB3_54
	addq	%r10, %r9
	.p2align	4, 0x90
.LBB3_53:
	movsd	(%rdi,%r9,8), %xmm1
	mulsd	%xmm0, %xmm1
	movslq	(%rsi,%r9,4), %rcx
	addsd	(%r12,%rcx,8), %xmm1
	movsd	%xmm1, (%r12,%rcx,8)
	incq	%r9
	cmpq	%r9, %r13
	jne	.LBB3_53
	jmp	.LBB3_54
.LBB3_55:
	#APP
	rdtsc
	#NO_APP
	movl	%edx, %r13d
	movl	%eax, 88(%rsp)
	#APP
	rdtsc
	#NO_APP
	movl	%edx, %r12d
	cmpl	$0, 56(%rsp)
	jle	.LBB3_65
	decq	56(%rsp)
	movl	(%rbx), %edx
	xorl	%ebp, %ebp
	jmp	.LBB3_57
	.p2align	4, 0x90
.LBB3_64:
	leaq	1(%rbp), %rcx
	cmpq	56(%rsp), %rbp
	movq	%rcx, %rbp
	je	.LBB3_65
.LBB3_57:
	movl	%edx, %ecx
	movl	4(%rbx,%rbp,4), %edx
	cmpl	%edx, %ecx
	jge	.LBB3_64
	movslq	%edx, %r10
	movsd	(%r14,%rbp,8), %xmm0
	movslq	%ecx, %rcx
	movq	%r10, %r8
	subq	%rcx, %r8
	cmpq	$4, %r8
	jb	.LBB3_61
	movq	%r8, %r9
	shrq	$2, %r9
	leaq	12(,%rcx,4), %r11
	.p2align	4, 0x90
.LBB3_60:
	movsd	-24(%rdi,%r11,2), %xmm1
	movslq	-12(%rsi,%r11), %r14
	mulsd	%xmm0, %xmm1
	addsd	(%r15,%r14,8), %xmm1
	movsd	-16(%rdi,%r11,2), %xmm2
	movsd	%xmm1, (%r15,%r14,8)
	mulsd	%xmm0, %xmm2
	movslq	-8(%rsi,%r11), %r14
	addsd	(%r15,%r14,8), %xmm2
	movsd	%xmm2, (%r15,%r14,8)
	movsd	-8(%rdi,%r11,2), %xmm1
	movslq	-4(%rsi,%r11), %r14
	mulsd	%xmm0, %xmm1
	addsd	(%r15,%r14,8), %xmm1
	movsd	(%rdi,%r11,2), %xmm2
	movsd	%xmm1, (%r15,%r14,8)
	mulsd	%xmm0, %xmm2
	movslq	(%rsi,%r11), %r14
	addsd	(%r15,%r14,8), %xmm2
	movsd	%xmm2, (%r15,%r14,8)
	addq	$16, %r11
	decq	%r9
	jne	.LBB3_60
.LBB3_61:
	movq	%r8, %r9
	andq	$-4, %r9
	cmpq	%r8, %r9
	movq	80(%rsp), %r14
	je	.LBB3_64
	addq	%rcx, %r9
	.p2align	4, 0x90
.LBB3_63:
	movsd	(%rdi,%r9,8), %xmm1
	mulsd	%xmm0, %xmm1
	movslq	(%rsi,%r9,4), %rcx
	addsd	(%r15,%rcx,8), %xmm1
	movsd	%xmm1, (%r15,%rcx,8)
	incq	%r9
	cmpq	%r9, %r10
	jne	.LBB3_63
	jmp	.LBB3_64
.LBB3_65:
	shlq	$32, %r12
	movl	%eax, %r10d
	shlq	$32, %r13
	movl	88(%rsp), %eax
	movq	104(%rsp), %rdx
	shlq	$32, %rdx
	movl	92(%rsp), %ecx
	orq	%rdx, %rcx
	subq	%rcx, %rax
	addq	%r13, %rax
	movq	%rax, %xmm1
	movdqa	__xmm@00000000000000004530000043300000(%rip), %xmm2
	punpckldq	%xmm2, %xmm1
	movapd	__xmm@45300000000000004330000000000000(%rip), %xmm3
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0
	addsd	%xmm1, %xmm0
	movq	112(%rsp), %r8
	shlq	$32, %r8
	movl	96(%rsp), %eax
	movq	120(%rsp), %rdx
	shlq	$32, %rdx
	movl	100(%rsp), %ecx
	orq	%rdx, %rcx
	subq	%rcx, %rax
	addq	%r8, %rax
	movq	%rax, %xmm4
	punpckldq	%xmm2, %xmm4
	subpd	%xmm3, %xmm4
	movapd	%xmm4, %xmm1
	unpckhpd	%xmm4, %xmm1
	addsd	%xmm4, %xmm1
	#APP
	rdtsc
	#NO_APP
	shlq	$32, %rdx
	movl	%eax, %eax
	orq	%r12, %r10
	subq	%r10, %rax
	addq	%rdx, %rax
	movq	%rax, %xmm4
	punpckldq	%xmm2, %xmm4
	subpd	%xmm3, %xmm4
	movapd	%xmm4, %xmm2
	unpckhpd	%xmm4, %xmm2
	addsd	%xmm4, %xmm2
	addsd	%xmm0, %xmm1
	addsd	%xmm2, %xmm1
	mulsd	__real@3de316b7e5807ca5(%rip), %xmm1
	leaq	"??_C@_0EP@DDEOCFJO@avg?5time?5required?5to?5perform?5nor@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	68(%rsp), %r9d
	movl	72(%rsp), %r8d
	movl	76(%rsp), %edx
	leaq	"??_C@_0CC@ENPJFCDH@rows?$DN?$CFd?5columns?$DN?5?$CFd?5non?9zero?$DN?$CFd?5@"(%rip), %rcx
	callq	printf
	xorl	%eax, %eax
	movaps	128(%rsp), %xmm6
	movaps	144(%rsp), %xmm7
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB3_13:
	movl	%eax, %ecx
	andl	$-8, %ecx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	jmp	.LBB3_14
	.p2align	4, 0x90
.LBB3_30:
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	je	.LBB3_31
.LBB3_14:
	movl	(%r14,%rdx,4), %r9d
	cmpl	%r8d, %r9d
	je	.LBB3_16
	movslq	%r9d, %r8
	movl	%edx, (%rbx,%r8,4)
	movl	%r9d, %r8d
.LBB3_16:
	movl	4(%r14,%rdx,4), %r9d
	cmpl	%r8d, %r9d
	je	.LBB3_18
	movslq	%r9d, %r8
	leal	1(%rdx), %r10d
	movl	%r10d, (%rbx,%r8,4)
	movl	%r9d, %r8d
.LBB3_18:
	movl	8(%r14,%rdx,4), %r9d
	cmpl	%r8d, %r9d
	je	.LBB3_20
	movslq	%r9d, %r8
	leal	2(%rdx), %r10d
	movl	%r10d, (%rbx,%r8,4)
	movl	%r9d, %r8d
.LBB3_20:
	movl	12(%r14,%rdx,4), %r9d
	cmpl	%r8d, %r9d
	je	.LBB3_22
	movslq	%r9d, %r8
	leal	3(%rdx), %r10d
	movl	%r10d, (%rbx,%r8,4)
	movl	%r9d, %r8d
.LBB3_22:
	movl	16(%r14,%rdx,4), %r9d
	cmpl	%r8d, %r9d
	je	.LBB3_24
	movslq	%r9d, %r8
	leal	4(%rdx), %r10d
	movl	%r10d, (%rbx,%r8,4)
	movl	%r9d, %r8d
.LBB3_24:
	movl	20(%r14,%rdx,4), %r9d
	cmpl	%r8d, %r9d
	je	.LBB3_26
	movslq	%r9d, %r8
	leal	5(%rdx), %r10d
	movl	%r10d, (%rbx,%r8,4)
	movl	%r9d, %r8d
.LBB3_26:
	movl	24(%r14,%rdx,4), %r9d
	cmpl	%r8d, %r9d
	je	.LBB3_28
	movslq	%r9d, %r8
	leal	6(%rdx), %r10d
	movl	%r10d, (%rbx,%r8,4)
	movl	%r9d, %r8d
.LBB3_28:
	movl	28(%r14,%rdx,4), %r9d
	cmpl	%r8d, %r9d
	je	.LBB3_30
	movslq	%r9d, %r8
	leal	7(%rdx), %r10d
	movl	%r10d, (%rbx,%r8,4)
	movl	%r9d, %r8d
	jmp	.LBB3_30
.LBB3_75:
	movq	(%rdx), %rsi
	movl	$2, %ecx
	callq	__acrt_iob_func
	leaq	"??_C@_0CE@BIKOBMBB@Usage?3?5?$CFs?5?$FLmatrix?9market?9filenam@"(%rip), %rdx
	movq	%rax, %rcx
	movq	%rsi, %r8
	callq	fprintf
.LBB3_76:
	movl	$1, %ecx
	callq	exit
.LBB3_77:
	leaq	.Lstr(%rip), %rcx
	callq	puts
	movl	$1, %ecx
	callq	exit
.LBB3_78:
	leaq	"??_C@_0CK@GGOBCCKJ@Sorry?0?5this?5application?5does?5not@"(%rip), %rcx
	callq	printf
	leaq	52(%rsp), %rcx
	callq	mm_typecode_to_str
	leaq	"??_C@_0BK@FLDFLNI@Market?5Market?5type?3?5?$FL?$CFs?$FN?6?$AA@"(%rip), %rcx
	movq	%rax, %rdx
	callq	printf
	movl	$1, %ecx
	callq	exit
	int3
	.seh_endproc

	.def	fprintf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,fprintf
	.globl	fprintf
	.p2align	4, 0x90
fprintf:
.seh_proc fprintf
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movq	%rdx, %rsi
	movq	%rcx, %rdi
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	leaq	96(%rsp), %rbx
	movq	%rbx, 40(%rsp)
	callq	__local_stdio_printf_options
	movq	(%rax), %rcx
	movq	%rbx, 32(%rsp)
	movq	%rdi, %rdx
	movq	%rsi, %r8
	xorl	%r9d, %r9d
	callq	__stdio_common_vfprintf
	nop
	addq	$48, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	printf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,printf
	.globl	printf
	.p2align	4, 0x90
printf:
.seh_proc printf
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, 88(%rsp)
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	leaq	88(%rsp), %rbx
	movq	%rbx, 40(%rsp)
	movl	$1, %ecx
	callq	__acrt_iob_func
	movq	%rax, %rdi
	callq	__local_stdio_printf_options
	movq	(%rax), %rcx
	movq	%rbx, 32(%rsp)
	movq	%rdi, %rdx
	movq	%rsi, %r8
	xorl	%r9d, %r9d
	callq	__stdio_common_vfprintf
	nop
	addq	$48, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	fscanf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,fscanf
	.globl	fscanf
	.p2align	4, 0x90
fscanf:
.seh_proc fscanf
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movq	%rdx, %rsi
	movq	%rcx, %rdi
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	leaq	96(%rsp), %rbx
	movq	%rbx, 40(%rsp)
	callq	__local_stdio_scanf_options
	movq	(%rax), %rcx
	movq	%rbx, 32(%rsp)
	movq	%rdi, %rdx
	movq	%rsi, %r8
	xorl	%r9d, %r9d
	callq	__stdio_common_vfscanf
	nop
	addq	$48, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	__local_stdio_printf_options;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,__local_stdio_printf_options
	.globl	__local_stdio_printf_options
	.p2align	4, 0x90
__local_stdio_printf_options:
	leaq	__local_stdio_printf_options._OptionsStorage(%rip), %rax
	retq

	.def	__local_stdio_scanf_options;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,__local_stdio_scanf_options
	.globl	__local_stdio_scanf_options
	.p2align	4, 0x90
__local_stdio_scanf_options:
	leaq	__local_stdio_scanf_options._OptionsStorage(%rip), %rax
	retq

	.section	.rdata,"dr",discard,"??_C@_0CE@BIKOBMBB@Usage?3?5?$CFs?5?$FLmatrix?9market?9filenam@"
	.globl	"??_C@_0CE@BIKOBMBB@Usage?3?5?$CFs?5?$FLmatrix?9market?9filenam@"
"??_C@_0CE@BIKOBMBB@Usage?3?5?$CFs?5?$FLmatrix?9market?9filenam@":
	.asciz	"Usage: %s [matrix-market-filename]\n"

	.section	.rdata,"dr",discard,"??_C@_01KDCPPGHE@r?$AA@"
	.globl	"??_C@_01KDCPPGHE@r?$AA@"
"??_C@_01KDCPPGHE@r?$AA@":
	.asciz	"r"

	.section	.rdata,"dr",discard,"??_C@_0CK@GGOBCCKJ@Sorry?0?5this?5application?5does?5not@"
	.globl	"??_C@_0CK@GGOBCCKJ@Sorry?0?5this?5application?5does?5not@"
"??_C@_0CK@GGOBCCKJ@Sorry?0?5this?5application?5does?5not@":
	.asciz	"Sorry, this application does not support "

	.section	.rdata,"dr",discard,"??_C@_0BK@FLDFLNI@Market?5Market?5type?3?5?$FL?$CFs?$FN?6?$AA@"
	.globl	"??_C@_0BK@FLDFLNI@Market?5Market?5type?3?5?$FL?$CFs?$FN?6?$AA@"
"??_C@_0BK@FLDFLNI@Market?5Market?5type?3?5?$FL?$CFs?$FN?6?$AA@":
	.asciz	"Market Market type: [%s]\n"

	.section	.rdata,"dr",discard,"??_C@_0L@DPCLJHDN@?$CFd?5?$CFd?5?$CFlg?6?$AA@"
	.globl	"??_C@_0L@DPCLJHDN@?$CFd?5?$CFd?5?$CFlg?6?$AA@"
"??_C@_0L@DPCLJHDN@?$CFd?5?$CFd?5?$CFlg?6?$AA@":
	.asciz	"%d %d %lg\n"

	.section	.rdata,"dr",discard,"??_C@_0EP@DDEOCFJO@avg?5time?5required?5to?5perform?5nor@"
	.globl	"??_C@_0EP@DDEOCFJO@avg?5time?5required?5to?5perform?5nor@"
"??_C@_0EP@DDEOCFJO@avg?5time?5required?5to?5perform?5nor@":
	.asciz	"avg time required to perform normal spmv with same input vector is %f seconds\n"

	.section	.rdata,"dr",discard,"??_C@_0CC@ENPJFCDH@rows?$DN?$CFd?5columns?$DN?5?$CFd?5non?9zero?$DN?$CFd?5@"
	.globl	"??_C@_0CC@ENPJFCDH@rows?$DN?$CFd?5columns?$DN?5?$CFd?5non?9zero?$DN?$CFd?5@"
"??_C@_0CC@ENPJFCDH@rows?$DN?$CFd?5columns?$DN?5?$CFd?5non?9zero?$DN?$CFd?5@":
	.asciz	"rows=%d columns= %d non-zero=%d \n"

	.lcomm	__local_stdio_printf_options._OptionsStorage,8,8
	.lcomm	__local_stdio_scanf_options._OptionsStorage,8,8
	.section	.rdata,"dr"
.Lstr:
	.asciz	"Could not process Matrix Market banner."

	.section	.drectve,"yni"
	.ascii	" /DEFAULTLIB:libcmt.lib"
	.ascii	" /DEFAULTLIB:libircmt.lib"
	.ascii	" /DEFAULTLIB:svml_dispmt.lib"
	.ascii	" /DEFAULTLIB:libdecimal.lib"
	.ascii	" /DEFAULTLIB:libmmt.lib"
	.ascii	" /DEFAULTLIB:oldnames.lib"
	.globl	_fltused
