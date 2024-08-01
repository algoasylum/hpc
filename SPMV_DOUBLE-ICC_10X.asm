	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"spmv-10x-DOUBLE.c"
	.def	sprintf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,sprintf
	.globl	sprintf
	.p2align	4, 0x90
sprintf:
.Lfunc_begin0:
	.cv_func_id 0
	.cv_file	1 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.22621.0\\ucrt\\stdio.h" "C1A1FBC43E7D45F0EA4AE539DDCFFB19" 1
	.cv_loc	0 1 1771 0
.seh_proc sprintf
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%r9, 104(%rsp)
	movq	%r8, 96(%rsp)
.Ltmp0:
	movq	%rdx, 64(%rsp)
	movq	%rcx, 56(%rsp)
	leaq	96(%rsp), %rax
	.cv_loc	0 1 1774 0
	movq	%rax, 40(%rsp)
	.cv_loc	0 1 1776 0
	movq	40(%rsp), %r9
	movq	64(%rsp), %rdx
	movq	56(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	_vsprintf_l
	movl	%eax, 52(%rsp)
	.cv_loc	0 1 1779 0
	movl	52(%rsp), %eax
	addq	$72, %rsp
	retq
.Ltmp1:
.Lfunc_end0:
	.seh_endproc

	.def	vsprintf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,vsprintf
	.globl	vsprintf
	.p2align	4, 0x90
vsprintf:
.Lfunc_begin1:
	.cv_func_id 1
	.cv_loc	1 1 1473 0
.seh_proc vsprintf
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
.Ltmp2:
	movq	%r8, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rcx, 48(%rsp)
	.cv_loc	1 1 1474 0
	movq	64(%rsp), %rax
	movq	56(%rsp), %r8
	movq	48(%rsp), %rcx
	movq	$-1, %rdx
	xorl	%r9d, %r9d
	movq	%rax, 32(%rsp)
	callq	_vsnprintf_l
	nop
	addq	$72, %rsp
	retq
.Ltmp3:
.Lfunc_end1:
	.seh_endproc

	.def	_snprintf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_snprintf
	.globl	_snprintf
	.p2align	4, 0x90
_snprintf:
.Lfunc_begin2:
	.cv_func_id 2
	.cv_loc	2 1 1947 0
.seh_proc _snprintf
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%r9, 104(%rsp)
.Ltmp4:
	movq	%r8, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rcx, 48(%rsp)
	leaq	104(%rsp), %rax
	.cv_loc	2 1 1950 0
	movq	%rax, 32(%rsp)
	.cv_loc	2 1 1951 0
	movq	32(%rsp), %r9
	movq	64(%rsp), %r8
	movq	56(%rsp), %rdx
	movq	48(%rsp), %rcx
	callq	_vsnprintf
	movl	%eax, 44(%rsp)
	.cv_loc	2 1 1953 0
	movl	44(%rsp), %eax
	addq	$72, %rsp
	retq
.Ltmp5:
.Lfunc_end2:
	.seh_endproc

	.def	_vsnprintf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vsnprintf
	.globl	_vsnprintf
	.p2align	4, 0x90
_vsnprintf:
.Lfunc_begin3:
	.cv_func_id 3
	.cv_loc	3 1 1411 0
.seh_proc _vsnprintf
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
.Ltmp6:
	movq	%r9, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	.cv_loc	3 1 1412 0
	movq	64(%rsp), %rax
	movq	56(%rsp), %r8
	movq	48(%rsp), %rdx
	movq	40(%rsp), %rcx
	xorl	%r9d, %r9d
	movq	%rax, 32(%rsp)
	callq	_vsnprintf_l
	nop
	addq	$72, %rsp
	retq
.Ltmp7:
.Lfunc_end3:
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
	.text
	.globl	get_cpu_frequency
	.p2align	4, 0x90
get_cpu_frequency:
.Lfunc_begin4:
	.cv_func_id 4
	.cv_file	2 "C:\\Users\\DELL\\OneDrive\\Documents\\samplesss\\spmv-10x-DOUBLE.c" "F20A4F1B4410F2E22E42401A6D75F772" 1
	.cv_loc	4 2 11 0
	movsd	__real@41e1e1a300000000(%rip), %xmm0
	retq
.Ltmp8:
.Lfunc_end4:

	.def	rdtsc;
	.scl	2;
	.type	32;
	.endef
	.globl	rdtsc
	.p2align	4, 0x90
rdtsc:
.Lfunc_begin5:
	.cv_func_id 5
	.cv_loc	5 2 14 0
.seh_proc rdtsc
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
.Ltmp9:
	.cv_loc	5 2 16 0
	#APP
	rdtsc
	#NO_APP
	movl	%eax, 4(%rsp)
	movl	%edx, (%rsp)
	.cv_loc	5 2 17 0
	movl	(%rsp), %eax
	shlq	$32, %rax
	movl	4(%rsp), %ecx
	orq	%rcx, %rax
	popq	%rcx
	retq
.Ltmp10:
.Lfunc_end5:
	.seh_endproc

	.def	csc_matrix_vector;
	.scl	2;
	.type	32;
	.endef
	.globl	csc_matrix_vector
	.p2align	4, 0x90
csc_matrix_vector:
.Lfunc_begin6:
	.cv_func_id 6
	.cv_loc	6 2 34 0
.seh_proc csc_matrix_vector
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movq	%rcx, (%rsp)
.Ltmp11:
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rcx, 16(%rsp)
.Ltmp12:
	.cv_loc	6 2 36 0
	movl	$0, 12(%rsp)
.LBB6_1:
	movq	(%rsp), %rcx
	movl	12(%rsp), %eax
	cmpl	(%rcx), %eax
	jge	.LBB6_8
	.cv_loc	6 2 38 0
	movq	(%rsp), %rax
.Ltmp13:
	movq	32(%rax), %rax
	movslq	12(%rsp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, 8(%rsp)
.LBB6_3:
	movq	(%rsp), %rcx
	movl	8(%rsp), %eax
	movq	32(%rcx), %rcx
	movl	12(%rsp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jge	.LBB6_6
	.cv_loc	6 2 42 0
	movq	(%rsp), %rcx
.Ltmp14:
	movq	32(%rsp), %rax
	movslq	8(%rsp), %rdx
	movsd	(%rax,%rdx,8), %xmm0
	movq	40(%rsp), %rax
	movslq	8(%rsp), %rdx
	mulsd	(%rax,%rdx,8), %xmm0
	movq	24(%rsp), %rax
	movq	24(%rcx), %rcx
	movslq	8(%rsp), %rdx
	movslq	(%rcx,%rdx,4), %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movsd	%xmm0, (%rax,%rcx,8)
.Ltmp15:
	.cv_loc	6 2 38 0
	movl	8(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 8(%rsp)
	jmp	.LBB6_3
.Ltmp16:
.LBB6_6:
	.cv_loc	6 2 46 0
	jmp	.LBB6_7
.Ltmp17:
.LBB6_7:
	.cv_loc	6 2 36 0
	movl	12(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 12(%rsp)
	jmp	.LBB6_1
.Ltmp18:
.LBB6_8:
	.cv_loc	6 2 48 0
	addq	$48, %rsp
	retq
.Ltmp19:
.Lfunc_end6:
	.seh_endproc

	.def	Value_vector;
	.scl	2;
	.type	32;
	.endef
	.globl	Value_vector
	.p2align	4, 0x90
Value_vector:
.Lfunc_begin7:
	.cv_func_id 7
	.cv_loc	7 2 50 0
.seh_proc Value_vector
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, (%rsp)
.Ltmp20:
	movq	%r8, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rcx, 16(%rsp)
.Ltmp21:
	.cv_loc	7 2 51 0
	movl	$0, 12(%rsp)
.LBB7_1:
	movq	(%rsp), %rcx
	movl	12(%rsp), %eax
	cmpl	8(%rcx), %eax
	jge	.LBB7_4
	.cv_loc	7 2 52 0
	movq	(%rsp), %rcx
.Ltmp22:
	movq	24(%rsp), %rax
	movq	40(%rcx), %rcx
	movslq	12(%rsp), %rdx
	movslq	(%rcx,%rdx,4), %rcx
	movsd	(%rax,%rcx,8), %xmm0
	movq	32(%rsp), %rax
	movslq	12(%rsp), %rcx
	movsd	%xmm0, (%rax,%rcx,8)
.Ltmp23:
	.cv_loc	7 2 51 0
	movl	12(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 12(%rsp)
	jmp	.LBB7_1
.Ltmp24:
.LBB7_4:
	.cv_loc	7 2 56 0
	addq	$40, %rsp
	retq
.Ltmp25:
.Lfunc_end7:
	.seh_endproc

	.def	main;
	.scl	2;
	.type	32;
	.endef
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
	.globl	__real@40dfffc000000000
	.section	.rdata,"dr",discard,__real@40dfffc000000000
	.p2align	3, 0x0
__real@40dfffc000000000:
	.quad	0x40dfffc000000000
	.text
	.globl	main
	.p2align	4, 0x90
main:
.Lfunc_begin8:
	.cv_func_id 8
	.cv_loc	8 2 59 0
.seh_proc main
	subq	$488, %rsp
	.seh_stackalloc 488
	.seh_endprologue
.Ltmp26:
	movl	$0, 484(%rsp)
	movq	%rdx, 472(%rsp)
	movl	%ecx, 468(%rsp)
	.cv_loc	8 2 68 0
	cmpl	$2, 468(%rsp)
	jge	.LBB8_2
.Ltmp27:
	.cv_loc	8 2 69 0
	movq	472(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 88(%rsp)
	movl	$2, %ecx
	callq	__acrt_iob_func
	movq	88(%rsp), %r8
	movq	%rax, %rcx
	leaq	"??_C@_0CE@BIKOBMBB@Usage?3?5?$CFs?5?$FLmatrix?9market?9filenam@"(%rip), %rdx
	callq	fprintf
	.cv_loc	8 2 70 0
	movl	$1, %ecx
	callq	exit
.Ltmp28:
.LBB8_2:
	.cv_loc	8 2 72 0
	movq	472(%rsp), %rax
	movq	8(%rax), %rcx
	leaq	"??_C@_01KDCPPGHE@r?$AA@"(%rip), %rdx
	callq	fopen
	movq	%rax, 448(%rsp)
	cmpq	$0, %rax
	jne	.LBB8_4
.Ltmp29:
	.cv_loc	8 2 73 0
	movl	$1, %ecx
	callq	exit
.Ltmp30:
.LBB8_4:
	.cv_loc	8 2 74 0
	jmp	.LBB8_5
.Ltmp31:
.LBB8_5:
	.cv_loc	8 2 79 0
	movq	448(%rsp), %rcx
	leaq	460(%rsp), %rdx
	callq	mm_read_banner
	cmpl	$0, %eax
	je	.LBB8_7
.Ltmp32:
	.cv_loc	8 2 80 0
	leaq	"??_C@_0CJ@MPICKCGA@Could?5not?5process?5Matrix?5Market?5@"(%rip), %rcx
	callq	printf
	.cv_loc	8 2 81 0
	movl	$1, %ecx
	callq	exit
.Ltmp33:
.LBB8_7:
	.cv_loc	8 2 84 0
	movsbl	462(%rsp), %eax
	cmpl	$67, %eax
	jne	.LBB8_11
	movsbl	460(%rsp), %eax
	cmpl	$77, %eax
	jne	.LBB8_11
	movsbl	461(%rsp), %eax
	cmpl	$67, %eax
	jne	.LBB8_11
.Ltmp34:
	.cv_loc	8 2 85 0
	leaq	"??_C@_0CK@GGOBCCKJ@Sorry?0?5this?5application?5does?5not@"(%rip), %rcx
	callq	printf
	.cv_loc	8 2 86 0
	leaq	460(%rsp), %rcx
	callq	mm_typecode_to_str
	movq	%rax, %rdx
	leaq	"??_C@_0BK@FLDFLNI@Market?5Market?5type?3?5?$FL?$CFs?$FN?6?$AA@"(%rip), %rcx
	callq	printf
	.cv_loc	8 2 87 0
	movl	$1, %ecx
	callq	exit
.Ltmp35:
.LBB8_11:
	.cv_loc	8 2 90 0
	movq	448(%rsp), %rcx
	leaq	444(%rsp), %rdx
	leaq	440(%rsp), %r8
	leaq	436(%rsp), %r9
	callq	mm_read_mtx_crd_size
	movl	%eax, 464(%rsp)
	cmpl	$0, %eax
	je	.LBB8_13
.Ltmp36:
	.cv_loc	8 2 91 0
	movl	$1, %ecx
	callq	exit
.Ltmp37:
.LBB8_13:
	.cv_loc	8 2 93 0
	movslq	436(%rsp), %rcx
	shlq	$2, %rcx
.Ltmp38:
	callq	malloc
.Ltmp39:
	movq	%rax, 424(%rsp)
	.cv_loc	8 2 94 0
	movslq	436(%rsp), %rcx
	shlq	$2, %rcx
.Ltmp40:
	callq	malloc
.Ltmp41:
	movq	%rax, 416(%rsp)
	.cv_loc	8 2 95 0
	movslq	436(%rsp), %rcx
	shlq	$3, %rcx
.Ltmp42:
	callq	malloc
.Ltmp43:
	movq	%rax, 408(%rsp)
	.cv_loc	8 2 96 0
	movslq	436(%rsp), %rcx
	shlq	$3, %rcx
.Ltmp44:
	callq	malloc
.Ltmp45:
	movq	%rax, 400(%rsp)
.Ltmp46:
	.cv_loc	8 2 99 0
	movl	$0, 396(%rsp)
.LBB8_14:
	movl	396(%rsp), %eax
	cmpl	436(%rsp), %eax
	jge	.LBB8_17
.Ltmp47:
	.cv_loc	8 2 100 0
	movq	408(%rsp), %rdx
	movslq	396(%rsp), %rax
	shlq	$3, %rax
	addq	%rax, %rdx
	movq	416(%rsp), %r9
	movslq	396(%rsp), %rax
	shlq	$2, %rax
	addq	%rax, %r9
	movq	424(%rsp), %r8
	movslq	396(%rsp), %rax
	shlq	$2, %rax
	addq	%rax, %r8
	movq	448(%rsp), %rcx
	movq	%rsp, %rax
	movq	%rdx, 32(%rax)
	leaq	"??_C@_0L@DPCLJHDN@?$CFd?5?$CFd?5?$CFlg?6?$AA@"(%rip), %rdx
	callq	fscanf
	.cv_loc	8 2 101 0
	movq	424(%rsp), %rax
	movslq	396(%rsp), %rcx
	movl	(%rax,%rcx,4), %edx
	addl	$-1, %edx
	movl	%edx, (%rax,%rcx,4)
	.cv_loc	8 2 102 0
	movq	416(%rsp), %rax
	movslq	396(%rsp), %rcx
	movl	(%rax,%rcx,4), %edx
	addl	$-1, %edx
	movl	%edx, (%rax,%rcx,4)
.Ltmp48:
	.cv_loc	8 2 99 0
	movl	396(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 396(%rsp)
	jmp	.LBB8_14
.Ltmp49:
.LBB8_17:
	.cv_loc	8 2 109 0
	movl	444(%rsp), %eax
	movl	%eax, 344(%rsp)
	.cv_loc	8 2 110 0
	movl	440(%rsp), %eax
	movl	%eax, 348(%rsp)
	.cv_loc	8 2 111 0
	movl	436(%rsp), %eax
	movl	%eax, 352(%rsp)
	.cv_loc	8 2 112 0
	movq	408(%rsp), %rax
	movq	%rax, 360(%rsp)
	.cv_loc	8 2 113 0
	movq	424(%rsp), %rax
	movq	%rax, 368(%rsp)
	.cv_loc	8 2 114 0
	movq	416(%rsp), %rax
	movq	%rax, 384(%rsp)
	.cv_loc	8 2 115 0
	movl	348(%rsp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
.Ltmp50:
	callq	malloc
.Ltmp51:
	movq	%rax, 376(%rsp)
	.cv_loc	8 2 116 0
	movq	$0, 336(%rsp)
	.cv_loc	8 2 118 0
	movl	$0, 332(%rsp)
	.cv_loc	8 2 119 0
	movq	376(%rsp), %rax
	movl	$0, (%rax)
.Ltmp52:
	.cv_loc	8 2 120 0
	movl	$0, 328(%rsp)
.LBB8_18:
	movl	328(%rsp), %eax
	cmpl	436(%rsp), %eax
	jge	.LBB8_23
.Ltmp53:
	.cv_loc	8 2 121 0
	movq	416(%rsp), %rax
	movslq	328(%rsp), %rcx
	movl	(%rax,%rcx,4), %eax
	cmpl	332(%rsp), %eax
	je	.LBB8_21
.Ltmp54:
	.cv_loc	8 2 122 0
	movq	416(%rsp), %rax
	movslq	328(%rsp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, 332(%rsp)
	.cv_loc	8 2 123 0
	movl	328(%rsp), %edx
	movq	376(%rsp), %rax
	movslq	332(%rsp), %rcx
	movl	%edx, (%rax,%rcx,4)
.Ltmp55:
.LBB8_21:
	.cv_loc	8 2 125 0
	jmp	.LBB8_22
.Ltmp56:
.LBB8_22:
	.cv_loc	8 2 120 0
	movl	328(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 328(%rsp)
	jmp	.LBB8_18
.Ltmp57:
.LBB8_23:
	.cv_loc	8 2 126 0
	movl	436(%rsp), %edx
	movq	376(%rsp), %rax
	movslq	440(%rsp), %rcx
	movl	%edx, (%rax,%rcx,4)
	.cv_loc	8 2 130 0
	movslq	440(%rsp), %rcx
	shlq	$3, %rcx
.Ltmp58:
	callq	malloc
.Ltmp59:
	movq	%rax, 320(%rsp)
	.cv_loc	8 2 131 0
	movslq	444(%rsp), %rcx
	shlq	$3, %rcx
.Ltmp60:
	callq	malloc
.Ltmp61:
	movq	%rax, 312(%rsp)
	.cv_loc	8 2 134 0
	movsd	__real@4024000000000000(%rip), %xmm0
	movsd	%xmm0, 304(%rsp)
.Ltmp62:
	.cv_loc	8 2 135 0
	movl	$0, 300(%rsp)
.LBB8_24:
	movl	300(%rsp), %eax
	cmpl	440(%rsp), %eax
	jge	.LBB8_27
.Ltmp63:
	.cv_loc	8 2 137 0
	callq	rand
	cvtsi2sd	%eax, %xmm0
	movsd	__real@40dfffc000000000(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	__real@4024000000000000(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movq	320(%rsp), %rax
	movslq	300(%rsp), %rcx
	movsd	%xmm0, (%rax,%rcx,8)
.Ltmp64:
	.cv_loc	8 2 135 0
	movl	300(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 300(%rsp)
	jmp	.LBB8_24
.Ltmp65:
.LBB8_27:
	.cv_loc	8 2 141 0
	movl	$0, 296(%rsp)
.LBB8_28:
	movl	296(%rsp), %eax
	cmpl	436(%rsp), %eax
	jge	.LBB8_31
.Ltmp66:
	.cv_loc	8 2 142 0
	movq	400(%rsp), %rax
	movslq	296(%rsp), %rcx
	xorps	%xmm0, %xmm0
	movsd	%xmm0, (%rax,%rcx,8)
.Ltmp67:
	.cv_loc	8 2 141 0
	movl	296(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 296(%rsp)
	jmp	.LBB8_28
.Ltmp68:
.LBB8_31:
	.cv_loc	8 2 146 0
	movl	$0, 292(%rsp)
.LBB8_32:
	movl	292(%rsp), %eax
	cmpl	444(%rsp), %eax
	jge	.LBB8_35
.Ltmp69:
	.cv_loc	8 2 147 0
	movq	312(%rsp), %rax
	movslq	292(%rsp), %rcx
	xorps	%xmm0, %xmm0
	movsd	%xmm0, (%rax,%rcx,8)
.Ltmp70:
	.cv_loc	8 2 146 0
	movl	292(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 292(%rsp)
	jmp	.LBB8_32
.Ltmp71:
.LBB8_35:
	.cv_loc	8 2 152 0
	callq	rdtsc
	movq	%rax, 280(%rsp)
	.cv_loc	8 2 155 0
	callq	get_cpu_frequency
	movsd	%xmm0, 272(%rsp)
	.cv_loc	8 2 157 0
	callq	rdtsc
	movq	%rax, 264(%rsp)
	.cv_loc	8 2 158 0
	movq	400(%rsp), %r8
	movq	320(%rsp), %rdx
	movups	344(%rsp), %xmm0
	movups	360(%rsp), %xmm1
	movups	376(%rsp), %xmm2
	movaps	%xmm2, 240(%rsp)
	movaps	%xmm1, 224(%rsp)
	movaps	%xmm0, 208(%rsp)
	leaq	208(%rsp), %rcx
	callq	Value_vector
	.cv_loc	8 2 160 0
	callq	rdtsc
	movq	%rax, 200(%rsp)
	.cv_loc	8 2 161 0
	movq	200(%rsp), %rax
	movq	264(%rsp), %rcx
	subq	%rcx, %rax
	movq	%rax, %xmm0
	movaps	__xmm@00000000000000004530000043300000(%rip), %xmm1
	movaps	%xmm1, 48(%rsp)
	punpckldq	%xmm1, %xmm0
	movapd	__xmm@45300000000000004330000000000000(%rip), %xmm1
	movaps	%xmm1, 64(%rsp)
	subpd	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	272(%rsp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 192(%rsp)
	.cv_loc	8 2 162 0
	movsd	192(%rsp), %xmm0
	leaq	"??_C@_0DF@GOFACPEA@Time?5elapsed?5to?5form?5the?5new?5vec@"(%rip), %rcx
	movaps	%xmm0, %xmm1
	movq	%xmm0, %rdx
	callq	printf
	.cv_loc	8 2 171 0
	callq	rdtsc
	movq	%rax, 184(%rsp)
	.cv_loc	8 2 172 0
	movq	408(%rsp), %r9
	movq	400(%rsp), %r8
	movq	312(%rsp), %rdx
	movups	344(%rsp), %xmm0
	movups	360(%rsp), %xmm1
	movups	376(%rsp), %xmm2
	movaps	%xmm2, 160(%rsp)
	movaps	%xmm1, 144(%rsp)
	movaps	%xmm0, 128(%rsp)
	leaq	128(%rsp), %rcx
	callq	csc_matrix_vector
	.cv_loc	8 2 174 0
	callq	rdtsc
	movaps	48(%rsp), %xmm2
	movaps	64(%rsp), %xmm1
	movq	%rax, 120(%rsp)
	.cv_loc	8 2 175 0
	movq	120(%rsp), %rax
	movq	184(%rsp), %rcx
	subq	%rcx, %rax
	movq	%rax, %xmm0
	punpckldq	%xmm2, %xmm0
	subpd	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	272(%rsp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 112(%rsp)
	.cv_loc	8 2 176 0
	movsd	112(%rsp), %xmm0
	leaq	"??_C@_0DK@NHMCGP@Time?5elapsed?5for?5multiplying?5and@"(%rip), %rcx
	movaps	%xmm0, %xmm1
	movq	%xmm0, %rdx
	callq	printf
	.cv_loc	8 2 179 0
	callq	rdtsc
	movaps	48(%rsp), %xmm2
	movaps	64(%rsp), %xmm1
	movq	%rax, 104(%rsp)
	.cv_loc	8 2 180 0
	movq	104(%rsp), %rax
	movq	280(%rsp), %rcx
	subq	%rcx, %rax
	movq	%rax, %xmm0
	punpckldq	%xmm2, %xmm0
	subpd	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	divsd	272(%rsp), %xmm0
	movsd	%xmm0, 96(%rsp)
	.cv_loc	8 2 181 0
	movsd	96(%rsp), %xmm0
	leaq	"??_C@_0CB@DNDLHEOG@Time?5elaptsed?5TOTAL?3?5?$CFf?5seconds?6@"(%rip), %rcx
	movaps	%xmm0, %xmm1
	movq	%xmm0, %rdx
	callq	printf
	.cv_loc	8 2 182 0
	movl	436(%rsp), %r9d
	movl	440(%rsp), %r8d
	movl	444(%rsp), %edx
	leaq	"??_C@_0CC@ENPJFCDH@rows?$DN?$CFd?5columns?$DN?5?$CFd?5non?9zero?$DN?$CFd?5@"(%rip), %rcx
	callq	printf
	.cv_loc	8 2 196 0
	movl	484(%rsp), %eax
	addq	$488, %rsp
	retq
.Ltmp72:
.Lfunc_end8:
	.seh_endproc

	.def	fprintf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,fprintf
	.globl	fprintf
	.p2align	4, 0x90
fprintf:
.Lfunc_begin9:
	.cv_func_id 9
	.cv_loc	9 1 837 0
.seh_proc fprintf
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%r9, 104(%rsp)
	movq	%r8, 96(%rsp)
.Ltmp73:
	movq	%rdx, 64(%rsp)
	movq	%rcx, 56(%rsp)
	leaq	96(%rsp), %rax
	.cv_loc	9 1 840 0
	movq	%rax, 40(%rsp)
	.cv_loc	9 1 841 0
	movq	40(%rsp), %r9
	movq	64(%rsp), %rdx
	movq	56(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	_vfprintf_l
	movl	%eax, 52(%rsp)
	.cv_loc	9 1 843 0
	movl	52(%rsp), %eax
	addq	$72, %rsp
	retq
.Ltmp74:
.Lfunc_end9:
	.seh_endproc

	.def	printf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,printf
	.globl	printf
	.p2align	4, 0x90
printf:
.Lfunc_begin10:
	.cv_func_id 10
	.cv_loc	10 1 956 0
.seh_proc printf
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%r9, 104(%rsp)
	movq	%r8, 96(%rsp)
	movq	%rdx, 88(%rsp)
.Ltmp75:
	movq	%rcx, 64(%rsp)
	leaq	88(%rsp), %rax
	.cv_loc	10 1 959 0
	movq	%rax, 48(%rsp)
	.cv_loc	10 1 960 0
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 32(%rsp)
	movl	$1, %ecx
	callq	__acrt_iob_func
	movq	32(%rsp), %rdx
	movq	40(%rsp), %r9
	movq	%rax, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	_vfprintf_l
	movl	%eax, 60(%rsp)
	.cv_loc	10 1 962 0
	movl	60(%rsp), %eax
	addq	$72, %rsp
	retq
.Ltmp76:
.Lfunc_end10:
	.seh_endproc

	.def	fscanf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,fscanf
	.globl	fscanf
	.p2align	4, 0x90
fscanf:
.Lfunc_begin11:
	.cv_func_id 11
	.cv_loc	11 1 1206 0
.seh_proc fscanf
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%r9, 104(%rsp)
	movq	%r8, 96(%rsp)
.Ltmp77:
	movq	%rdx, 64(%rsp)
	movq	%rcx, 56(%rsp)
	leaq	96(%rsp), %rax
	.cv_loc	11 1 1209 0
	movq	%rax, 40(%rsp)
	.cv_loc	11 1 1210 0
	movq	40(%rsp), %r9
	movq	64(%rsp), %rdx
	movq	56(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	_vfscanf_l
	movl	%eax, 52(%rsp)
	.cv_loc	11 1 1212 0
	movl	52(%rsp), %eax
	addq	$72, %rsp
	retq
.Ltmp78:
.Lfunc_end11:
	.seh_endproc

	.def	_vsprintf_l;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vsprintf_l
	.globl	_vsprintf_l
	.p2align	4, 0x90
_vsprintf_l:
.Lfunc_begin12:
	.cv_func_id 12
	.cv_loc	12 1 1458 0
.seh_proc _vsprintf_l
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
.Ltmp79:
	movq	%r9, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	.cv_loc	12 1 1459 0
	movq	64(%rsp), %rax
	movq	56(%rsp), %r9
	movq	48(%rsp), %r8
	movq	40(%rsp), %rcx
	movq	$-1, %rdx
	movq	%rax, 32(%rsp)
	callq	_vsnprintf_l
	nop
	addq	$72, %rsp
	retq
.Ltmp80:
.Lfunc_end12:
	.seh_endproc

	.def	_vsnprintf_l;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vsnprintf_l
	.globl	_vsnprintf_l
	.p2align	4, 0x90
_vsnprintf_l:
.Lfunc_begin13:
	.cv_func_id 13
	.cv_loc	13 1 1391 0
.seh_proc _vsnprintf_l
	subq	$136, %rsp
	.seh_stackalloc 136
	.seh_endprologue
	movq	176(%rsp), %rax
.Ltmp81:
	movq	%r9, 128(%rsp)
	movq	%r8, 120(%rsp)
	movq	%rdx, 112(%rsp)
	movq	%rcx, 104(%rsp)
	.cv_loc	13 1 1392 0
	movq	176(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	104(%rsp), %rax
	movq	%rax, 56(%rsp)
	callq	__local_stdio_printf_options
	movq	56(%rsp), %rdx
	movq	64(%rsp), %r8
	movq	72(%rsp), %r9
	movq	80(%rsp), %r10
	movq	%rax, %rcx
	movq	88(%rsp), %rax
	movq	(%rcx), %rcx
	orq	$1, %rcx
	movq	%r10, 32(%rsp)
	movq	%rax, 40(%rsp)
	callq	__stdio_common_vsprintf
	movl	%eax, 100(%rsp)
	.cv_loc	13 1 1396 0
	cmpl	$0, 100(%rsp)
	jge	.LBB13_2
	movl	$4294967295, %eax
	movl	%eax, 52(%rsp)
	jmp	.LBB13_3
.LBB13_2:
	movl	100(%rsp), %eax
	movl	%eax, 52(%rsp)
.LBB13_3:
	movl	52(%rsp), %eax
	addq	$136, %rsp
	retq
.Ltmp82:
.Lfunc_end13:
	.seh_endproc

	.def	__local_stdio_printf_options;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,__local_stdio_printf_options
	.globl	__local_stdio_printf_options
	.p2align	4, 0x90
__local_stdio_printf_options:
.Lfunc_begin14:
	.cv_func_id 14
	.cv_file	3 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.22621.0\\ucrt\\corecrt_stdio_config.h" "DACF907BDA504AFB0B64F53A242BDAE6" 1
	.cv_loc	14 3 92 0
	leaq	__local_stdio_printf_options._OptionsStorage(%rip), %rax
	retq
.Ltmp83:
.Lfunc_end14:

	.def	_vfprintf_l;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vfprintf_l
	.globl	_vfprintf_l
	.p2align	4, 0x90
_vfprintf_l:
.Lfunc_begin15:
	.cv_func_id 15
	.cv_loc	15 1 644 0
.seh_proc _vfprintf_l
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
.Ltmp84:
	movq	%r9, 96(%rsp)
	movq	%r8, 88(%rsp)
	movq	%rdx, 80(%rsp)
	movq	%rcx, 72(%rsp)
	.cv_loc	15 1 645 0
	movq	96(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 40(%rsp)
	callq	__local_stdio_printf_options
	movq	40(%rsp), %rdx
	movq	48(%rsp), %r8
	movq	56(%rsp), %r9
	movq	%rax, %rcx
	movq	64(%rsp), %rax
	movq	(%rcx), %rcx
	movq	%rax, 32(%rsp)
	callq	__stdio_common_vfprintf
	nop
	addq	$104, %rsp
	retq
.Ltmp85:
.Lfunc_end15:
	.seh_endproc

	.def	_vfscanf_l;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vfscanf_l
	.globl	_vfscanf_l
	.p2align	4, 0x90
_vfscanf_l:
.Lfunc_begin16:
	.cv_func_id 16
	.cv_loc	16 1 1064 0
.seh_proc _vfscanf_l
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
.Ltmp86:
	movq	%r9, 96(%rsp)
	movq	%r8, 88(%rsp)
	movq	%rdx, 80(%rsp)
	movq	%rcx, 72(%rsp)
	.cv_loc	16 1 1065 0
	movq	96(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 40(%rsp)
	callq	__local_stdio_scanf_options
	movq	40(%rsp), %rdx
	movq	48(%rsp), %r8
	movq	56(%rsp), %r9
	movq	%rax, %rcx
	movq	64(%rsp), %rax
	movq	(%rcx), %rcx
	movq	%rax, 32(%rsp)
	callq	__stdio_common_vfscanf
	nop
	addq	$104, %rsp
	retq
.Ltmp87:
.Lfunc_end16:
	.seh_endproc

	.def	__local_stdio_scanf_options;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,__local_stdio_scanf_options
	.globl	__local_stdio_scanf_options
	.p2align	4, 0x90
__local_stdio_scanf_options:
.Lfunc_begin17:
	.cv_func_id 17
	.cv_loc	17 3 102 0
	leaq	__local_stdio_scanf_options._OptionsStorage(%rip), %rax
	retq
.Ltmp88:
.Lfunc_end17:

	.section	.rdata,"dr",discard,"??_C@_0CE@BIKOBMBB@Usage?3?5?$CFs?5?$FLmatrix?9market?9filenam@"
	.globl	"??_C@_0CE@BIKOBMBB@Usage?3?5?$CFs?5?$FLmatrix?9market?9filenam@"
"??_C@_0CE@BIKOBMBB@Usage?3?5?$CFs?5?$FLmatrix?9market?9filenam@":
	.asciz	"Usage: %s [matrix-market-filename]\n"

	.section	.rdata,"dr",discard,"??_C@_01KDCPPGHE@r?$AA@"
	.globl	"??_C@_01KDCPPGHE@r?$AA@"
"??_C@_01KDCPPGHE@r?$AA@":
	.asciz	"r"

	.section	.rdata,"dr",discard,"??_C@_0CJ@MPICKCGA@Could?5not?5process?5Matrix?5Market?5@"
	.globl	"??_C@_0CJ@MPICKCGA@Could?5not?5process?5Matrix?5Market?5@"
"??_C@_0CJ@MPICKCGA@Could?5not?5process?5Matrix?5Market?5@":
	.asciz	"Could not process Matrix Market banner.\n"

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

	.section	.rdata,"dr",discard,"??_C@_0CB@DNDLHEOG@Time?5elaptsed?5TOTAL?3?5?$CFf?5seconds?6@"
	.globl	"??_C@_0CB@DNDLHEOG@Time?5elaptsed?5TOTAL?3?5?$CFf?5seconds?6@"
"??_C@_0CB@DNDLHEOG@Time?5elaptsed?5TOTAL?3?5?$CFf?5seconds?6@":
	.asciz	"Time elaptsed TOTAL: %f seconds\n"

	.section	.rdata,"dr",discard,"??_C@_0CC@ENPJFCDH@rows?$DN?$CFd?5columns?$DN?5?$CFd?5non?9zero?$DN?$CFd?5@"
	.globl	"??_C@_0CC@ENPJFCDH@rows?$DN?$CFd?5columns?$DN?5?$CFd?5non?9zero?$DN?$CFd?5@"
"??_C@_0CC@ENPJFCDH@rows?$DN?$CFd?5columns?$DN?5?$CFd?5non?9zero?$DN?$CFd?5@":
	.asciz	"rows=%d columns= %d non-zero=%d \n"

	.lcomm	__local_stdio_printf_options._OptionsStorage,8,8
	.lcomm	__local_stdio_scanf_options._OptionsStorage,8,8
	.section	.drectve,"yni"
	.ascii	" /DEFAULTLIB:libcmt.lib"
	.ascii	" /DEFAULTLIB:libircmt.lib"
	.ascii	" /DEFAULTLIB:svml_dispmt.lib"
	.ascii	" /DEFAULTLIB:libdecimal.lib"
	.ascii	" /DEFAULTLIB:libmmt.lib"
	.ascii	" /DEFAULTLIB:oldnames.lib"
	.section	.debug$S,"dr"
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp90-.Ltmp89
.Ltmp89:
	.short	.Ltmp92-.Ltmp91
.Ltmp91:
	.short	4353
	.long	0
	.asciz	"C:\\Users\\DELL\\AppData\\Local\\Temp\\icx-cl-47970f71c0\\spmv-10x-DOUBLE-7e3463.obj"
	.p2align	2, 0x0
.Ltmp92:
	.short	.Ltmp94-.Ltmp93
.Ltmp93:
	.short	4412
	.long	0
	.short	208
	.short	2024
	.short	1
	.short	2
	.short	0
	.short	18000
	.short	0
	.short	0
	.short	0
	.asciz	"clang based Intel(R) oneAPI DPC++/C++ Compiler 2024.1.2 (2024.1.2.20240508)"
	.p2align	2, 0x0
.Ltmp94:
.Ltmp90:
	.p2align	2, 0x0
	.section	.debug$S,"dr",associative,sprintf
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp96-.Ltmp95
.Ltmp95:
	.short	.Ltmp98-.Ltmp97
.Ltmp97:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end0-sprintf
	.long	0
	.long	0
	.long	4101
	.secrel32	sprintf
	.secidx	sprintf
	.byte	192
	.asciz	"sprintf"
	.p2align	2, 0x0
.Ltmp98:
	.short	.Ltmp100-.Ltmp99
.Ltmp99:
	.short	4114
	.long	72
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp100:
	.short	.Ltmp102-.Ltmp101
.Ltmp101:
	.short	4414
	.long	4096
	.short	1
	.asciz	"_Buffer"
	.p2align	2, 0x0
.Ltmp102:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 56
	.short	.Ltmp104-.Ltmp103
.Ltmp103:
	.short	4414
	.long	4098
	.short	1
	.asciz	"_Format"
	.p2align	2, 0x0
.Ltmp104:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 64
	.short	.Ltmp106-.Ltmp105
.Ltmp105:
	.short	4414
	.long	116
	.short	0
	.asciz	"_Result"
	.p2align	2, 0x0
.Ltmp106:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 52
	.short	.Ltmp108-.Ltmp107
.Ltmp107:
	.short	4414
	.long	1648
	.short	0
	.asciz	"_ArgList"
	.p2align	2, 0x0
.Ltmp108:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 40
	.short	2
	.short	4431
.Ltmp96:
	.p2align	2, 0x0
	.cv_linetable	0, sprintf, .Lfunc_end0
	.section	.debug$S,"dr",associative,vsprintf
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp110-.Ltmp109
.Ltmp109:
	.short	.Ltmp112-.Ltmp111
.Ltmp111:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end1-vsprintf
	.long	0
	.long	0
	.long	4104
	.secrel32	vsprintf
	.secidx	vsprintf
	.byte	192
	.asciz	"vsprintf"
	.p2align	2, 0x0
.Ltmp112:
	.short	.Ltmp114-.Ltmp113
.Ltmp113:
	.short	4114
	.long	72
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp114:
	.short	.Ltmp116-.Ltmp115
.Ltmp115:
	.short	4414
	.long	4096
	.short	1
	.asciz	"_Buffer"
	.p2align	2, 0x0
.Ltmp116:
	.cv_def_range	 .Ltmp2 .Ltmp3, frame_ptr_rel, 48
	.short	.Ltmp118-.Ltmp117
.Ltmp117:
	.short	4414
	.long	4098
	.short	1
	.asciz	"_Format"
	.p2align	2, 0x0
.Ltmp118:
	.cv_def_range	 .Ltmp2 .Ltmp3, frame_ptr_rel, 56
	.short	.Ltmp120-.Ltmp119
.Ltmp119:
	.short	4414
	.long	1648
	.short	1
	.asciz	"_ArgList"
	.p2align	2, 0x0
.Ltmp120:
	.cv_def_range	 .Ltmp2 .Ltmp3, frame_ptr_rel, 64
	.short	2
	.short	4431
.Ltmp110:
	.p2align	2, 0x0
	.cv_linetable	1, vsprintf, .Lfunc_end1
	.section	.debug$S,"dr",associative,_snprintf
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp122-.Ltmp121
.Ltmp121:
	.short	.Ltmp124-.Ltmp123
.Ltmp123:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end2-_snprintf
	.long	0
	.long	0
	.long	4108
	.secrel32	_snprintf
	.secidx	_snprintf
	.byte	192
	.asciz	"_snprintf"
	.p2align	2, 0x0
.Ltmp124:
	.short	.Ltmp126-.Ltmp125
.Ltmp125:
	.short	4114
	.long	72
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp126:
	.short	.Ltmp128-.Ltmp127
.Ltmp127:
	.short	4414
	.long	4096
	.short	1
	.asciz	"_Buffer"
	.p2align	2, 0x0
.Ltmp128:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 48
	.short	.Ltmp130-.Ltmp129
.Ltmp129:
	.short	4414
	.long	4105
	.short	1
	.asciz	"_BufferCount"
	.p2align	2, 0x0
.Ltmp130:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 56
	.short	.Ltmp132-.Ltmp131
.Ltmp131:
	.short	4414
	.long	4098
	.short	1
	.asciz	"_Format"
	.p2align	2, 0x0
.Ltmp132:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 64
	.short	.Ltmp134-.Ltmp133
.Ltmp133:
	.short	4414
	.long	116
	.short	0
	.asciz	"_Result"
	.p2align	2, 0x0
.Ltmp134:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 44
	.short	.Ltmp136-.Ltmp135
.Ltmp135:
	.short	4414
	.long	1648
	.short	0
	.asciz	"_ArgList"
	.p2align	2, 0x0
.Ltmp136:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 32
	.short	2
	.short	4431
.Ltmp122:
	.p2align	2, 0x0
	.cv_linetable	2, _snprintf, .Lfunc_end2
	.section	.debug$S,"dr",associative,_vsnprintf
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp138-.Ltmp137
.Ltmp137:
	.short	.Ltmp140-.Ltmp139
.Ltmp139:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end3-_vsnprintf
	.long	0
	.long	0
	.long	4111
	.secrel32	_vsnprintf
	.secidx	_vsnprintf
	.byte	192
	.asciz	"_vsnprintf"
	.p2align	2, 0x0
.Ltmp140:
	.short	.Ltmp142-.Ltmp141
.Ltmp141:
	.short	4114
	.long	72
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp142:
	.short	.Ltmp144-.Ltmp143
.Ltmp143:
	.short	4414
	.long	4096
	.short	1
	.asciz	"_Buffer"
	.p2align	2, 0x0
.Ltmp144:
	.cv_def_range	 .Ltmp6 .Ltmp7, frame_ptr_rel, 40
	.short	.Ltmp146-.Ltmp145
.Ltmp145:
	.short	4414
	.long	4105
	.short	1
	.asciz	"_BufferCount"
	.p2align	2, 0x0
.Ltmp146:
	.cv_def_range	 .Ltmp6 .Ltmp7, frame_ptr_rel, 48
	.short	.Ltmp148-.Ltmp147
.Ltmp147:
	.short	4414
	.long	4098
	.short	1
	.asciz	"_Format"
	.p2align	2, 0x0
.Ltmp148:
	.cv_def_range	 .Ltmp6 .Ltmp7, frame_ptr_rel, 56
	.short	.Ltmp150-.Ltmp149
.Ltmp149:
	.short	4414
	.long	1648
	.short	1
	.asciz	"_ArgList"
	.p2align	2, 0x0
.Ltmp150:
	.cv_def_range	 .Ltmp6 .Ltmp7, frame_ptr_rel, 64
	.short	2
	.short	4431
.Ltmp138:
	.p2align	2, 0x0
	.cv_linetable	3, _vsnprintf, .Lfunc_end3
	.section	.debug$S,"dr"
	.long	241
	.long	.Ltmp152-.Ltmp151
.Ltmp151:
	.short	.Ltmp154-.Ltmp153
.Ltmp153:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end4-get_cpu_frequency
	.long	0
	.long	0
	.long	4114
	.secrel32	get_cpu_frequency
	.secidx	get_cpu_frequency
	.byte	192
	.asciz	"get_cpu_frequency"
	.p2align	2, 0x0
.Ltmp154:
	.short	.Ltmp156-.Ltmp155
.Ltmp155:
	.short	4114
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	8192
	.p2align	2, 0x0
.Ltmp156:
	.short	2
	.short	4431
.Ltmp152:
	.p2align	2, 0x0
	.cv_linetable	4, get_cpu_frequency, .Lfunc_end4
	.long	241
	.long	.Ltmp158-.Ltmp157
.Ltmp157:
	.short	.Ltmp160-.Ltmp159
.Ltmp159:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end5-rdtsc
	.long	0
	.long	0
	.long	4116
	.secrel32	rdtsc
	.secidx	rdtsc
	.byte	192
	.asciz	"rdtsc"
	.p2align	2, 0x0
.Ltmp160:
	.short	.Ltmp162-.Ltmp161
.Ltmp161:
	.short	4114
	.long	8
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90120
	.p2align	2, 0x0
.Ltmp162:
	.short	.Ltmp164-.Ltmp163
.Ltmp163:
	.short	4414
	.long	117
	.short	0
	.asciz	"lo"
	.p2align	2, 0x0
.Ltmp164:
	.cv_def_range	 .Ltmp9 .Ltmp10, frame_ptr_rel, 4
	.short	.Ltmp166-.Ltmp165
.Ltmp165:
	.short	4414
	.long	117
	.short	0
	.asciz	"hi"
	.p2align	2, 0x0
.Ltmp166:
	.cv_def_range	 .Ltmp9 .Ltmp10, frame_ptr_rel, 0
	.short	2
	.short	4431
.Ltmp158:
	.p2align	2, 0x0
	.cv_linetable	5, rdtsc, .Lfunc_end5
	.long	241
	.long	.Ltmp168-.Ltmp167
.Ltmp167:
	.short	.Ltmp170-.Ltmp169
.Ltmp169:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end6-csc_matrix_vector
	.long	0
	.long	0
	.long	4124
	.secrel32	csc_matrix_vector
	.secidx	csc_matrix_vector
	.byte	192
	.asciz	"csc_matrix_vector"
	.p2align	2, 0x0
.Ltmp170:
	.short	.Ltmp172-.Ltmp171
.Ltmp171:
	.short	4114
	.long	48
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp172:
	.short	.Ltmp174-.Ltmp173
.Ltmp173:
	.short	4414
	.long	4125
	.short	1
	.asciz	"A"
	.p2align	2, 0x0
.Ltmp174:
	.cv_def_range	 .Ltmp11 .Ltmp19, frame_ptr_rel, 16
	.short	.Ltmp176-.Ltmp175
.Ltmp175:
	.short	4414
	.long	1601
	.short	1
	.asciz	"Output_vector"
	.p2align	2, 0x0
.Ltmp176:
	.cv_def_range	 .Ltmp11 .Ltmp19, frame_ptr_rel, 24
	.short	.Ltmp178-.Ltmp177
.Ltmp177:
	.short	4414
	.long	1601
	.short	1
	.asciz	"Value_vector"
	.p2align	2, 0x0
.Ltmp178:
	.cv_def_range	 .Ltmp11 .Ltmp19, frame_ptr_rel, 32
	.short	.Ltmp180-.Ltmp179
.Ltmp179:
	.short	4414
	.long	1601
	.short	1
	.asciz	"val"
	.p2align	2, 0x0
.Ltmp180:
	.cv_def_range	 .Ltmp11 .Ltmp19, frame_ptr_rel, 40
	.short	.Ltmp182-.Ltmp181
.Ltmp181:
	.short	4355
	.long	0
	.long	0
	.long	.Ltmp18-.Ltmp12
	.secrel32	.Ltmp12
	.secidx	.Lfunc_begin6
	.byte	0
	.p2align	2, 0x0
.Ltmp182:
	.short	.Ltmp184-.Ltmp183
.Ltmp183:
	.short	4414
	.long	116
	.short	0
	.asciz	"j"
	.p2align	2, 0x0
.Ltmp184:
	.cv_def_range	 .Ltmp12 .Ltmp18, frame_ptr_rel, 12
	.short	.Ltmp186-.Ltmp185
.Ltmp185:
	.short	4355
	.long	0
	.long	0
	.long	.Ltmp16-.Ltmp13
	.secrel32	.Ltmp13
	.secidx	.Lfunc_begin6
	.byte	0
	.p2align	2, 0x0
.Ltmp186:
	.short	.Ltmp188-.Ltmp187
.Ltmp187:
	.short	4414
	.long	116
	.short	0
	.asciz	"i"
	.p2align	2, 0x0
.Ltmp188:
	.cv_def_range	 .Ltmp13 .Ltmp16, frame_ptr_rel, 8
	.short	2
	.short	6
	.short	2
	.short	6
	.short	2
	.short	4431
.Ltmp168:
	.p2align	2, 0x0
	.cv_linetable	6, csc_matrix_vector, .Lfunc_end6
	.long	241
	.long	.Ltmp190-.Ltmp189
.Ltmp189:
	.short	.Ltmp192-.Ltmp191
.Ltmp191:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end7-Value_vector
	.long	0
	.long	0
	.long	4128
	.secrel32	Value_vector
	.secidx	Value_vector
	.byte	192
	.asciz	"Value_vector"
	.p2align	2, 0x0
.Ltmp192:
	.short	.Ltmp194-.Ltmp193
.Ltmp193:
	.short	4114
	.long	40
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp194:
	.short	.Ltmp196-.Ltmp195
.Ltmp195:
	.short	4414
	.long	4125
	.short	1
	.asciz	"A"
	.p2align	2, 0x0
.Ltmp196:
	.cv_def_range	 .Ltmp20 .Ltmp25, frame_ptr_rel, 16
	.short	.Ltmp198-.Ltmp197
.Ltmp197:
	.short	4414
	.long	1601
	.short	1
	.asciz	"initVal"
	.p2align	2, 0x0
.Ltmp198:
	.cv_def_range	 .Ltmp20 .Ltmp25, frame_ptr_rel, 24
	.short	.Ltmp200-.Ltmp199
.Ltmp199:
	.short	4414
	.long	1601
	.short	1
	.asciz	"modifiedVal"
	.p2align	2, 0x0
.Ltmp200:
	.cv_def_range	 .Ltmp20 .Ltmp25, frame_ptr_rel, 32
	.short	.Ltmp202-.Ltmp201
.Ltmp201:
	.short	4355
	.long	0
	.long	0
	.long	.Ltmp24-.Ltmp21
	.secrel32	.Ltmp21
	.secidx	.Lfunc_begin7
	.byte	0
	.p2align	2, 0x0
.Ltmp202:
	.short	.Ltmp204-.Ltmp203
.Ltmp203:
	.short	4414
	.long	116
	.short	0
	.asciz	"i"
	.p2align	2, 0x0
.Ltmp204:
	.cv_def_range	 .Ltmp21 .Ltmp24, frame_ptr_rel, 12
	.short	2
	.short	6
	.short	2
	.short	4431
.Ltmp190:
	.p2align	2, 0x0
	.cv_linetable	7, Value_vector, .Lfunc_end7
	.long	241
	.long	.Ltmp206-.Ltmp205
.Ltmp205:
	.short	.Ltmp208-.Ltmp207
.Ltmp207:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end8-main
	.long	0
	.long	0
	.long	4132
	.secrel32	main
	.secidx	main
	.byte	192
	.asciz	"main"
	.p2align	2, 0x0
.Ltmp208:
	.short	.Ltmp210-.Ltmp209
.Ltmp209:
	.short	4114
	.long	488
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp210:
	.short	.Ltmp212-.Ltmp211
.Ltmp211:
	.short	4414
	.long	116
	.short	1
	.asciz	"argc"
	.p2align	2, 0x0
.Ltmp212:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 468
	.short	.Ltmp214-.Ltmp213
.Ltmp213:
	.short	4414
	.long	4129
	.short	1
	.asciz	"argv"
	.p2align	2, 0x0
.Ltmp214:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 472
	.short	.Ltmp216-.Ltmp215
.Ltmp215:
	.short	4414
	.long	116
	.short	0
	.asciz	"ret_code"
	.p2align	2, 0x0
.Ltmp216:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 464
	.short	.Ltmp218-.Ltmp217
.Ltmp217:
	.short	4414
	.long	4133
	.short	0
	.asciz	"matcode"
	.p2align	2, 0x0
.Ltmp218:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 460
	.short	.Ltmp220-.Ltmp219
.Ltmp219:
	.short	4414
	.long	4135
	.short	0
	.asciz	"f"
	.p2align	2, 0x0
.Ltmp220:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 448
	.short	.Ltmp222-.Ltmp221
.Ltmp221:
	.short	4414
	.long	116
	.short	0
	.asciz	"M"
	.p2align	2, 0x0
.Ltmp222:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 444
	.short	.Ltmp224-.Ltmp223
.Ltmp223:
	.short	4414
	.long	116
	.short	0
	.asciz	"N"
	.p2align	2, 0x0
.Ltmp224:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 440
	.short	.Ltmp226-.Ltmp225
.Ltmp225:
	.short	4414
	.long	116
	.short	0
	.asciz	"nz"
	.p2align	2, 0x0
.Ltmp226:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 436
	.short	.Ltmp228-.Ltmp227
.Ltmp227:
	.short	4414
	.long	1652
	.short	0
	.asciz	"I"
	.p2align	2, 0x0
.Ltmp228:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 424
	.short	.Ltmp230-.Ltmp229
.Ltmp229:
	.short	4414
	.long	1652
	.short	0
	.asciz	"J"
	.p2align	2, 0x0
.Ltmp230:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 416
	.short	.Ltmp232-.Ltmp231
.Ltmp231:
	.short	4414
	.long	1601
	.short	0
	.asciz	"val"
	.p2align	2, 0x0
.Ltmp232:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 408
	.short	.Ltmp234-.Ltmp233
.Ltmp233:
	.short	4414
	.long	1601
	.short	0
	.asciz	"vector_val"
	.p2align	2, 0x0
.Ltmp234:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 400
	.short	.Ltmp236-.Ltmp235
.Ltmp235:
	.short	4414
	.long	4121
	.short	0
	.asciz	"A"
	.p2align	2, 0x0
.Ltmp236:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 344
	.short	.Ltmp238-.Ltmp237
.Ltmp237:
	.short	4414
	.long	1601
	.short	0
	.asciz	"dense_matrix"
	.p2align	2, 0x0
.Ltmp238:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 336
	.short	.Ltmp240-.Ltmp239
.Ltmp239:
	.short	4414
	.long	116
	.short	0
	.asciz	"current_column"
	.p2align	2, 0x0
.Ltmp240:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 332
	.short	.Ltmp242-.Ltmp241
.Ltmp241:
	.short	4414
	.long	1601
	.short	0
	.asciz	"Input_vector"
	.p2align	2, 0x0
.Ltmp242:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 320
	.short	.Ltmp244-.Ltmp243
.Ltmp243:
	.short	4414
	.long	1601
	.short	0
	.asciz	"Output_vector"
	.p2align	2, 0x0
.Ltmp244:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 312
	.short	.Ltmp246-.Ltmp245
.Ltmp245:
	.short	4414
	.long	65
	.short	0
	.asciz	"k"
	.p2align	2, 0x0
.Ltmp246:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 304
	.short	.Ltmp248-.Ltmp247
.Ltmp247:
	.short	4414
	.long	35
	.short	0
	.asciz	"start_time"
	.p2align	2, 0x0
.Ltmp248:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 280
	.short	.Ltmp250-.Ltmp249
.Ltmp249:
	.short	4414
	.long	65
	.short	0
	.asciz	"cpu_freq"
	.p2align	2, 0x0
.Ltmp250:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 272
	.short	.Ltmp252-.Ltmp251
.Ltmp251:
	.short	4414
	.long	35
	.short	0
	.asciz	"start_time1"
	.p2align	2, 0x0
.Ltmp252:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 264
	.short	.Ltmp254-.Ltmp253
.Ltmp253:
	.short	4414
	.long	35
	.short	0
	.asciz	"end_time1"
	.p2align	2, 0x0
.Ltmp254:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 200
	.short	.Ltmp256-.Ltmp255
.Ltmp255:
	.short	4414
	.long	65
	.short	0
	.asciz	"elapsed_time1"
	.p2align	2, 0x0
.Ltmp256:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 192
	.short	.Ltmp258-.Ltmp257
.Ltmp257:
	.short	4414
	.long	35
	.short	0
	.asciz	"start_time2"
	.p2align	2, 0x0
.Ltmp258:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 184
	.short	.Ltmp260-.Ltmp259
.Ltmp259:
	.short	4414
	.long	35
	.short	0
	.asciz	"end_time2"
	.p2align	2, 0x0
.Ltmp260:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 120
	.short	.Ltmp262-.Ltmp261
.Ltmp261:
	.short	4414
	.long	65
	.short	0
	.asciz	"elapsed_time2"
	.p2align	2, 0x0
.Ltmp262:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 112
	.short	.Ltmp264-.Ltmp263
.Ltmp263:
	.short	4414
	.long	35
	.short	0
	.asciz	"end_time"
	.p2align	2, 0x0
.Ltmp264:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 104
	.short	.Ltmp266-.Ltmp265
.Ltmp265:
	.short	4414
	.long	65
	.short	0
	.asciz	"elapsed_time"
	.p2align	2, 0x0
.Ltmp266:
	.cv_def_range	 .Ltmp26 .Ltmp72, frame_ptr_rel, 96
	.short	.Ltmp268-.Ltmp267
.Ltmp267:
	.short	4355
	.long	0
	.long	0
	.long	.Ltmp49-.Ltmp46
	.secrel32	.Ltmp46
	.secidx	.Lfunc_begin8
	.byte	0
	.p2align	2, 0x0
.Ltmp268:
	.short	.Ltmp270-.Ltmp269
.Ltmp269:
	.short	4414
	.long	116
	.short	0
	.asciz	"i"
	.p2align	2, 0x0
.Ltmp270:
	.cv_def_range	 .Ltmp46 .Ltmp49, frame_ptr_rel, 396
	.short	2
	.short	6
	.short	.Ltmp272-.Ltmp271
.Ltmp271:
	.short	4355
	.long	0
	.long	0
	.long	.Ltmp57-.Ltmp52
	.secrel32	.Ltmp52
	.secidx	.Lfunc_begin8
	.byte	0
	.p2align	2, 0x0
.Ltmp272:
	.short	.Ltmp274-.Ltmp273
.Ltmp273:
	.short	4414
	.long	116
	.short	0
	.asciz	"i"
	.p2align	2, 0x0
.Ltmp274:
	.cv_def_range	 .Ltmp52 .Ltmp57, frame_ptr_rel, 328
	.short	2
	.short	6
	.short	.Ltmp276-.Ltmp275
.Ltmp275:
	.short	4355
	.long	0
	.long	0
	.long	.Ltmp65-.Ltmp62
	.secrel32	.Ltmp62
	.secidx	.Lfunc_begin8
	.byte	0
	.p2align	2, 0x0
.Ltmp276:
	.short	.Ltmp278-.Ltmp277
.Ltmp277:
	.short	4414
	.long	116
	.short	0
	.asciz	"i"
	.p2align	2, 0x0
.Ltmp278:
	.cv_def_range	 .Ltmp62 .Ltmp65, frame_ptr_rel, 300
	.short	2
	.short	6
	.short	.Ltmp280-.Ltmp279
.Ltmp279:
	.short	4355
	.long	0
	.long	0
	.long	.Ltmp68-.Ltmp65
	.secrel32	.Ltmp65
	.secidx	.Lfunc_begin8
	.byte	0
	.p2align	2, 0x0
.Ltmp280:
	.short	.Ltmp282-.Ltmp281
.Ltmp281:
	.short	4414
	.long	116
	.short	0
	.asciz	"i"
	.p2align	2, 0x0
.Ltmp282:
	.cv_def_range	 .Ltmp65 .Ltmp68, frame_ptr_rel, 296
	.short	2
	.short	6
	.short	.Ltmp284-.Ltmp283
.Ltmp283:
	.short	4355
	.long	0
	.long	0
	.long	.Ltmp71-.Ltmp68
	.secrel32	.Ltmp68
	.secidx	.Lfunc_begin8
	.byte	0
	.p2align	2, 0x0
.Ltmp284:
	.short	.Ltmp286-.Ltmp285
.Ltmp285:
	.short	4414
	.long	116
	.short	0
	.asciz	"i"
	.p2align	2, 0x0
.Ltmp286:
	.cv_def_range	 .Ltmp68 .Ltmp71, frame_ptr_rel, 292
	.short	2
	.short	6
	.short	.Ltmp288-.Ltmp287
.Ltmp287:
	.short	4446
	.secrel32	.Ltmp38
	.secidx	.Ltmp38
	.short	.Ltmp39-.Ltmp38
	.long	116
	.p2align	2, 0x0
.Ltmp288:
	.short	.Ltmp290-.Ltmp289
.Ltmp289:
	.short	4446
	.secrel32	.Ltmp40
	.secidx	.Ltmp40
	.short	.Ltmp41-.Ltmp40
	.long	116
	.p2align	2, 0x0
.Ltmp290:
	.short	.Ltmp292-.Ltmp291
.Ltmp291:
	.short	4446
	.secrel32	.Ltmp42
	.secidx	.Ltmp42
	.short	.Ltmp43-.Ltmp42
	.long	65
	.p2align	2, 0x0
.Ltmp292:
	.short	.Ltmp294-.Ltmp293
.Ltmp293:
	.short	4446
	.secrel32	.Ltmp44
	.secidx	.Ltmp44
	.short	.Ltmp45-.Ltmp44
	.long	65
	.p2align	2, 0x0
.Ltmp294:
	.short	.Ltmp296-.Ltmp295
.Ltmp295:
	.short	4446
	.secrel32	.Ltmp50
	.secidx	.Ltmp50
	.short	.Ltmp51-.Ltmp50
	.long	116
	.p2align	2, 0x0
.Ltmp296:
	.short	.Ltmp298-.Ltmp297
.Ltmp297:
	.short	4446
	.secrel32	.Ltmp58
	.secidx	.Ltmp58
	.short	.Ltmp59-.Ltmp58
	.long	65
	.p2align	2, 0x0
.Ltmp298:
	.short	.Ltmp300-.Ltmp299
.Ltmp299:
	.short	4446
	.secrel32	.Ltmp60
	.secidx	.Ltmp60
	.short	.Ltmp61-.Ltmp60
	.long	65
	.p2align	2, 0x0
.Ltmp300:
	.short	2
	.short	4431
.Ltmp206:
	.p2align	2, 0x0
	.cv_linetable	8, main, .Lfunc_end8
	.section	.debug$S,"dr",associative,fprintf
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp302-.Ltmp301
.Ltmp301:
	.short	.Ltmp304-.Ltmp303
.Ltmp303:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end9-fprintf
	.long	0
	.long	0
	.long	4143
	.secrel32	fprintf
	.secidx	fprintf
	.byte	192
	.asciz	"fprintf"
	.p2align	2, 0x0
.Ltmp304:
	.short	.Ltmp306-.Ltmp305
.Ltmp305:
	.short	4114
	.long	72
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp306:
	.short	.Ltmp308-.Ltmp307
.Ltmp307:
	.short	4414
	.long	4140
	.short	1
	.asciz	"_Stream"
	.p2align	2, 0x0
.Ltmp308:
	.cv_def_range	 .Ltmp73 .Ltmp74, frame_ptr_rel, 56
	.short	.Ltmp310-.Ltmp309
.Ltmp309:
	.short	4414
	.long	4098
	.short	1
	.asciz	"_Format"
	.p2align	2, 0x0
.Ltmp310:
	.cv_def_range	 .Ltmp73 .Ltmp74, frame_ptr_rel, 64
	.short	.Ltmp312-.Ltmp311
.Ltmp311:
	.short	4414
	.long	116
	.short	0
	.asciz	"_Result"
	.p2align	2, 0x0
.Ltmp312:
	.cv_def_range	 .Ltmp73 .Ltmp74, frame_ptr_rel, 52
	.short	.Ltmp314-.Ltmp313
.Ltmp313:
	.short	4414
	.long	1648
	.short	0
	.asciz	"_ArgList"
	.p2align	2, 0x0
.Ltmp314:
	.cv_def_range	 .Ltmp73 .Ltmp74, frame_ptr_rel, 40
	.short	2
	.short	4431
.Ltmp302:
	.p2align	2, 0x0
	.cv_linetable	9, fprintf, .Lfunc_end9
	.section	.debug$S,"dr",associative,printf
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp316-.Ltmp315
.Ltmp315:
	.short	.Ltmp318-.Ltmp317
.Ltmp317:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end10-printf
	.long	0
	.long	0
	.long	4146
	.secrel32	printf
	.secidx	printf
	.byte	192
	.asciz	"printf"
	.p2align	2, 0x0
.Ltmp318:
	.short	.Ltmp320-.Ltmp319
.Ltmp319:
	.short	4114
	.long	72
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp320:
	.short	.Ltmp322-.Ltmp321
.Ltmp321:
	.short	4414
	.long	4098
	.short	1
	.asciz	"_Format"
	.p2align	2, 0x0
.Ltmp322:
	.cv_def_range	 .Ltmp75 .Ltmp76, frame_ptr_rel, 64
	.short	.Ltmp324-.Ltmp323
.Ltmp323:
	.short	4414
	.long	116
	.short	0
	.asciz	"_Result"
	.p2align	2, 0x0
.Ltmp324:
	.cv_def_range	 .Ltmp75 .Ltmp76, frame_ptr_rel, 60
	.short	.Ltmp326-.Ltmp325
.Ltmp325:
	.short	4414
	.long	1648
	.short	0
	.asciz	"_ArgList"
	.p2align	2, 0x0
.Ltmp326:
	.cv_def_range	 .Ltmp75 .Ltmp76, frame_ptr_rel, 48
	.short	2
	.short	4431
.Ltmp316:
	.p2align	2, 0x0
	.cv_linetable	10, printf, .Lfunc_end10
	.section	.debug$S,"dr",associative,fscanf
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp328-.Ltmp327
.Ltmp327:
	.short	.Ltmp330-.Ltmp329
.Ltmp329:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end11-fscanf
	.long	0
	.long	0
	.long	4147
	.secrel32	fscanf
	.secidx	fscanf
	.byte	192
	.asciz	"fscanf"
	.p2align	2, 0x0
.Ltmp330:
	.short	.Ltmp332-.Ltmp331
.Ltmp331:
	.short	4114
	.long	72
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp332:
	.short	.Ltmp334-.Ltmp333
.Ltmp333:
	.short	4414
	.long	4140
	.short	1
	.asciz	"_Stream"
	.p2align	2, 0x0
.Ltmp334:
	.cv_def_range	 .Ltmp77 .Ltmp78, frame_ptr_rel, 56
	.short	.Ltmp336-.Ltmp335
.Ltmp335:
	.short	4414
	.long	4098
	.short	1
	.asciz	"_Format"
	.p2align	2, 0x0
.Ltmp336:
	.cv_def_range	 .Ltmp77 .Ltmp78, frame_ptr_rel, 64
	.short	.Ltmp338-.Ltmp337
.Ltmp337:
	.short	4414
	.long	116
	.short	0
	.asciz	"_Result"
	.p2align	2, 0x0
.Ltmp338:
	.cv_def_range	 .Ltmp77 .Ltmp78, frame_ptr_rel, 52
	.short	.Ltmp340-.Ltmp339
.Ltmp339:
	.short	4414
	.long	1648
	.short	0
	.asciz	"_ArgList"
	.p2align	2, 0x0
.Ltmp340:
	.cv_def_range	 .Ltmp77 .Ltmp78, frame_ptr_rel, 40
	.short	2
	.short	4431
.Ltmp328:
	.p2align	2, 0x0
	.cv_linetable	11, fscanf, .Lfunc_end11
	.section	.debug$S,"dr",associative,_vsprintf_l
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp342-.Ltmp341
.Ltmp341:
	.short	.Ltmp344-.Ltmp343
.Ltmp343:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end12-_vsprintf_l
	.long	0
	.long	0
	.long	4161
	.secrel32	_vsprintf_l
	.secidx	_vsprintf_l
	.byte	192
	.asciz	"_vsprintf_l"
	.p2align	2, 0x0
.Ltmp344:
	.short	.Ltmp346-.Ltmp345
.Ltmp345:
	.short	4114
	.long	72
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp346:
	.short	.Ltmp348-.Ltmp347
.Ltmp347:
	.short	4414
	.long	4096
	.short	1
	.asciz	"_Buffer"
	.p2align	2, 0x0
.Ltmp348:
	.cv_def_range	 .Ltmp79 .Ltmp80, frame_ptr_rel, 40
	.short	.Ltmp350-.Ltmp349
.Ltmp349:
	.short	4414
	.long	4098
	.short	1
	.asciz	"_Format"
	.p2align	2, 0x0
.Ltmp350:
	.cv_def_range	 .Ltmp79 .Ltmp80, frame_ptr_rel, 48
	.short	.Ltmp352-.Ltmp351
.Ltmp351:
	.short	4414
	.long	4150
	.short	1
	.asciz	"_Locale"
	.p2align	2, 0x0
.Ltmp352:
	.cv_def_range	 .Ltmp79 .Ltmp80, frame_ptr_rel, 56
	.short	.Ltmp354-.Ltmp353
.Ltmp353:
	.short	4414
	.long	1648
	.short	1
	.asciz	"_ArgList"
	.p2align	2, 0x0
.Ltmp354:
	.cv_def_range	 .Ltmp79 .Ltmp80, frame_ptr_rel, 64
	.short	2
	.short	4431
.Ltmp342:
	.p2align	2, 0x0
	.cv_linetable	12, _vsprintf_l, .Lfunc_end12
	.section	.debug$S,"dr",associative,_vsnprintf_l
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp356-.Ltmp355
.Ltmp355:
	.short	.Ltmp358-.Ltmp357
.Ltmp357:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end13-_vsnprintf_l
	.long	0
	.long	0
	.long	4164
	.secrel32	_vsnprintf_l
	.secidx	_vsnprintf_l
	.byte	192
	.asciz	"_vsnprintf_l"
	.p2align	2, 0x0
.Ltmp358:
	.short	.Ltmp360-.Ltmp359
.Ltmp359:
	.short	4114
	.long	136
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp360:
	.short	.Ltmp362-.Ltmp361
.Ltmp361:
	.short	4414
	.long	4096
	.short	1
	.asciz	"_Buffer"
	.p2align	2, 0x0
.Ltmp362:
	.cv_def_range	 .Ltmp81 .Ltmp82, frame_ptr_rel, 104
	.short	.Ltmp364-.Ltmp363
.Ltmp363:
	.short	4414
	.long	4105
	.short	1
	.asciz	"_BufferCount"
	.p2align	2, 0x0
.Ltmp364:
	.cv_def_range	 .Ltmp81 .Ltmp82, frame_ptr_rel, 112
	.short	.Ltmp366-.Ltmp365
.Ltmp365:
	.short	4414
	.long	4098
	.short	1
	.asciz	"_Format"
	.p2align	2, 0x0
.Ltmp366:
	.cv_def_range	 .Ltmp81 .Ltmp82, frame_ptr_rel, 120
	.short	.Ltmp368-.Ltmp367
.Ltmp367:
	.short	4414
	.long	4150
	.short	1
	.asciz	"_Locale"
	.p2align	2, 0x0
.Ltmp368:
	.cv_def_range	 .Ltmp81 .Ltmp82, frame_ptr_rel, 128
	.short	.Ltmp370-.Ltmp369
.Ltmp369:
	.short	4414
	.long	1648
	.short	1
	.asciz	"_ArgList"
	.p2align	2, 0x0
.Ltmp370:
	.cv_def_range	 .Ltmp81 .Ltmp82, frame_ptr_rel, 176
	.short	.Ltmp372-.Ltmp371
.Ltmp371:
	.short	4414
	.long	4165
	.short	0
	.asciz	"_Result"
	.p2align	2, 0x0
.Ltmp372:
	.cv_def_range	 .Ltmp81 .Ltmp82, frame_ptr_rel, 100
	.short	2
	.short	4431
.Ltmp356:
	.p2align	2, 0x0
	.cv_linetable	13, _vsnprintf_l, .Lfunc_end13
	.section	.debug$S,"dr",associative,__local_stdio_printf_options
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp374-.Ltmp373
.Ltmp373:
	.short	.Ltmp376-.Ltmp375
.Ltmp375:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end14-__local_stdio_printf_options
	.long	0
	.long	0
	.long	4167
	.secrel32	__local_stdio_printf_options
	.secidx	__local_stdio_printf_options
	.byte	192
	.asciz	"__local_stdio_printf_options"
	.p2align	2, 0x0
.Ltmp376:
	.short	.Ltmp378-.Ltmp377
.Ltmp377:
	.short	4114
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	8192
	.p2align	2, 0x0
.Ltmp378:
	.short	.Ltmp380-.Ltmp379
.Ltmp379:
	.short	4364
	.long	35
	.secrel32	__local_stdio_printf_options._OptionsStorage
	.secidx	__local_stdio_printf_options._OptionsStorage
	.asciz	"_OptionsStorage"
	.p2align	2, 0x0
.Ltmp380:
	.short	2
	.short	4431
.Ltmp374:
	.p2align	2, 0x0
	.cv_linetable	14, __local_stdio_printf_options, .Lfunc_end14
	.section	.debug$S,"dr",associative,_vfprintf_l
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp382-.Ltmp381
.Ltmp381:
	.short	.Ltmp384-.Ltmp383
.Ltmp383:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end15-_vfprintf_l
	.long	0
	.long	0
	.long	4170
	.secrel32	_vfprintf_l
	.secidx	_vfprintf_l
	.byte	192
	.asciz	"_vfprintf_l"
	.p2align	2, 0x0
.Ltmp384:
	.short	.Ltmp386-.Ltmp385
.Ltmp385:
	.short	4114
	.long	104
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp386:
	.short	.Ltmp388-.Ltmp387
.Ltmp387:
	.short	4414
	.long	4140
	.short	1
	.asciz	"_Stream"
	.p2align	2, 0x0
.Ltmp388:
	.cv_def_range	 .Ltmp84 .Ltmp85, frame_ptr_rel, 72
	.short	.Ltmp390-.Ltmp389
.Ltmp389:
	.short	4414
	.long	4098
	.short	1
	.asciz	"_Format"
	.p2align	2, 0x0
.Ltmp390:
	.cv_def_range	 .Ltmp84 .Ltmp85, frame_ptr_rel, 80
	.short	.Ltmp392-.Ltmp391
.Ltmp391:
	.short	4414
	.long	4150
	.short	1
	.asciz	"_Locale"
	.p2align	2, 0x0
.Ltmp392:
	.cv_def_range	 .Ltmp84 .Ltmp85, frame_ptr_rel, 88
	.short	.Ltmp394-.Ltmp393
.Ltmp393:
	.short	4414
	.long	1648
	.short	1
	.asciz	"_ArgList"
	.p2align	2, 0x0
.Ltmp394:
	.cv_def_range	 .Ltmp84 .Ltmp85, frame_ptr_rel, 96
	.short	2
	.short	4431
.Ltmp382:
	.p2align	2, 0x0
	.cv_linetable	15, _vfprintf_l, .Lfunc_end15
	.section	.debug$S,"dr",associative,_vfscanf_l
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp396-.Ltmp395
.Ltmp395:
	.short	.Ltmp398-.Ltmp397
.Ltmp397:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end16-_vfscanf_l
	.long	0
	.long	0
	.long	4171
	.secrel32	_vfscanf_l
	.secidx	_vfscanf_l
	.byte	192
	.asciz	"_vfscanf_l"
	.p2align	2, 0x0
.Ltmp398:
	.short	.Ltmp400-.Ltmp399
.Ltmp399:
	.short	4114
	.long	104
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp400:
	.short	.Ltmp402-.Ltmp401
.Ltmp401:
	.short	4414
	.long	4140
	.short	1
	.asciz	"_Stream"
	.p2align	2, 0x0
.Ltmp402:
	.cv_def_range	 .Ltmp86 .Ltmp87, frame_ptr_rel, 72
	.short	.Ltmp404-.Ltmp403
.Ltmp403:
	.short	4414
	.long	4098
	.short	1
	.asciz	"_Format"
	.p2align	2, 0x0
.Ltmp404:
	.cv_def_range	 .Ltmp86 .Ltmp87, frame_ptr_rel, 80
	.short	.Ltmp406-.Ltmp405
.Ltmp405:
	.short	4414
	.long	4150
	.short	1
	.asciz	"_Locale"
	.p2align	2, 0x0
.Ltmp406:
	.cv_def_range	 .Ltmp86 .Ltmp87, frame_ptr_rel, 88
	.short	.Ltmp408-.Ltmp407
.Ltmp407:
	.short	4414
	.long	1648
	.short	1
	.asciz	"_ArgList"
	.p2align	2, 0x0
.Ltmp408:
	.cv_def_range	 .Ltmp86 .Ltmp87, frame_ptr_rel, 96
	.short	2
	.short	4431
.Ltmp396:
	.p2align	2, 0x0
	.cv_linetable	16, _vfscanf_l, .Lfunc_end16
	.section	.debug$S,"dr",associative,__local_stdio_scanf_options
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp410-.Ltmp409
.Ltmp409:
	.short	.Ltmp412-.Ltmp411
.Ltmp411:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end17-__local_stdio_scanf_options
	.long	0
	.long	0
	.long	4172
	.secrel32	__local_stdio_scanf_options
	.secidx	__local_stdio_scanf_options
	.byte	192
	.asciz	"__local_stdio_scanf_options"
	.p2align	2, 0x0
.Ltmp412:
	.short	.Ltmp414-.Ltmp413
.Ltmp413:
	.short	4114
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	8192
	.p2align	2, 0x0
.Ltmp414:
	.short	.Ltmp416-.Ltmp415
.Ltmp415:
	.short	4364
	.long	35
	.secrel32	__local_stdio_scanf_options._OptionsStorage
	.secidx	__local_stdio_scanf_options._OptionsStorage
	.asciz	"_OptionsStorage"
	.p2align	2, 0x0
.Ltmp416:
	.short	2
	.short	4431
.Ltmp410:
	.p2align	2, 0x0
	.cv_linetable	17, __local_stdio_scanf_options, .Lfunc_end17
	.section	.debug$S,"dr"
	.long	241
	.long	.Ltmp418-.Ltmp417
.Ltmp417:
	.short	.Ltmp420-.Ltmp419
.Ltmp419:
	.short	4360
	.long	1648
	.asciz	"va_list"
	.p2align	2, 0x0
.Ltmp420:
	.short	.Ltmp422-.Ltmp421
.Ltmp421:
	.short	4360
	.long	35
	.asciz	"size_t"
	.p2align	2, 0x0
.Ltmp422:
	.short	.Ltmp424-.Ltmp423
.Ltmp423:
	.short	4360
	.long	35
	.asciz	"uint64_t"
	.p2align	2, 0x0
.Ltmp424:
	.short	.Ltmp426-.Ltmp425
.Ltmp425:
	.short	4360
	.long	4121
	.asciz	"CSCMatrix"
	.p2align	2, 0x0
.Ltmp426:
	.short	.Ltmp428-.Ltmp427
.Ltmp427:
	.short	4360
	.long	4121
	.asciz	"CSCMatrix"
	.p2align	2, 0x0
.Ltmp428:
	.short	.Ltmp430-.Ltmp429
.Ltmp429:
	.short	4360
	.long	4133
	.asciz	"MM_typecode"
	.p2align	2, 0x0
.Ltmp430:
	.short	.Ltmp432-.Ltmp431
.Ltmp431:
	.short	4360
	.long	4137
	.asciz	"FILE"
	.p2align	2, 0x0
.Ltmp432:
	.short	.Ltmp434-.Ltmp433
.Ltmp433:
	.short	4360
	.long	4137
	.asciz	"_iobuf"
	.p2align	2, 0x0
.Ltmp434:
	.short	.Ltmp436-.Ltmp435
.Ltmp435:
	.short	4360
	.long	4158
	.asciz	"__crt_locale_pointers"
	.p2align	2, 0x0
.Ltmp436:
	.short	.Ltmp438-.Ltmp437
.Ltmp437:
	.short	4360
	.long	4149
	.asciz	"_locale_t"
	.p2align	2, 0x0
.Ltmp438:
	.short	.Ltmp440-.Ltmp439
.Ltmp439:
	.short	4360
	.long	4158
	.asciz	"__crt_locale_pointers"
	.p2align	2, 0x0
.Ltmp440:
.Ltmp418:
	.p2align	2, 0x0
	.cv_filechecksums
	.cv_stringtable
	.long	241
	.long	.Ltmp442-.Ltmp441
.Ltmp441:
	.short	.Ltmp444-.Ltmp443
.Ltmp443:
	.short	4428
	.long	4178
	.p2align	2, 0x0
.Ltmp444:
.Ltmp442:
	.p2align	2, 0x0
	.section	.debug$T,"dr"
	.p2align	2, 0x0
	.long	4
	.short	0xa
	.short	0x1002
	.long	0x70
	.long	0x1040c
	.short	0xa
	.short	0x1001
	.long	0x70
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x1001
	.long	0x1040c
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x1000
	.long	0x1002
	.long	0x0
	.short	0xe
	.short	0x1008
	.long	0x74
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x1003
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x1004
	.asciz	"sprintf"
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x1000
	.long	0x1002
	.long	0x670
	.short	0xe
	.short	0x1008
	.long	0x74
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x1006
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1007
	.asciz	"vsprintf"
	.byte	243
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1001
	.long	0x23
	.short	0x1
	.byte	242
	.byte	241
	.short	0x16
	.short	0x1201
	.long	0x4
	.long	0x1000
	.long	0x1009
	.long	0x1002
	.long	0x0
	.short	0xe
	.short	0x1008
	.long	0x74
	.byte	0x0
	.byte	0x0
	.short	0x4
	.long	0x100a
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x100b
	.asciz	"_snprintf"
	.byte	242
	.byte	241
	.short	0x16
	.short	0x1201
	.long	0x4
	.long	0x1000
	.long	0x1009
	.long	0x1002
	.long	0x670
	.short	0xe
	.short	0x1008
	.long	0x74
	.byte	0x0
	.byte	0x0
	.short	0x4
	.long	0x100d
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x100e
	.asciz	"_vsnprintf"
	.byte	241
	.short	0x6
	.short	0x1201
	.long	0x0
	.short	0xe
	.short	0x1008
	.long	0x41
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1010
	.short	0x1e
	.short	0x1601
	.long	0x0
	.long	0x1011
	.asciz	"get_cpu_frequency"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1008
	.long	0x23
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1010
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x1013
	.asciz	"rdtsc"
	.byte	242
	.byte	241
	.short	0x1e
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"CSCMatrix"
	.short	0x16
	.short	0x1201
	.long	0x4
	.long	0x1015
	.long	0x641
	.long	0x641
	.long	0x641
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x4
	.long	0x1016
	.short	0x92
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x0
	.asciz	"rows"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x4
	.asciz	"cols"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x8
	.asciz	"nnz"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x641
	.short	0x10
	.asciz	"values"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x674
	.short	0x18
	.asciz	"row_indices"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x674
	.short	0x20
	.asciz	"column_ptrs"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x674
	.short	0x28
	.asciz	"column_indices"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1e
	.short	0x1505
	.short	0x7
	.short	0x0
	.long	0x1018
	.long	0x0
	.long	0x0
	.short	0x30
	.asciz	"CSCMatrix"
	.short	0x46
	.short	0x1605
	.long	0x0
	.asciz	"C:\\Users\\DELL\\OneDrive\\Documents\\samplesss\\spmv-10x-DOUBLE.c"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1019
	.long	0x101a
	.long	0x15
	.short	0x1e
	.short	0x1601
	.long	0x0
	.long	0x1017
	.asciz	"csc_matrix_vector"
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x1015
	.long	0x2c
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x1015
	.long	0x641
	.long	0x641
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x101e
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x101f
	.asciz	"Value_vector"
	.byte	243
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x670
	.long	0x1000c
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x74
	.long	0x1021
	.short	0xe
	.short	0x1008
	.long	0x74
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1022
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x1023
	.asciz	"main"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1503
	.long	0x70
	.long	0x23
	.short	0x4
	.byte	0
	.byte	241
	.short	0x1e
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"_iobuf"
	.byte	243
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x1026
	.long	0x1000c
	.short	0x1a
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x603
	.short	0x0
	.asciz	"_Placeholder"
	.byte	241
	.short	0x1e
	.short	0x1505
	.short	0x1
	.short	0x0
	.long	0x1028
	.long	0x0
	.long	0x0
	.short	0x8
	.asciz	"_iobuf"
	.byte	243
	.byte	242
	.byte	241
	.short	0x5a
	.short	0x1605
	.long	0x0
	.asciz	"C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.22621.0\\ucrt\\corecrt_wstdio.h"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1029
	.long	0x102a
	.long	0x1c
	.short	0xa
	.short	0x1002
	.long	0x1026
	.long	0x1040c
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x102c
	.long	0x1002
	.long	0x0
	.short	0xe
	.short	0x1008
	.long	0x74
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x102d
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x102e
	.asciz	"fprintf"
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1002
	.long	0x0
	.short	0xe
	.short	0x1008
	.long	0x74
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1030
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x1031
	.asciz	"printf"
	.byte	241
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x102e
	.asciz	"fscanf"
	.byte	241
	.short	0x2a
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"__crt_locale_pointers"
	.short	0xa
	.short	0x1002
	.long	0x1034
	.long	0x1000c
	.short	0xa
	.short	0x1001
	.long	0x1035
	.short	0x1
	.byte	242
	.byte	241
	.short	0x16
	.short	0x1201
	.long	0x4
	.long	0x1000
	.long	0x1002
	.long	0x1036
	.long	0x670
	.short	0xe
	.short	0x1008
	.long	0x74
	.byte	0x0
	.byte	0x0
	.short	0x4
	.long	0x1037
	.short	0x26
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"__crt_locale_data"
	.short	0xa
	.short	0x1002
	.long	0x1039
	.long	0x1000c
	.short	0x2a
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"__crt_multibyte_data"
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x103b
	.long	0x1000c
	.short	0x2a
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x103a
	.short	0x0
	.asciz	"locinfo"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x103c
	.short	0x8
	.asciz	"mbcinfo"
	.byte	242
	.byte	241
	.short	0x2a
	.short	0x1505
	.short	0x2
	.short	0x0
	.long	0x103d
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"__crt_locale_pointers"
	.short	0x52
	.short	0x1605
	.long	0x0
	.asciz	"C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.22621.0\\ucrt\\corecrt.h"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x103e
	.long	0x103f
	.long	0x269
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1038
	.asciz	"_vsprintf_l"
	.short	0x1a
	.short	0x1201
	.long	0x5
	.long	0x1000
	.long	0x1009
	.long	0x1002
	.long	0x1036
	.long	0x670
	.short	0xe
	.short	0x1008
	.long	0x74
	.byte	0x0
	.byte	0x0
	.short	0x5
	.long	0x1042
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x1043
	.asciz	"_vsnprintf_l"
	.byte	243
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1001
	.long	0x74
	.short	0x1
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1008
	.long	0x623
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1010
	.short	0x2a
	.short	0x1601
	.long	0x0
	.long	0x1046
	.asciz	"__local_stdio_printf_options"
	.byte	243
	.byte	242
	.byte	241
	.short	0x16
	.short	0x1201
	.long	0x4
	.long	0x102c
	.long	0x1002
	.long	0x1036
	.long	0x670
	.short	0xe
	.short	0x1008
	.long	0x74
	.byte	0x0
	.byte	0x0
	.short	0x4
	.long	0x1048
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1049
	.asciz	"_vfprintf_l"
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1049
	.asciz	"_vfscanf_l"
	.byte	241
	.short	0x26
	.short	0x1601
	.long	0x0
	.long	0x1046
	.asciz	"__local_stdio_scanf_options"
	.short	0x32
	.short	0x1605
	.long	0x0
	.asciz	"C:\\Users\\DELL\\OneDrive\\Documents\\samplesss"
	.byte	241
	.short	0x1a
	.short	0x1605
	.long	0x0
	.asciz	"spmv-10x-DOUBLE.c"
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1605
	.long	0x0
	.byte	0
	.byte	243
	.byte	242
	.byte	241
	.short	0x4a
	.short	0x1605
	.long	0x0
	.asciz	"C:\\PROGRA~2\\Intel\\oneAPI\\compiler\\2024.1\\bin\\compiler\\clang-cl.exe"
	.byte	241
	.short	0xade
	.short	0x1605
	.long	0x0
	.asciz	"\"-cc1\" \"-triple\" \"x86_64-pc-windows-msvc19.40.33811\" \"-S\" \"-dumpdir\" \"a-\" \"-disable-free\" \"-clear-ast-before-backend\" \"-disable-llvm-verifier\" \"-discard-value-names\" \"-mrelocation-model\" \"pic\" \"-pic-level\" \"2\" \"-fveclib=SVML\" \"-mframe-pointer=none\" \"-menable-no-infs\" \"-menable-no-nans\" \"-fapprox-func\" \"-funsafe-math-optimizations\" \"-fno-signed-zeros\" \"-mreassociate\" \"-freciprocal-math\" \"-ffp-contract=fast\" \"-fno-rounding-math\" \"-ffast-math\" \"-ffinite-math-only\" \"-fno-verbose-asm\" \"-mconstructor-aliases\" \"-funwind-tables=2\" \"-target-cpu\" \"x86-64\" \"-mllvm\" \"-x86-enable-unaligned-vector-move=true\" \"-tune-cpu\" \"generic\" \"-D_MT\" \"-flto-visibility-public-std\" \"--dependent-lib=libcmt\" \"--dependent-lib=libircmt\" \"--dependent-lib=svml_dispmt\" \"--dependent-lib=libdecimal\" \"--dependent-lib=libmmt\" \"--dependent-lib=oldnames\" \"-fdiagnostics-format\" \"msvc\" \"-gno-column-info\" \"-gcodeview\" \"-debug-info-kind=limited\" \"-fdebug-compilation-dir=C:\\\\Users\\\\DELL\\\\OneDrive\\\\Documents\\\\samplesss\" \"-v\" \"-fcoverage-compilation-dir=C:\\\\Users\\\\DELL\\\\OneDrive\\\\Documents\\\\samplesss\" \"-fclang-abi-compat=17\" \"-resource-dir\" \"C:\\\\PROGRA~2\\\\Intel\\\\oneAPI\\\\compiler\\\\2024.1\\\\lib\\\\clang\\\\18\" \"-internal-isystem\" \"C:\\\\PROGRA~2\\\\Intel\\\\oneAPI\\\\compiler\\\\2024.1\\\\bin\\\\compiler\\\\..\\\\..\\\\opt\\\\compiler\\\\include\" \"-internal-isystem\" \"C:\\\\PROGRA~2\\\\Intel\\\\oneAPI\\\\compiler\\\\2024.1\\\\lib\\\\clang\\\\18\\\\include\" \"-internal-isystem\" \"C:\\\\PROGRA~2\\\\Intel\\\\oneAPI\\\\compiler\\\\2024.1\\\\bin\\\\compiler\\\\..\\\\..\\\\opt\\\\compiler\\\\include\" \"-internal-isystem\" \"C:\\\\Program Files (x86)\\\\Microsoft Visual Studio\\\\2022\\\\BuildTools\\\\VC\\\\Tools\\\\MSVC\\\\14.40.33807\\\\include\" \"-internal-isystem\" \"C:\\\\Program Files (x86)\\\\Microsoft Visual Studio\\\\2022\\\\BuildTools\\\\VC\\\\Tools\\\\MSVC\\\\14.40.33807\\\\atlmfc\\\\include\" \"-internal-isystem\" \"C:\\\\Program Files (x86)\\\\Windows Kits\\\\10\\\\Include\\\\10.0.22621.0\\\\ucrt\" \"-internal-isystem\" \"C:\\\\Program Files (x86)\\\\Windows Kits\\\\10\\\\Include\\\\10.0.22621.0\\\\shared\" \"-internal-isystem\" \"C:\\\\Program Files (x86)\\\\Windows Kits\\\\10\\\\Include\\\\10.0.22621.0\\\\um\" \"-internal-isystem\" \"C:\\\\Program Files (x86)\\\\Windows Kits\\\\10\\\\Include\\\\10.0.22621.0\\\\winrt\" \"-internal-isystem\" \"C:\\\\Program Files (x86)\\\\Windows Kits\\\\10\\\\Include\\\\10.0.22621.0\\\\cppwinrt\" \"-header-base-path\" \"C:\\\\PROGRA~2\\\\Intel\\\\oneAPI\\\\compiler\\\\2024.1\" \"-Wno-c++11-narrowing\" \"-ferror-limit\" \"19\" \"-malign-double\" \"-fno-use-cxa-atexit\" \"-fuse-line-directives\" \"-fms-extensions\" \"-fms-compatibility\" \"-fms-compatibility-version=19.40.33811\" \"-fdiagnostics-absolute-paths\" \"-fdelayed-template-parsing\" \"-fpack-struct=16\" \"-fcolor-diagnostics\" \"-fintel-compatibility\" \"-fintel-libirc-allowed\" \"-mllvm\" \"-disable-hir-generate-mkl-call\" \"-mllvm\" \"-loopopt=1\" \"-floopopt-pipeline=light\" \"-mllvm\" \"-intel-abi-compatible=true\" \"-x\" \"c\""
	.byte	242
	.byte	241
	.short	0x1a
	.short	0x1603
	.short	0x5
	.long	0x104d
	.long	0x1050
	.long	0x104e
	.long	0x104f
	.long	0x1051
	.byte	242
	.byte	241
	.globl	_fltused
