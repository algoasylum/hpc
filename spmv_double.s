	.file	"spmv_double.c"
 # GNU C (GCC) version 4.6.2 (mingw32)
 #	compiled by GNU C version 4.6.2, GMP version 5.0.1, MPFR version 2.4.1, MPC version 0.8.1
 # warning: GMP header version 5.0.1 differs from library version 6.1.2.
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -iprefix c:\mingw\bin\../lib/gcc/mingw32/4.6.2/
 # spmv_double.c -mtune=i386 -march=i386 -O3 -std=c99 -fverbose-asm
 # options enabled:  -fasynchronous-unwind-tables -fauto-inc-dec
 # -fbranch-count-reg -fcaller-saves -fcombine-stack-adjustments -fcommon
 # -fcompare-elim -fcprop-registers -fcrossjumping -fcse-follow-jumps
 # -fdefer-pop -fdelete-null-pointer-checks -fdevirtualize -fdwarf2-cfi-asm
 # -fearly-inlining -feliminate-unused-debug-types
 # -fexpensive-optimizations -fforward-propagate -ffunction-cse -fgcse
 # -fgcse-after-reload -fgcse-lm -fguess-branch-probability -fident
 # -fif-conversion -fif-conversion2 -findirect-inlining -finline
 # -finline-functions -finline-functions-called-once
 # -finline-small-functions -fipa-cp -fipa-cp-clone -fipa-profile
 # -fipa-pure-const -fipa-reference -fipa-sra -fira-share-save-slots
 # -fira-share-spill-slots -fivopts -fkeep-inline-dllexport
 # -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
 # -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
 # -foptimize-register-move -foptimize-sibling-calls -fpartial-inlining
 # -fpeephole -fpeephole2 -fpredictive-commoning -fprefetch-loop-arrays
 # -freg-struct-return -fregmove -freorder-blocks -freorder-functions
 # -frerun-cse-after-loop -fsched-critical-path-heuristic
 # -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
 # -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
 # -fsched-spec-insn-heuristic -fsched-stalled-insns-dep
 # -fset-stack-executable -fshow-column -fsigned-zeros
 # -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-aliasing
 # -fstrict-overflow -fstrict-volatile-bitfields -fthread-jumps
 # -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
 # -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-copy-prop
 # -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
 # -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-distribute-patterns
 # -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
 # -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
 # -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
 # -ftree-slp-vectorize -ftree-sra -ftree-switch-conversion -ftree-ter
 # -ftree-vect-loop-version -ftree-vectorize -ftree-vrp -funit-at-a-time
 # -funswitch-loops -funwind-tables -fvect-cost-model -fverbose-asm
 # -fzero-initialized-in-bss -m32 -m80387 -m96bit-long-double
 # -maccumulate-outgoing-args -malign-double -malign-stringops
 # -mfancy-math-387 -mfp-ret-in-387 -mieee-fp -mno-red-zone -mno-sse4
 # -mpush-args -msahf -mstack-arg-probe

 # Compiler executable checksum: c20aed7c018482d7b62efcd5dcab2a9d

	.section	.text.unlikely,"x"
	.def	_fprintf;	.scl	3;	.type	32;	.endef
_fprintf:
LFB0:
	.cfi_startproc
	subl	$28, %esp	 #,
	.cfi_def_cfa_offset 32
	leal	40(%esp), %eax	 #, tmp64
	movl	%eax, 8(%esp)	 # tmp64,
	movl	36(%esp), %eax	 # __format, __format
	movl	%eax, 4(%esp)	 # __format,
	movl	32(%esp), %eax	 # __stream, __stream
	movl	%eax, (%esp)	 # __stream,
	call	___mingw_vfprintf	 #
	addl	$28, %esp	 #,
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE0:
	.text
	.p2align 2,,3
	.def	_printf;	.scl	3;	.type	32;	.endef
