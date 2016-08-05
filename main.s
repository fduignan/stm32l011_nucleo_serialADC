	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.arm
	.syntax divided
	.file	"main.c"
	.text
	.align	2
	.global	delay
	.type	delay, %function
delay:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	mov	r0, r0	@ nop
.L2:
	ldr	r3, [fp, #-8]
	sub	r2, r3, #1
	str	r2, [fp, #-8]
	cmp	r3, #0
	bne	.L2
	mov	r0, r0	@ nop
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	delay, .-delay
	.align	2
	.global	initClockHSI16
	.type	initClockHSI16, %function
initClockHSI16:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	ldr	r2, .L5
	ldr	r3, .L5
	ldr	r3, [r3]
	bic	r3, r3, #16777216
	str	r3, [r2]
	ldr	r2, .L5
	ldr	r3, .L5
	ldr	r3, [r3]
	orr	r3, r3, #1
	str	r3, [r2]
	mov	r0, r0	@ nop
.L4:
	ldr	r3, .L5
	ldr	r3, [r3]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L4
	ldr	r2, .L5+4
	ldr	r3, .L5+4
	ldr	r3, [r3]
	orr	r3, r3, #1
	str	r3, [r2]
	mov	r0, r0	@ nop
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L6:
	.align	2
.L5:
	.word	1073876992
	.word	1073877004
	.size	initClockHSI16, .-initClockHSI16
	.align	2
	.global	configPins
	.type	configPins, %function
configPins:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	ldr	r2, .L8
	ldr	r3, .L8
	ldr	r3, [r3]
	orr	r3, r3, #2
	str	r3, [r2]
	ldr	r2, .L8+4
	ldr	r3, .L8+4
	ldr	r3, [r3]
	orr	r3, r3, #64
	str	r3, [r2]
	ldr	r2, .L8+4
	ldr	r3, .L8+4
	ldr	r3, [r3]
	bic	r3, r3, #128
	str	r3, [r2]
	mov	r0, r0	@ nop
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L9:
	.align	2
.L8:
	.word	1073877036
	.word	1342178304
	.size	configPins, .-configPins
	.align	2
	.global	initADC
	.type	initADC, %function
initADC:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	ldr	r2, .L12
	ldr	r3, .L12
	ldr	r3, [r3]
	orr	r3, r3, #2
	str	r3, [r2]
	ldr	r2, .L12+4
	ldr	r3, .L12+4
	ldr	r3, [r3]
	orr	r3, r3, #512
	str	r3, [r2]
	mov	r2, #1342177280
	mov	r3, #1342177280
	ldr	r3, [r3]
	orr	r3, r3, #3
	str	r3, [r2]
	ldr	r3, .L12+8
	mov	r2, #-2147483648
	str	r2, [r3]
	mov	r0, r0	@ nop
.L11:
	ldr	r3, .L12+8
	ldr	r3, [r3]
	cmp	r3, #0
	blt	.L11
	ldr	r2, .L12+12
	ldr	r3, .L12+12
	ldr	r3, [r3]
	orr	r3, r3, #1
	str	r3, [r2]
	ldr	r2, .L12+16
	ldr	r3, .L12+16
	ldr	r3, [r3]
	orr	r3, r3, #4194304
	str	r3, [r2]
	ldr	r2, .L12+8
	ldr	r3, .L12+8
	ldr	r3, [r3]
	orr	r3, r3, #1
	str	r3, [r2]
	mov	r0, r0	@ nop
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L13:
	.align	2
.L12:
	.word	1073877036
	.word	1073877044
	.word	1073816584
	.word	1073816616
	.word	1073817352
	.size	initADC, .-initADC
	.align	2
	.global	readADC
	.type	readADC, %function
readADC:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	ldr	r2, .L17
	ldr	r3, .L17
	ldr	r3, [r3]
	orr	r3, r3, #4
	str	r3, [r2]
	mov	r0, r0	@ nop
.L15:
	ldr	r3, .L17
	ldr	r3, [r3]
	and	r3, r3, #4
	cmp	r3, #0
	bne	.L15
	ldr	r3, .L17+4
	ldr	r3, [r3]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L18:
	.align	2
.L17:
	.word	1073816584
	.word	1073816640
	.size	readADC, .-readADC
	.section	.rodata
	.align	2
.LC0:
	.ascii	"ADC: \000"
	.align	2
.LC1:
	.ascii	"\015\012\000"
	.text
	.align	2
	.global	testADC
	.type	testADC, %function
testADC:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	ldr	r0, .L20
	bl	eputs
	bl	readADC
	mov	r3, r0
	mov	r0, r3
	bl	printHex
	ldr	r0, .L20+4
	bl	eputs
	mov	r0, r0	@ nop
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	.LC0
	.word	.LC1
	.size	testADC, .-testADC
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	mov	r3, #0
	str	r3, [fp, #-8]
	bl	initClockHSI16
	bl	configPins
	mov	r0, #9600
	bl	initUART
	bl	initADC
	.syntax divided
@ 78 "main.c" 1
	 cpsie i 
@ 0 "" 2
	.arm
	.syntax divided
.L23:
	ldr	r2, .L24
	ldr	r3, .L24
	ldr	r3, [r3]
	orr	r3, r3, #8
	str	r3, [r2]
	bl	testADC
	ldr	r0, .L24+4
	bl	delay
	ldr	r2, .L24
	ldr	r3, .L24
	ldr	r3, [r3]
	bic	r3, r3, #8
	str	r3, [r2]
	ldr	r0, .L24+4
	bl	delay
	b	.L23
.L25:
	.align	2
.L24:
	.word	1342178324
	.word	100000
	.size	main, .-main
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.3.1 20160307 (release) [ARM/embedded-5-branch revision 234589]"
