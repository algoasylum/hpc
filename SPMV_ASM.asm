	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"spmv.c"
	.def	get_cpu_frequency;
	.scl	2;
	.type	32;
	.endef
	.globl	__real@4f0f0d18
	.section	.rdata,"dr",discard,__real@4f0f0d18
	.p2align	2, 0x0
__real@4f0f0d18:
	.long	0x4f0f0d18
	.section	.text,"xr",one_only,get_cpu_frequency
	.globl	get_cpu_frequency
	.p2align	4, 0x90
get_cpu_frequency:
	movss	__real@4f0f0d18(%rip), %xmm0
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

	.def	converDoubleToFloat;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,converDoubleToFloat
	.globl	converDoubleToFloat
	.p2align	4, 0x90
converDoubleToFloat:
	testl	%r8d, %r8d
	jle	.LBB2_13
	movl	%r8d, %eax
	cmpl	$8, %r8d
	jb	.LBB2_4
	leaq	(,%rax,4), %r8
	andq	$-32, %r8
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB2_3:
	movupd	(%rcx,%r9,2), %xmm0
	movupd	16(%rcx,%r9,2), %xmm1
	cvtpd2ps	%xmm1, %xmm1
	cvtpd2ps	%xmm0, %xmm0
	unpcklpd	%xmm1, %xmm0
	movupd	%xmm0, (%rdx,%r9)
	movupd	32(%rcx,%r9,2), %xmm0
	movupd	48(%rcx,%r9,2), %xmm1
	cvtpd2ps	%xmm1, %xmm1
	cvtpd2ps	%xmm0, %xmm0
	unpcklpd	%xmm1, %xmm0
	movupd	%xmm0, 16(%rdx,%r9)
	addq	$32, %r9
	cmpq	%r9, %r8
	jne	.LBB2_3
.LBB2_4:
	movl	%eax, %r8d
	andl	$7, %r8d
	decq	%r8
	cmpq	$6, %r8
	ja	.LBB2_13
	andl	$-8, %eax
	leaq	.LJTI2_0(%rip), %r9
	movslq	(%r9,%r8,4), %r8
	addq	%r9, %r8
	jmpq	*%r8
