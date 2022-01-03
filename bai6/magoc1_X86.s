	.file	"magoc.c"
	.text
	.section	.rodata
.LC1:
	.string	"\n Nhap vao so Km: "
.LC2:
	.string	"%f"
.LC9:
	.string	"\n So tien phai tra: %0.3f VND"
.LC11:
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
	pxor	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	call	clock@PLT
	movq	%rax, -32(%rbp)
	movss	-40(%rbp), %xmm1
	movss	.LC3(%rip), %xmm0
	ucomiss	%xmm1, %xmm0
	jb	.L12
	movss	-40(%rbp), %xmm1
	movss	.LC4(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	jmp	.L4
.L12:
	movss	-40(%rbp), %xmm1
	movss	.LC5(%rip), %xmm0
	ucomiss	%xmm1, %xmm0
	jb	.L5
	movss	-40(%rbp), %xmm0
	movss	.LC3(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L5
	movss	-40(%rbp), %xmm0
	movss	.LC3(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	.LC6(%rip), %xmm1
	mulss	%xmm1, %xmm0
	movss	.LC4(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	jmp	.L4
.L5:
	movss	-40(%rbp), %xmm0
	movss	.LC5(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	.LC7(%rip), %xmm1
	mulss	%xmm1, %xmm0
	movss	.LC8(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
.L4:
	cvtss2sd	-36(%rbp), %xmm0
	leaq	.LC9(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	call	clock@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	-32(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC10(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movsd	-56(%rbp), %xmm0
	leaq	.LC11(%rip), %rdi
	xorl	%eax, %eax
	inc 	%eax
	call	printf@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC3:
	.long	1065353216
	.align 4
.LC4:
	.long	1167867904
	.align 4
.LC5:
	.long	1106247680
	.align 4
.LC6:
	.long	1165623296
	.align 4
.LC7:
	.long	1161527296
	.align 4
.LC8:
	.long	1206670336
	.align 8
.LC10:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
