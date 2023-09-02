	.include "asm/macros.inc"
	.syntax unified

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
	bl EnableDetentionCenterMask
	b _08002A14
	.align 2, 0
_080029F8: .4byte gMain
_080029FC: .4byte gIORegisters
_08002A00:
	movs r0, #1
	bl EnableDetentionCenterMask
	b _08002A14
_08002A08:
	mov r1, r8
	adds r1, #0x35
	movs r0, #0
	strb r0, [r1]
	bl EnableDetentionCenterMask
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
	ldr r1, _08002BD4 @ =gGfx_BG014
	ldr r3, _08002BD8 @ =0x050001C0
	ldr r2, _08002BDC @ =0x040000D4
	str r1, [r2]
	str r3, [r2, #4]
	ldr r0, _08002BE0 @ =0x80000010
	str r0, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08002BE4 @ =gGfx_BG015
	adds r3, #0x20
	str r1, [r2]
	str r3, [r2, #4]
	str r0, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08002BE8 @ =gGfx_BG020
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
_08002BD4: .4byte gGfx_BG014
_08002BD8: .4byte 0x050001C0
_08002BDC: .4byte 0x040000D4
_08002BE0: .4byte 0x80000010
_08002BE4: .4byte gGfx_BG015
_08002BE8: .4byte gGfx_BG020
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
