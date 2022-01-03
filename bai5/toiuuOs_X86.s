	.file	"magoc.c"
	.text
	.globl	ktra
	.type	ktra, @function
ktra:
.LFB13:
	.cfi_startproc
	movl	%edi, %eax
	movl	$10, %esi
	movl	$10, %ecx
	cltd
	idivl	%esi
	movl	%edx, %edi
.L2:
	testl	%eax, %eax
	jle	.L7
	cltd
	idivl	%ecx
	cmpl	%edx, %edi
	jle	.L5
	movl	%edx, %edi
	jmp	.L2
.L7:
	movb	$1, %al
	ret
.L5:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE13:
	.size	ktra, .-ktra
	.globl	firstDigit
	.type	firstDigit, @function
firstDigit:
.LFB14:
	.cfi_startproc
	movl	%edi, %eax
	xorl	%edx, %edx
	movl	$10, %ecx
.L9:
	testl	%eax, %eax
	jle	.L11
	cltd
	idivl	%ecx
	jmp	.L9
.L11:
	movl	%edx, %eax
	ret
	.cfi_endproc
.LFE14:
	.size	firstDigit, .-firstDigit
	.globl	countFirstDigit
	.type	countFirstDigit, @function
countFirstDigit:
.LFB15:
	.cfi_startproc
	movl	%edi, %esi
	call	firstDigit
	xorl	%ecx, %ecx
	movl	%eax, %r8d
	xorl	%edi, %edi
	addl	$10, %edi
	
.L13:
	testl	%esi, %esi
	jle	.L16
	movl	%esi, %eax
	cltd
	idivl	%edi
	cmpl	%edx, %r8d
	movl	%eax, %esi
	jne	.L13
	incl	%ecx
	jmp	.L13
.L16:
	movl	%ecx, %eax
	ret
	.cfi_endproc
.LFE15:
	.size	countFirstDigit, .-countFirstDigit
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Chu so dau tien cua n: %d\n"
.LC1:
	.string	"So lan xuat hien cua chu so dau tien cua n: %d\n"
.LC3:
	.string	"chuong trinh chay mat %lf"
	.section	.text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
.LFB16:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	call	clock@PLT
	movl	n(%rip), %edi
	movq	%rax, %rbx
	call	firstDigit
	leaq	.LC0(%rip), %rsi
	movl	%eax, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	n(%rip), %edi
	call	countFirstDigit
	leaq	.LC1(%rip), %rsi
	movl	%eax, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	call	clock@PLT
	subq	%rbx, %rax
	leaq	.LC3(%rip), %rsi
	movl	$1, %edi
	cvtsi2sdq	%rax, %xmm0
	movb	$1, %al
	divsd	.LC2(%rip), %xmm0
	call	__printf_chk@PLT
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE16:
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
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
