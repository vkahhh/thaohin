	.file	"toiuu.c"
	.text
	.type	USCLN.2382, @function
USCLN.2382:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%r10, %rcx
	movq	%r10, -16(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L2
	movl	-4(%rbp), %eax
	jmp	.L3
.L2:
	movl	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	-8(%rbp), %eax
	movq	%rcx, %r10
	movl	%edx, %esi
	movl	%eax, %edi
	call	USCLN.2382
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	USCLN.2382, .-USCLN.2382
	.section	.rodata
.LC0:
	.string	"Nhap so nguyen duong a = "
.LC1:
	.string	"%d"
.LC2:
	.string	"Nhap so nguyen duong b = "
.LC3:
	.string	"USCLN cua %d va %d la: %d"
.LC5:
	.string	"chuong trinh chay mat %lf"
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
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	leaq	-44(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	call	clock@PLT
	movq	%rax, -32(%rbp)
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %eax
	leaq	-40(%rbp), %rcx
	movq	%rcx, %r10
	movl	%edx, %esi
	movl	%eax, %edi
	call	USCLN.2382
	movl	%eax, %ecx
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %eax
	leaq	-40(%rbp), %rcx
	movq	%rcx, %r10
	movl	%edx, %esi
	movl	%eax, %edi
	call	BSCNN.2386
	movl	%eax, %ecx
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	call	clock@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	-32(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC4(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movsd	-56(%rbp), %xmm0
	leaq	.LC5(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.type	BSCNN.2386, @function
BSCNN.2386:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%r10, %rcx
	movq	%r10, -32(%rbp)
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	movl	%eax, %ebx
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movq	%rcx, %r10
	movl	%edx, %esi
	movl	%eax, %edi
	call	USCLN.2382
	movl	%eax, %ecx
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	BSCNN.2386, .-BSCNN.2386
	.section	.rodata
	.align 8
.LC4:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
