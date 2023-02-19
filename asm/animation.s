	.include "asm/macros.inc"
	.syntax unified

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