_printf:
LFB1:
	.cfi_startproc
	subl	$28, %esp	 #,
	.cfi_def_cfa_offset 32
	leal	36(%esp), %eax	 #, tmp63
	movl	%eax, 4(%esp)	 # tmp63,
	movl	32(%esp), %eax	 # __format, __format
	movl	%eax, (%esp)	 # __format,
	call	___mingw_vprintf	 #
	addl	$28, %esp	 #,
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE1:
	.p2align 2,,3
	.globl	_get_cpu_frequency
	.def	_get_cpu_frequency;	.scl	2;	.type	32;	.endef
_get_cpu_frequency:
LFB16:
	.cfi_startproc
	flds	LC0	 #
	ret
	.cfi_endproc
LFE16:
	.p2align 2,,3
	.globl	_rdtsc
	.def	_rdtsc;	.scl	2;	.type	32;	.endef
_rdtsc:
LFB17:
	.cfi_startproc
/APP
 # 19 "spmv_double.c" 1
	rdtsc
 # 0 "" 2
/NO_APP
	ret
	.cfi_endproc
LFE17:
	.p2align 2,,3
	.globl	_csc_matrix_vector_product
	.def	_csc_matrix_vector_product;	.scl	2;	.type	32;	.endef
_csc_matrix_vector_product:
LFB18:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi	 #
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi	 #
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx	 #
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp	 #,
	.cfi_def_cfa_offset 48
	movl	72(%esp), %edi	 # x, x
	movl	76(%esp), %ebp	 # y, y
	movl	52(%esp), %eax	 # MEM[(struct  *)&A].cols,
	movl	%eax, 12(%esp)	 #, %sfp
	movl	68(%esp), %edx	 # MEM[(struct  *)&A].column_ptrs,
	movl	%edx, 8(%esp)	 #, %sfp
	testl	%eax, %eax	 #
	jle	L5	 #,
	movl	64(%esp), %esi	 # A.row_indices, pretmp.82
	movl	60(%esp), %ebx	 # A.values, pretmp.84
	xorl	%ecx, %ecx	 # j
	.p2align 2,,3
L9:
	movl	8(%esp), %edx	 # %sfp,
	movl	(%edx,%ecx,4), %eax	 # MEM[base: A$column_ptrs_16, index: D.2981_26, step: 4, offset: 0B], i
	movl	4(%edx,%ecx,4), %edx	 # MEM[base: A$column_ptrs_16, index: D.2981_26, step: 4, offset: 4B],
	movl	%edx, 4(%esp)	 #, %sfp
	cmpl	%edx, %eax	 #, i
	jge	L7	 #,
	.p2align 2,,3
L10:
	movl	(%esi,%eax,4), %edx	 # MEM[base: pretmp.82_122, index: D.2972_25, step: 4, offset: 0B], MEM[base: pretmp.82_122, index: D.2972_25, step: 4, offset: 0B]
	leal	0(%ebp,%edx,8), %edx	 #, D.2808
	fldl	(%edi,%ecx,8)	 # MEM[base: x_43(D), index: D.2981_26, step: 8, offset: 0B]
	fmull	(%ebx,%eax,8)	 # MEM[base: pretmp.84_124, index: D.2972_25, step: 8, offset: 0B]
	faddl	(%edx)	 # *D.2808_32
	fstpl	(%edx)	 # *D.2808_32
	incl	%eax	 # i
	cmpl	4(%esp), %eax	 # %sfp, i
	jne	L10	 #,
L7:
	incl	%ecx	 # j
	cmpl	12(%esp), %ecx	 # %sfp, j
	jne	L9	 #,
L5:
	addl	$28, %esp	 #,
	.cfi_def_cfa_offset 20
	popl	%ebx	 #
	.cfi_def_cfa_offset 16
	.cfi_restore 3
	popl	%esi	 #
	.cfi_def_cfa_offset 12
	.cfi_restore 6
	popl	%edi	 #
	.cfi_def_cfa_offset 8
	.cfi_restore 7
	popl	%ebp	 #
	.cfi_def_cfa_offset 4
	.cfi_restore 5
	ret
	.cfi_endproc
LFE18:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 4
LC2:
	.ascii "Usage: %s [matrix-market-filename]\12\0"
LC3:
	.ascii "r\0"
	.align 4
LC4:
	.ascii "Could not process Matrix Market banner.\12\0"
	.align 4
