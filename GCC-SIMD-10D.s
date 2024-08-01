	.file	"MMIO-SPMV-SIMD-10-DOUBLE.c"
	.text
	.p2align 2,,3
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
	.def	_sprintf;	.scl	3;	.type	32;	.endef
_sprintf:
LFB2:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	leal	40(%esp), %eax
	movl	%eax, 8(%esp)
	movl	36(%esp), %eax
	movl	%eax, 4(%esp)
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	___mingw_vsprintf
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE2:
	.p2align 2,,3
	.globl	_mm_is_valid
	.def	_mm_is_valid;	.scl	2;	.type	32;	.endef
_mm_is_valid:
LFB517:
	.cfi_startproc
	movl	4(%esp), %eax
	cmpb	$77, (%eax)
	je	L14
L10:
	xorl	%eax, %eax
	ret
	.p2align 2,,3
L14:
	cmpb	$65, 1(%eax)
	movb	2(%eax), %dl
	je	L6
L7:
	cmpb	$82, %dl
	je	L15
	cmpb	$80, %dl
	je	L16
	movl	$1, %eax
	ret
	.p2align 2,,3
L16:
	movb	3(%eax), %al
	cmpb	$72, %al
	je	L12
	cmpb	$75, %al
	setne	%al
	movzbl	%al, %eax
	ret
	.p2align 2,,3
L6:
	cmpb	$80, %dl
	jne	L7
	jmp	L10
	.p2align 2,,3
L15:
	cmpb	$72, 3(%eax)
	setne	%al
	movzbl	%al, %eax
	ret
	.p2align 2,,3
L12:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE517:
	.section .rdata,"dr"
LC0:
	.ascii "mmrb: got line %s\12\0"
LC1:
	.ascii "%s %s %s %s %s\0"
LC2:
	.ascii "%%MatrixMarket\0"
LC3:
	.ascii "matrix\0"
LC4:
	.ascii "coordinate\0"
LC5:
	.ascii "array\0"
LC6:
	.ascii "real\0"
LC7:
	.ascii "complex\0"
LC8:
	.ascii "pattern\0"
LC9:
	.ascii "integer\0"
LC10:
	.ascii "general\0"
LC11:
	.ascii "symmetric\0"
LC12:
	.ascii "hermitian\0"
LC13:
	.ascii "skew-symmetric\0"
	.text
	.p2align 2,,3
	.globl	_mm_read_banner
	.def	_mm_read_banner;	.scl	2;	.type	32;	.endef
_mm_read_banner:
LFB518:
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
	subl	$1420, %esp
	.cfi_def_cfa_offset 1440
	movl	1444(%esp), %ebp
	movb	$32, 2(%ebp)
	movb	$32, 1(%ebp)
	movb	$32, 0(%ebp)
	movb	$71, 3(%ebp)
	movl	1440(%esp), %eax
	movl	%eax, 8(%esp)
	movl	$1025, 4(%esp)
	leal	63(%esp), %edi
	movl	%edi, (%esp)
	call	_fgets
	testl	%eax, %eax
	je	L47
	leal	1344(%esp), %esi
	movl	%esi, 40(%esp)
	movl	%esi, 24(%esp)
	leal	1280(%esp), %esi
	movl	%esi, 36(%esp)
	movl	%esi, 20(%esp)
	leal	1216(%esp), %esi
	movl	%esi, 44(%esp)
	movl	%esi, 16(%esp)
	leal	1152(%esp), %ebx
	movl	%ebx, 12(%esp)
	leal	1088(%esp), %esi
	movl	%esi, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	%edi, (%esp)
	call	_sscanf
	cmpl	$5, %eax
	je	L48
	movl	$12, %eax
L19:
	addl	$1420, %esp
	.cfi_remember_state
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
	.p2align 2,,3
L47:
	.cfi_restore_state
	movl	%edi, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$12, %eax
	addl	$1420, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 2,,3
L48:
	.cfi_restore_state
	movb	1152(%esp), %al
	testb	%al, %al
	je	L20
	movl	%ebx, %edi
	.p2align 2,,3
L21:
	movsbl	%al, %eax
	movl	%eax, (%esp)
	call	_tolower
	movb	%al, (%edi)
	incl	%edi
	movb	(%edi), %al
	testb	%al, %al
	jne	L21
L20:
	movb	1216(%esp), %al
	testb	%al, %al
	je	L22
	leal	1216(%esp), %edi
	.p2align 2,,3
L23:
	movsbl	%al, %eax
	movl	%eax, (%esp)
	call	_tolower
	movb	%al, (%edi)
	incl	%edi
	movb	(%edi), %al
	testb	%al, %al
	jne	L23
L22:
	movb	1280(%esp), %al
	testb	%al, %al
	je	L24
	leal	1280(%esp), %edi
	.p2align 2,,3
L25:
	movsbl	%al, %eax
	movl	%eax, (%esp)
	call	_tolower
	movb	%al, (%edi)
	incl	%edi
	movb	(%edi), %al
	testb	%al, %al
	jne	L25
L24:
	movb	1344(%esp), %al
	testb	%al, %al
	je	L26
	leal	1344(%esp), %edi
	.p2align 2,,3
L27:
	movsbl	%al, %eax
	movl	%eax, (%esp)
	call	_tolower
	movb	%al, (%edi)
	incl	%edi
	movb	(%edi), %al
	testb	%al, %al
	jne	L27
