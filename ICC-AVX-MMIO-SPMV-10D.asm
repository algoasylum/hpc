	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"ICC-AVX-MMIO-SPMV-10D.c"
	.def	sprintf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,sprintf
	.globl	sprintf
	.p2align	4, 0x90
sprintf:
.seh_proc sprintf
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$64, %rsp
	.seh_stackalloc 64
	.seh_endprologue
	movq	%rdx, %rsi
	movq	%rcx, %rdi
	movq	%r8, 112(%rsp)
	movq	%r9, 120(%rsp)
	leaq	112(%rsp), %rbx
	movq	%rbx, 56(%rsp)
	callq	__local_stdio_printf_options
	movq	(%rax), %rcx
	orq	$1, %rcx
	movq	%rbx, 40(%rsp)
	movq	$0, 32(%rsp)
	movq	%rdi, %rdx
	movq	$-1, %r8
	movq	%rsi, %r9
	callq	__stdio_common_vsprintf
	testl	%eax, %eax
	movl	$-1, %ecx
	cmovsl	%ecx, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	mm_read_unsymmetric_sparse;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,mm_read_unsymmetric_sparse
	.globl	mm_read_unsymmetric_sparse
	.p2align	4, 0x90
mm_read_unsymmetric_sparse:
.seh_proc mm_read_unsymmetric_sparse
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
	subq	$1096, %rsp
	.seh_stackalloc 1096
	.seh_endprologue
	movq	%r9, %rbx
	movq	%r8, %r14
	movq	%rdx, %r15
	movq	%rcx, %r12
	leaq	"??_C@_01KDCPPGHE@r?$AA@"(%rip), %rdx
	callq	fopen
	movl	$-1, %edi
	testq	%rax, %rax
	je	.LBB1_19
	movq	%rax, %rsi
	leaq	52(%rsp), %rdx
	movq	%rax, %rcx
	callq	mm_read_banner
	testl	%eax, %eax
	je	.LBB1_3
	leaq	"??_C@_0DM@EJJCAIHJ@mm_read_unsymetric?3?5Could?5not?5pr@"(%rip), %rcx
	callq	printf
	leaq	"??_C@_0P@JOFNCLJA@?5in?5file?5?$FL?$CFs?$FN?6?$AA@"(%rip), %rcx
	movq	%r12, %rdx
	callq	printf
	jmp	.LBB1_19
