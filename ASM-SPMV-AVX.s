	.file	"spmv.c"
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
LFB16:
	.cfi_startproc
	flds	LC0
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
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %ecx
	movl	20(%esp), %ebx
	movl	24(%esp), %edx
	testl	%edx, %edx
	jle	L5
	xorl	%eax, %eax
	.p2align 2,,3
L7:
	fldl	(%ecx,%eax,8)
	fstps	(%ebx,%eax,4)
	incl	%eax
	cmpl	%edx, %eax
	jne	L7
L5:
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
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
	subl	$16, %esp
	.cfi_def_cfa_offset 36
	movl	60(%esp), %edi
	movl	64(%esp), %ebp
	movl	40(%esp), %eax
	movl	%eax, 8(%esp)
	movl	56(%esp), %edx
	movl	%edx, 4(%esp)
	testl	%eax, %eax
	jle	L10
	movl	52(%esp), %esi
	movl	48(%esp), %ebx
	xorl	%ecx, %ecx
	.p2align 2,,3
L14:
	movl	4(%esp), %edx
	movl	(%edx,%ecx,4), %eax
	movl	4(%edx,%ecx,4), %edx
	movl	%edx, (%esp)
	cmpl	%edx, %eax
	jge	L12
	.p2align 2,,3
L15:
	movl	(%esi,%eax,4), %edx
	leal	0(%ebp,%edx,4), %edx
	flds	(%edi,%ecx,4)
	fmuls	(%ebx,%eax,4)
	fadds	(%edx)
	fstps	(%edx)
	incl	%eax
	cmpl	(%esp), %eax
	jne	L15
L12:
	incl	%ecx
	cmpl	8(%esp), %ecx
	jne	L14
L10:
	addl	$16, %esp
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
LC12:
	.ascii "avg time required to perform normal spmv with same input vector is %f seconds\12\0"
	.align 4
LC13:
	.ascii "rows=%d columns= %d non-zero=%d \12\0"
	.section	.text.startup,"x"
	.p2align 2,,3
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB20:
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
	addl	$-128, %esp
	movl	12(%ebp), %ebx
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	___main
	cmpl	$1, 8(%ebp)
	jle	L44
	movl	$LC3, 4(%esp)
	movl	4(%ebx), %eax
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, 72(%esp)
	testl	%eax, %eax
	je	L43
	leal	124(%esp), %ebx
	movl	%ebx, 4(%esp)
	movl	72(%esp), %eax
	movl	%eax, (%esp)
	call	_mm_read_banner
	testl	%eax, %eax
	jne	L45
	cmpb	$67, 126(%esp)
	je	L46
