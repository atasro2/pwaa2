	.include "asm/macros.inc"
	.syntax unified

	thumb_func_start Command2A
Command2A: @ 0x08008FAC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r1, [r1, #2]
	movs r0, #0
	bl GetFlag
	cmp r0, #0
	beq _08008FC8
	ldr r0, [r4, #4]
	ldrh r1, [r0, #2]
	b _08008FCC
_08008FC8:
	ldr r0, [r4, #4]
	ldrh r1, [r0, #4]
_08008FCC:
	strh r1, [r4, #0x20]
	adds r0, #6
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Command2B
Command2B: @ 0x08008FDC
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start Command2C
Command2C: @ 0x08008FE8
	push {r4, r5, r6, r7, lr}
	ldr r1, [r0, #4]
	ldrh r2, [r1, #2]
	movs r3, #0
	strh r2, [r0, #0x20]
	adds r1, #4
	str r1, [r0, #4]
	strb r3, [r0, #0xe]
	strb r3, [r0, #0xf]
	movs r2, #0
	ldr r4, _08009050 @ =gBG1MapBuffer
	ldr r6, _08009054 @ =gAnimation+0x44
	ldr r5, _08009058 @ =gMain
	ldr r3, _0800905C @ =0x00007FFF
	ldr r1, _08009060 @ =gTextBoxCharacters
_08009006:
	adds r0, r3, #0
	ldrh r7, [r1]
	ands r0, r7
	strh r0, [r1]
	adds r1, #0xc
	adds r2, #1
	cmp r2, #0x3e
	bls _08009006
	ldr r0, _08009064 @ =0x000004DC
	adds r1, r4, r0
	ldrh r0, [r1]
	cmp r0, #9
	beq _08009028
	cmp r0, #0
	beq _08009028
	movs r0, #9
	strh r0, [r1]
_08009028:
	ldr r7, _08009068 @ =0x000004DE
	adds r1, r4, r7
	ldrh r0, [r1]
	cmp r0, #9
	beq _0800903A
	cmp r0, #0
	beq _0800903A
	movs r0, #9
	strh r0, [r1]
_0800903A:
	adds r0, r5, #0
	adds r0, #0xb8
	ldrh r1, [r0]
	adds r0, r6, #0
	bl SetAnimationFrameOffset
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08009050: .4byte gBG1MapBuffer
_08009054: .4byte gAnimation+0x44
_08009058: .4byte gMain
_0800905C: .4byte 0x00007FFF
_08009060: .4byte gTextBoxCharacters
_08009064: .4byte 0x000004DC
_08009068: .4byte 0x000004DE

	thumb_func_start Command2E
Command2E: @ 0x0800906C
	push {r4, r5, lr}
	ldr r1, _080090D0 @ =0x0000FFFC
	ldrh r2, [r0]
	ands r1, r2
	movs r2, #0
	strh r1, [r0]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	strb r2, [r0, #0xe]
	strb r2, [r0, #0xf]
	adds r1, r0, #0
	adds r1, #0x36
	strb r2, [r1]
	adds r0, #0x37
	strb r2, [r0]
	movs r2, #0
	ldr r4, _080090D4 @ =gBG1MapBuffer
	ldr r3, _080090D8 @ =0x00007FFF
	ldr r1, _080090DC @ =gTextBoxCharacters
_08009094:
	adds r0, r3, #0
	ldrh r5, [r1]
	ands r0, r5
	strh r0, [r1]
	adds r1, #0xc
	adds r2, #1
	cmp r2, #0x3e
	bls _08009094
	ldr r0, _080090E0 @ =0x000004DC
	adds r1, r4, r0
	ldrh r0, [r1]
	cmp r0, #9
	beq _080090B6
	cmp r0, #0
	beq _080090B6
	movs r0, #9
	strh r0, [r1]
_080090B6:
	ldr r2, _080090E4 @ =0x000004DE
	adds r1, r4, r2
	ldrh r0, [r1]
	cmp r0, #9
	beq _080090C8
	cmp r0, #0
	beq _080090C8
	movs r0, #9
	strh r0, [r1]
_080090C8:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080090D0: .4byte 0x0000FFFC
_080090D4: .4byte gBG1MapBuffer
_080090D8: .4byte 0x00007FFF
_080090DC: .4byte gTextBoxCharacters
_080090E0: .4byte 0x000004DC
_080090E4: .4byte 0x000004DE

	thumb_func_start Command2F
Command2F: @ 0x080090E8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	ldrh r2, [r0, #2]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _08009104
	adds r0, r2, #0
	bl PlayAnimation
	b _0800910E
_08009104:
	adds r0, r2, #0
	bl FindAnimationFromAnimId
	bl DestroyAnimation
_0800910E:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start Command30
Command30: @ 0x0800911C
	adds r2, r0, #0
	ldr r1, [r2, #4]
	adds r0, r1, #2
	str r0, [r2, #4]
	ldrh r0, [r1, #2]
	strb r0, [r2, #0x17]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _08009134
	movs r0, #0
	strb r0, [r2, #0x16]
_08009134:
	ldr r0, [r2, #4]
	adds r0, #2
	str r0, [r2, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start Command31
Command31: @ 0x08009140
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r2, r0, #2
	ldrh r0, [r0, #2]
	adds r1, r2, #2
	str r1, [r4, #4]
	ldrh r1, [r2, #2]
	bl sub_8014D10
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Command32
Command32: @ 0x08009164
	ldr r2, [r0, #4]
	adds r1, r2, #2
	ldrh r2, [r2, #2]
	ldrh r3, [r1, #2]
	adds r1, #4
	str r1, [r0, #4]
	ldr r1, _08009184 @ =gMain
	lsls r0, r2, #2
	adds r0, r0, r2
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r1, r2
	adds r0, r0, r1
	strb r3, [r0]
	movs r0, #0
	bx lr
	.align 2, 0
_08009184: .4byte gMain

	thumb_func_start Command33
Command33: @ 0x08009188
	push {r4, lr}
	ldr r1, [r0, #4]
	adds r4, r1, #2
	ldrh r2, [r1, #2]
	adds r1, r4, #2
	str r1, [r0, #4]
	ldr r1, _080091E8 @ =gMain
	mov ip, r1
	lsls r3, r2, #2
	adds r3, r3, r2
	ldr r1, _080091EC @ =0x00000121
	add r1, ip
	adds r1, r3, r1
	ldrh r2, [r4, #2]
	strb r2, [r1]
	ldr r2, [r0, #4]
	adds r1, r2, #2
	str r1, [r0, #4]
	movs r1, #0x91
	lsls r1, r1, #1
	add r1, ip
	adds r1, r3, r1
	ldrh r2, [r2, #2]
	strb r2, [r1]
	ldr r2, [r0, #4]
	adds r1, r2, #2
	str r1, [r0, #4]
	ldr r1, _080091F0 @ =0x00000123
	add r1, ip
	adds r1, r3, r1
	ldrh r2, [r2, #2]
	strb r2, [r1]
	ldr r2, [r0, #4]
	adds r1, r2, #2
	str r1, [r0, #4]
	movs r1, #0x92
	lsls r1, r1, #1
	add r1, ip
	adds r3, r3, r1
	ldrh r1, [r2, #2]
	strb r1, [r3]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080091E8: .4byte gMain
_080091EC: .4byte 0x00000121
_080091F0: .4byte 0x00000123

	thumb_func_start Command34
Command34: @ 0x080091F4
	push {r4, lr}
	ldr r1, [r0, #4]
	ldr r4, _08009220 @ =gMain
	ldrh r2, [r1, #2]
	adds r3, r4, #0
	adds r3, #0xb2
	strb r2, [r3]
	adds r1, #4
	str r1, [r0, #4]
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0x1f
	bl StartHardwareBlend
	ldr r0, _08009224 @ =0x00000504
	str r0, [r4, #8]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08009220: .4byte gMain
_08009224: .4byte 0x00000504

	thumb_func_start Command35
Command35: @ 0x08009228
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #4]
	adds r0, r1, #2
	str r0, [r6, #4]
	ldrh r1, [r1, #2]
	lsrs r2, r1, #8
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08009250
	movs r0, #0
	adds r1, r2, #0
	bl GetFlag
	cmp r0, #0
	bne _08009262
	ldr r0, [r6, #4]
	adds r0, #4
	b _080092C2
_08009250:
	movs r0, #0
	adds r1, r2, #0
	bl GetFlag
	cmp r0, #0
	beq _08009262
	ldr r0, [r6, #4]
	adds r0, #4
	b _080092C2
_08009262:
	ldr r1, [r6, #4]
	movs r0, #0x80
	ldrh r2, [r1]
	ands r0, r2
	cmp r0, #0
	beq _080092B8
	ldrh r5, [r1, #2]
	adds r0, r1, #4
	str r0, [r6, #4]
	lsls r0, r5, #2
	ldr r1, _080092A8 @ =gUnknown_02011FC4
	adds r0, r0, r1
	ldrh r2, [r0]
	lsrs r4, r2, #1
	ldrh r5, [r0, #2]
	ldr r0, _080092AC @ =gMain
	ldrh r1, [r6, #0x1e]
	bl sub_8007CCC
	ldr r1, _080092B0 @ =gScriptContext
	movs r0, #0
	strb r0, [r1, #0x13]
	adds r0, r5, #0
	adds r0, #0x80
	strh r0, [r6, #0x1e]
	lsls r0, r5, #2
	ldr r1, _080092A8 @ =gUnknown_02011FC4
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, _080092B4 @ =gScriptHeap
	adds r0, r0, r2
	str r0, [r6, #8]
	lsls r4, r4, #1
	adds r0, r0, r4
	b _080092C2
	.align 2, 0
_080092A8: .4byte gUnknown_02011FC4
_080092AC: .4byte gMain
_080092B0: .4byte gScriptContext
_080092B4: .4byte gScriptHeap
_080092B8:
	ldrh r1, [r1, #2]
	lsrs r5, r1, #1
	lsls r1, r5, #1
	ldr r0, [r6, #8]
	adds r0, r0, r1
_080092C2:
	str r0, [r6, #4]
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start Command36
Command36: @ 0x080092CC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	ldrh r6, [r0, #2]
	adds r0, #4
	str r0, [r4, #4]
	lsls r0, r6, #2
	ldr r1, _08009314 @ =gUnknown_02011FC4
	adds r0, r0, r1
	ldrh r1, [r0]
	lsrs r5, r1, #1
	ldrh r6, [r0, #2]
	ldr r0, _08009318 @ =gMain
	ldrh r1, [r4, #0x1e]
	bl sub_8007CCC
	ldr r1, _0800931C @ =gScriptContext
	movs r0, #0
	strb r0, [r1, #0x13]
	adds r0, r6, #0
	adds r0, #0x80
	strh r0, [r4, #0x1e]
	lsls r0, r6, #2
	ldr r1, _08009314 @ =gUnknown_02011FC4
	adds r0, r0, r1
	ldr r0, [r0]
	subs r1, #4
	adds r0, r0, r1
	str r0, [r4, #8]
	lsls r5, r5, #1
	adds r0, r0, r5
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08009314: .4byte gUnknown_02011FC4
_08009318: .4byte gMain
_0800931C: .4byte gScriptContext

	thumb_func_start Command37
Command37: @ 0x08009320
	push {r4, lr}
	ldr r1, [r0, #4]
	adds r4, r1, #2
	ldrh r2, [r1, #2]
	adds r1, r4, #2
	str r1, [r0, #4]
	ldr r3, _08009348 @ =gTalkData
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrh r2, [r4, #2]
	strb r2, [r1, #3]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08009348: .4byte gTalkData

	thumb_func_start Command38
Command38: @ 0x0800934C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0800936C
	ldr r0, _08009368 @ =gAnimation+0x44
	movs r1, #1
	bl sub_8014138
	b _08009374
	.align 2, 0
_08009368: .4byte gAnimation+0x44
_0800936C:
	ldr r0, _08009384 @ =gAnimation+0x44
	movs r1, #0
	bl sub_8014138
_08009374:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08009384: .4byte gAnimation+0x44

	thumb_func_start Command39
Command39: @ 0x08009388
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r1, [r7, #4]
	adds r0, r1, #2
	str r0, [r7, #4]
	ldrh r1, [r1, #2]
	lsrs r4, r1, #8
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08009474
	adds r0, r4, #0
	bl sub_80099A0
	adds r5, r0, #0
	cmp r5, #0xff
	bne _08009444
	movs r0, #0xff
	bl sub_80099A0
	adds r5, r0, #0
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _08009420 @ =gMapMarker
	adds r6, r0, r1
	adds r5, #0x39
	strb r4, [r6]
	ldr r0, [r7, #0x3c]
	str r0, [r6, #0x10]
	ldr r2, _08009424 @ =0x040000D4
	ldr r0, _08009428 @ =gUnknown_08022CA0
	lsls r3, r4, #1
	adds r3, r3, r4
	lsls r3, r3, #2
	adds r3, r3, r0
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r6, #0x10]
	str r0, [r2, #4]
	ldrh r4, [r3, #4]
	lsrs r0, r4, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0800942C @ =gUnknown_08231BE8
	str r0, [r2]
	ldr r0, _08009430 @ =0x050002C0
	str r0, [r2, #4]
	ldr r0, _08009434 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	strh r5, [r6, #0xe]
	lsls r1, r5, #3
	ldr r0, _08009438 @ =gOamObjects
	adds r1, r1, r0
	ldrh r0, [r3, #6]
	strh r0, [r1]
	strh r0, [r6, #8]
	ldrh r0, [r3, #8]
	strh r0, [r1, #2]
	strh r0, [r6, #0xa]
	ldr r0, [r6, #0x10]
	ldr r2, _0800943C @ =0xF9FEE800
	adds r5, r0, r2
	lsrs r5, r5, #5
	ldr r2, _08009440 @ =0x000068C0
	adds r0, r5, r2
	strh r0, [r1, #4]
	strh r0, [r6, #0xc]
	ldr r0, [r7, #0x3c]
	adds r0, r0, r4
	str r0, [r7, #0x3c]
	b _0800948E
	.align 2, 0
_08009420: .4byte gMapMarker
_08009424: .4byte 0x040000D4
_08009428: .4byte gUnknown_08022CA0
_0800942C: .4byte gUnknown_08231BE8
_08009430: .4byte 0x050002C0
_08009434: .4byte 0x80000010
_08009438: .4byte gOamObjects
_0800943C: .4byte 0xF9FEE800
_08009440: .4byte 0x000068C0
_08009444:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _0800946C @ =gMapMarker
	adds r6, r0, r1
	ldrh r0, [r6, #0xe]
	lsls r1, r0, #3
	ldr r0, _08009470 @ =gOamObjects
	adds r1, r1, r0
	ldrh r0, [r6, #8]
	strh r0, [r1]
	ldrh r0, [r6, #0xa]
	strh r0, [r1, #2]
	ldrh r0, [r6, #0xc]
	strh r0, [r1, #4]
	movs r0, #0xfb
	ldrb r1, [r6, #5]
	ands r0, r1
	strb r0, [r6, #5]
	b _0800948E
	.align 2, 0
_0800946C: .4byte gMapMarker
_08009470: .4byte gOamObjects
_08009474:
	adds r0, r4, #0
	bl sub_80099A0
	adds r5, r0, #0
	ldr r1, _0800949C @ =gMapMarker
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #4
	ldrb r2, [r0, #5]
	orrs r1, r2
	strb r1, [r0, #5]
_0800948E:
	ldr r0, [r7, #4]
	adds r0, #2
	str r0, [r7, #4]
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800949C: .4byte gMapMarker

	thumb_func_start Command3A
Command3A: @ 0x080094A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	lsrs r0, r0, #8
	bl sub_80099A0
	adds r2, r0, #0
	cmp r2, #0xff
	beq _080094F8
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	ldr r0, _080094F4 @ =gMapMarker
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0xff
	lsls r0, r0, #8
	ldrh r2, [r1, #8]
	ands r0, r2
	strh r0, [r1, #8]
	ldr r2, [r4, #4]
	ldrb r2, [r2]
	orrs r0, r2
	strh r0, [r1, #8]
	movs r0, #0xfe
	lsls r0, r0, #8
	ldrh r2, [r1, #0xa]
	ands r0, r2
	strh r0, [r1, #0xa]
	ldr r2, [r4, #4]
	ldrh r2, [r2]
	lsrs r2, r2, #8
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r0, [r4, #4]
	adds r0, #2
	b _080094FC
	.align 2, 0
_080094F4: .4byte gMapMarker
_080094F8:
	ldr r0, [r4, #4]
	adds r0, #4
_080094FC:
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Command3B
Command3B: @ 0x08009508
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	lsrs r0, r0, #8
	bl sub_80099A0
	adds r2, r0, #0
	cmp r2, #0xff
	beq _08009560
	ldr r0, _0800955C @ =gMapMarker
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r4, #4]
	movs r0, #3
	ldrb r2, [r2]
	ands r0, r2
	movs r3, #0
	strb r0, [r1, #4]
	ldr r2, [r4, #4]
	adds r0, r2, #2
	str r0, [r4, #4]
	ldrh r2, [r2, #2]
	lsrs r0, r2, #8
	strb r0, [r1, #3]
	ldr r0, [r4, #4]
	ldrh r0, [r0]
	strb r0, [r1, #6]
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #2
	ldrb r2, [r1, #5]
	orrs r0, r2
	strb r0, [r1, #5]
	strb r3, [r1, #7]
	b _08009566
	.align 2, 0
_0800955C: .4byte gMapMarker
_08009560:
	ldr r0, [r4, #4]
	adds r0, #4
	str r0, [r4, #4]
_08009566:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Command3C
Command3C: @ 0x08009570
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	lsrs r0, r0, #8
	bl sub_80099A0
	adds r2, r0, #0
	cmp r2, #0xff
	beq _080095B2
	ldr r1, _080095D0 @ =gMapMarker
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r3, r0, r1
	ldr r0, [r4, #4]
	ldrh r0, [r0]
	strb r0, [r3, #1]
	ldr r1, [r4, #4]
	movs r0, #1
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _080095B2
	ldr r0, _080095D4 @ =gOamObjects
	adds r1, r2, #0
	adds r1, #0x39
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrh r0, [r3, #0xa]
	strh r0, [r1, #2]
_080095B2:
	ldr r1, _080095D0 @ =gMapMarker
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0, #2]
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080095D0: .4byte gMapMarker
_080095D4: .4byte gOamObjects

	thumb_func_start Command3D
Command3D: @ 0x080095D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	lsrs r0, r0, #8
	bl sub_80099A0
	adds r2, r0, #0
	cmp r2, #0xff
	beq _08009614
	ldr r0, _08009610 @ =gMapMarker
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #2
	ldrb r1, [r1, #5]
	ands r0, r1
	cmp r0, #0
	beq _08009614
	ldr r0, [r4, #4]
	subs r0, #2
	str r0, [r4, #4]
	movs r0, #1
	b _0800961C
	.align 2, 0
_08009610: .4byte gMapMarker
_08009614:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
_0800961C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Command3E
Command3E: @ 0x08009624
	push {r4, lr}
	ldr r4, [r0, #4]
	ldr r2, _08009678 @ =0x040000D4
	ldr r1, _0800967C @ =gUnknown_081426FC
	str r1, [r2]
	ldr r1, _08009680 @ =0x06011F80
	str r1, [r2, #4]
	ldr r1, _08009684 @ =0x80000040
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08009688 @ =gUnknown_0814DC60
	str r1, [r2]
	ldr r1, _0800968C @ =0x05000300
	str r1, [r2, #4]
	ldr r1, _08009690 @ =0x80000010
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r2, _08009694 @ =gInvestigation
	movs r3, #0
	movs r1, #0xf0
	strh r1, [r2]
	movs r1, #0x30
	strh r1, [r2, #2]
	strb r3, [r2, #0x19]
	movs r1, #8
	strb r1, [r2, #0x18]
	movs r1, #0xf
	strb r1, [r2, #9]
	ldrh r1, [r4, #2]
	strb r1, [r2, #0xa]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r2, #0
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	adds r4, #4
	str r4, [r0, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08009678: .4byte 0x040000D4
_0800967C: .4byte gUnknown_081426FC
_08009680: .4byte 0x06011F80
_08009684: .4byte 0x80000040
_08009688: .4byte gUnknown_0814DC60
_0800968C: .4byte 0x05000300
_08009690: .4byte 0x80000010
_08009694: .4byte gInvestigation

	thumb_func_start Command3F
Command3F: @ 0x08009698
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r5, _080096F4 @ =gInvestigation
	ldrh r2, [r6]
	movs r0, #0x80
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08009700
	ldrh r1, [r5]
	ldrb r3, [r5, #9]
	adds r0, r1, r3
	movs r1, #0xff
	ands r0, r1
	strh r0, [r5]
	adds r0, r3, #0
	subs r0, #1
	strb r0, [r5, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080096D4
	ldr r0, _080096F8 @ =0x0000FF7F
	ands r0, r2
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r6]
_080096D4:
	movs r0, #0x80
	lsls r0, r0, #2
	ldrh r3, [r6]
	ands r0, r3
	cmp r0, #0
	bne _080096E2
	b _080098E2
_080096E2:
	movs r0, #0x31
	bl PlaySE
	ldr r0, _080096FC @ =0x0000FDFF
	ldrh r1, [r6]
	ands r0, r1
	strh r0, [r6]
	b _080098E2
	.align 2, 0
_080096F4: .4byte gInvestigation
_080096F8: .4byte 0x0000FF7F
_080096FC: .4byte 0x0000FDFF
_08009700:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	bne _0800970C
	b _080098E2
_0800970C:
	movs r0, #0x2c
	ldrb r2, [r5, #0xa]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _08009818 @ =gUnknown_08022D0C
	adds r4, r1, r0
	ldr r1, _0800981C @ =gJoypad
	movs r0, #0x20
	ldrh r2, [r1]
	ands r0, r2
	adds r2, r1, #0
	cmp r0, #0
	beq _08009744
	ldrh r0, [r5]
	subs r0, #3
	strh r0, [r5]
	adds r1, r4, #0
	adds r1, #0x28
	ldrb r1, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bhs _0800973C
	strh r1, [r5]
_0800973C:
	ldrh r0, [r5]
	cmp r0, #0xe0
	bls _08009744
	strh r3, [r5]
_08009744:
	movs r0, #0x10
	ldrh r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0800976E
	ldrh r0, [r5]
	adds r0, #3
	strh r0, [r5]
	adds r1, r4, #0
	adds r1, #0x2a
	ldrb r1, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bls _08009764
	strh r1, [r5]
_08009764:
	ldrh r3, [r5]
	cmp r3, #0xe0
	bls _0800976E
	movs r0, #0xe0
	strh r0, [r5]
_0800976E:
	movs r0, #0x40
	ldrh r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08009798
	ldrh r0, [r5, #2]
	subs r0, #3
	strh r0, [r5, #2]
	adds r1, r4, #0
	adds r1, #0x29
	ldrb r1, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bhs _0800978E
	strh r1, [r5, #2]
_0800978E:
	ldrh r3, [r5, #2]
	cmp r3, #0x90
	bls _08009798
	movs r0, #0
	strh r0, [r5, #2]
_08009798:
	movs r0, #0x80
	ldrh r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _080097C2
	ldrh r0, [r5, #2]
	adds r0, #3
	strh r0, [r5, #2]
	adds r1, r4, #0
	adds r1, #0x2b
	ldrb r1, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bls _080097B8
	strh r1, [r5, #2]
_080097B8:
	ldrh r3, [r5, #2]
	cmp r3, #0x90
	bls _080097C2
	movs r0, #0x90
	strh r0, [r5, #2]
_080097C2:
	movs r1, #1
	ldrh r2, [r2, #2]
	ands r1, r2
	cmp r1, #0
	beq _080098B4
	ldr r0, _08009820 @ =0x0000FEF7
	ldrh r1, [r6]
	ands r0, r1
	strh r0, [r6]
	ldr r1, _08009824 @ =gMain
	ldrh r2, [r1, #0x3c]
	ldrh r3, [r5]
	adds r0, r2, r3
	adds r0, #0xc
	lsls r0, r0, #0x10
	ldr r2, _08009828 @ =0xFFFF0000
	ldrh r1, [r1, #0x3e]
	ldrh r3, [r5, #2]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	ldr r3, _0800982C @ =0x0000FFFF
	lsrs r0, r0, #0x10
	orrs r0, r1
	str r0, [sp]
	ldr r0, [sp, #4]
	ands r0, r2
	movs r1, #4
	orrs r0, r1
	ands r0, r3
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [sp, #4]
	mov r0, sp
	adds r1, r4, #0
	bl sub_8014508
	cmp r0, #0
	beq _08009830
	ldrh r0, [r4, #0x20]
	bl ChangeScriptSection
	b _0800984C
	.align 2, 0
_08009818: .4byte gUnknown_08022D0C
_0800981C: .4byte gJoypad
_08009820: .4byte 0x0000FEF7
_08009824: .4byte gMain
_08009828: .4byte 0xFFFF0000
_0800982C: .4byte 0x0000FFFF
_08009830:
	adds r1, r4, #0
	adds r1, #0x10
	mov r0, sp
	bl sub_8014508
	cmp r0, #0
	beq _08009846
	ldrh r0, [r4, #0x22]
	bl ChangeScriptSection
	b _0800984C
_08009846:
	ldrh r0, [r4, #0x24]
	bl ChangeScriptSection
_0800984C:
	movs r0, #0x80
	lsls r0, r0, #3
	adds r4, r0, #0
	ldrh r0, [r6]
	orrs r0, r4
	strh r0, [r6]
	ldr r1, _0800989C @ =0x040000D4
	ldr r0, _080098A0 @ =gUnknown_0814DC60
	str r0, [r1]
	ldr r0, _080098A4 @ =0x05000300
	str r0, [r1, #4]
	ldr r0, _080098A8 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x2b
	bl PlaySE
	ldrh r1, [r6]
	orrs r4, r1
	strh r4, [r6]
	ldr r1, _080098AC @ =gOamObjects
	ldrh r2, [r5, #2]
	movs r3, #0xb0
	lsls r3, r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	ldrh r5, [r5]
	movs r0, #0x80
	lsls r0, r0, #7
	adds r2, r5, r0
	adds r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	movs r0, #0xb1
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, _080098B0 @ =0x000084FC
	strh r0, [r1]
	movs r0, #0
	b _08009914
	.align 2, 0
_0800989C: .4byte 0x040000D4
_080098A0: .4byte gUnknown_0814DC60
_080098A4: .4byte 0x05000300
_080098A8: .4byte 0x80000010
_080098AC: .4byte gOamObjects
_080098B0: .4byte 0x000084FC
_080098B4:
	ldrb r0, [r5, #0x19]
	adds r0, #1
	strb r0, [r5, #0x19]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080098E2
	strb r1, [r5, #0x19]
	ldrb r0, [r5, #0x18]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r5, #0x18]
	ldr r1, _0800991C @ =0x040000D4
	lsls r0, r0, #5
	ldr r2, _08009920 @ =gUnknown_0814DC60
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _08009924 @ =0x05000300
	str r0, [r1, #4]
	ldr r0, _08009928 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080098E2:
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	ldrh r1, [r6]
	orrs r0, r1
	strh r0, [r6]
	ldr r1, _0800992C @ =gOamObjects
	ldrh r2, [r5, #2]
	movs r3, #0xb0
	lsls r3, r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	ldrh r5, [r5]
	movs r0, #0x80
	lsls r0, r0, #7
	adds r2, r5, r0
	adds r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	movs r0, #0xb1
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, _08009930 @ =0x000084FC
	strh r0, [r1]
	movs r0, #1
_08009914:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800991C: .4byte 0x040000D4
_08009920: .4byte gUnknown_0814DC60
_08009924: .4byte 0x05000300
_08009928: .4byte 0x80000010
_0800992C: .4byte gOamObjects
_08009930: .4byte 0x000084FC

	thumb_func_start sub_8009934
sub_8009934: @ 0x08009934
	push {r4, r5, lr}
	movs r4, #0
	ldr r3, _08009990 @ =0x040000D4
	ldr r5, _08009994 @ =gUnknown_08022CA0
	ldr r2, _08009998 @ =gMapMarker
_0800993E:
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _08009982
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	str r1, [r3]
	ldr r1, [r2, #0x10]
	str r1, [r3, #4]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r0, #4
	ldrb r1, [r2, #5]
	ands r0, r1
	cmp r0, #0
	bne _08009982
	ldrh r0, [r2, #0xe]
	lsls r1, r0, #3
	ldr r0, _0800999C @ =gOamObjects
	adds r1, r1, r0
	ldrh r0, [r2, #8]
	strh r0, [r1]
	ldrh r0, [r2, #0xa]
	strh r0, [r1, #2]
	ldrh r0, [r2, #0xc]
	strh r0, [r1, #4]
_08009982:
	adds r2, #0x14
	adds r4, #1
	cmp r4, #7
	bls _0800993E
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08009990: .4byte 0x040000D4
_08009994: .4byte gUnknown_08022CA0
_08009998: .4byte gMapMarker
_0800999C: .4byte gOamObjects

	thumb_func_start sub_80099A0
sub_80099A0: @ 0x080099A0
	adds r3, r0, #0
	movs r1, #0
	ldr r2, _080099B8 @ =gMapMarker
_080099A6:
	ldrb r0, [r2]
	cmp r0, r3
	beq _080099BC
	adds r2, #0x14
	adds r1, #1
	cmp r1, #7
	bls _080099A6
	movs r0, #0xff
	b _080099BE
	.align 2, 0
_080099B8: .4byte gMapMarker
_080099BC:
	adds r0, r1, #0
_080099BE:
	bx lr

	thumb_func_start Command40
Command40: @ 0x080099C0
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	ldr r1, _080099E0 @ =0x0000FBFF
	ldrh r2, [r0]
	ands r1, r2
	strh r1, [r0]
	ldr r0, _080099E4 @ =gOamObjects
	movs r1, #0xb0
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r1, #0xc0
	strh r1, [r0]
	movs r0, #0
	bx lr
	.align 2, 0
_080099E0: .4byte 0x0000FBFF
_080099E4: .4byte gOamObjects

	thumb_func_start Command41
Command41: @ 0x080099E8
	push {r4, r5, r6, r7, lr}
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	ldr r1, _08009A40 @ =gOamObjects+0x1A0
	movs r4, #0
	ldr r5, _08009A44 @ =gInvestigation
	ldr r7, _08009A48 @ =0x000040E0
	movs r3, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r6, r0, #0
	movs r2, #0xa2
	lsls r2, r2, #7
_08009A04:
	strh r7, [r1]
	adds r0, r3, r6
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	adds r1, #8
	adds r3, #0x3c
	adds r2, #0x20
	adds r4, #1
	cmp r4, #3
	bls _08009A04
	movs r4, #0
	adds r0, r5, #0
	movs r1, #0xf
	bl sub_800EB24
	movs r0, #0xe0
	strb r0, [r5, #0xf]
	strb r4, [r5, #0x10]
	movs r0, #8
	strb r0, [r5, #0x11]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xd]
	ldr r1, _08009A4C @ =gMain+0x8
	adds r0, #0xfc
	str r0, [r1]
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08009A40: .4byte gOamObjects+0x1A0
_08009A44: .4byte gInvestigation
_08009A48: .4byte 0x000040E0
_08009A4C: .4byte gMain+0x8

	thumb_func_start Command42
Command42: @ 0x08009A50
	adds r3, r0, #0
	ldr r0, [r3, #4]
	adds r1, r0, #2
	str r1, [r3, #4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _08009A74
	ldr r0, _08009A70 @ =gMain
	movs r1, #0x95
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	b _08009A82
	.align 2, 0
_08009A70: .4byte gMain
_08009A74:
	ldr r0, _08009A90 @ =gMain
	movs r1, #0x95
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #4
	orrs r1, r2
_08009A82:
	str r1, [r0]
	ldr r0, [r3, #4]
	adds r0, #2
	str r0, [r3, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_08009A90: .4byte gMain

	thumb_func_start Command43
Command43: @ 0x08009A94
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _08009AAC
	movs r0, #1
	bl sub_8017928
	b _08009AB2
_08009AAC:
	movs r0, #2
	bl sub_8017928
_08009AB2:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start Command44
Command44: @ 0x08009AC0
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r5, _08009B04 @ =gOamObjects+0x188
	ldr r1, [r3, #4]
	adds r0, r1, #2
	str r0, [r3, #4]
	ldr r4, _08009B08 @ =gMain
	adds r2, r4, #0
	adds r2, #0x92
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _08009B28
	ldr r1, _08009B0C @ =0x040000D4
	ldr r0, _08009B10 @ =gUnknown_081438DC
	str r0, [r1]
	ldr r0, _08009B14 @ =0x06013400
	str r0, [r1, #4]
	ldr r0, _08009B18 @ =0x80000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08009B1C @ =gUnknown_0814DEC0
	str r0, [r1]
	ldr r0, _08009B20 @ =0x050002A0
	str r0, [r1, #4]
	ldr r0, _08009B24 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #9
	b _08009B54
	.align 2, 0
_08009B04: .4byte gOamObjects+0x188
_08009B08: .4byte gMain
_08009B0C: .4byte 0x040000D4
_08009B10: .4byte gUnknown_081438DC
_08009B14: .4byte 0x06013400
_08009B18: .4byte 0x80000800
_08009B1C: .4byte gUnknown_0814DEC0
_08009B20: .4byte 0x050002A0
_08009B24: .4byte 0x80000010
_08009B28:
	ldr r1, _08009B78 @ =0x040000D4
	ldr r0, _08009B7C @ =gUnknown_081430DC
	str r0, [r1]
	ldr r0, _08009B80 @ =0x06013400
	str r0, [r1, #4]
	ldr r2, _08009B84 @ =0x80000400
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08009B88 @ =gUnknown_081440DC
	str r0, [r1]
	ldr r0, _08009B8C @ =0x06013C00
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08009B90 @ =gUnknown_0814DEE0
	str r0, [r1]
	ldr r0, _08009B94 @ =0x050002A0
	str r0, [r1, #4]
	ldr r0, _08009B98 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08009B9C @ =0x01000009
_08009B54:
	str r0, [r4, #8]
	ldr r0, [r3, #4]
	adds r0, #2
	str r0, [r3, #4]
	ldr r0, _08009BA0 @ =0x000003EF
	strh r0, [r5]
	ldr r0, _08009BA4 @ =0x0000C1EF
	strh r0, [r5, #2]
	ldr r0, _08009BA8 @ =0x000051A0
	strh r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #8]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08009B78: .4byte 0x040000D4
_08009B7C: .4byte gUnknown_081430DC
_08009B80: .4byte 0x06013400
_08009B84: .4byte 0x80000400
_08009B88: .4byte gUnknown_081440DC
_08009B8C: .4byte 0x06013C00
_08009B90: .4byte gUnknown_0814DEE0
_08009B94: .4byte 0x050002A0
_08009B98: .4byte 0x80000010
_08009B9C: .4byte 0x01000009
_08009BA0: .4byte 0x000003EF
_08009BA4: .4byte 0x0000C1EF
_08009BA8: .4byte 0x000051A0

	thumb_func_start Command46
Command46: @ 0x08009BAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	ldr r0, [r0, #4]
	ldrh r1, [r0, #2]
	mov r8, r1
	adds r0, #4
	mov r2, sb
	str r0, [r2, #4]
	movs r3, #0xf
	ands r3, r1
	cmp r3, #1
	beq _08009BF4
	cmp r3, #1
	ble _08009BD4
	cmp r3, #2
	beq _08009C14
_08009BD4:
	ldr r2, _08009BE8 @ =gMain
	adds r1, r2, #0
	adds r1, #0x44
	movs r0, #0xe
	strb r0, [r1]
	ldr r0, _08009BEC @ =gUnknown_08263FD4
	mov sl, r0
	ldr r5, _08009BF0 @ =gUnknown_08263FF4
	b _08009C24
	.align 2, 0
_08009BE8: .4byte gMain
_08009BEC: .4byte gUnknown_08263FD4
_08009BF0: .4byte gUnknown_08263FF4
_08009BF4:
	ldr r2, _08009C08 @ =gMain
	adds r1, r2, #0
	adds r1, #0x44
	movs r0, #0xf2
	strb r0, [r1]
	ldr r1, _08009C0C @ =gUnknown_08265CC4
	mov sl, r1
	ldr r5, _08009C10 @ =gUnknown_08265CE4
	b _08009C24
	.align 2, 0
_08009C08: .4byte gMain
_08009C0C: .4byte gUnknown_08265CC4
_08009C10: .4byte gUnknown_08265CE4
_08009C14:
	ldr r2, _08009C44 @ =gMain
	adds r1, r2, #0
	adds r1, #0x44
	movs r0, #0xf2
	strb r0, [r1]
	ldr r0, _08009C48 @ =gUnknown_08277A98
	mov sl, r0
	ldr r5, _08009C4C @ =gUnknown_08277AB8
_08009C24:
	movs r6, #0
	movs r0, #0x10
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08009C6E
	adds r0, r2, #0
	adds r0, #0x44
	strb r6, [r0]
	cmp r3, #1
	beq _08009C5A
	cmp r3, #1
	bgt _08009C50
	cmp r3, #0
	beq _08009C56
	b _08009C5E
	.align 2, 0
_08009C44: .4byte gMain
_08009C48: .4byte gUnknown_08277A98
_08009C4C: .4byte gUnknown_08277AB8
_08009C50:
	cmp r3, #2
	beq _08009C5A
	b _08009C5E
_08009C56:
	movs r6, #0x30
	b _08009C5E
_08009C5A:
	movs r6, #0x28
	rsbs r6, r6, #0
_08009C5E:
	ldr r0, _08009D18 @ =gAnimation+0x44
	movs r2, #0x10
	ldrsh r1, [r0, r2]
	subs r1, r1, r6
	movs r3, #0x12
	ldrsh r2, [r0, r3]
	bl SetAnimationOriginCoords
_08009C6E:
	ldr r0, _08009D1C @ =gIORegisters
	mov ip, r0
	ldr r2, _08009D20 @ =0x0000E080
	ldr r1, _08009D24 @ =gBG2MapBuffer
	movs r0, #0x80
	lsls r0, r0, #3
_08009C7A:
	strh r2, [r1]
	adds r1, #2
	subs r0, #1
	cmp r0, #0
	bne _08009C7A
	movs r0, #0
	ldr r7, _08009D24 @ =gBG2MapBuffer
_08009C88:
	movs r2, #0
	adds r4, r0, #1
	lsls r3, r0, #5
_08009C8E:
	adds r0, r6, #0
	cmp r0, #0
	bge _08009C96
	adds r0, #7
_08009C96:
	asrs r0, r0, #3
	subs r0, r2, r0
	cmp r0, #0x1e
	bhi _08009CAC
	adds r0, #1
	adds r0, r3, r0
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r1, [r5]
	adds r1, #0x80
	strh r1, [r0]
_08009CAC:
	adds r2, #1
	adds r5, #2
	cmp r2, #0x1d
	ble _08009C8E
	adds r0, r4, #0
	cmp r0, #0x13
	ble _08009C88
	movs r1, #0x9a
	lsls r1, r1, #3
	add sl, r1
	ldr r1, _08009D28 @ =0x040000D4
	mov r2, sl
	str r2, [r1]
	ldr r0, _08009D2C @ =gUnknown_0203B500
	str r0, [r1, #4]
	ldr r0, _08009D30 @ =0x80002580
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r1, ip
	adds r1, #0x4a
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	movs r2, #0
	ldrh r3, [r1]
	orrs r0, r3
	strh r0, [r1]
	ldr r0, _08009D34 @ =0x00001E0A
	mov r3, ip
	strh r0, [r3, #4]
	movs r0, #0x20
	mov r3, r8
	ands r3, r0
	cmp r3, #0
	beq _08009CFA
	ldr r0, _08009D38 @ =0x0000F7FF
	ldrh r3, [r1]
	ands r0, r3
	strh r0, [r1]
_08009CFA:
	movs r0, #0x40
	mov r1, sb
	ldrh r1, [r1]
	orrs r0, r1
	mov r2, sb
	strh r0, [r2]
	movs r0, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08009D18: .4byte gAnimation+0x44
_08009D1C: .4byte gIORegisters
_08009D20: .4byte 0x0000E080
_08009D24: .4byte gBG2MapBuffer
_08009D28: .4byte 0x040000D4
_08009D2C: .4byte gUnknown_0203B500
_08009D30: .4byte 0x80002580
_08009D34: .4byte 0x00001E0A
_08009D38: .4byte 0x0000F7FF

	thumb_func_start Command47
Command47: @ 0x08009D3C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r2, r0, #2
	ldrh r0, [r0, #2]
	adds r1, r2, #2
	str r1, [r4, #4]
	ldrh r1, [r2, #2]
	bl SetBGMVolume
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Command48
Command48: @ 0x08009D60
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r4, [r2, #4]
	adds r3, r4, #2
	str r3, [r2, #4]
	ldr r0, _08009D90 @ =0x0000FFFF
	ldrh r1, [r4, #2]
	cmp r1, r0
	bne _08009D98
	ldr r0, _08009D94 @ =gIORegisters
	adds r0, #0x4a
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	ldrh r5, [r0]
	orrs r1, r5
	strh r1, [r0]
	movs r0, #9
	strh r0, [r2, #0x18]
	movs r0, #0x74
	strh r0, [r2, #0x1a]
	adds r0, r4, #6
	b _08009DAE
	.align 2, 0
_08009D90: .4byte 0x0000FFFF
_08009D94: .4byte gIORegisters
_08009D98:
	ldr r1, _08009DB8 @ =gIORegisters
	adds r1, #0x4a
	ldr r0, _08009DBC @ =0x0000FDFF
	ldrh r5, [r1]
	ands r0, r5
	strh r0, [r1]
	ldrh r0, [r4, #2]
	strh r0, [r2, #0x18]
	ldrh r0, [r3, #2]
	strh r0, [r2, #0x1a]
	adds r0, r3, #4
_08009DAE:
	str r0, [r2, #4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08009DB8: .4byte gIORegisters
_08009DBC: .4byte 0x0000FDFF

	thumb_func_start Command49
Command49: @ 0x08009DC0
	push {r4, lr}
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	ldr r4, _08009DF0 @ =gMain
	movs r0, #0
	strb r0, [r4, #0x18]
	strb r0, [r4, #0x19]
	bl sub_800AECC
	ldr r0, _08009DF4 @ =gSaveDataBuffer
	adds r0, #0xe8
	movs r1, #0x80
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
	bl sub_800AE84
	movs r0, #1
	str r0, [r4, #8]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08009DF0: .4byte gMain
_08009DF4: .4byte gSaveDataBuffer

	thumb_func_start Command4A
Command4A: @ 0x08009DF8
	adds r1, r0, #0
	ldr r0, [r1, #4]
	adds r2, r0, #2
	str r2, [r1, #4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _08009E14
	ldr r0, _08009E10 @ =gMain
	ldrb r0, [r0, #9]
	cmp r0, #8
	bne _08009E28
	b _08009E1C
	.align 2, 0
_08009E10: .4byte gMain
_08009E14:
	ldr r0, _08009E24 @ =gMain
	ldrb r0, [r0, #9]
	cmp r0, #6
	bne _08009E28
_08009E1C:
	adds r0, r2, #2
	str r0, [r1, #4]
	movs r0, #0
	b _08009E30
	.align 2, 0
_08009E24: .4byte gMain
_08009E28:
	ldr r0, [r1, #4]
	subs r0, #2
	str r0, [r1, #4]
	movs r0, #1
_08009E30:
	bx lr
	.align 2, 0

	thumb_func_start Command4B
Command4B: @ 0x08009E34
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	lsrs r0, r0, #8
	bl sub_80099A0
	adds r3, r0, #0
	cmp r3, #0xff
	beq _08009E6A
	ldr r0, [r4, #4]
	movs r2, #3
	ldrh r0, [r0]
	ands r2, r0
	lsls r2, r2, #0xc
	ldr r0, _08009E88 @ =gMapMarker
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, _08009E8C @ =0x0000CFFF
	ldrh r5, [r1, #0xa]
	ands r0, r5
	adds r0, r0, r2
	strh r0, [r1, #0xa]
_08009E6A:
	ldr r1, _08009E88 @ =gMapMarker
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0, #2]
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08009E88: .4byte gMapMarker
_08009E8C: .4byte 0x0000CFFF

	thumb_func_start Command4C
Command4C: @ 0x08009E90
	adds r1, r0, #0
	ldr r0, _08009EA8 @ =gMain
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	bne _08009EAC
	ldr r0, [r1, #4]
	adds r0, #2
	str r0, [r1, #4]
	movs r0, #0
	b _08009EAE
	.align 2, 0
_08009EA8: .4byte gMain
_08009EAC:
	movs r0, #1
_08009EAE:
	bx lr

	thumb_func_start Command4D
Command4D: @ 0x08009EB0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	adds r2, r1, #2
	ldr r3, _08009EDC @ =gMain
	ldrh r0, [r3, #0x2e]
	strh r0, [r3, #0x32]
	ldrh r0, [r1, #2]
	strh r0, [r3, #0x2e]
	adds r0, r3, #0
	adds r0, #0x34
	movs r1, #1
	strb r1, [r0]
	adds r0, r2, #2
	str r0, [r4, #4]
	ldrh r0, [r2, #2]
	cmp r0, #0
	bne _08009EE0
	adds r0, r3, #0
	adds r0, #0x35
	strb r1, [r0]
	b _08009EE8
	.align 2, 0
_08009EDC: .4byte gMain
_08009EE0:
	adds r1, r3, #0
	adds r1, #0x35
	movs r0, #0
	strb r0, [r1]
_08009EE8:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Command4E
Command4E: @ 0x08009EF8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08009F20 @ =gMain
	adds r1, r0, #0
	adds r1, #0x7e
	ldrh r1, [r1]
	adds r3, r0, #0
	cmp r1, #0
	bne _08009F24
	ldrb r0, [r4, #0x13]
	cmp r0, #1
	bls _08009F24
	ldr r0, [r4, #4]
	ldrh r1, [r0, #2]
	strh r1, [r4, #2]
	adds r0, #4
	str r0, [r4, #4]
	movs r0, #0
	b _08009F72
	.align 2, 0
_08009F20: .4byte gMain
_08009F24:
	ldrh r2, [r4, #2]
	cmp r2, #0
	beq _08009F68
	ldr r0, _08009F64 @ =gAnimation
	adds r5, r0, #0
	adds r5, #0x52
	ldrh r1, [r4, #0x30]
	ldrb r2, [r5]
	cmp r1, r2
	beq _08009F48
	adds r0, #0x44
	adds r1, r3, #0
	adds r1, #0xb8
	ldrh r1, [r1]
	bl SetAnimationFrameOffset
	ldrb r0, [r5]
	strh r0, [r4, #0x30]
_08009F48:
	ldrh r0, [r4, #2]
	subs r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08009F70
	ldr r0, [r4, #4]
	adds r0, #4
	str r0, [r4, #4]
	strh r1, [r4, #0x30]
	movs r0, #0
	b _08009F72
	.align 2, 0
_08009F64: .4byte gAnimation
_08009F68:
	ldr r1, [r4, #4]
	ldrh r0, [r1, #2]
	strh r0, [r4, #2]
	strh r2, [r4, #0x30]
_08009F70:
	movs r0, #1
_08009F72:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start Command4F
Command4F: @ 0x08009F78
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, [r4, #4]
	adds r3, r2, #2
	ldr r5, _0800A014 @ =gMain
	ldrh r1, [r2, #2]
	movs r6, #0x91
	lsls r6, r6, #2
	adds r0, r5, r6
	strb r1, [r0]
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r6, #0xa0
	adds r1, r5, r6
	adds r5, r0, r1
	ldrh r6, [r2, #2]
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #1
	orrs r1, r2
	str r1, [r0]
	adds r0, r3, #2
	str r0, [r4, #4]
	ldrh r0, [r3, #2]
	ldr r2, _0800A018 @ =0x0000FFFF
	cmp r0, r2
	beq _08009FBE
	strb r0, [r5, #9]
	strb r0, [r5, #8]
_08009FBE:
	ldr r1, [r4, #4]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r0, [r1, #2]
	cmp r0, r2
	beq _08009FCC
	strh r0, [r5, #6]
_08009FCC:
	ldr r1, [r4, #4]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r0, [r1, #2]
	cmp r0, r2
	beq _08009FDA
	strh r0, [r5, #4]
_08009FDA:
	ldr r1, [r4, #4]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r0, [r1, #2]
	cmp r0, r2
	beq _08009FE8
	strh r0, [r5, #0xa]
_08009FE8:
	ldr r1, [r4, #4]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r0, [r1, #2]
	cmp r0, r2
	beq _08009FF6
	strh r0, [r5, #0xc]
_08009FF6:
	ldr r1, [r4, #4]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r0, [r1, #2]
	cmp r0, r2
	beq _0800A004
	strh r0, [r5, #0x12]
_0800A004:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800A014: .4byte gMain
_0800A018: .4byte 0x0000FFFF

	thumb_func_start Command50
Command50: @ 0x0800A01C
	push {r4, lr}
	sub sp, #4
	ldr r4, [r0, #4]
	ldrh r2, [r4, #2]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #3
	ldr r2, _0800A050 @ =gMain+0x1A4
	adds r1, r1, r2
	mov r3, sp
	movs r2, #0
	strh r2, [r3]
	ldr r2, _0800A054 @ =0x040000D4
	str r3, [r2]
	str r1, [r2, #4]
	ldr r1, _0800A058 @ =0x81000014
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	adds r4, #4
	str r4, [r0, #4]
	movs r0, #0
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800A050: .4byte gMain+0x1A4
_0800A054: .4byte 0x040000D4
_0800A058: .4byte 0x81000014

	thumb_func_start Command51
Command51: @ 0x0800A05C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r2, r0, #2
	ldrh r0, [r0, #2]
	adds r1, r2, #2
	str r1, [r4, #4]
	ldrh r1, [r2, #2]
	bl sub_800EAC8
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Command52
Command52: @ 0x0800A080
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldr r0, _0800A0B0 @ =gMain
	ldr r2, _0800A0B4 @ =0x0000024A
	adds r0, r0, r2
	ldrb r2, [r0]
	ldrh r1, [r1, #2]
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0]
	movs r0, #1
	bl sub_8016E10
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800A0B0: .4byte gMain
_0800A0B4: .4byte 0x0000024A

	thumb_func_start Command53
Command53: @ 0x0800A0B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800A0DC @ =gMain
	ldr r1, _0800A0E0 @ =0x0000024A
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #2
	bl sub_8016E10
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800A0DC: .4byte gMain
_0800A0E0: .4byte 0x0000024A

	thumb_func_start Command54
Command54: @ 0x0800A0E4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r2, sp
	movs r3, #1
_0800A0EE:
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	strh r0, [r2]
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bge _0800A0EE
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #1
	beq _0800A122
	cmp r0, #1
	bgt _0800A112
	cmp r0, #0
	beq _0800A118
	b _0800A13A
_0800A112:
	cmp r0, #2
	beq _0800A130
	b _0800A13A
_0800A118:
	mov r0, sp
	ldrh r0, [r0, #2]
	bl sub_8017928
	b _0800A13A
_0800A122:
	ldr r0, _0800A12C @ =gMain
	mov r1, sp
	ldrh r1, [r1, #2]
	adds r0, #0xa6
	b _0800A138
	.align 2, 0
_0800A12C: .4byte gMain
_0800A130:
	ldr r0, _0800A14C @ =gMain
	mov r1, sp
	ldrh r1, [r1, #2]
	adds r0, #0x9c
_0800A138:
	strh r1, [r0]
_0800A13A:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #1
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800A14C: .4byte gMain

	thumb_func_start Command55
Command55: @ 0x0800A150
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start Command56
Command56: @ 0x0800A15C
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start Command57
Command57: @ 0x0800A168
	push {r4, r5, lr}
	ldr r4, [r0, #4]
	ldr r1, _0800A194 @ =gMain
	ldrh r3, [r4, #2]
	movs r5, #0x91
	lsls r5, r5, #2
	adds r2, r1, r5
	strb r3, [r2]
	ldr r2, [r1, #8]
	str r2, [r1, #0xc]
	ldr r2, _0800A198 @ =0x00090A04
	str r2, [r1, #8]
	ldr r2, _0800A19C @ =0x0000024B
	adds r1, r1, r2
	movs r2, #1
	strb r2, [r1]
	adds r4, #4
	str r4, [r0, #4]
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800A194: .4byte gMain
_0800A198: .4byte 0x00090A04
_0800A19C: .4byte 0x0000024B

	thumb_func_start Command58
Command58: @ 0x0800A1A0
	push {lr}
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	bl sub_8016D40
	ldr r0, _0800A1BC @ =gMain
	ldr r1, _0800A1C0 @ =0x0000024B
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_0800A1BC: .4byte gMain
_0800A1C0: .4byte 0x0000024B

	thumb_func_start Command59
Command59: @ 0x0800A1C4
	push {r4, r5, lr}
	ldr r5, [r0, #4]
	adds r1, r5, #2
	str r1, [r0, #4]
	ldr r1, _0800A1FC @ =gMain
	ldr r2, _0800A200 @ =0x00000286
	adds r4, r1, r2
	ldrh r3, [r4]
	lsls r2, r3, #1
	ldr r3, _0800A204 @ =0x00000276
	adds r1, r1, r3
	adds r2, r2, r1
	ldr r3, _0800A208 @ =gUnknown_03003B70
	ldrh r5, [r5, #2]
	lsls r1, r5, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r2]
	ldrh r1, [r4]
	adds r1, #1
	strh r1, [r4]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800A1FC: .4byte gMain
_0800A200: .4byte 0x00000286
_0800A204: .4byte 0x00000276
_0800A208: .4byte gUnknown_03003B70

	thumb_func_start Command5A
Command5A: @ 0x0800A20C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #4]
	adds r0, #2
	str r0, [r7, #4]
	movs r1, #0
	ldr r0, _0800A2DC @ =gMain
	ldr r3, _0800A2E0 @ =0x00000286
	adds r2, r0, r3
	mov sb, r0
	ldrh r6, [r2]
	cmp r1, r6
	bhs _0800A25E
	ldr r0, _0800A2E4 @ =0x00000276
	add r0, sb
	mov r8, r0
	ldr r5, _0800A2E8 @ =gUnknown_03003B70
	adds r4, r2, #0
	movs r3, #0
_0800A23A:
	lsls r0, r1, #1
	mov r6, r8
	adds r2, r0, r6
	ldr r0, [r7, #4]
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r6, [r2]
	ldrh r0, [r0]
	cmp r6, r0
	bne _0800A252
	strh r3, [r2]
_0800A252:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r4]
	cmp r1, r0
	blo _0800A23A
_0800A25E:
	movs r1, #0
	ldr r0, _0800A2E0 @ =0x00000286
	add r0, sb
	ldrh r2, [r0]
	cmp r1, r2
	bhs _0800A2BC
	ldr r3, _0800A2E4 @ =0x00000276
	add r3, sb
	mov r8, r3
	mov ip, r0
	mov sl, ip
_0800A274:
	lsls r0, r1, #1
	add r0, r8
	ldrh r0, [r0]
	adds r5, r1, #1
	cmp r0, #0
	bne _0800A2B0
	lsls r0, r5, #0x10
	lsrs r2, r0, #0x10
	adds r3, r1, #0
	mov r6, ip
	ldrh r6, [r6]
	cmp r2, r6
	bhs _0800A2B0
	ldr r4, _0800A2EC @ =gMain+0x276
	mov r6, sl
_0800A292:
	lsls r1, r3, #1
	adds r1, r1, r4
	lsls r0, r2, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r6]
	cmp r2, r0
	blo _0800A292
_0800A2B0:
	lsls r0, r5, #0x10
	lsrs r1, r0, #0x10
	mov r2, ip
	ldrh r2, [r2]
	cmp r1, r2
	blo _0800A274
_0800A2BC:
	ldr r1, _0800A2E0 @ =0x00000286
	add r1, sb
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	ldr r0, [r7, #4]
	adds r0, #2
	str r0, [r7, #4]
	movs r0, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800A2DC: .4byte gMain
_0800A2E0: .4byte 0x00000286
_0800A2E4: .4byte 0x00000276
_0800A2E8: .4byte gUnknown_03003B70
_0800A2EC: .4byte gMain+0x276

	thumb_func_start Command5B
Command5B: @ 0x0800A2F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r2, r0, #2
	ldrh r0, [r0, #2]
	adds r1, r2, #2
	str r1, [r4, #4]
	ldrh r1, [r2, #2]
	bl sub_8011088
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Command5C
Command5C: @ 0x0800A314
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	ldrh r0, [r0, #2]
	adds r3, r1, #2
	ldrh r1, [r1, #2]
	adds r2, r3, #2
	str r2, [r4, #4]
	ldrh r2, [r3, #2]
	bl sub_8000E78
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Command5D
Command5D: @ 0x0800A33C
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start Command5E
Command5E: @ 0x0800A348
	ldr r1, [r0, #4]
	adds r1, #4
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start Command5F
Command5F: @ 0x0800A354
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	ldrh r0, [r0, #2]
	adds r3, r1, #2
	ldrh r1, [r1, #2]
	adds r2, r3, #2
	str r2, [r4, #4]
	ldrh r2, [r3, #2]
	bl sub_8000EB4
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Command60
Command60: @ 0x0800A37C
	push {r4, lr}
	ldr r1, [r0, #4]
	adds r3, r1, #2
	ldrh r4, [r1, #2]
	lsls r2, r4, #2
	adds r2, r2, r4
	lsls r2, r2, #3
	ldr r1, _0800A3BC @ =gMain+0x1A4
	adds r2, r2, r1
	adds r1, r3, #2
	str r1, [r0, #4]
	ldrh r1, [r3, #2]
	strb r1, [r2, #0x1c]
	ldr r3, [r0, #4]
	adds r1, r3, #2
	str r1, [r0, #4]
	ldrh r1, [r3, #2]
	strh r1, [r2, #0x20]
	ldr r3, [r0, #4]
	adds r1, r3, #2
	str r1, [r0, #4]
	ldrh r1, [r3, #2]
	strh r1, [r2, #0x10]
	movs r1, #1
	str r1, [r2, #0x18]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800A3BC: .4byte gMain+0x1A4

	thumb_func_start Command61
Command61: @ 0x0800A3C0
	push {r4, lr}
	ldr r2, [r0, #4]
	adds r3, r2, #2
	ldrh r4, [r2, #2]
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #3
	ldr r2, _0800A410 @ =gMain+0x1A4
	adds r1, r1, r2
	mov ip, r1
	adds r1, r3, #2
	str r1, [r0, #4]
	mov r1, ip
	adds r1, #0x1c
	mov r4, ip
	ldr r2, [r4, #0x18]
	adds r1, r1, r2
	ldrh r2, [r3, #2]
	strb r2, [r1]
	ldr r3, [r0, #4]
	adds r1, r3, #2
	str r1, [r0, #4]
	ldr r1, [r4, #0x18]
	lsls r1, r1, #1
	mov r2, ip
	adds r2, #0x20
	adds r2, r2, r1
	ldrh r1, [r3, #2]
	strh r1, [r2]
	ldr r1, [r4, #0x18]
	adds r1, #1
	str r1, [r4, #0x18]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800A410: .4byte gMain+0x1A4

	thumb_func_start Command62
Command62: @ 0x0800A414
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80161F4
	bl sub_801622C
	ldr r0, _0800A43C @ =gMain
	movs r1, #0
	strh r1, [r0, #0x2e]
	ldr r1, _0800A440 @ =0x0000024B
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0]
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800A43C: .4byte gMain
_0800A440: .4byte 0x0000024B

	thumb_func_start Command63
Command63: @ 0x0800A444
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8016204
	bl sub_801622C
	ldr r0, _0800A468 @ =gMain
	ldr r1, _0800A46C @ =0x0000024B
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800A468: .4byte gMain
_0800A46C: .4byte 0x0000024B

	thumb_func_start Command64
Command64: @ 0x0800A470
	push {r4, lr}
	ldr r2, [r0, #4]
	ldr r1, _0800A48C @ =gMain+0x1A4
	ldr r4, _0800A490 @ =0xFFFFFE64
	adds r3, r1, r4
	ldr r1, _0800A494 @ =0x00040A04
	str r1, [r3]
	adds r2, #4
	str r2, [r0, #4]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800A48C: .4byte gMain+0x1A4
_0800A490: .4byte 0xFFFFFE64
_0800A494: .4byte 0x00040A04

	thumb_func_start Command65
Command65: @ 0x0800A498
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r6, #4]
	adds r1, r0, #2
	ldrh r4, [r0, #2]
	adds r7, r4, #0
	adds r0, r1, #2
	str r0, [r6, #4]
	ldrh r5, [r1, #2]
	ldr r2, _0800A4CC @ =gMain
	lsls r1, r4, #4
	movs r3, #0xf
	adds r0, r5, #0
	ands r0, r3
	orrs r1, r0
	ldr r0, _0800A4D0 @ =0x000002BE
	adds r2, r2, r0
	strb r1, [r2]
	cmp r4, #1
	beq _0800A4FA
	cmp r4, #1
	bgt _0800A4D4
	cmp r4, #0
	beq _0800A4DA
	b _0800A538
	.align 2, 0
_0800A4CC: .4byte gMain
_0800A4D0: .4byte 0x000002BE
_0800A4D4:
	cmp r7, #2
	beq _0800A51A
	b _0800A538
_0800A4DA:
	cmp r5, #1
	bne _0800A4EE
	bl sub_800E7B0
	movs r0, #0x18
	movs r1, #0x80
	movs r2, #1
	bl sub_800E7EC
	b _0800A538
_0800A4EE:
	movs r0, #0x18
	movs r1, #0x80
	movs r2, #0
	bl sub_800E7EC
	b _0800A538
_0800A4FA:
	cmp r5, #1
	bne _0800A50E
	bl sub_800E8C4
	movs r0, #0
	movs r1, #0x80
	movs r2, #1
	bl sub_800E900
	b _0800A538
_0800A50E:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_800E900
	b _0800A538
_0800A51A:
	cmp r5, #1
	bne _0800A52E
	bl sub_800E8C4
	movs r0, #0x20
	movs r1, #0x80
	movs r2, #1
	bl sub_800E9D4
	b _0800A538
_0800A52E:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_800E900
_0800A538:
	ldr r0, [r6, #4]
	adds r0, #2
	str r0, [r6, #4]
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Command66
Command66: @ 0x0800A548
	ldr r1, [r0, #4]
	adds r3, r1, #2
	ldr r2, _0800A588 @ =gMain
	mov ip, r2
	ldrh r2, [r1, #2]
	movs r1, #0x91
	lsls r1, r1, #2
	add r1, ip
	strb r2, [r1]
	movs r2, #0
	ldrsb r2, [r1, r2]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #3
	movs r2, #0xd2
	lsls r2, r2, #1
	add r2, ip
	adds r1, r1, r2
	adds r2, r3, #2
	str r2, [r0, #4]
	ldrh r2, [r3, #2]
	strh r2, [r1, #0x14]
	ldr r3, [r0, #4]
	adds r2, r3, #2
	str r2, [r0, #4]
	ldrh r2, [r3, #2]
	strh r2, [r1, #0x16]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_0800A588: .4byte gMain

	thumb_func_start Command67
Command67: @ 0x0800A58C
	push {lr}
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	bl LoadCurrentScriptIntoRam
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Command68
Command68: @ 0x0800A5A0
	ldr r3, _0800A5B8 @ =gAnimation
	ldr r1, [r3, #0x44]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	str r1, [r3, #0x44]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_0800A5B8: .4byte gAnimation

	thumb_func_start Command69
Command69: @ 0x0800A5BC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0800A5D4 @ =gInvestigation
	ldrh r1, [r4]
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _0800A5D8
	bl sub_801816C
	movs r0, #1
	b _0800A600
	.align 2, 0
_0800A5D4: .4byte gInvestigation
_0800A5D8:
	cmp r0, #0
	blt _0800A5F4
	bl sub_8018138
	ldrh r0, [r4]
	cmp r0, #0x20
	bls _0800A5EA
	movs r0, #1
	b _0800A600
_0800A5EA:
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r4]
	movs r0, #1
	b _0800A600
_0800A5F4:
	bl sub_801823C
	ldr r0, [r5, #4]
	adds r0, #2
	str r0, [r5, #4]
	movs r0, #0
_0800A600:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Command6A
Command6A: @ 0x0800A608
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r0, [r1, #2]
	cmp r0, #1
	bne _0800A61E
	bl sub_80180B4
	b _0800A626
_0800A61E:
	cmp r0, #0
	bne _0800A626
	bl sub_80180F8
_0800A626:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start Command6B
Command6B: @ 0x0800A634
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8017F2C
	ldr r0, [r4, #4]
	adds r0, #4
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Command6C
Command6C: @ 0x0800A64C
	ldr r3, _0800A680 @ =gCourtRecord
	movs r1, #0
	strb r1, [r3, #1]
	movs r2, #0
	movs r1, #0x88
	lsls r1, r1, #1
	strh r1, [r3, #4]
	strb r2, [r3, #3]
	movs r1, #0xfb
	ldrb r2, [r3, #0xc]
	ands r1, r2
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r3, #0xc]
	ldr r2, _0800A684 @ =gMain+0xC
	subs r3, r2, #4
	ldr r1, [r3]
	str r1, [r2]
	ldr r1, _0800A688 @ =0x00000707
	str r1, [r3]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_0800A680: .4byte gCourtRecord
_0800A684: .4byte gMain+0xC
_0800A688: .4byte 0x00000707

	thumb_func_start Command6D
Command6D: @ 0x0800A68C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r0, [r1, #2]
	cmp r0, #1
	beq _0800A6B2
	cmp r0, #1
	bgt _0800A6A6
	cmp r0, #0
	beq _0800A6AC
	b _0800A6BC
_0800A6A6:
	cmp r0, #2
	beq _0800A6B8
	b _0800A6BC
_0800A6AC:
	bl sub_8018690
	b _0800A6BC
_0800A6B2:
	bl sub_8018720
	b _0800A6BC
_0800A6B8:
	bl sub_80186EC
_0800A6BC:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Command6E
Command6E: @ 0x0800A6CC
	adds r2, r0, #0
	ldr r1, [r2, #4]
	adds r0, r1, #2
	str r0, [r2, #4]
	ldrh r1, [r1, #2]
	cmp r1, #1
	bne _0800A6F0
	ldr r0, _0800A6EC @ =gScriptContext
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	ldrh r3, [r0]
	orrs r1, r3
	strh r1, [r0]
	b _0800A6FA
	.align 2, 0
_0800A6EC: .4byte gScriptContext
_0800A6F0:
	ldr r1, _0800A704 @ =gScriptContext
	ldr r0, _0800A708 @ =0x0000F7FF
	ldrh r3, [r1]
	ands r0, r3
	strh r0, [r1]
_0800A6FA:
	ldr r0, [r2, #4]
	adds r0, #2
	str r0, [r2, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_0800A704: .4byte gScriptContext
_0800A708: .4byte 0x0000F7FF

	thumb_func_start Command6F
Command6F: @ 0x0800A70C
	ldr r1, [r0, #4]
	ldr r3, _0800A71C @ =gMain
	ldrh r2, [r1, #2]
	strh r2, [r3, #0x1e]
	adds r1, #4
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_0800A71C: .4byte gMain

	thumb_func_start Command70
Command70: @ 0x0800A720
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r2, r0, #2
	ldrh r0, [r0, #2]
	ldrh r1, [r2, #2]
	adds r2, #4
	str r2, [r4, #4]
	bl sub_80138FC
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Command71
Command71: @ 0x0800A744
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	adds r0, #2
	ldrh r1, [r0, #2]
	adds r0, #4
	str r0, [r5, #4]
	ldr r4, _0800A760 @ =gMain+0x1A4
	cmp r1, #0
	beq _0800A764
	cmp r1, #1
	beq _0800A77C
	b _0800A792
	.align 2, 0
_0800A760: .4byte gMain+0x1A4
_0800A764:
	ldr r0, _0800A774 @ =0xFFFFFE64
	adds r1, r4, r0
	ldr r0, _0800A778 @ =0x00040A04
	str r0, [r1]
	adds r1, r4, #0
	adds r1, #0xa8
	movs r0, #1
	b _0800A790
	.align 2, 0
_0800A774: .4byte 0xFFFFFE64
_0800A778: .4byte 0x00040A04
_0800A77C:
	movs r0, #0
	bl SlideTextbox
	ldr r0, _0800A7A0 @ =0xFFFFFE64
	adds r1, r4, r0
	ldr r0, _0800A7A4 @ =0x00070A04
	str r0, [r1]
	adds r1, r4, #0
	adds r1, #0xa8
	movs r0, #0
_0800A790:
	strb r0, [r1]
_0800A792:
	ldr r0, [r5, #4]
	adds r0, #2
	str r0, [r5, #4]
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800A7A0: .4byte 0xFFFFFE64
_0800A7A4: .4byte 0x00070A04
