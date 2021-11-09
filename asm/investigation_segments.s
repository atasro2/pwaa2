	.include "asm/macros.inc"
	.syntax unified

	thumb_func_start sub_8005310
sub_8005310: @ 0x08005310
	push {lr}
	ldr r2, _0800534C @ =0x040000D4
	ldr r1, _08005350 @ =gUnknown_0801E220
	str r1, [r2]
	ldr r1, _08005354 @ =gMain+0x120
	str r1, [r2, #4]
	ldr r1, _08005358 @ =0x80000028
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _0800535C @ =gUnknown_0801E018
	str r1, [r2]
	ldr r1, _08005360 @ =gTalkData
	str r1, [r2, #4]
	ldr r1, _08005364 @ =0x80000104
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08005368 @ =gUnknown_0801E014
	str r1, [r2]
	ldr r1, _0800536C @ =gUnknown_03003B70
	str r1, [r2, #4]
	ldr r1, _08005370 @ =0x80000002
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0xb2
	movs r1, #0
	strb r1, [r0]
	bl sub_8017910
	pop {r0}
	bx r0
	.align 2, 0
_0800534C: .4byte 0x040000D4
_08005350: .4byte gUnknown_0801E220
_08005354: .4byte gMain+0x120
_08005358: .4byte 0x80000028
_0800535C: .4byte gUnknown_0801E018
_08005360: .4byte gTalkData
_08005364: .4byte 0x80000104
_08005368: .4byte gUnknown_0801E014
_0800536C: .4byte gUnknown_03003B70
_08005370: .4byte 0x80000002

	thumb_func_start sub_8005374
sub_8005374: @ 0x08005374
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _080053A4 @ =0x0000FFFF
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _080053A8 @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	ldr r3, _080053AC @ =gExaminationData
	str r3, [r2, #4]
	ldr r1, _080053B0 @ =0x810000F0
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0xe
	bls _0800539A
	b _080059CA
_0800539A:
	lsls r0, r0, #2
	ldr r1, _080053B4 @ =_080053B8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080053A4: .4byte 0x0000FFFF
_080053A8: .4byte 0x040000D4
_080053AC: .4byte gExaminationData
_080053B0: .4byte 0x810000F0
_080053B4: .4byte _080053B8
_080053B8: @ jump table
	.4byte _080053F4 @ case 0
	.4byte _08005458 @ case 1
	.4byte _080059CA @ case 2
	.4byte _080059CA @ case 3
	.4byte _080059CA @ case 4
	.4byte _080059CA @ case 5
	.4byte _080059CA @ case 6
	.4byte _080059CA @ case 7
	.4byte _0800555C @ case 8
	.4byte _08005606 @ case 9
	.4byte _080056CC @ case 10
	.4byte _0800575C @ case 11
	.4byte _0800582C @ case 12
	.4byte _080058A8 @ case 13
	.4byte _0800599C @ case 14
_080053F4:
	ldr r1, _08005430 @ =0x040000D4
	ldr r0, _08005434 @ =gUnknown_0801E270
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08005438 @ =0x80000032
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xab
	bl GetFlag
	cmp r0, #0
	bne _08005410
	b _080059CA
_08005410:
	movs r0, #0
	movs r1, #0x91
	bl GetFlag
	cmp r0, #0
	bne _08005440
	ldr r2, _0800543C @ =0x00000AF8
	movs r0, #4
	adds r1, r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0x87
	movs r1, #0x91
	bl InvestigationSetScriptSectionAndFlag
	b _080059CA
	.align 2, 0
_08005430: .4byte 0x040000D4
_08005434: .4byte gUnknown_0801E270
_08005438: .4byte 0x80000032
_0800543C: .4byte 0x00000AF8
_08005440:
	ldr r2, _08005454 @ =0x000012D0
	movs r0, #4
	adds r1, r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xcc
	bl PlayBGM
	b _080059CA
	.align 2, 0
_08005454: .4byte 0x000012D0
_08005458:
	movs r0, #0
	movs r1, #0xb5
	bl GetFlag
	cmp r0, #0
	beq _080054C0
	movs r0, #0
	movs r1, #0xb6
	bl GetFlag
	cmp r0, #0
	beq _080054C0
	movs r0, #0
	movs r1, #0x94
	bl GetFlag
	cmp r0, #0
	bne _0800548E
	movs r0, #0xad
	movs r1, #0x94
	bl InvestigationSetScriptSectionAndFlag
	movs r0, #1
	movs r1, #1
	bl sub_800EAC8
	b _0800549E
_0800548E:
	ldr r2, _080054AC @ =0x00001FEC
	movs r0, #0x1d
	adds r1, r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xd0
	bl PlayBGM
_0800549E:
	ldr r1, _080054B0 @ =0x040000D4
	ldr r0, _080054B4 @ =gUnknown_0801E2D4
	str r0, [r1]
	ldr r0, _080054B8 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _080054BC @ =0x80000014
	b _080059C6
	.align 2, 0
_080054AC: .4byte 0x00001FEC
_080054B0: .4byte 0x040000D4
_080054B4: .4byte gUnknown_0801E2D4
_080054B8: .4byte gExaminationData
_080054BC: .4byte 0x80000014
_080054C0:
	movs r0, #0
	movs r1, #0xac
	bl GetFlag
	cmp r0, #0
	beq _08005500
	movs r0, #0
	movs r1, #0x93
	bl GetFlag
	cmp r0, #0
	bne _080054E0
	movs r0, #0xaa
	movs r1, #0x93
	bl InvestigationSetScriptSectionAndFlag
_080054E0:
	ldr r1, _080054F0 @ =0x040000D4
	ldr r0, _080054F4 @ =gUnknown_0801E2FC
	str r0, [r1]
	ldr r0, _080054F8 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _080054FC @ =0x80000014
	b _080059C6
	.align 2, 0
_080054F0: .4byte 0x040000D4
_080054F4: .4byte gUnknown_0801E2FC
_080054F8: .4byte gExaminationData
_080054FC: .4byte 0x80000014
_08005500:
	bl LoadCurrentScriptIntoRam
	movs r0, #0
	movs r1, #0x92
	bl GetFlag
	cmp r0, #0
	bne _0800551A
	movs r0, #0x99
	movs r1, #0x92
	bl InvestigationSetScriptSectionAndFlag
	b _0800553E
_0800551A:
	movs r0, #0x1d
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0
	movs r1, #0xab
	bl GetFlag
	cmp r0, #0
	beq _08005538
	movs r0, #0xd0
	bl PlayBGM
	b _0800553E
_08005538:
	movs r0, #0xd7
	bl PlayBGM
_0800553E:
	ldr r1, _0800554C @ =0x040000D4
	ldr r0, _08005550 @ =gUnknown_0801E2D4
	str r0, [r1]
	ldr r0, _08005554 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08005558 @ =0x80000014
	b _080059C6
	.align 2, 0
_0800554C: .4byte 0x040000D4
_08005550: .4byte gUnknown_0801E2D4
_08005554: .4byte gExaminationData
_08005558: .4byte 0x80000014
_0800555C:
	ldr r1, _08005598 @ =0x040000D4
	ldr r0, _0800559C @ =gUnknown_0801E324
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _080055A0 @ =0x80000050
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xb9
	bl GetFlag
	cmp r0, #0
	beq _080055A4
	movs r0, #0
	movs r1, #0xc6
	movs r2, #0
	bl ChangeFlag
	movs r0, #0
	movs r1, #0x97
	bl GetFlag
	cmp r0, #0
	bne _080055FE
	movs r0, #0xcd
	movs r1, #0x97
	bl InvestigationSetScriptSectionAndFlag
	b _080059CA
	.align 2, 0
_08005598: .4byte 0x040000D4
_0800559C: .4byte gUnknown_0801E324
_080055A0: .4byte 0x80000050
_080055A4:
	movs r0, #0
	movs r1, #0xae
	bl GetFlag
	cmp r0, #0
	beq _080055DE
	movs r0, #0
	movs r1, #0xac
	bl GetFlag
	cmp r0, #0
	beq _080055DE
	movs r0, #0
	movs r1, #0xc6
	movs r2, #1
	bl ChangeFlag
	movs r0, #0
	movs r1, #0x96
	bl GetFlag
	cmp r0, #0
	beq _080055D4
	b _080057D4
_080055D4:
	movs r0, #0xc7
	movs r1, #0x96
	bl InvestigationSetScriptSectionAndFlag
	b _080059CA
_080055DE:
	movs r0, #0
	movs r1, #0xc6
	movs r2, #0
	bl ChangeFlag
	movs r0, #0
	movs r1, #0x95
	bl GetFlag
	cmp r0, #0
	bne _080055FE
	movs r0, #0xc6
	movs r1, #0x95
	bl InvestigationSetScriptSectionAndFlag
	b _080059CA
_080055FE:
	movs r0, #0x1f
	bl PlayBGM
	b _080059CA
_08005606:
	movs r0, #0
	movs r1, #0xba
	bl GetFlag
	cmp r0, #0
	beq _08005654
	movs r0, #0
	movs r1, #0xc8
	movs r2, #1
	bl ChangeFlag
	movs r0, #0
	movs r1, #0x9a
	bl GetFlag
	cmp r0, #0
	bne _08005632
	movs r0, #0xea
	movs r1, #0x9a
	bl InvestigationSetScriptSectionAndFlag
	b _08005642
_08005632:
	ldr r2, _08005648 @ =0x000010F0
	movs r0, #0x1c
	adds r1, r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xcd
	bl PlayBGM
_08005642:
	ldr r1, _0800564C @ =0x040000D4
	ldr r0, _08005650 @ =gUnknown_0801E464
	b _080059BE
	.align 2, 0
_08005648: .4byte 0x000010F0
_0800564C: .4byte 0x040000D4
_08005650: .4byte gUnknown_0801E464
_08005654:
	movs r0, #0
	movs r1, #0xb9
	bl GetFlag
	cmp r0, #0
	beq _0800568C
	movs r0, #0
	movs r1, #0xc8
	movs r2, #0
	bl ChangeFlag
	movs r0, #0
	movs r1, #0x99
	bl GetFlag
	cmp r0, #0
	bne _0800567E
	movs r0, #0xe9
	movs r1, #0x99
	bl InvestigationSetScriptSectionAndFlag
_0800567E:
	ldr r1, _08005684 @ =0x040000D4
	ldr r0, _08005688 @ =gUnknown_0801E52C
	b _080059BE
	.align 2, 0
_08005684: .4byte 0x040000D4
_08005688: .4byte gUnknown_0801E52C
_0800568C:
	movs r0, #0
	movs r1, #0xc8
	movs r2, #1
	bl ChangeFlag
	movs r0, #0
	movs r1, #0x98
	bl GetFlag
	cmp r0, #0
	bne _080056AC
	movs r0, #0xdb
	movs r1, #0x98
	bl InvestigationSetScriptSectionAndFlag
	b _080056BC
_080056AC:
	movs r0, #0x1c
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xcd
	bl PlayBGM
_080056BC:
	ldr r1, _080056C4 @ =0x040000D4
	ldr r0, _080056C8 @ =gUnknown_0801E464
	b _080059BE
	.align 2, 0
_080056C4: .4byte 0x040000D4
_080056C8: .4byte gUnknown_0801E464
_080056CC:
	movs r0, #0
	movs r1, #0xba
	bl GetFlag
	cmp r0, #0
	beq _08005714
	movs r0, #0
	movs r1, #0x9c
	bl GetFlag
	cmp r0, #0
	bne _080056EE
	movs r0, #0xda
	movs r1, #0x9c
	bl InvestigationSetScriptSectionAndFlag
	b _080056F4
_080056EE:
	movs r0, #0x1f
	bl PlayBGM
_080056F4:
	ldr r1, _08005704 @ =0x040000D4
	ldr r0, _08005708 @ =gUnknown_0801E414
	str r0, [r1]
	ldr r0, _0800570C @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08005710 @ =0x80000028
	b _080059C6
	.align 2, 0
_08005704: .4byte 0x040000D4
_08005708: .4byte gUnknown_0801E414
_0800570C: .4byte gExaminationData
_08005710: .4byte 0x80000028
_08005714:
	movs r0, #0
	movs r1, #0x9b
	bl GetFlag
	cmp r0, #0
	bne _0800572A
	movs r0, #0xce
	movs r1, #0x9b
	bl InvestigationSetScriptSectionAndFlag
	b _0800573A
_0800572A:
	ldr r2, _08005748 @ =0x0000185C
	movs r0, #0xa
	adds r1, r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0x1f
	bl PlayBGM
_0800573A:
	ldr r1, _0800574C @ =0x040000D4
	ldr r0, _08005750 @ =gUnknown_0801E3C4
	str r0, [r1]
	ldr r0, _08005754 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08005758 @ =0x80000028
	b _080059C6
	.align 2, 0
_08005748: .4byte 0x0000185C
_0800574C: .4byte 0x040000D4
_08005750: .4byte gUnknown_0801E3C4
_08005754: .4byte gExaminationData
_08005758: .4byte 0x80000028
_0800575C:
	ldr r1, _08005798 @ =0x040000D4
	ldr r0, _0800579C @ =gUnknown_0801E7FC
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _080057A0 @ =0x80000096
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xb9
	bl GetFlag
	cmp r0, #0
	beq _080057E6
	movs r0, #0
	movs r1, #0xc7
	movs r2, #1
	bl ChangeFlag
	movs r0, #0
	movs r1, #0x9e
	bl GetFlag
	cmp r0, #0
	bne _080057A4
	movs r0, #0xf9
	movs r1, #0x9e
	bl InvestigationSetScriptSectionAndFlag
	b _080059CA
	.align 2, 0
_08005798: .4byte 0x040000D4
_0800579C: .4byte gUnknown_0801E7FC
_080057A0: .4byte 0x80000096
_080057A4:
	movs r0, #0
	movs r1, #0xba
	bl GetFlag
	cmp r0, #0
	beq _080057B2
	b _080059CA
_080057B2:
	movs r0, #0
	movs r1, #0xc9
	bl GetFlag
	cmp r0, #0
	beq _080057D4
	ldr r2, _080057D0 @ =0x00001364
	movs r0, #0x1e
	adds r1, r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xda
	bl PlayBGM
	b _080059CA
	.align 2, 0
_080057D0: .4byte 0x00001364
_080057D4:
	movs r0, #0x1e
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xd1
	bl PlayBGM
	b _080059CA
_080057E6:
	movs r0, #0
	movs r1, #0xc7
	movs r2, #0
	bl ChangeFlag
	movs r0, #0
	movs r1, #0x9d
	bl GetFlag
	cmp r0, #0
	bne _08005806
	movs r0, #0xf7
	movs r1, #0x9d
	bl InvestigationSetScriptSectionAndFlag
	b _0800580C
_08005806:
	movs r0, #0xd7
	bl PlayBGM
_0800580C:
	ldr r1, _0800581C @ =0x040000D4
	ldr r0, _08005820 @ =gUnknown_0801E7FC
	str r0, [r1]
	ldr r0, _08005824 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08005828 @ =0x80000096
	b _080059C6
	.align 2, 0
_0800581C: .4byte 0x040000D4
_08005820: .4byte gUnknown_0801E7FC
_08005824: .4byte gExaminationData
_08005828: .4byte 0x80000096
_0800582C:
	movs r0, #0
	movs r1, #0xb6
	bl GetFlag
	cmp r0, #0
	beq _08005848
	ldr r1, _08005840 @ =0x040000D4
	ldr r0, _08005844 @ =gUnknown_0801E6F8
	b _0800584C
	.align 2, 0
_08005840: .4byte 0x040000D4
_08005844: .4byte gUnknown_0801E6F8
_08005848:
	ldr r1, _0800587C @ =0x040000D4
	ldr r0, _08005880 @ =gUnknown_0801E5F4
_0800584C:
	str r0, [r1]
	ldr r0, _08005884 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08005888 @ =0x80000082
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xb9
	bl GetFlag
	cmp r0, #0
	beq _0800588C
	movs r0, #0
	movs r1, #0xa0
	bl GetFlag
	cmp r0, #0
	bne _080058A0
	movs r0, #0xf5
	movs r1, #0xa0
	bl InvestigationSetScriptSectionAndFlag
	b _080058A0
	.align 2, 0
_0800587C: .4byte 0x040000D4
_08005880: .4byte gUnknown_0801E5F4
_08005884: .4byte gExaminationData
_08005888: .4byte 0x80000082
_0800588C:
	movs r0, #0
	movs r1, #0x9f
	bl GetFlag
	cmp r0, #0
	bne _080058A0
	movs r0, #0xf1
	movs r1, #0x9f
	bl InvestigationSetScriptSectionAndFlag
_080058A0:
	movs r0, #0x19
	bl sub_801480C
	b _080059CA
_080058A8:
	movs r0, #0
	movs r1, #0xbb
	bl GetFlag
	cmp r0, #0
	beq _080058D8
	movs r0, #0
	movs r1, #0xa4
	bl GetFlag
	cmp r0, #0
	bne _080058CA
	movs r0, #0x8c
	lsls r0, r0, #1
	movs r1, #0xa4
	bl InvestigationSetScriptSectionAndFlag
_080058CA:
	ldr r1, _080058D0 @ =0x040000D4
	ldr r0, _080058D4 @ =gUnknown_0801E928
	b _080059BE
	.align 2, 0
_080058D0: .4byte 0x040000D4
_080058D4: .4byte gUnknown_0801E928
_080058D8:
	movs r0, #0
	movs r1, #0xba
	bl GetFlag
	cmp r0, #0
	beq _08005920
	movs r0, #0
	movs r1, #0xa3
	bl GetFlag
	cmp r0, #0
	bne _080058FC
	movs r0, #0x89
	lsls r0, r0, #1
	movs r1, #0xa3
	bl InvestigationSetScriptSectionAndFlag
	b _0800590C
_080058FC:
	ldr r2, _08005914 @ =0x00000784
	movs r0, #0x1f
	adds r1, r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xda
	bl PlayBGM
_0800590C:
	ldr r1, _08005918 @ =0x040000D4
	ldr r0, _0800591C @ =gUnknown_0801E9F0
	b _080059BE
	.align 2, 0
_08005914: .4byte 0x00000784
_08005918: .4byte 0x040000D4
_0800591C: .4byte gUnknown_0801E9F0
_08005920:
	movs r0, #0
	movs r1, #0xaf
	bl GetFlag
	cmp r0, #0
	beq _08005978
	movs r0, #0
	movs r1, #0xb0
	bl GetFlag
	cmp r0, #0
	beq _08005978
	movs r0, #0
	movs r1, #0xa2
	bl GetFlag
	cmp r0, #0
	bne _08005954
	ldr r0, _08005950 @ =0x00000103
	movs r1, #0xa2
	bl InvestigationSetScriptSectionAndFlag
	b _08005964
	.align 2, 0
_08005950: .4byte 0x00000103
_08005954:
	ldr r2, _0800596C @ =0x00000784
	movs r0, #0x1f
	adds r1, r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xda
	bl PlayBGM
_08005964:
	ldr r1, _08005970 @ =0x040000D4
	ldr r0, _08005974 @ =gUnknown_0801E9F0
	b _080059BE
	.align 2, 0
_0800596C: .4byte 0x00000784
_08005970: .4byte 0x040000D4
_08005974: .4byte gUnknown_0801E9F0
_08005978:
	movs r0, #0
	movs r1, #0xa1
	bl GetFlag
	cmp r0, #0
	bne _0800598E
	movs r0, #0x81
	lsls r0, r0, #1
	movs r1, #0xa1
	bl InvestigationSetScriptSectionAndFlag
_0800598E:
	ldr r1, _08005994 @ =0x040000D4
	ldr r0, _08005998 @ =gUnknown_0801E928
	b _080059BE
	.align 2, 0
_08005994: .4byte 0x040000D4
_08005998: .4byte gUnknown_0801E928
_0800599C:
	movs r0, #0
	movs r1, #0xa5
	bl GetFlag
	cmp r0, #0
	bne _080059B4
	movs r0, #0x8d
	lsls r0, r0, #1
	movs r1, #0xa5
	bl InvestigationSetScriptSectionAndFlag
	b _080059BA
_080059B4:
	movs r0, #0xd7
	bl PlayBGM
_080059BA:
	ldr r1, _080059D0 @ =0x040000D4
	ldr r0, _080059D4 @ =gUnknown_0801EAB8
_080059BE:
	str r0, [r1]
	ldr r0, _080059D8 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _080059DC @ =0x80000064
_080059C6:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080059CA:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080059D0: .4byte 0x040000D4
_080059D4: .4byte gUnknown_0801EAB8
_080059D8: .4byte gExaminationData
_080059DC: .4byte 0x80000064

	thumb_func_start sub_80059E0
sub_80059E0: @ 0x080059E0
	push {lr}
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _08005A1C
	movs r0, #0
	movs r1, #0xb7
	bl GetFlag
	cmp r0, #0
	bne _08005A1C
	movs r0, #0
	movs r1, #0xb6
	bl GetFlag
	cmp r0, #0
	beq _08005A1C
	ldr r1, _08005A20 @ =0x040000D4
	ldr r0, _08005A24 @ =gUnknown_0801E6F8
	str r0, [r1]
	ldr r0, _08005A28 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08005A2C @ =0x80000082
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xb7
	movs r2, #1
	bl ChangeFlag
_08005A1C:
	pop {r0}
	bx r0
	.align 2, 0
_08005A20: .4byte 0x040000D4
_08005A24: .4byte gUnknown_0801E6F8
_08005A28: .4byte gExaminationData
_08005A2C: .4byte 0x80000082

	thumb_func_start sub_8005A30
sub_8005A30: @ 0x08005A30
	ldr r2, _08005A64 @ =0x040000D4
	ldr r1, _08005A68 @ =gUnknown_0801F1EC
	str r1, [r2]
	ldr r1, _08005A6C @ =gMain+0x120
	str r1, [r2, #4]
	ldr r1, _08005A70 @ =0x80000028
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08005A74 @ =gUnknown_0801EFE4
	str r1, [r2]
	ldr r1, _08005A78 @ =gTalkData
	str r1, [r2, #4]
	ldr r1, _08005A7C @ =0x80000104
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08005A80 @ =gUnknown_0801EFDC
	str r1, [r2]
	ldr r1, _08005A84 @ =gUnknown_03003B70
	str r1, [r2, #4]
	ldr r1, _08005A88 @ =0x80000004
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0xb2
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_08005A64: .4byte 0x040000D4
_08005A68: .4byte gUnknown_0801F1EC
_08005A6C: .4byte gMain+0x120
_08005A70: .4byte 0x80000028
_08005A74: .4byte gUnknown_0801EFE4
_08005A78: .4byte gTalkData
_08005A7C: .4byte 0x80000104
_08005A80: .4byte gUnknown_0801EFDC
_08005A84: .4byte gUnknown_03003B70
_08005A88: .4byte 0x80000004

	thumb_func_start sub_8005A8C
sub_8005A8C: @ 0x08005A8C
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _08005ABC @ =0x0000FFFF
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _08005AC0 @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	ldr r3, _08005AC4 @ =gExaminationData
	str r3, [r2, #4]
	ldr r1, _08005AC8 @ =0x810000F0
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0xe
	bls _08005AB2
	b _08005FB4
_08005AB2:
	lsls r0, r0, #2
	ldr r1, _08005ACC @ =_08005AD0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005ABC: .4byte 0x0000FFFF
_08005AC0: .4byte 0x040000D4
_08005AC4: .4byte gExaminationData
_08005AC8: .4byte 0x810000F0
_08005ACC: .4byte _08005AD0
_08005AD0: @ jump table
	.4byte _08005B0C @ case 0
	.4byte _08005B4C @ case 1
	.4byte _08005FB4 @ case 2
	.4byte _08005FB4 @ case 3
	.4byte _08005FB4 @ case 4
	.4byte _08005FB4 @ case 5
	.4byte _08005FB4 @ case 6
	.4byte _08005FB4 @ case 7
	.4byte _08005BEC @ case 8
	.4byte _08005C34 @ case 9
	.4byte _08005CC4 @ case 10
	.4byte _08005D46 @ case 11
	.4byte _08005E78 @ case 12
	.4byte _08005EC2 @ case 13
	.4byte _08005F36 @ case 14
_08005B0C:
	ldr r1, _08005B3C @ =0x040000D4
	ldr r0, _08005B40 @ =gUnknown_0801F23C
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08005B44 @ =0x80000032
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xd7
	bl GetFlag
	cmp r0, #0
	bne _08005B28
	b _08005FB4
_08005B28:
	ldr r2, _08005B48 @ =0x000025E4
	movs r0, #4
	adds r1, r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xcc
	bl PlayBGM
	b _08005FB4
	.align 2, 0
_08005B3C: .4byte 0x040000D4
_08005B40: .4byte gUnknown_0801F23C
_08005B44: .4byte 0x80000032
_08005B48: .4byte 0x000025E4
_08005B4C:
	movs r0, #0
	movs r1, #0xd4
	bl GetFlag
	cmp r0, #0
	beq _08005BA4
	movs r0, #0
	movs r1, #0xd5
	bl GetFlag
	cmp r0, #0
	beq _08005BA4
	movs r0, #0
	movs r1, #0xd6
	bl GetFlag
	cmp r0, #0
	beq _08005BA4
	movs r0, #0
	movs r1, #0xd9
	bl GetFlag
	cmp r0, #0
	bne _08005B84
	movs r0, #0xae
	movs r1, #0xd9
	bl InvestigationSetScriptSectionAndFlag
_08005B84:
	ldr r1, _08005B94 @ =0x040000D4
	ldr r0, _08005B98 @ =gUnknown_0801F2C8
	str r0, [r1]
	ldr r0, _08005B9C @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08005BA0 @ =0x80000014
	b _08005E62
	.align 2, 0
_08005B94: .4byte 0x040000D4
_08005B98: .4byte gUnknown_0801F2C8
_08005B9C: .4byte gExaminationData
_08005BA0: .4byte 0x80000014
_08005BA4:
	movs r0, #0
	movs r1, #0xd8
	bl GetFlag
	cmp r0, #0
	bne _08005BBA
	movs r0, #0x9b
	movs r1, #0xd8
	bl InvestigationSetScriptSectionAndFlag
	b _08005BCA
_08005BBA:
	ldr r2, _08005BD8 @ =0x00001FEC
	movs r0, #0x1d
	adds r1, r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xd0
	bl PlayBGM
_08005BCA:
	ldr r1, _08005BDC @ =0x040000D4
	ldr r0, _08005BE0 @ =gUnknown_0801F2A0
	str r0, [r1]
	ldr r0, _08005BE4 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08005BE8 @ =0x80000014
	b _08005E62
	.align 2, 0
_08005BD8: .4byte 0x00001FEC
_08005BDC: .4byte 0x040000D4
_08005BE0: .4byte gUnknown_0801F2A0
_08005BE4: .4byte gExaminationData
_08005BE8: .4byte 0x80000014
_08005BEC:
	ldr r1, _08005C10 @ =0x040000D4
	ldr r0, _08005C14 @ =gUnknown_0801F2F0
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08005C18 @ =0x80000050
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xda
	bl GetFlag
	cmp r0, #0
	bne _08005C1C
	movs r0, #0xb1
	movs r1, #0xda
	bl InvestigationSetScriptSectionAndFlag
	b _08005FB4
	.align 2, 0
_08005C10: .4byte 0x040000D4
_08005C14: .4byte gUnknown_0801F2F0
_08005C18: .4byte 0x80000050
_08005C1C:
	ldr r2, _08005C30 @ =0x000008A4
	movs r0, #0x1e
	adds r1, r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xda
	bl PlayBGM
	b _08005FB4
	.align 2, 0
_08005C30: .4byte 0x000008A4
_08005C34:
	movs r0, #0
	movs r1, #0xd3
	bl GetFlag
	cmp r0, #0
	beq _08005C90
	ldr r1, _08005C68 @ =0x040000D4
	ldr r0, _08005C6C @ =gUnknown_0801F458
	str r0, [r1]
	ldr r0, _08005C70 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08005C74 @ =0x80000064
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xdc
	bl GetFlag
	cmp r0, #0
	bne _08005C78
	movs r0, #0xb7
	movs r1, #0xdc
	bl InvestigationSetScriptSectionAndFlag
	b _08005FB4
	.align 2, 0
_08005C68: .4byte 0x040000D4
_08005C6C: .4byte gUnknown_0801F458
_08005C70: .4byte gExaminationData
_08005C74: .4byte 0x80000064
_08005C78:
	ldr r2, _08005C8C @ =0x000010F0
	movs r0, #0x1c
	adds r1, r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xcd
	bl PlayBGM
	b _08005FB4
	.align 2, 0
_08005C8C: .4byte 0x000010F0
_08005C90:
	movs r0, #0
	movs r1, #0xdb
	bl GetFlag
	cmp r0, #0
	bne _08005CA4
	movs r0, #0xb6
	movs r1, #0xdb
	bl InvestigationSetScriptSectionAndFlag
_08005CA4:
	ldr r1, _08005CB4 @ =0x040000D4
	ldr r0, _08005CB8 @ =gUnknown_0801F390
	str r0, [r1]
	ldr r0, _08005CBC @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08005CC0 @ =0x80000064
	b _08005E62
	.align 2, 0
_08005CB4: .4byte 0x040000D4
_08005CB8: .4byte gUnknown_0801F390
_08005CBC: .4byte gExaminationData
_08005CC0: .4byte 0x80000064
_08005CC4:
	ldr r1, _08005D00 @ =0x040000D4
	ldr r0, _08005D04 @ =gUnknown_0801F520
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08005D08 @ =0x80000028
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xd1
	bl GetFlag
	cmp r0, #0
	beq _08005D28
	movs r0, #0
	movs r1, #0xde
	bl GetFlag
	cmp r0, #0
	bne _08005D0C
	movs r0, #0xa
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xf4
	movs r1, #0xde
	bl InvestigationSetScriptSectionAndFlag
	b _08005FB4
	.align 2, 0
_08005D00: .4byte 0x040000D4
_08005D04: .4byte gUnknown_0801F520
_08005D08: .4byte 0x80000028
_08005D0C:
	movs r0, #0
	movs r1, #0xd2
	bl GetFlag
	cmp r0, #0
	bne _08005D3E
	ldr r2, _08005D24 @ =0x00003628
	movs r0, #0xf
	adds r1, r2, #0
	bl InvestigationSetPersonAnimation
	b _08005D3E
	.align 2, 0
_08005D24: .4byte 0x00003628
_08005D28:
	movs r0, #0
	movs r1, #0xdd
	bl GetFlag
	cmp r0, #0
	bne _08005D3E
	movs r0, #0xf3
	movs r1, #0xdd
	bl InvestigationSetScriptSectionAndFlag
	b _08005FB4
_08005D3E:
	movs r0, #0x1f
	bl PlayBGM
	b _08005FB4
_08005D46:
	movs r0, #0
	movs r1, #0xd4
	bl GetFlag
	cmp r0, #0
	beq _08005DB4
	movs r0, #0
	movs r1, #0xd5
	bl GetFlag
	cmp r0, #0
	beq _08005DB4
	movs r0, #0
	movs r1, #0xd6
	bl GetFlag
	cmp r0, #0
	beq _08005DB4
	movs r0, #0xb
	movs r1, #1
	bl sub_800EAC8
	movs r0, #0
	movs r1, #0xf5
	movs r2, #1
	bl ChangeFlag
	movs r0, #0
	movs r1, #0xe2
	bl GetFlag
	cmp r0, #0
	bne _08005D92
	movs r0, #0xdd
	movs r1, #0xe2
	bl InvestigationSetScriptSectionAndFlag
	b _08005DA2
_08005D92:
	ldr r2, _08005DA8 @ =0x00000784
	movs r0, #0x1f
	adds r1, r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xda
	bl PlayBGM
_08005DA2:
	ldr r1, _08005DAC @ =0x040000D4
	ldr r0, _08005DB0 @ =gUnknown_0801F688
	b _08005E5A
	.align 2, 0
_08005DA8: .4byte 0x00000784
_08005DAC: .4byte 0x040000D4
_08005DB0: .4byte gUnknown_0801F688
_08005DB4:
	movs r0, #0
	movs r1, #0xd1
	bl GetFlag
	cmp r0, #0
	beq _08005DE0
	movs r0, #0
	movs r1, #0xf5
	movs r2, #0
	bl ChangeFlag
	movs r0, #0
	movs r1, #0xe1
	bl GetFlag
	cmp r0, #0
	bne _08005E56
	movs r0, #0xdc
	movs r1, #0xe1
	bl InvestigationSetScriptSectionAndFlag
	b _08005E56
_08005DE0:
	movs r0, #0
	movs r1, #0xd0
	bl GetFlag
	cmp r0, #0
	beq _08005E30
	movs r0, #0
	movs r1, #0xf5
	movs r2, #1
	bl ChangeFlag
	movs r0, #0
	movs r1, #0xe0
	bl GetFlag
	cmp r0, #0
	bne _08005E0C
	movs r0, #0xce
	movs r1, #0xe0
	bl InvestigationSetScriptSectionAndFlag
	b _08005E1C
_08005E0C:
	ldr r2, _08005E24 @ =0x00000784
	movs r0, #0x1f
	adds r1, r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xda
	bl PlayBGM
_08005E1C:
	ldr r1, _08005E28 @ =0x040000D4
	ldr r0, _08005E2C @ =gUnknown_0801F688
	b _08005E5A
	.align 2, 0
_08005E24: .4byte 0x00000784
_08005E28: .4byte 0x040000D4
_08005E2C: .4byte gUnknown_0801F688
_08005E30:
	movs r0, #0
	movs r1, #0xf5
	movs r2, #0
	bl ChangeFlag
	movs r0, #0
	movs r1, #0xdf
	bl GetFlag
	cmp r0, #0
	bne _08005E50
	movs r0, #0xcd
	movs r1, #0xdf
	bl InvestigationSetScriptSectionAndFlag
	b _08005E56
_08005E50:
	movs r0, #0xd7
	bl PlayBGM
_08005E56:
	ldr r1, _08005E68 @ =0x040000D4
	ldr r0, _08005E6C @ =gUnknown_0801F570
_08005E5A:
	str r0, [r1]
	ldr r0, _08005E70 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08005E74 @ =0x8000008C
_08005E62:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _08005FB4
	.align 2, 0
_08005E68: .4byte 0x040000D4
_08005E6C: .4byte gUnknown_0801F570
_08005E70: .4byte gExaminationData
_08005E74: .4byte 0x8000008C
_08005E78:
	ldr r1, _08005E9C @ =0x040000D4
	ldr r0, _08005EA0 @ =gUnknown_0801F7A0
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08005EA4 @ =0x80000082
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xe3
	bl GetFlag
	cmp r0, #0
	bne _08005EA8
	movs r0, #0xef
	movs r1, #0xe3
	bl InvestigationSetScriptSectionAndFlag
	b _08005EAE
	.align 2, 0
_08005E9C: .4byte 0x040000D4
_08005EA0: .4byte gUnknown_0801F7A0
_08005EA4: .4byte 0x80000082
_08005EA8:
	movs r0, #0xd7
	bl PlayBGM
_08005EAE:
	movs r0, #0
	movs r1, #0xd1
	bl GetFlag
	cmp r0, #0
	bne _08005FB4
	movs r0, #0x19
	bl sub_801480C
	b _08005FB4
_08005EC2:
	ldr r1, _08005F0C @ =0x040000D4
	ldr r0, _08005F10 @ =gUnknown_0801F8A4
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08005F14 @ =0x80000064
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xd4
	bl GetFlag
	cmp r0, #0
	beq _08005F18
	movs r0, #0
	movs r1, #0xd5
	bl GetFlag
	cmp r0, #0
	beq _08005F18
	movs r0, #0
	movs r1, #0xd6
	bl GetFlag
	cmp r0, #0
	beq _08005F18
	movs r0, #0
	movs r1, #0xe5
	bl GetFlag
	cmp r0, #0
	bne _08005FB4
	movs r0, #0xfc
	movs r1, #0xe5
	bl InvestigationSetScriptSectionAndFlag
	b _08005FB4
	.align 2, 0
_08005F0C: .4byte 0x040000D4
_08005F10: .4byte gUnknown_0801F8A4
_08005F14: .4byte 0x80000064
_08005F18:
	movs r0, #0
	movs r1, #0xe4
	bl GetFlag
	cmp r0, #0
	bne _08005F2E
	movs r0, #0xfb
	movs r1, #0xe4
	bl InvestigationSetScriptSectionAndFlag
	b _08005FB4
_08005F2E:
	movs r0, #0xd7
	bl PlayBGM
	b _08005FB4
_08005F36:
	ldr r1, _08005F6C @ =0x040000D4
	ldr r0, _08005F70 @ =gUnknown_0801F96C
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08005F74 @ =0x80000064
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xe6
	bl GetFlag
	cmp r0, #0
	bne _08005F7C
	movs r0, #0x20
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0x3d
	bl sub_801480C
	ldr r0, _08005F78 @ =0x00000101
	movs r1, #0xe6
	bl InvestigationSetScriptSectionAndFlag
	b _08005FB4
	.align 2, 0
_08005F6C: .4byte 0x040000D4
_08005F70: .4byte gUnknown_0801F96C
_08005F74: .4byte 0x80000064
_08005F78: .4byte 0x00000101
_08005F7C:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0x3d
	bl sub_801480C
	movs r0, #0
	movs r1, #0xf9
	bl GetFlag
	cmp r0, #0
	beq _08005FAE
	movs r0, #0
	movs r1, #0xfa
	bl GetFlag
	cmp r0, #0
	bne _08005FAE
	movs r0, #0x81
	lsls r0, r0, #1
	movs r1, #0xfa
	bl InvestigationSetScriptSectionAndFlag
_08005FAE:
	movs r0, #0xcd
	bl PlayBGM
_08005FB4:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start nullsub_3
nullsub_3: @ 0x08005FBC
	bx lr
	.align 2, 0

	thumb_func_start sub_8005FC0
sub_8005FC0: @ 0x08005FC0
	push {lr}
	ldr r2, _08005FF0 @ =0x040000D4
	ldr r1, _08005FF4 @ =gUnknown_0801FF70
	str r1, [r2]
	ldr r1, _08005FF8 @ =gMain+0x120
	str r1, [r2, #4]
	ldr r1, _08005FFC @ =0x8000003E
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08006000 @ =gUnknown_0801FE30
	str r1, [r2]
	ldr r1, _08006004 @ =gTalkData
	str r1, [r2, #4]
	ldr r1, _08006008 @ =0x800000A0
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0xb2
	movs r1, #0x13
	strb r1, [r0]
	bl sub_8017910
	pop {r0}
	bx r0
	.align 2, 0
_08005FF0: .4byte 0x040000D4
_08005FF4: .4byte gUnknown_0801FF70
_08005FF8: .4byte gMain+0x120
_08005FFC: .4byte 0x8000003E
_08006000: .4byte gUnknown_0801FE30
_08006004: .4byte gTalkData
_08006008: .4byte 0x800000A0

	thumb_func_start sub_800600C
sub_800600C: @ 0x0800600C
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _0800603C @ =0x0000FFFF
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _08006040 @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	ldr r3, _08006044 @ =gExaminationData
	str r3, [r2, #4]
	ldr r1, _08006048 @ =0x810000F0
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0x14
	bls _08006032
	b _080062B8
_08006032:
	lsls r0, r0, #2
	ldr r1, _0800604C @ =_08006050
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800603C: .4byte 0x0000FFFF
_08006040: .4byte 0x040000D4
_08006044: .4byte gExaminationData
_08006048: .4byte 0x810000F0
_0800604C: .4byte _08006050
_08006050: @ jump table
	.4byte _080060A4 @ case 0
	.4byte _080060C6 @ case 1
	.4byte _080062B8 @ case 2
	.4byte _080062B8 @ case 3
	.4byte _080062B8 @ case 4
	.4byte _080062B8 @ case 5
	.4byte _080062B8 @ case 6
	.4byte _080062B8 @ case 7
	.4byte _080062B8 @ case 8
	.4byte _080062B8 @ case 9
	.4byte _080062B8 @ case 10
	.4byte _080062B8 @ case 11
	.4byte _080062B8 @ case 12
	.4byte _080062B8 @ case 13
	.4byte _080062B8 @ case 14
	.4byte _080062B8 @ case 15
	.4byte _080062B8 @ case 16
	.4byte _080062B8 @ case 17
	.4byte _080061D0 @ case 18
	.4byte _0800610C @ case 19
	.4byte _08006234 @ case 20
_080060A4:
	movs r0, #0
	movs r1, #0x94
	bl GetFlag
	cmp r0, #0
	bne _080060BA
	movs r0, #0xc6
	movs r1, #0x94
	bl InvestigationSetScriptSectionAndFlag
	b _080062B8
_080060BA:
	movs r0, #0x14
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	b _080062B8
_080060C6:
	movs r0, #0
	movs r1, #0x95
	bl GetFlag
	cmp r0, #0
	bne _080060DC
	movs r0, #0xcb
	movs r1, #0x95
	bl InvestigationSetScriptSectionAndFlag
	b _080060EC
_080060DC:
	movs r0, #0x23
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xee
	bl PlayBGM
_080060EC:
	ldr r1, _080060FC @ =0x040000D4
	ldr r0, _08006100 @ =gUnknown_0801FFF0
	str r0, [r1]
	ldr r0, _08006104 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08006108 @ =0x80000014
	b _080062B4
	.align 2, 0
_080060FC: .4byte 0x040000D4
_08006100: .4byte gUnknown_0801FFF0
_08006104: .4byte gExaminationData
_08006108: .4byte 0x80000014
_0800610C:
	movs r0, #0
	movs r1, #0x91
	bl GetFlag
	cmp r0, #0
	beq _0800614C
	movs r0, #0
	movs r1, #0x97
	bl GetFlag
	cmp r0, #0
	bne _0800612C
	movs r0, #0x93
	movs r1, #0x97
	bl InvestigationSetScriptSectionAndFlag
_0800612C:
	ldr r1, _0800613C @ =0x040000D4
	ldr r0, _08006140 @ =gUnknown_080200E0
	str r0, [r1]
	ldr r0, _08006144 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08006148 @ =0x80000064
	b _080062B4
	.align 2, 0
_0800613C: .4byte 0x040000D4
_08006140: .4byte gUnknown_080200E0
_08006144: .4byte gExaminationData
_08006148: .4byte 0x80000064
_0800614C:
	movs r0, #0
	movs r1, #0x96
	bl GetFlag
	cmp r0, #0
	beq _080061B0
	movs r0, #0
	movs r1, #0x90
	bl GetFlag
	cmp r0, #0
	bne _080061A0
	movs r0, #0
	movs r1, #0xa5
	bl GetFlag
	cmp r0, #0
	beq _080061A0
	movs r0, #0
	movs r1, #0xa6
	bl GetFlag
	cmp r0, #0
	beq _080061A0
	movs r0, #0
	movs r1, #0x9a
	bl GetFlag
	cmp r0, #0
	beq _080061A0
	movs r0, #0x82
	movs r1, #0xff
	bl InvestigationSetScriptSectionAndFlag
	ldr r2, _0800619C @ =0x00001824
	movs r0, #0x28
	adds r1, r2, #0
	bl InvestigationSetPersonAnimation
	b _080061B0
	.align 2, 0
_0800619C: .4byte 0x00001824
_080061A0:
	movs r0, #0x28
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0x15
	bl PlayBGM
_080061B0:
	ldr r1, _080061C0 @ =0x040000D4
	ldr r0, _080061C4 @ =gUnknown_08020018
	str r0, [r1]
	ldr r0, _080061C8 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _080061CC @ =0x80000064
	b _080062B4
	.align 2, 0
_080061C0: .4byte 0x040000D4
_080061C4: .4byte gUnknown_08020018
_080061C8: .4byte gExaminationData
_080061CC: .4byte 0x80000064
_080061D0:
	ldr r1, _08006200 @ =0x040000D4
	ldr r0, _08006204 @ =gUnknown_080201A8
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08006208 @ =0x8000005A
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0x91
	bl GetFlag
	cmp r0, #0
	beq _0800621E
	movs r0, #0
	movs r1, #0x9b
	bl GetFlag
	cmp r0, #0
	bne _0800620C
	movs r0, #0xa0
	movs r1, #0x9b
	bl InvestigationSetScriptSectionAndFlag
	b _080062B8
	.align 2, 0
_08006200: .4byte 0x040000D4
_08006204: .4byte gUnknown_080201A8
_08006208: .4byte 0x8000005A
_0800620C:
	movs r0, #0xa
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #1
	bl PlayBGM
	b _080062B8
_0800621E:
	movs r0, #0
	movs r1, #0x9a
	bl GetFlag
	cmp r0, #0
	bne _080062B8
	movs r0, #0x99
	movs r1, #0x9a
	bl InvestigationSetScriptSectionAndFlag
	b _080062B8
_08006234:
	movs r0, #0
	movs r1, #0x92
	bl GetFlag
	cmp r0, #0
	beq _08006268
	movs r0, #0
	movs r1, #0x99
	bl GetFlag
	cmp r0, #0
	bne _08006256
	movs r0, #0xb7
	movs r1, #0x99
	bl InvestigationSetScriptSectionAndFlag
	b _080062A8
_08006256:
	movs r0, #0x28
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xd7
	bl PlayBGM
	b _080062A8
_08006268:
	movs r0, #0
	movs r1, #0x98
	bl GetFlag
	cmp r0, #0
	bne _0800627E
	movs r0, #0xac
	movs r1, #0x98
	bl InvestigationSetScriptSectionAndFlag
	b _0800628E
_0800627E:
	movs r0, #0x27
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xda
	bl PlayBGM
_0800628E:
	movs r0, #0
	movs r1, #0xa7
	bl GetFlag
	cmp r0, #0
	bne _080062A8
	ldr r1, _080062A0 @ =0x040000D4
	ldr r0, _080062A4 @ =gUnknown_0802025C
	b _080062AC
	.align 2, 0
_080062A0: .4byte 0x040000D4
_080062A4: .4byte gUnknown_0802025C
_080062A8:
	ldr r1, _080062C0 @ =0x040000D4
	ldr r0, _080062C4 @ =gUnknown_080202FC
_080062AC:
	str r0, [r1]
	ldr r0, _080062C8 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _080062CC @ =0x80000050
_080062B4:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080062B8:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080062C0: .4byte 0x040000D4
_080062C4: .4byte gUnknown_080202FC
_080062C8: .4byte gExaminationData
_080062CC: .4byte 0x80000050

	thumb_func_start nullsub_10
nullsub_10: @ 0x080062D0
	bx lr
	.align 2, 0

	thumb_func_start sub_80062D4
sub_80062D4: @ 0x080062D4
	ldr r2, _08006308 @ =0x040000D4
	ldr r1, _0800630C @ =gUnknown_08020954
	str r1, [r2]
	ldr r1, _08006310 @ =gMain+0x120
	str r1, [r2, #4]
	ldr r1, _08006314 @ =0x8000003E
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08006318 @ =gUnknown_080206FC
	str r1, [r2]
	ldr r1, _0800631C @ =gTalkData
	str r1, [r2, #4]
	ldr r1, _08006320 @ =0x8000012C
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08006324 @ =gUnknown_080206F0
	str r1, [r2]
	ldr r1, _08006328 @ =gUnknown_03003B70
	str r1, [r2, #4]
	ldr r1, _0800632C @ =0x80000006
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0xb2
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_08006308: .4byte 0x040000D4
_0800630C: .4byte gUnknown_08020954
_08006310: .4byte gMain+0x120
_08006314: .4byte 0x8000003E
_08006318: .4byte gUnknown_080206FC
_0800631C: .4byte gTalkData
_08006320: .4byte 0x8000012C
_08006324: .4byte gUnknown_080206F0
_08006328: .4byte gUnknown_03003B70
_0800632C: .4byte 0x80000006

	thumb_func_start sub_8006330
sub_8006330: @ 0x08006330
	push {r4, lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _08006364 @ =0x0000FFFF
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _08006368 @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	ldr r3, _0800636C @ =gExaminationData
	str r3, [r2, #4]
	ldr r1, _08006370 @ =0x810000F0
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r0, #0xb2
	ldrb r0, [r0]
	adds r4, r3, #0
	cmp r0, #0x17
	bls _08006358
	b _0800685E
_08006358:
	lsls r0, r0, #2
	ldr r1, _08006374 @ =_08006378
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08006364: .4byte 0x0000FFFF
_08006368: .4byte 0x040000D4
_0800636C: .4byte gExaminationData
_08006370: .4byte 0x810000F0
_08006374: .4byte _08006378
_08006378: @ jump table
	.4byte _080063D8 @ case 0
	.4byte _08006444 @ case 1
	.4byte _0800685E @ case 2
	.4byte _0800685E @ case 3
	.4byte _0800685E @ case 4
	.4byte _0800685E @ case 5
	.4byte _0800685E @ case 6
	.4byte _0800685E @ case 7
	.4byte _0800685E @ case 8
	.4byte _0800685E @ case 9
	.4byte _0800685E @ case 10
	.4byte _0800685E @ case 11
	.4byte _0800685E @ case 12
	.4byte _0800685E @ case 13
	.4byte _0800685E @ case 14
	.4byte _08006710 @ case 15
	.4byte _080065C4 @ case 16
	.4byte _080066A8 @ case 17
	.4byte _08006540 @ case 18
	.4byte _08006494 @ case 19
	.4byte _080064FA @ case 20
	.4byte _0800685E @ case 21
	.4byte _0800685E @ case 22
	.4byte _08006824 @ case 23
_080063D8:
	movs r0, #0
	movs r1, #0xbc
	bl GetFlag
	cmp r0, #0
	beq _08006408
	movs r0, #0
	movs r1, #0xbe
	bl GetFlag
	cmp r0, #0
	bne _08006400
	ldr r0, _080063FC @ =0x0000014D
	movs r1, #0xbe
	bl InvestigationSetScriptSectionAndFlag
	b _0800685E
	.align 2, 0
_080063FC: .4byte 0x0000014D
_08006400:
	movs r0, #0x19
	movs r1, #0
	movs r2, #0
	b _0800662C
_08006408:
	movs r0, #0
	movs r1, #0xbd
	bl GetFlag
	cmp r0, #0
	beq _08006424
	movs r0, #0x14
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xd7
	bl PlayBGM
_08006424:
	ldr r1, _08006434 @ =0x040000D4
	ldr r0, _08006438 @ =gUnknown_080209D4
	str r0, [r1]
	ldr r0, _0800643C @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08006440 @ =0x80000032
	b _080065AE
	.align 2, 0
_08006434: .4byte 0x040000D4
_08006438: .4byte gUnknown_080209D4
_0800643C: .4byte gExaminationData
_08006440: .4byte 0x80000032
_08006444:
	movs r0, #0
	movs r1, #0xbf
	bl GetFlag
	cmp r0, #0
	bne _0800645A
	movs r0, #0x8e
	movs r1, #0xbf
	bl InvestigationSetScriptSectionAndFlag
	b _08006476
_0800645A:
	movs r0, #0
	movs r1, #0xd3
	bl GetFlag
	cmp r0, #0
	bne _08006476
	movs r0, #0x23
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xee
	bl PlayBGM
_08006476:
	ldr r1, _08006484 @ =0x040000D4
	ldr r0, _08006488 @ =gUnknown_08020A38
	str r0, [r1]
	ldr r0, _0800648C @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _08006490 @ =0x80000014
	b _080065AE
	.align 2, 0
_08006484: .4byte 0x040000D4
_08006488: .4byte gUnknown_08020A38
_0800648C: .4byte gExaminationData
_08006490: .4byte 0x80000014
_08006494:
	ldr r1, _080064C4 @ =0x040000D4
	ldr r0, _080064C8 @ =gUnknown_08020A60
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _080064CC @ =0x80000064
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xb0
	bl GetFlag
	cmp r0, #0
	beq _080064E2
	movs r0, #0
	movs r1, #0xc1
	bl GetFlag
	cmp r0, #0
	bne _080064D0
	movs r0, #0xb4
	movs r1, #0xc1
	bl InvestigationSetScriptSectionAndFlag
	b _0800685E
	.align 2, 0
_080064C4: .4byte 0x040000D4
_080064C8: .4byte gUnknown_08020A60
_080064CC: .4byte 0x80000064
_080064D0:
	movs r0, #0x28
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xd7
	bl PlayBGM
	b _0800685E
_080064E2:
	movs r0, #0
	movs r1, #0xc0
	bl GetFlag
	cmp r0, #0
	beq _080064F0
	b _0800685E
_080064F0:
	movs r0, #0xad
	movs r1, #0xc0
	bl InvestigationSetScriptSectionAndFlag
	b _0800685E
_080064FA:
	movs r0, #0
	movs r1, #0xc2
	bl GetFlag
	cmp r0, #0
	bne _08006510
	movs r0, #0x9d
	movs r1, #0xc2
	bl InvestigationSetScriptSectionAndFlag
	b _08006520
_08006510:
	movs r0, #0x27
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xda
	bl PlayBGM
_08006520:
	ldr r1, _08006530 @ =0x040000D4
	ldr r0, _08006534 @ =gUnknown_08020C90
	str r0, [r1]
	ldr r0, _08006538 @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _0800653C @ =0x80000050
	b _080065AE
	.align 2, 0
_08006530: .4byte 0x040000D4
_08006534: .4byte gUnknown_08020C90
_08006538: .4byte gExaminationData
_0800653C: .4byte 0x80000050
_08006540:
	bl LoadCurrentScriptIntoRam
	movs r0, #0
	movs r1, #0xbc
	bl GetFlag
	cmp r0, #0
	beq _0800657C
	movs r0, #0
	movs r1, #0xc4
	bl GetFlag
	cmp r0, #0
	bne _0800656E
	movs r0, #0x14
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xe1
	movs r1, #0xc4
	bl InvestigationSetScriptSectionAndFlag
_0800656E:
	ldr r1, _08006574 @ =0x040000D4
	ldr r0, _08006578 @ =gUnknown_08020BDC
	b _080065A6
	.align 2, 0
_08006574: .4byte 0x040000D4
_08006578: .4byte gUnknown_08020BDC
_0800657C:
	movs r0, #0
	movs r1, #0xc3
	bl GetFlag
	cmp r0, #0
	bne _08006592
	movs r0, #0xc5
	movs r1, #0xc3
	bl InvestigationSetScriptSectionAndFlag
	b _080065A2
_08006592:
	movs r0, #0x18
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0x16
	bl PlayBGM
_080065A2:
	ldr r1, _080065B4 @ =0x040000D4
	ldr r0, _080065B8 @ =gUnknown_08020B28
_080065A6:
	str r0, [r1]
	ldr r0, _080065BC @ =gExaminationData
	str r0, [r1, #4]
	ldr r0, _080065C0 @ =0x8000005A
_080065AE:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _0800685E
	.align 2, 0
_080065B4: .4byte 0x040000D4
_080065B8: .4byte gUnknown_08020B28
_080065BC: .4byte gExaminationData
_080065C0: .4byte 0x8000005A
_080065C4:
	ldr r1, _0800660C @ =0x040000D4
	ldr r0, _08006610 @ =gUnknown_08020D30
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _08006614 @ =0x80000078
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xba
	bl GetFlag
	cmp r0, #0
	beq _0800663C
	movs r0, #0
	movs r1, #0xbb
	bl GetFlag
	cmp r0, #0
	beq _0800663C
	movs r0, #0
	movs r1, #0xdc
	movs r2, #1
	bl ChangeFlag
	movs r0, #0
	movs r1, #0xc7
	bl GetFlag
	cmp r0, #0
	bne _08006618
	movs r0, #0x83
	lsls r0, r0, #1
	movs r1, #0xc7
	bl InvestigationSetScriptSectionAndFlag
	b _0800685E
	.align 2, 0
_0800660C: .4byte 0x040000D4
_08006610: .4byte gUnknown_08020D30
_08006614: .4byte 0x80000078
_08006618:
	movs r0, #0
	movs r1, #0xbc
	bl GetFlag
	cmp r0, #0
	beq _08006626
	b _0800685E
_08006626:
	ldr r2, _08006638 @ =0x00003CB4
	movs r0, #0x24
	adds r1, r2, #0
_0800662C:
	bl InvestigationSetPersonAnimation
	movs r0, #0xc
	bl PlayBGM
	b _0800685E
	.align 2, 0
_08006638: .4byte 0x00003CB4
_0800663C:
	movs r0, #0
	movs r1, #0xb4
	bl GetFlag
	cmp r0, #0
	beq _08006670
	movs r0, #0
	movs r1, #0xdc
	movs r2, #0
	bl ChangeFlag
	movs r0, #0
	movs r1, #0xc6
	bl GetFlag
	cmp r0, #0
	beq _08006660
	b _0800685E
_08006660:
	ldr r0, _0800666C @ =0x00000105
	movs r1, #0xc6
	bl InvestigationSetScriptSectionAndFlag
	b _0800685E
	.align 2, 0
_0800666C: .4byte 0x00000105
_08006670:
	movs r0, #0
	movs r1, #0xdc
	movs r2, #1
	bl ChangeFlag
	movs r0, #0
	movs r1, #0xc5
	bl GetFlag
	cmp r0, #0
	bne _08006690
	movs r0, #0xe5
	movs r1, #0xc5
	bl InvestigationSetScriptSectionAndFlag
	b _0800685E
_08006690:
	ldr r2, _080066A4 @ =0x00003CB4
	movs r0, #0x24
	adds r1, r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0xee
	bl PlayBGM
	b _0800685E
	.align 2, 0
_080066A4: .4byte 0x00003CB4
_080066A8:
	ldr r1, _080066E0 @ =0x040000D4
	ldr r0, _080066E4 @ =gUnknown_08020E20
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _080066E8 @ =0x800000C8
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xe1
	bl GetFlag
	cmp r0, #0
	beq _080066C8
	movs r0, #0x1b
	bl sub_801480C
_080066C8:
	movs r0, #0
	movs r1, #0xc8
	bl GetFlag
	cmp r0, #0
	bne _080066F0
	ldr r0, _080066EC @ =0x00000107
	movs r1, #0xc8
	bl InvestigationSetScriptSectionAndFlag
	b _0800685E
	.align 2, 0
_080066E0: .4byte 0x040000D4
_080066E4: .4byte gUnknown_08020E20
_080066E8: .4byte 0x800000C8
_080066EC: .4byte 0x00000107
_080066F0:
	movs r0, #0
	movs r1, #0xb1
	bl GetFlag
	cmp r0, #0
	beq _080066FE
	b _0800685E
_080066FE:
	movs r0, #0xa
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #1
	bl PlayBGM
	b _0800685E
_08006710:
	ldr r1, _0800675C @ =0x040000D4
	ldr r0, _08006760 @ =gUnknown_08020FB0
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _08006764 @ =0x80000046
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xbc
	bl GetFlag
	cmp r0, #0
	beq _0800676C
	movs r0, #0
	movs r1, #0xdf
	movs r2, #0
	bl ChangeFlag
	movs r0, #0
	movs r1, #0xe0
	movs r2, #0
	bl ChangeFlag
	movs r0, #0
	movs r1, #0xcb
	bl GetFlag
	cmp r0, #0
	bne _08006752
	ldr r0, _08006768 @ =0x00000149
	movs r1, #0xcb
	bl InvestigationSetScriptSectionAndFlag
_08006752:
	movs r0, #0xa5
	lsls r0, r0, #1
	strh r0, [r4, #0x14]
	b _0800685E
	.align 2, 0
_0800675C: .4byte 0x040000D4
_08006760: .4byte gUnknown_08020FB0
_08006764: .4byte 0x80000046
_08006768: .4byte 0x00000149
_0800676C:
	movs r0, #0
	movs r1, #0xb2
	bl GetFlag
	cmp r0, #0
	beq _080067F8
	movs r0, #0
	movs r1, #0xb3
	bl GetFlag
	cmp r0, #0
	beq _080067F8
	movs r0, #0
	movs r1, #0xca
	bl GetFlag
	cmp r0, #0
	bne _080067A0
	ldr r0, _0800679C @ =0x0000012D
	movs r1, #0xca
	bl InvestigationSetScriptSectionAndFlag
	b _080067E8
	.align 2, 0
_0800679C: .4byte 0x0000012D
_080067A0:
	movs r0, #0
	movs r1, #0xb4
	bl GetFlag
	cmp r0, #0
	beq _080067D8
	ldr r2, _080067CC @ =0x00003C68
	movs r0, #8
	adds r1, r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #0
	movs r1, #0xbb
	bl GetFlag
	cmp r0, #0
	beq _080067D0
	movs r0, #0xc
	bl PlayBGM
	b _080067E8
	.align 2, 0
_080067CC: .4byte 0x00003C68
_080067D0:
	movs r0, #0xf1
	bl PlayBGM
	b _080067E8
_080067D8:
	movs r0, #0xa
	movs r1, #0
	movs r2, #0
	bl InvestigationSetPersonAnimation
	movs r0, #1
	bl PlayBGM
_080067E8:
	ldr r1, _080067F4 @ =gExaminationData
	movs r0, #0x97
	lsls r0, r0, #1
	strh r0, [r1, #0x14]
	b _0800685E
	.align 2, 0
_080067F4: .4byte gExaminationData
_080067F8:
	movs r0, #0
	movs r1, #0xdf
	movs r2, #0
	bl ChangeFlag
	movs r0, #0
	movs r1, #0xe0
	movs r2, #0
	bl ChangeFlag
	movs r0, #0
	movs r1, #0xc9
	bl GetFlag
	cmp r0, #0
	bne _0800685E
	movs r0, #0x93
	lsls r0, r0, #1
	movs r1, #0xc9
	bl InvestigationSetScriptSectionAndFlag
	b _0800685E
_08006824:
	ldr r1, _08006848 @ =0x040000D4
	ldr r0, _0800684C @ =gUnknown_0802108C
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _08006850 @ =0x80000032
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #0xcc
	bl GetFlag
	cmp r0, #0
	bne _08006858
	ldr r0, _08006854 @ =0x00000153
	movs r1, #0xcc
	bl InvestigationSetScriptSectionAndFlag
	b _0800685E
	.align 2, 0
_08006848: .4byte 0x040000D4
_0800684C: .4byte gUnknown_0802108C
_08006850: .4byte 0x80000032
_08006854: .4byte 0x00000153
_08006858:
	movs r0, #0xd3
	bl PlayBGM
_0800685E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8006868
sub_8006868: @ 0x08006868
	push {lr}
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0xf
	bne _08006884
	movs r0, #0
	movs r1, #0xe0
	bl GetFlag
	cmp r0, #0
	beq _08006884
	ldr r1, _08006888 @ =gExaminationData
	ldr r0, _0800688C @ =0x0000012F
	strh r0, [r1, #0x14]
_08006884:
	pop {r0}
	bx r0
	.align 2, 0
_08006888: .4byte gExaminationData
_0800688C: .4byte 0x0000012F

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
