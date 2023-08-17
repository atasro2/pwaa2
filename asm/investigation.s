	.include "asm/macros.inc"
	.syntax unified

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
	ldr r1, _08011074 @ =gGfxPalChoiceSelected
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
_08011074: .4byte gGfxPalChoiceSelected
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
	bl SetInactiveActionButtons
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
	bl PlayBGM
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
