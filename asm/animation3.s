	.include "asm/macros.inc"
	.syntax unified

	thumb_func_start MoveAnimationTilesToRam
MoveAnimationTilesToRam: @ 0x080153A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	str r0, [sp, #0x64]
	ldr r0, _08015468 @ =gAnimation
	ldr r6, [r0, #8]
	cmp r6, #0
	bne _080153B8
	b _080155EC
_080153B8:
	ldr r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #0x17
	ands r0, r1
	cmp r0, #0
	bne _080153C6
	b _080155E4
_080153C6:
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r0, r1
	cmp r0, #0
	bne _080153D2
	b _080155E4
_080153D2:
	ldr r5, _0801546C @ =gUnknown_0200B1C0
	ldr r0, [sp, #0x64]
	cmp r0, #0
	bne _080153DC
	ldr r5, [r6, #0x1c]
_080153DC:
	ldr r2, [r6, #0x34]
	mov ip, r2
	ldrh r3, [r2]
	mov sl, r3
	adds r0, r6, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r2, _08015470 @ =gUnknown_0200AFC0
	adds r7, r0, r2
	ldr r0, _08015474 @ =0xBFFFFFFF
	ands r1, r0
	str r1, [r6]
	ldr r0, [r6, #0x20]
	ldr r0, [r0]
	str r0, [sp, #0x68]
	movs r3, #0x80
	lsls r3, r3, #0x18
	ands r0, r3
	cmp r0, #0
	beq _080154AA
	movs r2, #0
	cmp r2, sl
	blo _0801540E
	b _0801550A
_0801540E:
	movs r0, #4
	add ip, r0
	subs r7, #4
	ldrh r1, [r7]
	adds r1, r1, r5
	mov r8, r1
	ldr r0, _08015478 @ =0x000001FF
	mov r3, ip
	ldrh r3, [r3, #2]
	ands r0, r3
	ldr r1, [r6, #0x18]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r3, r1, r0
	adds r2, #1
	str r2, [sp, #0x6c]
	cmp r8, r5
	bls _080154A2
	ldr r4, _0801547C @ =0x040000D4
	mov sb, sp
_08015438:
	ldrh r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08015484
	ldr r1, _08015480 @ =0x00007FFF
	ands r1, r2
	ldrh r0, [r3, #2]
	mov r2, sb
	strh r0, [r2]
	mov r0, sp
	str r0, [r4]
	str r5, [r4, #4]
	lsls r2, r1, #1
	movs r0, #0x81
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	adds r5, r5, r2
	adds r3, #4
	b _0801549E
	.align 2, 0
_08015468: .4byte gAnimation
_0801546C: .4byte gUnknown_0200B1C0
_08015470: .4byte gUnknown_0200AFC0
_08015474: .4byte 0xBFFFFFFF
_08015478: .4byte 0x000001FF
_0801547C: .4byte 0x040000D4
_08015480: .4byte 0x00007FFF
_08015484:
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r3, #2
	str r3, [r4]
	str r5, [r4, #4]
	lsrs r1, r0, #1
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r4, #8]
	ldr r1, [r4, #8]
	adds r5, r5, r0
	adds r3, r3, r0
_0801549E:
	cmp r8, r5
	bhi _08015438
_080154A2:
	ldr r2, [sp, #0x6c]
	cmp r2, sl
	blo _0801540E
	b _0801550A
_080154AA:
	ldr r0, [r6, #0x38]
	ldrb r1, [r0, #3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080154C0
	ldr r3, _080154BC @ =0x000001FF
	mov r8, r3
	b _080154D0
	.align 2, 0
_080154BC: .4byte 0x000001FF
_080154C0:
	movs r0, #8
	ands r0, r1
	ldr r1, _08015580 @ =0x000007FF
	mov r8, r1
	cmp r0, #0
	beq _080154D0
	ldr r2, _08015584 @ =0x000003FF
	mov r8, r2
_080154D0:
	movs r2, #0
	cmp r2, sl
	bhs _0801550A
	ldr r4, _08015588 @ =0x040000D4
	movs r3, #0x80
	lsls r3, r3, #0x18
	mov sb, r3
_080154DE:
	movs r0, #4
	add ip, r0
	subs r7, #4
	mov r0, r8
	mov r1, ip
	ldrh r1, [r1, #2]
	ands r0, r1
	lsls r0, r0, #5
	ldr r1, [r6, #0x18]
	adds r3, r1, r0
	str r3, [r4]
	str r5, [r4, #4]
	ldrh r3, [r7]
	lsrs r0, r3, #1
	mov r1, sb
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r5, r3, r5
	adds r2, #1
	cmp r2, sl
	blo _080154DE
_0801550A:
	ldr r2, [r6]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r2
	cmp r0, #0
	beq _080155E4
	adds r1, r6, #0
	adds r1, #0x24
	movs r0, #0xf
	ldrb r1, [r1]
	ands r0, r1
	lsls r0, r0, #5
	ldr r1, _0801558C @ =0x05000200
	adds r1, r1, r0
	mov r8, r1
	ldr r3, [sp, #0x68]
	lsls r3, r3, #5
	str r3, [sp, #0x68]
	ldr r0, [r6, #0x20]
	adds r3, r0, #4
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0801553E
	ldr r3, [r6, #0x30]
_0801553E:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r2, r0
	cmp r2, #0
	beq _080155C4
	ldr r0, _08015588 @ =0x040000D4
	str r3, [r0]
	add r2, sp, #4
	str r2, [r0, #4]
	ldr r3, [sp, #0x68]
	lsrs r1, r3, #1
	adds r0, r1, #0
	movs r3, #0x80
	lsls r3, r3, #0x18
	orrs r0, r3
	ldr r3, _08015588 @ =0x040000D4
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	adds r7, r2, #0
	adds r5, r1, #0
	ldr r0, _08015590 @ =gMain+0x84
	mov sl, r0
	ldr r1, _08015594 @ =0x0000FFFE
	mov sb, r1
	adds r4, r7, #0
_08015570:
	mov r2, sl
	ldrh r2, [r2]
	cmp r2, sb
	bne _08015598
	ldrh r0, [r4]
	movs r1, #0x20
	movs r2, #1
	b _0801559E
	.align 2, 0
_08015580: .4byte 0x000007FF
_08015584: .4byte 0x000003FF
_08015588: .4byte 0x040000D4
_0801558C: .4byte 0x05000200
_08015590: .4byte gMain+0x84
_08015594: .4byte 0x0000FFFE
_08015598:
	ldrh r0, [r4]
	movs r1, #0x20
	movs r2, #0
_0801559E:
	bl sub_800389C
	strh r0, [r4]
	adds r4, #2
	adds r0, r7, #0
	adds r0, #0x5e
	cmp r4, r0
	bls _08015570
	ldr r3, _080155C0 @ =0x040000D4
	str r7, [r3]
	mov r0, r8
	str r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r5, r1
	str r5, [r3, #8]
	b _080155DA
	.align 2, 0
_080155C0: .4byte 0x040000D4
_080155C4:
	ldr r2, _080155FC @ =0x040000D4
	str r3, [r2]
	mov r3, r8
	str r3, [r2, #4]
	ldr r1, [sp, #0x68]
	lsrs r0, r1, #1
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r0, r2
	ldr r3, _080155FC @ =0x040000D4
	str r0, [r3, #8]
_080155DA:
	ldr r0, [r3, #8]
	ldr r0, [r6]
	ldr r1, _08015600 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r6]
_080155E4:
	ldr r6, [r6, #8]
	cmp r6, #0
	beq _080155EC
	b _080153B8
_080155EC:
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080155FC: .4byte 0x040000D4
_08015600: .4byte 0xFEFFFFFF


	thumb_func_start UpdateAnimations
UpdateAnimations: @ 0x08015604
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	ldr r7, _08015668 @ =gMain
	ldr r1, _0801566C @ =gAnimation
	ldr r0, _08015670 @ =gCourtScroll
	mov sb, r0
	ldr r2, _08015674 @ =gIORegisters
	mov r8, r2
	adds r2, r7, #0
	adds r2, #0x25
	movs r0, #1
	ldrb r2, [r2]
	ands r0, r2
	cmp r0, #0
	bne _0801562C
	b _08015860
_0801562C:
	ldr r4, [r1, #8]
	cmp r4, #0
	bne _08015634
	b _08015860
_08015634:
	ldrh r1, [r4, #0xc]
	adds r0, r1, #0
	subs r0, #9
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x18
	bhi _080156A8
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r1, [r7, #0x2e]
	ldrb r0, [r0]
	cmp r1, r0
	beq _08015678
	adds r0, r7, #0
	adds r0, #0xb2
	adds r1, r4, #0
	adds r1, #0x2d
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080156BE
	adds r0, r4, #0
	movs r1, #0
	bl ChangeAnimationActivity
	b _08015858
	.align 2, 0
_08015668: .4byte gMain
_0801566C: .4byte gAnimation
_08015670: .4byte gCourtScroll
_08015674: .4byte gIORegisters
_08015678:
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x16
	ands r0, r1
	cmp r0, #0
	bne _080156A0
	adds r0, r7, #0
	adds r0, #0x34
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080156A0
	ldrh r0, [r4, #0xc]
	bl PlayAnimation
	adds r0, r4, #0
	movs r1, #1
	bl ChangeAnimationActivity
_080156A0:
	ldrh r2, [r7, #0x30]
	cmp r2, #0x7f
	bne _0801574A
	b _08015722
_080156A8:
	adds r0, r1, #0
	subs r0, #0x46
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bhi _080156C6
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp sl, r0
	beq _0801574A
_080156BE:
	adds r0, r4, #0
	bl DestroyAnimation
	b _08015858
_080156C6:
	adds r0, r1, #0
	subs r0, #0x64
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bhi _080156E6
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r1, [r7, #0x2e]
	ldrb r0, [r0]
	cmp r1, r0
	beq _0801574A
	adds r0, r4, #0
	bl DestroyAnimation
	b _0801574A
_080156E6:
	adds r0, r1, #0
	subs r0, #0x3d
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bhi _0801574A
	adds r0, r7, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801574A
	ldr r1, _0801572C @ =gAnimation
	adds r0, r1, #0
	adds r0, #0x52
	ldrb r0, [r0]
	cmp r0, #0x20
	bne _08015742
	ldr r0, [r1, #0x44]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	bne _08015722
	ldrh r2, [r7, #0x30]
	cmp r2, #0x7f
	beq _08015722
	mov r2, sb
	ldrh r0, [r2, #4]
	cmp r0, #0
	beq _08015730
_08015722:
	adds r0, r4, #0
	movs r1, #0
	bl ChangeAnimationActivity
	b _0801574A
	.align 2, 0
_0801572C: .4byte gAnimation
_08015730:
	ldr r0, [r4]
	ands r0, r1
	cmp r0, #0
	beq _0801574A
	adds r0, r4, #0
	movs r1, #1
	bl ChangeAnimationActivity
	b _0801574A
_08015742:
	adds r0, r4, #0
	movs r1, #0
	bl ChangeAnimationActivity
_0801574A:
	ldrh r0, [r4, #0xc]
	cmp r0, #0x7d
	beq _0801575A
	subs r0, #0x7f
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bhi _0801576A
_0801575A:
	ldr r0, _080157E8 @ =gMain
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801576A
	adds r0, r4, #0
	bl AdvanceAnimationFrame
_0801576A:
	ldr r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801579A
	movs r0, #0x88
	lsls r0, r0, #0x16
	orrs r1, r0
	str r1, [r4]
	mov r2, r8
	adds r2, #0x48
	movs r0, #0x84
	lsls r0, r0, #4
	strh r0, [r2]
	mov r3, r8
	adds r3, #0x4c
	ldr r0, _080157EC @ =0x0000FF0A
	strh r0, [r3]
	ldr r1, _080157F0 @ =0x04000050
	ldrh r0, [r2]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3]
	strh r0, [r1]
_0801579A:
	ldr r1, [r4]
	movs r6, #0x80
	lsls r6, r6, #0x12
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	beq _08015814
	ldrh r0, [r4, #0xc]
	subs r0, #0x22
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x23
	bls _0801580A
	adds r0, r4, #0
	bl UpdateAnimationBlend
	ldr r0, [r4, #0xc]
	ldr r1, _080157F4 @ =0x00FFFFFF
	ands r0, r1
	ldr r1, _080157F8 @ =0x002000FF
	cmp r0, r1
	bne _0801580A
	ldr r5, [r4]
	ands r5, r6
	movs r6, #0x3d
_080157CC:
	adds r0, r6, #0
	bl FindAnimationFromAnimId
	adds r2, r0, #0
	cmp r2, #0
	beq _08015804
	cmp r5, #0
	beq _080157FC
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	b _08015802
	.align 2, 0
_080157E8: .4byte gMain
_080157EC: .4byte 0x0000FF0A
_080157F0: .4byte 0x04000050
_080157F4: .4byte 0x00FFFFFF
_080157F8: .4byte 0x002000FF
_080157FC:
	ldr r0, [r2]
	ldr r1, _0801588C @ =0xFDFFFFFF
	ands r0, r1
_08015802:
	str r0, [r2]
_08015804:
	adds r6, #1
	cmp r6, #0x43
	ble _080157CC
_0801580A:
	ldr r1, [r4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08015858
_08015814:
	cmp r1, #0
	bge _0801582C
	adds r0, r7, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801582C
	adds r0, r4, #0
	bl AdvanceAnimationFrame
	cmp r0, #0
	beq _08015858
_0801582C:
	ldrh r0, [r4, #0xc]
	cmp r0, #8
	bhi _08015844
	ldr r0, _08015890 @ =gSpecialAnimationEffectFunctions
	ldrh r1, [r4, #0xc]
	subs r1, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08015844:
	mov r1, sb
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08015858
	ldrh r2, [r4, #0xc]
	cmp r2, #0xff
	bne _08015858
	adds r0, r4, #0
	bl UpdatePersonAnimationForCourtScroll
_08015858:
	ldr r4, [r4, #8]
	cmp r4, #0
	beq _08015860
	b _08015634
_08015860:
	adds r2, r7, #0
	adds r2, #0x25
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08015878
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	bl ClearAllAnimationSprites
_08015878:
	bl UpdateAllAnimationSprites
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801588C: .4byte 0xFDFFFFFF
_08015890: .4byte gSpecialAnimationEffectFunctions
