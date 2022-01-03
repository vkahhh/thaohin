	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 4
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"magoc.c"
	.text
	.global	__aeabi_idivmod
	.align	1
	.global	ktra
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	ktra, %function
ktra:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r1, #10
	mov	r4, r0
	bl	__aeabi_idivmod(PLT)
	ldr	r3, .L6
	asrs	r0, r4, #31
	smull	r6, r7, r4, r3
	ands	r6, #10
	rsb	r0, r0, r7, asr #2
.L2:
	tst	r0, r0
	bgt	.L4
	movs	r0, #1
.L3:
	pop	{r3, r4, r5, r6, r7, pc}
.L4:
	smull	r4, r5, r0, r3
	asrs	r4, r0, #31
	asrs	r5, r5, #2
	subs	r2, r5, r4
	mls	r2, r6, r2, r0
	subs	r0, r5, r4
	cmp	r1, r2
	ble	.L5
	mov	r1, r2
	b	.L2
.L5:
	movs	r0, #0
	b	.L3
.L7:
	.align	2
.L6:
	.word	1717986919
	.size	ktra, .-ktra
	.align	1
	.global	firstDigit
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	firstDigit, %function
firstDigit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r3, r0
	ldr	r4, .L11
	movs	r0, #0
	movs	r5, #10
.L9:
	cmp	r3, #0
	bgt	.L10
	pop	{r4, r5, pc}
.L10:
	smull	r0, r1, r3, r4
	asrs	r2, r3, #31
	asrs	r1, r1, #2
	subs	r0, r1, r2
	mls	r0, r5, r0, r3
	subs	r3, r1, r2
	b	.L9
.L12:
	.align	2
.L11:
	.word	1717986919
	.size	firstDigit, .-firstDigit
	.align	1
	.global	countFirstDigit
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	countFirstDigit, %function
countFirstDigit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0
	bl	firstDigit(PLT)
	ldr	r6, .L17
	movs	r3, #0
	movs	r7, #10
.L14:
	cmp	r4, #0
	bgt	.L16
	mov	r0, r3
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L16:
	smull	r8, r9, r4, r6
	asrs	r1, r4, #31
	asr	r5, r9, #2
	subs	r2, r5, r1
	mls	r2, r7, r2, r4
	subs	r4, r5, r1
	cmp	r0, r2
	it	eq
	addeq	r3, r3, #1
	b	.L14
.L18:
	.align	2
.L17:
	.word	1717986919
	.size	countFirstDigit, .-countFirstDigit
	.section	.text.startup,"ax",%progbits
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	bl	clock(PLT)
	ldr	r5, .L20+8
.LPIC0:
	add	r5, pc
	mov	r4, r0
	ldr	r0, [r5]
	bl	firstDigit(PLT)
	ldr	r1, .L20+12
.LPIC1:
	add	r1, pc
	mov	r2, r0
	movs	r0, #1
	bl	__printf_chk(PLT)
	ldr	r0, [r5]
	bl	countFirstDigit(PLT)
	ldr	r1, .L20+16
.LPIC3:
	add	r1, pc
	mov	r2, r0
	movs	r0, #1
	bl	__printf_chk(PLT)
	bl	clock(PLT)
	vldr.64	d6, .L20
	ldr	r1, .L20+20
.LPIC4:
	add	r1, pc
	subs	r0, r0, r4
	vmov	s15, r0	@ int
	movs	r0, #1
	vcvt.f64.s32	d7, s15
	vdiv.f64	d7, d7, d6
	vmov	r2, r3, d7
	bl	__printf_chk(PLT)
	movs	r0, #0
	pop	{r3, r4, r5, pc}
.L21:
	.align	3
.L20:
	.word	0
	.word	1093567616
	.word	.LANCHOR0-(.LPIC0+4)
	.word	.LC0-(.LPIC1+4)
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
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC0:
	.ascii	"Chu so dau tien cua n: %d\012\000"
.LC1:
	.ascii	"So lan xuat hien cua chu so dau tien cua n: %d\012\000"
.LC2:
	.ascii	"chuong trinh chay mat %lf\000"
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
