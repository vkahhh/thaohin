	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 1
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"magoc.c"
	.text
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
	@ link register save eliminated.
	push	{r4, r5}
	movw	r2, #26215
	movt	r2, 26214
	smull	r2, r3, r0, r2
	asrs	r1, r3, #2
	asrs	r3, r0, #31
	subs	r4, r1, r3
	movs	r2, #10
	mls	r4, r2, r4, r0
	subs	r1, r1, r3
.L2:
	tst	r1, r1
	ble	.L7
	movw	r2, #26215
	movt	r2, 26214
	smull	r2, r3, r1, r2
	asrs	r0, r3, #2
	asrs	r2, r1, #31
	subs	r3, r0, r2
	movs	r5, #10
	mls	r3, r5, r3, r1
	subs	r1, r0, r2
	cmp	r4, r3
	ble	.L5
	mov	r4, r3
	b	.L2
.L7:
	movs	r0, #1
.L3:
	pop	{r4, r5}
	bx	lr
.L5:
	movs	r0, #0
	b	.L3
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
	@ link register save eliminated.
	mov	r1, r0
	movs	r0, #0
	cmp	r1, #0
	ble	.L14
	push	{r4}
.L10:
	movw	r2, #26215
	movt	r2, 26214
	smull	r2, r3, r1, r2
	asrs	r2, r3, #2
	asrs	r3, r1, #31
	subs	r0, r2, r3
	movs	r4, #10
	mls	r0, r4, r0, r1
	subs	r1, r2, r3
	cmp	r1, #0
	bgt	.L10
	ldr	r4, [sp], #4
	bx	lr
.L14:
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	bl	firstDigit(PLT)
	movs	r6, #0
.L16:
	cmp	r4, #0
	ble	.L20
	movw	r2, #26215
	movt	r2, 26214
	smull	r2, r3, r4, r2
	asrs	r1, r3, #2
	asrs	r2, r4, #31
	subs	r3, r1, r2
	movs	r5, #10
	mls	r3, r5, r3, r4
	subs	r4, r1, r2
	cmp	r0, r3
	bne	.L16
	adds	r6, r6, #1
	b	.L16
.L20:
	mov	r0, r6
	pop	{r4, r5, r6, pc}
	.size	countFirstDigit, .-countFirstDigit
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
	mov	r4, r0
	ldr	r5, .L23+8
.LPIC0:
	add	r5, pc
	ldr	r0, [r5]
	bl	firstDigit(PLT)
	mov	r2, r0
	ldr	r1, .L23+12
.LPIC1:
	add	r1, pc
	movs	r0, #1
	bl	__printf_chk(PLT)
	ldr	r0, [r5]
	bl	countFirstDigit(PLT)
	mov	r2, r0
	ldr	r1, .L23+16
.LPIC3:
	add	r1, pc
	movs	r0, #1
	bl	__printf_chk(PLT)
	bl	clock(PLT)
	subs	r0, r0, r4
	vmov	s15, r0	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d6, .L23
	vdiv.f64	d7, d7, d6
	vmov	r2, r3, d7
	ldr	r1, .L23+20
.LPIC4:
	add	r1, pc
	movs	r0, #1
	bl	__printf_chk(PLT)
	movs	r0, #0
	pop	{r3, r4, r5, pc}
.L24:
	.align	3
.L23:
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