L26:
	movl	$LC2, %edi
	movl	$14, %ecx
	repe cmpsb
	je	L49
	movl	$14, %eax
	jmp	L19
	.p2align 2,,3
L49:
	movl	$LC3, %edi
	movl	$7, %ecx
	movl	%ebx, %esi
	repe cmpsb
	je	L50
L42:
	movl	$15, %eax
	jmp	L19
	.p2align 2,,3
L50:
	movb	$77, 0(%ebp)
	movl	$LC4, %edi
	movl	$11, %ecx
	movl	44(%esp), %esi
	repe cmpsb
	jne	L28
	movb	$67, 1(%ebp)
L29:
	movl	$LC6, %edi
	movl	$5, %ecx
	movl	36(%esp), %esi
	repe cmpsb
	jne	L30
	movb	$82, 2(%ebp)
L31:
	movl	$LC10, %edi
	movl	$8, %ecx
	movl	40(%esp), %esi
	repe cmpsb
	je	L51
	movl	$LC11, %edi
	movl	$10, %ecx
	movl	40(%esp), %esi
	repe cmpsb
	je	L52
	movl	$LC12, %edi
	movl	$10, %ecx
	movl	40(%esp), %esi
	repe cmpsb
	je	L53
	movl	$LC13, %edi
	movl	$15, %ecx
	movl	40(%esp), %esi
	repe cmpsb
	jne	L42
	movb	$75, 3(%ebp)
	xorl	%eax, %eax
	jmp	L19
	.p2align 2,,3
L28:
	movl	$LC5, %edi
	movl	$6, %ecx
	movl	44(%esp), %esi
	repe cmpsb
	jne	L42
	movb	$65, 1(%ebp)
	jmp	L29
L30:
	movl	$LC7, %edi
	movl	$8, %ecx
	movl	36(%esp), %esi
	repe cmpsb
	jne	L32
	movb	$67, 2(%ebp)
	jmp	L31
L51:
	movb	$71, 3(%ebp)
	xorl	%eax, %eax
	jmp	L19
L32:
	movl	$LC8, %edi
	movl	$8, %ecx
	movl	36(%esp), %esi
	repe cmpsb
	jne	L33
	movb	$80, 2(%ebp)
	jmp	L31
L52:
	movb	$83, 3(%ebp)
	xorl	%eax, %eax
	jmp	L19
L53:
	movb	$72, 3(%ebp)
	xorl	%eax, %eax
	jmp	L19
L33:
	movl	$LC9, %edi
	movl	$8, %ecx
	movl	36(%esp), %esi
	repe cmpsb
	jne	L42
	movb	$73, 2(%ebp)
	jmp	L31
	.cfi_endproc
LFE518:
	.section .rdata,"dr"
LC14:
	.ascii "%d %d %d\12\0"
	.text
	.p2align 2,,3
	.globl	_mm_write_mtx_crd_size
	.def	_mm_write_mtx_crd_size;	.scl	2;	.type	32;	.endef
_mm_write_mtx_crd_size:
LFB519:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	60(%esp), %eax
	movl	%eax, 16(%esp)
	movl	56(%esp), %eax
	movl	%eax, 12(%esp)
	movl	52(%esp), %eax
	movl	%eax, 8(%esp)
	movl	$LC14, 4(%esp)
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	$17, %edx
	cmpl	$3, %eax
	movl	$0, %eax
	cmove	%eax, %edx
	movl	%edx, %eax
	addl	$44, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE519:
	.section .rdata,"dr"
LC15:
	.ascii "%d %d %d\0"
	.text
	.p2align 2,,3
	.globl	_mm_read_mtx_crd_size
	.def	_mm_read_mtx_crd_size;	.scl	2;	.type	32;	.endef
_mm_read_mtx_crd_size:
LFB520:
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
	subl	$1084, %esp
	.cfi_def_cfa_offset 1104
	movl	1104(%esp), %ebx
	movl	1108(%esp), %edi
	movl	1112(%esp), %ebp
	movl	1116(%esp), %eax
	movl	$0, (%eax)
	movl	$0, 0(%ebp)
	movl	$0, (%edi)
	leal	47(%esp), %esi
	.p2align 2,,3
L59:
	movl	%ebx, 8(%esp)
	movl	$1025, 4(%esp)
	movl	%esi, (%esp)
	call	_fgets
	testl	%eax, %eax
	je	L62
	cmpb	$37, 47(%esp)
	je	L59
	movl	1116(%esp), %eax
	movl	%eax, 16(%esp)
	movl	%ebp, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$LC15, 4(%esp)
	movl	%esi, (%esp)
	call	_sscanf
	cmpl	$3, %eax
	je	L63
	.p2align 2,,3
L65:
	movl	1116(%esp), %eax
	movl	%eax, 16(%esp)
	movl	%ebp, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$LC15, 4(%esp)
	movl	%ebx, (%esp)
	call	_fscanf
	cmpl	$-1, %eax
	je	L62
	cmpl	$3, %eax
	jne	L65
	xorb	%al, %al
	addl	$1084, %esp
	.cfi_remember_state
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
	.p2align 2,,3
L62:
	.cfi_restore_state
	movl	$12, %eax
	addl	$1084, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 2,,3
L63:
	.cfi_restore_state
	xorl	%eax, %eax
	addl	$1084, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE520:
	.section .rdata,"dr"
LC16:
	.ascii "%d %d\0"
	.text
	.p2align 2,,3
	.globl	_mm_read_mtx_array_size
	.def	_mm_read_mtx_array_size;	.scl	2;	.type	32;	.endef
