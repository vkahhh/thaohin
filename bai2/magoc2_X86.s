	.file	"goc.c"
	.text
	.section	.rodata
.LC1:
	.string	"Phuong trinh vo nghiem!"
	.align 8
.LC3:
	.string	"Phuong trinh co mot nghiem: x = %f"
	.align 8
.LC5:
	.string	"Phuong trinh co 2 nghiem la: x1 = %f va x2 = %f"
	.align 8
.LC6:
	.string	"Phong trinh co nghiem kep: x1 = x2 = %f"
	.text
	.globl	giaiPTBac2
	.type	giaiPTBac2, @function
giaiPTBac2:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	movss	%xmm2, -28(%rbp)
	pxor	%xmm0, %xmm0
	ucomiss	-20(%rbp), %xmm0
	jp	.L2
	pxor	%xmm0, %xmm0
	ucomiss	-20(%rbp), %xmm0
	jne	.L2
	pxor	%xmm0, %xmm0
	ucomiss	-24(%rbp), %xmm0
	jp	.L4
	pxor	%xmm0, %xmm0
	ucomiss	-24(%rbp), %xmm0
	jne	.L4
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L1
.L4:
	movss	-28(%rbp), %xmm1
	movss	.LC2(%rip), %xmm0
	xorps	%xmm1, %xmm0
	divss	-24(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC3(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L1
.L2:
	movss	-24(%rbp), %xmm0
	mulss	-24(%rbp), %xmm0
	movss	-20(%rbp), %xmm2
	movss	.LC4(%rip), %xmm1
	mulss	%xmm2, %xmm1
	mulss	-28(%rbp), %xmm1
	subss	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L16
	movss	-24(%rbp), %xmm1
	movss	.LC2(%rip), %xmm0
	xorps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm3
	movsd	%xmm3, -40(%rbp)
	movss	-24(%rbp), %xmm0
	mulss	-24(%rbp), %xmm0
	movss	-20(%rbp), %xmm2
	movss	.LC4(%rip), %xmm1
	mulss	%xmm2, %xmm1
	mulss	-28(%rbp), %xmm1
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	sqrt@PLT
	movsd	-40(%rbp), %xmm3
	addsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm1
	movss	-20(%rbp), %xmm0
	addss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm5
	movss	%xmm5, -8(%rbp)
	movss	-24(%rbp), %xmm1
	movss	.LC2(%rip), %xmm0
	xorps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm4
	movsd	%xmm4, -40(%rbp)
	movss	-24(%rbp), %xmm0
	mulss	-24(%rbp), %xmm0
	movss	-20(%rbp), %xmm2
	movss	.LC4(%rip), %xmm1
	mulss	%xmm2, %xmm1
	mulss	-28(%rbp), %xmm1
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	sqrt@PLT
	movsd	-40(%rbp), %xmm4
	subsd	%xmm0, %xmm4
	movapd	%xmm4, %xmm1
	movss	-20(%rbp), %xmm0
	addss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm6
	movss	%xmm6, -4(%rbp)
	cvtss2sd	-4(%rbp), %xmm1
	cvtss2sd	-8(%rbp), %xmm0
	leaq	.LC5(%rip), %rdi
	movl	$2, %eax
	call	printf@PLT
	jmp	.L1
.L16:
	movss	-24(%rbp), %xmm0
	mulss	-24(%rbp), %xmm0
	movss	-20(%rbp), %xmm2
	movss	.LC4(%rip), %xmm1
	mulss	%xmm2, %xmm1
	mulss	-28(%rbp), %xmm1
	subss	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L10
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.L10
	movss	-24(%rbp), %xmm1
	movss	.LC2(%rip), %xmm0
	xorps	%xmm0, %xmm1
	movss	-20(%rbp), %xmm0
	addss	%xmm0, %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	cvtss2sd	-8(%rbp), %xmm0
	leaq	.LC6(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L1
.L10:
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	giaiPTBac2, .-giaiPTBac2
	.section	.rodata
.LC7:
	.string	"Nhap he so bac 2, a = "
.LC8:
	.string	"%f"
.LC9:
	.string	"Nhap he so bac 1, b = "
.LC10:
	.string	"Nhap so hang tu do, c = "
.LC12:
	.string	"chuong trinh chay mat %lf"
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
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-44(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-36(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	call	clock@PLT
	movq	%rax, -32(%rbp)
	movss	-36(%rbp), %xmm1
	movss	-40(%rbp), %xmm0
	movl	-44(%rbp), %eax
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm0
	call	giaiPTBac2
	call	clock@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	-32(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC11(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movsd	-56(%rbp), %xmm0
	leaq	.LC12(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	xorl	%eax, %eax
	inc 	%eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 16
.LC2:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC4:
	.long	1082130432
	.align 8
.LC11:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
