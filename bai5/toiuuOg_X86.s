	.file	"magoc.c"
	.text
	.globl	ktra
	.type	ktra, @function
ktra:
.LFB23:
	.cfi_startproc
	movl	$1717986919, %edx
	movl	%edi, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%edi, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %ecx
	leal	(%rsi,%rsi,4), %edx
	leal	(%rdx,%rdx), %eax
	subl	%eax, %edi
	movl	%edi, %esi
.L2:
	testl	%ecx, %ecx
	jle	.L6
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %edi
	leal	(%rdx,%rdx,4), %edx
	leal	(%rdx,%rdx), %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edi, %ecx
	cmpl	%edx, %esi
	jle	.L5
	movl	%edx, %esi
	jmp	.L2
.L6:
	movl	$1, %eax
	ret
.L5:
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE23:
	.size	ktra, .-ktra
	.globl	firstDigit
	.type	firstDigit, @function
firstDigit:
.LFB24:
	.cfi_startproc
	movl	$0, %eax
	jmp	.L8
.L9:
	movl	$1717986919, %edx
	movl	%edi, %eax
	imull	%edx
	movl	%edx, %eax
	sarl	$2, %eax
	movl	%edi, %edx
	sarl	$31, %edx
	subl	%edx, %eax
	movl	%eax, %ecx
	leal	(%rax,%rax,4), %edx
	leal	(%rdx,%rdx), %eax
	subl	%eax, %edi
	movl	%edi, %eax
	movl	%ecx, %edi
.L8:
	testl	%edi, %edi
	jg	.L9
	rep ret
	.cfi_endproc
.LFE24:
	.size	firstDigit, .-firstDigit
	.globl	countFirstDigit
	.type	countFirstDigit, @function
countFirstDigit:
.LFB25:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edi, %ebx
	call	firstDigit
	movl	%eax, %esi
	xorl	%edi, %edi
.L11:
	testl	%ebx, %ebx
	jle	.L15
	movl	$1717986919, %edx
	movl	%ebx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ebx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %ecx
	leal	(%rdx,%rdx,4), %edx
	leal	(%rdx,%rdx), %eax
	subl	%eax, %ebx
	movl	%ebx, %edx
	movl	%ecx, %ebx
	cmpl	%edx, %esi
	jne	.L11
	addl	$1, %edi
	jmp	.L11
.L15:
	movl	%edi, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
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
	.text
	.globl	main
	.type	main, @function
main:
.LFB26:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	call	clock@PLT
	movq	%rax, %rbx
	movl	n(%rip), %edi
	call	firstDigit
	movl	%eax, %edx
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	n(%rip), %edi
	call	countFirstDigit
	movl	%eax, %edx
	leaq	.LC1(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	call	clock@PLT
	subq	%rbx, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC2(%rip), %xmm0
	leaq	.LC3(%rip), %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
	movl	$0, %eax
	popq	%rbx
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
	.long	48915791
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
