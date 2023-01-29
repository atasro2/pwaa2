	.include "asm/macros.inc"
	.syntax unified

	thumb_func_start sub_8013DE0
sub_8013DE0: @ 0x08013DE0
	ldr r0, _08013DF0 @ =gAnimation
	movs r1, #1
	str r1, [r0]
	movs r1, #0
	str r1, [r0, #8]
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_08013DF0: .4byte gAnimation

	thumb_func_start ResetAnimationSystem
ResetAnimationSystem: @ 0x08013DF4
	push {r4, lr}
	sub sp, #4
	ldr r2, _08013E30 @ =gAnimation
	mov r0, sp
	movs r3, #0
	strh r3, [r0]
	ldr r0, _08013E34 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08013E38 @ =0x81000440
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _08013E3C @ =gMain
	adds r0, #0x25
	movs r1, #3
	ldrb r4, [r0]
	orrs r1, r4
	strb r1, [r0]
	adds r2, #0x44
	movs r0, #0xff
	strh r0, [r2, #0xc]
	strb r3, [r2, #0xe]
	bl sub_8013DE0
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013E30: .4byte gAnimation
_08013E34: .4byte 0x040000D4
_08013E38: .4byte 0x81000440
_08013E3C: .4byte gMain

	thumb_func_start sub_8013E40
sub_8013E40: @ 0x08013E40
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _08013EA4 @ =gAnimation+0x44
	ldr r1, _08013EA8 @ =0x0000083C
	adds r0, r4, r1
	cmp r4, r0
	bhs _08013E9A
	ldr r7, _08013EAC @ =gOamObjects
	mov ip, r7
	mov r8, r0
_08013E56:
	ldr r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r1, r0
	adds r6, r4, #0
	adds r6, #0x44
	mov r5, r8
	cmp r1, #0
	beq _08013E94
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #3
	mov r3, ip
	adds r2, r0, r3
	adds r1, r4, #0
	adds r1, #0x3f
	ldrb r4, [r1]
	lsls r0, r4, #3
	adds r0, r0, r3
	cmp r2, r0
	bhs _08013E94
	movs r4, #0x80
	lsls r4, r4, #2
_08013E86:
	strh r4, [r2]
	adds r2, #8
	ldrb r7, [r1]
	lsls r0, r7, #3
	adds r0, r0, r3
	cmp r2, r0
	blo _08013E86
_08013E94:
	adds r4, r6, #0
	cmp r4, r5
	blo _08013E56
_08013E9A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013EA4: .4byte gAnimation+0x44
_08013EA8: .4byte 0x0000083C
_08013EAC: .4byte gOamObjects

	thumb_func_start FindAnimationFromAnimId
FindAnimationFromAnimId: @ 0x08013EB0
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r1, _08013ED4 @ =gAnimation+0x83C
	movs r2, #0x1f
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r4, #1
	rsbs r4, r4, #0
_08013EC0:
	ldrh r0, [r1, #0xc]
	cmp r0, r3
	bne _08013ED8
	ldr r0, [r1]
	ands r0, r5
	cmp r0, #0
	beq _08013ED8
	adds r0, r1, #0
	b _08013EE2
	.align 2, 0
_08013ED4: .4byte gAnimation+0x83C
_08013ED8:
	subs r1, #0x44
	subs r2, #1
	cmp r2, r4
	bne _08013EC0
	movs r0, #0
_08013EE2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8013EE8
sub_8013EE8: @ 0x08013EE8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	bl FindAnimationFromAnimId
	adds r4, r0, #0
	cmp r4, #0
	beq _08013F80
	ldr r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #0x12
	adds r1, r0, #0
	ands r1, r2
	rsbs r1, r1, #0
	asrs r5, r1, #0x1f
	ands r5, r2
	movs r6, #0x80
	lsls r6, r6, #0x14
	ands r0, r6
	cmp r0, #0
	beq _08013F14
	adds r5, r6, #0
_08013F14:
	adds r0, r4, #0
	bl DestroyAnimation
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08013F48 @ =0x040000D4
	str r1, [r0]
	str r4, [r0, #4]
	ldr r1, _08013F4C @ =0x81000022
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r1, #0xf1
	lsls r1, r1, #0x18
	orrs r1, r5
	str r1, [r4]
	ldr r0, _08013F50 @ =0x0000FFFF
	strh r0, [r4, #0x28]
	ands r5, r6
	cmp r5, #0
	beq _08013F70
	ldr r0, _08013F54 @ =0xDFFFFFFF
	ands r1, r0
	str r1, [r4]
	b _08013F70
	.align 2, 0
_08013F48: .4byte 0x040000D4
_08013F4C: .4byte 0x81000022
_08013F50: .4byte 0x0000FFFF
_08013F54: .4byte 0xDFFFFFFF
_08013F58:
	mov r0, sp
	strh r1, [r0]
	ldr r0, _08013F78 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r4, [r0, #4]
	ldr r1, _08013F7C @ =0x81000022
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #0xf1
	lsls r0, r0, #0x18
	str r0, [r4]
_08013F70:
	strh r7, [r4, #0xc]
	adds r0, r4, #0
	b _08013FA6
	.align 2, 0
_08013F78: .4byte 0x040000D4
_08013F7C: .4byte 0x81000022
_08013F80:
	ldr r4, _08013FB0 @ =gAnimation+0x83C
	movs r0, #0x1f
	movs r5, #0x80
	lsls r5, r5, #0x15
	ldr r1, _08013FB4 @ =0xFFFFF808
	adds r3, r4, r1
	movs r2, #1
	rsbs r2, r2, #0
_08013F90:
	ldr r1, [r4]
	ands r1, r5
	cmp r1, #0
	bne _08013F9C
	cmp r4, r3
	bne _08013F58
_08013F9C:
	subs r4, #0x44
	subs r0, #1
	cmp r0, r2
	bne _08013F90
	movs r0, #0
_08013FA6:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08013FB0: .4byte gAnimation+0x83C
_08013FB4: .4byte 0xFFFFF808

	thumb_func_start SetAnimationOriginCoords
SetAnimationOriginCoords: @ 0x08013FB8
	cmp r0, #0
	beq _08013FC0
	strh r1, [r0, #0x10]
	strh r2, [r0, #0x12]
_08013FC0:
	bx lr
	.align 2, 0

	thumb_func_start SetAnimationRotScaleParams
SetAnimationRotScaleParams: @ 0x08013FC4
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	lsls r5, r3, #2
	cmp r2, #0
	beq _08014038
	cmp r3, #0x1f
	bls _08013FD6
	movs r3, #0x1f
_08013FD6:
	ldr r0, [r2]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r2]
	adds r1, r2, #0
	adds r1, #0x40
	ldrb r0, [r1]
	strh r0, [r1]
	adds r2, #0x42
	movs r0, #0xff
	lsls r0, r0, #8
	ldrh r4, [r2]
	ands r0, r4
	orrs r0, r3
	strh r0, [r2]
	ldr r2, _08014040 @ =gSineTable
	movs r0, #0
	ldrsh r1, [r1, r0]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r4, [r0, r3]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r0, #0
	ldrsh r2, [r1, r0]
	rsbs r3, r2, #0
	ldr r1, _08014044 @ =gOamObjects
	lsls r0, r5, #3
	adds r0, r0, r1
	strh r4, [r0, #6]
	adds r5, #1
	lsls r0, r5, #3
	adds r0, r0, r1
	strh r2, [r0, #6]
	adds r5, #1
	lsls r0, r5, #3
	adds r0, r0, r1
	strh r3, [r0, #6]
	adds r5, #1
	lsls r0, r5, #3
	adds r0, r0, r1
	strh r4, [r0, #6]
_08014038:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014040: .4byte gSineTable
_08014044: .4byte gOamObjects

	thumb_func_start SetAnimationRotation
SetAnimationRotation: @ 0x08014048
	push {lr}
	adds r3, r0, #0
	cmp r3, #0
	beq _0801405A
	adds r0, #0x40
	strh r2, [r0]
	adds r0, r3, #0
	bl SetAnimationRotScaleParams
_0801405A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start DisableAnimationRotation
DisableAnimationRotation: @ 0x08014060
	adds r2, r0, #0
	cmp r2, #0
	beq _0801406E
	ldr r0, [r2]
	ldr r1, _08014070 @ =0xFFEFFFFF
	ands r0, r1
	str r0, [r2]
_0801406E:
	bx lr
	.align 2, 0
_08014070: .4byte 0xFFEFFFFF

	thumb_func_start SetAnimationScale
SetAnimationScale: @ 0x08014074
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r7, r4, #2
	cmp r3, #0
	beq _08014112
	cmp r4, #0x1f
	bls _0801408A
	movs r4, #0x1f
_0801408A:
	ldr r0, [r3]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r3]
	adds r1, r3, #0
	adds r1, #0x40
	ldrb r0, [r1]
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xff
	lsls r0, r0, #8
	ldrh r3, [r1]
	ands r0, r3
	orrs r0, r4
	strh r0, [r1]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	bl fix_inverse
	adds r4, r0, #0
	ldr r5, _0801411C @ =gSineTable
	adds r0, r5, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	ldr r6, _08014120 @ =gOamObjects
	lsls r1, r7, #3
	adds r1, r1, r6
	strh r0, [r1, #6]
	adds r7, #1
	movs r3, #0
	ldrsh r0, [r5, r3]
	adds r1, r4, #0
	bl fix_mul
	lsls r1, r7, #3
	adds r1, r1, r6
	strh r0, [r1, #6]
	adds r7, #1
	ldrh r5, [r5]
	rsbs r0, r5, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl fix_mul
	lsls r1, r7, #3
	adds r1, r1, r6
	strh r0, [r1, #6]
	adds r7, #1
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	lsls r1, r7, #3
	adds r1, r1, r6
	strh r0, [r1, #6]
_08014112:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801411C: .4byte gSineTable
_08014120: .4byte gOamObjects

	thumb_func_start sub_8014124
sub_8014124: @ 0x08014124
	adds r2, r0, #0
	cmp r2, #0
	beq _08014132
	ldr r0, [r2]
	ldr r1, _08014134 @ =0xFFEFFFFF
	ands r0, r1
	str r0, [r2]
_08014132:
	bx lr
	.align 2, 0
_08014134: .4byte 0xFFEFFFFF

	thumb_func_start ChangeAnimationActivity
ChangeAnimationActivity: @ 0x08014138
	push {r4, lr}
	adds r3, r0, #0
	cmp r3, #0
	beq _08014194
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r2
	cmp r0, #0
	beq _08014194
	cmp r1, #0
	beq _08014164
	ldr r0, _08014160 @ =0xF7FFFFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x16
	orrs r2, r0
	str r2, [r3]
	b _08014194
	.align 2, 0
_08014160: .4byte 0xF7FFFFFF
_08014164:
	ldr r0, _0801419C @ =0xDFFFFFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x14
	orrs r2, r0
	str r2, [r3]
	adds r0, r3, #0
	adds r0, #0x3e
	ldrb r2, [r0]
	adds r3, #0x3f
	ldrb r0, [r3]
	cmp r2, r0
	bhs _08014194
	ldr r1, _080141A0 @ =gOamObjects
	movs r4, #0x80
	lsls r4, r4, #2
	lsls r0, r2, #3
	adds r0, r0, r1
_08014188:
	strh r4, [r0]
	adds r0, #8
	adds r2, #1
	ldrb r1, [r3]
	cmp r2, r1
	blo _08014188
_08014194:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801419C: .4byte 0xDFFFFFFF
_080141A0: .4byte gOamObjects

	thumb_func_start sub_80141A4
sub_80141A4: @ 0x080141A4
	adds r2, r0, #0
	cmp r2, #0
	beq _080141C0
	cmp r1, #0
	beq _080141B6
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	b _080141BE
_080141B6:
	ldr r0, [r2]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080141BE:
	str r0, [r2]
_080141C0:
	bx lr
	.align 2, 0

	thumb_func_start sub_80141C4
sub_80141C4: @ 0x080141C4
	adds r2, r0, #0
	adds r0, r1, #0
	cmp r2, #0
	beq _080141DE
	cmp r0, #3
	bls _080141D2
	movs r0, #3
_080141D2:
	adds r1, r2, #0
	adds r1, #0x42
	lsls r0, r0, #8
	ldrb r2, [r1]
	orrs r0, r2
	strh r0, [r1]
_080141DE:
	bx lr

	thumb_func_start SetAnimationFrameOffset
SetAnimationFrameOffset: @ 0x080141E0
	push {r4, lr}
	adds r3, r0, #0
	cmp r3, #0
	beq _0801426C
	ldrh r0, [r3, #0xc]
	cmp r0, #0xff
	bne _08014214
	ldr r4, _08014210 @ =gPersonAnimData
	ldrb r2, [r3, #0xe]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r2, r0, #2
	adds r0, r4, #4
	adds r0, r2, r0
	ldr r0, [r0]
	adds r1, r0, r1
	ldr r0, [r3, #0x14]
	cmp r0, r1
	beq _0801426C
	str r1, [r3, #0x14]
	adds r0, r2, r4
	ldr r0, [r0]
	b _0801423C
	.align 2, 0
_08014210: .4byte gPersonAnimData
_08014214:
	cmp r0, #8
	bls _08014234
	cmp r0, #0x21
	bhi _08014230
	ldr r2, _08014228 @ =gUnknown_086E9858
	adds r0, r1, r2
	str r0, [r3, #0x14]
	ldr r0, _0801422C @ =gUnknown_086DF2DC
	b _0801423C
	.align 2, 0
_08014228: .4byte gUnknown_086E9858
_0801422C: .4byte gUnknown_086DF2DC
_08014230:
	cmp r0, #0x45
	bhi _0801426C
_08014234:
	ldr r2, _08014274 @ =gUnknown_0872D184
	adds r0, r1, r2
	str r0, [r3, #0x14]
	ldr r0, _08014278 @ =gUnknown_086EB860
_0801423C:
	str r0, [r3, #0x20]
	ldr r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3]
	ldr r0, _0801427C @ =0x0000FFFF
	strh r0, [r3, #0x28]
	ldr r2, [r3, #0x14]
	ldr r1, [r3, #0x20]
	ldr r0, [r2, #4]
	adds r1, r1, r0
	str r1, [r3, #0x20]
	ldr r0, [r1]
	lsls r0, r0, #5
	adds r0, #4
	adds r1, r1, r0
	str r1, [r3, #0x18]
	adds r0, r2, #0
	adds r0, #8
	str r0, [r3, #0x38]
	ldrh r0, [r2, #8]
	adds r2, r0, r2
	str r2, [r3, #0x34]
_0801426C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08014274: .4byte gUnknown_0872D184
_08014278: .4byte gUnknown_086EB860
_0801427C: .4byte 0x0000FFFF

	thumb_func_start sub_8014280
sub_8014280: @ 0x08014280
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp]
	ldr r0, _080143C0 @ =gAnimation
	ldr r0, [r0, #8]
	mov ip, r0
	cmp r0, #0
	bne _0801429E
	b _08014452
_0801429E:
	ldr r5, _080143C4 @ =gUnknown_0200AFC8
	ldr r0, _080143C8 @ =gUnknown_0200AFD0
	mov sb, r0
_080142A4:
	ldr r2, [sp, #4]
	ldr r0, [r2]
	ldr r1, [r2, #4]
	ldr r3, _080143CC @ =gUnknown_0200AFC0
	str r0, [r3]
	str r1, [r3, #4]
	ldrh r0, [r3, #4]
	ldrh r4, [r2]
	adds r0, r4, r0
	strh r0, [r3, #4]
	ldrh r0, [r3, #6]
	ldrh r6, [r2, #2]
	adds r0, r6, r0
	strh r0, [r3, #6]
	mov r0, ip
	ldr r0, [r0, #0x1c]
	mov sl, r0
	mov r1, ip
	ldr r1, [r1, #0x34]
	mov r8, r1
	ldrh r2, [r1]
	str r2, [sp, #0xc]
	movs r3, #0
	str r3, [sp, #8]
	cmp r3, r2
	blo _080142DA
	b _08014446
_080142DA:
	mov r4, sp
	str r4, [sp, #0x10]
_080142DE:
	movs r6, #4
	add r8, r6
	ldr r2, _080143CC @ =gUnknown_0200AFC0
	ldr r0, [r2]
	ldr r1, [r2, #4]
	str r0, [r5]
	str r1, [r5, #4]
	ldr r1, _080143D0 @ =0x0000FFFF
	ldr r0, [sp]
	ands r0, r1
	add sl, r0
	mov r3, r8
	ldrh r3, [r3, #2]
	lsrs r0, r3, #0xc
	lsls r0, r0, #2
	ldr r4, _080143D4 @ =gSpriteSizeTable
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [sp]
	mov r6, r8
	movs r0, #0
	ldrsb r0, [r6, r0]
	mov r1, ip
	ldrh r1, [r1, #0x10]
	adds r3, r1, r0
	mov r2, sb
	strh r3, [r2, #4]
	strh r3, [r2]
	ldr r4, [sp, #0x10]
	ldrb r0, [r4, #3]
	adds r4, r3, r0
	strh r4, [r2, #4]
	movs r0, #1
	ldrsb r0, [r6, r0]
	mov r6, ip
	ldrh r6, [r6, #0x12]
	adds r2, r6, r0
	mov r0, sb
	strh r2, [r0, #6]
	strh r2, [r0, #2]
	ldr r1, [sp, #0x10]
	ldrb r0, [r1, #2]
	adds r6, r2, r0
	mov r0, sb
	strh r6, [r0, #6]
	ldrh r0, [r5, #4]
	lsls r1, r3, #0x10
	lsls r0, r0, #0x10
	cmp r1, r0
	bge _08014438
	ldrh r7, [r5]
	lsls r1, r4, #0x10
	adds r4, r7, #0
	lsls r0, r4, #0x10
	cmp r0, r1
	bge _08014438
	ldrh r0, [r5, #6]
	lsls r1, r2, #0x10
	lsls r0, r0, #0x10
	cmp r1, r0
	bge _08014438
	ldrh r2, [r5, #2]
	lsls r1, r2, #0x10
	lsls r0, r6, #0x10
	cmp r1, r0
	bge _08014438
	subs r0, r7, r3
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08014370
	movs r6, #0
	strh r6, [r5]
_08014370:
	mov r0, sb
	ldrh r3, [r0, #2]
	subs r0, r2, r3
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08014382
	movs r1, #0
	strh r1, [r5, #2]
_08014382:
	ldrh r1, [r5, #4]
	mov r4, sb
	ldrh r2, [r4, #4]
	lsls r1, r1, #0x10
	lsls r0, r2, #0x10
	cmp r1, r0
	ble _08014392
	strh r2, [r5, #4]
_08014392:
	ldrh r0, [r5, #4]
	mov r6, sb
	ldrh r6, [r6]
	subs r0, r0, r6
	strh r0, [r5, #4]
	ldrh r1, [r5, #6]
	mov r0, sb
	ldrh r2, [r0, #6]
	lsls r1, r1, #0x10
	lsls r0, r2, #0x10
	cmp r1, r0
	ble _080143AC
	strh r2, [r5, #6]
_080143AC:
	ldrh r0, [r5, #6]
	subs r0, r0, r3
	strh r0, [r5, #6]
	ldr r1, [sp, #0x10]
	ldrb r0, [r1, #3]
	lsrs r6, r0, #3
	movs r3, #2
	ldrsh r2, [r5, r3]
	b _08014430
	.align 2, 0
_080143C0: .4byte gAnimation
_080143C4: .4byte gUnknown_0200AFC8
_080143C8: .4byte gUnknown_0200AFD0
_080143CC: .4byte gUnknown_0200AFC0
_080143D0: .4byte 0x0000FFFF
_080143D4: .4byte gSpriteSizeTable
_080143D8:
	asrs r0, r2, #3
	muls r0, r6, r0
	lsls r1, r0, #5
	adds r0, r2, #0
	cmp r2, #0
	bge _080143E6
	adds r0, r2, #7
_080143E6:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r2, r0
	lsls r0, r0, #2
	adds r0, r1, r0
	mov r1, sl
	adds r4, r0, r1
	movs r3, #0
	ldrsh r1, [r5, r3]
	b _08014426
_080143FA:
	asrs r0, r1, #3
	lsls r3, r0, #5
	adds r0, r1, #0
	cmp r1, #0
	bge _08014406
	adds r0, r1, #7
_08014406:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	cmp r0, #1
	ble _08014416
	adds r0, r4, #1
	adds r0, r3, r0
	b _08014418
_08014416:
	adds r0, r3, r4
_08014418:
	ldrb r0, [r0]
	cmp r0, #0
	beq _08014424
	mov r4, ip
	ldrh r0, [r4, #0xc]
	b _08014454
_08014424:
	adds r1, #2
_08014426:
	movs r3, #4
	ldrsh r0, [r5, r3]
	cmp r1, r0
	blt _080143FA
	adds r2, #2
_08014430:
	movs r4, #6
	ldrsh r0, [r5, r4]
	cmp r2, r0
	blt _080143D8
_08014438:
	ldr r6, [sp, #8]
	adds r6, #1
	str r6, [sp, #8]
	ldr r0, [sp, #0xc]
	cmp r6, r0
	bhs _08014446
	b _080142DE
_08014446:
	mov r1, ip
	ldr r1, [r1, #8]
	mov ip, r1
	cmp r1, #0
	beq _08014452
	b _080142A4
_08014452:
	movs r0, #0
_08014454:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8014464
sub_8014464: @ 0x08014464
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldrh r4, [r1]
	mov sb, r4
	ldrh r5, [r0]
	subs r4, r5, r4
	str r4, [sp]
	ldrh r1, [r1, #2]
	mov r8, r1
	ldrh r0, [r0, #2]
	subs r1, r0, r1
	mov sl, r1
	ldrh r7, [r3]
	ldrh r4, [r2]
	subs r4, r4, r7
	mov ip, r4
	ldrh r5, [r3, #2]
	ldrh r2, [r2, #2]
	subs r6, r2, r5
	ldr r0, [sp]
	adds r1, r0, #0
	muls r1, r6, r1
	mov r0, sl
	muls r0, r4, r0
	subs r4, r1, r0
	cmp r4, #0
	beq _080144F4
	mov r1, sb
	subs r3, r1, r7
	mov r0, r8
	subs r2, r0, r5
	mov r1, ip
	muls r1, r2, r1
	adds r0, r3, #0
	muls r0, r6, r0
	subs r5, r1, r0
	ldr r0, [sp]
	adds r1, r2, #0
	muls r1, r0, r1
	mov r0, sl
	muls r0, r3, r0
	subs r0, r1, r0
	cmp r4, #0
	ble _080144CC
	cmp r5, #0
	blt _080144CC
	cmp r5, r4
	ble _080144D8
_080144CC:
	cmp r4, #0
	bge _080144F4
	cmp r5, r4
	blt _080144F4
	cmp r5, #0
	bgt _080144F4
_080144D8:
	cmp r4, #0
	ble _080144E4
	cmp r0, #0
	blt _080144E4
	cmp r0, r4
	ble _080144F0
_080144E4:
	cmp r4, #0
	bge _080144F4
	cmp r0, r4
	blt _080144F4
	cmp r0, #0
	bgt _080144F4
_080144F0:
	movs r0, #1
	b _080144F6
_080144F4:
	movs r0, #0
_080144F6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start CheckRectCollisionWithArea
CheckRectCollisionWithArea: @ 0x08014508
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r1, #0
	mov sl, r4
	mov r8, sp
	add r7, sp, #4
	mov r1, sl
	bl CheckPointInArea
	cmp r0, #0
	bne _080145DC
	mov r2, sp
	mov r0, sp
	ldrh r1, [r5]
	strh r1, [r0, #0xc]
	ldr r3, _080145D8 @ =0x0000FFFF
	strh r1, [r2]
	mov r4, sp
	ldrh r2, [r5, #2]
	strh r2, [r0, #6]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r4, #2]
	mov r0, sp
	ldrh r6, [r5, #4]
	adds r1, r6, r1
	strh r1, [r0, #8]
	ands r1, r3
	strh r1, [r4, #4]
	mov r1, sp
	ldrh r5, [r5, #6]
	adds r2, r5, r2
	strh r2, [r0, #0xe]
	ands r2, r3
	strh r2, [r1, #0xa]
	movs r0, #0
	mov sb, r0
_0801455C:
	mov r4, sl
	adds r5, r4, #4
	movs r6, #0
_08014562:
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	adds r3, r7, #0
	bl sub_8014464
	cmp r0, #0
	bne _080145DC
	adds r4, #4
	adds r5, #4
	adds r6, #1
	cmp r6, #2
	bls _08014562
	mov r5, sl
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	adds r3, r7, #0
	bl sub_8014464
	cmp r0, #0
	bne _080145DC
	movs r6, #4
	add r8, r6
	adds r7, #4
	movs r0, #1
	add sb, r0
	mov r6, sb
	cmp r6, #2
	bls _0801455C
	mov r7, sp
	adds r4, r5, #0
	adds r5, #4
	movs r6, #0
_080145A6:
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	adds r3, r7, #0
	bl sub_8014464
	cmp r0, #0
	bne _080145DC
	adds r4, #4
	adds r5, #4
	adds r6, #1
	cmp r6, #2
	bls _080145A6
	mov r5, sl
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	adds r3, r7, #0
	bl sub_8014464
	cmp r0, #0
	bne _080145DC
	movs r0, #0
	b _080145DE
	.align 2, 0
_080145D8: .4byte 0x0000FFFF
_080145DC:
	movs r0, #1
_080145DE:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80145F0
sub_80145F0: @ 0x080145F0
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r3, _08014600 @ =gAnimation
	movs r4, #0
	movs r0, #0x26
	adds r0, r0, r2
	mov ip, r0
	b _08014606
	.align 2, 0
_08014600: .4byte gAnimation
_08014604:
	adds r4, #1
_08014606:
	cmp r4, #0x1f
	bhi _08014632
	ldr r1, [r3, #8]
	cmp r1, #0
	bne _08014616
	str r3, [r2, #4]
	str r2, [r3, #8]
	b _08014632
_08014616:
	adds r3, r1, #0
	adds r0, r1, #0
	adds r0, #0x26
	ldrb r0, [r0]
	mov r5, ip
	ldrb r5, [r5]
	cmp r0, r5
	bhs _08014604
	ldr r0, [r1, #4]
	str r0, [r2, #4]
	str r1, [r2, #8]
	ldr r0, [r1, #4]
	str r2, [r0, #8]
	str r2, [r1, #4]
_08014632:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8014638
sub_8014638: @ 0x08014638
	push {r4, lr}
	adds r2, r0, #0
	cmp r2, #1
	beq _08014646
	cmp r2, #2
	beq _08014668
	b _0801467E
_08014646:
	ldr r3, _08014664 @ =gMain
	adds r4, r3, #0
	adds r4, #0xdc
	ldr r1, [r4]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _0801467E
	movs r0, #0x1e
	strh r0, [r3, #0x14]
	orrs r1, r2
	str r1, [r4]
	strb r2, [r3, #0x16]
	b _0801467E
	.align 2, 0
_08014664: .4byte gMain
_08014668:
	ldr r0, _08014684 @ =gMain
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801467E
	movs r0, #3
	movs r1, #1
	movs r2, #8
	movs r3, #0x1f
	bl StartHardwareBlend
_0801467E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08014684: .4byte gMain

	thumb_func_start PlayPersonAnimation
PlayPersonAnimation: @ 0x08014688
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	movs r2, #0x78
	ldr r1, _080146EC @ =gMain
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r4
	cmp r0, #0
	beq _080146B0
	adds r3, r1, #0
	adds r3, #0x42
	movs r0, #0x10
	ldrh r3, [r3]
	ands r0, r3
	cmp r0, #0
	beq _080146B0
	subs r2, #0xf0
_080146B0:
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _080146C8
	adds r1, #0x42
	movs r0, #0x20
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _080146C8
	adds r2, #0xf0
_080146C8:
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r4
	cmp r0, #0
	beq _080146D6
	movs r0, #1
	orrs r5, r0
_080146D6:
	str r5, [sp]
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #0x50
	bl sub_8014704
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080146EC: .4byte gMain

	thumb_func_start sub_80146F0
sub_80146F0: @ 0x080146F0
	ldr r0, _08014700 @ =gMain
	adds r2, r0, #0
	adds r2, #0xb8
	strh r1, [r2]
	adds r0, #0xb6
	strh r1, [r0]
	bx lr
	.align 2, 0
_08014700: .4byte gMain

	thumb_func_start sub_8014704
sub_8014704: @ 0x08014704
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x20
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r0, _08014738 @ =gMain
	mov r8, r0
	ldr r5, _0801473C @ =gAnimation+0x44
	movs r2, #0xff
	adds r1, r4, #0
	ands r1, r2
	cmp r1, #0
	bne _08014740
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08014734
	adds r0, r5, #0
	bl DestroyAnimation
_08014734:
	movs r0, #0
	b _080147F8
	.align 2, 0
_08014738: .4byte gMain
_0801473C: .4byte gAnimation+0x44
_08014740:
	mov r0, sp
	strh r2, [r0]
	strh r4, [r0, #2]
	adds r4, r1, #0
	ldr r0, _08014794 @ =0x06015800
	str r0, [sp, #0x10]
	ldr r2, _08014798 @ =gPersonAnimData
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r1, r0, r2
	ldr r1, [r1]
	str r1, [sp, #0x14]
	adds r1, r2, #4
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r6
	str r0, [sp, #8]
	mov r1, sp
	movs r0, #0xe
	strb r0, [r1, #0x18]
	ldrh r1, [r5, #0xc]
	cmp r1, #0xff
	bne _08014784
	cmp r4, #0x10
	bne _0801477A
	mov r1, sp
	movs r0, #0xd
	strb r0, [r1, #0x18]
_0801477A:
	cmp r4, #0x27
	bne _08014784
	mov r1, sp
	movs r0, #0xd
	strb r0, [r1, #0x18]
_08014784:
	mov r0, r8
	ldrb r0, [r0, #8]
	cmp r0, #3
	bne _0801479C
	mov r1, sp
	movs r0, #0x27
	strb r0, [r1, #0x19]
	b _080147AA
	.align 2, 0
_08014794: .4byte 0x06015800
_08014798: .4byte gPersonAnimData
_0801479C:
	mov r0, sp
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r1, [r1, #8]
	strb r1, [r0, #0x19]
_080147AA:
	mov r1, sp
	movs r0, #0x31
	strb r0, [r1, #0x1a]
	mov r0, sp
	strh r7, [r0, #4]
	strh r3, [r0, #6]
	ldr r2, [r5]
	movs r3, #0x80
	lsls r3, r3, #0x15
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	bne _080147E2
	add r1, sp, #0x1c
	strh r0, [r1]
	ldr r0, _08014804 @ =0x040000D4
	str r1, [r0]
	str r5, [r0, #4]
	ldr r1, _08014808 @ =0x81000022
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	orrs r2, r3
	str r2, [r5]
	movs r0, #0xff
	strh r0, [r5, #0xc]
	adds r0, r5, #0
	bl sub_80145F0
_080147E2:
	adds r4, r5, #0
	adds r4, #0x2c
	mov r0, sp
	movs r1, #0xff
	ldr r2, [sp, #0x38]
	bl sub_8014AB8
	mov r1, r8
	ldrh r0, [r1, #0x2e]
	strb r0, [r4]
	adds r0, r5, #0
_080147F8:
	add sp, #0x20
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08014804: .4byte 0x040000D4
_08014808: .4byte 0x81000022

	thumb_func_start PlayAnimation
PlayAnimation: @ 0x0801480C
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r2, _08014844 @ =gMain
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _08014848 @ =gAnimationData
	adds r0, r0, r1
	movs r4, #0xc
	ldrsh r1, [r0, r4]
	movs r5, #0xe
	ldrsh r4, [r0, r5]
	adds r2, #0x42
	movs r0, #0x10
	ldrh r2, [r2]
	ands r0, r2
	cmp r0, #0
	beq _08014836
	cmp r3, #8
	bls _08014836
	subs r1, #0xf0
_08014836:
	adds r0, r3, #0
	adds r2, r4, #0
	bl PlayAnimationAtCustomOrigin
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08014844: .4byte gMain
_08014848: .4byte gAnimationData

	thumb_func_start PlayAnimationAtCustomOrigin
PlayAnimationAtCustomOrigin: @ 0x0801484C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r0, _08014918 @ =gMain
	mov r8, r0
	lsls r3, r5, #2
	adds r3, r3, r5
	lsls r3, r3, #2
	ldr r0, _0801491C @ =gAnimationData
	adds r3, r3, r0
	mov r0, sp
	strh r5, [r0]
	ldr r0, [r3, #4]
	str r0, [sp, #0x10]
	ldr r0, [r3]
	str r0, [sp, #0x14]
	ldr r0, [r3, #8]
	str r0, [sp, #8]
	mov r4, sp
	ldrb r0, [r3, #0x10]
	strb r0, [r4, #0x18]
	ldrb r0, [r3, #0x11]
	strb r0, [r4, #0x19]
	ldrb r0, [r3, #0x12]
	strb r0, [r4, #0x1a]
	mov r0, sp
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	ldrb r2, [r3, #0x13]
	adds r1, r5, #0
	bl sub_8014AB8
	adds r4, r0, #0
	cmp r5, #0x73
	bne _0801489A
	movs r0, #0x18
	strh r0, [r4, #0x2e]
_0801489A:
	cmp r5, #0x12
	bne _080148A2
	movs r0, #0
	strh r0, [r4, #0x2e]
_080148A2:
	adds r6, r4, #0
	adds r6, #0x24
	ldrb r3, [r6]
	subs r1, r3, #6
	movs r5, #1
	lsls r5, r1
	mov r7, r8
	adds r7, #0x24
	ldrb r2, [r7]
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	bne _080148EA
	cmp r3, #9
	bhi _080148EA
	orrs r2, r5
	strb r2, [r7]
	ldrb r6, [r6]
	lsls r0, r6, #5
	ldr r2, _08014920 @ =0x05000200
	adds r5, r0, r2
	lsls r3, r1, #5
	ldr r0, _08014924 @ =gObjPaletteBuffer
	adds r3, r3, r0
	ldr r0, [r4, #0x20]
	ldr r1, [r0]
	lsls r1, r1, #5
	ldr r2, _08014928 @ =0x040000D4
	str r5, [r2]
	str r3, [r2, #4]
	lsrs r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r2, #8]
	ldr r0, [r2, #8]
_080148EA:
	mov r0, r8
	ldrh r1, [r0, #0x2e]
	adds r0, r4, #0
	adds r0, #0x2c
	strb r1, [r0]
	mov r0, r8
	adds r0, #0xb2
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x2d
	strb r0, [r1]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r4]
	adds r0, r4, #0
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08014918: .4byte gMain
_0801491C: .4byte gAnimationData
_08014920: .4byte 0x05000200
_08014924: .4byte gObjPaletteBuffer
_08014928: .4byte 0x040000D4

	thumb_func_start sub_801492C
sub_801492C: @ 0x0801492C
	push {r4, r5, r6, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	ldr r6, _08014A64 @ =gAnimation+0x44
	bl ResetAnimationSystem
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08014A1A
	mov r1, sp
	movs r0, #0xff
	strh r0, [r1]
	mov r0, sp
	ldrb r3, [r4, #2]
	strb r3, [r0, #2]
	ldr r0, _08014A68 @ =0x06015800
	str r0, [sp, #0x10]
	ldr r2, _08014A6C @ =gPersonAnimData
	ldrb r1, [r4, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	mov r1, sp
	movs r0, #0xe
	strb r0, [r1, #0x18]
	ldrb r5, [r4, #2]
	ldrh r0, [r6, #0xc]
	cmp r0, #0xff
	bne _0801498C
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x10
	bne _08014982
	movs r0, #0xd
	strb r0, [r1, #0x18]
_08014982:
	cmp r3, #0x27
	bne _0801498C
	mov r1, sp
	movs r0, #0xd
	strb r0, [r1, #0x18]
_0801498C:
	mov r1, sp
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #8]
	strb r0, [r1, #0x19]
	movs r0, #0x31
	strb r0, [r1, #0x1a]
	ldrh r0, [r4, #4]
	strh r0, [r1, #4]
	ldrh r0, [r4, #6]
	strh r0, [r1, #6]
	ldr r1, _08014A70 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	adds r0, r6, #0
	adds r0, #0xc
	str r0, [r1, #4]
	ldr r0, _08014A74 @ =0x8000000E
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, [r6, #0x14]
	str r2, [r6, #0x38]
	ldr r1, [r6, #0x20]
	ldr r0, [r2, #4]
	adds r1, r1, r0
	str r1, [r6, #0x20]
	ldr r0, [r1]
	lsls r0, r0, #5
	adds r0, #4
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldr r0, [r4, #0x18]
	str r0, [r6, #0x38]
	ldrh r0, [r0]
	adds r2, r0, r2
	str r2, [r6, #0x34]
	ldr r0, [r4, #0x14]
	movs r1, #0x82
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r6]
	ldr r0, [r6, #0x1c]
	lsrs r0, r0, #5
	ldrh r3, [r6, #0x3c]
	orrs r0, r3
	strh r0, [r6, #0x3c]
	adds r1, r6, #0
	adds r1, #0x42
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r5, r6, #0
	adds r5, #0x26
	ldrb r0, [r5]
	lsrs r1, r0, #4
	adds r0, r6, #0
	bl sub_80141C4
	movs r0, #0xf
	ldrb r1, [r5]
	ands r0, r1
	strb r0, [r5]
	ldrb r1, [r4, #0x10]
	adds r0, r6, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r6, #0
	bl sub_80145F0
_08014A1A:
	adds r4, #0x1c
	movs r5, #2
_08014A1E:
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08014A54
	ldrh r0, [r4]
	movs r2, #4
	ldrsh r1, [r4, r2]
	movs r3, #6
	ldrsh r2, [r4, r3]
	bl PlayAnimationAtCustomOrigin
	adds r6, r0, #0
	ldr r0, [r4, #0x14]
	movs r1, #0x82
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r6]
	ldr r1, [r4, #0x18]
	str r1, [r6, #0x38]
	ldr r0, [r6, #0x14]
	ldrh r1, [r1]
	adds r0, r1, r0
	str r0, [r6, #0x34]
	ldr r0, [r4, #0x10]
	str r0, [r6, #0x2c]
_08014A54:
	adds r5, #1
	adds r4, #0x1c
	cmp r5, #0x1f
	bls _08014A1E
	add sp, #0x1c
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08014A64: .4byte gAnimation+0x44
_08014A68: .4byte 0x06015800
_08014A6C: .4byte gPersonAnimData
_08014A70: .4byte 0x040000D4
_08014A74: .4byte 0x8000000E

	thumb_func_start sub_8014A78
sub_8014A78: @ 0x08014A78
	adds r1, r0, #0
	ldr r2, _08014AB0 @ =gAnimation+0x44
	ldr r3, _08014AB4 @ =0x0000083C
	adds r0, r2, r3
	cmp r2, r0
	bhs _08014AAA
	adds r3, r0, #0
_08014A86:
	ldr r0, [r2, #0xc]
	str r0, [r1]
	ldr r0, [r2, #0x10]
	str r0, [r1, #4]
	ldr r0, [r2, #0x28]
	str r0, [r1, #0xc]
	ldr r0, [r2, #0x2c]
	str r0, [r1, #0x10]
	ldr r0, [r2, #0x14]
	str r0, [r1, #8]
	ldr r0, [r2]
	str r0, [r1, #0x14]
	ldr r0, [r2, #0x38]
	str r0, [r1, #0x18]
	adds r2, #0x44
	adds r1, #0x1c
	cmp r2, r3
	blo _08014A86
_08014AAA:
	adds r0, r1, #0
	bx lr
	.align 2, 0
_08014AB0: .4byte gAnimation+0x44
_08014AB4: .4byte 0x0000083C

	thumb_func_start sub_8014AB8
sub_8014AB8: @ 0x08014AB8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r2, #0
	ldrh r0, [r5]
	bl sub_8013EE8
	adds r4, r0, #0
	cmp r4, #0
	bne _08014ACE
	movs r0, #0
	b _08014B70
_08014ACE:
	ldr r1, _08014B78 @ =0x040000D4
	str r5, [r1]
	adds r0, r4, #0
	adds r0, #0xc
	str r0, [r1, #4]
	ldr r0, _08014B7C @ =0x8000000E
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #0x20]
	ldr r0, [r2, #4]
	adds r1, r1, r0
	str r1, [r4, #0x20]
	ldr r0, [r1]
	lsls r0, r0, #5
	adds r0, #4
	adds r1, r1, r0
	str r1, [r4, #0x18]
	adds r0, r2, #0
	adds r0, #8
	str r0, [r4, #0x38]
	ldrh r0, [r2, #8]
	adds r2, r0, r2
	str r2, [r4, #0x34]
	ldr r1, [r4]
	orrs r1, r6
	str r1, [r4]
	movs r0, #0x10
	ands r0, r6
	cmp r0, #0
	beq _08014B12
	ldr r0, _08014B80 @ =0x7FFFFFFF
	ands r1, r0
	str r1, [r4]
_08014B12:
	ldr r0, [r4, #0x1c]
	lsrs r0, r0, #5
	ldrh r1, [r4, #0x3c]
	orrs r0, r1
	movs r1, #0
	strh r0, [r4, #0x3c]
	adds r0, r4, #0
	adds r0, #0x40
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r5, r4, #0
	adds r5, #0x26
	ldrb r2, [r5]
	lsrs r1, r2, #4
	adds r0, r4, #0
	bl sub_80141C4
	movs r0, #0xf
	ldrb r1, [r5]
	ands r0, r1
	strb r0, [r5]
	adds r0, r4, #0
	bl sub_80145F0
	ldr r1, [r4, #0x38]
	movs r0, #2
	ldrb r2, [r1, #3]
	ands r0, r2
	cmp r0, #0
	beq _08014B5C
	ldrb r0, [r1, #4]
	bl PlaySE
_08014B5C:
	ldr r1, [r4, #0x38]
	movs r0, #4
	ldrb r2, [r1, #3]
	ands r0, r2
	cmp r0, #0
	beq _08014B6E
	ldrb r0, [r1, #5]
	bl sub_8014638
_08014B6E:
	adds r0, r4, #0
_08014B70:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08014B78: .4byte 0x040000D4
_08014B7C: .4byte 0x8000000E
_08014B80: .4byte 0x7FFFFFFF

	thumb_func_start sub_8014B84
sub_8014B84: @ 0x08014B84
	push {r4, lr}
	adds r4, r0, #0
	movs r3, #4
	ldr r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08014BA0
	orrs r1, r2
	str r1, [r4]
	movs r0, #4
	b _08014C60
_08014BA0:
	ldr r0, _08014BB4 @ =gScriptContext
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _08014BB8
	ldrh r0, [r4, #0xc]
	cmp r0, #0xff
	bne _08014BB8
	movs r0, #4
	b _08014C60
	.align 2, 0
_08014BB4: .4byte gScriptContext
_08014BB8:
	ldr r2, [r4, #0x38]
	ldrb r1, [r2, #2]
	ldrh r0, [r4, #0x28]
	adds r0, #1
	strh r0, [r4, #0x28]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _08014C5E
	movs r0, #0
	strh r0, [r4, #0x28]
	adds r1, r2, #0
	adds r1, #8
	str r1, [r4, #0x38]
	movs r0, #2
	ldrb r2, [r1, #3]
	ands r0, r2
	cmp r0, #0
	beq _08014BE4
	ldrb r0, [r1, #4]
	bl PlaySE
_08014BE4:
	ldr r1, [r4, #0x38]
	movs r0, #4
	ldrb r2, [r1, #3]
	ands r0, r2
	cmp r0, #0
	beq _08014BF6
	ldrb r0, [r1, #5]
	bl sub_8014638
_08014BF6:
	ldr r0, [r4, #0x38]
	ldrb r1, [r0, #2]
	adds r2, r0, #0
	cmp r1, #0xfe
	beq _08014C2A
	cmp r1, #0xfe
	bgt _08014C0A
	cmp r1, #0xfd
	beq _08014C40
	b _08014C4A
_08014C0A:
	cmp r1, #0xff
	bne _08014C4A
	ldr r0, [r4, #0x14]
	adds r1, r0, #0
	adds r1, #8
	str r1, [r4, #0x38]
	ldrh r1, [r0, #8]
	adds r0, r1, r0
	str r0, [r4, #0x34]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r4]
	movs r3, #7
	b _08014C5E
_08014C2A:
	ldr r0, [r4]
	ldr r1, _08014C3C @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r4]
	movs r3, #0
	adds r0, r2, #0
	subs r0, #8
	str r0, [r4, #0x38]
	b _08014C5E
	.align 2, 0
_08014C3C: .4byte 0x7FFFFFFF
_08014C40:
	adds r0, r4, #0
	bl DestroyAnimation
	movs r3, #0
	b _08014C5E
_08014C4A:
	ldr r0, [r4, #0x14]
	ldrh r2, [r2]
	adds r0, r2, r0
	str r0, [r4, #0x34]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r4]
	movs r3, #5
_08014C5E:
	adds r0, r3, #0
_08014C60:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8014C68
sub_8014C68: @ 0x08014C68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	adds r7, r1, #0
	ldr r0, _08014D04 @ =gAnimation
	ldr r4, [r0, #8]
	cmp r4, #0
	beq _08014CF6
_08014C7E:
	ldr r0, [r4]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _08014CF0
	ldrh r0, [r4, #0x10]
	add r0, r8
	strh r0, [r4, #0x10]
	ldrh r1, [r4, #0x12]
	adds r0, r1, r7
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r5, _08014D08 @ =gOamObjects
	adds r3, r0, r5
	movs r2, #0x3f
	adds r2, r2, r4
	mov ip, r2
	ldrb r1, [r2]
	lsls r0, r1, #3
	adds r0, r0, r5
	cmp r3, r0
	bhs _08014CF0
	movs r2, #0xff
	mov sl, r2
	ldr r6, _08014D0C @ =0x000001FF
	movs r0, #0xfe
	lsls r0, r0, #8
	mov sb, r0
_08014CBC:
	movs r1, #0xff
	lsls r1, r1, #8
	ldrh r2, [r3]
	ands r1, r2
	ldrb r2, [r3]
	adds r0, r2, r7
	mov r2, sl
	ands r0, r2
	orrs r1, r0
	strh r1, [r3]
	ldrh r2, [r3, #2]
	adds r0, r6, #0
	ands r0, r2
	mov r1, sb
	ands r1, r2
	add r0, r8
	ands r0, r6
	orrs r1, r0
	strh r1, [r3, #2]
	adds r3, #8
	mov r1, ip
	ldrb r1, [r1]
	lsls r0, r1, #3
	adds r0, r0, r5
	cmp r3, r0
	blo _08014CBC
_08014CF0:
	ldr r4, [r4, #8]
	cmp r4, #0
	bne _08014C7E
_08014CF6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014D04: .4byte gAnimation
_08014D08: .4byte gOamObjects
_08014D0C: .4byte 0x000001FF

	thumb_func_start StartAnimationBlend
StartAnimationBlend: @ 0x08014D10
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	mov sb, r1
	ldr r0, _08014D3C @ =gIORegisters
	mov r8, r0
	ldr r7, _08014D40 @ =gMain
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r4
	cmp r0, #0
	beq _08014D44
	lsrs r0, r4, #8
	movs r1, #0xff
	ands r4, r1
	bl FindAnimationFromAnimId
	adds r3, r0, #0
	b _08014D46
	.align 2, 0
_08014D3C: .4byte gIORegisters
_08014D40: .4byte gMain
_08014D44:
	ldr r3, _08014D8C @ =gAnimation+0x44
_08014D46:
	mov r0, r8
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0x10
	beq _08014E1E
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r2
	cmp r0, #0
	bne _08014D64
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08014E1E
_08014D64:
	movs r5, #1
	ands r5, r4
	cmp r5, #0
	beq _08014D98
	ldr r0, _08014D90 @ =gUnknown_02000004
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #0x12
	cmp r0, r1
	beq _08014E1E
	ldr r0, _08014D94 @ =0xF3FFFFFB
	ands r2, r0
	str r2, [r3]
	adds r1, r7, #0
	adds r1, #0x83
	movs r0, #0x10
	strb r0, [r1]
	adds r2, r1, #0
	b _08014DE0
	.align 2, 0
_08014D8C: .4byte gAnimation+0x44
_08014D90: .4byte gUnknown_02000004
_08014D94: .4byte 0xF3FFFFFB
_08014D98:
	movs r6, #4
	adds r0, r4, #0
	ands r0, r6
	cmp r0, #0
	beq _08014E1E
	ldr r1, _08014E2C @ =gUnknown_02000004
	adds r0, r2, #0
	ands r0, r1
	cmp r0, r1
	beq _08014E1E
	orrs r2, r6
	str r2, [r3]
	adds r0, r7, #0
	adds r0, #0x83
	strb r5, [r0]
	ldr r1, [r3]
	movs r2, #0x40
	ands r1, r2
	adds r2, r0, #0
	cmp r1, #0
	beq _08014DCE
	strb r6, [r2]
	ldr r0, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3]
_08014DCE:
	movs r0, #0xc
	ands r0, r4
	cmp r0, #0
	beq _08014DE0
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r3]
_08014DE0:
	ldr r0, [r3]
	movs r1, #0x88
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r3]
	adds r0, r7, #0
	adds r0, #0x82
	movs r1, #0
	mov r3, sb
	strb r3, [r0]
	subs r0, #2
	strh r1, [r0]
	mov r3, r8
	adds r3, #0x48
	movs r0, #0x84
	lsls r0, r0, #4
	strh r0, [r3]
	ldrb r2, [r2]
	lsls r1, r2, #8
	movs r0, #0x10
	subs r0, r0, r2
	orrs r1, r0
	mov r2, r8
	adds r2, #0x4c
	strh r1, [r2]
	ldr r1, _08014E30 @ =0x04000050
	ldrh r0, [r3]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r2]
	strh r0, [r1]
_08014E1E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014E2C: .4byte gUnknown_02000004
_08014E30: .4byte 0x04000050

	thumb_func_start sub_8014E34
sub_8014E34: @ 0x08014E34
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r5, _08014E54 @ =gMain
	ldr r7, _08014E58 @ =gIORegisters
	movs r6, #0
	adds r0, r5, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _08014E60
	ldr r0, [r4]
	ldr r1, _08014E5C @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r4]
	b _08014F54
	.align 2, 0
_08014E54: .4byte gMain
_08014E58: .4byte gIORegisters
_08014E5C: .4byte 0xFDFFFFFF
_08014E60:
	ldrb r0, [r4, #0xe]
	cmp r0, #0x20
	bne _08014E7A
	movs r0, #0x3d
	bl FindAnimationFromAnimId
	adds r6, r0, #0
	cmp r6, #0
	bne _08014E7A
	movs r0, #0x3e
	bl FindAnimationFromAnimId
	adds r6, r0, #0
_08014E7A:
	adds r3, r5, #0
	adds r3, #0x80
	ldrh r0, [r3]
	adds r0, #1
	movs r1, #0
	mov ip, r1
	strh r0, [r3]
	adds r1, r5, #0
	adds r1, #0x82
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r5, #0
	adds r2, #0x83
	ldrb r1, [r1]
	cmp r0, r1
	blo _08014F44
	movs r0, #0
	strh r0, [r3]
	ldr r0, [r4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08014F0A
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bne _08014F44
	adds r1, r7, #0
	adds r1, #0x48
	ldr r0, _08014EEC @ =0x00001942
	strh r0, [r1]
	adds r1, #4
	ldr r0, _08014EF0 @ =0x0000071F
	strh r0, [r1]
	ldr r0, [r4]
	ldr r1, _08014EF4 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ands r0, r1
	cmp r0, #0
	beq _08014EF8
	adds r0, r4, #0
	movs r1, #0
	bl ChangeAnimationActivity
	cmp r6, #0
	beq _08014F54
	adds r0, r6, #0
	movs r1, #0
	bl ChangeAnimationActivity
	b _08014F54
	.align 2, 0
_08014EEC: .4byte 0x00001942
_08014EF0: .4byte 0x0000071F
_08014EF4: .4byte 0xFDFFFFFF
_08014EF8:
	adds r0, r4, #0
	bl DestroyAnimation
	cmp r6, #0
	beq _08014F54
	adds r0, r6, #0
	bl DestroyAnimation
	b _08014F54
_08014F0A:
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08014F44
	adds r1, r7, #0
	adds r1, #0x48
	ldr r0, _08014F38 @ =0x00001942
	strh r0, [r1]
	adds r1, #4
	ldr r0, _08014F3C @ =0x0000071F
	strh r0, [r1]
	ldr r0, [r4]
	ldr r1, _08014F40 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r4]
	cmp r6, #0
	beq _08014F54
	ldr r0, [r6]
	ands r0, r1
	str r0, [r6]
	b _08014F54
	.align 2, 0
_08014F38: .4byte 0x00001942
_08014F3C: .4byte 0x0000071F
_08014F40: .4byte 0xFDFFFFFF
_08014F44:
	ldrb r2, [r2]
	lsls r1, r2, #8
	movs r0, #0x10
	subs r0, r0, r2
	orrs r1, r0
	adds r0, r7, #0
	adds r0, #0x4c
	strh r1, [r0]
_08014F54:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8014F5C
sub_8014F5C: @ 0x08014F5C
	push {r4, r5, lr}
	ldr r2, _08014F90 @ =gAnimation
	movs r1, #0x88
	lsls r1, r1, #4
	adds r0, r2, r1
	cmp r2, r0
	bhs _08014F88
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r4, #0xc0
	lsls r4, r4, #0x17
	adds r3, r0, #0
_08014F74:
	ldr r1, [r2]
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	beq _08014F82
	orrs r1, r4
	str r1, [r2]
_08014F82:
	adds r2, #0x44
	cmp r2, r3
	blo _08014F74
_08014F88:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014F90: .4byte gAnimation

	thumb_func_start DestroyAnimation
DestroyAnimation: @ 0x08014F94
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, _08014FBC @ =gMain
	cmp r4, #0
	beq _0801507A
	ldr r0, [r4, #0xc]
	ldr r1, _08014FC0 @ =0x00FFFFFF
	ands r0, r1
	ldr r1, _08014FC4 @ =0x002000FF
	cmp r0, r1
	bne _08014FD6
	movs r0, #0x3d
	bl FindAnimationFromAnimId
	cmp r0, #0
	beq _08014FC8
	bl DestroyAnimation
	b _08014FD6
	.align 2, 0
_08014FBC: .4byte gMain
_08014FC0: .4byte 0x00FFFFFF
_08014FC4: .4byte 0x002000FF
_08014FC8:
	movs r0, #0x3e
	bl FindAnimationFromAnimId
	cmp r0, #0
	beq _08014FD6
	bl DestroyAnimation
_08014FD6:
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0801507A
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r3, _08015080 @ =gOamObjects
	adds r1, r0, r3
	adds r2, r4, #0
	adds r2, #0x3f
	ldrb r5, [r2]
	lsls r0, r5, #3
	adds r0, r0, r3
	movs r7, #0x25
	adds r7, r7, r6
	mov ip, r7
	cmp r1, r0
	bhs _08015014
	movs r5, #0x80
	lsls r5, r5, #2
_08015006:
	strh r5, [r1]
	adds r1, #8
	ldrb r7, [r2]
	lsls r0, r7, #3
	adds r0, r0, r3
	cmp r1, r0
	blo _08015006
_08015014:
	movs r0, #4
	movs r1, #0
	mov r2, ip
	ldrb r2, [r2]
	orrs r0, r2
	mov r3, ip
	strb r0, [r3]
	str r1, [r4]
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	str r0, [r1, #8]
	ldr r1, [r4, #8]
	ldr r0, [r4, #4]
	str r0, [r1, #4]
	ldrh r5, [r4, #0xc]
	cmp r5, #0xff
	beq _0801507A
	adds r3, r4, #0
	adds r3, #0x24
	ldrb r7, [r3]
	cmp r7, #9
	bhi _0801507A
	adds r2, r7, #0
	subs r2, #6
	movs r0, #1
	lsls r0, r2
	adds r1, r6, #0
	adds r1, #0x24
	ldrb r5, [r1]
	bics r5, r0
	adds r0, r5, #0
	strb r0, [r1]
	lsls r2, r2, #5
	ldr r0, _08015084 @ =gObjPaletteBuffer
	adds r5, r2, r0
	ldrb r3, [r3]
	lsls r1, r3, #5
	ldr r7, _08015088 @ =0x05000200
	adds r1, r1, r7
	ldr r0, [r4, #0x20]
	ldr r0, [r0]
	lsls r0, r0, #5
	ldr r2, _0801508C @ =0x040000D4
	str r5, [r2]
	str r1, [r2, #4]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0801507A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015080: .4byte gOamObjects
_08015084: .4byte gObjPaletteBuffer
_08015088: .4byte 0x05000200
_0801508C: .4byte 0x040000D4

	thumb_func_start sub_8015090
sub_8015090: @ 0x08015090
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r0, _080151F8 @ =gMain
	str r0, [sp]
	movs r6, #0x80
	ldr r5, _080151FC @ =gBG0MapBuffer
	ldr r0, _08015200 @ =gAnimation
	ldr r0, [r0, #8]
	mov ip, r0
	ldr r1, [sp]
	str r1, [sp, #0x18]
	cmp r0, #0
	bne _080150B4
	b _08015378
_080150B4:
	mov r2, ip
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	bne _080150C4
	b _0801536C
_080150C4:
	mov r1, ip
	adds r1, #0x3f
	strb r6, [r1]
	ldr r2, [sp]
	adds r2, #0x25
	movs r0, #2
	ldrb r2, [r2]
	ands r0, r2
	str r1, [sp, #0x14]
	mov r3, ip
	adds r3, #0x25
	str r3, [sp, #0xc]
	mov r7, ip
	adds r7, #0x3e
	str r7, [sp, #0x10]
	cmp r0, #0
	bne _080150E8
	b _080152E2
_080150E8:
	mov r1, ip
	ldr r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #0x16
	ands r0, r1
	cmp r0, #0
	bne _080150F8
	b _080152E2
_080150F8:
	mov r2, ip
	ldr r3, [r2, #0x34]
	movs r7, #0x10
	ldrsh r1, [r2, r7]
	ldr r2, [sp]
	movs r0, #0x12
	ldrsb r0, [r2, r0]
	subs r1, r1, r0
	str r1, [sp, #0x20]
	mov r7, ip
	movs r0, #0x12
	ldrsh r1, [r7, r0]
	movs r0, #0x13
	ldrsb r0, [r2, r0]
	subs r1, r1, r0
	mov sb, r1
	ldr r1, _08015204 @ =0x00000FFF
	ldrh r2, [r7, #0x3c]
	ands r2, r1
	mov sl, r2
	ldrh r7, [r3]
	str r7, [sp, #8]
	lsls r0, r6, #2
	ldr r1, _08015208 @ =gUnknown_0200AFC0
	adds r4, r0, r1
	movs r2, #0
	str r2, [sp, #4]
	cmp r2, r7
	blo _08015134
	b _080152E2
_08015134:
	ldr r7, _0801520C @ =gSpriteSizeTable
	str r7, [sp, #0x1c]
	movs r0, #0x24
	add r0, ip
	mov r8, r0
_0801513E:
	subs r6, #1
	subs r5, #8
	subs r4, #4
	adds r3, #4
	ldrh r1, [r3, #2]
	lsrs r0, r1, #0xc
	lsls r0, r0, #2
	ldr r2, [sp, #0x1c]
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r4]
	movs r0, #0xc0
	lsls r0, r0, #6
	ldrh r7, [r3, #2]
	ands r0, r7
	lsls r2, r0, #2
	strh r2, [r5]
	mov r1, ip
	ldr r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #0xd
	ands r0, r1
	cmp r0, #0
	beq _0801518C
	ldrb r7, [r4, #3]
	lsrs r0, r7, #1
	ldr r1, [sp, #0x20]
	subs r1, r1, r0
	str r1, [sp, #0x20]
	ldrb r7, [r4, #2]
	lsrs r0, r7, #1
	mov r1, sb
	subs r1, r1, r0
	mov sb, r1
	movs r7, #0xc0
	lsls r7, r7, #2
	adds r0, r7, #0
	orrs r2, r0
	strh r2, [r5]
_0801518C:
	movs r0, #1
	ldrsb r0, [r3, r0]
	mov r2, sb
	adds r1, r2, r0
	movs r0, #0x60
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080151A0
	movs r1, #0x58
	rsbs r1, r1, #0
_080151A0:
	cmp r1, #0xe0
	ble _080151A6
	movs r1, #0xe0
_080151A6:
	movs r0, #0xff
	adds r2, r1, #0
	ands r2, r0
	ldrh r7, [r5]
	orrs r2, r7
	strh r2, [r5]
	mov r1, ip
	ldr r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _080151CA
	movs r7, #0x80
	lsls r7, r7, #3
	adds r0, r7, #0
	orrs r2, r0
	strh r2, [r5]
_080151CA:
	movs r2, #0xc0
	lsls r2, r2, #8
	ldrh r0, [r3, #2]
	ands r2, r0
	strh r2, [r5, #2]
	mov r1, ip
	ldr r0, [r1]
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	beq _08015214
	movs r0, #0
	ldrsb r0, [r3, r0]
	ldrb r1, [r4, #3]
	adds r0, r1, r0
	ldr r7, [sp, #0x20]
	subs r0, r7, r0
	ldr r1, _08015210 @ =0x000001FF
	ands r0, r1
	movs r7, #0x80
	lsls r7, r7, #5
	orrs r0, r7
	b _0801522A
	.align 2, 0
_080151F8: .4byte gMain
_080151FC: .4byte gBG0MapBuffer
_08015200: .4byte gAnimation
_08015204: .4byte 0x00000FFF
_08015208: .4byte gUnknown_0200AFC0
_0801520C: .4byte gSpriteSizeTable
_08015210: .4byte 0x000001FF
_08015214:
	movs r0, #0
	ldrsb r0, [r3, r0]
	ldr r1, [sp, #0x20]
	adds r0, r0, r1
	ldr r7, _0801525C @ =0x000001FF
	ands r0, r7
	mov r1, ip
	adds r1, #0x42
	ldrb r1, [r1]
	lsls r1, r1, #9
	orrs r0, r1
_0801522A:
	orrs r2, r0
	strh r2, [r5, #2]
	mov r0, ip
	adds r0, #0x43
	ldrb r0, [r0]
	lsls r2, r0, #0xa
	mov r0, sl
	orrs r2, r0
	strh r2, [r5, #4]
	mov r1, ip
	ldr r0, [r1, #0x38]
	ldrb r1, [r0, #3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08015260
	ldrh r7, [r3, #2]
	lsrs r0, r7, #9
	movs r1, #7
	ands r0, r1
	mov r1, r8
	ldrb r1, [r1]
	adds r0, r1, r0
	b _08015286
	.align 2, 0
_0801525C: .4byte 0x000001FF
_08015260:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08015278
	ldrh r7, [r3, #2]
	lsrs r0, r7, #0xa
	movs r1, #3
	ands r0, r1
	mov r1, r8
	ldrb r1, [r1]
	adds r0, r1, r0
	b _08015286
_08015278:
	ldrh r7, [r3, #2]
	lsrs r0, r7, #0xb
	movs r1, #1
	ands r0, r1
	mov r7, r8
	ldrb r7, [r7]
	adds r0, r7, r0
_08015286:
	lsls r0, r0, #0xc
	orrs r2, r0
	strh r2, [r5, #4]
	ldrh r1, [r4]
	lsrs r0, r1, #5
	add sl, r0
	ldr r0, [sp]
	adds r0, #0x84
	ldrh r1, [r0]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _080152A8
	ldr r0, _08015388 @ =0x0000FFFF
	cmp r1, r0
	bne _080152B4
_080152A8:
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ldrh r7, [r5]
	orrs r0, r7
	strh r0, [r5]
_080152B4:
	mov r1, ip
	ldrh r0, [r1, #0xc]
	cmp r0, #0x79
	beq _080152C0
	cmp r0, #0x7b
	bne _080152D4
_080152C0:
	ldr r2, [sp, #0x18]
	ldrh r2, [r2, #0x2e]
	cmp r2, #0x78
	bne _080152D4
	movs r7, #0x80
	lsls r7, r7, #3
	adds r0, r7, #0
	ldrh r1, [r5]
	orrs r0, r1
	strh r0, [r5]
_080152D4:
	ldr r2, [sp, #4]
	adds r2, #1
	str r2, [sp, #4]
	ldr r7, [sp, #8]
	cmp r2, r7
	bhs _080152E2
	b _0801513E
_080152E2:
	ldr r1, [sp, #0x14]
	ldrb r2, [r1]
	ldr r1, [sp, #0xc]
	ldrb r1, [r1]
	subs r0, r2, r1
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	adds r3, r0, #0
	subs r6, r6, r3
	subs r6, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	beq _0801530C
	movs r1, #0x80
	lsls r1, r1, #2
_08015302:
	subs r5, #8
	strh r1, [r5]
	subs r6, #1
	cmp r6, r0
	bne _08015302
_0801530C:
	ldr r7, [sp, #0x10]
	ldrb r6, [r7]
	mov r1, ip
	ldrh r0, [r1, #0xc]
	subs r0, #0x3a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _0801536C
	lsls r3, r6, #3
	ldr r2, _0801538C @ =gOamObjects
	adds r3, r3, r2
	ldrh r7, [r1, #0xc]
	lsls r2, r7, #3
	ldr r0, _0801538C @ =gOamObjects
	subs r0, #0xc0
	adds r2, r2, r0
	ldrh r0, [r3]
	strh r0, [r2]
	ldrh r0, [r3, #2]
	strh r0, [r2, #2]
	mov r4, ip
	adds r4, #0x24
	ldrb r0, [r4]
	lsls r1, r0, #0xc
	ldr r0, _08015390 @ =0x000003FF
	ldrh r7, [r3, #4]
	ands r0, r7
	orrs r1, r0
	strh r1, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3]
	mov r1, ip
	ldr r0, [r1, #0x20]
	adds r0, #4
	ldr r2, _08015394 @ =0x040000D4
	str r0, [r2]
	movs r0, #0xf
	ldrb r4, [r4]
	ands r0, r4
	lsls r0, r0, #5
	ldr r1, _08015398 @ =0x05000200
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0801539C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0801536C:
	mov r3, ip
	ldr r3, [r3, #8]
	mov ip, r3
	cmp r3, #0
	beq _08015378
	b _080150B4
_08015378:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015388: .4byte 0x0000FFFF
_0801538C: .4byte gOamObjects
_08015390: .4byte 0x000003FF
_08015394: .4byte 0x040000D4
_08015398: .4byte 0x05000200
_0801539C: .4byte 0x80000010

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
	bl sub_8014B84
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
	bl sub_8014E34
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
	bl sub_8014B84
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
	bl sub_8015C20
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
	bl sub_8013E40
_08015878:
	bl sub_8015090
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

	thumb_func_start sub_8015894
sub_8015894: @ 0x08015894
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r6, _0801590C @ =gCourtScroll01AnimOffsets
	movs r2, #0xc
	ldrsh r1, [r4, r2]
	adds r1, r1, r6
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r2, [r0, #0x10]
	adds r1, r2, r1
	strh r1, [r0, #0x10]
	ldrh r0, [r4, #0xc]
	cmp r0, #0xf
	bne _080158CE
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	movs r2, #0x6e
	rsbs r2, r2, #0
	movs r3, #0
	str r3, [sp]
	movs r3, #0x50
	bl sub_8014704
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	bl sub_80146F0
_080158CE:
	movs r5, #0
	movs r1, #0
	movs r0, #0xc
	ldrsh r2, [r4, r0]
	cmp r5, r2
	bge _080158EC
	adds r3, r6, #0
_080158DC:
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r5, r0
	adds r1, #1
	cmp r1, r2
	blt _080158DC
_080158EC:
	ldrh r1, [r4, #0xc]
	cmp r1, #0xf
	bne _080158F6
	bl sub_800E8C4
_080158F6:
	movs r2, #0xc
	ldrsh r0, [r4, r2]
	cmp r0, #0xe
	ble _08015914
	ldr r1, _08015910 @ =0xFFFFFE20
	adds r0, r5, r1
	movs r1, #0x80
	movs r2, #1
	bl sub_800E900
	b _08015920
	.align 2, 0
_0801590C: .4byte gCourtScroll01AnimOffsets
_08015910: .4byte 0xFFFFFE20
_08015914:
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #0x80
	movs r2, #1
	bl sub_800E9D4
_08015920:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8015928
sub_8015928: @ 0x08015928
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r6, _080159A4 @ =gCourtScroll01AnimOffsets
	movs r1, #0xc
	ldrsh r2, [r4, r1]
	movs r1, #0x1e
	subs r1, r1, r2
	adds r1, r1, r6
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r2, [r0, #0x10]
	subs r1, r2, r1
	strh r1, [r0, #0x10]
	ldrh r0, [r4, #0xc]
	cmp r0, #0xf
	bne _08015966
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	movs r2, #0xaf
	lsls r2, r2, #1
	movs r3, #0
	str r3, [sp]
	movs r3, #0x50
	bl sub_8014704
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	bl sub_80146F0
_08015966:
	movs r5, #0
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r5, r0
	bge _08015984
	adds r2, r6, #0
	adds r2, #0x1e
	adds r1, r0, #0
_08015976:
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r5, r5, r0
	subs r2, #1
	subs r1, #1
	cmp r1, #0
	bne _08015976
_08015984:
	ldrh r2, [r4, #0xc]
	cmp r2, #0xf
	bne _0801598E
	bl sub_800E8C4
_0801598E:
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0xe
	ble _080159A8
	adds r0, r5, #0
	movs r1, #0x80
	movs r2, #1
	bl sub_800E900
	b _080159B6
	.align 2, 0
_080159A4: .4byte gCourtScroll01AnimOffsets
_080159A8:
	movs r2, #0x88
	lsls r2, r2, #2
	adds r0, r5, r2
	movs r1, #0x80
	movs r2, #1
	bl sub_800E9D4
_080159B6:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80159C0
sub_80159C0: @ 0x080159C0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r3, _08015A38 @ =gCourtScroll02AnimOffsets
	movs r2, #0xc
	ldrsh r1, [r4, r2]
	adds r1, r1, r3
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r2, [r0, #0x10]
	adds r1, r2, r1
	strh r1, [r0, #0x10]
	movs r5, #0
	movs r1, #0
	movs r0, #0xc
	ldrsh r2, [r4, r0]
	cmp r5, r2
	bge _080159F6
_080159E6:
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r5, r0
	adds r1, #1
	cmp r1, r2
	blt _080159E6
_080159F6:
	ldrh r1, [r4, #0xc]
	cmp r1, #0xe
	bne _08015A20
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	movs r2, #0x54
	rsbs r2, r2, #0
	movs r3, #0
	str r3, [sp]
	movs r3, #0x50
	bl sub_8014704
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	bl sub_80146F0
	ldrh r2, [r4, #0xc]
	cmp r2, #0xe
	bne _08015A20
	bl sub_800E7B0
_08015A20:
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0xd
	ble _08015A40
	ldr r2, _08015A3C @ =0xFFFFFEE3
	adds r0, r5, r2
	movs r1, #0x80
	movs r2, #1
	bl sub_800E7EC
	b _08015A4C
	.align 2, 0
_08015A38: .4byte gCourtScroll02AnimOffsets
_08015A3C: .4byte 0xFFFFFEE3
_08015A40:
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #0x80
	movs r2, #1
	bl sub_800E9D4
_08015A4C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8015A54
sub_8015A54: @ 0x08015A54
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r2, _08015AD0 @ =gCourtScroll03AnimOffsets
	movs r3, #0xc
	ldrsh r1, [r4, r3]
	adds r1, r1, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r2, [r0, #0x10]
	subs r1, r2, r1
	strh r1, [r0, #0x10]
	movs r5, #0
	movs r3, #0xc
	ldrsh r1, [r4, r3]
	movs r0, #0x20
	subs r1, r0, r1
	cmp r5, r1
	bge _08015A90
	ldr r0, _08015AD4 @ =gCourtScroll02AnimOffsets
	adds r2, r0, #0
	adds r2, #0x20
_08015A82:
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r5, r5, r0
	subs r2, #1
	subs r1, #1
	cmp r1, #0
	bne _08015A82
_08015A90:
	ldrh r0, [r4, #0xc]
	cmp r0, #0xe
	bne _08015AB8
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	movs r2, #0
	str r2, [sp]
	movs r2, #0xdc
	movs r3, #0x50
	bl sub_8014704
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	bl sub_80146F0
	ldrh r1, [r4, #0xc]
	cmp r1, #0xe
	bne _08015AB8
	bl sub_800E8C4
_08015AB8:
	movs r2, #0xc
	ldrsh r0, [r4, r2]
	cmp r0, #0xd
	ble _08015AD8
	movs r0, #0x18
	subs r0, r0, r5
	movs r1, #0x80
	movs r2, #1
	bl sub_800E7EC
	b _08015AE6
	.align 2, 0
_08015AD0: .4byte gCourtScroll03AnimOffsets
_08015AD4: .4byte gCourtScroll02AnimOffsets
_08015AD8:
	movs r0, #0xb5
	lsls r0, r0, #1
	subs r0, r0, r5
	movs r1, #0x80
	movs r2, #1
	bl sub_800E9D4
_08015AE6:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8015AF0
sub_8015AF0: @ 0x08015AF0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r6, _08015B6C @ =gCourtScroll02AnimOffsets
	movs r2, #0xc
	ldrsh r1, [r4, r2]
	adds r1, r1, r6
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r2, [r0, #0x10]
	subs r1, r2, r1
	strh r1, [r0, #0x10]
	ldrh r0, [r4, #0xc]
	cmp r0, #0xe
	bne _08015B2A
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	movs r2, #0xa2
	lsls r2, r2, #1
	movs r3, #0
	str r3, [sp]
	movs r3, #0x50
	bl sub_8014704
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	bl sub_80146F0
_08015B2A:
	movs r5, #0
	movs r1, #0
	movs r0, #0xc
	ldrsh r2, [r4, r0]
	cmp r5, r2
	bge _08015B48
	adds r3, r6, #0
_08015B38:
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r5, r0
	adds r1, #1
	cmp r1, r2
	blt _08015B38
_08015B48:
	ldrh r1, [r4, #0xc]
	cmp r1, #0xe
	bne _08015B52
	bl sub_800E7B0
_08015B52:
	movs r2, #0xc
	ldrsh r0, [r4, r2]
	cmp r0, #0xd
	ble _08015B70
	movs r0, #0xb3
	rsbs r0, r0, #0
	subs r0, r0, r5
	movs r1, #0x80
	movs r2, #1
	bl sub_800E7EC
	b _08015B7A
	.align 2, 0
_08015B6C: .4byte gCourtScroll02AnimOffsets
_08015B70:
	rsbs r0, r5, #0
	movs r1, #0x80
	movs r2, #1
	bl sub_800E900
_08015B7A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8015B84
sub_8015B84: @ 0x08015B84
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r2, _08015C00 @ =gCourtScroll03AnimOffsets
	movs r3, #0xc
	ldrsh r1, [r4, r3]
	adds r1, r1, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r2, [r0, #0x10]
	adds r1, r2, r1
	strh r1, [r0, #0x10]
	ldrh r3, [r4, #0xc]
	cmp r3, #0xe
	bne _08015BBC
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	movs r2, #0
	str r2, [sp]
	movs r2, #0x14
	movs r3, #0x50
	bl sub_8014704
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	bl sub_80146F0
_08015BBC:
	movs r5, #0
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	movs r0, #0x20
	subs r1, r0, r1
	cmp r5, r1
	bge _08015BDE
	ldr r0, _08015C04 @ =gCourtScroll02AnimOffsets
	adds r2, r0, #0
	adds r2, #0x20
_08015BD0:
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r5, r5, r0
	subs r2, #1
	subs r1, #1
	cmp r1, #0
	bne _08015BD0
_08015BDE:
	ldrh r1, [r4, #0xc]
	cmp r1, #0xe
	bne _08015BE8
	bl sub_800E8C4
_08015BE8:
	movs r2, #0xc
	ldrsh r0, [r4, r2]
	cmp r0, #0xd
	ble _08015C08
	adds r0, r5, #0
	adds r0, #0x18
	movs r1, #0x80
	movs r2, #1
	bl sub_800E7EC
	b _08015C14
	.align 2, 0
_08015C00: .4byte gCourtScroll03AnimOffsets
_08015C04: .4byte gCourtScroll02AnimOffsets
_08015C08:
	ldr r3, _08015C1C @ =0xFFFFFEB6
	adds r0, r5, r3
	movs r1, #0x80
	movs r2, #1
	bl sub_800E900
_08015C14:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08015C1C: .4byte 0xFFFFFEB6

	thumb_func_start sub_8015C20
sub_8015C20: @ 0x08015C20
	push {lr}
	ldr r1, _08015C38 @ =gCourtScroll
	ldr r0, _08015C3C @ =gCourtScrollPersonAnimationUpdateFuncs
	ldrb r3, [r1, #6]
	lsls r2, r3, #2
	adds r2, r2, r0
	ldr r0, _08015C40 @ =gAnimation+0x44
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_08015C38: .4byte gCourtScroll
_08015C3C: .4byte gCourtScrollPersonAnimationUpdateFuncs
_08015C40: .4byte gAnimation+0x44

	thumb_func_start SetCourtScrollPersonAnim
SetCourtScrollPersonAnim: @ 0x08015C44
	push {r4, r5, lr}
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r2, _08015C68 @ =gCourtScroll
	lsls r3, r0, #1
	strb r3, [r2, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08015C5C
	adds r0, r3, #1
	strb r0, [r2, #6]
_08015C5C:
	strh r4, [r2, #8]
	strh r5, [r2, #0xa]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08015C68: .4byte gCourtScroll

	thumb_func_start sub_8015C6C
sub_8015C6C: @ 0x08015C6C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Random
	movs r1, #3
	ands r1, r0
	adds r5, r1, #1
	bl Random
	movs r1, #7
	ands r1, r0
	subs r1, #4
	adds r3, r4, #0
	adds r3, #0x2b
	ldrb r0, [r3]
	cmp r0, #0
	bne _08015C92
	ldrh r0, [r4, #0x10]
	strh r0, [r4, #0x2e]
_08015C92:
	ldrb r2, [r3]
	adds r2, #1
	strb r2, [r3]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bhi _08015CD2
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _08015CAE
	ldrh r2, [r4, #0x2e]
	adds r0, r2, r5
	b _08015CB2
_08015CAE:
	ldrh r2, [r4, #0x2e]
	subs r0, r2, r5
_08015CB2:
	strh r0, [r4, #0x10]
	ldrh r2, [r4, #0x12]
	adds r0, r2, r1
	strh r0, [r4, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5a
	ble _08015CC8
	movs r0, #0x5a
	strh r0, [r4, #0x12]
	b _08015CD6
_08015CC8:
	cmp r0, #0x45
	bgt _08015CD6
	movs r0, #0x46
	strh r0, [r4, #0x12]
	b _08015CD6
_08015CD2:
	movs r0, #0x28
	strb r0, [r3]
_08015CD6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start nullsub_16
nullsub_16: @ 0x08015CDC
	bx lr
	.align 2, 0
