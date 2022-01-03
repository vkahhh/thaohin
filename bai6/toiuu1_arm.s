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
	.file	"toiuu.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"\012 Nhap vao so Km: \000"
	.align	2
.LC1:
	.ascii	"%f\000"
	.align	2
.LC2:
	.ascii	"\012 So tien phai tra: %0.3f VND\000"
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
	ldr	r4, .L13+24
.LPIC0:
	add	r4, pc
	ldr	r3, .L13+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	and	r3, #0
	str	r3, [r7, #4]	@ float
	ldr	r3, .L13+32
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	mov	r3, r7
	mov	r1, r3
	ldr	r3, .L13+36
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	bl	clock(PLT)
	str	r0, [r7, #8]
	vldr.32	s15, [r7]
	vmov.f32	s14, #1.0e+0
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bhi	.L12
	vldr.32	s15, [r7]
	vldr.32	s14, .L13+8
	vmul.f32	s15, s15, s14
	vstr.32	s15, [r7, #4]
	b	.L4
.L12:
	vldr.32	s15, [r7]
	vmov.f32	s14, #3.0e+1
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bhi	.L5
	vldr.32	s15, [r7]
	vmov.f32	s14, #1.0e+0
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L5
	vldr.32	s15, [r7]
	vmov.f32	s14, #1.0e+0
	vsub.f32	s15, s15, s14
	vldr.32	s14, .L13+12
	vmul.f32	s15, s15, s14
	vldr.32	s14, .L13+8
	vadd.f32	s15, s15, s14
	vstr.32	s15, [r7, #4]
	b	.L4
.L5:
	vldr.32	s15, [r7]
	vmov.f32	s14, #3.0e+1
	vsub.f32	s15, s15, s14
	vldr.32	s14, .L13+16
	vmul.f32	s15, s15, s14
	vldr.32	s14, .L13+20
	vadd.f32	s15, s15, s14
	vstr.32	s15, [r7, #4]
.L4:
	vldr.32	s15, [r7, #4]
	vcvt.f64.f32	d7, s15
	vmov	r2, r3, d7
	ldr	r1, .L13+40
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
	vldr.64	d5, .L13
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [r7, #16]
	ldrd	r2, [r7, #16]
	ldr	r1, .L13+44
.LPIC4:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	nop
	ldr	r3, .L13+28
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #28]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L8
	bl	__stack_chk_fail(PLT)
.L8:
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L14:
	.align	3
.L13:
	.word	0
	.word	1093567616
	.word	1167867904
	.word	1165623296
	.word	1161527296
	.word	1206670336
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC0-(.LPIC1+4)
	.word	.LC1-(.LPIC2+4)
	.word	.LC2-(.LPIC3+4)
	.word	.LC3-(.LPIC4+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
