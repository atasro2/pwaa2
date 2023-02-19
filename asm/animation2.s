	.include "asm/macros.inc"
	.syntax unified

	thumb_func_start PlayPersonAnimationAtCustomOrigin
PlayPersonAnimationAtCustomOrigin: @ 0x08014704
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
	bl PutAnimationInAnimList
_080147E2:
	adds r4, r5, #0
	adds r4, #0x2c
	mov r0, sp
	movs r1, #0xff
	ldr r2, [sp, #0x38]
	bl CreateAnimationFromAnimationInfo
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
