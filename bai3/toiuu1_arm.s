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
	.global	__aeabi_idivmod
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	USCLN.6025, %function
USCLN.6025:
	@ Nested: function declared inside another function.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r4, ip
	str	ip, [r7, #4]
	ldr	r3, [r7, #8]
	tst	r3, r3
	bne	.L2
	ldr	r3, [r7, #12]
	b	.L3
.L2:
	ldr	r3, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	__aeabi_idivmod(PLT)
	mov	r3, r1
	mov	ip, r4
	mov	r1, r3
	ldr	r0, [r7, #8]
	bl	USCLN.6025(PLT)
	mov	r3, r0
.L3:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	USCLN.6025, .-USCLN.6025
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
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #44
	add	r7, sp, #0
	ldr	r4, .L7+8
.LPIC0:
	add	r4, pc
	ldr	r3, .L7+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	add	r3, r7, #64
	str	r3, [r7, #12]
	ldr	r3, .L7+16
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	adds	r3, r7, #4
	mov	r1, r3
	ldr	r3, .L7+20
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	ldr	r3, .L7+24
.LPIC3:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	add	r3, r7, #8
	mov	r1, r3
	ldr	r3, .L7+28
.LPIC4:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	bl	clock(PLT)
	str	r0, [r7, #16]
	ldr	r5, [r7, #4]
	ldr	r6, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	add	r3, r7, #12
	mov	ip, r3
	mov	r0, r2
	bl	USCLN.6025(PLT)
	mov	r3, r0
	mov	r2, r6
	mov	r1, r5
	ldr	r0, .L7+32
.LPIC5:
	add	r0, pc
	bl	printf(PLT)
	ldr	r5, [r7, #4]
	ldr	r6, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	add	r3, r7, #12
	mov	ip, r3
	mov	r0, r2
	bl	BSCNN.6029(PLT)
	mov	r3, r0
	mov	r2, r6
	mov	r1, r5
	ldr	r0, .L7+36
.LPIC6:
	add	r0, pc
	bl	printf(PLT)
	bl	clock(PLT)
	str	r0, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	subs	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vldr.64	d5, .L7
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [r7, #24]
	ldrd	r2, [r7, #24]
	ldr	r1, .L7+40
.LPIC7:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	movs	r3, #0
	mov	r0, r3
	ldr	r3, .L7+12
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #36]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L6
	bl	__stack_chk_fail(PLT)
.L6:
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L8:
	.align	3
.L7:
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
	.global	__aeabi_idiv
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	BSCNN.6029, %function
BSCNN.6029:
	@ Nested: function declared inside another function.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r1, ip
	str	ip, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	mul	r4, r2, r3
	mov	ip, r1
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	USCLN.6025(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r4
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	BSCNN.6029, .-BSCNN.6029
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
