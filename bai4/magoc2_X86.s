	.file	"magoc.c"
	.text
	.type	demChuSo.2380, @function
demChuSo.2380:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	%r10, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	addl	$1, -4(%rbp)
	movl	-20(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -20(%rbp)
.L2:
	cmpl	$0, -20(%rbp)
	jg	.L3
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	demChuSo.2380, .-demChuSo.2380
	.section	.rodata
.LC0:
	.string	"So chu so cua n: %d\n"
.LC1:
	.string	"So chu so le cua n: %d\n"
.LC2:
	.string	"TBC cac chu so cua n: %0.2f"
.LC4:
	.string	"time: %f"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$100000, -44(%rbp)
	call	clock@PLT
	movq	%rax, -32(%rbp)
	movl	-44(%rbp), %eax
	leaq	-40(%rbp), %rdx
	movq	%rdx, %r10
	movl	%eax, %edi
	call	demChuSo.2380
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-44(%rbp), %eax
	leaq	-40(%rbp), %rdx
	movq	%rdx, %r10
	movl	%eax, %edi
	call	demChuSoLe.2387
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	-44(%rbp), %eax
	leaq	-40(%rbp), %rdx
	movq	%rdx, %r10
	movl	%eax, %edi
	call	tbc.2395
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC2(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	call	clock@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	-32(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movsd	-56(%rbp), %xmm0
	leaq	.LC4(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.type	demChuSoLe.2387, @function
demChuSoLe.2387:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	%r10, -32(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L9
.L11:
	movl	-20(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L10
	addl	$1, -8(%rbp)
.L10:
	movl	-20(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -20(%rbp)
.L9:
	cmpl	$0, -20(%rbp)
	jg	.L11
	movl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	demChuSoLe.2387, .-demChuSoLe.2387
	.type	tbc.2395, @function
tbc.2395:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%r10, %rdx
	movq	%r10, -32(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	movl	-20(%rbp), %eax
	movq	%rdx, %r10
	movl	%eax, %edi
	call	demChuSo.2380
	movl	%eax, -4(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L14
.L15:
	movl	-20(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	addl	%edx, -12(%rbp)
	movl	-20(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -20(%rbp)
.L14:
	cmpl	$0, -20(%rbp)
	jg	.L15
	cvtsi2ss	-12(%rbp), %xmm0
	cvtsi2ss	-4(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	tbc.2395, .-tbc.2395
	.section	.rodata
	.align 8
.LC3:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
