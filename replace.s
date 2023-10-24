	.arch armv8-a
	.file	"replace.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"strp.c"
	.align	3
.LC1:
	.string	"pcSrc != NULL"
	.text
	.align	2
	.global	Str_getLength
	.type	Str_getLength, %function
Str_getLength:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L2
	adrp	x0, __PRETTY_FUNCTION__.3061
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3061
	mov	w2, 13
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L2:
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	b	.L3
.L4:
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L3:
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L4
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	sub	x0, x1, x0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	Str_getLength, .-Str_getLength
	.section	.rodata
	.align	3
.LC2:
	.string	"pcDest != NULL"
	.text
	.align	2
	.global	Str_copy
	.type	Str_copy, %function
Str_copy:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L7
	adrp	x0, __PRETTY_FUNCTION__.3070
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3070
	mov	w2, 22
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L7:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L8
	adrp	x0, __PRETTY_FUNCTION__.3070
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3070
	mov	w2, 23
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L8:
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	b	.L9
.L10:
	ldr	x0, [sp, 16]
	ldrb	w1, [x0]
	ldr	x0, [sp, 24]
	strb	w1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
	ldr	x0, [sp, 16]
	add	x0, x0, 1
	str	x0, [sp, 16]
.L9:
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L10
	ldr	x0, [sp, 24]
	strb	wzr, [x0]
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	Str_copy, .-Str_copy
	.align	2
	.global	Str_concat
	.type	Str_concat, %function
Str_concat:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L13
	adrp	x0, __PRETTY_FUNCTION__.3079
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3079
	mov	w2, 37
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L13:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L14
	adrp	x0, __PRETTY_FUNCTION__.3079
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3079
	mov	w2, 38
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L14:
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L17
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L17
	ldr	x0, [sp, 24]
	b	.L16
.L18:
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L17:
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L18
	b	.L19
.L20:
	ldr	x0, [sp, 16]
	ldrb	w1, [x0]
	ldr	x0, [sp, 40]
	strb	w1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	add	x0, x0, 1
	str	x0, [sp, 16]
.L19:
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L20
	ldr	x0, [sp, 40]
	strb	wzr, [x0]
	ldr	x0, [sp, 24]
.L16:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	Str_concat, .-Str_concat
	.section	.rodata
	.align	3
.LC3:
	.string	"pcS1 != NULL"
	.align	3
.LC4:
	.string	"pcS2 != NULL"
	.text
	.align	2
	.global	Str_compare
	.type	Str_compare, %function
Str_compare:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L22
	adrp	x0, __PRETTY_FUNCTION__.3092
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3092
	mov	w2, 61
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L22:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L23
	adrp	x0, __PRETTY_FUNCTION__.3092
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3092
	mov	w2, 62
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L23:
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	str	x0, [sp, 32]
	b	.L24
.L26:
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
.L24:
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L25
	ldr	x0, [sp, 40]
	ldrb	w1, [x0]
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	cmp	w1, w0
	beq	.L26
.L25:
	ldr	x0, [sp, 40]
	ldrb	w1, [x0]
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	cmp	w1, w0
	bcs	.L27
	mov	w0, -1
	b	.L28
.L27:
	ldr	x0, [sp, 40]
	ldrb	w1, [x0]
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	cmp	w1, w0
	bls	.L29
	mov	w0, 1
	b	.L28
.L29:
	mov	w0, 0
.L28:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	Str_compare, .-Str_compare
	.section	.rodata
	.align	3
.LC5:
	.string	"pcHaystack != NULL"
	.align	3
.LC6:
	.string	"pcNeedle != NULL"
	.text
	.align	2
	.global	Str_search
	.type	Str_search, %function
Str_search:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L31
	adrp	x0, __PRETTY_FUNCTION__.3102
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3102
	mov	w2, 79
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L31:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L32
	adrp	x0, __PRETTY_FUNCTION__.3102
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3102
	mov	w2, 80
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L32:
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	str	x0, [sp, 32]
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L33
	ldr	x0, [sp, 40]
	b	.L34
.L33:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L36
	mov	x0, 0
	b	.L34
.L39:
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
.L37:
	ldr	x0, [sp, 40]
	ldrb	w1, [x0]
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L38
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L39
.L38:
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L40
	ldr	x0, [sp, 24]
	b	.L34
.L40:
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	str	x0, [sp, 32]
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L36:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L37
	mov	x0, 0
.L34:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	Str_search, .-Str_search
	.section	.rodata
	.align	3
.LC7:
	.string	"replace.c"
	.align	3
.LC8:
	.string	"pcLine != NULL"
	.align	3
.LC9:
	.string	"pcFrom != NULL"
	.align	3
.LC10:
	.string	"pcTo != NULL"
	.align	3
.LC11:
	.string	"%s"
	.text
	.align	2
	.type	replaceAndWrite, %function
