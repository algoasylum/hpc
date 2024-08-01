	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"spmv-10x-double-PARALLEL-SIMD.c"
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

	.def	csc_matrix_vector_sse;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,csc_matrix_vector_sse
	.globl	csc_matrix_vector_sse
	.p2align	4, 0x90
csc_matrix_vector_sse:
.seh_proc csc_matrix_vector_sse
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	.seh_endprologue
	movl	(%rcx), %eax
	testl	%eax, %eax
	jle	.LBB2_10
	movq	32(%rcx), %rcx
	decq	%rax
	movl	(%rcx), %r10d
	xorl	%r11d, %r11d
	jmp	.LBB2_2
	.p2align	4, 0x90
.LBB2_9:
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	addsd	(%rdx,%r11,8), %xmm1
	movsd	%xmm1, (%rdx,%r11,8)
	leaq	1(%r11), %rsi
	cmpq	%rax, %r11
	movq	%rsi, %r11
	je	.LBB2_10
.LBB2_2:
	movl	%r10d, %edi
	movl	4(%rcx,%r11,4), %r10d
	xorpd	%xmm0, %xmm0
	cmpl	%r10d, %edi
	jge	.LBB2_9
	movslq	%r10d, %rsi
	movslq	%edi, %rdi
	movq	%rsi, %rbx
	subq	%rdi, %rbx
	cmpq	$8, %rbx
	jb	.LBB2_6
	movq	%rbx, %r14
	shrq	$3, %r14
	leaq	56(,%rdi,8), %r15
	.p2align	4, 0x90
.LBB2_5:
	movsd	-56(%r8,%r15), %xmm1
	movsd	-48(%r8,%r15), %xmm2
	mulsd	-56(%r9,%r15), %xmm1
	unpcklpd	%xmm1, %xmm1
	addpd	%xmm0, %xmm1
	mulsd	-48(%r9,%r15), %xmm2
	unpcklpd	%xmm2, %xmm2
	addpd	%xmm1, %xmm2
	movsd	-40(%r8,%r15), %xmm0
	mulsd	-40(%r9,%r15), %xmm0
	unpcklpd	%xmm0, %xmm0
	addpd	%xmm2, %xmm0
	movsd	-32(%r8,%r15), %xmm1
	mulsd	-32(%r9,%r15), %xmm1
	unpcklpd	%xmm1, %xmm1
	movsd	-24(%r8,%r15), %xmm2
	mulsd	-24(%r9,%r15), %xmm2
	addpd	%xmm0, %xmm1
	unpcklpd	%xmm2, %xmm2
	addpd	%xmm1, %xmm2
	movsd	-16(%r8,%r15), %xmm0
	mulsd	-16(%r9,%r15), %xmm0
	unpcklpd	%xmm0, %xmm0
	addpd	%xmm2, %xmm0
	movsd	-8(%r8,%r15), %xmm1
	mulsd	-8(%r9,%r15), %xmm1
	unpcklpd	%xmm1, %xmm1
	addpd	%xmm0, %xmm1
	movsd	(%r8,%r15), %xmm0
	mulsd	(%r9,%r15), %xmm0
	unpcklpd	%xmm0, %xmm0
	addpd	%xmm1, %xmm0
	addq	$64, %r15
	decq	%r14
	jne	.LBB2_5
.LBB2_6:
	movq	%rbx, %r14
	andq	$-8, %r14
	cmpq	%rbx, %r14
	je	.LBB2_9
	addq	%rdi, %r14
	.p2align	4, 0x90
.LBB2_8:
	movsd	(%r8,%r14,8), %xmm1
	mulsd	(%r9,%r14,8), %xmm1
	unpcklpd	%xmm1, %xmm1
	addpd	%xmm1, %xmm0
	incq	%r14
	cmpq	%r14, %rsi
	jne	.LBB2_8
	jmp	.LBB2_9
.LBB2_10:
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	retq
	.seh_endproc

	.def	Value_vector;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,Value_vector
	.globl	Value_vector
	.p2align	4, 0x90
