	.include "asm/macros.inc"
	.syntax unified

	thumb_func_start sub_8007D88
sub_8007D88: @ 0x08007D88
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_8007D94
sub_8007D94: @ 0x08007D94
	push {r4, lr}
	adds r4, r0, #0
	bl InitScriptSection
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8007DAC
sub_8007DAC: @ 0x08007DAC
	adds r1, r0, #0
	movs r0, #4
	ldrh r2, [r1]
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08007DC8
	movs r0, #0
	strb r0, [r1, #0x12]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	b _08007DD0
_08007DC8:
	strb r0, [r1, #0xe]
	ldrb r0, [r1, #0xf]
	adds r0, #1
	strb r0, [r1, #0xf]
_08007DD0:
	ldr r0, [r1, #4]
	adds r0, #2
	str r0, [r1, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_8007DDC
sub_8007DDC: @ 0x08007DDC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r2, [r4]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08007E18
	adds r1, r4, #0
	adds r1, #0x32
	ldrb r0, [r1]
	cmp r0, #0
	beq _08007DFA
	subs r0, #1
	strb r0, [r1]
	b _080080F2
_08007DFA:
	ldr r0, _08007E14 @ =0x0000FFDF
	ands r0, r2
	strh r0, [r4]
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	ldrh r1, [r4, #0xc]
	cmp r1, #0xa
	beq _08007E0E
	b _080080F2
_08007E0E:
	adds r0, #2
	str r0, [r4, #4]
	b _080080F2
	.align 2, 0
_08007E14: .4byte 0x0000FFDF
_08007E18:
	ldr r0, _08007F88 @ =gMain
	adds r1, r0, #0
	ldrb r2, [r1, #8]
	cmp r2, #4
	bne _08007E40
	adds r0, #0x84
	ldrh r0, [r0]
	cmp r0, #3
	beq _08007E2E
	cmp r0, #7
	bne _08007E40
_08007E2E:
	adds r0, r1, #0
	adds r0, #0x88
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x86
	strh r0, [r2]
	adds r2, #3
	movs r0, #0x1f
	strb r0, [r2]
_08007E40:
	ldrb r0, [r1, #8]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08007EAC
	bl sub_8017C78
	cmp r0, #0
	beq _08007E56
	b _080080F2
_08007E56:
	bl sub_801715C
	cmp r0, #0
	beq _08007E60
	b _080080F2
_08007E60:
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	beq _08007E6A
	subs r0, #1
	strb r0, [r4, #0x14]
_08007E6A:
	ldr r1, _08007F8C @ =gJoypad
	movs r0, #2
	ldrh r3, [r1]
	ands r0, r3
	cmp r0, #0
	beq _08007E8A
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	beq _08007E8A
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _08007E8A
	movs r0, #2
	ldrh r5, [r4]
	orrs r0, r5
	strh r0, [r4]
_08007E8A:
	ldrh r3, [r4]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _08007EAC
	adds r0, r2, #0
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _08007EAC
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _08007EAC
	movs r0, #2
	orrs r0, r3
	strh r0, [r4]
_08007EAC:
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _08007EBC
	b _08008030
_08007EBC:
	movs r0, #0x2f
	bl PlaySE
	ldr r0, _08007F90 @ =gUnknown_03002080
	ldr r2, _08007F94 @ =0x000004DC
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #9
	beq _08007ED6
	cmp r0, #0
	beq _08007ED6
	movs r0, #9
	strh r0, [r1]
_08007ED6:
	ldr r0, _08007F90 @ =gUnknown_03002080
	ldr r3, _08007F98 @ =0x000004DE
	adds r1, r0, r3
	ldrh r0, [r1]
	cmp r0, #9
	beq _08007EEA
	cmp r0, #0
	beq _08007EEA
	movs r0, #9
	strh r0, [r1]
_08007EEA:
	ldr r0, _08007F9C @ =0x0000FFFC
	ldrh r5, [r4]
	ands r0, r5
	movs r5, #0
	strh r0, [r4]
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	beq _08007F0A
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x25
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4, #0x13]
_08007F0A:
	movs r0, #8
	strb r0, [r4, #0x14]
	ldrh r0, [r4, #0xc]
	cmp r0, #7
	bne _08007FB4
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	ldr r1, _08007FA0 @ =0x040000D4
	ldr r0, _08007FA4 @ =gCharSet+0x7100
	str r0, [r1]
	ldr r0, _08007FA8 @ =0x06011F80
	str r0, [r1, #4]
	ldr r0, _08007FAC @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r4, #0
	adds r0, #0x39
	strb r5, [r0]
	movs r0, #4
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
	adds r2, r4, #0
	adds r2, #0x25
	ldrb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x26
	strb r0, [r1]
	strb r5, [r2]
	adds r1, #0xf
	movs r0, #0x18
	strb r0, [r1]
	movs r0, #0x14
	strh r0, [r4, #0x1a]
	strb r5, [r4, #0xe]
	movs r0, #2
	strb r0, [r4, #0xf]
	strb r5, [r4, #0x10]
	strb r0, [r4, #0x11]
	strb r5, [r4, #0x12]
	ldr r4, _08007F88 @ =gMain
	strb r5, [r4, #0x19]
	movs r0, #1
	bl sub_80035C0
	adds r0, r4, #0
	adds r0, #0x8b
	strb r5, [r0]
	adds r4, #0x8e
	strb r5, [r4]
	movs r2, #0
	movs r3, #0xff
	ldr r1, _08007FB0 @ =gMapMarker
_08007F76:
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
	adds r1, #0x14
	adds r2, #1
	cmp r2, #7
	bls _08007F76
	movs r0, #0
	b _080080F4
	.align 2, 0
_08007F88: .4byte gMain
_08007F8C: .4byte gJoypad
_08007F90: .4byte gUnknown_03002080
_08007F94: .4byte 0x000004DC
_08007F98: .4byte 0x000004DE
_08007F9C: .4byte 0x0000FFFC
_08007FA0: .4byte 0x040000D4
_08007FA4: .4byte gCharSet+0x7100
_08007FA8: .4byte 0x06011F80
_08007FAC: .4byte 0x80000040
_08007FB0: .4byte gMapMarker
_08007FB4:
	adds r1, r4, #0
	adds r1, #0x32
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #0x20
	ldrh r2, [r4]
	orrs r0, r2
	strh r0, [r4]
	ldrh r3, [r4, #0xc]
	cmp r3, #0xa
	bne _08007FE4
	ldr r0, _08007FE0 @ =gMain
	adds r0, #0x98
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r0, #0
	ble _08007FEE
	ldr r0, [r4, #4]
	ldrh r0, [r0, #2]
	strh r0, [r4, #0x20]
	b _08007FEE
	.align 2, 0
_08007FE0: .4byte gMain
_08007FE4:
	adds r0, r4, #0
	adds r0, #0x36
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
_08007FEE:
	movs r0, #0
	strb r0, [r4, #0xe]
	strb r0, [r4, #0xf]
	movs r2, #0
	ldr r3, _08008020 @ =0x00007FFF
	ldr r1, _08008024 @ =gTextBoxCharacters
_08007FFA:
	adds r0, r3, #0
	ldrh r5, [r1]
	ands r0, r5
	strh r0, [r1]
	adds r1, #0xc
	adds r2, #1
	cmp r2, #0x3e
	bls _08007FFA
	ldrh r4, [r4, #0xc]
	cmp r4, #2
	bne _080080F2
	ldr r0, _08008028 @ =gUnknown_03000844
	ldr r1, _0800802C @ =gMain
	adds r1, #0xb6
	ldrh r1, [r1]
	bl sub_80141E0
	b _080080F2
	.align 2, 0
_08008020: .4byte 0x00007FFF
_08008024: .4byte gTextBoxCharacters
_08008028: .4byte gUnknown_03000844
_0800802C: .4byte gMain
_08008030:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800804C
	ldr r0, _08008078 @ =gUnknown_03000844
	ldr r1, _0800807C @ =gMain
	adds r1, #0xb8
	ldrh r1, [r1]
	bl sub_80141E0
	movs r0, #1
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
_0800804C:
	ldr r0, _0800807C @ =gMain
	ldrb r2, [r0, #8]
	cmp r2, #9
	beq _080080C4
	adds r1, r4, #0
	adds r1, #0x37
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, #0x36
	cmp r0, #1
	bls _08008092
	strb r5, [r1]
	ldrb r0, [r4]
	cmp r0, #0
	bne _08008080
	cmp r2, #7
	bne _08008080
	strb r5, [r4]
	b _08008092
	.align 2, 0
_08008078: .4byte gUnknown_03000844
_0800807C: .4byte gMain
_08008080:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _08008092
	movs r0, #0
	strb r0, [r4]
_08008092:
	ldr r2, _080080B4 @ =gUnknown_03002080
	ldr r1, _080080B8 @ =gUnknown_08022C98
	ldrb r3, [r4]
	adds r0, r3, r1
	ldrb r3, [r0]
	ldr r5, _080080BC @ =0x000004DC
	adds r0, r2, r5
	strh r3, [r0]
	ldrb r4, [r4]
	adds r1, r4, r1
	ldrb r0, [r1]
	adds r0, #1
	ldr r1, _080080C0 @ =0x000004DE
	adds r2, r2, r1
	strh r0, [r2]
	b _080080F2
	.align 2, 0
_080080B4: .4byte gUnknown_03002080
_080080B8: .4byte gUnknown_08022C98
_080080BC: .4byte 0x000004DC
_080080C0: .4byte 0x000004DE
_080080C4:
	adds r0, r4, #0
	adds r0, #0x36
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	ldr r0, _080080FC @ =gUnknown_03002080
	ldr r5, _08008100 @ =0x000004DC
	adds r3, r0, r5
	ldrh r1, [r3]
	cmp r1, #9
	beq _080080E0
	cmp r1, #0
	beq _080080E0
	strh r2, [r3]
_080080E0:
	ldr r2, _08008104 @ =0x000004DE
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #9
	beq _080080F2
	cmp r0, #0
	beq _080080F2
	movs r0, #9
	strh r0, [r1]
_080080F2:
	movs r0, #1
_080080F4:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080080FC: .4byte gUnknown_03002080
_08008100: .4byte 0x000004DC
_08008104: .4byte 0x000004DE

	thumb_func_start sub_8008108
sub_8008108: @ 0x08008108
	ldr r2, [r0, #4]
	adds r1, r2, #2
	str r1, [r0, #4]
	ldrh r2, [r2, #2]
	adds r1, r0, #0
	adds r1, #0x24
	strb r2, [r1]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr

	thumb_func_start sub_8008120
sub_8008120: @ 0x08008120
	adds r2, r0, #0
	ldr r0, _08008138 @ =gJoypad
	ldr r1, [r2, #4]
	ldrh r0, [r0, #2]
	ldrh r3, [r1, #2]
	ands r0, r3
	cmp r0, #0
	beq _08008134
	adds r0, r1, #4
	str r0, [r2, #4]
_08008134:
	movs r0, #1
	bx lr
	.align 2, 0
_08008138: .4byte gJoypad

	thumb_func_start sub_800813C
sub_800813C: @ 0x0800813C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r2, r0, #2
	ldrh r1, [r0, #2]
	adds r0, r2, #2
	str r0, [r4, #4]
	ldrh r0, [r2, #2]
	bl sub_8013B14
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8008160
sub_8008160: @ 0x08008160
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r1, [r1, #2]
	lsrs r2, r1, #8
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800817E
	adds r0, r2, #0
	bl PlaySE
	b _08008184
_0800817E:
	adds r0, r2, #0
	bl sub_8013878
_08008184:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8008194
sub_8008194: @ 0x08008194
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _080081BC @ =gMain
	ldrb r1, [r0, #8]
	cmp r1, #0xa
	bne _080081A2
	b _08008330
_080081A2:
	ldrh r2, [r5]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _080081D4
	adds r1, r5, #0
	adds r1, #0x32
	ldrb r0, [r1]
	cmp r0, #0
	beq _080081C0
	subs r0, #1
	strb r0, [r1]
	b _08008330
	.align 2, 0
_080081BC: .4byte gMain
_080081C0:
	ldr r0, _080081D0 @ =0x0000FFDF
	ands r0, r2
	strh r0, [r5]
	ldr r0, [r5, #4]
	adds r0, #6
	str r0, [r5, #4]
	b _08008330
	.align 2, 0
_080081D0: .4byte 0x0000FFDF
_080081D4:
	cmp r1, #7
	bne _080081EC
	ldr r0, _080081E8 @ =gOamObjects
	movs r1, #0xe4
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, #0x38
	strh r1, [r0]
	b _08008330
	.align 2, 0
_080081E8: .4byte gOamObjects
_080081EC:
	adds r1, r5, #0
	adds r1, #0x35
	ldrb r0, [r1]
	cmp r0, #0
	beq _080081FC
	subs r0, #1
	strb r0, [r1]
	b _08008330
_080081FC:
	ldr r0, _0800822C @ =gJoypad
	ldrh r1, [r0, #2]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08008230
	movs r0, #0x2a
	bl PlaySE
	adds r1, r5, #0
	adds r1, #0x39
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r1, #0
	cmp r0, #1
	bls _08008304
	movs r0, #1
	strb r0, [r4]
	b _08008304
	.align 2, 0
_0800822C: .4byte gJoypad
_08008230:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08008256
	movs r0, #0x2a
	bl PlaySE
	adds r1, r5, #0
	adds r1, #0x39
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r1, #0
	cmp r0, #1
	bls _08008304
	strb r6, [r4]
	b _08008304
_08008256:
	movs r0, #1
	ands r0, r1
	adds r4, r5, #0
	adds r4, #0x39
	cmp r0, #0
	beq _08008304
	movs r0, #0x2b
	bl PlaySE
	adds r1, r5, #0
	adds r1, #0x32
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #0x20
	ldrh r3, [r5]
	orrs r0, r3
	strh r0, [r5]
	ldrb r0, [r4]
	cmp r0, #0
	bne _08008284
	ldr r0, [r5, #4]
	ldrh r0, [r0, #2]
	b _08008288
_08008284:
	ldr r0, [r5, #4]
	ldrh r0, [r0, #4]
_08008288:
	strh r0, [r5, #0x20]
	movs r0, #0
	strb r0, [r5, #0xe]
	strb r0, [r5, #0xf]
	ldr r0, _080082F4 @ =0x0000FFFB
	ldrh r4, [r5]
	ands r0, r4
	movs r1, #0
	strh r0, [r5]
	movs r0, #0x74
	strh r0, [r5, #0x1a]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r2, r5, #0
	adds r2, #0x25
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x34
	strb r1, [r0]
	movs r0, #0
	bl sub_80035C0
	movs r2, #0
	ldr r3, _080082F8 @ =0x00007FFF
	ldr r1, _080082FC @ =gTextBoxCharacters
_080082BC:
	adds r0, r3, #0
	ldrh r4, [r1]
	ands r0, r4
	strh r0, [r1]
	adds r1, #0xc
	adds r2, #1
	cmp r2, #0x1f
	bls _080082BC
	movs r2, #0x3a
	ldr r1, _08008300 @ =gOamObjects
	movs r3, #0x80
	lsls r3, r3, #2
	movs r4, #0xe8
	lsls r4, r4, #1
	adds r0, r1, r4
_080082DA:
	strh r3, [r0]
	adds r0, #8
	adds r2, #1
	cmp r2, #0x58
	bls _080082DA
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, #0x38
	strh r0, [r1]
	movs r0, #0
	b _08008332
	.align 2, 0
_080082F4: .4byte 0x0000FFFB
_080082F8: .4byte 0x00007FFF
_080082FC: .4byte gTextBoxCharacters
_08008300: .4byte gOamObjects
_08008304:
	ldr r2, _08008338 @ =gOamObjects
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldrh r3, [r5, #0x2a]
	adds r0, r3, r0
	movs r4, #0xe4
	lsls r4, r4, #1
	adds r1, r2, r4
	strh r0, [r1]
	ldrh r5, [r5, #0x28]
	ldr r1, _0800833C @ =0x00003FF3
	adds r0, r5, r1
	movs r3, #0xe5
	lsls r3, r3, #1
	adds r1, r2, r3
	strh r0, [r1]
	adds r4, #4
	adds r1, r2, r4
	ldr r0, _08008340 @ =0x000004FC
	strh r0, [r1]
_08008330:
	movs r0, #1
_08008332:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08008338: .4byte gOamObjects
_0800833C: .4byte 0x00003FF3
_08008340: .4byte 0x000004FC

	thumb_func_start sub_8008344
sub_8008344: @ 0x08008344
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0800836C @ =gMain
	ldrb r1, [r0, #8]
	cmp r1, #0xa
	bne _08008352
	b _080084E8
_08008352:
	ldrh r2, [r5]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08008384
	adds r1, r5, #0
	adds r1, #0x32
	ldrb r0, [r1]
	cmp r0, #0
	beq _08008370
	subs r0, #1
	strb r0, [r1]
	b _080084E8
	.align 2, 0
_0800836C: .4byte gMain
_08008370:
	ldr r0, _08008380 @ =0x0000FFDF
	ands r0, r2
	strh r0, [r5]
	ldr r0, [r5, #4]
	adds r0, #8
	str r0, [r5, #4]
	b _080084E8
	.align 2, 0
_08008380: .4byte 0x0000FFDF
_08008384:
	cmp r1, #7
	bne _0800839C
	ldr r0, _08008398 @ =gOamObjects
	movs r1, #0xe4
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, #0x38
	strh r1, [r0]
	b _080084E8
	.align 2, 0
_08008398: .4byte gOamObjects
_0800839C:
	adds r1, r5, #0
	adds r1, #0x35
	ldrb r0, [r1]
	cmp r0, #0
	beq _080083AC
	subs r0, #1
	strb r0, [r1]
	b _080084E8
_080083AC:
	ldr r0, _080083DC @ =gJoypad
	ldrh r1, [r0, #2]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _080083E0
	movs r0, #0x2a
	bl PlaySE
	adds r1, r5, #0
	adds r1, #0x39
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r1, #0
	cmp r0, #2
	bls _080084BC
	movs r0, #2
	strb r0, [r4]
	b _080084BC
	.align 2, 0
_080083DC: .4byte gJoypad
_080083E0:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08008406
	movs r0, #0x2a
	bl PlaySE
	adds r1, r5, #0
	adds r1, #0x39
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r1, #0
	cmp r0, #2
	bls _080084BC
	strb r6, [r4]
	b _080084BC
_08008406:
	movs r0, #1
	ands r0, r1
	adds r4, r5, #0
	adds r4, #0x39
	cmp r0, #0
	beq _080084BC
	movs r0, #0x2b
	bl PlaySE
	adds r1, r5, #0
	adds r1, #0x32
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #0x20
	ldrh r3, [r5]
	orrs r0, r3
	strh r0, [r5]
	ldrb r1, [r4]
	cmp r1, #0
	bne _08008434
	ldr r0, [r5, #4]
	ldrh r0, [r0, #2]
	b _08008442
_08008434:
	cmp r1, #1
	bne _0800843E
	ldr r0, [r5, #4]
	ldrh r0, [r0, #4]
	b _08008442
_0800843E:
	ldr r0, [r5, #4]
	ldrh r0, [r0, #6]
_08008442:
	strh r0, [r5, #0x20]
	movs r0, #0
	strb r0, [r5, #0xe]
	strb r0, [r5, #0xf]
	ldr r0, _080084AC @ =0x0000FFFB
	ldrh r4, [r5]
	ands r0, r4
	movs r1, #0
	strh r0, [r5]
	movs r0, #0x74
	strh r0, [r5, #0x1a]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r2, r5, #0
	adds r2, #0x25
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x34
	strb r1, [r0]
	movs r0, #0
	bl sub_80035C0
	movs r2, #0
	ldr r3, _080084B0 @ =0x00007FFF
	ldr r1, _080084B4 @ =gTextBoxCharacters
_08008476:
	adds r0, r3, #0
	ldrh r4, [r1]
	ands r0, r4
	strh r0, [r1]
	adds r1, #0xc
	adds r2, #1
	cmp r2, #0x1f
	bls _08008476
	movs r2, #0x3a
	ldr r1, _080084B8 @ =gOamObjects
	movs r3, #0x80
	lsls r3, r3, #2
	movs r4, #0xe8
	lsls r4, r4, #1
	adds r0, r1, r4
_08008494:
	strh r3, [r0]
	adds r0, #8
	adds r2, #1
	cmp r2, #0x58
	bls _08008494
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, #0x38
	strh r0, [r1]
	movs r0, #0
	b _080084EA
	.align 2, 0
_080084AC: .4byte 0x0000FFFB
_080084B0: .4byte 0x00007FFF
_080084B4: .4byte gTextBoxCharacters
_080084B8: .4byte gOamObjects
_080084BC:
	ldr r2, _080084F0 @ =gOamObjects
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldrh r3, [r5, #0x2a]
	adds r0, r3, r0
	movs r4, #0xe4
	lsls r4, r4, #1
	adds r1, r2, r4
	strh r0, [r1]
	ldrh r5, [r5, #0x28]
	ldr r1, _080084F4 @ =0x00003FF3
	adds r0, r5, r1
	movs r3, #0xe5
	lsls r3, r3, #1
	adds r1, r2, r3
	strh r0, [r1]
	adds r4, #4
	adds r1, r2, r4
	ldr r0, _080084F8 @ =0x000004FC
	strh r0, [r1]
_080084E8:
	movs r0, #1
_080084EA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080084F0: .4byte gOamObjects
_080084F4: .4byte 0x00003FF3
_080084F8: .4byte 0x000004FC

	thumb_func_start sub_80084FC
sub_80084FC: @ 0x080084FC
	adds r2, r0, #0
	ldr r1, [r2, #4]
	adds r0, r1, #2
	str r0, [r2, #4]
	ldrh r0, [r1, #2]
	adds r1, r2, #0
	adds r1, #0x25
	strb r0, [r1]
	adds r3, r2, #0
	adds r3, #0x26
	strb r0, [r3]
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _0800851E
	movs r0, #3
	strb r0, [r1]
	strb r0, [r3]
_0800851E:
	ldrb r0, [r2, #0x13]
	cmp r0, #1
	bls _08008528
	movs r0, #0
	strb r0, [r1]
_08008528:
	ldr r0, [r2, #4]
	adds r0, #2
	str r0, [r2, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_8008534
sub_8008534: @ 0x08008534
	adds r2, r0, #0
	ldr r0, _08008550 @ =gMain
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _08008554
	ldrb r0, [r2, #0x13]
	cmp r0, #1
	bls _08008554
	ldr r0, [r2, #4]
	ldrh r1, [r0, #2]
	strh r1, [r2, #2]
	b _08008566
	.align 2, 0
_08008550: .4byte gMain
_08008554:
	ldrh r0, [r2, #2]
	cmp r0, #0
	beq _0800856E
	subs r0, #1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08008574
	ldr r0, [r2, #4]
_08008566:
	adds r0, #4
	str r0, [r2, #4]
	movs r0, #0
	b _08008576
_0800856E:
	ldr r1, [r2, #4]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
_08008574:
	movs r0, #1
_08008576:
	bx lr

	thumb_func_start sub_8008578
sub_8008578: @ 0x08008578
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x1e]
	strh r0, [r4, #0x22]
	ldr r0, _0800859C @ =gMain
	ldrh r1, [r4, #0x1e]
	bl sub_8007CCC
	ldrh r0, [r4, #0x20]
	strh r0, [r4, #0x1e]
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #2
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800859C: .4byte gMain

	thumb_func_start sub_80085A0
sub_80085A0: @ 0x080085A0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r1, [r5, #4]
	adds r0, r1, #2
	str r0, [r5, #4]
	ldrh r1, [r1, #2]
	lsrs r0, r1, #8
	adds r4, r5, #0
	adds r4, #0x34
	movs r7, #0x7f
	ands r0, r7
	strb r0, [r4]
	bl sub_80037C8
	ldrb r0, [r4]
	ldr r2, [r5, #4]
	movs r6, #0xff
	adds r1, r6, #0
	ldrh r2, [r2]
	ands r1, r2
	bl sub_8004000
	ldr r0, _080085F4 @ =gUnknown_08022C54
	ldrb r1, [r4]
	adds r0, r1, r0
	ldrb r0, [r0]
	strb r0, [r5, #0x17]
	cmp r0, #2
	bne _080085DE
	movs r0, #0
	strb r0, [r5, #0x16]
_080085DE:
	ldr r1, [r5, #4]
	adds r0, r6, #0
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _080085F8
	movs r0, #0x80
	ldrb r1, [r4]
	orrs r0, r1
	b _080085FE
	.align 2, 0
_080085F4: .4byte gUnknown_08022C54
_080085F8:
	adds r0, r7, #0
	ldrb r1, [r4]
	ands r0, r1
_080085FE:
	strb r0, [r4]
	ldr r0, [r5, #4]
	adds r0, #2
	str r0, [r5, #4]
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8008610
sub_8008610: @ 0x08008610
	ldr r1, [r0, #4]
	adds r2, r1, #2
	ldrh r1, [r1, #2]
	strh r1, [r0, #0x2c]
	adds r1, r2, #2
	str r1, [r0, #4]
	ldrh r1, [r2, #2]
	adds r2, r0, #0
	adds r2, #0x2e
	strb r1, [r2]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_8008630
sub_8008630: @ 0x08008630
	push {lr}
	ldr r1, [r0, #4]
	ldrh r2, [r1, #2]
	adds r1, #4
	str r1, [r0, #4]
	movs r0, #0xfe
	lsls r0, r0, #7
	ands r0, r2
	lsrs r0, r0, #8
	movs r1, #0xff
	ands r1, r2
	lsrs r2, r2, #0xf
	bl ChangeFlag
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8008654
sub_8008654: @ 0x08008654
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0x31
	bl PlaySE
	movs r0, #0x10
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
	ldr r2, _0800868C @ =gMain
	adds r3, r2, #0
	adds r3, #0xdc
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r3]
	ldr r0, [r2, #8]
	str r0, [r2, #0xc]
	ldr r0, _08008690 @ =0x01000007
	str r0, [r2, #8]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800868C: .4byte gMain
_08008690: .4byte 0x01000007

	thumb_func_start sub_8008694
sub_8008694: @ 0x08008694
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r2, r0, #2
	ldrh r1, [r0, #2]
	adds r5, r2, #2
	ldrh r2, [r2, #2]
	adds r0, r5, #2
	str r0, [r4, #4]
	lsrs r0, r1, #8
	movs r3, #0xff
	ands r1, r3
	ldrh r3, [r5, #2]
	bl StartHardwareBlend
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_80086C0
sub_80086C0: @ 0x080086C0
	push {lr}
	ldr r2, [r0, #4]
	ldr r1, _080086F0 @ =gMain
	mov ip, r1
	mov r3, ip
	adds r3, #0x8b
	movs r1, #3
	strb r1, [r3]
	ldrh r1, [r2, #2]
	subs r3, #1
	strb r1, [r3]
	ldrh r1, [r2, #2]
	lsrs r3, r1, #8
	mov r1, ip
	adds r1, #0x8c
	strb r3, [r1]
	adds r2, #4
	str r2, [r0, #4]
	movs r0, #0x33
	bl PlaySE
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_080086F0: .4byte gMain

	thumb_func_start sub_80086F4
sub_80086F4: @ 0x080086F4
	push {lr}
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	ldr r0, _08008710 @ =gMain
	adds r0, #0x8b
	movs r1, #1
	strb r1, [r0]
	movs r0, #0x33
	bl PlaySE
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_08008710: .4byte gMain

	thumb_func_start sub_8008714
sub_8008714: @ 0x08008714
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #8
	ldrh r1, [r4]
	ands r0, r1
	cmp r0, #0
	bne _0800873E
	ldr r0, [r4, #4]
	ldrh r0, [r0]
	cmp r0, #0x15
	bne _08008736
	ldr r0, _08008748 @ =gUnknown_03000844
	ldr r1, _0800874C @ =gMain
	adds r1, #0xb8
	ldrh r1, [r1]
	bl sub_80141E0
_08008736:
	movs r0, #8
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
_0800873E:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08008748: .4byte gUnknown_03000844
_0800874C: .4byte gMain

	thumb_func_start sub_8008750
sub_8008750: @ 0x08008750
	push {lr}
	ldr r3, _0800878C @ =gMain
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	strb r0, [r3, #0x18]
	strb r0, [r3, #0x19]
	adds r0, r3, #0
	adds r0, #0x98
	ldrh r1, [r0]
	adds r0, #0x18
	movs r2, #0
	strh r1, [r0]
	ldr r0, _08008790 @ =0x00000203
	str r0, [r3, #8]
	ldr r0, _08008794 @ =gInvestigation
	strb r2, [r0, #0xc]
	strb r2, [r0, #0xd]
	adds r1, r3, #0
	adds r1, #0xb3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xe6
	bl sub_8013998
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0800878C: .4byte gMain
_08008790: .4byte 0x00000203
_08008794: .4byte gInvestigation

	thumb_func_start sub_8008798
sub_8008798: @ 0x08008798
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, [r5, #4]
	adds r0, r1, #2
	str r0, [r5, #4]
	ldrh r1, [r1, #2]
	ldr r6, _080087E4 @ =0x00003FFF
	ands r6, r1
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_80130C8
	adds r2, r0, #0
	cmp r2, #0
	bge _0800881E
	adds r0, r4, #0
	bl sub_8013110
	adds r2, r0, #0
	cmp r2, #0
	blt _0800881E
	cmp r4, #0
	beq _080087EC
	ldr r0, _080087E8 @ =gCourtRecord
	adds r1, r0, #0
	adds r1, #0x38
	adds r1, r2, r1
	strb r6, [r1]
	ldrb r1, [r0, #0x11]
	adds r1, #1
	strb r1, [r0, #0x11]
	b _080087FC
	.align 2, 0
_080087E4: .4byte 0x00003FFF
_080087E8: .4byte gCourtRecord
_080087EC:
	ldr r0, _0800882C @ =gCourtRecord
	adds r1, r0, #0
	adds r1, #0x18
	adds r1, r2, r1
	strb r6, [r1]
	ldrb r1, [r0, #0x10]
	adds r1, #1
	strb r1, [r0, #0x10]
_080087FC:
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #7
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800881E
	ldr r1, _08008830 @ =gMain
	adds r0, r1, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #1
	strb r6, [r0]
	ldr r0, [r1, #8]
	str r0, [r1, #0xc]
	movs r0, #8
	str r0, [r1, #8]
_0800881E:
	ldr r0, [r5, #4]
	adds r0, #2
	str r0, [r5, #4]
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800882C: .4byte gCourtRecord
_08008830: .4byte gMain

	thumb_func_start sub_8008834
sub_8008834: @ 0x08008834
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #4]
	adds r0, r1, #2
	str r0, [r5, #4]
	ldrh r2, [r1, #2]
	ldr r1, _08008868 @ =0x00003FFF
	ands r1, r2
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	bl sub_80130C8
	adds r2, r0, #0
	cmp r2, #0
	blt _08008880
	cmp r4, #0
	beq _08008870
	ldr r0, _0800886C @ =gCourtRecord
	adds r1, r0, #0
	adds r1, #0x38
	b _08008876
	.align 2, 0
_08008868: .4byte 0x00003FFF
_0800886C: .4byte gCourtRecord
_08008870:
	ldr r0, _08008890 @ =gCourtRecord
	adds r1, r0, #0
	adds r1, #0x18
_08008876:
	adds r1, r2, r1
	movs r2, #0xff
	strb r2, [r1]
	bl sub_8013138
_08008880:
	ldr r0, [r5, #4]
	adds r0, #2
	str r0, [r5, #4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08008890: .4byte gCourtRecord

	thumb_func_start sub_8008894
sub_8008894: @ 0x08008894
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r6, #4]
	ldrh r2, [r0, #2]
	ldr r7, _080088D4 @ =0x00003FFF
	adds r3, r7, #0
	ands r3, r2
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r2
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldrh r4, [r0, #2]
	adds r0, #4
	str r0, [r6, #4]
	adds r0, r5, #0
	adds r1, r3, #0
	bl sub_80130C8
	adds r1, r0, #0
	cmp r1, #0
	blt _08008902
	ldr r0, [r6, #4]
	adds r3, r7, #0
	ldrh r0, [r0]
	ands r3, r0
	cmp r5, #0
	beq _080088DC
	ldr r0, _080088D8 @ =gCourtRecord
	adds r0, #0x38
	b _080088E0
	.align 2, 0
_080088D4: .4byte 0x00003FFF
_080088D8: .4byte gCourtRecord
_080088DC:
	ldr r0, _08008910 @ =gCourtRecord
	adds r0, #0x18
_080088E0:
	adds r0, r1, r0
	strb r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	beq _08008902
	ldr r1, _08008914 @ =gMain
	adds r0, r1, #0
	adds r0, #0x2c
	strb r5, [r0]
	adds r0, #1
	strb r3, [r0]
	ldr r0, [r1, #8]
	str r0, [r1, #0xc]
	movs r0, #8
	str r0, [r1, #8]
_08008902:
	ldr r0, [r6, #4]
	adds r0, #2
	str r0, [r6, #4]
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08008910: .4byte gCourtRecord
_08008914: .4byte gMain

	thumb_func_start sub_8008918
sub_8008918: @ 0x08008918
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6, #4]
	adds r1, r0, #2
	ldrh r4, [r0, #2]
	adds r0, r1, #2
	ldrh r5, [r1, #2]
	adds r1, r0, #2
	ldrh r2, [r0, #2]
	adds r0, r1, #2
	str r0, [r6, #4]
	ldrh r3, [r1, #2]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8015C44
	ldr r1, _08008968 @ =gUnknown_08022C8C
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #1
	ands r0, r5
	movs r2, #0
	cmp r0, #0
	beq _0800894C
	movs r2, #0x1e
_0800894C:
	adds r0, r4, #0
	adds r1, r2, #0
	movs r2, #0x1f
	adds r3, r5, #0
	bl InitCourtScroll
	ldr r0, [r6, #4]
	adds r0, #2
	str r0, [r6, #4]
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08008968: .4byte gUnknown_08022C8C

	thumb_func_start sub_800896C
sub_800896C: @ 0x0800896C
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r1, [r3, #4]
	adds r5, r1, #2
	str r5, [r3, #4]
	ldr r0, _080089A0 @ =gMain
	ldrh r2, [r0, #0x2e]
	adds r4, r0, #0
	ldrh r1, [r1, #2]
	cmp r2, r1
	beq _080089A4
_08008982:
	ldrh r0, [r4, #0x2e]
	strh r0, [r4, #0x32]
	ldr r0, [r3, #4]
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	adds r1, r4, #0
	adds r1, #0x34
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #4]
	adds r0, #2
	str r0, [r3, #4]
	movs r0, #1
	b _080089BA
	.align 2, 0
_080089A0: .4byte gMain
_080089A4:
	cmp r2, #0x10
	beq _08008982
	ldr r1, _080089C0 @ =gScriptContext
	movs r0, #0x40
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08008982
	adds r0, r5, #2
	str r0, [r3, #4]
	movs r0, #0
_080089BA:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080089C0: .4byte gScriptContext

	thumb_func_start sub_80089C4
sub_80089C4: @ 0x080089C4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r1, [r7, #4]
	adds r0, r1, #2
	str r0, [r7, #4]
	ldrh r0, [r1, #2]
	cmp r0, #6
	bls _080089D6
	b _08008B94
_080089D6:
	lsls r0, r0, #2
	ldr r1, _080089E0 @ =_080089E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080089E0: .4byte _080089E4
_080089E4: @ jump table
	.4byte _08008A00 @ case 0
	.4byte _08008A40 @ case 1
	.4byte _08008A68 @ case 2
	.4byte _08008A98 @ case 3
	.4byte _08008B5A @ case 4
	.4byte _08008B7C @ case 5
	.4byte _08008B00 @ case 6
_08008A00:
	ldr r4, _08008A34 @ =gMain
	movs r2, #0
	movs r0, #1
	strb r0, [r4, #0x19]
	ldr r1, _08008A38 @ =gIORegisters
	adds r3, r1, #0
	adds r3, #0x4a
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r5, #0
	ldrh r5, [r3]
	orrs r0, r5
	strh r0, [r3]
	strh r2, [r1, #0xe]
	bl sub_80037C8
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r0, [r0]
	ldr r2, _08008A3C @ =0x000002BD
	adds r4, r4, r2
	ldrb r1, [r4]
	bl sub_8004000
	b _08008B94
	.align 2, 0
_08008A34: .4byte gMain
_08008A38: .4byte gIORegisters
_08008A3C: .4byte 0x000002BD
_08008A40:
	ldr r0, _08008A5C @ =gMain
	movs r1, #0
	strb r1, [r0, #0x19]
	ldr r0, _08008A60 @ =gUnknown_03002080
	movs r2, #0
	movs r1, #0xff
	ldr r3, _08008A64 @ =0x000004FE
	adds r0, r0, r3
_08008A50:
	strh r2, [r0]
	subs r0, #2
	subs r1, #1
	cmp r1, #0
	bge _08008A50
	b _08008B94
	.align 2, 0
_08008A5C: .4byte gMain
_08008A60: .4byte gUnknown_03002080
_08008A64: .4byte 0x000004FE
_08008A68:
	ldr r0, _08008A8C @ =gMain
	ldrb r0, [r0, #8]
	cmp r0, #3
	bne _08008A82
	ldr r0, _08008A90 @ =gUnknown_03000844
	bl sub_8014F94
	ldr r0, _08008A94 @ =gInvestigation
	movs r1, #0
	strb r1, [r0, #6]
	movs r1, #0xf
	bl sub_800EB24
_08008A82:
	movs r0, #1
	bl SlideTextbox
	b _08008B94
	.align 2, 0
_08008A8C: .4byte gMain
_08008A90: .4byte gUnknown_03000844
_08008A94: .4byte gInvestigation
_08008A98:
	ldr r5, _08008AF4 @ =gMain
	ldrb r0, [r5, #8]
	cmp r0, #3
	bne _08008AB2
	ldr r0, _08008AF8 @ =gUnknown_03000844
	bl sub_8014F94
	ldr r0, _08008AFC @ =gInvestigation
	movs r1, #0
	strb r1, [r0, #6]
	movs r1, #0xf
	bl sub_800EB24
_08008AB2:
	movs r0, #0
	bl SlideTextbox
	ldrb r6, [r5, #8]
	cmp r6, #4
	bne _08008B94
	ldr r4, _08008AFC @ =gInvestigation
	movs r0, #0
	strb r0, [r4, #0x10]
	ldrb r1, [r5, #9]
	cmp r1, #6
	bne _08008AD2
	adds r0, r4, #0
	movs r1, #1
	bl sub_800EB24
_08008AD2:
	ldrb r2, [r5, #9]
	cmp r2, #8
	bne _08008AE2
	adds r0, r4, #0
	movs r1, #4
	bl sub_800EB24
	strb r6, [r4, #0xe]
_08008AE2:
	ldrb r5, [r5, #9]
	cmp r5, #9
	bne _08008B94
	adds r0, r4, #0
	movs r1, #8
	bl sub_800EB24
	b _08008B94
	.align 2, 0
_08008AF4: .4byte gMain
_08008AF8: .4byte gUnknown_03000844
_08008AFC: .4byte gInvestigation
_08008B00:
	ldr r5, _08008B34 @ =gInvestigation
	movs r6, #0
	strb r6, [r5, #0x10]
	ldr r4, _08008B38 @ =gMain
	ldrb r3, [r4, #9]
	cmp r3, #6
	bne _08008B16
	adds r0, r5, #0
	movs r1, #1
	bl sub_800EB24
_08008B16:
	ldrb r0, [r4, #9]
	cmp r0, #8
	bne _08008B3C
	adds r0, r5, #0
	movs r1, #4
	bl sub_800EB24
	movs r1, #4
	strb r1, [r5, #0xe]
	strb r6, [r4, #0x18]
	strb r6, [r4, #0x19]
	adds r0, r7, #0
	adds r0, #0x38
	strb r1, [r0]
	b _08008B94
	.align 2, 0
_08008B34: .4byte gInvestigation
_08008B38: .4byte gMain
_08008B3C:
	cmp r0, #9
	bne _08008B48
	adds r0, r5, #0
	movs r1, #8
	bl sub_800EB24
_08008B48:
	strb r6, [r4, #0x18]
	strb r6, [r4, #0x19]
	adds r0, r7, #0
	adds r0, #0x38
	movs r1, #4
	strb r1, [r0]
	movs r0, #1
	strb r0, [r5, #0xe]
	b _08008B94
_08008B5A:
	ldr r1, _08008B78 @ =gIORegisters
	movs r2, #0
	movs r0, #0
	strh r0, [r1, #0xe]
	adds r1, #0x4a
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r5, #0
	ldrh r3, [r1]
	orrs r0, r3
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x38
	strb r2, [r0]
	b _08008B94
	.align 2, 0
_08008B78: .4byte gIORegisters
_08008B7C:
	ldr r1, _08008BA8 @ =gIORegisters
	ldr r0, _08008BAC @ =0x0000FFAF
	strh r0, [r1, #0xe]
	adds r1, #0x4a
	ldr r0, _08008BB0 @ =0x0000FDFF
	ldrh r5, [r1]
	ands r0, r5
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
_08008B94:
	ldr r0, [r7, #4]
	adds r0, #2
	str r0, [r7, #4]
	ldr r1, _08008BB4 @ =gInvestigation
	movs r0, #0
	strb r0, [r1, #7]
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08008BA8: .4byte gIORegisters
_08008BAC: .4byte 0x0000FFAF
_08008BB0: .4byte 0x0000FDFF
_08008BB4: .4byte gInvestigation

	thumb_func_start sub_8008BB8
sub_8008BB8: @ 0x08008BB8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	adds r0, #2
	str r0, [r5, #4]
	ldr r4, _08008BE0 @ =gMain
	ldrh r0, [r4, #0x2e]
	bl sub_80035A0
	adds r2, r0, #0
	movs r0, #0xf
	ands r2, r0
	cmp r2, #0
	beq _08008BE4
	adds r1, r4, #0
	adds r1, #0x36
	movs r0, #1
	strb r0, [r1]
	b _08008BEA
	.align 2, 0
_08008BE0: .4byte gMain
_08008BE4:
	adds r0, r4, #0
	adds r0, #0x36
	strb r2, [r0]
_08008BEA:
	ldr r0, [r5, #4]
	ldrh r1, [r0]
	lsrs r2, r1, #8
	adds r3, r0, #0
	cmp r2, #1
	beq _08008C10
	cmp r2, #1
	blo _08008C04
	cmp r2, #2
	beq _08008C1C
	cmp r2, #3
	beq _08008C28
	b _08008C2E
_08008C04:
	ldr r0, _08008C0C @ =gMain
	rsbs r1, r1, #0
	adds r0, #0x44
	b _08008C2C
	.align 2, 0
_08008C0C: .4byte gMain
_08008C10:
	ldr r0, _08008C18 @ =gMain
	adds r0, #0x44
	b _08008C2C
	.align 2, 0
_08008C18: .4byte gMain
_08008C1C:
	ldr r0, _08008C24 @ =gMain
	rsbs r1, r1, #0
	b _08008C2A
	.align 2, 0
_08008C24: .4byte gMain
_08008C28:
	ldr r0, _08008C3C @ =gMain
_08008C2A:
	adds r0, #0x45
_08008C2C:
	strb r1, [r0]
_08008C2E:
	adds r0, r3, #2
	str r0, [r5, #4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08008C3C: .4byte gMain

	thumb_func_start sub_8008C40
sub_8008C40: @ 0x08008C40
	push {r4, r5, lr}
	ldr r1, [r0, #4]
	adds r3, r1, #2
	ldrh r4, [r1, #2]
	adds r2, r3, #2
	ldrh r5, [r3, #2]
	ldr r1, _08008C7C @ =gMain
	adds r3, r1, #0
	adds r3, #0xb6
	strh r5, [r3]
	ldrh r3, [r2, #2]
	adds r1, #0xb8
	strh r3, [r1]
	adds r2, #4
	str r2, [r0, #4]
	cmp r4, #0
	beq _08008C84
	adds r0, r4, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	bl PlayPersonAnimation
	ldr r0, _08008C80 @ =gInvestigation
	movs r1, #1
	strb r1, [r0, #6]
	movs r1, #0xf
	bl sub_800EB24
	b _08008C96
	.align 2, 0
_08008C7C: .4byte gMain
_08008C80: .4byte gInvestigation
_08008C84:
	ldr r0, _08008CA0 @ =gUnknown_03000844
	bl sub_8014F94
	ldr r0, _08008CA4 @ =gInvestigation
	movs r1, #0
	strb r1, [r0, #6]
	movs r1, #0xf
	bl sub_800EB24
_08008C96:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08008CA0: .4byte gUnknown_03000844
_08008CA4: .4byte gInvestigation

	thumb_func_start sub_8008CA8
sub_8008CA8: @ 0x08008CA8
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, [r3, #4]
	adds r0, #2
	str r0, [r3, #4]
	ldr r2, _08008CF8 @ =gIORegisters
	adds r4, r2, #0
	adds r4, #0x4a
	ldr r0, _08008CFC @ =0x0000FBFF
	ldrh r1, [r4]
	ands r0, r1
	movs r5, #0x80
	lsls r5, r5, #4
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r1, _08008D00 @ =gUnknown_03000000
	movs r0, #0
	ldr r4, _08008D04 @ =0x0000029F
	adds r5, r2, #0
	movs r2, #0
_08008CD2:
	strh r2, [r1]
	adds r0, #1
	adds r1, #2
	cmp r0, r4
	bls _08008CD2
	movs r0, #0xf8
	lsls r0, r0, #6
	strh r0, [r5, #4]
	movs r0, #8
	strh r0, [r5, #0x10]
	ldr r0, _08008D08 @ =0x0000FFBF
	ldrh r1, [r3]
	ands r0, r1
	strh r0, [r3]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08008CF8: .4byte gIORegisters
_08008CFC: .4byte 0x0000FBFF
_08008D00: .4byte gUnknown_03000000
_08008D04: .4byte 0x0000029F
_08008D08: .4byte 0x0000FFBF

	thumb_func_start sub_8008D0C
sub_8008D0C: @ 0x08008D0C
	ldr r1, [r0, #4]
	ldrh r2, [r1, #2]
	strh r2, [r0, #0x20]
	adds r1, #4
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_8008D1C
sub_8008D1C: @ 0x08008D1C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0x31
	bl PlaySE
	movs r0, #0x10
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
	ldr r2, _08008D54 @ =gMain
	adds r3, r2, #0
	adds r3, #0xdc
	ldr r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r3]
	ldr r0, [r2, #8]
	str r0, [r2, #0xc]
	ldr r0, _08008D58 @ =0x01000007
	str r0, [r2, #8]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08008D54: .4byte gMain
_08008D58: .4byte 0x01000007

	thumb_func_start sub_8008D5C
sub_8008D5C: @ 0x08008D5C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _08008D74
	bl sub_8013AE4
	b _08008D78
_08008D74:
	bl sub_8013A48
_08008D78:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8008D88
sub_8008D88: @ 0x08008D88
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r0, #2
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _08008DA0
	bl sub_8013A7C
	b _08008DA4
_08008DA0:
	bl PauseBGM
_08008DA4:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8008DB4
sub_8008DB4: @ 0x08008DB4
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	ldr r1, _08008DCC @ =gMain
	movs r0, #0
	strb r0, [r1, #0x18]
	strb r0, [r1, #0x19]
	movs r0, #2
	str r0, [r1, #8]
	movs r0, #1
	bx lr
	.align 2, 0
_08008DCC: .4byte gMain

	thumb_func_start sub_8008DD0
sub_8008DD0: @ 0x08008DD0
	ldr r1, [r0, #4]
	ldrh r2, [r1, #2]
	strh r2, [r0, #0x22]
	adds r1, #4
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_8008DE0
sub_8008DE0: @ 0x08008DE0
	adds r3, r0, #0
	ldr r0, [r3, #4]
	adds r1, r0, #2
	str r1, [r3, #4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _08008E04
	ldr r1, _08008E00 @ =gMain
	adds r1, #0xdc
	ldr r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	str r0, [r1]
	movs r0, #0
	strb r0, [r3, #0x13]
	b _08008E12
	.align 2, 0
_08008E00: .4byte gMain
_08008E04:
	ldr r0, _08008E1C @ =gMain
	adds r0, #0xdc
	ldr r1, [r0]
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
_08008E12:
	ldr r0, [r3, #4]
	adds r0, #2
	str r0, [r3, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_08008E1C: .4byte gMain

	thumb_func_start sub_8008E20
sub_8008E20: @ 0x08008E20
	push {r4, r5, lr}
	ldr r1, [r0, #4]
	adds r4, r1, #2
	ldr r3, _08008E48 @ =gMain
	ldrh r1, [r1, #2]
	strh r1, [r3, #0x14]
	adds r5, r3, #0
	adds r5, #0xdc
	ldr r1, [r5]
	movs r2, #1
	orrs r1, r2
	str r1, [r5]
	ldrh r1, [r4, #2]
	strb r1, [r3, #0x16]
	adds r4, #4
	str r4, [r0, #4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08008E48: .4byte gMain

	thumb_func_start sub_8008E4C
sub_8008E4C: @ 0x08008E4C
	adds r3, r0, #0
	ldr r0, [r3, #4]
	adds r1, r0, #2
	str r1, [r3, #4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _08008E6C
	ldr r1, _08008E68 @ =gMain+0xC
	subs r2, r1, #4
	ldr r0, [r2]
	str r0, [r1]
	movs r0, #5
	str r0, [r2]
	b _08008E74
	.align 2, 0
_08008E68: .4byte gMain+0xC
_08008E6C:
	ldr r1, _08008E80 @ =gMain
	ldrb r0, [r1, #9]
	adds r0, #1
	strb r0, [r1, #9]
_08008E74:
	ldr r0, [r3, #4]
	adds r0, #2
	str r0, [r3, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_08008E80: .4byte gMain

	thumb_func_start sub_8008E84
sub_8008E84: @ 0x08008E84
	adds r3, r0, #0
	ldr r1, [r3, #4]
	adds r0, r1, #2
	str r0, [r3, #4]
	ldrh r0, [r1, #2]
	cmp r0, #3
	bne _08008EB8
	ldr r1, _08008EAC @ =gTestimony
	movs r0, #0xe0
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	movs r0, #2
	strb r0, [r1]
	ldr r1, _08008EB0 @ =gIORegisters
	adds r1, #0x4a
	ldr r0, _08008EB4 @ =0x0000FDFF
	ldrh r2, [r1]
	ands r0, r2
	strh r0, [r1]
	b _08008F9A
	.align 2, 0
_08008EAC: .4byte gTestimony
_08008EB0: .4byte gIORegisters
_08008EB4: .4byte 0x0000FDFF
_08008EB8:
	cmp r0, #2
	bne _08008EE4
	ldr r0, _08008EDC @ =gTestimony
	movs r2, #0
	movs r1, #0xe0
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r2, [r0]
	ldr r0, _08008EE0 @ =gIORegisters
	adds r0, #0x4a
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	b _08008F9A
	.align 2, 0
_08008EDC: .4byte gTestimony
_08008EE0: .4byte gIORegisters
_08008EE4:
	cmp r0, #4
	bne _08008F7C
	ldr r0, _08008F48 @ =0x040000D4
	ldr r1, _08008F4C @ =gUnknown_08141CFC
	str r1, [r0]
	ldr r1, _08008F50 @ =0x06013000
	str r1, [r0, #4]
	ldr r1, _08008F54 @ =0x80000200
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08008F58 @ =gUnknown_0814DC40
	str r1, [r0]
	ldr r1, _08008F5C @ =0x050002A0
	str r1, [r0, #4]
	ldr r1, _08008F60 @ =0x80000010
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08008F64 @ =gUnknown_0813D97C
	str r1, [r0]
	movs r1, #0xd0
	lsls r1, r1, #1
	str r1, [r0, #4]
	ldr r2, _08008F68 @ =0x80000040
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08008F6C @ =gUnknown_0813DAFC
	str r1, [r0]
	movs r1, #0x88
	lsls r1, r1, #2
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _08008F70 @ =gTestimony
	movs r2, #0
	movs r1, #0xe0
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r2, [r0]
	ldr r0, _08008F74 @ =gIORegisters
	adds r0, #0x4a
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	ldr r1, _08008F78 @ =gMain+0x8
	movs r0, #0x83
	lsls r0, r0, #1
	b _08008F98
	.align 2, 0
_08008F48: .4byte 0x040000D4
_08008F4C: .4byte gUnknown_08141CFC
_08008F50: .4byte 0x06013000
_08008F54: .4byte 0x80000200
_08008F58: .4byte gUnknown_0814DC40
_08008F5C: .4byte 0x050002A0
_08008F60: .4byte 0x80000010
_08008F64: .4byte gUnknown_0813D97C
_08008F68: .4byte 0x80000040
_08008F6C: .4byte gUnknown_0813DAFC
_08008F70: .4byte gTestimony
_08008F74: .4byte gIORegisters
_08008F78: .4byte gMain+0x8
_08008F7C:
	cmp r0, #0
	beq _08008F94
	ldr r1, _08008F90 @ =gMain+0xC
	subs r2, r1, #4
	ldr r0, [r2]
	str r0, [r1]
	movs r0, #6
	str r0, [r2]
	b _08008F9A
	.align 2, 0
_08008F90: .4byte gMain+0xC
_08008F94:
	ldr r1, _08008FA4 @ =gMain+0x8
	ldr r0, _08008FA8 @ =0x00000103
_08008F98:
	str r0, [r1]
_08008F9A:
	ldr r0, [r3, #4]
	adds r0, #2
	str r0, [r3, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_08008FA4: .4byte gMain+0x8
_08008FA8: .4byte 0x00000103

	thumb_func_start sub_8008FAC
sub_8008FAC: @ 0x08008FAC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r1, [r1, #2]
	movs r0, #0
	bl GetFlag
	cmp r0, #0
	beq _08008FC8
	ldr r0, [r4, #4]
	ldrh r1, [r0, #2]
	b _08008FCC
_08008FC8:
	ldr r0, [r4, #4]
	ldrh r1, [r0, #4]
_08008FCC:
	strh r1, [r4, #0x20]
	adds r0, #6
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8008FDC
sub_8008FDC: @ 0x08008FDC
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_8008FE8
sub_8008FE8: @ 0x08008FE8
	push {r4, r5, r6, r7, lr}
	ldr r1, [r0, #4]
	ldrh r2, [r1, #2]
	movs r3, #0
	strh r2, [r0, #0x20]
	adds r1, #4
	str r1, [r0, #4]
	strb r3, [r0, #0xe]
	strb r3, [r0, #0xf]
	movs r2, #0
	ldr r4, _08009050 @ =gUnknown_03002080
	ldr r6, _08009054 @ =gUnknown_03000844
	ldr r5, _08009058 @ =gMain
	ldr r3, _0800905C @ =0x00007FFF
	ldr r1, _08009060 @ =gTextBoxCharacters
_08009006:
	adds r0, r3, #0
	ldrh r7, [r1]
	ands r0, r7
	strh r0, [r1]
	adds r1, #0xc
	adds r2, #1
	cmp r2, #0x3e
	bls _08009006
	ldr r0, _08009064 @ =0x000004DC
	adds r1, r4, r0
	ldrh r0, [r1]
	cmp r0, #9
	beq _08009028
	cmp r0, #0
	beq _08009028
	movs r0, #9
	strh r0, [r1]
_08009028:
	ldr r7, _08009068 @ =0x000004DE
	adds r1, r4, r7
	ldrh r0, [r1]
	cmp r0, #9
	beq _0800903A
	cmp r0, #0
	beq _0800903A
	movs r0, #9
	strh r0, [r1]
_0800903A:
	adds r0, r5, #0
	adds r0, #0xb8
	ldrh r1, [r0]
	adds r0, r6, #0
	bl sub_80141E0
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08009050: .4byte gUnknown_03002080
_08009054: .4byte gUnknown_03000844
_08009058: .4byte gMain
_0800905C: .4byte 0x00007FFF
_08009060: .4byte gTextBoxCharacters
_08009064: .4byte 0x000004DC
_08009068: .4byte 0x000004DE

	thumb_func_start sub_800906C
sub_800906C: @ 0x0800906C
	push {r4, r5, lr}
	ldr r1, _080090D0 @ =0x0000FFFC
	ldrh r2, [r0]
	ands r1, r2
	movs r2, #0
	strh r1, [r0]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	strb r2, [r0, #0xe]
	strb r2, [r0, #0xf]
	adds r1, r0, #0
	adds r1, #0x36
	strb r2, [r1]
	adds r0, #0x37
	strb r2, [r0]
	movs r2, #0
	ldr r4, _080090D4 @ =gUnknown_03002080
	ldr r3, _080090D8 @ =0x00007FFF
	ldr r1, _080090DC @ =gTextBoxCharacters
_08009094:
	adds r0, r3, #0
	ldrh r5, [r1]
	ands r0, r5
	strh r0, [r1]
	adds r1, #0xc
	adds r2, #1
	cmp r2, #0x3e
	bls _08009094
	ldr r0, _080090E0 @ =0x000004DC
	adds r1, r4, r0
	ldrh r0, [r1]
	cmp r0, #9
	beq _080090B6
	cmp r0, #0
	beq _080090B6
	movs r0, #9
	strh r0, [r1]
_080090B6:
	ldr r2, _080090E4 @ =0x000004DE
	adds r1, r4, r2
	ldrh r0, [r1]
	cmp r0, #9
	beq _080090C8
	cmp r0, #0
	beq _080090C8
	movs r0, #9
	strh r0, [r1]
_080090C8:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080090D0: .4byte 0x0000FFFC
_080090D4: .4byte gUnknown_03002080
_080090D8: .4byte 0x00007FFF
_080090DC: .4byte gTextBoxCharacters
_080090E0: .4byte 0x000004DC
_080090E4: .4byte 0x000004DE

	thumb_func_start sub_80090E8
sub_80090E8: @ 0x080090E8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	ldrh r2, [r0, #2]
	adds r0, r1, #2
	str r0, [r4, #4]
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _08009104
	adds r0, r2, #0
	bl sub_801480C
	b _0800910E
_08009104:
	adds r0, r2, #0
	bl sub_8013EB0
	bl sub_8014F94
_0800910E:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_800911C
sub_800911C: @ 0x0800911C
	adds r2, r0, #0
	ldr r1, [r2, #4]
	adds r0, r1, #2
	str r0, [r2, #4]
	ldrh r0, [r1, #2]
	strb r0, [r2, #0x17]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _08009134
	movs r0, #0
	strb r0, [r2, #0x16]
_08009134:
	ldr r0, [r2, #4]
	adds r0, #2
	str r0, [r2, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_8009140
sub_8009140: @ 0x08009140
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r2, r0, #2
	ldrh r0, [r0, #2]
	adds r1, r2, #2
	str r1, [r4, #4]
	ldrh r1, [r2, #2]
	bl sub_8014D10
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8009164
sub_8009164: @ 0x08009164
	ldr r2, [r0, #4]
	adds r1, r2, #2
	ldrh r2, [r2, #2]
	ldrh r3, [r1, #2]
	adds r1, #4
	str r1, [r0, #4]
	ldr r1, _08009184 @ =gMain
	lsls r0, r2, #2
	adds r0, r0, r2
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r1, r2
	adds r0, r0, r1
	strb r3, [r0]
	movs r0, #0
	bx lr
	.align 2, 0
_08009184: .4byte gMain

	thumb_func_start sub_8009188
sub_8009188: @ 0x08009188
	push {r4, lr}
	ldr r1, [r0, #4]
	adds r4, r1, #2
	ldrh r2, [r1, #2]
	adds r1, r4, #2
	str r1, [r0, #4]
	ldr r1, _080091E8 @ =gMain
	mov ip, r1
	lsls r3, r2, #2
	adds r3, r3, r2
	ldr r1, _080091EC @ =0x00000121
	add r1, ip
	adds r1, r3, r1
	ldrh r2, [r4, #2]
	strb r2, [r1]
	ldr r2, [r0, #4]
	adds r1, r2, #2
	str r1, [r0, #4]
	movs r1, #0x91
	lsls r1, r1, #1
	add r1, ip
	adds r1, r3, r1
	ldrh r2, [r2, #2]
	strb r2, [r1]
	ldr r2, [r0, #4]
	adds r1, r2, #2
	str r1, [r0, #4]
	ldr r1, _080091F0 @ =0x00000123
	add r1, ip
	adds r1, r3, r1
	ldrh r2, [r2, #2]
	strb r2, [r1]
	ldr r2, [r0, #4]
	adds r1, r2, #2
	str r1, [r0, #4]
	movs r1, #0x92
	lsls r1, r1, #1
	add r1, ip
	adds r3, r3, r1
	ldrh r1, [r2, #2]
	strb r1, [r3]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080091E8: .4byte gMain
_080091EC: .4byte 0x00000121
_080091F0: .4byte 0x00000123

	thumb_func_start sub_80091F4
sub_80091F4: @ 0x080091F4
	push {r4, lr}
	ldr r1, [r0, #4]
	ldr r4, _08009220 @ =gMain
	ldrh r2, [r1, #2]
	adds r3, r4, #0
	adds r3, #0xb2
	strb r2, [r3]
	adds r1, #4
	str r1, [r0, #4]
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0x1f
	bl StartHardwareBlend
	ldr r0, _08009224 @ =0x00000504
	str r0, [r4, #8]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08009220: .4byte gMain
_08009224: .4byte 0x00000504

	thumb_func_start sub_8009228
sub_8009228: @ 0x08009228
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #4]
	adds r0, r1, #2
	str r0, [r6, #4]
	ldrh r1, [r1, #2]
	lsrs r2, r1, #8
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08009250
	movs r0, #0
	adds r1, r2, #0
	bl GetFlag
	cmp r0, #0
	bne _08009262
	ldr r0, [r6, #4]
	adds r0, #4
	b _080092C2
_08009250:
	movs r0, #0
	adds r1, r2, #0
	bl GetFlag
	cmp r0, #0
	beq _08009262
	ldr r0, [r6, #4]
	adds r0, #4
	b _080092C2
_08009262:
	ldr r1, [r6, #4]
	movs r0, #0x80
	ldrh r2, [r1]
	ands r0, r2
	cmp r0, #0
	beq _080092B8
	ldrh r5, [r1, #2]
	adds r0, r1, #4
	str r0, [r6, #4]
	lsls r0, r5, #2
	ldr r1, _080092A8 @ =gUnknown_02011FC4
	adds r0, r0, r1
	ldrh r2, [r0]
	lsrs r4, r2, #1
	ldrh r5, [r0, #2]
	ldr r0, _080092AC @ =gMain
	ldrh r1, [r6, #0x1e]
	bl sub_8007CCC
	ldr r1, _080092B0 @ =gScriptContext
	movs r0, #0
	strb r0, [r1, #0x13]
	adds r0, r5, #0
	adds r0, #0x80
	strh r0, [r6, #0x1e]
	lsls r0, r5, #2
	ldr r1, _080092A8 @ =gUnknown_02011FC4
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, _080092B4 @ =gScriptHeap
	adds r0, r0, r2
	str r0, [r6, #8]
	lsls r4, r4, #1
	adds r0, r0, r4
	b _080092C2
	.align 2, 0
_080092A8: .4byte gUnknown_02011FC4
_080092AC: .4byte gMain
_080092B0: .4byte gScriptContext
_080092B4: .4byte gScriptHeap
_080092B8:
	ldrh r1, [r1, #2]
	lsrs r5, r1, #1
	lsls r1, r5, #1
	ldr r0, [r6, #8]
	adds r0, r0, r1
_080092C2:
	str r0, [r6, #4]
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_80092CC
sub_80092CC: @ 0x080092CC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	ldrh r6, [r0, #2]
	adds r0, #4
	str r0, [r4, #4]
	lsls r0, r6, #2
	ldr r1, _08009314 @ =gUnknown_02011FC4
	adds r0, r0, r1
	ldrh r1, [r0]
	lsrs r5, r1, #1
	ldrh r6, [r0, #2]
	ldr r0, _08009318 @ =gMain
	ldrh r1, [r4, #0x1e]
	bl sub_8007CCC
	ldr r1, _0800931C @ =gScriptContext
	movs r0, #0
	strb r0, [r1, #0x13]
	adds r0, r6, #0
	adds r0, #0x80
	strh r0, [r4, #0x1e]
	lsls r0, r6, #2
	ldr r1, _08009314 @ =gUnknown_02011FC4
	adds r0, r0, r1
	ldr r0, [r0]
	subs r1, #4
	adds r0, r0, r1
	str r0, [r4, #8]
	lsls r5, r5, #1
	adds r0, r0, r5
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08009314: .4byte gUnknown_02011FC4
_08009318: .4byte gMain
_0800931C: .4byte gScriptContext

	thumb_func_start sub_8009320
sub_8009320: @ 0x08009320
	push {r4, lr}
	ldr r1, [r0, #4]
	adds r4, r1, #2
	ldrh r2, [r1, #2]
	adds r1, r4, #2
	str r1, [r0, #4]
	ldr r3, _08009348 @ =gUnknown_03002920
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrh r2, [r4, #2]
	strb r2, [r1, #3]
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08009348: .4byte gUnknown_03002920

	thumb_func_start sub_800934C
sub_800934C: @ 0x0800934C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0800936C
	ldr r0, _08009368 @ =gUnknown_03000844
	movs r1, #1
	bl sub_8014138
	b _08009374
	.align 2, 0
_08009368: .4byte gUnknown_03000844
_0800936C:
	ldr r0, _08009384 @ =gUnknown_03000844
	movs r1, #0
	bl sub_8014138
_08009374:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08009384: .4byte gUnknown_03000844

	thumb_func_start sub_8009388
sub_8009388: @ 0x08009388
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r1, [r7, #4]
	adds r0, r1, #2
	str r0, [r7, #4]
	ldrh r1, [r1, #2]
	lsrs r4, r1, #8
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08009474
	adds r0, r4, #0
	bl sub_80099A0
	adds r5, r0, #0
	cmp r5, #0xff
	bne _08009444
	movs r0, #0xff
	bl sub_80099A0
	adds r5, r0, #0
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _08009420 @ =gMapMarker
	adds r6, r0, r1
	adds r5, #0x39
	strb r4, [r6]
	ldr r0, [r7, #0x3c]
	str r0, [r6, #0x10]
	ldr r2, _08009424 @ =0x040000D4
	ldr r0, _08009428 @ =gUnknown_08022CA0
	lsls r3, r4, #1
	adds r3, r3, r4
	lsls r3, r3, #2
	adds r3, r3, r0
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r6, #0x10]
	str r0, [r2, #4]
	ldrh r4, [r3, #4]
	lsrs r0, r4, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0800942C @ =gUnknown_08231BE8
	str r0, [r2]
	ldr r0, _08009430 @ =0x050002C0
	str r0, [r2, #4]
	ldr r0, _08009434 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	strh r5, [r6, #0xe]
	lsls r1, r5, #3
	ldr r0, _08009438 @ =gOamObjects
	adds r1, r1, r0
	ldrh r0, [r3, #6]
	strh r0, [r1]
	strh r0, [r6, #8]
	ldrh r0, [r3, #8]
	strh r0, [r1, #2]
	strh r0, [r6, #0xa]
	ldr r0, [r6, #0x10]
	ldr r2, _0800943C @ =0xF9FEE800
	adds r5, r0, r2
	lsrs r5, r5, #5
	ldr r2, _08009440 @ =0x000068C0
	adds r0, r5, r2
	strh r0, [r1, #4]
	strh r0, [r6, #0xc]
	ldr r0, [r7, #0x3c]
	adds r0, r0, r4
	str r0, [r7, #0x3c]
	b _0800948E
	.align 2, 0
_08009420: .4byte gMapMarker
_08009424: .4byte 0x040000D4
_08009428: .4byte gUnknown_08022CA0
_0800942C: .4byte gUnknown_08231BE8
_08009430: .4byte 0x050002C0
_08009434: .4byte 0x80000010
_08009438: .4byte gOamObjects
_0800943C: .4byte 0xF9FEE800
_08009440: .4byte 0x000068C0
_08009444:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _0800946C @ =gMapMarker
	adds r6, r0, r1
	ldrh r0, [r6, #0xe]
	lsls r1, r0, #3
	ldr r0, _08009470 @ =gOamObjects
	adds r1, r1, r0
	ldrh r0, [r6, #8]
	strh r0, [r1]
	ldrh r0, [r6, #0xa]
	strh r0, [r1, #2]
	ldrh r0, [r6, #0xc]
	strh r0, [r1, #4]
	movs r0, #0xfb
	ldrb r1, [r6, #5]
	ands r0, r1
	strb r0, [r6, #5]
	b _0800948E
	.align 2, 0
_0800946C: .4byte gMapMarker
_08009470: .4byte gOamObjects
_08009474:
	adds r0, r4, #0
	bl sub_80099A0
	adds r5, r0, #0
	ldr r1, _0800949C @ =gMapMarker
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #4
	ldrb r2, [r0, #5]
	orrs r1, r2
	strb r1, [r0, #5]
_0800948E:
	ldr r0, [r7, #4]
	adds r0, #2
	str r0, [r7, #4]
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800949C: .4byte gMapMarker

	thumb_func_start sub_80094A0
sub_80094A0: @ 0x080094A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	lsrs r0, r0, #8
	bl sub_80099A0
	adds r2, r0, #0
	cmp r2, #0xff
	beq _080094F8
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	ldr r0, _080094F4 @ =gMapMarker
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0xff
	lsls r0, r0, #8
	ldrh r2, [r1, #8]
	ands r0, r2
	strh r0, [r1, #8]
	ldr r2, [r4, #4]
	ldrb r2, [r2]
	orrs r0, r2
	strh r0, [r1, #8]
	movs r0, #0xfe
	lsls r0, r0, #8
	ldrh r2, [r1, #0xa]
	ands r0, r2
	strh r0, [r1, #0xa]
	ldr r2, [r4, #4]
	ldrh r2, [r2]
	lsrs r2, r2, #8
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r0, [r4, #4]
	adds r0, #2
	b _080094FC
	.align 2, 0
_080094F4: .4byte gMapMarker
_080094F8:
	ldr r0, [r4, #4]
	adds r0, #4
_080094FC:
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8009508
sub_8009508: @ 0x08009508
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	lsrs r0, r0, #8
	bl sub_80099A0
	adds r2, r0, #0
	cmp r2, #0xff
	beq _08009560
	ldr r0, _0800955C @ =gMapMarker
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r4, #4]
	movs r0, #3
	ldrb r2, [r2]
	ands r0, r2
	movs r3, #0
	strb r0, [r1, #4]
	ldr r2, [r4, #4]
	adds r0, r2, #2
	str r0, [r4, #4]
	ldrh r2, [r2, #2]
	lsrs r0, r2, #8
	strb r0, [r1, #3]
	ldr r0, [r4, #4]
	ldrh r0, [r0]
	strb r0, [r1, #6]
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #2
	ldrb r2, [r1, #5]
	orrs r0, r2
	strb r0, [r1, #5]
	strb r3, [r1, #7]
	b _08009566
	.align 2, 0
_0800955C: .4byte gMapMarker
_08009560:
	ldr r0, [r4, #4]
	adds r0, #4
	str r0, [r4, #4]
_08009566:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8009570
sub_8009570: @ 0x08009570
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	lsrs r0, r0, #8
	bl sub_80099A0
	adds r2, r0, #0
	cmp r2, #0xff
	beq _080095B2
	ldr r1, _080095D0 @ =gMapMarker
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r3, r0, r1
	ldr r0, [r4, #4]
	ldrh r0, [r0]
	strb r0, [r3, #1]
	ldr r1, [r4, #4]
	movs r0, #1
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _080095B2
	ldr r0, _080095D4 @ =gOamObjects
	adds r1, r2, #0
	adds r1, #0x39
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrh r0, [r3, #0xa]
	strh r0, [r1, #2]
_080095B2:
	ldr r1, _080095D0 @ =gMapMarker
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0, #2]
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080095D0: .4byte gMapMarker
_080095D4: .4byte gOamObjects

	thumb_func_start sub_80095D8
sub_80095D8: @ 0x080095D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	lsrs r0, r0, #8
	bl sub_80099A0
	adds r2, r0, #0
	cmp r2, #0xff
	beq _08009614
	ldr r0, _08009610 @ =gMapMarker
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #2
	ldrb r1, [r1, #5]
	ands r0, r1
	cmp r0, #0
	beq _08009614
	ldr r0, [r4, #4]
	subs r0, #2
	str r0, [r4, #4]
	movs r0, #1
	b _0800961C
	.align 2, 0
_08009610: .4byte gMapMarker
_08009614:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
_0800961C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8009624
sub_8009624: @ 0x08009624
	push {r4, lr}
	ldr r4, [r0, #4]
	ldr r2, _08009678 @ =0x040000D4
	ldr r1, _0800967C @ =gUnknown_081426FC
	str r1, [r2]
	ldr r1, _08009680 @ =0x06011F80
	str r1, [r2, #4]
	ldr r1, _08009684 @ =0x80000040
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08009688 @ =gUnknown_0814DC60
	str r1, [r2]
	ldr r1, _0800968C @ =0x05000300
	str r1, [r2, #4]
	ldr r1, _08009690 @ =0x80000010
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r2, _08009694 @ =gInvestigation
	movs r3, #0
	movs r1, #0xf0
	strh r1, [r2]
	movs r1, #0x30
	strh r1, [r2, #2]
	strb r3, [r2, #0x19]
	movs r1, #8
	strb r1, [r2, #0x18]
	movs r1, #0xf
	strb r1, [r2, #9]
	ldrh r1, [r4, #2]
	strb r1, [r2, #0xa]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r2, #0
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	adds r4, #4
	str r4, [r0, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08009678: .4byte 0x040000D4
_0800967C: .4byte gUnknown_081426FC
_08009680: .4byte 0x06011F80
_08009684: .4byte 0x80000040
_08009688: .4byte gUnknown_0814DC60
_0800968C: .4byte 0x05000300
_08009690: .4byte 0x80000010
_08009694: .4byte gInvestigation

	thumb_func_start sub_8009698
sub_8009698: @ 0x08009698
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r5, _080096F4 @ =gInvestigation
	ldrh r2, [r6]
	movs r0, #0x80
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08009700
	ldrh r1, [r5]
	ldrb r3, [r5, #9]
	adds r0, r1, r3
	movs r1, #0xff
	ands r0, r1
	strh r0, [r5]
	adds r0, r3, #0
	subs r0, #1
	strb r0, [r5, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080096D4
	ldr r0, _080096F8 @ =0x0000FF7F
	ands r0, r2
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r6]
_080096D4:
	movs r0, #0x80
	lsls r0, r0, #2
	ldrh r3, [r6]
	ands r0, r3
	cmp r0, #0
	bne _080096E2
	b _080098E2
_080096E2:
	movs r0, #0x31
	bl PlaySE
	ldr r0, _080096FC @ =0x0000FDFF
	ldrh r1, [r6]
	ands r0, r1
	strh r0, [r6]
	b _080098E2
	.align 2, 0
_080096F4: .4byte gInvestigation
_080096F8: .4byte 0x0000FF7F
_080096FC: .4byte 0x0000FDFF
_08009700:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	bne _0800970C
	b _080098E2
_0800970C:
	movs r0, #0x2c
	ldrb r2, [r5, #0xa]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _08009818 @ =gUnknown_08022D0C
	adds r4, r1, r0
	ldr r1, _0800981C @ =gJoypad
	movs r0, #0x20
	ldrh r2, [r1]
	ands r0, r2
	adds r2, r1, #0
	cmp r0, #0
	beq _08009744
	ldrh r0, [r5]
	subs r0, #3
	strh r0, [r5]
	adds r1, r4, #0
	adds r1, #0x28
	ldrb r1, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bhs _0800973C
	strh r1, [r5]
_0800973C:
	ldrh r0, [r5]
	cmp r0, #0xe0
	bls _08009744
	strh r3, [r5]
_08009744:
	movs r0, #0x10
	ldrh r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0800976E
	ldrh r0, [r5]
	adds r0, #3
	strh r0, [r5]
	adds r1, r4, #0
	adds r1, #0x2a
	ldrb r1, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bls _08009764
	strh r1, [r5]
_08009764:
	ldrh r3, [r5]
	cmp r3, #0xe0
	bls _0800976E
	movs r0, #0xe0
	strh r0, [r5]
_0800976E:
	movs r0, #0x40
	ldrh r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08009798
	ldrh r0, [r5, #2]
	subs r0, #3
	strh r0, [r5, #2]
	adds r1, r4, #0
	adds r1, #0x29
	ldrb r1, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bhs _0800978E
	strh r1, [r5, #2]
_0800978E:
	ldrh r3, [r5, #2]
	cmp r3, #0x90
	bls _08009798
	movs r0, #0
	strh r0, [r5, #2]
_08009798:
	movs r0, #0x80
	ldrh r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _080097C2
	ldrh r0, [r5, #2]
	adds r0, #3
	strh r0, [r5, #2]
	adds r1, r4, #0
	adds r1, #0x2b
	ldrb r1, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bls _080097B8
	strh r1, [r5, #2]
_080097B8:
	ldrh r3, [r5, #2]
	cmp r3, #0x90
	bls _080097C2
	movs r0, #0x90
	strh r0, [r5, #2]
_080097C2:
	movs r1, #1
	ldrh r2, [r2, #2]
	ands r1, r2
	cmp r1, #0
	beq _080098B4
	ldr r0, _08009820 @ =0x0000FEF7
	ldrh r1, [r6]
	ands r0, r1
	strh r0, [r6]
	ldr r1, _08009824 @ =gMain
	ldrh r2, [r1, #0x3c]
	ldrh r3, [r5]
	adds r0, r2, r3
	adds r0, #0xc
	lsls r0, r0, #0x10
	ldr r2, _08009828 @ =0xFFFF0000
	ldrh r1, [r1, #0x3e]
	ldrh r3, [r5, #2]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	ldr r3, _0800982C @ =0x0000FFFF
	lsrs r0, r0, #0x10
	orrs r0, r1
	str r0, [sp]
	ldr r0, [sp, #4]
	ands r0, r2
	movs r1, #4
	orrs r0, r1
	ands r0, r3
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [sp, #4]
	mov r0, sp
	adds r1, r4, #0
	bl sub_8014508
	cmp r0, #0
	beq _08009830
	ldrh r0, [r4, #0x20]
	bl ChangeScriptSection
	b _0800984C
	.align 2, 0
_08009818: .4byte gUnknown_08022D0C
_0800981C: .4byte gJoypad
_08009820: .4byte 0x0000FEF7
_08009824: .4byte gMain
_08009828: .4byte 0xFFFF0000
_0800982C: .4byte 0x0000FFFF
_08009830:
	adds r1, r4, #0
	adds r1, #0x10
	mov r0, sp
	bl sub_8014508
	cmp r0, #0
	beq _08009846
	ldrh r0, [r4, #0x22]
	bl ChangeScriptSection
	b _0800984C
_08009846:
	ldrh r0, [r4, #0x24]
	bl ChangeScriptSection
_0800984C:
	movs r0, #0x80
	lsls r0, r0, #3
	adds r4, r0, #0
	ldrh r0, [r6]
	orrs r0, r4
	strh r0, [r6]
	ldr r1, _0800989C @ =0x040000D4
	ldr r0, _080098A0 @ =gUnknown_0814DC60
	str r0, [r1]
	ldr r0, _080098A4 @ =0x05000300
	str r0, [r1, #4]
	ldr r0, _080098A8 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x2b
	bl PlaySE
	ldrh r1, [r6]
	orrs r4, r1
	strh r4, [r6]
	ldr r1, _080098AC @ =gOamObjects
	ldrh r2, [r5, #2]
	movs r3, #0xb0
	lsls r3, r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	ldrh r5, [r5]
	movs r0, #0x80
	lsls r0, r0, #7
	adds r2, r5, r0
	adds r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	movs r0, #0xb1
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, _080098B0 @ =0x000084FC
	strh r0, [r1]
	movs r0, #0
	b _08009914
	.align 2, 0
_0800989C: .4byte 0x040000D4
_080098A0: .4byte gUnknown_0814DC60
_080098A4: .4byte 0x05000300
_080098A8: .4byte 0x80000010
_080098AC: .4byte gOamObjects
_080098B0: .4byte 0x000084FC
_080098B4:
	ldrb r0, [r5, #0x19]
	adds r0, #1
	strb r0, [r5, #0x19]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080098E2
	strb r1, [r5, #0x19]
	ldrb r0, [r5, #0x18]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r5, #0x18]
	ldr r1, _0800991C @ =0x040000D4
	lsls r0, r0, #5
	ldr r2, _08009920 @ =gUnknown_0814DC60
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _08009924 @ =0x05000300
	str r0, [r1, #4]
	ldr r0, _08009928 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080098E2:
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	ldrh r1, [r6]
	orrs r0, r1
	strh r0, [r6]
	ldr r1, _0800992C @ =gOamObjects
	ldrh r2, [r5, #2]
	movs r3, #0xb0
	lsls r3, r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	ldrh r5, [r5]
	movs r0, #0x80
	lsls r0, r0, #7
	adds r2, r5, r0
	adds r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	movs r0, #0xb1
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, _08009930 @ =0x000084FC
	strh r0, [r1]
	movs r0, #1
_08009914:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800991C: .4byte 0x040000D4
_08009920: .4byte gUnknown_0814DC60
_08009924: .4byte 0x05000300
_08009928: .4byte 0x80000010
_0800992C: .4byte gOamObjects
_08009930: .4byte 0x000084FC

	thumb_func_start sub_8009934
sub_8009934: @ 0x08009934
	push {r4, r5, lr}
	movs r4, #0
	ldr r3, _08009990 @ =0x040000D4
	ldr r5, _08009994 @ =gUnknown_08022CA0
	ldr r2, _08009998 @ =gMapMarker
_0800993E:
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _08009982
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	str r1, [r3]
	ldr r1, [r2, #0x10]
	str r1, [r3, #4]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r0, #4
	ldrb r1, [r2, #5]
	ands r0, r1
	cmp r0, #0
	bne _08009982
	ldrh r0, [r2, #0xe]
	lsls r1, r0, #3
	ldr r0, _0800999C @ =gOamObjects
	adds r1, r1, r0
	ldrh r0, [r2, #8]
	strh r0, [r1]
	ldrh r0, [r2, #0xa]
	strh r0, [r1, #2]
	ldrh r0, [r2, #0xc]
	strh r0, [r1, #4]
_08009982:
	adds r2, #0x14
	adds r4, #1
	cmp r4, #7
	bls _0800993E
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08009990: .4byte 0x040000D4
_08009994: .4byte gUnknown_08022CA0
_08009998: .4byte gMapMarker
_0800999C: .4byte gOamObjects

	thumb_func_start sub_80099A0
sub_80099A0: @ 0x080099A0
	adds r3, r0, #0
	movs r1, #0
	ldr r2, _080099B8 @ =gMapMarker
_080099A6:
	ldrb r0, [r2]
	cmp r0, r3
	beq _080099BC
	adds r2, #0x14
	adds r1, #1
	cmp r1, #7
	bls _080099A6
	movs r0, #0xff
	b _080099BE
	.align 2, 0
_080099B8: .4byte gMapMarker
_080099BC:
	adds r0, r1, #0
_080099BE:
	bx lr

	thumb_func_start sub_80099C0
sub_80099C0: @ 0x080099C0
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	ldr r1, _080099E0 @ =0x0000FBFF
	ldrh r2, [r0]
	ands r1, r2
	strh r1, [r0]
	ldr r0, _080099E4 @ =gOamObjects
	movs r1, #0xb0
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r1, #0xc0
	strh r1, [r0]
	movs r0, #0
	bx lr
	.align 2, 0
_080099E0: .4byte 0x0000FBFF
_080099E4: .4byte gOamObjects

	thumb_func_start sub_80099E8
sub_80099E8: @ 0x080099E8
	push {r4, r5, r6, r7, lr}
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	ldr r1, _08009A40 @ =gOamObjects+0x1A0
	movs r4, #0
	ldr r5, _08009A44 @ =gInvestigation
	ldr r7, _08009A48 @ =0x000040E0
	movs r3, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r6, r0, #0
	movs r2, #0xa2
	lsls r2, r2, #7
_08009A04:
	strh r7, [r1]
	adds r0, r3, r6
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	adds r1, #8
	adds r3, #0x3c
	adds r2, #0x20
	adds r4, #1
	cmp r4, #3
	bls _08009A04
	movs r4, #0
	adds r0, r5, #0
	movs r1, #0xf
	bl sub_800EB24
	movs r0, #0xe0
	strb r0, [r5, #0xf]
	strb r4, [r5, #0x10]
	movs r0, #8
	strb r0, [r5, #0x11]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xd]
	ldr r1, _08009A4C @ =gMain+0x8
	adds r0, #0xfc
	str r0, [r1]
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08009A40: .4byte gOamObjects+0x1A0
_08009A44: .4byte gInvestigation
_08009A48: .4byte 0x000040E0
_08009A4C: .4byte gMain+0x8

	thumb_func_start sub_8009A50
sub_8009A50: @ 0x08009A50
	adds r3, r0, #0
	ldr r0, [r3, #4]
	adds r1, r0, #2
	str r1, [r3, #4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _08009A74
	ldr r0, _08009A70 @ =gMain
	movs r1, #0x95
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	b _08009A82
	.align 2, 0
_08009A70: .4byte gMain
_08009A74:
	ldr r0, _08009A90 @ =gMain
	movs r1, #0x95
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #4
	orrs r1, r2
_08009A82:
	str r1, [r0]
	ldr r0, [r3, #4]
	adds r0, #2
	str r0, [r3, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_08009A90: .4byte gMain

	thumb_func_start sub_8009A94
sub_8009A94: @ 0x08009A94
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _08009AAC
	movs r0, #1
	bl sub_8017928
	b _08009AB2
_08009AAC:
	movs r0, #2
	bl sub_8017928
_08009AB2:
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8009AC0
sub_8009AC0: @ 0x08009AC0
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r5, _08009B04 @ =gOamObjects+0x188
	ldr r1, [r3, #4]
	adds r0, r1, #2
	str r0, [r3, #4]
	ldr r4, _08009B08 @ =gMain
	adds r2, r4, #0
	adds r2, #0x92
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _08009B28
	ldr r1, _08009B0C @ =0x040000D4
	ldr r0, _08009B10 @ =gUnknown_081438DC
	str r0, [r1]
	ldr r0, _08009B14 @ =0x06013400
	str r0, [r1, #4]
	ldr r0, _08009B18 @ =0x80000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08009B1C @ =gUnknown_0814DEC0
	str r0, [r1]
	ldr r0, _08009B20 @ =0x050002A0
	str r0, [r1, #4]
	ldr r0, _08009B24 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #9
	b _08009B54
	.align 2, 0
_08009B04: .4byte gOamObjects+0x188
_08009B08: .4byte gMain
_08009B0C: .4byte 0x040000D4
_08009B10: .4byte gUnknown_081438DC
_08009B14: .4byte 0x06013400
_08009B18: .4byte 0x80000800
_08009B1C: .4byte gUnknown_0814DEC0
_08009B20: .4byte 0x050002A0
_08009B24: .4byte 0x80000010
_08009B28:
	ldr r1, _08009B78 @ =0x040000D4
	ldr r0, _08009B7C @ =gUnknown_081430DC
	str r0, [r1]
	ldr r0, _08009B80 @ =0x06013400
	str r0, [r1, #4]
	ldr r2, _08009B84 @ =0x80000400
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08009B88 @ =gUnknown_081440DC
	str r0, [r1]
	ldr r0, _08009B8C @ =0x06013C00
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08009B90 @ =gUnknown_0814DEE0
	str r0, [r1]
	ldr r0, _08009B94 @ =0x050002A0
	str r0, [r1, #4]
	ldr r0, _08009B98 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08009B9C @ =0x01000009
_08009B54:
	str r0, [r4, #8]
	ldr r0, [r3, #4]
	adds r0, #2
	str r0, [r3, #4]
	ldr r0, _08009BA0 @ =0x000003EF
	strh r0, [r5]
	ldr r0, _08009BA4 @ =0x0000C1EF
	strh r0, [r5, #2]
	ldr r0, _08009BA8 @ =0x000051A0
	strh r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #8]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08009B78: .4byte 0x040000D4
_08009B7C: .4byte gUnknown_081430DC
_08009B80: .4byte 0x06013400
_08009B84: .4byte 0x80000400
_08009B88: .4byte gUnknown_081440DC
_08009B8C: .4byte 0x06013C00
_08009B90: .4byte gUnknown_0814DEE0
_08009B94: .4byte 0x050002A0
_08009B98: .4byte 0x80000010
_08009B9C: .4byte 0x01000009
_08009BA0: .4byte 0x000003EF
_08009BA4: .4byte 0x0000C1EF
_08009BA8: .4byte 0x000051A0

	thumb_func_start sub_8009BAC
sub_8009BAC: @ 0x08009BAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	ldr r0, [r0, #4]
	ldrh r1, [r0, #2]
	mov r8, r1
	adds r0, #4
	mov r2, sb
	str r0, [r2, #4]
	movs r3, #0xf
	ands r3, r1
	cmp r3, #1
	beq _08009BF4
	cmp r3, #1
	ble _08009BD4
	cmp r3, #2
	beq _08009C14
_08009BD4:
	ldr r2, _08009BE8 @ =gMain
	adds r1, r2, #0
	adds r1, #0x44
	movs r0, #0xe
	strb r0, [r1]
	ldr r0, _08009BEC @ =gUnknown_08263FD4
	mov sl, r0
	ldr r5, _08009BF0 @ =gUnknown_08263FF4
	b _08009C24
	.align 2, 0
_08009BE8: .4byte gMain
_08009BEC: .4byte gUnknown_08263FD4
_08009BF0: .4byte gUnknown_08263FF4
_08009BF4:
	ldr r2, _08009C08 @ =gMain
	adds r1, r2, #0
	adds r1, #0x44
	movs r0, #0xf2
	strb r0, [r1]
	ldr r1, _08009C0C @ =gUnknown_08265CC4
	mov sl, r1
	ldr r5, _08009C10 @ =gUnknown_08265CE4
	b _08009C24
	.align 2, 0
_08009C08: .4byte gMain
_08009C0C: .4byte gUnknown_08265CC4
_08009C10: .4byte gUnknown_08265CE4
_08009C14:
	ldr r2, _08009C44 @ =gMain
	adds r1, r2, #0
	adds r1, #0x44
	movs r0, #0xf2
	strb r0, [r1]
	ldr r0, _08009C48 @ =gUnknown_08277A98
	mov sl, r0
	ldr r5, _08009C4C @ =gUnknown_08277AB8
_08009C24:
	movs r6, #0
	movs r0, #0x10
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08009C6E
	adds r0, r2, #0
	adds r0, #0x44
	strb r6, [r0]
	cmp r3, #1
	beq _08009C5A
	cmp r3, #1
	bgt _08009C50
	cmp r3, #0
	beq _08009C56
	b _08009C5E
	.align 2, 0
_08009C44: .4byte gMain
_08009C48: .4byte gUnknown_08277A98
_08009C4C: .4byte gUnknown_08277AB8
_08009C50:
	cmp r3, #2
	beq _08009C5A
	b _08009C5E
_08009C56:
	movs r6, #0x30
	b _08009C5E
_08009C5A:
	movs r6, #0x28
	rsbs r6, r6, #0
_08009C5E:
	ldr r0, _08009D18 @ =gUnknown_03000844
	movs r2, #0x10
	ldrsh r1, [r0, r2]
	subs r1, r1, r6
	movs r3, #0x12
	ldrsh r2, [r0, r3]
	bl sub_8013FB8
_08009C6E:
	ldr r0, _08009D1C @ =gIORegisters
	mov ip, r0
	ldr r2, _08009D20 @ =0x0000E080
	ldr r1, _08009D24 @ =gUnknown_03000000
	movs r0, #0x80
	lsls r0, r0, #3
_08009C7A:
	strh r2, [r1]
	adds r1, #2
	subs r0, #1
	cmp r0, #0
	bne _08009C7A
	movs r0, #0
	ldr r7, _08009D24 @ =gUnknown_03000000
_08009C88:
	movs r2, #0
	adds r4, r0, #1
	lsls r3, r0, #5
_08009C8E:
	adds r0, r6, #0
	cmp r0, #0
	bge _08009C96
	adds r0, #7
_08009C96:
	asrs r0, r0, #3
	subs r0, r2, r0
	cmp r0, #0x1e
	bhi _08009CAC
	adds r0, #1
	adds r0, r3, r0
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r1, [r5]
	adds r1, #0x80
	strh r1, [r0]
_08009CAC:
	adds r2, #1
	adds r5, #2
	cmp r2, #0x1d
	ble _08009C8E
	adds r0, r4, #0
	cmp r0, #0x13
	ble _08009C88
	movs r1, #0x9a
	lsls r1, r1, #3
	add sl, r1
	ldr r1, _08009D28 @ =0x040000D4
	mov r2, sl
	str r2, [r1]
	ldr r0, _08009D2C @ =gUnknown_0203B500
	str r0, [r1, #4]
	ldr r0, _08009D30 @ =0x80002580
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r1, ip
	adds r1, #0x4a
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	movs r2, #0
	ldrh r3, [r1]
	orrs r0, r3
	strh r0, [r1]
	ldr r0, _08009D34 @ =0x00001E0A
	mov r3, ip
	strh r0, [r3, #4]
	movs r0, #0x20
	mov r3, r8
	ands r3, r0
	cmp r3, #0
	beq _08009CFA
	ldr r0, _08009D38 @ =0x0000F7FF
	ldrh r3, [r1]
	ands r0, r3
	strh r0, [r1]
_08009CFA:
	movs r0, #0x40
	mov r1, sb
	ldrh r1, [r1]
	orrs r0, r1
	mov r2, sb
	strh r0, [r2]
	movs r0, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08009D18: .4byte gUnknown_03000844
_08009D1C: .4byte gIORegisters
_08009D20: .4byte 0x0000E080
_08009D24: .4byte gUnknown_03000000
_08009D28: .4byte 0x040000D4
_08009D2C: .4byte gUnknown_0203B500
_08009D30: .4byte 0x80002580
_08009D34: .4byte 0x00001E0A
_08009D38: .4byte 0x0000F7FF

	thumb_func_start sub_8009D3C
sub_8009D3C: @ 0x08009D3C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r2, r0, #2
	ldrh r0, [r0, #2]
	adds r1, r2, #2
	str r1, [r4, #4]
	ldrh r1, [r2, #2]
	bl sub_8013D04
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8009D60
sub_8009D60: @ 0x08009D60
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r4, [r2, #4]
	adds r3, r4, #2
	str r3, [r2, #4]
	ldr r0, _08009D90 @ =0x0000FFFF
	ldrh r1, [r4, #2]
	cmp r1, r0
	bne _08009D98
	ldr r0, _08009D94 @ =gIORegisters
	adds r0, #0x4a
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	ldrh r5, [r0]
	orrs r1, r5
	strh r1, [r0]
	movs r0, #9
	strh r0, [r2, #0x18]
	movs r0, #0x74
	strh r0, [r2, #0x1a]
	adds r0, r4, #6
	b _08009DAE
	.align 2, 0
_08009D90: .4byte 0x0000FFFF
_08009D94: .4byte gIORegisters
_08009D98:
	ldr r1, _08009DB8 @ =gIORegisters
	adds r1, #0x4a
	ldr r0, _08009DBC @ =0x0000FDFF
	ldrh r5, [r1]
	ands r0, r5
	strh r0, [r1]
	ldrh r0, [r4, #2]
	strh r0, [r2, #0x18]
	ldrh r0, [r3, #2]
	strh r0, [r2, #0x1a]
	adds r0, r3, #4
_08009DAE:
	str r0, [r2, #4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08009DB8: .4byte gIORegisters
_08009DBC: .4byte 0x0000FDFF

	thumb_func_start sub_8009DC0
sub_8009DC0: @ 0x08009DC0
	push {r4, lr}
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	ldr r4, _08009DF0 @ =gMain
	movs r0, #0
	strb r0, [r4, #0x18]
	strb r0, [r4, #0x19]
	bl sub_800AECC
	ldr r0, _08009DF4 @ =gSaveDataBuffer
	adds r0, #0xe8
	movs r1, #0x80
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
	bl sub_800AE84
	movs r0, #1
	str r0, [r4, #8]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08009DF0: .4byte gMain
_08009DF4: .4byte gSaveDataBuffer

	thumb_func_start sub_8009DF8
sub_8009DF8: @ 0x08009DF8
	adds r1, r0, #0
	ldr r0, [r1, #4]
	adds r2, r0, #2
	str r2, [r1, #4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _08009E14
	ldr r0, _08009E10 @ =gMain
	ldrb r0, [r0, #9]
	cmp r0, #8
	bne _08009E28
	b _08009E1C
	.align 2, 0
_08009E10: .4byte gMain
_08009E14:
	ldr r0, _08009E24 @ =gMain
	ldrb r0, [r0, #9]
	cmp r0, #6
	bne _08009E28
_08009E1C:
	adds r0, r2, #2
	str r0, [r1, #4]
	movs r0, #0
	b _08009E30
	.align 2, 0
_08009E24: .4byte gMain
_08009E28:
	ldr r0, [r1, #4]
	subs r0, #2
	str r0, [r1, #4]
	movs r0, #1
_08009E30:
	bx lr
	.align 2, 0

	thumb_func_start sub_8009E34
sub_8009E34: @ 0x08009E34
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #2
	str r1, [r4, #4]
	ldrh r0, [r0, #2]
	lsrs r0, r0, #8
	bl sub_80099A0
	adds r3, r0, #0
	cmp r3, #0xff
	beq _08009E6A
	ldr r0, [r4, #4]
	movs r2, #3
	ldrh r0, [r0]
	ands r2, r0
	lsls r2, r2, #0xc
	ldr r0, _08009E88 @ =gMapMarker
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, _08009E8C @ =0x0000CFFF
	ldrh r5, [r1, #0xa]
	ands r0, r5
	adds r0, r0, r2
	strh r0, [r1, #0xa]
_08009E6A:
	ldr r1, _08009E88 @ =gMapMarker
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0, #2]
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08009E88: .4byte gMapMarker
_08009E8C: .4byte 0x0000CFFF

	thumb_func_start sub_8009E90
sub_8009E90: @ 0x08009E90
	adds r1, r0, #0
	ldr r0, _08009EA8 @ =gMain
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	bne _08009EAC
	ldr r0, [r1, #4]
	adds r0, #2
	str r0, [r1, #4]
	movs r0, #0
	b _08009EAE
	.align 2, 0
_08009EA8: .4byte gMain
_08009EAC:
	movs r0, #1
_08009EAE:
	bx lr

	thumb_func_start sub_8009EB0
sub_8009EB0: @ 0x08009EB0
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

	thumb_func_start sub_8009EF8
sub_8009EF8: @ 0x08009EF8
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
	bl sub_80141E0
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

	thumb_func_start sub_8009F78
sub_8009F78: @ 0x08009F78
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

	thumb_func_start sub_800A01C
sub_800A01C: @ 0x0800A01C
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

	thumb_func_start sub_800A05C
sub_800A05C: @ 0x0800A05C
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

	thumb_func_start sub_800A080
sub_800A080: @ 0x0800A080
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

	thumb_func_start sub_800A0B8
sub_800A0B8: @ 0x0800A0B8
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

	thumb_func_start sub_800A0E4
sub_800A0E4: @ 0x0800A0E4
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

	thumb_func_start sub_800A150
sub_800A150: @ 0x0800A150
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_800A15C
sub_800A15C: @ 0x0800A15C
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_800A168
sub_800A168: @ 0x0800A168
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

	thumb_func_start sub_800A1A0
sub_800A1A0: @ 0x0800A1A0
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

	thumb_func_start sub_800A1C4
sub_800A1C4: @ 0x0800A1C4
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

	thumb_func_start sub_800A20C
sub_800A20C: @ 0x0800A20C
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

	thumb_func_start sub_800A2F0
sub_800A2F0: @ 0x0800A2F0
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

	thumb_func_start sub_800A314
sub_800A314: @ 0x0800A314
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

	thumb_func_start sub_800A33C
sub_800A33C: @ 0x0800A33C
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_800A348
sub_800A348: @ 0x0800A348
	ldr r1, [r0, #4]
	adds r1, #4
	str r1, [r0, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_800A354
sub_800A354: @ 0x0800A354
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

	thumb_func_start sub_800A37C
sub_800A37C: @ 0x0800A37C
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

	thumb_func_start sub_800A3C0
sub_800A3C0: @ 0x0800A3C0
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

	thumb_func_start sub_800A414
sub_800A414: @ 0x0800A414
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

	thumb_func_start sub_800A444
sub_800A444: @ 0x0800A444
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

	thumb_func_start sub_800A470
sub_800A470: @ 0x0800A470
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

	thumb_func_start sub_800A498
sub_800A498: @ 0x0800A498
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

	thumb_func_start sub_800A548
sub_800A548: @ 0x0800A548
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

	thumb_func_start sub_800A58C
sub_800A58C: @ 0x0800A58C
	push {lr}
	ldr r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #4]
	bl LoadCurrentScriptIntoRam
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800A5A0
sub_800A5A0: @ 0x0800A5A0
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

	thumb_func_start sub_800A5BC
sub_800A5BC: @ 0x0800A5BC
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

	thumb_func_start sub_800A608
sub_800A608: @ 0x0800A608
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

	thumb_func_start sub_800A634
sub_800A634: @ 0x0800A634
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

	thumb_func_start sub_800A64C
sub_800A64C: @ 0x0800A64C
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

	thumb_func_start sub_800A68C
sub_800A68C: @ 0x0800A68C
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

	thumb_func_start sub_800A6CC
sub_800A6CC: @ 0x0800A6CC
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

	thumb_func_start sub_800A70C
sub_800A70C: @ 0x0800A70C
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

	thumb_func_start sub_800A720
sub_800A720: @ 0x0800A720
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

	thumb_func_start sub_800A744
sub_800A744: @ 0x0800A744
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
