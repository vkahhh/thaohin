	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"magoc.c"
	.text
	.global	n
	.data
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.word	48915791
	.text
	.align	1
	.global	ktra
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	ktra, %function
ktra:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r7}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movw	r2, #26215
	movt	r2, 26214
	smull	r1, r2, r3, r2
	asrs	r1, r2, #2
	asrs	r2, r3, #31
	subs	r2, r1, r2
	movs	r1, #10
	mul	r2, r1, r2
	subs	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #4]
	movw	r3, #26215
	movt	r3, 26214
	smull	r3, r4, r2, r3
	asrs	r1, r4, #2
	asrs	r3, r2, #31
	subs	r3, r1, r3
	str	r3, [r7, #4]
	b	.L2
.L5:
	ldr	r3, [r7, #4]
	movw	r2, #26215
	movt	r2, 26214
	smull	r1, r2, r3, r2
	asrs	r1, r2, #2
	asrs	r2, r3, #31
	subs	r2, r1, r2
	movs	r1, #10
	mul	r2, r1, r2
	subs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #4]
	movw	r3, #26215
	movt	r3, 26214
	smull	r3, r4, r2, r3
	asrs	r1, r4, #2
	asrs	r3, r2, #31
	subs	r3, r1, r3
	str	r3, [r7, #4]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	blt	.L3
	ands	r3, #0
	b	.L4
.L3:
	ldr	r3, [r7, #12]
	str	r3, [r7, #8]
.L2:
	ldr	r3, [r7, #4]
	tst	r3, r3
	bgt	.L5
	movs	r3, #1
.L4:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r7}
	bx	lr
	.size	ktra, .-ktra
	.align	1
	.global	firstDigit
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	firstDigit, %function
firstDigit:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r7}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L7
.L8:
	ldr	r3, [r7, #4]
	movw	r2, #26215
	movt	r2, 26214
	smull	r1, r2, r3, r2
	asrs	r1, r2, #2
	asrs	r2, r3, #31
	subs	r2, r1, r2
	movs	r1, #10
	mul	r2, r1, r2
	subs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #4]
	movw	r3, #26215
	movt	r3, 26214
	smull	r3, r4, r2, r3
	asrs	r1, r4, #2
	asrs	r3, r2, #31
	subs	r3, r1, r3
	str	r3, [r7, #4]
.L7:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bgt	.L8
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r7}
	bx	lr
	.size	firstDigit, .-firstDigit
	.align	1
	.global	countFirstDigit
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	countFirstDigit, %function
countFirstDigit:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	firstDigit(PLT)
	str	r0, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L11
.L12:
	ldr	r3, [r7, #4]
	movw	r2, #26215
	movt	r2, 26214
	smull	r1, r2, r3, r2
	asrs	r1, r2, #2
	asrs	r2, r3, #31
	subs	r2, r1, r2
	movs	r1, #10
	mul	r2, r1, r2
	subs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #4]
	movw	r3, #26215
	movt	r3, 26214
	smull	r3, r4, r2, r3
	asrs	r1, r4, #2
	asrs	r3, r2, #31
	subs	r3, r1, r3
	str	r3, [r7, #4]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bne	.L11
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L11:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bgt	.L12
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	countFirstDigit, .-countFirstDigit
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Chu so dau tien cua n: %d\012\000"
	.align	2
.LC1:
	.ascii	"So lan xuat hien cua chu so dau tien cua n: %d\012\000"
	.align	2
.LC2:
	.ascii	"chuong trinh chay mat %lf\000"
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	bl	clock(PLT)
	str	r0, [r7]
	ldr	r3, .L16+8
.LPIC0:
	add	r3, pc
	ldr	r3, [r3]
	mov	r0, r3
	bl	firstDigit(PLT)
	mov	r3, r0
	mov	r1, r3
	ldr	r3, .L16+12
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r3, .L16+16
.LPIC2:
	add	r3, pc
	ldr	r3, [r3]
	mov	r0, r3
	bl	countFirstDigit(PLT)
	mov	r3, r0
	mov	r1, r3
	ldr	r3, .L16+20
.LPIC3:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	bl	clock(PLT)
	str	r0, [r7, #4]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	subs	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vldr.64	d5, .L16
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [r7, #8]
	ldrd	r2, [r7, #8]
	ldr	r1, .L16+24
.LPIC4:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L17:
	.align	3
.L16:
	.word	0
	.word	1093567616
	.word	n-(.LPIC0+4)
	.word	.LC0-(.LPIC1+4)
	.word	n-(.LPIC2+4)
	.word	.LC1-(.LPIC3+4)
	.word	.LC2-(.LPIC4+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
