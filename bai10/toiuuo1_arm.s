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
	.global	demChuSo
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	demChuSo, %function
demChuSo:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #0
	ble	.L4
	push	{r4, r5}
	ands	r0, #0
	movw	r2, #26215
	movt	r2, 26214
.L3:
	adds	r0, r0, #1
	smull	r4, r5, r3, r2
	asrs	r3, r3, #31
	rsb	r3, r3, r5, asr #2
	cmp	r3, #0
	bgt	.L3
	pop	{r4, r5}
	bx	lr
.L4:
	movs	r0, #0
	bx	lr
	.size	demChuSo, .-demChuSo
	.align	1
	.global	demChuSoLe
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	demChuSoLe, %function
demChuSoLe:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #0
	ble	.L14
	push	{r4, r5}
	movs	r0, #0
	movw	r2, #26215
	movt	r2, 26214
.L13:
	tst	r3, #1
	it	ne
	addne	r0, r0, #1
	smull	r4, r5, r3, r2
	asrs	r3, r3, #31
	rsb	r3, r3, r5, asr #2
	cmp	r3, #0
	bgt	.L13
	pop	{r4, r5}
	bx	lr
.L14:
	movs	r0, #0
	bx	lr
	.size	demChuSoLe, .-demChuSoLe
	.align	1
	.global	tbc
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	tbc, %function
tbc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	bl	demChuSo(PLT)
	vmov	s0, r0	@ int
	cmp	r4, #0
	it	le
	movle	r2, #0
	ble	.L21
	movs	r2, #0
	movw	r5, #26215
	movt	r5, 26214
	movs	r6, #10
.L22:
	smull	r0, r1, r4, r5
	asrs	r3, r4, #31
	rsb	r3, r3, r1, asr #2
	mls	r4, r6, r3, r4
	add	r2, r2, r4
	mov	r4, r3
	cmp	r3, #0
	bgt	.L22
.L21:
	vmov	s15, r2	@ int
	vcvt.f32.s32	s15, s15
	vcvt.f32.s32	s0, s0
	vdiv.f32	s0, s15, s0
	pop	{r4, r5, r6, pc}
	.size	tbc, .-tbc
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
	push	{r4, lr}
	ldr	r4, .L28
.LPIC0:
	add	r4, pc
	ldr	r0, [r4]
	bl	demChuSo(PLT)
	mov	r2, r0
	ldr	r1, .L28+4
.LPIC1:
	add	r1, pc
	movs	r0, #1
	bl	__printf_chk(PLT)
	ldr	r0, [r4]
	bl	demChuSoLe(PLT)
	mov	r2, r0
	ldr	r1, .L28+8
.LPIC3:
	add	r1, pc
	movs	r0, #1
	bl	__printf_chk(PLT)
	ldr	r0, [r4]
	bl	tbc(PLT)
	vcvt.f64.f32	d7, s0
	vmov	r2, r3, d7
	ldr	r1, .L28+12
.LPIC5:
	add	r1, pc
	movs	r0, #1
	bl	__printf_chk(PLT)
	movs	r0, #0
	pop	{r4, pc}
.L29:
	.align	2
.L28:
	.word	.LANCHOR0-(.LPIC0+4)
	.word	.LC0-(.LPIC1+4)
	.word	.LC1-(.LPIC3+4)
	.word	.LC2-(.LPIC5+4)
	.size	main, .-main
	.global	n
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	n, %object
	.size	n, 4
n:
	.word	1000000
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"So chu so cua n: %d\012\000"
	.space	3
.LC1:
	.ascii	"So chu so le cua n: %d\012\000"
.LC2:
	.ascii	"TBC cac chu so cua n: %0.2f\000"
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