LC5:
	.ascii "Sorry, this application does not support \0"
LC6:
	.ascii "Market Market type: [%s]\12\0"
LC7:
	.ascii "%d %d %lg\12\0"
	.align 4
LC11:
	.ascii "avg time required to perform normal spmv with same input vector is %f seconds\12\0"
	.align 4
LC12:
	.ascii "rows=%d columns= %d non-zero=%d \12\0"
	.section	.text.startup,"x"
	.p2align 2,,3
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB19:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	pushl	%edi	 #
	pushl	%esi	 #
	pushl	%ebx	 #
	andl	$-16, %esp	 #,
	subl	$160, %esp	 #,
	movl	12(%ebp), %ebx	 # argv, argv
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	___main	 #
	cmpl	$1, 8(%ebp)	 #, argc
	jle	L36	 #,
	movl	$LC3, 4(%esp)	 #,
	movl	4(%ebx), %eax	 # MEM[(char * *)argv_9(D) + 4B], MEM[(char * *)argv_9(D) + 4B]
	movl	%eax, (%esp)	 # MEM[(char * *)argv_9(D) + 4B],
	call	_fopen	 #
	movl	%eax, 84(%esp)	 #, %sfp
	testl	%eax, %eax	 #
	je	L35	 #,
	leal	144(%esp), %ebx	 #, tmp235
	movl	%ebx, 4(%esp)	 # tmp235,
	movl	%eax, (%esp)	 #,
	call	_mm_read_banner	 #
	testl	%eax, %eax	 # D.2707
	jne	L37	 #,
	cmpb	$67, 146(%esp)	 #, matcode
	je	L38	 #,
L18:
	leal	156(%esp), %eax	 #, tmp237
	movl	%eax, 12(%esp)	 # tmp237,
	leal	152(%esp), %eax	 #, tmp238
	movl	%eax, 8(%esp)	 # tmp238,
	leal	148(%esp), %eax	 #, tmp239
	movl	%eax, 4(%esp)	 # tmp239,
	movl	84(%esp), %eax	 # %sfp,
	movl	%eax, (%esp)	 #,
	call	_mm_read_mtx_crd_size	 #
	testl	%eax, %eax	 # ret_code
	jne	L35	 #,
	movl	156(%esp), %eax	 # nz, nz
	sall	$2, %eax	 #, tmp240
	movl	%eax, (%esp)	 # tmp240,
	call	_malloc	 #
	movl	%eax, 72(%esp)	 #, %sfp
	movl	156(%esp), %eax	 # nz, nz
	sall	$2, %eax	 #, tmp243
	movl	%eax, (%esp)	 # tmp243,
	call	_malloc	 #
	movl	%eax, 60(%esp)	 #, %sfp
	movl	156(%esp), %eax	 # nz, nz
	sall	$3, %eax	 #, tmp246
	movl	%eax, (%esp)	 # tmp246,
	call	_malloc	 #
	movl	%eax, 80(%esp)	 #, %sfp
	movl	156(%esp), %eax	 # nz, nz.0
	testl	%eax, %eax	 # nz.0
	jle	L20	 #,
	movl	72(%esp), %edi	 # %sfp, ivtmp.148
	movl	60(%esp), %esi	 # %sfp, ivtmp.150
	movl	80(%esp), %edx	 # %sfp, ivtmp.151
	xorl	%ebx, %ebx	 # i
	.p2align 2,,3
L21:
	movl	%edx, 16(%esp)	 # ivtmp.151,
	movl	%esi, 12(%esp)	 # ivtmp.150,
	movl	%edi, 8(%esp)	 # ivtmp.148,
	movl	$LC7, 4(%esp)	 #,
	movl	84(%esp), %eax	 # %sfp,
	movl	%eax, (%esp)	 #,
	movl	%edx, 44(%esp)	 #,
	call	_fscanf	 #
	decl	(%edi)	 # MEM[base: D.2731_42, offset: 0B]
	decl	(%esi)	 # MEM[base: D.2730_39, offset: 0B]
	incl	%ebx	 # i
	movl	156(%esp), %eax	 # nz, nz.0
	addl	$4, %edi	 #, ivtmp.148
	addl	$4, %esi	 #, ivtmp.150
	movl	44(%esp), %edx	 #,
	addl	$8, %edx	 #, ivtmp.151
	cmpl	%ebx, %eax	 # i, nz.0
	jg	L21	 #,
