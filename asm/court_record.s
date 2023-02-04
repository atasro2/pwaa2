	.include "asm/macros.inc"
	.syntax unified

	thumb_func_start CourtRecordInit
CourtRecordInit: @ 0x0801178C
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
	ldr r1, _0801186C @ =gBG2MapBuffer
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
	bl LoadEvidenceWindowGraphics
	ldr r0, [r6, #0x14]
	ldrb r5, [r6, #0xd]
	adds r0, r5, r0
	ldrb r0, [r0]
	bl LoadEvidenceGraphics
	ldrb r0, [r7, #0xb]
	cmp r0, #1
	bne _08011854
	movs r0, #2
	movs r1, #0xc
	bl SlideInBG2Window
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
_0801186C: .4byte gBG2MapBuffer
_08011870: .4byte 0x000003FF
_08011874: .4byte gIORegisters
_08011878: .4byte gOamObjects+0x1A0
_0801187C: .4byte gOamObjects+0x1C8
_08011880: .4byte gOamObjects+0x1B8
_08011884: .4byte 0x00006560

	thumb_func_start CourtRecordMain
CourtRecordMain: @ 0x08011888
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r4, _080118DC @ =gAnimation+0x44
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
	ldr r1, _080118E4 @ =gEvidenceProfileData
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	cmp r0, #0
	beq _080118E8
	bl PauseBGM
	movs r0, #0x2b
	bl PlaySE
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
_080118DC: .4byte gAnimation+0x44
_080118E0: .4byte gJoypad
_080118E4: .4byte gEvidenceProfileData
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
	bl SlideInBG2Window
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
	bl SlideInBG2Window
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
	bl PlaySE
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
	bl PlaySE
	movs r0, #3
	movs r1, #0xc
	bl SlideInBG2Window
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
	bl SlideInBG2Window
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
	bl PlayAnimation
	movs r0, #0x37
	bl PlaySE
	b _08011A48
_08011A3C:
	movs r0, #2
	bl PlayAnimation
	movs r0, #0x51
	bl PlaySE
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
	bl StopBGM
	adds r0, r4, #0
	bl ChangeScriptSection
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
	bl ChangeScriptSection
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
	bl ChangeScriptSection
	mov r0, r8
	adds r0, #0x33
	mov r3, sb
	strb r3, [r0]
	b _08011B2A
_08011B0E:
	movs r0, #0x20
	bl ChangeScriptSection
	mov r0, r8
	adds r0, #0x33
	strb r4, [r0]
	b _08011B2A
_08011B1C:
	movs r0, #0x21
	bl ChangeScriptSection
	b _08011B2A
_08011B24:
	movs r0, #0x22
	bl ChangeScriptSection
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
	bl SetTextboxNametag
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
	bl PlaySE
	movs r0, #4
	movs r1, #0xc
	bl SlideInBG2Window
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
	bl PlaySE
	movs r0, #3
	movs r1, #0xc
	bl SlideInBG2Window
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
	bl FadeOutBGM
	movs r0, #8
	ldrb r1, [r6, #0xc]
	orrs r0, r1
	strb r0, [r6, #0xc]
	movs r0, #4
	movs r1, #0x12
	bl SlideInBG2Window
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
	bl PlaySE
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
	bl ChangeScriptSection
	movs r0, #1
	bl SlideTextbox
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
	bl SlideInBG2Window
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
	bl StopBGM
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
	bl PlaySE
	movs r0, #3
	movs r1, #0xc
	bl SlideInBG2Window
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
	bl PlaySE
	movs r0, #3
	movs r1, #0xc
	bl SlideInBG2Window
	movs r0, #4
	strb r0, [r6, #0xf]
	b _08011DF4
_08011DDC:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08011DF6
	movs r0, #0x2c
	bl PlaySE
	movs r0, #3
	movs r1, #0xc
	bl SlideInBG2Window
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

	thumb_func_start CourtRecordExit
CourtRecordExit: @ 0x08011E18
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
	ldr r1, _08011EC8 @ =gBG1MapBuffer
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
	bl PlaySE
_08011EB6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011EBC: .4byte gOamObjects+0x1B8
_08011EC0: .4byte 0x000001FF
_08011EC4: .4byte gScriptContext
_08011EC8: .4byte gBG1MapBuffer
_08011ECC: .4byte 0x000004DC
_08011ED0: .4byte 0x000004DE
_08011ED4: .4byte gMain+0x8
_08011ED8: .4byte 0x000002B2

	thumb_func_start CourtRecordChangeState
CourtRecordChangeState: @ 0x08011EDC
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

	thumb_func_start CourtRecordChangeRecord
CourtRecordChangeRecord: @ 0x08011F40
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
	bl SlideInBG2Window
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
	bl LoadEvidenceGraphics
_08011FE0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011FE8: .4byte 0x040000D4
_08011FEC: .4byte gUnknown_081424FC
_08011FF0: .4byte 0x06013500
_08011FF4: .4byte 0x80000100

	thumb_func_start CourtRecordDetailSubMenu
CourtRecordDetailSubMenu: @ 0x08011FF8
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
	ldr r1, _080120EC @ =gEvidenceProfileData
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
_080120EC: .4byte gEvidenceProfileData
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
	bl DecompressBackgroundIntoBuffer
	ldr r1, _0801220C @ =0x040000D4
	ldr r0, _08012210 @ =gOamObjects
	str r0, [r1]
	ldr r2, _08012214 @ =gUnknown_0200093C
	str r2, [r1, #4]
	ldr r0, _08012218 @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r3, _0801221C @ =gMapMarker
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
_0801221C: .4byte gMapMarker
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
	bl PlaySE
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
	ldr r1, _080123AC @ =gEvidenceProfileData
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	cmp r0, #8
	beq _08012384
	b _08012692
_08012384:
	movs r0, #0x2b
	bl PlaySE
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
_080123AC: .4byte gEvidenceProfileData
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
	bl DecompressBackgroundIntoBuffer
	ldrh r0, [r5, #0x2e]
	bl CopyBGDataToVramAndScrollBG
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
	ldr r0, _08012514 @ =gMapMarker
	str r0, [r1, #4]
	ldr r0, _08012518 @ =0x80000050
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl MakeMapMarkerSprites
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
_08012514: .4byte gMapMarker
_08012518: .4byte 0x80000050
_0801251C: .4byte gTestimony
_08012520: .4byte gCourtRecord
_08012524:
	ldrh r0, [r5, #0x2e]
	bl CopyBGDataToVramAndScrollBG
	ldrh r2, [r5, #0x2e]
	cmp r2, #0x23
	bne _08012546
	ldr r1, _08012568 @ =gIORegisters
	movs r0, #8
	strh r0, [r1, #0x14]
	movs r0, #0x6b
	bl FindAnimationFromAnimId
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
	bl UnpauseBGM
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
	ldr r1, _08012660 @ =gEvidenceProfileData
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
_08012660: .4byte gEvidenceProfileData
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
	bl DecompressBackgroundIntoBuffer
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

	thumb_func_start CourtRecordLoadGfxChangeState
CourtRecordLoadGfxChangeState: @ 0x080126A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1, #0x14]
	ldrb r1, [r1, #0xd]
	adds r0, r1, r0
	ldrb r0, [r0]
	bl LoadEvidenceGraphics
	movs r0, #3
	strb r0, [r4, #9]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CourtRecordTakeThatSpecial
CourtRecordTakeThatSpecial: @ 0x080126BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _080126E0 @ =gOamObjects+0x1A0
	mov sb, r0
	ldr r6, _080126E4 @ =gAnimation+0x44
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
_080126E4: .4byte gAnimation+0x44
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
	bl PlayAnimation
	movs r0, #0x37
	bl PlaySE
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
	ldr r1, _080127A0 @ =gEvidenceProfileData
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r2, r3, #6
	adds r2, r2, r3
	lsls r2, r2, #5
	ldr r0, _080127A4 @ =gUnknown_08177E28_pal
	adds r4, r2, r0
	ldr r0, _080127A8 @ =0x040000D4
	str r4, [r0]
	ldr r1, _080127AC @ =0x05000220
	str r1, [r0, #4]
	ldr r1, _080127B0 @ =0x80000010
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080127B4 @ =gUnknown_08177E28_gfx
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
_080127A0: .4byte gEvidenceProfileData
_080127A4: .4byte gUnknown_08177E28_pal
_080127A8: .4byte 0x040000D4
_080127AC: .4byte 0x05000220
_080127B0: .4byte 0x80000010
_080127B4: .4byte gUnknown_08177E28_gfx
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
	bl ChangeScriptSection
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
	bl ChangeScriptSection
_080128D4:
	movs r0, #1
	bl SlideTextbox
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
	bl ChangeScriptSection
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
	bl ChangeScriptSection
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
	bl ChangeScriptSection
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
	bl ChangeScriptSection
	b _080129B6
_080129A0:
	movs r0, #0x20
	bl ChangeScriptSection
	b _080129B6
_080129A8:
	movs r0, #0x21
	bl ChangeScriptSection
	b _080129B6
_080129B0:
	movs r0, #0x22
	bl ChangeScriptSection
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
	bl fix_inverse
	adds r4, r0, #0
	ldr r0, _08012A98 @ =gSineTable
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
	bl fix_mul
	ldr r5, _08012A9C @ =gOamObjects
	strh r0, [r5, #6]
	ldrb r2, [r6]
	lsls r0, r2, #1
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0xe]
	ldrb r1, [r6]
	lsls r0, r1, #1
	add r0, r8
	ldrh r0, [r0]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x16]
	ldrb r0, [r6]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r4, #0
	bl fix_mul
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
_08012A98: .4byte gSineTable
_08012A9C: .4byte gOamObjects
_08012AA0: .4byte 0x0000C058
_08012AA4: .4byte gCourtRecord

	thumb_func_start EvidenceAddedInit
EvidenceAddedInit: @ 0x08012AA8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _08012B00 @ =gBG2MapBuffer
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
	bl LoadEvidenceWindowGraphics
	adds r0, r5, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	bl LoadEvidenceGraphics
	ldrh r1, [r5, #0x28]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	movs r1, #4
	bl SetBGMVolume
	movs r0, #0xf
	bl PlaySE
	ldrb r0, [r5, #9]
	adds r0, #1
	strb r0, [r5, #9]
	strb r4, [r5, #0xa]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08012B00: .4byte gBG2MapBuffer
_08012B04: .4byte 0x000003FF
_08012B08: .4byte gIORegisters

	thumb_func_start EvidenceAddedMain
EvidenceAddedMain: @ 0x08012B0C
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
	bl SetBGMVolume
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
	bl PlaySE
	movs r0, #3
	movs r1, #0xe
	bl SlideInBG2Window
	movs r0, #2
	strb r0, [r5, #9]
_08012B64:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08012B6C: .4byte gScriptContext
_08012B70: .4byte gJoypad

	thumb_func_start EvidenceAddedExit
EvidenceAddedExit: @ 0x08012B74
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
	bl SetInactiveActionButtons
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
	bl SetInactiveActionButtons
	b _08012BD4
	.align 2, 0
_08012BC4: .4byte gInvestigation
_08012BC8:
	cmp r1, #9
	bne _08012BD4
	ldr r0, _08012BE4 @ =gInvestigation
	movs r1, #8
	bl SetInactiveActionButtons
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
	ldr r0, _08012C48 @ =sCourtRecordLeftArrowTileIndexes
	ldrb r2, [r4, #8]
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #5
	ldr r3, _08012C4C @ =gGfx4bppTestimonyArrows
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _08012C50 @ =0x06013400
	str r0, [r1, #4]
	ldr r2, _08012C54 @ =0x80000040
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08012C58 @ =sCourtRecordRightArrowTileIndexes
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
_08012C48: .4byte sCourtRecordLeftArrowTileIndexes
_08012C4C: .4byte gGfx4bppTestimonyArrows
_08012C50: .4byte 0x06013400
_08012C54: .4byte 0x80000040
_08012C58: .4byte sCourtRecordRightArrowTileIndexes
_08012C5C: .4byte 0x06013480

	thumb_func_start LoadEvidenceWindowGraphics
LoadEvidenceWindowGraphics: @ 0x08012C60
	push {lr}
	movs r0, #1
	movs r1, #0xc
	bl SlideInBG2Window
	ldr r0, _08012CD8 @ =0x040000D4
	ldr r1, _08012CDC @ =gGfx4bppTestimonyArrows
	str r1, [r0]
	ldr r1, _08012CE0 @ =0x06013400
	str r1, [r0, #4]
	ldr r2, _08012CE4 @ =0x80000040
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08012CE8 @ =gGfx4bppTestimonyArrows+0x180
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
_08012CDC: .4byte gGfx4bppTestimonyArrows
_08012CE0: .4byte 0x06013400
_08012CE4: .4byte 0x80000040
_08012CE8: .4byte gGfx4bppTestimonyArrows+0x180
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

	thumb_func_start LoadEvidenceGraphics
LoadEvidenceGraphics: @ 0x08012DDC
	push {r4, r5, lr}
	ldr r1, _08012E2C @ =gEvidenceProfileData
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r2, r1, #6
	adds r2, r2, r1
	lsls r2, r2, #5
	ldr r3, _08012E30 @ =gUnknown_08177E28_pal
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
_08012E2C: .4byte gEvidenceProfileData
_08012E30: .4byte gUnknown_08177E28_pal
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

	thumb_func_start FindEvidenceInCourtRecord
FindEvidenceInCourtRecord: @ 0x080130C8
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

	thumb_func_start FindFirstEmptySlotInCourtRecord
FindFirstEmptySlotInCourtRecord: @ 0x08013110
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

	thumb_func_start SortCourtRecordAndSyncListCount
SortCourtRecordAndSyncListCount: @ 0x08013138
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
	bl GetFlag
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
	ldr r0, _08013304 @ =gAnimation+0x52
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
_08013304: .4byte gAnimation+0x52
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
	ldr r3, _080133E8 @ =gBG1MapBuffer
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
_080133E8: .4byte gBG1MapBuffer
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
	ldr r2, _0801349C @ =gBG1MapBuffer
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
_0801349C: .4byte gBG1MapBuffer
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
	ldr r1, _08013540 @ =gEvidenceProfileData
	adds r0, #0x8a
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r2, r1, #6
	adds r2, r2, r1
	lsls r2, r2, #5
	ldr r3, _08013544 @ =gUnknown_08177E28_pal
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
_08013540: .4byte gEvidenceProfileData
_08013544: .4byte gUnknown_08177E28_pal
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
	ldr r4, _08013648 @ =gBG1MapBuffer+0x42
	adds r4, #2
	movs r2, #0
	adds r3, r7, #0
	adds r3, #0x8e
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, #1
	ldr r1, _08013648 @ =gBG1MapBuffer+0x42
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
_08013648: .4byte gBG1MapBuffer+0x42

	thumb_func_start sub_801364C
sub_801364C: @ 0x0801364C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r4, _0801372C @ =gBG1MapBuffer+0x78
	subs r4, #2
	movs r2, #0
	adds r3, r7, #0
	adds r3, #0x8e
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, #1
	ldr r1, _0801372C @ =gBG1MapBuffer+0x78
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
_0801372C: .4byte gBG1MapBuffer+0x78

	thumb_func_start sub_8013730
sub_8013730: @ 0x08013730
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x90
	ldrb r0, [r0]
	cmp r0, #2
	bls _0801374E
	ldr r1, _08013764 @ =gBG1MapBuffer+0x40
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
_08013764: .4byte gBG1MapBuffer+0x40
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
