	.include "asm/macros.inc"
	.syntax unified

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
	ldr r1, _080068CC @ =gTalkData
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
_080068CC: .4byte gTalkData
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
	ldr r1, _0800690C @ =gExaminationData
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
_0800690C: .4byte gExaminationData
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
	bl GetFlag
	cmp r0, #0
	beq _08006A0C
	movs r0, #0
	movs r1, #0x9c
	bl GetFlag
	cmp r0, #0
	bne _080069A2
	movs r0, #0x99
	movs r1, #0x9c
	bl InvestigationSetScriptSectionAndFlag
	b _080069BE
_080069A2:
	movs r0, #0
	movs r1, #0x95
	bl GetFlag
	cmp r0, #0
	bne _080069BE
	ldr r2, _080069D8 @ =0x00000B48
	movs r0, #0xa
	adds r1, r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #1
	bl PlayBGM
_080069BE:
	movs r0, #0
	movs r1, #0x95
	bl GetFlag
	cmp r0, #0
	bne _080069EC
	ldr r1, _080069DC @ =0x040000D4
	ldr r0, _080069E0 @ =gUnknown_080214B4
	str r0, [r1]
	ldr r0, _080069E4 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _080069E8 @ =0x80000032
	b _08006E00
	.align 2, 0
_080069D8: .4byte 0x00000B48
_080069DC: .4byte 0x040000D4
_080069E0: .4byte gUnknown_080214B4
_080069E4: .4byte gExaminationData
_080069E8: .4byte 0x80000032
_080069EC:
	ldr r1, _080069FC @ =0x040000D4
	ldr r0, _08006A00 @ =gUnknown_08021518
	str r0, [r1]
	ldr r0, _08006A04 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08006A08 @ =0x80000032
	b _08006E00
	.align 2, 0
_080069FC: .4byte 0x040000D4
_08006A00: .4byte gUnknown_08021518
_08006A04: .4byte gExaminationData
_08006A08: .4byte 0x80000032
_08006A0C:
	movs r0, #0
	movs r1, #0x9b
	bl GetFlag
	cmp r0, #0
	beq _08006A28
	ldr r2, _08006A38 @ =0x00000B48
	movs r0, #0xa
	adds r1, r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #1
	bl PlayBGM
_08006A28:
	ldr r1, _08006A3C @ =0x040000D4
	ldr r0, _08006A40 @ =gUnknown_080214B4
	str r0, [r1]
	ldr r0, _08006A44 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08006A48 @ =0x80000032
	b _08006E00
	.align 2, 0
_08006A38: .4byte 0x00000B48
_08006A3C: .4byte 0x040000D4
_08006A40: .4byte gUnknown_080214B4
_08006A44: .4byte gExaminationData
_08006A48: .4byte 0x80000032
_08006A4C:
	movs r0, #0
	movs r1, #0x91
	bl GetFlag
	cmp r0, #0
	beq _08006A6E
	movs r0, #0
	movs r1, #0x9e
	bl GetFlag
	cmp r0, #0
	bne _08006A82
	movs r0, #0xa2
	movs r1, #0x9e
	bl InvestigationSetScriptSectionAndFlag
	b _08006A82
_08006A6E:
	movs r0, #0
	movs r1, #0x9d
	bl GetFlag
	cmp r0, #0
	bne _08006A82
	movs r0, #0x9f
	movs r1, #0x9d
	bl InvestigationSetScriptSectionAndFlag
_08006A82:
	ldr r1, _08006A90 @ =0x040000D4
	ldr r0, _08006A94 @ =gUnknown_0802157C
	str r0, [r1]
	ldr r0, _08006A98 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08006A9C @ =0x80000014
	b _08006E00
	.align 2, 0
