	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 13, 1
	.globl	_add                            ; -- Begin function add
	.p2align	2
_add:                                   ; @add
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	cmp	w3, #1
	b.lt	LBB0_12
; %bb.1:
	mov	x19, x2
	mov	w21, w3
	cmp	w3, #16
	b.hs	LBB0_3
; %bb.2:
	mov	x8, #0
	b	LBB0_8
LBB0_3:
	mov	x8, #0
	lsl	x9, x21, #2
	add	x10, x0, x9
	cmp	x10, x19
	cset	w10, hi
	add	x11, x19, x9
	cmp	x11, x0
	cset	w12, hi
	and	w12, w10, w12
	add	x9, x1, x9
	cmp	x9, x19
	cset	w9, hi
	cmp	x11, x1
	cset	w10, hi
	tbnz	w12, #0, LBB0_8
; %bb.4:
	and	w9, w9, w10
	tbnz	w9, #0, LBB0_8
; %bb.5:
	and	x8, x21, #0xfffffff0
	add	x9, x19, #32
	add	x10, x0, #32
	add	x11, x1, #32
	mov	x12, x8
LBB0_6:                                 ; =>This Inner Loop Header: Depth=1
	ldp	q0, q1, [x10, #-32]
	ldp	q2, q3, [x10], #64
	ldp	q4, q5, [x11, #-32]
	ldp	q6, q7, [x11], #64
	add.4s	v0, v4, v0
	add.4s	v1, v5, v1
	add.4s	v2, v6, v2
	add.4s	v3, v7, v3
	stp	q0, q1, [x9, #-32]
	stp	q2, q3, [x9], #64
	subs	x12, x12, #16
	b.ne	LBB0_6
; %bb.7:
	cmp	x8, x21
	b.eq	LBB0_10
LBB0_8:
	lsl	x11, x8, #2
	add	x9, x19, x11
	add	x10, x1, x11
	add	x11, x0, x11
	sub	x8, x21, x8
LBB0_9:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w12, [x11], #4
	ldr	w13, [x10], #4
	add	w12, w13, w12
	str	w12, [x9], #4
	subs	x8, x8, #1
	b.ne	LBB0_9
LBB0_10:
Lloh0:
	adrp	x20, l_.str@PAGE
Lloh1:
	add	x20, x20, l_.str@PAGEOFF
LBB0_11:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [x19], #4
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
	subs	x21, x21, #1
	b.ne	LBB0_11
LBB0_12:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	str	xzr, [sp]
Lloh2:
	adrp	x19, l_.str@PAGE
Lloh3:
	add	x19, x19, l_.str@PAGEOFF
	mov	x0, x19
	bl	_printf
	mov	w8, #3
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	mov	w8, #6
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	mov	w8, #9
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	mov	w8, #12
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	mov	w0, #0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d\n"

.subsections_via_symbols
