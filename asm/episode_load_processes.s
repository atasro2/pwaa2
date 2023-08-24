
	.include "asm/macros.inc"
	.syntax unified

	thumb_func_start ContinueSaveProcess
ContinueSaveProcess: @ 0x0800C9A4
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
	bl LoadSaveData
	mov r0, r8
	bl EpisodeInit
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
	ldr r0, _0800CADC @ =gGfxPalChoiceSelected
	str r0, [r1]
	ldr r0, _0800CAE0 @ =0x05000320
	str r0, [r1, #4]
	ldr r0, _0800CAE4 @ =0x80000020
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0xa
	bl DecompressBackgroundIntoBuffer
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
	ldr r0, _0800CAF0 @ =gBG2MapBuffer
_0800CA7C:
	strh r1, [r0]
	adds r0, #2
	adds r7, #1
	cmp r7, r2
	bls _0800CA7C
	movs r0, #5
	movs r1, #8
	bl SlideInBG2Window
	movs r0, #0x31
	bl PlaySE
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
_0800CADC: .4byte gGfxPalChoiceSelected
_0800CAE0: .4byte 0x05000320
_0800CAE4: .4byte 0x80000020
_0800CAE8: .4byte gOamObjects
_0800CAEC: .4byte 0x000003FF
_0800CAF0: .4byte gBG2MapBuffer
_0800CAF4: .4byte gIORegisters
_0800CAF8: .4byte 0x00003E01
_0800CAFC:
	ldr r4, _0800CB60 @ =gCourtRecord
	adds r0, r4, #0
	bl UpdateBG2Window
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
	bl ChangeScriptSection
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
	bl PlaySE
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
	bl PlaySE
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
	bl PlaySE
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
	ldr r0, _0800CE30 @ =gUnusedAsciiCharSet
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
	ldr r5, _0800CE44 @ =gGfxPalEvidenceProfileDesc
	str r5, [r6]
	ldr r0, _0800CE48 @ =0x05000240
	str r0, [r6, #4]
	ldr r3, _0800CE4C @ =0x80000010
	mov sb, r3
	str r3, [r6, #8]
	ldr r0, [r6, #8]
	movs r0, #0
	bl GetBGPalettePtr
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
	ldr r0, _0800CE68 @ =gTalkData
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
	bl RestoreAnimationsFromBuffer
	mov r1, r8
	ldrb r1, [r1, #8]
	cmp r1, #4
	bne _0800CEBA
	ldr r0, _0800CE7C @ =gGfx4bppInvestigationActions
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
	ldr r0, _0800CE90 @ =gGfx4bppInvestigationScrollButton
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
	ldr r0, _0800CEA8 @ =gGfxPalChoiceSelected
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
	bl LoadLocationChoiceGraphics
	b _0800CF42
	.align 2, 0
_0800CE2C: .4byte 0x040000D4
_0800CE30: .4byte gUnusedAsciiCharSet
_0800CE34: .4byte 0x06003800
_0800CE38: .4byte 0x80000400
_0800CE3C: .4byte gUnknown_0813791C
_0800CE40: .4byte 0x80000800
_0800CE44: .4byte gGfxPalEvidenceProfileDesc
_0800CE48: .4byte 0x05000240
_0800CE4C: .4byte 0x80000010
_0800CE50: .4byte 0x80000100
_0800CE54: .4byte gUnknown_02000034
_0800CE58: .4byte gMain
_0800CE5C: .4byte 0x80000160
_0800CE60: .4byte gUnknown_0814DC60
_0800CE64: .4byte 0x05000300
_0800CE68: .4byte gTalkData
_0800CE6C: .4byte 0x80000140
_0800CE70: .4byte gUnknown_03003B70
_0800CE74: .4byte 0x80000014
_0800CE78: .4byte 0x00002808
_0800CE7C: .4byte gGfx4bppInvestigationActions
_0800CE80: .4byte 0x06012000
_0800CE84: .4byte gUnknown_0814DBA0
_0800CE88: .4byte 0x050002A0
_0800CE8C: .4byte 0x80000020
_0800CE90: .4byte gGfx4bppInvestigationScrollButton
_0800CE94: .4byte 0x06013000
_0800CE98: .4byte gUnknown_0814DC00
_0800CE9C: .4byte 0x050002E0
_0800CEA0: .4byte gUnknown_081426FC
_0800CEA4: .4byte 0x06013200
_0800CEA8: .4byte gGfxPalChoiceSelected
_0800CEAC: .4byte 0x05000320
_0800CEB0:
	cmp r0, #8
	bne _0800CF42
	bl LoadTalkChoiceGraphics
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
	ldr r0, _0800CFF8 @ =gGfx4bppTestimonyArrows
	str r0, [r6]
	ldr r0, _0800CFFC @ =0x06013400
	str r0, [r6, #4]
	ldr r1, _0800D000 @ =0x80000040
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800D004 @ =gGfx4bppTestimonyArrows+0x180
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
	bl RedrawTextboxCharacters
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
	ldr r0, _0800D05C @ =gExaminationData
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
_0800CFF8: .4byte gGfx4bppTestimonyArrows
_0800CFFC: .4byte 0x06013400
_0800D000: .4byte 0x80000040
_0800D004: .4byte gGfx4bppTestimonyArrows+0x180
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
_0800D05C: .4byte gExaminationData
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
	ldr r6, _0800D204 @ =gMapMarker
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
	bl MakeMapMarkerSprites
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
	bl SetTextboxNametag
	movs r3, #0xfa
	lsls r3, r3, #4
	adds r0, r4, r3
	str r0, [r5]
	ldr r0, _0800D214 @ =gBG1MapBuffer
	str r0, [r5, #4]
	ldr r1, _0800D218 @ =0x80000400
	str r1, [r5, #8]
	ldr r0, [r5, #8]
	movs r0, #0xf4
	lsls r0, r0, #3
	adds r4, r4, r0
	str r4, [r5]
	ldr r0, _0800D21C @ =gBG0MapBuffer
	str r0, [r5, #4]
	str r1, [r5, #8]
	ldr r0, [r5, #8]
	mov r1, r8
	ldrh r0, [r1, #0x2e]
	bl DecompressBackgroundIntoBuffer
	mov r2, r8
	ldrh r0, [r2, #0x2e]
	bl CopyBGDataToVramAndScrollBG
	movs r0, #4
	ldrh r3, [r6]
	ands r0, r3
	cmp r0, #0
	beq _0800D18A
	ldr r0, _0800D220 @ =gCharSet+0x7100
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
	bl LoadItemPlateGfx
_0800D1D6:
	ldr r0, [sp]
	ldrb r1, [r0]
	movs r0, #0x14
	bl FadeInBGM
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
_0800D204: .4byte gMapMarker
_0800D208: .4byte 0x040000D4
_0800D20C: .4byte 0x80000050
_0800D210: .4byte gScriptContext
_0800D214: .4byte gBG1MapBuffer
_0800D218: .4byte 0x80000400
_0800D21C: .4byte gBG0MapBuffer
_0800D220: .4byte gCharSet+0x7100
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
	bl PlaySE
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
	ldr r0, _0800D2DC @ =gCaseStartProcess
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
_0800D2DC: .4byte gCaseStartProcess
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