_08006A90: .4byte 0x040000D4
_08006A94: .4byte gUnknown_0802157C
_08006A98: .4byte gExaminationData
_08006A9C: .4byte 0x80000014
_08006AA0:
	movs r0, #0
	movs r1, #0x9f
	bl GetFlag
	cmp r0, #0
	bne _08006AB6
	movs r0, #0xac
	movs r1, #0x9f
	bl InvestigationSetScriptSectionAndFlag
	b _08006ABC
_08006AB6:
	movs r0, #0xd7
	bl PlayBGM
_08006ABC:
	ldr r1, _08006ACC @ =0x040000D4
	ldr r0, _08006AD0 @ =gUnknown_080215A4
	str r0, [r1]
	ldr r0, _08006AD4 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08006AD8 @ =0x80000064
	b _08006E00
	.align 2, 0
_08006ACC: .4byte 0x040000D4
_08006AD0: .4byte gUnknown_080215A4
_08006AD4: .4byte gExaminationData
_08006AD8: .4byte 0x80000064
_08006ADC:
	movs r0, #0
	movs r1, #0xa0
	bl GetFlag
	cmp r0, #0
	bne _08006B10
	movs r0, #0xb3
	movs r1, #0xa0
	bl InvestigationSetScriptSectionAndFlag
	ldr r1, _08006B00 @ =0x040000D4
	ldr r0, _08006B04 @ =gUnknown_0802166C
	str r0, [r1]
	ldr r0, _08006B08 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08006B0C @ =0x8000005A
	b _08006E00
	.align 2, 0
_08006B00: .4byte 0x040000D4
_08006B04: .4byte gUnknown_0802166C
_08006B08: .4byte gExaminationData
_08006B0C: .4byte 0x8000005A
_08006B10:
	movs r0, #0
	movs r1, #0xbb
	bl GetFlag
	cmp r0, #0
	bne _08006B4C
	movs r0, #0x18
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0x16
	bl PlayBGM
	ldr r1, _08006B3C @ =0x040000D4
	ldr r0, _08006B40 @ =gUnknown_0802166C
	str r0, [r1]
	ldr r0, _08006B44 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08006B48 @ =0x8000005A
	b _08006E00
	.align 2, 0
_08006B3C: .4byte 0x040000D4
_08006B40: .4byte gUnknown_0802166C
_08006B44: .4byte gExaminationData
_08006B48: .4byte 0x8000005A
_08006B4C:
	ldr r1, _08006B5C @ =0x040000D4
	ldr r0, _08006B60 @ =gUnknown_08021720
	str r0, [r1]
	ldr r0, _08006B64 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08006B68 @ =0x8000005A
	b _08006E00
	.align 2, 0
_08006B5C: .4byte 0x040000D4
_08006B60: .4byte gUnknown_08021720
_08006B64: .4byte gExaminationData
_08006B68: .4byte 0x8000005A
_08006B6C:
	movs r0, #0
	movs r1, #0xa1
	bl GetFlag
	cmp r0, #0
	bne _08006B82
	movs r0, #0xa3
	movs r1, #0xa1
	bl InvestigationSetScriptSectionAndFlag
	b _08006B9E
_08006B82:
	movs r0, #0
	movs r1, #0x92
	bl GetFlag
	cmp r0, #0
	bne _08006B9E
	movs r0, #0x27
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xda
	bl PlayBGM
_08006B9E:
	ldr r1, _08006BAC @ =0x040000D4
	ldr r0, _08006BB0 @ =gUnknown_080217D4
	str r0, [r1]
	ldr r0, _08006BB4 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08006BB8 @ =0x80000050
	b _08006E00
	.align 2, 0
_08006BAC: .4byte 0x040000D4
_08006BB0: .4byte gUnknown_080217D4
_08006BB4: .4byte gExaminationData
_08006BB8: .4byte 0x80000050
_08006BBC:
	movs r0, #0
	movs r1, #0x95
	bl GetFlag
	cmp r0, #0
	beq _08006BF0
	movs r0, #0
	movs r1, #0xa3
	bl GetFlag
	cmp r0, #0
	bne _08006BDE
	movs r0, #0xd5
	movs r1, #0xa3
	bl InvestigationSetScriptSectionAndFlag
	b _08006C60
