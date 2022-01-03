	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
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
	subs	r2, r0, #0
	ble	.L4
	movw	r1, #52429
	movt	r1, 52428
	ands	r0, #0
.L3:
	umull	r2, r3, r2, r1
	adds	r0, r0, #1
	lsrs	r2, r3, #3
	bne	.L3
	bx	lr
.L4:
	movs	r0, #0
	bx	lr
	.size	demChuSo, .-demChuSo
	.align	1
	.p2align 2,,3
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
	ble	.L11
	movw	r2, #52429
	movt	r2, 52428
	movs	r0, #0
	push	{r4, r5}
.L10:
	umull	r4, r5, r3, r2
	lsls	r3, r3, #31
	it	mi
	addmi	r0, r0, #1
	lsrs	r3, r5, #3
	bne	.L10
	pop	{r4, r5}
	bx	lr
.L11:
	movs	r0, #0
	bx	lr
	.size	demChuSoLe, .-demChuSoLe
	.align	1
	.p2align 2,,3
	.global	tbc
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	tbc, %function
tbc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	ble	.L24
	push	{r4, r5, r6, r7}
	movw	r4, #52429
	movt	r4, 52428
	mov	r2, r0
	movs	r1, #0
.L22:
	umull	r2, r3, r2, r4
	adds	r1, r1, #1
	lsrs	r2, r3, #3
	bne	.L22
	movw	r6, #52429
	movt	r6, 52428
	movs	r7, #10
.L23:
	umull	r4, r5, r0, r6
	lsrs	r3, r5, #3
	mls	r4, r7, r3, r0
	mov	r0, r3
	add	r2, r2, r4
	cmp	r3, #0
	bne	.L23
	vmov	s15, r2	@ int
	vmov	s14, r1	@ int
	vcvt.f32.s32	s15, s15
	pop	{r4, r5, r6, r7}
	vcvt.f32.s32	s0, s14
	vdiv.f32	s0, s15, s0
	bx	lr
.L24:
	vldr.32	s0, .L31
	vdiv.f32	s0, s0, s0
	bx	lr
.L32:
	.align	2
.L31:
	.word	0
	.size	tbc, .-tbc
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
	ldr	r3, .L53
.LPIC0:
	add	r3, pc
	ldr	r0, [r3]
	cmp	r0, #0
	it	le
	movle	r2, #0
	ble	.L34
	movw	r3, #52429
	movt	r3, 52428
	movs	r2, #0
.L35:
	umull	r0, r1, r0, r3
	adds	r2, r2, #1
	lsrs	r0, r1, #3
	bne	.L35
.L34:
	ldr	r1, .L53+4
	movs	r0, #1
.LPIC1:
	add	r1, pc
	bl	__printf_chk(PLT)
	ldr	r3, .L53+8
.LPIC2:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	it	le
	movle	r2, #0
	ble	.L36
	movw	r4, #52429
	movt	r4, 52428
	movs	r2, #0
.L38:
	umull	r0, r1, r3, r4
	lsls	r3, r3, #31
	it	mi
	addmi	r2, r2, #1
	lsrs	r3, r1, #3
	bne	.L38
.L36:
	ldr	r1, .L53+12
	movs	r0, #1
.LPIC3:
	add	r1, pc
	bl	__printf_chk(PLT)
	ldr	r3, .L53+16
.LPIC4:
	add	r3, pc
	ldr	r1, [r3]
	cmp	r1, #0
	ble	.L44
	movw	r0, #52429
	movt	r0, 52428
	mov	r2, r1
	movs	r4, #0
.L40:
	umull	r2, r3, r2, r0
	adds	r4, r4, #1
	lsrs	r2, r3, #3
	bne	.L40
	movw	r5, #52429
	movt	r5, 52428
	mov	ip, #10
.L41:
	umull	r6, r7, r1, r5
	lsrs	r3, r7, #3
	mls	r0, ip, r3, r1
	mov	r1, r3
	add	r2, r2, r0
	cmp	r3, #0
	bne	.L41
.L39:
	vmov	s15, r2	@ int
	ldr	r1, .L53+20
	vmov	s14, r4	@ int
	movs	r0, #1
	vcvt.f32.s32	s15, s15
.LPIC5:
	add	r1, pc
	vcvt.f32.s32	s14, s14
	vdiv.f32	s13, s15, s14
	vcvt.f64.f32	d7, s13
	vmov	r2, r3, d7
	bl	__printf_chk(PLT)
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, pc}
.L44:
	movs	r4, #0
	mov	r2, r4
	b	.L39
.L54:
	.align	2
.L53:
	.word	.LANCHOR0-(.LPIC0+4)
	.word	.LC0-(.LPIC1+4)
	.word	.LANCHOR0-(.LPIC2+4)
	.word	.LC1-(.LPIC3+4)
	.word	.LANCHOR0-(.LPIC4+4)
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
