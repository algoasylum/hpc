	.file	"mmio.c"
	.text
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
	.globl	_mm_is_valid
	.def	_mm_is_valid;	.scl	2;	.type	32;	.endef
_mm_is_valid:
LFB31:
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
LFE31:
	.section .rdata,"dr"
LC0:
	.ascii "%s %s %s %s %s\0"
LC1:
	.ascii "%%MatrixMarket\0"
LC2:
	.ascii "matrix\0"
LC3:
	.ascii "coordinate\0"
LC4:
	.ascii "array\0"
LC5:
	.ascii "real\0"
LC6:
	.ascii "complex\0"
LC7:
	.ascii "pattern\0"
LC8:
	.ascii "integer\0"
LC9:
	.ascii "general\0"
LC10:
	.ascii "symmetric\0"
LC11:
	.ascii "hermitian\0"
LC12:
	.ascii "skew-symmetric\0"
	.text
	.p2align 2,,3
	.globl	_mm_read_banner
	.def	_mm_read_banner;	.scl	2;	.type	32;	.endef
_mm_read_banner:
LFB32:
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
	movl	1444(%esp), %ebx
	movb	$32, 2(%ebx)
	movb	$32, 1(%ebx)
	movb	$32, (%ebx)
	movb	$71, 3(%ebx)
	movl	1440(%esp), %eax
	movl	%eax, 8(%esp)
	movl	$1025, 4(%esp)
	leal	63(%esp), %edi
	movl	%edi, (%esp)
	call	_fgets
	testl	%eax, %eax
	je	L37
	leal	1344(%esp), %eax
	movl	%eax, 40(%esp)
	movl	%eax, 24(%esp)
	leal	1280(%esp), %eax
	movl	%eax, 36(%esp)
	movl	%eax, 20(%esp)
	leal	1216(%esp), %eax
	movl	%eax, 44(%esp)
	movl	%eax, 16(%esp)
	leal	1152(%esp), %ebp
	movl	%ebp, 12(%esp)
	leal	1088(%esp), %esi
	movl	%esi, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	%edi, (%esp)
	call	_sscanf
	cmpl	$5, %eax
	je	L47
L37:
	movl	$12, %eax
L18:
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
	movb	1152(%esp), %al
	testb	%al, %al
	je	L19
	movl	%ebp, %edi
	.p2align 2,,3
L20:
	movsbl	%al, %eax
	movl	%eax, (%esp)
	call	_tolower
	movb	%al, (%edi)
	incl	%edi
	movb	(%edi), %al
	testb	%al, %al
	jne	L20
L19:
	movb	1216(%esp), %al
	testb	%al, %al
	je	L21
	leal	1216(%esp), %edi
	.p2align 2,,3
L22:
	movsbl	%al, %eax
	movl	%eax, (%esp)
	call	_tolower
	movb	%al, (%edi)
	incl	%edi
	movb	(%edi), %al
	testb	%al, %al
	jne	L22
L21:
	movb	1280(%esp), %al
	testb	%al, %al
	je	L23
	leal	1280(%esp), %edi
	.p2align 2,,3
L24:
	movsbl	%al, %eax
	movl	%eax, (%esp)
	call	_tolower
	movb	%al, (%edi)
	incl	%edi
	movb	(%edi), %al
	testb	%al, %al
	jne	L24
L23:
	movb	1344(%esp), %al
	testb	%al, %al
	je	L25
	leal	1344(%esp), %edi
	.p2align 2,,3
L26:
	movsbl	%al, %eax
	movl	%eax, (%esp)
	call	_tolower
	movb	%al, (%edi)
	incl	%edi
	movb	(%edi), %al
	testb	%al, %al
	jne	L26
L25:
	movl	$LC1, %edi
	movl	$14, %ecx
	repe cmpsb
	je	L48
	movl	$14, %eax
	jmp	L18
	.p2align 2,,3
L48:
	movl	$LC2, %edi
	movl	$7, %ecx
	movl	%ebp, %esi
	repe cmpsb
	je	L49
L42:
	movl	$15, %eax
	jmp	L18
L49:
	movb	$77, (%ebx)
	movl	$LC3, %edi
	movl	$11, %ecx
	movl	44(%esp), %esi
	repe cmpsb
	jne	L27
	movb	$67, 1(%ebx)
