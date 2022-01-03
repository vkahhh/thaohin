	.file	"magoc.c"
	.text
	.globl	demChuSo
	.type	demChuSo, @function
demChuSo:
.LFB23:
	.cfi_startproc
	testl	%edi, %edi
	jle	.L4
	movl	$0, %ecx
	movl	$1717986919, %esi
.L3:
	addl	$1, %ecx
	movl	%edi, %eax
	imull	%esi
	sarl	$2, %edx
	sarl	$31, %edi
	subl	%edi, %edx
	movl	%edx, %edi
	testl	%edx, %edx
	jg	.L3
.L1:
	movl	%ecx, %eax
	ret
.L4:
	movl	$0, %ecx
	jmp	.L1
	.cfi_endproc
.LFE23:
	.size	demChuSo, .-demChuSo
	.globl	demChuSoLe
	.type	demChuSoLe, @function
demChuSoLe:
.LFB24:
	.cfi_startproc
	testl	%edi, %edi
	jle	.L10
	xorl	%ecx, %ecx
	movl	$1717986919, %esi
.L9:
	movl	%edi, %eax
	andl	$1, %eax
	cmpl	$1, %eax
	sbbl	$-1, %ecx
	movl	%edi, %eax
	imull	%esi
	sarl	$2, %edx
	sarl	$31, %edi
	subl	%edi, %edx
	movl	%edx, %edi
	testl	%edx, %edx
	jg	.L9
.L6:
	movl	%ecx, %eax
	ret
.L10:
	movl	$0, %ecx
	jmp	.L6
	.cfi_endproc
.LFE24:
	.size	demChuSoLe, .-demChuSoLe
	.globl	tbc
	.type	tbc, @function
tbc:
.LFB25:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edi, %ebx
	call	demChuSo
	movl	%eax, %edi
	testl	%ebx, %ebx
	jle	.L15
	movl	$0, %ecx
	movl	$1717986919, %esi
.L14:
	movl	%ebx, %eax
	imull	%esi
	sarl	$2, %edx
	movl	%ebx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	leal	(%rdx,%rdx,4), %eax
	addl	%eax, %eax
	subl	%eax, %ebx
	addl	%ebx, %ecx
	movl	%edx, %ebx
	testl	%edx, %edx
	jg	.L14
.L13:
	pxor	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ss	%edi, %xmm1
	divss	%xmm1, %xmm0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L15:
	.cfi_restore_state
	movl	$0, %ecx
	jmp	.L13
	.cfi_endproc
.LFE25:
	.size	tbc, .-tbc
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"So chu so cua n: %d\n"
.LC1:
	.string	"So chu so le cua n: %d\n"
.LC2:
	.string	"TBC cac chu so cua n: %0.2f"
	.text
	.globl	main
	.type	main, @function
main:
.LFB26:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	n(%rip), %edi
	call	demChuSo
	movl	%eax, %edx
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	n(%rip), %edi
	call	demChuSoLe
	movl	%eax, %edx
	leaq	.LC1(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	n(%rip), %edi
	call	tbc
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC2(%rip), %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE26:
	.size	main, .-main
	.globl	n
	.data
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.long	1000000
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