Value_vector:
	movl	8(%rcx), %eax
	testl	%eax, %eax
	jle	.LBB3_6
	movq	40(%rcx), %rcx
	cmpl	$8, %eax
	jb	.LBB3_4
	leaq	(,%rax,4), %r9
	andq	$-32, %r9
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB3_3:
	movslq	(%rcx,%r10), %r11
	movsd	(%rdx,%r11,8), %xmm0
	movsd	%xmm0, (%r8,%r10,2)
	movslq	4(%rcx,%r10), %r11
	movsd	(%rdx,%r11,8), %xmm0
	movsd	%xmm0, 8(%r8,%r10,2)
	movslq	8(%rcx,%r10), %r11
	movsd	(%rdx,%r11,8), %xmm0
	movsd	%xmm0, 16(%r8,%r10,2)
	movslq	12(%rcx,%r10), %r11
	movsd	(%rdx,%r11,8), %xmm0
	movsd	%xmm0, 24(%r8,%r10,2)
	movslq	16(%rcx,%r10), %r11
	movsd	(%rdx,%r11,8), %xmm0
	movsd	%xmm0, 32(%r8,%r10,2)
	movslq	20(%rcx,%r10), %r11
	movsd	(%rdx,%r11,8), %xmm0
	movsd	%xmm0, 40(%r8,%r10,2)
	movslq	24(%rcx,%r10), %r11
	movsd	(%rdx,%r11,8), %xmm0
	movsd	%xmm0, 48(%r8,%r10,2)
	movslq	28(%rcx,%r10), %r11
	movsd	(%rdx,%r11,8), %xmm0
	movsd	%xmm0, 56(%r8,%r10,2)
	addq	$32, %r10
	cmpq	%r10, %r9
	jne	.LBB3_3
.LBB3_4:
	movl	%eax, %r9d
	andl	$-8, %r9d
	cmpq	%rax, %r9
	je	.LBB3_6
	.p2align	4, 0x90
.LBB3_5:
	movslq	(%rcx,%r9,4), %r10
	movsd	(%rdx,%r10,8), %xmm0
	movsd	%xmm0, (%r8,%r9,8)
	incq	%r9
	cmpq	%r9, %rax
	jne	.LBB3_5
.LBB3_6:
	retq

	.def	main;
	.scl	2;
	.type	32;
	.endef
	.globl	__real@3f340028005000a0
	.section	.rdata,"dr",discard,__real@3f340028005000a0
	.p2align	3, 0x0
__real@3f340028005000a0:
	.quad	0x3f340028005000a0
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
	.globl	__real@3dfca213d840baf8
	.section	.rdata,"dr",discard,__real@3dfca213d840baf8
	.p2align	3, 0x0
__real@3dfca213d840baf8:
	.quad	0x3dfca213d840baf8
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
	movaps	%xmm8, 144(%rsp)
	.seh_savexmm %xmm8, 144
	movaps	%xmm7, 128(%rsp)
	.seh_savexmm %xmm7, 128
	movapd	%xmm6, 112(%rsp)
	.seh_savexmm %xmm6, 112
	.seh_endprologue
	stmxcsr	56(%rsp)
	orl	$32832, 56(%rsp)
	ldmxcsr	56(%rsp)
	cmpl	$1, %ecx
	jle	.LBB4_67
	movq	8(%rdx), %rdx
	leaq	"??_C@_01KDCPPGHE@r?$AA@"(%rip), %r8
	leaq	56(%rsp), %rcx
	callq	fopen_s
	testl	%eax, %eax
	je	.LBB4_68
	movq	56(%rsp), %rcx
	leaq	44(%rsp), %rdx
	callq	mm_read_banner
	testl	%eax, %eax
	jne	.LBB4_69
	cmpb	$67, 46(%rsp)
	jne	.LBB4_6
	cmpb	$77, 44(%rsp)
	jne	.LBB4_6
	cmpb	$67, 45(%rsp)
	je	.LBB4_70