L28:
	movl	$LC5, %edi
	movl	$5, %ecx
	movl	36(%esp), %esi
	repe cmpsb
	jne	L29
	movb	$82, 2(%ebx)
L30:
	movl	$LC9, %edi
	movl	$8, %ecx
	movl	40(%esp), %esi
	repe cmpsb
	je	L50
	movl	$LC10, %edi
	movl	$10, %ecx
	movl	40(%esp), %esi
	repe cmpsb
	je	L51
	movl	$LC11, %edi
	movl	$10, %ecx
	movl	40(%esp), %esi
	repe cmpsb
	je	L52
	movl	$LC12, %edi
	movl	$15, %ecx
	movl	40(%esp), %esi
	repe cmpsb
	jne	L42
	movb	$75, 3(%ebx)
	xorl	%eax, %eax
	jmp	L18
	.p2align 2,,3
L27:
	movl	$LC4, %edi
	movl	$6, %ecx
	movl	44(%esp), %esi
	repe cmpsb
	jne	L42
	movb	$65, 1(%ebx)
	jmp	L28
L29:
	movl	$LC6, %edi
	movl	$8, %ecx
	movl	36(%esp), %esi
	repe cmpsb
	jne	L31
	movb	$67, 2(%ebx)
	jmp	L30
L50:
	movb	$71, 3(%ebx)
	xorl	%eax, %eax
	jmp	L18
L31:
	movl	$LC7, %edi
	movl	$8, %ecx
	movl	36(%esp), %esi
	repe cmpsb
	jne	L32
	movb	$80, 2(%ebx)
	jmp	L30
L51:
	movb	$83, 3(%ebx)
	xorl	%eax, %eax
	jmp	L18
L52:
	movb	$72, 3(%ebx)
	xorl	%eax, %eax
	jmp	L18
L32:
	movl	$LC8, 4(%esp)
	leal	1280(%esp), %eax
	movl	%eax, (%esp)
	call	_strcmp
	movl	%eax, %edx
	movl	$15, %eax
	testl	%edx, %edx
	jne	L18
	movb	$73, 2(%ebx)
	jmp	L30
	.cfi_endproc
LFE32:
	.section .rdata,"dr"
LC13:
	.ascii "%d %d %d\12\0"
	.text
	.p2align 2,,3
	.globl	_mm_write_mtx_crd_size
	.def	_mm_write_mtx_crd_size;	.scl	2;	.type	32;	.endef
_mm_write_mtx_crd_size:
LFB33:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	60(%esp), %eax
	movl	%eax, 16(%esp)
	movl	56(%esp), %eax
	movl	%eax, 12(%esp)
	movl	52(%esp), %eax
	movl	%eax, 8(%esp)
	movl	$LC13, 4(%esp)
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
LFE33:
	.section .rdata,"dr"
LC14:
	.ascii "%d %d %d\0"
	.text
	.p2align 2,,3
	.globl	_mm_read_mtx_crd_size
	.def	_mm_read_mtx_crd_size;	.scl	2;	.type	32;	.endef
_mm_read_mtx_crd_size:
LFB34:
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
L58:
	movl	%ebx, 8(%esp)
	movl	$1025, 4(%esp)
	movl	%esi, (%esp)
	call	_fgets
	testl	%eax, %eax
	je	L61
	cmpb	$37, 47(%esp)
	je	L58
	movl	1116(%esp), %eax
	movl	%eax, 16(%esp)
	movl	%ebp, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$LC14, 4(%esp)
	movl	%esi, (%esp)
	call	_sscanf
	cmpl	$3, %eax
	je	L62
	.p2align 2,,3
L64:
	movl	1116(%esp), %eax
	movl	%eax, 16(%esp)
	movl	%ebp, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$LC14, 4(%esp)
	movl	%ebx, (%esp)
	call	_fscanf
	cmpl	$-1, %eax
	je	L61
	cmpl	$3, %eax
	jne	L64
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
L61:
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
L62:
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
LFE34:
	.section .rdata,"dr"
LC15:
	.ascii "%d %d\0"
	.text
	.p2align 2,,3
	.globl	_mm_read_mtx_array_size
	.def	_mm_read_mtx_array_size;	.scl	2;	.type	32;	.endef
