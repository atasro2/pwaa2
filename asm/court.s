	.include "asm/macros.inc"
	.syntax unified

	thumb_func_start sub_800E7EC
sub_800E7EC: @ 0x0800E7EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	mov sb, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r6, _0800E818 @ =gOamObjects+0x180
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	bne _0800E81C
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #2
_0800E80C:
	strh r1, [r6]
	adds r6, #8
	adds r0, #1
	cmp r0, #3
	bls _0800E80C
	b _0800E89A
	.align 2, 0
_0800E818: .4byte gOamObjects+0x180
_0800E81C:
	ldr r0, _0800E8A8 @ =0x000001FF
	ands r5, r0
	subs r0, #0xff
	mov r8, r0
	bl fix_inverse
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	ldr r1, _0800E8AC @ =0xFFFFFE80
	adds r7, r6, r1
	strh r0, [r7, #6]
	movs r0, #0
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r7, #0xe]
	movs r0, #0
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r7, #0x16]
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r7, #0x1e]
	movs r3, #0x80
	lsls r3, r3, #7
	add r3, sb
	strh r3, [r6]
	ldr r4, _0800E8B0 @ =0xFFFFC000
	adds r0, r4, #0
	adds r0, r5, r0
	strh r0, [r6, #2]
	movs r2, #0xad
	lsls r2, r2, #8
	strh r2, [r6, #4]
	adds r6, #8
	mov r0, sb
	strh r0, [r6]
	ldr r1, _0800E8B4 @ =0xFFFF8040
	adds r0, r5, r1
	strh r0, [r6, #2]
	ldr r1, _0800E8B8 @ =0x0000AD20
	strh r1, [r6, #4]
	adds r6, #8
	mov r4, sb
	strh r4, [r6]
	ldr r4, _0800E8BC @ =0xFFFF9060
	adds r0, r5, r4
	strh r0, [r6, #2]
	strh r1, [r6, #4]
	adds r6, #8
	strh r3, [r6]
	ldr r1, _0800E8C0 @ =0xFFFFD080
	adds r0, r5, r1
	strh r0, [r6, #2]
	strh r2, [r6, #4]
_0800E89A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E8A8: .4byte 0x000001FF
_0800E8AC: .4byte 0xFFFFFE80
_0800E8B0: .4byte 0xFFFFC000
_0800E8B4: .4byte 0xFFFF8040
_0800E8B8: .4byte 0x0000AD20
_0800E8BC: .4byte 0xFFFF9060
_0800E8C0: .4byte 0xFFFFD080

	thumb_func_start sub_800E8C4
sub_800E8C4: @ 0x0800E8C4
	ldr r1, _0800E8E4 @ =0x040000D4
	ldr r0, _0800E8E8 @ =gUnknown_081462FC
	str r0, [r1]
	ldr r0, _0800E8EC @ =0x06012000
	str r0, [r1, #4]
	ldr r0, _0800E8F0 @ =0x80000680
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800E8F4 @ =gUnknown_0814E100
	str r0, [r1]
	ldr r0, _0800E8F8 @ =0x05000340
	str r0, [r1, #4]
	ldr r0, _0800E8FC @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bx lr
	.align 2, 0
_0800E8E4: .4byte 0x040000D4
_0800E8E8: .4byte gUnknown_081462FC
_0800E8EC: .4byte 0x06012000
_0800E8F0: .4byte 0x80000680
_0800E8F4: .4byte gUnknown_0814E100
_0800E8F8: .4byte 0x05000340
_0800E8FC: .4byte 0x80000010

	thumb_func_start sub_800E900
sub_800E900: @ 0x0800E900
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	mov sb, r1
	lsls r2, r2, #0x18
	mov r8, r2
	mov r0, r8
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _0800E978 @ =0x000001FF
	ands r7, r0
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r6, #0
	bl fix_inverse
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl fix_mul
	ldr r5, _0800E97C @ =gOamObjects
	strh r0, [r5, #6]
	movs r0, #0
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0xe]
	movs r0, #0
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x16]
	adds r0, r6, #0
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x1e]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r5, r5, r1
	movs r0, #1
	mov r3, r8
	ands r3, r0
	cmp r3, #0
	bne _0800E980
	movs r0, #0x80
	lsls r0, r0, #2
	movs r2, #3
_0800E96A:
	strh r0, [r5]
	adds r5, #8
	subs r2, #1
	cmp r2, #0
	bge _0800E96A
	b _0800E9BA
	.align 2, 0
_0800E978: .4byte 0x000001FF
_0800E97C: .4byte gOamObjects
_0800E980:
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #7
	add r3, sb
	ldr r1, _0800E9C8 @ =0xFFFFC000
	adds r0, r7, r1
	ldr r1, _0800E9CC @ =0xFFFFAD00
_0800E98E:
	strh r3, [r5]
	strh r0, [r5, #2]
	strh r1, [r5, #4]
	adds r5, #8
	adds r0, #0x40
	adds r1, #0x20
	adds r2, #1
	cmp r2, #2
	ble _0800E98E
	ldr r3, _0800E9D0 @ =0xFFFF8000
	adds r0, r3, #0
	mov r3, sb
	adds r1, r3, r0
	strh r1, [r5]
	adds r0, r7, r0
	lsls r1, r2, #6
	adds r0, r0, r1
	strh r0, [r5, #2]
	lsls r0, r2, #5
	ldr r1, _0800E9CC @ =0xFFFFAD00
	adds r0, r0, r1
	strh r0, [r5, #4]
_0800E9BA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E9C8: .4byte 0xFFFFC000
_0800E9CC: .4byte 0xFFFFAD00
_0800E9D0: .4byte 0xFFFF8000

	thumb_func_start sub_800E9D4
sub_800E9D4: @ 0x0800E9D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	mov sb, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _0800EA04 @ =0x000001FF
	ands r5, r0
	ldr r6, _0800EA08 @ =gOamObjects+0x180
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	bne _0800EA0C
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #2
_0800E9F8:
	strh r0, [r6]
	adds r6, #8
	adds r2, #1
	cmp r2, #3
	bls _0800E9F8
	b _0800EA7A
	.align 2, 0
_0800EA04: .4byte 0x000001FF
_0800EA08: .4byte gOamObjects+0x180
_0800EA0C:
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	bl fix_inverse
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	ldr r1, _0800EA8C @ =0xFFFFFE80
	adds r7, r6, r1
	strh r0, [r7, #6]
	movs r0, #0
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r7, #0xe]
	movs r0, #0
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r7, #0x16]
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r7, #0x1e]
	ldr r0, _0800EA90 @ =0xFFFF8000
	add r0, sb
	strh r0, [r6]
	ldr r3, _0800EA94 @ =0xFFFF9000
	adds r0, r5, r3
	strh r0, [r6, #2]
	ldr r0, _0800EA98 @ =0x0000AD60
	strh r0, [r6, #4]
	adds r6, #8
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #7
	add r1, sb
	ldr r3, _0800EA9C @ =0x0000D010
	adds r0, r5, r3
	ldr r3, _0800EAA0 @ =0x0000AD40
_0800EA68:
	strh r1, [r6]
	strh r0, [r6, #2]
	strh r3, [r6, #4]
	adds r6, #8
	adds r0, #0x40
	subs r3, #0x20
	adds r2, #1
	cmp r2, #2
	bls _0800EA68
_0800EA7A:
	bl sub_800EAA4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EA8C: .4byte 0xFFFFFE80
_0800EA90: .4byte 0xFFFF8000
_0800EA94: .4byte 0xFFFF9000
_0800EA98: .4byte 0x0000AD60
_0800EA9C: .4byte 0x0000D010
_0800EAA0: .4byte 0x0000AD40

	thumb_func_start sub_800EAA4
sub_800EAA4: @ 0x0800EAA4
	push {r4, lr}
	ldr r1, _0800EAC4 @ =gOamObjects+0x180
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #5
	adds r3, r0, #0
_0800EAB0:
	ldrh r0, [r1]
	orrs r0, r3
	strh r0, [r1]
	adds r1, #8
	adds r2, #1
	cmp r2, #3
	bls _0800EAB0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800EAC4: .4byte gOamObjects+0x180