L20:
	movl	148(%esp), %edx	 # M, M
	movl	%edx, 120(%esp)	 # M, A.rows
	movl	152(%esp), %edx	 # N,
	movl	%edx, 64(%esp)	 #, %sfp
	movl	%eax, 128(%esp)	 # nz.0, A.nnz
	movl	80(%esp), %eax	 # %sfp,
	movl	%eax, 132(%esp)	 #, A.values
	movl	72(%esp), %eax	 # %sfp,
	movl	%eax, 136(%esp)	 #, A.row_indices
	leal	4(,%edx,4), %eax	 #, tmp251
	movl	%eax, (%esp)	 # tmp251,
	call	_malloc	 #
	movl	%eax, %ebx	 #, D.2742
	movl	$0, (%eax)	 #, MEM[(int *)D.2742_61]
	movl	156(%esp), %esi	 # nz, nz.0
	testl	%esi, %esi	 # nz.0
	jle	L22	 #,
	xorl	%eax, %eax	 # i
	xorl	%ecx, %ecx	 # current_column
	movl	60(%esp), %edi	 # %sfp, J
	.p2align 2,,3
L24:
	movl	(%edi,%eax,4), %edx	 # MEM[base: J_27, index: D.3031_105, step: 4, offset: 0B], current_column
	cmpl	%ecx, %edx	 # current_column, current_column
	je	L23	 #,
	movl	%eax, (%ebx,%edx,4)	 # i, *D.2752_78
	movl	%edx, %ecx	 # current_column, current_column
L23:
	incl	%eax	 # i
	cmpl	%esi, %eax	 # nz.0, i
	jne	L24	 #,
L22:
	movl	152(%esp), %eax	 # N, N.7
	movl	%esi, (%ebx,%eax,4)	 # nz.0, *D.2755_84
	sall	$3, %eax	 #, tmp253
	movl	%eax, (%esp)	 # tmp253,
	call	_malloc	 #
	movl	%eax, 84(%esp)	 #, %sfp
	movl	148(%esp), %eax	 # M, M
	sall	$3, %eax	 #, tmp255
	movl	%eax, (%esp)	 # tmp255,
	call	_malloc	 #
	movl	%eax, %esi	 #, Output_vector
	movl	148(%esp), %eax	 # M, M
	sall	$3, %eax	 #, tmp258
	movl	%eax, (%esp)	 # tmp258,
	call	_malloc	 #
	movl	%eax, 72(%esp)	 #, %sfp
	movl	148(%esp), %eax	 # M, M
	sall	$3, %eax	 #, tmp261
	movl	%eax, (%esp)	 # tmp261,
	call	_malloc	 #
	movl	%eax, 80(%esp)	 #, %sfp
	movl	152(%esp), %edx	 # N, N.4
	testl	%edx, %edx	 # N.4
	jle	L25	 #,
	xorl	%eax, %eax	 # i
	flds	LC8	 #
	movl	84(%esp), %ecx	 # %sfp, Input_vector
	.p2align 2,,3
L26:
	fldl	88(%esp)	 # %sfp
	fstpl	(%ecx,%eax,8)	 # MEM[base: Input_vector_89, index: D.3026_104, step: 8, offset: 0B]
	fld	%st(0)	 #
	faddl	88(%esp)	 # %sfp
	fstpl	88(%esp)	 # %sfp
	incl	%eax	 # i
	cmpl	%edx, %eax	 # N.4, i
	jne	L26	 #,
	fstp	%st(0)	 #