_mm_read_mtx_array_size:
LFB35:
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
L69:
	movl	%ebx, 8(%esp)
	movl	$1025, 4(%esp)
	movl	%esi, (%esp)
	call	_fgets
	testl	%eax, %eax
	je	L73
	cmpb	$37, 31(%esp)
	je	L69
	movl	%ebp, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$LC15, 4(%esp)
	movl	%esi, (%esp)
	call	_sscanf
	cmpl	$2, %eax
	je	L72
	.p2align 2,,3
L74:
	movl	%ebp, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$LC15, 4(%esp)
	movl	%ebx, (%esp)
	call	_fscanf
	cmpl	$-1, %eax
	je	L73
	cmpl	$2, %eax
	jne	L74
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
L73:
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
L72:
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
LFE35:
	.section .rdata,"dr"
LC16:
	.ascii "%d %d\12\0"
	.text
	.p2align 2,,3
	.globl	_mm_write_mtx_array_size
	.def	_mm_write_mtx_array_size;	.scl	2;	.type	32;	.endef
_mm_write_mtx_array_size:
LFB36:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	40(%esp), %eax
	movl	%eax, 12(%esp)
	movl	36(%esp), %eax
	movl	%eax, 8(%esp)
	movl	$LC16, 4(%esp)
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
LFE36:
	.section .rdata,"dr"
LC17:
	.ascii "%d %d %lg %lg\0"
LC18:
	.ascii "%d %d %lg\12\0"
	.text
	.p2align 2,,3
	.globl	_mm_read_mtx_crd_data
	.def	_mm_read_mtx_crd_data;	.scl	2;	.type	32;	.endef
_mm_read_mtx_crd_data:
LFB37:
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
	je	L98
	cmpb	$82, %dl
	je	L99
	cmpb	$80, %dl
	je	L100
	movl	$15, %eax
L82:
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
L98:
	.cfi_restore_state
	movl	92(%esp), %edi
	testl	%edi, %edi
	jle	L92
	xorl	%edi, %edi
	subl	%ebx, %eax
	movl	%eax, 44(%esp)
	jmp	L83
	.p2align 2,,3
L101:
	incl	%edi
	addl	$4, %ebx
	addl	$16, %esi
	cmpl	92(%esp), %edi
	je	L97
L83:
	leal	8(%esi), %eax
	movl	%eax, 20(%esp)
	movl	%esi, 16(%esp)
	movl	44(%esp), %eax
	addl	%ebx, %eax
	movl	%eax, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$LC17, 4(%esp)
	movl	%ebp, (%esp)
	call	_fscanf
	cmpl	$4, %eax
	je	L101
L93:
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
L97:
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
L99:
	.cfi_restore_state
	movl	92(%esp), %ecx
	testl	%ecx, %ecx
	jle	L92
	xorl	%edi, %edi
	subl	%ebx, %eax
	movl	%eax, 44(%esp)
	jmp	L85
	.p2align 2,,3
L102:
	incl	%edi
	addl	$4, %ebx
	addl	$8, %esi
	cmpl	92(%esp), %edi
	je	L97
L85:
	movl	%esi, 16(%esp)
	movl	44(%esp), %eax
	addl	%ebx, %eax
	movl	%eax, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	%ebp, (%esp)
	call	_fscanf
	cmpl	$3, %eax
	je	L102
	jmp	L93
	.p2align 2,,3
L100:
	movl	92(%esp), %edx
	testl	%edx, %edx
	jle	L92
	xorl	%esi, %esi
	movl	%eax, %edi
	subl	%ebx, %edi
	jmp	L86
	.p2align 2,,3
L103:
	incl	%esi
	addl	$4, %ebx
	cmpl	92(%esp), %esi
	je	L97
L86:
	leal	(%edi,%ebx), %eax
	movl	%eax, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$LC15, 4(%esp)
	movl	%ebp, (%esp)
	call	_fscanf
	cmpl	$2, %eax
	je	L103
	jmp	L93
L92:
	xorl	%eax, %eax
	jmp	L82
	.cfi_endproc
LFE37:
	.p2align 2,,3
	.globl	_mm_read_mtx_crd_entry
	.def	_mm_read_mtx_crd_entry;	.scl	2;	.type	32;	.endef
_mm_read_mtx_crd_entry:
LFB38:
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
	je	L112
	cmpb	$82, %al
	je	L113
	cmpb	$80, %al
	je	L114
	movl	$15, %eax