_08006BDE:
	movs r0, #0xa
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xc
	bl PlayBGM
	b _08006C60
_08006BF0:
	movs r0, #0
	movs r1, #0xa2
	bl GetFlag
	cmp r0, #0
	bne _08006C06
	movs r0, #0xc3
	movs r1, #0xa2
	bl InvestigationSetScriptSectionAndFlag
	b _08006C60
_08006C06:
	movs r0, #0
	movs r1, #0x94
	bl GetFlag
	cmp r0, #0
	beq _08006C16
	movs r0, #0xc4
	b _08006C48
_08006C16:
	movs r0, #0
	movs r1, #0xa5
	bl GetFlag
	cmp r0, #0
	beq _08006C50
	movs r0, #0
	movs r1, #0xb8
	bl GetFlag
	cmp r0, #0
	beq _08006C50
	movs r0, #0
	movs r1, #0xb9
	bl GetFlag
	cmp r0, #0
	beq _08006C50
	movs r0, #0
	movs r1, #0xba
	bl GetFlag
	cmp r0, #0
	beq _08006C50
	movs r0, #0xc5
_08006C48:
	movs r1, #0xff
	bl InvestigationSetScriptSectionAndFlag
	b _08006C56
_08006C50:
	movs r0, #0xda
	bl PlayBGM
_08006C56:
	ldr r0, _08006C70 @ =0x00004027
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
_08006C60:
	ldr r1, _08006C74 @ =0x040000D4
	ldr r0, _08006C78 @ =gUnknown_08021874
	str r0, [r1]
	ldr r0, _08006C7C @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08006C80 @ =0x800000BE
	b _08006E00
	.align 2, 0
_08006C70: .4byte 0x00004027
_08006C74: .4byte 0x040000D4
_08006C78: .4byte gUnknown_08021874
_08006C7C: .4byte gExaminationData
_08006C80: .4byte 0x800000BE
_08006C84:
	movs r0, #0
	movs r1, #0xa4
	bl GetFlag
	cmp r0, #0
	bne _08006C98
	movs r0, #0xf4
	movs r1, #0xa4
	bl InvestigationSetScriptSectionAndFlag
_08006C98:
	ldr r1, _08006CA8 @ =0x040000D4
	ldr r0, _08006CAC @ =gUnknown_080219F0
	str r0, [r1]
	ldr r0, _08006CB0 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08006CB4 @ =0x80000046
	b _08006E00
	.align 2, 0
_08006CA8: .4byte 0x040000D4
_08006CAC: .4byte gUnknown_080219F0
_08006CB0: .4byte gExaminationData
_08006CB4: .4byte 0x80000046
_08006CB8:
	movs r0, #0
	movs r1, #0xa5
	bl GetFlag
	cmp r0, #0
	bne _08006CD0
	movs r0, #0x8d
	lsls r0, r0, #1
	movs r1, #0xa5
	bl InvestigationSetScriptSectionAndFlag
	b _08006CEC
_08006CD0:
	movs r0, #0
	movs r1, #0x9a
	bl GetFlag
	cmp r0, #0
	bne _08006CEC
	movs r0, #0x25
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xd3
	bl PlayBGM
_08006CEC:
	ldr r1, _08006CFC @ =0x040000D4
	ldr r0, _08006D00 @ =gUnknown_08021ACC
	str r0, [r1]
	ldr r0, _08006D04 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08006D08 @ =0x80000046
	b _08006E00
	.align 2, 0
