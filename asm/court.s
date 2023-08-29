	.include "asm/macros.inc"
	.syntax unified

	thumb_func_start VerdictProcess
VerdictProcess: @ 0x0800E1EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, _0800E210 @ =gOamObjects+0x188
	mov sl, r0
	ldrb r0, [r7, #9]
	cmp r0, #8
	bls _0800E204
	b _0800E6BE
_0800E204:
	lsls r0, r0, #2
	ldr r1, _0800E214 @ =_0800E218
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800E210: .4byte gOamObjects+0x188
_0800E214: .4byte _0800E218
_0800E218: @ jump table
	.4byte _0800E23C @ case 0
	.4byte _0800E318 @ case 1
	.4byte _0800E3B0 @ case 2
	.4byte _0800E498 @ case 3
	.4byte _0800E4B4 @ case 4
	.4byte _0800E57C @ case 5
	.4byte _0800E5B8 @ case 6
	.4byte _0800E614 @ case 7
	.4byte _0800E6B8 @ case 8
_0800E23C:
	ldr r0, _0800E2B0 @ =gMain
	adds r0, #0x92
	ldrh r1, [r0]
	subs r1, #0x10
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bgt _0800E2BC
	bl fix_inverse
	adds r4, r0, #0
	ldr r6, _0800E2B4 @ =gSineTable
	adds r0, r6, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	ldr r5, _0800E2B8 @ =gOamObjects
	strh r0, [r5, #6]
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0xe]
	ldrh r6, [r6]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x16]
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x1e]
	movs r0, #3
	movs r1, #1
	movs r2, #4
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r0, #0x56
	bl PlaySE
	b _0800E4D4
	.align 2, 0
_0800E2B0: .4byte gMain
_0800E2B4: .4byte gSineTable
_0800E2B8: .4byte gOamObjects
_0800E2BC:
	adds r0, r7, #0
	adds r0, #0x92
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl fix_inverse
	adds r4, r0, #0
	ldr r6, _0800E310 @ =gSineTable
	adds r0, r6, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	ldr r5, _0800E314 @ =gOamObjects
	strh r0, [r5, #6]
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0xe]
	ldrh r6, [r6]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x16]
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x1e]
	b _0800E6BE
	.align 2, 0
_0800E310: .4byte gSineTable
_0800E314: .4byte gOamObjects
_0800E318:
	ldrb r0, [r7, #0xa]
	adds r1, r0, #1
	strb r1, [r7, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x28
	bhi _0800E328
	b _0800E6BE
_0800E328:
	ldr r0, _0800E398 @ =gMain
	adds r0, #0x92
	movs r1, #0xa0
	lsls r1, r1, #2
	strh r1, [r0]
	movs r2, #8
	add sl, r2
	ldr r0, _0800E39C @ =0x000003EF
	mov r1, sl
	strh r0, [r1]
	ldr r0, _0800E3A0 @ =0x0000C280
	strh r0, [r1, #2]
	ldr r0, _0800E3A4 @ =0x000051E0
	strh r0, [r1, #4]
	adds r0, r7, #0
	adds r0, #0x92
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl fix_inverse
	adds r4, r0, #0
	ldr r6, _0800E3A8 @ =gSineTable
	adds r0, r6, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	ldr r5, _0800E3AC @ =gOamObjects
	strh r0, [r5, #0x26]
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x2e]
	ldrh r6, [r6]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x36]
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x3e]
	b _0800E6B0
	.align 2, 0
_0800E398: .4byte gMain
_0800E39C: .4byte 0x000003EF
_0800E3A0: .4byte 0x0000C280
_0800E3A4: .4byte 0x000051E0
_0800E3A8: .4byte gSineTable
_0800E3AC: .4byte gOamObjects
_0800E3B0:
	ldr r0, _0800E430 @ =gMain
	adds r0, #0x92
	mov sl, r0
	ldrh r0, [r0]
	subs r0, #0x10
	mov r2, sl
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	mov sb, r1
	cmp r0, sb
	bgt _0800E43C
	mov r0, sb
	bl fix_inverse
	adds r4, r0, #0
	ldr r6, _0800E434 @ =gSineTable
	adds r0, r6, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r2, [r0, r1]
	mov r8, r2
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	ldr r5, _0800E438 @ =gOamObjects
	strh r0, [r5, #0x26]
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x2e]
	ldrh r6, [r6]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x36]
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x3e]
	movs r0, #3
	movs r1, #1
	movs r2, #4
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r0, #0x56
	bl PlaySE
	mov r1, sb
	mov r0, sl
	strh r1, [r0]
	b _0800E4D4
	.align 2, 0
