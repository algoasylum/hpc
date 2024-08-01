	.file	"spmv.c"
 # GNU C (GCC) version 4.6.2 (mingw32)
 #	compiled by GNU C version 4.6.2, GMP version 5.0.1, MPFR version 2.4.1, MPC version 0.8.1
 # warning: GMP header version 5.0.1 differs from library version 6.1.2.
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -iprefix c:\mingw\bin\../lib/gcc/mingw32/4.6.2/ spmv.c
 # -mtune=i386 -march=i386 -O3 -std=c99 -fverbose-asm
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
 # 19 "spmv.c" 1
	rdtsc
 # 0 "" 2
/NO_APP
	ret
	.cfi_endproc
LFE17:
	.p2align 2,,3
	.globl	_converDoubleToFloat
	.def	_converDoubleToFloat;	.scl	2;	.type	32;	.endef
_converDoubleToFloat:
LFB18:
	.cfi_startproc
	pushl	%ebx	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp	 #,
	.cfi_def_cfa_offset 16
	movl	16(%esp), %ecx	 # val, val
	movl	20(%esp), %ebx	 # val_float, val_float
	movl	24(%esp), %edx	 # nz, nz
	testl	%edx, %edx	 # nz
	jle	L5	 #,
	xorl	%eax, %eax	 # i
	.p2align 2,,3
L7:
	fldl	(%ecx,%eax,8)	 # MEM[base: val_10(D), index: D.2929_27, step: 8, offset: 0B]
	fstps	(%ebx,%eax,4)	 # MEM[base: val_float_6(D), index: D.2929_27, step: 4, offset: 0B]
	incl	%eax	 # i
	cmpl	%edx, %eax	 # nz, i
	jne	L7	 #,
L5:
	addl	$8, %esp	 #,
	.cfi_def_cfa_offset 8
	popl	%ebx	 #
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	ret
	.cfi_endproc
LFE18:
	.p2align 2,,3
	.globl	_csc_matrix_vector_product
	.def	_csc_matrix_vector_product;	.scl	2;	.type	32;	.endef
_csc_matrix_vector_product:
LFB19:
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
	subl	$16, %esp	 #,
	.cfi_def_cfa_offset 36
	movl	60(%esp), %edi	 # x, x
	movl	64(%esp), %ebp	 # y, y
	movl	40(%esp), %eax	 # MEM[(struct  *)&A].cols,
	movl	%eax, 8(%esp)	 #, %sfp
	movl	56(%esp), %edx	 # MEM[(struct  *)&A].column_ptrs,
	movl	%edx, 4(%esp)	 #, %sfp
	testl	%eax, %eax	 #
	jle	L10	 #,
	movl	52(%esp), %esi	 # A.row_indices, pretmp.99
	movl	48(%esp), %ebx	 # A.values, pretmp.101
	xorl	%ecx, %ecx	 # j
	.p2align 2,,3
L14:
	movl	4(%esp), %edx	 # %sfp,
	movl	(%edx,%ecx,4), %eax	 # MEM[base: A$column_ptrs_16, index: D.2995_26, step: 4, offset: 0B], i
	movl	4(%edx,%ecx,4), %edx	 # MEM[base: A$column_ptrs_16, index: D.2995_26, step: 4, offset: 4B],
	movl	%edx, (%esp)	 #, %sfp
	cmpl	%edx, %eax	 #, i
	jge	L12	 #,
	.p2align 2,,3
L15:
	movl	(%esi,%eax,4), %edx	 # MEM[base: pretmp.99_116, index: D.2987_25, step: 4, offset: 0B], MEM[base: pretmp.99_116, index: D.2987_25, step: 4, offset: 0B]
	leal	0(%ebp,%edx,4), %edx	 #, D.2806
	flds	(%edi,%ecx,4)	 # MEM[base: x_43(D), index: D.2995_26, step: 4, offset: 0B]
	fmuls	(%ebx,%eax,4)	 # MEM[base: pretmp.101_118, index: D.2987_25, step: 4, offset: 0B]
	fadds	(%edx)	 # *D.2806_32
	fstps	(%edx)	 # *D.2806_32
	incl	%eax	 # i
	cmpl	(%esp), %eax	 # %sfp, i
	jne	L15	 #,
L12:
	incl	%ecx	 # j
	cmpl	8(%esp), %ecx	 # %sfp, j
	jne	L14	 #,
