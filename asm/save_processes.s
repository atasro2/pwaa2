
	.include "asm/macros.inc"
	.syntax unified

	thumb_func_start SaveGameInit1
SaveGameInit1: @ 0x0800B2CC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0800B37C @ =0x040000D4
	ldr r1, _0800B380 @ =gBG1MapBuffer
	str r1, [r0]
	ldr r2, _0800B384 @ =gUnknown_0200183C
	str r2, [r0, #4]
	ldr r3, _0800B388 @ =0x80000400
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B38C @ =gBG2MapBuffer
	str r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #4
	adds r1, r2, r4
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B390 @ =gTextBoxCharacters
	str r1, [r0]
	ldr r3, _0800B394 @ =0xFFFFF500
	adds r1, r2, r3
	str r1, [r0, #4]
	ldr r1, _0800B398 @ =0x8000017A
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B39C @ =gScriptContext
	str r1, [r0]
	ldr r4, _0800B3A0 @ =0xFFFFEB0C
	adds r1, r2, r4
	str r1, [r0, #4]
	ldr r1, _0800B3A4 @ =0x80000020
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B3A8 @ =gIORegisters
	str r1, [r0]
	ldr r3, _0800B3AC @ =0xFFFFEAB8
	adds r1, r2, r3
	str r1, [r0, #4]
	ldr r1, _0800B3B0 @ =0x8000002A
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r3, _0800B3B4 @ =gMapMarker
	str r3, [r0]
	ldr r4, _0800B3B8 @ =0xFFFFF060
	adds r1, r2, r4
	str r1, [r0, #4]
	ldr r1, _0800B3BC @ =0x80000050
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #5
	adds r2, r2, r0
	movs r4, #0xff
_0800B33A:
	ldrb r0, [r3]
	orrs r0, r4
	strb r0, [r3]
	adds r3, #0x14
	adds r1, #1
	cmp r1, #7
	bls _0800B33A
	movs r4, #0
	adds r0, r2, #0
	bl SaveAnimationDataToBuffer
	strb r4, [r6, #0x18]
	ldr r4, _0800B3C0 @ =gMain
	ldr r3, _0800B3C4 @ =0x000002BA
	adds r4, r4, r3
	ldrh r5, [r4]
	adds r0, r5, #0
	bl sub_8013878
	strh r5, [r4]
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r6, #9]
	adds r0, #1
	strb r0, [r6, #9]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B37C: .4byte 0x040000D4
_0800B380: .4byte gBG1MapBuffer
_0800B384: .4byte gUnknown_0200183C
_0800B388: .4byte 0x80000400
_0800B38C: .4byte gBG2MapBuffer
_0800B390: .4byte gTextBoxCharacters
_0800B394: .4byte 0xFFFFF500
_0800B398: .4byte 0x8000017A
_0800B39C: .4byte gScriptContext
_0800B3A0: .4byte 0xFFFFEB0C
_0800B3A4: .4byte 0x80000020
_0800B3A8: .4byte gIORegisters
_0800B3AC: .4byte 0xFFFFEAB8
_0800B3B0: .4byte 0x8000002A
_0800B3B4: .4byte gMapMarker
_0800B3B8: .4byte 0xFFFFF060
_0800B3BC: .4byte 0x80000050
_0800B3C0: .4byte gMain
_0800B3C4: .4byte 0x000002BA

	thumb_func_start SaveGameInit2
SaveGameInit2: @ 0x0800B3C8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800B3D6
	b _0800B504
_0800B3D6:
	ldr r0, _0800B50C @ =0x040000D4
	ldr r1, _0800B510 @ =gBG0MapBuffer
	str r1, [r0]
	ldr r2, _0800B514 @ =gUnknown_0200103C
	str r2, [r0, #4]
	ldr r3, _0800B518 @ =0x80000400
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B51C @ =gCourtRecord
	str r1, [r0]
	ldr r5, _0800B520 @ =0xFFFFF34C
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _0800B524 @ =0x8000002C
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B528 @ =gInvestigation
	str r1, [r0]
	adds r5, #0x70
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _0800B52C @ =0x8000000E
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B530 @ =gTestimony
	str r1, [r0]
	subs r5, #8
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _0800B534 @ =0x80000004
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B538 @ =gCourtScroll
	str r1, [r0]
	subs r5, #0x10
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _0800B53C @ =0x80000008
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B540 @ =gExaminationData
	str r1, [r0]
	adds r5, #0x34
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _0800B544 @ =0x800000F0
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B548 @ =gTalkData
	str r1, [r0]
	ldr r5, _0800B54C @ =0xFFFFF5B8
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _0800B550 @ =0x80000140
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B554 @ =gUnknown_03003B70
	str r1, [r0]
	ldr r1, _0800B558 @ =0xFFFFF838
	adds r2, r2, r1
	str r2, [r0, #4]
	ldr r1, _0800B55C @ =0x80000014
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B560 @ =gUnknown_081458DC
	str r1, [r0]
	ldr r1, _0800B564 @ =0x06013800
	str r1, [r0, #4]
	ldr r1, _0800B568 @ =0x80000200
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B56C @ =gUnknown_0814DF20
	str r1, [r0]
	ldr r1, _0800B570 @ =0x05000300
	str r1, [r0, #4]
	ldr r1, _0800B574 @ =0x80000060
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B578 @ =gUnknown_081500C4
	str r1, [r0]
	ldr r1, _0800B57C @ =0x06013C00
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B580 @ =gUnknown_081DE3A8
	str r1, [r0]
	ldr r1, _0800B584 @ =0x05000320
	str r1, [r0, #4]
	ldr r1, _0800B588 @ =0x80000020
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #0xa
	bl DecompressBackgroundIntoBuffer
	movs r0, #0xa
	bl CopyBGDataToVram
	adds r1, r4, #0
	adds r1, #0x25
	movs r0, #0xfc
	ldrb r2, [r1]
	ands r0, r2
	strb r0, [r1]
	ldr r1, _0800B58C @ =gOamObjects
	movs r0, #0
	movs r2, #0x80
	lsls r2, r2, #2
_0800B4AC:
	strh r2, [r1]
	adds r1, #8
	adds r0, #1
	cmp r0, #0x7f
	bls _0800B4AC
	movs r0, #0
	ldr r3, _0800B590 @ =0x000003FF
	movs r2, #0
	ldr r1, _0800B594 @ =gBG2MapBuffer
_0800B4BE:
	strh r2, [r1]
	adds r1, #2
	adds r0, #1
	cmp r0, r3
	bls _0800B4BE
	movs r0, #6
	movs r1, #8
	bl SlideInBG2Window
	ldr r1, _0800B598 @ =gIORegisters
	movs r5, #0x4a
	movs r3, #0
	movs r2, #0
	movs r0, #0xe2
	lsls r0, r0, #5
	strh r0, [r5, r1]
	movs r0, #0xc
	strb r0, [r4, #0x1a]
	ldr r0, _0800B59C @ =0x00003E01
	strh r0, [r1, #4]
	movs r0, #8
	strh r0, [r1, #0x16]
	strh r0, [r1, #0x14]
	strh r2, [r1, #0xe]
	strh r2, [r1, #0xc]
	strb r3, [r4, #0x19]
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
_0800B504:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800B50C: .4byte 0x040000D4
_0800B510: .4byte gBG0MapBuffer
_0800B514: .4byte gUnknown_0200103C
_0800B518: .4byte 0x80000400
_0800B51C: .4byte gCourtRecord
_0800B520: .4byte 0xFFFFF34C
_0800B524: .4byte 0x8000002C
_0800B528: .4byte gInvestigation
_0800B52C: .4byte 0x8000000E
_0800B530: .4byte gTestimony
_0800B534: .4byte 0x80000004
_0800B538: .4byte gCourtScroll
_0800B53C: .4byte 0x80000008
_0800B540: .4byte gExaminationData
_0800B544: .4byte 0x800000F0
_0800B548: .4byte gTalkData
_0800B54C: .4byte 0xFFFFF5B8
_0800B550: .4byte 0x80000140
_0800B554: .4byte gUnknown_03003B70
_0800B558: .4byte 0xFFFFF838
_0800B55C: .4byte 0x80000014
_0800B560: .4byte gUnknown_081458DC
_0800B564: .4byte 0x06013800
_0800B568: .4byte 0x80000200
_0800B56C: .4byte gUnknown_0814DF20
_0800B570: .4byte 0x05000300
_0800B574: .4byte 0x80000060
_0800B578: .4byte gUnknown_081500C4
_0800B57C: .4byte 0x06013C00
_0800B580: .4byte gUnknown_081DE3A8
_0800B584: .4byte 0x05000320
_0800B588: .4byte 0x80000020
_0800B58C: .4byte gOamObjects
_0800B590: .4byte 0x000003FF
_0800B594: .4byte gBG2MapBuffer
_0800B598: .4byte gIORegisters
_0800B59C: .4byte 0x00003E01

	thumb_func_start SaveGameInitButtons
SaveGameInitButtons: @ 0x0800B5A0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0800B5D0 @ =gCourtRecord
	adds r0, r4, #0
	bl UpdateBG2Window
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0800B660
	movs r0, #1
	strb r0, [r5, #0x18]
	strb r0, [r5, #0x19]
	ldr r1, _0800B5D4 @ =gScriptContext
	ldr r0, _0800B5D8 @ =0x0000FFFF
	strh r0, [r1, #0x1e]
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0800B5DC
	movs r0, #0
	bl ChangeScriptSection
	b _0800B5E2
	.align 2, 0
_0800B5D0: .4byte gCourtRecord
_0800B5D4: .4byte gScriptContext
_0800B5D8: .4byte 0x0000FFFF
_0800B5DC:
	movs r0, #1
	bl ChangeScriptSection
_0800B5E2:
	ldr r1, _0800B63C @ =gScriptContext
	movs r3, #0
	movs r0, #9
	strh r0, [r1, #0x18]
	movs r0, #0x34
	strh r0, [r1, #0x1a]
	ldr r0, _0800B640 @ =gOamObjects+0x140
	ldr r2, _0800B644 @ =0x00004460
	strh r2, [r0]
	ldr r1, _0800B648 @ =0x0000C030
	strh r1, [r0, #2]
	ldr r1, _0800B64C @ =0x0000A1E0
	strh r1, [r0, #4]
	adds r0, #8
	strh r2, [r0]
	ldr r1, _0800B650 @ =0x0000C080
	strh r1, [r0, #2]
	movs r1, #0xa2
	lsls r1, r1, #8
	strh r1, [r0, #4]
	adds r0, r5, #0
	adds r0, #0x80
	strh r3, [r0]
	adds r0, #2
	movs r4, #1
	strb r4, [r0]
	adds r0, #1
	movs r2, #0x10
	strb r2, [r0]
	ldr r1, _0800B654 @ =gIORegisters
	adds r3, r1, #0
	adds r3, #0x48
	movs r0, #0x84
	lsls r0, r0, #4
	strh r0, [r3]
	lsls r2, r2, #8
	adds r1, #0x4c
	strh r2, [r1]
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0800B658
	movs r0, #0
	strb r0, [r5, #0x17]
	b _0800B65A
	.align 2, 0
_0800B63C: .4byte gScriptContext
_0800B640: .4byte gOamObjects+0x140
_0800B644: .4byte 0x00004460
_0800B648: .4byte 0x0000C030
_0800B64C: .4byte 0x0000A1E0
_0800B650: .4byte 0x0000C080
_0800B654: .4byte gIORegisters
_0800B658:
	strb r4, [r5, #0x17]
_0800B65A:
	ldrb r0, [r5, #9]
	adds r0, #1
	strb r0, [r5, #9]
_0800B660:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start SaveGameWaitForInput
SaveGameWaitForInput: @ 0x0800B668
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, _0800B698 @ =gScriptContext
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800B67A
	b _0800B776
_0800B67A:
	ldr r0, _0800B69C @ =gJoypad
	ldrh r1, [r0, #2]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0800B6A0
	movs r0, #1
	ldrb r1, [r5, #0x17]
	eors r0, r1
	strb r0, [r5, #0x17]
	movs r0, #0x2a
	bl PlaySE
	b _0800B776
	.align 2, 0
_0800B698: .4byte gScriptContext
_0800B69C: .4byte gJoypad
_0800B6A0:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800B74C
	movs r0, #0x40
	bl PlaySE
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	bne _0800B738
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0800B6CC
	ldr r1, _0800B6C8 @ =gSaveDataBuffer
	adds r1, #0x4f
	movs r0, #0xf0
	ldrb r2, [r1]
	ands r0, r2
	strb r0, [r1]
	b _0800B6D8
	.align 2, 0
_0800B6C8: .4byte gSaveDataBuffer
_0800B6CC:
	ldr r0, _0800B6FC @ =gSaveDataBuffer
	adds r0, #0x4f
	movs r1, #1
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
_0800B6D8:
	bl SaveGameData
	cmp r0, #0
	beq _0800B708
	ldr r4, _0800B700 @ =gScriptContext
	ldr r0, _0800B704 @ =0x0000FFFF
	strh r0, [r4, #0x1e]
	movs r0, #3
	bl ChangeScriptSection
	movs r0, #9
	strh r0, [r4, #0x18]
	movs r0, #0x34
	strh r0, [r4, #0x1a]
	movs r0, #6
	strb r0, [r5, #9]
	b _0800B808
	.align 2, 0
_0800B6FC: .4byte gSaveDataBuffer
_0800B700: .4byte gScriptContext
_0800B704: .4byte 0x0000FFFF
_0800B708:
	ldrb r6, [r5, #0xb]
	cmp r6, #0
	bne _0800B738
	ldr r4, _0800B744 @ =gScriptContext
	ldr r0, _0800B748 @ =0x0000FFFF
	strh r0, [r4, #0x1e]
	movs r0, #6
	bl ChangeScriptSection
	movs r1, #0
	movs r0, #9
	strh r0, [r4, #0x18]
	movs r0, #0x34
	strh r0, [r4, #0x1a]
	adds r0, r5, #0
	adds r0, #0x80
	strh r6, [r0]
	adds r2, r5, #0
	adds r2, #0x82
	movs r0, #1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x83
	strb r1, [r0]
_0800B738:
	movs r1, #0
	movs r0, #7
	strb r0, [r5, #9]
	strb r1, [r5, #0xa]
	b _0800B776
	.align 2, 0
_0800B744: .4byte gScriptContext
_0800B748: .4byte 0x0000FFFF
_0800B74C:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _0800B776
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800B776
	movs r0, #0x2c
	bl PlaySE
	movs r0, #1
	strb r0, [r5, #0x17]
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r0, #4
	strb r0, [r5, #9]
	b _0800B808
_0800B776:
	ldr r2, _0800B798 @ =gOamObjects+0x140
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	bne _0800B7AC
	ldr r1, _0800B79C @ =0x00004460
	strh r1, [r2]
	ldr r0, _0800B7A0 @ =0x0000C030
	strh r0, [r2, #2]
	ldr r0, _0800B7A4 @ =0x000091E0
	strh r0, [r2, #4]
	adds r2, #8
	strh r1, [r2]
	ldr r0, _0800B7A8 @ =0x0000C080
	strh r0, [r2, #2]
	movs r0, #0xa2
	lsls r0, r0, #8
	b _0800B7C4
	.align 2, 0
_0800B798: .4byte gOamObjects+0x140
_0800B79C: .4byte 0x00004460
_0800B7A0: .4byte 0x0000C030
_0800B7A4: .4byte 0x000091E0
_0800B7A8: .4byte 0x0000C080
_0800B7AC:
	ldr r1, _0800B810 @ =0x00004460
	strh r1, [r2]
	ldr r0, _0800B814 @ =0x0000C030
	strh r0, [r2, #2]
	ldr r0, _0800B818 @ =0x0000A1E0
	strh r0, [r2, #4]
	adds r2, #8
	strh r1, [r2]
	ldr r0, _0800B81C @ =0x0000C080
	strh r0, [r2, #2]
	movs r0, #0x92
	lsls r0, r0, #8
_0800B7C4:
	strh r0, [r2, #4]
	ldrb r0, [r5, #9]
	cmp r0, #3
	bne _0800B808
	adds r3, r5, #0
	adds r3, #0x83
	ldrb r0, [r3]
	cmp r0, #0
	beq _0800B808
	adds r2, r5, #0
	adds r2, #0x80
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	adds r1, r5, #0
	adds r1, #0x82
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	blo _0800B7F8
	movs r0, #0
	strh r0, [r2]
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
_0800B7F8:
	ldr r2, _0800B820 @ =gIORegisters
	ldrb r3, [r3]
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	adds r2, #0x4c
	strh r1, [r2]
_0800B808:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B810: .4byte 0x00004460
_0800B814: .4byte 0x0000C030
_0800B818: .4byte 0x0000A1E0
_0800B81C: .4byte 0x0000C080
_0800B820: .4byte gIORegisters

	thumb_func_start SaveGameExitSaveScreen
SaveGameExitSaveScreen: @ 0x0800B824
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800B832
	b _0800BB40
_0800B832:
	ldrb r0, [r6, #0x17]
	cmp r0, #0
	bne _0800B83E
	movs r0, #1
	str r0, [r6, #8]
	b _0800BB40
_0800B83E:
	ldr r2, _0800BA0C @ =gSaveDataBuffer
	adds r0, r2, #0
	adds r0, #0x62
	ldrh r0, [r0]
	strh r0, [r6, #0x2e]
	adds r0, r2, #0
	adds r0, #0x66
	ldrh r0, [r0]
	strh r0, [r6, #0x32]
	adds r0, r2, #0
	adds r0, #0x68
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x34
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x69
	ldrb r0, [r0]
	adds r1, r6, #0
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
	strh r0, [r6, #0x38]
	adds r0, r2, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	strh r0, [r6, #0x3a]
	adds r0, r2, #0
	adds r0, #0x70
	ldrh r0, [r0]
	strh r0, [r6, #0x3c]
	adds r0, r2, #0
	adds r0, #0x72
	ldrh r0, [r0]
	strh r0, [r6, #0x3e]
	adds r0, r2, #0
	adds r0, #0x74
	ldrh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x40
	strh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x76
	ldrh r0, [r0]
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x78
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x44
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x79
	ldrb r0, [r0]
	adds r1, r6, #0
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
	str r0, [r6, #0x48]
	movs r1, #0
	adds r7, r6, #0
	adds r7, #0xdc
	adds r3, r2, #0
	adds r3, #0x80
	adds r2, r6, #0
	adds r2, #0x4c
_0800B8F2:
	ldm r3!, {r0}
	stm r2!, {r0}
	adds r1, #1
	cmp r1, #0xb
	bls _0800B8F2
	ldrh r0, [r6, #0x2e]
	bl DecompressBackgroundIntoBuffer
	ldrh r0, [r6, #0x2e]
	bl CopyBGDataToVramAndScrollBG
	ldr r4, _0800BA10 @ =0x040000D4
	ldr r5, _0800BA14 @ =gUnknown_0200203C
	str r5, [r4]
	ldr r0, _0800BA18 @ =gBG2MapBuffer
	str r0, [r4, #4]
	ldr r0, _0800BA1C @ =0x80000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _0800BA20 @ =0xFFFFED00
	adds r0, r5, r1
	str r0, [r4]
	ldr r0, _0800BA24 @ =gTextBoxCharacters
	str r0, [r4, #4]
	ldr r0, _0800BA28 @ =0x8000017A
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	bl RedrawTextboxCharacters
	ldr r2, _0800BA2C @ =0xFFFFE30C
	adds r0, r5, r2
	str r0, [r4]
	ldr r0, _0800BA30 @ =gScriptContext
	str r0, [r4, #4]
	ldr r0, _0800BA34 @ =0x80000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r3, _0800BA38 @ =0xFFFFE2B8
	adds r0, r5, r3
	str r0, [r4]
	ldr r0, _0800BA3C @ =gIORegisters
	str r0, [r4, #4]
	ldr r0, _0800BA40 @ =0x8000002A
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _0800BA44 @ =0xFFFFE860
	adds r0, r5, r1
	str r0, [r4]
	ldr r0, _0800BA48 @ =gMapMarker
	str r0, [r4, #4]
	ldr r0, _0800BA4C @ =0x80000050
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, _0800BA50 @ =0xFFFFE5B8
	adds r0, r5, r2
	str r0, [r4]
	ldr r0, _0800BA54 @ =gTalkData
	str r0, [r4, #4]
	ldr r0, _0800BA58 @ =0x80000140
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r3, _0800BA5C @ =0xFFFFE838
	adds r0, r5, r3
	str r0, [r4]
	ldr r0, _0800BA60 @ =gUnknown_03003B70
	str r0, [r4, #4]
	ldr r0, _0800BA64 @ =0x80000014
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _0800BA68 @ =0xFFFFE010
	adds r0, r5, r1
	ldrb r0, [r0]
	strb r0, [r6, #0x18]
	ldr r2, _0800BA6C @ =0xFFFFE011
	adds r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r6, #0x19]
	ldr r3, _0800BA70 @ =0xFFFFE0D4
	adds r0, r5, r3
	ldr r0, [r0]
	str r0, [r7]
	subs r1, #4
	adds r0, r5, r1
	ldrh r0, [r0]
	strh r0, [r6, #0x14]
	adds r2, #1
	adds r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_8007D5C
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r5, r3
	bl RestoreAnimationsFromBuffer
	ldr r2, _0800BA74 @ =gMain
	adds r1, r2, #0
	adds r1, #0x25
	movs r0, #3
	ldrb r3, [r1]
	orrs r0, r3
	strb r0, [r1]
	ldr r1, _0800BA78 @ =0xFFFFE900
	adds r0, r5, r1
	str r0, [r4]
	ldr r0, _0800BA7C @ =gOamObjects
	str r0, [r4, #4]
	ldr r0, _0800BA80 @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800BA84 @ =gUnknown_0814DC60
	str r0, [r4]
	ldr r0, _0800BA88 @ =0x05000300
	str r0, [r4, #4]
	ldr r0, _0800BA8C @ =0x80000010
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r3, #0x95
	lsls r3, r3, #2
	adds r1, r6, r3
	ldr r0, _0800BA90 @ =0xFFFFE24C
	adds r5, r5, r0
	ldr r0, [r5]
	str r0, [r1]
	ldr r0, [r6, #0xc]
	str r0, [r2, #8]
	ldr r0, [r6, #8]
	ldr r1, _0800BA94 @ =0x00FF00FF
	ands r0, r1
	ldr r1, _0800BA98 @ =0x00030004
	cmp r0, r1
	bne _0800BAA4
	ldrb r0, [r6, #9]
	cmp r0, #7
	bne _0800BA9C
	bl sub_8011578
	b _0800BAA4
	.align 2, 0
_0800BA0C: .4byte gSaveDataBuffer
_0800BA10: .4byte 0x040000D4
_0800BA14: .4byte gUnknown_0200203C
_0800BA18: .4byte gBG2MapBuffer
_0800BA1C: .4byte 0x80000400
_0800BA20: .4byte 0xFFFFED00
_0800BA24: .4byte gTextBoxCharacters
_0800BA28: .4byte 0x8000017A
_0800BA2C: .4byte 0xFFFFE30C
_0800BA30: .4byte gScriptContext
_0800BA34: .4byte 0x80000020
_0800BA38: .4byte 0xFFFFE2B8
_0800BA3C: .4byte gIORegisters
_0800BA40: .4byte 0x8000002A
_0800BA44: .4byte 0xFFFFE860
_0800BA48: .4byte gMapMarker
_0800BA4C: .4byte 0x80000050
_0800BA50: .4byte 0xFFFFE5B8
_0800BA54: .4byte gTalkData
_0800BA58: .4byte 0x80000140
_0800BA5C: .4byte 0xFFFFE838
_0800BA60: .4byte gUnknown_03003B70
_0800BA64: .4byte 0x80000014
_0800BA68: .4byte 0xFFFFE010
_0800BA6C: .4byte 0xFFFFE011
_0800BA70: .4byte 0xFFFFE0D4
_0800BA74: .4byte gMain
_0800BA78: .4byte 0xFFFFE900
_0800BA7C: .4byte gOamObjects
_0800BA80: .4byte 0x80000200
_0800BA84: .4byte gUnknown_0814DC60
_0800BA88: .4byte 0x05000300
_0800BA8C: .4byte 0x80000010
_0800BA90: .4byte 0xFFFFE24C
_0800BA94: .4byte 0x00FF00FF
_0800BA98: .4byte 0x00030004
_0800BA9C:
	cmp r0, #8
	bne _0800BAA4
	bl sub_80115D4
_0800BAA4:
	ldr r0, _0800BAC4 @ =gMain
	ldr r1, _0800BAC8 @ =0x000002BE
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800BB00
	lsrs r0, r1, #4
	cmp r0, #1
	beq _0800BAE2
	cmp r0, #1
	bgt _0800BACC
	cmp r0, #0
	beq _0800BAD2
	b _0800BB00
	.align 2, 0
_0800BAC4: .4byte gMain
_0800BAC8: .4byte 0x000002BE
_0800BACC:
	cmp r0, #2
	beq _0800BAF2
	b _0800BB00
_0800BAD2:
	bl sub_800E7B0
	movs r0, #0x18
	movs r1, #0x80
	movs r2, #1
	bl sub_800E7EC
	b _0800BB00
_0800BAE2:
	bl sub_800E8C4
	movs r0, #0
	movs r1, #0x80
	movs r2, #1
	bl sub_800E900
	b _0800BB00
_0800BAF2:
	bl sub_800E8C4
	movs r0, #0x20
	movs r1, #0x80
	movs r2, #1
	bl sub_800E9D4
_0800BB00:
	ldr r0, _0800BB48 @ =gMain
	ldr r2, _0800BB4C @ =0x000002BA
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0
	beq _0800BB10
	bl PlaySE
_0800BB10:
	ldrh r6, [r6, #0x2e]
	cmp r6, #0x23
	bne _0800BB2C
	ldr r1, _0800BB50 @ =gIORegisters
	movs r0, #8
	strh r0, [r1, #0x14]
	movs r0, #0x6b
	bl FindAnimationFromAnimId
	adds r1, r0, #0
	cmp r1, #0
	beq _0800BB2C
	movs r0, #0x78
	strh r0, [r1, #0x10]
_0800BB2C:
	movs r0, #0x1e
	movs r1, #0xff
	bl FadeInBGM
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
_0800BB40:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BB48: .4byte gMain
_0800BB4C: .4byte 0x000002BA
_0800BB50: .4byte gIORegisters

	thumb_func_start SaveGame5
SaveGame5: @ 0x0800BB54
	adds r2, r0, #0
	adds r0, #0x7e
	ldrh r1, [r0]
	cmp r1, #0
	bne _0800BBA0
	adds r3, r2, #0
	adds r3, #0xb3
	ldrb r0, [r3]
	cmp r0, #2
	bne _0800BB6C
	movs r1, #1
	b _0800BB7A
_0800BB6C:
	cmp r0, #8
	bne _0800BB74
	movs r1, #2
	b _0800BB7A
_0800BB74:
	cmp r0, #0xe
	bne _0800BB8A
	movs r1, #3
_0800BB7A:
	movs r0, #0
	strb r0, [r2, #0x18]
	strb r0, [r2, #0x19]
	lsls r0, r1, #0x18
	movs r1, #0x86
	lsls r1, r1, #1
	orrs r0, r1
	b _0800BB9E
_0800BB8A:
	ldr r0, _0800BBA4 @ =gIORegisters
	adds r0, #0x4a
	strh r1, [r0]
	ldr r1, _0800BBA8 @ =gScriptContext
	movs r0, #0x80
	strh r0, [r1, #0x1e]
	ldr r0, _0800BBAC @ =gCaseStartProcess
	ldrb r3, [r3]
	adds r0, r3, r0
	ldrb r0, [r0]
_0800BB9E:
	str r0, [r2, #8]
_0800BBA0:
	bx lr
	.align 2, 0
_0800BBA4: .4byte gIORegisters
_0800BBA8: .4byte gScriptContext
_0800BBAC: .4byte gCaseStartProcess

	thumb_func_start SaveGame6
SaveGame6: @ 0x0800BBB0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, _0800BBE4 @ =gScriptContext
	movs r0, #8
	ldrh r1, [r3]
	ands r0, r1
	cmp r0, #0
	beq _0800BC44
	ldr r1, _0800BBE8 @ =gJoypad
	movs r2, #1
	movs r0, #1
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _0800BC44
	strb r2, [r4, #0x18]
	strb r2, [r4, #0x19]
	ldr r0, _0800BBEC @ =0x0000FFFF
	strh r0, [r3, #0x1e]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0800BBF0
	movs r0, #0
	bl ChangeScriptSection
	b _0800BBF6
	.align 2, 0
_0800BBE4: .4byte gScriptContext
_0800BBE8: .4byte gJoypad
_0800BBEC: .4byte 0x0000FFFF
_0800BBF0:
	movs r0, #1
	bl ChangeScriptSection
_0800BBF6:
	ldr r1, _0800BC34 @ =gScriptContext
	movs r2, #0
	movs r0, #9
	strh r0, [r1, #0x18]
	movs r0, #0x34
	strh r0, [r1, #0x1a]
	adds r0, r4, #0
	adds r0, #0x80
	strh r2, [r0]
	adds r0, #2
	movs r5, #1
	strb r5, [r0]
	adds r0, #1
	movs r2, #0x10
	strb r2, [r0]
	ldr r1, _0800BC38 @ =gIORegisters
	adds r3, r1, #0
	adds r3, #0x48
	movs r0, #0x84
	lsls r0, r0, #4
	strh r0, [r3]
	lsls r2, r2, #8
	adds r1, #0x4c
	strh r2, [r1]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0800BC3C
	movs r0, #0
	strb r0, [r4, #0x17]
	b _0800BC3E
	.align 2, 0
_0800BC34: .4byte gScriptContext
_0800BC38: .4byte gIORegisters
_0800BC3C:
	strb r5, [r4, #0x17]
_0800BC3E:
	movs r0, #3
	strb r0, [r4, #9]
	b _0800BC4E
_0800BC44:
	ldr r1, _0800BC54 @ =gOamObjects+0x140
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	strh r0, [r1, #8]
_0800BC4E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800BC54: .4byte gOamObjects+0x140

	thumb_func_start SaveGame7
SaveGame7: @ 0x0800BC58
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _0800BC92
	movs r0, #2
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0800BC80
	movs r0, #5
	b _0800BC82
_0800BC80:
	movs r0, #4
_0800BC82:
	strb r0, [r4, #9]
	movs r0, #0
	strb r0, [r4, #0xa]
	ldr r1, _0800BCDC @ =gOamObjects+0x140
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	strh r0, [r1, #8]
_0800BC92:
	ldrb r0, [r4, #9]
	cmp r0, #7
	bne _0800BCD4
	adds r3, r4, #0
	adds r3, #0x83
	ldrb r0, [r3]
	cmp r0, #0xf
	bhi _0800BCD4
	adds r2, r4, #0
	adds r2, #0x80
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x82
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	blo _0800BCC4
	movs r0, #0
	strh r0, [r2]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_0800BCC4:
	ldr r2, _0800BCE0 @ =gIORegisters
	ldrb r3, [r3]
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	adds r2, #0x4c
	strh r1, [r2]
_0800BCD4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800BCDC: .4byte gOamObjects+0x140
_0800BCE0: .4byte gIORegisters

	thumb_func_start sub_800BCE4
sub_800BCE4: @ 0x0800BCE4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #0x18]
	strb r0, [r4, #0x19]
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800BD08
sub_800BD08: @ 0x0800BD08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	ldr r0, _0800BDD4 @ =gUnknown_0814E460
	ldr r4, _0800BDD8 @ =gBGDecompBuffer
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _0800BDDC @ =0x040000D4
	str r4, [r1]
	ldr r0, _0800BDE0 @ =0x06013400
	str r0, [r1, #4]
	ldr r0, _0800BDE4 @ =0x80001400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800BDE8 @ =gUnknown_081DE3A8
	str r0, [r1]
	ldr r0, _0800BDEC @ =0x05000320
	str r0, [r1, #4]
	ldr r0, _0800BDF0 @ =0x80000020
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800BDF4 @ =gUnknown_0813791C
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0800BDF8 @ =0x80000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0xa
	bl DecompressBackgroundIntoBuffer
	movs r0, #0xa
	bl CopyBGDataToVram
	ldr r1, _0800BDFC @ =gMain
	adds r1, #0x25
	movs r0, #0xfc
	ldrb r2, [r1]
	ands r0, r2
	strb r0, [r1]
	ldr r4, _0800BE00 @ =gOamObjects
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #2
_0800BD6C:
	strh r0, [r4]
	adds r4, #8
	adds r2, #1
	cmp r2, #0x7f
	bls _0800BD6C
	ldr r4, _0800BE00 @ =gOamObjects
	ldr r0, _0800BE04 @ =gIORegisters
	adds r0, #0x4a
	movs r1, #0xd2
	lsls r1, r1, #5
	strh r1, [r0]
	movs r0, #0xa
	mov r7, sl
	strb r0, [r7, #0x1a]
	movs r0, #2
	bl SetTextboxSize
	movs r0, #0x98
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r2, #0
	adds r1, r7, #0
	adds r1, #0x94
	str r1, [sp]
	movs r7, #0xb4
	add r7, sl
	mov ip, r7
	movs r0, #1
	mov sb, r0
	ldr r1, _0800BE08 @ =0x000091A0
	mov r8, r1
_0800BDAA:
	movs r5, #0
	adds r7, r2, #1
	str r7, [sp, #4]
	lsls r0, r2, #5
	movs r1, #0x80
	lsls r1, r1, #7
	adds r6, r0, r1
	movs r3, #0
	lsls r0, r2, #6
	ldr r7, _0800BE0C @ =0x000091E0
	adds r1, r0, r7
_0800BDC0:
	strh r6, [r4]
	mov r7, ip
	ldrb r0, [r7]
	asrs r0, r2
	mov r7, sb
	ands r0, r7
	cmp r0, #0
	beq _0800BE10
	strh r1, [r4, #4]
	b _0800BE16
	.align 2, 0
_0800BDD4: .4byte gUnknown_0814E460
_0800BDD8: .4byte gBGDecompBuffer
_0800BDDC: .4byte 0x040000D4
_0800BDE0: .4byte 0x06013400
_0800BDE4: .4byte 0x80001400
_0800BDE8: .4byte gUnknown_081DE3A8
_0800BDEC: .4byte 0x05000320
_0800BDF0: .4byte 0x80000020
_0800BDF4: .4byte gUnknown_0813791C
_0800BDF8: .4byte 0x80000800
_0800BDFC: .4byte gMain
_0800BE00: .4byte gOamObjects
_0800BE04: .4byte gIORegisters
_0800BE08: .4byte 0x000091A0
_0800BE0C: .4byte 0x000091E0
_0800BE10:
	mov r7, r8
	adds r0, r3, r7
	strh r0, [r4, #4]
_0800BE16:
	adds r4, #8
	adds r3, #0x20
	adds r1, #0x20
	adds r5, #1
	cmp r5, #1
	bls _0800BDC0
	ldr r2, [sp, #4]
	cmp r2, #3
	bls _0800BDAA
	movs r0, #0
	ldr r1, [sp]
	strh r0, [r1]
	movs r0, #0x31
	bl PlaySE
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	mov r2, sl
	ldrb r0, [r2, #9]
	adds r0, #1
	strb r0, [r2, #9]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_800BE58
sub_800BE58: @ 0x0800BE58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	adds r0, #0x94
	ldrh r1, [r0]
	adds r1, #6
	ldr r2, _0800BECC @ =0x000001FF
	ands r1, r2
	strh r1, [r0]
	ldr r4, _0800BED0 @ =gOamObjects+0x130
	movs r1, #0
	mov sb, r4
	adds r5, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	mov sl, r0
	adds r6, r2, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	mov r8, r0
_0800BE86:
	movs r3, #0
	adds r2, r1, #1
	mov r1, r8
_0800BE8C:
	ldrh r0, [r5]
	add r0, sl
	ands r0, r6
	adds r0, r0, r1
	strh r0, [r4, #2]
	adds r4, #8
	adds r1, #0x40
	adds r3, #1
	cmp r3, #1
	bls _0800BE8C
	adds r1, r2, #0
	cmp r1, #3
	bls _0800BE86
	ldrh r5, [r5]
	cmp r5, #0x97
	bls _0800BEBE
	mov r4, sb
	ldr r0, _0800BED4 @ =0x0000C008
	strh r0, [r4, #2]
	adds r0, #0x40
	strh r0, [r4, #0xa]
	mov r1, ip
	ldrb r0, [r1, #9]
	adds r0, #1
	strb r0, [r1, #9]
_0800BEBE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BECC: .4byte 0x000001FF
_0800BED0: .4byte gOamObjects+0x130
_0800BED4: .4byte 0x0000C008

	thumb_func_start sub_800BED8
sub_800BED8: @ 0x0800BED8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	adds r0, #0x94
	ldrh r1, [r0]
	adds r1, #6
	ldr r2, _0800BF4C @ =0x000001FF
	ands r1, r2
	strh r1, [r0]
	ldr r4, _0800BF50 @ =gOamObjects+0x140
	movs r1, #1
	mov sb, r4
	adds r5, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	mov sl, r0
	adds r6, r2, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	mov r8, r0
_0800BF06:
	movs r3, #0
	adds r2, r1, #1
	mov r1, r8
_0800BF0C:
	ldrh r0, [r5]
	add r0, sl
	ands r0, r6
	adds r0, r0, r1
	strh r0, [r4, #2]
	adds r4, #8
	adds r1, #0x40
	adds r3, #1
	cmp r3, #1
	bls _0800BF0C
	adds r1, r2, #0
	cmp r1, #3
	bls _0800BF06
	ldrh r5, [r5]
	cmp r5, #0xb7
	bls _0800BF3E
	mov r4, sb
	ldr r0, _0800BF54 @ =0x0000C028
	strh r0, [r4, #2]
	adds r0, #0x40
	strh r0, [r4, #0xa]
	mov r1, ip
	ldrb r0, [r1, #9]
	adds r0, #1
	strb r0, [r1, #9]
_0800BF3E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BF4C: .4byte 0x000001FF
_0800BF50: .4byte gOamObjects+0x140
_0800BF54: .4byte 0x0000C028

	thumb_func_start sub_800BF58
sub_800BF58: @ 0x0800BF58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	adds r0, #0x94
	ldrh r1, [r0]
	adds r1, #6
	ldr r2, _0800BFCC @ =0x000001FF
	ands r1, r2
	strh r1, [r0]
	ldr r4, _0800BFD0 @ =gOamObjects+0x150
	movs r1, #2
	mov sb, r4
	adds r5, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	mov sl, r0
	adds r6, r2, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	mov r8, r0
_0800BF86:
	movs r3, #0
	adds r2, r1, #1
	mov r1, r8
_0800BF8C:
	ldrh r0, [r5]
	add r0, sl
	ands r0, r6
	adds r0, r0, r1
	strh r0, [r4, #2]
	adds r4, #8
	adds r1, #0x40
	adds r3, #1
	cmp r3, #1
	bls _0800BF8C
	adds r1, r2, #0
	cmp r1, #3
	bls _0800BF86
	ldrh r5, [r5]
	cmp r5, #0xd7
	bls _0800BFBE
	mov r4, sb
	ldr r0, _0800BFD4 @ =0x0000C048
	strh r0, [r4, #2]
	adds r0, #0x40
	strh r0, [r4, #0xa]
	mov r1, ip
	ldrb r0, [r1, #9]
	adds r0, #1
	strb r0, [r1, #9]
_0800BFBE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BFCC: .4byte 0x000001FF
_0800BFD0: .4byte gOamObjects+0x150
_0800BFD4: .4byte 0x0000C048

	thumb_func_start EpisodeClearedProcess
EpisodeClearedProcess: @ 0x0800BFD8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldrb r0, [r7, #9]
	cmp r0, #8
	bls _0800BFEC
	b _0800C3E6
_0800BFEC:
	lsls r0, r0, #2
	ldr r1, _0800BFF8 @ =_0800BFFC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800BFF8: .4byte _0800BFFC
_0800BFFC: @ jump table
	.4byte _0800C020 @ case 0
	.4byte _0800C028 @ case 1
	.4byte _0800C0C8 @ case 2
	.4byte _0800C0D0 @ case 3
	.4byte _0800C0D8 @ case 4
	.4byte _0800C0E0 @ case 5
	.4byte _0800C174 @ case 6
	.4byte _0800C270 @ case 7
	.4byte _0800C398 @ case 8
_0800C020:
	adds r0, r7, #0
	bl sub_800BCE4
	b _0800C3E6
_0800C028:
	adds r0, r7, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800C034
	b _0800C3E6
_0800C034:
	adds r0, r7, #0
	bl sub_800BD08
	ldr r0, _0800C070 @ =gMain
	movs r3, #0xf0
	ldrb r0, [r0, #0x1b]
	ands r3, r0
	cmp r3, #0
	beq _0800C07C
	movs r0, #0xe0
	lsls r0, r0, #0x14
	ldr r4, _0800C074 @ =gSaveDataBuffer
	ldr r2, _0800C078 @ =0x00002BBC
	adds r1, r4, #0
	bl ReadSram
	adds r4, #0xe8
	ldrb r2, [r7, #0xb]
	movs r1, #1
	lsls r1, r2
	subs r2, #1
	movs r0, #0x10
	lsls r0, r2
	orrs r1, r0
	ldrb r0, [r4]
	orrs r1, r0
	strb r1, [r4]
	bl SaveGameData
	b _0800C3E6
	.align 2, 0
_0800C070: .4byte gMain
_0800C074: .4byte gSaveDataBuffer
_0800C078: .4byte 0x00002BBC
_0800C07C:
	ldr r2, _0800C0B4 @ =0x040000D4
	ldr r0, _0800C0B8 @ =gSaveVersion
	str r0, [r2]
	ldr r0, _0800C0BC @ =gSaveDataBuffer
	str r0, [r2, #4]
	ldr r1, _0800C0C0 @ =0x80000019
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	str r3, [r0, #0x30]
	adds r4, r0, #0
	adds r4, #0xe8
	ldrb r3, [r7, #0xb]
	movs r2, #1
	lsls r2, r3
	subs r3, #1
	movs r1, #0x10
	lsls r1, r3
	orrs r2, r1
	ldrb r1, [r4]
	orrs r2, r1
	strb r2, [r4]
	movs r1, #0xe0
	lsls r1, r1, #0x14
	ldr r2, _0800C0C4 @ =0x00002BBC
	bl WriteSramEx
	b _0800C3E6
	.align 2, 0
_0800C0B4: .4byte 0x040000D4
_0800C0B8: .4byte gSaveVersion
_0800C0BC: .4byte gSaveDataBuffer
_0800C0C0: .4byte 0x80000019
_0800C0C4: .4byte 0x00002BBC
_0800C0C8:
	adds r0, r7, #0
	bl sub_800BE58
	b _0800C3E6
_0800C0D0:
	adds r0, r7, #0
	bl sub_800BED8
	b _0800C3E6
_0800C0D8:
	adds r0, r7, #0
	bl sub_800BF58
	b _0800C3E6
_0800C0E0:
	adds r0, r7, #0
	adds r0, #0x94
	ldrh r1, [r0]
	adds r1, #6
	ldr r2, _0800C168 @ =0x000001FF
	ands r1, r2
	strh r1, [r0]
	ldr r6, _0800C16C @ =gOamObjects+0x160
	movs r1, #3
	mov sl, r0
	mov r8, sl
	movs r3, #0xb8
	lsls r3, r3, #1
	mov sb, r3
	movs r4, #0xc0
	lsls r4, r4, #8
	mov ip, r4
_0800C102:
	movs r4, #0
	adds r5, r1, #1
	mov r3, ip
_0800C108:
	mov r0, r8
	ldrh r1, [r0]
	add r1, sb
	ands r1, r2
	adds r0, r1, r3
	strh r0, [r6, #2]
	adds r6, #8
	adds r3, #0x40
	adds r4, #1
	cmp r4, #1
	bls _0800C108
	adds r1, r5, #0
	cmp r1, #3
	bls _0800C102
	mov r1, sl
	ldrh r1, [r1]
	cmp r1, #0xf7
	bhi _0800C12E
	b _0800C3E6
_0800C12E:
	ldr r6, _0800C16C @ =gOamObjects+0x160
	ldr r0, _0800C170 @ =0x0000C068
	strh r0, [r6, #2]
	adds r0, #0x40
	strh r0, [r6, #0xa]
	adds r4, r7, #0
	adds r4, #0xb4
	movs r1, #1
	adds r2, r1, #0
	ldrb r3, [r7, #0xb]
	lsls r2, r3
	ldrb r0, [r4]
	orrs r2, r0
	strb r2, [r4]
	ldrb r3, [r7, #0xb]
	lsls r1, r3
	subs r3, #1
	movs r0, #0x10
	lsls r0, r3
	orrs r1, r0
	orrs r2, r1
	strb r2, [r4]
	adds r1, r7, #0
	adds r1, #0x92
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	b _0800C2B8
	.align 2, 0
_0800C168: .4byte 0x000001FF
_0800C16C: .4byte gOamObjects+0x160
_0800C170: .4byte 0x0000C068
_0800C174:
	movs r1, #0x92
	adds r1, r1, r7
	mov sl, r1
	ldrh r1, [r1]
	subs r1, #0x10
	mov r2, sl
	strh r1, [r2]
	ldr r6, _0800C230 @ =gOamObjects+0x130
	ldrb r3, [r7, #0xb]
	lsls r0, r3, #4
	adds r6, r0, r6
	lsls r1, r1, #0x10
	cmp r1, #0
	beq _0800C23C
	ldr r5, _0800C234 @ =gSineTable
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r4, [r0, r1]
	mov sb, r4
	movs r2, #0x80
	lsls r2, r2, #1
	mov r8, r2
	mov r0, r8
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl fix_mul
	ldr r3, _0800C238 @ =gOamObjects
	strh r0, [r3, #6]
	movs r0, #0
	ldrsh r4, [r5, r0]
	mov r0, r8
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl fix_mul
	ldr r1, _0800C238 @ =gOamObjects
	strh r0, [r1, #0xe]
	ldrh r5, [r5]
	rsbs r4, r5, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r2, sl
	movs r3, #0
	ldrsh r0, [r2, r3]
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl fix_mul
	ldr r4, _0800C238 @ =gOamObjects
	strh r0, [r4, #0x16]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl fix_mul
	strh r0, [r4, #0x1e]
	movs r1, #3
	movs r3, #0x82
	lsls r3, r3, #7
	adds r2, r3, #0
_0800C214:
	movs r4, #0
	adds r5, r1, #1
_0800C218:
	ldrb r1, [r7, #0xb]
	lsls r0, r1, #5
	adds r0, r0, r2
	strh r0, [r6]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _0800C218
	adds r1, r5, #0
	cmp r1, #3
	bls _0800C214
	b _0800C3E6
	.align 2, 0
_0800C230: .4byte gOamObjects+0x130
_0800C234: .4byte gSineTable
_0800C238: .4byte gOamObjects
_0800C23C:
	movs r1, #3
	movs r3, #0x82
	lsls r3, r3, #7
	adds r2, r3, #0
	ldr r4, _0800C26C @ =0x000091A0
	mov r8, r4
_0800C248:
	movs r4, #0
	adds r5, r1, #1
	mov r1, r8
_0800C24E:
	ldrb r3, [r7, #0xb]
	lsls r0, r3, #5
	adds r0, r0, r2
	strh r0, [r6]
	strh r1, [r6, #4]
	adds r6, #8
	adds r1, #0x20
	adds r4, #1
	cmp r4, #1
	bls _0800C24E
	adds r1, r5, #0
	cmp r1, #3
	bls _0800C248
	b _0800C2B8
	.align 2, 0
_0800C26C: .4byte 0x000091A0
_0800C270:
	ldr r6, _0800C2C0 @ =gOamObjects+0x130
	ldrb r4, [r7, #0xb]
	lsls r0, r4, #4
	adds r6, r0, r6
	movs r0, #0x92
	adds r0, r0, r7
	mov sl, r0
	ldrh r0, [r0]
	adds r0, #0x10
	mov r1, sl
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _0800C2CC
	movs r0, #1
	strb r0, [r7, #0x18]
	strb r0, [r7, #0x19]
	ldr r1, _0800C2C4 @ =gScriptContext
	ldr r0, _0800C2C8 @ =0x0000FFFF
	strh r0, [r1, #0x1e]
	movs r0, #5
	bl ChangeScriptSection
	movs r4, #0
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
_0800C2A8:
	ldrb r3, [r7, #0xb]
	lsls r0, r3, #5
	adds r0, r0, r1
	strh r0, [r6]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _0800C2A8
_0800C2B8:
	ldrb r0, [r7, #9]
	adds r0, #1
	strb r0, [r7, #9]
	b _0800C3E6
	.align 2, 0
_0800C2C0: .4byte gOamObjects+0x130
_0800C2C4: .4byte gScriptContext
_0800C2C8: .4byte 0x0000FFFF
_0800C2CC:
	ldr r5, _0800C374 @ =gSineTable
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r4, [r0, r1]
	mov sb, r4
	movs r2, #0x80
	lsls r2, r2, #1
	mov r8, r2
	mov r0, r8
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl fix_mul
	ldr r3, _0800C378 @ =gOamObjects
	strh r0, [r3, #6]
	movs r0, #0
	ldrsh r4, [r5, r0]
	mov r0, r8
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl fix_mul
	ldr r1, _0800C378 @ =gOamObjects
	strh r0, [r1, #0xe]
	ldrh r5, [r5]
	rsbs r4, r5, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r2, sl
	movs r3, #0
	ldrsh r0, [r2, r3]
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl fix_mul
	ldr r4, _0800C378 @ =gOamObjects
	strh r0, [r4, #0x16]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl fix_mul
	strh r0, [r4, #0x1e]
	movs r4, #0
	adds r5, r7, #0
	adds r5, #0xb4
	movs r3, #0
_0800C350:
	ldrb r1, [r7, #0xb]
	lsls r0, r1, #5
	movs r2, #0x82
	lsls r2, r2, #7
	adds r0, r0, r2
	strh r0, [r6]
	ldrb r2, [r7, #0xb]
	ldrb r1, [r5]
	asrs r1, r2
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0800C380
	lsls r0, r2, #6
	ldr r1, _0800C37C @ =0x000091E0
	adds r0, r0, r1
	adds r0, r3, r0
	b _0800C384
	.align 2, 0
_0800C374: .4byte gSineTable
_0800C378: .4byte gOamObjects
_0800C37C: .4byte 0x000091E0
_0800C380:
	ldr r2, _0800C394 @ =0x000091A0
	adds r0, r3, r2
_0800C384:
	strh r0, [r6, #4]
	adds r6, #8
	adds r3, #0x20
	adds r4, #1
	cmp r4, #1
	bls _0800C350
	b _0800C3E6
	.align 2, 0
_0800C394: .4byte 0x000091A0
_0800C398:
	ldr r1, _0800C3F4 @ =gScriptContext
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800C3E6
	ldr r1, _0800C3F8 @ =gJoypad
	movs r4, #0xf
	adds r0, r4, #0
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _0800C3E6
	bl PauseBGM
	movs r0, #0x2b
	bl PlaySE
	ldr r2, _0800C3FC @ =gSaveDataBuffer
	adds r0, r7, #0
	adds r0, #0xb3
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0xe7
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0xb4
	ldrb r3, [r0]
	adds r0, r4, #0
	ands r0, r3
	lsls r0, r0, #3
	subs r4, #0x1f
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r3
	adds r2, #0xe8
	strb r0, [r2]
	ldr r0, _0800C400 @ =0x0100000A
	str r0, [r7, #8]
_0800C3E6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C3F4: .4byte gScriptContext
_0800C3F8: .4byte gJoypad
_0800C3FC: .4byte gSaveDataBuffer
_0800C400: .4byte 0x0100000A

	thumb_func_start SelectEpisodeProcess
SelectEpisodeProcess: @ 0x0800C404
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	ldrb r0, [r6, #9]
	cmp r0, #0xc
	bls _0800C41A
	b _0800C994
_0800C41A:
	lsls r0, r0, #2
	ldr r1, _0800C424 @ =_0800C428
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800C424: .4byte _0800C428
_0800C428: @ jump table
	.4byte _0800C45C @ case 0
	.4byte _0800C464 @ case 1
	.4byte _0800C504 @ case 2
	.4byte _0800C50C @ case 3
	.4byte _0800C514 @ case 4
	.4byte _0800C51C @ case 5
	.4byte _0800C5A8 @ case 6
	.4byte _0800C73E @ case 7
	.4byte _0800C7F4 @ case 8
	.4byte _0800C868 @ case 9
	.4byte _0800C884 @ case 10
	.4byte _0800C90E @ case 11
	.4byte _0800C986 @ case 12
_0800C45C:
	adds r0, r6, #0
	bl sub_800BCE4
	b _0800C994
_0800C464:
	adds r0, r6, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800C470
	b _0800C994
_0800C470:
	adds r0, r6, #0
	bl sub_800BD08
	movs r0, #0xf0
	ldrb r1, [r6, #0x1b]
	ands r0, r1
	adds r2, r6, #0
	adds r2, #0xb4
	str r2, [sp]
	cmp r0, #0
	beq _0800C48E
	ldr r0, _0800C4C8 @ =gSaveDataBuffer
	adds r0, #0xe8
	ldrb r0, [r0]
	strb r0, [r2]
_0800C48E:
	ldrb r0, [r6, #0xb]
	strb r0, [r6, #0x17]
	ldr r4, _0800C4CC @ =gOamObjects+0x130
	movs r7, #0
	ldr r3, _0800C4D0 @ =0x0000A1E0
	mov sl, r3
	ldr r5, _0800C4D4 @ =0x0000A1A0
	mov sb, r5
_0800C49E:
	ldr r0, [sp]
	ldrb r1, [r0]
	asrs r1, r7
	movs r5, #0
	adds r2, r7, #1
	mov r8, r2
	movs r3, #1
	ands r1, r3
	str r1, [sp, #8]
	mov ip, r5
	lsls r0, r7, #6
	adds r2, r0, #0
	add r2, sl
	ldr r3, _0800C4D8 @ =0x000091E0
	adds r1, r0, r3
_0800C4BC:
	ldrb r0, [r6, #0x17]
	cmp r0, r7
	bne _0800C4DC
	strh r1, [r4, #4]
	b _0800C4EC
	.align 2, 0
_0800C4C8: .4byte gSaveDataBuffer
_0800C4CC: .4byte gOamObjects+0x130
_0800C4D0: .4byte 0x0000A1E0
_0800C4D4: .4byte 0x0000A1A0
_0800C4D8: .4byte 0x000091E0
_0800C4DC:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0800C4E6
	strh r2, [r4, #4]
	b _0800C4EC
_0800C4E6:
	mov r0, ip
	add r0, sb
	strh r0, [r4, #4]
_0800C4EC:
	adds r4, #8
	movs r3, #0x20
	add ip, r3
	adds r2, #0x20
	adds r1, #0x20
	adds r5, #1
	cmp r5, #1
	bls _0800C4BC
	mov r7, r8
	cmp r7, #3
	bls _0800C49E
	b _0800C994
_0800C504:
	adds r0, r6, #0
	bl sub_800BE58
	b _0800C994
_0800C50C:
	adds r0, r6, #0
	bl sub_800BED8
	b _0800C994
_0800C514:
	adds r0, r6, #0
	bl sub_800BF58
	b _0800C994
_0800C51C:
	adds r0, r6, #0
	adds r0, #0x94
	ldrh r1, [r0]
	adds r1, #6
	ldr r2, _0800C594 @ =0x000001FF
	ands r1, r2
	strh r1, [r0]
	ldr r4, _0800C598 @ =gOamObjects+0x160
	movs r7, #3
	mov sb, r0
	mov ip, sb
	movs r5, #0xb8
	lsls r5, r5, #1
	mov sl, r5
_0800C538:
	movs r5, #0
	adds r7, #1
	mov r8, r7
	movs r1, #0xc0
	lsls r1, r1, #8
_0800C542:
	mov r0, ip
	ldrh r3, [r0]
	add r3, sl
	ands r3, r2
	adds r0, r3, r1
	strh r0, [r4, #2]
	adds r4, #8
	adds r1, #0x40
	adds r5, #1
	cmp r5, #1
	bls _0800C542
	mov r7, r8
	cmp r7, #3
	bls _0800C538
	mov r1, sb
	ldrh r1, [r1]
	cmp r1, #0xf7
	bhi _0800C568
	b _0800C994
_0800C568:
	ldr r4, _0800C598 @ =gOamObjects+0x160
	ldr r0, _0800C59C @ =0x0000C068
	strh r0, [r4, #2]
	adds r0, #0x40
	strh r0, [r4, #0xa]
	movs r0, #1
	strb r0, [r6, #0x18]
	strb r0, [r6, #0x19]
	ldr r1, _0800C5A0 @ =gScriptContext
	ldr r0, _0800C5A4 @ =0x0000FFFF
	strh r0, [r1, #0x1e]
	movs r0, #2
	bl ChangeScriptSection
	movs r0, #0xc0
	movs r1, #0x14
	bl SetTimedKeysAndDelay
	ldrb r0, [r6, #9]
	adds r0, #1
	strb r0, [r6, #9]
	b _0800C994
	.align 2, 0
_0800C594: .4byte 0x000001FF
_0800C598: .4byte gOamObjects+0x160
_0800C59C: .4byte 0x0000C068
_0800C5A0: .4byte gScriptContext
_0800C5A4: .4byte 0x0000FFFF
_0800C5A8:
	ldr r1, _0800C5F0 @ =gScriptContext
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	adds r2, r6, #0
	adds r2, #0xb4
	str r2, [sp]
	cmp r0, #0
	beq _0800C69A
	ldr r2, _0800C5F4 @ =gJoypad
	ldrh r1, [r2, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800C5F8
	ldrb r5, [r6, #0x17]
	movs r7, #0
	movs r4, #3
	ldr r1, [sp]
	movs r2, #1
_0800C5D0:
	ldrb r0, [r6, #0x17]
	subs r0, #1
	ands r0, r4
	strb r0, [r6, #0x17]
	ldrb r0, [r6, #0x17]
	ldrb r3, [r1]
	asrs r3, r0
	ands r3, r2
	cmp r3, #0
	beq _0800C5E8
	cmp r5, r0
	bne _0800C674
_0800C5E8:
	adds r7, #1
	cmp r7, #3
	bls _0800C5D0
	b _0800C69A
	.align 2, 0
_0800C5F0: .4byte gScriptContext
_0800C5F4: .4byte gJoypad
_0800C5F8:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0800C62E
	ldrb r5, [r6, #0x17]
	movs r7, #0
	movs r4, #3
	ldr r1, [sp]
	movs r2, #1
_0800C60E:
	ldrb r0, [r6, #0x17]
	adds r0, #1
	ands r0, r4
	strb r0, [r6, #0x17]
	ldrb r0, [r6, #0x17]
	ldrb r3, [r1]
	asrs r3, r0
	ands r3, r2
	cmp r3, #0
	beq _0800C626
	cmp r5, r0
	bne _0800C674
_0800C626:
	adds r7, #1
	cmp r7, #3
	bls _0800C60E
	b _0800C69A
_0800C62E:
	ldrh r1, [r2, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C67C
	movs r0, #0x2b
	bl PlaySE
	adds r0, r6, #0
	adds r0, #0x94
	movs r2, #0
	strh r4, [r0]
	strb r2, [r6, #0x18]
	strb r2, [r6, #0x19]
	ldr r1, _0800C66C @ =gIORegisters
	adds r1, #0x4a
	ldr r0, _0800C670 @ =0x0000FDFF
	ldrh r3, [r1]
	ands r0, r3
	strh r0, [r1]
	movs r0, #0xfd
	ldrb r5, [r6, #0x1a]
	ands r0, r5
	strb r0, [r6, #0x1a]
	ldrb r0, [r6, #9]
	adds r0, #1
	strb r0, [r6, #9]
	strb r2, [r6, #0xb]
	strb r2, [r6, #0xa]
	b _0800C69A
	.align 2, 0
_0800C66C: .4byte gIORegisters
_0800C670: .4byte 0x0000FDFF
_0800C674:
	movs r0, #0x2a
	bl PlaySE
	b _0800C69A
_0800C67C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800C69A
	movs r0, #0x2c
	bl PlaySE
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r0, #0xc
	strb r0, [r6, #9]
_0800C69A:
	ldr r4, _0800C6D0 @ =gOamObjects+0x130
	movs r7, #0
_0800C69E:
	ldrb r0, [r6, #0x17]
	cmp r7, r0
	bne _0800C6F0
	movs r5, #0
	adds r1, r7, #1
	mov r8, r1
	ldr r2, [sp]
	mov ip, r2
	movs r3, #1
	mov sl, r3
	movs r2, #0
	lsls r0, r7, #6
	ldr r3, _0800C6D4 @ =0x000091E0
	adds r1, r0, r3
	ldr r0, _0800C6D8 @ =0x000091A0
	mov sb, r0
_0800C6BE:
	mov r0, ip
	ldrb r3, [r0]
	asrs r3, r7
	mov r0, sl
	ands r3, r0
	cmp r3, #0
	beq _0800C6DC
	strh r1, [r4, #4]
	b _0800C6E2
	.align 2, 0
_0800C6D0: .4byte gOamObjects+0x130
_0800C6D4: .4byte 0x000091E0
_0800C6D8: .4byte 0x000091A0
_0800C6DC:
	mov r3, sb
	adds r0, r2, r3
	strh r0, [r4, #4]
_0800C6E2:
	adds r4, #8
	adds r2, #0x20
	adds r1, #0x20
	adds r5, #1
	cmp r5, #1
	bls _0800C6BE
	b _0800C736
_0800C6F0:
	movs r5, #0
	adds r0, r7, #1
	mov r8, r0
	ldr r1, [sp]
	mov ip, r1
	movs r2, #1
	mov sl, r2
	movs r2, #0
	lsls r0, r7, #6
	ldr r3, _0800C71C @ =0x0000A1E0
	adds r1, r0, r3
	ldr r0, _0800C720 @ =0x0000A1A0
	mov sb, r0
_0800C70A:
	mov r0, ip
	ldrb r3, [r0]
	asrs r3, r7
	mov r0, sl
	ands r3, r0
	cmp r3, #0
	beq _0800C724
	strh r1, [r4, #4]
	b _0800C72A
	.align 2, 0
_0800C71C: .4byte 0x0000A1E0
_0800C720: .4byte 0x0000A1A0
_0800C724:
	mov r3, sb
	adds r0, r2, r3
	strh r0, [r4, #4]
_0800C72A:
	adds r4, #8
	adds r2, #0x20
	adds r1, #0x20
	adds r5, #1
	cmp r5, #1
	bls _0800C70A
_0800C736:
	mov r7, r8
	cmp r7, #3
	bls _0800C69E
	b _0800C994
_0800C73E:
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r5, #0x94
	adds r5, r5, r6
	mov sb, r5
	cmp r0, #0x28
	bls _0800C762
	movs r0, #0
	movs r1, #0
	strh r1, [r5]
	ldrb r1, [r6, #9]
	adds r1, #1
	strb r1, [r6, #9]
	strb r0, [r6, #0xb]
	strb r0, [r6, #0xa]
_0800C762:
	ldr r4, _0800C798 @ =gOamObjects+0x130
	movs r7, #0
	ldr r0, _0800C79C @ =0x000001FF
	mov ip, r0
	movs r1, #0xfe
	lsls r1, r1, #8
	mov sl, r1
_0800C770:
	movs r5, #0
	adds r2, r7, #1
	mov r8, r2
_0800C776:
	ldrb r3, [r6, #0x17]
	cmp r7, r3
	bne _0800C7B0
	ldrh r1, [r4, #2]
	mov r3, ip
	ands r3, r1
	mov r0, sl
	ands r0, r1
	strh r0, [r4, #2]
	cmp r5, #0
	bne _0800C7A0
	cmp r3, #0x37
	bhi _0800C792
	adds r3, #4
_0800C792:
	cmp r3, #0x38
	bls _0800C7AC
	b _0800C7AA
	.align 2, 0
_0800C798: .4byte gOamObjects+0x130
_0800C79C: .4byte 0x000001FF
_0800C7A0:
	cmp r3, #0x77
	bhi _0800C7A6
	adds r3, #4
_0800C7A6:
	cmp r3, #0x78
	bls _0800C7AC
_0800C7AA:
	subs r3, #4
_0800C7AC:
	ldrh r1, [r4, #2]
	b _0800C7D2
_0800C7B0:
	ldrh r0, [r4, #2]
	mov r3, ip
	ands r3, r0
	mov r1, sl
	ands r1, r0
	strh r1, [r4, #2]
	mov r2, sb
	ldrh r2, [r2]
	adds r3, r2, r3
	mov r0, ip
	ands r3, r0
	cmp r3, #0xf0
	bls _0800C7D2
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4]
	b _0800C7D6
_0800C7D2:
	adds r0, r1, r3
	strh r0, [r4, #2]
_0800C7D6:
	adds r4, #8
	adds r5, #1
	cmp r5, #1
	bls _0800C776
	mov r7, r8
	cmp r7, #3
	bls _0800C770
	mov r1, sb
	ldrh r0, [r1]
	cmp r0, #7
	bls _0800C7EE
	b _0800C994
_0800C7EE:
	adds r0, #1
	strh r0, [r1]
	b _0800C994
_0800C7F4:
	ldr r4, _0800C840 @ =gOamObjects+0x130
	movs r7, #0
	movs r2, #0x94
	adds r2, r2, r6
	mov sb, r2
	movs r3, #0xff
	lsls r3, r3, #8
	mov sl, r3
	movs r1, #0
_0800C806:
	movs r5, #0
	adds r0, r7, #1
	mov r8, r0
_0800C80C:
	ldrb r2, [r6, #0x17]
	cmp r7, r2
	bne _0800C844
	ldrb r3, [r4]
	mov r0, sl
	ldrh r2, [r4]
	ands r0, r2
	strh r0, [r4]
	cmp r3, #0x37
	bhi _0800C826
	adds r3, #4
	cmp r3, #0x37
	bhi _0800C830
_0800C826:
	cmp r3, #0x38
	bls _0800C83A
	subs r3, #4
	cmp r3, #0x38
	bhi _0800C83A
_0800C830:
	movs r0, #9
	strb r0, [r6, #9]
	strb r1, [r6, #0xb]
	strb r1, [r6, #0xa]
	movs r3, #0x38
_0800C83A:
	ldrh r2, [r4]
	adds r0, r2, r3
	b _0800C848
	.align 2, 0
_0800C840: .4byte gOamObjects+0x130
_0800C844:
	movs r0, #0x80
	lsls r0, r0, #2
_0800C848:
	strh r0, [r4]
	adds r4, #8
	adds r5, #1
	cmp r5, #1
	bls _0800C80C
	mov r7, r8
	cmp r7, #3
	bls _0800C806
	mov r3, sb
	ldrh r0, [r3]
	cmp r0, #7
	bls _0800C862
	b _0800C994
_0800C862:
	adds r0, #1
	strh r0, [r3]
	b _0800C994
_0800C868:
	ldrb r0, [r6, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bhi _0800C87A
	b _0800C994
_0800C87A:
	movs r0, #0xa
	strb r0, [r6, #9]
	strb r1, [r6, #0xb]
	strb r1, [r6, #0xa]
	b _0800C994
_0800C884:
	ldrb r0, [r6, #0xa]
	adds r0, #1
	movs r4, #0
	strb r0, [r6, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x32
	bls _0800C8AA
	movs r0, #2
	movs r1, #4
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r6, #9]
	adds r0, #1
	strb r0, [r6, #9]
	strb r4, [r6, #0xb]
	b _0800C8B8
_0800C8AA:
	ldrb r5, [r6, #0xb]
	cmp r5, #5
	bls _0800C8B2
	strb r4, [r6, #0xb]
_0800C8B2:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
_0800C8B8:
	ldr r4, _0800C8E8 @ =gOamObjects+0x130
	movs r7, #0
	ldr r0, _0800C8EC @ =0x0000A1E0
	mov sb, r0
	ldr r1, _0800C8F0 @ =0x000091E0
	mov sl, r1
	movs r2, #0x80
	lsls r2, r2, #2
_0800C8C8:
	movs r5, #0
	adds r3, r7, #1
	mov r8, r3
	lsls r0, r7, #6
	mov r3, sl
	adds r1, r0, r3
	add r0, sb
_0800C8D6:
	ldrb r3, [r6, #0x17]
	cmp r7, r3
	bne _0800C8F8
	ldrb r3, [r6, #0xb]
	cmp r3, #2
	bls _0800C8F4
	strh r0, [r4, #4]
	b _0800C8FA
	.align 2, 0
_0800C8E8: .4byte gOamObjects+0x130
_0800C8EC: .4byte 0x0000A1E0
_0800C8F0: .4byte 0x000091E0
_0800C8F4:
	strh r1, [r4, #4]
	b _0800C8FA
_0800C8F8:
	strh r2, [r4]
_0800C8FA:
	adds r4, #8
	adds r1, #0x20
	adds r0, #0x20
	adds r5, #1
	cmp r5, #1
	bls _0800C8D6
	mov r7, r8
	cmp r7, #3
	bls _0800C8C8
	b _0800C994
_0800C90E:
	adds r0, r6, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800C994
	adds r0, r6, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	lsrs r1, r0, #4
	ldrb r5, [r6, #0x17]
	asrs r1, r5
	movs r0, #1
	ands r1, r0
	adds r2, r6, #0
	adds r2, #0xb3
	ldr r3, _0800C958 @ =gMain
	ldr r4, _0800C95C @ =gCaseStartProcess
	cmp r1, #0
	beq _0800C948
	movs r7, #0
	movs r1, #1
	rsbs r1, r1, #0
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r6, r5
_0800C940:
	stm r0!, {r1}
	adds r7, #1
	cmp r7, #7
	bls _0800C940
_0800C948:
	ldrb r0, [r6, #0x17]
	cmp r0, #1
	beq _0800C96A
	cmp r0, #1
	bgt _0800C960
	cmp r0, #0
	beq _0800C978
	b _0800C976
	.align 2, 0
_0800C958: .4byte gMain
_0800C95C: .4byte gCaseStartProcess
_0800C960:
	cmp r0, #2
	beq _0800C96E
	cmp r0, #3
	beq _0800C972
	b _0800C976
_0800C96A:
	movs r0, #2
	b _0800C978
_0800C96E:
	movs r0, #8
	b _0800C978
_0800C972:
	movs r0, #0xe
	b _0800C978
_0800C976:
	movs r0, #0
_0800C978:
	strb r0, [r2]
	movs r0, #0
	str r0, [r3, #4]
	ldrb r2, [r2]
	adds r0, r2, r4
	ldrb r0, [r0]
	b _0800C992
_0800C986:
	adds r0, r6, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800C994
	movs r0, #1
_0800C992:
	str r0, [r6, #8]
_0800C994:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

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
	bl sub_800BCE4
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
	ldr r0, _0800CADC @ =gUnknown_081DE3A8
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
_0800CADC: .4byte gUnknown_081DE3A8
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
	ldr r0, _0800CE30 @ =gUnknown_081370FC
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
	ldr r5, _0800CE44 @ =gUnknown_081378FC
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
	ldr r0, _0800CE7C @ =gUnknown_081400FC
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
	ldr r0, _0800CE90 @ =gUnknown_081412FC
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
	ldr r0, _0800CEA8 @ =gUnknown_081DE3A8
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
	bl sub_8011578
	b _0800CF42
	.align 2, 0
_0800CE2C: .4byte 0x040000D4
_0800CE30: .4byte gUnknown_081370FC
_0800CE34: .4byte 0x06003800
_0800CE38: .4byte 0x80000400
_0800CE3C: .4byte gUnknown_0813791C
_0800CE40: .4byte 0x80000800
_0800CE44: .4byte gUnknown_081378FC
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
_0800CE7C: .4byte gUnknown_081400FC
_0800CE80: .4byte 0x06012000
_0800CE84: .4byte gUnknown_0814DBA0
_0800CE88: .4byte 0x050002A0
_0800CE8C: .4byte 0x80000020
_0800CE90: .4byte gUnknown_081412FC
_0800CE94: .4byte 0x06013000
_0800CE98: .4byte gUnknown_0814DC00
_0800CE9C: .4byte 0x050002E0
_0800CEA0: .4byte gUnknown_081426FC
_0800CEA4: .4byte 0x06013200
_0800CEA8: .4byte gUnknown_081DE3A8
_0800CEAC: .4byte 0x05000320
_0800CEB0:
	cmp r0, #8
	bne _0800CF42
	bl sub_80115D4
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
	bl sub_8013508
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
