	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"ICC-OPENMP-float10x-mmio-spmv.c"
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
	je	.LBB2_19
	movq	%rax, %rsi
	leaq	52(%rsp), %rdx
	movq	%rax, %rcx
	callq	mm_read_banner
	testl	%eax, %eax
	je	.LBB2_3
	leaq	"??_C@_0DM@EJJCAIHJ@mm_read_unsymetric?3?5Could?5not?5pr@"(%rip), %rcx
	callq	printf
	leaq	"??_C@_0P@JOFNCLJA@?5in?5file?5?$FL?$CFs?$FN?6?$AA@"(%rip), %rcx
	movq	%r12, %rdx
	callq	printf
	jmp	.LBB2_19
.LBB2_3:
	cmpb	$82, 54(%rsp)
	jne	.LBB2_6
	cmpb	$77, 52(%rsp)
	jne	.LBB2_6
	cmpb	$67, 53(%rsp)
	jne	.LBB2_6
	movl	$0, 48(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 60(%rsp)
	leaq	64(%rsp), %r12
	.p2align	4, 0x90
.LBB2_8:
	movq	%r12, %rcx
	movl	$1025, %edx
	movq	%rsi, %r8
	callq	fgets
	testq	%rax, %rax
	je	.LBB2_14
	cmpb	$37, 64(%rsp)
	je	.LBB2_8
	leaq	48(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	"??_C@_08OOHKHLPO@?$CFd?5?$CFd?5?$CFd?$AA@"(%rip), %rdx
	leaq	64(%rsp), %rcx
	leaq	60(%rsp), %r8
	leaq	56(%rsp), %r9
	callq	sscanf
	cmpl	$3, %eax
	jne	.LBB2_11
.LBB2_15:
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
	jle	.LBB2_18
	xorl	%r12d, %r12d
	leaq	"??_C@_0L@DPCLJHDN@?$CFd?5?$CFd?5?$CFlg?6?$AA@"(%rip), %r15
	.p2align	4, 0x90
.LBB2_17:
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
	jl	.LBB2_17
.LBB2_18:
	movq	%rsi, %rcx
	callq	fclose
	xorl	%edi, %edi
	jmp	.LBB2_19
.LBB2_6:
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
.LBB2_19:
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
.LBB2_11:
	leaq	"??_C@_08OOHKHLPO@?$CFd?5?$CFd?5?$CFd?$AA@"(%rip), %r12
	leaq	60(%rsp), %r13
	leaq	56(%rsp), %rbp
.LBB2_12:
	leaq	48(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	%rsi, %rcx
	movq	%r12, %rdx
	movq	%r13, %r8
	movq	%rbp, %r9
	callq	fscanf
	cmpl	$3, %eax
	je	.LBB2_15
	cmpl	$-1, %eax
	jne	.LBB2_12
.LBB2_14:
	movl	$2, %ecx
	callq	__acrt_iob_func
	leaq	"??_C@_0DJ@HHBEIHFC@read_unsymmetric_sparse?$CI?$CJ?3?5could@"(%rip), %rcx
	movl	$56, %edx
	movl	$1, %r8d
	movq	%rax, %r9
	callq	fwrite
	jmp	.LBB2_19
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
	je	.LBB3_1
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
	jne	.LBB3_38
	movzbl	256(%rsp), %eax
	testb	%al, %al
	je	.LBB3_6
	leaq	264(%rsp), %rdi
.LBB3_5:
	movsbl	%al, %ecx
	callq	tolower
	movb	%al, -8(%rdi)
	movsbl	-7(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_6
	callq	tolower
	movb	%al, -7(%rdi)
	movsbl	-6(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_6
	callq	tolower
	movb	%al, -6(%rdi)
	movsbl	-5(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_6
	callq	tolower
	movb	%al, -5(%rdi)
	movsbl	-4(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_6
	callq	tolower
	movb	%al, -4(%rdi)
	movsbl	-3(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_6
	callq	tolower
	movb	%al, -3(%rdi)
	movsbl	-2(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_6
	callq	tolower
	movb	%al, -2(%rdi)
	movsbl	-1(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_6
	callq	tolower
	movb	%al, -1(%rdi)
	movzbl	(%rdi), %eax
	addq	$8, %rdi
	testb	%al, %al
	jne	.LBB3_5
.LBB3_6:
	movzbl	128(%rsp), %eax
	testb	%al, %al
	je	.LBB3_9
	leaq	136(%rsp), %rdi
.LBB3_8:
	movsbl	%al, %ecx
	callq	tolower
	movb	%al, -8(%rdi)
	movsbl	-7(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_9
	callq	tolower
	movb	%al, -7(%rdi)
	movsbl	-6(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_9
	callq	tolower
	movb	%al, -6(%rdi)
	movsbl	-5(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_9
	callq	tolower
	movb	%al, -5(%rdi)
	movsbl	-4(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_9
	callq	tolower
	movb	%al, -4(%rdi)
	movsbl	-3(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_9
	callq	tolower
	movb	%al, -3(%rdi)
	movsbl	-2(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_9
	callq	tolower
	movb	%al, -2(%rdi)
	movsbl	-1(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_9
	callq	tolower
	movb	%al, -1(%rdi)
	movzbl	(%rdi), %eax
	addq	$8, %rdi
	testb	%al, %al
	jne	.LBB3_8
.LBB3_9:
	movzbl	192(%rsp), %eax
	testb	%al, %al
	je	.LBB3_12
	leaq	200(%rsp), %rdi
.LBB3_11:
	movsbl	%al, %ecx
	callq	tolower
	movb	%al, -8(%rdi)
	movsbl	-7(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_12
	callq	tolower
	movb	%al, -7(%rdi)
	movsbl	-6(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_12
	callq	tolower
	movb	%al, -6(%rdi)
	movsbl	-5(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_12
	callq	tolower
	movb	%al, -5(%rdi)
	movsbl	-4(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_12
	callq	tolower
	movb	%al, -4(%rdi)
	movsbl	-3(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_12
	callq	tolower
	movb	%al, -3(%rdi)
	movsbl	-2(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_12
	callq	tolower
	movb	%al, -2(%rdi)
	movsbl	-1(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_12
	callq	tolower
	movb	%al, -1(%rdi)
	movzbl	(%rdi), %eax
	addq	$8, %rdi
	testb	%al, %al
	jne	.LBB3_11
.LBB3_12:
	movzbl	64(%rsp), %eax
	testb	%al, %al
	je	.LBB3_15
	leaq	72(%rsp), %rdi
.LBB3_14:
	movsbl	%al, %ecx
	callq	tolower
	movb	%al, -8(%rdi)
	movsbl	-7(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_15
	callq	tolower
	movb	%al, -7(%rdi)
	movsbl	-6(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_15
	callq	tolower
	movb	%al, -6(%rdi)
	movsbl	-5(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_15
	callq	tolower
	movb	%al, -5(%rdi)
	movsbl	-4(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_15
	callq	tolower
	movb	%al, -4(%rdi)
	movsbl	-3(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_15
	callq	tolower
	movb	%al, -3(%rdi)
	movsbl	-2(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_15
	callq	tolower
	movb	%al, -2(%rdi)
	movsbl	-1(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_15
	callq	tolower
	movb	%al, -1(%rdi)
	movzbl	(%rdi), %eax
	addq	$8, %rdi
	testb	%al, %al
	jne	.LBB3_14
.LBB3_15:
	movabsq	$8676592001280189733, %rax
	xorq	320(%rsp), %rax
	movabsq	$8387228020050327657, %rcx
	xorq	326(%rsp), %rcx
	orq	%rax, %rcx
	movl	$14, %eax
	jne	.LBB3_38
	movl	$1920229741, %eax
	xorl	256(%rsp), %eax
	movl	$7891314, %ecx
	xorl	259(%rsp), %ecx
	orl	%eax, %ecx
	movl	$15, %eax
	jne	.LBB3_38
	movb	$77, (%rsi)
	movabsq	$7020664749254733667, %rcx
	xorq	128(%rsp), %rcx
	movabsq	$28556934460826738, %rdx
	xorq	131(%rsp), %rdx
	orq	%rcx, %rdx
	je	.LBB3_18
	movl	$1634890337, %ecx
	xorl	128(%rsp), %ecx
	movzwl	132(%rsp), %edx
	xorl	$121, %edx
	orl	%ecx, %edx
	jne	.LBB3_38
	movb	$65, %cl
	jmp	.LBB3_21
.LBB3_1:
	leaq	"??_C@_0BD@CBEDEKED@mmrb?3?5got?5line?5?$CFs?6?$AA@"(%rip), %rcx
	leaq	384(%rsp), %rdx
	callq	printf
	movl	$12, %eax
.LBB3_38:
	addq	$1416, %rsp
	popq	%rdi
	popq	%rsi
	retq
.LBB3_18:
	movb	$67, %cl
.LBB3_21:
	movb	%cl, 1(%rsi)
	movl	$1818322290, %ecx
	xorl	192(%rsp), %ecx
	movzbl	196(%rsp), %edx
	orl	%ecx, %edx
	je	.LBB3_22
	movq	192(%rsp), %rcx
	movabsq	$33888513622372195, %rdx
	cmpq	%rdx, %rcx
	je	.LBB3_28
	movabsq	$32199642103180905, %rdx
	cmpq	%rdx, %rcx
	je	.LBB3_27
	movabsq	$31088027509219696, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB3_38
	movb	$80, %cl
	jmp	.LBB3_29
.LBB3_22:
	movb	$82, %cl
	jmp	.LBB3_29
.LBB3_27:
	movb	$73, %cl
	jmp	.LBB3_29
.LBB3_28:
	movb	$67, %cl
.LBB3_29:
	movb	%cl, 2(%rsi)
	movabsq	$30506441440650599, %rcx
	cmpq	%rcx, 64(%rsp)
	jne	.LBB3_31
	movb	$71, 3(%rsi)
	jmp	.LBB3_37
.LBB3_31:
	movabsq	$7598263500303858035, %rcx
	xorq	64(%rsp), %rcx
	movzwl	72(%rsp), %edx
	xorq	$99, %rdx
	orq	%rcx, %rdx
	je	.LBB3_32
	movabsq	$7019269490390230376, %rcx
	xorq	64(%rsp), %rcx
	movzwl	72(%rsp), %edx
	xorq	$110, %rdx
	orq	%rcx, %rdx
	je	.LBB3_34
	movabsq	$7888462861429992307, %rcx
	xorq	64(%rsp), %rcx
	movabsq	$27981962994347373, %rdx
	xorq	71(%rsp), %rdx
	orq	%rcx, %rdx
	jne	.LBB3_38
	movb	$75, 3(%rsi)
	jmp	.LBB3_37
.LBB3_32:
	movb	$83, 3(%rsi)
	jmp	.LBB3_37
.LBB3_34:
	movb	$72, 3(%rsi)
.LBB3_37:
	xorl	%eax, %eax
	jmp	.LBB3_38
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
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$1080, %rsp
	.seh_stackalloc 1080
	.seh_endprologue
	movzbl	1(%rcx), %eax
	cmpl	$67, %eax
	je	.LBB6_3
	cmpl	$65, %eax
	jne	.LBB6_20
	leaq	"??_C@_05HIFJDKLD@array?$AA@"(%rip), %r9
	jmp	.LBB6_4
.LBB6_3:
	leaq	"??_C@_0L@KOOFAJAP@coordinate?$AA@"(%rip), %r9
.LBB6_4:
	movzbl	2(%rcx), %edx
	xorl	%eax, %eax
	addl	$-67, %edx
	cmpl	$15, %edx
	ja	.LBB6_21
	leaq	.LJTI6_0(%rip), %r8
	movslq	(%r8,%rdx,4), %rdx
	addq	%r8, %rdx
	jmpq	*%rdx
.LBB6_6:
	leaq	"??_C@_07CMPFPFAH@complex?$AA@"(%rip), %rdx
	jmp	.LBB6_10
.LBB6_7:
	leaq	"??_C@_07CHFOACKJ@pattern?$AA@"(%rip), %rdx
	jmp	.LBB6_10
.LBB6_8:
	leaq	"??_C@_07LKHFMGFB@integer?$AA@"(%rip), %rdx
	jmp	.LBB6_10
.LBB6_9:
	leaq	"??_C@_04DGGKDJMA@real?$AA@"(%rip), %rdx
.LBB6_10:
	movzbl	3(%rcx), %ecx
	xorl	%eax, %eax
	addl	$-71, %ecx
	cmpl	$12, %ecx
	ja	.LBB6_21
	leaq	.LJTI6_1(%rip), %r8
	movslq	(%r8,%rcx,4), %rcx
	addq	%r8, %rcx
	jmpq	*%rcx
.LBB6_15:
	leaq	"??_C@_07LLDKJBMK@general?$AA@"(%rip), %rax
	jmp	.LBB6_16
.LBB6_14:
	leaq	"??_C@_0P@IOJEJAIP@skew?9symmetric?$AA@"(%rip), %rax
	jmp	.LBB6_16
.LBB6_13:
	leaq	"??_C@_09BLEJOLAE@hermitian?$AA@"(%rip), %rax
	jmp	.LBB6_16
.LBB6_12:
	leaq	"??_C@_09GAAPDMOJ@symmetric?$AA@"(%rip), %rax
.LBB6_16:
	movq	%rax, 40(%rsp)
	movq	%rdx, 32(%rsp)
	leaq	"??_C@_0M@HKJEMFMD@?$CFs?5?$CFs?5?$CFs?5?$CFs?$AA@"(%rip), %rdx
	leaq	"??_C@_06CGNOPMBC@matrix?$AA@"(%rip), %r8
	leaq	48(%rsp), %rsi
	movq	%rsi, %rcx
	callq	sprintf
	movq	%rsi, %rcx
	callq	strlen
	incl	%eax
	movslq	%eax, %rsi
	movq	%rsi, %rcx
	callq	malloc
	testq	%rax, %rax
	je	.LBB6_20
	leaq	48(%rsp), %r8
	movq	%rax, %rdi
	movq	%rax, %rcx
	movq	%rsi, %rdx
	callq	strcpy_s
	testl	%eax, %eax
	je	.LBB6_18
	movq	%rdi, %rcx
	callq	free
.LBB6_20:
	xorl	%eax, %eax
.LBB6_21:
	addq	$1080, %rsp
	popq	%rdi
	popq	%rsi
	retq
.LBB6_18:
	movq	%rdi, %rax
	jmp	.LBB6_21
	.section	.rdata,"dr",associative,mm_typecode_to_str
	.p2align	2, 0x0
.LJTI6_0:
	.long	.LBB6_6-.LJTI6_0
	.long	.LBB6_21-.LJTI6_0
	.long	.LBB6_21-.LJTI6_0
	.long	.LBB6_21-.LJTI6_0
	.long	.LBB6_21-.LJTI6_0
	.long	.LBB6_21-.LJTI6_0
	.long	.LBB6_8-.LJTI6_0
	.long	.LBB6_21-.LJTI6_0
	.long	.LBB6_21-.LJTI6_0
	.long	.LBB6_21-.LJTI6_0
	.long	.LBB6_21-.LJTI6_0
	.long	.LBB6_21-.LJTI6_0
	.long	.LBB6_21-.LJTI6_0
	.long	.LBB6_7-.LJTI6_0
	.long	.LBB6_21-.LJTI6_0
	.long	.LBB6_9-.LJTI6_0
.LJTI6_1:
	.long	.LBB6_15-.LJTI6_1
	.long	.LBB6_13-.LJTI6_1
	.long	.LBB6_21-.LJTI6_1
	.long	.LBB6_21-.LJTI6_1
	.long	.LBB6_14-.LJTI6_1
	.long	.LBB6_21-.LJTI6_1
	.long	.LBB6_21-.LJTI6_1
	.long	.LBB6_21-.LJTI6_1
	.long	.LBB6_21-.LJTI6_1
	.long	.LBB6_21-.LJTI6_1
	.long	.LBB6_21-.LJTI6_1
	.long	.LBB6_21-.LJTI6_1
	.long	.LBB6_12-.LJTI6_1
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
.LBB7_1:
	movq	%r15, %rcx
	movl	$1025, %edx
	movq	%r14, %r8
	callq	fgets
	movq	%rax, %rcx
	movl	$12, %eax
	testq	%rcx, %rcx
	je	.LBB7_9
	cmpb	$37, 48(%rsp)
	je	.LBB7_1
	movq	%rsi, 32(%rsp)
	leaq	"??_C@_08OOHKHLPO@?$CFd?5?$CFd?5?$CFd?$AA@"(%rip), %rdx
	leaq	48(%rsp), %rcx
	movq	%rbx, %r8
	movq	%rdi, %r9
	callq	sscanf
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$3, %ecx
	je	.LBB7_9
	leaq	"??_C@_08OOHKHLPO@?$CFd?5?$CFd?5?$CFd?$AA@"(%rip), %r15
	.p2align	4, 0x90
.LBB7_5:
	movq	%rsi, 32(%rsp)
	movq	%r14, %rcx
	movq	%r15, %rdx
	movq	%rbx, %r8
	movq	%rdi, %r9
	callq	fscanf
	cmpl	$-1, %eax
	je	.LBB7_8
	cmpl	$3, %eax
	jne	.LBB7_5
	xorl	%eax, %eax
	jmp	.LBB7_9
.LBB7_8:
	movl	$12, %eax
.LBB7_9:
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

	.def	mm_is_valid;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,mm_is_valid
	.globl	mm_is_valid
	.p2align	4, 0x90
mm_is_valid:
	cmpb	$77, (%rcx)
	jne	.LBB10_4
	movzbl	2(%rcx), %eax
	cmpb	$65, 1(%rcx)
	jne	.LBB10_5
	cmpb	$80, %al
	jne	.LBB10_5
.LBB10_4:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB10_5:
	movzbl	%al, %eax
	cmpl	$80, %eax
	je	.LBB10_8
	cmpl	$82, %eax
	jne	.LBB10_9
	cmpb	$72, 3(%rcx)
	setne	%al
	movzbl	%al, %eax
	retq
.LBB10_8:
	movzbl	3(%rcx), %eax
	cmpb	$72, %al
	setne	%cl
	cmpb	$75, %al
	setne	%al
	andb	%cl, %al
	movzbl	%al, %eax
	retq
.LBB10_9:
	movb	$1, %al
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
.LBB13_1:
	movq	%r14, %rcx
	movl	$1025, %edx
	movq	%rbx, %r8
	callq	fgets
	movq	%rax, %rcx
	movl	$12, %eax
	testq	%rcx, %rcx
	je	.LBB13_9
	cmpb	$37, 32(%rsp)
	je	.LBB13_1
	leaq	"??_C@_05OKMLJOMC@?$CFd?5?$CFd?$AA@"(%rip), %rdx
	leaq	32(%rsp), %rcx
	movq	%rdi, %r8
	movq	%rsi, %r9
	callq	sscanf
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$2, %ecx
	je	.LBB13_9
	leaq	"??_C@_05OKMLJOMC@?$CFd?5?$CFd?$AA@"(%rip), %r14
	.p2align	4, 0x90
.LBB13_5:
	movq	%rbx, %rcx
	movq	%r14, %rdx
	movq	%rdi, %r8
	movq	%rsi, %r9
	callq	fscanf
	cmpl	$-1, %eax
	je	.LBB13_8
	cmpl	$2, %eax
	jne	.LBB13_5
	xorl	%eax, %eax
	jmp	.LBB13_9
.LBB13_8:
	movl	$12, %eax
.LBB13_9:
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
	je	.LBB15_21
	cmpl	$82, %eax
	je	.LBB15_12
	cmpl	$80, %eax
	jne	.LBB15_30
	xorl	%edi, %edi
	testl	%r9d, %r9d
	jle	.LBB15_31
	movl	%r9d, %r12d
	cmpl	$1, %r9d
	je	.LBB15_9
	movl	%r12d, %r13d
	shrl	%r13d
	leaq	"??_C@_05OKMLJOMC@?$CFd?5?$CFd?$AA@"(%rip), %rbx
	movq	%rbp, %r14
	movq	160(%rsp), %r15
	movl	$12, %edi
	.p2align	4, 0x90
.LBB15_6:
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	movq	%r15, %r8
	movq	%r14, %r9
	callq	fscanf
	cmpl	$2, %eax
	jne	.LBB15_31
	leaq	4(%r15), %r8
	leaq	4(%r14), %r9
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	callq	fscanf
	cmpl	$2, %eax
	jne	.LBB15_31
	addq	$8, %r15
	addq	$8, %r14
	decq	%r13
	jne	.LBB15_6
.LBB15_9:
	movl	%r12d, %eax
	andl	$-2, %eax
	cmpq	%r12, %rax
	je	.LBB15_11
	movq	160(%rsp), %rcx
	leaq	(%rcx,%rax,4), %r8
	leaq	(,%rax,4), %r9
	addq	%rbp, %r9
	leaq	"??_C@_05OKMLJOMC@?$CFd?5?$CFd?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	fscanf
	movl	$12, %edi
	cmpl	$2, %eax
	jne	.LBB15_31
	jmp	.LBB15_11
.LBB15_12:
	xorl	%edi, %edi
	testl	%r9d, %r9d
	jle	.LBB15_31
	movl	%r9d, %r12d
	cmpl	$1, %r9d
	je	.LBB15_18
	movl	%r12d, %r13d
	shrl	%r13d
	leaq	"??_C@_0L@DPCLJHDN@?$CFd?5?$CFd?5?$CFlg?6?$AA@"(%rip), %rbx
	movq	176(%rsp), %rbp
	movq	168(%rsp), %r14
	movq	160(%rsp), %r15
	movl	$12, %edi
	.p2align	4, 0x90
.LBB15_15:
	movq	%rbp, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	movq	%r15, %r8
	movq	%r14, %r9
	callq	fscanf
	cmpl	$3, %eax
	jne	.LBB15_31
	leaq	4(%r15), %r8
	leaq	4(%r14), %r9
	leaq	8(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	callq	fscanf
	cmpl	$3, %eax
	jne	.LBB15_31
	addq	$8, %r15
	addq	$8, %r14
	addq	$16, %rbp
	decq	%r13
	jne	.LBB15_15
.LBB15_18:
	movl	%r12d, %eax
	andl	$-2, %eax
	cmpq	%r12, %rax
	je	.LBB15_11
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
	je	.LBB15_11
	jmp	.LBB15_31
.LBB15_21:
	xorl	%edi, %edi
	testl	%r9d, %r9d
	jle	.LBB15_31
	movl	%r9d, %r13d
	shrl	%r13d
	movl	%r9d, 52(%rsp)
	cmpl	$1, %r9d
	je	.LBB15_27
	leaq	"??_C@_0O@MJODDEOM@?$CFd?5?$CFd?5?$CFlg?5?$CFlg?$AA@"(%rip), %rbx
	movq	%r13, %r12
	movq	168(%rsp), %r14
	movq	160(%rsp), %r15
	movq	176(%rsp), %rbp
	movl	$12, %edi
	.p2align	4, 0x90
.LBB15_24:
	leaq	8(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	%rbp, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	movq	%r15, %r8
	movq	%r14, %r9
	callq	fscanf
	cmpl	$4, %eax
	jne	.LBB15_31
	leaq	4(%r15), %r8
	leaq	4(%r14), %r9
	leaq	16(%rbp), %rax
	leaq	24(%rbp), %rcx
	movq	%rcx, 40(%rsp)
	movq	%rax, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	callq	fscanf
	cmpl	$4, %eax
	jne	.LBB15_31
	addq	$32, %rbp
	addq	$8, %r15
	addq	$8, %r14
	decq	%r12
	jne	.LBB15_24
.LBB15_27:
	movl	52(%rsp), %ecx
	movl	%ecx, %eax
	andl	$-2, %eax
	cmpq	%rcx, %rax
	je	.LBB15_11
	movq	160(%rsp), %rcx
	leaq	(%rcx,%rax,4), %r8
	movq	168(%rsp), %rcx
	leaq	(%rcx,%rax,4), %r9
	shlq	$5, %r13
	movq	176(%rsp), %rcx
	leaq	(%rcx,%r13), %rax
	addq	%r13, %rcx
	addq	$8, %rcx
	movq	%rcx, 40(%rsp)
	movq	%rax, 32(%rsp)
	leaq	"??_C@_0O@MJODDEOM@?$CFd?5?$CFd?5?$CFlg?5?$CFlg?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	fscanf
	movl	$12, %edi
	cmpl	$4, %eax
	jne	.LBB15_31
.LBB15_11:
	xorl	%edi, %edi
	jmp	.LBB15_31
.LBB15_30:
	movl	$15, %edi
.LBB15_31:
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
	je	.LBB16_4
	cmpl	$80, %edx
	je	.LBB16_5
	cmpl	$67, %edx
	jne	.LBB16_7
	movq	96(%rsp), %rdx
	movq	%rdx, 40(%rsp)
	movq	%r9, 32(%rsp)
	leaq	"??_C@_0O@MJODDEOM@?$CFd?5?$CFd?5?$CFlg?5?$CFlg?$AA@"(%rip), %rdx
	movq	%rax, %r9
	callq	fscanf
	movl	%eax, %ecx
	movl	$12, %eax
	cmpl	$4, %ecx
	je	.LBB16_6
	jmp	.LBB16_8
.LBB16_5:
	leaq	"??_C@_05OKMLJOMC@?$CFd?5?$CFd?$AA@"(%rip), %rdx
	movq	%rax, %r9
	callq	fscanf
	movl	%eax, %ecx
	movl	$12, %eax
	cmpl	$2, %ecx
	je	.LBB16_6
	jmp	.LBB16_8
.LBB16_4:
	movq	%r9, 32(%rsp)
	leaq	"??_C@_0L@DPCLJHDN@?$CFd?5?$CFd?5?$CFlg?6?$AA@"(%rip), %rdx
	movq	%rax, %r9
	callq	fscanf
	movl	%eax, %ecx
	movl	$12, %eax
	cmpl	$3, %ecx
	jne	.LBB16_8
.LBB16_6:
	xorl	%eax, %eax
	jmp	.LBB16_8
.LBB16_7:
	movl	$15, %eax
.LBB16_8:
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
	movq	%rcx, %rsi
	leaq	"??_C@_05MHOFLBOO@stdin?$AA@"(%rip), %rdx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB17_1
	leaq	"??_C@_01KDCPPGHE@r?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	fopen
	movq	%rax, %rsi
	testq	%rax, %rax
	jne	.LBB17_2
	movl	$11, %eax
	jmp	.LBB17_34
.LBB17_1:
	xorl	%ecx, %ecx
	callq	__acrt_iob_func
	movq	%rax, %rsi
.LBB17_2:
	movq	1224(%rsp), %rdi
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	mm_read_banner
	testl	%eax, %eax
	jne	.LBB17_34
	movl	$15, %eax
	cmpb	$77, (%rdi)
	jne	.LBB17_34
	movzbl	1(%rdi), %ecx
	movzbl	2(%rdi), %edx
	cmpb	$65, %cl
	jne	.LBB17_6
	cmpb	$80, %dl
	jne	.LBB17_6
.LBB17_34:
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
.LBB17_6:
	movzbl	%dl, %edx
	cmpl	$80, %edx
	je	.LBB17_12
	cmpl	$82, %edx
	jne	.LBB17_9
	cmpb	$72, 3(%rdi)
	je	.LBB17_34
.LBB17_9:
	cmpb	$67, %cl
	jne	.LBB17_34
.LBB17_15:
	movq	1208(%rsp), %r13
	movq	1200(%rsp), %rbp
	movl	$0, (%rbx)
	movl	$0, (%r14)
	movl	$0, (%r15)
	leaq	64(%rsp), %r12
	.p2align	4, 0x90
.LBB17_16:
	movq	%r12, %rcx
	movl	$1025, %edx
	movq	%rsi, %r8
	callq	fgets
	testq	%rax, %rax
	je	.LBB17_22
	cmpb	$37, 64(%rsp)
	je	.LBB17_16
	movq	%rbx, 32(%rsp)
	leaq	"??_C@_08OOHKHLPO@?$CFd?5?$CFd?5?$CFd?$AA@"(%rip), %rdx
	leaq	64(%rsp), %rcx
	movq	%r15, %r8
	movq	%r14, %r9
	callq	sscanf
	cmpl	$3, %eax
	jne	.LBB17_19
.LBB17_23:
	movslq	(%rbx), %rbx
	leaq	(,%rbx,4), %r14
	movq	%r14, %rcx
	callq	malloc
	movq	%rax, (%rbp)
	movq	%r14, %rcx
	callq	malloc
	movq	%rax, %r14
	movq	%rax, (%r13)
	movq	1216(%rsp), %r13
	movq	$0, (%r13)
	movzbl	2(%rdi), %eax
	cmpl	$82, %eax
	je	.LBB17_28
	cmpl	$80, %eax
	je	.LBB17_29
	cmpl	$67, %eax
	jne	.LBB17_31
	movq	%rbx, %rcx
	shlq	$4, %rcx
	jmp	.LBB17_27
.LBB17_12:
	cmpb	$67, %cl
	jne	.LBB17_34
	movzbl	3(%rdi), %ecx
	cmpl	$72, %ecx
	je	.LBB17_34
	cmpl	$75, %ecx
	je	.LBB17_34
	jmp	.LBB17_15
.LBB17_19:
	leaq	"??_C@_08OOHKHLPO@?$CFd?5?$CFd?5?$CFd?$AA@"(%rip), %r12
.LBB17_20:
	movq	%rbx, 32(%rsp)
	movq	%rsi, %rcx
	movq	%r12, %rdx
	movq	%r15, %r8
	movq	%r14, %r9
	callq	fscanf
	cmpl	$3, %eax
	je	.LBB17_23
	cmpl	$-1, %eax
	jne	.LBB17_20
.LBB17_22:
	movl	$12, %eax
	jmp	.LBB17_34
.LBB17_29:
	movq	(%rbp), %rax
	movq	%rdi, 56(%rsp)
	movq	%r14, 40(%rsp)
	movq	%rax, 32(%rsp)
	movq	$0, 48(%rsp)
	jmp	.LBB17_30
.LBB17_28:
	movq	%rbx, %rcx
	shlq	$3, %rcx
.LBB17_27:
	callq	malloc
	movq	%rax, (%r13)
	movq	(%rbp), %rcx
	movq	%rdi, 56(%rsp)
	movq	%rax, 48(%rsp)
	movq	%r14, 40(%rsp)
	movq	%rcx, 32(%rsp)
.LBB17_30:
	movq	%rsi, %rcx
	movl	%ebx, %r9d
	callq	mm_read_mtx_crd_data
	testl	%eax, %eax
	jne	.LBB17_34
.LBB17_31:
	xorl	%ecx, %ecx
	callq	__acrt_iob_func
	cmpq	%rax, %rsi
	je	.LBB17_33
	movq	%rsi, %rcx
	callq	fclose
.LBB17_33:
	xorl	%eax, %eax
	jmp	.LBB17_34
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
	je	.LBB19_1
	leaq	"??_C@_01NOFIACDB@w?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	fopen
	movq	%rax, %rsi
	testq	%rax, %rax
	jne	.LBB19_2
	movl	$17, %edi
	jmp	.LBB19_31
.LBB19_1:
	movl	$1, %ecx
	callq	__acrt_iob_func
	movq	%rax, %rsi
.LBB19_2:
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
	je	.LBB19_14
	cmpl	$80, %eax
	je	.LBB19_21
	cmpl	$67, %eax
	jne	.LBB19_32
	testl	%edi, %edi
	jle	.LBB19_28
	movl	%edi, %ebx
	cmpl	$4, %edi
	jb	.LBB19_9
	leaq	(,%rbx,4), %r14
	andq	$-16, %r14
	xorl	%ebp, %ebp
	leaq	"??_C@_0BH@GGGAHAIE@?$CFd?5?$CFd?5?$CF20?416g?5?$CF20?416g?6?$AA@"(%rip), %rdi
	.p2align	4, 0x90
.LBB19_8:
	movl	(%r12,%rbp), %r8d
	movl	(%r15,%rbp), %r9d
	movups	(%r13,%rbp,4), %xmm0
	movups	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	movl	4(%r12,%rbp), %r8d
	movl	4(%r15,%rbp), %r9d
	movups	16(%r13,%rbp,4), %xmm0
	movups	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	movl	8(%r12,%rbp), %r8d
	movl	8(%r15,%rbp), %r9d
	movups	32(%r13,%rbp,4), %xmm0
	movups	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	movl	12(%r12,%rbp), %r8d
	movl	12(%r15,%rbp), %r9d
	movups	48(%r13,%rbp,4), %xmm0
	movups	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	addq	$16, %rbp
	cmpq	%rbp, %r14
	jne	.LBB19_8
.LBB19_9:
	movl	%ebx, %r14d
	andl	$-4, %r14d
	cmpq	%rbx, %r14
	je	.LBB19_28
	movl	%ebx, %eax
	shrl	$2, %eax
	shlq	$6, %rax
	addq	%rax, %r13
	addq	$8, %r13
	leaq	"??_C@_0BH@GGGAHAIE@?$CFd?5?$CFd?5?$CF20?416g?5?$CF20?416g?6?$AA@"(%rip), %rdi
	.p2align	4, 0x90
.LBB19_11:
	movl	(%r12,%r14,4), %r8d
	movl	(%r15,%r14,4), %r9d
	movups	-8(%r13), %xmm0
	movups	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	incq	%r14
	addq	$16, %r13
	cmpq	%r14, %rbx
	jne	.LBB19_11
	jmp	.LBB19_28
.LBB19_21:
	testl	%edi, %edi
	jle	.LBB19_28
	movl	%edi, %ebx
	cmpl	$8, %edi
	jb	.LBB19_25
	leaq	(,%rbx,4), %r14
	andq	$-32, %r14
	xorl	%r13d, %r13d
	leaq	"??_C@_06IPGPIAII@?$CFd?5?$CFd?6?$AA@"(%rip), %rdi
	.p2align	4, 0x90
.LBB19_24:
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
	jne	.LBB19_24
.LBB19_25:
	movl	%ebx, %r14d
	andl	$-8, %r14d
	cmpq	%rbx, %r14
	je	.LBB19_28
	leaq	"??_C@_06IPGPIAII@?$CFd?5?$CFd?6?$AA@"(%rip), %rdi
	.p2align	4, 0x90
.LBB19_27:
	movl	(%r12,%r14,4), %r8d
	movl	(%r15,%r14,4), %r9d
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	incq	%r14
	cmpq	%r14, %rbx
	jne	.LBB19_27
	jmp	.LBB19_28
.LBB19_14:
	testl	%edi, %edi
	jle	.LBB19_28
	movl	%edi, %ebx
	cmpl	$8, %edi
	jb	.LBB19_18
	leaq	(,%rbx,4), %r14
	andq	$-32, %r14
	xorl	%ebp, %ebp
	leaq	"??_C@_0P@POJOCMNE@?$CFd?5?$CFd?5?$CF20?416g?6?$AA@"(%rip), %rdi
	.p2align	4, 0x90
.LBB19_17:
	movl	(%r12,%rbp), %r8d
	movl	(%r15,%rbp), %r9d
	movsd	(%r13,%rbp,2), %xmm0
	movsd	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	movl	4(%r12,%rbp), %r8d
	movl	4(%r15,%rbp), %r9d
	movsd	8(%r13,%rbp,2), %xmm0
	movsd	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	movl	8(%r12,%rbp), %r8d
	movl	8(%r15,%rbp), %r9d
	movsd	16(%r13,%rbp,2), %xmm0
	movsd	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	movl	12(%r12,%rbp), %r8d
	movl	12(%r15,%rbp), %r9d
	movsd	24(%r13,%rbp,2), %xmm0
	movsd	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	movl	16(%r12,%rbp), %r8d
	movl	16(%r15,%rbp), %r9d
	movsd	32(%r13,%rbp,2), %xmm0
	movsd	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	movl	20(%r12,%rbp), %r8d
	movl	20(%r15,%rbp), %r9d
	movsd	40(%r13,%rbp,2), %xmm0
	movsd	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	movl	24(%r12,%rbp), %r8d
	movl	24(%r15,%rbp), %r9d
	movsd	48(%r13,%rbp,2), %xmm0
	movsd	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	movl	28(%r12,%rbp), %r8d
	movl	28(%r15,%rbp), %r9d
	movsd	56(%r13,%rbp,2), %xmm0
	movsd	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	addq	$32, %rbp
	cmpq	%rbp, %r14
	jne	.LBB19_17
.LBB19_18:
	movl	%ebx, %r14d
	andl	$-8, %r14d
	cmpq	%rbx, %r14
	je	.LBB19_28
	leaq	"??_C@_0P@POJOCMNE@?$CFd?5?$CFd?5?$CF20?416g?6?$AA@"(%rip), %rdi
	.p2align	4, 0x90
.LBB19_20:
	movl	(%r12,%r14,4), %r8d
	movl	(%r15,%r14,4), %r9d
	movsd	(%r13,%r14,8), %xmm0
	movsd	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	fprintf
	incq	%r14
	cmpq	%r14, %rbx
	jne	.LBB19_20
.LBB19_28:
	movl	$1, %ecx
	callq	__acrt_iob_func
	xorl	%edi, %edi
	cmpq	%rax, %rsi
	je	.LBB19_31
.LBB19_30:
	movq	%rsi, %rcx
	callq	fclose
.LBB19_31:
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
.LBB19_32:
	movl	$1, %ecx
	callq	__acrt_iob_func
	movl	$15, %edi
	cmpq	%rax, %rsi
	jne	.LBB19_30
	jmp	.LBB19_31
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
	je	.LBB20_4
	movq	%rax, %rdi
	movq	%rax, %rcx
	movq	%rbx, %rdx
	movq	%rsi, %r8
	callq	strcpy_s
	testl	%eax, %eax
	je	.LBB20_2
	movq	%rdi, %rcx
	callq	free
.LBB20_4:
	xorl	%eax, %eax
	jmp	.LBB20_5
.LBB20_2:
	movq	%rdi, %rax
.LBB20_5:
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	converfloatToFloat;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,converfloatToFloat
	.globl	converfloatToFloat
	.p2align	4, 0x90
converfloatToFloat:
.seh_proc converfloatToFloat
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	testl	%r8d, %r8d
	jle	.LBB21_2
	movq	%rcx, %r9
	decl	%r8d
	movq	%rdx, 32(%rsp)
	movq	%r8, 48(%rsp)
	movq	$0, 40(%rsp)
	leaq	.L.kmpc_loc.0.0.13(%rip), %rcx
	leaq	converfloatToFloat.extracted(%rip), %r8
	movl	$4, %edx
	callq	__kmpc_fork_call
.LBB21_2:
	nop
	addq	$56, %rsp
	retq
	.seh_endproc

	.def	csc_matrix_vector;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,csc_matrix_vector
	.globl	csc_matrix_vector
	.p2align	4, 0x90
csc_matrix_vector:
.seh_proc csc_matrix_vector
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, %rax
	movq	%r9, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%rdx, 32(%rsp)
	leaq	.L.kmpc_loc.0.0.21(%rip), %rcx
	leaq	csc_matrix_vector.extracted(%rip), %r8
	movl	$4, %edx
	movq	%rax, %r9
	callq	__kmpc_fork_call
	nop
	addq	$56, %rsp
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
.seh_proc Value_vector
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movl	8(%rcx), %eax
	testl	%eax, %eax
	jle	.LBB23_2
	movq	%rcx, %r9
	decl	%eax
	movq	%r8, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	%rax, 56(%rsp)
	movq	$0, 48(%rsp)
	leaq	.L.kmpc_loc.0.0.27(%rip), %rcx
	leaq	Value_vector.extracted(%rip), %r8
	movl	$5, %edx
	callq	__kmpc_fork_call
.LBB23_2:
	nop
	addq	$72, %rsp
	retq
	.seh_endproc

	.def	main;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,main
	.globl	main
	.p2align	4, 0x90
main:
.seh_proc main
	pushq	%rbp
	.seh_pushreg %rbp
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
	subq	$168, %rsp
	.seh_stackalloc 168
	leaq	128(%rsp), %rbp
	.seh_setframe %rbp, 128
	movaps	%xmm8, 16(%rbp)
	.seh_savexmm %xmm8, 144
	movaps	%xmm7, (%rbp)
	.seh_savexmm %xmm7, 128
	movaps	%xmm6, -16(%rbp)
	.seh_savexmm %xmm6, 112
	.seh_endprologue
	stmxcsr	-96(%rbp)
	orl	$32832, -96(%rbp)
	ldmxcsr	-96(%rbp)
	cmpl	$1, %ecx
	jle	.LBB24_65
	movq	8(%rdx), %rcx
	subq	$32, %rsp
	leaq	"??_C@_01KDCPPGHE@r?$AA@"(%rip), %rdx
	callq	fopen
	addq	$32, %rsp
	testq	%rax, %rax
	je	.LBB24_41
	movq	%rax, %r14
	subq	$32, %rsp
	leaq	-32(%rbp), %rdx
	movq	%rax, %rcx
	callq	mm_read_banner
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.LBB24_66
	cmpb	$67, -30(%rbp)
	jne	.LBB24_6
	cmpb	$77, -32(%rbp)
	jne	.LBB24_6
	cmpb	$67, -31(%rbp)
	je	.LBB24_67
.LBB24_6:
	movq	%rsp, %r15
	movl	$1040, %eax
	callq	__chkstk
	subq	%rax, %rsp
	movq	%rsp, %rsi
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	.p2align	4, 0x90
.LBB24_7:
	subq	$32, %rsp
	movq	%rsi, %rcx
	movl	$1025, %edx
	movq	%r14, %r8
	callq	fgets
	addq	$32, %rsp
	testq	%rax, %rax
	je	.LBB24_40
	cmpb	$37, (%rsi)
	je	.LBB24_7
	subq	$48, %rsp
	leaq	-20(%rbp), %r13
	movq	%r13, 32(%rsp)
	leaq	"??_C@_08OOHKHLPO@?$CFd?5?$CFd?5?$CFd?$AA@"(%rip), %rdx
	leaq	-28(%rbp), %r8
	leaq	-24(%rbp), %r9
	movq	%rsi, %rcx
	callq	sscanf
	addq	$48, %rsp
	cmpl	$3, %eax
	jne	.LBB24_37
.LBB24_10:
	movq	%r15, %rsp
	movslq	-20(%rbp), %rsi
	leaq	(,%rsi,4), %r15
	subq	$32, %rsp
	movq	%r15, %rcx
	callq	malloc
	addq	$32, %rsp
	movq	%rax, %rdi
	subq	$32, %rsp
	movq	%r15, %rcx
	callq	malloc
	addq	$32, %rsp
	movq	%rax, %rbx
	leaq	(,%rsi,8), %rcx
	subq	$32, %rsp
	callq	malloc
	addq	$32, %rsp
	movq	%rax, %r12
	subq	$32, %rsp
	movq	%r15, %rcx
	callq	malloc
	addq	$32, %rsp
	movq	%rax, -112(%rbp)
	subq	$32, %rsp
	movq	%r15, %rcx
	callq	malloc
	addq	$32, %rsp
	movq	%rax, -48(%rbp)
	testq	%rsi, %rsi
	movq	%rdi, -120(%rbp)
	movq	%r12, -104(%rbp)
	jle	.LBB24_13
	leal	-1(%rsi), %eax
	subq	$80, %rsp
	movq	%r12, 48(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%rdi, 32(%rsp)
	movq	%rax, 64(%rsp)
	movq	$0, 56(%rsp)
	leaq	.L.kmpc_loc.0.0.56(%rip), %rcx
	leaq	main.extracted.54(%rip), %r8
	movl	$6, %edx
	movq	%r14, %r9
	callq	__kmpc_fork_call
	addq	$80, %rsp
	movl	-20(%rbp), %esi
	testl	%esi, %esi
	jle	.LBB24_13
	decl	%esi
	subq	$64, %rsp
	movq	-48(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	%rsi, 48(%rsp)
	movq	$0, 40(%rsp)
	leaq	.L.kmpc_loc.0.0.13(%rip), %rcx
	leaq	converfloatToFloat.extracted(%rip), %r8
	movl	$4, %edx
	movq	%r12, %r9
	callq	__kmpc_fork_call
	addq	$64, %rsp
	movl	-20(%rbp), %esi
.LBB24_13:
	movl	-28(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -36(%rbp)
	movslq	%eax, %r14
	leaq	4(,%r14,4), %rcx
	subq	$32, %rsp
	callq	malloc
	addq	$32, %rsp
	movq	%rax, %r12
	movl	$0, (%rax)
	testl	%esi, %esi
	jle	.LBB24_42
	movl	%esi, %eax
	decq	%rax
	leaq	20(%r12), %rcx
	xorl	%r11d, %r11d
	leaq	.LJTI24_0(%rip), %r8
	xorl	%r9d, %r9d
	jmp	.LBB24_17
	.p2align	4, 0x90
.LBB24_15:
	movl	%r11d, %edx
.LBB24_16:
	leaq	1(%r9), %r10
	movl	%edx, %r11d
	cmpq	%rax, %r9
	movq	%r10, %r9
	je	.LBB24_43
.LBB24_17:
	movl	(%rbx,%r9,4), %edx
	cmpl	%r11d, %edx
	je	.LBB24_15
	jle	.LBB24_16
	movslq	%edx, %r10
	movslq	%r11d, %r11
	subq	%r11, %r10
	cmpq	$8, %r10
	jb	.LBB24_22
	movq	%r10, %rdi
	shrq	$3, %rdi
	movd	%r9d, %xmm0
	pshufd	$0, %xmm0, %xmm0
	leaq	(%rcx,%r11,4), %r15
	.p2align	4, 0x90
.LBB24_21:
	movdqu	%xmm0, -16(%r15)
	movdqu	%xmm0, (%r15)
	addq	$32, %r15
	decq	%rdi
	jne	.LBB24_21
.LBB24_22:
	movl	%r10d, %edi
	andl	$7, %edi
	decq	%rdi
	cmpq	$6, %rdi
	ja	.LBB24_16
	andq	$-8, %r10
	movslq	(%r8,%rdi,4), %rdi
	addq	%r8, %rdi
	jmpq	*%rdi
.LBB24_24:
	addq	%r11, %r10
	jmp	.LBB24_36
.LBB24_25:
	addq	%r11, %r10
	jmp	.LBB24_32
.LBB24_26:
	addq	%r11, %r10
	jmp	.LBB24_34
.LBB24_27:
	addq	%r11, %r10
	jmp	.LBB24_33
.LBB24_28:
	addq	%r11, %r10
	jmp	.LBB24_35
.LBB24_29:
	addq	%r11, %r10
	jmp	.LBB24_31
.LBB24_30:
	addq	%r11, %r10
	movl	%r9d, 28(%r12,%r10,4)
.LBB24_31:
	movl	%r9d, 24(%r12,%r10,4)
.LBB24_32:
	movl	%r9d, 20(%r12,%r10,4)
.LBB24_33:
	movl	%r9d, 16(%r12,%r10,4)
.LBB24_34:
	movl	%r9d, 12(%r12,%r10,4)
.LBB24_35:
	movl	%r9d, 8(%r12,%r10,4)
.LBB24_36:
	movl	%r9d, 4(%r12,%r10,4)
	jmp	.LBB24_16
.LBB24_37:
	leaq	"??_C@_08OOHKHLPO@?$CFd?5?$CFd?5?$CFd?$AA@"(%rip), %rsi
	leaq	-28(%rbp), %rdi
	leaq	-24(%rbp), %rbx
	.p2align	4, 0x90
.LBB24_38:
	subq	$48, %rsp
	movq	%r13, 32(%rsp)
	movq	%r14, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %r8
	movq	%rbx, %r9
	callq	fscanf
	addq	$48, %rsp
	cmpl	$3, %eax
	je	.LBB24_10
	cmpl	$-1, %eax
	jne	.LBB24_38
.LBB24_40:
	movq	%r15, %rsp
.LBB24_41:
	subq	$32, %rsp
	movl	$1, %ecx
	callq	exit
.LBB24_42:
	xorl	%edx, %edx
.LBB24_43:
	movslq	-40(%rbp), %r15
	cmpl	-36(%rbp), %edx
	jge	.LBB24_62
	movslq	%edx, %rcx
	movq	%r14, %rax
	subq	%rcx, %rax
	cmpq	$8, %rax
	jb	.LBB24_47
	movq	%rax, %rdx
	shrq	$3, %rdx
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0
	leaq	(%r12,%rcx,4), %r8
	addq	$20, %r8
	.p2align	4, 0x90
.LBB24_46:
	movdqu	%xmm0, -16(%r8)
	movdqu	%xmm0, (%r8)
	addq	$32, %r8
	decq	%rdx
	jne	.LBB24_46
.LBB24_47:
	movl	%eax, %edx
	andl	$7, %edx
	decq	%rdx
	cmpq	$6, %rdx
	ja	.LBB24_62
	andq	$-8, %rax
	leaq	.LJTI24_1(%rip), %r8
	movslq	(%r8,%rdx,4), %rdx
	addq	%r8, %rdx
	jmpq	*%rdx
.LBB24_49:
	addq	%rcx, %rax
	jmp	.LBB24_61
.LBB24_50:
	addq	%rcx, %rax
	jmp	.LBB24_57
.LBB24_51:
	addq	%rcx, %rax
	jmp	.LBB24_59
.LBB24_52:
	addq	%rcx, %rax
	jmp	.LBB24_58
.LBB24_53:
	addq	%rcx, %rax
	jmp	.LBB24_60
.LBB24_54:
	addq	%rcx, %rax
	jmp	.LBB24_56
.LBB24_55:
	addq	%rcx, %rax
	movl	%esi, 28(%r12,%rax,4)
.LBB24_56:
	movl	%esi, 24(%r12,%rax,4)
.LBB24_57:
	movl	%esi, 20(%r12,%rax,4)
.LBB24_58:
	movl	%esi, 16(%r12,%rax,4)
.LBB24_59:
	movl	%esi, 12(%r12,%rax,4)
.LBB24_60:
	movl	%esi, 8(%r12,%rax,4)
.LBB24_61:
	movl	%esi, 4(%r12,%rax,4)
.LBB24_62:
	subq	$32, %rsp
	leaq	.Lstr(%rip), %rcx
	callq	puts
	addq	$32, %rsp
	shlq	$2, %r14
	subq	$32, %rsp
	movq	%r14, %rcx
	callq	malloc
	addq	$32, %rsp
	movq	%rax, %rdi
	leaq	(,%r15,4), %rcx
	subq	$32, %rsp
	callq	malloc
	addq	$32, %rsp
	movq	%rax, %r14
	subq	$32, %rsp
	xorl	%ecx, %ecx
	callq	_time64
	movl	%eax, %ecx
	callq	srand
	addq	$32, %rsp
	movl	-24(%rbp), %eax
	subq	$80, %rsp
	movq	%r14, 64(%rsp)
	movq	%rdi, 56(%rsp)
	movq	-112(%rbp), %rcx
	movq	%rcx, 48(%rsp)
	movq	%r13, 40(%rsp)
	movq	%rcx, %r13
	movq	%rax, 32(%rsp)
	leaq	.L.kmpc_loc.0.0.49(%rip), %rcx
	leaq	main.extracted(%rip), %r8
	leaq	-28(%rbp), %r9
	movl	$6, %edx
	callq	__kmpc_fork_call
	addq	$48, %rsp
	callq	omp_get_wtime
	addq	$32, %rsp
	movdqa	%xmm0, %xmm7
	movl	%r15d, -96(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	%esi, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-120(%rbp), %r15
	movq	%r15, -72(%rbp)
	movq	%r12, -64(%rbp)
	movq	%rbx, -56(%rbp)
	testl	%esi, %esi
	jle	.LBB24_64
	leal	-1(%rsi), %eax
	subq	$64, %rsp
	movq	%r13, 40(%rsp)
	movq	%rdi, 32(%rsp)
	movq	%rax, 56(%rsp)
	movq	$0, 48(%rsp)
	leaq	.L.kmpc_loc.0.0.27(%rip), %rcx
	leaq	Value_vector.extracted(%rip), %r8
	leaq	-96(%rbp), %r9
	movl	$5, %edx
	callq	__kmpc_fork_call
	addq	$64, %rsp
.LBB24_64:
	subq	$32, %rsp
	callq	omp_get_wtime
	addq	$32, %rsp
	movdqa	%xmm0, %xmm6
	subsd	%xmm7, %xmm6
	subq	$32, %rsp
	leaq	"??_C@_0DF@GOFACPEA@Time?5elapsed?5to?5form?5the?5new?5vec@"(%rip), %rcx
	movapd	%xmm6, %xmm1
	movq	%xmm6, %rdx
	callq	printf
	callq	omp_get_wtime
	addq	$32, %rsp
	movdqa	%xmm0, %xmm7
	movl	-40(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	%esi, -88(%rbp)
	movq	-48(%rbp), %rsi
	movq	%rsi, -80(%rbp)
	movq	%r15, -72(%rbp)
	movq	%r12, -64(%rbp)
	movq	%rbx, -56(%rbp)
	subq	$64, %rsp
	movq	%rsi, 48(%rsp)
	movq	%r13, 40(%rsp)
	movq	%r14, 32(%rsp)
	leaq	.L.kmpc_loc.0.0.21(%rip), %rcx
	leaq	csc_matrix_vector.extracted(%rip), %r8
	leaq	-96(%rbp), %r9
	movl	$4, %edx
	callq	__kmpc_fork_call
	addq	$32, %rsp
	callq	omp_get_wtime
	addq	$32, %rsp
	movdqa	%xmm0, %xmm8
	subsd	%xmm7, %xmm8
	subq	$32, %rsp
	leaq	"??_C@_0DK@NHMCGP@Time?5elapsed?5for?5multiplying?5and@"(%rip), %rcx
	movapd	%xmm8, %xmm1
	movq	%xmm8, %rdx
	callq	printf
	addq	$32, %rsp
	addsd	%xmm6, %xmm8
	subq	$32, %rsp
	leaq	"??_C@_0CA@ECDFEOFC@Time?5elapsed?5TOTAL?3?5?$CFf?5seconds?6?$AA@"(%rip), %rcx
	movapd	%xmm8, %xmm1
	movq	%xmm8, %rdx
	callq	printf
	addq	$32, %rsp
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %r8d
	movl	-28(%rbp), %edx
	subq	$32, %rsp
	leaq	"??_C@_0CA@MGJFEOKB@rows?$DN?$CFd?5columns?$DN?$CFd?5non?9zero?$DN?$CFd?6?$AA@"(%rip), %rcx
	callq	printf
	movq	%r15, %rcx
	callq	free
	movq	%rbx, %rcx
	callq	free
	movq	-104(%rbp), %rcx
	callq	free
	movq	%rsi, %rcx
	callq	free
	movq	%r13, %rcx
	callq	free
	movq	%rdi, %rcx
	callq	free
	movq	%r14, %rcx
	callq	free
	movq	%r12, %rcx
	callq	free
	leaq	.L.kmpc_loc.0.0.29(%rip), %rcx
	callq	__kmpc_end
	leaq	.L.kmpc_loc.0.0.63(%rip), %rcx
	callq	__kmpc_end
	addq	$32, %rsp
	xorl	%eax, %eax
	movaps	-16(%rbp), %xmm6
	movaps	(%rbp), %xmm7
	movaps	16(%rbp), %xmm8
	leaq	40(%rbp), %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB24_65:
	movq	(%rdx), %rsi
	subq	$32, %rsp
	movl	$2, %ecx
	callq	__acrt_iob_func
	leaq	"??_C@_0CE@BIKOBMBB@Usage?3?5?$CFs?5?$FLmatrix?9market?9filenam@"(%rip), %rdx
	movq	%rax, %rcx
	movq	%rsi, %r8
	callq	fprintf
	movl	$1, %ecx
	callq	exit
.LBB24_66:
	subq	$32, %rsp
	leaq	.Lstr.7(%rip), %rcx
	callq	puts
	movl	$1, %ecx
	callq	exit
.LBB24_67:
	subq	$32, %rsp
	leaq	"??_C@_0CK@GGOBCCKJ@Sorry?0?5this?5application?5does?5not@"(%rip), %rcx
	callq	printf
	leaq	-32(%rbp), %rcx
	callq	mm_typecode_to_str
	leaq	"??_C@_0BK@FLDFLNI@Market?5Market?5type?3?5?$FL?$CFs?$FN?6?$AA@"(%rip), %rcx
	movq	%rax, %rdx
	callq	printf
	movl	$1, %ecx
	callq	exit
	int3
	.section	.rdata,"dr",associative,main
	.p2align	2, 0x0
.LJTI24_0:
	.long	.LBB24_24-.LJTI24_0
	.long	.LBB24_28-.LJTI24_0
	.long	.LBB24_26-.LJTI24_0
	.long	.LBB24_27-.LJTI24_0
	.long	.LBB24_25-.LJTI24_0
	.long	.LBB24_29-.LJTI24_0
	.long	.LBB24_30-.LJTI24_0
.LJTI24_1:
	.long	.LBB24_49-.LJTI24_1
	.long	.LBB24_53-.LJTI24_1
	.long	.LBB24_51-.LJTI24_1
	.long	.LBB24_52-.LJTI24_1
	.long	.LBB24_50-.LJTI24_1
	.long	.LBB24_54-.LJTI24_1
	.long	.LBB24_55-.LJTI24_1
	.section	.text,"xr",one_only,main
	.seh_endproc

	.def	converfloatToFloat.extracted;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,converfloatToFloat.extracted
	.p2align	4, 0x90
converfloatToFloat.extracted:
.seh_proc converfloatToFloat.extracted
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$96, %rsp
	.seh_stackalloc 96
	.seh_endprologue
	movq	%r9, %rdi
	movq	%r8, %rbx
	movl	168(%rsp), %eax
	movl	$0, 92(%rsp)
	movl	(%rcx), %esi
	movl	$0, 84(%rsp)
	movl	%eax, 80(%rsp)
	movl	$1, 88(%rsp)
	leaq	88(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	84(%rsp), %rax
	movq	%rax, 32(%rsp)
	movl	$1, 64(%rsp)
	movl	$1, 56(%rsp)
	leaq	.L.kmpc_loc.0.0.9(%rip), %rcx
	leaq	92(%rsp), %r9
	movl	%esi, %edx
	movl	$34, %r8d
	callq	__kmpc_for_static_init_4
	movl	84(%rsp), %ecx
	movl	80(%rsp), %edx
	cmpl	%edx, %ecx
	ja	.LBB25_19
	subq	%rcx, %rdx
	leaq	1(%rdx), %rax
	cmpq	$8, %rax
	jb	.LBB25_4
	movq	%rax, %r8
	shrq	$3, %r8
	leaq	16(,%rcx,4), %r9
	.p2align	4, 0x90
.LBB25_3:
	movupd	-32(%rbx,%r9,2), %xmm0
	movupd	-16(%rbx,%r9,2), %xmm1
	cvtpd2ps	%xmm1, %xmm1
	cvtpd2ps	%xmm0, %xmm0
	unpcklpd	%xmm1, %xmm0
	movupd	%xmm0, -16(%rdi,%r9)
	movupd	(%rbx,%r9,2), %xmm0
	movupd	16(%rbx,%r9,2), %xmm1
	cvtpd2ps	%xmm1, %xmm1
	cvtpd2ps	%xmm0, %xmm0
	unpcklpd	%xmm1, %xmm0
	movupd	%xmm0, (%rdi,%r9)
	addq	$32, %r9
	decq	%r8
	jne	.LBB25_3
.LBB25_4:
	andq	$-8, %rax
	subq	%rax, %rdx
	cmpq	$6, %rdx
	ja	.LBB25_19
	leaq	.LJTI25_0(%rip), %r8
	movslq	(%r8,%rdx,4), %rdx
	addq	%r8, %rdx
	jmpq	*%rdx
.LBB25_11:
	addq	%rcx, %rax
	jmp	.LBB25_18
.LBB25_7:
	addq	%rcx, %rax
	jmp	.LBB25_14
.LBB25_9:
	addq	%rcx, %rax
	jmp	.LBB25_16
.LBB25_8:
	addq	%rcx, %rax
	jmp	.LBB25_15
.LBB25_10:
	addq	%rcx, %rax
	jmp	.LBB25_17
.LBB25_6:
	addq	%rcx, %rax
	jmp	.LBB25_13
.LBB25_12:
	addq	%rcx, %rax
	movsd	48(%rbx,%rax,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 24(%rdi,%rax,4)
.LBB25_13:
	movsd	40(%rbx,%rax,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 20(%rdi,%rax,4)
.LBB25_14:
	movsd	32(%rbx,%rax,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 16(%rdi,%rax,4)
.LBB25_15:
	movsd	24(%rbx,%rax,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 12(%rdi,%rax,4)
.LBB25_16:
	movsd	16(%rbx,%rax,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rdi,%rax,4)
.LBB25_17:
	movsd	8(%rbx,%rax,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%rdi,%rax,4)
.LBB25_18:
	movsd	(%rbx,%rax,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rdi,%rax,4)
.LBB25_19:
	leaq	.L.kmpc_loc.0.0.11(%rip), %rcx
	movl	%esi, %edx
	addq	$96, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	jmp	__kmpc_for_static_fini
	.section	.rdata,"dr",associative,converfloatToFloat.extracted
	.p2align	2, 0x0
.LJTI25_0:
	.long	.LBB25_11-.LJTI25_0
	.long	.LBB25_10-.LJTI25_0
	.long	.LBB25_9-.LJTI25_0
	.long	.LBB25_8-.LJTI25_0
	.long	.LBB25_7-.LJTI25_0
	.long	.LBB25_6-.LJTI25_0
	.long	.LBB25_12-.LJTI25_0
	.section	.text,"xr",one_only,converfloatToFloat.extracted
	.seh_endproc

	.def	csc_matrix_vector.extracted;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,csc_matrix_vector.extracted
	.p2align	4, 0x90
csc_matrix_vector.extracted:
.seh_proc csc_matrix_vector.extracted
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
	.seh_endprologue
	movq	%r9, 96(%rsp)
	movq	%r8, %r14
	movq	%rcx, 88(%rsp)
	movslq	(%r8), %r15
	movl	$4, %edx
	movq	%r15, %rcx
	callq	calloc
	movq	%rax, %rsi
	testq	%r15, %r15
	jle	.LBB26_14
	decl	%r15d
	movl	$0, 80(%rsp)
	movq	88(%rsp), %rax
	movl	(%rax), %edi
	movl	$0, 72(%rsp)
	movl	%r15d, 68(%rsp)
	movl	$1, 76(%rsp)
	movl	%r15d, 32(%rsp)
	movl	$1, 48(%rsp)
	movl	$1, 40(%rsp)
	leaq	.L.kmpc_loc.0.0.15(%rip), %rcx
	movl	%edi, %edx
	movl	$36, %r8d
	xorl	%r9d, %r9d
	callq	__kmpc_dispatch_init_4
	leaq	76(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	68(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	.L.kmpc_loc.0.0.17(%rip), %rcx
	leaq	80(%rsp), %r8
	leaq	72(%rsp), %r9
	movl	%edi, 84(%rsp)
	movl	%edi, %edx
	callq	__kmpc_dispatch_next_4
	testl	%eax, %eax
	je	.LBB26_14
	movq	216(%rsp), %rdi
	movq	208(%rsp), %r15
	jmp	.LBB26_3
	.p2align	4, 0x90
.LBB26_13:
	leaq	76(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	68(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	.L.kmpc_loc.0.0.17(%rip), %rcx
	movl	84(%rsp), %edx
	leaq	80(%rsp), %r8
	leaq	72(%rsp), %r9
	callq	__kmpc_dispatch_next_4
	testl	%eax, %eax
	je	.LBB26_14
.LBB26_3:
	movl	72(%rsp), %eax
	movl	68(%rsp), %ecx
	cmpl	%ecx, %eax
	ja	.LBB26_14
	movq	32(%r14), %rdx
	subq	%rax, %rcx
	xorl	%r8d, %r8d
	jmp	.LBB26_5
	.p2align	4, 0x90
.LBB26_12:
	leaq	1(%r8), %r9
	cmpq	%rcx, %r8
	movq	%r9, %r8
	je	.LBB26_13
.LBB26_5:
	leaq	(%r8,%rax), %r9
	movslq	(%rdx,%r9,4), %r11
	movslq	4(%rdx,%r9,4), %r9
	cmpl	%r9d, %r11d
	jge	.LBB26_12
	movq	24(%r14), %r10
	movq	%r9, %r13
	subq	%r11, %r13
	cmpq	$4, %r13
	jb	.LBB26_9
	movq	%r13, %r12
	shrq	$2, %r12
	leaq	12(,%r11,4), %rbp
	.p2align	4, 0x90
.LBB26_8:
	movss	-12(%rdi,%rbp), %xmm0
	mulss	-12(%r15,%rbp), %xmm0
	movslq	-12(%r10,%rbp), %rbx
	addss	(%rsi,%rbx,4), %xmm0
	movss	%xmm0, (%rsi,%rbx,4)
	movss	-8(%rdi,%rbp), %xmm0
	mulss	-8(%r15,%rbp), %xmm0
	movslq	-8(%r10,%rbp), %rbx
	addss	(%rsi,%rbx,4), %xmm0
	movss	%xmm0, (%rsi,%rbx,4)
	movss	-4(%rdi,%rbp), %xmm0
	mulss	-4(%r15,%rbp), %xmm0
	movslq	-4(%r10,%rbp), %rbx
	addss	(%rsi,%rbx,4), %xmm0
	movss	%xmm0, (%rsi,%rbx,4)
	movss	(%rdi,%rbp), %xmm0
	mulss	(%r15,%rbp), %xmm0
	movslq	(%r10,%rbp), %rbx
	addss	(%rsi,%rbx,4), %xmm0
	movss	%xmm0, (%rsi,%rbx,4)
	addq	$16, %rbp
	decq	%r12
	jne	.LBB26_8
.LBB26_9:
	movq	%r13, %r12
	andq	$-4, %r12
	cmpq	%r13, %r12
	je	.LBB26_12
	addq	%r11, %r12
	.p2align	4, 0x90
.LBB26_11:
	movss	(%rdi,%r12,4), %xmm0
	mulss	(%r15,%r12,4), %xmm0
	movslq	(%r10,%r12,4), %r11
	addss	(%rsi,%r11,4), %xmm0
	movss	%xmm0, (%rsi,%r11,4)
	incq	%r12
	cmpq	%r12, %r9
	jne	.LBB26_11
	jmp	.LBB26_12
.LBB26_14:
	movq	88(%rsp), %rdi
	movl	(%rdi), %edx
	leaq	.L.kmpc_loc.0.0.19(%rip), %rcx
	callq	__kmpc_barrier
	movl	(%rdi), %edx
	leaq	.L.kmpc_loc.0.0(%rip), %rcx
	leaq	($vcomp$critsect$.AS0.var)(%rip), %r8
	callq	__kmpc_critical
	#MEMBARRIER
	movl	(%r14), %eax
	testl	%eax, %eax
	movq	96(%rsp), %r8
	jle	.LBB26_21
	movl	$4294967292, %ecx
	andq	%rax, %rcx
	je	.LBB26_16
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB26_18:
	movups	(%r8,%rdx,4), %xmm0
	movups	(%rsi,%rdx,4), %xmm1
	addps	%xmm0, %xmm1
	movups	%xmm1, (%r8,%rdx,4)
	addq	$4, %rdx
	cmpq	%rcx, %rdx
	jb	.LBB26_18
	cmpq	%rax, %rcx
	jne	.LBB26_20
	jmp	.LBB26_21
.LBB26_16:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB26_20:
	movss	(%r8,%rcx,4), %xmm0
	addss	(%rsi,%rcx,4), %xmm0
	movss	%xmm0, (%r8,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB26_20
.LBB26_21:
	#MEMBARRIER
	movl	(%rdi), %edx
	leaq	.L.kmpc_loc.0.0.2(%rip), %rcx
	leaq	($vcomp$critsect$.AS0.var)(%rip), %r8
	callq	__kmpc_end_critical
	movq	%rsi, %rcx
	callq	free
	nop
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
	.seh_endproc

	.def	Value_vector.extracted;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,Value_vector.extracted
	.p2align	4, 0x90
Value_vector.extracted:
.seh_proc Value_vector.extracted
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%r9, %rsi
	movq	%r8, %rbx
	movq	160(%rsp), %r14
	movl	176(%rsp), %eax
	movl	$0, 84(%rsp)
	movl	(%rcx), %edi
	movl	$0, 76(%rsp)
	movl	%eax, 72(%rsp)
	movl	$1, 80(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	76(%rsp), %rax
	movq	%rax, 32(%rsp)
	movl	$1, 64(%rsp)
	movl	$1, 56(%rsp)
	leaq	.L.kmpc_loc.0.0.23(%rip), %rcx
	leaq	84(%rsp), %r9
	movl	%edi, %edx
	movl	$34, %r8d
	callq	__kmpc_for_static_init_4
	movl	76(%rsp), %edx
	movl	72(%rsp), %eax
	cmpl	%eax, %edx
	ja	.LBB27_7
	movq	40(%rbx), %rcx
	movq	%rax, %r8
	subq	%rdx, %r8
	incq	%r8
	cmpq	$8, %r8
	jb	.LBB27_4
	movq	%r8, %r9
	shrq	$3, %r9
	leaq	28(,%rdx,4), %r10
	.p2align	4, 0x90
.LBB27_3:
	movslq	-28(%rcx,%r10), %r11
	movss	(%rsi,%r11,4), %xmm0
	movss	%xmm0, -28(%r14,%r10)
	movslq	-24(%rcx,%r10), %r11
	movss	(%rsi,%r11,4), %xmm0
	movss	%xmm0, -24(%r14,%r10)
	movslq	-20(%rcx,%r10), %r11
	movss	(%rsi,%r11,4), %xmm0
	movss	%xmm0, -20(%r14,%r10)
	movslq	-16(%rcx,%r10), %r11
	movss	(%rsi,%r11,4), %xmm0
	movss	%xmm0, -16(%r14,%r10)
	movslq	-12(%rcx,%r10), %r11
	movss	(%rsi,%r11,4), %xmm0
	movss	%xmm0, -12(%r14,%r10)
	movslq	-8(%rcx,%r10), %r11
	movss	(%rsi,%r11,4), %xmm0
	movss	%xmm0, -8(%r14,%r10)
	movslq	-4(%rcx,%r10), %r11
	movss	(%rsi,%r11,4), %xmm0
	movss	%xmm0, -4(%r14,%r10)
	movslq	(%rcx,%r10), %r11
	movss	(%rsi,%r11,4), %xmm0
	movss	%xmm0, (%r14,%r10)
	addq	$32, %r10
	decq	%r9
	jne	.LBB27_3
.LBB27_4:
	movq	%r8, %r9
	andq	$-8, %r9
	cmpq	%r8, %r9
	je	.LBB27_7
	incq	%rax
	addq	%rdx, %r9
	.p2align	4, 0x90
.LBB27_6:
	movslq	(%rcx,%r9,4), %rdx
	movss	(%rsi,%rdx,4), %xmm0
	movss	%xmm0, (%r14,%r9,4)
	incq	%r9
	cmpq	%r9, %rax
	jne	.LBB27_6
.LBB27_7:
	leaq	.L.kmpc_loc.0.0.25(%rip), %rcx
	movl	%edi, %edx
	addq	$88, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	jmp	__kmpc_for_static_fini
	.seh_endproc

	.def	main.extracted;
	.scl	3;
	.type	32;
	.endef
	.globl	__real@39a00140
	.section	.rdata,"dr",discard,__real@39a00140
	.p2align	2, 0x0
__real@39a00140:
	.long	0x39a00140
	.section	.text,"xr",one_only,main.extracted
	.p2align	4, 0x90
main.extracted:
.seh_proc main.extracted
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
	subq	$184, %rsp
	.seh_stackalloc 184
	movaps	%xmm6, 160(%rsp)
	.seh_savexmm %xmm6, 160
	.seh_endprologue
	movq	%r8, %rdi
	movq	%rcx, %rsi
	movq	312(%rsp), %r14
	movq	296(%rsp), %r15
	movq	288(%rsp), %rbx
	testl	%r9d, %r9d
	jle	.LBB28_5
	movq	%rbx, 128(%rsp)
	movq	%r15, 136(%rsp)
	movq	%rdi, 144(%rsp)
	movq	%r14, 152(%rsp)
	movq	304(%rsp), %rbp
	decl	%r9d
	movl	$0, 124(%rsp)
	movl	(%rsi), %ebx
	movl	$0, 100(%rsp)
	movl	%r9d, 96(%rsp)
	movl	$1, 120(%rsp)
	leaq	120(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	96(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	100(%rsp), %rax
	movq	%rax, 32(%rsp)
	movl	$1, 64(%rsp)
	movl	$1, 56(%rsp)
	leaq	.L.kmpc_loc.0.0.43(%rip), %rcx
	leaq	124(%rsp), %r9
	movl	%ebx, %edx
	movl	$34, %r8d
	callq	__kmpc_for_static_init_4
	movl	100(%rsp), %edi
	movl	96(%rsp), %r13d
	cmpl	%r13d, %edi
	ja	.LBB28_4
	incl	%r13d
	leaq	.L.kmpc_loc.0.0.4(%rip), %r14
	leaq	($vcomp$critsect$.AS0.var)(%rip), %r15
	movss	__real@39a00140(%rip), %xmm6
	leaq	.L.kmpc_loc.0.0.6(%rip), %r12
	.p2align	4, 0x90
.LBB28_3:
	movl	(%rsi), %edx
	movq	%r14, %rcx
	movq	%r15, %r8
	callq	__kmpc_critical
	#MEMBARRIER
	callq	rand
	xorps	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	mulss	%xmm6, %xmm0
	movss	%xmm0, (%rbp,%rdi,4)
	#MEMBARRIER
	movl	(%rsi), %edx
	movq	%r12, %rcx
	movq	%r15, %r8
	callq	__kmpc_end_critical
	incq	%rdi
	cmpq	%rdi, %r13
	jne	.LBB28_3
.LBB28_4:
	leaq	.L.kmpc_loc.0.0.45(%rip), %rcx
	movl	%ebx, %edx
	callq	__kmpc_for_static_fini
	movq	152(%rsp), %r14
	movq	144(%rsp), %rdi
	movq	136(%rsp), %r15
	movq	128(%rsp), %rbx
.LBB28_5:
	movl	(%rsi), %edx
	leaq	.L.kmpc_loc.0.0.47(%rip), %rcx
	callq	__kmpc_barrier
	movl	(%rbx), %eax
	testl	%eax, %eax
	jle	.LBB28_9
	decl	%eax
	movl	$0, 116(%rsp)
	movl	(%rsi), %ebx
	movl	$0, 92(%rsp)
	movl	%eax, 88(%rsp)
	movl	$1, 112(%rsp)
	leaq	112(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	88(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	92(%rsp), %rax
	movq	%rax, 32(%rsp)
	movl	$1, 64(%rsp)
	movl	$1, 56(%rsp)
	leaq	.L.kmpc_loc.0.0.37(%rip), %rcx
	leaq	116(%rsp), %r9
	movl	%ebx, %edx
	movl	$34, %r8d
	callq	__kmpc_for_static_init_4
	movl	92(%rsp), %eax
	movl	88(%rsp), %edx
	cmpl	%eax, %edx
	jb	.LBB28_8
	leaq	(%r15,%rax,4), %rcx
	subl	%eax, %edx
	leaq	4(,%rdx,4), %r8
	xorl	%edx, %edx
	callq	_intel_fast_memset
.LBB28_8:
	leaq	.L.kmpc_loc.0.0.39(%rip), %rcx
	movl	%ebx, %edx
	callq	__kmpc_for_static_fini
.LBB28_9:
	movl	(%rsi), %edx
	leaq	.L.kmpc_loc.0.0.41(%rip), %rcx
	callq	__kmpc_barrier
	movl	(%rdi), %eax
	testl	%eax, %eax
	jle	.LBB28_13
	decl	%eax
	movl	$0, 108(%rsp)
	movl	(%rsi), %edi
	movl	$0, 84(%rsp)
	movl	%eax, 80(%rsp)
	movl	$1, 104(%rsp)
	leaq	104(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	84(%rsp), %rax
	movq	%rax, 32(%rsp)
	movl	$1, 64(%rsp)
	movl	$1, 56(%rsp)
	leaq	.L.kmpc_loc.0.0.31(%rip), %rcx
	leaq	108(%rsp), %r9
	movl	%edi, %edx
	movl	$34, %r8d
	callq	__kmpc_for_static_init_4
	movl	84(%rsp), %eax
	movl	80(%rsp), %edx
	cmpl	%eax, %edx
	jb	.LBB28_12
	leaq	(%r14,%rax,4), %rcx
	subl	%eax, %edx
	leaq	4(,%rdx,4), %r8
	xorl	%edx, %edx
	callq	_intel_fast_memset
.LBB28_12:
	leaq	.L.kmpc_loc.0.0.33(%rip), %rcx
	movl	%edi, %edx
	callq	__kmpc_for_static_fini
.LBB28_13:
	movl	(%rsi), %edx
	leaq	.L.kmpc_loc.0.0.35(%rip), %rcx
	movaps	160(%rsp), %xmm6
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	__kmpc_barrier
	.seh_endproc

	.def	main.extracted.54;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,main.extracted.54
	.p2align	4, 0x90
main.extracted.54:
.seh_proc main.extracted.54
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
	subq	$136, %rsp
	.seh_stackalloc 136
	.seh_endprologue
	movq	%r9, %rdi
	movq	%r8, %rbp
	movq	248(%rsp), %rsi
	movq	240(%rsp), %r15
	movl	264(%rsp), %eax
	movl	$0, 92(%rsp)
	movl	(%rcx), %ebx
	movl	$0, 80(%rsp)
	movl	%eax, 76(%rsp)
	movl	$1, 88(%rsp)
	leaq	88(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	76(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 32(%rsp)
	movl	$1, 64(%rsp)
	movl	$1, 56(%rsp)
	leaq	.L.kmpc_loc.0.0.51(%rip), %rcx
	leaq	92(%rsp), %r9
	movl	%ebx, %edx
	movl	$34, %r8d
	callq	__kmpc_for_static_init_4
	movl	80(%rsp), %eax
	movl	76(%rsp), %ecx
	cmpl	%ecx, %eax
	ja	.LBB29_7
	movq	%rdi, 96(%rsp)
	movl	%ebx, 84(%rsp)
	movq	%rsi, 120(%rsp)
	movq	%rax, 112(%rsp)
	subq	%rax, %rcx
	movq	%rcx, 128(%rsp)
	leaq	1(%rcx), %rax
	movq	%rax, 104(%rsp)
	cmpq	$4, %rax
	movq	%rbp, %rdi
	jb	.LBB29_4
	movq	104(%rsp), %rbx
	shrq	$2, %rbx
	movq	120(%rsp), %rax
	movq	112(%rsp), %rcx
	leaq	(%rax,%rcx,8), %r14
	leaq	(,%rcx,4), %r13
	movq	96(%rsp), %rsi
	movq	%r15, %r12
	.p2align	4, 0x90
.LBB29_3:
	leaq	(%rsi,%r13), %r8
	leaq	(%r12,%r13), %r9
	movq	%r14, 32(%rsp)
	movq	%rdi, %rcx
	leaq	"??_C@_0L@DPCLJHDN@?$CFd?5?$CFd?5?$CFlg?6?$AA@"(%rip), %rbp
	movq	%rbp, %rdx
	callq	fscanf
	decl	(%rsi,%r13)
	decl	(%r12,%r13)
	leaq	(%rsi,%r13), %r8
	addq	$4, %r8
	leaq	4(%r12,%r13), %r9
	leaq	8(%r14), %rax
	movq	%rax, 32(%rsp)
	movq	%rdi, %rcx
	movq	%rbp, %rdx
	callq	fscanf
	decl	4(%rsi,%r13)
	decl	4(%r12,%r13)
	leaq	(%rsi,%r13), %r8
	addq	$8, %r8
	leaq	8(%r12,%r13), %r9
	leaq	16(%r14), %rax
	movq	%rax, 32(%rsp)
	movq	%rdi, %rcx
	movq	%rbp, %rdx
	callq	fscanf
	decl	8(%rsi,%r13)
	decl	8(%r12,%r13)
	leaq	(%rsi,%r13), %r8
	addq	$12, %r8
	leaq	12(%r12,%r13), %r9
	leaq	24(%r14), %rax
	movq	%rax, 32(%rsp)
	movq	%rdi, %rcx
	movq	%rbp, %rdx
	callq	fscanf
	decl	12(%rsi,%r13)
	decl	12(%r12,%r13)
	addq	$32, %r14
	addq	$16, %r12
	addq	$16, %rsi
	decq	%rbx
	jne	.LBB29_3
.LBB29_4:
	movq	104(%rsp), %rcx
	movq	%rcx, %rax
	andq	$-4, %rax
	cmpq	%rcx, %rax
	movq	%rdi, %rbp
	movq	120(%rsp), %rsi
	movl	84(%rsp), %ebx
	movq	112(%rsp), %r12
	movq	128(%rsp), %r13
	movq	96(%rsp), %rdi
	je	.LBB29_7
	subq	%rax, %r13
	incq	%r13
	shrq	$2, %rcx
	movq	%rcx, %rax
	shlq	$5, %rax
	leaq	(%rax,%r12,8), %rax
	addq	%rax, %rsi
	shlq	$2, %r12
	shlq	$4, %rcx
	addq	%rcx, %r15
	addq	%rcx, %rdi
	leaq	"??_C@_0L@DPCLJHDN@?$CFd?5?$CFd?5?$CFlg?6?$AA@"(%rip), %r14
	.p2align	4, 0x90
.LBB29_6:
	leaq	(%rdi,%r12), %r8
	leaq	(%r15,%r12), %r9
	movq	%rsi, 32(%rsp)
	movq	%rbp, %rcx
	movq	%r14, %rdx
	callq	fscanf
	decl	(%rdi,%r12)
	decl	(%r15,%r12)
	addq	$8, %rsi
	addq	$4, %r15
	addq	$4, %rdi
	decq	%r13
	jne	.LBB29_6
.LBB29_7:
	leaq	.L.kmpc_loc.0.0.53(%rip), %rcx
	movl	%ebx, %edx
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	__kmpc_for_static_fini
	.seh_endproc

	.lcomm	__local_stdio_printf_options._OptionsStorage,8,8
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

	.lcomm	__local_stdio_scanf_options._OptionsStorage,8,8
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

	.section	.rdata,"dr",discard,"??_C@_0CA@MGJFEOKB@rows?$DN?$CFd?5columns?$DN?$CFd?5non?9zero?$DN?$CFd?6?$AA@"
	.globl	"??_C@_0CA@MGJFEOKB@rows?$DN?$CFd?5columns?$DN?$CFd?5non?9zero?$DN?$CFd?6?$AA@"
"??_C@_0CA@MGJFEOKB@rows?$DN?$CFd?5columns?$DN?$CFd?5non?9zero?$DN?$CFd?6?$AA@":
	.asciz	"rows=%d columns=%d non-zero=%d\n"

	.comm	$vcomp$critsect$.AS0.var,32,4
	.data
	.p2align	4, 0x0
.L.kmpc_loc.0.0:
	.long	0
	.long	838860802
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.p2align	4, 0x0
.L.kmpc_loc.0.0.2:
	.long	0
	.long	838860802
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.p2align	4, 0x0
.L.kmpc_loc.0.0.4:
	.long	0
	.long	838860802
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.p2align	4, 0x0
.L.kmpc_loc.0.0.6:
	.long	0
	.long	838860802
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.section	.rdata,"dr"
.Lstr:
	.asciz	"ASSIGNING THE ROW VALUES DONE"

.Lstr.7:
	.asciz	"Could not process Matrix Market banner."

	.data
	.p2align	4, 0x0
.L.kmpc_loc.0.0.9:
	.long	0
	.long	838861314
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.p2align	4, 0x0
.L.kmpc_loc.0.0.11:
	.long	0
	.long	838861314
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.p2align	4, 0x0
.L.kmpc_loc.0.0.13:
	.long	0
	.long	838860802
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.p2align	4, 0x0
.L.kmpc_loc.0.0.15:
	.long	0
	.long	838860802
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.p2align	4, 0x0
.L.kmpc_loc.0.0.17:
	.long	0
	.long	838860802
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.p2align	4, 0x0
.L.kmpc_loc.0.0.19:
	.long	0
	.long	838860866
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.p2align	4, 0x0
.L.kmpc_loc.0.0.21:
	.long	0
	.long	838860802
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.p2align	4, 0x0
.L.kmpc_loc.0.0.23:
	.long	0
	.long	838861314
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.p2align	4, 0x0
.L.kmpc_loc.0.0.25:
	.long	0
	.long	838861314
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.p2align	4, 0x0
.L.kmpc_loc.0.0.27:
	.long	0
	.long	838860802
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.p2align	4, 0x0
.L.kmpc_loc.0.0.29:
	.long	0
	.long	838860802
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.p2align	4, 0x0
.L.kmpc_loc.0.0.31:
	.long	0
	.long	838861314
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.p2align	4, 0x0
.L.kmpc_loc.0.0.33:
	.long	0
	.long	838861314
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.p2align	4, 0x0
.L.kmpc_loc.0.0.35:
	.long	0
	.long	838860866
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.p2align	4, 0x0
.L.kmpc_loc.0.0.37:
	.long	0
	.long	838861314
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.p2align	4, 0x0
.L.kmpc_loc.0.0.39:
	.long	0
	.long	838861314
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.p2align	4, 0x0
.L.kmpc_loc.0.0.41:
	.long	0
	.long	838860866
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.p2align	4, 0x0
.L.kmpc_loc.0.0.43:
	.long	0
	.long	838861314
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.p2align	4, 0x0
.L.kmpc_loc.0.0.45:
	.long	0
	.long	838861314
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.p2align	4, 0x0
.L.kmpc_loc.0.0.47:
	.long	0
	.long	838860866
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.p2align	4, 0x0
.L.kmpc_loc.0.0.49:
	.long	0
	.long	838860802
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.p2align	4, 0x0
.L.kmpc_loc.0.0.51:
	.long	0
	.long	838861314
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.p2align	4, 0x0
.L.kmpc_loc.0.0.53:
	.long	0
	.long	838861314
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.p2align	4, 0x0
.L.kmpc_loc.0.0.56:
	.long	0
	.long	838860802
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.section	.rdata,"dr"
	.p2align	4, 0x0
.L.source.0.0.62:
	.ascii	";unknown;unknown;0;0;;"

	.data
	.p2align	4, 0x0
.L.kmpc_loc.0.0.63:
	.long	0
	.long	838860802
	.long	0
	.long	0
	.quad	.L.source.0.0.62

	.section	.drectve,"yni"
	.ascii	" /DEFAULTLIB:libcmt.lib"
	.ascii	" /DEFAULTLIB:libircmt.lib"
	.ascii	" /DEFAULTLIB:svml_dispmt.lib"
	.ascii	" /DEFAULTLIB:libdecimal.lib"
	.ascii	" /DEFAULTLIB:libmmt.lib"
	.ascii	" /DEFAULTLIB:oldnames.lib"
	.ascii	" /DEFAULTLIB:libiomp5md.lib"
	.globl	_fltused
