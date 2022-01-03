	.file	"toiuu.c"
	.text
	.globl	tinhGiaithua
	.type	tinhGiaithua, @function
tinhGiaithua:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	$1, -8(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L2
	cmpl	$1, -20(%rbp)
	jne	.L3
.L2:
	movq	-8(%rbp), %rax
	jmp	.L4
.L3:
	movl	$2, -12(%rbp)
	jmp	.L5
.L6:
	movl	-12(%rbp), %eax
	cltq
	movq	-8(%rbp), %rdx
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	addl	$1, -12(%rbp)
.L5:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L6
	movq	-8(%rbp), %rax
.L4:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	tinhGiaithua, .-tinhGiaithua
	.section	.rodata
.LC0:
	.string	"Giai thua cua %d  la: %d \n"
.LC1:
	.string	"Giai thua cua %d  la: %d\n"
.LC3:
	.string	"time: %f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	call	clock@PLT
	movq	%rax, -24(%rbp)
	movl	$10, -36(%rbp)
	movl	$12, -32(%rbp)
	movl	$15, -28(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	tinhGiaithua
	movq	%rax, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	tinhGiaithua
	movq	%rax, %rdx
	movl	-32(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	tinhGiaithua
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	call	clock@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	-24(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC2(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movsd	-56(%rbp), %xmm0
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	inc %eax
	call	printf@PLT
	xorl	%eax, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC2:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
