	.file	"spmv-10x-double-PARALLEL-SIMD.c"
	.section	.text.unlikely,"x"
	.def	_fprintf;	.scl	3;	.type	32;	.endef
_fprintf:
LFB0:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	leal	40(%esp), %eax
	movl	%eax, 8(%esp)
	movl	36(%esp), %eax
	movl	%eax, 4(%esp)
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	___mingw_vfprintf
	addl	$28, %esp
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
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	leal	36(%esp), %eax
	movl	%eax, 4(%esp)
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	___mingw_vprintf
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE1:
	.p2align 2,,3
	.globl	_get_cpu_frequency
	.def	_get_cpu_frequency;	.scl	2;	.type	32;	.endef
_get_cpu_frequency:
LFB502:
	.cfi_startproc
	flds	LC0
	ret
	.cfi_endproc
LFE502:
	.p2align 2,,3
	.globl	_rdtsc
	.def	_rdtsc;	.scl	2;	.type	32;	.endef
_rdtsc:
LFB503:
	.cfi_startproc
/APP
 # 17 "spmv-10x-double-PARALLEL-SIMD.c" 1
	rdtsc
 # 0 "" 2
/NO_APP
	ret
	.cfi_endproc
LFE503:
	.p2align 2,,3
	.globl	_csc_matrix_vector_sse
	.def	_csc_matrix_vector_sse;	.scl	2;	.type	32;	.endef
_csc_matrix_vector_sse:
LFB504:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	92(%esp), %ebp
	movl	96(%esp), %ecx
	movl	100(%esp), %ebx
	movl	64(%esp), %eax
	movl	%eax, 4(%esp)
	movl	84(%esp), %edi
	testl	%eax, %eax
	jle	L5
	xorl	%esi, %esi
	.p2align 2,,3
L9:
	movl	(%edi,%esi,4), %eax
	movl	4(%edi,%esi,4), %edx
	xorpd	%xmm1, %xmm1
	cmpl	%edx, %eax
	jge	L7
	.p2align 2,,3
L8:
	movsd	(%ecx,%eax,8), %xmm0
	movsd	(%ebx,%eax,8), %xmm2
	unpcklpd	%xmm0, %xmm0
	unpcklpd	%xmm2, %xmm2
	mulpd	%xmm2, %xmm0
	addpd	%xmm0, %xmm1
	incl	%eax
	cmpl	%edx, %eax
	jne	L8
L7:
	movupd	%xmm1, 16(%esp)
	fldl	24(%esp)
	faddl	16(%esp)
	faddl	0(%ebp,%esi,8)
	fstpl	0(%ebp,%esi,8)
	incl	%esi
	cmpl	4(%esp), %esi
	jne	L9
L5:
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 12
	.cfi_restore 6
	popl	%edi
	.cfi_def_cfa_offset 8
	.cfi_restore 7
	popl	%ebp
	.cfi_def_cfa_offset 4
	.cfi_restore 5
	ret
	.cfi_endproc
LFE504:
	.p2align 2,,3
	.globl	_Value_vector
	.def	_Value_vector;	.scl	2;	.type	32;	.endef
_Value_vector:
LFB505:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	48(%esp), %edi
	movl	52(%esp), %edx
	movl	28(%esp), %ebp
	testl	%ebp, %ebp
	jle	L14
	movl	44(%esp), %esi
	xorl	%eax, %eax
	.p2align 2,,3
L16:
	movl	(%esi,%eax,4), %ecx
	movl	4(%edi,%ecx,8), %ebx
	movl	(%edi,%ecx,8), %ecx
	movl	%ecx, (%edx,%eax,8)
	movl	%ebx, 4(%edx,%eax,8)
	incl	%eax
	cmpl	%ebp, %eax
	jne	L16
L14:
	popl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 12
	.cfi_restore 6
	popl	%edi
	.cfi_def_cfa_offset 8
	.cfi_restore 7
	popl	%ebp
	.cfi_def_cfa_offset 4
	.cfi_restore 5
	ret
	.cfi_endproc
LFE505:
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
LC12:
	.ascii "Time elapsed to form the new vector is : %f seconds\12\0"
	.align 4
LC13:
	.ascii "Time elapsed for multiplying and adding both: %f seconds\12\0"
	.align 4
LC14:
	.ascii "Time elapsed TOTAL: %f seconds\12\0"
	.align 4
LC15:
	.ascii "rows=%d columns= %d non-zero=%d \12\0"
	.section	.text.startup,"x"
	.p2align 2,,3
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB506:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$176, %esp
	movl	12(%ebp), %ebx
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	___main
	cmpl	$1, 8(%ebp)
	jle	L48
	movl	$LC3, 4(%esp)
	movl	4(%ebx), %eax
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, 108(%esp)
	testl	%eax, %eax
	je	L47
	leal	172(%esp), %ebx
	movl	%ebx, 4(%esp)
	movl	108(%esp), %eax
	movl	%eax, (%esp)
	call	_mm_read_banner
	testl	%eax, %eax
	jne	L49
	cmpb	$67, 174(%esp)
	je	L50
