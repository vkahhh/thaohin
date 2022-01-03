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
	.global	__aeabi_idivmod
	.align	1
	.global	USCLN
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	USCLN, %function
USCLN:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	tst	r3, r3
	bne	.L2
	ldr	r3, [r7, #4]
	b	.L3
.L2:
	ldr	r3, [r7, #4]
	ldr	r1, [r7]
	mov	r0, r3
	bl	__aeabi_idivmod(PLT)
	mov	r3, r1
	mov	r1, r3
	ldr	r0, [r7]
	bl	USCLN(PLT)
	mov	r3, r0
.L3:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USCLN, .-USCLN
	.global	__aeabi_idiv
	.align	1
	.global	BSCNN
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	BSCNN, %function
BSCNN:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	mul	r4, r2, r3
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USCLN(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r4
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	BSCNN, .-BSCNN
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Nhap so nguyen duong a = \000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.align	2
.LC2:
	.ascii	"Nhap so nguyen duong b = \000"
	.align	2
.LC3:
	.ascii	"USCLN cua %d va %d la: %d\000"
	.align	2
.LC4:
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
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #0
	ldr	r4, .L9+8
.LPIC0:
	add	r4, pc
	ldr	r3, .L9+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r3, .L9+16
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	mov	r3, r7
	mov	r1, r3
	ldr	r3, .L9+20
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	ldr	r3, .L9+24
.LPIC3:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	adds	r3, r7, #4
	mov	r1, r3
	ldr	r3, .L9+28
.LPIC4:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	bl	clock(PLT)
	str	r0, [r7, #8]
	ldr	r5, [r7]
	ldr	r6, [r7, #4]
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	mov	r1, r2
	mov	r0, r3
	bl	USCLN(PLT)
	mov	r3, r0
	mov	r2, r6
	mov	r1, r5
	ldr	r0, .L9+32
.LPIC5:
	add	r0, pc
	bl	printf(PLT)
	ldr	r5, [r7]
	ldr	r6, [r7, #4]
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	mov	r1, r2
	mov	r0, r3
	bl	BSCNN(PLT)
	mov	r3, r0
	mov	r2, r6
	mov	r1, r5
	ldr	r0, .L9+36
.LPIC6:
	add	r0, pc
	bl	printf(PLT)
	bl	clock(PLT)
	str	r0, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vldr.64	d5, .L9
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [r7, #16]
	ldrd	r2, [r7, #16]
	ldr	r1, .L9+40
.LPIC7:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	movs	r3, #0
	mov	r0, r3
	ldr	r3, .L9+12
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
	pop	{r4, r5, r6, r7, pc}
.L10:
	.align	3
.L9:
	.word	0
	.word	1093567616
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC0-(.LPIC1+4)
	.word	.LC1-(.LPIC2+4)
	.word	.LC2-(.LPIC3+4)
	.word	.LC1-(.LPIC4+4)
	.word	.LC3-(.LPIC5+4)
	.word	.LC3-(.LPIC6+4)
	.word	.LC4-(.LPIC7+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
