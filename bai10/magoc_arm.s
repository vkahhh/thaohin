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
	.word	1000000
	.text
	.align	1
	.global	demChuSo
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	demChuSo, %function
demChuSo:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r7}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ands	r3, #0
	str	r3, [r7, #12]
	b	.L2
.L3:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r2, [r7, #4]
	movw	r3, #26215
	movt	r3, 26214
	smull	r3, r4, r2, r3
	asrs	r1, r4, #2
	asrs	r3, r2, #31
	subs	r3, r1, r3
	str	r3, [r7, #4]
.L2:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bgt	.L3
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r7}
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r7}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L6
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
	ldr	r3, [r7, #12]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L7
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L7:
	ldr	r2, [r7, #4]
	movw	r3, #26215
	movt	r3, 26214
	smull	r3, r4, r2, r3
	asrs	r1, r4, #2
	asrs	r3, r2, #31
	subs	r3, r1, r3
	str	r3, [r7, #4]
.L6:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bgt	.L8
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r7}
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
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, #0
	str	r3, [r7, #16]	@ float
	ldr	r0, [r7, #4]
	bl	demChuSo(PLT)
	str	r0, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L11
.L12:
	ldr	r2, [r7, #4]
	movw	r3, #26215
	movt	r3, 26214
	smull	r3, r4, r2, r3
	asrs	r1, r4, #2
	asrs	r3, r2, #31
	subs	r3, r1, r3
	movs	r1, #10
	mul	r3, r1, r3
	subs	r3, r2, r3
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #4]
	movw	r3, #26215
	movt	r3, 26214
	smull	r3, r4, r2, r3
	asrs	r1, r4, #2
	asrs	r3, r2, #31
	subs	r3, r1, r3
	str	r3, [r7, #4]
.L11:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bgt	.L12
	ldr	r3, [r7, #12]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	ldr	r3, [r7, #20]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [r7, #16]
	ldr	r3, [r7, #16]	@ float
	vmov	s15, r3
	vmov.f32	s0, s15
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	tbc, .-tbc
	.section	.rodata
	.align	2
.LC0:
	.ascii	"So chu so cua n: %d\012\000"
	.align	2
.LC1:
	.ascii	"So chu so le cua n: %d\012\000"
	.align	2
.LC2:
	.ascii	"TBC cac chu so cua n: %0.2f\000"
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	ldr	r4, .L17
.LPIC0:
	add	r4, pc
	ldr	r3, .L17+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [r7, #4]
	add	r3, r7, #24
	str	r3, [r7]
	ldr	r3, .L17+8
.LPIC1:
	add	r3, pc
	ldr	r3, [r3]
	mov	r0, r3
	bl	demChuSo(PLT)
	mov	r3, r0
	mov	r1, r3
	ldr	r3, .L17+12
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r3, .L17+16
.LPIC3:
	add	r3, pc
	ldr	r3, [r3]
	mov	r0, r3
	bl	demChuSoLe(PLT)
	mov	r3, r0
	mov	r1, r3
	ldr	r3, .L17+20
.LPIC4:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r3, .L17+24
.LPIC5:
	add	r3, pc
	ldr	r3, [r3]
	mov	r0, r3
	bl	tbc(PLT)
	vmov.f32	s15, s0
	vcvt.f64.f32	d7, s15
	vmov	r2, r3, d7
	ldr	r1, .L17+28
.LPIC6:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	movs	r3, #0
	mov	r0, r3
	ldr	r3, .L17+4
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #4]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L16
	bl	__stack_chk_fail(PLT)
.L16:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L18:
	.align	2
.L17:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.word	n-(.LPIC1+4)
	.word	.LC0-(.LPIC2+4)
	.word	n-(.LPIC3+4)
	.word	.LC1-(.LPIC4+4)
	.word	n-(.LPIC5+4)
	.word	.LC2-(.LPIC6+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
