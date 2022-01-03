	.file	"toiuu.c"
	.text
	.section	.rodata
.LC0:
	.string	"Nhap so nguyen n > 0: "
.LC1:
	.string	"%d"
	.text
	.globl	nhapN
	.type	nhapN, @function
nhapN:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$-1, -12(%rbp)
	jmp	.L2
.L3:
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
.L2:
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	jle	.L3
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	nhapN, .-nhapN
	.globl	ktraNgto
	.type	ktraNgto, @function
ktraNgto:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	cmpl	$1, -20(%rbp)
	jg	.L7
	movl	$0, %eax
	jmp	.L8
.L7:
	movl	$2, -4(%rbp)
	jmp	.L9
.L11:
	movl	-20(%rbp), %eax
	cltd
	idivl	-4(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L10
	movl	$0, %eax
	jmp	.L8
.L10:
	addl	$1, -4(%rbp)
.L9:
	cvtsi2sd	-4(%rbp), %xmm1
	movsd	%xmm1, -32(%rbp)
	cvtsi2sd	-20(%rbp), %xmm0
	call	sqrt@PLT
	ucomisd	-32(%rbp), %xmm0
	jnb	.L11
	movl	$1, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	ktraNgto, .-ktraNgto
	.section	.rodata
.LC2:
	.string	"%d so nguyen to dau tien: \n"
.LC3:
	.string	"%d, "
	.text
	.globl	lietKeNgto
	.type	lietKeNgto, @function
lietKeNgto:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$2, -4(%rbp)
	jmp	.L13
.L15:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ktraNgto
	testb	%al, %al
	je	.L14
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	subl	$1, -20(%rbp)
.L14:
	addl	$1, -4(%rbp)
.L13:
	cmpl	$0, -20(%rbp)
	jg	.L15
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	lietKeNgto, .-lietKeNgto
	.section	.rodata
	.align 8
.LC4:
	.string	"\n%d so chinh phuong dau tien: \n"
	.text
	.globl	lietKeChinhPhuong
	.type	lietKeChinhPhuong, @function
lietKeChinhPhuong:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -4(%rbp)
	jmp	.L17
.L18:
	movl	-4(%rbp), %eax
	imull	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -4(%rbp)
.L17:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L18
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	lietKeChinhPhuong, .-lietKeChinhPhuong
	.section	.rodata
.LC6:
	.string	"time: %f"
	.text
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	call	clock@PLT
	movq	%rax, -24(%rbp)
	movl	$0, %eax
	call	nhapN
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	lietKeNgto
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	lietKeChinhPhuong
	call	clock@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	-24(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC5(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	leaq	.LC6(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC5:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
