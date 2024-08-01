	.file	"spmv-float-10-openmp-another.c"
	.text
	.def	_fprintf;	.scl	3;	.type	32;	.endef
_fprintf:
LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	leal	16(%ebp), %edx
	leal	-12(%ebp), %eax
	movl	%edx, (%eax)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	.cfi_offset 3, -12
	call	___mingw_vfprintf
	movl	%eax, %ebx
	movl	%ebx, %eax
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
LFE0:
	.def	_printf;	.scl	3;	.type	32;	.endef
_printf:
LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	leal	12(%ebp), %edx
	leal	-12(%ebp), %eax
	movl	%edx, (%eax)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	.cfi_offset 3, -12
	call	___mingw_vprintf
	movl	%eax, %ebx
	movl	%ebx, %eax
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
LFE1:
	.globl	_converfloatToFloat
	.def	_converfloatToFloat;	.scl	2;	.type	32;	.endef
_converfloatToFloat:
LFB8:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	$0, 8(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$_converfloatToFloat._omp_fn.4, (%esp)
	call	_GOMP_parallel_start
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_converfloatToFloat._omp_fn.4
	call	_GOMP_parallel_end
	movl	-20(%ebp), %eax
	movl	%eax, 8(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, 12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 16(%ebp)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
	.globl	_csc_matrix_vector
	.def	_csc_matrix_vector;	.scl	2;	.type	32;	.endef
_csc_matrix_vector:
LFB9:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	leal	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	44(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	$0, 8(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$_csc_matrix_vector._omp_fn.3, (%esp)
	call	_GOMP_parallel_start
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_csc_matrix_vector._omp_fn.3
	call	_GOMP_parallel_end
	movl	-28(%ebp), %eax
	movl	%eax, 36(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, 40(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, 44(%ebp)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE9:
	.globl	_Value_vector
	.def	_Value_vector;	.scl	2;	.type	32;	.endef
_Value_vector:
LFB10:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	leal	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	$0, 8(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$_Value_vector._omp_fn.2, (%esp)
	call	_GOMP_parallel_start
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_Value_vector._omp_fn.2
	call	_GOMP_parallel_end
	movl	-16(%ebp), %eax
	movl	%eax, 36(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 40(%ebp)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "Usage: %s [matrix-market-filename]\12\0"
LC1:
	.ascii "r\0"
	.align 4
LC2:
	.ascii "Could not process Matrix Market banner.\12\0"
	.align 4
LC3:
	.ascii "Sorry, this application does not support \0"
LC4:
	.ascii "Market Market type: [%s]\12\0"
	.align 4
LC5:
	.ascii "ASSIGNING THE ROW VALUES DONE\12\0"
	.align 4
LC6:
	.ascii "Time elapsed to form the new vector is : %f seconds\12\0"
	.align 4
LC7:
	.ascii "Time elapsed for multiplying and adding both: %f seconds\12\0"
	.align 4
LC8:
	.ascii "Time elapsed TOTAL: %f seconds\12\0"
	.align 4
LC9:
	.ascii "rows=%d columns=%d non-zero=%d\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB11:
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
	subl	$272, %esp
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	___main
	cmpl	$1, 8(%ebp)
	jg	L7
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	$1, (%esp)
	call	_exit
L7:
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	$LC1, 4(%esp)
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, 252(%esp)
	cmpl	$0, 252(%esp)
	jne	L8
	movl	$1, (%esp)
	call	_exit
L8:
	leal	112(%esp), %eax
	movl	%eax, 4(%esp)
	movl	252(%esp), %eax
	movl	%eax, (%esp)
	call	_mm_read_banner
	testl	%eax, %eax
	je	L9
	movl	$LC2, (%esp)
	call	_printf
	movl	$1, (%esp)
	call	_exit
L9:
	movb	114(%esp), %al
	cmpb	$67, %al
	jne	L10
	movb	112(%esp), %al
	cmpb	$77, %al
	jne	L10
	movb	113(%esp), %al
	cmpb	$67, %al
	jne	L10
	movl	$LC3, (%esp)
	call	_printf
	leal	112(%esp), %eax
	movl	%eax, (%esp)
	call	_mm_typecode_to_str
	movl	%eax, 4(%esp)
	movl	$LC4, (%esp)
	call	_printf
	movl	$1, (%esp)
	call	_exit
L10:
	leal	100(%esp), %eax
	movl	%eax, 12(%esp)
	leal	104(%esp), %eax
	movl	%eax, 8(%esp)
	leal	108(%esp), %eax
	movl	%eax, 4(%esp)
	movl	252(%esp), %eax
	movl	%eax, (%esp)
	call	_mm_read_mtx_crd_size
	movl	%eax, 248(%esp)
	cmpl	$0, 248(%esp)
	je	L11
	movl	$1, (%esp)
	call	_exit
L11:
	movl	100(%esp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, 244(%esp)
	movl	100(%esp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, 240(%esp)
	movl	100(%esp), %eax
	sall	$3, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, 236(%esp)
	movl	100(%esp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, 232(%esp)
	movl	100(%esp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, 228(%esp)
	movl	252(%esp), %eax
	movl	%eax, 116(%esp)
	leal	100(%esp), %eax
	movl	%eax, 120(%esp)
	movl	244(%esp), %eax
	movl	%eax, 124(%esp)
	movl	240(%esp), %eax
	movl	%eax, 128(%esp)
	movl	236(%esp), %eax
	movl	%eax, 132(%esp)
	movl	$0, 8(%esp)
	leal	116(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$_main._omp_fn.0, (%esp)
	call	_GOMP_parallel_start
	leal	116(%esp), %eax
	movl	%eax, (%esp)
	call	_main._omp_fn.0
	call	_GOMP_parallel_end
	movl	116(%esp), %eax
	movl	%eax, 252(%esp)
	movl	124(%esp), %eax
	movl	%eax, 244(%esp)
	movl	128(%esp), %eax
	movl	%eax, 240(%esp)
	movl	132(%esp), %eax
	movl	%eax, 236(%esp)
	movl	100(%esp), %eax
	movl	%eax, 8(%esp)
	movl	228(%esp), %eax
	movl	%eax, 4(%esp)
	movl	236(%esp), %eax
	movl	%eax, (%esp)
	call	_converfloatToFloat
	movl	108(%esp), %eax
	movl	%eax, 72(%esp)
	movl	104(%esp), %eax
	movl	%eax, 76(%esp)
	movl	100(%esp), %eax
	movl	%eax, 80(%esp)
	movl	228(%esp), %eax
	movl	%eax, 84(%esp)
	movl	244(%esp), %eax
	movl	%eax, 88(%esp)
	movl	240(%esp), %eax
	movl	%eax, 96(%esp)
	movl	76(%esp), %eax
	incl	%eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, 92(%esp)
	movl	$0, 268(%esp)
	movl	92(%esp), %eax
	movl	$0, (%eax)
	movl	$0, 264(%esp)
	jmp	L12
L16:
	movl	264(%esp), %eax
	sall	$2, %eax
	addl	240(%esp), %eax
	movl	(%eax), %eax
	cmpl	268(%esp), %eax
	je	L13
	movl	268(%esp), %eax
	incl	%eax
	movl	%eax, 260(%esp)
	jmp	L14
L15:
	movl	92(%esp), %eax
	movl	260(%esp), %edx
	sall	$2, %edx
	addl	%eax, %edx
	movl	264(%esp), %eax
	movl	%eax, (%edx)
	incl	260(%esp)
L14:
	movl	264(%esp), %eax
	sall	$2, %eax
	addl	240(%esp), %eax
	movl	(%eax), %eax
	cmpl	260(%esp), %eax
	jge	L15
	movl	264(%esp), %eax
	sall	$2, %eax
	addl	240(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 268(%esp)
L13:
	incl	264(%esp)
L12:
	movl	100(%esp), %eax
	cmpl	%eax, 264(%esp)
	jl	L16
	movl	268(%esp), %eax
	incl	%eax
	movl	%eax, 256(%esp)
	jmp	L17
L18:
	movl	92(%esp), %eax
	movl	256(%esp), %edx
	sall	$2, %edx
	addl	%eax, %edx
	movl	100(%esp), %eax
	movl	%eax, (%edx)
	incl	256(%esp)
L17:
	movl	104(%esp), %eax
	cmpl	%eax, 256(%esp)
	jle	L18
	movl	$LC5, (%esp)
	call	_printf
	movl	104(%esp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, 224(%esp)
	movl	108(%esp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, 220(%esp)
	movl	$0, (%esp)
	call	_time
	movl	%eax, (%esp)
	call	_srand
	leal	108(%esp), %eax
	movl	%eax, 136(%esp)
	leal	104(%esp), %eax
	movl	%eax, 140(%esp)
	leal	100(%esp), %eax
	movl	%eax, 144(%esp)
	movl	232(%esp), %eax
	movl	%eax, 148(%esp)
	movl	224(%esp), %eax
	movl	%eax, 152(%esp)
	movl	220(%esp), %eax
	movl	%eax, 156(%esp)
	movl	$0, 8(%esp)
	leal	136(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$_main._omp_fn.1, (%esp)
	call	_GOMP_parallel_start
	leal	136(%esp), %eax
	movl	%eax, (%esp)
	call	_main._omp_fn.1
	call	_GOMP_parallel_end
	movl	148(%esp), %eax
	movl	%eax, 232(%esp)
	movl	152(%esp), %eax
	movl	%eax, 224(%esp)
	movl	156(%esp), %eax
	movl	%eax, 220(%esp)
	call	_omp_get_wtime
	fstpl	208(%esp)
	movl	232(%esp), %eax
	movl	%eax, 32(%esp)
	movl	224(%esp), %eax
	movl	%eax, 28(%esp)
	movl	%esp, %edx
	leal	72(%esp), %ebx
	movl	$7, %eax
	movl	%edx, %edi
	movl	%ebx, %esi
	movl	%eax, %ecx
	rep movsl
	call	_Value_vector
	call	_omp_get_wtime
	fstpl	200(%esp)
	fldl	200(%esp)
	fldl	208(%esp)
	fsubrp	%st, %st(1)
	fstpl	192(%esp)
	movl	192(%esp), %eax
	movl	196(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$LC6, (%esp)
	call	_printf
	call	_omp_get_wtime
	fstpl	184(%esp)
	movl	228(%esp), %eax
	movl	%eax, 36(%esp)
	movl	232(%esp), %eax
	movl	%eax, 32(%esp)
	movl	220(%esp), %eax
	movl	%eax, 28(%esp)
	movl	%esp, %edx
	leal	72(%esp), %ebx
	movl	$7, %eax
	movl	%edx, %edi
	movl	%ebx, %esi
	movl	%eax, %ecx
	rep movsl
	call	_csc_matrix_vector
	call	_omp_get_wtime
	fstpl	176(%esp)
	fldl	176(%esp)
	fldl	184(%esp)
	fsubrp	%st, %st(1)
	fstpl	168(%esp)
	movl	168(%esp), %eax
	movl	172(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$LC7, (%esp)
	call	_printf
	fldl	192(%esp)
	fldl	168(%esp)
	faddp	%st, %st(1)
	fstpl	160(%esp)
	movl	160(%esp), %eax
	movl	164(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$LC8, (%esp)
	call	_printf
	movl	100(%esp), %ecx
	movl	104(%esp), %edx
	movl	108(%esp), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC9, (%esp)
	call	_printf
	movl	244(%esp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	240(%esp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	236(%esp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	228(%esp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	232(%esp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	224(%esp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	220(%esp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	92(%esp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
LFE11:
	.section .rdata,"dr"
LC11:
	.ascii "%d %d %lg\12\0"
	.text
	.def	_main._omp_fn.0;	.scl	3;	.type	32;	.endef
_main._omp_fn.0:
LFB12:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %esi
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	call	_omp_get_num_threads
	movl	%eax, %ebx
	call	_omp_get_thread_num
	movl	%eax, %ecx
	movl	%esi, %eax
	cltd
	idivl	%ebx
	movl	%eax, %edx
	imull	%ebx, %edx
	cmpl	%esi, %edx
	setne	%dl
	movzbl	%dl, %edx
	addl	%eax, %edx
	movl	%edx, %eax
	imull	%ecx, %eax
	addl	%eax, %edx
	movl	%edx, %ebx
	cmpl	%esi, %ebx
	jle	L20
	movl	%esi, %ebx
L20:
	cmpl	%ebx, %eax
	jge	L19
	movl	%eax, -12(%ebp)
L22:
	movl	-12(%ebp), %eax
	leal	0(,%eax,8), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	leal	(%eax,%edx), %esi
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	leal	(%eax,%edx), %ecx
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%esi, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	%eax, (%esp)
	call	_fscanf
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	decl	%edx
	movl	%edx, (%eax)
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	decl	%edx
	movl	%edx, (%eax)
	incl	-12(%ebp)
	cmpl	%ebx, -12(%ebp)
	jl	L22
L19:
	addl	$48, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
LFE12:
	.def	_main._omp_fn.1;	.scl	3;	.type	32;	.endef
_main._omp_fn.1:
LFB13:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	movl	$0, -24(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %esi
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	call	_omp_get_num_threads
	movl	%eax, %ebx
	call	_omp_get_thread_num
	movl	%eax, %ecx
	movl	%esi, %eax
	cltd
	idivl	%ebx
	movl	%eax, %edx
	imull	%ebx, %edx
	cmpl	%esi, %edx
	setne	%dl
	movzbl	%dl, %edx
	addl	%eax, %edx
	movl	%edx, %eax
	imull	%ecx, %eax
	addl	%eax, %edx
	movl	%edx, %ebx
	cmpl	%esi, %ebx
	jle	L24
	movl	%esi, %ebx
L24:
	cmpl	%ebx, %eax
	jge	L25
	movl	%eax, -12(%ebp)
L26:
	call	_GOMP_critical_start
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	leal	(%eax,%edx), %esi
	call	_rand
	movl	%eax, -48(%ebp)
	fildl	-48(%ebp)
	fstps	-44(%ebp)
	flds	-44(%ebp)
	fldt	LC12
	fdivrp	%st, %st(1)
	fldt	LC13
	fmulp	%st, %st(1)
	fstps	-44(%ebp)
	flds	-44(%ebp)
	fstps	(%esi)
	call	_GOMP_critical_end
	incl	-12(%ebp)
	cmpl	%ebx, -12(%ebp)
	jl	L26
L25:
	call	_GOMP_barrier
	movl	$0, -28(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %ebx
	call	_omp_get_num_threads
	movl	%eax, %esi
	call	_omp_get_thread_num
	movl	%eax, %ecx
	movl	%ebx, %eax
	cltd
	idivl	%esi
	movl	%eax, %edx
	imull	%esi, %edx
	cmpl	%ebx, %edx
	setne	%dl
	movzbl	%dl, %edx
	addl	%edx, %eax
	movl	%eax, %edx
	imull	%ecx, %edx
	addl	%edx, %eax
	cmpl	%ebx, %eax
	jle	L27
	movl	%ebx, %eax
L27:
	cmpl	%eax, %edx
	jge	L28
	movl	%edx, -16(%ebp)
L29:
	movl	-16(%ebp), %edx
	leal	0(,%edx,4), %ecx
	movl	8(%ebp), %edx
	movl	12(%edx), %edx
	addl	%edx, %ecx
	movl	$0x00000000, %edx
	movl	%edx, (%ecx)
	incl	-16(%ebp)
	cmpl	%eax, -16(%ebp)
	jl	L29
L28:
	call	_GOMP_barrier
	movl	$0, -32(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %ebx
	call	_omp_get_num_threads
	movl	%eax, %esi
	call	_omp_get_thread_num
	movl	%eax, %ecx
	movl	%ebx, %eax
	cltd
	idivl	%esi
	movl	%eax, %edx
	imull	%esi, %edx
	cmpl	%ebx, %edx
	setne	%dl
	movzbl	%dl, %edx
	addl	%edx, %eax
	movl	%eax, %edx
	imull	%ecx, %edx
	addl	%edx, %eax
	cmpl	%ebx, %eax
	jle	L30
	movl	%ebx, %eax
L30:
	cmpl	%eax, %edx
	jge	L31
	movl	%edx, -20(%ebp)
L32:
	movl	-20(%ebp), %edx
	leal	0(,%edx,4), %ecx
	movl	8(%ebp), %edx
	movl	20(%edx), %edx
	addl	%edx, %ecx
	movl	$0x00000000, %edx
	movl	%edx, (%ecx)
	incl	-20(%ebp)
	cmpl	%eax, -20(%ebp)
	jl	L32
L31:
	call	_GOMP_barrier
	addl	$48, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
LFE13:
	.def	_Value_vector._omp_fn.2;	.scl	3;	.type	32;	.endef
_Value_vector._omp_fn.2:
LFB14:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %ebx
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	call	_omp_get_num_threads
	movl	%eax, %esi
	call	_omp_get_thread_num
	movl	%eax, %ecx
	movl	%ebx, %eax
	cltd
	idivl	%esi
	movl	%eax, %edx
	imull	%esi, %edx
	cmpl	%ebx, %edx
	setne	%dl
	movzbl	%dl, %edx
	addl	%edx, %eax
	movl	%eax, %edx
	imull	%ecx, %edx
	addl	%edx, %eax
	cmpl	%ebx, %eax
	jle	L34
	movl	%ebx, %eax
L34:
	cmpl	%eax, %edx
	jge	L33
	movl	%edx, -12(%ebp)
L36:
	movl	-12(%ebp), %edx
	leal	0(,%edx,4), %ecx
	movl	8(%ebp), %edx
	movl	8(%edx), %edx
	addl	%edx, %ecx
	movl	8(%ebp), %edx
	movl	(%edx), %edx
	movl	24(%edx), %edx
	movl	-12(%ebp), %ebx
	sall	$2, %ebx
	addl	%ebx, %edx
	movl	(%edx), %edx
	leal	0(,%edx,4), %ebx
	movl	8(%ebp), %edx
	movl	4(%edx), %edx
	addl	%ebx, %edx
	movl	(%edx), %edx
	movl	%edx, (%ecx)
	incl	-12(%ebp)
	cmpl	%eax, -12(%ebp)
	jl	L36
L33:
	addl	$16, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
LFE14:
	.def	_csc_matrix_vector._omp_fn.3;	.scl	3;	.type	32;	.endef
_csc_matrix_vector._omp_fn.3:
LFB15:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$84, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	.cfi_offset 3, -12
	call	_calloc
	movl	%eax, -24(%ebp)
	movl	$0, -28(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	-32(%ebp), %edx
	movl	%edx, 20(%esp)
	leal	-36(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_GOMP_loop_guided_start
	testb	%al, %al
	je	L38
L41:
	movl	-36(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	-32(%ebp), %ecx
L40:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	-12(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	nop
L42:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	-12(%ebp), %edx
	incl	%edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	L39
	incl	-12(%ebp)
	cmpl	%ecx, -12(%ebp)
	jl	L40
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_GOMP_loop_guided_next
	testb	%al, %al
	jne	L41
	jmp	L38
L39:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	-16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	-24(%ebp), %eax
	movl	8(%ebp), %edx
	movl	(%edx), %edx
	movl	16(%edx), %edx
	movl	-16(%ebp), %ebx
	sall	$2, %ebx
	addl	%ebx, %edx
	movl	(%edx), %edx
	sall	$2, %edx
	addl	-24(%ebp), %edx
	flds	(%edx)
	movl	-16(%ebp), %edx
	leal	0(,%edx,4), %ebx
	movl	8(%ebp), %edx
	movl	8(%edx), %edx
	addl	%ebx, %edx
	flds	(%edx)
	movl	-16(%ebp), %edx
	leal	0(,%edx,4), %ebx
	movl	8(%ebp), %edx
	movl	12(%edx), %edx
	addl	%ebx, %edx
	flds	(%edx)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstps	-44(%ebp)
	flds	-44(%ebp)
	fstps	(%eax)
	incl	-16(%ebp)
	jmp	L42
L38:
	call	_GOMP_loop_end
	call	_GOMP_critical_start
	movl	$0, -20(%ebp)
	nop
L44:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jg	L43
	call	_GOMP_critical_end
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	addl	$84, %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
L43:
	.cfi_restore_state
	movl	-20(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	leal	0(,%eax,4), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	%ecx, %eax
	flds	(%eax)
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	-24(%ebp), %eax
	flds	(%eax)
	faddp	%st, %st(1)
	fstps	-44(%ebp)
	flds	-44(%ebp)
	fstps	(%edx)
	incl	-20(%ebp)
	jmp	L44
	.cfi_endproc
LFE15:
	.def	_converfloatToFloat._omp_fn.4;	.scl	3;	.type	32;	.endef
_converfloatToFloat._omp_fn.4:
LFB16:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$32, %esp
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	call	_omp_get_num_threads
	movl	%eax, %esi
	call	_omp_get_thread_num
	movl	%eax, %ecx
	movl	%ebx, %eax
	cltd
	idivl	%esi
	movl	%eax, %edx
	imull	%esi, %edx
	cmpl	%ebx, %edx
	setne	%dl
	movzbl	%dl, %edx
	addl	%edx, %eax
	movl	%eax, %edx
	imull	%ecx, %edx
	addl	%edx, %eax
	cmpl	%ebx, %eax
	jle	L46
	movl	%ebx, %eax
L46:
	cmpl	%eax, %edx
	jge	L45
	movl	%edx, -12(%ebp)
L48:
	movl	-12(%ebp), %edx
	leal	0(,%edx,4), %ecx
	movl	8(%ebp), %edx
	movl	4(%edx), %edx
	addl	%edx, %ecx
	movl	-12(%ebp), %edx
	leal	0(,%edx,8), %ebx
	movl	8(%ebp), %edx
	movl	(%edx), %edx
	addl	%ebx, %edx
	fldl	(%edx)
	fstps	-28(%ebp)
	flds	-28(%ebp)
	fstps	(%ecx)
	incl	-12(%ebp)
	cmpl	%eax, -12(%ebp)
	jl	L48
L45:
	addl	$32, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
LFE16:
	.section .rdata,"dr"
	.align 16
LC12:
	.long	0
	.long	-131072
	.long	16397
	.align 16
LC13:
	.long	0
	.long	-1610612736
	.long	16386
	.def	___mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	___mingw_vprintf;	.scl	2;	.type	32;	.endef
	.def	_GOMP_parallel_start;	.scl	2;	.type	32;	.endef
	.def	_GOMP_parallel_end;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_mm_read_banner;	.scl	2;	.type	32;	.endef
	.def	_mm_typecode_to_str;	.scl	2;	.type	32;	.endef
	.def	_mm_read_mtx_crd_size;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_time;	.scl	2;	.type	32;	.endef
	.def	_srand;	.scl	2;	.type	32;	.endef
	.def	_omp_get_wtime;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_omp_get_num_threads;	.scl	2;	.type	32;	.endef
	.def	_omp_get_thread_num;	.scl	2;	.type	32;	.endef
	.def	_fscanf;	.scl	2;	.type	32;	.endef
	.def	_GOMP_critical_start;	.scl	2;	.type	32;	.endef
	.def	_GOMP_critical_end;	.scl	2;	.type	32;	.endef
	.def	_GOMP_barrier;	.scl	2;	.type	32;	.endef
	.def	_rand;	.scl	2;	.type	32;	.endef
	.def	_GOMP_loop_guided_start;	.scl	2;	.type	32;	.endef
	.def	_GOMP_loop_guided_next;	.scl	2;	.type	32;	.endef
	.def	_GOMP_loop_end;	.scl	2;	.type	32;	.endef
	.def	_calloc;	.scl	2;	.type	32;	.endef