_08006CFC: .4byte 0x040000D4
_08006D00: .4byte gUnknown_08021ACC
_08006D04: .4byte gExaminationData
_08006D08: .4byte 0x80000046
_08006D0C:
	movs r0, #0
	movs r1, #0xa7
	bl GetFlag
	cmp r0, #0
	bne _08006D24
	movs r0, #0x88
	lsls r0, r0, #1
	movs r1, #0xa7
	bl InvestigationSetScriptSectionAndFlag
	b _08006D36
_08006D24:
	movs r0, #0x1c
	bl sub_801480C
	movs r0, #0x1e
	bl sub_801480C
	movs r0, #0xd3
	bl PlayBGM
_08006D36:
	ldr r1, _08006D44 @ =0x040000D4
	ldr r0, _08006D48 @ =gUnknown_08021B58
	str r0, [r1]
	ldr r0, _08006D4C @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08006D50 @ =0x80000050
	b _08006E00
	.align 2, 0
_08006D44: .4byte 0x040000D4
_08006D48: .4byte gUnknown_08021B58
_08006D4C: .4byte gExaminationData
_08006D50: .4byte 0x80000050
_08006D54:
	movs r0, #0
	movs r1, #0xa8
	bl GetFlag
	cmp r0, #0
	bne _08006D6A
	movs r0, #0xfa
	movs r1, #0xa8
	bl InvestigationSetScriptSectionAndFlag
	b _08006DC0
_08006D6A:
	movs r0, #0
	movs r1, #0xa7
	bl GetFlag
	cmp r0, #0
	bne _08006DAC
	movs r0, #0
	movs r1, #0x99
	bl GetFlag
	cmp r0, #0
	beq _08006D94
	ldr r2, _08006D90 @ =0x00003C68
	movs r0, #8
	adds r1, r2, #0
	bl InvestigationSetPersonAnimation
	b _08006D9E
	.align 2, 0
_08006D90: .4byte 0x00003C68
_08006D94:
	ldr r2, _08006DA8 @ =0x00003628
	movs r0, #0xf
	adds r1, r2, #0
	bl InvestigationSetPersonAnimation
_08006D9E:
	movs r0, #0xc
	bl PlayBGM
	b _08006DC0
	.align 2, 0
_08006DA8: .4byte 0x00003628
_08006DAC:
	movs r0, #0
	movs r1, #0xa9
	bl GetFlag
	cmp r0, #0
	bne _08006DC0
	movs r0, #0xfc
	movs r1, #0xa9
	bl InvestigationSetScriptSectionAndFlag
_08006DC0:
	ldr r1, _08006DD0 @ =0x040000D4
	ldr r0, _08006DD4 @ =gUnknown_08021BF8
	str r0, [r1]
	ldr r0, _08006DD8 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08006DDC @ =0x8000003C
	b _08006E00
	.align 2, 0
_08006DD0: .4byte 0x040000D4
_08006DD4: .4byte gUnknown_08021BF8
_08006DD8: .4byte gExaminationData
_08006DDC: .4byte 0x8000003C
_08006DE0:
	movs r0, #0
	movs r1, #0xa6
	bl GetFlag
	cmp r0, #0
	bne _08006DF4
	ldr r0, _08006E0C @ =0x0000010B
	movs r1, #0xa6
	bl InvestigationSetScriptSectionAndFlag
_08006DF4:
	ldr r1, _08006E10 @ =0x040000D4
	ldr r0, _08006E14 @ =gUnknown_08021A7C
	str r0, [r1]
	ldr r0, _08006E18 @ =gExaminationData
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
_08006E18: .4byte gExaminationData
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
	bl GetFlag
	cmp r0, #0
	beq _08006E78
	ldr r1, _08006E4C @ =0x040000D4
	ldr r0, _08006E50 @ =gUnknown_08021518
	str r0, [r1]
	ldr r0, _08006E54 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08006E58 @ =0x80000032
	b _08006E74
	.align 2, 0
