	.include "asm/macros.inc"
	.syntax unified

	thumb_func_start bg256_right_scroll_end
bg256_right_scroll_end: @ 0x08000FF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov ip, r0
	str r1, [sp]
	mov r2, ip
	adds r2, #0x46
	movs r0, #0x1e
	strb r0, [r2]
	mov r1, ip
	adds r1, #0x47
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1e
	ble _08001026
	movs r0, #0
	strb r0, [r1]
_08001026:
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r0, #8
	mov r8, r0
	ldr r4, [sp]
	cmp r4, #0
	bge _08001038
	movs r5, #4
	mov r8, r5
_08001038:
	ldr r0, _080010EC @ =0x7FFFFFFF
	ldr r4, [sp]
	ands r4, r0
	str r4, [sp, #4]
	mov r5, r8
	muls r5, r4, r5
	str r5, [sp]
	mov r0, r8
	lsls r0, r0, #3
	mov sl, r0
	mov r4, r8
	lsls r0, r4, #5
	subs r0, r0, r4
	lsls r0, r0, #3
	mov r8, r0
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #6
	ldr r5, _080010F0 @ =gBGDecompBuffer
	adds r6, r0, r5
	movs r4, #1
	str r2, [sp, #0x18]
	mov sb, r1
	mov r0, ip
	adds r0, #0x37
	str r0, [sp, #0x10]
	mov r1, ip
	adds r1, #0x36
	str r1, [sp, #0xc]
	mov r2, ip
	adds r2, #0x42
	str r2, [sp, #0x14]
	ldr r2, _080010F4 @ =0x040000D4
	mov r5, sl
	lsrs r5, r5, #1
	orrs r5, r3
	str r5, [sp, #0x1c]
	movs r3, #0
	ldr r7, _080010F8 @ =gBG3MapBuffer
	adds r7, #0x7e
	mov r0, sb
	str r0, [sp, #8]
_0800108C:
	lsls r0, r4, #6
	ldr r1, _080010F8 @ =gBG3MapBuffer
	adds r0, r0, r1
	str r0, [r2]
	str r7, [r2, #4]
	ldr r5, _080010FC @ =0x80000001
	str r5, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, [sp, #8]
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r1, sl
	muls r1, r0, r1
	ldr r5, _08001100 @ =0x06004000
	adds r0, r3, r5
	adds r0, r1, r0
	str r6, [r2]
	str r0, [r2, #4]
	ldr r0, [sp, #0x1c]
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, [sp]
	adds r6, r6, r1
	add r3, r8
	adds r7, #0x40
	adds r4, #1
	cmp r4, #0x14
	bls _0800108C
	mov r2, sb
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1e
	ble _080010D8
	movs r0, #0
	strb r0, [r2]
_080010D8:
	movs r0, #0xb4
	lsls r0, r0, #1
	ldr r4, [sp, #4]
	cmp r4, r0
	bne _08001104
	movs r0, #0x2f
	ldr r5, [sp, #0x10]
	strb r0, [r5]
	b _0800110A
	.align 2, 0
_080010EC: .4byte 0x7FFFFFFF
_080010F0: .4byte gBGDecompBuffer
_080010F4: .4byte 0x040000D4
_080010F8: .4byte gBG3MapBuffer
_080010FC: .4byte 0x80000001
_08001100: .4byte 0x06004000
_08001104:
	movs r0, #1
	ldr r1, [sp, #0x10]
	strb r0, [r1]
_0800110A:
	ldr r2, [sp, #0x18]
	ldrb r0, [r2]
	adds r0, #1
	movs r3, #0
	strb r0, [r2]
	ldr r4, [sp, #0xc]
	strb r3, [r4]
	movs r0, #0x11
	rsbs r0, r0, #0
	ldr r5, [sp, #0x14]
	ldrh r5, [r5]
	ands r0, r5
	movs r1, #0x20
	orrs r0, r1
	ldr r1, [sp, #0x14]
	strh r0, [r1]
	mov r4, ip
	ldrh r2, [r4, #0x3c]
	movs r5, #0x3c
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bge _08001140
	mov r1, ip
	adds r1, #0x44
	ldrb r4, [r1]
	subs r0, r4, r2
	strb r0, [r1]
_08001140:
	mov r5, ip
	strh r3, [r5, #0x3c]
	strh r3, [r5, #0x38]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start bg256_right_scroll
bg256_right_scroll: @ 0x08001158
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov sb, r0
	str r1, [sp]
	movs r1, #0x38
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _08001172
	adds r0, #7
_08001172:
	asrs r0, r0, #3
	rsbs r0, r0, #0
	str r0, [sp, #4]
	movs r2, #8
	str r2, [sp, #8]
	ldr r6, [sp]
	cmp r6, #0
	bge _08001186
	movs r0, #4
	str r0, [sp, #8]
_08001186:
	ldr r1, [sp]
	str r1, [sp, #0x10]
	ldr r6, [sp, #8]
	adds r2, r1, #0
	muls r2, r6, r2
	str r2, [sp]
	lsls r0, r6, #3
	str r0, [sp, #0xc]
	lsls r0, r6, #5
	subs r0, r0, r6
	lsls r0, r0, #3
	str r0, [sp, #8]
	movs r1, #0x46
	add r1, sb
	mov sl, r1
	movs r2, #0x47
	add r2, sb
	mov ip, r2
	mov r6, sb
	adds r6, #0x37
	str r6, [sp, #0x14]
	b _080011BC
_080011B2:
	ldr r0, [sp, #4]
	subs r0, #1
	str r0, [sp, #4]
	cmp r0, #0
	beq _08001278
_080011BC:
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #6
	ldr r2, _080012A0 @ =gBGDecompBuffer
	adds r5, r0, r2
	movs r7, #1
	ldr r6, [sp, #0xc]
	lsrs r6, r6, #1
	str r6, [sp, #0x18]
	ldr r0, _080012A4 @ =gBG3MapBuffer
	mov r8, r0
	ldr r3, _080012A8 @ =0x040000D4
	movs r4, #0
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r6, r0
	str r6, [sp, #0x18]
_080011E0:
	lsls r1, r7, #6
	mov r6, r8
	adds r2, r1, r6
	ldr r6, _080012AC @ =gTilemapBuffer
	adds r0, r1, r6
	str r2, [r3]
	str r0, [r3, #4]
	ldr r0, _080012B0 @ =0x8000001E
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r0, r8
	adds r0, #0x3c
	adds r0, r1, r0
	str r0, [r3]
	str r2, [r3, #4]
	ldr r0, _080012B4 @ =0x80000001
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	adds r2, r1, r6
	ldr r6, _080012B8 @ =gBG3MapBuffer+0x2
	adds r0, r1, r6
	str r2, [r3]
	str r0, [r3, #4]
	ldr r0, _080012B0 @ =0x8000001E
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r1, ip
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldr r2, [sp, #0xc]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r6, _080012BC @ =0x06004000
	adds r0, r4, r6
	adds r2, r1, r0
	str r5, [r3]
	str r2, [r3, #4]
	ldr r0, [sp, #0x18]
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, [sp]
	adds r5, r5, r1
	ldr r2, [sp, #8]
	adds r4, r4, r2
	adds r7, #1
	cmp r7, #0x14
	bls _080011E0
	mov r6, ip
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08001250
	movs r0, #0x1e
	strb r0, [r6]
_08001250:
	mov r1, sl
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08001262
	movs r0, #0x3b
	strb r0, [r1]
_08001262:
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldr r2, [sp, #0x14]
	ldrb r2, [r2]
	cmp r0, r2
	bne _080011B2
	mov r0, sb
	ldr r1, [sp, #0x10]
	bl bg256_right_scroll_end
_08001278:
	mov r6, sb
	movs r0, #0x38
	ldrsh r1, [r6, r0]
	adds r0, r1, #0
	cmp r1, #0
	bge _08001286
	adds r0, r1, #7
_08001286:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	mov r1, sb
	strh r0, [r1, #0x38]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080012A0: .4byte gBGDecompBuffer
_080012A4: .4byte gBG3MapBuffer
_080012A8: .4byte 0x040000D4
_080012AC: .4byte gTilemapBuffer
_080012B0: .4byte 0x8000001E
_080012B4: .4byte 0x80000001
_080012B8: .4byte gBG3MapBuffer+0x2
_080012BC: .4byte 0x06004000

	thumb_func_start bg256_left_scroll_end
bg256_left_scroll_end: @ 0x080012C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	mov r8, r0
	adds r5, r1, #0
	movs r0, #8
	mov sb, r0
	cmp r5, #0
	bge _080012DC
	movs r1, #4
	mov sb, r1
_080012DC:
	ldr r0, _0800130C @ =0x7FFFFFFF
	ands r5, r0
	lsrs r3, r5, #1
	str r3, [sp, #8]
	mov r4, sb
	muls r4, r5, r4
	adds r5, r4, #0
	mov r7, sb
	lsls r7, r7, #3
	str r7, [sp, #4]
	mov r1, sb
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #3
	mov sb, r0
	movs r0, #0xb4
	lsls r0, r0, #1
	cmp r3, r0
	bne _08001310
	mov r1, r8
	adds r1, #0x46
	movs r0, #0xe
	b _08001316
	.align 2, 0
_0800130C: .4byte 0x7FFFFFFF
_08001310:
	mov r1, r8
	adds r1, #0x46
	movs r0, #0x1d
_08001316:
	strb r0, [r1]
	str r1, [sp, #0x1c]
	mov r1, r8
	adds r1, #0x47
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	mov sl, r1
	cmp r0, #0
	bge _08001330
	movs r0, #0x1e
	strb r0, [r1]
_08001330:
	ldr r3, [sp, #0x1c]
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #6
	ldr r4, _0800143C @ =gBGDecompBuffer
	adds r6, r0, r4
	movs r3, #1
	ldr r7, [sp, #4]
	lsrs r7, r7, #1
	str r7, [sp, #0x20]
	mov r0, r8
	adds r0, #0x37
	str r0, [sp, #0x14]
	mov r1, r8
	adds r1, #0x36
	str r1, [sp, #0x10]
	mov r4, r8
	adds r4, #0x42
	str r4, [sp, #0x18]
	ldr r2, _08001440 @ =0x040000D4
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r7, r0
	str r7, [sp, #0x20]
	movs r4, #0
	ldr r0, _08001444 @ =gBG3MapBuffer+0x3E
	adds r0, #2
	mov ip, r0
	mov r1, sl
	str r1, [sp, #0xc]
_0800136C:
	lsls r0, r3, #6
	ldr r7, _08001444 @ =gBG3MapBuffer+0x3E
	adds r0, r0, r7
	str r0, [r2]
	mov r0, ip
	str r0, [r2, #4]
	ldr r1, _08001448 @ =0x80000001
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	ldr r7, [sp, #0xc]
	movs r0, #0
	ldrsb r0, [r7, r0]
	ldr r7, [sp, #4]
	adds r1, r0, #0
	muls r1, r7, r1
	ldr r7, _0800144C @ =0x06004000
	adds r0, r4, r7
	adds r0, r1, r0
	str r6, [r2]
	str r0, [r2, #4]
	ldr r0, [sp, #0x20]
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r6, r6, r5
	add r4, sb
	movs r1, #0x40
	add ip, r1
	adds r3, #1
	cmp r3, #0x14
	bls _0800136C
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08001440 @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _08001450 @ =0x0600DD80
	str r0, [r1, #4]
	ldr r0, _08001454 @ =0x81000020
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r3, #0
	ldr r0, _08001458 @ =gBG3MapBuffer
	ldr r1, _0800145C @ =0x00002276
	adds r0, #0x3e
_080013C6:
	strh r1, [r0]
	adds r0, #0x40
	adds r3, #1
	cmp r3, #0x1f
	bls _080013C6
	mov r4, sl
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080013E4
	movs r0, #0x1e
	strb r0, [r4]
_080013E4:
	ldr r5, [sp, #0x1c]
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	movs r0, #0x3a
	ldr r7, [sp, #0x14]
	strb r0, [r7]
	ldr r0, [sp, #0x10]
	strb r2, [r0]
	movs r0, #0x21
	rsbs r0, r0, #0
	ldr r1, [sp, #0x18]
	ldrh r1, [r1]
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	ldr r3, [sp, #0x18]
	strh r0, [r3]
	mov r4, r8
	movs r5, #0x3c
	ldrsh r0, [r4, r5]
	ldr r7, [sp, #8]
	cmp r0, r7
	bls _08001422
	mov r1, r8
	adds r1, #0x44
	ldrh r3, [r4, #0x3c]
	subs r0, r3, r7
	ldrb r4, [r1]
	subs r0, r4, r0
	strb r0, [r1]
_08001422:
	mov r5, sp
	ldrh r7, [r5, #8]
	mov r5, r8
	strh r7, [r5, #0x3c]
	strh r2, [r5, #0x38]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800143C: .4byte gBGDecompBuffer
_08001440: .4byte 0x040000D4
_08001444: .4byte gBG3MapBuffer+0x3E
_08001448: .4byte 0x80000001
_0800144C: .4byte 0x06004000
_08001450: .4byte 0x0600DD80
_08001454: .4byte 0x81000020
_08001458: .4byte gBG3MapBuffer
_0800145C: .4byte 0x00002276

	thumb_func_start bg256_left_scroll
bg256_left_scroll: @ 0x08001460
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sb, r0
	str r1, [sp]
	movs r1, #0x38
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _0800147A
	adds r0, #7
_0800147A:
	asrs r0, r0, #3
	str r0, [sp, #4]
	movs r2, #8
	str r2, [sp, #8]
	ldr r0, [sp]
	cmp r0, #0
	bge _0800148C
	movs r1, #4
	str r1, [sp, #8]
_0800148C:
	ldr r2, [sp]
	str r2, [sp, #0x10]
	ldr r1, [sp, #8]
	adds r0, r2, #0
	muls r0, r1, r0
	str r0, [sp]
	lsls r2, r1, #3
	str r2, [sp, #0xc]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #3
	str r0, [sp, #8]
	movs r0, #0x46
	add r0, sb
	mov sl, r0
	movs r1, #0x47
	add r1, sb
	mov r8, r1
	mov r2, sb
	adds r2, #0x37
	str r2, [sp, #0x14]
	b _080014C2
_080014B8:
	ldr r0, [sp, #4]
	subs r0, #1
	str r0, [sp, #4]
	cmp r0, #0
	beq _0800157A
_080014C2:
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #6
	ldr r2, _080015A4 @ =gBGDecompBuffer
	adds r6, r0, r2
	movs r0, #1
	mov ip, r0
	ldr r1, [sp, #0xc]
	lsrs r7, r1, #1
	ldr r4, _080015A8 @ =0x040000D4
	movs r5, #0
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r7, r0
_080014E0:
	mov r2, ip
	lsls r1, r2, #6
	ldr r0, _080015AC @ =gBG3MapBuffer+0x2
	adds r2, r1, r0
	ldr r0, _080015B0 @ =gTilemapBuffer
	adds r3, r1, r0
	str r2, [r4]
	str r3, [r4, #4]
	ldr r2, _080015B4 @ =0x8000001F
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080015B8 @ =gBG3MapBuffer
	adds r2, r1, r0
	str r3, [r4]
	str r2, [r4, #4]
	ldr r0, _080015B4 @ =0x8000001F
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080015BC @ =gBG3MapBuffer+0x3E
	adds r3, r1, r0
	str r2, [r4]
	str r3, [r4, #4]
	ldr r0, _080015C0 @ =0x80000001
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldr r2, [sp, #0xc]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r2, _080015C4 @ =0x06004000
	adds r0, r5, r2
	adds r2, r1, r0
	str r6, [r4]
	str r2, [r4, #4]
	str r7, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, [sp]
	adds r6, r6, r0
	ldr r1, [sp, #8]
	adds r5, r5, r1
	movs r2, #1
	add ip, r2
	mov r0, ip
	cmp r0, #0x14
	bls _080014E0
	mov r1, r8
	ldrb r0, [r1]
	adds r0, #1
	movs r2, #0
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1e
	ble _08001552
	strb r2, [r1]
_08001552:
	mov r1, sl
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3b
	ble _08001564
	strb r2, [r1]
_08001564:
	mov r2, sl
	movs r0, #0
	ldrsb r0, [r2, r0]
	ldr r1, [sp, #0x14]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080014B8
	mov r0, sb
	ldr r1, [sp, #0x10]
	bl bg256_left_scroll_end
_0800157A:
	mov r2, sb
	movs r0, #0x38
	ldrsh r1, [r2, r0]
	adds r0, r1, #0
	cmp r1, #0
	bge _08001588
	adds r0, r1, #7
_08001588:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	mov r1, sb
	strh r0, [r1, #0x38]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080015A4: .4byte gBGDecompBuffer
_080015A8: .4byte 0x040000D4
_080015AC: .4byte gBG3MapBuffer+0x2
_080015B0: .4byte gTilemapBuffer
_080015B4: .4byte 0x8000001F
_080015B8: .4byte gBG3MapBuffer
_080015BC: .4byte gBG3MapBuffer+0x3E
_080015C0: .4byte 0x80000001
_080015C4: .4byte 0x06004000

	thumb_func_start bg256_down_scroll_end
bg256_down_scroll_end: @ 0x080015C8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	mov r6, ip
	adds r6, #0x46
	movs r0, #0
	mov r8, r0
	movs r0, #0x15
	strb r0, [r6]
	movs r3, #0x80
	lsls r3, r3, #0x18
	mov sb, r3
	movs r4, #8
	cmp r1, #0
	bge _080015EC
	movs r4, #4
_080015EC:
	ldr r5, _08001668 @ =0x7FFFFFFF
	ands r5, r1
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r4, r0, #4
	mov r2, ip
	adds r2, #0x47
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x14
	ble _0800160C
	mov r7, r8
	strb r7, [r2]
_0800160C:
	ldr r3, _0800166C @ =gBG3MapBuffer
	movs r1, #0xa8
	lsls r1, r1, #3
	adds r0, r3, r1
	ldr r1, _08001670 @ =0x040000D4
	str r3, [r1]
	str r0, [r1, #4]
	ldr r0, _08001674 @ =0x80000020
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	ldrsb r0, [r2, r0]
	muls r0, r4, r0
	ldr r7, _08001678 @ =0x06004000
	adds r3, r0, r7
	movs r0, #0
	ldrsb r0, [r6, r0]
	muls r0, r4, r0
	ldr r6, _0800167C @ =gBGDecompBuffer
	adds r0, r0, r6
	subs r0, r0, r4
	str r0, [r1]
	str r3, [r1, #4]
	lsrs r0, r4, #1
	mov r7, sb
	orrs r0, r7
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x14
	ble _08001656
	mov r0, r8
	strb r0, [r2]
_08001656:
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r5, r0
	bne _08001680
	mov r1, ip
	adds r1, #0x37
	movs r0, #1
	b _08001686
	.align 2, 0
_08001668: .4byte 0x7FFFFFFF
_0800166C: .4byte gBG3MapBuffer
_08001670: .4byte 0x040000D4
_08001674: .4byte 0x80000020
_08001678: .4byte 0x06004000
_0800167C: .4byte gBGDecompBuffer
_08001680:
	mov r1, ip
	adds r1, #0x37
	movs r0, #0x20
_08001686:
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x36
	movs r3, #0
	strb r3, [r0]
	mov r2, ip
	adds r2, #0x42
	movs r0, #0x41
	rsbs r0, r0, #0
	ldrh r1, [r2]
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	mov r4, ip
	ldrh r2, [r4, #0x3e]
	movs r6, #0x3e
	ldrsh r0, [r4, r6]
	cmp r0, #0
	bge _080016B8
	mov r1, ip
	adds r1, #0x45
	ldrb r7, [r1]
	subs r0, r7, r2
	strb r0, [r1]
_080016B8:
	mov r0, ip
	strh r3, [r0, #0x3e]
	strh r3, [r0, #0x3a]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start bg256_down_scroll
bg256_down_scroll: @ 0x080016CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	str r1, [sp]
	movs r1, #0x3a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080016E6
	adds r0, #7
_080016E6:
	asrs r0, r0, #3
	rsbs r0, r0, #0
	mov r8, r0
	movs r6, #8
	ldr r2, [sp]
	cmp r2, #0
	bge _080016F6
	movs r6, #4
_080016F6:
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r6, r0, #4
	ldr r5, _08001718 @ =gBG3MapBuffer
	ldr r3, _0800171C @ =gTilemapBuffer
	mov sl, r3
	adds r7, r4, #0
	adds r7, #0x46
	str r7, [sp, #4]
	movs r0, #0x47
	adds r0, r0, r4
	mov ip, r0
	movs r1, #0x37
	adds r1, r1, r4
	mov sb, r1
	b _0800172C
	.align 2, 0
_08001718: .4byte gBG3MapBuffer
_0800171C: .4byte gTilemapBuffer
_08001720:
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	mov r3, r8
	cmp r3, #0
	beq _080017B8
_0800172C:
	ldr r2, _080017DC @ =0x040000D4
	str r5, [r2]
	mov r7, sl
	str r7, [r2, #4]
	ldr r1, _080017E0 @ =0x800002A0
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r5, #0
	adds r0, #0x40
	str r7, [r2]
	str r0, [r2, #4]
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0xa8
	lsls r1, r1, #3
	adds r0, r5, r1
	str r0, [r2]
	str r5, [r2, #4]
	ldr r0, _080017E4 @ =0x80000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r3, [sp, #4]
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r1, r0, #0
	muls r1, r6, r1
	ldr r7, _080017E8 @ =gBGDecompBuffer
	adds r1, r1, r7
	mov r7, ip
	movs r0, #0
	ldrsb r0, [r7, r0]
	muls r0, r6, r0
	ldr r7, _080017EC @ =0x06004000
	adds r0, r0, r7
	str r1, [r2]
	str r0, [r2, #4]
	lsrs r0, r6, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r1, ip
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08001792
	movs r0, #0x14
	strb r0, [r1]
_08001792:
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080017A2
	movs r0, #0x27
	strb r0, [r3]
_080017A2:
	ldr r2, [sp, #4]
	movs r0, #0
	ldrsb r0, [r2, r0]
	mov r3, sb
	ldrb r3, [r3]
	cmp r0, r3
	bne _08001720
	adds r0, r4, #0
	ldr r1, [sp]
	bl bg256_down_scroll_end
_080017B8:
	movs r7, #0x3a
	ldrsh r1, [r4, r7]
	adds r0, r1, #0
	cmp r1, #0
	bge _080017C4
	adds r0, r1, #7
_080017C4:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	strh r0, [r4, #0x3a]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080017DC: .4byte 0x040000D4
_080017E0: .4byte 0x800002A0
_080017E4: .4byte 0x80000020
_080017E8: .4byte gBGDecompBuffer
_080017EC: .4byte 0x06004000

	thumb_func_start bg256_up_scroll_end
bg256_up_scroll_end: @ 0x080017F0
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	adds r4, r1, #0
	movs r5, #8
	cmp r4, #0
	bge _080017FE
	movs r5, #4
_080017FE:
	ldr r0, _08001818 @ =0x7FFFFFFF
	ands r4, r0
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r5, r0, #4
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r4, r0
	bne _0800181C
	mov r1, ip
	adds r1, #0x46
	movs r0, #0x12
	b _08001822
	.align 2, 0
_08001818: .4byte 0x7FFFFFFF
_0800181C:
	mov r1, ip
	adds r1, #0x46
	movs r0, #8
_08001822:
	strb r0, [r1]
	adds r6, r1, #0
	mov r3, ip
	adds r3, #0x47
	ldrb r0, [r3]
	subs r0, #1
	movs r7, #0
	strb r0, [r3]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _0800183C
	movs r0, #0x14
	strb r0, [r3]
_0800183C:
	ldr r1, _080018CC @ =gBG3MapBuffer+0x540
	ldr r2, _080018D0 @ =0xFFFFFAC0
	adds r0, r1, r2
	ldr r2, _080018D4 @ =0x040000D4
	str r1, [r2]
	str r0, [r2, #4]
	ldr r0, _080018D8 @ =0x80000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #0
	ldrsb r0, [r6, r0]
	muls r0, r5, r0
	ldr r6, _080018DC @ =gBGDecompBuffer
	adds r0, r0, r6
	adds r0, r0, r5
	movs r1, #0
	ldrsb r1, [r3, r1]
	muls r1, r5, r1
	ldr r6, _080018E0 @ =0x06004000
	adds r1, r1, r6
	str r0, [r2]
	str r1, [r2, #4]
	lsrs r0, r5, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08001884
	movs r0, #0x14
	strb r0, [r3]
_08001884:
	mov r1, ip
	adds r1, #0x37
	movs r0, #0x26
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x36
	strb r7, [r0]
	mov r2, ip
	adds r2, #0x42
	movs r0, #0x81
	rsbs r0, r0, #0
	ldrh r1, [r2]
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	lsrs r4, r4, #1
	mov r2, ip
	movs r3, #0x3e
	ldrsh r0, [r2, r3]
	cmp r0, r4
	bls _080018BE
	mov r1, ip
	adds r1, #0x45
	ldrh r6, [r2, #0x3e]
	subs r0, r6, r4
	ldrb r2, [r1]
	subs r0, r2, r0
	strb r0, [r1]
_080018BE:
	mov r3, ip
	strh r4, [r3, #0x3e]
	strh r7, [r3, #0x3a]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080018CC: .4byte gBG3MapBuffer+0x540
_080018D0: .4byte 0xFFFFFAC0
_080018D4: .4byte 0x040000D4
_080018D8: .4byte 0x80000020
_080018DC: .4byte gBGDecompBuffer
_080018E0: .4byte 0x06004000

	thumb_func_start bg256_up_scroll
bg256_up_scroll: @ 0x080018E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	ldrh r2, [r4, #0x3a]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x13
	mov r8, r0
	movs r6, #8
	cmp r1, #0
	bge _08001902
	movs r6, #4
_08001902:
	str r1, [sp]
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r6, r0, #4
	ldr r5, _08001924 @ =gBG3MapBuffer+0x40
	ldr r7, _08001928 @ =gTilemapBuffer
	mov sl, r7
	adds r0, r4, #0
	adds r0, #0x46
	str r0, [sp, #4]
	movs r1, #0x47
	adds r1, r1, r4
	mov ip, r1
	movs r2, #0x37
	adds r2, r2, r4
	mov sb, r2
	b _08001938
	.align 2, 0
_08001924: .4byte gBG3MapBuffer+0x40
_08001928: .4byte gTilemapBuffer
_0800192C:
	movs r7, #1
	rsbs r7, r7, #0
	add r8, r7
	mov r0, r8
	cmp r0, #0
	beq _080019D0
_08001938:
	movs r1, #0xa8
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r2, _080019F4 @ =0x040000D4
	str r5, [r2]
	str r0, [r2, #4]
	ldr r0, _080019F8 @ =0x80000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r5, #0
	subs r0, #0x40
	str r0, [r2]
	mov r7, sl
	str r7, [r2, #4]
	ldr r0, _080019FC @ =0x800002E0
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r0, sl
	adds r0, #0x40
	str r0, [r2]
	ldr r0, _08001A00 @ =gBG3MapBuffer
	str r0, [r2, #4]
	ldr r0, _08001A04 @ =0x800002C0
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r3, [sp, #4]
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r1, r0, #0
	muls r1, r6, r1
	ldr r7, _08001A08 @ =gBGDecompBuffer
	adds r1, r1, r7
	mov r7, ip
	movs r0, #0
	ldrsb r0, [r7, r0]
	muls r0, r6, r0
	ldr r7, _08001A0C @ =0x06004000
	adds r0, r0, r7
	str r1, [r2]
	str r0, [r2, #4]
	lsrs r0, r6, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	movs r1, #0
	mov r2, ip
	strb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x14
	ble _080019AA
	strb r1, [r2]
_080019AA:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x27
	ble _080019BA
	strb r1, [r3]
_080019BA:
	ldr r7, [sp, #4]
	movs r0, #0
	ldrsb r0, [r7, r0]
	mov r1, sb
	ldrb r1, [r1]
	cmp r0, r1
	bne _0800192C
	adds r0, r4, #0
	ldr r1, [sp]
	bl bg256_up_scroll_end
_080019D0:
	movs r2, #0x3a
	ldrsh r1, [r4, r2]
	adds r0, r1, #0
	cmp r1, #0
	bge _080019DC
	adds r0, r1, #7
_080019DC:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	strh r0, [r4, #0x3a]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080019F4: .4byte 0x040000D4
_080019F8: .4byte 0x80000020
_080019FC: .4byte 0x800002E0
_08001A00: .4byte gBG3MapBuffer
_08001A04: .4byte 0x800002C0
_08001A08: .4byte gBGDecompBuffer
_08001A0C: .4byte 0x06004000

	thumb_func_start UpdateBackground
UpdateBackground: @ 0x08001A10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r6, _08001A88 @ =gMain
	ldr r0, _08001A8C @ =gIORegisters
	mov sl, r0
	ldr r1, _08001A90 @ =gCourtScroll
	mov sb, r1
	ldrh r2, [r6, #0x2e]
	cmp r2, #0x1a
	bne _08001AFE
	ldr r4, _08001A94 @ =0x040000D4
	ldr r0, [r6]
	movs r1, #0xa
	bl __udivsi3
	movs r1, #0xf
	bl __umodsi3
	lsls r0, r0, #5
	ldr r3, _08001A98 @ =gUnknown_0814E120
	adds r0, r0, r3
	str r0, [r4]
	ldr r0, _08001A9C @ =0x05000040
	str r0, [r4, #4]
	ldr r0, _08001AA0 @ =0x80000010
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #0x65
	bl FindAnimationFromAnimId
	adds r4, r0, #0
	cmp r4, #0
	beq _08001AA4
	ldr r0, [r6]
	movs r1, #7
	bl __umodsi3
	cmp r0, #1
	bne _08001AFE
	ldrh r1, [r4, #0x12]
	movs r5, #0x12
	ldrsh r0, [r4, r5]
	cmp r0, #0x6f
	bgt _08001AFE
	adds r0, r1, #1
	strh r0, [r4, #0x12]
	movs r0, #0x69
	bl FindAnimationFromAnimId
	adds r4, r0, #0
	movs r0, #0x78
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0x12]
	adds r0, #1
	b _08001AFC
	.align 2, 0
_08001A88: .4byte gMain
_08001A8C: .4byte gIORegisters
_08001A90: .4byte gCourtScroll
_08001A94: .4byte 0x040000D4
_08001A98: .4byte gUnknown_0814E120
_08001A9C: .4byte 0x05000040
_08001AA0: .4byte 0x80000010
_08001AA4:
	movs r0, #0x64
	bl FindAnimationFromAnimId
	adds r4, r0, #0
	cmp r4, #0
	beq _08001ACA
	ldr r0, [r6]
	movs r1, #0xa
	bl __umodsi3
	cmp r0, #1
	bne _08001ACA
	ldrh r1, [r4, #0x10]
	movs r7, #0x10
	ldrsh r0, [r4, r7]
	cmp r0, #0x78
	ble _08001ACA
	subs r0, r1, #1
	strh r0, [r4, #0x10]
_08001ACA:
	movs r0, #0x66
	bl FindAnimationFromAnimId
	adds r4, r0, #0
	cmp r4, #0
	beq _08001AFE
	ldr r0, [r6]
	movs r1, #0x14
	bl __umodsi3
	cmp r0, #1
	bne _08001AFE
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldrsh r0, [r4, r2]
	cmp r0, #0x77
	bgt _08001AF0
	adds r0, r1, #1
	strh r0, [r4, #0x10]
_08001AF0:
	ldrh r1, [r4, #0x12]
	movs r3, #0x12
	ldrsh r0, [r4, r3]
	cmp r0, #0x20
	ble _08001AFE
	subs r0, r1, #1
_08001AFC:
	strh r0, [r4, #0x12]
_08001AFE:
	ldrh r4, [r6, #0x2e]
	cmp r4, #0x23
	bne _08001B62
	ldr r4, [r6]
	adds r0, r4, #0
	movs r1, #0x28
	bl __umodsi3
	subs r0, #0xd
	cmp r0, #0xb
	bhi _08001B56
	adds r0, r4, #0
	movs r1, #6
	bl __umodsi3
	cmp r0, #2
	bhi _08001B3C
	movs r0, #0x6b
	bl FindAnimationFromAnimId
	adds r2, r0, #0
	cmp r2, #0
	beq _08001B32
	ldrh r0, [r2, #0x10]
	subs r0, #1
	strh r0, [r2, #0x10]
_08001B32:
	mov r5, sl
	ldrh r0, [r5, #0x14]
	adds r0, #1
	strh r0, [r5, #0x14]
	b _08001B56
_08001B3C:
	movs r0, #0x6b
	bl FindAnimationFromAnimId
	adds r2, r0, #0
	cmp r2, #0
	beq _08001B4E
	ldrh r0, [r2, #0x10]
	adds r0, #1
	strh r0, [r2, #0x10]
_08001B4E:
	mov r7, sl
	ldrh r0, [r7, #0x14]
	subs r0, #1
	strh r0, [r7, #0x14]
_08001B56:
	ldr r0, _08001BB4 @ =0x000001FF
	mov r1, sl
	ldrh r1, [r1, #0x14]
	ands r0, r1
	mov r2, sl
	strh r0, [r2, #0x14]
_08001B62:
	ldrh r3, [r6, #0x2e]
	cmp r3, #0x43
	bne _08001BFE
	movs r0, #0x73
	bl FindAnimationFromAnimId
	adds r4, r0, #0
	movs r0, #0x70
	bl FindAnimationFromAnimId
	cmp r4, #0
	beq _08001BFE
	ldrh r5, [r6, #0x3e]
	cmp r5, #0xa0
	bne _08001BFE
	cmp r0, #0
	beq _08001BB8
	ldrh r1, [r4, #0x2e]
	movs r7, #0x2e
	ldrsh r0, [r4, r7]
	cmp r0, #0
	ble _08001BFE
	subs r0, r1, #1
	strh r0, [r4, #0x2e]
	movs r0, #0x2e
	ldrsh r5, [r4, r0]
	adds r0, r5, #0
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08001BFE
	adds r0, r5, #0
	movs r1, #3
	bl __divsi3
	ldrh r1, [r4, #0x12]
	subs r0, r1, r0
	b _08001BFC
	.align 2, 0
_08001BB4: .4byte 0x000001FF
_08001BB8:
	ldrh r0, [r4, #0x2e]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r1, #0x13
	bgt _08001BCE
	adds r0, #1
	strh r0, [r4, #0x2e]
	movs r0, #1
	ldrh r3, [r4, #0x2e]
	ands r0, r3
	b _08001BF4
_08001BCE:
	cmp r1, #0x31
	bgt _08001BE6
	adds r0, #1
	strh r0, [r4, #0x2e]
	movs r0, #1
	ldrh r5, [r4, #0x2e]
	ands r0, r5
	cmp r0, #0
	bne _08001BFE
	ldrh r0, [r4, #0x12]
	subs r0, #1
	b _08001BFC
_08001BE6:
	cmp r1, #0x45
	bgt _08001BFE
	adds r0, #1
	strh r0, [r4, #0x2e]
	movs r0, #1
	ldrh r7, [r4, #0x2e]
	ands r0, r7
_08001BF4:
	cmp r0, #0
	bne _08001BFE
	ldrh r0, [r4, #0x12]
	adds r0, #1
_08001BFC:
	strh r0, [r4, #0x12]
_08001BFE:
	ldrh r0, [r6, #0x2e]
	cmp r0, #0x4d
	bne _08001CE6
	movs r0, #0x12
	bl FindAnimationFromAnimId
	adds r4, r0, #0
	cmp r4, #0
	beq _08001CE6
	movs r0, #0
	movs r1, #0x20
	bl GetFlag
	cmp r0, #0
	beq _08001CE6
	ldrh r7, [r4, #0x12]
	movs r2, #0x12
	ldrsh r1, [r4, r2]
	movs r0, #0x78
	rsbs r0, r0, #0
	adds r5, r7, #0
	cmp r1, r0
	ble _08001CE6
	ldrh r0, [r4, #0x2e]
	adds r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	bgt _08001C54
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08001C50
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
_08001C50:
	subs r0, r5, #1
	b _08001CE4
_08001C54:
	cmp r0, #0x3b
	bgt _08001C7C
	movs r7, #0x2e
	ldrsh r0, [r4, r7]
	movs r1, #6
	bl __modsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08001C6E
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
_08001C6E:
	movs r0, #3
	ldrh r1, [r4, #0x2e]
	ands r0, r1
	cmp r0, #0
	bne _08001CE6
	subs r0, r5, #1
	b _08001CE4
_08001C7C:
	cmp r0, #0x45
	bgt _08001CA4
	movs r0, #3
	ldrh r2, [r4, #0x2e]
	ands r0, r2
	cmp r0, #0
	bne _08001C90
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
_08001C90:
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08001CE6
	subs r0, r5, #1
	b _08001CE4
_08001CA4:
	cmp r0, #0x54
	bgt _08001CCC
	movs r7, #0x2e
	ldrsh r0, [r4, r7]
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08001CBE
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
_08001CBE:
	movs r0, #1
	ldrh r1, [r4, #0x2e]
	ands r0, r1
	cmp r0, #0
	bne _08001CE6
	subs r0, r5, #1
	b _08001CE4
_08001CCC:
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	movs r1, #5
	bl __modsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08001CE2
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
_08001CE2:
	subs r0, r7, #1
_08001CE4:
	strh r0, [r4, #0x12]
_08001CE6:
	ldrh r2, [r6, #0x2e]
	cmp r2, #0x78
	beq _08001CEE
	b _08001EB8
_08001CEE:
	ldr r1, _08001D08 @ =gMain
	ldr r3, _08001D0C @ =0x0000024D
	adds r0, r1, r3
	ldrb r0, [r0]
	adds r4, r1, #0
	cmp r0, #5
	bls _08001CFE
	b _08001EA0
_08001CFE:
	lsls r0, r0, #2
	ldr r1, _08001D10 @ =_08001D14
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08001D08: .4byte gMain
_08001D0C: .4byte 0x0000024D
_08001D10: .4byte _08001D14
_08001D14: @ jump table
	.4byte _08001D2C @ case 0
	.4byte _08001DA4 @ case 1
	.4byte _08001E00 @ case 2
	.4byte _08001E90 @ case 3
	.4byte _08001EA0 @ case 4
	.4byte _08001EA0 @ case 5
_08001D2C:
	mov r1, sp
	ldr r5, _08001D7C @ =0x00004040
	adds r0, r5, #0
	strh r0, [r1]
	ldr r1, _08001D80 @ =0x040000D4
	mov r7, sp
	str r7, [r1]
	ldr r0, _08001D84 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08001D88 @ =0x81000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r3, _08001D8C @ =gBG3MapBuffer
	str r3, [r1]
	ldr r0, _08001D90 @ =gTilemapBuffer
	str r0, [r1, #4]
	ldr r0, _08001D94 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r2, sp
	movs r5, #0xe0
	lsls r5, r5, #3
	adds r0, r5, #0
	strh r0, [r2]
	str r7, [r1]
	str r3, [r1, #4]
	ldr r0, _08001D98 @ =0x81000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r7, _08001D9C @ =0x0000024D
	adds r0, r4, r7
	ldrb r1, [r0]
	adds r1, #1
	movs r2, #0
	strb r1, [r0]
	ldr r1, _08001DA0 @ =0x0000024E
	adds r0, r4, r1
	strb r2, [r0]
	b _08001EA0
	.align 2, 0
_08001D7C: .4byte 0x00004040
_08001D80: .4byte 0x040000D4
_08001D84: .4byte 0x0600E000
_08001D88: .4byte 0x81000010
_08001D8C: .4byte gBG3MapBuffer
_08001D90: .4byte gTilemapBuffer
_08001D94: .4byte 0x80000400
_08001D98: .4byte 0x81000400
_08001D9C: .4byte 0x0000024D
_08001DA0: .4byte 0x0000024E
_08001DA4:
	adds r0, r4, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _08001EA0
	movs r0, #0x7b
	bl FindAnimationFromAnimId
	adds r2, r0, #0
	cmp r2, #0
	beq _08001DCA
	ldr r0, [r4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08001DCA
	ldrh r0, [r2, #0x12]
	adds r0, #1
	strh r0, [r2, #0x12]
_08001DCA:
	movs r1, #1
	rsbs r1, r1, #0
	movs r0, #0
	bl OffsetAllAnimations
	ldr r2, _08001DF4 @ =gMain
	ldr r3, _08001DF8 @ =0x0000024E
	adds r1, r2, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x9f
	bls _08001EA0
	ldr r4, _08001DFC @ =0x0000024D
	adds r1, r2, r4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08001EA0
	.align 2, 0
_08001DF4: .4byte gMain
_08001DF8: .4byte 0x0000024E
_08001DFC: .4byte 0x0000024D
_08001E00:
	movs r2, #0
	movs r7, #0x3a
	ldrsh r5, [r6, r7]
	ldr r1, _08001E10 @ =0x040000D4
	ldr r4, _08001E14 @ =gBG3MapBuffer
	ldr r3, _08001E18 @ =gTilemapBuffer
	b _08001E2C
	.align 2, 0
_08001E10: .4byte 0x040000D4
_08001E14: .4byte gBG3MapBuffer
_08001E18: .4byte gTilemapBuffer
_08001E1C:
	str r3, [r1]
	str r4, [r1, #4]
	ldr r0, _08001E84 @ =0x80000020
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r4, #0x40
	adds r3, #0x40
	adds r2, #1
_08001E2C:
	adds r0, r5, #0
	cmp r0, #0
	bge _08001E34
	adds r0, #7
_08001E34:
	asrs r0, r0, #3
	adds r0, #2
	cmp r2, r0
	bge _08001E40
	cmp r2, #0x1f
	ble _08001E1C
_08001E40:
	movs r0, #0x7b
	bl FindAnimationFromAnimId
	adds r2, r0, #0
	cmp r2, #0
	beq _08001E5E
	ldr r0, _08001E88 @ =gMain
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08001E5E
	ldrh r0, [r2, #0x12]
	adds r0, #1
	strh r0, [r2, #0x12]
_08001E5E:
	movs r1, #1
	rsbs r1, r1, #0
	movs r0, #0
	bl OffsetAllAnimations
	ldrh r0, [r6, #0x3a]
	adds r0, #1
	strh r0, [r6, #0x3a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _08001EA0
	ldr r0, _08001E88 @ =gMain
	ldr r1, _08001E8C @ =0x0000024D
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	b _08001EA0
	.align 2, 0
_08001E84: .4byte 0x80000020
_08001E88: .4byte gMain
_08001E8C: .4byte 0x0000024D
_08001E90:
	ldr r1, _08001EA8 @ =0x040000D4
	ldr r0, _08001EAC @ =gTilemapBuffer
	str r0, [r1]
	ldr r0, _08001EB0 @ =gBG3MapBuffer
	str r0, [r1, #4]
	ldr r0, _08001EB4 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08001EA0:
	ldrh r0, [r6, #0x3a]
	subs r0, #0x98
	b _08002116
	.align 2, 0
_08001EA8: .4byte 0x040000D4
_08001EAC: .4byte gTilemapBuffer
_08001EB0: .4byte gBG3MapBuffer
_08001EB4: .4byte 0x80000400
_08001EB8:
	cmp r2, #0x79
	bne _08001ED0
	movs r0, #0
	strh r0, [r6, #0x3a]
	ldr r0, _08001EEC @ =gMain
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08001ED0
	bl _08002714
_08001ED0:
	cmp r2, #0x7a
	beq _08001ED6
	b _08002128
_08001ED6:
	ldr r4, _08001EEC @ =gMain
	ldr r3, _08001EF0 @ =0x0000024F
	adds r0, r4, r3
	ldrb r0, [r0]
	cmp r0, #1
	beq _08001F84
	cmp r0, #1
	bgt _08001EF4
	cmp r0, #0
	beq _08001EFC
	b _08002110
	.align 2, 0
_08001EEC: .4byte gMain
_08001EF0: .4byte 0x0000024F
_08001EF4:
	cmp r0, #2
	bne _08001EFA
	b _080020CC
_08001EFA:
	b _08002110
_08001EFC:
	mov r1, sp
	movs r0, #0x30
	strh r0, [r1]
	ldr r1, _08001F68 @ =0x040000D4
	mov r4, sp
	str r4, [r1]
	ldr r0, _08001F6C @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08001F70 @ =0x81000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x79
	bl FindAnimationFromAnimId
	adds r2, r0, #0
	cmp r2, #0
	beq _08001F26
	movs r0, #0x78
	strh r0, [r2, #0x10]
	ldr r0, _08001F74 @ =0x0000FF10
	strh r0, [r2, #0x12]
_08001F26:
	movs r0, #0x7b
	bl FindAnimationFromAnimId
	adds r2, r0, #0
	cmp r2, #0
	beq _08001F3A
	movs r0, #0x78
	strh r0, [r2, #0x10]
	ldr r0, _08001F78 @ =0x0000FFB0
	strh r0, [r2, #0x12]
_08001F3A:
	movs r4, #0
	ldr r7, _08001F78 @ =0x0000FFB0
	movs r5, #0x78
_08001F40:
	adds r0, r4, #0
	adds r0, #0x91
	bl FindAnimationFromAnimId
	adds r2, r0, #0
	cmp r2, #0
	beq _08001F52
	strh r5, [r2, #0x10]
	strh r7, [r2, #0x12]
_08001F52:
	adds r4, #1
	cmp r4, #4
	ble _08001F40
	ldr r0, _08001F7C @ =gMain
	ldr r5, _08001F80 @ =0x0000024F
	adds r1, r0, r5
	ldrb r2, [r1]
	adds r2, #1
	movs r3, #0
	strb r2, [r1]
	b _08002092
	.align 2, 0
_08001F68: .4byte 0x040000D4
_08001F6C: .4byte 0x0600E000
_08001F70: .4byte 0x81000010
_08001F74: .4byte 0x0000FF10
_08001F78: .4byte 0x0000FFB0
_08001F7C: .4byte gMain
_08001F80: .4byte 0x0000024F
_08001F84:
	ldrh r0, [r6, #0x3a]
	adds r0, #0x10
	strh r0, [r6, #0x3a]
	movs r4, #0
	movs r0, #0x3a
	ldrsh r3, [r6, r0]
	mov r2, sp
	ldr r1, _08001FA0 @ =0x040000D4
	ldr r7, _08001FA4 @ =gBG3MapBuffer
	movs r0, #0xe0
	lsls r0, r0, #3
	adds r5, r0, #0
	b _08001FC0
	.align 2, 0
_08001FA0: .4byte 0x040000D4
_08001FA4: .4byte gBG3MapBuffer
_08001FA8:
	strh r5, [r2]
	mov r0, sp
	str r0, [r1]
	movs r0, #0x1f
	subs r0, r0, r4
	lsls r0, r0, #6
	adds r0, r0, r7
	str r0, [r1, #4]
	ldr r0, _0800209C @ =0x81000020
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r4, #1
_08001FC0:
	adds r0, r3, #0
	cmp r0, #0
	bge _08001FC8
	adds r0, #7
_08001FC8:
	asrs r0, r0, #3
	adds r0, #2
	cmp r4, r0
	bge _08001FD4
	cmp r4, #0x1f
	ble _08001FA8
_08001FD4:
	movs r0, #0x7b
	bl FindAnimationFromAnimId
	adds r2, r0, #0
	cmp r2, #0
	beq _08001FF2
	ldr r0, _080020A0 @ =gMain
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08001FF2
	ldrh r0, [r2, #0x12]
	subs r0, #0x10
	strh r0, [r2, #0x12]
_08001FF2:
	movs r0, #0
	movs r1, #0x10
	bl OffsetAllAnimations
	ldr r1, _080020A0 @ =gMain
	movs r2, #0x94
	lsls r2, r2, #2
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _08002012
	b _08002110
_08002012:
	movs r0, #0x8f
	bl FindAnimationFromAnimId
	adds r2, r0, #0
	cmp r2, #0
	beq _08002022
	bl DestroyAnimation
_08002022:
	movs r0, #0x90
	bl FindAnimationFromAnimId
	adds r2, r0, #0
	cmp r2, #0
	beq _08002032
	bl DestroyAnimation
_08002032:
	movs r4, #0
_08002034:
	adds r0, r4, #0
	adds r0, #0x91
	bl FindAnimationFromAnimId
	adds r2, r0, #0
	cmp r2, #0
	beq _08002046
	bl DestroyAnimation
_08002046:
	adds r4, #1
	cmp r4, #4
	ble _08002034
	ldr r0, _080020A4 @ =gUnknown_0801BBD8
	ldr r2, _080020A8 @ =gBG3MapBuffer
	ldr r1, _080020AC @ =0x040000D4
	str r0, [r1]
	str r2, [r1, #4]
	ldr r0, _080020B0 @ =0x800002C0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, sp
	movs r3, #0
	strh r3, [r0]
	str r0, [r1]
	ldr r0, _080020B4 @ =0x05000040
	str r0, [r1, #4]
	ldr r0, _080020B8 @ =0x810000E0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r2, sp
	ldr r4, _080020BC @ =0x00002222
	adds r0, r4, #0
	strh r0, [r2]
	str r2, [r1]
	ldr r0, _080020C0 @ =0x06004000
	str r0, [r1, #4]
	ldr r0, _080020C4 @ =0x81004B00
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	strh r0, [r6, #0x3a]
	ldr r0, _080020A0 @ =gMain
	ldr r5, _080020C8 @ =0x0000024F
	adds r2, r0, r5
	ldrb r1, [r2]
	adds r1, #1
	strb r1, [r2]
_08002092:
	movs r7, #0x94
	lsls r7, r7, #2
	adds r0, r0, r7
	strb r3, [r0]
	b _08002110
	.align 2, 0
_0800209C: .4byte 0x81000020
_080020A0: .4byte gMain
_080020A4: .4byte gUnknown_0801BBD8
_080020A8: .4byte gBG3MapBuffer
_080020AC: .4byte 0x040000D4
_080020B0: .4byte 0x800002C0
_080020B4: .4byte 0x05000040
_080020B8: .4byte 0x810000E0
_080020BC: .4byte 0x00002222
_080020C0: .4byte 0x06004000
_080020C4: .4byte 0x81004B00
_080020C8: .4byte 0x0000024F
_080020CC:
	movs r0, #0x7b
	bl FindAnimationFromAnimId
	adds r2, r0, #0
	cmp r2, #0
	beq _080020E8
	ldr r0, [r4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080020E8
	ldrh r0, [r2, #0x12]
	subs r0, #0x10
	strh r0, [r2, #0x12]
_080020E8:
	movs r0, #0
	movs r1, #0x10
	bl OffsetAllAnimations
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r6, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _08002110
	ldr r0, _08002120 @ =gMain
	ldr r1, _08002124 @ =0x0000024F
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
_08002110:
	movs r0, #8
	ldrh r6, [r6, #0x3a]
	subs r0, r0, r6
_08002116:
	mov r2, sl
	strh r0, [r2, #0x16]
	movs r0, #8
	strh r0, [r2, #0x14]
	b _08002714
	.align 2, 0
_08002120: .4byte gMain
_08002124: .4byte 0x0000024F
_08002128:
	cmp r2, #0x61
	bne _08002148
	movs r0, #0x96
	bl FindAnimationFromAnimId
	adds r4, r0, #0
	ldr r0, _08002178 @ =gMain
	ldr r0, [r0]
	movs r1, #0x24
	bl __umodsi3
	cmp r0, #0
	bne _08002148
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
_08002148:
	mov r3, sb
	ldrh r0, [r3, #4]
	movs r4, #0x36
	adds r4, r4, r6
	mov r8, r4
	cmp r0, #0
	beq _0800222E
	movs r0, #1
	ldrh r5, [r3, #0xc]
	ands r0, r5
	cmp r0, #0
	bne _0800222E
	ldr r3, [r3]
	movs r2, #0
	mov r7, sb
	ldrb r0, [r7, #6]
	cmp r0, #5
	bhi _080021E4
	lsls r0, r0, #2
	ldr r1, _0800217C @ =_08002180
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002178: .4byte gMain
_0800217C: .4byte _08002180
_08002180: @ jump table
	.4byte _08002198 @ case 0
	.4byte _08002198 @ case 1
	.4byte _080021B4 @ case 2
	.4byte _080021B4 @ case 3
	.4byte _080021CC @ case 4
	.4byte _080021CC @ case 5
_08002198:
	ldr r0, _080021B0 @ =gUnknown_08111E54
	mov r2, sb
	movs r4, #0xc
	ldrsh r1, [r2, r4]
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r1, r1, #1
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r2, [r1]
	b _080021E4
	.align 2, 0
_080021B0: .4byte gUnknown_08111E54
_080021B4:
	ldr r2, _080021C8 @ =gUnknown_08111E54
	mov r5, sb
	movs r7, #0xc
	ldrsh r0, [r5, r7]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r0, r0, #1
	adds r2, #0x20
	b _080021DC
	.align 2, 0
_080021C8: .4byte gUnknown_08111E54
_080021CC:
	ldr r2, _0800226C @ =gUnknown_08111E54
	mov r1, sb
	movs r4, #0xc
	ldrsh r0, [r1, r4]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r0, r0, #1
_080021DC:
	adds r0, r0, r2
	movs r1, #0x82
	ldrh r0, [r0]
	subs r2, r1, r0
_080021E4:
	ldr r1, _08002270 @ =gIORegisters
	ldr r0, _08002274 @ =0x0000FF7F
	ldrh r5, [r1, #6]
	ands r0, r5
	strh r0, [r1, #6]
	ldr r1, _08002278 @ =0x040000D4
	str r3, [r1]
	ldr r0, _0800227C @ =0x05000040
	str r0, [r1, #4]
	ldr r0, _08002280 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r3, #0x20
	lsls r0, r2, #5
	adds r3, r3, r0
	movs r7, #0xa0
	lsls r7, r7, #5
	mov sb, r7
	ldr r4, _08002284 @ =0x06004000
	movs r2, #0
	movs r0, #0x36
	adds r0, r0, r6
	mov r8, r0
	ldr r7, _08002288 @ =0x800001E0
	movs r5, #0xf0
	lsls r5, r5, #2
_08002218:
	str r3, [r1]
	str r4, [r1, #4]
	str r7, [r1, #8]
	ldr r0, [r1, #8]
	adds r4, r4, r5
	add r3, sb
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x13
	bls _08002218
_0800222E:
	mov ip, r8
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	bne _0800223A
	b _08002714
_0800223A:
	ldr r0, _0800228C @ =gBackgroundTable
	ldrh r7, [r6, #0x2e]
	lsls r1, r7, #3
	adds r0, #4
	adds r1, r1, r0
	mov sb, r1
	ldr r5, [r1]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r5, r0
	cmp r5, #0
	beq _08002294
	adds r0, r6, #0
	adds r0, #0x44
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, sl
	ldrh r2, [r2, #0x14]
	adds r0, r2, r0
	ldr r1, _08002290 @ =0x000001FF
	ands r0, r1
	mov r3, sl
	strh r0, [r3, #0x14]
	b _08002714
	.align 2, 0
_0800226C: .4byte gUnknown_08111E54
_08002270: .4byte gIORegisters
_08002274: .4byte 0x0000FF7F
_08002278: .4byte 0x040000D4
_0800227C: .4byte 0x05000040
_08002280: .4byte 0x80000010
_08002284: .4byte 0x06004000
_08002288: .4byte 0x800001E0
_0800228C: .4byte gBackgroundTable
_08002290: .4byte 0x000001FF
_08002294:
	adds r0, r6, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r4, [r0, r1]
	movs r2, #0x10
	ands r2, r4
	cmp r2, #0
	bne _080022A6
	b _08002412
_080022A6:
	adds r0, #2
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov r8, r0
	cmp r1, #0
	ble _080022B8
	mov r2, ip
	strb r5, [r2]
	b _08002714
_080022B8:
	adds r2, r7, #0
	cmp r2, #0x57
	bne _080022CC
	ldr r0, _080023CC @ =gMain
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080022CC
	b _08002714
_080022CC:
	cmp r2, #0x45
	bne _0800237E
	movs r3, #0x3c
	ldrsh r0, [r6, r3]
	cmp r0, #9
	bgt _080022F4
	ldr r2, _080023D0 @ =gUnknown_02002BBC
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldr r3, _080023D4 @ =gUnknown_02002BBD
	ldrb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bhs _080022EE
	b _08002714
_080022EE:
	strb r5, [r2]
	adds r0, r1, #1
	strb r0, [r3]
_080022F4:
	ldrh r4, [r6, #0x2e]
	cmp r4, #0x45
	bne _0800237E
	ldrh r7, [r6, #0x3c]
	cmp r7, #0xf0
	bne _08002310
	ldr r0, _080023D0 @ =gUnknown_02002BBC
	strb r5, [r0]
	ldr r0, _080023D4 @ =gUnknown_02002BBD
	strb r5, [r0]
	ldr r0, _080023D8 @ =gUnknown_02002BBE
	strb r5, [r0]
	ldr r0, _080023DC @ =gUnknown_02002BBF
	strb r5, [r0]
_08002310:
	movs r0, #0x74
	bl FindAnimationFromAnimId
	adds r4, r0, #0
	cmp r4, #0
	beq _0800237E
	ldr r2, _080023D8 @ =gUnknown_02002BBE
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldr r1, _080023E0 @ =gUnknown_08111E94
	ldr r3, _080023DC @ =gUnknown_02002BBF
	ldrb r7, [r3]
	adds r1, r7, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	bne _08002344
	strb r5, [r2]
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_08002344:
	movs r1, #0x3c
	ldrsh r0, [r6, r1]
	cmp r0, #0x8c
	ble _0800235E
	movs r1, #0xa
	bl __modsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800235E
	ldrh r0, [r4, #0x12]
	adds r0, #1
	strh r0, [r4, #0x12]
_0800235E:
	movs r3, #0x3c
	ldrsh r0, [r6, r3]
	cmp r0, #0x77
	bgt _08002378
	movs r1, #6
	bl __modsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08002378
	ldrh r0, [r4, #0x12]
	subs r0, #1
	strh r0, [r4, #0x12]
_08002378:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
_0800237E:
	mov r7, r8
	movs r0, #0
	ldrsb r0, [r7, r0]
	ldrh r1, [r6, #0x38]
	adds r2, r1, r0
	strh r2, [r6, #0x38]
	movs r0, #0
	ldrsb r0, [r7, r0]
	ldrh r4, [r6, #0x3c]
	adds r3, r4, r0
	strh r3, [r6, #0x3c]
	ldr r0, _080023E4 @ =gBackgroundTable
	ldrh r5, [r6, #0x2e]
	lsls r1, r5, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r1, [r1]
	movs r0, #1
	ands r0, r1
	movs r4, #0xb4
	lsls r4, r4, #1
	cmp r0, #0
	beq _080023AE
	adds r4, #0x78
_080023AE:
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r1, r0
	orrs r4, r1
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r1, #8
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _080023E8
	adds r0, r6, #0
	adds r1, r4, #0
	bl bg256_right_scroll
	b _0800240A
	.align 2, 0
_080023CC: .4byte gMain
_080023D0: .4byte gUnknown_02002BBC
_080023D4: .4byte gUnknown_02002BBD
_080023D8: .4byte gUnknown_02002BBE
_080023DC: .4byte gUnknown_02002BBF
_080023E0: .4byte gUnknown_08111E94
_080023E4: .4byte gBackgroundTable
_080023E8:
	lsls r0, r3, #0x10
	cmp r0, #0
	bge _0800240A
	adds r1, r6, #0
	adds r1, #0x47
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08002402
	movs r0, #0x1e
	strb r0, [r1]
_08002402:
	adds r0, r6, #0
	adds r1, r4, #0
	bl bg256_right_scroll_end
_0800240A:
	mov r7, r8
	movs r0, #0
	ldrsb r0, [r7, r0]
	b _0800249C
_08002412:
	movs r3, #0x20
	ands r3, r4
	cmp r3, #0
	beq _080024A6
	adds r0, r6, #0
	adds r0, #0x44
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov r8, r0
	cmp r1, #0
	bge _0800242E
	mov r0, ip
	strb r2, [r0]
	b _08002714
_0800242E:
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r3, [r6, #0x38]
	adds r2, r3, r0
	strh r2, [r6, #0x38]
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r4, [r6, #0x3c]
	adds r0, r4, r0
	strh r0, [r6, #0x3c]
	mov r5, sb
	ldr r1, [r5]
	movs r0, #1
	ands r0, r1
	movs r4, #0xb4
	lsls r4, r4, #1
	cmp r0, #0
	beq _08002456
	adds r4, #0x78
_08002456:
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r1, r0
	orrs r4, r1
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _0800246E
	adds r0, r6, #0
	adds r1, r4, #0
	bl bg256_left_scroll
_0800246E:
	movs r7, #0x3c
	ldrsh r1, [r6, r7]
	lsrs r0, r4, #1
	cmp r1, r0
	bls _08002496
	adds r1, r6, #0
	adds r1, #0x47
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1e
	ble _0800248E
	movs r0, #0
	strb r0, [r1]
_0800248E:
	adds r0, r6, #0
	adds r1, r4, #0
	bl bg256_left_scroll_end
_08002496:
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
_0800249C:
	rsbs r0, r0, #0
	movs r1, #0
	bl OffsetAllAnimations
	b _08002706
_080024A6:
	movs r2, #0x40
	ands r2, r4
	cmp r2, #0
	bne _080024B0
	b _08002612
_080024B0:
	adds r0, r6, #0
	adds r0, #0x45
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov sb, r0
	cmp r1, #0
	ble _080024C4
	mov r2, ip
	strb r3, [r2]
	b _08002714
_080024C4:
	cmp r7, #0x43
	bne _08002586
	movs r0, #0x73
	bl FindAnimationFromAnimId
	adds r4, r0, #0
	cmp r4, #0
	beq _08002518
	movs r3, #0x3e
	ldrsh r0, [r6, r3]
	cmp r0, #0x78
	ble _080024EC
	movs r0, #1
	ldrh r5, [r6, #0x3e]
	ands r0, r5
	cmp r0, #0
	beq _08002518
	ldrh r0, [r4, #0x12]
	subs r0, #1
	b _08002516
_080024EC:
	movs r7, #0x3e
	ldrsh r5, [r6, r7]
	adds r0, r5, #0
	movs r1, #6
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x79
	subs r0, r1, r0
	cmp r0, #2
	bgt _08002512
	subs r0, r1, r5
	movs r1, #6
	bl __divsi3
	ldrh r1, [r4, #0x12]
	subs r0, r1, r0
	b _08002516
_08002512:
	ldrh r0, [r4, #0x12]
	subs r0, #3
_08002516:
	strh r0, [r4, #0x12]
_08002518:
	movs r2, #0x3e
	ldrsh r0, [r6, r2]
	ldrh r5, [r6, #0x3e]
	cmp r0, #0xa0
	bne _08002538
	ldr r1, _08002530 @ =gUnknown_02002BC0
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08002534 @ =gUnknown_02002BC1
	movs r0, #5
	strb r0, [r1]
	b _08002586
	.align 2, 0
_08002530: .4byte gUnknown_02002BC0
_08002534: .4byte gUnknown_02002BC1
_08002538:
	cmp r0, #0x9b
	ble _08002560
	ldr r4, _080025D4 @ =gUnknown_02002BC1
	ldrb r3, [r4]
	adds r2, r3, #0
	cmp r2, #0
	beq _08002560
	ldr r1, _080025D8 @ =gUnknown_02002BC0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	beq _08002558
	b _08002714
_08002558:
	movs r0, #0
	strb r0, [r1]
	subs r0, r3, #1
	strb r0, [r4]
_08002560:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x27
	bgt _08002586
	ldr r2, _080025D8 @ =gUnknown_02002BC0
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldr r3, _080025D4 @ =gUnknown_02002BC1
	ldrb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bhs _0800257E
	b _08002714
_0800257E:
	movs r0, #0
	strb r0, [r2]
	adds r0, r1, #1
	strb r0, [r3]
_08002586:
	mov r3, sb
	movs r0, #0
	ldrsb r0, [r3, r0]
	ldrh r4, [r6, #0x3a]
	adds r2, r4, r0
	strh r2, [r6, #0x3a]
	movs r0, #0
	ldrsb r0, [r3, r0]
	ldrh r5, [r6, #0x3e]
	adds r3, r5, r0
	strh r3, [r6, #0x3e]
	ldr r0, _080025DC @ =gBackgroundTable
	ldrh r7, [r6, #0x2e]
	lsls r1, r7, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r1, [r1]
	movs r0, #4
	ands r0, r1
	movs r4, #0xf0
	cmp r0, #0
	beq _080025B4
	adds r4, #0x50
_080025B4:
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r1, r0
	orrs r4, r1
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r1, #8
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _080025E0
	adds r0, r6, #0
	adds r1, r4, #0
	bl bg256_down_scroll
	b _08002602
	.align 2, 0
_080025D4: .4byte gUnknown_02002BC1
_080025D8: .4byte gUnknown_02002BC0
_080025DC: .4byte gBackgroundTable
_080025E0:
	lsls r0, r3, #0x10
	cmp r0, #0
	bgt _08002602
	adds r1, r6, #0
	adds r1, #0x47
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080025FA
	movs r0, #0x14
	strb r0, [r1]
_080025FA:
	adds r0, r6, #0
	adds r1, r4, #0
	bl bg256_down_scroll_end
_08002602:
	mov r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	rsbs r1, r1, #0
	movs r0, #0
	bl OffsetAllAnimations
	b _08002706
_08002612:
	movs r0, #0x80
	ands r4, r0
	cmp r4, #0
	beq _08002706
	adds r0, r6, #0
	adds r0, #0x45
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov sb, r0
	cmp r1, #0
	bge _0800262E
	mov r1, r8
	strb r2, [r1]
	b _08002714
_0800262E:
	cmp r7, #0x24
	bne _08002678
	movs r0, #0x6d
	bl FindAnimationFromAnimId
	adds r1, r0, #0
	cmp r1, #0
	bne _08002678
	movs r2, #0x3e
	ldrsh r0, [r6, r2]
	cmp r0, #0x1f
	ble _08002678
	mov r0, sp
	strh r1, [r0]
	ldr r1, _080026C0 @ =0x040000D4
	str r0, [r1]
	ldr r0, _080026C4 @ =0x06015800
	str r0, [r1, #4]
	ldr r0, _080026C8 @ =0x810007A0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r3, #0x3e
	ldrsh r2, [r6, r3]
	movs r4, #0xf0
	subs r2, r4, r2
	movs r0, #0x6c
	movs r1, #0x78
	bl PlayAnimationAtCustomOrigin
	movs r5, #0x3e
	ldrsh r0, [r6, r5]
	subs r4, r4, r0
	movs r0, #0x6d
	movs r1, #0x78
	adds r2, r4, #0
	bl PlayAnimationAtCustomOrigin
_08002678:
	mov r7, sb
	movs r0, #0
	ldrsb r0, [r7, r0]
	ldrh r1, [r6, #0x3a]
	adds r2, r1, r0
	strh r2, [r6, #0x3a]
	movs r0, #0
	ldrsb r0, [r7, r0]
	ldrh r3, [r6, #0x3e]
	adds r0, r3, r0
	strh r0, [r6, #0x3e]
	ldr r0, _080026CC @ =gBackgroundTable
	ldrh r4, [r6, #0x2e]
	lsls r1, r4, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r1, [r1]
	movs r0, #4
	ands r0, r1
	movs r4, #0xf0
	cmp r0, #0
	beq _080026A6
	adds r4, #0x50
_080026A6:
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r1, r0
	orrs r4, r1
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _080026D0
	adds r0, r6, #0
	adds r1, r4, #0
	bl bg256_up_scroll
	b _080026F8
	.align 2, 0
_080026C0: .4byte 0x040000D4
_080026C4: .4byte 0x06015800
_080026C8: .4byte 0x810007A0
_080026CC: .4byte gBackgroundTable
_080026D0:
	movs r5, #0x3e
	ldrsh r1, [r6, r5]
	lsrs r0, r4, #1
	cmp r1, r0
	bls _080026F8
	adds r1, r6, #0
	adds r1, #0x47
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x14
	ble _080026F0
	movs r0, #0
	strb r0, [r1]
_080026F0:
	lsls r1, r4, #1
	adds r0, r6, #0
	bl bg256_up_scroll_end
_080026F8:
	mov r7, sb
	movs r1, #0
	ldrsb r1, [r7, r1]
	rsbs r1, r1, #0
	movs r0, #0
	bl OffsetAllAnimations
_08002706:
	ldrh r0, [r6, #0x3a]
	adds r0, #8
	mov r1, sl
	strh r0, [r1, #0x16]
	ldrh r0, [r6, #0x38]
	adds r0, #8
	strh r0, [r1, #0x14]
_08002714:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start DecompressCurrentBGStripe
DecompressCurrentBGStripe: @ 0x08002724
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldr r0, _08002744 @ =0xFFFF7FFF
	ands r2, r0
	cmp r2, #0x80
	bne _0800274C
	ldr r2, _08002748 @ =gMain
	adds r1, r2, #0
	adds r1, #0x34
	movs r0, #0xb
	strb r0, [r1]
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	bl UpdateAnimations
	b _08002818
	.align 2, 0
_08002744: .4byte 0xFFFF7FFF
_08002748: .4byte gMain
_0800274C:
	ldr r0, _080027D8 @ =gBackgroundTable
	lsls r2, r2, #3
	adds r0, r2, r0
	ldr r5, [r0]
	ldr r0, _080027DC @ =gMain
	adds r1, r0, #0
	adds r1, #0x34
	adds r6, r0, #0
	adds r7, r2, #0
	ldrb r1, [r1]
	cmp r1, #1
	bne _08002780
	adds r4, r5, #0
	movs r3, #1
	adds r1, r6, #0
	adds r1, #0x50
_0800276C:
	ldm r4!, {r0}
	stm r1!, {r0}
	adds r3, #1
	cmp r3, #0xa
	bls _0800276C
	ldr r0, _080027DC @ =gMain
	movs r1, #0x32
	ldrsh r0, [r0, r1]
	bl UpdateAnimations
_08002780:
	ldr r2, _080027DC @ =gMain
	adds r0, r2, #0
	adds r0, #0x34
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x4c
	adds r0, r0, r1
	ldr r0, [r0]
	adds r5, r5, r0
	ldr r0, _080027D8 @ =gBackgroundTable
	adds r0, #4
	adds r0, r7, r0
	ldr r4, [r0]
	movs r0, #1
	ands r0, r4
	adds r6, r2, #0
	cmp r0, #0
	bne _080027B6
	movs r0, #4
	ands r0, r4
	movs r3, #0xf0
	lsls r3, r3, #4
	cmp r0, #0
	beq _080027BA
_080027B6:
	movs r3, #0xf0
	lsls r3, r3, #5
_080027BA:
	movs r1, #0x80
	lsls r1, r1, #0x18
	ands r1, r4
	cmp r1, #0
	beq _080027C6
	lsrs r3, r3, #1
_080027C6:
	adds r0, r6, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #1
	bne _08002800
	cmp r1, #0
	beq _080027E0
	adds r5, #0x20
	b _080027E6
	.align 2, 0
_080027D8: .4byte gBackgroundTable
_080027DC: .4byte gMain
_080027E0:
	movs r0, #0x80
	lsls r0, r0, #2
	adds r5, r5, r0
_080027E6:
	movs r0, #0xf
	ands r4, r0
	cmp r4, #0
	bne _080027F8
	ldr r0, _080027F4 @ =gUnknown_02036500
	b _08002804
	.align 2, 0
_080027F4: .4byte gUnknown_02036500
_080027F8:
	ldr r0, _080027FC @ =gBGDecompBuffer
	b _08002804
	.align 2, 0
_080027FC: .4byte gBGDecompBuffer
_08002800:
	ldr r0, [r6, #0x48]
	adds r0, r0, r3
_08002804:
	str r0, [r6, #0x48]
	ldr r1, [r6, #0x48]
	adds r0, r5, #0
	bl LZ77UnCompWram
	adds r1, r6, #0
	adds r1, #0x34
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08002818:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