L106:
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
L112:
	.cfi_restore_state
	movl	64(%esp), %eax
	movl	%eax, 20(%esp)
	movl	%esi, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$LC17, 4(%esp)
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
L113:
	.cfi_restore_state
	movl	%esi, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$LC18, 4(%esp)
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
L114:
	.cfi_restore_state
	movl	%ebx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$LC15, 4(%esp)
	movl	%edx, (%esp)
	call	_fscanf
	movl	%eax, %edx
	xorl	%eax, %eax
	cmpl	$2, %edx
	movl	$12, %edx
	cmovne	%edx, %eax
	jmp	L106
	.cfi_endproc
LFE38:
	.section .rdata,"dr"
LC19:
	.ascii "stdin\0"
LC20:
	.ascii "r\0"
	.text
	.p2align 2,,3
	.globl	_mm_read_mtx_crd
	.def	_mm_read_mtx_crd;	.scl	2;	.type	32;	.endef
_mm_read_mtx_crd:
LFB39:
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
	movl	$LC19, %edi
	movl	$6, %ecx
	movl	%eax, %esi
	repe cmpsb
	je	L121
	movl	$LC20, 4(%esp)
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, %edi
	testl	%eax, %eax
	je	L133
L116:
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	call	_mm_read_banner
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L117
	movl	%ebx, (%esp)
	call	_mm_is_valid
	testl	%eax, %eax
	jne	L134
L125:
	movl	$15, %esi
L117:
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
L121:
	.cfi_restore_state
	movl	__imp___iob, %edi
	jmp	L116
	.p2align 2,,3