L25:
	movl	148(%esp), %edx	 # M, M.3
	testl	%edx, %edx	 # M.3
	jle	L27	 #,
	sall	$3, %edx	 #, D.3016
	xorl	%eax, %eax	 # tmp269
	movl	%esi, %edi	 # Output_vector, Output_vector
	movl	%edx, %ecx	 # D.3016, D.3016
	rep stosb
	movl	72(%esp), %edi	 # %sfp, Output_vector2
	movl	%edx, %ecx	 # D.3016, D.3016
	rep stosb
	movl	80(%esp), %edi	 # %sfp, Output_vector3
	movl	%edx, %ecx	 # D.3016,
	rep stosb
L27:
/APP
 # 19 "spmv_double.c" 1
	rdtsc
 # 0 "" 2
/NO_APP
	movl	%eax, 88(%esp)	 # lo, %sfp
	movl	%edx, 92(%esp)	 # hi, %sfp
	movl	64(%esp), %eax	 # %sfp,
	movl	%eax, 124(%esp)	 #, A.cols
	movl	%ebx, 140(%esp)	 # D.2742, A.column_ptrs
	movl	%esi, 28(%esp)	 # Output_vector,
	movl	84(%esp), %eax	 # %sfp,
	movl	%eax, 24(%esp)	 #,
	leal	120(%esp), %esi	 #, tmp285
	movl	$6, %ecx	 #, tmp286
	movl	%esp, %edi	 #, tmp284
	rep movsl
	call	_csc_matrix_vector_product	 #
/APP
 # 19 "spmv_double.c" 1
	rdtsc
 # 0 "" 2
/NO_APP
	movl	%edx, 56(%esp)	 #, %sfp
	movl	%eax, 60(%esp)	 #, %sfp
/APP
 # 19 "spmv_double.c" 1
	rdtsc
 # 0 "" 2
/NO_APP
	movl	%eax, 64(%esp)	 # lo, %sfp
	movl	%edx, 68(%esp)	 # hi, %sfp
	movl	72(%esp), %ecx	 # %sfp,
	movl	%ecx, 28(%esp)	 #,
	movl	84(%esp), %eax	 # %sfp,
	movl	%eax, 24(%esp)	 #,
	leal	120(%esp), %esi	 #, tmp295
	movl	$6, %ecx	 #, tmp296
	movl	%esp, %edi	 #, tmp294
	rep movsl
	call	_csc_matrix_vector_product	 #
/APP
 # 19 "spmv_double.c" 1
	rdtsc
 # 0 "" 2
/NO_APP
	movl	%edx, 48(%esp)	 #, %sfp
	movl	%eax, 52(%esp)	 #, %sfp
/APP
 # 19 "spmv_double.c" 1
	rdtsc
 # 0 "" 2
/NO_APP
	movl	%eax, 72(%esp)	 # lo, %sfp
	movl	%edx, 76(%esp)	 # hi, %sfp
	movl	80(%esp), %ecx	 # %sfp,
	movl	%ecx, 28(%esp)	 #,
	movl	84(%esp), %eax	 # %sfp,
	movl	%eax, 24(%esp)	 #,
	leal	120(%esp), %esi	 #, tmp305
	movl	$6, %ecx	 #, tmp306
	movl	%esp, %edi	 #, tmp304
	rep movsl
	call	_csc_matrix_vector_product	 #
/APP
 # 19 "spmv_double.c" 1
	rdtsc
 # 0 "" 2
/NO_APP
	movl	%edx, %ebx	 #, hi
	movl	%eax, %ecx	 #, lo
	movl	60(%esp), %eax	 # %sfp, lo
	movl	56(%esp), %edx	 # %sfp, lo
	subl	88(%esp), %eax	 # %sfp, tmp313
	sbbl	92(%esp), %edx	 # %sfp,
	movl	%eax, 96(%esp)	 # tmp313,
	movl	%edx, 100(%esp)	 #,
	fildq	96(%esp)	 #
	testl	%edx, %edx	 #
	js	L39	 #,
L28:
	fstpl	104(%esp)	 #
	fldl	104(%esp)	 #
	flds	LC0	 #
	fdivrp	%st, %st(1)	 #,
	fstpl	104(%esp)	 #
	fldl	104(%esp)	 #
	movl	52(%esp), %eax	 # %sfp, lo
	movl	48(%esp), %edx	 # %sfp, lo
	subl	64(%esp), %eax	 # %sfp, tmp328
	sbbl	68(%esp), %edx	 # %sfp,
	movl	%eax, 96(%esp)	 # tmp328,
	movl	%edx, 100(%esp)	 #,
	fildq	96(%esp)	 #
	testl	%edx, %edx	 #
	js	L40	 #,
