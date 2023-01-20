	.include "asm/macros.inc"
	.syntax unified

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