_mm_read_mtx_array_size:
LFB521:
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
	subl	$1068, %esp
	.cfi_def_cfa_offset 1088
	movl	1088(%esp), %ebx
	movl	1092(%esp), %edi
	movl	1096(%esp), %ebp
	movl	$0, 0(%ebp)
	movl	$0, (%edi)
	leal	31(%esp), %esi
	.p2align 2,,3
L70:
	movl	%ebx, 8(%esp)
	movl	$1025, 4(%esp)
	movl	%esi, (%esp)
	call	_fgets
	testl	%eax, %eax
	je	L74
	cmpb	$37, 31(%esp)
	je	L70
	movl	%ebp, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$LC16, 4(%esp)
	movl	%esi, (%esp)
	call	_sscanf
	cmpl	$2, %eax
	je	L73
	.p2align 2,,3
L75:
	movl	%ebp, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$LC16, 4(%esp)
	movl	%ebx, (%esp)
	call	_fscanf
	cmpl	$-1, %eax
	je	L74
	cmpl	$2, %eax
	jne	L75
	xorb	%al, %al
	addl	$1068, %esp
	.cfi_remember_state
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
	.p2align 2,,3
L74:
	.cfi_restore_state
	movl	$12, %eax
	addl	$1068, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 2,,3
L73:
	.cfi_restore_state
	xorl	%eax, %eax
	addl	$1068, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE521:
	.section .rdata,"dr"
LC17:
	.ascii "%d %d\12\0"
	.text
	.p2align 2,,3
	.globl	_mm_write_mtx_array_size
	.def	_mm_write_mtx_array_size;	.scl	2;	.type	32;	.endef
_mm_write_mtx_array_size:
LFB522:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	40(%esp), %eax
	movl	%eax, 12(%esp)
	movl	36(%esp), %eax
	movl	%eax, 8(%esp)
	movl	$LC17, 4(%esp)
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	$17, %edx
	cmpl	$2, %eax
	movl	$0, %eax
	cmove	%eax, %edx
	movl	%edx, %eax
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE522:
	.section .rdata,"dr"
LC18:
	.ascii "%d %d %lg %lg\0"
LC19:
	.ascii "%d %d %lg\12\0"
	.text
	.p2align 2,,3
	.globl	_mm_read_mtx_crd_data
	.def	_mm_read_mtx_crd_data;	.scl	2;	.type	32;	.endef
_mm_read_mtx_crd_data:
LFB523:
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
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	80(%esp), %ebp
	movl	96(%esp), %ebx
	movl	100(%esp), %eax
	movl	104(%esp), %esi
	movl	108(%esp), %edx
	movb	2(%edx), %dl
	cmpb	$67, %dl
	je	L99
	cmpb	$82, %dl
	je	L100
	cmpb	$80, %dl
	je	L101
	movl	$15, %eax
L83:
	addl	$60, %esp
	.cfi_remember_state
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
	.p2align 2,,3
L99:
	.cfi_restore_state
	movl	92(%esp), %edi
	testl	%edi, %edi
	jle	L93
	xorl	%edi, %edi
	subl	%ebx, %eax
	movl	%eax, 44(%esp)
	jmp	L84
	.p2align 2,,3
L102:
	incl	%edi
	addl	$4, %ebx
	addl	$16, %esi
	cmpl	92(%esp), %edi
	je	L98
L84:
	leal	8(%esi), %eax
	movl	%eax, 20(%esp)
	movl	%esi, 16(%esp)
	movl	44(%esp), %eax
	addl	%ebx, %eax
	movl	%eax, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	%ebp, (%esp)
	call	_fscanf
	cmpl	$4, %eax
	je	L102
L94:
	movl	$12, %eax
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 2,,3
L98:
	.cfi_restore_state
	xorb	%al, %al
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 2,,3
L100:
	.cfi_restore_state
	movl	92(%esp), %ecx
	testl	%ecx, %ecx
	jle	L93
	xorl	%edi, %edi
	subl	%ebx, %eax
	movl	%eax, 44(%esp)
	jmp	L86
	.p2align 2,,3
L103:
	incl	%edi
	addl	$4, %ebx
	addl	$8, %esi
	cmpl	92(%esp), %edi
	je	L98
L86:
	movl	%esi, 16(%esp)
	movl	44(%esp), %eax
	addl	%ebx, %eax
	movl	%eax, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$LC19, 4(%esp)
	movl	%ebp, (%esp)
	call	_fscanf
	cmpl	$3, %eax
	je	L103
	jmp	L94
	.p2align 2,,3
L101:
	movl	92(%esp), %edx
	testl	%edx, %edx
	jle	L93
	xorl	%esi, %esi
	movl	%eax, %edi
	subl	%ebx, %edi
	jmp	L87
	.p2align 2,,3
L104:
	incl	%esi
	addl	$4, %ebx
	cmpl	92(%esp), %esi
	je	L98
L87:
	leal	(%edi,%ebx), %eax
	movl	%eax, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$LC16, 4(%esp)
	movl	%ebp, (%esp)
	call	_fscanf
	cmpl	$2, %eax
	je	L104
	jmp	L94
L93:
	xorl	%eax, %eax
	jmp	L83
	.cfi_endproc
LFE523:
	.p2align 2,,3
	.globl	_mm_read_mtx_crd_entry
	.def	_mm_read_mtx_crd_entry;	.scl	2;	.type	32;	.endef
