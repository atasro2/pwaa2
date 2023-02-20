	.include "asm/macros.inc"
	.syntax unified

	thumb_func_start sub_800389C
sub_800389C: @ 0x0800389C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	movs r7, #0x1f
	ands r7, r0
	movs r1, #0xf8
	lsls r1, r1, #2
	ands r1, r0
	lsrs r6, r1, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	ands r1, r0
	lsrs r5, r1, #0xa
	adds r0, r7, r6
	adds r0, r0, r5
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r4, #0x20
	bls _080038D8
	movs r4, #0x20
_080038D8:
	mov r0, r8
	cmp r0, #1
	beq _08003908
	cmp r0, #2
	bne _08003934
	movs r0, #0x20
	subs r1, r0, r4
	adds r0, r7, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _080038F0
	adds r0, #0x1f
_080038F0:
	lsls r0, r0, #0xb
	lsrs r7, r0, #0x10
	adds r0, r6, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _080038FE
	adds r0, #0x1f
_080038FE:
	lsls r0, r0, #0xb
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	muls r0, r1, r0
	b _08003960
_08003908:
	movs r0, #0x20
	subs r2, r0, r4
	adds r1, r7, #0
	muls r1, r2, r1
	lsls r0, r4, #5
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, #0
	bge _0800391C
	adds r0, #0x1f
_0800391C:
	lsls r0, r0, #0xb
	lsrs r7, r0, #0x10
	adds r0, r6, #0
	muls r0, r2, r0
	cmp r0, #0
	bge _0800392A
	adds r0, #0x1f
_0800392A:
	lsls r0, r0, #0xb
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	muls r0, r2, r0
	b _08003960
_08003934:
	movs r0, #0x20
	subs r2, r0, r4
	adds r0, r7, #0
	muls r0, r2, r0
	muls r1, r4, r1
	adds r0, r0, r1
	cmp r0, #0
	bge _08003946
	adds r0, #0x1f
_08003946:
	lsls r0, r0, #0xb
	lsrs r7, r0, #0x10
	adds r0, r6, #0
	muls r0, r2, r0
	adds r0, r0, r1
	cmp r0, #0
	bge _08003956
	adds r0, #0x1f
_08003956:
	lsls r0, r0, #0xb
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	muls r0, r2, r0
	adds r0, r0, r1
_08003960:
	cmp r0, #0
	bge _08003966
	adds r0, #0x1f
_08003966:
	lsls r0, r0, #0xb
	lsrs r5, r0, #0x10
	movs r0, #0x1f
	ands r7, r0
	ands r6, r0
	ands r5, r0
	lsls r0, r5, #0xa
	lsls r1, r6, #5
	orrs r0, r1
	orrs r7, r0
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8003988
sub_8003988: @ 0x08003988
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, _080039CC @ =0xFFFFFE00
	add sp, r4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	cmp r5, #0x80
	bne _080039D0
	movs r5, #0x20
	add r6, sp, #0x40
	adds r4, r6, #0
	movs r0, #0
	mov sb, r0
_080039B0:
	mov r1, sb
	strh r1, [r4]
	ldrh r0, [r4]
	mov r1, r8
	adds r2, r7, #0
	bl sub_800389C
	strh r0, [r4]
	adds r4, #2
	adds r5, #1
	cmp r5, #0xff
	bls _080039B0
	b _08003A4C
	.align 2, 0