.LBB4_6:
	movq	56(%rsp), %rcx
	leaq	52(%rsp), %rdx
	leaq	48(%rsp), %r8
	leaq	40(%rsp), %r9
	callq	mm_read_mtx_crd_size
	testl	%eax, %eax
	jne	.LBB4_68
	movslq	40(%rsp), %rbp
	leaq	(,%rbp,4), %rsi
	movq	%rsi, %rcx
	callq	malloc
	movq	%rax, %r12
	movq	%rsi, %rcx
	callq	malloc
	movq	%rax, %rbx
	leaq	(,%rbp,8), %rsi
	movq	%rsi, %rcx
	callq	malloc
	movq	%rax, %rdi
	movq	%rsi, %rcx
	callq	malloc
	movq	%rax, %r14
	testq	%rbp, %rbp
	movq	%r12, 104(%rsp)
	movq	%rbx, 80(%rsp)
	jle	.LBB4_11
	xorl	%r13d, %r13d
	leaq	"??_C@_0L@DPCLJHDN@?$CFd?5?$CFd?5?$CFlg?6?$AA@"(%rip), %rsi
	movq	%rbx, %r15
	movq	%rdi, %rbx
	.p2align	4, 0x90
.LBB4_9:
	movq	56(%rsp), %rcx
	movq	%rbx, 32(%rsp)
	movq	%rsi, %rdx
	movq	%r12, %r8
	movq	%r15, %r9
	callq	fscanf_s
	decl	(%r12)
	decl	(%r15)
	incq	%r13
	movslq	40(%rsp), %rbp
	addq	$4, %r12
	addq	$4, %r15
	addq	$8, %rbx
	cmpq	%rbp, %r13
	jl	.LBB4_9
	movq	80(%rsp), %rbx
.LBB4_11:
	movslq	52(%rsp), %r13
	movslq	48(%rsp), %rsi
	leaq	4(,%rsi,4), %rcx
	callq	malloc
	movq	%rax, %r15
	movl	$0, (%rax)
	movl	%ebp, %r10d
	testl	%ebp, %ebp
	jle	.LBB4_32
	xorl	%edx, %edx
	cmpl	$8, %ebp
	jae	.LBB4_13
.LBB4_31:
	movl	%r10d, %eax
	andl	$-8, %eax
	cmpq	%r10, %rax
	jne	.LBB4_56
.LBB4_32:
	movq	%r10, 64(%rsp)
	movl	%ebp, (%r15,%rsi,4)
	movq	%rsi, %rcx
	shlq	$3, %rcx
	callq	malloc
	movq	%rax, %r12
	movq	%r13, 96(%rsp)
	leaq	(,%r13,8), %rcx
	callq	malloc
	movq	%rax, %r13
	movl	%ebp, %eax
	testl	%esi, %esi
	jle	.LBB4_36
	xorl	%ebx, %ebx
	movsd	__real@3f340028005000a0(%rip), %xmm6
	.p2align	4, 0x90
.LBB4_34:
	callq	rand
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	mulsd	%xmm6, %xmm0
	movsd	%xmm0, (%r12,%rbx,8)
	incq	%rbx
	movslq	48(%rsp), %rax
	cmpq	%rax, %rbx
	jl	.LBB4_34
	movl	40(%rsp), %eax
	movq	80(%rsp), %rbx
.LBB4_36:
	testl	%eax, %eax
	jle	.LBB4_38
	movl	%eax, %r8d
	shlq	$3, %r8
	movq	%r14, %rcx
	xorl	%edx, %edx
	callq	_intel_fast_memset
.LBB4_38:
	movl	52(%rsp), %r8d
	testl	%r8d, %r8d
	jle	.LBB4_40
	shlq	$3, %r8
	movq	%r13, %rcx
	xorl	%edx, %edx
	callq	_intel_fast_memset
