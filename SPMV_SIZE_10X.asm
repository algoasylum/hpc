	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"spmv_size-10x.c"
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
	.globl	__real@4f0f0d18
	.section	.rdata,"dr",discard,__real@4f0f0d18
	.p2align	2, 0x0
__real@4f0f0d18:
	.long	0x4f0f0d18
	.text
	.globl	get_cpu_frequency
	.p2align	4, 0x90
get_cpu_frequency:
.Lfunc_begin4:
	.cv_func_id 4
	.cv_file	2 "C:\\Users\\DELL\\OneDrive\\Documents\\samplesss\\spmv_size-10x.c" "1320995F22B3E72AA72D4750310183C6" 1
	.cv_loc	4 2 11 0
	movss	__real@4f0f0d18(%rip), %xmm0
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

	.def	converfloatToFloat;
	.scl	2;
	.type	32;
	.endef
	.globl	converfloatToFloat
	.p2align	4, 0x90
converfloatToFloat:
.Lfunc_begin6:
	.cv_func_id 6
	.cv_loc	6 2 31 0
.seh_proc converfloatToFloat
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
.Ltmp11:
	movl	%r8d, 28(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 8(%rsp)
.Ltmp12:
	.cv_loc	6 2 32 0
	movl	$0, 4(%rsp)
.LBB6_1:
	movl	4(%rsp), %eax
	cmpl	28(%rsp), %eax
	jge	.LBB6_4
.Ltmp13:
	.cv_loc	6 2 33 0
	movq	8(%rsp), %rax
	movslq	4(%rsp), %rcx
	movsd	(%rax,%rcx,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	16(%rsp), %rax
	movslq	4(%rsp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
.Ltmp14:
	.cv_loc	6 2 32 0
	movl	4(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 4(%rsp)
	jmp	.LBB6_1
.Ltmp15:
.LBB6_4:
	.cv_loc	6 2 35 0
	addq	$32, %rsp
	retq
.Ltmp16:
.Lfunc_end6:
	.seh_endproc

	.def	csc_matrix_vector;
	.scl	2;
	.type	32;
	.endef
	.globl	csc_matrix_vector
	.p2align	4, 0x90
csc_matrix_vector:
.Lfunc_begin7:
	.cv_func_id 7
	.cv_loc	7 2 38 0
.seh_proc csc_matrix_vector
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movq	%rcx, (%rsp)
.Ltmp17:
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rcx, 16(%rsp)
.Ltmp18:
	.cv_loc	7 2 40 0
	movl	$0, 12(%rsp)
.LBB7_1:
	movq	(%rsp), %rcx
	movl	12(%rsp), %eax
	cmpl	(%rcx), %eax
	jge	.LBB7_8
	.cv_loc	7 2 42 0
	movq	(%rsp), %rax
.Ltmp19:
	movq	32(%rax), %rax
	movslq	12(%rsp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, 8(%rsp)
.LBB7_3:
	movq	(%rsp), %rcx
	movl	8(%rsp), %eax
	movq	32(%rcx), %rcx
	movl	12(%rsp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jge	.LBB7_6
	.cv_loc	7 2 46 0
	movq	(%rsp), %rcx
.Ltmp20:
	movq	32(%rsp), %rax
	movslq	8(%rsp), %rdx
	movss	(%rax,%rdx,4), %xmm0
	movq	40(%rsp), %rax
	movslq	8(%rsp), %rdx
	mulss	(%rax,%rdx,4), %xmm0
	movq	24(%rsp), %rax
	movq	24(%rcx), %rcx
	movslq	8(%rsp), %rdx
	movslq	(%rcx,%rdx,4), %rcx
	addss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, (%rax,%rcx,4)
.Ltmp21:
	.cv_loc	7 2 42 0
	movl	8(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 8(%rsp)
	jmp	.LBB7_3
.Ltmp22:
.LBB7_6:
	.cv_loc	7 2 50 0
	jmp	.LBB7_7
.Ltmp23:
.LBB7_7:
	.cv_loc	7 2 40 0
	movl	12(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 12(%rsp)
	jmp	.LBB7_1
.Ltmp24:
.LBB7_8:
	.cv_loc	7 2 52 0
	addq	$48, %rsp
	retq
.Ltmp25:
.Lfunc_end7:
	.seh_endproc

	.def	Value_vector;
	.scl	2;
	.type	32;
	.endef
	.globl	Value_vector
	.p2align	4, 0x90
Value_vector:
.Lfunc_begin8:
	.cv_func_id 8
	.cv_loc	8 2 54 0
.seh_proc Value_vector
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, (%rsp)
.Ltmp26:
	movq	%r8, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rcx, 16(%rsp)
.Ltmp27:
	.cv_loc	8 2 55 0
	movl	$0, 12(%rsp)
.LBB8_1:
	movq	(%rsp), %rcx
	movl	12(%rsp), %eax
	cmpl	8(%rcx), %eax
	jge	.LBB8_4
	.cv_loc	8 2 56 0
	movq	(%rsp), %rcx
.Ltmp28:
	movq	24(%rsp), %rax
	movq	40(%rcx), %rcx
	movslq	12(%rsp), %rdx
	movslq	(%rcx,%rdx,4), %rcx
	movss	(%rax,%rcx,4), %xmm0
	movq	32(%rsp), %rax
	movslq	12(%rsp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
.Ltmp29:
	.cv_loc	8 2 55 0
	movl	12(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 12(%rsp)
	jmp	.LBB8_1
.Ltmp30:
.LBB8_4:
	.cv_loc	8 2 60 0
	addq	$40, %rsp
	retq
.Ltmp31:
.Lfunc_end8:
	.seh_endproc

	.def	main;
	.scl	2;
	.type	32;
	.endef
	.globl	__real@41200000
	.section	.rdata,"dr",discard,__real@41200000
	.p2align	2, 0x0
__real@41200000:
	.long	0x41200000
	.globl	__real@4024000000000000
	.section	.rdata,"dr",discard,__real@4024000000000000
	.p2align	3, 0x0
__real@4024000000000000:
	.quad	0x4024000000000000
	.globl	__real@46fffe00
	.section	.rdata,"dr",discard,__real@46fffe00
	.p2align	2, 0x0
__real@46fffe00:
	.long	0x46fffe00
	.text
	.globl	main
	.p2align	4, 0x90
main:
.Lfunc_begin9:
	.cv_func_id 9
	.cv_loc	9 2 63 0
.seh_proc main
	subq	$472, %rsp
	.seh_stackalloc 472
	.seh_endprologue
.Ltmp32:
	movl	$0, 468(%rsp)
	movq	%rdx, 456(%rsp)
	movl	%ecx, 452(%rsp)
	.cv_loc	9 2 72 0
	cmpl	$2, 452(%rsp)
	jge	.LBB9_2
.Ltmp33:
	.cv_loc	9 2 73 0
	movq	456(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 72(%rsp)
	movl	$2, %ecx
	callq	__acrt_iob_func
	movq	72(%rsp), %r8
	movq	%rax, %rcx
	leaq	"??_C@_0CE@BIKOBMBB@Usage?3?5?$CFs?5?$FLmatrix?9market?9filenam@"(%rip), %rdx
	callq	fprintf
	.cv_loc	9 2 74 0
	movl	$1, %ecx
	callq	exit
.Ltmp34:
.LBB9_2:
	.cv_loc	9 2 76 0
	movq	456(%rsp), %rax
	movq	8(%rax), %rcx
	leaq	"??_C@_01KDCPPGHE@r?$AA@"(%rip), %rdx
	callq	fopen
	movq	%rax, 432(%rsp)
	cmpq	$0, %rax
	jne	.LBB9_4
.Ltmp35:
	.cv_loc	9 2 77 0
	movl	$1, %ecx
	callq	exit
.Ltmp36:
.LBB9_4:
	.cv_loc	9 2 78 0
	jmp	.LBB9_5
.Ltmp37:
.LBB9_5:
	.cv_loc	9 2 83 0
	movq	432(%rsp), %rcx
	leaq	444(%rsp), %rdx
	callq	mm_read_banner
	cmpl	$0, %eax
	je	.LBB9_7
.Ltmp38:
	.cv_loc	9 2 84 0
	leaq	"??_C@_0CJ@MPICKCGA@Could?5not?5process?5Matrix?5Market?5@"(%rip), %rcx
	callq	printf
	.cv_loc	9 2 85 0
	movl	$1, %ecx
	callq	exit
.Ltmp39:
.LBB9_7:
	.cv_loc	9 2 88 0
	movsbl	446(%rsp), %eax
	cmpl	$67, %eax
	jne	.LBB9_11
	movsbl	444(%rsp), %eax
	cmpl	$77, %eax
	jne	.LBB9_11
	movsbl	445(%rsp), %eax
	cmpl	$67, %eax
	jne	.LBB9_11
.Ltmp40:
	.cv_loc	9 2 89 0
	leaq	"??_C@_0CK@GGOBCCKJ@Sorry?0?5this?5application?5does?5not@"(%rip), %rcx
	callq	printf
	.cv_loc	9 2 90 0
	leaq	444(%rsp), %rcx
	callq	mm_typecode_to_str
	movq	%rax, %rdx
	leaq	"??_C@_0BK@FLDFLNI@Market?5Market?5type?3?5?$FL?$CFs?$FN?6?$AA@"(%rip), %rcx
	callq	printf
	.cv_loc	9 2 91 0
	movl	$1, %ecx
	callq	exit
.Ltmp41:
.LBB9_11:
	.cv_loc	9 2 94 0
	movq	432(%rsp), %rcx
	leaq	428(%rsp), %rdx
	leaq	424(%rsp), %r8
	leaq	420(%rsp), %r9
	callq	mm_read_mtx_crd_size
	movl	%eax, 448(%rsp)
	cmpl	$0, %eax
	je	.LBB9_13
.Ltmp42:
	.cv_loc	9 2 95 0
	movl	$1, %ecx
	callq	exit
.Ltmp43:
.LBB9_13:
	.cv_loc	9 2 97 0
	movslq	420(%rsp), %rcx
	shlq	$2, %rcx
.Ltmp44:
	callq	malloc
.Ltmp45:
	movq	%rax, 408(%rsp)
	.cv_loc	9 2 98 0
	movslq	420(%rsp), %rcx
	shlq	$2, %rcx
.Ltmp46:
	callq	malloc
.Ltmp47:
	movq	%rax, 400(%rsp)
	.cv_loc	9 2 99 0
	movslq	420(%rsp), %rcx
	shlq	$3, %rcx
.Ltmp48:
	callq	malloc
.Ltmp49:
	movq	%rax, 392(%rsp)
	.cv_loc	9 2 100 0
	movslq	420(%rsp), %rcx
	shlq	$2, %rcx
.Ltmp50:
	callq	malloc
.Ltmp51:
	movq	%rax, 376(%rsp)
	.cv_loc	9 2 101 0
	movslq	420(%rsp), %rcx
	shlq	$2, %rcx
.Ltmp52:
	callq	malloc
.Ltmp53:
	movq	%rax, 384(%rsp)
.Ltmp54:
	.cv_loc	9 2 103 0
	movl	$0, 372(%rsp)
.LBB9_14:
	movl	372(%rsp), %eax
	cmpl	420(%rsp), %eax
	jge	.LBB9_17
.Ltmp55:
	.cv_loc	9 2 104 0
	movq	392(%rsp), %rdx
	movslq	372(%rsp), %rax
	shlq	$3, %rax
	addq	%rax, %rdx
	movq	400(%rsp), %r9
	movslq	372(%rsp), %rax
	shlq	$2, %rax
	addq	%rax, %r9
	movq	408(%rsp), %r8
	movslq	372(%rsp), %rax
	shlq	$2, %rax
	addq	%rax, %r8
	movq	432(%rsp), %rcx
	movq	%rsp, %rax
	movq	%rdx, 32(%rax)
	leaq	"??_C@_0L@DPCLJHDN@?$CFd?5?$CFd?5?$CFlg?6?$AA@"(%rip), %rdx
	callq	fscanf
	.cv_loc	9 2 105 0
	movq	408(%rsp), %rax
	movslq	372(%rsp), %rcx
	movl	(%rax,%rcx,4), %edx
	addl	$-1, %edx
	movl	%edx, (%rax,%rcx,4)
	.cv_loc	9 2 106 0
	movq	400(%rsp), %rax
	movslq	372(%rsp), %rcx
	movl	(%rax,%rcx,4), %edx
	addl	$-1, %edx
	movl	%edx, (%rax,%rcx,4)
.Ltmp56:
	.cv_loc	9 2 103 0
	movl	372(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 372(%rsp)
	jmp	.LBB9_14
.Ltmp57:
.LBB9_17:
	.cv_loc	9 2 109 0
	movl	420(%rsp), %r8d
	movq	384(%rsp), %rdx
	movq	392(%rsp), %rcx
	callq	converfloatToFloat
	.cv_loc	9 2 113 0
	movl	428(%rsp), %eax
	movl	%eax, 320(%rsp)
	.cv_loc	9 2 114 0
	movl	424(%rsp), %eax
	movl	%eax, 324(%rsp)
	.cv_loc	9 2 115 0
	movl	420(%rsp), %eax
	movl	%eax, 328(%rsp)
	.cv_loc	9 2 116 0
	movq	384(%rsp), %rax
	movq	%rax, 336(%rsp)
	.cv_loc	9 2 117 0
	movq	408(%rsp), %rax
	movq	%rax, 344(%rsp)
	.cv_loc	9 2 118 0
	movq	400(%rsp), %rax
	movq	%rax, 360(%rsp)
	.cv_loc	9 2 119 0
	movl	324(%rsp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
.Ltmp58:
	callq	malloc
.Ltmp59:
	movq	%rax, 352(%rsp)
	.cv_loc	9 2 120 0
	movq	$0, 312(%rsp)
	.cv_loc	9 2 122 0
	movl	$0, 308(%rsp)
	.cv_loc	9 2 123 0
	movq	352(%rsp), %rax
	movl	$0, (%rax)
.Ltmp60:
	.cv_loc	9 2 124 0
	movl	$0, 304(%rsp)
.LBB9_18:
	movl	304(%rsp), %eax
	cmpl	420(%rsp), %eax
	jge	.LBB9_23
.Ltmp61:
	.cv_loc	9 2 125 0
	movq	400(%rsp), %rax
	movslq	304(%rsp), %rcx
	movl	(%rax,%rcx,4), %eax
	cmpl	308(%rsp), %eax
	je	.LBB9_21
.Ltmp62:
	.cv_loc	9 2 126 0
	movq	400(%rsp), %rax
	movslq	304(%rsp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, 308(%rsp)
	.cv_loc	9 2 127 0
	movl	304(%rsp), %edx
	movq	352(%rsp), %rax
	movslq	308(%rsp), %rcx
	movl	%edx, (%rax,%rcx,4)
.Ltmp63:
.LBB9_21:
	.cv_loc	9 2 129 0
	jmp	.LBB9_22
.Ltmp64:
.LBB9_22:
	.cv_loc	9 2 124 0
	movl	304(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 304(%rsp)
	jmp	.LBB9_18
.Ltmp65:
.LBB9_23:
	.cv_loc	9 2 130 0
	movl	420(%rsp), %edx
	movq	352(%rsp), %rax
	movslq	424(%rsp), %rcx
	movl	%edx, (%rax,%rcx,4)
	.cv_loc	9 2 134 0
	movslq	424(%rsp), %rcx
	shlq	$2, %rcx
.Ltmp66:
	callq	malloc
.Ltmp67:
	movq	%rax, 296(%rsp)
	.cv_loc	9 2 135 0
	movslq	428(%rsp), %rcx
	shlq	$2, %rcx
.Ltmp68:
	callq	malloc
.Ltmp69:
	movq	%rax, 288(%rsp)
	.cv_loc	9 2 138 0
	movss	__real@41200000(%rip), %xmm0
	movss	%xmm0, 284(%rsp)
.Ltmp70:
	.cv_loc	9 2 139 0
	movl	$0, 280(%rsp)
.LBB9_24:
	movl	280(%rsp), %eax
	cmpl	424(%rsp), %eax
	jge	.LBB9_27
.Ltmp71:
	.cv_loc	9 2 141 0
	callq	rand
	cvtsi2ss	%eax, %xmm0
	movss	__real@46fffe00(%rip), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	__real@4024000000000000(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	296(%rsp), %rax
	movslq	280(%rsp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
.Ltmp72:
	.cv_loc	9 2 139 0
	movl	280(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 280(%rsp)
	jmp	.LBB9_24
.Ltmp73:
.LBB9_27:
	.cv_loc	9 2 145 0
	movl	$0, 276(%rsp)
.LBB9_28:
	movl	276(%rsp), %eax
	cmpl	420(%rsp), %eax
	jge	.LBB9_31
.Ltmp74:
	.cv_loc	9 2 146 0
	movq	376(%rsp), %rax
	movslq	276(%rsp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
.Ltmp75:
	.cv_loc	9 2 145 0
	movl	276(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 276(%rsp)
	jmp	.LBB9_28
.Ltmp76:
.LBB9_31:
	.cv_loc	9 2 150 0
	movl	$0, 272(%rsp)
.LBB9_32:
	movl	272(%rsp), %eax
	cmpl	428(%rsp), %eax
	jge	.LBB9_35
.Ltmp77:
	.cv_loc	9 2 151 0
	movq	288(%rsp), %rax
	movslq	272(%rsp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
.Ltmp78:
	.cv_loc	9 2 150 0
	movl	272(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 272(%rsp)
	jmp	.LBB9_32
.Ltmp79:
.LBB9_35:
	.cv_loc	9 2 156 0
	callq	rdtsc
	movq	%rax, 264(%rsp)
	.cv_loc	9 2 159 0
	callq	get_cpu_frequency
	movss	%xmm0, 260(%rsp)
	.cv_loc	9 2 161 0
	callq	rdtsc
	movq	%rax, 248(%rsp)
	.cv_loc	9 2 162 0
	movq	376(%rsp), %r8
	movq	296(%rsp), %rdx
	movups	320(%rsp), %xmm0
	movups	336(%rsp), %xmm1
	movups	352(%rsp), %xmm2
	movaps	%xmm2, 224(%rsp)
	movaps	%xmm1, 208(%rsp)
	movaps	%xmm0, 192(%rsp)
	leaq	192(%rsp), %rcx
	callq	Value_vector
	.cv_loc	9 2 164 0
	callq	rdtsc
	movq	%rax, 184(%rsp)
	.cv_loc	9 2 165 0
	movq	184(%rsp), %rax
	movq	248(%rsp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rdx
	shrq	%rdx
	movl	%eax, %ecx
	andl	$1, %ecx
	orq	%rdx, %rcx
	cvtsi2ss	%rcx, %xmm0
	addss	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm1
	movss	%xmm1, 64(%rsp)
	testq	%rax, %rax
	movss	%xmm0, 68(%rsp)
	js	.LBB9_37
	movss	64(%rsp), %xmm0
	movss	%xmm0, 68(%rsp)
.LBB9_37:
	movss	68(%rsp), %xmm0
	movss	260(%rsp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, 180(%rsp)
	.cv_loc	9 2 166 0
	movss	180(%rsp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	"??_C@_0DF@GOFACPEA@Time?5elapsed?5to?5form?5the?5new?5vec@"(%rip), %rcx
	movaps	%xmm0, %xmm1
	movq	%xmm0, %rdx
	callq	printf
	.cv_loc	9 2 175 0
	callq	rdtsc
	movq	%rax, 168(%rsp)
	.cv_loc	9 2 176 0
	movq	384(%rsp), %r9
	movq	376(%rsp), %r8
	movq	288(%rsp), %rdx
	movups	320(%rsp), %xmm0
	movups	336(%rsp), %xmm1
	movups	352(%rsp), %xmm2
	movaps	%xmm2, 144(%rsp)
	movaps	%xmm1, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	leaq	112(%rsp), %rcx
	callq	csc_matrix_vector
	.cv_loc	9 2 178 0
	callq	rdtsc
	movq	%rax, 104(%rsp)
	.cv_loc	9 2 179 0
	movq	104(%rsp), %rax
	movq	168(%rsp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rdx
	shrq	%rdx
	movl	%eax, %ecx
	andl	$1, %ecx
	orq	%rdx, %rcx
	cvtsi2ss	%rcx, %xmm0
	addss	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm1
	movss	%xmm1, 56(%rsp)
	testq	%rax, %rax
	movss	%xmm0, 60(%rsp)
	js	.LBB9_39
	movss	56(%rsp), %xmm0
	movss	%xmm0, 60(%rsp)
.LBB9_39:
	movss	60(%rsp), %xmm0
	movss	260(%rsp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, 100(%rsp)
	.cv_loc	9 2 180 0
	movss	100(%rsp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	"??_C@_0DK@NHMCGP@Time?5elapsed?5for?5multiplying?5and@"(%rip), %rcx
	movaps	%xmm0, %xmm1
	movq	%xmm0, %rdx
	callq	printf
	.cv_loc	9 2 183 0
	callq	rdtsc
	movq	%rax, 88(%rsp)
	.cv_loc	9 2 184 0
	movq	88(%rsp), %rax
	movq	264(%rsp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rdx
	shrq	%rdx
	movl	%eax, %ecx
	andl	$1, %ecx
	orq	%rdx, %rcx
	cvtsi2ss	%rcx, %xmm0
	addss	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm1
	movss	%xmm1, 48(%rsp)
	testq	%rax, %rax
	movss	%xmm0, 52(%rsp)
	js	.LBB9_41
	movss	48(%rsp), %xmm0
	movss	%xmm0, 52(%rsp)
.LBB9_41:
	movss	52(%rsp), %xmm0
	divss	260(%rsp), %xmm0
	movss	%xmm0, 84(%rsp)
	.cv_loc	9 2 185 0
	movss	84(%rsp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	"??_C@_0CB@DNDLHEOG@Time?5elaptsed?5TOTAL?3?5?$CFf?5seconds?6@"(%rip), %rcx
	movaps	%xmm0, %xmm1
	movq	%xmm0, %rdx
	callq	printf
	.cv_loc	9 2 186 0
	movl	420(%rsp), %r9d
	movl	424(%rsp), %r8d
	movl	428(%rsp), %edx
	leaq	"??_C@_0CC@ENPJFCDH@rows?$DN?$CFd?5columns?$DN?5?$CFd?5non?9zero?$DN?$CFd?5@"(%rip), %rcx
	callq	printf
	.cv_loc	9 2 201 0
	movl	468(%rsp), %eax
	addq	$472, %rsp
	retq
.Ltmp80:
.Lfunc_end9:
	.seh_endproc

	.def	fprintf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,fprintf
	.globl	fprintf
	.p2align	4, 0x90
fprintf:
.Lfunc_begin10:
	.cv_func_id 10
	.cv_loc	10 1 837 0
.seh_proc fprintf
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%r9, 104(%rsp)
	movq	%r8, 96(%rsp)
.Ltmp81:
	movq	%rdx, 64(%rsp)
	movq	%rcx, 56(%rsp)
	leaq	96(%rsp), %rax
	.cv_loc	10 1 840 0
	movq	%rax, 40(%rsp)
	.cv_loc	10 1 841 0
	movq	40(%rsp), %r9
	movq	64(%rsp), %rdx
	movq	56(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	_vfprintf_l
	movl	%eax, 52(%rsp)
	.cv_loc	10 1 843 0
	movl	52(%rsp), %eax
	addq	$72, %rsp
	retq
.Ltmp82:
.Lfunc_end10:
	.seh_endproc

	.def	printf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,printf
	.globl	printf
	.p2align	4, 0x90
printf:
.Lfunc_begin11:
	.cv_func_id 11
	.cv_loc	11 1 956 0
.seh_proc printf
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%r9, 104(%rsp)
	movq	%r8, 96(%rsp)
	movq	%rdx, 88(%rsp)
.Ltmp83:
	movq	%rcx, 64(%rsp)
	leaq	88(%rsp), %rax
	.cv_loc	11 1 959 0
	movq	%rax, 48(%rsp)
	.cv_loc	11 1 960 0
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
	.cv_loc	11 1 962 0
	movl	60(%rsp), %eax
	addq	$72, %rsp
	retq
.Ltmp84:
.Lfunc_end11:
	.seh_endproc

	.def	fscanf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,fscanf
	.globl	fscanf
	.p2align	4, 0x90
fscanf:
.Lfunc_begin12:
	.cv_func_id 12
	.cv_loc	12 1 1206 0
.seh_proc fscanf
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%r9, 104(%rsp)
	movq	%r8, 96(%rsp)
.Ltmp85:
	movq	%rdx, 64(%rsp)
	movq	%rcx, 56(%rsp)
	leaq	96(%rsp), %rax
	.cv_loc	12 1 1209 0
	movq	%rax, 40(%rsp)
	.cv_loc	12 1 1210 0
	movq	40(%rsp), %r9
	movq	64(%rsp), %rdx
	movq	56(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	_vfscanf_l
	movl	%eax, 52(%rsp)
	.cv_loc	12 1 1212 0
	movl	52(%rsp), %eax
	addq	$72, %rsp
	retq
.Ltmp86:
.Lfunc_end12:
	.seh_endproc

	.def	_vsprintf_l;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vsprintf_l
	.globl	_vsprintf_l
	.p2align	4, 0x90
_vsprintf_l:
.Lfunc_begin13:
	.cv_func_id 13
	.cv_loc	13 1 1458 0
.seh_proc _vsprintf_l
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
.Ltmp87:
	movq	%r9, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	.cv_loc	13 1 1459 0
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
.Ltmp88:
.Lfunc_end13:
	.seh_endproc

	.def	_vsnprintf_l;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vsnprintf_l
	.globl	_vsnprintf_l
	.p2align	4, 0x90
_vsnprintf_l:
.Lfunc_begin14:
	.cv_func_id 14
	.cv_loc	14 1 1391 0
.seh_proc _vsnprintf_l
	subq	$136, %rsp
	.seh_stackalloc 136
	.seh_endprologue
	movq	176(%rsp), %rax
.Ltmp89:
	movq	%r9, 128(%rsp)
	movq	%r8, 120(%rsp)
	movq	%rdx, 112(%rsp)
	movq	%rcx, 104(%rsp)
	.cv_loc	14 1 1392 0
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
	.cv_loc	14 1 1396 0
	cmpl	$0, 100(%rsp)
	jge	.LBB14_2
	movl	$4294967295, %eax
	movl	%eax, 52(%rsp)
	jmp	.LBB14_3
.LBB14_2:
	movl	100(%rsp), %eax
	movl	%eax, 52(%rsp)
.LBB14_3:
	movl	52(%rsp), %eax
	addq	$136, %rsp
	retq
.Ltmp90:
.Lfunc_end14:
	.seh_endproc

	.def	__local_stdio_printf_options;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,__local_stdio_printf_options
	.globl	__local_stdio_printf_options
	.p2align	4, 0x90
__local_stdio_printf_options:
.Lfunc_begin15:
	.cv_func_id 15
	.cv_file	3 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.22621.0\\ucrt\\corecrt_stdio_config.h" "DACF907BDA504AFB0B64F53A242BDAE6" 1
	.cv_loc	15 3 92 0
	leaq	__local_stdio_printf_options._OptionsStorage(%rip), %rax
	retq
.Ltmp91:
.Lfunc_end15:

	.def	_vfprintf_l;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vfprintf_l
	.globl	_vfprintf_l
	.p2align	4, 0x90
_vfprintf_l:
.Lfunc_begin16:
	.cv_func_id 16
	.cv_loc	16 1 644 0
.seh_proc _vfprintf_l
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
.Ltmp92:
	movq	%r9, 96(%rsp)
	movq	%r8, 88(%rsp)
	movq	%rdx, 80(%rsp)
	movq	%rcx, 72(%rsp)
	.cv_loc	16 1 645 0
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
.Ltmp93:
.Lfunc_end16:
	.seh_endproc

	.def	_vfscanf_l;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vfscanf_l
	.globl	_vfscanf_l
	.p2align	4, 0x90
_vfscanf_l:
.Lfunc_begin17:
	.cv_func_id 17
	.cv_loc	17 1 1064 0
.seh_proc _vfscanf_l
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
.Ltmp94:
	movq	%r9, 96(%rsp)
	movq	%r8, 88(%rsp)
	movq	%rdx, 80(%rsp)
	movq	%rcx, 72(%rsp)
	.cv_loc	17 1 1065 0
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
.Ltmp95:
.Lfunc_end17:
	.seh_endproc

	.def	__local_stdio_scanf_options;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,__local_stdio_scanf_options
	.globl	__local_stdio_scanf_options
	.p2align	4, 0x90
__local_stdio_scanf_options:
.Lfunc_begin18:
	.cv_func_id 18
	.cv_loc	18 3 102 0
	leaq	__local_stdio_scanf_options._OptionsStorage(%rip), %rax
	retq
.Ltmp96:
.Lfunc_end18:

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
	.long	.Ltmp98-.Ltmp97
.Ltmp97:
	.short	.Ltmp100-.Ltmp99
.Ltmp99:
	.short	4353
	.long	0
	.asciz	"C:\\Users\\DELL\\AppData\\Local\\Temp\\icx-cl-449244d542\\spmv_size-10x-953d50.obj"
	.p2align	2, 0x0
.Ltmp100:
	.short	.Ltmp102-.Ltmp101
.Ltmp101:
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
.Ltmp102:
.Ltmp98:
	.p2align	2, 0x0
	.section	.debug$S,"dr",associative,sprintf
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp104-.Ltmp103
.Ltmp103:
	.short	.Ltmp106-.Ltmp105
.Ltmp105:
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
.Ltmp106:
	.short	.Ltmp108-.Ltmp107
.Ltmp107:
	.short	4114
	.long	72
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp108:
	.short	.Ltmp110-.Ltmp109
.Ltmp109:
	.short	4414
	.long	4096
	.short	1
	.asciz	"_Buffer"
	.p2align	2, 0x0
.Ltmp110:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 56
	.short	.Ltmp112-.Ltmp111
.Ltmp111:
	.short	4414
	.long	4098
	.short	1
	.asciz	"_Format"
	.p2align	2, 0x0
.Ltmp112:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 64
	.short	.Ltmp114-.Ltmp113
.Ltmp113:
	.short	4414
	.long	116
	.short	0
	.asciz	"_Result"
	.p2align	2, 0x0
.Ltmp114:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 52
	.short	.Ltmp116-.Ltmp115
.Ltmp115:
	.short	4414
	.long	1648
	.short	0
	.asciz	"_ArgList"
	.p2align	2, 0x0
.Ltmp116:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 40
	.short	2
	.short	4431
.Ltmp104:
	.p2align	2, 0x0
	.cv_linetable	0, sprintf, .Lfunc_end0
	.section	.debug$S,"dr",associative,vsprintf
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp118-.Ltmp117
.Ltmp117:
	.short	.Ltmp120-.Ltmp119
.Ltmp119:
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
.Ltmp120:
	.short	.Ltmp122-.Ltmp121
.Ltmp121:
	.short	4114
	.long	72
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp122:
	.short	.Ltmp124-.Ltmp123
.Ltmp123:
	.short	4414
	.long	4096
	.short	1
	.asciz	"_Buffer"
	.p2align	2, 0x0
.Ltmp124:
	.cv_def_range	 .Ltmp2 .Ltmp3, frame_ptr_rel, 48
	.short	.Ltmp126-.Ltmp125
.Ltmp125:
	.short	4414
	.long	4098
	.short	1
	.asciz	"_Format"
	.p2align	2, 0x0
.Ltmp126:
	.cv_def_range	 .Ltmp2 .Ltmp3, frame_ptr_rel, 56
	.short	.Ltmp128-.Ltmp127
.Ltmp127:
	.short	4414
	.long	1648
	.short	1
	.asciz	"_ArgList"
	.p2align	2, 0x0
.Ltmp128:
	.cv_def_range	 .Ltmp2 .Ltmp3, frame_ptr_rel, 64
	.short	2
	.short	4431
.Ltmp118:
	.p2align	2, 0x0
	.cv_linetable	1, vsprintf, .Lfunc_end1
	.section	.debug$S,"dr",associative,_snprintf
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp130-.Ltmp129
.Ltmp129:
	.short	.Ltmp132-.Ltmp131
.Ltmp131:
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
.Ltmp132:
	.short	.Ltmp134-.Ltmp133
.Ltmp133:
	.short	4114
	.long	72
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp134:
	.short	.Ltmp136-.Ltmp135
.Ltmp135:
	.short	4414
	.long	4096
	.short	1
	.asciz	"_Buffer"
	.p2align	2, 0x0
.Ltmp136:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 48
	.short	.Ltmp138-.Ltmp137
.Ltmp137:
	.short	4414
	.long	4105
	.short	1
	.asciz	"_BufferCount"
	.p2align	2, 0x0
.Ltmp138:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 56
	.short	.Ltmp140-.Ltmp139
.Ltmp139:
	.short	4414
	.long	4098
	.short	1
	.asciz	"_Format"
	.p2align	2, 0x0
.Ltmp140:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 64
	.short	.Ltmp142-.Ltmp141
.Ltmp141:
	.short	4414
	.long	116
	.short	0
	.asciz	"_Result"
	.p2align	2, 0x0
.Ltmp142:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 44
	.short	.Ltmp144-.Ltmp143
.Ltmp143:
	.short	4414
	.long	1648
	.short	0
	.asciz	"_ArgList"
	.p2align	2, 0x0
.Ltmp144:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 32
	.short	2
	.short	4431
.Ltmp130:
	.p2align	2, 0x0
	.cv_linetable	2, _snprintf, .Lfunc_end2
	.section	.debug$S,"dr",associative,_vsnprintf
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp146-.Ltmp145
.Ltmp145:
	.short	.Ltmp148-.Ltmp147
.Ltmp147:
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
.Ltmp148:
	.short	.Ltmp150-.Ltmp149
.Ltmp149:
	.short	4114
	.long	72
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp150:
	.short	.Ltmp152-.Ltmp151
.Ltmp151:
	.short	4414
	.long	4096
	.short	1
	.asciz	"_Buffer"
	.p2align	2, 0x0
.Ltmp152:
	.cv_def_range	 .Ltmp6 .Ltmp7, frame_ptr_rel, 40
	.short	.Ltmp154-.Ltmp153
.Ltmp153:
	.short	4414
	.long	4105
	.short	1
	.asciz	"_BufferCount"
	.p2align	2, 0x0
.Ltmp154:
	.cv_def_range	 .Ltmp6 .Ltmp7, frame_ptr_rel, 48
	.short	.Ltmp156-.Ltmp155
.Ltmp155:
	.short	4414
	.long	4098
	.short	1
	.asciz	"_Format"
	.p2align	2, 0x0
.Ltmp156:
	.cv_def_range	 .Ltmp6 .Ltmp7, frame_ptr_rel, 56
	.short	.Ltmp158-.Ltmp157
.Ltmp157:
	.short	4414
	.long	1648
	.short	1
	.asciz	"_ArgList"
	.p2align	2, 0x0
.Ltmp158:
	.cv_def_range	 .Ltmp6 .Ltmp7, frame_ptr_rel, 64
	.short	2
	.short	4431
.Ltmp146:
	.p2align	2, 0x0
	.cv_linetable	3, _vsnprintf, .Lfunc_end3
	.section	.debug$S,"dr"
	.long	241
	.long	.Ltmp160-.Ltmp159
.Ltmp159:
	.short	.Ltmp162-.Ltmp161
.Ltmp161:
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
.Ltmp162:
	.short	.Ltmp164-.Ltmp163
.Ltmp163:
	.short	4114
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	8192
	.p2align	2, 0x0
.Ltmp164:
	.short	2
	.short	4431
.Ltmp160:
	.p2align	2, 0x0
	.cv_linetable	4, get_cpu_frequency, .Lfunc_end4
	.long	241
	.long	.Ltmp166-.Ltmp165
.Ltmp165:
	.short	.Ltmp168-.Ltmp167
.Ltmp167:
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
.Ltmp168:
	.short	.Ltmp170-.Ltmp169
.Ltmp169:
	.short	4114
	.long	8
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90120
	.p2align	2, 0x0
.Ltmp170:
	.short	.Ltmp172-.Ltmp171
.Ltmp171:
	.short	4414
	.long	117
	.short	0
	.asciz	"lo"
	.p2align	2, 0x0
.Ltmp172:
	.cv_def_range	 .Ltmp9 .Ltmp10, frame_ptr_rel, 4
	.short	.Ltmp174-.Ltmp173
.Ltmp173:
	.short	4414
	.long	117
	.short	0
	.asciz	"hi"
	.p2align	2, 0x0
.Ltmp174:
	.cv_def_range	 .Ltmp9 .Ltmp10, frame_ptr_rel, 0
	.short	2
	.short	4431
.Ltmp166:
	.p2align	2, 0x0
	.cv_linetable	5, rdtsc, .Lfunc_end5
	.long	241
	.long	.Ltmp176-.Ltmp175
.Ltmp175:
	.short	.Ltmp178-.Ltmp177
.Ltmp177:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end6-converfloatToFloat
	.long	0
	.long	0
	.long	4119
	.secrel32	converfloatToFloat
	.secidx	converfloatToFloat
	.byte	192
	.asciz	"converfloatToFloat"
	.p2align	2, 0x0
.Ltmp178:
	.short	.Ltmp180-.Ltmp179
.Ltmp179:
	.short	4114
	.long	32
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp180:
	.short	.Ltmp182-.Ltmp181
.Ltmp181:
	.short	4414
	.long	1601
	.short	1
	.asciz	"val"
	.p2align	2, 0x0
.Ltmp182:
	.cv_def_range	 .Ltmp11 .Ltmp16, frame_ptr_rel, 8
	.short	.Ltmp184-.Ltmp183
.Ltmp183:
	.short	4414
	.long	1600
	.short	1
	.asciz	"val_float"
	.p2align	2, 0x0
.Ltmp184:
	.cv_def_range	 .Ltmp11 .Ltmp16, frame_ptr_rel, 16
	.short	.Ltmp186-.Ltmp185
.Ltmp185:
	.short	4414
	.long	116
	.short	1
	.asciz	"nz"
	.p2align	2, 0x0
.Ltmp186:
	.cv_def_range	 .Ltmp11 .Ltmp16, frame_ptr_rel, 28
	.short	.Ltmp188-.Ltmp187
.Ltmp187:
	.short	4355
	.long	0
	.long	0
	.long	.Ltmp15-.Ltmp12
	.secrel32	.Ltmp12
	.secidx	.Lfunc_begin6
	.byte	0
	.p2align	2, 0x0
.Ltmp188:
	.short	.Ltmp190-.Ltmp189
.Ltmp189:
	.short	4414
	.long	116
	.short	0
	.asciz	"i"
	.p2align	2, 0x0
.Ltmp190:
	.cv_def_range	 .Ltmp12 .Ltmp15, frame_ptr_rel, 4
	.short	2
	.short	6
	.short	2
	.short	4431
.Ltmp176:
	.p2align	2, 0x0
	.cv_linetable	6, converfloatToFloat, .Lfunc_end6
	.long	241
	.long	.Ltmp192-.Ltmp191
.Ltmp191:
	.short	.Ltmp194-.Ltmp193
.Ltmp193:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end7-csc_matrix_vector
	.long	0
	.long	0
	.long	4127
	.secrel32	csc_matrix_vector
	.secidx	csc_matrix_vector
	.byte	192
	.asciz	"csc_matrix_vector"
	.p2align	2, 0x0
.Ltmp194:
	.short	.Ltmp196-.Ltmp195
.Ltmp195:
	.short	4114
	.long	48
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp196:
	.short	.Ltmp198-.Ltmp197
.Ltmp197:
	.short	4414
	.long	4128
	.short	1
	.asciz	"A"
	.p2align	2, 0x0
.Ltmp198:
	.cv_def_range	 .Ltmp17 .Ltmp25, frame_ptr_rel, 16
	.short	.Ltmp200-.Ltmp199
.Ltmp199:
	.short	4414
	.long	1600
	.short	1
	.asciz	"Output_vector"
	.p2align	2, 0x0
.Ltmp200:
	.cv_def_range	 .Ltmp17 .Ltmp25, frame_ptr_rel, 24
	.short	.Ltmp202-.Ltmp201
.Ltmp201:
	.short	4414
	.long	1600
	.short	1
	.asciz	"Value_vector"
	.p2align	2, 0x0
.Ltmp202:
	.cv_def_range	 .Ltmp17 .Ltmp25, frame_ptr_rel, 32
	.short	.Ltmp204-.Ltmp203
.Ltmp203:
	.short	4414
	.long	1600
	.short	1
	.asciz	"val"
	.p2align	2, 0x0
.Ltmp204:
	.cv_def_range	 .Ltmp17 .Ltmp25, frame_ptr_rel, 40
	.short	.Ltmp206-.Ltmp205
.Ltmp205:
	.short	4355
	.long	0
	.long	0
	.long	.Ltmp24-.Ltmp18
	.secrel32	.Ltmp18
	.secidx	.Lfunc_begin7
	.byte	0
	.p2align	2, 0x0
.Ltmp206:
	.short	.Ltmp208-.Ltmp207
.Ltmp207:
	.short	4414
	.long	116
	.short	0
	.asciz	"j"
	.p2align	2, 0x0
.Ltmp208:
	.cv_def_range	 .Ltmp18 .Ltmp24, frame_ptr_rel, 12
	.short	.Ltmp210-.Ltmp209
.Ltmp209:
	.short	4355
	.long	0
	.long	0
	.long	.Ltmp22-.Ltmp19
	.secrel32	.Ltmp19
	.secidx	.Lfunc_begin7
	.byte	0
	.p2align	2, 0x0
.Ltmp210:
	.short	.Ltmp212-.Ltmp211
.Ltmp211:
	.short	4414
	.long	116
	.short	0
	.asciz	"i"
	.p2align	2, 0x0
.Ltmp212:
	.cv_def_range	 .Ltmp19 .Ltmp22, frame_ptr_rel, 8
	.short	2
	.short	6
	.short	2
	.short	6
	.short	2
	.short	4431
.Ltmp192:
	.p2align	2, 0x0
	.cv_linetable	7, csc_matrix_vector, .Lfunc_end7
	.long	241
	.long	.Ltmp214-.Ltmp213
.Ltmp213:
	.short	.Ltmp216-.Ltmp215
.Ltmp215:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end8-Value_vector
	.long	0
	.long	0
	.long	4131
	.secrel32	Value_vector
	.secidx	Value_vector
	.byte	192
	.asciz	"Value_vector"
	.p2align	2, 0x0
.Ltmp216:
	.short	.Ltmp218-.Ltmp217
.Ltmp217:
	.short	4114
	.long	40
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp218:
	.short	.Ltmp220-.Ltmp219
.Ltmp219:
	.short	4414
	.long	4128
	.short	1
	.asciz	"A"
	.p2align	2, 0x0
.Ltmp220:
	.cv_def_range	 .Ltmp26 .Ltmp31, frame_ptr_rel, 16
	.short	.Ltmp222-.Ltmp221
.Ltmp221:
	.short	4414
	.long	1600
	.short	1
	.asciz	"initVal"
	.p2align	2, 0x0
.Ltmp222:
	.cv_def_range	 .Ltmp26 .Ltmp31, frame_ptr_rel, 24
	.short	.Ltmp224-.Ltmp223
.Ltmp223:
	.short	4414
	.long	1600
	.short	1
	.asciz	"modifiedVal"
	.p2align	2, 0x0
.Ltmp224:
	.cv_def_range	 .Ltmp26 .Ltmp31, frame_ptr_rel, 32
	.short	.Ltmp226-.Ltmp225
.Ltmp225:
	.short	4355
	.long	0
	.long	0
	.long	.Ltmp30-.Ltmp27
	.secrel32	.Ltmp27
	.secidx	.Lfunc_begin8
	.byte	0
	.p2align	2, 0x0
.Ltmp226:
	.short	.Ltmp228-.Ltmp227
.Ltmp227:
	.short	4414
	.long	116
	.short	0
	.asciz	"i"
	.p2align	2, 0x0
.Ltmp228:
	.cv_def_range	 .Ltmp27 .Ltmp30, frame_ptr_rel, 12
	.short	2
	.short	6
	.short	2
	.short	4431
.Ltmp214:
	.p2align	2, 0x0
	.cv_linetable	8, Value_vector, .Lfunc_end8
	.long	241
	.long	.Ltmp230-.Ltmp229
.Ltmp229:
	.short	.Ltmp232-.Ltmp231
.Ltmp231:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end9-main
	.long	0
	.long	0
	.long	4135
	.secrel32	main
	.secidx	main
	.byte	192
	.asciz	"main"
	.p2align	2, 0x0
.Ltmp232:
	.short	.Ltmp234-.Ltmp233
.Ltmp233:
	.short	4114
	.long	472
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp234:
	.short	.Ltmp236-.Ltmp235
.Ltmp235:
	.short	4414
	.long	116
	.short	1
	.asciz	"argc"
	.p2align	2, 0x0
.Ltmp236:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 452
	.short	.Ltmp238-.Ltmp237
.Ltmp237:
	.short	4414
	.long	4132
	.short	1
	.asciz	"argv"
	.p2align	2, 0x0
.Ltmp238:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 456
	.short	.Ltmp240-.Ltmp239
.Ltmp239:
	.short	4414
	.long	116
	.short	0
	.asciz	"ret_code"
	.p2align	2, 0x0
.Ltmp240:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 448
	.short	.Ltmp242-.Ltmp241
.Ltmp241:
	.short	4414
	.long	4136
	.short	0
	.asciz	"matcode"
	.p2align	2, 0x0
.Ltmp242:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 444
	.short	.Ltmp244-.Ltmp243
.Ltmp243:
	.short	4414
	.long	4138
	.short	0
	.asciz	"f"
	.p2align	2, 0x0
.Ltmp244:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 432
	.short	.Ltmp246-.Ltmp245
.Ltmp245:
	.short	4414
	.long	116
	.short	0
	.asciz	"M"
	.p2align	2, 0x0
.Ltmp246:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 428
	.short	.Ltmp248-.Ltmp247
.Ltmp247:
	.short	4414
	.long	116
	.short	0
	.asciz	"N"
	.p2align	2, 0x0
.Ltmp248:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 424
	.short	.Ltmp250-.Ltmp249
.Ltmp249:
	.short	4414
	.long	116
	.short	0
	.asciz	"nz"
	.p2align	2, 0x0
.Ltmp250:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 420
	.short	.Ltmp252-.Ltmp251
.Ltmp251:
	.short	4414
	.long	1652
	.short	0
	.asciz	"I"
	.p2align	2, 0x0
.Ltmp252:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 408
	.short	.Ltmp254-.Ltmp253
.Ltmp253:
	.short	4414
	.long	1652
	.short	0
	.asciz	"J"
	.p2align	2, 0x0
.Ltmp254:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 400
	.short	.Ltmp256-.Ltmp255
.Ltmp255:
	.short	4414
	.long	1601
	.short	0
	.asciz	"val"
	.p2align	2, 0x0
.Ltmp256:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 392
	.short	.Ltmp258-.Ltmp257
.Ltmp257:
	.short	4414
	.long	1600
	.short	0
	.asciz	"val_float"
	.p2align	2, 0x0
.Ltmp258:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 384
	.short	.Ltmp260-.Ltmp259
.Ltmp259:
	.short	4414
	.long	1600
	.short	0
	.asciz	"vector_val"
	.p2align	2, 0x0
.Ltmp260:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 376
	.short	.Ltmp262-.Ltmp261
.Ltmp261:
	.short	4414
	.long	4124
	.short	0
	.asciz	"A"
	.p2align	2, 0x0
.Ltmp262:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 320
	.short	.Ltmp264-.Ltmp263
.Ltmp263:
	.short	4414
	.long	1600
	.short	0
	.asciz	"dense_matrix"
	.p2align	2, 0x0
.Ltmp264:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 312
	.short	.Ltmp266-.Ltmp265
.Ltmp265:
	.short	4414
	.long	116
	.short	0
	.asciz	"current_column"
	.p2align	2, 0x0
.Ltmp266:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 308
	.short	.Ltmp268-.Ltmp267
.Ltmp267:
	.short	4414
	.long	1600
	.short	0
	.asciz	"Input_vector"
	.p2align	2, 0x0
.Ltmp268:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 296
	.short	.Ltmp270-.Ltmp269
.Ltmp269:
	.short	4414
	.long	1600
	.short	0
	.asciz	"Output_vector"
	.p2align	2, 0x0
.Ltmp270:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 288
	.short	.Ltmp272-.Ltmp271
.Ltmp271:
	.short	4414
	.long	64
	.short	0
	.asciz	"k"
	.p2align	2, 0x0
.Ltmp272:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 284
	.short	.Ltmp274-.Ltmp273
.Ltmp273:
	.short	4414
	.long	35
	.short	0
	.asciz	"start_time"
	.p2align	2, 0x0
.Ltmp274:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 264
	.short	.Ltmp276-.Ltmp275
.Ltmp275:
	.short	4414
	.long	64
	.short	0
	.asciz	"cpu_freq"
	.p2align	2, 0x0
.Ltmp276:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 260
	.short	.Ltmp278-.Ltmp277
.Ltmp277:
	.short	4414
	.long	35
	.short	0
	.asciz	"start_time1"
	.p2align	2, 0x0
.Ltmp278:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 248
	.short	.Ltmp280-.Ltmp279
.Ltmp279:
	.short	4414
	.long	35
	.short	0
	.asciz	"end_time1"
	.p2align	2, 0x0
.Ltmp280:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 184
	.short	.Ltmp282-.Ltmp281
.Ltmp281:
	.short	4414
	.long	64
	.short	0
	.asciz	"elapsed_time1"
	.p2align	2, 0x0
.Ltmp282:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 180
	.short	.Ltmp284-.Ltmp283
.Ltmp283:
	.short	4414
	.long	35
	.short	0
	.asciz	"start_time2"
	.p2align	2, 0x0
.Ltmp284:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 168
	.short	.Ltmp286-.Ltmp285
.Ltmp285:
	.short	4414
	.long	35
	.short	0
	.asciz	"end_time2"
	.p2align	2, 0x0
.Ltmp286:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 104
	.short	.Ltmp288-.Ltmp287
.Ltmp287:
	.short	4414
	.long	64
	.short	0
	.asciz	"elapsed_time2"
	.p2align	2, 0x0
.Ltmp288:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 100
	.short	.Ltmp290-.Ltmp289
.Ltmp289:
	.short	4414
	.long	35
	.short	0
	.asciz	"end_time"
	.p2align	2, 0x0
.Ltmp290:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 88
	.short	.Ltmp292-.Ltmp291
.Ltmp291:
	.short	4414
	.long	64
	.short	0
	.asciz	"elapsed_time"
	.p2align	2, 0x0
.Ltmp292:
	.cv_def_range	 .Ltmp32 .Ltmp80, frame_ptr_rel, 84
	.short	.Ltmp294-.Ltmp293
.Ltmp293:
	.short	4355
	.long	0
	.long	0
	.long	.Ltmp57-.Ltmp54
	.secrel32	.Ltmp54
	.secidx	.Lfunc_begin9
	.byte	0
	.p2align	2, 0x0
.Ltmp294:
	.short	.Ltmp296-.Ltmp295
.Ltmp295:
	.short	4414
	.long	116
	.short	0
	.asciz	"i"
	.p2align	2, 0x0
.Ltmp296:
	.cv_def_range	 .Ltmp54 .Ltmp57, frame_ptr_rel, 372
	.short	2
	.short	6
	.short	.Ltmp298-.Ltmp297
.Ltmp297:
	.short	4355
	.long	0
	.long	0
	.long	.Ltmp65-.Ltmp60
	.secrel32	.Ltmp60
	.secidx	.Lfunc_begin9
	.byte	0
	.p2align	2, 0x0
.Ltmp298:
	.short	.Ltmp300-.Ltmp299
.Ltmp299:
	.short	4414
	.long	116
	.short	0
	.asciz	"i"
	.p2align	2, 0x0
.Ltmp300:
	.cv_def_range	 .Ltmp60 .Ltmp65, frame_ptr_rel, 304
	.short	2
	.short	6
	.short	.Ltmp302-.Ltmp301
.Ltmp301:
	.short	4355
	.long	0
	.long	0
	.long	.Ltmp73-.Ltmp70
	.secrel32	.Ltmp70
	.secidx	.Lfunc_begin9
	.byte	0
	.p2align	2, 0x0
.Ltmp302:
	.short	.Ltmp304-.Ltmp303
.Ltmp303:
	.short	4414
	.long	116
	.short	0
	.asciz	"i"
	.p2align	2, 0x0
.Ltmp304:
	.cv_def_range	 .Ltmp70 .Ltmp73, frame_ptr_rel, 280
	.short	2
	.short	6
	.short	.Ltmp306-.Ltmp305
.Ltmp305:
	.short	4355
	.long	0
	.long	0
	.long	.Ltmp76-.Ltmp73
	.secrel32	.Ltmp73
	.secidx	.Lfunc_begin9
	.byte	0
	.p2align	2, 0x0
.Ltmp306:
	.short	.Ltmp308-.Ltmp307
.Ltmp307:
	.short	4414
	.long	116
	.short	0
	.asciz	"i"
	.p2align	2, 0x0
.Ltmp308:
	.cv_def_range	 .Ltmp73 .Ltmp76, frame_ptr_rel, 276
	.short	2
	.short	6
	.short	.Ltmp310-.Ltmp309
.Ltmp309:
	.short	4355
	.long	0
	.long	0
	.long	.Ltmp79-.Ltmp76
	.secrel32	.Ltmp76
	.secidx	.Lfunc_begin9
	.byte	0
	.p2align	2, 0x0
.Ltmp310:
	.short	.Ltmp312-.Ltmp311
.Ltmp311:
	.short	4414
	.long	116
	.short	0
	.asciz	"i"
	.p2align	2, 0x0
.Ltmp312:
	.cv_def_range	 .Ltmp76 .Ltmp79, frame_ptr_rel, 272
	.short	2
	.short	6
	.short	.Ltmp314-.Ltmp313
.Ltmp313:
	.short	4446
	.secrel32	.Ltmp44
	.secidx	.Ltmp44
	.short	.Ltmp45-.Ltmp44
	.long	116
	.p2align	2, 0x0
.Ltmp314:
	.short	.Ltmp316-.Ltmp315
.Ltmp315:
	.short	4446
	.secrel32	.Ltmp46
	.secidx	.Ltmp46
	.short	.Ltmp47-.Ltmp46
	.long	116
	.p2align	2, 0x0
.Ltmp316:
	.short	.Ltmp318-.Ltmp317
.Ltmp317:
	.short	4446
	.secrel32	.Ltmp48
	.secidx	.Ltmp48
	.short	.Ltmp49-.Ltmp48
	.long	65
	.p2align	2, 0x0
.Ltmp318:
	.short	.Ltmp320-.Ltmp319
.Ltmp319:
	.short	4446
	.secrel32	.Ltmp50
	.secidx	.Ltmp50
	.short	.Ltmp51-.Ltmp50
	.long	64
	.p2align	2, 0x0
.Ltmp320:
	.short	.Ltmp322-.Ltmp321
.Ltmp321:
	.short	4446
	.secrel32	.Ltmp52
	.secidx	.Ltmp52
	.short	.Ltmp53-.Ltmp52
	.long	64
	.p2align	2, 0x0
.Ltmp322:
	.short	.Ltmp324-.Ltmp323
.Ltmp323:
	.short	4446
	.secrel32	.Ltmp58
	.secidx	.Ltmp58
	.short	.Ltmp59-.Ltmp58
	.long	116
	.p2align	2, 0x0
.Ltmp324:
	.short	.Ltmp326-.Ltmp325
.Ltmp325:
	.short	4446
	.secrel32	.Ltmp66
	.secidx	.Ltmp66
	.short	.Ltmp67-.Ltmp66
	.long	64
	.p2align	2, 0x0
.Ltmp326:
	.short	.Ltmp328-.Ltmp327
.Ltmp327:
	.short	4446
	.secrel32	.Ltmp68
	.secidx	.Ltmp68
	.short	.Ltmp69-.Ltmp68
	.long	64
	.p2align	2, 0x0
.Ltmp328:
	.short	2
	.short	4431
.Ltmp230:
	.p2align	2, 0x0
	.cv_linetable	9, main, .Lfunc_end9
	.section	.debug$S,"dr",associative,fprintf
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp330-.Ltmp329
.Ltmp329:
	.short	.Ltmp332-.Ltmp331
.Ltmp331:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end10-fprintf
	.long	0
	.long	0
	.long	4146
	.secrel32	fprintf
	.secidx	fprintf
	.byte	192
	.asciz	"fprintf"
	.p2align	2, 0x0
.Ltmp332:
	.short	.Ltmp334-.Ltmp333
.Ltmp333:
	.short	4114
	.long	72
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp334:
	.short	.Ltmp336-.Ltmp335
.Ltmp335:
	.short	4414
	.long	4143
	.short	1
	.asciz	"_Stream"
	.p2align	2, 0x0
.Ltmp336:
	.cv_def_range	 .Ltmp81 .Ltmp82, frame_ptr_rel, 56
	.short	.Ltmp338-.Ltmp337
.Ltmp337:
	.short	4414
	.long	4098
	.short	1
	.asciz	"_Format"
	.p2align	2, 0x0
.Ltmp338:
	.cv_def_range	 .Ltmp81 .Ltmp82, frame_ptr_rel, 64
	.short	.Ltmp340-.Ltmp339
.Ltmp339:
	.short	4414
	.long	116
	.short	0
	.asciz	"_Result"
	.p2align	2, 0x0
.Ltmp340:
	.cv_def_range	 .Ltmp81 .Ltmp82, frame_ptr_rel, 52
	.short	.Ltmp342-.Ltmp341
.Ltmp341:
	.short	4414
	.long	1648
	.short	0
	.asciz	"_ArgList"
	.p2align	2, 0x0
.Ltmp342:
	.cv_def_range	 .Ltmp81 .Ltmp82, frame_ptr_rel, 40
	.short	2
	.short	4431
.Ltmp330:
	.p2align	2, 0x0
	.cv_linetable	10, fprintf, .Lfunc_end10
	.section	.debug$S,"dr",associative,printf
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp344-.Ltmp343
.Ltmp343:
	.short	.Ltmp346-.Ltmp345
.Ltmp345:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end11-printf
	.long	0
	.long	0
	.long	4149
	.secrel32	printf
	.secidx	printf
	.byte	192
	.asciz	"printf"
	.p2align	2, 0x0
.Ltmp346:
	.short	.Ltmp348-.Ltmp347
.Ltmp347:
	.short	4114
	.long	72
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp348:
	.short	.Ltmp350-.Ltmp349
.Ltmp349:
	.short	4414
	.long	4098
	.short	1
	.asciz	"_Format"
	.p2align	2, 0x0
.Ltmp350:
	.cv_def_range	 .Ltmp83 .Ltmp84, frame_ptr_rel, 64
	.short	.Ltmp352-.Ltmp351
.Ltmp351:
	.short	4414
	.long	116
	.short	0
	.asciz	"_Result"
	.p2align	2, 0x0
.Ltmp352:
	.cv_def_range	 .Ltmp83 .Ltmp84, frame_ptr_rel, 60
	.short	.Ltmp354-.Ltmp353
.Ltmp353:
	.short	4414
	.long	1648
	.short	0
	.asciz	"_ArgList"
	.p2align	2, 0x0
.Ltmp354:
	.cv_def_range	 .Ltmp83 .Ltmp84, frame_ptr_rel, 48
	.short	2
	.short	4431
.Ltmp344:
	.p2align	2, 0x0
	.cv_linetable	11, printf, .Lfunc_end11
	.section	.debug$S,"dr",associative,fscanf
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
	.long	.Lfunc_end12-fscanf
	.long	0
	.long	0
	.long	4150
	.secrel32	fscanf
	.secidx	fscanf
	.byte	192
	.asciz	"fscanf"
	.p2align	2, 0x0
.Ltmp358:
	.short	.Ltmp360-.Ltmp359
.Ltmp359:
	.short	4114
	.long	72
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
	.long	4143
	.short	1
	.asciz	"_Stream"
	.p2align	2, 0x0
.Ltmp362:
	.cv_def_range	 .Ltmp85 .Ltmp86, frame_ptr_rel, 56
	.short	.Ltmp364-.Ltmp363
.Ltmp363:
	.short	4414
	.long	4098
	.short	1
	.asciz	"_Format"
	.p2align	2, 0x0
.Ltmp364:
	.cv_def_range	 .Ltmp85 .Ltmp86, frame_ptr_rel, 64
	.short	.Ltmp366-.Ltmp365
.Ltmp365:
	.short	4414
	.long	116
	.short	0
	.asciz	"_Result"
	.p2align	2, 0x0
.Ltmp366:
	.cv_def_range	 .Ltmp85 .Ltmp86, frame_ptr_rel, 52
	.short	.Ltmp368-.Ltmp367
.Ltmp367:
	.short	4414
	.long	1648
	.short	0
	.asciz	"_ArgList"
	.p2align	2, 0x0
.Ltmp368:
	.cv_def_range	 .Ltmp85 .Ltmp86, frame_ptr_rel, 40
	.short	2
	.short	4431
.Ltmp356:
	.p2align	2, 0x0
	.cv_linetable	12, fscanf, .Lfunc_end12
	.section	.debug$S,"dr",associative,_vsprintf_l
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp370-.Ltmp369
.Ltmp369:
	.short	.Ltmp372-.Ltmp371
.Ltmp371:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end13-_vsprintf_l
	.long	0
	.long	0
	.long	4164
	.secrel32	_vsprintf_l
	.secidx	_vsprintf_l
	.byte	192
	.asciz	"_vsprintf_l"
	.p2align	2, 0x0
.Ltmp372:
	.short	.Ltmp374-.Ltmp373
.Ltmp373:
	.short	4114
	.long	72
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp374:
	.short	.Ltmp376-.Ltmp375
.Ltmp375:
	.short	4414
	.long	4096
	.short	1
	.asciz	"_Buffer"
	.p2align	2, 0x0
.Ltmp376:
	.cv_def_range	 .Ltmp87 .Ltmp88, frame_ptr_rel, 40
	.short	.Ltmp378-.Ltmp377
.Ltmp377:
	.short	4414
	.long	4098
	.short	1
	.asciz	"_Format"
	.p2align	2, 0x0
.Ltmp378:
	.cv_def_range	 .Ltmp87 .Ltmp88, frame_ptr_rel, 48
	.short	.Ltmp380-.Ltmp379
.Ltmp379:
	.short	4414
	.long	4153
	.short	1
	.asciz	"_Locale"
	.p2align	2, 0x0
.Ltmp380:
	.cv_def_range	 .Ltmp87 .Ltmp88, frame_ptr_rel, 56
	.short	.Ltmp382-.Ltmp381
.Ltmp381:
	.short	4414
	.long	1648
	.short	1
	.asciz	"_ArgList"
	.p2align	2, 0x0
.Ltmp382:
	.cv_def_range	 .Ltmp87 .Ltmp88, frame_ptr_rel, 64
	.short	2
	.short	4431
.Ltmp370:
	.p2align	2, 0x0
	.cv_linetable	13, _vsprintf_l, .Lfunc_end13
	.section	.debug$S,"dr",associative,_vsnprintf_l
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp384-.Ltmp383
.Ltmp383:
	.short	.Ltmp386-.Ltmp385
.Ltmp385:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end14-_vsnprintf_l
	.long	0
	.long	0
	.long	4167
	.secrel32	_vsnprintf_l
	.secidx	_vsnprintf_l
	.byte	192
	.asciz	"_vsnprintf_l"
	.p2align	2, 0x0
.Ltmp386:
	.short	.Ltmp388-.Ltmp387
.Ltmp387:
	.short	4114
	.long	136
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp388:
	.short	.Ltmp390-.Ltmp389
.Ltmp389:
	.short	4414
	.long	4096
	.short	1
	.asciz	"_Buffer"
	.p2align	2, 0x0
.Ltmp390:
	.cv_def_range	 .Ltmp89 .Ltmp90, frame_ptr_rel, 104
	.short	.Ltmp392-.Ltmp391
.Ltmp391:
	.short	4414
	.long	4105
	.short	1
	.asciz	"_BufferCount"
	.p2align	2, 0x0
.Ltmp392:
	.cv_def_range	 .Ltmp89 .Ltmp90, frame_ptr_rel, 112
	.short	.Ltmp394-.Ltmp393
.Ltmp393:
	.short	4414
	.long	4098
	.short	1
	.asciz	"_Format"
	.p2align	2, 0x0
.Ltmp394:
	.cv_def_range	 .Ltmp89 .Ltmp90, frame_ptr_rel, 120
	.short	.Ltmp396-.Ltmp395
.Ltmp395:
	.short	4414
	.long	4153
	.short	1
	.asciz	"_Locale"
	.p2align	2, 0x0
.Ltmp396:
	.cv_def_range	 .Ltmp89 .Ltmp90, frame_ptr_rel, 128
	.short	.Ltmp398-.Ltmp397
.Ltmp397:
	.short	4414
	.long	1648
	.short	1
	.asciz	"_ArgList"
	.p2align	2, 0x0
.Ltmp398:
	.cv_def_range	 .Ltmp89 .Ltmp90, frame_ptr_rel, 176
	.short	.Ltmp400-.Ltmp399
.Ltmp399:
	.short	4414
	.long	4168
	.short	0
	.asciz	"_Result"
	.p2align	2, 0x0
.Ltmp400:
	.cv_def_range	 .Ltmp89 .Ltmp90, frame_ptr_rel, 100
	.short	2
	.short	4431
.Ltmp384:
	.p2align	2, 0x0
	.cv_linetable	14, _vsnprintf_l, .Lfunc_end14
	.section	.debug$S,"dr",associative,__local_stdio_printf_options
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp402-.Ltmp401
.Ltmp401:
	.short	.Ltmp404-.Ltmp403
.Ltmp403:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end15-__local_stdio_printf_options
	.long	0
	.long	0
	.long	4170
	.secrel32	__local_stdio_printf_options
	.secidx	__local_stdio_printf_options
	.byte	192
	.asciz	"__local_stdio_printf_options"
	.p2align	2, 0x0
.Ltmp404:
	.short	.Ltmp406-.Ltmp405
.Ltmp405:
	.short	4114
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	8192
	.p2align	2, 0x0
.Ltmp406:
	.short	.Ltmp408-.Ltmp407
.Ltmp407:
	.short	4364
	.long	35
	.secrel32	__local_stdio_printf_options._OptionsStorage
	.secidx	__local_stdio_printf_options._OptionsStorage
	.asciz	"_OptionsStorage"
	.p2align	2, 0x0
.Ltmp408:
	.short	2
	.short	4431
.Ltmp402:
	.p2align	2, 0x0
	.cv_linetable	15, __local_stdio_printf_options, .Lfunc_end15
	.section	.debug$S,"dr",associative,_vfprintf_l
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
	.long	.Lfunc_end16-_vfprintf_l
	.long	0
	.long	0
	.long	4173
	.secrel32	_vfprintf_l
	.secidx	_vfprintf_l
	.byte	192
	.asciz	"_vfprintf_l"
	.p2align	2, 0x0
.Ltmp412:
	.short	.Ltmp414-.Ltmp413
.Ltmp413:
	.short	4114
	.long	104
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp414:
	.short	.Ltmp416-.Ltmp415
.Ltmp415:
	.short	4414
	.long	4143
	.short	1
	.asciz	"_Stream"
	.p2align	2, 0x0
.Ltmp416:
	.cv_def_range	 .Ltmp92 .Ltmp93, frame_ptr_rel, 72
	.short	.Ltmp418-.Ltmp417
.Ltmp417:
	.short	4414
	.long	4098
	.short	1
	.asciz	"_Format"
	.p2align	2, 0x0
.Ltmp418:
	.cv_def_range	 .Ltmp92 .Ltmp93, frame_ptr_rel, 80
	.short	.Ltmp420-.Ltmp419
.Ltmp419:
	.short	4414
	.long	4153
	.short	1
	.asciz	"_Locale"
	.p2align	2, 0x0
.Ltmp420:
	.cv_def_range	 .Ltmp92 .Ltmp93, frame_ptr_rel, 88
	.short	.Ltmp422-.Ltmp421
.Ltmp421:
	.short	4414
	.long	1648
	.short	1
	.asciz	"_ArgList"
	.p2align	2, 0x0
.Ltmp422:
	.cv_def_range	 .Ltmp92 .Ltmp93, frame_ptr_rel, 96
	.short	2
	.short	4431
.Ltmp410:
	.p2align	2, 0x0
	.cv_linetable	16, _vfprintf_l, .Lfunc_end16
	.section	.debug$S,"dr",associative,_vfscanf_l
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp424-.Ltmp423
.Ltmp423:
	.short	.Ltmp426-.Ltmp425
.Ltmp425:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end17-_vfscanf_l
	.long	0
	.long	0
	.long	4174
	.secrel32	_vfscanf_l
	.secidx	_vfscanf_l
	.byte	192
	.asciz	"_vfscanf_l"
	.p2align	2, 0x0
.Ltmp426:
	.short	.Ltmp428-.Ltmp427
.Ltmp427:
	.short	4114
	.long	104
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	90112
	.p2align	2, 0x0
.Ltmp428:
	.short	.Ltmp430-.Ltmp429
.Ltmp429:
	.short	4414
	.long	4143
	.short	1
	.asciz	"_Stream"
	.p2align	2, 0x0
.Ltmp430:
	.cv_def_range	 .Ltmp94 .Ltmp95, frame_ptr_rel, 72
	.short	.Ltmp432-.Ltmp431
.Ltmp431:
	.short	4414
	.long	4098
	.short	1
	.asciz	"_Format"
	.p2align	2, 0x0
.Ltmp432:
	.cv_def_range	 .Ltmp94 .Ltmp95, frame_ptr_rel, 80
	.short	.Ltmp434-.Ltmp433
.Ltmp433:
	.short	4414
	.long	4153
	.short	1
	.asciz	"_Locale"
	.p2align	2, 0x0
.Ltmp434:
	.cv_def_range	 .Ltmp94 .Ltmp95, frame_ptr_rel, 88
	.short	.Ltmp436-.Ltmp435
.Ltmp435:
	.short	4414
	.long	1648
	.short	1
	.asciz	"_ArgList"
	.p2align	2, 0x0
.Ltmp436:
	.cv_def_range	 .Ltmp94 .Ltmp95, frame_ptr_rel, 96
	.short	2
	.short	4431
.Ltmp424:
	.p2align	2, 0x0
	.cv_linetable	17, _vfscanf_l, .Lfunc_end17
	.section	.debug$S,"dr",associative,__local_stdio_scanf_options
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp438-.Ltmp437
.Ltmp437:
	.short	.Ltmp440-.Ltmp439
.Ltmp439:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end18-__local_stdio_scanf_options
	.long	0
	.long	0
	.long	4175
	.secrel32	__local_stdio_scanf_options
	.secidx	__local_stdio_scanf_options
	.byte	192
	.asciz	"__local_stdio_scanf_options"
	.p2align	2, 0x0
.Ltmp440:
	.short	.Ltmp442-.Ltmp441
.Ltmp441:
	.short	4114
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	8192
	.p2align	2, 0x0
.Ltmp442:
	.short	.Ltmp444-.Ltmp443
.Ltmp443:
	.short	4364
	.long	35
	.secrel32	__local_stdio_scanf_options._OptionsStorage
	.secidx	__local_stdio_scanf_options._OptionsStorage
	.asciz	"_OptionsStorage"
	.p2align	2, 0x0
.Ltmp444:
	.short	2
	.short	4431
.Ltmp438:
	.p2align	2, 0x0
	.cv_linetable	18, __local_stdio_scanf_options, .Lfunc_end18
	.section	.debug$S,"dr"
	.long	241
	.long	.Ltmp446-.Ltmp445
.Ltmp445:
	.short	.Ltmp448-.Ltmp447
.Ltmp447:
	.short	4360
	.long	1648
	.asciz	"va_list"
	.p2align	2, 0x0
.Ltmp448:
	.short	.Ltmp450-.Ltmp449
.Ltmp449:
	.short	4360
	.long	35
	.asciz	"size_t"
	.p2align	2, 0x0
.Ltmp450:
	.short	.Ltmp452-.Ltmp451
.Ltmp451:
	.short	4360
	.long	35
	.asciz	"uint64_t"
	.p2align	2, 0x0
.Ltmp452:
	.short	.Ltmp454-.Ltmp453
.Ltmp453:
	.short	4360
	.long	4124
	.asciz	"CSCMatrix"
	.p2align	2, 0x0
.Ltmp454:
	.short	.Ltmp456-.Ltmp455
.Ltmp455:
	.short	4360
	.long	4124
	.asciz	"CSCMatrix"
	.p2align	2, 0x0
.Ltmp456:
	.short	.Ltmp458-.Ltmp457
.Ltmp457:
	.short	4360
	.long	4136
	.asciz	"MM_typecode"
	.p2align	2, 0x0
.Ltmp458:
	.short	.Ltmp460-.Ltmp459
.Ltmp459:
	.short	4360
	.long	4140
	.asciz	"FILE"
	.p2align	2, 0x0
.Ltmp460:
	.short	.Ltmp462-.Ltmp461
.Ltmp461:
	.short	4360
	.long	4140
	.asciz	"_iobuf"
	.p2align	2, 0x0
.Ltmp462:
	.short	.Ltmp464-.Ltmp463
.Ltmp463:
	.short	4360
	.long	4161
	.asciz	"__crt_locale_pointers"
	.p2align	2, 0x0
.Ltmp464:
	.short	.Ltmp466-.Ltmp465
.Ltmp465:
	.short	4360
	.long	4152
	.asciz	"_locale_t"
	.p2align	2, 0x0
.Ltmp466:
	.short	.Ltmp468-.Ltmp467
.Ltmp467:
	.short	4360
	.long	4161
	.asciz	"__crt_locale_pointers"
	.p2align	2, 0x0
.Ltmp468:
.Ltmp446:
	.p2align	2, 0x0
	.cv_filechecksums
	.cv_stringtable
	.long	241
	.long	.Ltmp470-.Ltmp469
.Ltmp469:
	.short	.Ltmp472-.Ltmp471
.Ltmp471:
	.short	4428
	.long	4181
	.p2align	2, 0x0
.Ltmp472:
.Ltmp470:
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
	.long	0x40
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
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x641
	.long	0x640
	.long	0x74
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x1015
	.short	0x1e
	.short	0x1601
	.long	0x0
	.long	0x1016
	.asciz	"converfloatToFloat"
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
	.long	0x1018
	.long	0x640
	.long	0x640
	.long	0x640
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x4
	.long	0x1019
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
	.long	0x640
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
	.long	0x101b
	.long	0x0
	.long	0x0
	.short	0x30
	.asciz	"CSCMatrix"
	.short	0x42
	.short	0x1605
	.long	0x0
	.asciz	"C:\\Users\\DELL\\OneDrive\\Documents\\samplesss\\spmv_size-10x.c"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x101c
	.long	0x101d
	.long	0x15
	.short	0x1e
	.short	0x1601
	.long	0x0
	.long	0x101a
	.asciz	"csc_matrix_vector"
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x1018
	.long	0x2c
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x1018
	.long	0x640
	.long	0x640
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x1021
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x1022
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
	.long	0x1024
	.short	0xe
	.short	0x1008
	.long	0x74
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1025
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x1026
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
	.long	0x1029
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
	.long	0x102b
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
	.long	0x102c
	.long	0x102d
	.long	0x1c
	.short	0xa
	.short	0x1002
	.long	0x1029
	.long	0x1040c
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x102f
	.long	0x1002
	.long	0x0
	.short	0xe
	.short	0x1008
	.long	0x74
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x1030
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x1031
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
	.long	0x1033
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x1034
	.asciz	"printf"
	.byte	241
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x1031
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
	.long	0x1037
	.long	0x1000c
	.short	0xa
	.short	0x1001
	.long	0x1038
	.short	0x1
	.byte	242
	.byte	241
	.short	0x16
	.short	0x1201
	.long	0x4
	.long	0x1000
	.long	0x1002
	.long	0x1039
	.long	0x670
	.short	0xe
	.short	0x1008
	.long	0x74
	.byte	0x0
	.byte	0x0
	.short	0x4
	.long	0x103a
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
	.long	0x103c
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
	.long	0x103e
	.long	0x1000c
	.short	0x2a
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x103d
	.short	0x0
	.asciz	"locinfo"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x103f
	.short	0x8
	.asciz	"mbcinfo"
	.byte	242
	.byte	241
	.short	0x2a
	.short	0x1505
	.short	0x2
	.short	0x0
	.long	0x1040
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
	.long	0x1041
	.long	0x1042
	.long	0x269
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x103b
	.asciz	"_vsprintf_l"
	.short	0x1a
	.short	0x1201
	.long	0x5
	.long	0x1000
	.long	0x1009
	.long	0x1002
	.long	0x1039
	.long	0x670
	.short	0xe
	.short	0x1008
	.long	0x74
	.byte	0x0
	.byte	0x0
	.short	0x5
	.long	0x1045
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x1046
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
	.long	0x1049
	.asciz	"__local_stdio_printf_options"
	.byte	243
	.byte	242
	.byte	241
	.short	0x16
	.short	0x1201
	.long	0x4
	.long	0x102f
	.long	0x1002
	.long	0x1039
	.long	0x670
	.short	0xe
	.short	0x1008
	.long	0x74
	.byte	0x0
	.byte	0x0
	.short	0x4
	.long	0x104b
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x104c
	.asciz	"_vfprintf_l"
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x104c
	.asciz	"_vfscanf_l"
	.byte	241
	.short	0x26
	.short	0x1601
	.long	0x0
	.long	0x1049
	.asciz	"__local_stdio_scanf_options"
	.short	0x32
	.short	0x1605
	.long	0x0
	.asciz	"C:\\Users\\DELL\\OneDrive\\Documents\\samplesss"
	.byte	241
	.short	0x16
	.short	0x1605
	.long	0x0
	.asciz	"spmv_size-10x.c"
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
	.long	0x1050
	.long	0x1053
	.long	0x1051
	.long	0x1052
	.long	0x1054
	.byte	242
	.byte	241
	.globl	_fltused