_08006E4C: .4byte 0x040000D4
_08006E50: .4byte gUnknown_08021518
_08006E54: .4byte gExaminationData
_08006E58: .4byte 0x80000032
_08006E5C:
	movs r0, #0
	movs r1, #0xbb
	bl GetFlag
	cmp r0, #0
	beq _08006E78
	ldr r1, _08006E7C @ =0x040000D4
	ldr r0, _08006E80 @ =gUnknown_08021720
	str r0, [r1]
	ldr r0, _08006E84 @ =gExaminationData
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
_08006E84: .4byte gExaminationData
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
	ldr r1, _08006ED4 @ =gTalkData
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
_08006ED4: .4byte gTalkData
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
	ldr r3, _08006F20 @ =gExaminationData
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
_08006F20: .4byte gExaminationData
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
	bl ChangeFlag
	movs r0, #0
	movs r1, #0x94
	bl GetFlag
	cmp r0, #0
	beq _08007008
	movs r0, #0
	movs r1, #0x95
	bl GetFlag
	cmp r0, #0
	beq _08007008
	movs r0, #0
	movs r1, #0x9b
	bl GetFlag
	cmp r0, #0
	bne _08006FD8
	movs r0, #0
	movs r1, #0xb8
	bl GetFlag
	cmp r0, #0
	bne _08006FCE
	movs r0, #0x87
	b _08006FD0
_08006FCE:
	movs r0, #0x88
_08006FD0:
	movs r1, #0x9b
	bl InvestigationSetScriptSectionAndFlag
	b _08006FE8
_08006FD8:
	movs r0, #0xa
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xc
	bl PlayBGM
_08006FE8:
	ldr r1, _08006FF8 @ =0x040000D4
	ldr r0, _08006FFC @ =gUnknown_080224F4
	str r0, [r1]
	ldr r0, _08007000 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08007004 @ =0x80000032
	b _08007486
	.align 2, 0
_08006FF8: .4byte 0x040000D4
_08006FFC: .4byte gUnknown_080224F4
_08007000: .4byte gExaminationData
_08007004: .4byte 0x80000032
_08007008:
	movs r0, #0
	movs r1, #0x9a
	bl GetFlag
	cmp r0, #0
	bne _0800701E
	movs r0, #0x81
	movs r1, #0x9a
	bl InvestigationSetScriptSectionAndFlag
	b _0800702E
_0800701E:
	movs r0, #0x14
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xd7
	bl PlayBGM
_0800702E:
	ldr r1, _0800703C @ =0x040000D4
	ldr r0, _08007040 @ =gUnknown_08022490
	str r0, [r1]
	ldr r0, _08007044 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08007048 @ =0x80000032
	b _08007486
	.align 2, 0
_0800703C: .4byte 0x040000D4
_08007040: .4byte gUnknown_08022490
_08007044: .4byte gExaminationData
_08007048: .4byte 0x80000032
_0800704C:
	movs r0, #0
	movs r1, #0x99
	bl GetFlag
	cmp r0, #0
	beq _080070C0
	movs r0, #0
	movs r1, #0x9e
	bl GetFlag
	cmp r0, #0
	bne _0800706E
	movs r0, #0xfc
	movs r1, #0x9e
	bl InvestigationSetScriptSectionAndFlag
	b _080070A2
_0800706E:
	ldr r2, _0800708C @ =0x00003CB4
	movs r0, #0x24
	adds r1, r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0
	movs r1, #0xbf
	bl GetFlag
	cmp r0, #0
	beq _08007090
	movs r0, #0xcb
	bl PlayBGM
	b _080070A2
	.align 2, 0
_0800708C: .4byte 0x00003CB4
_08007090:
	movs r0, #0
	movs r1, #0xbe
	bl GetFlag
	cmp r0, #0
	bne _080070A2
	movs r0, #0xd6
	bl PlayBGM