.LBB4_40:
	#APP
	rdtsc
	#NO_APP
	movq	%rdx, 88(%rsp)
	movl	%eax, 76(%rsp)
	#APP
	rdtsc
	#NO_APP
	movl	%edx, %ecx
	shlq	$32, %rcx
	movl	%eax, %r8d
	testl	%ebp, %ebp
	movq	64(%rsp), %r10
	jle	.LBB4_45
	cmpl	$8, %ebp
	jb	.LBB4_44
	leaq	(,%r10,4), %rax
	andq	$-32, %rax
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB4_43:
	movslq	(%rbx,%rdx), %r9
	movsd	(%r12,%r9,8), %xmm0
	movsd	%xmm0, (%r14,%rdx,2)
	movslq	4(%rbx,%rdx), %r9
	movsd	(%r12,%r9,8), %xmm0
	movsd	%xmm0, 8(%r14,%rdx,2)
	movslq	8(%rbx,%rdx), %r9
	movsd	(%r12,%r9,8), %xmm0
	movsd	%xmm0, 16(%r14,%rdx,2)
	movslq	12(%rbx,%rdx), %r9
	movsd	(%r12,%r9,8), %xmm0
	movsd	%xmm0, 24(%r14,%rdx,2)
	movslq	16(%rbx,%rdx), %r9
	movsd	(%r12,%r9,8), %xmm0
	movsd	%xmm0, 32(%r14,%rdx,2)
	movslq	20(%rbx,%rdx), %r9
	movsd	(%r12,%r9,8), %xmm0
	movsd	%xmm0, 40(%r14,%rdx,2)
	movslq	24(%rbx,%rdx), %r9
	movsd	(%r12,%r9,8), %xmm0
	movsd	%xmm0, 48(%r14,%rdx,2)
	movslq	28(%rbx,%rdx), %r9
	movsd	(%r12,%r9,8), %xmm0
	movsd	%xmm0, 56(%r14,%rdx,2)
	addq	$32, %rdx
	cmpq	%rdx, %rax
	jne	.LBB4_43
.LBB4_44:
	movl	%r10d, %eax
	andl	$7, %eax
	decq	%rax
	cmpq	$6, %rax
	ja	.LBB4_45
	andl	$-8, %r10d
	leaq	.LJTI4_0(%rip), %rdx
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmpq	*%rax
.LBB4_60:
	movslq	24(%rbx,%r10,4), %rax
	movsd	(%r12,%rax,8), %xmm0
	movsd	%xmm0, 48(%r14,%r10,8)
.LBB4_61:
	movslq	20(%rbx,%r10,4), %rax
	movsd	(%r12,%rax,8), %xmm0
	movsd	%xmm0, 40(%r14,%r10,8)
.LBB4_62:
	movslq	16(%rbx,%r10,4), %rax
	movsd	(%r12,%rax,8), %xmm0
	movsd	%xmm0, 32(%r14,%r10,8)
.LBB4_63:
	movslq	12(%rbx,%r10,4), %rax
	movsd	(%r12,%rax,8), %xmm0
	movsd	%xmm0, 24(%r14,%r10,8)
.LBB4_64:
	movslq	8(%rbx,%r10,4), %rax
	movsd	(%r12,%rax,8), %xmm0
	movsd	%xmm0, 16(%r14,%r10,8)
.LBB4_65:
	movslq	4(%rbx,%r10,4), %rax
	movsd	(%r12,%rax,8), %xmm0
	movsd	%xmm0, 8(%r14,%r10,8)
.LBB4_66:
	movslq	(%rbx,%r10,4), %rax
	movsd	(%r12,%rax,8), %xmm0
	movsd	%xmm0, (%r14,%r10,8)
