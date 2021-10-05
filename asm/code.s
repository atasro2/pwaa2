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
	ldr r0, _08000F58 @ =gUnknown_03002FA0
	str r0, [r1, #4]
	ldr r0, _08000F5C @ =0x81000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08000F60 @ =gUnknown_03002080
	movs r1, #0
	ldr r4, _08000F64 @ =0x000003FF
	ldr r6, _08000F68 @ =gUnknown_03000000
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
_08000F58: .4byte gUnknown_03002FA0
_08000F5C: .4byte 0x81000400
_08000F60: .4byte gUnknown_03002080
_08000F64: .4byte 0x000003FF
_08000F68: .4byte gUnknown_03000000
_08000F6C: .4byte gIORegisters
_08000F70: .4byte gUnknown_0801B1D8

	thumb_func_start sub_8000F74
sub_8000F74: @ 0x08000F74
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r7, _08000FE0 @ =gMain
	movs r1, #0
	ldr r6, _08000FE4 @ =gIORegisters
	ldr r0, _08000FE8 @ =gUnknown_03001080
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
	ldr r5, _08000FE8 @ =gUnknown_03001080
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
_08000FE8: .4byte gUnknown_03001080
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
	ldr r5, _080010F0 @ =gUnknown_0202CFC0
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
	ldr r7, _080010F8 @ =gUnknown_03001080
	adds r7, #0x7e
	mov r0, sb
	str r0, [sp, #8]
_0800108C:
	lsls r0, r4, #6
	ldr r1, _080010F8 @ =gUnknown_03001080
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
_080010F0: .4byte gUnknown_0202CFC0
_080010F4: .4byte 0x040000D4
_080010F8: .4byte gUnknown_03001080
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
	ldr r2, _080012A0 @ =gUnknown_0202CFC0
	adds r5, r0, r2
	movs r7, #1
	ldr r6, [sp, #0xc]
	lsrs r6, r6, #1
	str r6, [sp, #0x18]
	ldr r0, _080012A4 @ =gUnknown_03001080
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
	ldr r6, _080012AC @ =gUnknown_03001880
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
	ldr r6, _080012B8 @ =gUnknown_03001082
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
_080012A0: .4byte gUnknown_0202CFC0
_080012A4: .4byte gUnknown_03001080
_080012A8: .4byte 0x040000D4
_080012AC: .4byte gUnknown_03001880
_080012B0: .4byte 0x8000001E
_080012B4: .4byte 0x80000001
_080012B8: .4byte gUnknown_03001082
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
	ldr r4, _0800143C @ =gUnknown_0202CFC0
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
	ldr r0, _08001444 @ =gUnknown_030010BE
	adds r0, #2
	mov ip, r0
	mov r1, sl
	str r1, [sp, #0xc]
_0800136C:
	lsls r0, r3, #6
	ldr r7, _08001444 @ =gUnknown_030010BE
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
	ldr r0, _08001458 @ =gUnknown_03001080
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
_0800143C: .4byte gUnknown_0202CFC0
_08001440: .4byte 0x040000D4
_08001444: .4byte gUnknown_030010BE
_08001448: .4byte 0x80000001
_0800144C: .4byte 0x06004000
_08001450: .4byte 0x0600DD80
_08001454: .4byte 0x81000020
_08001458: .4byte gUnknown_03001080
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
	ldr r2, _080015A4 @ =gUnknown_0202CFC0
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
	ldr r0, _080015AC @ =gUnknown_03001082
	adds r2, r1, r0
	ldr r0, _080015B0 @ =gUnknown_03001880
	adds r3, r1, r0
	str r2, [r4]
	str r3, [r4, #4]
	ldr r2, _080015B4 @ =0x8000001F
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080015B8 @ =gUnknown_03001080
	adds r2, r1, r0
	str r3, [r4]
	str r2, [r4, #4]
	ldr r0, _080015B4 @ =0x8000001F
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080015BC @ =gUnknown_030010BE
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
_080015A4: .4byte gUnknown_0202CFC0
_080015A8: .4byte 0x040000D4
_080015AC: .4byte gUnknown_03001082
_080015B0: .4byte gUnknown_03001880
_080015B4: .4byte 0x8000001F
_080015B8: .4byte gUnknown_03001080
_080015BC: .4byte gUnknown_030010BE
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
	ldr r3, _0800166C @ =gUnknown_03001080
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
	ldr r6, _0800167C @ =gUnknown_0202CFC0
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
_0800166C: .4byte gUnknown_03001080
_08001670: .4byte 0x040000D4
_08001674: .4byte 0x80000020
_08001678: .4byte 0x06004000
_0800167C: .4byte gUnknown_0202CFC0
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
	ldr r5, _08001718 @ =gUnknown_03001080
	ldr r3, _0800171C @ =gUnknown_03001880
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
_08001718: .4byte gUnknown_03001080
_0800171C: .4byte gUnknown_03001880
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
	ldr r7, _080017E8 @ =gUnknown_0202CFC0
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
_080017E8: .4byte gUnknown_0202CFC0
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
	ldr r1, _080018CC @ =gUnknown_030015C0
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
	ldr r6, _080018DC @ =gUnknown_0202CFC0
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
_080018CC: .4byte gUnknown_030015C0
_080018D0: .4byte 0xFFFFFAC0
_080018D4: .4byte 0x040000D4
_080018D8: .4byte 0x80000020
_080018DC: .4byte gUnknown_0202CFC0
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
	ldr r5, _08001924 @ =gUnknown_030010C0
	ldr r7, _08001928 @ =gUnknown_03001880
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
_08001924: .4byte gUnknown_030010C0
_08001928: .4byte gUnknown_03001880
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
	ldr r0, _08001A00 @ =gUnknown_03001080
	str r0, [r2, #4]
	ldr r0, _08001A04 @ =0x800002C0
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r3, [sp, #4]
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r1, r0, #0
	muls r1, r6, r1
	ldr r7, _08001A08 @ =gUnknown_0202CFC0
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
_08001A00: .4byte gUnknown_03001080
_08001A04: .4byte 0x800002C0
_08001A08: .4byte gUnknown_0202CFC0
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
	bl sub_8013EB0
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
	bl sub_8013EB0
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
	bl sub_8013EB0
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
	bl sub_8013EB0
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
	bl sub_8013EB0
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
	bl sub_8013EB0
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
	bl sub_8013EB0
	adds r4, r0, #0
	movs r0, #0x70
	bl sub_8013EB0
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
	bl sub_8013EB0
	adds r4, r0, #0
	cmp r4, #0
	beq _08001CE6
	movs r0, #0
	movs r1, #0x20
	bl sub_8004338
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
	ldr r3, _08001D8C @ =gUnknown_03001080
	str r3, [r1]
	ldr r0, _08001D90 @ =gUnknown_03001880
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
_08001D8C: .4byte gUnknown_03001080
_08001D90: .4byte gUnknown_03001880
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
	bl sub_8013EB0
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
	ldr r4, _08001E14 @ =gUnknown_03001080
	ldr r3, _08001E18 @ =gUnknown_03001880
	b _08001E2C
	.align 2, 0
_08001E10: .4byte 0x040000D4
_08001E14: .4byte gUnknown_03001080
_08001E18: .4byte gUnknown_03001880
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
	bl sub_8013EB0
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
	ldr r0, _08001EAC @ =gUnknown_03001880
	str r0, [r1]
	ldr r0, _08001EB0 @ =gUnknown_03001080
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
_08001EAC: .4byte gUnknown_03001880
_08001EB0: .4byte gUnknown_03001080
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
	bl sub_8013EB0
	adds r2, r0, #0
	cmp r2, #0
	beq _08001F26
	movs r0, #0x78
	strh r0, [r2, #0x10]
	ldr r0, _08001F74 @ =0x0000FF10
	strh r0, [r2, #0x12]
_08001F26:
	movs r0, #0x7b
	bl sub_8013EB0
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
	bl sub_8013EB0
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
	ldr r7, _08001FA4 @ =gUnknown_03001080
	movs r0, #0xe0
	lsls r0, r0, #3
	adds r5, r0, #0
	b _08001FC0
	.align 2, 0
_08001FA0: .4byte 0x040000D4
_08001FA4: .4byte gUnknown_03001080
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
	bl sub_8013EB0
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
	bl sub_8013EB0
	adds r2, r0, #0
	cmp r2, #0
	beq _08002022
	bl sub_8014F94
_08002022:
	movs r0, #0x90
	bl sub_8013EB0
	adds r2, r0, #0
	cmp r2, #0
	beq _08002032
	bl sub_8014F94
_08002032:
	movs r4, #0
_08002034:
	adds r0, r4, #0
	adds r0, #0x91
	bl sub_8013EB0
	adds r2, r0, #0
	cmp r2, #0
	beq _08002046
	bl sub_8014F94
_08002046:
	adds r4, #1
	cmp r4, #4
	ble _08002034
	ldr r0, _080020A4 @ =gUnknown_0801BBD8
	ldr r2, _080020A8 @ =gUnknown_03001080
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
_080020A8: .4byte gUnknown_03001080
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
	bl sub_8013EB0
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
	bl sub_8013EB0
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
	ldr r0, _0800228C @ =gUnknown_0801ADC8
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
_0800228C: .4byte gUnknown_0801ADC8
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
	bl sub_8013EB0
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
	ldr r0, _080023E4 @ =gUnknown_0801ADC8
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
_080023E4: .4byte gUnknown_0801ADC8
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
	bl sub_8013EB0
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
	ldr r0, _080025DC @ =gUnknown_0801ADC8
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
_080025DC: .4byte gUnknown_0801ADC8
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
	bl sub_8013EB0
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
	bl sub_801484C
	movs r5, #0x3e
	ldrsh r0, [r6, r5]
	subs r4, r4, r0
	movs r0, #0x6d
	movs r1, #0x78
	adds r2, r4, #0
	bl sub_801484C
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
	ldr r0, _080026CC @ =gUnknown_0801ADC8
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
_080026CC: .4byte gUnknown_0801ADC8
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
	ldr r0, _080027D8 @ =gUnknown_0801ADC8
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
	ldr r0, _080027D8 @ =gUnknown_0801ADC8
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
_080027D8: .4byte gUnknown_0801ADC8
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
	ldr r0, _080027FC @ =gUnknown_0202CFC0
	b _08002804
	.align 2, 0
_080027FC: .4byte gUnknown_0202CFC0
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
	ldr r0, _08002878 @ =gUnknown_0801ADC8
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
	ldr r0, _08002878 @ =gUnknown_0801ADC8
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
_08002878: .4byte gUnknown_0801ADC8
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
	ldr r0, _08002910 @ =gUnknown_0202CFC0
_080028C2:
	str r0, [r2, #0x48]
	bl m4aSoundVSyncOff
	ldr r4, _08002914 @ =gMain
	ldr r1, [r4, #0x48]
	adds r0, r5, #0
	bl LZ77UnCompWram
	movs r6, #2
	ldr r0, _08002918 @ =gUnknown_0801ADC8
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
_08002910: .4byte gUnknown_0202CFC0
_08002914: .4byte gMain
_08002918: .4byte gUnknown_0801ADC8

	thumb_func_start nullsub_7
nullsub_7: @ 0x0800291C
	bx lr
	.align 2, 0

	thumb_func_start sub_8002920
sub_8002920: @ 0x08002920
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, _08002948 @ =gUnknown_030033A4
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
_08002948: .4byte gUnknown_030033A4
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
	ldr r1, _08002C00 @ =gUnknown_03000000
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
_08002C00: .4byte gUnknown_03000000
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
	ldr r3, _08002CAC @ =gUnknown_03001080
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
_08002CAC: .4byte gUnknown_03001080
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
	ldr r1, _08002DB4 @ =gUnknown_0801ADC8
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
	ldr r3, _08002DBC @ =gUnknown_03001080
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
	ldr r1, _08002DBC @ =gUnknown_03001080
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
	ldr r0, _08002DBC @ =gUnknown_03001080
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
_08002DB4: .4byte gUnknown_0801ADC8
_08002DB8: .4byte gUnknown_0801BBD8
_08002DBC: .4byte gUnknown_03001080
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
	ldr r7, _08002F30 @ =gUnknown_0202CFC0
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
	ldr r3, _08002F3C @ =gUnknown_03001080
	ldr r0, _08002F28 @ =0x040000D4
	str r1, [r0]
	str r3, [r0, #4]
	ldr r1, _08002F40 @ =0x800002C0
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_08002EF6:
	ldr r1, _08002F3C @ =gUnknown_03001080
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
_08002F30: .4byte gUnknown_0202CFC0
_08002F34: .4byte gUnknown_02036500
_08002F38: .4byte gUnknown_0801BBD8
_08002F3C: .4byte gUnknown_03001080
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
	ldr r6, _0800303C @ =gUnknown_0202CFC0
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
	ldr r7, _08003040 @ =gUnknown_03001080
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
_0800303C: .4byte gUnknown_0202CFC0
_08003040: .4byte gUnknown_03001080
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
	ldr r7, _08003100 @ =gUnknown_03001080
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
	ldr r7, _08003100 @ =gUnknown_03001080
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
_08003100: .4byte gUnknown_03001080
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
	ldr r1, _08003190 @ =gUnknown_03001080
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
_08003190: .4byte gUnknown_03001080
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
	ldr r3, _08003348 @ =gUnknown_03001080
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
	ldr r3, _08003348 @ =gUnknown_03001080
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
	ldr r1, _08003348 @ =gUnknown_03001080
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
	ldr r1, _08003348 @ =gUnknown_03001080
_08003278:
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	adds r1, #2
	adds r4, #1
	cmp r4, r3
	bls _08003278
	movs r4, #0
	ldr r7, _08003348 @ =gUnknown_03001080
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
	ldr r1, _08003348 @ =gUnknown_03001080
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
	ldr r1, _08003348 @ =gUnknown_03001080
_080032DA:
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	adds r1, #2
	adds r4, #1
	cmp r4, r3
	bls _080032DA
	movs r4, #0
	ldr r7, _08003348 @ =gUnknown_03001080
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
	ldr r1, _08003348 @ =gUnknown_03001080
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
_08003348: .4byte gUnknown_03001080
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
	ldr r1, _080034D4 @ =gUnknown_0801ADC8
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
_080034D4: .4byte gUnknown_0801ADC8
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

	thumb_func_start sub_80035A0
sub_80035A0: @ 0x080035A0
	ldr r1, _080035AC @ =gUnknown_0801ADC8
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_080035AC: .4byte gUnknown_0801ADC8

	thumb_func_start sub_80035B0
sub_80035B0: @ 0x080035B0
	ldr r1, _080035BC @ =gUnknown_0801ADC8
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x28
	bx lr
	.align 2, 0
_080035BC: .4byte gUnknown_0801ADC8

	thumb_func_start sub_80035C0
sub_80035C0: @ 0x080035C0
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
	ldr r1, _08003610 @ =gUnknown_03002080
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
	bl sub_8004000
	b _0800368E
	.align 2, 0
_08003610: .4byte gUnknown_03002080
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
	bl sub_8004000
	b _0800368E
_0800363A:
	ldr r1, _08003694 @ =gUnknown_03002080
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
_08003694: .4byte gUnknown_03002080
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
	ldr r1, _08003758 @ =gUnknown_03002080
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
	ldr r0, _08003758 @ =gUnknown_03002080
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
_08003758: .4byte gUnknown_03002080
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
	ldr r0, _080037F4 @ =gUnknown_03002080
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
_080037F4: .4byte gUnknown_03002080
_080037F8: .4byte gUnknown_0801B1D8

	thumb_func_start sub_80037FC
sub_80037FC: @ 0x080037FC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08003848 @ =gMain
	movs r0, #0
	strb r0, [r1, #0x18]
	strb r0, [r1, #0x19]
	bl sub_80037C8
	movs r0, #0
	movs r1, #0
	bl sub_8004000
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
	ldr r0, _08003858 @ =gUnknown_03002080
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
_08003858: .4byte gUnknown_03002080
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
	bl sub_80035A0
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
	ldr r1, _08003BCC @ =gUnknown_086DF2E0
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
_08003BCC: .4byte gUnknown_086DF2E0
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

	thumb_func_start nullsub_2
nullsub_2: @ 0x08003C94
	bx lr
	.align 2, 0

	thumb_func_start sub_8003C98
sub_8003C98: @ 0x08003C98
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
	ldr r2, _08003D50 @ =gUnknown_03000000
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
	ldr r0, _08003D5C @ =gUnknown_03001880
	mov r8, r0
	ldr r7, _08003D60 @ =gUnknown_03001882
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
_08003D50: .4byte gUnknown_03000000
_08003D54: .4byte 0x0000017F
_08003D58: .4byte 0x040000D4
_08003D5C: .4byte gUnknown_03001880
_08003D60: .4byte gUnknown_03001882
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
	ldr r3, _08003E2C @ =gUnknown_03000000
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
	ldr r6, _08003E34 @ =gUnknown_03001880
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
_08003E2C: .4byte gUnknown_03000000
_08003E30: .4byte 0x040000D4
_08003E34: .4byte gUnknown_03001880
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

	thumb_func_start sub_8003E80
sub_8003E80: @ 0x08003E80
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
	ldr r1, _08003FA8 @ =gUnknown_03001880
	mov sl, r1
	ldr r2, _08003FAC @ =gUnknown_03000000
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
	ldr r7, _08003FB4 @ =gUnknown_03001882
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
	ldr r2, _08003FA8 @ =gUnknown_03001880
	mov sb, r2
	ldr r0, _08003FAC @ =gUnknown_03000000
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
_08003FA8: .4byte gUnknown_03001880
_08003FAC: .4byte gUnknown_03000000
_08003FB0: .4byte 0x040000D4
_08003FB4: .4byte gUnknown_03001882
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
	ldr r1, _08003FF8 @ =gUnknown_08111EBC
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
_08003FF8: .4byte gUnknown_08111EBC
_08003FFC: .4byte gIORegisters

	thumb_func_start sub_8004000
sub_8004000: @ 0x08004000
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
	ldr r0, _0800404C @ =gUnknown_03002080
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
_0800404C: .4byte gUnknown_03002080
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
	ldr r2, _080040B0 @ =gUnknown_0801B1D2
	b _080040B6
	.align 2, 0
_0800409C: .4byte gUnknown_0813891C
_080040A0: .4byte 0x040000D4
_080040A4: .4byte 0x06000A80
_080040A8: .4byte 0x80000060
_080040AC: .4byte 0x06000B40
_080040B0: .4byte gUnknown_0801B1D2
_080040B4:
	ldr r2, _08004108 @ =gUnknown_0801B1CC
_080040B6:
	ldr r3, _0800410C @ =gUnknown_03002400
	lsls r0, r6, #1
	adds r3, r0, r3
	movs r4, #0
	adds r1, r0, #0
	ldr r5, _08004110 @ =gUnknown_03002380
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
_08004108: .4byte gUnknown_0801B1CC
_0800410C: .4byte gUnknown_03002400
_08004110: .4byte gUnknown_03002380
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
	ldr r0, _0800418C @ =gUnknown_03002FA0
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
	ldr r0, _08004198 @ =gUnknown_03002080
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
	ldr r0, _080041A0 @ =gUnknown_03000000
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
	ldr r0, _080041A8 @ =gUnknown_03001080
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
_0800418C: .4byte gUnknown_03002FA0
_08004190: .4byte 0x0600E000
_08004194: .4byte 0x80000400
_08004198: .4byte gUnknown_03002080
_0800419C: .4byte 0x0600E800
_080041A0: .4byte gUnknown_03000000
_080041A4: .4byte 0x0600F000
_080041A8: .4byte gUnknown_03001080
_080041AC: .4byte 0x0600F800

	thumb_func_start MoveSpritesToOAM
MoveSpritesToOAM: @ 0x080041B0
	ldr r1, _080041C4 @ =0x040000D4
	ldr r0, _080041C8 @ =gOamObjects
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080041CC @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bx lr
	.align 2, 0
_080041C4: .4byte 0x040000D4
_080041C8: .4byte gOamObjects
_080041CC: .4byte 0x80000200

	thumb_func_start sub_80041D0
sub_80041D0: @ 0x080041D0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r2, r1, #0
	ldrh r4, [r2]
	ldrh r1, [r2, #2]
	mov ip, r1
	ldrh r1, [r0]
	subs r5, r1, r4
	ldrh r0, [r0, #2]
	mov r1, ip
	subs r3, r0, r1
	ldrh r0, [r2, #4]
	subs r0, r0, r4
	mov r8, r0
	ldrh r0, [r2, #6]
	subs r6, r0, r1
	ldrh r1, [r2, #0xc]
	subs r1, r1, r4
	mov sb, r1
	ldrh r0, [r2, #0xe]
	mov r1, ip
	subs r7, r0, r1
	mov r1, r8
	muls r1, r3, r1
	adds r0, r6, #0
	muls r0, r5, r0
	cmp r1, r0
	blt _0800424E
	mov r1, sb
	muls r1, r3, r1
	adds r0, r7, #0
	muls r0, r5, r0
	cmp r1, r0
	bgt _0800424E
	ldrh r0, [r2, #8]
	subs r1, r0, r4
	subs r5, r5, r1
	ldrh r2, [r2, #0xa]
	mov r4, ip
	subs r0, r2, r4
	subs r3, r3, r0
	mov r2, r8
	subs r2, r2, r1
	mov r8, r2
	subs r6, r6, r0
	mov r4, sb
	subs r4, r4, r1
	mov sb, r4
	subs r7, r7, r0
	mov r1, r8
	muls r1, r3, r1
	adds r0, r6, #0
	muls r0, r5, r0
	cmp r1, r0
	bgt _0800424E
	mov r1, sb
	muls r1, r3, r1
	adds r0, r7, #0
	muls r0, r5, r0
	cmp r1, r0
	bge _08004252
_0800424E:
	movs r0, #0
	b _08004254
_08004252:
	movs r0, #1
_08004254:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8004260
sub_8004260: @ 0x08004260
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	muls r0, r1, r0
	adds r1, r0, #0
	cmp r0, #0
	bge _08004272
	adds r1, #0xff
_08004272:
	lsls r0, r1, #8
	asrs r0, r0, #0x10
	bx lr

	thumb_func_start sub_8004278
sub_8004278: @ 0x08004278
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8004290
sub_8004290: @ 0x08004290
	push {lr}
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start Random
Random: @ 0x080042A8
	push {r4, r5, lr}
	ldr r3, _080042EC @ =gMain
	ldr r2, _080042F0 @ =0xFFFF0000
	ands r4, r2
	ldrh r0, [r3, #0x2a]
	orrs r4, r0
	movs r0, #0x2a
	ldrsh r1, [r3, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r5, r2
	orrs r5, r0
	lsls r1, r5, #0x10
	asrs r1, r1, #0x18
	adds r0, r1, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080042F4 @ =0xFFFFFF00
	ands r4, r2
	orrs r4, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x10
	ldr r0, _080042F8 @ =0xFFFF00FF
	ands r4, r0
	orrs r4, r1
	strh r4, [r3, #0x2a]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080042EC: .4byte gMain
_080042F0: .4byte 0xFFFF0000
_080042F4: .4byte 0xFFFFFF00
_080042F8: .4byte 0xFFFF00FF

	thumb_func_start sub_80042FC
sub_80042FC: @ 0x080042FC
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, _08004320 @ =gUnknown_08111F08
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	lsrs r0, r4, #5
	lsls r0, r0, #2
	adds r3, r3, r0
	cmp r2, #0
	beq _08004324
	movs r0, #0x1f
	ands r0, r4
	movs r1, #1
	lsls r1, r0
	ldr r0, [r3]
	orrs r0, r1
	b _08004330
	.align 2, 0
_08004320: .4byte gUnknown_08111F08
_08004324:
	movs r0, #0x1f
	ands r0, r4
	movs r1, #1
	lsls r1, r0
	ldr r0, [r3]
	bics r0, r1
_08004330:
	str r0, [r3]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8004338
sub_8004338: @ 0x08004338
	ldr r2, _0800435C @ =gUnknown_08111F08
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r2, [r0]
	lsrs r0, r1, #5
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r1
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08004358
	movs r0, #1
_08004358:
	bx lr
	.align 2, 0
_0800435C: .4byte gUnknown_08111F08

	thumb_func_start sub_8004360
sub_8004360: @ 0x08004360
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	ldr r5, _080043EC @ =gIORegisters
	ldr r6, _080043F0 @ =gUnknown_0801C158
	adds r0, r6, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0x18]
	movs r3, #0
	ldrsh r0, [r6, r3]
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0x1a]
	ldrh r6, [r6]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0x1c]
	mov r0, r8
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0x1e]
	ldrh r1, [r5, #0x1a]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080043F4 @ =0x00007788
	subs r1, r1, r0
	ldrh r2, [r5, #0x18]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	subs r1, r1, r0
	ldr r2, _080043F8 @ =0x0FFFFFFF
	ands r1, r2
	str r1, [r5, #0x20]
	ldrh r3, [r5, #0x1e]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	ldr r1, _080043FC @ =0x00004FB0
	subs r1, r1, r0
	ldrh r3, [r5, #0x1c]
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #3
	subs r1, r1, r0
	ands r1, r2
	str r1, [r5, #0x24]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080043EC: .4byte gIORegisters
_080043F0: .4byte gUnknown_0801C158
_080043F4: .4byte 0x00007788
_080043F8: .4byte 0x0FFFFFFF
_080043FC: .4byte 0x00004FB0

	thumb_func_start sub_8004400
sub_8004400: @ 0x08004400
	push {r4, lr}
	adds r3, r1, #0
	ldr r1, _0800442C @ =gMain
	movs r4, #0xb6
	strh r3, [r4, r1]
	adds r1, #0xb8
	strh r2, [r1]
	movs r1, #0
	adds r2, r3, #0
	movs r3, #0
	bl sub_8014688
	ldr r0, _08004430 @ =gInvestigation
	movs r1, #1
	strb r1, [r0, #6]
	movs r1, #0xf
	bl sub_800EB24
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800442C: .4byte gMain
_08004430: .4byte gInvestigation

	thumb_func_start sub_8004434
sub_8004434: @ 0x08004434
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r2, #1
	bl sub_80042FC
	adds r0, r4, #0
	bl sub_8007538
	movs r0, #1
	bl sub_80037FC
	bl sub_80139EC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8004458
sub_8004458: @ 0x08004458
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r2, #1
	bl sub_80042FC
	adds r0, r4, #0
	bl sub_8007538
	movs r0, #2
	bl sub_80037FC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8004478
sub_8004478: @ 0x08004478
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	ldr r2, _080044E4 @ =gOamObjects+0x1A0
	movs r1, #0
	ldr r0, _080044E8 @ =gMain+0x8
	mov ip, r0
	ldr r6, _080044EC @ =0x000040C0
	movs r4, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r5, r0, #0
	movs r3, #0xa2
	lsls r3, r3, #7
_08004498:
	strh r6, [r2]
	adds r0, r4, r5
	strh r0, [r2, #2]
	strh r3, [r2, #4]
	adds r2, #8
	adds r4, #0x3c
	adds r3, #0x20
	adds r1, #1
	cmp r1, #3
	bls _08004498
	movs r0, #0x82
	lsls r0, r0, #1
	mov r1, ip
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	movs r2, #1
	bl sub_80042FC
	mov r0, r8
	bl sub_8007538
	movs r0, #1
	bl sub_80037FC
	ldr r4, _080044F0 @ =gInvestigation
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_800EB24
	movs r0, #0x40
	strb r0, [r4, #0x10]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080044E4: .4byte gOamObjects+0x1A0
_080044E8: .4byte gMain+0x8
_080044EC: .4byte 0x000040C0
_080044F0: .4byte gInvestigation

	thumb_func_start nullsub_8
nullsub_8: @ 0x080044F4
	bx lr
	.align 2, 0

	thumb_func_start sub_80044F8
sub_80044F8: @ 0x080044F8
	push {lr}
	ldr r2, _08004534 @ =0x040000D4
	ldr r1, _08004538 @ =gUnknown_0801CC08
	str r1, [r2]
	ldr r1, _0800453C @ =gMain+0x120
	str r1, [r2, #4]
	ldr r1, _08004540 @ =0x80000014
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08004544 @ =gUnknown_0801CA28
	str r1, [r2]
	ldr r1, _08004548 @ =gUnknown_03002920
	str r1, [r2, #4]
	ldr r1, _0800454C @ =0x800000F0
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08004550 @ =gUnknown_0801CA24
	str r1, [r2]
	ldr r1, _08004554 @ =gUnknown_03003B70
	str r1, [r2, #4]
	ldr r1, _08004558 @ =0x80000002
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0xb2
	movs r1, #0
	strb r1, [r0]
	bl sub_8017910
	pop {r0}
	bx r0
	.align 2, 0
_08004534: .4byte 0x040000D4
_08004538: .4byte gUnknown_0801CC08
_0800453C: .4byte gMain+0x120
_08004540: .4byte 0x80000014
_08004544: .4byte gUnknown_0801CA28
_08004548: .4byte gUnknown_03002920
_0800454C: .4byte 0x800000F0
_08004550: .4byte gUnknown_0801CA24
_08004554: .4byte gUnknown_03003B70
_08004558: .4byte 0x80000002

	thumb_func_start sub_800455C
sub_800455C: @ 0x0800455C
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _0800458C @ =0x0000FFFF
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _08004590 @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	ldr r1, _08004594 @ =gUnknown_03003C90
	str r1, [r2, #4]
	ldr r1, _08004598 @ =0x810000F0
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #7
	bls _08004582
	b _08004C4C
_08004582:
	lsls r0, r0, #2
	ldr r1, _0800459C @ =_080045A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800458C: .4byte 0x0000FFFF
_08004590: .4byte 0x040000D4
_08004594: .4byte gUnknown_03003C90
_08004598: .4byte 0x810000F0
_0800459C: .4byte _080045A0
_080045A0: @ jump table
	.4byte _080045C0 @ case 0
	.4byte _0800462C @ case 1
	.4byte _08004C4C @ case 2
	.4byte _080046C8 @ case 3
	.4byte _080047FC @ case 4
	.4byte _08004908 @ case 5
	.4byte _08004A18 @ case 6
	.4byte _08004B38 @ case 7
_080045C0:
	movs r0, #0
	movs r1, #0x48
	bl sub_8004338
	cmp r0, #0
	beq _08004602
	movs r0, #0
	movs r1, #0x6b
	bl sub_8004338
	cmp r0, #0
	bne _080045E0
	movs r0, #0x82
	movs r1, #0xff
	bl sub_8004434
_080045E0:
	movs r0, #0
	movs r1, #0x6c
	bl sub_8004338
	cmp r0, #0
	bne _080045F2
	movs r0, #9
	bl sub_801480C
_080045F2:
	ldr r1, _0800461C @ =0x040000D4
	ldr r0, _08004620 @ =gUnknown_0801CC30
	str r0, [r1]
	ldr r0, _08004624 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08004628 @ =0x8000003C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08004602:
	movs r0, #0
	movs r1, #0x49
	bl sub_8004338
	cmp r0, #0
	bne _08004610
	b _08004C4C
_08004610:
	movs r0, #0
	movs r1, #0x4a
	movs r2, #1
	bl sub_80042FC
	b _08004C4C
	.align 2, 0
_0800461C: .4byte 0x040000D4
_08004620: .4byte gUnknown_0801CC30
_08004624: .4byte gUnknown_03003C90
_08004628: .4byte 0x8000003C
_0800462C:
	movs r0, #0
	movs r1, #0x4e
	bl sub_8004338
	cmp r0, #0
	beq _08004660
	movs r0, #0
	movs r1, #0x81
	bl sub_8004338
	cmp r0, #0
	beq _08004660
	bl LoadCurrentScriptIntoRam
	movs r0, #0
	movs r1, #0x7d
	bl sub_8004338
	cmp r0, #0
	beq _08004658
	movs r0, #5
	b _08004690
_08004658:
	ldr r0, _0800465C @ =0x00000143
	b _0800467A
	.align 2, 0
_0800465C: .4byte 0x00000143
_08004660:
	movs r0, #0
	movs r1, #0x4a
	bl sub_8004338
	cmp r0, #0
	beq _08004682
	movs r0, #0
	movs r1, #0x6d
	bl sub_8004338
	cmp r0, #0
	bne _080046A8
	movs r0, #0x99
_0800467A:
	movs r1, #0xff
	bl sub_8004434
	b _080046A8
_08004682:
	movs r0, #0
	movs r1, #0x48
	bl sub_8004338
	cmp r0, #0
	beq _080046A0
	movs r0, #4
_08004690:
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xd0
	bl sub_8013998
	b _080046A8
_080046A0:
	movs r0, #0x89
	movs r1, #0xff
	bl sub_8004434
_080046A8:
	ldr r1, _080046B8 @ =0x040000D4
	ldr r0, _080046BC @ =gUnknown_0801CCA8
	str r0, [r1]
	ldr r0, _080046C0 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _080046C4 @ =0x80000014
	b _08004B1C
	.align 2, 0
_080046B8: .4byte 0x040000D4
_080046BC: .4byte gUnknown_0801CCA8
_080046C0: .4byte gUnknown_03003C90
_080046C4: .4byte 0x80000014
_080046C8:
	movs r0, #0
	movs r1, #0x4e
	bl sub_8004338
	cmp r0, #0
	beq _080046F0
	movs r0, #0
	movs r1, #0x81
	bl sub_8004338
	cmp r0, #0
	beq _080046F0
	movs r0, #0
	movs r1, #0x4f
	bl sub_8004338
	cmp r0, #0
	bne _080047C8
	movs r0, #0xb5
	b _0800476A
_080046F0:
	movs r0, #0
	movs r1, #0x48
	bl sub_8004338
	cmp r0, #0
	beq _0800470C
	movs r0, #0
	movs r1, #0x6e
	bl sub_8004338
	cmp r0, #0
	bne _080047B8
	movs r0, #0xb4
	b _0800476A
_0800470C:
	movs r0, #0
	movs r1, #0x42
	bl sub_8004338
	cmp r0, #0
	beq _08004740
	movs r0, #0
	movs r1, #0x44
	bl sub_8004338
	cmp r0, #0
	bne _080047C8
	movs r0, #0
	movs r1, #0x66
	bl sub_8004338
	cmp r0, #0
	beq _0800473C
	ldr r2, _08004738 @ =0x00001468
	movs r0, #0x18
	b _080047B2
	.align 2, 0
_08004738: .4byte 0x00001468
_0800473C:
	movs r0, #0xad
	b _0800476A
_08004740:
	movs r0, #0
	movs r1, #0x41
	bl sub_8004338
	cmp r0, #0
	beq _0800477C
	movs r0, #0
	movs r1, #0x61
	bl sub_8004338
	cmp r0, #0
	beq _08004768
	ldr r1, _08004774 @ =0x00000D38
	ldr r2, _08004778 @ =0x00000C14
	movs r0, #0x18
	bl sub_8004400
	movs r0, #0xc
	bl sub_8013998
_08004768:
	movs r0, #0xa9
_0800476A:
	movs r1, #0xff
	bl sub_8004434
	b _080047C8
	.align 2, 0
_08004774: .4byte 0x00000D38
_08004778: .4byte 0x00000C14
_0800477C:
	movs r0, #0
	movs r1, #0x51
	bl sub_8004338
	cmp r0, #0
	beq _080047C0
	movs r0, #0
	movs r1, #0x52
	bl sub_8004338
	cmp r0, #0
	beq _080047AC
	movs r0, #0
	movs r1, #0x53
	bl sub_8004338
	cmp r0, #0
	beq _080047AC
	movs r0, #0
	movs r1, #0x54
	bl sub_8004338
	cmp r0, #0
	bne _080047C8
_080047AC:
	movs r2, #0xde
	lsls r2, r2, #2
	movs r0, #4
_080047B2:
	adds r1, r2, #0
	bl sub_8004400
_080047B8:
	movs r0, #0x1f
	bl sub_8013998
	b _080047C8
_080047C0:
	movs r0, #0x9a
	movs r1, #0x50
	bl sub_8004434
_080047C8:
	movs r0, #0
	movs r1, #0x49
	bl sub_8004338
	cmp r0, #0
	beq _080047DE
	movs r0, #0
	movs r1, #0x4a
	movs r2, #1
	bl sub_80042FC
_080047DE:
	ldr r1, _080047EC @ =0x040000D4
	ldr r0, _080047F0 @ =gUnknown_0801CCD0
	str r0, [r1]
	ldr r0, _080047F4 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _080047F8 @ =0x80000046
	b _08004B1C
	.align 2, 0
_080047EC: .4byte 0x040000D4
_080047F0: .4byte gUnknown_0801CCD0
_080047F4: .4byte gUnknown_03003C90
_080047F8: .4byte 0x80000046
_080047FC:
	movs r0, #0
	movs r1, #0x4d
	bl sub_8004338
	cmp r0, #0
	beq _08004842
	movs r0, #0
	movs r1, #0x7a
	bl sub_8004338
	cmp r0, #0
	beq _08004832
	movs r0, #0
	movs r1, #0x4f
	bl sub_8004338
	cmp r0, #0
	bne _08004832
	movs r0, #0xa
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #1
	bl sub_8013998
	b _080048EA
_08004832:
	movs r0, #0
	movs r1, #0x4f
	bl sub_8004338
	cmp r0, #0
	bne _080048EA
	movs r0, #0xc9
	b _080048BC
_08004842:
	movs r0, #0
	movs r1, #0x48
	bl sub_8004338
	cmp r0, #0
	beq _0800485E
	movs r0, #0
	movs r1, #0x6f
	bl sub_8004338
	cmp r0, #0
	bne _080048EA
	movs r0, #0xc8
	b _080048BC
_0800485E:
	movs r0, #0
	movs r1, #0x44
	bl sub_8004338
	cmp r0, #0
	beq _08004892
	movs r0, #0
	movs r1, #0x45
	bl sub_8004338
	cmp r0, #0
	beq _08004892
	movs r0, #0
	movs r1, #0x46
	bl sub_8004338
	cmp r0, #0
	beq _08004892
	movs r0, #0
	movs r1, #0x47
	bl sub_8004338
	cmp r0, #0
	beq _08004892
	movs r0, #0xc7
	b _080048BC
_08004892:
	movs r0, #0
	movs r1, #0x41
	bl sub_8004338
	cmp r0, #0
	beq _080048C4
	movs r0, #0
	movs r1, #0x61
	bl sub_8004338
	cmp r0, #0
	beq _080048BA
	movs r0, #0
	movs r1, #0x62
	bl sub_8004338
	cmp r0, #0
	bne _080048EA
	movs r0, #0xc6
	b _080048BC
_080048BA:
	movs r0, #0xc3
_080048BC:
	movs r1, #0xff
	bl sub_8004434
	b _080048EA
_080048C4:
	movs r0, #0
	movs r1, #0x56
	bl sub_8004338
	cmp r0, #0
	beq _080048E2
	movs r0, #0x17
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xd7
	bl sub_8013998
	b _080048EA
_080048E2:
	movs r0, #0xb6
	movs r1, #0xff
	bl sub_8004434
_080048EA:
	ldr r1, _080048F8 @ =0x040000D4
	ldr r0, _080048FC @ =gUnknown_0801CD5C
	str r0, [r1]
	ldr r0, _08004900 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08004904 @ =0x80000028
	b _08004B1C
	.align 2, 0
_080048F8: .4byte 0x040000D4
_080048FC: .4byte gUnknown_0801CD5C
_08004900: .4byte gUnknown_03003C90
_08004904: .4byte 0x80000028
_08004908:
	movs r0, #0
	movs r1, #0x48
	bl sub_8004338
	cmp r0, #0
	beq _08004980
	ldr r1, _08004950 @ =0x040000D4
	ldr r0, _08004954 @ =gUnknown_0801CE10
	str r0, [r1]
	ldr r0, _08004958 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _0800495C @ =0x8000003C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0x70
	bl sub_8004338
	cmp r0, #0
	beq _08004964
	movs r0, #0
	movs r1, #0x4b
	bl sub_8004338
	cmp r0, #0
	bne _08004964
	ldr r0, _08004960 @ =0x00004015
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xcf
	bl sub_8013998
	b _08004978
	.align 2, 0
_08004950: .4byte 0x040000D4
_08004954: .4byte gUnknown_0801CE10
_08004958: .4byte gUnknown_03003C90
_0800495C: .4byte 0x8000003C
_08004960: .4byte 0x00004015
_08004964:
	movs r0, #0
	movs r1, #0x4b
	bl sub_8004338
	cmp r0, #0
	bne _08004978
	movs r0, #0xec
	movs r1, #0xff
	bl sub_8004434
_08004978:
	movs r0, #0xc
	bl sub_801480C
	b _08004C4C
_08004980:
	movs r0, #0
	movs r1, #0x41
	bl sub_8004338
	cmp r0, #0
	beq _080049D0
	movs r0, #0
	movs r1, #0x60
	bl sub_8004338
	cmp r0, #0
	beq _080049C0
	movs r0, #0
	movs r1, #0x63
	bl sub_8004338
	cmp r0, #0
	beq _080049B6
	movs r0, #0xa
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xc
	bl sub_8013998
	b _080049C8
_080049B6:
	movs r0, #0xe7
	movs r1, #0xff
	bl sub_8004434
	b _080049C8
_080049C0:
	movs r0, #0xe6
	movs r1, #0xff
	bl sub_8004434
_080049C8:
	movs r0, #0xd
	bl sub_801480C
	b _08004C4C
_080049D0:
	ldr r1, _08004A00 @ =0x040000D4
	ldr r0, _08004A04 @ =gUnknown_0801CDAC
	str r0, [r1]
	ldr r0, _08004A08 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08004A0C @ =0x80000032
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0x57
	bl sub_8004338
	cmp r0, #0
	beq _08004A14
	ldr r0, _08004A10 @ =0x00004015
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xcf
	bl sub_8013998
	b _08004C4C
	.align 2, 0
_08004A00: .4byte 0x040000D4
_08004A04: .4byte gUnknown_0801CDAC
_08004A08: .4byte gUnknown_03003C90
_08004A0C: .4byte 0x80000032
_08004A10: .4byte 0x00004015
_08004A14:
	movs r0, #0xd9
	b _08004C20
_08004A18:
	movs r0, #0
	movs r1, #0x4b
	bl sub_8004338
	cmp r0, #0
	beq _08004A7A
	movs r0, #0
	movs r1, #0x4c
	bl sub_8004338
	cmp r0, #0
	beq _08004A7A
	movs r0, #0
	movs r1, #0x77
	bl sub_8004338
	cmp r0, #0
	beq _08004A68
	movs r0, #0
	movs r1, #0x4d
	bl sub_8004338
	cmp r0, #0
	bne _08004A68
	movs r2, #0x8d
	lsls r2, r2, #3
	movs r0, #0x14
	adds r1, r2, #0
	bl sub_8004400
	movs r0, #0
	movs r1, #0x82
	bl sub_8004338
	cmp r0, #0
	beq _08004B10
	movs r0, #0xf2
	bl sub_8013998
	b _08004B10
_08004A68:
	movs r0, #0
	movs r1, #0x4d
	bl sub_8004338
	cmp r0, #0
	bne _08004B10
	movs r0, #0x98
	lsls r0, r0, #1
	b _08004AF4
_08004A7A:
	movs r0, #0
	movs r1, #0x48
	bl sub_8004338
	cmp r0, #0
	beq _08004A9C
	movs r0, #0
	movs r1, #0x76
	bl sub_8004338
	cmp r0, #0
	bne _08004B10
	ldr r0, _08004A98 @ =0x0000012F
	b _08004AF4
	.align 2, 0
_08004A98: .4byte 0x0000012F
_08004A9C:
	movs r0, #0
	movs r1, #0x43
	bl sub_8004338
	cmp r0, #0
	beq _08004ACC
	movs r0, #0
	movs r1, #0x67
	bl sub_8004338
	cmp r0, #0
	beq _08004AC2
	movs r2, #0x8d
	lsls r2, r2, #3
	movs r0, #0x14
	adds r1, r2, #0
	bl sub_8004400
	b _08004B10
_08004AC2:
	ldr r0, _08004AC8 @ =0x0000012D
	b _08004AF4
	.align 2, 0
_08004AC8: .4byte 0x0000012D
_08004ACC:
	movs r0, #0
	movs r1, #0x5b
	bl sub_8004338
	cmp r0, #0
	beq _08004AFC
	movs r0, #0
	movs r1, #0x5c
	bl sub_8004338
	cmp r0, #0
	beq _08004AFC
	movs r0, #0
	movs r1, #0x5e
	bl sub_8004338
	cmp r0, #0
	bne _08004AFC
	movs r0, #0x92
	lsls r0, r0, #1
_08004AF4:
	movs r1, #0xff
	bl sub_8004434
	b _08004B10
_08004AFC:
	movs r0, #0
	movs r1, #0x5d
	bl sub_8004338
	cmp r0, #0
	bne _08004B10
	ldr r0, _08004B24 @ =0x00000123
	movs r1, #0xff
	bl sub_8004434
_08004B10:
	ldr r1, _08004B28 @ =0x040000D4
	ldr r0, _08004B2C @ =gUnknown_0801CE88
	str r0, [r1]
	ldr r0, _08004B30 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08004B34 @ =0x80000032
_08004B1C:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _08004C4C
	.align 2, 0
_08004B24: .4byte 0x00000123
_08004B28: .4byte 0x040000D4
_08004B2C: .4byte gUnknown_0801CE88
_08004B30: .4byte gUnknown_03003C90
_08004B34: .4byte 0x80000032
_08004B38:
	movs r0, #0
	movs r1, #0x4d
	bl sub_8004338
	cmp r0, #0
	beq _08004B90
	ldr r1, _08004B80 @ =0x040000D4
	ldr r0, _08004B84 @ =gUnknown_0801CF8C
	str r0, [r1]
	ldr r0, _08004B88 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08004B8C @ =0x80000032
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0x7b
	bl sub_8004338
	cmp r0, #0
	beq _08004B6C
	movs r0, #0
	movs r1, #0x4e
	bl sub_8004338
	cmp r0, #0
	beq _08004BF8
_08004B6C:
	movs r0, #0
	movs r1, #0x4e
	bl sub_8004338
	cmp r0, #0
	bne _08004C4C
	movs r0, #0x8c
	lsls r0, r0, #1
	b _08004C20
	.align 2, 0
_08004B80: .4byte 0x040000D4
_08004B84: .4byte gUnknown_0801CF8C
_08004B88: .4byte gUnknown_03003C90
_08004B8C: .4byte 0x80000032
_08004B90:
	movs r0, #0
	movs r1, #0x48
	bl sub_8004338
	cmp r0, #0
	beq _08004BD0
	ldr r1, _08004BBC @ =0x040000D4
	ldr r0, _08004BC0 @ =gUnknown_0801CF8C
	str r0, [r1]
	ldr r0, _08004BC4 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08004BC8 @ =0x80000032
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0x75
	bl sub_8004338
	cmp r0, #0
	bne _08004BF8
	ldr r0, _08004BCC @ =0x0000010D
	b _08004C20
	.align 2, 0
_08004BBC: .4byte 0x040000D4
_08004BC0: .4byte gUnknown_0801CF8C
_08004BC4: .4byte gUnknown_03003C90
_08004BC8: .4byte 0x80000032
_08004BCC: .4byte 0x0000010D
_08004BD0:
	movs r0, #0
	movs r1, #0x42
	bl sub_8004338
	cmp r0, #0
	beq _08004C28
	ldr r1, _08004C0C @ =0x040000D4
	ldr r0, _08004C10 @ =gUnknown_0801CF3C
	str r0, [r1]
	ldr r0, _08004C14 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08004C18 @ =0x80000028
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0x43
	bl sub_8004338
	cmp r0, #0
	beq _08004C1C
_08004BF8:
	movs r0, #0x13
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xd7
	bl sub_8013998
	b _08004C4C
	.align 2, 0
_08004C0C: .4byte 0x040000D4
_08004C10: .4byte gUnknown_0801CF3C
_08004C14: .4byte gUnknown_03003C90
_08004C18: .4byte 0x80000028
_08004C1C:
	movs r0, #0x82
	lsls r0, r0, #1
_08004C20:
	movs r1, #0xff
	bl sub_8004434
	b _08004C4C
_08004C28:
	ldr r1, _08004C54 @ =0x040000D4
	ldr r0, _08004C58 @ =gUnknown_0801CEEC
	str r0, [r1]
	ldr r0, _08004C5C @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08004C60 @ =0x80000028
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0x5c
	bl sub_8004338
	cmp r0, #0
	bne _08004C4C
	movs r0, #0xfe
	movs r1, #0xff
	bl sub_8004434
_08004C4C:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08004C54: .4byte 0x040000D4
_08004C58: .4byte gUnknown_0801CEEC
_08004C5C: .4byte gUnknown_03003C90
_08004C60: .4byte 0x80000028

	thumb_func_start sub_8004C64
sub_8004C64: @ 0x08004C64
	push {lr}
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #7
	bne _08004C86
	movs r0, #0
	movs r1, #0x4e
	bl sub_8004338
	cmp r0, #0
	beq _08004C86
	ldr r0, _08004C8C @ =gUnknown_03003C90
	adds r0, #0x14
	movs r1, #0xff
	strh r1, [r0]
	adds r1, #3
	strh r1, [r0, #0x3c]
_08004C86:
	pop {r0}
	bx r0
	.align 2, 0
_08004C8C: .4byte gUnknown_03003C90

	thumb_func_start sub_8004C90
sub_8004C90: @ 0x08004C90
	ldr r2, _08004CC4 @ =0x040000D4
	ldr r1, _08004CC8 @ =gUnknown_0801D6DC
	str r1, [r2]
	ldr r1, _08004CCC @ =gMain+0x120
	str r1, [r2, #4]
	ldr r1, _08004CD0 @ =0x80000014
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08004CD4 @ =gUnknown_0801D470
	str r1, [r2]
	ldr r1, _08004CD8 @ =gUnknown_03002920
	str r1, [r2, #4]
	ldr r1, _08004CDC @ =0x80000136
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08004CE0 @ =gUnknown_0801D464
	str r1, [r2]
	ldr r1, _08004CE4 @ =gUnknown_03003B70
	str r1, [r2, #4]
	ldr r1, _08004CE8 @ =0x80000006
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0xb2
	movs r1, #3
	strb r1, [r0]
	bx lr
	.align 2, 0
_08004CC4: .4byte 0x040000D4
_08004CC8: .4byte gUnknown_0801D6DC
_08004CCC: .4byte gMain+0x120
_08004CD0: .4byte 0x80000014
_08004CD4: .4byte gUnknown_0801D470
_08004CD8: .4byte gUnknown_03002920
_08004CDC: .4byte 0x80000136
_08004CE0: .4byte gUnknown_0801D464
_08004CE4: .4byte gUnknown_03003B70
_08004CE8: .4byte 0x80000006

	thumb_func_start sub_8004CEC
sub_8004CEC: @ 0x08004CEC
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _08004D1C @ =0x0000FFFF
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _08004D20 @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	ldr r3, _08004D24 @ =gUnknown_03003C90
	str r3, [r2, #4]
	ldr r1, _08004D28 @ =0x810000F0
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #7
	bls _08004D12
	b _080052F0
_08004D12:
	lsls r0, r0, #2
	ldr r1, _08004D2C @ =_08004D30
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08004D1C: .4byte 0x0000FFFF
_08004D20: .4byte 0x040000D4
_08004D24: .4byte gUnknown_03003C90
_08004D28: .4byte 0x810000F0
_08004D2C: .4byte _08004D30
_08004D30: @ jump table
	.4byte _08004D50 @ case 0
	.4byte _08004D84 @ case 1
	.4byte _08004E80 @ case 2
	.4byte _08004ED4 @ case 3
	.4byte _08004FE2 @ case 4
	.4byte _080050AC @ case 5
	.4byte _08005164 @ case 6
	.4byte _08005250 @ case 7
_08004D50:
	ldr r1, _08004D78 @ =0x040000D4
	ldr r0, _08004D7C @ =gUnknown_0801D704
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08004D80 @ =0x80000032
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0x90
	bl sub_8004338
	cmp r0, #0
	beq _08004D6C
	b _080052F0
_08004D6C:
	movs r0, #0x81
	movs r1, #0x90
	bl sub_8004434
	b _080052F0
	.align 2, 0
_08004D78: .4byte 0x040000D4
_08004D7C: .4byte gUnknown_0801D704
_08004D80: .4byte 0x80000032
_08004D84:
	ldr r1, _08004DB8 @ =0x040000D4
	ldr r0, _08004DBC @ =gUnknown_0801D768
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08004DC0 @ =0x80000014
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xaf
	bl sub_8004338
	cmp r0, #0
	beq _08004DC8
	bl LoadCurrentScriptIntoRam
	movs r0, #0
	movs r1, #0x94
	bl sub_8004338
	cmp r0, #0
	bne _08004DC4
	movs r0, #0xa8
	movs r1, #0x94
	bl sub_8004434
	b _080052F0
	.align 2, 0
_08004DB8: .4byte 0x040000D4
_08004DBC: .4byte gUnknown_0801D768
_08004DC0: .4byte 0x80000014
_08004DC4:
	movs r0, #5
	b _080051B6
_08004DC8:
	movs r0, #0
	movs r1, #0xaa
	bl sub_8004338
	cmp r0, #0
	beq _08004E10
	movs r0, #0
	movs r1, #0x93
	bl sub_8004338
	cmp r0, #0
	bne _08004DEA
	movs r0, #0xa3
	movs r1, #0x93
	bl sub_8004434
	b _080052F0
_08004DEA:
	movs r0, #0
	movs r1, #0xba
	bl sub_8004338
	cmp r0, #0
	beq _08004E04
	movs r0, #0
	movs r1, #0xbb
	bl sub_8004338
	cmp r0, #0
	beq _08004E04
	b _080052F0
_08004E04:
	ldr r2, _08004E0C @ =0x0000052C
	movs r0, #5
	adds r1, r2, #0
	b _08004E5C
	.align 2, 0
_08004E0C: .4byte 0x0000052C
_08004E10:
	movs r0, #0
	movs r1, #0xa6
	bl sub_8004338
	cmp r0, #0
	beq _08004E68
	movs r0, #0
	movs r1, #0xa7
	bl sub_8004338
	cmp r0, #0
	beq _08004E68
	movs r0, #0
	movs r1, #0xa5
	bl sub_8004338
	cmp r0, #0
	beq _08004E68
	movs r0, #0
	movs r1, #0xb3
	bl sub_8004338
	cmp r0, #0
	beq _08004E68
	movs r0, #0
	movs r1, #0x92
	bl sub_8004338
	cmp r0, #0
	bne _08004E56
	movs r0, #0x8a
	movs r1, #0x92
	bl sub_8004434
	b _080052F0
_08004E56:
	movs r0, #4
	movs r1, #0
	movs r2, #0
_08004E5C:
	bl sub_8004400
	movs r0, #0xd0
	bl sub_8013998
	b _080052F0
_08004E68:
	movs r0, #0
	movs r1, #0x91
	bl sub_8004338
	cmp r0, #0
	beq _08004E76
	b _080052F0
_08004E76:
	movs r0, #0x87
	movs r1, #0x91
	bl sub_8004434
	b _080052F0
_08004E80:
	ldr r1, _08004EA4 @ =0x040000D4
	ldr r0, _08004EA8 @ =gUnknown_0801DA88
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08004EAC @ =0x8000003C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0x95
	bl sub_8004338
	cmp r0, #0
	bne _08004EB4
	ldr r0, _08004EB0 @ =0x0000014F
	movs r1, #0x95
	bl sub_8004434
	b _080052F0
	.align 2, 0
_08004EA4: .4byte 0x040000D4
_08004EA8: .4byte gUnknown_0801DA88
_08004EAC: .4byte 0x8000003C
_08004EB0: .4byte 0x0000014F
_08004EB4:
	movs r0, #0
	movs r1, #0xb9
	bl sub_8004338
	cmp r0, #0
	beq _08004EC2
	b _080052F0
_08004EC2:
	movs r0, #0x16
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xd1
	bl sub_8013998
	b _080052F0
_08004ED4:
	ldr r1, _08004F04 @ =0x040000D4
	ldr r0, _08004F08 @ =gUnknown_0801D790
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08004F0C @ =0x80000046
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xaf
	bl sub_8004338
	cmp r0, #0
	beq _08004F1C
	movs r0, #0
	movs r1, #0x9a
	bl sub_8004338
	cmp r0, #0
	bne _08004F10
	movs r0, #0xee
	movs r1, #0x9a
	bl sub_8004434
	b _080052F0
	.align 2, 0
_08004F04: .4byte 0x040000D4
_08004F08: .4byte gUnknown_0801D790
_08004F0C: .4byte 0x80000046
_08004F10:
	movs r0, #0x14
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	b _080052F0
_08004F1C:
	movs r0, #0
	movs r1, #0xad
	bl sub_8004338
	cmp r0, #0
	beq _08004F58
	movs r0, #0
	movs r1, #0xae
	bl sub_8004338
	cmp r0, #0
	beq _08004F58
	movs r0, #0
	movs r1, #0x99
	bl sub_8004338
	cmp r0, #0
	bne _08004F4A
	movs r0, #0xea
	movs r1, #0x99
	bl sub_8004434
	b _080052F0
_08004F4A:
	ldr r2, _08004F54 @ =0x00000E48
	movs r0, #0x18
	adds r1, r2, #0
	b _080051BA
	.align 2, 0
_08004F54: .4byte 0x00000E48
_08004F58:
	movs r0, #0
	movs r1, #0xab
	bl sub_8004338
	cmp r0, #0
	beq _08004F90
	movs r0, #0
	movs r1, #0x98
	bl sub_8004338
	cmp r0, #0
	bne _08004F7A
	movs r0, #0xd7
	movs r1, #0x98
	bl sub_8004434
	b _080052F0
_08004F7A:
	ldr r2, _08004F8C @ =0x00001778
	movs r0, #0x18
	adds r1, r2, #0
	bl sub_8004400
	movs r0, #0x16
	bl sub_8013998
	b _080052F0
	.align 2, 0
_08004F8C: .4byte 0x00001778
_08004F90:
	movs r0, #0
	movs r1, #0xa9
	bl sub_8004338
	cmp r0, #0
	beq _08004FD2
	movs r0, #0
	movs r1, #0xa5
	bl sub_8004338
	cmp r0, #0
	beq _08004FD2
	movs r0, #0
	movs r1, #0xb3
	bl sub_8004338
	cmp r0, #0
	beq _08004FD2
	movs r0, #0
	movs r1, #0x97
	bl sub_8004338
	cmp r0, #0
	bne _08004FCA
	movs r0, #0xd6
	movs r1, #0x97
	bl sub_8004434
	b _080052F0
_08004FCA:
	movs r0, #0x1f
	bl sub_8013998
	b _080052F0
_08004FD2:
	movs r0, #0
	movs r1, #0x96
	bl sub_8004338
	cmp r0, #0
	bne _08004FE0
	b _080052F0
_08004FE0:
	b _08005032
_08004FE2:
	ldr r1, _08005014 @ =0x040000D4
	ldr r0, _08005018 @ =gUnknown_0801D81C
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _0800501C @ =0x80000028
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xaa
	bl sub_8004338
	cmp r0, #0
	beq _08005044
	movs r0, #0
	movs r1, #0x9d
	bl sub_8004338
	cmp r0, #0
	bne _08005024
	ldr r0, _08005020 @ =0x0000011F
	movs r1, #0x9d
	bl sub_8004434
	b _080052F0
	.align 2, 0
_08005014: .4byte 0x040000D4
_08005018: .4byte gUnknown_0801D81C
_0800501C: .4byte 0x80000028
_08005020: .4byte 0x0000011F
_08005024:
	movs r0, #0
	movs r1, #0xb9
	bl sub_8004338
	cmp r0, #0
	beq _08005032
	b _080052F0
_08005032:
	movs r0, #0x14
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xf2
	bl sub_8013998
	b _080052F0
_08005044:
	movs r0, #0
	movs r1, #0xa9
	bl sub_8004338
	cmp r0, #0
	beq _0800508E
	movs r0, #0
	movs r1, #0xa5
	bl sub_8004338
	cmp r0, #0
	beq _0800508E
	movs r0, #0
	movs r1, #0xb3
	bl sub_8004338
	cmp r0, #0
	beq _0800508E
	movs r0, #0
	movs r1, #0x97
	bl sub_8004338
	cmp r0, #0
	beq _0800508E
	movs r0, #0
	movs r1, #0x9c
	bl sub_8004338
	cmp r0, #0
	beq _08005082
	b _080052F0
_08005082:
	movs r0, #0x8f
	lsls r0, r0, #1
	movs r1, #0x9c
	bl sub_8004434
	b _080052F0
_0800508E:
	movs r0, #0
	movs r1, #0x9b
	bl sub_8004338
	cmp r0, #0
	beq _0800509C
	b _080052F0
_0800509C:
	ldr r0, _080050A8 @ =0x00000119
	movs r1, #0x9b
	bl sub_8004434
	b _080052F0
	.align 2, 0
_080050A8: .4byte 0x00000119
_080050AC:
	ldr r1, _08005100 @ =0x040000D4
	ldr r0, _08005104 @ =gUnknown_0801D86C
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08005108 @ =0x8000003C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xa9
	bl sub_8004338
	cmp r0, #0
	beq _08005128
	movs r0, #0
	movs r1, #0xa5
	bl sub_8004338
	cmp r0, #0
	beq _08005128
	movs r0, #0
	movs r1, #0xb3
	bl sub_8004338
	cmp r0, #0
	beq _08005128
	movs r0, #0
	movs r1, #0x98
	bl sub_8004338
	cmp r0, #0
	bne _08005156
	movs r0, #0
	movs r1, #0x9f
	bl sub_8004338
	cmp r0, #0
	bne _08005110
	ldr r0, _0800510C @ =0x00000143
	movs r1, #0x9f
	bl sub_8004434
	b _08005156
	.align 2, 0
_08005100: .4byte 0x040000D4
_08005104: .4byte gUnknown_0801D86C
_08005108: .4byte 0x8000003C
_0800510C: .4byte 0x00000143
_08005110:
	ldr r0, _08005124 @ =0x00004015
	movs r2, #0xb4
	lsls r2, r2, #3
	adds r1, r2, #0
	bl sub_8004400
	movs r0, #0xcf
	bl sub_8013998
	b _08005156
	.align 2, 0
_08005124: .4byte 0x00004015
_08005128:
	movs r0, #0
	movs r1, #0x9e
	bl sub_8004338
	cmp r0, #0
	bne _08005144
	ldr r0, _08005140 @ =0x0000012F
	movs r1, #0x9e
	bl sub_8004434
	b _08005156
	.align 2, 0
_08005140: .4byte 0x0000012F
_08005144:
	ldr r0, _08005160 @ =0x00004015
	movs r2, #0xb4
	lsls r2, r2, #3
	adds r1, r2, #0
	bl sub_8004400
	movs r0, #0xcf
	bl sub_8013998
_08005156:
	movs r0, #0xc
	bl sub_801480C
	b _080052F0
	.align 2, 0
_08005160: .4byte 0x00004015
_08005164:
	movs r0, #0
	movs r1, #0xad
	bl sub_8004338
	cmp r0, #0
	beq _080051C6
	movs r0, #0
	movs r1, #0xae
	bl sub_8004338
	cmp r0, #0
	beq _080051C6
	ldr r1, _080051A4 @ =0x040000D4
	ldr r0, _080051A8 @ =gUnknown_0801DA24
	str r0, [r1]
	ldr r0, _080051AC @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _080051B0 @ =0x80000032
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xa2
	bl sub_8004338
	cmp r0, #0
	bne _080051B4
	movs r0, #0x8c
	lsls r0, r0, #1
	movs r1, #0xa2
	bl sub_8004434
	b _080052F0
	.align 2, 0
_080051A4: .4byte 0x040000D4
_080051A8: .4byte gUnknown_0801DA24
_080051AC: .4byte gUnknown_03003C90
_080051B0: .4byte 0x80000032
_080051B4:
	movs r0, #0x13
_080051B6:
	movs r1, #0
	movs r2, #0
_080051BA:
	bl sub_8004400
	movs r0, #0xc
	bl sub_8013998
	b _080052F0
_080051C6:
	movs r0, #0
	movs r1, #0xa5
	bl sub_8004338
	cmp r0, #0
	beq _0800522E
	ldr r1, _0800520C @ =0x040000D4
	ldr r0, _08005210 @ =gUnknown_0801DA24
	str r0, [r1]
	ldr r0, _08005214 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08005218 @ =0x80000032
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xb3
	bl sub_8004338
	cmp r0, #0
	bne _080051F4
	movs r0, #0xa
	bl sub_801480C
_080051F4:
	movs r0, #0
	movs r1, #0xa1
	bl sub_8004338
	cmp r0, #0
	bne _0800521C
	movs r0, #0xf7
	movs r1, #0xa1
	bl sub_8004434
	b _080052F0
	.align 2, 0
_0800520C: .4byte 0x040000D4
_08005210: .4byte gUnknown_0801DA24
_08005214: .4byte gUnknown_03003C90
_08005218: .4byte 0x80000032
_0800521C:
	movs r0, #0x13
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xd7
	bl sub_8013998
	b _080052F0
_0800522E:
	movs r0, #0
	movs r1, #0xa0
	bl sub_8004338
	cmp r0, #0
	bne _08005242
	movs r0, #0xf2
	movs r1, #0xa0
	bl sub_8004434
_08005242:
	ldr r1, _08005248 @ =0x040000D4
	ldr r0, _0800524C @ =gUnknown_0801D9C0
	b _080052E4
	.align 2, 0
_08005248: .4byte 0x040000D4
_0800524C: .4byte gUnknown_0801D9C0
_08005250:
	movs r0, #0
	movs r1, #0xa9
	bl sub_8004338
	cmp r0, #0
	beq _080052CC
	movs r0, #0
	movs r1, #0xa5
	bl sub_8004338
	cmp r0, #0
	beq _080052CC
	movs r0, #0
	movs r1, #0xb3
	bl sub_8004338
	cmp r0, #0
	beq _080052CC
	movs r0, #0
	movs r1, #0x97
	bl sub_8004338
	cmp r0, #0
	beq _080052CC
	movs r0, #0
	movs r1, #0xb5
	bl sub_8004338
	cmp r0, #0
	bne _08005292
	movs r0, #0xe
	bl sub_801480C
_08005292:
	ldr r1, _080052B8 @ =0x040000D4
	ldr r0, _080052BC @ =gUnknown_0801D948
	str r0, [r1]
	ldr r0, _080052C0 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _080052C4 @ =0x8000003C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xa4
	bl sub_8004338
	cmp r0, #0
	bne _080052F0
	ldr r0, _080052C8 @ =0x0000014B
	movs r1, #0xa4
	bl sub_8004434
	b _080052F0
	.align 2, 0
_080052B8: .4byte 0x040000D4
_080052BC: .4byte gUnknown_0801D948
_080052C0: .4byte gUnknown_03003C90
_080052C4: .4byte 0x8000003C
_080052C8: .4byte 0x0000014B
_080052CC:
	movs r0, #0
	movs r1, #0xa3
	bl sub_8004338
	cmp r0, #0
	bne _080052E0
	ldr r0, _080052F8 @ =0x00000145
	movs r1, #0xa3
	bl sub_8004434
_080052E0:
	ldr r1, _080052FC @ =0x040000D4
	ldr r0, _08005300 @ =gUnknown_0801D8E4
_080052E4:
	str r0, [r1]
	ldr r0, _08005304 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08005308 @ =0x80000032
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080052F0:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080052F8: .4byte 0x00000145
_080052FC: .4byte 0x040000D4
_08005300: .4byte gUnknown_0801D8E4
_08005304: .4byte gUnknown_03003C90
_08005308: .4byte 0x80000032

	thumb_func_start nullsub_9
nullsub_9: @ 0x0800530C
	bx lr
	.align 2, 0

	thumb_func_start sub_8005310
sub_8005310: @ 0x08005310
	push {lr}
	ldr r2, _0800534C @ =0x040000D4
	ldr r1, _08005350 @ =gUnknown_0801E220
	str r1, [r2]
	ldr r1, _08005354 @ =gMain+0x120
	str r1, [r2, #4]
	ldr r1, _08005358 @ =0x80000028
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _0800535C @ =gUnknown_0801E018
	str r1, [r2]
	ldr r1, _08005360 @ =gUnknown_03002920
	str r1, [r2, #4]
	ldr r1, _08005364 @ =0x80000104
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08005368 @ =gUnknown_0801E014
	str r1, [r2]
	ldr r1, _0800536C @ =gUnknown_03003B70
	str r1, [r2, #4]
	ldr r1, _08005370 @ =0x80000002
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0xb2
	movs r1, #0
	strb r1, [r0]
	bl sub_8017910
	pop {r0}
	bx r0
	.align 2, 0
_0800534C: .4byte 0x040000D4
_08005350: .4byte gUnknown_0801E220
_08005354: .4byte gMain+0x120
_08005358: .4byte 0x80000028
_0800535C: .4byte gUnknown_0801E018
_08005360: .4byte gUnknown_03002920
_08005364: .4byte 0x80000104
_08005368: .4byte gUnknown_0801E014
_0800536C: .4byte gUnknown_03003B70
_08005370: .4byte 0x80000002

	thumb_func_start sub_8005374
sub_8005374: @ 0x08005374
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _080053A4 @ =0x0000FFFF
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _080053A8 @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	ldr r3, _080053AC @ =gUnknown_03003C90
	str r3, [r2, #4]
	ldr r1, _080053B0 @ =0x810000F0
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0xe
	bls _0800539A
	b _080059CA
_0800539A:
	lsls r0, r0, #2
	ldr r1, _080053B4 @ =_080053B8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080053A4: .4byte 0x0000FFFF
_080053A8: .4byte 0x040000D4
_080053AC: .4byte gUnknown_03003C90
_080053B0: .4byte 0x810000F0
_080053B4: .4byte _080053B8
_080053B8: @ jump table
	.4byte _080053F4 @ case 0
	.4byte _08005458 @ case 1
	.4byte _080059CA @ case 2
	.4byte _080059CA @ case 3
	.4byte _080059CA @ case 4
	.4byte _080059CA @ case 5
	.4byte _080059CA @ case 6
	.4byte _080059CA @ case 7
	.4byte _0800555C @ case 8
	.4byte _08005606 @ case 9
	.4byte _080056CC @ case 10
	.4byte _0800575C @ case 11
	.4byte _0800582C @ case 12
	.4byte _080058A8 @ case 13
	.4byte _0800599C @ case 14
_080053F4:
	ldr r1, _08005430 @ =0x040000D4
	ldr r0, _08005434 @ =gUnknown_0801E270
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08005438 @ =0x80000032
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xab
	bl sub_8004338
	cmp r0, #0
	bne _08005410
	b _080059CA
_08005410:
	movs r0, #0
	movs r1, #0x91
	bl sub_8004338
	cmp r0, #0
	bne _08005440
	ldr r2, _0800543C @ =0x00000AF8
	movs r0, #4
	adds r1, r2, #0
	bl sub_8004400
	movs r0, #0x87
	movs r1, #0x91
	bl sub_8004434
	b _080059CA
	.align 2, 0
_08005430: .4byte 0x040000D4
_08005434: .4byte gUnknown_0801E270
_08005438: .4byte 0x80000032
_0800543C: .4byte 0x00000AF8
_08005440:
	ldr r2, _08005454 @ =0x000012D0
	movs r0, #4
	adds r1, r2, #0
	bl sub_8004400
	movs r0, #0xcc
	bl sub_8013998
	b _080059CA
	.align 2, 0
_08005454: .4byte 0x000012D0
_08005458:
	movs r0, #0
	movs r1, #0xb5
	bl sub_8004338
	cmp r0, #0
	beq _080054C0
	movs r0, #0
	movs r1, #0xb6
	bl sub_8004338
	cmp r0, #0
	beq _080054C0
	movs r0, #0
	movs r1, #0x94
	bl sub_8004338
	cmp r0, #0
	bne _0800548E
	movs r0, #0xad
	movs r1, #0x94
	bl sub_8004434
	movs r0, #1
	movs r1, #1
	bl sub_800EAC8
	b _0800549E
_0800548E:
	ldr r2, _080054AC @ =0x00001FEC
	movs r0, #0x1d
	adds r1, r2, #0
	bl sub_8004400
	movs r0, #0xd0
	bl sub_8013998
_0800549E:
	ldr r1, _080054B0 @ =0x040000D4
	ldr r0, _080054B4 @ =gUnknown_0801E2D4
	str r0, [r1]
	ldr r0, _080054B8 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _080054BC @ =0x80000014
	b _080059C6
	.align 2, 0
_080054AC: .4byte 0x00001FEC
_080054B0: .4byte 0x040000D4
_080054B4: .4byte gUnknown_0801E2D4
_080054B8: .4byte gUnknown_03003C90
_080054BC: .4byte 0x80000014
_080054C0:
	movs r0, #0
	movs r1, #0xac
	bl sub_8004338
	cmp r0, #0
	beq _08005500
	movs r0, #0
	movs r1, #0x93
	bl sub_8004338
	cmp r0, #0
	bne _080054E0
	movs r0, #0xaa
	movs r1, #0x93
	bl sub_8004434
_080054E0:
	ldr r1, _080054F0 @ =0x040000D4
	ldr r0, _080054F4 @ =gUnknown_0801E2FC
	str r0, [r1]
	ldr r0, _080054F8 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _080054FC @ =0x80000014
	b _080059C6
	.align 2, 0
_080054F0: .4byte 0x040000D4
_080054F4: .4byte gUnknown_0801E2FC
_080054F8: .4byte gUnknown_03003C90
_080054FC: .4byte 0x80000014
_08005500:
	bl LoadCurrentScriptIntoRam
	movs r0, #0
	movs r1, #0x92
	bl sub_8004338
	cmp r0, #0
	bne _0800551A
	movs r0, #0x99
	movs r1, #0x92
	bl sub_8004434
	b _0800553E
_0800551A:
	movs r0, #0x1d
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0
	movs r1, #0xab
	bl sub_8004338
	cmp r0, #0
	beq _08005538
	movs r0, #0xd0
	bl sub_8013998
	b _0800553E
_08005538:
	movs r0, #0xd7
	bl sub_8013998
_0800553E:
	ldr r1, _0800554C @ =0x040000D4
	ldr r0, _08005550 @ =gUnknown_0801E2D4
	str r0, [r1]
	ldr r0, _08005554 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08005558 @ =0x80000014
	b _080059C6
	.align 2, 0
_0800554C: .4byte 0x040000D4
_08005550: .4byte gUnknown_0801E2D4
_08005554: .4byte gUnknown_03003C90
_08005558: .4byte 0x80000014
_0800555C:
	ldr r1, _08005598 @ =0x040000D4
	ldr r0, _0800559C @ =gUnknown_0801E324
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _080055A0 @ =0x80000050
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xb9
	bl sub_8004338
	cmp r0, #0
	beq _080055A4
	movs r0, #0
	movs r1, #0xc6
	movs r2, #0
	bl sub_80042FC
	movs r0, #0
	movs r1, #0x97
	bl sub_8004338
	cmp r0, #0
	bne _080055FE
	movs r0, #0xcd
	movs r1, #0x97
	bl sub_8004434
	b _080059CA
	.align 2, 0
_08005598: .4byte 0x040000D4
_0800559C: .4byte gUnknown_0801E324
_080055A0: .4byte 0x80000050
_080055A4:
	movs r0, #0
	movs r1, #0xae
	bl sub_8004338
	cmp r0, #0
	beq _080055DE
	movs r0, #0
	movs r1, #0xac
	bl sub_8004338
	cmp r0, #0
	beq _080055DE
	movs r0, #0
	movs r1, #0xc6
	movs r2, #1
	bl sub_80042FC
	movs r0, #0
	movs r1, #0x96
	bl sub_8004338
	cmp r0, #0
	beq _080055D4
	b _080057D4
_080055D4:
	movs r0, #0xc7
	movs r1, #0x96
	bl sub_8004434
	b _080059CA
_080055DE:
	movs r0, #0
	movs r1, #0xc6
	movs r2, #0
	bl sub_80042FC
	movs r0, #0
	movs r1, #0x95
	bl sub_8004338
	cmp r0, #0
	bne _080055FE
	movs r0, #0xc6
	movs r1, #0x95
	bl sub_8004434
	b _080059CA
_080055FE:
	movs r0, #0x1f
	bl sub_8013998
	b _080059CA
_08005606:
	movs r0, #0
	movs r1, #0xba
	bl sub_8004338
	cmp r0, #0
	beq _08005654
	movs r0, #0
	movs r1, #0xc8
	movs r2, #1
	bl sub_80042FC
	movs r0, #0
	movs r1, #0x9a
	bl sub_8004338
	cmp r0, #0
	bne _08005632
	movs r0, #0xea
	movs r1, #0x9a
	bl sub_8004434
	b _08005642
_08005632:
	ldr r2, _08005648 @ =0x000010F0
	movs r0, #0x1c
	adds r1, r2, #0
	bl sub_8004400
	movs r0, #0xcd
	bl sub_8013998
_08005642:
	ldr r1, _0800564C @ =0x040000D4
	ldr r0, _08005650 @ =gUnknown_0801E464
	b _080059BE
	.align 2, 0
_08005648: .4byte 0x000010F0
_0800564C: .4byte 0x040000D4
_08005650: .4byte gUnknown_0801E464
_08005654:
	movs r0, #0
	movs r1, #0xb9
	bl sub_8004338
	cmp r0, #0
	beq _0800568C
	movs r0, #0
	movs r1, #0xc8
	movs r2, #0
	bl sub_80042FC
	movs r0, #0
	movs r1, #0x99
	bl sub_8004338
	cmp r0, #0
	bne _0800567E
	movs r0, #0xe9
	movs r1, #0x99
	bl sub_8004434
_0800567E:
	ldr r1, _08005684 @ =0x040000D4
	ldr r0, _08005688 @ =gUnknown_0801E52C
	b _080059BE
	.align 2, 0
_08005684: .4byte 0x040000D4
_08005688: .4byte gUnknown_0801E52C
_0800568C:
	movs r0, #0
	movs r1, #0xc8
	movs r2, #1
	bl sub_80042FC
	movs r0, #0
	movs r1, #0x98
	bl sub_8004338
	cmp r0, #0
	bne _080056AC
	movs r0, #0xdb
	movs r1, #0x98
	bl sub_8004434
	b _080056BC
_080056AC:
	movs r0, #0x1c
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xcd
	bl sub_8013998
_080056BC:
	ldr r1, _080056C4 @ =0x040000D4
	ldr r0, _080056C8 @ =gUnknown_0801E464
	b _080059BE
	.align 2, 0
_080056C4: .4byte 0x040000D4
_080056C8: .4byte gUnknown_0801E464
_080056CC:
	movs r0, #0
	movs r1, #0xba
	bl sub_8004338
	cmp r0, #0
	beq _08005714
	movs r0, #0
	movs r1, #0x9c
	bl sub_8004338
	cmp r0, #0
	bne _080056EE
	movs r0, #0xda
	movs r1, #0x9c
	bl sub_8004434
	b _080056F4
_080056EE:
	movs r0, #0x1f
	bl sub_8013998
_080056F4:
	ldr r1, _08005704 @ =0x040000D4
	ldr r0, _08005708 @ =gUnknown_0801E414
	str r0, [r1]
	ldr r0, _0800570C @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08005710 @ =0x80000028
	b _080059C6
	.align 2, 0
_08005704: .4byte 0x040000D4
_08005708: .4byte gUnknown_0801E414
_0800570C: .4byte gUnknown_03003C90
_08005710: .4byte 0x80000028
_08005714:
	movs r0, #0
	movs r1, #0x9b
	bl sub_8004338
	cmp r0, #0
	bne _0800572A
	movs r0, #0xce
	movs r1, #0x9b
	bl sub_8004434
	b _0800573A
_0800572A:
	ldr r2, _08005748 @ =0x0000185C
	movs r0, #0xa
	adds r1, r2, #0
	bl sub_8004400
	movs r0, #0x1f
	bl sub_8013998
_0800573A:
	ldr r1, _0800574C @ =0x040000D4
	ldr r0, _08005750 @ =gUnknown_0801E3C4
	str r0, [r1]
	ldr r0, _08005754 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08005758 @ =0x80000028
	b _080059C6
	.align 2, 0
_08005748: .4byte 0x0000185C
_0800574C: .4byte 0x040000D4
_08005750: .4byte gUnknown_0801E3C4
_08005754: .4byte gUnknown_03003C90
_08005758: .4byte 0x80000028
_0800575C:
	ldr r1, _08005798 @ =0x040000D4
	ldr r0, _0800579C @ =gUnknown_0801E7FC
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _080057A0 @ =0x80000096
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xb9
	bl sub_8004338
	cmp r0, #0
	beq _080057E6
	movs r0, #0
	movs r1, #0xc7
	movs r2, #1
	bl sub_80042FC
	movs r0, #0
	movs r1, #0x9e
	bl sub_8004338
	cmp r0, #0
	bne _080057A4
	movs r0, #0xf9
	movs r1, #0x9e
	bl sub_8004434
	b _080059CA
	.align 2, 0
_08005798: .4byte 0x040000D4
_0800579C: .4byte gUnknown_0801E7FC
_080057A0: .4byte 0x80000096
_080057A4:
	movs r0, #0
	movs r1, #0xba
	bl sub_8004338
	cmp r0, #0
	beq _080057B2
	b _080059CA
_080057B2:
	movs r0, #0
	movs r1, #0xc9
	bl sub_8004338
	cmp r0, #0
	beq _080057D4
	ldr r2, _080057D0 @ =0x00001364
	movs r0, #0x1e
	adds r1, r2, #0
	bl sub_8004400
	movs r0, #0xda
	bl sub_8013998
	b _080059CA
	.align 2, 0
_080057D0: .4byte 0x00001364
_080057D4:
	movs r0, #0x1e
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xd1
	bl sub_8013998
	b _080059CA
_080057E6:
	movs r0, #0
	movs r1, #0xc7
	movs r2, #0
	bl sub_80042FC
	movs r0, #0
	movs r1, #0x9d
	bl sub_8004338
	cmp r0, #0
	bne _08005806
	movs r0, #0xf7
	movs r1, #0x9d
	bl sub_8004434
	b _0800580C
_08005806:
	movs r0, #0xd7
	bl sub_8013998
_0800580C:
	ldr r1, _0800581C @ =0x040000D4
	ldr r0, _08005820 @ =gUnknown_0801E7FC
	str r0, [r1]
	ldr r0, _08005824 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08005828 @ =0x80000096
	b _080059C6
	.align 2, 0
_0800581C: .4byte 0x040000D4
_08005820: .4byte gUnknown_0801E7FC
_08005824: .4byte gUnknown_03003C90
_08005828: .4byte 0x80000096
_0800582C:
	movs r0, #0
	movs r1, #0xb6
	bl sub_8004338
	cmp r0, #0
	beq _08005848
	ldr r1, _08005840 @ =0x040000D4
	ldr r0, _08005844 @ =gUnknown_0801E6F8
	b _0800584C
	.align 2, 0
_08005840: .4byte 0x040000D4
_08005844: .4byte gUnknown_0801E6F8
_08005848:
	ldr r1, _0800587C @ =0x040000D4
	ldr r0, _08005880 @ =gUnknown_0801E5F4
_0800584C:
	str r0, [r1]
	ldr r0, _08005884 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08005888 @ =0x80000082
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xb9
	bl sub_8004338
	cmp r0, #0
	beq _0800588C
	movs r0, #0
	movs r1, #0xa0
	bl sub_8004338
	cmp r0, #0
	bne _080058A0
	movs r0, #0xf5
	movs r1, #0xa0
	bl sub_8004434
	b _080058A0
	.align 2, 0
_0800587C: .4byte 0x040000D4
_08005880: .4byte gUnknown_0801E5F4
_08005884: .4byte gUnknown_03003C90
_08005888: .4byte 0x80000082
_0800588C:
	movs r0, #0
	movs r1, #0x9f
	bl sub_8004338
	cmp r0, #0
	bne _080058A0
	movs r0, #0xf1
	movs r1, #0x9f
	bl sub_8004434
_080058A0:
	movs r0, #0x19
	bl sub_801480C
	b _080059CA
_080058A8:
	movs r0, #0
	movs r1, #0xbb
	bl sub_8004338
	cmp r0, #0
	beq _080058D8
	movs r0, #0
	movs r1, #0xa4
	bl sub_8004338
	cmp r0, #0
	bne _080058CA
	movs r0, #0x8c
	lsls r0, r0, #1
	movs r1, #0xa4
	bl sub_8004434
_080058CA:
	ldr r1, _080058D0 @ =0x040000D4
	ldr r0, _080058D4 @ =gUnknown_0801E928
	b _080059BE
	.align 2, 0
_080058D0: .4byte 0x040000D4
_080058D4: .4byte gUnknown_0801E928
_080058D8:
	movs r0, #0
	movs r1, #0xba
	bl sub_8004338
	cmp r0, #0
	beq _08005920
	movs r0, #0
	movs r1, #0xa3
	bl sub_8004338
	cmp r0, #0
	bne _080058FC
	movs r0, #0x89
	lsls r0, r0, #1
	movs r1, #0xa3
	bl sub_8004434
	b _0800590C
_080058FC:
	ldr r2, _08005914 @ =0x00000784
	movs r0, #0x1f
	adds r1, r2, #0
	bl sub_8004400
	movs r0, #0xda
	bl sub_8013998
_0800590C:
	ldr r1, _08005918 @ =0x040000D4
	ldr r0, _0800591C @ =gUnknown_0801E9F0
	b _080059BE
	.align 2, 0
_08005914: .4byte 0x00000784
_08005918: .4byte 0x040000D4
_0800591C: .4byte gUnknown_0801E9F0
_08005920:
	movs r0, #0
	movs r1, #0xaf
	bl sub_8004338
	cmp r0, #0
	beq _08005978
	movs r0, #0
	movs r1, #0xb0
	bl sub_8004338
	cmp r0, #0
	beq _08005978
	movs r0, #0
	movs r1, #0xa2
	bl sub_8004338
	cmp r0, #0
	bne _08005954
	ldr r0, _08005950 @ =0x00000103
	movs r1, #0xa2
	bl sub_8004434
	b _08005964
	.align 2, 0
_08005950: .4byte 0x00000103
_08005954:
	ldr r2, _0800596C @ =0x00000784
	movs r0, #0x1f
	adds r1, r2, #0
	bl sub_8004400
	movs r0, #0xda
	bl sub_8013998
_08005964:
	ldr r1, _08005970 @ =0x040000D4
	ldr r0, _08005974 @ =gUnknown_0801E9F0
	b _080059BE
	.align 2, 0
_0800596C: .4byte 0x00000784
_08005970: .4byte 0x040000D4
_08005974: .4byte gUnknown_0801E9F0
_08005978:
	movs r0, #0
	movs r1, #0xa1
	bl sub_8004338
	cmp r0, #0
	bne _0800598E
	movs r0, #0x81
	lsls r0, r0, #1
	movs r1, #0xa1
	bl sub_8004434
_0800598E:
	ldr r1, _08005994 @ =0x040000D4
	ldr r0, _08005998 @ =gUnknown_0801E928
	b _080059BE
	.align 2, 0
_08005994: .4byte 0x040000D4
_08005998: .4byte gUnknown_0801E928
_0800599C:
	movs r0, #0
	movs r1, #0xa5
	bl sub_8004338
	cmp r0, #0
	bne _080059B4
	movs r0, #0x8d
	lsls r0, r0, #1
	movs r1, #0xa5
	bl sub_8004434
	b _080059BA
_080059B4:
	movs r0, #0xd7
	bl sub_8013998
_080059BA:
	ldr r1, _080059D0 @ =0x040000D4
	ldr r0, _080059D4 @ =gUnknown_0801EAB8
_080059BE:
	str r0, [r1]
	ldr r0, _080059D8 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _080059DC @ =0x80000064
_080059C6:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080059CA:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080059D0: .4byte 0x040000D4
_080059D4: .4byte gUnknown_0801EAB8
_080059D8: .4byte gUnknown_03003C90
_080059DC: .4byte 0x80000064

	thumb_func_start sub_80059E0
sub_80059E0: @ 0x080059E0
	push {lr}
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _08005A1C
	movs r0, #0
	movs r1, #0xb7
	bl sub_8004338
	cmp r0, #0
	bne _08005A1C
	movs r0, #0
	movs r1, #0xb6
	bl sub_8004338
	cmp r0, #0
	beq _08005A1C
	ldr r1, _08005A20 @ =0x040000D4
	ldr r0, _08005A24 @ =gUnknown_0801E6F8
	str r0, [r1]
	ldr r0, _08005A28 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08005A2C @ =0x80000082
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xb7
	movs r2, #1
	bl sub_80042FC
_08005A1C:
	pop {r0}
	bx r0
	.align 2, 0
_08005A20: .4byte 0x040000D4
_08005A24: .4byte gUnknown_0801E6F8
_08005A28: .4byte gUnknown_03003C90
_08005A2C: .4byte 0x80000082

	thumb_func_start sub_8005A30
sub_8005A30: @ 0x08005A30
	ldr r2, _08005A64 @ =0x040000D4
	ldr r1, _08005A68 @ =gUnknown_0801F1EC
	str r1, [r2]
	ldr r1, _08005A6C @ =gMain+0x120
	str r1, [r2, #4]
	ldr r1, _08005A70 @ =0x80000028
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08005A74 @ =gUnknown_0801EFE4
	str r1, [r2]
	ldr r1, _08005A78 @ =gUnknown_03002920
	str r1, [r2, #4]
	ldr r1, _08005A7C @ =0x80000104
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08005A80 @ =gUnknown_0801EFDC
	str r1, [r2]
	ldr r1, _08005A84 @ =gUnknown_03003B70
	str r1, [r2, #4]
	ldr r1, _08005A88 @ =0x80000004
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0xb2
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_08005A64: .4byte 0x040000D4
_08005A68: .4byte gUnknown_0801F1EC
_08005A6C: .4byte gMain+0x120
_08005A70: .4byte 0x80000028
_08005A74: .4byte gUnknown_0801EFE4
_08005A78: .4byte gUnknown_03002920
_08005A7C: .4byte 0x80000104
_08005A80: .4byte gUnknown_0801EFDC
_08005A84: .4byte gUnknown_03003B70
_08005A88: .4byte 0x80000004

	thumb_func_start sub_8005A8C
sub_8005A8C: @ 0x08005A8C
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _08005ABC @ =0x0000FFFF
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _08005AC0 @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	ldr r3, _08005AC4 @ =gUnknown_03003C90
	str r3, [r2, #4]
	ldr r1, _08005AC8 @ =0x810000F0
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0xe
	bls _08005AB2
	b _08005FB4
_08005AB2:
	lsls r0, r0, #2
	ldr r1, _08005ACC @ =_08005AD0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005ABC: .4byte 0x0000FFFF
_08005AC0: .4byte 0x040000D4
_08005AC4: .4byte gUnknown_03003C90
_08005AC8: .4byte 0x810000F0
_08005ACC: .4byte _08005AD0
_08005AD0: @ jump table
	.4byte _08005B0C @ case 0
	.4byte _08005B4C @ case 1
	.4byte _08005FB4 @ case 2
	.4byte _08005FB4 @ case 3
	.4byte _08005FB4 @ case 4
	.4byte _08005FB4 @ case 5
	.4byte _08005FB4 @ case 6
	.4byte _08005FB4 @ case 7
	.4byte _08005BEC @ case 8
	.4byte _08005C34 @ case 9
	.4byte _08005CC4 @ case 10
	.4byte _08005D46 @ case 11
	.4byte _08005E78 @ case 12
	.4byte _08005EC2 @ case 13
	.4byte _08005F36 @ case 14
_08005B0C:
	ldr r1, _08005B3C @ =0x040000D4
	ldr r0, _08005B40 @ =gUnknown_0801F23C
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08005B44 @ =0x80000032
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xd7
	bl sub_8004338
	cmp r0, #0
	bne _08005B28
	b _08005FB4
_08005B28:
	ldr r2, _08005B48 @ =0x000025E4
	movs r0, #4
	adds r1, r2, #0
	bl sub_8004400
	movs r0, #0xcc
	bl sub_8013998
	b _08005FB4
	.align 2, 0
_08005B3C: .4byte 0x040000D4
_08005B40: .4byte gUnknown_0801F23C
_08005B44: .4byte 0x80000032
_08005B48: .4byte 0x000025E4
_08005B4C:
	movs r0, #0
	movs r1, #0xd4
	bl sub_8004338
	cmp r0, #0
	beq _08005BA4
	movs r0, #0
	movs r1, #0xd5
	bl sub_8004338
	cmp r0, #0
	beq _08005BA4
	movs r0, #0
	movs r1, #0xd6
	bl sub_8004338
	cmp r0, #0
	beq _08005BA4
	movs r0, #0
	movs r1, #0xd9
	bl sub_8004338
	cmp r0, #0
	bne _08005B84
	movs r0, #0xae
	movs r1, #0xd9
	bl sub_8004434
_08005B84:
	ldr r1, _08005B94 @ =0x040000D4
	ldr r0, _08005B98 @ =gUnknown_0801F2C8
	str r0, [r1]
	ldr r0, _08005B9C @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08005BA0 @ =0x80000014
	b _08005E62
	.align 2, 0
_08005B94: .4byte 0x040000D4
_08005B98: .4byte gUnknown_0801F2C8
_08005B9C: .4byte gUnknown_03003C90
_08005BA0: .4byte 0x80000014
_08005BA4:
	movs r0, #0
	movs r1, #0xd8
	bl sub_8004338
	cmp r0, #0
	bne _08005BBA
	movs r0, #0x9b
	movs r1, #0xd8
	bl sub_8004434
	b _08005BCA
_08005BBA:
	ldr r2, _08005BD8 @ =0x00001FEC
	movs r0, #0x1d
	adds r1, r2, #0
	bl sub_8004400
	movs r0, #0xd0
	bl sub_8013998
_08005BCA:
	ldr r1, _08005BDC @ =0x040000D4
	ldr r0, _08005BE0 @ =gUnknown_0801F2A0
	str r0, [r1]
	ldr r0, _08005BE4 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08005BE8 @ =0x80000014
	b _08005E62
	.align 2, 0
_08005BD8: .4byte 0x00001FEC
_08005BDC: .4byte 0x040000D4
_08005BE0: .4byte gUnknown_0801F2A0
_08005BE4: .4byte gUnknown_03003C90
_08005BE8: .4byte 0x80000014
_08005BEC:
	ldr r1, _08005C10 @ =0x040000D4
	ldr r0, _08005C14 @ =gUnknown_0801F2F0
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08005C18 @ =0x80000050
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xda
	bl sub_8004338
	cmp r0, #0
	bne _08005C1C
	movs r0, #0xb1
	movs r1, #0xda
	bl sub_8004434
	b _08005FB4
	.align 2, 0
_08005C10: .4byte 0x040000D4
_08005C14: .4byte gUnknown_0801F2F0
_08005C18: .4byte 0x80000050
_08005C1C:
	ldr r2, _08005C30 @ =0x000008A4
	movs r0, #0x1e
	adds r1, r2, #0
	bl sub_8004400
	movs r0, #0xda
	bl sub_8013998
	b _08005FB4
	.align 2, 0
_08005C30: .4byte 0x000008A4
_08005C34:
	movs r0, #0
	movs r1, #0xd3
	bl sub_8004338
	cmp r0, #0
	beq _08005C90
	ldr r1, _08005C68 @ =0x040000D4
	ldr r0, _08005C6C @ =gUnknown_0801F458
	str r0, [r1]
	ldr r0, _08005C70 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08005C74 @ =0x80000064
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xdc
	bl sub_8004338
	cmp r0, #0
	bne _08005C78
	movs r0, #0xb7
	movs r1, #0xdc
	bl sub_8004434
	b _08005FB4
	.align 2, 0
_08005C68: .4byte 0x040000D4
_08005C6C: .4byte gUnknown_0801F458
_08005C70: .4byte gUnknown_03003C90
_08005C74: .4byte 0x80000064
_08005C78:
	ldr r2, _08005C8C @ =0x000010F0
	movs r0, #0x1c
	adds r1, r2, #0
	bl sub_8004400
	movs r0, #0xcd
	bl sub_8013998
	b _08005FB4
	.align 2, 0
_08005C8C: .4byte 0x000010F0
_08005C90:
	movs r0, #0
	movs r1, #0xdb
	bl sub_8004338
	cmp r0, #0
	bne _08005CA4
	movs r0, #0xb6
	movs r1, #0xdb
	bl sub_8004434
_08005CA4:
	ldr r1, _08005CB4 @ =0x040000D4
	ldr r0, _08005CB8 @ =gUnknown_0801F390
	str r0, [r1]
	ldr r0, _08005CBC @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08005CC0 @ =0x80000064
	b _08005E62
	.align 2, 0
_08005CB4: .4byte 0x040000D4
_08005CB8: .4byte gUnknown_0801F390
_08005CBC: .4byte gUnknown_03003C90
_08005CC0: .4byte 0x80000064
_08005CC4:
	ldr r1, _08005D00 @ =0x040000D4
	ldr r0, _08005D04 @ =gUnknown_0801F520
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08005D08 @ =0x80000028
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xd1
	bl sub_8004338
	cmp r0, #0
	beq _08005D28
	movs r0, #0
	movs r1, #0xde
	bl sub_8004338
	cmp r0, #0
	bne _08005D0C
	movs r0, #0xa
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xf4
	movs r1, #0xde
	bl sub_8004434
	b _08005FB4
	.align 2, 0
_08005D00: .4byte 0x040000D4
_08005D04: .4byte gUnknown_0801F520
_08005D08: .4byte 0x80000028
_08005D0C:
	movs r0, #0
	movs r1, #0xd2
	bl sub_8004338
	cmp r0, #0
	bne _08005D3E
	ldr r2, _08005D24 @ =0x00003628
	movs r0, #0xf
	adds r1, r2, #0
	bl sub_8004400
	b _08005D3E
	.align 2, 0
_08005D24: .4byte 0x00003628
_08005D28:
	movs r0, #0
	movs r1, #0xdd
	bl sub_8004338
	cmp r0, #0
	bne _08005D3E
	movs r0, #0xf3
	movs r1, #0xdd
	bl sub_8004434
	b _08005FB4
_08005D3E:
	movs r0, #0x1f
	bl sub_8013998
	b _08005FB4
_08005D46:
	movs r0, #0
	movs r1, #0xd4
	bl sub_8004338
	cmp r0, #0
	beq _08005DB4
	movs r0, #0
	movs r1, #0xd5
	bl sub_8004338
	cmp r0, #0
	beq _08005DB4
	movs r0, #0
	movs r1, #0xd6
	bl sub_8004338
	cmp r0, #0
	beq _08005DB4
	movs r0, #0xb
	movs r1, #1
	bl sub_800EAC8
	movs r0, #0
	movs r1, #0xf5
	movs r2, #1
	bl sub_80042FC
	movs r0, #0
	movs r1, #0xe2
	bl sub_8004338
	cmp r0, #0
	bne _08005D92
	movs r0, #0xdd
	movs r1, #0xe2
	bl sub_8004434
	b _08005DA2
_08005D92:
	ldr r2, _08005DA8 @ =0x00000784
	movs r0, #0x1f
	adds r1, r2, #0
	bl sub_8004400
	movs r0, #0xda
	bl sub_8013998
_08005DA2:
	ldr r1, _08005DAC @ =0x040000D4
	ldr r0, _08005DB0 @ =gUnknown_0801F688
	b _08005E5A
	.align 2, 0
_08005DA8: .4byte 0x00000784
_08005DAC: .4byte 0x040000D4
_08005DB0: .4byte gUnknown_0801F688
_08005DB4:
	movs r0, #0
	movs r1, #0xd1
	bl sub_8004338
	cmp r0, #0
	beq _08005DE0
	movs r0, #0
	movs r1, #0xf5
	movs r2, #0
	bl sub_80042FC
	movs r0, #0
	movs r1, #0xe1
	bl sub_8004338
	cmp r0, #0
	bne _08005E56
	movs r0, #0xdc
	movs r1, #0xe1
	bl sub_8004434
	b _08005E56
_08005DE0:
	movs r0, #0
	movs r1, #0xd0
	bl sub_8004338
	cmp r0, #0
	beq _08005E30
	movs r0, #0
	movs r1, #0xf5
	movs r2, #1
	bl sub_80042FC
	movs r0, #0
	movs r1, #0xe0
	bl sub_8004338
	cmp r0, #0
	bne _08005E0C
	movs r0, #0xce
	movs r1, #0xe0
	bl sub_8004434
	b _08005E1C
_08005E0C:
	ldr r2, _08005E24 @ =0x00000784
	movs r0, #0x1f
	adds r1, r2, #0
	bl sub_8004400
	movs r0, #0xda
	bl sub_8013998
_08005E1C:
	ldr r1, _08005E28 @ =0x040000D4
	ldr r0, _08005E2C @ =gUnknown_0801F688
	b _08005E5A
	.align 2, 0
_08005E24: .4byte 0x00000784
_08005E28: .4byte 0x040000D4
_08005E2C: .4byte gUnknown_0801F688
_08005E30:
	movs r0, #0
	movs r1, #0xf5
	movs r2, #0
	bl sub_80042FC
	movs r0, #0
	movs r1, #0xdf
	bl sub_8004338
	cmp r0, #0
	bne _08005E50
	movs r0, #0xcd
	movs r1, #0xdf
	bl sub_8004434
	b _08005E56
_08005E50:
	movs r0, #0xd7
	bl sub_8013998
_08005E56:
	ldr r1, _08005E68 @ =0x040000D4
	ldr r0, _08005E6C @ =gUnknown_0801F570
_08005E5A:
	str r0, [r1]
	ldr r0, _08005E70 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08005E74 @ =0x8000008C
_08005E62:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _08005FB4
	.align 2, 0
_08005E68: .4byte 0x040000D4
_08005E6C: .4byte gUnknown_0801F570
_08005E70: .4byte gUnknown_03003C90
_08005E74: .4byte 0x8000008C
_08005E78:
	ldr r1, _08005E9C @ =0x040000D4
	ldr r0, _08005EA0 @ =gUnknown_0801F7A0
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08005EA4 @ =0x80000082
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xe3
	bl sub_8004338
	cmp r0, #0
	bne _08005EA8
	movs r0, #0xef
	movs r1, #0xe3
	bl sub_8004434
	b _08005EAE
	.align 2, 0
_08005E9C: .4byte 0x040000D4
_08005EA0: .4byte gUnknown_0801F7A0
_08005EA4: .4byte 0x80000082
_08005EA8:
	movs r0, #0xd7
	bl sub_8013998
_08005EAE:
	movs r0, #0
	movs r1, #0xd1
	bl sub_8004338
	cmp r0, #0
	bne _08005FB4
	movs r0, #0x19
	bl sub_801480C
	b _08005FB4
_08005EC2:
	ldr r1, _08005F0C @ =0x040000D4
	ldr r0, _08005F10 @ =gUnknown_0801F8A4
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08005F14 @ =0x80000064
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xd4
	bl sub_8004338
	cmp r0, #0
	beq _08005F18
	movs r0, #0
	movs r1, #0xd5
	bl sub_8004338
	cmp r0, #0
	beq _08005F18
	movs r0, #0
	movs r1, #0xd6
	bl sub_8004338
	cmp r0, #0
	beq _08005F18
	movs r0, #0
	movs r1, #0xe5
	bl sub_8004338
	cmp r0, #0
	bne _08005FB4
	movs r0, #0xfc
	movs r1, #0xe5
	bl sub_8004434
	b _08005FB4
	.align 2, 0
_08005F0C: .4byte 0x040000D4
_08005F10: .4byte gUnknown_0801F8A4
_08005F14: .4byte 0x80000064
_08005F18:
	movs r0, #0
	movs r1, #0xe4
	bl sub_8004338
	cmp r0, #0
	bne _08005F2E
	movs r0, #0xfb
	movs r1, #0xe4
	bl sub_8004434
	b _08005FB4
_08005F2E:
	movs r0, #0xd7
	bl sub_8013998
	b _08005FB4
_08005F36:
	ldr r1, _08005F6C @ =0x040000D4
	ldr r0, _08005F70 @ =gUnknown_0801F96C
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08005F74 @ =0x80000064
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xe6
	bl sub_8004338
	cmp r0, #0
	bne _08005F7C
	movs r0, #0x20
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0x3d
	bl sub_801480C
	ldr r0, _08005F78 @ =0x00000101
	movs r1, #0xe6
	bl sub_8004434
	b _08005FB4
	.align 2, 0
_08005F6C: .4byte 0x040000D4
_08005F70: .4byte gUnknown_0801F96C
_08005F74: .4byte 0x80000064
_08005F78: .4byte 0x00000101
_08005F7C:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0x3d
	bl sub_801480C
	movs r0, #0
	movs r1, #0xf9
	bl sub_8004338
	cmp r0, #0
	beq _08005FAE
	movs r0, #0
	movs r1, #0xfa
	bl sub_8004338
	cmp r0, #0
	bne _08005FAE
	movs r0, #0x81
	lsls r0, r0, #1
	movs r1, #0xfa
	bl sub_8004434
_08005FAE:
	movs r0, #0xcd
	bl sub_8013998
_08005FB4:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start nullsub_3
nullsub_3: @ 0x08005FBC
	bx lr
	.align 2, 0

	thumb_func_start sub_8005FC0
sub_8005FC0: @ 0x08005FC0
	push {lr}
	ldr r2, _08005FF0 @ =0x040000D4
	ldr r1, _08005FF4 @ =gUnknown_0801FF70
	str r1, [r2]
	ldr r1, _08005FF8 @ =gMain+0x120
	str r1, [r2, #4]
	ldr r1, _08005FFC @ =0x8000003E
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08006000 @ =gUnknown_0801FE30
	str r1, [r2]
	ldr r1, _08006004 @ =gUnknown_03002920
	str r1, [r2, #4]
	ldr r1, _08006008 @ =0x800000A0
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0xb2
	movs r1, #0x13
	strb r1, [r0]
	bl sub_8017910
	pop {r0}
	bx r0
	.align 2, 0
_08005FF0: .4byte 0x040000D4
_08005FF4: .4byte gUnknown_0801FF70
_08005FF8: .4byte gMain+0x120
_08005FFC: .4byte 0x8000003E
_08006000: .4byte gUnknown_0801FE30
_08006004: .4byte gUnknown_03002920
_08006008: .4byte 0x800000A0

	thumb_func_start sub_800600C
sub_800600C: @ 0x0800600C
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _0800603C @ =0x0000FFFF
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _08006040 @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	ldr r3, _08006044 @ =gUnknown_03003C90
	str r3, [r2, #4]
	ldr r1, _08006048 @ =0x810000F0
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0x14
	bls _08006032
	b _080062B8
_08006032:
	lsls r0, r0, #2
	ldr r1, _0800604C @ =_08006050
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800603C: .4byte 0x0000FFFF
_08006040: .4byte 0x040000D4
_08006044: .4byte gUnknown_03003C90
_08006048: .4byte 0x810000F0
_0800604C: .4byte _08006050
_08006050: @ jump table
	.4byte _080060A4 @ case 0
	.4byte _080060C6 @ case 1
	.4byte _080062B8 @ case 2
	.4byte _080062B8 @ case 3
	.4byte _080062B8 @ case 4
	.4byte _080062B8 @ case 5
	.4byte _080062B8 @ case 6
	.4byte _080062B8 @ case 7
	.4byte _080062B8 @ case 8
	.4byte _080062B8 @ case 9
	.4byte _080062B8 @ case 10
	.4byte _080062B8 @ case 11
	.4byte _080062B8 @ case 12
	.4byte _080062B8 @ case 13
	.4byte _080062B8 @ case 14
	.4byte _080062B8 @ case 15
	.4byte _080062B8 @ case 16
	.4byte _080062B8 @ case 17
	.4byte _080061D0 @ case 18
	.4byte _0800610C @ case 19
	.4byte _08006234 @ case 20
_080060A4:
	movs r0, #0
	movs r1, #0x94
	bl sub_8004338
	cmp r0, #0
	bne _080060BA
	movs r0, #0xc6
	movs r1, #0x94
	bl sub_8004434
	b _080062B8
_080060BA:
	movs r0, #0x14
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	b _080062B8
_080060C6:
	movs r0, #0
	movs r1, #0x95
	bl sub_8004338
	cmp r0, #0
	bne _080060DC
	movs r0, #0xcb
	movs r1, #0x95
	bl sub_8004434
	b _080060EC
_080060DC:
	movs r0, #0x23
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xee
	bl sub_8013998
_080060EC:
	ldr r1, _080060FC @ =0x040000D4
	ldr r0, _08006100 @ =gUnknown_0801FFF0
	str r0, [r1]
	ldr r0, _08006104 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08006108 @ =0x80000014
	b _080062B4
	.align 2, 0
_080060FC: .4byte 0x040000D4
_08006100: .4byte gUnknown_0801FFF0
_08006104: .4byte gUnknown_03003C90
_08006108: .4byte 0x80000014
_0800610C:
	movs r0, #0
	movs r1, #0x91
	bl sub_8004338
	cmp r0, #0
	beq _0800614C
	movs r0, #0
	movs r1, #0x97
	bl sub_8004338
	cmp r0, #0
	bne _0800612C
	movs r0, #0x93
	movs r1, #0x97
	bl sub_8004434
_0800612C:
	ldr r1, _0800613C @ =0x040000D4
	ldr r0, _08006140 @ =gUnknown_080200E0
	str r0, [r1]
	ldr r0, _08006144 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08006148 @ =0x80000064
	b _080062B4
	.align 2, 0
_0800613C: .4byte 0x040000D4
_08006140: .4byte gUnknown_080200E0
_08006144: .4byte gUnknown_03003C90
_08006148: .4byte 0x80000064
_0800614C:
	movs r0, #0
	movs r1, #0x96
	bl sub_8004338
	cmp r0, #0
	beq _080061B0
	movs r0, #0
	movs r1, #0x90
	bl sub_8004338
	cmp r0, #0
	bne _080061A0
	movs r0, #0
	movs r1, #0xa5
	bl sub_8004338
	cmp r0, #0
	beq _080061A0
	movs r0, #0
	movs r1, #0xa6
	bl sub_8004338
	cmp r0, #0
	beq _080061A0
	movs r0, #0
	movs r1, #0x9a
	bl sub_8004338
	cmp r0, #0
	beq _080061A0
	movs r0, #0x82
	movs r1, #0xff
	bl sub_8004434
	ldr r2, _0800619C @ =0x00001824
	movs r0, #0x28
	adds r1, r2, #0
	bl sub_8004400
	b _080061B0
	.align 2, 0
_0800619C: .4byte 0x00001824
_080061A0:
	movs r0, #0x28
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0x15
	bl sub_8013998
_080061B0:
	ldr r1, _080061C0 @ =0x040000D4
	ldr r0, _080061C4 @ =gUnknown_08020018
	str r0, [r1]
	ldr r0, _080061C8 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _080061CC @ =0x80000064
	b _080062B4
	.align 2, 0
_080061C0: .4byte 0x040000D4
_080061C4: .4byte gUnknown_08020018
_080061C8: .4byte gUnknown_03003C90
_080061CC: .4byte 0x80000064
_080061D0:
	ldr r1, _08006200 @ =0x040000D4
	ldr r0, _08006204 @ =gUnknown_080201A8
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08006208 @ =0x8000005A
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0x91
	bl sub_8004338
	cmp r0, #0
	beq _0800621E
	movs r0, #0
	movs r1, #0x9b
	bl sub_8004338
	cmp r0, #0
	bne _0800620C
	movs r0, #0xa0
	movs r1, #0x9b
	bl sub_8004434
	b _080062B8
	.align 2, 0
_08006200: .4byte 0x040000D4
_08006204: .4byte gUnknown_080201A8
_08006208: .4byte 0x8000005A
_0800620C:
	movs r0, #0xa
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #1
	bl sub_8013998
	b _080062B8
_0800621E:
	movs r0, #0
	movs r1, #0x9a
	bl sub_8004338
	cmp r0, #0
	bne _080062B8
	movs r0, #0x99
	movs r1, #0x9a
	bl sub_8004434
	b _080062B8
_08006234:
	movs r0, #0
	movs r1, #0x92
	bl sub_8004338
	cmp r0, #0
	beq _08006268
	movs r0, #0
	movs r1, #0x99
	bl sub_8004338
	cmp r0, #0
	bne _08006256
	movs r0, #0xb7
	movs r1, #0x99
	bl sub_8004434
	b _080062A8
_08006256:
	movs r0, #0x28
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xd7
	bl sub_8013998
	b _080062A8
_08006268:
	movs r0, #0
	movs r1, #0x98
	bl sub_8004338
	cmp r0, #0
	bne _0800627E
	movs r0, #0xac
	movs r1, #0x98
	bl sub_8004434
	b _0800628E
_0800627E:
	movs r0, #0x27
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xda
	bl sub_8013998
_0800628E:
	movs r0, #0
	movs r1, #0xa7
	bl sub_8004338
	cmp r0, #0
	bne _080062A8
	ldr r1, _080062A0 @ =0x040000D4
	ldr r0, _080062A4 @ =gUnknown_0802025C
	b _080062AC
	.align 2, 0
_080062A0: .4byte 0x040000D4
_080062A4: .4byte gUnknown_0802025C
_080062A8:
	ldr r1, _080062C0 @ =0x040000D4
	ldr r0, _080062C4 @ =gUnknown_080202FC
_080062AC:
	str r0, [r1]
	ldr r0, _080062C8 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _080062CC @ =0x80000050
_080062B4:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080062B8:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080062C0: .4byte 0x040000D4
_080062C4: .4byte gUnknown_080202FC
_080062C8: .4byte gUnknown_03003C90
_080062CC: .4byte 0x80000050

	thumb_func_start nullsub_10
nullsub_10: @ 0x080062D0
	bx lr
	.align 2, 0

	thumb_func_start sub_80062D4
sub_80062D4: @ 0x080062D4
	ldr r2, _08006308 @ =0x040000D4
	ldr r1, _0800630C @ =gUnknown_08020954
	str r1, [r2]
	ldr r1, _08006310 @ =gMain+0x120
	str r1, [r2, #4]
	ldr r1, _08006314 @ =0x8000003E
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08006318 @ =gUnknown_080206FC
	str r1, [r2]
	ldr r1, _0800631C @ =gUnknown_03002920
	str r1, [r2, #4]
	ldr r1, _08006320 @ =0x8000012C
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08006324 @ =gUnknown_080206F0
	str r1, [r2]
	ldr r1, _08006328 @ =gUnknown_03003B70
	str r1, [r2, #4]
	ldr r1, _0800632C @ =0x80000006
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0xb2
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_08006308: .4byte 0x040000D4
_0800630C: .4byte gUnknown_08020954
_08006310: .4byte gMain+0x120
_08006314: .4byte 0x8000003E
_08006318: .4byte gUnknown_080206FC
_0800631C: .4byte gUnknown_03002920
_08006320: .4byte 0x8000012C
_08006324: .4byte gUnknown_080206F0
_08006328: .4byte gUnknown_03003B70
_0800632C: .4byte 0x80000006

	thumb_func_start sub_8006330
sub_8006330: @ 0x08006330
	push {r4, lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _08006364 @ =0x0000FFFF
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _08006368 @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	ldr r3, _0800636C @ =gUnknown_03003C90
	str r3, [r2, #4]
	ldr r1, _08006370 @ =0x810000F0
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0xb2
	ldrb r0, [r0]
	adds r4, r3, #0
	cmp r0, #0x17
	bls _08006358
	b _0800685E
_08006358:
	lsls r0, r0, #2
	ldr r1, _08006374 @ =_08006378
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08006364: .4byte 0x0000FFFF
_08006368: .4byte 0x040000D4
_0800636C: .4byte gUnknown_03003C90
_08006370: .4byte 0x810000F0
_08006374: .4byte _08006378
_08006378: @ jump table
	.4byte _080063D8 @ case 0
	.4byte _08006444 @ case 1
	.4byte _0800685E @ case 2
	.4byte _0800685E @ case 3
	.4byte _0800685E @ case 4
	.4byte _0800685E @ case 5
	.4byte _0800685E @ case 6
	.4byte _0800685E @ case 7
	.4byte _0800685E @ case 8
	.4byte _0800685E @ case 9
	.4byte _0800685E @ case 10
	.4byte _0800685E @ case 11
	.4byte _0800685E @ case 12
	.4byte _0800685E @ case 13
	.4byte _0800685E @ case 14
	.4byte _08006710 @ case 15
	.4byte _080065C4 @ case 16
	.4byte _080066A8 @ case 17
	.4byte _08006540 @ case 18
	.4byte _08006494 @ case 19
	.4byte _080064FA @ case 20
	.4byte _0800685E @ case 21
	.4byte _0800685E @ case 22
	.4byte _08006824 @ case 23
_080063D8:
	movs r0, #0
	movs r1, #0xbc
	bl sub_8004338
	cmp r0, #0
	beq _08006408
	movs r0, #0
	movs r1, #0xbe
	bl sub_8004338
	cmp r0, #0
	bne _08006400
	ldr r0, _080063FC @ =0x0000014D
	movs r1, #0xbe
	bl sub_8004434
	b _0800685E
	.align 2, 0
_080063FC: .4byte 0x0000014D
_08006400:
	movs r0, #0x19
	movs r1, #0
	movs r2, #0
	b _0800662C
_08006408:
	movs r0, #0
	movs r1, #0xbd
	bl sub_8004338
	cmp r0, #0
	beq _08006424
	movs r0, #0x14
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xd7
	bl sub_8013998
_08006424:
	ldr r1, _08006434 @ =0x040000D4
	ldr r0, _08006438 @ =gUnknown_080209D4
	str r0, [r1]
	ldr r0, _0800643C @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08006440 @ =0x80000032
	b _080065AE
	.align 2, 0
_08006434: .4byte 0x040000D4
_08006438: .4byte gUnknown_080209D4
_0800643C: .4byte gUnknown_03003C90
_08006440: .4byte 0x80000032
_08006444:
	movs r0, #0
	movs r1, #0xbf
	bl sub_8004338
	cmp r0, #0
	bne _0800645A
	movs r0, #0x8e
	movs r1, #0xbf
	bl sub_8004434
	b _08006476
_0800645A:
	movs r0, #0
	movs r1, #0xd3
	bl sub_8004338
	cmp r0, #0
	bne _08006476
	movs r0, #0x23
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xee
	bl sub_8013998
_08006476:
	ldr r1, _08006484 @ =0x040000D4
	ldr r0, _08006488 @ =gUnknown_08020A38
	str r0, [r1]
	ldr r0, _0800648C @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08006490 @ =0x80000014
	b _080065AE
	.align 2, 0
_08006484: .4byte 0x040000D4
_08006488: .4byte gUnknown_08020A38
_0800648C: .4byte gUnknown_03003C90
_08006490: .4byte 0x80000014
_08006494:
	ldr r1, _080064C4 @ =0x040000D4
	ldr r0, _080064C8 @ =gUnknown_08020A60
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _080064CC @ =0x80000064
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xb0
	bl sub_8004338
	cmp r0, #0
	beq _080064E2
	movs r0, #0
	movs r1, #0xc1
	bl sub_8004338
	cmp r0, #0
	bne _080064D0
	movs r0, #0xb4
	movs r1, #0xc1
	bl sub_8004434
	b _0800685E
	.align 2, 0
_080064C4: .4byte 0x040000D4
_080064C8: .4byte gUnknown_08020A60
_080064CC: .4byte 0x80000064
_080064D0:
	movs r0, #0x28
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xd7
	bl sub_8013998
	b _0800685E
_080064E2:
	movs r0, #0
	movs r1, #0xc0
	bl sub_8004338
	cmp r0, #0
	beq _080064F0
	b _0800685E
_080064F0:
	movs r0, #0xad
	movs r1, #0xc0
	bl sub_8004434
	b _0800685E
_080064FA:
	movs r0, #0
	movs r1, #0xc2
	bl sub_8004338
	cmp r0, #0
	bne _08006510
	movs r0, #0x9d
	movs r1, #0xc2
	bl sub_8004434
	b _08006520
_08006510:
	movs r0, #0x27
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xda
	bl sub_8013998
_08006520:
	ldr r1, _08006530 @ =0x040000D4
	ldr r0, _08006534 @ =gUnknown_08020C90
	str r0, [r1]
	ldr r0, _08006538 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _0800653C @ =0x80000050
	b _080065AE
	.align 2, 0
_08006530: .4byte 0x040000D4
_08006534: .4byte gUnknown_08020C90
_08006538: .4byte gUnknown_03003C90
_0800653C: .4byte 0x80000050
_08006540:
	bl LoadCurrentScriptIntoRam
	movs r0, #0
	movs r1, #0xbc
	bl sub_8004338
	cmp r0, #0
	beq _0800657C
	movs r0, #0
	movs r1, #0xc4
	bl sub_8004338
	cmp r0, #0
	bne _0800656E
	movs r0, #0x14
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xe1
	movs r1, #0xc4
	bl sub_8004434
_0800656E:
	ldr r1, _08006574 @ =0x040000D4
	ldr r0, _08006578 @ =gUnknown_08020BDC
	b _080065A6
	.align 2, 0
_08006574: .4byte 0x040000D4
_08006578: .4byte gUnknown_08020BDC
_0800657C:
	movs r0, #0
	movs r1, #0xc3
	bl sub_8004338
	cmp r0, #0
	bne _08006592
	movs r0, #0xc5
	movs r1, #0xc3
	bl sub_8004434
	b _080065A2
_08006592:
	movs r0, #0x18
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0x16
	bl sub_8013998
_080065A2:
	ldr r1, _080065B4 @ =0x040000D4
	ldr r0, _080065B8 @ =gUnknown_08020B28
_080065A6:
	str r0, [r1]
	ldr r0, _080065BC @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _080065C0 @ =0x8000005A
_080065AE:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _0800685E
	.align 2, 0
_080065B4: .4byte 0x040000D4
_080065B8: .4byte gUnknown_08020B28
_080065BC: .4byte gUnknown_03003C90
_080065C0: .4byte 0x8000005A
_080065C4:
	ldr r1, _0800660C @ =0x040000D4
	ldr r0, _08006610 @ =gUnknown_08020D30
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _08006614 @ =0x80000078
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xba
	bl sub_8004338
	cmp r0, #0
	beq _0800663C
	movs r0, #0
	movs r1, #0xbb
	bl sub_8004338
	cmp r0, #0
	beq _0800663C
	movs r0, #0
	movs r1, #0xdc
	movs r2, #1
	bl sub_80042FC
	movs r0, #0
	movs r1, #0xc7
	bl sub_8004338
	cmp r0, #0
	bne _08006618
	movs r0, #0x83
	lsls r0, r0, #1
	movs r1, #0xc7
	bl sub_8004434
	b _0800685E
	.align 2, 0
_0800660C: .4byte 0x040000D4
_08006610: .4byte gUnknown_08020D30
_08006614: .4byte 0x80000078
_08006618:
	movs r0, #0
	movs r1, #0xbc
	bl sub_8004338
	cmp r0, #0
	beq _08006626
	b _0800685E
_08006626:
	ldr r2, _08006638 @ =0x00003CB4
	movs r0, #0x24
	adds r1, r2, #0
_0800662C:
	bl sub_8004400
	movs r0, #0xc
	bl sub_8013998
	b _0800685E
	.align 2, 0
_08006638: .4byte 0x00003CB4
_0800663C:
	movs r0, #0
	movs r1, #0xb4
	bl sub_8004338
	cmp r0, #0
	beq _08006670
	movs r0, #0
	movs r1, #0xdc
	movs r2, #0
	bl sub_80042FC
	movs r0, #0
	movs r1, #0xc6
	bl sub_8004338
	cmp r0, #0
	beq _08006660
	b _0800685E
_08006660:
	ldr r0, _0800666C @ =0x00000105
	movs r1, #0xc6
	bl sub_8004434
	b _0800685E
	.align 2, 0
_0800666C: .4byte 0x00000105
_08006670:
	movs r0, #0
	movs r1, #0xdc
	movs r2, #1
	bl sub_80042FC
	movs r0, #0
	movs r1, #0xc5
	bl sub_8004338
	cmp r0, #0
	bne _08006690
	movs r0, #0xe5
	movs r1, #0xc5
	bl sub_8004434
	b _0800685E
_08006690:
	ldr r2, _080066A4 @ =0x00003CB4
	movs r0, #0x24
	adds r1, r2, #0
	bl sub_8004400
	movs r0, #0xee
	bl sub_8013998
	b _0800685E
	.align 2, 0
_080066A4: .4byte 0x00003CB4
_080066A8:
	ldr r1, _080066E0 @ =0x040000D4
	ldr r0, _080066E4 @ =gUnknown_08020E20
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _080066E8 @ =0x800000C8
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xe1
	bl sub_8004338
	cmp r0, #0
	beq _080066C8
	movs r0, #0x1b
	bl sub_801480C
_080066C8:
	movs r0, #0
	movs r1, #0xc8
	bl sub_8004338
	cmp r0, #0
	bne _080066F0
	ldr r0, _080066EC @ =0x00000107
	movs r1, #0xc8
	bl sub_8004434
	b _0800685E
	.align 2, 0
_080066E0: .4byte 0x040000D4
_080066E4: .4byte gUnknown_08020E20
_080066E8: .4byte 0x800000C8
_080066EC: .4byte 0x00000107
_080066F0:
	movs r0, #0
	movs r1, #0xb1
	bl sub_8004338
	cmp r0, #0
	beq _080066FE
	b _0800685E
_080066FE:
	movs r0, #0xa
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #1
	bl sub_8013998
	b _0800685E
_08006710:
	ldr r1, _0800675C @ =0x040000D4
	ldr r0, _08006760 @ =gUnknown_08020FB0
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _08006764 @ =0x80000046
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xbc
	bl sub_8004338
	cmp r0, #0
	beq _0800676C
	movs r0, #0
	movs r1, #0xdf
	movs r2, #0
	bl sub_80042FC
	movs r0, #0
	movs r1, #0xe0
	movs r2, #0
	bl sub_80042FC
	movs r0, #0
	movs r1, #0xcb
	bl sub_8004338
	cmp r0, #0
	bne _08006752
	ldr r0, _08006768 @ =0x00000149
	movs r1, #0xcb
	bl sub_8004434
_08006752:
	movs r0, #0xa5
	lsls r0, r0, #1
	strh r0, [r4, #0x14]
	b _0800685E
	.align 2, 0
_0800675C: .4byte 0x040000D4
_08006760: .4byte gUnknown_08020FB0
_08006764: .4byte 0x80000046
_08006768: .4byte 0x00000149
_0800676C:
	movs r0, #0
	movs r1, #0xb2
	bl sub_8004338
	cmp r0, #0
	beq _080067F8
	movs r0, #0
	movs r1, #0xb3
	bl sub_8004338
	cmp r0, #0
	beq _080067F8
	movs r0, #0
	movs r1, #0xca
	bl sub_8004338
	cmp r0, #0
	bne _080067A0
	ldr r0, _0800679C @ =0x0000012D
	movs r1, #0xca
	bl sub_8004434
	b _080067E8
	.align 2, 0
_0800679C: .4byte 0x0000012D
_080067A0:
	movs r0, #0
	movs r1, #0xb4
	bl sub_8004338
	cmp r0, #0
	beq _080067D8
	ldr r2, _080067CC @ =0x00003C68
	movs r0, #8
	adds r1, r2, #0
	bl sub_8004400
	movs r0, #0
	movs r1, #0xbb
	bl sub_8004338
	cmp r0, #0
	beq _080067D0
	movs r0, #0xc
	bl sub_8013998
	b _080067E8
	.align 2, 0
_080067CC: .4byte 0x00003C68
_080067D0:
	movs r0, #0xf1
	bl sub_8013998
	b _080067E8
_080067D8:
	movs r0, #0xa
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #1
	bl sub_8013998
_080067E8:
	ldr r1, _080067F4 @ =gUnknown_03003C90
	movs r0, #0x97
	lsls r0, r0, #1
	strh r0, [r1, #0x14]
	b _0800685E
	.align 2, 0
_080067F4: .4byte gUnknown_03003C90
_080067F8:
	movs r0, #0
	movs r1, #0xdf
	movs r2, #0
	bl sub_80042FC
	movs r0, #0
	movs r1, #0xe0
	movs r2, #0
	bl sub_80042FC
	movs r0, #0
	movs r1, #0xc9
	bl sub_8004338
	cmp r0, #0
	bne _0800685E
	movs r0, #0x93
	lsls r0, r0, #1
	movs r1, #0xc9
	bl sub_8004434
	b _0800685E
_08006824:
	ldr r1, _08006848 @ =0x040000D4
	ldr r0, _0800684C @ =gUnknown_0802108C
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _08006850 @ =0x80000032
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xcc
	bl sub_8004338
	cmp r0, #0
	bne _08006858
	ldr r0, _08006854 @ =0x00000153
	movs r1, #0xcc
	bl sub_8004434
	b _0800685E
	.align 2, 0
_08006848: .4byte 0x040000D4
_0800684C: .4byte gUnknown_0802108C
_08006850: .4byte 0x80000032
_08006854: .4byte 0x00000153
_08006858:
	movs r0, #0xd3
	bl sub_8013998
_0800685E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8006868
sub_8006868: @ 0x08006868
	push {lr}
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0xf
	bne _08006884
	movs r0, #0
	movs r1, #0xe0
	bl sub_8004338
	cmp r0, #0
	beq _08006884
	ldr r1, _08006888 @ =gUnknown_03003C90
	ldr r0, _0800688C @ =0x0000012F
	strh r0, [r1, #0x14]
_08006884:
	pop {r0}
	bx r0
	.align 2, 0
_08006888: .4byte gUnknown_03003C90
_0800688C: .4byte 0x0000012F

	thumb_func_start sub_8006890
sub_8006890: @ 0x08006890
	ldr r2, _080068B8 @ =0x040000D4
	ldr r1, _080068BC @ =gUnknown_08021430
	str r1, [r2]
	ldr r1, _080068C0 @ =gMain+0x120
	str r1, [r2, #4]
	ldr r1, _080068C4 @ =0x80000041
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _080068C8 @ =gUnknown_08021318
	str r1, [r2]
	ldr r1, _080068CC @ =gUnknown_03002920
	str r1, [r2, #4]
	ldr r1, _080068D0 @ =0x8000008C
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0xb2
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_080068B8: .4byte 0x040000D4
_080068BC: .4byte gUnknown_08021430
_080068C0: .4byte gMain+0x120
_080068C4: .4byte 0x80000041
_080068C8: .4byte gUnknown_08021318
_080068CC: .4byte gUnknown_03002920
_080068D0: .4byte 0x8000008C

	thumb_func_start sub_80068D4
sub_80068D4: @ 0x080068D4
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _08006904 @ =0x0000FFFF
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _08006908 @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	ldr r1, _0800690C @ =gUnknown_03003C90
	str r1, [r2, #4]
	ldr r1, _08006910 @ =0x810000F0
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0x19
	bls _080068FA
	b _08006E04
_080068FA:
	lsls r0, r0, #2
	ldr r1, _08006914 @ =_08006918
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08006904: .4byte 0x0000FFFF
_08006908: .4byte 0x040000D4
_0800690C: .4byte gUnknown_03003C90
_08006910: .4byte 0x810000F0
_08006914: .4byte _08006918
_08006918: @ jump table
	.4byte _08006980 @ case 0
	.4byte _08006A4C @ case 1
	.4byte _08006D54 @ case 2
	.4byte _08006E04 @ case 3
	.4byte _08006E04 @ case 4
	.4byte _08006E04 @ case 5
	.4byte _08006E04 @ case 6
	.4byte _08006E04 @ case 7
	.4byte _08006E04 @ case 8
	.4byte _08006E04 @ case 9
	.4byte _08006E04 @ case 10
	.4byte _08006E04 @ case 11
	.4byte _08006E04 @ case 12
	.4byte _08006E04 @ case 13
	.4byte _08006E04 @ case 14
	.4byte _08006C84 @ case 15
	.4byte _08006E04 @ case 16
	.4byte _08006BBC @ case 17
	.4byte _08006ADC @ case 18
	.4byte _08006AA0 @ case 19
	.4byte _08006B6C @ case 20
	.4byte _08006D0C @ case 21
	.4byte _08006CB8 @ case 22
	.4byte _08006E04 @ case 23
	.4byte _08006E04 @ case 24
	.4byte _08006DE0 @ case 25
_08006980:
	movs r0, #0
	movs r1, #0x94
	bl sub_8004338
	cmp r0, #0
	beq _08006A0C
	movs r0, #0
	movs r1, #0x9c
	bl sub_8004338
	cmp r0, #0
	bne _080069A2
	movs r0, #0x99
	movs r1, #0x9c
	bl sub_8004434
	b _080069BE
_080069A2:
	movs r0, #0
	movs r1, #0x95
	bl sub_8004338
	cmp r0, #0
	bne _080069BE
	ldr r2, _080069D8 @ =0x00000B48
	movs r0, #0xa
	adds r1, r2, #0
	bl sub_8004400
	movs r0, #1
	bl sub_8013998
_080069BE:
	movs r0, #0
	movs r1, #0x95
	bl sub_8004338
	cmp r0, #0
	bne _080069EC
	ldr r1, _080069DC @ =0x040000D4
	ldr r0, _080069E0 @ =gUnknown_080214B4
	str r0, [r1]
	ldr r0, _080069E4 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _080069E8 @ =0x80000032
	b _08006E00
	.align 2, 0
_080069D8: .4byte 0x00000B48
_080069DC: .4byte 0x040000D4
_080069E0: .4byte gUnknown_080214B4
_080069E4: .4byte gUnknown_03003C90
_080069E8: .4byte 0x80000032
_080069EC:
	ldr r1, _080069FC @ =0x040000D4
	ldr r0, _08006A00 @ =gUnknown_08021518
	str r0, [r1]
	ldr r0, _08006A04 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08006A08 @ =0x80000032
	b _08006E00
	.align 2, 0
_080069FC: .4byte 0x040000D4
_08006A00: .4byte gUnknown_08021518
_08006A04: .4byte gUnknown_03003C90
_08006A08: .4byte 0x80000032
_08006A0C:
	movs r0, #0
	movs r1, #0x9b
	bl sub_8004338
	cmp r0, #0
	beq _08006A28
	ldr r2, _08006A38 @ =0x00000B48
	movs r0, #0xa
	adds r1, r2, #0
	bl sub_8004400
	movs r0, #1
	bl sub_8013998
_08006A28:
	ldr r1, _08006A3C @ =0x040000D4
	ldr r0, _08006A40 @ =gUnknown_080214B4
	str r0, [r1]
	ldr r0, _08006A44 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08006A48 @ =0x80000032
	b _08006E00
	.align 2, 0
_08006A38: .4byte 0x00000B48
_08006A3C: .4byte 0x040000D4
_08006A40: .4byte gUnknown_080214B4
_08006A44: .4byte gUnknown_03003C90
_08006A48: .4byte 0x80000032
_08006A4C:
	movs r0, #0
	movs r1, #0x91
	bl sub_8004338
	cmp r0, #0
	beq _08006A6E
	movs r0, #0
	movs r1, #0x9e
	bl sub_8004338
	cmp r0, #0
	bne _08006A82
	movs r0, #0xa2
	movs r1, #0x9e
	bl sub_8004434
	b _08006A82
_08006A6E:
	movs r0, #0
	movs r1, #0x9d
	bl sub_8004338
	cmp r0, #0
	bne _08006A82
	movs r0, #0x9f
	movs r1, #0x9d
	bl sub_8004434
_08006A82:
	ldr r1, _08006A90 @ =0x040000D4
	ldr r0, _08006A94 @ =gUnknown_0802157C
	str r0, [r1]
	ldr r0, _08006A98 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08006A9C @ =0x80000014
	b _08006E00
	.align 2, 0
_08006A90: .4byte 0x040000D4
_08006A94: .4byte gUnknown_0802157C
_08006A98: .4byte gUnknown_03003C90
_08006A9C: .4byte 0x80000014
_08006AA0:
	movs r0, #0
	movs r1, #0x9f
	bl sub_8004338
	cmp r0, #0
	bne _08006AB6
	movs r0, #0xac
	movs r1, #0x9f
	bl sub_8004434
	b _08006ABC
_08006AB6:
	movs r0, #0xd7
	bl sub_8013998
_08006ABC:
	ldr r1, _08006ACC @ =0x040000D4
	ldr r0, _08006AD0 @ =gUnknown_080215A4
	str r0, [r1]
	ldr r0, _08006AD4 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08006AD8 @ =0x80000064
	b _08006E00
	.align 2, 0
_08006ACC: .4byte 0x040000D4
_08006AD0: .4byte gUnknown_080215A4
_08006AD4: .4byte gUnknown_03003C90
_08006AD8: .4byte 0x80000064
_08006ADC:
	movs r0, #0
	movs r1, #0xa0
	bl sub_8004338
	cmp r0, #0
	bne _08006B10
	movs r0, #0xb3
	movs r1, #0xa0
	bl sub_8004434
	ldr r1, _08006B00 @ =0x040000D4
	ldr r0, _08006B04 @ =gUnknown_0802166C
	str r0, [r1]
	ldr r0, _08006B08 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08006B0C @ =0x8000005A
	b _08006E00
	.align 2, 0
_08006B00: .4byte 0x040000D4
_08006B04: .4byte gUnknown_0802166C
_08006B08: .4byte gUnknown_03003C90
_08006B0C: .4byte 0x8000005A
_08006B10:
	movs r0, #0
	movs r1, #0xbb
	bl sub_8004338
	cmp r0, #0
	bne _08006B4C
	movs r0, #0x18
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0x16
	bl sub_8013998
	ldr r1, _08006B3C @ =0x040000D4
	ldr r0, _08006B40 @ =gUnknown_0802166C
	str r0, [r1]
	ldr r0, _08006B44 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08006B48 @ =0x8000005A
	b _08006E00
	.align 2, 0
_08006B3C: .4byte 0x040000D4
_08006B40: .4byte gUnknown_0802166C
_08006B44: .4byte gUnknown_03003C90
_08006B48: .4byte 0x8000005A
_08006B4C:
	ldr r1, _08006B5C @ =0x040000D4
	ldr r0, _08006B60 @ =gUnknown_08021720
	str r0, [r1]
	ldr r0, _08006B64 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08006B68 @ =0x8000005A
	b _08006E00
	.align 2, 0
_08006B5C: .4byte 0x040000D4
_08006B60: .4byte gUnknown_08021720
_08006B64: .4byte gUnknown_03003C90
_08006B68: .4byte 0x8000005A
_08006B6C:
	movs r0, #0
	movs r1, #0xa1
	bl sub_8004338
	cmp r0, #0
	bne _08006B82
	movs r0, #0xa3
	movs r1, #0xa1
	bl sub_8004434
	b _08006B9E
_08006B82:
	movs r0, #0
	movs r1, #0x92
	bl sub_8004338
	cmp r0, #0
	bne _08006B9E
	movs r0, #0x27
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xda
	bl sub_8013998
_08006B9E:
	ldr r1, _08006BAC @ =0x040000D4
	ldr r0, _08006BB0 @ =gUnknown_080217D4
	str r0, [r1]
	ldr r0, _08006BB4 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08006BB8 @ =0x80000050
	b _08006E00
	.align 2, 0
_08006BAC: .4byte 0x040000D4
_08006BB0: .4byte gUnknown_080217D4
_08006BB4: .4byte gUnknown_03003C90
_08006BB8: .4byte 0x80000050
_08006BBC:
	movs r0, #0
	movs r1, #0x95
	bl sub_8004338
	cmp r0, #0
	beq _08006BF0
	movs r0, #0
	movs r1, #0xa3
	bl sub_8004338
	cmp r0, #0
	bne _08006BDE
	movs r0, #0xd5
	movs r1, #0xa3
	bl sub_8004434
	b _08006C60
_08006BDE:
	movs r0, #0xa
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xc
	bl sub_8013998
	b _08006C60
_08006BF0:
	movs r0, #0
	movs r1, #0xa2
	bl sub_8004338
	cmp r0, #0
	bne _08006C06
	movs r0, #0xc3
	movs r1, #0xa2
	bl sub_8004434
	b _08006C60
_08006C06:
	movs r0, #0
	movs r1, #0x94
	bl sub_8004338
	cmp r0, #0
	beq _08006C16
	movs r0, #0xc4
	b _08006C48
_08006C16:
	movs r0, #0
	movs r1, #0xa5
	bl sub_8004338
	cmp r0, #0
	beq _08006C50
	movs r0, #0
	movs r1, #0xb8
	bl sub_8004338
	cmp r0, #0
	beq _08006C50
	movs r0, #0
	movs r1, #0xb9
	bl sub_8004338
	cmp r0, #0
	beq _08006C50
	movs r0, #0
	movs r1, #0xba
	bl sub_8004338
	cmp r0, #0
	beq _08006C50
	movs r0, #0xc5
_08006C48:
	movs r1, #0xff
	bl sub_8004434
	b _08006C56
_08006C50:
	movs r0, #0xda
	bl sub_8013998
_08006C56:
	ldr r0, _08006C70 @ =0x00004027
	movs r1, #0
	movs r2, #0
	bl sub_8004400
_08006C60:
	ldr r1, _08006C74 @ =0x040000D4
	ldr r0, _08006C78 @ =gUnknown_08021874
	str r0, [r1]
	ldr r0, _08006C7C @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08006C80 @ =0x800000BE
	b _08006E00
	.align 2, 0
_08006C70: .4byte 0x00004027
_08006C74: .4byte 0x040000D4
_08006C78: .4byte gUnknown_08021874
_08006C7C: .4byte gUnknown_03003C90
_08006C80: .4byte 0x800000BE
_08006C84:
	movs r0, #0
	movs r1, #0xa4
	bl sub_8004338
	cmp r0, #0
	bne _08006C98
	movs r0, #0xf4
	movs r1, #0xa4
	bl sub_8004434
_08006C98:
	ldr r1, _08006CA8 @ =0x040000D4
	ldr r0, _08006CAC @ =gUnknown_080219F0
	str r0, [r1]
	ldr r0, _08006CB0 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08006CB4 @ =0x80000046
	b _08006E00
	.align 2, 0
_08006CA8: .4byte 0x040000D4
_08006CAC: .4byte gUnknown_080219F0
_08006CB0: .4byte gUnknown_03003C90
_08006CB4: .4byte 0x80000046
_08006CB8:
	movs r0, #0
	movs r1, #0xa5
	bl sub_8004338
	cmp r0, #0
	bne _08006CD0
	movs r0, #0x8d
	lsls r0, r0, #1
	movs r1, #0xa5
	bl sub_8004434
	b _08006CEC
_08006CD0:
	movs r0, #0
	movs r1, #0x9a
	bl sub_8004338
	cmp r0, #0
	bne _08006CEC
	movs r0, #0x25
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xd3
	bl sub_8013998
_08006CEC:
	ldr r1, _08006CFC @ =0x040000D4
	ldr r0, _08006D00 @ =gUnknown_08021ACC
	str r0, [r1]
	ldr r0, _08006D04 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08006D08 @ =0x80000046
	b _08006E00
	.align 2, 0
_08006CFC: .4byte 0x040000D4
_08006D00: .4byte gUnknown_08021ACC
_08006D04: .4byte gUnknown_03003C90
_08006D08: .4byte 0x80000046
_08006D0C:
	movs r0, #0
	movs r1, #0xa7
	bl sub_8004338
	cmp r0, #0
	bne _08006D24
	movs r0, #0x88
	lsls r0, r0, #1
	movs r1, #0xa7
	bl sub_8004434
	b _08006D36
_08006D24:
	movs r0, #0x1c
	bl sub_801480C
	movs r0, #0x1e
	bl sub_801480C
	movs r0, #0xd3
	bl sub_8013998
_08006D36:
	ldr r1, _08006D44 @ =0x040000D4
	ldr r0, _08006D48 @ =gUnknown_08021B58
	str r0, [r1]
	ldr r0, _08006D4C @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08006D50 @ =0x80000050
	b _08006E00
	.align 2, 0
_08006D44: .4byte 0x040000D4
_08006D48: .4byte gUnknown_08021B58
_08006D4C: .4byte gUnknown_03003C90
_08006D50: .4byte 0x80000050
_08006D54:
	movs r0, #0
	movs r1, #0xa8
	bl sub_8004338
	cmp r0, #0
	bne _08006D6A
	movs r0, #0xfa
	movs r1, #0xa8
	bl sub_8004434
	b _08006DC0
_08006D6A:
	movs r0, #0
	movs r1, #0xa7
	bl sub_8004338
	cmp r0, #0
	bne _08006DAC
	movs r0, #0
	movs r1, #0x99
	bl sub_8004338
	cmp r0, #0
	beq _08006D94
	ldr r2, _08006D90 @ =0x00003C68
	movs r0, #8
	adds r1, r2, #0
	bl sub_8004400
	b _08006D9E
	.align 2, 0
_08006D90: .4byte 0x00003C68
_08006D94:
	ldr r2, _08006DA8 @ =0x00003628
	movs r0, #0xf
	adds r1, r2, #0
	bl sub_8004400
_08006D9E:
	movs r0, #0xc
	bl sub_8013998
	b _08006DC0
	.align 2, 0
_08006DA8: .4byte 0x00003628
_08006DAC:
	movs r0, #0
	movs r1, #0xa9
	bl sub_8004338
	cmp r0, #0
	bne _08006DC0
	movs r0, #0xfc
	movs r1, #0xa9
	bl sub_8004434
_08006DC0:
	ldr r1, _08006DD0 @ =0x040000D4
	ldr r0, _08006DD4 @ =gUnknown_08021BF8
	str r0, [r1]
	ldr r0, _08006DD8 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08006DDC @ =0x8000003C
	b _08006E00
	.align 2, 0
_08006DD0: .4byte 0x040000D4
_08006DD4: .4byte gUnknown_08021BF8
_08006DD8: .4byte gUnknown_03003C90
_08006DDC: .4byte 0x8000003C
_08006DE0:
	movs r0, #0
	movs r1, #0xa6
	bl sub_8004338
	cmp r0, #0
	bne _08006DF4
	ldr r0, _08006E0C @ =0x0000010B
	movs r1, #0xa6
	bl sub_8004434
_08006DF4:
	ldr r1, _08006E10 @ =0x040000D4
	ldr r0, _08006E14 @ =gUnknown_08021A7C
	str r0, [r1]
	ldr r0, _08006E18 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08006E1C @ =0x80000028
_08006E00:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08006E04:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08006E0C: .4byte 0x0000010B
_08006E10: .4byte 0x040000D4
_08006E14: .4byte gUnknown_08021A7C
_08006E18: .4byte gUnknown_03003C90
_08006E1C: .4byte 0x80000028

	thumb_func_start sub_8006E20
sub_8006E20: @ 0x08006E20
	push {lr}
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08006E30
	cmp r0, #0x12
	beq _08006E5C
	b _08006E78
_08006E30:
	movs r0, #0
	movs r1, #0x95
	bl sub_8004338
	cmp r0, #0
	beq _08006E78
	ldr r1, _08006E4C @ =0x040000D4
	ldr r0, _08006E50 @ =gUnknown_08021518
	str r0, [r1]
	ldr r0, _08006E54 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08006E58 @ =0x80000032
	b _08006E74
	.align 2, 0
_08006E4C: .4byte 0x040000D4
_08006E50: .4byte gUnknown_08021518
_08006E54: .4byte gUnknown_03003C90
_08006E58: .4byte 0x80000032
_08006E5C:
	movs r0, #0
	movs r1, #0xbb
	bl sub_8004338
	cmp r0, #0
	beq _08006E78
	ldr r1, _08006E7C @ =0x040000D4
	ldr r0, _08006E80 @ =gUnknown_08021720
	str r0, [r1]
	ldr r0, _08006E84 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08006E88 @ =0x8000005A
_08006E74:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08006E78:
	pop {r0}
	bx r0
	.align 2, 0
_08006E7C: .4byte 0x040000D4
_08006E80: .4byte gUnknown_08021720
_08006E84: .4byte gUnknown_03003C90
_08006E88: .4byte 0x8000005A

	thumb_func_start sub_8006E8C
sub_8006E8C: @ 0x08006E8C
	ldr r2, _08006EC0 @ =0x040000D4
	ldr r1, _08006EC4 @ =gUnknown_0802240C
	str r1, [r2]
	ldr r1, _08006EC8 @ =gMain+0x120
	str r1, [r2, #4]
	ldr r1, _08006ECC @ =0x80000041
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08006ED0 @ =gUnknown_08022254
	str r1, [r2]
	ldr r1, _08006ED4 @ =gUnknown_03002920
	str r1, [r2, #4]
	ldr r1, _08006ED8 @ =0x800000DC
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08006EDC @ =gUnknown_0802224C
	str r1, [r2]
	ldr r1, _08006EE0 @ =gUnknown_03003B70
	str r1, [r2, #4]
	ldr r1, _08006EE4 @ =0x80000004
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0xb2
	movs r1, #0x11
	strb r1, [r0]
	bx lr
	.align 2, 0
_08006EC0: .4byte 0x040000D4
_08006EC4: .4byte gUnknown_0802240C
_08006EC8: .4byte gMain+0x120
_08006ECC: .4byte 0x80000041
_08006ED0: .4byte gUnknown_08022254
_08006ED4: .4byte gUnknown_03002920
_08006ED8: .4byte 0x800000DC
_08006EDC: .4byte gUnknown_0802224C
_08006EE0: .4byte gUnknown_03003B70
_08006EE4: .4byte 0x80000004

	thumb_func_start sub_8006EE8
sub_8006EE8: @ 0x08006EE8
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _08006F18 @ =0x0000FFFF
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _08006F1C @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	ldr r3, _08006F20 @ =gUnknown_03003C90
	str r3, [r2, #4]
	ldr r1, _08006F24 @ =0x810000F0
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0x18
	bls _08006F0E
	b _0800748A
_08006F0E:
	lsls r0, r0, #2
	ldr r1, _08006F28 @ =_08006F2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08006F18: .4byte 0x0000FFFF
_08006F1C: .4byte 0x040000D4
_08006F20: .4byte gUnknown_03003C90
_08006F24: .4byte 0x810000F0
_08006F28: .4byte _08006F2C
_08006F2C: @ jump table
	.4byte _08006F90 @ case 0
	.4byte _0800704C @ case 1
	.4byte _0800748A @ case 2
	.4byte _0800748A @ case 3
	.4byte _0800748A @ case 4
	.4byte _0800748A @ case 5
	.4byte _0800748A @ case 6
	.4byte _0800748A @ case 7
	.4byte _0800748A @ case 8
	.4byte _0800748A @ case 9
	.4byte _0800748A @ case 10
	.4byte _0800748A @ case 11
	.4byte _0800748A @ case 12
	.4byte _0800748A @ case 13
	.4byte _0800748A @ case 14
	.4byte _08007258 @ case 15
	.4byte _0800748A @ case 16
	.4byte _08007214 @ case 17
	.4byte _080071B8 @ case 18
	.4byte _0800716C @ case 19
	.4byte _080071F0 @ case 20
	.4byte _0800748A @ case 21
	.4byte _080073D0 @ case 22
	.4byte _08007388 @ case 23
	.4byte _08007464 @ case 24
_08006F90:
	movs r0, #0
	movs r1, #0xb4
	movs r2, #0
	bl sub_80042FC
	movs r0, #0
	movs r1, #0x94
	bl sub_8004338
	cmp r0, #0
	beq _08007008
	movs r0, #0
	movs r1, #0x95
	bl sub_8004338
	cmp r0, #0
	beq _08007008
	movs r0, #0
	movs r1, #0x9b
	bl sub_8004338
	cmp r0, #0
	bne _08006FD8
	movs r0, #0
	movs r1, #0xb8
	bl sub_8004338
	cmp r0, #0
	bne _08006FCE
	movs r0, #0x87
	b _08006FD0
_08006FCE:
	movs r0, #0x88
_08006FD0:
	movs r1, #0x9b
	bl sub_8004434
	b _08006FE8
_08006FD8:
	movs r0, #0xa
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xc
	bl sub_8013998
_08006FE8:
	ldr r1, _08006FF8 @ =0x040000D4
	ldr r0, _08006FFC @ =gUnknown_080224F4
	str r0, [r1]
	ldr r0, _08007000 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08007004 @ =0x80000032
	b _08007486
	.align 2, 0
_08006FF8: .4byte 0x040000D4
_08006FFC: .4byte gUnknown_080224F4
_08007000: .4byte gUnknown_03003C90
_08007004: .4byte 0x80000032
_08007008:
	movs r0, #0
	movs r1, #0x9a
	bl sub_8004338
	cmp r0, #0
	bne _0800701E
	movs r0, #0x81
	movs r1, #0x9a
	bl sub_8004434
	b _0800702E
_0800701E:
	movs r0, #0x14
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xd7
	bl sub_8013998
_0800702E:
	ldr r1, _0800703C @ =0x040000D4
	ldr r0, _08007040 @ =gUnknown_08022490
	str r0, [r1]
	ldr r0, _08007044 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08007048 @ =0x80000032
	b _08007486
	.align 2, 0
_0800703C: .4byte 0x040000D4
_08007040: .4byte gUnknown_08022490
_08007044: .4byte gUnknown_03003C90
_08007048: .4byte 0x80000032
_0800704C:
	movs r0, #0
	movs r1, #0x99
	bl sub_8004338
	cmp r0, #0
	beq _080070C0
	movs r0, #0
	movs r1, #0x9e
	bl sub_8004338
	cmp r0, #0
	bne _0800706E
	movs r0, #0xfc
	movs r1, #0x9e
	bl sub_8004434
	b _080070A2
_0800706E:
	ldr r2, _0800708C @ =0x00003CB4
	movs r0, #0x24
	adds r1, r2, #0
	bl sub_8004400
	movs r0, #0
	movs r1, #0xbf
	bl sub_8004338
	cmp r0, #0
	beq _08007090
	movs r0, #0xcb
	bl sub_8013998
	b _080070A2
	.align 2, 0
_0800708C: .4byte 0x00003CB4
_08007090:
	movs r0, #0
	movs r1, #0xbe
	bl sub_8004338
	cmp r0, #0
	bne _080070A2
	movs r0, #0xd6
	bl sub_8013998
_080070A2:
	ldr r1, _080070B0 @ =0x040000D4
	ldr r0, _080070B4 @ =gUnknown_08022580
	str r0, [r1]
	ldr r0, _080070B8 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _080070BC @ =0x80000014
	b _08007486
	.align 2, 0
_080070B0: .4byte 0x040000D4
_080070B4: .4byte gUnknown_08022580
_080070B8: .4byte gUnknown_03003C90
_080070BC: .4byte 0x80000014
_080070C0:
	movs r0, #0
	movs r1, #0x90
	bl sub_8004338
	cmp r0, #0
	beq _08007138
	movs r0, #0
	movs r1, #0x9d
	bl sub_8004338
	cmp r0, #0
	bne _080070E2
	movs r0, #0xa6
	movs r1, #0x9d
	bl sub_8004434
	b _08007118
_080070E2:
	movs r0, #0
	movs r1, #0xaa
	bl sub_8004338
	cmp r0, #0
	beq _08007110
	movs r0, #0
	movs r1, #0xbc
	bl sub_8004338
	cmp r0, #0
	bne _08007110
	movs r0, #0
	movs r1, #0xbd
	bl sub_8004338
	cmp r0, #0
	bne _08007110
	movs r0, #0xab
	movs r1, #0xbd
	bl sub_8004434
	b _08007118
_08007110:
	movs r0, #0xa7
	movs r1, #0xff
	bl sub_8004434
_08007118:
	ldr r1, _08007128 @ =0x040000D4
	ldr r0, _0800712C @ =gUnknown_08022580
	str r0, [r1]
	ldr r0, _08007130 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08007134 @ =0x80000014
	b _08007486
	.align 2, 0
_08007128: .4byte 0x040000D4
_0800712C: .4byte gUnknown_08022580
_08007130: .4byte gUnknown_03003C90
_08007134: .4byte 0x80000014
_08007138:
	movs r0, #0
	movs r1, #0x9c
	bl sub_8004338
	cmp r0, #0
	bne _0800714C
	movs r0, #0xa3
	movs r1, #0x9c
	bl sub_8004434
_0800714C:
	ldr r1, _0800715C @ =0x040000D4
	ldr r0, _08007160 @ =gUnknown_08022558
	str r0, [r1]
	ldr r0, _08007164 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08007168 @ =0x80000014
	b _08007486
	.align 2, 0
_0800715C: .4byte 0x040000D4
_08007160: .4byte gUnknown_08022558
_08007164: .4byte gUnknown_03003C90
_08007168: .4byte 0x80000014
_0800716C:
	movs r0, #0
	movs r1, #0x9f
	bl sub_8004338
	cmp r0, #0
	bne _08007188
	ldr r0, _08007184 @ =0x00000105
	movs r1, #0x9f
	bl sub_8004434
	b _08007198
	.align 2, 0
_08007184: .4byte 0x00000105
_08007188:
	movs r0, #0x27
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xda
	bl sub_8013998
_08007198:
	ldr r1, _080071A8 @ =0x040000D4
	ldr r0, _080071AC @ =gUnknown_080225A8
	str r0, [r1]
	ldr r0, _080071B0 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _080071B4 @ =0x80000064
	b _08007486
	.align 2, 0
_080071A8: .4byte 0x040000D4
_080071AC: .4byte gUnknown_080225A8
_080071B0: .4byte gUnknown_03003C90
_080071B4: .4byte 0x80000064
_080071B8:
	bl LoadCurrentScriptIntoRam
	movs r0, #0
	movs r1, #0xa1
	bl sub_8004338
	cmp r0, #0
	bne _080071D2
	movs r0, #0x88
	lsls r0, r0, #1
	movs r1, #0xa1
	bl sub_8004434
_080071D2:
	ldr r1, _080071E0 @ =0x040000D4
	ldr r0, _080071E4 @ =gUnknown_08022670
	str r0, [r1]
	ldr r0, _080071E8 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _080071EC @ =0x8000005A
	b _08007486
	.align 2, 0
_080071E0: .4byte 0x040000D4
_080071E4: .4byte gUnknown_08022670
_080071E8: .4byte gUnknown_03003C90
_080071EC: .4byte 0x8000005A
_080071F0:
	movs r0, #0
	movs r1, #0xa0
	bl sub_8004338
	cmp r0, #0
	bne _08007206
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0xa0
	bl sub_8004434
_08007206:
	ldr r1, _0800720C @ =0x040000D4
	ldr r0, _08007210 @ =gUnknown_08022724
	b _0800747E
	.align 2, 0
_0800720C: .4byte 0x040000D4
_08007210: .4byte gUnknown_08022724
_08007214:
	movs r0, #0
	movs r1, #0xb4
	movs r2, #1
	bl sub_80042FC
	movs r0, #0
	movs r1, #0xa2
	bl sub_8004338
	cmp r0, #0
	beq _0800723A
	movs r0, #0x14
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xc
	bl sub_8013998
_0800723A:
	ldr r1, _08007248 @ =0x040000D4
	ldr r0, _0800724C @ =gUnknown_080227C4
	str r0, [r1]
	ldr r0, _08007250 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08007254 @ =0x800000BE
	b _08007486
	.align 2, 0
_08007248: .4byte 0x040000D4
_0800724C: .4byte gUnknown_080227C4
_08007250: .4byte gUnknown_03003C90
_08007254: .4byte 0x800000BE
_08007258:
	ldr r1, _080072A0 @ =0x040000D4
	ldr r0, _080072A4 @ =gUnknown_08022940
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _080072A8 @ =0x80000046
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0x96
	bl sub_8004338
	cmp r0, #0
	beq _080072D0
	movs r0, #0
	movs r1, #0xbc
	bl sub_8004338
	cmp r0, #0
	beq _080072D0
	movs r0, #0
	movs r1, #0xa5
	bl sub_8004338
	cmp r0, #0
	bne _080072B0
	ldr r2, _080072AC @ =0x00005804
	movs r0, #8
	adds r1, r2, #0
	bl sub_8004400
	movs r0, #0xa8
	lsls r0, r0, #1
	movs r1, #0xa5
	bl sub_8004434
	b _0800735C
	.align 2, 0
_080072A0: .4byte 0x040000D4
_080072A4: .4byte gUnknown_08022940
_080072A8: .4byte 0x80000046
_080072AC: .4byte 0x00005804
_080072B0:
	movs r0, #0
	movs r1, #0x97
	bl sub_8004338
	cmp r0, #0
	bne _0800735C
	ldr r2, _080072CC @ =0x00003C68
	movs r0, #8
	adds r1, r2, #0
	bl sub_8004400
	movs r0, #0xc
	b _08007358
	.align 2, 0
_080072CC: .4byte 0x00003C68
_080072D0:
	movs r0, #0
	movs r1, #0x91
	bl sub_8004338
	cmp r0, #0
	beq _0800736C
	movs r0, #0
	movs r1, #0x92
	bl sub_8004338
	cmp r0, #0
	beq _0800736C
	movs r0, #0
	movs r1, #0x93
	bl sub_8004338
	cmp r0, #0
	beq _0800736C
	movs r0, #0
	movs r1, #0xa4
	bl sub_8004338
	cmp r0, #0
	bne _0800730C
	movs r0, #0x9d
	lsls r0, r0, #1
	movs r1, #0xa4
	bl sub_8004434
	b _0800735C
_0800730C:
	movs r0, #0
	movs r1, #0x94
	bl sub_8004338
	cmp r0, #0
	beq _0800734C
	movs r0, #0
	movs r1, #0x9b
	bl sub_8004338
	cmp r0, #0
	bne _0800734C
	movs r0, #0
	movs r1, #0x95
	bl sub_8004338
	cmp r0, #0
	beq _0800734C
	movs r0, #0
	movs r1, #0xb8
	bl sub_8004338
	cmp r0, #0
	bne _0800734C
	ldr r0, _08007348 @ =0x0000013B
	movs r1, #0xb8
	bl sub_8004434
	b _0800735C
	.align 2, 0
_08007348: .4byte 0x0000013B
_0800734C:
	movs r0, #0x28
	movs r1, #0
	movs r2, #0
	bl sub_8004400
	movs r0, #0xd1
_08007358:
	bl sub_8013998
_0800735C:
	ldr r1, _08007368 @ =gUnknown_03003C90
	movs r0, #0x9e
	lsls r0, r0, #1
	strh r0, [r1, #0x14]
	b _0800748A
	.align 2, 0
_08007368: .4byte gUnknown_03003C90
_0800736C:
	movs r0, #0
	movs r1, #0xa3
	bl sub_8004338
	cmp r0, #0
	beq _0800737A
	b _0800748A
_0800737A:
	ldr r0, _08007384 @ =0x00000133
	movs r1, #0xa3
	bl sub_8004434
	b _0800748A
	.align 2, 0
_08007384: .4byte 0x00000133
_08007388:
	movs r0, #0
	movs r1, #0x99
	bl sub_8004338
	cmp r0, #0
	bne _0800739A
	movs r0, #0x1d
	bl sub_801480C
_0800739A:
	movs r0, #0
	movs r1, #0xa8
	bl sub_8004338
	cmp r0, #0
	bne _080073AE
	ldr r0, _080073BC @ =0x00000157
	movs r1, #0xa8
	bl sub_8004458
_080073AE:
	ldr r1, _080073C0 @ =0x040000D4
	ldr r0, _080073C4 @ =gUnknown_080229CC
	str r0, [r1]
	ldr r0, _080073C8 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _080073CC @ =0x80000032
	b _08007486
	.align 2, 0
_080073BC: .4byte 0x00000157
_080073C0: .4byte 0x040000D4
_080073C4: .4byte gUnknown_080229CC
_080073C8: .4byte gUnknown_03003C90
_080073CC: .4byte 0x80000032
_080073D0:
	movs r0, #0
	movs r1, #0x97
	bl sub_8004338
	cmp r0, #0
	beq _08007428
	movs r0, #0
	movs r1, #0x98
	bl sub_8004338
	cmp r0, #0
	bne _080073EE
	movs r0, #0x1f
	bl sub_801480C
_080073EE:
	movs r0, #0
	movs r1, #0xa7
	bl sub_8004338
	cmp r0, #0
	bne _08007408
	ldr r0, _08007404 @ =0x0000016B
	movs r1, #0xa7
	bl sub_8004434
	b _0800741A
	.align 2, 0
_08007404: .4byte 0x0000016B
_08007408:
	movs r0, #0
	movs r1, #0x99
	bl sub_8004338
	cmp r0, #0
	bne _0800741A
	movs r0, #0xec
	bl sub_8013998
_0800741A:
	ldr r1, _08007420 @ =0x040000D4
	ldr r0, _08007424 @ =gUnknown_08022ABC
	b _0800747E
	.align 2, 0
_08007420: .4byte 0x040000D4
_08007424: .4byte gUnknown_08022ABC
_08007428:
	movs r0, #0
	movs r1, #0xa6
	bl sub_8004338
	cmp r0, #0
	bne _08007440
	movs r0, #0xb2
	lsls r0, r0, #1
	movs r1, #0xa6
	bl sub_8004434
	b _08007446
_08007440:
	movs r0, #0xee
	bl sub_8013998
_08007446:
	ldr r1, _08007454 @ =0x040000D4
	ldr r0, _08007458 @ =gUnknown_08022A30
	str r0, [r1]
	ldr r0, _0800745C @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _08007460 @ =0x80000046
	b _08007486
	.align 2, 0
_08007454: .4byte 0x040000D4
_08007458: .4byte gUnknown_08022A30
_0800745C: .4byte gUnknown_03003C90
_08007460: .4byte 0x80000046
_08007464:
	movs r0, #0
	movs r1, #0xa9
	bl sub_8004338
	cmp r0, #0
	bne _0800747A
	movs r0, #0xae
	lsls r0, r0, #1
	movs r1, #0xa9
	bl sub_8004434
_0800747A:
	ldr r1, _08007490 @ =0x040000D4
	ldr r0, _08007494 @ =gUnknown_08022B5C
_0800747E:
	str r0, [r1]
	ldr r0, _08007498 @ =gUnknown_03003C90
	str r0, [r1, #4]
	ldr r0, _0800749C @ =0x80000050
_08007486:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0800748A:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08007490: .4byte 0x040000D4
_08007494: .4byte gUnknown_08022B5C
_08007498: .4byte gUnknown_03003C90
_0800749C: .4byte 0x80000050

	thumb_func_start nullsub_11
nullsub_11: @ 0x080074A0
	bx lr
	.align 2, 0

	thumb_func_start LoadCurrentScriptIntoRam
LoadCurrentScriptIntoRam: @ 0x080074A4
	push {r4, r5, r6, lr}
	ldr r1, _080074E8 @ =0x040000D4
	ldr r0, _080074EC @ =gUnknown_081AE388
	str r0, [r1]
	ldr r0, _080074F0 @ =0x05000200
	str r0, [r1, #4]
	ldr r0, _080074F4 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0
	ldr r5, _080074F8 @ =gUnknown_08022BFC
	ldr r4, _080074FC @ =gMain
	ldr r3, _08007500 @ =0x00007FFF
	ldr r1, _08007504 @ =gTextBoxCharacters
_080074C0:
	adds r0, r3, #0
	ldrh r6, [r1]
	ands r0, r6
	strh r0, [r1]
	adds r1, #0xc
	adds r2, #1
	cmp r2, #0x3e
	bls _080074C0
	adds r0, r4, #0
	adds r0, #0xb3
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r1, _08007508 @ =gUnknown_02011FC0
	bl LZ77UnCompWram
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080074E8: .4byte 0x040000D4
_080074EC: .4byte gUnknown_081AE388
_080074F0: .4byte 0x05000200
_080074F4: .4byte 0x80000010
_080074F8: .4byte gUnknown_08022BFC
_080074FC: .4byte gMain
_08007500: .4byte 0x00007FFF
_08007504: .4byte gTextBoxCharacters
_08007508: .4byte gUnknown_02011FC0

	thumb_func_start RunScriptContext
RunScriptContext: @ 0x0800750C
	push {lr}
	ldr r1, _08007530 @ =gMain
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	beq _08007526
	adds r0, r1, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _08007526
	ldr r0, _08007534 @ =gScriptContext
	bl sub_800765C
_08007526:
	ldr r0, _08007534 @ =gScriptContext
	bl sub_80079A4
	pop {r0}
	bx r0
	.align 2, 0
_08007530: .4byte gMain
_08007534: .4byte gScriptContext

	thumb_func_start sub_8007538
sub_8007538: @ 0x08007538
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08007560 @ =gScriptContext
	ldrh r0, [r4, #0x1e]
	strh r0, [r4, #0x22]
	ldr r0, _08007564 @ =gMain
	ldrh r1, [r4, #0x1e]
	bl sub_8007CCC
	strh r5, [r4, #0x1e]
	adds r0, r4, #0
	bl sub_8007568
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007560: .4byte gScriptContext
_08007564: .4byte gMain

	thumb_func_start sub_8007568
sub_8007568: @ 0x08007568
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	movs r3, #0
	ldr r5, _080075F8 @ =gMain
	ldr r4, _080075FC @ =0x00007FFF
	ldr r1, _08007600 @ =gTextBoxCharacters
_08007574:
	adds r0, r4, #0
	ldrh r6, [r1]
	ands r0, r6
	strh r0, [r1]
	adds r1, #0xc
	adds r3, #1
	cmp r3, #0x3e
	bls _08007574
	movs r3, #0
	strb r3, [r2, #0xe]
	strb r3, [r2, #0xf]
	ldr r0, _08007604 @ =0x00000804
	ldrh r5, [r5, #8]
	cmp r5, r0
	beq _08007594
	strb r3, [r2, #0x13]
_08007594:
	strb r3, [r2, #0x15]
	movs r0, #8
	strb r0, [r2, #0x14]
	movs r0, #1
	strb r0, [r2, #0x16]
	strb r3, [r2, #0x17]
	movs r1, #0
	movs r0, #9
	strh r0, [r2, #0x18]
	movs r0, #0x74
	strh r0, [r2, #0x1a]
	ldrh r0, [r2, #0x1e]
	adds r0, #1
	strh r0, [r2, #0x20]
	strh r3, [r2, #0x2c]
	adds r0, r2, #0
	adds r0, #0x2e
	strb r1, [r0]
	adds r0, #6
	strb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	strh r3, [r2]
	strh r3, [r2, #2]
	subs r0, #0x13
	strb r1, [r0]
	adds r3, r2, #0
	adds r3, #0x25
	movs r0, #3
	strb r0, [r3]
	adds r3, #1
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x27
	strb r1, [r0]
	movs r0, #0x18
	strh r0, [r2, #0x28]
	movs r0, #0x46
	strh r0, [r2, #0x2a]
	ldrh r0, [r2, #0x1e]
	cmp r0, #0x7f
	bls _08007610
	ldr r1, _08007608 @ =gUnknown_02011FC0
	lsls r0, r0, #2
	ldr r3, _0800760C @ =gUnknown_02011DC0
	adds r0, r0, r3
	b _08007618
	.align 2, 0
_080075F8: .4byte gMain
_080075FC: .4byte 0x00007FFF
_08007600: .4byte gTextBoxCharacters
_08007604: .4byte 0x00000804
_08007608: .4byte gUnknown_02011FC0
_0800760C: .4byte gUnknown_02011DC0
_08007610:
	ldr r1, _08007650 @ =gUnknown_08730AEC
	ldrh r6, [r2, #0x1e]
	lsls r0, r6, #2
	adds r0, r0, r1
_08007618:
	ldr r0, [r0, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
	str r0, [r2, #8]
	ldrh r0, [r1]
	strh r0, [r2, #0x1c]
	ldr r0, _08007654 @ =0x06011800
	str r0, [r2, #0x3c]
	movs r3, #0
	movs r5, #0xff
	movs r2, #0
	movs r4, #0x80
	lsls r4, r4, #2
	ldr r1, _08007658 @ =gUnknown_03003AD0
_08007634:
	ldrb r0, [r1]
	orrs r0, r5
	strb r0, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #5]
	strh r4, [r1, #8]
	adds r1, #0x14
	adds r3, #1
	cmp r3, #7
	bls _08007634
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08007650: .4byte gUnknown_08730AEC
_08007654: .4byte 0x06011800
_08007658: .4byte gUnknown_03003AD0

	thumb_func_start sub_800765C
sub_800765C: @ 0x0800765C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _080076F8 @ =gMain
	adds r0, r5, #0
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080076C6
	ldr r1, _080076FC @ =gJoypad
	movs r0, #1
	ldrh r2, [r1, #2]
	ands r0, r2
	cmp r0, #0
	bne _08007686
	movs r0, #2
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _080076C6
_08007686:
	adds r0, r5, #0
	adds r0, #0x84
	ldrh r1, [r0]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _080076C6
	ldr r0, _08007700 @ =0x0000FFFF
	cmp r1, r0
	beq _080076C6
	subs r0, #1
	cmp r1, r0
	beq _080076C6
	cmp r1, #5
	beq _080076C6
	cmp r1, #6
	beq _080076C6
	ldrh r1, [r4, #0x1e]
	adds r0, r5, #0
	bl sub_8007CFC
	cmp r0, #0
	beq _080076C6
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	bne _080076C2
	ldrb r5, [r5, #8]
	cmp r5, #4
	bne _080076C6
_080076C2:
	movs r0, #2
	strb r0, [r4, #0x13]
_080076C6:
	ldr r0, [r4, #4]
	ldrh r0, [r0]
	movs r5, #0
	strh r0, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x7f
	bhi _0800770C
	ldr r0, _08007704 @ =gUnknown_08112124
	ldrh r2, [r4, #0xc]
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	cmp r0, #1
	bne _080076EC
	b _080077EA
_080076EC:
	cmp r0, #2
	bne _080076C6
	ldr r0, _08007708 @ =gScriptContext
	strb r5, [r0, #0x13]
	b _080076C6
	.align 2, 0
_080076F8: .4byte gMain
_080076FC: .4byte gJoypad
_08007700: .4byte 0x0000FFFF
_08007704: .4byte gUnknown_08112124
_08007708: .4byte gScriptContext
_0800770C:
	adds r6, r4, #0
	adds r6, #0x25
	ldrb r0, [r4, #0x13]
	cmp r0, #1
	bls _08007718
	strb r5, [r6]
_08007718:
	adds r1, r4, #0
	adds r1, #0x27
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r2, [r6]
	cmp r0, r2
	blo _080077EA
	strb r5, [r1]
	ldrh r0, [r4, #0xc]
	subs r0, #0x80
	strh r0, [r4, #0xc]
	movs r0, #4
	ldrh r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _08007756
	ldrh r0, [r4, #0xc]
	ldrb r1, [r4, #0x11]
	ldrb r2, [r4, #0x10]
	bl sub_80077F4
	ldrb r0, [r4, #0x10]
	adds r0, #1
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x12]
	adds r0, #1
	strb r0, [r4, #0x12]
	b _08007766
_08007756:
	ldrh r0, [r4, #0xc]
	ldrb r1, [r4, #0xf]
	ldrb r2, [r4, #0xe]
	bl sub_80077F4
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
_08007766:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	ldrh r2, [r4, #0xc]
	cmp r2, #0xff
	beq _080077C8
	ldrb r1, [r6]
	cmp r1, #0
	beq _080077CE
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	beq _08007782
	cmp r1, #4
	bls _080077C4
_08007782:
	ldrb r2, [r4, #0x17]
	cmp r2, #2
	beq _0800778C
	movs r0, #1
	strb r0, [r4, #0x16]
_0800778C:
	ldr r0, _080077AC @ =gMain
	movs r1, #0x95
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080077C8
	cmp r2, #2
	bne _080077B0
	movs r0, #0x44
	bl sub_8013834
	b _080077C8
	.align 2, 0
_080077AC: .4byte gMain
_080077B0:
	cmp r2, #1
	bne _080077BC
	movs r0, #0x2e
	bl sub_8013834
	b _080077C8
_080077BC:
	movs r0, #0x2d
	bl sub_8013834
	b _080077C8
_080077C4:
	subs r0, #1
	strb r0, [r4, #0x16]
_080077C8:
	ldrb r0, [r6]
	cmp r0, #0
	bne _080077EA
_080077CE:
	ldr r2, _080077F0 @ =gMain
	adds r0, r2, #0
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080077EA
	adds r0, r2, #0
	adds r0, #0x84
	ldrh r0, [r0]
	cmp r0, #0
	bne _080077EA
	b _080076C6
_080077EA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080077F0: .4byte gMain

	thumb_func_start sub_80077F4
sub_80077F4: @ 0x080077F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	adds r7, r1, #0
	adds r5, r2, #0
	lsls r3, r0, #7
	ldr r0, _08007884 @ =gUnknown_081AE3A8
	adds r3, r3, r0
	ldr r0, _08007888 @ =gScriptContext
	adds r6, r0, #0
	adds r6, #0x24
	ldrb r1, [r6]
	cmp r1, #0
	beq _080078BC
	ldr r1, _0800788C @ =0x040000D4
	str r3, [r1]
	ldr r2, _08007890 @ =gUnknown_03003BA0
	str r2, [r1, #4]
	ldr r0, _08007894 @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r4, r2, #0
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r3, r0, r1
	movs r2, #0
	lsls r6, r5, #7
	mov sb, r6
	lsls r0, r5, #2
	mov ip, r0
	movs r1, #0xf
	mov sl, r1
	movs r6, #0xf0
	mov r8, r6
	lsls r0, r3, #4
	str r0, [sp, #4]
_08007844:
	ldrb r1, [r4]
	adds r0, r1, #0
	mov r6, sl
	ands r0, r6
	mov r6, r8
	ands r1, r6
	cmp r0, #0
	beq _08007856
	adds r0, r0, r3
_08007856:
	cmp r1, #0
	beq _0800785E
	ldr r6, [sp, #4]
	adds r1, r1, r6
_0800785E:
	orrs r0, r1
	strb r0, [r4]
	adds r4, #1
	adds r2, #1
	cmp r2, #0x7f
	bls _08007844
	ldr r2, _08007898 @ =0x06010000
	add r2, sb
	movs r0, #4
	ldr r1, _08007888 @ =gScriptContext
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800789C
	movs r3, #0x80
	lsls r3, r3, #5
	adds r2, r2, r3
	b _080078A0
	.align 2, 0
_08007884: .4byte gUnknown_081AE3A8
_08007888: .4byte gScriptContext
_0800788C: .4byte 0x040000D4
_08007890: .4byte gUnknown_03003BA0
_08007894: .4byte 0x80000040
_08007898: .4byte 0x06010000
_0800789C:
	lsls r0, r7, #0xb
	adds r2, r2, r0
_080078A0:
	ldr r0, _080078B0 @ =0x040000D4
	ldr r4, _080078B4 @ =gUnknown_03003BA0
	str r4, [r0]
	str r2, [r0, #4]
	ldr r1, _080078B8 @ =0x80000040
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b _080078F4
	.align 2, 0
_080078B0: .4byte 0x040000D4
_080078B4: .4byte gUnknown_03003BA0
_080078B8: .4byte 0x80000040
_080078BC:
	lsls r0, r5, #7
	ldr r6, _080078D8 @ =0x06010000
	adds r2, r0, r6
	movs r0, #4
	ldr r1, _080078DC @ =gScriptContext
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _080078E0
	movs r4, #0x80
	lsls r4, r4, #5
	adds r2, r2, r4
	b _080078E4
	.align 2, 0
_080078D8: .4byte 0x06010000
_080078DC: .4byte gScriptContext
_080078E0:
	lsls r0, r7, #0xb
	adds r2, r2, r0
_080078E4:
	ldr r0, _08007930 @ =0x040000D4
	str r3, [r0]
	str r2, [r0, #4]
	ldr r1, _08007934 @ =0x80000040
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	lsls r6, r5, #2
	mov ip, r6
_080078F4:
	movs r0, #4
	ldr r1, _08007938 @ =gScriptContext
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08007940
	adds r3, r5, #0
	adds r3, #0x20
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r2, _0800793C @ =gTextBoxCharacters
	adds r1, r1, r2
	ldr r4, _08007938 @ =gScriptContext
	ldrb r4, [r4, #0x12]
	lsls r0, r4, #3
	ldr r6, _08007938 @ =gScriptContext
	ldrb r6, [r6, #0x12]
	subs r0, r0, r6
	lsls r0, r0, #1
	strh r0, [r1, #4]
	subs r2, r7, #2
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	strh r0, [r1, #6]
	mov r0, ip
	adds r0, #0x80
	b _08007962
	.align 2, 0
_08007930: .4byte 0x040000D4
_08007934: .4byte 0x80000040
_08007938: .4byte gScriptContext
_0800793C: .4byte gTextBoxCharacters
_08007940:
	lsls r0, r7, #4
	adds r3, r5, r0
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r0, _0800799C @ =gTextBoxCharacters
	adds r1, r1, r0
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #1
	strh r0, [r1, #4]
	lsls r0, r7, #3
	adds r0, r0, r7
	lsls r0, r0, #1
	strh r0, [r1, #6]
	lsls r0, r7, #6
	add r0, ip
_08007962:
	strh r0, [r1, #2]
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _0800799C @ =gTextBoxCharacters
	adds r0, r0, r1
	ldrh r2, [r0, #2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r2, r3
	strh r1, [r0, #2]
	movs r4, #0x80
	lsls r4, r4, #8
	adds r1, r4, #0
	ldr r6, [sp]
	orrs r6, r1
	strh r6, [r0]
	ldr r1, _080079A0 @ =gScriptContext
	adds r1, #0x24
	ldrb r1, [r1]
	strb r1, [r0, #8]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800799C: .4byte gTextBoxCharacters
_080079A0: .4byte gScriptContext

	thumb_func_start sub_80079A4
sub_80079A4: @ 0x080079A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r0, #4
	ldrh r1, [r7]
	ands r0, r1
	cmp r0, #0
	beq _080079BC
	b _08007ACC
_080079BC:
	ldr r4, _08007A38 @ =gOamObjects+0x10
	movs r6, #0xdc
	lsls r6, r6, #1
	adds r5, r4, r6
	ldr r0, _08007A3C @ =gUnknown_03003AD0
	mov sb, r0
	movs r1, #0x80
	lsls r1, r1, #2
	mov sl, r1
	movs r4, #0xff
	mov r8, r4
	adds r6, #0x47
	mov ip, r6
	mov r3, sb
_080079D8:
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _08007ABC
	ldrh r0, [r3, #8]
	strh r0, [r5]
	ldrh r0, [r3, #0xa]
	strh r0, [r5, #2]
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _080079FE
	ldrb r1, [r3, #2]
	adds r1, #1
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r3, #2]
	cmp r1, #0xf
	bhi _080079FE
	mov r0, sl
	strh r0, [r5]
_080079FE:
	ldrb r6, [r3, #5]
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	beq _08007AAC
	ldrb r4, [r3, #3]
	ldrb r0, [r3, #7]
	adds r1, r4, r0
	strb r1, [r3, #7]
	ldrb r2, [r3, #6]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	blo _08007A26
	subs r0, r1, r2
	subs r0, r4, r0
	strb r0, [r3, #3]
	movs r0, #0xfd
	ands r0, r6
	strb r0, [r3, #5]
_08007A26:
	ldrb r0, [r3, #4]
	cmp r0, #1
	beq _08007A60
	cmp r0, #1
	bgt _08007A40
	cmp r0, #0
	beq _08007A4A
	b _08007AAC
	.align 2, 0
_08007A38: .4byte gOamObjects+0x10
_08007A3C: .4byte gUnknown_03003AD0
_08007A40:
	cmp r0, #2
	beq _08007A7C
	cmp r0, #3
	beq _08007A92
	b _08007AAC
_08007A4A:
	ldrh r1, [r3, #8]
	mov r2, r8
	ands r2, r1
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	ldrb r1, [r3, #3]
	subs r2, r2, r1
	mov r4, r8
	ands r2, r4
	b _08007A74
_08007A60:
	ldrh r1, [r3, #8]
	mov r2, r8
	ands r2, r1
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	ldrb r6, [r3, #3]
	adds r2, r6, r2
	mov r1, r8
	ands r2, r1
_08007A74:
	adds r0, r0, r2
	strh r0, [r3, #8]
	strh r0, [r5]
	b _08007AAC
_08007A7C:
	ldrh r1, [r3, #0xa]
	mov r2, ip
	ands r2, r1
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r1
	ldrb r4, [r3, #3]
	subs r2, r2, r4
	mov r6, ip
	ands r2, r6
	b _08007AA6
_08007A92:
	ldrh r1, [r3, #0xa]
	mov r2, ip
	ands r2, r1
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r1
	ldrb r1, [r3, #3]
	adds r2, r1, r2
	mov r4, ip
	ands r2, r4
_08007AA6:
	adds r0, r0, r2
	strh r0, [r3, #0xa]
	strh r0, [r5, #2]
_08007AAC:
	movs r0, #4
	ldrb r6, [r3, #5]
	ands r0, r6
	cmp r0, #0
	beq _08007AC0
	mov r0, sl
	strh r0, [r5]
	b _08007AC0
_08007ABC:
	mov r1, sl
	strh r1, [r5]
_08007AC0:
	adds r5, #8
	adds r3, #0x14
	mov r0, sb
	adds r0, #0x8c
	cmp r3, r0
	bls _080079D8
_08007ACC:
	ldr r4, _08007B1C @ =gMain
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	beq _08007B92
	movs r0, #0x80
	lsls r0, r0, #4
	ldrh r6, [r7]
	ands r0, r6
	movs r3, #0x20
	cmp r0, #0
	beq _08007AE4
	movs r3, #0x30
_08007AE4:
	ldr r5, _08007B20 @ =gOamObjects+0x10
	movs r1, #0
	cmp r1, r3
	bhs _08007B38
	movs r0, #0x80
	lsls r0, r0, #8
	mov r8, r0
	ldr r2, _08007B24 @ =gTextBoxCharacters
_08007AF4:
	mov r0, r8
	ldrh r4, [r2]
	ands r0, r4
	cmp r0, #0
	beq _08007B28
	ldrh r6, [r2, #6]
	ldrh r4, [r7, #0x1a]
	adds r0, r6, r4
	strh r0, [r5]
	ldrh r6, [r2, #4]
	ldrh r4, [r7, #0x18]
	adds r0, r6, r4
	movs r6, #0x80
	lsls r6, r6, #7
	adds r0, r0, r6
	strh r0, [r5, #2]
	ldrh r0, [r2, #2]
	strh r0, [r5, #4]
	b _08007B2E
	.align 2, 0
_08007B1C: .4byte gMain
_08007B20: .4byte gOamObjects+0x10
_08007B24: .4byte gTextBoxCharacters
_08007B28:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
_08007B2E:
	adds r5, #8
	adds r2, #0xc
	adds r1, #1
	cmp r1, r3
	blo _08007AF4
_08007B38:
	movs r0, #4
	ldrh r1, [r7]
	ands r0, r1
	cmp r0, #0
	beq _08007BD4
	ldr r5, _08007B78 @ =gOamObjects+0x1D0
	movs r1, #0x20
	ldr r0, _08007B7C @ =gTextBoxCharacters
	movs r3, #0x80
	lsls r3, r3, #8
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r2, r0, r4
_08007B52:
	adds r0, r3, #0
	ldrh r6, [r2]
	ands r0, r6
	cmp r0, #0
	beq _08007B80
	ldrh r4, [r2, #6]
	ldrh r6, [r7, #0x2a]
	adds r0, r4, r6
	strh r0, [r5]
	ldrh r4, [r2, #4]
	ldrh r6, [r7, #0x28]
	adds r0, r4, r6
	movs r4, #0x80
	lsls r4, r4, #7
	adds r0, r0, r4
	strh r0, [r5, #2]
	ldrh r0, [r2, #2]
	strh r0, [r5, #4]
	b _08007B86
	.align 2, 0
_08007B78: .4byte gOamObjects+0x1D0
_08007B7C: .4byte gTextBoxCharacters
_08007B80:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
_08007B86:
	adds r5, #8
	adds r2, #0xc
	adds r1, #1
	cmp r1, #0x3e
	bls _08007B52
	b _08007BD4
_08007B92:
	movs r0, #0x80
	lsls r0, r0, #4
	ldrh r6, [r7]
	ands r0, r6
	movs r3, #0x20
	cmp r0, #0
	beq _08007BA2
	movs r3, #0x30
_08007BA2:
	ldr r5, _08007BE4 @ =gOamObjects+0x10
	movs r1, #0
	cmp r1, r3
	bhs _08007BB8
	movs r0, #0x80
	lsls r0, r0, #2
_08007BAE:
	strh r0, [r5]
	adds r5, #8
	adds r1, #1
	cmp r1, r3
	blo _08007BAE
_08007BB8:
	movs r0, #4
	ldrh r7, [r7]
	ands r0, r7
	cmp r0, #0
	beq _08007BD4
	ldr r5, _08007BE8 @ =gOamObjects+0x1D0
	movs r1, #0x20
	movs r0, #0x80
	lsls r0, r0, #2
_08007BCA:
	strh r0, [r5]
	adds r5, #8
	adds r1, #1
	cmp r1, #0x3e
	bls _08007BCA
_08007BD4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007BE4: .4byte gOamObjects+0x10
_08007BE8: .4byte gOamObjects+0x1D0

	thumb_func_start sub_8007BEC
sub_8007BEC: @ 0x08007BEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r6, #0
	ldr r5, _08007C84 @ =0x040000D4
	ldr r0, _08007C88 @ =0x80000040
	mov sl, r0
_08007C00:
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _08007C8C @ =gTextBoxCharacters
	adds r2, r0, r1
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	adds r3, r6, #1
	mov sb, r3
	cmp r0, #0
	beq _08007CB0
	ldr r3, _08007C90 @ =0x00007FFF
	ands r3, r1
	lsls r3, r3, #7
	ldr r7, _08007C94 @ =gUnknown_081AE3A8
	adds r3, r3, r7
	ldrb r0, [r2, #8]
	cmp r0, #0
	beq _08007CA0
	str r3, [r5]
	ldr r0, _08007C98 @ =gUnknown_03003BA0
	str r0, [r5, #4]
	mov r1, sl
	str r1, [r5, #8]
	ldr r0, [r5, #8]
	ldr r4, _08007C98 @ =gUnknown_03003BA0
	ldrb r3, [r2, #8]
	lsls r0, r3, #1
	adds r3, r0, r3
	movs r0, #0
	lsls r6, r6, #7
	str r6, [sp]
	movs r7, #0xf
	mov r8, r7
	movs r1, #0xf0
	mov ip, r1
	lsls r6, r3, #4
_08007C4E:
	ldrb r2, [r4]
	adds r1, r2, #0
	mov r7, r8
	ands r1, r7
	mov r7, ip
	ands r2, r7
	cmp r1, #0
	beq _08007C60
	adds r1, r1, r3
_08007C60:
	cmp r2, #0
	beq _08007C66
	adds r2, r2, r6
_08007C66:
	orrs r1, r2
	strb r1, [r4]
	adds r4, #1
	adds r0, #1
	cmp r0, #0x7f
	bls _08007C4E
	ldr r1, [sp]
	ldr r2, _08007C9C @ =0x06010000
	adds r0, r1, r2
	ldr r3, _08007C98 @ =gUnknown_03003BA0
	str r3, [r5]
	str r0, [r5, #4]
	mov r7, sl
	str r7, [r5, #8]
	b _08007CAE
	.align 2, 0
_08007C84: .4byte 0x040000D4
_08007C88: .4byte 0x80000040
_08007C8C: .4byte gTextBoxCharacters
_08007C90: .4byte 0x00007FFF
_08007C94: .4byte gUnknown_081AE3A8
_08007C98: .4byte gUnknown_03003BA0
_08007C9C: .4byte 0x06010000
_08007CA0:
	lsls r0, r6, #7
	ldr r1, _08007CC8 @ =0x06010000
	adds r0, r0, r1
	str r3, [r5]
	str r0, [r5, #4]
	mov r2, sl
	str r2, [r5, #8]
_08007CAE:
	ldr r0, [r5, #8]
_08007CB0:
	mov r6, sb
	cmp r6, #0x3e
	bls _08007C00
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007CC8: .4byte 0x06010000

	thumb_func_start sub_8007CCC
sub_8007CCC: @ 0x08007CCC
	adds r2, r0, #0
	ldr r0, _08007CF8 @ =0x0000FFFF
	cmp r1, r0
	beq _08007CF4
	subs r1, #0x80
	cmp r1, #0
	blt _08007CF4
	asrs r0, r1, #5
	lsls r3, r0, #5
	subs r3, r1, r3
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r2, r1
	adds r2, r2, r0
	movs r1, #1
	lsls r1, r3
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_08007CF4:
	bx lr
	.align 2, 0
_08007CF8: .4byte 0x0000FFFF

	thumb_func_start sub_8007CFC
sub_8007CFC: @ 0x08007CFC
	adds r2, r0, #0
	ldr r0, _08007D10 @ =0x0000FFFF
	cmp r1, r0
	beq _08007D0A
	subs r1, #0x80
	cmp r1, #0
	bge _08007D14
_08007D0A:
	movs r0, #0
	b _08007D2C
	.align 2, 0
_08007D10: .4byte 0x0000FFFF
_08007D14:
	asrs r0, r1, #5
	lsls r3, r0, #5
	subs r3, r1, r3
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r2, r1
	adds r2, r2, r0
	movs r1, #1
	lsls r1, r3
	ldr r0, [r2]
	ands r0, r1
_08007D2C:
	bx lr
	.align 2, 0

	thumb_func_start sub_8007D30
sub_8007D30: @ 0x08007D30
	push {r4, r5, lr}
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r3, #0
	adds r4, r0, #0
	adds r4, #0xe0
_08007D40:
	lsls r1, r2, #2
	adds r0, r5, r1
	str r3, [r0]
	adds r1, r4, r1
	str r3, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #7
	bls _08007D40
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8007D5C
sub_8007D5C: @ 0x08007D5C
	push {r4, lr}
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r3, r0, r1
	ldr r4, _08007D84 @ =gUnknown_02000134
_08007D68:
	lsls r0, r2, #2
	adds r1, r3, r0
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #7
	bls _08007D68
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007D84: .4byte gUnknown_02000134

	thumb_func_start sub_8007D88
sub_8007D88: @ 0x08007D88
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_8007D94
sub_8007D94: @ 0x08007D94
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8007568
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8007DAC
sub_8007DAC: @ 0x08007DAC
	adds r1, r0, #0
	movs r0, #4
	ldrh r2, [r1]
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08007DC8
	movs r0, #0
	strb r0, [r1, #0x12]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	b _08007DD0
_08007DC8:
	strb r0, [r1, #0xe]
	ldrb r0, [r1, #0xf]
	adds r0, #1
	strb r0, [r1, #0xf]
_08007DD0:
	ldr r0, [r1, #4]
	adds r0, #2
	str r0, [r1, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_8007DDC
sub_8007DDC: @ 0x08007DDC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r2, [r4]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08007E18
	adds r1, r4, #0
	adds r1, #0x32
	ldrb r0, [r1]
	cmp r0, #0
	beq _08007DFA
	subs r0, #1
	strb r0, [r1]
	b _080080F2
_08007DFA:
	ldr r0, _08007E14 @ =0x0000FFDF
	ands r0, r2
	strh r0, [r4]
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	ldrh r1, [r4, #0xc]
	cmp r1, #0xa
	beq _08007E0E
	b _080080F2
_08007E0E:
	adds r0, #2
	str r0, [r4, #4]
	b _080080F2
	.align 2, 0
_08007E14: .4byte 0x0000FFDF
_08007E18:
	ldr r0, _08007F88 @ =gMain
	adds r1, r0, #0
	ldrb r2, [r1, #8]
	cmp r2, #4
	bne _08007E40
	adds r0, #0x84
	ldrh r0, [r0]
	cmp r0, #3
	beq _08007E2E
	cmp r0, #7
	bne _08007E40
_08007E2E:
	adds r0, r1, #0
	adds r0, #0x88
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x86
	strh r0, [r2]
	adds r2, #3
	movs r0, #0x1f
	strb r0, [r2]
_08007E40:
	ldrb r0, [r1, #8]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08007EAC
	bl sub_8017C78
	cmp r0, #0
	beq _08007E56
	b _080080F2
_08007E56:
	bl sub_801715C
	cmp r0, #0
	beq _08007E60
	b _080080F2
_08007E60:
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	beq _08007E6A
	subs r0, #1
	strb r0, [r4, #0x14]
_08007E6A:
	ldr r1, _08007F8C @ =gJoypad
	movs r0, #2
	ldrh r3, [r1]
	ands r0, r3
	cmp r0, #0
	beq _08007E8A
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	beq _08007E8A
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _08007E8A
	movs r0, #2
	ldrh r5, [r4]
	orrs r0, r5
	strh r0, [r4]
_08007E8A:
	ldrh r3, [r4]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _08007EAC
	adds r0, r2, #0
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _08007EAC
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _08007EAC
	movs r0, #2
	orrs r0, r3
	strh r0, [r4]
_08007EAC:
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _08007EBC
	b _08008030
_08007EBC:
	movs r0, #0x2f
	bl sub_8013834
	ldr r0, _08007F90 @ =gUnknown_03002080
	ldr r2, _08007F94 @ =0x000004DC
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #9
	beq _08007ED6
	cmp r0, #0
	beq _08007ED6
	movs r0, #9
	strh r0, [r1]
_08007ED6:
	ldr r0, _08007F90 @ =gUnknown_03002080
	ldr r3, _08007F98 @ =0x000004DE
	adds r1, r0, r3
	ldrh r0, [r1]
	cmp r0, #9
	beq _08007EEA
	cmp r0, #0
	beq _08007EEA
	movs r0, #9
	strh r0, [r1]
_08007EEA:
	ldr r0, _08007F9C @ =0x0000FFFC
	ldrh r5, [r4]
	ands r0, r5
	movs r5, #0
	strh r0, [r4]
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	beq _08007F0A
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x25
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4, #0x13]
_08007F0A:
	movs r0, #8
	strb r0, [r4, #0x14]
	ldrh r0, [r4, #0xc]
	cmp r0, #7
	bne _08007FB4
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	ldr r1, _08007FA0 @ =0x040000D4
	ldr r0, _08007FA4 @ =gUnknown_081B54A8
	str r0, [r1]
	ldr r0, _08007FA8 @ =0x06011F80
	str r0, [r1, #4]
	ldr r0, _08007FAC @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r4, #0
	adds r0, #0x39
	strb r5, [r0]
	movs r0, #4
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
	adds r2, r4, #0
	adds r2, #0x25
	ldrb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x26
	strb r0, [r1]
	strb r5, [r2]
	adds r1, #0xf
	movs r0, #0x18
	strb r0, [r1]
	movs r0, #0x14
	strh r0, [r4, #0x1a]
	strb r5, [r4, #0xe]
	movs r0, #2
	strb r0, [r4, #0xf]
	strb r5, [r4, #0x10]
	strb r0, [r4, #0x11]
	strb r5, [r4, #0x12]
	ldr r4, _08007F88 @ =gMain
	strb r5, [r4, #0x19]
	movs r0, #1
	bl sub_80035C0
	adds r0, r4, #0
	adds r0, #0x8b
	strb r5, [r0]
	adds r4, #0x8e
	strb r5, [r4]
	movs r2, #0
	movs r3, #0xff
	ldr r1, _08007FB0 @ =gUnknown_03003AD0
_08007F76:
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
	adds r1, #0x14
	adds r2, #1
	cmp r2, #7
	bls _08007F76
	movs r0, #0
	b _080080F4
	.align 2, 0
_08007F88: .4byte gMain
_08007F8C: .4byte gJoypad
_08007F90: .4byte gUnknown_03002080
_08007F94: .4byte 0x000004DC
_08007F98: .4byte 0x000004DE
_08007F9C: .4byte 0x0000FFFC
_08007FA0: .4byte 0x040000D4
_08007FA4: .4byte gUnknown_081B54A8
_08007FA8: .4byte 0x06011F80
_08007FAC: .4byte 0x80000040
_08007FB0: .4byte gUnknown_03003AD0
_08007FB4:
	adds r1, r4, #0
	adds r1, #0x32
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #0x20
	ldrh r2, [r4]
	orrs r0, r2
	strh r0, [r4]
	ldrh r3, [r4, #0xc]
	cmp r3, #0xa
	bne _08007FE4
	ldr r0, _08007FE0 @ =gMain
	adds r0, #0x98
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r0, #0
	ble _08007FEE
	ldr r0, [r4, #4]
	ldrh r0, [r0, #2]
	strh r0, [r4, #0x20]
	b _08007FEE
	.align 2, 0
_08007FE0: .4byte gMain
_08007FE4:
	adds r0, r4, #0
	adds r0, #0x36
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
_08007FEE:
	movs r0, #0
	strb r0, [r4, #0xe]
	strb r0, [r4, #0xf]
	movs r2, #0
	ldr r3, _08008020 @ =0x00007FFF
	ldr r1, _08008024 @ =gTextBoxCharacters
_08007FFA:
	adds r0, r3, #0
	ldrh r5, [r1]
	ands r0, r5
	strh r0, [r1]
	adds r1, #0xc
	adds r2, #1
	cmp r2, #0x3e
	bls _08007FFA
	ldrh r4, [r4, #0xc]
	cmp r4, #2
	bne _080080F2
	ldr r0, _08008028 @ =gUnknown_03000844
	ldr r1, _0800802C @ =gMain
	adds r1, #0xb6
	ldrh r1, [r1]
	bl sub_80141E0
	b _080080F2
	.align 2, 0
_08008020: .4byte 0x00007FFF
_08008024: .4byte gTextBoxCharacters
_08008028: .4byte gUnknown_03000844
_0800802C: .4byte gMain
_08008030:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800804C
	ldr r0, _08008078 @ =gUnknown_03000844
	ldr r1, _0800807C @ =gMain
	adds r1, #0xb8
	ldrh r1, [r1]
	bl sub_80141E0
	movs r0, #1
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
_0800804C:
	ldr r0, _0800807C @ =gMain
	ldrb r2, [r0, #8]
	cmp r2, #9
	beq _080080C4
	adds r1, r4, #0
	adds r1, #0x37
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, #0x36
	cmp r0, #1
	bls _08008092
	strb r5, [r1]
	ldrb r0, [r4]
	cmp r0, #0
	bne _08008080
	cmp r2, #7
	bne _08008080
	strb r5, [r4]
	b _08008092
	.align 2, 0
_08008078: .4byte gUnknown_03000844
_0800807C: .4byte gMain
_08008080:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _08008092
	movs r0, #0
	strb r0, [r4]
_08008092:
	ldr r2, _080080B4 @ =gUnknown_03002080
	ldr r1, _080080B8 @ =gUnknown_08022C98
	ldrb r3, [r4]
	adds r0, r3, r1
	ldrb r3, [r0]
	ldr r5, _080080BC @ =0x000004DC
	adds r0, r2, r5
	strh r3, [r0]
	ldrb r4, [r4]
	adds r1, r4, r1
	ldrb r0, [r1]
	adds r0, #1
	ldr r1, _080080C0 @ =0x000004DE
	adds r2, r2, r1
	strh r0, [r2]
	b _080080F2
	.align 2, 0
_080080B4: .4byte gUnknown_03002080
_080080B8: .4byte gUnknown_08022C98
_080080BC: .4byte 0x000004DC
_080080C0: .4byte 0x000004DE
_080080C4:
	adds r0, r4, #0
	adds r0, #0x36
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	ldr r0, _080080FC @ =gUnknown_03002080
	ldr r5, _08008100 @ =0x000004DC
	adds r3, r0, r5
	ldrh r1, [r3]
	cmp r1, #9
	beq _080080E0
	cmp r1, #0
	beq _080080E0
	strh r2, [r3]
_080080E0:
	ldr r2, _08008104 @ =0x000004DE
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #9
	beq _080080F2
	cmp r0, #0
	beq _080080F2
	movs r0, #9
	strh r0, [r1]
_080080F2:
	movs r0, #1
_080080F4:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080080FC: .4byte gUnknown_03002080
_08008100: .4byte 0x000004DC
_08008104: .4byte 0x000004DE

	thumb_func_start sub_8008108
sub_8008108: @ 0x08008108
	ldr r2, [r0, #4]
	adds r1, r2, #2
	str r1, [r0, #4]
	ldrh r2, [r2, #2]
	adds r1, r0, #0
	adds r1, #0x24
	strb r2, [r1]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr

	thumb_func_start sub_8008120
sub_8008120: @ 0x08008120
	adds r2, r0, #0
	ldr r0, _08008138 @ =gJoypad
	ldr r1, [r2, #4]
	ldrh r0, [r0, #2]
	ldrh r3, [r1, #2]
	ands r0, r3
	cmp r0, #0
	beq _08008134
	adds r0, r1, #4
	str r0, [r2, #4]
_08008134:
	movs r0, #1
	bx lr
	.align 2, 0
_08008138: .4byte gJoypad

	thumb_func_start sub_800813C
sub_800813C: @ 0x0800813C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r2, r0, #2
	ldrh r1, [r0, #2]
	adds r0, r2, #2
	str r0, [r4, #4]
	ldrh r0, [r2, #2]
	bl sub_8013B14
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8008160
sub_8008160: @ 0x08008160
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r1, [r1, #2]
	lsrs r2, r1, #8
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800817E
	adds r0, r2, #0
	bl sub_8013834
	b _08008184
_0800817E:
	adds r0, r2, #0
	bl sub_8013878
_08008184:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8008194
sub_8008194: @ 0x08008194
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _080081BC @ =gMain
	ldrb r1, [r0, #8]
	cmp r1, #0xa
	bne _080081A2
	b _08008330
_080081A2:
	ldrh r2, [r5]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _080081D4
	adds r1, r5, #0
	adds r1, #0x32
	ldrb r0, [r1]
	cmp r0, #0
	beq _080081C0
	subs r0, #1
	strb r0, [r1]
	b _08008330
	.align 2, 0
_080081BC: .4byte gMain
_080081C0:
	ldr r0, _080081D0 @ =0x0000FFDF
	ands r0, r2
	strh r0, [r5]
	ldr r0, [r5, #4]
	adds r0, #6
	str r0, [r5, #4]
	b _08008330
	.align 2, 0
_080081D0: .4byte 0x0000FFDF
_080081D4:
	cmp r1, #7
	bne _080081EC
	ldr r0, _080081E8 @ =gOamObjects
	movs r1, #0xe4
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, #0x38
	strh r1, [r0]
	b _08008330
	.align 2, 0
_080081E8: .4byte gOamObjects
_080081EC:
	adds r1, r5, #0
	adds r1, #0x35
	ldrb r0, [r1]
	cmp r0, #0
	beq _080081FC
	subs r0, #1
	strb r0, [r1]
	b _08008330
_080081FC:
	ldr r0, _0800822C @ =gJoypad
	ldrh r1, [r0, #2]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08008230
	movs r0, #0x2a
	bl sub_8013834
	adds r1, r5, #0
	adds r1, #0x39
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r1, #0
	cmp r0, #1
	bls _08008304
	movs r0, #1
	strb r0, [r4]
	b _08008304
	.align 2, 0
_0800822C: .4byte gJoypad
_08008230:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08008256
	movs r0, #0x2a
	bl sub_8013834
	adds r1, r5, #0
	adds r1, #0x39
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r1, #0
	cmp r0, #1
	bls _08008304
	strb r6, [r4]
	b _08008304
_08008256:
	movs r0, #1
	ands r0, r1
	adds r4, r5, #0
	adds r4, #0x39
	cmp r0, #0
	beq _08008304
	movs r0, #0x2b
	bl sub_8013834
	adds r1, r5, #0
	adds r1, #0x32
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #0x20
	ldrh r3, [r5]
	orrs r0, r3
	strh r0, [r5]
	ldrb r0, [r4]
	cmp r0, #0
	bne _08008284
	ldr r0, [r5, #4]
	ldrh r0, [r0, #2]
	b _08008288
_08008284:
	ldr r0, [r5, #4]
	ldrh r0, [r0, #4]
_08008288:
	strh r0, [r5, #0x20]
	movs r0, #0
	strb r0, [r5, #0xe]
	strb r0, [r5, #0xf]
	ldr r0, _080082F4 @ =0x0000FFFB
	ldrh r4, [r5]
	ands r0, r4
	movs r1, #0
	strh r0, [r5]
	movs r0, #0x74
	strh r0, [r5, #0x1a]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r2, r5, #0
	adds r2, #0x25
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x34
	strb r1, [r0]
	movs r0, #0
	bl sub_80035C0
	movs r2, #0
	ldr r3, _080082F8 @ =0x00007FFF
	ldr r1, _080082FC @ =gTextBoxCharacters
_080082BC:
	adds r0, r3, #0
	ldrh r4, [r1]
	ands r0, r4
	strh r0, [r1]
	adds r1, #0xc
	adds r2, #1
	cmp r2, #0x1f
	bls _080082BC
	movs r2, #0x3a
	ldr r1, _08008300 @ =gOamObjects
	movs r3, #0x80
	lsls r3, r3, #2
	movs r4, #0xe8
	lsls r4, r4, #1
	adds r0, r1, r4
_080082DA:
	strh r3, [r0]
	adds r0, #8
	adds r2, #1
	cmp r2, #0x58
	bls _080082DA
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, #0x38
	strh r0, [r1]
	movs r0, #0
	b _08008332
	.align 2, 0
_080082F4: .4byte 0x0000FFFB
_080082F8: .4byte 0x00007FFF
_080082FC: .4byte gTextBoxCharacters
_08008300: .4byte gOamObjects
_08008304:
	ldr r2, _08008338 @ =gOamObjects
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldrh r3, [r5, #0x2a]
	adds r0, r3, r0
	movs r4, #0xe4
	lsls r4, r4, #1
	adds r1, r2, r4
	strh r0, [r1]
	ldrh r5, [r5, #0x28]
	ldr r1, _0800833C @ =0x00003FF3
	adds r0, r5, r1
	movs r3, #0xe5
	lsls r3, r3, #1
	adds r1, r2, r3
	strh r0, [r1]
	adds r4, #4
	adds r1, r2, r4
	ldr r0, _08008340 @ =0x000004FC
	strh r0, [r1]
_08008330:
	movs r0, #1
_08008332:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08008338: .4byte gOamObjects
_0800833C: .4byte 0x00003FF3
_08008340: .4byte 0x000004FC

	thumb_func_start sub_8008344
sub_8008344: @ 0x08008344
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0800836C @ =gMain
	ldrb r1, [r0, #8]
	cmp r1, #0xa
	bne _08008352
	b _080084E8
_08008352:
	ldrh r2, [r5]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08008384
	adds r1, r5, #0
	adds r1, #0x32
	ldrb r0, [r1]
	cmp r0, #0
	beq _08008370
	subs r0, #1
	strb r0, [r1]
	b _080084E8
	.align 2, 0
_0800836C: .4byte gMain
_08008370:
	ldr r0, _08008380 @ =0x0000FFDF
	ands r0, r2
	strh r0, [r5]
	ldr r0, [r5, #4]
	adds r0, #8
	str r0, [r5, #4]
	b _080084E8
	.align 2, 0
_08008380: .4byte 0x0000FFDF
_08008384:
	cmp r1, #7
	bne _0800839C
	ldr r0, _08008398 @ =gOamObjects
	movs r1, #0xe4
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, #0x38
	strh r1, [r0]
	b _080084E8
	.align 2, 0
_08008398: .4byte gOamObjects
_0800839C:
	adds r1, r5, #0
	adds r1, #0x35
	ldrb r0, [r1]
	cmp r0, #0
	beq _080083AC
	subs r0, #1
	strb r0, [r1]
	b _080084E8
_080083AC:
	ldr r0, _080083DC @ =gJoypad
	ldrh r1, [r0, #2]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _080083E0
	movs r0, #0x2a
	bl sub_8013834
	adds r1, r5, #0
	adds r1, #0x39
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r1, #0
	cmp r0, #2
	bls _080084BC
	movs r0, #2
	strb r0, [r4]
	b _080084BC
	.align 2, 0
_080083DC: .4byte gJoypad
_080083E0:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08008406
	movs r0, #0x2a
	bl sub_8013834
	adds r1, r5, #0
	adds r1, #0x39
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r1, #0
	cmp r0, #2
	bls _080084BC
	strb r6, [r4]
	b _080084BC
_08008406:
	movs r0, #1
	ands r0, r1
	adds r4, r5, #0
	adds r4, #0x39
	cmp r0, #0
	beq _080084BC
	movs r0, #0x2b
	bl sub_8013834
	adds r1, r5, #0
	adds r1, #0x32
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #0x20
	ldrh r3, [r5]
	orrs r0, r3
	strh r0, [r5]
	ldrb r1, [r4]
	cmp r1, #0
	bne _08008434
	ldr r0, [r5, #4]
	ldrh r0, [r0, #2]
	b _08008442
_08008434:
	cmp r1, #1
	bne _0800843E
	ldr r0, [r5, #4]
	ldrh r0, [r0, #4]
	b _08008442
_0800843E:
	ldr r0, [r5, #4]
	ldrh r0, [r0, #6]
_08008442:
	strh r0, [r5, #0x20]
	movs r0, #0
	strb r0, [r5, #0xe]
	strb r0, [r5, #0xf]
	ldr r0, _080084AC @ =0x0000FFFB
	ldrh r4, [r5]
	ands r0, r4
	movs r1, #0
	strh r0, [r5]
	movs r0, #0x74
	strh r0, [r5, #0x1a]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r2, r5, #0
	adds r2, #0x25
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x34
	strb r1, [r0]
	movs r0, #0
	bl sub_80035C0
	movs r2, #0
	ldr r3, _080084B0 @ =0x00007FFF
	ldr r1, _080084B4 @ =gTextBoxCharacters
_08008476:
	adds r0, r3, #0
	ldrh r4, [r1]
	ands r0, r4
	strh r0, [r1]
	adds r1, #0xc
	adds r2, #1
	cmp r2, #0x1f
	bls _08008476
	movs r2, #0x3a
	ldr r1, _080084B8 @ =gOamObjects
	movs r3, #0x80
	lsls r3, r3, #2
	movs r4, #0xe8
	lsls r4, r4, #1
	adds r0, r1, r4
_08008494:
	strh r3, [r0]
	adds r0, #8
	adds r2, #1
	cmp r2, #0x58
	bls _08008494
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, #0x38
	strh r0, [r1]
	movs r0, #0
	b _080084EA
	.align 2, 0
_080084AC: .4byte 0x0000FFFB
_080084B0: .4byte 0x00007FFF
_080084B4: .4byte gTextBoxCharacters
_080084B8: .4byte gOamObjects
_080084BC:
	ldr r2, _080084F0 @ =gOamObjects
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldrh r3, [r5, #0x2a]
	adds r0, r3, r0
	movs r4, #0xe4
	lsls r4, r4, #1
	adds r1, r2, r4
	strh r0, [r1]
	ldrh r5, [r5, #0x28]
	ldr r1, _080084F4 @ =0x00003FF3
	adds r0, r5, r1
	movs r3, #0xe5
	lsls r3, r3, #1
	adds r1, r2, r3
	strh r0, [r1]
	adds r4, #4
	adds r1, r2, r4
	ldr r0, _080084F8 @ =0x000004FC
	strh r0, [r1]
_080084E8:
	movs r0, #1
_080084EA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080084F0: .4byte gOamObjects
_080084F4: .4byte 0x00003FF3
_080084F8: .4byte 0x000004FC

	thumb_func_start sub_80084FC
sub_80084FC: @ 0x080084FC
	adds r2, r0, #0
	ldr r1, [r2, #4]
	adds r0, r1, #2
	str r0, [r2, #4]
	ldrh r0, [r1, #2]
	adds r1, r2, #0
	adds r1, #0x25
	strb r0, [r1]
	adds r3, r2, #0
	adds r3, #0x26
	strb r0, [r3]
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _0800851E
	movs r0, #3
	strb r0, [r1]
	strb r0, [r3]
_0800851E:
	ldrb r0, [r2, #0x13]
	cmp r0, #1
	bls _08008528
	movs r0, #0
	strb r0, [r1]
_08008528:
	ldr r0, [r2, #4]
	adds r0, #2
	str r0, [r2, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_8008534
sub_8008534: @ 0x08008534
	adds r2, r0, #0
	ldr r0, _08008550 @ =gMain
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _08008554
	ldrb r0, [r2, #0x13]
	cmp r0, #1
	bls _08008554
	ldr r0, [r2, #4]
	ldrh r1, [r0, #2]
	strh r1, [r2, #2]
	b _08008566
	.align 2, 0
_08008550: .4byte gMain
_08008554:
	ldrh r0, [r2, #2]
	cmp r0, #0
	beq _0800856E
	subs r0, #1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08008574
	ldr r0, [r2, #4]
_08008566:
	adds r0, #4
	str r0, [r2, #4]
	movs r0, #0
	b _08008576
_0800856E:
	ldr r1, [r2, #4]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
_08008574:
	movs r0, #1
_08008576:
	bx lr

	thumb_func_start sub_8008578
sub_8008578: @ 0x08008578
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x1e]
	strh r0, [r4, #0x22]
	ldr r0, _0800859C @ =gMain
	ldrh r1, [r4, #0x1e]
	bl sub_8007CCC
	ldrh r0, [r4, #0x20]
	strh r0, [r4, #0x1e]
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #2
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800859C: .4byte gMain

	thumb_func_start sub_80085A0
sub_80085A0: @ 0x080085A0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r1, [r5, #4]
	adds r0, r1, #2
	str r0, [r5, #4]
	ldrh r1, [r1, #2]
	lsrs r0, r1, #8
	adds r4, r5, #0
	adds r4, #0x34
	movs r7, #0x7f
	ands r0, r7
	strb r0, [r4]
	bl sub_80037C8
	ldrb r0, [r4]
	ldr r2, [r5, #4]
	movs r6, #0xff
	adds r1, r6, #0
	ldrh r2, [r2]
	ands r1, r2
	bl sub_8004000
	ldr r0, _080085F4 @ =gUnknown_08022C54
	ldrb r1, [r4]
	adds r0, r1, r0
	ldrb r0, [r0]
	strb r0, [r5, #0x17]
	cmp r0, #2
	bne _080085DE
	movs r0, #0
	strb r0, [r5, #0x16]
_080085DE:
	ldr r1, [r5, #4]
	adds r0, r6, #0
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _080085F8
	movs r0, #0x80
	ldrb r1, [r4]
	orrs r0, r1
	b _080085FE
	.align 2, 0
_080085F4: .4byte gUnknown_08022C54
_080085F8:
	adds r0, r7, #0
	ldrb r1, [r4]
	ands r0, r1
_080085FE:
	strb r0, [r4]
	ldr r0, [r5, #4]
	adds r0, #2
	str r0, [r5, #4]
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8008610
sub_8008610: @ 0x08008610
	ldr r1, [r0, #4]
	adds r2, r1, #2
	ldrh r1, [r1, #2]
	strh r1, [r0, #0x2c]
	adds r1, r2, #2
	str r1, [r0, #4]
	ldrh r1, [r2, #2]
	adds r2, r0, #0
	adds r2, #0x2e
	strb r1, [r2]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_8008630
sub_8008630: @ 0x08008630
	push {lr}
	ldr r1, [r0, #4]
	ldrh r2, [r1, #2]
	adds r1, #4
	str r1, [r0, #4]
	movs r0, #0xfe
	lsls r0, r0, #7
	ands r0, r2
	lsrs r0, r0, #8
	movs r1, #0xff
	ands r1, r2
	lsrs r2, r2, #0xf
	bl sub_80042FC
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8008654
sub_8008654: @ 0x08008654
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0x31
	bl sub_8013834
	movs r0, #0x10
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
	ldr r2, _0800868C @ =gMain
	adds r3, r2, #0
	adds r3, #0xdc
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r3]
	ldr r0, [r2, #8]
	str r0, [r2, #0xc]
	ldr r0, _08008690 @ =0x01000007
	str r0, [r2, #8]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800868C: .4byte gMain
_08008690: .4byte 0x01000007

	thumb_func_start sub_8008694
sub_8008694: @ 0x08008694
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r2, r0, #2
	ldrh r1, [r0, #2]
	adds r5, r2, #2
	ldrh r2, [r2, #2]
	adds r0, r5, #2
	str r0, [r4, #4]
	lsrs r0, r1, #8
	movs r3, #0xff
	ands r1, r3
	ldrh r3, [r5, #2]
	bl StartHardwareBlend
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_80086C0
sub_80086C0: @ 0x080086C0
	push {lr}
	ldr r2, [r0, #4]
	ldr r1, _080086F0 @ =gMain
	mov ip, r1
	mov r3, ip
	adds r3, #0x8b
	movs r1, #3
	strb r1, [r3]
	ldrh r1, [r2, #2]
	subs r3, #1
	strb r1, [r3]
	ldrh r1, [r2, #2]
	lsrs r3, r1, #8
	mov r1, ip
	adds r1, #0x8c
	strb r3, [r1]
	adds r2, #4
	str r2, [r0, #4]
	movs r0, #0x33
	bl sub_8013834
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_080086F0: .4byte gMain

	thumb_func_start sub_80086F4
sub_80086F4: @ 0x080086F4
	push {lr}
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	ldr r0, _08008710 @ =gMain
	adds r0, #0x8b
	movs r1, #1
	strb r1, [r0]
	movs r0, #0x33
	bl sub_8013834
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_08008710: .4byte gMain

	thumb_func_start sub_8008714
sub_8008714: @ 0x08008714
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #8
	ldrh r1, [r4]
	ands r0, r1
	cmp r0, #0
	bne _0800873E
	ldr r0, [r4, #4]
	ldrh r0, [r0]
	cmp r0, #0x15
	bne _08008736
	ldr r0, _08008748 @ =gUnknown_03000844
	ldr r1, _0800874C @ =gMain
	adds r1, #0xb8
	ldrh r1, [r1]
	bl sub_80141E0
_08008736:
	movs r0, #8
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
_0800873E:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08008748: .4byte gUnknown_03000844
_0800874C: .4byte gMain

	thumb_func_start sub_8008750
sub_8008750: @ 0x08008750
	push {lr}
	ldr r3, _0800878C @ =gMain
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	strb r0, [r3, #0x18]
	strb r0, [r3, #0x19]
	adds r0, r3, #0
	adds r0, #0x98
	ldrh r1, [r0]
	adds r0, #0x18
	movs r2, #0
	strh r1, [r0]
	ldr r0, _08008790 @ =0x00000203
	str r0, [r3, #8]
	ldr r0, _08008794 @ =gInvestigation
	strb r2, [r0, #0xc]
	strb r2, [r0, #0xd]
	adds r1, r3, #0
	adds r1, #0xb3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xe6
	bl sub_8013998
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0800878C: .4byte gMain
_08008790: .4byte 0x00000203
_08008794: .4byte gInvestigation

	thumb_func_start sub_8008798
sub_8008798: @ 0x08008798
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, [r5, #4]
	adds r0, r1, #2
	str r0, [r5, #4]
	ldrh r1, [r1, #2]
	ldr r6, _080087E4 @ =0x00003FFF
	ands r6, r1
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_80130C8
	adds r2, r0, #0
	cmp r2, #0
	bge _0800881E
	adds r0, r4, #0
	bl sub_8013110
	adds r2, r0, #0
	cmp r2, #0
	blt _0800881E
	cmp r4, #0
	beq _080087EC
	ldr r0, _080087E8 @ =gCourtRecord
	adds r1, r0, #0
	adds r1, #0x38
	adds r1, r2, r1
	strb r6, [r1]
	ldrb r1, [r0, #0x11]
	adds r1, #1
	strb r1, [r0, #0x11]
	b _080087FC
	.align 2, 0
_080087E4: .4byte 0x00003FFF
_080087E8: .4byte gCourtRecord
_080087EC:
	ldr r0, _0800882C @ =gCourtRecord
	adds r1, r0, #0
	adds r1, #0x18
	adds r1, r2, r1
	strb r6, [r1]
	ldrb r1, [r0, #0x10]
	adds r1, #1
	strb r1, [r0, #0x10]
_080087FC:
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #7
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800881E
	ldr r1, _08008830 @ =gMain
	adds r0, r1, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #1
	strb r6, [r0]
	ldr r0, [r1, #8]
	str r0, [r1, #0xc]
	movs r0, #8
	str r0, [r1, #8]
_0800881E:
	ldr r0, [r5, #4]
	adds r0, #2
	str r0, [r5, #4]
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800882C: .4byte gCourtRecord
_08008830: .4byte gMain

	thumb_func_start sub_8008834
sub_8008834: @ 0x08008834
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #4]
	adds r0, r1, #2
	str r0, [r5, #4]
	ldrh r2, [r1, #2]
	ldr r1, _08008868 @ =0x00003FFF
	ands r1, r2
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	bl sub_80130C8
	adds r2, r0, #0
	cmp r2, #0
	blt _08008880
	cmp r4, #0
	beq _08008870
	ldr r0, _0800886C @ =gCourtRecord
	adds r1, r0, #0
	adds r1, #0x38
	b _08008876
	.align 2, 0
_08008868: .4byte 0x00003FFF
_0800886C: .4byte gCourtRecord
_08008870:
	ldr r0, _08008890 @ =gCourtRecord
	adds r1, r0, #0
	adds r1, #0x18
_08008876:
	adds r1, r2, r1
	movs r2, #0xff
	strb r2, [r1]
	bl sub_8013138
_08008880:
	ldr r0, [r5, #4]
	adds r0, #2
	str r0, [r5, #4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08008890: .4byte gCourtRecord

	thumb_func_start sub_8008894
sub_8008894: @ 0x08008894
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r6, #4]
	ldrh r2, [r0, #2]
	ldr r7, _080088D4 @ =0x00003FFF
	adds r3, r7, #0
	ands r3, r2
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r2
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldrh r4, [r0, #2]
	adds r0, #4
	str r0, [r6, #4]
	adds r0, r5, #0
	adds r1, r3, #0
	bl sub_80130C8
	adds r1, r0, #0
	cmp r1, #0
	blt _08008902
	ldr r0, [r6, #4]
	adds r3, r7, #0
	ldrh r0, [r0]
	ands r3, r0
	cmp r5, #0
	beq _080088DC
	ldr r0, _080088D8 @ =gCourtRecord
	adds r0, #0x38
	b _080088E0
	.align 2, 0
_080088D4: .4byte 0x00003FFF
_080088D8: .4byte gCourtRecord
_080088DC:
	ldr r0, _08008910 @ =gCourtRecord
	adds r0, #0x18
_080088E0:
	adds r0, r1, r0
	strb r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	beq _08008902
	ldr r1, _08008914 @ =gMain
	adds r0, r1, #0
	adds r0, #0x2c
	strb r5, [r0]
	adds r0, #1
	strb r3, [r0]
	ldr r0, [r1, #8]
	str r0, [r1, #0xc]
	movs r0, #8
	str r0, [r1, #8]
_08008902:
	ldr r0, [r6, #4]
	adds r0, #2
	str r0, [r6, #4]
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08008910: .4byte gCourtRecord
_08008914: .4byte gMain

	thumb_func_start sub_8008918
sub_8008918: @ 0x08008918
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6, #4]
	adds r1, r0, #2
	ldrh r4, [r0, #2]
	adds r0, r1, #2
	ldrh r5, [r1, #2]
	adds r1, r0, #2
	ldrh r2, [r0, #2]
	adds r0, r1, #2
	str r0, [r6, #4]
	ldrh r3, [r1, #2]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8015C44
	ldr r1, _08008968 @ =gUnknown_08022C8C
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #1
	ands r0, r5
	movs r2, #0
	cmp r0, #0
	beq _0800894C
	movs r2, #0x1e
_0800894C:
	adds r0, r4, #0
	adds r1, r2, #0
	movs r2, #0x1f
	adds r3, r5, #0
	bl InitCourtScroll
	ldr r0, [r6, #4]
	adds r0, #2
	str r0, [r6, #4]
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08008968: .4byte gUnknown_08022C8C

	thumb_func_start sub_800896C
sub_800896C: @ 0x0800896C
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r1, [r3, #4]
	adds r5, r1, #2
	str r5, [r3, #4]
	ldr r0, _080089A0 @ =gMain
	ldrh r2, [r0, #0x2e]
	adds r4, r0, #0
	ldrh r1, [r1, #2]
	cmp r2, r1
	beq _080089A4
_08008982:
	ldrh r0, [r4, #0x2e]
	strh r0, [r4, #0x32]
	ldr r0, [r3, #4]
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	adds r1, r4, #0
	adds r1, #0x34
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #4]
	adds r0, #2
	str r0, [r3, #4]
	movs r0, #1
	b _080089BA
	.align 2, 0
_080089A0: .4byte gMain
_080089A4:
	cmp r2, #0x10
	beq _08008982
	ldr r1, _080089C0 @ =gScriptContext
	movs r0, #0x40
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08008982
	adds r0, r5, #2
	str r0, [r3, #4]
	movs r0, #0
_080089BA:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080089C0: .4byte gScriptContext

	thumb_func_start sub_80089C4
sub_80089C4: @ 0x080089C4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r1, [r7, #4]
	adds r0, r1, #2
	str r0, [r7, #4]
	ldrh r0, [r1, #2]
	cmp r0, #6
	bls _080089D6
	b _08008B94
_080089D6:
	lsls r0, r0, #2
	ldr r1, _080089E0 @ =_080089E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080089E0: .4byte _080089E4
_080089E4: @ jump table
	.4byte _08008A00 @ case 0
	.4byte _08008A40 @ case 1
	.4byte _08008A68 @ case 2
	.4byte _08008A98 @ case 3
	.4byte _08008B5A @ case 4
	.4byte _08008B7C @ case 5
	.4byte _08008B00 @ case 6
_08008A00:
	ldr r4, _08008A34 @ =gMain
	movs r2, #0
	movs r0, #1
	strb r0, [r4, #0x19]
	ldr r1, _08008A38 @ =gIORegisters
	adds r3, r1, #0
	adds r3, #0x4a
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r5, #0
	ldrh r5, [r3]
	orrs r0, r5
	strh r0, [r3]
	strh r2, [r1, #0xe]
	bl sub_80037C8
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r0, [r0]
	ldr r2, _08008A3C @ =0x000002BD
	adds r4, r4, r2
	ldrb r1, [r4]
	bl sub_8004000
	b _08008B94
	.align 2, 0
_08008A34: .4byte gMain
_08008A38: .4byte gIORegisters
_08008A3C: .4byte 0x000002BD
_08008A40:
	ldr r0, _08008A5C @ =gMain
	movs r1, #0
	strb r1, [r0, #0x19]
	ldr r0, _08008A60 @ =gUnknown_03002080
	movs r2, #0
	movs r1, #0xff
	ldr r3, _08008A64 @ =0x000004FE
	adds r0, r0, r3
_08008A50:
	strh r2, [r0]
	subs r0, #2
	subs r1, #1
	cmp r1, #0
	bge _08008A50
	b _08008B94
	.align 2, 0
_08008A5C: .4byte gMain
_08008A60: .4byte gUnknown_03002080
_08008A64: .4byte 0x000004FE
_08008A68:
	ldr r0, _08008A8C @ =gMain
	ldrb r0, [r0, #8]
	cmp r0, #3
	bne _08008A82
	ldr r0, _08008A90 @ =gUnknown_03000844
	bl sub_8014F94
	ldr r0, _08008A94 @ =gInvestigation
	movs r1, #0
	strb r1, [r0, #6]
	movs r1, #0xf
	bl sub_800EB24
_08008A82:
	movs r0, #1
	bl sub_80037FC
	b _08008B94
	.align 2, 0
_08008A8C: .4byte gMain
_08008A90: .4byte gUnknown_03000844
_08008A94: .4byte gInvestigation
_08008A98:
	ldr r5, _08008AF4 @ =gMain
	ldrb r0, [r5, #8]
	cmp r0, #3
	bne _08008AB2
	ldr r0, _08008AF8 @ =gUnknown_03000844
	bl sub_8014F94
	ldr r0, _08008AFC @ =gInvestigation
	movs r1, #0
	strb r1, [r0, #6]
	movs r1, #0xf
	bl sub_800EB24
_08008AB2:
	movs r0, #0
	bl sub_80037FC
	ldrb r6, [r5, #8]
	cmp r6, #4
	bne _08008B94
	ldr r4, _08008AFC @ =gInvestigation
	movs r0, #0
	strb r0, [r4, #0x10]
	ldrb r1, [r5, #9]
	cmp r1, #6
	bne _08008AD2
	adds r0, r4, #0
	movs r1, #1
	bl sub_800EB24
_08008AD2:
	ldrb r2, [r5, #9]
	cmp r2, #8
	bne _08008AE2
	adds r0, r4, #0
	movs r1, #4
	bl sub_800EB24
	strb r6, [r4, #0xe]
_08008AE2:
	ldrb r5, [r5, #9]
	cmp r5, #9
	bne _08008B94
	adds r0, r4, #0
	movs r1, #8
	bl sub_800EB24
	b _08008B94
	.align 2, 0
_08008AF4: .4byte gMain
_08008AF8: .4byte gUnknown_03000844
_08008AFC: .4byte gInvestigation
_08008B00:
	ldr r5, _08008B34 @ =gInvestigation
	movs r6, #0
	strb r6, [r5, #0x10]
	ldr r4, _08008B38 @ =gMain
	ldrb r3, [r4, #9]
	cmp r3, #6
	bne _08008B16
	adds r0, r5, #0
	movs r1, #1
	bl sub_800EB24
_08008B16:
	ldrb r0, [r4, #9]
	cmp r0, #8
	bne _08008B3C
	adds r0, r5, #0
	movs r1, #4
	bl sub_800EB24
	movs r1, #4
	strb r1, [r5, #0xe]
	strb r6, [r4, #0x18]
	strb r6, [r4, #0x19]
	adds r0, r7, #0
	adds r0, #0x38
	strb r1, [r0]
	b _08008B94
	.align 2, 0
_08008B34: .4byte gInvestigation
_08008B38: .4byte gMain
_08008B3C:
	cmp r0, #9
	bne _08008B48
	adds r0, r5, #0
	movs r1, #8
	bl sub_800EB24
_08008B48:
	strb r6, [r4, #0x18]
	strb r6, [r4, #0x19]
	adds r0, r7, #0
	adds r0, #0x38
	movs r1, #4
	strb r1, [r0]
	movs r0, #1
	strb r0, [r5, #0xe]
	b _08008B94
_08008B5A:
	ldr r1, _08008B78 @ =gIORegisters
	movs r2, #0
	movs r0, #0
	strh r0, [r1, #0xe]
	adds r1, #0x4a
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r5, #0
	ldrh r3, [r1]
	orrs r0, r3
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x38
	strb r2, [r0]
	b _08008B94
	.align 2, 0
_08008B78: .4byte gIORegisters
_08008B7C:
	ldr r1, _08008BA8 @ =gIORegisters
	ldr r0, _08008BAC @ =0x0000FFAF
	strh r0, [r1, #0xe]
	adds r1, #0x4a
	ldr r0, _08008BB0 @ =0x0000FDFF
	ldrh r5, [r1]
	ands r0, r5
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
_08008B94:
	ldr r0, [r7, #4]
	adds r0, #2
	str r0, [r7, #4]
	ldr r1, _08008BB4 @ =gInvestigation
	movs r0, #0
	strb r0, [r1, #7]
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08008BA8: .4byte gIORegisters
_08008BAC: .4byte 0x0000FFAF
_08008BB0: .4byte 0x0000FDFF
_08008BB4: .4byte gInvestigation

	thumb_func_start sub_8008BB8
sub_8008BB8: @ 0x08008BB8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	adds r0, #2
	str r0, [r5, #4]
	ldr r4, _08008BE0 @ =gMain
	ldrh r0, [r4, #0x2e]
	bl sub_80035A0
	adds r2, r0, #0
	movs r0, #0xf
	ands r2, r0
	cmp r2, #0
	beq _08008BE4
	adds r1, r4, #0
	adds r1, #0x36
	movs r0, #1
	strb r0, [r1]
	b _08008BEA
	.align 2, 0
_08008BE0: .4byte gMain
_08008BE4:
	adds r0, r4, #0
	adds r0, #0x36
	strb r2, [r0]
_08008BEA:
	ldr r0, [r5, #4]
	ldrh r1, [r0]
	lsrs r2, r1, #8
	adds r3, r0, #0
	cmp r2, #1
	beq _08008C10
	cmp r2, #1
	blo _08008C04
	cmp r2, #2
	beq _08008C1C
	cmp r2, #3
	beq _08008C28
	b _08008C2E
_08008C04:
	ldr r0, _08008C0C @ =gMain
	rsbs r1, r1, #0
	adds r0, #0x44
	b _08008C2C
	.align 2, 0
_08008C0C: .4byte gMain
_08008C10:
	ldr r0, _08008C18 @ =gMain
	adds r0, #0x44
	b _08008C2C
	.align 2, 0
_08008C18: .4byte gMain
_08008C1C:
	ldr r0, _08008C24 @ =gMain
	rsbs r1, r1, #0
	b _08008C2A
	.align 2, 0
_08008C24: .4byte gMain
_08008C28:
	ldr r0, _08008C3C @ =gMain
_08008C2A:
	adds r0, #0x45
_08008C2C:
	strb r1, [r0]
_08008C2E:
	adds r0, r3, #2
	str r0, [r5, #4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08008C3C: .4byte gMain

	thumb_func_start sub_8008C40
sub_8008C40: @ 0x08008C40
	push {r4, r5, lr}
	ldr r1, [r0, #4]
	adds r3, r1, #2
	ldrh r4, [r1, #2]
	adds r2, r3, #2
	ldrh r5, [r3, #2]
	ldr r1, _08008C7C @ =gMain
	adds r3, r1, #0
	adds r3, #0xb6
	strh r5, [r3]
	ldrh r3, [r2, #2]
	adds r1, #0xb8
	strh r3, [r1]
	adds r2, #4
	str r2, [r0, #4]
	cmp r4, #0
	beq _08008C84
	adds r0, r4, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_8014688
	ldr r0, _08008C80 @ =gInvestigation
	movs r1, #1
	strb r1, [r0, #6]
	movs r1, #0xf
	bl sub_800EB24
	b _08008C96
	.align 2, 0
_08008C7C: .4byte gMain
_08008C80: .4byte gInvestigation
_08008C84:
	ldr r0, _08008CA0 @ =gUnknown_03000844
	bl sub_8014F94
	ldr r0, _08008CA4 @ =gInvestigation
	movs r1, #0
	strb r1, [r0, #6]
	movs r1, #0xf
	bl sub_800EB24
_08008C96:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08008CA0: .4byte gUnknown_03000844
_08008CA4: .4byte gInvestigation

	thumb_func_start sub_8008CA8
sub_8008CA8: @ 0x08008CA8
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, [r3, #4]
	adds r0, #2
	str r0, [r3, #4]
	ldr r2, _08008CF8 @ =gIORegisters
	adds r4, r2, #0
	adds r4, #0x4a
	ldr r0, _08008CFC @ =0x0000FBFF
	ldrh r1, [r4]
	ands r0, r1
	movs r5, #0x80
	lsls r5, r5, #4
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r1, _08008D00 @ =gUnknown_03000000
	movs r0, #0
	ldr r4, _08008D04 @ =0x0000029F
	adds r5, r2, #0
	movs r2, #0
_08008CD2:
	strh r2, [r1]
	adds r0, #1
	adds r1, #2
	cmp r0, r4
	bls _08008CD2
	movs r0, #0xf8
	lsls r0, r0, #6
	strh r0, [r5, #4]
	movs r0, #8
	strh r0, [r5, #0x10]
	ldr r0, _08008D08 @ =0x0000FFBF
	ldrh r1, [r3]
	ands r0, r1
	strh r0, [r3]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08008CF8: .4byte gIORegisters
_08008CFC: .4byte 0x0000FBFF
_08008D00: .4byte gUnknown_03000000
_08008D04: .4byte 0x0000029F
_08008D08: .4byte 0x0000FFBF

	thumb_func_start sub_8008D0C
sub_8008D0C: @ 0x08008D0C
	ldr r1, [r0, #4]
	ldrh r2, [r1, #2]
	strh r2, [r0, #0x20]
	adds r1, #4
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_8008D1C
sub_8008D1C: @ 0x08008D1C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0x31
	bl sub_8013834
	movs r0, #0x10
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
	ldr r2, _08008D54 @ =gMain
	adds r3, r2, #0
	adds r3, #0xdc
	ldr r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r3]
	ldr r0, [r2, #8]
	str r0, [r2, #0xc]
	ldr r0, _08008D58 @ =0x01000007
	str r0, [r2, #8]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08008D54: .4byte gMain
_08008D58: .4byte 0x01000007

	thumb_func_start sub_8008D5C
sub_8008D5C: @ 0x08008D5C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _08008D74
	bl sub_8013AE4
	b _08008D78
_08008D74:
	bl sub_8013A48
_08008D78:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8008D88
sub_8008D88: @ 0x08008D88
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r0, #2
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _08008DA0
	bl sub_8013A7C
	b _08008DA4
_08008DA0:
	bl sub_80139EC
_08008DA4:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8008DB4
sub_8008DB4: @ 0x08008DB4
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	ldr r1, _08008DCC @ =gMain
	movs r0, #0
	strb r0, [r1, #0x18]
	strb r0, [r1, #0x19]
	movs r0, #2
	str r0, [r1, #8]
	movs r0, #1
	bx lr
	.align 2, 0
_08008DCC: .4byte gMain

	thumb_func_start sub_8008DD0
sub_8008DD0: @ 0x08008DD0
	ldr r1, [r0, #4]
	ldrh r2, [r1, #2]
	strh r2, [r0, #0x22]
	adds r1, #4
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_8008DE0
sub_8008DE0: @ 0x08008DE0
	adds r3, r0, #0
	ldr r0, [r3, #4]
	adds r1, r0, #2
	str r1, [r3, #4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _08008E04
	ldr r1, _08008E00 @ =gMain
	adds r1, #0xdc
	ldr r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	str r0, [r1]
	movs r0, #0
	strb r0, [r3, #0x13]
	b _08008E12
	.align 2, 0
_08008E00: .4byte gMain
_08008E04:
	ldr r0, _08008E1C @ =gMain
	adds r0, #0xdc
	ldr r1, [r0]
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
_08008E12:
	ldr r0, [r3, #4]
	adds r0, #2
	str r0, [r3, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_08008E1C: .4byte gMain

	thumb_func_start sub_8008E20
sub_8008E20: @ 0x08008E20
	push {r4, r5, lr}
	ldr r1, [r0, #4]
	adds r4, r1, #2
	ldr r3, _08008E48 @ =gMain
	ldrh r1, [r1, #2]
	strh r1, [r3, #0x14]
	adds r5, r3, #0
	adds r5, #0xdc
	ldr r1, [r5]
	movs r2, #1
	orrs r1, r2
	str r1, [r5]
	ldrh r1, [r4, #2]
	strb r1, [r3, #0x16]
	adds r4, #4
	str r4, [r0, #4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08008E48: .4byte gMain

	thumb_func_start sub_8008E4C
sub_8008E4C: @ 0x08008E4C
	adds r3, r0, #0
	ldr r0, [r3, #4]
	adds r1, r0, #2
	str r1, [r3, #4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _08008E6C
	ldr r1, _08008E68 @ =gMain+0xC
	subs r2, r1, #4
	ldr r0, [r2]
	str r0, [r1]
	movs r0, #5
	str r0, [r2]
	b _08008E74
	.align 2, 0
_08008E68: .4byte gMain+0xC
_08008E6C:
	ldr r1, _08008E80 @ =gMain
	ldrb r0, [r1, #9]
	adds r0, #1
	strb r0, [r1, #9]
_08008E74:
	ldr r0, [r3, #4]
	adds r0, #2
	str r0, [r3, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_08008E80: .4byte gMain

	thumb_func_start sub_8008E84
sub_8008E84: @ 0x08008E84
	adds r3, r0, #0
	ldr r1, [r3, #4]
	adds r0, r1, #2
	str r0, [r3, #4]
	ldrh r0, [r1, #2]
	cmp r0, #3
	bne _08008EB8
	ldr r1, _08008EAC @ =gTestimony
	movs r0, #0xe0
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	movs r0, #2
	strb r0, [r1]
	ldr r1, _08008EB0 @ =gIORegisters
	adds r1, #0x4a
	ldr r0, _08008EB4 @ =0x0000FDFF
	ldrh r2, [r1]
	ands r0, r2
	strh r0, [r1]
	b _08008F9A
	.align 2, 0
_08008EAC: .4byte gTestimony
_08008EB0: .4byte gIORegisters
_08008EB4: .4byte 0x0000FDFF
_08008EB8:
	cmp r0, #2
	bne _08008EE4
	ldr r0, _08008EDC @ =gTestimony
	movs r2, #0
	movs r1, #0xe0
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r2, [r0]
	ldr r0, _08008EE0 @ =gIORegisters
	adds r0, #0x4a
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	b _08008F9A
	.align 2, 0
_08008EDC: .4byte gTestimony
_08008EE0: .4byte gIORegisters
_08008EE4:
	cmp r0, #4
	bne _08008F7C
	ldr r0, _08008F48 @ =0x040000D4
	ldr r1, _08008F4C @ =gUnknown_08141CFC
	str r1, [r0]
	ldr r1, _08008F50 @ =0x06013000
	str r1, [r0, #4]
	ldr r1, _08008F54 @ =0x80000200
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08008F58 @ =gUnknown_0814DC40
	str r1, [r0]
	ldr r1, _08008F5C @ =0x050002A0
	str r1, [r0, #4]
	ldr r1, _08008F60 @ =0x80000010
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08008F64 @ =gUnknown_0813D97C
	str r1, [r0]
	movs r1, #0xd0
	lsls r1, r1, #1
	str r1, [r0, #4]
	ldr r2, _08008F68 @ =0x80000040
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08008F6C @ =gUnknown_0813DAFC
	str r1, [r0]
	movs r1, #0x88
	lsls r1, r1, #2
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _08008F70 @ =gTestimony
	movs r2, #0
	movs r1, #0xe0
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r2, [r0]
	ldr r0, _08008F74 @ =gIORegisters
	adds r0, #0x4a
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	ldr r1, _08008F78 @ =gMain+0x8
	movs r0, #0x83
	lsls r0, r0, #1
	b _08008F98
	.align 2, 0
_08008F48: .4byte 0x040000D4
_08008F4C: .4byte gUnknown_08141CFC
_08008F50: .4byte 0x06013000
_08008F54: .4byte 0x80000200
_08008F58: .4byte gUnknown_0814DC40
_08008F5C: .4byte 0x050002A0
_08008F60: .4byte 0x80000010
_08008F64: .4byte gUnknown_0813D97C
_08008F68: .4byte 0x80000040
_08008F6C: .4byte gUnknown_0813DAFC
_08008F70: .4byte gTestimony
_08008F74: .4byte gIORegisters
_08008F78: .4byte gMain+0x8
_08008F7C:
	cmp r0, #0
	beq _08008F94
	ldr r1, _08008F90 @ =gMain+0xC
	subs r2, r1, #4
	ldr r0, [r2]
	str r0, [r1]
	movs r0, #6
	str r0, [r2]
	b _08008F9A
	.align 2, 0
_08008F90: .4byte gMain+0xC
_08008F94:
	ldr r1, _08008FA4 @ =gMain+0x8
	ldr r0, _08008FA8 @ =0x00000103
_08008F98:
	str r0, [r1]
_08008F9A:
	ldr r0, [r3, #4]
	adds r0, #2
	str r0, [r3, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_08008FA4: .4byte gMain+0x8
_08008FA8: .4byte 0x00000103

	thumb_func_start sub_8008FAC
sub_8008FAC: @ 0x08008FAC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r1, [r1, #2]
	movs r0, #0
	bl sub_8004338
	cmp r0, #0
	beq _08008FC8
	ldr r0, [r4, #4]
	ldrh r1, [r0, #2]
	b _08008FCC
_08008FC8:
	ldr r0, [r4, #4]
	ldrh r1, [r0, #4]
_08008FCC:
	strh r1, [r4, #0x20]
	adds r0, #6
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8008FDC
sub_8008FDC: @ 0x08008FDC
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_8008FE8
sub_8008FE8: @ 0x08008FE8
	push {r4, r5, r6, r7, lr}
	ldr r1, [r0, #4]
	ldrh r2, [r1, #2]
	movs r3, #0
	strh r2, [r0, #0x20]
	adds r1, #4
	str r1, [r0, #4]
	strb r3, [r0, #0xe]
	strb r3, [r0, #0xf]
	movs r2, #0
	ldr r4, _08009050 @ =gUnknown_03002080
	ldr r6, _08009054 @ =gUnknown_03000844
	ldr r5, _08009058 @ =gMain
	ldr r3, _0800905C @ =0x00007FFF
	ldr r1, _08009060 @ =gTextBoxCharacters
_08009006:
	adds r0, r3, #0
	ldrh r7, [r1]
	ands r0, r7
	strh r0, [r1]
	adds r1, #0xc
	adds r2, #1
	cmp r2, #0x3e
	bls _08009006
	ldr r0, _08009064 @ =0x000004DC
	adds r1, r4, r0
	ldrh r0, [r1]
	cmp r0, #9
	beq _08009028
	cmp r0, #0
	beq _08009028
	movs r0, #9
	strh r0, [r1]
_08009028:
	ldr r7, _08009068 @ =0x000004DE
	adds r1, r4, r7
	ldrh r0, [r1]
	cmp r0, #9
	beq _0800903A
	cmp r0, #0
	beq _0800903A
	movs r0, #9
	strh r0, [r1]
_0800903A:
	adds r0, r5, #0
	adds r0, #0xb8
	ldrh r1, [r0]
	adds r0, r6, #0
	bl sub_80141E0
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08009050: .4byte gUnknown_03002080
_08009054: .4byte gUnknown_03000844
_08009058: .4byte gMain
_0800905C: .4byte 0x00007FFF
_08009060: .4byte gTextBoxCharacters
_08009064: .4byte 0x000004DC
_08009068: .4byte 0x000004DE

	thumb_func_start sub_800906C
sub_800906C: @ 0x0800906C
	push {r4, r5, lr}
	ldr r1, _080090D0 @ =0x0000FFFC
	ldrh r2, [r0]
	ands r1, r2
	movs r2, #0
	strh r1, [r0]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	strb r2, [r0, #0xe]
	strb r2, [r0, #0xf]
	adds r1, r0, #0
	adds r1, #0x36
	strb r2, [r1]
	adds r0, #0x37
	strb r2, [r0]
	movs r2, #0
	ldr r4, _080090D4 @ =gUnknown_03002080
	ldr r3, _080090D8 @ =0x00007FFF
	ldr r1, _080090DC @ =gTextBoxCharacters
_08009094:
	adds r0, r3, #0
	ldrh r5, [r1]
	ands r0, r5
	strh r0, [r1]
	adds r1, #0xc
	adds r2, #1
	cmp r2, #0x3e
	bls _08009094
	ldr r0, _080090E0 @ =0x000004DC
	adds r1, r4, r0
	ldrh r0, [r1]
	cmp r0, #9
	beq _080090B6
	cmp r0, #0
	beq _080090B6
	movs r0, #9
	strh r0, [r1]
_080090B6:
	ldr r2, _080090E4 @ =0x000004DE
	adds r1, r4, r2
	ldrh r0, [r1]
	cmp r0, #9
	beq _080090C8
	cmp r0, #0
	beq _080090C8
	movs r0, #9
	strh r0, [r1]
_080090C8:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080090D0: .4byte 0x0000FFFC
_080090D4: .4byte gUnknown_03002080
_080090D8: .4byte 0x00007FFF
_080090DC: .4byte gTextBoxCharacters
_080090E0: .4byte 0x000004DC
_080090E4: .4byte 0x000004DE

	thumb_func_start sub_80090E8
sub_80090E8: @ 0x080090E8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	ldrh r2, [r0, #2]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _08009104
	adds r0, r2, #0
	bl sub_801480C
	b _0800910E
_08009104:
	adds r0, r2, #0
	bl sub_8013EB0
	bl sub_8014F94
_0800910E:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_800911C
sub_800911C: @ 0x0800911C
	adds r2, r0, #0
	ldr r1, [r2, #4]
	adds r0, r1, #2
	str r0, [r2, #4]
	ldrh r0, [r1, #2]
	strb r0, [r2, #0x17]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _08009134
	movs r0, #0
	strb r0, [r2, #0x16]
_08009134:
	ldr r0, [r2, #4]
	adds r0, #2
	str r0, [r2, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_8009140
sub_8009140: @ 0x08009140
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r2, r0, #2
	ldrh r0, [r0, #2]
	adds r1, r2, #2
	str r1, [r4, #4]
	ldrh r1, [r2, #2]
	bl sub_8014D10
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8009164
sub_8009164: @ 0x08009164
	ldr r2, [r0, #4]
	adds r1, r2, #2
	ldrh r2, [r2, #2]
	ldrh r3, [r1, #2]
	adds r1, #4
	str r1, [r0, #4]
	ldr r1, _08009184 @ =gMain
	lsls r0, r2, #2
	adds r0, r0, r2
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r1, r2
	adds r0, r0, r1
	strb r3, [r0]
	movs r0, #0
	bx lr
	.align 2, 0
_08009184: .4byte gMain

	thumb_func_start sub_8009188
sub_8009188: @ 0x08009188
	push {r4, lr}
	ldr r1, [r0, #4]
	adds r4, r1, #2
	ldrh r2, [r1, #2]
	adds r1, r4, #2
	str r1, [r0, #4]
	ldr r1, _080091E8 @ =gMain
	mov ip, r1
	lsls r3, r2, #2
	adds r3, r3, r2
	ldr r1, _080091EC @ =0x00000121
	add r1, ip
	adds r1, r3, r1
	ldrh r2, [r4, #2]
	strb r2, [r1]
	ldr r2, [r0, #4]
	adds r1, r2, #2
	str r1, [r0, #4]
	movs r1, #0x91
	lsls r1, r1, #1
	add r1, ip
	adds r1, r3, r1
	ldrh r2, [r2, #2]
	strb r2, [r1]
	ldr r2, [r0, #4]
	adds r1, r2, #2
	str r1, [r0, #4]
	ldr r1, _080091F0 @ =0x00000123
	add r1, ip
	adds r1, r3, r1
	ldrh r2, [r2, #2]
	strb r2, [r1]
	ldr r2, [r0, #4]
	adds r1, r2, #2
	str r1, [r0, #4]
	movs r1, #0x92
	lsls r1, r1, #1
	add r1, ip
	adds r3, r3, r1
	ldrh r1, [r2, #2]
	strb r1, [r3]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080091E8: .4byte gMain
_080091EC: .4byte 0x00000121
_080091F0: .4byte 0x00000123

	thumb_func_start sub_80091F4
sub_80091F4: @ 0x080091F4
	push {r4, lr}
	ldr r1, [r0, #4]
	ldr r4, _08009220 @ =gMain
	ldrh r2, [r1, #2]
	adds r3, r4, #0
	adds r3, #0xb2
	strb r2, [r3]
	adds r1, #4
	str r1, [r0, #4]
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0x1f
	bl StartHardwareBlend
	ldr r0, _08009224 @ =0x00000504
	str r0, [r4, #8]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08009220: .4byte gMain
_08009224: .4byte 0x00000504

	thumb_func_start sub_8009228
sub_8009228: @ 0x08009228
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #4]
	adds r0, r1, #2
	str r0, [r6, #4]
	ldrh r1, [r1, #2]
	lsrs r2, r1, #8
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08009250
	movs r0, #0
	adds r1, r2, #0
	bl sub_8004338
	cmp r0, #0
	bne _08009262
	ldr r0, [r6, #4]
	adds r0, #4
	b _080092C2
_08009250:
	movs r0, #0
	adds r1, r2, #0
	bl sub_8004338
	cmp r0, #0
	beq _08009262
	ldr r0, [r6, #4]
	adds r0, #4
	b _080092C2
_08009262:
	ldr r1, [r6, #4]
	movs r0, #0x80
	ldrh r2, [r1]
	ands r0, r2
	cmp r0, #0
	beq _080092B8
	ldrh r5, [r1, #2]
	adds r0, r1, #4
	str r0, [r6, #4]
	lsls r0, r5, #2
	ldr r1, _080092A8 @ =gUnknown_02011FC4
	adds r0, r0, r1
	ldrh r2, [r0]
	lsrs r4, r2, #1
	ldrh r5, [r0, #2]
	ldr r0, _080092AC @ =gMain
	ldrh r1, [r6, #0x1e]
	bl sub_8007CCC
	ldr r1, _080092B0 @ =gScriptContext
	movs r0, #0
	strb r0, [r1, #0x13]
	adds r0, r5, #0
	adds r0, #0x80
	strh r0, [r6, #0x1e]
	lsls r0, r5, #2
	ldr r1, _080092A8 @ =gUnknown_02011FC4
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, _080092B4 @ =gUnknown_02011FC0
	adds r0, r0, r2
	str r0, [r6, #8]
	lsls r4, r4, #1
	adds r0, r0, r4
	b _080092C2
	.align 2, 0
_080092A8: .4byte gUnknown_02011FC4
_080092AC: .4byte gMain
_080092B0: .4byte gScriptContext
_080092B4: .4byte gUnknown_02011FC0
_080092B8:
	ldrh r1, [r1, #2]
	lsrs r5, r1, #1
	lsls r1, r5, #1
	ldr r0, [r6, #8]
	adds r0, r0, r1
_080092C2:
	str r0, [r6, #4]
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_80092CC
sub_80092CC: @ 0x080092CC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	ldrh r6, [r0, #2]
	adds r0, #4
	str r0, [r4, #4]
	lsls r0, r6, #2
	ldr r1, _08009314 @ =gUnknown_02011FC4
	adds r0, r0, r1
	ldrh r1, [r0]
	lsrs r5, r1, #1
	ldrh r6, [r0, #2]
	ldr r0, _08009318 @ =gMain
	ldrh r1, [r4, #0x1e]
	bl sub_8007CCC
	ldr r1, _0800931C @ =gScriptContext
	movs r0, #0
	strb r0, [r1, #0x13]
	adds r0, r6, #0
	adds r0, #0x80
	strh r0, [r4, #0x1e]
	lsls r0, r6, #2
	ldr r1, _08009314 @ =gUnknown_02011FC4
	adds r0, r0, r1
	ldr r0, [r0]
	subs r1, #4
	adds r0, r0, r1
	str r0, [r4, #8]
	lsls r5, r5, #1
	adds r0, r0, r5
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08009314: .4byte gUnknown_02011FC4
_08009318: .4byte gMain
_0800931C: .4byte gScriptContext

	thumb_func_start sub_8009320
sub_8009320: @ 0x08009320
	push {r4, lr}
	ldr r1, [r0, #4]
	adds r4, r1, #2
	ldrh r2, [r1, #2]
	adds r1, r4, #2
	str r1, [r0, #4]
	ldr r3, _08009348 @ =gUnknown_03002920
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrh r2, [r4, #2]
	strb r2, [r1, #3]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08009348: .4byte gUnknown_03002920

	thumb_func_start sub_800934C
sub_800934C: @ 0x0800934C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0800936C
	ldr r0, _08009368 @ =gUnknown_03000844
	movs r1, #1
	bl sub_8014138
	b _08009374
	.align 2, 0
_08009368: .4byte gUnknown_03000844
_0800936C:
	ldr r0, _08009384 @ =gUnknown_03000844
	movs r1, #0
	bl sub_8014138
_08009374:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08009384: .4byte gUnknown_03000844

	thumb_func_start sub_8009388
sub_8009388: @ 0x08009388
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r1, [r7, #4]
	adds r0, r1, #2
	str r0, [r7, #4]
	ldrh r1, [r1, #2]
	lsrs r4, r1, #8
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08009474
	adds r0, r4, #0
	bl sub_80099A0
	adds r5, r0, #0
	cmp r5, #0xff
	bne _08009444
	movs r0, #0xff
	bl sub_80099A0
	adds r5, r0, #0
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _08009420 @ =gUnknown_03003AD0
	adds r6, r0, r1
	adds r5, #0x39
	strb r4, [r6]
	ldr r0, [r7, #0x3c]
	str r0, [r6, #0x10]
	ldr r2, _08009424 @ =0x040000D4
	ldr r0, _08009428 @ =gUnknown_08022CA0
	lsls r3, r4, #1
	adds r3, r3, r4
	lsls r3, r3, #2
	adds r3, r3, r0
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r6, #0x10]
	str r0, [r2, #4]
	ldrh r4, [r3, #4]
	lsrs r0, r4, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0800942C @ =gUnknown_08231BE8
	str r0, [r2]
	ldr r0, _08009430 @ =0x050002C0
	str r0, [r2, #4]
	ldr r0, _08009434 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	strh r5, [r6, #0xe]
	lsls r1, r5, #3
	ldr r0, _08009438 @ =gOamObjects
	adds r1, r1, r0
	ldrh r0, [r3, #6]
	strh r0, [r1]
	strh r0, [r6, #8]
	ldrh r0, [r3, #8]
	strh r0, [r1, #2]
	strh r0, [r6, #0xa]
	ldr r0, [r6, #0x10]
	ldr r2, _0800943C @ =0xF9FEE800
	adds r5, r0, r2
	lsrs r5, r5, #5
	ldr r2, _08009440 @ =0x000068C0
	adds r0, r5, r2
	strh r0, [r1, #4]
	strh r0, [r6, #0xc]
	ldr r0, [r7, #0x3c]
	adds r0, r0, r4
	str r0, [r7, #0x3c]
	b _0800948E
	.align 2, 0
_08009420: .4byte gUnknown_03003AD0
_08009424: .4byte 0x040000D4
_08009428: .4byte gUnknown_08022CA0
_0800942C: .4byte gUnknown_08231BE8
_08009430: .4byte 0x050002C0
_08009434: .4byte 0x80000010
_08009438: .4byte gOamObjects
_0800943C: .4byte 0xF9FEE800
_08009440: .4byte 0x000068C0
_08009444:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _0800946C @ =gUnknown_03003AD0
	adds r6, r0, r1
	ldrh r0, [r6, #0xe]
	lsls r1, r0, #3
	ldr r0, _08009470 @ =gOamObjects
	adds r1, r1, r0
	ldrh r0, [r6, #8]
	strh r0, [r1]
	ldrh r0, [r6, #0xa]
	strh r0, [r1, #2]
	ldrh r0, [r6, #0xc]
	strh r0, [r1, #4]
	movs r0, #0xfb
	ldrb r1, [r6, #5]
	ands r0, r1
	strb r0, [r6, #5]
	b _0800948E
	.align 2, 0
_0800946C: .4byte gUnknown_03003AD0
_08009470: .4byte gOamObjects
_08009474:
	adds r0, r4, #0
	bl sub_80099A0
	adds r5, r0, #0
	ldr r1, _0800949C @ =gUnknown_03003AD0
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #4
	ldrb r2, [r0, #5]
	orrs r1, r2
	strb r1, [r0, #5]
_0800948E:
	ldr r0, [r7, #4]
	adds r0, #2
	str r0, [r7, #4]
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800949C: .4byte gUnknown_03003AD0

	thumb_func_start sub_80094A0
sub_80094A0: @ 0x080094A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	lsrs r0, r0, #8
	bl sub_80099A0
	adds r2, r0, #0
	cmp r2, #0xff
	beq _080094F8
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	ldr r0, _080094F4 @ =gUnknown_03003AD0
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0xff
	lsls r0, r0, #8
	ldrh r2, [r1, #8]
	ands r0, r2
	strh r0, [r1, #8]
	ldr r2, [r4, #4]
	ldrb r2, [r2]
	orrs r0, r2
	strh r0, [r1, #8]
	movs r0, #0xfe
	lsls r0, r0, #8
	ldrh r2, [r1, #0xa]
	ands r0, r2
	strh r0, [r1, #0xa]
	ldr r2, [r4, #4]
	ldrh r2, [r2]
	lsrs r2, r2, #8
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r0, [r4, #4]
	adds r0, #2
	b _080094FC
	.align 2, 0
_080094F4: .4byte gUnknown_03003AD0
_080094F8:
	ldr r0, [r4, #4]
	adds r0, #4
_080094FC:
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8009508
sub_8009508: @ 0x08009508
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	lsrs r0, r0, #8
	bl sub_80099A0
	adds r2, r0, #0
	cmp r2, #0xff
	beq _08009560
	ldr r0, _0800955C @ =gUnknown_03003AD0
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r4, #4]
	movs r0, #3
	ldrb r2, [r2]
	ands r0, r2
	movs r3, #0
	strb r0, [r1, #4]
	ldr r2, [r4, #4]
	adds r0, r2, #2
	str r0, [r4, #4]
	ldrh r2, [r2, #2]
	lsrs r0, r2, #8
	strb r0, [r1, #3]
	ldr r0, [r4, #4]
	ldrh r0, [r0]
	strb r0, [r1, #6]
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #2
	ldrb r2, [r1, #5]
	orrs r0, r2
	strb r0, [r1, #5]
	strb r3, [r1, #7]
	b _08009566
	.align 2, 0
_0800955C: .4byte gUnknown_03003AD0
_08009560:
	ldr r0, [r4, #4]
	adds r0, #4
	str r0, [r4, #4]
_08009566:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8009570
sub_8009570: @ 0x08009570
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	lsrs r0, r0, #8
	bl sub_80099A0
	adds r2, r0, #0
	cmp r2, #0xff
	beq _080095B2
	ldr r1, _080095D0 @ =gUnknown_03003AD0
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r3, r0, r1
	ldr r0, [r4, #4]
	ldrh r0, [r0]
	strb r0, [r3, #1]
	ldr r1, [r4, #4]
	movs r0, #1
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _080095B2
	ldr r0, _080095D4 @ =gOamObjects
	adds r1, r2, #0
	adds r1, #0x39
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrh r0, [r3, #0xa]
	strh r0, [r1, #2]
_080095B2:
	ldr r1, _080095D0 @ =gUnknown_03003AD0
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0, #2]
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080095D0: .4byte gUnknown_03003AD0
_080095D4: .4byte gOamObjects

	thumb_func_start sub_80095D8
sub_80095D8: @ 0x080095D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	lsrs r0, r0, #8
	bl sub_80099A0
	adds r2, r0, #0
	cmp r2, #0xff
	beq _08009614
	ldr r0, _08009610 @ =gUnknown_03003AD0
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #2
	ldrb r1, [r1, #5]
	ands r0, r1
	cmp r0, #0
	beq _08009614
	ldr r0, [r4, #4]
	subs r0, #2
	str r0, [r4, #4]
	movs r0, #1
	b _0800961C
	.align 2, 0
_08009610: .4byte gUnknown_03003AD0
_08009614:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
_0800961C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8009624
sub_8009624: @ 0x08009624
	push {r4, lr}
	ldr r4, [r0, #4]
	ldr r2, _08009678 @ =0x040000D4
	ldr r1, _0800967C @ =gUnknown_081426FC
	str r1, [r2]
	ldr r1, _08009680 @ =0x06011F80
	str r1, [r2, #4]
	ldr r1, _08009684 @ =0x80000040
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08009688 @ =gUnknown_0814DC60
	str r1, [r2]
	ldr r1, _0800968C @ =0x05000300
	str r1, [r2, #4]
	ldr r1, _08009690 @ =0x80000010
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r2, _08009694 @ =gInvestigation
	movs r3, #0
	movs r1, #0xf0
	strh r1, [r2]
	movs r1, #0x30
	strh r1, [r2, #2]
	strb r3, [r2, #0x19]
	movs r1, #8
	strb r1, [r2, #0x18]
	movs r1, #0xf
	strb r1, [r2, #9]
	ldrh r1, [r4, #2]
	strb r1, [r2, #0xa]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r2, #0
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	adds r4, #4
	str r4, [r0, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08009678: .4byte 0x040000D4
_0800967C: .4byte gUnknown_081426FC
_08009680: .4byte 0x06011F80
_08009684: .4byte 0x80000040
_08009688: .4byte gUnknown_0814DC60
_0800968C: .4byte 0x05000300
_08009690: .4byte 0x80000010
_08009694: .4byte gInvestigation

	thumb_func_start sub_8009698
sub_8009698: @ 0x08009698
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r5, _080096F4 @ =gInvestigation
	ldrh r2, [r6]
	movs r0, #0x80
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08009700
	ldrh r1, [r5]
	ldrb r3, [r5, #9]
	adds r0, r1, r3
	movs r1, #0xff
	ands r0, r1
	strh r0, [r5]
	adds r0, r3, #0
	subs r0, #1
	strb r0, [r5, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080096D4
	ldr r0, _080096F8 @ =0x0000FF7F
	ands r0, r2
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r6]
_080096D4:
	movs r0, #0x80
	lsls r0, r0, #2
	ldrh r3, [r6]
	ands r0, r3
	cmp r0, #0
	bne _080096E2
	b _080098E2
_080096E2:
	movs r0, #0x31
	bl sub_8013834
	ldr r0, _080096FC @ =0x0000FDFF
	ldrh r1, [r6]
	ands r0, r1
	strh r0, [r6]
	b _080098E2
	.align 2, 0
_080096F4: .4byte gInvestigation
_080096F8: .4byte 0x0000FF7F
_080096FC: .4byte 0x0000FDFF
_08009700:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	bne _0800970C
	b _080098E2
_0800970C:
	movs r0, #0x2c
	ldrb r2, [r5, #0xa]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _08009818 @ =gUnknown_08022D0C
	adds r4, r1, r0
	ldr r1, _0800981C @ =gJoypad
	movs r0, #0x20
	ldrh r2, [r1]
	ands r0, r2
	adds r2, r1, #0
	cmp r0, #0
	beq _08009744
	ldrh r0, [r5]
	subs r0, #3
	strh r0, [r5]
	adds r1, r4, #0
	adds r1, #0x28
	ldrb r1, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bhs _0800973C
	strh r1, [r5]
_0800973C:
	ldrh r0, [r5]
	cmp r0, #0xe0
	bls _08009744
	strh r3, [r5]
_08009744:
	movs r0, #0x10
	ldrh r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0800976E
	ldrh r0, [r5]
	adds r0, #3
	strh r0, [r5]
	adds r1, r4, #0
	adds r1, #0x2a
	ldrb r1, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bls _08009764
	strh r1, [r5]
_08009764:
	ldrh r3, [r5]
	cmp r3, #0xe0
	bls _0800976E
	movs r0, #0xe0
	strh r0, [r5]
_0800976E:
	movs r0, #0x40
	ldrh r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08009798
	ldrh r0, [r5, #2]
	subs r0, #3
	strh r0, [r5, #2]
	adds r1, r4, #0
	adds r1, #0x29
	ldrb r1, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bhs _0800978E
	strh r1, [r5, #2]
_0800978E:
	ldrh r3, [r5, #2]
	cmp r3, #0x90
	bls _08009798
	movs r0, #0
	strh r0, [r5, #2]
_08009798:
	movs r0, #0x80
	ldrh r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _080097C2
	ldrh r0, [r5, #2]
	adds r0, #3
	strh r0, [r5, #2]
	adds r1, r4, #0
	adds r1, #0x2b
	ldrb r1, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bls _080097B8
	strh r1, [r5, #2]
_080097B8:
	ldrh r3, [r5, #2]
	cmp r3, #0x90
	bls _080097C2
	movs r0, #0x90
	strh r0, [r5, #2]
_080097C2:
	movs r1, #1
	ldrh r2, [r2, #2]
	ands r1, r2
	cmp r1, #0
	beq _080098B4
	ldr r0, _08009820 @ =0x0000FEF7
	ldrh r1, [r6]
	ands r0, r1
	strh r0, [r6]
	ldr r1, _08009824 @ =gMain
	ldrh r2, [r1, #0x3c]
	ldrh r3, [r5]
	adds r0, r2, r3
	adds r0, #0xc
	lsls r0, r0, #0x10
	ldr r2, _08009828 @ =0xFFFF0000
	ldrh r1, [r1, #0x3e]
	ldrh r3, [r5, #2]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	ldr r3, _0800982C @ =0x0000FFFF
	lsrs r0, r0, #0x10
	orrs r0, r1
	str r0, [sp]
	ldr r0, [sp, #4]
	ands r0, r2
	movs r1, #4
	orrs r0, r1
	ands r0, r3
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [sp, #4]
	mov r0, sp
	adds r1, r4, #0
	bl sub_8014508
	cmp r0, #0
	beq _08009830
	ldrh r0, [r4, #0x20]
	bl sub_8007538
	b _0800984C
	.align 2, 0
_08009818: .4byte gUnknown_08022D0C
_0800981C: .4byte gJoypad
_08009820: .4byte 0x0000FEF7
_08009824: .4byte gMain
_08009828: .4byte 0xFFFF0000
_0800982C: .4byte 0x0000FFFF
_08009830:
	adds r1, r4, #0
	adds r1, #0x10
	mov r0, sp
	bl sub_8014508
	cmp r0, #0
	beq _08009846
	ldrh r0, [r4, #0x22]
	bl sub_8007538
	b _0800984C
_08009846:
	ldrh r0, [r4, #0x24]
	bl sub_8007538
_0800984C:
	movs r0, #0x80
	lsls r0, r0, #3
	adds r4, r0, #0
	ldrh r0, [r6]
	orrs r0, r4
	strh r0, [r6]
	ldr r1, _0800989C @ =0x040000D4
	ldr r0, _080098A0 @ =gUnknown_0814DC60
	str r0, [r1]
	ldr r0, _080098A4 @ =0x05000300
	str r0, [r1, #4]
	ldr r0, _080098A8 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x2b
	bl sub_8013834
	ldrh r1, [r6]
	orrs r4, r1
	strh r4, [r6]
	ldr r1, _080098AC @ =gOamObjects
	ldrh r2, [r5, #2]
	movs r3, #0xb0
	lsls r3, r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	ldrh r5, [r5]
	movs r0, #0x80
	lsls r0, r0, #7
	adds r2, r5, r0
	adds r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	movs r0, #0xb1
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, _080098B0 @ =0x000084FC
	strh r0, [r1]
	movs r0, #0
	b _08009914
	.align 2, 0
_0800989C: .4byte 0x040000D4
_080098A0: .4byte gUnknown_0814DC60
_080098A4: .4byte 0x05000300
_080098A8: .4byte 0x80000010
_080098AC: .4byte gOamObjects
_080098B0: .4byte 0x000084FC
_080098B4:
	ldrb r0, [r5, #0x19]
	adds r0, #1
	strb r0, [r5, #0x19]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080098E2
	strb r1, [r5, #0x19]
	ldrb r0, [r5, #0x18]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r5, #0x18]
	ldr r1, _0800991C @ =0x040000D4
	lsls r0, r0, #5
	ldr r2, _08009920 @ =gUnknown_0814DC60
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _08009924 @ =0x05000300
	str r0, [r1, #4]
	ldr r0, _08009928 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080098E2:
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	ldrh r1, [r6]
	orrs r0, r1
	strh r0, [r6]
	ldr r1, _0800992C @ =gOamObjects
	ldrh r2, [r5, #2]
	movs r3, #0xb0
	lsls r3, r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	ldrh r5, [r5]
	movs r0, #0x80
	lsls r0, r0, #7
	adds r2, r5, r0
	adds r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	movs r0, #0xb1
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, _08009930 @ =0x000084FC
	strh r0, [r1]
	movs r0, #1
_08009914:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800991C: .4byte 0x040000D4
_08009920: .4byte gUnknown_0814DC60
_08009924: .4byte 0x05000300
_08009928: .4byte 0x80000010
_0800992C: .4byte gOamObjects
_08009930: .4byte 0x000084FC

	thumb_func_start sub_8009934
sub_8009934: @ 0x08009934
	push {r4, r5, lr}
	movs r4, #0
	ldr r3, _08009990 @ =0x040000D4
	ldr r5, _08009994 @ =gUnknown_08022CA0
	ldr r2, _08009998 @ =gUnknown_03003AD0
_0800993E:
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _08009982
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	str r1, [r3]
	ldr r1, [r2, #0x10]
	str r1, [r3, #4]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r0, #4
	ldrb r1, [r2, #5]
	ands r0, r1
	cmp r0, #0
	bne _08009982
	ldrh r0, [r2, #0xe]
	lsls r1, r0, #3
	ldr r0, _0800999C @ =gOamObjects
	adds r1, r1, r0
	ldrh r0, [r2, #8]
	strh r0, [r1]
	ldrh r0, [r2, #0xa]
	strh r0, [r1, #2]
	ldrh r0, [r2, #0xc]
	strh r0, [r1, #4]
_08009982:
	adds r2, #0x14
	adds r4, #1
	cmp r4, #7
	bls _0800993E
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08009990: .4byte 0x040000D4
_08009994: .4byte gUnknown_08022CA0
_08009998: .4byte gUnknown_03003AD0
_0800999C: .4byte gOamObjects

	thumb_func_start sub_80099A0
sub_80099A0: @ 0x080099A0
	adds r3, r0, #0
	movs r1, #0
	ldr r2, _080099B8 @ =gUnknown_03003AD0
_080099A6:
	ldrb r0, [r2]
	cmp r0, r3
	beq _080099BC
	adds r2, #0x14
	adds r1, #1
	cmp r1, #7
	bls _080099A6
	movs r0, #0xff
	b _080099BE
	.align 2, 0
_080099B8: .4byte gUnknown_03003AD0
_080099BC:
	adds r0, r1, #0
_080099BE:
	bx lr

	thumb_func_start sub_80099C0
sub_80099C0: @ 0x080099C0
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	ldr r1, _080099E0 @ =0x0000FBFF
	ldrh r2, [r0]
	ands r1, r2
	strh r1, [r0]
	ldr r0, _080099E4 @ =gOamObjects
	movs r1, #0xb0
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r1, #0xc0
	strh r1, [r0]
	movs r0, #0
	bx lr
	.align 2, 0
_080099E0: .4byte 0x0000FBFF
_080099E4: .4byte gOamObjects

	thumb_func_start sub_80099E8
sub_80099E8: @ 0x080099E8
	push {r4, r5, r6, r7, lr}
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	ldr r1, _08009A40 @ =gOamObjects+0x1A0
	movs r4, #0
	ldr r5, _08009A44 @ =gInvestigation
	ldr r7, _08009A48 @ =0x000040E0
	movs r3, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r6, r0, #0
	movs r2, #0xa2
	lsls r2, r2, #7
_08009A04:
	strh r7, [r1]
	adds r0, r3, r6
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	adds r1, #8
	adds r3, #0x3c
	adds r2, #0x20
	adds r4, #1
	cmp r4, #3
	bls _08009A04
	movs r4, #0
	adds r0, r5, #0
	movs r1, #0xf
	bl sub_800EB24
	movs r0, #0xe0
	strb r0, [r5, #0xf]
	strb r4, [r5, #0x10]
	movs r0, #8
	strb r0, [r5, #0x11]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xd]
	ldr r1, _08009A4C @ =gMain+0x8
	adds r0, #0xfc
	str r0, [r1]
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08009A40: .4byte gOamObjects+0x1A0
_08009A44: .4byte gInvestigation
_08009A48: .4byte 0x000040E0
_08009A4C: .4byte gMain+0x8

	thumb_func_start sub_8009A50
sub_8009A50: @ 0x08009A50
	adds r3, r0, #0
	ldr r0, [r3, #4]
	adds r1, r0, #2
	str r1, [r3, #4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _08009A74
	ldr r0, _08009A70 @ =gMain
	movs r1, #0x95
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	b _08009A82
	.align 2, 0
_08009A70: .4byte gMain
_08009A74:
	ldr r0, _08009A90 @ =gMain
	movs r1, #0x95
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #4
	orrs r1, r2
_08009A82:
	str r1, [r0]
	ldr r0, [r3, #4]
	adds r0, #2
	str r0, [r3, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_08009A90: .4byte gMain

	thumb_func_start sub_8009A94
sub_8009A94: @ 0x08009A94
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _08009AAC
	movs r0, #1
	bl sub_8017928
	b _08009AB2
_08009AAC:
	movs r0, #2
	bl sub_8017928
_08009AB2:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8009AC0
sub_8009AC0: @ 0x08009AC0
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r5, _08009B04 @ =gOamObjects+0x188
	ldr r1, [r3, #4]
	adds r0, r1, #2
	str r0, [r3, #4]
	ldr r4, _08009B08 @ =gMain
	adds r2, r4, #0
	adds r2, #0x92
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _08009B28
	ldr r1, _08009B0C @ =0x040000D4
	ldr r0, _08009B10 @ =gUnknown_081438DC
	str r0, [r1]
	ldr r0, _08009B14 @ =0x06013400
	str r0, [r1, #4]
	ldr r0, _08009B18 @ =0x80000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08009B1C @ =gUnknown_0814DEC0
	str r0, [r1]
	ldr r0, _08009B20 @ =0x050002A0
	str r0, [r1, #4]
	ldr r0, _08009B24 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #9
	b _08009B54
	.align 2, 0
_08009B04: .4byte gOamObjects+0x188
_08009B08: .4byte gMain
_08009B0C: .4byte 0x040000D4
_08009B10: .4byte gUnknown_081438DC
_08009B14: .4byte 0x06013400
_08009B18: .4byte 0x80000800
_08009B1C: .4byte gUnknown_0814DEC0
_08009B20: .4byte 0x050002A0
_08009B24: .4byte 0x80000010
_08009B28:
	ldr r1, _08009B78 @ =0x040000D4
	ldr r0, _08009B7C @ =gUnknown_081430DC
	str r0, [r1]
	ldr r0, _08009B80 @ =0x06013400
	str r0, [r1, #4]
	ldr r2, _08009B84 @ =0x80000400
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08009B88 @ =gUnknown_081440DC
	str r0, [r1]
	ldr r0, _08009B8C @ =0x06013C00
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08009B90 @ =gUnknown_0814DEE0
	str r0, [r1]
	ldr r0, _08009B94 @ =0x050002A0
	str r0, [r1, #4]
	ldr r0, _08009B98 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08009B9C @ =0x01000009
_08009B54:
	str r0, [r4, #8]
	ldr r0, [r3, #4]
	adds r0, #2
	str r0, [r3, #4]
	ldr r0, _08009BA0 @ =0x000003EF
	strh r0, [r5]
	ldr r0, _08009BA4 @ =0x0000C1EF
	strh r0, [r5, #2]
	ldr r0, _08009BA8 @ =0x000051A0
	strh r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #8]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08009B78: .4byte 0x040000D4
_08009B7C: .4byte gUnknown_081430DC
_08009B80: .4byte 0x06013400
_08009B84: .4byte 0x80000400
_08009B88: .4byte gUnknown_081440DC
_08009B8C: .4byte 0x06013C00
_08009B90: .4byte gUnknown_0814DEE0
_08009B94: .4byte 0x050002A0
_08009B98: .4byte 0x80000010
_08009B9C: .4byte 0x01000009
_08009BA0: .4byte 0x000003EF
_08009BA4: .4byte 0x0000C1EF
_08009BA8: .4byte 0x000051A0

	thumb_func_start sub_8009BAC
sub_8009BAC: @ 0x08009BAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	ldr r0, [r0, #4]
	ldrh r1, [r0, #2]
	mov r8, r1
	adds r0, #4
	mov r2, sb
	str r0, [r2, #4]
	movs r3, #0xf
	ands r3, r1
	cmp r3, #1
	beq _08009BF4
	cmp r3, #1
	ble _08009BD4
	cmp r3, #2
	beq _08009C14
_08009BD4:
	ldr r2, _08009BE8 @ =gMain
	adds r1, r2, #0
	adds r1, #0x44
	movs r0, #0xe
	strb r0, [r1]
	ldr r0, _08009BEC @ =gUnknown_08263FD4
	mov sl, r0
	ldr r5, _08009BF0 @ =gUnknown_08263FF4
	b _08009C24
	.align 2, 0
_08009BE8: .4byte gMain
_08009BEC: .4byte gUnknown_08263FD4
_08009BF0: .4byte gUnknown_08263FF4
_08009BF4:
	ldr r2, _08009C08 @ =gMain
	adds r1, r2, #0
	adds r1, #0x44
	movs r0, #0xf2
	strb r0, [r1]
	ldr r1, _08009C0C @ =gUnknown_08265CC4
	mov sl, r1
	ldr r5, _08009C10 @ =gUnknown_08265CE4
	b _08009C24
	.align 2, 0
_08009C08: .4byte gMain
_08009C0C: .4byte gUnknown_08265CC4
_08009C10: .4byte gUnknown_08265CE4
_08009C14:
	ldr r2, _08009C44 @ =gMain
	adds r1, r2, #0
	adds r1, #0x44
	movs r0, #0xf2
	strb r0, [r1]
	ldr r0, _08009C48 @ =gUnknown_08277A98
	mov sl, r0
	ldr r5, _08009C4C @ =gUnknown_08277AB8
_08009C24:
	movs r6, #0
	movs r0, #0x10
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08009C6E
	adds r0, r2, #0
	adds r0, #0x44
	strb r6, [r0]
	cmp r3, #1
	beq _08009C5A
	cmp r3, #1
	bgt _08009C50
	cmp r3, #0
	beq _08009C56
	b _08009C5E
	.align 2, 0
_08009C44: .4byte gMain
_08009C48: .4byte gUnknown_08277A98
_08009C4C: .4byte gUnknown_08277AB8
_08009C50:
	cmp r3, #2
	beq _08009C5A
	b _08009C5E
_08009C56:
	movs r6, #0x30
	b _08009C5E
_08009C5A:
	movs r6, #0x28
	rsbs r6, r6, #0
_08009C5E:
	ldr r0, _08009D18 @ =gUnknown_03000844
	movs r2, #0x10
	ldrsh r1, [r0, r2]
	subs r1, r1, r6
	movs r3, #0x12
	ldrsh r2, [r0, r3]
	bl sub_8013FB8
_08009C6E:
	ldr r0, _08009D1C @ =gIORegisters
	mov ip, r0
	ldr r2, _08009D20 @ =0x0000E080
	ldr r1, _08009D24 @ =gUnknown_03000000
	movs r0, #0x80
	lsls r0, r0, #3
_08009C7A:
	strh r2, [r1]
	adds r1, #2
	subs r0, #1
	cmp r0, #0
	bne _08009C7A
	movs r0, #0
	ldr r7, _08009D24 @ =gUnknown_03000000
_08009C88:
	movs r2, #0
	adds r4, r0, #1
	lsls r3, r0, #5
_08009C8E:
	adds r0, r6, #0
	cmp r0, #0
	bge _08009C96
	adds r0, #7
_08009C96:
	asrs r0, r0, #3
	subs r0, r2, r0
	cmp r0, #0x1e
	bhi _08009CAC
	adds r0, #1
	adds r0, r3, r0
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r1, [r5]
	adds r1, #0x80
	strh r1, [r0]
_08009CAC:
	adds r2, #1
	adds r5, #2
	cmp r2, #0x1d
	ble _08009C8E
	adds r0, r4, #0
	cmp r0, #0x13
	ble _08009C88
	movs r1, #0x9a
	lsls r1, r1, #3
	add sl, r1
	ldr r1, _08009D28 @ =0x040000D4
	mov r2, sl
	str r2, [r1]
	ldr r0, _08009D2C @ =gUnknown_0203B500
	str r0, [r1, #4]
	ldr r0, _08009D30 @ =0x80002580
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r1, ip
	adds r1, #0x4a
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	movs r2, #0
	ldrh r3, [r1]
	orrs r0, r3
	strh r0, [r1]
	ldr r0, _08009D34 @ =0x00001E0A
	mov r3, ip
	strh r0, [r3, #4]
	movs r0, #0x20
	mov r3, r8
	ands r3, r0
	cmp r3, #0
	beq _08009CFA
	ldr r0, _08009D38 @ =0x0000F7FF
	ldrh r3, [r1]
	ands r0, r3
	strh r0, [r1]
_08009CFA:
	movs r0, #0x40
	mov r1, sb
	ldrh r1, [r1]
	orrs r0, r1
	mov r2, sb
	strh r0, [r2]
	movs r0, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08009D18: .4byte gUnknown_03000844
_08009D1C: .4byte gIORegisters
_08009D20: .4byte 0x0000E080
_08009D24: .4byte gUnknown_03000000
_08009D28: .4byte 0x040000D4
_08009D2C: .4byte gUnknown_0203B500
_08009D30: .4byte 0x80002580
_08009D34: .4byte 0x00001E0A
_08009D38: .4byte 0x0000F7FF

	thumb_func_start sub_8009D3C
sub_8009D3C: @ 0x08009D3C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r2, r0, #2
	ldrh r0, [r0, #2]
	adds r1, r2, #2
	str r1, [r4, #4]
	ldrh r1, [r2, #2]
	bl sub_8013D04
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8009D60
sub_8009D60: @ 0x08009D60
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r4, [r2, #4]
	adds r3, r4, #2
	str r3, [r2, #4]
	ldr r0, _08009D90 @ =0x0000FFFF
	ldrh r1, [r4, #2]
	cmp r1, r0
	bne _08009D98
	ldr r0, _08009D94 @ =gIORegisters
	adds r0, #0x4a
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	ldrh r5, [r0]
	orrs r1, r5
	strh r1, [r0]
	movs r0, #9
	strh r0, [r2, #0x18]
	movs r0, #0x74
	strh r0, [r2, #0x1a]
	adds r0, r4, #6
	b _08009DAE
	.align 2, 0
_08009D90: .4byte 0x0000FFFF
_08009D94: .4byte gIORegisters
_08009D98:
	ldr r1, _08009DB8 @ =gIORegisters
	adds r1, #0x4a
	ldr r0, _08009DBC @ =0x0000FDFF
	ldrh r5, [r1]
	ands r0, r5
	strh r0, [r1]
	ldrh r0, [r4, #2]
	strh r0, [r2, #0x18]
	ldrh r0, [r3, #2]
	strh r0, [r2, #0x1a]
	adds r0, r3, #4
_08009DAE:
	str r0, [r2, #4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08009DB8: .4byte gIORegisters
_08009DBC: .4byte 0x0000FDFF

	thumb_func_start sub_8009DC0
sub_8009DC0: @ 0x08009DC0
	push {r4, lr}
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	ldr r4, _08009DF0 @ =gMain
	movs r0, #0
	strb r0, [r4, #0x18]
	strb r0, [r4, #0x19]
	bl sub_800AECC
	ldr r0, _08009DF4 @ =gSaveDataBuffer
	adds r0, #0xe8
	movs r1, #0x80
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
	bl sub_800AE84
	movs r0, #1
	str r0, [r4, #8]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08009DF0: .4byte gMain
_08009DF4: .4byte gSaveDataBuffer

	thumb_func_start sub_8009DF8
sub_8009DF8: @ 0x08009DF8
	adds r1, r0, #0
	ldr r0, [r1, #4]
	adds r2, r0, #2
	str r2, [r1, #4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _08009E14
	ldr r0, _08009E10 @ =gMain
	ldrb r0, [r0, #9]
	cmp r0, #8
	bne _08009E28
	b _08009E1C
	.align 2, 0
_08009E10: .4byte gMain
_08009E14:
	ldr r0, _08009E24 @ =gMain
	ldrb r0, [r0, #9]
	cmp r0, #6
	bne _08009E28
_08009E1C:
	adds r0, r2, #2
	str r0, [r1, #4]
	movs r0, #0
	b _08009E30
	.align 2, 0
_08009E24: .4byte gMain
_08009E28:
	ldr r0, [r1, #4]
	subs r0, #2
	str r0, [r1, #4]
	movs r0, #1
_08009E30:
	bx lr
	.align 2, 0

	thumb_func_start sub_8009E34
sub_8009E34: @ 0x08009E34
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	lsrs r0, r0, #8
	bl sub_80099A0
	adds r3, r0, #0
	cmp r3, #0xff
	beq _08009E6A
	ldr r0, [r4, #4]
	movs r2, #3
	ldrh r0, [r0]
	ands r2, r0
	lsls r2, r2, #0xc
	ldr r0, _08009E88 @ =gUnknown_03003AD0
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, _08009E8C @ =0x0000CFFF
	ldrh r5, [r1, #0xa]
	ands r0, r5
	adds r0, r0, r2
	strh r0, [r1, #0xa]
_08009E6A:
	ldr r1, _08009E88 @ =gUnknown_03003AD0
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0, #2]
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08009E88: .4byte gUnknown_03003AD0
_08009E8C: .4byte 0x0000CFFF

	thumb_func_start sub_8009E90
sub_8009E90: @ 0x08009E90
	adds r1, r0, #0
	ldr r0, _08009EA8 @ =gMain
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	bne _08009EAC
	ldr r0, [r1, #4]
	adds r0, #2
	str r0, [r1, #4]
	movs r0, #0
	b _08009EAE
	.align 2, 0
_08009EA8: .4byte gMain
_08009EAC:
	movs r0, #1
_08009EAE:
	bx lr

	thumb_func_start sub_8009EB0
sub_8009EB0: @ 0x08009EB0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	adds r2, r1, #2
	ldr r3, _08009EDC @ =gMain
	ldrh r0, [r3, #0x2e]
	strh r0, [r3, #0x32]
	ldrh r0, [r1, #2]
	strh r0, [r3, #0x2e]
	adds r0, r3, #0
	adds r0, #0x34
	movs r1, #1
	strb r1, [r0]
	adds r0, r2, #2
	str r0, [r4, #4]
	ldrh r0, [r2, #2]
	cmp r0, #0
	bne _08009EE0
	adds r0, r3, #0
	adds r0, #0x35
	strb r1, [r0]
	b _08009EE8
	.align 2, 0
_08009EDC: .4byte gMain
_08009EE0:
	adds r1, r3, #0
	adds r1, #0x35
	movs r0, #0
	strb r0, [r1]
_08009EE8:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8009EF8
sub_8009EF8: @ 0x08009EF8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08009F20 @ =gMain
	adds r1, r0, #0
	adds r1, #0x7e
	ldrh r1, [r1]
	adds r3, r0, #0
	cmp r1, #0
	bne _08009F24
	ldrb r0, [r4, #0x13]
	cmp r0, #1
	bls _08009F24
	ldr r0, [r4, #4]
	ldrh r1, [r0, #2]
	strh r1, [r4, #2]
	adds r0, #4
	str r0, [r4, #4]
	movs r0, #0
	b _08009F72
	.align 2, 0
_08009F20: .4byte gMain
_08009F24:
	ldrh r2, [r4, #2]
	cmp r2, #0
	beq _08009F68
	ldr r0, _08009F64 @ =gAnimation
	adds r5, r0, #0
	adds r5, #0x52
	ldrh r1, [r4, #0x30]
	ldrb r2, [r5]
	cmp r1, r2
	beq _08009F48
	adds r0, #0x44
	adds r1, r3, #0
	adds r1, #0xb8
	ldrh r1, [r1]
	bl sub_80141E0
	ldrb r0, [r5]
	strh r0, [r4, #0x30]
_08009F48:
	ldrh r0, [r4, #2]
	subs r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08009F70
	ldr r0, [r4, #4]
	adds r0, #4
	str r0, [r4, #4]
	strh r1, [r4, #0x30]
	movs r0, #0
	b _08009F72
	.align 2, 0
_08009F64: .4byte gAnimation
_08009F68:
	ldr r1, [r4, #4]
	ldrh r0, [r1, #2]
	strh r0, [r4, #2]
	strh r2, [r4, #0x30]
_08009F70:
	movs r0, #1
_08009F72:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8009F78
sub_8009F78: @ 0x08009F78
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, [r4, #4]
	adds r3, r2, #2
	ldr r5, _0800A014 @ =gMain
	ldrh r1, [r2, #2]
	movs r6, #0x91
	lsls r6, r6, #2
	adds r0, r5, r6
	strb r1, [r0]
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r6, #0xa0
	adds r1, r5, r6
	adds r5, r0, r1
	ldrh r6, [r2, #2]
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #1
	orrs r1, r2
	str r1, [r0]
	adds r0, r3, #2
	str r0, [r4, #4]
	ldrh r0, [r3, #2]
	ldr r2, _0800A018 @ =0x0000FFFF
	cmp r0, r2
	beq _08009FBE
	strb r0, [r5, #9]
	strb r0, [r5, #8]
_08009FBE:
	ldr r1, [r4, #4]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r0, [r1, #2]
	cmp r0, r2
	beq _08009FCC
	strh r0, [r5, #6]
_08009FCC:
	ldr r1, [r4, #4]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r0, [r1, #2]
	cmp r0, r2
	beq _08009FDA
	strh r0, [r5, #4]
_08009FDA:
	ldr r1, [r4, #4]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r0, [r1, #2]
	cmp r0, r2
	beq _08009FE8
	strh r0, [r5, #0xa]
_08009FE8:
	ldr r1, [r4, #4]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r0, [r1, #2]
	cmp r0, r2
	beq _08009FF6
	strh r0, [r5, #0xc]
_08009FF6:
	ldr r1, [r4, #4]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r0, [r1, #2]
	cmp r0, r2
	beq _0800A004
	strh r0, [r5, #0x12]
_0800A004:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800A014: .4byte gMain
_0800A018: .4byte 0x0000FFFF

	thumb_func_start sub_800A01C
sub_800A01C: @ 0x0800A01C
	push {r4, lr}
	sub sp, #4
	ldr r4, [r0, #4]
	ldrh r2, [r4, #2]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #3
	ldr r2, _0800A050 @ =gMain+0x1A4
	adds r1, r1, r2
	mov r3, sp
	movs r2, #0
	strh r2, [r3]
	ldr r2, _0800A054 @ =0x040000D4
	str r3, [r2]
	str r1, [r2, #4]
	ldr r1, _0800A058 @ =0x81000014
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r4, #4
	str r4, [r0, #4]
	movs r0, #0
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800A050: .4byte gMain+0x1A4
_0800A054: .4byte 0x040000D4
_0800A058: .4byte 0x81000014

	thumb_func_start sub_800A05C
sub_800A05C: @ 0x0800A05C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r2, r0, #2
	ldrh r0, [r0, #2]
	adds r1, r2, #2
	str r1, [r4, #4]
	ldrh r1, [r2, #2]
	bl sub_800EAC8
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800A080
sub_800A080: @ 0x0800A080
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldr r0, _0800A0B0 @ =gMain
	ldr r2, _0800A0B4 @ =0x0000024A
	adds r0, r0, r2
	ldrb r2, [r0]
	ldrh r1, [r1, #2]
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0]
	movs r0, #1
	bl sub_8016E10
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800A0B0: .4byte gMain
_0800A0B4: .4byte 0x0000024A

	thumb_func_start sub_800A0B8
sub_800A0B8: @ 0x0800A0B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800A0DC @ =gMain
	ldr r1, _0800A0E0 @ =0x0000024A
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #2
	bl sub_8016E10
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800A0DC: .4byte gMain
_0800A0E0: .4byte 0x0000024A

	thumb_func_start sub_800A0E4
sub_800A0E4: @ 0x0800A0E4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r2, sp
	movs r3, #1
_0800A0EE:
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	strh r0, [r2]
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bge _0800A0EE
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #1
	beq _0800A122
	cmp r0, #1
	bgt _0800A112
	cmp r0, #0
	beq _0800A118
	b _0800A13A
_0800A112:
	cmp r0, #2
	beq _0800A130
	b _0800A13A
_0800A118:
	mov r0, sp
	ldrh r0, [r0, #2]
	bl sub_8017928
	b _0800A13A
_0800A122:
	ldr r0, _0800A12C @ =gMain
	mov r1, sp
	ldrh r1, [r1, #2]
	adds r0, #0xa6
	b _0800A138
	.align 2, 0
_0800A12C: .4byte gMain
_0800A130:
	ldr r0, _0800A14C @ =gMain
	mov r1, sp
	ldrh r1, [r1, #2]
	adds r0, #0x9c
_0800A138:
	strh r1, [r0]
_0800A13A:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #1
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800A14C: .4byte gMain

	thumb_func_start sub_800A150
sub_800A150: @ 0x0800A150
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_800A15C
sub_800A15C: @ 0x0800A15C
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_800A168
sub_800A168: @ 0x0800A168
	push {r4, r5, lr}
	ldr r4, [r0, #4]
	ldr r1, _0800A194 @ =gMain
	ldrh r3, [r4, #2]
	movs r5, #0x91
	lsls r5, r5, #2
	adds r2, r1, r5
	strb r3, [r2]
	ldr r2, [r1, #8]
	str r2, [r1, #0xc]
	ldr r2, _0800A198 @ =0x00090A04
	str r2, [r1, #8]
	ldr r2, _0800A19C @ =0x0000024B
	adds r1, r1, r2
	movs r2, #1
	strb r2, [r1]
	adds r4, #4
	str r4, [r0, #4]
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800A194: .4byte gMain
_0800A198: .4byte 0x00090A04
_0800A19C: .4byte 0x0000024B

	thumb_func_start sub_800A1A0
sub_800A1A0: @ 0x0800A1A0
	push {lr}
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	bl sub_8016D40
	ldr r0, _0800A1BC @ =gMain
	ldr r1, _0800A1C0 @ =0x0000024B
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_0800A1BC: .4byte gMain
_0800A1C0: .4byte 0x0000024B

	thumb_func_start sub_800A1C4
sub_800A1C4: @ 0x0800A1C4
	push {r4, r5, lr}
	ldr r5, [r0, #4]
	adds r1, r5, #2
	str r1, [r0, #4]
	ldr r1, _0800A1FC @ =gMain
	ldr r2, _0800A200 @ =0x00000286
	adds r4, r1, r2
	ldrh r3, [r4]
	lsls r2, r3, #1
	ldr r3, _0800A204 @ =0x00000276
	adds r1, r1, r3
	adds r2, r2, r1
	ldr r3, _0800A208 @ =gUnknown_03003B70
	ldrh r5, [r5, #2]
	lsls r1, r5, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r2]
	ldrh r1, [r4]
	adds r1, #1
	strh r1, [r4]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800A1FC: .4byte gMain
_0800A200: .4byte 0x00000286
_0800A204: .4byte 0x00000276
_0800A208: .4byte gUnknown_03003B70

	thumb_func_start sub_800A20C
sub_800A20C: @ 0x0800A20C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #4]
	adds r0, #2
	str r0, [r7, #4]
	movs r1, #0
	ldr r0, _0800A2DC @ =gMain
	ldr r3, _0800A2E0 @ =0x00000286
	adds r2, r0, r3
	mov sb, r0
	ldrh r6, [r2]
	cmp r1, r6
	bhs _0800A25E
	ldr r0, _0800A2E4 @ =0x00000276
	add r0, sb
	mov r8, r0
	ldr r5, _0800A2E8 @ =gUnknown_03003B70
	adds r4, r2, #0
	movs r3, #0
_0800A23A:
	lsls r0, r1, #1
	mov r6, r8
	adds r2, r0, r6
	ldr r0, [r7, #4]
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r6, [r2]
	ldrh r0, [r0]
	cmp r6, r0
	bne _0800A252
	strh r3, [r2]
_0800A252:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r4]
	cmp r1, r0
	blo _0800A23A
_0800A25E:
	movs r1, #0
	ldr r0, _0800A2E0 @ =0x00000286
	add r0, sb
	ldrh r2, [r0]
	cmp r1, r2
	bhs _0800A2BC
	ldr r3, _0800A2E4 @ =0x00000276
	add r3, sb
	mov r8, r3
	mov ip, r0
	mov sl, ip
_0800A274:
	lsls r0, r1, #1
	add r0, r8
	ldrh r0, [r0]
	adds r5, r1, #1
	cmp r0, #0
	bne _0800A2B0
	lsls r0, r5, #0x10
	lsrs r2, r0, #0x10
	adds r3, r1, #0
	mov r6, ip
	ldrh r6, [r6]
	cmp r2, r6
	bhs _0800A2B0
	ldr r4, _0800A2EC @ =gMain+0x276
	mov r6, sl
_0800A292:
	lsls r1, r3, #1
	adds r1, r1, r4
	lsls r0, r2, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r6]
	cmp r2, r0
	blo _0800A292
_0800A2B0:
	lsls r0, r5, #0x10
	lsrs r1, r0, #0x10
	mov r2, ip
	ldrh r2, [r2]
	cmp r1, r2
	blo _0800A274
_0800A2BC:
	ldr r1, _0800A2E0 @ =0x00000286
	add r1, sb
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	ldr r0, [r7, #4]
	adds r0, #2
	str r0, [r7, #4]
	movs r0, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800A2DC: .4byte gMain
_0800A2E0: .4byte 0x00000286
_0800A2E4: .4byte 0x00000276
_0800A2E8: .4byte gUnknown_03003B70
_0800A2EC: .4byte gMain+0x276

	thumb_func_start sub_800A2F0
sub_800A2F0: @ 0x0800A2F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r2, r0, #2
	ldrh r0, [r0, #2]
	adds r1, r2, #2
	str r1, [r4, #4]
	ldrh r1, [r2, #2]
	bl sub_8011088
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800A314
sub_800A314: @ 0x0800A314
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	ldrh r0, [r0, #2]
	adds r3, r1, #2
	ldrh r1, [r1, #2]
	adds r2, r3, #2
	str r2, [r4, #4]
	ldrh r2, [r3, #2]
	bl sub_8000E78
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800A33C
sub_800A33C: @ 0x0800A33C
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_800A348
sub_800A348: @ 0x0800A348
	ldr r1, [r0, #4]
	adds r1, #4
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_800A354
sub_800A354: @ 0x0800A354
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	ldrh r0, [r0, #2]
	adds r3, r1, #2
	ldrh r1, [r1, #2]
	adds r2, r3, #2
	str r2, [r4, #4]
	ldrh r2, [r3, #2]
	bl sub_8000EB4
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800A37C
sub_800A37C: @ 0x0800A37C
	push {r4, lr}
	ldr r1, [r0, #4]
	adds r3, r1, #2
	ldrh r4, [r1, #2]
	lsls r2, r4, #2
	adds r2, r2, r4
	lsls r2, r2, #3
	ldr r1, _0800A3BC @ =gMain+0x1A4
	adds r2, r2, r1
	adds r1, r3, #2
	str r1, [r0, #4]
	ldrh r1, [r3, #2]
	strb r1, [r2, #0x1c]
	ldr r3, [r0, #4]
	adds r1, r3, #2
	str r1, [r0, #4]
	ldrh r1, [r3, #2]
	strh r1, [r2, #0x20]
	ldr r3, [r0, #4]
	adds r1, r3, #2
	str r1, [r0, #4]
	ldrh r1, [r3, #2]
	strh r1, [r2, #0x10]
	movs r1, #1
	str r1, [r2, #0x18]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800A3BC: .4byte gMain+0x1A4

	thumb_func_start sub_800A3C0
sub_800A3C0: @ 0x0800A3C0
	push {r4, lr}
	ldr r2, [r0, #4]
	adds r3, r2, #2
	ldrh r4, [r2, #2]
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #3
	ldr r2, _0800A410 @ =gMain+0x1A4
	adds r1, r1, r2
	mov ip, r1
	adds r1, r3, #2
	str r1, [r0, #4]
	mov r1, ip
	adds r1, #0x1c
	mov r4, ip
	ldr r2, [r4, #0x18]
	adds r1, r1, r2
	ldrh r2, [r3, #2]
	strb r2, [r1]
	ldr r3, [r0, #4]
	adds r1, r3, #2
	str r1, [r0, #4]
	ldr r1, [r4, #0x18]
	lsls r1, r1, #1
	mov r2, ip
	adds r2, #0x20
	adds r2, r2, r1
	ldrh r1, [r3, #2]
	strh r1, [r2]
	ldr r1, [r4, #0x18]
	adds r1, #1
	str r1, [r4, #0x18]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800A410: .4byte gMain+0x1A4

	thumb_func_start sub_800A414
sub_800A414: @ 0x0800A414
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80161F4
	bl sub_801622C
	ldr r0, _0800A43C @ =gMain
	movs r1, #0
	strh r1, [r0, #0x2e]
	ldr r1, _0800A440 @ =0x0000024B
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0]
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800A43C: .4byte gMain
_0800A440: .4byte 0x0000024B

	thumb_func_start sub_800A444
sub_800A444: @ 0x0800A444
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8016204
	bl sub_801622C
	ldr r0, _0800A468 @ =gMain
	ldr r1, _0800A46C @ =0x0000024B
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800A468: .4byte gMain
_0800A46C: .4byte 0x0000024B

	thumb_func_start sub_800A470
sub_800A470: @ 0x0800A470
	push {r4, lr}
	ldr r2, [r0, #4]
	ldr r1, _0800A48C @ =gMain+0x1A4
	ldr r4, _0800A490 @ =0xFFFFFE64
	adds r3, r1, r4
	ldr r1, _0800A494 @ =0x00040A04
	str r1, [r3]
	adds r2, #4
	str r2, [r0, #4]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800A48C: .4byte gMain+0x1A4
_0800A490: .4byte 0xFFFFFE64
_0800A494: .4byte 0x00040A04

	thumb_func_start sub_800A498
sub_800A498: @ 0x0800A498
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r6, #4]
	adds r1, r0, #2
	ldrh r4, [r0, #2]
	adds r7, r4, #0
	adds r0, r1, #2
	str r0, [r6, #4]
	ldrh r5, [r1, #2]
	ldr r2, _0800A4CC @ =gMain
	lsls r1, r4, #4
	movs r3, #0xf
	adds r0, r5, #0
	ands r0, r3
	orrs r1, r0
	ldr r0, _0800A4D0 @ =0x000002BE
	adds r2, r2, r0
	strb r1, [r2]
	cmp r4, #1
	beq _0800A4FA
	cmp r4, #1
	bgt _0800A4D4
	cmp r4, #0
	beq _0800A4DA
	b _0800A538
	.align 2, 0
_0800A4CC: .4byte gMain
_0800A4D0: .4byte 0x000002BE
_0800A4D4:
	cmp r7, #2
	beq _0800A51A
	b _0800A538
_0800A4DA:
	cmp r5, #1
	bne _0800A4EE
	bl sub_800E7B0
	movs r0, #0x18
	movs r1, #0x80
	movs r2, #1
	bl sub_800E7EC
	b _0800A538
_0800A4EE:
	movs r0, #0x18
	movs r1, #0x80
	movs r2, #0
	bl sub_800E7EC
	b _0800A538
_0800A4FA:
	cmp r5, #1
	bne _0800A50E
	bl sub_800E8C4
	movs r0, #0
	movs r1, #0x80
	movs r2, #1
	bl sub_800E900
	b _0800A538
_0800A50E:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_800E900
	b _0800A538
_0800A51A:
	cmp r5, #1
	bne _0800A52E
	bl sub_800E8C4
	movs r0, #0x20
	movs r1, #0x80
	movs r2, #1
	bl sub_800E9D4
	b _0800A538
_0800A52E:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_800E900
_0800A538:
	ldr r0, [r6, #4]
	adds r0, #2
	str r0, [r6, #4]
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800A548
sub_800A548: @ 0x0800A548
	ldr r1, [r0, #4]
	adds r3, r1, #2
	ldr r2, _0800A588 @ =gMain
	mov ip, r2
	ldrh r2, [r1, #2]
	movs r1, #0x91
	lsls r1, r1, #2
	add r1, ip
	strb r2, [r1]
	movs r2, #0
	ldrsb r2, [r1, r2]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #3
	movs r2, #0xd2
	lsls r2, r2, #1
	add r2, ip
	adds r1, r1, r2
	adds r2, r3, #2
	str r2, [r0, #4]
	ldrh r2, [r3, #2]
	strh r2, [r1, #0x14]
	ldr r3, [r0, #4]
	adds r2, r3, #2
	str r2, [r0, #4]
	ldrh r2, [r3, #2]
	strh r2, [r1, #0x16]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_0800A588: .4byte gMain

	thumb_func_start sub_800A58C
sub_800A58C: @ 0x0800A58C
	push {lr}
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	bl LoadCurrentScriptIntoRam
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800A5A0
sub_800A5A0: @ 0x0800A5A0
	ldr r3, _0800A5B8 @ =gAnimation
	ldr r1, [r3, #0x44]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	str r1, [r3, #0x44]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_0800A5B8: .4byte gAnimation

	thumb_func_start sub_800A5BC
sub_800A5BC: @ 0x0800A5BC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0800A5D4 @ =gInvestigation
	ldrh r1, [r4]
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _0800A5D8
	bl sub_801816C
	movs r0, #1
	b _0800A600
	.align 2, 0
_0800A5D4: .4byte gInvestigation
_0800A5D8:
	cmp r0, #0
	blt _0800A5F4
	bl sub_8018138
	ldrh r0, [r4]
	cmp r0, #0x20
	bls _0800A5EA
	movs r0, #1
	b _0800A600
_0800A5EA:
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r4]
	movs r0, #1
	b _0800A600
_0800A5F4:
	bl sub_801823C
	ldr r0, [r5, #4]
	adds r0, #2
	str r0, [r5, #4]
	movs r0, #0
_0800A600:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800A608
sub_800A608: @ 0x0800A608
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r0, [r1, #2]
	cmp r0, #1
	bne _0800A61E
	bl sub_80180B4
	b _0800A626
_0800A61E:
	cmp r0, #0
	bne _0800A626
	bl sub_80180F8
_0800A626:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_800A634
sub_800A634: @ 0x0800A634
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8017F2C
	ldr r0, [r4, #4]
	adds r0, #4
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800A64C
sub_800A64C: @ 0x0800A64C
	ldr r3, _0800A680 @ =gCourtRecord
	movs r1, #0
	strb r1, [r3, #1]
	movs r2, #0
	movs r1, #0x88
	lsls r1, r1, #1
	strh r1, [r3, #4]
	strb r2, [r3, #3]
	movs r1, #0xfb
	ldrb r2, [r3, #0xc]
	ands r1, r2
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r3, #0xc]
	ldr r2, _0800A684 @ =gMain+0xC
	subs r3, r2, #4
	ldr r1, [r3]
	str r1, [r2]
	ldr r1, _0800A688 @ =0x00000707
	str r1, [r3]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_0800A680: .4byte gCourtRecord
_0800A684: .4byte gMain+0xC
_0800A688: .4byte 0x00000707

	thumb_func_start sub_800A68C
sub_800A68C: @ 0x0800A68C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r0, [r1, #2]
	cmp r0, #1
	beq _0800A6B2
	cmp r0, #1
	bgt _0800A6A6
	cmp r0, #0
	beq _0800A6AC
	b _0800A6BC
_0800A6A6:
	cmp r0, #2
	beq _0800A6B8
	b _0800A6BC
_0800A6AC:
	bl sub_8018690
	b _0800A6BC
_0800A6B2:
	bl sub_8018720
	b _0800A6BC
_0800A6B8:
	bl sub_80186EC
_0800A6BC:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800A6CC
sub_800A6CC: @ 0x0800A6CC
	adds r2, r0, #0
	ldr r1, [r2, #4]
	adds r0, r1, #2
	str r0, [r2, #4]
	ldrh r1, [r1, #2]
	cmp r1, #1
	bne _0800A6F0
	ldr r0, _0800A6EC @ =gScriptContext
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	ldrh r3, [r0]
	orrs r1, r3
	strh r1, [r0]
	b _0800A6FA
	.align 2, 0
_0800A6EC: .4byte gScriptContext
_0800A6F0:
	ldr r1, _0800A704 @ =gScriptContext
	ldr r0, _0800A708 @ =0x0000F7FF
	ldrh r3, [r1]
	ands r0, r3
	strh r0, [r1]
_0800A6FA:
	ldr r0, [r2, #4]
	adds r0, #2
	str r0, [r2, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_0800A704: .4byte gScriptContext
_0800A708: .4byte 0x0000F7FF

	thumb_func_start sub_800A70C
sub_800A70C: @ 0x0800A70C
	ldr r1, [r0, #4]
	ldr r3, _0800A71C @ =gMain
	ldrh r2, [r1, #2]
	strh r2, [r3, #0x1e]
	adds r1, #4
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_0800A71C: .4byte gMain

	thumb_func_start sub_800A720
sub_800A720: @ 0x0800A720
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r2, r0, #2
	ldrh r0, [r0, #2]
	ldrh r1, [r2, #2]
	adds r2, #4
	str r2, [r4, #4]
	bl sub_80138FC
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800A744
sub_800A744: @ 0x0800A744
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	adds r0, #2
	ldrh r1, [r0, #2]
	adds r0, #4
	str r0, [r5, #4]
	ldr r4, _0800A760 @ =gMain+0x1A4
	cmp r1, #0
	beq _0800A764
	cmp r1, #1
	beq _0800A77C
	b _0800A792
	.align 2, 0
_0800A760: .4byte gMain+0x1A4
_0800A764:
	ldr r0, _0800A774 @ =0xFFFFFE64
	adds r1, r4, r0
	ldr r0, _0800A778 @ =0x00040A04
	str r0, [r1]
	adds r1, r4, #0
	adds r1, #0xa8
	movs r0, #1
	b _0800A790
	.align 2, 0
_0800A774: .4byte 0xFFFFFE64
_0800A778: .4byte 0x00040A04
_0800A77C:
	movs r0, #0
	bl sub_80037FC
	ldr r0, _0800A7A0 @ =0xFFFFFE64
	adds r1, r4, r0
	ldr r0, _0800A7A4 @ =0x00070A04
	str r0, [r1]
	adds r1, r4, #0
	adds r1, #0xa8
	movs r0, #0
_0800A790:
	strb r0, [r1]
_0800A792:
	ldr r0, [r5, #4]
	adds r0, #2
	str r0, [r5, #4]
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800A7A0: .4byte 0xFFFFFE64
_0800A7A4: .4byte 0x00070A04

	thumb_func_start sub_800A7A8
sub_800A7A8: @ 0x0800A7A8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0800A7C0 @ =gIORegisters
	ldrb r0, [r4, #9]
	cmp r0, #1
	beq _0800A81C
	cmp r0, #1
	bgt _0800A7C4
	cmp r0, #0
	beq _0800A7CA
	b _0800A858
	.align 2, 0
_0800A7C0: .4byte gIORegisters
_0800A7C4:
	cmp r0, #2
	beq _0800A84A
	b _0800A858
_0800A7CA:
	movs r0, #0xf0
	lsls r0, r0, #6
	strh r0, [r5]
	ldr r0, _0800A814 @ =0x00003D01
	strh r0, [r5, #2]
	adds r0, #0xff
	strh r0, [r5, #4]
	ldr r0, _0800A818 @ =0x00003FC7
	strh r0, [r5, #6]
	movs r0, #0
	bl sub_8002820
	movs r0, #0
	bl CopyBGDataToVram
	adds r1, r5, #0
	adds r1, #0x4a
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r0, #8
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r0, #0x78
	strb r0, [r4, #0xb]
	b _0800A858
	.align 2, 0
_0800A814: .4byte 0x00003D01
_0800A818: .4byte 0x00003FC7
_0800A81C:
	adds r0, r4, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800A858
	ldrb r0, [r4, #0xb]
	adds r5, r0, #0
	cmp r5, #0
	beq _0800A834
	subs r0, #1
	strb r0, [r4, #0xb]
	b _0800A858
_0800A834:
	movs r0, #2
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	strb r5, [r4, #0x1a]
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	b _0800A858
_0800A84A:
	adds r0, r4, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800A858
	movs r0, #1
	str r0, [r4, #8]
_0800A858:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800A860
sub_800A860: @ 0x0800A860
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, _0800A87C @ =gIORegisters
	mov r8, r0
	ldrb r7, [r6, #9]
	cmp r7, #1
	beq _0800A8A0
	cmp r7, #1
	bgt _0800A880
	cmp r7, #0
	beq _0800A88E
	b _0800AC2E
	.align 2, 0
_0800A87C: .4byte gIORegisters
_0800A880:
	cmp r7, #2
	bne _0800A886
	b _0800A9E0
_0800A886:
	cmp r7, #3
	bne _0800A88C
	b _0800AAEC
_0800A88C:
	b _0800AC2E
_0800A88E:
	bl ResetGameState
	bl sub_800AECC
	ldr r0, _0800A89C @ =0x00000101
	str r0, [r6, #8]
	b _0800AC2E
	.align 2, 0
_0800A89C: .4byte 0x00000101
_0800A8A0:
	ldr r4, _0800A978 @ =0x040000D4
	ldr r0, _0800A97C @ =gUnknown_081370FC
	str r0, [r4]
	ldr r0, _0800A980 @ =0x06003800
	str r0, [r4, #4]
	ldr r0, _0800A984 @ =0x80000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800A988 @ =gUnknown_08130000
	str r0, [r4]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r0, _0800A98C @ =0x80000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800A990 @ =gUnknown_08130200
	ldr r5, _0800A994 @ =gUnknown_0202CFC0
	adds r1, r5, #0
	bl LZ77UnCompWram
	str r5, [r4]
	ldr r0, _0800A998 @ =0x06004000
	str r0, [r4, #4]
	ldr r0, _0800A99C @ =0x80004B00
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800A9A0 @ =gUnknown_0814DF20
	str r0, [r4]
	ldr r0, _0800A9A4 @ =0x05000240
	str r0, [r4, #4]
	ldr r0, _0800A9A8 @ =0x80000060
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800A9AC @ =gUnknown_081458DC
	str r0, [r4]
	ldr r0, _0800A9B0 @ =0x06010400
	str r0, [r4, #4]
	ldr r0, _0800A9B4 @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, _0800A9B8 @ =gOamObjects+0x1A0
	movs r1, #0
	mov ip, r1
	ldr r1, _0800A9BC @ =0x00004070
	strh r1, [r2]
	ldr r4, _0800A9C0 @ =0x00008058
	strh r4, [r2, #2]
	ldr r0, _0800A9C4 @ =0x00002420
	strh r0, [r2, #4]
	adds r2, #8
	strh r1, [r2]
	ldr r3, _0800A9C8 @ =0x00008078
	strh r3, [r2, #2]
	adds r0, #8
	strh r0, [r2, #4]
	adds r2, #8
	movs r5, #0xf0
	adds r0, r5, #0
	ldrb r1, [r6, #0x1b]
	ands r0, r1
	cmp r0, #0
	beq _0800A932
	ldr r0, _0800A9CC @ =0x00004084
	strh r0, [r2]
	strh r4, [r2, #2]
	ldr r1, _0800A9D0 @ =0x00002030
	strh r1, [r2, #4]
	adds r2, #8
	strh r0, [r2]
	strh r3, [r2, #2]
	ldr r0, _0800A9D4 @ =0x00002038
	strh r0, [r2, #4]
_0800A932:
	mov r1, r8
	adds r1, #0x4a
	movs r0, #0xca
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r1, _0800A9D8 @ =gInvestigation
	mov r3, ip
	strb r3, [r1, #0x17]
	movs r0, #2
	strb r0, [r1, #0x16]
	strb r3, [r6, #0x17]
	adds r0, r5, #0
	ldrb r4, [r6, #0x1b]
	ands r0, r4
	cmp r0, #0
	beq _0800A954
	strb r7, [r6, #0x17]
_0800A954:
	movs r5, #0x96
	lsls r5, r5, #2
	adds r2, r6, r5
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	movs r0, #9
	strb r0, [r6, #0x1a]
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	ldr r0, _0800A9DC @ =0x00000201
	str r0, [r6, #8]
	b _0800AC2E
	.align 2, 0
_0800A978: .4byte 0x040000D4
_0800A97C: .4byte gUnknown_081370FC
_0800A980: .4byte 0x06003800
_0800A984: .4byte 0x80000400
_0800A988: .4byte gUnknown_08130000
_0800A98C: .4byte 0x80000100
_0800A990: .4byte gUnknown_08130200
_0800A994: .4byte gUnknown_0202CFC0
_0800A998: .4byte 0x06004000
_0800A99C: .4byte 0x80004B00
_0800A9A0: .4byte gUnknown_0814DF20
_0800A9A4: .4byte 0x05000240
_0800A9A8: .4byte 0x80000060
_0800A9AC: .4byte gUnknown_081458DC
_0800A9B0: .4byte 0x06010400
_0800A9B4: .4byte 0x80000200
_0800A9B8: .4byte gOamObjects+0x1A0
_0800A9BC: .4byte 0x00004070
_0800A9C0: .4byte 0x00008058
_0800A9C4: .4byte 0x00002420
_0800A9C8: .4byte 0x00008078
_0800A9CC: .4byte 0x00004084
_0800A9D0: .4byte 0x00002030
_0800A9D4: .4byte 0x00002038
_0800A9D8: .4byte gInvestigation
_0800A9DC: .4byte 0x00000201
_0800A9E0:
	ldr r0, _0800AA00 @ =gJoypad
	ldrh r2, [r0, #2]
	movs r1, #9
	ands r1, r2
	cmp r1, #0
	beq _0800AA0C
	movs r0, #0x3a
	bl sub_8013834
	ldr r0, _0800AA04 @ =gScriptContext
	movs r1, #0
	strh r1, [r0, #0x2a]
	ldr r0, _0800AA08 @ =0x00000301
	str r0, [r6, #8]
	b _0800AA32
	.align 2, 0
_0800AA00: .4byte gJoypad
_0800AA04: .4byte gScriptContext
_0800AA08: .4byte 0x00000301
_0800AA0C:
	movs r0, #0xf0
	ldrb r3, [r6, #0x1b]
	ands r0, r3
	cmp r0, #0
	beq _0800AA32
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	beq _0800AA32
	ldr r0, _0800AA4C @ =gInvestigation
	strb r1, [r0, #0x17]
	strb r7, [r0, #0x16]
	movs r0, #1
	ldrb r4, [r6, #0x17]
	eors r0, r4
	strb r0, [r6, #0x17]
	movs r0, #0x2a
	bl sub_8013834
_0800AA32:
	ldr r0, _0800AA4C @ =gInvestigation
	ldrb r2, [r0, #0x16]
	adds r1, r0, #0
	cmp r2, #2
	bne _0800AA50
	ldrb r0, [r1, #0x17]
	adds r0, #1
	strb r0, [r1, #0x17]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _0800AA66
	b _0800AA5E
	.align 2, 0
_0800AA4C: .4byte gInvestigation
_0800AA50:
	ldrb r0, [r1, #0x17]
	adds r0, #1
	strb r0, [r1, #0x17]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _0800AA66
_0800AA5E:
	movs r0, #0
	strb r0, [r1, #0x17]
	adds r0, r2, #1
	strb r0, [r1, #0x16]
_0800AA66:
	adds r3, r1, #0
	ldrb r5, [r3, #0x16]
	cmp r5, #6
	bls _0800AA72
	movs r0, #2
	strb r0, [r3, #0x16]
_0800AA72:
	ldrb r0, [r6, #0x17]
	cmp r0, #0
	bne _0800AAB8
	ldr r2, _0800AAB0 @ =gOamObjects+0x1A0
	ldrb r1, [r3, #0x16]
	lsls r0, r1, #0xc
	movs r4, #0x84
	lsls r4, r4, #3
	adds r1, r4, #0
	adds r0, r0, r1
	strh r0, [r2, #4]
	adds r2, #8
	ldrb r3, [r3, #0x16]
	lsls r0, r3, #0xc
	movs r5, #0x85
	lsls r5, r5, #3
	adds r1, r5, #0
	adds r0, r0, r1
	strh r0, [r2, #4]
	adds r2, #8
	movs r0, #0xf0
	ldrb r6, [r6, #0x1b]
	ands r0, r6
	cmp r0, #0
	bne _0800AAA6
	b _0800AC2E
_0800AAA6:
	ldr r0, _0800AAB4 @ =0x00005030
	strh r0, [r2, #4]
	adds r0, #8
	strh r0, [r2, #0xc]
	b _0800AC2E
	.align 2, 0
_0800AAB0: .4byte gOamObjects+0x1A0
_0800AAB4: .4byte 0x00005030
_0800AAB8:
	ldr r2, _0800AAE4 @ =gOamObjects+0x1A0
	ldr r0, _0800AAE8 @ =0x00005420
	strh r0, [r2, #4]
	adds r2, #8
	adds r0, #8
	strh r0, [r2, #4]
	adds r2, #8
	movs r0, #0xf0
	ldrb r6, [r6, #0x1b]
	ands r0, r6
	cmp r0, #0
	bne _0800AAD2
	b _0800AC2E
_0800AAD2:
	ldrb r3, [r1, #0x16]
	lsls r0, r3, #0xc
	adds r0, #0x30
	strh r0, [r2, #4]
	ldrb r1, [r1, #0x16]
	lsls r0, r1, #0xc
	adds r0, #0x38
	strh r0, [r2, #0xc]
	b _0800AC2E
	.align 2, 0
_0800AAE4: .4byte gOamObjects+0x1A0
_0800AAE8: .4byte 0x00005420
_0800AAEC:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r6, #0x17]
	cmp r0, #0x27
	bls _0800AB08
	cmp r1, #0
	bne _0800AB04
	movs r0, #0xc
	b _0800AB06
_0800AB04:
	movs r0, #0xd
_0800AB06:
	str r0, [r6, #8]
_0800AB08:
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0800ABA8
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _0800AB4C
	ldr r2, _0800AB40 @ =gOamObjects+0x1A0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
	ldr r1, _0800AB44 @ =0x00002020
	strh r1, [r2, #4]
	adds r2, #8
	strh r0, [r2]
	ldr r0, _0800AB48 @ =0x00002028
	strh r0, [r2, #4]
	adds r2, #8
	ldrb r4, [r6, #0xa]
	cmp r4, #8
	bls _0800AB60
	movs r0, #0
	strb r0, [r6, #0xa]
	b _0800AB60
	.align 2, 0
_0800AB40: .4byte gOamObjects+0x1A0
_0800AB44: .4byte 0x00002020
_0800AB48: .4byte 0x00002028
_0800AB4C:
	ldr r2, _0800AB94 @ =gOamObjects+0x1A0
	ldr r0, _0800AB98 @ =0x00004070
	strh r0, [r2]
	ldr r1, _0800AB9C @ =0x00002020
	strh r1, [r2, #4]
	adds r2, #8
	strh r0, [r2]
	ldr r0, _0800ABA0 @ =0x00002028
	strh r0, [r2, #4]
	adds r2, #8
_0800AB60:
	movs r0, #0xf0
	ldrb r6, [r6, #0x1b]
	ands r0, r6
	ldr r4, _0800ABA4 @ =gScriptContext
	cmp r0, #0
	beq _0800AC28
	ldrh r1, [r2]
	movs r3, #0xff
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0xe0
	bhi _0800AB7E
	ldrh r5, [r4, #0x2a]
	adds r0, r5, r1
	strh r0, [r2]
_0800AB7E:
	adds r2, #8
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0xe0
	bhi _0800AC28
	ldrh r3, [r4, #0x2a]
	adds r0, r3, r1
	strh r0, [r2]
	b _0800AC28
	.align 2, 0
_0800AB94: .4byte gOamObjects+0x1A0
_0800AB98: .4byte 0x00004070
_0800AB9C: .4byte 0x00002020
_0800ABA0: .4byte 0x00002028
_0800ABA4: .4byte gScriptContext
_0800ABA8:
	ldr r2, _0800AC08 @ =gOamObjects+0x1A0
	ldrh r1, [r2]
	movs r3, #0xff
	adds r0, r3, #0
	ands r0, r1
	ldr r4, _0800AC0C @ =gScriptContext
	cmp r0, #0xe0
	bhi _0800ABBE
	ldrh r5, [r4, #0x2a]
	adds r0, r5, r1
	strh r0, [r2]
_0800ABBE:
	adds r2, #8
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0xe0
	bhi _0800ABD0
	ldrh r3, [r4, #0x2a]
	adds r0, r3, r1
	strh r0, [r2]
_0800ABD0:
	adds r2, #8
	movs r0, #0xf0
	ldrb r5, [r6, #0x1b]
	ands r0, r5
	cmp r0, #0
	beq _0800AC28
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _0800AC18
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
	ldr r1, _0800AC10 @ =0x00002030
	strh r1, [r2, #4]
	adds r2, #8
	strh r0, [r2]
	ldr r0, _0800AC14 @ =0x00002038
	strh r0, [r2, #4]
	ldrb r0, [r6, #0xa]
	cmp r0, #8
	bls _0800AC28
	movs r0, #0
	strb r0, [r6, #0xa]
	b _0800AC28
	.align 2, 0
_0800AC08: .4byte gOamObjects+0x1A0
_0800AC0C: .4byte gScriptContext
_0800AC10: .4byte 0x00002030
_0800AC14: .4byte 0x00002038
_0800AC18:
	ldr r0, _0800AC38 @ =0x00004084
	strh r0, [r2]
	ldr r1, _0800AC3C @ =0x00002030
	strh r1, [r2, #4]
	adds r2, #8
	strh r0, [r2]
	ldr r0, _0800AC40 @ =0x00002038
	strh r0, [r2, #4]
_0800AC28:
	ldrh r0, [r4, #0x2a]
	adds r0, #1
	strh r0, [r4, #0x2a]
_0800AC2E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AC38: .4byte 0x00004084
_0800AC3C: .4byte 0x00002030
_0800AC40: .4byte 0x00002038

	thumb_func_start sub_800AC44
sub_800AC44: @ 0x0800AC44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r4, _0800AC68 @ =gIORegisters
	ldr r3, _0800AC6C @ =gOamObjects+0x1C8
	ldrb r0, [r6, #9]
	cmp r0, #1
	beq _0800AD4C
	cmp r0, #1
	bgt _0800AC70
	cmp r0, #0
	beq _0800AC7E
	b _0800AE6A
	.align 2, 0
_0800AC68: .4byte gIORegisters
_0800AC6C: .4byte gOamObjects+0x1C8
_0800AC70:
	cmp r0, #2
	bne _0800AC76
	b _0800AE28
_0800AC76:
	cmp r0, #3
	bne _0800AC7C
	b _0800AE48
_0800AC7C:
	b _0800AE6A
_0800AC7E:
	movs r1, #0x30
	strh r1, [r3]
	ldr r0, _0800AD04 @ =0x0000C1A8
	strh r0, [r3, #2]
	ldr r0, _0800AD08 @ =0x000051A0
	strh r0, [r3, #4]
	adds r3, #8
	strh r1, [r3]
	ldr r0, _0800AD0C @ =0x0000C108
	strh r0, [r3, #2]
	ldr r0, _0800AD10 @ =0x000051E0
	strh r0, [r3, #4]
	ldr r0, _0800AD14 @ =0x040000D4
	ldr r1, _0800AD18 @ =gUnknown_08142DFC
	str r1, [r0]
	ldr r1, _0800AD1C @ =0x06001400
	str r1, [r0, #4]
	ldr r1, _0800AD20 @ =0x80000170
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800AD24 @ =gUnknown_0814DEA0
	str r1, [r0]
	ldr r1, _0800AD28 @ =0x05000020
	str r1, [r0, #4]
	ldr r2, _0800AD2C @ =0x80000010
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800AD30 @ =gUnknown_081448DC
	str r1, [r0]
	ldr r1, _0800AD34 @ =0x06013400
	str r1, [r0, #4]
	ldr r1, _0800AD38 @ =0x80000800
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800AD3C @ =gUnknown_0814DF00
	str r1, [r0]
	ldr r1, _0800AD40 @ =0x050002A0
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	movs r5, #0
	ldr r2, _0800AD44 @ =0x000003FF
	adds r3, r4, #0
	adds r3, #0x4a
	movs r1, #0
	ldr r0, _0800AD48 @ =gUnknown_03000000
_0800ACDA:
	strh r1, [r0]
	adds r0, #2
	adds r5, #1
	cmp r5, r2
	bls _0800ACDA
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #0x12]
	movs r0, #8
	strh r0, [r4, #0x10]
	movs r0, #0xf8
	lsls r0, r0, #6
	strh r0, [r4, #4]
	movs r0, #0xea
	lsls r0, r0, #5
	strh r0, [r3]
	movs r0, #0xd
	strb r0, [r6, #0x1a]
	ldrb r0, [r6, #9]
	adds r0, #1
	b _0800AE16
	.align 2, 0
_0800AD04: .4byte 0x0000C1A8
_0800AD08: .4byte 0x000051A0
_0800AD0C: .4byte 0x0000C108
_0800AD10: .4byte 0x000051E0
_0800AD14: .4byte 0x040000D4
_0800AD18: .4byte gUnknown_08142DFC
_0800AD1C: .4byte 0x06001400
_0800AD20: .4byte 0x80000170
_0800AD24: .4byte gUnknown_0814DEA0
_0800AD28: .4byte 0x05000020
_0800AD2C: .4byte 0x80000010
_0800AD30: .4byte gUnknown_081448DC
_0800AD34: .4byte 0x06013400
_0800AD38: .4byte 0x80000800
_0800AD3C: .4byte gUnknown_0814DF00
_0800AD40: .4byte 0x050002A0
_0800AD44: .4byte 0x000003FF
_0800AD48: .4byte gUnknown_03000000
_0800AD4C:
	ldrh r1, [r3, #2]
	ldr r0, _0800AE1C @ =0x000001FF
	adds r2, r0, #0
	ands r2, r1
	adds r2, #8
	ands r2, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r1
	adds r0, r0, r2
	strh r0, [r3, #2]
	ldrh r0, [r3, #0xa]
	subs r0, #8
	strh r0, [r3, #0xa]
	movs r5, #0
	ldr r0, _0800AE20 @ =gUnknown_03000000
	mov sb, r0
	mov r8, r5
	ldr r0, _0800AE24 @ =gUnknown_08022E6C
	adds r0, #0xe
	mov sl, r0
_0800AD76:
	lsls r0, r5, #6
	mov r1, sb
	adds r3, r0, r1
	ldrb r1, [r6, #0xa]
	lsls r0, r1, #1
	adds r3, r3, r0
	movs r4, #0
	cmp r4, r1
	bhs _0800ADAC
	mov r1, r8
	add r1, sl
	movs r2, #0x85
	lsls r2, r2, #5
	mov ip, r2
	movs r7, #0xa0
	lsls r7, r7, #2
_0800AD96:
	ldrb r2, [r1]
	add r2, ip
	strh r2, [r3]
	adds r0, r3, r7
	strh r2, [r0]
	subs r3, #2
	subs r1, #1
	adds r4, #1
	ldrb r0, [r6, #0xa]
	cmp r4, r0
	blo _0800AD96
_0800ADAC:
	movs r1, #0xf
	add r8, r1
	adds r5, #1
	cmp r5, #9
	bls _0800AD76
	movs r5, #0
	ldr r0, _0800AE24 @ =gUnknown_08022E6C
	adds r0, #0xe
	mov r8, r0
_0800ADBE:
	lsls r0, r5, #6
	mov r2, sb
	adds r3, r0, r2
	ldrb r1, [r6, #0xa]
	movs r0, #0x1f
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r4, #0
	adds r7, r5, #1
	cmp r4, r1
	bhs _0800ADFE
	lsls r0, r5, #4
	subs r0, r0, r5
	mov r2, r8
	adds r1, r0, r2
	movs r0, #0xa5
	lsls r0, r0, #5
	mov ip, r0
	movs r5, #0xa0
	lsls r5, r5, #2
_0800ADE8:
	ldrb r2, [r1]
	add r2, ip
	strh r2, [r3]
	adds r0, r3, r5
	strh r2, [r0]
	adds r3, #2
	subs r1, #1
	adds r4, #1
	ldrb r2, [r6, #0xa]
	cmp r4, r2
	blo _0800ADE8
_0800ADFE:
	adds r5, r7, #0
	cmp r5, #9
	bls _0800ADBE
	ldrb r0, [r6, #0xa]
	cmp r0, #0xe
	bls _0800AE42
	movs r0, #0x56
	bl sub_8013834
	ldrb r0, [r6, #9]
	adds r0, #1
	movs r1, #0
_0800AE16:
	strb r0, [r6, #9]
	strb r1, [r6, #0xa]
	b _0800AE6A
	.align 2, 0
_0800AE1C: .4byte 0x000001FF
_0800AE20: .4byte gUnknown_03000000
_0800AE24: .4byte gUnknown_08022E6C
_0800AE28:
	ldrb r0, [r6, #0xa]
	cmp r0, #0x77
	bls _0800AE42
	movs r0, #2
	movs r1, #3
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r6, #9]
	adds r0, #1
	strb r0, [r6, #9]
	b _0800AE6A
_0800AE42:
	adds r0, #1
	strb r0, [r6, #0xa]
	b _0800AE6A
_0800AE48:
	adds r0, r6, #0
	adds r0, #0x7e
	ldrh r1, [r0]
	cmp r1, #0
	bne _0800AE6A
	mov r0, sp
	strh r1, [r0]
	ldr r1, _0800AE7C @ =0x040000D4
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0800AE80 @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	str r0, [r6, #8]
_0800AE6A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AE7C: .4byte 0x040000D4
_0800AE80: .4byte 0x81000200

	thumb_func_start sub_800AE84
sub_800AE84: @ 0x0800AE84
	push {r4, lr}
	ldr r4, _0800AEB8 @ =gSaveDataBuffer
	adds r1, r4, #0
	adds r1, #0x4f
	movs r0, #0x10
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r1, _0800AEBC @ =0x040000D4
	ldr r0, _0800AEC0 @ =gUnknown_08022F04
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _0800AEC4 @ =0x80000019
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_800AF3C
	movs r1, #0xe0
	lsls r1, r1, #0x14
	ldr r2, _0800AEC8 @ =0x00002BBC
	adds r0, r4, #0
	bl WriteSramEx
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800AEB8: .4byte gSaveDataBuffer
_0800AEBC: .4byte 0x040000D4
_0800AEC0: .4byte gUnknown_08022F04
_0800AEC4: .4byte 0x80000019
_0800AEC8: .4byte 0x00002BBC

	thumb_func_start sub_800AECC
sub_800AECC: @ 0x0800AECC
	push {r4, lr}
	movs r0, #0xe0
	lsls r0, r0, #0x14
	ldr r4, _0800AF10 @ =gSaveDataBuffer
	ldr r2, _0800AF14 @ =0x00002BBC
	adds r1, r4, #0
	bl ReadSram
	movs r1, #0
	ldr r2, _0800AF18 @ =gUnknown_08022F04
_0800AEE0:
	adds r0, r1, r2
	ldrb r0, [r0]
	ldrb r3, [r4]
	cmp r0, r3
	bne _0800AF20
	adds r4, #1
	adds r1, #1
	cmp r1, #0x2f
	bls _0800AEE0
	ldr r4, _0800AF1C @ =gMain
	ldr r0, _0800AF10 @ =gSaveDataBuffer
	adds r0, #0xe8
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0xb4
	strb r1, [r0]
	bl sub_800AF78
	cmp r0, #0
	beq _0800AF30
	movs r0, #0x10
	strb r0, [r4, #0x1b]
	movs r0, #0
	b _0800AF34
	.align 2, 0
_0800AF10: .4byte gSaveDataBuffer
_0800AF14: .4byte 0x00002BBC
_0800AF18: .4byte gUnknown_08022F04
_0800AF1C: .4byte gMain
_0800AF20:
	ldr r1, _0800AF2C @ =gMain
	movs r0, #0
	strb r0, [r1, #0x1b]
	movs r0, #2
	b _0800AF34
	.align 2, 0
_0800AF2C: .4byte gMain
_0800AF30:
	strb r0, [r4, #0x1b]
	movs r0, #1
_0800AF34:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800AF3C
sub_800AF3C: @ 0x0800AF3C
	push {r4, lr}
	ldr r1, _0800AF6C @ =gSaveDataBuffer
	movs r0, #0
	str r0, [r1, #0x30]
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0x34
	ldr r4, _0800AF70 @ =0x00002BBC
	adds r3, r1, r4
	adds r4, r1, #0
	cmp r0, r3
	bhs _0800AF60
	adds r1, r3, #0
_0800AF56:
	ldrb r3, [r0]
	adds r2, r3, r2
	adds r0, #4
	cmp r0, r1
	blo _0800AF56
_0800AF60:
	ldr r0, _0800AF74 @ =0x00000927
	adds r2, r2, r0
	str r2, [r4, #0x30]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800AF6C: .4byte gSaveDataBuffer
_0800AF70: .4byte 0x00002BBC
_0800AF74: .4byte 0x00000927

	thumb_func_start sub_800AF78
sub_800AF78: @ 0x0800AF78
	push {r4, lr}
	movs r1, #0
	ldr r0, _0800AFA4 @ =gUnknown_02000034
	ldr r3, _0800AFA8 @ =0x00002B88
	adds r2, r0, r3
	adds r3, r0, #0
	subs r3, #0x34
	cmp r0, r2
	bhs _0800AF94
_0800AF8A:
	ldrb r4, [r0]
	adds r1, r4, r1
	adds r0, #4
	cmp r0, r2
	blo _0800AF8A
_0800AF94:
	ldr r0, _0800AFAC @ =0x00000927
	adds r1, r1, r0
	ldr r0, [r3, #0x30]
	cmp r1, r0
	beq _0800AFB0
	movs r0, #0
	b _0800AFB2
	.align 2, 0
_0800AFA4: .4byte gUnknown_02000034
_0800AFA8: .4byte 0x00002B88
_0800AFAC: .4byte 0x00000927
_0800AFB0:
	movs r0, #1
_0800AFB2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_800AFB8
sub_800AFB8: @ 0x0800AFB8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	ldrb r5, [r6, #9]
	cmp r5, #1
	bne _0800AFC6
	b _0800B100
_0800AFC6:
	cmp r5, #1
	bgt _0800AFD0
	cmp r5, #0
	beq _0800AFDE
	b _0800B292
_0800AFD0:
	cmp r5, #2
	bne _0800AFD6
	b _0800B1A0
_0800AFD6:
	cmp r5, #3
	bne _0800AFDC
	b _0800B264
_0800AFDC:
	b _0800B292
_0800AFDE:
	ldr r4, _0800B0A8 @ =0x040000D4
	ldr r0, _0800B0AC @ =gUnknown_081370FC
	str r0, [r4]
	ldr r0, _0800B0B0 @ =0x06003800
	str r0, [r4, #4]
	ldr r5, _0800B0B4 @ =0x80000400
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #0
	bl sub_80035B0
	str r0, [r4]
	movs r2, #0xa0
	lsls r2, r2, #0x13
	str r2, [r4, #4]
	ldr r0, _0800B0B8 @ =0x80000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800B0BC @ =gUnknown_0813791C
	str r0, [r4]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r0, _0800B0C0 @ =0x80000800
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800B0C4 @ =gUnknown_081500C4
	str r0, [r4]
	ldr r0, _0800B0C8 @ =0x06013C00
	str r0, [r4, #4]
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800B0CC @ =gUnknown_081DE3A8
	str r0, [r4]
	ldr r0, _0800B0D0 @ =0x05000320
	str r0, [r4, #4]
	ldr r0, _0800B0D4 @ =0x80000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800B0D8 @ =gUnknown_081AE388
	str r0, [r4]
	ldr r0, _0800B0DC @ =0x05000200
	str r0, [r4, #4]
	ldr r1, _0800B0E0 @ =0x80000010
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800B0E4 @ =gUnknown_081378FC
	str r0, [r4]
	str r2, [r4, #4]
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _0800B0E8 @ =gIORegisters
	movs r0, #0xf0
	lsls r0, r0, #6
	strh r0, [r1]
	ldr r0, _0800B0EC @ =0x00003D01
	strh r0, [r1, #2]
	adds r0, #0xff
	strh r0, [r1, #4]
	ldr r0, _0800B0F0 @ =0x00003FC7
	strh r0, [r1, #6]
	movs r0, #0xa
	bl sub_8002820
	movs r0, #0xa
	bl CopyBGDataToVram
	movs r0, #0
	ldr r3, _0800B0F4 @ =0x000003FF
	movs r2, #0
	ldr r1, _0800B0F8 @ =gUnknown_03000000
_0800B06C:
	strh r2, [r1]
	adds r1, #2
	adds r0, #1
	cmp r0, r3
	bls _0800B06C
	movs r0, #6
	movs r1, #8
	bl sub_8003C14
	ldr r1, _0800B0E8 @ =gIORegisters
	adds r2, r1, #0
	adds r2, #0x4a
	movs r0, #0xe2
	lsls r0, r0, #5
	strh r0, [r2]
	movs r0, #0xc
	strb r0, [r6, #0x1a]
	ldr r0, _0800B0FC @ =0x00003E01
	strh r0, [r1, #4]
	adds r1, #0x4e
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #1
	strb r0, [r6, #0x17]
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	b _0800B174
	.align 2, 0
_0800B0A8: .4byte 0x040000D4
_0800B0AC: .4byte gUnknown_081370FC
_0800B0B0: .4byte 0x06003800
_0800B0B4: .4byte 0x80000400
_0800B0B8: .4byte 0x80000100
_0800B0BC: .4byte gUnknown_0813791C
_0800B0C0: .4byte 0x80000800
_0800B0C4: .4byte gUnknown_081500C4
_0800B0C8: .4byte 0x06013C00
_0800B0CC: .4byte gUnknown_081DE3A8
_0800B0D0: .4byte 0x05000320
_0800B0D4: .4byte 0x80000020
_0800B0D8: .4byte gUnknown_081AE388
_0800B0DC: .4byte 0x05000200
_0800B0E0: .4byte 0x80000010
_0800B0E4: .4byte gUnknown_081378FC
_0800B0E8: .4byte gIORegisters
_0800B0EC: .4byte 0x00003D01
_0800B0F0: .4byte 0x00003FC7
_0800B0F4: .4byte 0x000003FF
_0800B0F8: .4byte gUnknown_03000000
_0800B0FC: .4byte 0x00003E01
_0800B100:
	adds r0, r6, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800B10C
	b _0800B292
_0800B10C:
	ldr r4, _0800B17C @ =gCourtRecord
	adds r0, r4, #0
	bl sub_8003FC4
	movs r7, #1
	ldrsb r7, [r4, r7]
	cmp r7, #0
	beq _0800B11E
	b _0800B292
_0800B11E:
	strb r5, [r6, #0x18]
	strb r5, [r6, #0x19]
	ldr r4, _0800B180 @ =gScriptContext
	ldr r0, _0800B184 @ =0x0000FFFF
	strh r0, [r4, #0x1e]
	movs r0, #4
	bl sub_8007538
	movs r0, #9
	strh r0, [r4, #0x18]
	movs r0, #0x34
	strh r0, [r4, #0x1a]
	ldr r2, _0800B188 @ =gOamObjects+0x140
	ldr r1, _0800B18C @ =0x00004460
	strh r1, [r2]
	ldr r0, _0800B190 @ =0x0000C030
	strh r0, [r2, #2]
	ldr r0, _0800B194 @ =0x0000A1E0
	strh r0, [r2, #4]
	adds r2, #8
	strh r1, [r2]
	ldr r0, _0800B198 @ =0x0000C080
	strh r0, [r2, #2]
	movs r0, #0xa2
	lsls r0, r0, #8
	strh r0, [r2, #4]
	adds r0, r6, #0
	adds r0, #0x80
	strh r7, [r0]
	adds r0, #2
	strb r5, [r0]
	adds r0, #1
	movs r2, #0x10
	strb r2, [r0]
	ldr r1, _0800B19C @ =gIORegisters
	adds r3, r1, #0
	adds r3, #0x48
	movs r0, #0x84
	lsls r0, r0, #4
	strh r0, [r3]
	lsls r2, r2, #8
	adds r1, #0x4c
	strh r2, [r1]
_0800B174:
	ldrb r0, [r6, #9]
	adds r0, #1
	strb r0, [r6, #9]
	b _0800B292
	.align 2, 0
_0800B17C: .4byte gCourtRecord
_0800B180: .4byte gScriptContext
_0800B184: .4byte 0x0000FFFF
_0800B188: .4byte gOamObjects+0x140
_0800B18C: .4byte 0x00004460
_0800B190: .4byte 0x0000C030
_0800B194: .4byte 0x0000A1E0
_0800B198: .4byte 0x0000C080
_0800B19C: .4byte gIORegisters
_0800B1A0:
	ldr r1, _0800B1C8 @ =gScriptContext
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800B1F2
	ldr r0, _0800B1CC @ =gJoypad
	ldrh r1, [r0, #2]
	movs r4, #0x30
	ands r4, r1
	cmp r4, #0
	beq _0800B1D0
	movs r0, #0x2a
	bl sub_8013834
	movs r0, #1
	ldrb r1, [r6, #0x17]
	eors r0, r1
	strb r0, [r6, #0x17]
	b _0800B1F2
	.align 2, 0
_0800B1C8: .4byte gScriptContext
_0800B1CC: .4byte gJoypad
_0800B1D0:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800B1F2
	movs r0, #0x2b
	bl sub_8013834
	movs r0, #2
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	strb r4, [r6, #0x1a]
	ldrb r0, [r6, #9]
	adds r0, #1
	strb r0, [r6, #9]
_0800B1F2:
	ldr r2, _0800B204 @ =gOamObjects+0x140
	ldrb r0, [r6, #0x17]
	cmp r0, #0
	bne _0800B20C
	ldr r0, _0800B208 @ =0x000091E0
	strh r0, [r2, #4]
	movs r0, #0xa2
	lsls r0, r0, #8
	b _0800B214
	.align 2, 0
_0800B204: .4byte gOamObjects+0x140
_0800B208: .4byte 0x000091E0
_0800B20C:
	ldr r0, _0800B25C @ =0x0000A1E0
	strh r0, [r2, #4]
	movs r0, #0x92
	lsls r0, r0, #8
_0800B214:
	strh r0, [r2, #0xc]
	ldrb r0, [r6, #9]
	cmp r0, #2
	bne _0800B292
	adds r3, r6, #0
	adds r3, #0x83
	ldrb r0, [r3]
	cmp r0, #0
	beq _0800B292
	adds r2, r6, #0
	adds r2, #0x80
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	adds r1, r6, #0
	adds r1, #0x82
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	blo _0800B248
	movs r0, #0
	strh r0, [r2]
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
_0800B248:
	ldr r2, _0800B260 @ =gIORegisters
	ldrb r3, [r3]
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	adds r2, #0x4c
	strh r1, [r2]
	b _0800B292
	.align 2, 0
_0800B25C: .4byte 0x0000A1E0
_0800B260: .4byte gIORegisters
_0800B264:
	adds r0, r6, #0
	adds r0, #0x7e
	ldrh r4, [r0]
	cmp r4, #0
	bne _0800B292
	ldrb r0, [r6, #0x17]
	cmp r0, #0
	bne _0800B290
	str r4, [sp]
	ldr r2, _0800B29C @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	ldr r0, _0800B2A0 @ =gSaveDataBuffer
	str r0, [r2, #4]
	ldr r1, _0800B2A4 @ =0x85000AEF
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	movs r1, #0xe0
	lsls r1, r1, #0x14
	ldr r2, _0800B2A8 @ =0x00002BBC
	bl WriteSramEx
_0800B290:
	str r4, [r6, #8]
_0800B292:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B29C: .4byte 0x040000D4
_0800B2A0: .4byte gSaveDataBuffer
_0800B2A4: .4byte 0x85000AEF
_0800B2A8: .4byte 0x00002BBC

	thumb_func_start sub_800B2AC
sub_800B2AC: @ 0x0800B2AC
	push {lr}
	ldr r2, _0800B2C4 @ =gUnknown_081122F8
	ldr r0, _0800B2C8 @ =gMain
	ldrb r3, [r0, #9]
	lsls r1, r3, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0800B2C4: .4byte gUnknown_081122F8
_0800B2C8: .4byte gMain

	thumb_func_start sub_800B2CC
sub_800B2CC: @ 0x0800B2CC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0800B37C @ =0x040000D4
	ldr r1, _0800B380 @ =gUnknown_03002080
	str r1, [r0]
	ldr r2, _0800B384 @ =gUnknown_0200183C
	str r2, [r0, #4]
	ldr r3, _0800B388 @ =0x80000400
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B38C @ =gUnknown_03000000
	str r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #4
	adds r1, r2, r4
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B390 @ =gTextBoxCharacters
	str r1, [r0]
	ldr r3, _0800B394 @ =0xFFFFF500
	adds r1, r2, r3
	str r1, [r0, #4]
	ldr r1, _0800B398 @ =0x8000017A
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B39C @ =gScriptContext
	str r1, [r0]
	ldr r4, _0800B3A0 @ =0xFFFFEB0C
	adds r1, r2, r4
	str r1, [r0, #4]
	ldr r1, _0800B3A4 @ =0x80000020
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B3A8 @ =gIORegisters
	str r1, [r0]
	ldr r3, _0800B3AC @ =0xFFFFEAB8
	adds r1, r2, r3
	str r1, [r0, #4]
	ldr r1, _0800B3B0 @ =0x8000002A
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r3, _0800B3B4 @ =gUnknown_03003AD0
	str r3, [r0]
	ldr r4, _0800B3B8 @ =0xFFFFF060
	adds r1, r2, r4
	str r1, [r0, #4]
	ldr r1, _0800B3BC @ =0x80000050
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #5
	adds r2, r2, r0
	movs r4, #0xff
_0800B33A:
	ldrb r0, [r3]
	orrs r0, r4
	strb r0, [r3]
	adds r3, #0x14
	adds r1, #1
	cmp r1, #7
	bls _0800B33A
	movs r4, #0
	adds r0, r2, #0
	bl sub_8014A78
	strb r4, [r6, #0x18]
	ldr r4, _0800B3C0 @ =gMain
	ldr r3, _0800B3C4 @ =0x000002BA
	adds r4, r4, r3
	ldrh r5, [r4]
	adds r0, r5, #0
	bl sub_8013878
	strh r5, [r4]
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r6, #9]
	adds r0, #1
	strb r0, [r6, #9]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B37C: .4byte 0x040000D4
_0800B380: .4byte gUnknown_03002080
_0800B384: .4byte gUnknown_0200183C
_0800B388: .4byte 0x80000400
_0800B38C: .4byte gUnknown_03000000
_0800B390: .4byte gTextBoxCharacters
_0800B394: .4byte 0xFFFFF500
_0800B398: .4byte 0x8000017A
_0800B39C: .4byte gScriptContext
_0800B3A0: .4byte 0xFFFFEB0C
_0800B3A4: .4byte 0x80000020
_0800B3A8: .4byte gIORegisters
_0800B3AC: .4byte 0xFFFFEAB8
_0800B3B0: .4byte 0x8000002A
_0800B3B4: .4byte gUnknown_03003AD0
_0800B3B8: .4byte 0xFFFFF060
_0800B3BC: .4byte 0x80000050
_0800B3C0: .4byte gMain
_0800B3C4: .4byte 0x000002BA

	thumb_func_start sub_800B3C8
sub_800B3C8: @ 0x0800B3C8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800B3D6
	b _0800B504
_0800B3D6:
	ldr r0, _0800B50C @ =0x040000D4
	ldr r1, _0800B510 @ =gUnknown_03002FA0
	str r1, [r0]
	ldr r2, _0800B514 @ =gUnknown_0200103C
	str r2, [r0, #4]
	ldr r3, _0800B518 @ =0x80000400
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B51C @ =gCourtRecord
	str r1, [r0]
	ldr r5, _0800B520 @ =0xFFFFF34C
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _0800B524 @ =0x8000002C
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B528 @ =gInvestigation
	str r1, [r0]
	adds r5, #0x70
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _0800B52C @ =0x8000000E
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B530 @ =gTestimony
	str r1, [r0]
	subs r5, #8
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _0800B534 @ =0x80000004
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B538 @ =gCourtScroll
	str r1, [r0]
	subs r5, #0x10
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _0800B53C @ =0x80000008
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B540 @ =gUnknown_03003C90
	str r1, [r0]
	adds r5, #0x34
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _0800B544 @ =0x800000F0
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B548 @ =gUnknown_03002920
	str r1, [r0]
	ldr r5, _0800B54C @ =0xFFFFF5B8
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _0800B550 @ =0x80000140
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B554 @ =gUnknown_03003B70
	str r1, [r0]
	ldr r1, _0800B558 @ =0xFFFFF838
	adds r2, r2, r1
	str r2, [r0, #4]
	ldr r1, _0800B55C @ =0x80000014
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B560 @ =gUnknown_081458DC
	str r1, [r0]
	ldr r1, _0800B564 @ =0x06013800
	str r1, [r0, #4]
	ldr r1, _0800B568 @ =0x80000200
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B56C @ =gUnknown_0814DF20
	str r1, [r0]
	ldr r1, _0800B570 @ =0x05000300
	str r1, [r0, #4]
	ldr r1, _0800B574 @ =0x80000060
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B578 @ =gUnknown_081500C4
	str r1, [r0]
	ldr r1, _0800B57C @ =0x06013C00
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B580 @ =gUnknown_081DE3A8
	str r1, [r0]
	ldr r1, _0800B584 @ =0x05000320
	str r1, [r0, #4]
	ldr r1, _0800B588 @ =0x80000020
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #0xa
	bl sub_8002820
	movs r0, #0xa
	bl CopyBGDataToVram
	adds r1, r4, #0
	adds r1, #0x25
	movs r0, #0xfc
	ldrb r2, [r1]
	ands r0, r2
	strb r0, [r1]
	ldr r1, _0800B58C @ =gOamObjects
	movs r0, #0
	movs r2, #0x80
	lsls r2, r2, #2
_0800B4AC:
	strh r2, [r1]
	adds r1, #8
	adds r0, #1
	cmp r0, #0x7f
	bls _0800B4AC
	movs r0, #0
	ldr r3, _0800B590 @ =0x000003FF
	movs r2, #0
	ldr r1, _0800B594 @ =gUnknown_03000000
_0800B4BE:
	strh r2, [r1]
	adds r1, #2
	adds r0, #1
	cmp r0, r3
	bls _0800B4BE
	movs r0, #6
	movs r1, #8
	bl sub_8003C14
	ldr r1, _0800B598 @ =gIORegisters
	movs r5, #0x4a
	movs r3, #0
	movs r2, #0
	movs r0, #0xe2
	lsls r0, r0, #5
	strh r0, [r5, r1]
	movs r0, #0xc
	strb r0, [r4, #0x1a]
	ldr r0, _0800B59C @ =0x00003E01
	strh r0, [r1, #4]
	movs r0, #8
	strh r0, [r1, #0x16]
	strh r0, [r1, #0x14]
	strh r2, [r1, #0xe]
	strh r2, [r1, #0xc]
	strb r3, [r4, #0x19]
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
_0800B504:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800B50C: .4byte 0x040000D4
_0800B510: .4byte gUnknown_03002FA0
_0800B514: .4byte gUnknown_0200103C
_0800B518: .4byte 0x80000400
_0800B51C: .4byte gCourtRecord
_0800B520: .4byte 0xFFFFF34C
_0800B524: .4byte 0x8000002C
_0800B528: .4byte gInvestigation
_0800B52C: .4byte 0x8000000E
_0800B530: .4byte gTestimony
_0800B534: .4byte 0x80000004
_0800B538: .4byte gCourtScroll
_0800B53C: .4byte 0x80000008
_0800B540: .4byte gUnknown_03003C90
_0800B544: .4byte 0x800000F0
_0800B548: .4byte gUnknown_03002920
_0800B54C: .4byte 0xFFFFF5B8
_0800B550: .4byte 0x80000140
_0800B554: .4byte gUnknown_03003B70
_0800B558: .4byte 0xFFFFF838
_0800B55C: .4byte 0x80000014
_0800B560: .4byte gUnknown_081458DC
_0800B564: .4byte 0x06013800
_0800B568: .4byte 0x80000200
_0800B56C: .4byte gUnknown_0814DF20
_0800B570: .4byte 0x05000300
_0800B574: .4byte 0x80000060
_0800B578: .4byte gUnknown_081500C4
_0800B57C: .4byte 0x06013C00
_0800B580: .4byte gUnknown_081DE3A8
_0800B584: .4byte 0x05000320
_0800B588: .4byte 0x80000020
_0800B58C: .4byte gOamObjects
_0800B590: .4byte 0x000003FF
_0800B594: .4byte gUnknown_03000000
_0800B598: .4byte gIORegisters
_0800B59C: .4byte 0x00003E01

	thumb_func_start sub_800B5A0
sub_800B5A0: @ 0x0800B5A0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0800B5D0 @ =gCourtRecord
	adds r0, r4, #0
	bl sub_8003FC4
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0800B660
	movs r0, #1
	strb r0, [r5, #0x18]
	strb r0, [r5, #0x19]
	ldr r1, _0800B5D4 @ =gScriptContext
	ldr r0, _0800B5D8 @ =0x0000FFFF
	strh r0, [r1, #0x1e]
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0800B5DC
	movs r0, #0
	bl sub_8007538
	b _0800B5E2
	.align 2, 0
_0800B5D0: .4byte gCourtRecord
_0800B5D4: .4byte gScriptContext
_0800B5D8: .4byte 0x0000FFFF
_0800B5DC:
	movs r0, #1
	bl sub_8007538
_0800B5E2:
	ldr r1, _0800B63C @ =gScriptContext
	movs r3, #0
	movs r0, #9
	strh r0, [r1, #0x18]
	movs r0, #0x34
	strh r0, [r1, #0x1a]
	ldr r0, _0800B640 @ =gOamObjects+0x140
	ldr r2, _0800B644 @ =0x00004460
	strh r2, [r0]
	ldr r1, _0800B648 @ =0x0000C030
	strh r1, [r0, #2]
	ldr r1, _0800B64C @ =0x0000A1E0
	strh r1, [r0, #4]
	adds r0, #8
	strh r2, [r0]
	ldr r1, _0800B650 @ =0x0000C080
	strh r1, [r0, #2]
	movs r1, #0xa2
	lsls r1, r1, #8
	strh r1, [r0, #4]
	adds r0, r5, #0
	adds r0, #0x80
	strh r3, [r0]
	adds r0, #2
	movs r4, #1
	strb r4, [r0]
	adds r0, #1
	movs r2, #0x10
	strb r2, [r0]
	ldr r1, _0800B654 @ =gIORegisters
	adds r3, r1, #0
	adds r3, #0x48
	movs r0, #0x84
	lsls r0, r0, #4
	strh r0, [r3]
	lsls r2, r2, #8
	adds r1, #0x4c
	strh r2, [r1]
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0800B658
	movs r0, #0
	strb r0, [r5, #0x17]
	b _0800B65A
	.align 2, 0
_0800B63C: .4byte gScriptContext
_0800B640: .4byte gOamObjects+0x140
_0800B644: .4byte 0x00004460
_0800B648: .4byte 0x0000C030
_0800B64C: .4byte 0x0000A1E0
_0800B650: .4byte 0x0000C080
_0800B654: .4byte gIORegisters
_0800B658:
	strb r4, [r5, #0x17]
_0800B65A:
	ldrb r0, [r5, #9]
	adds r0, #1
	strb r0, [r5, #9]
_0800B660:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800B668
sub_800B668: @ 0x0800B668
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, _0800B698 @ =gScriptContext
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800B67A
	b _0800B776
_0800B67A:
	ldr r0, _0800B69C @ =gJoypad
	ldrh r1, [r0, #2]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0800B6A0
	movs r0, #1
	ldrb r1, [r5, #0x17]
	eors r0, r1
	strb r0, [r5, #0x17]
	movs r0, #0x2a
	bl sub_8013834
	b _0800B776
	.align 2, 0
_0800B698: .4byte gScriptContext
_0800B69C: .4byte gJoypad
_0800B6A0:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800B74C
	movs r0, #0x40
	bl sub_8013834
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	bne _0800B738
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0800B6CC
	ldr r1, _0800B6C8 @ =gSaveDataBuffer
	adds r1, #0x4f
	movs r0, #0xf0
	ldrb r2, [r1]
	ands r0, r2
	strb r0, [r1]
	b _0800B6D8
	.align 2, 0
_0800B6C8: .4byte gSaveDataBuffer
_0800B6CC:
	ldr r0, _0800B6FC @ =gSaveDataBuffer
	adds r0, #0x4f
	movs r1, #1
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
_0800B6D8:
	bl sub_800AE84
	cmp r0, #0
	beq _0800B708
	ldr r4, _0800B700 @ =gScriptContext
	ldr r0, _0800B704 @ =0x0000FFFF
	strh r0, [r4, #0x1e]
	movs r0, #3
	bl sub_8007538
	movs r0, #9
	strh r0, [r4, #0x18]
	movs r0, #0x34
	strh r0, [r4, #0x1a]
	movs r0, #6
	strb r0, [r5, #9]
	b _0800B808
	.align 2, 0
_0800B6FC: .4byte gSaveDataBuffer
_0800B700: .4byte gScriptContext
_0800B704: .4byte 0x0000FFFF
_0800B708:
	ldrb r6, [r5, #0xb]
	cmp r6, #0
	bne _0800B738
	ldr r4, _0800B744 @ =gScriptContext
	ldr r0, _0800B748 @ =0x0000FFFF
	strh r0, [r4, #0x1e]
	movs r0, #6
	bl sub_8007538
	movs r1, #0
	movs r0, #9
	strh r0, [r4, #0x18]
	movs r0, #0x34
	strh r0, [r4, #0x1a]
	adds r0, r5, #0
	adds r0, #0x80
	strh r6, [r0]
	adds r2, r5, #0
	adds r2, #0x82
	movs r0, #1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x83
	strb r1, [r0]
_0800B738:
	movs r1, #0
	movs r0, #7
	strb r0, [r5, #9]
	strb r1, [r5, #0xa]
	b _0800B776
	.align 2, 0
_0800B744: .4byte gScriptContext
_0800B748: .4byte 0x0000FFFF
_0800B74C:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _0800B776
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800B776
	movs r0, #0x2c
	bl sub_8013834
	movs r0, #1
	strb r0, [r5, #0x17]
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r0, #4
	strb r0, [r5, #9]
	b _0800B808
_0800B776:
	ldr r2, _0800B798 @ =gOamObjects+0x140
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	bne _0800B7AC
	ldr r1, _0800B79C @ =0x00004460
	strh r1, [r2]
	ldr r0, _0800B7A0 @ =0x0000C030
	strh r0, [r2, #2]
	ldr r0, _0800B7A4 @ =0x000091E0
	strh r0, [r2, #4]
	adds r2, #8
	strh r1, [r2]
	ldr r0, _0800B7A8 @ =0x0000C080
	strh r0, [r2, #2]
	movs r0, #0xa2
	lsls r0, r0, #8
	b _0800B7C4
	.align 2, 0
_0800B798: .4byte gOamObjects+0x140
_0800B79C: .4byte 0x00004460
_0800B7A0: .4byte 0x0000C030
_0800B7A4: .4byte 0x000091E0
_0800B7A8: .4byte 0x0000C080
_0800B7AC:
	ldr r1, _0800B810 @ =0x00004460
	strh r1, [r2]
	ldr r0, _0800B814 @ =0x0000C030
	strh r0, [r2, #2]
	ldr r0, _0800B818 @ =0x0000A1E0
	strh r0, [r2, #4]
	adds r2, #8
	strh r1, [r2]
	ldr r0, _0800B81C @ =0x0000C080
	strh r0, [r2, #2]
	movs r0, #0x92
	lsls r0, r0, #8
_0800B7C4:
	strh r0, [r2, #4]
	ldrb r0, [r5, #9]
	cmp r0, #3
	bne _0800B808
	adds r3, r5, #0
	adds r3, #0x83
	ldrb r0, [r3]
	cmp r0, #0
	beq _0800B808
	adds r2, r5, #0
	adds r2, #0x80
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	adds r1, r5, #0
	adds r1, #0x82
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	blo _0800B7F8
	movs r0, #0
	strh r0, [r2]
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
_0800B7F8:
	ldr r2, _0800B820 @ =gIORegisters
	ldrb r3, [r3]
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	adds r2, #0x4c
	strh r1, [r2]
_0800B808:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B810: .4byte 0x00004460
_0800B814: .4byte 0x0000C030
_0800B818: .4byte 0x0000A1E0
_0800B81C: .4byte 0x0000C080
_0800B820: .4byte gIORegisters

	thumb_func_start sub_800B824
sub_800B824: @ 0x0800B824
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800B832
	b _0800BB40
_0800B832:
	ldrb r0, [r6, #0x17]
	cmp r0, #0
	bne _0800B83E
	movs r0, #1
	str r0, [r6, #8]
	b _0800BB40
_0800B83E:
	ldr r2, _0800BA0C @ =gSaveDataBuffer
	adds r0, r2, #0
	adds r0, #0x62
	ldrh r0, [r0]
	strh r0, [r6, #0x2e]
	adds r0, r2, #0
	adds r0, #0x66
	ldrh r0, [r0]
	strh r0, [r6, #0x32]
	adds r0, r2, #0
	adds r0, #0x68
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x34
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x69
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x35
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x6b
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r6, #0x38]
	adds r0, r2, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	strh r0, [r6, #0x3a]
	adds r0, r2, #0
	adds r0, #0x70
	ldrh r0, [r0]
	strh r0, [r6, #0x3c]
	adds r0, r2, #0
	adds r0, #0x72
	ldrh r0, [r0]
	strh r0, [r6, #0x3e]
	adds r0, r2, #0
	adds r0, #0x74
	ldrh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x40
	strh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x76
	ldrh r0, [r0]
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x78
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x44
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x79
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x45
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x7a
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	ldr r0, [r2, #0x7c]
	str r0, [r6, #0x48]
	movs r1, #0
	adds r7, r6, #0
	adds r7, #0xdc
	adds r3, r2, #0
	adds r3, #0x80
	adds r2, r6, #0
	adds r2, #0x4c
_0800B8F2:
	ldm r3!, {r0}
	stm r2!, {r0}
	adds r1, #1
	cmp r1, #0xb
	bls _0800B8F2
	ldrh r0, [r6, #0x2e]
	bl sub_8002820
	ldrh r0, [r6, #0x2e]
	bl sub_800342C
	ldr r4, _0800BA10 @ =0x040000D4
	ldr r5, _0800BA14 @ =gUnknown_0200203C
	str r5, [r4]
	ldr r0, _0800BA18 @ =gUnknown_03000000
	str r0, [r4, #4]
	ldr r0, _0800BA1C @ =0x80000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _0800BA20 @ =0xFFFFED00
	adds r0, r5, r1
	str r0, [r4]
	ldr r0, _0800BA24 @ =gTextBoxCharacters
	str r0, [r4, #4]
	ldr r0, _0800BA28 @ =0x8000017A
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	bl sub_8007BEC
	ldr r2, _0800BA2C @ =0xFFFFE30C
	adds r0, r5, r2
	str r0, [r4]
	ldr r0, _0800BA30 @ =gScriptContext
	str r0, [r4, #4]
	ldr r0, _0800BA34 @ =0x80000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r3, _0800BA38 @ =0xFFFFE2B8
	adds r0, r5, r3
	str r0, [r4]
	ldr r0, _0800BA3C @ =gIORegisters
	str r0, [r4, #4]
	ldr r0, _0800BA40 @ =0x8000002A
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _0800BA44 @ =0xFFFFE860
	adds r0, r5, r1
	str r0, [r4]
	ldr r0, _0800BA48 @ =gUnknown_03003AD0
	str r0, [r4, #4]
	ldr r0, _0800BA4C @ =0x80000050
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, _0800BA50 @ =0xFFFFE5B8
	adds r0, r5, r2
	str r0, [r4]
	ldr r0, _0800BA54 @ =gUnknown_03002920
	str r0, [r4, #4]
	ldr r0, _0800BA58 @ =0x80000140
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r3, _0800BA5C @ =0xFFFFE838
	adds r0, r5, r3
	str r0, [r4]
	ldr r0, _0800BA60 @ =gUnknown_03003B70
	str r0, [r4, #4]
	ldr r0, _0800BA64 @ =0x80000014
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _0800BA68 @ =0xFFFFE010
	adds r0, r5, r1
	ldrb r0, [r0]
	strb r0, [r6, #0x18]
	ldr r2, _0800BA6C @ =0xFFFFE011
	adds r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r6, #0x19]
	ldr r3, _0800BA70 @ =0xFFFFE0D4
	adds r0, r5, r3
	ldr r0, [r0]
	str r0, [r7]
	subs r1, #4
	adds r0, r5, r1
	ldrh r0, [r0]
	strh r0, [r6, #0x14]
	adds r2, #1
	adds r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_8007D5C
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r5, r3
	bl sub_801492C
	ldr r2, _0800BA74 @ =gMain
	adds r1, r2, #0
	adds r1, #0x25
	movs r0, #3
	ldrb r3, [r1]
	orrs r0, r3
	strb r0, [r1]
	ldr r1, _0800BA78 @ =0xFFFFE900
	adds r0, r5, r1
	str r0, [r4]
	ldr r0, _0800BA7C @ =gOamObjects
	str r0, [r4, #4]
	ldr r0, _0800BA80 @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800BA84 @ =gUnknown_0814DC60
	str r0, [r4]
	ldr r0, _0800BA88 @ =0x05000300
	str r0, [r4, #4]
	ldr r0, _0800BA8C @ =0x80000010
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r3, #0x95
	lsls r3, r3, #2
	adds r1, r6, r3
	ldr r0, _0800BA90 @ =0xFFFFE24C
	adds r5, r5, r0
	ldr r0, [r5]
	str r0, [r1]
	ldr r0, [r6, #0xc]
	str r0, [r2, #8]
	ldr r0, [r6, #8]
	ldr r1, _0800BA94 @ =0x00FF00FF
	ands r0, r1
	ldr r1, _0800BA98 @ =0x00030004
	cmp r0, r1
	bne _0800BAA4
	ldrb r0, [r6, #9]
	cmp r0, #7
	bne _0800BA9C
	bl sub_8011578
	b _0800BAA4
	.align 2, 0
_0800BA0C: .4byte gSaveDataBuffer
_0800BA10: .4byte 0x040000D4
_0800BA14: .4byte gUnknown_0200203C
_0800BA18: .4byte gUnknown_03000000
_0800BA1C: .4byte 0x80000400
_0800BA20: .4byte 0xFFFFED00
_0800BA24: .4byte gTextBoxCharacters
_0800BA28: .4byte 0x8000017A
_0800BA2C: .4byte 0xFFFFE30C
_0800BA30: .4byte gScriptContext
_0800BA34: .4byte 0x80000020
_0800BA38: .4byte 0xFFFFE2B8
_0800BA3C: .4byte gIORegisters
_0800BA40: .4byte 0x8000002A
_0800BA44: .4byte 0xFFFFE860
_0800BA48: .4byte gUnknown_03003AD0
_0800BA4C: .4byte 0x80000050
_0800BA50: .4byte 0xFFFFE5B8
_0800BA54: .4byte gUnknown_03002920
_0800BA58: .4byte 0x80000140
_0800BA5C: .4byte 0xFFFFE838
_0800BA60: .4byte gUnknown_03003B70
_0800BA64: .4byte 0x80000014
_0800BA68: .4byte 0xFFFFE010
_0800BA6C: .4byte 0xFFFFE011
_0800BA70: .4byte 0xFFFFE0D4
_0800BA74: .4byte gMain
_0800BA78: .4byte 0xFFFFE900
_0800BA7C: .4byte gOamObjects
_0800BA80: .4byte 0x80000200
_0800BA84: .4byte gUnknown_0814DC60
_0800BA88: .4byte 0x05000300
_0800BA8C: .4byte 0x80000010
_0800BA90: .4byte 0xFFFFE24C
_0800BA94: .4byte 0x00FF00FF
_0800BA98: .4byte 0x00030004
_0800BA9C:
	cmp r0, #8
	bne _0800BAA4
	bl sub_80115D4
_0800BAA4:
	ldr r0, _0800BAC4 @ =gMain
	ldr r1, _0800BAC8 @ =0x000002BE
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800BB00
	lsrs r0, r1, #4
	cmp r0, #1
	beq _0800BAE2
	cmp r0, #1
	bgt _0800BACC
	cmp r0, #0
	beq _0800BAD2
	b _0800BB00
	.align 2, 0
_0800BAC4: .4byte gMain
_0800BAC8: .4byte 0x000002BE
_0800BACC:
	cmp r0, #2
	beq _0800BAF2
	b _0800BB00
_0800BAD2:
	bl sub_800E7B0
	movs r0, #0x18
	movs r1, #0x80
	movs r2, #1
	bl sub_800E7EC
	b _0800BB00
_0800BAE2:
	bl sub_800E8C4
	movs r0, #0
	movs r1, #0x80
	movs r2, #1
	bl sub_800E900
	b _0800BB00
_0800BAF2:
	bl sub_800E8C4
	movs r0, #0x20
	movs r1, #0x80
	movs r2, #1
	bl sub_800E9D4
_0800BB00:
	ldr r0, _0800BB48 @ =gMain
	ldr r2, _0800BB4C @ =0x000002BA
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0
	beq _0800BB10
	bl sub_8013834
_0800BB10:
	ldrh r6, [r6, #0x2e]
	cmp r6, #0x23
	bne _0800BB2C
	ldr r1, _0800BB50 @ =gIORegisters
	movs r0, #8
	strh r0, [r1, #0x14]
	movs r0, #0x6b
	bl sub_8013EB0
	adds r1, r0, #0
	cmp r1, #0
	beq _0800BB2C
	movs r0, #0x78
	strh r0, [r1, #0x10]
_0800BB2C:
	movs r0, #0x1e
	movs r1, #0xff
	bl sub_8013B14
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
_0800BB40:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BB48: .4byte gMain
_0800BB4C: .4byte 0x000002BA
_0800BB50: .4byte gIORegisters

	thumb_func_start sub_800BB54
sub_800BB54: @ 0x0800BB54
	adds r2, r0, #0
	adds r0, #0x7e
	ldrh r1, [r0]
	cmp r1, #0
	bne _0800BBA0
	adds r3, r2, #0
	adds r3, #0xb3
	ldrb r0, [r3]
	cmp r0, #2
	bne _0800BB6C
	movs r1, #1
	b _0800BB7A
_0800BB6C:
	cmp r0, #8
	bne _0800BB74
	movs r1, #2
	b _0800BB7A
_0800BB74:
	cmp r0, #0xe
	bne _0800BB8A
	movs r1, #3
_0800BB7A:
	movs r0, #0
	strb r0, [r2, #0x18]
	strb r0, [r2, #0x19]
	lsls r0, r1, #0x18
	movs r1, #0x86
	lsls r1, r1, #1
	orrs r0, r1
	b _0800BB9E
_0800BB8A:
	ldr r0, _0800BBA4 @ =gIORegisters
	adds r0, #0x4a
	strh r1, [r0]
	ldr r1, _0800BBA8 @ =gScriptContext
	movs r0, #0x80
	strh r0, [r1, #0x1e]
	ldr r0, _0800BBAC @ =gUnknown_0801C3D8
	ldrb r3, [r3]
	adds r0, r3, r0
	ldrb r0, [r0]
_0800BB9E:
	str r0, [r2, #8]
_0800BBA0:
	bx lr
	.align 2, 0
_0800BBA4: .4byte gIORegisters
_0800BBA8: .4byte gScriptContext
_0800BBAC: .4byte gUnknown_0801C3D8

	thumb_func_start sub_800BBB0
sub_800BBB0: @ 0x0800BBB0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, _0800BBE4 @ =gScriptContext
	movs r0, #8
	ldrh r1, [r3]
	ands r0, r1
	cmp r0, #0
	beq _0800BC44
	ldr r1, _0800BBE8 @ =gJoypad
	movs r2, #1
	movs r0, #1
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _0800BC44
	strb r2, [r4, #0x18]
	strb r2, [r4, #0x19]
	ldr r0, _0800BBEC @ =0x0000FFFF
	strh r0, [r3, #0x1e]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0800BBF0
	movs r0, #0
	bl sub_8007538
	b _0800BBF6
	.align 2, 0
_0800BBE4: .4byte gScriptContext
_0800BBE8: .4byte gJoypad
_0800BBEC: .4byte 0x0000FFFF
_0800BBF0:
	movs r0, #1
	bl sub_8007538
_0800BBF6:
	ldr r1, _0800BC34 @ =gScriptContext
	movs r2, #0
	movs r0, #9
	strh r0, [r1, #0x18]
	movs r0, #0x34
	strh r0, [r1, #0x1a]
	adds r0, r4, #0
	adds r0, #0x80
	strh r2, [r0]
	adds r0, #2
	movs r5, #1
	strb r5, [r0]
	adds r0, #1
	movs r2, #0x10
	strb r2, [r0]
	ldr r1, _0800BC38 @ =gIORegisters
	adds r3, r1, #0
	adds r3, #0x48
	movs r0, #0x84
	lsls r0, r0, #4
	strh r0, [r3]
	lsls r2, r2, #8
	adds r1, #0x4c
	strh r2, [r1]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0800BC3C
	movs r0, #0
	strb r0, [r4, #0x17]
	b _0800BC3E
	.align 2, 0
_0800BC34: .4byte gScriptContext
_0800BC38: .4byte gIORegisters
_0800BC3C:
	strb r5, [r4, #0x17]
_0800BC3E:
	movs r0, #3
	strb r0, [r4, #9]
	b _0800BC4E
_0800BC44:
	ldr r1, _0800BC54 @ =gOamObjects+0x140
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	strh r0, [r1, #8]
_0800BC4E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800BC54: .4byte gOamObjects+0x140

	thumb_func_start sub_800BC58
sub_800BC58: @ 0x0800BC58
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _0800BC92
	movs r0, #2
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0800BC80
	movs r0, #5
	b _0800BC82
_0800BC80:
	movs r0, #4
_0800BC82:
	strb r0, [r4, #9]
	movs r0, #0
	strb r0, [r4, #0xa]
	ldr r1, _0800BCDC @ =gOamObjects+0x140
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	strh r0, [r1, #8]
_0800BC92:
	ldrb r0, [r4, #9]
	cmp r0, #7
	bne _0800BCD4
	adds r3, r4, #0
	adds r3, #0x83
	ldrb r0, [r3]
	cmp r0, #0xf
	bhi _0800BCD4
	adds r2, r4, #0
	adds r2, #0x80
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x82
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	blo _0800BCC4
	movs r0, #0
	strh r0, [r2]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_0800BCC4:
	ldr r2, _0800BCE0 @ =gIORegisters
	ldrb r3, [r3]
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	adds r2, #0x4c
	strh r1, [r2]
_0800BCD4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800BCDC: .4byte gOamObjects+0x140
_0800BCE0: .4byte gIORegisters

	thumb_func_start sub_800BCE4
sub_800BCE4: @ 0x0800BCE4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #0x18]
	strb r0, [r4, #0x19]
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800BD08
sub_800BD08: @ 0x0800BD08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	ldr r0, _0800BDD4 @ =gUnknown_0814E460
	ldr r4, _0800BDD8 @ =gUnknown_0202CFC0
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _0800BDDC @ =0x040000D4
	str r4, [r1]
	ldr r0, _0800BDE0 @ =0x06013400
	str r0, [r1, #4]
	ldr r0, _0800BDE4 @ =0x80001400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800BDE8 @ =gUnknown_081DE3A8
	str r0, [r1]
	ldr r0, _0800BDEC @ =0x05000320
	str r0, [r1, #4]
	ldr r0, _0800BDF0 @ =0x80000020
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800BDF4 @ =gUnknown_0813791C
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0800BDF8 @ =0x80000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0xa
	bl sub_8002820
	movs r0, #0xa
	bl CopyBGDataToVram
	ldr r1, _0800BDFC @ =gMain
	adds r1, #0x25
	movs r0, #0xfc
	ldrb r2, [r1]
	ands r0, r2
	strb r0, [r1]
	ldr r4, _0800BE00 @ =gOamObjects
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #2
_0800BD6C:
	strh r0, [r4]
	adds r4, #8
	adds r2, #1
	cmp r2, #0x7f
	bls _0800BD6C
	ldr r4, _0800BE00 @ =gOamObjects
	ldr r0, _0800BE04 @ =gIORegisters
	adds r0, #0x4a
	movs r1, #0xd2
	lsls r1, r1, #5
	strh r1, [r0]
	movs r0, #0xa
	mov r7, sl
	strb r0, [r7, #0x1a]
	movs r0, #2
	bl sub_80035C0
	movs r0, #0x98
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r2, #0
	adds r1, r7, #0
	adds r1, #0x94
	str r1, [sp]
	movs r7, #0xb4
	add r7, sl
	mov ip, r7
	movs r0, #1
	mov sb, r0
	ldr r1, _0800BE08 @ =0x000091A0
	mov r8, r1
_0800BDAA:
	movs r5, #0
	adds r7, r2, #1
	str r7, [sp, #4]
	lsls r0, r2, #5
	movs r1, #0x80
	lsls r1, r1, #7
	adds r6, r0, r1
	movs r3, #0
	lsls r0, r2, #6
	ldr r7, _0800BE0C @ =0x000091E0
	adds r1, r0, r7
_0800BDC0:
	strh r6, [r4]
	mov r7, ip
	ldrb r0, [r7]
	asrs r0, r2
	mov r7, sb
	ands r0, r7
	cmp r0, #0
	beq _0800BE10
	strh r1, [r4, #4]
	b _0800BE16
	.align 2, 0
_0800BDD4: .4byte gUnknown_0814E460
_0800BDD8: .4byte gUnknown_0202CFC0
_0800BDDC: .4byte 0x040000D4
_0800BDE0: .4byte 0x06013400
_0800BDE4: .4byte 0x80001400
_0800BDE8: .4byte gUnknown_081DE3A8
_0800BDEC: .4byte 0x05000320
_0800BDF0: .4byte 0x80000020
_0800BDF4: .4byte gUnknown_0813791C
_0800BDF8: .4byte 0x80000800
_0800BDFC: .4byte gMain
_0800BE00: .4byte gOamObjects
_0800BE04: .4byte gIORegisters
_0800BE08: .4byte 0x000091A0
_0800BE0C: .4byte 0x000091E0
_0800BE10:
	mov r7, r8
	adds r0, r3, r7
	strh r0, [r4, #4]
_0800BE16:
	adds r4, #8
	adds r3, #0x20
	adds r1, #0x20
	adds r5, #1
	cmp r5, #1
	bls _0800BDC0
	ldr r2, [sp, #4]
	cmp r2, #3
	bls _0800BDAA
	movs r0, #0
	ldr r1, [sp]
	strh r0, [r1]
	movs r0, #0x31
	bl sub_8013834
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	mov r2, sl
	ldrb r0, [r2, #9]
	adds r0, #1
	strb r0, [r2, #9]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_800BE58
sub_800BE58: @ 0x0800BE58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	adds r0, #0x94
	ldrh r1, [r0]
	adds r1, #6
	ldr r2, _0800BECC @ =0x000001FF
	ands r1, r2
	strh r1, [r0]
	ldr r4, _0800BED0 @ =gOamObjects+0x130
	movs r1, #0
	mov sb, r4
	adds r5, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	mov sl, r0
	adds r6, r2, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	mov r8, r0
_0800BE86:
	movs r3, #0
	adds r2, r1, #1
	mov r1, r8
_0800BE8C:
	ldrh r0, [r5]
	add r0, sl
	ands r0, r6
	adds r0, r0, r1
	strh r0, [r4, #2]
	adds r4, #8
	adds r1, #0x40
	adds r3, #1
	cmp r3, #1
	bls _0800BE8C
	adds r1, r2, #0
	cmp r1, #3
	bls _0800BE86
	ldrh r5, [r5]
	cmp r5, #0x97
	bls _0800BEBE
	mov r4, sb
	ldr r0, _0800BED4 @ =0x0000C008
	strh r0, [r4, #2]
	adds r0, #0x40
	strh r0, [r4, #0xa]
	mov r1, ip
	ldrb r0, [r1, #9]
	adds r0, #1
	strb r0, [r1, #9]
_0800BEBE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BECC: .4byte 0x000001FF
_0800BED0: .4byte gOamObjects+0x130
_0800BED4: .4byte 0x0000C008

	thumb_func_start sub_800BED8
sub_800BED8: @ 0x0800BED8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	adds r0, #0x94
	ldrh r1, [r0]
	adds r1, #6
	ldr r2, _0800BF4C @ =0x000001FF
	ands r1, r2
	strh r1, [r0]
	ldr r4, _0800BF50 @ =gOamObjects+0x140
	movs r1, #1
	mov sb, r4
	adds r5, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	mov sl, r0
	adds r6, r2, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	mov r8, r0
_0800BF06:
	movs r3, #0
	adds r2, r1, #1
	mov r1, r8
_0800BF0C:
	ldrh r0, [r5]
	add r0, sl
	ands r0, r6
	adds r0, r0, r1
	strh r0, [r4, #2]
	adds r4, #8
	adds r1, #0x40
	adds r3, #1
	cmp r3, #1
	bls _0800BF0C
	adds r1, r2, #0
	cmp r1, #3
	bls _0800BF06
	ldrh r5, [r5]
	cmp r5, #0xb7
	bls _0800BF3E
	mov r4, sb
	ldr r0, _0800BF54 @ =0x0000C028
	strh r0, [r4, #2]
	adds r0, #0x40
	strh r0, [r4, #0xa]
	mov r1, ip
	ldrb r0, [r1, #9]
	adds r0, #1
	strb r0, [r1, #9]
_0800BF3E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BF4C: .4byte 0x000001FF
_0800BF50: .4byte gOamObjects+0x140
_0800BF54: .4byte 0x0000C028

	thumb_func_start sub_800BF58
sub_800BF58: @ 0x0800BF58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	adds r0, #0x94
	ldrh r1, [r0]
	adds r1, #6
	ldr r2, _0800BFCC @ =0x000001FF
	ands r1, r2
	strh r1, [r0]
	ldr r4, _0800BFD0 @ =gOamObjects+0x150
	movs r1, #2
	mov sb, r4
	adds r5, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	mov sl, r0
	adds r6, r2, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	mov r8, r0
_0800BF86:
	movs r3, #0
	adds r2, r1, #1
	mov r1, r8
_0800BF8C:
	ldrh r0, [r5]
	add r0, sl
	ands r0, r6
	adds r0, r0, r1
	strh r0, [r4, #2]
	adds r4, #8
	adds r1, #0x40
	adds r3, #1
	cmp r3, #1
	bls _0800BF8C
	adds r1, r2, #0
	cmp r1, #3
	bls _0800BF86
	ldrh r5, [r5]
	cmp r5, #0xd7
	bls _0800BFBE
	mov r4, sb
	ldr r0, _0800BFD4 @ =0x0000C048
	strh r0, [r4, #2]
	adds r0, #0x40
	strh r0, [r4, #0xa]
	mov r1, ip
	ldrb r0, [r1, #9]
	adds r0, #1
	strb r0, [r1, #9]
_0800BFBE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BFCC: .4byte 0x000001FF
_0800BFD0: .4byte gOamObjects+0x150
_0800BFD4: .4byte 0x0000C048

	thumb_func_start sub_800BFD8
sub_800BFD8: @ 0x0800BFD8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldrb r0, [r7, #9]
	cmp r0, #8
	bls _0800BFEC
	b _0800C3E6
_0800BFEC:
	lsls r0, r0, #2
	ldr r1, _0800BFF8 @ =_0800BFFC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800BFF8: .4byte _0800BFFC
_0800BFFC: @ jump table
	.4byte _0800C020 @ case 0
	.4byte _0800C028 @ case 1
	.4byte _0800C0C8 @ case 2
	.4byte _0800C0D0 @ case 3
	.4byte _0800C0D8 @ case 4
	.4byte _0800C0E0 @ case 5
	.4byte _0800C174 @ case 6
	.4byte _0800C270 @ case 7
	.4byte _0800C398 @ case 8
_0800C020:
	adds r0, r7, #0
	bl sub_800BCE4
	b _0800C3E6
_0800C028:
	adds r0, r7, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800C034
	b _0800C3E6
_0800C034:
	adds r0, r7, #0
	bl sub_800BD08
	ldr r0, _0800C070 @ =gMain
	movs r3, #0xf0
	ldrb r0, [r0, #0x1b]
	ands r3, r0
	cmp r3, #0
	beq _0800C07C
	movs r0, #0xe0
	lsls r0, r0, #0x14
	ldr r4, _0800C074 @ =gSaveDataBuffer
	ldr r2, _0800C078 @ =0x00002BBC
	adds r1, r4, #0
	bl ReadSram
	adds r4, #0xe8
	ldrb r2, [r7, #0xb]
	movs r1, #1
	lsls r1, r2
	subs r2, #1
	movs r0, #0x10
	lsls r0, r2
	orrs r1, r0
	ldrb r0, [r4]
	orrs r1, r0
	strb r1, [r4]
	bl sub_800AE84
	b _0800C3E6
	.align 2, 0
_0800C070: .4byte gMain
_0800C074: .4byte gSaveDataBuffer
_0800C078: .4byte 0x00002BBC
_0800C07C:
	ldr r2, _0800C0B4 @ =0x040000D4
	ldr r0, _0800C0B8 @ =gUnknown_08022F04
	str r0, [r2]
	ldr r0, _0800C0BC @ =gSaveDataBuffer
	str r0, [r2, #4]
	ldr r1, _0800C0C0 @ =0x80000019
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	str r3, [r0, #0x30]
	adds r4, r0, #0
	adds r4, #0xe8
	ldrb r3, [r7, #0xb]
	movs r2, #1
	lsls r2, r3
	subs r3, #1
	movs r1, #0x10
	lsls r1, r3
	orrs r2, r1
	ldrb r1, [r4]
	orrs r2, r1
	strb r2, [r4]
	movs r1, #0xe0
	lsls r1, r1, #0x14
	ldr r2, _0800C0C4 @ =0x00002BBC
	bl WriteSramEx
	b _0800C3E6
	.align 2, 0
_0800C0B4: .4byte 0x040000D4
_0800C0B8: .4byte gUnknown_08022F04
_0800C0BC: .4byte gSaveDataBuffer
_0800C0C0: .4byte 0x80000019
_0800C0C4: .4byte 0x00002BBC
_0800C0C8:
	adds r0, r7, #0
	bl sub_800BE58
	b _0800C3E6
_0800C0D0:
	adds r0, r7, #0
	bl sub_800BED8
	b _0800C3E6
_0800C0D8:
	adds r0, r7, #0
	bl sub_800BF58
	b _0800C3E6
_0800C0E0:
	adds r0, r7, #0
	adds r0, #0x94
	ldrh r1, [r0]
	adds r1, #6
	ldr r2, _0800C168 @ =0x000001FF
	ands r1, r2
	strh r1, [r0]
	ldr r6, _0800C16C @ =gOamObjects+0x160
	movs r1, #3
	mov sl, r0
	mov r8, sl
	movs r3, #0xb8
	lsls r3, r3, #1
	mov sb, r3
	movs r4, #0xc0
	lsls r4, r4, #8
	mov ip, r4
_0800C102:
	movs r4, #0
	adds r5, r1, #1
	mov r3, ip
_0800C108:
	mov r0, r8
	ldrh r1, [r0]
	add r1, sb
	ands r1, r2
	adds r0, r1, r3
	strh r0, [r6, #2]
	adds r6, #8
	adds r3, #0x40
	adds r4, #1
	cmp r4, #1
	bls _0800C108
	adds r1, r5, #0
	cmp r1, #3
	bls _0800C102
	mov r1, sl
	ldrh r1, [r1]
	cmp r1, #0xf7
	bhi _0800C12E
	b _0800C3E6
_0800C12E:
	ldr r6, _0800C16C @ =gOamObjects+0x160
	ldr r0, _0800C170 @ =0x0000C068
	strh r0, [r6, #2]
	adds r0, #0x40
	strh r0, [r6, #0xa]
	adds r4, r7, #0
	adds r4, #0xb4
	movs r1, #1
	adds r2, r1, #0
	ldrb r3, [r7, #0xb]
	lsls r2, r3
	ldrb r0, [r4]
	orrs r2, r0
	strb r2, [r4]
	ldrb r3, [r7, #0xb]
	lsls r1, r3
	subs r3, #1
	movs r0, #0x10
	lsls r0, r3
	orrs r1, r0
	orrs r2, r1
	strb r2, [r4]
	adds r1, r7, #0
	adds r1, #0x92
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	b _0800C2B8
	.align 2, 0
_0800C168: .4byte 0x000001FF
_0800C16C: .4byte gOamObjects+0x160
_0800C170: .4byte 0x0000C068
_0800C174:
	movs r1, #0x92
	adds r1, r1, r7
	mov sl, r1
	ldrh r1, [r1]
	subs r1, #0x10
	mov r2, sl
	strh r1, [r2]
	ldr r6, _0800C230 @ =gOamObjects+0x130
	ldrb r3, [r7, #0xb]
	lsls r0, r3, #4
	adds r6, r0, r6
	lsls r1, r1, #0x10
	cmp r1, #0
	beq _0800C23C
	ldr r5, _0800C234 @ =gUnknown_0801C158
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r4, [r0, r1]
	mov sb, r4
	movs r2, #0x80
	lsls r2, r2, #1
	mov r8, r2
	mov r0, r8
	bl sub_8004290
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl sub_8004260
	ldr r3, _0800C238 @ =gOamObjects
	strh r0, [r3, #6]
	movs r0, #0
	ldrsh r4, [r5, r0]
	mov r0, r8
	bl sub_8004290
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8004260
	ldr r1, _0800C238 @ =gOamObjects
	strh r0, [r1, #0xe]
	ldrh r5, [r5]
	rsbs r4, r5, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r2, sl
	movs r3, #0
	ldrsh r0, [r2, r3]
	bl sub_8004290
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8004260
	ldr r4, _0800C238 @ =gOamObjects
	strh r0, [r4, #0x16]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_8004290
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl sub_8004260
	strh r0, [r4, #0x1e]
	movs r1, #3
	movs r3, #0x82
	lsls r3, r3, #7
	adds r2, r3, #0
_0800C214:
	movs r4, #0
	adds r5, r1, #1
_0800C218:
	ldrb r1, [r7, #0xb]
	lsls r0, r1, #5
	adds r0, r0, r2
	strh r0, [r6]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _0800C218
	adds r1, r5, #0
	cmp r1, #3
	bls _0800C214
	b _0800C3E6
	.align 2, 0
_0800C230: .4byte gOamObjects+0x130
_0800C234: .4byte gUnknown_0801C158
_0800C238: .4byte gOamObjects
_0800C23C:
	movs r1, #3
	movs r3, #0x82
	lsls r3, r3, #7
	adds r2, r3, #0
	ldr r4, _0800C26C @ =0x000091A0
	mov r8, r4
_0800C248:
	movs r4, #0
	adds r5, r1, #1
	mov r1, r8
_0800C24E:
	ldrb r3, [r7, #0xb]
	lsls r0, r3, #5
	adds r0, r0, r2
	strh r0, [r6]
	strh r1, [r6, #4]
	adds r6, #8
	adds r1, #0x20
	adds r4, #1
	cmp r4, #1
	bls _0800C24E
	adds r1, r5, #0
	cmp r1, #3
	bls _0800C248
	b _0800C2B8
	.align 2, 0
_0800C26C: .4byte 0x000091A0
_0800C270:
	ldr r6, _0800C2C0 @ =gOamObjects+0x130
	ldrb r4, [r7, #0xb]
	lsls r0, r4, #4
	adds r6, r0, r6
	movs r0, #0x92
	adds r0, r0, r7
	mov sl, r0
	ldrh r0, [r0]
	adds r0, #0x10
	mov r1, sl
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _0800C2CC
	movs r0, #1
	strb r0, [r7, #0x18]
	strb r0, [r7, #0x19]
	ldr r1, _0800C2C4 @ =gScriptContext
	ldr r0, _0800C2C8 @ =0x0000FFFF
	strh r0, [r1, #0x1e]
	movs r0, #5
	bl sub_8007538
	movs r4, #0
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
_0800C2A8:
	ldrb r3, [r7, #0xb]
	lsls r0, r3, #5
	adds r0, r0, r1
	strh r0, [r6]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _0800C2A8
_0800C2B8:
	ldrb r0, [r7, #9]
	adds r0, #1
	strb r0, [r7, #9]
	b _0800C3E6
	.align 2, 0
_0800C2C0: .4byte gOamObjects+0x130
_0800C2C4: .4byte gScriptContext
_0800C2C8: .4byte 0x0000FFFF
_0800C2CC:
	ldr r5, _0800C374 @ =gUnknown_0801C158
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r4, [r0, r1]
	mov sb, r4
	movs r2, #0x80
	lsls r2, r2, #1
	mov r8, r2
	mov r0, r8
	bl sub_8004290
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl sub_8004260
	ldr r3, _0800C378 @ =gOamObjects
	strh r0, [r3, #6]
	movs r0, #0
	ldrsh r4, [r5, r0]
	mov r0, r8
	bl sub_8004290
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8004260
	ldr r1, _0800C378 @ =gOamObjects
	strh r0, [r1, #0xe]
	ldrh r5, [r5]
	rsbs r4, r5, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r2, sl
	movs r3, #0
	ldrsh r0, [r2, r3]
	bl sub_8004290
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8004260
	ldr r4, _0800C378 @ =gOamObjects
	strh r0, [r4, #0x16]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_8004290
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl sub_8004260
	strh r0, [r4, #0x1e]
	movs r4, #0
	adds r5, r7, #0
	adds r5, #0xb4
	movs r3, #0
_0800C350:
	ldrb r1, [r7, #0xb]
	lsls r0, r1, #5
	movs r2, #0x82
	lsls r2, r2, #7
	adds r0, r0, r2
	strh r0, [r6]
	ldrb r2, [r7, #0xb]
	ldrb r1, [r5]
	asrs r1, r2
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0800C380
	lsls r0, r2, #6
	ldr r1, _0800C37C @ =0x000091E0
	adds r0, r0, r1
	adds r0, r3, r0
	b _0800C384
	.align 2, 0
_0800C374: .4byte gUnknown_0801C158
_0800C378: .4byte gOamObjects
_0800C37C: .4byte 0x000091E0
_0800C380:
	ldr r2, _0800C394 @ =0x000091A0
	adds r0, r3, r2
_0800C384:
	strh r0, [r6, #4]
	adds r6, #8
	adds r3, #0x20
	adds r4, #1
	cmp r4, #1
	bls _0800C350
	b _0800C3E6
	.align 2, 0
_0800C394: .4byte 0x000091A0
_0800C398:
	ldr r1, _0800C3F4 @ =gScriptContext
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800C3E6
	ldr r1, _0800C3F8 @ =gJoypad
	movs r4, #0xf
	adds r0, r4, #0
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _0800C3E6
	bl sub_80139EC
	movs r0, #0x2b
	bl sub_8013834
	ldr r2, _0800C3FC @ =gSaveDataBuffer
	adds r0, r7, #0
	adds r0, #0xb3
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0xe7
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0xb4
	ldrb r3, [r0]
	adds r0, r4, #0
	ands r0, r3
	lsls r0, r0, #3
	subs r4, #0x1f
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r3
	adds r2, #0xe8
	strb r0, [r2]
	ldr r0, _0800C400 @ =0x0100000A
	str r0, [r7, #8]
_0800C3E6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C3F4: .4byte gScriptContext
_0800C3F8: .4byte gJoypad
_0800C3FC: .4byte gSaveDataBuffer
_0800C400: .4byte 0x0100000A

	thumb_func_start sub_800C404
sub_800C404: @ 0x0800C404
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	ldrb r0, [r6, #9]
	cmp r0, #0xc
	bls _0800C41A
	b _0800C994
_0800C41A:
	lsls r0, r0, #2
	ldr r1, _0800C424 @ =_0800C428
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800C424: .4byte _0800C428
_0800C428: @ jump table
	.4byte _0800C45C @ case 0
	.4byte _0800C464 @ case 1
	.4byte _0800C504 @ case 2
	.4byte _0800C50C @ case 3
	.4byte _0800C514 @ case 4
	.4byte _0800C51C @ case 5
	.4byte _0800C5A8 @ case 6
	.4byte _0800C73E @ case 7
	.4byte _0800C7F4 @ case 8
	.4byte _0800C868 @ case 9
	.4byte _0800C884 @ case 10
	.4byte _0800C90E @ case 11
	.4byte _0800C986 @ case 12
_0800C45C:
	adds r0, r6, #0
	bl sub_800BCE4
	b _0800C994
_0800C464:
	adds r0, r6, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800C470
	b _0800C994
_0800C470:
	adds r0, r6, #0
	bl sub_800BD08
	movs r0, #0xf0
	ldrb r1, [r6, #0x1b]
	ands r0, r1
	adds r2, r6, #0
	adds r2, #0xb4
	str r2, [sp]
	cmp r0, #0
	beq _0800C48E
	ldr r0, _0800C4C8 @ =gSaveDataBuffer
	adds r0, #0xe8
	ldrb r0, [r0]
	strb r0, [r2]
_0800C48E:
	ldrb r0, [r6, #0xb]
	strb r0, [r6, #0x17]
	ldr r4, _0800C4CC @ =gOamObjects+0x130
	movs r7, #0
	ldr r3, _0800C4D0 @ =0x0000A1E0
	mov sl, r3
	ldr r5, _0800C4D4 @ =0x0000A1A0
	mov sb, r5
_0800C49E:
	ldr r0, [sp]
	ldrb r1, [r0]
	asrs r1, r7
	movs r5, #0
	adds r2, r7, #1
	mov r8, r2
	movs r3, #1
	ands r1, r3
	str r1, [sp, #8]
	mov ip, r5
	lsls r0, r7, #6
	adds r2, r0, #0
	add r2, sl
	ldr r3, _0800C4D8 @ =0x000091E0
	adds r1, r0, r3
_0800C4BC:
	ldrb r0, [r6, #0x17]
	cmp r0, r7
	bne _0800C4DC
	strh r1, [r4, #4]
	b _0800C4EC
	.align 2, 0
_0800C4C8: .4byte gSaveDataBuffer
_0800C4CC: .4byte gOamObjects+0x130
_0800C4D0: .4byte 0x0000A1E0
_0800C4D4: .4byte 0x0000A1A0
_0800C4D8: .4byte 0x000091E0
_0800C4DC:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0800C4E6
	strh r2, [r4, #4]
	b _0800C4EC
_0800C4E6:
	mov r0, ip
	add r0, sb
	strh r0, [r4, #4]
_0800C4EC:
	adds r4, #8
	movs r3, #0x20
	add ip, r3
	adds r2, #0x20
	adds r1, #0x20
	adds r5, #1
	cmp r5, #1
	bls _0800C4BC
	mov r7, r8
	cmp r7, #3
	bls _0800C49E
	b _0800C994
_0800C504:
	adds r0, r6, #0
	bl sub_800BE58
	b _0800C994
_0800C50C:
	adds r0, r6, #0
	bl sub_800BED8
	b _0800C994
_0800C514:
	adds r0, r6, #0
	bl sub_800BF58
	b _0800C994
_0800C51C:
	adds r0, r6, #0
	adds r0, #0x94
	ldrh r1, [r0]
	adds r1, #6
	ldr r2, _0800C594 @ =0x000001FF
	ands r1, r2
	strh r1, [r0]
	ldr r4, _0800C598 @ =gOamObjects+0x160
	movs r7, #3
	mov sb, r0
	mov ip, sb
	movs r5, #0xb8
	lsls r5, r5, #1
	mov sl, r5
_0800C538:
	movs r5, #0
	adds r7, #1
	mov r8, r7
	movs r1, #0xc0
	lsls r1, r1, #8
_0800C542:
	mov r0, ip
	ldrh r3, [r0]
	add r3, sl
	ands r3, r2
	adds r0, r3, r1
	strh r0, [r4, #2]
	adds r4, #8
	adds r1, #0x40
	adds r5, #1
	cmp r5, #1
	bls _0800C542
	mov r7, r8
	cmp r7, #3
	bls _0800C538
	mov r1, sb
	ldrh r1, [r1]
	cmp r1, #0xf7
	bhi _0800C568
	b _0800C994
_0800C568:
	ldr r4, _0800C598 @ =gOamObjects+0x160
	ldr r0, _0800C59C @ =0x0000C068
	strh r0, [r4, #2]
	adds r0, #0x40
	strh r0, [r4, #0xa]
	movs r0, #1
	strb r0, [r6, #0x18]
	strb r0, [r6, #0x19]
	ldr r1, _0800C5A0 @ =gScriptContext
	ldr r0, _0800C5A4 @ =0x0000FFFF
	strh r0, [r1, #0x1e]
	movs r0, #2
	bl sub_8007538
	movs r0, #0xc0
	movs r1, #0x14
	bl SetTimedKeysAndDelay
	ldrb r0, [r6, #9]
	adds r0, #1
	strb r0, [r6, #9]
	b _0800C994
	.align 2, 0
_0800C594: .4byte 0x000001FF
_0800C598: .4byte gOamObjects+0x160
_0800C59C: .4byte 0x0000C068
_0800C5A0: .4byte gScriptContext
_0800C5A4: .4byte 0x0000FFFF
_0800C5A8:
	ldr r1, _0800C5F0 @ =gScriptContext
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	adds r2, r6, #0
	adds r2, #0xb4
	str r2, [sp]
	cmp r0, #0
	beq _0800C69A
	ldr r2, _0800C5F4 @ =gJoypad
	ldrh r1, [r2, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800C5F8
	ldrb r5, [r6, #0x17]
	movs r7, #0
	movs r4, #3
	ldr r1, [sp]
	movs r2, #1
_0800C5D0:
	ldrb r0, [r6, #0x17]
	subs r0, #1
	ands r0, r4
	strb r0, [r6, #0x17]
	ldrb r0, [r6, #0x17]
	ldrb r3, [r1]
	asrs r3, r0
	ands r3, r2
	cmp r3, #0
	beq _0800C5E8
	cmp r5, r0
	bne _0800C674
_0800C5E8:
	adds r7, #1
	cmp r7, #3
	bls _0800C5D0
	b _0800C69A
	.align 2, 0
_0800C5F0: .4byte gScriptContext
_0800C5F4: .4byte gJoypad
_0800C5F8:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0800C62E
	ldrb r5, [r6, #0x17]
	movs r7, #0
	movs r4, #3
	ldr r1, [sp]
	movs r2, #1
_0800C60E:
	ldrb r0, [r6, #0x17]
	adds r0, #1
	ands r0, r4
	strb r0, [r6, #0x17]
	ldrb r0, [r6, #0x17]
	ldrb r3, [r1]
	asrs r3, r0
	ands r3, r2
	cmp r3, #0
	beq _0800C626
	cmp r5, r0
	bne _0800C674
_0800C626:
	adds r7, #1
	cmp r7, #3
	bls _0800C60E
	b _0800C69A
_0800C62E:
	ldrh r1, [r2, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C67C
	movs r0, #0x2b
	bl sub_8013834
	adds r0, r6, #0
	adds r0, #0x94
	movs r2, #0
	strh r4, [r0]
	strb r2, [r6, #0x18]
	strb r2, [r6, #0x19]
	ldr r1, _0800C66C @ =gIORegisters
	adds r1, #0x4a
	ldr r0, _0800C670 @ =0x0000FDFF
	ldrh r3, [r1]
	ands r0, r3
	strh r0, [r1]
	movs r0, #0xfd
	ldrb r5, [r6, #0x1a]
	ands r0, r5
	strb r0, [r6, #0x1a]
	ldrb r0, [r6, #9]
	adds r0, #1
	strb r0, [r6, #9]
	strb r2, [r6, #0xb]
	strb r2, [r6, #0xa]
	b _0800C69A
	.align 2, 0
_0800C66C: .4byte gIORegisters
_0800C670: .4byte 0x0000FDFF
_0800C674:
	movs r0, #0x2a
	bl sub_8013834
	b _0800C69A
_0800C67C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800C69A
	movs r0, #0x2c
	bl sub_8013834
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r0, #0xc
	strb r0, [r6, #9]
_0800C69A:
	ldr r4, _0800C6D0 @ =gOamObjects+0x130
	movs r7, #0
_0800C69E:
	ldrb r0, [r6, #0x17]
	cmp r7, r0
	bne _0800C6F0
	movs r5, #0
	adds r1, r7, #1
	mov r8, r1
	ldr r2, [sp]
	mov ip, r2
	movs r3, #1
	mov sl, r3
	movs r2, #0
	lsls r0, r7, #6
	ldr r3, _0800C6D4 @ =0x000091E0
	adds r1, r0, r3
	ldr r0, _0800C6D8 @ =0x000091A0
	mov sb, r0
_0800C6BE:
	mov r0, ip
	ldrb r3, [r0]
	asrs r3, r7
	mov r0, sl
	ands r3, r0
	cmp r3, #0
	beq _0800C6DC
	strh r1, [r4, #4]
	b _0800C6E2
	.align 2, 0
_0800C6D0: .4byte gOamObjects+0x130
_0800C6D4: .4byte 0x000091E0
_0800C6D8: .4byte 0x000091A0
_0800C6DC:
	mov r3, sb
	adds r0, r2, r3
	strh r0, [r4, #4]
_0800C6E2:
	adds r4, #8
	adds r2, #0x20
	adds r1, #0x20
	adds r5, #1
	cmp r5, #1
	bls _0800C6BE
	b _0800C736
_0800C6F0:
	movs r5, #0
	adds r0, r7, #1
	mov r8, r0
	ldr r1, [sp]
	mov ip, r1
	movs r2, #1
	mov sl, r2
	movs r2, #0
	lsls r0, r7, #6
	ldr r3, _0800C71C @ =0x0000A1E0
	adds r1, r0, r3
	ldr r0, _0800C720 @ =0x0000A1A0
	mov sb, r0
_0800C70A:
	mov r0, ip
	ldrb r3, [r0]
	asrs r3, r7
	mov r0, sl
	ands r3, r0
	cmp r3, #0
	beq _0800C724
	strh r1, [r4, #4]
	b _0800C72A
	.align 2, 0
_0800C71C: .4byte 0x0000A1E0
_0800C720: .4byte 0x0000A1A0
_0800C724:
	mov r3, sb
	adds r0, r2, r3
	strh r0, [r4, #4]
_0800C72A:
	adds r4, #8
	adds r2, #0x20
	adds r1, #0x20
	adds r5, #1
	cmp r5, #1
	bls _0800C70A
_0800C736:
	mov r7, r8
	cmp r7, #3
	bls _0800C69E
	b _0800C994
_0800C73E:
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r5, #0x94
	adds r5, r5, r6
	mov sb, r5
	cmp r0, #0x28
	bls _0800C762
	movs r0, #0
	movs r1, #0
	strh r1, [r5]
	ldrb r1, [r6, #9]
	adds r1, #1
	strb r1, [r6, #9]
	strb r0, [r6, #0xb]
	strb r0, [r6, #0xa]
_0800C762:
	ldr r4, _0800C798 @ =gOamObjects+0x130
	movs r7, #0
	ldr r0, _0800C79C @ =0x000001FF
	mov ip, r0
	movs r1, #0xfe
	lsls r1, r1, #8
	mov sl, r1
_0800C770:
	movs r5, #0
	adds r2, r7, #1
	mov r8, r2
_0800C776:
	ldrb r3, [r6, #0x17]
	cmp r7, r3
	bne _0800C7B0
	ldrh r1, [r4, #2]
	mov r3, ip
	ands r3, r1
	mov r0, sl
	ands r0, r1
	strh r0, [r4, #2]
	cmp r5, #0
	bne _0800C7A0
	cmp r3, #0x37
	bhi _0800C792
	adds r3, #4
_0800C792:
	cmp r3, #0x38
	bls _0800C7AC
	b _0800C7AA
	.align 2, 0
_0800C798: .4byte gOamObjects+0x130
_0800C79C: .4byte 0x000001FF
_0800C7A0:
	cmp r3, #0x77
	bhi _0800C7A6
	adds r3, #4
_0800C7A6:
	cmp r3, #0x78
	bls _0800C7AC
_0800C7AA:
	subs r3, #4
_0800C7AC:
	ldrh r1, [r4, #2]
	b _0800C7D2
_0800C7B0:
	ldrh r0, [r4, #2]
	mov r3, ip
	ands r3, r0
	mov r1, sl
	ands r1, r0
	strh r1, [r4, #2]
	mov r2, sb
	ldrh r2, [r2]
	adds r3, r2, r3
	mov r0, ip
	ands r3, r0
	cmp r3, #0xf0
	bls _0800C7D2
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4]
	b _0800C7D6
_0800C7D2:
	adds r0, r1, r3
	strh r0, [r4, #2]
_0800C7D6:
	adds r4, #8
	adds r5, #1
	cmp r5, #1
	bls _0800C776
	mov r7, r8
	cmp r7, #3
	bls _0800C770
	mov r1, sb
	ldrh r0, [r1]
	cmp r0, #7
	bls _0800C7EE
	b _0800C994
_0800C7EE:
	adds r0, #1
	strh r0, [r1]
	b _0800C994
_0800C7F4:
	ldr r4, _0800C840 @ =gOamObjects+0x130
	movs r7, #0
	movs r2, #0x94
	adds r2, r2, r6
	mov sb, r2
	movs r3, #0xff
	lsls r3, r3, #8
	mov sl, r3
	movs r1, #0
_0800C806:
	movs r5, #0
	adds r0, r7, #1
	mov r8, r0
_0800C80C:
	ldrb r2, [r6, #0x17]
	cmp r7, r2
	bne _0800C844
	ldrb r3, [r4]
	mov r0, sl
	ldrh r2, [r4]
	ands r0, r2
	strh r0, [r4]
	cmp r3, #0x37
	bhi _0800C826
	adds r3, #4
	cmp r3, #0x37
	bhi _0800C830
_0800C826:
	cmp r3, #0x38
	bls _0800C83A
	subs r3, #4
	cmp r3, #0x38
	bhi _0800C83A
_0800C830:
	movs r0, #9
	strb r0, [r6, #9]
	strb r1, [r6, #0xb]
	strb r1, [r6, #0xa]
	movs r3, #0x38
_0800C83A:
	ldrh r2, [r4]
	adds r0, r2, r3
	b _0800C848
	.align 2, 0
_0800C840: .4byte gOamObjects+0x130
_0800C844:
	movs r0, #0x80
	lsls r0, r0, #2
_0800C848:
	strh r0, [r4]
	adds r4, #8
	adds r5, #1
	cmp r5, #1
	bls _0800C80C
	mov r7, r8
	cmp r7, #3
	bls _0800C806
	mov r3, sb
	ldrh r0, [r3]
	cmp r0, #7
	bls _0800C862
	b _0800C994
_0800C862:
	adds r0, #1
	strh r0, [r3]
	b _0800C994
_0800C868:
	ldrb r0, [r6, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bhi _0800C87A
	b _0800C994
_0800C87A:
	movs r0, #0xa
	strb r0, [r6, #9]
	strb r1, [r6, #0xb]
	strb r1, [r6, #0xa]
	b _0800C994
_0800C884:
	ldrb r0, [r6, #0xa]
	adds r0, #1
	movs r4, #0
	strb r0, [r6, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x32
	bls _0800C8AA
	movs r0, #2
	movs r1, #4
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r6, #9]
	adds r0, #1
	strb r0, [r6, #9]
	strb r4, [r6, #0xb]
	b _0800C8B8
_0800C8AA:
	ldrb r5, [r6, #0xb]
	cmp r5, #5
	bls _0800C8B2
	strb r4, [r6, #0xb]
_0800C8B2:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
_0800C8B8:
	ldr r4, _0800C8E8 @ =gOamObjects+0x130
	movs r7, #0
	ldr r0, _0800C8EC @ =0x0000A1E0
	mov sb, r0
	ldr r1, _0800C8F0 @ =0x000091E0
	mov sl, r1
	movs r2, #0x80
	lsls r2, r2, #2
_0800C8C8:
	movs r5, #0
	adds r3, r7, #1
	mov r8, r3
	lsls r0, r7, #6
	mov r3, sl
	adds r1, r0, r3
	add r0, sb
_0800C8D6:
	ldrb r3, [r6, #0x17]
	cmp r7, r3
	bne _0800C8F8
	ldrb r3, [r6, #0xb]
	cmp r3, #2
	bls _0800C8F4
	strh r0, [r4, #4]
	b _0800C8FA
	.align 2, 0
_0800C8E8: .4byte gOamObjects+0x130
_0800C8EC: .4byte 0x0000A1E0
_0800C8F0: .4byte 0x000091E0
_0800C8F4:
	strh r1, [r4, #4]
	b _0800C8FA
_0800C8F8:
	strh r2, [r4]
_0800C8FA:
	adds r4, #8
	adds r1, #0x20
	adds r0, #0x20
	adds r5, #1
	cmp r5, #1
	bls _0800C8D6
	mov r7, r8
	cmp r7, #3
	bls _0800C8C8
	b _0800C994
_0800C90E:
	adds r0, r6, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800C994
	adds r0, r6, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	lsrs r1, r0, #4
	ldrb r5, [r6, #0x17]
	asrs r1, r5
	movs r0, #1
	ands r1, r0
	adds r2, r6, #0
	adds r2, #0xb3
	ldr r3, _0800C958 @ =gMain
	ldr r4, _0800C95C @ =gUnknown_0801C3D8
	cmp r1, #0
	beq _0800C948
	movs r7, #0
	movs r1, #1
	rsbs r1, r1, #0
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r6, r5
_0800C940:
	stm r0!, {r1}
	adds r7, #1
	cmp r7, #7
	bls _0800C940
_0800C948:
	ldrb r0, [r6, #0x17]
	cmp r0, #1
	beq _0800C96A
	cmp r0, #1
	bgt _0800C960
	cmp r0, #0
	beq _0800C978
	b _0800C976
	.align 2, 0
_0800C958: .4byte gMain
_0800C95C: .4byte gUnknown_0801C3D8
_0800C960:
	cmp r0, #2
	beq _0800C96E
	cmp r0, #3
	beq _0800C972
	b _0800C976
_0800C96A:
	movs r0, #2
	b _0800C978
_0800C96E:
	movs r0, #8
	b _0800C978
_0800C972:
	movs r0, #0xe
	b _0800C978
_0800C976:
	movs r0, #0
_0800C978:
	strb r0, [r2]
	movs r0, #0
	str r0, [r3, #4]
	ldrb r2, [r2]
	adds r0, r2, r4
	ldrb r0, [r0]
	b _0800C992
_0800C986:
	adds r0, r6, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800C994
	movs r0, #1
_0800C992:
	str r0, [r6, #8]
_0800C994:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_800C9A4
sub_800C9A4: @ 0x0800C9A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	ldrb r0, [r0, #9]
	cmp r0, #7
	bls _0800C9BC
	bl _0800D42C
_0800C9BC:
	lsls r0, r0, #2
	ldr r1, _0800C9C8 @ =_0800C9CC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800C9C8: .4byte _0800C9CC
_0800C9CC: @ jump table
	.4byte _0800C9EC @ case 0
	.4byte _0800C9FA @ case 1
	.4byte _0800CAFC @ case 2
	.4byte _0800CB70 @ case 3
	.4byte _0800CD00 @ case 4
	.4byte _0800D298 @ case 5
	.4byte _0800D2E0 @ case 6
	.4byte _0800D2F4 @ case 7
_0800C9EC:
	bl sub_800AECC
	mov r0, r8
	bl sub_800BCE4
	bl _0800D42C
_0800C9FA:
	mov r0, r8
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800CA08
	bl _0800D42C
_0800CA08:
	ldr r0, _0800CAC4 @ =gSaveDataBuffer
	adds r1, r0, #0
	adds r1, #0x4f
	ldrb r1, [r1]
	mov r2, r8
	strb r1, [r2, #0x1b]
	adds r0, #0xe7
	ldrb r0, [r0]
	mov r1, r8
	adds r1, #0xb3
	strb r0, [r1]
	ldr r1, _0800CAC8 @ =0x040000D4
	ldr r0, _0800CACC @ =gUnknown_0813791C
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r2, _0800CAD0 @ =0x80000800
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800CAD4 @ =gUnknown_0814F0C4
	str r0, [r1]
	ldr r0, _0800CAD8 @ =0x06013400
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800CADC @ =gUnknown_081DE3A8
	str r0, [r1]
	ldr r0, _0800CAE0 @ =0x05000320
	str r0, [r1, #4]
	ldr r0, _0800CAE4 @ =0x80000020
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0xa
	bl sub_8002820
	movs r0, #0xa
	bl CopyBGDataToVram
	mov r1, r8
	adds r1, #0x25
	movs r0, #0xfc
	ldrb r3, [r1]
	ands r0, r3
	strb r0, [r1]
	ldr r2, _0800CAE8 @ =gOamObjects
	movs r7, #0
	movs r0, #0x80
	lsls r0, r0, #2
_0800CA6A:
	strh r0, [r2]
	adds r2, #8
	adds r7, #1
	cmp r7, #0x7f
	bls _0800CA6A
	movs r7, #0
	ldr r2, _0800CAEC @ =0x000003FF
	movs r1, #0
	ldr r0, _0800CAF0 @ =gUnknown_03000000
_0800CA7C:
	strh r1, [r0]
	adds r0, #2
	adds r7, #1
	cmp r7, r2
	bls _0800CA7C
	movs r0, #5
	movs r1, #8
	bl sub_8003C14
	movs r0, #0x31
	bl sub_8013834
	ldr r1, _0800CAF4 @ =gIORegisters
	adds r3, r1, #0
	adds r3, #0x4a
	movs r2, #0
	movs r0, #0xe2
	lsls r0, r0, #5
	strh r0, [r3]
	movs r0, #0xc
	mov r6, r8
	strb r0, [r6, #0x1a]
	ldr r0, _0800CAF8 @ =0x00003E01
	strh r0, [r1, #4]
	strb r2, [r6, #0x17]
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r6, #9]
	adds r0, #1
	strb r0, [r6, #9]
	bl _0800D42C
	.align 2, 0
_0800CAC4: .4byte gSaveDataBuffer
_0800CAC8: .4byte 0x040000D4
_0800CACC: .4byte gUnknown_0813791C
_0800CAD0: .4byte 0x80000800
_0800CAD4: .4byte gUnknown_0814F0C4
_0800CAD8: .4byte 0x06013400
_0800CADC: .4byte gUnknown_081DE3A8
_0800CAE0: .4byte 0x05000320
_0800CAE4: .4byte 0x80000020
_0800CAE8: .4byte gOamObjects
_0800CAEC: .4byte 0x000003FF
_0800CAF0: .4byte gUnknown_03000000
_0800CAF4: .4byte gIORegisters
_0800CAF8: .4byte 0x00003E01
_0800CAFC:
	ldr r4, _0800CB60 @ =gCourtRecord
	adds r0, r4, #0
	bl sub_8003FC4
	movs r6, #1
	ldrsb r6, [r4, r6]
	cmp r6, #0
	beq _0800CB10
	bl _0800D42C
_0800CB10:
	movs r5, #1
	mov r0, r8
	strb r5, [r0, #0x18]
	strb r5, [r0, #0x19]
	ldr r4, _0800CB64 @ =gScriptContext
	ldr r0, _0800CB68 @ =0x0000FFFF
	strh r0, [r4, #0x1e]
	mov r0, r8
	adds r0, #0xb3
	ldrb r0, [r0]
	adds r0, #7
	bl sub_8007538
	movs r0, #9
	strh r0, [r4, #0x18]
	movs r0, #0x34
	strh r0, [r4, #0x1a]
	mov r0, r8
	adds r0, #0x80
	strh r6, [r0]
	adds r0, #2
	strb r5, [r0]
	adds r0, #1
	movs r2, #0x10
	strb r2, [r0]
	ldr r1, _0800CB6C @ =gIORegisters
	adds r3, r1, #0
	adds r3, #0x48
	movs r0, #0x84
	lsls r0, r0, #4
	strh r0, [r3]
	lsls r2, r2, #8
	adds r1, #0x4c
	strh r2, [r1]
	mov r1, r8
	ldrb r0, [r1, #9]
	adds r0, #1
	strb r0, [r1, #9]
	bl _0800D42C
	.align 2, 0
_0800CB60: .4byte gCourtRecord
_0800CB64: .4byte gScriptContext
_0800CB68: .4byte 0x0000FFFF
_0800CB6C: .4byte gIORegisters
_0800CB70:
	ldr r1, _0800CBA8 @ =gScriptContext
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800CC26
	movs r0, #1
	mov r2, r8
	ldrb r2, [r2, #0x1b]
	ands r0, r2
	ldr r1, _0800CBAC @ =gJoypad
	cmp r0, #0
	beq _0800CBB0
	movs r0, #0xc0
	ldrh r3, [r1, #2]
	ands r0, r3
	cmp r0, #0
	beq _0800CBB0
	movs r0, #0x2a
	bl sub_8013834
	movs r0, #1
	mov r6, r8
	ldrb r6, [r6, #0x17]
	eors r0, r6
	mov r1, r8
	strb r0, [r1, #0x17]
	b _0800CC26
	.align 2, 0
_0800CBA8: .4byte gScriptContext
_0800CBAC: .4byte gJoypad
_0800CBB0:
	ldrh r1, [r1, #2]
	movs r5, #1
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0800CC04
	movs r0, #0x2b
	bl sub_8013834
	movs r2, #0
	mov r3, r8
	strb r2, [r3, #0x18]
	strb r5, [r3, #0x19]
	adds r0, r4, #0
	ldrb r6, [r3, #0x1b]
	ands r0, r6
	cmp r0, #0
	bne _0800CBEA
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r0, #5
	mov r1, r8
	strb r0, [r1, #9]
	b _0800CC26
_0800CBEA:
	mov r0, r8
	adds r0, #0x80
	movs r1, #0
	strh r2, [r0]
	adds r0, #2
	strb r5, [r0]
	adds r0, #1
	strb r1, [r0]
	movs r0, #7
	mov r2, r8
	strb r0, [r2, #9]
	strb r1, [r2, #0xa]
	b _0800CC26
_0800CC04:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800CC26
	movs r0, #0x2c
	bl sub_8013834
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	mov r3, r8
	ldrb r0, [r3, #9]
	adds r0, #3
	strb r0, [r3, #9]
_0800CC26:
	movs r0, #1
	mov r6, r8
	ldrb r6, [r6, #0x1b]
	ands r0, r6
	cmp r0, #0
	beq _0800CC98
	ldr r2, _0800CC6C @ =gOamObjects+0x130
	movs r7, #0
	ldr r0, _0800CC70 @ =0x0000A1A0
	mov sl, r0
	ldr r1, _0800CC74 @ =0x0000C038
	mov sb, r1
_0800CC3E:
	movs r5, #0
	adds r3, r7, #1
	mov ip, r3
	lsls r0, r7, #5
	lsls r1, r7, #6
	ldr r6, _0800CC78 @ =0x00004462
	adds r0, r0, r6
	str r0, [sp, #4]
	mov r0, sl
	adds r4, r1, r0
	ldr r6, _0800CC7C @ =0x000091A0
	adds r3, r1, r6
	mov r1, sb
_0800CC58:
	mov r0, sp
	ldrh r0, [r0, #4]
	strh r0, [r2]
	strh r1, [r2, #2]
	mov r6, r8
	ldrb r0, [r6, #0x17]
	cmp r0, r7
	bne _0800CC80
	strh r3, [r2, #4]
	b _0800CC82
	.align 2, 0
_0800CC6C: .4byte gOamObjects+0x130
_0800CC70: .4byte 0x0000A1A0
_0800CC74: .4byte 0x0000C038
_0800CC78: .4byte 0x00004462
_0800CC7C: .4byte 0x000091A0
_0800CC80:
	strh r4, [r2, #4]
_0800CC82:
	adds r2, #8
	adds r4, #0x20
	adds r3, #0x20
	adds r1, #0x40
	adds r5, #1
	cmp r5, #1
	bls _0800CC58
	mov r7, ip
	cmp r7, #1
	bls _0800CC3E
	b _0800CCB4
_0800CC98:
	ldr r2, _0800CCF0 @ =gOamObjects+0x130
	movs r5, #0
	ldr r3, _0800CCF4 @ =0x00004462
	ldr r1, _0800CCF8 @ =0x0000C038
	ldr r0, _0800CCFC @ =0x000091E0
_0800CCA2:
	strh r3, [r2]
	strh r1, [r2, #2]
	strh r0, [r2, #4]
	adds r2, #8
	adds r1, #0x40
	adds r0, #0x20
	adds r5, #1
	cmp r5, #1
	bls _0800CCA2
_0800CCB4:
	mov r0, r8
	ldrb r0, [r0, #9]
	cmp r0, #3
	beq _0800CCBE
	b _0800D42C
_0800CCBE:
	mov r3, r8
	adds r3, #0x83
	ldrb r0, [r3]
	cmp r0, #0
	bne _0800CCCA
	b _0800D42C
_0800CCCA:
	mov r2, r8
	adds r2, #0x80
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	mov r1, r8
	adds r1, #0x82
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	bhs _0800CCE4
	b _0800D41C
_0800CCE4:
	movs r0, #0
	strh r0, [r2]
	ldrb r0, [r3]
	subs r0, #1
	b _0800D41A
	.align 2, 0
_0800CCF0: .4byte gOamObjects+0x130
_0800CCF4: .4byte 0x00004462
_0800CCF8: .4byte 0x0000C038
_0800CCFC: .4byte 0x000091E0
_0800CD00:
	mov r0, r8
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800CD0C
	b _0800D42C
_0800CD0C:
	bl HideAllSprites
	bl InitBGs
	bl ResetAnimationSystem
	bl ResetSoundControl
	bl LoadCurrentScriptIntoRam
	ldr r6, _0800CE2C @ =0x040000D4
	ldr r0, _0800CE30 @ =gUnknown_081370FC
	str r0, [r6]
	ldr r0, _0800CE34 @ =0x06003800
	str r0, [r6, #4]
	ldr r1, _0800CE38 @ =0x80000400
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800CE3C @ =gUnknown_0813791C
	str r0, [r6]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r6, #4]
	ldr r2, _0800CE40 @ =0x80000800
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	ldr r5, _0800CE44 @ =gUnknown_081378FC
	str r5, [r6]
	ldr r0, _0800CE48 @ =0x05000240
	str r0, [r6, #4]
	ldr r3, _0800CE4C @ =0x80000010
	mov sb, r3
	str r3, [r6, #8]
	ldr r0, [r6, #8]
	movs r0, #0
	bl sub_80035B0
	adds r7, r0, #0
	str r7, [r6]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r6, #4]
	ldr r7, _0800CE50 @ =0x80000100
	str r7, [r6, #8]
	ldr r0, [r6, #8]
	ldr r4, _0800CE54 @ =gUnknown_02000034
	str r4, [r6]
	ldr r0, _0800CE58 @ =gMain
	str r0, [r6, #4]
	ldr r0, _0800CE5C @ =0x80000160
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	str r5, [r6]
	str r1, [r6, #4]
	mov r0, sb
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	bl LoadCurrentScriptIntoRam
	ldr r0, _0800CE60 @ =gUnknown_0814DC60
	str r0, [r6]
	ldr r0, _0800CE64 @ =0x05000300
	str r0, [r6, #4]
	mov r1, sb
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	movs r2, #0xb8
	lsls r2, r2, #3
	adds r0, r4, r2
	str r0, [r6]
	ldr r0, _0800CE68 @ =gUnknown_03002920
	str r0, [r6, #4]
	ldr r0, _0800CE6C @ =0x80000140
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	movs r3, #0x84
	lsls r3, r3, #4
	adds r0, r4, r3
	str r0, [r6]
	ldr r0, _0800CE70 @ =gUnknown_03003B70
	str r0, [r6, #4]
	ldr r0, _0800CE74 @ =0x80000014
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800CE78 @ =0x00002808
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_801492C
	mov r1, r8
	ldrb r1, [r1, #8]
	cmp r1, #4
	bne _0800CEBA
	ldr r0, _0800CE7C @ =gUnknown_081400FC
	str r0, [r6]
	ldr r0, _0800CE80 @ =0x06012000
	str r0, [r6, #4]
	ldr r2, _0800CE40 @ =0x80000800
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800CE84 @ =gUnknown_0814DBA0
	str r0, [r6]
	ldr r0, _0800CE88 @ =0x050002A0
	str r0, [r6, #4]
	ldr r1, _0800CE8C @ =0x80000020
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800CE90 @ =gUnknown_081412FC
	str r0, [r6]
	ldr r0, _0800CE94 @ =0x06013000
	str r0, [r6, #4]
	str r7, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800CE98 @ =gUnknown_0814DC00
	str r0, [r6]
	ldr r0, _0800CE9C @ =0x050002E0
	str r0, [r6, #4]
	mov r3, sb
	str r3, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800CEA0 @ =gUnknown_081426FC
	str r0, [r6]
	ldr r0, _0800CEA4 @ =0x06013200
	str r0, [r6, #4]
	str r7, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800CEA8 @ =gUnknown_081DE3A8
	str r0, [r6]
	ldr r0, _0800CEAC @ =0x05000320
	str r0, [r6, #4]
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	mov r6, r8
	ldrb r6, [r6, #0xa]
	cmp r6, #3
	beq _0800CE1E
	b _0800CF42
_0800CE1E:
	mov r1, r8
	ldrb r0, [r1, #9]
	cmp r0, #7
	bne _0800CEB0
	bl sub_8011578
	b _0800CF42
	.align 2, 0
_0800CE2C: .4byte 0x040000D4
_0800CE30: .4byte gUnknown_081370FC
_0800CE34: .4byte 0x06003800
_0800CE38: .4byte 0x80000400
_0800CE3C: .4byte gUnknown_0813791C
_0800CE40: .4byte 0x80000800
_0800CE44: .4byte gUnknown_081378FC
_0800CE48: .4byte 0x05000240
_0800CE4C: .4byte 0x80000010
_0800CE50: .4byte 0x80000100
_0800CE54: .4byte gUnknown_02000034
_0800CE58: .4byte gMain
_0800CE5C: .4byte 0x80000160
_0800CE60: .4byte gUnknown_0814DC60
_0800CE64: .4byte 0x05000300
_0800CE68: .4byte gUnknown_03002920
_0800CE6C: .4byte 0x80000140
_0800CE70: .4byte gUnknown_03003B70
_0800CE74: .4byte 0x80000014
_0800CE78: .4byte 0x00002808
_0800CE7C: .4byte gUnknown_081400FC
_0800CE80: .4byte 0x06012000
_0800CE84: .4byte gUnknown_0814DBA0
_0800CE88: .4byte 0x050002A0
_0800CE8C: .4byte 0x80000020
_0800CE90: .4byte gUnknown_081412FC
_0800CE94: .4byte 0x06013000
_0800CE98: .4byte gUnknown_0814DC00
_0800CE9C: .4byte 0x050002E0
_0800CEA0: .4byte gUnknown_081426FC
_0800CEA4: .4byte 0x06013200
_0800CEA8: .4byte gUnknown_081DE3A8
_0800CEAC: .4byte 0x05000320
_0800CEB0:
	cmp r0, #8
	bne _0800CF42
	bl sub_80115D4
	b _0800CF42
_0800CEBA:
	ldr r0, _0800CEEC @ =gUnknown_08231BE8
	str r0, [r6]
	ldr r0, _0800CEF0 @ =0x050002C0
	str r0, [r6, #4]
	mov r2, sb
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	mov r3, r8
	ldrb r0, [r3, #8]
	cmp r0, #5
	bne _0800CF08
	ldr r0, _0800CEF4 @ =gUnknown_081414FC
	str r0, [r6]
	ldr r0, _0800CEF8 @ =0x06013000
	str r0, [r6, #4]
	ldr r0, _0800CEFC @ =0x80000400
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800CF00 @ =gUnknown_0814DC20
	str r0, [r6]
	ldr r0, _0800CF04 @ =0x050002A0
	str r0, [r6, #4]
	str r2, [r6, #8]
	b _0800CF40
	.align 2, 0
_0800CEEC: .4byte gUnknown_08231BE8
_0800CEF0: .4byte 0x050002C0
_0800CEF4: .4byte gUnknown_081414FC
_0800CEF8: .4byte 0x06013000
_0800CEFC: .4byte 0x80000400
_0800CF00: .4byte gUnknown_0814DC20
_0800CF04: .4byte 0x050002A0
_0800CF08:
	cmp r0, #6
	bne _0800CF42
	ldr r0, _0800CFE4 @ =gUnknown_08141CFC
	str r0, [r6]
	ldr r0, _0800CFE8 @ =0x06013000
	str r0, [r6, #4]
	ldr r0, _0800CFEC @ =0x80000200
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800CFF0 @ =gUnknown_0814DC40
	str r0, [r6]
	ldr r0, _0800CFF4 @ =0x050002A0
	str r0, [r6, #4]
	mov r1, sb
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800CFF8 @ =gUnknown_0813D97C
	str r0, [r6]
	ldr r0, _0800CFFC @ =0x06013400
	str r0, [r6, #4]
	ldr r1, _0800D000 @ =0x80000040
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800D004 @ =gUnknown_0813DAFC
	str r0, [r6]
	ldr r0, _0800D008 @ =0x06013480
	str r0, [r6, #4]
	str r1, [r6, #8]
_0800CF40:
	ldr r0, [r6, #8]
_0800CF42:
	ldr r4, _0800D00C @ =0x040000D4
	ldr r5, _0800D010 @ =gUnknown_02000D3C
	str r5, [r4]
	ldr r0, _0800D014 @ =gTextBoxCharacters
	str r0, [r4, #4]
	ldr r0, _0800D018 @ =0x8000017A
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	bl sub_8007BEC
	ldr r2, _0800D01C @ =0xFFFFF60C
	adds r0, r5, r2
	str r0, [r4]
	ldr r0, _0800D020 @ =gScriptContext
	str r0, [r4, #4]
	ldr r0, _0800D024 @ =0x80000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r3, _0800D028 @ =0xFFFFF5B8
	adds r0, r5, r3
	str r0, [r4]
	ldr r0, _0800D02C @ =gIORegisters
	str r0, [r4, #4]
	ldr r0, _0800D030 @ =0x8000002A
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r6, _0800D034 @ =0xFFFFF64C
	adds r0, r5, r6
	str r0, [r4]
	ldr r0, _0800D038 @ =gCourtRecord
	str r0, [r4, #4]
	ldr r0, _0800D03C @ =0x8000002C
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _0800D040 @ =0xFFFFF6BC
	adds r0, r5, r1
	str r0, [r4]
	ldr r0, _0800D044 @ =gInvestigation
	str r0, [r4, #4]
	ldr r0, _0800D048 @ =0x8000000E
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r2, #0xa8
	adds r0, r5, r2
	str r0, [r4]
	ldr r0, _0800D04C @ =gTestimony
	str r0, [r4, #4]
	ldr r0, _0800D050 @ =0x80000004
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r3, #0xec
	adds r0, r5, r3
	str r0, [r4]
	ldr r0, _0800D054 @ =gCourtScroll
	str r0, [r4, #4]
	ldr r0, _0800D058 @ =0x80000008
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r6, #0x8c
	adds r5, r5, r6
	str r5, [r4]
	ldr r0, _0800D05C @ =gUnknown_03003C90
	str r0, [r4, #4]
	ldr r0, _0800D060 @ =0x800000F0
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r0, r8
	bl sub_8007D5C
	mov r0, r8
	adds r0, #0xb3
	ldrb r0, [r0]
	cmp r0, #0x15
	bls _0800CFD8
	b _0800D0D6
_0800CFD8:
	lsls r0, r0, #2
	ldr r1, _0800D064 @ =_0800D068
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800CFE4: .4byte gUnknown_08141CFC
_0800CFE8: .4byte 0x06013000
_0800CFEC: .4byte 0x80000200
_0800CFF0: .4byte gUnknown_0814DC40
_0800CFF4: .4byte 0x050002A0
_0800CFF8: .4byte gUnknown_0813D97C
_0800CFFC: .4byte 0x06013400
_0800D000: .4byte 0x80000040
_0800D004: .4byte gUnknown_0813DAFC
_0800D008: .4byte 0x06013480
_0800D00C: .4byte 0x040000D4
_0800D010: .4byte gUnknown_02000D3C
_0800D014: .4byte gTextBoxCharacters
_0800D018: .4byte 0x8000017A
_0800D01C: .4byte 0xFFFFF60C
_0800D020: .4byte gScriptContext
_0800D024: .4byte 0x80000020
_0800D028: .4byte 0xFFFFF5B8
_0800D02C: .4byte gIORegisters
_0800D030: .4byte 0x8000002A
_0800D034: .4byte 0xFFFFF64C
_0800D038: .4byte gCourtRecord
_0800D03C: .4byte 0x8000002C
_0800D040: .4byte 0xFFFFF6BC
_0800D044: .4byte gInvestigation
_0800D048: .4byte 0x8000000E
_0800D04C: .4byte gTestimony
_0800D050: .4byte 0x80000004
_0800D054: .4byte gCourtScroll
_0800D058: .4byte 0x80000008
_0800D05C: .4byte gUnknown_03003C90
_0800D060: .4byte 0x800000F0
_0800D064: .4byte _0800D068
_0800D068: @ jump table
	.4byte _0800D0C0 @ case 0
	.4byte _0800D0C0 @ case 1
	.4byte _0800D0C6 @ case 2
	.4byte _0800D0C6 @ case 3
	.4byte _0800D0C6 @ case 4
	.4byte _0800D0C6 @ case 5
	.4byte _0800D0C6 @ case 6
	.4byte _0800D0C6 @ case 7
	.4byte _0800D0CC @ case 8
	.4byte _0800D0CC @ case 9
	.4byte _0800D0CC @ case 10
	.4byte _0800D0CC @ case 11
	.4byte _0800D0CC @ case 12
	.4byte _0800D0CC @ case 13
	.4byte _0800D0D2 @ case 14
	.4byte _0800D0D2 @ case 15
	.4byte _0800D0D2 @ case 16
	.4byte _0800D0D2 @ case 17
	.4byte _0800D0D2 @ case 18
	.4byte _0800D0D2 @ case 19
	.4byte _0800D0D2 @ case 20
	.4byte _0800D0D2 @ case 21
_0800D0C0:
	movs r0, #1
	mov sl, r0
	b _0800D0D6
_0800D0C6:
	movs r1, #2
	mov sl, r1
	b _0800D0D6
_0800D0CC:
	movs r2, #4
	mov sl, r2
	b _0800D0D6
_0800D0D2:
	movs r3, #8
	mov sl, r3
_0800D0D6:
	mov r0, r8
	adds r0, #0xb4
	ldrb r0, [r0]
	lsrs r0, r0, #4
	mov r6, sl
	ands r6, r0
	mov sl, r6
	ldr r7, _0800D200 @ =gUnknown_0200089C
	ldr r6, _0800D204 @ =gUnknown_03003AD0
	movs r0, #0x8b
	add r0, r8
	mov sb, r0
	mov r1, r8
	adds r1, #0x23
	str r1, [sp]
	mov r2, sl
	cmp r2, #0
	beq _0800D116
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #1
	add r2, r8
	movs r3, #1
	rsbs r3, r3, #0
_0800D106:
	lsls r0, r1, #2
	adds r0, r2, r0
	str r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #7
	bls _0800D106
_0800D116:
	ldr r5, _0800D208 @ =0x040000D4
	adds r4, r7, #0
	str r4, [r5]
	str r6, [r5, #4]
	ldr r0, _0800D20C @ =0x80000050
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	bl sub_8009934
	ldr r6, _0800D210 @ =gScriptContext
	adds r0, r6, #0
	adds r0, #0x34
	ldrb r2, [r0]
	movs r0, #0x7f
	ands r0, r2
	movs r1, #0x80
	ands r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_8004000
	movs r3, #0xfa
	lsls r3, r3, #4
	adds r0, r4, r3
	str r0, [r5]
	ldr r0, _0800D214 @ =gUnknown_03002080
	str r0, [r5, #4]
	ldr r1, _0800D218 @ =0x80000400
	str r1, [r5, #8]
	ldr r0, [r5, #8]
	movs r0, #0xf4
	lsls r0, r0, #3
	adds r4, r4, r0
	str r4, [r5]
	ldr r0, _0800D21C @ =gUnknown_03002FA0
	str r0, [r5, #4]
	str r1, [r5, #8]
	ldr r0, [r5, #8]
	mov r1, r8
	ldrh r0, [r1, #0x2e]
	bl sub_8002820
	mov r2, r8
	ldrh r0, [r2, #0x2e]
	bl sub_800342C
	movs r0, #4
	ldrh r3, [r6]
	ands r0, r3
	cmp r0, #0
	beq _0800D18A
	ldr r0, _0800D220 @ =gUnknown_081B54A8
	str r0, [r5]
	ldr r0, _0800D224 @ =0x06011F80
	str r0, [r5, #4]
	ldr r0, _0800D228 @ =0x80000040
	str r0, [r5, #8]
	ldr r0, [r5, #8]
_0800D18A:
	movs r0, #0x80
	lsls r0, r0, #3
	ldrh r6, [r6]
	ands r0, r6
	cmp r0, #0
	beq _0800D1A4
	ldr r0, _0800D22C @ =gUnknown_081426FC
	str r0, [r5]
	ldr r0, _0800D224 @ =0x06011F80
	str r0, [r5, #4]
	ldr r0, _0800D228 @ =0x80000040
	str r0, [r5, #8]
	ldr r0, [r5, #8]
_0800D1A4:
	adds r0, r7, #0
	adds r0, #0xa0
	str r0, [r5]
	ldr r0, _0800D230 @ =gOamObjects
	str r0, [r5, #4]
	ldr r0, _0800D234 @ =0x80000200
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r1, _0800D238 @ =gJoypad
	movs r0, #0
	strh r0, [r1, #6]
	strh r0, [r1, #4]
	strh r0, [r1, #2]
	strh r0, [r1]
	movs r0, #0x30
	movs r1, #0xf
	bl SetTimedKeysAndDelay
	mov r6, sb
	ldrb r6, [r6]
	cmp r6, #3
	bls _0800D1D6
	mov r0, r8
	bl sub_8013508
_0800D1D6:
	ldr r0, [sp]
	ldrb r1, [r0]
	movs r0, #0x14
	bl sub_8013B14
	ldr r0, _0800D23C @ =gMain
	ldr r1, _0800D240 @ =0x000002BE
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800D278
	lsrs r0, r1, #4
	cmp r0, #1
	beq _0800D25A
	cmp r0, #1
	bgt _0800D244
	cmp r0, #0
	beq _0800D24A
	b _0800D278
	.align 2, 0
_0800D200: .4byte gUnknown_0200089C
_0800D204: .4byte gUnknown_03003AD0
_0800D208: .4byte 0x040000D4
_0800D20C: .4byte 0x80000050
_0800D210: .4byte gScriptContext
_0800D214: .4byte gUnknown_03002080
_0800D218: .4byte 0x80000400
_0800D21C: .4byte gUnknown_03002FA0
_0800D220: .4byte gUnknown_081B54A8
_0800D224: .4byte 0x06011F80
_0800D228: .4byte 0x80000040
_0800D22C: .4byte gUnknown_081426FC
_0800D230: .4byte gOamObjects
_0800D234: .4byte 0x80000200
_0800D238: .4byte gJoypad
_0800D23C: .4byte gMain
_0800D240: .4byte 0x000002BE
_0800D244:
	cmp r0, #2
	beq _0800D26A
	b _0800D278
_0800D24A:
	bl sub_800E7B0
	movs r0, #0x18
	movs r1, #0x80
	movs r2, #1
	bl sub_800E7EC
	b _0800D278
_0800D25A:
	bl sub_800E8C4
	movs r0, #0
	movs r1, #0x80
	movs r2, #1
	bl sub_800E900
	b _0800D278
_0800D26A:
	bl sub_800E8C4
	movs r0, #0x20
	movs r1, #0x80
	movs r2, #1
	bl sub_800E9D4
_0800D278:
	ldr r0, _0800D290 @ =gMain
	ldr r2, _0800D294 @ =0x000002BA
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0
	beq _0800D288
	bl sub_8013834
_0800D288:
	movs r0, #1
	movs r1, #1
	b _0800D33E
	.align 2, 0
_0800D290: .4byte gMain
_0800D294: .4byte 0x000002BA
_0800D298:
	mov r0, r8
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800D2A4
	b _0800D42C
_0800D2A4:
	mov r0, r8
	bl sub_8007D30
	ldr r2, _0800D2D4 @ =gMain
	ldr r0, _0800D2D8 @ =gSaveDataBuffer
	adds r0, #0xe4
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0xb0
	strh r1, [r0]
	subs r0, #0x16
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	ldr r0, _0800D2DC @ =gUnknown_0801C3D8
	mov r1, r8
	adds r1, #0xb3
	ldrb r1, [r1]
	adds r0, r1, r0
	ldrb r0, [r0]
	mov r3, r8
	str r0, [r3, #8]
	b _0800D42C
	.align 2, 0
_0800D2D4: .4byte gMain
_0800D2D8: .4byte gSaveDataBuffer
_0800D2DC: .4byte gUnknown_0801C3D8
_0800D2E0:
	mov r0, r8
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800D2EC
	b _0800D42C
_0800D2EC:
	movs r0, #1
	mov r6, r8
	str r0, [r6, #8]
	b _0800D42C
_0800D2F4:
	mov r1, r8
	ldrb r0, [r1, #0xa]
	adds r0, #1
	strb r0, [r1, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x2f
	bls _0800D34C
	ldrb r0, [r1, #0x17]
	adds r1, r0, #0
	cmp r1, #0
	bne _0800D314
	movs r0, #4
	mov r2, r8
	strb r0, [r2, #9]
	b _0800D31A
_0800D314:
	movs r0, #5
	mov r3, r8
	strb r0, [r3, #9]
_0800D31A:
	movs r0, #0
	mov r6, r8
	strb r0, [r6, #0xa]
	ldr r2, _0800D348 @ =gOamObjects+0x130
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0800D32A
	adds r2, #0x10
_0800D32A:
	movs r7, #0
	movs r0, #0x80
	lsls r0, r0, #2
_0800D330:
	strh r0, [r2]
	adds r2, #8
	adds r7, #1
	cmp r7, #1
	bls _0800D330
	movs r0, #2
	movs r1, #0
_0800D33E:
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	b _0800D42C
	.align 2, 0
_0800D348: .4byte gOamObjects+0x130
_0800D34C:
	movs r0, #1
	mov r1, r8
	ldrb r1, [r1, #0x1b]
	ands r0, r1
	cmp r0, #0
	beq _0800D3CC
	ldr r2, _0800D394 @ =gOamObjects+0x130
	movs r7, #0
_0800D35C:
	movs r5, #0
	adds r3, r7, #1
	mov ip, r3
	lsls r0, r7, #5
	lsls r1, r7, #6
	ldr r6, _0800D398 @ =0x00004062
	adds r6, r6, r0
	mov sl, r6
	ldr r3, _0800D39C @ =0x00004462
	adds r3, r3, r0
	mov sb, r3
	movs r4, #0
	ldr r6, _0800D3A0 @ =0x000091A0
	adds r3, r1, r6
	ldr r0, _0800D3A4 @ =0x0000A1A0
	adds r1, r1, r0
	str r1, [sp, #4]
	ldr r1, _0800D3A8 @ =0x0000C038
_0800D380:
	strh r1, [r2, #2]
	mov r6, r8
	ldrb r0, [r6, #0x17]
	cmp r0, r7
	bne _0800D3AC
	mov r0, sl
	strh r0, [r2]
	strh r3, [r2, #4]
	b _0800D3B6
	.align 2, 0
_0800D394: .4byte gOamObjects+0x130
_0800D398: .4byte 0x00004062
_0800D39C: .4byte 0x00004462
_0800D3A0: .4byte 0x000091A0
_0800D3A4: .4byte 0x0000A1A0
_0800D3A8: .4byte 0x0000C038
_0800D3AC:
	mov r6, sb
	strh r6, [r2]
	ldr r6, [sp, #4]
	adds r0, r4, r6
	strh r0, [r2, #4]
_0800D3B6:
	adds r2, #8
	adds r4, #0x20
	adds r3, #0x20
	adds r1, #0x40
	adds r5, #1
	cmp r5, #1
	bls _0800D380
	mov r7, ip
	cmp r7, #1
	bls _0800D35C
	b _0800D3E8
_0800D3CC:
	ldr r2, _0800D43C @ =gOamObjects+0x130
	movs r5, #0
	ldr r3, _0800D440 @ =0x00004062
	ldr r1, _0800D444 @ =0x0000C038
	ldr r0, _0800D448 @ =0x000091E0
_0800D3D6:
	strh r3, [r2]
	strh r1, [r2, #2]
	strh r0, [r2, #4]
	adds r2, #8
	adds r1, #0x40
	adds r0, #0x20
	adds r5, #1
	cmp r5, #1
	bls _0800D3D6
_0800D3E8:
	mov r0, r8
	ldrb r0, [r0, #9]
	cmp r0, #7
	bne _0800D42C
	mov r3, r8
	adds r3, #0x83
	ldrb r1, [r3]
	cmp r1, #0xf
	bhi _0800D42C
	mov r2, r8
	adds r2, #0x80
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	mov r1, r8
	adds r1, #0x82
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	blo _0800D41C
	movs r0, #0
	strh r0, [r2]
	ldrb r0, [r3]
	adds r0, #1
_0800D41A:
	strb r0, [r3]
_0800D41C:
	ldr r2, _0800D44C @ =gIORegisters
	ldrb r3, [r3]
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	adds r2, #0x4c
	strh r1, [r2]
_0800D42C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D43C: .4byte gOamObjects+0x130
_0800D440: .4byte 0x00004062
_0800D444: .4byte 0x0000C038
_0800D448: .4byte 0x000091E0
_0800D44C: .4byte gIORegisters

	thumb_func_start sub_800D450
sub_800D450: @ 0x0800D450
	push {r4, lr}
	ldr r2, _0800D46C @ =gMain
	movs r3, #1
	adds r0, r2, #0
	adds r0, #0xb3
	ldrb r0, [r0]
	cmp r0, #0x15
	bhi _0800D50C
	lsls r0, r0, #2
	ldr r1, _0800D470 @ =_0800D474
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800D46C: .4byte gMain
_0800D470: .4byte _0800D474
_0800D474: @ jump table
	.4byte _0800D4CC @ case 0
	.4byte _0800D4CC @ case 1
	.4byte _0800D4DC @ case 2
	.4byte _0800D4DC @ case 3
	.4byte _0800D4DC @ case 4
	.4byte _0800D4DC @ case 5
	.4byte _0800D4DC @ case 6
	.4byte _0800D4DC @ case 7
	.4byte _0800D4EC @ case 8
	.4byte _0800D4EC @ case 9
	.4byte _0800D4EC @ case 10
	.4byte _0800D4EC @ case 11
	.4byte _0800D4EC @ case 12
	.4byte _0800D4EC @ case 13
	.4byte _0800D4FC @ case 14
	.4byte _0800D4FC @ case 15
	.4byte _0800D4FC @ case 16
	.4byte _0800D4FC @ case 17
	.4byte _0800D4FC @ case 18
	.4byte _0800D4FC @ case 19
	.4byte _0800D4FC @ case 20
	.4byte _0800D4FC @ case 21
_0800D4CC:
	adds r0, r2, #0
	adds r0, #0xb4
	movs r1, #1
	ldrb r3, [r0]
	orrs r1, r3
	strb r1, [r0]
	movs r3, #1
	b _0800D518
_0800D4DC:
	adds r0, r2, #0
	adds r0, #0xb4
	movs r1, #2
	ldrb r4, [r0]
	orrs r1, r4
	strb r1, [r0]
	movs r3, #2
	b _0800D518
_0800D4EC:
	adds r0, r2, #0
	adds r0, #0xb4
	movs r1, #4
	ldrb r3, [r0]
	orrs r1, r3
	strb r1, [r0]
	movs r3, #4
	b _0800D518
_0800D4FC:
	adds r0, r2, #0
	adds r0, #0xb4
	movs r1, #8
	ldrb r4, [r0]
	orrs r1, r4
	strb r1, [r0]
	movs r3, #8
	b _0800D518
_0800D50C:
	adds r0, r2, #0
	adds r0, #0xb4
	movs r1, #1
	ldrb r4, [r0]
	orrs r1, r4
	strb r1, [r0]
_0800D518:
	ldrb r0, [r0]
	lsrs r0, r0, #4
	ands r3, r0
	cmp r3, #0
	beq _0800D53E
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r3, #1
	rsbs r3, r3, #0
_0800D52E:
	lsls r0, r1, #2
	adds r0, r2, r0
	str r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #7
	bls _0800D52E
_0800D53E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_800D544
sub_800D544: @ 0x0800D544
	push {lr}
	ldr r2, _0800D558 @ =gUnknown_08112318
	ldrb r3, [r0, #9]
	lsls r1, r3, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0800D558: .4byte gUnknown_08112318

	thumb_func_start sub_800D55C
sub_800D55C: @ 0x0800D55C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _0800D6BC @ =gIORegisters
	mov r8, r0
	mov r0, sp
	movs r5, #0
	strh r5, [r0]
	ldr r4, _0800D6C0 @ =0x040000D4
	str r0, [r4]
	ldr r0, _0800D6C4 @ =gTestimony
	str r0, [r4, #4]
	ldr r0, _0800D6C8 @ =0x81000004
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r0, sp
	strh r5, [r0]
	str r0, [r4]
	ldr r0, _0800D6CC @ =gInvestigation
	str r0, [r4, #4]
	ldr r0, _0800D6D0 @ =0x8100000E
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	bl HideAllSprites
	bl InitBGs
	bl ResetAnimationSystem
	bl LoadCurrentScriptIntoRam
	mov r7, r8
	adds r7, #0x4a
	movs r5, #0
	movs r0, #0xfa
	lsls r0, r0, #5
	strh r0, [r7]
	movs r0, #0xf0
	lsls r0, r0, #6
	mov r1, r8
	strh r0, [r1]
	ldr r0, _0800D6D4 @ =0x00003D01
	strh r0, [r1, #2]
	adds r0, #0xff
	strh r0, [r1, #4]
	ldr r0, _0800D6D8 @ =0x00003FC7
	strh r0, [r1, #6]
	ldr r0, _0800D6DC @ =gUnknown_081370FC
	str r0, [r4]
	ldr r0, _0800D6E0 @ =0x06003800
	str r0, [r4, #4]
	ldr r0, _0800D6E4 @ =0x80000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800D6E8 @ =gUnknown_0813791C
	str r0, [r4]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r0, _0800D6EC @ =0x80000800
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800D6F0 @ =gUnknown_0814DC60
	str r0, [r4]
	ldr r0, _0800D6F4 @ =0x05000300
	str r0, [r4, #4]
	ldr r1, _0800D6F8 @ =0x80000010
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800D6FC @ =gUnknown_081378FC
	str r0, [r4]
	ldr r0, _0800D700 @ =0x05000240
	str r0, [r4, #4]
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #1
	bl sub_8002820
	movs r0, #1
	bl CopyBGDataToVram
	movs r0, #0x80
	bl CopyBGDataToVram
	ldr r0, _0800D704 @ =0x0000FFAF
	mov r2, r8
	strh r0, [r2, #0xe]
	ldr r0, _0800D708 @ =0x0000FDFF
	ldrh r3, [r7]
	ands r0, r3
	strh r0, [r7]
	ldr r1, _0800D70C @ =gCourtRecord
	adds r0, r6, #0
	bl sub_8011688
	bl sub_80178E0
	str r5, [sp, #4]
	add r1, sp, #4
	str r1, [r4]
	adds r0, r6, #0
	adds r0, #0xbc
	str r0, [r4, #4]
	ldr r2, _0800D710 @ =0x85000008
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	adds r0, r6, #0
	adds r0, #0xdc
	str r5, [r0]
	str r5, [sp, #4]
	str r1, [r4]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r6, r3
	str r0, [r4, #4]
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	str r5, [sp, #4]
	str r1, [r4]
	movs r2, #0x97
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r4, #4]
	ldr r0, _0800D714 @ =0x85000006
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	str r5, [sp, #4]
	str r1, [r4]
	ldr r3, _0800D718 @ =0x00000276
	adds r0, r6, r3
	str r0, [r4, #4]
	ldr r0, _0800D71C @ =0x85000004
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _0800D720 @ =0x00000286
	adds r0, r6, r1
	strh r5, [r0]
	movs r0, #0xf
	strb r0, [r6, #0x1a]
	movs r0, #1
	strb r0, [r6, #0x18]
	strb r0, [r6, #0x19]
	ldr r1, _0800D724 @ =gScriptContext
	ldr r0, _0800D728 @ =0x0000FFFF
	strh r0, [r1, #0x1e]
	movs r0, #0x80
	bl sub_8007538
	bl sub_800D450
	movs r0, #0x30
	movs r1, #0xf
	bl SetTimedKeysAndDelay
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r2, #0x4e
	add r8, r2
	movs r0, #0x10
	mov r3, r8
	strh r0, [r3]
	ldr r1, _0800D72C @ =gMain+0x8
	adds r0, #0xf3
	str r0, [r1]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D6BC: .4byte gIORegisters
_0800D6C0: .4byte 0x040000D4
_0800D6C4: .4byte gTestimony
_0800D6C8: .4byte 0x81000004
_0800D6CC: .4byte gInvestigation
_0800D6D0: .4byte 0x8100000E
_0800D6D4: .4byte 0x00003D01
_0800D6D8: .4byte 0x00003FC7
_0800D6DC: .4byte gUnknown_081370FC
_0800D6E0: .4byte 0x06003800
_0800D6E4: .4byte 0x80000400
_0800D6E8: .4byte gUnknown_0813791C
_0800D6EC: .4byte 0x80000800
_0800D6F0: .4byte gUnknown_0814DC60
_0800D6F4: .4byte 0x05000300
_0800D6F8: .4byte 0x80000010
_0800D6FC: .4byte gUnknown_081378FC
_0800D700: .4byte 0x05000240
_0800D704: .4byte 0x0000FFAF
_0800D708: .4byte 0x0000FDFF
_0800D70C: .4byte gCourtRecord
_0800D710: .4byte 0x85000008
_0800D714: .4byte 0x85000006
_0800D718: .4byte 0x00000276
_0800D71C: .4byte 0x85000004
_0800D720: .4byte 0x00000286
_0800D724: .4byte gScriptContext
_0800D728: .4byte 0x0000FFFF
_0800D72C: .4byte gMain+0x8

	thumb_func_start sub_800D730
sub_800D730: @ 0x0800D730
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800D82A
	ldr r1, _0800D7C0 @ =gJoypad
	movs r0, #8
	ldrh r2, [r1, #2]
	ands r0, r2
	adds r2, r1, #0
	cmp r0, #0
	beq _0800D7F0
	adds r5, r4, #0
	adds r5, #0xdc
	ldr r0, [r5]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800D7F0
	ldr r7, _0800D7C4 @ =gScriptContext
	movs r0, #5
	ldrh r3, [r7]
	ands r0, r3
	cmp r0, #0
	beq _0800D7F0
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800D7F0
	bl sub_80139EC
	ldr r1, _0800D7C8 @ =0x040000D4
	ldr r0, _0800D7CC @ =gOamObjects
	str r0, [r1]
	ldr r2, _0800D7D0 @ =gUnknown_0200093C
	str r2, [r1, #4]
	ldr r0, _0800D7D4 @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r6, _0800D7D8 @ =gMain
	str r6, [r1]
	ldr r3, _0800D7DC @ =0xFFFFF6F8
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _0800D7E0 @ =0x80000160
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r7, #0x38]
	ldr r1, _0800D7E4 @ =0xFF0000FF
	ands r0, r1
	ldr r1, _0800D7E8 @ =0x01000002
	cmp r0, r1
	bne _0800D7A6
	ldr r0, _0800D7EC @ =0xFFFFF711
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
_0800D7A6:
	movs r0, #0x31
	bl sub_8013834
	ldr r0, [r5]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5]
	ldr r0, [r6, #8]
	str r0, [r4, #0xc]
	movs r0, #0xa
	b _0800D828
	.align 2, 0
_0800D7C0: .4byte gJoypad
_0800D7C4: .4byte gScriptContext
_0800D7C8: .4byte 0x040000D4
_0800D7CC: .4byte gOamObjects
_0800D7D0: .4byte gUnknown_0200093C
_0800D7D4: .4byte 0x80000200
_0800D7D8: .4byte gMain
_0800D7DC: .4byte 0xFFFFF6F8
_0800D7E0: .4byte 0x80000160
_0800D7E4: .4byte 0xFF0000FF
_0800D7E8: .4byte 0x01000002
_0800D7EC: .4byte 0xFFFFF711
_0800D7F0:
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r2, [r2, #2]
	ands r0, r2
	cmp r0, #0
	beq _0800D82A
	adds r0, r4, #0
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800D82A
	ldr r1, _0800D830 @ =gScriptContext
	movs r0, #5
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800D82A
	bl sub_8017864
	movs r0, #0x31
	bl sub_8013834
	ldr r0, _0800D834 @ =gMain+0x8
	ldr r0, [r0]
	str r0, [r4, #0xc]
	movs r0, #7
_0800D828:
	str r0, [r4, #8]
_0800D82A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D830: .4byte gScriptContext
_0800D834: .4byte gMain+0x8

	thumb_func_start sub_800D838
sub_800D838: @ 0x0800D838
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8007D30
	ldr r1, _0800D86C @ =0x040000D4
	ldr r0, _0800D870 @ =gMain
	str r0, [r1]
	ldr r0, _0800D874 @ =gUnknown_02000034
	str r0, [r1, #4]
	ldr r0, _0800D878 @ =0x80000160
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800D87C @ =0x0100000A
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb3
	ldrb r1, [r0]
	cmp r1, #2
	bne _0800D884
	adds r0, #1
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _0800D8B6
	ldr r0, _0800D880 @ =0x0100000B
	b _0800D8B4
	.align 2, 0
_0800D86C: .4byte 0x040000D4
_0800D870: .4byte gMain
_0800D874: .4byte gUnknown_02000034
_0800D878: .4byte 0x80000160
_0800D87C: .4byte 0x0100000A
_0800D880: .4byte 0x0100000B
_0800D884:
	cmp r1, #8
	bne _0800D8A0
	adds r1, r4, #0
	adds r1, #0xb4
	movs r0, #4
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800D8B6
	ldr r0, _0800D89C @ =gUnknown_0200000B
	b _0800D8B4
	.align 2, 0
_0800D89C: .4byte gUnknown_0200000B
_0800D8A0:
	cmp r1, #0xe
	bne _0800D8B6
	adds r1, r4, #0
	adds r1, #0xb4
	movs r0, #8
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800D8B6
	ldr r0, _0800D8BC @ =gUnknown_0300000B
_0800D8B4:
	str r0, [r4, #8]
_0800D8B6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D8BC: .4byte gUnknown_0300000B

	thumb_func_start sub_800D8C0
sub_800D8C0: @ 0x0800D8C0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	bls _0800D8CC
	b _0800DA00
_0800D8CC:
	lsls r0, r0, #2
	ldr r1, _0800D8D8 @ =_0800D8DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800D8D8: .4byte _0800D8DC
_0800D8DC: @ jump table
	.4byte _0800D8F0 @ case 0
	.4byte _0800D910 @ case 1
	.4byte _0800D964 @ case 2
	.4byte _0800D970 @ case 3
	.4byte _0800D9A0 @ case 4
_0800D8F0:
	movs r0, #0x24
	bl sub_801480C
	movs r0, #0x25
	bl sub_801480C
	movs r0, #0x53
	bl sub_8013834
	ldr r0, _0800D90C @ =gTestimony
	movs r1, #0
	strb r1, [r0, #4]
	b _0800D998
	.align 2, 0
_0800D90C: .4byte gTestimony
_0800D910:
	movs r0, #0x24
	bl sub_8013EB0
	adds r4, r0, #0
	movs r0, #0x25
	bl sub_8013EB0
	adds r5, r0, #0
	ldrh r0, [r4, #0x10]
	adds r0, #0xa
	strh r0, [r4, #0x10]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4]
	ldrh r0, [r5, #0x10]
	subs r0, #0xa
	strh r0, [r5, #0x10]
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	cmp r0, #0x77
	ble _0800DA00
	movs r0, #3
	movs r1, #1
	movs r2, #8
	movs r3, #0x1f
	bl StartHardwareBlend
	adds r0, r4, #0
	bl sub_8014F94
	adds r0, r5, #0
	bl sub_8014F94
	movs r0, #0x22
	bl sub_801480C
	b _0800D998
_0800D964:
	adds r0, r6, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800DA00
	b _0800D998
_0800D970:
	movs r0, #0x22
	bl sub_8013EB0
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	blt _0800DA00
	adds r0, r1, #0
	bl sub_8014F94
	movs r0, #0x24
	movs r1, #0x78
	movs r2, #0x3c
	bl sub_801484C
	movs r0, #0x25
	movs r1, #0x78
	movs r2, #0x3c
	bl sub_801484C
_0800D998:
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	b _0800DA00
_0800D9A0:
	movs r0, #0x24
	bl sub_8013EB0
	adds r4, r0, #0
	movs r0, #0x25
	bl sub_8013EB0
	adds r5, r0, #0
	ldr r2, _0800DA08 @ =gTestimony
	ldrh r3, [r4, #0x10]
	ldrb r7, [r2, #4]
	adds r0, r3, r7
	strh r0, [r4, #0x10]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4]
	ldrh r3, [r5, #0x10]
	ldrb r7, [r2, #4]
	subs r0, r3, r7
	strh r0, [r5, #0x10]
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
	ldrb r0, [r2, #4]
	adds r0, #1
	strb r0, [r2, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc
	bls _0800D9E4
	movs r0, #0xc
	strb r0, [r2, #4]
_0800D9E4:
	movs r0, #0x10
	ldrsh r1, [r4, r0]
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	ble _0800DA00
	adds r0, r4, #0
	bl sub_8014F94
	adds r0, r5, #0
	bl sub_8014F94
	movs r0, #1
	strb r0, [r6, #9]
_0800DA00:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DA08: .4byte gTestimony

	thumb_func_start sub_800DA0C
sub_800DA0C: @ 0x0800DA0C
	push {lr}
	ldr r2, _0800DA20 @ =gUnknown_08112324
	ldrb r3, [r0, #9]
	lsls r1, r3, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0800DA20: .4byte gUnknown_08112324

	thumb_func_start sub_800DA24
sub_800DA24: @ 0x0800DA24
	ldr r2, _0800DA50 @ =0x040000D4
	ldr r1, _0800DA54 @ =gUnknown_081414FC
	str r1, [r2]
	ldr r1, _0800DA58 @ =0x06013000
	str r1, [r2, #4]
	ldr r1, _0800DA5C @ =0x80000400
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _0800DA60 @ =gUnknown_0814DC20
	str r1, [r2]
	ldr r1, _0800DA64 @ =0x050002A0
	str r1, [r2, #4]
	ldr r1, _0800DA68 @ =0x80000010
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r2, _0800DA6C @ =gTestimony
	movs r1, #0
	strb r1, [r2, #1]
	movs r1, #3
	strb r1, [r0, #9]
	bx lr
	.align 2, 0
_0800DA50: .4byte 0x040000D4
_0800DA54: .4byte gUnknown_081414FC
_0800DA58: .4byte 0x06013000
_0800DA5C: .4byte 0x80000400
_0800DA60: .4byte gUnknown_0814DC20
_0800DA64: .4byte 0x050002A0
_0800DA68: .4byte 0x80000010
_0800DA6C: .4byte gTestimony

	thumb_func_start sub_800DA70
sub_800DA70: @ 0x0800DA70
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800DA7E
	b _0800DBAA
_0800DA7E:
	ldr r1, _0800DAF8 @ =gJoypad
	movs r0, #8
	ldrh r2, [r1, #2]
	ands r0, r2
	adds r2, r1, #0
	cmp r0, #0
	beq _0800DB28
	adds r5, r4, #0
	adds r5, #0xdc
	ldr r0, [r5]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800DB28
	ldr r7, _0800DAFC @ =gScriptContext
	movs r0, #5
	ldrh r3, [r7]
	ands r0, r3
	cmp r0, #0
	beq _0800DB28
	bl sub_80139EC
	ldr r1, _0800DB00 @ =0x040000D4
	ldr r0, _0800DB04 @ =gOamObjects
	str r0, [r1]
	ldr r2, _0800DB08 @ =gUnknown_0200093C
	str r2, [r1, #4]
	ldr r0, _0800DB0C @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r6, _0800DB10 @ =gMain
	str r6, [r1]
	ldr r3, _0800DB14 @ =0xFFFFF6F8
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _0800DB18 @ =0x80000160
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r7, #0x38]
	ldr r1, _0800DB1C @ =0xFF0000FF
	ands r0, r1
	ldr r1, _0800DB20 @ =0x01000002
	cmp r0, r1
	bne _0800DADE
	ldr r0, _0800DB24 @ =0xFFFFF711
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
_0800DADE:
	movs r0, #0x31
	bl sub_8013834
	ldr r0, [r5]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5]
	ldr r0, [r6, #8]
	str r0, [r4, #0xc]
	movs r0, #0xa
	b _0800DB60
	.align 2, 0
_0800DAF8: .4byte gJoypad
_0800DAFC: .4byte gScriptContext
_0800DB00: .4byte 0x040000D4
_0800DB04: .4byte gOamObjects
_0800DB08: .4byte gUnknown_0200093C
_0800DB0C: .4byte 0x80000200
_0800DB10: .4byte gMain
_0800DB14: .4byte 0xFFFFF6F8
_0800DB18: .4byte 0x80000160
_0800DB1C: .4byte 0xFF0000FF
_0800DB20: .4byte 0x01000002
_0800DB24: .4byte 0xFFFFF711
_0800DB28:
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r2, [r2, #2]
	ands r0, r2
	cmp r0, #0
	beq _0800DB62
	adds r0, r4, #0
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800DB62
	ldr r1, _0800DB94 @ =gScriptContext
	movs r0, #5
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800DB62
	bl sub_8017864
	movs r0, #0x31
	bl sub_8013834
	ldr r0, _0800DB98 @ =gMain+0x8
	ldr r0, [r0]
	str r0, [r4, #0xc]
	movs r0, #7
_0800DB60:
	str r0, [r4, #8]
_0800DB62:
	ldr r1, _0800DB9C @ =gTestimony
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x64
	bls _0800DB76
	movs r0, #0
	strb r0, [r1, #1]
_0800DB76:
	ldr r2, _0800DBA0 @ =gOamObjects+0x1C8
	ldrb r1, [r1, #1]
	cmp r1, #0x50
	bhi _0800DBA4
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r2]
	movs r0, #0xc0
	lsls r0, r0, #8
	strh r0, [r2, #2]
	movs r0, #0xb3
	lsls r0, r0, #7
	strh r0, [r2, #4]
	b _0800DBAA
	.align 2, 0
_0800DB94: .4byte gScriptContext
_0800DB98: .4byte gMain+0x8
_0800DB9C: .4byte gTestimony
_0800DBA0: .4byte gOamObjects+0x1C8
_0800DBA4:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
_0800DBAA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_800DBB0
sub_800DBB0: @ 0x0800DBB0
	ldr r2, _0800DBC0 @ =gOamObjects+0x1C8
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r2]
	subs r1, #0xfd
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_0800DBC0: .4byte gOamObjects+0x1C8

	thumb_func_start sub_800DBC4
sub_800DBC4: @ 0x0800DBC4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	bls _0800DBD0
	b _0800DCEE
_0800DBD0:
	lsls r0, r0, #2
	ldr r1, _0800DBDC @ =_0800DBE0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800DBDC: .4byte _0800DBE0
_0800DBE0: @ jump table
	.4byte _0800DBF4 @ case 0
	.4byte _0800DC0C @ case 1
	.4byte _0800DC64 @ case 2
	.4byte _0800DC74 @ case 3
	.4byte _0800DCA2 @ case 4
_0800DBF4:
	movs r0, #0x26
	bl sub_801480C
	movs r0, #0x27
	bl sub_801480C
	movs r0, #0x53
	bl sub_8013834
	ldrb r0, [r6, #0xa]
	adds r0, #1
	b _0800DCEC
_0800DC0C:
	movs r0, #0x26
	bl sub_8013EB0
	adds r4, r0, #0
	movs r0, #0x27
	bl sub_8013EB0
	adds r5, r0, #0
	ldrh r0, [r4, #0x10]
	adds r0, #0xa
	strh r0, [r4, #0x10]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4]
	ldrh r0, [r5, #0x10]
	subs r0, #0xa
	strh r0, [r5, #0x10]
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	cmp r0, #0x77
	ble _0800DCEE
	movs r0, #3
	movs r1, #1
	movs r2, #8
	movs r3, #0x1f
	bl StartHardwareBlend
	adds r0, r4, #0
	bl sub_8014F94
	adds r0, r5, #0
	bl sub_8014F94
	movs r0, #0x23
	bl sub_801480C
	ldrb r0, [r6, #0xa]
	adds r0, #1
	b _0800DCEC
_0800DC64:
	adds r0, r6, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800DCEE
	ldrb r0, [r6, #0xa]
	adds r0, #1
	b _0800DCEC
_0800DC74:
	movs r0, #0x23
	bl sub_8013EB0
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	blt _0800DCEE
	adds r0, r1, #0
	bl sub_8014F94
	movs r0, #0x26
	movs r1, #0x78
	movs r2, #0x3c
	bl sub_801484C
	movs r0, #0x27
	movs r1, #0x78
	movs r2, #0x3c
	bl sub_801484C
	ldrb r0, [r6, #0xa]
	adds r0, #1
	b _0800DCEC
_0800DCA2:
	movs r0, #0x26
	bl sub_8013EB0
	adds r4, r0, #0
	movs r0, #0x27
	bl sub_8013EB0
	adds r5, r0, #0
	ldrh r0, [r4, #0x12]
	subs r0, #7
	strh r0, [r4, #0x12]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4]
	ldrh r0, [r5, #0x12]
	adds r0, #7
	strh r0, [r5, #0x12]
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
	movs r0, #0x12
	ldrsh r1, [r4, r0]
	movs r0, #0x3c
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0800DCEE
	adds r0, r4, #0
	bl sub_8014F94
	adds r0, r5, #0
	bl sub_8014F94
	movs r0, #1
	strb r0, [r6, #9]
	movs r0, #0
_0800DCEC:
	strb r0, [r6, #0xa]
_0800DCEE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_800DCF4
sub_800DCF4: @ 0x0800DCF4
	push {lr}
	ldr r2, _0800DD08 @ =gUnknown_08112334
	ldrb r3, [r0, #9]
	lsls r1, r3, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0800DD08: .4byte gUnknown_08112334

	thumb_func_start sub_800DD0C
sub_800DD0C: @ 0x0800DD0C
	push {lr}
	ldr r1, _0800DD74 @ =0x040000D4
	ldr r2, _0800DD78 @ =gUnknown_08141CFC
	str r2, [r1]
	ldr r2, _0800DD7C @ =0x06013000
	str r2, [r1, #4]
	ldr r2, _0800DD80 @ =0x80000200
	str r2, [r1, #8]
	ldr r2, [r1, #8]
	ldr r2, _0800DD84 @ =gUnknown_0814DC40
	str r2, [r1]
	ldr r2, _0800DD88 @ =0x050002A0
	str r2, [r1, #4]
	ldr r2, _0800DD8C @ =0x80000010
	str r2, [r1, #8]
	ldr r2, [r1, #8]
	ldr r2, _0800DD90 @ =gUnknown_0813D97C
	str r2, [r1]
	movs r2, #0xd0
	lsls r2, r2, #1
	str r2, [r1, #4]
	ldr r3, _0800DD94 @ =0x80000040
	str r3, [r1, #8]
	ldr r2, [r1, #8]
	ldr r2, _0800DD98 @ =gUnknown_0813DAFC
	str r2, [r1]
	movs r2, #0x88
	lsls r2, r2, #2
	str r2, [r1, #4]
	str r3, [r1, #8]
	ldr r1, [r1, #8]
	ldr r1, _0800DD9C @ =gScriptContext
	ldrh r1, [r1, #0x1e]
	movs r3, #0
	strh r1, [r0, #0x1c]
	ldr r1, _0800DDA0 @ =gCourtRecord
	strb r3, [r1, #9]
	ldrb r2, [r1, #8]
	adds r2, #1
	strb r2, [r1, #8]
	ldr r1, _0800DDA4 @ =gTestimony
	movs r2, #0xe0
	strb r2, [r1, #2]
	strb r2, [r1, #3]
	strb r3, [r1]
	movs r1, #3
	strb r1, [r0, #9]
	bl sub_80178E0
	pop {r0}
	bx r0
	.align 2, 0
_0800DD74: .4byte 0x040000D4
_0800DD78: .4byte gUnknown_08141CFC
_0800DD7C: .4byte 0x06013000
_0800DD80: .4byte 0x80000200
_0800DD84: .4byte gUnknown_0814DC40
_0800DD88: .4byte 0x050002A0
_0800DD8C: .4byte 0x80000010
_0800DD90: .4byte gUnknown_0813D97C
_0800DD94: .4byte 0x80000040
_0800DD98: .4byte gUnknown_0813DAFC
_0800DD9C: .4byte gScriptContext
_0800DDA0: .4byte gCourtRecord
_0800DDA4: .4byte gTestimony

	thumb_func_start sub_800DDA8
sub_800DDA8: @ 0x0800DDA8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800DDB6
	b _0800E00C
_0800DDB6:
	ldr r6, _0800DDD0 @ =gScriptContext
	ldrh r2, [r6]
	movs r0, #0xc0
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0800DDD8
	ldr r1, _0800DDD4 @ =gTestimony
	adds r0, r5, #0
	movs r2, #1
	bl sub_800E6D0
	b _0800E00C
	.align 2, 0
_0800DDD0: .4byte gScriptContext
_0800DDD4: .4byte gTestimony
_0800DDD8:
	ldr r0, _0800DE50 @ =gJoypad
	ldrh r1, [r0, #2]
	movs r3, #8
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0800DE7C
	adds r4, r5, #0
	adds r4, #0xdc
	ldr r0, [r4]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800DDF6
	b _0800DF84
_0800DDF6:
	movs r0, #0xd
	ands r0, r2
	cmp r0, #0
	bne _0800DE00
	b _0800DF84
_0800DE00:
	bl sub_80139EC
	ldr r1, _0800DE54 @ =0x040000D4
	ldr r0, _0800DE58 @ =gOamObjects
	str r0, [r1]
	ldr r2, _0800DE5C @ =gUnknown_0200093C
	str r2, [r1, #4]
	ldr r0, _0800DE60 @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r7, _0800DE64 @ =gMain
	str r7, [r1]
	ldr r3, _0800DE68 @ =0xFFFFF6F8
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _0800DE6C @ =0x80000160
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r6, #0x38]
	ldr r1, _0800DE70 @ =0xFF0000FF
	ands r0, r1
	ldr r1, _0800DE74 @ =0x01000002
	cmp r0, r1
	bne _0800DE38
	ldr r0, _0800DE78 @ =0xFFFFF711
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
_0800DE38:
	movs r0, #0x31
	bl sub_8013834
	ldr r0, [r4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	ldr r0, [r7, #8]
	str r0, [r5, #0xc]
	movs r0, #0xa
	b _0800DF82
	.align 2, 0
_0800DE50: .4byte gJoypad
_0800DE54: .4byte 0x040000D4
_0800DE58: .4byte gOamObjects
_0800DE5C: .4byte gUnknown_0200093C
_0800DE60: .4byte 0x80000200
_0800DE64: .4byte gMain
_0800DE68: .4byte 0xFFFFF6F8
_0800DE6C: .4byte 0x80000160
_0800DE70: .4byte 0xFF0000FF
_0800DE74: .4byte 0x01000002
_0800DE78: .4byte 0xFFFFF711
_0800DE7C:
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _0800DF50
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800DE9C
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800DEA0
	ldrh r1, [r6, #0x20]
	ldrh r2, [r5, #0x1e]
	cmp r1, r2
	beq _0800DF84
_0800DE9C:
	ldrh r4, [r6, #0x20]
	b _0800DEB4
_0800DEA0:
	movs r0, #0x22
	ands r0, r1
	cmp r0, #0
	beq _0800DEC6
	ldrh r0, [r6, #0x1e]
	subs r0, #1
	ldrh r3, [r5, #0x1c]
	cmp r0, r3
	beq _0800DF84
	adds r4, r0, #0
_0800DEB4:
	movs r0, #0x2b
	bl sub_8013834
	adds r0, r4, #0
	bl sub_8007538
	bl RunScriptContext
	b _0800DF84
_0800DEC6:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800DF28
	ldrh r0, [r6, #0x2c]
	cmp r0, #0
	beq _0800DF84
	movs r0, #1
	bl sub_801480C
	movs r0, #0x47
	bl sub_8013834
	movs r0, #3
	movs r1, #1
	movs r2, #4
	movs r3, #0x1f
	bl StartHardwareBlend
	ldr r1, _0800DF1C @ =gTestimony
	movs r0, #0x40
	strb r0, [r1, #1]
	movs r0, #0xe0
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	ldr r1, _0800DF20 @ =gIORegisters
	adds r1, #0x4a
	ldr r0, _0800DF24 @ =0x0000FDFF
	ldrh r2, [r1]
	ands r0, r2
	movs r4, #0
	strh r0, [r1]
	strb r4, [r5, #0x18]
	strb r4, [r5, #0x19]
	movs r0, #0
	movs r1, #0
	bl sub_8004000
	movs r0, #4
	strb r0, [r5, #9]
	strb r4, [r5, #0xa]
	b _0800E00C
	.align 2, 0
_0800DF1C: .4byte gTestimony
_0800DF20: .4byte gIORegisters
_0800DF24: .4byte 0x0000FDFF
_0800DF28:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800DF84
	bl sub_8017864
	movs r0, #0x31
	bl sub_8013834
	ldr r0, _0800DF48 @ =gMain+0x8
	ldr r0, [r0]
	str r0, [r5, #0xc]
	ldr r0, _0800DF4C @ =0x01000007
	b _0800DF82
	.align 2, 0
_0800DF48: .4byte gMain+0x8
_0800DF4C: .4byte 0x01000007
_0800DF50:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800DF84
	adds r0, r5, #0
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800DF84
	movs r0, #5
	ands r0, r2
	cmp r0, #0
	beq _0800DF84
	bl sub_8017864
	movs r0, #0x31
	bl sub_8013834
	ldr r0, _0800DFB0 @ =gMain+0x8
	ldr r0, [r0]
	str r0, [r5, #0xc]
	movs r0, #7
_0800DF82:
	str r0, [r5, #8]
_0800DF84:
	ldr r1, _0800DFB4 @ =gTestimony
	adds r0, r5, #0
	movs r2, #1
	bl sub_800E6D0
	ldr r0, _0800DFB8 @ =gCourtRecord
	bl sub_8012BEC
	ldr r1, _0800DFBC @ =gOamObjects
	ldr r2, _0800DFC0 @ =gScriptContext
	movs r0, #8
	ldrh r3, [r2]
	ands r0, r3
	cmp r0, #0
	beq _0800E004
	ldrh r0, [r2, #0x1e]
	subs r0, #1
	ldrh r2, [r5, #0x1c]
	cmp r0, r2
	beq _0800DFC4
	movs r0, #0x80
	b _0800DFC8
	.align 2, 0
_0800DFB0: .4byte gMain+0x8
_0800DFB4: .4byte gTestimony
_0800DFB8: .4byte gCourtRecord
_0800DFBC: .4byte gOamObjects
_0800DFC0: .4byte gScriptContext
_0800DFC4:
	movs r0, #0x80
	lsls r0, r0, #2
_0800DFC8:
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r1, #2]
	ldr r0, _0800DFE4 @ =0x000021A0
	strh r0, [r1, #4]
	adds r1, #8
	ldr r0, _0800DFE8 @ =gScriptContext
	ldrh r0, [r0, #0x20]
	ldrh r5, [r5, #0x1e]
	cmp r0, r5
	beq _0800DFEC
	movs r0, #0x80
	b _0800DFF0
	.align 2, 0
_0800DFE4: .4byte 0x000021A0
_0800DFE8: .4byte gScriptContext
_0800DFEC:
	movs r0, #0x80
	lsls r0, r0, #2
_0800DFF0:
	strh r0, [r1]
	ldr r0, _0800DFFC @ =0x000040E0
	strh r0, [r1, #2]
	ldr r0, _0800E000 @ =0x000021A4
	strh r0, [r1, #4]
	b _0800E00C
	.align 2, 0
_0800DFFC: .4byte 0x000040E0
_0800E000: .4byte 0x000021A4
_0800E004:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	strh r0, [r1, #8]
_0800E00C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start nullsub_4
nullsub_4: @ 0x0800E014
	bx lr
	.align 2, 0

	thumb_func_start sub_800E018
sub_800E018: @ 0x0800E018
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	cmp r1, #0
	beq _0800E028
	cmp r1, #1
	beq _0800E066
	b _0800E0C0
_0800E028:
	ldr r1, _0800E058 @ =gTestimony
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne _0800E060
	movs r0, #0
	movs r1, #1
	movs r2, #3
	movs r3, #0
	bl sub_8015C44
	ldr r0, _0800E05C @ =gUnknown_08478BDC
	movs r1, #0x1e
	movs r2, #0x1f
	movs r3, #1
	bl InitCourtScroll
	movs r0, #0
	bl sub_80037FC
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _0800E0C0
	.align 2, 0
_0800E058: .4byte gTestimony
_0800E05C: .4byte gUnknown_08478BDC
_0800E060:
	subs r0, #1
	strb r0, [r1, #1]
	b _0800E0C0
_0800E066:
	ldr r0, _0800E090 @ =gCourtScroll
	ldrh r2, [r0, #4]
	cmp r2, #0
	bne _0800E0C0
	ldr r3, _0800E094 @ =gScriptContext
	adds r0, r3, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800E0A0
	ldr r0, _0800E098 @ =gMain
	strb r1, [r0, #0x18]
	strb r1, [r0, #0x19]
	ldr r0, _0800E09C @ =gIORegisters
	movs r1, #0
	strh r2, [r0, #0xe]
	adds r0, r3, #0
	adds r0, #0x38
	strb r1, [r0]
	b _0800E0A6
	.align 2, 0
_0800E090: .4byte gCourtScroll
_0800E094: .4byte gScriptContext
_0800E098: .4byte gMain
_0800E09C: .4byte gIORegisters
_0800E0A0:
	movs r0, #1
	bl sub_80037FC
_0800E0A6:
	ldr r0, _0800E0DC @ =gScriptContext
	ldrh r0, [r0, #0x2c]
	bl sub_8007538
	ldr r0, _0800E0E0 @ =gTestimony
	movs r2, #0
	movs r1, #0xe0
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r2, [r0]
	movs r0, #1
	strb r0, [r4, #9]
	strb r2, [r4, #0xa]
_0800E0C0:
	ldr r1, _0800E0E0 @ =gTestimony
	adds r0, r4, #0
	movs r2, #0
	bl sub_800E6D0
	ldr r1, _0800E0E4 @ =gOamObjects
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	strh r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E0DC: .4byte gScriptContext
_0800E0E0: .4byte gTestimony
_0800E0E4: .4byte gOamObjects

	thumb_func_start sub_800E0E8
sub_800E0E8: @ 0x0800E0E8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0800E12A
	cmp r0, #1
	bgt _0800E0FC
	cmp r0, #0
	beq _0800E106
	b _0800E1D8
_0800E0FC:
	cmp r0, #2
	beq _0800E15C
	cmp r0, #3
	beq _0800E17C
	b _0800E1D8
_0800E106:
	ldr r5, _0800E120 @ =gTestimony
	ldrb r0, [r5, #1]
	cmp r0, #0
	bne _0800E124
	movs r0, #3
	movs r1, #1
	movs r2, #4
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r0, #0x40
	strb r0, [r5, #1]
	b _0800E16A
	.align 2, 0
_0800E120: .4byte gTestimony
_0800E124:
	subs r0, #1
	strb r0, [r5, #1]
	b _0800E1D8
_0800E12A:
	ldr r1, _0800E154 @ =gTestimony
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne _0800E1D4
	movs r3, #0x97
	lsls r3, r3, #5
	movs r0, #0
	movs r1, #1
	movs r2, #3
	bl sub_8015C44
	ldr r0, _0800E158 @ =gUnknown_08478BDC
	movs r1, #0x1e
	movs r2, #0x1f
	movs r3, #1
	bl InitCourtScroll
	movs r0, #0
	bl sub_80037FC
	b _0800E16A
	.align 2, 0
_0800E154: .4byte gTestimony
_0800E158: .4byte gUnknown_08478BDC
_0800E15C:
	ldr r0, _0800E174 @ =gCourtScroll
	ldrh r0, [r0, #4]
	cmp r0, #0
	bne _0800E1D8
	ldr r0, _0800E178 @ =gTestimony
	movs r1, #0x14
	strb r1, [r0, #1]
_0800E16A:
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _0800E1D8
	.align 2, 0
_0800E174: .4byte gCourtScroll
_0800E178: .4byte gTestimony
_0800E17C:
	ldr r1, _0800E1B0 @ =gTestimony
	ldrb r0, [r1, #1]
	adds r2, r0, #0
	cmp r2, #0
	bne _0800E1D4
	movs r0, #0xe0
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	strb r2, [r1]
	ldr r3, _0800E1B4 @ =gScriptContext
	adds r0, r3, #0
	adds r0, #0x33
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800E1C0
	ldr r1, _0800E1B8 @ =gMain
	movs r0, #1
	strb r0, [r1, #0x18]
	strb r0, [r1, #0x19]
	ldr r0, _0800E1BC @ =gIORegisters
	movs r1, #0
	strh r2, [r0, #0xe]
	adds r0, r3, #0
	adds r0, #0x38
	strb r1, [r0]
	b _0800E1C6
	.align 2, 0
_0800E1B0: .4byte gTestimony
_0800E1B4: .4byte gScriptContext
_0800E1B8: .4byte gMain
_0800E1BC: .4byte gIORegisters
_0800E1C0:
	movs r0, #1
	bl sub_80037FC
_0800E1C6:
	ldr r1, _0800E1D0 @ =gMain+0x8
	ldr r0, [r4, #0xc]
	str r0, [r1]
	b _0800E1D8
	.align 2, 0
_0800E1D0: .4byte gMain+0x8
_0800E1D4:
	subs r0, #1
	strb r0, [r1, #1]
_0800E1D8:
	ldr r1, _0800E1E8 @ =gTestimony
	adds r0, r4, #0
	movs r2, #0
	bl sub_800E6D0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E1E8: .4byte gTestimony

	thumb_func_start sub_800E1EC
sub_800E1EC: @ 0x0800E1EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, _0800E210 @ =gOamObjects+0x188
	mov sl, r0
	ldrb r0, [r7, #9]
	cmp r0, #8
	bls _0800E204
	b _0800E6BE
_0800E204:
	lsls r0, r0, #2
	ldr r1, _0800E214 @ =_0800E218
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800E210: .4byte gOamObjects+0x188
_0800E214: .4byte _0800E218
_0800E218: @ jump table
	.4byte _0800E23C @ case 0
	.4byte _0800E318 @ case 1
	.4byte _0800E3B0 @ case 2
	.4byte _0800E498 @ case 3
	.4byte _0800E4B4 @ case 4
	.4byte _0800E57C @ case 5
	.4byte _0800E5B8 @ case 6
	.4byte _0800E614 @ case 7
	.4byte _0800E6B8 @ case 8
_0800E23C:
	ldr r0, _0800E2B0 @ =gMain
	adds r0, #0x92
	ldrh r1, [r0]
	subs r1, #0x10
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bgt _0800E2BC
	bl sub_8004290
	adds r4, r0, #0
	ldr r6, _0800E2B4 @ =gUnknown_0801C158
	adds r0, r6, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl sub_8004260
	ldr r5, _0800E2B8 @ =gOamObjects
	strh r0, [r5, #6]
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0xe]
	ldrh r6, [r6]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0x16]
	mov r0, r8
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0x1e]
	movs r0, #3
	movs r1, #1
	movs r2, #4
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r0, #0x56
	bl sub_8013834
	b _0800E4D4
	.align 2, 0
_0800E2B0: .4byte gMain
_0800E2B4: .4byte gUnknown_0801C158
_0800E2B8: .4byte gOamObjects
_0800E2BC:
	adds r0, r7, #0
	adds r0, #0x92
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_8004290
	adds r4, r0, #0
	ldr r6, _0800E310 @ =gUnknown_0801C158
	adds r0, r6, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl sub_8004260
	ldr r5, _0800E314 @ =gOamObjects
	strh r0, [r5, #6]
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0xe]
	ldrh r6, [r6]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0x16]
	mov r0, r8
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0x1e]
	b _0800E6BE
	.align 2, 0
_0800E310: .4byte gUnknown_0801C158
_0800E314: .4byte gOamObjects
_0800E318:
	ldrb r0, [r7, #0xa]
	adds r1, r0, #1
	strb r1, [r7, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x28
	bhi _0800E328
	b _0800E6BE
_0800E328:
	ldr r0, _0800E398 @ =gMain
	adds r0, #0x92
	movs r1, #0xa0
	lsls r1, r1, #2
	strh r1, [r0]
	movs r2, #8
	add sl, r2
	ldr r0, _0800E39C @ =0x000003EF
	mov r1, sl
	strh r0, [r1]
	ldr r0, _0800E3A0 @ =0x0000C280
	strh r0, [r1, #2]
	ldr r0, _0800E3A4 @ =0x000051E0
	strh r0, [r1, #4]
	adds r0, r7, #0
	adds r0, #0x92
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_8004290
	adds r4, r0, #0
	ldr r6, _0800E3A8 @ =gUnknown_0801C158
	adds r0, r6, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl sub_8004260
	ldr r5, _0800E3AC @ =gOamObjects
	strh r0, [r5, #0x26]
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0x2e]
	ldrh r6, [r6]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0x36]
	mov r0, r8
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0x3e]
	b _0800E6B0
	.align 2, 0
_0800E398: .4byte gMain
_0800E39C: .4byte 0x000003EF
_0800E3A0: .4byte 0x0000C280
_0800E3A4: .4byte 0x000051E0
_0800E3A8: .4byte gUnknown_0801C158
_0800E3AC: .4byte gOamObjects
_0800E3B0:
	ldr r0, _0800E430 @ =gMain
	adds r0, #0x92
	mov sl, r0
	ldrh r0, [r0]
	subs r0, #0x10
	mov r2, sl
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	mov sb, r1
	cmp r0, sb
	bgt _0800E43C
	mov r0, sb
	bl sub_8004290
	adds r4, r0, #0
	ldr r6, _0800E434 @ =gUnknown_0801C158
	adds r0, r6, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r2, [r0, r1]
	mov r8, r2
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl sub_8004260
	ldr r5, _0800E438 @ =gOamObjects
	strh r0, [r5, #0x26]
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0x2e]
	ldrh r6, [r6]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0x36]
	mov r0, r8
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0x3e]
	movs r0, #3
	movs r1, #1
	movs r2, #4
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r0, #0x56
	bl sub_8013834
	mov r1, sb
	mov r0, sl
	strh r1, [r0]
	b _0800E4D4
	.align 2, 0
_0800E430: .4byte gMain
_0800E434: .4byte gUnknown_0801C158
_0800E438: .4byte gOamObjects
_0800E43C:
	adds r0, r7, #0
	adds r0, #0x92
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_8004290
	adds r4, r0, #0
	ldr r6, _0800E490 @ =gUnknown_0801C158
	adds r0, r6, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl sub_8004260
	ldr r5, _0800E494 @ =gOamObjects
	strh r0, [r5, #0x26]
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0x2e]
	ldrh r6, [r6]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0x36]
	mov r0, r8
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0x3e]
	b _0800E6BE
	.align 2, 0
_0800E490: .4byte gUnknown_0801C158
_0800E494: .4byte gOamObjects
_0800E498:
	ldrb r0, [r7, #0xa]
	adds r1, r0, #1
	strb r1, [r7, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x40
	bhi _0800E4A8
	b _0800E6BE
_0800E4A8:
	ldrb r0, [r7, #9]
	adds r0, #1
	movs r1, #0
	strb r0, [r7, #9]
	strb r1, [r7, #0xa]
	b _0800E6BE
_0800E4B4:
	ldrb r0, [r7, #0xa]
	adds r1, r0, #1
	strb r1, [r7, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bls _0800E4E0
	movs r0, #0x80
	lsls r0, r0, #2
	mov r2, sl
	strh r0, [r2]
	strh r0, [r2, #8]
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	bne _0800E4D4
	b _0800E6B8
_0800E4D4:
	ldrb r0, [r7, #9]
	adds r0, #1
	strb r0, [r7, #9]
	movs r0, #0
	strb r0, [r7, #0xa]
	b _0800E6BE
_0800E4E0:
	adds r0, r7, #0
	adds r0, #0x92
	ldrh r1, [r0]
	adds r1, #8
	strh r1, [r0]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_8004290
	adds r4, r0, #0
	ldr r6, _0800E574 @ =gUnknown_0801C158
	adds r0, r6, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r2, [r0, r1]
	mov r8, r2
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl sub_8004260
	ldr r5, _0800E578 @ =gOamObjects
	strh r0, [r5, #6]
	movs r0, #0
	ldrsh r2, [r6, r0]
	mov sb, r2
	mov r0, sb
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0xe]
	ldrh r6, [r6]
	rsbs r6, r6, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0x16]
	mov r0, r8
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0x1e]
	mov r0, r8
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0x26]
	mov r0, sb
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0x2e]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0x36]
	mov r0, r8
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0x3e]
	mov r1, sl
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	b _0800E6BE
	.align 2, 0
_0800E574: .4byte gUnknown_0801C158
_0800E578: .4byte gOamObjects
_0800E57C:
	ldr r1, _0800E59C @ =0x040000D4
	ldr r0, _0800E5A0 @ =gUnknown_08145CDC
	str r0, [r1]
	ldr r0, _0800E5A4 @ =0x06011F80
	str r0, [r1, #4]
	ldr r0, _0800E5A8 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800E5AC @ =gUnknown_0814DFE0
	str r0, [r1]
	ldr r0, _0800E5B0 @ =0x050002A0
	str r0, [r1, #4]
	ldr r0, _0800E5B4 @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _0800E6B0
	.align 2, 0
_0800E59C: .4byte 0x040000D4
_0800E5A0: .4byte gUnknown_08145CDC
_0800E5A4: .4byte 0x06011F80
_0800E5A8: .4byte 0x80000010
_0800E5AC: .4byte gUnknown_0814DFE0
_0800E5B0: .4byte 0x050002A0
_0800E5B4: .4byte 0x80000040
_0800E5B8:
	ldr r2, _0800E60C @ =gOamObjects+0x1D0
	mov sl, r2
	movs r6, #0
_0800E5BE:
	bl Random
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r4, r6, #5
	adds r5, r5, r4
	movs r0, #0x7f
	ands r5, r0
	mov r0, sl
	strh r5, [r0]
	bl Random
	movs r5, #0x1f
	ands r5, r0
	adds r5, r5, r4
	movs r0, #0xff
	ands r5, r0
	mov r1, sl
	strh r5, [r1, #2]
	bl Random
	movs r1, #3
	ands r1, r0
	adds r5, r1, #5
	lsls r5, r5, #0xc
	ldr r2, _0800E610 @ =0x000004FC
	adds r0, r2, #0
	adds r0, r5, r0
	mov r1, sl
	strh r0, [r1, #4]
	movs r2, #8
	add sl, r2
	adds r6, #1
	cmp r6, #0x1e
	bls _0800E5BE
	movs r0, #0x66
	bl sub_8013834
	b _0800E6B0
	.align 2, 0
_0800E60C: .4byte gOamObjects+0x1D0
_0800E610: .4byte 0x000004FC
_0800E614:
	ldr r0, _0800E66C @ =gOamObjects+0x1D0
	mov sl, r0
	ldrb r0, [r7, #0xa]
	adds r1, r0, #1
	strb r1, [r7, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xef
	bhi _0800E69C
	movs r6, #0
	movs r4, #3
_0800E62A:
	mov r1, sl
	ldrh r5, [r1]
	bl Random
	adds r1, r4, #0
	ands r1, r0
	adds r5, r5, r1
	cmp r5, #0xa3
	bls _0800E63E
	movs r5, #0
_0800E63E:
	movs r2, #0xff
	lsls r2, r2, #8
	adds r0, r2, #0
	mov r1, sl
	ldrh r1, [r1]
	ands r0, r1
	adds r0, r0, r5
	mov r2, sl
	strh r0, [r2]
	ldrh r5, [r2, #2]
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0800E670
	bl Random
	adds r1, r4, #0
	ands r1, r0
	adds r5, r5, r1
	b _0800E67A
	.align 2, 0
_0800E66C: .4byte gOamObjects+0x1D0
_0800E670:
	bl Random
	adds r1, r4, #0
	ands r1, r0
	subs r5, r5, r1
_0800E67A:
	movs r0, #0xff
	ands r5, r0
	movs r1, #0xfe
	lsls r1, r1, #8
	adds r0, r1, #0
	mov r2, sl
	ldrh r2, [r2, #2]
	ands r0, r2
	adds r0, r0, r5
	mov r1, sl
	strh r0, [r1, #2]
	movs r2, #8
	add sl, r2
	adds r6, #1
	cmp r6, #0x1e
	bls _0800E62A
	b _0800E6BE
_0800E69C:
	movs r6, #0
	movs r0, #0x80
	lsls r0, r0, #2
_0800E6A2:
	mov r1, sl
	strh r0, [r1]
	movs r2, #8
	add sl, r2
	adds r6, #1
	cmp r6, #0x1e
	bls _0800E6A2
_0800E6B0:
	ldrb r0, [r7, #9]
	adds r0, #1
	strb r0, [r7, #9]
	b _0800E6BE
_0800E6B8:
	ldr r1, _0800E6CC @ =gMain+0x8
	ldr r0, [r7, #0xc]
	str r0, [r1]
_0800E6BE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E6CC: .4byte gMain+0x8

	thumb_func_start sub_800E6D0
sub_800E6D0: @ 0x0800E6D0
	push {r4, lr}
	adds r3, r1, #0
	ldr r0, _0800E6E8 @ =gScriptContext
	ldrh r1, [r0, #0x2c]
	adds r4, r0, #0
	cmp r1, #0
	beq _0800E6E2
	cmp r2, #0
	bne _0800E6F0
_0800E6E2:
	ldr r2, _0800E6EC @ =gOamObjects+0x1A8
	b _0800E732
	.align 2, 0
_0800E6E8: .4byte gScriptContext
_0800E6EC: .4byte gOamObjects+0x1A8
_0800E6F0:
	ldrb r0, [r3]
	cmp r0, #1
	bne _0800E712
	ldrb r0, [r3, #2]
	cmp r0, #0xe0
	bls _0800E700
	subs r0, #2
	b _0800E702
_0800E700:
	movs r0, #0xe0
_0800E702:
	strb r0, [r3, #2]
	ldrb r0, [r3, #3]
	cmp r0, #0xe0
	bls _0800E70E
	subs r0, #2
	b _0800E728
_0800E70E:
	movs r0, #0xe0
	b _0800E728
_0800E712:
	cmp r0, #0
	bne _0800E72A
	ldrb r0, [r3, #2]
	cmp r0, #0
	beq _0800E720
	adds r0, #2
	strb r0, [r3, #2]
_0800E720:
	ldrb r0, [r3, #3]
	cmp r0, #0
	beq _0800E72A
	adds r0, #2
_0800E728:
	strb r0, [r3, #3]
_0800E72A:
	ldr r2, _0800E744 @ =gOamObjects+0x1A8
	ldrh r4, [r4, #0x2c]
	cmp r4, #0x7f
	bhi _0800E748
_0800E732:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
	adds r2, #8
	strh r0, [r2]
	adds r2, #8
	strh r0, [r2]
	strh r0, [r2, #8]
	b _0800E790
	.align 2, 0
_0800E744: .4byte gOamObjects+0x1A8
_0800E748:
	movs r0, #0x80
	lsls r0, r0, #7
	adds r1, r0, #0
	ldrb r0, [r3, #2]
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r2, #2]
	movs r0, #0xab
	lsls r0, r0, #7
	strh r0, [r2, #4]
	adds r2, #8
	ldrb r0, [r3, #2]
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0800E798 @ =0x00008020
	strh r0, [r2, #2]
	ldr r0, _0800E79C @ =0x00005588
	strh r0, [r2, #4]
	adds r2, #8
	ldrb r0, [r3, #3]
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0800E7A0 @ =0x000080B0
	strh r0, [r2, #2]
	ldr r0, _0800E7A4 @ =0x00005590
	strh r0, [r2, #4]
	adds r2, #8
	ldrb r3, [r3, #3]
	orrs r1, r3
	strh r1, [r2]
	ldr r0, _0800E7A8 @ =0x000080D0
	strh r0, [r2, #2]
	ldr r0, _0800E7AC @ =0x00005598
	strh r0, [r2, #4]
_0800E790:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E798: .4byte 0x00008020
_0800E79C: .4byte 0x00005588
_0800E7A0: .4byte 0x000080B0
_0800E7A4: .4byte 0x00005590
_0800E7A8: .4byte 0x000080D0
_0800E7AC: .4byte 0x00005598

	thumb_func_start sub_800E7B0
sub_800E7B0: @ 0x0800E7B0
	ldr r1, _0800E7D0 @ =0x040000D4
	ldr r0, _0800E7D4 @ =gUnknown_08145CFC
	str r0, [r1]
	ldr r0, _0800E7D8 @ =0x06012000
	str r0, [r1, #4]
	ldr r0, _0800E7DC @ =0x80000300
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800E7E0 @ =gUnknown_0814E0E0
	str r0, [r1]
	ldr r0, _0800E7E4 @ =0x05000340
	str r0, [r1, #4]
	ldr r0, _0800E7E8 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bx lr
	.align 2, 0
_0800E7D0: .4byte 0x040000D4
_0800E7D4: .4byte gUnknown_08145CFC
_0800E7D8: .4byte 0x06012000
_0800E7DC: .4byte 0x80000300
_0800E7E0: .4byte gUnknown_0814E0E0
_0800E7E4: .4byte 0x05000340
_0800E7E8: .4byte 0x80000010

	thumb_func_start sub_800E7EC
sub_800E7EC: @ 0x0800E7EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	mov sb, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r6, _0800E818 @ =gOamObjects+0x180
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	bne _0800E81C
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #2
_0800E80C:
	strh r1, [r6]
	adds r6, #8
	adds r0, #1
	cmp r0, #3
	bls _0800E80C
	b _0800E89A
	.align 2, 0
_0800E818: .4byte gOamObjects+0x180
_0800E81C:
	ldr r0, _0800E8A8 @ =0x000001FF
	ands r5, r0
	subs r0, #0xff
	mov r8, r0
	bl sub_8004290
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl sub_8004260
	ldr r1, _0800E8AC @ =0xFFFFFE80
	adds r7, r6, r1
	strh r0, [r7, #6]
	movs r0, #0
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r7, #0xe]
	movs r0, #0
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r7, #0x16]
	mov r0, r8
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r7, #0x1e]
	movs r3, #0x80
	lsls r3, r3, #7
	add r3, sb
	strh r3, [r6]
	ldr r4, _0800E8B0 @ =0xFFFFC000
	adds r0, r4, #0
	adds r0, r5, r0
	strh r0, [r6, #2]
	movs r2, #0xad
	lsls r2, r2, #8
	strh r2, [r6, #4]
	adds r6, #8
	mov r0, sb
	strh r0, [r6]
	ldr r1, _0800E8B4 @ =0xFFFF8040
	adds r0, r5, r1
	strh r0, [r6, #2]
	ldr r1, _0800E8B8 @ =0x0000AD20
	strh r1, [r6, #4]
	adds r6, #8
	mov r4, sb
	strh r4, [r6]
	ldr r4, _0800E8BC @ =0xFFFF9060
	adds r0, r5, r4
	strh r0, [r6, #2]
	strh r1, [r6, #4]
	adds r6, #8
	strh r3, [r6]
	ldr r1, _0800E8C0 @ =0xFFFFD080
	adds r0, r5, r1
	strh r0, [r6, #2]
	strh r2, [r6, #4]
_0800E89A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E8A8: .4byte 0x000001FF
_0800E8AC: .4byte 0xFFFFFE80
_0800E8B0: .4byte 0xFFFFC000
_0800E8B4: .4byte 0xFFFF8040
_0800E8B8: .4byte 0x0000AD20
_0800E8BC: .4byte 0xFFFF9060
_0800E8C0: .4byte 0xFFFFD080

	thumb_func_start sub_800E8C4
sub_800E8C4: @ 0x0800E8C4
	ldr r1, _0800E8E4 @ =0x040000D4
	ldr r0, _0800E8E8 @ =gUnknown_081462FC
	str r0, [r1]
	ldr r0, _0800E8EC @ =0x06012000
	str r0, [r1, #4]
	ldr r0, _0800E8F0 @ =0x80000680
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800E8F4 @ =gUnknown_0814E100
	str r0, [r1]
	ldr r0, _0800E8F8 @ =0x05000340
	str r0, [r1, #4]
	ldr r0, _0800E8FC @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bx lr
	.align 2, 0
_0800E8E4: .4byte 0x040000D4
_0800E8E8: .4byte gUnknown_081462FC
_0800E8EC: .4byte 0x06012000
_0800E8F0: .4byte 0x80000680
_0800E8F4: .4byte gUnknown_0814E100
_0800E8F8: .4byte 0x05000340
_0800E8FC: .4byte 0x80000010

	thumb_func_start sub_800E900
sub_800E900: @ 0x0800E900
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	mov sb, r1
	lsls r2, r2, #0x18
	mov r8, r2
	mov r0, r8
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _0800E978 @ =0x000001FF
	ands r7, r0
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r6, #0
	bl sub_8004290
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8004260
	ldr r5, _0800E97C @ =gOamObjects
	strh r0, [r5, #6]
	movs r0, #0
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0xe]
	movs r0, #0
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0x16]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0x1e]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r5, r5, r1
	movs r0, #1
	mov r3, r8
	ands r3, r0
	cmp r3, #0
	bne _0800E980
	movs r0, #0x80
	lsls r0, r0, #2
	movs r2, #3
_0800E96A:
	strh r0, [r5]
	adds r5, #8
	subs r2, #1
	cmp r2, #0
	bge _0800E96A
	b _0800E9BA
	.align 2, 0
_0800E978: .4byte 0x000001FF
_0800E97C: .4byte gOamObjects
_0800E980:
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #7
	add r3, sb
	ldr r1, _0800E9C8 @ =0xFFFFC000
	adds r0, r7, r1
	ldr r1, _0800E9CC @ =0xFFFFAD00
_0800E98E:
	strh r3, [r5]
	strh r0, [r5, #2]
	strh r1, [r5, #4]
	adds r5, #8
	adds r0, #0x40
	adds r1, #0x20
	adds r2, #1
	cmp r2, #2
	ble _0800E98E
	ldr r3, _0800E9D0 @ =0xFFFF8000
	adds r0, r3, #0
	mov r3, sb
	adds r1, r3, r0
	strh r1, [r5]
	adds r0, r7, r0
	lsls r1, r2, #6
	adds r0, r0, r1
	strh r0, [r5, #2]
	lsls r0, r2, #5
	ldr r1, _0800E9CC @ =0xFFFFAD00
	adds r0, r0, r1
	strh r0, [r5, #4]
_0800E9BA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E9C8: .4byte 0xFFFFC000
_0800E9CC: .4byte 0xFFFFAD00
_0800E9D0: .4byte 0xFFFF8000

	thumb_func_start sub_800E9D4
sub_800E9D4: @ 0x0800E9D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	mov sb, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _0800EA04 @ =0x000001FF
	ands r5, r0
	ldr r6, _0800EA08 @ =gOamObjects+0x180
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	bne _0800EA0C
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #2
_0800E9F8:
	strh r0, [r6]
	adds r6, #8
	adds r2, #1
	cmp r2, #3
	bls _0800E9F8
	b _0800EA7A
	.align 2, 0
_0800EA04: .4byte 0x000001FF
_0800EA08: .4byte gOamObjects+0x180
_0800EA0C:
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	bl sub_8004290
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl sub_8004260
	ldr r1, _0800EA8C @ =0xFFFFFE80
	adds r7, r6, r1
	strh r0, [r7, #6]
	movs r0, #0
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r7, #0xe]
	movs r0, #0
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r7, #0x16]
	mov r0, r8
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r7, #0x1e]
	ldr r0, _0800EA90 @ =0xFFFF8000
	add r0, sb
	strh r0, [r6]
	ldr r3, _0800EA94 @ =0xFFFF9000
	adds r0, r5, r3
	strh r0, [r6, #2]
	ldr r0, _0800EA98 @ =0x0000AD60
	strh r0, [r6, #4]
	adds r6, #8
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #7
	add r1, sb
	ldr r3, _0800EA9C @ =0x0000D010
	adds r0, r5, r3
	ldr r3, _0800EAA0 @ =0x0000AD40
_0800EA68:
	strh r1, [r6]
	strh r0, [r6, #2]
	strh r3, [r6, #4]
	adds r6, #8
	adds r0, #0x40
	subs r3, #0x20
	adds r2, #1
	cmp r2, #2
	bls _0800EA68
_0800EA7A:
	bl sub_800EAA4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EA8C: .4byte 0xFFFFFE80
_0800EA90: .4byte 0xFFFF8000
_0800EA94: .4byte 0xFFFF9000
_0800EA98: .4byte 0x0000AD60
_0800EA9C: .4byte 0x0000D010
_0800EAA0: .4byte 0x0000AD40

	thumb_func_start sub_800EAA4
sub_800EAA4: @ 0x0800EAA4
	push {r4, lr}
	ldr r1, _0800EAC4 @ =gOamObjects+0x180
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #5
	adds r3, r0, #0
_0800EAB0:
	ldrh r0, [r1]
	orrs r0, r3
	strh r0, [r1]
	adds r1, #8
	adds r2, #1
	cmp r2, #3
	bls _0800EAB0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800EAC4: .4byte gOamObjects+0x180

	thumb_func_start sub_800EAC8
sub_800EAC8: @ 0x0800EAC8
	ldr r2, _0800EAD8 @ =gMain
	movs r3, #0x97
	lsls r3, r3, #2
	adds r2, r2, r3
	adds r0, r0, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800EAD8: .4byte gMain

	thumb_func_start sub_800EADC
sub_800EADC: @ 0x0800EADC
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r1, #0
	ldr r2, _0800EB04 @ =gMain
	ldr r4, _0800EB08 @ =0x00000286
	adds r0, r2, r4
	ldrh r0, [r0]
	cmp r1, r0
	bhs _0800EB1A
	ldr r5, _0800EB0C @ =0x00000276
	adds r4, r2, r5
	adds r2, r0, #0
_0800EAF6:
	lsls r0, r1, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	cmp r0, r3
	bne _0800EB10
	movs r0, #1
	b _0800EB1C
	.align 2, 0
_0800EB04: .4byte gMain
_0800EB08: .4byte 0x00000286
_0800EB0C: .4byte 0x00000276
_0800EB10:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	blo _0800EAF6
_0800EB1A:
	movs r0, #0
_0800EB1C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800EB24
sub_800EB24: @ 0x0800EB24
	adds r2, r0, #0
	strb r1, [r2, #8]
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _0800EB34
	movs r0, #0xf3
	ands r0, r1
	strb r0, [r2, #8]
_0800EB34:
	bx lr
	.align 2, 0

	thumb_func_start sub_800EB38
sub_800EB38: @ 0x0800EB38
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, #5
	beq _0800EB56
	ldr r0, _0800EB78 @ =gUnknown_081120CC
	adds r1, r5, #0
	adds r1, #0xb3
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
_0800EB56:
	ldr r1, _0800EB7C @ =gUnknown_0811234C
	ldrb r2, [r5, #9]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r4, _0800EB80 @ =gInvestigation
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	bl _call_via_r2
	adds r0, r4, #0
	bl sub_80111EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800EB78: .4byte gUnknown_081120CC
_0800EB7C: .4byte gUnknown_0811234C
_0800EB80: .4byte gInvestigation

	thumb_func_start sub_800EB84
sub_800EB84: @ 0x0800EB84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	ldr r7, _0800ED98 @ =gIORegisters
	mov r0, sp
	movs r5, #0
	strh r5, [r0]
	ldr r4, _0800ED9C @ =0x040000D4
	str r0, [r4]
	ldr r0, _0800EDA0 @ =gTestimony
	str r0, [r4, #4]
	ldr r0, _0800EDA4 @ =0x81000004
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r0, sp
	strh r5, [r0]
	str r0, [r4]
	ldr r0, _0800EDA8 @ =gInvestigation
	str r0, [r4, #4]
	ldr r0, _0800EDAC @ =0x8100000E
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	bl HideAllSprites
	bl InitBGs
	bl ResetAnimationSystem
	bl LoadCurrentScriptIntoRam
	adds r1, r7, #0
	adds r1, #0x4a
	movs r0, #0xfa
	lsls r0, r0, #5
	strh r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #6
	strh r0, [r7]
	ldr r0, _0800EDB0 @ =0x00003D01
	strh r0, [r7, #2]
	adds r0, #0xff
	strh r0, [r7, #4]
	ldr r0, _0800EDB4 @ =0x00003FC7
	strh r0, [r7, #6]
	ldr r0, _0800EDB8 @ =gUnknown_081370FC
	str r0, [r4]
	ldr r0, _0800EDBC @ =0x06003800
	str r0, [r4, #4]
	ldr r0, _0800EDC0 @ =0x80000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800EDC4 @ =gUnknown_0813791C
	str r0, [r4]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r1, _0800EDC8 @ =0x80000800
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800EDCC @ =gUnknown_081400FC
	str r0, [r4]
	ldr r0, _0800EDD0 @ =0x06012000
	str r0, [r4, #4]
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800EDD4 @ =gUnknown_0814DBA0
	str r0, [r4]
	ldr r0, _0800EDD8 @ =0x050002A0
	str r0, [r4, #4]
	ldr r3, _0800EDDC @ =0x80000020
	str r3, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800EDE0 @ =gUnknown_081412FC
	str r0, [r4]
	ldr r0, _0800EDE4 @ =0x06013000
	str r0, [r4, #4]
	ldr r2, _0800EDE8 @ =0x80000100
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800EDEC @ =gUnknown_0814DC00
	str r0, [r4]
	ldr r0, _0800EDF0 @ =0x050002E0
	str r0, [r4, #4]
	ldr r1, _0800EDF4 @ =0x80000010
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800EDF8 @ =gUnknown_081426FC
	str r0, [r4]
	ldr r0, _0800EDFC @ =0x06013200
	str r0, [r4, #4]
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800EE00 @ =gUnknown_0814DC60
	str r0, [r4]
	ldr r0, _0800EE04 @ =0x05000300
	str r0, [r4, #4]
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800EE08 @ =gUnknown_081DE3A8
	str r0, [r4]
	ldr r0, _0800EE0C @ =0x05000320
	str r0, [r4, #4]
	str r3, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _0800EE10 @ =gOamObjects+0x1A0
	movs r4, #0
	add r0, sp, #4
	mov sl, r0
	ldr r2, _0800EE14 @ =0x000040E0
	mov ip, r2
	movs r3, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r5, r0, #0
	movs r2, #0xa2
	lsls r2, r2, #7
_0800EC76:
	mov r0, ip
	strh r0, [r1]
	adds r0, r3, r5
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	adds r1, #8
	adds r3, #0x3c
	adds r2, #0x20
	adds r4, #1
	cmp r4, #3
	bls _0800EC76
	mov r0, r8
	movs r1, #0xf
	bl sub_800EB24
	movs r1, #0
	mov sb, r1
	movs r0, #0xe0
	mov r2, r8
	strb r0, [r2, #0xf]
	mov r0, sb
	strb r0, [r2, #0x10]
	movs r0, #8
	strb r0, [r2, #0x11]
	mov r1, sb
	strb r1, [r2, #0xc]
	strb r1, [r2, #0xd]
	ldr r1, _0800EE18 @ =gUnknown_0811201C
	adds r5, r6, #0
	adds r5, #0xb3
	ldrb r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	adds r0, r6, #0
	adds r0, #0xb2
	ldrb r2, [r0]
	lsls r1, r2, #2
	adds r1, r1, r2
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r6, r2
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r4, #0
	bl sub_8002820
	adds r0, r4, #0
	bl CopyBGDataToVram
	movs r0, #0x80
	bl CopyBGDataToVram
	ldr r0, _0800EE1C @ =0x0000FFAF
	strh r0, [r7, #0xe]
	adds r4, r7, #0
	adds r4, #0x4a
	ldr r0, _0800EE20 @ =0x0000FDFF
	mov r8, r0
	ldrh r1, [r4]
	ands r0, r1
	strh r0, [r4]
	ldr r1, _0800EE24 @ =gCourtRecord
	adds r0, r6, #0
	bl sub_8011688
	mov r2, sb
	str r2, [sp, #4]
	ldr r1, _0800ED9C @ =0x040000D4
	mov r0, sl
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0xbc
	str r0, [r1, #4]
	ldr r0, _0800EE28 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r6, #0
	adds r0, #0xdc
	str r2, [r0]
	movs r0, #0xf
	strb r0, [r6, #0x1a]
	movs r0, #1
	strb r0, [r6, #0x18]
	strb r0, [r6, #0x19]
	ldr r1, _0800EE2C @ =gScriptContext
	ldr r0, _0800EE30 @ =0x0000FFFF
	strh r0, [r1, #0x1e]
	movs r0, #0x80
	bl sub_8007538
	movs r0, #1
	bl sub_80037FC
	ldr r1, _0800EE34 @ =gUnknown_08112074
	ldrb r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	adds r0, r6, #0
	movs r1, #0
	bl sub_8011388
	bl sub_800D450
	movs r0, #0x30
	movs r1, #0xf
	bl SetTimedKeysAndDelay
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	adds r1, r7, #0
	adds r1, #0x4e
	movs r0, #0x10
	strh r0, [r1]
	ldrb r5, [r5]
	cmp r5, #8
	bne _0800ED82
	mov r0, r8
	ldrh r1, [r4]
	ands r0, r1
	strh r0, [r4]
	mov r2, sb
	strh r2, [r7, #0xe]
_0800ED82:
	movs r0, #0x82
	lsls r0, r0, #1
	str r0, [r6, #8]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800ED98: .4byte gIORegisters
_0800ED9C: .4byte 0x040000D4
_0800EDA0: .4byte gTestimony
_0800EDA4: .4byte 0x81000004
_0800EDA8: .4byte gInvestigation
_0800EDAC: .4byte 0x8100000E
_0800EDB0: .4byte 0x00003D01
_0800EDB4: .4byte 0x00003FC7
_0800EDB8: .4byte gUnknown_081370FC
_0800EDBC: .4byte 0x06003800
_0800EDC0: .4byte 0x80000400
_0800EDC4: .4byte gUnknown_0813791C
_0800EDC8: .4byte 0x80000800
_0800EDCC: .4byte gUnknown_081400FC
_0800EDD0: .4byte 0x06012000
_0800EDD4: .4byte gUnknown_0814DBA0
_0800EDD8: .4byte 0x050002A0
_0800EDDC: .4byte 0x80000020
_0800EDE0: .4byte gUnknown_081412FC
_0800EDE4: .4byte 0x06013000
_0800EDE8: .4byte 0x80000100
_0800EDEC: .4byte gUnknown_0814DC00
_0800EDF0: .4byte 0x050002E0
_0800EDF4: .4byte 0x80000010
_0800EDF8: .4byte gUnknown_081426FC
_0800EDFC: .4byte 0x06013200
_0800EE00: .4byte gUnknown_0814DC60
_0800EE04: .4byte 0x05000300
_0800EE08: .4byte gUnknown_081DE3A8
_0800EE0C: .4byte 0x05000320
_0800EE10: .4byte gOamObjects+0x1A0
_0800EE14: .4byte 0x000040E0
_0800EE18: .4byte gUnknown_0811201C
_0800EE1C: .4byte 0x0000FFAF
_0800EE20: .4byte 0x0000FDFF
_0800EE24: .4byte gCourtRecord
_0800EE28: .4byte 0x85000008
_0800EE2C: .4byte gScriptContext
_0800EE30: .4byte 0x0000FFFF
_0800EE34: .4byte gUnknown_08112074

	thumb_func_start sub_800EE38
sub_800EE38: @ 0x0800EE38
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800EEB2
	ldrb r0, [r4, #0xe]
	cmp r0, #2
	beq _0800EEB2
	ldr r1, _0800EEBC @ =gJoypad
	movs r0, #8
	ldrh r2, [r1, #2]
	ands r0, r2
	adds r7, r1, #0
	ldr r3, _0800EEC0 @ =gScriptContext
	cmp r0, #0
	beq _0800EE7E
	adds r2, r5, #0
	adds r2, #0xdc
	ldr r1, [r2]
	movs r0, #0x10
	ands r1, r0
	adds r6, r2, #0
	cmp r1, #0
	bne _0800EE7E
	movs r0, #5
	ldrh r1, [r3]
	ands r0, r1
	cmp r0, #0
	beq _0800EE7E
	ldr r0, _0800EEC4 @ =gMain
	ldrh r0, [r0, #0x30]
	cmp r0, #0x7f
	bne _0800EEF4
_0800EE7E:
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r7, [r7, #2]
	ands r0, r7
	cmp r0, #0
	beq _0800EEA2
	adds r0, r5, #0
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800EEA2
	movs r0, #5
	ldrh r2, [r3]
	ands r0, r2
	cmp r0, #0
	bne _0800EF96
_0800EEA2:
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800EEB2
	ldrh r0, [r5, #0x18]
	cmp r0, #0
	beq _0800EEC8
_0800EEB2:
	adds r0, r5, #0
	movs r1, #0
	bl sub_8011388
	b _0800F10E
	.align 2, 0
_0800EEBC: .4byte gJoypad
_0800EEC0: .4byte gScriptContext
_0800EEC4: .4byte gMain
_0800EEC8:
	adds r0, r5, #0
	movs r1, #1
	bl sub_8011388
	ldr r1, _0800EF48 @ =gJoypad
	movs r0, #8
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _0800EF78
	adds r0, r5, #0
	adds r0, #0xdc
	ldr r1, [r0]
	movs r2, #0x10
	ands r1, r2
	adds r6, r0, #0
	cmp r1, #0
	bne _0800EF78
	ldr r0, _0800EF4C @ =gMain
	ldrh r0, [r0, #0x30]
	cmp r0, #0x7f
	beq _0800EF78
_0800EEF4:
	bl sub_80139EC
	ldr r1, _0800EF50 @ =0x040000D4
	ldr r0, _0800EF54 @ =gOamObjects
	str r0, [r1]
	ldr r2, _0800EF58 @ =gUnknown_0200093C
	str r2, [r1, #4]
	ldr r0, _0800EF5C @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _0800EF4C @ =gMain
	str r4, [r1]
	ldr r3, _0800EF60 @ =0xFFFFF6F8
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _0800EF64 @ =0x80000160
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800EF68 @ =gScriptContext
	ldr r0, [r0, #0x38]
	ldr r1, _0800EF6C @ =0xFF0000FF
	ands r0, r1
	ldr r1, _0800EF70 @ =0x01000002
	cmp r0, r1
	bne _0800EF2E
	ldr r0, _0800EF74 @ =0xFFFFF711
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
_0800EF2E:
	movs r0, #0x31
	bl sub_8013834
	ldr r0, [r6]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6]
	ldr r0, [r4, #8]
	str r0, [r5, #0xc]
	movs r0, #0xa
	str r0, [r5, #8]
	b _0800F10E
	.align 2, 0
_0800EF48: .4byte gJoypad
_0800EF4C: .4byte gMain
_0800EF50: .4byte 0x040000D4
_0800EF54: .4byte gOamObjects
_0800EF58: .4byte gUnknown_0200093C
_0800EF5C: .4byte 0x80000200
_0800EF60: .4byte 0xFFFFF6F8
_0800EF64: .4byte 0x80000160
_0800EF68: .4byte gScriptContext
_0800EF6C: .4byte 0xFF0000FF
_0800EF70: .4byte 0x01000002
_0800EF74: .4byte 0xFFFFF711
_0800EF78:
	ldr r6, _0800EFBC @ =gJoypad
	ldrh r1, [r6, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800EFC4
	adds r0, r5, #0
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800EF96
	b _0800F0FA
_0800EF96:
	movs r0, #0x31
	bl sub_8013834
	ldr r0, _0800EFC0 @ =gMain+0x8
	ldr r0, [r0]
	str r0, [r5, #0xc]
	movs r0, #7
	str r0, [r5, #8]
	adds r0, r5, #0
	movs r1, #0
	bl sub_8011388
	movs r0, #0
	strb r0, [r4, #0x10]
	movs r0, #8
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	b _0800F10E
	.align 2, 0
_0800EFBC: .4byte gJoypad
_0800EFC0: .4byte gMain+0x8
_0800EFC4:
	movs r0, #0x30
	ldrh r2, [r6, #8]
	ands r0, r2
	cmp r0, #0
	beq _0800F00A
	ldrb r1, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #0x20
	ldrh r6, [r6, #8]
	ands r0, r6
	cmp r0, #0
	beq _0800EFE0
	subs r0, r1, #1
	b _0800EFE2
_0800EFE0:
	adds r0, r1, #1
_0800EFE2:
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0800EFF2
	movs r0, #1
	ldrb r3, [r4, #0xc]
	ands r0, r3
	b _0800EFF8
_0800EFF2:
	movs r0, #3
	ldrb r1, [r4, #0xc]
	ands r0, r1
_0800EFF8:
	strb r0, [r4, #0xc]
	movs r0, #0x2a
	bl sub_8013834
	movs r0, #0
	strb r0, [r4, #0x10]
	movs r0, #8
	strb r0, [r4, #0x11]
	b _0800F0FA
_0800F00A:
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0800F090
	movs r0, #0x2b
	bl sub_8013834
	movs r6, #0
	movs r0, #0x78
	strh r0, [r4]
	movs r0, #0x32
	strh r0, [r4, #2]
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_800EB24
	adds r0, r7, #0
	ldrb r2, [r4, #0xc]
	lsls r0, r2
	ldrb r3, [r4, #8]
	subs r0, r3, r0
	strb r0, [r4, #8]
	movs r0, #0xf0
	strb r0, [r4, #0xf]
	movs r0, #8
	strb r0, [r4, #0x10]
	strb r6, [r4, #0x11]
	adds r0, r2, #0
	strb r0, [r4, #0xd]
	movs r0, #3
	strb r0, [r4, #0xe]
	adds r0, r5, #0
	movs r1, #0
	bl sub_8011388
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0800F074
	movs r0, #0xc
	movs r1, #1
	bl sub_8014D10
	strb r6, [r4, #0x19]
	strb r6, [r4, #0x18]
	ldr r1, _0800F080 @ =0x040000D4
	ldr r0, _0800F084 @ =gUnknown_0814DC60
	str r0, [r1]
	ldr r0, _0800F088 @ =0x05000300
	str r0, [r1, #4]
	ldr r0, _0800F08C @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0800F074:
	ldrb r0, [r4, #0xc]
	adds r0, #6
	strb r0, [r5, #9]
	strb r6, [r5, #0xb]
	strb r6, [r5, #0xa]
	b _0800F10E
	.align 2, 0
_0800F080: .4byte 0x040000D4
_0800F084: .4byte gUnknown_0814DC60
_0800F088: .4byte 0x05000300
_0800F08C: .4byte 0x80000010
_0800F090:
	ldrh r0, [r5, #0x2e]
	bl sub_80035A0
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _0800F0FA
	movs r0, #0x80
	lsls r0, r0, #2
	ldrh r6, [r6, #2]
	ands r0, r6
	cmp r0, #0
	beq _0800F0FA
	movs r1, #0x3c
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _0800F0BA
	cmp r0, #0x78
	beq _0800F0BA
	cmp r0, #0xf0
	bne _0800F0FA
_0800F0BA:
	movs r0, #0x2b
	bl sub_8013834
	adds r1, r5, #0
	adds r1, #0x36
	movs r0, #1
	strb r0, [r1]
	movs r2, #0x3c
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _0800F0D6
	adds r1, #0xe
	movs r0, #6
	b _0800F0E4
_0800F0D6:
	cmp r0, #0x78
	beq _0800F0DE
	cmp r0, #0xf0
	bne _0800F0E6
_0800F0DE:
	adds r1, r5, #0
	adds r1, #0x44
	movs r0, #0xfa
_0800F0E4:
	strb r0, [r1]
_0800F0E6:
	movs r0, #0
	movs r1, #3
	strb r1, [r5, #9]
	strb r0, [r5, #0xb]
	strb r0, [r5, #0xa]
	strb r1, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_800EB24
_0800F0FA:
	ldrb r0, [r4, #0x10]
	cmp r0, #7
	bhi _0800F104
	adds r0, #1
	strb r0, [r4, #0x10]
_0800F104:
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	beq _0800F10E
	subs r0, #1
	strb r0, [r4, #0x11]
_0800F10E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_800F114
sub_800F114: @ 0x0800F114
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8007D30
	ldr r1, _0800F148 @ =0x040000D4
	ldr r0, _0800F14C @ =gMain
	str r0, [r1]
	ldr r0, _0800F150 @ =gUnknown_02000034
	str r0, [r1, #4]
	ldr r0, _0800F154 @ =0x80000160
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800F158 @ =0x0100000A
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb3
	ldrb r1, [r0]
	cmp r1, #2
	bne _0800F160
	adds r0, #1
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _0800F192
	ldr r0, _0800F15C @ =0x0100000B
	b _0800F190
	.align 2, 0
_0800F148: .4byte 0x040000D4
_0800F14C: .4byte gMain
_0800F150: .4byte gUnknown_02000034
_0800F154: .4byte 0x80000160
_0800F158: .4byte 0x0100000A
_0800F15C: .4byte 0x0100000B
_0800F160:
	cmp r1, #8
	bne _0800F17C
	adds r1, r4, #0
	adds r1, #0xb4
	movs r0, #4
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800F192
	ldr r0, _0800F178 @ =gUnknown_0200000B
	b _0800F190
	.align 2, 0
_0800F178: .4byte gUnknown_0200000B
_0800F17C:
	cmp r1, #0xe
	bne _0800F192
	adds r1, r4, #0
	adds r1, #0xb4
	movs r0, #8
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800F192
	ldr r0, _0800F198 @ =gUnknown_0300000B
_0800F190:
	str r0, [r4, #8]
_0800F192:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F198: .4byte gUnknown_0300000B

	thumb_func_start sub_800F19C
sub_800F19C: @ 0x0800F19C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0
	bl sub_8011388
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0800F1E8
	ldrh r0, [r4, #0x2e]
	bl sub_80035A0
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0800F1CA
	movs r1, #0x3c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0800F1D6
	cmp r0, #0xf0
	beq _0800F1D6
	b _0800F1F4
_0800F1CA:
	movs r1, #0x3c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0800F1D6
	cmp r0, #0x78
	bne _0800F1F4
_0800F1D6:
	movs r0, #0
	strb r0, [r5, #0x10]
	strb r0, [r5, #0x11]
	movs r0, #1
	strb r0, [r5, #0xe]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _0800F1F4
_0800F1E8:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _0800F1F4
	movs r0, #0x82
	lsls r0, r0, #1
	str r0, [r4, #8]
_0800F1F4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800F1FC
sub_800F1FC: @ 0x0800F1FC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_8011388
	ldr r0, _0800F21C @ =gScriptContext
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F216
	movs r0, #0x82
	lsls r0, r0, #1
	str r0, [r4, #8]
_0800F216:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F21C: .4byte gScriptContext

	thumb_func_start sub_800F220
sub_800F220: @ 0x0800F220
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, _0800F264 @ =gScriptContext
	adds r0, #0x38
	ldrb r7, [r0]
	cmp r7, #1
	bne _0800F318
	adds r0, r6, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800F318
	adds r1, r6, #0
	adds r1, #0xb2
	ldrb r2, [r1]
	lsls r0, r2, #2
	adds r0, r0, r2
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r0, r3
	adds r4, r6, r0
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	bne _0800F268
	bl ResetSoundControl
	ldrb r0, [r4]
	bl sub_8002820
	strb r7, [r6, #0xa]
	b _0800F318
	.align 2, 0
_0800F264: .4byte gScriptContext
_0800F268:
	ldrb r0, [r4]
	bl CopyBGDataToVram
	ldr r1, _0800F324 @ =gOamObjects+0x130
	movs r2, #0
	movs r0, #0xb3
	adds r0, r0, r6
	mov r8, r0
	adds r4, r1, #0
	adds r4, #0x70
	movs r3, #0x80
	lsls r3, r3, #2
_0800F280:
	movs r0, #0
_0800F282:
	strh r3, [r1]
	adds r1, #8
	adds r0, #1
	cmp r0, #1
	bls _0800F282
	adds r2, #1
	cmp r2, #3
	bls _0800F280
	adds r1, r4, #0
	movs r2, #0
	ldr r3, _0800F328 @ =0x000040E0
	mov ip, r3
	movs r4, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r7, r0, #0
	movs r3, #0xa2
	lsls r3, r3, #7
_0800F2A6:
	mov r0, ip
	strh r0, [r1]
	adds r0, r4, r7
	strh r0, [r1, #2]
	strh r3, [r1, #4]
	adds r1, #8
	adds r4, #0x3c
	adds r3, #0x20
	adds r2, #1
	cmp r2, #3
	bls _0800F2A6
	movs r4, #0
	adds r0, r5, #0
	movs r1, #0xf
	bl sub_800EB24
	movs r0, #0xe0
	strb r0, [r5, #0xf]
	strb r4, [r5, #0x10]
	movs r0, #8
	strb r0, [r5, #0x11]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xd]
	movs r0, #1
	strb r0, [r5, #0xe]
	bl sub_8013E40
	ldr r0, _0800F32C @ =gUnknown_03000844
	bl sub_8014F94
	ldr r0, _0800F330 @ =gInvestigation
	strb r4, [r0, #6]
	movs r1, #0xf
	bl sub_800EB24
	ldr r1, _0800F334 @ =gUnknown_08112074
	mov r2, r8
	ldrb r2, [r2]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	adds r0, r6, #0
	movs r1, #0
	bl sub_8011388
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r0, #0x82
	lsls r0, r0, #1
	str r0, [r6, #8]
_0800F318:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F324: .4byte gOamObjects+0x130
_0800F328: .4byte 0x000040E0
_0800F32C: .4byte gUnknown_03000844
_0800F330: .4byte gInvestigation
_0800F334: .4byte gUnknown_08112074

	thumb_func_start sub_800F338
sub_800F338: @ 0x0800F338
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, _0800F3EC @ =gOamObjects+0x1D0
	mov r8, r0
	ldr r0, _0800F3F0 @ =gAnimation
	ldr r0, [r0, #0x44]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _0800F356
	b _0800F798
_0800F356:
	adds r0, r6, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800F362
	b _0800F798
_0800F362:
	ldr r1, _0800F3F4 @ =gJoypad
	movs r0, #8
	ldrh r2, [r1, #2]
	ands r0, r2
	mov ip, r1
	cmp r0, #0
	beq _0800F394
	adds r0, r6, #0
	adds r0, #0xdc
	ldr r1, [r0]
	movs r2, #0x10
	ands r1, r2
	adds r4, r0, #0
	cmp r1, #0
	bne _0800F394
	ldr r1, _0800F3F8 @ =gScriptContext
	movs r0, #5
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800F394
	ldr r0, _0800F3FC @ =gMain
	ldrh r0, [r0, #0x30]
	cmp r0, #0x7f
	bne _0800F44A
_0800F394:
	movs r0, #0x80
	lsls r0, r0, #1
	mov r3, ip
	ldrh r3, [r3, #2]
	ands r0, r3
	cmp r0, #0
	beq _0800F3BE
	adds r0, r6, #0
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800F3BE
	ldr r1, _0800F3F8 @ =gScriptContext
	movs r0, #5
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800F3BE
	b _0800F4E8
_0800F3BE:
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _0800F3C6
	b _0800F798
_0800F3C6:
	ldr r0, _0800F3F8 @ =gScriptContext
	adds r0, #0x38
	ldrb r7, [r0]
	cmp r7, #1
	beq _0800F3D2
	b _0800F798
_0800F3D2:
	ldrh r0, [r6, #0x18]
	cmp r0, #0
	beq _0800F3DA
	b _0800F798
_0800F3DA:
	ldrb r1, [r6, #0xa]
	cmp r1, #1
	beq _0800F424
	cmp r1, #1
	bgt _0800F400
	cmp r1, #0
	beq _0800F408
	b _0800F798
	.align 2, 0
_0800F3EC: .4byte gOamObjects+0x1D0
_0800F3F0: .4byte gAnimation
_0800F3F4: .4byte gJoypad
_0800F3F8: .4byte gScriptContext
_0800F3FC: .4byte gMain
_0800F400:
	cmp r1, #2
	bne _0800F406
	b _0800F758
_0800F406:
	b _0800F798
_0800F408:
	ldrb r0, [r5, #0x10]
	cmp r0, #0xf
	bhi _0800F412
	adds r0, #1
	strb r0, [r5, #0x10]
_0800F412:
	strb r1, [r5, #0x11]
	ldrb r5, [r5, #0x10]
	cmp r5, #0xf
	bhi _0800F41C
	b _0800F798
_0800F41C:
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	b _0800F798
_0800F424:
	movs r3, #3
	movs r0, #8
	mov r1, ip
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _0800F4CC
	adds r0, r6, #0
	adds r0, #0xdc
	ldr r1, [r0]
	movs r2, #0x10
	ands r1, r2
	adds r4, r0, #0
	cmp r1, #0
	bne _0800F4CC
	ldr r0, _0800F4A0 @ =gMain
	ldrh r0, [r0, #0x30]
	cmp r0, #0x7f
	beq _0800F4CC
_0800F44A:
	bl sub_80139EC
	ldr r1, _0800F4A4 @ =0x040000D4
	ldr r0, _0800F4A8 @ =gOamObjects
	str r0, [r1]
	ldr r2, _0800F4AC @ =gUnknown_0200093C
	str r2, [r1, #4]
	ldr r0, _0800F4B0 @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r5, _0800F4A0 @ =gMain
	str r5, [r1]
	ldr r3, _0800F4B4 @ =0xFFFFF6F8
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _0800F4B8 @ =0x80000160
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800F4BC @ =gScriptContext
	ldr r0, [r0, #0x38]
	ldr r1, _0800F4C0 @ =0xFF0000FF
	ands r0, r1
	ldr r1, _0800F4C4 @ =0x01000002
	cmp r0, r1
	bne _0800F484
	ldr r0, _0800F4C8 @ =0xFFFFF711
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
_0800F484:
	movs r0, #0x31
	bl sub_8013834
	ldr r0, [r4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	ldr r0, [r5, #8]
	str r0, [r6, #0xc]
	movs r0, #0xa
	str r0, [r6, #8]
	b _0800F798
	.align 2, 0
_0800F4A0: .4byte gMain
_0800F4A4: .4byte 0x040000D4
_0800F4A8: .4byte gOamObjects
_0800F4AC: .4byte gUnknown_0200093C
_0800F4B0: .4byte 0x80000200
_0800F4B4: .4byte 0xFFFFF6F8
_0800F4B8: .4byte 0x80000160
_0800F4BC: .4byte gScriptContext
_0800F4C0: .4byte 0xFF0000FF
_0800F4C4: .4byte 0x01000002
_0800F4C8: .4byte 0xFFFFF711
_0800F4CC:
	movs r0, #0x80
	lsls r0, r0, #1
	mov r1, ip
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _0800F508
	adds r0, r6, #0
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800F508
_0800F4E8:
	movs r0, #0x31
	bl sub_8013834
	ldr r0, _0800F504 @ =gMain+0x8
	ldr r0, [r0]
	str r0, [r6, #0xc]
	movs r0, #7
	str r0, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	mov r2, r8
	strh r0, [r2]
	b _0800F798
	.align 2, 0
_0800F504: .4byte gMain+0x8
_0800F508:
	mov r0, ip
	ldrh r1, [r0, #2]
	movs r7, #1
	movs r4, #1
	ands r4, r1
	cmp r4, #0
	beq _0800F56C
	movs r0, #0x2b
	bl sub_8013834
	movs r4, #0
	movs r0, #0x80
	lsls r0, r0, #2
	mov r1, r8
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_8011408
	adds r3, r0, #0
	bl sub_8007538
	movs r0, #1
	bl sub_80037FC
	strb r7, [r5, #7]
	strb r4, [r5, #0x16]
	strb r4, [r5, #0x17]
	strb r7, [r5, #8]
	movs r0, #3
	strb r0, [r5, #0xe]
	movs r0, #0xf0
	strb r0, [r5, #0xf]
	strb r4, [r5, #0x10]
	strb r4, [r5, #0x11]
	ldr r1, _0800F560 @ =gIORegisters
	adds r2, r1, #0
	adds r2, #0x48
	ldr r0, _0800F564 @ =0x00001942
	strh r0, [r2]
	adds r1, #0x4c
	ldr r0, _0800F568 @ =0x0000071F
	strh r0, [r1]
	b _0800F798
	.align 2, 0
_0800F560: .4byte gIORegisters
_0800F564: .4byte 0x00001942
_0800F568: .4byte 0x0000071F
_0800F56C:
	movs r7, #2
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800F590
	movs r0, #0x2c
	bl sub_8013834
	strb r7, [r6, #0xa]
	adds r0, r5, #0
	movs r1, #0xe
	bl sub_800EB24
	strb r7, [r5, #0xe]
	movs r0, #0xe0
	strb r0, [r5, #0xf]
	movs r0, #0x10
	b _0800F794
_0800F590:
	movs r0, #0x20
	mov r2, ip
	ldrh r2, [r2]
	ands r0, r2
	cmp r0, #0
	beq _0800F5BE
	ldrh r1, [r5]
	subs r0, r1, r3
	strh r0, [r5]
	ldrh r2, [r5, #2]
	cmp r2, #0xf
	bhi _0800F5B4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bhi _0800F5B4
	movs r0, #0x3c
	strh r0, [r5]
_0800F5B4:
	ldrh r0, [r5]
	cmp r0, #0xe0
	bls _0800F5BE
	movs r0, #0
	strh r0, [r5]
_0800F5BE:
	movs r0, #0x10
	mov r1, ip
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800F5EC
	ldrh r2, [r5]
	adds r0, r2, r3
	strh r0, [r5]
	ldrh r1, [r5, #2]
	cmp r1, #0xf
	bhi _0800F5E2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bhi _0800F5E2
	movs r0, #0x3c
	strh r0, [r5]
_0800F5E2:
	ldrh r2, [r5]
	cmp r2, #0xe0
	bls _0800F5EC
	movs r0, #0xe0
	strh r0, [r5]
_0800F5EC:
	movs r0, #0x40
	mov r1, ip
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800F61A
	ldrh r2, [r5, #2]
	subs r0, r2, r3
	strh r0, [r5, #2]
	ldrh r1, [r5]
	cmp r1, #0x3b
	bhi _0800F610
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bhi _0800F610
	movs r0, #0x10
	strh r0, [r5, #2]
_0800F610:
	ldrh r2, [r5, #2]
	cmp r2, #0x90
	bls _0800F61A
	movs r0, #0
	strh r0, [r5, #2]
_0800F61A:
	movs r0, #0x80
	mov r1, ip
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800F648
	ldrh r2, [r5, #2]
	adds r0, r2, r3
	strh r0, [r5, #2]
	ldrh r3, [r5]
	cmp r3, #0x3b
	bhi _0800F63E
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bhi _0800F63E
	movs r0, #0x10
	strh r0, [r5, #2]
_0800F63E:
	ldrh r0, [r5, #2]
	cmp r0, #0x90
	bls _0800F648
	movs r0, #0x90
	strh r0, [r5, #2]
_0800F648:
	adds r0, r5, #0
	bl sub_8011408
	adds r3, r0, #0
	cmp r3, #0x1d
	beq _0800F6AE
	ldr r2, _0800F6B8 @ =gMain
	adds r0, r2, #0
	adds r0, #0xb3
	ldrb r1, [r0]
	cmp r1, #2
	bne _0800F664
	cmp r3, #0xe8
	beq _0800F6AE
_0800F664:
	cmp r1, #0xe
	bne _0800F66C
	cmp r3, #0xc7
	beq _0800F6AE
_0800F66C:
	cmp r1, #0xf
	bne _0800F676
	ldr r0, _0800F6BC @ =0x0000014F
	cmp r3, r0
	beq _0800F6AE
_0800F676:
	cmp r1, #0x12
	bne _0800F67E
	cmp r3, #0xa5
	beq _0800F6AE
_0800F67E:
	adds r0, r2, #0
	adds r0, #0xb2
	ldrh r1, [r0]
	ldr r0, _0800F6C0 @ =0x00001219
	cmp r1, r0
	bne _0800F692
	movs r0, #0x86
	lsls r0, r0, #1
	cmp r3, r0
	beq _0800F6AE
_0800F692:
	ldr r0, _0800F6C4 @ =0x00001215
	cmp r1, r0
	bne _0800F6A0
	movs r0, #0x86
	lsls r0, r0, #1
	cmp r3, r0
	beq _0800F6AE
_0800F6A0:
	ldr r0, _0800F6C8 @ =0x00000F17
	cmp r1, r0
	bne _0800F6CC
	movs r0, #0xad
	lsls r0, r0, #1
	cmp r3, r0
	bne _0800F6CC
_0800F6AE:
	movs r0, #0
	strb r0, [r5, #0x16]
	strb r0, [r5, #0x17]
	b _0800F6E8
	.align 2, 0
_0800F6B8: .4byte gMain
_0800F6BC: .4byte 0x0000014F
_0800F6C0: .4byte 0x00001219
_0800F6C4: .4byte 0x00001215
_0800F6C8: .4byte 0x00000F17
_0800F6CC:
	ldrb r0, [r5, #0x17]
	adds r0, #1
	strb r0, [r5, #0x17]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _0800F6E8
	movs r0, #0
	strb r0, [r5, #0x17]
	ldrb r0, [r5, #0x16]
	adds r0, #4
	movs r1, #0xf
	ands r0, r1
	strb r0, [r5, #0x16]
_0800F6E8:
	ldrh r0, [r5, #2]
	mov r1, r8
	strh r0, [r1]
	ldrh r0, [r5]
	cmp r0, #0x77
	bhi _0800F6FC
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r0, r0, r2
	b _0800F704
_0800F6FC:
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r0, r3
	mov r1, r8
_0800F704:
	strh r0, [r1, #2]
	ldrb r2, [r5, #0x16]
	ldr r3, _0800F744 @ =0x00008190
	adds r0, r2, r3
	mov r1, r8
	strh r0, [r1, #4]
	ldrb r0, [r5, #0x19]
	adds r0, #1
	strb r0, [r5, #0x19]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0800F798
	movs r0, #0
	strb r0, [r5, #0x19]
	ldrb r0, [r5, #0x18]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r5, #0x18]
	ldr r1, _0800F748 @ =0x040000D4
	lsls r0, r0, #5
	ldr r2, _0800F74C @ =gUnknown_0814DC60
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _0800F750 @ =0x05000300
	str r0, [r1, #4]
	ldr r0, _0800F754 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _0800F798
	.align 2, 0
_0800F744: .4byte 0x00008190
_0800F748: .4byte 0x040000D4
_0800F74C: .4byte gUnknown_0814DC60
_0800F750: .4byte 0x05000300
_0800F754: .4byte 0x80000010
_0800F758:
	ldrb r0, [r5, #0x10]
	cmp r0, #8
	bls _0800F762
	subs r0, #1
	strb r0, [r5, #0x10]
_0800F762:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _0800F798
	movs r4, #0
	movs r0, #0x80
	lsls r0, r0, #2
	mov r3, r8
	strh r0, [r3]
	ldr r0, _0800F7A4 @ =gUnknown_03000844
	movs r1, #1
	bl sub_8014138
	movs r0, #1
	movs r1, #1
	bl sub_8014D10
	movs r0, #0x82
	lsls r0, r0, #1
	str r0, [r6, #8]
	ldrb r0, [r5, #0xc]
	lsls r7, r0
	ldrb r1, [r5, #8]
	adds r0, r1, r7
	strb r0, [r5, #8]
	movs r0, #8
_0800F794:
	strb r0, [r5, #0x10]
	strb r4, [r5, #0x11]
_0800F798:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F7A4: .4byte gUnknown_03000844

	thumb_func_start sub_800F7A8
sub_800F7A8: @ 0x0800F7A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	str r1, [sp]
	ldrb r0, [r0, #0xa]
	cmp r0, #6
	bls _0800F7C0
	b _0800FD86
_0800F7C0:
	lsls r0, r0, #2
	ldr r1, _0800F7CC @ =_0800F7D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800F7CC: .4byte _0800F7D0
_0800F7D0: @ jump table
	.4byte _0800F7EC @ case 0
	.4byte _0800F810 @ case 1
	.4byte _0800F938 @ case 2
	.4byte _0800F9B0 @ case 3
	.4byte _0800FBC4 @ case 4
	.4byte _0800FC48 @ case 5
	.4byte _0800FCB8 @ case 6
_0800F7EC:
	ldr r1, [sp]
	ldrb r0, [r1, #0x10]
	cmp r0, #0xf
	bhi _0800F7F8
	adds r0, #1
	strb r0, [r1, #0x10]
_0800F7F8:
	movs r0, #0
	ldr r2, [sp]
	strb r0, [r2, #0x11]
	ldrb r3, [r2, #0x10]
	cmp r3, #0xf
	bhi _0800F806
	b _0800FD86
_0800F806:
	mov r5, r8
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	b _0800FD86
_0800F810:
	ldr r4, _0800F890 @ =gOamObjects+0x130
	mov r1, r8
	adds r1, #0xb2
	ldrb r6, [r1]
	lsls r0, r6, #2
	adds r0, r0, r6
	mov r7, r8
	adds r1, r0, r7
	ldr r0, _0800F894 @ =0x00000121
	adds r1, r1, r0
	movs r3, #0
	ldr r2, [sp]
	adds r2, #0x12
	mov sb, r2
_0800F82C:
	lsls r0, r3, #0xb
	ldr r5, _0800F898 @ =0x06013400
	adds r2, r0, r5
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0800F8AC
	movs r0, #1
	mov r6, sb
	strb r0, [r6]
	ldrb r7, [r1]
	lsls r5, r7, #0xb
	ldr r0, _0800F89C @ =gUnknown_081DE3E8
	adds r5, r5, r0
	ldr r6, _0800F8A0 @ =0x040000D4
	str r5, [r6]
	str r2, [r6, #4]
	ldr r0, _0800F8A4 @ =0x80000400
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	movs r2, #0
	lsls r0, r3, #2
	adds r6, r1, #1
	movs r7, #0x81
	lsls r7, r7, #7
	adds r7, r7, r0
	mov ip, r7
	movs r5, #0xd0
	lsls r5, r5, #1
	lsls r0, r3, #6
	str r0, [sp, #8]
	movs r1, #0x90
	lsls r1, r1, #8
	mov sl, r1
	ldr r1, _0800F8A8 @ =0x0000C038
_0800F870:
	mov r7, ip
	strh r7, [r4]
	strh r1, [r4, #2]
	ldr r7, [sp, #8]
	adds r0, r5, r7
	mov r7, sl
	orrs r0, r7
	strh r0, [r4, #4]
	adds r4, #8
	adds r5, #0x20
	adds r1, #0x40
	adds r2, #1
	cmp r2, #1
	bls _0800F870
	b _0800F8C2
	.align 2, 0
_0800F890: .4byte gOamObjects+0x130
_0800F894: .4byte 0x00000121
_0800F898: .4byte 0x06013400
_0800F89C: .4byte gUnknown_081DE3E8
_0800F8A0: .4byte 0x040000D4
_0800F8A4: .4byte 0x80000400
_0800F8A8: .4byte 0x0000C038
_0800F8AC:
	movs r0, #0
	mov r2, sb
	strb r0, [r2]
	movs r5, #0x96
	lsls r5, r5, #1
	strh r5, [r4, #2]
	adds r4, #8
	adds r6, r5, #0
	strh r6, [r4, #2]
	adds r4, #8
	adds r6, r1, #1
_0800F8C2:
	adds r1, r6, #0
	movs r7, #1
	add sb, r7
	adds r3, #1
	cmp r3, #3
	bls _0800F82C
	movs r1, #0
	ldr r0, [sp]
	strb r1, [r0, #4]
	mov r2, r8
	ldrb r0, [r2, #0xa]
	adds r0, #1
	strb r0, [r2, #0xa]
	strb r1, [r2, #0xb]
	movs r3, #0
	ldr r2, _0800F920 @ =gInvestigation+0x12
_0800F8E2:
	adds r0, r3, r2
	ldrb r0, [r0]
	adds r1, r0, r1
	adds r3, #1
	cmp r3, #3
	bls _0800F8E2
	cmp r1, #0
	beq _0800F8F4
	b _0800FD86
_0800F8F4:
	movs r0, #1
	bl sub_80037FC
	ldr r1, _0800F924 @ =gInvestigation
	movs r0, #4
	strb r0, [r1, #0xe]
	ldr r0, _0800F928 @ =gMain
	adds r1, r0, #0
	adds r1, #0xb3
	ldrb r1, [r1]
	cmp r1, #0xf
	bne _0800F930
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0x17
	beq _0800F916
	b _0800FD86
_0800F916:
	ldr r0, _0800F92C @ =0x00000159
	bl sub_8007538
	b _0800FD86
	.align 2, 0
_0800F920: .4byte gInvestigation+0x12
_0800F924: .4byte gInvestigation
_0800F928: .4byte gMain
_0800F92C: .4byte 0x00000159
_0800F930:
	movs r0, #0x1d
	bl sub_8007538
	b _0800FD86
_0800F938:
	ldr r6, _0800F9A8 @ =gOamObjects+0x1A8
	mov r3, r8
	ldrb r3, [r3, #0xb]
	cmp r3, #0xc
	bhi _0800F96C
	adds r4, r6, #0
	subs r4, #0x78
	movs r3, #0
	movs r5, #4
_0800F94A:
	movs r2, #0
	subs r0, r5, r3
	lsls r1, r0, #1
_0800F950:
	ldrh r7, [r4]
	subs r0, r7, r1
	strh r0, [r4]
	adds r4, #8
	adds r2, #1
	cmp r2, #1
	bls _0800F950
	adds r3, #1
	cmp r3, #3
	bls _0800F94A
	mov r1, r8
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
_0800F96C:
	adds r4, r6, #0
	ldrh r0, [r4, #2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r5, r0
	subs r0, #6
	ldr r1, _0800F9AC @ =0x000001FF
	ands r0, r1
	strh r0, [r4, #2]
	cmp r0, #0xff
	bls _0800F986
	movs r0, #0
	strh r0, [r4, #2]
_0800F986:
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _0800F9A0
	mov r2, r8
	ldrb r2, [r2, #0xb]
	cmp r2, #0xc
	bls _0800F9A0
	mov r3, r8
	ldrb r0, [r3, #0xa]
	adds r0, #1
	strb r0, [r3, #0xa]
	movs r0, #0
	strb r0, [r3, #0xb]
_0800F9A0:
	ldrh r6, [r4, #2]
	orrs r5, r6
	strh r5, [r4, #2]
	b _0800FD86
	.align 2, 0
_0800F9A8: .4byte gOamObjects+0x1A8
_0800F9AC: .4byte 0x000001FF
_0800F9B0:
	mov r0, r8
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800F9BC
	b _0800FD86
_0800F9BC:
	movs r4, #0
	movs r3, #0
	ldr r1, _0800FA04 @ =gInvestigation+0x12
_0800F9C2:
	adds r0, r3, r1
	ldrb r0, [r0]
	adds r4, r0, r4
	adds r3, #1
	cmp r3, #3
	bls _0800F9C2
	cmp r4, #0
	bne _0800FA10
	ldr r1, _0800FA08 @ =gScriptContext
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800F9E0
	b _0800FDDE
_0800F9E0:
	movs r0, #0
	bl sub_80037FC
	ldr r1, _0800FA0C @ =gInvestigation
	movs r0, #4
	strb r0, [r1, #0xe]
	movs r0, #0xe0
	strb r0, [r1, #0xf]
	movs r0, #0x10
	strb r0, [r1, #0x10]
	strb r4, [r1, #0x11]
	mov r7, r8
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	strb r4, [r7, #0xb]
	b _0800FDDE
	.align 2, 0
_0800FA04: .4byte gInvestigation+0x12
_0800FA08: .4byte gScriptContext
_0800FA0C: .4byte gInvestigation
_0800FA10:
	ldr r0, _0800FA74 @ =gJoypad
	ldrh r1, [r0, #2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800FA94
	mov r4, r8
	adds r4, #0xdc
	ldr r0, [r4]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800FA2C
	b _0800FD86
_0800FA2C:
	ldr r5, _0800FA78 @ =gMain
	ldrh r0, [r5, #0x30]
	cmp r0, #0x7f
	bne _0800FA36
	b _0800FD86
_0800FA36:
	bl sub_80139EC
	ldr r0, _0800FA7C @ =0x040000D4
	ldr r1, _0800FA80 @ =gOamObjects
	str r1, [r0]
	ldr r2, _0800FA84 @ =gUnknown_0200093C
	str r2, [r0, #4]
	ldr r1, _0800FA88 @ =0x80000200
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r5, [r0]
	ldr r1, _0800FA8C @ =0xFFFFF6F8
	adds r2, r2, r1
	str r2, [r0, #4]
	ldr r1, _0800FA90 @ =0x80000160
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #0x31
	bl sub_8013834
	ldr r0, [r4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	ldr r0, [r5, #8]
	mov r2, r8
	str r0, [r2, #0xc]
	movs r0, #0xa
	str r0, [r2, #8]
	b _0800FD86
	.align 2, 0
_0800FA74: .4byte gJoypad
_0800FA78: .4byte gMain
_0800FA7C: .4byte 0x040000D4
_0800FA80: .4byte gOamObjects
_0800FA84: .4byte gUnknown_0200093C
_0800FA88: .4byte 0x80000200
_0800FA8C: .4byte 0xFFFFF6F8
_0800FA90: .4byte 0x80000160
_0800FA94:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800FAE6
	mov r0, r8
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800FAAE
	b _0800FD86
_0800FAAE:
	movs r0, #0x31
	bl sub_8013834
	movs r0, #6
	mov r3, r8
	strb r0, [r3, #0xa]
	ldr r0, _0800FAD8 @ =gMain+0x8
	ldr r0, [r0]
	str r0, [r3, #0xc]
	movs r0, #7
	str r0, [r3, #8]
	ldr r4, _0800FADC @ =gOamObjects+0x130
	movs r3, #0
	movs r0, #0x96
	lsls r0, r0, #1
_0800FACC:
	strh r0, [r4, #2]
	adds r4, #8
	adds r3, #1
	cmp r3, #7
	bls _0800FACC
	b _0800FD86
	.align 2, 0
_0800FAD8: .4byte gMain+0x8
_0800FADC: .4byte gOamObjects+0x130
_0800FAE0:
	ldr r6, [sp]
	strb r2, [r6, #4]
	b _0800FB10
_0800FAE6:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800FB22
	movs r3, #0
	ldr r7, [sp]
	ldrb r0, [r7, #4]
	subs r2, r0, #1
	adds r5, r0, #0
	movs r4, #3
	adds r1, r7, #0
	adds r1, #0x12
_0800FAFE:
	ands r2, r4
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800FAE0
	subs r2, #1
	adds r3, #1
	cmp r3, #3
	bls _0800FAFE
_0800FB10:
	ldr r0, [sp]
	ldrb r0, [r0, #4]
	cmp r5, r0
	bne _0800FB1A
	b _0800FD86
_0800FB1A:
	b _0800FB56
_0800FB1C:
	ldr r1, [sp]
	strb r2, [r1, #4]
	b _0800FB4C
_0800FB22:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800FB5E
	movs r3, #0
	ldr r2, [sp]
	ldrb r0, [r2, #4]
	adds r2, r0, #1
	adds r5, r0, #0
	movs r4, #3
	ldr r1, [sp]
	adds r1, #0x12
_0800FB3A:
	ands r2, r4
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800FB1C
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bls _0800FB3A
_0800FB4C:
	ldr r3, [sp]
	ldrb r3, [r3, #4]
	cmp r5, r3
	bne _0800FB56
	b _0800FD86
_0800FB56:
	movs r0, #0x2a
	bl sub_8013834
	b _0800FD86
_0800FB5E:
	movs r4, #1
	ands r4, r1
	cmp r4, #0
	beq _0800FBA8
	movs r0, #0x2b
	bl sub_8013834
	mov r3, r8
	adds r3, #0xb2
	ldr r5, [sp]
	ldrb r2, [r5, #4]
	adds r2, #1
	ldrb r6, [r3]
	lsls r1, r6, #2
	adds r1, r1, r6
	adds r1, r2, r1
	movs r0, #0x90
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
	movs r0, #0x14
	bl sub_8013AE4
	movs r0, #2
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	ldr r0, _0800FBA4 @ =0x00000504
	mov r7, r8
	str r0, [r7, #8]
	b _0800FD86
	.align 2, 0
_0800FBA4: .4byte 0x00000504
_0800FBA8:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800FBB2
	b _0800FD86
_0800FBB2:
	movs r0, #0x2c
	bl sub_8013834
	mov r1, r8
	ldrb r0, [r1, #0xa]
	adds r0, #1
	strb r0, [r1, #0xa]
	strb r4, [r1, #0xb]
	b _0800FD86
_0800FBC4:
	ldr r6, _0800FC40 @ =gOamObjects+0x1A8
	mov r2, r8
	ldrb r2, [r2, #0xb]
	cmp r2, #0xc
	bhi _0800FBFA
	adds r4, r6, #0
	subs r4, #0x78
	movs r3, #0
	movs r5, #4
_0800FBD6:
	movs r2, #0
	subs r0, r5, r3
	lsls r1, r0, #1
_0800FBDC:
	ldrh r0, [r4]
	adds r0, #4
	adds r0, r0, r1
	strh r0, [r4]
	adds r4, #8
	adds r2, #1
	cmp r2, #1
	bls _0800FBDC
	adds r3, #1
	cmp r3, #3
	bls _0800FBD6
	mov r3, r8
	ldrb r0, [r3, #0xb]
	adds r0, #1
	strb r0, [r3, #0xb]
_0800FBFA:
	adds r4, r6, #0
	ldrh r0, [r4, #2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r5, r0
	adds r0, #6
	ldr r1, _0800FC44 @ =0x000001FF
	ands r0, r1
	strh r0, [r4, #2]
	cmp r0, #0x3b
	bls _0800FC36
	movs r0, #0x3c
	strh r0, [r4, #2]
	ldr r0, [sp]
	movs r1, #0xd
	bl sub_800EB24
	movs r0, #2
	ldr r6, [sp]
	strb r0, [r6, #0xe]
	movs r0, #0xe0
	strb r0, [r6, #0xf]
	movs r0, #0x10
	strb r0, [r6, #0x10]
	movs r0, #0
	strb r0, [r6, #0x11]
	mov r7, r8
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_0800FC36:
	ldrh r0, [r4, #2]
	orrs r5, r0
	strh r5, [r4, #2]
	b _0800FD86
	.align 2, 0
_0800FC40: .4byte gOamObjects+0x1A8
_0800FC44: .4byte 0x000001FF
_0800FC48:
	mov r1, r8
	ldrb r1, [r1, #0xb]
	cmp r1, #0xc
	bhi _0800FC7A
	ldr r4, _0800FCB4 @ =gOamObjects+0x130
	movs r3, #0
	movs r5, #4
_0800FC56:
	movs r2, #0
	subs r0, r5, r3
	lsls r1, r0, #1
_0800FC5C:
	ldrh r0, [r4]
	adds r0, #4
	adds r0, r0, r1
	strh r0, [r4]
	adds r4, #8
	adds r2, #1
	cmp r2, #1
	bls _0800FC5C
	adds r3, #1
	cmp r3, #3
	bls _0800FC56
	mov r2, r8
	ldrb r0, [r2, #0xb]
	adds r0, #1
	strb r0, [r2, #0xb]
_0800FC7A:
	ldr r3, [sp]
	ldrb r0, [r3, #0x10]
	cmp r0, #8
	bls _0800FC86
	subs r0, #1
	strb r0, [r3, #0x10]
_0800FC86:
	ldr r5, [sp]
	ldrb r1, [r5, #0xe]
	cmp r1, #0
	bne _0800FD86
	mov r6, r8
	ldrb r6, [r6, #0xb]
	cmp r6, #0xc
	bls _0800FD86
	movs r0, #0x82
	lsls r0, r0, #1
	mov r7, r8
	str r0, [r7, #8]
	movs r0, #1
	ldrb r2, [r5, #0xc]
	lsls r0, r2
	ldrb r3, [r5, #8]
	adds r0, r3, r0
	strb r0, [r5, #8]
	movs r0, #8
	strb r0, [r5, #0x10]
	strb r1, [r5, #0x11]
	b _0800FD86
	.align 2, 0
_0800FCB4: .4byte gOamObjects+0x130
_0800FCB8:
	ldr r4, _0800FD38 @ =gOamObjects+0x130
	mov r1, r8
	adds r1, #0xb2
	ldrb r5, [r1]
	lsls r0, r5, #2
	adds r0, r0, r5
	mov r6, r8
	adds r1, r0, r6
	ldr r7, _0800FD3C @ =0x00000121
	adds r1, r1, r7
	movs r3, #0
	ldr r0, [sp]
	adds r0, #0x12
	mov sb, r0
	movs r2, #0
	str r2, [sp, #4]
_0800FCD8:
	lsls r0, r3, #0xb
	ldr r5, _0800FD40 @ =0x06013400
	adds r2, r0, r5
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0800FD58
	movs r0, #1
	mov r6, sb
	strb r0, [r6]
	ldrb r7, [r1]
	lsls r5, r7, #0xb
	ldr r0, _0800FD44 @ =gUnknown_081DE3E8
	adds r5, r5, r0
	ldr r6, _0800FD48 @ =0x040000D4
	str r5, [r6]
	str r2, [r6, #4]
	ldr r0, _0800FD4C @ =0x80000400
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	movs r2, #0
	adds r6, r1, #1
	ldr r7, [sp, #4]
	ldr r0, _0800FD50 @ =0x00004018
	adds r7, r7, r0
	mov ip, r7
	movs r5, #0xd0
	lsls r5, r5, #1
	lsls r1, r3, #6
	str r1, [sp, #8]
	movs r7, #0x90
	lsls r7, r7, #8
	mov sl, r7
	ldr r1, _0800FD54 @ =0x0000C038
_0800FD1A:
	mov r0, ip
	strh r0, [r4]
	strh r1, [r4, #2]
	ldr r7, [sp, #8]
	adds r0, r5, r7
	mov r7, sl
	orrs r0, r7
	strh r0, [r4, #4]
	adds r4, #8
	adds r5, #0x20
	adds r1, #0x40
	adds r2, #1
	cmp r2, #1
	bls _0800FD1A
	b _0800FD6E
	.align 2, 0
_0800FD38: .4byte gOamObjects+0x130
_0800FD3C: .4byte 0x00000121
_0800FD40: .4byte 0x06013400
_0800FD44: .4byte gUnknown_081DE3E8
_0800FD48: .4byte 0x040000D4
_0800FD4C: .4byte 0x80000400
_0800FD50: .4byte 0x00004018
_0800FD54: .4byte 0x0000C038
_0800FD58:
	movs r0, #0
	mov r2, sb
	strb r0, [r2]
	movs r5, #0x96
	lsls r5, r5, #1
	strh r5, [r4, #2]
	adds r4, #8
	adds r6, r5, #0
	strh r6, [r4, #2]
	adds r4, #8
	adds r6, r1, #1
_0800FD6E:
	adds r1, r6, #0
	movs r7, #1
	add sb, r7
	ldr r0, [sp, #4]
	adds r0, #0x1e
	str r0, [sp, #4]
	adds r3, #1
	cmp r3, #3
	bls _0800FCD8
	movs r0, #3
	mov r1, r8
	strb r0, [r1, #0xa]
_0800FD86:
	ldr r4, _0800FDB4 @ =gOamObjects+0x130
	movs r3, #0
_0800FD8A:
	ldr r2, [sp]
	ldrb r2, [r2, #4]
	cmp r3, r2
	bne _0800FDBC
	movs r2, #0
	adds r3, #1
	ldr r5, _0800FDB8 @ =0x00000FFF
	movs r6, #0x90
	lsls r6, r6, #8
	adds r1, r6, #0
_0800FD9E:
	adds r0, r5, #0
	ldrh r7, [r4, #4]
	ands r0, r7
	adds r0, r0, r1
	strh r0, [r4, #4]
	adds r4, #8
	adds r2, #1
	cmp r2, #1
	bls _0800FD9E
	b _0800FDDA
	.align 2, 0
_0800FDB4: .4byte gOamObjects+0x130
_0800FDB8: .4byte 0x00000FFF
_0800FDBC:
	movs r2, #0
	adds r3, #1
	ldr r5, _0800FDF0 @ =0x00000FFF
	movs r0, #0xa0
	lsls r0, r0, #8
	adds r1, r0, #0
_0800FDC8:
	adds r0, r5, #0
	ldrh r6, [r4, #4]
	ands r0, r6
	adds r0, r0, r1
	strh r0, [r4, #4]
	adds r4, #8
	adds r2, #1
	cmp r2, #1
	bls _0800FDC8
_0800FDDA:
	cmp r3, #3
	bls _0800FD8A
_0800FDDE:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800FDF0: .4byte 0x00000FFF

	thumb_func_start sub_800FDF4
sub_800FDF4: @ 0x0800FDF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov sl, r0
	str r1, [sp]
	ldrb r0, [r0, #0xa]
	cmp r0, #8
	bls _0800FE0E
	bl _080108B6
_0800FE0E:
	lsls r0, r0, #2
	ldr r1, _0800FE18 @ =_0800FE1C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800FE18: .4byte _0800FE1C
_0800FE1C: @ jump table
	.4byte _0800FE40 @ case 0
	.4byte _0800FE68 @ case 1
	.4byte _0800FFB0 @ case 2
	.4byte _08010028 @ case 3
	.4byte _080103C8 @ case 4
	.4byte _0801044C @ case 5
	.4byte _080104F8 @ case 6
	.4byte _0801076C @ case 7
	.4byte _080107C0 @ case 8
_0800FE40:
	ldr r1, [sp]
	ldrb r0, [r1, #0x10]
	cmp r0, #0xf
	bhi _0800FE4C
	adds r0, #1
	strb r0, [r1, #0x10]
_0800FE4C:
	movs r0, #0
	ldr r2, [sp]
	strb r0, [r2, #0x11]
	ldrb r3, [r2, #0x10]
	cmp r3, #0xf
	bhi _0800FE5C
	bl _080108B6
_0800FE5C:
	mov r4, sl
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	bl _080108B6
_0800FE68:
	ldr r3, _0800FF0C @ =gUnknown_03002920
	ldrb r1, [r3]
	adds r0, r1, #0
	ldr r5, _0800FF10 @ =gOamObjects+0x130
	ldr r7, [sp]
	adds r7, #0x12
	str r7, [sp, #8]
	cmp r0, #0xff
	beq _0800FE9E
	mov r0, sl
	adds r0, #0xb2
	ldrb r2, [r0]
	ldr r4, _0800FF14 @ =gUnknown_03000852
_0800FE82:
	cmp r2, r1
	bne _0800FE94
	ldrb r0, [r4]
	ldrb r1, [r3, #1]
	cmp r0, r1
	bne _0800FE94
	ldrb r7, [r3, #3]
	cmp r7, #1
	beq _0800FE9E
_0800FE94:
	adds r3, #0x14
	ldrb r1, [r3]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0800FE82
_0800FE9E:
	adds r6, r5, #0
	adds r1, r3, #4
	movs r7, #0
	ldr r0, [sp, #8]
	mov r8, r0
_0800FEA8:
	lsls r0, r7, #0xb
	ldr r3, _0800FF18 @ =0x06013400
	adds r2, r0, r3
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0800FF2C
	movs r0, #1
	mov r4, r8
	strb r0, [r4]
	ldrb r0, [r1]
	lsls r5, r0, #0xb
	ldr r3, _0800FF1C @ =gUnknown_081EB3E8
	adds r5, r5, r3
	ldr r4, _0800FF20 @ =0x040000D4
	str r5, [r4]
	str r2, [r4, #4]
	ldr r0, _0800FF24 @ =0x80000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r4, #0
	lsls r0, r7, #2
	adds r2, r1, #1
	movs r5, #0x81
	lsls r5, r5, #7
	adds r5, r5, r0
	mov ip, r5
	movs r3, #0xd0
	lsls r3, r3, #1
	lsls r0, r7, #6
	str r0, [sp, #0x18]
	movs r1, #0x90
	lsls r1, r1, #8
	mov sb, r1
	ldr r1, _0800FF28 @ =0x0000C038
_0800FEEC:
	mov r5, ip
	strh r5, [r6]
	strh r1, [r6, #2]
	ldr r5, [sp, #0x18]
	adds r0, r3, r5
	mov r5, sb
	orrs r0, r5
	strh r0, [r6, #4]
	adds r6, #8
	adds r3, #0x20
	adds r1, #0x40
	adds r4, #1
	cmp r4, #1
	bls _0800FEEC
	b _0800FF42
	.align 2, 0
_0800FF0C: .4byte gUnknown_03002920
_0800FF10: .4byte gOamObjects+0x130
_0800FF14: .4byte gUnknown_03000852
_0800FF18: .4byte 0x06013400
_0800FF1C: .4byte gUnknown_081EB3E8
_0800FF20: .4byte 0x040000D4
_0800FF24: .4byte 0x80000400
_0800FF28: .4byte 0x0000C038
_0800FF2C:
	movs r0, #0
	mov r2, r8
	strb r0, [r2]
	movs r3, #0x96
	lsls r3, r3, #1
	strh r3, [r6, #2]
	adds r6, #8
	adds r4, r3, #0
	strh r4, [r6, #2]
	adds r6, #8
	adds r2, r1, #1
_0800FF42:
	adds r1, r2, #0
	movs r5, #1
	add r8, r5
	adds r7, #1
	cmp r7, #3
	bls _0800FEA8
	ldr r1, _0800FF80 @ =0x040000D4
	ldr r0, _0800FF84 @ =gUnknown_08142BFC
	str r0, [r1]
	ldr r0, _0800FF88 @ =0x06015400
	str r0, [r1, #4]
	ldr r0, _0800FF8C @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800FF90 @ =gUnknown_0814DE80
	str r0, [r1]
	ldr r0, _0800FF94 @ =0x05000360
	str r0, [r1, #4]
	ldr r0, _0800FF98 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r7, [sp]
	ldrb r1, [r7, #5]
	adds r0, r1, #0
	cmp r0, #0
	beq _0800FF9C
	movs r0, #0
	strb r1, [r7, #4]
	strb r0, [r7, #5]
	b _0800FFA0
	.align 2, 0
_0800FF80: .4byte 0x040000D4
_0800FF84: .4byte gUnknown_08142BFC
_0800FF88: .4byte 0x06015400
_0800FF8C: .4byte 0x80000100
_0800FF90: .4byte gUnknown_0814DE80
_0800FF94: .4byte 0x05000360
_0800FF98: .4byte 0x80000010
_0800FF9C:
	ldr r1, [sp]
	strb r0, [r1, #4]
_0800FFA0:
	mov r2, sl
	ldrb r0, [r2, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r2, #0xa]
	strb r1, [r2, #0xb]
	bl _080108B6
_0800FFB0:
	ldr r3, _08010020 @ =gOamObjects+0x1B0
	mov r4, sl
	ldrb r4, [r4, #0xb]
	cmp r4, #0xc
	bhi _0800FFE4
	adds r6, r3, #0
	subs r6, #0x80
	movs r7, #0
	movs r2, #4
_0800FFC2:
	movs r4, #0
	subs r0, r2, r7
	lsls r1, r0, #1
_0800FFC8:
	ldrh r5, [r6]
	subs r0, r5, r1
	strh r0, [r6]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _0800FFC8
	adds r7, #1
	cmp r7, #3
	bls _0800FFC2
	mov r7, sl
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
_0800FFE4:
	adds r6, r3, #0
	ldrh r0, [r6, #2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r5, r0
	subs r0, #9
	ldr r1, _08010024 @ =0x000001FF
	ands r0, r1
	strh r0, [r6, #2]
	cmp r0, #0xff
	bls _0800FFFE
	movs r0, #0
	strh r0, [r6, #2]
_0800FFFE:
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _08010006
	b _0801043A
_08010006:
	mov r0, sl
	ldrb r0, [r0, #0xb]
	cmp r0, #0xc
	bhi _08010010
	b _0801043A
_08010010:
	mov r1, sl
	ldrb r0, [r1, #0xa]
	adds r0, #1
	strb r0, [r1, #0xa]
	movs r0, #0
	strb r0, [r1, #0xb]
	b _0801043A
	.align 2, 0
_08010020: .4byte gOamObjects+0x1B0
_08010024: .4byte 0x000001FF
_08010028:
	ldr r1, _08010108 @ =0x040000D4
	ldr r0, _0801010C @ =gUnknown_08142BFC
	str r0, [r1]
	ldr r0, _08010110 @ =0x06015400
	str r0, [r1, #4]
	ldr r0, _08010114 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08010118 @ =gUnknown_0814DE80
	str r0, [r1]
	ldr r0, _0801011C @ =0x05000360
	str r0, [r1, #4]
	ldr r0, _08010120 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r3, _08010124 @ =gUnknown_03002920
	ldrb r1, [r3]
	adds r0, r1, #0
	mov r5, sl
	adds r5, #0x7e
	cmp r0, #0xff
	beq _08010078
	mov r0, sl
	adds r0, #0xb2
	ldrb r2, [r0]
	ldr r4, _08010128 @ =gUnknown_03000852
_0801005C:
	cmp r2, r1
	bne _0801006E
	ldrb r7, [r4]
	ldrb r0, [r3, #1]
	cmp r7, r0
	bne _0801006E
	ldrb r1, [r3, #3]
	cmp r1, #1
	beq _08010078
_0801006E:
	adds r3, #0x14
	ldrb r1, [r3]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0801005C
_08010078:
	movs r2, #1
	ldrh r0, [r5]
	cmp r0, #0
	beq _08010082
	b _080102F2
_08010082:
	ldr r0, _0801012C @ =gJoypad
	ldrh r1, [r0, #2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08010158
	mov r5, sl
	adds r5, #0xdc
	ldr r0, [r5]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801009E
	b _080102F2
_0801009E:
	ldr r6, _08010130 @ =gMain
	ldrh r4, [r6, #0x30]
	cmp r4, #0x7f
	bne _080100A8
	b _080102F2
_080100A8:
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl sub_80139EC
	ldr r0, _08010108 @ =0x040000D4
	ldr r1, _08010134 @ =gOamObjects
	str r1, [r0]
	ldr r4, _08010138 @ =gUnknown_0200093C
	str r4, [r0, #4]
	ldr r1, _0801013C @ =0x80000200
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r6, [r0]
	ldr r7, _08010140 @ =0xFFFFF6F8
	adds r1, r4, r7
	str r1, [r0, #4]
	ldr r1, _08010144 @ =0x80000160
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _08010148 @ =gScriptContext
	ldr r0, [r0, #0x38]
	ldr r1, _0801014C @ =0xFF0000FF
	ands r0, r1
	ldr r1, _08010150 @ =0x01000002
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	cmp r0, r1
	bne _080100E6
	ldr r1, _08010154 @ =0xFFFFF711
	adds r0, r4, r1
	strb r2, [r0]
_080100E6:
	movs r0, #0x31
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl sub_8013834
	ldr r0, [r5]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5]
	ldr r0, [r6, #8]
	mov r4, sl
	str r0, [r4, #0xc]
	movs r0, #0xa
	str r0, [r4, #8]
	ldr r2, [sp, #0x10]
	b _080102F0
	.align 2, 0
_08010108: .4byte 0x040000D4
_0801010C: .4byte gUnknown_08142BFC
_08010110: .4byte 0x06015400
_08010114: .4byte 0x80000100
_08010118: .4byte gUnknown_0814DE80
_0801011C: .4byte 0x05000360
_08010120: .4byte 0x80000010
_08010124: .4byte gUnknown_03002920
_08010128: .4byte gUnknown_03000852
_0801012C: .4byte gJoypad
_08010130: .4byte gMain
_08010134: .4byte gOamObjects
_08010138: .4byte gUnknown_0200093C
_0801013C: .4byte 0x80000200
_08010140: .4byte 0xFFFFF6F8
_08010144: .4byte 0x80000160
_08010148: .4byte gScriptContext
_0801014C: .4byte 0xFF0000FF
_08010150: .4byte 0x01000002
_08010154: .4byte 0xFFFFF711
_08010158:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080101B2
	mov r0, sl
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08010172
	b _080102F2
_08010172:
	movs r0, #0x31
	str r3, [sp, #0x14]
	bl sub_8013834
	movs r0, #8
	mov r5, sl
	strb r0, [r5, #0xa]
	ldr r0, _080101A4 @ =gMain+0x8
	ldr r0, [r0]
	str r0, [r5, #0xc]
	movs r0, #7
	str r0, [r5, #8]
	ldr r6, _080101A8 @ =gOamObjects+0x130
	movs r7, #0
	movs r0, #0x96
	lsls r0, r0, #1
	ldr r3, [sp, #0x14]
_08010194:
	strh r0, [r6, #2]
	adds r6, #8
	adds r7, #1
	cmp r7, #7
	bls _08010194
	movs r2, #0
	b _080102F2
	.align 2, 0
_080101A4: .4byte gMain+0x8
_080101A8: .4byte gOamObjects+0x130
_080101AC:
	ldr r7, [sp]
	strb r4, [r7, #4]
	b _080101DA
_080101B2:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080101F8
	movs r7, #0
	ldr r1, [sp]
	ldrb r0, [r1, #4]
	subs r4, r0, #1
	adds r5, r0, #0
	movs r6, #3
	adds r1, #0x12
_080101C8:
	ands r4, r6
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080101AC
	subs r4, #1
	adds r7, #1
	cmp r7, #3
	bls _080101C8
_080101DA:
	ldr r4, [sp]
	ldrb r4, [r4, #4]
	cmp r5, r4
	bne _080101E4
	b _080102F2
_080101E4:
	movs r0, #0x2a
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl sub_8013834
	ldr r2, [sp, #0x10]
	b _080102F0
_080101F2:
	ldr r7, [sp]
	strb r4, [r7, #4]
	b _08010224
_080101F8:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _0801023A
	movs r7, #0
	ldr r1, [sp]
	ldrb r0, [r1, #4]
	adds r4, r0, #1
	adds r5, r0, #0
	movs r6, #3
	adds r1, #0x12
_08010212:
	ands r4, r6
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080101F2
	adds r4, #1
	adds r7, #1
	cmp r7, #3
	bls _08010212
_08010224:
	ldr r4, [sp]
	ldrb r4, [r4, #4]
	cmp r5, r4
	beq _080102F2
	movs r0, #0x2a
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl sub_8013834
	ldr r2, [sp, #0x10]
	b _080102F0
_0801023A:
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080102D4
	movs r0, #0x2b
	str r3, [sp, #0x14]
	bl sub_8013834
	ldr r5, [sp]
	ldrb r5, [r5, #4]
	lsls r1, r5, #1
	ldr r3, [sp, #0x14]
	adds r0, r3, #0
	adds r0, #0xc
	adds r0, r0, r1
	ldrh r5, [r0]
	adds r0, r5, #0
	bl sub_8007538
	movs r0, #1
	bl sub_80037FC
	ldr r3, [sp, #0x14]
	adds r4, r3, #0
	adds r4, #8
	ldr r7, [sp]
	ldrb r7, [r7, #4]
	adds r0, r7, r4
	ldrb r1, [r0]
	movs r0, #2
	bl sub_8004338
	adds r1, r0, #0
	str r4, [sp, #4]
	ldr r3, [sp, #0x14]
	cmp r1, #0
	beq _08010294
	ldr r0, _08010290 @ =gScriptContext
	strb r6, [r0, #0x13]
	b _080102AE
	.align 2, 0
_08010290: .4byte gScriptContext
_08010294:
	ldr r0, _080102D0 @ =gScriptContext
	strb r1, [r0, #0x13]
	ldr r1, [sp]
	ldrb r1, [r1, #4]
	ldr r2, [sp, #4]
	adds r0, r1, r2
	ldrb r1, [r0]
	movs r0, #2
	movs r2, #1
	str r3, [sp, #0x14]
	bl sub_80042FC
	ldr r3, [sp, #0x14]
_080102AE:
	ldr r0, [sp]
	movs r1, #4
	str r3, [sp, #0x14]
	bl sub_800EB24
	movs r1, #0
	movs r0, #0xf0
	ldr r4, [sp]
	strb r0, [r4, #0xf]
	movs r0, #3
	strb r0, [r4, #0xe]
	movs r0, #6
	mov r5, sl
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xb]
	b _080102EE
	.align 2, 0
_080102D0: .4byte gScriptContext
_080102D4:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080102F2
	movs r0, #0x2c
	str r3, [sp, #0x14]
	bl sub_8013834
	mov r7, sl
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	strb r4, [r7, #0xb]
_080102EE:
	movs r2, #0
_080102F0:
	ldr r3, [sp, #0x14]
_080102F2:
	ldr r6, _08010360 @ =gOamObjects+0x110
	cmp r2, #0
	beq _080103B6
	movs r7, #0
	adds r0, r3, #0
	adds r0, #8
	str r0, [sp, #4]
	ldr r5, _08010364 @ =0x040000D4
	movs r1, #0x10
	mov sl, r1
	movs r2, #0x16
	mov sb, r2
	adds r3, #0xc
	mov r8, r3
_0801030E:
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r6, #2]
	movs r4, #0
_08010316:
	ldr r3, [sp, #4]
	adds r0, r3, r7
	ldrb r1, [r0]
	movs r0, #2
	bl sub_8004338
	cmp r0, #0
	beq _0801039C
	mov r4, r8
	ldrh r0, [r4]
	bl sub_800EADC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08010384
	ldr r0, _08010368 @ =gUnknown_081471FC
	str r0, [r5]
	ldr r0, _0801036C @ =0x06013000
	str r0, [r5, #4]
	ldr r0, _08010370 @ =0x80000100
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08010374 @ =gUnknown_0814E320
	str r0, [r5]
	ldr r0, _08010378 @ =0x050002E0
	str r0, [r5, #4]
	ldr r0, _0801037C @ =0x80000010
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	mov r0, sb
	strh r0, [r6]
	ldr r0, _08010380 @ =0x00008024
	strh r0, [r6, #2]
	movs r0, #0xe3
	lsls r0, r0, #7
	strh r0, [r6, #4]
	b _080103A2
	.align 2, 0
_08010360: .4byte gOamObjects+0x110
_08010364: .4byte 0x040000D4
_08010368: .4byte gUnknown_081471FC
_0801036C: .4byte 0x06013000
_08010370: .4byte 0x80000100
_08010374: .4byte gUnknown_0814E320
_08010378: .4byte 0x050002E0
_0801037C: .4byte 0x80000010
_08010380: .4byte 0x00008024
_08010384:
	mov r1, sl
	strh r1, [r6]
	ldr r0, _08010394 @ =0x00008030
	strh r0, [r6, #2]
	ldr r0, _08010398 @ =0x0000B2A0
	strh r0, [r6, #4]
	b _080103A2
	.align 2, 0
_08010394: .4byte 0x00008030
_08010398: .4byte 0x0000B2A0
_0801039C:
	adds r4, #1
	cmp r4, #3
	bls _08010316
_080103A2:
	adds r6, #8
	movs r2, #0x1e
	add sl, r2
	add sb, r2
	movs r3, #2
	add r8, r3
	adds r7, #1
	cmp r7, #3
	bls _0801030E
	b _080108B6
_080103B6:
	movs r7, #0
	movs r0, #0x96
	lsls r0, r0, #1
_080103BC:
	strh r0, [r6, #2]
	adds r6, #8
	adds r7, #1
	cmp r7, #3
	bls _080103BC
	b _080108B6
_080103C8:
	ldr r3, _08010444 @ =gOamObjects+0x1B0
	mov r4, sl
	ldrb r4, [r4, #0xb]
	cmp r4, #0xc
	bhi _080103FE
	adds r6, r3, #0
	subs r6, #0x80
	movs r7, #0
	movs r2, #4
_080103DA:
	movs r4, #0
	subs r0, r2, r7
	lsls r1, r0, #1
_080103E0:
	ldrh r0, [r6]
	adds r0, #4
	adds r0, r0, r1
	strh r0, [r6]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _080103E0
	adds r7, #1
	cmp r7, #3
	bls _080103DA
	mov r5, sl
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_080103FE:
	adds r6, r3, #0
	ldrh r0, [r6, #2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r5, r0
	adds r0, #9
	ldr r1, _08010448 @ =0x000001FF
	ands r0, r1
	strh r0, [r6, #2]
	cmp r0, #0x77
	bls _0801043A
	movs r0, #0x78
	strh r0, [r6, #2]
	ldr r0, [sp]
	movs r1, #0xb
	bl sub_800EB24
	movs r0, #2
	ldr r7, [sp]
	strb r0, [r7, #0xe]
	movs r0, #0xe0
	strb r0, [r7, #0xf]
	movs r0, #0x10
	strb r0, [r7, #0x10]
	movs r0, #0
	strb r0, [r7, #0x11]
	mov r1, sl
	ldrb r0, [r1, #0xa]
	adds r0, #1
	strb r0, [r1, #0xa]
_0801043A:
	ldrh r2, [r6, #2]
	orrs r5, r2
	strh r5, [r6, #2]
	b _080108B6
	.align 2, 0
_08010444: .4byte gOamObjects+0x1B0
_08010448: .4byte 0x000001FF
_0801044C:
	mov r3, sl
	ldrb r3, [r3, #0xb]
	cmp r3, #0xc
	bhi _0801047E
	ldr r6, _080104D8 @ =gOamObjects+0x130
	movs r7, #0
	movs r2, #4
_0801045A:
	movs r4, #0
	subs r0, r2, r7
	lsls r1, r0, #1
_08010460:
	ldrh r0, [r6]
	adds r0, #4
	adds r0, r0, r1
	strh r0, [r6]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _08010460
	adds r7, #1
	cmp r7, #3
	bls _0801045A
	mov r4, sl
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_0801047E:
	ldr r5, [sp]
	ldrb r0, [r5, #0x10]
	cmp r0, #8
	bls _0801048A
	subs r0, #1
	strb r0, [r5, #0x10]
_0801048A:
	ldr r7, [sp]
	ldrb r2, [r7, #0xe]
	cmp r2, #0
	beq _08010494
	b _080108B6
_08010494:
	mov r0, sl
	ldrb r0, [r0, #0xb]
	cmp r0, #0xc
	bhi _0801049E
	b _080108B6
_0801049E:
	ldr r1, _080104DC @ =0x040000D4
	ldr r0, _080104E0 @ =gUnknown_081412FC
	str r0, [r1]
	ldr r0, _080104E4 @ =0x06013000
	str r0, [r1, #4]
	ldr r0, _080104E8 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _080104EC @ =gUnknown_0814DC00
	str r0, [r1]
	ldr r0, _080104F0 @ =0x050002E0
	str r0, [r1, #4]
	ldr r0, _080104F4 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x82
	lsls r0, r0, #1
	mov r1, sl
	str r0, [r1, #8]
	movs r0, #1
	ldrb r3, [r7, #0xc]
	lsls r0, r3
	ldrb r4, [r7, #8]
	adds r0, r4, r0
	strb r0, [r7, #8]
	movs r0, #8
	strb r0, [r7, #0x10]
	strb r2, [r7, #0x11]
	b _080108B6
	.align 2, 0
_080104D8: .4byte gOamObjects+0x130
_080104DC: .4byte 0x040000D4
_080104E0: .4byte gUnknown_081412FC
_080104E4: .4byte 0x06013000
_080104E8: .4byte 0x80000100
_080104EC: .4byte gUnknown_0814DC00
_080104F0: .4byte 0x050002E0
_080104F4: .4byte 0x80000010
_080104F8:
	mov r0, sl
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _08010504
	b _08010910
_08010504:
	ldr r1, _0801058C @ =gJoypad
	movs r0, #8
	ldrh r5, [r1, #2]
	ands r0, r5
	adds r2, r1, #0
	ldr r7, _08010590 @ =gScriptContext
	mov r8, r7
	cmp r0, #0
	beq _080105BC
	mov r4, sl
	adds r4, #0xdc
	ldr r0, [r4]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080105BC
	movs r0, #5
	mov r1, r8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _080105BC
	ldr r5, _08010594 @ =gMain
	ldrh r3, [r5, #0x30]
	cmp r3, #0x7f
	beq _080105BC
	bl sub_80139EC
	ldr r0, _08010598 @ =0x040000D4
	ldr r1, _0801059C @ =gOamObjects
	str r1, [r0]
	ldr r2, _080105A0 @ =gUnknown_0200093C
	str r2, [r0, #4]
	ldr r1, _080105A4 @ =0x80000200
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r5, [r0]
	ldr r7, _080105A8 @ =0xFFFFF6F8
	adds r1, r2, r7
	str r1, [r0, #4]
	ldr r1, _080105AC @ =0x80000160
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	mov r1, r8
	ldr r0, [r1, #0x38]
	ldr r1, _080105B0 @ =0xFF0000FF
	ands r0, r1
	ldr r1, _080105B4 @ =0x01000002
	cmp r0, r1
	bne _08010570
	ldr r3, _080105B8 @ =0xFFFFF711
	adds r1, r2, r3
	movs r0, #1
	strb r0, [r1]
_08010570:
	movs r0, #0x31
	bl sub_8013834
	ldr r0, [r4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	ldr r0, [r5, #8]
	mov r4, sl
	str r0, [r4, #0xc]
	movs r0, #0xa
	str r0, [r4, #8]
	b _08010910
	.align 2, 0
_0801058C: .4byte gJoypad
_08010590: .4byte gScriptContext
_08010594: .4byte gMain
_08010598: .4byte 0x040000D4
_0801059C: .4byte gOamObjects
_080105A0: .4byte gUnknown_0200093C
_080105A4: .4byte 0x80000200
_080105A8: .4byte 0xFFFFF6F8
_080105AC: .4byte 0x80000160
_080105B0: .4byte 0xFF0000FF
_080105B4: .4byte 0x01000002
_080105B8: .4byte 0xFFFFF711
_080105BC:
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r2, [r2, #2]
	ands r0, r2
	cmp r0, #0
	beq _080105FC
	mov r0, sl
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080105FC
	movs r0, #5
	mov r5, r8
	ldrh r5, [r5]
	ands r0, r5
	cmp r0, #0
	beq _080105FC
	movs r0, #0x31
	bl sub_8013834
	ldr r0, _080105F8 @ =gMain+0x8
	ldr r0, [r0]
	mov r7, sl
	str r0, [r7, #0xc]
	movs r0, #7
	str r0, [r7, #8]
	b _08010910
	.align 2, 0
_080105F8: .4byte gMain+0x8
_080105FC:
	ldr r5, _080106EC @ =gOamObjects+0x130
	mov r0, sl
	ldrb r0, [r0, #0xb]
	cmp r0, #0xc
	bhi _08010632
	adds r6, r5, #0
	movs r7, #0
	movs r3, #4
_0801060C:
	movs r4, #0
	adds r2, r7, #1
	subs r0, r3, r7
	lsls r1, r0, #1
_08010614:
	ldrh r0, [r6]
	adds r0, #4
	adds r0, r0, r1
	strh r0, [r6]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _08010614
	adds r7, r2, #0
	cmp r7, #3
	bls _0801060C
	mov r1, sl
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
_08010632:
	mov r0, r8
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	beq _0801063E
	b _080108B6
_0801063E:
	ldr r6, _080106F0 @ =gOamObjects+0x1B0
	movs r0, #0xfe
	lsls r0, r0, #8
	ldrh r2, [r6, #2]
	ands r0, r2
	strh r0, [r6, #2]
	ldr r3, _080106F4 @ =gUnknown_03002920
	ldrb r1, [r3]
	adds r0, r1, #0
	ldr r4, [sp]
	adds r4, #0x12
	str r4, [sp, #8]
	cmp r0, #0xff
	beq _0801067E
	mov r0, sl
	adds r0, #0xb2
	ldrb r2, [r0]
	ldr r4, _080106F8 @ =gUnknown_03000852
_08010662:
	cmp r2, r1
	bne _08010674
	ldrb r7, [r4]
	ldrb r0, [r3, #1]
	cmp r7, r0
	bne _08010674
	ldrb r1, [r3, #3]
	cmp r1, #1
	beq _0801067E
_08010674:
	adds r3, #0x14
	ldrb r1, [r3]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _08010662
_0801067E:
	adds r6, r5, #0
	adds r1, r3, #4
	movs r7, #0
	ldr r2, [sp, #8]
	mov r8, r2
_08010688:
	lsls r0, r7, #0xb
	ldr r3, _080106FC @ =0x06013400
	adds r2, r0, r3
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08010710
	movs r0, #1
	mov r4, r8
	strb r0, [r4]
	ldrb r0, [r1]
	lsls r5, r0, #0xb
	ldr r3, _08010700 @ =gUnknown_081EB3E8
	adds r5, r5, r3
	ldr r4, _08010704 @ =0x040000D4
	str r5, [r4]
	str r2, [r4, #4]
	ldr r0, _08010708 @ =0x80000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r4, #0
	lsls r0, r7, #2
	adds r2, r1, #1
	movs r5, #0x81
	lsls r5, r5, #7
	adds r5, r5, r0
	mov ip, r5
	movs r3, #0xd0
	lsls r3, r3, #1
	lsls r0, r7, #6
	str r0, [sp, #0x18]
	movs r1, #0x90
	lsls r1, r1, #8
	mov sb, r1
	ldr r1, _0801070C @ =0x0000C038
_080106CC:
	mov r5, ip
	strh r5, [r6]
	strh r1, [r6, #2]
	ldr r5, [sp, #0x18]
	adds r0, r3, r5
	mov r5, sb
	orrs r0, r5
	strh r0, [r6, #4]
	adds r6, #8
	adds r3, #0x20
	adds r1, #0x40
	adds r4, #1
	cmp r4, #1
	bls _080106CC
	b _08010726
	.align 2, 0
_080106EC: .4byte gOamObjects+0x130
_080106F0: .4byte gOamObjects+0x1B0
_080106F4: .4byte gUnknown_03002920
_080106F8: .4byte gUnknown_03000852
_080106FC: .4byte 0x06013400
_08010700: .4byte gUnknown_081EB3E8
_08010704: .4byte 0x040000D4
_08010708: .4byte 0x80000400
_0801070C: .4byte 0x0000C038
_08010710:
	movs r0, #0
	mov r2, r8
	strb r0, [r2]
	movs r3, #0x96
	lsls r3, r3, #1
	strh r3, [r6, #2]
	adds r6, #8
	adds r4, r3, #0
	strh r4, [r6, #2]
	adds r6, #8
	adds r2, r1, #1
_08010726:
	adds r1, r2, #0
	movs r5, #1
	add r8, r5
	adds r7, #1
	cmp r7, #3
	bls _08010688
	ldr r7, [sp]
	ldrb r4, [r7, #4]
	ldr r1, [sp, #8]
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08010748
	cmp r4, #0
	beq _08010748
	subs r0, r4, #1
	strb r0, [r7, #4]
_08010748:
	ldr r0, _08010768 @ =gInvestigation
	movs r1, #4
	bl sub_800EB24
	movs r0, #0
	movs r1, #1
	ldr r2, _08010768 @ =gInvestigation
	strb r1, [r2, #0xe]
	strb r0, [r2, #0x10]
	strb r0, [r2, #0x11]
	mov r3, sl
	ldrb r1, [r3, #0xa]
	adds r1, #1
	strb r1, [r3, #0xa]
	strb r0, [r3, #0xb]
	b _080108B6
	.align 2, 0
_08010768: .4byte gInvestigation
_0801076C:
	mov r4, sl
	ldrb r4, [r4, #0xb]
	cmp r4, #0xc
	bhi _0801079C
	ldr r6, _080107BC @ =gOamObjects+0x130
	movs r7, #0
	movs r2, #4
_0801077A:
	movs r4, #0
	subs r0, r2, r7
	lsls r1, r0, #1
_08010780:
	ldrh r5, [r6]
	subs r0, r5, r1
	strh r0, [r6]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _08010780
	adds r7, #1
	cmp r7, #3
	bls _0801077A
	mov r7, sl
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
_0801079C:
	ldr r0, [sp]
	ldrb r1, [r0, #0xe]
	cmp r1, #0
	beq _080107A6
	b _080108B6
_080107A6:
	mov r2, sl
	ldrb r2, [r2, #0xb]
	cmp r2, #0xc
	bhi _080107B0
	b _080108B6
_080107B0:
	movs r0, #3
	mov r3, sl
	strb r0, [r3, #0xa]
	strb r1, [r3, #0xb]
	b _080108B6
	.align 2, 0
_080107BC: .4byte gOamObjects+0x130
_080107C0:
	ldr r3, _08010864 @ =gUnknown_03002920
	ldrb r1, [r3]
	adds r0, r1, #0
	ldr r5, _08010868 @ =gOamObjects+0x130
	ldr r4, [sp]
	adds r4, #0x12
	str r4, [sp, #8]
	cmp r0, #0xff
	beq _080107F6
	mov r0, sl
	adds r0, #0xb2
	ldrb r2, [r0]
	ldr r4, _0801086C @ =gUnknown_03000852
_080107DA:
	cmp r2, r1
	bne _080107EC
	ldrb r7, [r4]
	ldrb r0, [r3, #1]
	cmp r7, r0
	bne _080107EC
	ldrb r1, [r3, #3]
	cmp r1, #1
	beq _080107F6
_080107EC:
	adds r3, #0x14
	ldrb r1, [r3]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _080107DA
_080107F6:
	adds r6, r5, #0
	adds r1, r3, #4
	movs r7, #0
	ldr r2, [sp, #8]
	mov r8, r2
	movs r3, #0
	str r3, [sp, #0xc]
_08010804:
	lsls r0, r7, #0xb
	ldr r4, _08010870 @ =0x06013400
	adds r2, r0, r4
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08010888
	movs r0, #1
	mov r5, r8
	strb r0, [r5]
	ldrb r0, [r1]
	lsls r5, r0, #0xb
	ldr r3, _08010874 @ =gUnknown_081EB3E8
	adds r5, r5, r3
	ldr r4, _08010878 @ =0x040000D4
	str r5, [r4]
	str r2, [r4, #4]
	ldr r0, _0801087C @ =0x80000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r4, #0
	adds r2, r1, #1
	ldr r5, [sp, #0xc]
	ldr r0, _08010880 @ =0x00004018
	adds r5, r5, r0
	mov ip, r5
	movs r3, #0xd0
	lsls r3, r3, #1
	lsls r1, r7, #6
	str r1, [sp, #0x18]
	movs r5, #0x90
	lsls r5, r5, #8
	mov sb, r5
	ldr r1, _08010884 @ =0x0000C038
_08010846:
	mov r0, ip
	strh r0, [r6]
	strh r1, [r6, #2]
	ldr r5, [sp, #0x18]
	adds r0, r3, r5
	mov r5, sb
	orrs r0, r5
	strh r0, [r6, #4]
	adds r6, #8
	adds r3, #0x20
	adds r1, #0x40
	adds r4, #1
	cmp r4, #1
	bls _08010846
	b _0801089E
	.align 2, 0
_08010864: .4byte gUnknown_03002920
_08010868: .4byte gOamObjects+0x130
_0801086C: .4byte gUnknown_03000852
_08010870: .4byte 0x06013400
_08010874: .4byte gUnknown_081EB3E8
_08010878: .4byte 0x040000D4
_0801087C: .4byte 0x80000400
_08010880: .4byte 0x00004018
_08010884: .4byte 0x0000C038
_08010888:
	movs r0, #0
	mov r2, r8
	strb r0, [r2]
	movs r3, #0x96
	lsls r3, r3, #1
	strh r3, [r6, #2]
	adds r6, #8
	adds r4, r3, #0
	strh r4, [r6, #2]
	adds r6, #8
	adds r2, r1, #1
_0801089E:
	adds r1, r2, #0
	movs r5, #1
	add r8, r5
	ldr r0, [sp, #0xc]
	adds r0, #0x1e
	str r0, [sp, #0xc]
	adds r7, #1
	cmp r7, #3
	bls _08010804
	movs r0, #3
	mov r1, sl
	strb r0, [r1, #0xa]
_080108B6:
	ldr r6, _080108E4 @ =gOamObjects+0x130
	movs r7, #0
_080108BA:
	ldr r2, [sp]
	ldrb r2, [r2, #4]
	cmp r7, r2
	bne _080108EC
	movs r4, #0
	adds r2, r7, #1
	ldr r3, _080108E8 @ =0x00000FFF
	movs r5, #0x90
	lsls r5, r5, #8
	adds r1, r5, #0
_080108CE:
	adds r0, r3, #0
	ldrh r7, [r6, #4]
	ands r0, r7
	adds r0, r0, r1
	strh r0, [r6, #4]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _080108CE
	b _0801090A
	.align 2, 0
_080108E4: .4byte gOamObjects+0x130
_080108E8: .4byte 0x00000FFF
_080108EC:
	movs r4, #0
	adds r2, r7, #1
	ldr r3, _08010920 @ =0x00000FFF
	movs r0, #0xa0
	lsls r0, r0, #8
	adds r1, r0, #0
_080108F8:
	adds r0, r3, #0
	ldrh r5, [r6, #4]
	ands r0, r5
	adds r0, r0, r1
	strh r0, [r6, #4]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _080108F8
_0801090A:
	adds r7, r2, #0
	cmp r7, #3
	bls _080108BA
_08010910:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010920: .4byte 0x00000FFF

	thumb_func_start sub_8010924
sub_8010924: @ 0x08010924
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	bls _08010932
	b _08010A34
_08010932:
	lsls r0, r0, #2
	ldr r1, _0801093C @ =_08010940
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801093C: .4byte _08010940
_08010940: @ jump table
	.4byte _08010954 @ case 0
	.4byte _0801096A @ case 1
	.4byte _08010988 @ case 2
	.4byte _080109EC @ case 3
	.4byte _08010A0C @ case 4
_08010954:
	ldrb r0, [r4, #0x10]
	cmp r0, #0xf
	bhi _0801095E
	adds r0, #1
	strb r0, [r4, #0x10]
_0801095E:
	movs r0, #0
	strb r0, [r4, #0x11]
	ldrb r4, [r4, #0x10]
	cmp r4, #0xf
	bls _08010A34
	b _08010A04
_0801096A:
	ldrb r4, [r4, #0xf]
	cmp r4, #0xe0
	bne _08010A34
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	ldr r0, _08010980 @ =gMain+0x8
	ldr r0, [r0]
	str r0, [r6, #0xc]
	ldr r0, _08010984 @ =gUnknown_02000007
	b _08010A32
	.align 2, 0
_08010980: .4byte gMain+0x8
_08010984: .4byte gUnknown_02000007
_08010988:
	ldrb r0, [r4, #0xf]
	cmp r0, #0xe0
	bne _08010A34
	ldr r0, _080109E0 @ =gScriptContext
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	bne _08010A34
	ldr r1, _080109E4 @ =gOamObjects+0x1A0
	movs r5, #0
	ldr r0, _080109E8 @ =0x000040E0
	mov ip, r0
	movs r3, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r7, r0, #0
	movs r2, #0xa2
	lsls r2, r2, #7
_080109AC:
	mov r0, ip
	strh r0, [r1]
	adds r0, r3, r7
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	adds r1, #8
	adds r3, #0x3c
	adds r2, #0x20
	adds r5, #1
	cmp r5, #3
	bls _080109AC
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_800EB24
	movs r0, #0xe0
	strb r0, [r4, #0xf]
	movs r0, #0x40
	strb r0, [r4, #0x10]
	movs r0, #8
	strb r0, [r4, #0x11]
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	b _08010A2E
	.align 2, 0
_080109E0: .4byte gScriptContext
_080109E4: .4byte gOamObjects+0x1A0
_080109E8: .4byte 0x000040E0
_080109EC:
	adds r0, r4, #0
	movs r1, #7
	bl sub_800EB24
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xe]
	movs r0, #0xe0
	strb r0, [r4, #0xf]
	movs r0, #0x10
	strb r0, [r4, #0x10]
	strb r1, [r4, #0x11]
_08010A04:
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	b _08010A34
_08010A0C:
	ldrb r0, [r4, #0x10]
	cmp r0, #8
	bls _08010A16
	subs r0, #1
	strb r0, [r4, #0x10]
_08010A16:
	ldrb r1, [r4, #0xe]
	cmp r1, #0
	bne _08010A34
	movs r0, #8
	strb r0, [r4, #0x10]
	strb r1, [r4, #0x11]
	movs r0, #1
	ldrb r1, [r4, #0xc]
	lsls r0, r1
	ldrb r1, [r4, #8]
	adds r0, r1, r0
	strb r0, [r4, #8]
_08010A2E:
	movs r0, #0x82
	lsls r0, r0, #1
_08010A32:
	str r0, [r6, #8]
_08010A34:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8010A3C
sub_8010A3C: @ 0x08010A3C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	movs r6, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #9
	bne _08010A4C
	b _08010E54
_08010A4C:
	movs r1, #0x91
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r2, #0xd2
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r6, r5, r0
	bl sub_8016E7C
	ldr r1, _08010A74 @ =gUnknown_08112378
	ldrb r4, [r5, #0xa]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08010A74: .4byte gUnknown_08112378
_08010A78:
	.byte 0x06, 0xF0, 0x32, 0xFF, 0x70, 0x7A, 0x00, 0x24
	.byte 0x30, 0x72, 0x70, 0x7A, 0x05, 0xF0, 0x4E, 0xFB, 0x05, 0xF0, 0x62, 0xFB, 0x06, 0xF0, 0xB6, 0xF9
	.byte 0x0A, 0x48, 0x0B, 0x49, 0x40, 0x18, 0x04, 0x70, 0x01, 0x20, 0xFA, 0x7A, 0x10, 0x43, 0xF8, 0x72
	.byte 0xA8, 0x7A, 0x01, 0x30, 0xA8, 0x72, 0x05, 0xF0, 0xC1, 0xFB, 0x05, 0xF0, 0xB3, 0xFB, 0x00, 0x28
	.byte 0x00, 0xD1, 0x6E, 0xE2, 0xA8, 0x7A, 0x01, 0x30, 0xA8, 0x72, 0x6A, 0xE2, 0xB0, 0x37, 0x00, 0x03
	.byte 0x4A, 0x02, 0x00, 0x00, 0x70, 0x89, 0xF6, 0xF7, 0x37, 0xFD, 0x28, 0x49, 0x01, 0x20, 0x08, 0x76
	.byte 0x03, 0x20, 0xA8, 0x72, 0x25, 0x4C, 0x26, 0x48, 0x21, 0x18, 0x01, 0x20, 0x09, 0x78, 0x08, 0x40
	.byte 0x00, 0x28, 0x23, 0xD0, 0x23, 0x49, 0x80, 0x20, 0x40, 0x00, 0x49, 0x88, 0x81, 0x42, 0x1D, 0xD1
	.byte 0x92, 0x21, 0x89, 0x00, 0x60, 0x18, 0x00, 0x78, 0x00, 0x28, 0x17, 0xD1, 0x28, 0x1C, 0xDC, 0x30
	.byte 0x00, 0x68, 0x10, 0x21, 0x08, 0x40, 0x00, 0x28, 0x10, 0xD1, 0x1B, 0x49, 0x0D, 0x20, 0x09, 0x88
	.byte 0x08, 0x40, 0x00, 0x28, 0x0A, 0xD0, 0x06, 0xF0, 0xA5, 0xFE, 0x06, 0xF0, 0xC7, 0xFA, 0x31, 0x20
	.byte 0x02, 0xF0, 0x88, 0xFE, 0xA0, 0x68, 0xE8, 0x60, 0x14, 0x48, 0xA8, 0x60, 0x0F, 0x4C, 0x10, 0x4A
	.byte 0xA1, 0x18, 0x02, 0x20, 0x09, 0x78, 0x08, 0x40, 0x00, 0x28, 0x21, 0xD0, 0x06, 0xF0, 0x0E, 0xFB
	.byte 0x00, 0x28, 0x1D, 0xD1, 0x92, 0x21, 0x89, 0x00, 0x60, 0x18, 0x04, 0x78, 0x00, 0x2C, 0x17, 0xD1
	.byte 0x08, 0x49, 0x80, 0x20, 0x80, 0x00, 0x49, 0x88, 0x81, 0x42, 0x11, 0xD1, 0x2C, 0x20, 0x02, 0xF0
	.byte 0x69, 0xFE, 0x08, 0x20, 0xA8, 0x72, 0xEC, 0x72, 0x18, 0xE1, 0x00, 0x00, 0xB0, 0x37, 0x00, 0x03
	.byte 0x4A, 0x02, 0x00, 0x00, 0xA0, 0x37, 0x00, 0x03, 0x40, 0x3C, 0x00, 0x03, 0x07, 0x00, 0x00, 0x03
	.byte 0x1F, 0x4C, 0x20, 0x4A, 0xA0, 0x18, 0x00, 0x78, 0x00, 0x28, 0x23, 0xD1, 0x06, 0xF0, 0xE6, 0xFA
	.byte 0x00, 0x28, 0x1F, 0xD1, 0x1C, 0x49, 0x80, 0x20, 0x40, 0x00, 0x49, 0x88, 0x81, 0x42, 0x19, 0xD1
	.byte 0x06, 0xF0, 0x0E, 0xFD, 0x00, 0x28, 0x15, 0xD1, 0x28, 0x1C, 0xDC, 0x30, 0x00, 0x68, 0x10, 0x21
	.byte 0x08, 0x40, 0x00, 0x28, 0x0E, 0xD1, 0x15, 0x49, 0x05, 0x20, 0x09, 0x88, 0x08, 0x40, 0x00, 0x28
	.byte 0x08, 0xD0, 0x06, 0xF0, 0x4F, 0xFE, 0x31, 0x20, 0x02, 0xF0, 0x34, 0xFE, 0xA0, 0x68, 0xE8, 0x60
	.byte 0x0F, 0x48, 0xA8, 0x60, 0x28, 0x1C, 0x98, 0x30, 0x00, 0x24, 0x00, 0x5F, 0x00, 0x28, 0x00, 0xDD
	.byte 0xD7, 0xE1, 0x28, 0x1C, 0x9A, 0x30, 0x00, 0x21, 0x40, 0x5E, 0x00, 0x28, 0x00, 0xDD, 0xD0, 0xE1
	.byte 0x07, 0xF0, 0x42, 0xF8, 0x00, 0x28, 0x00, 0xD0, 0xCB, 0xE1, 0x0B, 0x20, 0xA8, 0x72, 0xC8, 0xE1
	.byte 0xB0, 0x37, 0x00, 0x03, 0x4A, 0x02, 0x00, 0x00, 0xA0, 0x37, 0x00, 0x03, 0x40, 0x3C, 0x00, 0x03
	.byte 0x07, 0x00, 0x00, 0x04, 0xEA, 0x7A, 0x01, 0x2A, 0x00, 0xD1, 0x8D, 0xE1, 0x01, 0x2A, 0x02, 0xDC
	.byte 0x00, 0x2A, 0x03, 0xD0, 0xB5, 0xE1, 0x02, 0x2A, 0x14, 0xD0, 0xB2, 0xE1, 0x06, 0x48, 0x02, 0x76
	.byte 0x42, 0x76, 0x06, 0x49, 0x0B, 0x1C, 0x4A, 0x33, 0x05, 0x48, 0x1C, 0x88, 0x20, 0x40, 0x18, 0x80
	.byte 0xCA, 0x81, 0x05, 0xF0, 0xB7, 0xFA, 0x74, 0xE1, 0xB0, 0x37, 0x00, 0x03, 0x70, 0x3A, 0x00, 0x03
	.byte 0xFF, 0xFD, 0x00, 0x00, 0x30, 0x7A, 0x01, 0x38, 0x30, 0x72, 0x00, 0x06, 0x00, 0x28, 0x0D, 0xD1
	.byte 0x05, 0x48, 0x93, 0x21, 0x89, 0x00, 0x40, 0x18, 0x01, 0x78, 0x00, 0x29, 0x06, 0xD1, 0x07, 0x20
	.byte 0xA8, 0x72, 0xE9, 0x72, 0x8D, 0xE1, 0x00, 0x00, 0xB0, 0x37, 0x00, 0x03, 0x08, 0x48, 0x01, 0x21
	.byte 0x01, 0x76, 0x93, 0x22, 0x92, 0x00, 0x80, 0x18, 0x00, 0x78, 0x00, 0x28, 0x02, 0xD1, 0x01, 0x20
	.byte 0xF2, 0xF7, 0xB4, 0xFD, 0x03, 0x20, 0xA8, 0x72, 0x00, 0x20, 0xE8, 0x72, 0x79, 0xE1, 0x00, 0x00
	.byte 0xB0, 0x37, 0x00, 0x03, 0x30, 0x8A, 0xF6, 0xF7, 0x47, 0xFC, 0x01, 0x20, 0xF2, 0xF7, 0xA6, 0xFD
	.byte 0x03, 0x20, 0xA8, 0x72, 0x6D, 0xE1, 0x06, 0x48, 0xA0, 0x30, 0x64, 0x21, 0x01, 0x80, 0xE8, 0x7A
	.byte 0x04, 0x28, 0x00, 0xD9, 0x65, 0xE1, 0x80, 0x00, 0x02, 0x49, 0x40, 0x18, 0x00, 0x68, 0x87, 0x46
	.byte 0xB0, 0x37, 0x00, 0x03, 0xD8, 0x0C, 0x01, 0x08, 0xEC, 0x0C, 0x01, 0x08, 0x02, 0x0D, 0x01, 0x08
	.byte 0x44, 0x0D, 0x01, 0x08, 0x58, 0x0D, 0x01, 0x08, 0x78, 0x0D, 0x01, 0x08, 0x13, 0x48, 0x00, 0x21
	.byte 0x01, 0x76, 0x1E, 0x20, 0x02, 0xF0, 0xF6, 0xFE, 0x05, 0xF0, 0x64, 0xFA, 0xE8, 0x7A, 0x01, 0x30
	.byte 0xE8, 0x72, 0x05, 0xF0, 0x93, 0xFA, 0x05, 0xF0, 0x85, 0xFA, 0x00, 0x28, 0x00, 0xD1, 0x40, 0xE1
	.byte 0x05, 0xF0, 0x68, 0xFA, 0x09, 0x4C, 0x20, 0x1C, 0x98, 0x30, 0x00, 0x21, 0x40, 0x5E, 0x4F, 0x28
	.byte 0x00, 0xDD, 0x0F, 0xE1, 0x01, 0x20, 0x06, 0xF0, 0xFF, 0xFD, 0x21, 0x1C, 0x9C, 0x31, 0x04, 0x48
	.byte 0x08, 0x80, 0x03, 0x20, 0x06, 0xF0, 0xF8, 0xFD, 0x04, 0xE1, 0x00, 0x00, 0xB0, 0x37, 0x00, 0x03
	.byte 0xD8, 0xFF, 0x00, 0x00, 0x05, 0xF0, 0x72, 0xFA, 0x05, 0xF0, 0x64, 0xFA, 0x00, 0x28, 0x00, 0xD1
	.byte 0x1F, 0xE1, 0x05, 0xF0, 0x3F, 0xFA, 0xF5, 0xE0, 0x05, 0xF0, 0x68, 0xFA, 0x05, 0xF0, 0x5A, 0xFA
	.byte 0x00, 0x28, 0x00, 0xD1, 0x15, 0xE1, 0x06, 0xF0, 0x87, 0xFF, 0x00, 0x28, 0x00, 0xD0, 0x10, 0xE1
	.byte 0x02, 0x20, 0x06, 0xF0, 0xD9, 0xFD, 0xE5, 0xE0, 0x00, 0x24, 0x03, 0x20, 0x38, 0x73, 0x78, 0x73
	.byte 0x05, 0x49, 0x01, 0x20, 0x08, 0x76, 0x00, 0xF0, 0x0D, 0xF9, 0x00, 0xF0, 0x05, 0xFA, 0x34, 0x60
	.byte 0x82, 0x20, 0x40, 0x00, 0xA8, 0x60, 0xFC, 0xE0, 0xB0, 0x37, 0x00, 0x03, 0xE8, 0x7A, 0x05, 0x28
	.byte 0x00, 0xD9, 0xF6, 0xE0, 0x80, 0x00, 0x02, 0x49, 0x40, 0x18, 0x00, 0x68, 0x87, 0x46, 0x00, 0x00
	.byte 0xB4, 0x0D, 0x01, 0x08, 0xCC, 0x0D, 0x01, 0x08, 0xF0, 0x0D, 0x01, 0x08, 0x14, 0x0E, 0x01, 0x08
	.byte 0x2E, 0x0F, 0x01, 0x08, 0x38, 0x0F, 0x01, 0x08, 0x22, 0x0E, 0x01, 0x08, 0xB0, 0x89, 0xF6, 0xF7
	.byte 0xB3, 0xFB, 0x06, 0x48, 0x38, 0x30, 0x00, 0x78, 0x01, 0x28, 0x02, 0xD0, 0x04, 0x28, 0x00, 0xD0
	.byte 0xB0, 0xE0, 0x01, 0x20, 0xF2, 0xF7, 0x0A, 0xFD, 0xAC, 0xE0, 0x00, 0x00, 0x40, 0x3C, 0x00, 0x03
	.byte 0x07, 0x49, 0x08, 0x20, 0x09, 0x88, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD1, 0xC9, 0xE0, 0xE8, 0x7A
	.byte 0x01, 0x30, 0xE8, 0x72, 0x1E, 0x20, 0x02, 0xF0, 0x6D, 0xFE, 0x02, 0x20, 0x04, 0x21, 0x7E, 0xE0
	.byte 0x40, 0x3C, 0x00, 0x03, 0x28, 0x1C, 0x7E, 0x30, 0x00, 0x88, 0x00, 0x28, 0x00, 0xD0, 0xB8, 0xE0
	.byte 0x90, 0xE0, 0x00, 0xF0, 0xBF, 0xF8, 0x00, 0xF0, 0xB7, 0xF9, 0x08, 0x49, 0xFE, 0x20, 0xCA, 0x7A
	.byte 0x10, 0x40, 0xC8, 0x72, 0x82, 0x20, 0x40, 0x00, 0xA8, 0x60, 0x05, 0x48, 0xB4, 0x8A, 0x84, 0x42
	.byte 0x02, 0xD0, 0xB0, 0x8A, 0x02, 0xF0, 0xA8, 0xFD, 0x01, 0x20, 0x5F, 0xE0, 0x20, 0x3C, 0x00, 0x03
	.byte 0xFF, 0xFF, 0x00, 0x00
_08010E54:
	ldrb r1, [r5, #0xb]
	cmp r1, #1
	beq _08010F38
	cmp r1, #1
	bgt _08010E64
	cmp r1, #0
	beq _08010E6A
	b _08010F92
_08010E64:
	cmp r1, #2
	beq _08010E98
	b _08010F92
_08010E6A:
	ldr r0, _08010E94 @ =gMain
	strb r1, [r0, #0x18]
	movs r0, #1
	ldrb r1, [r7, #0xb]
	orrs r0, r1
	strb r0, [r7, #0xb]
	movs r0, #0
	bl sub_80037FC
	movs r2, #0x91
	lsls r2, r2, #2
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_8016124
	bl sub_8016150
	b _08010F32
	.align 2, 0
_08010E94: .4byte gMain
_08010E98:
	ldr r4, _08010EA8 @ =gMain
	movs r0, #1
	strb r0, [r4, #0x18]
	bl sub_80037FC
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
	b _08010F92
	.align 2, 0
_08010EA8: .4byte gMain
_08010EAC:
	.byte 0xE8, 0x7A, 0x05, 0x28
	.byte 0x6F, 0xD8, 0x80, 0x00, 0x01, 0x49, 0x40, 0x18, 0x00, 0x68, 0x87, 0x46, 0xC0, 0x0E, 0x01, 0x08
	.byte 0xD8, 0x0E, 0x01, 0x08, 0xF8, 0x0E, 0x01, 0x08, 0x1C, 0x0F, 0x01, 0x08, 0x2E, 0x0F, 0x01, 0x08
	.byte 0x38, 0x0F, 0x01, 0x08, 0x4C, 0x0F, 0x01, 0x08, 0x70, 0x8A, 0xF6, 0xF7, 0x2D, 0xFB, 0x05, 0x48
	.byte 0x38, 0x30, 0x00, 0x78, 0x01, 0x28, 0x01, 0xD0, 0x04, 0x28, 0x2B, 0xD1, 0x01, 0x20, 0xF2, 0xF7
	.byte 0x85, 0xFC, 0x27, 0xE0, 0x40, 0x3C, 0x00, 0x03, 0x07, 0x49, 0x08, 0x20, 0x09, 0x88, 0x08, 0x40
	.byte 0x00, 0x28, 0x46, 0xD0, 0xE8, 0x7A, 0x01, 0x30, 0xE8, 0x72, 0x02, 0x20, 0x01, 0x21, 0x01, 0x22
	.byte 0x1F, 0x23, 0xEF, 0xF7, 0xA3, 0xFC, 0x3C, 0xE0, 0x40, 0x3C, 0x00, 0x03, 0x28, 0x1C, 0x7E, 0x30
	.byte 0x00, 0x88, 0x00, 0x28, 0x35, 0xD1, 0x1E, 0x20, 0x02, 0xF0, 0xDC, 0xFD, 0x0A, 0xE0, 0x05, 0xF0
	.byte 0x59, 0xF9
_08010F32:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_08010F38:
	bl sub_801622C
	bl sub_8016214
	cmp r0, #0
	beq _08010F92
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _08010F92
_08010F4C:
	.byte 0x12, 0x48, 0x02, 0x1C
	.byte 0x9A, 0x32, 0x01, 0x21, 0x11, 0x80, 0x98, 0x30, 0x01, 0x80, 0x00, 0xF0, 0x23, 0xF8, 0x00, 0xF0
	.byte 0x1B, 0xF9, 0x0E, 0x49, 0xFE, 0x20, 0xCC, 0x7A, 0x20, 0x40, 0xC8, 0x72, 0x00, 0x20, 0xF2, 0xF7
	.byte 0x45, 0xFC, 0x82, 0x20, 0x40, 0x00, 0xA8, 0x60, 0x09, 0x48, 0xB1, 0x8A, 0x81, 0x42, 0x02, 0xD0
	.byte 0xB0, 0x8A, 0x02, 0xF0, 0x09, 0xFD, 0x01, 0x20, 0x01, 0x21, 0x01, 0x22, 0x1F, 0x23, 0xEF, 0xF7
	.byte 0x65, 0xFC
_08010F92:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08010F98:
	.byte 0xB0, 0x37, 0x00, 0x03, 0x20, 0x3C, 0x00, 0x03
	.byte 0xFF, 0xFF, 0x00, 0x00

	thumb_func_start sub_8010FA4
sub_8010FA4: @ 0x08010FA4
	push {r4, r5, r6, lr}
	ldr r0, _08011030 @ =0x040000D4
	ldr r1, _08011034 @ =gUnknown_081400FC
	str r1, [r0]
	ldr r1, _08011038 @ =0x06012000
	str r1, [r0, #4]
	ldr r1, _0801103C @ =0x80000800
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08011040 @ =gUnknown_0814DBA0
	str r1, [r0]
	ldr r1, _08011044 @ =0x050002A0
	str r1, [r0, #4]
	ldr r4, _08011048 @ =0x80000020
	str r4, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0801104C @ =gUnknown_081412FC
	str r1, [r0]
	ldr r1, _08011050 @ =0x06013000
	str r1, [r0, #4]
	ldr r3, _08011054 @ =0x80000100
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08011058 @ =gUnknown_0814DC00
	str r1, [r0]
	ldr r1, _0801105C @ =0x050002E0
	str r1, [r0, #4]
	ldr r2, _08011060 @ =0x80000010
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08011064 @ =gUnknown_081426FC
	str r1, [r0]
	ldr r1, _08011068 @ =0x06013200
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0801106C @ =gUnknown_0814DC60
	str r1, [r0]
	ldr r1, _08011070 @ =0x05000300
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08011074 @ =gUnknown_081DE3A8
	str r1, [r0]
	ldr r1, _08011078 @ =0x05000320
	str r1, [r0, #4]
	str r4, [r0, #8]
	ldr r0, [r0, #8]
	ldr r1, _0801107C @ =gOamObjects+0x1A0
	movs r4, #0
	ldr r6, _08011080 @ =0x000040E0
	movs r3, #0
	ldr r0, _08011084 @ =0xFFFFC000
	adds r5, r0, #0
	movs r2, #0xa2
	lsls r2, r2, #7
_08011014:
	strh r6, [r1]
	adds r0, r3, r5
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	adds r1, #8
	adds r3, #0x3c
	adds r2, #0x20
	adds r4, #1
	cmp r4, #3
	ble _08011014
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08011030: .4byte 0x040000D4
_08011034: .4byte gUnknown_081400FC
_08011038: .4byte 0x06012000
_0801103C: .4byte 0x80000800
_08011040: .4byte gUnknown_0814DBA0
_08011044: .4byte 0x050002A0
_08011048: .4byte 0x80000020
_0801104C: .4byte gUnknown_081412FC
_08011050: .4byte 0x06013000
_08011054: .4byte 0x80000100
_08011058: .4byte gUnknown_0814DC00
_0801105C: .4byte 0x050002E0
_08011060: .4byte 0x80000010
_08011064: .4byte gUnknown_081426FC
_08011068: .4byte 0x06013200
_0801106C: .4byte gUnknown_0814DC60
_08011070: .4byte 0x05000300
_08011074: .4byte gUnknown_081DE3A8
_08011078: .4byte 0x05000320
_0801107C: .4byte gOamObjects+0x1A0
_08011080: .4byte 0x000040E0
_08011084: .4byte 0xFFFFC000

	thumb_func_start sub_8011088
sub_8011088: @ 0x08011088
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	bl sub_8010FA4
	cmp r4, #0
	bne _080110B8
	ldr r0, _080110B4 @ =gInvestigation
	movs r1, #0xfe
	ldrb r2, [r0, #0xb]
	ands r1, r2
	strb r1, [r0, #0xb]
	movs r1, #3
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xd]
	b _0801116C
	.align 2, 0
_080110B4: .4byte gInvestigation
_080110B8:
	cmp r4, #1
	bne _0801116C
	ldr r1, _08011178 @ =gInvestigation
	movs r0, #0xfe
	ldrb r2, [r1, #0xb]
	ands r0, r2
	strb r0, [r1, #0xb]
	ldr r3, _0801117C @ =gOamObjects+0x1A0
	movs r4, #0
	adds r5, r1, #0
	ldr r7, _08011180 @ =0x000040E0
	movs r2, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r6, r0, #0
	movs r1, #0xa2
	lsls r1, r1, #7
_080110DA:
	strh r7, [r3]
	adds r0, r2, r6
	strh r0, [r3, #2]
	strh r1, [r3, #4]
	adds r3, #8
	adds r2, #0x3c
	adds r1, #0x20
	adds r4, #1
	cmp r4, #3
	bls _080110DA
	ldr r4, _0801117C @ =gOamObjects+0x1A0
	adds r0, r5, #0
	movs r1, #4
	bl sub_800EB24
	movs r1, #0
	movs r0, #0xd0
	strb r0, [r5, #0xf]
	strb r1, [r5, #0x10]
	strb r1, [r5, #0x11]
	movs r0, #2
	strb r0, [r5, #0xc]
	strb r0, [r5, #0xd]
	movs r0, #0xfe
	ldrb r1, [r5, #0xb]
	ands r0, r1
	strb r0, [r5, #0xb]
	movs r0, #5
	strb r0, [r5, #0xe]
	adds r3, r4, #0
	adds r3, #0x10
	movs r2, #0xff
	lsls r2, r2, #8
	adds r0, r2, #0
	ldrh r1, [r4, #0x10]
	ands r0, r1
	movs r1, #0xf0
	orrs r0, r1
	strh r0, [r4, #0x10]
	ldrh r0, [r3, #2]
	ands r2, r0
	strh r2, [r3, #2]
	ldr r0, _08011184 @ =0x00006540
	strh r0, [r3, #4]
	ldr r2, _08011188 @ =gMain
	movs r0, #8
	strb r0, [r2, #9]
	movs r0, #1
	strb r0, [r2, #0xa]
	mov r1, r8
	strb r1, [r5, #5]
	ldr r1, _0801118C @ =gIORegisters
	ldr r0, _08011190 @ =0x0000FFB3
	strh r0, [r1, #0xe]
	movs r1, #0x91
	lsls r1, r1, #2
	adds r0, r2, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	movs r2, #0xdd
	lsls r2, r2, #1
	adds r1, r0, r2
	ldr r0, _08011194 @ =0x0000FFFF
	ldrh r2, [r1]
	cmp r2, r0
	beq _0801116C
	ldrh r0, [r1]
	bl sub_8013998
_0801116C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011178: .4byte gInvestigation
_0801117C: .4byte gOamObjects+0x1A0
_08011180: .4byte 0x000040E0
_08011184: .4byte 0x00006540
_08011188: .4byte gMain
_0801118C: .4byte gIORegisters
_08011190: .4byte 0x0000FFB3
_08011194: .4byte 0x0000FFFF

	thumb_func_start sub_8011198
sub_8011198: @ 0x08011198
	push {r4, lr}
	ldr r0, _080111E4 @ =gOamObjects+0x1A0
	ldr r3, _080111E8 @ =0x000040E0
	strh r3, [r0]
	movs r2, #0xfe
	lsls r2, r2, #8
	adds r4, r2, #0
	ldrh r1, [r0, #2]
	ands r4, r1
	strh r4, [r0, #2]
	adds r0, #8
	strh r3, [r0]
	adds r4, r2, #0
	ldrh r1, [r0, #2]
	ands r4, r1
	movs r1, #0x3c
	orrs r4, r1
	strh r4, [r0, #2]
	adds r0, #8
	strh r3, [r0]
	adds r4, r2, #0
	ldrh r1, [r0, #2]
	ands r4, r1
	movs r1, #0x78
	orrs r4, r1
	strh r4, [r0, #2]
	adds r0, #8
	strh r3, [r0]
	adds r4, r2, #0
	ldrh r1, [r0, #2]
	ands r4, r1
	movs r1, #0xb4
	orrs r4, r1
	strh r4, [r0, #2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080111E4: .4byte gOamObjects+0x1A0
_080111E8: .4byte 0x000040E0

	thumb_func_start sub_80111EC
sub_80111EC: @ 0x080111EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	ldr r4, _08011214 @ =gOamObjects+0x1A0
	movs r0, #1
	ldrb r1, [r3, #0xb]
	ands r0, r1
	cmp r0, #0
	beq _08011202
	b _0801137E
_08011202:
	ldrb r0, [r3, #0xe]
	cmp r0, #5
	bls _0801120A
	b _08011312
_0801120A:
	lsls r0, r0, #2
	ldr r1, _08011218 @ =_0801121C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08011214: .4byte gOamObjects+0x1A0
_08011218: .4byte _0801121C
_0801121C: @ jump table
	.4byte _08011234 @ case 0
	.4byte _080112AE @ case 1
	.4byte _080112CA @ case 2
	.4byte _080112E2 @ case 3
	.4byte _08011312 @ case 4
	.4byte _080112FA @ case 5
_08011234:
	movs r5, #0
	movs r7, #0x80
	lsls r7, r7, #7
	mov ip, r7
	movs r0, #0xff
	lsls r0, r0, #8
	mov r8, r0
	movs r6, #0xaa
	lsls r6, r6, #7
	movs r7, #0
_08011248:
	ldrb r0, [r3, #0xc]
	cmp r0, r5
	bne _0801126A
	mov r1, ip
	strh r1, [r4]
	ldrb r2, [r3, #0x10]
	adds r2, #0xf0
	movs r0, #0xff
	ands r2, r0
	mov r1, ip
	adds r0, r2, r1
	strh r0, [r4]
	movs r1, #0xca
	lsls r1, r1, #7
	adds r0, r7, r1
	strh r0, [r4, #4]
	b _080112A0
_0801126A:
	ldrb r0, [r3, #0xd]
	cmp r0, r5
	bne _08011284
	mov r0, r8
	ldrh r1, [r4]
	ands r0, r1
	strh r0, [r4]
	ldrb r1, [r3, #0xf]
	orrs r0, r1
	strh r0, [r4]
	ldrb r1, [r3, #0x11]
	adds r0, r1, r0
	b _0801129C
_08011284:
	ldrb r0, [r3, #8]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801129E
	mov r0, r8
	ldrh r1, [r4]
	ands r0, r1
	strh r0, [r4]
	ldrb r1, [r3, #0xf]
	orrs r0, r1
_0801129C:
	strh r0, [r4]
_0801129E:
	strh r6, [r4, #4]
_080112A0:
	adds r4, #8
	adds r6, #0x20
	adds r7, #0x20
	adds r5, #1
	cmp r5, #3
	bls _08011248
	b _0801137E
_080112AE:
	ldrb r5, [r3, #0xc]
	lsls r0, r5, #3
	adds r4, r4, r0
	lsls r0, r5, #5
	movs r5, #0xca
	lsls r5, r5, #7
	adds r0, r0, r5
	strh r0, [r4, #4]
	movs r0, #0xe0
	strb r0, [r3, #0xf]
	ldrb r0, [r3, #0xe]
	adds r0, #1
	strb r0, [r3, #0xe]
	b _08011312
_080112CA:
	ldrb r0, [r3, #0xf]
	adds r0, #2
	strb r0, [r3, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xef
	bls _08011312
	movs r0, #0xf0
	strb r0, [r3, #0xf]
	movs r0, #0
	strb r0, [r3, #0xe]
	b _08011312
_080112E2:
	ldrb r0, [r3, #0xf]
	subs r0, #2
	strb r0, [r3, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe0
	bhi _08011312
	movs r0, #0xe0
	strb r0, [r3, #0xf]
	movs r0, #4
	strb r0, [r3, #0xe]
	b _08011312
_080112FA:
	ldrb r0, [r3, #0xf]
	adds r0, #1
	strb r0, [r3, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xdf
	bls _08011312
	movs r0, #0xf0
	strb r0, [r3, #0xf]
	movs r0, #4
	strb r0, [r3, #0xe]
	b _0801137E
_08011312:
	ldr r2, _08011354 @ =gMain
	adds r1, r2, #0
	adds r1, #0xb2
	ldrb r7, [r1]
	lsls r0, r7, #2
	adds r1, r7, #0
	adds r0, r0, r1
	movs r5, #0x90
	lsls r5, r5, #1
	adds r1, r2, r5
	adds r0, r0, r1
	ldrb r5, [r0]
	ldrh r2, [r2, #0x2e]
	cmp r5, r2
	beq _08011334
	movs r0, #0x40
	strb r0, [r3, #0x10]
_08011334:
	movs r5, #0
	movs r6, #0xff
	lsls r6, r6, #8
_0801133A:
	ldrb r0, [r3, #8]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08011358
	adds r0, r6, #0
	ldrh r7, [r4]
	ands r0, r7
	strh r0, [r4]
	ldrb r1, [r3, #0xf]
	orrs r0, r1
	b _08011374
	.align 2, 0
_08011354: .4byte gMain
_08011358:
	ldrb r0, [r3, #0xc]
	cmp r0, r5
	bne _08011376
	adds r0, r6, #0
	ldrh r7, [r4]
	ands r0, r7
	strh r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #1
	ldrb r7, [r3, #0x10]
	subs r2, r1, r7
	movs r1, #0xff
	ands r2, r1
	adds r0, r0, r2
_08011374:
	strh r0, [r4]
_08011376:
	adds r4, #8
	adds r5, #1
	cmp r5, #3
	bls _0801133A
_0801137E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8011388
sub_8011388: @ 0x08011388
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, _080113C8 @ =gOamObjects+0x1C0
	movs r6, #0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4]
	cmp r1, #0
	beq _080113FC
	ldr r0, _080113CC @ =gScriptContext
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	bne _080113FC
	ldrh r0, [r5, #0x2e]
	bl sub_80035A0
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _080113FC
	ldr r0, _080113D0 @ =gMain
	movs r1, #0x3c
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080113E0
	ldr r0, _080113D4 @ =0x00004020
	strh r0, [r4]
	ldr r0, _080113D8 @ =0x000080D0
	strh r0, [r4, #2]
	ldr r0, _080113DC @ =0x00007188
	b _080113FA
	.align 2, 0
_080113C8: .4byte gOamObjects+0x1C0
_080113CC: .4byte gScriptContext
_080113D0: .4byte gMain
_080113D4: .4byte 0x00004020
_080113D8: .4byte 0x000080D0
_080113DC: .4byte 0x00007188
_080113E0:
	movs r1, #0x3c
	ldrsh r0, [r5, r1]
	cmp r0, #0xf0
	beq _080113EC
	cmp r0, #0x78
	bne _080113FC
_080113EC:
	ldr r0, _08011404 @ =0x00004020
	strh r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r4, #2]
	movs r0, #0xe3
	lsls r0, r0, #7
_080113FA:
	strh r0, [r4, #4]
_080113FC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08011404: .4byte 0x00004020

	thumb_func_start sub_8011408
sub_8011408: @ 0x08011408
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrh r1, [r5]
	cmp r1, #0x77
	bhi _08011420
	ldr r3, _0801141C @ =gMain
	ldrh r0, [r3, #0x3c]
	adds r1, r1, r0
	b _08011428
	.align 2, 0
_0801141C: .4byte gMain
_08011420:
	ldr r3, _08011490 @ =gMain
	ldrh r0, [r3, #0x3c]
	adds r1, r1, r0
	adds r1, #0xc
_08011428:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _08011494 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	adds r4, r3, #0
	ldrh r0, [r4, #0x3e]
	ldrh r5, [r5, #2]
	adds r1, r0, r5
	lsls r1, r1, #0x10
	ldr r2, _08011498 @ =0x0000FFFF
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	ldr r1, _08011494 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0xb3
	ldrb r0, [r0]
	cmp r0, #2
	bne _0801149C
	adds r0, r4, #0
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #5
	bne _080114EE
	movs r0, #0
	movs r1, #0x41
	bl sub_8004338
	cmp r0, #0
	beq _080114EE
	movs r0, #0
	movs r1, #0x48
	bl sub_8004338
	cmp r0, #0
	bne _080114EE
	movs r0, #0xe8
	b _0801156E
	.align 2, 0
_08011490: .4byte gMain
_08011494: .4byte 0xFFFF0000
_08011498: .4byte 0x0000FFFF
_0801149C:
	cmp r0, #0xe
	bne _080114AE
	adds r0, r4, #0
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080114EE
	movs r0, #0xc7
	b _0801156E
_080114AE:
	cmp r0, #0xf
	bne _080114D0
	adds r0, r4, #0
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080114EE
	movs r0, #0
	movs r1, #0xbc
	bl sub_8004338
	cmp r0, #0
	beq _080114EE
	ldr r0, _080114CC @ =0x0000014F
	b _0801156E
	.align 2, 0
_080114CC: .4byte 0x0000014F
_080114D0:
	cmp r0, #0x12
	bne _080114EE
	adds r0, r3, #0
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _080114EE
	movs r0, #0
	movs r1, #0x92
	bl sub_8004338
	cmp r0, #0
	bne _080114EE
	movs r0, #0xa5
	b _0801156E
_080114EE:
	mov r0, sp
	bl sub_8014280
	adds r2, r0, #0
	ldr r4, _080114FC @ =gUnknown_03003C90
	b _0801150C
	.align 2, 0
_080114FC: .4byte gUnknown_03003C90
_08011500:
	cmp r1, #0xfe
	bne _0801150A
	ldrb r0, [r4, #3]
	cmp r2, r0
	beq _08011568
_0801150A:
	adds r4, #0x14
_0801150C:
	ldrb r1, [r4, #2]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _08011500
	ldr r4, _08011518 @ =gUnknown_03003C90
	b _0801152E
	.align 2, 0
_08011518: .4byte gUnknown_03003C90
_0801151C:
	cmp r1, #0xfe
	beq _0801152C
	adds r1, r4, #4
	mov r0, sp
	bl sub_8014508
	cmp r0, #0
	bne _08011568
_0801152C:
	adds r4, #0x14
_0801152E:
	ldrb r1, [r4, #2]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0801151C
	ldr r0, _08011548 @ =gMain
	adds r0, #0xb2
	ldrh r1, [r0]
	ldr r0, _0801154C @ =0x00000F17
	cmp r1, r0
	bne _08011550
	movs r0, #0xad
	lsls r0, r0, #1
	b _0801156E
	.align 2, 0
_08011548: .4byte gMain
_0801154C: .4byte 0x00000F17
_08011550:
	ldr r0, _08011564 @ =0x00001219
	cmp r1, r0
	beq _0801155C
	subs r0, #4
	cmp r1, r0
	bne _0801156C
_0801155C:
	movs r0, #0x86
	lsls r0, r0, #1
	b _0801156E
	.align 2, 0
_08011564: .4byte 0x00001219
_08011568:
	ldrh r0, [r4]
	b _0801156E
_0801156C:
	movs r0, #0x1d
_0801156E:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8011578
sub_8011578: @ 0x08011578
	push {r4, r5, r6, r7, lr}
	ldr r1, _080115BC @ =gMain
	adds r2, r1, #0
	adds r2, #0xb2
	ldrb r3, [r2]
	lsls r0, r3, #2
	adds r0, r0, r3
	adds r1, r1, r0
	ldr r7, _080115C0 @ =0x00000121
	adds r1, r1, r7
	movs r4, #0
	ldr r6, _080115C4 @ =gUnknown_081DE3E8
	ldr r2, _080115C8 @ =0x040000D4
	ldr r5, _080115CC @ =0x80000400
_08011594:
	lsls r0, r4, #0xb
	ldr r7, _080115D0 @ =0x06013400
	adds r3, r0, r7
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080115AE
	ldrb r7, [r1]
	lsls r0, r7, #0xb
	adds r0, r0, r6
	str r0, [r2]
	str r3, [r2, #4]
	str r5, [r2, #8]
	ldr r0, [r2, #8]
_080115AE:
	adds r1, #1
	adds r4, #1
	cmp r4, #3
	bls _08011594
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080115BC: .4byte gMain
_080115C0: .4byte 0x00000121
_080115C4: .4byte gUnknown_081DE3E8
_080115C8: .4byte 0x040000D4
_080115CC: .4byte 0x80000400
_080115D0: .4byte 0x06013400

	thumb_func_start sub_80115D4
sub_80115D4: @ 0x080115D4
	push {r4, r5, r6, r7, lr}
	ldr r2, _08011654 @ =gUnknown_03002920
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _08011602
	ldr r0, _08011658 @ =gMain+0xB2
	ldrb r3, [r0]
	ldr r4, _0801165C @ =gUnknown_03000852
_080115E6:
	cmp r3, r1
	bne _080115F8
	ldrb r0, [r4]
	ldrb r1, [r2, #1]
	cmp r0, r1
	bne _080115F8
	ldrb r7, [r2, #3]
	cmp r7, #1
	beq _08011602
_080115F8:
	adds r2, #0x14
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _080115E6
_08011602:
	adds r1, r2, #4
	movs r4, #0
	ldr r6, _08011660 @ =gUnknown_081EB3E8
	ldr r2, _08011664 @ =0x040000D4
	ldr r5, _08011668 @ =0x80000400
_0801160C:
	lsls r0, r4, #0xb
	ldr r7, _0801166C @ =0x06013400
	adds r3, r0, r7
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08011626
	ldrb r7, [r1]
	lsls r0, r7, #0xb
	adds r0, r0, r6
	str r0, [r2]
	str r3, [r2, #4]
	str r5, [r2, #8]
	ldr r0, [r2, #8]
_08011626:
	adds r1, #1
	adds r4, #1
	cmp r4, #3
	bls _0801160C
	ldr r1, _08011664 @ =0x040000D4
	ldr r0, _08011670 @ =gUnknown_08142BFC
	str r0, [r1]
	ldr r0, _08011674 @ =0x06015400
	str r0, [r1, #4]
	ldr r0, _08011678 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0801167C @ =gUnknown_0814DE80
	str r0, [r1]
	ldr r0, _08011680 @ =0x05000360
	str r0, [r1, #4]
	ldr r0, _08011684 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011654: .4byte gUnknown_03002920
_08011658: .4byte gMain+0xB2
_0801165C: .4byte gUnknown_03000852
_08011660: .4byte gUnknown_081EB3E8
_08011664: .4byte 0x040000D4
_08011668: .4byte 0x80000400
_0801166C: .4byte 0x06013400
_08011670: .4byte gUnknown_08142BFC
_08011674: .4byte 0x06015400
_08011678: .4byte 0x80000100
_0801167C: .4byte gUnknown_0814DE80
_08011680: .4byte 0x05000360
_08011684: .4byte 0x80000010

	thumb_func_start sub_8011688
sub_8011688: @ 0x08011688
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	mov ip, r1
	movs r3, #0
	ldr r0, _0801172C @ =gUnknown_08111F14
	mov r8, r0
	mov r2, ip
	adds r2, #0x38
	movs r4, #0xff
	adds r7, r2, #0
_080116A0:
	adds r1, r2, r3
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	adds r3, #1
	cmp r3, #0x1f
	bls _080116A0
	movs r0, #0
	mov r1, ip
	strb r0, [r1, #0x11]
	movs r3, #0
	mov r6, ip
	adds r6, #0x18
	adds r5, #0xb3
	adds r2, r6, #0
	movs r4, #0xff
_080116C0:
	adds r1, r2, r3
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	adds r3, #1
	cmp r3, #0x1f
	bls _080116C0
	movs r0, #0
	mov r1, ip
	strb r0, [r1, #0x10]
	ldrb r5, [r5]
	lsls r0, r5, #2
	add r0, r8
	ldr r2, [r0]
	movs r3, #0
	ldrb r1, [r2]
	cmp r1, #0xfe
	beq _080116FC
	adds r4, r7, #0
_080116E6:
	adds r0, r4, r3
	strb r1, [r0]
	mov r1, ip
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	adds r2, #1
	adds r3, #1
	ldrb r1, [r2]
	cmp r1, #0xfe
	bne _080116E6
_080116FC:
	adds r2, #1
	movs r3, #0
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _08011722
	adds r4, r6, #0
_0801170A:
	adds r0, r4, r3
	strb r1, [r0]
	mov r1, ip
	ldrb r0, [r1, #0x10]
	adds r0, #1
	strb r0, [r1, #0x10]
	adds r2, #1
	adds r3, #1
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0801170A
_08011722:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801172C: .4byte gUnknown_08111F14

	thumb_func_start sub_8011730
sub_8011730: @ 0x08011730
	push {lr}
	ldr r1, _08011758 @ =gUnknown_03002080
	ldr r3, _0801175C @ =0x000004DC
	adds r2, r1, r3
	movs r3, #9
	strh r3, [r2]
	ldr r2, _08011760 @ =0x000004DE
	adds r1, r1, r2
	strh r3, [r1]
	ldr r1, _08011764 @ =gUnknown_081123A8
	ldrb r3, [r0, #9]
	lsls r2, r3, #2
	adds r2, r2, r1
	ldr r1, _08011768 @ =gCourtRecord
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_08011758: .4byte gUnknown_03002080
_0801175C: .4byte 0x000004DC
_08011760: .4byte 0x000004DE
_08011764: .4byte gUnknown_081123A8
_08011768: .4byte gCourtRecord

	thumb_func_start sub_801176C
sub_801176C: @ 0x0801176C
	push {lr}
	ldr r1, _08011784 @ =gUnknown_081123C8
	ldrb r3, [r0, #9]
	lsls r2, r3, #2
	adds r2, r2, r1
	ldr r1, _08011788 @ =gCourtRecord
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_08011784: .4byte gUnknown_081123C8
_08011788: .4byte gCourtRecord

	thumb_func_start sub_801178C
sub_801178C: @ 0x0801178C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	bl sub_8017864
	ldr r4, _08011864 @ =gMain
	ldr r0, _08011868 @ =0x000002BA
	adds r4, r4, r0
	ldrh r5, [r4]
	adds r0, r5, #0
	bl sub_8013878
	strh r5, [r4]
	ldr r1, _0801186C @ =gUnknown_03000000
	movs r0, #0
	ldr r3, _08011870 @ =0x000003FF
	movs r2, #0
_080117AE:
	strh r2, [r1]
	adds r0, #1
	adds r1, #2
	cmp r0, r3
	bls _080117AE
	ldrb r0, [r7, #0xc]
	ldr r4, _08011874 @ =gIORegisters
	adds r3, r6, #0
	adds r3, #0x18
	cmp r0, #6
	beq _080117E2
	cmp r0, #4
	bne _080117E2
	ldrb r1, [r7, #0xd]
	cmp r1, #5
	bhi _080117E2
	ldr r2, _08011878 @ =gOamObjects+0x1A0
	movs r0, #0
	movs r1, #0xaa
	lsls r1, r1, #7
_080117D6:
	strh r1, [r2, #4]
	adds r2, #8
	adds r1, #0x20
	adds r0, #1
	cmp r0, #3
	bls _080117D6
_080117E2:
	ldrb r2, [r7, #0xc]
	cmp r2, #5
	bne _080117F0
	ldr r2, _0801187C @ =gOamObjects+0x1C8
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
_080117F0:
	ldrb r5, [r7, #0xb]
	cmp r5, #2
	bne _080117FC
	ldr r2, _08011880 @ =gOamObjects+0x1B8
	ldr r0, _08011884 @ =0x00006560
	strh r0, [r2, #4]
_080117FC:
	ldrb r0, [r7, #0xb]
	cmp r0, #3
	bne _0801180A
	ldr r2, _08011880 @ =gOamObjects+0x1B8
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
_0801180A:
	adds r2, r4, #0
	adds r2, #0x4a
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	movs r1, #0
	ldrh r5, [r2]
	orrs r0, r5
	strh r0, [r2]
	movs r0, #0xf8
	lsls r0, r0, #6
	strh r0, [r4, #4]
	movs r0, #4
	ldrb r2, [r7, #0x1a]
	orrs r0, r2
	strb r0, [r7, #0x1a]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xd]
	strb r1, [r6, #0x12]
	ldrb r0, [r6, #0x10]
	strb r0, [r6, #0xe]
	str r3, [r6, #0x14]
	bl sub_8012C60
	ldr r0, [r6, #0x14]
	ldrb r5, [r6, #0xd]
	adds r0, r5, r0
	ldrb r0, [r0]
	bl sub_8012DDC
	ldrb r0, [r7, #0xb]
	cmp r0, #1
	bne _08011854
	movs r0, #2
	movs r1, #0xc
	bl sub_8003C14
_08011854:
	movs r0, #1
	strb r0, [r6, #0xf]
	movs r0, #3
	strb r0, [r7, #9]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011864: .4byte gMain
_08011868: .4byte 0x000002BA
_0801186C: .4byte gUnknown_03000000
_08011870: .4byte 0x000003FF
_08011874: .4byte gIORegisters
_08011878: .4byte gOamObjects+0x1A0
_0801187C: .4byte gOamObjects+0x1C8
_08011880: .4byte gOamObjects+0x1B8
_08011884: .4byte 0x00006560

	thumb_func_start sub_8011888
sub_8011888: @ 0x08011888
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r4, _080118DC @ =gUnknown_03000844
	ldr r3, _080118E0 @ =gJoypad
	movs r0, #0x80
	lsls r0, r0, #2
	ldrh r1, [r3, #2]
	ands r0, r1
	cmp r0, #0
	beq _080118E8
	ldr r0, [r6, #0x14]
	ldrb r2, [r6, #0xd]
	adds r0, r2, r0
	ldr r1, _080118E4 @ =gUnknown_08022F38
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	cmp r0, #0
	beq _080118E8
	bl sub_80139EC
	movs r0, #0x2b
	bl sub_8013834
	movs r1, #0
	movs r0, #5
	strb r0, [r7, #9]
	strb r1, [r7, #0xa]
	movs r0, #2
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	b _08011E04
	.align 2, 0
_080118DC: .4byte gUnknown_03000844
_080118E0: .4byte gJoypad
_080118E4: .4byte gUnknown_08022F38
_080118E8:
	ldrh r1, [r3]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08011914
	ldrb r0, [r6, #0xe]
	cmp r0, #1
	bls _08011914
	movs r0, #1
	movs r1, #0xc
	bl sub_8003C14
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r6, #0xe]
	cmp r0, r1
	blo _0801193E
	movs r0, #0
	b _0801193C
_08011914:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080119B8
	ldrb r2, [r6, #0xe]
	cmp r2, #1
	bls _080119B8
	movs r0, #2
	movs r1, #0xc
	bl sub_8003C14
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	ldrb r1, [r6, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bls _0801193E
	subs r0, r1, #1
_0801193C:
	strb r0, [r6, #0xd]
_0801193E:
	movs r0, #0x36
	bl sub_8013834
	movs r0, #1
	strb r0, [r6, #0xf]
	movs r0, #2
	ldrb r3, [r6, #0xc]
	orrs r0, r3
	strb r0, [r6, #0xc]
	ldr r4, _08011990 @ =0x040000D4
	ldr r0, _08011994 @ =0x06013C00
	str r0, [r4]
	ldr r0, _08011998 @ =0x06001400
	str r0, [r4, #4]
	ldr r0, _0801199C @ =0x80000E00
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080119A0 @ =0x05000220
	str r0, [r4]
	ldr r0, _080119A4 @ =0x05000020
	str r0, [r4, #4]
	ldr r0, _080119A8 @ =0x80000010
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r0, r6, #0
	bl sub_8012E54
	ldr r0, _080119AC @ =gOamObjects+0x110
	str r0, [r4]
	ldr r0, _080119B0 @ =0x07000110
	str r0, [r4, #4]
	ldr r0, _080119B4 @ =0x8000002C
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #6
	strb r0, [r7, #9]
	ldrb r0, [r7, #0xb]
	cmp r0, #1
	bne _0801198E
	b _08011B8E
_0801198E:
	b _08011DF6
	.align 2, 0
_08011990: .4byte 0x040000D4
_08011994: .4byte 0x06013C00
_08011998: .4byte 0x06001400
_0801199C: .4byte 0x80000E00
_080119A0: .4byte 0x05000220
_080119A4: .4byte 0x05000020
_080119A8: .4byte 0x80000010
_080119AC: .4byte gOamObjects+0x110
_080119B0: .4byte 0x07000110
_080119B4: .4byte 0x8000002C
_080119B8:
	ldrb r0, [r7, #0xb]
	adds r2, r0, #0
	cmp r2, #1
	beq _080119C2
	b _08011BEE
_080119C2:
	ldrh r1, [r3, #2]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080119E4
	movs r0, #0x34
	bl sub_8013834
	movs r0, #3
	movs r1, #0xc
	bl sub_8003C14
	movs r0, #4
	strb r0, [r6, #0xf]
	b _08011B8C
_080119E4:
	ands r2, r1
	cmp r2, #0
	bne _080119EC
	b _08011B68
_080119EC:
	movs r0, #0
	bl sub_8012EE4
	movs r0, #0
	bl sub_8012F44
	ldr r5, _08011A20 @ =gOamObjects
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
	strh r0, [r5, #8]
	adds r2, r7, #0
	adds r2, #0xdc
	ldr r3, [r2]
	adds r1, r3, #0
	ands r1, r0
	mov sl, r2
	cmp r1, #0
	beq _08011A28
	movs r0, #4
	movs r1, #0x12
	bl sub_8003C14
	ldr r0, _08011A24 @ =0x00000707
	b _08011B40
	.align 2, 0
_08011A20: .4byte gOamObjects
_08011A24: .4byte 0x00000707
_08011A28:
	ands r3, r4
	cmp r3, #0
	beq _08011A3C
	movs r0, #4
	bl sub_801480C
	movs r0, #0x37
	bl sub_8013834
	b _08011A48
_08011A3C:
	movs r0, #2
	bl sub_801480C
	movs r0, #0x51
	bl sub_8013834
_08011A48:
	movs r0, #3
	movs r1, #1
	movs r2, #4
	movs r3, #0x1f
	bl StartHardwareBlend
	ldr r1, _08011AB4 @ =gTestimony
	movs r0, #0xa
	strb r0, [r1, #1]
	ldr r2, _08011AB8 @ =gIORegisters
	adds r2, #0x4a
	ldr r1, _08011ABC @ =0x0000FDFF
	ldrh r3, [r2]
	ands r1, r3
	movs r0, #0
	strb r0, [r7, #0x18]
	strb r0, [r7, #0x19]
	movs r0, #0x1e
	strh r0, [r7, #0x14]
	movs r0, #1
	mov sb, r0
	mov r3, sb
	strb r3, [r7, #0x16]
	mov r3, sl
	ldr r0, [r3]
	mov r3, sb
	orrs r0, r3
	mov r3, sl
	str r0, [r3]
	ldr r0, _08011AC0 @ =0x0000FBFF
	ands r1, r0
	strh r1, [r2]
	adds r0, r6, #0
	bl sub_8012EC8
	ldr r0, _08011AC4 @ =gScriptContext
	mov r8, r0
	ldrh r0, [r0, #0x1e]
	ldr r1, [r6, #0x14]
	ldrb r6, [r6, #0xd]
	adds r1, r6, r1
	ldrb r1, [r1]
	bl sub_80131F0
	adds r4, r0, #0
	cmp r4, #0
	beq _08011ACC
	bl sub_8013A48
	adds r0, r4, #0
	bl sub_8007538
	ldr r0, _08011AC8 @ =0x00000103
	b _08011B3C
	.align 2, 0
_08011AB4: .4byte gTestimony
_08011AB8: .4byte gIORegisters
_08011ABC: .4byte 0x0000FDFF
_08011AC0: .4byte 0x0000FBFF
_08011AC4: .4byte gScriptContext
_08011AC8: .4byte 0x00000103
_08011ACC:
	mov r1, r8
	ldrh r5, [r1, #0x1e]
	movs r0, #0x10
	ldrh r2, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08011AE4
	adds r5, #1
	adds r0, r5, #0
	bl sub_8007538
	b _08011B2E
_08011AE4:
	bl Random
	movs r4, #3
	ands r4, r0
	cmp r4, #1
	beq _08011B0E
	cmp r4, #1
	blo _08011AFE
	cmp r4, #2
	beq _08011B1C
	cmp r4, #3
	beq _08011B24
	b _08011B2A
_08011AFE:
	movs r0, #0x1f
	bl sub_8007538
	mov r0, r8
	adds r0, #0x33
	mov r3, sb
	strb r3, [r0]
	b _08011B2A
_08011B0E:
	movs r0, #0x20
	bl sub_8007538
	mov r0, r8
	adds r0, #0x33
	strb r4, [r0]
	b _08011B2A
_08011B1C:
	movs r0, #0x21
	bl sub_8007538
	b _08011B2A
_08011B24:
	movs r0, #0x22
	bl sub_8007538
_08011B2A:
	ldr r0, _08011B58 @ =gScriptContext
	strh r5, [r0, #0x20]
_08011B2E:
	ldr r0, _08011B58 @ =gScriptContext
	ldr r1, _08011B5C @ =0x0000FFEF
	ldrh r2, [r0]
	ands r1, r2
	strh r1, [r0]
	movs r0, #0x83
	lsls r0, r0, #1
_08011B3C:
	str r0, [r7, #0xc]
	ldr r0, _08011B60 @ =0x00000506
_08011B40:
	str r0, [r7, #8]
	movs r0, #0
	movs r1, #0
	bl sub_8004000
	mov r3, sl
	ldr r0, [r3]
	ldr r1, _08011B64 @ =0xFFFFFCFF
	ands r0, r1
	str r0, [r3]
	b _08011E04
	.align 2, 0
_08011B58: .4byte gScriptContext
_08011B5C: .4byte 0x0000FFEF
_08011B60: .4byte 0x00000506
_08011B64: .4byte 0xFFFFFCFF
_08011B68:
	adds r0, r7, #0
	adds r0, #0xdc
	ldr r0, [r0]
	ands r0, r4
	cmp r0, #0
	bne _08011B8E
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08011B8E
	movs r0, #0x2c
	bl sub_8013834
	movs r0, #4
	movs r1, #0xc
	bl sub_8003C14
	movs r0, #2
_08011B8C:
	strb r0, [r7, #9]
_08011B8E:
	ldrb r0, [r7, #0xc]
	cmp r0, #4
	beq _08011B9E
	ldr r1, _08011BCC @ =gTestimony
	adds r0, r7, #0
	movs r2, #0
	bl sub_800E6D0
_08011B9E:
	ldr r5, _08011BD0 @ =gOamObjects+0x1B8
	adds r0, r7, #0
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08011BE4
	movs r1, #0x80
	lsls r1, r1, #7
	strh r1, [r5]
	ldr r0, _08011BD4 @ =0x000080BA
	strh r0, [r5, #2]
	ldr r0, _08011BD8 @ =0x00005590
	strh r0, [r5, #4]
	adds r5, #8
	strh r1, [r5]
	ldr r0, _08011BDC @ =0x000080DA
	strh r0, [r5, #2]
	ldr r0, _08011BE0 @ =0x00005598
	strh r0, [r5, #4]
	b _08011DF6
	.align 2, 0
_08011BCC: .4byte gTestimony
_08011BD0: .4byte gOamObjects+0x1B8
_08011BD4: .4byte 0x000080BA
_08011BD8: .4byte 0x00005590
_08011BDC: .4byte 0x000080DA
_08011BE0: .4byte 0x00005598
_08011BE4:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
	strh r0, [r5, #8]
	b _08011DF6
_08011BEE:
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08011BFA
	b _08011DBC
_08011BFA:
	ldrh r1, [r3, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08011C1A
	movs r0, #0x34
	bl sub_8013834
	movs r0, #3
	movs r1, #0xc
	bl sub_8003C14
	movs r0, #4
	strb r0, [r6, #0xf]
	b _08011DF4
_08011C1A:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08011C24
	b _08011D8C
_08011C24:
	cmp r2, #2
	bne _08011CB0
	ldr r0, [r6, #0x14]
	ldrb r1, [r6, #0xd]
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0x2b
	bne _08011CB0
	adds r0, r7, #0
	adds r0, #0xb2
	ldrb r0, [r0]
	ldrb r1, [r4, #0xe]
	bl sub_8016D8C
	cmp r0, #0
	blt _08011CB0
	ldr r1, _08011C98 @ =gInvestigation
	movs r0, #1
	ldrb r2, [r1, #0xb]
	orrs r0, r2
	strb r0, [r1, #0xb]
	ldr r5, _08011C9C @ =gOamObjects+0x1B8
	movs r4, #0x80
	lsls r4, r4, #2
	strh r4, [r5]
	adds r0, r6, #0
	bl sub_8012EC8
	movs r0, #0
	bl sub_8012EE4
	movs r0, #0
	bl sub_8012F44
	ldr r1, _08011CA0 @ =gIORegisters
	adds r1, #0x4a
	ldr r0, _08011CA4 @ =0x0000FBFF
	ldrh r3, [r1]
	ands r0, r3
	strh r0, [r1]
	ldr r0, _08011CA8 @ =0xFFFFFE48
	adds r5, r5, r0
	strh r4, [r5]
	strh r4, [r5, #8]
	movs r0, #0x1e
	bl sub_8013AE4
	movs r0, #8
	ldrb r1, [r6, #0xc]
	orrs r0, r1
	strb r0, [r6, #0xc]
	movs r0, #4
	movs r1, #0x12
	bl sub_8003C14
	ldr r0, _08011CAC @ =0x00000707
	str r0, [r7, #8]
	b _08011E04
	.align 2, 0
_08011C98: .4byte gInvestigation
_08011C9C: .4byte gOamObjects+0x1B8
_08011CA0: .4byte gIORegisters
_08011CA4: .4byte 0x0000FBFF
_08011CA8: .4byte 0xFFFFFE48
_08011CAC: .4byte 0x00000707
_08011CB0:
	movs r0, #0x2b
	bl sub_8013834
	ldrb r2, [r7, #0xb]
	cmp r2, #2
	bne _08011CDC
	ldr r0, [r6, #0x14]
	ldrb r3, [r6, #0xd]
	adds r0, r3, r0
	ldrb r1, [r0]
	movs r2, #1
	ldrb r0, [r6, #0xc]
	ands r2, r0
	adds r0, r7, #0
	bl sub_8013274
	adds r4, r0, #0
	bl sub_8007538
	movs r0, #1
	bl sub_80037FC
_08011CDC:
	adds r0, r6, #0
	bl sub_8012EC8
	movs r0, #0
	bl sub_8012EE4
	movs r0, #0
	bl sub_8012F44
	ldr r0, _08011D54 @ =gIORegisters
	adds r0, #0x4a
	ldr r1, _08011D58 @ =0x0000FBFF
	ldrh r2, [r0]
	ands r1, r2
	strh r1, [r0]
	ldr r5, _08011D5C @ =gOamObjects
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
	strh r0, [r5, #8]
	ldrb r3, [r7, #0xb]
	cmp r3, #3
	bne _08011D6C
	ldr r1, _08011D60 @ =gInvestigation
	movs r0, #4
	strb r0, [r1, #0xe]
	movs r1, #0x12
	bl sub_8003C14
	ldr r0, _08011D64 @ =0x00000707
	str r0, [r7, #8]
	movs r0, #0x10
	ldrb r1, [r6, #0xc]
	orrs r0, r1
	strb r0, [r6, #0xc]
	ldr r2, _08011D68 @ =gMain
	movs r3, #0x91
	lsls r3, r3, #2
	adds r0, r2, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r3, #0xa0
	adds r1, r2, r3
	adds r0, r0, r1
	ldr r1, [r6, #0x14]
	ldrb r6, [r6, #0xd]
	adds r1, r6, r1
	ldrb r1, [r1]
	bl sub_8016DCC
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08011E04
	bl sub_8013A48
	b _08011E04
	.align 2, 0
_08011D54: .4byte gIORegisters
_08011D58: .4byte 0x0000FBFF
_08011D5C: .4byte gOamObjects
_08011D60: .4byte gInvestigation
_08011D64: .4byte 0x00000707
_08011D68: .4byte gMain
_08011D6C:
	ldr r1, _08011D84 @ =gInvestigation
	movs r0, #3
	strb r0, [r1, #0xe]
	movs r0, #8
	strb r0, [r1, #8]
	movs r0, #0xf0
	strb r0, [r1, #0xf]
	ldr r1, _08011D88 @ =gMain+0x8
	ldr r0, [r7, #0xc]
	str r0, [r1]
	b _08011E04
	.align 2, 0
_08011D84: .4byte gInvestigation
_08011D88: .4byte gMain+0x8
_08011D8C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08011DF6
	movs r0, #0x2c
	bl sub_8013834
	movs r0, #3
	movs r1, #0xc
	bl sub_8003C14
	ldrb r0, [r7, #0xb]
	cmp r0, #2
	bne _08011DB0
	ldr r0, _08011DAC @ =0x00030904
	b _08011DB2
	.align 2, 0
_08011DAC: .4byte 0x00030904
_08011DB0:
	ldr r0, _08011DB8 @ =0x00060A04
_08011DB2:
	str r0, [r7, #0xc]
	movs r0, #2
	b _08011DF4
	.align 2, 0
_08011DB8: .4byte 0x00060A04
_08011DBC:
	ldrh r1, [r3, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08011DDC
	movs r0, #0x34
	bl sub_8013834
	movs r0, #3
	movs r1, #0xc
	bl sub_8003C14
	movs r0, #4
	strb r0, [r6, #0xf]
	b _08011DF4
_08011DDC:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08011DF6
	movs r0, #0x2c
	bl sub_8013834
	movs r0, #3
	movs r1, #0xc
	bl sub_8003C14
	movs r0, #2
_08011DF4:
	strb r0, [r7, #9]
_08011DF6:
	ldr r4, _08011E14 @ =gCourtRecord
	adds r0, r4, #0
	bl sub_8003FC4
	adds r0, r4, #0
	bl sub_8012D20
_08011E04:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011E14: .4byte gCourtRecord

	thumb_func_start sub_8011E18
sub_8011E18: @ 0x08011E18
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #2
	bne _08011E4A
	ldrb r1, [r4, #2]
	cmp r1, #8
	bls _08011E4A
	ldr r3, _08011EBC @ =gOamObjects+0x1B8
	ldrh r0, [r3, #2]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r2, r0
	adds r0, #0xc
	ldr r1, _08011EC0 @ =0x000001FF
	ands r0, r1
	strh r0, [r3, #2]
	cmp r0, #0xb3
	bls _08011E44
	movs r0, #0xb4
	strh r0, [r3, #2]
_08011E44:
	ldrh r0, [r3, #2]
	orrs r2, r0
	strh r2, [r3, #2]
_08011E4A:
	ldrb r1, [r5, #0xb]
	cmp r1, #3
	bne _08011E5E
	ldrb r2, [r4, #2]
	cmp r2, #8
	bls _08011E5E
	ldr r3, _08011EBC @ =gOamObjects+0x1B8
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3]
_08011E5E:
	adds r0, r4, #0
	bl sub_8003FC4
	adds r0, r4, #0
	bl sub_8012D20
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08011EB6
	movs r0, #4
	ldrb r1, [r4, #0xc]
	orrs r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r4, #0xc]
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _08011EA2
	ldr r1, _08011EC4 @ =gScriptContext
	movs r0, #4
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08011EA2
	ldr r1, _08011EC8 @ =gUnknown_03002080
	ldr r0, _08011ECC @ =0x000004DC
	adds r2, r1, r0
	movs r0, #0x20
	strh r0, [r2]
	ldr r2, _08011ED0 @ =0x000004DE
	adds r1, r1, r2
	movs r0, #0x21
	strh r0, [r1]
_08011EA2:
	ldr r0, _08011ED4 @ =gMain+0x8
	ldr r1, [r5, #0xc]
	str r1, [r0]
	ldr r2, _08011ED8 @ =0x000002B2
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0
	beq _08011EB6
	bl sub_8013834
_08011EB6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011EBC: .4byte gOamObjects+0x1B8
_08011EC0: .4byte 0x000001FF
_08011EC4: .4byte gScriptContext
_08011EC8: .4byte gUnknown_03002080
_08011ECC: .4byte 0x000004DC
_08011ED0: .4byte 0x000004DE
_08011ED4: .4byte gMain+0x8
_08011ED8: .4byte 0x000002B2

	thumb_func_start sub_8011EDC
sub_8011EDC: @ 0x08011EDC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #2
	bne _08011F0E
	ldrb r1, [r4, #2]
	cmp r1, #8
	bls _08011F0E
	ldr r3, _08011F38 @ =gOamObjects+0x1B8
	ldrh r0, [r3, #2]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r2, r0
	subs r0, #0xc
	ldr r1, _08011F3C @ =0x000001FF
	ands r0, r1
	strh r0, [r3, #2]
	cmp r0, #0xff
	bls _08011F08
	movs r0, #0
	strh r0, [r3, #2]
_08011F08:
	ldrh r0, [r3, #2]
	orrs r2, r0
	strh r2, [r3, #2]
_08011F0E:
	adds r0, r4, #0
	bl sub_8003FC4
	adds r0, r4, #0
	bl sub_8012D20
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08011F32
	movs r0, #4
	ldrb r1, [r4, #0xc]
	orrs r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xf]
	strb r0, [r5, #9]
_08011F32:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011F38: .4byte gOamObjects+0x1B8
_08011F3C: .4byte 0x000001FF

	thumb_func_start sub_8011F40
sub_8011F40: @ 0x08011F40
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl sub_8003FC4
	adds r0, r4, #0
	bl sub_8012D20
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08011FE0
	movs r0, #0xfd
	ldrb r1, [r4, #0xc]
	ands r0, r1
	strb r0, [r4, #0xc]
	movs r0, #2
	movs r1, #0xc
	bl sub_8003C14
	movs r1, #1
	strb r1, [r4, #0xf]
	movs r0, #3
	strb r0, [r5, #9]
	ldrb r2, [r4, #0xd]
	ldrb r0, [r4, #0x12]
	strb r0, [r4, #0xd]
	strb r2, [r4, #0x12]
	ldrb r2, [r4, #0xc]
	ands r1, r2
	cmp r1, #0
	beq _08011FB4
	movs r0, #0xfe
	ands r0, r2
	strb r0, [r4, #0xc]
	ldr r1, _08011FA4 @ =0x040000D4
	ldr r0, _08011FA8 @ =gUnknown_081422FC
	str r0, [r1]
	ldr r0, _08011FAC @ =0x06013500
	str r0, [r1, #4]
	ldr r0, _08011FB0 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrb r0, [r4, #0x10]
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x18
	b _08011FD2
	.align 2, 0
_08011FA4: .4byte 0x040000D4
_08011FA8: .4byte gUnknown_081422FC
_08011FAC: .4byte 0x06013500
_08011FB0: .4byte 0x80000100
_08011FB4:
	movs r0, #1
	orrs r0, r2
	strb r0, [r4, #0xc]
	ldr r1, _08011FE8 @ =0x040000D4
	ldr r0, _08011FEC @ =gUnknown_081424FC
	str r0, [r1]
	ldr r0, _08011FF0 @ =0x06013500
	str r0, [r1, #4]
	ldr r0, _08011FF4 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrb r0, [r4, #0x11]
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x38
_08011FD2:
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x14]
	ldrb r4, [r4, #0xd]
	adds r0, r4, r0
	ldrb r0, [r0]
	bl sub_8012DDC
_08011FE0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011FE8: .4byte 0x040000D4
_08011FEC: .4byte gUnknown_081424FC
_08011FF0: .4byte 0x06013500
_08011FF4: .4byte 0x80000100

	thumb_func_start sub_8011FF8
sub_8011FF8: @ 0x08011FF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08012020
	ldr r0, _08012034 @ =gIORegisters
	movs r2, #0
	movs r1, #8
	strh r1, [r0, #0x16]
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xc]
_08012020:
	ldrb r0, [r5, #0xa]
	cmp r0, #6
	bls _08012028
	b _08012692
_08012028:
	lsls r0, r0, #2
	ldr r1, _08012038 @ =_0801203C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08012034: .4byte gIORegisters
_08012038: .4byte _0801203C
_0801203C: @ jump table
	.4byte _08012058 @ case 0
	.4byte _08012314 @ case 1
	.4byte _0801232C @ case 2
	.4byte _080123B0 @ case 3
	.4byte _08012524 @ case 4
	.4byte _08012608 @ case 5
	.4byte _08012630 @ case 6
_08012058:
	adds r0, r5, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _08012064
	b _08012692
_08012064:
	ldr r1, _0801208C @ =gMain
	ldr r0, _08012090 @ =0x00000A04
	ldrh r2, [r1, #0xc]
	cmp r2, r0
	bne _08012098
	ldr r4, _08012094 @ =0x0000024B
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #2
	beq _080120A6
	ldrh r1, [r1, #0x30]
	cmp r1, #0x7f
	bne _080120A6
	bl sub_80161F4
	bl sub_801622C
	bl sub_8017134
	b _080120A6
	.align 2, 0
_0801208C: .4byte gMain
_08012090: .4byte 0x00000A04
_08012094: .4byte 0x0000024B
_08012098:
	ldr r2, _080120D8 @ =0x0000024B
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	bne _080120A6
	bl sub_8016D40
_080120A6:
	movs r0, #0
	strb r0, [r6, #0x13]
	ldr r0, [r6, #0x14]
	ldrb r4, [r6, #0xd]
	adds r0, r4, r0
	ldrb r2, [r0]
	ldr r1, _080120DC @ =0x040000D4
	ldr r0, _080120E0 @ =gMain
	str r0, [r1]
	ldr r0, _080120E4 @ =gUnknown_02000034
	str r0, [r1, #4]
	ldr r0, _080120E8 @ =0x80000160
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _080120EC @ =gUnknown_08022F38
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	cmp r0, #0x15
	bhi _080121A0
	lsls r0, r0, #2
	ldr r1, _080120F0 @ =_080120F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080120D8: .4byte 0x0000024B
_080120DC: .4byte 0x040000D4
_080120E0: .4byte gMain
_080120E4: .4byte gUnknown_02000034
_080120E8: .4byte 0x80000160
_080120EC: .4byte gUnknown_08022F38
_080120F0: .4byte _080120F4
_080120F4: @ jump table
	.4byte _080121A0 @ case 0
	.4byte _0801214C @ case 1
	.4byte _08012150 @ case 2
	.4byte _08012154 @ case 3
	.4byte _08012158 @ case 4
	.4byte _0801215C @ case 5
	.4byte _08012160 @ case 6
	.4byte _08012164 @ case 7
	.4byte _08012168 @ case 8
	.4byte _0801216C @ case 9
	.4byte _08012170 @ case 10
	.4byte _08012174 @ case 11
	.4byte _08012178 @ case 12
	.4byte _0801217C @ case 13
	.4byte _08012180 @ case 14
	.4byte _08012184 @ case 15
	.4byte _08012188 @ case 16
	.4byte _0801218C @ case 17
	.4byte _08012190 @ case 18
	.4byte _08012194 @ case 19
	.4byte _08012198 @ case 20
	.4byte _0801219C @ case 21
_0801214C:
	movs r0, #0x15
	b _0801219E
_08012150:
	movs r0, #0x16
	b _0801219E
_08012154:
	movs r0, #0x2b
	b _0801219E
_08012158:
	movs r0, #0x2a
	b _0801219E
_0801215C:
	movs r0, #0x30
	b _0801219E
_08012160:
	movs r0, #0x31
	b _0801219E
_08012164:
	movs r0, #0x32
	b _0801219E
_08012168:
	movs r0, #0x27
	b _0801219E
_0801216C:
	movs r0, #0x4c
	b _0801219E
_08012170:
	movs r0, #0x4b
	b _0801219E
_08012174:
	movs r0, #0x48
	b _0801219E
_08012178:
	movs r0, #0x49
	b _0801219E
_0801217C:
	movs r0, #0x53
	b _0801219E
_08012180:
	movs r0, #0x47
	b _0801219E
_08012184:
	movs r0, #0x47
	b _0801219E
_08012188:
	movs r0, #0x47
	b _0801219E
_0801218C:
	movs r0, #0x65
	b _0801219E
_08012190:
	movs r0, #0x64
	b _0801219E
_08012194:
	movs r0, #0x76
	b _0801219E
_08012198:
	movs r0, #0x66
	b _0801219E
_0801219C:
	movs r0, #0x67
_0801219E:
	strh r0, [r5, #0x2e]
_080121A0:
	ldrh r0, [r5, #0x2e]
	bl sub_8002820
	ldr r1, _0801220C @ =0x040000D4
	ldr r0, _08012210 @ =gOamObjects
	str r0, [r1]
	ldr r2, _08012214 @ =gUnknown_0200093C
	str r2, [r1, #4]
	ldr r0, _08012218 @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r3, _0801221C @ =gUnknown_03003AD0
	str r3, [r1]
	subs r2, #0xa0
	str r2, [r1, #4]
	ldr r0, _08012220 @ =0x80000050
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r1, #0
	adds r7, r5, #0
	adds r7, #0x25
	movs r2, #0xff
_080121CC:
	ldrb r0, [r3]
	orrs r0, r2
	strb r0, [r3]
	adds r3, #0x14
	adds r1, #1
	cmp r1, #7
	bls _080121CC
	ldrb r0, [r5, #0xc]
	cmp r0, #4
	bne _08012238
	ldr r3, _08012224 @ =gOamObjects+0x1A0
	movs r1, #0
	ldr r0, _08012228 @ =gIORegisters
	mov sb, r0
	ldr r2, _0801222C @ =gScriptContext
	mov ip, r2
	ldr r4, _08012230 @ =gSaveDataBuffer
	mov r8, r4
	movs r4, #0x80
	lsls r4, r4, #2
	adds r2, r4, #0
_080121F6:
	ldr r0, _08012234 @ =0x0000FCFF
	ldrh r4, [r3]
	ands r0, r4
	orrs r0, r2
	strh r0, [r3]
	adds r3, #8
	adds r1, #1
	cmp r1, #3
	bls _080121F6
	b _08012292
	.align 2, 0
_0801220C: .4byte 0x040000D4
_08012210: .4byte gOamObjects
_08012214: .4byte gUnknown_0200093C
_08012218: .4byte 0x80000200
_0801221C: .4byte gUnknown_03003AD0
_08012220: .4byte 0x80000050
_08012224: .4byte gOamObjects+0x1A0
_08012228: .4byte gIORegisters
_0801222C: .4byte gScriptContext
_08012230: .4byte gSaveDataBuffer
_08012234: .4byte 0x0000FCFF
_08012238:
	cmp r0, #5
	bne _08012264
	ldr r3, _08012254 @ =gOamObjects+0x1C8
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3]
	ldr r0, _08012258 @ =gIORegisters
	mov sb, r0
	ldr r1, _0801225C @ =gScriptContext
	mov ip, r1
	ldr r2, _08012260 @ =gSaveDataBuffer
	mov r8, r2
	b _08012292
	.align 2, 0
_08012254: .4byte gOamObjects+0x1C8
_08012258: .4byte gIORegisters
_0801225C: .4byte gScriptContext
_08012260: .4byte gSaveDataBuffer
_08012264:
	ldr r4, _080122F0 @ =gIORegisters
	mov sb, r4
	ldr r1, _080122F4 @ =gScriptContext
	mov ip, r1
	ldr r2, _080122F8 @ =gSaveDataBuffer
	mov r8, r2
	cmp r0, #6
	bne _08012292
	ldr r3, _080122FC @ =gOamObjects+0x1B8
	ldr r0, _08012300 @ =0x0000FCFF
	adds r1, r0, #0
	ldrh r4, [r3]
	ands r1, r4
	movs r4, #0x80
	lsls r4, r4, #2
	adds r2, r4, #0
	orrs r1, r2
	strh r1, [r3]
	adds r3, #8
	ldrh r1, [r3]
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
_08012292:
	movs r0, #0x80
	lsls r0, r0, #3
	mov r2, ip
	ldrh r2, [r2]
	ands r0, r2
	cmp r0, #0
	beq _080122A8
	ldr r3, _08012304 @ =gOamObjects+0x1D0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3]
_080122A8:
	ldrb r2, [r5, #0x19]
	mov r0, r8
	adds r0, #0x4d
	movs r1, #0
	strb r2, [r0]
	strb r1, [r5, #0x19]
	mov r2, sb
	adds r2, #0x4a
	ldr r0, _08012308 @ =0x0000FDFF
	ldrh r4, [r2]
	ands r0, r4
	ldr r1, _0801230C @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0xfc
	ldrb r1, [r7]
	ands r0, r1
	strb r0, [r7]
	adds r0, r6, #0
	bl sub_8012EC8
	movs r0, #0
	bl sub_8012EE4
	movs r0, #1
	bl sub_8013080
	ldr r3, _08012310 @ =gOamObjects
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3]
	strh r0, [r3, #8]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	b _08012690
	.align 2, 0
_080122F0: .4byte gIORegisters
_080122F4: .4byte gScriptContext
_080122F8: .4byte gSaveDataBuffer
_080122FC: .4byte gOamObjects+0x1B8
_08012300: .4byte 0x0000FCFF
_08012304: .4byte gOamObjects+0x1D0
_08012308: .4byte 0x0000FDFF
_0801230C: .4byte 0x0000FBFF
_08012310: .4byte gOamObjects
_08012314:
	ldrh r0, [r5, #0x2e]
	bl CopyBGDataToVram
	movs r0, #1
	movs r1, #1
	movs r2, #2
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r5, #0xa]
	adds r0, #1
	b _08012690
_0801232C:
	adds r0, r5, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _08012338
	b _08012692
_08012338:
	ldr r0, _0801235C @ =gJoypad
	ldrh r1, [r0, #2]
	ldr r4, _08012360 @ =0x00000202
	ands r4, r1
	cmp r4, #0
	beq _08012364
	movs r0, #0x2c
	bl sub_8013834
	movs r0, #2
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r5, #0xa]
	adds r0, #1
	b _08012690
	.align 2, 0
_0801235C: .4byte gJoypad
_08012360: .4byte 0x00000202
_08012364:
	movs r0, #0x81
	ands r0, r1
	cmp r0, #0
	bne _0801236E
	b _08012692
_0801236E:
	ldr r0, [r6, #0x14]
	ldrb r2, [r6, #0xd]
	adds r0, r2, r0
	ldr r1, _080123AC @ =gUnknown_08022F38
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	cmp r0, #8
	beq _08012384
	b _08012692
_08012384:
	movs r0, #0x2b
	bl sub_8013834
	ldrb r0, [r6, #0x13]
	adds r0, #1
	strb r0, [r6, #0x13]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0801239A
	strb r4, [r6, #0x13]
_0801239A:
	movs r0, #2
	movs r1, #1
	movs r2, #2
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r0, #6
	b _08012690
	.align 2, 0
_080123AC: .4byte gUnknown_08022F38
_080123B0:
	adds r0, r5, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _080123BC
	b _08012692
_080123BC:
	ldr r2, _080124F8 @ =gSaveDataBuffer
	adds r0, r2, #0
	adds r0, #0x62
	ldrh r0, [r0]
	strh r0, [r5, #0x2e]
	adds r0, r2, #0
	adds r0, #0x66
	ldrh r0, [r0]
	strh r0, [r5, #0x32]
	adds r0, r2, #0
	adds r0, #0x68
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x34
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x69
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x35
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x6b
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r5, #0x38]
	adds r0, r2, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	strh r0, [r5, #0x3a]
	adds r0, r2, #0
	adds r0, #0x70
	ldrh r0, [r0]
	strh r0, [r5, #0x3c]
	adds r0, r2, #0
	adds r0, #0x72
	ldrh r0, [r0]
	strh r0, [r5, #0x3e]
	adds r0, r2, #0
	adds r0, #0x74
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x40
	strh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x76
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x78
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x44
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x79
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x45
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x7a
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	ldr r0, [r2, #0x7c]
	str r0, [r5, #0x48]
	movs r1, #0
	adds r7, r5, #0
	adds r7, #0x25
	adds r3, r2, #0
	adds r3, #0x80
	adds r2, r5, #0
	adds r2, #0x4c
_08012470:
	ldm r3!, {r0}
	stm r2!, {r0}
	adds r1, #1
	cmp r1, #0xb
	bls _08012470
	ldrh r0, [r5, #0x2e]
	bl sub_8002820
	ldrh r0, [r5, #0x2e]
	bl sub_800342C
	ldr r3, _080124F8 @ =gSaveDataBuffer
	adds r0, r3, #0
	adds r0, #0x4d
	ldrb r0, [r0]
	strb r0, [r5, #0x19]
	ldr r2, _080124FC @ =gIORegisters
	adds r2, #0x4a
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r4, #0
	movs r4, #0
	ldrh r6, [r2]
	orrs r0, r6
	movs r6, #0x80
	lsls r6, r6, #3
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08012500 @ =0x040000D4
	ldr r2, _08012504 @ =0x0000093C
	adds r0, r3, r2
	str r0, [r1]
	ldr r0, _08012508 @ =gOamObjects
	str r0, [r1, #4]
	ldr r0, _0801250C @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r6, _08012510 @ =0x0000089C
	adds r3, r3, r6
	str r3, [r1]
	ldr r0, _08012514 @ =gUnknown_03003AD0
	str r0, [r1, #4]
	ldr r0, _08012518 @ =0x80000050
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_8009934
	ldrb r0, [r5, #0xc]
	cmp r0, #5
	bne _080124DA
	ldr r0, _0801251C @ =gTestimony
	strb r4, [r0, #1]
_080124DA:
	movs r0, #3
	ldrb r1, [r7]
	orrs r0, r1
	strb r0, [r7]
	ldr r4, _08012520 @ =gCourtRecord
	adds r0, r4, #0
	bl sub_8003FC4
	adds r0, r4, #0
	bl sub_8012D20
	ldrb r0, [r5, #0xa]
	adds r0, #1
	b _08012690
	.align 2, 0
_080124F8: .4byte gSaveDataBuffer
_080124FC: .4byte gIORegisters
_08012500: .4byte 0x040000D4
_08012504: .4byte 0x0000093C
_08012508: .4byte gOamObjects
_0801250C: .4byte 0x80000200
_08012510: .4byte 0x0000089C
_08012514: .4byte gUnknown_03003AD0
_08012518: .4byte 0x80000050
_0801251C: .4byte gTestimony
_08012520: .4byte gCourtRecord
_08012524:
	ldrh r0, [r5, #0x2e]
	bl sub_800342C
	ldrh r2, [r5, #0x2e]
	cmp r2, #0x23
	bne _08012546
	ldr r1, _08012568 @ =gIORegisters
	movs r0, #8
	strh r0, [r1, #0x14]
	movs r0, #0x6b
	bl sub_8013EB0
	adds r1, r0, #0
	cmp r1, #0
	beq _08012546
	movs r0, #0x78
	strh r0, [r1, #0x10]
_08012546:
	ldr r0, _0801256C @ =gMain
	ldr r4, _08012570 @ =0x000002BE
	adds r0, r0, r4
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080125A8
	lsrs r0, r1, #4
	cmp r0, #1
	beq _0801258A
	cmp r0, #1
	bgt _08012574
	cmp r0, #0
	beq _0801257A
	b _080125A8
	.align 2, 0
_08012568: .4byte gIORegisters
_0801256C: .4byte gMain
_08012570: .4byte 0x000002BE
_08012574:
	cmp r0, #2
	beq _0801259A
	b _080125A8
_0801257A:
	bl sub_800E7B0
	movs r0, #0x18
	movs r1, #0x80
	movs r2, #1
	bl sub_800E7EC
	b _080125A8
_0801258A:
	bl sub_800E8C4
	movs r0, #0
	movs r1, #0x80
	movs r2, #1
	bl sub_800E900
	b _080125A8
_0801259A:
	bl sub_800E8C4
	movs r0, #0x20
	movs r1, #0x80
	movs r2, #1
	bl sub_800E9D4
_080125A8:
	ldr r1, _080125CC @ =gMain
	ldr r0, _080125D0 @ =0x00000A04
	ldrh r6, [r1, #0xc]
	cmp r6, r0
	bne _080125D8
	ldr r2, _080125D4 @ =0x0000024B
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #2
	beq _080125C4
	bl sub_8016204
	bl sub_801622C
_080125C4:
	bl sub_80170AC
	b _080125F2
	.align 2, 0
_080125CC: .4byte gMain
_080125D0: .4byte 0x00000A04
_080125D4: .4byte 0x0000024B
_080125D8:
	ldr r4, _08012604 @ =0x0000024B
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #1
	bne _080125F2
	movs r6, #0x91
	lsls r6, r6, #2
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_8016C7C
_080125F2:
	movs r0, #1
	movs r1, #1
	movs r2, #2
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r5, #0xa]
	adds r0, #1
	b _08012690
	.align 2, 0
_08012604: .4byte 0x0000024B
_08012608:
	adds r0, r5, #0
	adds r0, #0x7e
	ldrh r4, [r0]
	cmp r4, #0
	bne _0801261C
	bl sub_8013A7C
	movs r0, #1
	strb r0, [r5, #9]
	strb r4, [r5, #0xa]
_0801261C:
	ldr r4, _0801262C @ =gCourtRecord
	adds r0, r4, #0
	bl sub_8003FC4
	adds r0, r4, #0
	bl sub_8012D20
	b _08012692
	.align 2, 0
_0801262C: .4byte gCourtRecord
_08012630:
	adds r0, r5, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _08012692
	ldr r0, [r6, #0x14]
	ldrb r1, [r6, #0xd]
	adds r0, r1, r0
	ldr r1, _08012660 @ =gUnknown_08022F38
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	cmp r0, #8
	bne _08012676
	ldrb r0, [r6, #0x13]
	cmp r0, #1
	beq _0801266E
	cmp r0, #1
	bgt _08012664
	cmp r0, #0
	beq _0801266A
	b _08012676
	.align 2, 0
_08012660: .4byte gUnknown_08022F38
_08012664:
	cmp r0, #2
	beq _08012672
	b _08012676
_0801266A:
	movs r0, #0x27
	b _08012674
_0801266E:
	movs r0, #0x28
	b _08012674
_08012672:
	movs r0, #0x29
_08012674:
	strh r0, [r5, #0x2e]
_08012676:
	ldrh r0, [r5, #0x2e]
	bl sub_8002820
	ldrh r0, [r5, #0x2e]
	bl CopyBGDataToVram
	movs r0, #1
	movs r1, #1
	movs r2, #2
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r0, #1
_08012690:
	strb r0, [r5, #0xa]
_08012692:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80126A0
sub_80126A0: @ 0x080126A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1, #0x14]
	ldrb r1, [r1, #0xd]
	adds r0, r1, r0
	ldrb r0, [r0]
	bl sub_8012DDC
	movs r0, #3
	strb r0, [r4, #9]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80126BC
sub_80126BC: @ 0x080126BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _080126E0 @ =gOamObjects+0x1A0
	mov sb, r0
	ldr r6, _080126E4 @ =gUnknown_03000844
	ldrb r7, [r5, #0xa]
	cmp r7, #2
	bgt _080126E8
	cmp r7, #1
	bge _080127CC
	cmp r7, #0
	beq _080126F0
	b _080127EE
	.align 2, 0
_080126E0: .4byte gOamObjects+0x1A0
_080126E4: .4byte gUnknown_03000844
_080126E8:
	cmp r7, #3
	bne _080126EE
	b _080127F4
_080126EE:
	b _080127EE
_080126F0:
	adds r1, r5, #0
	adds r1, #0x92
	movs r2, #0
	mov r8, r2
	strh r7, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	mov r3, sb
	strh r0, [r3]
	movs r0, #1
	ldrsb r0, [r4, r0]
	adds r6, r1, #0
	cmp r0, #0
	beq _0801270E
	b _080129F0
_0801270E:
	movs r0, #4
	bl sub_801480C
	movs r0, #0x37
	bl sub_8013834
	ldr r1, _0801279C @ =gTestimony
	movs r0, #6
	strb r0, [r1, #1]
	ldr r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	adds r0, r1, r0
	ldrb r2, [r0]
	movs r0, #0x20
	ldrb r4, [r4, #0xc]
	ands r0, r4
	cmp r0, #0
	beq _08012734
	movs r2, #6
_08012734:
	ldr r1, _080127A0 @ =gUnknown_08022F38
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r2, r3, #6
	adds r2, r2, r3
	lsls r2, r2, #5
	ldr r0, _080127A4 @ =gUnknown_08177E28
	adds r4, r2, r0
	ldr r0, _080127A8 @ =0x040000D4
	str r4, [r0]
	ldr r1, _080127AC @ =0x05000220
	str r1, [r0, #4]
	ldr r1, _080127B0 @ =0x80000010
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080127B4 @ =gUnknown_08177E48
	adds r4, r2, r1
	str r4, [r0]
	ldr r1, _080127B8 @ =0x06011000
	str r1, [r0, #4]
	ldr r1, _080127BC @ =0x80000400
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #0x10
	mov r2, sb
	strh r0, [r2]
	ldr r0, _080127C0 @ =0x0000C058
	strh r0, [r2, #2]
	movs r0, #0x84
	lsls r0, r0, #5
	strh r0, [r2, #4]
	adds r0, r5, #0
	adds r0, #0x8d
	mov r3, r8
	strb r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6]
	ldr r1, _080127C4 @ =gIORegisters
	adds r1, #0x4a
	ldr r0, _080127C8 @ =0x0000FDFF
	ldrh r2, [r1]
	ands r0, r2
	strh r0, [r1]
	strb r3, [r5, #0x18]
	strb r3, [r5, #0x19]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	strb r3, [r5, #0xb]
	b _080129F0
	.align 2, 0
_0801279C: .4byte gTestimony
_080127A0: .4byte gUnknown_08022F38
_080127A4: .4byte gUnknown_08177E28
_080127A8: .4byte 0x040000D4
_080127AC: .4byte 0x05000220
_080127B0: .4byte 0x80000010
_080127B4: .4byte gUnknown_08177E48
_080127B8: .4byte 0x06011000
_080127BC: .4byte 0x80000400
_080127C0: .4byte 0x0000C058
_080127C4: .4byte gIORegisters
_080127C8: .4byte 0x0000FDFF
_080127CC:
	ldrb r0, [r5, #0xb]
	cmp r0, #7
	bls _080127EA
	movs r0, #3
	movs r1, #1
	movs r2, #6
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r5, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xb]
	b _080127EE
_080127EA:
	adds r0, #1
	strb r0, [r5, #0xb]
_080127EE:
	adds r6, r5, #0
	adds r6, #0x92
	b _080129F0
_080127F4:
	ldrb r0, [r5, #0xb]
	cmp r0, #0x37
	bhi _080127FC
	b _080129D8
_080127FC:
	ldrb r1, [r4, #0xc]
	movs r3, #8
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _0801283C
	movs r0, #0x80
	lsls r0, r0, #2
	mov r3, sb
	strh r0, [r3]
	movs r0, #0xf7
	ldrb r1, [r4, #0xc]
	ands r0, r1
	strb r0, [r4, #0xc]
	adds r0, r5, #0
	adds r0, #0xb2
	ldrb r0, [r0]
	ldrb r1, [r6, #0xe]
	bl sub_8016D8C
	movs r2, #0x91
	lsls r2, r2, #2
	adds r1, r5, r2
	strb r0, [r1]
	ldr r0, _08012838 @ =0x00000A04
	str r0, [r5, #8]
	b _08012A8A
	.align 2, 0
_08012838: .4byte 0x00000A04
_0801283C:
	movs r0, #0x10
	mov r8, r0
	ands r0, r1
	cmp r0, #0
	beq _080128E4
	movs r0, #0xef
	ands r0, r1
	strb r0, [r4, #0xc]
	ldr r0, _080128B4 @ =gMain
	ldr r1, _080128B8 @ =0x0000024A
	adds r0, r0, r1
	strb r2, [r0]
	movs r2, #0x91
	lsls r2, r2, #2
	adds r6, r5, r2
	movs r1, #0
	ldrsb r1, [r6, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r3, #0xd2
	lsls r3, r3, #1
	adds r0, r0, r3
	adds r0, r5, r0
	ldr r1, [r4, #0x14]
	ldrb r4, [r4, #0xd]
	adds r1, r4, r1
	ldrb r1, [r1]
	bl sub_8016DCC
	adds r3, r0, #0
	cmp r3, #0
	blt _080128BC
	movs r1, #0
	ldrsb r1, [r6, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r5, r0
	lsls r1, r3, #1
	adds r1, r1, r0
	movs r3, #0xe2
	lsls r3, r3, #1
	adds r0, r5, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r3, #0x12
	adds r2, r2, r3
	strh r0, [r2]
	movs r1, #0
	ldrsb r1, [r6, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r5, r0
	adds r0, r0, r3
	ldrh r0, [r0]
	bl sub_8007538
	b _080128D4
	.align 2, 0
_080128B4: .4byte gMain
_080128B8: .4byte 0x0000024A
_080128BC:
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r5, r1
	movs r0, #0xda
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl sub_8007538
_080128D4:
	movs r0, #1
	bl sub_80037FC
	ldr r0, _080128E0 @ =0x00030A04
	str r0, [r5, #8]
	b _08012A8A
	.align 2, 0
_080128E0: .4byte 0x00030A04
_080128E4:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08012920
	ldr r0, _08012918 @ =gIORegisters
	adds r0, #0x4a
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	ldrh r3, [r0]
	orrs r1, r3
	strh r1, [r0]
	movs r0, #1
	strb r0, [r5, #0x18]
	strb r0, [r5, #0x19]
	movs r0, #0xdf
	ldrb r1, [r4, #0xc]
	ands r0, r1
	strb r0, [r4, #0xc]
	ldr r0, _0801291C @ =gScriptContext
	ldrh r4, [r0, #0x1e]
	adds r0, r4, #0
	bl sub_8007538
	b _080129C4
	.align 2, 0
_08012918: .4byte gIORegisters
_0801291C: .4byte gScriptContext
_08012920:
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #2
	mov r0, sb
	strh r1, [r0]
	ldr r0, _0801295C @ =gInvestigation
	strb r2, [r0, #0x10]
	strb r3, [r0, #0x11]
	ldr r0, _08012960 @ =gIORegisters
	adds r0, #0x4a
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	movs r0, #1
	strb r0, [r5, #0x18]
	strb r0, [r5, #0x19]
	ldr r6, _08012964 @ =gScriptContext
	ldrh r0, [r6, #0x1e]
	ldr r1, [r4, #0x14]
	ldrb r4, [r4, #0xd]
	adds r1, r4, r1
	ldrb r1, [r1]
	bl sub_80131F0
	adds r2, r0, #0
	cmp r2, #0
	beq _08012968
	bl sub_8007538
	b _080129C4
	.align 2, 0
_0801295C: .4byte gInvestigation
_08012960: .4byte gIORegisters
_08012964: .4byte gScriptContext
_08012968:
	ldrh r4, [r6, #0x1e]
	mov r0, r8
	ldrh r6, [r6]
	ands r0, r6
	cmp r0, #0
	beq _0801297E
	adds r4, #1
	adds r0, r4, #0
	bl sub_8007538
	b _080129BA
_0801297E:
	bl Random
	adds r2, r0, #0
	ands r2, r7
	cmp r2, #1
	beq _080129A0
	cmp r2, #1
	blo _08012998
	cmp r2, #2
	beq _080129A8
	cmp r2, #3
	beq _080129B0
	b _080129B6
_08012998:
	movs r0, #0x1f
	bl sub_8007538
	b _080129B6
_080129A0:
	movs r0, #0x20
	bl sub_8007538
	b _080129B6
_080129A8:
	movs r0, #0x21
	bl sub_8007538
	b _080129B6
_080129B0:
	movs r0, #0x22
	bl sub_8007538
_080129B6:
	ldr r0, _080129CC @ =gScriptContext
	strh r4, [r0, #0x20]
_080129BA:
	ldr r1, _080129CC @ =gScriptContext
	ldr r0, _080129D0 @ =0x0000FFEF
	ldrh r3, [r1]
	ands r0, r3
	strh r0, [r1]
_080129C4:
	ldr r1, _080129D4 @ =gMain+0x8
	ldr r0, [r5, #0xc]
	str r0, [r1]
	b _08012A8A
	.align 2, 0
_080129CC: .4byte gScriptContext
_080129D0: .4byte 0x0000FFEF
_080129D4: .4byte gMain+0x8
_080129D8:
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r1, r5, #0
	adds r1, #0x8d
	ldrb r0, [r1]
	adds r0, #0xc
	strb r0, [r1]
	adds r1, #5
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	adds r6, r1, #0
_080129F0:
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #4
	bgt _08012A02
	movs r0, #0x80
	lsls r0, r0, #2
	mov r2, sb
	strh r0, [r2]
	b _08012A7C
_08012A02:
	movs r3, #0
	ldrsh r0, [r6, r3]
	bl sub_8004290
	adds r4, r0, #0
	ldr r0, _08012A98 @ =gUnknown_0801C158
	mov r8, r0
	adds r6, r5, #0
	adds r6, #0x8d
	ldrb r0, [r6]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0
	bl sub_8004260
	ldr r5, _08012A9C @ =gOamObjects
	strh r0, [r5, #6]
	ldrb r2, [r6]
	lsls r0, r2, #1
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0xe]
	ldrb r1, [r6]
	lsls r0, r1, #1
	add r0, r8
	ldrh r0, [r0]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0x16]
	ldrb r0, [r6]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r4, #0
	bl sub_8004260
	strh r0, [r5, #0x1e]
	movs r0, #0x88
	lsls r0, r0, #1
	mov r3, sb
	strh r0, [r3]
	ldr r0, _08012AA0 @ =0x0000C058
	strh r0, [r3, #2]
	movs r0, #0x84
	lsls r0, r0, #5
	strh r0, [r3, #4]
_08012A7C:
	ldr r4, _08012AA4 @ =gCourtRecord
	adds r0, r4, #0
	bl sub_8003FC4
	adds r0, r4, #0
	bl sub_8012D20
_08012A8A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012A98: .4byte gUnknown_0801C158
_08012A9C: .4byte gOamObjects
_08012AA0: .4byte 0x0000C058
_08012AA4: .4byte gCourtRecord

	thumb_func_start sub_8012AA8
sub_8012AA8: @ 0x08012AA8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _08012B00 @ =gUnknown_03000000
	movs r0, #0
	ldr r4, _08012B04 @ =0x000003FF
	ldr r1, _08012B08 @ =gIORegisters
	movs r3, #0
_08012AB6:
	strh r3, [r2]
	adds r0, #1
	adds r2, #2
	cmp r0, r4
	bls _08012AB6
	adds r1, #0x4a
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	movs r4, #0
	ldrh r2, [r1]
	orrs r0, r2
	strh r0, [r1]
	bl sub_8012C60
	adds r0, r5, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	bl sub_8012DDC
	ldrh r1, [r5, #0x28]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	movs r1, #4
	bl sub_8013D04
	movs r0, #0xf
	bl sub_8013834
	ldrb r0, [r5, #9]
	adds r0, #1
	strb r0, [r5, #9]
	strb r4, [r5, #0xa]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08012B00: .4byte gUnknown_03000000
_08012B04: .4byte 0x000003FF
_08012B08: .4byte gIORegisters

	thumb_func_start sub_8012B0C
sub_8012B0C: @ 0x08012B0C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl sub_8003FC4
	adds r0, r4, #0
	bl sub_8012E54
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08012B64
	ldr r1, _08012B6C @ =gScriptContext
	movs r0, #1
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08012B64
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _08012B46
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0x1e
	bl sub_8013D04
	movs r0, #1
	strb r0, [r5, #0xa]
_08012B46:
	ldr r1, _08012B70 @ =gJoypad
	movs r0, #3
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _08012B64
	movs r0, #0x2b
	bl sub_8013834
	movs r0, #3
	movs r1, #0xe
	bl sub_8003C14
	movs r0, #2
	strb r0, [r5, #9]
_08012B64:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08012B6C: .4byte gScriptContext
_08012B70: .4byte gJoypad

	thumb_func_start sub_8012B74
sub_8012B74: @ 0x08012B74
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl sub_8003FC4
	adds r0, r4, #0
	bl sub_8012E54
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08012BDE
	ldr r1, _08012BAC @ =gMain+0x8
	ldr r0, [r5, #0xc]
	str r0, [r1]
	subs r1, #8
	ldrb r0, [r1, #8]
	cmp r0, #4
	bne _08012BD4
	ldrb r1, [r1, #9]
	cmp r1, #6
	bne _08012BB4
	ldr r0, _08012BB0 @ =gInvestigation
	movs r1, #1
	bl sub_800EB24
	b _08012BD4
	.align 2, 0
_08012BAC: .4byte gMain+0x8
_08012BB0: .4byte gInvestigation
_08012BB4:
	ldrb r5, [r5, #9]
	cmp r5, #8
	bne _08012BC8
	ldr r0, _08012BC4 @ =gInvestigation
	movs r1, #4
	bl sub_800EB24
	b _08012BD4
	.align 2, 0
_08012BC4: .4byte gInvestigation
_08012BC8:
	cmp r1, #9
	bne _08012BD4
	ldr r0, _08012BE4 @ =gInvestigation
	movs r1, #8
	bl sub_800EB24
_08012BD4:
	ldr r0, _08012BE8 @ =gScriptContext
	movs r1, #2
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
_08012BDE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08012BE4: .4byte gInvestigation
_08012BE8: .4byte gScriptContext

	thumb_func_start sub_8012BEC
sub_8012BEC: @ 0x08012BEC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08012C3E
	movs r0, #0
	strb r0, [r4, #9]
	ldrb r0, [r4, #8]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #8]
	ldr r1, _08012C44 @ =0x040000D4
	ldr r0, _08012C48 @ =gUnknown_08023418
	ldrb r2, [r4, #8]
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #5
	ldr r3, _08012C4C @ =gUnknown_0813D97C
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _08012C50 @ =0x06013400
	str r0, [r1, #4]
	ldr r2, _08012C54 @ =0x80000040
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08012C58 @ =gUnknown_0802341C
	ldrb r4, [r4, #8]
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _08012C5C @ =0x06013480
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
_08012C3E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012C44: .4byte 0x040000D4
_08012C48: .4byte gUnknown_08023418
_08012C4C: .4byte gUnknown_0813D97C
_08012C50: .4byte 0x06013400
_08012C54: .4byte 0x80000040
_08012C58: .4byte gUnknown_0802341C
_08012C5C: .4byte 0x06013480

	thumb_func_start sub_8012C60
sub_8012C60: @ 0x08012C60
	push {lr}
	movs r0, #1
	movs r1, #0xc
	bl sub_8003C14
	ldr r0, _08012CD8 @ =0x040000D4
	ldr r1, _08012CDC @ =gUnknown_0813D97C
	str r1, [r0]
	ldr r1, _08012CE0 @ =0x06013400
	str r1, [r0, #4]
	ldr r2, _08012CE4 @ =0x80000040
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08012CE8 @ =gUnknown_0813DAFC
	str r1, [r0]
	ldr r1, _08012CEC @ =0x06013480
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08012CF0 @ =gUnknown_081410FC
	str r1, [r0]
	ldr r1, _08012CF4 @ =0x06013800
	str r1, [r0, #4]
	adds r2, #0xc0
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08012CF8 @ =gUnknown_081420FC
	str r1, [r0]
	ldr r1, _08012CFC @ =0x06013A00
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08012D00 @ =gUnknown_081422FC
	str r1, [r0]
	ldr r1, _08012D04 @ =0x06013500
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08012D08 @ =gUnknown_0814DA80
	str r1, [r0]
	ldr r1, _08012D0C @ =0x05000260
	str r1, [r0, #4]
	subs r2, #0xf0
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08012D10 @ =gUnknown_0814DBE0
	str r1, [r0]
	ldr r1, _08012D14 @ =0x05000280
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08012D18 @ =gUnknown_081378FC
	str r1, [r0]
	ldr r1, _08012D1C @ =0x05000240
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	pop {r0}
	bx r0
	.align 2, 0
_08012CD8: .4byte 0x040000D4
_08012CDC: .4byte gUnknown_0813D97C
_08012CE0: .4byte 0x06013400
_08012CE4: .4byte 0x80000040
_08012CE8: .4byte gUnknown_0813DAFC
_08012CEC: .4byte 0x06013480
_08012CF0: .4byte gUnknown_081410FC
_08012CF4: .4byte 0x06013800
_08012CF8: .4byte gUnknown_081420FC
_08012CFC: .4byte 0x06013A00
_08012D00: .4byte gUnknown_081422FC
_08012D04: .4byte 0x06013500
_08012D08: .4byte gUnknown_0814DA80
_08012D0C: .4byte 0x05000260
_08012D10: .4byte gUnknown_0814DBE0
_08012D14: .4byte 0x05000280
_08012D18: .4byte gUnknown_081378FC
_08012D1C: .4byte 0x05000240

	thumb_func_start sub_8012D20
sub_8012D20: @ 0x08012D20
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8012E54
	movs r0, #4
	ldrb r1, [r4, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _08012DA4
	adds r0, r4, #0
	bl sub_8012BEC
	ldr r1, _08012D44 @ =gOamObjects
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bls _08012D48
	movs r0, #0x30
	b _08012D4C
	.align 2, 0
_08012D44: .4byte gOamObjects
_08012D48:
	movs r0, #0x80
	lsls r0, r0, #2
_08012D4C:
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r1, #2]
	ldr r0, _08012D64 @ =0x000021A0
	strh r0, [r1, #4]
	adds r1, #8
	ldrb r4, [r4, #0xe]
	cmp r4, #1
	bls _08012D68
	movs r0, #0x30
	b _08012D6C
	.align 2, 0
_08012D64: .4byte 0x000021A0
_08012D68:
	movs r0, #0x80
	lsls r0, r0, #2
_08012D6C:
	strh r0, [r1]
	ldr r0, _08012D90 @ =0x000040E0
	strh r0, [r1, #2]
	ldr r0, _08012D94 @ =0x000021A4
	strh r0, [r1, #4]
	ldr r0, _08012D98 @ =gMain
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	beq _08012D86
	cmp r0, #4
	beq _08012D86
	cmp r0, #5
	bne _08012D9C
_08012D86:
	movs r0, #1
	bl sub_8012EE4
	b _08012DD6
	.align 2, 0
_08012D90: .4byte 0x000040E0
_08012D94: .4byte 0x000021A4
_08012D98: .4byte gMain
_08012D9C:
	movs r0, #1
	bl sub_8012F44
	b _08012DD6
_08012DA4:
	ldr r1, _08012DC8 @ =gOamObjects
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	strh r0, [r1, #8]
	ldr r0, _08012DCC @ =gMain
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	beq _08012DBE
	cmp r0, #4
	beq _08012DBE
	cmp r0, #5
	bne _08012DD0
_08012DBE:
	movs r0, #0
	bl sub_8012EE4
	b _08012DD6
	.align 2, 0
_08012DC8: .4byte gOamObjects
_08012DCC: .4byte gMain
_08012DD0:
	movs r0, #0
	bl sub_8012F44
_08012DD6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8012DDC
sub_8012DDC: @ 0x08012DDC
	push {r4, r5, lr}
	ldr r1, _08012E2C @ =gUnknown_08022F38
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r2, r1, #6
	adds r2, r2, r1
	lsls r2, r2, #5
	ldr r3, _08012E30 @ =gUnknown_08177E28
	adds r1, r2, r3
	ldr r4, _08012E34 @ =0x040000D4
	str r1, [r4]
	ldr r1, _08012E38 @ =0x05000220
	str r1, [r4, #4]
	ldr r1, _08012E3C @ =0x80000010
	str r1, [r4, #8]
	ldr r1, [r4, #8]
	adds r3, #0x20
	adds r1, r2, r3
	str r1, [r4]
	ldr r1, _08012E40 @ =0x06015000
	str r1, [r4, #4]
	ldr r1, _08012E44 @ =0x80000400
	str r1, [r4, #8]
	ldr r1, [r4, #8]
	ldr r1, [r0]
	ldr r5, _08012E48 @ =gUnknown_0200AFC0
	adds r0, r1, #0
	adds r1, r5, #0
	bl LZ77UnCompWram
	str r5, [r4]
	ldr r0, _08012E4C @ =0x06013C00
	str r0, [r4, #4]
	ldr r0, _08012E50 @ =0x80000A00
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08012E2C: .4byte gUnknown_08022F38
_08012E30: .4byte gUnknown_08177E28
_08012E34: .4byte 0x040000D4
_08012E38: .4byte 0x05000220
_08012E3C: .4byte 0x80000010
_08012E40: .4byte 0x06015000
_08012E44: .4byte 0x80000400
_08012E48: .4byte gUnknown_0200AFC0
_08012E4C: .4byte 0x06013C00
_08012E50: .4byte 0x80000A00

	thumb_func_start sub_8012E54
sub_8012E54: @ 0x08012E54
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r1, _08012EB8 @ =gOamObjects+0x110
	movs r0, #0x18
	strh r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #8
	strh r0, [r1, #2]
	ldrh r2, [r5, #4]
	adds r0, r2, r0
	strh r0, [r1, #2]
	movs r0, #0x94
	lsls r0, r0, #5
	strh r0, [r1, #4]
	adds r1, #8
	movs r3, #0
	movs r6, #0x18
	ldr r4, _08012EBC @ =0x000021E0
	ldr r2, _08012EC0 @ =0x00008048
_08012E7A:
	strh r6, [r1]
	strh r2, [r1, #2]
	ldrh r7, [r5, #4]
	adds r0, r7, r2
	strh r0, [r1, #2]
	strh r4, [r1, #4]
	adds r1, #8
	adds r4, #0x10
	adds r2, #0x20
	adds r3, #1
	cmp r3, #4
	bls _08012E7A
	movs r3, #0
	movs r6, #0x38
	ldr r4, _08012EC4 @ =0x00002230
	ldr r2, _08012EC0 @ =0x00008048
_08012E9A:
	strh r6, [r1]
	strh r2, [r1, #2]
	ldrh r7, [r5, #4]
	adds r0, r7, r2
	strh r0, [r1, #2]
	strh r4, [r1, #4]
	adds r1, #8
	adds r4, #0x10
	adds r2, #0x20
	adds r3, #1
	cmp r3, #4
	bls _08012E9A
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012EB8: .4byte gOamObjects+0x110
_08012EBC: .4byte 0x000021E0
_08012EC0: .4byte 0x00008048
_08012EC4: .4byte 0x00002230

	thumb_func_start sub_8012EC8
sub_8012EC8: @ 0x08012EC8
	ldr r1, _08012EE0 @ =gOamObjects+0x110
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, #8
	movs r2, #0
_08012ED4:
	strh r0, [r1]
	adds r1, #8
	adds r2, #1
	cmp r2, #9
	bls _08012ED4
	bx lr
	.align 2, 0
_08012EE0: .4byte gOamObjects+0x110

	thumb_func_start sub_8012EE4
sub_8012EE4: @ 0x08012EE4
	ldr r2, _08012F14 @ =gOamObjects+0x168
	cmp r0, #0
	beq _08012F34
	movs r0, #0x60
	strh r0, [r2]
	ldr r0, _08012F18 @ =0x000040A0
	strh r0, [r2, #2]
	ldr r0, _08012F1C @ =0x000041C8
	strh r0, [r2, #4]
	adds r2, #8
	ldr r1, _08012F20 @ =0x00004060
	strh r1, [r2]
	ldr r0, _08012F24 @ =0x000080B0
	strh r0, [r2, #2]
	ldr r0, _08012F28 @ =0x000041A8
	strh r0, [r2, #4]
	adds r2, #8
	strh r1, [r2]
	ldr r0, _08012F2C @ =0x000080D0
	strh r0, [r2, #2]
	ldr r0, _08012F30 @ =0x000041B0
	strh r0, [r2, #4]
	b _08012F40
	.align 2, 0
_08012F14: .4byte gOamObjects+0x168
_08012F18: .4byte 0x000040A0
_08012F1C: .4byte 0x000041C8
_08012F20: .4byte 0x00004060
_08012F24: .4byte 0x000080B0
_08012F28: .4byte 0x000041A8
_08012F2C: .4byte 0x000080D0
_08012F30: .4byte 0x000041B0
_08012F34:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
	adds r2, #8
	strh r0, [r2]
	strh r0, [r2, #8]
_08012F40:
	bx lr
	.align 2, 0

	thumb_func_start sub_8012F44
sub_8012F44: @ 0x08012F44
	ldr r3, _08012FA4 @ =gOamObjects+0x168
	cmp r0, #0
	bne _08012F4C
	b _08013060
_08012F4C:
	ldr r0, _08012FA8 @ =gMain
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08012FD0
	movs r2, #0x60
	strh r2, [r3]
	ldr r0, _08012FAC @ =0x0000403C
	strh r0, [r3, #2]
	ldr r0, _08012FB0 @ =0x000041C8
	strh r0, [r3, #4]
	adds r3, #8
	ldr r1, _08012FB4 @ =0x00004060
	strh r1, [r3]
	ldr r0, _08012FB8 @ =0x0000804C
	strh r0, [r3, #2]
	ldr r0, _08012FBC @ =0x000041A8
	strh r0, [r3, #4]
	adds r3, #8
	strh r1, [r3]
	ldr r0, _08012FC0 @ =0x0000806C
	strh r0, [r3, #2]
	ldr r0, _08012FC4 @ =0x000041B0
	strh r0, [r3, #4]
	adds r3, #0x50
	strh r2, [r3]
	subs r0, #0xe8
	strh r0, [r3, #2]
	adds r0, #0xf8
	strh r0, [r3, #4]
	adds r3, #8
	strh r1, [r3]
	ldr r0, _08012FC8 @ =0x000080D8
	strh r0, [r3, #2]
	ldr r0, _08012FCC @ =0x000041D0
	strh r0, [r3, #4]
	adds r3, #8
	movs r0, #0x80
	lsls r0, r0, #2
	b _08013078
	.align 2, 0
_08012FA4: .4byte gOamObjects+0x168
_08012FA8: .4byte gMain
_08012FAC: .4byte 0x0000403C
_08012FB0: .4byte 0x000041C8
_08012FB4: .4byte 0x00004060
_08012FB8: .4byte 0x0000804C
_08012FBC: .4byte 0x000041A8
_08012FC0: .4byte 0x0000806C
_08012FC4: .4byte 0x000041B0
_08012FC8: .4byte 0x000080D8
_08012FCC: .4byte 0x000041D0
_08012FD0:
	movs r2, #0x60
	strh r2, [r3]
	ldr r0, _08013028 @ =0x0000403C
	strh r0, [r3, #2]
	ldr r0, _0801302C @ =0x000041C8
	strh r0, [r3, #4]
	adds r3, #8
	ldr r1, _08013030 @ =0x00004060
	strh r1, [r3]
	ldr r0, _08013034 @ =0x0000804C
	strh r0, [r3, #2]
	ldr r0, _08013038 @ =0x000041A8
	strh r0, [r3, #4]
	adds r3, #8
	strh r1, [r3]
	ldr r0, _0801303C @ =0x0000806C
	strh r0, [r3, #2]
	ldr r0, _08013040 @ =0x000041B0
	strh r0, [r3, #4]
	adds r3, #0x50
	strh r2, [r3]
	ldr r0, _08013044 @ =0x0000408C
	strh r0, [r3, #2]
	ldr r0, _08013048 @ =0x000041C0
	strh r0, [r3, #4]
	adds r3, #8
	strh r1, [r3]
	ldr r0, _0801304C @ =0x0000809C
	strh r0, [r3, #2]
	ldr r0, _08013050 @ =0x000041D0
	strh r0, [r3, #4]
	adds r3, #8
	strh r2, [r3]
	ldr r0, _08013054 @ =0x000040C8
	strh r0, [r3, #2]
	adds r0, #0xfc
	strh r0, [r3, #4]
	adds r3, #8
	strh r1, [r3]
	ldr r0, _08013058 @ =0x000080D8
	strh r0, [r3, #2]
	ldr r0, _0801305C @ =0x000041D8
	strh r0, [r3, #4]
	b _0801307C
	.align 2, 0
_08013028: .4byte 0x0000403C
_0801302C: .4byte 0x000041C8
_08013030: .4byte 0x00004060
_08013034: .4byte 0x0000804C
_08013038: .4byte 0x000041A8
_0801303C: .4byte 0x0000806C
_08013040: .4byte 0x000041B0
_08013044: .4byte 0x0000408C
_08013048: .4byte 0x000041C0
_0801304C: .4byte 0x0000809C
_08013050: .4byte 0x000041D0
_08013054: .4byte 0x000040C8
_08013058: .4byte 0x000080D8
_0801305C: .4byte 0x000041D8
_08013060:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3]
	adds r3, #8
	strh r0, [r3]
	adds r3, #8
	strh r0, [r3]
	adds r3, #0x50
	strh r0, [r3]
	adds r3, #8
	strh r0, [r3]
	adds r3, #8
_08013078:
	strh r0, [r3]
	strh r0, [r3, #8]
_0801307C:
	bx lr
	.align 2, 0

	thumb_func_start sub_8013080
sub_8013080: @ 0x08013080
	ldr r0, _080130AC @ =gOamObjects+0x168
	movs r2, #0x90
	strh r2, [r0]
	ldr r1, _080130B0 @ =0x000040B8
	strh r1, [r0, #2]
	ldr r1, _080130B4 @ =0x000041C4
	strh r1, [r0, #4]
	adds r0, #8
	strh r2, [r0]
	subs r1, #0xfc
	strh r1, [r0, #2]
	ldr r1, _080130B8 @ =0x000041CC
	strh r1, [r0, #4]
	adds r0, #8
	ldr r1, _080130BC @ =0x00004090
	strh r1, [r0]
	ldr r1, _080130C0 @ =0x000080D8
	strh r1, [r0, #2]
	ldr r1, _080130C4 @ =0x000041D8
	strh r1, [r0, #4]
	bx lr
	.align 2, 0
_080130AC: .4byte gOamObjects+0x168
_080130B0: .4byte 0x000040B8
_080130B4: .4byte 0x000041C4
_080130B8: .4byte 0x000041CC
_080130BC: .4byte 0x00004090
_080130C0: .4byte 0x000080D8
_080130C4: .4byte 0x000041D8

	thumb_func_start sub_80130C8
sub_80130C8: @ 0x080130C8
	push {r4, lr}
	adds r4, r1, #0
	cmp r0, #0
	beq _080130E4
	ldr r3, _080130DC @ =gCourtRecord+0x38
	adds r0, r3, #0
	subs r0, #0x38
	ldrb r1, [r0, #0x11]
	b _080130EC
	.align 2, 0
_080130DC: .4byte gCourtRecord+0x38
_080130E0:
	adds r0, r2, #0
	b _08013104
_080130E4:
	ldr r3, _0801310C @ =gCourtRecord+0x18
	adds r0, r3, #0
	subs r0, #0x18
	ldrb r1, [r0, #0x10]
_080130EC:
	movs r2, #0
	cmp r2, r1
	bhs _08013100
_080130F2:
	ldrb r0, [r3]
	cmp r0, r4
	beq _080130E0
	adds r2, #1
	adds r3, #1
	cmp r2, r1
	blo _080130F2
_08013100:
	movs r0, #1
	rsbs r0, r0, #0
_08013104:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0801310C: .4byte gCourtRecord+0x18

	thumb_func_start sub_8013110
sub_8013110: @ 0x08013110
	ldr r2, _08013124 @ =gCourtRecord+0x18
	cmp r0, #0
	beq _08013118
	adds r2, #0x20
_08013118:
	movs r1, #0
_0801311A:
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _08013128
	adds r0, r1, #0
	b _08013134
	.align 2, 0
_08013124: .4byte gCourtRecord+0x18
_08013128:
	adds r1, #1
	adds r2, #1
	cmp r1, #0x1f
	bls _0801311A
	movs r0, #1
	rsbs r0, r0, #0
_08013134:
	bx lr
	.align 2, 0

	thumb_func_start sub_8013138
sub_8013138: @ 0x08013138
	push {r4, r5, r6, lr}
	sub sp, #4
	mov ip, r0
	ldr r4, _080131DC @ =gUnknown_0200AFC0
	ldr r1, _080131E0 @ =0x040000D4
	mov r3, ip
	adds r3, #0x38
	str r3, [r1]
	str r4, [r1, #4]
	ldr r0, _080131E4 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r2, sp
	ldr r5, _080131E8 @ =0x0000FFFF
	adds r0, r5, #0
	strh r0, [r2]
	str r2, [r1]
	str r3, [r1, #4]
	ldr r0, _080131EC @ =0x81000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	mov r6, ip
	strb r0, [r6, #0x11]
	movs r2, #0
_0801316A:
	adds r0, r4, r2
	ldrb r1, [r0]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _08013184
	mov r5, ip
	ldrb r5, [r5, #0x11]
	adds r0, r5, r3
	strb r1, [r0]
	mov r6, ip
	ldrb r0, [r6, #0x11]
	adds r0, #1
	strb r0, [r6, #0x11]
_08013184:
	adds r2, #1
	cmp r2, #0x1f
	bls _0801316A
	ldr r1, _080131E0 @ =0x040000D4
	mov r3, ip
	adds r3, #0x18
	str r3, [r1]
	str r4, [r1, #4]
	ldr r0, _080131E4 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r2, sp
	ldr r5, _080131E8 @ =0x0000FFFF
	adds r0, r5, #0
	strh r0, [r2]
	str r2, [r1]
	str r3, [r1, #4]
	ldr r0, _080131EC @ =0x81000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	mov r6, ip
	strb r0, [r6, #0x10]
	movs r2, #0
_080131B4:
	adds r0, r4, r2
	ldrb r1, [r0]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080131CE
	mov r5, ip
	ldrb r5, [r5, #0x10]
	adds r0, r5, r3
	strb r1, [r0]
	mov r6, ip
	ldrb r0, [r6, #0x10]
	adds r0, #1
	strb r0, [r6, #0x10]
_080131CE:
	adds r2, #1
	cmp r2, #0x1f
	bls _080131B4
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080131DC: .4byte gUnknown_0200AFC0
_080131E0: .4byte 0x040000D4
_080131E4: .4byte 0x80000010
_080131E8: .4byte 0x0000FFFF
_080131EC: .4byte 0x81000010

	thumb_func_start sub_80131F0
sub_80131F0: @ 0x080131F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r0, _0801323C @ =gUnknown_08111F6C
	ldr r1, _08013240 @ =gMain
	adds r1, #0xb3
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r4, [r1]
	ldr r0, _08013244 @ =0x0000FFFF
	ldrh r1, [r4]
	cmp r1, r0
	beq _0801325C
	ldr r5, _08013248 @ =gScriptContext+0x33
	mov r8, r0
_08013214:
	ldrb r0, [r4, #6]
	cmp r0, #0xff
	beq _08013226
	adds r1, r0, #0
	movs r0, #0
	bl sub_8004338
	cmp r0, #0
	beq _08013254
_08013226:
	ldrh r0, [r4]
	cmp r0, r7
	bne _08013254
	ldrh r0, [r4, #2]
	cmp r0, r6
	bne _08013254
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _0801324C
	movs r0, #0
	b _0801324E
	.align 2, 0
_0801323C: .4byte gUnknown_08111F6C
_08013240: .4byte gMain
_08013244: .4byte 0x0000FFFF
_08013248: .4byte gScriptContext+0x33
_0801324C:
	movs r0, #1
_0801324E:
	strb r0, [r5]
	ldrh r0, [r4, #4]
	b _08013266
_08013254:
	adds r4, #8
	ldrh r0, [r4]
	cmp r0, r8
	bne _08013214
_0801325C:
	ldr r0, _08013270 @ =gScriptContext
	adds r0, #0x33
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
_08013266:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08013270: .4byte gScriptContext

	thumb_func_start sub_8013274
sub_8013274: @ 0x08013274
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	mov sb, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, _08013300 @ =gUnknown_08111FC4
	adds r0, #0xb3
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	ldrh r4, [r3, #8]
	ldrb r0, [r3, #4]
	cmp r0, #0xff
	beq _080132B8
	mov r0, ip
	adds r0, #0xb2
	adds r1, r0, #0
	ldrb r0, [r3]
	ldrb r2, [r1]
	cmp r0, r2
	beq _080132C6
_080132A8:
	adds r3, #0xc
	ldrb r0, [r3, #4]
	cmp r0, #0xff
	beq _080132B8
	ldrb r0, [r3]
	ldrb r2, [r1]
	cmp r0, r2
	bne _080132A8
_080132B8:
	mov r0, ip
	adds r0, #0xb2
	adds r1, r0, #0
	ldrb r0, [r3]
	ldrb r2, [r1]
	cmp r0, r2
	bne _08013312
_080132C6:
	ldr r0, _08013304 @ =gUnknown_03000852
	ldrb r7, [r0]
	adds r2, r1, #0
	ldrb r6, [r2]
	movs r5, #0x97
	lsls r5, r5, #2
	add r5, ip
_080132D4:
	ldrb r0, [r3, #3]
	cmp r7, r0
	bne _0801330A
	ldrb r1, [r3, #4]
	cmp r8, r1
	bne _0801330A
	ldrb r1, [r2]
	adds r0, r1, r5
	ldrb r1, [r3, #1]
	ldrb r0, [r0]
	cmp r0, r1
	beq _080132F0
	cmp r1, #0xff
	bne _0801330A
_080132F0:
	ldrb r0, [r3, #2]
	cmp sb, r0
	beq _080132FA
	cmp r0, #0xff
	bne _08013308
_080132FA:
	ldrh r0, [r3, #6]
	b _08013314
	.align 2, 0
_08013300: .4byte gUnknown_08111FC4
_08013304: .4byte gUnknown_03000852
_08013308:
	ldrh r4, [r3, #8]
_0801330A:
	adds r3, #0xc
	ldrb r0, [r3]
	cmp r0, r6
	beq _080132D4
_08013312:
	adds r0, r4, #0
_08013314:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start UpdateItemPlate
UpdateItemPlate: @ 0x08013320
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0801333C @ =gOamObjects+0x208
	adds r0, #0x8b
	ldrb r0, [r0]
	adds r2, r5, #0
	cmp r0, #6
	bls _08013332
	b _08013502
_08013332:
	lsls r0, r0, #2
	ldr r1, _08013340 @ =_08013344
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801333C: .4byte gOamObjects+0x208
_08013340: .4byte _08013344
_08013344: @ jump table
	.4byte _08013502 @ case 0
	.4byte _08013360 @ case 1
	.4byte _080133A6 @ case 2
	.4byte _080133EC @ case 3
	.4byte _0801342E @ case 4
	.4byte _080134A0 @ case 5
	.4byte _080134F4 @ case 6
_08013360:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
	ldr r1, _08013388 @ =0x040000D4
	str r2, [r1]
	ldr r0, _0801338C @ =0x07000208
	str r0, [r1, #4]
	ldr r0, _08013390 @ =0x80000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r4, #0
	adds r0, #0x8c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08013394
	adds r1, r4, #0
	adds r1, #0x90
	movs r0, #4
	b _0801339A
	.align 2, 0
_08013388: .4byte 0x040000D4
_0801338C: .4byte 0x07000208
_08013390: .4byte 0x80000004
_08013394:
	adds r1, r4, #0
	adds r1, #0x90
	movs r0, #6
_0801339A:
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x8b
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080133A6:
	adds r0, r4, #0
	bl sub_8013730
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r0, [r0]
	cmp r0, #2
	beq _080133B8
	b _08013502
_080133B8:
	ldr r3, _080133E8 @ =gUnknown_03002080
	adds r0, r3, #0
	adds r0, #0x42
	movs r2, #0
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x3e
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	subs r0, #0xc
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r0, #0x42
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x8b
	strb r2, [r0]
	b _08013502
	.align 2, 0
_080133E8: .4byte gUnknown_03002080
_080133EC:
	adds r0, r4, #0
	bl sub_8013508
	adds r0, r4, #0
	adds r0, #0x8c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801340C
	ldr r0, _08013408 @ =0x0000C010
	strh r0, [r5, #2]
	adds r1, r4, #0
	adds r1, #0x90
	movs r0, #3
	b _08013416
	.align 2, 0
_08013408: .4byte 0x0000C010
_0801340C:
	ldr r0, _0801343C @ =0x0000C0A0
	strh r0, [r5, #2]
	adds r1, r4, #0
	adds r1, #0x90
	movs r0, #5
_08013416:
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
	movs r0, #0x84
	lsls r0, r0, #5
	strh r0, [r5, #4]
	adds r1, r4, #0
	adds r1, #0x8b
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0801342E:
	ldrb r0, [r4, #8]
	cmp r0, #0xa
	bne _08013440
	adds r1, r4, #0
	adds r1, #0x8b
	movs r0, #6
	b _08013500
	.align 2, 0
_0801343C: .4byte 0x0000C0A0
_08013440:
	adds r0, r4, #0
	bl sub_8013730
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r0, [r0]
	cmp r0, #1
	bne _08013454
	movs r0, #0x10
	strh r0, [r5]
_08013454:
	ldrb r2, [r4, #8]
	cmp r2, #6
	bls _08013502
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
	ldr r1, _0801348C @ =0x040000D4
	ldr r0, _08013490 @ =gOamObjects+0x208
	str r0, [r1]
	ldr r0, _08013494 @ =0x07000208
	str r0, [r1, #4]
	ldr r0, _08013498 @ =0x80000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0801349C @ =gUnknown_03002080
	adds r1, r4, #0
	adds r1, #0x8b
	movs r3, #0
	movs r0, #0xb0
	lsls r0, r0, #1
_0801347C:
	strh r3, [r2]
	subs r0, #1
	adds r2, #2
	cmp r0, #0
	bne _0801347C
	ldrb r0, [r1]
	adds r0, #1
	b _08013500
	.align 2, 0
_0801348C: .4byte 0x040000D4
_08013490: .4byte gOamObjects+0x208
_08013494: .4byte 0x07000208
_08013498: .4byte 0x80000004
_0801349C: .4byte gUnknown_03002080
_080134A0:
	ldrb r0, [r4, #8]
	cmp r0, #6
	bhi _08013502
	adds r0, r4, #0
	bl sub_8013508
	movs r1, #0
	movs r0, #0x10
	strh r0, [r5]
	adds r0, r4, #0
	adds r0, #0x8c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080134C4
	ldr r0, _080134C0 @ =0x0000C010
	b _080134C6
	.align 2, 0
_080134C0: .4byte 0x0000C010
_080134C4:
	ldr r0, _080134EC @ =0x0000C0A0
_080134C6:
	strh r0, [r5, #2]
	movs r0, #0x84
	lsls r0, r0, #5
	strh r0, [r5, #4]
	ldr r0, _080134F0 @ =gIORegisters
	adds r0, #0x4a
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_8013730
	adds r1, r4, #0
	adds r1, #0x8b
	movs r0, #4
	b _08013500
	.align 2, 0
_080134EC: .4byte 0x0000C0A0
_080134F0: .4byte gIORegisters
_080134F4:
	ldrb r0, [r4, #8]
	cmp r0, #0xa
	beq _08013502
	adds r1, r4, #0
	adds r1, #0x8b
	movs r0, #5
_08013500:
	strb r0, [r1]
_08013502:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8013508
sub_8013508: @ 0x08013508
	ldr r1, _08013540 @ =gUnknown_08022F38
	adds r0, #0x8a
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r2, r1, #6
	adds r2, r2, r1
	lsls r2, r2, #5
	ldr r3, _08013544 @ =gUnknown_08177E28
	adds r1, r2, r3
	ldr r0, _08013548 @ =0x040000D4
	str r1, [r0]
	ldr r1, _0801354C @ =0x05000220
	str r1, [r0, #4]
	ldr r1, _08013550 @ =0x80000010
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r3, #0x20
	adds r1, r2, r3
	str r1, [r0]
	ldr r1, _08013554 @ =0x06011000
	str r1, [r0, #4]
	ldr r1, _08013558 @ =0x80000400
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
_08013540: .4byte gUnknown_08022F38
_08013544: .4byte gUnknown_08177E28
_08013548: .4byte 0x040000D4
_0801354C: .4byte 0x05000220
_08013550: .4byte 0x80000010
_08013554: .4byte 0x06011000
_08013558: .4byte 0x80000400

	thumb_func_start sub_801355C
sub_801355C: @ 0x0801355C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r4, _08013648 @ =gUnknown_030020C2
	adds r4, #2
	movs r2, #0
	adds r3, r7, #0
	adds r3, #0x8e
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, #1
	ldr r1, _08013648 @ =gUnknown_030020C2
	mov r8, r1
	cmp r2, r0
	bhs _080135B4
	adds r6, r3, #0
	movs r0, #0x20
	mov ip, r0
_08013582:
	movs r1, #0
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r5, r2, #1
	cmp r1, r0
	bhs _0801359E
	movs r2, #0x38
_08013590:
	strh r2, [r4]
	adds r4, #2
	adds r1, #1
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r1, r0
	blo _08013590
_0801359E:
	movs r1, #0
	ldrsb r1, [r6, r1]
	mov r2, ip
	subs r0, r2, r1
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r2, r5, #0
	adds r3, r6, #0
	adds r1, #1
	cmp r2, r1
	blo _08013582
_080135B4:
	mov r4, r8
	movs r0, #0x30
	strh r0, [r4]
	adds r4, #2
	movs r2, #0
	adds r1, r7, #0
	adds r1, #0x8e
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r3, r1, #0
	cmp r2, r0
	bhs _080135DC
	movs r5, #0x31
_080135CE:
	strh r5, [r4]
	adds r4, #2
	adds r2, #1
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blo _080135CE
_080135DC:
	movs r0, #0x32
	strh r0, [r4]
	adds r5, r3, #0
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #6
	adds r0, #0x40
	mov r1, r8
	adds r4, r0, r1
	movs r0, #0x35
	strh r0, [r4]
	adds r4, #2
	movs r2, #0
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r2, r0
	bhs _0801360E
	movs r1, #0x36
_08013600:
	strh r1, [r4]
	adds r4, #2
	adds r2, #1
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r2, r0
	blo _08013600
_0801360E:
	movs r0, #0x37
	strh r0, [r4]
	mov r4, r8
	adds r4, #0x40
	movs r2, #0
	adds r1, r3, #0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	bhs _0801363E
	movs r5, #0x33
	movs r3, #0x34
_08013626:
	strh r5, [r4]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	strh r3, [r0, #2]
	adds r4, #0x40
	adds r2, #1
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blo _08013626
_0801363E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013648: .4byte gUnknown_030020C2

	thumb_func_start sub_801364C
sub_801364C: @ 0x0801364C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r4, _0801372C @ =gUnknown_030020F8
	subs r4, #2
	movs r2, #0
	adds r3, r7, #0
	adds r3, #0x8e
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, #1
	ldr r1, _0801372C @ =gUnknown_030020F8
	mov ip, r1
	cmp r2, r0
	bhs _0801369A
	adds r6, r3, #0
_0801366A:
	movs r1, #0
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r5, r2, #1
	cmp r1, r0
	bhs _08013686
	movs r2, #0x38
_08013678:
	strh r2, [r4]
	subs r4, #2
	adds r1, #1
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r1, r0
	blo _08013678
_08013686:
	movs r1, #0
	ldrsb r1, [r6, r1]
	lsls r0, r1, #1
	adds r0, #0x40
	adds r4, r4, r0
	adds r2, r5, #0
	adds r3, r6, #0
	adds r1, #1
	cmp r2, r1
	blo _0801366A
_0801369A:
	mov r4, ip
	movs r0, #0x32
	strh r0, [r4]
	subs r4, #2
	movs r2, #0
	adds r1, r7, #0
	adds r1, #0x8e
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r3, r1, #0
	cmp r2, r0
	bhs _080136C2
	movs r5, #0x31
_080136B4:
	strh r5, [r4]
	subs r4, #2
	adds r2, #1
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blo _080136B4
_080136C2:
	movs r0, #0x30
	strh r0, [r4]
	adds r5, r3, #0
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #6
	adds r0, #0x40
	mov r1, ip
	adds r4, r0, r1
	movs r0, #0x37
	strh r0, [r4]
	subs r4, #2
	movs r2, #0
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r2, r0
	bhs _080136F4
	movs r1, #0x36
_080136E6:
	strh r1, [r4]
	subs r4, #2
	adds r2, #1
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r2, r0
	blo _080136E6
_080136F4:
	movs r0, #0x35
	strh r0, [r4]
	mov r4, ip
	adds r4, #0x40
	movs r2, #0
	adds r1, r3, #0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	bhs _08013726
	movs r5, #0x34
	movs r3, #0x33
_0801370C:
	strh r5, [r4]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #1
	subs r0, r4, r0
	subs r0, #2
	strh r3, [r0]
	adds r4, #0x40
	adds r2, #1
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blo _0801370C
_08013726:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801372C: .4byte gUnknown_030020F8

	thumb_func_start sub_8013730
sub_8013730: @ 0x08013730
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x90
	ldrb r0, [r0]
	cmp r0, #2
	bls _0801374E
	ldr r1, _08013764 @ =gUnknown_030020C0
	movs r0, #0
	ldr r3, _08013768 @ =0x0000013F
	movs r2, #0
_08013744:
	strh r2, [r1]
	adds r0, #1
	adds r1, #2
	cmp r0, r3
	bls _08013744
_0801374E:
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #6
	bhi _080137AC
	lsls r0, r1, #2
	ldr r1, _0801376C @ =_08013770
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08013764: .4byte gUnknown_030020C0
_08013768: .4byte 0x0000013F
_0801376C: .4byte _08013770
_08013770: @ jump table
	.4byte _080137AC @ case 0
	.4byte _0801378C @ case 1
	.4byte _080137AC @ case 2
	.4byte _0801379E @ case 3
	.4byte _0801379E @ case 4
	.4byte _080137A6 @ case 5
	.4byte _080137A6 @ case 6
_0801378C:
	adds r0, r4, #0
	adds r0, #0x8c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801379E
	adds r0, r4, #0
	bl sub_801364C
	b _080137AC
_0801379E:
	adds r0, r4, #0
	bl sub_801355C
	b _080137AC
_080137A6:
	adds r0, r4, #0
	bl sub_801364C
_080137AC:
	adds r1, r4, #0
	adds r1, #0x8f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080137FE
	movs r0, #0
	strb r0, [r1]
	adds r3, r5, #0
	ldrb r0, [r3]
	cmp r0, #4
	beq _080137CC
	cmp r0, #6
	bne _080137E6
_080137CC:
	adds r1, r4, #0
	adds r1, #0x8e
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _080137E0
	subs r0, r2, #1
	strb r0, [r1]
	b _080137FE
_080137E0:
	movs r0, #2
	strb r0, [r3]
	b _080137FE
_080137E6:
	adds r1, r4, #0
	adds r1, #0x8e
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #7
	bgt _080137FA
	adds r0, r2, #1
	strb r0, [r1]
	b _080137FE
_080137FA:
	movs r0, #1
	strb r0, [r5]
_080137FE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start ResetSoundControl
ResetSoundControl: @ 0x08013804
	ldr r2, _08013830 @ =gMain
	adds r3, r2, #0
	adds r3, #0x22
	movs r1, #0
	movs r0, #1
	strb r0, [r3]
	movs r0, #0xa0
	lsls r0, r0, #4
	strh r0, [r2, #0x20]
	strh r0, [r2, #0x28]
	strh r1, [r2, #0x26]
	adds r3, #1
	movs r0, #0xfe
	strb r0, [r3]
	movs r3, #0xae
	lsls r3, r3, #2
	adds r0, r2, r3
	strh r1, [r0]
	adds r3, #2
	adds r0, r2, r3
	strh r1, [r0]
	bx lr
	.align 2, 0
_08013830: .4byte gMain

	thumb_func_start sub_8013834
sub_8013834: @ 0x08013834
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08013870 @ =gMain
	movs r1, #0x95
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801386A
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStart
	movs r1, #0xae
	lsls r1, r1, #2
	adds r0, r5, r1
	strh r4, [r0]
	adds r0, r4, #0
	bl sub_8013930
	cmp r0, #0
	beq _0801386A
	ldr r1, _08013874 @ =0x000002BA
	adds r0, r5, r1
	strh r4, [r0]
_0801386A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013870: .4byte gMain
_08013874: .4byte 0x000002BA

	thumb_func_start sub_8013878
sub_8013878: @ 0x08013878
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStop
	ldr r6, _080138A8 @ =gMain
	movs r1, #0xae
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r5, #0
	strh r5, [r0]
	adds r0, r4, #0
	bl sub_8013930
	cmp r0, #0
	beq _080138A0
	ldr r1, _080138AC @ =0x000002BA
	adds r0, r6, r1
	strh r5, [r0]
_080138A0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080138A8: .4byte gMain
_080138AC: .4byte 0x000002BA

	thumb_func_start sub_80138B0
sub_80138B0: @ 0x080138B0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, _080138EC @ =gMPlayTable
	ldr r0, _080138F0 @ =gSongTable
	lsls r2, r4, #3
	adds r2, r2, r0
	ldrh r5, [r2, #4]
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x10
	bl m4aMPlayFadeOut
	adds r0, r4, #0
	bl sub_8013930
	cmp r0, #0
	beq _080138E4
	ldr r0, _080138F4 @ =gMain
	ldr r1, _080138F8 @ =0x000002BA
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
_080138E4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080138EC: .4byte gMPlayTable
_080138F0: .4byte gSongTable
_080138F4: .4byte gMain
_080138F8: .4byte 0x000002BA

	thumb_func_start sub_80138FC
sub_80138FC: @ 0x080138FC
	push {r4, lr}
	adds r2, r1, #0
	ldr r3, _08013924 @ =gMPlayTable
	ldr r1, _08013928 @ =gSongTable
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r4, [r0, #4]
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	ldr r1, _0801392C @ =0x0000FFFF
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl m4aMPlayVolumeControl
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013924: .4byte gMPlayTable
_08013928: .4byte gSongTable
_0801392C: .4byte 0x0000FFFF

	thumb_func_start sub_8013930
sub_8013930: @ 0x08013930
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r2, _08013954 @ =gUnknown_081123D4
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08013964
	adds r4, r1, #0
	adds r1, r2, #0
_08013946:
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r3, r0
	bne _08013958
	movs r0, #1
	b _08013966
	.align 2, 0
_08013954: .4byte gUnknown_081123D4
_08013958:
	adds r1, #2
	adds r2, #2
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, r4
	bne _08013946
_08013964:
	movs r0, #0
_08013966:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_801396C
sub_801396C: @ 0x0801396C
	ldr r2, _0801398C @ =gMPlayTable
	ldr r1, _08013990 @ =gSongTable
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r0, [r1]
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _08013994
	movs r0, #1
	b _08013996
	.align 2, 0
_0801398C: .4byte gMPlayTable
_08013990: .4byte gSongTable
_08013994:
	movs r0, #0
_08013996:
	bx lr

	thumb_func_start sub_8013998
sub_8013998: @ 0x08013998
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, _080139C8 @ =gMain
	movs r1, #0x95
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080139E4
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #0x10
	ldrb r2, [r1]
	ands r0, r2
	adds r6, r1, #0
	cmp r0, #0
	beq _080139CC
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStart
	b _080139D4
	.align 2, 0
_080139C8: .4byte gMain
_080139CC:
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080139D4:
	adds r0, r4, #0
	adds r0, #0x23
	strb r5, [r0]
	movs r0, #0xa0
	lsls r0, r0, #4
	strh r0, [r4, #0x28]
	movs r0, #4
	strb r0, [r6]
_080139E4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80139EC
sub_80139EC: @ 0x080139EC
	push {r4, r5, lr}
	ldr r0, _08013A30 @ =gMain
	adds r4, r0, #0
	adds r4, #0x22
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08013A3C
	ldr r5, _08013A34 @ =gUnknown_03005F40
	adds r0, r5, #0
	bl m4aMPlayStop
	movs r1, #0xfb
	ldrb r0, [r4]
	ands r1, r0
	movs r2, #0
	movs r0, #2
	orrs r1, r0
	orrs r1, r2
	strb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08013A42
	movs r0, #1
	orrs r1, r0
	strb r1, [r4]
	ldr r1, _08013A38 @ =0x0000FFFF
	adds r0, r5, #0
	movs r2, #4
	bl m4aMPlayVolumeControl
	b _08013A42
	.align 2, 0
_08013A30: .4byte gMain
_08013A34: .4byte gUnknown_03005F40
_08013A38: .4byte 0x0000FFFF
_08013A3C:
	movs r0, #1
	orrs r0, r1
	strb r0, [r4]
_08013A42:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8013A48
sub_8013A48: @ 0x08013A48
	push {r4, r5, r6, lr}
	ldr r6, _08013A74 @ =gMain
	adds r5, r6, #0
	adds r5, #0x22
	movs r4, #1
	adds r0, r4, #0
	ldrb r1, [r5]
	ands r0, r1
	cmp r0, #0
	bne _08013A6C
	ldr r0, _08013A78 @ =gUnknown_03005F40
	bl m4aMPlayStop
	strb r4, [r5]
	adds r1, r6, #0
	adds r1, #0x23
	movs r0, #0xff
	strb r0, [r1]
_08013A6C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08013A74: .4byte gMain
_08013A78: .4byte gUnknown_03005F40

	thumb_func_start sub_8013A7C
sub_8013A7C: @ 0x08013A7C
	push {r4, lr}
	ldr r2, _08013ABC @ =gMain
	adds r4, r2, #0
	adds r4, #0x22
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08013ADE
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08013AD8
	adds r0, r2, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0xf0
	bne _08013AC0
	movs r0, #0x28
	ldrsh r4, [r2, r0]
	movs r0, #0x1e
	movs r1, #0xf0
	bl sub_8013B14
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	movs r1, #0x40
	bl sub_8013D04
	b _08013ADE
	.align 2, 0
_08013ABC: .4byte gMain
_08013AC0:
	ldr r0, _08013AD4 @ =gUnknown_03005F40
	bl m4aMPlayContinue
	movs r0, #0xfd
	ldrb r1, [r4]
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	b _08013ADC
	.align 2, 0
_08013AD4: .4byte gUnknown_03005F40
_08013AD8:
	movs r0, #0xfe
	ands r0, r1
_08013ADC:
	strb r0, [r4]
_08013ADE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8013AE4
sub_8013AE4: @ 0x08013AE4
	push {r4, lr}
	adds r1, r0, #0
	ldr r0, _08013B0C @ =gMain
	adds r4, r0, #0
	adds r4, #0x22
	movs r0, #4
	ldrb r2, [r4]
	ands r0, r2
	cmp r0, #0
	beq _08013B06
	ldr r0, _08013B10 @ =gUnknown_03005F40
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x10
	bl m4aMPlayFadeOutTemporarily
	movs r0, #0x14
	strb r0, [r4]
_08013B06:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013B0C: .4byte gMain
_08013B10: .4byte gUnknown_03005F40

	thumb_func_start sub_8013B14
sub_8013B14: @ 0x08013B14
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, _08013B68 @ =gMain
	movs r2, #0x95
	lsls r2, r2, #2
	adds r0, r4, r2
	ldr r0, [r0]
	movs r5, #2
	ands r0, r5
	cmp r0, #0
	bne _08013BEC
	adds r0, r4, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, r1
	bne _08013B70
	adds r3, r4, #0
	adds r3, #0x22
	ldrb r2, [r3]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08013B70
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	beq _08013BEC
	movs r0, #0xee
	ands r0, r2
	strb r0, [r3]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStart
	ldr r4, _08013B6C @ =gUnknown_03005F40
	adds r0, r4, #0
	bl m4aMPlayImmInit
	adds r0, r4, #0
	bl m4aMPlayStop
	b _08013BEC
	.align 2, 0
_08013B68: .4byte gMain
_08013B6C: .4byte gUnknown_03005F40
_08013B70:
	cmp r1, #0xff
	bne _08013BC2
	adds r5, r4, #0
	adds r5, #0x22
	ldrb r2, [r5]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08013B9E
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08013BEC
	movs r1, #0xfe
	ands r1, r2
	strb r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08013BEC
	bl sub_8013A7C
	b _08013BEC
_08013B9E:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08013BBC
	ldr r0, _08013BB8 @ =gUnknown_03005F40
	lsls r1, r6, #0xc
	lsrs r1, r1, #0x10
	bl m4aMPlayFadeIn
	movs r0, #4
	strb r0, [r5]
	b _08013BEC
	.align 2, 0
_08013BB8: .4byte gUnknown_03005F40
_08013BBC:
	bl sub_8013A7C
	b _08013BCE
_08013BC2:
	adds r0, r1, #0
	bl sub_8013998
	ldr r0, _08013BF4 @ =gUnknown_03005F40
	bl m4aMPlayImmInit
_08013BCE:
	cmp r6, #0
	beq _08013BEC
	movs r1, #0x20
	ldrsh r0, [r4, r1]
	adds r1, r6, #0
	bl __udivsi3
	adds r0, #1
	strh r0, [r4, #0x26]
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #0xc
	strb r0, [r1]
	movs r0, #0x28
	strh r0, [r4, #0x28]
_08013BEC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08013BF4: .4byte gUnknown_03005F40

	thumb_func_start UpdateBGMFade
UpdateBGMFade: @ 0x08013BF8
	push {r4, r5, r6, lr}
	ldr r2, _08013C2C @ =gMain
	adds r5, r2, #0
	adds r5, #0x22
	movs r4, #3
	ldrb r0, [r5]
	ands r4, r0
	cmp r4, #0
	bne _08013C78
	ldrh r1, [r2, #0x26]
	movs r3, #0x26
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _08013C6C
	ldrh r6, [r2, #0x28]
	adds r1, r1, r6
	strh r1, [r2, #0x28]
	cmp r0, #0
	ble _08013C30
	lsls r1, r1, #0x10
	ldrh r3, [r2, #0x20]
	lsls r0, r3, #0x10
	cmp r1, r0
	ble _08013C42
	b _08013C3A
	.align 2, 0
_08013C2C: .4byte gMain
_08013C30:
	lsls r1, r1, #0x10
	ldrh r3, [r2, #0x20]
	lsls r0, r3, #0x10
	cmp r1, r0
	bge _08013C42
_08013C3A:
	strh r3, [r2, #0x28]
	strh r4, [r2, #0x26]
	movs r0, #4
	strb r0, [r5]
_08013C42:
	ldr r4, _08013C64 @ =gUnknown_03005F40
	ldr r5, _08013C68 @ =0x0000FFFF
	movs r1, #0x28
	ldrsh r0, [r2, r1]
	movs r1, #0xa
	bl __divsi3
	adds r2, r0, #0
	movs r3, #0xfe
	lsls r3, r3, #1
	adds r0, r3, #0
	ands r2, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl m4aMPlayVolumeControl
	b _08013C78
	.align 2, 0
_08013C64: .4byte gUnknown_03005F40
_08013C68: .4byte 0x0000FFFF
_08013C6C:
	ldr r0, _08013C80 @ =gUnknown_03005F40
	ldr r0, [r0, #4]
	cmp r0, #0
	bge _08013C78
	movs r0, #2
	strb r0, [r5]
_08013C78:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08013C80: .4byte gUnknown_03005F40

	thumb_func_start sub_8013C84
sub_8013C84: @ 0x08013C84
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r4, #3
	bhi _08013C90
	movs r4, #4
_08013C90:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08013CB4
	ldr r0, _08013CF0 @ =gUnknown_03005F40
	ldr r1, _08013CF4 @ =0x0000FFFF
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r3, r2, #0
	adds r2, r4, #0
	ands r2, r3
	bl m4aMPlayVolumeControl
	ldr r1, _08013CF8 @ =gMain
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	strh r0, [r1, #0x28]
_08013CB4:
	movs r0, #2
	ands r0, r5
	cmp r0, #0
	beq _08013CCE
	ldr r0, _08013CFC @ =gUnknown_03005F80
	ldr r1, _08013CF4 @ =0x0000FFFF
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r3, r2, #0
	adds r2, r4, #0
	ands r2, r3
	bl m4aMPlayVolumeControl
_08013CCE:
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	beq _08013CE8
	ldr r0, _08013D00 @ =gUnknown_03005FC0
	ldr r1, _08013CF4 @ =0x0000FFFF
	movs r3, #0xfe
	lsls r3, r3, #1
	adds r2, r3, #0
	ands r4, r2
	adds r2, r4, #0
	bl m4aMPlayVolumeControl
_08013CE8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013CF0: .4byte gUnknown_03005F40
_08013CF4: .4byte 0x0000FFFF
_08013CF8: .4byte gMain
_08013CFC: .4byte gUnknown_03005F80
_08013D00: .4byte gUnknown_03005FC0

	thumb_func_start sub_8013D04
sub_8013D04: @ 0x08013D04
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r5, _08013D28 @ =gMain
	adds r1, r5, #0
	adds r1, #0x22
	movs r0, #3
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08013D78
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r4, r0
	bls _08013D2C
	adds r4, r0, #0
	b _08013D32
	.align 2, 0
_08013D28: .4byte gMain
_08013D2C:
	cmp r4, #3
	bhi _08013D32
	movs r4, #4
_08013D32:
	cmp r2, #0
	beq _08013D5E
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	strh r0, [r5, #0x20]
	movs r1, #0x20
	ldrsh r0, [r5, r1]
	movs r3, #0x28
	ldrsh r1, [r5, r3]
	subs r0, r0, r1
	adds r1, r2, #0
	bl __divsi3
	strh r0, [r5, #0x26]
	adds r1, r5, #0
	adds r1, #0x22
	movs r0, #8
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	b _08013D78
_08013D5E:
	ldr r0, _08013D80 @ =gUnknown_03005F40
	ldr r1, _08013D84 @ =0x0000FFFF
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r3, r2, #0
	adds r2, r4, #0
	ands r2, r3
	bl m4aMPlayVolumeControl
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	strh r0, [r5, #0x28]
_08013D78:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013D80: .4byte gUnknown_03005F40
_08013D84: .4byte 0x0000FFFF

	thumb_func_start sub_8013D88
sub_8013D88: @ 0x08013D88
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08013DA2
	ldr r0, _08013DD0 @ =gUnknown_03005F40
	ldr r1, _08013DD4 @ =0x0000FFFF
	lsls r2, r5, #0x18
	asrs r2, r2, #0x18
	bl m4aMPlayPanpotControl
_08013DA2:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08013DB6
	ldr r0, _08013DD8 @ =gUnknown_03005F80
	ldr r1, _08013DD4 @ =0x0000FFFF
	lsls r2, r5, #0x18
	asrs r2, r2, #0x18
	bl m4aMPlayPanpotControl
_08013DB6:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _08013DCA
	ldr r0, _08013DDC @ =gUnknown_03005FC0
	ldr r1, _08013DD4 @ =0x0000FFFF
	lsls r2, r5, #0x18
	asrs r2, r2, #0x18
	bl m4aMPlayPanpotControl
_08013DCA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013DD0: .4byte gUnknown_03005F40
_08013DD4: .4byte 0x0000FFFF
_08013DD8: .4byte gUnknown_03005F80
_08013DDC: .4byte gUnknown_03005FC0

	thumb_func_start sub_8013DE0
sub_8013DE0: @ 0x08013DE0
	ldr r0, _08013DF0 @ =gAnimation
	movs r1, #1
	str r1, [r0]
	movs r1, #0
	str r1, [r0, #8]
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_08013DF0: .4byte gAnimation

	thumb_func_start ResetAnimationSystem
ResetAnimationSystem: @ 0x08013DF4
	push {r4, lr}
	sub sp, #4
	ldr r2, _08013E30 @ =gAnimation
	mov r0, sp
	movs r3, #0
	strh r3, [r0]
	ldr r0, _08013E34 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08013E38 @ =0x81000440
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _08013E3C @ =gMain
	adds r0, #0x25
	movs r1, #3
	ldrb r4, [r0]
	orrs r1, r4
	strb r1, [r0]
	adds r2, #0x44
	movs r0, #0xff
	strh r0, [r2, #0xc]
	strb r3, [r2, #0xe]
	bl sub_8013DE0
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013E30: .4byte gAnimation
_08013E34: .4byte 0x040000D4
_08013E38: .4byte 0x81000440
_08013E3C: .4byte gMain

	thumb_func_start sub_8013E40
sub_8013E40: @ 0x08013E40
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _08013EA4 @ =gUnknown_03000844
	ldr r1, _08013EA8 @ =0x0000083C
	adds r0, r4, r1
	cmp r4, r0
	bhs _08013E9A
	ldr r7, _08013EAC @ =gOamObjects
	mov ip, r7
	mov r8, r0
_08013E56:
	ldr r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r1, r0
	adds r6, r4, #0
	adds r6, #0x44
	mov r5, r8
	cmp r1, #0
	beq _08013E94
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #3
	mov r3, ip
	adds r2, r0, r3
	adds r1, r4, #0
	adds r1, #0x3f
	ldrb r4, [r1]
	lsls r0, r4, #3
	adds r0, r0, r3
	cmp r2, r0
	bhs _08013E94
	movs r4, #0x80
	lsls r4, r4, #2
_08013E86:
	strh r4, [r2]
	adds r2, #8
	ldrb r7, [r1]
	lsls r0, r7, #3
	adds r0, r0, r3
	cmp r2, r0
	blo _08013E86
_08013E94:
	adds r4, r6, #0
	cmp r4, r5
	blo _08013E56
_08013E9A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013EA4: .4byte gUnknown_03000844
_08013EA8: .4byte 0x0000083C
_08013EAC: .4byte gOamObjects

	thumb_func_start sub_8013EB0
sub_8013EB0: @ 0x08013EB0
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r1, _08013ED4 @ =gUnknown_0300103C
	movs r2, #0x1f
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r4, #1
	rsbs r4, r4, #0
_08013EC0:
	ldrh r0, [r1, #0xc]
	cmp r0, r3
	bne _08013ED8
	ldr r0, [r1]
	ands r0, r5
	cmp r0, #0
	beq _08013ED8
	adds r0, r1, #0
	b _08013EE2
	.align 2, 0
_08013ED4: .4byte gUnknown_0300103C
_08013ED8:
	subs r1, #0x44
	subs r2, #1
	cmp r2, r4
	bne _08013EC0
	movs r0, #0
_08013EE2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8013EE8
sub_8013EE8: @ 0x08013EE8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	bl sub_8013EB0
	adds r4, r0, #0
	cmp r4, #0
	beq _08013F80
	ldr r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #0x12
	adds r1, r0, #0
	ands r1, r2
	rsbs r1, r1, #0
	asrs r5, r1, #0x1f
	ands r5, r2
	movs r6, #0x80
	lsls r6, r6, #0x14
	ands r0, r6
	cmp r0, #0
	beq _08013F14
	adds r5, r6, #0
_08013F14:
	adds r0, r4, #0
	bl sub_8014F94
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08013F48 @ =0x040000D4
	str r1, [r0]
	str r4, [r0, #4]
	ldr r1, _08013F4C @ =0x81000022
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r1, #0xf1
	lsls r1, r1, #0x18
	orrs r1, r5
	str r1, [r4]
	ldr r0, _08013F50 @ =0x0000FFFF
	strh r0, [r4, #0x28]
	ands r5, r6
	cmp r5, #0
	beq _08013F70
	ldr r0, _08013F54 @ =0xDFFFFFFF
	ands r1, r0
	str r1, [r4]
	b _08013F70
	.align 2, 0
_08013F48: .4byte 0x040000D4
_08013F4C: .4byte 0x81000022
_08013F50: .4byte 0x0000FFFF
_08013F54: .4byte 0xDFFFFFFF
_08013F58:
	mov r0, sp
	strh r1, [r0]
	ldr r0, _08013F78 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r4, [r0, #4]
	ldr r1, _08013F7C @ =0x81000022
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #0xf1
	lsls r0, r0, #0x18
	str r0, [r4]
_08013F70:
	strh r7, [r4, #0xc]
	adds r0, r4, #0
	b _08013FA6
	.align 2, 0
_08013F78: .4byte 0x040000D4
_08013F7C: .4byte 0x81000022
_08013F80:
	ldr r4, _08013FB0 @ =gUnknown_0300103C
	movs r0, #0x1f
	movs r5, #0x80
	lsls r5, r5, #0x15
	ldr r1, _08013FB4 @ =0xFFFFF808
	adds r3, r4, r1
	movs r2, #1
	rsbs r2, r2, #0
_08013F90:
	ldr r1, [r4]
	ands r1, r5
	cmp r1, #0
	bne _08013F9C
	cmp r4, r3
	bne _08013F58
_08013F9C:
	subs r4, #0x44
	subs r0, #1
	cmp r0, r2
	bne _08013F90
	movs r0, #0
_08013FA6:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08013FB0: .4byte gUnknown_0300103C
_08013FB4: .4byte 0xFFFFF808

	thumb_func_start sub_8013FB8
sub_8013FB8: @ 0x08013FB8
	cmp r0, #0
	beq _08013FC0
	strh r1, [r0, #0x10]
	strh r2, [r0, #0x12]
_08013FC0:
	bx lr
	.align 2, 0

	thumb_func_start sub_8013FC4
sub_8013FC4: @ 0x08013FC4
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	lsls r5, r3, #2
	cmp r2, #0
	beq _08014038
	cmp r3, #0x1f
	bls _08013FD6
	movs r3, #0x1f
_08013FD6:
	ldr r0, [r2]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r2]
	adds r1, r2, #0
	adds r1, #0x40
	ldrb r0, [r1]
	strh r0, [r1]
	adds r2, #0x42
	movs r0, #0xff
	lsls r0, r0, #8
	ldrh r4, [r2]
	ands r0, r4
	orrs r0, r3
	strh r0, [r2]
	ldr r2, _08014040 @ =gUnknown_0801C158
	movs r0, #0
	ldrsh r1, [r1, r0]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r4, [r0, r3]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r0, #0
	ldrsh r2, [r1, r0]
	rsbs r3, r2, #0
	ldr r1, _08014044 @ =gOamObjects
	lsls r0, r5, #3
	adds r0, r0, r1
	strh r4, [r0, #6]
	adds r5, #1
	lsls r0, r5, #3
	adds r0, r0, r1
	strh r2, [r0, #6]
	adds r5, #1
	lsls r0, r5, #3
	adds r0, r0, r1
	strh r3, [r0, #6]
	adds r5, #1
	lsls r0, r5, #3
	adds r0, r0, r1
	strh r4, [r0, #6]
_08014038:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014040: .4byte gUnknown_0801C158
_08014044: .4byte gOamObjects

	thumb_func_start sub_8014048
sub_8014048: @ 0x08014048
	push {lr}
	adds r3, r0, #0
	cmp r3, #0
	beq _0801405A
	adds r0, #0x40
	strh r2, [r0]
	adds r0, r3, #0
	bl sub_8013FC4
_0801405A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8014060
sub_8014060: @ 0x08014060
	adds r2, r0, #0
	cmp r2, #0
	beq _0801406E
	ldr r0, [r2]
	ldr r1, _08014070 @ =0xFFEFFFFF
	ands r0, r1
	str r0, [r2]
_0801406E:
	bx lr
	.align 2, 0
_08014070: .4byte 0xFFEFFFFF

	thumb_func_start sub_8014074
sub_8014074: @ 0x08014074
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r7, r4, #2
	cmp r3, #0
	beq _08014112
	cmp r4, #0x1f
	bls _0801408A
	movs r4, #0x1f
_0801408A:
	ldr r0, [r3]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r3]
	adds r1, r3, #0
	adds r1, #0x40
	ldrb r0, [r1]
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xff
	lsls r0, r0, #8
	ldrh r3, [r1]
	ands r0, r3
	orrs r0, r4
	strh r0, [r1]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	bl sub_8004290
	adds r4, r0, #0
	ldr r5, _0801411C @ =gUnknown_0801C158
	adds r0, r5, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl sub_8004260
	ldr r6, _08014120 @ =gOamObjects
	lsls r1, r7, #3
	adds r1, r1, r6
	strh r0, [r1, #6]
	adds r7, #1
	movs r3, #0
	ldrsh r0, [r5, r3]
	adds r1, r4, #0
	bl sub_8004260
	lsls r1, r7, #3
	adds r1, r1, r6
	strh r0, [r1, #6]
	adds r7, #1
	ldrh r5, [r5]
	rsbs r0, r5, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_8004260
	lsls r1, r7, #3
	adds r1, r1, r6
	strh r0, [r1, #6]
	adds r7, #1
	mov r0, r8
	adds r1, r4, #0
	bl sub_8004260
	lsls r1, r7, #3
	adds r1, r1, r6
	strh r0, [r1, #6]
_08014112:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801411C: .4byte gUnknown_0801C158
_08014120: .4byte gOamObjects

	thumb_func_start sub_8014124
sub_8014124: @ 0x08014124
	adds r2, r0, #0
	cmp r2, #0
	beq _08014132
	ldr r0, [r2]
	ldr r1, _08014134 @ =0xFFEFFFFF
	ands r0, r1
	str r0, [r2]
_08014132:
	bx lr
	.align 2, 0
_08014134: .4byte 0xFFEFFFFF

	thumb_func_start sub_8014138
sub_8014138: @ 0x08014138
	push {r4, lr}
	adds r3, r0, #0
	cmp r3, #0
	beq _08014194
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r2
	cmp r0, #0
	beq _08014194
	cmp r1, #0
	beq _08014164
	ldr r0, _08014160 @ =0xF7FFFFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x16
	orrs r2, r0
	str r2, [r3]
	b _08014194
	.align 2, 0
_08014160: .4byte 0xF7FFFFFF
_08014164:
	ldr r0, _0801419C @ =0xDFFFFFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x14
	orrs r2, r0
	str r2, [r3]
	adds r0, r3, #0
	adds r0, #0x3e
	ldrb r2, [r0]
	adds r3, #0x3f
	ldrb r0, [r3]
	cmp r2, r0
	bhs _08014194
	ldr r1, _080141A0 @ =gOamObjects
	movs r4, #0x80
	lsls r4, r4, #2
	lsls r0, r2, #3
	adds r0, r0, r1
_08014188:
	strh r4, [r0]
	adds r0, #8
	adds r2, #1
	ldrb r1, [r3]
	cmp r2, r1
	blo _08014188
_08014194:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801419C: .4byte 0xDFFFFFFF
_080141A0: .4byte gOamObjects

	thumb_func_start sub_80141A4
sub_80141A4: @ 0x080141A4
	adds r2, r0, #0
	cmp r2, #0
	beq _080141C0
	cmp r1, #0
	beq _080141B6
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	b _080141BE
_080141B6:
	ldr r0, [r2]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080141BE:
	str r0, [r2]
_080141C0:
	bx lr
	.align 2, 0

	thumb_func_start sub_80141C4
sub_80141C4: @ 0x080141C4
	adds r2, r0, #0
	adds r0, r1, #0
	cmp r2, #0
	beq _080141DE
	cmp r0, #3
	bls _080141D2
	movs r0, #3
_080141D2:
	adds r1, r2, #0
	adds r1, #0x42
	lsls r0, r0, #8
	ldrb r2, [r1]
	orrs r0, r2
	strh r0, [r1]
_080141DE:
	bx lr

	thumb_func_start sub_80141E0
sub_80141E0: @ 0x080141E0
	push {r4, lr}
	adds r3, r0, #0
	cmp r3, #0
	beq _0801426C
	ldrh r0, [r3, #0xc]
	cmp r0, #0xff
	bne _08014214
	ldr r4, _08014210 @ =gUnknown_08023420
	ldrb r2, [r3, #0xe]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r2, r0, #2
	adds r0, r4, #4
	adds r0, r2, r0
	ldr r0, [r0]
	adds r1, r0, r1
	ldr r0, [r3, #0x14]
	cmp r0, r1
	beq _0801426C
	str r1, [r3, #0x14]
	adds r0, r2, r4
	ldr r0, [r0]
	b _0801423C
	.align 2, 0
_08014210: .4byte gUnknown_08023420
_08014214:
	cmp r0, #8
	bls _08014234
	cmp r0, #0x21
	bhi _08014230
	ldr r2, _08014228 @ =gUnknown_086E9858
	adds r0, r1, r2
	str r0, [r3, #0x14]
	ldr r0, _0801422C @ =gUnknown_086DF2DC
	b _0801423C
	.align 2, 0
_08014228: .4byte gUnknown_086E9858
_0801422C: .4byte gUnknown_086DF2DC
_08014230:
	cmp r0, #0x45
	bhi _0801426C
_08014234:
	ldr r2, _08014274 @ =gUnknown_0872D184
	adds r0, r1, r2
	str r0, [r3, #0x14]
	ldr r0, _08014278 @ =gUnknown_086EB860
_0801423C:
	str r0, [r3, #0x20]
	ldr r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3]
	ldr r0, _0801427C @ =0x0000FFFF
	strh r0, [r3, #0x28]
	ldr r2, [r3, #0x14]
	ldr r1, [r3, #0x20]
	ldr r0, [r2, #4]
	adds r1, r1, r0
	str r1, [r3, #0x20]
	ldr r0, [r1]
	lsls r0, r0, #5
	adds r0, #4
	adds r1, r1, r0
	str r1, [r3, #0x18]
	adds r0, r2, #0
	adds r0, #8
	str r0, [r3, #0x38]
	ldrh r0, [r2, #8]
	adds r2, r0, r2
	str r2, [r3, #0x34]
_0801426C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08014274: .4byte gUnknown_0872D184
_08014278: .4byte gUnknown_086EB860
_0801427C: .4byte 0x0000FFFF

	thumb_func_start sub_8014280
sub_8014280: @ 0x08014280
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp]
	ldr r0, _080143C0 @ =gAnimation
	ldr r0, [r0, #8]
	mov ip, r0
	cmp r0, #0
	bne _0801429E
	b _08014452
_0801429E:
	ldr r5, _080143C4 @ =gUnknown_0200AFC8
	ldr r0, _080143C8 @ =gUnknown_0200AFD0
	mov sb, r0
_080142A4:
	ldr r2, [sp, #4]
	ldr r0, [r2]
	ldr r1, [r2, #4]
	ldr r3, _080143CC @ =gUnknown_0200AFC0
	str r0, [r3]
	str r1, [r3, #4]
	ldrh r0, [r3, #4]
	ldrh r4, [r2]
	adds r0, r4, r0
	strh r0, [r3, #4]
	ldrh r0, [r3, #6]
	ldrh r6, [r2, #2]
	adds r0, r6, r0
	strh r0, [r3, #6]
	mov r0, ip
	ldr r0, [r0, #0x1c]
	mov sl, r0
	mov r1, ip
	ldr r1, [r1, #0x34]
	mov r8, r1
	ldrh r2, [r1]
	str r2, [sp, #0xc]
	movs r3, #0
	str r3, [sp, #8]
	cmp r3, r2
	blo _080142DA
	b _08014446
_080142DA:
	mov r4, sp
	str r4, [sp, #0x10]
_080142DE:
	movs r6, #4
	add r8, r6
	ldr r2, _080143CC @ =gUnknown_0200AFC0
	ldr r0, [r2]
	ldr r1, [r2, #4]
	str r0, [r5]
	str r1, [r5, #4]
	ldr r1, _080143D0 @ =0x0000FFFF
	ldr r0, [sp]
	ands r0, r1
	add sl, r0
	mov r3, r8
	ldrh r3, [r3, #2]
	lsrs r0, r3, #0xc
	lsls r0, r0, #2
	ldr r4, _080143D4 @ =gUnknown_08024228
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [sp]
	mov r6, r8
	movs r0, #0
	ldrsb r0, [r6, r0]
	mov r1, ip
	ldrh r1, [r1, #0x10]
	adds r3, r1, r0
	mov r2, sb
	strh r3, [r2, #4]
	strh r3, [r2]
	ldr r4, [sp, #0x10]
	ldrb r0, [r4, #3]
	adds r4, r3, r0
	strh r4, [r2, #4]
	movs r0, #1
	ldrsb r0, [r6, r0]
	mov r6, ip
	ldrh r6, [r6, #0x12]
	adds r2, r6, r0
	mov r0, sb
	strh r2, [r0, #6]
	strh r2, [r0, #2]
	ldr r1, [sp, #0x10]
	ldrb r0, [r1, #2]
	adds r6, r2, r0
	mov r0, sb
	strh r6, [r0, #6]
	ldrh r0, [r5, #4]
	lsls r1, r3, #0x10
	lsls r0, r0, #0x10
	cmp r1, r0
	bge _08014438
	ldrh r7, [r5]
	lsls r1, r4, #0x10
	adds r4, r7, #0
	lsls r0, r4, #0x10
	cmp r0, r1
	bge _08014438
	ldrh r0, [r5, #6]
	lsls r1, r2, #0x10
	lsls r0, r0, #0x10
	cmp r1, r0
	bge _08014438
	ldrh r2, [r5, #2]
	lsls r1, r2, #0x10
	lsls r0, r6, #0x10
	cmp r1, r0
	bge _08014438
	subs r0, r7, r3
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08014370
	movs r6, #0
	strh r6, [r5]
_08014370:
	mov r0, sb
	ldrh r3, [r0, #2]
	subs r0, r2, r3
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08014382
	movs r1, #0
	strh r1, [r5, #2]
_08014382:
	ldrh r1, [r5, #4]
	mov r4, sb
	ldrh r2, [r4, #4]
	lsls r1, r1, #0x10
	lsls r0, r2, #0x10
	cmp r1, r0
	ble _08014392
	strh r2, [r5, #4]
_08014392:
	ldrh r0, [r5, #4]
	mov r6, sb
	ldrh r6, [r6]
	subs r0, r0, r6
	strh r0, [r5, #4]
	ldrh r1, [r5, #6]
	mov r0, sb
	ldrh r2, [r0, #6]
	lsls r1, r1, #0x10
	lsls r0, r2, #0x10
	cmp r1, r0
	ble _080143AC
	strh r2, [r5, #6]
_080143AC:
	ldrh r0, [r5, #6]
	subs r0, r0, r3
	strh r0, [r5, #6]
	ldr r1, [sp, #0x10]
	ldrb r0, [r1, #3]
	lsrs r6, r0, #3
	movs r3, #2
	ldrsh r2, [r5, r3]
	b _08014430
	.align 2, 0
_080143C0: .4byte gAnimation
_080143C4: .4byte gUnknown_0200AFC8
_080143C8: .4byte gUnknown_0200AFD0
_080143CC: .4byte gUnknown_0200AFC0
_080143D0: .4byte 0x0000FFFF
_080143D4: .4byte gUnknown_08024228
_080143D8:
	asrs r0, r2, #3
	muls r0, r6, r0
	lsls r1, r0, #5
	adds r0, r2, #0
	cmp r2, #0
	bge _080143E6
	adds r0, r2, #7
_080143E6:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r2, r0
	lsls r0, r0, #2
	adds r0, r1, r0
	mov r1, sl
	adds r4, r0, r1
	movs r3, #0
	ldrsh r1, [r5, r3]
	b _08014426
_080143FA:
	asrs r0, r1, #3
	lsls r3, r0, #5
	adds r0, r1, #0
	cmp r1, #0
	bge _08014406
	adds r0, r1, #7
_08014406:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	cmp r0, #1
	ble _08014416
	adds r0, r4, #1
	adds r0, r3, r0
	b _08014418
_08014416:
	adds r0, r3, r4
_08014418:
	ldrb r0, [r0]
	cmp r0, #0
	beq _08014424
	mov r4, ip
	ldrh r0, [r4, #0xc]
	b _08014454
_08014424:
	adds r1, #2
_08014426:
	movs r3, #4
	ldrsh r0, [r5, r3]
	cmp r1, r0
	blt _080143FA
	adds r2, #2
_08014430:
	movs r4, #6
	ldrsh r0, [r5, r4]
	cmp r2, r0
	blt _080143D8
_08014438:
	ldr r6, [sp, #8]
	adds r6, #1
	str r6, [sp, #8]
	ldr r0, [sp, #0xc]
	cmp r6, r0
	bhs _08014446
	b _080142DE
_08014446:
	mov r1, ip
	ldr r1, [r1, #8]
	mov ip, r1
	cmp r1, #0
	beq _08014452
	b _080142A4
_08014452:
	movs r0, #0
_08014454:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8014464
sub_8014464: @ 0x08014464
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldrh r4, [r1]
	mov sb, r4
	ldrh r5, [r0]
	subs r4, r5, r4
	str r4, [sp]
	ldrh r1, [r1, #2]
	mov r8, r1
	ldrh r0, [r0, #2]
	subs r1, r0, r1
	mov sl, r1
	ldrh r7, [r3]
	ldrh r4, [r2]
	subs r4, r4, r7
	mov ip, r4
	ldrh r5, [r3, #2]
	ldrh r2, [r2, #2]
	subs r6, r2, r5
	ldr r0, [sp]
	adds r1, r0, #0
	muls r1, r6, r1
	mov r0, sl
	muls r0, r4, r0
	subs r4, r1, r0
	cmp r4, #0
	beq _080144F4
	mov r1, sb
	subs r3, r1, r7
	mov r0, r8
	subs r2, r0, r5
	mov r1, ip
	muls r1, r2, r1
	adds r0, r3, #0
	muls r0, r6, r0
	subs r5, r1, r0
	ldr r0, [sp]
	adds r1, r2, #0
	muls r1, r0, r1
	mov r0, sl
	muls r0, r3, r0
	subs r0, r1, r0
	cmp r4, #0
	ble _080144CC
	cmp r5, #0
	blt _080144CC
	cmp r5, r4
	ble _080144D8
_080144CC:
	cmp r4, #0
	bge _080144F4
	cmp r5, r4
	blt _080144F4
	cmp r5, #0
	bgt _080144F4
_080144D8:
	cmp r4, #0
	ble _080144E4
	cmp r0, #0
	blt _080144E4
	cmp r0, r4
	ble _080144F0
_080144E4:
	cmp r4, #0
	bge _080144F4
	cmp r0, r4
	blt _080144F4
	cmp r0, #0
	bgt _080144F4
_080144F0:
	movs r0, #1
	b _080144F6
_080144F4:
	movs r0, #0
_080144F6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8014508
sub_8014508: @ 0x08014508
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r1, #0
	mov sl, r4
	mov r8, sp
	add r7, sp, #4
	mov r1, sl
	bl sub_80041D0
	cmp r0, #0
	bne _080145DC
	mov r2, sp
	mov r0, sp
	ldrh r1, [r5]
	strh r1, [r0, #0xc]
	ldr r3, _080145D8 @ =0x0000FFFF
	strh r1, [r2]
	mov r4, sp
	ldrh r2, [r5, #2]
	strh r2, [r0, #6]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r4, #2]
	mov r0, sp
	ldrh r6, [r5, #4]
	adds r1, r6, r1
	strh r1, [r0, #8]
	ands r1, r3
	strh r1, [r4, #4]
	mov r1, sp
	ldrh r5, [r5, #6]
	adds r2, r5, r2
	strh r2, [r0, #0xe]
	ands r2, r3
	strh r2, [r1, #0xa]
	movs r0, #0
	mov sb, r0
_0801455C:
	mov r4, sl
	adds r5, r4, #4
	movs r6, #0
_08014562:
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	adds r3, r7, #0
	bl sub_8014464
	cmp r0, #0
	bne _080145DC
	adds r4, #4
	adds r5, #4
	adds r6, #1
	cmp r6, #2
	bls _08014562
	mov r5, sl
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	adds r3, r7, #0
	bl sub_8014464
	cmp r0, #0
	bne _080145DC
	movs r6, #4
	add r8, r6
	adds r7, #4
	movs r0, #1
	add sb, r0
	mov r6, sb
	cmp r6, #2
	bls _0801455C
	mov r7, sp
	adds r4, r5, #0
	adds r5, #4
	movs r6, #0
_080145A6:
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	adds r3, r7, #0
	bl sub_8014464
	cmp r0, #0
	bne _080145DC
	adds r4, #4
	adds r5, #4
	adds r6, #1
	cmp r6, #2
	bls _080145A6
	mov r5, sl
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	adds r3, r7, #0
	bl sub_8014464
	cmp r0, #0
	bne _080145DC
	movs r0, #0
	b _080145DE
	.align 2, 0
_080145D8: .4byte 0x0000FFFF
_080145DC:
	movs r0, #1
_080145DE:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80145F0
sub_80145F0: @ 0x080145F0
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r3, _08014600 @ =gAnimation
	movs r4, #0
	movs r0, #0x26
	adds r0, r0, r2
	mov ip, r0
	b _08014606
	.align 2, 0
_08014600: .4byte gAnimation
_08014604:
	adds r4, #1
_08014606:
	cmp r4, #0x1f
	bhi _08014632
	ldr r1, [r3, #8]
	cmp r1, #0
	bne _08014616
	str r3, [r2, #4]
	str r2, [r3, #8]
	b _08014632
_08014616:
	adds r3, r1, #0
	adds r0, r1, #0
	adds r0, #0x26
	ldrb r0, [r0]
	mov r5, ip
	ldrb r5, [r5]
	cmp r0, r5
	bhs _08014604
	ldr r0, [r1, #4]
	str r0, [r2, #4]
	str r1, [r2, #8]
	ldr r0, [r1, #4]
	str r2, [r0, #8]
	str r2, [r1, #4]
_08014632:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8014638
sub_8014638: @ 0x08014638
	push {r4, lr}
	adds r2, r0, #0
	cmp r2, #1
	beq _08014646
	cmp r2, #2
	beq _08014668
	b _0801467E
_08014646:
	ldr r3, _08014664 @ =gMain
	adds r4, r3, #0
	adds r4, #0xdc
	ldr r1, [r4]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _0801467E
	movs r0, #0x1e
	strh r0, [r3, #0x14]
	orrs r1, r2
	str r1, [r4]
	strb r2, [r3, #0x16]
	b _0801467E
	.align 2, 0
_08014664: .4byte gMain
_08014668:
	ldr r0, _08014684 @ =gMain
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801467E
	movs r0, #3
	movs r1, #1
	movs r2, #8
	movs r3, #0x1f
	bl StartHardwareBlend
_0801467E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08014684: .4byte gMain

	thumb_func_start sub_8014688
sub_8014688: @ 0x08014688
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	movs r2, #0x78
	ldr r1, _080146EC @ =gMain
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r4
	cmp r0, #0
	beq _080146B0
	adds r3, r1, #0
	adds r3, #0x42
	movs r0, #0x10
	ldrh r3, [r3]
	ands r0, r3
	cmp r0, #0
	beq _080146B0
	subs r2, #0xf0
_080146B0:
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _080146C8
	adds r1, #0x42
	movs r0, #0x20
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _080146C8
	adds r2, #0xf0
_080146C8:
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r4
	cmp r0, #0
	beq _080146D6
	movs r0, #1
	orrs r5, r0
_080146D6:
	str r5, [sp]
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #0x50
	bl sub_8014704
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080146EC: .4byte gMain

	thumb_func_start sub_80146F0
sub_80146F0: @ 0x080146F0
	ldr r0, _08014700 @ =gMain
	adds r2, r0, #0
	adds r2, #0xb8
	strh r1, [r2]
	adds r0, #0xb6
	strh r1, [r0]
	bx lr
	.align 2, 0
_08014700: .4byte gMain

	thumb_func_start sub_8014704
sub_8014704: @ 0x08014704
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x20
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r0, _08014738 @ =gMain
	mov r8, r0
	ldr r5, _0801473C @ =gUnknown_03000844
	movs r2, #0xff
	adds r1, r4, #0
	ands r1, r2
	cmp r1, #0
	bne _08014740
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08014734
	adds r0, r5, #0
	bl sub_8014F94
_08014734:
	movs r0, #0
	b _080147F8
	.align 2, 0
_08014738: .4byte gMain
_0801473C: .4byte gUnknown_03000844
_08014740:
	mov r0, sp
	strh r2, [r0]
	strh r4, [r0, #2]
	adds r4, r1, #0
	ldr r0, _08014794 @ =0x06015800
	str r0, [sp, #0x10]
	ldr r2, _08014798 @ =gUnknown_08023420
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r1, r0, r2
	ldr r1, [r1]
	str r1, [sp, #0x14]
	adds r1, r2, #4
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r6
	str r0, [sp, #8]
	mov r1, sp
	movs r0, #0xe
	strb r0, [r1, #0x18]
	ldrh r1, [r5, #0xc]
	cmp r1, #0xff
	bne _08014784
	cmp r4, #0x10
	bne _0801477A
	mov r1, sp
	movs r0, #0xd
	strb r0, [r1, #0x18]
_0801477A:
	cmp r4, #0x27
	bne _08014784
	mov r1, sp
	movs r0, #0xd
	strb r0, [r1, #0x18]
_08014784:
	mov r0, r8
	ldrb r0, [r0, #8]
	cmp r0, #3
	bne _0801479C
	mov r1, sp
	movs r0, #0x27
	strb r0, [r1, #0x19]
	b _080147AA
	.align 2, 0
_08014794: .4byte 0x06015800
_08014798: .4byte gUnknown_08023420
_0801479C:
	mov r0, sp
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r1, [r1, #8]
	strb r1, [r0, #0x19]
_080147AA:
	mov r1, sp
	movs r0, #0x31
	strb r0, [r1, #0x1a]
	mov r0, sp
	strh r7, [r0, #4]
	strh r3, [r0, #6]
	ldr r2, [r5]
	movs r3, #0x80
	lsls r3, r3, #0x15
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	bne _080147E2
	add r1, sp, #0x1c
	strh r0, [r1]
	ldr r0, _08014804 @ =0x040000D4
	str r1, [r0]
	str r5, [r0, #4]
	ldr r1, _08014808 @ =0x81000022
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	orrs r2, r3
	str r2, [r5]
	movs r0, #0xff
	strh r0, [r5, #0xc]
	adds r0, r5, #0
	bl sub_80145F0
_080147E2:
	adds r4, r5, #0
	adds r4, #0x2c
	mov r0, sp
	movs r1, #0xff
	ldr r2, [sp, #0x38]
	bl sub_8014AB8
	mov r1, r8
	ldrh r0, [r1, #0x2e]
	strb r0, [r4]
	adds r0, r5, #0
_080147F8:
	add sp, #0x20
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08014804: .4byte 0x040000D4
_08014808: .4byte 0x81000022

	thumb_func_start sub_801480C
sub_801480C: @ 0x0801480C
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r2, _08014844 @ =gMain
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _08014848 @ =gUnknown_08023648
	adds r0, r0, r1
	movs r4, #0xc
	ldrsh r1, [r0, r4]
	movs r5, #0xe
	ldrsh r4, [r0, r5]
	adds r2, #0x42
	movs r0, #0x10
	ldrh r2, [r2]
	ands r0, r2
	cmp r0, #0
	beq _08014836
	cmp r3, #8
	bls _08014836
	subs r1, #0xf0
_08014836:
	adds r0, r3, #0
	adds r2, r4, #0
	bl sub_801484C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08014844: .4byte gMain
_08014848: .4byte gUnknown_08023648

	thumb_func_start sub_801484C
sub_801484C: @ 0x0801484C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r0, _08014918 @ =gMain
	mov r8, r0
	lsls r3, r5, #2
	adds r3, r3, r5
	lsls r3, r3, #2
	ldr r0, _0801491C @ =gUnknown_08023648
	adds r3, r3, r0
	mov r0, sp
	strh r5, [r0]
	ldr r0, [r3, #4]
	str r0, [sp, #0x10]
	ldr r0, [r3]
	str r0, [sp, #0x14]
	ldr r0, [r3, #8]
	str r0, [sp, #8]
	mov r4, sp
	ldrb r0, [r3, #0x10]
	strb r0, [r4, #0x18]
	ldrb r0, [r3, #0x11]
	strb r0, [r4, #0x19]
	ldrb r0, [r3, #0x12]
	strb r0, [r4, #0x1a]
	mov r0, sp
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	ldrb r2, [r3, #0x13]
	adds r1, r5, #0
	bl sub_8014AB8
	adds r4, r0, #0
	cmp r5, #0x73
	bne _0801489A
	movs r0, #0x18
	strh r0, [r4, #0x2e]
_0801489A:
	cmp r5, #0x12
	bne _080148A2
	movs r0, #0
	strh r0, [r4, #0x2e]
_080148A2:
	adds r6, r4, #0
	adds r6, #0x24
	ldrb r3, [r6]
	subs r1, r3, #6
	movs r5, #1
	lsls r5, r1
	mov r7, r8
	adds r7, #0x24
	ldrb r2, [r7]
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	bne _080148EA
	cmp r3, #9
	bhi _080148EA
	orrs r2, r5
	strb r2, [r7]
	ldrb r6, [r6]
	lsls r0, r6, #5
	ldr r2, _08014920 @ =0x05000200
	adds r5, r0, r2
	lsls r3, r1, #5
	ldr r0, _08014924 @ =gUnknown_03004170
	adds r3, r3, r0
	ldr r0, [r4, #0x20]
	ldr r1, [r0]
	lsls r1, r1, #5
	ldr r2, _08014928 @ =0x040000D4
	str r5, [r2]
	str r3, [r2, #4]
	lsrs r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r2, #8]
	ldr r0, [r2, #8]
_080148EA:
	mov r0, r8
	ldrh r1, [r0, #0x2e]
	adds r0, r4, #0
	adds r0, #0x2c
	strb r1, [r0]
	mov r0, r8
	adds r0, #0xb2
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x2d
	strb r0, [r1]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r4]
	adds r0, r4, #0
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08014918: .4byte gMain
_0801491C: .4byte gUnknown_08023648
_08014920: .4byte 0x05000200
_08014924: .4byte gUnknown_03004170
_08014928: .4byte 0x040000D4

	thumb_func_start sub_801492C
sub_801492C: @ 0x0801492C
	push {r4, r5, r6, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	ldr r6, _08014A64 @ =gUnknown_03000844
	bl ResetAnimationSystem
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08014A1A
	mov r1, sp
	movs r0, #0xff
	strh r0, [r1]
	mov r0, sp
	ldrb r3, [r4, #2]
	strb r3, [r0, #2]
	ldr r0, _08014A68 @ =0x06015800
	str r0, [sp, #0x10]
	ldr r2, _08014A6C @ =gUnknown_08023420
	ldrb r1, [r4, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	mov r1, sp
	movs r0, #0xe
	strb r0, [r1, #0x18]
	ldrb r5, [r4, #2]
	ldrh r0, [r6, #0xc]
	cmp r0, #0xff
	bne _0801498C
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x10
	bne _08014982
	movs r0, #0xd
	strb r0, [r1, #0x18]
_08014982:
	cmp r3, #0x27
	bne _0801498C
	mov r1, sp
	movs r0, #0xd
	strb r0, [r1, #0x18]
_0801498C:
	mov r1, sp
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #8]
	strb r0, [r1, #0x19]
	movs r0, #0x31
	strb r0, [r1, #0x1a]
	ldrh r0, [r4, #4]
	strh r0, [r1, #4]
	ldrh r0, [r4, #6]
	strh r0, [r1, #6]
	ldr r1, _08014A70 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	adds r0, r6, #0
	adds r0, #0xc
	str r0, [r1, #4]
	ldr r0, _08014A74 @ =0x8000000E
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, [r6, #0x14]
	str r2, [r6, #0x38]
	ldr r1, [r6, #0x20]
	ldr r0, [r2, #4]
	adds r1, r1, r0
	str r1, [r6, #0x20]
	ldr r0, [r1]
	lsls r0, r0, #5
	adds r0, #4
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldr r0, [r4, #0x18]
	str r0, [r6, #0x38]
	ldrh r0, [r0]
	adds r2, r0, r2
	str r2, [r6, #0x34]
	ldr r0, [r4, #0x14]
	movs r1, #0x82
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r6]
	ldr r0, [r6, #0x1c]
	lsrs r0, r0, #5
	ldrh r3, [r6, #0x3c]
	orrs r0, r3
	strh r0, [r6, #0x3c]
	adds r1, r6, #0
	adds r1, #0x42
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r5, r6, #0
	adds r5, #0x26
	ldrb r0, [r5]
	lsrs r1, r0, #4
	adds r0, r6, #0
	bl sub_80141C4
	movs r0, #0xf
	ldrb r1, [r5]
	ands r0, r1
	strb r0, [r5]
	ldrb r1, [r4, #0x10]
	adds r0, r6, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r6, #0
	bl sub_80145F0
_08014A1A:
	adds r4, #0x1c
	movs r5, #2
_08014A1E:
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08014A54
	ldrh r0, [r4]
	movs r2, #4
	ldrsh r1, [r4, r2]
	movs r3, #6
	ldrsh r2, [r4, r3]
	bl sub_801484C
	adds r6, r0, #0
	ldr r0, [r4, #0x14]
	movs r1, #0x82
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r6]
	ldr r1, [r4, #0x18]
	str r1, [r6, #0x38]
	ldr r0, [r6, #0x14]
	ldrh r1, [r1]
	adds r0, r1, r0
	str r0, [r6, #0x34]
	ldr r0, [r4, #0x10]
	str r0, [r6, #0x2c]
_08014A54:
	adds r5, #1
	adds r4, #0x1c
	cmp r5, #0x1f
	bls _08014A1E
	add sp, #0x1c
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08014A64: .4byte gUnknown_03000844
_08014A68: .4byte 0x06015800
_08014A6C: .4byte gUnknown_08023420
_08014A70: .4byte 0x040000D4
_08014A74: .4byte 0x8000000E

	thumb_func_start sub_8014A78
sub_8014A78: @ 0x08014A78
	adds r1, r0, #0
	ldr r2, _08014AB0 @ =gUnknown_03000844
	ldr r3, _08014AB4 @ =0x0000083C
	adds r0, r2, r3
	cmp r2, r0
	bhs _08014AAA
	adds r3, r0, #0
_08014A86:
	ldr r0, [r2, #0xc]
	str r0, [r1]
	ldr r0, [r2, #0x10]
	str r0, [r1, #4]
	ldr r0, [r2, #0x28]
	str r0, [r1, #0xc]
	ldr r0, [r2, #0x2c]
	str r0, [r1, #0x10]
	ldr r0, [r2, #0x14]
	str r0, [r1, #8]
	ldr r0, [r2]
	str r0, [r1, #0x14]
	ldr r0, [r2, #0x38]
	str r0, [r1, #0x18]
	adds r2, #0x44
	adds r1, #0x1c
	cmp r2, r3
	blo _08014A86
_08014AAA:
	adds r0, r1, #0
	bx lr
	.align 2, 0
_08014AB0: .4byte gUnknown_03000844
_08014AB4: .4byte 0x0000083C

	thumb_func_start sub_8014AB8
sub_8014AB8: @ 0x08014AB8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r2, #0
	ldrh r0, [r5]
	bl sub_8013EE8
	adds r4, r0, #0
	cmp r4, #0
	bne _08014ACE
	movs r0, #0
	b _08014B70
_08014ACE:
	ldr r1, _08014B78 @ =0x040000D4
	str r5, [r1]
	adds r0, r4, #0
	adds r0, #0xc
	str r0, [r1, #4]
	ldr r0, _08014B7C @ =0x8000000E
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #0x20]
	ldr r0, [r2, #4]
	adds r1, r1, r0
	str r1, [r4, #0x20]
	ldr r0, [r1]
	lsls r0, r0, #5
	adds r0, #4
	adds r1, r1, r0
	str r1, [r4, #0x18]
	adds r0, r2, #0
	adds r0, #8
	str r0, [r4, #0x38]
	ldrh r0, [r2, #8]
	adds r2, r0, r2
	str r2, [r4, #0x34]
	ldr r1, [r4]
	orrs r1, r6
	str r1, [r4]
	movs r0, #0x10
	ands r0, r6
	cmp r0, #0
	beq _08014B12
	ldr r0, _08014B80 @ =0x7FFFFFFF
	ands r1, r0
	str r1, [r4]
_08014B12:
	ldr r0, [r4, #0x1c]
	lsrs r0, r0, #5
	ldrh r1, [r4, #0x3c]
	orrs r0, r1
	movs r1, #0
	strh r0, [r4, #0x3c]
	adds r0, r4, #0
	adds r0, #0x40
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r5, r4, #0
	adds r5, #0x26
	ldrb r2, [r5]
	lsrs r1, r2, #4
	adds r0, r4, #0
	bl sub_80141C4
	movs r0, #0xf
	ldrb r1, [r5]
	ands r0, r1
	strb r0, [r5]
	adds r0, r4, #0
	bl sub_80145F0
	ldr r1, [r4, #0x38]
	movs r0, #2
	ldrb r2, [r1, #3]
	ands r0, r2
	cmp r0, #0
	beq _08014B5C
	ldrb r0, [r1, #4]
	bl sub_8013834
_08014B5C:
	ldr r1, [r4, #0x38]
	movs r0, #4
	ldrb r2, [r1, #3]
	ands r0, r2
	cmp r0, #0
	beq _08014B6E
	ldrb r0, [r1, #5]
	bl sub_8014638
_08014B6E:
	adds r0, r4, #0
_08014B70:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08014B78: .4byte 0x040000D4
_08014B7C: .4byte 0x8000000E
_08014B80: .4byte 0x7FFFFFFF

	thumb_func_start sub_8014B84
sub_8014B84: @ 0x08014B84
	push {r4, lr}
	adds r4, r0, #0
	movs r3, #4
	ldr r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08014BA0
	orrs r1, r2
	str r1, [r4]
	movs r0, #4
	b _08014C60
_08014BA0:
	ldr r0, _08014BB4 @ =gScriptContext
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _08014BB8
	ldrh r0, [r4, #0xc]
	cmp r0, #0xff
	bne _08014BB8
	movs r0, #4
	b _08014C60
	.align 2, 0
_08014BB4: .4byte gScriptContext
_08014BB8:
	ldr r2, [r4, #0x38]
	ldrb r1, [r2, #2]
	ldrh r0, [r4, #0x28]
	adds r0, #1
	strh r0, [r4, #0x28]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _08014C5E
	movs r0, #0
	strh r0, [r4, #0x28]
	adds r1, r2, #0
	adds r1, #8
	str r1, [r4, #0x38]
	movs r0, #2
	ldrb r2, [r1, #3]
	ands r0, r2
	cmp r0, #0
	beq _08014BE4
	ldrb r0, [r1, #4]
	bl sub_8013834
_08014BE4:
	ldr r1, [r4, #0x38]
	movs r0, #4
	ldrb r2, [r1, #3]
	ands r0, r2
	cmp r0, #0
	beq _08014BF6
	ldrb r0, [r1, #5]
	bl sub_8014638
_08014BF6:
	ldr r0, [r4, #0x38]
	ldrb r1, [r0, #2]
	adds r2, r0, #0
	cmp r1, #0xfe
	beq _08014C2A
	cmp r1, #0xfe
	bgt _08014C0A
	cmp r1, #0xfd
	beq _08014C40
	b _08014C4A
_08014C0A:
	cmp r1, #0xff
	bne _08014C4A
	ldr r0, [r4, #0x14]
	adds r1, r0, #0
	adds r1, #8
	str r1, [r4, #0x38]
	ldrh r1, [r0, #8]
	adds r0, r1, r0
	str r0, [r4, #0x34]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r4]
	movs r3, #7
	b _08014C5E
_08014C2A:
	ldr r0, [r4]
	ldr r1, _08014C3C @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r4]
	movs r3, #0
	adds r0, r2, #0
	subs r0, #8
	str r0, [r4, #0x38]
	b _08014C5E
	.align 2, 0
_08014C3C: .4byte 0x7FFFFFFF
_08014C40:
	adds r0, r4, #0
	bl sub_8014F94
	movs r3, #0
	b _08014C5E
_08014C4A:
	ldr r0, [r4, #0x14]
	ldrh r2, [r2]
	adds r0, r2, r0
	str r0, [r4, #0x34]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r4]
	movs r3, #5
_08014C5E:
	adds r0, r3, #0
_08014C60:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8014C68
sub_8014C68: @ 0x08014C68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	adds r7, r1, #0
	ldr r0, _08014D04 @ =gAnimation
	ldr r4, [r0, #8]
	cmp r4, #0
	beq _08014CF6
_08014C7E:
	ldr r0, [r4]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _08014CF0
	ldrh r0, [r4, #0x10]
	add r0, r8
	strh r0, [r4, #0x10]
	ldrh r1, [r4, #0x12]
	adds r0, r1, r7
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r5, _08014D08 @ =gOamObjects
	adds r3, r0, r5
	movs r2, #0x3f
	adds r2, r2, r4
	mov ip, r2
	ldrb r1, [r2]
	lsls r0, r1, #3
	adds r0, r0, r5
	cmp r3, r0
	bhs _08014CF0
	movs r2, #0xff
	mov sl, r2
	ldr r6, _08014D0C @ =0x000001FF
	movs r0, #0xfe
	lsls r0, r0, #8
	mov sb, r0
_08014CBC:
	movs r1, #0xff
	lsls r1, r1, #8
	ldrh r2, [r3]
	ands r1, r2
	ldrb r2, [r3]
	adds r0, r2, r7
	mov r2, sl
	ands r0, r2
	orrs r1, r0
	strh r1, [r3]
	ldrh r2, [r3, #2]
	adds r0, r6, #0
	ands r0, r2
	mov r1, sb
	ands r1, r2
	add r0, r8
	ands r0, r6
	orrs r1, r0
	strh r1, [r3, #2]
	adds r3, #8
	mov r1, ip
	ldrb r1, [r1]
	lsls r0, r1, #3
	adds r0, r0, r5
	cmp r3, r0
	blo _08014CBC
_08014CF0:
	ldr r4, [r4, #8]
	cmp r4, #0
	bne _08014C7E
_08014CF6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014D04: .4byte gAnimation
_08014D08: .4byte gOamObjects
_08014D0C: .4byte 0x000001FF

	thumb_func_start sub_8014D10
sub_8014D10: @ 0x08014D10
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	mov sb, r1
	ldr r0, _08014D3C @ =gIORegisters
	mov r8, r0
	ldr r7, _08014D40 @ =gMain
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r4
	cmp r0, #0
	beq _08014D44
	lsrs r0, r4, #8
	movs r1, #0xff
	ands r4, r1
	bl sub_8013EB0
	adds r3, r0, #0
	b _08014D46
	.align 2, 0
_08014D3C: .4byte gIORegisters
_08014D40: .4byte gMain
_08014D44:
	ldr r3, _08014D8C @ =gUnknown_03000844
_08014D46:
	mov r0, r8
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0x10
	beq _08014E1E
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r2
	cmp r0, #0
	bne _08014D64
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08014E1E
_08014D64:
	movs r5, #1
	ands r5, r4
	cmp r5, #0
	beq _08014D98
	ldr r0, _08014D90 @ =gUnknown_02000004
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #0x12
	cmp r0, r1
	beq _08014E1E
	ldr r0, _08014D94 @ =0xF3FFFFFB
	ands r2, r0
	str r2, [r3]
	adds r1, r7, #0
	adds r1, #0x83
	movs r0, #0x10
	strb r0, [r1]
	adds r2, r1, #0
	b _08014DE0
	.align 2, 0
_08014D8C: .4byte gUnknown_03000844
_08014D90: .4byte gUnknown_02000004
_08014D94: .4byte 0xF3FFFFFB
_08014D98:
	movs r6, #4
	adds r0, r4, #0
	ands r0, r6
	cmp r0, #0
	beq _08014E1E
	ldr r1, _08014E2C @ =gUnknown_02000004
	adds r0, r2, #0
	ands r0, r1
	cmp r0, r1
	beq _08014E1E
	orrs r2, r6
	str r2, [r3]
	adds r0, r7, #0
	adds r0, #0x83
	strb r5, [r0]
	ldr r1, [r3]
	movs r2, #0x40
	ands r1, r2
	adds r2, r0, #0
	cmp r1, #0
	beq _08014DCE
	strb r6, [r2]
	ldr r0, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3]
_08014DCE:
	movs r0, #0xc
	ands r0, r4
	cmp r0, #0
	beq _08014DE0
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r3]
_08014DE0:
	ldr r0, [r3]
	movs r1, #0x88
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r3]
	adds r0, r7, #0
	adds r0, #0x82
	movs r1, #0
	mov r3, sb
	strb r3, [r0]
	subs r0, #2
	strh r1, [r0]
	mov r3, r8
	adds r3, #0x48
	movs r0, #0x84
	lsls r0, r0, #4
	strh r0, [r3]
	ldrb r2, [r2]
	lsls r1, r2, #8
	movs r0, #0x10
	subs r0, r0, r2
	orrs r1, r0
	mov r2, r8
	adds r2, #0x4c
	strh r1, [r2]
	ldr r1, _08014E30 @ =0x04000050
	ldrh r0, [r3]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r2]
	strh r0, [r1]
_08014E1E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014E2C: .4byte gUnknown_02000004
_08014E30: .4byte 0x04000050

	thumb_func_start sub_8014E34
sub_8014E34: @ 0x08014E34
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r5, _08014E54 @ =gMain
	ldr r7, _08014E58 @ =gIORegisters
	movs r6, #0
	adds r0, r5, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _08014E60
	ldr r0, [r4]
	ldr r1, _08014E5C @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r4]
	b _08014F54
	.align 2, 0
_08014E54: .4byte gMain
_08014E58: .4byte gIORegisters
_08014E5C: .4byte 0xFDFFFFFF
_08014E60:
	ldrb r0, [r4, #0xe]
	cmp r0, #0x20
	bne _08014E7A
	movs r0, #0x3d
	bl sub_8013EB0
	adds r6, r0, #0
	cmp r6, #0
	bne _08014E7A
	movs r0, #0x3e
	bl sub_8013EB0
	adds r6, r0, #0
_08014E7A:
	adds r3, r5, #0
	adds r3, #0x80
	ldrh r0, [r3]
	adds r0, #1
	movs r1, #0
	mov ip, r1
	strh r0, [r3]
	adds r1, r5, #0
	adds r1, #0x82
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r5, #0
	adds r2, #0x83
	ldrb r1, [r1]
	cmp r0, r1
	blo _08014F44
	movs r0, #0
	strh r0, [r3]
	ldr r0, [r4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08014F0A
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bne _08014F44
	adds r1, r7, #0
	adds r1, #0x48
	ldr r0, _08014EEC @ =0x00001942
	strh r0, [r1]
	adds r1, #4
	ldr r0, _08014EF0 @ =0x0000071F
	strh r0, [r1]
	ldr r0, [r4]
	ldr r1, _08014EF4 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ands r0, r1
	cmp r0, #0
	beq _08014EF8
	adds r0, r4, #0
	movs r1, #0
	bl sub_8014138
	cmp r6, #0
	beq _08014F54
	adds r0, r6, #0
	movs r1, #0
	bl sub_8014138
	b _08014F54
	.align 2, 0
_08014EEC: .4byte 0x00001942
_08014EF0: .4byte 0x0000071F
_08014EF4: .4byte 0xFDFFFFFF
_08014EF8:
	adds r0, r4, #0
	bl sub_8014F94
	cmp r6, #0
	beq _08014F54
	adds r0, r6, #0
	bl sub_8014F94
	b _08014F54
_08014F0A:
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08014F44
	adds r1, r7, #0
	adds r1, #0x48
	ldr r0, _08014F38 @ =0x00001942
	strh r0, [r1]
	adds r1, #4
	ldr r0, _08014F3C @ =0x0000071F
	strh r0, [r1]
	ldr r0, [r4]
	ldr r1, _08014F40 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r4]
	cmp r6, #0
	beq _08014F54
	ldr r0, [r6]
	ands r0, r1
	str r0, [r6]
	b _08014F54
	.align 2, 0
_08014F38: .4byte 0x00001942
_08014F3C: .4byte 0x0000071F
_08014F40: .4byte 0xFDFFFFFF
_08014F44:
	ldrb r2, [r2]
	lsls r1, r2, #8
	movs r0, #0x10
	subs r0, r0, r2
	orrs r1, r0
	adds r0, r7, #0
	adds r0, #0x4c
	strh r1, [r0]
_08014F54:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8014F5C
sub_8014F5C: @ 0x08014F5C
	push {r4, r5, lr}
	ldr r2, _08014F90 @ =gAnimation
	movs r1, #0x88
	lsls r1, r1, #4
	adds r0, r2, r1
	cmp r2, r0
	bhs _08014F88
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r4, #0xc0
	lsls r4, r4, #0x17
	adds r3, r0, #0
_08014F74:
	ldr r1, [r2]
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	beq _08014F82
	orrs r1, r4
	str r1, [r2]
_08014F82:
	adds r2, #0x44
	cmp r2, r3
	blo _08014F74
_08014F88:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014F90: .4byte gAnimation

	thumb_func_start sub_8014F94
sub_8014F94: @ 0x08014F94
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, _08014FBC @ =gMain
	cmp r4, #0
	beq _0801507A
	ldr r0, [r4, #0xc]
	ldr r1, _08014FC0 @ =0x00FFFFFF
	ands r0, r1
	ldr r1, _08014FC4 @ =0x002000FF
	cmp r0, r1
	bne _08014FD6
	movs r0, #0x3d
	bl sub_8013EB0
	cmp r0, #0
	beq _08014FC8
	bl sub_8014F94
	b _08014FD6
	.align 2, 0
_08014FBC: .4byte gMain
_08014FC0: .4byte 0x00FFFFFF
_08014FC4: .4byte 0x002000FF
_08014FC8:
	movs r0, #0x3e
	bl sub_8013EB0
	cmp r0, #0
	beq _08014FD6
	bl sub_8014F94
_08014FD6:
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0801507A
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r3, _08015080 @ =gOamObjects
	adds r1, r0, r3
	adds r2, r4, #0
	adds r2, #0x3f
	ldrb r5, [r2]
	lsls r0, r5, #3
	adds r0, r0, r3
	movs r7, #0x25
	adds r7, r7, r6
	mov ip, r7
	cmp r1, r0
	bhs _08015014
	movs r5, #0x80
	lsls r5, r5, #2
_08015006:
	strh r5, [r1]
	adds r1, #8
	ldrb r7, [r2]
	lsls r0, r7, #3
	adds r0, r0, r3
	cmp r1, r0
	blo _08015006
_08015014:
	movs r0, #4
	movs r1, #0
	mov r2, ip
	ldrb r2, [r2]
	orrs r0, r2
	mov r3, ip
	strb r0, [r3]
	str r1, [r4]
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	str r0, [r1, #8]
	ldr r1, [r4, #8]
	ldr r0, [r4, #4]
	str r0, [r1, #4]
	ldrh r5, [r4, #0xc]
	cmp r5, #0xff
	beq _0801507A
	adds r3, r4, #0
	adds r3, #0x24
	ldrb r7, [r3]
	cmp r7, #9
	bhi _0801507A
	adds r2, r7, #0
	subs r2, #6
	movs r0, #1
	lsls r0, r2
	adds r1, r6, #0
	adds r1, #0x24
	ldrb r5, [r1]
	bics r5, r0
	adds r0, r5, #0
	strb r0, [r1]
	lsls r2, r2, #5
	ldr r0, _08015084 @ =gUnknown_03004170
	adds r5, r2, r0
	ldrb r3, [r3]
	lsls r1, r3, #5
	ldr r7, _08015088 @ =0x05000200
	adds r1, r1, r7
	ldr r0, [r4, #0x20]
	ldr r0, [r0]
	lsls r0, r0, #5
	ldr r2, _0801508C @ =0x040000D4
	str r5, [r2]
	str r1, [r2, #4]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0801507A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015080: .4byte gOamObjects
_08015084: .4byte gUnknown_03004170
_08015088: .4byte 0x05000200
_0801508C: .4byte 0x040000D4

	thumb_func_start sub_8015090
sub_8015090: @ 0x08015090
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r0, _080151F8 @ =gMain
	str r0, [sp]
	movs r6, #0x80
	ldr r5, _080151FC @ =gUnknown_03002FA0
	ldr r0, _08015200 @ =gAnimation
	ldr r0, [r0, #8]
	mov ip, r0
	ldr r1, [sp]
	str r1, [sp, #0x18]
	cmp r0, #0
	bne _080150B4
	b _08015378
_080150B4:
	mov r2, ip
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	bne _080150C4
	b _0801536C
_080150C4:
	mov r1, ip
	adds r1, #0x3f
	strb r6, [r1]
	ldr r2, [sp]
	adds r2, #0x25
	movs r0, #2
	ldrb r2, [r2]
	ands r0, r2
	str r1, [sp, #0x14]
	mov r3, ip
	adds r3, #0x25
	str r3, [sp, #0xc]
	mov r7, ip
	adds r7, #0x3e
	str r7, [sp, #0x10]
	cmp r0, #0
	bne _080150E8
	b _080152E2
_080150E8:
	mov r1, ip
	ldr r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #0x16
	ands r0, r1
	cmp r0, #0
	bne _080150F8
	b _080152E2
_080150F8:
	mov r2, ip
	ldr r3, [r2, #0x34]
	movs r7, #0x10
	ldrsh r1, [r2, r7]
	ldr r2, [sp]
	movs r0, #0x12
	ldrsb r0, [r2, r0]
	subs r1, r1, r0
	str r1, [sp, #0x20]
	mov r7, ip
	movs r0, #0x12
	ldrsh r1, [r7, r0]
	movs r0, #0x13
	ldrsb r0, [r2, r0]
	subs r1, r1, r0
	mov sb, r1
	ldr r1, _08015204 @ =0x00000FFF
	ldrh r2, [r7, #0x3c]
	ands r2, r1
	mov sl, r2
	ldrh r7, [r3]
	str r7, [sp, #8]
	lsls r0, r6, #2
	ldr r1, _08015208 @ =gUnknown_0200AFC0
	adds r4, r0, r1
	movs r2, #0
	str r2, [sp, #4]
	cmp r2, r7
	blo _08015134
	b _080152E2
_08015134:
	ldr r7, _0801520C @ =gUnknown_08024228
	str r7, [sp, #0x1c]
	movs r0, #0x24
	add r0, ip
	mov r8, r0
_0801513E:
	subs r6, #1
	subs r5, #8
	subs r4, #4
	adds r3, #4
	ldrh r1, [r3, #2]
	lsrs r0, r1, #0xc
	lsls r0, r0, #2
	ldr r2, [sp, #0x1c]
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r4]
	movs r0, #0xc0
	lsls r0, r0, #6
	ldrh r7, [r3, #2]
	ands r0, r7
	lsls r2, r0, #2
	strh r2, [r5]
	mov r1, ip
	ldr r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #0xd
	ands r0, r1
	cmp r0, #0
	beq _0801518C
	ldrb r7, [r4, #3]
	lsrs r0, r7, #1
	ldr r1, [sp, #0x20]
	subs r1, r1, r0
	str r1, [sp, #0x20]
	ldrb r7, [r4, #2]
	lsrs r0, r7, #1
	mov r1, sb
	subs r1, r1, r0
	mov sb, r1
	movs r7, #0xc0
	lsls r7, r7, #2
	adds r0, r7, #0
	orrs r2, r0
	strh r2, [r5]
_0801518C:
	movs r0, #1
	ldrsb r0, [r3, r0]
	mov r2, sb
	adds r1, r2, r0
	movs r0, #0x60
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080151A0
	movs r1, #0x58
	rsbs r1, r1, #0
_080151A0:
	cmp r1, #0xe0
	ble _080151A6
	movs r1, #0xe0
_080151A6:
	movs r0, #0xff
	adds r2, r1, #0
	ands r2, r0
	ldrh r7, [r5]
	orrs r2, r7
	strh r2, [r5]
	mov r1, ip
	ldr r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _080151CA
	movs r7, #0x80
	lsls r7, r7, #3
	adds r0, r7, #0
	orrs r2, r0
	strh r2, [r5]
_080151CA:
	movs r2, #0xc0
	lsls r2, r2, #8
	ldrh r0, [r3, #2]
	ands r2, r0
	strh r2, [r5, #2]
	mov r1, ip
	ldr r0, [r1]
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	beq _08015214
	movs r0, #0
	ldrsb r0, [r3, r0]
	ldrb r1, [r4, #3]
	adds r0, r1, r0
	ldr r7, [sp, #0x20]
	subs r0, r7, r0
	ldr r1, _08015210 @ =0x000001FF
	ands r0, r1
	movs r7, #0x80
	lsls r7, r7, #5
	orrs r0, r7
	b _0801522A
	.align 2, 0
_080151F8: .4byte gMain
_080151FC: .4byte gUnknown_03002FA0
_08015200: .4byte gAnimation
_08015204: .4byte 0x00000FFF
_08015208: .4byte gUnknown_0200AFC0
_0801520C: .4byte gUnknown_08024228
_08015210: .4byte 0x000001FF
_08015214:
	movs r0, #0
	ldrsb r0, [r3, r0]
	ldr r1, [sp, #0x20]
	adds r0, r0, r1
	ldr r7, _0801525C @ =0x000001FF
	ands r0, r7
	mov r1, ip
	adds r1, #0x42
	ldrb r1, [r1]
	lsls r1, r1, #9
	orrs r0, r1
_0801522A:
	orrs r2, r0
	strh r2, [r5, #2]
	mov r0, ip
	adds r0, #0x43
	ldrb r0, [r0]
	lsls r2, r0, #0xa
	mov r0, sl
	orrs r2, r0
	strh r2, [r5, #4]
	mov r1, ip
	ldr r0, [r1, #0x38]
	ldrb r1, [r0, #3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08015260
	ldrh r7, [r3, #2]
	lsrs r0, r7, #9
	movs r1, #7
	ands r0, r1
	mov r1, r8
	ldrb r1, [r1]
	adds r0, r1, r0
	b _08015286
	.align 2, 0
_0801525C: .4byte 0x000001FF
_08015260:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08015278
	ldrh r7, [r3, #2]
	lsrs r0, r7, #0xa
	movs r1, #3
	ands r0, r1
	mov r1, r8
	ldrb r1, [r1]
	adds r0, r1, r0
	b _08015286
_08015278:
	ldrh r7, [r3, #2]
	lsrs r0, r7, #0xb
	movs r1, #1
	ands r0, r1
	mov r7, r8
	ldrb r7, [r7]
	adds r0, r7, r0
_08015286:
	lsls r0, r0, #0xc
	orrs r2, r0
	strh r2, [r5, #4]
	ldrh r1, [r4]
	lsrs r0, r1, #5
	add sl, r0
	ldr r0, [sp]
	adds r0, #0x84
	ldrh r1, [r0]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _080152A8
	ldr r0, _08015388 @ =0x0000FFFF
	cmp r1, r0
	bne _080152B4
_080152A8:
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ldrh r7, [r5]
	orrs r0, r7
	strh r0, [r5]
_080152B4:
	mov r1, ip
	ldrh r0, [r1, #0xc]
	cmp r0, #0x79
	beq _080152C0
	cmp r0, #0x7b
	bne _080152D4
_080152C0:
	ldr r2, [sp, #0x18]
	ldrh r2, [r2, #0x2e]
	cmp r2, #0x78
	bne _080152D4
	movs r7, #0x80
	lsls r7, r7, #3
	adds r0, r7, #0
	ldrh r1, [r5]
	orrs r0, r1
	strh r0, [r5]
_080152D4:
	ldr r2, [sp, #4]
	adds r2, #1
	str r2, [sp, #4]
	ldr r7, [sp, #8]
	cmp r2, r7
	bhs _080152E2
	b _0801513E
_080152E2:
	ldr r1, [sp, #0x14]
	ldrb r2, [r1]
	ldr r1, [sp, #0xc]
	ldrb r1, [r1]
	subs r0, r2, r1
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	adds r3, r0, #0
	subs r6, r6, r3
	subs r6, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	beq _0801530C
	movs r1, #0x80
	lsls r1, r1, #2
_08015302:
	subs r5, #8
	strh r1, [r5]
	subs r6, #1
	cmp r6, r0
	bne _08015302
_0801530C:
	ldr r7, [sp, #0x10]
	ldrb r6, [r7]
	mov r1, ip
	ldrh r0, [r1, #0xc]
	subs r0, #0x3a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _0801536C
	lsls r3, r6, #3
	ldr r2, _0801538C @ =gOamObjects
	adds r3, r3, r2
	ldrh r7, [r1, #0xc]
	lsls r2, r7, #3
	ldr r0, _0801538C @ =gOamObjects
	subs r0, #0xc0
	adds r2, r2, r0
	ldrh r0, [r3]
	strh r0, [r2]
	ldrh r0, [r3, #2]
	strh r0, [r2, #2]
	mov r4, ip
	adds r4, #0x24
	ldrb r0, [r4]
	lsls r1, r0, #0xc
	ldr r0, _08015390 @ =0x000003FF
	ldrh r7, [r3, #4]
	ands r0, r7
	orrs r1, r0
	strh r1, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3]
	mov r1, ip
	ldr r0, [r1, #0x20]
	adds r0, #4
	ldr r2, _08015394 @ =0x040000D4
	str r0, [r2]
	movs r0, #0xf
	ldrb r4, [r4]
	ands r0, r4
	lsls r0, r0, #5
	ldr r1, _08015398 @ =0x05000200
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0801539C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0801536C:
	mov r3, ip
	ldr r3, [r3, #8]
	mov ip, r3
	cmp r3, #0
	beq _08015378
	b _080150B4
_08015378:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015388: .4byte 0x0000FFFF
_0801538C: .4byte gOamObjects
_08015390: .4byte 0x000003FF
_08015394: .4byte 0x040000D4
_08015398: .4byte 0x05000200
_0801539C: .4byte 0x80000010

	thumb_func_start MoveAnimationTilesToRam
MoveAnimationTilesToRam: @ 0x080153A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	str r0, [sp, #0x64]
	ldr r0, _08015468 @ =gAnimation
	ldr r6, [r0, #8]
	cmp r6, #0
	bne _080153B8
	b _080155EC
_080153B8:
	ldr r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #0x17
	ands r0, r1
	cmp r0, #0
	bne _080153C6
	b _080155E4
_080153C6:
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r0, r1
	cmp r0, #0
	bne _080153D2
	b _080155E4
_080153D2:
	ldr r5, _0801546C @ =gUnknown_0200B1C0
	ldr r0, [sp, #0x64]
	cmp r0, #0
	bne _080153DC
	ldr r5, [r6, #0x1c]
_080153DC:
	ldr r2, [r6, #0x34]
	mov ip, r2
	ldrh r3, [r2]
	mov sl, r3
	adds r0, r6, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r2, _08015470 @ =gUnknown_0200AFC0
	adds r7, r0, r2
	ldr r0, _08015474 @ =0xBFFFFFFF
	ands r1, r0
	str r1, [r6]
	ldr r0, [r6, #0x20]
	ldr r0, [r0]
	str r0, [sp, #0x68]
	movs r3, #0x80
	lsls r3, r3, #0x18
	ands r0, r3
	cmp r0, #0
	beq _080154AA
	movs r2, #0
	cmp r2, sl
	blo _0801540E
	b _0801550A
_0801540E:
	movs r0, #4
	add ip, r0
	subs r7, #4
	ldrh r1, [r7]
	adds r1, r1, r5
	mov r8, r1
	ldr r0, _08015478 @ =0x000001FF
	mov r3, ip
	ldrh r3, [r3, #2]
	ands r0, r3
	ldr r1, [r6, #0x18]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r3, r1, r0
	adds r2, #1
	str r2, [sp, #0x6c]
	cmp r8, r5
	bls _080154A2
	ldr r4, _0801547C @ =0x040000D4
	mov sb, sp
_08015438:
	ldrh r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08015484
	ldr r1, _08015480 @ =0x00007FFF
	ands r1, r2
	ldrh r0, [r3, #2]
	mov r2, sb
	strh r0, [r2]
	mov r0, sp
	str r0, [r4]
	str r5, [r4, #4]
	lsls r2, r1, #1
	movs r0, #0x81
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	adds r5, r5, r2
	adds r3, #4
	b _0801549E
	.align 2, 0
_08015468: .4byte gAnimation
_0801546C: .4byte gUnknown_0200B1C0
_08015470: .4byte gUnknown_0200AFC0
_08015474: .4byte 0xBFFFFFFF
_08015478: .4byte 0x000001FF
_0801547C: .4byte 0x040000D4
_08015480: .4byte 0x00007FFF
_08015484:
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r3, #2
	str r3, [r4]
	str r5, [r4, #4]
	lsrs r1, r0, #1
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r4, #8]
	ldr r1, [r4, #8]
	adds r5, r5, r0
	adds r3, r3, r0
_0801549E:
	cmp r8, r5
	bhi _08015438
_080154A2:
	ldr r2, [sp, #0x6c]
	cmp r2, sl
	blo _0801540E
	b _0801550A
_080154AA:
	ldr r0, [r6, #0x38]
	ldrb r1, [r0, #3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080154C0
	ldr r3, _080154BC @ =0x000001FF
	mov r8, r3
	b _080154D0
	.align 2, 0
_080154BC: .4byte 0x000001FF
_080154C0:
	movs r0, #8
	ands r0, r1
	ldr r1, _08015580 @ =0x000007FF
	mov r8, r1
	cmp r0, #0
	beq _080154D0
	ldr r2, _08015584 @ =0x000003FF
	mov r8, r2
_080154D0:
	movs r2, #0
	cmp r2, sl
	bhs _0801550A
	ldr r4, _08015588 @ =0x040000D4
	movs r3, #0x80
	lsls r3, r3, #0x18
	mov sb, r3
_080154DE:
	movs r0, #4
	add ip, r0
	subs r7, #4
	mov r0, r8
	mov r1, ip
	ldrh r1, [r1, #2]
	ands r0, r1
	lsls r0, r0, #5
	ldr r1, [r6, #0x18]
	adds r3, r1, r0
	str r3, [r4]
	str r5, [r4, #4]
	ldrh r3, [r7]
	lsrs r0, r3, #1
	mov r1, sb
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r5, r3, r5
	adds r2, #1
	cmp r2, sl
	blo _080154DE
_0801550A:
	ldr r2, [r6]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r2
	cmp r0, #0
	beq _080155E4
	adds r1, r6, #0
	adds r1, #0x24
	movs r0, #0xf
	ldrb r1, [r1]
	ands r0, r1
	lsls r0, r0, #5
	ldr r1, _0801558C @ =0x05000200
	adds r1, r1, r0
	mov r8, r1
	ldr r3, [sp, #0x68]
	lsls r3, r3, #5
	str r3, [sp, #0x68]
	ldr r0, [r6, #0x20]
	adds r3, r0, #4
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0801553E
	ldr r3, [r6, #0x30]
_0801553E:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r2, r0
	cmp r2, #0
	beq _080155C4
	ldr r0, _08015588 @ =0x040000D4
	str r3, [r0]
	add r2, sp, #4
	str r2, [r0, #4]
	ldr r3, [sp, #0x68]
	lsrs r1, r3, #1
	adds r0, r1, #0
	movs r3, #0x80
	lsls r3, r3, #0x18
	orrs r0, r3
	ldr r3, _08015588 @ =0x040000D4
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	adds r7, r2, #0
	adds r5, r1, #0
	ldr r0, _08015590 @ =gMain+0x84
	mov sl, r0
	ldr r1, _08015594 @ =0x0000FFFE
	mov sb, r1
	adds r4, r7, #0
_08015570:
	mov r2, sl
	ldrh r2, [r2]
	cmp r2, sb
	bne _08015598
	ldrh r0, [r4]
	movs r1, #0x20
	movs r2, #1
	b _0801559E
	.align 2, 0
_08015580: .4byte 0x000007FF
_08015584: .4byte 0x000003FF
_08015588: .4byte 0x040000D4
_0801558C: .4byte 0x05000200
_08015590: .4byte gMain+0x84
_08015594: .4byte 0x0000FFFE
_08015598:
	ldrh r0, [r4]
	movs r1, #0x20
	movs r2, #0
_0801559E:
	bl sub_800389C
	strh r0, [r4]
	adds r4, #2
	adds r0, r7, #0
	adds r0, #0x5e
	cmp r4, r0
	bls _08015570
	ldr r3, _080155C0 @ =0x040000D4
	str r7, [r3]
	mov r0, r8
	str r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r5, r1
	str r5, [r3, #8]
	b _080155DA
	.align 2, 0
_080155C0: .4byte 0x040000D4
_080155C4:
	ldr r2, _080155FC @ =0x040000D4
	str r3, [r2]
	mov r3, r8
	str r3, [r2, #4]
	ldr r1, [sp, #0x68]
	lsrs r0, r1, #1
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r0, r2
	ldr r3, _080155FC @ =0x040000D4
	str r0, [r3, #8]
_080155DA:
	ldr r0, [r3, #8]
	ldr r0, [r6]
	ldr r1, _08015600 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r6]
_080155E4:
	ldr r6, [r6, #8]
	cmp r6, #0
	beq _080155EC
	b _080153B8
_080155EC:
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080155FC: .4byte 0x040000D4
_08015600: .4byte 0xFEFFFFFF

	thumb_func_start UpdateAnimations
UpdateAnimations: @ 0x08015604
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	ldr r7, _08015668 @ =gMain
	ldr r1, _0801566C @ =gAnimation
	ldr r0, _08015670 @ =gCourtScroll
	mov sb, r0
	ldr r2, _08015674 @ =gIORegisters
	mov r8, r2
	adds r2, r7, #0
	adds r2, #0x25
	movs r0, #1
	ldrb r2, [r2]
	ands r0, r2
	cmp r0, #0
	bne _0801562C
	b _08015860
_0801562C:
	ldr r4, [r1, #8]
	cmp r4, #0
	bne _08015634
	b _08015860
_08015634:
	ldrh r1, [r4, #0xc]
	adds r0, r1, #0
	subs r0, #9
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x18
	bhi _080156A8
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r1, [r7, #0x2e]
	ldrb r0, [r0]
	cmp r1, r0
	beq _08015678
	adds r0, r7, #0
	adds r0, #0xb2
	adds r1, r4, #0
	adds r1, #0x2d
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080156BE
	adds r0, r4, #0
	movs r1, #0
	bl sub_8014138
	b _08015858
	.align 2, 0
_08015668: .4byte gMain
_0801566C: .4byte gAnimation
_08015670: .4byte gCourtScroll
_08015674: .4byte gIORegisters
_08015678:
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x16
	ands r0, r1
	cmp r0, #0
	bne _080156A0
	adds r0, r7, #0
	adds r0, #0x34
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080156A0
	ldrh r0, [r4, #0xc]
	bl sub_801480C
	adds r0, r4, #0
	movs r1, #1
	bl sub_8014138
_080156A0:
	ldrh r2, [r7, #0x30]
	cmp r2, #0x7f
	bne _0801574A
	b _08015722
_080156A8:
	adds r0, r1, #0
	subs r0, #0x46
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bhi _080156C6
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp sl, r0
	beq _0801574A
_080156BE:
	adds r0, r4, #0
	bl sub_8014F94
	b _08015858
_080156C6:
	adds r0, r1, #0
	subs r0, #0x64
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bhi _080156E6
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r1, [r7, #0x2e]
	ldrb r0, [r0]
	cmp r1, r0
	beq _0801574A
	adds r0, r4, #0
	bl sub_8014F94
	b _0801574A
_080156E6:
	adds r0, r1, #0
	subs r0, #0x3d
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bhi _0801574A
	adds r0, r7, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801574A
	ldr r1, _0801572C @ =gAnimation
	adds r0, r1, #0
	adds r0, #0x52
	ldrb r0, [r0]
	cmp r0, #0x20
	bne _08015742
	ldr r0, [r1, #0x44]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	bne _08015722
	ldrh r2, [r7, #0x30]
	cmp r2, #0x7f
	beq _08015722
	mov r2, sb
	ldrh r0, [r2, #4]
	cmp r0, #0
	beq _08015730
_08015722:
	adds r0, r4, #0
	movs r1, #0
	bl sub_8014138
	b _0801574A
	.align 2, 0
_0801572C: .4byte gAnimation
_08015730:
	ldr r0, [r4]
	ands r0, r1
	cmp r0, #0
	beq _0801574A
	adds r0, r4, #0
	movs r1, #1
	bl sub_8014138
	b _0801574A
_08015742:
	adds r0, r4, #0
	movs r1, #0
	bl sub_8014138
_0801574A:
	ldrh r0, [r4, #0xc]
	cmp r0, #0x7d
	beq _0801575A
	subs r0, #0x7f
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bhi _0801576A
_0801575A:
	ldr r0, _080157E8 @ =gMain
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801576A
	adds r0, r4, #0
	bl sub_8014B84
_0801576A:
	ldr r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801579A
	movs r0, #0x88
	lsls r0, r0, #0x16
	orrs r1, r0
	str r1, [r4]
	mov r2, r8
	adds r2, #0x48
	movs r0, #0x84
	lsls r0, r0, #4
	strh r0, [r2]
	mov r3, r8
	adds r3, #0x4c
	ldr r0, _080157EC @ =0x0000FF0A
	strh r0, [r3]
	ldr r1, _080157F0 @ =0x04000050
	ldrh r0, [r2]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3]
	strh r0, [r1]
_0801579A:
	ldr r1, [r4]
	movs r6, #0x80
	lsls r6, r6, #0x12
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	beq _08015814
	ldrh r0, [r4, #0xc]
	subs r0, #0x22
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x23
	bls _0801580A
	adds r0, r4, #0
	bl sub_8014E34
	ldr r0, [r4, #0xc]
	ldr r1, _080157F4 @ =0x00FFFFFF
	ands r0, r1
	ldr r1, _080157F8 @ =0x002000FF
	cmp r0, r1
	bne _0801580A
	ldr r5, [r4]
	ands r5, r6
	movs r6, #0x3d
_080157CC:
	adds r0, r6, #0
	bl sub_8013EB0
	adds r2, r0, #0
	cmp r2, #0
	beq _08015804
	cmp r5, #0
	beq _080157FC
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	b _08015802
	.align 2, 0
_080157E8: .4byte gMain
_080157EC: .4byte 0x0000FF0A
_080157F0: .4byte 0x04000050
_080157F4: .4byte 0x00FFFFFF
_080157F8: .4byte 0x002000FF
_080157FC:
	ldr r0, [r2]
	ldr r1, _0801588C @ =0xFDFFFFFF
	ands r0, r1
_08015802:
	str r0, [r2]
_08015804:
	adds r6, #1
	cmp r6, #0x43
	ble _080157CC
_0801580A:
	ldr r1, [r4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08015858
_08015814:
	cmp r1, #0
	bge _0801582C
	adds r0, r7, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801582C
	adds r0, r4, #0
	bl sub_8014B84
	cmp r0, #0
	beq _08015858
_0801582C:
	ldrh r0, [r4, #0xc]
	cmp r0, #8
	bhi _08015844
	ldr r0, _08015890 @ =gUnknown_081123F4
	ldrh r1, [r4, #0xc]
	subs r1, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08015844:
	mov r1, sb
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08015858
	ldrh r2, [r4, #0xc]
	cmp r2, #0xff
	bne _08015858
	adds r0, r4, #0
	bl sub_8015C20
_08015858:
	ldr r4, [r4, #8]
	cmp r4, #0
	beq _08015860
	b _08015634
_08015860:
	adds r2, r7, #0
	adds r2, #0x25
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08015878
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	bl sub_8013E40
_08015878:
	bl sub_8015090
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801588C: .4byte 0xFDFFFFFF
_08015890: .4byte gUnknown_081123F4

	thumb_func_start sub_8015894
sub_8015894: @ 0x08015894
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r6, _0801590C @ =gUnknown_08024264
	movs r2, #0xc
	ldrsh r1, [r4, r2]
	adds r1, r1, r6
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r2, [r0, #0x10]
	adds r1, r2, r1
	strh r1, [r0, #0x10]
	ldrh r0, [r4, #0xc]
	cmp r0, #0xf
	bne _080158CE
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	movs r2, #0x6e
	rsbs r2, r2, #0
	movs r3, #0
	str r3, [sp]
	movs r3, #0x50
	bl sub_8014704
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	bl sub_80146F0
_080158CE:
	movs r5, #0
	movs r1, #0
	movs r0, #0xc
	ldrsh r2, [r4, r0]
	cmp r5, r2
	bge _080158EC
	adds r3, r6, #0
_080158DC:
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r5, r0
	adds r1, #1
	cmp r1, r2
	blt _080158DC
_080158EC:
	ldrh r1, [r4, #0xc]
	cmp r1, #0xf
	bne _080158F6
	bl sub_800E8C4
_080158F6:
	movs r2, #0xc
	ldrsh r0, [r4, r2]
	cmp r0, #0xe
	ble _08015914
	ldr r1, _08015910 @ =0xFFFFFE20
	adds r0, r5, r1
	movs r1, #0x80
	movs r2, #1
	bl sub_800E900
	b _08015920
	.align 2, 0
_0801590C: .4byte gUnknown_08024264
_08015910: .4byte 0xFFFFFE20
_08015914:
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #0x80
	movs r2, #1
	bl sub_800E9D4
_08015920:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8015928
sub_8015928: @ 0x08015928
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r6, _080159A4 @ =gUnknown_08024264
	movs r1, #0xc
	ldrsh r2, [r4, r1]
	movs r1, #0x1e
	subs r1, r1, r2
	adds r1, r1, r6
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r2, [r0, #0x10]
	subs r1, r2, r1
	strh r1, [r0, #0x10]
	ldrh r0, [r4, #0xc]
	cmp r0, #0xf
	bne _08015966
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	movs r2, #0xaf
	lsls r2, r2, #1
	movs r3, #0
	str r3, [sp]
	movs r3, #0x50
	bl sub_8014704
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	bl sub_80146F0
_08015966:
	movs r5, #0
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r5, r0
	bge _08015984
	adds r2, r6, #0
	adds r2, #0x1e
	adds r1, r0, #0
_08015976:
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r5, r5, r0
	subs r2, #1
	subs r1, #1
	cmp r1, #0
	bne _08015976
_08015984:
	ldrh r2, [r4, #0xc]
	cmp r2, #0xf
	bne _0801598E
	bl sub_800E8C4
_0801598E:
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0xe
	ble _080159A8
	adds r0, r5, #0
	movs r1, #0x80
	movs r2, #1
	bl sub_800E900
	b _080159B6
	.align 2, 0
_080159A4: .4byte gUnknown_08024264
_080159A8:
	movs r2, #0x88
	lsls r2, r2, #2
	adds r0, r5, r2
	movs r1, #0x80
	movs r2, #1
	bl sub_800E9D4
_080159B6:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80159C0
sub_80159C0: @ 0x080159C0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r3, _08015A38 @ =gUnknown_08024283
	movs r2, #0xc
	ldrsh r1, [r4, r2]
	adds r1, r1, r3
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r2, [r0, #0x10]
	adds r1, r2, r1
	strh r1, [r0, #0x10]
	movs r5, #0
	movs r1, #0
	movs r0, #0xc
	ldrsh r2, [r4, r0]
	cmp r5, r2
	bge _080159F6
_080159E6:
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r5, r0
	adds r1, #1
	cmp r1, r2
	blt _080159E6
_080159F6:
	ldrh r1, [r4, #0xc]
	cmp r1, #0xe
	bne _08015A20
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	movs r2, #0x54
	rsbs r2, r2, #0
	movs r3, #0
	str r3, [sp]
	movs r3, #0x50
	bl sub_8014704
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	bl sub_80146F0
	ldrh r2, [r4, #0xc]
	cmp r2, #0xe
	bne _08015A20
	bl sub_800E7B0
_08015A20:
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0xd
	ble _08015A40
	ldr r2, _08015A3C @ =0xFFFFFEE3
	adds r0, r5, r2
	movs r1, #0x80
	movs r2, #1
	bl sub_800E7EC
	b _08015A4C
	.align 2, 0
_08015A38: .4byte gUnknown_08024283
_08015A3C: .4byte 0xFFFFFEE3
_08015A40:
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #0x80
	movs r2, #1
	bl sub_800E9D4
_08015A4C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8015A54
sub_8015A54: @ 0x08015A54
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r2, _08015AD0 @ =gUnknown_080242A2
	movs r3, #0xc
	ldrsh r1, [r4, r3]
	adds r1, r1, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r2, [r0, #0x10]
	subs r1, r2, r1
	strh r1, [r0, #0x10]
	movs r5, #0
	movs r3, #0xc
	ldrsh r1, [r4, r3]
	movs r0, #0x20
	subs r1, r0, r1
	cmp r5, r1
	bge _08015A90
	ldr r0, _08015AD4 @ =gUnknown_08024283
	adds r2, r0, #0
	adds r2, #0x20
_08015A82:
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r5, r5, r0
	subs r2, #1
	subs r1, #1
	cmp r1, #0
	bne _08015A82
_08015A90:
	ldrh r0, [r4, #0xc]
	cmp r0, #0xe
	bne _08015AB8
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	movs r2, #0
	str r2, [sp]
	movs r2, #0xdc
	movs r3, #0x50
	bl sub_8014704
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	bl sub_80146F0
	ldrh r1, [r4, #0xc]
	cmp r1, #0xe
	bne _08015AB8
	bl sub_800E8C4
_08015AB8:
	movs r2, #0xc
	ldrsh r0, [r4, r2]
	cmp r0, #0xd
	ble _08015AD8
	movs r0, #0x18
	subs r0, r0, r5
	movs r1, #0x80
	movs r2, #1
	bl sub_800E7EC
	b _08015AE6
	.align 2, 0
_08015AD0: .4byte gUnknown_080242A2
_08015AD4: .4byte gUnknown_08024283
_08015AD8:
	movs r0, #0xb5
	lsls r0, r0, #1
	subs r0, r0, r5
	movs r1, #0x80
	movs r2, #1
	bl sub_800E9D4
_08015AE6:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8015AF0
sub_8015AF0: @ 0x08015AF0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r6, _08015B6C @ =gUnknown_08024283
	movs r2, #0xc
	ldrsh r1, [r4, r2]
	adds r1, r1, r6
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r2, [r0, #0x10]
	subs r1, r2, r1
	strh r1, [r0, #0x10]
	ldrh r0, [r4, #0xc]
	cmp r0, #0xe
	bne _08015B2A
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	movs r2, #0xa2
	lsls r2, r2, #1
	movs r3, #0
	str r3, [sp]
	movs r3, #0x50
	bl sub_8014704
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	bl sub_80146F0
_08015B2A:
	movs r5, #0
	movs r1, #0
	movs r0, #0xc
	ldrsh r2, [r4, r0]
	cmp r5, r2
	bge _08015B48
	adds r3, r6, #0
_08015B38:
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r5, r0
	adds r1, #1
	cmp r1, r2
	blt _08015B38
_08015B48:
	ldrh r1, [r4, #0xc]
	cmp r1, #0xe
	bne _08015B52
	bl sub_800E7B0
_08015B52:
	movs r2, #0xc
	ldrsh r0, [r4, r2]
	cmp r0, #0xd
	ble _08015B70
	movs r0, #0xb3
	rsbs r0, r0, #0
	subs r0, r0, r5
	movs r1, #0x80
	movs r2, #1
	bl sub_800E7EC
	b _08015B7A
	.align 2, 0
_08015B6C: .4byte gUnknown_08024283
_08015B70:
	rsbs r0, r5, #0
	movs r1, #0x80
	movs r2, #1
	bl sub_800E900
_08015B7A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8015B84
sub_8015B84: @ 0x08015B84
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r2, _08015C00 @ =gUnknown_080242A2
	movs r3, #0xc
	ldrsh r1, [r4, r3]
	adds r1, r1, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r2, [r0, #0x10]
	adds r1, r2, r1
	strh r1, [r0, #0x10]
	ldrh r3, [r4, #0xc]
	cmp r3, #0xe
	bne _08015BBC
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	movs r2, #0
	str r2, [sp]
	movs r2, #0x14
	movs r3, #0x50
	bl sub_8014704
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	bl sub_80146F0
_08015BBC:
	movs r5, #0
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	movs r0, #0x20
	subs r1, r0, r1
	cmp r5, r1
	bge _08015BDE
	ldr r0, _08015C04 @ =gUnknown_08024283
	adds r2, r0, #0
	adds r2, #0x20
_08015BD0:
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r5, r5, r0
	subs r2, #1
	subs r1, #1
	cmp r1, #0
	bne _08015BD0
_08015BDE:
	ldrh r1, [r4, #0xc]
	cmp r1, #0xe
	bne _08015BE8
	bl sub_800E8C4
_08015BE8:
	movs r2, #0xc
	ldrsh r0, [r4, r2]
	cmp r0, #0xd
	ble _08015C08
	adds r0, r5, #0
	adds r0, #0x18
	movs r1, #0x80
	movs r2, #1
	bl sub_800E7EC
	b _08015C14
	.align 2, 0
_08015C00: .4byte gUnknown_080242A2
_08015C04: .4byte gUnknown_08024283
_08015C08:
	ldr r3, _08015C1C @ =0xFFFFFEB6
	adds r0, r5, r3
	movs r1, #0x80
	movs r2, #1
	bl sub_800E900
_08015C14:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08015C1C: .4byte 0xFFFFFEB6

	thumb_func_start sub_8015C20
sub_8015C20: @ 0x08015C20
	push {lr}
	ldr r1, _08015C38 @ =gCourtScroll
	ldr r0, _08015C3C @ =gUnknown_08112414
	ldrb r3, [r1, #6]
	lsls r2, r3, #2
	adds r2, r2, r0
	ldr r0, _08015C40 @ =gUnknown_03000844
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_08015C38: .4byte gCourtScroll
_08015C3C: .4byte gUnknown_08112414
_08015C40: .4byte gUnknown_03000844

	thumb_func_start sub_8015C44
sub_8015C44: @ 0x08015C44
	push {r4, r5, lr}
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r2, _08015C68 @ =gCourtScroll
	lsls r3, r0, #1
	strb r3, [r2, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08015C5C
	adds r0, r3, #1
	strb r0, [r2, #6]
_08015C5C:
	strh r4, [r2, #8]
	strh r5, [r2, #0xa]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08015C68: .4byte gCourtScroll

	thumb_func_start sub_8015C6C
sub_8015C6C: @ 0x08015C6C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Random
	movs r1, #3
	ands r1, r0
	adds r5, r1, #1
	bl Random
	movs r1, #7
	ands r1, r0
	subs r1, #4
	adds r3, r4, #0
	adds r3, #0x2b
	ldrb r0, [r3]
	cmp r0, #0
	bne _08015C92
	ldrh r0, [r4, #0x10]
	strh r0, [r4, #0x2e]
_08015C92:
	ldrb r2, [r3]
	adds r2, #1
	strb r2, [r3]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bhi _08015CD2
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _08015CAE
	ldrh r2, [r4, #0x2e]
	adds r0, r2, r5
	b _08015CB2
_08015CAE:
	ldrh r2, [r4, #0x2e]
	subs r0, r2, r5
_08015CB2:
	strh r0, [r4, #0x10]
	ldrh r2, [r4, #0x12]
	adds r0, r2, r1
	strh r0, [r4, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5a
	ble _08015CC8
	movs r0, #0x5a
	strh r0, [r4, #0x12]
	b _08015CD6
_08015CC8:
	cmp r0, #0x45
	bgt _08015CD6
	movs r0, #0x46
	strh r0, [r4, #0x12]
	b _08015CD6
_08015CD2:
	movs r0, #0x28
	strb r0, [r3]
_08015CD6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start nullsub_16
nullsub_16: @ 0x08015CDC
	bx lr
	.align 2, 0

	thumb_func_start sub_8015CE0
sub_8015CE0: @ 0x08015CE0
	push {lr}
	strh r1, [r0, #2]
	strh r2, [r0]
	strh r3, [r0, #4]
	bl sub_8015F54
	pop {r0}
	bx r0

	thumb_func_start sub_8015CF0
sub_8015CF0: @ 0x08015CF0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov sb, r1
	mov r8, r2
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08015D58 @ =0x040000D4
	str r1, [r0]
	str r5, [r0, #4]
	ldr r1, _08015D5C @ =0x810000C6
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	mov r0, sb
	movs r1, #0xa
	bl __modsi3
	ldr r4, _08015D60 @ =gUnknown_0203A500
	cmp r0, #4
	bgt _08015D22
	ldr r4, _08015D64 @ =gUnknown_02036500
_08015D22:
	ldr r0, _08015D68 @ =gUnknown_081124D0
	mov r2, sb
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r1, r4, #0
	bl LZ77UnCompWram
	str r4, [r5, #8]
	adds r4, #8
	movs r2, #0
	ldr r0, [r5, #8]
	ldrh r3, [r0, #6]
	cmp r2, r3
	bge _08015D50
	adds r1, r5, #0
	adds r1, #0xc
_08015D44:
	stm r1!, {r4}
	adds r4, #8
	adds r2, #1
	ldrh r7, [r0, #6]
	cmp r2, r7
	blt _08015D44
_08015D50:
	movs r2, #0
	ldr r0, [r5, #8]
	adds r6, r0, #0
	b _08015D9C
	.align 2, 0
_08015D58: .4byte 0x040000D4
_08015D5C: .4byte 0x810000C6
_08015D60: .4byte gUnknown_0203A500
_08015D64: .4byte gUnknown_02036500
_08015D68: .4byte gUnknown_081124D0
_08015D6C:
	lsls r1, r2, #2
	adds r0, r5, #0
	adds r0, #0xcc
	adds r0, r0, r1
	str r4, [r0]
	ldm r4!, {r0}
	adds r1, r2, #1
	cmp r0, #0
	ble _08015D9A
	movs r3, #0xf0
	lsls r3, r3, #8
	adds r2, r0, #0
_08015D84:
	adds r0, r3, #0
	ldrh r7, [r4, #6]
	ands r0, r7
	cmp r0, #0
	bne _08015D92
	adds r4, #0x14
	b _08015D94
_08015D92:
	adds r4, #0x10
_08015D94:
	subs r2, #1
	cmp r2, #0
	bne _08015D84
_08015D9A:
	adds r2, r1, #0
_08015D9C:
	ldrh r0, [r6, #4]
	cmp r2, r0
	blt _08015D6C
	adds r0, r5, #0
	mov r1, sb
	mov r2, r8
	movs r3, #0
	bl sub_8015CE0
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8015DBC
sub_8015DBC: @ 0x08015DBC
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #6]
	adds r0, #1
	strh r0, [r4, #6]
	movs r0, #4
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #8]
	ldrh r0, [r0, #6]
	subs r0, #1
	cmp r1, r0
	bge _08015DF0
	ldr r0, _08015DF8 @ =gMain
	ldr r0, [r0]
	movs r1, #3
	bl __umodsi3
	cmp r0, #0
	bne _08015DF0
	strh r0, [r4, #6]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8015F54
_08015DF0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08015DF8: .4byte gMain

	thumb_func_start sub_8015DFC
sub_8015DFC: @ 0x08015DFC
	push {r4, lr}
	sub sp, #4
	mov r0, sp
	movs r2, #0
	strh r2, [r0]
	ldr r0, _08015E6C @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _08015E70 @ =gUnknown_03002FA0
	str r1, [r0, #4]
	ldr r3, _08015E74 @ =0x81000400
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r2, [r1]
	str r1, [r0]
	ldr r1, _08015E78 @ =gUnknown_03001080
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r2, [r1]
	str r1, [r0]
	ldr r3, _08015E7C @ =0x06004000
	str r3, [r0, #4]
	ldr r1, _08015E80 @ =0x81002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r2, [r1]
	str r1, [r0]
	ldr r1, _08015E84 @ =0x05000040
	str r1, [r0, #4]
	ldr r1, _08015E88 @ =0x810000E0
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	mov r2, sp
	ldr r4, _08015E8C @ =0x00002222
	adds r1, r4, #0
	strh r1, [r2]
	str r2, [r0]
	str r3, [r0, #4]
	ldr r1, _08015E90 @ =0x81004B00
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r1, _08015E94 @ =gIORegisters
	movs r0, #0xf0
	lsls r0, r0, #6
	strh r0, [r1]
	ldr r0, _08015E98 @ =0x00003FC7
	strh r0, [r1, #6]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08015E6C: .4byte 0x040000D4
_08015E70: .4byte gUnknown_03002FA0
_08015E74: .4byte 0x81000400
_08015E78: .4byte gUnknown_03001080
_08015E7C: .4byte 0x06004000
_08015E80: .4byte 0x81002000
_08015E84: .4byte 0x05000040
_08015E88: .4byte 0x810000E0
_08015E8C: .4byte 0x00002222
_08015E90: .4byte 0x81004B00
_08015E94: .4byte gIORegisters
_08015E98: .4byte 0x00003FC7

	thumb_func_start sub_8015E9C
sub_8015E9C: @ 0x08015E9C
	movs r2, #4
	ldrsh r1, [r0, r2]
	ldr r0, [r0, #8]
	ldrh r0, [r0, #6]
	subs r0, #1
	cmp r1, r0
	bge _08015EAE
	movs r0, #0
	b _08015EB0
_08015EAE:
	movs r0, #1
_08015EB0:
	bx lr
	.align 2, 0

	thumb_func_start sub_8015EB4
sub_8015EB4: @ 0x08015EB4
	push {r4, lr}
	sub sp, #4
	ldr r1, _08015F1C @ =gMain
	movs r2, #0
	movs r0, #0x7f
	strh r0, [r1, #0x30]
	ldr r1, _08015F20 @ =gIORegisters
	ldr r0, _08015F24 @ =0x00003C47
	strh r0, [r1]
	ldr r0, _08015F28 @ =0x00003F46
	strh r0, [r1, #6]
	mov r0, sp
	strh r2, [r0]
	ldr r4, _08015F2C @ =0x040000D4
	str r0, [r4]
	ldr r0, _08015F30 @ =0x0600E000
	str r0, [r4, #4]
	ldr r1, _08015F34 @ =0x81000400
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	mov r0, sp
	strh r2, [r0]
	str r0, [r4]
	ldr r0, _08015F38 @ =0x0600F800
	str r0, [r4, #4]
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	bl m4aSoundVSyncOff
	ldr r0, _08015F3C @ =gUnknown_0814777C
	ldr r1, _08015F40 @ =0x06004000
	bl LZ77UnCompVram
	bl m4aSoundVSyncOn
	ldr r1, _08015F44 @ =gUnknown_0811242C
	str r1, [r4]
	ldr r0, _08015F48 @ =0x050001C0
	str r0, [r4, #4]
	ldr r2, _08015F4C @ =0x80000010
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	adds r1, #0x20
	str r1, [r4]
	ldr r0, _08015F50 @ =0x050001E0
	str r0, [r4, #4]
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08015F1C: .4byte gMain
_08015F20: .4byte gIORegisters
_08015F24: .4byte 0x00003C47
_08015F28: .4byte 0x00003F46
_08015F2C: .4byte 0x040000D4
_08015F30: .4byte 0x0600E000
_08015F34: .4byte 0x81000400
_08015F38: .4byte 0x0600F800
_08015F3C: .4byte gUnknown_0814777C
_08015F40: .4byte 0x06004000
_08015F44: .4byte gUnknown_0811242C
_08015F48: .4byte 0x050001C0
_08015F4C: .4byte 0x80000010
_08015F50: .4byte 0x050001E0

	thumb_func_start sub_8015F54
sub_8015F54: @ 0x08015F54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r2, r0, #0
	movs r0, #4
	ldrsh r1, [r2, r0]
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	lsls r1, r0, #2
	adds r0, r2, #0
	adds r0, #0xcc
	adds r0, r0, r1
	ldr r0, [r0]
	mov sb, r0
	mov r1, sb
	adds r1, #4
	mov sb, r1
	subs r1, #4
	ldm r1!, {r0}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r3, #0
	str r3, [sp, #8]
	movs r6, #0
	str r6, [sp, #4]
	movs r7, #0xe
	str r7, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #1
	beq _08015FCC
	cmp r0, #1
	bgt _08015FAE
	cmp r0, #0
	beq _08015FB4
	b _08015FE4
_08015FAE:
	cmp r0, #2
	beq _08015FD8
	b _08015FE4
_08015FB4:
	ldr r6, _08015FC4 @ =0x0000FFF8
	str r6, [sp, #4]
	ldr r7, _08015FC8 @ =gUnknown_03002FA0
	str r7, [sp]
	movs r0, #1
	str r0, [sp, #0x10]
	b _08015FF0
	.align 2, 0
_08015FC4: .4byte 0x0000FFF8
_08015FC8: .4byte gUnknown_03002FA0
_08015FCC:
	ldr r2, _08015FD4 @ =gUnknown_03002080
	str r2, [sp]
	b _08015FF0
	.align 2, 0
_08015FD4: .4byte gUnknown_03002080
_08015FD8:
	ldr r3, _08015FE0 @ =gUnknown_03000000
	str r3, [sp]
	b _08015FF0
	.align 2, 0
_08015FE0: .4byte gUnknown_03000000
_08015FE4:
	movs r6, #8
	str r6, [sp, #8]
	ldr r7, _08016054 @ =gUnknown_03001080
	str r7, [sp]
	movs r0, #0xf
	str r0, [sp, #0xc]
_08015FF0:
	ldr r2, [sp, #0x10]
	rsbs r0, r2, #0
	orrs r0, r2
	asrs r2, r0, #0x1f
	movs r0, #0x80
	lsls r0, r0, #1
	ands r2, r0
	movs r3, #0
	lsls r1, r1, #0x10
	str r1, [sp, #0x14]
	ldr r4, _08016058 @ =0x000003FF
_08016006:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	ldr r3, [sp]
	adds r0, r0, r3
	strh r2, [r0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, r4
	ble _08016006
	movs r3, #0
	ldr r6, [sp, #0x14]
	cmp r6, #0
	ble _08016114
_08016026:
	mov ip, sb
	movs r0, #0xf0
	lsls r0, r0, #8
	mov r7, ip
	ldrh r7, [r7, #6]
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r2, #0x10
	add r2, ip
	mov sb, r2
	cmp r1, #0
	bne _08016046
	movs r6, #0x14
	add r6, ip
	mov sb, r6
_08016046:
	cmp r1, #0
	beq _0801605C
	lsrs r0, r0, #0x19
	str r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	b _08016068
	.align 2, 0
_08016054: .4byte gUnknown_03001080
_08016058: .4byte 0x000003FF
_0801605C:
	mov r7, ip
	ldrh r7, [r7, #8]
	str r7, [sp, #0x18]
	mov r0, ip
	ldrh r0, [r0, #0xa]
	str r0, [sp, #0x1c]
_08016068:
	movs r5, #0
	lsls r3, r3, #0x10
	mov sl, r3
	b _080160FE
_08016070:
	movs r4, #0
	adds r1, r5, #1
	mov r8, r1
	b _080160F4
_08016078:
	mov r2, ip
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _08016084
	adds r0, #7
_08016084:
	asrs r0, r0, #3
	adds r2, r0, r4
	mov r3, ip
	movs r0, #1
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bge _08016094
	adds r0, #7
_08016094:
	asrs r0, r0, #3
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r6, [sp, #0x10]
	cmp r6, #0
	beq _080160B0
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r3, r7
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080160B0:
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0xc
	orrs r3, r0
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r6, ip
	ldrb r6, [r6, #2]
	adds r0, r6, r0
	cmp r0, #0
	bge _080160C8
	adds r0, #7
_080160C8:
	asrs r0, r0, #3
	adds r1, r0, r4
	ldr r7, [sp, #8]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	mov r6, ip
	ldrb r6, [r6, #3]
	adds r2, r6, r0
	adds r0, r2, #0
	subs r0, #0x30
	cmp r0, #0
	bge _080160E2
	adds r0, #7
_080160E2:
	asrs r0, r0, #3
	adds r0, r0, r5
	lsls r0, r0, #5
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r7, [sp]
	adds r0, r0, r7
	strh r3, [r0]
	adds r4, #1
_080160F4:
	ldr r0, [sp, #0x18]
	asrs r0, r0, #3
	cmp r4, r0
	blt _08016078
	mov r5, r8
_080160FE:
	ldr r0, [sp, #0x1c]
	asrs r0, r0, #3
	cmp r5, r0
	blt _08016070
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sl
	lsrs r3, r0, #0x10
	ldr r1, [sp, #0x14]
	cmp r0, r1
	blt _08016026
_08016114:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8016124
sub_8016124: @ 0x08016124
	sub sp, #4
	movs r1, #0
	str r1, [sp]
	ldr r2, _08016144 @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	ldr r3, _08016148 @ =gUnknown_03006050
	str r3, [r2, #4]
	ldr r1, _0801614C @ =0x850000CF
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	strh r0, [r3]
	strh r0, [r3, #2]
	add sp, #4
	bx lr
	.align 2, 0
_08016144: .4byte 0x040000D4
_08016148: .4byte gUnknown_03006050
_0801614C: .4byte 0x850000CF

	thumb_func_start sub_8016150
sub_8016150: @ 0x08016150
	push {r4, lr}
	movs r4, #0
	movs r0, #0x3d
	bl sub_8013EB0
	cmp r0, #0
	beq _0801616A
	movs r0, #0x3d
	bl sub_8013EB0
	bl sub_8014F94
	movs r4, #1
_0801616A:
	movs r0, #0x3e
	bl sub_8013EB0
	cmp r0, #0
	beq _08016180
	movs r0, #0x3e
	bl sub_8013EB0
	bl sub_8014F94
	movs r4, #1
_08016180:
	movs r0, #0x3f
	bl sub_8013EB0
	cmp r0, #0
	beq _08016196
	movs r0, #0x3f
	bl sub_8013EB0
	bl sub_8014F94
	movs r4, #1
_08016196:
	cmp r4, #0
	beq _080161A0
	movs r0, #0x40
	bl sub_801480C
_080161A0:
	ldr r0, _080161B0 @ =gUnknown_03006050
	movs r2, #0
	movs r1, #1
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080161B0: .4byte gUnknown_03006050

	thumb_func_start sub_80161B4
sub_80161B4: @ 0x080161B4
	ldr r0, _080161C0 @ =gUnknown_03006050
	movs r2, #0
	movs r1, #4
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
_080161C0: .4byte gUnknown_03006050

	thumb_func_start sub_80161C4
sub_80161C4: @ 0x080161C4
	ldr r0, _080161D0 @ =gUnknown_03006050
	movs r2, #0
	movs r1, #5
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
_080161D0: .4byte gUnknown_03006050

	thumb_func_start sub_80161D4
sub_80161D4: @ 0x080161D4
	ldr r0, _080161E0 @ =gUnknown_03006050
	movs r2, #0
	movs r1, #6
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
_080161E0: .4byte gUnknown_03006050

	thumb_func_start sub_80161E4
sub_80161E4: @ 0x080161E4
	ldr r0, _080161F0 @ =gUnknown_03006050
	movs r2, #0
	movs r1, #7
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
_080161F0: .4byte gUnknown_03006050

	thumb_func_start sub_80161F4
sub_80161F4: @ 0x080161F4
	ldr r0, _08016200 @ =gUnknown_03006050
	movs r2, #0
	movs r1, #8
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
_08016200: .4byte gUnknown_03006050

	thumb_func_start sub_8016204
sub_8016204: @ 0x08016204
	ldr r0, _08016210 @ =gUnknown_03006050
	movs r2, #0
	movs r1, #9
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
_08016210: .4byte gUnknown_03006050

	thumb_func_start sub_8016214
sub_8016214: @ 0x08016214
	ldr r0, _08016224 @ =gUnknown_03006050
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08016228
	movs r0, #0
	b _0801622A
	.align 2, 0
_08016224: .4byte gUnknown_03006050
_08016228:
	movs r0, #1
_0801622A:
	bx lr

	thumb_func_start sub_801622C
sub_801622C: @ 0x0801622C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x30
	mov r1, sp
	ldr r0, _08016258 @ =gUnknown_080242C4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r1, _0801625C @ =gUnknown_03006050
	movs r4, #4
	ldrsh r0, [r1, r4]
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	mov r8, r1
	mov pc, r0
	.align 2, 0
_08016258: .4byte gUnknown_080242C4
_0801625C: .4byte gUnknown_03006050
_08016260:
	.byte 0x00, 0xF0, 0x03, 0xFD, 0x40, 0x20, 0xFD, 0xF7, 0x23, 0xFE, 0x00, 0x28, 0x0C, 0xD0, 0x40, 0x20
	.byte 0xFD, 0xF7, 0x1E, 0xFE, 0x00, 0x68, 0x00, 0x28, 0x01, 0xDA, 0x00, 0xF0, 0xF6, 0xFC, 0x40, 0x20
	.byte 0xFD, 0xF7, 0x16, 0xFE, 0xFE, 0xF7, 0x86, 0xFE, 0x05, 0x48, 0x06, 0x21, 0x42, 0x5E, 0x80, 0x46
	.byte 0x01, 0x2A, 0x36, 0xD0, 0x01, 0x2A, 0x05, 0xDC, 0x00, 0x2A, 0x06, 0xD0, 0x8B, 0xE0, 0x00, 0x00
	.byte 0x50, 0x60, 0x00, 0x03, 0x02, 0x2A, 0x4D, 0xD0, 0x85, 0xE0, 0x7A, 0x20, 0xFD, 0xF7, 0xC2, 0xFA
	.byte 0x22, 0x49, 0x7F, 0x20, 0x08, 0x86, 0x21, 0x26, 0x1F, 0x27, 0x1F, 0x25, 0x73, 0x00, 0xA0, 0x22
	.byte 0xD2, 0x04, 0x9B, 0x18, 0x1C, 0x88, 0x20, 0x04, 0x41, 0x0D, 0x39, 0x40, 0x80, 0x0E, 0x38, 0x40
	.byte 0x2A, 0x1C, 0xA2, 0x43, 0x2C, 0x1C, 0x8C, 0x43, 0x21, 0x1C, 0x2C, 0x1C, 0x84, 0x43, 0x20, 0x1C
	.byte 0x80, 0x02, 0x49, 0x01, 0x08, 0x43, 0x10, 0x43, 0x18, 0x80, 0x01, 0x36, 0xFF, 0x2E, 0xE5, 0xDD
	.byte 0x13, 0x49, 0x00, 0x22, 0xFF, 0x20, 0x48, 0x81, 0x8A, 0x81, 0xC8, 0x88, 0x01, 0x30, 0xC8, 0x80
	.byte 0x88, 0x46, 0x41, 0x46, 0x48, 0x89, 0x41, 0x1C, 0x42, 0x46, 0x51, 0x81, 0x00, 0x04, 0x00, 0x14
	.byte 0x46, 0x28, 0x01, 0xDC, 0x00, 0xF0, 0xA9, 0xFC, 0x00, 0x20, 0x50, 0x81, 0x90, 0x89, 0x01, 0x30
	.byte 0x90, 0x81, 0x00, 0x04, 0x00, 0x14, 0x01, 0x28, 0x00, 0xDD, 0xAC, 0xE3, 0x03, 0x20, 0x01, 0x21
	.byte 0x04, 0x22, 0x1F, 0x23, 0xEA, 0xF7, 0x92, 0xFA, 0x00, 0xF0, 0x97, 0xFC, 0xB0, 0x37, 0x00, 0x03
	.byte 0x50, 0x60, 0x00, 0x03, 0x21, 0x26, 0x1F, 0x27, 0x70, 0x00, 0xA0, 0x23, 0xDB, 0x04, 0xC5, 0x18
	.byte 0x2B, 0x88, 0x1F, 0x22, 0x19, 0x04, 0x48, 0x0D, 0x89, 0x0E, 0x1A, 0x40, 0x01, 0x3A, 0x12, 0x04
	.byte 0x38, 0x40, 0x01, 0x38, 0x00, 0x04, 0x03, 0x0C, 0x39, 0x40, 0x01, 0x39, 0x09, 0x04, 0x0C, 0x0C
	.byte 0x11, 0x0C, 0x00, 0x2A, 0x00, 0xDA, 0x00, 0x21, 0x18, 0x04, 0x00, 0x28, 0x00, 0xDA, 0x00, 0x23
	.byte 0x20, 0x04, 0x00, 0x28, 0x00, 0xDA, 0x00, 0x24, 0x18, 0x04, 0xC0, 0x12, 0x09, 0x04, 0x09, 0x14
	.byte 0x01, 0x43, 0x20, 0x04, 0x80, 0x11, 0x01, 0x43, 0x29, 0x80, 0x01, 0x36, 0xFF, 0x2E, 0xD3, 0xDD
	.byte 0x44, 0x46, 0x60, 0x89, 0x41, 0x1C, 0x61, 0x81, 0x00, 0x04, 0x00, 0x14, 0x20, 0x28, 0x01, 0xDC
	.byte 0x00, 0xF0, 0x5B, 0xFC, 0xDE, 0xE2, 0x41, 0x46, 0x88, 0x88, 0x01, 0x30, 0x00, 0x21, 0x42, 0x46
	.byte 0x64, 0xE0, 0x05, 0x4C, 0x06, 0x23, 0xE0, 0x5E, 0x01, 0x28, 0x28, 0xD0, 0x01, 0x28, 0x05, 0xDC
	.byte 0x00, 0x28, 0x09, 0xD0, 0x00, 0xF0, 0x49, 0xFC, 0x50, 0x60, 0x00, 0x03, 0x02, 0x28, 0x3D, 0xD0
	.byte 0x03, 0x28, 0x46, 0xD0, 0x00, 0xF0, 0x41, 0xFC, 0xFF, 0xF7, 0x64, 0xFD, 0x20, 0x1C, 0x10, 0x30
	.byte 0x00, 0x22, 0xA1, 0x5E, 0x01, 0x39, 0x03, 0x22, 0xFF, 0xF7, 0x7A, 0xFC, 0xCE, 0x23, 0x5B, 0x00
	.byte 0xE0, 0x18, 0x00, 0x22, 0xA1, 0x5E, 0x04, 0x31, 0x00, 0x22, 0xFF, 0xF7, 0x71, 0xFC, 0x00, 0x23
	.byte 0xE0, 0x5E, 0x7F, 0x30, 0xFD, 0xF7, 0x0E, 0xFA, 0xE0, 0x88, 0x01, 0x30, 0xE0, 0x80, 0x0E, 0x4C
	.byte 0x20, 0x1C, 0xFF, 0xF7, 0xCB, 0xFC, 0xC6, 0x20, 0x40, 0x00, 0x25, 0x18, 0x28, 0x1C, 0xFF, 0xF7
	.byte 0xC5, 0xFC, 0x20, 0x1C, 0xFF, 0xF7, 0x32, 0xFD, 0x00, 0x28, 0x00, 0xD1, 0x6D, 0xE2, 0x28, 0x1C
	.byte 0xFF, 0xF7, 0x2C, 0xFD, 0x00, 0x28, 0x00, 0xD1, 0x67, 0xE2, 0x21, 0x1C, 0x10, 0x39, 0xC8, 0x88
	.byte 0x01, 0x30, 0xC8, 0x80, 0x61, 0xE2, 0x00, 0x00, 0x60, 0x60, 0x00, 0x03, 0x00, 0x21, 0x60, 0x5E
	.byte 0x7F, 0x30, 0x3C, 0x21, 0xFD, 0xF7, 0x24, 0xFA, 0x00, 0x20, 0x60, 0x81, 0xE0, 0x88, 0x01, 0x30
	.byte 0xE0, 0x80, 0x08, 0x4A, 0x50, 0x89, 0x41, 0x1C, 0x51, 0x81, 0x00, 0x04, 0x00, 0x14, 0x1D, 0x28
	.byte 0x01, 0xDC, 0x00, 0xF0, 0xF2, 0xFB, 0x90, 0x88, 0x01, 0x30, 0x00, 0x21, 0x90, 0x80, 0xD1, 0x80
	.byte 0x00, 0xF0, 0xEB, 0xFB, 0x50, 0x60, 0x00, 0x03, 0x06, 0x48, 0x06, 0x23, 0xC2, 0x5E, 0x80, 0x46
	.byte 0x05, 0x2A, 0x01, 0xD9, 0x00, 0xF0, 0xE1, 0xFB, 0x90, 0x00, 0x03, 0x49, 0x40, 0x18, 0x00, 0x68
	.byte 0x87, 0x46, 0x00, 0x00, 0x50, 0x60, 0x00, 0x03, 0xBC, 0x64, 0x01, 0x08, 0xD4, 0x64, 0x01, 0x08
	.byte 0x44, 0x65, 0x01, 0x08, 0x10, 0x66, 0x01, 0x08, 0x40, 0x66, 0x01, 0x08, 0x62, 0x66, 0x01, 0x08
	.byte 0x96, 0x69, 0x01, 0x08, 0x00, 0x26, 0x44, 0x46, 0x00, 0x21, 0x60, 0x5E, 0x86, 0x42, 0x2A, 0xDA
	.byte 0x2F, 0x4D, 0x00, 0x22, 0xA1, 0x5E, 0x01, 0x39, 0x88, 0x00, 0x40, 0x18, 0x30, 0x18, 0x41, 0x00
	.byte 0x4A, 0x1C, 0x48, 0x00, 0x40, 0x19, 0x00, 0x23, 0xC0, 0x5E, 0x01, 0x1C, 0x20, 0x31, 0x50, 0x00
	.byte 0x40, 0x19, 0x00, 0x22, 0x80, 0x5E, 0x02, 0x1C, 0x10, 0x32, 0x30, 0x1C, 0x28, 0x30, 0xFE, 0xF7
	.byte 0x9D, 0xF9, 0xB1, 0x00, 0xCA, 0x23, 0x9B, 0x00, 0xE2, 0x18, 0x89, 0x18, 0x08, 0x60, 0x02, 0x68
	.byte 0x80, 0x21, 0x49, 0x00, 0x0A, 0x43, 0x1F, 0x49, 0x0A, 0x40, 0x02, 0x60, 0x01, 0x36, 0x00, 0x21
	.byte 0x60, 0x5E, 0x86, 0x42, 0xD5, 0xDB, 0x1C, 0x48, 0x00, 0x21, 0x41, 0x81, 0xC1, 0x88, 0x01, 0x31
	.byte 0xC1, 0x80, 0x80, 0x46, 0x42, 0x46, 0x50, 0x89, 0x01, 0x30, 0x50, 0x81, 0x00, 0x26, 0x00, 0x23
	.byte 0xD0, 0x5E, 0x86, 0x42, 0x39, 0xDA, 0xF1, 0x00, 0x44, 0x46, 0x0A, 0x22, 0xA0, 0x5E, 0x45, 0x1A
	.byte 0x00, 0x2D, 0x2B, 0xDD, 0xB1, 0x00, 0xCA, 0x20, 0x80, 0x00, 0x40, 0x44, 0x0C, 0x18, 0x22, 0x68
	.byte 0x10, 0x68, 0x80, 0x21, 0x89, 0x05, 0x08, 0x43, 0x10, 0x60, 0x08, 0x2D, 0x02, 0xD1, 0x73, 0x20
	.byte 0xFD, 0xF7, 0x58, 0xF9, 0x07, 0x2D, 0x11, 0xDC, 0x20, 0x68, 0x31, 0x1C, 0x0A, 0x31, 0x08, 0x22
	.byte 0x52, 0x1B, 0x52, 0x01, 0x80, 0x23, 0x5B, 0x00, 0xD2, 0x18, 0xFD, 0xF7, 0x6B, 0xFD, 0x0D, 0xE0
	.byte 0x6C, 0x24, 0x11, 0x08, 0xFF, 0xFF, 0xFF, 0xDF, 0x50, 0x60, 0x00, 0x03, 0x20, 0x68, 0xFD, 0xF7
	.byte 0xB9, 0xFD, 0x22, 0x68, 0x10, 0x68, 0x14, 0x49, 0x08, 0x40, 0x10, 0x60, 0x01, 0x36, 0x13, 0x48
	.byte 0x00, 0x24, 0x01, 0x5F, 0x80, 0x46, 0x8E, 0x42, 0xC5, 0xDB, 0x40, 0x46, 0x0A, 0x22, 0x81, 0x5E
	.byte 0x00, 0x23, 0xC2, 0x5E, 0xD0, 0x00, 0x81, 0x42, 0x00, 0xDC, 0x46, 0xE3, 0x00, 0x26, 0x96, 0x42
	.byte 0x0B, 0xDA, 0x44, 0x46, 0xCA, 0x20, 0x80, 0x00, 0x25, 0x18, 0x01, 0xCD, 0xFD, 0xF7, 0x9A, 0xFD
	.byte 0x01, 0x36, 0x00, 0x21, 0x60, 0x5E, 0x86, 0x42, 0xF7, 0xDB, 0x04, 0x48, 0x00, 0x21, 0x41, 0x81
	.byte 0xC1, 0x88, 0x01, 0x31, 0xC1, 0x80, 0x30, 0xE3, 0xFF, 0xFE, 0xFF, 0xFF, 0x50, 0x60, 0x00, 0x03
	.byte 0x0A, 0x4A, 0x13, 0x1C, 0xDC, 0x33, 0x18, 0x68, 0x01, 0x21, 0x08, 0x43, 0x18, 0x60, 0x02, 0x21
	.byte 0x02, 0x20, 0x90, 0x82, 0x91, 0x75, 0x42, 0x46, 0x50, 0x89, 0x41, 0x1C, 0x51, 0x81, 0x00, 0x04
	.byte 0x00, 0x14, 0x14, 0x28, 0x00, 0xDC, 0x18, 0xE3, 0x87, 0xE1, 0x00, 0x00, 0xB0, 0x37, 0x00, 0x03
	.byte 0x44, 0x46, 0x60, 0x89, 0x41, 0x1C, 0x61, 0x81, 0x00, 0x04, 0x00, 0x14, 0x0A, 0x28, 0x00, 0xDC
	.byte 0x0B, 0xE3, 0x03, 0x20, 0x00, 0x21, 0x00, 0x22, 0x1F, 0x23, 0xEA, 0xF7, 0xFF, 0xF8, 0x00, 0x20
	.byte 0x87, 0xE1, 0x41, 0x46, 0x48, 0x89, 0x41, 0x1C, 0x42, 0x46, 0x51, 0x81, 0x00, 0x04, 0x00, 0x14
	.byte 0x28, 0x28, 0x00, 0xDC, 0xF9, 0xE2, 0x00, 0x20, 0x50, 0x81, 0x04, 0xE2, 0x04, 0x4D, 0x06, 0x24
	.byte 0x2F, 0x5F, 0x01, 0x2F, 0x52, 0xD0, 0x01, 0x2F, 0x04, 0xDC, 0x00, 0x2F, 0x05, 0xD0, 0xEC, 0xE2
	.byte 0x50, 0x60, 0x00, 0x03, 0x02, 0x2F, 0x5D, 0xD0, 0xE7, 0xE2, 0x68, 0x88, 0x01, 0x38, 0x68, 0x80
	.byte 0x74, 0x20, 0xFD, 0xF7, 0xC7, 0xF8, 0x02, 0x21, 0x68, 0x5E, 0x80, 0x00, 0xCA, 0x22, 0x92, 0x00
	.byte 0xAC, 0x18, 0x00, 0x19, 0x00, 0x68, 0xFE, 0xF7, 0x6D, 0xFC, 0x00, 0x23, 0xE8, 0x5E, 0x01, 0x38
	.byte 0x81, 0x00, 0x09, 0x18, 0x02, 0x22, 0xA8, 0x5E, 0x41, 0x18, 0x4B, 0x00, 0x5E, 0x1C, 0x15, 0x4A
	.byte 0x59, 0x00, 0x89, 0x18, 0x00, 0x23, 0xC9, 0x5E, 0x0B, 0x1C, 0x20, 0x33, 0x71, 0x00, 0x89, 0x18
	.byte 0x00, 0x22, 0x89, 0x5E, 0x0E, 0x1C, 0x10, 0x36, 0x32, 0x30, 0x19, 0x1C, 0x32, 0x1C, 0xFE, 0xF7
	.byte 0xAD, 0xF8, 0x02, 0x23, 0xE9, 0x5E, 0x89, 0x00, 0x09, 0x19, 0x08, 0x60, 0x0A, 0x4A, 0x13, 0x1C
	.byte 0xDC, 0x33, 0x18, 0x68, 0x01, 0x21, 0x08, 0x43, 0x18, 0x60, 0x02, 0x21, 0x02, 0x20, 0x90, 0x82
	.byte 0x91, 0x75, 0x04, 0x20, 0x00, 0x21, 0x00, 0x22, 0x1F, 0x23, 0xEA, 0xF7, 0x9F, 0xF8, 0x6F, 0x81
	.byte 0x14, 0xE0, 0x00, 0x00, 0x6C, 0x24, 0x11, 0x08, 0xB0, 0x37, 0x00, 0x03, 0x68, 0x89, 0x41, 0x1C
	.byte 0x69, 0x81, 0x00, 0x04, 0x00, 0x14, 0x02, 0x28, 0x00, 0xDC, 0x96, 0xE2, 0x03, 0x20, 0x00, 0x21
	.byte 0x00, 0x22, 0x1F, 0x23, 0xEA, 0xF7, 0x8A, 0xF8, 0x00, 0x20, 0x68, 0x81, 0xE8, 0x88, 0x01, 0x30
	.byte 0xE8, 0x80, 0x8A, 0xE2, 0x68, 0x89, 0x41, 0x1C, 0x69, 0x81, 0x00, 0x04, 0x00, 0x14, 0x3C, 0x28
	.byte 0x00, 0xDC, 0x82, 0xE2, 0x02, 0x24, 0x28, 0x5F, 0x80, 0x00, 0xCA, 0x21, 0x89, 0x00, 0x6C, 0x18
	.byte 0x00, 0x19, 0x00, 0x68, 0xFE, 0xF7, 0x0E, 0xFC, 0x02, 0x22, 0xA8, 0x5E, 0x80, 0x00, 0x00, 0x19
	.byte 0x00, 0x21, 0x01, 0x60, 0xA9, 0x80, 0xE9, 0x80, 0x6F, 0xE2, 0x06, 0x48, 0x06, 0x24, 0x03, 0x5F
	.byte 0x80, 0x46, 0x09, 0x2B, 0x00, 0xD9, 0xFE, 0xE0, 0x98, 0x00, 0x03, 0x49, 0x40, 0x18, 0x00, 0x68
	.byte 0x87, 0x46, 0x00, 0x00, 0x50, 0x60, 0x00, 0x03, 0xAC, 0x67, 0x01, 0x08, 0xD4, 0x67, 0x01, 0x08
	.byte 0xE0, 0x67, 0x01, 0x08, 0xF8, 0x67, 0x01, 0x08, 0x14, 0x68, 0x01, 0x08, 0x40, 0x68, 0x01, 0x08
	.byte 0x98, 0x68, 0x01, 0x08, 0xDA, 0x68, 0x01, 0x08, 0x38, 0x69, 0x01, 0x08, 0x64, 0x69, 0x01, 0x08
	.byte 0x80, 0x69, 0x01, 0x08, 0x00, 0x20, 0x41, 0x46, 0x48, 0x81, 0xC8, 0x88, 0x01, 0x30, 0xC8, 0x80
	.byte 0x42, 0x46, 0x50, 0x89, 0x41, 0x1C, 0x51, 0x81, 0x00, 0x04, 0x00, 0x14, 0x14, 0x28, 0x00, 0xDC
	.byte 0x3B, 0xE2, 0x00, 0x20, 0x50, 0x81, 0x46, 0xE1, 0x0F, 0x49, 0x40, 0x22, 0x00, 0x23, 0x08, 0x88
	.byte 0x10, 0x43, 0x08, 0x80, 0xC8, 0x88, 0x10, 0x43, 0xC8, 0x80, 0x44, 0x46, 0x63, 0x81, 0xE0, 0x88
	.byte 0x01, 0x30, 0xE0, 0x80, 0x09, 0x48, 0x00, 0x68, 0x07, 0x21, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD1
	.byte 0x23, 0xE2, 0x41, 0x46, 0x48, 0x89, 0x41, 0x1C, 0x42, 0x46, 0x51, 0x81, 0x00, 0x04, 0x00, 0x14
	.byte 0x04, 0x28, 0x00, 0xDC, 0x19, 0xE2, 0x26, 0xE1, 0x70, 0x3A, 0x00, 0x03, 0xB0, 0x37, 0x00, 0x03
	.byte 0x12, 0x48, 0x00, 0x68, 0x05, 0x21, 0x04, 0xF0, 0x3F, 0xFA, 0x00, 0x28, 0x00, 0xD1, 0x0C, 0xE2
	.byte 0x0F, 0x4B, 0x44, 0x46, 0x0A, 0x20, 0x21, 0x5E, 0x08, 0x01, 0x08, 0x43, 0x58, 0x64, 0x60, 0x89
	.byte 0x41, 0x1E, 0x61, 0x81, 0x00, 0x04, 0x00, 0x28, 0x00, 0xDD, 0xFE, 0xE1, 0x09, 0x49, 0x08, 0x1C
	.byte 0x1A, 0x88, 0x10, 0x40, 0x00, 0x22, 0x18, 0x80, 0xDC, 0x88, 0x21, 0x40, 0xD9, 0x80, 0x5A, 0x64
	.byte 0x40, 0x46, 0x42, 0x81, 0xC0, 0x88, 0x01, 0x30, 0x41, 0x46, 0xED, 0xE1, 0xB0, 0x37, 0x00, 0x03
	.byte 0x70, 0x3A, 0x00, 0x03, 0xBF, 0xFF, 0x00, 0x00, 0x42, 0x46, 0x50, 0x89, 0x41, 0x1C, 0x51, 0x81
	.byte 0x00, 0x04, 0x00, 0x14, 0x28, 0x28, 0x00, 0xDC, 0xDF, 0xE1, 0x40, 0x46, 0x10, 0x30, 0x00, 0x23
	.byte 0xD1, 0x5E, 0x09, 0x31, 0x03, 0x22, 0xFF, 0xF7, 0x1B, 0xFA, 0xCE, 0x20, 0x40, 0x00, 0x40, 0x44
	.byte 0x44, 0x46, 0x00, 0x22, 0xA1, 0x5E, 0x0E, 0x31, 0x00, 0x22, 0xFF, 0xF7, 0x11, 0xFA, 0x00, 0x23
	.byte 0xE0, 0x5E, 0x7F, 0x30, 0xFC, 0xF7, 0xAE, 0xFF, 0x4C, 0xE0, 0x15, 0x4C, 0x20, 0x1C, 0xFF, 0xF7
	.byte 0x6D, 0xFA, 0xC6, 0x20, 0x40, 0x00, 0x25, 0x18, 0x28, 0x1C, 0xFF, 0xF7, 0x67, 0xFA, 0x20, 0x1C
	.byte 0xFF, 0xF7, 0xD4, 0xFA, 0x00, 0x28, 0x10, 0xD0, 0x28, 0x1C, 0xFF, 0xF7, 0xCF, 0xFA, 0x00, 0x28
	.byte 0x0B, 0xD0, 0x10, 0x3C, 0x00, 0x21, 0x60, 0x5E, 0x7F, 0x30, 0x3C, 0x21, 0xFC, 0xF7, 0xD0, 0xFF
	.byte 0xE0, 0x88, 0x01, 0x30, 0x00, 0x21, 0xE0, 0x80, 0x61, 0x81, 0x06, 0x49, 0x0A, 0x1C, 0xDC, 0x32
	.byte 0x10, 0x68, 0x01, 0x23, 0x18, 0x43, 0x10, 0x60, 0x02, 0x20, 0x88, 0x82, 0x8B, 0x75, 0x9C, 0xE1
	.byte 0x60, 0x60, 0x00, 0x03, 0xB0, 0x37, 0x00, 0x03, 0x42, 0x46, 0x50, 0x89, 0x41, 0x1C, 0x51, 0x81
	.byte 0x00, 0x04, 0x00, 0x14, 0x50, 0x28, 0x00, 0xDC, 0x8F, 0xE1, 0x04, 0x20, 0x01, 0x21, 0x08, 0x22
	.byte 0x1F, 0x23, 0xE9, 0xF7, 0x83, 0xFF, 0x00, 0x20, 0x43, 0x46, 0x58, 0x81, 0xD8, 0x88, 0x01, 0x30
	.byte 0xD8, 0x80, 0x82, 0xE1, 0x05, 0x48, 0x7E, 0x30, 0x00, 0x88, 0x00, 0x28, 0x00, 0xD0, 0x7C, 0xE1
	.byte 0x44, 0x46, 0x60, 0x81, 0xE0, 0x88, 0x01, 0x30, 0xE0, 0x80, 0x76, 0xE1, 0xB0, 0x37, 0x00, 0x03
	.byte 0x41, 0x46, 0x48, 0x89, 0x41, 0x1C, 0x42, 0x46, 0x51, 0x81, 0x00, 0x04, 0x00, 0x14, 0x14, 0x28
	.byte 0x00, 0xDC, 0x6A, 0xE1, 0x77, 0xE0, 0x00, 0x20, 0x43, 0x46, 0x98, 0x80, 0xD8, 0x80, 0x64, 0xE1
	.byte 0x05, 0x48, 0x06, 0x24, 0x03, 0x5F, 0x80, 0x46, 0x06, 0x2B, 0x00, 0xD9, 0x5D, 0xE1, 0x98, 0x00
	.byte 0x02, 0x49, 0x40, 0x18, 0x00, 0x68, 0x87, 0x46, 0x50, 0x60, 0x00, 0x03, 0xC0, 0x69, 0x01, 0x08
	.byte 0xDC, 0x69, 0x01, 0x08, 0x02, 0x6A, 0x01, 0x08, 0x44, 0x6A, 0x01, 0x08, 0x78, 0x6A, 0x01, 0x08
	.byte 0x94, 0x6A, 0x01, 0x08, 0xD0, 0x6A, 0x01, 0x08, 0x24, 0x6B, 0x01, 0x08, 0x01, 0x20, 0x00, 0x21
	.byte 0x00, 0x22, 0x1F, 0x23, 0xE9, 0xF7, 0x3A, 0xFF, 0x38, 0x20, 0xFD, 0xF7, 0x0F, 0xFF, 0x39, 0x20
	.byte 0xFD, 0xF7, 0x0C, 0xFF, 0xA6, 0x20, 0xFC, 0xF7, 0x1D, 0xFF, 0x11, 0x49, 0xC8, 0x88, 0x01, 0x30
	.byte 0xC8, 0x80, 0x38, 0x20, 0xFD, 0xF7, 0x54, 0xFA, 0x04, 0x1C, 0x39, 0x20, 0xFD, 0xF7, 0x50, 0xFA
	.byte 0x05, 0x1C, 0x20, 0x8A, 0x0A, 0x30, 0x20, 0x82, 0x20, 0x68, 0x80, 0x21, 0x89, 0x05, 0x08, 0x43
	.byte 0x20, 0x60, 0x28, 0x8A, 0x0A, 0x38, 0x28, 0x82, 0x28, 0x68, 0x08, 0x43, 0x28, 0x60, 0x10, 0x21
	.byte 0x60, 0x5E, 0x77, 0x28, 0x00, 0xDC, 0x18, 0xE1, 0x01, 0x49, 0xC8, 0x88, 0x01, 0x30, 0x13, 0xE1
	.byte 0x50, 0x60, 0x00, 0x03, 0x03, 0x20, 0x01, 0x21, 0x08, 0x22, 0x1F, 0x23, 0xE9, 0xF7, 0x06, 0xFF
	.byte 0x38, 0x20, 0xFD, 0xF7, 0x2D, 0xFA, 0xFE, 0xF7, 0x9D, 0xFA, 0x39, 0x20, 0xFD, 0xF7, 0x28, 0xFA
	.byte 0xFE, 0xF7, 0x98, 0xFA, 0x37, 0x20, 0xFD, 0xF7, 0xD1, 0xFE, 0x02, 0x49, 0xC8, 0x88, 0x01, 0x30
	.byte 0xFA, 0xE0, 0x00, 0x00, 0x50, 0x60, 0x00, 0x03, 0x05, 0x48, 0x7E, 0x30, 0x00, 0x88, 0x00, 0x28
	.byte 0x00, 0xD0, 0xF2, 0xE0, 0x42, 0x46, 0xD0, 0x88, 0x01, 0x30, 0xD0, 0x80, 0xED, 0xE0, 0x00, 0x00
	.byte 0xB0, 0x37, 0x00, 0x03, 0x37, 0x20, 0xFD, 0xF7, 0x0B, 0xFA, 0x04, 0x1C, 0x20, 0x68, 0x00, 0x28
	.byte 0x00, 0xDA, 0xE2, 0xE0, 0x20, 0x1C, 0xFE, 0xF7, 0x75, 0xFA, 0x38, 0x20, 0x78, 0x21, 0x3C, 0x22
	.byte 0xFD, 0xF7, 0xCC, 0xFE, 0x39, 0x20, 0x78, 0x21, 0x3C, 0x22, 0xFD, 0xF7, 0xC7, 0xFE, 0xA7, 0x20
	.byte 0xFC, 0xF7, 0xB8, 0xFE, 0x01, 0x49, 0xC8, 0x88, 0x01, 0x30, 0xCD, 0xE0, 0x50, 0x60, 0x00, 0x03
	.byte 0x38, 0x20, 0xFD, 0xF7, 0xED, 0xF9, 0x04, 0x1C, 0x39, 0x20, 0xFD, 0xF7, 0xE9, 0xF9, 0x05, 0x1C
	.byte 0x60, 0x8A, 0x07, 0x38, 0x60, 0x82, 0x20, 0x68, 0x80, 0x21, 0x89, 0x05, 0x08, 0x43, 0x20, 0x60
	.byte 0x68, 0x8A, 0x07, 0x30, 0x68, 0x82, 0x28, 0x68, 0x08, 0x43, 0x28, 0x60, 0x12, 0x23, 0xE1, 0x5E
	.byte 0x3C, 0x20, 0x40, 0x42, 0x81, 0x42, 0x00, 0xDB, 0xAF, 0xE0, 0x20, 0x1C, 0xFE, 0xF7, 0x42, 0xFA
	.byte 0x28, 0x1C, 0xFE, 0xF7, 0x3F, 0xFA, 0x02, 0x49, 0xC8, 0x88, 0x01, 0x30, 0xA4, 0xE0, 0x00, 0x00
	.byte 0x50, 0x60, 0x00, 0x03, 0x01, 0xF0, 0xA8, 0xF8, 0x01, 0x1C, 0x00, 0x29, 0x00, 0xD0, 0x9C, 0xE0
	.byte 0x01, 0x48, 0x81, 0x80, 0xC1, 0x80, 0x98, 0xE0, 0x50, 0x60, 0x00, 0x03, 0x1C, 0x49, 0x06, 0x24
	.byte 0x08, 0x5F, 0x00, 0x28, 0x00, 0xD0, 0x90, 0xE0, 0x00, 0x26, 0x00, 0x22, 0x88, 0x5E, 0x86, 0x42
	.byte 0x0B, 0xDA, 0x0C, 0x1C, 0xCA, 0x23, 0x9B, 0x00, 0xE5, 0x18, 0x01, 0xCD, 0xFE, 0xF7, 0x1A, 0xFA
	.byte 0x01, 0x36, 0x00, 0x21, 0x60, 0x5E, 0x86, 0x42, 0xF7, 0xDB, 0x02, 0xF0, 0x97, 0xFF, 0xFF, 0xF7
	.byte 0x45, 0xF9, 0xED, 0xF7, 0xD1, 0xFA, 0xE9, 0xF7, 0x97, 0xFD, 0x0E, 0x4A, 0x11, 0x1C, 0xB2, 0x31
	.byte 0x0B, 0x78, 0x98, 0x00, 0xC0, 0x18, 0x90, 0x24, 0x64, 0x00, 0x11, 0x19, 0x40, 0x18, 0x06, 0x78
	.byte 0xD0, 0x8D, 0x00, 0x24, 0x50, 0x86, 0xD6, 0x85, 0x11, 0x1C, 0x34, 0x31, 0x01, 0x20, 0x08, 0x70
	.byte 0xFA, 0xF7, 0x00, 0xFA, 0x02, 0xF0, 0xB8, 0xFF, 0x01, 0x48, 0x84, 0x80, 0xC4, 0x80, 0x5C, 0xE0
	.byte 0x50, 0x60, 0x00, 0x03, 0xB0, 0x37, 0x00, 0x03, 0x00, 0x26, 0x10, 0x49, 0x00, 0x22, 0x88, 0x5E
	.byte 0x86, 0x42, 0x0D, 0xDA, 0x0D, 0x1C, 0xCA, 0x23, 0x9B, 0x00, 0xEC, 0x18, 0x20, 0x68, 0xFE, 0xF7
	.byte 0xE1, 0xF9, 0x00, 0x20, 0x01, 0xC4, 0x01, 0x36, 0x00, 0x21, 0x68, 0x5E, 0x86, 0x42, 0xF5, 0xDB
	.byte 0xFF, 0xF7, 0x0C, 0xF9, 0x0B, 0xAA, 0x00, 0x20, 0x10, 0x80, 0x05, 0x49, 0x0A, 0x60, 0x05, 0x48
	.byte 0x48, 0x60, 0x05, 0x48, 0x88, 0x60, 0x88, 0x68, 0x33, 0xE0, 0x00, 0x00, 0x50, 0x60, 0x00, 0x03
	.byte 0xD4, 0x00, 0x00, 0x04, 0xA0, 0x2F, 0x00, 0x03, 0x00, 0x04, 0x00, 0x81, 0x1A, 0x4D, 0x02, 0x22
	.byte 0xAC, 0x5E, 0x00, 0x23, 0xE8, 0x5E, 0x00, 0xF0, 0x31, 0xF8, 0x6C, 0x80, 0x00, 0x26, 0x00, 0x24
	.byte 0x28, 0x5F, 0x02, 0x22, 0xA9, 0x5E, 0x40, 0x1A, 0x86, 0x42, 0x1A, 0xDA, 0xCA, 0x23, 0x9B, 0x00
	.byte 0xEF, 0x18, 0x00, 0x24, 0x28, 0x5F, 0x74, 0x1C, 0x00, 0x1B, 0x80, 0x00, 0xC0, 0x19, 0x00, 0x68
	.byte 0xFE, 0xF7, 0xA8, 0xF9, 0x00, 0x21, 0x68, 0x5E, 0x00, 0x1B, 0x80, 0x00, 0xC0, 0x19, 0x00, 0x21
	.byte 0x01, 0x60, 0x26, 0x1C, 0x00, 0x22, 0xA8, 0x5E, 0x02, 0x23, 0xE9, 0x5E, 0x40, 0x1A, 0x86, 0x42
	.byte 0xE7, 0xDB, 0x05, 0x49, 0x00, 0x20, 0x88, 0x80, 0xC8, 0x80, 0x0C, 0xB0, 0x08, 0xBC, 0x98, 0x46
	.byte 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x50, 0x60, 0x00, 0x03

	thumb_func_start sub_8016C7C
sub_8016C7C: @ 0x08016C7C
	push {r4, r5, r6, lr}
	bl sub_8016124
	bl sub_8015EB4
	ldr r4, _08016D38 @ =gUnknown_03006060
	adds r6, r4, #0
	subs r6, #0x10
	movs r0, #0
	ldrsh r1, [r6, r0]
	subs r1, #1
	adds r0, r4, #0
	movs r2, #3
	bl sub_8015CF0
	movs r1, #0xc6
	lsls r1, r1, #1
	adds r5, r4, r1
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r1, #4
	adds r0, r5, #0
	movs r2, #0
	bl sub_8015CF0
	movs r3, #0
	ldrsh r1, [r6, r3]
	subs r1, #1
	ldr r0, [r6, #0x18]
	ldrh r3, [r0, #6]
	subs r3, #1
	adds r0, r4, #0
	movs r2, #3
	bl sub_8015CE0
	movs r0, #0
	ldrsh r1, [r6, r0]
	adds r1, #4
	movs r2, #0xca
	lsls r2, r2, #1
	adds r4, r4, r2
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	subs r3, #1
	adds r0, r5, #0
	movs r2, #0
	bl sub_8015CE0
	movs r4, #0
	movs r3, #0
	ldrsh r0, [r6, r3]
	cmp r4, r0
	bge _08016D30
	adds r5, r6, #0
	ldr r6, _08016D3C @ =gUnknown_0811246C
_08016CEA:
	movs r0, #0
	ldrsh r1, [r5, r0]
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r4, r0
	lsls r1, r0, #1
	adds r2, r1, #1
	lsls r0, r1, #1
	adds r0, r0, r6
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	adds r1, #0x20
	lsls r0, r2, #1
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r2, r0, #0
	adds r2, #0x10
	adds r0, r4, #0
	adds r0, #0x2d
	bl sub_801484C
	lsls r1, r4, #2
	movs r3, #0xca
	lsls r3, r3, #2
	adds r2, r5, r3
	adds r1, r1, r2
	str r0, [r1]
	adds r4, #1
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r4, r0
	blt _08016CEA
_08016D30:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016D38: .4byte gUnknown_03006060
_08016D3C: .4byte gUnknown_0811246C

	thumb_func_start sub_8016D40
sub_8016D40: @ 0x08016D40
	push {r4, r5, r6, lr}
	bl sub_80161E4
	bl sub_801622C
	movs r4, #0
	ldr r1, _08016D84 @ =gUnknown_03006050
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r4, r0
	bge _08016D6E
	adds r5, r1, #0
	movs r0, #0xca
	lsls r0, r0, #2
	adds r6, r5, r0
_08016D5E:
	ldm r6!, {r0}
	bl sub_8014F94
	adds r4, #1
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r4, r0
	blt _08016D5E
_08016D6E:
	bl sub_8010FA4
	ldr r1, _08016D88 @ =gInvestigation
	movs r0, #0xfe
	ldrb r2, [r1, #0xb]
	ands r0, r2
	strb r0, [r1, #0xb]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016D84: .4byte gUnknown_03006050
_08016D88: .4byte gInvestigation

	thumb_func_start sub_8016D8C
sub_8016D8C: @ 0x08016D8C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0
	ldr r2, _08016DB4 @ =gMain+0x1A4
	movs r5, #1
_08016D9C:
	ldr r0, [r2]
	ands r0, r5
	cmp r0, #0
	beq _08016DB8
	ldrh r0, [r2, #4]
	cmp r0, r4
	bne _08016DB8
	ldrh r0, [r2, #6]
	cmp r0, r1
	bne _08016DB8
	adds r0, r3, #0
	b _08016DC4
	.align 2, 0
_08016DB4: .4byte gMain+0x1A4
_08016DB8:
	adds r2, #0x28
	adds r3, #1
	cmp r3, #3
	ble _08016D9C
	movs r0, #1
	rsbs r0, r0, #0
_08016DC4:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8016DCC
sub_8016DCC: @ 0x08016DCC
	push {r4, r5, lr}
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r4, #1
	rsbs r4, r4, #0
	movs r2, #0
	ldr r3, [r0, #0x18]
	cmp r2, r3
	bhs _08016DF2
	adds r1, r0, #0
	adds r1, #0x1c
_08016DE2:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, r5
	bne _08016DEC
	adds r4, r2, #0
_08016DEC:
	adds r2, #1
	cmp r2, r3
	blo _08016DE2
_08016DF2:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8016DFC
sub_8016DFC: @ 0x08016DFC
	ldr r0, _08016E0C @ =gMain
	movs r1, #0x92
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_08016E0C: .4byte gMain

	thumb_func_start sub_8016E10
sub_8016E10: @ 0x08016E10
	ldr r1, _08016E24 @ =gMain
	movs r3, #0x92
	lsls r3, r3, #2
	adds r2, r1, r3
	movs r3, #0
	strb r0, [r2]
	ldr r0, _08016E28 @ =0x00000249
	adds r1, r1, r0
	strb r3, [r1]
	bx lr
	.align 2, 0
_08016E24: .4byte gMain
_08016E28: .4byte 0x00000249

	thumb_func_start sub_8016E2C
sub_8016E2C: @ 0x08016E2C
	ldr r1, _08016E58 @ =0x040000D4
	ldr r0, _08016E5C @ =gUnknown_08146FFC
	str r0, [r1]
	ldr r0, _08016E60 @ =0x06013000
	str r0, [r1, #4]
	ldr r2, _08016E64 @ =0x80000100
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08016E68 @ =gUnknown_08141EFC
	str r0, [r1]
	ldr r0, _08016E6C @ =0x06013200
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08016E70 @ =gUnknown_0814DC40
	str r0, [r1]
	ldr r0, _08016E74 @ =0x050002A0
	str r0, [r1, #4]
	ldr r0, _08016E78 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bx lr
	.align 2, 0
_08016E58: .4byte 0x040000D4
_08016E5C: .4byte gUnknown_08146FFC
_08016E60: .4byte 0x06013000
_08016E64: .4byte 0x80000100
_08016E68: .4byte gUnknown_08141EFC
_08016E6C: .4byte 0x06013200
_08016E70: .4byte gUnknown_0814DC40
_08016E74: .4byte 0x050002A0
_08016E78: .4byte 0x80000010

	thumb_func_start sub_8016E7C
sub_8016E7C: @ 0x08016E7C
	push {lr}
	ldr r0, _08016E98 @ =gMain
	movs r1, #0x92
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #4
	bls _08016E8E
	b _08016F78
_08016E8E:
	lsls r0, r0, #2
	ldr r1, _08016E9C @ =_08016EA0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08016E98: .4byte gMain
_08016E9C: .4byte _08016EA0
_08016EA0: @ jump table
	.4byte _08016F78 @ case 0
	.4byte _08016EB4 @ case 1
	.4byte _08016F00 @ case 2
	.4byte _08016F4C @ case 3
	.4byte _08016F68 @ case 4
_08016EB4:
	ldr r0, _08016ECC @ =gMain
	ldr r3, _08016ED0 @ =0x00000249
	adds r2, r0, r3
	ldrb r1, [r2]
	cmp r1, #1
	beq _08016EE8
	cmp r1, #1
	bgt _08016ED4
	cmp r1, #0
	beq _08016EDA
	b _08016F78
	.align 2, 0
_08016ECC: .4byte gMain
_08016ED0: .4byte 0x00000249
_08016ED4:
	cmp r1, #2
	beq _08016F56
	b _08016F78
_08016EDA:
	ldr r1, _08016EE4 @ =0x00000246
	adds r0, r0, r1
	movs r1, #0x10
	strh r1, [r0]
	b _08016F3E
	.align 2, 0
_08016EE4: .4byte 0x00000246
_08016EE8:
	ldr r3, _08016EFC @ =0x00000246
	adds r1, r0, r3
	ldrh r0, [r1]
	subs r0, #2
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _08016F78
	b _08016F3C
	.align 2, 0
_08016EFC: .4byte 0x00000246
_08016F00:
	ldr r0, _08016F1C @ =gMain
	ldr r1, _08016F20 @ =0x00000249
	adds r2, r0, r1
	ldrb r1, [r2]
	cmp r1, #1
	beq _08016F28
	cmp r1, #1
	bgt _08016ED4
	cmp r1, #0
	bne _08016F78
	ldr r3, _08016F24 @ =0x00000246
	adds r0, r0, r3
	strh r1, [r0]
	b _08016F3E
	.align 2, 0
_08016F1C: .4byte gMain
_08016F20: .4byte 0x00000249
_08016F24: .4byte 0x00000246
_08016F28:
	ldr r3, _08016F48 @ =0x00000246
	adds r1, r0, r3
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08016F78
	movs r0, #0x10
_08016F3C:
	strh r0, [r1]
_08016F3E:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	b _08016F78
	.align 2, 0
_08016F48: .4byte 0x00000246
_08016F4C:
	ldr r0, _08016F60 @ =gMain
	ldr r1, _08016F64 @ =0x00000246
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
_08016F56:
	movs r0, #0
	bl sub_8016E10
	b _08016F78
	.align 2, 0
_08016F60: .4byte gMain
_08016F64: .4byte 0x00000246
_08016F68:
	ldr r0, _08016FDC @ =gMain
	ldr r2, _08016FE0 @ =0x00000246
	adds r0, r0, r2
	movs r1, #0x40
	strh r1, [r0]
	movs r0, #0
	bl sub_8016E10
_08016F78:
	bl sub_8016E2C
	ldr r2, _08016FDC @ =gMain
	ldr r3, _08016FE4 @ =0x0000024A
	adds r1, r2, r3
	movs r0, #1
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08017000
	ldr r3, _08016FE8 @ =gOamObjects
	ldr r1, _08016FE0 @ =0x00000246
	adds r0, r2, r1
	ldrh r0, [r0]
	rsbs r1, r0, #0
	ldr r2, _08016FEC @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	adds r1, r1, r0
	movs r2, #0xc8
	lsls r2, r2, #1
	adds r0, r3, r2
	strh r1, [r0]
	movs r0, #0xc9
	lsls r0, r0, #1
	adds r2, r3, r0
	ldr r0, _08016FF0 @ =0x000080B0
	strh r0, [r2]
	movs r0, #0xca
	lsls r0, r0, #1
	adds r2, r3, r0
	ldr r0, _08016FF4 @ =0x00005590
	strh r0, [r2]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r0, r3, r2
	strh r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _08016FF8 @ =0x000080D0
	strh r0, [r1]
	adds r2, #4
	adds r1, r3, r2
	ldr r0, _08016FFC @ =0x00005598
	strh r0, [r1]
	b _08017016
	.align 2, 0
_08016FDC: .4byte gMain
_08016FE0: .4byte 0x00000246
_08016FE4: .4byte 0x0000024A
_08016FE8: .4byte gOamObjects
_08016FEC: .4byte 0x000001FF
_08016FF0: .4byte 0x000080B0
_08016FF4: .4byte 0x00005590
_08016FF8: .4byte 0x000080D0
_08016FFC: .4byte 0x00005598
_08017000:
	ldr r2, _08017078 @ =gOamObjects
	movs r3, #0xc8
	lsls r3, r3, #1
	adds r0, r2, r3
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0]
	adds r3, #8
	adds r0, r2, r3
	strh r1, [r0]
	adds r3, r2, #0
_08017016:
	ldr r2, _0801707C @ =gMain
	ldr r0, _08017080 @ =0x0000024A
	adds r1, r2, r0
	movs r0, #2
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08017094
	ldr r1, _08017084 @ =0x00000246
	adds r0, r2, r1
	ldrh r0, [r0]
	rsbs r1, r0, #0
	ldr r2, _08017088 @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	adds r1, r1, r0
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r3, r2
	strh r1, [r0]
	movs r0, #0xc1
	lsls r0, r0, #1
	adds r2, r3, r0
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r2]
	movs r0, #0xc2
	lsls r0, r0, #1
	adds r2, r3, r0
	movs r0, #0xab
	lsls r0, r0, #7
	strh r0, [r2]
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r3, r2
	strh r1, [r0]
	movs r0, #0xc5
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _0801708C @ =0x00008020
	strh r0, [r1]
	adds r2, #4
	adds r1, r3, r2
	ldr r0, _08017090 @ =0x00005588
	strh r0, [r1]
	b _080170A6
	.align 2, 0
_08017078: .4byte gOamObjects
_0801707C: .4byte gMain
_08017080: .4byte 0x0000024A
_08017084: .4byte 0x00000246
_08017088: .4byte 0x000001FF
_0801708C: .4byte 0x00008020
_08017090: .4byte 0x00005588
_08017094:
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r3, r1
	adds r1, #0x80
	strh r1, [r0]
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r3, r2
	strh r1, [r0]
_080170A6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80170AC
sub_80170AC: @ 0x080170AC
	push {lr}
	bl sub_8016E2C
	ldr r3, _08017118 @ =gMain
	ldr r0, _0801711C @ =0x0000024A
	adds r1, r3, r0
	movs r0, #1
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _080170FE
	ldr r2, _08017120 @ =gOamObjects
	ldr r1, _08017124 @ =0x00000246
	adds r0, r3, r1
	ldrh r0, [r0]
	rsbs r1, r0, #0
	ldr r3, _08017128 @ =0x000001FF
	adds r0, r3, #0
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r3, #0
	adds r1, r1, r0
	movs r3, #0xc8
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r1, [r0]
	movs r0, #0xc9
	lsls r0, r0, #1
	adds r3, r2, r0
	ldr r0, _0801712C @ =0x000080BA
	strh r0, [r3]
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _08017130 @ =0x000080DA
	strh r0, [r1]
_080170FE:
	ldr r2, _08017120 @ =gOamObjects
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r2, r1
	adds r1, #0x80
	strh r1, [r0]
	movs r3, #0xc4
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08017118: .4byte gMain
_0801711C: .4byte 0x0000024A
_08017120: .4byte gOamObjects
_08017124: .4byte 0x00000246
_08017128: .4byte 0x000001FF
_0801712C: .4byte 0x000080BA
_08017130: .4byte 0x000080DA

	thumb_func_start sub_8017134
sub_8017134: @ 0x08017134
	ldr r2, _08017158 @ =gOamObjects
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r0, r2, r1
	adds r1, #0x70
	strh r1, [r0]
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r1, [r0]
	subs r3, #0x18
	adds r0, r2, r3
	strh r1, [r0]
	adds r3, #8
	adds r0, r2, r3
	strh r1, [r0]
	bx lr
	.align 2, 0
_08017158: .4byte gOamObjects

	thumb_func_start sub_801715C
sub_801715C: @ 0x0801715C
	ldr r0, _08017170 @ =gMain
	movs r1, #0x92
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017174
	movs r0, #1
	b _08017176
	.align 2, 0
_08017170: .4byte gMain
_08017174:
	movs r0, #0
_08017176:
	bx lr

	thumb_func_start sub_8017178
sub_8017178: @ 0x08017178
	ldr r0, _080171CC @ =0x040000D4
	ldr r1, _080171D0 @ =gUnknown_081475FC
	str r1, [r0]
	ldr r1, _080171D4 @ =0x06013780
	str r1, [r0, #4]
	ldr r1, _080171D8 @ =0x800000C0
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080171DC @ =gUnknown_0814E340
	str r1, [r0]
	ldr r1, _080171E0 @ =0x05000260
	str r1, [r0, #4]
	ldr r2, _080171E4 @ =0x80000010
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080171E8 @ =gUnknown_0814E360
	str r1, [r0]
	ldr r1, _080171EC @ =0x05000280
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080171F0 @ =gUnknown_0814757C
	str r1, [r0]
	ldr r1, _080171F4 @ =0x06012E00
	str r1, [r0, #4]
	adds r2, #0x30
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080171F8 @ =gUnknown_0814747C
	str r1, [r0]
	ldr r1, _080171FC @ =0x06012E80
	str r1, [r0, #4]
	ldr r1, _08017200 @ =0x80000080
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08017204 @ =gUnknown_081473FC
	str r1, [r0]
	ldr r1, _08017208 @ =0x06012F80
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
_080171CC: .4byte 0x040000D4
_080171D0: .4byte gUnknown_081475FC
_080171D4: .4byte 0x06013780
_080171D8: .4byte 0x800000C0
_080171DC: .4byte gUnknown_0814E340
_080171E0: .4byte 0x05000260
_080171E4: .4byte 0x80000010
_080171E8: .4byte gUnknown_0814E360
_080171EC: .4byte 0x05000280
_080171F0: .4byte gUnknown_0814757C
_080171F4: .4byte 0x06012E00
_080171F8: .4byte gUnknown_0814747C
_080171FC: .4byte 0x06012E80
_08017200: .4byte 0x80000080
_08017204: .4byte gUnknown_081473FC
_08017208: .4byte 0x06012F80

	thumb_func_start sub_801720C
sub_801720C: @ 0x0801720C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	ldr r3, _080172A0 @ =gOamObjects+0x158
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r4, r3, #0
	adds r3, #8
	movs r2, #0xff
	ands r1, r2
	movs r5, #0
	strh r1, [r4]
	ldr r6, _080172A4 @ =0x000001FF
	ands r0, r6
	movs r2, #0x80
	lsls r2, r2, #7
	mov sb, r2
	orrs r0, r2
	strh r0, [r4, #2]
	ldr r0, _080172A8 @ =0x0000317C
	strh r0, [r4, #4]
	mov r0, ip
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, r3, #0
	adds r3, #8
	adds r2, r1, #0
	mov r7, sb
	orrs r2, r7
	orrs r2, r5
	strh r2, [r4]
	ands r0, r6
	movs r5, #0x80
	lsls r5, r5, #8
	mov r8, r5
	orrs r0, r5
	strh r0, [r4, #2]
	ldr r5, _080172AC @ =0x00003174
	strh r5, [r4, #4]
	mov r0, ip
	adds r0, #0x28
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	strh r2, [r3]
	ands r0, r6
	mov r7, r8
	orrs r0, r7
	strh r0, [r3, #2]
	strh r5, [r3, #4]
	mov r0, ip
	adds r0, #0x48
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, #8
	strh r1, [r3]
	ands r0, r6
	mov r1, sb
	orrs r0, r1
	strh r0, [r3, #2]
	ldr r0, _080172B0 @ =0x00003170
	strh r0, [r3, #4]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080172A0: .4byte gOamObjects+0x158
_080172A4: .4byte 0x000001FF
_080172A8: .4byte 0x0000317C
_080172AC: .4byte 0x00003174
_080172B0: .4byte 0x00003170

	thumb_func_start sub_80172B4
sub_80172B4: @ 0x080172B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r2, #0
	str r3, [sp, #8]
	ldr r6, [sp, #0x3c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	cmp r7, #0
	bge _080172D8
	movs r7, #0
_080172D8:
	ldr r0, [sp, #0x38]
	adds r0, r0, r6
	lsls r0, r0, #3
	ldr r5, _08017354 @ =gOamObjects
	adds r0, r0, r5
	mov sb, r0
	movs r0, #0x80
	lsls r0, r0, #1
	mov sl, r0
	ldr r4, _08017358 @ =gUnknown_0801C158
	ldr r1, _0801735C @ =gUnknown_0801C1D8
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r1, sl
	bl sub_8004260
	strh r0, [r5, #6]
	movs r1, #0
	ldrsh r0, [r4, r1]
	mov r1, sl
	bl sub_8004260
	strh r0, [r5, #0xe]
	ldrh r4, [r4]
	rsbs r0, r4, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, sl
	bl sub_8004260
	strh r0, [r5, #0x16]
	ldr r2, _0801735C @ =gUnknown_0801C1D8
	movs r1, #0
	ldrsh r0, [r2, r1]
	mov r1, sl
	bl sub_8004260
	strh r0, [r5, #0x1e]
	subs r6, #1
	cmp r6, #0
	bge _0801732C
	movs r6, #0
_0801732C:
	mov sl, r6
	ldr r2, [sp, #8]
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	ldr r1, [sp, #0x40]
	lsls r0, r1, #0x10
	lsrs r4, r0, #4
	lsls r1, r6, #0x14
	ldr r2, [sp]
	lsls r0, r2, #0x10
	adds r2, r1, r0
	movs r3, #0xff
	ldr r0, [sp, #4]
	ands r3, r0
	movs r0, #0xc0
	lsls r0, r0, #2
	orrs r3, r0
	ldr r6, _08017360 @ =0x000001FF
	b _0801738E
	.align 2, 0
_08017354: .4byte gOamObjects
_08017358: .4byte gUnknown_0801C158
_0801735C: .4byte gUnknown_0801C1D8
_08017360: .4byte 0x000001FF
_08017364:
	lsrs r1, r2, #0x10
	mov r0, sb
	strh r3, [r0]
	ands r1, r6
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r1, r0
	mov r0, sb
	strh r1, [r0, #2]
	ldr r0, _08017484 @ =0x000003FF
	ands r0, r5
	orrs r0, r4
	mov r1, sb
	strh r0, [r1, #4]
	movs r0, #8
	add sb, r0
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r2, r2, r1
	movs r0, #1
	add sl, r0
_0801738E:
	adds r0, r7, #0
	cmp r7, #0
	bge _08017396
	adds r0, #0xf
_08017396:
	asrs r0, r0, #4
	cmp sl, r0
	blt _08017364
	mov r1, sl
	cmp r1, #4
	bgt _08017470
	lsls r0, r0, #4
	subs r7, r7, r0
	cmp r7, #0
	beq _08017470
	ldr r2, [sp, #0x44]
	lsls r2, r2, #0x10
	str r2, [sp, #0x10]
	lsrs r0, r2, #0x10
	str r0, [sp, #0xc]
	lsls r0, r7, #0x14
	asrs r0, r0, #0x10
	bl sub_8004290
	adds r5, r0, #0
	ldr r1, _08017488 @ =gUnknown_0801C1D8
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r1, r5, #0
	bl sub_8004260
	ldr r1, _0801748C @ =gOamObjects
	mov r8, r1
	ldr r2, [sp, #0xc]
	lsls r1, r2, #5
	add r1, r8
	strh r0, [r1, #6]
	ldr r1, _08017490 @ =gUnknown_0801C158
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_8004260
	ldr r1, [sp, #0xc]
	lsls r4, r1, #2
	adds r1, r4, #1
	lsls r1, r1, #3
	add r1, r8
	strh r0, [r1, #6]
	ldr r2, _08017490 @ =gUnknown_0801C158
	ldrh r2, [r2]
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	bl sub_8004260
	adds r1, r4, #2
	lsls r1, r1, #3
	add r1, r8
	strh r0, [r1, #6]
	ldr r1, _08017488 @ =gUnknown_0801C1D8
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_8004260
	adds r4, #3
	lsls r4, r4, #3
	add r4, r8
	strh r0, [r4, #6]
	mov r0, sl
	lsls r1, r0, #4
	movs r0, #0x10
	subs r0, r0, r7
	lsrs r0, r0, #1
	subs r1, r1, r0
	movs r0, #1
	ands r7, r0
	subs r1, r1, r7
	ldr r2, [sp]
	adds r1, r1, r2
	ldr r0, [sp, #0x40]
	lsls r3, r0, #0x10
	movs r0, #0xff
	ldr r2, [sp, #4]
	ands r0, r2
	movs r2, #0xc0
	lsls r2, r2, #2
	orrs r0, r2
	mov r2, sb
	strh r0, [r2]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x17
	ldr r0, [sp, #0xc]
	lsls r0, r0, #9
	str r0, [sp, #0x14]
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r1, r0
	strh r1, [r2, #2]
	ldr r1, [sp, #8]
	lsls r0, r1, #0x16
	lsrs r0, r0, #0x16
	lsrs r3, r3, #4
	orrs r0, r3
	strh r0, [r2, #4]
	movs r2, #1
	add sl, r2
_08017470:
	mov r0, sl
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08017484: .4byte 0x000003FF
_08017488: .4byte gUnknown_0801C1D8
_0801748C: .4byte gOamObjects
_08017490: .4byte gUnknown_0801C158

	thumb_func_start sub_8017494
sub_8017494: @ 0x08017494
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r0, _080174D8 @ =gMain
	ldr r4, [r0]
	adds r0, r4, #0
	movs r1, #4
	bl __umodsi3
	cmp r0, #0
	bne _080174D0
	adds r0, r4, #0
	movs r1, #4
	bl __udivsi3
	movs r1, #0xf
	bl __umodsi3
	ldr r1, _080174DC @ =0x040000D4
	lsls r0, r0, #5
	adds r0, r6, r0
	str r0, [r1]
	lsls r0, r5, #5
	ldr r2, _080174E0 @ =0x05000200
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _080174E4 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080174D0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080174D8: .4byte gMain
_080174DC: .4byte 0x040000D4
_080174E0: .4byte 0x05000200
_080174E4: .4byte 0x80000010

	thumb_func_start sub_80174E8
sub_80174E8: @ 0x080174E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	str r0, [sp, #0x4c]
	str r1, [sp, #0x50]
	mov r1, sp
	ldr r0, _080175B4 @ =gUnknown_080242F0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r4, r5}
	stm r1!, {r2, r4, r5}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	add r4, sp, #0x30
	adds r1, r4, #0
	ldr r0, _080175B8 @ =gUnknown_08024320
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _080175BC @ =gMain
	ldr r0, [r0]
	ldr r1, [r4, #0x18]
	bl __umodsi3
	mov sl, r0
	movs r0, #0
	mov r8, r0
	mov r7, sp
	mov sb, r4
_08017532:
	mov r1, sb
	ldr r0, [r1]
	cmp r0, sl
	beq _08017542
	bl sub_80175C0
	cmp r0, #0
	bne _08017592
_08017542:
	mov r0, r8
	movs r1, #3
	bl __modsi3
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x3a
	adds r0, r5, #0
	bl sub_8013EB0
	adds r4, r0, #0
	cmp r4, #0
	bne _08017592
	ldr r1, [r7]
	ldr r2, [sp, #0x4c]
	adds r1, r2, r1
	ldr r2, [r7, #4]
	ldr r3, [sp, #0x50]
	adds r2, r3, r2
	adds r2, #8
	adds r0, r5, #0
	bl sub_801484C
	adds r4, r0, #0
	subs r5, #0x2a
	bl Random
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r0, #0
	asrs r2, r2, #8
	lsls r2, r2, #8
	subs r2, r0, r2
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r2, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8014074
_08017592:
	adds r7, #8
	movs r1, #4
	add sb, r1
	movs r2, #1
	add r8, r2
	mov r3, r8
	cmp r3, #5
	ble _08017532
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080175B4: .4byte gUnknown_080242F0
_080175B8: .4byte gUnknown_08024320
_080175BC: .4byte gMain

	thumb_func_start sub_80175C0
sub_80175C0: @ 0x080175C0
	push {r4, r5, lr}
	movs r5, #0
	movs r4, #0
_080175C6:
	adds r0, r4, #0
	adds r0, #0x3a
	bl sub_8013EB0
	cmp r0, #0
	beq _080175D4
	adds r5, #1
_080175D4:
	adds r4, #1
	cmp r4, #2
	ble _080175C6
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80175E4
sub_80175E4: @ 0x080175E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0
	str r0, [sp, #0x10]
	movs r7, #0
	ldr r6, _0801768C @ =gMain
	ldr r2, _08017690 @ =gMain+0x98
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, _08017694 @ =gMain+0x9A
	movs r5, #0
	ldrsh r0, [r4, r5]
	cmp r1, r0
	ble _0801769C
	ldr r0, _08017698 @ =gUnknown_08112700
	movs r1, #7
	bl sub_8017494
	str r7, [sp, #0x10]
	ldr r0, [r6]
	lsrs r7, r0, #1
	movs r0, #1
	ands r7, r0
	movs r0, #0x9e
	adds r0, r0, r6
	mov sl, r0
	movs r5, #8
	rsbs r5, r5, #0
	ldrh r1, [r0]
	adds r0, r1, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r6, #0xa0
	mov r8, r6
	adds r4, r7, #0
	subs r4, #8
	ldrh r2, [r6]
	adds r1, r2, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r3, _08017694 @ =gMain+0x9A
	movs r6, #0
	ldrsh r2, [r3, r6]
	movs r3, #0xde
	lsls r3, r3, #1
	mov sb, r3
	movs r6, #0x25
	str r6, [sp]
	ldr r3, [sp, #0x10]
	str r3, [sp, #4]
	movs r3, #4
	str r3, [sp, #8]
	movs r3, #0x14
	str r3, [sp, #0xc]
	mov r3, sb
	bl sub_80172B4
	adds r3, r0, #0
	mov r0, sl
	ldrh r0, [r0]
	adds r5, r0, r5
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r1, r8
	ldrh r1, [r1]
	adds r4, r1, r4
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, _08017690 @ =gMain+0x98
	movs r1, #0
	ldrsh r2, [r0, r1]
	str r6, [sp]
	str r3, [sp, #4]
	movs r0, #7
	str r0, [sp, #8]
	movs r0, #0x15
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r1, r4, #0
	b _080177DE
	.align 2, 0
_0801768C: .4byte gMain
_08017690: .4byte gMain+0x98
_08017694: .4byte gMain+0x9A
_08017698: .4byte gUnknown_08112700
_0801769C:
	cmp r1, r0
	bge _08017764
	movs r2, #0x9e
	adds r2, r2, r6
	mov sl, r2
	movs r3, #0
	ldrsh r0, [r2, r3]
	ldr r4, _08017758 @ =gMain+0x9A
	movs r5, #0
	ldrsh r1, [r4, r5]
	adds r0, r0, r1
	adds r6, #0xa0
	movs r2, #0
	ldrsh r1, [r6, r2]
	bl sub_80174E8
	ldr r0, _0801775C @ =gUnknown_08112520
	movs r1, #7
	bl sub_8017494
	bl Random
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	movs r0, #1
	ands r5, r0
	subs r3, r5, #2
	str r3, [sp, #0x10]
	bl Random
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #3
	bl __umodsi3
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	subs r7, r4, #4
	subs r5, #0xa
	mov r1, sl
	ldrh r1, [r1]
	adds r0, r1, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r4, #0xc
	ldrh r2, [r6]
	adds r1, r2, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r3, _08017760 @ =gMain+0x98
	movs r2, #0
	ldrsh r3, [r3, r2]
	mov ip, r3
	movs r3, #0xde
	lsls r3, r3, #1
	mov sb, r3
	movs r2, #0x25
	mov r8, r2
	str r2, [sp]
	movs r3, #0
	str r3, [sp, #4]
	movs r3, #4
	str r3, [sp, #8]
	movs r3, #0x14
	str r3, [sp, #0xc]
	mov r2, ip
	mov r3, sb
	bl sub_80172B4
	adds r3, r0, #0
	mov r0, sl
	ldrh r0, [r0]
	adds r5, r0, r5
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	ldrh r6, [r6]
	adds r4, r6, r4
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r1, _08017758 @ =gMain+0x9A
	movs r6, #0
	ldrsh r2, [r1, r6]
	mov r0, r8
	str r0, [sp]
	str r3, [sp, #4]
	movs r0, #7
	str r0, [sp, #8]
	movs r0, #0x15
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r1, r4, #0
	b _080177DE
	.align 2, 0
_08017758: .4byte gMain+0x9A
_0801775C: .4byte gUnknown_08112520
_08017760: .4byte gMain+0x98
_08017764:
	adds r4, r6, #0
	adds r4, #0x9c
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _080177F0
	ldr r0, _080177E8 @ =gUnknown_08112520
	movs r1, #7
	bl sub_8017494
	movs r2, #0x9e
	adds r2, r2, r6
	mov r8, r2
	ldrh r0, [r2]
	subs r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r5, r6, #0
	adds r5, #0xa0
	ldrh r1, [r5]
	subs r1, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r3, _080177EC @ =gMain+0x98
	movs r6, #0
	ldrsh r2, [r3, r6]
	movs r6, #0
	ldrsh r3, [r4, r6]
	subs r2, r2, r3
	movs r3, #0xde
	lsls r3, r3, #1
	mov sb, r3
	movs r4, #0x25
	str r4, [sp]
	str r7, [sp, #4]
	movs r3, #4
	str r3, [sp, #8]
	movs r3, #0x14
	str r3, [sp, #0xc]
	mov r3, sb
	bl sub_80172B4
	adds r3, r0, #0
	mov r6, r8
	ldrh r0, [r6]
	subs r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r5]
	subs r1, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r5, _080177EC @ =gMain+0x98
	movs r6, #0
	ldrsh r2, [r5, r6]
	str r4, [sp]
	str r3, [sp, #4]
	movs r3, #7
	str r3, [sp, #8]
	movs r3, #0x15
	str r3, [sp, #0xc]
_080177DE:
	mov r3, sb
	bl sub_80172B4
	b _0801782C
	.align 2, 0
_080177E8: .4byte gUnknown_08112520
_080177EC: .4byte gMain+0x98
_080177F0:
	ldr r0, _08017858 @ =gUnknown_08112520
	movs r1, #7
	bl sub_8017494
	adds r0, r6, #0
	adds r0, #0x9e
	ldrh r0, [r0]
	subs r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0xa0
	ldrh r1, [r1]
	subs r1, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r3, _0801785C @ =gMain+0x98
	movs r4, #0
	ldrsh r2, [r3, r4]
	movs r3, #0xde
	lsls r3, r3, #1
	movs r4, #0x25
	str r4, [sp]
	str r7, [sp, #4]
	movs r4, #4
	str r4, [sp, #8]
	movs r4, #0x14
	str r4, [sp, #0xc]
	bl sub_80172B4
_0801782C:
	ldr r1, _08017860 @ =gMain
	adds r0, r1, #0
	adds r0, #0x9e
	movs r5, #0
	ldrsh r0, [r0, r5]
	ldr r6, [sp, #0x10]
	adds r0, r0, r6
	adds r1, #0xa0
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r1, r1, r7
	bl sub_801720C
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017858: .4byte gUnknown_08112520
_0801785C: .4byte gMain+0x98
_08017860: .4byte gMain

	thumb_func_start sub_8017864
sub_8017864: @ 0x08017864
	ldr r0, _08017880 @ =gOamObjects
	movs r2, #0x80
	lsls r2, r2, #2
	movs r1, #0xd
	movs r3, #0xbc
	lsls r3, r3, #1
	adds r0, r0, r3
_08017872:
	strh r2, [r0]
	subs r0, #8
	subs r1, #1
	cmp r1, #0
	bge _08017872
	bx lr
	.align 2, 0
_08017880: .4byte gOamObjects

	thumb_func_start sub_8017884
sub_8017884: @ 0x08017884
	push {r4, lr}
	ldr r4, _080178D8 @ =gMain
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0x8e
	lsls r0, r0, #1
	ldrh r1, [r1]
	cmp r1, r0
	bne _080178A0
	adds r0, r4, #0
	adds r0, #0xa0
	ldrh r0, [r0]
	cmp r0, #0x14
	beq _080178D0
_080178A0:
	ldrb r0, [r4, #8]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _080178D0
	bl sub_8017864
	ldr r1, _080178DC @ =gScriptContext
	movs r0, #4
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _080178D0
	adds r0, r4, #0
	adds r0, #0xa6
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080178D0
	bl sub_8017178
	bl sub_80175E4
_080178D0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080178D8: .4byte gMain
_080178DC: .4byte gScriptContext

	thumb_func_start sub_80178E0
sub_80178E0: @ 0x080178E0
	push {lr}
	ldr r3, _0801790C @ =gMain
	adds r1, r3, #0
	adds r1, #0x9e
	movs r2, #0
	movs r0, #0x8e
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x14
	strh r0, [r1]
	adds r1, #6
	movs r0, #1
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x9c
	strh r2, [r0]
	movs r0, #0
	bl sub_8017928
	pop {r0}
	bx r0
	.align 2, 0
_0801790C: .4byte gMain

	thumb_func_start sub_8017910
sub_8017910: @ 0x08017910
	ldr r2, _08017924 @ =gMain
	adds r0, r2, #0
	adds r0, #0xb0
	movs r1, #0x50
	strh r1, [r0]
	subs r0, #0x16
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	bx lr
	.align 2, 0
_08017924: .4byte gMain

	thumb_func_start sub_8017928
sub_8017928: @ 0x08017928
	adds r3, r0, #0
	ldr r1, _08017948 @ =gMain
	adds r2, r1, #0
	adds r2, #0x97
	movs r0, #0
	strb r0, [r2]
	adds r2, #0xb
	strh r0, [r2]
	adds r2, #2
	strh r0, [r2]
	adds r1, #0x96
	ldrb r0, [r1]
	cmp r0, #0
	bne _0801794C
	strb r3, [r1]
	b _0801794E
	.align 2, 0
_08017948: .4byte gMain
_0801794C:
	strh r3, [r2]
_0801794E:
	bx lr

	thumb_func_start sub_8017950
sub_8017950: @ 0x08017950
	ldr r1, _0801796C @ =gMain
	adds r0, r1, #0
	adds r0, #0xa4
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r2, r1, #0
	cmp r0, #0
	ble _08017970
	adds r0, r2, #0
	adds r0, #0x96
	strb r3, [r0]
	b _08017978
	.align 2, 0
_0801796C: .4byte gMain
_08017970:
	adds r1, r2, #0
	adds r1, #0x96
	movs r0, #0
	strb r0, [r1]
_08017978:
	adds r0, r2, #0
	adds r0, #0x97
	movs r1, #0
	strb r1, [r0]
	adds r0, #0xb
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_801798C
sub_801798C: @ 0x0801798C
	push {r4, r5, r6, lr}
	sub sp, #0x14
	mov r1, sp
	ldr r0, _080179B8 @ =gUnknown_0802433C
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	bl sub_8017884
	bl sub_8017E9C
	bl sub_8018118
	ldr r0, _080179BC @ =gMain
	adds r0, #0x96
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080179B8: .4byte gUnknown_0802433C
_080179BC: .4byte gMain

	thumb_func_start sub_80179C0
sub_80179C0: @ 0x080179C0
	ldr r1, _08017A08 @ =gMain
	adds r2, r1, #0
	adds r2, #0xa0
	movs r0, #0x14
	strh r0, [r2]
	adds r0, r1, #0
	adds r0, #0x98
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r5, r1, #0
	cmp r0, #0
	ble _080179DA
	b _08017C6A
_080179DA:
	ldrb r0, [r5, #8]
	cmp r0, #3
	beq _080179EE
	cmp r0, #5
	beq _080179EE
	cmp r0, #6
	beq _080179EE
	cmp r0, #5
	beq _080179EE
	b _08017C6A
_080179EE:
	ldr r1, _08017A0C @ =gUnknown_0801C3EE
	adds r0, r5, #0
	adds r0, #0xb3
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_8007538
	movs r0, #4
	bl sub_8017928
	b _08017C6A
	.align 2, 0
_08017A08: .4byte gMain
_08017A0C: .4byte gUnknown_0801C3EE
_08017A10:
	.byte 0x04, 0x48, 0x01, 0x1C, 0x97, 0x31, 0x0A, 0x78, 0x05, 0x1C, 0x00, 0x2A, 0x04, 0xD0, 0x01, 0x2A
	.byte 0x04, 0xD0, 0x22, 0xE1, 0xB0, 0x37, 0x00, 0x03, 0x01, 0x20, 0x08, 0x70, 0x2B, 0x1C, 0x9E, 0x33
	.byte 0x1A, 0x88, 0x04, 0x3A, 0x1A, 0x80, 0xA8, 0x68, 0x05, 0x49, 0x08, 0x40, 0x05, 0x49, 0x88, 0x42
	.byte 0x0A, 0xD1, 0x10, 0x04, 0x00, 0x14, 0x54, 0x28, 0x00, 0xDD, 0x0E, 0xE1, 0x54, 0x20, 0x09, 0xE0
	.byte 0xFF, 0xFF, 0xFF, 0x00, 0x04, 0x0A, 0x07, 0x00, 0x10, 0x04, 0x00, 0x14, 0x9C, 0x28, 0x00, 0xDD
	.byte 0x03, 0xE1, 0x9C, 0x20, 0x18, 0x80, 0xFF, 0xF7, 0x73, 0xFF, 0xFE, 0xE0, 0x04, 0x48, 0x01, 0x1C
	.byte 0x97, 0x31, 0x0A, 0x78, 0x05, 0x1C, 0x00, 0x2A, 0x04, 0xD0, 0x01, 0x2A, 0x04, 0xD0, 0xF4, 0xE0
	.byte 0xB0, 0x37, 0x00, 0x03, 0x01, 0x20, 0x08, 0x70, 0x2A, 0x1C, 0x9E, 0x32, 0x10, 0x88, 0x04, 0x30
	.byte 0x10, 0x80, 0x00, 0x04, 0x04, 0x49, 0x88, 0x42, 0x00, 0xDC, 0xE6, 0xE0, 0x8E, 0x20, 0x40, 0x00
	.byte 0x10, 0x80, 0xFF, 0xF7, 0x55, 0xFF, 0xE0, 0xE0, 0x00, 0x00, 0x1B, 0x01, 0x05, 0x4C, 0x20, 0x1C
	.byte 0x97, 0x30, 0x00, 0x78, 0x25, 0x1C, 0x01, 0x28, 0x58, 0xD0, 0x01, 0x28, 0x04, 0xDC, 0x00, 0x28
	.byte 0x06, 0xD0, 0xD2, 0xE0, 0xB0, 0x37, 0x00, 0x03, 0x02, 0x28, 0x00, 0xD1, 0x9F, 0xE0, 0xCC, 0xE0
	.byte 0x20, 0x1C, 0x9C, 0x30, 0x00, 0x23, 0xC0, 0x5E, 0x00, 0x28, 0x03, 0xDA, 0x9C, 0x20, 0xFB, 0xF7
	.byte 0xA9, 0xFE, 0x04, 0xE0, 0x00, 0x28, 0x02, 0xDD, 0x4C, 0x20, 0xFB, 0xF7, 0xA3, 0xFE, 0x18, 0x49
	.byte 0x0A, 0x1C, 0x98, 0x32, 0x0B, 0x1C, 0x9C, 0x33, 0x14, 0x88, 0x1D, 0x88, 0x60, 0x1B, 0x00, 0x24
	.byte 0x10, 0x80, 0x00, 0x04, 0x0D, 0x1C, 0x00, 0x28, 0x00, 0xDA, 0x14, 0x80, 0x00, 0x26, 0x90, 0x5F
	.byte 0x50, 0x28, 0x01, 0xDD, 0x50, 0x20, 0x10, 0x80, 0xA3, 0x20, 0x80, 0x00, 0x29, 0x18, 0x00, 0x26
	.byte 0x98, 0x5F, 0x08, 0x60, 0x1C, 0x80, 0x29, 0x1C, 0xA8, 0x31, 0x2B, 0x1C, 0x9A, 0x33, 0x1C, 0x88
	.byte 0x20, 0x04, 0x08, 0x60, 0x2C, 0x1C, 0xAC, 0x34, 0x00, 0x26, 0x90, 0x5F, 0x00, 0x22, 0x99, 0x5E
	.byte 0x40, 0x1A, 0x00, 0x04, 0x20, 0x60, 0x00, 0x28, 0x04, 0xDC, 0x28, 0x21, 0x03, 0xE0, 0x00, 0x00
	.byte 0xB0, 0x37, 0x00, 0x03, 0x64, 0x21, 0x02, 0xF0, 0xC7, 0xFF, 0x20, 0x60, 0x02, 0x49, 0x00, 0x22
	.byte 0x28, 0x20, 0x08, 0x71, 0x2A, 0x76, 0x4C, 0xE0, 0x80, 0x3C, 0x00, 0x03, 0x22, 0x1C, 0xA8, 0x32
	.byte 0x21, 0x1C, 0xAC, 0x31, 0x10, 0x68, 0x09, 0x68, 0x40, 0x18, 0x10, 0x60, 0x02, 0x14, 0x23, 0x1C
	.byte 0x9A, 0x33, 0x1A, 0x80, 0x00, 0x29, 0x07, 0xDC, 0x20, 0x1C, 0x98, 0x30, 0x01, 0x88, 0x00, 0x24
	.byte 0x00, 0x5F, 0x82, 0x42, 0x08, 0xDA, 0x06, 0xE0, 0x20, 0x1C, 0x98, 0x30, 0x01, 0x88, 0x00, 0x26
	.byte 0x80, 0x5F, 0x82, 0x42, 0x00, 0xDD, 0x19, 0x80, 0x0C, 0x4B, 0x18, 0x79, 0x00, 0x28, 0x01, 0xD0
	.byte 0x01, 0x38, 0x18, 0x71, 0x29, 0x1C, 0x08, 0x1C, 0x98, 0x30, 0x0A, 0x1C, 0x9A, 0x32, 0x14, 0x88
	.byte 0x00, 0x88, 0xA0, 0x42, 0x51, 0xD1, 0x18, 0x79, 0x00, 0x28, 0x0C, 0xD0, 0x08, 0x1C, 0xAC, 0x30
	.byte 0x00, 0x68, 0x00, 0x28, 0x04, 0xDC, 0x60, 0x1C, 0x10, 0x80, 0x46, 0xE0, 0x80, 0x3C, 0x00, 0x03
	.byte 0x60, 0x1E, 0x10, 0x80, 0x41, 0xE0, 0xFF, 0xF7, 0xEB, 0xFC, 0x04, 0x1C, 0x00, 0x2C, 0x3C, 0xD1
	.byte 0x4C, 0x20, 0xFB, 0xF7, 0x41, 0xFE, 0x9C, 0x20, 0xFB, 0xF7, 0x3E, 0xFE, 0x28, 0x1C, 0xA2, 0x30
	.byte 0x04, 0x80, 0x29, 0x1C, 0x97, 0x31, 0x08, 0x78, 0x01, 0x30, 0x08, 0x70, 0x2D, 0xE0, 0x21, 0x1C
	.byte 0xA2, 0x31, 0x0A, 0x88, 0x00, 0x23, 0xC8, 0x5E, 0x1D, 0x28, 0x02, 0xDC, 0x50, 0x1C, 0x08, 0x80
	.byte 0x23, 0xE0, 0x22, 0x1C, 0x9E, 0x32, 0x10, 0x88, 0x04, 0x30, 0x10, 0x80, 0x00, 0x04, 0x08, 0x49
	.byte 0x88, 0x42, 0x1A, 0xDD, 0x8E, 0x20, 0x40, 0x00, 0x10, 0x80, 0xFF, 0xF7, 0x89, 0xFE, 0xA3, 0x25
	.byte 0xAD, 0x00, 0x60, 0x19, 0x00, 0x68, 0x00, 0x28, 0x0F, 0xDD, 0x01, 0x20, 0x20, 0x76, 0x0C, 0xE0
	.byte 0x00, 0x00, 0x1B, 0x01, 0x07, 0x4B, 0x1A, 0x1C, 0x97, 0x32, 0x11, 0x78, 0x00, 0x29, 0x04, 0xD1
	.byte 0x01, 0x20, 0x10, 0x70, 0x18, 0x1C, 0xA6, 0x30, 0x01, 0x80
_08017C6A:
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017C74:
	.byte 0xB0, 0x37, 0x00, 0x03

	thumb_func_start sub_8017C78
sub_8017C78: @ 0x08017C78
	ldr r0, _08017C8C @ =gMain
	adds r0, #0x96
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017C86
	cmp r0, #4
	bne _08017C90
_08017C86:
	movs r0, #0
	b _08017C92
	.align 2, 0
_08017C8C: .4byte gMain
_08017C90:
	movs r0, #1
_08017C92:
	bx lr

	thumb_func_start sub_8017C94
sub_8017C94: @ 0x08017C94
	movs r1, #0
	ldr r0, _08017CA8 @ =gMain
	movs r2, #0xa2
	lsls r2, r2, #2
	adds r0, r0, r2
_08017C9E:
	ldrb r2, [r0]
	cmp r2, #2
	bhi _08017CAC
	movs r0, #0
	b _08017CB6
	.align 2, 0
_08017CA8: .4byte gMain
_08017CAC:
	adds r0, #0x14
	adds r1, #1
	cmp r1, #1
	ble _08017C9E
	movs r0, #1
_08017CB6:
	bx lr

	thumb_func_start sub_8017CB8
sub_8017CB8: @ 0x08017CB8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldrb r0, [r5]
	cmp r0, #5
	bls _08017CC8
	b _08017E94
_08017CC8:
	lsls r0, r0, #2
	ldr r1, _08017CD4 @ =_08017CD8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08017CD4: .4byte _08017CD8
_08017CD8: @ jump table
	.4byte _08017CF0 @ case 0
	.4byte _08017D78 @ case 1
	.4byte _08017DDC @ case 2
	.4byte _08017E0A @ case 3
	.4byte _08017E5C @ case 4
	.4byte _08017E94 @ case 5
_08017CF0:
	cmp r4, #0
	bne _08017D18
	ldr r0, _08017D14 @ =0xFFC00000
	str r0, [r5, #4]
	bl Random
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	str r0, [r5, #8]
	movs r0, #0x98
	lsls r0, r0, #0xc
	b _08017D34
	.align 2, 0
_08017D14: .4byte 0xFFC00000
_08017D18:
	movs r0, #0x98
	lsls r0, r0, #0x11
	str r0, [r5, #4]
	bl Random
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x78
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	str r0, [r5, #8]
	ldr r0, _08017D6C @ =0xFFF68000
_08017D34:
	str r0, [r5, #0xc]
	bl Random
	lsls r0, r0, #0x18
	movs r1, #0xf0
	lsls r1, r1, #0x14
	ands r1, r0
	lsrs r1, r1, #0xa
	ldr r0, _08017D70 @ =0xFFFE0000
	adds r1, r1, r0
	str r1, [r5, #0x10]
	ldr r0, _08017D74 @ =gMain
	ldrh r1, [r0, #0x2e]
	cmp r1, #0x78
	beq _08017D54
	b _08017E8E
_08017D54:
	movs r1, #0x3a
	ldrsh r0, [r0, r1]
	movs r1, #0xa0
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, [r5, #8]
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r5, #8]
	b _08017E8E
	.align 2, 0
_08017D6C: .4byte 0xFFF68000
_08017D70: .4byte 0xFFFE0000
_08017D74: .4byte gMain
_08017D78:
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	adds r1, r1, r0
	str r1, [r5, #4]
	ldr r2, [r5, #8]
	ldr r0, [r5, #0x10]
	adds r2, r2, r0
	str r2, [r5, #8]
	asrs r1, r1, #0x10
	strh r1, [r3, #0x10]
	asrs r0, r2, #0x10
	strh r0, [r3, #0x12]
	ldr r0, _08017DC0 @ =gMain
	ldrh r0, [r0, #0x2e]
	cmp r0, #0x78
	bne _08017D9E
	ldr r1, _08017DC4 @ =0xFFFF0000
	adds r0, r2, r1
	str r0, [r5, #8]
_08017D9E:
	cmp r4, #0
	bne _08017DCC
	ldr r1, [r5, #4]
	ldr r0, _08017DC8 @ =0x012FFFFF
	cmp r1, r0
	ble _08017E94
_08017DAA:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	bl Random
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	strb r0, [r5, #1]
	b _08017E94
	.align 2, 0
_08017DC0: .4byte gMain
_08017DC4: .4byte 0xFFFF0000
_08017DC8: .4byte 0x012FFFFF
_08017DCC:
	ldr r1, [r5, #4]
	ldr r0, _08017DD8 @ =0xFFC00000
	cmp r1, r0
	bgt _08017E94
	b _08017DAA
	.align 2, 0
_08017DD8: .4byte 0xFFC00000
_08017DDC:
	ldr r0, _08017DF0 @ =gMain
	movs r1, #0xac
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08017DF4
	movs r0, #3
	b _08017E92
	.align 2, 0
_08017DF0: .4byte gMain
_08017DF4:
	movs r0, #0x98
	lsls r0, r0, #1
	strh r0, [r3, #0x10]
	ldrb r0, [r5, #1]
	subs r1, r0, #1
	strb r1, [r5, #1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08017E94
	movs r0, #0
	b _08017E92
_08017E0A:
	bl sub_8017C94
	cmp r0, #0
	beq _08017E94
	cmp r4, #0
	bne _08017E20
	ldr r0, _08017E1C @ =0xFFC00000
	b _08017E24
	.align 2, 0
_08017E1C: .4byte 0xFFC00000
_08017E20:
	movs r0, #0x98
	lsls r0, r0, #0x11
_08017E24:
	str r0, [r5, #4]
	bl Random
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x50
	bl __umodsi3
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #8
	str r4, [r5, #8]
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	subs r0, r0, r1
	movs r1, #0x60
	bl __divsi3
	str r0, [r5, #0xc]
	movs r0, #0xf0
	lsls r0, r0, #0xe
	subs r0, r0, r4
	movs r1, #0x60
	bl __divsi3
	str r0, [r5, #0x10]
	b _08017E8E
_08017E5C:
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r2, [r5, #8]
	ldr r1, [r5, #0x10]
	adds r2, r2, r1
	str r2, [r5, #8]
	asrs r0, r0, #0x10
	strh r0, [r3, #0x10]
	asrs r2, r2, #0x10
	strh r2, [r3, #0x12]
	subs r0, #0x7f
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08017E94
	cmp r2, #0x3a
	ble _08017E94
	cmp r2, #0x3c
	bgt _08017E94
	movs r0, #0x80
	strh r0, [r3, #0x10]
	movs r0, #0x3c
	strh r0, [r3, #0x12]
_08017E8E:
	ldrb r0, [r5]
	adds r0, #1
_08017E92:
	strb r0, [r5]
_08017E94:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8017E9C
sub_8017E9C: @ 0x08017E9C
	push {r4, lr}
	movs r0, #0x8f
	bl sub_8013EB0
	adds r4, r0, #0
	cmp r4, #0
	beq _08017EC0
	ldr r0, _08017EE8 @ =gMain+0x288
	movs r1, #0
	adds r2, r4, #0
	bl sub_8017CB8
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r4, #0
	movs r1, #0
	bl sub_8014074
_08017EC0:
	movs r0, #0x90
	bl sub_8013EB0
	adds r4, r0, #0
	cmp r4, #0
	beq _08017EE2
	ldr r0, _08017EEC @ =gMain+0x29C
	movs r1, #1
	adds r2, r4, #0
	bl sub_8017CB8
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r4, #0
	movs r1, #1
	bl sub_8014074
_08017EE2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017EE8: .4byte gMain+0x288
_08017EEC: .4byte gMain+0x29C

	thumb_func_start sub_8017EF0
sub_8017EF0: @ 0x08017EF0
	push {r4, lr}
	sub sp, #4
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	ldr r0, _08017F20 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _08017F24 @ =gMain+0x288
	str r2, [r0, #4]
	ldr r3, _08017F28 @ =0x8100000A
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r4, [r1]
	str r1, [r0]
	adds r2, #0x14
	str r2, [r0, #4]
	str r3, [r0, #8]
	ldr r0, [r0, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017F20: .4byte 0x040000D4
_08017F24: .4byte gMain+0x288
_08017F28: .4byte 0x8100000A

	thumb_func_start sub_8017F2C
sub_8017F2C: @ 0x08017F2C
	ldr r0, _08017F3C @ =gMain
	movs r1, #0xac
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_08017F3C: .4byte gMain

	thumb_func_start sub_8017F40
sub_8017F40: @ 0x08017F40
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08017FCC @ =0xFFF00000
	str r0, [r4, #8]
	bl Random
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r1, #0
	asrs r0, r0, #8
	lsls r0, r0, #8
	subs r0, r1, r0
	adds r0, #0x40
	lsls r0, r0, #0x10
	str r0, [r4, #4]
	bl Random
	lsls r0, r0, #0x18
	movs r1, #0xf0
	lsls r1, r1, #0x14
	ands r1, r0
	lsrs r1, r1, #0x10
	ldr r0, _08017FD0 @ =0xFFFF0000
	adds r1, r1, r0
	str r1, [r4, #0xc]
	bl Random
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x18
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r2, r0, r1
	str r2, [r4, #0x10]
	cmp r5, #7
	ble _08017FA0
	ldr r0, [r4, #0xc]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r4, #0xc]
	lsrs r0, r2, #1
	str r0, [r4, #0x10]
_08017FA0:
	bl Random
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r1, #0
	asrs r0, r0, #8
	lsls r0, r0, #8
	subs r0, r1, r0
	str r0, [r4, #0x14]
	bl Random
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r4, #0x18]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017FCC: .4byte 0xFFF00000
_08017FD0: .4byte 0xFFFF0000

	thumb_func_start sub_8017FD4
sub_8017FD4: @ 0x08017FD4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	strb r5, [r4]
	bl Random
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r1, #0
	asrs r0, r0, #8
	lsls r0, r0, #8
	subs r0, r1, r0
	strh r0, [r4, #0x22]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8017F40
	ldrb r0, [r4]
	adds r0, #0x7f
	movs r2, #6
	ldrsh r1, [r4, r2]
	movs r3, #0xa
	ldrsh r2, [r4, r3]
	bl sub_801484C
	str r0, [r4, #0x1c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8018010
sub_8018010: @ 0x08018010
	push {lr}
	ldr r0, [r0, #0x1c]
	bl sub_8014F94
	pop {r0}
	bx r0

	thumb_func_start sub_801801C
sub_801801C: @ 0x0801801C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4]
	adds r0, #0x7f
	bl sub_8013EB0
	cmp r0, #0
	beq _080180AC
	ldrh r1, [r4, #0x22]
	movs r2, #0x22
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bgt _080180A8
	ldr r0, [r4, #4]
	ldr r3, [r4, #0xc]
	adds r5, r0, r3
	str r5, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #8]
	ldr r0, _080180A0 @ =gMain
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08018080
	ldr r6, _080180A4 @ =gUnknown_0801C158
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r1, r1, r0
	adds r2, r1, #0
	str r1, [r4, #0x14]
	adds r0, r1, #0
	cmp r1, #0
	bge _08018066
	adds r0, #0xff
_08018066:
	asrs r0, r0, #8
	lsls r0, r0, #8
	subs r0, r2, r0
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r3, r0
	movs r1, #0xff
	bl __divsi3
	adds r0, r5, r0
	str r0, [r4, #4]
_08018080:
	ldr r0, [r4, #0x1c]
	movs r2, #6
	ldrsh r1, [r4, r2]
	movs r3, #0xa
	ldrsh r2, [r4, r3]
	bl sub_8013FB8
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0xa9
	ble _080180AC
	ldrb r1, [r4]
	adds r0, r4, #0
	bl sub_8017F40
	b _080180AC
	.align 2, 0
_080180A0: .4byte gMain
_080180A4: .4byte gUnknown_0801C158
_080180A8:
	subs r0, r1, #1
	strh r0, [r4, #0x22]
_080180AC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80180B4
sub_80180B4: @ 0x080180B4
	push {r4, r5, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _080180EC @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r2, _080180F0 @ =gUnknown_03006390
	str r2, [r1, #4]
	ldr r0, _080180F4 @ =0x81000090
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r4, #0
	adds r5, r2, #0
_080180D2:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8017FD4
	adds r5, #0x24
	adds r4, #1
	cmp r4, #0xf
	ble _080180D2
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080180EC: .4byte 0x040000D4
_080180F0: .4byte gUnknown_03006390
_080180F4: .4byte 0x81000090

	thumb_func_start sub_80180F8
sub_80180F8: @ 0x080180F8
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08018114 @ =gUnknown_03006390
_080180FE:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8018010
	adds r5, #0x24
	adds r4, #1
	cmp r4, #0xf
	ble _080180FE
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018114: .4byte gUnknown_03006390

	thumb_func_start sub_8018118
sub_8018118: @ 0x08018118
	push {r4, r5, lr}
	ldr r5, _08018134 @ =gUnknown_03006390
	movs r4, #0xf
_0801811E:
	adds r0, r5, #0
	bl sub_801801C
	adds r5, #0x24
	subs r4, #1
	cmp r4, #0
	bge _0801811E
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018134: .4byte gUnknown_03006390

	thumb_func_start sub_8018138
sub_8018138: @ 0x08018138
	push {r4, lr}
	ldr r1, _08018164 @ =gInvestigation
	ldrh r4, [r1]
	subs r4, #0xe
	strh r4, [r1]
	ldr r3, _08018168 @ =gIORegisters
	lsrs r2, r4, #1
	movs r0, #0x40
	subs r0, r0, r2
	lsls r0, r0, #8
	str r0, [r3, #0x20]
	ldrh r1, [r1]
	lsrs r1, r1, #2
	movs r0, #0x20
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [r3, #0x24]
	strh r4, [r3, #0x18]
	strh r4, [r3, #0x1e]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08018164: .4byte gInvestigation
_08018168: .4byte gIORegisters

	thumb_func_start sub_801816C
sub_801816C: @ 0x0801816C
	push {r4, r5, lr}
	ldr r1, _080181F4 @ =gInvestigation
	movs r3, #0
	movs r0, #0xe0
	strh r0, [r1]
	ldr r2, _080181F8 @ =gIORegisters
	adds r4, r2, #0
	adds r4, #0x4a
	ldr r0, _080181FC @ =0x0000FFF8
	ldrh r1, [r4]
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	ldr r1, _08018200 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r4]
	ldr r0, _08018204 @ =0x00001E86
	strh r0, [r2, #4]
	ldr r0, _08018208 @ =0xFFFFC000
	str r0, [r2, #0x20]
	ldr r0, _0801820C @ =0xFFFFE000
	str r0, [r2, #0x24]
	strh r3, [r2, #0x18]
	strh r3, [r2, #0x1a]
	strh r3, [r2, #0x1c]
	strh r3, [r2, #0x1e]
	ldr r0, _08018210 @ =gUnknown_08477C38
	ldr r5, _08018214 @ =gUnknown_02036500
	adds r1, r5, #0
	bl LZ77UnCompWram
	ldr r4, _08018218 @ =0x040000D4
	str r5, [r4]
	ldr r0, _0801821C @ =0x06004000
	str r0, [r4, #4]
	ldr r0, _08018220 @ =0x80000980
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08018224 @ =gUnknown_08478370
	adds r1, r5, #0
	bl LZ77UnCompWram
	str r5, [r4]
	ldr r0, _08018228 @ =gUnknown_03000000
	str r0, [r4, #4]
	ldr r0, _0801822C @ =0x80000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08018230 @ =gUnknown_084783F8
	adds r1, r5, #0
	bl LZ77UnCompWram
	str r5, [r4]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r4, #4]
	ldr r0, _08018234 @ =0x80000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, _08018238 @ =0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_8018138
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080181F4: .4byte gInvestigation
_080181F8: .4byte gIORegisters
_080181FC: .4byte 0x0000FFF8
_08018200: .4byte 0x0000F7FF
_08018204: .4byte 0x00001E86
_08018208: .4byte 0xFFFFC000
_0801820C: .4byte 0xFFFFE000
_08018210: .4byte gUnknown_08477C38
_08018214: .4byte gUnknown_02036500
_08018218: .4byte 0x040000D4
_0801821C: .4byte 0x06004000
_08018220: .4byte 0x80000980
_08018224: .4byte gUnknown_08478370
_08018228: .4byte gUnknown_03000000
_0801822C: .4byte 0x80000400
_08018230: .4byte gUnknown_084783F8
_08018234: .4byte 0x80000100
_08018238: .4byte 0x0000FFFF

	thumb_func_start sub_801823C
sub_801823C: @ 0x0801823C
	push {r4, r5, lr}
	ldr r4, _08018278 @ =gIORegisters
	adds r2, r4, #0
	adds r2, #0x4a
	ldr r0, _0801827C @ =0x0000FFF8
	ldrh r1, [r2]
	ands r0, r1
	movs r5, #0
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	movs r0, #0x80
	bl CopyBGDataToVram
	movs r0, #0xf8
	lsls r0, r0, #6
	strh r0, [r4, #4]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	strh r5, [r0]
	bl InitBGs
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018278: .4byte gIORegisters
_0801827C: .4byte 0x0000FFF8

	thumb_func_start sub_8018280
sub_8018280: @ 0x08018280
	push {r4, lr}
	ldr r0, _080182AC @ =gMain+0x2B4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080182EE
	cmp r0, #3
	bne _080182B0
	movs r0, #0x44
	bl sub_8013EB0
	cmp r0, #0
	beq _0801829C
	bl sub_8014F94
_0801829C:
	movs r0, #0x45
	bl sub_8013EB0
	cmp r0, #0
	beq _080182EE
	bl sub_8014F94
	b _080182EE
	.align 2, 0
_080182AC: .4byte gMain+0x2B4
_080182B0:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080182BE
	movs r4, #0x44
	movs r0, #0x45
	b _080182C2
_080182BE:
	movs r4, #0x45
	movs r0, #0x44
_080182C2:
	bl sub_8013EB0
	cmp r0, #0
	beq _080182CE
	bl sub_8014F94
_080182CE:
	adds r0, r4, #0
	bl sub_8013EB0
	cmp r0, #0
	bne _080182DE
	adds r0, r4, #0
	bl sub_801480C
_080182DE:
	adds r0, r4, #0
	bl sub_8013EB0
	ldr r2, _080182F4 @ =gInvestigation
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	bl sub_8013FB8
_080182EE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080182F4: .4byte gInvestigation

	thumb_func_start sub_80182F8
sub_80182F8: @ 0x080182F8
	ldr r2, _0801831C @ =gOamObjects+0x1C0
	movs r3, #0
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r2]
	cmp r0, #0
	beq _08018348
	ldr r0, _08018320 @ =gMain
	movs r1, #0x3c
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08018330
	ldr r0, _08018324 @ =0x00004020
	strh r0, [r2]
	ldr r0, _08018328 @ =0x000080D0
	strh r0, [r2, #2]
	ldr r0, _0801832C @ =0x00007188
	b _08018346
	.align 2, 0
_0801831C: .4byte gOamObjects+0x1C0
_08018320: .4byte gMain
_08018324: .4byte 0x00004020
_08018328: .4byte 0x000080D0
_0801832C: .4byte 0x00007188
_08018330:
	cmp r0, #0xf0
	beq _08018338
	cmp r0, #0x78
	bne _08018348
_08018338:
	ldr r0, _0801834C @ =0x00004020
	strh r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r2, #2]
	movs r0, #0xe3
	lsls r0, r0, #7
_08018346:
	strh r0, [r2, #4]
_08018348:
	bx lr
	.align 2, 0
_0801834C: .4byte 0x00004020

	thumb_func_start sub_8018350
sub_8018350: @ 0x08018350
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #1
	rsbs r5, r5, #0
	movs r4, #0
	ldr r0, _080183CC @ =gUnknown_081128E0
	mov ip, r0
	ldr r1, _080183D0 @ =gMain
	mov r8, r1
	ldr r6, _080183D4 @ =gInvestigation
_08018366:
	lsls r0, r4, #4
	mov r2, ip
	adds r1, r0, r2
	ldrh r3, [r1, #4]
	ldrh r7, [r1]
	adds r0, r3, r7
	ldrh r2, [r1, #8]
	adds r0, r2, r0
	ldrh r3, [r1, #0xc]
	adds r0, r3, r0
	asrs r3, r0, #2
	ldrh r7, [r1, #6]
	ldrh r2, [r1, #2]
	adds r0, r7, r2
	ldrh r7, [r1, #0xa]
	adds r0, r7, r0
	ldrh r1, [r1, #0xe]
	adds r0, r1, r0
	asrs r2, r0, #2
	mov r1, r8
	movs r7, #0x3c
	ldrsh r0, [r1, r7]
	ldrh r1, [r6]
	adds r0, r1, r0
	subs r0, r3, r0
	cmp r0, #0
	bge _0801839E
	rsbs r0, r0, #0
_0801839E:
	adds r1, r0, #0
	mov r3, r8
	movs r7, #0x3e
	ldrsh r0, [r3, r7]
	ldrh r3, [r6, #2]
	adds r0, r3, r0
	subs r0, r2, r0
	cmp r0, #0
	bge _080183B2
	rsbs r0, r0, #0
_080183B2:
	adds r1, r1, r0
	cmp r1, r5
	bhs _080183BA
	adds r5, r1, #0
_080183BA:
	adds r4, #1
	cmp r4, #0x15
	ble _08018366
	adds r0, r5, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080183CC: .4byte gUnknown_081128E0
_080183D0: .4byte gMain
_080183D4: .4byte gInvestigation

	thumb_func_start sub_80183D8
sub_80183D8: @ 0x080183D8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r6, _080183FC @ =gMain+0x2B4
	movs r7, #1
	rsbs r7, r7, #0
	ldrb r0, [r6]
	cmp r0, #1
	beq _08018400
	cmp r0, #1
	bgt _080183EE
	b _08018678
_080183EE:
	cmp r0, #2
	beq _08018444
	cmp r0, #3
	bne _080183F8
	b _0801863C
_080183F8:
	b _08018678
	.align 2, 0
_080183FC: .4byte gMain+0x2B4
_08018400:
	ldr r3, _08018438 @ =gInvestigation
	ldrh r1, [r3]
	ldrb r2, [r3, #9]
	subs r0, r1, r2
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3]
	adds r0, r2, #0
	subs r0, #1
	strb r0, [r3, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801841C
	b _08018678
_0801841C:
	ldr r2, _0801843C @ =gScriptContext
	ldr r0, _08018440 @ =0x0000FF7F
	ldrh r5, [r2]
	ands r0, r5
	movs r5, #0x84
	lsls r5, r5, #1
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
	strb r0, [r3, #9]
	ldrb r0, [r6]
	adds r0, #1
	b _08018676
	.align 2, 0
_08018438: .4byte gInvestigation
_0801843C: .4byte gScriptContext
_08018440: .4byte 0x0000FF7F
_08018444:
	ldr r0, _0801847C @ =0xFFFFFD4C
	adds r2, r6, r0
	ldr r1, _08018480 @ =gInvestigation
	ldrh r3, [r2, #0x3c]
	ldrh r4, [r1]
	adds r0, r3, r4
	lsls r0, r0, #0x10
	ldr r3, _08018484 @ =0xFFFF0000
	ldrh r2, [r2, #0x3e]
	ldrh r1, [r1, #2]
	adds r1, r2, r1
	lsls r1, r1, #0x10
	ldr r2, _08018488 @ =0x0000FFFF
	lsrs r0, r0, #0x10
	orrs r0, r1
	str r0, [sp]
	ldr r0, [sp, #4]
	ands r0, r3
	movs r1, #1
	orrs r0, r1
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [sp, #4]
	movs r5, #0
	ldr r4, _0801848C @ =gUnknown_081128E0
	b _08018494
	.align 2, 0
_0801847C: .4byte 0xFFFFFD4C
_08018480: .4byte gInvestigation
_08018484: .4byte 0xFFFF0000
_08018488: .4byte 0x0000FFFF
_0801848C: .4byte gUnknown_081128E0
_08018490:
	adds r4, #0x10
	adds r5, #1
_08018494:
	cmp r5, #0x14
	bgt _080184A6
	mov r0, sp
	adds r1, r4, #0
	bl sub_8014508
	cmp r0, #0
	beq _08018490
	adds r7, r5, #0
_080184A6:
	ldr r0, _080184CC @ =gMain
	ldr r0, [r0]
	movs r1, #3
	bl __umodsi3
	cmp r0, #0
	bne _0801853E
	ldr r0, _080184D0 @ =gJoypad
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080184D8
	ldr r1, _080184D4 @ =gInvestigation
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	b _08018514
	.align 2, 0
_080184CC: .4byte gMain
_080184D0: .4byte gJoypad
_080184D4: .4byte gInvestigation
_080184D8:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080184F0
	ldr r1, _080184EC @ =gInvestigation
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _08018514
	.align 2, 0
_080184EC: .4byte gInvestigation
_080184F0:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08018504
	ldr r1, _08018500 @ =gInvestigation
	ldrh r0, [r1, #2]
	subs r0, #1
	b _08018512
	.align 2, 0
_08018500: .4byte gInvestigation
_08018504:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08018514
	ldr r1, _08018578 @ =gInvestigation
	ldrh r0, [r1, #2]
	adds r0, #1
_08018512:
	strh r0, [r1, #2]
_08018514:
	ldr r1, _08018578 @ =gInvestigation
	ldrh r0, [r1]
	cmp r0, #2
	bhi _08018520
	movs r0, #3
	strh r0, [r1]
_08018520:
	ldrh r2, [r1]
	cmp r2, #0xee
	bls _0801852A
	movs r0, #0xee
	strh r0, [r1]
_0801852A:
	ldrh r3, [r1, #2]
	cmp r3, #2
	bhi _08018534
	movs r0, #3
	strh r0, [r1, #2]
_08018534:
	ldrh r4, [r1, #2]
	cmp r4, #0x9e
	bls _0801853E
	movs r0, #0x9e
	strh r0, [r1, #2]
_0801853E:
	movs r0, #1
	bl sub_80182F8
	ldr r0, _0801857C @ =gJoypad
	ldrh r1, [r0, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080185D4
	movs r0, #0x2b
	bl sub_8013834
	ldr r0, _08018580 @ =gScriptContext
	ldr r1, _08018584 @ =0x0000FEF7
	ldrh r2, [r0]
	ands r1, r2
	strh r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq _0801858C
	ldr r0, _08018588 @ =gUnknown_08112A40
	lsls r1, r5, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl sub_8007538
	b _08018594
	.align 2, 0
_08018578: .4byte gInvestigation
_0801857C: .4byte gJoypad
_08018580: .4byte gScriptContext
_08018584: .4byte 0x0000FEF7
_08018588: .4byte gUnknown_08112A40
_0801858C:
	ldr r0, _080185BC @ =gUnknown_08112A40
	ldrh r0, [r0, #0x2a]
	bl sub_8007538
_08018594:
	ldr r1, _080185C0 @ =gScriptContext
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	ldrh r4, [r1]
	orrs r0, r4
	strh r0, [r1]
	ldr r1, _080185C4 @ =gMain
	movs r0, #1
	strb r0, [r1, #0x18]
	ldr r1, _080185C8 @ =gIORegisters
	adds r2, r1, #0
	adds r2, #0x48
	ldr r0, _080185CC @ =0x00001942
	strh r0, [r2]
	adds r1, #0x4c
	ldr r0, _080185D0 @ =0x0000071F
	strh r0, [r1]
	b _0801860A
	.align 2, 0
_080185BC: .4byte gUnknown_08112A40
_080185C0: .4byte gScriptContext
_080185C4: .4byte gMain
_080185C8: .4byte gIORegisters
_080185CC: .4byte 0x00001942
_080185D0: .4byte 0x0000071F
_080185D4:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801860A
	movs r0, #0x2b
	bl sub_8013834
	ldr r1, _080185FC @ =gMain
	adds r2, r1, #0
	adds r2, #0x36
	movs r0, #1
	strb r0, [r2]
	movs r5, #0x3c
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bne _08018600
	adds r1, #0x44
	movs r0, #6
	b _08018604
	.align 2, 0
_080185FC: .4byte gMain
_08018600:
	adds r1, #0x44
	movs r0, #0xfa
_08018604:
	strb r0, [r1]
	movs r0, #3
	strb r0, [r6]
_0801860A:
	bl sub_8018350
	adds r4, r0, #0
	adds r3, r4, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq _0801861C
	movs r3, #1
_0801861C:
	ldr r2, _08018638 @ =gInvestigation
	ldrb r0, [r2, #9]
	adds r1, r0, #1
	strb r1, [r2, #9]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r3
	blt _08018678
	movs r0, #0
	strb r0, [r2, #9]
	movs r0, #0xac
	bl sub_8013834
	b _08018678
	.align 2, 0
_08018638: .4byte gInvestigation
_0801863C:
	movs r0, #0
	bl sub_80182F8
	ldr r1, _08018654 @ =0xFFFFFD4C
	adds r0, r6, r1
	movs r2, #0x3c
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _08018658
	cmp r0, #0xf0
	bne _08018678
	b _08018662
	.align 2, 0
_08018654: .4byte 0xFFFFFD4C
_08018658:
	ldr r0, _08018688 @ =gInvestigation
	movs r1, #0xe6
	strh r1, [r0]
	movs r1, #0x50
	strh r1, [r0, #2]
_08018662:
	ldr r0, _0801868C @ =gMain
	ldrh r0, [r0, #0x3c]
	cmp r0, #0xf0
	bne _08018674
	ldr r0, _08018688 @ =gInvestigation
	movs r1, #0xb
	strh r1, [r0]
	movs r1, #0x50
	strh r1, [r0, #2]
_08018674:
	movs r0, #2
_08018676:
	strb r0, [r6]
_08018678:
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_8018280
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018688: .4byte gInvestigation
_0801868C: .4byte gMain

	thumb_func_start sub_8018690
sub_8018690: @ 0x08018690
	push {r4, lr}
	ldr r3, _080186D4 @ =gMain+0x2B4
	ldr r1, _080186D8 @ =gScriptContext
	movs r0, #0x80
	movs r2, #0
	ldrh r4, [r1]
	orrs r0, r4
	strh r0, [r1]
	ldr r1, _080186DC @ =gInvestigation
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0x4e
	strh r0, [r1, #2]
	movs r0, #0xf
	strb r0, [r1, #9]
	ldr r1, _080186E0 @ =0xFFFFFD4C
	adds r0, r3, r1
	strb r2, [r0, #0x18]
	strb r2, [r0, #0x19]
	ldr r0, _080186E4 @ =gUnknown_03002080
	movs r2, #0
	movs r1, #0xff
	ldr r4, _080186E8 @ =0x000004FE
	adds r0, r0, r4
_080186C0:
	strh r2, [r0]
	subs r0, #2
	subs r1, #1
	cmp r1, #0
	bge _080186C0
	movs r0, #1
	strb r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080186D4: .4byte gMain+0x2B4
_080186D8: .4byte gScriptContext
_080186DC: .4byte gInvestigation
_080186E0: .4byte 0xFFFFFD4C
_080186E4: .4byte gUnknown_03002080
_080186E8: .4byte 0x000004FE

	thumb_func_start sub_80186EC
sub_80186EC: @ 0x080186EC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r0, _08018718 @ =gMain+0x2B4
	mov r8, r0
	ldr r4, _0801871C @ =gInvestigation
	ldrh r5, [r4]
	ldrh r6, [r4, #2]
	bl sub_8018690
	movs r0, #0
	strh r5, [r4]
	strh r6, [r4, #2]
	strb r0, [r4, #9]
	movs r0, #2
	mov r1, r8
	strb r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08018718: .4byte gMain+0x2B4
_0801871C: .4byte gInvestigation

	thumb_func_start sub_8018720
sub_8018720: @ 0x08018720
	push {r4, lr}
	ldr r4, _0801874C @ =gMain+0x2B4
	movs r0, #0x44
	bl sub_8013EB0
	cmp r0, #0
	beq _08018732
	bl sub_8014F94
_08018732:
	movs r0, #0x45
	bl sub_8013EB0
	cmp r0, #0
	beq _08018740
	bl sub_8014F94
_08018740:
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801874C: .4byte gMain+0x2B4

	thumb_func_start nullsub_12
nullsub_12: @ 0x08018750
	bx lr
	.align 2, 0

