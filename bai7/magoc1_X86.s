	.file	"magoc.c"
	.text
	.section	.rodata
.LC0:
	.string	"%10d"
.LC2:
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
	subq	$48, %rsp
	call	clock@PLT
	movq	%rax, -24(%rbp)
	movl	$20000000, -28(%rbp)
	jmp	.L2
.L4:
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	ktraNgto
	testb	%al, %al
	je	.L3
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	tongCsNgto
	testb	%al, %al
	je	.L3
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L3:
	addl	$1, -28(%rbp)
.L2:
	cmpl	$77777777, -28(%rbp)
	jle	.L4
	call	clock@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	-24(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	leaq	.LC2(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	xorl	%eax, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	tongCsNgto
	.type	tongCsNgto, @function
tongCsNgto:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L7
.L8:
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
	addl	%edx, -4(%rbp)
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
.L7:
	cmpl	$0, -20(%rbp)
	jg	.L8
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ktraNgto
	testb	%al, %al
	je	.L9
	movl	$1, %eax
	jmp	.L10
.L9:
	movl	$0, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	tongCsNgto, .-tongCsNgto
	.globl	csNgto
	.type	csNgto, @function
csNgto:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	jmp	.L12
.L14:
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
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ktraNgto
	xorl	$1, %eax
	testb	%al, %al
	je	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	cmpl	$0, -20(%rbp)
	jg	.L14
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	csNgto, .-csNgto
	.globl	ktraNgto
	.type	ktraNgto, @function
ktraNgto:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	cmpl	$1, -20(%rbp)
	jg	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	movl	$2, -4(%rbp)
	jmp	.L18
.L20:
	movl	-20(%rbp), %eax
	cltd
	idivl	-4(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L19
	movl	$0, %eax
	jmp	.L17
.L19:
	addl	$1, -4(%rbp)
.L18:
	cvtsi2sd	-4(%rbp), %xmm1
	movsd	%xmm1, -32(%rbp)
	cvtsi2sd	-20(%rbp), %xmm0
	call	sqrt@PLT
	ucomisd	-32(%rbp), %xmm0
	jnb	.L20
	movl	$1, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	ktraNgto, .-ktraNgto
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