.LBB4_45:
	#APP
	rdtsc
	#NO_APP
	shlq	$32, %rdx
	movl	%eax, %eax
	orq	%r8, %rcx
	subq	%rcx, %rax
	addq	%rdx, %rax
	movq	%rax, %xmm0
	punpckldq	__xmm@00000000000000004530000043300000(%rip), %xmm0
	subpd	__xmm@45300000000000004330000000000000(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	mulsd	__real@3dfca213d840baf8(%rip), %xmm1
	leaq	"??_C@_0DF@GOFACPEA@Time?5elapsed?5to?5form?5the?5new?5vec@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	#APP
	rdtsc
	#NO_APP
	movq	%rdx, 64(%rsp)
	movq	96(%rsp), %rcx
	testl	%ecx, %ecx
	jle	.LBB4_55
	movl	%ecx, %edx
	decq	%rdx
	movl	(%r15), %r8d
	xorl	%r9d, %r9d
	jmp	.LBB4_47
	.p2align	4, 0x90
.LBB4_54:
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	addsd	(%r13,%r9,8), %xmm1
	movsd	%xmm1, (%r13,%r9,8)
	leaq	1(%r9), %rcx
	cmpq	%rdx, %r9
	movq	%rcx, %r9
	je	.LBB4_55
.LBB4_47:
	movl	%r8d, %ecx
	movl	4(%r15,%r9,4), %r8d
	xorpd	%xmm0, %xmm0
	cmpl	%r8d, %ecx
	jge	.LBB4_54
	movslq	%r8d, %r10
	movslq	%ecx, %r11
	movq	%r10, %rsi
	subq	%r11, %rsi
	cmpq	$8, %rsi
	jb	.LBB4_51
	movq	%rsi, %rbp
	shrq	$3, %rbp
	leaq	56(,%r11,8), %rcx
	.p2align	4, 0x90
.LBB4_50:
	movsd	-56(%r14,%rcx), %xmm1
	movsd	-48(%r14,%rcx), %xmm2
	mulsd	-56(%rdi,%rcx), %xmm1
	unpcklpd	%xmm1, %xmm1
	addpd	%xmm0, %xmm1
	mulsd	-48(%rdi,%rcx), %xmm2
	unpcklpd	%xmm2, %xmm2
	addpd	%xmm1, %xmm2
	movsd	-40(%r14,%rcx), %xmm0
	mulsd	-40(%rdi,%rcx), %xmm0
	unpcklpd	%xmm0, %xmm0
	addpd	%xmm2, %xmm0
	movsd	-32(%r14,%rcx), %xmm1
	mulsd	-32(%rdi,%rcx), %xmm1
	unpcklpd	%xmm1, %xmm1
	movsd	-24(%r14,%rcx), %xmm2
	mulsd	-24(%rdi,%rcx), %xmm2
	addpd	%xmm0, %xmm1
	unpcklpd	%xmm2, %xmm2
	addpd	%xmm1, %xmm2
	movsd	-16(%r14,%rcx), %xmm0
	mulsd	-16(%rdi,%rcx), %xmm0
	unpcklpd	%xmm0, %xmm0
	addpd	%xmm2, %xmm0
	movsd	-8(%r14,%rcx), %xmm1
	mulsd	-8(%rdi,%rcx), %xmm1
	unpcklpd	%xmm1, %xmm1
	addpd	%xmm0, %xmm1
	movsd	(%r14,%rcx), %xmm0
	mulsd	(%rdi,%rcx), %xmm0
	unpcklpd	%xmm0, %xmm0
	addpd	%xmm1, %xmm0
	addq	$64, %rcx
	decq	%rbp
	jne	.LBB4_50
.LBB4_51:
	movq	%rsi, %rcx
	andq	$-8, %rcx
	cmpq	%rsi, %rcx
	je	.LBB4_54
	addq	%r11, %rcx
	.p2align	4, 0x90
.LBB4_53:
	movsd	(%r14,%rcx,8), %xmm1
	mulsd	(%rdi,%rcx,8), %xmm1
	unpcklpd	%xmm1, %xmm1
	addpd	%xmm1, %xmm0
	incq	%rcx
	cmpq	%rcx, %r10
	jne	.LBB4_53
	jmp	.LBB4_54
	.p2align	4, 0x90
.LBB4_58:
	incq	%rax
	cmpq	%rax, %r10
	je	.LBB4_32
.LBB4_56:
	movl	(%rbx,%rax,4), %ecx
	cmpl	%edx, %ecx
	je	.LBB4_58
	movslq	%ecx, %rdx
	movl	%eax, (%r15,%rdx,4)
	movl	%ecx, %edx
	jmp	.LBB4_58
.LBB4_55:
	movq	64(%rsp), %r8
	shlq	$32, %r8
	movl	%eax, %ecx
	movq	88(%rsp), %rbp
	shlq	$32, %rbp
	movl	76(%rsp), %esi
	#APP
	rdtsc
	#NO_APP
	shlq	$32, %rdx
	movl	%eax, %eax
	orq	%r8, %rcx
	subq	%rcx, %rax
	addq	%rdx, %rax
	movq	%rax, %xmm0
	movdqa	__xmm@00000000000000004530000043300000(%rip), %xmm6
	punpckldq	%xmm6, %xmm0
	movapd	__xmm@45300000000000004330000000000000(%rip), %xmm7
	subpd	%xmm7, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	movsd	__real@3dfca213d840baf8(%rip), %xmm8
	mulsd	%xmm8, %xmm1
	leaq	"??_C@_0DK@NHMCGP@Time?5elapsed?5for?5multiplying?5and@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	#APP
	rdtsc
	#NO_APP
	shlq	$32, %rdx
	movl	%eax, %eax
	orq	%rbp, %rsi
	subq	%rsi, %rax
	addq	%rdx, %rax
	movq	%rax, %xmm0
	punpckldq	%xmm6, %xmm0
	subpd	%xmm7, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	mulsd	%xmm8, %xmm1
	leaq	"??_C@_0CA@ECDFEOFC@Time?5elapsed?5TOTAL?3?5?$CFf?5seconds?6?$AA@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	40(%rsp), %r9d
	movl	48(%rsp), %r8d
	movl	52(%rsp), %edx
	leaq	"??_C@_0CC@ENPJFCDH@rows?$DN?$CFd?5columns?$DN?5?$CFd?5non?9zero?$DN?$CFd?5@"(%rip), %rcx
	callq	printf
	movq	104(%rsp), %rcx
	callq	free
	movq	%rbx, %rcx
	callq	free
	movq	%rdi, %rcx
	callq	free
	movq	%r14, %rcx
	callq	free
	movq	%r13, %rcx
	callq	free
	movq	%r12, %rcx
	callq	free
	movq	%r15, %rcx
	callq	free
	xorl	%eax, %eax
	movaps	112(%rsp), %xmm6
	movaps	128(%rsp), %xmm7
	movaps	144(%rsp), %xmm8
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
.LBB4_13:
	movl	%r10d, %eax
	andl	$-8, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB4_14
	.p2align	4, 0x90
.LBB4_30:
	addq	$8, %rcx
	cmpq	%rcx, %rax
	je	.LBB4_31
.LBB4_14:
	movl	(%rbx,%rcx,4), %r8d
	cmpl	%edx, %r8d
	je	.LBB4_16
	movslq	%r8d, %rdx
	movl	%ecx, (%r15,%rdx,4)
	movl	%r8d, %edx
.LBB4_16:
	movl	4(%rbx,%rcx,4), %r8d
	cmpl	%edx, %r8d
	je	.LBB4_18
	movslq	%r8d, %rdx
	leal	1(%rcx), %r9d
	movl	%r9d, (%r15,%rdx,4)
	movl	%r8d, %edx
.LBB4_18:
	movl	8(%rbx,%rcx,4), %r8d
	cmpl	%edx, %r8d
	je	.LBB4_20
	movslq	%r8d, %rdx
	leal	2(%rcx), %r9d
	movl	%r9d, (%r15,%rdx,4)
	movl	%r8d, %edx
.LBB4_20:
	movl	12(%rbx,%rcx,4), %r8d
	cmpl	%edx, %r8d
	je	.LBB4_22
	movslq	%r8d, %rdx
	leal	3(%rcx), %r9d
	movl	%r9d, (%r15,%rdx,4)
	movl	%r8d, %edx
.LBB4_22:
	movl	16(%rbx,%rcx,4), %r8d
	cmpl	%edx, %r8d
	je	.LBB4_24
	movslq	%r8d, %rdx
	leal	4(%rcx), %r9d
	movl	%r9d, (%r15,%rdx,4)
	movl	%r8d, %edx
.LBB4_24:
	movl	20(%rbx,%rcx,4), %r8d
	cmpl	%edx, %r8d
	je	.LBB4_26
	movslq	%r8d, %rdx
	leal	5(%rcx), %r9d
	movl	%r9d, (%r15,%rdx,4)
	movl	%r8d, %edx
.LBB4_26:
	movl	24(%rbx,%rcx,4), %r8d
	cmpl	%edx, %r8d
	je	.LBB4_28
	movslq	%r8d, %rdx
	leal	6(%rcx), %r9d
	movl	%r9d, (%r15,%rdx,4)
	movl	%r8d, %edx
.LBB4_28:
	movl	28(%rbx,%rcx,4), %r8d
	cmpl	%edx, %r8d
	je	.LBB4_30
	movslq	%r8d, %rdx
	leal	7(%rcx), %r9d
	movl	%r9d, (%r15,%rdx,4)
	movl	%r8d, %edx
	jmp	.LBB4_30
.LBB4_67:
	movq	(%rdx), %rsi
	movl	$2, %ecx
	callq	__acrt_iob_func
	leaq	"??_C@_0CE@BIKOBMBB@Usage?3?5?$CFs?5?$FLmatrix?9market?9filenam@"(%rip), %rdx
	movq	%rax, %rcx
	movq	%rsi, %r8
	callq	fprintf
.LBB4_68:
	movl	$1, %ecx
	callq	exit
.LBB4_69:
	leaq	.Lstr(%rip), %rcx
	callq	puts
	movl	$1, %ecx
	callq	exit
.LBB4_70:
	leaq	"??_C@_0CK@GGOBCCKJ@Sorry?0?5this?5application?5does?5not@"(%rip), %rcx
	callq	printf
	leaq	44(%rsp), %rcx
	callq	mm_typecode_to_str
	leaq	"??_C@_0BK@FLDFLNI@Market?5Market?5type?3?5?$FL?$CFs?$FN?6?$AA@"(%rip), %rcx
	movq	%rax, %rdx
	callq	printf
	movl	$1, %ecx
	callq	exit
	int3
	.section	.rdata,"dr",associative,main
	.p2align	2, 0x0
.LJTI4_0:
	.long	.LBB4_66-.LJTI4_0
	.long	.LBB4_65-.LJTI4_0
	.long	.LBB4_64-.LJTI4_0
	.long	.LBB4_63-.LJTI4_0
	.long	.LBB4_62-.LJTI4_0
	.long	.LBB4_61-.LJTI4_0
	.long	.LBB4_60-.LJTI4_0
	.section	.text,"xr",one_only,main
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

	.def	fscanf_s;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,fscanf_s
	.globl	fscanf_s
	.p2align	4, 0x90
fscanf_s:
.seh_proc fscanf_s
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
	orq	$1, %rcx
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

	.section	.rdata,"dr",discard,"??_C@_0DF@GOFACPEA@Time?5elapsed?5to?5form?5the?5new?5vec@"
	.globl	"??_C@_0DF@GOFACPEA@Time?5elapsed?5to?5form?5the?5new?5vec@"
"??_C@_0DF@GOFACPEA@Time?5elapsed?5to?5form?5the?5new?5vec@":
	.asciz	"Time elapsed to form the new vector is : %f seconds\n"

	.section	.rdata,"dr",discard,"??_C@_0DK@NHMCGP@Time?5elapsed?5for?5multiplying?5and@"
	.globl	"??_C@_0DK@NHMCGP@Time?5elapsed?5for?5multiplying?5and@"
"??_C@_0DK@NHMCGP@Time?5elapsed?5for?5multiplying?5and@":
	.asciz	"Time elapsed for multiplying and adding both: %f seconds\n"

	.section	.rdata,"dr",discard,"??_C@_0CA@ECDFEOFC@Time?5elapsed?5TOTAL?3?5?$CFf?5seconds?6?$AA@"
	.globl	"??_C@_0CA@ECDFEOFC@Time?5elapsed?5TOTAL?3?5?$CFf?5seconds?6?$AA@"
"??_C@_0CA@ECDFEOFC@Time?5elapsed?5TOTAL?3?5?$CFf?5seconds?6?$AA@":
	.asciz	"Time elapsed TOTAL: %f seconds\n"

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
