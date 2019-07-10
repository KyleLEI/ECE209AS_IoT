	.arch armv6
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
	.file	"test_mem.c"
	.text
	.global	a
	.bss
	.type	a, %object
	.size	a, 1
a:
	.space	1
	.global	b
	.data
	.type	b, %object
	.size	b, 1
b:
	.byte	1
	.text
	.align	2
	.global	main
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, fp}
	add	fp, sp, #8
	sub	sp, sp, #20
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r5, .L7
	mov	r4, #0
	b	.L2
.L3:
	ldrb	r3, [r5]
	strb	r3, [fp, #-13]
	add	r4, r4, #1
.L2:
	ldr	r3, .L7+4
	cmp	r4, r3
	bls	.L3
	ldr	r5, .L7+8
	mov	r4, #0
	b	.L4
.L5:
	ldrb	r3, [r5]
	strb	r3, [fp, #-13]
	add	r4, r4, #1
.L4:
	ldr	r3, .L7+4
	cmp	r4, r3
	bls	.L5
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, r5, fp}
	bx	lr
.L8:
	.align	2
.L7:
	.word	a
	.word	999999999
	.word	b
	.size	main, .-main
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
