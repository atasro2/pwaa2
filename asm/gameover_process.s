	.include "asm/macros.inc"
	.syntax unified

	thumb_func_start GameOverScreenProcess
GameOverScreenProcess: @ 0x0800AC44
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
	ldr r0, _0800AD48 @ =gBG2MapBuffer
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
_0800AD48: .4byte gBG2MapBuffer
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
	ldr r0, _0800AE20 @ =gBG2MapBuffer
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
	bl PlaySE
	ldrb r0, [r6, #9]
	adds r0, #1
	movs r1, #0
_0800AE16:
	strb r0, [r6, #9]
	strb r1, [r6, #0xa]
	b _0800AE6A
	.align 2, 0
_0800AE1C: .4byte 0x000001FF
_0800AE20: .4byte gBG2MapBuffer
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
