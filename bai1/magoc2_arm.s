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
	.global	tinhGiaithua
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	tinhGiaithua, %function
tinhGiaithua:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	tst	r3, r3
	ble	.L2
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	mov	r0, r3
	bl	tinhGiaithua(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	mul	r3, r3, r2
	b	.L3
.L2:
	movs	r3, #1
.L3:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tinhGiaithua, .-tinhGiaithua
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Giai thua cua %d  la: %d \012\000"
	.align	2
.LC1:
	.ascii	"Giai thua cua %d  la: %d\012\000"
	.align	2
.LC2:
	.ascii	"time: %f\012\000"
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
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	bl	clock(PLT)
	str	r0, [r7, #4]
	movs	r3, #10
	str	r3, [r7, #8]
	movs	r3, #12
	str	r3, [r7, #12]
	movs	r3, #15
	str	r3, [r7, #16]
	ldr	r0, [r7, #8]
	bl	tinhGiaithua(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r1, [r7, #8]
	ldr	r3, .L6+8
.LPIC0:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r0, [r7, #12]
	bl	tinhGiaithua(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r1, [r7, #12]
	ldr	r3, .L6+12
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r0, [r7, #16]
	bl	tinhGiaithua(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r1, [r7, #16]
	ldr	r3, .L6+16
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	bl	clock(PLT)
	str	r0, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vldr.64	d5, .L6
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [r7, #24]
	ldrd	r2, [r7, #24]
	ldr	r1, .L6+20
.LPIC3:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L7:
	.align	3
.L6:
	.word	0
	.word	1093567616
	.word	.LC0-(.LPIC0+4)
	.word	.LC0-(.LPIC1+4)
	.word	.LC1-(.LPIC2+4)
	.word	.LC2-(.LPIC3+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