L22:
	leal	168(%esp), %eax
	movl	%eax, 12(%esp)
	leal	164(%esp), %eax
	movl	%eax, 8(%esp)
	leal	160(%esp), %eax
	movl	%eax, 4(%esp)
	movl	108(%esp), %eax
	movl	%eax, (%esp)
	call	_mm_read_mtx_crd_size
	testl	%eax, %eax
	jne	L47
	movl	168(%esp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, 80(%esp)
	movl	168(%esp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, 96(%esp)
	movl	168(%esp), %eax
	sall	$3, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, 84(%esp)
	movl	168(%esp), %eax
	sall	$3, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, 100(%esp)
	movl	168(%esp), %edx
	movl	%edx, 104(%esp)
	testl	%edx, %edx
	jle	L24
	movl	80(%esp), %edi
	movl	96(%esp), %esi
	movl	84(%esp), %edx
	xorl	%ebx, %ebx
	.p2align 2,,3
L25:
	movl	%edx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$LC7, 4(%esp)
	movl	108(%esp), %eax
	movl	%eax, (%esp)
	movl	%edx, 52(%esp)
	call	_fscanf
	decl	(%edi)
	decl	(%esi)
	incl	%ebx
	movl	168(%esp), %eax
	addl	$4, %edi
	addl	$4, %esi
	movl	52(%esp), %edx
	addl	$8, %edx
	cmpl	%ebx, %eax
	jg	L25
	movl	%eax, 104(%esp)
L24:
	movl	160(%esp), %edx
	movl	%edx, 56(%esp)
	movl	164(%esp), %eax
	movl	%eax, 60(%esp)
	leal	4(,%eax,4), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, 108(%esp)
	movl	$0, (%eax)
	movl	168(%esp), %ebx
	testl	%ebx, %ebx
	jle	L26
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	96(%esp), %esi
	movl	108(%esp), %edi
	.p2align 2,,3
L28:
	movl	(%esi,%eax,4), %edx
	cmpl	%ecx, %edx
	je	L27
	movl	%eax, (%edi,%edx,4)
	movl	%edx, %ecx
L27:
	incl	%eax
	cmpl	%ebx, %eax
	jne	L28
L26:
	movl	164(%esp), %eax
	movl	108(%esp), %edx
	movl	%ebx, (%edx,%eax,4)
	sall	$3, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, 64(%esp)
	movl	160(%esp), %eax
	sall	$3, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, 68(%esp)
	movl	164(%esp), %ecx
	testl	%ecx, %ecx
	jle	L29
	xorl	%ebx, %ebx
	movl	64(%esp), %esi
	.p2align 2,,3
L30:
	call	_rand
	flds	LC8
	pushl	%eax
	fidivrl	(%esp)
	popl	%edx
	fmuls	LC9
	fstpl	(%esi,%ebx,8)
	incl	%ebx
	cmpl	%ebx, 164(%esp)
	jg	L30
L29:
	movl	168(%esp), %edx
	testl	%edx, %edx
	jle	L31
	xorl	%eax, %eax
	movl	100(%esp), %ecx
	.p2align 2,,3
L32:
	movl	$0, (%ecx,%eax,8)
	movl	$0, 4(%ecx,%eax,8)
	incl	%eax
	cmpl	%edx, %eax
	jne	L32
L31:
	movl	160(%esp), %edx
	testl	%edx, %edx
	jle	L33
	xorl	%eax, %eax
	movl	68(%esp), %ecx
	.p2align 2,,3
L34:
	movl	$0, (%ecx,%eax,8)
	movl	$0, 4(%ecx,%eax,8)
	incl	%eax
	cmpl	%edx, %eax
	jne	L34
L33:
/APP
 # 17 "spmv-10x-double-PARALLEL-SIMD.c" 1
	rdtsc
 # 0 "" 2
/NO_APP
	movl	%eax, 72(%esp)
	movl	%edx, 76(%esp)
/APP
 # 17 "spmv-10x-double-PARALLEL-SIMD.c" 1
	rdtsc
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%edx, %edi
	movl	104(%esp), %eax
	testl	%eax, %eax
	jle	L35
	xorl	%eax, %eax
	movl	96(%esp), %ebx
	movl	64(%esp), %ecx
	movl	%esi, 88(%esp)
	movl	%edx, 92(%esp)
	.p2align 2,,3
L36:
	movl	(%ebx,%eax,4), %edx
	movl	(%ecx,%edx,8), %esi
	movl	4(%ecx,%edx,8), %edi
	movl	100(%esp), %edx
	movl	%esi, (%edx,%eax,8)
	movl	%edi, 4(%edx,%eax,8)
	incl	%eax
	cmpl	104(%esp), %eax
	jne	L36
	movl	88(%esp), %esi
	movl	92(%esp), %edi
L35:
/APP
 # 17 "spmv-10x-double-PARALLEL-SIMD.c" 1
	rdtsc
 # 0 "" 2
/NO_APP
	subl	%esi, %eax
	sbbl	%edi, %edx
	movd	%eax, %xmm0
	movd	%edx, %xmm1
	punpckldq	%xmm1, %xmm0
	movq	%xmm0, 112(%esp)
	fildq	112(%esp)
	testl	%edx, %edx
	js	L51
L37:
	fstpl	120(%esp)
	fldl	120(%esp)
	flds	LC0
	fdivrp	%st, %st(1)
	fstpl	4(%esp)
	movl	$LC12, (%esp)
	call	_printf
/APP
 # 17 "spmv-10x-double-PARALLEL-SIMD.c" 1
	rdtsc
 # 0 "" 2
/NO_APP
	movl	%eax, 88(%esp)
	movl	%edx, 92(%esp)
	movl	56(%esp), %eax
	movl	%eax, 132(%esp)
	movl	60(%esp), %edx
	movl	%edx, 136(%esp)
	movl	104(%esp), %eax
	movl	%eax, 140(%esp)
	movl	84(%esp), %eax
	movl	%eax, 144(%esp)
	movl	80(%esp), %eax
	movl	%eax, 148(%esp)
	movl	108(%esp), %eax
	movl	%eax, 152(%esp)
	movl	96(%esp), %eax
	movl	%eax, 156(%esp)
	movl	84(%esp), %eax
	movl	%eax, 36(%esp)
	movl	100(%esp), %eax
	movl	%eax, 32(%esp)
	movl	68(%esp), %eax
	movl	%eax, 28(%esp)
	leal	132(%esp), %esi
	movl	$7, %ecx
	movl	%esp, %edi
	rep movsl
	call	_csc_matrix_vector_sse
/APP
 # 17 "spmv-10x-double-PARALLEL-SIMD.c" 1
	rdtsc
 # 0 "" 2
/NO_APP
	subl	88(%esp), %eax
	sbbl	92(%esp), %edx
	movd	%eax, %xmm0
	movd	%edx, %xmm1
	punpckldq	%xmm1, %xmm0
	movq	%xmm0, 112(%esp)
	fildq	112(%esp)
	testl	%edx, %edx
	js	L52
L38:
	fstpl	120(%esp)
	fldl	120(%esp)
	flds	LC0
	fdivrp	%st, %st(1)
	fstpl	4(%esp)
	movl	$LC13, (%esp)
	call	_printf
/APP
 # 17 "spmv-10x-double-PARALLEL-SIMD.c" 1
	rdtsc
 # 0 "" 2
/NO_APP
	subl	72(%esp), %eax
	sbbl	76(%esp), %edx
	movd	%eax, %xmm0
	movd	%edx, %xmm1
	punpckldq	%xmm1, %xmm0
	movq	%xmm0, 112(%esp)
	fildq	112(%esp)
	testl	%edx, %edx
	js	L53
L39:
	fstpl	120(%esp)
	fldl	120(%esp)
	flds	LC0
	fdivrp	%st, %st(1)
	fstpl	4(%esp)
	movl	$LC14, (%esp)
	call	_printf
	movl	168(%esp), %eax
	movl	%eax, 12(%esp)
	movl	164(%esp), %eax
	movl	%eax, 8(%esp)
	movl	160(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC15, (%esp)
	call	_printf
	movl	80(%esp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	96(%esp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	84(%esp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	100(%esp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	68(%esp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	64(%esp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	108(%esp), %eax
	movl	%eax, (%esp)
	call	_free
	xorl	%eax, %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
L50:
	.cfi_restore_state
	cmpb	$77, 172(%esp)
	jne	L22
	cmpb	$67, 173(%esp)
	jne	L22
	movl	$LC5, (%esp)
	call	_printf
	movl	%ebx, (%esp)
	call	_mm_typecode_to_str
	movl	%eax, 4(%esp)
	movl	$LC6, (%esp)
	call	_printf
	movl	$1, (%esp)
	call	_exit
L53:
	fadds	LC11
	jmp	L39
L52:
	fadds	LC11
	jmp	L38
L51:
	fadds	LC11
	jmp	L37
L48:
	movl	(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	$1, (%esp)
	call	_exit
L49:
	movl	$LC4, (%esp)
	call	_printf
L47:
	movl	$1, (%esp)
	call	_exit
	.cfi_endproc
LFE506:
	.section .rdata,"dr"
	.align 4
LC0:
	.long	1326386456
	.align 4
LC8:
	.long	1191181824
	.align 4
LC9:
	.long	1092616192
	.align 4
LC11:
	.long	1602224128
	.def	___mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	___mingw_vprintf;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_mm_read_banner;	.scl	2;	.type	32;	.endef
	.def	_mm_read_mtx_crd_size;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_fscanf;	.scl	2;	.type	32;	.endef
	.def	_rand;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_mm_typecode_to_str;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
