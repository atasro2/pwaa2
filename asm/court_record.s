	.include "asm/macros.inc"
	.syntax unified

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
	bl UpdateBG2Window
	adds r0, r4, #0
	bl UpdateEvidenceSprites
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
	bl UpdateBG2Window
	adds r0, r4, #0
	bl UpdateEvidenceSprites
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

	thumb_func_start UpdateRecordSprites
UpdateRecordSprites: @ 0x08012D20
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateEvidenceSprites
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
	bl UpdateRecordInfoActionSprites
	b _08012DD6
	.align 2, 0
_08012D90: .4byte 0x000040E0
_08012D94: .4byte 0x000021A4
_08012D98: .4byte gMain
_08012D9C:
	movs r0, #1
	bl UpdateRecordPresentActionSprites
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
	bl UpdateRecordInfoActionSprites
	b _08012DD6
	.align 2, 0
_08012DC8: .4byte gOamObjects
_08012DCC: .4byte gMain
_08012DD0:
	movs r0, #0
	bl UpdateRecordPresentActionSprites
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

	thumb_func_start UpdateEvidenceSprites
UpdateEvidenceSprites: @ 0x08012E54
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

	thumb_func_start ClearEvidenceSprites
ClearEvidenceSprites: @ 0x08012EC8
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

	thumb_func_start UpdateRecordInfoActionSprites
UpdateRecordInfoActionSprites: @ 0x08012EE4
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

	thumb_func_start UpdateRecordPresentActionSprites
UpdateRecordPresentActionSprites: @ 0x08012F44
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

	thumb_func_start UpdateEvidenceDetailActionSprites
UpdateEvidenceDetailActionSprites: @ 0x08013080
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

	thumb_func_start GetQuestioningPresentedSection
GetQuestioningPresentedSection: @ 0x080131F0
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

	thumb_func_start GetEvidenceCommentSection
GetEvidenceCommentSection: @ 0x08013274
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
