	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"magoc.c"
	.text
	.align	1
	.p2align 2,,3
	.global	ktra
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	ktra, %function
ktra:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9}
	movw	r6, #26215
	movt	r6, 26214
	asrs	r3, r0, #31
	movs	r5, #10
	smull	r8, r9, r0, r6
	asr	r2, r9, #2
	sub	ip, r2, r3
	mov	r2, ip
	tst	r2, r2
	mls	ip, r5, ip, r0
	ble	.L5
	smull	r6, r7, r2, r6
	movw	r1, #34079
	asrs	r4, r2, #31
	movt	r1, 20971
	smull	r0, r1, r0, r1
	rsb	r4, r4, r7, asr #2
	mls	r4, r5, r4, r2
	rsb	r3, r3, r1, asr #5
	cmp	ip, r4
	ble	.L7
	movw	r6, #52429
	movt	r6, 52428
	b	.L3
.L4:
	lsrs	r2, r1, #3
	mls	r2, r5, r2, r3
	lsrs	r3, r1, #3
	cmp	r2, r4
	mov	r4, r2
	bge	.L7
.L3:
	umull	r0, r1, r3, r6
	cmp	r3, #0
	bne	.L4
.L5:
	movs	r0, #1
	pop	{r4, r5, r6, r7, r8, r9}
	bx	lr
.L7:
	movs	r0, #0
	pop	{r4, r5, r6, r7, r8, r9}
	bx	lr
	.size	ktra, .-ktra
	.align	1
	.p2align 2,,3
	.global	firstDigit
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	firstDigit, %function
firstDigit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	ble	.L13
	movw	r1, #52429
	movt	r1, 52428
	b	.L12
.L14:
	mov	r0, r3
.L12:
	umull	r2, r3, r0, r1
	lsrs	r3, r3, #3
	bne	.L14
	bx	lr
.L13:
	movs	r0, #0
	bx	lr
	.size	firstDigit, .-firstDigit
	.align	1
	.p2align 2,,3
	.global	countFirstDigit
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	countFirstDigit, %function
countFirstDigit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #0
	ble	.L20
	push	{r4, r5, r6, r7}
	movw	r2, #52429
	mov	r6, r3
	movt	r2, 52428
	b	.L17
.L21:
	mov	r6, r0
.L17:
	umull	r0, r1, r6, r2
	lsrs	r0, r1, #3
	bne	.L21
	movw	r1, #52429
	movt	r1, 52428
	movs	r7, #10
.L19:
	umull	r4, r5, r3, r1
	lsrs	r2, r5, #3
	mls	r2, r7, r2, r3
	lsrs	r3, r5, #3
	cmp	r2, r6
	it	eq
	addeq	r0, r0, #1
	cmp	r3, #0
	bne	.L19
	pop	{r4, r5, r6, r7}
	bx	lr
.L20:
	movs	r0, #0
	bx	lr
	.size	countFirstDigit, .-countFirstDigit
	.section	.text.startup,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	bl	clock(PLT)
	ldr	r3, .L40+8
.LPIC0:
	add	r3, pc
	ldr	r2, [r3]
	cmp	r2, #0
	it	le
	movle	r2, #0
	mov	r6, r0
	ble	.L28
	movw	r4, #52429
	movt	r4, 52428
	b	.L29
.L35:
	mov	r2, r3
.L29:
	umull	r0, r1, r2, r4
	lsrs	r3, r1, #3
	bne	.L35
.L28:
	ldr	r1, .L40+12
	movs	r0, #1
.LPIC1:
	add	r1, pc
	bl	__printf_chk(PLT)
	ldr	r3, .L40+16
.LPIC2:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	it	le
	movle	r2, #0
	ble	.L30
	movw	r1, #52429
	mov	r0, r3
	movt	r1, 52428
	b	.L31
.L37:
	mov	r0, r2
.L31:
	umull	r4, r5, r0, r1
	lsrs	r2, r5, #3
	bne	.L37
	movw	r7, #52429
	movt	r7, 52428
	mov	ip, #10
.L33:
	umull	r4, r5, r3, r7
	lsrs	r1, r5, #3
	mls	r1, ip, r1, r3
	lsrs	r3, r5, #3
	cmp	r0, r1
	it	eq
	addeq	r2, r2, #1
	cmp	r3, #0
	bne	.L33
.L30:
	ldr	r1, .L40+20
	movs	r0, #1
.LPIC3:
	add	r1, pc
	bl	__printf_chk(PLT)
	bl	clock(PLT)
	vldr.64	d6, .L40
	ldr	r1, .L40+24
.LPIC4:
	add	r1, pc
	subs	r6, r0, r6
	movs	r0, #1
	vmov	s15, r6	@ int
	vcvt.f64.s32	d7, s15
	vmul.f64	d7, d7, d6
	vmov	r2, r3, d7
	bl	__printf_chk(PLT)
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, pc}
.L41:
	.align	3
.L40:
	.word	2696277389
	.word	1051772663
	.word	.LANCHOR0-(.LPIC0+4)
	.word	.LC0-(.LPIC1+4)
	.word	.LANCHOR0-(.LPIC2+4)
	.word	.LC1-(.LPIC3+4)
	.word	.LC2-(.LPIC4+4)
	.size	main, .-main
	.global	n
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	n, %object
	.size	n, 4
n:
	.word	48915791
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Chu so dau tien cua n: %d\012\000"
	.space	1
.LC1:
	.ascii	"So lan xuat hien cua chu so dau tien cua n: %d\012\000"
.LC2:
	.ascii	"chuong trinh chay mat %lf\000"
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