L10:
	addl	$16, %esp	 #,
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
LFE19:
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
LC9:
	.ascii "Time elapsed to convert double to float: %f seconds\12\0"
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
LFB20:
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
	addl	$-128, %esp	 #,
	movl	12(%ebp), %ebx	 # argv, argv
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	___main	 #
	cmpl	$1, 8(%ebp)	 #, argc
	jle	L42	 #,
	movl	$LC3, 4(%esp)	 #,
	movl	4(%ebx), %eax	 # MEM[(char * *)argv_9(D) + 4B], MEM[(char * *)argv_9(D) + 4B]
	movl	%eax, (%esp)	 # MEM[(char * *)argv_9(D) + 4B],
	call	_fopen	 #
	movl	%eax, 72(%esp)	 #, %sfp
	testl	%eax, %eax	 #
	je	L41	 #,
	leal	112(%esp), %ebx	 #, tmp229
	movl	%ebx, 4(%esp)	 # tmp229,
	movl	%eax, (%esp)	 #,
	call	_mm_read_banner	 #
	testl	%eax, %eax	 # D.2715
	jne	L43	 #,
	cmpb	$67, 114(%esp)	 #, matcode
	je	L44	 #,
L22:
	leal	124(%esp), %eax	 #, tmp231
	movl	%eax, 12(%esp)	 # tmp231,
	leal	120(%esp), %eax	 #, tmp232
	movl	%eax, 8(%esp)	 # tmp232,
	leal	116(%esp), %eax	 #, tmp233
	movl	%eax, 4(%esp)	 # tmp233,
	movl	72(%esp), %eax	 # %sfp,
	movl	%eax, (%esp)	 #,
	call	_mm_read_mtx_crd_size	 #
	testl	%eax, %eax	 # ret_code
	jne	L41	 #,
	movl	124(%esp), %eax	 # nz, nz
	sall	$2, %eax	 #, tmp234
	movl	%eax, (%esp)	 # tmp234,
	call	_malloc	 #
	movl	%eax, 48(%esp)	 #, %sfp
	movl	124(%esp), %eax	 # nz, nz
	sall	$2, %eax	 #, tmp237
	movl	%eax, (%esp)	 # tmp237,
	call	_malloc	 #
	movl	%eax, 40(%esp)	 #, %sfp
	movl	124(%esp), %eax	 # nz, nz
	sall	$3, %eax	 #, tmp240
	movl	%eax, (%esp)	 # tmp240,
	call	_malloc	 #
	movl	%eax, 52(%esp)	 #, %sfp
	movl	124(%esp), %eax	 # nz, nz
	sall	$2, %eax	 #, tmp243
	movl	%eax, (%esp)	 # tmp243,
	call	_malloc	 #
	movl	%eax, 44(%esp)	 #, %sfp
	movl	124(%esp), %ecx	 # nz, nz.0
	testl	%ecx, %ecx	 # nz.0
	jle	L24	 #,
	movl	48(%esp), %edi	 # %sfp, ivtmp.176
	movl	40(%esp), %esi	 # %sfp, ivtmp.178
	movl	52(%esp), %edx	 # %sfp, ivtmp.179
	xorl	%ebx, %ebx	 # i
	.p2align 2,,3
L25:
	movl	%edx, 16(%esp)	 # ivtmp.179,
	movl	%esi, 12(%esp)	 # ivtmp.178,
	movl	%edi, 8(%esp)	 # ivtmp.176,
	movl	$LC7, 4(%esp)	 #,
	movl	72(%esp), %eax	 # %sfp,
	movl	%eax, (%esp)	 #,
	movl	%edx, 36(%esp)	 #,
	call	_fscanf	 #
	decl	(%edi)	 # MEM[base: D.2739_46, offset: 0B]
	decl	(%esi)	 # MEM[base: D.2738_43, offset: 0B]
	incl	%ebx	 # i
	movl	124(%esp), %ecx	 # nz, nz.0
	addl	$4, %edi	 #, ivtmp.176
	addl	$4, %esi	 #, ivtmp.178
	movl	36(%esp), %edx	 #,
	addl	$8, %edx	 #, ivtmp.179
	cmpl	%ebx, %ecx	 # i, nz.0
	jg	L25	 #,
L24:
/APP
 # 19 "spmv.c" 1
	rdtsc
 # 0 "" 2
/NO_APP
	movl	%eax, %esi	 # lo, start_time5
	movl	%edx, %edi	 # hi, start_time5
	testl	%ecx, %ecx	 # nz.0
	jle	L26	 #,
	xorl	%eax, %eax	 # i
	movl	52(%esp), %edx	 # %sfp, val
	movl	44(%esp), %ebx	 # %sfp, val_float
	.p2align 2,,3