_0800E430: .4byte gMain
_0800E434: .4byte gSineTable
_0800E438: .4byte gOamObjects
_0800E43C:
	adds r0, r7, #0
	adds r0, #0x92
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl fix_inverse
	adds r4, r0, #0
	ldr r6, _0800E490 @ =gSineTable
	adds r0, r6, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	ldr r5, _0800E494 @ =gOamObjects
	strh r0, [r5, #0x26]
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x2e]
	ldrh r6, [r6]
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x36]
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x3e]
	b _0800E6BE
	.align 2, 0
_0800E490: .4byte gSineTable
_0800E494: .4byte gOamObjects
_0800E498:
	ldrb r0, [r7, #0xa]
	adds r1, r0, #1
	strb r1, [r7, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x40
	bhi _0800E4A8
	b _0800E6BE
_0800E4A8:
	ldrb r0, [r7, #9]
	adds r0, #1
	movs r1, #0
	strb r0, [r7, #9]
	strb r1, [r7, #0xa]
	b _0800E6BE
_0800E4B4:
	ldrb r0, [r7, #0xa]
	adds r1, r0, #1
	strb r1, [r7, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bls _0800E4E0
	movs r0, #0x80
	lsls r0, r0, #2
	mov r2, sl
	strh r0, [r2]
	strh r0, [r2, #8]
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	bne _0800E4D4
	b _0800E6B8
_0800E4D4:
	ldrb r0, [r7, #9]
	adds r0, #1
	strb r0, [r7, #9]
	movs r0, #0
	strb r0, [r7, #0xa]
	b _0800E6BE
_0800E4E0:
	adds r0, r7, #0
	adds r0, #0x92
	ldrh r1, [r0]
	adds r1, #8
	strh r1, [r0]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl fix_inverse
	adds r4, r0, #0
	ldr r6, _0800E574 @ =gSineTable
	adds r0, r6, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r2, [r0, r1]
	mov r8, r2
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	ldr r5, _0800E578 @ =gOamObjects
	strh r0, [r5, #6]
	movs r0, #0
	ldrsh r2, [r6, r0]
	mov sb, r2
	mov r0, sb
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0xe]
	ldrh r6, [r6]
	rsbs r6, r6, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x16]
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x1e]
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x26]
	mov r0, sb
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x2e]
	adds r0, r6, #0
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x36]
	mov r0, r8
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x3e]
	mov r1, sl
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	b _0800E6BE
	.align 2, 0
_0800E574: .4byte gSineTable
_0800E578: .4byte gOamObjects
_0800E57C:
	ldr r1, _0800E59C @ =0x040000D4
	ldr r0, _0800E5A0 @ =gUnknown_08145CDC
	str r0, [r1]
	ldr r0, _0800E5A4 @ =0x06011F80
	str r0, [r1, #4]
	ldr r0, _0800E5A8 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800E5AC @ =gUnknown_0814DFE0
	str r0, [r1]
	ldr r0, _0800E5B0 @ =0x050002A0
	str r0, [r1, #4]
	ldr r0, _0800E5B4 @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _0800E6B0
	.align 2, 0
_0800E59C: .4byte 0x040000D4
_0800E5A0: .4byte gUnknown_08145CDC
_0800E5A4: .4byte 0x06011F80
_0800E5A8: .4byte 0x80000010
_0800E5AC: .4byte gUnknown_0814DFE0
_0800E5B0: .4byte 0x050002A0
_0800E5B4: .4byte 0x80000040
_0800E5B8:
	ldr r2, _0800E60C @ =gOamObjects+0x1D0
	mov sl, r2
	movs r6, #0
_0800E5BE:
	bl Random
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r4, r6, #5
	adds r5, r5, r4
	movs r0, #0x7f
	ands r5, r0
	mov r0, sl
	strh r5, [r0]
	bl Random
	movs r5, #0x1f
	ands r5, r0
	adds r5, r5, r4
	movs r0, #0xff
	ands r5, r0
	mov r1, sl
	strh r5, [r1, #2]
	bl Random
	movs r1, #3
	ands r1, r0
	adds r5, r1, #5
	lsls r5, r5, #0xc
	ldr r2, _0800E610 @ =0x000004FC
	adds r0, r2, #0
	adds r0, r5, r0
	mov r1, sl
	strh r0, [r1, #4]
	movs r2, #8
	add sl, r2
	adds r6, #1
	cmp r6, #0x1e
	bls _0800E5BE
	movs r0, #0x66
	bl PlaySE
	b _0800E6B0
	.align 2, 0
_0800E60C: .4byte gOamObjects+0x1D0
_0800E610: .4byte 0x000004FC
_0800E614:
	ldr r0, _0800E66C @ =gOamObjects+0x1D0
	mov sl, r0
	ldrb r0, [r7, #0xa]
	adds r1, r0, #1
	strb r1, [r7, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xef
	bhi _0800E69C
	movs r6, #0
	movs r4, #3
_0800E62A:
	mov r1, sl
	ldrh r5, [r1]
	bl Random
	adds r1, r4, #0
	ands r1, r0
	adds r5, r5, r1
	cmp r5, #0xa3
	bls _0800E63E
	movs r5, #0
_0800E63E:
	movs r2, #0xff
	lsls r2, r2, #8
	adds r0, r2, #0
	mov r1, sl
	ldrh r1, [r1]
	ands r0, r1
	adds r0, r0, r5
	mov r2, sl
	strh r0, [r2]
	ldrh r5, [r2, #2]
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0800E670
	bl Random
	adds r1, r4, #0
	ands r1, r0
	adds r5, r5, r1
	b _0800E67A
	.align 2, 0
_0800E66C: .4byte gOamObjects+0x1D0
_0800E670:
	bl Random
	adds r1, r4, #0
	ands r1, r0
	subs r5, r5, r1
_0800E67A:
	movs r0, #0xff
	ands r5, r0
	movs r1, #0xfe
	lsls r1, r1, #8
	adds r0, r1, #0
	mov r2, sl
	ldrh r2, [r2, #2]
	ands r0, r2
	adds r0, r0, r5
	mov r1, sl
	strh r0, [r1, #2]
	movs r2, #8
	add sl, r2
	adds r6, #1
	cmp r6, #0x1e
	bls _0800E62A
	b _0800E6BE
_0800E69C:
	movs r6, #0
	movs r0, #0x80
	lsls r0, r0, #2
_0800E6A2:
	mov r1, sl
	strh r0, [r1]
	movs r2, #8
	add sl, r2
	adds r6, #1
	cmp r6, #0x1e
	bls _0800E6A2
_0800E6B0:
	ldrb r0, [r7, #9]
	adds r0, #1
	strb r0, [r7, #9]
	b _0800E6BE
_0800E6B8:
	ldr r1, _0800E6CC @ =gMain+0x8
	ldr r0, [r7, #0xc]
	str r0, [r1]
_0800E6BE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E6CC: .4byte gMain+0x8

	thumb_func_start UpdateQuestioningMenuSprites
UpdateQuestioningMenuSprites: @ 0x0800E6D0
	push {r4, lr}
	adds r3, r1, #0
	ldr r0, _0800E6E8 @ =gScriptContext
	ldrh r1, [r0, #0x2c]
	adds r4, r0, #0
	cmp r1, #0
	beq _0800E6E2
	cmp r2, #0
	bne _0800E6F0
_0800E6E2:
	ldr r2, _0800E6EC @ =gOamObjects+0x1A8
	b _0800E732
	.align 2, 0
_0800E6E8: .4byte gScriptContext
_0800E6EC: .4byte gOamObjects+0x1A8
_0800E6F0:
	ldrb r0, [r3]
	cmp r0, #1
	bne _0800E712
	ldrb r0, [r3, #2]
	cmp r0, #0xe0
	bls _0800E700
	subs r0, #2
	b _0800E702
_0800E700:
	movs r0, #0xe0
_0800E702:
	strb r0, [r3, #2]
	ldrb r0, [r3, #3]
	cmp r0, #0xe0
	bls _0800E70E
	subs r0, #2
	b _0800E728
_0800E70E:
	movs r0, #0xe0
	b _0800E728
_0800E712:
	cmp r0, #0
	bne _0800E72A
	ldrb r0, [r3, #2]
	cmp r0, #0
	beq _0800E720
	adds r0, #2
	strb r0, [r3, #2]
_0800E720:
	ldrb r0, [r3, #3]
	cmp r0, #0
	beq _0800E72A
	adds r0, #2
_0800E728:
	strb r0, [r3, #3]
_0800E72A:
	ldr r2, _0800E744 @ =gOamObjects+0x1A8
	ldrh r4, [r4, #0x2c]
	cmp r4, #0x7f
	bhi _0800E748
_0800E732:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
	adds r2, #8
	strh r0, [r2]
	adds r2, #8
	strh r0, [r2]
	strh r0, [r2, #8]
	b _0800E790
	.align 2, 0
_0800E744: .4byte gOamObjects+0x1A8
_0800E748:
	movs r0, #0x80
	lsls r0, r0, #7
	adds r1, r0, #0
	ldrb r0, [r3, #2]
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r2, #2]
	movs r0, #0xab
	lsls r0, r0, #7
	strh r0, [r2, #4]
	adds r2, #8
	ldrb r0, [r3, #2]
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0800E798 @ =0x00008020
	strh r0, [r2, #2]
	ldr r0, _0800E79C @ =0x00005588
	strh r0, [r2, #4]
	adds r2, #8
	ldrb r0, [r3, #3]
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0800E7A0 @ =0x000080B0
	strh r0, [r2, #2]
	ldr r0, _0800E7A4 @ =0x00005590
	strh r0, [r2, #4]
	adds r2, #8
	ldrb r3, [r3, #3]
	orrs r1, r3
	strh r1, [r2]
	ldr r0, _0800E7A8 @ =0x000080D0
	strh r0, [r2, #2]
	ldr r0, _0800E7AC @ =0x00005598
	strh r0, [r2, #4]
_0800E790:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E798: .4byte 0x00008020
_0800E79C: .4byte 0x00005588
_0800E7A0: .4byte 0x000080B0
_0800E7A4: .4byte 0x00005590
_0800E7A8: .4byte 0x000080D0
_0800E7AC: .4byte 0x00005598

	thumb_func_start sub_800E7B0
sub_800E7B0: @ 0x0800E7B0
	ldr r1, _0800E7D0 @ =0x040000D4
	ldr r0, _0800E7D4 @ =gUnknown_08145CFC
	str r0, [r1]
	ldr r0, _0800E7D8 @ =0x06012000
	str r0, [r1, #4]
	ldr r0, _0800E7DC @ =0x80000300
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800E7E0 @ =gUnknown_0814E0E0
	str r0, [r1]
	ldr r0, _0800E7E4 @ =0x05000340
	str r0, [r1, #4]
	ldr r0, _0800E7E8 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bx lr
	.align 2, 0
_0800E7D0: .4byte 0x040000D4
_0800E7D4: .4byte gUnknown_08145CFC
_0800E7D8: .4byte 0x06012000
_0800E7DC: .4byte 0x80000300
_0800E7E0: .4byte gUnknown_0814E0E0
_0800E7E4: .4byte 0x05000340
_0800E7E8: .4byte 0x80000010

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
