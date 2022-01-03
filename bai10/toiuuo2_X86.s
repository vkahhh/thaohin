	.file	"magoc.c"
	.text
	.p2align 4,,15
	.globl	demChuSo
	.type	demChuSo, @function
demChuSo:
.LFB23:
	.cfi_startproc
	xorl	%ecx, %ecx
	testl	%edi, %edi
	movl	%edi, %edx
	jle	.L1
	movl	$-858993459, %esi
	.p2align 4,,10
	.p2align 3
.L3:
	movl	%edx, %eax
	addl	$1, %ecx
	mull	%esi
	shrl	$3, %edx
	testl	%edx, %edx
	jne	.L3
.L1:
	movl	%ecx, %eax
	ret
	.cfi_endproc
.LFE23:
	.size	demChuSo, .-demChuSo
	.p2align 4,,15
	.globl	demChuSoLe
	.type	demChuSoLe, @function
demChuSoLe:
.LFB24:
	.cfi_startproc
	xorl	%ecx, %ecx
	testl	%edi, %edi
	jle	.L7
	movl	$-858993459, %esi
	.p2align 4,,10
	.p2align 3
.L10:
	movl	%edi, %eax
	andl	$1, %edi
	mull	%esi
	cmpl	$1, %edi
	sbbl	$-1, %ecx
	shrl	$3, %edx
	testl	%edx, %edx
	movl	%edx, %edi
	jne	.L10
.L7:
	movl	%ecx, %eax
	ret
	.cfi_endproc
.LFE24:
	.size	demChuSoLe, .-demChuSoLe
	.p2align 4,,15
	.globl	tbc
	.type	tbc, @function
tbc:
.LFB25:
	.cfi_startproc
	testl	%edi, %edi
	jle	.L19
	movl	%edi, %ecx
	xorl	%esi, %esi
	movl	$-858993459, %r8d
	.p2align 4,,10
	.p2align 3
.L17:
	movl	%ecx, %eax
	addl	$1, %esi
	mull	%r8d
	movl	%edx, %ecx
	shrl	$3, %ecx
	testl	%ecx, %ecx
	jne	.L17
	movl	$-858993459, %r8d
	.p2align 4,,10
	.p2align 3
.L18:
	movl	%edi, %eax
	mull	%r8d
	shrl	$3, %edx
	leal	(%rdx,%rdx,4), %eax
	addl	%eax, %eax
	subl	%eax, %edi
	addl	%edi, %ecx
	testl	%edx, %edx
	movl	%edx, %edi
	jne	.L18
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ss	%ecx, %xmm0
	cvtsi2ss	%esi, %xmm1
	divss	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	divss	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE25:
	.size	tbc, .-tbc
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"So chu so cua n: %d\n"
.LC2:
	.string	"So chu so le cua n: %d\n"
.LC3:
	.string	"TBC cac chu so cua n: %0.2f"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB26:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	n(%rip), %edx
	xorl	%ecx, %ecx
	testl	%edx, %edx
	jle	.L23
	movl	$-858993459, %esi
	.p2align 4,,10
	.p2align 3
.L24:
	movl	%edx, %eax
	addl	$1, %ecx
	mull	%esi
	shrl	$3, %edx
	testl	%edx, %edx
	jne	.L24
.L23:
	leaq	.LC1(%rip), %rsi
	movl	%ecx, %edx
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movl	n(%rip), %ecx
	xorl	%esi, %esi
	testl	%ecx, %ecx
	jle	.L25
	movl	$-858993459, %edi
	.p2align 4,,10
	.p2align 3
.L27:
	movl	%ecx, %eax
	andl	$1, %ecx
	mull	%edi
	cmpl	$1, %ecx
	sbbl	$-1, %esi
	movl	%edx, %ecx
	shrl	$3, %ecx
	testl	%ecx, %ecx
	jne	.L27
.L25:
	movl	%esi, %edx
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movl	n(%rip), %esi
	testl	%esi, %esi
	jle	.L33
	movl	%esi, %ecx
	xorl	%edi, %edi
	movl	$-858993459, %r8d
	.p2align 4,,10
	.p2align 3
.L29:
	movl	%ecx, %eax
	addl	$1, %edi
	mull	%r8d
	movl	%edx, %ecx
	shrl	$3, %ecx
	testl	%ecx, %ecx
	jne	.L29
	movl	$-858993459, %r8d
	.p2align 4,,10
	.p2align 3
.L30:
	movl	%esi, %eax
	mull	%r8d
	shrl	$3, %edx
	leal	(%rdx,%rdx,4), %eax
	addl	%eax, %eax
	subl	%eax, %esi
	addl	%esi, %ecx
	testl	%edx, %edx
	movl	%edx, %esi
	jne	.L30
.L28:
	pxor	%xmm0, %xmm0
	leaq	.LC3(%rip), %rsi
	movl	$1, %eax
	pxor	%xmm1, %xmm1
	cvtsi2ss	%ecx, %xmm0
	cvtsi2ss	%edi, %xmm1
	movl	$1, %edi
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	__printf_chk@PLT
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L33:
	.cfi_restore_state
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	jmp	.L28
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