_080070A2:
	ldr r1, _080070B0 @ =0x040000D4
	ldr r0, _080070B4 @ =gUnknown_08022580
	str r0, [r1]
	ldr r0, _080070B8 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _080070BC @ =0x80000014
	b _08007486
	.align 2, 0
_080070B0: .4byte 0x040000D4
_080070B4: .4byte gUnknown_08022580
_080070B8: .4byte gExaminationData
_080070BC: .4byte 0x80000014
_080070C0:
	movs r0, #0
	movs r1, #0x90
	bl GetFlag
	cmp r0, #0
	beq _08007138
	movs r0, #0
	movs r1, #0x9d
	bl GetFlag
	cmp r0, #0
	bne _080070E2
	movs r0, #0xa6
	movs r1, #0x9d
	bl InvestigationSetScriptSectionAndFlag
	b _08007118
_080070E2:
	movs r0, #0
	movs r1, #0xaa
	bl GetFlag
	cmp r0, #0
	beq _08007110
	movs r0, #0
	movs r1, #0xbc
	bl GetFlag
	cmp r0, #0
	bne _08007110
	movs r0, #0
	movs r1, #0xbd
	bl GetFlag
	cmp r0, #0
	bne _08007110
	movs r0, #0xab
	movs r1, #0xbd
	bl InvestigationSetScriptSectionAndFlag
	b _08007118
_08007110:
	movs r0, #0xa7
	movs r1, #0xff
	bl InvestigationSetScriptSectionAndFlag
_08007118:
	ldr r1, _08007128 @ =0x040000D4
	ldr r0, _0800712C @ =gUnknown_08022580
	str r0, [r1]
	ldr r0, _08007130 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08007134 @ =0x80000014
	b _08007486
	.align 2, 0
_08007128: .4byte 0x040000D4
_0800712C: .4byte gUnknown_08022580
_08007130: .4byte gExaminationData
_08007134: .4byte 0x80000014
_08007138:
	movs r0, #0
	movs r1, #0x9c
	bl GetFlag
	cmp r0, #0
	bne _0800714C
	movs r0, #0xa3
	movs r1, #0x9c
	bl InvestigationSetScriptSectionAndFlag
_0800714C:
	ldr r1, _0800715C @ =0x040000D4
	ldr r0, _08007160 @ =gUnknown_08022558
	str r0, [r1]
	ldr r0, _08007164 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08007168 @ =0x80000014
	b _08007486
	.align 2, 0
_0800715C: .4byte 0x040000D4
_08007160: .4byte gUnknown_08022558
_08007164: .4byte gExaminationData
_08007168: .4byte 0x80000014
_0800716C:
	movs r0, #0
	movs r1, #0x9f
	bl GetFlag
	cmp r0, #0
	bne _08007188
	ldr r0, _08007184 @ =0x00000105
	movs r1, #0x9f
	bl InvestigationSetScriptSectionAndFlag
	b _08007198
	.align 2, 0
_08007184: .4byte 0x00000105
_08007188:
	movs r0, #0x27
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xda
	bl PlayBGM
_08007198:
	ldr r1, _080071A8 @ =0x040000D4
	ldr r0, _080071AC @ =gUnknown_080225A8
	str r0, [r1]
	ldr r0, _080071B0 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _080071B4 @ =0x80000064
	b _08007486
	.align 2, 0
_080071A8: .4byte 0x040000D4
_080071AC: .4byte gUnknown_080225A8
_080071B0: .4byte gExaminationData
_080071B4: .4byte 0x80000064
_080071B8:
	bl LoadCurrentScriptIntoRam
	movs r0, #0
	movs r1, #0xa1
	bl GetFlag
	cmp r0, #0
	bne _080071D2
	movs r0, #0x88
	lsls r0, r0, #1
	movs r1, #0xa1
	bl InvestigationSetScriptSectionAndFlag
