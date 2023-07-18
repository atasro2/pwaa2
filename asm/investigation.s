	.include "asm/macros.inc"
	.syntax unified

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
	ldr r1, _08010A74 @ =gComputedGotoTable10A3C
	ldrb r4, [r5, #0xa]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08010A74: .4byte gComputedGotoTable10A3C
_08010A78:
	bl sub_80178E0
	ldrb r0, [r6, #9]
	movs r4, #0
	strb r0, [r6, #8]
	ldrb r0, [r6, #9]
	bl sub_8016124
	bl sub_8016150
	bl sub_8016DFC
	ldr r0, _08010ABC @ =gMain
	ldr r1, _08010AC0 @ =0x0000024A
	adds r0, r0, r1
	strb r4, [r0]
	movs r0, #1
	ldrb r2, [r7, #0xb]
	orrs r0, r2
	strb r0, [r7, #0xb]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
_08010AA6:
	bl sub_801622C
	bl sub_8016214
	cmp r0, #0
	bne _08010AB4
	b _08010F92
_08010AB4:
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	b _08010F92
	.align 2, 0
_08010ABC: .4byte gMain
_08010AC0: .4byte 0x0000024A
_08010AC4:
	ldrh r0, [r6, #0xa]
	bl ChangeScriptSection
	ldr r1, _08010B6C @ =gMain
	movs r0, #1
	strb r0, [r1, #0x18]
	movs r0, #3
	strb r0, [r5, #0xa]
_08010AD4:
	ldr r4, _08010B6C @ =gMain
	ldr r0, _08010B70 @ =0x0000024A
	adds r1, r4, r0
	movs r0, #1
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08010B2C
	ldr r1, _08010B74 @ =gJoypad
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r1, [r1, #2]
	cmp r1, r0
	bne _08010B2C
	movs r1, #0x92
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08010B2C
	adds r0, r5, #0
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08010B2C
	ldr r1, _08010B78 @ =gScriptContext
	movs r0, #0xd
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08010B2C
	bl sub_8017864
	bl sub_80170AC
	movs r0, #0x31
	bl PlaySE
	ldr r0, [r4, #8]
	str r0, [r5, #0xc]
	ldr r0, _08010B7C @ =0x03000007
	str r0, [r5, #8]
_08010B2C:
	ldr r4, _08010B6C @ =gMain
	ldr r2, _08010B70 @ =0x0000024A
	adds r1, r4, r2
	movs r0, #2
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08010B80
	bl sub_801715C
	cmp r0, #0
	bne _08010B80
	movs r1, #0x92
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r4, [r0]
	cmp r4, #0
	bne _08010B80
	ldr r1, _08010B74 @ =gJoypad
	movs r0, #0x80
	lsls r0, r0, #2
	ldrh r1, [r1, #2]
	cmp r1, r0
	bne _08010B80
	movs r0, #0x2c
	bl PlaySE
	movs r0, #8
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xb]
	b _08010D9C
	.align 2, 0
_08010B6C: .4byte gMain
_08010B70: .4byte 0x0000024A
_08010B74: .4byte gJoypad
_08010B78: .4byte gScriptContext
_08010B7C: .4byte 0x03000007
_08010B80:
	ldr r4, _08010C00 @ =gMain
	ldr r2, _08010C04 @ =0x0000024A
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08010BD4
	bl sub_801715C
	cmp r0, #0
	bne _08010BD4
	ldr r1, _08010C08 @ =gJoypad
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r1, [r1, #2]
	cmp r1, r0
	bne _08010BD4
	bl sub_80175C0
	cmp r0, #0
	bne _08010BD4
	adds r0, r5, #0
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08010BD4
	ldr r1, _08010C0C @ =gScriptContext
	movs r0, #5
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08010BD4
	bl sub_8017864
	movs r0, #0x31
	bl PlaySE
	ldr r0, [r4, #8]
	str r0, [r5, #0xc]
	ldr r0, _08010C10 @ =0x04000007
	str r0, [r5, #8]
_08010BD4:
	adds r0, r5, #0
	adds r0, #0x98
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	ble _08010BE2
	b _08010F92
_08010BE2:
	adds r0, r5, #0
	adds r0, #0x9a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _08010BF0
	b _08010F92
_08010BF0:
	bl sub_8017C78
	cmp r0, #0
	beq _08010BFA
	b _08010F92
_08010BFA:
	movs r0, #0xb
	strb r0, [r5, #0xa]
	b _08010F92
	.align 2, 0
_08010C00: .4byte gMain
_08010C04: .4byte 0x0000024A
_08010C08: .4byte gJoypad
_08010C0C: .4byte gScriptContext
_08010C10: .4byte 0x04000007
_08010C14:
	ldrb r2, [r5, #0xb]
	cmp r2, #1
	bne _08010C1C
	b _08010F38
_08010C1C:
	cmp r2, #1
	bgt _08010C26
	cmp r2, #0
	beq _08010C2C
	b _08010F92
_08010C26:
	cmp r2, #2
	beq _08010C54
	b _08010F92
_08010C2C:
	ldr r0, _08010C48 @ =gMain
	strb r2, [r0, #0x18]
	strb r2, [r0, #0x19]
	ldr r1, _08010C4C @ =gIORegisters
	adds r3, r1, #0
	adds r3, #0x4a
	ldr r0, _08010C50 @ =0x0000FDFF
	ldrh r4, [r3]
	ands r0, r4
	strh r0, [r3]
	strh r2, [r1, #0xe]
	bl sub_80161B4
	b _08010F32
	.align 2, 0
_08010C48: .4byte gMain
_08010C4C: .4byte gIORegisters
_08010C50: .4byte 0x0000FDFF
_08010C54:
	ldrb r0, [r6, #8]
	subs r0, #1
	strb r0, [r6, #8]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08010C7C
	ldr r0, _08010C78 @ =gMain
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0
	bne _08010C7C
	movs r0, #7
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xb]
	b _08010F92
	.align 2, 0
_08010C78: .4byte gMain
_08010C7C:
	ldr r0, _08010CA0 @ =gMain
	movs r1, #1
	strb r1, [r0, #0x18]
	movs r2, #0x93
	lsls r2, r2, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08010C94
	movs r0, #1
	bl SlideTextbox
_08010C94:
	movs r0, #3
	strb r0, [r5, #0xa]
	movs r0, #0
	strb r0, [r5, #0xb]
	b _08010F92
	.align 2, 0
_08010CA0: .4byte gMain
_08010CA4:
	ldrh r0, [r6, #0x10]
	bl ChangeScriptSection
	movs r0, #1
	bl SlideTextbox
_08010CB0:
	movs r0, #3
	strb r0, [r5, #0xa]
	b _08010F92
_08010CB6:
	ldr r0, _08010CD0 @ =gMain
	adds r0, #0xa0
	movs r1, #0x64
	strh r1, [r0]
	ldrb r0, [r5, #0xb]
	cmp r0, #4
	bls _08010CC6
	b _08010F92
_08010CC6:
	lsls r0, r0, #2
	ldr r1, _08010CD4 @ =_08010CD8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08010CD0: .4byte gMain
_08010CD4: .4byte _08010CD8
_08010CD8: @ jump table
	.4byte _08010CEC @ case 0
	.4byte _08010D02 @ case 1
	.4byte _08010D44 @ case 2
	.4byte _08010D58 @ case 3
	.4byte _08010D78 @ case 4
_08010CEC:
	ldr r0, _08010D3C @ =gMain
	movs r1, #0
	strb r1, [r0, #0x18]
	movs r0, #0x1e
	bl FadeOutBGM
	bl sub_80161C4
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_08010D02:
	bl sub_801622C
	bl sub_8016214
	cmp r0, #0
	bne _08010D10
	b _08010F92
_08010D10:
	bl sub_80161E4
	ldr r4, _08010D3C @ =gMain
	adds r0, r4, #0
	adds r0, #0x98
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x4f
	ble _08010D24
	b _08010F44
_08010D24:
	movs r0, #1
	bl sub_8017928
	adds r1, r4, #0
	adds r1, #0x9c
	ldr r0, _08010D40 @ =0x0000FFD8
	strh r0, [r1]
	movs r0, #3
	bl sub_8017928
	b _08010F44
	.align 2, 0
_08010D3C: .4byte gMain
_08010D40: .4byte 0x0000FFD8
_08010D44:
	bl sub_801622C
	bl sub_8016214
	cmp r0, #0
	bne _08010D52
	b _08010F92
_08010D52:
	bl sub_80161D4
	b _08010F44
_08010D58:
	bl sub_801622C
	bl sub_8016214
	cmp r0, #0
	bne _08010D66
	b _08010F92
_08010D66:
	bl sub_8017C78
	cmp r0, #0
	beq _08010D70
	b _08010F92
_08010D70:
	movs r0, #2
	bl sub_8017928
	b _08010F44
_08010D78:
	movs r4, #0
	movs r0, #3
	strb r0, [r7, #0xc]
	strb r0, [r7, #0xd]
	ldr r1, _08010D98 @ =gMain
	movs r0, #1
	strb r0, [r1, #0x18]
	bl sub_8010FA4
	bl sub_8011198
	str r4, [r6]
	movs r0, #0x82
	lsls r0, r0, #1
	str r0, [r5, #8]
	b _08010F92
	.align 2, 0
_08010D98: .4byte gMain
_08010D9C:
	ldrb r0, [r5, #0xb]
	cmp r0, #5
	bls _08010DA4
	b _08010F92
_08010DA4:
	lsls r0, r0, #2
	ldr r1, _08010DB0 @ =_08010DB4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08010DB0: .4byte _08010DB4
_08010DB4: @ jump table
	.4byte _08010DCC @ case 0
	.4byte _08010DF0 @ case 1
	.4byte _08010E14 @ case 2
	.4byte _08010F2E @ case 3
	.4byte _08010F38 @ case 4
	.4byte _08010E22 @ case 5
_08010DCC:
	ldrh r0, [r6, #0xc]
	bl ChangeScriptSection
	ldr r0, _08010DEC @ =gScriptContext
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	beq _08010DE2
	cmp r0, #4
	beq _08010DE2
	b _08010F44
_08010DE2:
	movs r0, #1
	bl SlideTextbox
	b _08010F44
	.align 2, 0
_08010DEC: .4byte gScriptContext
_08010DF0:
	ldr r1, _08010E10 @ =gScriptContext
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08010DFE
	b _08010F92
_08010DFE:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0x1e
	bl FadeOutBGM
	movs r0, #2
	movs r1, #4
	b _08010F0E
	.align 2, 0
_08010E10: .4byte gScriptContext
_08010E14:
	adds r0, r5, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _08010E20
	b _08010F92
_08010E20:
	b _08010F44
_08010E22:
	bl sub_8010FA4
	bl sub_8011198
	ldr r1, _08010E4C @ =gInvestigation
	movs r0, #0xfe
	ldrb r2, [r1, #0xb]
	ands r0, r2
	strb r0, [r1, #0xb]
	movs r0, #0x82
	lsls r0, r0, #1
	str r0, [r5, #8]
	ldr r0, _08010E50 @ =0x0000FFFF
	ldrh r4, [r6, #0x14]
	cmp r4, r0
	beq _08010E48
	ldrh r0, [r6, #0x14]
	bl PlayBGM
_08010E48:
	movs r0, #1
	b _08010F0C
	.align 2, 0
_08010E4C: .4byte gInvestigation
_08010E50: .4byte 0x0000FFFF
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
	bl SlideTextbox
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
	bl SlideTextbox
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
_08010EA6:
	b _08010F92
	.align 2, 0
_08010EA8: .4byte gMain
_08010EAC:
	ldrb r0, [r5, #0xb]
	cmp r0, #5
	bhi _08010F92
	lsls r0, r0, #2
	ldr r1, _08010EBC @ =_08010EC0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08010EBC: .4byte _08010EC0
_08010EC0: @ jump table
	.4byte _08010ED8 @ case 0
	.4byte _08010EF8 @ case 1
	.4byte _08010F1C @ case 2
	.4byte _08010F2E @ case 3
	.4byte _08010F38 @ case 4
	.4byte _08010F4C @ case 5
_08010ED8:
	ldrh r0, [r6, #0x12]
	bl ChangeScriptSection
	ldr r0, _08010EF4 @ =gScriptContext
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	beq _08010EEC
	cmp r0, #4
	bne _08010F44
_08010EEC:
	movs r0, #1
	bl SlideTextbox
	b _08010F44
	.align 2, 0
_08010EF4: .4byte gScriptContext
_08010EF8:
	ldr r1, _08010F18 @ =gScriptContext
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08010F92
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #2
_08010F0C:
	movs r1, #1
_08010F0E:
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	b _08010F92
	.align 2, 0
_08010F18: .4byte gScriptContext
_08010F1C:
	adds r0, r5, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _08010F92
	movs r0, #0x1e
	bl FadeOutBGM
	b _08010F44
_08010F2E:
	bl sub_80161E4
_08010F32:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_08010F38:
	bl sub_801622C
	bl sub_8016214
	cmp r0, #0
	beq _08010F92
_08010F44:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _08010F92
_08010F4C:
	ldr r0, _08010F98 @ =gMain
	adds r2, r0, #0
	adds r2, #0x9a
	movs r1, #1
	strh r1, [r2]
	adds r0, #0x98
	strh r1, [r0]
	bl sub_8010FA4
	bl sub_8011198
	ldr r1, _08010F9C @ =gInvestigation
	movs r0, #0xfe
	ldrb r4, [r1, #0xb]
	ands r0, r4
	strb r0, [r1, #0xb]
	movs r0, #0
	bl SlideTextbox
	movs r0, #0x82
	lsls r0, r0, #1
	str r0, [r5, #8]
	ldr r0, _08010FA0 @ =0x0000FFFF
	ldrh r1, [r6, #0x14]
	cmp r1, r0
	beq _08010F86
	ldrh r0, [r6, #0x14]
	bl PlayBGM
_08010F86:
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
_08010F92:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010F98: .4byte gMain
_08010F9C: .4byte gInvestigation
_08010FA0: .4byte 0x0000FFFF

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

	thumb_func_start UpdateInvestigationActionSprites
UpdateInvestigationActionSprites: @ 0x080111EC
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

	thumb_func_start UpdateScrollPromptSprite
UpdateScrollPromptSprite: @ 0x08011388
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
	bl GetBGControlBits
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

	thumb_func_start GetExaminedAreaSection
GetExaminedAreaSection: @ 0x08011408
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
	bl GetFlag
	cmp r0, #0
	beq _080114EE
	movs r0, #0
	movs r1, #0x48
	bl GetFlag
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
	bl GetFlag
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
	bl GetFlag
	cmp r0, #0
	bne _080114EE
	movs r0, #0xa5
	b _0801156E
_080114EE:
	mov r0, sp
	bl CheckRectCollisionWithAnim
	adds r2, r0, #0
	ldr r4, _080114FC @ =gExaminationData
	b _0801150C
	.align 2, 0
_080114FC: .4byte gExaminationData
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
	ldr r4, _08011518 @ =gExaminationData
	b _0801152E
	.align 2, 0
_08011518: .4byte gExaminationData
_0801151C:
	cmp r1, #0xfe
	beq _0801152C
	adds r1, r4, #4
	mov r0, sp
	bl CheckRectCollisionWithArea
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
	ldr r2, _08011654 @ =gTalkData
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _08011602
	ldr r0, _08011658 @ =gMain+0xB2
	ldrb r3, [r0]
	ldr r4, _0801165C @ =gAnimation+0x52
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
_08011654: .4byte gTalkData
_08011658: .4byte gMain+0xB2
_0801165C: .4byte gAnimation+0x52
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