L27:
	fldl	(%edx,%eax,8)	 # MEM[base: val_31, index: D.3062_82, step: 8, offset: 0B]
	fstps	(%ebx,%eax,4)	 # MEM[base: val_float_35, index: D.3062_82, step: 4, offset: 0B]
	incl	%eax	 # i
	cmpl	%ecx, %eax	 # nz.0, i
	jne	L27	 #,
L26:
/APP
 # 19 "spmv.c" 1
	rdtsc
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx	 # lo, lo
	movl	%edx, %ebx	 # hi, lo
	subl	%esi, %ecx	 # start_time5, tmp257
	sbbl	%edi, %ebx	 # start_time5,
	movl	%ecx, 64(%esp)	 # tmp257,
	movl	%ebx, 68(%esp)	 #,
	fildq	64(%esp)	 #
	testl	%ebx, %ebx	 #
	js	L45	 #,
L28:
	fstps	76(%esp)	 #
	flds	76(%esp)	 #
	fdivs	LC0	 #
	fstps	76(%esp)	 #
	flds	76(%esp)	 #
	fstpl	4(%esp)	 #
	movl	$LC9, (%esp)	 #,
	call	_printf	 #
	movl	116(%esp), %eax	 # M, M
	movl	%eax, 88(%esp)	 # M, A.rows
	movl	120(%esp), %eax	 # N,
	movl	%eax, 52(%esp)	 #, %sfp
	movl	124(%esp), %eax	 # nz, nz
	movl	%eax, 96(%esp)	 # nz, A.nnz
	movl	44(%esp), %eax	 # %sfp,
	movl	%eax, 100(%esp)	 #, A.values
	movl	48(%esp), %eax	 # %sfp,
	movl	%eax, 104(%esp)	 #, A.row_indices
	movl	52(%esp), %edx	 # %sfp,
	leal	4(,%edx,4), %eax	 #, tmp270
	movl	%eax, (%esp)	 # tmp270,
	call	_malloc	 #
	movl	%eax, %esi	 #, D.2756
	movl	$0, (%eax)	 #, MEM[(int *)D.2756_76]
	movl	124(%esp), %ebx	 # nz, nz.0
	testl	%ebx, %ebx	 # nz.0
	jle	L29	 #,
	xorl	%eax, %eax	 # i
	xorl	%ecx, %ecx	 # current_column
	movl	40(%esp), %edi	 # %sfp, J
	.p2align 2,,3
L31:
	movl	(%edi,%eax,4), %edx	 # MEM[base: J_27, index: D.3055_120, step: 4, offset: 0B], current_column
	cmpl	%ecx, %edx	 # current_column, current_column
	je	L30	 #,
	movl	%eax, (%esi,%edx,4)	 # i, *D.2766_93
	movl	%edx, %ecx	 # current_column, current_column
L30:
	incl	%eax	 # i
	cmpl	%ebx, %eax	 # nz.0, i
	jne	L31	 #,
L29:
	movl	120(%esp), %eax	 # N, N
	sall	$2, %eax	 #, D.2768
	movl	%ebx, (%esi,%eax)	 # nz.0, *D.2769_99
	movl	%eax, (%esp)	 # D.2768,
	call	_malloc	 #
	movl	%eax, %ebx	 #, Input_vector
	movl	116(%esp), %eax	 # M, M
	sall	$2, %eax	 #, tmp274
	movl	%eax, (%esp)	 # tmp274,
	call	_malloc	 #
	movl	%eax, 72(%esp)	 #, %sfp
	movl	116(%esp), %eax	 # M, M
	sall	$2, %eax	 #, tmp277
	movl	%eax, (%esp)	 # tmp277,
	call	_malloc	 #
	movl	%eax, 48(%esp)	 #, %sfp
	movl	116(%esp), %eax	 # M, M
	sall	$2, %eax	 #, tmp280
	movl	%eax, (%esp)	 # tmp280,
	call	_malloc	 #
	movl	%eax, 44(%esp)	 #, %sfp
	movl	120(%esp), %edx	 # N, N.4
	testl	%edx, %edx	 # N.4
	jle	L32	 #,
	xorl	%eax, %eax	 # i
	flds	LC10	 #
	.p2align 2,,3
L33:
	flds	56(%esp)	 # %sfp
	fstps	(%ebx,%eax,4)	 # MEM[base: Input_vector_104, index: D.3050_119, step: 4, offset: 0B]
	fld	%st(0)	 #
	fadds	56(%esp)	 # %sfp
	fstps	56(%esp)	 # %sfp
	incl	%eax	 # i
	cmpl	%edx, %eax	 # N.4, i
	jne	L33	 #,
	fstp	%st(0)	 #
