	.file	"magoc.c"
	.text
	.section	.rodata
.LC0:
	.string	"Nhap n > 0: "
.LC1:
	.string	"%d"
.LC2:
	.string	"arr[%d] = "
	.text
	.globl	nhap
	.type	nhap, @function
nhap:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L2
.L3:
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
.L2:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L3
	movl	$0, -4(%rbp)
	jmp	.L4
.L5:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	addl	$1, -4(%rbp)
.L4:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L5
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	nhap, .-nhap
	.globl	ktra
	.type	ktra, @function
ktra:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L7
.L10:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-28(%rbp), %eax
	subl	$1, %eax
	subl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	addl	$1, -4(%rbp)
.L7:
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cmpl	%eax, -4(%rbp)
	jle	.L10
	movl	$1, %eax
.L9:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	ktra, .-ktra
	.section	.rodata
.LC3:
	.string	"Mang doi xung."
.LC4:
	.string	"Mang KHONG doi xung."
.LC6:
	.string	"time: %f"
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
	subq	$464, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	clock@PLT
	movq	%rax, -440(%rbp)
	leaq	-444(%rbp), %rdx
	leaq	-416(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	nhap
	movl	-444(%rbp), %edx
	leaq	-416(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ktra
	testb	%al, %al
	je	.L12
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	jmp	.L13
.L12:
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
.L13:
	call	clock@PLT
	movq	%rax, -432(%rbp)
	movq	-432(%rbp), %rax
	subq	-440(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC5(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -424(%rbp)
	movq	-424(%rbp), %rax
	movq	%rax, -456(%rbp)
	movsd	-456(%rbp), %xmm0
	leaq	.LC6(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC5:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
