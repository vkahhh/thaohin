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
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Nhap so nguyen n > 0: \000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.text
	.align	1
	.global	nhapN
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	nhapN, %function
nhapN:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	ldr	r4, .L6
.LPIC0:
	add	r4, pc
	ldr	r3, .L6+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [r7, #4]
	;mov	r3, #-1
	and	r3, #0
	sub	r3, #1
	str	r3, [r7]
	b	.L2
.L3:
	ldr	r3, .L6+8
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	mov	r3, r7
	mov	r1, r3
	ldr	r3, .L6+12
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
.L2:
	ldr	r3, [r7]
	cmp	r3, #0
	ble	.L3
	ldr	r3, [r7]
	mov	r0, r3
	ldr	r3, .L6+4
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #4]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L5
	bl	__stack_chk_fail(PLT)
.L5:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L7:
	.align	2
.L6:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC0-(.LPIC1+4)
	.word	.LC1-(.LPIC2+4)
	.size	nhapN, .-nhapN
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
	bgt	.L9
	movs	r3, #0
	b	.L10
.L9:
	movs	r3, #2
	str	r3, [r7, #12]
	b	.L11
.L13:
	ldr	r3, [r7, #4]
	ldr	r1, [r7, #12]
	mov	r0, r3
	bl	__aeabi_idivmod(PLT)
	mov	r3, r1
	cmp	r3, #0
	bne	.L12
	movs	r3, #0
	b	.L10
.L12:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L11:
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
	bls	.L13
	movs	r3, #1
.L10:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	vldm	sp!, {d8}
	pop	{r7, pc}
	.size	ktraNgto, .-ktraNgto
	.section	.rodata
	.align	2
.LC2:
	.ascii	"%d so nguyen to dau tien: \012\000"
	.align	2
.LC3:
	.ascii	"%d, \000"
	.text
	.align	1
	.global	lietKeNgto
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	lietKeNgto, %function
lietKeNgto:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r1, [r7, #4]
	ldr	r3, .L18
.LPIC3:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	movs	r3, #2
	str	r3, [r7, #12]
	b	.L15
.L17:
	ldr	r0, [r7, #12]
	bl	ktraNgto(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L16
	ldr	r1, [r7, #12]
	ldr	r3, .L18+4
.LPIC4:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
.L16:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L15:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bgt	.L17
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L19:
	.align	2
.L18:
	.word	.LC2-(.LPIC3+4)
	.word	.LC3-(.LPIC4+4)
	.size	lietKeNgto, .-lietKeNgto
	.section	.rodata
	.align	2
.LC4:
	.ascii	"\012%d so Fibonacci dau tien: \012\000"
	.align	2
.LC5:
	.ascii	"F%d = %lld\012\000"
	.text
	.align	1
	.global	lietKeFibo
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	lietKeFibo, %function
lietKeFibo:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r1, [r7, #4]
	ldr	r3, .L25
.LPIC5:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	mov	r3, #1
	mov	r4, #0
	strd	r3, [r7, #16]
	mov	r3, #0
	mov	r4, #0
	strd	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L21
.L24:
	ldr	r3, [r7, #12]
	cmp	r3, #1
	bgt	.L22
	ldr	r3, [r7, #12]
	asr	r4, r3, #31
	strd	r3, [r7, #32]
	b	.L23
.L22:
	ldrd	r1, [r7, #16]
	ldrd	r3, [r7, #24]
	adds	r5, r1, r3
	adc	r6, r2, r4
	strd	r5, [r7, #32]
	ldrd	r3, [r7, #16]
	strd	r3, [r7, #24]
	ldrd	r3, [r7, #32]
	strd	r3, [r7, #16]
.L23:
	ldrd	r2, [r7, #32]
	ldr	r1, [r7, #12]
	ldr	r0, .L25+4
.LPIC6:
	add	r0, pc
	bl	printf(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L21:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	blt	.L24
	nop
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L26:
	.align	2
.L25:
	.word	.LC4-(.LPIC5+4)
	.word	.LC5-(.LPIC6+4)
	.size	lietKeFibo, .-lietKeFibo
	.section	.rodata
	.align	2
.LC6:
	.ascii	"\012%d so chinh phuong dau tien: \012\000"
	.text
	.align	1
	.global	lietKeChinhPhuong
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	lietKeChinhPhuong, %function
lietKeChinhPhuong:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r1, [r7, #4]
	ldr	r3, .L30
.LPIC7:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L28
.L29:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #12]
	mul	r3, r2, r3
	mov	r1, r3
	ldr	r3, .L30+4
.LPIC8:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L28:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	blt	.L29
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L31:
	.align	2
.L30:
	.word	.LC6-(.LPIC7+4)
	.word	.LC3-(.LPIC8+4)
	.size	lietKeChinhPhuong, .-lietKeChinhPhuong
	.section	.rodata
	.align	2
.LC7:
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
	str	r0, [r7, #4]
	bl	nhapN(PLT)
	str	r0, [r7, #8]
	ldr	r0, [r7, #8]
	bl	lietKeNgto(PLT)
	ldr	r0, [r7, #8]
	bl	lietKeChinhPhuong(PLT)
	bl	clock(PLT)
	str	r0, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vldr.64	d5, .L34
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [r7, #16]
	ldrd	r2, [r7, #16]
	ldr	r1, .L34+8
.LPIC9:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L35:
	.align	3
.L34:
	.word	0
	.word	1093567616
	.word	.LC7-(.LPIC9+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