L134:
	cmpb	$67, 1(%ebx)
	jne	L125
	cmpb	$77, (%ebx)
	jne	L125
	movl	%ebp, 12(%esp)
	movl	72(%esp), %edx
	movl	%edx, 8(%esp)
	movl	68(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%edi, (%esp)
	call	_mm_read_mtx_crd_size
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L117
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
	je	L135
	cmpb	$82, %al
	je	L136
	cmpb	$80, %al
	je	L137
L119:
	cmpl	__imp___iob, %edi
	je	L117
	movl	%edi, (%esp)
	call	_fclose
	jmp	L117
	.p2align 2,,3
L133:
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
L135:
	.cfi_restore_state
	movl	0(%ebp), %eax
	sall	$4, %eax
L132:
	movl	%eax, (%esp)
	call	_malloc
	movl	88(%esp), %edx
	movl	%eax, (%edx)
	movl	%ebx, 28(%esp)
	movl	%eax, 24(%esp)
L130:
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
	je	L119
	movl	%eax, %esi
	jmp	L117
L137:
	movl	%ebx, 28(%esp)
	movl	$0, 24(%esp)
	jmp	L130
L136:
	movl	0(%ebp), %eax
	sall	$3, %eax
	jmp	L132
	.cfi_endproc
LFE39:
	.p2align 2,,3
	.globl	_mm_strdup
	.def	_mm_strdup;	.scl	2;	.type	32;	.endef
_mm_strdup:
LFB42:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	%ebx, %edi
	xorl	%eax, %eax
	movl	$-1, %ecx
	repne scasb
	notl	%ecx
	movl	%ecx, (%esp)
	call	_malloc
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	popl	%edi
	.cfi_def_cfa_offset 4
	.cfi_restore 7
	ret
	.cfi_endproc
LFE42:
	.section .rdata,"dr"
LC21:
	.ascii "%s %s %s %s\0"
	.text
	.p2align 2,,3
	.globl	_mm_typecode_to_str
	.def	_mm_typecode_to_str;	.scl	2;	.type	32;	.endef
_mm_typecode_to_str:
LFB43:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$1080, %esp
	.cfi_def_cfa_offset 1088
	movl	1088(%esp), %eax
	movb	1(%eax), %dl
	cmpb	$67, %dl
	je	L144
	cmpb	$65, %dl
	jne	L153
	movl	$LC4, %ecx
	movb	2(%eax), %dl
	cmpb	$82, %dl
	je	L146
L154:
	cmpb	$67, %dl
	je	L147
	cmpb	$80, %dl
	je	L148
	cmpb	$73, %dl
	jne	L153
	movl	$LC8, %edx
L142:
	movb	3(%eax), %al
	cmpb	$71, %al
	je	L150
L155:
	cmpb	$83, %al
	je	L151
	cmpb	$72, %al
	je	L152
	cmpb	$75, %al
	jne	L153
	movl	$LC12, %eax
L143:
	movl	%eax, 20(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	$LC2, 8(%esp)
	movl	$LC21, 4(%esp)
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
L153:
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
L144:
	.cfi_restore_state
	movl	$LC3, %ecx
	movb	2(%eax), %dl
	cmpb	$82, %dl
	jne	L154
L146:
	movl	$LC5, %edx
	movb	3(%eax), %al
	cmpb	$71, %al
	jne	L155
L150:
	movl	$LC9, %eax
	jmp	L143
	.p2align 2,,3
L147:
	movl	$LC6, %edx
	jmp	L142
	.p2align 2,,3
L151:
	movl	$LC10, %eax
	jmp	L143
	.p2align 2,,3
L148:
	movl	$LC7, %edx
	jmp	L142
	.p2align 2,,3
L152:
	movl	$LC11, %eax
	jmp	L143
	.cfi_endproc
LFE43:
	.section .rdata,"dr"
LC22:
	.ascii "stdout\0"
LC23:
	.ascii "w\0"
LC24:
	.ascii "%s \0"
LC25:
	.ascii "%s\12\0"
LC26:
	.ascii "%d %d %20.16g\12\0"
LC27:
	.ascii "%d %d %20.16g %20.16g\12\0"
	.text
	.p2align 2,,3
	.globl	_mm_write_mtx_crd
	.def	_mm_write_mtx_crd;	.scl	2;	.type	32;	.endef
_mm_write_mtx_crd:
LFB41:
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
	movl	$LC22, %edi
	movl	$7, %ecx
	movl	%ebx, %esi
	repe cmpsb
	je	L166
	movl	$LC23, 4(%esp)
	movl	%ebx, (%esp)
	call	_fopen
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L167
	movl	__imp___iob, %edx
	movl	%edx, 44(%esp)
	jmp	L157
	.p2align 2,,3
L166:
	movl	__imp___iob, %edx
	movl	%edx, 44(%esp)
	movl	%edx, %ebx
	addl	$32, %ebx
L157:
	movl	$LC1, 8(%esp)
	movl	$LC24, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	108(%esp), %edx
	movl	%edx, (%esp)
	call	_mm_typecode_to_str
	movl	%eax, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	92(%esp), %edx
	movl	%edx, 16(%esp)
	movl	88(%esp), %eax
	movl	%eax, 12(%esp)
	movl	84(%esp), %eax
	movl	%eax, 8(%esp)
	movl	$LC13, 4(%esp)
	movl	%ebx, (%esp)
	call	_fprintf
	movl	108(%esp), %edx
	movb	2(%edx), %al
	cmpb	$80, %al
	je	L174
	cmpb	$82, %al
	je	L175
	cmpb	$67, %al
	je	L176
	movl	44(%esp), %eax
	addl	$32, %eax
	cmpl	%eax, %ebx
	je	L168
	movl	%ebx, (%esp)
	call	_fclose
	movl	$15, %eax
L158:
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
L174:
	.cfi_restore_state
	movl	92(%esp), %eax
	testl	%eax, %eax
	jle	L160
	xorl	%esi, %esi
	movl	92(%esp), %edi
	movl	%ebp, %edx
	movl	96(%esp), %ebp
	.p2align 2,,3
L161:
	movl	(%edx,%esi,4), %eax
	movl	%eax, 12(%esp)
	movl	0(%ebp,%esi,4), %eax
	movl	%eax, 8(%esp)
	movl	$LC16, 4(%esp)
	movl	%ebx, (%esp)
	movl	%edx, 36(%esp)
	call	_fprintf
	incl	%esi
	cmpl	%edi, %esi
	movl	36(%esp), %edx
	jne	L161
L160:
	movl	44(%esp), %eax
	addl	$32, %eax
	cmpl	%eax, %ebx
	je	L169
L177:
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
L175:
	.cfi_restore_state
	movl	92(%esp), %eax
	testl	%eax, %eax
	jle	L160
	xorl	%esi, %esi
	movl	%ebx, 40(%esp)
	movl	96(%esp), %edi
	movl	104(%esp), %ebx
	.p2align 2,,3
L163:
	movl	(%ebx,%esi,8), %eax
	movl	4(%ebx,%esi,8), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	0(%ebp,%esi,4), %eax
	movl	%eax, 12(%esp)
	movl	(%edi,%esi,4), %eax
	movl	%eax, 8(%esp)
	movl	$LC26, 4(%esp)
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	incl	%esi
	cmpl	92(%esp), %esi
	jne	L163
	movl	40(%esp), %ebx
L178:
	movl	44(%esp), %eax
	addl	$32, %eax
	cmpl	%eax, %ebx
	jne	L177
L169:
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
L167:
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
L176:
	.cfi_restore_state
	movl	92(%esp), %eax
	testl	%eax, %eax
	jle	L160
	movl	104(%esp), %edi
	xorl	%esi, %esi
	movl	%ebx, 40(%esp)
	movl	96(%esp), %ebx
	.p2align 2,,3
L165:
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
	movl	$LC27, 4(%esp)
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	incl	%esi
	addl	$16, %edi
	cmpl	92(%esp), %esi
	jne	L165
	movl	40(%esp), %ebx
	jmp	L178
	.p2align 2,,3
L168:
	movl	$15, %eax
	jmp	L158
	.cfi_endproc
LFE41:
	.section .rdata,"dr"
LC28:
	.ascii "%s %s\12\0"
	.text
	.p2align 2,,3
	.globl	_mm_write_banner
	.def	_mm_write_banner;	.scl	2;	.type	32;	.endef
_mm_write_banner:
LFB40:
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
	movl	$LC1, 8(%esp)
	movl	$LC28, 4(%esp)
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
LFE40:
	.section .rdata,"dr"
	.align 4
LC29:
	.ascii "mm_read_unsymetric: Could not process Matrix Market banner \0"
LC30:
	.ascii " in file [%s]\12\0"
	.align 4
LC31:
	.ascii "Sorry, this application does not support \0"
LC32:
	.ascii "Market Market type: [%s]\12\0"
	.align 4
LC33:
	.ascii "read_unsymmetric_sparse(): could not parse matrix size.\12\0"
	.text
	.p2align 2,,3
	.globl	_mm_read_unsymmetric_sparse
	.def	_mm_read_unsymmetric_sparse;	.scl	2;	.type	32;	.endef
_mm_read_unsymmetric_sparse:
LFB30:
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
	movl	$LC20, 4(%esp)
	movl	%esi, (%esp)
	call	_fopen
	movl	%eax, 44(%esp)
	testl	%eax, %eax
	je	L190
	leal	60(%esp), %ebx
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_mm_read_banner
	testl	%eax, %eax
	jne	L192
	cmpb	$82, 62(%esp)
	jne	L185
	cmpb	$77, 60(%esp)
	jne	L185
	cmpb	$67, 61(%esp)
	jne	L185
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
	jne	L193
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
	jle	L188
	movl	%eax, %ebp
	xorl	%edi, %edi
	.p2align 2,,3
L189:
	movl	%ebp, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$LC18, 4(%esp)
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
	jg	L189
L188:
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	call	_fclose
	xorl	%eax, %eax
L183:
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
L185:
	.cfi_restore_state
	movl	$LC31, 4(%esp)
	movl	__imp___iob, %esi
	addl	$64, %esi
	movl	%esi, (%esp)
	call	_fprintf
	movl	%ebx, (%esp)
	call	_mm_typecode_to_str
	movl	%eax, 8(%esp)
	movl	$LC32, 4(%esp)
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
L193:
	.cfi_restore_state
	movl	$LC33, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	$-1, %eax
	jmp	L183
L190:
	movl	$-1, %eax
	jmp	L183
L192:
	movl	$LC29, (%esp)
	call	_printf
	movl	%esi, 4(%esp)
	movl	$LC30, (%esp)
	call	_printf
	movl	$-1, %eax
	jmp	L183
	.cfi_endproc
LFE30:
	.def	___mingw_vsprintf;	.scl	2;	.type	32;	.endef
	.def	___mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	___mingw_vprintf;	.scl	2;	.type	32;	.endef
	.def	_fgets;	.scl	2;	.type	32;	.endef
	.def	_sscanf;	.scl	2;	.type	32;	.endef
	.def	_tolower;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_fscanf;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