replaceAndWrite:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L43
	adrp	x0, __PRETTY_FUNCTION__.3477
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3477
	mov	w2, 28
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L43:
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L44
	adrp	x0, __PRETTY_FUNCTION__.3477
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3477
	mov	w2, 29
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L44:
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L45
	adrp	x0, __PRETTY_FUNCTION__.3477
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3477
	mov	w2, 30
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L45:
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L46
	ldr	x1, [sp, 40]
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	printf
	mov	x0, 0
	b	.L47
.L46:
	str	xzr, [sp, 72]
	ldr	x0, [sp, 40]
	str	x0, [sp, 64]
	ldr	x0, [sp, 32]
	bl	Str_getLength
	str	x0, [sp, 48]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 64]
	bl	Str_search
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L49
	ldr	x1, [sp, 40]
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	printf
	ldr	x0, [sp, 72]
	b	.L47
.L51:
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 56]
	cmp	x1, x0
	bne	.L50
	ldr	x1, [sp, 24]
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	printf
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 48]
	add	x0, x1, x0
	str	x0, [sp, 64]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 64]
	bl	Str_search
	str	x0, [sp, 56]
	ldr	x0, [sp, 72]
	add	x0, x0, 1
	str	x0, [sp, 72]
	b	.L49
.L50:
	ldr	x0, [sp, 64]
	ldrb	w0, [x0]
	bl	putchar
	ldr	x0, [sp, 64]
	add	x0, x0, 1
	str	x0, [sp, 64]
.L49:
	ldr	x0, [sp, 64]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L51
	ldr	x0, [sp, 72]
.L47:
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	replaceAndWrite, .-replaceAndWrite
	.section	.rodata
	.align	3
.LC12:
	.string	"usage: %s fromstring tostring\n"
	.align	3
.LC13:
	.string	"%lu replacements\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	mov	x16, 4160
	sub	sp, sp, x16
	.cfi_def_cfa_offset 4160
	stp	x29, x30, [sp]
	.cfi_offset 29, -4160
	.cfi_offset 30, -4152
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	str	xzr, [sp, 4152]
	ldr	w0, [sp, 28]
	cmp	w0, 3
	beq	.L53
	adrp	x0, stderr
	add	x0, x0, :lo12:stderr
	ldr	x3, [x0]
	ldr	x0, [sp, 16]
	ldr	x0, [x0]
	mov	x2, x0
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	mov	x0, x3
	bl	fprintf
	mov	w0, 1
	b	.L57
.L53:
	ldr	x0, [sp, 16]
	ldr	x0, [x0, 8]
	str	x0, [sp, 4144]
	ldr	x0, [sp, 16]
	ldr	x0, [x0, 16]
	str	x0, [sp, 4136]
	b	.L55
.L56:
	add	x0, sp, 40
	ldr	x2, [sp, 4136]
	ldr	x1, [sp, 4144]
	bl	replaceAndWrite
	mov	x1, x0
	ldr	x0, [sp, 4152]
	add	x0, x0, x1
	str	x0, [sp, 4152]
.L55:
	adrp	x0, stdin
	add	x0, x0, :lo12:stdin
	ldr	x1, [x0]
	add	x0, sp, 40
	mov	x2, x1
	mov	w1, 4096
	bl	fgets
	cmp	x0, 0
	bne	.L56
	adrp	x0, stderr
	add	x0, x0, :lo12:stderr
	ldr	x3, [x0]
	ldr	x2, [sp, 4152]
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	mov	x0, x3
	bl	fprintf
	mov	w0, 0
.L57:
	ldp	x29, x30, [sp]
	mov	x16, 4160
	add	sp, sp, x16
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.3061, %object
	.size	__PRETTY_FUNCTION__.3061, 14
__PRETTY_FUNCTION__.3061:
	.string	"Str_getLength"
	.align	3
	.type	__PRETTY_FUNCTION__.3070, %object
	.size	__PRETTY_FUNCTION__.3070, 9
__PRETTY_FUNCTION__.3070:
	.string	"Str_copy"
	.align	3
	.type	__PRETTY_FUNCTION__.3079, %object
	.size	__PRETTY_FUNCTION__.3079, 11
__PRETTY_FUNCTION__.3079:
	.string	"Str_concat"
	.align	3
	.type	__PRETTY_FUNCTION__.3092, %object
	.size	__PRETTY_FUNCTION__.3092, 12
__PRETTY_FUNCTION__.3092:
	.string	"Str_compare"
	.align	3
	.type	__PRETTY_FUNCTION__.3102, %object
	.size	__PRETTY_FUNCTION__.3102, 11
__PRETTY_FUNCTION__.3102:
	.string	"Str_search"
	.align	3
	.type	__PRETTY_FUNCTION__.3477, %object
	.size	__PRETTY_FUNCTION__.3477, 16
__PRETTY_FUNCTION__.3477:
	.string	"replaceAndWrite"
	.ident	"GCC: (GNU) 8.5.0 20210514 (Red Hat 8.5.0-10)"
	.section	.note.GNU-stack,"",@progbits
