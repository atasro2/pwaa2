	.include "asm/macros.inc"
	.syntax unified

	thumb_func_start sub_8015CE0
sub_8015CE0: @ 0x08015CE0
	push {lr}
	strh r1, [r0, #2]
	strh r2, [r0]
	strh r3, [r0, #4]
	bl sub_8015F54
	pop {r0}
	bx r0

	thumb_func_start sub_8015CF0
sub_8015CF0: @ 0x08015CF0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov sb, r1
	mov r8, r2
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08015D58 @ =0x040000D4
	str r1, [r0]
	str r5, [r0, #4]
	ldr r1, _08015D5C @ =0x810000C6
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	mov r0, sb
	movs r1, #0xa
	bl __modsi3
	ldr r4, _08015D60 @ =gUnknown_0203A500
	cmp r0, #4
	bgt _08015D22
	ldr r4, _08015D64 @ =gUnknown_02036500
_08015D22:
	ldr r0, _08015D68 @ =gUnknown_081124D0
	mov r2, sb
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r1, r4, #0
	bl LZ77UnCompWram
	str r4, [r5, #8]
	adds r4, #8
	movs r2, #0
	ldr r0, [r5, #8]
	ldrh r3, [r0, #6]
	cmp r2, r3
	bge _08015D50
	adds r1, r5, #0
	adds r1, #0xc
_08015D44:
	stm r1!, {r4}
	adds r4, #8
	adds r2, #1
	ldrh r7, [r0, #6]
	cmp r2, r7
	blt _08015D44
_08015D50:
	movs r2, #0
	ldr r0, [r5, #8]
	adds r6, r0, #0
	b _08015D9C
	.align 2, 0
_08015D58: .4byte 0x040000D4
_08015D5C: .4byte 0x810000C6
_08015D60: .4byte gUnknown_0203A500
_08015D64: .4byte gUnknown_02036500
_08015D68: .4byte gUnknown_081124D0
_08015D6C:
	lsls r1, r2, #2
	adds r0, r5, #0
	adds r0, #0xcc
	adds r0, r0, r1
	str r4, [r0]
	ldm r4!, {r0}
	adds r1, r2, #1
	cmp r0, #0
	ble _08015D9A
	movs r3, #0xf0
	lsls r3, r3, #8
	adds r2, r0, #0
_08015D84:
	adds r0, r3, #0
	ldrh r7, [r4, #6]
	ands r0, r7
	cmp r0, #0
	bne _08015D92
	adds r4, #0x14
	b _08015D94
_08015D92:
	adds r4, #0x10
_08015D94:
	subs r2, #1
	cmp r2, #0
	bne _08015D84
_08015D9A:
	adds r2, r1, #0
_08015D9C:
	ldrh r0, [r6, #4]
	cmp r2, r0
	blt _08015D6C
	adds r0, r5, #0
	mov r1, sb
	mov r2, r8
	movs r3, #0
	bl sub_8015CE0
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8015DBC
sub_8015DBC: @ 0x08015DBC
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #6]
	adds r0, #1
	strh r0, [r4, #6]
	movs r0, #4
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #8]
	ldrh r0, [r0, #6]
	subs r0, #1
	cmp r1, r0
	bge _08015DF0
	ldr r0, _08015DF8 @ =gMain
	ldr r0, [r0]
	movs r1, #3
	bl __umodsi3
	cmp r0, #0
	bne _08015DF0
	strh r0, [r4, #6]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8015F54
_08015DF0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08015DF8: .4byte gMain

	thumb_func_start sub_8015DFC
sub_8015DFC: @ 0x08015DFC
	push {r4, lr}
	sub sp, #4
	mov r0, sp
	movs r2, #0
	strh r2, [r0]
	ldr r0, _08015E6C @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _08015E70 @ =gBG0MapBuffer
	str r1, [r0, #4]
	ldr r3, _08015E74 @ =0x81000400
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r2, [r1]
	str r1, [r0]
	ldr r1, _08015E78 @ =gBG3MapBuffer
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r2, [r1]
	str r1, [r0]
	ldr r3, _08015E7C @ =0x06004000
	str r3, [r0, #4]
	ldr r1, _08015E80 @ =0x81002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r2, [r1]
	str r1, [r0]
	ldr r1, _08015E84 @ =0x05000040
	str r1, [r0, #4]
	ldr r1, _08015E88 @ =0x810000E0
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	mov r2, sp
	ldr r4, _08015E8C @ =0x00002222
	adds r1, r4, #0
	strh r1, [r2]
	str r2, [r0]
	str r3, [r0, #4]
	ldr r1, _08015E90 @ =0x81004B00
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r1, _08015E94 @ =gIORegisters
	movs r0, #0xf0
	lsls r0, r0, #6
	strh r0, [r1]
	ldr r0, _08015E98 @ =0x00003FC7
	strh r0, [r1, #6]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08015E6C: .4byte 0x040000D4
_08015E70: .4byte gBG0MapBuffer
_08015E74: .4byte 0x81000400
_08015E78: .4byte gBG3MapBuffer
_08015E7C: .4byte 0x06004000
_08015E80: .4byte 0x81002000
_08015E84: .4byte 0x05000040
_08015E88: .4byte 0x810000E0
_08015E8C: .4byte 0x00002222
_08015E90: .4byte 0x81004B00
_08015E94: .4byte gIORegisters
_08015E98: .4byte 0x00003FC7

	thumb_func_start sub_8015E9C
sub_8015E9C: @ 0x08015E9C
	movs r2, #4
	ldrsh r1, [r0, r2]
	ldr r0, [r0, #8]
	ldrh r0, [r0, #6]
	subs r0, #1
	cmp r1, r0
	bge _08015EAE
	movs r0, #0
	b _08015EB0
_08015EAE:
	movs r0, #1
_08015EB0:
	bx lr
	.align 2, 0

	thumb_func_start sub_8015EB4
sub_8015EB4: @ 0x08015EB4
	push {r4, lr}
	sub sp, #4
	ldr r1, _08015F1C @ =gMain
	movs r2, #0
	movs r0, #0x7f
	strh r0, [r1, #0x30]
	ldr r1, _08015F20 @ =gIORegisters
	ldr r0, _08015F24 @ =0x00003C47
	strh r0, [r1]
	ldr r0, _08015F28 @ =0x00003F46
	strh r0, [r1, #6]
	mov r0, sp
	strh r2, [r0]
	ldr r4, _08015F2C @ =0x040000D4
	str r0, [r4]
	ldr r0, _08015F30 @ =0x0600E000
	str r0, [r4, #4]
	ldr r1, _08015F34 @ =0x81000400
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	mov r0, sp
	strh r2, [r0]
	str r0, [r4]
	ldr r0, _08015F38 @ =0x0600F800
	str r0, [r4, #4]
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	bl m4aSoundVSyncOff
	ldr r0, _08015F3C @ =gUnknown_0814777C
	ldr r1, _08015F40 @ =0x06004000
	bl LZ77UnCompVram
	bl m4aSoundVSyncOn
	ldr r1, _08015F44 @ =gUnknown_0811242C
	str r1, [r4]
	ldr r0, _08015F48 @ =0x050001C0
	str r0, [r4, #4]
	ldr r2, _08015F4C @ =0x80000010
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	adds r1, #0x20
	str r1, [r4]
	ldr r0, _08015F50 @ =0x050001E0
	str r0, [r4, #4]
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08015F1C: .4byte gMain
_08015F20: .4byte gIORegisters
_08015F24: .4byte 0x00003C47
_08015F28: .4byte 0x00003F46
_08015F2C: .4byte 0x040000D4
_08015F30: .4byte 0x0600E000
_08015F34: .4byte 0x81000400
_08015F38: .4byte 0x0600F800
_08015F3C: .4byte gUnknown_0814777C
_08015F40: .4byte 0x06004000
_08015F44: .4byte gUnknown_0811242C
_08015F48: .4byte 0x050001C0
_08015F4C: .4byte 0x80000010
_08015F50: .4byte 0x050001E0

	thumb_func_start sub_8015F54
sub_8015F54: @ 0x08015F54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r2, r0, #0
	movs r0, #4
	ldrsh r1, [r2, r0]
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	lsls r1, r0, #2
	adds r0, r2, #0
	adds r0, #0xcc
	adds r0, r0, r1
	ldr r0, [r0]
	mov sb, r0
	mov r1, sb
	adds r1, #4
	mov sb, r1
	subs r1, #4
	ldm r1!, {r0}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r3, #0
	str r3, [sp, #8]
	movs r6, #0
	str r6, [sp, #4]
	movs r7, #0xe
	str r7, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #1
	beq _08015FCC
	cmp r0, #1
	bgt _08015FAE
	cmp r0, #0
	beq _08015FB4
	b _08015FE4
_08015FAE:
	cmp r0, #2
	beq _08015FD8
	b _08015FE4
_08015FB4:
	ldr r6, _08015FC4 @ =0x0000FFF8
	str r6, [sp, #4]
	ldr r7, _08015FC8 @ =gBG0MapBuffer
	str r7, [sp]
	movs r0, #1
	str r0, [sp, #0x10]
	b _08015FF0
	.align 2, 0
_08015FC4: .4byte 0x0000FFF8
_08015FC8: .4byte gBG0MapBuffer
_08015FCC:
	ldr r2, _08015FD4 @ =gBG1MapBuffer
	str r2, [sp]
	b _08015FF0
	.align 2, 0
_08015FD4: .4byte gBG1MapBuffer
_08015FD8:
	ldr r3, _08015FE0 @ =gBG2MapBuffer
	str r3, [sp]
	b _08015FF0
	.align 2, 0
_08015FE0: .4byte gBG2MapBuffer
_08015FE4:
	movs r6, #8
	str r6, [sp, #8]
	ldr r7, _08016054 @ =gBG3MapBuffer
	str r7, [sp]
	movs r0, #0xf
	str r0, [sp, #0xc]
_08015FF0:
	ldr r2, [sp, #0x10]
	rsbs r0, r2, #0
	orrs r0, r2
	asrs r2, r0, #0x1f
	movs r0, #0x80
	lsls r0, r0, #1
	ands r2, r0
	movs r3, #0
	lsls r1, r1, #0x10
	str r1, [sp, #0x14]
	ldr r4, _08016058 @ =0x000003FF
_08016006:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	ldr r3, [sp]
	adds r0, r0, r3
	strh r2, [r0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, r4
	ble _08016006
	movs r3, #0
	ldr r6, [sp, #0x14]
	cmp r6, #0
	ble _08016114
_08016026:
	mov ip, sb
	movs r0, #0xf0
	lsls r0, r0, #8
	mov r7, ip
	ldrh r7, [r7, #6]
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r2, #0x10
	add r2, ip
	mov sb, r2
	cmp r1, #0
	bne _08016046
	movs r6, #0x14
	add r6, ip
	mov sb, r6
_08016046:
	cmp r1, #0
	beq _0801605C
	lsrs r0, r0, #0x19
	str r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	b _08016068
	.align 2, 0
_08016054: .4byte gBG3MapBuffer
_08016058: .4byte 0x000003FF
_0801605C:
	mov r7, ip
	ldrh r7, [r7, #8]
	str r7, [sp, #0x18]
	mov r0, ip
	ldrh r0, [r0, #0xa]
	str r0, [sp, #0x1c]
_08016068:
	movs r5, #0
	lsls r3, r3, #0x10
	mov sl, r3
	b _080160FE
_08016070:
	movs r4, #0
	adds r1, r5, #1
	mov r8, r1
	b _080160F4
_08016078:
	mov r2, ip
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _08016084
	adds r0, #7
_08016084:
	asrs r0, r0, #3
	adds r2, r0, r4
	mov r3, ip
	movs r0, #1
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bge _08016094
	adds r0, #7
_08016094:
	asrs r0, r0, #3
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r6, [sp, #0x10]
	cmp r6, #0
	beq _080160B0
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r3, r7
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080160B0:
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0xc
	orrs r3, r0
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r6, ip
	ldrb r6, [r6, #2]
	adds r0, r6, r0
	cmp r0, #0
	bge _080160C8
	adds r0, #7
_080160C8:
	asrs r0, r0, #3
	adds r1, r0, r4
	ldr r7, [sp, #8]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	mov r6, ip
	ldrb r6, [r6, #3]
	adds r2, r6, r0
	adds r0, r2, #0
	subs r0, #0x30
	cmp r0, #0
	bge _080160E2
	adds r0, #7
_080160E2:
	asrs r0, r0, #3
	adds r0, r0, r5
	lsls r0, r0, #5
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r7, [sp]
	adds r0, r0, r7
	strh r3, [r0]
	adds r4, #1
_080160F4:
	ldr r0, [sp, #0x18]
	asrs r0, r0, #3
	cmp r4, r0
	blt _08016078
	mov r5, r8
_080160FE:
	ldr r0, [sp, #0x1c]
	asrs r0, r0, #3
	cmp r5, r0
	blt _08016070
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sl
	lsrs r3, r0, #0x10
	ldr r1, [sp, #0x14]
	cmp r0, r1
	blt _08016026
_08016114:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8016124
sub_8016124: @ 0x08016124
	sub sp, #4
	movs r1, #0
	str r1, [sp]
	ldr r2, _08016144 @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	ldr r3, _08016148 @ =gUnknown_03006050
	str r3, [r2, #4]
	ldr r1, _0801614C @ =0x850000CF
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	strh r0, [r3]
	strh r0, [r3, #2]
	add sp, #4
	bx lr
	.align 2, 0
_08016144: .4byte 0x040000D4
_08016148: .4byte gUnknown_03006050
_0801614C: .4byte 0x850000CF

	thumb_func_start sub_8016150
sub_8016150: @ 0x08016150
	push {r4, lr}
	movs r4, #0
	movs r0, #0x3d
	bl sub_8013EB0
	cmp r0, #0
	beq _0801616A
	movs r0, #0x3d
	bl sub_8013EB0
	bl DestroyAnimation
	movs r4, #1
_0801616A:
	movs r0, #0x3e
	bl sub_8013EB0
	cmp r0, #0
	beq _08016180
	movs r0, #0x3e
	bl sub_8013EB0
	bl DestroyAnimation
	movs r4, #1
_08016180:
	movs r0, #0x3f
	bl sub_8013EB0
	cmp r0, #0
	beq _08016196
	movs r0, #0x3f
	bl sub_8013EB0
	bl DestroyAnimation
	movs r4, #1
_08016196:
	cmp r4, #0
	beq _080161A0
	movs r0, #0x40
	bl sub_801480C
_080161A0:
	ldr r0, _080161B0 @ =gUnknown_03006050
	movs r2, #0
	movs r1, #1
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080161B0: .4byte gUnknown_03006050

	thumb_func_start sub_80161B4
sub_80161B4: @ 0x080161B4
	ldr r0, _080161C0 @ =gUnknown_03006050
	movs r2, #0
	movs r1, #4
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
_080161C0: .4byte gUnknown_03006050

	thumb_func_start sub_80161C4
sub_80161C4: @ 0x080161C4
	ldr r0, _080161D0 @ =gUnknown_03006050
	movs r2, #0
	movs r1, #5
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
_080161D0: .4byte gUnknown_03006050

	thumb_func_start sub_80161D4
sub_80161D4: @ 0x080161D4
	ldr r0, _080161E0 @ =gUnknown_03006050
	movs r2, #0
	movs r1, #6
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
_080161E0: .4byte gUnknown_03006050

	thumb_func_start sub_80161E4
sub_80161E4: @ 0x080161E4
	ldr r0, _080161F0 @ =gUnknown_03006050
	movs r2, #0
	movs r1, #7
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
_080161F0: .4byte gUnknown_03006050

	thumb_func_start sub_80161F4
sub_80161F4: @ 0x080161F4
	ldr r0, _08016200 @ =gUnknown_03006050
	movs r2, #0
	movs r1, #8
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
_08016200: .4byte gUnknown_03006050

	thumb_func_start sub_8016204
sub_8016204: @ 0x08016204
	ldr r0, _08016210 @ =gUnknown_03006050
	movs r2, #0
	movs r1, #9
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
_08016210: .4byte gUnknown_03006050

	thumb_func_start sub_8016214
sub_8016214: @ 0x08016214
	ldr r0, _08016224 @ =gUnknown_03006050
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08016228
	movs r0, #0
	b _0801622A
	.align 2, 0
_08016224: .4byte gUnknown_03006050
_08016228:
	movs r0, #1
_0801622A:
	bx lr

	thumb_func_start sub_801622C
sub_801622C: @ 0x0801622C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x30
	mov r1, sp
	ldr r0, _08016258 @ =gUnknown_080242C4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r1, _0801625C @ =gUnknown_03006050
	movs r4, #4
	ldrsh r0, [r1, r4]
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	mov r8, r1
	mov pc, r0
	.align 2, 0
_08016258: .4byte gUnknown_080242C4
_0801625C: .4byte gUnknown_03006050
_08016260:
	.byte 0x00, 0xF0, 0x03, 0xFD, 0x40, 0x20, 0xFD, 0xF7, 0x23, 0xFE, 0x00, 0x28, 0x0C, 0xD0, 0x40, 0x20
	.byte 0xFD, 0xF7, 0x1E, 0xFE, 0x00, 0x68, 0x00, 0x28, 0x01, 0xDA, 0x00, 0xF0, 0xF6, 0xFC, 0x40, 0x20
	.byte 0xFD, 0xF7, 0x16, 0xFE, 0xFE, 0xF7, 0x86, 0xFE, 0x05, 0x48, 0x06, 0x21, 0x42, 0x5E, 0x80, 0x46
	.byte 0x01, 0x2A, 0x36, 0xD0, 0x01, 0x2A, 0x05, 0xDC, 0x00, 0x2A, 0x06, 0xD0, 0x8B, 0xE0, 0x00, 0x00
	.byte 0x50, 0x60, 0x00, 0x03, 0x02, 0x2A, 0x4D, 0xD0, 0x85, 0xE0, 0x7A, 0x20, 0xFD, 0xF7, 0xC2, 0xFA
	.byte 0x22, 0x49, 0x7F, 0x20, 0x08, 0x86, 0x21, 0x26, 0x1F, 0x27, 0x1F, 0x25, 0x73, 0x00, 0xA0, 0x22
	.byte 0xD2, 0x04, 0x9B, 0x18, 0x1C, 0x88, 0x20, 0x04, 0x41, 0x0D, 0x39, 0x40, 0x80, 0x0E, 0x38, 0x40
	.byte 0x2A, 0x1C, 0xA2, 0x43, 0x2C, 0x1C, 0x8C, 0x43, 0x21, 0x1C, 0x2C, 0x1C, 0x84, 0x43, 0x20, 0x1C
	.byte 0x80, 0x02, 0x49, 0x01, 0x08, 0x43, 0x10, 0x43, 0x18, 0x80, 0x01, 0x36, 0xFF, 0x2E, 0xE5, 0xDD
	.byte 0x13, 0x49, 0x00, 0x22, 0xFF, 0x20, 0x48, 0x81, 0x8A, 0x81, 0xC8, 0x88, 0x01, 0x30, 0xC8, 0x80
	.byte 0x88, 0x46, 0x41, 0x46, 0x48, 0x89, 0x41, 0x1C, 0x42, 0x46, 0x51, 0x81, 0x00, 0x04, 0x00, 0x14
	.byte 0x46, 0x28, 0x01, 0xDC, 0x00, 0xF0, 0xA9, 0xFC, 0x00, 0x20, 0x50, 0x81, 0x90, 0x89, 0x01, 0x30
	.byte 0x90, 0x81, 0x00, 0x04, 0x00, 0x14, 0x01, 0x28, 0x00, 0xDD, 0xAC, 0xE3, 0x03, 0x20, 0x01, 0x21
	.byte 0x04, 0x22, 0x1F, 0x23, 0xEA, 0xF7, 0x92, 0xFA, 0x00, 0xF0, 0x97, 0xFC, 0xB0, 0x37, 0x00, 0x03
	.byte 0x50, 0x60, 0x00, 0x03, 0x21, 0x26, 0x1F, 0x27, 0x70, 0x00, 0xA0, 0x23, 0xDB, 0x04, 0xC5, 0x18
	.byte 0x2B, 0x88, 0x1F, 0x22, 0x19, 0x04, 0x48, 0x0D, 0x89, 0x0E, 0x1A, 0x40, 0x01, 0x3A, 0x12, 0x04
	.byte 0x38, 0x40, 0x01, 0x38, 0x00, 0x04, 0x03, 0x0C, 0x39, 0x40, 0x01, 0x39, 0x09, 0x04, 0x0C, 0x0C
	.byte 0x11, 0x0C, 0x00, 0x2A, 0x00, 0xDA, 0x00, 0x21, 0x18, 0x04, 0x00, 0x28, 0x00, 0xDA, 0x00, 0x23
	.byte 0x20, 0x04, 0x00, 0x28, 0x00, 0xDA, 0x00, 0x24, 0x18, 0x04, 0xC0, 0x12, 0x09, 0x04, 0x09, 0x14
	.byte 0x01, 0x43, 0x20, 0x04, 0x80, 0x11, 0x01, 0x43, 0x29, 0x80, 0x01, 0x36, 0xFF, 0x2E, 0xD3, 0xDD
	.byte 0x44, 0x46, 0x60, 0x89, 0x41, 0x1C, 0x61, 0x81, 0x00, 0x04, 0x00, 0x14, 0x20, 0x28, 0x01, 0xDC
	.byte 0x00, 0xF0, 0x5B, 0xFC, 0xDE, 0xE2, 0x41, 0x46, 0x88, 0x88, 0x01, 0x30, 0x00, 0x21, 0x42, 0x46
	.byte 0x64, 0xE0, 0x05, 0x4C, 0x06, 0x23, 0xE0, 0x5E, 0x01, 0x28, 0x28, 0xD0, 0x01, 0x28, 0x05, 0xDC
	.byte 0x00, 0x28, 0x09, 0xD0, 0x00, 0xF0, 0x49, 0xFC, 0x50, 0x60, 0x00, 0x03, 0x02, 0x28, 0x3D, 0xD0
	.byte 0x03, 0x28, 0x46, 0xD0, 0x00, 0xF0, 0x41, 0xFC, 0xFF, 0xF7, 0x64, 0xFD, 0x20, 0x1C, 0x10, 0x30
	.byte 0x00, 0x22, 0xA1, 0x5E, 0x01, 0x39, 0x03, 0x22, 0xFF, 0xF7, 0x7A, 0xFC, 0xCE, 0x23, 0x5B, 0x00
	.byte 0xE0, 0x18, 0x00, 0x22, 0xA1, 0x5E, 0x04, 0x31, 0x00, 0x22, 0xFF, 0xF7, 0x71, 0xFC, 0x00, 0x23
	.byte 0xE0, 0x5E, 0x7F, 0x30, 0xFD, 0xF7, 0x0E, 0xFA, 0xE0, 0x88, 0x01, 0x30, 0xE0, 0x80, 0x0E, 0x4C
	.byte 0x20, 0x1C, 0xFF, 0xF7, 0xCB, 0xFC, 0xC6, 0x20, 0x40, 0x00, 0x25, 0x18, 0x28, 0x1C, 0xFF, 0xF7
	.byte 0xC5, 0xFC, 0x20, 0x1C, 0xFF, 0xF7, 0x32, 0xFD, 0x00, 0x28, 0x00, 0xD1, 0x6D, 0xE2, 0x28, 0x1C
	.byte 0xFF, 0xF7, 0x2C, 0xFD, 0x00, 0x28, 0x00, 0xD1, 0x67, 0xE2, 0x21, 0x1C, 0x10, 0x39, 0xC8, 0x88
	.byte 0x01, 0x30, 0xC8, 0x80, 0x61, 0xE2, 0x00, 0x00, 0x60, 0x60, 0x00, 0x03, 0x00, 0x21, 0x60, 0x5E
	.byte 0x7F, 0x30, 0x3C, 0x21, 0xFD, 0xF7, 0x24, 0xFA, 0x00, 0x20, 0x60, 0x81, 0xE0, 0x88, 0x01, 0x30
	.byte 0xE0, 0x80, 0x08, 0x4A, 0x50, 0x89, 0x41, 0x1C, 0x51, 0x81, 0x00, 0x04, 0x00, 0x14, 0x1D, 0x28
	.byte 0x01, 0xDC, 0x00, 0xF0, 0xF2, 0xFB, 0x90, 0x88, 0x01, 0x30, 0x00, 0x21, 0x90, 0x80, 0xD1, 0x80
	.byte 0x00, 0xF0, 0xEB, 0xFB, 0x50, 0x60, 0x00, 0x03, 0x06, 0x48, 0x06, 0x23, 0xC2, 0x5E, 0x80, 0x46
	.byte 0x05, 0x2A, 0x01, 0xD9, 0x00, 0xF0, 0xE1, 0xFB, 0x90, 0x00, 0x03, 0x49, 0x40, 0x18, 0x00, 0x68
	.byte 0x87, 0x46, 0x00, 0x00, 0x50, 0x60, 0x00, 0x03, 0xBC, 0x64, 0x01, 0x08, 0xD4, 0x64, 0x01, 0x08
	.byte 0x44, 0x65, 0x01, 0x08, 0x10, 0x66, 0x01, 0x08, 0x40, 0x66, 0x01, 0x08, 0x62, 0x66, 0x01, 0x08
	.byte 0x96, 0x69, 0x01, 0x08, 0x00, 0x26, 0x44, 0x46, 0x00, 0x21, 0x60, 0x5E, 0x86, 0x42, 0x2A, 0xDA
	.byte 0x2F, 0x4D, 0x00, 0x22, 0xA1, 0x5E, 0x01, 0x39, 0x88, 0x00, 0x40, 0x18, 0x30, 0x18, 0x41, 0x00
	.byte 0x4A, 0x1C, 0x48, 0x00, 0x40, 0x19, 0x00, 0x23, 0xC0, 0x5E, 0x01, 0x1C, 0x20, 0x31, 0x50, 0x00
	.byte 0x40, 0x19, 0x00, 0x22, 0x80, 0x5E, 0x02, 0x1C, 0x10, 0x32, 0x30, 0x1C, 0x28, 0x30, 0xFE, 0xF7
	.byte 0x9D, 0xF9, 0xB1, 0x00, 0xCA, 0x23, 0x9B, 0x00, 0xE2, 0x18, 0x89, 0x18, 0x08, 0x60, 0x02, 0x68
	.byte 0x80, 0x21, 0x49, 0x00, 0x0A, 0x43, 0x1F, 0x49, 0x0A, 0x40, 0x02, 0x60, 0x01, 0x36, 0x00, 0x21
	.byte 0x60, 0x5E, 0x86, 0x42, 0xD5, 0xDB, 0x1C, 0x48, 0x00, 0x21, 0x41, 0x81, 0xC1, 0x88, 0x01, 0x31
	.byte 0xC1, 0x80, 0x80, 0x46, 0x42, 0x46, 0x50, 0x89, 0x01, 0x30, 0x50, 0x81, 0x00, 0x26, 0x00, 0x23
	.byte 0xD0, 0x5E, 0x86, 0x42, 0x39, 0xDA, 0xF1, 0x00, 0x44, 0x46, 0x0A, 0x22, 0xA0, 0x5E, 0x45, 0x1A
	.byte 0x00, 0x2D, 0x2B, 0xDD, 0xB1, 0x00, 0xCA, 0x20, 0x80, 0x00, 0x40, 0x44, 0x0C, 0x18, 0x22, 0x68
	.byte 0x10, 0x68, 0x80, 0x21, 0x89, 0x05, 0x08, 0x43, 0x10, 0x60, 0x08, 0x2D, 0x02, 0xD1, 0x73, 0x20
	.byte 0xFD, 0xF7, 0x58, 0xF9, 0x07, 0x2D, 0x11, 0xDC, 0x20, 0x68, 0x31, 0x1C, 0x0A, 0x31, 0x08, 0x22
	.byte 0x52, 0x1B, 0x52, 0x01, 0x80, 0x23, 0x5B, 0x00, 0xD2, 0x18, 0xFD, 0xF7, 0x6B, 0xFD, 0x0D, 0xE0
	.byte 0x6C, 0x24, 0x11, 0x08, 0xFF, 0xFF, 0xFF, 0xDF, 0x50, 0x60, 0x00, 0x03, 0x20, 0x68, 0xFD, 0xF7
	.byte 0xB9, 0xFD, 0x22, 0x68, 0x10, 0x68, 0x14, 0x49, 0x08, 0x40, 0x10, 0x60, 0x01, 0x36, 0x13, 0x48
	.byte 0x00, 0x24, 0x01, 0x5F, 0x80, 0x46, 0x8E, 0x42, 0xC5, 0xDB, 0x40, 0x46, 0x0A, 0x22, 0x81, 0x5E
	.byte 0x00, 0x23, 0xC2, 0x5E, 0xD0, 0x00, 0x81, 0x42, 0x00, 0xDC, 0x46, 0xE3, 0x00, 0x26, 0x96, 0x42
	.byte 0x0B, 0xDA, 0x44, 0x46, 0xCA, 0x20, 0x80, 0x00, 0x25, 0x18, 0x01, 0xCD, 0xFD, 0xF7, 0x9A, 0xFD
	.byte 0x01, 0x36, 0x00, 0x21, 0x60, 0x5E, 0x86, 0x42, 0xF7, 0xDB, 0x04, 0x48, 0x00, 0x21, 0x41, 0x81
	.byte 0xC1, 0x88, 0x01, 0x31, 0xC1, 0x80, 0x30, 0xE3, 0xFF, 0xFE, 0xFF, 0xFF, 0x50, 0x60, 0x00, 0x03
	.byte 0x0A, 0x4A, 0x13, 0x1C, 0xDC, 0x33, 0x18, 0x68, 0x01, 0x21, 0x08, 0x43, 0x18, 0x60, 0x02, 0x21
	.byte 0x02, 0x20, 0x90, 0x82, 0x91, 0x75, 0x42, 0x46, 0x50, 0x89, 0x41, 0x1C, 0x51, 0x81, 0x00, 0x04
	.byte 0x00, 0x14, 0x14, 0x28, 0x00, 0xDC, 0x18, 0xE3, 0x87, 0xE1, 0x00, 0x00, 0xB0, 0x37, 0x00, 0x03
	.byte 0x44, 0x46, 0x60, 0x89, 0x41, 0x1C, 0x61, 0x81, 0x00, 0x04, 0x00, 0x14, 0x0A, 0x28, 0x00, 0xDC
	.byte 0x0B, 0xE3, 0x03, 0x20, 0x00, 0x21, 0x00, 0x22, 0x1F, 0x23, 0xEA, 0xF7, 0xFF, 0xF8, 0x00, 0x20
	.byte 0x87, 0xE1, 0x41, 0x46, 0x48, 0x89, 0x41, 0x1C, 0x42, 0x46, 0x51, 0x81, 0x00, 0x04, 0x00, 0x14
	.byte 0x28, 0x28, 0x00, 0xDC, 0xF9, 0xE2, 0x00, 0x20, 0x50, 0x81, 0x04, 0xE2, 0x04, 0x4D, 0x06, 0x24
	.byte 0x2F, 0x5F, 0x01, 0x2F, 0x52, 0xD0, 0x01, 0x2F, 0x04, 0xDC, 0x00, 0x2F, 0x05, 0xD0, 0xEC, 0xE2
	.byte 0x50, 0x60, 0x00, 0x03, 0x02, 0x2F, 0x5D, 0xD0, 0xE7, 0xE2, 0x68, 0x88, 0x01, 0x38, 0x68, 0x80
	.byte 0x74, 0x20, 0xFD, 0xF7, 0xC7, 0xF8, 0x02, 0x21, 0x68, 0x5E, 0x80, 0x00, 0xCA, 0x22, 0x92, 0x00
	.byte 0xAC, 0x18, 0x00, 0x19, 0x00, 0x68, 0xFE, 0xF7, 0x6D, 0xFC, 0x00, 0x23, 0xE8, 0x5E, 0x01, 0x38
	.byte 0x81, 0x00, 0x09, 0x18, 0x02, 0x22, 0xA8, 0x5E, 0x41, 0x18, 0x4B, 0x00, 0x5E, 0x1C, 0x15, 0x4A
	.byte 0x59, 0x00, 0x89, 0x18, 0x00, 0x23, 0xC9, 0x5E, 0x0B, 0x1C, 0x20, 0x33, 0x71, 0x00, 0x89, 0x18
	.byte 0x00, 0x22, 0x89, 0x5E, 0x0E, 0x1C, 0x10, 0x36, 0x32, 0x30, 0x19, 0x1C, 0x32, 0x1C, 0xFE, 0xF7
	.byte 0xAD, 0xF8, 0x02, 0x23, 0xE9, 0x5E, 0x89, 0x00, 0x09, 0x19, 0x08, 0x60, 0x0A, 0x4A, 0x13, 0x1C
	.byte 0xDC, 0x33, 0x18, 0x68, 0x01, 0x21, 0x08, 0x43, 0x18, 0x60, 0x02, 0x21, 0x02, 0x20, 0x90, 0x82
	.byte 0x91, 0x75, 0x04, 0x20, 0x00, 0x21, 0x00, 0x22, 0x1F, 0x23, 0xEA, 0xF7, 0x9F, 0xF8, 0x6F, 0x81
	.byte 0x14, 0xE0, 0x00, 0x00, 0x6C, 0x24, 0x11, 0x08, 0xB0, 0x37, 0x00, 0x03, 0x68, 0x89, 0x41, 0x1C
	.byte 0x69, 0x81, 0x00, 0x04, 0x00, 0x14, 0x02, 0x28, 0x00, 0xDC, 0x96, 0xE2, 0x03, 0x20, 0x00, 0x21
	.byte 0x00, 0x22, 0x1F, 0x23, 0xEA, 0xF7, 0x8A, 0xF8, 0x00, 0x20, 0x68, 0x81, 0xE8, 0x88, 0x01, 0x30
	.byte 0xE8, 0x80, 0x8A, 0xE2, 0x68, 0x89, 0x41, 0x1C, 0x69, 0x81, 0x00, 0x04, 0x00, 0x14, 0x3C, 0x28
	.byte 0x00, 0xDC, 0x82, 0xE2, 0x02, 0x24, 0x28, 0x5F, 0x80, 0x00, 0xCA, 0x21, 0x89, 0x00, 0x6C, 0x18
	.byte 0x00, 0x19, 0x00, 0x68, 0xFE, 0xF7, 0x0E, 0xFC, 0x02, 0x22, 0xA8, 0x5E, 0x80, 0x00, 0x00, 0x19
	.byte 0x00, 0x21, 0x01, 0x60, 0xA9, 0x80, 0xE9, 0x80, 0x6F, 0xE2, 0x06, 0x48, 0x06, 0x24, 0x03, 0x5F
	.byte 0x80, 0x46, 0x09, 0x2B, 0x00, 0xD9, 0xFE, 0xE0, 0x98, 0x00, 0x03, 0x49, 0x40, 0x18, 0x00, 0x68
	.byte 0x87, 0x46, 0x00, 0x00, 0x50, 0x60, 0x00, 0x03, 0xAC, 0x67, 0x01, 0x08, 0xD4, 0x67, 0x01, 0x08
	.byte 0xE0, 0x67, 0x01, 0x08, 0xF8, 0x67, 0x01, 0x08, 0x14, 0x68, 0x01, 0x08, 0x40, 0x68, 0x01, 0x08
	.byte 0x98, 0x68, 0x01, 0x08, 0xDA, 0x68, 0x01, 0x08, 0x38, 0x69, 0x01, 0x08, 0x64, 0x69, 0x01, 0x08
	.byte 0x80, 0x69, 0x01, 0x08, 0x00, 0x20, 0x41, 0x46, 0x48, 0x81, 0xC8, 0x88, 0x01, 0x30, 0xC8, 0x80
	.byte 0x42, 0x46, 0x50, 0x89, 0x41, 0x1C, 0x51, 0x81, 0x00, 0x04, 0x00, 0x14, 0x14, 0x28, 0x00, 0xDC
	.byte 0x3B, 0xE2, 0x00, 0x20, 0x50, 0x81, 0x46, 0xE1, 0x0F, 0x49, 0x40, 0x22, 0x00, 0x23, 0x08, 0x88
	.byte 0x10, 0x43, 0x08, 0x80, 0xC8, 0x88, 0x10, 0x43, 0xC8, 0x80, 0x44, 0x46, 0x63, 0x81, 0xE0, 0x88
	.byte 0x01, 0x30, 0xE0, 0x80, 0x09, 0x48, 0x00, 0x68, 0x07, 0x21, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD1
	.byte 0x23, 0xE2, 0x41, 0x46, 0x48, 0x89, 0x41, 0x1C, 0x42, 0x46, 0x51, 0x81, 0x00, 0x04, 0x00, 0x14
	.byte 0x04, 0x28, 0x00, 0xDC, 0x19, 0xE2, 0x26, 0xE1, 0x70, 0x3A, 0x00, 0x03, 0xB0, 0x37, 0x00, 0x03
	.byte 0x12, 0x48, 0x00, 0x68, 0x05, 0x21, 0x04, 0xF0, 0x3F, 0xFA, 0x00, 0x28, 0x00, 0xD1, 0x0C, 0xE2
	.byte 0x0F, 0x4B, 0x44, 0x46, 0x0A, 0x20, 0x21, 0x5E, 0x08, 0x01, 0x08, 0x43, 0x58, 0x64, 0x60, 0x89
	.byte 0x41, 0x1E, 0x61, 0x81, 0x00, 0x04, 0x00, 0x28, 0x00, 0xDD, 0xFE, 0xE1, 0x09, 0x49, 0x08, 0x1C
	.byte 0x1A, 0x88, 0x10, 0x40, 0x00, 0x22, 0x18, 0x80, 0xDC, 0x88, 0x21, 0x40, 0xD9, 0x80, 0x5A, 0x64
	.byte 0x40, 0x46, 0x42, 0x81, 0xC0, 0x88, 0x01, 0x30, 0x41, 0x46, 0xED, 0xE1, 0xB0, 0x37, 0x00, 0x03
	.byte 0x70, 0x3A, 0x00, 0x03, 0xBF, 0xFF, 0x00, 0x00, 0x42, 0x46, 0x50, 0x89, 0x41, 0x1C, 0x51, 0x81
	.byte 0x00, 0x04, 0x00, 0x14, 0x28, 0x28, 0x00, 0xDC, 0xDF, 0xE1, 0x40, 0x46, 0x10, 0x30, 0x00, 0x23
	.byte 0xD1, 0x5E, 0x09, 0x31, 0x03, 0x22, 0xFF, 0xF7, 0x1B, 0xFA, 0xCE, 0x20, 0x40, 0x00, 0x40, 0x44
	.byte 0x44, 0x46, 0x00, 0x22, 0xA1, 0x5E, 0x0E, 0x31, 0x00, 0x22, 0xFF, 0xF7, 0x11, 0xFA, 0x00, 0x23
	.byte 0xE0, 0x5E, 0x7F, 0x30, 0xFC, 0xF7, 0xAE, 0xFF, 0x4C, 0xE0, 0x15, 0x4C, 0x20, 0x1C, 0xFF, 0xF7
	.byte 0x6D, 0xFA, 0xC6, 0x20, 0x40, 0x00, 0x25, 0x18, 0x28, 0x1C, 0xFF, 0xF7, 0x67, 0xFA, 0x20, 0x1C
	.byte 0xFF, 0xF7, 0xD4, 0xFA, 0x00, 0x28, 0x10, 0xD0, 0x28, 0x1C, 0xFF, 0xF7, 0xCF, 0xFA, 0x00, 0x28
	.byte 0x0B, 0xD0, 0x10, 0x3C, 0x00, 0x21, 0x60, 0x5E, 0x7F, 0x30, 0x3C, 0x21, 0xFC, 0xF7, 0xD0, 0xFF
	.byte 0xE0, 0x88, 0x01, 0x30, 0x00, 0x21, 0xE0, 0x80, 0x61, 0x81, 0x06, 0x49, 0x0A, 0x1C, 0xDC, 0x32
	.byte 0x10, 0x68, 0x01, 0x23, 0x18, 0x43, 0x10, 0x60, 0x02, 0x20, 0x88, 0x82, 0x8B, 0x75, 0x9C, 0xE1
	.byte 0x60, 0x60, 0x00, 0x03, 0xB0, 0x37, 0x00, 0x03, 0x42, 0x46, 0x50, 0x89, 0x41, 0x1C, 0x51, 0x81
	.byte 0x00, 0x04, 0x00, 0x14, 0x50, 0x28, 0x00, 0xDC, 0x8F, 0xE1, 0x04, 0x20, 0x01, 0x21, 0x08, 0x22
	.byte 0x1F, 0x23, 0xE9, 0xF7, 0x83, 0xFF, 0x00, 0x20, 0x43, 0x46, 0x58, 0x81, 0xD8, 0x88, 0x01, 0x30
	.byte 0xD8, 0x80, 0x82, 0xE1, 0x05, 0x48, 0x7E, 0x30, 0x00, 0x88, 0x00, 0x28, 0x00, 0xD0, 0x7C, 0xE1
	.byte 0x44, 0x46, 0x60, 0x81, 0xE0, 0x88, 0x01, 0x30, 0xE0, 0x80, 0x76, 0xE1, 0xB0, 0x37, 0x00, 0x03
	.byte 0x41, 0x46, 0x48, 0x89, 0x41, 0x1C, 0x42, 0x46, 0x51, 0x81, 0x00, 0x04, 0x00, 0x14, 0x14, 0x28
	.byte 0x00, 0xDC, 0x6A, 0xE1, 0x77, 0xE0, 0x00, 0x20, 0x43, 0x46, 0x98, 0x80, 0xD8, 0x80, 0x64, 0xE1
	.byte 0x05, 0x48, 0x06, 0x24, 0x03, 0x5F, 0x80, 0x46, 0x06, 0x2B, 0x00, 0xD9, 0x5D, 0xE1, 0x98, 0x00
	.byte 0x02, 0x49, 0x40, 0x18, 0x00, 0x68, 0x87, 0x46, 0x50, 0x60, 0x00, 0x03, 0xC0, 0x69, 0x01, 0x08
	.byte 0xDC, 0x69, 0x01, 0x08, 0x02, 0x6A, 0x01, 0x08, 0x44, 0x6A, 0x01, 0x08, 0x78, 0x6A, 0x01, 0x08
	.byte 0x94, 0x6A, 0x01, 0x08, 0xD0, 0x6A, 0x01, 0x08, 0x24, 0x6B, 0x01, 0x08, 0x01, 0x20, 0x00, 0x21
	.byte 0x00, 0x22, 0x1F, 0x23, 0xE9, 0xF7, 0x3A, 0xFF, 0x38, 0x20, 0xFD, 0xF7, 0x0F, 0xFF, 0x39, 0x20
	.byte 0xFD, 0xF7, 0x0C, 0xFF, 0xA6, 0x20, 0xFC, 0xF7, 0x1D, 0xFF, 0x11, 0x49, 0xC8, 0x88, 0x01, 0x30
	.byte 0xC8, 0x80, 0x38, 0x20, 0xFD, 0xF7, 0x54, 0xFA, 0x04, 0x1C, 0x39, 0x20, 0xFD, 0xF7, 0x50, 0xFA
	.byte 0x05, 0x1C, 0x20, 0x8A, 0x0A, 0x30, 0x20, 0x82, 0x20, 0x68, 0x80, 0x21, 0x89, 0x05, 0x08, 0x43
	.byte 0x20, 0x60, 0x28, 0x8A, 0x0A, 0x38, 0x28, 0x82, 0x28, 0x68, 0x08, 0x43, 0x28, 0x60, 0x10, 0x21
	.byte 0x60, 0x5E, 0x77, 0x28, 0x00, 0xDC, 0x18, 0xE1, 0x01, 0x49, 0xC8, 0x88, 0x01, 0x30, 0x13, 0xE1
	.byte 0x50, 0x60, 0x00, 0x03, 0x03, 0x20, 0x01, 0x21, 0x08, 0x22, 0x1F, 0x23, 0xE9, 0xF7, 0x06, 0xFF
	.byte 0x38, 0x20, 0xFD, 0xF7, 0x2D, 0xFA, 0xFE, 0xF7, 0x9D, 0xFA, 0x39, 0x20, 0xFD, 0xF7, 0x28, 0xFA
	.byte 0xFE, 0xF7, 0x98, 0xFA, 0x37, 0x20, 0xFD, 0xF7, 0xD1, 0xFE, 0x02, 0x49, 0xC8, 0x88, 0x01, 0x30
	.byte 0xFA, 0xE0, 0x00, 0x00, 0x50, 0x60, 0x00, 0x03, 0x05, 0x48, 0x7E, 0x30, 0x00, 0x88, 0x00, 0x28
	.byte 0x00, 0xD0, 0xF2, 0xE0, 0x42, 0x46, 0xD0, 0x88, 0x01, 0x30, 0xD0, 0x80, 0xED, 0xE0, 0x00, 0x00
	.byte 0xB0, 0x37, 0x00, 0x03, 0x37, 0x20, 0xFD, 0xF7, 0x0B, 0xFA, 0x04, 0x1C, 0x20, 0x68, 0x00, 0x28
	.byte 0x00, 0xDA, 0xE2, 0xE0, 0x20, 0x1C, 0xFE, 0xF7, 0x75, 0xFA, 0x38, 0x20, 0x78, 0x21, 0x3C, 0x22
	.byte 0xFD, 0xF7, 0xCC, 0xFE, 0x39, 0x20, 0x78, 0x21, 0x3C, 0x22, 0xFD, 0xF7, 0xC7, 0xFE, 0xA7, 0x20
	.byte 0xFC, 0xF7, 0xB8, 0xFE, 0x01, 0x49, 0xC8, 0x88, 0x01, 0x30, 0xCD, 0xE0, 0x50, 0x60, 0x00, 0x03
	.byte 0x38, 0x20, 0xFD, 0xF7, 0xED, 0xF9, 0x04, 0x1C, 0x39, 0x20, 0xFD, 0xF7, 0xE9, 0xF9, 0x05, 0x1C
	.byte 0x60, 0x8A, 0x07, 0x38, 0x60, 0x82, 0x20, 0x68, 0x80, 0x21, 0x89, 0x05, 0x08, 0x43, 0x20, 0x60
	.byte 0x68, 0x8A, 0x07, 0x30, 0x68, 0x82, 0x28, 0x68, 0x08, 0x43, 0x28, 0x60, 0x12, 0x23, 0xE1, 0x5E
	.byte 0x3C, 0x20, 0x40, 0x42, 0x81, 0x42, 0x00, 0xDB, 0xAF, 0xE0, 0x20, 0x1C, 0xFE, 0xF7, 0x42, 0xFA
	.byte 0x28, 0x1C, 0xFE, 0xF7, 0x3F, 0xFA, 0x02, 0x49, 0xC8, 0x88, 0x01, 0x30, 0xA4, 0xE0, 0x00, 0x00
	.byte 0x50, 0x60, 0x00, 0x03, 0x01, 0xF0, 0xA8, 0xF8, 0x01, 0x1C, 0x00, 0x29, 0x00, 0xD0, 0x9C, 0xE0
	.byte 0x01, 0x48, 0x81, 0x80, 0xC1, 0x80, 0x98, 0xE0, 0x50, 0x60, 0x00, 0x03, 0x1C, 0x49, 0x06, 0x24
	.byte 0x08, 0x5F, 0x00, 0x28, 0x00, 0xD0, 0x90, 0xE0, 0x00, 0x26, 0x00, 0x22, 0x88, 0x5E, 0x86, 0x42
	.byte 0x0B, 0xDA, 0x0C, 0x1C, 0xCA, 0x23, 0x9B, 0x00, 0xE5, 0x18, 0x01, 0xCD, 0xFE, 0xF7, 0x1A, 0xFA
	.byte 0x01, 0x36, 0x00, 0x21, 0x60, 0x5E, 0x86, 0x42, 0xF7, 0xDB, 0x02, 0xF0, 0x97, 0xFF, 0xFF, 0xF7
	.byte 0x45, 0xF9, 0xED, 0xF7, 0xD1, 0xFA, 0xE9, 0xF7, 0x97, 0xFD, 0x0E, 0x4A, 0x11, 0x1C, 0xB2, 0x31
	.byte 0x0B, 0x78, 0x98, 0x00, 0xC0, 0x18, 0x90, 0x24, 0x64, 0x00, 0x11, 0x19, 0x40, 0x18, 0x06, 0x78
	.byte 0xD0, 0x8D, 0x00, 0x24, 0x50, 0x86, 0xD6, 0x85, 0x11, 0x1C, 0x34, 0x31, 0x01, 0x20, 0x08, 0x70
	.byte 0xFA, 0xF7, 0x00, 0xFA, 0x02, 0xF0, 0xB8, 0xFF, 0x01, 0x48, 0x84, 0x80, 0xC4, 0x80, 0x5C, 0xE0
	.byte 0x50, 0x60, 0x00, 0x03, 0xB0, 0x37, 0x00, 0x03, 0x00, 0x26, 0x10, 0x49, 0x00, 0x22, 0x88, 0x5E
	.byte 0x86, 0x42, 0x0D, 0xDA, 0x0D, 0x1C, 0xCA, 0x23, 0x9B, 0x00, 0xEC, 0x18, 0x20, 0x68, 0xFE, 0xF7
	.byte 0xE1, 0xF9, 0x00, 0x20, 0x01, 0xC4, 0x01, 0x36, 0x00, 0x21, 0x68, 0x5E, 0x86, 0x42, 0xF5, 0xDB
	.byte 0xFF, 0xF7, 0x0C, 0xF9, 0x0B, 0xAA, 0x00, 0x20, 0x10, 0x80, 0x05, 0x49, 0x0A, 0x60, 0x05, 0x48
	.byte 0x48, 0x60, 0x05, 0x48, 0x88, 0x60, 0x88, 0x68, 0x33, 0xE0, 0x00, 0x00, 0x50, 0x60, 0x00, 0x03
	.byte 0xD4, 0x00, 0x00, 0x04, 0xA0, 0x2F, 0x00, 0x03, 0x00, 0x04, 0x00, 0x81, 0x1A, 0x4D, 0x02, 0x22
	.byte 0xAC, 0x5E, 0x00, 0x23, 0xE8, 0x5E, 0x00, 0xF0, 0x31, 0xF8, 0x6C, 0x80, 0x00, 0x26, 0x00, 0x24
	.byte 0x28, 0x5F, 0x02, 0x22, 0xA9, 0x5E, 0x40, 0x1A, 0x86, 0x42, 0x1A, 0xDA, 0xCA, 0x23, 0x9B, 0x00
	.byte 0xEF, 0x18, 0x00, 0x24, 0x28, 0x5F, 0x74, 0x1C, 0x00, 0x1B, 0x80, 0x00, 0xC0, 0x19, 0x00, 0x68
	.byte 0xFE, 0xF7, 0xA8, 0xF9, 0x00, 0x21, 0x68, 0x5E, 0x00, 0x1B, 0x80, 0x00, 0xC0, 0x19, 0x00, 0x21
	.byte 0x01, 0x60, 0x26, 0x1C, 0x00, 0x22, 0xA8, 0x5E, 0x02, 0x23, 0xE9, 0x5E, 0x40, 0x1A, 0x86, 0x42
	.byte 0xE7, 0xDB, 0x05, 0x49, 0x00, 0x20, 0x88, 0x80, 0xC8, 0x80, 0x0C, 0xB0, 0x08, 0xBC, 0x98, 0x46
	.byte 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x50, 0x60, 0x00, 0x03

	thumb_func_start sub_8016C7C
sub_8016C7C: @ 0x08016C7C
	push {r4, r5, r6, lr}
	bl sub_8016124
	bl sub_8015EB4
	ldr r4, _08016D38 @ =gUnknown_03006050+0x10
	adds r6, r4, #0
	subs r6, #0x10
	movs r0, #0
	ldrsh r1, [r6, r0]
	subs r1, #1
	adds r0, r4, #0
	movs r2, #3
	bl sub_8015CF0
	movs r1, #0xc6
	lsls r1, r1, #1
	adds r5, r4, r1
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r1, #4
	adds r0, r5, #0
	movs r2, #0
	bl sub_8015CF0
	movs r3, #0
	ldrsh r1, [r6, r3]
	subs r1, #1
	ldr r0, [r6, #0x18]
	ldrh r3, [r0, #6]
	subs r3, #1
	adds r0, r4, #0
	movs r2, #3
	bl sub_8015CE0
	movs r0, #0
	ldrsh r1, [r6, r0]
	adds r1, #4
	movs r2, #0xca
	lsls r2, r2, #1
	adds r4, r4, r2
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	subs r3, #1
	adds r0, r5, #0
	movs r2, #0
	bl sub_8015CE0
	movs r4, #0
	movs r3, #0
	ldrsh r0, [r6, r3]
	cmp r4, r0
	bge _08016D30
	adds r5, r6, #0
	ldr r6, _08016D3C @ =gUnknown_0811246C
_08016CEA:
	movs r0, #0
	ldrsh r1, [r5, r0]
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r4, r0
	lsls r1, r0, #1
	adds r2, r1, #1
	lsls r0, r1, #1
	adds r0, r0, r6
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	adds r1, #0x20
	lsls r0, r2, #1
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r2, r0, #0
	adds r2, #0x10
	adds r0, r4, #0
	adds r0, #0x2d
	bl sub_801484C
	lsls r1, r4, #2
	movs r3, #0xca
	lsls r3, r3, #2
	adds r2, r5, r3
	adds r1, r1, r2
	str r0, [r1]
	adds r4, #1
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r4, r0
	blt _08016CEA
_08016D30:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016D38: .4byte gUnknown_03006050+0x10
_08016D3C: .4byte gUnknown_0811246C

	thumb_func_start sub_8016D40
sub_8016D40: @ 0x08016D40
	push {r4, r5, r6, lr}
	bl sub_80161E4
	bl sub_801622C
	movs r4, #0
	ldr r1, _08016D84 @ =gUnknown_03006050
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r4, r0
	bge _08016D6E
	adds r5, r1, #0
	movs r0, #0xca
	lsls r0, r0, #2
	adds r6, r5, r0
_08016D5E:
	ldm r6!, {r0}
	bl DestroyAnimation
	adds r4, #1
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r4, r0
	blt _08016D5E
_08016D6E:
	bl sub_8010FA4
	ldr r1, _08016D88 @ =gInvestigation
	movs r0, #0xfe
	ldrb r2, [r1, #0xb]
	ands r0, r2
	strb r0, [r1, #0xb]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016D84: .4byte gUnknown_03006050
_08016D88: .4byte gInvestigation

	thumb_func_start sub_8016D8C
sub_8016D8C: @ 0x08016D8C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0
	ldr r2, _08016DB4 @ =gMain+0x1A4
	movs r5, #1
_08016D9C:
	ldr r0, [r2]
	ands r0, r5
	cmp r0, #0
	beq _08016DB8
	ldrh r0, [r2, #4]
	cmp r0, r4
	bne _08016DB8
	ldrh r0, [r2, #6]
	cmp r0, r1
	bne _08016DB8
	adds r0, r3, #0
	b _08016DC4
	.align 2, 0
_08016DB4: .4byte gMain+0x1A4
_08016DB8:
	adds r2, #0x28
	adds r3, #1
	cmp r3, #3
	ble _08016D9C
	movs r0, #1
	rsbs r0, r0, #0
_08016DC4:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8016DCC
sub_8016DCC: @ 0x08016DCC
	push {r4, r5, lr}
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r4, #1
	rsbs r4, r4, #0
	movs r2, #0
	ldr r3, [r0, #0x18]
	cmp r2, r3
	bhs _08016DF2
	adds r1, r0, #0
	adds r1, #0x1c
_08016DE2:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, r5
	bne _08016DEC
	adds r4, r2, #0
_08016DEC:
	adds r2, #1
	cmp r2, r3
	blo _08016DE2
_08016DF2:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8016DFC
sub_8016DFC: @ 0x08016DFC
	ldr r0, _08016E0C @ =gMain
	movs r1, #0x92
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_08016E0C: .4byte gMain

	thumb_func_start sub_8016E10
sub_8016E10: @ 0x08016E10
	ldr r1, _08016E24 @ =gMain
	movs r3, #0x92
	lsls r3, r3, #2
	adds r2, r1, r3
	movs r3, #0
	strb r0, [r2]
	ldr r0, _08016E28 @ =0x00000249
	adds r1, r1, r0
	strb r3, [r1]
	bx lr
	.align 2, 0
_08016E24: .4byte gMain
_08016E28: .4byte 0x00000249

	thumb_func_start sub_8016E2C
sub_8016E2C: @ 0x08016E2C
	ldr r1, _08016E58 @ =0x040000D4
	ldr r0, _08016E5C @ =gUnknown_08146FFC
	str r0, [r1]
	ldr r0, _08016E60 @ =0x06013000
	str r0, [r1, #4]
	ldr r2, _08016E64 @ =0x80000100
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08016E68 @ =gUnknown_08141EFC
	str r0, [r1]
	ldr r0, _08016E6C @ =0x06013200
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08016E70 @ =gUnknown_0814DC40
	str r0, [r1]
	ldr r0, _08016E74 @ =0x050002A0
	str r0, [r1, #4]
	ldr r0, _08016E78 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bx lr
	.align 2, 0
_08016E58: .4byte 0x040000D4
_08016E5C: .4byte gUnknown_08146FFC
_08016E60: .4byte 0x06013000
_08016E64: .4byte 0x80000100
_08016E68: .4byte gUnknown_08141CFC+0x200
_08016E6C: .4byte 0x06013200
_08016E70: .4byte gUnknown_0814DC40
_08016E74: .4byte 0x050002A0
_08016E78: .4byte 0x80000010

	thumb_func_start sub_8016E7C
sub_8016E7C: @ 0x08016E7C
	push {lr}
	ldr r0, _08016E98 @ =gMain
	movs r1, #0x92
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #4
	bls _08016E8E
	b _08016F78
_08016E8E:
	lsls r0, r0, #2
	ldr r1, _08016E9C @ =_08016EA0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08016E98: .4byte gMain
_08016E9C: .4byte _08016EA0
_08016EA0: @ jump table
	.4byte _08016F78 @ case 0
	.4byte _08016EB4 @ case 1
	.4byte _08016F00 @ case 2
	.4byte _08016F4C @ case 3
	.4byte _08016F68 @ case 4
_08016EB4:
	ldr r0, _08016ECC @ =gMain
	ldr r3, _08016ED0 @ =0x00000249
	adds r2, r0, r3
	ldrb r1, [r2]
	cmp r1, #1
	beq _08016EE8
	cmp r1, #1
	bgt _08016ED4
	cmp r1, #0
	beq _08016EDA
	b _08016F78
	.align 2, 0
_08016ECC: .4byte gMain
_08016ED0: .4byte 0x00000249
_08016ED4:
	cmp r1, #2
	beq _08016F56
	b _08016F78
_08016EDA:
	ldr r1, _08016EE4 @ =0x00000246
	adds r0, r0, r1
	movs r1, #0x10
	strh r1, [r0]
	b _08016F3E
	.align 2, 0
_08016EE4: .4byte 0x00000246
_08016EE8:
	ldr r3, _08016EFC @ =0x00000246
	adds r1, r0, r3
	ldrh r0, [r1]
	subs r0, #2
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _08016F78
	b _08016F3C
	.align 2, 0
_08016EFC: .4byte 0x00000246
_08016F00:
	ldr r0, _08016F1C @ =gMain
	ldr r1, _08016F20 @ =0x00000249
	adds r2, r0, r1
	ldrb r1, [r2]
	cmp r1, #1
	beq _08016F28
	cmp r1, #1
	bgt _08016ED4
	cmp r1, #0
	bne _08016F78
	ldr r3, _08016F24 @ =0x00000246
	adds r0, r0, r3
	strh r1, [r0]
	b _08016F3E
	.align 2, 0
_08016F1C: .4byte gMain
_08016F20: .4byte 0x00000249
_08016F24: .4byte 0x00000246
_08016F28:
	ldr r3, _08016F48 @ =0x00000246
	adds r1, r0, r3
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08016F78
	movs r0, #0x10
_08016F3C:
	strh r0, [r1]
_08016F3E:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	b _08016F78
	.align 2, 0
_08016F48: .4byte 0x00000246
_08016F4C:
	ldr r0, _08016F60 @ =gMain
	ldr r1, _08016F64 @ =0x00000246
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
_08016F56:
	movs r0, #0
	bl sub_8016E10
	b _08016F78
	.align 2, 0
_08016F60: .4byte gMain
_08016F64: .4byte 0x00000246
_08016F68:
	ldr r0, _08016FDC @ =gMain
	ldr r2, _08016FE0 @ =0x00000246
	adds r0, r0, r2
	movs r1, #0x40
	strh r1, [r0]
	movs r0, #0
	bl sub_8016E10
_08016F78:
	bl sub_8016E2C
	ldr r2, _08016FDC @ =gMain
	ldr r3, _08016FE4 @ =0x0000024A
	adds r1, r2, r3
	movs r0, #1
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08017000
	ldr r3, _08016FE8 @ =gOamObjects
	ldr r1, _08016FE0 @ =0x00000246
	adds r0, r2, r1
	ldrh r0, [r0]
	rsbs r1, r0, #0
	ldr r2, _08016FEC @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	adds r1, r1, r0
	movs r2, #0xc8
	lsls r2, r2, #1
	adds r0, r3, r2
	strh r1, [r0]
	movs r0, #0xc9
	lsls r0, r0, #1
	adds r2, r3, r0
	ldr r0, _08016FF0 @ =0x000080B0
	strh r0, [r2]
	movs r0, #0xca
	lsls r0, r0, #1
	adds r2, r3, r0
	ldr r0, _08016FF4 @ =0x00005590
	strh r0, [r2]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r0, r3, r2
	strh r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _08016FF8 @ =0x000080D0
	strh r0, [r1]
	adds r2, #4
	adds r1, r3, r2
	ldr r0, _08016FFC @ =0x00005598
	strh r0, [r1]
	b _08017016
	.align 2, 0
_08016FDC: .4byte gMain
_08016FE0: .4byte 0x00000246
_08016FE4: .4byte 0x0000024A
_08016FE8: .4byte gOamObjects
_08016FEC: .4byte 0x000001FF
_08016FF0: .4byte 0x000080B0
_08016FF4: .4byte 0x00005590
_08016FF8: .4byte 0x000080D0
_08016FFC: .4byte 0x00005598
_08017000:
	ldr r2, _08017078 @ =gOamObjects
	movs r3, #0xc8
	lsls r3, r3, #1
	adds r0, r2, r3
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0]
	adds r3, #8
	adds r0, r2, r3
	strh r1, [r0]
	adds r3, r2, #0
_08017016:
	ldr r2, _0801707C @ =gMain
	ldr r0, _08017080 @ =0x0000024A
	adds r1, r2, r0
	movs r0, #2
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08017094
	ldr r1, _08017084 @ =0x00000246
	adds r0, r2, r1
	ldrh r0, [r0]
	rsbs r1, r0, #0
	ldr r2, _08017088 @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	adds r1, r1, r0
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r3, r2
	strh r1, [r0]
	movs r0, #0xc1
	lsls r0, r0, #1
	adds r2, r3, r0
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r2]
	movs r0, #0xc2
	lsls r0, r0, #1
	adds r2, r3, r0
	movs r0, #0xab
	lsls r0, r0, #7
	strh r0, [r2]
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r3, r2
	strh r1, [r0]
	movs r0, #0xc5
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _0801708C @ =0x00008020
	strh r0, [r1]
	adds r2, #4
	adds r1, r3, r2
	ldr r0, _08017090 @ =0x00005588
	strh r0, [r1]
	b _080170A6
	.align 2, 0
_08017078: .4byte gOamObjects
_0801707C: .4byte gMain
_08017080: .4byte 0x0000024A
_08017084: .4byte 0x00000246
_08017088: .4byte 0x000001FF
_0801708C: .4byte 0x00008020
_08017090: .4byte 0x00005588
_08017094:
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r3, r1
	adds r1, #0x80
	strh r1, [r0]
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r3, r2
	strh r1, [r0]
_080170A6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80170AC
sub_80170AC: @ 0x080170AC
	push {lr}
	bl sub_8016E2C
	ldr r3, _08017118 @ =gMain
	ldr r0, _0801711C @ =0x0000024A
	adds r1, r3, r0
	movs r0, #1
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _080170FE
	ldr r2, _08017120 @ =gOamObjects
	ldr r1, _08017124 @ =0x00000246
	adds r0, r3, r1
	ldrh r0, [r0]
	rsbs r1, r0, #0
	ldr r3, _08017128 @ =0x000001FF
	adds r0, r3, #0
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r3, #0
	adds r1, r1, r0
	movs r3, #0xc8
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r1, [r0]
	movs r0, #0xc9
	lsls r0, r0, #1
	adds r3, r2, r0
	ldr r0, _0801712C @ =0x000080BA
	strh r0, [r3]
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _08017130 @ =0x000080DA
	strh r0, [r1]
_080170FE:
	ldr r2, _08017120 @ =gOamObjects
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r2, r1
	adds r1, #0x80
	strh r1, [r0]
	movs r3, #0xc4
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08017118: .4byte gMain
_0801711C: .4byte 0x0000024A
_08017120: .4byte gOamObjects
_08017124: .4byte 0x00000246
_08017128: .4byte 0x000001FF
_0801712C: .4byte 0x000080BA
_08017130: .4byte 0x000080DA

	thumb_func_start sub_8017134
sub_8017134: @ 0x08017134
	ldr r2, _08017158 @ =gOamObjects
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r0, r2, r1
	adds r1, #0x70
	strh r1, [r0]
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r1, [r0]
	subs r3, #0x18
	adds r0, r2, r3
	strh r1, [r0]
	adds r3, #8
	adds r0, r2, r3
	strh r1, [r0]
	bx lr
	.align 2, 0
_08017158: .4byte gOamObjects

	thumb_func_start sub_801715C
sub_801715C: @ 0x0801715C
	ldr r0, _08017170 @ =gMain
	movs r1, #0x92
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017174
	movs r0, #1
	b _08017176
	.align 2, 0
_08017170: .4byte gMain
_08017174:
	movs r0, #0
_08017176:
	bx lr

	thumb_func_start sub_8017178
sub_8017178: @ 0x08017178
	ldr r0, _080171CC @ =0x040000D4
	ldr r1, _080171D0 @ =gUnknown_0814757C+0x80
	str r1, [r0]
	ldr r1, _080171D4 @ =0x06013780
	str r1, [r0, #4]
	ldr r1, _080171D8 @ =0x800000C0
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080171DC @ =gUnknown_0814E340
	str r1, [r0]
	ldr r1, _080171E0 @ =0x05000260
	str r1, [r0, #4]
	ldr r2, _080171E4 @ =0x80000010
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080171E8 @ =gUnknown_0814E360
	str r1, [r0]
	ldr r1, _080171EC @ =0x05000280
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080171F0 @ =gUnknown_0814757C
	str r1, [r0]
	ldr r1, _080171F4 @ =0x06012E00
	str r1, [r0, #4]
	adds r2, #0x30
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080171F8 @ =gUnknown_0814747C
	str r1, [r0]
	ldr r1, _080171FC @ =0x06012E80
	str r1, [r0, #4]
	ldr r1, _08017200 @ =0x80000080
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08017204 @ =gUnknown_081473FC
	str r1, [r0]
	ldr r1, _08017208 @ =0x06012F80
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
_080171CC: .4byte 0x040000D4
_080171D0: .4byte gUnknown_0814757C+0x80
_080171D4: .4byte 0x06013780
_080171D8: .4byte 0x800000C0
_080171DC: .4byte gUnknown_0814E340
_080171E0: .4byte 0x05000260
_080171E4: .4byte 0x80000010
_080171E8: .4byte gUnknown_0814E360
_080171EC: .4byte 0x05000280
_080171F0: .4byte gUnknown_0814757C
_080171F4: .4byte 0x06012E00
_080171F8: .4byte gUnknown_0814747C
_080171FC: .4byte 0x06012E80
_08017200: .4byte 0x80000080
_08017204: .4byte gUnknown_081473FC
_08017208: .4byte 0x06012F80

	thumb_func_start sub_801720C
sub_801720C: @ 0x0801720C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	ldr r3, _080172A0 @ =gOamObjects+0x158
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r4, r3, #0
	adds r3, #8
	movs r2, #0xff
	ands r1, r2
	movs r5, #0
	strh r1, [r4]
	ldr r6, _080172A4 @ =0x000001FF
	ands r0, r6
	movs r2, #0x80
	lsls r2, r2, #7
	mov sb, r2
	orrs r0, r2
	strh r0, [r4, #2]
	ldr r0, _080172A8 @ =0x0000317C
	strh r0, [r4, #4]
	mov r0, ip
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, r3, #0
	adds r3, #8
	adds r2, r1, #0
	mov r7, sb
	orrs r2, r7
	orrs r2, r5
	strh r2, [r4]
	ands r0, r6
	movs r5, #0x80
	lsls r5, r5, #8
	mov r8, r5
	orrs r0, r5
	strh r0, [r4, #2]
	ldr r5, _080172AC @ =0x00003174
	strh r5, [r4, #4]
	mov r0, ip
	adds r0, #0x28
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	strh r2, [r3]
	ands r0, r6
	mov r7, r8
	orrs r0, r7
	strh r0, [r3, #2]
	strh r5, [r3, #4]
	mov r0, ip
	adds r0, #0x48
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, #8
	strh r1, [r3]
	ands r0, r6
	mov r1, sb
	orrs r0, r1
	strh r0, [r3, #2]
	ldr r0, _080172B0 @ =0x00003170
	strh r0, [r3, #4]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080172A0: .4byte gOamObjects+0x158
_080172A4: .4byte 0x000001FF
_080172A8: .4byte 0x0000317C
_080172AC: .4byte 0x00003174
_080172B0: .4byte 0x00003170

	thumb_func_start sub_80172B4
sub_80172B4: @ 0x080172B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r2, #0
	str r3, [sp, #8]
	ldr r6, [sp, #0x3c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	cmp r7, #0
	bge _080172D8
	movs r7, #0
_080172D8:
	ldr r0, [sp, #0x38]
	adds r0, r0, r6
	lsls r0, r0, #3
	ldr r5, _08017354 @ =gOamObjects
	adds r0, r0, r5
	mov sb, r0
	movs r0, #0x80
	lsls r0, r0, #1
	mov sl, r0
	ldr r4, _08017358 @ =gSineTable
	ldr r1, _0801735C @ =gSineTable+0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r1, sl
	bl fix_mul
	strh r0, [r5, #6]
	movs r1, #0
	ldrsh r0, [r4, r1]
	mov r1, sl
	bl fix_mul
	strh r0, [r5, #0xe]
	ldrh r4, [r4]
	rsbs r0, r4, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, sl
	bl fix_mul
	strh r0, [r5, #0x16]
	ldr r2, _0801735C @ =gSineTable+0x80
	movs r1, #0
	ldrsh r0, [r2, r1]
	mov r1, sl
	bl fix_mul
	strh r0, [r5, #0x1e]
	subs r6, #1
	cmp r6, #0
	bge _0801732C
	movs r6, #0
_0801732C:
	mov sl, r6
	ldr r2, [sp, #8]
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	ldr r1, [sp, #0x40]
	lsls r0, r1, #0x10
	lsrs r4, r0, #4
	lsls r1, r6, #0x14
	ldr r2, [sp]
	lsls r0, r2, #0x10
	adds r2, r1, r0
	movs r3, #0xff
	ldr r0, [sp, #4]
	ands r3, r0
	movs r0, #0xc0
	lsls r0, r0, #2
	orrs r3, r0
	ldr r6, _08017360 @ =0x000001FF
	b _0801738E
	.align 2, 0
_08017354: .4byte gOamObjects
_08017358: .4byte gSineTable
_0801735C: .4byte gSineTable+0x80
_08017360: .4byte 0x000001FF
_08017364:
	lsrs r1, r2, #0x10
	mov r0, sb
	strh r3, [r0]
	ands r1, r6
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r1, r0
	mov r0, sb
	strh r1, [r0, #2]
	ldr r0, _08017484 @ =0x000003FF
	ands r0, r5
	orrs r0, r4
	mov r1, sb
	strh r0, [r1, #4]
	movs r0, #8
	add sb, r0
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r2, r2, r1
	movs r0, #1
	add sl, r0
_0801738E:
	adds r0, r7, #0
	cmp r7, #0
	bge _08017396
	adds r0, #0xf
_08017396:
	asrs r0, r0, #4
	cmp sl, r0
	blt _08017364
	mov r1, sl
	cmp r1, #4
	bgt _08017470
	lsls r0, r0, #4
	subs r7, r7, r0
	cmp r7, #0
	beq _08017470
	ldr r2, [sp, #0x44]
	lsls r2, r2, #0x10
	str r2, [sp, #0x10]
	lsrs r0, r2, #0x10
	str r0, [sp, #0xc]
	lsls r0, r7, #0x14
	asrs r0, r0, #0x10
	bl fix_inverse
	adds r5, r0, #0
	ldr r1, _08017488 @ =gSineTable+0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r1, r5, #0
	bl fix_mul
	ldr r1, _0801748C @ =gOamObjects
	mov r8, r1
	ldr r2, [sp, #0xc]
	lsls r1, r2, #5
	add r1, r8
	strh r0, [r1, #6]
	ldr r1, _08017490 @ =gSineTable
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r1, #0x80
	lsls r1, r1, #1
	bl fix_mul
	ldr r1, [sp, #0xc]
	lsls r4, r1, #2
	adds r1, r4, #1
	lsls r1, r1, #3
	add r1, r8
	strh r0, [r1, #6]
	ldr r2, _08017490 @ =gSineTable
	ldrh r2, [r2]
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	bl fix_mul
	adds r1, r4, #2
	lsls r1, r1, #3
	add r1, r8
	strh r0, [r1, #6]
	ldr r1, _08017488 @ =gSineTable+0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r1, #0x80
	lsls r1, r1, #1
	bl fix_mul
	adds r4, #3
	lsls r4, r4, #3
	add r4, r8
	strh r0, [r4, #6]
	mov r0, sl
	lsls r1, r0, #4
	movs r0, #0x10
	subs r0, r0, r7
	lsrs r0, r0, #1
	subs r1, r1, r0
	movs r0, #1
	ands r7, r0
	subs r1, r1, r7
	ldr r2, [sp]
	adds r1, r1, r2
	ldr r0, [sp, #0x40]
	lsls r3, r0, #0x10
	movs r0, #0xff
	ldr r2, [sp, #4]
	ands r0, r2
	movs r2, #0xc0
	lsls r2, r2, #2
	orrs r0, r2
	mov r2, sb
	strh r0, [r2]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x17
	ldr r0, [sp, #0xc]
	lsls r0, r0, #9
	str r0, [sp, #0x14]
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r1, r0
	strh r1, [r2, #2]
	ldr r1, [sp, #8]
	lsls r0, r1, #0x16
	lsrs r0, r0, #0x16
	lsrs r3, r3, #4
	orrs r0, r3
	strh r0, [r2, #4]
	movs r2, #1
	add sl, r2
_08017470:
	mov r0, sl
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08017484: .4byte 0x000003FF
_08017488: .4byte gSineTable+0x80
_0801748C: .4byte gOamObjects
_08017490: .4byte gSineTable

	thumb_func_start sub_8017494
sub_8017494: @ 0x08017494
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r0, _080174D8 @ =gMain
	ldr r4, [r0]
	adds r0, r4, #0
	movs r1, #4
	bl __umodsi3
	cmp r0, #0
	bne _080174D0
	adds r0, r4, #0
	movs r1, #4
	bl __udivsi3
	movs r1, #0xf
	bl __umodsi3
	ldr r1, _080174DC @ =0x040000D4
	lsls r0, r0, #5
	adds r0, r6, r0
	str r0, [r1]
	lsls r0, r5, #5
	ldr r2, _080174E0 @ =0x05000200
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _080174E4 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080174D0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080174D8: .4byte gMain
_080174DC: .4byte 0x040000D4
_080174E0: .4byte 0x05000200
_080174E4: .4byte 0x80000010

	thumb_func_start sub_80174E8
sub_80174E8: @ 0x080174E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	str r0, [sp, #0x4c]
	str r1, [sp, #0x50]
	mov r1, sp
	ldr r0, _080175B4 @ =gUnknown_080242F0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r4, r5}
	stm r1!, {r2, r4, r5}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	add r4, sp, #0x30
	adds r1, r4, #0
	ldr r0, _080175B8 @ =gUnknown_08024320
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _080175BC @ =gMain
	ldr r0, [r0]
	ldr r1, [r4, #0x18]
	bl __umodsi3
	mov sl, r0
	movs r0, #0
	mov r8, r0
	mov r7, sp
	mov sb, r4
_08017532:
	mov r1, sb
	ldr r0, [r1]
	cmp r0, sl
	beq _08017542
	bl sub_80175C0
	cmp r0, #0
	bne _08017592
_08017542:
	mov r0, r8
	movs r1, #3
	bl __modsi3
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x3a
	adds r0, r5, #0
	bl sub_8013EB0
	adds r4, r0, #0
	cmp r4, #0
	bne _08017592
	ldr r1, [r7]
	ldr r2, [sp, #0x4c]
	adds r1, r2, r1
	ldr r2, [r7, #4]
	ldr r3, [sp, #0x50]
	adds r2, r3, r2
	adds r2, #8
	adds r0, r5, #0
	bl sub_801484C
	adds r4, r0, #0
	subs r5, #0x2a
	bl Random
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r0, #0
	asrs r2, r2, #8
	lsls r2, r2, #8
	subs r2, r0, r2
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r2, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8014074
_08017592:
	adds r7, #8
	movs r1, #4
	add sb, r1
	movs r2, #1
	add r8, r2
	mov r3, r8
	cmp r3, #5
	ble _08017532
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080175B4: .4byte gUnknown_080242F0
_080175B8: .4byte gUnknown_08024320
_080175BC: .4byte gMain

	thumb_func_start sub_80175C0
sub_80175C0: @ 0x080175C0
	push {r4, r5, lr}
	movs r5, #0
	movs r4, #0
_080175C6:
	adds r0, r4, #0
	adds r0, #0x3a
	bl sub_8013EB0
	cmp r0, #0
	beq _080175D4
	adds r5, #1
_080175D4:
	adds r4, #1
	cmp r4, #2
	ble _080175C6
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80175E4
sub_80175E4: @ 0x080175E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0
	str r0, [sp, #0x10]
	movs r7, #0
	ldr r6, _0801768C @ =gMain
	ldr r2, _08017690 @ =gMain+0x98
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, _08017694 @ =gMain+0x9A
	movs r5, #0
	ldrsh r0, [r4, r5]
	cmp r1, r0
	ble _0801769C
	ldr r0, _08017698 @ =gUnknown_08112700
	movs r1, #7
	bl sub_8017494
	str r7, [sp, #0x10]
	ldr r0, [r6]
	lsrs r7, r0, #1
	movs r0, #1
	ands r7, r0
	movs r0, #0x9e
	adds r0, r0, r6
	mov sl, r0
	movs r5, #8
	rsbs r5, r5, #0
	ldrh r1, [r0]
	adds r0, r1, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r6, #0xa0
	mov r8, r6
	adds r4, r7, #0
	subs r4, #8
	ldrh r2, [r6]
	adds r1, r2, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r3, _08017694 @ =gMain+0x9A
	movs r6, #0
	ldrsh r2, [r3, r6]
	movs r3, #0xde
	lsls r3, r3, #1
	mov sb, r3
	movs r6, #0x25
	str r6, [sp]
	ldr r3, [sp, #0x10]
	str r3, [sp, #4]
	movs r3, #4
	str r3, [sp, #8]
	movs r3, #0x14
	str r3, [sp, #0xc]
	mov r3, sb
	bl sub_80172B4
	adds r3, r0, #0
	mov r0, sl
	ldrh r0, [r0]
	adds r5, r0, r5
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r1, r8
	ldrh r1, [r1]
	adds r4, r1, r4
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, _08017690 @ =gMain+0x98
	movs r1, #0
	ldrsh r2, [r0, r1]
	str r6, [sp]
	str r3, [sp, #4]
	movs r0, #7
	str r0, [sp, #8]
	movs r0, #0x15
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r1, r4, #0
	b _080177DE
	.align 2, 0
_0801768C: .4byte gMain
_08017690: .4byte gMain+0x98
_08017694: .4byte gMain+0x9A
_08017698: .4byte gUnknown_08112700
_0801769C:
	cmp r1, r0
	bge _08017764
	movs r2, #0x9e
	adds r2, r2, r6
	mov sl, r2
	movs r3, #0
	ldrsh r0, [r2, r3]
	ldr r4, _08017758 @ =gMain+0x9A
	movs r5, #0
	ldrsh r1, [r4, r5]
	adds r0, r0, r1
	adds r6, #0xa0
	movs r2, #0
	ldrsh r1, [r6, r2]
	bl sub_80174E8
	ldr r0, _0801775C @ =gUnknown_08112520
	movs r1, #7
	bl sub_8017494
	bl Random
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	movs r0, #1
	ands r5, r0
	subs r3, r5, #2
	str r3, [sp, #0x10]
	bl Random
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #3
	bl __umodsi3
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	subs r7, r4, #4
	subs r5, #0xa
	mov r1, sl
	ldrh r1, [r1]
	adds r0, r1, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r4, #0xc
	ldrh r2, [r6]
	adds r1, r2, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r3, _08017760 @ =gMain+0x98
	movs r2, #0
	ldrsh r3, [r3, r2]
	mov ip, r3
	movs r3, #0xde
	lsls r3, r3, #1
	mov sb, r3
	movs r2, #0x25
	mov r8, r2
	str r2, [sp]
	movs r3, #0
	str r3, [sp, #4]
	movs r3, #4
	str r3, [sp, #8]
	movs r3, #0x14
	str r3, [sp, #0xc]
	mov r2, ip
	mov r3, sb
	bl sub_80172B4
	adds r3, r0, #0
	mov r0, sl
	ldrh r0, [r0]
	adds r5, r0, r5
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	ldrh r6, [r6]
	adds r4, r6, r4
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r1, _08017758 @ =gMain+0x9A
	movs r6, #0
	ldrsh r2, [r1, r6]
	mov r0, r8
	str r0, [sp]
	str r3, [sp, #4]
	movs r0, #7
	str r0, [sp, #8]
	movs r0, #0x15
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r1, r4, #0
	b _080177DE
	.align 2, 0
_08017758: .4byte gMain+0x9A
_0801775C: .4byte gUnknown_08112520
_08017760: .4byte gMain+0x98
_08017764:
	adds r4, r6, #0
	adds r4, #0x9c
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _080177F0
	ldr r0, _080177E8 @ =gUnknown_08112520
	movs r1, #7
	bl sub_8017494
	movs r2, #0x9e
	adds r2, r2, r6
	mov r8, r2
	ldrh r0, [r2]
	subs r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r5, r6, #0
	adds r5, #0xa0
	ldrh r1, [r5]
	subs r1, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r3, _080177EC @ =gMain+0x98
	movs r6, #0
	ldrsh r2, [r3, r6]
	movs r6, #0
	ldrsh r3, [r4, r6]
	subs r2, r2, r3
	movs r3, #0xde
	lsls r3, r3, #1
	mov sb, r3
	movs r4, #0x25
	str r4, [sp]
	str r7, [sp, #4]
	movs r3, #4
	str r3, [sp, #8]
	movs r3, #0x14
	str r3, [sp, #0xc]
	mov r3, sb
	bl sub_80172B4
	adds r3, r0, #0
	mov r6, r8
	ldrh r0, [r6]
	subs r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r5]
	subs r1, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r5, _080177EC @ =gMain+0x98
	movs r6, #0
	ldrsh r2, [r5, r6]
	str r4, [sp]
	str r3, [sp, #4]
	movs r3, #7
	str r3, [sp, #8]
	movs r3, #0x15
	str r3, [sp, #0xc]
_080177DE:
	mov r3, sb
	bl sub_80172B4
	b _0801782C
	.align 2, 0
_080177E8: .4byte gUnknown_08112520
_080177EC: .4byte gMain+0x98
_080177F0:
	ldr r0, _08017858 @ =gUnknown_08112520
	movs r1, #7
	bl sub_8017494
	adds r0, r6, #0
	adds r0, #0x9e
	ldrh r0, [r0]
	subs r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0xa0
	ldrh r1, [r1]
	subs r1, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r3, _0801785C @ =gMain+0x98
	movs r4, #0
	ldrsh r2, [r3, r4]
	movs r3, #0xde
	lsls r3, r3, #1
	movs r4, #0x25
	str r4, [sp]
	str r7, [sp, #4]
	movs r4, #4
	str r4, [sp, #8]
	movs r4, #0x14
	str r4, [sp, #0xc]
	bl sub_80172B4
_0801782C:
	ldr r1, _08017860 @ =gMain
	adds r0, r1, #0
	adds r0, #0x9e
	movs r5, #0
	ldrsh r0, [r0, r5]
	ldr r6, [sp, #0x10]
	adds r0, r0, r6
	adds r1, #0xa0
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r1, r1, r7
	bl sub_801720C
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017858: .4byte gUnknown_08112520
_0801785C: .4byte gMain+0x98
_08017860: .4byte gMain

	thumb_func_start sub_8017864
sub_8017864: @ 0x08017864
	ldr r0, _08017880 @ =gOamObjects
	movs r2, #0x80
	lsls r2, r2, #2
	movs r1, #0xd
	movs r3, #0xbc
	lsls r3, r3, #1
	adds r0, r0, r3
_08017872:
	strh r2, [r0]
	subs r0, #8
	subs r1, #1
	cmp r1, #0
	bge _08017872
	bx lr
	.align 2, 0
_08017880: .4byte gOamObjects

	thumb_func_start sub_8017884
sub_8017884: @ 0x08017884
	push {r4, lr}
	ldr r4, _080178D8 @ =gMain
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0x8e
	lsls r0, r0, #1
	ldrh r1, [r1]
	cmp r1, r0
	bne _080178A0
	adds r0, r4, #0
	adds r0, #0xa0
	ldrh r0, [r0]
	cmp r0, #0x14
	beq _080178D0
_080178A0:
	ldrb r0, [r4, #8]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _080178D0
	bl sub_8017864
	ldr r1, _080178DC @ =gScriptContext
	movs r0, #4
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _080178D0
	adds r0, r4, #0
	adds r0, #0xa6
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080178D0
	bl sub_8017178
	bl sub_80175E4
_080178D0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080178D8: .4byte gMain
_080178DC: .4byte gScriptContext

	thumb_func_start sub_80178E0
sub_80178E0: @ 0x080178E0
	push {lr}
	ldr r3, _0801790C @ =gMain
	adds r1, r3, #0
	adds r1, #0x9e
	movs r2, #0
	movs r0, #0x8e
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x14
	strh r0, [r1]
	adds r1, #6
	movs r0, #1
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x9c
	strh r2, [r0]
	movs r0, #0
	bl sub_8017928
	pop {r0}
	bx r0
	.align 2, 0
_0801790C: .4byte gMain

	thumb_func_start sub_8017910
sub_8017910: @ 0x08017910
	ldr r2, _08017924 @ =gMain
	adds r0, r2, #0
	adds r0, #0xb0
	movs r1, #0x50
	strh r1, [r0]
	subs r0, #0x16
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	bx lr
	.align 2, 0
_08017924: .4byte gMain

	thumb_func_start sub_8017928
sub_8017928: @ 0x08017928
	adds r3, r0, #0
	ldr r1, _08017948 @ =gMain
	adds r2, r1, #0
	adds r2, #0x97
	movs r0, #0
	strb r0, [r2]
	adds r2, #0xb
	strh r0, [r2]
	adds r2, #2
	strh r0, [r2]
	adds r1, #0x96
	ldrb r0, [r1]
	cmp r0, #0
	bne _0801794C
	strb r3, [r1]
	b _0801794E
	.align 2, 0
_08017948: .4byte gMain
_0801794C:
	strh r3, [r2]
_0801794E:
	bx lr

	thumb_func_start sub_8017950
sub_8017950: @ 0x08017950
	ldr r1, _0801796C @ =gMain
	adds r0, r1, #0
	adds r0, #0xa4
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r2, r1, #0
	cmp r0, #0
	ble _08017970
	adds r0, r2, #0
	adds r0, #0x96
	strb r3, [r0]
	b _08017978
	.align 2, 0
_0801796C: .4byte gMain
_08017970:
	adds r1, r2, #0
	adds r1, #0x96
	movs r0, #0
	strb r0, [r1]
_08017978:
	adds r0, r2, #0
	adds r0, #0x97
	movs r1, #0
	strb r1, [r0]
	adds r0, #0xb
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_801798C
sub_801798C: @ 0x0801798C
	push {r4, r5, r6, lr}
	sub sp, #0x14
	mov r1, sp
	ldr r0, _080179B8 @ =gUnknown_0802433C
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	bl sub_8017884
	bl sub_8017E9C
	bl sub_8018118
	ldr r0, _080179BC @ =gMain
	adds r0, #0x96
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080179B8: .4byte gUnknown_0802433C
_080179BC: .4byte gMain

	thumb_func_start sub_80179C0
sub_80179C0: @ 0x080179C0
	ldr r1, _08017A08 @ =gMain
	adds r2, r1, #0
	adds r2, #0xa0
	movs r0, #0x14
	strh r0, [r2]
	adds r0, r1, #0
	adds r0, #0x98
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r5, r1, #0
	cmp r0, #0
	ble _080179DA
	b _08017C6A
_080179DA:
	ldrb r0, [r5, #8]
	cmp r0, #3
	beq _080179EE
	cmp r0, #5
	beq _080179EE
	cmp r0, #6
	beq _080179EE
	cmp r0, #5
	beq _080179EE
	b _08017C6A
_080179EE:
	ldr r1, _08017A0C @ =gUnknown_0801C3EE
	adds r0, r5, #0
	adds r0, #0xb3
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl ChangeScriptSection
	movs r0, #4
	bl sub_8017928
	b _08017C6A
	.align 2, 0
_08017A08: .4byte gMain
_08017A0C: .4byte gUnknown_0801C3EE
_08017A10:
	.byte 0x04, 0x48, 0x01, 0x1C, 0x97, 0x31, 0x0A, 0x78, 0x05, 0x1C, 0x00, 0x2A, 0x04, 0xD0, 0x01, 0x2A
	.byte 0x04, 0xD0, 0x22, 0xE1, 0xB0, 0x37, 0x00, 0x03, 0x01, 0x20, 0x08, 0x70, 0x2B, 0x1C, 0x9E, 0x33
	.byte 0x1A, 0x88, 0x04, 0x3A, 0x1A, 0x80, 0xA8, 0x68, 0x05, 0x49, 0x08, 0x40, 0x05, 0x49, 0x88, 0x42
	.byte 0x0A, 0xD1, 0x10, 0x04, 0x00, 0x14, 0x54, 0x28, 0x00, 0xDD, 0x0E, 0xE1, 0x54, 0x20, 0x09, 0xE0
	.byte 0xFF, 0xFF, 0xFF, 0x00, 0x04, 0x0A, 0x07, 0x00, 0x10, 0x04, 0x00, 0x14, 0x9C, 0x28, 0x00, 0xDD
	.byte 0x03, 0xE1, 0x9C, 0x20, 0x18, 0x80, 0xFF, 0xF7, 0x73, 0xFF, 0xFE, 0xE0, 0x04, 0x48, 0x01, 0x1C
	.byte 0x97, 0x31, 0x0A, 0x78, 0x05, 0x1C, 0x00, 0x2A, 0x04, 0xD0, 0x01, 0x2A, 0x04, 0xD0, 0xF4, 0xE0
	.byte 0xB0, 0x37, 0x00, 0x03, 0x01, 0x20, 0x08, 0x70, 0x2A, 0x1C, 0x9E, 0x32, 0x10, 0x88, 0x04, 0x30
	.byte 0x10, 0x80, 0x00, 0x04, 0x04, 0x49, 0x88, 0x42, 0x00, 0xDC, 0xE6, 0xE0, 0x8E, 0x20, 0x40, 0x00
	.byte 0x10, 0x80, 0xFF, 0xF7, 0x55, 0xFF, 0xE0, 0xE0, 0x00, 0x00, 0x1B, 0x01, 0x05, 0x4C, 0x20, 0x1C
	.byte 0x97, 0x30, 0x00, 0x78, 0x25, 0x1C, 0x01, 0x28, 0x58, 0xD0, 0x01, 0x28, 0x04, 0xDC, 0x00, 0x28
	.byte 0x06, 0xD0, 0xD2, 0xE0, 0xB0, 0x37, 0x00, 0x03, 0x02, 0x28, 0x00, 0xD1, 0x9F, 0xE0, 0xCC, 0xE0
	.byte 0x20, 0x1C, 0x9C, 0x30, 0x00, 0x23, 0xC0, 0x5E, 0x00, 0x28, 0x03, 0xDA, 0x9C, 0x20, 0xFB, 0xF7
	.byte 0xA9, 0xFE, 0x04, 0xE0, 0x00, 0x28, 0x02, 0xDD, 0x4C, 0x20, 0xFB, 0xF7, 0xA3, 0xFE, 0x18, 0x49
	.byte 0x0A, 0x1C, 0x98, 0x32, 0x0B, 0x1C, 0x9C, 0x33, 0x14, 0x88, 0x1D, 0x88, 0x60, 0x1B, 0x00, 0x24
	.byte 0x10, 0x80, 0x00, 0x04, 0x0D, 0x1C, 0x00, 0x28, 0x00, 0xDA, 0x14, 0x80, 0x00, 0x26, 0x90, 0x5F
	.byte 0x50, 0x28, 0x01, 0xDD, 0x50, 0x20, 0x10, 0x80, 0xA3, 0x20, 0x80, 0x00, 0x29, 0x18, 0x00, 0x26
	.byte 0x98, 0x5F, 0x08, 0x60, 0x1C, 0x80, 0x29, 0x1C, 0xA8, 0x31, 0x2B, 0x1C, 0x9A, 0x33, 0x1C, 0x88
	.byte 0x20, 0x04, 0x08, 0x60, 0x2C, 0x1C, 0xAC, 0x34, 0x00, 0x26, 0x90, 0x5F, 0x00, 0x22, 0x99, 0x5E
	.byte 0x40, 0x1A, 0x00, 0x04, 0x20, 0x60, 0x00, 0x28, 0x04, 0xDC, 0x28, 0x21, 0x03, 0xE0, 0x00, 0x00
	.byte 0xB0, 0x37, 0x00, 0x03, 0x64, 0x21, 0x02, 0xF0, 0xC7, 0xFF, 0x20, 0x60, 0x02, 0x49, 0x00, 0x22
	.byte 0x28, 0x20, 0x08, 0x71, 0x2A, 0x76, 0x4C, 0xE0, 0x80, 0x3C, 0x00, 0x03, 0x22, 0x1C, 0xA8, 0x32
	.byte 0x21, 0x1C, 0xAC, 0x31, 0x10, 0x68, 0x09, 0x68, 0x40, 0x18, 0x10, 0x60, 0x02, 0x14, 0x23, 0x1C
	.byte 0x9A, 0x33, 0x1A, 0x80, 0x00, 0x29, 0x07, 0xDC, 0x20, 0x1C, 0x98, 0x30, 0x01, 0x88, 0x00, 0x24
	.byte 0x00, 0x5F, 0x82, 0x42, 0x08, 0xDA, 0x06, 0xE0, 0x20, 0x1C, 0x98, 0x30, 0x01, 0x88, 0x00, 0x26
	.byte 0x80, 0x5F, 0x82, 0x42, 0x00, 0xDD, 0x19, 0x80, 0x0C, 0x4B, 0x18, 0x79, 0x00, 0x28, 0x01, 0xD0
	.byte 0x01, 0x38, 0x18, 0x71, 0x29, 0x1C, 0x08, 0x1C, 0x98, 0x30, 0x0A, 0x1C, 0x9A, 0x32, 0x14, 0x88
	.byte 0x00, 0x88, 0xA0, 0x42, 0x51, 0xD1, 0x18, 0x79, 0x00, 0x28, 0x0C, 0xD0, 0x08, 0x1C, 0xAC, 0x30
	.byte 0x00, 0x68, 0x00, 0x28, 0x04, 0xDC, 0x60, 0x1C, 0x10, 0x80, 0x46, 0xE0, 0x80, 0x3C, 0x00, 0x03
	.byte 0x60, 0x1E, 0x10, 0x80, 0x41, 0xE0, 0xFF, 0xF7, 0xEB, 0xFC, 0x04, 0x1C, 0x00, 0x2C, 0x3C, 0xD1
	.byte 0x4C, 0x20, 0xFB, 0xF7, 0x41, 0xFE, 0x9C, 0x20, 0xFB, 0xF7, 0x3E, 0xFE, 0x28, 0x1C, 0xA2, 0x30
	.byte 0x04, 0x80, 0x29, 0x1C, 0x97, 0x31, 0x08, 0x78, 0x01, 0x30, 0x08, 0x70, 0x2D, 0xE0, 0x21, 0x1C
	.byte 0xA2, 0x31, 0x0A, 0x88, 0x00, 0x23, 0xC8, 0x5E, 0x1D, 0x28, 0x02, 0xDC, 0x50, 0x1C, 0x08, 0x80
	.byte 0x23, 0xE0, 0x22, 0x1C, 0x9E, 0x32, 0x10, 0x88, 0x04, 0x30, 0x10, 0x80, 0x00, 0x04, 0x08, 0x49
	.byte 0x88, 0x42, 0x1A, 0xDD, 0x8E, 0x20, 0x40, 0x00, 0x10, 0x80, 0xFF, 0xF7, 0x89, 0xFE, 0xA3, 0x25
	.byte 0xAD, 0x00, 0x60, 0x19, 0x00, 0x68, 0x00, 0x28, 0x0F, 0xDD, 0x01, 0x20, 0x20, 0x76, 0x0C, 0xE0
	.byte 0x00, 0x00, 0x1B, 0x01, 0x07, 0x4B, 0x1A, 0x1C, 0x97, 0x32, 0x11, 0x78, 0x00, 0x29, 0x04, 0xD1
	.byte 0x01, 0x20, 0x10, 0x70, 0x18, 0x1C, 0xA6, 0x30, 0x01, 0x80
_08017C6A:
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017C74:
	.byte 0xB0, 0x37, 0x00, 0x03

	thumb_func_start sub_8017C78
sub_8017C78: @ 0x08017C78
	ldr r0, _08017C8C @ =gMain
	adds r0, #0x96
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017C86
	cmp r0, #4
	bne _08017C90
_08017C86:
	movs r0, #0
	b _08017C92
	.align 2, 0
_08017C8C: .4byte gMain
_08017C90:
	movs r0, #1
_08017C92:
	bx lr

	thumb_func_start sub_8017C94
sub_8017C94: @ 0x08017C94
	movs r1, #0
	ldr r0, _08017CA8 @ =gMain
	movs r2, #0xa2
	lsls r2, r2, #2
	adds r0, r0, r2
_08017C9E:
	ldrb r2, [r0]
	cmp r2, #2
	bhi _08017CAC
	movs r0, #0
	b _08017CB6
	.align 2, 0
_08017CA8: .4byte gMain
_08017CAC:
	adds r0, #0x14
	adds r1, #1
	cmp r1, #1
	ble _08017C9E
	movs r0, #1
_08017CB6:
	bx lr

	thumb_func_start sub_8017CB8
sub_8017CB8: @ 0x08017CB8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldrb r0, [r5]
	cmp r0, #5
	bls _08017CC8
	b _08017E94
_08017CC8:
	lsls r0, r0, #2
	ldr r1, _08017CD4 @ =_08017CD8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08017CD4: .4byte _08017CD8
_08017CD8: @ jump table
	.4byte _08017CF0 @ case 0
	.4byte _08017D78 @ case 1
	.4byte _08017DDC @ case 2
	.4byte _08017E0A @ case 3
	.4byte _08017E5C @ case 4
	.4byte _08017E94 @ case 5
_08017CF0:
	cmp r4, #0
	bne _08017D18
	ldr r0, _08017D14 @ =0xFFC00000
	str r0, [r5, #4]
	bl Random
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	str r0, [r5, #8]
	movs r0, #0x98
	lsls r0, r0, #0xc
	b _08017D34
	.align 2, 0
_08017D14: .4byte 0xFFC00000
_08017D18:
	movs r0, #0x98
	lsls r0, r0, #0x11
	str r0, [r5, #4]
	bl Random
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x78
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	str r0, [r5, #8]
	ldr r0, _08017D6C @ =0xFFF68000
_08017D34:
	str r0, [r5, #0xc]
	bl Random
	lsls r0, r0, #0x18
	movs r1, #0xf0
	lsls r1, r1, #0x14
	ands r1, r0
	lsrs r1, r1, #0xa
	ldr r0, _08017D70 @ =0xFFFE0000
	adds r1, r1, r0
	str r1, [r5, #0x10]
	ldr r0, _08017D74 @ =gMain
	ldrh r1, [r0, #0x2e]
	cmp r1, #0x78
	beq _08017D54
	b _08017E8E
_08017D54:
	movs r1, #0x3a
	ldrsh r0, [r0, r1]
	movs r1, #0xa0
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, [r5, #8]
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r5, #8]
	b _08017E8E
	.align 2, 0
_08017D6C: .4byte 0xFFF68000
_08017D70: .4byte 0xFFFE0000
_08017D74: .4byte gMain
_08017D78:
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	adds r1, r1, r0
	str r1, [r5, #4]
	ldr r2, [r5, #8]
	ldr r0, [r5, #0x10]
	adds r2, r2, r0
	str r2, [r5, #8]
	asrs r1, r1, #0x10
	strh r1, [r3, #0x10]
	asrs r0, r2, #0x10
	strh r0, [r3, #0x12]
	ldr r0, _08017DC0 @ =gMain
	ldrh r0, [r0, #0x2e]
	cmp r0, #0x78
	bne _08017D9E
	ldr r1, _08017DC4 @ =0xFFFF0000
	adds r0, r2, r1
	str r0, [r5, #8]
_08017D9E:
	cmp r4, #0
	bne _08017DCC
	ldr r1, [r5, #4]
	ldr r0, _08017DC8 @ =0x012FFFFF
	cmp r1, r0
	ble _08017E94
_08017DAA:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	bl Random
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	strb r0, [r5, #1]
	b _08017E94
	.align 2, 0
_08017DC0: .4byte gMain
_08017DC4: .4byte 0xFFFF0000
_08017DC8: .4byte 0x012FFFFF
_08017DCC:
	ldr r1, [r5, #4]
	ldr r0, _08017DD8 @ =0xFFC00000
	cmp r1, r0
	bgt _08017E94
	b _08017DAA
	.align 2, 0
_08017DD8: .4byte 0xFFC00000
_08017DDC:
	ldr r0, _08017DF0 @ =gMain
	movs r1, #0xac
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08017DF4
	movs r0, #3
	b _08017E92
	.align 2, 0
_08017DF0: .4byte gMain
_08017DF4:
	movs r0, #0x98
	lsls r0, r0, #1
	strh r0, [r3, #0x10]
	ldrb r0, [r5, #1]
	subs r1, r0, #1
	strb r1, [r5, #1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08017E94
	movs r0, #0
	b _08017E92
_08017E0A:
	bl sub_8017C94
	cmp r0, #0
	beq _08017E94
	cmp r4, #0
	bne _08017E20
	ldr r0, _08017E1C @ =0xFFC00000
	b _08017E24
	.align 2, 0
_08017E1C: .4byte 0xFFC00000
_08017E20:
	movs r0, #0x98
	lsls r0, r0, #0x11
_08017E24:
	str r0, [r5, #4]
	bl Random
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x50
	bl __umodsi3
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #8
	str r4, [r5, #8]
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	subs r0, r0, r1
	movs r1, #0x60
	bl __divsi3
	str r0, [r5, #0xc]
	movs r0, #0xf0
	lsls r0, r0, #0xe
	subs r0, r0, r4
	movs r1, #0x60
	bl __divsi3
	str r0, [r5, #0x10]
	b _08017E8E
_08017E5C:
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r2, [r5, #8]
	ldr r1, [r5, #0x10]
	adds r2, r2, r1
	str r2, [r5, #8]
	asrs r0, r0, #0x10
	strh r0, [r3, #0x10]
	asrs r2, r2, #0x10
	strh r2, [r3, #0x12]
	subs r0, #0x7f
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08017E94
	cmp r2, #0x3a
	ble _08017E94
	cmp r2, #0x3c
	bgt _08017E94
	movs r0, #0x80
	strh r0, [r3, #0x10]
	movs r0, #0x3c
	strh r0, [r3, #0x12]
_08017E8E:
	ldrb r0, [r5]
	adds r0, #1
_08017E92:
	strb r0, [r5]
_08017E94:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8017E9C
sub_8017E9C: @ 0x08017E9C
	push {r4, lr}
	movs r0, #0x8f
	bl sub_8013EB0
	adds r4, r0, #0
	cmp r4, #0
	beq _08017EC0
	ldr r0, _08017EE8 @ =gMain+0x288
	movs r1, #0
	adds r2, r4, #0
	bl sub_8017CB8
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r4, #0
	movs r1, #0
	bl sub_8014074
_08017EC0:
	movs r0, #0x90
	bl sub_8013EB0
	adds r4, r0, #0
	cmp r4, #0
	beq _08017EE2
	ldr r0, _08017EEC @ =gMain+0x29C
	movs r1, #1
	adds r2, r4, #0
	bl sub_8017CB8
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r4, #0
	movs r1, #1
	bl sub_8014074
_08017EE2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017EE8: .4byte gMain+0x288
_08017EEC: .4byte gMain+0x29C

	thumb_func_start sub_8017EF0
sub_8017EF0: @ 0x08017EF0
	push {r4, lr}
	sub sp, #4
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	ldr r0, _08017F20 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _08017F24 @ =gMain+0x288
	str r2, [r0, #4]
	ldr r3, _08017F28 @ =0x8100000A
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r4, [r1]
	str r1, [r0]
	adds r2, #0x14
	str r2, [r0, #4]
	str r3, [r0, #8]
	ldr r0, [r0, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017F20: .4byte 0x040000D4
_08017F24: .4byte gMain+0x288
_08017F28: .4byte 0x8100000A

	thumb_func_start sub_8017F2C
sub_8017F2C: @ 0x08017F2C
	ldr r0, _08017F3C @ =gMain
	movs r1, #0xac
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_08017F3C: .4byte gMain

	thumb_func_start sub_8017F40
sub_8017F40: @ 0x08017F40
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08017FCC @ =0xFFF00000
	str r0, [r4, #8]
	bl Random
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r1, #0
	asrs r0, r0, #8
	lsls r0, r0, #8
	subs r0, r1, r0
	adds r0, #0x40
	lsls r0, r0, #0x10
	str r0, [r4, #4]
	bl Random
	lsls r0, r0, #0x18
	movs r1, #0xf0
	lsls r1, r1, #0x14
	ands r1, r0
	lsrs r1, r1, #0x10
	ldr r0, _08017FD0 @ =0xFFFF0000
	adds r1, r1, r0
	str r1, [r4, #0xc]
	bl Random
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x18
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r2, r0, r1
	str r2, [r4, #0x10]
	cmp r5, #7
	ble _08017FA0
	ldr r0, [r4, #0xc]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r4, #0xc]
	lsrs r0, r2, #1
	str r0, [r4, #0x10]
_08017FA0:
	bl Random
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r1, #0
	asrs r0, r0, #8
	lsls r0, r0, #8
	subs r0, r1, r0
	str r0, [r4, #0x14]
	bl Random
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r4, #0x18]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017FCC: .4byte 0xFFF00000
_08017FD0: .4byte 0xFFFF0000

	thumb_func_start sub_8017FD4
sub_8017FD4: @ 0x08017FD4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	strb r5, [r4]
	bl Random
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r1, #0
	asrs r0, r0, #8
	lsls r0, r0, #8
	subs r0, r1, r0
	strh r0, [r4, #0x22]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8017F40
	ldrb r0, [r4]
	adds r0, #0x7f
	movs r2, #6
	ldrsh r1, [r4, r2]
	movs r3, #0xa
	ldrsh r2, [r4, r3]
	bl sub_801484C
	str r0, [r4, #0x1c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8018010
sub_8018010: @ 0x08018010
	push {lr}
	ldr r0, [r0, #0x1c]
	bl DestroyAnimation
	pop {r0}
	bx r0

	thumb_func_start sub_801801C
sub_801801C: @ 0x0801801C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4]
	adds r0, #0x7f
	bl sub_8013EB0
	cmp r0, #0
	beq _080180AC
	ldrh r1, [r4, #0x22]
	movs r2, #0x22
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bgt _080180A8
	ldr r0, [r4, #4]
	ldr r3, [r4, #0xc]
	adds r5, r0, r3
	str r5, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #8]
	ldr r0, _080180A0 @ =gMain
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08018080
	ldr r6, _080180A4 @ =gSineTable
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r1, r1, r0
	adds r2, r1, #0
	str r1, [r4, #0x14]
	adds r0, r1, #0
	cmp r1, #0
	bge _08018066
	adds r0, #0xff
_08018066:
	asrs r0, r0, #8
	lsls r0, r0, #8
	subs r0, r2, r0
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r3, r0
	movs r1, #0xff
	bl __divsi3
	adds r0, r5, r0
	str r0, [r4, #4]
_08018080:
	ldr r0, [r4, #0x1c]
	movs r2, #6
	ldrsh r1, [r4, r2]
	movs r3, #0xa
	ldrsh r2, [r4, r3]
	bl sub_8013FB8
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0xa9
	ble _080180AC
	ldrb r1, [r4]
	adds r0, r4, #0
	bl sub_8017F40
	b _080180AC
	.align 2, 0
_080180A0: .4byte gMain
_080180A4: .4byte gSineTable
_080180A8:
	subs r0, r1, #1
	strh r0, [r4, #0x22]
_080180AC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80180B4
sub_80180B4: @ 0x080180B4
	push {r4, r5, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _080180EC @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r2, _080180F0 @ =gUnknown_03006390
	str r2, [r1, #4]
	ldr r0, _080180F4 @ =0x81000090
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r4, #0
	adds r5, r2, #0
_080180D2:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8017FD4
	adds r5, #0x24
	adds r4, #1
	cmp r4, #0xf
	ble _080180D2
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080180EC: .4byte 0x040000D4
_080180F0: .4byte gUnknown_03006390
_080180F4: .4byte 0x81000090

	thumb_func_start sub_80180F8
sub_80180F8: @ 0x080180F8
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08018114 @ =gUnknown_03006390
_080180FE:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8018010
	adds r5, #0x24
	adds r4, #1
	cmp r4, #0xf
	ble _080180FE
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018114: .4byte gUnknown_03006390

	thumb_func_start sub_8018118
sub_8018118: @ 0x08018118
	push {r4, r5, lr}
	ldr r5, _08018134 @ =gUnknown_03006390
	movs r4, #0xf
_0801811E:
	adds r0, r5, #0
	bl sub_801801C
	adds r5, #0x24
	subs r4, #1
	cmp r4, #0
	bge _0801811E
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018134: .4byte gUnknown_03006390

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
	bl sub_8013EB0
	cmp r0, #0
	beq _0801829C
	bl DestroyAnimation
_0801829C:
	movs r0, #0x45
	bl sub_8013EB0
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
	bl sub_8013EB0
	cmp r0, #0
	beq _080182CE
	bl DestroyAnimation
_080182CE:
	adds r0, r4, #0
	bl sub_8013EB0
	cmp r0, #0
	bne _080182DE
	adds r0, r4, #0
	bl sub_801480C
_080182DE:
	adds r0, r4, #0
	bl sub_8013EB0
	ldr r2, _080182F4 @ =gInvestigation
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	bl sub_8013FB8
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
	bl sub_8013EB0
	cmp r0, #0
	beq _08018732
	bl DestroyAnimation
_08018732:
	movs r0, #0x45
	bl sub_8013EB0
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
