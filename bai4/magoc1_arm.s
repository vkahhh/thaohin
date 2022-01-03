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
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	demChuSo.6023, %function
demChuSo.6023:
	@ Nested: function declared inside another function.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r7}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	ip, [r7]
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
	.size	demChuSo.6023, .-demChuSo.6023
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
	.align	2
.LC3:
	.ascii	"time: %f\000"
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #0
	ldr	r4, .L8+8
.LPIC0:
	add	r4, pc
	ldr	r3, .L8+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	add	r3, r7, #48
	str	r3, [r7]
	movw	r3, #34464
	movt	r3, 1
	str	r3, [r7, #4]
	bl	clock(PLT)
	str	r0, [r7, #8]
	mov	r3, r7
	mov	ip, r3
	ldr	r0, [r7, #4]
	bl	demChuSo.6023(PLT)
	mov	r3, r0
	mov	r1, r3
	ldr	r3, .L8+16
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	mov	r3, r7
	mov	ip, r3
	ldr	r0, [r7, #4]
	bl	demChuSoLe.6030(PLT)
	mov	r3, r0
	mov	r1, r3
	ldr	r3, .L8+20
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	mov	r3, r7
	mov	ip, r3
	ldr	r0, [r7, #4]
	bl	tbc.6038(PLT)
	vmov.f32	s15, s0
	vcvt.f64.f32	d7, s15
	vmov	r2, r3, d7
	ldr	r1, .L8+24
.LPIC3:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	bl	clock(PLT)
	str	r0, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vldr.64	d5, .L8
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [r7, #16]
	ldrd	r2, [r7, #16]
	ldr	r1, .L8+28
.LPIC4:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	movs	r3, #0
	mov	r0, r3
	ldr	r3, .L8+12
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #28]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L7
	bl	__stack_chk_fail(PLT)
.L7:
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L9:
	.align	3
.L8:
	.word	0
	.word	1093567616
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC0-(.LPIC1+4)
	.word	.LC1-(.LPIC2+4)
	.word	.LC2-(.LPIC3+4)
	.word	.LC3-(.LPIC4+4)
	.size	main, .-main
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	demChuSoLe.6030, %function
demChuSoLe.6030:
	@ Nested: function declared inside another function.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r7}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	ip, [r7]
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L11
.L13:
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
	beq	.L12
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L12:
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
	bgt	.L13
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r7}
	bx	lr
	.size	demChuSoLe.6030, .-demChuSoLe.6030
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	tbc.6038, %function
tbc.6038:
	@ Nested: function declared inside another function.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r2, ip
	str	ip, [r7]
	mov	r3, #0
	str	r3, [r7, #16]	@ float
	mov	ip, r2
	ldr	r0, [r7, #4]
	bl	demChuSo.6023(PLT)
	str	r0, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L16
.L17:
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
.L16:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bgt	.L17
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
	.size	tbc.6038, .-tbc.6038
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