L22:
	leal	120(%esp), %eax
	movl	%eax, 12(%esp)
	leal	116(%esp), %eax
	movl	%eax, 8(%esp)
	leal	112(%esp), %eax
	movl	%eax, 4(%esp)
	movl	72(%esp), %eax
	movl	%eax, (%esp)
	call	_mm_read_mtx_crd_size
	testl	%eax, %eax
	jne	L43
	movl	120(%esp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, 48(%esp)
	movl	120(%esp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, 40(%esp)
	movl	120(%esp), %eax
	sall	$3, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, 52(%esp)
	movl	120(%esp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, 44(%esp)
	movl	120(%esp), %ecx
	testl	%ecx, %ecx
	jle	L24
	movl	48(%esp), %edi
	movl	40(%esp), %esi
	movl	52(%esp), %edx
	xorl	%ebx, %ebx
	.p2align 2,,3
L25:
	movl	%edx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$LC7, 4(%esp)
	movl	72(%esp), %eax
	movl	%eax, (%esp)
	movl	%edx, 36(%esp)
	call	_fscanf
	decl	(%edi)
	decl	(%esi)
	incl	%ebx
	movl	120(%esp), %ecx
	addl	$4, %edi
	addl	$4, %esi
	movl	36(%esp), %edx
	addl	$8, %edx
	cmpl	%ebx, %ecx
	jg	L25
L24:
/APP
 # 19 "spmv.c" 1
	rdtsc
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%edx, %edi
	testl	%ecx, %ecx
	jle	L26
	xorl	%eax, %eax
	movl	52(%esp), %edx
	movl	44(%esp), %ebx
	.p2align 2,,3
L27:
	fldl	(%edx,%eax,8)
	fstps	(%ebx,%eax,4)
	incl	%eax
	cmpl	%ecx, %eax
	jne	L27
L26:
/APP
 # 19 "spmv.c" 1
	rdtsc
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%edx, %ebx
	subl	%esi, %ecx
	sbbl	%edi, %ebx
	vmovd	%ecx, %xmm0
	vmovd	%ebx, %xmm1
	vpunpckldq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, 64(%esp)
	fildq	64(%esp)
	testl	%ebx, %ebx
	js	L47
L28:
	fstps	76(%esp)
	flds	76(%esp)
	fdivs	LC0
	fstps	76(%esp)
	flds	76(%esp)
	fstpl	4(%esp)
	movl	$LC9, (%esp)
	call	_printf
	movl	112(%esp), %eax
	movl	%eax, 88(%esp)
	movl	116(%esp), %eax
	movl	%eax, 52(%esp)
	movl	120(%esp), %eax
	movl	%eax, 96(%esp)
	movl	44(%esp), %eax
	movl	%eax, 100(%esp)
	movl	48(%esp), %eax
	movl	%eax, 104(%esp)
	movl	52(%esp), %edx
	leal	4(,%edx,4), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, 72(%esp)
	movl	$0, (%eax)
	movl	120(%esp), %ebx
	testl	%ebx, %ebx
	jle	L29
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	40(%esp), %esi
	movl	72(%esp), %edi
	.p2align 2,,3
L31:
	movl	(%esi,%eax,4), %edx
	cmpl	%ecx, %edx
	je	L30
	movl	%eax, (%edi,%edx,4)
	movl	%edx, %ecx
L30:
	incl	%eax
	cmpl	%ebx, %eax
	jne	L31
L29:
	movl	116(%esp), %eax
	sall	$2, %eax
	movl	72(%esp), %edx
	movl	%ebx, (%edx,%eax)
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, %esi
	movl	112(%esp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, %ebx
	movl	112(%esp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, %edi
	movl	112(%esp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	116(%esp), %ecx
	testl	%ecx, %ecx
	jle	L32
	xorl	%edx, %edx
	flds	LC10
	.p2align 2,,3
L33:
	flds	56(%esp)
	fstps	(%esi,%edx,4)
	fld	%st(0)
	fadds	56(%esp)
	fstps	56(%esp)
	incl	%edx
	cmpl	%ecx, %edx
	jne	L33
	fstp	%st(0)
L32:
	movl	112(%esp), %ecx
	testl	%ecx, %ecx
	jle	L34
	xorl	%edx, %edx
	.p2align 2,,3
L35:
	movl	$0x00000000, (%ebx,%edx,4)
	movl	$0x00000000, (%edi,%edx,4)
	movl	$0x00000000, (%eax,%edx,4)
	incl	%edx
	cmpl	%ecx, %edx
	jne	L35
L34:
/APP
 # 19 "spmv.c" 1
	rdtsc
 # 0 "" 2
/NO_APP
	movl	%eax, 56(%esp)
	movl	%edx, 60(%esp)
	movl	52(%esp), %eax
	movl	%eax, 92(%esp)
	movl	72(%esp), %eax
	movl	%eax, 108(%esp)
	movl	%ebx, 28(%esp)
	movl	%esi, 24(%esp)
	leal	88(%esp), %esi
	movl	$6, %ecx
	movl	%esp, %edi
	rep movsl
	call	_csc_matrix_vector_product
/APP
 # 19 "spmv.c" 1
	rdtsc
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%edx, %ebx
	subl	56(%esp), %ecx
	sbbl	60(%esp), %ebx
	vmovd	%ecx, %xmm0
	vmovd	%ebx, %xmm1
	vpunpckldq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, 64(%esp)
	fildq	64(%esp)
	testl	%ebx, %ebx
	js	L48
L36:
	fstps	76(%esp)
	flds	76(%esp)
	fdivs	LC0
	fstps	76(%esp)
	flds	76(%esp)
	fstpl	4(%esp)
	movl	$LC12, (%esp)
	call	_printf
	movl	120(%esp), %eax
	movl	%eax, 12(%esp)
	movl	116(%esp), %eax
	movl	%eax, 8(%esp)
	movl	112(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC13, (%esp)
	call	_printf
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
L46:
	.cfi_restore_state
	cmpb	$77, 124(%esp)
	jne	L22
	cmpb	$67, 125(%esp)
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
L48:
	fadds	LC8
	jmp	L36
L47:
	fadds	LC8
	jmp	L28
L45:
	movl	$LC4, (%esp)
	call	_printf
L43:
	movl	$1, (%esp)
	call	_exit
L44:
	movl	(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	$1, (%esp)
	call	_exit
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