_mm_read_mtx_crd_entry:
LFB524:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$36, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %edx
	movl	52(%esp), %ecx
	movl	56(%esp), %ebx
	movl	60(%esp), %esi
	movl	68(%esp), %eax
	movb	2(%eax), %al
	cmpb	$67, %al
	je	L113
	cmpb	$82, %al
	je	L114
	cmpb	$80, %al
	je	L115
	movl	$15, %eax
L107:
	addl	$36, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 4
	.cfi_restore 6
	ret
	.p2align 2,,3
L113:
	.cfi_restore_state
	movl	64(%esp), %eax
	movl	%eax, 20(%esp)
	movl	%esi, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	%edx, (%esp)
	call	_fscanf
	movl	%eax, %edx
	xorl	%eax, %eax
	cmpl	$4, %edx
	movl	$12, %edx
	cmovne	%edx, %eax
	addl	$36, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 2,,3
L114:
	.cfi_restore_state
	movl	%esi, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$LC19, 4(%esp)
	movl	%edx, (%esp)
	call	_fscanf
	movl	%eax, %edx
	xorl	%eax, %eax
	cmpl	$3, %edx
	movl	$12, %edx
	cmovne	%edx, %eax
	addl	$36, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 2,,3
L115:
	.cfi_restore_state
	movl	%ebx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$LC16, 4(%esp)
	movl	%edx, (%esp)
	call	_fscanf
	movl	%eax, %edx
	xorl	%eax, %eax
	cmpl	$2, %edx
	movl	$12, %edx
	cmovne	%edx, %eax
	jmp	L107
	.cfi_endproc
LFE524:
	.section .rdata,"dr"
LC20:
	.ascii "stdin\0"
LC21:
	.ascii "r\0"
	.text
	.p2align 2,,3
	.globl	_mm_read_mtx_crd
	.def	_mm_read_mtx_crd;	.scl	2;	.type	32;	.endef
_mm_read_mtx_crd:
LFB525:
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
	movl	64(%esp), %eax
	movl	76(%esp), %ebp
	movl	92(%esp), %ebx
	movl	$LC20, %edi
	movl	$6, %ecx
	movl	%eax, %esi
	repe cmpsb
	je	L122
	movl	$LC21, 4(%esp)
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, %edi
	testl	%eax, %eax
	je	L134
L117:
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	call	_mm_read_banner
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L118
	movl	%ebx, (%esp)
	call	_mm_is_valid
	testl	%eax, %eax
	jne	L135
L126:
	movl	$15, %esi
L118:
	movl	%esi, %eax
	addl	$44, %esp
	.cfi_remember_state
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
	.p2align 2,,3
L122:
	.cfi_restore_state
	movl	__imp___iob, %edi
	jmp	L117
	.p2align 2,,3
