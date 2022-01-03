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
	.file	"goc.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Phuong trinh vo nghiem!\000"
	.align	2
.LC1:
	.ascii	"Phuong trinh co mot nghiem: x = %f\000"
	.align	2
.LC2:
	.ascii	"Phuong trinh co 2 nghiem la: x1 = %f va x2 = %f\000"
	.align	2
.LC3:
	.ascii	"Phong trinh co nghiem kep: x1 = x2 = %f\000"
	.text
	.align	1
	.global	giaiPTBac2
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	giaiPTBac2, %function
giaiPTBac2:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	vpush.64	{d8}
	sub	sp, sp, #32
	add	r7, sp, #8
	vstr.32	s0, [r7, #12]
	vstr.32	s1, [r7, #8]
	vstr.32	s2, [r7, #4]
	vldr.32	s15, [r7, #12]
	vcmp.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bne	.L2
	vldr.32	s15, [r7, #8]
	vcmp.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bne	.L3
	ldr	r3, .L11
.LPIC0:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	b	.L1
.L3:
	vldr.32	s15, [r7, #4]
	vneg.f32	s13, s15
	vldr.32	s14, [r7, #8]
	vdiv.f32	s15, s13, s14
	vcvt.f64.f32	d7, s15
	vmov	r2, r3, d7
	ldr	r1, .L11+4
.LPIC1:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	b	.L1
.L2:
	vldr.32	s14, [r7, #8]
	vldr.32	s15, [r7, #8]
	vmul.f32	s14, s14, s15
	vldr.32	s15, [r7, #12]
	vmov.f32	s13, #4.0e+0
	vmul.f32	s13, s15, s13
	vldr.32	s15, [r7, #4]
	vmul.f32	s15, s13, s15
	vsub.f32	s15, s14, s15
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	ble	.L10
	vldr.32	s15, [r7, #8]
	vneg.f32	s15, s15
	vcvt.f64.f32	d8, s15
	vldr.32	s14, [r7, #8]
	vldr.32	s15, [r7, #8]
	vmul.f32	s14, s14, s15
	vldr.32	s15, [r7, #12]
	vmov.f32	s13, #4.0e+0
	vmul.f32	s13, s15, s13
	vldr.32	s15, [r7, #4]
	vmul.f32	s15, s13, s15
	vsub.f32	s15, s14, s15
	vcvt.f64.f32	d7, s15
	vmov.f64	d0, d7
	bl	sqrt(PLT)
	vmov.f64	d7, d0
	vadd.f64	d5, d8, d7
	vldr.32	s15, [r7, #12]
	vadd.f32	s15, s15, s15
	vcvt.f64.f32	d6, s15
	vdiv.f64	d7, d5, d6
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [r7, #16]
	vldr.32	s15, [r7, #8]
	vneg.f32	s15, s15
	vcvt.f64.f32	d8, s15
	vldr.32	s14, [r7, #8]
	vldr.32	s15, [r7, #8]
	vmul.f32	s14, s14, s15
	vldr.32	s15, [r7, #12]
	vmov.f32	s13, #4.0e+0
	vmul.f32	s13, s15, s13
	vldr.32	s15, [r7, #4]
	vmul.f32	s15, s13, s15
	vsub.f32	s15, s14, s15
	vcvt.f64.f32	d7, s15
	vmov.f64	d0, d7
	bl	sqrt(PLT)
	vmov.f64	d7, d0
	vsub.f64	d5, d8, d7
	vldr.32	s15, [r7, #12]
	vadd.f32	s15, s15, s15
	vcvt.f64.f32	d6, s15
	vdiv.f64	d7, d5, d6
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [r7, #20]
	vldr.32	s15, [r7, #16]
	vcvt.f64.f32	d6, s15
	vldr.32	s15, [r7, #20]
	vcvt.f64.f32	d7, s15
	vstr.64	d7, [sp]
	vmov	r2, r3, d6
	ldr	r1, .L11+8
.LPIC2:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	b	.L1
.L10:
	vldr.32	s14, [r7, #8]
	vldr.32	s15, [r7, #8]
	vmul.f32	s14, s14, s15
	vldr.32	s15, [r7, #12]
	vmov.f32	s13, #4.0e+0
	vmul.f32	s13, s15, s13
	vldr.32	s15, [r7, #4]
	vmul.f32	s15, s13, s15
	vsub.f32	s15, s14, s15
	vcmp.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bne	.L8
	vldr.32	s15, [r7, #8]
	vneg.f32	s13, s15
	vldr.32	s15, [r7, #12]
	vadd.f32	s14, s15, s15
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [r7, #16]
	vldr.32	s15, [r7, #16]
	vcvt.f64.f32	d7, s15
	vmov	r2, r3, d7
	ldr	r1, .L11+12
.LPIC3:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	b	.L1
.L8:
	ldr	r3, .L11+16
.LPIC4:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
.L1:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	vldm	sp!, {d8}
	pop	{r7, pc}
.L12:
	.align	2
.L11:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	.LC2-(.LPIC2+4)
	.word	.LC3-(.LPIC3+4)
	.word	.LC0-(.LPIC4+4)
	.size	giaiPTBac2, .-giaiPTBac2
	.section	.rodata
	.align	2
.LC4:
	.ascii	"Nhap he so bac 2, a = \000"
	.align	2
.LC5:
	.ascii	"%f\000"
	.align	2
.LC6:
	.ascii	"Nhap he so bac 1, b = \000"
	.align	2
.LC7:
	.ascii	"Nhap so hang tu do, c = \000"
	.align	2
.LC8:
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
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #44
	add	r7, sp, #0
	ldr	r4, .L16+8
.LPIC5:
	add	r4, pc
	ldr	r3, .L16+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	ldr	r3, .L16+16
.LPIC6:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	adds	r3, r7, #4
	mov	r1, r3
	ldr	r3, .L16+20
.LPIC7:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	ldr	r3, .L16+24
.LPIC8:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	add	r3, r7, #8
	mov	r1, r3
	ldr	r3, .L16+28
.LPIC9:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	ldr	r3, .L16+32
.LPIC10:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	add	r3, r7, #12
	mov	r1, r3
	ldr	r3, .L16+36
.LPIC11:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	bl	clock(PLT)
	str	r0, [r7, #16]
	vldr.32	s15, [r7, #4]
	vldr.32	s14, [r7, #8]
	vldr.32	s13, [r7, #12]
	vmov.f32	s2, s13
	vmov.f32	s1, s14
	vmov.f32	s0, s15
	bl	giaiPTBac2(PLT)
	bl	clock(PLT)
	str	r0, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	subs	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vldr.64	d5, .L16
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [r7, #24]
	ldrd	r2, [r7, #24]
	ldr	r1, .L16+40
.LPIC12:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	ands	r3, #0
	adds	r3, #1
	mov	r0, r3
	ldr	r3, .L16+12
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #36]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L15
	bl	__stack_chk_fail(PLT)
.L15:
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L17:
	.align	3
.L16:
	.word	0
	.word	1093567616
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC4-(.LPIC6+4)
	.word	.LC5-(.LPIC7+4)
	.word	.LC6-(.LPIC8+4)
	.word	.LC5-(.LPIC9+4)
	.word	.LC7-(.LPIC10+4)
	.word	.LC5-(.LPIC11+4)
	.word	.LC8-(.LPIC12+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
