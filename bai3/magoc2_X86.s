	.file	"goc.c"
	.text
	.globl	USCLN
	.type	USCLN, @function
USCLN:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L2
	movl	-4(%rbp), %eax
	jmp	.L3
.L2:
	movl	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	-8(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	USCLN
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	USCLN, .-USCLN
	.globl	BSCNN
	.type	BSCNN, @function
BSCNN:
.LFB1:
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
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	movl	%eax, %ebx
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	USCLN
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
.LFE1:
	.size	BSCNN, .-BSCNN
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
.LFB2:
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
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-36(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	call	clock@PLT
	movq	%rax, -32(%rbp)
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	USCLN
	movl	%eax, %ecx
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	BSCNN
	movl	%eax, %ecx
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %eax
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
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC4:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