L29:
	fstpl	104(%esp)	 #
	fldl	104(%esp)	 #
	flds	LC0	 #
	fdivrp	%st, %st(1)	 #,
	fstpl	104(%esp)	 #
	fldl	104(%esp)	 #
	faddp	%st, %st(1)	 #,
	movl	%ecx, %eax	 # lo, lo
	movl	%ebx, %edx	 # hi, lo
	subl	72(%esp), %eax	 # %sfp, tmp344
	sbbl	76(%esp), %edx	 # %sfp,
	movl	%eax, 96(%esp)	 # tmp344,
	movl	%edx, 100(%esp)	 #,
	fildq	96(%esp)	 #
	testl	%edx, %edx	 #
	js	L41	 #,
L30:
	fstpl	104(%esp)	 #
	fldl	104(%esp)	 #
	flds	LC0	 #
	fdivrp	%st, %st(1)	 #,
	fstpl	104(%esp)	 #
	fldl	104(%esp)	 #
	faddp	%st, %st(1)	 #,
	fdivs	LC10	 #
	fstpl	4(%esp)	 #
	movl	$LC11, (%esp)	 #,
	call	_printf	 #
	movl	156(%esp), %eax	 # nz, nz
	movl	%eax, 12(%esp)	 # nz,
	movl	152(%esp), %eax	 # N, N
	movl	%eax, 8(%esp)	 # N,
	movl	148(%esp), %eax	 # M, M
	movl	%eax, 4(%esp)	 # M,
	movl	$LC12, (%esp)	 #,
	call	_printf	 #
	xorl	%eax, %eax	 #
	leal	-12(%ebp), %esp	 #,
	popl	%ebx	 #
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi	 #
	.cfi_restore 6
	popl	%edi	 #
	.cfi_restore 7
	popl	%ebp	 #
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
L38:
	.cfi_restore_state
	cmpb	$77, 144(%esp)	 #, matcode
	jne	L18	 #,
	cmpb	$67, 145(%esp)	 #, matcode
	jne	L18	 #,
	movl	$LC5, (%esp)	 #,
	call	_printf	 #
	movl	%ebx, (%esp)	 # tmp235,
	call	_mm_typecode_to_str	 #
	movl	%eax, 4(%esp)	 # D.2719,
	movl	$LC6, (%esp)	 #,
	call	_printf	 #
	movl	$1, (%esp)	 #,
	call	_exit	 #
L41:
	fadds	LC9	 #
	jmp	L30	 #
L40:
	fadds	LC9	 #
	jmp	L29	 #
L39:
	fadds	LC9	 #
	jmp	L28	 #
L36:
	movl	(%ebx), %eax	 # *argv_9(D), *argv_9(D)
	movl	%eax, 8(%esp)	 # *argv_9(D),
	movl	$LC2, 4(%esp)	 #,
	movl	__imp___iob, %eax	 #, tmp232
	addl	$64, %eax	 #, tmp233
	movl	%eax, (%esp)	 # tmp233,
	call	_fprintf	 #
	movl	$1, (%esp)	 #,
	call	_exit	 #
L37:
	movl	$LC4, (%esp)	 #,
	call	_printf	 #
L35:
	movl	$1, (%esp)	 #,
	call	_exit	 #
	.cfi_endproc
LFE19:
	.section .rdata,"dr"
	.align 4
LC0:
	.long	1326386456
	.align 4
LC8:
	.long	1092616192
	.align 4
LC9:
	.long	1602224128
	.align 4
LC10:
	.long	1077936128
	.def	___mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	___mingw_vprintf;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_mm_read_banner;	.scl	2;	.type	32;	.endef
	.def	_mm_read_mtx_crd_size;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_fscanf;	.scl	2;	.type	32;	.endef
	.def	_mm_typecode_to_str;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