L32:
	movl	116(%esp), %edx	 # M, M.3
	testl	%edx, %edx	 # M.3
	jle	L34	 #,
	sall	$2, %edx	 #, D.3040
	xorl	%eax, %eax	 # tmp288
	movl	72(%esp), %edi	 # %sfp, Output_vector
	movl	%edx, %ecx	 # D.3040, D.3040
	rep stosb
	movl	48(%esp), %edi	 # %sfp, Output_vector2
	movl	%edx, %ecx	 # D.3040, D.3040
	rep stosb
	movl	44(%esp), %edi	 # %sfp, Output_vector3
	movl	%edx, %ecx	 # D.3040,
	rep stosb
L34:
/APP
 # 19 "spmv.c" 1
	rdtsc
 # 0 "" 2
/NO_APP
	movl	%eax, 56(%esp)	 # lo, %sfp
	movl	%edx, 60(%esp)	 # hi, %sfp
	movl	52(%esp), %eax	 # %sfp,
	movl	%eax, 92(%esp)	 #, A.cols
	movl	%esi, 108(%esp)	 # D.2756, A.column_ptrs
	movl	72(%esp), %edx	 # %sfp,
	movl	%edx, 28(%esp)	 #,
	movl	%ebx, 24(%esp)	 # Input_vector,
	leal	88(%esp), %esi	 #, tmp304
	movl	$6, %ecx	 #, tmp305
	movl	%esp, %edi	 #, tmp303
	rep movsl
	call	_csc_matrix_vector_product	 #
/APP
 # 19 "spmv.c" 1
	rdtsc
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx	 # lo, lo
	movl	%edx, %ebx	 # hi, lo
	subl	56(%esp), %ecx	 # %sfp, tmp312
	sbbl	60(%esp), %ebx	 # %sfp,
	movl	%ecx, 64(%esp)	 # tmp312,
	movl	%ebx, 68(%esp)	 #,
	fildq	64(%esp)	 #
	testl	%ebx, %ebx	 #
	js	L46	 #,
L35:
	fstps	76(%esp)	 #
	flds	76(%esp)	 #
	fdivs	LC0	 #
	fstps	76(%esp)	 #
	flds	76(%esp)	 #
	fstpl	4(%esp)	 #
	movl	$LC11, (%esp)	 #,
	call	_printf	 #
	movl	124(%esp), %eax	 # nz, nz
	movl	%eax, 12(%esp)	 # nz,
	movl	120(%esp), %eax	 # N, N
	movl	%eax, 8(%esp)	 # N,
	movl	116(%esp), %eax	 # M, M
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
L44:
	.cfi_restore_state
	cmpb	$77, 112(%esp)	 #, matcode
	jne	L22	 #,
	cmpb	$67, 113(%esp)	 #, matcode
	jne	L22	 #,
	movl	$LC5, (%esp)	 #,
	call	_printf	 #
	movl	%ebx, (%esp)	 # tmp229,
	call	_mm_typecode_to_str	 #
	movl	%eax, 4(%esp)	 # D.2727,
	movl	$LC6, (%esp)	 #,
	call	_printf	 #
	movl	$1, (%esp)	 #,
	call	_exit	 #
L46:
	fadds	LC8	 #
	jmp	L35	 #
L45:
	fadds	LC8	 #
	jmp	L28	 #
L43:
	movl	$LC4, (%esp)	 #,
	call	_printf	 #
L41:
	movl	$1, (%esp)	 #,
	call	_exit	 #
L42:
	movl	(%ebx), %eax	 # *argv_9(D), *argv_9(D)
	movl	%eax, 8(%esp)	 # *argv_9(D),
	movl	$LC2, 4(%esp)	 #,
	movl	__imp___iob, %eax	 #, tmp226
	addl	$64, %eax	 #, tmp227
	movl	%eax, (%esp)	 # tmp227,
	call	_fprintf	 #
	movl	$1, (%esp)	 #,
	call	_exit	 #
	.cfi_endproc
LFE20:
	.section .rdata,"dr"
	.align 4
LC0:
	.long	1326386456
	.align 4
LC8:
	.long	1602224128
	.align 4
LC10:
	.long	1092616192
	.def	___mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	___mingw_vprintf;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_mm_read_banner;	.scl	2;	.type	32;	.endef
	.def	_mm_read_mtx_crd_size;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_fscanf;	.scl	2;	.type	32;	.endef
	.def	_mm_typecode_to_str;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
