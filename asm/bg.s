	.include "asm/macros.inc"
	.syntax unified

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
