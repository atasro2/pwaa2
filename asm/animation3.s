	.include "asm/macros.inc"
	.syntax unified

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
