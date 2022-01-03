	.file	"magoc.c"
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L2
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edi
	call	tinhGiaithua
	imull	-4(%rbp), %eax
	jmp	.L3
.L2:
	#movl	$1, %eax #5byte
	xorl	%eax, %eax #%eax ==0 
	inc %eax # +1 vao thanh ghi eax add  eax, 1 => addl $1, %eax
.L3:
	movq   %rbp, %rsp    #leave
	popq   %rbp 		#leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	tinhGiaithua, .-tinhGiaithua
	.section	.rodata
.LC0:
	.string	"Giai thua cua %d la: %d \n"
.LC1:
	.string	"Giai thua cua %d la: %d\n"
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
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	tinhGiaithua
	movl	%eax, %edx
	movl	-32(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	tinhGiaithua
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	call	clock@PLT
	movq	%rax, -16(%rbp) #q: quadword
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
	#movl	$1, %eax
	xorl	 %eax, %eax
	add	 $1, %eax # == inc %eax
	call	printf@PLT
	xorl	%eax, %eax
	movq   %rbp, %rsp    #leave
	popq   %rbp 		#leave
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
