	.include "asm/macros.inc"
	.syntax unified

	thumb_func_start sub_8018138
sub_8018138: @ 0x08018138
	push {r4, lr}
	ldr r1, _08018164 @ =gInvestigation
	ldrh r4, [r1]
	subs r4, #0xe
	strh r4, [r1]
	ldr r3, _08018168 @ =gIORegisters
	lsrs r2, r4, #1
	movs r0, #0x40
	subs r0, r0, r2
	lsls r0, r0, #8
	str r0, [r3, #0x20]
	ldrh r1, [r1]
	lsrs r1, r1, #2
	movs r0, #0x20
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [r3, #0x24]
	strh r4, [r3, #0x18]
	strh r4, [r3, #0x1e]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08018164: .4byte gInvestigation
_08018168: .4byte gIORegisters

	thumb_func_start sub_801816C
sub_801816C: @ 0x0801816C
	push {r4, r5, lr}
	ldr r1, _080181F4 @ =gInvestigation
	movs r3, #0
	movs r0, #0xe0
	strh r0, [r1]
	ldr r2, _080181F8 @ =gIORegisters
	adds r4, r2, #0
	adds r4, #0x4a
	ldr r0, _080181FC @ =0x0000FFF8
	ldrh r1, [r4]
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	ldr r1, _08018200 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r4]
	ldr r0, _08018204 @ =0x00001E86
	strh r0, [r2, #4]
	ldr r0, _08018208 @ =0xFFFFC000
	str r0, [r2, #0x20]
	ldr r0, _0801820C @ =0xFFFFE000
	str r0, [r2, #0x24]
	strh r3, [r2, #0x18]
	strh r3, [r2, #0x1a]
	strh r3, [r2, #0x1c]
	strh r3, [r2, #0x1e]
	ldr r0, _08018210 @ =gUnknown_08477C38
	ldr r5, _08018214 @ =gUnknown_02036500
	adds r1, r5, #0
	bl LZ77UnCompWram
	ldr r4, _08018218 @ =0x040000D4
	str r5, [r4]
	ldr r0, _0801821C @ =0x06004000
	str r0, [r4, #4]
	ldr r0, _08018220 @ =0x80000980
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08018224 @ =gUnknown_08478370
	adds r1, r5, #0
	bl LZ77UnCompWram
	str r5, [r4]
	ldr r0, _08018228 @ =gBG2MapBuffer
	str r0, [r4, #4]
	ldr r0, _0801822C @ =0x80000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08018230 @ =gUnknown_084783F8
	adds r1, r5, #0
	bl LZ77UnCompWram
	str r5, [r4]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r4, #4]
	ldr r0, _08018234 @ =0x80000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, _08018238 @ =0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_8018138
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080181F4: .4byte gInvestigation
_080181F8: .4byte gIORegisters
_080181FC: .4byte 0x0000FFF8
_08018200: .4byte 0x0000F7FF
_08018204: .4byte 0x00001E86
_08018208: .4byte 0xFFFFC000
_0801820C: .4byte 0xFFFFE000
_08018210: .4byte gUnknown_08477C38
_08018214: .4byte gUnknown_02036500
_08018218: .4byte 0x040000D4
_0801821C: .4byte 0x06004000
_08018220: .4byte 0x80000980
_08018224: .4byte gUnknown_08478370
_08018228: .4byte gBG2MapBuffer
_0801822C: .4byte 0x80000400
_08018230: .4byte gUnknown_084783F8
_08018234: .4byte 0x80000100
_08018238: .4byte 0x0000FFFF

	thumb_func_start sub_801823C
sub_801823C: @ 0x0801823C
	push {r4, r5, lr}
	ldr r4, _08018278 @ =gIORegisters
	adds r2, r4, #0
	adds r2, #0x4a
	ldr r0, _0801827C @ =0x0000FFF8
	ldrh r1, [r2]
	ands r0, r1
	movs r5, #0
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	movs r0, #0x80
	bl CopyBGDataToVram
	movs r0, #0xf8
	lsls r0, r0, #6
	strh r0, [r4, #4]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	strh r5, [r0]
	bl InitBGs
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018278: .4byte gIORegisters
_0801827C: .4byte 0x0000FFF8

	thumb_func_start sub_8018280
sub_8018280: @ 0x08018280
	push {r4, lr}
	ldr r0, _080182AC @ =gMain+0x2B4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080182EE
	cmp r0, #3
	bne _080182B0
	movs r0, #0x44
	bl FindAnimationFromAnimId
	cmp r0, #0
	beq _0801829C
	bl DestroyAnimation
_0801829C:
	movs r0, #0x45
	bl FindAnimationFromAnimId
	cmp r0, #0
	beq _080182EE
	bl DestroyAnimation
	b _080182EE
	.align 2, 0
_080182AC: .4byte gMain+0x2B4
_080182B0:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080182BE
	movs r4, #0x44
	movs r0, #0x45
	b _080182C2
_080182BE:
	movs r4, #0x45
	movs r0, #0x44
_080182C2:
	bl FindAnimationFromAnimId
	cmp r0, #0
	beq _080182CE
	bl DestroyAnimation
_080182CE:
	adds r0, r4, #0
	bl FindAnimationFromAnimId
	cmp r0, #0
	bne _080182DE
	adds r0, r4, #0
	bl PlayAnimation
_080182DE:
	adds r0, r4, #0
	bl FindAnimationFromAnimId
	ldr r2, _080182F4 @ =gInvestigation
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	bl SetAnimationOriginCoords
_080182EE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080182F4: .4byte gInvestigation

	thumb_func_start sub_80182F8
sub_80182F8: @ 0x080182F8
	ldr r2, _0801831C @ =gOamObjects+0x1C0
	movs r3, #0
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r2]
	cmp r0, #0
	beq _08018348
	ldr r0, _08018320 @ =gMain
	movs r1, #0x3c
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08018330
	ldr r0, _08018324 @ =0x00004020
	strh r0, [r2]
	ldr r0, _08018328 @ =0x000080D0
	strh r0, [r2, #2]
	ldr r0, _0801832C @ =0x00007188
	b _08018346
	.align 2, 0
_0801831C: .4byte gOamObjects+0x1C0
_08018320: .4byte gMain
_08018324: .4byte 0x00004020
_08018328: .4byte 0x000080D0
_0801832C: .4byte 0x00007188
_08018330:
	cmp r0, #0xf0
	beq _08018338
	cmp r0, #0x78
	bne _08018348
_08018338:
	ldr r0, _0801834C @ =0x00004020
	strh r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r2, #2]
	movs r0, #0xe3
	lsls r0, r0, #7
_08018346:
	strh r0, [r2, #4]
_08018348:
	bx lr
	.align 2, 0
_0801834C: .4byte 0x00004020

	thumb_func_start sub_8018350
sub_8018350: @ 0x08018350
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #1
	rsbs r5, r5, #0
	movs r4, #0
	ldr r0, _080183CC @ =gUnknown_081128E0
	mov ip, r0
	ldr r1, _080183D0 @ =gMain
	mov r8, r1
	ldr r6, _080183D4 @ =gInvestigation
_08018366:
	lsls r0, r4, #4
	mov r2, ip
	adds r1, r0, r2
	ldrh r3, [r1, #4]
	ldrh r7, [r1]
	adds r0, r3, r7
	ldrh r2, [r1, #8]
	adds r0, r2, r0
	ldrh r3, [r1, #0xc]
	adds r0, r3, r0
	asrs r3, r0, #2
	ldrh r7, [r1, #6]
	ldrh r2, [r1, #2]
	adds r0, r7, r2
	ldrh r7, [r1, #0xa]
	adds r0, r7, r0
	ldrh r1, [r1, #0xe]
	adds r0, r1, r0
	asrs r2, r0, #2
	mov r1, r8
	movs r7, #0x3c
	ldrsh r0, [r1, r7]
	ldrh r1, [r6]
	adds r0, r1, r0
	subs r0, r3, r0
	cmp r0, #0
	bge _0801839E
	rsbs r0, r0, #0
_0801839E:
	adds r1, r0, #0
	mov r3, r8
	movs r7, #0x3e
	ldrsh r0, [r3, r7]
	ldrh r3, [r6, #2]
	adds r0, r3, r0
	subs r0, r2, r0
	cmp r0, #0
	bge _080183B2
	rsbs r0, r0, #0
_080183B2:
	adds r1, r1, r0
	cmp r1, r5
	bhs _080183BA
	adds r5, r1, #0
_080183BA:
	adds r4, #1
	cmp r4, #0x15
	ble _08018366
	adds r0, r5, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080183CC: .4byte gUnknown_081128E0
_080183D0: .4byte gMain
_080183D4: .4byte gInvestigation

	thumb_func_start sub_80183D8
sub_80183D8: @ 0x080183D8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r6, _080183FC @ =gMain+0x2B4
	movs r7, #1
	rsbs r7, r7, #0
	ldrb r0, [r6]
	cmp r0, #1
	beq _08018400
	cmp r0, #1
	bgt _080183EE
	b _08018678
_080183EE:
	cmp r0, #2
	beq _08018444
	cmp r0, #3
	bne _080183F8
	b _0801863C
_080183F8:
	b _08018678
	.align 2, 0
_080183FC: .4byte gMain+0x2B4
_08018400:
	ldr r3, _08018438 @ =gInvestigation
	ldrh r1, [r3]
	ldrb r2, [r3, #9]
	subs r0, r1, r2
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3]
	adds r0, r2, #0
	subs r0, #1
	strb r0, [r3, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801841C
	b _08018678
_0801841C:
	ldr r2, _0801843C @ =gScriptContext
	ldr r0, _08018440 @ =0x0000FF7F
	ldrh r5, [r2]
	ands r0, r5
	movs r5, #0x84
	lsls r5, r5, #1
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
	strb r0, [r3, #9]
	ldrb r0, [r6]
	adds r0, #1
	b _08018676
	.align 2, 0
_08018438: .4byte gInvestigation
_0801843C: .4byte gScriptContext
_08018440: .4byte 0x0000FF7F
_08018444:
	ldr r0, _0801847C @ =0xFFFFFD4C
	adds r2, r6, r0
	ldr r1, _08018480 @ =gInvestigation
	ldrh r3, [r2, #0x3c]
	ldrh r4, [r1]
	adds r0, r3, r4
	lsls r0, r0, #0x10
	ldr r3, _08018484 @ =0xFFFF0000
	ldrh r2, [r2, #0x3e]
	ldrh r1, [r1, #2]
	adds r1, r2, r1
	lsls r1, r1, #0x10
	ldr r2, _08018488 @ =0x0000FFFF
	lsrs r0, r0, #0x10
	orrs r0, r1
	str r0, [sp]
	ldr r0, [sp, #4]
	ands r0, r3
	movs r1, #1
	orrs r0, r1
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [sp, #4]
	movs r5, #0
	ldr r4, _0801848C @ =gUnknown_081128E0
	b _08018494
	.align 2, 0
_0801847C: .4byte 0xFFFFFD4C
_08018480: .4byte gInvestigation
_08018484: .4byte 0xFFFF0000
_08018488: .4byte 0x0000FFFF
_0801848C: .4byte gUnknown_081128E0
_08018490:
	adds r4, #0x10
	adds r5, #1
_08018494:
	cmp r5, #0x14
	bgt _080184A6
	mov r0, sp
	adds r1, r4, #0
	bl sub_8014508
	cmp r0, #0
	beq _08018490
	adds r7, r5, #0
_080184A6:
	ldr r0, _080184CC @ =gMain
	ldr r0, [r0]
	movs r1, #3
	bl __umodsi3
	cmp r0, #0
	bne _0801853E
	ldr r0, _080184D0 @ =gJoypad
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080184D8
	ldr r1, _080184D4 @ =gInvestigation
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	b _08018514
	.align 2, 0
_080184CC: .4byte gMain
_080184D0: .4byte gJoypad
_080184D4: .4byte gInvestigation
_080184D8:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080184F0
	ldr r1, _080184EC @ =gInvestigation
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _08018514
	.align 2, 0
_080184EC: .4byte gInvestigation
_080184F0:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08018504
	ldr r1, _08018500 @ =gInvestigation
	ldrh r0, [r1, #2]
	subs r0, #1
	b _08018512
	.align 2, 0
_08018500: .4byte gInvestigation
_08018504:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08018514
	ldr r1, _08018578 @ =gInvestigation
	ldrh r0, [r1, #2]
	adds r0, #1
_08018512:
	strh r0, [r1, #2]
_08018514:
	ldr r1, _08018578 @ =gInvestigation
	ldrh r0, [r1]
	cmp r0, #2
	bhi _08018520
	movs r0, #3
	strh r0, [r1]
_08018520:
	ldrh r2, [r1]
	cmp r2, #0xee
	bls _0801852A
	movs r0, #0xee
	strh r0, [r1]
_0801852A:
	ldrh r3, [r1, #2]
	cmp r3, #2
	bhi _08018534
	movs r0, #3
	strh r0, [r1, #2]
_08018534:
	ldrh r4, [r1, #2]
	cmp r4, #0x9e
	bls _0801853E
	movs r0, #0x9e
	strh r0, [r1, #2]
_0801853E:
	movs r0, #1
	bl sub_80182F8
	ldr r0, _0801857C @ =gJoypad
	ldrh r1, [r0, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080185D4
	movs r0, #0x2b
	bl PlaySE
	ldr r0, _08018580 @ =gScriptContext
	ldr r1, _08018584 @ =0x0000FEF7
	ldrh r2, [r0]
	ands r1, r2
	strh r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq _0801858C
	ldr r0, _08018588 @ =gUnknown_08112A40
	lsls r1, r5, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl ChangeScriptSection
	b _08018594
	.align 2, 0
_08018578: .4byte gInvestigation
_0801857C: .4byte gJoypad
_08018580: .4byte gScriptContext
_08018584: .4byte 0x0000FEF7
_08018588: .4byte gUnknown_08112A40
_0801858C:
	ldr r0, _080185BC @ =gUnknown_08112A40
	ldrh r0, [r0, #0x2a]
	bl ChangeScriptSection
_08018594:
	ldr r1, _080185C0 @ =gScriptContext
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	ldrh r4, [r1]
	orrs r0, r4
	strh r0, [r1]
	ldr r1, _080185C4 @ =gMain
	movs r0, #1
	strb r0, [r1, #0x18]
	ldr r1, _080185C8 @ =gIORegisters
	adds r2, r1, #0
	adds r2, #0x48
	ldr r0, _080185CC @ =0x00001942
	strh r0, [r2]
	adds r1, #0x4c
	ldr r0, _080185D0 @ =0x0000071F
	strh r0, [r1]
	b _0801860A
	.align 2, 0
_080185BC: .4byte gUnknown_08112A40
_080185C0: .4byte gScriptContext
_080185C4: .4byte gMain
_080185C8: .4byte gIORegisters
_080185CC: .4byte 0x00001942
_080185D0: .4byte 0x0000071F
_080185D4:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801860A
	movs r0, #0x2b
	bl PlaySE
	ldr r1, _080185FC @ =gMain
	adds r2, r1, #0
	adds r2, #0x36
	movs r0, #1
	strb r0, [r2]
	movs r5, #0x3c
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bne _08018600
	adds r1, #0x44
	movs r0, #6
	b _08018604
	.align 2, 0
_080185FC: .4byte gMain
_08018600:
	adds r1, #0x44
	movs r0, #0xfa
_08018604:
	strb r0, [r1]
	movs r0, #3
	strb r0, [r6]
_0801860A:
	bl sub_8018350
	adds r4, r0, #0
	adds r3, r4, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq _0801861C
	movs r3, #1
_0801861C:
	ldr r2, _08018638 @ =gInvestigation
	ldrb r0, [r2, #9]
	adds r1, r0, #1
	strb r1, [r2, #9]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r3
	blt _08018678
	movs r0, #0
	strb r0, [r2, #9]
	movs r0, #0xac
	bl PlaySE
	b _08018678
	.align 2, 0
_08018638: .4byte gInvestigation
_0801863C:
	movs r0, #0
	bl sub_80182F8
	ldr r1, _08018654 @ =0xFFFFFD4C
	adds r0, r6, r1
	movs r2, #0x3c
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _08018658
	cmp r0, #0xf0
	bne _08018678
	b _08018662
	.align 2, 0
_08018654: .4byte 0xFFFFFD4C
_08018658:
	ldr r0, _08018688 @ =gInvestigation
	movs r1, #0xe6
	strh r1, [r0]
	movs r1, #0x50
	strh r1, [r0, #2]
_08018662:
	ldr r0, _0801868C @ =gMain
	ldrh r0, [r0, #0x3c]
	cmp r0, #0xf0
	bne _08018674
	ldr r0, _08018688 @ =gInvestigation
	movs r1, #0xb
	strh r1, [r0]
	movs r1, #0x50
	strh r1, [r0, #2]
_08018674:
	movs r0, #2
_08018676:
	strb r0, [r6]
_08018678:
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_8018280
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018688: .4byte gInvestigation
_0801868C: .4byte gMain

	thumb_func_start sub_8018690
sub_8018690: @ 0x08018690
	push {r4, lr}
	ldr r3, _080186D4 @ =gMain+0x2B4
	ldr r1, _080186D8 @ =gScriptContext
	movs r0, #0x80
	movs r2, #0
	ldrh r4, [r1]
	orrs r0, r4
	strh r0, [r1]
	ldr r1, _080186DC @ =gInvestigation
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0x4e
	strh r0, [r1, #2]
	movs r0, #0xf
	strb r0, [r1, #9]
	ldr r1, _080186E0 @ =0xFFFFFD4C
	adds r0, r3, r1
	strb r2, [r0, #0x18]
	strb r2, [r0, #0x19]
	ldr r0, _080186E4 @ =gBG1MapBuffer
	movs r2, #0
	movs r1, #0xff
	ldr r4, _080186E8 @ =0x000004FE
	adds r0, r0, r4
_080186C0:
	strh r2, [r0]
	subs r0, #2
	subs r1, #1
	cmp r1, #0
	bge _080186C0
	movs r0, #1
	strb r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080186D4: .4byte gMain+0x2B4
_080186D8: .4byte gScriptContext
_080186DC: .4byte gInvestigation
_080186E0: .4byte 0xFFFFFD4C
_080186E4: .4byte gBG1MapBuffer
_080186E8: .4byte 0x000004FE

	thumb_func_start sub_80186EC
sub_80186EC: @ 0x080186EC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r0, _08018718 @ =gMain+0x2B4
	mov r8, r0
	ldr r4, _0801871C @ =gInvestigation
	ldrh r5, [r4]
	ldrh r6, [r4, #2]
	bl sub_8018690
	movs r0, #0
	strh r5, [r4]
	strh r6, [r4, #2]
	strb r0, [r4, #9]
	movs r0, #2
	mov r1, r8
	strb r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08018718: .4byte gMain+0x2B4
_0801871C: .4byte gInvestigation

	thumb_func_start sub_8018720
sub_8018720: @ 0x08018720
	push {r4, lr}
	ldr r4, _0801874C @ =gMain+0x2B4
	movs r0, #0x44
	bl FindAnimationFromAnimId
	cmp r0, #0
	beq _08018732
	bl DestroyAnimation
_08018732:
	movs r0, #0x45
	bl FindAnimationFromAnimId
	cmp r0, #0
	beq _08018740
	bl DestroyAnimation
_08018740:
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801874C: .4byte gMain+0x2B4

	thumb_func_start nullsub_12
nullsub_12: @ 0x08018750
	bx lr
	.align 2, 0