_080071D2:
	ldr r1, _080071E0 @ =0x040000D4
	ldr r0, _080071E4 @ =gUnknown_08022670
	str r0, [r1]
	ldr r0, _080071E8 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _080071EC @ =0x8000005A
	b _08007486
	.align 2, 0
_080071E0: .4byte 0x040000D4
_080071E4: .4byte gUnknown_08022670
_080071E8: .4byte gExaminationData
_080071EC: .4byte 0x8000005A
_080071F0:
	movs r0, #0
	movs r1, #0xa0
	bl GetFlag
	cmp r0, #0
	bne _08007206
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0xa0
	bl InvestigationSetScriptSectionAndFlag
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
	bl ChangeFlag
	movs r0, #0
	movs r1, #0xa2
	bl GetFlag
	cmp r0, #0
	beq _0800723A
	movs r0, #0x14
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xc
	bl PlayBGM
_0800723A:
	ldr r1, _08007248 @ =0x040000D4
	ldr r0, _0800724C @ =gUnknown_080227C4
	str r0, [r1]
	ldr r0, _08007250 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08007254 @ =0x800000BE
	b _08007486
	.align 2, 0
_08007248: .4byte 0x040000D4
_0800724C: .4byte gUnknown_080227C4
_08007250: .4byte gExaminationData
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
	bl GetFlag
	cmp r0, #0
	beq _080072D0
	movs r0, #0
	movs r1, #0xbc
	bl GetFlag
	cmp r0, #0
	beq _080072D0
	movs r0, #0
	movs r1, #0xa5
	bl GetFlag
	cmp r0, #0
	bne _080072B0
	ldr r2, _080072AC @ =0x00005804
	movs r0, #8
	adds r1, r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xa8
	lsls r0, r0, #1
	movs r1, #0xa5
	bl InvestigationSetScriptSectionAndFlag
	b _0800735C
	.align 2, 0
_080072A0: .4byte 0x040000D4
_080072A4: .4byte gUnknown_08022940
_080072A8: .4byte 0x80000046
_080072AC: .4byte 0x00005804
_080072B0:
	movs r0, #0
	movs r1, #0x97
	bl GetFlag
	cmp r0, #0
	bne _0800735C
	ldr r2, _080072CC @ =0x00003C68
	movs r0, #8
	adds r1, r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xc
	b _08007358
	.align 2, 0
_080072CC: .4byte 0x00003C68
_080072D0:
	movs r0, #0
	movs r1, #0x91
	bl GetFlag
	cmp r0, #0
	beq _0800736C
	movs r0, #0
	movs r1, #0x92
	bl GetFlag
	cmp r0, #0
	beq _0800736C
	movs r0, #0
	movs r1, #0x93
	bl GetFlag
	cmp r0, #0
	beq _0800736C
	movs r0, #0
	movs r1, #0xa4
	bl GetFlag
	cmp r0, #0
	bne _0800730C
	movs r0, #0x9d
	lsls r0, r0, #1
	movs r1, #0xa4
	bl InvestigationSetScriptSectionAndFlag
	b _0800735C
_0800730C:
	movs r0, #0
	movs r1, #0x94
	bl GetFlag
	cmp r0, #0
	beq _0800734C
	movs r0, #0
	movs r1, #0x9b
	bl GetFlag
	cmp r0, #0
	bne _0800734C
	movs r0, #0
	movs r1, #0x95
	bl GetFlag
	cmp r0, #0
	beq _0800734C
	movs r0, #0
	movs r1, #0xb8
	bl GetFlag
	cmp r0, #0
	bne _0800734C
	ldr r0, _08007348 @ =0x0000013B
	movs r1, #0xb8
	bl InvestigationSetScriptSectionAndFlag
	b _0800735C
	.align 2, 0
_08007348: .4byte 0x0000013B
_0800734C:
	movs r0, #0x28
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xd1
_08007358:
	bl PlayBGM
