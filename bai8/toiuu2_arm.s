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
	.ascii	"Nhap n > 0: \000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.align	2
.LC2:
	.ascii	"arr[%d] = \000"
	.text
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	nhap.6022, %function
nhap.6022:
	@ Nested: function declared inside another function.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	ip, [r7, #4]
	ldr	r3, [r7, #8]
	ands	r2, #0
	str	r2, [r3]
	b	.L2
.L3:
	ldr	r3, .L6
.LPIC0:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r1, [r7, #8]
	ldr	r3, .L6+4
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
.L2:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L3
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L4
.L5:
	ldr	r1, [r7, #20]
	ldr	r3, .L6+8
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	mov	r1, r3
	ldr	r3, .L6+12
.LPIC3:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L4:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	ldr	r2, [r7, #20]
	cmp	r2, r3
	blt	.L5
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L7:
	.align	2
.L6:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	.LC2-(.LPIC2+4)
	.word	.LC1-(.LPIC3+4)
	.size	nhap.6022, .-nhap.6022
	.section	.rodata
	.align	2
.LC3:
	.ascii	"Mang doi xung.\000"
	.align	2
.LC4:
	.ascii	"Mang KHONG doi xung.\000"
	.align	2
.LC5:
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
	@ args = 0, pretend = 0, frame = 432
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #432
	add	r7, sp, #0
	ldr	r4, .L13+8
.LPIC4:
	add	r4, pc
	ldr	r3, .L13+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [r7, #428]
	add	r2, r7, #448
	adds	r3, r7, #4
	str	r2, [r3]
	add	r5, r7, #8
	bl	clock(PLT)
	str	r0, [r5]
	mov	r1, r7
	add	r2, r7, #28
	adds	r3, r7, #4
	mov	ip, r3
	mov	r0, r2
	bl	nhap.6022(PLT)
	mov	r3, r7
	ldr	r1, [r3]
	add	r2, r7, #28
	adds	r3, r7, #4
	mov	ip, r3
	mov	r0, r2
	bl	ktra.6033(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L9
	ldr	r3, .L13+16
.LPIC5:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	b	.L10
.L9:
	ldr	r3, .L13+20
.LPIC6:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
.L10:
	add	r5, r7, #12
	bl	clock(PLT)
	str	r0, [r5]
	add	r2, r7, #12
	add	r3, r7, #8
	ldr	r2, [r2]
	ldr	r3, [r3]
	subs	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	add	r3, r7, #16
	vldr.64	d5, .L13
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [r3]
	add	r3, r7, #16
	ldrd	r2, [r3]
	ldr	r1, .L13+24
.LPIC7:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	movs	r3, #0
	mov	r0, r3
	ldr	r3, .L13+12
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #428]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L12
	bl	__stack_chk_fail(PLT)
.L12:
	add	r7, r7, #432
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L14:
	.align	3
.L13:
	.word	0
	.word	1093567616
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC3-(.LPIC5+4)
	.word	.LC4-(.LPIC6+4)
	.word	.LC5-(.LPIC7+4)
	.size	main, .-main
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	ktra.6033, %function
ktra.6033:
	@ Nested: function declared inside another function.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	ip, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L16
.L19:
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	subs	r1, r3, #1
	ldr	r3, [r7, #20]
	subs	r3, r1, r3
	lsls	r3, r3, #2
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L17
	movs	r3, #0
	b	.L18
.L17:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L16:
	ldr	r3, [r7, #8]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #20]
	cmp	r3, r2
	ble	.L19
	movs	r3, #1
.L18:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ktra.6033, .-ktra.6033
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
