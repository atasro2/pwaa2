	.include "asm/macros.inc"
	.syntax unified

	thumb_func_start InvestigationMove
InvestigationMove: @ 0x0800F7A8
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
	bl SlideTextbox
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
	bl ChangeScriptSection
	b _0800FD86
	.align 2, 0
_0800F920: .4byte gInvestigation+0x12
_0800F924: .4byte gInvestigation
_0800F928: .4byte gMain
_0800F92C: .4byte 0x00000159
_0800F930:
	movs r0, #0x1d
	bl ChangeScriptSection
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
	bl SlideTextbox
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
	bl PauseBGM
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
	bl PlaySE
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
	bl PlaySE
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
	bl PlaySE
	b _0800FD86
_0800FB5E:
	movs r4, #1
	ands r4, r1
	cmp r4, #0
	beq _0800FBA8
	movs r0, #0x2b
	bl PlaySE
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
	bl FadeOutBGM
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
	bl PlaySE
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
	bl SetInactiveActionButtons
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

	thumb_func_start InvestigationTalk
InvestigationTalk: @ 0x0800FDF4
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
	ldr r3, _0800FF0C @ =gTalkData
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
	ldr r4, _0800FF14 @ =gAnimation+0x52
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
_0800FF0C: .4byte gTalkData
_0800FF10: .4byte gOamObjects+0x130
_0800FF14: .4byte gAnimation+0x52
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
	ldr r3, _08010124 @ =gTalkData
	ldrb r1, [r3]
	adds r0, r1, #0
	mov r5, sl
	adds r5, #0x7e
	cmp r0, #0xff
	beq _08010078
	mov r0, sl
	adds r0, #0xb2
	ldrb r2, [r0]
	ldr r4, _08010128 @ =gAnimation+0x52
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
	bl PauseBGM
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
	bl PlaySE
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
_08010124: .4byte gTalkData
_08010128: .4byte gAnimation+0x52
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
	bl PlaySE
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
	bl PlaySE
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
	bl PlaySE
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
	bl PlaySE
	ldr r5, [sp]
	ldrb r5, [r5, #4]
	lsls r1, r5, #1
	ldr r3, [sp, #0x14]
	adds r0, r3, #0
	adds r0, #0xc
	adds r0, r0, r1
	ldrh r5, [r0]
	adds r0, r5, #0
	bl ChangeScriptSection
	movs r0, #1
	bl SlideTextbox
	ldr r3, [sp, #0x14]
	adds r4, r3, #0
	adds r4, #8
	ldr r7, [sp]
	ldrb r7, [r7, #4]
	adds r0, r7, r4
	ldrb r1, [r0]
	movs r0, #2
	bl GetFlag
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
	bl ChangeFlag
	ldr r3, [sp, #0x14]
_080102AE:
	ldr r0, [sp]
	movs r1, #4
	str r3, [sp, #0x14]
	bl SetInactiveActionButtons
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
	bl PlaySE
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
	bl GetFlag
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
	bl SetInactiveActionButtons
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
	bl PauseBGM
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
	bl PlaySE
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
	bl PlaySE
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
	ldr r3, _080106F4 @ =gTalkData
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
	ldr r4, _080106F8 @ =gAnimation+0x52
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
_080106F4: .4byte gTalkData
_080106F8: .4byte gAnimation+0x52
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
	bl SetInactiveActionButtons
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
	ldr r3, _08010864 @ =gTalkData
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
	ldr r4, _0801086C @ =gAnimation+0x52
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
_08010864: .4byte gTalkData
_08010868: .4byte gOamObjects+0x130
_0801086C: .4byte gAnimation+0x52
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

	thumb_func_start InvestigationPresent
InvestigationPresent: @ 0x08010924
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
	bl SetInactiveActionButtons
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
	bl SetInactiveActionButtons
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