.LBB2_6:
	movsd	48(%rcx,%rax,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 24(%rdx,%rax,4)
.LBB2_7:
	movsd	40(%rcx,%rax,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 20(%rdx,%rax,4)
.LBB2_8:
	movsd	32(%rcx,%rax,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 16(%rdx,%rax,4)
.LBB2_9:
	movsd	24(%rcx,%rax,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 12(%rdx,%rax,4)
.LBB2_10:
	movsd	16(%rcx,%rax,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rdx,%rax,4)
.LBB2_11:
	movsd	8(%rcx,%rax,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%rdx,%rax,4)
.LBB2_12:
	movsd	(%rcx,%rax,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rdx,%rax,4)
.LBB2_13:
	retq
	.section	.rdata,"dr",associative,converDoubleToFloat
	.p2align	2, 0x0
.LJTI2_0:
	.long	.LBB2_12-.LJTI2_0
	.long	.LBB2_11-.LJTI2_0
	.long	.LBB2_10-.LJTI2_0
	.long	.LBB2_9-.LJTI2_0
	.long	.LBB2_8-.LJTI2_0
	.long	.LBB2_7-.LJTI2_0
	.long	.LBB2_6-.LJTI2_0

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
	jle	.LBB3_10
	movq	32(%rcx), %r9
	decq	%rax
	movl	(%r9), %r10d
	xorl	%r11d, %r11d
	jmp	.LBB3_2
	.p2align	4, 0x90
.LBB3_9:
	leaq	1(%r11), %rsi
	cmpq	%rax, %r11
	movq	%rsi, %r11
	je	.LBB3_10
.LBB3_2:
	movl	%r10d, %ebp
	movl	4(%r9,%r11,4), %r10d
	cmpl	%r10d, %ebp
	jge	.LBB3_9
	movslq	%r10d, %rsi
	movq	16(%rcx), %rdi
	movq	24(%rcx), %rbx
	movslq	%ebp, %r14
	movq	%rsi, %r15
	subq	%r14, %r15
	cmpq	$4, %r15
	jb	.LBB3_6
	movq	%r15, %r12
	shrq	$2, %r12
	leaq	12(,%r14,4), %r13
	.p2align	4, 0x90
.LBB3_5:
	movss	(%rdx,%r11,4), %xmm0
	mulss	-12(%rdi,%r13), %xmm0
	movslq	-12(%rbx,%r13), %rbp
	addss	(%r8,%rbp,4), %xmm0
	movss	%xmm0, (%r8,%rbp,4)
	movss	(%rdx,%r11,4), %xmm0
	mulss	-8(%rdi,%r13), %xmm0
	movslq	-8(%rbx,%r13), %rbp
	addss	(%r8,%rbp,4), %xmm0
	movss	%xmm0, (%r8,%rbp,4)
	movss	(%rdx,%r11,4), %xmm0
	mulss	-4(%rdi,%r13), %xmm0
	movslq	-4(%rbx,%r13), %rbp
	addss	(%r8,%rbp,4), %xmm0
	movss	%xmm0, (%r8,%rbp,4)
	movss	(%rdx,%r11,4), %xmm0
	mulss	(%rdi,%r13), %xmm0
	movslq	(%rbx,%r13), %rbp
	addss	(%r8,%rbp,4), %xmm0
	movss	%xmm0, (%r8,%rbp,4)
	addq	$16, %r13
	decq	%r12
	jne	.LBB3_5
.LBB3_6:
	movq	%r15, %r12
	andq	$-4, %r12
	cmpq	%r15, %r12
	je	.LBB3_9
	addq	%r14, %r12
	.p2align	4, 0x90
.LBB3_8:
	movss	(%rdx,%r11,4), %xmm0
	mulss	(%rdi,%r12,4), %xmm0
	movslq	(%rbx,%r12,4), %r14
	addss	(%r8,%r14,4), %xmm0
	movss	%xmm0, (%r8,%r14,4)
	incq	%r12
	cmpq	%r12, %rsi
	jne	.LBB3_8
	jmp	.LBB3_9
.LBB3_10:
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
	.globl	__real@2fe5109f
	.section	.rdata,"dr",discard,__real@2fe5109f
	.p2align	2, 0x0
__real@2fe5109f:
	.long	0x2fe5109f
	.globl	__xmm@4220000041f0000041a0000041200000
	.section	.rdata,"dr",discard,__xmm@4220000041f0000041a0000041200000
	.p2align	4, 0x0
__xmm@4220000041f0000041a0000041200000:
	.long	0x41200000
	.long	0x41a00000
	.long	0x41f00000
	.long	0x42200000
	.globl	__xmm@00000000000000004270000042480000
	.section	.rdata,"dr",discard,__xmm@00000000000000004270000042480000
	.p2align	4, 0x0
__xmm@00000000000000004270000042480000:
	.long	0x42480000
	.long	0x42700000
	.zero	4
	.zero	4
	.globl	__real@428c0000
	.section	.rdata,"dr",discard,__real@428c0000
	.p2align	2, 0x0
__real@428c0000:
	.long	0x428c0000
	.globl	__real@42a00000
	.section	.rdata,"dr",discard,__real@42a00000
	.p2align	2, 0x0
__real@42a00000:
	.long	0x42a00000
	.globl	__real@41200000
	.section	.rdata,"dr",discard,__real@41200000
	.p2align	2, 0x0
__real@41200000:
	.long	0x41200000
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
	subq	$104, %rsp
	.seh_stackalloc 104
	movaps	%xmm6, 80(%rsp)
	.seh_savexmm %xmm6, 80
	.seh_endprologue
	stmxcsr	56(%rsp)
	orl	$32832, 56(%rsp)
	ldmxcsr	56(%rsp)
	cmpl	$1, %ecx
	jle	.LBB4_71
	movq	8(%rdx), %rdx
	leaq	"??_C@_01KDCPPGHE@r?$AA@"(%rip), %r8
	leaq	56(%rsp), %rcx
	callq	fopen_s
	testl	%eax, %eax
	je	.LBB4_72
	movq	56(%rsp), %rcx
	leaq	52(%rsp), %rdx
	callq	mm_read_banner
	testl	%eax, %eax
	jne	.LBB4_73
	cmpb	$67, 54(%rsp)
	jne	.LBB4_6
	cmpb	$77, 52(%rsp)
	jne	.LBB4_6
	cmpb	$67, 53(%rsp)
	je	.LBB4_74
.LBB4_6:
	movq	56(%rsp), %rcx
	leaq	68(%rsp), %rdx
	leaq	64(%rsp), %r8
	leaq	48(%rsp), %r9
	callq	mm_read_mtx_crd_size
	testl	%eax, %eax
	jne	.LBB4_72
	movslq	48(%rsp), %rbx
	leaq	(,%rbx,4), %rdi
	movq	%rdi, %rcx
	callq	malloc
	movq	%rax, %rsi
	movq	%rdi, %rcx
	callq	malloc
	movq	%rax, %r14
	leaq	(,%rbx,8), %rcx
	callq	malloc
	movq	%rax, %r15
	movq	%rdi, %rcx
	callq	malloc
	movq	%rax, %rdi
	testq	%rbx, %rbx
	jle	.LBB4_10
	xorl	%ebp, %ebp
	movq	%r15, %rbx
	movq	%r14, %r12
	movq	%rsi, %r13
	.p2align	4, 0x90
.LBB4_9:
	movq	56(%rsp), %rcx
	movq	%rbx, 32(%rsp)
	leaq	"??_C@_0L@DPCLJHDN@?$CFd?5?$CFd?5?$CFlg?6?$AA@"(%rip), %rdx
	movq	%r13, %r8
	movq	%r12, %r9
	callq	fscanf_s
	decl	(%r13)
	decl	(%r12)
	incq	%rbp
	movslq	48(%rsp), %rax
	addq	$4, %r13
	addq	$4, %r12
	addq	$8, %rbx
	cmpq	%rax, %rbp
	jl	.LBB4_9
.LBB4_10:
	#APP
	rdtsc
	#NO_APP
	movl	%edx, %ecx
	shlq	$32, %rcx
	movl	%eax, %r8d
	movl	48(%rsp), %eax
	testl	%eax, %eax
	jle	.LBB4_15
	cmpl	$8, %eax
	jb	.LBB4_14
	leaq	(,%rax,4), %rdx
	andq	$-32, %rdx
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB4_13:
	movupd	(%r15,%r9,2), %xmm0
	movupd	16(%r15,%r9,2), %xmm1
	cvtpd2ps	%xmm1, %xmm1
	cvtpd2ps	%xmm0, %xmm0
	unpcklpd	%xmm1, %xmm0
	movupd	%xmm0, (%rdi,%r9)
	movupd	32(%r15,%r9,2), %xmm0
	movupd	48(%r15,%r9,2), %xmm1
	cvtpd2ps	%xmm1, %xmm1
	cvtpd2ps	%xmm0, %xmm0
	unpcklpd	%xmm1, %xmm0
	movupd	%xmm0, 16(%rdi,%r9)
	addq	$32, %r9
	cmpq	%r9, %rdx
	jne	.LBB4_13
.LBB4_14:
	movl	%eax, %edx
	andl	$7, %edx
	decq	%rdx
	cmpq	$6, %rdx
	ja	.LBB4_15
	andl	$-8, %eax
	leaq	.LJTI4_0(%rip), %r9
	movslq	(%r9,%rdx,4), %rdx
	addq	%r9, %rdx
	jmpq	*%rdx
.LBB4_55:
	movsd	48(%r15,%rax,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 24(%rdi,%rax,4)
.LBB4_56:
	movsd	40(%r15,%rax,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 20(%rdi,%rax,4)
.LBB4_57:
	movsd	32(%r15,%rax,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 16(%rdi,%rax,4)
.LBB4_58:
	movsd	24(%r15,%rax,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 12(%rdi,%rax,4)
.LBB4_59:
	movsd	16(%r15,%rax,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rdi,%rax,4)
.LBB4_60:
	movsd	8(%r15,%rax,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%rdi,%rax,4)
.LBB4_61:
	movsd	(%r15,%rax,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rdi,%rax,4)
.LBB4_15:
	#APP
	rdtsc
	#NO_APP
	shlq	$32, %rdx
	movl	%eax, %eax
	orq	%r8, %rcx
	subq	%rcx, %rax
	addq	%rdx, %rax
	movq	%rax, %rcx
	shrq	%rcx
	movl	%eax, %edx
	andl	$1, %edx
	orq	%rcx, %rdx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%rdx, %xmm0
	addss	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ss	%rax, %xmm1
	testq	%rax, %rax
	js	.LBB4_17
	movaps	%xmm1, %xmm0
.LBB4_17:
	mulss	__real@2fe5109f(%rip), %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	leaq	"??_C@_0DF@PKEHACDC@Time?5elapsed?5to?5convert?5double?5t@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movslq	64(%rsp), %rbp
	movl	%ebp, %r13d
	leaq	4(,%rbp,4), %rcx
	callq	malloc
	movq	%rax, %rbx
	movl	$0, (%rax)
	movl	48(%rsp), %eax
	testl	%eax, %eax
	jle	.LBB4_38
	xorl	%r8d, %r8d
	cmpl	$8, %eax
	jae	.LBB4_19
.LBB4_37:
	movl	%eax, %ecx
	andl	$-8, %ecx
	cmpq	%rax, %rcx
	jne	.LBB4_62
.LBB4_38:
	movl	%eax, (%rbx,%rbp,4)
	leaq	(,%rbp,4), %rcx
	callq	malloc
	movq	%rax, %r14
	movslq	68(%rsp), %rcx
	movl	%ecx, %r12d
	shlq	$2, %rcx
	callq	malloc
	movq	%rax, %r15
	testl	%r13d, %r13d
	jle	.LBB4_39
	cmpl	$8, %ebp
	jb	.LBB4_68
	movq	%rbp, %rax
	shrq	$3, %rax
	movaps	__xmm@4220000041f0000041a0000041200000(%rip), %xmm1
	movaps	__xmm@00000000000000004270000042480000(%rip), %xmm2
	movss	__real@428c0000(%rip), %xmm3
	movss	__real@42a00000(%rip), %xmm4
	movq	%r14, %rcx
	.p2align	4, 0x90
.LBB4_67:
	movss	%xmm0, (%rcx)
	movaps	%xmm0, %xmm5
	shufps	$0, %xmm0, %xmm5
	movaps	%xmm5, %xmm6
	addps	%xmm1, %xmm6
	movups	%xmm6, 4(%rcx)
	addps	%xmm2, %xmm5
	movlps	%xmm5, 20(%rcx)
	movaps	%xmm0, %xmm5
	addss	%xmm3, %xmm5
	movss	%xmm5, 28(%rcx)
	addss	%xmm4, %xmm0
	addq	$32, %rcx
	decq	%rax
	jne	.LBB4_67
.LBB4_68:
	movq	%rbp, %rax
	andq	$-8, %rax
	cmpq	%rbp, %rax
	je	.LBB4_39
	movss	__real@41200000(%rip), %xmm1
	.p2align	4, 0x90
.LBB4_70:
	movss	%xmm0, (%r14,%rax,4)
	addss	%xmm1, %xmm0
	incq	%rax
	cmpq	%rax, %rbp
	jne	.LBB4_70
.LBB4_39:
	testl	%r12d, %r12d
	jle	.LBB4_41
	shlq	$2, %r12
	movq	%r15, %rcx
	xorl	%edx, %edx
	movq	%r12, %r8
	callq	_intel_fast_memset
.LBB4_41:
	#APP
	rdtsc
	#NO_APP
	movq	%rdx, 72(%rsp)
	testl	%r13d, %r13d
	jle	.LBB4_51
	decq	%r13
	movl	(%rbx), %edx
	xorl	%r8d, %r8d
	jmp	.LBB4_43
	.p2align	4, 0x90
.LBB4_50:
	leaq	1(%r8), %rcx
	cmpq	%r13, %r8
	movq	%rcx, %r8
	je	.LBB4_51
.LBB4_43:
	movl	%edx, %r10d
	movl	4(%rbx,%r8,4), %edx
	cmpl	%edx, %r10d
	jge	.LBB4_50
	movslq	%edx, %r9
	movss	(%r14,%r8,4), %xmm0
	movslq	%r10d, %r10
	movq	%r9, %r11
	subq	%r10, %r11
	cmpq	$4, %r11
	jb	.LBB4_47
	movq	%r11, %r12
	shrq	$2, %r12
	leaq	12(,%r10,4), %rbp
	.p2align	4, 0x90
.LBB4_46:
	movss	-12(%rdi,%rbp), %xmm1
	movslq	-12(%rsi,%rbp), %rcx
	mulss	%xmm0, %xmm1
	addss	(%r15,%rcx,4), %xmm1
	movss	-8(%rdi,%rbp), %xmm2
	movss	%xmm1, (%r15,%rcx,4)
	mulss	%xmm0, %xmm2
	movslq	-8(%rsi,%rbp), %rcx
	addss	(%r15,%rcx,4), %xmm2
	movss	%xmm2, (%r15,%rcx,4)
	movss	-4(%rdi,%rbp), %xmm1
	movslq	-4(%rsi,%rbp), %rcx
	mulss	%xmm0, %xmm1
	addss	(%r15,%rcx,4), %xmm1
	movss	(%rdi,%rbp), %xmm2
	movss	%xmm1, (%r15,%rcx,4)
	mulss	%xmm0, %xmm2
	movslq	(%rsi,%rbp), %rcx
	addss	(%r15,%rcx,4), %xmm2
	movss	%xmm2, (%r15,%rcx,4)
	addq	$16, %rbp
	decq	%r12
	jne	.LBB4_46
.LBB4_47:
	movq	%r11, %r12
	andq	$-4, %r12
	cmpq	%r11, %r12
	je	.LBB4_50
	addq	%r10, %r12
	.p2align	4, 0x90
.LBB4_49:
	movss	(%rdi,%r12,4), %xmm1
	mulss	%xmm0, %xmm1
	movslq	(%rsi,%r12,4), %rcx
	addss	(%r15,%rcx,4), %xmm1
	movss	%xmm1, (%r15,%rcx,4)
	incq	%r12
	cmpq	%r12, %r9
	jne	.LBB4_49
	jmp	.LBB4_50
	.p2align	4, 0x90
.LBB4_64:
	incq	%rcx
	cmpq	%rcx, %rax
	je	.LBB4_38
.LBB4_62:
	movl	(%r14,%rcx,4), %edx
	cmpl	%r8d, %edx
	je	.LBB4_64
	movslq	%edx, %r8
	movl	%ecx, (%rbx,%r8,4)
	movl	%edx, %r8d
	jmp	.LBB4_64
.LBB4_51:
	movq	72(%rsp), %rcx
	shlq	$32, %rcx
	movl	%eax, %r8d
	#APP
	rdtsc
	#NO_APP
	shlq	$32, %rdx
	movl	%eax, %eax
	orq	%rcx, %r8
	subq	%r8, %rax
	addq	%rdx, %rax
	movq	%rax, %rcx
	shrq	%rcx
	movl	%eax, %edx
	andl	$1, %edx
	orq	%rcx, %rdx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%rdx, %xmm0
	addss	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ss	%rax, %xmm1
	testq	%rax, %rax
	js	.LBB4_53
	movaps	%xmm1, %xmm0
.LBB4_53:
	mulss	__real@2fe5109f(%rip), %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	leaq	"??_C@_0EP@DDEOCFJO@avg?5time?5required?5to?5perform?5nor@"(%rip), %rcx
	movq	%xmm1, %rdx
	callq	printf
	movl	48(%rsp), %r9d
	movl	64(%rsp), %r8d
	movl	68(%rsp), %edx
	leaq	"??_C@_0CC@ENPJFCDH@rows?$DN?$CFd?5columns?$DN?5?$CFd?5non?9zero?$DN?$CFd?5@"(%rip), %rcx
	callq	printf
	xorl	%eax, %eax
	movaps	80(%rsp), %xmm6
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB4_19:
	movl	%eax, %ecx
	andl	$-8, %ecx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	jmp	.LBB4_20
	.p2align	4, 0x90
.LBB4_36:
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	je	.LBB4_37
.LBB4_20:
	movl	(%r14,%rdx,4), %r9d
	cmpl	%r8d, %r9d
	je	.LBB4_22
	movslq	%r9d, %r8
	movl	%edx, (%rbx,%r8,4)
	movl	%r9d, %r8d
.LBB4_22:
	movl	4(%r14,%rdx,4), %r9d
	cmpl	%r8d, %r9d
	je	.LBB4_24
	movslq	%r9d, %r8
	leal	1(%rdx), %r10d
	movl	%r10d, (%rbx,%r8,4)
	movl	%r9d, %r8d
.LBB4_24:
	movl	8(%r14,%rdx,4), %r9d
	cmpl	%r8d, %r9d
	je	.LBB4_26
	movslq	%r9d, %r8
	leal	2(%rdx), %r10d
	movl	%r10d, (%rbx,%r8,4)
	movl	%r9d, %r8d
.LBB4_26:
	movl	12(%r14,%rdx,4), %r9d
	cmpl	%r8d, %r9d
	je	.LBB4_28
	movslq	%r9d, %r8
	leal	3(%rdx), %r10d
	movl	%r10d, (%rbx,%r8,4)
	movl	%r9d, %r8d
.LBB4_28:
	movl	16(%r14,%rdx,4), %r9d
	cmpl	%r8d, %r9d
	je	.LBB4_30
	movslq	%r9d, %r8
	leal	4(%rdx), %r10d
	movl	%r10d, (%rbx,%r8,4)
	movl	%r9d, %r8d
.LBB4_30:
	movl	20(%r14,%rdx,4), %r9d
	cmpl	%r8d, %r9d
	je	.LBB4_32
	movslq	%r9d, %r8
	leal	5(%rdx), %r10d
	movl	%r10d, (%rbx,%r8,4)
	movl	%r9d, %r8d
.LBB4_32:
	movl	24(%r14,%rdx,4), %r9d
	cmpl	%r8d, %r9d
	je	.LBB4_34
	movslq	%r9d, %r8
	leal	6(%rdx), %r10d
	movl	%r10d, (%rbx,%r8,4)
	movl	%r9d, %r8d
.LBB4_34:
	movl	28(%r14,%rdx,4), %r9d
	cmpl	%r8d, %r9d
	je	.LBB4_36
	movslq	%r9d, %r8
	leal	7(%rdx), %r10d
	movl	%r10d, (%rbx,%r8,4)
	movl	%r9d, %r8d
	jmp	.LBB4_36
.LBB4_71:
	movq	(%rdx), %rsi
	movl	$2, %ecx
	callq	__acrt_iob_func
	leaq	"??_C@_0CE@BIKOBMBB@Usage?3?5?$CFs?5?$FLmatrix?9market?9filenam@"(%rip), %rdx
	movq	%rax, %rcx
	movq	%rsi, %r8
	callq	fprintf
.LBB4_72:
	movl	$1, %ecx
	callq	exit
.LBB4_73:
	leaq	.Lstr(%rip), %rcx
	callq	puts
	movl	$1, %ecx
	callq	exit
.LBB4_74:
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
	.section	.rdata,"dr",associative,main
	.p2align	2, 0x0
.LJTI4_0:
	.long	.LBB4_61-.LJTI4_0
	.long	.LBB4_60-.LJTI4_0
	.long	.LBB4_59-.LJTI4_0
	.long	.LBB4_58-.LJTI4_0
	.long	.LBB4_57-.LJTI4_0
	.long	.LBB4_56-.LJTI4_0
	.long	.LBB4_55-.LJTI4_0
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

	.section	.rdata,"dr",discard,"??_C@_0DF@PKEHACDC@Time?5elapsed?5to?5convert?5double?5t@"
	.globl	"??_C@_0DF@PKEHACDC@Time?5elapsed?5to?5convert?5double?5t@"
"??_C@_0DF@PKEHACDC@Time?5elapsed?5to?5convert?5double?5t@":
	.asciz	"Time elapsed to convert double to float: %f seconds\n"

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
