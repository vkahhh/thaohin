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
	.ascii	"%10d\000"
	.align	2
.LC1:
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
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	bl	clock(PLT)
	str	r0, [r7, #8]
	mov	r3, #11520
	movt	r3, 305
	str	r3, [r7, #4]
	b	.L2
.L4:
	ldr	r0, [r7, #4]
	bl	ktraNgto(PLT)
	mov	r3, r0
	tst	r3, r3
	beq	.L3
	ldr	r0, [r7, #4]
	bl	tongCsNgto(PLT)
	mov	r3, r0
	tst	r3, r3
	beq	.L3
	ldr	r1, [r7, #4]
	ldr	r3, .L6+8
.LPIC0:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
.L3:
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L2:
	ldr	r2, [r7, #4]
	movw	r3, #52081
	movt	r3, 1186
	cmp	r2, r3
	ble	.L4
	bl	clock(PLT)
	str	r0, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vldr.64	d5, .L6
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [r7, #16]
	ldrd	r2, [r7, #16]
	ldr	r1, .L6+12
.LPIC1:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L7:
	.align	3
.L6:
	.word	0
	.word	1093567616
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.size	main, .-main
	.align	1
	.global	tongCsNgto
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	tongCsNgto, %function
tongCsNgto:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L9
.L10:
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
.L9:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bgt	.L10
	ldr	r0, [r7, #12]
	bl	ktraNgto(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L11
	movs	r3, #1
	b	.L12
.L11:
	movs	r3, #0
.L12:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	tongCsNgto, .-tongCsNgto
	.global	__aeabi_idivmod
	.align	1
	.global	ktraNgto
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	ktraNgto, %function
ktraNgto:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	vpush.64	{d8}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bgt	.L14
	movs	r3, #0
	b	.L15
.L14:
	movs	r3, #2
	str	r3, [r7, #12]
	b	.L16
.L18:
	ldr	r3, [r7, #4]
	ldr	r1, [r7, #12]
	mov	r0, r3
	bl	__aeabi_idivmod(PLT)
	mov	r3, r1
	cmp	r3, #0
	bne	.L17
	movs	r3, #0
	b	.L15
.L17:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L16:
	ldr	r3, [r7, #12]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d8, s15
	ldr	r3, [r7, #4]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vmov.f64	d0, d7
	bl	sqrt(PLT)
	vmov.f64	d7, d0
	vcmpe.f64	d8, d7
	vmrs	APSR_nzcv, FPSCR
	bls	.L18
	movs	r3, #1
.L15:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	vldm	sp!, {d8}
	pop	{r7, pc}
	.size	ktraNgto, .-ktraNgto
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