.LBB1_3:
	cmpb	$82, 54(%rsp)
	jne	.LBB1_6
	cmpb	$77, 52(%rsp)
	jne	.LBB1_6
	cmpb	$67, 53(%rsp)
	jne	.LBB1_6
	movl	$0, 48(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 60(%rsp)
	leaq	64(%rsp), %r12
	.p2align	4, 0x90
.LBB1_8:
	movq	%r12, %rcx
	movl	$1025, %edx
	movq	%rsi, %r8
	callq	fgets
	testq	%rax, %rax
	je	.LBB1_14
	cmpb	$37, 64(%rsp)
	je	.LBB1_8
	leaq	48(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	"??_C@_08OOHKHLPO@?$CFd?5?$CFd?5?$CFd?$AA@"(%rip), %rdx
	leaq	64(%rsp), %rcx
	leaq	60(%rsp), %r8
	leaq	56(%rsp), %r9
	callq	sscanf
	cmpl	$3, %eax
	jne	.LBB1_11
.LBB1_15:
	movl	60(%rsp), %eax
	movl	%eax, (%r15)
	movl	56(%rsp), %eax
	movl	%eax, (%r14)
	movslq	48(%rsp), %r15
	movl	%r15d, (%rbx)
	leaq	(,%r15,4), %rbx
	movq	%rbx, %rcx
	callq	malloc
	movq	%rax, %rdi
	movq	%rbx, %rcx
	callq	malloc
	movq	%rax, %rbx
	leaq	(,%r15,8), %rcx
	callq	malloc
	movq	%rax, %r14
	movq	1200(%rsp), %rax
	movq	%r14, (%rax)
	movq	1208(%rsp), %rax
	movq	%rdi, (%rax)
	movq	1216(%rsp), %rax
	movq	%rbx, (%rax)
	testq	%r15, %r15
	jle	.LBB1_18
	xorl	%r12d, %r12d
	leaq	"??_C@_0L@DPCLJHDN@?$CFd?5?$CFd?5?$CFlg?6?$AA@"(%rip), %r15
	.p2align	4, 0x90
.LBB1_17:
	movq	%r14, 32(%rsp)
	movq	%rsi, %rcx
	movq	%r15, %rdx
	movq	%rdi, %r8
	movq	%rbx, %r9
	callq	fscanf
	decl	(%rdi)
	decl	(%rbx)
	incq	%r12
	movslq	48(%rsp), %rax
	addq	$4, %rdi
	addq	$4, %rbx
	addq	$8, %r14
	cmpq	%rax, %r12
	jl	.LBB1_17
.LBB1_18:
	movq	%rsi, %rcx
	callq	fclose
	xorl	%edi, %edi
	jmp	.LBB1_19
.LBB1_6:
	movl	$2, %ecx
	callq	__acrt_iob_func
	leaq	"??_C@_0CK@GGOBCCKJ@Sorry?0?5this?5application?5does?5not@"(%rip), %rcx
	movl	$41, %edx
	movl	$1, %r8d
	movq	%rax, %r9
	callq	fwrite
	leaq	52(%rsp), %rcx
	callq	mm_typecode_to_str
	movq	%rax, %rsi
	movl	$2, %ecx
	callq	__acrt_iob_func
	leaq	"??_C@_0BK@FLDFLNI@Market?5Market?5type?3?5?$FL?$CFs?$FN?6?$AA@"(%rip), %rdx
	movq	%rax, %rcx
	movq	%rsi, %r8
	callq	fprintf
.LBB1_19:
	movl	%edi, %eax
	addq	$1096, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB1_11:
	leaq	"??_C@_08OOHKHLPO@?$CFd?5?$CFd?5?$CFd?$AA@"(%rip), %r12
	leaq	60(%rsp), %r8
	leaq	56(%rsp), %r9
.LBB1_12:
	leaq	48(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	%rsi, %rcx
	movq	%r12, %rdx
	movq	%r8, %r13
	movq	%r9, %rbp
	callq	fscanf
	cmpl	$3, %eax
	je	.LBB1_15
	cmpl	$-1, %eax
	movq	%r13, %r8
	movq	%rbp, %r9
	jne	.LBB1_12
.LBB1_14:
	movl	$2, %ecx
	callq	__acrt_iob_func
	leaq	"??_C@_0DJ@HHBEIHFC@read_unsymmetric_sparse?$CI?$CJ?3?5could@"(%rip), %rcx
	movl	$56, %edx
	movl	$1, %r8d
	movq	%rax, %r9
	callq	fwrite
	jmp	.LBB1_19
	.seh_endproc

	.def	mm_read_banner;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,mm_read_banner
	.globl	mm_read_banner
	.p2align	4, 0x90
mm_read_banner:
.seh_proc mm_read_banner
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$1416, %rsp
	.seh_stackalloc 1416
	.seh_endprologue
	movq	%rdx, %rsi
	movq	%rcx, %r8
	movl	$1193287712, (%rdx)
	leaq	384(%rsp), %rcx
	movl	$1025, %edx
	callq	fgets
	testq	%rax, %rax
	je	.LBB2_1
	leaq	64(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	128(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	"??_C@_0P@EIKAFNDF@?$CFs?5?$CFs?5?$CFs?5?$CFs?5?$CFs?$AA@"(%rip), %rdx
	leaq	384(%rsp), %rcx
	leaq	320(%rsp), %r8
	leaq	256(%rsp), %r9
	callq	sscanf
	movl	%eax, %ecx
	movl	$12, %eax
	cmpl	$5, %ecx
	jne	.LBB2_35
	movzbl	256(%rsp), %eax
	testb	%al, %al
	je	.LBB2_6
	leaq	264(%rsp), %rdi
.LBB2_5:
	movsbl	%al, %ecx
	callq	tolower
	movb	%al, -8(%rdi)
	movsbl	-7(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_6
	callq	tolower
	movb	%al, -7(%rdi)
	movsbl	-6(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_6
	callq	tolower
	movb	%al, -6(%rdi)
	movsbl	-5(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_6
	callq	tolower
	movb	%al, -5(%rdi)
	movsbl	-4(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_6
	callq	tolower
	movb	%al, -4(%rdi)
	movsbl	-3(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_6
	callq	tolower
	movb	%al, -3(%rdi)
	movsbl	-2(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_6
	callq	tolower
	movb	%al, -2(%rdi)
	movsbl	-1(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_6
	callq	tolower
	movb	%al, -1(%rdi)
	movzbl	(%rdi), %eax
	addq	$8, %rdi
	testb	%al, %al
	jne	.LBB2_5
.LBB2_6:
	movzbl	128(%rsp), %eax
	testb	%al, %al
	je	.LBB2_9
	leaq	136(%rsp), %rdi
.LBB2_8:
	movsbl	%al, %ecx
	callq	tolower
	movb	%al, -8(%rdi)
	movsbl	-7(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_9
	callq	tolower
	movb	%al, -7(%rdi)
	movsbl	-6(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_9
	callq	tolower
	movb	%al, -6(%rdi)
	movsbl	-5(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_9
	callq	tolower
	movb	%al, -5(%rdi)
	movsbl	-4(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_9
	callq	tolower
	movb	%al, -4(%rdi)
	movsbl	-3(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_9
	callq	tolower
	movb	%al, -3(%rdi)
	movsbl	-2(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_9
	callq	tolower
	movb	%al, -2(%rdi)
	movsbl	-1(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_9
	callq	tolower
	movb	%al, -1(%rdi)
	movzbl	(%rdi), %eax
	addq	$8, %rdi
	testb	%al, %al
	jne	.LBB2_8
.LBB2_9:
	movzbl	192(%rsp), %eax
	testb	%al, %al
	je	.LBB2_12
	leaq	200(%rsp), %rdi
.LBB2_11:
	movsbl	%al, %ecx
	callq	tolower
	movb	%al, -8(%rdi)
	movsbl	-7(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_12
	callq	tolower
	movb	%al, -7(%rdi)
	movsbl	-6(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_12
	callq	tolower
	movb	%al, -6(%rdi)
	movsbl	-5(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_12
	callq	tolower
	movb	%al, -5(%rdi)
	movsbl	-4(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_12
	callq	tolower
	movb	%al, -4(%rdi)
	movsbl	-3(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_12
	callq	tolower
	movb	%al, -3(%rdi)
	movsbl	-2(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_12
	callq	tolower
	movb	%al, -2(%rdi)
	movsbl	-1(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_12
	callq	tolower
	movb	%al, -1(%rdi)
	movzbl	(%rdi), %eax
	addq	$8, %rdi
	testb	%al, %al
	jne	.LBB2_11
.LBB2_12:
	movzbl	64(%rsp), %eax
	testb	%al, %al
	je	.LBB2_15
	leaq	72(%rsp), %rdi
.LBB2_14:
	movsbl	%al, %ecx
	callq	tolower
	movb	%al, -8(%rdi)
	movsbl	-7(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_15
	callq	tolower
	movb	%al, -7(%rdi)
	movsbl	-6(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_15
	callq	tolower
	movb	%al, -6(%rdi)
	movsbl	-5(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_15
	callq	tolower
	movb	%al, -5(%rdi)
	movsbl	-4(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_15
	callq	tolower
	movb	%al, -4(%rdi)
	movsbl	-3(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_15
	callq	tolower
	movb	%al, -3(%rdi)
	movsbl	-2(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_15
	callq	tolower
	movb	%al, -2(%rdi)
	movsbl	-1(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_15
	callq	tolower
	movb	%al, -1(%rdi)
	movzbl	(%rdi), %eax
	addq	$8, %rdi
	testb	%al, %al
	jne	.LBB2_14
.LBB2_15:
	movabsq	$8676592001280189733, %rax
	xorq	320(%rsp), %rax
	movabsq	$8387228020050327657, %rcx
	xorq	326(%rsp), %rcx
	orq	%rax, %rcx
	movl	$14, %eax
	jne	.LBB2_35
	movl	$1920229741, %eax
	xorl	256(%rsp), %eax
	movl	$7891314, %ecx
	xorl	259(%rsp), %ecx
	orl	%eax, %ecx
	movl	$15, %eax
	jne	.LBB2_35
	movb	$77, (%rsi)
	movabsq	$7020664749254733667, %rdx
	xorq	128(%rsp), %rdx
	movabsq	$28556934460826738, %r8
	xorq	131(%rsp), %r8
	movl	$67, %ecx
	orq	%rdx, %r8
	je	.LBB2_19
	movl	$1634890337, %ecx
	xorl	128(%rsp), %ecx
	movzwl	132(%rsp), %edx
	xorl	$121, %edx
	orl	%ecx, %edx
	movl	$65, %ecx
	jne	.LBB2_35
.LBB2_19:
	movb	%cl, 1(%rsi)
	movl	$1818322290, %edx
	xorl	192(%rsp), %edx
	movzbl	196(%rsp), %r8d
	movl	$82, %ecx
	orl	%edx, %r8d
	je	.LBB2_26
	movq	192(%rsp), %rcx
	movabsq	$33888513622372195, %rdx
	cmpq	%rdx, %rcx
	je	.LBB2_25
	movabsq	$32199642103180905, %rdx
	cmpq	%rdx, %rcx
	je	.LBB2_24
	movabsq	$31088027509219696, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB2_35
	movl	$80, %ecx
	jmp	.LBB2_26
.LBB2_1:
	leaq	"??_C@_0BD@CBEDEKED@mmrb?3?5got?5line?5?$CFs?6?$AA@"(%rip), %rcx
	leaq	384(%rsp), %rdx
	callq	printf
	movl	$12, %eax
.LBB2_35:
	addq	$1416, %rsp
	popq	%rdi
	popq	%rsi
	retq
.LBB2_24:
	movl	$73, %ecx
	jmp	.LBB2_26
.LBB2_25:
	movl	$67, %ecx
.LBB2_26:
	movb	%cl, 2(%rsi)
	movabsq	$30506441440650599, %rcx
	cmpq	%rcx, 64(%rsp)
	jne	.LBB2_28
	movb	$71, 3(%rsi)
	jmp	.LBB2_34
.LBB2_28:
	movabsq	$7598263500303858035, %rcx
	xorq	64(%rsp), %rcx
	movzwl	72(%rsp), %edx
	xorq	$99, %rdx
	orq	%rcx, %rdx
	je	.LBB2_29
	movabsq	$7019269490390230376, %rcx
	xorq	64(%rsp), %rcx
	movzwl	72(%rsp), %edx
	xorq	$110, %rdx
	orq	%rcx, %rdx
	je	.LBB2_31
	movabsq	$7888462861429992307, %rcx
	xorq	64(%rsp), %rcx
	movabsq	$27981962994347373, %rdx
	xorq	71(%rsp), %rdx
	orq	%rcx, %rdx
	jne	.LBB2_35
	movb	$75, 3(%rsi)
	jmp	.LBB2_34
.LBB2_29:
	movb	$83, 3(%rsi)
	jmp	.LBB2_34
.LBB2_31:
	movb	$72, 3(%rsi)
.LBB2_34:
	xorl	%eax, %eax
	jmp	.LBB2_35
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

	.def	mm_typecode_to_str;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,mm_typecode_to_str
	.globl	mm_typecode_to_str
	.p2align	4, 0x90
mm_typecode_to_str:
.seh_proc mm_typecode_to_str
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$1104, %rsp
	.seh_stackalloc 1104
	.seh_endprologue
	movzbl	1(%rcx), %eax
	cmpl	$67, %eax
	je	.LBB5_3
	cmpl	$65, %eax
	jne	.LBB5_20
	leaq	"??_C@_05HIFJDKLD@array?$AA@"(%rip), %r9
	jmp	.LBB5_4
.LBB5_3:
	leaq	"??_C@_0L@KOOFAJAP@coordinate?$AA@"(%rip), %r9
.LBB5_4:
	movzbl	2(%rcx), %edx
	xorl	%eax, %eax
	addl	$-67, %edx
	cmpl	$15, %edx
	ja	.LBB5_21
	leaq	.LJTI5_0(%rip), %r8
	movslq	(%r8,%rdx,4), %rdx
	addq	%r8, %rdx
	jmpq	*%rdx
.LBB5_6:
	leaq	"??_C@_07CMPFPFAH@complex?$AA@"(%rip), %rdx
	jmp	.LBB5_10
.LBB5_7:
	leaq	"??_C@_07CHFOACKJ@pattern?$AA@"(%rip), %rdx
	jmp	.LBB5_10
.LBB5_8:
	leaq	"??_C@_07LKHFMGFB@integer?$AA@"(%rip), %rdx
	jmp	.LBB5_10
.LBB5_9:
	leaq	"??_C@_04DGGKDJMA@real?$AA@"(%rip), %rdx
.LBB5_10:
	movzbl	3(%rcx), %ecx
	xorl	%eax, %eax
	addl	$-71, %ecx
	cmpl	$12, %ecx
	ja	.LBB5_21
	leaq	.LJTI5_1(%rip), %r8
	movslq	(%r8,%rcx,4), %rcx
	addq	%r8, %rcx
	jmpq	*%rcx
.LBB5_15:
	leaq	"??_C@_07LLDKJBMK@general?$AA@"(%rip), %rax
	jmp	.LBB5_16
.LBB5_14:
	leaq	"??_C@_0P@IOJEJAIP@skew?9symmetric?$AA@"(%rip), %rax
	jmp	.LBB5_16
.LBB5_13:
	leaq	"??_C@_09BLEJOLAE@hermitian?$AA@"(%rip), %rax
	jmp	.LBB5_16
.LBB5_12:
	leaq	"??_C@_09GAAPDMOJ@symmetric?$AA@"(%rip), %rax
.LBB5_16:
	movq	%rax, 40(%rsp)
	movq	%rdx, 32(%rsp)
	leaq	"??_C@_0M@HKJEMFMD@?$CFs?5?$CFs?5?$CFs?5?$CFs?$AA@"(%rip), %rdx
	leaq	"??_C@_06CGNOPMBC@matrix?$AA@"(%rip), %r8
	leaq	64(%rsp), %rsi
	movq	%rsi, %rcx
	callq	sprintf
	movq	%rsi, %rcx
	callq	strlen
	incl	%eax
	movslq	%eax, %rsi
	movq	%rsi, %rcx
	callq	malloc
	testq	%rax, %rax
	je	.LBB5_20
	leaq	64(%rsp), %r8
	movq	%rax, 56(%rsp)
	movq	%rax, %rcx
	movq	%rsi, %rdx
	callq	strcpy_s
	testl	%eax, %eax
	je	.LBB5_18
	movq	56(%rsp), %rcx
	callq	free
.LBB5_20:
	xorl	%eax, %eax
.LBB5_21:
	addq	$1104, %rsp
	popq	%rsi
	retq
.LBB5_18:
	movq	56(%rsp), %rax
	jmp	.LBB5_21
	.section	.rdata,"dr",associative,mm_typecode_to_str
	.p2align	2, 0x0
.LJTI5_0:
	.long	.LBB5_6-.LJTI5_0
	.long	.LBB5_21-.LJTI5_0
	.long	.LBB5_21-.LJTI5_0
	.long	.LBB5_21-.LJTI5_0
	.long	.LBB5_21-.LJTI5_0
	.long	.LBB5_21-.LJTI5_0
	.long	.LBB5_8-.LJTI5_0
	.long	.LBB5_21-.LJTI5_0
	.long	.LBB5_21-.LJTI5_0
	.long	.LBB5_21-.LJTI5_0
	.long	.LBB5_21-.LJTI5_0
	.long	.LBB5_21-.LJTI5_0
	.long	.LBB5_21-.LJTI5_0
	.long	.LBB5_7-.LJTI5_0
	.long	.LBB5_21-.LJTI5_0
	.long	.LBB5_9-.LJTI5_0
.LJTI5_1:
	.long	.LBB5_15-.LJTI5_1
	.long	.LBB5_13-.LJTI5_1
	.long	.LBB5_21-.LJTI5_1
	.long	.LBB5_21-.LJTI5_1
	.long	.LBB5_14-.LJTI5_1
	.long	.LBB5_21-.LJTI5_1
	.long	.LBB5_21-.LJTI5_1
	.long	.LBB5_21-.LJTI5_1
	.long	.LBB5_21-.LJTI5_1
	.long	.LBB5_21-.LJTI5_1
	.long	.LBB5_21-.LJTI5_1
	.long	.LBB5_21-.LJTI5_1
	.long	.LBB5_12-.LJTI5_1
	.section	.text,"xr",one_only,mm_typecode_to_str
	.seh_endproc

	.def	mm_read_mtx_crd_size;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,mm_read_mtx_crd_size
	.globl	mm_read_mtx_crd_size
	.p2align	4, 0x90
mm_read_mtx_crd_size:
.seh_proc mm_read_mtx_crd_size
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
	subq	$1088, %rsp
	.seh_stackalloc 1088
	.seh_endprologue
	movq	%r9, %rsi
	movq	%r8, %rdi
	movq	%rdx, %rbx
	movq	%rcx, %r14
	movl	$0, (%r9)
	movl	$0, (%r8)
	movl	$0, (%rdx)
	leaq	48(%rsp), %r15
	.p2align	4, 0x90
.LBB6_1:
	movq	%r15, %rcx
	movl	$1025, %edx
	movq	%r14, %r8
	callq	fgets
	movq	%rax, %rcx
	movl	$12, %eax
	testq	%rcx, %rcx
	je	.LBB6_9
	cmpb	$37, 48(%rsp)
	je	.LBB6_1
	movq	%rsi, 32(%rsp)
	leaq	"??_C@_08OOHKHLPO@?$CFd?5?$CFd?5?$CFd?$AA@"(%rip), %rdx
	leaq	48(%rsp), %rcx
	movq	%rbx, %r8
	movq	%rdi, %r9
	callq	sscanf
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$3, %ecx
	je	.LBB6_9
	leaq	"??_C@_08OOHKHLPO@?$CFd?5?$CFd?5?$CFd?$AA@"(%rip), %r15
	.p2align	4, 0x90
.LBB6_5:
	movq	%rsi, 32(%rsp)
	movq	%r14, %rcx
	movq	%r15, %rdx
	movq	%rbx, %r8
	movq	%rdi, %r9
	callq	fscanf
	cmpl	$-1, %eax
	je	.LBB6_8
	cmpl	$3, %eax
	jne	.LBB6_5
	xorl	%eax, %eax
	jmp	.LBB6_9
.LBB6_8:
	movl	$12, %eax
.LBB6_9:
	addq	$1088, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
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

	.def	mm_is_valid;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,mm_is_valid
	.globl	mm_is_valid
	.p2align	4, 0x90
mm_is_valid:
	cmpb	$77, (%rcx)
	jne	.LBB8_4
	movzbl	2(%rcx), %eax
	cmpb	$65, 1(%rcx)
	jne	.LBB8_5
	cmpb	$80, %al
	jne	.LBB8_5
.LBB8_4:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB8_5:
	movzbl	%al, %eax
	cmpl	$80, %eax
	je	.LBB8_8
	cmpl	$82, %eax
	jne	.LBB8_9
	cmpb	$72, 3(%rcx)
	setne	%al
	movzbl	%al, %eax
	retq
.LBB8_8:
	movzbl	3(%rcx), %eax
	cmpb	$72, %al
	setne	%cl
	cmpb	$75, %al
	setne	%al
	andb	%cl, %al
	movzbl	%al, %eax
	retq
.LBB8_9:
	movl	$1, %eax
	movzbl	%al, %eax
	retq

	.def	sscanf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,sscanf
	.globl	sscanf
	.p2align	4, 0x90
sscanf:
.seh_proc sscanf
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$64, %rsp
	.seh_stackalloc 64
	.seh_endprologue
	movq	%rdx, %rsi
	movq	%rcx, %rdi
	movq	%r8, 112(%rsp)
	movq	%r9, 120(%rsp)
	leaq	112(%rsp), %rbx
	movq	%rbx, 56(%rsp)
	callq	__local_stdio_scanf_options
	movq	(%rax), %rcx
	movq	%rbx, 40(%rsp)
	movq	$0, 32(%rsp)
	movq	%rdi, %rdx
	movq	$-1, %r8
	movq	%rsi, %r9
	callq	__stdio_common_vsscanf
	nop
	addq	$64, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	mm_write_mtx_crd_size;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,mm_write_mtx_crd_size
	.globl	mm_write_mtx_crd_size
	.p2align	4, 0x90
mm_write_mtx_crd_size:
.seh_proc mm_write_mtx_crd_size
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%r8d, %eax
	movl	%edx, %r8d
	movl	%r9d, 32(%rsp)
	leaq	"??_C@_09KAAEENOK@?$CFd?5?$CFd?5?$CFd?6?$AA@"(%rip), %rdx
	movl	%eax, %r9d
	callq	fprintf
	xorl	%ecx, %ecx
	cmpl	$3, %eax
	movl	$17, %eax
	cmovel	%ecx, %eax
	addq	$40, %rsp
	retq
	.seh_endproc

	.def	mm_read_mtx_array_size;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,mm_read_mtx_array_size
	.globl	mm_read_mtx_array_size
	.p2align	4, 0x90
mm_read_mtx_array_size:
.seh_proc mm_read_mtx_array_size
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$1064, %rsp
	.seh_stackalloc 1064
	.seh_endprologue
	movq	%r8, %rsi
	movq	%rdx, %rdi
	movq	%rcx, %rbx
	movl	$0, (%r8)
	movl	$0, (%rdx)
	leaq	32(%rsp), %r14
	.p2align	4, 0x90
.LBB11_1:
	movq	%r14, %rcx
	movl	$1025, %edx
	movq	%rbx, %r8
	callq	fgets
	movq	%rax, %rcx
	movl	$12, %eax
	testq	%rcx, %rcx
	je	.LBB11_9
	cmpb	$37, 32(%rsp)
	je	.LBB11_1
	leaq	"??_C@_05OKMLJOMC@?$CFd?5?$CFd?$AA@"(%rip), %rdx
	leaq	32(%rsp), %rcx
	movq	%rdi, %r8
	movq	%rsi, %r9
	callq	sscanf
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$2, %ecx
	je	.LBB11_9
	leaq	"??_C@_05OKMLJOMC@?$CFd?5?$CFd?$AA@"(%rip), %r14
	.p2align	4, 0x90
.LBB11_5:
	movq	%rbx, %rcx
	movq	%r14, %rdx
	movq	%rdi, %r8
	movq	%rsi, %r9
	callq	fscanf
	cmpl	$-1, %eax
	je	.LBB11_8
	cmpl	$2, %eax
	jne	.LBB11_5
	xorl	%eax, %eax
	jmp	.LBB11_9
.LBB11_8:
	movl	$12, %eax
.LBB11_9:
	addq	$1064, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	retq
	.seh_endproc

	.def	mm_write_mtx_array_size;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,mm_write_mtx_array_size
	.globl	mm_write_mtx_array_size
	.p2align	4, 0x90
mm_write_mtx_array_size:
.seh_proc mm_write_mtx_array_size
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%r8d, %r9d
	movl	%edx, %r8d
	leaq	"??_C@_06IPGPIAII@?$CFd?5?$CFd?6?$AA@"(%rip), %rdx
	callq	fprintf
	xorl	%ecx, %ecx
	cmpl	$2, %eax
	movl	$17, %eax
	cmovel	%ecx, %eax
	addq	$40, %rsp
	retq
	.seh_endproc

	.def	mm_read_mtx_crd_data;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,mm_read_mtx_crd_data
	.globl	mm_read_mtx_crd_data
	.p2align	4, 0x90
mm_read_mtx_crd_data:
.seh_proc mm_read_mtx_crd_data
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
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, %rsi
	movq	168(%rsp), %rbp
	movq	184(%rsp), %rax
	movzbl	2(%rax), %eax
	cmpl	$67, %eax
	je	.LBB13_21
	cmpl	$82, %eax
	je	.LBB13_12
	cmpl	$80, %eax
	jne	.LBB13_30
	xorl	%edi, %edi
	testl	%r9d, %r9d
	jle	.LBB13_31
	movl	%r9d, %r12d
	cmpl	$1, %r9d
	je	.LBB13_9
	movl	%r12d, %r13d
	shrl	%r13d
	leaq	"??_C@_05OKMLJOMC@?$CFd?5?$CFd?$AA@"(%rip), %rbx
	movq	%rbp, %r14
	movq	160(%rsp), %r15
	movl	$12, %edi
	.p2align	4, 0x90
.LBB13_6:
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	movq	%r15, %r8
	movq	%r14, %r9
	callq	fscanf
	cmpl	$2, %eax
	jne	.LBB13_31
	leaq	4(%r15), %r8
	leaq	4(%r14), %r9
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	callq	fscanf
	cmpl	$2, %eax
	jne	.LBB13_31
	addq	$8, %r15
	addq	$8, %r14
	decq	%r13
	jne	.LBB13_6
.LBB13_9:
	movl	%r12d, %eax
	andl	$-2, %eax
	cmpq	%r12, %rax
	je	.LBB13_11
	movq	160(%rsp), %rcx
	leaq	(%rcx,%rax,4), %r8
	leaq	(,%rax,4), %r9
	addq	%rbp, %r9
	leaq	"??_C@_05OKMLJOMC@?$CFd?5?$CFd?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	fscanf
	movl	$12, %edi
	cmpl	$2, %eax
	jne	.LBB13_31
	jmp	.LBB13_11
.LBB13_12:
	xorl	%edi, %edi
	testl	%r9d, %r9d
	jle	.LBB13_31
	movl	%r9d, %ebp
	cmpl	$1, %r9d
	je	.LBB13_18
	movl	%ebp, %r12d
	shrl	%r12d
	leaq	"??_C@_0L@DPCLJHDN@?$CFd?5?$CFd?5?$CFlg?6?$AA@"(%rip), %rbx
	movq	176(%rsp), %r13
	movq	168(%rsp), %r14
	movq	160(%rsp), %r15
	movl	$12, %edi
	.p2align	4, 0x90
.LBB13_15:
	movq	%r13, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	movq	%r15, %r8
	movq	%r14, %r9
	callq	fscanf
	cmpl	$3, %eax
	jne	.LBB13_31
	leaq	4(%r15), %r8
	leaq	4(%r14), %r9
	leaq	8(%r13), %rax
	movq	%rax, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	callq	fscanf
	cmpl	$3, %eax
	jne	.LBB13_31
	addq	$8, %r15
	addq	$8, %r14
	addq	$16, %r13
	decq	%r12
	jne	.LBB13_15
.LBB13_18:
	movl	%ebp, %eax
	andl	$-2, %eax
	cmpq	%rbp, %rax
	je	.LBB13_11
	movq	160(%rsp), %rcx
	leaq	(%rcx,%rax,4), %r8
	movq	168(%rsp), %rcx
	leaq	(%rcx,%rax,4), %r9
	movq	176(%rsp), %rcx
	leaq	(%rcx,%rax,8), %rax
	movq	%rax, 32(%rsp)
	leaq	"??_C@_0L@DPCLJHDN@?$CFd?5?$CFd?5?$CFlg?6?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	fscanf
	movl	$12, %edi
	cmpl	$3, %eax
	je	.LBB13_11
	jmp	.LBB13_31
.LBB13_21:
	xorl	%edi, %edi
	testl	%r9d, %r9d
	jle	.LBB13_31
	movl	%r9d, %r13d
	shrl	%r13d
	movl	%r9d, 52(%rsp)
	cmpl	$1, %r9d
	je	.LBB13_27
	leaq	"??_C@_0O@MJODDEOM@?$CFd?5?$CFd?5?$CFlg?5?$CFlg?$AA@"(%rip), %rbx
	movq	%r13, %rbp
	movq	168(%rsp), %r14
	movq	160(%rsp), %r15
	movq	176(%rsp), %r12
	movl	$12, %edi
	.p2align	4, 0x90
.LBB13_24:
	leaq	8(%r12), %rax
	movq	%rax, 40(%rsp)
	movq	%r12, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	movq	%r15, %r8
	movq	%r14, %r9
	callq	fscanf
	cmpl	$4, %eax
	jne	.LBB13_31
	leaq	4(%r15), %r8
	leaq	4(%r14), %r9
	leaq	16(%r12), %rax
	leaq	24(%r12), %rcx
	movq	%rcx, 40(%rsp)
	movq	%rax, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	callq	fscanf
	cmpl	$4, %eax
	jne	.LBB13_31
	addq	$32, %r12
	addq	$8, %r15
	addq	$8, %r14
	decq	%rbp
	jne	.LBB13_24
.LBB13_27:
	movl	52(%rsp), %ecx
	movl	%ecx, %eax
	andl	$-2, %eax
	cmpq	%rcx, %rax
	je	.LBB13_11
	movq	160(%rsp), %rcx
	leaq	(%rcx,%rax,4), %r8
	movq	168(%rsp), %rcx
	leaq	(%rcx,%rax,4), %r9
	shlq	$5, %r13
	movq	176(%rsp), %rax
	leaq	(%rax,%r13), %rcx
	addq	%r13, %rax
	addq	$8, %rax
	movq	%rax, 40(%rsp)
	movq	%rcx, 32(%rsp)
	leaq	"??_C@_0O@MJODDEOM@?$CFd?5?$CFd?5?$CFlg?5?$CFlg?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	fscanf
	movl	$12, %edi
	cmpl	$4, %eax
	jne	.LBB13_31
.LBB13_11:
	xorl	%edi, %edi
	jmp	.LBB13_31
.LBB13_30:
	movl	$15, %edi
.LBB13_31:
	movl	%edi, %eax
	addq	$56, %rsp
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

	.def	mm_read_mtx_crd_entry;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,mm_read_mtx_crd_entry
	.globl	mm_read_mtx_crd_entry
	.p2align	4, 0x90
mm_read_mtx_crd_entry:
.seh_proc mm_read_mtx_crd_entry
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%r8, %rax
	movq	%rdx, %r8
	movq	104(%rsp), %rdx
	movzbl	2(%rdx), %edx
	cmpl	$82, %edx
	je	.LBB14_4
	cmpl	$80, %edx
	je	.LBB14_5
	cmpl	$67, %edx
	jne	.LBB14_7
	movq	96(%rsp), %rdx
	movq	%rdx, 40(%rsp)
	movq	%r9, 32(%rsp)
	leaq	"??_C@_0O@MJODDEOM@?$CFd?5?$CFd?5?$CFlg?5?$CFlg?$AA@"(%rip), %rdx
	movq	%rax, %r9
	callq	fscanf
	movl	%eax, %ecx
	movl	$12, %eax
	cmpl	$4, %ecx
	je	.LBB14_6
	jmp	.LBB14_8
.LBB14_5:
	leaq	"??_C@_05OKMLJOMC@?$CFd?5?$CFd?$AA@"(%rip), %rdx
	movq	%rax, %r9
	callq	fscanf
	movl	%eax, %ecx
	movl	$12, %eax
	cmpl	$2, %ecx
	je	.LBB14_6
	jmp	.LBB14_8
.LBB14_4:
	movq	%r9, 32(%rsp)
	leaq	"??_C@_0L@DPCLJHDN@?$CFd?5?$CFd?5?$CFlg?6?$AA@"(%rip), %rdx
	movq	%rax, %r9
	callq	fscanf
	movl	%eax, %ecx
	movl	$12, %eax
	cmpl	$3, %ecx
	jne	.LBB14_8
.LBB14_6:
	xorl	%eax, %eax
	jmp	.LBB14_8
.LBB14_7:
	movl	$15, %eax
.LBB14_8:
	addq	$56, %rsp
	retq
	.seh_endproc

	.def	mm_read_mtx_crd;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,mm_read_mtx_crd
	.globl	mm_read_mtx_crd
	.p2align	4, 0x90
mm_read_mtx_crd:
.seh_proc mm_read_mtx_crd
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
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$1104, %rsp
	.seh_stackalloc 1104
	.seh_endprologue
	movq	%r9, %rbx
	movq	%r8, %r14
	movq	%rdx, %r15
	movq	%rcx, %rsi
	leaq	"??_C@_05MHOFLBOO@stdin?$AA@"(%rip), %rdx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB15_1
	leaq	"??_C@_01KDCPPGHE@r?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	fopen
	movq	%rax, %rsi
	testq	%rax, %rax
	jne	.LBB15_2
	movl	$11, %eax
	jmp	.LBB15_34
.LBB15_1:
	xorl	%ecx, %ecx
	callq	__acrt_iob_func
	movq	%rax, %rsi
.LBB15_2:
	movq	1224(%rsp), %rdi
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	mm_read_banner
	testl	%eax, %eax
	jne	.LBB15_34
	movl	$15, %eax
	cmpb	$77, (%rdi)
	jne	.LBB15_34
	movzbl	1(%rdi), %ecx
	movzbl	2(%rdi), %edx
	cmpb	$65, %cl
	jne	.LBB15_6
	cmpb	$80, %dl
	jne	.LBB15_6
.LBB15_34:
	addq	$1104, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB15_6:
	movzbl	%dl, %edx
	cmpl	$82, %edx
	je	.LBB15_13
	cmpl	$80, %edx
	jne	.LBB15_14
	cmpb	$67, %cl
	jne	.LBB15_34
	movzbl	3(%rdi), %ecx
	cmpl	$72, %ecx
	je	.LBB15_34
	cmpl	$75, %ecx
	je	.LBB15_34
	jmp	.LBB15_15
.LBB15_13:
	cmpb	$72, 3(%rdi)
	je	.LBB15_34
.LBB15_14:
	cmpb	$67, %cl
	jne	.LBB15_34
.LBB15_15:
	movq	1200(%rsp), %r12
	movl	$0, (%rbx)
	movl	$0, (%r14)
	movl	$0, (%r15)
	leaq	64(%rsp), %rcx
	.p2align	4, 0x90
.LBB15_16:
	movq	%rcx, %r13
	movl	$1025, %edx
	movq	%rsi, %r8
	callq	fgets
	testq	%rax, %rax
	je	.LBB15_22
	cmpb	$37, 64(%rsp)
	movq	%r13, %rcx
	je	.LBB15_16
	movq	%rbx, 32(%rsp)
	leaq	"??_C@_08OOHKHLPO@?$CFd?5?$CFd?5?$CFd?$AA@"(%rip), %rdx
	leaq	64(%rsp), %rcx
	movq	%r15, %r8
	movq	%r14, %r9
	callq	sscanf
	cmpl	$3, %eax
	jne	.LBB15_19
.LBB15_23:
	movslq	(%rbx), %rbx
	leaq	(,%rbx,4), %r14
	movq	%r14, %rcx
	callq	malloc
	movq	%rax, (%r12)
	movq	%r14, %rcx
	callq	malloc
	movq	%rax, %r14
	movq	1208(%rsp), %rax
	movq	%r14, (%rax)
	movq	1216(%rsp), %r15
	movq	$0, (%r15)
	movzbl	2(%rdi), %eax
	cmpl	$82, %eax
	je	.LBB15_28
	cmpl	$80, %eax
	je	.LBB15_29
	cmpl	$67, %eax
	jne	.LBB15_31
	movq	%rbx, %rcx
	shlq	$4, %rcx
	jmp	.LBB15_27
.LBB15_19:
	leaq	"??_C@_08OOHKHLPO@?$CFd?5?$CFd?5?$CFd?$AA@"(%rip), %rdx
.LBB15_20:
	movq	%rbx, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdx, %r13
	movq	%r15, %r8
	movq	%r14, %r9
	callq	fscanf
	cmpl	$3, %eax
	je	.LBB15_23
	cmpl	$-1, %eax
	movq	%r13, %rdx
	jne	.LBB15_20
.LBB15_22:
	movl	$12, %eax
	jmp	.LBB15_34
.LBB15_29:
	movq	(%r12), %rax
	movq	%rdi, 56(%rsp)
	movq	%r14, 40(%rsp)
	movq	%rax, 32(%rsp)
	movq	$0, 48(%rsp)
	jmp	.LBB15_30
.LBB15_28:
	movq	%rbx, %rcx
	shlq	$3, %rcx
.LBB15_27:
	callq	malloc
	movq	%rax, (%r15)
	movq	(%r12), %rcx
	movq	%rdi, 56(%rsp)
	movq	%rax, 48(%rsp)
	movq	%r14, 40(%rsp)
	movq	%rcx, 32(%rsp)
.LBB15_30:
	movq	%rsi, %rcx
	movl	%ebx, %r9d
	callq	mm_read_mtx_crd_data
	testl	%eax, %eax
	jne	.LBB15_34
.LBB15_31:
	xorl	%ecx, %ecx
	callq	__acrt_iob_func
	cmpq	%rax, %rsi
	je	.LBB15_33
	movq	%rsi, %rcx
	callq	fclose
.LBB15_33:
	xorl	%eax, %eax
	jmp	.LBB15_34
	.seh_endproc

	.def	mm_write_banner;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,mm_write_banner
	.globl	mm_write_banner
	.p2align	4, 0x90
mm_write_banner:
.seh_proc mm_write_banner
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rcx
	callq	mm_typecode_to_str
	movq	%rax, %rdi
	leaq	"??_C@_06IINFAHFO@?$CFs?5?$CFs?6?$AA@"(%rip), %rdx
	leaq	"??_C@_0P@CMMDMMNG@?$CF?$CFMatrixMarket?$AA@"(%rip), %r8
	movq	%rsi, %rcx
	movq	%rax, %r9
	callq	fprintf
	movl	%eax, %esi
	movq	%rdi, %rcx
	callq	free
	xorl	%ecx, %ecx
	cmpl	$2, %esi
	movl	$17, %eax
	cmovel	%ecx, %eax
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	mm_write_mtx_crd;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,mm_write_mtx_crd
	.globl	mm_write_mtx_crd
	.p2align	4, 0x90
mm_write_mtx_crd:
.seh_proc mm_write_mtx_crd
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
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movl	%r9d, %edi
	movl	%r8d, %ebx
	movl	%edx, %ebp
	movq	%rcx, %rsi
	leaq	"??_C@_06DJDOIFHB@stdout?$AA@"(%rip), %rdx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB17_1
	leaq	"??_C@_01NOFIACDB@w?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	fopen
	movq	%rax, %rsi
	testq	%rax, %rax
	jne	.LBB17_2
	movl	$17, %edi
	jmp	.LBB17_31
.LBB17_1:
	movl	$1, %ecx
	callq	__acrt_iob_func
	movq	%rax, %rsi
.LBB17_2:
	movq	184(%rsp), %r14
	movq	176(%rsp), %r13
	movq	168(%rsp), %r15
	movq	160(%rsp), %r12
	leaq	"??_C@_03IKGEINEE@?$CFs?5?$AA@"(%rip), %rdx
	leaq	"??_C@_0P@CMMDMMNG@?$CF?$CFMatrixMarket?$AA@"(%rip), %r8
	movq	%rsi, %rcx
	callq	fprintf
	movq	%r14, %rcx
	callq	mm_typecode_to_str
	leaq	"??_C@_03OFAPEBGM@?$CFs?6?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	movq	%rax, %r8
	callq	fprintf
	movl	%edi, 32(%rsp)
	leaq	"??_C@_09KAAEENOK@?$CFd?5?$CFd?5?$CFd?6?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	movl	%ebp, %r8d
	movl	%ebx, %r9d
	callq	fprintf
	movzbl	2(%r14), %eax
	cmpl	$82, %eax
	je	.LBB17_14
	cmpl	$80, %eax
	je	.LBB17_21
	cmpl	$67, %eax
	jne	.LBB17_32
	testl	%edi, %edi
	jle	.LBB17_28
	movl	%edi, %ebx
	cmpl	$4, %edi
	jb	.LBB17_9
	leaq	(,%rbx,4), %r14
	andq	$-16, %r14
	xorl	%ebp, %ebp
	leaq	"??_C@_0BH@GGGAHAIE@?$CFd?5?$CFd?5?$CF20?416g?5?$CF20?416g?6?$AA@"(%rip), %rdi
	.p2align	4, 0x90
.LBB17_8:
	movl	(%r12,%rbp), %r8d
	movl	(%r15,%rbp), %r9d
	vmovups	(%r13,%rbp,4), %xmm0
	vmovups	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	movl	4(%r12,%rbp), %r8d
	movl	4(%r15,%rbp), %r9d
	vmovups	16(%r13,%rbp,4), %xmm0
	vmovups	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	movl	8(%r12,%rbp), %r8d
	movl	8(%r15,%rbp), %r9d
	vmovups	32(%r13,%rbp,4), %xmm0
	vmovups	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	movl	12(%r12,%rbp), %r8d
	movl	12(%r15,%rbp), %r9d
	vmovups	48(%r13,%rbp,4), %xmm0
	vmovups	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	addq	$16, %rbp
	cmpq	%rbp, %r14
	jne	.LBB17_8
.LBB17_9:
	movl	%ebx, %r14d
	andl	$-4, %r14d
	cmpq	%rbx, %r14
	je	.LBB17_28
	movl	%ebx, %eax
	shrl	$2, %eax
	shlq	$6, %rax
	addq	%rax, %r13
	addq	$8, %r13
	leaq	"??_C@_0BH@GGGAHAIE@?$CFd?5?$CFd?5?$CF20?416g?5?$CF20?416g?6?$AA@"(%rip), %rdi
	.p2align	4, 0x90
.LBB17_11:
	movl	(%r12,%r14,4), %r8d
	movl	(%r15,%r14,4), %r9d
	vmovups	-8(%r13), %xmm0
	vmovups	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	incq	%r14
	addq	$16, %r13
	cmpq	%r14, %rbx
	jne	.LBB17_11
	jmp	.LBB17_28
.LBB17_21:
	testl	%edi, %edi
	jle	.LBB17_28
	movl	%edi, %ebx
	cmpl	$8, %edi
	jb	.LBB17_25
	leaq	(,%rbx,4), %r14
	andq	$-32, %r14
	xorl	%r13d, %r13d
	leaq	"??_C@_06IPGPIAII@?$CFd?5?$CFd?6?$AA@"(%rip), %rdi
	.p2align	4, 0x90
.LBB17_24:
	movl	(%r12,%r13), %r8d
	movl	(%r15,%r13), %r9d
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	movl	4(%r12,%r13), %r8d
	movl	4(%r15,%r13), %r9d
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	movl	8(%r12,%r13), %r8d
	movl	8(%r15,%r13), %r9d
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	movl	12(%r12,%r13), %r8d
	movl	12(%r15,%r13), %r9d
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	movl	16(%r12,%r13), %r8d
	movl	16(%r15,%r13), %r9d
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	movl	20(%r12,%r13), %r8d
	movl	20(%r15,%r13), %r9d
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	movl	24(%r12,%r13), %r8d
	movl	24(%r15,%r13), %r9d
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	movl	28(%r12,%r13), %r8d
	movl	28(%r15,%r13), %r9d
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	addq	$32, %r13
	cmpq	%r13, %r14
	jne	.LBB17_24
.LBB17_25:
	movl	%ebx, %r14d
	andl	$-8, %r14d
	cmpq	%rbx, %r14
	je	.LBB17_28
	leaq	"??_C@_06IPGPIAII@?$CFd?5?$CFd?6?$AA@"(%rip), %rdi
	.p2align	4, 0x90
.LBB17_27:
	movl	(%r12,%r14,4), %r8d
	movl	(%r15,%r14,4), %r9d
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	incq	%r14
	cmpq	%r14, %rbx
	jne	.LBB17_27
	jmp	.LBB17_28
.LBB17_14:
	testl	%edi, %edi
	jle	.LBB17_28
	movl	%edi, %ebx
	cmpl	$8, %edi
	jb	.LBB17_18
	leaq	(,%rbx,4), %r14
	andq	$-32, %r14
	xorl	%ebp, %ebp
	leaq	"??_C@_0P@POJOCMNE@?$CFd?5?$CFd?5?$CF20?416g?6?$AA@"(%rip), %rdi
	.p2align	4, 0x90
.LBB17_17:
	movl	(%r12,%rbp), %r8d
	movl	(%r15,%rbp), %r9d
	vmovsd	(%r13,%rbp,2), %xmm0
	vmovsd	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	movl	4(%r12,%rbp), %r8d
	movl	4(%r15,%rbp), %r9d
	vmovsd	8(%r13,%rbp,2), %xmm0
	vmovsd	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	movl	8(%r12,%rbp), %r8d
	movl	8(%r15,%rbp), %r9d
	vmovsd	16(%r13,%rbp,2), %xmm0
	vmovsd	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	movl	12(%r12,%rbp), %r8d
	movl	12(%r15,%rbp), %r9d
	vmovsd	24(%r13,%rbp,2), %xmm0
	vmovsd	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	movl	16(%r12,%rbp), %r8d
	movl	16(%r15,%rbp), %r9d
	vmovsd	32(%r13,%rbp,2), %xmm0
	vmovsd	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	movl	20(%r12,%rbp), %r8d
	movl	20(%r15,%rbp), %r9d
	vmovsd	40(%r13,%rbp,2), %xmm0
	vmovsd	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	movl	24(%r12,%rbp), %r8d
	movl	24(%r15,%rbp), %r9d
	vmovsd	48(%r13,%rbp,2), %xmm0
	vmovsd	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	movl	28(%r12,%rbp), %r8d
	movl	28(%r15,%rbp), %r9d
	vmovsd	56(%r13,%rbp,2), %xmm0
	vmovsd	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	addq	$32, %rbp
	cmpq	%rbp, %r14
	jne	.LBB17_17
.LBB17_18:
	movl	%ebx, %r14d
	andl	$-8, %r14d
	cmpq	%rbx, %r14
	je	.LBB17_28
	leaq	"??_C@_0P@POJOCMNE@?$CFd?5?$CFd?5?$CF20?416g?6?$AA@"(%rip), %rdi
	.p2align	4, 0x90
.LBB17_20:
	movl	(%r12,%r14,4), %r8d
	movl	(%r15,%r14,4), %r9d
	vmovsd	(%r13,%r14,8), %xmm0
	vmovsd	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	incq	%r14
	cmpq	%r14, %rbx
	jne	.LBB17_20
.LBB17_28:
	movl	$1, %ecx
	callq	__acrt_iob_func
	xorl	%edi, %edi
	cmpq	%rax, %rsi
	je	.LBB17_31
.LBB17_30:
	movq	%rsi, %rcx
	callq	fclose
.LBB17_31:
	movl	%edi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB17_32:
	movl	$1, %ecx
	callq	__acrt_iob_func
	movl	$15, %edi
	cmpq	%rax, %rsi
	jne	.LBB17_30
	jmp	.LBB17_31
	.seh_endproc

	.def	mm_strdup;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,mm_strdup
	.globl	mm_strdup
	.p2align	4, 0x90
mm_strdup:
.seh_proc mm_strdup
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	callq	strlen
	incl	%eax
	movslq	%eax, %rbx
	movq	%rbx, %rcx
	callq	malloc
	testq	%rax, %rax
	je	.LBB18_4
	movq	%rax, %rdi
	movq	%rax, %rcx
	movq	%rbx, %rdx
	movq	%rsi, %r8
	callq	strcpy_s
	testl	%eax, %eax
	je	.LBB18_2
	movq	%rdi, %rcx
	callq	free
.LBB18_4:
	xorl	%eax, %eax
	jmp	.LBB18_5
.LBB18_2:
	movq	%rdi, %rax
.LBB18_5:
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

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
	vmovsd	__real@41e1e1a300000000(%rip), %xmm0
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

	.def	csc_matrix_vector_avx;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,csc_matrix_vector_avx
	.globl	csc_matrix_vector_avx
	.p2align	4, 0x90
csc_matrix_vector_avx:
.seh_proc csc_matrix_vector_avx
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$56, %rsp
	.seh_stackalloc 56
	vmovups	%xmm8, 32(%rsp)
	.seh_savexmm %xmm8, 32
	vmovups	%xmm7, 16(%rsp)
	.seh_savexmm %xmm7, 16
	vmovups	%xmm6, (%rsp)
	.seh_savexmm %xmm6, 0
	.seh_endprologue
	movl	(%rcx), %eax
	testl	%eax, %eax
	jle	.LBB21_10
	movq	32(%rcx), %rcx
	decq	%rax
	movl	(%rcx), %r10d
	xorl	%r11d, %r11d
	jmp	.LBB21_2
	.p2align	4, 0x90
.LBB21_9:
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vshufpd	$1, %xmm0, %xmm0, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vaddsd	(%rdx,%r11,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rdx,%r11,8)
	leaq	1(%r11), %rsi
	cmpq	%rax, %r11
	movq	%rsi, %r11
	je	.LBB21_10
.LBB21_2:
	movl	%r10d, %edi
	movl	4(%rcx,%r11,4), %r10d
	vxorpd	%xmm0, %xmm0, %xmm0
	cmpl	%r10d, %edi
	jge	.LBB21_9
	movslq	%r10d, %rsi
	movslq	%edi, %rdi
	subq	%rdi, %rsi
	leaq	3(%rsi), %r14
	movq	%r14, %rbx
	shrq	$5, %rbx
	cmpq	$32, %r14
	jb	.LBB21_6
	leaq	224(,%rdi,8), %r15
	movq	%rbx, %r12
	.p2align	4, 0x90
.LBB21_5:
	vmovups	-224(%r8,%r15), %xmm1
	vmovups	-192(%r8,%r15), %xmm2
	vmovups	-160(%r8,%r15), %xmm3
	vmovups	-128(%r8,%r15), %xmm4
	vinsertf128	$1, -208(%r8,%r15), %ymm1, %ymm1
	vmovups	-224(%r9,%r15), %xmm5
	vmovups	-192(%r9,%r15), %xmm6
	vmovups	-160(%r9,%r15), %xmm7
	vmovups	-128(%r9,%r15), %xmm8
	vinsertf128	$1, -208(%r9,%r15), %ymm5, %ymm5
	vmulpd	%ymm5, %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vinsertf128	$1, -176(%r8,%r15), %ymm2, %ymm1
	vinsertf128	$1, -176(%r9,%r15), %ymm6, %ymm2
	vmulpd	%ymm2, %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vinsertf128	$1, -144(%r8,%r15), %ymm3, %ymm1
	vinsertf128	$1, -144(%r9,%r15), %ymm7, %ymm2
	vmulpd	%ymm2, %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vinsertf128	$1, -112(%r8,%r15), %ymm4, %ymm1
	vinsertf128	$1, -112(%r9,%r15), %ymm8, %ymm2
	vmulpd	%ymm2, %ymm1, %ymm1
	vmovups	-96(%r8,%r15), %xmm2
	vinsertf128	$1, -80(%r8,%r15), %ymm2, %ymm2
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovups	-96(%r9,%r15), %xmm1
	vinsertf128	$1, -80(%r9,%r15), %ymm1, %ymm1
	vmulpd	%ymm1, %ymm2, %ymm1
	vmovups	-64(%r8,%r15), %xmm2
	vinsertf128	$1, -48(%r8,%r15), %ymm2, %ymm2
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovups	-64(%r9,%r15), %xmm1
	vinsertf128	$1, -48(%r9,%r15), %ymm1, %ymm1
	vmulpd	%ymm1, %ymm2, %ymm1
	vmovups	-32(%r8,%r15), %xmm2
	vinsertf128	$1, -16(%r8,%r15), %ymm2, %ymm2
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovups	-32(%r9,%r15), %xmm1
	vinsertf128	$1, -16(%r9,%r15), %ymm1, %ymm1
	vmulpd	%ymm1, %ymm2, %ymm1
	vmovups	(%r8,%r15), %xmm2
	vinsertf128	$1, 16(%r8,%r15), %ymm2, %ymm2
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovups	(%r9,%r15), %xmm1
	vinsertf128	$1, 16(%r9,%r15), %ymm1, %ymm1
	vmulpd	%ymm1, %ymm2, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	addq	$256, %r15
	decq	%r12
	jne	.LBB21_5
.LBB21_6:
	leaq	(,%rbx,8), %r15
	shrq	$2, %r14
	cmpq	%r14, %r15
	jae	.LBB21_9
	decq	%rsi
	shrq	$2, %rsi
	shlq	$8, %rbx
	leaq	(%rbx,%rdi,8), %rdi
	subq	%r15, %rsi
	incq	%rsi
	.p2align	4, 0x90
.LBB21_8:
	vmovups	(%r8,%rdi), %xmm1
	vinsertf128	$1, 16(%r8,%rdi), %ymm1, %ymm1
	vmovups	(%r9,%rdi), %xmm2
	vinsertf128	$1, 16(%r9,%rdi), %ymm2, %ymm2
	vmulpd	%ymm2, %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	addq	$32, %rdi
	decq	%rsi
	jne	.LBB21_8
	jmp	.LBB21_9
.LBB21_10:
	vmovups	(%rsp), %xmm6
	vmovups	16(%rsp), %xmm7
	vmovups	32(%rsp), %xmm8
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r14
	popq	%r15
	vzeroupper
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
	jle	.LBB22_6
	movq	40(%rcx), %rcx
	cmpl	$8, %eax
	jb	.LBB22_4
	leaq	(,%rax,4), %r9
	andq	$-32, %r9
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB22_3:
	movslq	(%rcx,%r10), %r11
	vmovsd	(%rdx,%r11,8), %xmm0
	vmovsd	%xmm0, (%r8,%r10,2)
	movslq	4(%rcx,%r10), %r11
	vmovsd	(%rdx,%r11,8), %xmm0
	vmovsd	%xmm0, 8(%r8,%r10,2)
	movslq	8(%rcx,%r10), %r11
	vmovsd	(%rdx,%r11,8), %xmm0
	vmovsd	%xmm0, 16(%r8,%r10,2)
	movslq	12(%rcx,%r10), %r11
	vmovsd	(%rdx,%r11,8), %xmm0
	vmovsd	%xmm0, 24(%r8,%r10,2)
	movslq	16(%rcx,%r10), %r11
	vmovsd	(%rdx,%r11,8), %xmm0
	vmovsd	%xmm0, 32(%r8,%r10,2)
	movslq	20(%rcx,%r10), %r11
	vmovsd	(%rdx,%r11,8), %xmm0
	vmovsd	%xmm0, 40(%r8,%r10,2)
	movslq	24(%rcx,%r10), %r11
	vmovsd	(%rdx,%r11,8), %xmm0
	vmovsd	%xmm0, 48(%r8,%r10,2)
	movslq	28(%rcx,%r10), %r11
	vmovsd	(%rdx,%r11,8), %xmm0
	vmovsd	%xmm0, 56(%r8,%r10,2)
	addq	$32, %r10
	cmpq	%r10, %r9
	jne	.LBB22_3
.LBB22_4:
	movl	%eax, %r9d
	andl	$-8, %r9d
	cmpq	%rax, %r9
	je	.LBB22_6
	.p2align	4, 0x90
.LBB22_5:
	movslq	(%rcx,%r9,4), %r10
	vmovsd	(%rdx,%r10,8), %xmm0
	vmovsd	%xmm0, (%r8,%r9,8)
	incq	%r9
	cmpq	%r9, %rax
	jne	.LBB22_5
.LBB22_6:
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
	subq	$1192, %rsp
	.seh_stackalloc 1192
	vmovups	%xmm8, 1168(%rsp)
	.seh_savexmm %xmm8, 1168
	vmovups	%xmm7, 1152(%rsp)
	.seh_savexmm %xmm7, 1152
	vmovupd	%xmm6, 1136(%rsp)
	.seh_savexmm %xmm6, 1136
	.seh_endprologue
	movq	%rdx, %rsi
	movl	%ecx, %edi
	movl	$71662, %edx
	movl	$3, %ecx
	callq	__intel_new_feature_proc_init
	cmpl	$1, %edi
	jle	.LBB23_74
	movq	8(%rsi), %rcx
	leaq	"??_C@_01KDCPPGHE@r?$AA@"(%rip), %rdx
	callq	fopen
	testq	%rax, %rax
	je	.LBB23_13
	movq	%rax, %rsi
	leaq	52(%rsp), %rdx
	movq	%rax, %rcx
	callq	mm_read_banner
	testl	%eax, %eax
	jne	.LBB23_75
	cmpb	$67, 54(%rsp)
	jne	.LBB23_6
	cmpb	$77, 52(%rsp)
	jne	.LBB23_6
	cmpb	$67, 53(%rsp)
	je	.LBB23_76
.LBB23_6:
	movl	$0, 40(%rsp)
	movl	$0, 44(%rsp)
	movl	$0, 48(%rsp)
	leaq	96(%rsp), %rdi
	.p2align	4, 0x90
.LBB23_7:
	movq	%rdi, %rcx
	movl	$1025, %edx
	movq	%rsi, %r8
	callq	fgets
	testq	%rax, %rax
	je	.LBB23_13
	cmpb	$37, 96(%rsp)
	je	.LBB23_7
	leaq	40(%rsp), %r15
	movq	%r15, 32(%rsp)
	leaq	"??_C@_08OOHKHLPO@?$CFd?5?$CFd?5?$CFd?$AA@"(%rip), %rdx
	leaq	96(%rsp), %rcx
	leaq	48(%rsp), %r8
	leaq	44(%rsp), %r9
	callq	sscanf
	cmpl	$3, %eax
	jne	.LBB23_10
.LBB23_14:
	movslq	40(%rsp), %rbp
	leaq	(,%rbp,4), %rdi
	movq	%rdi, %rcx
	callq	malloc
	movq	%rax, %r13
	movq	%rdi, %rcx
	callq	malloc
	movq	%rax, %r12
	leaq	(,%rbp,8), %r14
	movq	%r14, %rcx
	callq	malloc
	movq	%rax, %rbx
	movq	%r14, %rcx
	callq	malloc
	movq	%rax, %r14
	testq	%rbp, %rbp
	movq	%r13, 88(%rsp)
	movq	%r12, 72(%rsp)
	jle	.LBB23_17
	xorl	%r15d, %r15d
	movq	%rbx, %rdi
	.p2align	4, 0x90
.LBB23_16:
	movq	%rdi, 32(%rsp)
	movq	%rsi, %rcx
	leaq	"??_C@_0L@DPCLJHDN@?$CFd?5?$CFd?5?$CFlg?6?$AA@"(%rip), %rdx
	movq	%r13, %r8
	movq	%r12, %r9
	callq	fscanf
	decl	(%r13)
	decl	(%r12)
	incq	%r15
	movslq	40(%rsp), %rbp
	addq	$4, %r13
	addq	$4, %r12
	addq	$8, %rdi
	cmpq	%rbp, %r15
	jl	.LBB23_16
.LBB23_17:
	movslq	48(%rsp), %rdi
	movslq	44(%rsp), %rsi
	leaq	4(,%rsi,4), %rcx
	callq	malloc
	movq	%rax, %r15
	movl	$0, (%rax)
	movl	%ebp, %r11d
	testl	%ebp, %ebp
	movq	72(%rsp), %r10
	jle	.LBB23_38
	xorl	%edx, %edx
	cmpl	$8, %ebp
	jae	.LBB23_19
.LBB23_37:
	movl	%r11d, %eax
	andl	$-8, %eax
	cmpq	%r11, %rax
	jne	.LBB23_59
.LBB23_38:
	movq	%r11, 56(%rsp)
	movl	%ebp, (%r15,%rsi,4)
	movq	%rsi, %rcx
	shlq	$3, %rcx
	callq	malloc
	movq	%rax, %r12
	leaq	(,%rdi,8), %rcx
	callq	malloc
	movq	%rax, %r13
	movl	%ebp, %eax
	testl	%esi, %esi
	jle	.LBB23_42
	movq	%rdi, 64(%rsp)
	xorl	%edi, %edi
	vmovsd	__real@3f340028005000a0(%rip), %xmm6
	.p2align	4, 0x90
.LBB23_40:
	callq	rand
	vcvtsi2sd	%eax, %xmm1, %xmm0
	vmulsd	%xmm6, %xmm0, %xmm0
	vmovsd	%xmm0, (%r12,%rdi,8)
	incq	%rdi
	movslq	44(%rsp), %rax
	cmpq	%rax, %rdi
	jl	.LBB23_40
	movl	40(%rsp), %eax
	movq	64(%rsp), %rdi
.LBB23_42:
	testl	%eax, %eax
	jle	.LBB23_44
	movl	%eax, %r8d
	shlq	$3, %r8
	movq	%r14, %rcx
	xorl	%edx, %edx
	callq	_intel_fast_memset
.LBB23_44:
	movl	48(%rsp), %r8d
	testl	%r8d, %r8d
	jle	.LBB23_46
	shlq	$3, %r8
	movq	%r13, %rcx
	xorl	%edx, %edx
	callq	_intel_fast_memset
.LBB23_46:
	#APP
	rdtsc
	#NO_APP
	movq	%rdx, 64(%rsp)
	movl	%eax, 84(%rsp)
	#APP
	rdtsc
	#NO_APP
	movl	%edx, %ecx
	shlq	$32, %rcx
	movl	%eax, %r8d
	testl	%ebp, %ebp
	movq	72(%rsp), %r10
	movq	56(%rsp), %r11
	jle	.LBB23_51
	cmpl	$8, %ebp
	jb	.LBB23_50
	leaq	(,%r11,4), %rax
	andq	$-32, %rax
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB23_49:
	movslq	(%r10,%rdx), %r9
	vmovsd	(%r12,%r9,8), %xmm0
	vmovsd	%xmm0, (%r14,%rdx,2)
	movslq	4(%r10,%rdx), %r9
	vmovsd	(%r12,%r9,8), %xmm0
	vmovsd	%xmm0, 8(%r14,%rdx,2)
	movslq	8(%r10,%rdx), %r9
	vmovsd	(%r12,%r9,8), %xmm0
	vmovsd	%xmm0, 16(%r14,%rdx,2)
	movslq	12(%r10,%rdx), %r9
	vmovsd	(%r12,%r9,8), %xmm0
	vmovsd	%xmm0, 24(%r14,%rdx,2)
	movslq	16(%r10,%rdx), %r9
	vmovsd	(%r12,%r9,8), %xmm0
	vmovsd	%xmm0, 32(%r14,%rdx,2)
	movslq	20(%r10,%rdx), %r9
	vmovsd	(%r12,%r9,8), %xmm0
	vmovsd	%xmm0, 40(%r14,%rdx,2)
	movslq	24(%r10,%rdx), %r9
	vmovsd	(%r12,%r9,8), %xmm0
	vmovsd	%xmm0, 48(%r14,%rdx,2)
	movslq	28(%r10,%rdx), %r9
	vmovsd	(%r12,%r9,8), %xmm0
	vmovsd	%xmm0, 56(%r14,%rdx,2)
	addq	$32, %rdx
	cmpq	%rdx, %rax
	jne	.LBB23_49
.LBB23_50:
	movl	%r11d, %eax
	andl	$7, %eax
	decq	%rax
	cmpq	$6, %rax
	ja	.LBB23_51
	andl	$-8, %r11d
	leaq	.LJTI23_0(%rip), %rdx
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmpq	*%rax
.LBB23_63:
	movslq	24(%r10,%r11,4), %rax
	vmovsd	(%r12,%rax,8), %xmm0
	vmovsd	%xmm0, 48(%r14,%r11,8)
.LBB23_64:
	movslq	20(%r10,%r11,4), %rax
	vmovsd	(%r12,%rax,8), %xmm0
	vmovsd	%xmm0, 40(%r14,%r11,8)
.LBB23_65:
	movslq	16(%r10,%r11,4), %rax
	vmovsd	(%r12,%rax,8), %xmm0
	vmovsd	%xmm0, 32(%r14,%r11,8)
.LBB23_66:
	movslq	12(%r10,%r11,4), %rax
	vmovsd	(%r12,%rax,8), %xmm0
	vmovsd	%xmm0, 24(%r14,%r11,8)
.LBB23_67:
	movslq	8(%r10,%r11,4), %rax
	vmovsd	(%r12,%rax,8), %xmm0
	vmovsd	%xmm0, 16(%r14,%r11,8)
.LBB23_68:
	movslq	4(%r10,%r11,4), %rax
	vmovsd	(%r12,%rax,8), %xmm0
	vmovsd	%xmm0, 8(%r14,%r11,8)
.LBB23_69:
	movslq	(%r10,%r11,4), %rax
	vmovsd	(%r12,%rax,8), %xmm0
	vmovsd	%xmm0, (%r14,%r11,8)
.LBB23_51:
	#APP
	rdtsc
	#NO_APP
	shlq	$32, %rdx
	movl	%eax, %eax
	orq	%r8, %rcx
	subq	%rcx, %rax
	addq	%rdx, %rax
	vmovq	%rax, %xmm0
	vpunpckldq	__xmm@00000000000000004530000043300000(%rip), %xmm0, %xmm0
	vsubpd	__xmm@45300000000000004330000000000000(%rip), %xmm0, %xmm0
	vshufpd	$1, %xmm0, %xmm0, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmulsd	__real@3dfca213d840baf8(%rip), %xmm0, %xmm1
	leaq	"??_C@_0DE@PFNMBJFL@Time?5elapsed?5to?5form?5the?5new?5vec@"(%rip), %rcx
	vmovq	%xmm1, %rdx
	callq	printf
	#APP
	rdtsc
	#NO_APP
	movq	%rdx, 56(%rsp)
	testl	%edi, %edi
	jle	.LBB23_73
	movl	%edi, %edx
	decq	%rdx
	movl	(%r15), %r8d
	xorl	%r9d, %r9d
	jmp	.LBB23_53
	.p2align	4, 0x90
.LBB23_61:
	incq	%rax
	cmpq	%rax, %r11
	je	.LBB23_38
.LBB23_59:
	movl	(%r10,%rax,4), %ecx
	cmpl	%edx, %ecx
	je	.LBB23_61
	movslq	%ecx, %rdx
	movl	%eax, (%r15,%rdx,4)
	movl	%ecx, %edx
	jmp	.LBB23_61
	.p2align	4, 0x90
.LBB23_58:
	movq	%rdi, %r13
.LBB23_72:
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vshufpd	$1, %xmm0, %xmm0, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vaddsd	(%r13,%r9,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r13,%r9,8)
	leaq	1(%r9), %rcx
	cmpq	%rdx, %r9
	movq	%rcx, %r9
	je	.LBB23_73
.LBB23_53:
	movl	%r8d, %ecx
	movl	4(%r15,%r9,4), %r8d
	vxorpd	%xmm0, %xmm0, %xmm0
	cmpl	%r8d, %ecx
	jge	.LBB23_72
	movq	%r13, %rdi
	movslq	%r8d, %r10
	movslq	%ecx, %r11
	subq	%r11, %r10
	leaq	3(%r10), %rbp
	movq	%rbp, %r13
	shrq	$5, %r13
	cmpq	$32, %rbp
	jb	.LBB23_57
	leaq	224(,%r11,8), %rcx
	movq	%r13, %rsi
	.p2align	4, 0x90
.LBB23_56:
	vmovups	-224(%r14,%rcx), %xmm1
	vmovups	-192(%r14,%rcx), %xmm2
	vmovups	-160(%r14,%rcx), %xmm3
	vmovups	-128(%r14,%rcx), %xmm4
	vinsertf128	$1, -208(%r14,%rcx), %ymm1, %ymm1
	vmovups	-224(%rbx,%rcx), %xmm5
	vmovupd	-192(%rbx,%rcx), %xmm6
	vmovups	-160(%rbx,%rcx), %xmm7
	vmovups	-128(%rbx,%rcx), %xmm8
	vinsertf128	$1, -208(%rbx,%rcx), %ymm5, %ymm5
	vmulpd	%ymm5, %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vinsertf128	$1, -176(%r14,%rcx), %ymm2, %ymm1
	vinsertf128	$1, -176(%rbx,%rcx), %ymm6, %ymm2
	vmulpd	%ymm2, %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vinsertf128	$1, -144(%r14,%rcx), %ymm3, %ymm1
	vinsertf128	$1, -144(%rbx,%rcx), %ymm7, %ymm2
	vmulpd	%ymm2, %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vinsertf128	$1, -112(%r14,%rcx), %ymm4, %ymm1
	vinsertf128	$1, -112(%rbx,%rcx), %ymm8, %ymm2
	vmulpd	%ymm2, %ymm1, %ymm1
	vmovups	-96(%r14,%rcx), %xmm2
	vinsertf128	$1, -80(%r14,%rcx), %ymm2, %ymm2
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovups	-96(%rbx,%rcx), %xmm1
	vinsertf128	$1, -80(%rbx,%rcx), %ymm1, %ymm1
	vmulpd	%ymm1, %ymm2, %ymm1
	vmovups	-64(%r14,%rcx), %xmm2
	vinsertf128	$1, -48(%r14,%rcx), %ymm2, %ymm2
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovups	-64(%rbx,%rcx), %xmm1
	vinsertf128	$1, -48(%rbx,%rcx), %ymm1, %ymm1
	vmulpd	%ymm1, %ymm2, %ymm1
	vmovups	-32(%r14,%rcx), %xmm2
	vinsertf128	$1, -16(%r14,%rcx), %ymm2, %ymm2
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovups	-32(%rbx,%rcx), %xmm1
	vinsertf128	$1, -16(%rbx,%rcx), %ymm1, %ymm1
	vmulpd	%ymm1, %ymm2, %ymm1
	vmovups	(%r14,%rcx), %xmm2
	vinsertf128	$1, 16(%r14,%rcx), %ymm2, %ymm2
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovups	(%rbx,%rcx), %xmm1
	vinsertf128	$1, 16(%rbx,%rcx), %ymm1, %ymm1
	vmulpd	%ymm1, %ymm2, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	addq	$256, %rcx
	decq	%rsi
	jne	.LBB23_56
.LBB23_57:
	leaq	(,%r13,8), %rsi
	shrq	$2, %rbp
	cmpq	%rbp, %rsi
	jae	.LBB23_58
	decq	%r10
	shrq	$2, %r10
	shlq	$8, %r13
	leaq	(,%r11,8), %rcx
	addq	%r13, %rcx
	subq	%rsi, %r10
	incq	%r10
	movq	%rdi, %r13
	.p2align	4, 0x90
.LBB23_71:
	vmovups	(%r14,%rcx), %xmm1
	vinsertf128	$1, 16(%r14,%rcx), %ymm1, %ymm1
	vmovups	(%rbx,%rcx), %xmm2
	vinsertf128	$1, 16(%rbx,%rcx), %ymm2, %ymm2
	vmulpd	%ymm2, %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	addq	$32, %rcx
	decq	%r10
	jne	.LBB23_71
	jmp	.LBB23_72
.LBB23_73:
	movq	56(%rsp), %r8
	shlq	$32, %r8
	movl	%eax, %ecx
	movq	64(%rsp), %rdi
	shlq	$32, %rdi
	movl	84(%rsp), %esi
	#APP
	rdtsc
	#NO_APP
	shlq	$32, %rdx
	movl	%eax, %eax
	orq	%r8, %rcx
	subq	%rcx, %rax
	addq	%rdx, %rax
	vmovq	%rax, %xmm0
	vmovdqu	__xmm@00000000000000004530000043300000(%rip), %xmm6
	vpunpckldq	%xmm6, %xmm0, %xmm0
	vmovupd	__xmm@45300000000000004330000000000000(%rip), %xmm7
	vsubpd	%xmm7, %xmm0, %xmm0
	vshufpd	$1, %xmm0, %xmm0, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	__real@3dfca213d840baf8(%rip), %xmm8
	vmulsd	%xmm0, %xmm8, %xmm1
	leaq	"??_C@_0DK@NHMCGP@Time?5elapsed?5for?5multiplying?5and@"(%rip), %rcx
	vmovq	%xmm1, %rdx
	vzeroupper
	callq	printf
	#APP
	rdtsc
	#NO_APP
	shlq	$32, %rdx
	movl	%eax, %eax
	orq	%rdi, %rsi
	subq	%rsi, %rax
	addq	%rdx, %rax
	vmovq	%rax, %xmm0
	vpunpckldq	%xmm6, %xmm0, %xmm0
	vsubpd	%xmm7, %xmm0, %xmm0
	vshufpd	$1, %xmm0, %xmm0, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmulsd	%xmm0, %xmm8, %xmm1
	leaq	"??_C@_0CA@KGDHHMP@Total?5time?5elapsed?3?5?$CFf?5seconds?6?$AA@"(%rip), %rcx
	vmovq	%xmm1, %rdx
	callq	printf
	movl	40(%rsp), %r9d
	movl	44(%rsp), %r8d
	movl	48(%rsp), %edx
	leaq	"??_C@_0CO@PNJDHDLN@Rows?3?5?$CFd?0?5Columns?3?5?$CFd?0?5Non?9zero?5@"(%rip), %rcx
	callq	printf
	movq	88(%rsp), %rcx
	callq	free
	movq	72(%rsp), %rcx
	callq	free
	movq	%rbx, %rcx
	callq	free
	movq	%r14, %rcx
	callq	free
	movq	%r12, %rcx
	callq	free
	movq	%r13, %rcx
	callq	free
	movq	%r15, %rcx
	callq	free
	xorl	%eax, %eax
	vmovups	1136(%rsp), %xmm6
	vmovups	1152(%rsp), %xmm7
	vmovups	1168(%rsp), %xmm8
	addq	$1192, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB23_10:
	leaq	"??_C@_08OOHKHLPO@?$CFd?5?$CFd?5?$CFd?$AA@"(%rip), %rdi
	leaq	48(%rsp), %rbx
	leaq	44(%rsp), %r14
	.p2align	4, 0x90
.LBB23_11:
	movq	%r15, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movq	%rbx, %r8
	movq	%r14, %r9
	callq	fscanf
	cmpl	$3, %eax
	je	.LBB23_14
	cmpl	$-1, %eax
	jne	.LBB23_11
.LBB23_13:
	movl	$1, %ecx
	callq	exit
.LBB23_19:
	movl	%r11d, %eax
	andl	$-8, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB23_20
	.p2align	4, 0x90
.LBB23_36:
	addq	$8, %rcx
	cmpq	%rcx, %rax
	je	.LBB23_37
.LBB23_20:
	movl	(%r10,%rcx,4), %r8d
	cmpl	%edx, %r8d
	je	.LBB23_22
	movslq	%r8d, %rdx
	movl	%ecx, (%r15,%rdx,4)
	movl	%r8d, %edx
.LBB23_22:
	movl	4(%r10,%rcx,4), %r8d
	cmpl	%edx, %r8d
	je	.LBB23_24
	movslq	%r8d, %rdx
	leal	1(%rcx), %r9d
	movl	%r9d, (%r15,%rdx,4)
	movl	%r8d, %edx
.LBB23_24:
	movl	8(%r10,%rcx,4), %r8d
	cmpl	%edx, %r8d
	je	.LBB23_26
	movslq	%r8d, %rdx
	leal	2(%rcx), %r9d
	movl	%r9d, (%r15,%rdx,4)
	movl	%r8d, %edx
.LBB23_26:
	movl	12(%r10,%rcx,4), %r8d
	cmpl	%edx, %r8d
	je	.LBB23_28
	movslq	%r8d, %rdx
	leal	3(%rcx), %r9d
	movl	%r9d, (%r15,%rdx,4)
	movl	%r8d, %edx
.LBB23_28:
	movl	16(%r10,%rcx,4), %r8d
	cmpl	%edx, %r8d
	je	.LBB23_30
	movslq	%r8d, %rdx
	leal	4(%rcx), %r9d
	movl	%r9d, (%r15,%rdx,4)
	movl	%r8d, %edx
.LBB23_30:
	movl	20(%r10,%rcx,4), %r8d
	cmpl	%edx, %r8d
	je	.LBB23_32
	movslq	%r8d, %rdx
	leal	5(%rcx), %r9d
	movl	%r9d, (%r15,%rdx,4)
	movl	%r8d, %edx
.LBB23_32:
	movl	24(%r10,%rcx,4), %r8d
	cmpl	%edx, %r8d
	je	.LBB23_34
	movslq	%r8d, %rdx
	leal	6(%rcx), %r9d
	movl	%r9d, (%r15,%rdx,4)
	movl	%r8d, %edx
.LBB23_34:
	movl	28(%r10,%rcx,4), %r8d
	cmpl	%edx, %r8d
	je	.LBB23_36
	movslq	%r8d, %rdx
	leal	7(%rcx), %r9d
	movl	%r9d, (%r15,%rdx,4)
	movl	%r8d, %edx
	jmp	.LBB23_36
.LBB23_74:
	movq	(%rsi), %rsi
	movl	$2, %ecx
	callq	__acrt_iob_func
	leaq	"??_C@_0CE@BIKOBMBB@Usage?3?5?$CFs?5?$FLmatrix?9market?9filenam@"(%rip), %rdx
	movq	%rax, %rcx
	movq	%rsi, %r8
	callq	fprintf
	movl	$1, %ecx
	callq	exit
.LBB23_75:
	leaq	.Lstr(%rip), %rcx
	callq	puts
	movl	$1, %ecx
	callq	exit
.LBB23_76:
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
.LJTI23_0:
	.long	.LBB23_69-.LJTI23_0
	.long	.LBB23_68-.LJTI23_0
	.long	.LBB23_67-.LJTI23_0
	.long	.LBB23_66-.LJTI23_0
	.long	.LBB23_65-.LJTI23_0
	.long	.LBB23_64-.LJTI23_0
	.long	.LBB23_63-.LJTI23_0
	.section	.text,"xr",one_only,main
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

	.section	.rdata,"dr",discard,"??_C@_01KDCPPGHE@r?$AA@"
	.globl	"??_C@_01KDCPPGHE@r?$AA@"
"??_C@_01KDCPPGHE@r?$AA@":
	.asciz	"r"

	.section	.rdata,"dr",discard,"??_C@_0DM@EJJCAIHJ@mm_read_unsymetric?3?5Could?5not?5pr@"
	.globl	"??_C@_0DM@EJJCAIHJ@mm_read_unsymetric?3?5Could?5not?5pr@"
"??_C@_0DM@EJJCAIHJ@mm_read_unsymetric?3?5Could?5not?5pr@":
	.asciz	"mm_read_unsymetric: Could not process Matrix Market banner "

	.section	.rdata,"dr",discard,"??_C@_0P@JOFNCLJA@?5in?5file?5?$FL?$CFs?$FN?6?$AA@"
	.globl	"??_C@_0P@JOFNCLJA@?5in?5file?5?$FL?$CFs?$FN?6?$AA@"
"??_C@_0P@JOFNCLJA@?5in?5file?5?$FL?$CFs?$FN?6?$AA@":
	.asciz	" in file [%s]\n"

	.section	.rdata,"dr",discard,"??_C@_0CK@GGOBCCKJ@Sorry?0?5this?5application?5does?5not@"
	.globl	"??_C@_0CK@GGOBCCKJ@Sorry?0?5this?5application?5does?5not@"
"??_C@_0CK@GGOBCCKJ@Sorry?0?5this?5application?5does?5not@":
	.asciz	"Sorry, this application does not support "

	.section	.rdata,"dr",discard,"??_C@_0BK@FLDFLNI@Market?5Market?5type?3?5?$FL?$CFs?$FN?6?$AA@"
	.globl	"??_C@_0BK@FLDFLNI@Market?5Market?5type?3?5?$FL?$CFs?$FN?6?$AA@"
"??_C@_0BK@FLDFLNI@Market?5Market?5type?3?5?$FL?$CFs?$FN?6?$AA@":
	.asciz	"Market Market type: [%s]\n"

	.section	.rdata,"dr",discard,"??_C@_0DJ@HHBEIHFC@read_unsymmetric_sparse?$CI?$CJ?3?5could@"
	.globl	"??_C@_0DJ@HHBEIHFC@read_unsymmetric_sparse?$CI?$CJ?3?5could@"
"??_C@_0DJ@HHBEIHFC@read_unsymmetric_sparse?$CI?$CJ?3?5could@":
	.asciz	"read_unsymmetric_sparse(): could not parse matrix size.\n"

	.section	.rdata,"dr",discard,"??_C@_0L@DPCLJHDN@?$CFd?5?$CFd?5?$CFlg?6?$AA@"
	.globl	"??_C@_0L@DPCLJHDN@?$CFd?5?$CFd?5?$CFlg?6?$AA@"
"??_C@_0L@DPCLJHDN@?$CFd?5?$CFd?5?$CFlg?6?$AA@":
	.asciz	"%d %d %lg\n"

	.section	.rdata,"dr",discard,"??_C@_0BD@CBEDEKED@mmrb?3?5got?5line?5?$CFs?6?$AA@"
	.globl	"??_C@_0BD@CBEDEKED@mmrb?3?5got?5line?5?$CFs?6?$AA@"
"??_C@_0BD@CBEDEKED@mmrb?3?5got?5line?5?$CFs?6?$AA@":
	.asciz	"mmrb: got line %s\n"

	.section	.rdata,"dr",discard,"??_C@_0P@EIKAFNDF@?$CFs?5?$CFs?5?$CFs?5?$CFs?5?$CFs?$AA@"
	.globl	"??_C@_0P@EIKAFNDF@?$CFs?5?$CFs?5?$CFs?5?$CFs?5?$CFs?$AA@"
"??_C@_0P@EIKAFNDF@?$CFs?5?$CFs?5?$CFs?5?$CFs?5?$CFs?$AA@":
	.asciz	"%s %s %s %s %s"

	.section	.rdata,"dr",discard,"??_C@_0P@CMMDMMNG@?$CF?$CFMatrixMarket?$AA@"
	.globl	"??_C@_0P@CMMDMMNG@?$CF?$CFMatrixMarket?$AA@"
"??_C@_0P@CMMDMMNG@?$CF?$CFMatrixMarket?$AA@":
	.asciz	"%%MatrixMarket"

	.section	.rdata,"dr",discard,"??_C@_06CGNOPMBC@matrix?$AA@"
	.globl	"??_C@_06CGNOPMBC@matrix?$AA@"
"??_C@_06CGNOPMBC@matrix?$AA@":
	.asciz	"matrix"

	.section	.rdata,"dr",discard,"??_C@_0L@KOOFAJAP@coordinate?$AA@"
	.globl	"??_C@_0L@KOOFAJAP@coordinate?$AA@"
"??_C@_0L@KOOFAJAP@coordinate?$AA@":
	.asciz	"coordinate"

	.section	.rdata,"dr",discard,"??_C@_05HIFJDKLD@array?$AA@"
	.globl	"??_C@_05HIFJDKLD@array?$AA@"
"??_C@_05HIFJDKLD@array?$AA@":
	.asciz	"array"

	.section	.rdata,"dr",discard,"??_C@_04DGGKDJMA@real?$AA@"
	.globl	"??_C@_04DGGKDJMA@real?$AA@"
"??_C@_04DGGKDJMA@real?$AA@":
	.asciz	"real"

	.section	.rdata,"dr",discard,"??_C@_07CMPFPFAH@complex?$AA@"
	.globl	"??_C@_07CMPFPFAH@complex?$AA@"
"??_C@_07CMPFPFAH@complex?$AA@":
	.asciz	"complex"

	.section	.rdata,"dr",discard,"??_C@_07CHFOACKJ@pattern?$AA@"
	.globl	"??_C@_07CHFOACKJ@pattern?$AA@"
"??_C@_07CHFOACKJ@pattern?$AA@":
	.asciz	"pattern"

	.section	.rdata,"dr",discard,"??_C@_07LKHFMGFB@integer?$AA@"
	.globl	"??_C@_07LKHFMGFB@integer?$AA@"
"??_C@_07LKHFMGFB@integer?$AA@":
	.asciz	"integer"

	.section	.rdata,"dr",discard,"??_C@_07LLDKJBMK@general?$AA@"
	.globl	"??_C@_07LLDKJBMK@general?$AA@"
"??_C@_07LLDKJBMK@general?$AA@":
	.asciz	"general"

	.section	.rdata,"dr",discard,"??_C@_09GAAPDMOJ@symmetric?$AA@"
	.globl	"??_C@_09GAAPDMOJ@symmetric?$AA@"
"??_C@_09GAAPDMOJ@symmetric?$AA@":
	.asciz	"symmetric"

	.section	.rdata,"dr",discard,"??_C@_09BLEJOLAE@hermitian?$AA@"
	.globl	"??_C@_09BLEJOLAE@hermitian?$AA@"
"??_C@_09BLEJOLAE@hermitian?$AA@":
	.asciz	"hermitian"

	.section	.rdata,"dr",discard,"??_C@_0P@IOJEJAIP@skew?9symmetric?$AA@"
	.globl	"??_C@_0P@IOJEJAIP@skew?9symmetric?$AA@"
"??_C@_0P@IOJEJAIP@skew?9symmetric?$AA@":
	.asciz	"skew-symmetric"

	.section	.rdata,"dr",discard,"??_C@_09KAAEENOK@?$CFd?5?$CFd?5?$CFd?6?$AA@"
	.globl	"??_C@_09KAAEENOK@?$CFd?5?$CFd?5?$CFd?6?$AA@"
"??_C@_09KAAEENOK@?$CFd?5?$CFd?5?$CFd?6?$AA@":
	.asciz	"%d %d %d\n"

	.section	.rdata,"dr",discard,"??_C@_08OOHKHLPO@?$CFd?5?$CFd?5?$CFd?$AA@"
	.globl	"??_C@_08OOHKHLPO@?$CFd?5?$CFd?5?$CFd?$AA@"
"??_C@_08OOHKHLPO@?$CFd?5?$CFd?5?$CFd?$AA@":
	.asciz	"%d %d %d"

	.section	.rdata,"dr",discard,"??_C@_05OKMLJOMC@?$CFd?5?$CFd?$AA@"
	.globl	"??_C@_05OKMLJOMC@?$CFd?5?$CFd?$AA@"
"??_C@_05OKMLJOMC@?$CFd?5?$CFd?$AA@":
	.asciz	"%d %d"

	.section	.rdata,"dr",discard,"??_C@_06IPGPIAII@?$CFd?5?$CFd?6?$AA@"
	.globl	"??_C@_06IPGPIAII@?$CFd?5?$CFd?6?$AA@"
"??_C@_06IPGPIAII@?$CFd?5?$CFd?6?$AA@":
	.asciz	"%d %d\n"

	.section	.rdata,"dr",discard,"??_C@_0O@MJODDEOM@?$CFd?5?$CFd?5?$CFlg?5?$CFlg?$AA@"
	.globl	"??_C@_0O@MJODDEOM@?$CFd?5?$CFd?5?$CFlg?5?$CFlg?$AA@"
"??_C@_0O@MJODDEOM@?$CFd?5?$CFd?5?$CFlg?5?$CFlg?$AA@":
	.asciz	"%d %d %lg %lg"

	.section	.rdata,"dr",discard,"??_C@_05MHOFLBOO@stdin?$AA@"
	.globl	"??_C@_05MHOFLBOO@stdin?$AA@"
"??_C@_05MHOFLBOO@stdin?$AA@":
	.asciz	"stdin"

	.section	.rdata,"dr",discard,"??_C@_06IINFAHFO@?$CFs?5?$CFs?6?$AA@"
	.globl	"??_C@_06IINFAHFO@?$CFs?5?$CFs?6?$AA@"
"??_C@_06IINFAHFO@?$CFs?5?$CFs?6?$AA@":
	.asciz	"%s %s\n"

	.section	.rdata,"dr",discard,"??_C@_06DJDOIFHB@stdout?$AA@"
	.globl	"??_C@_06DJDOIFHB@stdout?$AA@"
"??_C@_06DJDOIFHB@stdout?$AA@":
	.asciz	"stdout"

	.section	.rdata,"dr",discard,"??_C@_01NOFIACDB@w?$AA@"
	.globl	"??_C@_01NOFIACDB@w?$AA@"
"??_C@_01NOFIACDB@w?$AA@":
	.asciz	"w"

	.section	.rdata,"dr",discard,"??_C@_03IKGEINEE@?$CFs?5?$AA@"
	.globl	"??_C@_03IKGEINEE@?$CFs?5?$AA@"
"??_C@_03IKGEINEE@?$CFs?5?$AA@":
	.asciz	"%s "

	.section	.rdata,"dr",discard,"??_C@_03OFAPEBGM@?$CFs?6?$AA@"
	.globl	"??_C@_03OFAPEBGM@?$CFs?6?$AA@"
"??_C@_03OFAPEBGM@?$CFs?6?$AA@":
	.asciz	"%s\n"

	.section	.rdata,"dr",discard,"??_C@_0P@POJOCMNE@?$CFd?5?$CFd?5?$CF20?416g?6?$AA@"
	.globl	"??_C@_0P@POJOCMNE@?$CFd?5?$CFd?5?$CF20?416g?6?$AA@"
"??_C@_0P@POJOCMNE@?$CFd?5?$CFd?5?$CF20?416g?6?$AA@":
	.asciz	"%d %d %20.16g\n"

	.section	.rdata,"dr",discard,"??_C@_0BH@GGGAHAIE@?$CFd?5?$CFd?5?$CF20?416g?5?$CF20?416g?6?$AA@"
	.globl	"??_C@_0BH@GGGAHAIE@?$CFd?5?$CFd?5?$CF20?416g?5?$CF20?416g?6?$AA@"
"??_C@_0BH@GGGAHAIE@?$CFd?5?$CFd?5?$CF20?416g?5?$CF20?416g?6?$AA@":
	.asciz	"%d %d %20.16g %20.16g\n"

	.section	.rdata,"dr",discard,"??_C@_0M@HKJEMFMD@?$CFs?5?$CFs?5?$CFs?5?$CFs?$AA@"
	.globl	"??_C@_0M@HKJEMFMD@?$CFs?5?$CFs?5?$CFs?5?$CFs?$AA@"
"??_C@_0M@HKJEMFMD@?$CFs?5?$CFs?5?$CFs?5?$CFs?$AA@":
	.asciz	"%s %s %s %s"

	.section	.rdata,"dr",discard,"??_C@_0CE@BIKOBMBB@Usage?3?5?$CFs?5?$FLmatrix?9market?9filenam@"
	.globl	"??_C@_0CE@BIKOBMBB@Usage?3?5?$CFs?5?$FLmatrix?9market?9filenam@"
"??_C@_0CE@BIKOBMBB@Usage?3?5?$CFs?5?$FLmatrix?9market?9filenam@":
	.asciz	"Usage: %s [matrix-market-filename]\n"

	.section	.rdata,"dr",discard,"??_C@_0DE@PFNMBJFL@Time?5elapsed?5to?5form?5the?5new?5vec@"
	.globl	"??_C@_0DE@PFNMBJFL@Time?5elapsed?5to?5form?5the?5new?5vec@"
"??_C@_0DE@PFNMBJFL@Time?5elapsed?5to?5form?5the?5new?5vec@":
	.asciz	"Time elapsed to form the new vector is: %f seconds\n"

	.section	.rdata,"dr",discard,"??_C@_0DK@NHMCGP@Time?5elapsed?5for?5multiplying?5and@"
	.globl	"??_C@_0DK@NHMCGP@Time?5elapsed?5for?5multiplying?5and@"
"??_C@_0DK@NHMCGP@Time?5elapsed?5for?5multiplying?5and@":
	.asciz	"Time elapsed for multiplying and adding both: %f seconds\n"

	.section	.rdata,"dr",discard,"??_C@_0CA@KGDHHMP@Total?5time?5elapsed?3?5?$CFf?5seconds?6?$AA@"
	.globl	"??_C@_0CA@KGDHHMP@Total?5time?5elapsed?3?5?$CFf?5seconds?6?$AA@"
"??_C@_0CA@KGDHHMP@Total?5time?5elapsed?3?5?$CFf?5seconds?6?$AA@":
	.asciz	"Total time elapsed: %f seconds\n"

	.section	.rdata,"dr",discard,"??_C@_0CO@PNJDHDLN@Rows?3?5?$CFd?0?5Columns?3?5?$CFd?0?5Non?9zero?5@"
	.globl	"??_C@_0CO@PNJDHDLN@Rows?3?5?$CFd?0?5Columns?3?5?$CFd?0?5Non?9zero?5@"
"??_C@_0CO@PNJDHDLN@Rows?3?5?$CFd?0?5Columns?3?5?$CFd?0?5Non?9zero?5@":
	.asciz	"Rows: %d, Columns: %d, Non-zero elements: %d\n"

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