_080039CC: .4byte 0xFFFFFE00
_080039D0:
	adds r0, r5, #0
	bl GetBGControlBits
	adds r4, r0, #0
	adds r0, r5, #0
	bl GetBGPalettePtr
	adds r1, r0, #0
	cmp r4, #0
	bge _08003A24
	ldr r0, _08003A18 @ =0x040000D4
	str r1, [r0]
	mov r1, sp
	str r1, [r0, #4]
	ldr r1, _08003A1C @ =0x80000010
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r5, #0
	mov r4, sp
_080039F6:
	ldrh r0, [r4]
	mov r1, r8
	adds r2, r7, #0
	bl sub_800389C
	strh r0, [r4]
	adds r4, #2
	adds r5, #1
	cmp r5, #0xf
	bls _080039F6
	ldr r1, _08003A18 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08003A20 @ =0x05000040
	str r0, [r1, #4]
	ldr r0, _08003A1C @ =0x80000010
	b _08003A56
	.align 2, 0
_08003A18: .4byte 0x040000D4
_08003A1C: .4byte 0x80000010
_08003A20: .4byte 0x05000040
_08003A24:
	ldr r0, _08003A6C @ =0x040000D4
	str r1, [r0]
	mov r1, sp
	str r1, [r0, #4]
	ldr r1, _08003A70 @ =0x80000100
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r5, #0x20
	add r6, sp, #0x40
	adds r4, r6, #0
_08003A38:
	ldrh r0, [r4]
	mov r1, r8
	adds r2, r7, #0
	bl sub_800389C
	strh r0, [r4]
	adds r4, #2
	adds r5, #1
	cmp r5, #0xff
	bls _08003A38
_08003A4C:
	ldr r1, _08003A6C @ =0x040000D4
	str r6, [r1]
	ldr r0, _08003A74 @ =0x05000040
	str r0, [r1, #4]
	ldr r0, _08003A78 @ =0x800000E0
_08003A56:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003A6C: .4byte 0x040000D4
_08003A70: .4byte 0x80000100
_08003A74: .4byte 0x05000040
_08003A78: .4byte 0x800000E0

	thumb_func_start sub_8003A7C
sub_8003A7C: @ 0x08003A7C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r0, _08003ADC @ =gAnimation
	ldr r0, [r0, #0x64]
	ldm r0!, {r6}
	ldr r1, _08003AE0 @ =0x040000D4
	str r0, [r1]
	mov r0, sp
	str r0, [r1, #4]
	ldr r0, _08003AE4 @ =0x80000020
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r5, #0
	lsls r0, r6, #4
	cmp r5, r0
	bhs _08003AC6
	adds r7, r0, #0
	mov r4, sp
_08003AB2:
	ldrh r0, [r4]
	mov r1, sb
	mov r2, r8
	bl sub_800389C
	strh r0, [r4]
	adds r4, #2
	adds r5, #1
	cmp r5, r7
	blo _08003AB2
_08003AC6:
	cmp r6, #3
	bne _08003AF0
	ldr r1, _08003AE0 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08003AE8 @ =0x050003A0
	str r0, [r1, #4]
	ldr r0, _08003AEC @ =0x80000030
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _08003B06
	.align 2, 0
_08003ADC: .4byte gAnimation
_08003AE0: .4byte 0x040000D4
_08003AE4: .4byte 0x80000020
_08003AE8: .4byte 0x050003A0
_08003AEC: .4byte 0x80000030
_08003AF0:
	ldr r2, _08003B14 @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	ldr r0, _08003B18 @ =0x050003C0
	str r0, [r2, #4]
	lsls r0, r6, #4
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08003B06:
	add sp, #0x60
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003B14: .4byte 0x040000D4
_08003B18: .4byte 0x050003C0

	thumb_func_start sub_8003B1C
sub_8003B1C: @ 0x08003B1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r1, _08003B78 @ =0xFFFC0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	ldr r1, _08003B7C @ =gUnknown_0814E0E0
	cmp r0, #1
	bhi _08003B38
	adds r1, #0x20
_08003B38:
	ldr r0, _08003B80 @ =0x040000D4
	str r1, [r0]
	mov r1, sp
	str r1, [r0, #4]
	ldr r1, _08003B84 @ =0x80000010
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r5, #0
	mov r4, sp
_08003B4A:
	ldrh r0, [r4]
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_800389C
	strh r0, [r4]
	adds r4, #2
	adds r5, #1
	cmp r5, #0xf
	bls _08003B4A
	ldr r1, _08003B80 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08003B88 @ =0x05000340
	str r0, [r1, #4]
	ldr r0, _08003B84 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003B78: .4byte 0xFFFC0000
_08003B7C: .4byte gUnknown_0814E0E0
_08003B80: .4byte 0x040000D4
_08003B84: .4byte 0x80000010
_08003B88: .4byte 0x05000340

	thumb_func_start sub_8003B8C
sub_8003B8C: @ 0x08003B8C
	push {r4, r5, r6, lr}
	sub sp, #0x20
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r0, _08003BC8 @ =gUnknown_086E9B5C
	ldr r0, [r0, #4]
	ldr r1, _08003BCC @ =gUnknown_086DF2DC+4
	adds r0, r0, r1
	ldr r1, _08003BD0 @ =0x040000D4
	str r0, [r1]
	mov r0, sp
	str r0, [r1, #4]
	ldr r0, _08003BD4 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r4, sp
_08003BB0:
	cmp r5, #2
	bne _08003BD8
	ldrh r0, [r4]
	movs r1, #0x20
	movs r2, #0
	bl sub_800389C
	strh r0, [r4]
	ldrh r0, [r4]
	adds r1, r6, #0
	movs r2, #2
	b _08003BDE
	.align 2, 0
_08003BC8: .4byte gUnknown_086E9B5C
_08003BCC: .4byte gUnknown_086DF2DC+4
_08003BD0: .4byte 0x040000D4
_08003BD4: .4byte 0x80000010
_08003BD8:
	ldrh r0, [r4]
	adds r1, r6, #0
	adds r2, r5, #0
_08003BDE:
	bl sub_800389C
	strh r0, [r4]
	adds r4, #2
	mov r0, sp
	adds r0, #0x1e
	cmp r4, r0
	bls _08003BB0
	ldr r1, _08003C08 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08003C0C @ =0x05000340
	str r0, [r1, #4]
	ldr r0, _08003C10 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08003C08: .4byte 0x040000D4
_08003C0C: .4byte 0x05000340
_08003C10: .4byte 0x80000010