L135:
	cmpb	$67, 1(%ebx)
	jne	L126
	cmpb	$77, (%ebx)
	jne	L126
	movl	%ebp, 12(%esp)
	movl	72(%esp), %edx
	movl	%edx, 8(%esp)
	movl	68(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%edi, (%esp)
	call	_mm_read_mtx_crd_size
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L118
	movl	0(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	80(%esp), %edx
	movl	%eax, (%edx)
	movl	0(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	84(%esp), %edx
	movl	%eax, (%edx)
	movl	88(%esp), %edx
	movl	$0, (%edx)
	movb	2(%ebx), %al
	cmpb	$67, %al
	je	L136
	cmpb	$82, %al
	je	L137
	cmpb	$80, %al
	je	L138
L120:
	cmpl	__imp___iob, %edi
	je	L118
	movl	%edi, (%esp)
	call	_fclose
	jmp	L118
	.p2align 2,,3
L134:
	movl	$11, %esi
	movl	%esi, %eax
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L136:
	.cfi_restore_state
	movl	0(%ebp), %eax
	sall	$4, %eax
L133:
	movl	%eax, (%esp)
	call	_malloc
	movl	88(%esp), %edx
	movl	%eax, (%edx)
	movl	%ebx, 28(%esp)
	movl	%eax, 24(%esp)
L131:
	movl	84(%esp), %edx
	movl	(%edx), %eax
	movl	%eax, 20(%esp)
	movl	80(%esp), %edx
	movl	(%edx), %eax
	movl	%eax, 16(%esp)
	movl	0(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	72(%esp), %edx
	movl	(%edx), %eax
	movl	%eax, 8(%esp)
	movl	68(%esp), %edx
	movl	(%edx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	_mm_read_mtx_crd_data
	testl	%eax, %eax
	je	L120
	movl	%eax, %esi
	jmp	L118
L138:
	movl	%ebx, 28(%esp)
	movl	$0, 24(%esp)
	jmp	L131
L137:
	movl	0(%ebp), %eax
	sall	$3, %eax
	jmp	L133
	.cfi_endproc
LFE525:
	.p2align 2,,3
	.globl	_mm_strdup
	.def	_mm_strdup;	.scl	2;	.type	32;	.endef
_mm_strdup:
LFB528:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	xorl	%eax, %eax
	movl	$-1, %ecx
	movl	%ebx, %edi
	repne scasb
	movl	%ecx, %esi
	notl	%esi
	movl	%esi, (%esp)
	call	_malloc
	movl	%eax, %edi
	testl	%eax, %eax
	je	L140
	movl	%ebx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy_s
	testl	%eax, %eax
	jne	L141
L140:
	movl	%edi, %eax
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 8
	.cfi_restore 6
	popl	%edi
	.cfi_def_cfa_offset 4
	.cfi_restore 7
	ret
	.p2align 2,,3
L141:
	.cfi_restore_state
	movl	%edi, (%esp)
	call	_free
	xorl	%edi, %edi
	jmp	L140
	.cfi_endproc
LFE528:
	.section .rdata,"dr"
LC22:
	.ascii "%s %s %s %s\0"
	.text
	.p2align 2,,3
	.globl	_mm_typecode_to_str
	.def	_mm_typecode_to_str;	.scl	2;	.type	32;	.endef
_mm_typecode_to_str:
LFB529:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$1080, %esp
	.cfi_def_cfa_offset 1088
	movl	1088(%esp), %eax
	movb	1(%eax), %dl
	cmpb	$67, %dl
	je	L147
	cmpb	$65, %dl
	jne	L156
	movl	$LC5, %ecx
	movb	2(%eax), %dl
	cmpb	$82, %dl
	je	L149
L157:
	cmpb	$67, %dl
	je	L150
	cmpb	$80, %dl
	je	L151
	cmpb	$73, %dl
	jne	L156
	movl	$LC9, %edx
L145:
	movb	3(%eax), %al
	cmpb	$71, %al
	je	L153
L158:
	cmpb	$83, %al
	je	L154
	cmpb	$72, %al
	je	L155
	cmpb	$75, %al
	jne	L156
	movl	$LC13, %eax
L146:
	movl	%eax, 20(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	$LC3, 8(%esp)
	movl	$LC22, 4(%esp)
	leal	47(%esp), %ebx
	movl	%ebx, (%esp)
	call	_sprintf
	movl	%ebx, (%esp)
	call	_mm_strdup
	addl	$1080, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	ret
	.p2align 2,,3
L156:
	.cfi_restore_state
	xorl	%eax, %eax
	addl	$1080, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 2,,3
L147:
	.cfi_restore_state
	movl	$LC4, %ecx
	movb	2(%eax), %dl
	cmpb	$82, %dl
	jne	L157
L149:
	movl	$LC6, %edx
	movb	3(%eax), %al
	cmpb	$71, %al
	jne	L158
L153:
	movl	$LC10, %eax
	jmp	L146
	.p2align 2,,3
L150:
	movl	$LC7, %edx
	jmp	L145
	.p2align 2,,3
L154:
	movl	$LC11, %eax
	jmp	L146
	.p2align 2,,3
L151:
	movl	$LC8, %edx
	jmp	L145
	.p2align 2,,3
L155:
	movl	$LC12, %eax
	jmp	L146
	.cfi_endproc
LFE529:
	.section .rdata,"dr"
LC23:
	.ascii "stdout\0"
LC24:
	.ascii "w\0"
LC25:
	.ascii "%s \0"
LC26:
	.ascii "%s\12\0"
LC27:
	.ascii "%d %d %20.16g\12\0"
LC28:
	.ascii "%d %d %20.16g %20.16g\12\0"
	.text
	.p2align 2,,3
	.globl	_mm_write_mtx_crd
	.def	_mm_write_mtx_crd;	.scl	2;	.type	32;	.endef
_mm_write_mtx_crd:
LFB527:
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
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	80(%esp), %ebx
	movl	100(%esp), %ebp
	movl	$LC23, %edi
	movl	$7, %ecx
	movl	%ebx, %esi
	repe cmpsb
	je	L169
	movl	$LC24, 4(%esp)
	movl	%ebx, (%esp)
	call	_fopen
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L170
	movl	__imp___iob, %edx
	movl	%edx, 44(%esp)
	jmp	L160
	.p2align 2,,3
L169:
	movl	__imp___iob, %edx
	movl	%edx, 44(%esp)
	movl	%edx, %ebx
	addl	$32, %ebx
L160:
	movl	$LC2, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	108(%esp), %edx
	movl	%edx, (%esp)
	call	_mm_typecode_to_str
	movl	%eax, 8(%esp)
	movl	$LC26, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	92(%esp), %edx
	movl	%edx, 16(%esp)
	movl	88(%esp), %eax
	movl	%eax, 12(%esp)
	movl	84(%esp), %eax
	movl	%eax, 8(%esp)
	movl	$LC14, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	108(%esp), %edx
	movb	2(%edx), %al
	cmpb	$80, %al
	je	L177
	cmpb	$82, %al
	je	L178
	cmpb	$67, %al
	je	L179
	movl	44(%esp), %eax
	addl	$32, %eax
	cmpl	%eax, %ebx
	je	L171
	movl	%ebx, (%esp)
	call	_fclose
	movl	$15, %eax
L161:
	addl	$60, %esp
	.cfi_remember_state
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
	.p2align 2,,3
L177:
	.cfi_restore_state
	movl	92(%esp), %eax
	testl	%eax, %eax
	jle	L163
	xorl	%esi, %esi
	movl	92(%esp), %edi
	movl	%ebp, %edx
	movl	96(%esp), %ebp
	.p2align 2,,3
L164:
	movl	(%edx,%esi,4), %eax
	movl	%eax, 12(%esp)
	movl	0(%ebp,%esi,4), %eax
	movl	%eax, 8(%esp)
	movl	$LC17, 4(%esp)
	movl	%ebx, (%esp)
	movl	%edx, 36(%esp)
	call	_fprintf
	incl	%esi
	cmpl	%edi, %esi
	movl	36(%esp), %edx
	jne	L164
L163:
	movl	44(%esp), %eax
	addl	$32, %eax
	cmpl	%eax, %ebx
	je	L172
L180:
	movl	%ebx, (%esp)
	call	_fclose
	xorl	%eax, %eax
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 2,,3
L178:
	.cfi_restore_state
	movl	92(%esp), %eax
	testl	%eax, %eax
	jle	L163
	xorl	%esi, %esi
	movl	%ebx, 40(%esp)
	movl	96(%esp), %edi
	movl	104(%esp), %ebx
	.p2align 2,,3
L166:
	movl	(%ebx,%esi,8), %eax
	movl	4(%ebx,%esi,8), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	0(%ebp,%esi,4), %eax
	movl	%eax, 12(%esp)
	movl	(%edi,%esi,4), %eax
	movl	%eax, 8(%esp)
	movl	$LC27, 4(%esp)
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	incl	%esi
	cmpl	92(%esp), %esi
	jne	L166
	movl	40(%esp), %ebx
L181:
	movl	44(%esp), %eax
	addl	$32, %eax
	cmpl	%eax, %ebx
	jne	L180
L172:
	xorl	%eax, %eax
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 2,,3
L170:
	.cfi_restore_state
	movl	$17, %eax
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 2,,3
L179:
	.cfi_restore_state
	movl	92(%esp), %eax
	testl	%eax, %eax
	jle	L163
	movl	104(%esp), %edi
	xorl	%esi, %esi
	movl	%ebx, 40(%esp)
	movl	96(%esp), %ebx
	.p2align 2,,3
L168:
	movl	8(%edi), %eax
	movl	12(%edi), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	(%edi), %eax
	movl	4(%edi), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	0(%ebp,%esi,4), %eax
	movl	%eax, 12(%esp)
	movl	(%ebx,%esi,4), %eax
	movl	%eax, 8(%esp)
	movl	$LC28, 4(%esp)
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	incl	%esi
	addl	$16, %edi
	cmpl	92(%esp), %esi
	jne	L168
	movl	40(%esp), %ebx
	jmp	L181
	.p2align 2,,3
L171:
	movl	$15, %eax
	jmp	L161
	.cfi_endproc
LFE527:
	.section .rdata,"dr"
LC29:
	.ascii "%s %s\12\0"
	.text
	.p2align 2,,3
	.globl	_mm_write_banner
	.def	_mm_write_banner;	.scl	2;	.type	32;	.endef
_mm_write_banner:
LFB526:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	call	_mm_typecode_to_str
	movl	%eax, %ebx
	movl	%eax, 12(%esp)
	movl	$LC2, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	%eax, %esi
	movl	%ebx, (%esp)
	call	_free
	movl	$17, %eax
	cmpl	$2, %esi
	movl	$0, %edx
	cmove	%edx, %eax
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 4
	.cfi_restore 6
	ret
	.cfi_endproc
LFE526:
	.section .rdata,"dr"
	.align 4
LC30:
	.ascii "mm_read_unsymetric: Could not process Matrix Market banner \0"
LC31:
	.ascii " in file [%s]\12\0"
	.align 4
LC32:
	.ascii "Sorry, this application does not support \0"
LC33:
	.ascii "Market Market type: [%s]\12\0"
	.align 4
LC34:
	.ascii "read_unsymmetric_sparse(): could not parse matrix size.\12\0"
	.text
	.p2align 2,,3
	.globl	_mm_read_unsymmetric_sparse
	.def	_mm_read_unsymmetric_sparse;	.scl	2;	.type	32;	.endef
_mm_read_unsymmetric_sparse:
LFB516:
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
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	96(%esp), %esi
	movl	$LC21, 4(%esp)
	movl	%esi, (%esp)
	call	_fopen
	movl	%eax, 44(%esp)
	testl	%eax, %eax
	je	L193
	leal	60(%esp), %ebx
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_mm_read_banner
	testl	%eax, %eax
	jne	L195
	cmpb	$82, 62(%esp)
	jne	L188
	cmpb	$77, 60(%esp)
	jne	L188
	cmpb	$67, 61(%esp)
	jne	L188
	leal	56(%esp), %eax
	movl	%eax, 12(%esp)
	leal	52(%esp), %eax
	movl	%eax, 8(%esp)
	leal	48(%esp), %eax
	movl	%eax, 4(%esp)
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	call	_mm_read_mtx_crd_size
	testl	%eax, %eax
	jne	L196
	movl	48(%esp), %edx
	movl	100(%esp), %eax
	movl	%edx, (%eax)
	movl	52(%esp), %edx
	movl	104(%esp), %eax
	movl	%edx, (%eax)
	movl	56(%esp), %eax
	movl	108(%esp), %edx
	movl	%eax, (%edx)
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, %esi
	movl	56(%esp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, %ebx
	movl	56(%esp), %eax
	sall	$3, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	112(%esp), %edx
	movl	%eax, (%edx)
	movl	116(%esp), %edx
	movl	%esi, (%edx)
	movl	120(%esp), %edx
	movl	%ebx, (%edx)
	movl	56(%esp), %edx
	testl	%edx, %edx
	jle	L191
	movl	%eax, %ebp
	xorl	%edi, %edi
	.p2align 2,,3
L192:
	movl	%ebp, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$LC19, 4(%esp)
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	call	_fscanf
	decl	(%esi)
	decl	(%ebx)
	incl	%edi
	addl	$4, %esi
	addl	$4, %ebx
	addl	$8, %ebp
	cmpl	%edi, 56(%esp)
	jg	L192
L191:
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	call	_fclose
	xorl	%eax, %eax
L186:
	addl	$76, %esp
	.cfi_remember_state
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
	.p2align 2,,3
L188:
	.cfi_restore_state
	movl	$LC32, 4(%esp)
	movl	__imp___iob, %esi
	addl	$64, %esi
	movl	%esi, (%esp)
	call	_fprintf
	movl	%ebx, (%esp)
	call	_mm_typecode_to_str
	movl	%eax, 8(%esp)
	movl	$LC33, 4(%esp)
	movl	%esi, (%esp)
	call	_fprintf
	movl	$-1, %eax
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L196:
	.cfi_restore_state
	movl	$LC34, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	$-1, %eax
	jmp	L186
L193:
	movl	$-1, %eax
	jmp	L186
L195:
	movl	$LC30, (%esp)
	call	_printf
	movl	%esi, 4(%esp)
	movl	$LC31, (%esp)
	call	_printf
	movl	$-1, %eax
	jmp	L186
	.cfi_endproc
LFE516:
	.p2align 2,,3
	.globl	_get_cpu_frequency
	.def	_get_cpu_frequency;	.scl	2;	.type	32;	.endef
_get_cpu_frequency:
LFB530:
	.cfi_startproc
	flds	LC35
	ret
	.cfi_endproc
LFE530:
	.p2align 2,,3
	.globl	_rdtsc
	.def	_rdtsc;	.scl	2;	.type	32;	.endef
_rdtsc:
LFB531:
	.cfi_startproc
/APP
 # 712 "MMIO-SPMV-SIMD-10-DOUBLE.c" 1
	rdtsc
 # 0 "" 2
/NO_APP
	ret
	.cfi_endproc
LFE531:
	.p2align 2,,3
	.globl	_csc_matrix_vector_sse
	.def	_csc_matrix_vector_sse;	.scl	2;	.type	32;	.endef
_csc_matrix_vector_sse:
LFB532:
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
	jle	L199
	xorl	%esi, %esi
	.p2align 2,,3
L203:
	movl	(%edi,%esi,4), %eax
	movl	4(%edi,%esi,4), %edx
	xorpd	%xmm1, %xmm1
	cmpl	%edx, %eax
	jge	L201
	.p2align 2,,3
L202:
	movsd	(%ecx,%eax,8), %xmm0
	movsd	(%ebx,%eax,8), %xmm2
	unpcklpd	%xmm0, %xmm0
	unpcklpd	%xmm2, %xmm2
	mulpd	%xmm2, %xmm0
	addpd	%xmm0, %xmm1
	incl	%eax
	cmpl	%edx, %eax
	jne	L202
L201:
	movupd	%xmm1, 16(%esp)
	fldl	24(%esp)
	faddl	16(%esp)
	faddl	0(%ebp,%esi,8)
	fstpl	0(%ebp,%esi,8)
	incl	%esi
	cmpl	4(%esp), %esi
	jne	L203
L199:
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
LFE532:
	.p2align 2,,3
	.globl	_Value_vector
	.def	_Value_vector;	.scl	2;	.type	32;	.endef
_Value_vector:
LFB533:
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
	jle	L207
	movl	44(%esp), %esi
	xorl	%eax, %eax
	.p2align 2,,3
L209:
	movl	(%esi,%eax,4), %ecx
	movl	4(%edi,%ecx,8), %ebx
	movl	(%edi,%ecx,8), %ecx
	movl	%ecx, (%edx,%eax,8)
	movl	%ebx, 4(%edx,%eax,8)
	incl	%eax
	cmpl	%ebp, %eax
	jne	L209
L207:
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
LFE533:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 4
LC37:
	.ascii "Usage: %s [matrix-market-filename]\12\0"
	.align 4
LC38:
	.ascii "Could not process Matrix Market banner.\12\0"
	.align 4
LC43:
	.ascii "Time elapsed to form the new vector is : %f seconds\12\0"
	.align 4
LC44:
	.ascii "Time elapsed for multiplying and adding both: %f seconds\12\0"
	.align 4
LC45:
	.ascii "Time elapsed TOTAL: %f seconds\12\0"
	.align 4
LC46:
	.ascii "rows=%d columns= %d non-zero=%d \12\0"
	.section	.text.startup,"x"
	.p2align 2,,3
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB534:
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
	jle	L241
	movl	$LC21, 4(%esp)
	movl	4(%ebx), %eax
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, 108(%esp)
	testl	%eax, %eax
	je	L240
	leal	172(%esp), %ebx
	movl	%ebx, 4(%esp)
	movl	108(%esp), %eax
	movl	%eax, (%esp)
	call	_mm_read_banner
	testl	%eax, %eax
	jne	L242
	cmpb	$67, 174(%esp)
	je	L243
L215:
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
	jne	L240
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
	jle	L217
	movl	80(%esp), %edi
	movl	96(%esp), %esi
	movl	84(%esp), %edx
	xorl	%ebx, %ebx
	.p2align 2,,3
L218:
	movl	%edx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$LC19, 4(%esp)
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
	jg	L218
	movl	%eax, 104(%esp)
L217:
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
	jle	L219
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	96(%esp), %esi
	movl	108(%esp), %edi
	.p2align 2,,3
L221:
	movl	(%esi,%eax,4), %edx
	cmpl	%ecx, %edx
	je	L220
	movl	%eax, (%edi,%edx,4)
	movl	%edx, %ecx
L220:
	incl	%eax
	cmpl	%ebx, %eax
	jne	L221
L219:
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
	movl	164(%esp), %eax
	testl	%eax, %eax
	jle	L222
	xorl	%ebx, %ebx
	movl	64(%esp), %esi
	.p2align 2,,3
L223:
	call	_rand
	flds	LC39
	pushl	%eax
	fidivrl	(%esp)
	popl	%edi
	fmuls	LC40
	fstpl	(%esi,%ebx,8)
	incl	%ebx
	cmpl	%ebx, 164(%esp)
	jg	L223
L222:
	movl	168(%esp), %edx
	testl	%edx, %edx
	jle	L224
	xorl	%eax, %eax
	movl	100(%esp), %ecx
	.p2align 2,,3
L225:
	movl	$0, (%ecx,%eax,8)
	movl	$0, 4(%ecx,%eax,8)
	incl	%eax
	cmpl	%edx, %eax
	jne	L225
L224:
	movl	160(%esp), %edx
	testl	%edx, %edx
	jle	L226
	xorl	%eax, %eax
	movl	68(%esp), %ecx
	.p2align 2,,3
L227:
	movl	$0, (%ecx,%eax,8)
	movl	$0, 4(%ecx,%eax,8)
	incl	%eax
	cmpl	%edx, %eax
	jne	L227
L226:
/APP
 # 712 "MMIO-SPMV-SIMD-10-DOUBLE.c" 1
	rdtsc
 # 0 "" 2
/NO_APP
	movl	%eax, 72(%esp)
	movl	%edx, 76(%esp)
/APP
 # 712 "MMIO-SPMV-SIMD-10-DOUBLE.c" 1
	rdtsc
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%edx, %edi
	movl	104(%esp), %ecx
	testl	%ecx, %ecx
	jle	L228
	xorl	%eax, %eax
	movl	96(%esp), %ebx
	movl	64(%esp), %ecx
	movl	%esi, 88(%esp)
	movl	%edx, 92(%esp)
	.p2align 2,,3
L229:
	movl	(%ebx,%eax,4), %edx
	movl	(%ecx,%edx,8), %esi
	movl	4(%ecx,%edx,8), %edi
	movl	100(%esp), %edx
	movl	%esi, (%edx,%eax,8)
	movl	%edi, 4(%edx,%eax,8)
	incl	%eax
	cmpl	104(%esp), %eax
	jne	L229
	movl	88(%esp), %esi
	movl	92(%esp), %edi
L228:
/APP
 # 712 "MMIO-SPMV-SIMD-10-DOUBLE.c" 1
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
	js	L244
L230:
	fstpl	120(%esp)
	fldl	120(%esp)
	flds	LC35
	fdivrp	%st, %st(1)
	fstpl	4(%esp)
	movl	$LC43, (%esp)
	call	_printf
/APP
 # 712 "MMIO-SPMV-SIMD-10-DOUBLE.c" 1
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
 # 712 "MMIO-SPMV-SIMD-10-DOUBLE.c" 1
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
	js	L245
L231:
	fstpl	120(%esp)
	fldl	120(%esp)
	flds	LC35
	fdivrp	%st, %st(1)
	fstpl	4(%esp)
	movl	$LC44, (%esp)
	call	_printf
/APP
 # 712 "MMIO-SPMV-SIMD-10-DOUBLE.c" 1
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
	js	L246
L232:
	fstpl	120(%esp)
	fldl	120(%esp)
	flds	LC35
	fdivrp	%st, %st(1)
	fstpl	4(%esp)
	movl	$LC45, (%esp)
	call	_printf
	movl	168(%esp), %eax
	movl	%eax, 12(%esp)
	movl	164(%esp), %eax
	movl	%eax, 8(%esp)
	movl	160(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC46, (%esp)
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
L243:
	.cfi_restore_state
	cmpb	$77, 172(%esp)
	jne	L215
	cmpb	$67, 173(%esp)
	jne	L215
	movl	$LC32, (%esp)
	call	_printf
	movl	%ebx, (%esp)
	call	_mm_typecode_to_str
	movl	%eax, 4(%esp)
	movl	$LC33, (%esp)
	call	_printf
	movl	$1, (%esp)
	call	_exit
L246:
	fadds	LC42
	jmp	L232
L245:
	fadds	LC42
	jmp	L231
L244:
	fadds	LC42
	jmp	L230
L241:
	movl	(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	$1, (%esp)
	call	_exit
L242:
	movl	$LC38, (%esp)
	call	_printf
L240:
	movl	$1, (%esp)
	call	_exit
	.cfi_endproc
LFE534:
	.section .rdata,"dr"
	.align 4
LC35:
	.long	1326386456
	.align 4
LC39:
	.long	1191181824
	.align 4
LC40:
	.long	1092616192
	.align 4
LC42:
	.long	1602224128
	.def	___mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	___mingw_vprintf;	.scl	2;	.type	32;	.endef
	.def	___mingw_vsprintf;	.scl	2;	.type	32;	.endef
	.def	_fgets;	.scl	2;	.type	32;	.endef
	.def	_sscanf;	.scl	2;	.type	32;	.endef
	.def	_tolower;	.scl	2;	.type	32;	.endef
	.def	_fscanf;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	_strcpy_s;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_rand;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
