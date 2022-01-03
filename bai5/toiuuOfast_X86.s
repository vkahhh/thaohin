	.file	"magoc.c"
	.text
	.p2align 4,,15
	.globl	ktra
	.type	ktra, @function
ktra:
.LFB23:
	.cfi_startproc
	movl	%edi, %eax
	movl	$1717986919, %esi
	movl	%edi, %r9d
	imull	%esi
	sarl	$31, %r9d
	sarl	$2, %edx
	movl	%edx, %ecx
	subl	%r9d, %ecx
	leal	(%rcx,%rcx,4), %eax
	movl	%ecx, %r8d
	movl	%edi, %ecx
	addl	%eax, %eax
	subl	%eax, %ecx
	testl	%r8d, %r8d
	jle	.L5
	movl	%r8d, %eax
	imull	%esi
	movl	%r8d, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	movl	$1374389535, %edx
	sarl	$2, %esi
	subl	%eax, %esi
	leal	(%rsi,%rsi,4), %eax
	movl	%r8d, %esi
	movl	$-858993459, %r8d
	addl	%eax, %eax
	subl	%eax, %esi
	movl	%edi, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%edx, %edi
	subl	%r9d, %edi
	cmpl	%esi, %ecx
	jg	.L3
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L4:
	movl	%edi, %eax
	mull	%r8d
	shrl	$3, %edx
	leal	(%rdx,%rdx,4), %ecx
	movl	%edx, %eax
	addl	%ecx, %ecx
	subl	%ecx, %edi
	movl	%edi, %edx
	movl	%eax, %edi
	cmpl	%esi, %edx
	jge	.L7
	movl	%edx, %esi
.L3:
	testl	%edi, %edi
	jne	.L4
.L5:
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE23:
	.size	ktra, .-ktra
	.p2align 4,,15
	.globl	firstDigit
	.type	firstDigit, @function
firstDigit:
.LFB24:
	.cfi_startproc
	testl	%edi, %edi
	movl	$-858993459, %ecx
	jg	.L11
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L13:
	movl	%edx, %edi
.L11:
	movl	%edi, %eax
	mull	%ecx
	shrl	$3, %edx
	testl	%edx, %edx
	jne	.L13
	movl	%edi, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE24:
	.size	firstDigit, .-firstDigit
	.p2align 4,,15
	.globl	countFirstDigit
	.type	countFirstDigit, @function
countFirstDigit:
.LFB25:
	.cfi_startproc
	testl	%edi, %edi
	jle	.L20
	movl	%edi, %esi
	movl	$-858993459, %r8d
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L21:
	movl	%ecx, %esi
.L17:
	movl	%esi, %eax
	mull	%r8d
	movl	%edx, %ecx
	shrl	$3, %ecx
	testl	%ecx, %ecx
	jne	.L21
	movl	$-858993459, %r8d
	.p2align 4,,10
	.p2align 3
.L19:
	movl	%edi, %eax
	mull	%r8d
	shrl	$3, %edx
	movl	%edx, %eax
	leal	(%rdx,%rdx,4), %edx
	addl	%edx, %edx
	subl	%edx, %edi
	movl	%edi, %edx
	movl	%eax, %edi
	xorl	%eax, %eax
	cmpl	%esi, %edx
	sete	%al
	addl	%eax, %ecx
	testl	%edi, %edi
	jne	.L19
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L20:
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	ret
	.cfi_endproc
.LFE25:
	.size	countFirstDigit, .-countFirstDigit
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Chu so dau tien cua n: %d\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"So lan xuat hien cua chu so dau tien cua n: %d\n"
	.section	.rodata.str1.1
.LC3:
	.string	"chuong trinh chay mat %lf"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB26:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	call	clock@PLT
	movl	n(%rip), %ecx
	movq	%rax, %rbx
	movl	$-858993459, %esi
	testl	%ecx, %ecx
	jg	.L25
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L31:
	movl	%edx, %ecx
.L25:
	movl	%ecx, %eax
	mull	%esi
	shrl	$3, %edx
	testl	%edx, %edx
	jne	.L31
	movl	%ecx, %edx
.L24:
	leaq	.LC0(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movl	n(%rip), %esi
	testl	%esi, %esi
	jle	.L32
	movl	%esi, %edi
	movl	$-858993459, %r8d
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L33:
	movl	%ecx, %edi
.L27:
	movl	%edi, %eax
	mull	%r8d
	movl	%edx, %ecx
	shrl	$3, %ecx
	testl	%ecx, %ecx
	jne	.L33
	movl	$-858993459, %r8d
	.p2align 4,,10
	.p2align 3
.L29:
	movl	%esi, %eax
	mull	%r8d
	shrl	$3, %edx
	movl	%edx, %eax
	leal	(%rdx,%rdx,4), %edx
	addl	%edx, %edx
	subl	%edx, %esi
	movl	%esi, %edx
	movl	%eax, %esi
	xorl	%eax, %eax
	cmpl	%edx, %edi
	sete	%al
	addl	%eax, %ecx
	testl	%esi, %esi
	jne	.L29
.L26:
	leaq	.LC1(%rip), %rsi
	movl	%ecx, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	call	clock@PLT
	xorps	%xmm0, %xmm0
	subq	%rbx, %rax
	leaq	.LC3(%rip), %rsi
	movl	$1, %edi
	cvtsi2sdq	%rax, %xmm0
	movl	$1, %eax
	mulsd	.LC2(%rip), %xmm0
	call	__printf_chk@PLT
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L36:
	.cfi_restore_state
	xorl	%edx, %edx
	jmp	.L24
.L32:
	xorl	%ecx, %ecx
	jmp	.L26
	.cfi_endproc
.LFE26:
	.size	main, .-main
	.globl	n
	.data
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.long	48915791
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	2696277389
	.long	1051772663
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