_0800735C:
	ldr r1, _08007368 @ =gExaminationData
	movs r0, #0x9e
	lsls r0, r0, #1
	strh r0, [r1, #0x14]
	b _0800748A
	.align 2, 0
_08007368: .4byte gExaminationData
_0800736C:
	movs r0, #0
	movs r1, #0xa3
	bl GetFlag
	cmp r0, #0
	beq _0800737A
	b _0800748A
_0800737A:
	ldr r0, _08007384 @ =0x00000133
	movs r1, #0xa3
	bl InvestigationSetScriptSectionAndFlag
	b _0800748A
	.align 2, 0
_08007384: .4byte 0x00000133
_08007388:
	movs r0, #0
	movs r1, #0x99
	bl GetFlag
	cmp r0, #0
	bne _0800739A
	movs r0, #0x1d
	bl sub_801480C
_0800739A:
	movs r0, #0
	movs r1, #0xa8
	bl GetFlag
	cmp r0, #0
	bne _080073AE
	ldr r0, _080073BC @ =0x00000157
	movs r1, #0xa8
	bl sub_8004458
_080073AE:
	ldr r1, _080073C0 @ =0x040000D4
	ldr r0, _080073C4 @ =gUnknown_080229CC
	str r0, [r1]
	ldr r0, _080073C8 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _080073CC @ =0x80000032
	b _08007486
	.align 2, 0
_080073BC: .4byte 0x00000157
_080073C0: .4byte 0x040000D4
_080073C4: .4byte gUnknown_080229CC
_080073C8: .4byte gExaminationData
_080073CC: .4byte 0x80000032
_080073D0:
	movs r0, #0
	movs r1, #0x97
	bl GetFlag
	cmp r0, #0
	beq _08007428
	movs r0, #0
	movs r1, #0x98
	bl GetFlag
	cmp r0, #0
	bne _080073EE
	movs r0, #0x1f
	bl sub_801480C
_080073EE:
	movs r0, #0
	movs r1, #0xa7
	bl GetFlag
	cmp r0, #0
	bne _08007408
	ldr r0, _08007404 @ =0x0000016B
	movs r1, #0xa7
	bl InvestigationSetScriptSectionAndFlag
	b _0800741A
	.align 2, 0
_08007404: .4byte 0x0000016B
_08007408:
	movs r0, #0
	movs r1, #0x99
	bl GetFlag
	cmp r0, #0
	bne _0800741A
	movs r0, #0xec
	bl PlayBGM
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
	bl GetFlag
	cmp r0, #0
	bne _08007440
	movs r0, #0xb2
	lsls r0, r0, #1
	movs r1, #0xa6
	bl InvestigationSetScriptSectionAndFlag
	b _08007446
_08007440:
	movs r0, #0xee
	bl PlayBGM
_08007446:
	ldr r1, _08007454 @ =0x040000D4
	ldr r0, _08007458 @ =gUnknown_08022A30
	str r0, [r1]
	ldr r0, _0800745C @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08007460 @ =0x80000046
	b _08007486
	.align 2, 0
_08007454: .4byte 0x040000D4
_08007458: .4byte gUnknown_08022A30
_0800745C: .4byte gExaminationData
_08007460: .4byte 0x80000046
_08007464:
	movs r0, #0
	movs r1, #0xa9
	bl GetFlag
	cmp r0, #0
	bne _0800747A
	movs r0, #0xae
	lsls r0, r0, #1
	movs r1, #0xa9
	bl InvestigationSetScriptSectionAndFlag
_0800747A:
	ldr r1, _08007490 @ =0x040000D4
	ldr r0, _08007494 @ =gUnknown_08022B5C
_0800747E:
	str r0, [r1]
	ldr r0, _08007498 @ =gExaminationData
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
_08007498: .4byte gExaminationData
_0800749C: .4byte 0x80000050

	thumb_func_start nullsub_11
nullsub_11: @ 0x080074A0
	bx lr
	.align 2, 0
