	.include "asm/macros.inc"
	.syntax unified

	thumb_func_start InitBGs
InitBGs: @ 0x08000EF8
	push {r4, r5, r6, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08000F54 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08000F58 @ =gBG0MapBuffer
	str r0, [r1, #4]
	ldr r0, _08000F5C @ =0x81000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08000F60 @ =gBG1MapBuffer
	movs r1, #0
	ldr r4, _08000F64 @ =0x000003FF
	ldr r6, _08000F68 @ =gBG2MapBuffer
	ldr r5, _08000F6C @ =gIORegisters
	ldr r3, _08000F70 @ =gUnknown_0801B1D8
_08000F1E:
	adds r0, r1, r3
	ldrb r0, [r0]
	strh r0, [r2]
	adds r1, #1
	adds r2, #2
	cmp r1, r4
	bls _08000F1E
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08000F54 @ =0x040000D4
	str r1, [r0]
	str r6, [r0, #4]
	ldr r1, _08000F5C @ =0x81000400
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #0
	strh r0, [r5, #0x12]
	movs r0, #8
	strh r0, [r5, #0x10]
	bl sub_8000F74
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000F54: .4byte 0x040000D4
_08000F58: .4byte gBG0MapBuffer
_08000F5C: .4byte 0x81000400
_08000F60: .4byte gBG1MapBuffer
_08000F64: .4byte 0x000003FF
_08000F68: .4byte gBG2MapBuffer
_08000F6C: .4byte gIORegisters
_08000F70: .4byte gUnknown_0801B1D8

	thumb_func_start sub_8000F74
sub_8000F74: @ 0x08000F74
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r7, _08000FE0 @ =gMain
	movs r1, #0
	ldr r6, _08000FE4 @ =gIORegisters
	ldr r0, _08000FE8 @ =gBG3MapBuffer
	movs r2, #0x96
	lsls r2, r2, #2
	adds r3, r2, #0
	adds r2, r0, #2
_08000F88:
	adds r0, r1, r3
	strh r0, [r2]
	adds r2, #2
	adds r1, #1
	cmp r1, #0x1d
	bls _08000F88
	movs r1, #0
	ldr r5, _08000FE8 @ =gBG3MapBuffer
_08000F98:
	movs r2, #0
	adds r4, r1, #1
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r3, r0, #1
	lsls r0, r1, #6
	adds r0, #0x42
	adds r1, r0, r5
_08000FA8:
	adds r0, r2, r3
	strh r0, [r1]
	adds r1, #2
	adds r2, #1
	cmp r2, #0x1d
	bls _08000FA8
	adds r1, r4, #0
	cmp r1, #0x14
	bls _08000F98
	movs r1, #0
	movs r0, #8
	strh r0, [r6, #0x16]
	strh r0, [r6, #0x14]
	strh r1, [r7, #0x38]
	strh r1, [r7, #0x3a]
	mov r0, sp
	strh r1, [r0]
	ldr r1, _08000FEC @ =0x040000D4
	str r0, [r1]
	ldr r0, _08000FF0 @ =0x0600DD80
	str r0, [r1, #4]
	ldr r0, _08000FF4 @ =0x81000020
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000FE0: .4byte gMain
_08000FE4: .4byte gIORegisters
_08000FE8: .4byte gBG3MapBuffer
_08000FEC: .4byte 0x040000D4
_08000FF0: .4byte 0x0600DD80
_08000FF4: .4byte 0x81000020

	thumb_func_start sub_8000FF8
sub_8000FF8: @ 0x08000FF8
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

	thumb_func_start sub_8001158
sub_8001158: @ 0x08001158
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
	bl sub_8000FF8
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

	thumb_func_start sub_80012C0
sub_80012C0: @ 0x080012C0
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

	thumb_func_start sub_8001460
sub_8001460: @ 0x08001460
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
	bl sub_80012C0
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

	thumb_func_start sub_80015C8
sub_80015C8: @ 0x080015C8
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

	thumb_func_start sub_80016CC
sub_80016CC: @ 0x080016CC
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
	bl sub_80015C8
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

	thumb_func_start sub_80017F0
sub_80017F0: @ 0x080017F0
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

	thumb_func_start sub_80018E4
sub_80018E4: @ 0x080018E4
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
	bl sub_80017F0
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
	bl sub_8014C68
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
	bl sub_8014C68
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
	bl sub_8014C68
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
	bl sub_8014C68
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
	bl sub_8001158
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
	bl sub_8000FF8
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
	bl sub_8001460
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
	bl sub_80012C0
_08002496:
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
_0800249C:
	rsbs r0, r0, #0
	movs r1, #0
	bl sub_8014C68
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
	bl sub_80016CC
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
	bl sub_80015C8
_08002602:
	mov r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_8014C68
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
	bl sub_80018E4
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
	bl sub_80017F0
_080026F8:
	mov r7, sb
	movs r1, #0
	ldrsb r1, [r7, r1]
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_8014C68
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

	thumb_func_start sub_8002820
sub_8002820: @ 0x08002820
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r7, _08002870 @ =gMain
	movs r1, #0x32
	ldrsh r0, [r7, r1]
	bl UpdateAnimations
	ldr r0, _08002874 @ =0xFFFF7FFF
	ands r4, r0
	cmp r4, #0x80
	beq _08002904
	ldr r0, _08002878 @ =gBackgroundTable
	lsls r1, r4, #3
	adds r0, r1, r0
	ldr r5, [r0]
	adds r2, r5, #0
	movs r6, #1
	mov sb, r1
	adds r1, r7, #0
	adds r1, #0x50
_0800284E:
	ldm r2!, {r0}
	stm r1!, {r0}
	adds r6, #1
	cmp r6, #0xa
	bls _0800284E
	ldr r0, _08002878 @ =gBackgroundTable
	adds r0, #4
	add r0, sb
	ldr r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800287C
	movs r2, #0xf0
	lsls r2, r2, #5
	mov r8, r2
	b _08002890
	.align 2, 0
_08002870: .4byte gMain
_08002874: .4byte 0xFFFF7FFF
_08002878: .4byte gBackgroundTable
_0800287C:
	movs r0, #4
	ands r0, r1
	movs r2, #0xf0
	lsls r2, r2, #4
	mov r8, r2
	cmp r0, #0
	beq _08002890
	movs r0, #0xf0
	lsls r0, r0, #5
	mov r8, r0
_08002890:
	cmp r1, #0
	bge _0800289E
	mov r2, r8
	lsrs r2, r2, #1
	mov r8, r2
	adds r5, #0x20
	b _080028A4
_0800289E:
	movs r0, #0x80
	lsls r0, r0, #2
	adds r5, r5, r0
_080028A4:
	ldr r2, _080028B8 @ =gMain
	ldr r0, [r2, #0x50]
	adds r5, r5, r0
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0
	bne _080028C0
	ldr r0, _080028BC @ =gUnknown_02036500
	b _080028C2
	.align 2, 0
_080028B8: .4byte gMain
_080028BC: .4byte gUnknown_02036500
_080028C0:
	ldr r0, _08002910 @ =gBGDecompBuffer
_080028C2:
	str r0, [r2, #0x48]
	bl m4aSoundVSyncOff
	ldr r4, _08002914 @ =gMain
	ldr r1, [r4, #0x48]
	adds r0, r5, #0
	bl LZ77UnCompWram
	movs r6, #2
	ldr r0, _08002918 @ =gBackgroundTable
	mov r1, sb
	adds r7, r1, r0
	movs r2, #0x54
	adds r2, r2, r4
	mov sb, r2
_080028E0:
	ldr r1, [r4, #0x48]
	add r1, r8
	str r1, [r4, #0x48]
	ldr r5, [r7]
	mov r2, sb
	adds r2, #4
	mov sb, r2
	subs r2, #4
	ldm r2!, {r0}
	adds r5, r5, r0
	adds r0, r5, #0
	bl LZ77UnCompWram
	adds r6, #1
	cmp r6, #0xa
	bls _080028E0
	bl m4aSoundVSyncOn
_08002904:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002910: .4byte gBGDecompBuffer
_08002914: .4byte gMain
_08002918: .4byte gBackgroundTable

	thumb_func_start nullsub_7
nullsub_7: @ 0x0800291C
	bx lr
	.align 2, 0

	thumb_func_start sub_8002920
sub_8002920: @ 0x08002920
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, _08002948 @ =gBG0MapBuffer+0x404
	adds r2, #0x40
	movs r4, #0
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #6
	adds r7, r0, #0
_08002934:
	movs r0, #0
	adds r5, r4, #1
	adds r6, r1, #1
	adds r1, r4, #0
	adds r1, #0x80
	orrs r1, r7
_08002940:
	cmp r3, #0
	beq _0800294C
	strh r1, [r2]
	b _0800294E
	.align 2, 0
_08002948: .4byte gBG0MapBuffer+0x404
_0800294C:
	strh r3, [r2]
_0800294E:
	adds r2, #2
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x19
	bls _08002940
	adds r2, #0xc
	lsls r0, r5, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r6, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #2
	bls _08002934
	cmp r3, #0
	beq _08002998
	ldr r1, _080029A0 @ =0x040000D4
	ldr r0, _080029A4 @ =gUnknown_0813D91C
	str r0, [r1]
	ldr r0, _080029A8 @ =0x06001000
	str r0, [r1, #4]
	ldr r0, _080029AC @ =0x80000030
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _080029B0 @ =gIORegisters
	ldr r0, _080029B4 @ =0x0000FFFC
	ldrh r1, [r2]
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	adds r2, #0x4a
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
_08002998:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080029A0: .4byte 0x040000D4
_080029A4: .4byte gUnknown_0813D91C
_080029A8: .4byte 0x06001000
_080029AC: .4byte 0x80000030
_080029B0: .4byte gIORegisters
_080029B4: .4byte 0x0000FFFC

	thumb_func_start CopyBGDataToVram
CopyBGDataToVram: @ 0x080029B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r0, _080029F8 @ =gMain
	mov r8, r0
	ldr r1, _080029FC @ =gIORegisters
	mov sl, r1
	cmp r4, #0x56
	bne _080029D8
	movs r0, #0
	mov r2, r8
	strh r0, [r2, #0x3a]
_080029D8:
	cmp r4, #0x57
	bne _080029E2
	movs r0, #0
	mov r3, r8
	strh r0, [r3, #0x3a]
_080029E2:
	cmp r4, #0x11
	bne _08002A08
	mov r0, r8
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #1
	bne _08002A00
	movs r0, #0
	bl sub_8002920
	b _08002A14
	.align 2, 0
_080029F8: .4byte gMain
_080029FC: .4byte gIORegisters
_08002A00:
	movs r0, #1
	bl sub_8002920
	b _08002A14
_08002A08:
	mov r1, r8
	adds r1, #0x35
	movs r0, #0
	strb r0, [r1]
	bl sub_8002920
_08002A14:
	ldr r0, _08002A30 @ =gMain
	ldrb r0, [r0, #8]
	cmp r0, #4
	bne _08002A1E
	b _08002B28
_08002A1E:
	cmp r4, #4
	beq _08002ACE
	cmp r4, #5
	bne _08002A34
	bl sub_800E8C4
	movs r0, #0x20
	b _08002AF4
	.align 2, 0
_08002A30: .4byte gMain
_08002A34:
	cmp r4, #6
	beq _08002ADE
	cmp r4, #0x16
	beq _08002A40
	cmp r4, #0x18
	bne _08002A6A
_08002A40:
	ldr r2, _08002AC0 @ =gAnimation
	ldr r0, [r2, #0x44]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08002A6A
	adds r0, r2, #0
	adds r0, #0x52
	ldrb r0, [r0]
	cmp r0, #0x10
	bne _08002A6A
	ldr r0, _08002AC4 @ =0x00000507
	mov r6, r8
	ldrh r6, [r6, #8]
	cmp r6, r0
	bne _08002ADE
	mov r0, r8
	ldrb r0, [r0, #0xa]
	cmp r0, #4
	beq _08002ADE
_08002A6A:
	cmp r4, #0x53
	bne _08002A98
	ldr r2, _08002AC0 @ =gAnimation
	ldr r0, [r2, #0x44]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08002A98
	adds r0, r2, #0
	adds r0, #0x52
	ldrb r0, [r0]
	cmp r0, #3
	bne _08002A98
	ldr r0, _08002AC4 @ =0x00000507
	mov r1, r8
	ldrh r1, [r1, #8]
	cmp r1, r0
	bne _08002ACE
	mov r2, r8
	ldrb r2, [r2, #0xa]
	cmp r2, #4
	beq _08002ACE
_08002A98:
	cmp r4, #0x80
	bne _08002B14
	ldr r2, _08002AC0 @ =gAnimation
	ldr r0, [r2, #0x44]
	movs r1, #0x88
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, r1
	bne _08002B14
	adds r0, r2, #0
	adds r0, #0x52
	ldrb r0, [r0]
	cmp r0, #8
	beq _08002AEE
	cmp r0, #8
	bgt _08002AC8
	cmp r0, #3
	beq _08002ACE
	b _08002AFE
	.align 2, 0
_08002AC0: .4byte gAnimation
_08002AC4: .4byte 0x00000507
_08002AC8:
	cmp r0, #0x18
	beq _08002ADE
	b _08002AFE
_08002ACE:
	bl sub_800E8C4
	movs r0, #0
	movs r1, #0x80
	movs r2, #1
	bl sub_800E900
	b _08002B28
_08002ADE:
	bl sub_800E7B0
	movs r0, #0x18
	movs r1, #0x80
	movs r2, #1
	bl sub_800E7EC
	b _08002B28
_08002AEE:
	bl sub_800E8C4
	movs r0, #0x18
_08002AF4:
	movs r1, #0x80
	movs r2, #1
	bl sub_800E9D4
	b _08002B28
_08002AFE:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_800E7EC
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_800E900
	b _08002B28
_08002B14:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_800E7EC
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_800E900
_08002B28:
	ldr r1, _08002BD0 @ =gScriptContext
	movs r0, #0x40
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08002C28
	ldr r1, _08002BD4 @ =gUnknown_08263FD4
	ldr r3, _08002BD8 @ =0x050001C0
	ldr r2, _08002BDC @ =0x040000D4
	str r1, [r2]
	str r3, [r2, #4]
	ldr r0, _08002BE0 @ =0x80000010
	str r0, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08002BE4 @ =gUnknown_08265CC4
	adds r3, #0x20
	str r1, [r2]
	str r3, [r2, #4]
	str r0, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08002BE8 @ =gUnknown_08277A98
	subs r3, #0x40
	str r1, [r2]
	str r3, [r2, #4]
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _08002BEC @ =gUnknown_0847845C
	str r0, [r2]
	ldr r1, _08002BF0 @ =gUnknown_0203B000
	str r1, [r2, #4]
	ldr r0, _08002BF4 @ =0x80000280
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r3, _08002BF8 @ =0x06008B00
	str r1, [r2]
	str r3, [r2, #4]
	ldr r0, _08002BFC @ =0x80002800
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, _08002C00 @ =gBG2MapBuffer
	ldr r3, _08002C04 @ =0x0600F000
	str r1, [r2]
	str r3, [r2, #4]
	ldr r0, _08002C08 @ =0x800002C0
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, _08002C0C @ =0x0400000C
	mov r3, sl
	ldrh r0, [r3, #4]
	strh r0, [r1]
	mov r6, r8
	ldrh r6, [r6, #0x2e]
	cmp r6, #0x80
	bne _08002C28
	adds r1, #2
	ldr r0, _08002C10 @ =0x0000FF7F
	ldrh r3, [r1]
	ands r0, r3
	strh r0, [r1]
	mov r1, sp
	ldr r6, _08002C14 @ =0x00002222
	adds r0, r6, #0
	strh r0, [r1]
	str r1, [r2]
	ldr r0, _08002C18 @ =0x06004000
	str r0, [r2, #4]
	ldr r0, _08002C1C @ =0x81000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r3, _08002C20 @ =0x0600F800
	movs r0, #0
	strh r0, [r1]
	str r1, [r2]
	str r3, [r2, #4]
	ldr r0, _08002C24 @ =0x81000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #0
	bl MoveAnimationTilesToRam
	bl MoveSpritesToOAM
	bl _0800341C
	.align 2, 0
_08002BD0: .4byte gScriptContext
_08002BD4: .4byte gUnknown_08263FD4
_08002BD8: .4byte 0x050001C0
_08002BDC: .4byte 0x040000D4
_08002BE0: .4byte 0x80000010
_08002BE4: .4byte gUnknown_08265CC4
_08002BE8: .4byte gUnknown_08277A98
_08002BEC: .4byte gUnknown_0847845C
_08002BF0: .4byte gUnknown_0203B000
_08002BF4: .4byte 0x80000280
_08002BF8: .4byte 0x06008B00
_08002BFC: .4byte 0x80002800
_08002C00: .4byte gBG2MapBuffer
_08002C04: .4byte 0x0600F000
_08002C08: .4byte 0x800002C0
_08002C0C: .4byte 0x0400000C
_08002C10: .4byte 0x0000FF7F
_08002C14: .4byte 0x00002222
_08002C18: .4byte 0x06004000
_08002C1C: .4byte 0x81000010
_08002C20: .4byte 0x0600F800
_08002C24: .4byte 0x81000400
_08002C28:
	movs r0, #0
	bl MoveAnimationTilesToRam
	bl MoveSpritesToOAM
	adds r6, r4, #0
	ldr r4, _08002CA4 @ =0xFFFF7FFF
	ands r4, r6
	movs r0, #0
	movs r2, #0
	movs r1, #8
	mov r3, sl
	strh r1, [r3, #0x16]
	strh r1, [r3, #0x14]
	mov r1, r8
	adds r1, #0x36
	strb r0, [r1]
	mov r0, r8
	strh r2, [r0, #0x3c]
	strh r2, [r0, #0x3e]
	strh r4, [r0, #0x2e]
	strh r4, [r0, #0x30]
	adds r7, r1, #0
	cmp r4, #0x80
	bne _08002D08
	ldr r1, _08002CA8 @ =gUnknown_0801BBD8
	ldr r3, _08002CAC @ =gBG3MapBuffer
	ldr r4, _08002CB0 @ =0x040000D4
	str r1, [r4]
	str r3, [r4, #4]
	ldr r0, _08002CB4 @ =0x800002C0
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r1, r8
	adds r1, #0x84
	ldr r0, _08002CB8 @ =0x0000FFFE
	ldrh r1, [r1]
	cmp r1, r0
	bne _08002CCC
	ldr r0, _08002CBC @ =gAnimation
	adds r0, #0x52
	ldrb r0, [r0]
	cmp r0, #0x25
	bne _08002C8A
	movs r0, #6
	movs r1, #0x20
	movs r2, #1
	bl sub_8003B1C
_08002C8A:
	mov r1, sp
	movs r0, #0x1f
	strh r0, [r1]
	str r1, [r4]
	ldr r0, _08002CC0 @ =0x05000040
	str r0, [r4, #4]
	ldr r0, _08002CC4 @ =0x810000E0
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, _08002CC8 @ =0x00002222
	adds r0, r2, #0
	b _08002CE2
	.align 2, 0
_08002CA4: .4byte 0xFFFF7FFF
_08002CA8: .4byte gUnknown_0801BBD8
_08002CAC: .4byte gBG3MapBuffer
_08002CB0: .4byte 0x040000D4
_08002CB4: .4byte 0x800002C0
_08002CB8: .4byte 0x0000FFFE
_08002CBC: .4byte gAnimation
_08002CC0: .4byte 0x05000040
_08002CC4: .4byte 0x810000E0
_08002CC8: .4byte 0x00002222
_08002CCC:
	mov r0, sp
	strh r2, [r0]
	str r0, [r4]
	ldr r0, _08002CF4 @ =0x05000040
	str r0, [r4, #4]
	ldr r0, _08002CF8 @ =0x810000E0
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r1, sp
	ldr r3, _08002CFC @ =0x00002222
	adds r0, r3, #0
_08002CE2:
	strh r0, [r1]
	str r1, [r4]
	ldr r0, _08002D00 @ =0x06004000
	str r0, [r4, #4]
	ldr r0, _08002D04 @ =0x81004B00
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	b _0800341C
	.align 2, 0
_08002CF4: .4byte 0x05000040
_08002CF8: .4byte 0x810000E0
_08002CFC: .4byte 0x00002222
_08002D00: .4byte 0x06004000
_08002D04: .4byte 0x81004B00
_08002D08:
	ldr r1, _08002DB4 @ =gBackgroundTable
	lsls r2, r4, #3
	adds r0, r1, #4
	adds r0, r2, r0
	ldr r4, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r4
	mov ip, r1
	mov r1, sl
	adds r1, #0x4a
	str r1, [sp, #0xc]
	mov r3, r8
	adds r3, #0x42
	str r3, [sp, #8]
	cmp r0, #0
	beq _08002D8C
	ldr r1, _08002DB8 @ =gUnknown_0801BBD8
	ldr r3, _08002DBC @ =gBG3MapBuffer
	ldr r0, _08002DC0 @ =0x040000D4
	str r1, [r0]
	str r3, [r0, #4]
	ldr r1, _08002DC4 @ =0x800002C0
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r5, #0x96
	lsls r5, r5, #2
	movs r4, #0
	movs r0, #0x80
	lsls r0, r0, #6
	adds r3, r0, #0
	ldr r1, _08002DBC @ =gBG3MapBuffer
	adds r1, #0x40
_08002D4A:
	adds r0, r5, #0
	orrs r0, r3
	strh r0, [r1]
	adds r1, #0x40
	adds r4, #1
	adds r5, #1
	cmp r4, #0x13
	bls _08002D4A
	movs r4, #0
	ldr r0, _08002DBC @ =gBG3MapBuffer
	movs r1, #0x80
	lsls r1, r1, #6
	adds r3, r1, #0
	adds r1, r0, #0
	adds r1, #0x7e
_08002D68:
	adds r0, r5, #0
	orrs r0, r3
	strh r0, [r1]
	adds r1, #0x40
	adds r4, #1
	adds r5, #1
	cmp r4, #0x13
	bls _08002D68
	movs r0, #1
	strb r0, [r7]
	ldr r1, _08002DC0 @ =0x040000D4
	ldr r0, _08002DC8 @ =gUnknown_0847845C
	str r0, [r1]
	ldr r0, _08002DCC @ =gUnknown_0203B000
	str r0, [r1, #4]
	ldr r0, _08002DD0 @ =0x80000280
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08002D8C:
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r6
	cmp r0, #0
	beq _08002E0A
	mov r0, ip
	adds r0, #4
	adds r0, r2, r0
	ldr r6, [r0]
	movs r1, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08002DD4
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r6, r0
	movs r0, #0x80
	orrs r6, r0
	b _08002E12
	.align 2, 0
_08002DB4: .4byte gBackgroundTable
_08002DB8: .4byte gUnknown_0801BBD8
_08002DBC: .4byte gBG3MapBuffer
_08002DC0: .4byte 0x040000D4
_08002DC4: .4byte 0x800002C0
_08002DC8: .4byte gUnknown_0847845C
_08002DCC: .4byte gUnknown_0203B000
_08002DD0: .4byte 0x80000280
_08002DD4:
	movs r0, #0x80
	ands r0, r6
	cmp r0, #0
	beq _08002DE2
	movs r0, #0x81
	rsbs r0, r0, #0
	b _08002E04
_08002DE2:
	movs r1, #0x10
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08002DF8
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r6, r0
	movs r0, #0x20
	orrs r6, r0
	b _08002E12
_08002DF8:
	movs r0, #0x20
	ands r0, r6
	cmp r0, #0
	beq _08002E12
	movs r0, #0x21
	rsbs r0, r0, #0
_08002E04:
	ands r6, r0
	orrs r6, r1
	b _08002E12
_08002E0A:
	mov r0, ip
	adds r0, #4
	adds r0, r2, r0
	ldr r6, [r0]
_08002E12:
	str r6, [sp, #4]
	mov r3, ip
	adds r0, r2, r3
	ldr r0, [r0]
	adds r7, r0, #0
	adds r7, #0x28
	cmp r6, #0
	bge _08002E80
	movs r0, #1
	mov sb, r0
	ldr r0, _08002E64 @ =0x0000FF7F
	mov r1, sl
	ldrh r1, [r1, #6]
	ands r0, r1
	mov r3, sl
	strh r0, [r3, #6]
	ldr r3, _08002E68 @ =0x040000D4
	str r7, [r3]
	ldr r0, _08002E6C @ =0x05000040
	str r0, [r3, #4]
	ldr r0, _08002E70 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, _08002E74 @ =gScriptContext
	movs r0, #0x40
	ldrh r1, [r1]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08002EA0
	mov r0, sp
	strh r1, [r0]
	str r0, [r3]
	ldr r0, _08002E78 @ =0x06008EC0
	str r0, [r3, #4]
	ldr r0, _08002E7C @ =0x81000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	b _08002EA0
	.align 2, 0
_08002E64: .4byte 0x0000FF7F
_08002E68: .4byte 0x040000D4
_08002E6C: .4byte 0x05000040
_08002E70: .4byte 0x80000010
_08002E74: .4byte gScriptContext
_08002E78: .4byte 0x06008EC0
_08002E7C: .4byte 0x81000010
_08002E80:
	movs r0, #0
	mov sb, r0
	movs r0, #0x80
	mov r1, sl
	ldrh r1, [r1, #6]
	orrs r0, r1
	mov r3, sl
	strh r0, [r3, #6]
	ldr r1, _08002F28 @ =0x040000D4
	str r7, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08002F2C @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08002EA0:
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r3, [sp, #0xc]
	ldrh r0, [r3]
	strh r0, [r1]
	adds r1, #0xe
	mov r3, sl
	ldrh r0, [r3, #6]
	strh r0, [r1]
	adds r1, #0xe
	ldr r0, [r3, #0x14]
	str r0, [r1]
	movs r0, #0
	mov sl, r0
	ldr r1, [sp, #8]
	strh r6, [r1]
	mov r0, ip
	adds r0, #4
	adds r0, r2, r0
	ldr r0, [r0]
	movs r1, #0xf
	ands r0, r1
	ldr r7, _08002F30 @ =gBGDecompBuffer
	cmp r0, #0
	bne _08002ED4
	ldr r7, _08002F34 @ =gUnknown_02036500
_08002ED4:
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08002F50
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r6
	cmp r0, #0
	bne _08002EF6
	ldr r1, _08002F38 @ =gUnknown_0801BBD8
	ldr r3, _08002F3C @ =gBG3MapBuffer
	ldr r0, _08002F28 @ =0x040000D4
	str r1, [r0]
	str r3, [r0, #4]
	ldr r1, _08002F40 @ =0x800002C0
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_08002EF6:
	ldr r1, _08002F3C @ =gBG3MapBuffer
	ldr r3, _08002F44 @ =0x0600F800
	ldr r2, _08002F28 @ =0x040000D4
	str r1, [r2]
	str r3, [r2, #4]
	ldr r0, _08002F48 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	str r7, [r2]
	ldr r0, _08002F4C @ =0x06004000
	str r0, [r2, #4]
	movs r0, #0x96
	lsls r0, r0, #8
	mov r3, sb
	asrs r0, r3
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _08003260
	.align 2, 0
_08002F28: .4byte 0x040000D4
_08002F2C: .4byte 0x80000100
_08002F30: .4byte gBGDecompBuffer
_08002F34: .4byte gUnknown_02036500
_08002F38: .4byte gUnknown_0801BBD8
_08002F3C: .4byte gBG3MapBuffer
_08002F40: .4byte 0x800002C0
_08002F44: .4byte 0x0600F800
_08002F48: .4byte 0x80000400
_08002F4C: .4byte 0x06004000
_08002F50:
	movs r0, #0xc
	ands r0, r6
	cmp r0, #0
	bne _08002F5A
	b _08003104
_08002F5A:
	movs r3, #0x40
	ands r3, r6
	cmp r3, #0
	beq _08003044
	movs r0, #4
	ands r0, r6
	cmp r0, #0
	beq _08002F84
	movs r0, #0x96
	lsls r0, r0, #8
	mov r6, sb
	asrs r0, r6
	adds r7, r7, r0
	mov r1, r8
	adds r1, #0x46
	movs r0, #0x12
	strb r0, [r1]
	movs r0, #0xa0
	mov r2, r8
	strh r0, [r2, #0x3e]
	b _08002F9C
_08002F84:
	movs r0, #0x96
	lsls r0, r0, #7
	mov r3, sb
	asrs r0, r3
	subs r7, r7, r0
	mov r1, r8
	adds r1, #0x46
	movs r0, #8
	strb r0, [r1]
	movs r0, #0x50
	mov r6, r8
	strh r0, [r6, #0x3e]
_08002F9C:
	ldr r3, _08003034 @ =0x040000D4
	str r7, [r3]
	ldr r5, _08003038 @ =0x06004000
	str r5, [r3, #4]
	movs r2, #0x96
	lsls r2, r2, #8
	mov r0, sb
	asrs r2, r0
	lsrs r0, r2, #0x1f
	adds r0, r2, r0
	asrs r0, r0, #1
	movs r4, #0x80
	lsls r4, r4, #0x18
	orrs r0, r4
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #7
	mov r1, sb
	asrs r0, r1
	ldr r6, _0800303C @ =gBGDecompBuffer
	adds r7, r0, r6
	movs r0, #0xf0
	lsls r0, r0, #3
	asrs r0, r1
	adds r7, r7, r0
	str r7, [r3]
	adds r2, r2, r5
	str r2, [r3, #4]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	orrs r0, r4
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r1, r8
	adds r1, #0x47
	movs r0, #0x13
	strb r0, [r1]
	subs r1, #0x10
	movs r0, #0x26
	strb r0, [r1]
	mov r0, r8
	ldrh r0, [r0, #0x2e]
	cmp r0, #0x50
	bne _08003004
	movs r0, #6
	strb r0, [r1]
_08003004:
	movs r4, #0
	ldr r7, _08003040 @ =gBG3MapBuffer
	movs r3, #0
	movs r1, #0x80
	lsls r1, r1, #6
	adds r6, r1, #0
_08003010:
	movs r5, #0
	adds r2, r3, #0
	lsls r0, r4, #6
	adds r0, #0x42
	adds r1, r0, r7
_0800301A:
	adds r0, r5, r2
	orrs r0, r6
	strh r0, [r1]
	adds r1, #2
	adds r5, #1
	cmp r5, #0x1d
	bls _0800301A
	adds r3, #0x1e
	adds r4, #1
	cmp r4, #0x13
	bls _08003010
	b _080030C4
	.align 2, 0
_08003034: .4byte 0x040000D4
_08003038: .4byte 0x06004000
_0800303C: .4byte gBGDecompBuffer
_08003040: .4byte gBG3MapBuffer
_08003044:
	ldr r2, _08003084 @ =0x040000D4
	str r7, [r2]
	ldr r0, _08003088 @ =0x06004000
	str r0, [r2, #4]
	ldr r0, _0800308C @ =0x00009D80
	mov r1, sb
	asrs r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r2, r8
	strh r3, [r2, #0x3e]
	mov r0, r8
	adds r0, #0x47
	mov r3, sl
	strb r3, [r0]
	mov r1, r8
	adds r1, #0x46
	movs r0, #0x15
	strb r0, [r1]
	movs r0, #4
	ands r0, r6
	cmp r0, #0
	beq _08003090
	subs r1, #0xf
	movs r0, #1
	b _08003096
	.align 2, 0
_08003084: .4byte 0x040000D4
_08003088: .4byte 0x06004000
_0800308C: .4byte 0x00009D80
_08003090:
	mov r1, r8
	adds r1, #0x37
	movs r0, #0x20
_08003096:
	strb r0, [r1]
	movs r4, #0
	ldr r7, _08003100 @ =gBG3MapBuffer
	movs r3, #0
	movs r0, #0x80
	lsls r0, r0, #6
	adds r6, r0, #0
_080030A4:
	movs r5, #0
	adds r2, r3, #0
	lsls r0, r4, #6
	adds r0, #0x42
	adds r1, r0, r7
_080030AE:
	adds r0, r5, r2
	orrs r0, r6
	strh r0, [r1]
	adds r1, #2
	adds r5, #1
	cmp r5, #0x1d
	bls _080030AE
	adds r3, #0x1e
	adds r4, #1
	cmp r4, #0x13
	bls _080030A4
_080030C4:
	movs r4, #0
	ldr r7, _08003100 @ =gBG3MapBuffer
	movs r2, #0x96
	lsls r2, r2, #2
	adds r3, r2, #0
	movs r6, #0x80
	lsls r6, r6, #6
	adds r2, r6, #0
_080030D4:
	movs r5, #0
	adds r6, r4, #1
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #5
	adds r0, #1
	lsls r0, r0, #1
	adds r1, r0, r7
_080030E8:
	adds r0, r5, r3
	orrs r0, r2
	strh r0, [r1]
	adds r1, #2
	adds r5, #1
	cmp r5, #0x1d
	bls _080030E8
	adds r4, r6, #0
	cmp r4, #1
	bls _080030D4
	b _08003250
	.align 2, 0
_08003100: .4byte gBG3MapBuffer
_08003104:
	movs r4, #1
	adds r2, r6, #0
	ands r2, r4
	movs r5, #0xb4
	lsls r5, r5, #4
	cmp r2, #0
	beq _08003116
	movs r5, #0xf0
	lsls r5, r5, #4
_08003116:
	movs r3, #0x10
	ands r3, r6
	cmp r3, #0
	beq _08003194
	mov r1, r8
	adds r1, #0x47
	movs r0, #0x1e
	strb r0, [r1]
	subs r1, #0x10
	movs r0, #0x3a
	strb r0, [r1]
	cmp r2, #0
	beq _08003146
	movs r1, #0xe8
	lsls r1, r1, #3
	adds r7, r7, r1
	mov r1, r8
	adds r1, #0x46
	movs r0, #0x1c
	strb r0, [r1]
	movs r0, #0xf0
	mov r2, r8
	strh r0, [r2, #0x3c]
	b _0800315A
_08003146:
	movs r3, #0xe0
	lsls r3, r3, #2
	adds r7, r7, r3
	mov r1, r8
	adds r1, #0x46
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #0x78
	mov r6, r8
	strh r0, [r6, #0x3c]
_0800315A:
	movs r4, #0
	mov r0, sb
	lsrs r5, r0
	mov ip, r5
	ldr r1, _08003190 @ =gBG3MapBuffer
	mov sl, r1
	movs r3, #0
_08003168:
	movs r5, #0
	adds r2, r3, #0
	lsls r0, r4, #6
	adds r0, #0x40
	mov r6, sl
	adds r1, r0, r6
_08003174:
	adds r0, r5, r2
	movs r6, #0x80
	lsls r6, r6, #6
	orrs r0, r6
	strh r0, [r1]
	adds r1, #2
	adds r5, #1
	cmp r5, #0x1e
	bls _08003174
	adds r3, #0x1f
	adds r4, #1
	cmp r4, #0x13
	bls _08003168
	b _080031FE
	.align 2, 0
_08003190: .4byte gBG3MapBuffer
_08003194:
	movs r0, #0x20
	ands r0, r6
	mov ip, r5
	mov r1, ip
	mov r6, sb
	lsrs r1, r6
	mov ip, r1
	cmp r0, #0
	beq _080031FE
	mov r1, r8
	adds r1, #0x46
	movs r0, #0x1f
	strb r0, [r1]
	mov r0, r8
	strh r3, [r0, #0x3c]
	adds r0, #0x47
	mov r1, sl
	strb r1, [r0]
	cmp r2, #0
	beq _080031C2
	subs r0, #0x10
	strb r4, [r0]
	b _080031CA
_080031C2:
	mov r1, r8
	adds r1, #0x37
	movs r0, #0x2f
	strb r0, [r1]
_080031CA:
	movs r4, #0
	mov r2, sb
	lsrs r5, r2
	mov ip, r5
	ldr r3, _08003348 @ =gBG3MapBuffer
	mov sl, r3
	movs r3, #0
_080031D8:
	movs r5, #0
	adds r2, r3, #0
	lsls r0, r4, #6
	adds r0, #0x42
	mov r6, sl
	adds r1, r0, r6
_080031E4:
	adds r0, r5, r2
	movs r6, #0x80
	lsls r6, r6, #6
	orrs r0, r6
	strh r0, [r1]
	adds r1, #2
	adds r5, #1
	cmp r5, #0x1e
	bls _080031E4
	adds r3, #0x1f
	adds r4, #1
	cmp r4, #0x13
	bls _080031D8
_080031FE:
	movs r4, #0
	ldr r3, _08003348 @ =gBG3MapBuffer
	ldr r2, _0800334C @ =0x00002276
	movs r1, #0
_08003206:
	movs r5, #0
	lsls r0, r1, #1
	adds r0, r0, r3
_0800320C:
	strh r2, [r0]
	adds r0, #2
	adds r5, #1
	cmp r5, #0x1f
	bls _0800320C
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r4, #1
	cmp r4, #1
	bls _08003206
	ldr r6, _08003350 @ =0x06004000
	movs r4, #0
	ldr r2, _08003354 @ =0x040000D4
	movs r3, #0xf8
	lsls r3, r3, #3
	mov r1, sb
	asrs r3, r1
	lsrs r0, r3, #0x1f
	adds r0, r3, r0
	asrs r1, r0, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	mov r5, ip
_0800323E:
	str r7, [r2]
	str r6, [r2, #4]
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	adds r7, r7, r5
	adds r6, r6, r3
	adds r4, #1
	cmp r4, #0x13
	bls _0800323E
_08003250:
	ldr r1, _08003348 @ =gBG3MapBuffer
	ldr r3, _08003358 @ =0x0600F800
	ldr r0, _08003354 @ =0x040000D4
	str r1, [r0]
	str r3, [r0, #4]
	ldr r1, _0800335C @ =0x80000400
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_08003260:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r2, [sp, #4]
	ands r0, r2
	cmp r0, #0
	beq _080032C2
	movs r4, #0
	ldr r3, _08003360 @ =0x000003FF
	movs r6, #0x80
	lsls r6, r6, #3
	adds r2, r6, #0
	ldr r1, _08003348 @ =gBG3MapBuffer
_08003278:
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	adds r1, #2
	adds r4, #1
	cmp r4, r3
	bls _08003278
	movs r4, #0
	ldr r7, _08003348 @ =gBG3MapBuffer
_0800328A:
	movs r5, #0
	lsls r1, r4, #5
	adds r6, r4, #1
	adds r1, #0x1f
	lsls r0, r4, #6
	adds r3, r0, r7
	lsls r1, r1, #1
	adds r1, r1, r7
_0800329A:
	ldrh r2, [r3]
	ldrh r0, [r1]
	strh r0, [r3]
	strh r2, [r1]
	adds r3, #2
	subs r1, #2
	adds r5, #1
	cmp r5, #0xf
	bls _0800329A
	adds r4, r6, #0
	cmp r4, #0x1f
	bls _0800328A
	ldr r1, _08003348 @ =gBG3MapBuffer
	ldr r3, _08003358 @ =0x0600F800
	ldr r0, _08003354 @ =0x040000D4
	str r1, [r0]
	str r3, [r0, #4]
	ldr r1, _0800335C @ =0x80000400
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_080032C2:
	movs r0, #0x80
	lsls r0, r0, #2
	ldr r1, [sp, #4]
	ands r1, r0
	cmp r1, #0
	beq _08003328
	movs r4, #0
	ldr r3, _08003360 @ =0x000003FF
	movs r6, #0x80
	lsls r6, r6, #4
	adds r2, r6, #0
	ldr r1, _08003348 @ =gBG3MapBuffer
_080032DA:
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	adds r1, #2
	adds r4, #1
	cmp r4, r3
	bls _080032DA
	movs r4, #0
	ldr r7, _08003348 @ =gBG3MapBuffer
	movs r0, #0x15
	mov ip, r0
_080032F0:
	movs r5, #0
	adds r6, r4, #1
	mov r1, ip
	subs r0, r1, r4
	lsls r0, r0, #6
	adds r3, r0, r7
	lsls r0, r4, #6
	adds r1, r0, r7
_08003300:
	ldrh r2, [r1]
	ldrh r0, [r3]
	strh r0, [r1]
	strh r2, [r3]
	adds r3, #2
	adds r1, #2
	adds r5, #1
	cmp r5, #0x1f
	bls _08003300
	adds r4, r6, #0
	cmp r4, #0xa
	bls _080032F0
	ldr r1, _08003348 @ =gBG3MapBuffer
	ldr r3, _08003358 @ =0x0600F800
	ldr r0, _08003354 @ =0x040000D4
	str r1, [r0]
	str r3, [r0, #4]
	ldr r1, _0800335C @ =0x80000400
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_08003328:
	mov r2, r8
	ldrh r2, [r2, #0x2e]
	cmp r2, #0xa
	bne _0800339C
	mov r0, r8
	adds r0, #0x84
	ldrh r1, [r0]
	subs r1, #3
	adds r4, r0, #0
	cmp r1, #5
	bhi _08003394
	lsls r0, r1, #2
	ldr r1, _08003364 @ =_08003368
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08003348: .4byte gBG3MapBuffer
_0800334C: .4byte 0x00002276
_08003350: .4byte 0x06004000
_08003354: .4byte 0x040000D4
_08003358: .4byte 0x0600F800
_0800335C: .4byte 0x80000400
_08003360: .4byte 0x000003FF
_08003364: .4byte _08003368
_08003368: @ jump table
	.4byte _08003380 @ case 0
	.4byte _08003388 @ case 1
	.4byte _0800338C @ case 2
	.4byte _08003390 @ case 3
	.4byte _08003380 @ case 4
	.4byte _08003388 @ case 5
_08003380:
	ldr r0, _08003384 @ =0x0000FFFD
	b _08003392
	.align 2, 0
_08003384: .4byte 0x0000FFFD
_08003388:
	movs r0, #0
	b _08003392
_0800338C:
	movs r0, #0
	b _08003392
_08003390:
	ldr r0, _080033D4 @ =0x0000FFFE
_08003392:
	strh r0, [r4]
_08003394:
	mov r3, r8
	ldrh r3, [r3, #0x2e]
	cmp r3, #0xa
	beq _0800341C
_0800339C:
	ldr r0, _080033D8 @ =0x00000507
	mov r6, r8
	ldrh r6, [r6, #8]
	cmp r6, r0
	bne _080033AE
	mov r0, r8
	ldrb r0, [r0, #0xa]
	cmp r0, #4
	bne _0800341C
_080033AE:
	mov r1, r8
	adds r1, #0x84
	ldrh r2, [r1]
	adds r0, r2, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, r1, #0
	cmp r0, #1
	bhi _0800341C
	ldr r0, _080033D4 @ =0x0000FFFE
	cmp r2, r0
	bne _080033DC
	mov r1, r8
	ldrh r0, [r1, #0x2e]
	movs r1, #0x20
	movs r2, #1
	bl sub_8003988
	b _080033E8
	.align 2, 0
_080033D4: .4byte 0x0000FFFE
_080033D8: .4byte 0x00000507
_080033DC:
	mov r2, r8
	ldrh r0, [r2, #0x2e]
	movs r1, #0x20
	movs r2, #0
	bl sub_8003988
_080033E8:
	mov r3, r8
	ldrh r0, [r3, #0x2e]
	subs r0, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _0800341C
	ldr r0, _0800340C @ =0x0000FFFE
	ldrh r4, [r4]
	cmp r4, r0
	bne _08003410
	ldrh r0, [r3, #0x2e]
	movs r1, #0x20
	movs r2, #1
	bl sub_8003B1C
	b _0800341C
	.align 2, 0
_0800340C: .4byte 0x0000FFFE
_08003410:
	mov r6, r8
	ldrh r0, [r6, #0x2e]
	movs r1, #0x20
	movs r2, #0
	bl sub_8003B1C
_0800341C:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_800342C
sub_800342C: @ 0x0800342C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r7, _080034CC @ =gMain
	ldrh r1, [r7, #0x32]
	str r1, [sp]
	ldr r2, _080034D0 @ =gMain+0x36
	ldrb r2, [r2]
	mov r8, r2
	ldrh r3, [r7, #0x3c]
	mov sl, r3
	mov r1, sl
	str r1, [sp, #4]
	ldrh r2, [r7, #0x3e]
	str r2, [sp, #0xc]
	str r2, [sp, #8]
	adds r4, r7, #0
	adds r4, #0x44
	ldrb r6, [r4]
	movs r3, #0x45
	adds r3, r3, r7
	mov sb, r3
	ldrb r5, [r3]
	bl CopyBGDataToVram
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r7, #0x32]
	mov r2, r8
	ldr r1, _080034D0 @ =gMain+0x36
	strb r2, [r1]
	strb r6, [r4]
	mov r3, sb
	strb r5, [r3]
	ldrh r0, [r7, #0x3c]
	mov r1, sl
	subs r3, r0, r1
	strh r3, [r7, #0x38]
	ldrh r2, [r7, #0x3e]
	ldr r0, [sp, #0xc]
	subs r4, r2, r0
	strh r4, [r7, #0x3a]
	ldr r1, _080034D4 @ =gBackgroundTable
	ldrh r2, [r7, #0x2e]
	lsls r0, r2, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r2
	cmp r0, #0
	bne _0800358E
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r2, r0
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _080034E8
	mov r3, sl
	strh r3, [r7, #0x3c]
	movs r3, #0x38
	ldrsh r0, [r7, r3]
	rsbs r0, r0, #0
	strh r0, [r7, #0x38]
	ldrh r3, [r7, #0x2e]
	lsls r0, r3, #3
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080034D8
	movs r0, #0xf0
	lsls r0, r0, #1
	b _080034DC
	.align 2, 0
_080034CC: .4byte gMain
_080034D0: .4byte gMain+0x36
_080034D4: .4byte gBackgroundTable
_080034D8:
	movs r0, #0xb4
	lsls r0, r0, #1
_080034DC:
	orrs r2, r0
	adds r0, r7, #0
	adds r1, r2, #0
	bl sub_8001158
	b _0800358E
_080034E8:
	cmp r0, #0
	bge _08003520
	mov r0, sp
	ldrh r0, [r0, #4]
	strh r0, [r7, #0x3c]
	movs r3, #0x38
	ldrsh r0, [r7, r3]
	rsbs r0, r0, #0
	strh r0, [r7, #0x38]
	ldrh r3, [r7, #0x2e]
	lsls r0, r3, #3
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08003510
	movs r0, #0xf0
	lsls r0, r0, #1
	b _08003514
_08003510:
	movs r0, #0xb4
	lsls r0, r0, #1
_08003514:
	orrs r2, r0
	adds r0, r7, #0
	adds r1, r2, #0
	bl sub_8001460
	b _0800358E
_08003520:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _0800355A
	mov r0, sp
	ldrh r0, [r0, #0xc]
	strh r0, [r7, #0x3e]
	movs r3, #0x3a
	ldrsh r0, [r7, r3]
	rsbs r0, r0, #0
	strh r0, [r7, #0x3a]
	ldrh r3, [r7, #0x2e]
	lsls r0, r3, #3
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0800354C
	movs r0, #0xa0
	lsls r0, r0, #1
	b _0800354E
_0800354C:
	movs r0, #0xf0
_0800354E:
	orrs r2, r0
	adds r0, r7, #0
	adds r1, r2, #0
	bl sub_80016CC
	b _0800358E
_0800355A:
	cmp r0, #0
	bge _0800358E
	mov r0, sp
	ldrh r0, [r0, #8]
	strh r0, [r7, #0x3e]
	movs r3, #0x3a
	ldrsh r0, [r7, r3]
	rsbs r0, r0, #0
	strh r0, [r7, #0x3a]
	ldrh r3, [r7, #0x2e]
	lsls r0, r3, #3
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08003582
	movs r0, #0xa0
	lsls r0, r0, #1
	b _08003584
_08003582:
	movs r0, #0xf0
_08003584:
	orrs r2, r0
	adds r0, r7, #0
	adds r1, r2, #0
	bl sub_80018E4
_0800358E:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start GetBGControlBits
GetBGControlBits: @ 0x080035A0
	ldr r1, _080035AC @ =gBackgroundTable
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_080035AC: .4byte gBackgroundTable

	thumb_func_start sub_80035B0
sub_80035B0: @ 0x080035B0
	ldr r1, _080035BC @ =gBackgroundTable
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x28
	bx lr
	.align 2, 0
_080035BC: .4byte gBackgroundTable

	thumb_func_start SetTextboxSize
SetTextboxSize: @ 0x080035C0
	push {r4, r5, r6, r7, lr}
	ldr r2, _080035D4 @ =gScriptContext
	cmp r0, #1
	beq _0800361C
	cmp r0, #1
	blo _080035D8
	cmp r0, #2
	beq _0800363A
	b _0800368E
	.align 2, 0
_080035D4: .4byte gScriptContext
_080035D8:
	ldr r1, _08003610 @ =gBG1MapBuffer
	movs r3, #0
	ldr r4, _08003614 @ =0x000002BF
	adds r7, r2, #0
	adds r7, #0x38
	adds r5, r2, #0
	adds r5, #0x34
	ldr r2, _08003618 @ =gUnknown_0801B1D8
_080035E8:
	adds r0, r3, r2
	ldrb r0, [r0]
	strh r0, [r1]
	adds r3, #1
	adds r1, #2
	cmp r3, r4
	bls _080035E8
	movs r0, #0
	strb r0, [r7]
	ldrb r2, [r5]
	movs r0, #0x7f
	ands r0, r2
	movs r1, #0x80
	ands r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl SetTextboxNametag
	b _0800368E
	.align 2, 0
_08003610: .4byte gBG1MapBuffer
_08003614: .4byte 0x000002BF
_08003618: .4byte gUnknown_0801B1D8
_0800361C:
	adds r1, r2, #0
	adds r1, #0x3a
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xe
	strb r0, [r1]
	subs r1, #3
	movs r0, #2
	strb r0, [r1]
	movs r0, #0
	movs r1, #0
	bl SetTextboxNametag
	b _0800368E
_0800363A:
	ldr r1, _08003694 @ =gBG1MapBuffer
	movs r3, #0
	ldr r4, _08003698 @ =0x000001BF
	adds r7, r2, #0
	adds r7, #0x38
	movs r0, #0xe0
	lsls r0, r0, #2
	adds r5, r1, r0
	adds r0, #0x80
	adds r6, r1, r0
	ldr r2, _0800369C @ =gUnknown_0801B1D8
_08003650:
	adds r0, r3, r2
	ldrb r0, [r0]
	strh r0, [r1]
	adds r3, #1
	adds r1, #2
	cmp r3, r4
	bls _08003650
	adds r1, r5, #0
	movs r3, #0xe0
	lsls r3, r3, #1
	ldr r2, _080036A0 @ =0x0000021F
	movs r0, #0
_08003668:
	strh r0, [r1]
	adds r3, #1
	adds r1, #2
	cmp r3, r2
	bls _08003668
	adds r1, r6, #0
	movs r3, #0xe0
	lsls r3, r3, #1
	ldr r4, _080036A4 @ =0x000001DF
	ldr r2, _0800369C @ =gUnknown_0801B1D8
_0800367C:
	adds r0, r3, r2
	ldrb r0, [r0]
	strh r0, [r1]
	adds r3, #1
	adds r1, #2
	cmp r3, r4
	bls _0800367C
	movs r0, #0
	strb r0, [r7]
_0800368E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003694: .4byte gBG1MapBuffer
_08003698: .4byte 0x000001BF
_0800369C: .4byte gUnknown_0801B1D8
_080036A0: .4byte 0x0000021F
_080036A4: .4byte 0x000001DF

	thumb_func_start UpdateTextbox
UpdateTextbox: @ 0x080036A8
	push {r4, r5, lr}
	ldr r0, _080036C4 @ =gScriptContext
	mov ip, r0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #4
	bls _080036B8
	b _080037B4
_080036B8:
	lsls r0, r0, #2
	ldr r1, _080036C8 @ =_080036CC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080036C4: .4byte gScriptContext
_080036C8: .4byte _080036CC
_080036CC: @ jump table
	.4byte _080037B4 @ case 0
	.4byte _080037B4 @ case 1
	.4byte _080036E0 @ case 2
	.4byte _08003760 @ case 3
	.4byte _08003790 @ case 4
_080036E0:
	mov r1, ip
	adds r1, #0x3a
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080037B4
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	lsls r2, r0, #5
	movs r4, #0
	adds r5, r1, #0
	ldr r1, _08003758 @ =gBG1MapBuffer
	lsls r0, r0, #6
	adds r3, r0, r1
	adds r0, r2, #0
	subs r0, #0x20
	lsls r0, r0, #1
	adds r1, r0, r1
_0800370E:
	ldrh r0, [r3]
	strh r0, [r1]
	adds r3, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #0x1f
	bls _0800370E
	movs r4, #0
	ldr r0, _08003758 @ =gBG1MapBuffer
	adds r1, r2, #0
	adds r1, #0x20
	lsls r2, r2, #1
	adds r2, r2, r0
	lsls r1, r1, #1
	adds r1, r1, r0
_0800372C:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	adds r2, #2
	adds r4, #1
	cmp r4, #0x1f
	bls _0800372C
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _080037B4
	ldr r0, _0800375C @ =gMain
	movs r1, #1
	strb r1, [r0, #0x19]
	mov r0, ip
	adds r0, #0x38
	strb r2, [r0]
	b _080037B4
	.align 2, 0
_08003758: .4byte gBG1MapBuffer
_0800375C: .4byte gMain
_08003760:
	ldr r2, _08003784 @ =gIORegisters
	ldrh r0, [r2, #0xe]
	adds r0, #4
	strh r0, [r2, #0xe]
	lsls r0, r0, #0x10
	ldr r1, _08003788 @ =0xFFAF0000
	cmp r0, r1
	bhi _080037B4
	ldr r1, _0800378C @ =gMain
	movs r0, #1
	strb r0, [r1, #0x18]
	strb r0, [r1, #0x19]
	movs r0, #0
	strh r0, [r2, #0xe]
	mov r1, ip
	adds r1, #0x38
	b _080037B2
	.align 2, 0
_08003784: .4byte gIORegisters
_08003788: .4byte 0xFFAF0000
_0800378C: .4byte gMain
_08003790:
	ldr r2, _080037BC @ =gIORegisters
	ldrh r0, [r2, #0xe]
	subs r0, #4
	strh r0, [r2, #0xe]
	lsls r0, r0, #0x10
	ldr r1, _080037C0 @ =0xFFAF0000
	cmp r0, r1
	bhi _080037B4
	adds r1, r2, #0
	adds r1, #0x4a
	ldr r0, _080037C4 @ =0x0000FDFF
	ldrh r2, [r1]
	ands r0, r2
	strh r0, [r1]
	mov r1, ip
	adds r1, #0x38
	movs r0, #1
_080037B2:
	strb r0, [r1]
_080037B4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080037BC: .4byte gIORegisters
_080037C0: .4byte 0xFFAF0000
_080037C4: .4byte 0x0000FDFF

	thumb_func_start sub_80037C8
sub_80037C8: @ 0x080037C8
	push {r4, r5, lr}
	movs r1, #0xe0
	lsls r1, r1, #1
	ldr r4, _080037F0 @ =0x000003BF
	ldr r0, _080037F4 @ =gBG1MapBuffer
	ldr r3, _080037F8 @ =gUnknown_0801B1D8
	movs r5, #0xe0
	lsls r5, r5, #2
	adds r2, r0, r5
_080037DA:
	adds r0, r1, r3
	ldrb r0, [r0]
	strh r0, [r2]
	adds r2, #2
	adds r1, #1
	cmp r1, r4
	ble _080037DA
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080037F0: .4byte 0x000003BF
_080037F4: .4byte gBG1MapBuffer
_080037F8: .4byte gUnknown_0801B1D8

	thumb_func_start SlideTextbox
SlideTextbox: @ 0x080037FC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08003848 @ =gMain
	movs r0, #0
	strb r0, [r1, #0x18]
	strb r0, [r1, #0x19]
	bl sub_80037C8
	movs r0, #0
	movs r1, #0
	bl SetTextboxNametag
	cmp r4, #1
	bne _08003864
	ldr r0, _0800384C @ =gScriptContext
	adds r0, #0x38
	movs r1, #3
	strb r1, [r0]
	ldr r0, _08003850 @ =gInvestigation
	strb r1, [r0, #0xe]
	ldr r0, _08003854 @ =gIORegisters
	adds r0, #0x4a
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	ldr r0, _08003858 @ =gBG1MapBuffer
	ldr r2, _0800385C @ =0x000004DC
	adds r1, r0, r2
	movs r2, #9
	strh r2, [r1]
	ldr r1, _08003860 @ =0x000004DE
	adds r0, r0, r1
	strh r2, [r0]
	b _0800388E
	.align 2, 0
_08003848: .4byte gMain
_0800384C: .4byte gScriptContext
_08003850: .4byte gInvestigation
_08003854: .4byte gIORegisters
_08003858: .4byte gBG1MapBuffer
_0800385C: .4byte 0x000004DC
_08003860: .4byte 0x000004DE
_08003864:
	cmp r4, #2
	bne _08003880
	ldr r0, _08003878 @ =gScriptContext
	adds r0, #0x38
	movs r1, #3
	strb r1, [r0]
	ldr r0, _0800387C @ =gInvestigation
	strb r1, [r0, #0xe]
	b _0800388E
	.align 2, 0
_08003878: .4byte gScriptContext
_0800387C: .4byte gInvestigation
_08003880:
	ldr r0, _08003894 @ =gScriptContext
	adds r0, #0x38
	movs r1, #4
	strb r1, [r0]
	ldr r1, _08003898 @ =gInvestigation
	movs r0, #1
	strb r0, [r1, #0xe]
_0800388E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003894: .4byte gScriptContext
_08003898: .4byte gInvestigation

	thumb_func_start sub_800389C
sub_800389C: @ 0x0800389C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	movs r7, #0x1f
	ands r7, r0
	movs r1, #0xf8
	lsls r1, r1, #2
	ands r1, r0
	lsrs r6, r1, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	ands r1, r0
	lsrs r5, r1, #0xa
	adds r0, r7, r6
	adds r0, r0, r5
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r4, #0x20
	bls _080038D8
	movs r4, #0x20
_080038D8:
	mov r0, r8
	cmp r0, #1
	beq _08003908
	cmp r0, #2
	bne _08003934
	movs r0, #0x20
	subs r1, r0, r4
	adds r0, r7, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _080038F0
	adds r0, #0x1f
_080038F0:
	lsls r0, r0, #0xb
	lsrs r7, r0, #0x10
	adds r0, r6, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _080038FE
	adds r0, #0x1f
_080038FE:
	lsls r0, r0, #0xb
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	muls r0, r1, r0
	b _08003960
_08003908:
	movs r0, #0x20
	subs r2, r0, r4
	adds r1, r7, #0
	muls r1, r2, r1
	lsls r0, r4, #5
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, #0
	bge _0800391C
	adds r0, #0x1f
_0800391C:
	lsls r0, r0, #0xb
	lsrs r7, r0, #0x10
	adds r0, r6, #0
	muls r0, r2, r0
	cmp r0, #0
	bge _0800392A
	adds r0, #0x1f
_0800392A:
	lsls r0, r0, #0xb
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	muls r0, r2, r0
	b _08003960
_08003934:
	movs r0, #0x20
	subs r2, r0, r4
	adds r0, r7, #0
	muls r0, r2, r0
	muls r1, r4, r1
	adds r0, r0, r1
	cmp r0, #0
	bge _08003946
	adds r0, #0x1f
_08003946:
	lsls r0, r0, #0xb
	lsrs r7, r0, #0x10
	adds r0, r6, #0
	muls r0, r2, r0
	adds r0, r0, r1
	cmp r0, #0
	bge _08003956
	adds r0, #0x1f
_08003956:
	lsls r0, r0, #0xb
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	muls r0, r2, r0
	adds r0, r0, r1
_08003960:
	cmp r0, #0
	bge _08003966
	adds r0, #0x1f
_08003966:
	lsls r0, r0, #0xb
	lsrs r5, r0, #0x10
	movs r0, #0x1f
	ands r7, r0
	ands r6, r0
	ands r5, r0
	lsls r0, r5, #0xa
	lsls r1, r6, #5
	orrs r0, r1
	orrs r7, r0
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8003988
sub_8003988: @ 0x08003988
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, _080039CC @ =0xFFFFFE00
	add sp, r4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	cmp r5, #0x80
	bne _080039D0
	movs r5, #0x20
	add r6, sp, #0x40
	adds r4, r6, #0
	movs r0, #0
	mov sb, r0
_080039B0:
	mov r1, sb
	strh r1, [r4]
	ldrh r0, [r4]
	mov r1, r8
	adds r2, r7, #0
	bl sub_800389C
	strh r0, [r4]
	adds r4, #2
	adds r5, #1
	cmp r5, #0xff
	bls _080039B0
	b _08003A4C
	.align 2, 0
_080039CC: .4byte 0xFFFFFE00
_080039D0:
	adds r0, r5, #0
	bl GetBGControlBits
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80035B0
	adds r1, r0, #0
	cmp r4, #0
	bge _08003A24
	ldr r0, _08003A18 @ =0x040000D4
	str r1, [r0]
	mov r1, sp
	str r1, [r0, #4]
	ldr r1, _08003A1C @ =0x80000010
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r5, #0
	mov r4, sp
_080039F6:
	ldrh r0, [r4]
	mov r1, r8
	adds r2, r7, #0
	bl sub_800389C
	strh r0, [r4]
	adds r4, #2
	adds r5, #1
	cmp r5, #0xf
	bls _080039F6
	ldr r1, _08003A18 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08003A20 @ =0x05000040
	str r0, [r1, #4]
	ldr r0, _08003A1C @ =0x80000010
	b _08003A56
	.align 2, 0
_08003A18: .4byte 0x040000D4
_08003A1C: .4byte 0x80000010
_08003A20: .4byte 0x05000040
_08003A24:
	ldr r0, _08003A6C @ =0x040000D4
	str r1, [r0]
	mov r1, sp
	str r1, [r0, #4]
	ldr r1, _08003A70 @ =0x80000100
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r5, #0x20
	add r6, sp, #0x40
	adds r4, r6, #0
_08003A38:
	ldrh r0, [r4]
	mov r1, r8
	adds r2, r7, #0
	bl sub_800389C
	strh r0, [r4]
	adds r4, #2
	adds r5, #1
	cmp r5, #0xff
	bls _08003A38
_08003A4C:
	ldr r1, _08003A6C @ =0x040000D4
	str r6, [r1]
	ldr r0, _08003A74 @ =0x05000040
	str r0, [r1, #4]
	ldr r0, _08003A78 @ =0x800000E0
_08003A56:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003A6C: .4byte 0x040000D4
_08003A70: .4byte 0x80000100
_08003A74: .4byte 0x05000040
_08003A78: .4byte 0x800000E0

	thumb_func_start sub_8003A7C
sub_8003A7C: @ 0x08003A7C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r0, _08003ADC @ =gAnimation
	ldr r0, [r0, #0x64]
	ldm r0!, {r6}
	ldr r1, _08003AE0 @ =0x040000D4
	str r0, [r1]
	mov r0, sp
	str r0, [r1, #4]
	ldr r0, _08003AE4 @ =0x80000020
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r5, #0
	lsls r0, r6, #4
	cmp r5, r0
	bhs _08003AC6
	adds r7, r0, #0
	mov r4, sp
_08003AB2:
	ldrh r0, [r4]
	mov r1, sb
	mov r2, r8
	bl sub_800389C
	strh r0, [r4]
	adds r4, #2
	adds r5, #1
	cmp r5, r7
	blo _08003AB2
_08003AC6:
	cmp r6, #3
	bne _08003AF0
	ldr r1, _08003AE0 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08003AE8 @ =0x050003A0
	str r0, [r1, #4]
	ldr r0, _08003AEC @ =0x80000030
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _08003B06
	.align 2, 0
_08003ADC: .4byte gAnimation
_08003AE0: .4byte 0x040000D4
_08003AE4: .4byte 0x80000020
_08003AE8: .4byte 0x050003A0
_08003AEC: .4byte 0x80000030
_08003AF0:
	ldr r2, _08003B14 @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	ldr r0, _08003B18 @ =0x050003C0
	str r0, [r2, #4]
	lsls r0, r6, #4
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08003B06:
	add sp, #0x60
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003B14: .4byte 0x040000D4
_08003B18: .4byte 0x050003C0

	thumb_func_start sub_8003B1C
sub_8003B1C: @ 0x08003B1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r1, _08003B78 @ =0xFFFC0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	ldr r1, _08003B7C @ =gUnknown_0814E0E0
	cmp r0, #1
	bhi _08003B38
	adds r1, #0x20
_08003B38:
	ldr r0, _08003B80 @ =0x040000D4
	str r1, [r0]
	mov r1, sp
	str r1, [r0, #4]
	ldr r1, _08003B84 @ =0x80000010
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r5, #0
	mov r4, sp
_08003B4A:
	ldrh r0, [r4]
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_800389C
	strh r0, [r4]
	adds r4, #2
	adds r5, #1
	cmp r5, #0xf
	bls _08003B4A
	ldr r1, _08003B80 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08003B88 @ =0x05000340
	str r0, [r1, #4]
	ldr r0, _08003B84 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003B78: .4byte 0xFFFC0000
_08003B7C: .4byte gUnknown_0814E0E0
_08003B80: .4byte 0x040000D4
_08003B84: .4byte 0x80000010
_08003B88: .4byte 0x05000340

	thumb_func_start sub_8003B8C
sub_8003B8C: @ 0x08003B8C
	push {r4, r5, r6, lr}
	sub sp, #0x20
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r0, _08003BC8 @ =gUnknown_086E9B5C
	ldr r0, [r0, #4]
	ldr r1, _08003BCC @ =gUnknown_086DF2DC+4
	adds r0, r0, r1
	ldr r1, _08003BD0 @ =0x040000D4
	str r0, [r1]
	mov r0, sp
	str r0, [r1, #4]
	ldr r0, _08003BD4 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r4, sp
_08003BB0:
	cmp r5, #2
	bne _08003BD8
	ldrh r0, [r4]
	movs r1, #0x20
	movs r2, #0
	bl sub_800389C
	strh r0, [r4]
	ldrh r0, [r4]
	adds r1, r6, #0
	movs r2, #2
	b _08003BDE
	.align 2, 0
_08003BC8: .4byte gUnknown_086E9B5C
_08003BCC: .4byte gUnknown_086DF2DC+4
_08003BD0: .4byte 0x040000D4
_08003BD4: .4byte 0x80000010
_08003BD8:
	ldrh r0, [r4]
	adds r1, r6, #0
	adds r2, r5, #0
_08003BDE:
	bl sub_800389C
	strh r0, [r4]
	adds r4, #2
	mov r0, sp
	adds r0, #0x1e
	cmp r4, r0
	bls _08003BB0
	ldr r1, _08003C08 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08003C0C @ =0x05000340
	str r0, [r1, #4]
	ldr r0, _08003C10 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08003C08: .4byte 0x040000D4
_08003C0C: .4byte 0x05000340
_08003C10: .4byte 0x80000010

	thumb_func_start sub_8003C14
sub_8003C14: @ 0x08003C14
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r2, _08003C28 @ =gCourtRecord
	cmp r3, #4
	bls _08003C2C
	movs r0, #1
	strb r0, [r2, #0xa]
	subs r3, #4
	b _08003C30
	.align 2, 0
_08003C28: .4byte gCourtRecord
_08003C2C:
	movs r0, #0
	strb r0, [r2, #0xa]
_08003C30:
	movs r0, #0
	strb r3, [r2, #3]
	strb r0, [r2]
	ldrh r0, [r2, #4]
	strh r0, [r2, #6]
	movs r0, #0xfb
	ldrb r1, [r2, #0xc]
	ands r0, r1
	strb r0, [r2, #0xc]
	cmp r3, #4
	bhi _08003C8C
	lsls r0, r3, #2
	ldr r1, _08003C50 @ =_08003C54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08003C50: .4byte _08003C54
_08003C54: @ jump table
	.4byte _08003C8C @ case 0
	.4byte _08003C68 @ case 1
	.4byte _08003C76 @ case 2
	.4byte _08003C84 @ case 3
	.4byte _08003C88 @ case 4
_08003C68:
	movs r0, #0
	strb r4, [r2, #1]
	strb r0, [r2, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #4]
	b _08003C8C
_08003C76:
	rsbs r0, r4, #0
	strb r0, [r2, #1]
	movs r0, #0x1f
	strb r0, [r2, #2]
	adds r0, #0xf1
	strh r0, [r2, #4]
	b _08003C8C
_08003C84:
	strb r4, [r2, #1]
	b _08003C8C
_08003C88:
	rsbs r0, r4, #0
	strb r0, [r2, #1]
_08003C8C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start WindowDummy
WindowDummy: @ 0x08003C94
	bx lr
	.align 2, 0

	thumb_func_start ScrollWindowWithPrevWindow
ScrollWindowWithPrevWindow: @ 0x08003C98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldrb r0, [r5]
	ldrb r2, [r5, #1]
	adds r1, r0, r2
	strb r1, [r5]
	movs r0, #1
	ldrsb r0, [r5, r0]
	ldrh r3, [r5, #4]
	subs r0, r3, r0
	ldr r2, _08003D4C @ =0x000001FF
	ands r0, r2
	strh r0, [r5, #4]
	movs r0, #1
	ldrsb r0, [r5, r0]
	ldrh r6, [r5, #6]
	subs r0, r6, r0
	ands r0, r2
	strh r0, [r5, #6]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r1, #7
	ble _08003D96
	movs r0, #0
	mov sl, r0
	ldr r2, _08003D50 @ =gBG2MapBuffer
	mov ip, r2
	ldr r3, _08003D54 @ =0x0000017F
	mov sb, r3
_08003CDA:
	ldrb r0, [r5]
	subs r0, #8
	strb r0, [r5]
	ldrb r1, [r5, #2]
	adds r1, #1
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r5, #2]
	cmp r1, #0x1f
	bne _08003CF8
	mov r6, sl
	strb r6, [r5]
	strb r6, [r5, #1]
	movs r0, #8
	strh r0, [r5, #4]
_08003CF8:
	movs r3, #2
	ldr r1, _08003D58 @ =0x040000D4
	ldr r0, _08003D5C @ =gTilemapBuffer
	mov r8, r0
	ldr r7, _08003D60 @ =gTilemapBuffer+0x2
	mov r2, ip
	adds r2, #0x80
	ldr r6, _08003D64 @ =0x80000020
	ldr r4, _08003D68 @ =0x8000001F
_08003D0A:
	str r2, [r1]
	mov r0, r8
	str r0, [r1, #4]
	str r6, [r1, #8]
	ldr r0, [r1, #8]
	str r7, [r1]
	str r2, [r1, #4]
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	adds r2, #0x40
	adds r3, #1
	cmp r3, #0xb
	bls _08003D0A
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _08003D70
	movs r3, #0x40
	mov r2, sb
	ldr r4, _08003D6C @ =gUnknown_0801B8D8
	mov r1, ip
	adds r1, #0xbe
_08003D34:
	ldrb r6, [r5, #2]
	adds r0, r6, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0x40
	adds r3, #0x20
	cmp r3, r2
	bls _08003D34
	b _08003D8E
	.align 2, 0
_08003D4C: .4byte 0x000001FF
_08003D50: .4byte gBG2MapBuffer
_08003D54: .4byte 0x0000017F
_08003D58: .4byte 0x040000D4
_08003D5C: .4byte gTilemapBuffer
_08003D60: .4byte gTilemapBuffer+0x2
_08003D64: .4byte 0x80000020
_08003D68: .4byte 0x8000001F
_08003D6C: .4byte gUnknown_0801B8D8
_08003D70:
	movs r3, #0x40
	mov r2, sb
	ldr r4, _08003E24 @ =gUnknown_0801B5D8
	mov r1, ip
	adds r1, #0xbe
_08003D7A:
	ldrb r6, [r5, #2]
	adds r0, r6, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0x40
	adds r3, #0x20
	cmp r3, r2
	bls _08003D7A
_08003D8E:
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #7
	bgt _08003CDA
_08003D96:
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	movs r2, #8
	rsbs r2, r2, #0
	cmp r0, r2
	bgt _08003E70
	ldr r0, _08003E28 @ =0x0000017F
	mov sb, r0
	ldr r2, _08003E24 @ =gUnknown_0801B5D8
	mov sl, r2
	ldr r3, _08003E2C @ =gBG2MapBuffer
	mov ip, r3
_08003DB0:
	adds r0, r1, #0
	adds r0, #8
	strb r0, [r5]
	ldrb r1, [r5, #2]
	subs r1, #1
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r5, #2]
	cmp r1, #0
	bne _08003DCC
	strb r1, [r5]
	strb r1, [r5, #1]
	movs r0, #8
	strh r0, [r5, #4]
_08003DCC:
	movs r3, #2
	ldr r1, _08003E30 @ =0x040000D4
	ldr r6, _08003E34 @ =gTilemapBuffer
	mov r4, ip
	adds r4, #0x82
	mov r2, ip
	adds r2, #0x80
	ldr r0, _08003E38 @ =0x80000020
	mov r8, r0
	ldr r7, _08003E3C @ =0x8000001F
_08003DE0:
	str r2, [r1]
	str r6, [r1, #4]
	mov r0, r8
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r6, [r1]
	str r4, [r1, #4]
	str r7, [r1, #8]
	ldr r0, [r1, #8]
	adds r4, #0x40
	adds r2, #0x40
	adds r3, #1
	cmp r3, #0xb
	bls _08003DE0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _08003E44
	movs r3, #0x40
	mov r2, sb
	ldr r4, _08003E40 @ =gUnknown_0801B8D8
	mov r1, ip
	adds r1, #0x80
_08003E0C:
	ldrb r6, [r5, #2]
	adds r0, r6, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0x40
	adds r3, #0x20
	cmp r3, r2
	bls _08003E0C
	b _08003E62
	.align 2, 0
_08003E24: .4byte gUnknown_0801B5D8
_08003E28: .4byte 0x0000017F
_08003E2C: .4byte gBG2MapBuffer
_08003E30: .4byte 0x040000D4
_08003E34: .4byte gTilemapBuffer
_08003E38: .4byte 0x80000020
_08003E3C: .4byte 0x8000001F
_08003E40: .4byte gUnknown_0801B8D8
_08003E44:
	movs r3, #0x40
	mov r2, sb
	mov r4, sl
	mov r1, ip
	adds r1, #0x80
_08003E4E:
	ldrb r6, [r5, #2]
	adds r0, r6, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0x40
	adds r3, #0x20
	cmp r3, r2
	bls _08003E4E
_08003E62:
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	movs r2, #8
	rsbs r2, r2, #0
	cmp r0, r2
	ble _08003DB0
_08003E70:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start ScrollWindowWithoutPrevWindow
ScrollWindowWithoutPrevWindow: @ 0x08003E80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldrb r1, [r5]
	ldrb r2, [r5, #1]
	adds r0, r1, r2
	strb r0, [r5]
	movs r1, #1
	ldrsb r1, [r5, r1]
	ldrh r2, [r5, #4]
	subs r1, r2, r1
	ldr r2, _08003FA4 @ =0x000001FF
	ands r1, r2
	strh r1, [r5, #4]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _08003F16
	movs r0, #0
	mov sb, r0
	ldr r1, _08003FA8 @ =gTilemapBuffer
	mov sl, r1
	ldr r2, _08003FAC @ =gBG2MapBuffer
	mov r8, r2
_08003EB6:
	ldrb r0, [r5]
	subs r0, #8
	strb r0, [r5]
	ldrb r1, [r5, #2]
	adds r1, #1
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r5, #2]
	cmp r1, #0x1f
	bne _08003ED0
	mov r0, sb
	strb r0, [r5]
	strb r0, [r5, #1]
_08003ED0:
	movs r4, #2
	ldr r1, _08003FB0 @ =0x040000D4
	mov ip, sl
	ldr r7, _08003FB4 @ =gTilemapBuffer+0x2
	mov r2, r8
	adds r2, #0x80
	ldr r6, _08003FB8 @ =0x80000020
	ldr r3, _08003FBC @ =0x8000001F
_08003EE0:
	str r2, [r1]
	mov r0, ip
	str r0, [r1, #4]
	str r6, [r1, #8]
	ldr r0, [r1, #8]
	str r7, [r1]
	str r2, [r1, #4]
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	adds r2, #0x40
	adds r4, #1
	cmp r4, #0xb
	bls _08003EE0
	movs r4, #0x40
	ldr r2, _08003FC0 @ =0x0000017F
	movs r1, #0
	mov r0, r8
	adds r0, #0xbe
_08003F04:
	strh r1, [r0]
	adds r0, #0x40
	adds r4, #0x20
	cmp r4, r2
	bls _08003F04
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #7
	bgt _08003EB6
_08003F16:
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	movs r2, #8
	rsbs r2, r2, #0
	cmp r0, r2
	bgt _08003F94
	mov sl, r2
	ldr r2, _08003FA8 @ =gTilemapBuffer
	mov sb, r2
	ldr r0, _08003FAC @ =gBG2MapBuffer
	mov r8, r0
_08003F2E:
	adds r0, r1, #0
	adds r0, #8
	strb r0, [r5]
	ldrb r1, [r5, #2]
	subs r1, #1
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r5, #2]
	cmp r1, #0
	bne _08003F46
	strb r1, [r5]
	strb r1, [r5, #1]
_08003F46:
	movs r4, #2
	ldr r1, _08003FB0 @ =0x040000D4
	mov r6, sb
	mov r3, r8
	adds r3, #0x82
	mov r2, r8
	adds r2, #0x80
	ldr r0, _08003FB8 @ =0x80000020
	mov ip, r0
	ldr r7, _08003FBC @ =0x8000001F
_08003F5A:
	str r2, [r1]
	str r6, [r1, #4]
	mov r0, ip
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r6, [r1]
	str r3, [r1, #4]
	str r7, [r1, #8]
	ldr r0, [r1, #8]
	adds r3, #0x40
	adds r2, #0x40
	adds r4, #1
	cmp r4, #0xb
	bls _08003F5A
	movs r4, #0x40
	ldr r2, _08003FC0 @ =0x0000017F
	movs r1, #0
	mov r0, r8
	adds r0, #0x80
_08003F80:
	strh r1, [r0]
	adds r0, #0x40
	adds r4, #0x20
	cmp r4, r2
	bls _08003F80
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, sl
	ble _08003F2E
_08003F94:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003FA4: .4byte 0x000001FF
_08003FA8: .4byte gTilemapBuffer
_08003FAC: .4byte gBG2MapBuffer
_08003FB0: .4byte 0x040000D4
_08003FB4: .4byte gTilemapBuffer+0x2
_08003FB8: .4byte 0x80000020
_08003FBC: .4byte 0x8000001F
_08003FC0: .4byte 0x0000017F

	thumb_func_start sub_8003FC4
sub_8003FC4: @ 0x08003FC4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08003FF4 @ =gMain
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _08003FEC
	ldr r1, _08003FF8 @ =gWindowFunctions
	ldrb r2, [r4, #3]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r1, _08003FFC @ =gIORegisters
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r0, #8
	strh r0, [r1, #0x10]
_08003FEC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003FF4: .4byte gMain
_08003FF8: .4byte gWindowFunctions
_08003FFC: .4byte gIORegisters

	thumb_func_start SetTextboxNametag
SetTextboxNametag: @ 0x08004000
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _08004040 @ =gMain
	movs r2, #0xaf
	lsls r2, r2, #2
	adds r1, r0, r2
	strb r5, [r1]
	ldr r3, _08004044 @ =0x000002BD
	adds r0, r0, r3
	strb r6, [r0]
	ldr r0, _08004048 @ =gUnknown_08111ED0
	adds r0, r5, r0
	ldrb r5, [r0]
	cmp r5, #0
	bne _08004054
	movs r4, #0xc0
	lsls r4, r4, #1
	subs r3, #0xde
	ldr r0, _0800404C @ =gBG1MapBuffer
	ldr r2, _08004050 @ =gUnknown_0801B1D8
	movs r5, #0xc0
	lsls r5, r5, #2
	adds r1, r0, r5
_08004030:
	adds r0, r4, r2
	ldrb r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r4, #1
	cmp r4, r3
	bls _08004030
	b _08004102
	.align 2, 0
_08004040: .4byte gMain
_08004044: .4byte 0x000002BD
_08004048: .4byte gUnknown_08111ED0
_0800404C: .4byte gBG1MapBuffer
_08004050: .4byte gUnknown_0801B1D8
_08004054:
	adds r0, r5, #0
	movs r1, #5
	bl __udivsi3
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #5
	bl __umodsi3
	lsls r4, r4, #0xb
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #6
	ldr r2, _0800409C @ =gUnknown_0813891C
	adds r0, r4, r2
	adds r1, r1, r0
	ldr r0, _080040A0 @ =0x040000D4
	str r1, [r0]
	ldr r2, _080040A4 @ =0x06000A80
	str r2, [r0, #4]
	ldr r2, _080040A8 @ =0x80000060
	str r2, [r0, #8]
	ldr r3, [r0, #8]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r1, r3
	str r1, [r0]
	ldr r1, _080040AC @ =0x06000B40
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	cmp r6, #0
	beq _080040B4
	movs r6, #0x18
	ldr r2, _080040B0 @ =gUnknown_0801B1C0+0x12
	b _080040B6
	.align 2, 0
_0800409C: .4byte gUnknown_0813891C
_080040A0: .4byte 0x040000D4
_080040A4: .4byte 0x06000A80
_080040A8: .4byte 0x80000060
_080040AC: .4byte 0x06000B40
_080040B0: .4byte gUnknown_0801B1C0+0x12
_080040B4:
	ldr r2, _08004108 @ =gUnknown_0801B1C0+0xC
_080040B6:
	ldr r3, _0800410C @ =gBG1MapBuffer+0x380
	lsls r0, r6, #1
	adds r3, r0, r3
	movs r4, #0
	adds r1, r0, #0
	ldr r5, _08004110 @ =gBG1MapBuffer+0x300
	ldr r6, _08004114 @ =gUnknown_0801B1C0
	adds r7, r5, #0
	adds r7, #0x40
	adds r0, r6, #6
	mov ip, r0
_080040CC:
	ldrb r0, [r2]
	strh r0, [r3]
	adds r3, #2
	adds r2, #1
	adds r4, #1
	cmp r4, #5
	bls _080040CC
	adds r3, r1, r5
	adds r2, r6, #0
	movs r4, #0
_080040E0:
	ldrb r0, [r2]
	strh r0, [r3]
	adds r3, #2
	adds r2, #1
	adds r4, #1
	cmp r4, #5
	bls _080040E0
	adds r3, r1, r7
	mov r2, ip
	movs r4, #0
_080040F4:
	ldrb r0, [r2]
	strh r0, [r3]
	adds r3, #2
	adds r2, #1
	adds r4, #1
	cmp r4, #5
	bls _080040F4
_08004102:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004108: .4byte gUnknown_0801B1C0+0xC
_0800410C: .4byte gBG1MapBuffer+0x380
_08004110: .4byte gBG1MapBuffer+0x300
_08004114: .4byte gUnknown_0801B1C0

	thumb_func_start UpdateBGTilemaps
UpdateBGTilemaps: @ 0x08004118
	ldr r2, _08004184 @ =gMain
	movs r0, #1
	ldrb r1, [r2, #0x1a]
	ands r0, r1
	cmp r0, #0
	beq _08004134
	ldr r1, _08004188 @ =0x040000D4
	ldr r0, _0800418C @ =gBG0MapBuffer
	str r0, [r1]
	ldr r0, _08004190 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08004194 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08004134:
	ldrb r2, [r2, #0x1a]
	movs r0, #2
	ands r0, r2
	adds r3, r2, #0
	cmp r0, #0
	beq _08004150
	ldr r1, _08004188 @ =0x040000D4
	ldr r0, _08004198 @ =gBG1MapBuffer
	str r0, [r1]
	ldr r0, _0800419C @ =0x0600E800
	str r0, [r1, #4]
	ldr r0, _08004194 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08004150:
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _08004168
	ldr r1, _08004188 @ =0x040000D4
	ldr r0, _080041A0 @ =gBG2MapBuffer
	str r0, [r1]
	ldr r0, _080041A4 @ =0x0600F000
	str r0, [r1, #4]
	ldr r0, _08004194 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08004168:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08004180
	ldr r1, _08004188 @ =0x040000D4
	ldr r0, _080041A8 @ =gBG3MapBuffer
	str r0, [r1]
	ldr r0, _080041AC @ =0x0600F800
	str r0, [r1, #4]
	ldr r0, _08004194 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08004180:
	bx lr
	.align 2, 0
_08004184: .4byte gMain
_08004188: .4byte 0x040000D4
_0800418C: .4byte gBG0MapBuffer
_08004190: .4byte 0x0600E000
_08004194: .4byte 0x80000400
_08004198: .4byte gBG1MapBuffer
_0800419C: .4byte 0x0600E800
_080041A0: .4byte gBG2MapBuffer
_080041A4: .4byte 0x0600F000
_080041A8: .4byte gBG3MapBuffer
_080041AC: .4byte 0x0600F800
