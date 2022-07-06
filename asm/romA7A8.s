	.include "asm/macros.inc"
	.syntax unified

	thumb_func_start sub_800A7A8
sub_800A7A8: @ 0x0800A7A8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0800A7C0 @ =gIORegisters
	ldrb r0, [r4, #9]
	cmp r0, #1
	beq _0800A81C
	cmp r0, #1
	bgt _0800A7C4
	cmp r0, #0
	beq _0800A7CA
	b _0800A858
	.align 2, 0
_0800A7C0: .4byte gIORegisters
_0800A7C4:
	cmp r0, #2
	beq _0800A84A
	b _0800A858
_0800A7CA:
	movs r0, #0xf0
	lsls r0, r0, #6
	strh r0, [r5]
	ldr r0, _0800A814 @ =0x00003D01
	strh r0, [r5, #2]
	adds r0, #0xff
	strh r0, [r5, #4]
	ldr r0, _0800A818 @ =0x00003FC7
	strh r0, [r5, #6]
	movs r0, #0
	bl sub_8002820
	movs r0, #0
	bl CopyBGDataToVram
	adds r1, r5, #0
	adds r1, #0x4a
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r0, #8
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r0, #0x78
	strb r0, [r4, #0xb]
	b _0800A858
	.align 2, 0
_0800A814: .4byte 0x00003D01
_0800A818: .4byte 0x00003FC7
_0800A81C:
	adds r0, r4, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800A858
	ldrb r0, [r4, #0xb]
	adds r5, r0, #0
	cmp r5, #0
	beq _0800A834
	subs r0, #1
	strb r0, [r4, #0xb]
	b _0800A858
_0800A834:
	movs r0, #2
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	strb r5, [r4, #0x1a]
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	b _0800A858
_0800A84A:
	adds r0, r4, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800A858
	movs r0, #1
	str r0, [r4, #8]
_0800A858:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800A860
sub_800A860: @ 0x0800A860
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, _0800A87C @ =gIORegisters
	mov r8, r0
	ldrb r7, [r6, #9]
	cmp r7, #1
	beq _0800A8A0
	cmp r7, #1
	bgt _0800A880
	cmp r7, #0
	beq _0800A88E
	b _0800AC2E
	.align 2, 0
_0800A87C: .4byte gIORegisters
_0800A880:
	cmp r7, #2
	bne _0800A886
	b _0800A9E0
_0800A886:
	cmp r7, #3
	bne _0800A88C
	b _0800AAEC
_0800A88C:
	b _0800AC2E
_0800A88E:
	bl ResetGameState
	bl sub_800AECC
	ldr r0, _0800A89C @ =0x00000101
	str r0, [r6, #8]
	b _0800AC2E
	.align 2, 0
_0800A89C: .4byte 0x00000101
_0800A8A0:
	ldr r4, _0800A978 @ =0x040000D4
	ldr r0, _0800A97C @ =gUnknown_081370FC
	str r0, [r4]
	ldr r0, _0800A980 @ =0x06003800
	str r0, [r4, #4]
	ldr r0, _0800A984 @ =0x80000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800A988 @ =gUnknown_08130000
	str r0, [r4]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r0, _0800A98C @ =0x80000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800A990 @ =gUnknown_08130200
	ldr r5, _0800A994 @ =gUnknown_0202CFC0
	adds r1, r5, #0
	bl LZ77UnCompWram
	str r5, [r4]
	ldr r0, _0800A998 @ =0x06004000
	str r0, [r4, #4]
	ldr r0, _0800A99C @ =0x80004B00
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800A9A0 @ =gUnknown_0814DF20
	str r0, [r4]
	ldr r0, _0800A9A4 @ =0x05000240
	str r0, [r4, #4]
	ldr r0, _0800A9A8 @ =0x80000060
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800A9AC @ =gUnknown_081458DC
	str r0, [r4]
	ldr r0, _0800A9B0 @ =0x06010400
	str r0, [r4, #4]
	ldr r0, _0800A9B4 @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, _0800A9B8 @ =gOamObjects+0x1A0
	movs r1, #0
	mov ip, r1
	ldr r1, _0800A9BC @ =0x00004070
	strh r1, [r2]
	ldr r4, _0800A9C0 @ =0x00008058
	strh r4, [r2, #2]
	ldr r0, _0800A9C4 @ =0x00002420
	strh r0, [r2, #4]
	adds r2, #8
	strh r1, [r2]
	ldr r3, _0800A9C8 @ =0x00008078
	strh r3, [r2, #2]
	adds r0, #8
	strh r0, [r2, #4]
	adds r2, #8
	movs r5, #0xf0
	adds r0, r5, #0
	ldrb r1, [r6, #0x1b]
	ands r0, r1
	cmp r0, #0
	beq _0800A932
	ldr r0, _0800A9CC @ =0x00004084
	strh r0, [r2]
	strh r4, [r2, #2]
	ldr r1, _0800A9D0 @ =0x00002030
	strh r1, [r2, #4]
	adds r2, #8
	strh r0, [r2]
	strh r3, [r2, #2]
	ldr r0, _0800A9D4 @ =0x00002038
	strh r0, [r2, #4]
_0800A932:
	mov r1, r8
	adds r1, #0x4a
	movs r0, #0xca
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r1, _0800A9D8 @ =gInvestigation
	mov r3, ip
	strb r3, [r1, #0x17]
	movs r0, #2
	strb r0, [r1, #0x16]
	strb r3, [r6, #0x17]
	adds r0, r5, #0
	ldrb r4, [r6, #0x1b]
	ands r0, r4
	cmp r0, #0
	beq _0800A954
	strb r7, [r6, #0x17]
_0800A954:
	movs r5, #0x96
	lsls r5, r5, #2
	adds r2, r6, r5
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	movs r0, #9
	strb r0, [r6, #0x1a]
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	ldr r0, _0800A9DC @ =0x00000201
	str r0, [r6, #8]
	b _0800AC2E
	.align 2, 0
_0800A978: .4byte 0x040000D4
_0800A97C: .4byte gUnknown_081370FC
_0800A980: .4byte 0x06003800
_0800A984: .4byte 0x80000400
_0800A988: .4byte gUnknown_08130000
_0800A98C: .4byte 0x80000100
_0800A990: .4byte gUnknown_08130200
_0800A994: .4byte gUnknown_0202CFC0
_0800A998: .4byte 0x06004000
_0800A99C: .4byte 0x80004B00
_0800A9A0: .4byte gUnknown_0814DF20
_0800A9A4: .4byte 0x05000240
_0800A9A8: .4byte 0x80000060
_0800A9AC: .4byte gUnknown_081458DC
_0800A9B0: .4byte 0x06010400
_0800A9B4: .4byte 0x80000200
_0800A9B8: .4byte gOamObjects+0x1A0
_0800A9BC: .4byte 0x00004070
_0800A9C0: .4byte 0x00008058
_0800A9C4: .4byte 0x00002420
_0800A9C8: .4byte 0x00008078
_0800A9CC: .4byte 0x00004084
_0800A9D0: .4byte 0x00002030
_0800A9D4: .4byte 0x00002038
_0800A9D8: .4byte gInvestigation
_0800A9DC: .4byte 0x00000201
_0800A9E0:
	ldr r0, _0800AA00 @ =gJoypad
	ldrh r2, [r0, #2]
	movs r1, #9
	ands r1, r2
	cmp r1, #0
	beq _0800AA0C
	movs r0, #0x3a
	bl PlaySE
	ldr r0, _0800AA04 @ =gScriptContext
	movs r1, #0
	strh r1, [r0, #0x2a]
	ldr r0, _0800AA08 @ =0x00000301
	str r0, [r6, #8]
	b _0800AA32
	.align 2, 0
_0800AA00: .4byte gJoypad
_0800AA04: .4byte gScriptContext
_0800AA08: .4byte 0x00000301
_0800AA0C:
	movs r0, #0xf0
	ldrb r3, [r6, #0x1b]
	ands r0, r3
	cmp r0, #0
	beq _0800AA32
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	beq _0800AA32
	ldr r0, _0800AA4C @ =gInvestigation
	strb r1, [r0, #0x17]
	strb r7, [r0, #0x16]
	movs r0, #1
	ldrb r4, [r6, #0x17]
	eors r0, r4
	strb r0, [r6, #0x17]
	movs r0, #0x2a
	bl PlaySE
_0800AA32:
	ldr r0, _0800AA4C @ =gInvestigation
	ldrb r2, [r0, #0x16]
	adds r1, r0, #0
	cmp r2, #2
	bne _0800AA50
	ldrb r0, [r1, #0x17]
	adds r0, #1
	strb r0, [r1, #0x17]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _0800AA66
	b _0800AA5E
	.align 2, 0
_0800AA4C: .4byte gInvestigation
_0800AA50:
	ldrb r0, [r1, #0x17]
	adds r0, #1
	strb r0, [r1, #0x17]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _0800AA66
_0800AA5E:
	movs r0, #0
	strb r0, [r1, #0x17]
	adds r0, r2, #1
	strb r0, [r1, #0x16]
_0800AA66:
	adds r3, r1, #0
	ldrb r5, [r3, #0x16]
	cmp r5, #6
	bls _0800AA72
	movs r0, #2
	strb r0, [r3, #0x16]
_0800AA72:
	ldrb r0, [r6, #0x17]
	cmp r0, #0
	bne _0800AAB8
	ldr r2, _0800AAB0 @ =gOamObjects+0x1A0
	ldrb r1, [r3, #0x16]
	lsls r0, r1, #0xc
	movs r4, #0x84
	lsls r4, r4, #3
	adds r1, r4, #0
	adds r0, r0, r1
	strh r0, [r2, #4]
	adds r2, #8
	ldrb r3, [r3, #0x16]
	lsls r0, r3, #0xc
	movs r5, #0x85
	lsls r5, r5, #3
	adds r1, r5, #0
	adds r0, r0, r1
	strh r0, [r2, #4]
	adds r2, #8
	movs r0, #0xf0
	ldrb r6, [r6, #0x1b]
	ands r0, r6
	cmp r0, #0
	bne _0800AAA6
	b _0800AC2E
_0800AAA6:
	ldr r0, _0800AAB4 @ =0x00005030
	strh r0, [r2, #4]
	adds r0, #8
	strh r0, [r2, #0xc]
	b _0800AC2E
	.align 2, 0
_0800AAB0: .4byte gOamObjects+0x1A0
_0800AAB4: .4byte 0x00005030
_0800AAB8:
	ldr r2, _0800AAE4 @ =gOamObjects+0x1A0
	ldr r0, _0800AAE8 @ =0x00005420
	strh r0, [r2, #4]
	adds r2, #8
	adds r0, #8
	strh r0, [r2, #4]
	adds r2, #8
	movs r0, #0xf0
	ldrb r6, [r6, #0x1b]
	ands r0, r6
	cmp r0, #0
	bne _0800AAD2
	b _0800AC2E
_0800AAD2:
	ldrb r3, [r1, #0x16]
	lsls r0, r3, #0xc
	adds r0, #0x30
	strh r0, [r2, #4]
	ldrb r1, [r1, #0x16]
	lsls r0, r1, #0xc
	adds r0, #0x38
	strh r0, [r2, #0xc]
	b _0800AC2E
	.align 2, 0
_0800AAE4: .4byte gOamObjects+0x1A0
_0800AAE8: .4byte 0x00005420
_0800AAEC:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r6, #0x17]
	cmp r0, #0x27
	bls _0800AB08
	cmp r1, #0
	bne _0800AB04
	movs r0, #0xc
	b _0800AB06
_0800AB04:
	movs r0, #0xd
_0800AB06:
	str r0, [r6, #8]
_0800AB08:
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0800ABA8
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _0800AB4C
	ldr r2, _0800AB40 @ =gOamObjects+0x1A0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
	ldr r1, _0800AB44 @ =0x00002020
	strh r1, [r2, #4]
	adds r2, #8
	strh r0, [r2]
	ldr r0, _0800AB48 @ =0x00002028
	strh r0, [r2, #4]
	adds r2, #8
	ldrb r4, [r6, #0xa]
	cmp r4, #8
	bls _0800AB60
	movs r0, #0
	strb r0, [r6, #0xa]
	b _0800AB60
	.align 2, 0
_0800AB40: .4byte gOamObjects+0x1A0
_0800AB44: .4byte 0x00002020
_0800AB48: .4byte 0x00002028
_0800AB4C:
	ldr r2, _0800AB94 @ =gOamObjects+0x1A0
	ldr r0, _0800AB98 @ =0x00004070
	strh r0, [r2]
	ldr r1, _0800AB9C @ =0x00002020
	strh r1, [r2, #4]
	adds r2, #8
	strh r0, [r2]
	ldr r0, _0800ABA0 @ =0x00002028
	strh r0, [r2, #4]
	adds r2, #8
_0800AB60:
	movs r0, #0xf0
	ldrb r6, [r6, #0x1b]
	ands r0, r6
	ldr r4, _0800ABA4 @ =gScriptContext
	cmp r0, #0
	beq _0800AC28
	ldrh r1, [r2]
	movs r3, #0xff
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0xe0
	bhi _0800AB7E
	ldrh r5, [r4, #0x2a]
	adds r0, r5, r1
	strh r0, [r2]
_0800AB7E:
	adds r2, #8
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0xe0
	bhi _0800AC28
	ldrh r3, [r4, #0x2a]
	adds r0, r3, r1
	strh r0, [r2]
	b _0800AC28
	.align 2, 0
_0800AB94: .4byte gOamObjects+0x1A0
_0800AB98: .4byte 0x00004070
_0800AB9C: .4byte 0x00002020
_0800ABA0: .4byte 0x00002028
_0800ABA4: .4byte gScriptContext
_0800ABA8:
	ldr r2, _0800AC08 @ =gOamObjects+0x1A0
	ldrh r1, [r2]
	movs r3, #0xff
	adds r0, r3, #0
	ands r0, r1
	ldr r4, _0800AC0C @ =gScriptContext
	cmp r0, #0xe0
	bhi _0800ABBE
	ldrh r5, [r4, #0x2a]
	adds r0, r5, r1
	strh r0, [r2]
_0800ABBE:
	adds r2, #8
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0xe0
	bhi _0800ABD0
	ldrh r3, [r4, #0x2a]
	adds r0, r3, r1
	strh r0, [r2]
_0800ABD0:
	adds r2, #8
	movs r0, #0xf0
	ldrb r5, [r6, #0x1b]
	ands r0, r5
	cmp r0, #0
	beq _0800AC28
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _0800AC18
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
	ldr r1, _0800AC10 @ =0x00002030
	strh r1, [r2, #4]
	adds r2, #8
	strh r0, [r2]
	ldr r0, _0800AC14 @ =0x00002038
	strh r0, [r2, #4]
	ldrb r0, [r6, #0xa]
	cmp r0, #8
	bls _0800AC28
	movs r0, #0
	strb r0, [r6, #0xa]
	b _0800AC28
	.align 2, 0
_0800AC08: .4byte gOamObjects+0x1A0
_0800AC0C: .4byte gScriptContext
_0800AC10: .4byte 0x00002030
_0800AC14: .4byte 0x00002038
_0800AC18:
	ldr r0, _0800AC38 @ =0x00004084
	strh r0, [r2]
	ldr r1, _0800AC3C @ =0x00002030
	strh r1, [r2, #4]
	adds r2, #8
	strh r0, [r2]
	ldr r0, _0800AC40 @ =0x00002038
	strh r0, [r2, #4]
_0800AC28:
	ldrh r0, [r4, #0x2a]
	adds r0, #1
	strh r0, [r4, #0x2a]
_0800AC2E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AC38: .4byte 0x00004084
_0800AC3C: .4byte 0x00002030
_0800AC40: .4byte 0x00002038

	thumb_func_start sub_800AC44
sub_800AC44: @ 0x0800AC44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r4, _0800AC68 @ =gIORegisters
	ldr r3, _0800AC6C @ =gOamObjects+0x1C8
	ldrb r0, [r6, #9]
	cmp r0, #1
	beq _0800AD4C
	cmp r0, #1
	bgt _0800AC70
	cmp r0, #0
	beq _0800AC7E
	b _0800AE6A
	.align 2, 0
_0800AC68: .4byte gIORegisters
_0800AC6C: .4byte gOamObjects+0x1C8
_0800AC70:
	cmp r0, #2
	bne _0800AC76
	b _0800AE28
_0800AC76:
	cmp r0, #3
	bne _0800AC7C
	b _0800AE48
_0800AC7C:
	b _0800AE6A
_0800AC7E:
	movs r1, #0x30
	strh r1, [r3]
	ldr r0, _0800AD04 @ =0x0000C1A8
	strh r0, [r3, #2]
	ldr r0, _0800AD08 @ =0x000051A0
	strh r0, [r3, #4]
	adds r3, #8
	strh r1, [r3]
	ldr r0, _0800AD0C @ =0x0000C108
	strh r0, [r3, #2]
	ldr r0, _0800AD10 @ =0x000051E0
	strh r0, [r3, #4]
	ldr r0, _0800AD14 @ =0x040000D4
	ldr r1, _0800AD18 @ =gUnknown_08142DFC
	str r1, [r0]
	ldr r1, _0800AD1C @ =0x06001400
	str r1, [r0, #4]
	ldr r1, _0800AD20 @ =0x80000170
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800AD24 @ =gUnknown_0814DEA0
	str r1, [r0]
	ldr r1, _0800AD28 @ =0x05000020
	str r1, [r0, #4]
	ldr r2, _0800AD2C @ =0x80000010
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800AD30 @ =gUnknown_081448DC
	str r1, [r0]
	ldr r1, _0800AD34 @ =0x06013400
	str r1, [r0, #4]
	ldr r1, _0800AD38 @ =0x80000800
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800AD3C @ =gUnknown_0814DF00
	str r1, [r0]
	ldr r1, _0800AD40 @ =0x050002A0
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	movs r5, #0
	ldr r2, _0800AD44 @ =0x000003FF
	adds r3, r4, #0
	adds r3, #0x4a
	movs r1, #0
	ldr r0, _0800AD48 @ =gBG2MapBuffer
_0800ACDA:
	strh r1, [r0]
	adds r0, #2
	adds r5, #1
	cmp r5, r2
	bls _0800ACDA
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #0x12]
	movs r0, #8
	strh r0, [r4, #0x10]
	movs r0, #0xf8
	lsls r0, r0, #6
	strh r0, [r4, #4]
	movs r0, #0xea
	lsls r0, r0, #5
	strh r0, [r3]
	movs r0, #0xd
	strb r0, [r6, #0x1a]
	ldrb r0, [r6, #9]
	adds r0, #1
	b _0800AE16
	.align 2, 0
_0800AD04: .4byte 0x0000C1A8
_0800AD08: .4byte 0x000051A0
_0800AD0C: .4byte 0x0000C108
_0800AD10: .4byte 0x000051E0
_0800AD14: .4byte 0x040000D4
_0800AD18: .4byte gUnknown_08142DFC
_0800AD1C: .4byte 0x06001400
_0800AD20: .4byte 0x80000170
_0800AD24: .4byte gUnknown_0814DEA0
_0800AD28: .4byte 0x05000020
_0800AD2C: .4byte 0x80000010
_0800AD30: .4byte gUnknown_081448DC
_0800AD34: .4byte 0x06013400
_0800AD38: .4byte 0x80000800
_0800AD3C: .4byte gUnknown_0814DF00
_0800AD40: .4byte 0x050002A0
_0800AD44: .4byte 0x000003FF
_0800AD48: .4byte gBG2MapBuffer
_0800AD4C:
	ldrh r1, [r3, #2]
	ldr r0, _0800AE1C @ =0x000001FF
	adds r2, r0, #0
	ands r2, r1
	adds r2, #8
	ands r2, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r1
	adds r0, r0, r2
	strh r0, [r3, #2]
	ldrh r0, [r3, #0xa]
	subs r0, #8
	strh r0, [r3, #0xa]
	movs r5, #0
	ldr r0, _0800AE20 @ =gBG2MapBuffer
	mov sb, r0
	mov r8, r5
	ldr r0, _0800AE24 @ =gUnknown_08022E6C
	adds r0, #0xe
	mov sl, r0
_0800AD76:
	lsls r0, r5, #6
	mov r1, sb
	adds r3, r0, r1
	ldrb r1, [r6, #0xa]
	lsls r0, r1, #1
	adds r3, r3, r0
	movs r4, #0
	cmp r4, r1
	bhs _0800ADAC
	mov r1, r8
	add r1, sl
	movs r2, #0x85
	lsls r2, r2, #5
	mov ip, r2
	movs r7, #0xa0
	lsls r7, r7, #2
_0800AD96:
	ldrb r2, [r1]
	add r2, ip
	strh r2, [r3]
	adds r0, r3, r7
	strh r2, [r0]
	subs r3, #2
	subs r1, #1
	adds r4, #1
	ldrb r0, [r6, #0xa]
	cmp r4, r0
	blo _0800AD96
_0800ADAC:
	movs r1, #0xf
	add r8, r1
	adds r5, #1
	cmp r5, #9
	bls _0800AD76
	movs r5, #0
	ldr r0, _0800AE24 @ =gUnknown_08022E6C
	adds r0, #0xe
	mov r8, r0
_0800ADBE:
	lsls r0, r5, #6
	mov r2, sb
	adds r3, r0, r2
	ldrb r1, [r6, #0xa]
	movs r0, #0x1f
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r4, #0
	adds r7, r5, #1
	cmp r4, r1
	bhs _0800ADFE
	lsls r0, r5, #4
	subs r0, r0, r5
	mov r2, r8
	adds r1, r0, r2
	movs r0, #0xa5
	lsls r0, r0, #5
	mov ip, r0
	movs r5, #0xa0
	lsls r5, r5, #2
_0800ADE8:
	ldrb r2, [r1]
	add r2, ip
	strh r2, [r3]
	adds r0, r3, r5
	strh r2, [r0]
	adds r3, #2
	subs r1, #1
	adds r4, #1
	ldrb r2, [r6, #0xa]
	cmp r4, r2
	blo _0800ADE8
_0800ADFE:
	adds r5, r7, #0
	cmp r5, #9
	bls _0800ADBE
	ldrb r0, [r6, #0xa]
	cmp r0, #0xe
	bls _0800AE42
	movs r0, #0x56
	bl PlaySE
	ldrb r0, [r6, #9]
	adds r0, #1
	movs r1, #0
_0800AE16:
	strb r0, [r6, #9]
	strb r1, [r6, #0xa]
	b _0800AE6A
	.align 2, 0
_0800AE1C: .4byte 0x000001FF
_0800AE20: .4byte gBG2MapBuffer
_0800AE24: .4byte gUnknown_08022E6C
_0800AE28:
	ldrb r0, [r6, #0xa]
	cmp r0, #0x77
	bls _0800AE42
	movs r0, #2
	movs r1, #3
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r6, #9]
	adds r0, #1
	strb r0, [r6, #9]
	b _0800AE6A
_0800AE42:
	adds r0, #1
	strb r0, [r6, #0xa]
	b _0800AE6A
_0800AE48:
	adds r0, r6, #0
	adds r0, #0x7e
	ldrh r1, [r0]
	cmp r1, #0
	bne _0800AE6A
	mov r0, sp
	strh r1, [r0]
	ldr r1, _0800AE7C @ =0x040000D4
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0800AE80 @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	str r0, [r6, #8]
_0800AE6A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AE7C: .4byte 0x040000D4
_0800AE80: .4byte 0x81000200

	thumb_func_start sub_800AE84
sub_800AE84: @ 0x0800AE84
	push {r4, lr}
	ldr r4, _0800AEB8 @ =gSaveDataBuffer
	adds r1, r4, #0
	adds r1, #0x4f
	movs r0, #0x10
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r1, _0800AEBC @ =0x040000D4
	ldr r0, _0800AEC0 @ =gSaveVersion
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _0800AEC4 @ =0x80000019
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_800AF3C
	movs r1, #0xe0
	lsls r1, r1, #0x14
	ldr r2, _0800AEC8 @ =0x00002BBC
	adds r0, r4, #0
	bl WriteSramEx
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800AEB8: .4byte gSaveDataBuffer
_0800AEBC: .4byte 0x040000D4
_0800AEC0: .4byte gSaveVersion
_0800AEC4: .4byte 0x80000019
_0800AEC8: .4byte 0x00002BBC

	thumb_func_start sub_800AECC
sub_800AECC: @ 0x0800AECC
	push {r4, lr}
	movs r0, #0xe0
	lsls r0, r0, #0x14
	ldr r4, _0800AF10 @ =gSaveDataBuffer
	ldr r2, _0800AF14 @ =0x00002BBC
	adds r1, r4, #0
	bl ReadSram
	movs r1, #0
	ldr r2, _0800AF18 @ =gSaveVersion
_0800AEE0:
	adds r0, r1, r2
	ldrb r0, [r0]
	ldrb r3, [r4]
	cmp r0, r3
	bne _0800AF20
	adds r4, #1
	adds r1, #1
	cmp r1, #0x2f
	bls _0800AEE0
	ldr r4, _0800AF1C @ =gMain
	ldr r0, _0800AF10 @ =gSaveDataBuffer
	adds r0, #0xe8
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0xb4
	strb r1, [r0]
	bl sub_800AF78
	cmp r0, #0
	beq _0800AF30
	movs r0, #0x10
	strb r0, [r4, #0x1b]
	movs r0, #0
	b _0800AF34
	.align 2, 0
_0800AF10: .4byte gSaveDataBuffer
_0800AF14: .4byte 0x00002BBC
_0800AF18: .4byte gSaveVersion
_0800AF1C: .4byte gMain
_0800AF20:
	ldr r1, _0800AF2C @ =gMain
	movs r0, #0
	strb r0, [r1, #0x1b]
	movs r0, #2
	b _0800AF34
	.align 2, 0
_0800AF2C: .4byte gMain
_0800AF30:
	strb r0, [r4, #0x1b]
	movs r0, #1
_0800AF34:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800AF3C
sub_800AF3C: @ 0x0800AF3C
	push {r4, lr}
	ldr r1, _0800AF6C @ =gSaveDataBuffer
	movs r0, #0
	str r0, [r1, #0x30]
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0x34
	ldr r4, _0800AF70 @ =0x00002BBC
	adds r3, r1, r4
	adds r4, r1, #0
	cmp r0, r3
	bhs _0800AF60
	adds r1, r3, #0
_0800AF56:
	ldrb r3, [r0]
	adds r2, r3, r2
	adds r0, #4
	cmp r0, r1
	blo _0800AF56
_0800AF60:
	ldr r0, _0800AF74 @ =0x00000927
	adds r2, r2, r0
	str r2, [r4, #0x30]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800AF6C: .4byte gSaveDataBuffer
_0800AF70: .4byte 0x00002BBC
_0800AF74: .4byte 0x00000927

	thumb_func_start sub_800AF78
sub_800AF78: @ 0x0800AF78
	push {r4, lr}
	movs r1, #0
	ldr r0, _0800AFA4 @ =gUnknown_02000034
	ldr r3, _0800AFA8 @ =0x00002B88
	adds r2, r0, r3
	adds r3, r0, #0
	subs r3, #0x34
	cmp r0, r2
	bhs _0800AF94
_0800AF8A:
	ldrb r4, [r0]
	adds r1, r4, r1
	adds r0, #4
	cmp r0, r2
	blo _0800AF8A
_0800AF94:
	ldr r0, _0800AFAC @ =0x00000927
	adds r1, r1, r0
	ldr r0, [r3, #0x30]
	cmp r1, r0
	beq _0800AFB0
	movs r0, #0
	b _0800AFB2
	.align 2, 0
_0800AFA4: .4byte gUnknown_02000034
_0800AFA8: .4byte 0x00002B88
_0800AFAC: .4byte 0x00000927
_0800AFB0:
	movs r0, #1
_0800AFB2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_800AFB8
sub_800AFB8: @ 0x0800AFB8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	ldrb r5, [r6, #9]
	cmp r5, #1
	bne _0800AFC6
	b _0800B100
_0800AFC6:
	cmp r5, #1
	bgt _0800AFD0
	cmp r5, #0
	beq _0800AFDE
	b _0800B292
_0800AFD0:
	cmp r5, #2
	bne _0800AFD6
	b _0800B1A0
_0800AFD6:
	cmp r5, #3
	bne _0800AFDC
	b _0800B264
_0800AFDC:
	b _0800B292
_0800AFDE:
	ldr r4, _0800B0A8 @ =0x040000D4
	ldr r0, _0800B0AC @ =gUnknown_081370FC
	str r0, [r4]
	ldr r0, _0800B0B0 @ =0x06003800
	str r0, [r4, #4]
	ldr r5, _0800B0B4 @ =0x80000400
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #0
	bl sub_80035B0
	str r0, [r4]
	movs r2, #0xa0
	lsls r2, r2, #0x13
	str r2, [r4, #4]
	ldr r0, _0800B0B8 @ =0x80000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800B0BC @ =gUnknown_0813791C
	str r0, [r4]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r0, _0800B0C0 @ =0x80000800
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800B0C4 @ =gUnknown_081500C4
	str r0, [r4]
	ldr r0, _0800B0C8 @ =0x06013C00
	str r0, [r4, #4]
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800B0CC @ =gUnknown_081DE3A8
	str r0, [r4]
	ldr r0, _0800B0D0 @ =0x05000320
	str r0, [r4, #4]
	ldr r0, _0800B0D4 @ =0x80000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800B0D8 @ =gTextPal
	str r0, [r4]
	ldr r0, _0800B0DC @ =0x05000200
	str r0, [r4, #4]
	ldr r1, _0800B0E0 @ =0x80000010
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800B0E4 @ =gUnknown_081378FC
	str r0, [r4]
	str r2, [r4, #4]
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _0800B0E8 @ =gIORegisters
	movs r0, #0xf0
	lsls r0, r0, #6
	strh r0, [r1]
	ldr r0, _0800B0EC @ =0x00003D01
	strh r0, [r1, #2]
	adds r0, #0xff
	strh r0, [r1, #4]
	ldr r0, _0800B0F0 @ =0x00003FC7
	strh r0, [r1, #6]
	movs r0, #0xa
	bl sub_8002820
	movs r0, #0xa
	bl CopyBGDataToVram
	movs r0, #0
	ldr r3, _0800B0F4 @ =0x000003FF
	movs r2, #0
	ldr r1, _0800B0F8 @ =gBG2MapBuffer
_0800B06C:
	strh r2, [r1]
	adds r1, #2
	adds r0, #1
	cmp r0, r3
	bls _0800B06C
	movs r0, #6
	movs r1, #8
	bl sub_8003C14
	ldr r1, _0800B0E8 @ =gIORegisters
	adds r2, r1, #0
	adds r2, #0x4a
	movs r0, #0xe2
	lsls r0, r0, #5
	strh r0, [r2]
	movs r0, #0xc
	strb r0, [r6, #0x1a]
	ldr r0, _0800B0FC @ =0x00003E01
	strh r0, [r1, #4]
	adds r1, #0x4e
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #1
	strb r0, [r6, #0x17]
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	b _0800B174
	.align 2, 0
_0800B0A8: .4byte 0x040000D4
_0800B0AC: .4byte gUnknown_081370FC
_0800B0B0: .4byte 0x06003800
_0800B0B4: .4byte 0x80000400
_0800B0B8: .4byte 0x80000100
_0800B0BC: .4byte gUnknown_0813791C
_0800B0C0: .4byte 0x80000800
_0800B0C4: .4byte gUnknown_081500C4
_0800B0C8: .4byte 0x06013C00
_0800B0CC: .4byte gUnknown_081DE3A8
_0800B0D0: .4byte 0x05000320
_0800B0D4: .4byte 0x80000020
_0800B0D8: .4byte gTextPal
_0800B0DC: .4byte 0x05000200
_0800B0E0: .4byte 0x80000010
_0800B0E4: .4byte gUnknown_081378FC
_0800B0E8: .4byte gIORegisters
_0800B0EC: .4byte 0x00003D01
_0800B0F0: .4byte 0x00003FC7
_0800B0F4: .4byte 0x000003FF
_0800B0F8: .4byte gBG2MapBuffer
_0800B0FC: .4byte 0x00003E01
_0800B100:
	adds r0, r6, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800B10C
	b _0800B292
_0800B10C:
	ldr r4, _0800B17C @ =gCourtRecord
	adds r0, r4, #0
	bl sub_8003FC4
	movs r7, #1
	ldrsb r7, [r4, r7]
	cmp r7, #0
	beq _0800B11E
	b _0800B292
_0800B11E:
	strb r5, [r6, #0x18]
	strb r5, [r6, #0x19]
	ldr r4, _0800B180 @ =gScriptContext
	ldr r0, _0800B184 @ =0x0000FFFF
	strh r0, [r4, #0x1e]
	movs r0, #4
	bl ChangeScriptSection
	movs r0, #9
	strh r0, [r4, #0x18]
	movs r0, #0x34
	strh r0, [r4, #0x1a]
	ldr r2, _0800B188 @ =gOamObjects+0x140
	ldr r1, _0800B18C @ =0x00004460
	strh r1, [r2]
	ldr r0, _0800B190 @ =0x0000C030
	strh r0, [r2, #2]
	ldr r0, _0800B194 @ =0x0000A1E0
	strh r0, [r2, #4]
	adds r2, #8
	strh r1, [r2]
	ldr r0, _0800B198 @ =0x0000C080
	strh r0, [r2, #2]
	movs r0, #0xa2
	lsls r0, r0, #8
	strh r0, [r2, #4]
	adds r0, r6, #0
	adds r0, #0x80
	strh r7, [r0]
	adds r0, #2
	strb r5, [r0]
	adds r0, #1
	movs r2, #0x10
	strb r2, [r0]
	ldr r1, _0800B19C @ =gIORegisters
	adds r3, r1, #0
	adds r3, #0x48
	movs r0, #0x84
	lsls r0, r0, #4
	strh r0, [r3]
	lsls r2, r2, #8
	adds r1, #0x4c
	strh r2, [r1]
_0800B174:
	ldrb r0, [r6, #9]
	adds r0, #1
	strb r0, [r6, #9]
	b _0800B292
	.align 2, 0
_0800B17C: .4byte gCourtRecord
_0800B180: .4byte gScriptContext
_0800B184: .4byte 0x0000FFFF
_0800B188: .4byte gOamObjects+0x140
_0800B18C: .4byte 0x00004460
_0800B190: .4byte 0x0000C030
_0800B194: .4byte 0x0000A1E0
_0800B198: .4byte 0x0000C080
_0800B19C: .4byte gIORegisters
_0800B1A0:
	ldr r1, _0800B1C8 @ =gScriptContext
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800B1F2
	ldr r0, _0800B1CC @ =gJoypad
	ldrh r1, [r0, #2]
	movs r4, #0x30
	ands r4, r1
	cmp r4, #0
	beq _0800B1D0
	movs r0, #0x2a
	bl PlaySE
	movs r0, #1
	ldrb r1, [r6, #0x17]
	eors r0, r1
	strb r0, [r6, #0x17]
	b _0800B1F2
	.align 2, 0
_0800B1C8: .4byte gScriptContext
_0800B1CC: .4byte gJoypad
_0800B1D0:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800B1F2
	movs r0, #0x2b
	bl PlaySE
	movs r0, #2
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	strb r4, [r6, #0x1a]
	ldrb r0, [r6, #9]
	adds r0, #1
	strb r0, [r6, #9]
_0800B1F2:
	ldr r2, _0800B204 @ =gOamObjects+0x140
	ldrb r0, [r6, #0x17]
	cmp r0, #0
	bne _0800B20C
	ldr r0, _0800B208 @ =0x000091E0
	strh r0, [r2, #4]
	movs r0, #0xa2
	lsls r0, r0, #8
	b _0800B214
	.align 2, 0
_0800B204: .4byte gOamObjects+0x140
_0800B208: .4byte 0x000091E0
_0800B20C:
	ldr r0, _0800B25C @ =0x0000A1E0
	strh r0, [r2, #4]
	movs r0, #0x92
	lsls r0, r0, #8
_0800B214:
	strh r0, [r2, #0xc]
	ldrb r0, [r6, #9]
	cmp r0, #2
	bne _0800B292
	adds r3, r6, #0
	adds r3, #0x83
	ldrb r0, [r3]
	cmp r0, #0
	beq _0800B292
	adds r2, r6, #0
	adds r2, #0x80
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	adds r1, r6, #0
	adds r1, #0x82
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	blo _0800B248
	movs r0, #0
	strh r0, [r2]
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
_0800B248:
	ldr r2, _0800B260 @ =gIORegisters
	ldrb r3, [r3]
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	adds r2, #0x4c
	strh r1, [r2]
	b _0800B292
	.align 2, 0
_0800B25C: .4byte 0x0000A1E0
_0800B260: .4byte gIORegisters
_0800B264:
	adds r0, r6, #0
	adds r0, #0x7e
	ldrh r4, [r0]
	cmp r4, #0
	bne _0800B292
	ldrb r0, [r6, #0x17]
	cmp r0, #0
	bne _0800B290
	str r4, [sp]
	ldr r2, _0800B29C @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	ldr r0, _0800B2A0 @ =gSaveDataBuffer
	str r0, [r2, #4]
	ldr r1, _0800B2A4 @ =0x85000AEF
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	movs r1, #0xe0
	lsls r1, r1, #0x14
	ldr r2, _0800B2A8 @ =0x00002BBC
	bl WriteSramEx
_0800B290:
	str r4, [r6, #8]
_0800B292:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B29C: .4byte 0x040000D4
_0800B2A0: .4byte gSaveDataBuffer
_0800B2A4: .4byte 0x85000AEF
_0800B2A8: .4byte 0x00002BBC

	thumb_func_start sub_800B2AC
sub_800B2AC: @ 0x0800B2AC
	push {lr}
	ldr r2, _0800B2C4 @ =gUnknown_081122F8
	ldr r0, _0800B2C8 @ =gMain
	ldrb r3, [r0, #9]
	lsls r1, r3, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0800B2C4: .4byte gUnknown_081122F8
_0800B2C8: .4byte gMain

	thumb_func_start sub_800B2CC
sub_800B2CC: @ 0x0800B2CC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0800B37C @ =0x040000D4
	ldr r1, _0800B380 @ =gBG1MapBuffer
	str r1, [r0]
	ldr r2, _0800B384 @ =gUnknown_0200183C
	str r2, [r0, #4]
	ldr r3, _0800B388 @ =0x80000400
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B38C @ =gBG2MapBuffer
	str r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #4
	adds r1, r2, r4
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B390 @ =gTextBoxCharacters
	str r1, [r0]
	ldr r3, _0800B394 @ =0xFFFFF500
	adds r1, r2, r3
	str r1, [r0, #4]
	ldr r1, _0800B398 @ =0x8000017A
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B39C @ =gScriptContext
	str r1, [r0]
	ldr r4, _0800B3A0 @ =0xFFFFEB0C
	adds r1, r2, r4
	str r1, [r0, #4]
	ldr r1, _0800B3A4 @ =0x80000020
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B3A8 @ =gIORegisters
	str r1, [r0]
	ldr r3, _0800B3AC @ =0xFFFFEAB8
	adds r1, r2, r3
	str r1, [r0, #4]
	ldr r1, _0800B3B0 @ =0x8000002A
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r3, _0800B3B4 @ =gMapMarker
	str r3, [r0]
	ldr r4, _0800B3B8 @ =0xFFFFF060
	adds r1, r2, r4
	str r1, [r0, #4]
	ldr r1, _0800B3BC @ =0x80000050
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #5
	adds r2, r2, r0
	movs r4, #0xff
_0800B33A:
	ldrb r0, [r3]
	orrs r0, r4
	strb r0, [r3]
	adds r3, #0x14
	adds r1, #1
	cmp r1, #7
	bls _0800B33A
	movs r4, #0
	adds r0, r2, #0
	bl sub_8014A78
	strb r4, [r6, #0x18]
	ldr r4, _0800B3C0 @ =gMain
	ldr r3, _0800B3C4 @ =0x000002BA
	adds r4, r4, r3
	ldrh r5, [r4]
	adds r0, r5, #0
	bl sub_8013878
	strh r5, [r4]
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r6, #9]
	adds r0, #1
	strb r0, [r6, #9]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B37C: .4byte 0x040000D4
_0800B380: .4byte gBG1MapBuffer
_0800B384: .4byte gUnknown_0200183C
_0800B388: .4byte 0x80000400
_0800B38C: .4byte gBG2MapBuffer
_0800B390: .4byte gTextBoxCharacters
_0800B394: .4byte 0xFFFFF500
_0800B398: .4byte 0x8000017A
_0800B39C: .4byte gScriptContext
_0800B3A0: .4byte 0xFFFFEB0C
_0800B3A4: .4byte 0x80000020
_0800B3A8: .4byte gIORegisters
_0800B3AC: .4byte 0xFFFFEAB8
_0800B3B0: .4byte 0x8000002A
_0800B3B4: .4byte gMapMarker
_0800B3B8: .4byte 0xFFFFF060
_0800B3BC: .4byte 0x80000050
_0800B3C0: .4byte gMain
_0800B3C4: .4byte 0x000002BA

	thumb_func_start sub_800B3C8
sub_800B3C8: @ 0x0800B3C8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800B3D6
	b _0800B504
_0800B3D6:
	ldr r0, _0800B50C @ =0x040000D4
	ldr r1, _0800B510 @ =gBG0MapBuffer
	str r1, [r0]
	ldr r2, _0800B514 @ =gUnknown_0200103C
	str r2, [r0, #4]
	ldr r3, _0800B518 @ =0x80000400
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B51C @ =gCourtRecord
	str r1, [r0]
	ldr r5, _0800B520 @ =0xFFFFF34C
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _0800B524 @ =0x8000002C
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B528 @ =gInvestigation
	str r1, [r0]
	adds r5, #0x70
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _0800B52C @ =0x8000000E
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B530 @ =gTestimony
	str r1, [r0]
	subs r5, #8
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _0800B534 @ =0x80000004
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B538 @ =gCourtScroll
	str r1, [r0]
	subs r5, #0x10
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _0800B53C @ =0x80000008
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B540 @ =gExaminationData
	str r1, [r0]
	adds r5, #0x34
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _0800B544 @ =0x800000F0
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B548 @ =gTalkData
	str r1, [r0]
	ldr r5, _0800B54C @ =0xFFFFF5B8
	adds r1, r2, r5
	str r1, [r0, #4]
	ldr r1, _0800B550 @ =0x80000140
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B554 @ =gUnknown_03003B70
	str r1, [r0]
	ldr r1, _0800B558 @ =0xFFFFF838
	adds r2, r2, r1
	str r2, [r0, #4]
	ldr r1, _0800B55C @ =0x80000014
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B560 @ =gUnknown_081458DC
	str r1, [r0]
	ldr r1, _0800B564 @ =0x06013800
	str r1, [r0, #4]
	ldr r1, _0800B568 @ =0x80000200
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B56C @ =gUnknown_0814DF20
	str r1, [r0]
	ldr r1, _0800B570 @ =0x05000300
	str r1, [r0, #4]
	ldr r1, _0800B574 @ =0x80000060
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B578 @ =gUnknown_081500C4
	str r1, [r0]
	ldr r1, _0800B57C @ =0x06013C00
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B580 @ =gUnknown_081DE3A8
	str r1, [r0]
	ldr r1, _0800B584 @ =0x05000320
	str r1, [r0, #4]
	ldr r1, _0800B588 @ =0x80000020
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #0xa
	bl sub_8002820
	movs r0, #0xa
	bl CopyBGDataToVram
	adds r1, r4, #0
	adds r1, #0x25
	movs r0, #0xfc
	ldrb r2, [r1]
	ands r0, r2
	strb r0, [r1]
	ldr r1, _0800B58C @ =gOamObjects
	movs r0, #0
	movs r2, #0x80
	lsls r2, r2, #2
_0800B4AC:
	strh r2, [r1]
	adds r1, #8
	adds r0, #1
	cmp r0, #0x7f
	bls _0800B4AC
	movs r0, #0
	ldr r3, _0800B590 @ =0x000003FF
	movs r2, #0
	ldr r1, _0800B594 @ =gBG2MapBuffer
_0800B4BE:
	strh r2, [r1]
	adds r1, #2
	adds r0, #1
	cmp r0, r3
	bls _0800B4BE
	movs r0, #6
	movs r1, #8
	bl sub_8003C14
	ldr r1, _0800B598 @ =gIORegisters
	movs r5, #0x4a
	movs r3, #0
	movs r2, #0
	movs r0, #0xe2
	lsls r0, r0, #5
	strh r0, [r5, r1]
	movs r0, #0xc
	strb r0, [r4, #0x1a]
	ldr r0, _0800B59C @ =0x00003E01
	strh r0, [r1, #4]
	movs r0, #8
	strh r0, [r1, #0x16]
	strh r0, [r1, #0x14]
	strh r2, [r1, #0xe]
	strh r2, [r1, #0xc]
	strb r3, [r4, #0x19]
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
_0800B504:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800B50C: .4byte 0x040000D4
_0800B510: .4byte gBG0MapBuffer
_0800B514: .4byte gUnknown_0200103C
_0800B518: .4byte 0x80000400
_0800B51C: .4byte gCourtRecord
_0800B520: .4byte 0xFFFFF34C
_0800B524: .4byte 0x8000002C
_0800B528: .4byte gInvestigation
_0800B52C: .4byte 0x8000000E
_0800B530: .4byte gTestimony
_0800B534: .4byte 0x80000004
_0800B538: .4byte gCourtScroll
_0800B53C: .4byte 0x80000008
_0800B540: .4byte gExaminationData
_0800B544: .4byte 0x800000F0
_0800B548: .4byte gTalkData
_0800B54C: .4byte 0xFFFFF5B8
_0800B550: .4byte 0x80000140
_0800B554: .4byte gUnknown_03003B70
_0800B558: .4byte 0xFFFFF838
_0800B55C: .4byte 0x80000014
_0800B560: .4byte gUnknown_081458DC
_0800B564: .4byte 0x06013800
_0800B568: .4byte 0x80000200
_0800B56C: .4byte gUnknown_0814DF20
_0800B570: .4byte 0x05000300
_0800B574: .4byte 0x80000060
_0800B578: .4byte gUnknown_081500C4
_0800B57C: .4byte 0x06013C00
_0800B580: .4byte gUnknown_081DE3A8
_0800B584: .4byte 0x05000320
_0800B588: .4byte 0x80000020
_0800B58C: .4byte gOamObjects
_0800B590: .4byte 0x000003FF
_0800B594: .4byte gBG2MapBuffer
_0800B598: .4byte gIORegisters
_0800B59C: .4byte 0x00003E01

	thumb_func_start sub_800B5A0
sub_800B5A0: @ 0x0800B5A0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0800B5D0 @ =gCourtRecord
	adds r0, r4, #0
	bl sub_8003FC4
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0800B660
	movs r0, #1
	strb r0, [r5, #0x18]
	strb r0, [r5, #0x19]
	ldr r1, _0800B5D4 @ =gScriptContext
	ldr r0, _0800B5D8 @ =0x0000FFFF
	strh r0, [r1, #0x1e]
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0800B5DC
	movs r0, #0
	bl ChangeScriptSection
	b _0800B5E2
	.align 2, 0
_0800B5D0: .4byte gCourtRecord
_0800B5D4: .4byte gScriptContext
_0800B5D8: .4byte 0x0000FFFF
_0800B5DC:
	movs r0, #1
	bl ChangeScriptSection
_0800B5E2:
	ldr r1, _0800B63C @ =gScriptContext
	movs r3, #0
	movs r0, #9
	strh r0, [r1, #0x18]
	movs r0, #0x34
	strh r0, [r1, #0x1a]
	ldr r0, _0800B640 @ =gOamObjects+0x140
	ldr r2, _0800B644 @ =0x00004460
	strh r2, [r0]
	ldr r1, _0800B648 @ =0x0000C030
	strh r1, [r0, #2]
	ldr r1, _0800B64C @ =0x0000A1E0
	strh r1, [r0, #4]
	adds r0, #8
	strh r2, [r0]
	ldr r1, _0800B650 @ =0x0000C080
	strh r1, [r0, #2]
	movs r1, #0xa2
	lsls r1, r1, #8
	strh r1, [r0, #4]
	adds r0, r5, #0
	adds r0, #0x80
	strh r3, [r0]
	adds r0, #2
	movs r4, #1
	strb r4, [r0]
	adds r0, #1
	movs r2, #0x10
	strb r2, [r0]
	ldr r1, _0800B654 @ =gIORegisters
	adds r3, r1, #0
	adds r3, #0x48
	movs r0, #0x84
	lsls r0, r0, #4
	strh r0, [r3]
	lsls r2, r2, #8
	adds r1, #0x4c
	strh r2, [r1]
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0800B658
	movs r0, #0
	strb r0, [r5, #0x17]
	b _0800B65A
	.align 2, 0
_0800B63C: .4byte gScriptContext
_0800B640: .4byte gOamObjects+0x140
_0800B644: .4byte 0x00004460
_0800B648: .4byte 0x0000C030
_0800B64C: .4byte 0x0000A1E0
_0800B650: .4byte 0x0000C080
_0800B654: .4byte gIORegisters
_0800B658:
	strb r4, [r5, #0x17]
_0800B65A:
	ldrb r0, [r5, #9]
	adds r0, #1
	strb r0, [r5, #9]
_0800B660:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800B668
sub_800B668: @ 0x0800B668
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, _0800B698 @ =gScriptContext
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800B67A
	b _0800B776
_0800B67A:
	ldr r0, _0800B69C @ =gJoypad
	ldrh r1, [r0, #2]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0800B6A0
	movs r0, #1
	ldrb r1, [r5, #0x17]
	eors r0, r1
	strb r0, [r5, #0x17]
	movs r0, #0x2a
	bl PlaySE
	b _0800B776
	.align 2, 0
_0800B698: .4byte gScriptContext
_0800B69C: .4byte gJoypad
_0800B6A0:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800B74C
	movs r0, #0x40
	bl PlaySE
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	bne _0800B738
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0800B6CC
	ldr r1, _0800B6C8 @ =gSaveDataBuffer
	adds r1, #0x4f
	movs r0, #0xf0
	ldrb r2, [r1]
	ands r0, r2
	strb r0, [r1]
	b _0800B6D8
	.align 2, 0
_0800B6C8: .4byte gSaveDataBuffer
_0800B6CC:
	ldr r0, _0800B6FC @ =gSaveDataBuffer
	adds r0, #0x4f
	movs r1, #1
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
_0800B6D8:
	bl sub_800AE84
	cmp r0, #0
	beq _0800B708
	ldr r4, _0800B700 @ =gScriptContext
	ldr r0, _0800B704 @ =0x0000FFFF
	strh r0, [r4, #0x1e]
	movs r0, #3
	bl ChangeScriptSection
	movs r0, #9
	strh r0, [r4, #0x18]
	movs r0, #0x34
	strh r0, [r4, #0x1a]
	movs r0, #6
	strb r0, [r5, #9]
	b _0800B808
	.align 2, 0
_0800B6FC: .4byte gSaveDataBuffer
_0800B700: .4byte gScriptContext
_0800B704: .4byte 0x0000FFFF
_0800B708:
	ldrb r6, [r5, #0xb]
	cmp r6, #0
	bne _0800B738
	ldr r4, _0800B744 @ =gScriptContext
	ldr r0, _0800B748 @ =0x0000FFFF
	strh r0, [r4, #0x1e]
	movs r0, #6
	bl ChangeScriptSection
	movs r1, #0
	movs r0, #9
	strh r0, [r4, #0x18]
	movs r0, #0x34
	strh r0, [r4, #0x1a]
	adds r0, r5, #0
	adds r0, #0x80
	strh r6, [r0]
	adds r2, r5, #0
	adds r2, #0x82
	movs r0, #1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x83
	strb r1, [r0]
_0800B738:
	movs r1, #0
	movs r0, #7
	strb r0, [r5, #9]
	strb r1, [r5, #0xa]
	b _0800B776
	.align 2, 0
_0800B744: .4byte gScriptContext
_0800B748: .4byte 0x0000FFFF
_0800B74C:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _0800B776
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800B776
	movs r0, #0x2c
	bl PlaySE
	movs r0, #1
	strb r0, [r5, #0x17]
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r0, #4
	strb r0, [r5, #9]
	b _0800B808
_0800B776:
	ldr r2, _0800B798 @ =gOamObjects+0x140
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	bne _0800B7AC
	ldr r1, _0800B79C @ =0x00004460
	strh r1, [r2]
	ldr r0, _0800B7A0 @ =0x0000C030
	strh r0, [r2, #2]
	ldr r0, _0800B7A4 @ =0x000091E0
	strh r0, [r2, #4]
	adds r2, #8
	strh r1, [r2]
	ldr r0, _0800B7A8 @ =0x0000C080
	strh r0, [r2, #2]
	movs r0, #0xa2
	lsls r0, r0, #8
	b _0800B7C4
	.align 2, 0
_0800B798: .4byte gOamObjects+0x140
_0800B79C: .4byte 0x00004460
_0800B7A0: .4byte 0x0000C030
_0800B7A4: .4byte 0x000091E0
_0800B7A8: .4byte 0x0000C080
_0800B7AC:
	ldr r1, _0800B810 @ =0x00004460
	strh r1, [r2]
	ldr r0, _0800B814 @ =0x0000C030
	strh r0, [r2, #2]
	ldr r0, _0800B818 @ =0x0000A1E0
	strh r0, [r2, #4]
	adds r2, #8
	strh r1, [r2]
	ldr r0, _0800B81C @ =0x0000C080
	strh r0, [r2, #2]
	movs r0, #0x92
	lsls r0, r0, #8
_0800B7C4:
	strh r0, [r2, #4]
	ldrb r0, [r5, #9]
	cmp r0, #3
	bne _0800B808
	adds r3, r5, #0
	adds r3, #0x83
	ldrb r0, [r3]
	cmp r0, #0
	beq _0800B808
	adds r2, r5, #0
	adds r2, #0x80
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	adds r1, r5, #0
	adds r1, #0x82
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	blo _0800B7F8
	movs r0, #0
	strh r0, [r2]
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
_0800B7F8:
	ldr r2, _0800B820 @ =gIORegisters
	ldrb r3, [r3]
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	adds r2, #0x4c
	strh r1, [r2]
_0800B808:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B810: .4byte 0x00004460
_0800B814: .4byte 0x0000C030
_0800B818: .4byte 0x0000A1E0
_0800B81C: .4byte 0x0000C080
_0800B820: .4byte gIORegisters

	thumb_func_start sub_800B824
sub_800B824: @ 0x0800B824
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800B832
	b _0800BB40
_0800B832:
	ldrb r0, [r6, #0x17]
	cmp r0, #0
	bne _0800B83E
	movs r0, #1
	str r0, [r6, #8]
	b _0800BB40
_0800B83E:
	ldr r2, _0800BA0C @ =gSaveDataBuffer
	adds r0, r2, #0
	adds r0, #0x62
	ldrh r0, [r0]
	strh r0, [r6, #0x2e]
	adds r0, r2, #0
	adds r0, #0x66
	ldrh r0, [r0]
	strh r0, [r6, #0x32]
	adds r0, r2, #0
	adds r0, #0x68
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x34
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x69
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x35
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x6b
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r6, #0x38]
	adds r0, r2, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	strh r0, [r6, #0x3a]
	adds r0, r2, #0
	adds r0, #0x70
	ldrh r0, [r0]
	strh r0, [r6, #0x3c]
	adds r0, r2, #0
	adds r0, #0x72
	ldrh r0, [r0]
	strh r0, [r6, #0x3e]
	adds r0, r2, #0
	adds r0, #0x74
	ldrh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x40
	strh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x76
	ldrh r0, [r0]
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x78
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x44
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x79
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x45
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x7a
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	ldr r0, [r2, #0x7c]
	str r0, [r6, #0x48]
	movs r1, #0
	adds r7, r6, #0
	adds r7, #0xdc
	adds r3, r2, #0
	adds r3, #0x80
	adds r2, r6, #0
	adds r2, #0x4c
_0800B8F2:
	ldm r3!, {r0}
	stm r2!, {r0}
	adds r1, #1
	cmp r1, #0xb
	bls _0800B8F2
	ldrh r0, [r6, #0x2e]
	bl sub_8002820
	ldrh r0, [r6, #0x2e]
	bl sub_800342C
	ldr r4, _0800BA10 @ =0x040000D4
	ldr r5, _0800BA14 @ =gUnknown_0200203C
	str r5, [r4]
	ldr r0, _0800BA18 @ =gBG2MapBuffer
	str r0, [r4, #4]
	ldr r0, _0800BA1C @ =0x80000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _0800BA20 @ =0xFFFFED00
	adds r0, r5, r1
	str r0, [r4]
	ldr r0, _0800BA24 @ =gTextBoxCharacters
	str r0, [r4, #4]
	ldr r0, _0800BA28 @ =0x8000017A
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	bl RedrawTextboxCharacters
	ldr r2, _0800BA2C @ =0xFFFFE30C
	adds r0, r5, r2
	str r0, [r4]
	ldr r0, _0800BA30 @ =gScriptContext
	str r0, [r4, #4]
	ldr r0, _0800BA34 @ =0x80000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r3, _0800BA38 @ =0xFFFFE2B8
	adds r0, r5, r3
	str r0, [r4]
	ldr r0, _0800BA3C @ =gIORegisters
	str r0, [r4, #4]
	ldr r0, _0800BA40 @ =0x8000002A
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _0800BA44 @ =0xFFFFE860
	adds r0, r5, r1
	str r0, [r4]
	ldr r0, _0800BA48 @ =gMapMarker
	str r0, [r4, #4]
	ldr r0, _0800BA4C @ =0x80000050
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, _0800BA50 @ =0xFFFFE5B8
	adds r0, r5, r2
	str r0, [r4]
	ldr r0, _0800BA54 @ =gTalkData
	str r0, [r4, #4]
	ldr r0, _0800BA58 @ =0x80000140
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r3, _0800BA5C @ =0xFFFFE838
	adds r0, r5, r3
	str r0, [r4]
	ldr r0, _0800BA60 @ =gUnknown_03003B70
	str r0, [r4, #4]
	ldr r0, _0800BA64 @ =0x80000014
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _0800BA68 @ =0xFFFFE010
	adds r0, r5, r1
	ldrb r0, [r0]
	strb r0, [r6, #0x18]
	ldr r2, _0800BA6C @ =0xFFFFE011
	adds r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r6, #0x19]
	ldr r3, _0800BA70 @ =0xFFFFE0D4
	adds r0, r5, r3
	ldr r0, [r0]
	str r0, [r7]
	subs r1, #4
	adds r0, r5, r1
	ldrh r0, [r0]
	strh r0, [r6, #0x14]
	adds r2, #1
	adds r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_8007D5C
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r5, r3
	bl sub_801492C
	ldr r2, _0800BA74 @ =gMain
	adds r1, r2, #0
	adds r1, #0x25
	movs r0, #3
	ldrb r3, [r1]
	orrs r0, r3
	strb r0, [r1]
	ldr r1, _0800BA78 @ =0xFFFFE900
	adds r0, r5, r1
	str r0, [r4]
	ldr r0, _0800BA7C @ =gOamObjects
	str r0, [r4, #4]
	ldr r0, _0800BA80 @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800BA84 @ =gUnknown_0814DC60
	str r0, [r4]
	ldr r0, _0800BA88 @ =0x05000300
	str r0, [r4, #4]
	ldr r0, _0800BA8C @ =0x80000010
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r3, #0x95
	lsls r3, r3, #2
	adds r1, r6, r3
	ldr r0, _0800BA90 @ =0xFFFFE24C
	adds r5, r5, r0
	ldr r0, [r5]
	str r0, [r1]
	ldr r0, [r6, #0xc]
	str r0, [r2, #8]
	ldr r0, [r6, #8]
	ldr r1, _0800BA94 @ =0x00FF00FF
	ands r0, r1
	ldr r1, _0800BA98 @ =0x00030004
	cmp r0, r1
	bne _0800BAA4
	ldrb r0, [r6, #9]
	cmp r0, #7
	bne _0800BA9C
	bl sub_8011578
	b _0800BAA4
	.align 2, 0
_0800BA0C: .4byte gSaveDataBuffer
_0800BA10: .4byte 0x040000D4
_0800BA14: .4byte gUnknown_0200203C
_0800BA18: .4byte gBG2MapBuffer
_0800BA1C: .4byte 0x80000400
_0800BA20: .4byte 0xFFFFED00
_0800BA24: .4byte gTextBoxCharacters
_0800BA28: .4byte 0x8000017A
_0800BA2C: .4byte 0xFFFFE30C
_0800BA30: .4byte gScriptContext
_0800BA34: .4byte 0x80000020
_0800BA38: .4byte 0xFFFFE2B8
_0800BA3C: .4byte gIORegisters
_0800BA40: .4byte 0x8000002A
_0800BA44: .4byte 0xFFFFE860
_0800BA48: .4byte gMapMarker
_0800BA4C: .4byte 0x80000050
_0800BA50: .4byte 0xFFFFE5B8
_0800BA54: .4byte gTalkData
_0800BA58: .4byte 0x80000140
_0800BA5C: .4byte 0xFFFFE838
_0800BA60: .4byte gUnknown_03003B70
_0800BA64: .4byte 0x80000014
_0800BA68: .4byte 0xFFFFE010
_0800BA6C: .4byte 0xFFFFE011
_0800BA70: .4byte 0xFFFFE0D4
_0800BA74: .4byte gMain
_0800BA78: .4byte 0xFFFFE900
_0800BA7C: .4byte gOamObjects
_0800BA80: .4byte 0x80000200
_0800BA84: .4byte gUnknown_0814DC60
_0800BA88: .4byte 0x05000300
_0800BA8C: .4byte 0x80000010
_0800BA90: .4byte 0xFFFFE24C
_0800BA94: .4byte 0x00FF00FF
_0800BA98: .4byte 0x00030004
_0800BA9C:
	cmp r0, #8
	bne _0800BAA4
	bl sub_80115D4
_0800BAA4:
	ldr r0, _0800BAC4 @ =gMain
	ldr r1, _0800BAC8 @ =0x000002BE
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800BB00
	lsrs r0, r1, #4
	cmp r0, #1
	beq _0800BAE2
	cmp r0, #1
	bgt _0800BACC
	cmp r0, #0
	beq _0800BAD2
	b _0800BB00
	.align 2, 0
_0800BAC4: .4byte gMain
_0800BAC8: .4byte 0x000002BE
_0800BACC:
	cmp r0, #2
	beq _0800BAF2
	b _0800BB00
_0800BAD2:
	bl sub_800E7B0
	movs r0, #0x18
	movs r1, #0x80
	movs r2, #1
	bl sub_800E7EC
	b _0800BB00
_0800BAE2:
	bl sub_800E8C4
	movs r0, #0
	movs r1, #0x80
	movs r2, #1
	bl sub_800E900
	b _0800BB00
_0800BAF2:
	bl sub_800E8C4
	movs r0, #0x20
	movs r1, #0x80
	movs r2, #1
	bl sub_800E9D4
_0800BB00:
	ldr r0, _0800BB48 @ =gMain
	ldr r2, _0800BB4C @ =0x000002BA
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0
	beq _0800BB10
	bl PlaySE
_0800BB10:
	ldrh r6, [r6, #0x2e]
	cmp r6, #0x23
	bne _0800BB2C
	ldr r1, _0800BB50 @ =gIORegisters
	movs r0, #8
	strh r0, [r1, #0x14]
	movs r0, #0x6b
	bl FindAnimationFromAnimId
	adds r1, r0, #0
	cmp r1, #0
	beq _0800BB2C
	movs r0, #0x78
	strh r0, [r1, #0x10]
_0800BB2C:
	movs r0, #0x1e
	movs r1, #0xff
	bl FadeInBGM
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
_0800BB40:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BB48: .4byte gMain
_0800BB4C: .4byte 0x000002BA
_0800BB50: .4byte gIORegisters

	thumb_func_start sub_800BB54
sub_800BB54: @ 0x0800BB54
	adds r2, r0, #0
	adds r0, #0x7e
	ldrh r1, [r0]
	cmp r1, #0
	bne _0800BBA0
	adds r3, r2, #0
	adds r3, #0xb3
	ldrb r0, [r3]
	cmp r0, #2
	bne _0800BB6C
	movs r1, #1
	b _0800BB7A
_0800BB6C:
	cmp r0, #8
	bne _0800BB74
	movs r1, #2
	b _0800BB7A
_0800BB74:
	cmp r0, #0xe
	bne _0800BB8A
	movs r1, #3
_0800BB7A:
	movs r0, #0
	strb r0, [r2, #0x18]
	strb r0, [r2, #0x19]
	lsls r0, r1, #0x18
	movs r1, #0x86
	lsls r1, r1, #1
	orrs r0, r1
	b _0800BB9E
_0800BB8A:
	ldr r0, _0800BBA4 @ =gIORegisters
	adds r0, #0x4a
	strh r1, [r0]
	ldr r1, _0800BBA8 @ =gScriptContext
	movs r0, #0x80
	strh r0, [r1, #0x1e]
	ldr r0, _0800BBAC @ =gCaseStartProcess
	ldrb r3, [r3]
	adds r0, r3, r0
	ldrb r0, [r0]
_0800BB9E:
	str r0, [r2, #8]
_0800BBA0:
	bx lr
	.align 2, 0
_0800BBA4: .4byte gIORegisters
_0800BBA8: .4byte gScriptContext
_0800BBAC: .4byte gCaseStartProcess

	thumb_func_start sub_800BBB0
sub_800BBB0: @ 0x0800BBB0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, _0800BBE4 @ =gScriptContext
	movs r0, #8
	ldrh r1, [r3]
	ands r0, r1
	cmp r0, #0
	beq _0800BC44
	ldr r1, _0800BBE8 @ =gJoypad
	movs r2, #1
	movs r0, #1
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _0800BC44
	strb r2, [r4, #0x18]
	strb r2, [r4, #0x19]
	ldr r0, _0800BBEC @ =0x0000FFFF
	strh r0, [r3, #0x1e]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0800BBF0
	movs r0, #0
	bl ChangeScriptSection
	b _0800BBF6
	.align 2, 0
_0800BBE4: .4byte gScriptContext
_0800BBE8: .4byte gJoypad
_0800BBEC: .4byte 0x0000FFFF
_0800BBF0:
	movs r0, #1
	bl ChangeScriptSection
_0800BBF6:
	ldr r1, _0800BC34 @ =gScriptContext
	movs r2, #0
	movs r0, #9
	strh r0, [r1, #0x18]
	movs r0, #0x34
	strh r0, [r1, #0x1a]
	adds r0, r4, #0
	adds r0, #0x80
	strh r2, [r0]
	adds r0, #2
	movs r5, #1
	strb r5, [r0]
	adds r0, #1
	movs r2, #0x10
	strb r2, [r0]
	ldr r1, _0800BC38 @ =gIORegisters
	adds r3, r1, #0
	adds r3, #0x48
	movs r0, #0x84
	lsls r0, r0, #4
	strh r0, [r3]
	lsls r2, r2, #8
	adds r1, #0x4c
	strh r2, [r1]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0800BC3C
	movs r0, #0
	strb r0, [r4, #0x17]
	b _0800BC3E
	.align 2, 0
_0800BC34: .4byte gScriptContext
_0800BC38: .4byte gIORegisters
_0800BC3C:
	strb r5, [r4, #0x17]
_0800BC3E:
	movs r0, #3
	strb r0, [r4, #9]
	b _0800BC4E
_0800BC44:
	ldr r1, _0800BC54 @ =gOamObjects+0x140
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	strh r0, [r1, #8]
_0800BC4E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800BC54: .4byte gOamObjects+0x140

	thumb_func_start sub_800BC58
sub_800BC58: @ 0x0800BC58
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _0800BC92
	movs r0, #2
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0800BC80
	movs r0, #5
	b _0800BC82
_0800BC80:
	movs r0, #4
_0800BC82:
	strb r0, [r4, #9]
	movs r0, #0
	strb r0, [r4, #0xa]
	ldr r1, _0800BCDC @ =gOamObjects+0x140
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	strh r0, [r1, #8]
_0800BC92:
	ldrb r0, [r4, #9]
	cmp r0, #7
	bne _0800BCD4
	adds r3, r4, #0
	adds r3, #0x83
	ldrb r0, [r3]
	cmp r0, #0xf
	bhi _0800BCD4
	adds r2, r4, #0
	adds r2, #0x80
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x82
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	blo _0800BCC4
	movs r0, #0
	strh r0, [r2]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_0800BCC4:
	ldr r2, _0800BCE0 @ =gIORegisters
	ldrb r3, [r3]
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	adds r2, #0x4c
	strh r1, [r2]
_0800BCD4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800BCDC: .4byte gOamObjects+0x140
_0800BCE0: .4byte gIORegisters

	thumb_func_start sub_800BCE4
sub_800BCE4: @ 0x0800BCE4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #0x18]
	strb r0, [r4, #0x19]
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800BD08
sub_800BD08: @ 0x0800BD08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	ldr r0, _0800BDD4 @ =gUnknown_0814E460
	ldr r4, _0800BDD8 @ =gUnknown_0202CFC0
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _0800BDDC @ =0x040000D4
	str r4, [r1]
	ldr r0, _0800BDE0 @ =0x06013400
	str r0, [r1, #4]
	ldr r0, _0800BDE4 @ =0x80001400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800BDE8 @ =gUnknown_081DE3A8
	str r0, [r1]
	ldr r0, _0800BDEC @ =0x05000320
	str r0, [r1, #4]
	ldr r0, _0800BDF0 @ =0x80000020
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800BDF4 @ =gUnknown_0813791C
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0800BDF8 @ =0x80000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0xa
	bl sub_8002820
	movs r0, #0xa
	bl CopyBGDataToVram
	ldr r1, _0800BDFC @ =gMain
	adds r1, #0x25
	movs r0, #0xfc
	ldrb r2, [r1]
	ands r0, r2
	strb r0, [r1]
	ldr r4, _0800BE00 @ =gOamObjects
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #2
_0800BD6C:
	strh r0, [r4]
	adds r4, #8
	adds r2, #1
	cmp r2, #0x7f
	bls _0800BD6C
	ldr r4, _0800BE00 @ =gOamObjects
	ldr r0, _0800BE04 @ =gIORegisters
	adds r0, #0x4a
	movs r1, #0xd2
	lsls r1, r1, #5
	strh r1, [r0]
	movs r0, #0xa
	mov r7, sl
	strb r0, [r7, #0x1a]
	movs r0, #2
	bl SetTextboxSize
	movs r0, #0x98
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r2, #0
	adds r1, r7, #0
	adds r1, #0x94
	str r1, [sp]
	movs r7, #0xb4
	add r7, sl
	mov ip, r7
	movs r0, #1
	mov sb, r0
	ldr r1, _0800BE08 @ =0x000091A0
	mov r8, r1
_0800BDAA:
	movs r5, #0
	adds r7, r2, #1
	str r7, [sp, #4]
	lsls r0, r2, #5
	movs r1, #0x80
	lsls r1, r1, #7
	adds r6, r0, r1
	movs r3, #0
	lsls r0, r2, #6
	ldr r7, _0800BE0C @ =0x000091E0
	adds r1, r0, r7
_0800BDC0:
	strh r6, [r4]
	mov r7, ip
	ldrb r0, [r7]
	asrs r0, r2
	mov r7, sb
	ands r0, r7
	cmp r0, #0
	beq _0800BE10
	strh r1, [r4, #4]
	b _0800BE16
	.align 2, 0
_0800BDD4: .4byte gUnknown_0814E460
_0800BDD8: .4byte gUnknown_0202CFC0
_0800BDDC: .4byte 0x040000D4
_0800BDE0: .4byte 0x06013400
_0800BDE4: .4byte 0x80001400
_0800BDE8: .4byte gUnknown_081DE3A8
_0800BDEC: .4byte 0x05000320
_0800BDF0: .4byte 0x80000020
_0800BDF4: .4byte gUnknown_0813791C
_0800BDF8: .4byte 0x80000800
_0800BDFC: .4byte gMain
_0800BE00: .4byte gOamObjects
_0800BE04: .4byte gIORegisters
_0800BE08: .4byte 0x000091A0
_0800BE0C: .4byte 0x000091E0
_0800BE10:
	mov r7, r8
	adds r0, r3, r7
	strh r0, [r4, #4]
_0800BE16:
	adds r4, #8
	adds r3, #0x20
	adds r1, #0x20
	adds r5, #1
	cmp r5, #1
	bls _0800BDC0
	ldr r2, [sp, #4]
	cmp r2, #3
	bls _0800BDAA
	movs r0, #0
	ldr r1, [sp]
	strh r0, [r1]
	movs r0, #0x31
	bl PlaySE
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	mov r2, sl
	ldrb r0, [r2, #9]
	adds r0, #1
	strb r0, [r2, #9]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_800BE58
sub_800BE58: @ 0x0800BE58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	adds r0, #0x94
	ldrh r1, [r0]
	adds r1, #6
	ldr r2, _0800BECC @ =0x000001FF
	ands r1, r2
	strh r1, [r0]
	ldr r4, _0800BED0 @ =gOamObjects+0x130
	movs r1, #0
	mov sb, r4
	adds r5, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	mov sl, r0
	adds r6, r2, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	mov r8, r0
_0800BE86:
	movs r3, #0
	adds r2, r1, #1
	mov r1, r8
_0800BE8C:
	ldrh r0, [r5]
	add r0, sl
	ands r0, r6
	adds r0, r0, r1
	strh r0, [r4, #2]
	adds r4, #8
	adds r1, #0x40
	adds r3, #1
	cmp r3, #1
	bls _0800BE8C
	adds r1, r2, #0
	cmp r1, #3
	bls _0800BE86
	ldrh r5, [r5]
	cmp r5, #0x97
	bls _0800BEBE
	mov r4, sb
	ldr r0, _0800BED4 @ =0x0000C008
	strh r0, [r4, #2]
	adds r0, #0x40
	strh r0, [r4, #0xa]
	mov r1, ip
	ldrb r0, [r1, #9]
	adds r0, #1
	strb r0, [r1, #9]
_0800BEBE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BECC: .4byte 0x000001FF
_0800BED0: .4byte gOamObjects+0x130
_0800BED4: .4byte 0x0000C008

	thumb_func_start sub_800BED8
sub_800BED8: @ 0x0800BED8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	adds r0, #0x94
	ldrh r1, [r0]
	adds r1, #6
	ldr r2, _0800BF4C @ =0x000001FF
	ands r1, r2
	strh r1, [r0]
	ldr r4, _0800BF50 @ =gOamObjects+0x140
	movs r1, #1
	mov sb, r4
	adds r5, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	mov sl, r0
	adds r6, r2, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	mov r8, r0
_0800BF06:
	movs r3, #0
	adds r2, r1, #1
	mov r1, r8
_0800BF0C:
	ldrh r0, [r5]
	add r0, sl
	ands r0, r6
	adds r0, r0, r1
	strh r0, [r4, #2]
	adds r4, #8
	adds r1, #0x40
	adds r3, #1
	cmp r3, #1
	bls _0800BF0C
	adds r1, r2, #0
	cmp r1, #3
	bls _0800BF06
	ldrh r5, [r5]
	cmp r5, #0xb7
	bls _0800BF3E
	mov r4, sb
	ldr r0, _0800BF54 @ =0x0000C028
	strh r0, [r4, #2]
	adds r0, #0x40
	strh r0, [r4, #0xa]
	mov r1, ip
	ldrb r0, [r1, #9]
	adds r0, #1
	strb r0, [r1, #9]
_0800BF3E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BF4C: .4byte 0x000001FF
_0800BF50: .4byte gOamObjects+0x140
_0800BF54: .4byte 0x0000C028

	thumb_func_start sub_800BF58
sub_800BF58: @ 0x0800BF58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	adds r0, #0x94
	ldrh r1, [r0]
	adds r1, #6
	ldr r2, _0800BFCC @ =0x000001FF
	ands r1, r2
	strh r1, [r0]
	ldr r4, _0800BFD0 @ =gOamObjects+0x150
	movs r1, #2
	mov sb, r4
	adds r5, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	mov sl, r0
	adds r6, r2, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	mov r8, r0
_0800BF86:
	movs r3, #0
	adds r2, r1, #1
	mov r1, r8
_0800BF8C:
	ldrh r0, [r5]
	add r0, sl
	ands r0, r6
	adds r0, r0, r1
	strh r0, [r4, #2]
	adds r4, #8
	adds r1, #0x40
	adds r3, #1
	cmp r3, #1
	bls _0800BF8C
	adds r1, r2, #0
	cmp r1, #3
	bls _0800BF86
	ldrh r5, [r5]
	cmp r5, #0xd7
	bls _0800BFBE
	mov r4, sb
	ldr r0, _0800BFD4 @ =0x0000C048
	strh r0, [r4, #2]
	adds r0, #0x40
	strh r0, [r4, #0xa]
	mov r1, ip
	ldrb r0, [r1, #9]
	adds r0, #1
	strb r0, [r1, #9]
_0800BFBE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BFCC: .4byte 0x000001FF
_0800BFD0: .4byte gOamObjects+0x150
_0800BFD4: .4byte 0x0000C048

	thumb_func_start sub_800BFD8
sub_800BFD8: @ 0x0800BFD8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldrb r0, [r7, #9]
	cmp r0, #8
	bls _0800BFEC
	b _0800C3E6
_0800BFEC:
	lsls r0, r0, #2
	ldr r1, _0800BFF8 @ =_0800BFFC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800BFF8: .4byte _0800BFFC
_0800BFFC: @ jump table
	.4byte _0800C020 @ case 0
	.4byte _0800C028 @ case 1
	.4byte _0800C0C8 @ case 2
	.4byte _0800C0D0 @ case 3
	.4byte _0800C0D8 @ case 4
	.4byte _0800C0E0 @ case 5
	.4byte _0800C174 @ case 6
	.4byte _0800C270 @ case 7
	.4byte _0800C398 @ case 8
_0800C020:
	adds r0, r7, #0
	bl sub_800BCE4
	b _0800C3E6
_0800C028:
	adds r0, r7, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800C034
	b _0800C3E6
_0800C034:
	adds r0, r7, #0
	bl sub_800BD08
	ldr r0, _0800C070 @ =gMain
	movs r3, #0xf0
	ldrb r0, [r0, #0x1b]
	ands r3, r0
	cmp r3, #0
	beq _0800C07C
	movs r0, #0xe0
	lsls r0, r0, #0x14
	ldr r4, _0800C074 @ =gSaveDataBuffer
	ldr r2, _0800C078 @ =0x00002BBC
	adds r1, r4, #0
	bl ReadSram
	adds r4, #0xe8
	ldrb r2, [r7, #0xb]
	movs r1, #1
	lsls r1, r2
	subs r2, #1
	movs r0, #0x10
	lsls r0, r2
	orrs r1, r0
	ldrb r0, [r4]
	orrs r1, r0
	strb r1, [r4]
	bl sub_800AE84
	b _0800C3E6
	.align 2, 0
_0800C070: .4byte gMain
_0800C074: .4byte gSaveDataBuffer
_0800C078: .4byte 0x00002BBC
_0800C07C:
	ldr r2, _0800C0B4 @ =0x040000D4
	ldr r0, _0800C0B8 @ =gSaveVersion
	str r0, [r2]
	ldr r0, _0800C0BC @ =gSaveDataBuffer
	str r0, [r2, #4]
	ldr r1, _0800C0C0 @ =0x80000019
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	str r3, [r0, #0x30]
	adds r4, r0, #0
	adds r4, #0xe8
	ldrb r3, [r7, #0xb]
	movs r2, #1
	lsls r2, r3
	subs r3, #1
	movs r1, #0x10
	lsls r1, r3
	orrs r2, r1
	ldrb r1, [r4]
	orrs r2, r1
	strb r2, [r4]
	movs r1, #0xe0
	lsls r1, r1, #0x14
	ldr r2, _0800C0C4 @ =0x00002BBC
	bl WriteSramEx
	b _0800C3E6
	.align 2, 0
_0800C0B4: .4byte 0x040000D4
_0800C0B8: .4byte gSaveVersion
_0800C0BC: .4byte gSaveDataBuffer
_0800C0C0: .4byte 0x80000019
_0800C0C4: .4byte 0x00002BBC
_0800C0C8:
	adds r0, r7, #0
	bl sub_800BE58
	b _0800C3E6
_0800C0D0:
	adds r0, r7, #0
	bl sub_800BED8
	b _0800C3E6
_0800C0D8:
	adds r0, r7, #0
	bl sub_800BF58
	b _0800C3E6
_0800C0E0:
	adds r0, r7, #0
	adds r0, #0x94
	ldrh r1, [r0]
	adds r1, #6
	ldr r2, _0800C168 @ =0x000001FF
	ands r1, r2
	strh r1, [r0]
	ldr r6, _0800C16C @ =gOamObjects+0x160
	movs r1, #3
	mov sl, r0
	mov r8, sl
	movs r3, #0xb8
	lsls r3, r3, #1
	mov sb, r3
	movs r4, #0xc0
	lsls r4, r4, #8
	mov ip, r4
_0800C102:
	movs r4, #0
	adds r5, r1, #1
	mov r3, ip
_0800C108:
	mov r0, r8
	ldrh r1, [r0]
	add r1, sb
	ands r1, r2
	adds r0, r1, r3
	strh r0, [r6, #2]
	adds r6, #8
	adds r3, #0x40
	adds r4, #1
	cmp r4, #1
	bls _0800C108
	adds r1, r5, #0
	cmp r1, #3
	bls _0800C102
	mov r1, sl
	ldrh r1, [r1]
	cmp r1, #0xf7
	bhi _0800C12E
	b _0800C3E6
_0800C12E:
	ldr r6, _0800C16C @ =gOamObjects+0x160
	ldr r0, _0800C170 @ =0x0000C068
	strh r0, [r6, #2]
	adds r0, #0x40
	strh r0, [r6, #0xa]
	adds r4, r7, #0
	adds r4, #0xb4
	movs r1, #1
	adds r2, r1, #0
	ldrb r3, [r7, #0xb]
	lsls r2, r3
	ldrb r0, [r4]
	orrs r2, r0
	strb r2, [r4]
	ldrb r3, [r7, #0xb]
	lsls r1, r3
	subs r3, #1
	movs r0, #0x10
	lsls r0, r3
	orrs r1, r0
	orrs r2, r1
	strb r2, [r4]
	adds r1, r7, #0
	adds r1, #0x92
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	b _0800C2B8
	.align 2, 0
_0800C168: .4byte 0x000001FF
_0800C16C: .4byte gOamObjects+0x160
_0800C170: .4byte 0x0000C068
_0800C174:
	movs r1, #0x92
	adds r1, r1, r7
	mov sl, r1
	ldrh r1, [r1]
	subs r1, #0x10
	mov r2, sl
	strh r1, [r2]
	ldr r6, _0800C230 @ =gOamObjects+0x130
	ldrb r3, [r7, #0xb]
	lsls r0, r3, #4
	adds r6, r0, r6
	lsls r1, r1, #0x10
	cmp r1, #0
	beq _0800C23C
	ldr r5, _0800C234 @ =gSineTable
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r4, [r0, r1]
	mov sb, r4
	movs r2, #0x80
	lsls r2, r2, #1
	mov r8, r2
	mov r0, r8
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl fix_mul
	ldr r3, _0800C238 @ =gOamObjects
	strh r0, [r3, #6]
	movs r0, #0
	ldrsh r4, [r5, r0]
	mov r0, r8
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl fix_mul
	ldr r1, _0800C238 @ =gOamObjects
	strh r0, [r1, #0xe]
	ldrh r5, [r5]
	rsbs r4, r5, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r2, sl
	movs r3, #0
	ldrsh r0, [r2, r3]
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl fix_mul
	ldr r4, _0800C238 @ =gOamObjects
	strh r0, [r4, #0x16]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl fix_mul
	strh r0, [r4, #0x1e]
	movs r1, #3
	movs r3, #0x82
	lsls r3, r3, #7
	adds r2, r3, #0
_0800C214:
	movs r4, #0
	adds r5, r1, #1
_0800C218:
	ldrb r1, [r7, #0xb]
	lsls r0, r1, #5
	adds r0, r0, r2
	strh r0, [r6]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _0800C218
	adds r1, r5, #0
	cmp r1, #3
	bls _0800C214
	b _0800C3E6
	.align 2, 0
_0800C230: .4byte gOamObjects+0x130
_0800C234: .4byte gSineTable
_0800C238: .4byte gOamObjects
_0800C23C:
	movs r1, #3
	movs r3, #0x82
	lsls r3, r3, #7
	adds r2, r3, #0
	ldr r4, _0800C26C @ =0x000091A0
	mov r8, r4
_0800C248:
	movs r4, #0
	adds r5, r1, #1
	mov r1, r8
_0800C24E:
	ldrb r3, [r7, #0xb]
	lsls r0, r3, #5
	adds r0, r0, r2
	strh r0, [r6]
	strh r1, [r6, #4]
	adds r6, #8
	adds r1, #0x20
	adds r4, #1
	cmp r4, #1
	bls _0800C24E
	adds r1, r5, #0
	cmp r1, #3
	bls _0800C248
	b _0800C2B8
	.align 2, 0
_0800C26C: .4byte 0x000091A0
_0800C270:
	ldr r6, _0800C2C0 @ =gOamObjects+0x130
	ldrb r4, [r7, #0xb]
	lsls r0, r4, #4
	adds r6, r0, r6
	movs r0, #0x92
	adds r0, r0, r7
	mov sl, r0
	ldrh r0, [r0]
	adds r0, #0x10
	mov r1, sl
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _0800C2CC
	movs r0, #1
	strb r0, [r7, #0x18]
	strb r0, [r7, #0x19]
	ldr r1, _0800C2C4 @ =gScriptContext
	ldr r0, _0800C2C8 @ =0x0000FFFF
	strh r0, [r1, #0x1e]
	movs r0, #5
	bl ChangeScriptSection
	movs r4, #0
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
_0800C2A8:
	ldrb r3, [r7, #0xb]
	lsls r0, r3, #5
	adds r0, r0, r1
	strh r0, [r6]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _0800C2A8
_0800C2B8:
	ldrb r0, [r7, #9]
	adds r0, #1
	strb r0, [r7, #9]
	b _0800C3E6
	.align 2, 0
_0800C2C0: .4byte gOamObjects+0x130
_0800C2C4: .4byte gScriptContext
_0800C2C8: .4byte 0x0000FFFF
_0800C2CC:
	ldr r5, _0800C374 @ =gSineTable
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r4, [r0, r1]
	mov sb, r4
	movs r2, #0x80
	lsls r2, r2, #1
	mov r8, r2
	mov r0, r8
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl fix_mul
	ldr r3, _0800C378 @ =gOamObjects
	strh r0, [r3, #6]
	movs r0, #0
	ldrsh r4, [r5, r0]
	mov r0, r8
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl fix_mul
	ldr r1, _0800C378 @ =gOamObjects
	strh r0, [r1, #0xe]
	ldrh r5, [r5]
	rsbs r4, r5, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r2, sl
	movs r3, #0
	ldrsh r0, [r2, r3]
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl fix_mul
	ldr r4, _0800C378 @ =gOamObjects
	strh r0, [r4, #0x16]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl fix_mul
	strh r0, [r4, #0x1e]
	movs r4, #0
	adds r5, r7, #0
	adds r5, #0xb4
	movs r3, #0
_0800C350:
	ldrb r1, [r7, #0xb]
	lsls r0, r1, #5
	movs r2, #0x82
	lsls r2, r2, #7
	adds r0, r0, r2
	strh r0, [r6]
	ldrb r2, [r7, #0xb]
	ldrb r1, [r5]
	asrs r1, r2
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0800C380
	lsls r0, r2, #6
	ldr r1, _0800C37C @ =0x000091E0
	adds r0, r0, r1
	adds r0, r3, r0
	b _0800C384
	.align 2, 0
_0800C374: .4byte gSineTable
_0800C378: .4byte gOamObjects
_0800C37C: .4byte 0x000091E0
_0800C380:
	ldr r2, _0800C394 @ =0x000091A0
	adds r0, r3, r2
_0800C384:
	strh r0, [r6, #4]
	adds r6, #8
	adds r3, #0x20
	adds r4, #1
	cmp r4, #1
	bls _0800C350
	b _0800C3E6
	.align 2, 0
_0800C394: .4byte 0x000091A0
_0800C398:
	ldr r1, _0800C3F4 @ =gScriptContext
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800C3E6
	ldr r1, _0800C3F8 @ =gJoypad
	movs r4, #0xf
	adds r0, r4, #0
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _0800C3E6
	bl PauseBGM
	movs r0, #0x2b
	bl PlaySE
	ldr r2, _0800C3FC @ =gSaveDataBuffer
	adds r0, r7, #0
	adds r0, #0xb3
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0xe7
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0xb4
	ldrb r3, [r0]
	adds r0, r4, #0
	ands r0, r3
	lsls r0, r0, #3
	subs r4, #0x1f
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r3
	adds r2, #0xe8
	strb r0, [r2]
	ldr r0, _0800C400 @ =0x0100000A
	str r0, [r7, #8]
_0800C3E6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C3F4: .4byte gScriptContext
_0800C3F8: .4byte gJoypad
_0800C3FC: .4byte gSaveDataBuffer
_0800C400: .4byte 0x0100000A

	thumb_func_start sub_800C404
sub_800C404: @ 0x0800C404
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	ldrb r0, [r6, #9]
	cmp r0, #0xc
	bls _0800C41A
	b _0800C994
_0800C41A:
	lsls r0, r0, #2
	ldr r1, _0800C424 @ =_0800C428
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800C424: .4byte _0800C428
_0800C428: @ jump table
	.4byte _0800C45C @ case 0
	.4byte _0800C464 @ case 1
	.4byte _0800C504 @ case 2
	.4byte _0800C50C @ case 3
	.4byte _0800C514 @ case 4
	.4byte _0800C51C @ case 5
	.4byte _0800C5A8 @ case 6
	.4byte _0800C73E @ case 7
	.4byte _0800C7F4 @ case 8
	.4byte _0800C868 @ case 9
	.4byte _0800C884 @ case 10
	.4byte _0800C90E @ case 11
	.4byte _0800C986 @ case 12
_0800C45C:
	adds r0, r6, #0
	bl sub_800BCE4
	b _0800C994
_0800C464:
	adds r0, r6, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800C470
	b _0800C994
_0800C470:
	adds r0, r6, #0
	bl sub_800BD08
	movs r0, #0xf0
	ldrb r1, [r6, #0x1b]
	ands r0, r1
	adds r2, r6, #0
	adds r2, #0xb4
	str r2, [sp]
	cmp r0, #0
	beq _0800C48E
	ldr r0, _0800C4C8 @ =gSaveDataBuffer
	adds r0, #0xe8
	ldrb r0, [r0]
	strb r0, [r2]
_0800C48E:
	ldrb r0, [r6, #0xb]
	strb r0, [r6, #0x17]
	ldr r4, _0800C4CC @ =gOamObjects+0x130
	movs r7, #0
	ldr r3, _0800C4D0 @ =0x0000A1E0
	mov sl, r3
	ldr r5, _0800C4D4 @ =0x0000A1A0
	mov sb, r5
_0800C49E:
	ldr r0, [sp]
	ldrb r1, [r0]
	asrs r1, r7
	movs r5, #0
	adds r2, r7, #1
	mov r8, r2
	movs r3, #1
	ands r1, r3
	str r1, [sp, #8]
	mov ip, r5
	lsls r0, r7, #6
	adds r2, r0, #0
	add r2, sl
	ldr r3, _0800C4D8 @ =0x000091E0
	adds r1, r0, r3
_0800C4BC:
	ldrb r0, [r6, #0x17]
	cmp r0, r7
	bne _0800C4DC
	strh r1, [r4, #4]
	b _0800C4EC
	.align 2, 0
_0800C4C8: .4byte gSaveDataBuffer
_0800C4CC: .4byte gOamObjects+0x130
_0800C4D0: .4byte 0x0000A1E0
_0800C4D4: .4byte 0x0000A1A0
_0800C4D8: .4byte 0x000091E0
_0800C4DC:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0800C4E6
	strh r2, [r4, #4]
	b _0800C4EC
_0800C4E6:
	mov r0, ip
	add r0, sb
	strh r0, [r4, #4]
_0800C4EC:
	adds r4, #8
	movs r3, #0x20
	add ip, r3
	adds r2, #0x20
	adds r1, #0x20
	adds r5, #1
	cmp r5, #1
	bls _0800C4BC
	mov r7, r8
	cmp r7, #3
	bls _0800C49E
	b _0800C994
_0800C504:
	adds r0, r6, #0
	bl sub_800BE58
	b _0800C994
_0800C50C:
	adds r0, r6, #0
	bl sub_800BED8
	b _0800C994
_0800C514:
	adds r0, r6, #0
	bl sub_800BF58
	b _0800C994
_0800C51C:
	adds r0, r6, #0
	adds r0, #0x94
	ldrh r1, [r0]
	adds r1, #6
	ldr r2, _0800C594 @ =0x000001FF
	ands r1, r2
	strh r1, [r0]
	ldr r4, _0800C598 @ =gOamObjects+0x160
	movs r7, #3
	mov sb, r0
	mov ip, sb
	movs r5, #0xb8
	lsls r5, r5, #1
	mov sl, r5
_0800C538:
	movs r5, #0
	adds r7, #1
	mov r8, r7
	movs r1, #0xc0
	lsls r1, r1, #8
_0800C542:
	mov r0, ip
	ldrh r3, [r0]
	add r3, sl
	ands r3, r2
	adds r0, r3, r1
	strh r0, [r4, #2]
	adds r4, #8
	adds r1, #0x40
	adds r5, #1
	cmp r5, #1
	bls _0800C542
	mov r7, r8
	cmp r7, #3
	bls _0800C538
	mov r1, sb
	ldrh r1, [r1]
	cmp r1, #0xf7
	bhi _0800C568
	b _0800C994
_0800C568:
	ldr r4, _0800C598 @ =gOamObjects+0x160
	ldr r0, _0800C59C @ =0x0000C068
	strh r0, [r4, #2]
	adds r0, #0x40
	strh r0, [r4, #0xa]
	movs r0, #1
	strb r0, [r6, #0x18]
	strb r0, [r6, #0x19]
	ldr r1, _0800C5A0 @ =gScriptContext
	ldr r0, _0800C5A4 @ =0x0000FFFF
	strh r0, [r1, #0x1e]
	movs r0, #2
	bl ChangeScriptSection
	movs r0, #0xc0
	movs r1, #0x14
	bl SetTimedKeysAndDelay
	ldrb r0, [r6, #9]
	adds r0, #1
	strb r0, [r6, #9]
	b _0800C994
	.align 2, 0
_0800C594: .4byte 0x000001FF
_0800C598: .4byte gOamObjects+0x160
_0800C59C: .4byte 0x0000C068
_0800C5A0: .4byte gScriptContext
_0800C5A4: .4byte 0x0000FFFF
_0800C5A8:
	ldr r1, _0800C5F0 @ =gScriptContext
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	adds r2, r6, #0
	adds r2, #0xb4
	str r2, [sp]
	cmp r0, #0
	beq _0800C69A
	ldr r2, _0800C5F4 @ =gJoypad
	ldrh r1, [r2, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800C5F8
	ldrb r5, [r6, #0x17]
	movs r7, #0
	movs r4, #3
	ldr r1, [sp]
	movs r2, #1
_0800C5D0:
	ldrb r0, [r6, #0x17]
	subs r0, #1
	ands r0, r4
	strb r0, [r6, #0x17]
	ldrb r0, [r6, #0x17]
	ldrb r3, [r1]
	asrs r3, r0
	ands r3, r2
	cmp r3, #0
	beq _0800C5E8
	cmp r5, r0
	bne _0800C674
_0800C5E8:
	adds r7, #1
	cmp r7, #3
	bls _0800C5D0
	b _0800C69A
	.align 2, 0
_0800C5F0: .4byte gScriptContext
_0800C5F4: .4byte gJoypad
_0800C5F8:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0800C62E
	ldrb r5, [r6, #0x17]
	movs r7, #0
	movs r4, #3
	ldr r1, [sp]
	movs r2, #1
_0800C60E:
	ldrb r0, [r6, #0x17]
	adds r0, #1
	ands r0, r4
	strb r0, [r6, #0x17]
	ldrb r0, [r6, #0x17]
	ldrb r3, [r1]
	asrs r3, r0
	ands r3, r2
	cmp r3, #0
	beq _0800C626
	cmp r5, r0
	bne _0800C674
_0800C626:
	adds r7, #1
	cmp r7, #3
	bls _0800C60E
	b _0800C69A
_0800C62E:
	ldrh r1, [r2, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C67C
	movs r0, #0x2b
	bl PlaySE
	adds r0, r6, #0
	adds r0, #0x94
	movs r2, #0
	strh r4, [r0]
	strb r2, [r6, #0x18]
	strb r2, [r6, #0x19]
	ldr r1, _0800C66C @ =gIORegisters
	adds r1, #0x4a
	ldr r0, _0800C670 @ =0x0000FDFF
	ldrh r3, [r1]
	ands r0, r3
	strh r0, [r1]
	movs r0, #0xfd
	ldrb r5, [r6, #0x1a]
	ands r0, r5
	strb r0, [r6, #0x1a]
	ldrb r0, [r6, #9]
	adds r0, #1
	strb r0, [r6, #9]
	strb r2, [r6, #0xb]
	strb r2, [r6, #0xa]
	b _0800C69A
	.align 2, 0
_0800C66C: .4byte gIORegisters
_0800C670: .4byte 0x0000FDFF
_0800C674:
	movs r0, #0x2a
	bl PlaySE
	b _0800C69A
_0800C67C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800C69A
	movs r0, #0x2c
	bl PlaySE
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r0, #0xc
	strb r0, [r6, #9]
_0800C69A:
	ldr r4, _0800C6D0 @ =gOamObjects+0x130
	movs r7, #0
_0800C69E:
	ldrb r0, [r6, #0x17]
	cmp r7, r0
	bne _0800C6F0
	movs r5, #0
	adds r1, r7, #1
	mov r8, r1
	ldr r2, [sp]
	mov ip, r2
	movs r3, #1
	mov sl, r3
	movs r2, #0
	lsls r0, r7, #6
	ldr r3, _0800C6D4 @ =0x000091E0
	adds r1, r0, r3
	ldr r0, _0800C6D8 @ =0x000091A0
	mov sb, r0
_0800C6BE:
	mov r0, ip
	ldrb r3, [r0]
	asrs r3, r7
	mov r0, sl
	ands r3, r0
	cmp r3, #0
	beq _0800C6DC
	strh r1, [r4, #4]
	b _0800C6E2
	.align 2, 0
_0800C6D0: .4byte gOamObjects+0x130
_0800C6D4: .4byte 0x000091E0
_0800C6D8: .4byte 0x000091A0
_0800C6DC:
	mov r3, sb
	adds r0, r2, r3
	strh r0, [r4, #4]
_0800C6E2:
	adds r4, #8
	adds r2, #0x20
	adds r1, #0x20
	adds r5, #1
	cmp r5, #1
	bls _0800C6BE
	b _0800C736
_0800C6F0:
	movs r5, #0
	adds r0, r7, #1
	mov r8, r0
	ldr r1, [sp]
	mov ip, r1
	movs r2, #1
	mov sl, r2
	movs r2, #0
	lsls r0, r7, #6
	ldr r3, _0800C71C @ =0x0000A1E0
	adds r1, r0, r3
	ldr r0, _0800C720 @ =0x0000A1A0
	mov sb, r0
_0800C70A:
	mov r0, ip
	ldrb r3, [r0]
	asrs r3, r7
	mov r0, sl
	ands r3, r0
	cmp r3, #0
	beq _0800C724
	strh r1, [r4, #4]
	b _0800C72A
	.align 2, 0
_0800C71C: .4byte 0x0000A1E0
_0800C720: .4byte 0x0000A1A0
_0800C724:
	mov r3, sb
	adds r0, r2, r3
	strh r0, [r4, #4]
_0800C72A:
	adds r4, #8
	adds r2, #0x20
	adds r1, #0x20
	adds r5, #1
	cmp r5, #1
	bls _0800C70A
_0800C736:
	mov r7, r8
	cmp r7, #3
	bls _0800C69E
	b _0800C994
_0800C73E:
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r5, #0x94
	adds r5, r5, r6
	mov sb, r5
	cmp r0, #0x28
	bls _0800C762
	movs r0, #0
	movs r1, #0
	strh r1, [r5]
	ldrb r1, [r6, #9]
	adds r1, #1
	strb r1, [r6, #9]
	strb r0, [r6, #0xb]
	strb r0, [r6, #0xa]
_0800C762:
	ldr r4, _0800C798 @ =gOamObjects+0x130
	movs r7, #0
	ldr r0, _0800C79C @ =0x000001FF
	mov ip, r0
	movs r1, #0xfe
	lsls r1, r1, #8
	mov sl, r1
_0800C770:
	movs r5, #0
	adds r2, r7, #1
	mov r8, r2
_0800C776:
	ldrb r3, [r6, #0x17]
	cmp r7, r3
	bne _0800C7B0
	ldrh r1, [r4, #2]
	mov r3, ip
	ands r3, r1
	mov r0, sl
	ands r0, r1
	strh r0, [r4, #2]
	cmp r5, #0
	bne _0800C7A0
	cmp r3, #0x37
	bhi _0800C792
	adds r3, #4
_0800C792:
	cmp r3, #0x38
	bls _0800C7AC
	b _0800C7AA
	.align 2, 0
_0800C798: .4byte gOamObjects+0x130
_0800C79C: .4byte 0x000001FF
_0800C7A0:
	cmp r3, #0x77
	bhi _0800C7A6
	adds r3, #4
_0800C7A6:
	cmp r3, #0x78
	bls _0800C7AC
_0800C7AA:
	subs r3, #4
_0800C7AC:
	ldrh r1, [r4, #2]
	b _0800C7D2
_0800C7B0:
	ldrh r0, [r4, #2]
	mov r3, ip
	ands r3, r0
	mov r1, sl
	ands r1, r0
	strh r1, [r4, #2]
	mov r2, sb
	ldrh r2, [r2]
	adds r3, r2, r3
	mov r0, ip
	ands r3, r0
	cmp r3, #0xf0
	bls _0800C7D2
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4]
	b _0800C7D6
_0800C7D2:
	adds r0, r1, r3
	strh r0, [r4, #2]
_0800C7D6:
	adds r4, #8
	adds r5, #1
	cmp r5, #1
	bls _0800C776
	mov r7, r8
	cmp r7, #3
	bls _0800C770
	mov r1, sb
	ldrh r0, [r1]
	cmp r0, #7
	bls _0800C7EE
	b _0800C994
_0800C7EE:
	adds r0, #1
	strh r0, [r1]
	b _0800C994
_0800C7F4:
	ldr r4, _0800C840 @ =gOamObjects+0x130
	movs r7, #0
	movs r2, #0x94
	adds r2, r2, r6
	mov sb, r2
	movs r3, #0xff
	lsls r3, r3, #8
	mov sl, r3
	movs r1, #0
_0800C806:
	movs r5, #0
	adds r0, r7, #1
	mov r8, r0
_0800C80C:
	ldrb r2, [r6, #0x17]
	cmp r7, r2
	bne _0800C844
	ldrb r3, [r4]
	mov r0, sl
	ldrh r2, [r4]
	ands r0, r2
	strh r0, [r4]
	cmp r3, #0x37
	bhi _0800C826
	adds r3, #4
	cmp r3, #0x37
	bhi _0800C830
_0800C826:
	cmp r3, #0x38
	bls _0800C83A
	subs r3, #4
	cmp r3, #0x38
	bhi _0800C83A
_0800C830:
	movs r0, #9
	strb r0, [r6, #9]
	strb r1, [r6, #0xb]
	strb r1, [r6, #0xa]
	movs r3, #0x38
_0800C83A:
	ldrh r2, [r4]
	adds r0, r2, r3
	b _0800C848
	.align 2, 0
_0800C840: .4byte gOamObjects+0x130
_0800C844:
	movs r0, #0x80
	lsls r0, r0, #2
_0800C848:
	strh r0, [r4]
	adds r4, #8
	adds r5, #1
	cmp r5, #1
	bls _0800C80C
	mov r7, r8
	cmp r7, #3
	bls _0800C806
	mov r3, sb
	ldrh r0, [r3]
	cmp r0, #7
	bls _0800C862
	b _0800C994
_0800C862:
	adds r0, #1
	strh r0, [r3]
	b _0800C994
_0800C868:
	ldrb r0, [r6, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bhi _0800C87A
	b _0800C994
_0800C87A:
	movs r0, #0xa
	strb r0, [r6, #9]
	strb r1, [r6, #0xb]
	strb r1, [r6, #0xa]
	b _0800C994
_0800C884:
	ldrb r0, [r6, #0xa]
	adds r0, #1
	movs r4, #0
	strb r0, [r6, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x32
	bls _0800C8AA
	movs r0, #2
	movs r1, #4
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r6, #9]
	adds r0, #1
	strb r0, [r6, #9]
	strb r4, [r6, #0xb]
	b _0800C8B8
_0800C8AA:
	ldrb r5, [r6, #0xb]
	cmp r5, #5
	bls _0800C8B2
	strb r4, [r6, #0xb]
_0800C8B2:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
_0800C8B8:
	ldr r4, _0800C8E8 @ =gOamObjects+0x130
	movs r7, #0
	ldr r0, _0800C8EC @ =0x0000A1E0
	mov sb, r0
	ldr r1, _0800C8F0 @ =0x000091E0
	mov sl, r1
	movs r2, #0x80
	lsls r2, r2, #2
_0800C8C8:
	movs r5, #0
	adds r3, r7, #1
	mov r8, r3
	lsls r0, r7, #6
	mov r3, sl
	adds r1, r0, r3
	add r0, sb
_0800C8D6:
	ldrb r3, [r6, #0x17]
	cmp r7, r3
	bne _0800C8F8
	ldrb r3, [r6, #0xb]
	cmp r3, #2
	bls _0800C8F4
	strh r0, [r4, #4]
	b _0800C8FA
	.align 2, 0
_0800C8E8: .4byte gOamObjects+0x130
_0800C8EC: .4byte 0x0000A1E0
_0800C8F0: .4byte 0x000091E0
_0800C8F4:
	strh r1, [r4, #4]
	b _0800C8FA
_0800C8F8:
	strh r2, [r4]
_0800C8FA:
	adds r4, #8
	adds r1, #0x20
	adds r0, #0x20
	adds r5, #1
	cmp r5, #1
	bls _0800C8D6
	mov r7, r8
	cmp r7, #3
	bls _0800C8C8
	b _0800C994
_0800C90E:
	adds r0, r6, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800C994
	adds r0, r6, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	lsrs r1, r0, #4
	ldrb r5, [r6, #0x17]
	asrs r1, r5
	movs r0, #1
	ands r1, r0
	adds r2, r6, #0
	adds r2, #0xb3
	ldr r3, _0800C958 @ =gMain
	ldr r4, _0800C95C @ =gCaseStartProcess
	cmp r1, #0
	beq _0800C948
	movs r7, #0
	movs r1, #1
	rsbs r1, r1, #0
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r6, r5
_0800C940:
	stm r0!, {r1}
	adds r7, #1
	cmp r7, #7
	bls _0800C940
_0800C948:
	ldrb r0, [r6, #0x17]
	cmp r0, #1
	beq _0800C96A
	cmp r0, #1
	bgt _0800C960
	cmp r0, #0
	beq _0800C978
	b _0800C976
	.align 2, 0
_0800C958: .4byte gMain
_0800C95C: .4byte gCaseStartProcess
_0800C960:
	cmp r0, #2
	beq _0800C96E
	cmp r0, #3
	beq _0800C972
	b _0800C976
_0800C96A:
	movs r0, #2
	b _0800C978
_0800C96E:
	movs r0, #8
	b _0800C978
_0800C972:
	movs r0, #0xe
	b _0800C978
_0800C976:
	movs r0, #0
_0800C978:
	strb r0, [r2]
	movs r0, #0
	str r0, [r3, #4]
	ldrb r2, [r2]
	adds r0, r2, r4
	ldrb r0, [r0]
	b _0800C992
_0800C986:
	adds r0, r6, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800C994
	movs r0, #1
_0800C992:
	str r0, [r6, #8]
_0800C994:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_800C9A4
sub_800C9A4: @ 0x0800C9A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	ldrb r0, [r0, #9]
	cmp r0, #7
	bls _0800C9BC
	bl _0800D42C
_0800C9BC:
	lsls r0, r0, #2
	ldr r1, _0800C9C8 @ =_0800C9CC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800C9C8: .4byte _0800C9CC
_0800C9CC: @ jump table
	.4byte _0800C9EC @ case 0
	.4byte _0800C9FA @ case 1
	.4byte _0800CAFC @ case 2
	.4byte _0800CB70 @ case 3
	.4byte _0800CD00 @ case 4
	.4byte _0800D298 @ case 5
	.4byte _0800D2E0 @ case 6
	.4byte _0800D2F4 @ case 7
_0800C9EC:
	bl sub_800AECC
	mov r0, r8
	bl sub_800BCE4
	bl _0800D42C
_0800C9FA:
	mov r0, r8
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800CA08
	bl _0800D42C
_0800CA08:
	ldr r0, _0800CAC4 @ =gSaveDataBuffer
	adds r1, r0, #0
	adds r1, #0x4f
	ldrb r1, [r1]
	mov r2, r8
	strb r1, [r2, #0x1b]
	adds r0, #0xe7
	ldrb r0, [r0]
	mov r1, r8
	adds r1, #0xb3
	strb r0, [r1]
	ldr r1, _0800CAC8 @ =0x040000D4
	ldr r0, _0800CACC @ =gUnknown_0813791C
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r2, _0800CAD0 @ =0x80000800
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800CAD4 @ =gUnknown_0814F0C4
	str r0, [r1]
	ldr r0, _0800CAD8 @ =0x06013400
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800CADC @ =gUnknown_081DE3A8
	str r0, [r1]
	ldr r0, _0800CAE0 @ =0x05000320
	str r0, [r1, #4]
	ldr r0, _0800CAE4 @ =0x80000020
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0xa
	bl sub_8002820
	movs r0, #0xa
	bl CopyBGDataToVram
	mov r1, r8
	adds r1, #0x25
	movs r0, #0xfc
	ldrb r3, [r1]
	ands r0, r3
	strb r0, [r1]
	ldr r2, _0800CAE8 @ =gOamObjects
	movs r7, #0
	movs r0, #0x80
	lsls r0, r0, #2
_0800CA6A:
	strh r0, [r2]
	adds r2, #8
	adds r7, #1
	cmp r7, #0x7f
	bls _0800CA6A
	movs r7, #0
	ldr r2, _0800CAEC @ =0x000003FF
	movs r1, #0
	ldr r0, _0800CAF0 @ =gBG2MapBuffer
_0800CA7C:
	strh r1, [r0]
	adds r0, #2
	adds r7, #1
	cmp r7, r2
	bls _0800CA7C
	movs r0, #5
	movs r1, #8
	bl sub_8003C14
	movs r0, #0x31
	bl PlaySE
	ldr r1, _0800CAF4 @ =gIORegisters
	adds r3, r1, #0
	adds r3, #0x4a
	movs r2, #0
	movs r0, #0xe2
	lsls r0, r0, #5
	strh r0, [r3]
	movs r0, #0xc
	mov r6, r8
	strb r0, [r6, #0x1a]
	ldr r0, _0800CAF8 @ =0x00003E01
	strh r0, [r1, #4]
	strb r2, [r6, #0x17]
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r6, #9]
	adds r0, #1
	strb r0, [r6, #9]
	bl _0800D42C
	.align 2, 0
_0800CAC4: .4byte gSaveDataBuffer
_0800CAC8: .4byte 0x040000D4
_0800CACC: .4byte gUnknown_0813791C
_0800CAD0: .4byte 0x80000800
_0800CAD4: .4byte gUnknown_0814F0C4
_0800CAD8: .4byte 0x06013400
_0800CADC: .4byte gUnknown_081DE3A8
_0800CAE0: .4byte 0x05000320
_0800CAE4: .4byte 0x80000020
_0800CAE8: .4byte gOamObjects
_0800CAEC: .4byte 0x000003FF
_0800CAF0: .4byte gBG2MapBuffer
_0800CAF4: .4byte gIORegisters
_0800CAF8: .4byte 0x00003E01
_0800CAFC:
	ldr r4, _0800CB60 @ =gCourtRecord
	adds r0, r4, #0
	bl sub_8003FC4
	movs r6, #1
	ldrsb r6, [r4, r6]
	cmp r6, #0
	beq _0800CB10
	bl _0800D42C
_0800CB10:
	movs r5, #1
	mov r0, r8
	strb r5, [r0, #0x18]
	strb r5, [r0, #0x19]
	ldr r4, _0800CB64 @ =gScriptContext
	ldr r0, _0800CB68 @ =0x0000FFFF
	strh r0, [r4, #0x1e]
	mov r0, r8
	adds r0, #0xb3
	ldrb r0, [r0]
	adds r0, #7
	bl ChangeScriptSection
	movs r0, #9
	strh r0, [r4, #0x18]
	movs r0, #0x34
	strh r0, [r4, #0x1a]
	mov r0, r8
	adds r0, #0x80
	strh r6, [r0]
	adds r0, #2
	strb r5, [r0]
	adds r0, #1
	movs r2, #0x10
	strb r2, [r0]
	ldr r1, _0800CB6C @ =gIORegisters
	adds r3, r1, #0
	adds r3, #0x48
	movs r0, #0x84
	lsls r0, r0, #4
	strh r0, [r3]
	lsls r2, r2, #8
	adds r1, #0x4c
	strh r2, [r1]
	mov r1, r8
	ldrb r0, [r1, #9]
	adds r0, #1
	strb r0, [r1, #9]
	bl _0800D42C
	.align 2, 0
_0800CB60: .4byte gCourtRecord
_0800CB64: .4byte gScriptContext
_0800CB68: .4byte 0x0000FFFF
_0800CB6C: .4byte gIORegisters
_0800CB70:
	ldr r1, _0800CBA8 @ =gScriptContext
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800CC26
	movs r0, #1
	mov r2, r8
	ldrb r2, [r2, #0x1b]
	ands r0, r2
	ldr r1, _0800CBAC @ =gJoypad
	cmp r0, #0
	beq _0800CBB0
	movs r0, #0xc0
	ldrh r3, [r1, #2]
	ands r0, r3
	cmp r0, #0
	beq _0800CBB0
	movs r0, #0x2a
	bl PlaySE
	movs r0, #1
	mov r6, r8
	ldrb r6, [r6, #0x17]
	eors r0, r6
	mov r1, r8
	strb r0, [r1, #0x17]
	b _0800CC26
	.align 2, 0
_0800CBA8: .4byte gScriptContext
_0800CBAC: .4byte gJoypad
_0800CBB0:
	ldrh r1, [r1, #2]
	movs r5, #1
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0800CC04
	movs r0, #0x2b
	bl PlaySE
	movs r2, #0
	mov r3, r8
	strb r2, [r3, #0x18]
	strb r5, [r3, #0x19]
	adds r0, r4, #0
	ldrb r6, [r3, #0x1b]
	ands r0, r6
	cmp r0, #0
	bne _0800CBEA
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r0, #5
	mov r1, r8
	strb r0, [r1, #9]
	b _0800CC26
_0800CBEA:
	mov r0, r8
	adds r0, #0x80
	movs r1, #0
	strh r2, [r0]
	adds r0, #2
	strb r5, [r0]
	adds r0, #1
	strb r1, [r0]
	movs r0, #7
	mov r2, r8
	strb r0, [r2, #9]
	strb r1, [r2, #0xa]
	b _0800CC26
_0800CC04:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800CC26
	movs r0, #0x2c
	bl PlaySE
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	mov r3, r8
	ldrb r0, [r3, #9]
	adds r0, #3
	strb r0, [r3, #9]
_0800CC26:
	movs r0, #1
	mov r6, r8
	ldrb r6, [r6, #0x1b]
	ands r0, r6
	cmp r0, #0
	beq _0800CC98
	ldr r2, _0800CC6C @ =gOamObjects+0x130
	movs r7, #0
	ldr r0, _0800CC70 @ =0x0000A1A0
	mov sl, r0
	ldr r1, _0800CC74 @ =0x0000C038
	mov sb, r1
_0800CC3E:
	movs r5, #0
	adds r3, r7, #1
	mov ip, r3
	lsls r0, r7, #5
	lsls r1, r7, #6
	ldr r6, _0800CC78 @ =0x00004462
	adds r0, r0, r6
	str r0, [sp, #4]
	mov r0, sl
	adds r4, r1, r0
	ldr r6, _0800CC7C @ =0x000091A0
	adds r3, r1, r6
	mov r1, sb
_0800CC58:
	mov r0, sp
	ldrh r0, [r0, #4]
	strh r0, [r2]
	strh r1, [r2, #2]
	mov r6, r8
	ldrb r0, [r6, #0x17]
	cmp r0, r7
	bne _0800CC80
	strh r3, [r2, #4]
	b _0800CC82
	.align 2, 0
_0800CC6C: .4byte gOamObjects+0x130
_0800CC70: .4byte 0x0000A1A0
_0800CC74: .4byte 0x0000C038
_0800CC78: .4byte 0x00004462
_0800CC7C: .4byte 0x000091A0
_0800CC80:
	strh r4, [r2, #4]
_0800CC82:
	adds r2, #8
	adds r4, #0x20
	adds r3, #0x20
	adds r1, #0x40
	adds r5, #1
	cmp r5, #1
	bls _0800CC58
	mov r7, ip
	cmp r7, #1
	bls _0800CC3E
	b _0800CCB4
_0800CC98:
	ldr r2, _0800CCF0 @ =gOamObjects+0x130
	movs r5, #0
	ldr r3, _0800CCF4 @ =0x00004462
	ldr r1, _0800CCF8 @ =0x0000C038
	ldr r0, _0800CCFC @ =0x000091E0
_0800CCA2:
	strh r3, [r2]
	strh r1, [r2, #2]
	strh r0, [r2, #4]
	adds r2, #8
	adds r1, #0x40
	adds r0, #0x20
	adds r5, #1
	cmp r5, #1
	bls _0800CCA2
_0800CCB4:
	mov r0, r8
	ldrb r0, [r0, #9]
	cmp r0, #3
	beq _0800CCBE
	b _0800D42C
_0800CCBE:
	mov r3, r8
	adds r3, #0x83
	ldrb r0, [r3]
	cmp r0, #0
	bne _0800CCCA
	b _0800D42C
_0800CCCA:
	mov r2, r8
	adds r2, #0x80
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	mov r1, r8
	adds r1, #0x82
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	bhs _0800CCE4
	b _0800D41C
_0800CCE4:
	movs r0, #0
	strh r0, [r2]
	ldrb r0, [r3]
	subs r0, #1
	b _0800D41A
	.align 2, 0
_0800CCF0: .4byte gOamObjects+0x130
_0800CCF4: .4byte 0x00004462
_0800CCF8: .4byte 0x0000C038
_0800CCFC: .4byte 0x000091E0
_0800CD00:
	mov r0, r8
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800CD0C
	b _0800D42C
_0800CD0C:
	bl HideAllSprites
	bl InitBGs
	bl ResetAnimationSystem
	bl ResetSoundControl
	bl LoadCurrentScriptIntoRam
	ldr r6, _0800CE2C @ =0x040000D4
	ldr r0, _0800CE30 @ =gUnknown_081370FC
	str r0, [r6]
	ldr r0, _0800CE34 @ =0x06003800
	str r0, [r6, #4]
	ldr r1, _0800CE38 @ =0x80000400
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800CE3C @ =gUnknown_0813791C
	str r0, [r6]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r6, #4]
	ldr r2, _0800CE40 @ =0x80000800
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	ldr r5, _0800CE44 @ =gUnknown_081378FC
	str r5, [r6]
	ldr r0, _0800CE48 @ =0x05000240
	str r0, [r6, #4]
	ldr r3, _0800CE4C @ =0x80000010
	mov sb, r3
	str r3, [r6, #8]
	ldr r0, [r6, #8]
	movs r0, #0
	bl sub_80035B0
	adds r7, r0, #0
	str r7, [r6]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r6, #4]
	ldr r7, _0800CE50 @ =0x80000100
	str r7, [r6, #8]
	ldr r0, [r6, #8]
	ldr r4, _0800CE54 @ =gUnknown_02000034
	str r4, [r6]
	ldr r0, _0800CE58 @ =gMain
	str r0, [r6, #4]
	ldr r0, _0800CE5C @ =0x80000160
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	str r5, [r6]
	str r1, [r6, #4]
	mov r0, sb
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	bl LoadCurrentScriptIntoRam
	ldr r0, _0800CE60 @ =gUnknown_0814DC60
	str r0, [r6]
	ldr r0, _0800CE64 @ =0x05000300
	str r0, [r6, #4]
	mov r1, sb
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	movs r2, #0xb8
	lsls r2, r2, #3
	adds r0, r4, r2
	str r0, [r6]
	ldr r0, _0800CE68 @ =gTalkData
	str r0, [r6, #4]
	ldr r0, _0800CE6C @ =0x80000140
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	movs r3, #0x84
	lsls r3, r3, #4
	adds r0, r4, r3
	str r0, [r6]
	ldr r0, _0800CE70 @ =gUnknown_03003B70
	str r0, [r6, #4]
	ldr r0, _0800CE74 @ =0x80000014
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800CE78 @ =0x00002808
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_801492C
	mov r1, r8
	ldrb r1, [r1, #8]
	cmp r1, #4
	bne _0800CEBA
	ldr r0, _0800CE7C @ =gUnknown_081400FC
	str r0, [r6]
	ldr r0, _0800CE80 @ =0x06012000
	str r0, [r6, #4]
	ldr r2, _0800CE40 @ =0x80000800
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800CE84 @ =gUnknown_0814DBA0
	str r0, [r6]
	ldr r0, _0800CE88 @ =0x050002A0
	str r0, [r6, #4]
	ldr r1, _0800CE8C @ =0x80000020
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800CE90 @ =gUnknown_081412FC
	str r0, [r6]
	ldr r0, _0800CE94 @ =0x06013000
	str r0, [r6, #4]
	str r7, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800CE98 @ =gUnknown_0814DC00
	str r0, [r6]
	ldr r0, _0800CE9C @ =0x050002E0
	str r0, [r6, #4]
	mov r3, sb
	str r3, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800CEA0 @ =gUnknown_081426FC
	str r0, [r6]
	ldr r0, _0800CEA4 @ =0x06013200
	str r0, [r6, #4]
	str r7, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800CEA8 @ =gUnknown_081DE3A8
	str r0, [r6]
	ldr r0, _0800CEAC @ =0x05000320
	str r0, [r6, #4]
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	mov r6, r8
	ldrb r6, [r6, #0xa]
	cmp r6, #3
	beq _0800CE1E
	b _0800CF42
_0800CE1E:
	mov r1, r8
	ldrb r0, [r1, #9]
	cmp r0, #7
	bne _0800CEB0
	bl sub_8011578
	b _0800CF42
	.align 2, 0
_0800CE2C: .4byte 0x040000D4
_0800CE30: .4byte gUnknown_081370FC
_0800CE34: .4byte 0x06003800
_0800CE38: .4byte 0x80000400
_0800CE3C: .4byte gUnknown_0813791C
_0800CE40: .4byte 0x80000800
_0800CE44: .4byte gUnknown_081378FC
_0800CE48: .4byte 0x05000240
_0800CE4C: .4byte 0x80000010
_0800CE50: .4byte 0x80000100
_0800CE54: .4byte gUnknown_02000034
_0800CE58: .4byte gMain
_0800CE5C: .4byte 0x80000160
_0800CE60: .4byte gUnknown_0814DC60
_0800CE64: .4byte 0x05000300
_0800CE68: .4byte gTalkData
_0800CE6C: .4byte 0x80000140
_0800CE70: .4byte gUnknown_03003B70
_0800CE74: .4byte 0x80000014
_0800CE78: .4byte 0x00002808
_0800CE7C: .4byte gUnknown_081400FC
_0800CE80: .4byte 0x06012000
_0800CE84: .4byte gUnknown_0814DBA0
_0800CE88: .4byte 0x050002A0
_0800CE8C: .4byte 0x80000020
_0800CE90: .4byte gUnknown_081412FC
_0800CE94: .4byte 0x06013000
_0800CE98: .4byte gUnknown_0814DC00
_0800CE9C: .4byte 0x050002E0
_0800CEA0: .4byte gUnknown_081426FC
_0800CEA4: .4byte 0x06013200
_0800CEA8: .4byte gUnknown_081DE3A8
_0800CEAC: .4byte 0x05000320
_0800CEB0:
	cmp r0, #8
	bne _0800CF42
	bl sub_80115D4
	b _0800CF42
_0800CEBA:
	ldr r0, _0800CEEC @ =gUnknown_08231BE8
	str r0, [r6]
	ldr r0, _0800CEF0 @ =0x050002C0
	str r0, [r6, #4]
	mov r2, sb
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	mov r3, r8
	ldrb r0, [r3, #8]
	cmp r0, #5
	bne _0800CF08
	ldr r0, _0800CEF4 @ =gUnknown_081414FC
	str r0, [r6]
	ldr r0, _0800CEF8 @ =0x06013000
	str r0, [r6, #4]
	ldr r0, _0800CEFC @ =0x80000400
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800CF00 @ =gUnknown_0814DC20
	str r0, [r6]
	ldr r0, _0800CF04 @ =0x050002A0
	str r0, [r6, #4]
	str r2, [r6, #8]
	b _0800CF40
	.align 2, 0
_0800CEEC: .4byte gUnknown_08231BE8
_0800CEF0: .4byte 0x050002C0
_0800CEF4: .4byte gUnknown_081414FC
_0800CEF8: .4byte 0x06013000
_0800CEFC: .4byte 0x80000400
_0800CF00: .4byte gUnknown_0814DC20
_0800CF04: .4byte 0x050002A0
_0800CF08:
	cmp r0, #6
	bne _0800CF42
	ldr r0, _0800CFE4 @ =gUnknown_08141CFC
	str r0, [r6]
	ldr r0, _0800CFE8 @ =0x06013000
	str r0, [r6, #4]
	ldr r0, _0800CFEC @ =0x80000200
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800CFF0 @ =gUnknown_0814DC40
	str r0, [r6]
	ldr r0, _0800CFF4 @ =0x050002A0
	str r0, [r6, #4]
	mov r1, sb
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800CFF8 @ =gGfx4bppTestimonyArrows
	str r0, [r6]
	ldr r0, _0800CFFC @ =0x06013400
	str r0, [r6, #4]
	ldr r1, _0800D000 @ =0x80000040
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800D004 @ =gUnknown_0813DAFC
	str r0, [r6]
	ldr r0, _0800D008 @ =0x06013480
	str r0, [r6, #4]
	str r1, [r6, #8]
_0800CF40:
	ldr r0, [r6, #8]
_0800CF42:
	ldr r4, _0800D00C @ =0x040000D4
	ldr r5, _0800D010 @ =gUnknown_02000D3C
	str r5, [r4]
	ldr r0, _0800D014 @ =gTextBoxCharacters
	str r0, [r4, #4]
	ldr r0, _0800D018 @ =0x8000017A
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	bl RedrawTextboxCharacters
	ldr r2, _0800D01C @ =0xFFFFF60C
	adds r0, r5, r2
	str r0, [r4]
	ldr r0, _0800D020 @ =gScriptContext
	str r0, [r4, #4]
	ldr r0, _0800D024 @ =0x80000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r3, _0800D028 @ =0xFFFFF5B8
	adds r0, r5, r3
	str r0, [r4]
	ldr r0, _0800D02C @ =gIORegisters
	str r0, [r4, #4]
	ldr r0, _0800D030 @ =0x8000002A
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r6, _0800D034 @ =0xFFFFF64C
	adds r0, r5, r6
	str r0, [r4]
	ldr r0, _0800D038 @ =gCourtRecord
	str r0, [r4, #4]
	ldr r0, _0800D03C @ =0x8000002C
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _0800D040 @ =0xFFFFF6BC
	adds r0, r5, r1
	str r0, [r4]
	ldr r0, _0800D044 @ =gInvestigation
	str r0, [r4, #4]
	ldr r0, _0800D048 @ =0x8000000E
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r2, #0xa8
	adds r0, r5, r2
	str r0, [r4]
	ldr r0, _0800D04C @ =gTestimony
	str r0, [r4, #4]
	ldr r0, _0800D050 @ =0x80000004
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r3, #0xec
	adds r0, r5, r3
	str r0, [r4]
	ldr r0, _0800D054 @ =gCourtScroll
	str r0, [r4, #4]
	ldr r0, _0800D058 @ =0x80000008
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r6, #0x8c
	adds r5, r5, r6
	str r5, [r4]
	ldr r0, _0800D05C @ =gExaminationData
	str r0, [r4, #4]
	ldr r0, _0800D060 @ =0x800000F0
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r0, r8
	bl sub_8007D5C
	mov r0, r8
	adds r0, #0xb3
	ldrb r0, [r0]
	cmp r0, #0x15
	bls _0800CFD8
	b _0800D0D6
_0800CFD8:
	lsls r0, r0, #2
	ldr r1, _0800D064 @ =_0800D068
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800CFE4: .4byte gUnknown_08141CFC
_0800CFE8: .4byte 0x06013000
_0800CFEC: .4byte 0x80000200
_0800CFF0: .4byte gUnknown_0814DC40
_0800CFF4: .4byte 0x050002A0
_0800CFF8: .4byte gGfx4bppTestimonyArrows
_0800CFFC: .4byte 0x06013400
_0800D000: .4byte 0x80000040
_0800D004: .4byte gUnknown_0813DAFC
_0800D008: .4byte 0x06013480
_0800D00C: .4byte 0x040000D4
_0800D010: .4byte gUnknown_02000D3C
_0800D014: .4byte gTextBoxCharacters
_0800D018: .4byte 0x8000017A
_0800D01C: .4byte 0xFFFFF60C
_0800D020: .4byte gScriptContext
_0800D024: .4byte 0x80000020
_0800D028: .4byte 0xFFFFF5B8
_0800D02C: .4byte gIORegisters
_0800D030: .4byte 0x8000002A
_0800D034: .4byte 0xFFFFF64C
_0800D038: .4byte gCourtRecord
_0800D03C: .4byte 0x8000002C
_0800D040: .4byte 0xFFFFF6BC
_0800D044: .4byte gInvestigation
_0800D048: .4byte 0x8000000E
_0800D04C: .4byte gTestimony
_0800D050: .4byte 0x80000004
_0800D054: .4byte gCourtScroll
_0800D058: .4byte 0x80000008
_0800D05C: .4byte gExaminationData
_0800D060: .4byte 0x800000F0
_0800D064: .4byte _0800D068
_0800D068: @ jump table
	.4byte _0800D0C0 @ case 0
	.4byte _0800D0C0 @ case 1
	.4byte _0800D0C6 @ case 2
	.4byte _0800D0C6 @ case 3
	.4byte _0800D0C6 @ case 4
	.4byte _0800D0C6 @ case 5
	.4byte _0800D0C6 @ case 6
	.4byte _0800D0C6 @ case 7
	.4byte _0800D0CC @ case 8
	.4byte _0800D0CC @ case 9
	.4byte _0800D0CC @ case 10
	.4byte _0800D0CC @ case 11
	.4byte _0800D0CC @ case 12
	.4byte _0800D0CC @ case 13
	.4byte _0800D0D2 @ case 14
	.4byte _0800D0D2 @ case 15
	.4byte _0800D0D2 @ case 16
	.4byte _0800D0D2 @ case 17
	.4byte _0800D0D2 @ case 18
	.4byte _0800D0D2 @ case 19
	.4byte _0800D0D2 @ case 20
	.4byte _0800D0D2 @ case 21
_0800D0C0:
	movs r0, #1
	mov sl, r0
	b _0800D0D6
_0800D0C6:
	movs r1, #2
	mov sl, r1
	b _0800D0D6
_0800D0CC:
	movs r2, #4
	mov sl, r2
	b _0800D0D6
_0800D0D2:
	movs r3, #8
	mov sl, r3
_0800D0D6:
	mov r0, r8
	adds r0, #0xb4
	ldrb r0, [r0]
	lsrs r0, r0, #4
	mov r6, sl
	ands r6, r0
	mov sl, r6
	ldr r7, _0800D200 @ =gUnknown_0200089C
	ldr r6, _0800D204 @ =gMapMarker
	movs r0, #0x8b
	add r0, r8
	mov sb, r0
	mov r1, r8
	adds r1, #0x23
	str r1, [sp]
	mov r2, sl
	cmp r2, #0
	beq _0800D116
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #1
	add r2, r8
	movs r3, #1
	rsbs r3, r3, #0
_0800D106:
	lsls r0, r1, #2
	adds r0, r2, r0
	str r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #7
	bls _0800D106
_0800D116:
	ldr r5, _0800D208 @ =0x040000D4
	adds r4, r7, #0
	str r4, [r5]
	str r6, [r5, #4]
	ldr r0, _0800D20C @ =0x80000050
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	bl sub_8009934
	ldr r6, _0800D210 @ =gScriptContext
	adds r0, r6, #0
	adds r0, #0x34
	ldrb r2, [r0]
	movs r0, #0x7f
	ands r0, r2
	movs r1, #0x80
	ands r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl SetTextboxNametag
	movs r3, #0xfa
	lsls r3, r3, #4
	adds r0, r4, r3
	str r0, [r5]
	ldr r0, _0800D214 @ =gBG1MapBuffer
	str r0, [r5, #4]
	ldr r1, _0800D218 @ =0x80000400
	str r1, [r5, #8]
	ldr r0, [r5, #8]
	movs r0, #0xf4
	lsls r0, r0, #3
	adds r4, r4, r0
	str r4, [r5]
	ldr r0, _0800D21C @ =gBG0MapBuffer
	str r0, [r5, #4]
	str r1, [r5, #8]
	ldr r0, [r5, #8]
	mov r1, r8
	ldrh r0, [r1, #0x2e]
	bl sub_8002820
	mov r2, r8
	ldrh r0, [r2, #0x2e]
	bl sub_800342C
	movs r0, #4
	ldrh r3, [r6]
	ands r0, r3
	cmp r0, #0
	beq _0800D18A
	ldr r0, _0800D220 @ =gCharSet+0x7100
	str r0, [r5]
	ldr r0, _0800D224 @ =0x06011F80
	str r0, [r5, #4]
	ldr r0, _0800D228 @ =0x80000040
	str r0, [r5, #8]
	ldr r0, [r5, #8]
_0800D18A:
	movs r0, #0x80
	lsls r0, r0, #3
	ldrh r6, [r6]
	ands r0, r6
	cmp r0, #0
	beq _0800D1A4
	ldr r0, _0800D22C @ =gUnknown_081426FC
	str r0, [r5]
	ldr r0, _0800D224 @ =0x06011F80
	str r0, [r5, #4]
	ldr r0, _0800D228 @ =0x80000040
	str r0, [r5, #8]
	ldr r0, [r5, #8]
_0800D1A4:
	adds r0, r7, #0
	adds r0, #0xa0
	str r0, [r5]
	ldr r0, _0800D230 @ =gOamObjects
	str r0, [r5, #4]
	ldr r0, _0800D234 @ =0x80000200
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r1, _0800D238 @ =gJoypad
	movs r0, #0
	strh r0, [r1, #6]
	strh r0, [r1, #4]
	strh r0, [r1, #2]
	strh r0, [r1]
	movs r0, #0x30
	movs r1, #0xf
	bl SetTimedKeysAndDelay
	mov r6, sb
	ldrb r6, [r6]
	cmp r6, #3
	bls _0800D1D6
	mov r0, r8
	bl sub_8013508
_0800D1D6:
	ldr r0, [sp]
	ldrb r1, [r0]
	movs r0, #0x14
	bl FadeInBGM
	ldr r0, _0800D23C @ =gMain
	ldr r1, _0800D240 @ =0x000002BE
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800D278
	lsrs r0, r1, #4
	cmp r0, #1
	beq _0800D25A
	cmp r0, #1
	bgt _0800D244
	cmp r0, #0
	beq _0800D24A
	b _0800D278
	.align 2, 0
_0800D200: .4byte gUnknown_0200089C
_0800D204: .4byte gMapMarker
_0800D208: .4byte 0x040000D4
_0800D20C: .4byte 0x80000050
_0800D210: .4byte gScriptContext
_0800D214: .4byte gBG1MapBuffer
_0800D218: .4byte 0x80000400
_0800D21C: .4byte gBG0MapBuffer
_0800D220: .4byte gCharSet+0x7100
_0800D224: .4byte 0x06011F80
_0800D228: .4byte 0x80000040
_0800D22C: .4byte gUnknown_081426FC
_0800D230: .4byte gOamObjects
_0800D234: .4byte 0x80000200
_0800D238: .4byte gJoypad
_0800D23C: .4byte gMain
_0800D240: .4byte 0x000002BE
_0800D244:
	cmp r0, #2
	beq _0800D26A
	b _0800D278
_0800D24A:
	bl sub_800E7B0
	movs r0, #0x18
	movs r1, #0x80
	movs r2, #1
	bl sub_800E7EC
	b _0800D278
_0800D25A:
	bl sub_800E8C4
	movs r0, #0
	movs r1, #0x80
	movs r2, #1
	bl sub_800E900
	b _0800D278
_0800D26A:
	bl sub_800E8C4
	movs r0, #0x20
	movs r1, #0x80
	movs r2, #1
	bl sub_800E9D4
_0800D278:
	ldr r0, _0800D290 @ =gMain
	ldr r2, _0800D294 @ =0x000002BA
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0
	beq _0800D288
	bl PlaySE
_0800D288:
	movs r0, #1
	movs r1, #1
	b _0800D33E
	.align 2, 0
_0800D290: .4byte gMain
_0800D294: .4byte 0x000002BA
_0800D298:
	mov r0, r8
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800D2A4
	b _0800D42C
_0800D2A4:
	mov r0, r8
	bl sub_8007D30
	ldr r2, _0800D2D4 @ =gMain
	ldr r0, _0800D2D8 @ =gSaveDataBuffer
	adds r0, #0xe4
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0xb0
	strh r1, [r0]
	subs r0, #0x16
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	ldr r0, _0800D2DC @ =gCaseStartProcess
	mov r1, r8
	adds r1, #0xb3
	ldrb r1, [r1]
	adds r0, r1, r0
	ldrb r0, [r0]
	mov r3, r8
	str r0, [r3, #8]
	b _0800D42C
	.align 2, 0
_0800D2D4: .4byte gMain
_0800D2D8: .4byte gSaveDataBuffer
_0800D2DC: .4byte gCaseStartProcess
_0800D2E0:
	mov r0, r8
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800D2EC
	b _0800D42C
_0800D2EC:
	movs r0, #1
	mov r6, r8
	str r0, [r6, #8]
	b _0800D42C
_0800D2F4:
	mov r1, r8
	ldrb r0, [r1, #0xa]
	adds r0, #1
	strb r0, [r1, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x2f
	bls _0800D34C
	ldrb r0, [r1, #0x17]
	adds r1, r0, #0
	cmp r1, #0
	bne _0800D314
	movs r0, #4
	mov r2, r8
	strb r0, [r2, #9]
	b _0800D31A
_0800D314:
	movs r0, #5
	mov r3, r8
	strb r0, [r3, #9]
_0800D31A:
	movs r0, #0
	mov r6, r8
	strb r0, [r6, #0xa]
	ldr r2, _0800D348 @ =gOamObjects+0x130
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0800D32A
	adds r2, #0x10
_0800D32A:
	movs r7, #0
	movs r0, #0x80
	lsls r0, r0, #2
_0800D330:
	strh r0, [r2]
	adds r2, #8
	adds r7, #1
	cmp r7, #1
	bls _0800D330
	movs r0, #2
	movs r1, #0
_0800D33E:
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	b _0800D42C
	.align 2, 0
_0800D348: .4byte gOamObjects+0x130
_0800D34C:
	movs r0, #1
	mov r1, r8
	ldrb r1, [r1, #0x1b]
	ands r0, r1
	cmp r0, #0
	beq _0800D3CC
	ldr r2, _0800D394 @ =gOamObjects+0x130
	movs r7, #0
_0800D35C:
	movs r5, #0
	adds r3, r7, #1
	mov ip, r3
	lsls r0, r7, #5
	lsls r1, r7, #6
	ldr r6, _0800D398 @ =0x00004062
	adds r6, r6, r0
	mov sl, r6
	ldr r3, _0800D39C @ =0x00004462
	adds r3, r3, r0
	mov sb, r3
	movs r4, #0
	ldr r6, _0800D3A0 @ =0x000091A0
	adds r3, r1, r6
	ldr r0, _0800D3A4 @ =0x0000A1A0
	adds r1, r1, r0
	str r1, [sp, #4]
	ldr r1, _0800D3A8 @ =0x0000C038
_0800D380:
	strh r1, [r2, #2]
	mov r6, r8
	ldrb r0, [r6, #0x17]
	cmp r0, r7
	bne _0800D3AC
	mov r0, sl
	strh r0, [r2]
	strh r3, [r2, #4]
	b _0800D3B6
	.align 2, 0
_0800D394: .4byte gOamObjects+0x130
_0800D398: .4byte 0x00004062
_0800D39C: .4byte 0x00004462
_0800D3A0: .4byte 0x000091A0
_0800D3A4: .4byte 0x0000A1A0
_0800D3A8: .4byte 0x0000C038
_0800D3AC:
	mov r6, sb
	strh r6, [r2]
	ldr r6, [sp, #4]
	adds r0, r4, r6
	strh r0, [r2, #4]
_0800D3B6:
	adds r2, #8
	adds r4, #0x20
	adds r3, #0x20
	adds r1, #0x40
	adds r5, #1
	cmp r5, #1
	bls _0800D380
	mov r7, ip
	cmp r7, #1
	bls _0800D35C
	b _0800D3E8
_0800D3CC:
	ldr r2, _0800D43C @ =gOamObjects+0x130
	movs r5, #0
	ldr r3, _0800D440 @ =0x00004062
	ldr r1, _0800D444 @ =0x0000C038
	ldr r0, _0800D448 @ =0x000091E0
_0800D3D6:
	strh r3, [r2]
	strh r1, [r2, #2]
	strh r0, [r2, #4]
	adds r2, #8
	adds r1, #0x40
	adds r0, #0x20
	adds r5, #1
	cmp r5, #1
	bls _0800D3D6
_0800D3E8:
	mov r0, r8
	ldrb r0, [r0, #9]
	cmp r0, #7
	bne _0800D42C
	mov r3, r8
	adds r3, #0x83
	ldrb r1, [r3]
	cmp r1, #0xf
	bhi _0800D42C
	mov r2, r8
	adds r2, #0x80
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	mov r1, r8
	adds r1, #0x82
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	blo _0800D41C
	movs r0, #0
	strh r0, [r2]
	ldrb r0, [r3]
	adds r0, #1
_0800D41A:
	strb r0, [r3]
_0800D41C:
	ldr r2, _0800D44C @ =gIORegisters
	ldrb r3, [r3]
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	adds r2, #0x4c
	strh r1, [r2]
_0800D42C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D43C: .4byte gOamObjects+0x130
_0800D440: .4byte 0x00004062
_0800D444: .4byte 0x0000C038
_0800D448: .4byte 0x000091E0
_0800D44C: .4byte gIORegisters

	thumb_func_start sub_800D450
sub_800D450: @ 0x0800D450
	push {r4, lr}
	ldr r2, _0800D46C @ =gMain
	movs r3, #1
	adds r0, r2, #0
	adds r0, #0xb3
	ldrb r0, [r0]
	cmp r0, #0x15
	bhi _0800D50C
	lsls r0, r0, #2
	ldr r1, _0800D470 @ =_0800D474
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800D46C: .4byte gMain
_0800D470: .4byte _0800D474
_0800D474: @ jump table
	.4byte _0800D4CC @ case 0
	.4byte _0800D4CC @ case 1
	.4byte _0800D4DC @ case 2
	.4byte _0800D4DC @ case 3
	.4byte _0800D4DC @ case 4
	.4byte _0800D4DC @ case 5
	.4byte _0800D4DC @ case 6
	.4byte _0800D4DC @ case 7
	.4byte _0800D4EC @ case 8
	.4byte _0800D4EC @ case 9
	.4byte _0800D4EC @ case 10
	.4byte _0800D4EC @ case 11
	.4byte _0800D4EC @ case 12
	.4byte _0800D4EC @ case 13
	.4byte _0800D4FC @ case 14
	.4byte _0800D4FC @ case 15
	.4byte _0800D4FC @ case 16
	.4byte _0800D4FC @ case 17
	.4byte _0800D4FC @ case 18
	.4byte _0800D4FC @ case 19
	.4byte _0800D4FC @ case 20
	.4byte _0800D4FC @ case 21
_0800D4CC:
	adds r0, r2, #0
	adds r0, #0xb4
	movs r1, #1
	ldrb r3, [r0]
	orrs r1, r3
	strb r1, [r0]
	movs r3, #1
	b _0800D518
_0800D4DC:
	adds r0, r2, #0
	adds r0, #0xb4
	movs r1, #2
	ldrb r4, [r0]
	orrs r1, r4
	strb r1, [r0]
	movs r3, #2
	b _0800D518
_0800D4EC:
	adds r0, r2, #0
	adds r0, #0xb4
	movs r1, #4
	ldrb r3, [r0]
	orrs r1, r3
	strb r1, [r0]
	movs r3, #4
	b _0800D518
_0800D4FC:
	adds r0, r2, #0
	adds r0, #0xb4
	movs r1, #8
	ldrb r4, [r0]
	orrs r1, r4
	strb r1, [r0]
	movs r3, #8
	b _0800D518
_0800D50C:
	adds r0, r2, #0
	adds r0, #0xb4
	movs r1, #1
	ldrb r4, [r0]
	orrs r1, r4
	strb r1, [r0]
_0800D518:
	ldrb r0, [r0]
	lsrs r0, r0, #4
	ands r3, r0
	cmp r3, #0
	beq _0800D53E
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r3, #1
	rsbs r3, r3, #0
_0800D52E:
	lsls r0, r1, #2
	adds r0, r2, r0
	str r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #7
	bls _0800D52E
_0800D53E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_800D544
sub_800D544: @ 0x0800D544
	push {lr}
	ldr r2, _0800D558 @ =gUnknown_08112318
	ldrb r3, [r0, #9]
	lsls r1, r3, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0800D558: .4byte gUnknown_08112318

	thumb_func_start sub_800D55C
sub_800D55C: @ 0x0800D55C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _0800D6BC @ =gIORegisters
	mov r8, r0
	mov r0, sp
	movs r5, #0
	strh r5, [r0]
	ldr r4, _0800D6C0 @ =0x040000D4
	str r0, [r4]
	ldr r0, _0800D6C4 @ =gTestimony
	str r0, [r4, #4]
	ldr r0, _0800D6C8 @ =0x81000004
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r0, sp
	strh r5, [r0]
	str r0, [r4]
	ldr r0, _0800D6CC @ =gInvestigation
	str r0, [r4, #4]
	ldr r0, _0800D6D0 @ =0x8100000E
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	bl HideAllSprites
	bl InitBGs
	bl ResetAnimationSystem
	bl LoadCurrentScriptIntoRam
	mov r7, r8
	adds r7, #0x4a
	movs r5, #0
	movs r0, #0xfa
	lsls r0, r0, #5
	strh r0, [r7]
	movs r0, #0xf0
	lsls r0, r0, #6
	mov r1, r8
	strh r0, [r1]
	ldr r0, _0800D6D4 @ =0x00003D01
	strh r0, [r1, #2]
	adds r0, #0xff
	strh r0, [r1, #4]
	ldr r0, _0800D6D8 @ =0x00003FC7
	strh r0, [r1, #6]
	ldr r0, _0800D6DC @ =gUnknown_081370FC
	str r0, [r4]
	ldr r0, _0800D6E0 @ =0x06003800
	str r0, [r4, #4]
	ldr r0, _0800D6E4 @ =0x80000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800D6E8 @ =gUnknown_0813791C
	str r0, [r4]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r0, _0800D6EC @ =0x80000800
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800D6F0 @ =gUnknown_0814DC60
	str r0, [r4]
	ldr r0, _0800D6F4 @ =0x05000300
	str r0, [r4, #4]
	ldr r1, _0800D6F8 @ =0x80000010
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800D6FC @ =gUnknown_081378FC
	str r0, [r4]
	ldr r0, _0800D700 @ =0x05000240
	str r0, [r4, #4]
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #1
	bl sub_8002820
	movs r0, #1
	bl CopyBGDataToVram
	movs r0, #0x80
	bl CopyBGDataToVram
	ldr r0, _0800D704 @ =0x0000FFAF
	mov r2, r8
	strh r0, [r2, #0xe]
	ldr r0, _0800D708 @ =0x0000FDFF
	ldrh r3, [r7]
	ands r0, r3
	strh r0, [r7]
	ldr r1, _0800D70C @ =gCourtRecord
	adds r0, r6, #0
	bl sub_8011688
	bl sub_80178E0
	str r5, [sp, #4]
	add r1, sp, #4
	str r1, [r4]
	adds r0, r6, #0
	adds r0, #0xbc
	str r0, [r4, #4]
	ldr r2, _0800D710 @ =0x85000008
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	adds r0, r6, #0
	adds r0, #0xdc
	str r5, [r0]
	str r5, [sp, #4]
	str r1, [r4]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r6, r3
	str r0, [r4, #4]
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	str r5, [sp, #4]
	str r1, [r4]
	movs r2, #0x97
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r4, #4]
	ldr r0, _0800D714 @ =0x85000006
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	str r5, [sp, #4]
	str r1, [r4]
	ldr r3, _0800D718 @ =0x00000276
	adds r0, r6, r3
	str r0, [r4, #4]
	ldr r0, _0800D71C @ =0x85000004
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _0800D720 @ =0x00000286
	adds r0, r6, r1
	strh r5, [r0]
	movs r0, #0xf
	strb r0, [r6, #0x1a]
	movs r0, #1
	strb r0, [r6, #0x18]
	strb r0, [r6, #0x19]
	ldr r1, _0800D724 @ =gScriptContext
	ldr r0, _0800D728 @ =0x0000FFFF
	strh r0, [r1, #0x1e]
	movs r0, #0x80
	bl ChangeScriptSection
	bl sub_800D450
	movs r0, #0x30
	movs r1, #0xf
	bl SetTimedKeysAndDelay
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r2, #0x4e
	add r8, r2
	movs r0, #0x10
	mov r3, r8
	strh r0, [r3]
	ldr r1, _0800D72C @ =gMain+0x8
	adds r0, #0xf3
	str r0, [r1]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D6BC: .4byte gIORegisters
_0800D6C0: .4byte 0x040000D4
_0800D6C4: .4byte gTestimony
_0800D6C8: .4byte 0x81000004
_0800D6CC: .4byte gInvestigation
_0800D6D0: .4byte 0x8100000E
_0800D6D4: .4byte 0x00003D01
_0800D6D8: .4byte 0x00003FC7
_0800D6DC: .4byte gUnknown_081370FC
_0800D6E0: .4byte 0x06003800
_0800D6E4: .4byte 0x80000400
_0800D6E8: .4byte gUnknown_0813791C
_0800D6EC: .4byte 0x80000800
_0800D6F0: .4byte gUnknown_0814DC60
_0800D6F4: .4byte 0x05000300
_0800D6F8: .4byte 0x80000010
_0800D6FC: .4byte gUnknown_081378FC
_0800D700: .4byte 0x05000240
_0800D704: .4byte 0x0000FFAF
_0800D708: .4byte 0x0000FDFF
_0800D70C: .4byte gCourtRecord
_0800D710: .4byte 0x85000008
_0800D714: .4byte 0x85000006
_0800D718: .4byte 0x00000276
_0800D71C: .4byte 0x85000004
_0800D720: .4byte 0x00000286
_0800D724: .4byte gScriptContext
_0800D728: .4byte 0x0000FFFF
_0800D72C: .4byte gMain+0x8

	thumb_func_start sub_800D730
sub_800D730: @ 0x0800D730
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800D82A
	ldr r1, _0800D7C0 @ =gJoypad
	movs r0, #8
	ldrh r2, [r1, #2]
	ands r0, r2
	adds r2, r1, #0
	cmp r0, #0
	beq _0800D7F0
	adds r5, r4, #0
	adds r5, #0xdc
	ldr r0, [r5]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800D7F0
	ldr r7, _0800D7C4 @ =gScriptContext
	movs r0, #5
	ldrh r3, [r7]
	ands r0, r3
	cmp r0, #0
	beq _0800D7F0
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800D7F0
	bl PauseBGM
	ldr r1, _0800D7C8 @ =0x040000D4
	ldr r0, _0800D7CC @ =gOamObjects
	str r0, [r1]
	ldr r2, _0800D7D0 @ =gUnknown_0200093C
	str r2, [r1, #4]
	ldr r0, _0800D7D4 @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r6, _0800D7D8 @ =gMain
	str r6, [r1]
	ldr r3, _0800D7DC @ =0xFFFFF6F8
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _0800D7E0 @ =0x80000160
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r7, #0x38]
	ldr r1, _0800D7E4 @ =0xFF0000FF
	ands r0, r1
	ldr r1, _0800D7E8 @ =0x01000002
	cmp r0, r1
	bne _0800D7A6
	ldr r0, _0800D7EC @ =0xFFFFF711
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
_0800D7A6:
	movs r0, #0x31
	bl PlaySE
	ldr r0, [r5]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5]
	ldr r0, [r6, #8]
	str r0, [r4, #0xc]
	movs r0, #0xa
	b _0800D828
	.align 2, 0
_0800D7C0: .4byte gJoypad
_0800D7C4: .4byte gScriptContext
_0800D7C8: .4byte 0x040000D4
_0800D7CC: .4byte gOamObjects
_0800D7D0: .4byte gUnknown_0200093C
_0800D7D4: .4byte 0x80000200
_0800D7D8: .4byte gMain
_0800D7DC: .4byte 0xFFFFF6F8
_0800D7E0: .4byte 0x80000160
_0800D7E4: .4byte 0xFF0000FF
_0800D7E8: .4byte 0x01000002
_0800D7EC: .4byte 0xFFFFF711
_0800D7F0:
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r2, [r2, #2]
	ands r0, r2
	cmp r0, #0
	beq _0800D82A
	adds r0, r4, #0
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800D82A
	ldr r1, _0800D830 @ =gScriptContext
	movs r0, #5
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800D82A
	bl sub_8017864
	movs r0, #0x31
	bl PlaySE
	ldr r0, _0800D834 @ =gMain+0x8
	ldr r0, [r0]
	str r0, [r4, #0xc]
	movs r0, #7
_0800D828:
	str r0, [r4, #8]
_0800D82A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D830: .4byte gScriptContext
_0800D834: .4byte gMain+0x8

	thumb_func_start sub_800D838
sub_800D838: @ 0x0800D838
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8007D30
	ldr r1, _0800D86C @ =0x040000D4
	ldr r0, _0800D870 @ =gMain
	str r0, [r1]
	ldr r0, _0800D874 @ =gUnknown_02000034
	str r0, [r1, #4]
	ldr r0, _0800D878 @ =0x80000160
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800D87C @ =0x0100000A
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb3
	ldrb r1, [r0]
	cmp r1, #2
	bne _0800D884
	adds r0, #1
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _0800D8B6
	ldr r0, _0800D880 @ =0x0100000B
	b _0800D8B4
	.align 2, 0
_0800D86C: .4byte 0x040000D4
_0800D870: .4byte gMain
_0800D874: .4byte gUnknown_02000034
_0800D878: .4byte 0x80000160
_0800D87C: .4byte 0x0100000A
_0800D880: .4byte 0x0100000B
_0800D884:
	cmp r1, #8
	bne _0800D8A0
	adds r1, r4, #0
	adds r1, #0xb4
	movs r0, #4
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800D8B6
	ldr r0, _0800D89C @ =gUnknown_0200000B
	b _0800D8B4
	.align 2, 0
_0800D89C: .4byte gUnknown_0200000B
_0800D8A0:
	cmp r1, #0xe
	bne _0800D8B6
	adds r1, r4, #0
	adds r1, #0xb4
	movs r0, #8
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800D8B6
	ldr r0, _0800D8BC @ =gBG2MapBuffer+0xB
_0800D8B4:
	str r0, [r4, #8]
_0800D8B6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D8BC: .4byte gBG2MapBuffer+0xB

	thumb_func_start sub_800D8C0
sub_800D8C0: @ 0x0800D8C0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	bls _0800D8CC
	b _0800DA00
_0800D8CC:
	lsls r0, r0, #2
	ldr r1, _0800D8D8 @ =_0800D8DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800D8D8: .4byte _0800D8DC
_0800D8DC: @ jump table
	.4byte _0800D8F0 @ case 0
	.4byte _0800D910 @ case 1
	.4byte _0800D964 @ case 2
	.4byte _0800D970 @ case 3
	.4byte _0800D9A0 @ case 4
_0800D8F0:
	movs r0, #0x24
	bl PlayAnimation
	movs r0, #0x25
	bl PlayAnimation
	movs r0, #0x53
	bl PlaySE
	ldr r0, _0800D90C @ =gTestimony
	movs r1, #0
	strb r1, [r0, #4]
	b _0800D998
	.align 2, 0
_0800D90C: .4byte gTestimony
_0800D910:
	movs r0, #0x24
	bl FindAnimationFromAnimId
	adds r4, r0, #0
	movs r0, #0x25
	bl FindAnimationFromAnimId
	adds r5, r0, #0
	ldrh r0, [r4, #0x10]
	adds r0, #0xa
	strh r0, [r4, #0x10]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4]
	ldrh r0, [r5, #0x10]
	subs r0, #0xa
	strh r0, [r5, #0x10]
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	cmp r0, #0x77
	ble _0800DA00
	movs r0, #3
	movs r1, #1
	movs r2, #8
	movs r3, #0x1f
	bl StartHardwareBlend
	adds r0, r4, #0
	bl DestroyAnimation
	adds r0, r5, #0
	bl DestroyAnimation
	movs r0, #0x22
	bl PlayAnimation
	b _0800D998
_0800D964:
	adds r0, r6, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800DA00
	b _0800D998
_0800D970:
	movs r0, #0x22
	bl FindAnimationFromAnimId
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	blt _0800DA00
	adds r0, r1, #0
	bl DestroyAnimation
	movs r0, #0x24
	movs r1, #0x78
	movs r2, #0x3c
	bl PlayAnimationAtCustomOrigin
	movs r0, #0x25
	movs r1, #0x78
	movs r2, #0x3c
	bl PlayAnimationAtCustomOrigin
_0800D998:
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	b _0800DA00
_0800D9A0:
	movs r0, #0x24
	bl FindAnimationFromAnimId
	adds r4, r0, #0
	movs r0, #0x25
	bl FindAnimationFromAnimId
	adds r5, r0, #0
	ldr r2, _0800DA08 @ =gTestimony
	ldrh r3, [r4, #0x10]
	ldrb r7, [r2, #4]
	adds r0, r3, r7
	strh r0, [r4, #0x10]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4]
	ldrh r3, [r5, #0x10]
	ldrb r7, [r2, #4]
	subs r0, r3, r7
	strh r0, [r5, #0x10]
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
	ldrb r0, [r2, #4]
	adds r0, #1
	strb r0, [r2, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc
	bls _0800D9E4
	movs r0, #0xc
	strb r0, [r2, #4]
_0800D9E4:
	movs r0, #0x10
	ldrsh r1, [r4, r0]
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	ble _0800DA00
	adds r0, r4, #0
	bl DestroyAnimation
	adds r0, r5, #0
	bl DestroyAnimation
	movs r0, #1
	strb r0, [r6, #9]
_0800DA00:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DA08: .4byte gTestimony

	thumb_func_start sub_800DA0C
sub_800DA0C: @ 0x0800DA0C
	push {lr}
	ldr r2, _0800DA20 @ =gUnknown_08112324
	ldrb r3, [r0, #9]
	lsls r1, r3, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0800DA20: .4byte gUnknown_08112324

	thumb_func_start sub_800DA24
sub_800DA24: @ 0x0800DA24
	ldr r2, _0800DA50 @ =0x040000D4
	ldr r1, _0800DA54 @ =gUnknown_081414FC
	str r1, [r2]
	ldr r1, _0800DA58 @ =0x06013000
	str r1, [r2, #4]
	ldr r1, _0800DA5C @ =0x80000400
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _0800DA60 @ =gUnknown_0814DC20
	str r1, [r2]
	ldr r1, _0800DA64 @ =0x050002A0
	str r1, [r2, #4]
	ldr r1, _0800DA68 @ =0x80000010
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r2, _0800DA6C @ =gTestimony
	movs r1, #0
	strb r1, [r2, #1]
	movs r1, #3
	strb r1, [r0, #9]
	bx lr
	.align 2, 0
_0800DA50: .4byte 0x040000D4
_0800DA54: .4byte gUnknown_081414FC
_0800DA58: .4byte 0x06013000
_0800DA5C: .4byte 0x80000400
_0800DA60: .4byte gUnknown_0814DC20
_0800DA64: .4byte 0x050002A0
_0800DA68: .4byte 0x80000010
_0800DA6C: .4byte gTestimony

	thumb_func_start sub_800DA70
sub_800DA70: @ 0x0800DA70
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800DA7E
	b _0800DBAA
_0800DA7E:
	ldr r1, _0800DAF8 @ =gJoypad
	movs r0, #8
	ldrh r2, [r1, #2]
	ands r0, r2
	adds r2, r1, #0
	cmp r0, #0
	beq _0800DB28
	adds r5, r4, #0
	adds r5, #0xdc
	ldr r0, [r5]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800DB28
	ldr r7, _0800DAFC @ =gScriptContext
	movs r0, #5
	ldrh r3, [r7]
	ands r0, r3
	cmp r0, #0
	beq _0800DB28
	bl PauseBGM
	ldr r1, _0800DB00 @ =0x040000D4
	ldr r0, _0800DB04 @ =gOamObjects
	str r0, [r1]
	ldr r2, _0800DB08 @ =gUnknown_0200093C
	str r2, [r1, #4]
	ldr r0, _0800DB0C @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r6, _0800DB10 @ =gMain
	str r6, [r1]
	ldr r3, _0800DB14 @ =0xFFFFF6F8
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _0800DB18 @ =0x80000160
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r7, #0x38]
	ldr r1, _0800DB1C @ =0xFF0000FF
	ands r0, r1
	ldr r1, _0800DB20 @ =0x01000002
	cmp r0, r1
	bne _0800DADE
	ldr r0, _0800DB24 @ =0xFFFFF711
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
_0800DADE:
	movs r0, #0x31
	bl PlaySE
	ldr r0, [r5]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5]
	ldr r0, [r6, #8]
	str r0, [r4, #0xc]
	movs r0, #0xa
	b _0800DB60
	.align 2, 0
_0800DAF8: .4byte gJoypad
_0800DAFC: .4byte gScriptContext
_0800DB00: .4byte 0x040000D4
_0800DB04: .4byte gOamObjects
_0800DB08: .4byte gUnknown_0200093C
_0800DB0C: .4byte 0x80000200
_0800DB10: .4byte gMain
_0800DB14: .4byte 0xFFFFF6F8
_0800DB18: .4byte 0x80000160
_0800DB1C: .4byte 0xFF0000FF
_0800DB20: .4byte 0x01000002
_0800DB24: .4byte 0xFFFFF711
_0800DB28:
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r2, [r2, #2]
	ands r0, r2
	cmp r0, #0
	beq _0800DB62
	adds r0, r4, #0
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800DB62
	ldr r1, _0800DB94 @ =gScriptContext
	movs r0, #5
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800DB62
	bl sub_8017864
	movs r0, #0x31
	bl PlaySE
	ldr r0, _0800DB98 @ =gMain+0x8
	ldr r0, [r0]
	str r0, [r4, #0xc]
	movs r0, #7
_0800DB60:
	str r0, [r4, #8]
_0800DB62:
	ldr r1, _0800DB9C @ =gTestimony
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x64
	bls _0800DB76
	movs r0, #0
	strb r0, [r1, #1]
_0800DB76:
	ldr r2, _0800DBA0 @ =gOamObjects+0x1C8
	ldrb r1, [r1, #1]
	cmp r1, #0x50
	bhi _0800DBA4
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r2]
	movs r0, #0xc0
	lsls r0, r0, #8
	strh r0, [r2, #2]
	movs r0, #0xb3
	lsls r0, r0, #7
	strh r0, [r2, #4]
	b _0800DBAA
	.align 2, 0
_0800DB94: .4byte gScriptContext
_0800DB98: .4byte gMain+0x8
_0800DB9C: .4byte gTestimony
_0800DBA0: .4byte gOamObjects+0x1C8
_0800DBA4:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
_0800DBAA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_800DBB0
sub_800DBB0: @ 0x0800DBB0
	ldr r2, _0800DBC0 @ =gOamObjects+0x1C8
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r2]
	subs r1, #0xfd
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_0800DBC0: .4byte gOamObjects+0x1C8

	thumb_func_start sub_800DBC4
sub_800DBC4: @ 0x0800DBC4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	bls _0800DBD0
	b _0800DCEE
_0800DBD0:
	lsls r0, r0, #2
	ldr r1, _0800DBDC @ =_0800DBE0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800DBDC: .4byte _0800DBE0
_0800DBE0: @ jump table
	.4byte _0800DBF4 @ case 0
	.4byte _0800DC0C @ case 1
	.4byte _0800DC64 @ case 2
	.4byte _0800DC74 @ case 3
	.4byte _0800DCA2 @ case 4
_0800DBF4:
	movs r0, #0x26
	bl PlayAnimation
	movs r0, #0x27
	bl PlayAnimation
	movs r0, #0x53
	bl PlaySE
	ldrb r0, [r6, #0xa]
	adds r0, #1
	b _0800DCEC
_0800DC0C:
	movs r0, #0x26
	bl FindAnimationFromAnimId
	adds r4, r0, #0
	movs r0, #0x27
	bl FindAnimationFromAnimId
	adds r5, r0, #0
	ldrh r0, [r4, #0x10]
	adds r0, #0xa
	strh r0, [r4, #0x10]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4]
	ldrh r0, [r5, #0x10]
	subs r0, #0xa
	strh r0, [r5, #0x10]
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	cmp r0, #0x77
	ble _0800DCEE
	movs r0, #3
	movs r1, #1
	movs r2, #8
	movs r3, #0x1f
	bl StartHardwareBlend
	adds r0, r4, #0
	bl DestroyAnimation
	adds r0, r5, #0
	bl DestroyAnimation
	movs r0, #0x23
	bl PlayAnimation
	ldrb r0, [r6, #0xa]
	adds r0, #1
	b _0800DCEC
_0800DC64:
	adds r0, r6, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800DCEE
	ldrb r0, [r6, #0xa]
	adds r0, #1
	b _0800DCEC
_0800DC74:
	movs r0, #0x23
	bl FindAnimationFromAnimId
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	blt _0800DCEE
	adds r0, r1, #0
	bl DestroyAnimation
	movs r0, #0x26
	movs r1, #0x78
	movs r2, #0x3c
	bl PlayAnimationAtCustomOrigin
	movs r0, #0x27
	movs r1, #0x78
	movs r2, #0x3c
	bl PlayAnimationAtCustomOrigin
	ldrb r0, [r6, #0xa]
	adds r0, #1
	b _0800DCEC
_0800DCA2:
	movs r0, #0x26
	bl FindAnimationFromAnimId
	adds r4, r0, #0
	movs r0, #0x27
	bl FindAnimationFromAnimId
	adds r5, r0, #0
	ldrh r0, [r4, #0x12]
	subs r0, #7
	strh r0, [r4, #0x12]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4]
	ldrh r0, [r5, #0x12]
	adds r0, #7
	strh r0, [r5, #0x12]
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
	movs r0, #0x12
	ldrsh r1, [r4, r0]
	movs r0, #0x3c
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0800DCEE
	adds r0, r4, #0
	bl DestroyAnimation
	adds r0, r5, #0
	bl DestroyAnimation
	movs r0, #1
	strb r0, [r6, #9]
	movs r0, #0
_0800DCEC:
	strb r0, [r6, #0xa]
_0800DCEE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_800DCF4
sub_800DCF4: @ 0x0800DCF4
	push {lr}
	ldr r2, _0800DD08 @ =gUnknown_08112334
	ldrb r3, [r0, #9]
	lsls r1, r3, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0800DD08: .4byte gUnknown_08112334

	thumb_func_start sub_800DD0C
sub_800DD0C: @ 0x0800DD0C
	push {lr}
	ldr r1, _0800DD74 @ =0x040000D4
	ldr r2, _0800DD78 @ =gUnknown_08141CFC
	str r2, [r1]
	ldr r2, _0800DD7C @ =0x06013000
	str r2, [r1, #4]
	ldr r2, _0800DD80 @ =0x80000200
	str r2, [r1, #8]
	ldr r2, [r1, #8]
	ldr r2, _0800DD84 @ =gUnknown_0814DC40
	str r2, [r1]
	ldr r2, _0800DD88 @ =0x050002A0
	str r2, [r1, #4]
	ldr r2, _0800DD8C @ =0x80000010
	str r2, [r1, #8]
	ldr r2, [r1, #8]
	ldr r2, _0800DD90 @ =gGfx4bppTestimonyArrows
	str r2, [r1]
	movs r2, #0xd0
	lsls r2, r2, #1
	str r2, [r1, #4]
	ldr r3, _0800DD94 @ =0x80000040
	str r3, [r1, #8]
	ldr r2, [r1, #8]
	ldr r2, _0800DD98 @ =gUnknown_0813DAFC
	str r2, [r1]
	movs r2, #0x88
	lsls r2, r2, #2
	str r2, [r1, #4]
	str r3, [r1, #8]
	ldr r1, [r1, #8]
	ldr r1, _0800DD9C @ =gScriptContext
	ldrh r1, [r1, #0x1e]
	movs r3, #0
	strh r1, [r0, #0x1c]
	ldr r1, _0800DDA0 @ =gCourtRecord
	strb r3, [r1, #9]
	ldrb r2, [r1, #8]
	adds r2, #1
	strb r2, [r1, #8]
	ldr r1, _0800DDA4 @ =gTestimony
	movs r2, #0xe0
	strb r2, [r1, #2]
	strb r2, [r1, #3]
	strb r3, [r1]
	movs r1, #3
	strb r1, [r0, #9]
	bl sub_80178E0
	pop {r0}
	bx r0
	.align 2, 0
_0800DD74: .4byte 0x040000D4
_0800DD78: .4byte gUnknown_08141CFC
_0800DD7C: .4byte 0x06013000
_0800DD80: .4byte 0x80000200
_0800DD84: .4byte gUnknown_0814DC40
_0800DD88: .4byte 0x050002A0
_0800DD8C: .4byte 0x80000010
_0800DD90: .4byte gGfx4bppTestimonyArrows
_0800DD94: .4byte 0x80000040
_0800DD98: .4byte gUnknown_0813DAFC
_0800DD9C: .4byte gScriptContext
_0800DDA0: .4byte gCourtRecord
_0800DDA4: .4byte gTestimony

	thumb_func_start sub_800DDA8
sub_800DDA8: @ 0x0800DDA8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800DDB6
	b _0800E00C
_0800DDB6:
	ldr r6, _0800DDD0 @ =gScriptContext
	ldrh r2, [r6]
	movs r0, #0xc0
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0800DDD8
	ldr r1, _0800DDD4 @ =gTestimony
	adds r0, r5, #0
	movs r2, #1
	bl sub_800E6D0
	b _0800E00C
	.align 2, 0
_0800DDD0: .4byte gScriptContext
_0800DDD4: .4byte gTestimony
_0800DDD8:
	ldr r0, _0800DE50 @ =gJoypad
	ldrh r1, [r0, #2]
	movs r3, #8
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0800DE7C
	adds r4, r5, #0
	adds r4, #0xdc
	ldr r0, [r4]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800DDF6
	b _0800DF84
_0800DDF6:
	movs r0, #0xd
	ands r0, r2
	cmp r0, #0
	bne _0800DE00
	b _0800DF84
_0800DE00:
	bl PauseBGM
	ldr r1, _0800DE54 @ =0x040000D4
	ldr r0, _0800DE58 @ =gOamObjects
	str r0, [r1]
	ldr r2, _0800DE5C @ =gUnknown_0200093C
	str r2, [r1, #4]
	ldr r0, _0800DE60 @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r7, _0800DE64 @ =gMain
	str r7, [r1]
	ldr r3, _0800DE68 @ =0xFFFFF6F8
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _0800DE6C @ =0x80000160
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r6, #0x38]
	ldr r1, _0800DE70 @ =0xFF0000FF
	ands r0, r1
	ldr r1, _0800DE74 @ =0x01000002
	cmp r0, r1
	bne _0800DE38
	ldr r0, _0800DE78 @ =0xFFFFF711
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
_0800DE38:
	movs r0, #0x31
	bl PlaySE
	ldr r0, [r4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	ldr r0, [r7, #8]
	str r0, [r5, #0xc]
	movs r0, #0xa
	b _0800DF82
	.align 2, 0
_0800DE50: .4byte gJoypad
_0800DE54: .4byte 0x040000D4
_0800DE58: .4byte gOamObjects
_0800DE5C: .4byte gUnknown_0200093C
_0800DE60: .4byte 0x80000200
_0800DE64: .4byte gMain
_0800DE68: .4byte 0xFFFFF6F8
_0800DE6C: .4byte 0x80000160
_0800DE70: .4byte 0xFF0000FF
_0800DE74: .4byte 0x01000002
_0800DE78: .4byte 0xFFFFF711
_0800DE7C:
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _0800DF50
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800DE9C
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800DEA0
	ldrh r1, [r6, #0x20]
	ldrh r2, [r5, #0x1e]
	cmp r1, r2
	beq _0800DF84
_0800DE9C:
	ldrh r4, [r6, #0x20]
	b _0800DEB4
_0800DEA0:
	movs r0, #0x22
	ands r0, r1
	cmp r0, #0
	beq _0800DEC6
	ldrh r0, [r6, #0x1e]
	subs r0, #1
	ldrh r3, [r5, #0x1c]
	cmp r0, r3
	beq _0800DF84
	adds r4, r0, #0
_0800DEB4:
	movs r0, #0x2b
	bl PlaySE
	adds r0, r4, #0
	bl ChangeScriptSection
	bl RunScriptContext
	b _0800DF84
_0800DEC6:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800DF28
	ldrh r0, [r6, #0x2c]
	cmp r0, #0
	beq _0800DF84
	movs r0, #1
	bl PlayAnimation
	movs r0, #0x47
	bl PlaySE
	movs r0, #3
	movs r1, #1
	movs r2, #4
	movs r3, #0x1f
	bl StartHardwareBlend
	ldr r1, _0800DF1C @ =gTestimony
	movs r0, #0x40
	strb r0, [r1, #1]
	movs r0, #0xe0
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	ldr r1, _0800DF20 @ =gIORegisters
	adds r1, #0x4a
	ldr r0, _0800DF24 @ =0x0000FDFF
	ldrh r2, [r1]
	ands r0, r2
	movs r4, #0
	strh r0, [r1]
	strb r4, [r5, #0x18]
	strb r4, [r5, #0x19]
	movs r0, #0
	movs r1, #0
	bl SetTextboxNametag
	movs r0, #4
	strb r0, [r5, #9]
	strb r4, [r5, #0xa]
	b _0800E00C
	.align 2, 0
_0800DF1C: .4byte gTestimony
_0800DF20: .4byte gIORegisters
_0800DF24: .4byte 0x0000FDFF
_0800DF28:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800DF84
	bl sub_8017864
	movs r0, #0x31
	bl PlaySE
	ldr r0, _0800DF48 @ =gMain+0x8
	ldr r0, [r0]
	str r0, [r5, #0xc]
	ldr r0, _0800DF4C @ =0x01000007
	b _0800DF82
	.align 2, 0
_0800DF48: .4byte gMain+0x8
_0800DF4C: .4byte 0x01000007
_0800DF50:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800DF84
	adds r0, r5, #0
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800DF84
	movs r0, #5
	ands r0, r2
	cmp r0, #0
	beq _0800DF84
	bl sub_8017864
	movs r0, #0x31
	bl PlaySE
	ldr r0, _0800DFB0 @ =gMain+0x8
	ldr r0, [r0]
	str r0, [r5, #0xc]
	movs r0, #7
_0800DF82:
	str r0, [r5, #8]
_0800DF84:
	ldr r1, _0800DFB4 @ =gTestimony
	adds r0, r5, #0
	movs r2, #1
	bl sub_800E6D0
	ldr r0, _0800DFB8 @ =gCourtRecord
	bl sub_8012BEC
	ldr r1, _0800DFBC @ =gOamObjects
	ldr r2, _0800DFC0 @ =gScriptContext
	movs r0, #8
	ldrh r3, [r2]
	ands r0, r3
	cmp r0, #0
	beq _0800E004
	ldrh r0, [r2, #0x1e]
	subs r0, #1
	ldrh r2, [r5, #0x1c]
	cmp r0, r2
	beq _0800DFC4
	movs r0, #0x80
	b _0800DFC8
	.align 2, 0
_0800DFB0: .4byte gMain+0x8
_0800DFB4: .4byte gTestimony
_0800DFB8: .4byte gCourtRecord
_0800DFBC: .4byte gOamObjects
_0800DFC0: .4byte gScriptContext
_0800DFC4:
	movs r0, #0x80
	lsls r0, r0, #2
_0800DFC8:
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r1, #2]
	ldr r0, _0800DFE4 @ =0x000021A0
	strh r0, [r1, #4]
	adds r1, #8
	ldr r0, _0800DFE8 @ =gScriptContext
	ldrh r0, [r0, #0x20]
	ldrh r5, [r5, #0x1e]
	cmp r0, r5
	beq _0800DFEC
	movs r0, #0x80
	b _0800DFF0
	.align 2, 0
_0800DFE4: .4byte 0x000021A0
_0800DFE8: .4byte gScriptContext
_0800DFEC:
	movs r0, #0x80
	lsls r0, r0, #2
_0800DFF0:
	strh r0, [r1]
	ldr r0, _0800DFFC @ =0x000040E0
	strh r0, [r1, #2]
	ldr r0, _0800E000 @ =0x000021A4
	strh r0, [r1, #4]
	b _0800E00C
	.align 2, 0
_0800DFFC: .4byte 0x000040E0
_0800E000: .4byte 0x000021A4
_0800E004:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	strh r0, [r1, #8]
_0800E00C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start nullsub_4
nullsub_4: @ 0x0800E014
	bx lr
	.align 2, 0

	thumb_func_start sub_800E018
sub_800E018: @ 0x0800E018
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	cmp r1, #0
	beq _0800E028
	cmp r1, #1
	beq _0800E066
	b _0800E0C0
_0800E028:
	ldr r1, _0800E058 @ =gTestimony
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne _0800E060
	movs r0, #0
	movs r1, #1
	movs r2, #3
	movs r3, #0
	bl SetCourtScrollPersonAnim
	ldr r0, _0800E05C @ =gUnknown_08478BDC
	movs r1, #0x1e
	movs r2, #0x1f
	movs r3, #1
	bl InitCourtScroll
	movs r0, #0
	bl SlideTextbox
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _0800E0C0
	.align 2, 0
_0800E058: .4byte gTestimony
_0800E05C: .4byte gUnknown_08478BDC
_0800E060:
	subs r0, #1
	strb r0, [r1, #1]
	b _0800E0C0
_0800E066:
	ldr r0, _0800E090 @ =gCourtScroll
	ldrh r2, [r0, #4]
	cmp r2, #0
	bne _0800E0C0
	ldr r3, _0800E094 @ =gScriptContext
	adds r0, r3, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800E0A0
	ldr r0, _0800E098 @ =gMain
	strb r1, [r0, #0x18]
	strb r1, [r0, #0x19]
	ldr r0, _0800E09C @ =gIORegisters
	movs r1, #0
	strh r2, [r0, #0xe]
	adds r0, r3, #0
	adds r0, #0x38
	strb r1, [r0]
	b _0800E0A6
	.align 2, 0
_0800E090: .4byte gCourtScroll
_0800E094: .4byte gScriptContext
_0800E098: .4byte gMain
_0800E09C: .4byte gIORegisters
_0800E0A0:
	movs r0, #1
	bl SlideTextbox
_0800E0A6:
	ldr r0, _0800E0DC @ =gScriptContext
	ldrh r0, [r0, #0x2c]
	bl ChangeScriptSection
	ldr r0, _0800E0E0 @ =gTestimony
	movs r2, #0
	movs r1, #0xe0
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r2, [r0]
	movs r0, #1
	strb r0, [r4, #9]
	strb r2, [r4, #0xa]
_0800E0C0:
	ldr r1, _0800E0E0 @ =gTestimony
	adds r0, r4, #0
	movs r2, #0
	bl sub_800E6D0
	ldr r1, _0800E0E4 @ =gOamObjects
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	strh r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E0DC: .4byte gScriptContext
_0800E0E0: .4byte gTestimony
_0800E0E4: .4byte gOamObjects

	thumb_func_start sub_800E0E8
sub_800E0E8: @ 0x0800E0E8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0800E12A
	cmp r0, #1
	bgt _0800E0FC
	cmp r0, #0
	beq _0800E106
	b _0800E1D8
_0800E0FC:
	cmp r0, #2
	beq _0800E15C
	cmp r0, #3
	beq _0800E17C
	b _0800E1D8
_0800E106:
	ldr r5, _0800E120 @ =gTestimony
	ldrb r0, [r5, #1]
	cmp r0, #0
	bne _0800E124
	movs r0, #3
	movs r1, #1
	movs r2, #4
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r0, #0x40
	strb r0, [r5, #1]
	b _0800E16A
	.align 2, 0
_0800E120: .4byte gTestimony
_0800E124:
	subs r0, #1
	strb r0, [r5, #1]
	b _0800E1D8
_0800E12A:
	ldr r1, _0800E154 @ =gTestimony
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne _0800E1D4
	movs r3, #0x97
	lsls r3, r3, #5
	movs r0, #0
	movs r1, #1
	movs r2, #3
	bl SetCourtScrollPersonAnim
	ldr r0, _0800E158 @ =gUnknown_08478BDC
	movs r1, #0x1e
	movs r2, #0x1f
	movs r3, #1
	bl InitCourtScroll
	movs r0, #0
	bl SlideTextbox
	b _0800E16A
	.align 2, 0
_0800E154: .4byte gTestimony
_0800E158: .4byte gUnknown_08478BDC
_0800E15C:
	ldr r0, _0800E174 @ =gCourtScroll
	ldrh r0, [r0, #4]
	cmp r0, #0
	bne _0800E1D8
	ldr r0, _0800E178 @ =gTestimony
	movs r1, #0x14
	strb r1, [r0, #1]
_0800E16A:
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _0800E1D8
	.align 2, 0
_0800E174: .4byte gCourtScroll
_0800E178: .4byte gTestimony
_0800E17C:
	ldr r1, _0800E1B0 @ =gTestimony
	ldrb r0, [r1, #1]
	adds r2, r0, #0
	cmp r2, #0
	bne _0800E1D4
	movs r0, #0xe0
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	strb r2, [r1]
	ldr r3, _0800E1B4 @ =gScriptContext
	adds r0, r3, #0
	adds r0, #0x33
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800E1C0
	ldr r1, _0800E1B8 @ =gMain
	movs r0, #1
	strb r0, [r1, #0x18]
	strb r0, [r1, #0x19]
	ldr r0, _0800E1BC @ =gIORegisters
	movs r1, #0
	strh r2, [r0, #0xe]
	adds r0, r3, #0
	adds r0, #0x38
	strb r1, [r0]
	b _0800E1C6
	.align 2, 0
_0800E1B0: .4byte gTestimony
_0800E1B4: .4byte gScriptContext
_0800E1B8: .4byte gMain
_0800E1BC: .4byte gIORegisters
_0800E1C0:
	movs r0, #1
	bl SlideTextbox
_0800E1C6:
	ldr r1, _0800E1D0 @ =gMain+0x8
	ldr r0, [r4, #0xc]
	str r0, [r1]
	b _0800E1D8
	.align 2, 0
_0800E1D0: .4byte gMain+0x8
_0800E1D4:
	subs r0, #1
	strb r0, [r1, #1]
_0800E1D8:
	ldr r1, _0800E1E8 @ =gTestimony
	adds r0, r4, #0
	movs r2, #0
	bl sub_800E6D0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E1E8: .4byte gTestimony

	thumb_func_start sub_800E1EC
sub_800E1EC: @ 0x0800E1EC
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

	thumb_func_start sub_800E6D0
sub_800E6D0: @ 0x0800E6D0
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

	thumb_func_start sub_800EAC8
sub_800EAC8: @ 0x0800EAC8
	ldr r2, _0800EAD8 @ =gMain
	movs r3, #0x97
	lsls r3, r3, #2
	adds r2, r2, r3
	adds r0, r0, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800EAD8: .4byte gMain

	thumb_func_start sub_800EADC
sub_800EADC: @ 0x0800EADC
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r1, #0
	ldr r2, _0800EB04 @ =gMain
	ldr r4, _0800EB08 @ =0x00000286
	adds r0, r2, r4
	ldrh r0, [r0]
	cmp r1, r0
	bhs _0800EB1A
	ldr r5, _0800EB0C @ =0x00000276
	adds r4, r2, r5
	adds r2, r0, #0
_0800EAF6:
	lsls r0, r1, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	cmp r0, r3
	bne _0800EB10
	movs r0, #1
	b _0800EB1C
	.align 2, 0
_0800EB04: .4byte gMain
_0800EB08: .4byte 0x00000286
_0800EB0C: .4byte 0x00000276
_0800EB10:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	blo _0800EAF6
_0800EB1A:
	movs r0, #0
_0800EB1C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800EB24
sub_800EB24: @ 0x0800EB24
	adds r2, r0, #0
	strb r1, [r2, #8]
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _0800EB34
	movs r0, #0xf3
	ands r0, r1
	strb r0, [r2, #8]
_0800EB34:
	bx lr
	.align 2, 0

	thumb_func_start sub_800EB38
sub_800EB38: @ 0x0800EB38
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, #5
	beq _0800EB56
	ldr r0, _0800EB78 @ =gUnknown_081120CC
	adds r1, r5, #0
	adds r1, #0xb3
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
_0800EB56:
	ldr r1, _0800EB7C @ =gUnknown_0811234C
	ldrb r2, [r5, #9]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r4, _0800EB80 @ =gInvestigation
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	bl _call_via_r2
	adds r0, r4, #0
	bl sub_80111EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800EB78: .4byte gUnknown_081120CC
_0800EB7C: .4byte gUnknown_0811234C
_0800EB80: .4byte gInvestigation

	thumb_func_start sub_800EB84
sub_800EB84: @ 0x0800EB84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	ldr r7, _0800ED98 @ =gIORegisters
	mov r0, sp
	movs r5, #0
	strh r5, [r0]
	ldr r4, _0800ED9C @ =0x040000D4
	str r0, [r4]
	ldr r0, _0800EDA0 @ =gTestimony
	str r0, [r4, #4]
	ldr r0, _0800EDA4 @ =0x81000004
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r0, sp
	strh r5, [r0]
	str r0, [r4]
	ldr r0, _0800EDA8 @ =gInvestigation
	str r0, [r4, #4]
	ldr r0, _0800EDAC @ =0x8100000E
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	bl HideAllSprites
	bl InitBGs
	bl ResetAnimationSystem
	bl LoadCurrentScriptIntoRam
	adds r1, r7, #0
	adds r1, #0x4a
	movs r0, #0xfa
	lsls r0, r0, #5
	strh r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #6
	strh r0, [r7]
	ldr r0, _0800EDB0 @ =0x00003D01
	strh r0, [r7, #2]
	adds r0, #0xff
	strh r0, [r7, #4]
	ldr r0, _0800EDB4 @ =0x00003FC7
	strh r0, [r7, #6]
	ldr r0, _0800EDB8 @ =gUnknown_081370FC
	str r0, [r4]
	ldr r0, _0800EDBC @ =0x06003800
	str r0, [r4, #4]
	ldr r0, _0800EDC0 @ =0x80000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800EDC4 @ =gUnknown_0813791C
	str r0, [r4]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r1, _0800EDC8 @ =0x80000800
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800EDCC @ =gUnknown_081400FC
	str r0, [r4]
	ldr r0, _0800EDD0 @ =0x06012000
	str r0, [r4, #4]
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800EDD4 @ =gUnknown_0814DBA0
	str r0, [r4]
	ldr r0, _0800EDD8 @ =0x050002A0
	str r0, [r4, #4]
	ldr r3, _0800EDDC @ =0x80000020
	str r3, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800EDE0 @ =gUnknown_081412FC
	str r0, [r4]
	ldr r0, _0800EDE4 @ =0x06013000
	str r0, [r4, #4]
	ldr r2, _0800EDE8 @ =0x80000100
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800EDEC @ =gUnknown_0814DC00
	str r0, [r4]
	ldr r0, _0800EDF0 @ =0x050002E0
	str r0, [r4, #4]
	ldr r1, _0800EDF4 @ =0x80000010
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800EDF8 @ =gUnknown_081426FC
	str r0, [r4]
	ldr r0, _0800EDFC @ =0x06013200
	str r0, [r4, #4]
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800EE00 @ =gUnknown_0814DC60
	str r0, [r4]
	ldr r0, _0800EE04 @ =0x05000300
	str r0, [r4, #4]
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800EE08 @ =gUnknown_081DE3A8
	str r0, [r4]
	ldr r0, _0800EE0C @ =0x05000320
	str r0, [r4, #4]
	str r3, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _0800EE10 @ =gOamObjects+0x1A0
	movs r4, #0
	add r0, sp, #4
	mov sl, r0
	ldr r2, _0800EE14 @ =0x000040E0
	mov ip, r2
	movs r3, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r5, r0, #0
	movs r2, #0xa2
	lsls r2, r2, #7
_0800EC76:
	mov r0, ip
	strh r0, [r1]
	adds r0, r3, r5
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	adds r1, #8
	adds r3, #0x3c
	adds r2, #0x20
	adds r4, #1
	cmp r4, #3
	bls _0800EC76
	mov r0, r8
	movs r1, #0xf
	bl sub_800EB24
	movs r1, #0
	mov sb, r1
	movs r0, #0xe0
	mov r2, r8
	strb r0, [r2, #0xf]
	mov r0, sb
	strb r0, [r2, #0x10]
	movs r0, #8
	strb r0, [r2, #0x11]
	mov r1, sb
	strb r1, [r2, #0xc]
	strb r1, [r2, #0xd]
	ldr r1, _0800EE18 @ =gUnknown_0811201C
	adds r5, r6, #0
	adds r5, #0xb3
	ldrb r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	adds r0, r6, #0
	adds r0, #0xb2
	ldrb r2, [r0]
	lsls r1, r2, #2
	adds r1, r1, r2
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r6, r2
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r4, #0
	bl sub_8002820
	adds r0, r4, #0
	bl CopyBGDataToVram
	movs r0, #0x80
	bl CopyBGDataToVram
	ldr r0, _0800EE1C @ =0x0000FFAF
	strh r0, [r7, #0xe]
	adds r4, r7, #0
	adds r4, #0x4a
	ldr r0, _0800EE20 @ =0x0000FDFF
	mov r8, r0
	ldrh r1, [r4]
	ands r0, r1
	strh r0, [r4]
	ldr r1, _0800EE24 @ =gCourtRecord
	adds r0, r6, #0
	bl sub_8011688
	mov r2, sb
	str r2, [sp, #4]
	ldr r1, _0800ED9C @ =0x040000D4
	mov r0, sl
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0xbc
	str r0, [r1, #4]
	ldr r0, _0800EE28 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r6, #0
	adds r0, #0xdc
	str r2, [r0]
	movs r0, #0xf
	strb r0, [r6, #0x1a]
	movs r0, #1
	strb r0, [r6, #0x18]
	strb r0, [r6, #0x19]
	ldr r1, _0800EE2C @ =gScriptContext
	ldr r0, _0800EE30 @ =0x0000FFFF
	strh r0, [r1, #0x1e]
	movs r0, #0x80
	bl ChangeScriptSection
	movs r0, #1
	bl SlideTextbox
	ldr r1, _0800EE34 @ =gUnknown_08112074
	ldrb r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	adds r0, r6, #0
	movs r1, #0
	bl sub_8011388
	bl sub_800D450
	movs r0, #0x30
	movs r1, #0xf
	bl SetTimedKeysAndDelay
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	adds r1, r7, #0
	adds r1, #0x4e
	movs r0, #0x10
	strh r0, [r1]
	ldrb r5, [r5]
	cmp r5, #8
	bne _0800ED82
	mov r0, r8
	ldrh r1, [r4]
	ands r0, r1
	strh r0, [r4]
	mov r2, sb
	strh r2, [r7, #0xe]
_0800ED82:
	movs r0, #0x82
	lsls r0, r0, #1
	str r0, [r6, #8]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800ED98: .4byte gIORegisters
_0800ED9C: .4byte 0x040000D4
_0800EDA0: .4byte gTestimony
_0800EDA4: .4byte 0x81000004
_0800EDA8: .4byte gInvestigation
_0800EDAC: .4byte 0x8100000E
_0800EDB0: .4byte 0x00003D01
_0800EDB4: .4byte 0x00003FC7
_0800EDB8: .4byte gUnknown_081370FC
_0800EDBC: .4byte 0x06003800
_0800EDC0: .4byte 0x80000400
_0800EDC4: .4byte gUnknown_0813791C
_0800EDC8: .4byte 0x80000800
_0800EDCC: .4byte gUnknown_081400FC
_0800EDD0: .4byte 0x06012000
_0800EDD4: .4byte gUnknown_0814DBA0
_0800EDD8: .4byte 0x050002A0
_0800EDDC: .4byte 0x80000020
_0800EDE0: .4byte gUnknown_081412FC
_0800EDE4: .4byte 0x06013000
_0800EDE8: .4byte 0x80000100
_0800EDEC: .4byte gUnknown_0814DC00
_0800EDF0: .4byte 0x050002E0
_0800EDF4: .4byte 0x80000010
_0800EDF8: .4byte gUnknown_081426FC
_0800EDFC: .4byte 0x06013200
_0800EE00: .4byte gUnknown_0814DC60
_0800EE04: .4byte 0x05000300
_0800EE08: .4byte gUnknown_081DE3A8
_0800EE0C: .4byte 0x05000320
_0800EE10: .4byte gOamObjects+0x1A0
_0800EE14: .4byte 0x000040E0
_0800EE18: .4byte gUnknown_0811201C
_0800EE1C: .4byte 0x0000FFAF
_0800EE20: .4byte 0x0000FDFF
_0800EE24: .4byte gCourtRecord
_0800EE28: .4byte 0x85000008
_0800EE2C: .4byte gScriptContext
_0800EE30: .4byte 0x0000FFFF
_0800EE34: .4byte gUnknown_08112074

	thumb_func_start sub_800EE38
sub_800EE38: @ 0x0800EE38
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800EEB2
	ldrb r0, [r4, #0xe]
	cmp r0, #2
	beq _0800EEB2
	ldr r1, _0800EEBC @ =gJoypad
	movs r0, #8
	ldrh r2, [r1, #2]
	ands r0, r2
	adds r7, r1, #0
	ldr r3, _0800EEC0 @ =gScriptContext
	cmp r0, #0
	beq _0800EE7E
	adds r2, r5, #0
	adds r2, #0xdc
	ldr r1, [r2]
	movs r0, #0x10
	ands r1, r0
	adds r6, r2, #0
	cmp r1, #0
	bne _0800EE7E
	movs r0, #5
	ldrh r1, [r3]
	ands r0, r1
	cmp r0, #0
	beq _0800EE7E
	ldr r0, _0800EEC4 @ =gMain
	ldrh r0, [r0, #0x30]
	cmp r0, #0x7f
	bne _0800EEF4
_0800EE7E:
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r7, [r7, #2]
	ands r0, r7
	cmp r0, #0
	beq _0800EEA2
	adds r0, r5, #0
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800EEA2
	movs r0, #5
	ldrh r2, [r3]
	ands r0, r2
	cmp r0, #0
	bne _0800EF96
_0800EEA2:
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800EEB2
	ldrh r0, [r5, #0x18]
	cmp r0, #0
	beq _0800EEC8
_0800EEB2:
	adds r0, r5, #0
	movs r1, #0
	bl sub_8011388
	b _0800F10E
	.align 2, 0
_0800EEBC: .4byte gJoypad
_0800EEC0: .4byte gScriptContext
_0800EEC4: .4byte gMain
_0800EEC8:
	adds r0, r5, #0
	movs r1, #1
	bl sub_8011388
	ldr r1, _0800EF48 @ =gJoypad
	movs r0, #8
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _0800EF78
	adds r0, r5, #0
	adds r0, #0xdc
	ldr r1, [r0]
	movs r2, #0x10
	ands r1, r2
	adds r6, r0, #0
	cmp r1, #0
	bne _0800EF78
	ldr r0, _0800EF4C @ =gMain
	ldrh r0, [r0, #0x30]
	cmp r0, #0x7f
	beq _0800EF78
_0800EEF4:
	bl PauseBGM
	ldr r1, _0800EF50 @ =0x040000D4
	ldr r0, _0800EF54 @ =gOamObjects
	str r0, [r1]
	ldr r2, _0800EF58 @ =gUnknown_0200093C
	str r2, [r1, #4]
	ldr r0, _0800EF5C @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _0800EF4C @ =gMain
	str r4, [r1]
	ldr r3, _0800EF60 @ =0xFFFFF6F8
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _0800EF64 @ =0x80000160
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800EF68 @ =gScriptContext
	ldr r0, [r0, #0x38]
	ldr r1, _0800EF6C @ =0xFF0000FF
	ands r0, r1
	ldr r1, _0800EF70 @ =0x01000002
	cmp r0, r1
	bne _0800EF2E
	ldr r0, _0800EF74 @ =0xFFFFF711
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
_0800EF2E:
	movs r0, #0x31
	bl PlaySE
	ldr r0, [r6]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6]
	ldr r0, [r4, #8]
	str r0, [r5, #0xc]
	movs r0, #0xa
	str r0, [r5, #8]
	b _0800F10E
	.align 2, 0
_0800EF48: .4byte gJoypad
_0800EF4C: .4byte gMain
_0800EF50: .4byte 0x040000D4
_0800EF54: .4byte gOamObjects
_0800EF58: .4byte gUnknown_0200093C
_0800EF5C: .4byte 0x80000200
_0800EF60: .4byte 0xFFFFF6F8
_0800EF64: .4byte 0x80000160
_0800EF68: .4byte gScriptContext
_0800EF6C: .4byte 0xFF0000FF
_0800EF70: .4byte 0x01000002
_0800EF74: .4byte 0xFFFFF711
_0800EF78:
	ldr r6, _0800EFBC @ =gJoypad
	ldrh r1, [r6, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800EFC4
	adds r0, r5, #0
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800EF96
	b _0800F0FA
_0800EF96:
	movs r0, #0x31
	bl PlaySE
	ldr r0, _0800EFC0 @ =gMain+0x8
	ldr r0, [r0]
	str r0, [r5, #0xc]
	movs r0, #7
	str r0, [r5, #8]
	adds r0, r5, #0
	movs r1, #0
	bl sub_8011388
	movs r0, #0
	strb r0, [r4, #0x10]
	movs r0, #8
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	b _0800F10E
	.align 2, 0
_0800EFBC: .4byte gJoypad
_0800EFC0: .4byte gMain+0x8
_0800EFC4:
	movs r0, #0x30
	ldrh r2, [r6, #8]
	ands r0, r2
	cmp r0, #0
	beq _0800F00A
	ldrb r1, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #0x20
	ldrh r6, [r6, #8]
	ands r0, r6
	cmp r0, #0
	beq _0800EFE0
	subs r0, r1, #1
	b _0800EFE2
_0800EFE0:
	adds r0, r1, #1
_0800EFE2:
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0800EFF2
	movs r0, #1
	ldrb r3, [r4, #0xc]
	ands r0, r3
	b _0800EFF8
_0800EFF2:
	movs r0, #3
	ldrb r1, [r4, #0xc]
	ands r0, r1
_0800EFF8:
	strb r0, [r4, #0xc]
	movs r0, #0x2a
	bl PlaySE
	movs r0, #0
	strb r0, [r4, #0x10]
	movs r0, #8
	strb r0, [r4, #0x11]
	b _0800F0FA
_0800F00A:
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0800F090
	movs r0, #0x2b
	bl PlaySE
	movs r6, #0
	movs r0, #0x78
	strh r0, [r4]
	movs r0, #0x32
	strh r0, [r4, #2]
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_800EB24
	adds r0, r7, #0
	ldrb r2, [r4, #0xc]
	lsls r0, r2
	ldrb r3, [r4, #8]
	subs r0, r3, r0
	strb r0, [r4, #8]
	movs r0, #0xf0
	strb r0, [r4, #0xf]
	movs r0, #8
	strb r0, [r4, #0x10]
	strb r6, [r4, #0x11]
	adds r0, r2, #0
	strb r0, [r4, #0xd]
	movs r0, #3
	strb r0, [r4, #0xe]
	adds r0, r5, #0
	movs r1, #0
	bl sub_8011388
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0800F074
	movs r0, #0xc
	movs r1, #1
	bl sub_8014D10
	strb r6, [r4, #0x19]
	strb r6, [r4, #0x18]
	ldr r1, _0800F080 @ =0x040000D4
	ldr r0, _0800F084 @ =gUnknown_0814DC60
	str r0, [r1]
	ldr r0, _0800F088 @ =0x05000300
	str r0, [r1, #4]
	ldr r0, _0800F08C @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0800F074:
	ldrb r0, [r4, #0xc]
	adds r0, #6
	strb r0, [r5, #9]
	strb r6, [r5, #0xb]
	strb r6, [r5, #0xa]
	b _0800F10E
	.align 2, 0
_0800F080: .4byte 0x040000D4
_0800F084: .4byte gUnknown_0814DC60
_0800F088: .4byte 0x05000300
_0800F08C: .4byte 0x80000010
_0800F090:
	ldrh r0, [r5, #0x2e]
	bl GetBGControlBits
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _0800F0FA
	movs r0, #0x80
	lsls r0, r0, #2
	ldrh r6, [r6, #2]
	ands r0, r6
	cmp r0, #0
	beq _0800F0FA
	movs r1, #0x3c
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _0800F0BA
	cmp r0, #0x78
	beq _0800F0BA
	cmp r0, #0xf0
	bne _0800F0FA
_0800F0BA:
	movs r0, #0x2b
	bl PlaySE
	adds r1, r5, #0
	adds r1, #0x36
	movs r0, #1
	strb r0, [r1]
	movs r2, #0x3c
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _0800F0D6
	adds r1, #0xe
	movs r0, #6
	b _0800F0E4
_0800F0D6:
	cmp r0, #0x78
	beq _0800F0DE
	cmp r0, #0xf0
	bne _0800F0E6
_0800F0DE:
	adds r1, r5, #0
	adds r1, #0x44
	movs r0, #0xfa
_0800F0E4:
	strb r0, [r1]
_0800F0E6:
	movs r0, #0
	movs r1, #3
	strb r1, [r5, #9]
	strb r0, [r5, #0xb]
	strb r0, [r5, #0xa]
	strb r1, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_800EB24
_0800F0FA:
	ldrb r0, [r4, #0x10]
	cmp r0, #7
	bhi _0800F104
	adds r0, #1
	strb r0, [r4, #0x10]
_0800F104:
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	beq _0800F10E
	subs r0, #1
	strb r0, [r4, #0x11]
_0800F10E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_800F114
sub_800F114: @ 0x0800F114
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8007D30
	ldr r1, _0800F148 @ =0x040000D4
	ldr r0, _0800F14C @ =gMain
	str r0, [r1]
	ldr r0, _0800F150 @ =gUnknown_02000034
	str r0, [r1, #4]
	ldr r0, _0800F154 @ =0x80000160
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800F158 @ =0x0100000A
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb3
	ldrb r1, [r0]
	cmp r1, #2
	bne _0800F160
	adds r0, #1
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _0800F192
	ldr r0, _0800F15C @ =0x0100000B
	b _0800F190
	.align 2, 0
_0800F148: .4byte 0x040000D4
_0800F14C: .4byte gMain
_0800F150: .4byte gUnknown_02000034
_0800F154: .4byte 0x80000160
_0800F158: .4byte 0x0100000A
_0800F15C: .4byte 0x0100000B
_0800F160:
	cmp r1, #8
	bne _0800F17C
	adds r1, r4, #0
	adds r1, #0xb4
	movs r0, #4
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800F192
	ldr r0, _0800F178 @ =gUnknown_0200000B
	b _0800F190
	.align 2, 0
_0800F178: .4byte gUnknown_0200000B
_0800F17C:
	cmp r1, #0xe
	bne _0800F192
	adds r1, r4, #0
	adds r1, #0xb4
	movs r0, #8
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800F192
	ldr r0, _0800F198 @ =gBG2MapBuffer+0xB
_0800F190:
	str r0, [r4, #8]
_0800F192:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F198: .4byte gBG2MapBuffer+0xB

	thumb_func_start sub_800F19C
sub_800F19C: @ 0x0800F19C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0
	bl sub_8011388
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0800F1E8
	ldrh r0, [r4, #0x2e]
	bl GetBGControlBits
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0800F1CA
	movs r1, #0x3c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0800F1D6
	cmp r0, #0xf0
	beq _0800F1D6
	b _0800F1F4
_0800F1CA:
	movs r1, #0x3c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0800F1D6
	cmp r0, #0x78
	bne _0800F1F4
_0800F1D6:
	movs r0, #0
	strb r0, [r5, #0x10]
	strb r0, [r5, #0x11]
	movs r0, #1
	strb r0, [r5, #0xe]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _0800F1F4
_0800F1E8:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _0800F1F4
	movs r0, #0x82
	lsls r0, r0, #1
	str r0, [r4, #8]
_0800F1F4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800F1FC
sub_800F1FC: @ 0x0800F1FC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_8011388
	ldr r0, _0800F21C @ =gScriptContext
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F216
	movs r0, #0x82
	lsls r0, r0, #1
	str r0, [r4, #8]
_0800F216:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F21C: .4byte gScriptContext

	thumb_func_start sub_800F220
sub_800F220: @ 0x0800F220
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, _0800F264 @ =gScriptContext
	adds r0, #0x38
	ldrb r7, [r0]
	cmp r7, #1
	bne _0800F318
	adds r0, r6, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800F318
	adds r1, r6, #0
	adds r1, #0xb2
	ldrb r2, [r1]
	lsls r0, r2, #2
	adds r0, r0, r2
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r0, r3
	adds r4, r6, r0
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	bne _0800F268
	bl ResetSoundControl
	ldrb r0, [r4]
	bl sub_8002820
	strb r7, [r6, #0xa]
	b _0800F318
	.align 2, 0
_0800F264: .4byte gScriptContext
_0800F268:
	ldrb r0, [r4]
	bl CopyBGDataToVram
	ldr r1, _0800F324 @ =gOamObjects+0x130
	movs r2, #0
	movs r0, #0xb3
	adds r0, r0, r6
	mov r8, r0
	adds r4, r1, #0
	adds r4, #0x70
	movs r3, #0x80
	lsls r3, r3, #2
_0800F280:
	movs r0, #0
_0800F282:
	strh r3, [r1]
	adds r1, #8
	adds r0, #1
	cmp r0, #1
	bls _0800F282
	adds r2, #1
	cmp r2, #3
	bls _0800F280
	adds r1, r4, #0
	movs r2, #0
	ldr r3, _0800F328 @ =0x000040E0
	mov ip, r3
	movs r4, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r7, r0, #0
	movs r3, #0xa2
	lsls r3, r3, #7
_0800F2A6:
	mov r0, ip
	strh r0, [r1]
	adds r0, r4, r7
	strh r0, [r1, #2]
	strh r3, [r1, #4]
	adds r1, #8
	adds r4, #0x3c
	adds r3, #0x20
	adds r2, #1
	cmp r2, #3
	bls _0800F2A6
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
	movs r0, #1
	strb r0, [r5, #0xe]
	bl sub_8013E40
	ldr r0, _0800F32C @ =gAnimation+0x44
	bl DestroyAnimation
	ldr r0, _0800F330 @ =gInvestigation
	strb r4, [r0, #6]
	movs r1, #0xf
	bl sub_800EB24
	ldr r1, _0800F334 @ =gUnknown_08112074
	mov r2, r8
	ldrb r2, [r2]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	adds r0, r6, #0
	movs r1, #0
	bl sub_8011388
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r0, #0x82
	lsls r0, r0, #1
	str r0, [r6, #8]
_0800F318:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F324: .4byte gOamObjects+0x130
_0800F328: .4byte 0x000040E0
_0800F32C: .4byte gAnimation+0x44
_0800F330: .4byte gInvestigation
_0800F334: .4byte gUnknown_08112074

	thumb_func_start sub_800F338
sub_800F338: @ 0x0800F338
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, _0800F3EC @ =gOamObjects+0x1D0
	mov r8, r0
	ldr r0, _0800F3F0 @ =gAnimation
	ldr r0, [r0, #0x44]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _0800F356
	b _0800F798
_0800F356:
	adds r0, r6, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800F362
	b _0800F798
_0800F362:
	ldr r1, _0800F3F4 @ =gJoypad
	movs r0, #8
	ldrh r2, [r1, #2]
	ands r0, r2
	mov ip, r1
	cmp r0, #0
	beq _0800F394
	adds r0, r6, #0
	adds r0, #0xdc
	ldr r1, [r0]
	movs r2, #0x10
	ands r1, r2
	adds r4, r0, #0
	cmp r1, #0
	bne _0800F394
	ldr r1, _0800F3F8 @ =gScriptContext
	movs r0, #5
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800F394
	ldr r0, _0800F3FC @ =gMain
	ldrh r0, [r0, #0x30]
	cmp r0, #0x7f
	bne _0800F44A
_0800F394:
	movs r0, #0x80
	lsls r0, r0, #1
	mov r3, ip
	ldrh r3, [r3, #2]
	ands r0, r3
	cmp r0, #0
	beq _0800F3BE
	adds r0, r6, #0
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800F3BE
	ldr r1, _0800F3F8 @ =gScriptContext
	movs r0, #5
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800F3BE
	b _0800F4E8
_0800F3BE:
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _0800F3C6
	b _0800F798
_0800F3C6:
	ldr r0, _0800F3F8 @ =gScriptContext
	adds r0, #0x38
	ldrb r7, [r0]
	cmp r7, #1
	beq _0800F3D2
	b _0800F798
_0800F3D2:
	ldrh r0, [r6, #0x18]
	cmp r0, #0
	beq _0800F3DA
	b _0800F798
_0800F3DA:
	ldrb r1, [r6, #0xa]
	cmp r1, #1
	beq _0800F424
	cmp r1, #1
	bgt _0800F400
	cmp r1, #0
	beq _0800F408
	b _0800F798
	.align 2, 0
_0800F3EC: .4byte gOamObjects+0x1D0
_0800F3F0: .4byte gAnimation
_0800F3F4: .4byte gJoypad
_0800F3F8: .4byte gScriptContext
_0800F3FC: .4byte gMain
_0800F400:
	cmp r1, #2
	bne _0800F406
	b _0800F758
_0800F406:
	b _0800F798
_0800F408:
	ldrb r0, [r5, #0x10]
	cmp r0, #0xf
	bhi _0800F412
	adds r0, #1
	strb r0, [r5, #0x10]
_0800F412:
	strb r1, [r5, #0x11]
	ldrb r5, [r5, #0x10]
	cmp r5, #0xf
	bhi _0800F41C
	b _0800F798
_0800F41C:
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	b _0800F798
_0800F424:
	movs r3, #3
	movs r0, #8
	mov r1, ip
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _0800F4CC
	adds r0, r6, #0
	adds r0, #0xdc
	ldr r1, [r0]
	movs r2, #0x10
	ands r1, r2
	adds r4, r0, #0
	cmp r1, #0
	bne _0800F4CC
	ldr r0, _0800F4A0 @ =gMain
	ldrh r0, [r0, #0x30]
	cmp r0, #0x7f
	beq _0800F4CC
_0800F44A:
	bl PauseBGM
	ldr r1, _0800F4A4 @ =0x040000D4
	ldr r0, _0800F4A8 @ =gOamObjects
	str r0, [r1]
	ldr r2, _0800F4AC @ =gUnknown_0200093C
	str r2, [r1, #4]
	ldr r0, _0800F4B0 @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r5, _0800F4A0 @ =gMain
	str r5, [r1]
	ldr r3, _0800F4B4 @ =0xFFFFF6F8
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _0800F4B8 @ =0x80000160
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800F4BC @ =gScriptContext
	ldr r0, [r0, #0x38]
	ldr r1, _0800F4C0 @ =0xFF0000FF
	ands r0, r1
	ldr r1, _0800F4C4 @ =0x01000002
	cmp r0, r1
	bne _0800F484
	ldr r0, _0800F4C8 @ =0xFFFFF711
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
_0800F484:
	movs r0, #0x31
	bl PlaySE
	ldr r0, [r4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	ldr r0, [r5, #8]
	str r0, [r6, #0xc]
	movs r0, #0xa
	str r0, [r6, #8]
	b _0800F798
	.align 2, 0
_0800F4A0: .4byte gMain
_0800F4A4: .4byte 0x040000D4
_0800F4A8: .4byte gOamObjects
_0800F4AC: .4byte gUnknown_0200093C
_0800F4B0: .4byte 0x80000200
_0800F4B4: .4byte 0xFFFFF6F8
_0800F4B8: .4byte 0x80000160
_0800F4BC: .4byte gScriptContext
_0800F4C0: .4byte 0xFF0000FF
_0800F4C4: .4byte 0x01000002
_0800F4C8: .4byte 0xFFFFF711
_0800F4CC:
	movs r0, #0x80
	lsls r0, r0, #1
	mov r1, ip
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _0800F508
	adds r0, r6, #0
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800F508
_0800F4E8:
	movs r0, #0x31
	bl PlaySE
	ldr r0, _0800F504 @ =gMain+0x8
	ldr r0, [r0]
	str r0, [r6, #0xc]
	movs r0, #7
	str r0, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	mov r2, r8
	strh r0, [r2]
	b _0800F798
	.align 2, 0
_0800F504: .4byte gMain+0x8
_0800F508:
	mov r0, ip
	ldrh r1, [r0, #2]
	movs r7, #1
	movs r4, #1
	ands r4, r1
	cmp r4, #0
	beq _0800F56C
	movs r0, #0x2b
	bl PlaySE
	movs r4, #0
	movs r0, #0x80
	lsls r0, r0, #2
	mov r1, r8
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_8011408
	adds r3, r0, #0
	bl ChangeScriptSection
	movs r0, #1
	bl SlideTextbox
	strb r7, [r5, #7]
	strb r4, [r5, #0x16]
	strb r4, [r5, #0x17]
	strb r7, [r5, #8]
	movs r0, #3
	strb r0, [r5, #0xe]
	movs r0, #0xf0
	strb r0, [r5, #0xf]
	strb r4, [r5, #0x10]
	strb r4, [r5, #0x11]
	ldr r1, _0800F560 @ =gIORegisters
	adds r2, r1, #0
	adds r2, #0x48
	ldr r0, _0800F564 @ =0x00001942
	strh r0, [r2]
	adds r1, #0x4c
	ldr r0, _0800F568 @ =0x0000071F
	strh r0, [r1]
	b _0800F798
	.align 2, 0
_0800F560: .4byte gIORegisters
_0800F564: .4byte 0x00001942
_0800F568: .4byte 0x0000071F
_0800F56C:
	movs r7, #2
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800F590
	movs r0, #0x2c
	bl PlaySE
	strb r7, [r6, #0xa]
	adds r0, r5, #0
	movs r1, #0xe
	bl sub_800EB24
	strb r7, [r5, #0xe]
	movs r0, #0xe0
	strb r0, [r5, #0xf]
	movs r0, #0x10
	b _0800F794
_0800F590:
	movs r0, #0x20
	mov r2, ip
	ldrh r2, [r2]
	ands r0, r2
	cmp r0, #0
	beq _0800F5BE
	ldrh r1, [r5]
	subs r0, r1, r3
	strh r0, [r5]
	ldrh r2, [r5, #2]
	cmp r2, #0xf
	bhi _0800F5B4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bhi _0800F5B4
	movs r0, #0x3c
	strh r0, [r5]
_0800F5B4:
	ldrh r0, [r5]
	cmp r0, #0xe0
	bls _0800F5BE
	movs r0, #0
	strh r0, [r5]
_0800F5BE:
	movs r0, #0x10
	mov r1, ip
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800F5EC
	ldrh r2, [r5]
	adds r0, r2, r3
	strh r0, [r5]
	ldrh r1, [r5, #2]
	cmp r1, #0xf
	bhi _0800F5E2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bhi _0800F5E2
	movs r0, #0x3c
	strh r0, [r5]
_0800F5E2:
	ldrh r2, [r5]
	cmp r2, #0xe0
	bls _0800F5EC
	movs r0, #0xe0
	strh r0, [r5]
_0800F5EC:
	movs r0, #0x40
	mov r1, ip
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800F61A
	ldrh r2, [r5, #2]
	subs r0, r2, r3
	strh r0, [r5, #2]
	ldrh r1, [r5]
	cmp r1, #0x3b
	bhi _0800F610
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bhi _0800F610
	movs r0, #0x10
	strh r0, [r5, #2]
_0800F610:
	ldrh r2, [r5, #2]
	cmp r2, #0x90
	bls _0800F61A
	movs r0, #0
	strh r0, [r5, #2]
_0800F61A:
	movs r0, #0x80
	mov r1, ip
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800F648
	ldrh r2, [r5, #2]
	adds r0, r2, r3
	strh r0, [r5, #2]
	ldrh r3, [r5]
	cmp r3, #0x3b
	bhi _0800F63E
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bhi _0800F63E
	movs r0, #0x10
	strh r0, [r5, #2]
_0800F63E:
	ldrh r0, [r5, #2]
	cmp r0, #0x90
	bls _0800F648
	movs r0, #0x90
	strh r0, [r5, #2]
_0800F648:
	adds r0, r5, #0
	bl sub_8011408
	adds r3, r0, #0
	cmp r3, #0x1d
	beq _0800F6AE
	ldr r2, _0800F6B8 @ =gMain
	adds r0, r2, #0
	adds r0, #0xb3
	ldrb r1, [r0]
	cmp r1, #2
	bne _0800F664
	cmp r3, #0xe8
	beq _0800F6AE
_0800F664:
	cmp r1, #0xe
	bne _0800F66C
	cmp r3, #0xc7
	beq _0800F6AE
_0800F66C:
	cmp r1, #0xf
	bne _0800F676
	ldr r0, _0800F6BC @ =0x0000014F
	cmp r3, r0
	beq _0800F6AE
_0800F676:
	cmp r1, #0x12
	bne _0800F67E
	cmp r3, #0xa5
	beq _0800F6AE
_0800F67E:
	adds r0, r2, #0
	adds r0, #0xb2
	ldrh r1, [r0]
	ldr r0, _0800F6C0 @ =0x00001219
	cmp r1, r0
	bne _0800F692
	movs r0, #0x86
	lsls r0, r0, #1
	cmp r3, r0
	beq _0800F6AE
_0800F692:
	ldr r0, _0800F6C4 @ =0x00001215
	cmp r1, r0
	bne _0800F6A0
	movs r0, #0x86
	lsls r0, r0, #1
	cmp r3, r0
	beq _0800F6AE
_0800F6A0:
	ldr r0, _0800F6C8 @ =0x00000F17
	cmp r1, r0
	bne _0800F6CC
	movs r0, #0xad
	lsls r0, r0, #1
	cmp r3, r0
	bne _0800F6CC
_0800F6AE:
	movs r0, #0
	strb r0, [r5, #0x16]
	strb r0, [r5, #0x17]
	b _0800F6E8
	.align 2, 0
_0800F6B8: .4byte gMain
_0800F6BC: .4byte 0x0000014F
_0800F6C0: .4byte 0x00001219
_0800F6C4: .4byte 0x00001215
_0800F6C8: .4byte 0x00000F17
_0800F6CC:
	ldrb r0, [r5, #0x17]
	adds r0, #1
	strb r0, [r5, #0x17]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _0800F6E8
	movs r0, #0
	strb r0, [r5, #0x17]
	ldrb r0, [r5, #0x16]
	adds r0, #4
	movs r1, #0xf
	ands r0, r1
	strb r0, [r5, #0x16]
_0800F6E8:
	ldrh r0, [r5, #2]
	mov r1, r8
	strh r0, [r1]
	ldrh r0, [r5]
	cmp r0, #0x77
	bhi _0800F6FC
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r0, r0, r2
	b _0800F704
_0800F6FC:
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r0, r3
	mov r1, r8
_0800F704:
	strh r0, [r1, #2]
	ldrb r2, [r5, #0x16]
	ldr r3, _0800F744 @ =0x00008190
	adds r0, r2, r3
	mov r1, r8
	strh r0, [r1, #4]
	ldrb r0, [r5, #0x19]
	adds r0, #1
	strb r0, [r5, #0x19]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0800F798
	movs r0, #0
	strb r0, [r5, #0x19]
	ldrb r0, [r5, #0x18]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r5, #0x18]
	ldr r1, _0800F748 @ =0x040000D4
	lsls r0, r0, #5
	ldr r2, _0800F74C @ =gUnknown_0814DC60
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _0800F750 @ =0x05000300
	str r0, [r1, #4]
	ldr r0, _0800F754 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _0800F798
	.align 2, 0
_0800F744: .4byte 0x00008190
_0800F748: .4byte 0x040000D4
_0800F74C: .4byte gUnknown_0814DC60
_0800F750: .4byte 0x05000300
_0800F754: .4byte 0x80000010
_0800F758:
	ldrb r0, [r5, #0x10]
	cmp r0, #8
	bls _0800F762
	subs r0, #1
	strb r0, [r5, #0x10]
_0800F762:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _0800F798
	movs r4, #0
	movs r0, #0x80
	lsls r0, r0, #2
	mov r3, r8
	strh r0, [r3]
	ldr r0, _0800F7A4 @ =gAnimation+0x44
	movs r1, #1
	bl sub_8014138
	movs r0, #1
	movs r1, #1
	bl sub_8014D10
	movs r0, #0x82
	lsls r0, r0, #1
	str r0, [r6, #8]
	ldrb r0, [r5, #0xc]
	lsls r7, r0
	ldrb r1, [r5, #8]
	adds r0, r1, r7
	strb r0, [r5, #8]
	movs r0, #8
_0800F794:
	strb r0, [r5, #0x10]
	strb r4, [r5, #0x11]
_0800F798:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F7A4: .4byte gAnimation+0x44

	thumb_func_start sub_800F7A8
sub_800F7A8: @ 0x0800F7A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	str r1, [sp]
	ldrb r0, [r0, #0xa]
	cmp r0, #6
	bls _0800F7C0
	b _0800FD86
_0800F7C0:
	lsls r0, r0, #2
	ldr r1, _0800F7CC @ =_0800F7D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800F7CC: .4byte _0800F7D0
_0800F7D0: @ jump table
	.4byte _0800F7EC @ case 0
	.4byte _0800F810 @ case 1
	.4byte _0800F938 @ case 2
	.4byte _0800F9B0 @ case 3
	.4byte _0800FBC4 @ case 4
	.4byte _0800FC48 @ case 5
	.4byte _0800FCB8 @ case 6
_0800F7EC:
	ldr r1, [sp]
	ldrb r0, [r1, #0x10]
	cmp r0, #0xf
	bhi _0800F7F8
	adds r0, #1
	strb r0, [r1, #0x10]
_0800F7F8:
	movs r0, #0
	ldr r2, [sp]
	strb r0, [r2, #0x11]
	ldrb r3, [r2, #0x10]
	cmp r3, #0xf
	bhi _0800F806
	b _0800FD86
_0800F806:
	mov r5, r8
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	b _0800FD86
_0800F810:
	ldr r4, _0800F890 @ =gOamObjects+0x130
	mov r1, r8
	adds r1, #0xb2
	ldrb r6, [r1]
	lsls r0, r6, #2
	adds r0, r0, r6
	mov r7, r8
	adds r1, r0, r7
	ldr r0, _0800F894 @ =0x00000121
	adds r1, r1, r0
	movs r3, #0
	ldr r2, [sp]
	adds r2, #0x12
	mov sb, r2
_0800F82C:
	lsls r0, r3, #0xb
	ldr r5, _0800F898 @ =0x06013400
	adds r2, r0, r5
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0800F8AC
	movs r0, #1
	mov r6, sb
	strb r0, [r6]
	ldrb r7, [r1]
	lsls r5, r7, #0xb
	ldr r0, _0800F89C @ =gUnknown_081DE3E8
	adds r5, r5, r0
	ldr r6, _0800F8A0 @ =0x040000D4
	str r5, [r6]
	str r2, [r6, #4]
	ldr r0, _0800F8A4 @ =0x80000400
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	movs r2, #0
	lsls r0, r3, #2
	adds r6, r1, #1
	movs r7, #0x81
	lsls r7, r7, #7
	adds r7, r7, r0
	mov ip, r7
	movs r5, #0xd0
	lsls r5, r5, #1
	lsls r0, r3, #6
	str r0, [sp, #8]
	movs r1, #0x90
	lsls r1, r1, #8
	mov sl, r1
	ldr r1, _0800F8A8 @ =0x0000C038
_0800F870:
	mov r7, ip
	strh r7, [r4]
	strh r1, [r4, #2]
	ldr r7, [sp, #8]
	adds r0, r5, r7
	mov r7, sl
	orrs r0, r7
	strh r0, [r4, #4]
	adds r4, #8
	adds r5, #0x20
	adds r1, #0x40
	adds r2, #1
	cmp r2, #1
	bls _0800F870
	b _0800F8C2
	.align 2, 0
_0800F890: .4byte gOamObjects+0x130
_0800F894: .4byte 0x00000121
_0800F898: .4byte 0x06013400
_0800F89C: .4byte gUnknown_081DE3E8
_0800F8A0: .4byte 0x040000D4
_0800F8A4: .4byte 0x80000400
_0800F8A8: .4byte 0x0000C038
_0800F8AC:
	movs r0, #0
	mov r2, sb
	strb r0, [r2]
	movs r5, #0x96
	lsls r5, r5, #1
	strh r5, [r4, #2]
	adds r4, #8
	adds r6, r5, #0
	strh r6, [r4, #2]
	adds r4, #8
	adds r6, r1, #1
_0800F8C2:
	adds r1, r6, #0
	movs r7, #1
	add sb, r7
	adds r3, #1
	cmp r3, #3
	bls _0800F82C
	movs r1, #0
	ldr r0, [sp]
	strb r1, [r0, #4]
	mov r2, r8
	ldrb r0, [r2, #0xa]
	adds r0, #1
	strb r0, [r2, #0xa]
	strb r1, [r2, #0xb]
	movs r3, #0
	ldr r2, _0800F920 @ =gInvestigation+0x12
_0800F8E2:
	adds r0, r3, r2
	ldrb r0, [r0]
	adds r1, r0, r1
	adds r3, #1
	cmp r3, #3
	bls _0800F8E2
	cmp r1, #0
	beq _0800F8F4
	b _0800FD86
_0800F8F4:
	movs r0, #1
	bl SlideTextbox
	ldr r1, _0800F924 @ =gInvestigation
	movs r0, #4
	strb r0, [r1, #0xe]
	ldr r0, _0800F928 @ =gMain
	adds r1, r0, #0
	adds r1, #0xb3
	ldrb r1, [r1]
	cmp r1, #0xf
	bne _0800F930
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0x17
	beq _0800F916
	b _0800FD86
_0800F916:
	ldr r0, _0800F92C @ =0x00000159
	bl ChangeScriptSection
	b _0800FD86
	.align 2, 0
_0800F920: .4byte gInvestigation+0x12
_0800F924: .4byte gInvestigation
_0800F928: .4byte gMain
_0800F92C: .4byte 0x00000159
_0800F930:
	movs r0, #0x1d
	bl ChangeScriptSection
	b _0800FD86
_0800F938:
	ldr r6, _0800F9A8 @ =gOamObjects+0x1A8
	mov r3, r8
	ldrb r3, [r3, #0xb]
	cmp r3, #0xc
	bhi _0800F96C
	adds r4, r6, #0
	subs r4, #0x78
	movs r3, #0
	movs r5, #4
_0800F94A:
	movs r2, #0
	subs r0, r5, r3
	lsls r1, r0, #1
_0800F950:
	ldrh r7, [r4]
	subs r0, r7, r1
	strh r0, [r4]
	adds r4, #8
	adds r2, #1
	cmp r2, #1
	bls _0800F950
	adds r3, #1
	cmp r3, #3
	bls _0800F94A
	mov r1, r8
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
_0800F96C:
	adds r4, r6, #0
	ldrh r0, [r4, #2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r5, r0
	subs r0, #6
	ldr r1, _0800F9AC @ =0x000001FF
	ands r0, r1
	strh r0, [r4, #2]
	cmp r0, #0xff
	bls _0800F986
	movs r0, #0
	strh r0, [r4, #2]
_0800F986:
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _0800F9A0
	mov r2, r8
	ldrb r2, [r2, #0xb]
	cmp r2, #0xc
	bls _0800F9A0
	mov r3, r8
	ldrb r0, [r3, #0xa]
	adds r0, #1
	strb r0, [r3, #0xa]
	movs r0, #0
	strb r0, [r3, #0xb]
_0800F9A0:
	ldrh r6, [r4, #2]
	orrs r5, r6
	strh r5, [r4, #2]
	b _0800FD86
	.align 2, 0
_0800F9A8: .4byte gOamObjects+0x1A8
_0800F9AC: .4byte 0x000001FF
_0800F9B0:
	mov r0, r8
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800F9BC
	b _0800FD86
_0800F9BC:
	movs r4, #0
	movs r3, #0
	ldr r1, _0800FA04 @ =gInvestigation+0x12
_0800F9C2:
	adds r0, r3, r1
	ldrb r0, [r0]
	adds r4, r0, r4
	adds r3, #1
	cmp r3, #3
	bls _0800F9C2
	cmp r4, #0
	bne _0800FA10
	ldr r1, _0800FA08 @ =gScriptContext
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800F9E0
	b _0800FDDE
_0800F9E0:
	movs r0, #0
	bl SlideTextbox
	ldr r1, _0800FA0C @ =gInvestigation
	movs r0, #4
	strb r0, [r1, #0xe]
	movs r0, #0xe0
	strb r0, [r1, #0xf]
	movs r0, #0x10
	strb r0, [r1, #0x10]
	strb r4, [r1, #0x11]
	mov r7, r8
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	strb r4, [r7, #0xb]
	b _0800FDDE
	.align 2, 0
_0800FA04: .4byte gInvestigation+0x12
_0800FA08: .4byte gScriptContext
_0800FA0C: .4byte gInvestigation
_0800FA10:
	ldr r0, _0800FA74 @ =gJoypad
	ldrh r1, [r0, #2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800FA94
	mov r4, r8
	adds r4, #0xdc
	ldr r0, [r4]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800FA2C
	b _0800FD86
_0800FA2C:
	ldr r5, _0800FA78 @ =gMain
	ldrh r0, [r5, #0x30]
	cmp r0, #0x7f
	bne _0800FA36
	b _0800FD86
_0800FA36:
	bl PauseBGM
	ldr r0, _0800FA7C @ =0x040000D4
	ldr r1, _0800FA80 @ =gOamObjects
	str r1, [r0]
	ldr r2, _0800FA84 @ =gUnknown_0200093C
	str r2, [r0, #4]
	ldr r1, _0800FA88 @ =0x80000200
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r5, [r0]
	ldr r1, _0800FA8C @ =0xFFFFF6F8
	adds r2, r2, r1
	str r2, [r0, #4]
	ldr r1, _0800FA90 @ =0x80000160
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #0x31
	bl PlaySE
	ldr r0, [r4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	ldr r0, [r5, #8]
	mov r2, r8
	str r0, [r2, #0xc]
	movs r0, #0xa
	str r0, [r2, #8]
	b _0800FD86
	.align 2, 0
_0800FA74: .4byte gJoypad
_0800FA78: .4byte gMain
_0800FA7C: .4byte 0x040000D4
_0800FA80: .4byte gOamObjects
_0800FA84: .4byte gUnknown_0200093C
_0800FA88: .4byte 0x80000200
_0800FA8C: .4byte 0xFFFFF6F8
_0800FA90: .4byte 0x80000160
_0800FA94:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800FAE6
	mov r0, r8
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800FAAE
	b _0800FD86
_0800FAAE:
	movs r0, #0x31
	bl PlaySE
	movs r0, #6
	mov r3, r8
	strb r0, [r3, #0xa]
	ldr r0, _0800FAD8 @ =gMain+0x8
	ldr r0, [r0]
	str r0, [r3, #0xc]
	movs r0, #7
	str r0, [r3, #8]
	ldr r4, _0800FADC @ =gOamObjects+0x130
	movs r3, #0
	movs r0, #0x96
	lsls r0, r0, #1
_0800FACC:
	strh r0, [r4, #2]
	adds r4, #8
	adds r3, #1
	cmp r3, #7
	bls _0800FACC
	b _0800FD86
	.align 2, 0
_0800FAD8: .4byte gMain+0x8
_0800FADC: .4byte gOamObjects+0x130
_0800FAE0:
	ldr r6, [sp]
	strb r2, [r6, #4]
	b _0800FB10
_0800FAE6:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800FB22
	movs r3, #0
	ldr r7, [sp]
	ldrb r0, [r7, #4]
	subs r2, r0, #1
	adds r5, r0, #0
	movs r4, #3
	adds r1, r7, #0
	adds r1, #0x12
_0800FAFE:
	ands r2, r4
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800FAE0
	subs r2, #1
	adds r3, #1
	cmp r3, #3
	bls _0800FAFE
_0800FB10:
	ldr r0, [sp]
	ldrb r0, [r0, #4]
	cmp r5, r0
	bne _0800FB1A
	b _0800FD86
_0800FB1A:
	b _0800FB56
_0800FB1C:
	ldr r1, [sp]
	strb r2, [r1, #4]
	b _0800FB4C
_0800FB22:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800FB5E
	movs r3, #0
	ldr r2, [sp]
	ldrb r0, [r2, #4]
	adds r2, r0, #1
	adds r5, r0, #0
	movs r4, #3
	ldr r1, [sp]
	adds r1, #0x12
_0800FB3A:
	ands r2, r4
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800FB1C
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bls _0800FB3A
_0800FB4C:
	ldr r3, [sp]
	ldrb r3, [r3, #4]
	cmp r5, r3
	bne _0800FB56
	b _0800FD86
_0800FB56:
	movs r0, #0x2a
	bl PlaySE
	b _0800FD86
_0800FB5E:
	movs r4, #1
	ands r4, r1
	cmp r4, #0
	beq _0800FBA8
	movs r0, #0x2b
	bl PlaySE
	mov r3, r8
	adds r3, #0xb2
	ldr r5, [sp]
	ldrb r2, [r5, #4]
	adds r2, #1
	ldrb r6, [r3]
	lsls r1, r6, #2
	adds r1, r1, r6
	adds r1, r2, r1
	movs r0, #0x90
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
	movs r0, #0x14
	bl FadeOutBGM
	movs r0, #2
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	ldr r0, _0800FBA4 @ =0x00000504
	mov r7, r8
	str r0, [r7, #8]
	b _0800FD86
	.align 2, 0
_0800FBA4: .4byte 0x00000504
_0800FBA8:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800FBB2
	b _0800FD86
_0800FBB2:
	movs r0, #0x2c
	bl PlaySE
	mov r1, r8
	ldrb r0, [r1, #0xa]
	adds r0, #1
	strb r0, [r1, #0xa]
	strb r4, [r1, #0xb]
	b _0800FD86
_0800FBC4:
	ldr r6, _0800FC40 @ =gOamObjects+0x1A8
	mov r2, r8
	ldrb r2, [r2, #0xb]
	cmp r2, #0xc
	bhi _0800FBFA
	adds r4, r6, #0
	subs r4, #0x78
	movs r3, #0
	movs r5, #4
_0800FBD6:
	movs r2, #0
	subs r0, r5, r3
	lsls r1, r0, #1
_0800FBDC:
	ldrh r0, [r4]
	adds r0, #4
	adds r0, r0, r1
	strh r0, [r4]
	adds r4, #8
	adds r2, #1
	cmp r2, #1
	bls _0800FBDC
	adds r3, #1
	cmp r3, #3
	bls _0800FBD6
	mov r3, r8
	ldrb r0, [r3, #0xb]
	adds r0, #1
	strb r0, [r3, #0xb]
_0800FBFA:
	adds r4, r6, #0
	ldrh r0, [r4, #2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r5, r0
	adds r0, #6
	ldr r1, _0800FC44 @ =0x000001FF
	ands r0, r1
	strh r0, [r4, #2]
	cmp r0, #0x3b
	bls _0800FC36
	movs r0, #0x3c
	strh r0, [r4, #2]
	ldr r0, [sp]
	movs r1, #0xd
	bl sub_800EB24
	movs r0, #2
	ldr r6, [sp]
	strb r0, [r6, #0xe]
	movs r0, #0xe0
	strb r0, [r6, #0xf]
	movs r0, #0x10
	strb r0, [r6, #0x10]
	movs r0, #0
	strb r0, [r6, #0x11]
	mov r7, r8
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_0800FC36:
	ldrh r0, [r4, #2]
	orrs r5, r0
	strh r5, [r4, #2]
	b _0800FD86
	.align 2, 0
_0800FC40: .4byte gOamObjects+0x1A8
_0800FC44: .4byte 0x000001FF
_0800FC48:
	mov r1, r8
	ldrb r1, [r1, #0xb]
	cmp r1, #0xc
	bhi _0800FC7A
	ldr r4, _0800FCB4 @ =gOamObjects+0x130
	movs r3, #0
	movs r5, #4
_0800FC56:
	movs r2, #0
	subs r0, r5, r3
	lsls r1, r0, #1
_0800FC5C:
	ldrh r0, [r4]
	adds r0, #4
	adds r0, r0, r1
	strh r0, [r4]
	adds r4, #8
	adds r2, #1
	cmp r2, #1
	bls _0800FC5C
	adds r3, #1
	cmp r3, #3
	bls _0800FC56
	mov r2, r8
	ldrb r0, [r2, #0xb]
	adds r0, #1
	strb r0, [r2, #0xb]
_0800FC7A:
	ldr r3, [sp]
	ldrb r0, [r3, #0x10]
	cmp r0, #8
	bls _0800FC86
	subs r0, #1
	strb r0, [r3, #0x10]
_0800FC86:
	ldr r5, [sp]
	ldrb r1, [r5, #0xe]
	cmp r1, #0
	bne _0800FD86
	mov r6, r8
	ldrb r6, [r6, #0xb]
	cmp r6, #0xc
	bls _0800FD86
	movs r0, #0x82
	lsls r0, r0, #1
	mov r7, r8
	str r0, [r7, #8]
	movs r0, #1
	ldrb r2, [r5, #0xc]
	lsls r0, r2
	ldrb r3, [r5, #8]
	adds r0, r3, r0
	strb r0, [r5, #8]
	movs r0, #8
	strb r0, [r5, #0x10]
	strb r1, [r5, #0x11]
	b _0800FD86
	.align 2, 0
_0800FCB4: .4byte gOamObjects+0x130
_0800FCB8:
	ldr r4, _0800FD38 @ =gOamObjects+0x130
	mov r1, r8
	adds r1, #0xb2
	ldrb r5, [r1]
	lsls r0, r5, #2
	adds r0, r0, r5
	mov r6, r8
	adds r1, r0, r6
	ldr r7, _0800FD3C @ =0x00000121
	adds r1, r1, r7
	movs r3, #0
	ldr r0, [sp]
	adds r0, #0x12
	mov sb, r0
	movs r2, #0
	str r2, [sp, #4]
_0800FCD8:
	lsls r0, r3, #0xb
	ldr r5, _0800FD40 @ =0x06013400
	adds r2, r0, r5
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0800FD58
	movs r0, #1
	mov r6, sb
	strb r0, [r6]
	ldrb r7, [r1]
	lsls r5, r7, #0xb
	ldr r0, _0800FD44 @ =gUnknown_081DE3E8
	adds r5, r5, r0
	ldr r6, _0800FD48 @ =0x040000D4
	str r5, [r6]
	str r2, [r6, #4]
	ldr r0, _0800FD4C @ =0x80000400
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	movs r2, #0
	adds r6, r1, #1
	ldr r7, [sp, #4]
	ldr r0, _0800FD50 @ =0x00004018
	adds r7, r7, r0
	mov ip, r7
	movs r5, #0xd0
	lsls r5, r5, #1
	lsls r1, r3, #6
	str r1, [sp, #8]
	movs r7, #0x90
	lsls r7, r7, #8
	mov sl, r7
	ldr r1, _0800FD54 @ =0x0000C038
_0800FD1A:
	mov r0, ip
	strh r0, [r4]
	strh r1, [r4, #2]
	ldr r7, [sp, #8]
	adds r0, r5, r7
	mov r7, sl
	orrs r0, r7
	strh r0, [r4, #4]
	adds r4, #8
	adds r5, #0x20
	adds r1, #0x40
	adds r2, #1
	cmp r2, #1
	bls _0800FD1A
	b _0800FD6E
	.align 2, 0
_0800FD38: .4byte gOamObjects+0x130
_0800FD3C: .4byte 0x00000121
_0800FD40: .4byte 0x06013400
_0800FD44: .4byte gUnknown_081DE3E8
_0800FD48: .4byte 0x040000D4
_0800FD4C: .4byte 0x80000400
_0800FD50: .4byte 0x00004018
_0800FD54: .4byte 0x0000C038
_0800FD58:
	movs r0, #0
	mov r2, sb
	strb r0, [r2]
	movs r5, #0x96
	lsls r5, r5, #1
	strh r5, [r4, #2]
	adds r4, #8
	adds r6, r5, #0
	strh r6, [r4, #2]
	adds r4, #8
	adds r6, r1, #1
_0800FD6E:
	adds r1, r6, #0
	movs r7, #1
	add sb, r7
	ldr r0, [sp, #4]
	adds r0, #0x1e
	str r0, [sp, #4]
	adds r3, #1
	cmp r3, #3
	bls _0800FCD8
	movs r0, #3
	mov r1, r8
	strb r0, [r1, #0xa]
_0800FD86:
	ldr r4, _0800FDB4 @ =gOamObjects+0x130
	movs r3, #0
_0800FD8A:
	ldr r2, [sp]
	ldrb r2, [r2, #4]
	cmp r3, r2
	bne _0800FDBC
	movs r2, #0
	adds r3, #1
	ldr r5, _0800FDB8 @ =0x00000FFF
	movs r6, #0x90
	lsls r6, r6, #8
	adds r1, r6, #0
_0800FD9E:
	adds r0, r5, #0
	ldrh r7, [r4, #4]
	ands r0, r7
	adds r0, r0, r1
	strh r0, [r4, #4]
	adds r4, #8
	adds r2, #1
	cmp r2, #1
	bls _0800FD9E
	b _0800FDDA
	.align 2, 0
_0800FDB4: .4byte gOamObjects+0x130
_0800FDB8: .4byte 0x00000FFF
_0800FDBC:
	movs r2, #0
	adds r3, #1
	ldr r5, _0800FDF0 @ =0x00000FFF
	movs r0, #0xa0
	lsls r0, r0, #8
	adds r1, r0, #0
_0800FDC8:
	adds r0, r5, #0
	ldrh r6, [r4, #4]
	ands r0, r6
	adds r0, r0, r1
	strh r0, [r4, #4]
	adds r4, #8
	adds r2, #1
	cmp r2, #1
	bls _0800FDC8
_0800FDDA:
	cmp r3, #3
	bls _0800FD8A
_0800FDDE:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800FDF0: .4byte 0x00000FFF

	thumb_func_start sub_800FDF4
sub_800FDF4: @ 0x0800FDF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov sl, r0
	str r1, [sp]
	ldrb r0, [r0, #0xa]
	cmp r0, #8
	bls _0800FE0E
	bl _080108B6
_0800FE0E:
	lsls r0, r0, #2
	ldr r1, _0800FE18 @ =_0800FE1C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800FE18: .4byte _0800FE1C
_0800FE1C: @ jump table
	.4byte _0800FE40 @ case 0
	.4byte _0800FE68 @ case 1
	.4byte _0800FFB0 @ case 2
	.4byte _08010028 @ case 3
	.4byte _080103C8 @ case 4
	.4byte _0801044C @ case 5
	.4byte _080104F8 @ case 6
	.4byte _0801076C @ case 7
	.4byte _080107C0 @ case 8
_0800FE40:
	ldr r1, [sp]
	ldrb r0, [r1, #0x10]
	cmp r0, #0xf
	bhi _0800FE4C
	adds r0, #1
	strb r0, [r1, #0x10]
_0800FE4C:
	movs r0, #0
	ldr r2, [sp]
	strb r0, [r2, #0x11]
	ldrb r3, [r2, #0x10]
	cmp r3, #0xf
	bhi _0800FE5C
	bl _080108B6
_0800FE5C:
	mov r4, sl
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	bl _080108B6
_0800FE68:
	ldr r3, _0800FF0C @ =gTalkData
	ldrb r1, [r3]
	adds r0, r1, #0
	ldr r5, _0800FF10 @ =gOamObjects+0x130
	ldr r7, [sp]
	adds r7, #0x12
	str r7, [sp, #8]
	cmp r0, #0xff
	beq _0800FE9E
	mov r0, sl
	adds r0, #0xb2
	ldrb r2, [r0]
	ldr r4, _0800FF14 @ =gAnimation+0x52
_0800FE82:
	cmp r2, r1
	bne _0800FE94
	ldrb r0, [r4]
	ldrb r1, [r3, #1]
	cmp r0, r1
	bne _0800FE94
	ldrb r7, [r3, #3]
	cmp r7, #1
	beq _0800FE9E
_0800FE94:
	adds r3, #0x14
	ldrb r1, [r3]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0800FE82
_0800FE9E:
	adds r6, r5, #0
	adds r1, r3, #4
	movs r7, #0
	ldr r0, [sp, #8]
	mov r8, r0
_0800FEA8:
	lsls r0, r7, #0xb
	ldr r3, _0800FF18 @ =0x06013400
	adds r2, r0, r3
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0800FF2C
	movs r0, #1
	mov r4, r8
	strb r0, [r4]
	ldrb r0, [r1]
	lsls r5, r0, #0xb
	ldr r3, _0800FF1C @ =gUnknown_081EB3E8
	adds r5, r5, r3
	ldr r4, _0800FF20 @ =0x040000D4
	str r5, [r4]
	str r2, [r4, #4]
	ldr r0, _0800FF24 @ =0x80000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r4, #0
	lsls r0, r7, #2
	adds r2, r1, #1
	movs r5, #0x81
	lsls r5, r5, #7
	adds r5, r5, r0
	mov ip, r5
	movs r3, #0xd0
	lsls r3, r3, #1
	lsls r0, r7, #6
	str r0, [sp, #0x18]
	movs r1, #0x90
	lsls r1, r1, #8
	mov sb, r1
	ldr r1, _0800FF28 @ =0x0000C038
_0800FEEC:
	mov r5, ip
	strh r5, [r6]
	strh r1, [r6, #2]
	ldr r5, [sp, #0x18]
	adds r0, r3, r5
	mov r5, sb
	orrs r0, r5
	strh r0, [r6, #4]
	adds r6, #8
	adds r3, #0x20
	adds r1, #0x40
	adds r4, #1
	cmp r4, #1
	bls _0800FEEC
	b _0800FF42
	.align 2, 0
_0800FF0C: .4byte gTalkData
_0800FF10: .4byte gOamObjects+0x130
_0800FF14: .4byte gAnimation+0x52
_0800FF18: .4byte 0x06013400
_0800FF1C: .4byte gUnknown_081EB3E8
_0800FF20: .4byte 0x040000D4
_0800FF24: .4byte 0x80000400
_0800FF28: .4byte 0x0000C038
_0800FF2C:
	movs r0, #0
	mov r2, r8
	strb r0, [r2]
	movs r3, #0x96
	lsls r3, r3, #1
	strh r3, [r6, #2]
	adds r6, #8
	adds r4, r3, #0
	strh r4, [r6, #2]
	adds r6, #8
	adds r2, r1, #1
_0800FF42:
	adds r1, r2, #0
	movs r5, #1
	add r8, r5
	adds r7, #1
	cmp r7, #3
	bls _0800FEA8
	ldr r1, _0800FF80 @ =0x040000D4
	ldr r0, _0800FF84 @ =gUnknown_08142BFC
	str r0, [r1]
	ldr r0, _0800FF88 @ =0x06015400
	str r0, [r1, #4]
	ldr r0, _0800FF8C @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800FF90 @ =gUnknown_0814DE80
	str r0, [r1]
	ldr r0, _0800FF94 @ =0x05000360
	str r0, [r1, #4]
	ldr r0, _0800FF98 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r7, [sp]
	ldrb r1, [r7, #5]
	adds r0, r1, #0
	cmp r0, #0
	beq _0800FF9C
	movs r0, #0
	strb r1, [r7, #4]
	strb r0, [r7, #5]
	b _0800FFA0
	.align 2, 0
_0800FF80: .4byte 0x040000D4
_0800FF84: .4byte gUnknown_08142BFC
_0800FF88: .4byte 0x06015400
_0800FF8C: .4byte 0x80000100
_0800FF90: .4byte gUnknown_0814DE80
_0800FF94: .4byte 0x05000360
_0800FF98: .4byte 0x80000010
_0800FF9C:
	ldr r1, [sp]
	strb r0, [r1, #4]
_0800FFA0:
	mov r2, sl
	ldrb r0, [r2, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r2, #0xa]
	strb r1, [r2, #0xb]
	bl _080108B6
_0800FFB0:
	ldr r3, _08010020 @ =gOamObjects+0x1B0
	mov r4, sl
	ldrb r4, [r4, #0xb]
	cmp r4, #0xc
	bhi _0800FFE4
	adds r6, r3, #0
	subs r6, #0x80
	movs r7, #0
	movs r2, #4
_0800FFC2:
	movs r4, #0
	subs r0, r2, r7
	lsls r1, r0, #1
_0800FFC8:
	ldrh r5, [r6]
	subs r0, r5, r1
	strh r0, [r6]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _0800FFC8
	adds r7, #1
	cmp r7, #3
	bls _0800FFC2
	mov r7, sl
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
_0800FFE4:
	adds r6, r3, #0
	ldrh r0, [r6, #2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r5, r0
	subs r0, #9
	ldr r1, _08010024 @ =0x000001FF
	ands r0, r1
	strh r0, [r6, #2]
	cmp r0, #0xff
	bls _0800FFFE
	movs r0, #0
	strh r0, [r6, #2]
_0800FFFE:
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _08010006
	b _0801043A
_08010006:
	mov r0, sl
	ldrb r0, [r0, #0xb]
	cmp r0, #0xc
	bhi _08010010
	b _0801043A
_08010010:
	mov r1, sl
	ldrb r0, [r1, #0xa]
	adds r0, #1
	strb r0, [r1, #0xa]
	movs r0, #0
	strb r0, [r1, #0xb]
	b _0801043A
	.align 2, 0
_08010020: .4byte gOamObjects+0x1B0
_08010024: .4byte 0x000001FF
_08010028:
	ldr r1, _08010108 @ =0x040000D4
	ldr r0, _0801010C @ =gUnknown_08142BFC
	str r0, [r1]
	ldr r0, _08010110 @ =0x06015400
	str r0, [r1, #4]
	ldr r0, _08010114 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08010118 @ =gUnknown_0814DE80
	str r0, [r1]
	ldr r0, _0801011C @ =0x05000360
	str r0, [r1, #4]
	ldr r0, _08010120 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r3, _08010124 @ =gTalkData
	ldrb r1, [r3]
	adds r0, r1, #0
	mov r5, sl
	adds r5, #0x7e
	cmp r0, #0xff
	beq _08010078
	mov r0, sl
	adds r0, #0xb2
	ldrb r2, [r0]
	ldr r4, _08010128 @ =gAnimation+0x52
_0801005C:
	cmp r2, r1
	bne _0801006E
	ldrb r7, [r4]
	ldrb r0, [r3, #1]
	cmp r7, r0
	bne _0801006E
	ldrb r1, [r3, #3]
	cmp r1, #1
	beq _08010078
_0801006E:
	adds r3, #0x14
	ldrb r1, [r3]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0801005C
_08010078:
	movs r2, #1
	ldrh r0, [r5]
	cmp r0, #0
	beq _08010082
	b _080102F2
_08010082:
	ldr r0, _0801012C @ =gJoypad
	ldrh r1, [r0, #2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08010158
	mov r5, sl
	adds r5, #0xdc
	ldr r0, [r5]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801009E
	b _080102F2
_0801009E:
	ldr r6, _08010130 @ =gMain
	ldrh r4, [r6, #0x30]
	cmp r4, #0x7f
	bne _080100A8
	b _080102F2
_080100A8:
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl PauseBGM
	ldr r0, _08010108 @ =0x040000D4
	ldr r1, _08010134 @ =gOamObjects
	str r1, [r0]
	ldr r4, _08010138 @ =gUnknown_0200093C
	str r4, [r0, #4]
	ldr r1, _0801013C @ =0x80000200
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r6, [r0]
	ldr r7, _08010140 @ =0xFFFFF6F8
	adds r1, r4, r7
	str r1, [r0, #4]
	ldr r1, _08010144 @ =0x80000160
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _08010148 @ =gScriptContext
	ldr r0, [r0, #0x38]
	ldr r1, _0801014C @ =0xFF0000FF
	ands r0, r1
	ldr r1, _08010150 @ =0x01000002
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	cmp r0, r1
	bne _080100E6
	ldr r1, _08010154 @ =0xFFFFF711
	adds r0, r4, r1
	strb r2, [r0]
_080100E6:
	movs r0, #0x31
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl PlaySE
	ldr r0, [r5]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5]
	ldr r0, [r6, #8]
	mov r4, sl
	str r0, [r4, #0xc]
	movs r0, #0xa
	str r0, [r4, #8]
	ldr r2, [sp, #0x10]
	b _080102F0
	.align 2, 0
_08010108: .4byte 0x040000D4
_0801010C: .4byte gUnknown_08142BFC
_08010110: .4byte 0x06015400
_08010114: .4byte 0x80000100
_08010118: .4byte gUnknown_0814DE80
_0801011C: .4byte 0x05000360
_08010120: .4byte 0x80000010
_08010124: .4byte gTalkData
_08010128: .4byte gAnimation+0x52
_0801012C: .4byte gJoypad
_08010130: .4byte gMain
_08010134: .4byte gOamObjects
_08010138: .4byte gUnknown_0200093C
_0801013C: .4byte 0x80000200
_08010140: .4byte 0xFFFFF6F8
_08010144: .4byte 0x80000160
_08010148: .4byte gScriptContext
_0801014C: .4byte 0xFF0000FF
_08010150: .4byte 0x01000002
_08010154: .4byte 0xFFFFF711
_08010158:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080101B2
	mov r0, sl
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08010172
	b _080102F2
_08010172:
	movs r0, #0x31
	str r3, [sp, #0x14]
	bl PlaySE
	movs r0, #8
	mov r5, sl
	strb r0, [r5, #0xa]
	ldr r0, _080101A4 @ =gMain+0x8
	ldr r0, [r0]
	str r0, [r5, #0xc]
	movs r0, #7
	str r0, [r5, #8]
	ldr r6, _080101A8 @ =gOamObjects+0x130
	movs r7, #0
	movs r0, #0x96
	lsls r0, r0, #1
	ldr r3, [sp, #0x14]
_08010194:
	strh r0, [r6, #2]
	adds r6, #8
	adds r7, #1
	cmp r7, #7
	bls _08010194
	movs r2, #0
	b _080102F2
	.align 2, 0
_080101A4: .4byte gMain+0x8
_080101A8: .4byte gOamObjects+0x130
_080101AC:
	ldr r7, [sp]
	strb r4, [r7, #4]
	b _080101DA
_080101B2:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080101F8
	movs r7, #0
	ldr r1, [sp]
	ldrb r0, [r1, #4]
	subs r4, r0, #1
	adds r5, r0, #0
	movs r6, #3
	adds r1, #0x12
_080101C8:
	ands r4, r6
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080101AC
	subs r4, #1
	adds r7, #1
	cmp r7, #3
	bls _080101C8
_080101DA:
	ldr r4, [sp]
	ldrb r4, [r4, #4]
	cmp r5, r4
	bne _080101E4
	b _080102F2
_080101E4:
	movs r0, #0x2a
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl PlaySE
	ldr r2, [sp, #0x10]
	b _080102F0
_080101F2:
	ldr r7, [sp]
	strb r4, [r7, #4]
	b _08010224
_080101F8:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _0801023A
	movs r7, #0
	ldr r1, [sp]
	ldrb r0, [r1, #4]
	adds r4, r0, #1
	adds r5, r0, #0
	movs r6, #3
	adds r1, #0x12
_08010212:
	ands r4, r6
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080101F2
	adds r4, #1
	adds r7, #1
	cmp r7, #3
	bls _08010212
_08010224:
	ldr r4, [sp]
	ldrb r4, [r4, #4]
	cmp r5, r4
	beq _080102F2
	movs r0, #0x2a
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl PlaySE
	ldr r2, [sp, #0x10]
	b _080102F0
_0801023A:
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080102D4
	movs r0, #0x2b
	str r3, [sp, #0x14]
	bl PlaySE
	ldr r5, [sp]
	ldrb r5, [r5, #4]
	lsls r1, r5, #1
	ldr r3, [sp, #0x14]
	adds r0, r3, #0
	adds r0, #0xc
	adds r0, r0, r1
	ldrh r5, [r0]
	adds r0, r5, #0
	bl ChangeScriptSection
	movs r0, #1
	bl SlideTextbox
	ldr r3, [sp, #0x14]
	adds r4, r3, #0
	adds r4, #8
	ldr r7, [sp]
	ldrb r7, [r7, #4]
	adds r0, r7, r4
	ldrb r1, [r0]
	movs r0, #2
	bl GetFlag
	adds r1, r0, #0
	str r4, [sp, #4]
	ldr r3, [sp, #0x14]
	cmp r1, #0
	beq _08010294
	ldr r0, _08010290 @ =gScriptContext
	strb r6, [r0, #0x13]
	b _080102AE
	.align 2, 0
_08010290: .4byte gScriptContext
_08010294:
	ldr r0, _080102D0 @ =gScriptContext
	strb r1, [r0, #0x13]
	ldr r1, [sp]
	ldrb r1, [r1, #4]
	ldr r2, [sp, #4]
	adds r0, r1, r2
	ldrb r1, [r0]
	movs r0, #2
	movs r2, #1
	str r3, [sp, #0x14]
	bl ChangeFlag
	ldr r3, [sp, #0x14]
_080102AE:
	ldr r0, [sp]
	movs r1, #4
	str r3, [sp, #0x14]
	bl sub_800EB24
	movs r1, #0
	movs r0, #0xf0
	ldr r4, [sp]
	strb r0, [r4, #0xf]
	movs r0, #3
	strb r0, [r4, #0xe]
	movs r0, #6
	mov r5, sl
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xb]
	b _080102EE
	.align 2, 0
_080102D0: .4byte gScriptContext
_080102D4:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080102F2
	movs r0, #0x2c
	str r3, [sp, #0x14]
	bl PlaySE
	mov r7, sl
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	strb r4, [r7, #0xb]
_080102EE:
	movs r2, #0
_080102F0:
	ldr r3, [sp, #0x14]
_080102F2:
	ldr r6, _08010360 @ =gOamObjects+0x110
	cmp r2, #0
	beq _080103B6
	movs r7, #0
	adds r0, r3, #0
	adds r0, #8
	str r0, [sp, #4]
	ldr r5, _08010364 @ =0x040000D4
	movs r1, #0x10
	mov sl, r1
	movs r2, #0x16
	mov sb, r2
	adds r3, #0xc
	mov r8, r3
_0801030E:
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r6, #2]
	movs r4, #0
_08010316:
	ldr r3, [sp, #4]
	adds r0, r3, r7
	ldrb r1, [r0]
	movs r0, #2
	bl GetFlag
	cmp r0, #0
	beq _0801039C
	mov r4, r8
	ldrh r0, [r4]
	bl sub_800EADC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08010384
	ldr r0, _08010368 @ =gUnknown_081471FC
	str r0, [r5]
	ldr r0, _0801036C @ =0x06013000
	str r0, [r5, #4]
	ldr r0, _08010370 @ =0x80000100
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08010374 @ =gUnknown_0814E320
	str r0, [r5]
	ldr r0, _08010378 @ =0x050002E0
	str r0, [r5, #4]
	ldr r0, _0801037C @ =0x80000010
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	mov r0, sb
	strh r0, [r6]
	ldr r0, _08010380 @ =0x00008024
	strh r0, [r6, #2]
	movs r0, #0xe3
	lsls r0, r0, #7
	strh r0, [r6, #4]
	b _080103A2
	.align 2, 0
_08010360: .4byte gOamObjects+0x110
_08010364: .4byte 0x040000D4
_08010368: .4byte gUnknown_081471FC
_0801036C: .4byte 0x06013000
_08010370: .4byte 0x80000100
_08010374: .4byte gUnknown_0814E320
_08010378: .4byte 0x050002E0
_0801037C: .4byte 0x80000010
_08010380: .4byte 0x00008024
_08010384:
	mov r1, sl
	strh r1, [r6]
	ldr r0, _08010394 @ =0x00008030
	strh r0, [r6, #2]
	ldr r0, _08010398 @ =0x0000B2A0
	strh r0, [r6, #4]
	b _080103A2
	.align 2, 0
_08010394: .4byte 0x00008030
_08010398: .4byte 0x0000B2A0
_0801039C:
	adds r4, #1
	cmp r4, #3
	bls _08010316
_080103A2:
	adds r6, #8
	movs r2, #0x1e
	add sl, r2
	add sb, r2
	movs r3, #2
	add r8, r3
	adds r7, #1
	cmp r7, #3
	bls _0801030E
	b _080108B6
_080103B6:
	movs r7, #0
	movs r0, #0x96
	lsls r0, r0, #1
_080103BC:
	strh r0, [r6, #2]
	adds r6, #8
	adds r7, #1
	cmp r7, #3
	bls _080103BC
	b _080108B6
_080103C8:
	ldr r3, _08010444 @ =gOamObjects+0x1B0
	mov r4, sl
	ldrb r4, [r4, #0xb]
	cmp r4, #0xc
	bhi _080103FE
	adds r6, r3, #0
	subs r6, #0x80
	movs r7, #0
	movs r2, #4
_080103DA:
	movs r4, #0
	subs r0, r2, r7
	lsls r1, r0, #1
_080103E0:
	ldrh r0, [r6]
	adds r0, #4
	adds r0, r0, r1
	strh r0, [r6]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _080103E0
	adds r7, #1
	cmp r7, #3
	bls _080103DA
	mov r5, sl
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_080103FE:
	adds r6, r3, #0
	ldrh r0, [r6, #2]
	movs r5, #0xfe
	lsls r5, r5, #8
	ands r5, r0
	adds r0, #9
	ldr r1, _08010448 @ =0x000001FF
	ands r0, r1
	strh r0, [r6, #2]
	cmp r0, #0x77
	bls _0801043A
	movs r0, #0x78
	strh r0, [r6, #2]
	ldr r0, [sp]
	movs r1, #0xb
	bl sub_800EB24
	movs r0, #2
	ldr r7, [sp]
	strb r0, [r7, #0xe]
	movs r0, #0xe0
	strb r0, [r7, #0xf]
	movs r0, #0x10
	strb r0, [r7, #0x10]
	movs r0, #0
	strb r0, [r7, #0x11]
	mov r1, sl
	ldrb r0, [r1, #0xa]
	adds r0, #1
	strb r0, [r1, #0xa]
_0801043A:
	ldrh r2, [r6, #2]
	orrs r5, r2
	strh r5, [r6, #2]
	b _080108B6
	.align 2, 0
_08010444: .4byte gOamObjects+0x1B0
_08010448: .4byte 0x000001FF
_0801044C:
	mov r3, sl
	ldrb r3, [r3, #0xb]
	cmp r3, #0xc
	bhi _0801047E
	ldr r6, _080104D8 @ =gOamObjects+0x130
	movs r7, #0
	movs r2, #4
_0801045A:
	movs r4, #0
	subs r0, r2, r7
	lsls r1, r0, #1
_08010460:
	ldrh r0, [r6]
	adds r0, #4
	adds r0, r0, r1
	strh r0, [r6]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _08010460
	adds r7, #1
	cmp r7, #3
	bls _0801045A
	mov r4, sl
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_0801047E:
	ldr r5, [sp]
	ldrb r0, [r5, #0x10]
	cmp r0, #8
	bls _0801048A
	subs r0, #1
	strb r0, [r5, #0x10]
_0801048A:
	ldr r7, [sp]
	ldrb r2, [r7, #0xe]
	cmp r2, #0
	beq _08010494
	b _080108B6
_08010494:
	mov r0, sl
	ldrb r0, [r0, #0xb]
	cmp r0, #0xc
	bhi _0801049E
	b _080108B6
_0801049E:
	ldr r1, _080104DC @ =0x040000D4
	ldr r0, _080104E0 @ =gUnknown_081412FC
	str r0, [r1]
	ldr r0, _080104E4 @ =0x06013000
	str r0, [r1, #4]
	ldr r0, _080104E8 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _080104EC @ =gUnknown_0814DC00
	str r0, [r1]
	ldr r0, _080104F0 @ =0x050002E0
	str r0, [r1, #4]
	ldr r0, _080104F4 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x82
	lsls r0, r0, #1
	mov r1, sl
	str r0, [r1, #8]
	movs r0, #1
	ldrb r3, [r7, #0xc]
	lsls r0, r3
	ldrb r4, [r7, #8]
	adds r0, r4, r0
	strb r0, [r7, #8]
	movs r0, #8
	strb r0, [r7, #0x10]
	strb r2, [r7, #0x11]
	b _080108B6
	.align 2, 0
_080104D8: .4byte gOamObjects+0x130
_080104DC: .4byte 0x040000D4
_080104E0: .4byte gUnknown_081412FC
_080104E4: .4byte 0x06013000
_080104E8: .4byte 0x80000100
_080104EC: .4byte gUnknown_0814DC00
_080104F0: .4byte 0x050002E0
_080104F4: .4byte 0x80000010
_080104F8:
	mov r0, sl
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _08010504
	b _08010910
_08010504:
	ldr r1, _0801058C @ =gJoypad
	movs r0, #8
	ldrh r5, [r1, #2]
	ands r0, r5
	adds r2, r1, #0
	ldr r7, _08010590 @ =gScriptContext
	mov r8, r7
	cmp r0, #0
	beq _080105BC
	mov r4, sl
	adds r4, #0xdc
	ldr r0, [r4]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080105BC
	movs r0, #5
	mov r1, r8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _080105BC
	ldr r5, _08010594 @ =gMain
	ldrh r3, [r5, #0x30]
	cmp r3, #0x7f
	beq _080105BC
	bl PauseBGM
	ldr r0, _08010598 @ =0x040000D4
	ldr r1, _0801059C @ =gOamObjects
	str r1, [r0]
	ldr r2, _080105A0 @ =gUnknown_0200093C
	str r2, [r0, #4]
	ldr r1, _080105A4 @ =0x80000200
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r5, [r0]
	ldr r7, _080105A8 @ =0xFFFFF6F8
	adds r1, r2, r7
	str r1, [r0, #4]
	ldr r1, _080105AC @ =0x80000160
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	mov r1, r8
	ldr r0, [r1, #0x38]
	ldr r1, _080105B0 @ =0xFF0000FF
	ands r0, r1
	ldr r1, _080105B4 @ =0x01000002
	cmp r0, r1
	bne _08010570
	ldr r3, _080105B8 @ =0xFFFFF711
	adds r1, r2, r3
	movs r0, #1
	strb r0, [r1]
_08010570:
	movs r0, #0x31
	bl PlaySE
	ldr r0, [r4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	ldr r0, [r5, #8]
	mov r4, sl
	str r0, [r4, #0xc]
	movs r0, #0xa
	str r0, [r4, #8]
	b _08010910
	.align 2, 0
_0801058C: .4byte gJoypad
_08010590: .4byte gScriptContext
_08010594: .4byte gMain
_08010598: .4byte 0x040000D4
_0801059C: .4byte gOamObjects
_080105A0: .4byte gUnknown_0200093C
_080105A4: .4byte 0x80000200
_080105A8: .4byte 0xFFFFF6F8
_080105AC: .4byte 0x80000160
_080105B0: .4byte 0xFF0000FF
_080105B4: .4byte 0x01000002
_080105B8: .4byte 0xFFFFF711
_080105BC:
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r2, [r2, #2]
	ands r0, r2
	cmp r0, #0
	beq _080105FC
	mov r0, sl
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080105FC
	movs r0, #5
	mov r5, r8
	ldrh r5, [r5]
	ands r0, r5
	cmp r0, #0
	beq _080105FC
	movs r0, #0x31
	bl PlaySE
	ldr r0, _080105F8 @ =gMain+0x8
	ldr r0, [r0]
	mov r7, sl
	str r0, [r7, #0xc]
	movs r0, #7
	str r0, [r7, #8]
	b _08010910
	.align 2, 0
_080105F8: .4byte gMain+0x8
_080105FC:
	ldr r5, _080106EC @ =gOamObjects+0x130
	mov r0, sl
	ldrb r0, [r0, #0xb]
	cmp r0, #0xc
	bhi _08010632
	adds r6, r5, #0
	movs r7, #0
	movs r3, #4
_0801060C:
	movs r4, #0
	adds r2, r7, #1
	subs r0, r3, r7
	lsls r1, r0, #1
_08010614:
	ldrh r0, [r6]
	adds r0, #4
	adds r0, r0, r1
	strh r0, [r6]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _08010614
	adds r7, r2, #0
	cmp r7, #3
	bls _0801060C
	mov r1, sl
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
_08010632:
	mov r0, r8
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	beq _0801063E
	b _080108B6
_0801063E:
	ldr r6, _080106F0 @ =gOamObjects+0x1B0
	movs r0, #0xfe
	lsls r0, r0, #8
	ldrh r2, [r6, #2]
	ands r0, r2
	strh r0, [r6, #2]
	ldr r3, _080106F4 @ =gTalkData
	ldrb r1, [r3]
	adds r0, r1, #0
	ldr r4, [sp]
	adds r4, #0x12
	str r4, [sp, #8]
	cmp r0, #0xff
	beq _0801067E
	mov r0, sl
	adds r0, #0xb2
	ldrb r2, [r0]
	ldr r4, _080106F8 @ =gAnimation+0x52
_08010662:
	cmp r2, r1
	bne _08010674
	ldrb r7, [r4]
	ldrb r0, [r3, #1]
	cmp r7, r0
	bne _08010674
	ldrb r1, [r3, #3]
	cmp r1, #1
	beq _0801067E
_08010674:
	adds r3, #0x14
	ldrb r1, [r3]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _08010662
_0801067E:
	adds r6, r5, #0
	adds r1, r3, #4
	movs r7, #0
	ldr r2, [sp, #8]
	mov r8, r2
_08010688:
	lsls r0, r7, #0xb
	ldr r3, _080106FC @ =0x06013400
	adds r2, r0, r3
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08010710
	movs r0, #1
	mov r4, r8
	strb r0, [r4]
	ldrb r0, [r1]
	lsls r5, r0, #0xb
	ldr r3, _08010700 @ =gUnknown_081EB3E8
	adds r5, r5, r3
	ldr r4, _08010704 @ =0x040000D4
	str r5, [r4]
	str r2, [r4, #4]
	ldr r0, _08010708 @ =0x80000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r4, #0
	lsls r0, r7, #2
	adds r2, r1, #1
	movs r5, #0x81
	lsls r5, r5, #7
	adds r5, r5, r0
	mov ip, r5
	movs r3, #0xd0
	lsls r3, r3, #1
	lsls r0, r7, #6
	str r0, [sp, #0x18]
	movs r1, #0x90
	lsls r1, r1, #8
	mov sb, r1
	ldr r1, _0801070C @ =0x0000C038
_080106CC:
	mov r5, ip
	strh r5, [r6]
	strh r1, [r6, #2]
	ldr r5, [sp, #0x18]
	adds r0, r3, r5
	mov r5, sb
	orrs r0, r5
	strh r0, [r6, #4]
	adds r6, #8
	adds r3, #0x20
	adds r1, #0x40
	adds r4, #1
	cmp r4, #1
	bls _080106CC
	b _08010726
	.align 2, 0
_080106EC: .4byte gOamObjects+0x130
_080106F0: .4byte gOamObjects+0x1B0
_080106F4: .4byte gTalkData
_080106F8: .4byte gAnimation+0x52
_080106FC: .4byte 0x06013400
_08010700: .4byte gUnknown_081EB3E8
_08010704: .4byte 0x040000D4
_08010708: .4byte 0x80000400
_0801070C: .4byte 0x0000C038
_08010710:
	movs r0, #0
	mov r2, r8
	strb r0, [r2]
	movs r3, #0x96
	lsls r3, r3, #1
	strh r3, [r6, #2]
	adds r6, #8
	adds r4, r3, #0
	strh r4, [r6, #2]
	adds r6, #8
	adds r2, r1, #1
_08010726:
	adds r1, r2, #0
	movs r5, #1
	add r8, r5
	adds r7, #1
	cmp r7, #3
	bls _08010688
	ldr r7, [sp]
	ldrb r4, [r7, #4]
	ldr r1, [sp, #8]
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08010748
	cmp r4, #0
	beq _08010748
	subs r0, r4, #1
	strb r0, [r7, #4]
_08010748:
	ldr r0, _08010768 @ =gInvestigation
	movs r1, #4
	bl sub_800EB24
	movs r0, #0
	movs r1, #1
	ldr r2, _08010768 @ =gInvestigation
	strb r1, [r2, #0xe]
	strb r0, [r2, #0x10]
	strb r0, [r2, #0x11]
	mov r3, sl
	ldrb r1, [r3, #0xa]
	adds r1, #1
	strb r1, [r3, #0xa]
	strb r0, [r3, #0xb]
	b _080108B6
	.align 2, 0
_08010768: .4byte gInvestigation
_0801076C:
	mov r4, sl
	ldrb r4, [r4, #0xb]
	cmp r4, #0xc
	bhi _0801079C
	ldr r6, _080107BC @ =gOamObjects+0x130
	movs r7, #0
	movs r2, #4
_0801077A:
	movs r4, #0
	subs r0, r2, r7
	lsls r1, r0, #1
_08010780:
	ldrh r5, [r6]
	subs r0, r5, r1
	strh r0, [r6]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _08010780
	adds r7, #1
	cmp r7, #3
	bls _0801077A
	mov r7, sl
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
_0801079C:
	ldr r0, [sp]
	ldrb r1, [r0, #0xe]
	cmp r1, #0
	beq _080107A6
	b _080108B6
_080107A6:
	mov r2, sl
	ldrb r2, [r2, #0xb]
	cmp r2, #0xc
	bhi _080107B0
	b _080108B6
_080107B0:
	movs r0, #3
	mov r3, sl
	strb r0, [r3, #0xa]
	strb r1, [r3, #0xb]
	b _080108B6
	.align 2, 0
_080107BC: .4byte gOamObjects+0x130
_080107C0:
	ldr r3, _08010864 @ =gTalkData
	ldrb r1, [r3]
	adds r0, r1, #0
	ldr r5, _08010868 @ =gOamObjects+0x130
	ldr r4, [sp]
	adds r4, #0x12
	str r4, [sp, #8]
	cmp r0, #0xff
	beq _080107F6
	mov r0, sl
	adds r0, #0xb2
	ldrb r2, [r0]
	ldr r4, _0801086C @ =gAnimation+0x52
_080107DA:
	cmp r2, r1
	bne _080107EC
	ldrb r7, [r4]
	ldrb r0, [r3, #1]
	cmp r7, r0
	bne _080107EC
	ldrb r1, [r3, #3]
	cmp r1, #1
	beq _080107F6
_080107EC:
	adds r3, #0x14
	ldrb r1, [r3]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _080107DA
_080107F6:
	adds r6, r5, #0
	adds r1, r3, #4
	movs r7, #0
	ldr r2, [sp, #8]
	mov r8, r2
	movs r3, #0
	str r3, [sp, #0xc]
_08010804:
	lsls r0, r7, #0xb
	ldr r4, _08010870 @ =0x06013400
	adds r2, r0, r4
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08010888
	movs r0, #1
	mov r5, r8
	strb r0, [r5]
	ldrb r0, [r1]
	lsls r5, r0, #0xb
	ldr r3, _08010874 @ =gUnknown_081EB3E8
	adds r5, r5, r3
	ldr r4, _08010878 @ =0x040000D4
	str r5, [r4]
	str r2, [r4, #4]
	ldr r0, _0801087C @ =0x80000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r4, #0
	adds r2, r1, #1
	ldr r5, [sp, #0xc]
	ldr r0, _08010880 @ =0x00004018
	adds r5, r5, r0
	mov ip, r5
	movs r3, #0xd0
	lsls r3, r3, #1
	lsls r1, r7, #6
	str r1, [sp, #0x18]
	movs r5, #0x90
	lsls r5, r5, #8
	mov sb, r5
	ldr r1, _08010884 @ =0x0000C038
_08010846:
	mov r0, ip
	strh r0, [r6]
	strh r1, [r6, #2]
	ldr r5, [sp, #0x18]
	adds r0, r3, r5
	mov r5, sb
	orrs r0, r5
	strh r0, [r6, #4]
	adds r6, #8
	adds r3, #0x20
	adds r1, #0x40
	adds r4, #1
	cmp r4, #1
	bls _08010846
	b _0801089E
	.align 2, 0
_08010864: .4byte gTalkData
_08010868: .4byte gOamObjects+0x130
_0801086C: .4byte gAnimation+0x52
_08010870: .4byte 0x06013400
_08010874: .4byte gUnknown_081EB3E8
_08010878: .4byte 0x040000D4
_0801087C: .4byte 0x80000400
_08010880: .4byte 0x00004018
_08010884: .4byte 0x0000C038
_08010888:
	movs r0, #0
	mov r2, r8
	strb r0, [r2]
	movs r3, #0x96
	lsls r3, r3, #1
	strh r3, [r6, #2]
	adds r6, #8
	adds r4, r3, #0
	strh r4, [r6, #2]
	adds r6, #8
	adds r2, r1, #1
_0801089E:
	adds r1, r2, #0
	movs r5, #1
	add r8, r5
	ldr r0, [sp, #0xc]
	adds r0, #0x1e
	str r0, [sp, #0xc]
	adds r7, #1
	cmp r7, #3
	bls _08010804
	movs r0, #3
	mov r1, sl
	strb r0, [r1, #0xa]
_080108B6:
	ldr r6, _080108E4 @ =gOamObjects+0x130
	movs r7, #0
_080108BA:
	ldr r2, [sp]
	ldrb r2, [r2, #4]
	cmp r7, r2
	bne _080108EC
	movs r4, #0
	adds r2, r7, #1
	ldr r3, _080108E8 @ =0x00000FFF
	movs r5, #0x90
	lsls r5, r5, #8
	adds r1, r5, #0
_080108CE:
	adds r0, r3, #0
	ldrh r7, [r6, #4]
	ands r0, r7
	adds r0, r0, r1
	strh r0, [r6, #4]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _080108CE
	b _0801090A
	.align 2, 0
_080108E4: .4byte gOamObjects+0x130
_080108E8: .4byte 0x00000FFF
_080108EC:
	movs r4, #0
	adds r2, r7, #1
	ldr r3, _08010920 @ =0x00000FFF
	movs r0, #0xa0
	lsls r0, r0, #8
	adds r1, r0, #0
_080108F8:
	adds r0, r3, #0
	ldrh r5, [r6, #4]
	ands r0, r5
	adds r0, r0, r1
	strh r0, [r6, #4]
	adds r6, #8
	adds r4, #1
	cmp r4, #1
	bls _080108F8
_0801090A:
	adds r7, r2, #0
	cmp r7, #3
	bls _080108BA
_08010910:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010920: .4byte 0x00000FFF

	thumb_func_start sub_8010924
sub_8010924: @ 0x08010924
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	bls _08010932
	b _08010A34
_08010932:
	lsls r0, r0, #2
	ldr r1, _0801093C @ =_08010940
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801093C: .4byte _08010940
_08010940: @ jump table
	.4byte _08010954 @ case 0
	.4byte _0801096A @ case 1
	.4byte _08010988 @ case 2
	.4byte _080109EC @ case 3
	.4byte _08010A0C @ case 4
_08010954:
	ldrb r0, [r4, #0x10]
	cmp r0, #0xf
	bhi _0801095E
	adds r0, #1
	strb r0, [r4, #0x10]
_0801095E:
	movs r0, #0
	strb r0, [r4, #0x11]
	ldrb r4, [r4, #0x10]
	cmp r4, #0xf
	bls _08010A34
	b _08010A04
_0801096A:
	ldrb r4, [r4, #0xf]
	cmp r4, #0xe0
	bne _08010A34
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	ldr r0, _08010980 @ =gMain+0x8
	ldr r0, [r0]
	str r0, [r6, #0xc]
	ldr r0, _08010984 @ =gUnknown_02000007
	b _08010A32
	.align 2, 0
_08010980: .4byte gMain+0x8
_08010984: .4byte gUnknown_02000007
_08010988:
	ldrb r0, [r4, #0xf]
	cmp r0, #0xe0
	bne _08010A34
	ldr r0, _080109E0 @ =gScriptContext
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	bne _08010A34
	ldr r1, _080109E4 @ =gOamObjects+0x1A0
	movs r5, #0
	ldr r0, _080109E8 @ =0x000040E0
	mov ip, r0
	movs r3, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r7, r0, #0
	movs r2, #0xa2
	lsls r2, r2, #7
_080109AC:
	mov r0, ip
	strh r0, [r1]
	adds r0, r3, r7
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	adds r1, #8
	adds r3, #0x3c
	adds r2, #0x20
	adds r5, #1
	cmp r5, #3
	bls _080109AC
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_800EB24
	movs r0, #0xe0
	strb r0, [r4, #0xf]
	movs r0, #0x40
	strb r0, [r4, #0x10]
	movs r0, #8
	strb r0, [r4, #0x11]
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	b _08010A2E
	.align 2, 0
_080109E0: .4byte gScriptContext
_080109E4: .4byte gOamObjects+0x1A0
_080109E8: .4byte 0x000040E0
_080109EC:
	adds r0, r4, #0
	movs r1, #7
	bl sub_800EB24
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xe]
	movs r0, #0xe0
	strb r0, [r4, #0xf]
	movs r0, #0x10
	strb r0, [r4, #0x10]
	strb r1, [r4, #0x11]
_08010A04:
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	b _08010A34
_08010A0C:
	ldrb r0, [r4, #0x10]
	cmp r0, #8
	bls _08010A16
	subs r0, #1
	strb r0, [r4, #0x10]
_08010A16:
	ldrb r1, [r4, #0xe]
	cmp r1, #0
	bne _08010A34
	movs r0, #8
	strb r0, [r4, #0x10]
	strb r1, [r4, #0x11]
	movs r0, #1
	ldrb r1, [r4, #0xc]
	lsls r0, r1
	ldrb r1, [r4, #8]
	adds r0, r1, r0
	strb r0, [r4, #8]
_08010A2E:
	movs r0, #0x82
	lsls r0, r0, #1
_08010A32:
	str r0, [r6, #8]
_08010A34:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8010A3C
sub_8010A3C: @ 0x08010A3C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	movs r6, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #9
	bne _08010A4C
	b _08010E54
_08010A4C:
	movs r1, #0x91
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r2, #0xd2
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r6, r5, r0
	bl sub_8016E7C
	ldr r1, _08010A74 @ =gComputedGotoTable10A3C
	ldrb r4, [r5, #0xa]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08010A74: .4byte gComputedGotoTable10A3C
_08010A78:
	bl sub_80178E0
	ldrb r0, [r6, #9]
	movs r4, #0
	strb r0, [r6, #8]
	ldrb r0, [r6, #9]
	bl sub_8016124
	bl sub_8016150
	bl sub_8016DFC
	ldr r0, _08010ABC @ =gMain
	ldr r1, _08010AC0 @ =0x0000024A
	adds r0, r0, r1
	strb r4, [r0]
	movs r0, #1
	ldrb r2, [r7, #0xb]
	orrs r0, r2
	strb r0, [r7, #0xb]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
_08010AA6:
	bl sub_801622C
	bl sub_8016214
	cmp r0, #0
	bne _08010AB4
	b _08010F92
_08010AB4:
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	b _08010F92
	.align 2, 0
_08010ABC: .4byte gMain
_08010AC0: .4byte 0x0000024A
_08010AC4:
	ldrh r0, [r6, #0xa]
	bl ChangeScriptSection
	ldr r1, _08010B6C @ =gMain
	movs r0, #1
	strb r0, [r1, #0x18]
	movs r0, #3
	strb r0, [r5, #0xa]
_08010AD4:
	ldr r4, _08010B6C @ =gMain
	ldr r0, _08010B70 @ =0x0000024A
	adds r1, r4, r0
	movs r0, #1
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08010B2C
	ldr r1, _08010B74 @ =gJoypad
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r1, [r1, #2]
	cmp r1, r0
	bne _08010B2C
	movs r1, #0x92
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08010B2C
	adds r0, r5, #0
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08010B2C
	ldr r1, _08010B78 @ =gScriptContext
	movs r0, #0xd
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08010B2C
	bl sub_8017864
	bl sub_80170AC
	movs r0, #0x31
	bl PlaySE
	ldr r0, [r4, #8]
	str r0, [r5, #0xc]
	ldr r0, _08010B7C @ =0x03000007
	str r0, [r5, #8]
_08010B2C:
	ldr r4, _08010B6C @ =gMain
	ldr r2, _08010B70 @ =0x0000024A
	adds r1, r4, r2
	movs r0, #2
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08010B80
	bl sub_801715C
	cmp r0, #0
	bne _08010B80
	movs r1, #0x92
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r4, [r0]
	cmp r4, #0
	bne _08010B80
	ldr r1, _08010B74 @ =gJoypad
	movs r0, #0x80
	lsls r0, r0, #2
	ldrh r1, [r1, #2]
	cmp r1, r0
	bne _08010B80
	movs r0, #0x2c
	bl PlaySE
	movs r0, #8
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xb]
	b _08010D9C
	.align 2, 0
_08010B6C: .4byte gMain
_08010B70: .4byte 0x0000024A
_08010B74: .4byte gJoypad
_08010B78: .4byte gScriptContext
_08010B7C: .4byte 0x03000007
_08010B80:
	ldr r4, _08010C00 @ =gMain
	ldr r2, _08010C04 @ =0x0000024A
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08010BD4
	bl sub_801715C
	cmp r0, #0
	bne _08010BD4
	ldr r1, _08010C08 @ =gJoypad
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r1, [r1, #2]
	cmp r1, r0
	bne _08010BD4
	bl sub_80175C0
	cmp r0, #0
	bne _08010BD4
	adds r0, r5, #0
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08010BD4
	ldr r1, _08010C0C @ =gScriptContext
	movs r0, #5
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08010BD4
	bl sub_8017864
	movs r0, #0x31
	bl PlaySE
	ldr r0, [r4, #8]
	str r0, [r5, #0xc]
	ldr r0, _08010C10 @ =0x04000007
	str r0, [r5, #8]
_08010BD4:
	adds r0, r5, #0
	adds r0, #0x98
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	ble _08010BE2
	b _08010F92
_08010BE2:
	adds r0, r5, #0
	adds r0, #0x9a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _08010BF0
	b _08010F92
_08010BF0:
	bl sub_8017C78
	cmp r0, #0
	beq _08010BFA
	b _08010F92
_08010BFA:
	movs r0, #0xb
	strb r0, [r5, #0xa]
	b _08010F92
	.align 2, 0
_08010C00: .4byte gMain
_08010C04: .4byte 0x0000024A
_08010C08: .4byte gJoypad
_08010C0C: .4byte gScriptContext
_08010C10: .4byte 0x04000007
_08010C14:
	ldrb r2, [r5, #0xb]
	cmp r2, #1
	bne _08010C1C
	b _08010F38
_08010C1C:
	cmp r2, #1
	bgt _08010C26
	cmp r2, #0
	beq _08010C2C
	b _08010F92
_08010C26:
	cmp r2, #2
	beq _08010C54
	b _08010F92
_08010C2C:
	ldr r0, _08010C48 @ =gMain
	strb r2, [r0, #0x18]
	strb r2, [r0, #0x19]
	ldr r1, _08010C4C @ =gIORegisters
	adds r3, r1, #0
	adds r3, #0x4a
	ldr r0, _08010C50 @ =0x0000FDFF
	ldrh r4, [r3]
	ands r0, r4
	strh r0, [r3]
	strh r2, [r1, #0xe]
	bl sub_80161B4
	b _08010F32
	.align 2, 0
_08010C48: .4byte gMain
_08010C4C: .4byte gIORegisters
_08010C50: .4byte 0x0000FDFF
_08010C54:
	ldrb r0, [r6, #8]
	subs r0, #1
	strb r0, [r6, #8]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08010C7C
	ldr r0, _08010C78 @ =gMain
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0
	bne _08010C7C
	movs r0, #7
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xb]
	b _08010F92
	.align 2, 0
_08010C78: .4byte gMain
_08010C7C:
	ldr r0, _08010CA0 @ =gMain
	movs r1, #1
	strb r1, [r0, #0x18]
	movs r2, #0x93
	lsls r2, r2, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08010C94
	movs r0, #1
	bl SlideTextbox
_08010C94:
	movs r0, #3
	strb r0, [r5, #0xa]
	movs r0, #0
	strb r0, [r5, #0xb]
	b _08010F92
	.align 2, 0
_08010CA0: .4byte gMain
_08010CA4:
	ldrh r0, [r6, #0x10]
	bl ChangeScriptSection
	movs r0, #1
	bl SlideTextbox
_08010CB0:
	movs r0, #3
	strb r0, [r5, #0xa]
	b _08010F92
_08010CB6:
	ldr r0, _08010CD0 @ =gMain
	adds r0, #0xa0
	movs r1, #0x64
	strh r1, [r0]
	ldrb r0, [r5, #0xb]
	cmp r0, #4
	bls _08010CC6
	b _08010F92
_08010CC6:
	lsls r0, r0, #2
	ldr r1, _08010CD4 @ =_08010CD8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08010CD0: .4byte gMain
_08010CD4: .4byte _08010CD8
_08010CD8: @ jump table
	.4byte _08010CEC @ case 0
	.4byte _08010D02 @ case 1
	.4byte _08010D44 @ case 2
	.4byte _08010D58 @ case 3
	.4byte _08010D78 @ case 4
_08010CEC:
	ldr r0, _08010D3C @ =gMain
	movs r1, #0
	strb r1, [r0, #0x18]
	movs r0, #0x1e
	bl FadeOutBGM
	bl sub_80161C4
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_08010D02:
	bl sub_801622C
	bl sub_8016214
	cmp r0, #0
	bne _08010D10
	b _08010F92
_08010D10:
	bl sub_80161E4
	ldr r4, _08010D3C @ =gMain
	adds r0, r4, #0
	adds r0, #0x98
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x4f
	ble _08010D24
	b _08010F44
_08010D24:
	movs r0, #1
	bl sub_8017928
	adds r1, r4, #0
	adds r1, #0x9c
	ldr r0, _08010D40 @ =0x0000FFD8
	strh r0, [r1]
	movs r0, #3
	bl sub_8017928
	b _08010F44
	.align 2, 0
_08010D3C: .4byte gMain
_08010D40: .4byte 0x0000FFD8
_08010D44:
	bl sub_801622C
	bl sub_8016214
	cmp r0, #0
	bne _08010D52
	b _08010F92
_08010D52:
	bl sub_80161D4
	b _08010F44
_08010D58:
	bl sub_801622C
	bl sub_8016214
	cmp r0, #0
	bne _08010D66
	b _08010F92
_08010D66:
	bl sub_8017C78
	cmp r0, #0
	beq _08010D70
	b _08010F92
_08010D70:
	movs r0, #2
	bl sub_8017928
	b _08010F44
_08010D78:
	movs r4, #0
	movs r0, #3
	strb r0, [r7, #0xc]
	strb r0, [r7, #0xd]
	ldr r1, _08010D98 @ =gMain
	movs r0, #1
	strb r0, [r1, #0x18]
	bl sub_8010FA4
	bl sub_8011198
	str r4, [r6]
	movs r0, #0x82
	lsls r0, r0, #1
	str r0, [r5, #8]
	b _08010F92
	.align 2, 0
_08010D98: .4byte gMain
_08010D9C:
	ldrb r0, [r5, #0xb]
	cmp r0, #5
	bls _08010DA4
	b _08010F92
_08010DA4:
	lsls r0, r0, #2
	ldr r1, _08010DB0 @ =_08010DB4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08010DB0: .4byte _08010DB4
_08010DB4: @ jump table
	.4byte _08010DCC @ case 0
	.4byte _08010DF0 @ case 1
	.4byte _08010E14 @ case 2
	.4byte _08010F2E @ case 3
	.4byte _08010F38 @ case 4
	.4byte _08010E22 @ case 5
_08010DCC:
	ldrh r0, [r6, #0xc]
	bl ChangeScriptSection
	ldr r0, _08010DEC @ =gScriptContext
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	beq _08010DE2
	cmp r0, #4
	beq _08010DE2
	b _08010F44
_08010DE2:
	movs r0, #1
	bl SlideTextbox
	b _08010F44
	.align 2, 0
_08010DEC: .4byte gScriptContext
_08010DF0:
	ldr r1, _08010E10 @ =gScriptContext
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08010DFE
	b _08010F92
_08010DFE:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0x1e
	bl FadeOutBGM
	movs r0, #2
	movs r1, #4
	b _08010F0E
	.align 2, 0
_08010E10: .4byte gScriptContext
_08010E14:
	adds r0, r5, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _08010E20
	b _08010F92
_08010E20:
	b _08010F44
_08010E22:
	bl sub_8010FA4
	bl sub_8011198
	ldr r1, _08010E4C @ =gInvestigation
	movs r0, #0xfe
	ldrb r2, [r1, #0xb]
	ands r0, r2
	strb r0, [r1, #0xb]
	movs r0, #0x82
	lsls r0, r0, #1
	str r0, [r5, #8]
	ldr r0, _08010E50 @ =0x0000FFFF
	ldrh r4, [r6, #0x14]
	cmp r4, r0
	beq _08010E48
	ldrh r0, [r6, #0x14]
	bl PlayBGM
_08010E48:
	movs r0, #1
	b _08010F0C
	.align 2, 0
_08010E4C: .4byte gInvestigation
_08010E50: .4byte 0x0000FFFF
_08010E54:
	ldrb r1, [r5, #0xb]
	cmp r1, #1
	beq _08010F38
	cmp r1, #1
	bgt _08010E64
	cmp r1, #0
	beq _08010E6A
	b _08010F92
_08010E64:
	cmp r1, #2
	beq _08010E98
	b _08010F92
_08010E6A:
	ldr r0, _08010E94 @ =gMain
	strb r1, [r0, #0x18]
	movs r0, #1
	ldrb r1, [r7, #0xb]
	orrs r0, r1
	strb r0, [r7, #0xb]
	movs r0, #0
	bl SlideTextbox
	movs r2, #0x91
	lsls r2, r2, #2
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_8016124
	bl sub_8016150
	b _08010F32
	.align 2, 0
_08010E94: .4byte gMain
_08010E98:
	ldr r4, _08010EA8 @ =gMain
	movs r0, #1
	strb r0, [r4, #0x18]
	bl SlideTextbox
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
_08010EA6:
	b _08010F92
	.align 2, 0
_08010EA8: .4byte gMain
_08010EAC:
	ldrb r0, [r5, #0xb]
	cmp r0, #5
	bhi _08010F92
	lsls r0, r0, #2
	ldr r1, _08010EBC @ =_08010EC0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08010EBC: .4byte _08010EC0
_08010EC0: @ jump table
	.4byte _08010ED8 @ case 0
	.4byte _08010EF8 @ case 1
	.4byte _08010F1C @ case 2
	.4byte _08010F2E @ case 3
	.4byte _08010F38 @ case 4
	.4byte _08010F4C @ case 5
_08010ED8:
	ldrh r0, [r6, #0x12]
	bl ChangeScriptSection
	ldr r0, _08010EF4 @ =gScriptContext
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	beq _08010EEC
	cmp r0, #4
	bne _08010F44
_08010EEC:
	movs r0, #1
	bl SlideTextbox
	b _08010F44
	.align 2, 0
_08010EF4: .4byte gScriptContext
_08010EF8:
	ldr r1, _08010F18 @ =gScriptContext
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08010F92
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #2
_08010F0C:
	movs r1, #1
_08010F0E:
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	b _08010F92
	.align 2, 0
_08010F18: .4byte gScriptContext
_08010F1C:
	adds r0, r5, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _08010F92
	movs r0, #0x1e
	bl FadeOutBGM
	b _08010F44
_08010F2E:
	bl sub_80161E4
_08010F32:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_08010F38:
	bl sub_801622C
	bl sub_8016214
	cmp r0, #0
	beq _08010F92
_08010F44:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _08010F92
_08010F4C:
	ldr r0, _08010F98 @ =gMain
	adds r2, r0, #0
	adds r2, #0x9a
	movs r1, #1
	strh r1, [r2]
	adds r0, #0x98
	strh r1, [r0]
	bl sub_8010FA4
	bl sub_8011198
	ldr r1, _08010F9C @ =gInvestigation
	movs r0, #0xfe
	ldrb r4, [r1, #0xb]
	ands r0, r4
	strb r0, [r1, #0xb]
	movs r0, #0
	bl SlideTextbox
	movs r0, #0x82
	lsls r0, r0, #1
	str r0, [r5, #8]
	ldr r0, _08010FA0 @ =0x0000FFFF
	ldrh r1, [r6, #0x14]
	cmp r1, r0
	beq _08010F86
	ldrh r0, [r6, #0x14]
	bl PlayBGM
_08010F86:
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
_08010F92:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010F98: .4byte gMain
_08010F9C: .4byte gInvestigation
_08010FA0: .4byte 0x0000FFFF

	thumb_func_start sub_8010FA4
sub_8010FA4: @ 0x08010FA4
	push {r4, r5, r6, lr}
	ldr r0, _08011030 @ =0x040000D4
	ldr r1, _08011034 @ =gUnknown_081400FC
	str r1, [r0]
	ldr r1, _08011038 @ =0x06012000
	str r1, [r0, #4]
	ldr r1, _0801103C @ =0x80000800
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08011040 @ =gUnknown_0814DBA0
	str r1, [r0]
	ldr r1, _08011044 @ =0x050002A0
	str r1, [r0, #4]
	ldr r4, _08011048 @ =0x80000020
	str r4, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0801104C @ =gUnknown_081412FC
	str r1, [r0]
	ldr r1, _08011050 @ =0x06013000
	str r1, [r0, #4]
	ldr r3, _08011054 @ =0x80000100
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08011058 @ =gUnknown_0814DC00
	str r1, [r0]
	ldr r1, _0801105C @ =0x050002E0
	str r1, [r0, #4]
	ldr r2, _08011060 @ =0x80000010
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08011064 @ =gUnknown_081426FC
	str r1, [r0]
	ldr r1, _08011068 @ =0x06013200
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0801106C @ =gUnknown_0814DC60
	str r1, [r0]
	ldr r1, _08011070 @ =0x05000300
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08011074 @ =gUnknown_081DE3A8
	str r1, [r0]
	ldr r1, _08011078 @ =0x05000320
	str r1, [r0, #4]
	str r4, [r0, #8]
	ldr r0, [r0, #8]
	ldr r1, _0801107C @ =gOamObjects+0x1A0
	movs r4, #0
	ldr r6, _08011080 @ =0x000040E0
	movs r3, #0
	ldr r0, _08011084 @ =0xFFFFC000
	adds r5, r0, #0
	movs r2, #0xa2
	lsls r2, r2, #7
_08011014:
	strh r6, [r1]
	adds r0, r3, r5
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	adds r1, #8
	adds r3, #0x3c
	adds r2, #0x20
	adds r4, #1
	cmp r4, #3
	ble _08011014
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08011030: .4byte 0x040000D4
_08011034: .4byte gUnknown_081400FC
_08011038: .4byte 0x06012000
_0801103C: .4byte 0x80000800
_08011040: .4byte gUnknown_0814DBA0
_08011044: .4byte 0x050002A0
_08011048: .4byte 0x80000020
_0801104C: .4byte gUnknown_081412FC
_08011050: .4byte 0x06013000
_08011054: .4byte 0x80000100
_08011058: .4byte gUnknown_0814DC00
_0801105C: .4byte 0x050002E0
_08011060: .4byte 0x80000010
_08011064: .4byte gUnknown_081426FC
_08011068: .4byte 0x06013200
_0801106C: .4byte gUnknown_0814DC60
_08011070: .4byte 0x05000300
_08011074: .4byte gUnknown_081DE3A8
_08011078: .4byte 0x05000320
_0801107C: .4byte gOamObjects+0x1A0
_08011080: .4byte 0x000040E0
_08011084: .4byte 0xFFFFC000

	thumb_func_start sub_8011088
sub_8011088: @ 0x08011088
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	bl sub_8010FA4
	cmp r4, #0
	bne _080110B8
	ldr r0, _080110B4 @ =gInvestigation
	movs r1, #0xfe
	ldrb r2, [r0, #0xb]
	ands r1, r2
	strb r1, [r0, #0xb]
	movs r1, #3
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xd]
	b _0801116C
	.align 2, 0
_080110B4: .4byte gInvestigation
_080110B8:
	cmp r4, #1
	bne _0801116C
	ldr r1, _08011178 @ =gInvestigation
	movs r0, #0xfe
	ldrb r2, [r1, #0xb]
	ands r0, r2
	strb r0, [r1, #0xb]
	ldr r3, _0801117C @ =gOamObjects+0x1A0
	movs r4, #0
	adds r5, r1, #0
	ldr r7, _08011180 @ =0x000040E0
	movs r2, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r6, r0, #0
	movs r1, #0xa2
	lsls r1, r1, #7
_080110DA:
	strh r7, [r3]
	adds r0, r2, r6
	strh r0, [r3, #2]
	strh r1, [r3, #4]
	adds r3, #8
	adds r2, #0x3c
	adds r1, #0x20
	adds r4, #1
	cmp r4, #3
	bls _080110DA
	ldr r4, _0801117C @ =gOamObjects+0x1A0
	adds r0, r5, #0
	movs r1, #4
	bl sub_800EB24
	movs r1, #0
	movs r0, #0xd0
	strb r0, [r5, #0xf]
	strb r1, [r5, #0x10]
	strb r1, [r5, #0x11]
	movs r0, #2
	strb r0, [r5, #0xc]
	strb r0, [r5, #0xd]
	movs r0, #0xfe
	ldrb r1, [r5, #0xb]
	ands r0, r1
	strb r0, [r5, #0xb]
	movs r0, #5
	strb r0, [r5, #0xe]
	adds r3, r4, #0
	adds r3, #0x10
	movs r2, #0xff
	lsls r2, r2, #8
	adds r0, r2, #0
	ldrh r1, [r4, #0x10]
	ands r0, r1
	movs r1, #0xf0
	orrs r0, r1
	strh r0, [r4, #0x10]
	ldrh r0, [r3, #2]
	ands r2, r0
	strh r2, [r3, #2]
	ldr r0, _08011184 @ =0x00006540
	strh r0, [r3, #4]
	ldr r2, _08011188 @ =gMain
	movs r0, #8
	strb r0, [r2, #9]
	movs r0, #1
	strb r0, [r2, #0xa]
	mov r1, r8
	strb r1, [r5, #5]
	ldr r1, _0801118C @ =gIORegisters
	ldr r0, _08011190 @ =0x0000FFB3
	strh r0, [r1, #0xe]
	movs r1, #0x91
	lsls r1, r1, #2
	adds r0, r2, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	movs r2, #0xdd
	lsls r2, r2, #1
	adds r1, r0, r2
	ldr r0, _08011194 @ =0x0000FFFF
	ldrh r2, [r1]
	cmp r2, r0
	beq _0801116C
	ldrh r0, [r1]
	bl PlayBGM
_0801116C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011178: .4byte gInvestigation
_0801117C: .4byte gOamObjects+0x1A0
_08011180: .4byte 0x000040E0
_08011184: .4byte 0x00006540
_08011188: .4byte gMain
_0801118C: .4byte gIORegisters
_08011190: .4byte 0x0000FFB3
_08011194: .4byte 0x0000FFFF

	thumb_func_start sub_8011198
sub_8011198: @ 0x08011198
	push {r4, lr}
	ldr r0, _080111E4 @ =gOamObjects+0x1A0
	ldr r3, _080111E8 @ =0x000040E0
	strh r3, [r0]
	movs r2, #0xfe
	lsls r2, r2, #8
	adds r4, r2, #0
	ldrh r1, [r0, #2]
	ands r4, r1
	strh r4, [r0, #2]
	adds r0, #8
	strh r3, [r0]
	adds r4, r2, #0
	ldrh r1, [r0, #2]
	ands r4, r1
	movs r1, #0x3c
	orrs r4, r1
	strh r4, [r0, #2]
	adds r0, #8
	strh r3, [r0]
	adds r4, r2, #0
	ldrh r1, [r0, #2]
	ands r4, r1
	movs r1, #0x78
	orrs r4, r1
	strh r4, [r0, #2]
	adds r0, #8
	strh r3, [r0]
	adds r4, r2, #0
	ldrh r1, [r0, #2]
	ands r4, r1
	movs r1, #0xb4
	orrs r4, r1
	strh r4, [r0, #2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080111E4: .4byte gOamObjects+0x1A0
_080111E8: .4byte 0x000040E0

	thumb_func_start sub_80111EC
sub_80111EC: @ 0x080111EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	ldr r4, _08011214 @ =gOamObjects+0x1A0
	movs r0, #1
	ldrb r1, [r3, #0xb]
	ands r0, r1
	cmp r0, #0
	beq _08011202
	b _0801137E
_08011202:
	ldrb r0, [r3, #0xe]
	cmp r0, #5
	bls _0801120A
	b _08011312
_0801120A:
	lsls r0, r0, #2
	ldr r1, _08011218 @ =_0801121C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08011214: .4byte gOamObjects+0x1A0
_08011218: .4byte _0801121C
_0801121C: @ jump table
	.4byte _08011234 @ case 0
	.4byte _080112AE @ case 1
	.4byte _080112CA @ case 2
	.4byte _080112E2 @ case 3
	.4byte _08011312 @ case 4
	.4byte _080112FA @ case 5
_08011234:
	movs r5, #0
	movs r7, #0x80
	lsls r7, r7, #7
	mov ip, r7
	movs r0, #0xff
	lsls r0, r0, #8
	mov r8, r0
	movs r6, #0xaa
	lsls r6, r6, #7
	movs r7, #0
_08011248:
	ldrb r0, [r3, #0xc]
	cmp r0, r5
	bne _0801126A
	mov r1, ip
	strh r1, [r4]
	ldrb r2, [r3, #0x10]
	adds r2, #0xf0
	movs r0, #0xff
	ands r2, r0
	mov r1, ip
	adds r0, r2, r1
	strh r0, [r4]
	movs r1, #0xca
	lsls r1, r1, #7
	adds r0, r7, r1
	strh r0, [r4, #4]
	b _080112A0
_0801126A:
	ldrb r0, [r3, #0xd]
	cmp r0, r5
	bne _08011284
	mov r0, r8
	ldrh r1, [r4]
	ands r0, r1
	strh r0, [r4]
	ldrb r1, [r3, #0xf]
	orrs r0, r1
	strh r0, [r4]
	ldrb r1, [r3, #0x11]
	adds r0, r1, r0
	b _0801129C
_08011284:
	ldrb r0, [r3, #8]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801129E
	mov r0, r8
	ldrh r1, [r4]
	ands r0, r1
	strh r0, [r4]
	ldrb r1, [r3, #0xf]
	orrs r0, r1
_0801129C:
	strh r0, [r4]
_0801129E:
	strh r6, [r4, #4]
_080112A0:
	adds r4, #8
	adds r6, #0x20
	adds r7, #0x20
	adds r5, #1
	cmp r5, #3
	bls _08011248
	b _0801137E
_080112AE:
	ldrb r5, [r3, #0xc]
	lsls r0, r5, #3
	adds r4, r4, r0
	lsls r0, r5, #5
	movs r5, #0xca
	lsls r5, r5, #7
	adds r0, r0, r5
	strh r0, [r4, #4]
	movs r0, #0xe0
	strb r0, [r3, #0xf]
	ldrb r0, [r3, #0xe]
	adds r0, #1
	strb r0, [r3, #0xe]
	b _08011312
_080112CA:
	ldrb r0, [r3, #0xf]
	adds r0, #2
	strb r0, [r3, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xef
	bls _08011312
	movs r0, #0xf0
	strb r0, [r3, #0xf]
	movs r0, #0
	strb r0, [r3, #0xe]
	b _08011312
_080112E2:
	ldrb r0, [r3, #0xf]
	subs r0, #2
	strb r0, [r3, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe0
	bhi _08011312
	movs r0, #0xe0
	strb r0, [r3, #0xf]
	movs r0, #4
	strb r0, [r3, #0xe]
	b _08011312
_080112FA:
	ldrb r0, [r3, #0xf]
	adds r0, #1
	strb r0, [r3, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xdf
	bls _08011312
	movs r0, #0xf0
	strb r0, [r3, #0xf]
	movs r0, #4
	strb r0, [r3, #0xe]
	b _0801137E
_08011312:
	ldr r2, _08011354 @ =gMain
	adds r1, r2, #0
	adds r1, #0xb2
	ldrb r7, [r1]
	lsls r0, r7, #2
	adds r1, r7, #0
	adds r0, r0, r1
	movs r5, #0x90
	lsls r5, r5, #1
	adds r1, r2, r5
	adds r0, r0, r1
	ldrb r5, [r0]
	ldrh r2, [r2, #0x2e]
	cmp r5, r2
	beq _08011334
	movs r0, #0x40
	strb r0, [r3, #0x10]
_08011334:
	movs r5, #0
	movs r6, #0xff
	lsls r6, r6, #8
_0801133A:
	ldrb r0, [r3, #8]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08011358
	adds r0, r6, #0
	ldrh r7, [r4]
	ands r0, r7
	strh r0, [r4]
	ldrb r1, [r3, #0xf]
	orrs r0, r1
	b _08011374
	.align 2, 0
_08011354: .4byte gMain
_08011358:
	ldrb r0, [r3, #0xc]
	cmp r0, r5
	bne _08011376
	adds r0, r6, #0
	ldrh r7, [r4]
	ands r0, r7
	strh r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #1
	ldrb r7, [r3, #0x10]
	subs r2, r1, r7
	movs r1, #0xff
	ands r2, r1
	adds r0, r0, r2
_08011374:
	strh r0, [r4]
_08011376:
	adds r4, #8
	adds r5, #1
	cmp r5, #3
	bls _0801133A
_0801137E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8011388
sub_8011388: @ 0x08011388
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, _080113C8 @ =gOamObjects+0x1C0
	movs r6, #0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4]
	cmp r1, #0
	beq _080113FC
	ldr r0, _080113CC @ =gScriptContext
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	bne _080113FC
	ldrh r0, [r5, #0x2e]
	bl GetBGControlBits
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _080113FC
	ldr r0, _080113D0 @ =gMain
	movs r1, #0x3c
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080113E0
	ldr r0, _080113D4 @ =0x00004020
	strh r0, [r4]
	ldr r0, _080113D8 @ =0x000080D0
	strh r0, [r4, #2]
	ldr r0, _080113DC @ =0x00007188
	b _080113FA
	.align 2, 0
_080113C8: .4byte gOamObjects+0x1C0
_080113CC: .4byte gScriptContext
_080113D0: .4byte gMain
_080113D4: .4byte 0x00004020
_080113D8: .4byte 0x000080D0
_080113DC: .4byte 0x00007188
_080113E0:
	movs r1, #0x3c
	ldrsh r0, [r5, r1]
	cmp r0, #0xf0
	beq _080113EC
	cmp r0, #0x78
	bne _080113FC
_080113EC:
	ldr r0, _08011404 @ =0x00004020
	strh r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r4, #2]
	movs r0, #0xe3
	lsls r0, r0, #7
_080113FA:
	strh r0, [r4, #4]
_080113FC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08011404: .4byte 0x00004020

	thumb_func_start sub_8011408
sub_8011408: @ 0x08011408
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrh r1, [r5]
	cmp r1, #0x77
	bhi _08011420
	ldr r3, _0801141C @ =gMain
	ldrh r0, [r3, #0x3c]
	adds r1, r1, r0
	b _08011428
	.align 2, 0
_0801141C: .4byte gMain
_08011420:
	ldr r3, _08011490 @ =gMain
	ldrh r0, [r3, #0x3c]
	adds r1, r1, r0
	adds r1, #0xc
_08011428:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _08011494 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	adds r4, r3, #0
	ldrh r0, [r4, #0x3e]
	ldrh r5, [r5, #2]
	adds r1, r0, r5
	lsls r1, r1, #0x10
	ldr r2, _08011498 @ =0x0000FFFF
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	ldr r1, _08011494 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0xb3
	ldrb r0, [r0]
	cmp r0, #2
	bne _0801149C
	adds r0, r4, #0
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #5
	bne _080114EE
	movs r0, #0
	movs r1, #0x41
	bl GetFlag
	cmp r0, #0
	beq _080114EE
	movs r0, #0
	movs r1, #0x48
	bl GetFlag
	cmp r0, #0
	bne _080114EE
	movs r0, #0xe8
	b _0801156E
	.align 2, 0
_08011490: .4byte gMain
_08011494: .4byte 0xFFFF0000
_08011498: .4byte 0x0000FFFF
_0801149C:
	cmp r0, #0xe
	bne _080114AE
	adds r0, r4, #0
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080114EE
	movs r0, #0xc7
	b _0801156E
_080114AE:
	cmp r0, #0xf
	bne _080114D0
	adds r0, r4, #0
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080114EE
	movs r0, #0
	movs r1, #0xbc
	bl GetFlag
	cmp r0, #0
	beq _080114EE
	ldr r0, _080114CC @ =0x0000014F
	b _0801156E
	.align 2, 0
_080114CC: .4byte 0x0000014F
_080114D0:
	cmp r0, #0x12
	bne _080114EE
	adds r0, r3, #0
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _080114EE
	movs r0, #0
	movs r1, #0x92
	bl GetFlag
	cmp r0, #0
	bne _080114EE
	movs r0, #0xa5
	b _0801156E
_080114EE:
	mov r0, sp
	bl sub_8014280
	adds r2, r0, #0
	ldr r4, _080114FC @ =gExaminationData
	b _0801150C
	.align 2, 0
_080114FC: .4byte gExaminationData
_08011500:
	cmp r1, #0xfe
	bne _0801150A
	ldrb r0, [r4, #3]
	cmp r2, r0
	beq _08011568
_0801150A:
	adds r4, #0x14
_0801150C:
	ldrb r1, [r4, #2]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _08011500
	ldr r4, _08011518 @ =gExaminationData
	b _0801152E
	.align 2, 0
_08011518: .4byte gExaminationData
_0801151C:
	cmp r1, #0xfe
	beq _0801152C
	adds r1, r4, #4
	mov r0, sp
	bl sub_8014508
	cmp r0, #0
	bne _08011568
_0801152C:
	adds r4, #0x14
_0801152E:
	ldrb r1, [r4, #2]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0801151C
	ldr r0, _08011548 @ =gMain
	adds r0, #0xb2
	ldrh r1, [r0]
	ldr r0, _0801154C @ =0x00000F17
	cmp r1, r0
	bne _08011550
	movs r0, #0xad
	lsls r0, r0, #1
	b _0801156E
	.align 2, 0
_08011548: .4byte gMain
_0801154C: .4byte 0x00000F17
_08011550:
	ldr r0, _08011564 @ =0x00001219
	cmp r1, r0
	beq _0801155C
	subs r0, #4
	cmp r1, r0
	bne _0801156C
_0801155C:
	movs r0, #0x86
	lsls r0, r0, #1
	b _0801156E
	.align 2, 0
_08011564: .4byte 0x00001219
_08011568:
	ldrh r0, [r4]
	b _0801156E
_0801156C:
	movs r0, #0x1d
_0801156E:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8011578
sub_8011578: @ 0x08011578
	push {r4, r5, r6, r7, lr}
	ldr r1, _080115BC @ =gMain
	adds r2, r1, #0
	adds r2, #0xb2
	ldrb r3, [r2]
	lsls r0, r3, #2
	adds r0, r0, r3
	adds r1, r1, r0
	ldr r7, _080115C0 @ =0x00000121
	adds r1, r1, r7
	movs r4, #0
	ldr r6, _080115C4 @ =gUnknown_081DE3E8
	ldr r2, _080115C8 @ =0x040000D4
	ldr r5, _080115CC @ =0x80000400
_08011594:
	lsls r0, r4, #0xb
	ldr r7, _080115D0 @ =0x06013400
	adds r3, r0, r7
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080115AE
	ldrb r7, [r1]
	lsls r0, r7, #0xb
	adds r0, r0, r6
	str r0, [r2]
	str r3, [r2, #4]
	str r5, [r2, #8]
	ldr r0, [r2, #8]
_080115AE:
	adds r1, #1
	adds r4, #1
	cmp r4, #3
	bls _08011594
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080115BC: .4byte gMain
_080115C0: .4byte 0x00000121
_080115C4: .4byte gUnknown_081DE3E8
_080115C8: .4byte 0x040000D4
_080115CC: .4byte 0x80000400
_080115D0: .4byte 0x06013400

	thumb_func_start sub_80115D4
sub_80115D4: @ 0x080115D4
	push {r4, r5, r6, r7, lr}
	ldr r2, _08011654 @ =gTalkData
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _08011602
	ldr r0, _08011658 @ =gMain+0xB2
	ldrb r3, [r0]
	ldr r4, _0801165C @ =gAnimation+0x52
_080115E6:
	cmp r3, r1
	bne _080115F8
	ldrb r0, [r4]
	ldrb r1, [r2, #1]
	cmp r0, r1
	bne _080115F8
	ldrb r7, [r2, #3]
	cmp r7, #1
	beq _08011602
_080115F8:
	adds r2, #0x14
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _080115E6
_08011602:
	adds r1, r2, #4
	movs r4, #0
	ldr r6, _08011660 @ =gUnknown_081EB3E8
	ldr r2, _08011664 @ =0x040000D4
	ldr r5, _08011668 @ =0x80000400
_0801160C:
	lsls r0, r4, #0xb
	ldr r7, _0801166C @ =0x06013400
	adds r3, r0, r7
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08011626
	ldrb r7, [r1]
	lsls r0, r7, #0xb
	adds r0, r0, r6
	str r0, [r2]
	str r3, [r2, #4]
	str r5, [r2, #8]
	ldr r0, [r2, #8]
_08011626:
	adds r1, #1
	adds r4, #1
	cmp r4, #3
	bls _0801160C
	ldr r1, _08011664 @ =0x040000D4
	ldr r0, _08011670 @ =gUnknown_08142BFC
	str r0, [r1]
	ldr r0, _08011674 @ =0x06015400
	str r0, [r1, #4]
	ldr r0, _08011678 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0801167C @ =gUnknown_0814DE80
	str r0, [r1]
	ldr r0, _08011680 @ =0x05000360
	str r0, [r1, #4]
	ldr r0, _08011684 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011654: .4byte gTalkData
_08011658: .4byte gMain+0xB2
_0801165C: .4byte gAnimation+0x52
_08011660: .4byte gUnknown_081EB3E8
_08011664: .4byte 0x040000D4
_08011668: .4byte 0x80000400
_0801166C: .4byte 0x06013400
_08011670: .4byte gUnknown_08142BFC
_08011674: .4byte 0x06015400
_08011678: .4byte 0x80000100
_0801167C: .4byte gUnknown_0814DE80
_08011680: .4byte 0x05000360
_08011684: .4byte 0x80000010

	thumb_func_start sub_8011688
sub_8011688: @ 0x08011688
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	mov ip, r1
	movs r3, #0
	ldr r0, _0801172C @ =gUnknown_08111F14
	mov r8, r0
	mov r2, ip
	adds r2, #0x38
	movs r4, #0xff
	adds r7, r2, #0
_080116A0:
	adds r1, r2, r3
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	adds r3, #1
	cmp r3, #0x1f
	bls _080116A0
	movs r0, #0
	mov r1, ip
	strb r0, [r1, #0x11]
	movs r3, #0
	mov r6, ip
	adds r6, #0x18
	adds r5, #0xb3
	adds r2, r6, #0
	movs r4, #0xff
_080116C0:
	adds r1, r2, r3
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	adds r3, #1
	cmp r3, #0x1f
	bls _080116C0
	movs r0, #0
	mov r1, ip
	strb r0, [r1, #0x10]
	ldrb r5, [r5]
	lsls r0, r5, #2
	add r0, r8
	ldr r2, [r0]
	movs r3, #0
	ldrb r1, [r2]
	cmp r1, #0xfe
	beq _080116FC
	adds r4, r7, #0
_080116E6:
	adds r0, r4, r3
	strb r1, [r0]
	mov r1, ip
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	adds r2, #1
	adds r3, #1
	ldrb r1, [r2]
	cmp r1, #0xfe
	bne _080116E6
_080116FC:
	adds r2, #1
	movs r3, #0
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _08011722
	adds r4, r6, #0
_0801170A:
	adds r0, r4, r3
	strb r1, [r0]
	mov r1, ip
	ldrb r0, [r1, #0x10]
	adds r0, #1
	strb r0, [r1, #0x10]
	adds r2, #1
	adds r3, #1
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0801170A
_08011722:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801172C: .4byte gUnknown_08111F14

	thumb_func_start sub_8011730
sub_8011730: @ 0x08011730
	push {lr}
	ldr r1, _08011758 @ =gBG1MapBuffer
	ldr r3, _0801175C @ =0x000004DC
	adds r2, r1, r3
	movs r3, #9
	strh r3, [r2]
	ldr r2, _08011760 @ =0x000004DE
	adds r1, r1, r2
	strh r3, [r1]
	ldr r1, _08011764 @ =gUnknown_081123A8
	ldrb r3, [r0, #9]
	lsls r2, r3, #2
	adds r2, r2, r1
	ldr r1, _08011768 @ =gCourtRecord
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_08011758: .4byte gBG1MapBuffer
_0801175C: .4byte 0x000004DC
_08011760: .4byte 0x000004DE
_08011764: .4byte gUnknown_081123A8
_08011768: .4byte gCourtRecord

	thumb_func_start sub_801176C
sub_801176C: @ 0x0801176C
	push {lr}
	ldr r1, _08011784 @ =gUnknown_081123C8
	ldrb r3, [r0, #9]
	lsls r2, r3, #2
	adds r2, r2, r1
	ldr r1, _08011788 @ =gCourtRecord
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_08011784: .4byte gUnknown_081123C8
_08011788: .4byte gCourtRecord

	thumb_func_start sub_801178C
sub_801178C: @ 0x0801178C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	bl sub_8017864
	ldr r4, _08011864 @ =gMain
	ldr r0, _08011868 @ =0x000002BA
	adds r4, r4, r0
	ldrh r5, [r4]
	adds r0, r5, #0
	bl sub_8013878
	strh r5, [r4]
	ldr r1, _0801186C @ =gBG2MapBuffer
	movs r0, #0
	ldr r3, _08011870 @ =0x000003FF
	movs r2, #0
_080117AE:
	strh r2, [r1]
	adds r0, #1
	adds r1, #2
	cmp r0, r3
	bls _080117AE
	ldrb r0, [r7, #0xc]
	ldr r4, _08011874 @ =gIORegisters
	adds r3, r6, #0
	adds r3, #0x18
	cmp r0, #6
	beq _080117E2
	cmp r0, #4
	bne _080117E2
	ldrb r1, [r7, #0xd]
	cmp r1, #5
	bhi _080117E2
	ldr r2, _08011878 @ =gOamObjects+0x1A0
	movs r0, #0
	movs r1, #0xaa
	lsls r1, r1, #7
_080117D6:
	strh r1, [r2, #4]
	adds r2, #8
	adds r1, #0x20
	adds r0, #1
	cmp r0, #3
	bls _080117D6
_080117E2:
	ldrb r2, [r7, #0xc]
	cmp r2, #5
	bne _080117F0
	ldr r2, _0801187C @ =gOamObjects+0x1C8
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
_080117F0:
	ldrb r5, [r7, #0xb]
	cmp r5, #2
	bne _080117FC
	ldr r2, _08011880 @ =gOamObjects+0x1B8
	ldr r0, _08011884 @ =0x00006560
	strh r0, [r2, #4]
_080117FC:
	ldrb r0, [r7, #0xb]
	cmp r0, #3
	bne _0801180A
	ldr r2, _08011880 @ =gOamObjects+0x1B8
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
_0801180A:
	adds r2, r4, #0
	adds r2, #0x4a
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	movs r1, #0
	ldrh r5, [r2]
	orrs r0, r5
	strh r0, [r2]
	movs r0, #0xf8
	lsls r0, r0, #6
	strh r0, [r4, #4]
	movs r0, #4
	ldrb r2, [r7, #0x1a]
	orrs r0, r2
	strb r0, [r7, #0x1a]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xd]
	strb r1, [r6, #0x12]
	ldrb r0, [r6, #0x10]
	strb r0, [r6, #0xe]
	str r3, [r6, #0x14]
	bl sub_8012C60
	ldr r0, [r6, #0x14]
	ldrb r5, [r6, #0xd]
	adds r0, r5, r0
	ldrb r0, [r0]
	bl sub_8012DDC
	ldrb r0, [r7, #0xb]
	cmp r0, #1
	bne _08011854
	movs r0, #2
	movs r1, #0xc
	bl sub_8003C14
_08011854:
	movs r0, #1
	strb r0, [r6, #0xf]
	movs r0, #3
	strb r0, [r7, #9]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011864: .4byte gMain
_08011868: .4byte 0x000002BA
_0801186C: .4byte gBG2MapBuffer
_08011870: .4byte 0x000003FF
_08011874: .4byte gIORegisters
_08011878: .4byte gOamObjects+0x1A0
_0801187C: .4byte gOamObjects+0x1C8
_08011880: .4byte gOamObjects+0x1B8
_08011884: .4byte 0x00006560

	thumb_func_start sub_8011888
sub_8011888: @ 0x08011888
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r4, _080118DC @ =gAnimation+0x44
	ldr r3, _080118E0 @ =gJoypad
	movs r0, #0x80
	lsls r0, r0, #2
	ldrh r1, [r3, #2]
	ands r0, r1
	cmp r0, #0
	beq _080118E8
	ldr r0, [r6, #0x14]
	ldrb r2, [r6, #0xd]
	adds r0, r2, r0
	ldr r1, _080118E4 @ =gUnknown_08022F38
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	cmp r0, #0
	beq _080118E8
	bl PauseBGM
	movs r0, #0x2b
	bl PlaySE
	movs r1, #0
	movs r0, #5
	strb r0, [r7, #9]
	strb r1, [r7, #0xa]
	movs r0, #2
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	b _08011E04
	.align 2, 0
_080118DC: .4byte gAnimation+0x44
_080118E0: .4byte gJoypad
_080118E4: .4byte gUnknown_08022F38
_080118E8:
	ldrh r1, [r3]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08011914
	ldrb r0, [r6, #0xe]
	cmp r0, #1
	bls _08011914
	movs r0, #1
	movs r1, #0xc
	bl sub_8003C14
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r6, #0xe]
	cmp r0, r1
	blo _0801193E
	movs r0, #0
	b _0801193C
_08011914:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080119B8
	ldrb r2, [r6, #0xe]
	cmp r2, #1
	bls _080119B8
	movs r0, #2
	movs r1, #0xc
	bl sub_8003C14
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	ldrb r1, [r6, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bls _0801193E
	subs r0, r1, #1
_0801193C:
	strb r0, [r6, #0xd]
_0801193E:
	movs r0, #0x36
	bl PlaySE
	movs r0, #1
	strb r0, [r6, #0xf]
	movs r0, #2
	ldrb r3, [r6, #0xc]
	orrs r0, r3
	strb r0, [r6, #0xc]
	ldr r4, _08011990 @ =0x040000D4
	ldr r0, _08011994 @ =0x06013C00
	str r0, [r4]
	ldr r0, _08011998 @ =0x06001400
	str r0, [r4, #4]
	ldr r0, _0801199C @ =0x80000E00
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080119A0 @ =0x05000220
	str r0, [r4]
	ldr r0, _080119A4 @ =0x05000020
	str r0, [r4, #4]
	ldr r0, _080119A8 @ =0x80000010
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r0, r6, #0
	bl sub_8012E54
	ldr r0, _080119AC @ =gOamObjects+0x110
	str r0, [r4]
	ldr r0, _080119B0 @ =0x07000110
	str r0, [r4, #4]
	ldr r0, _080119B4 @ =0x8000002C
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #6
	strb r0, [r7, #9]
	ldrb r0, [r7, #0xb]
	cmp r0, #1
	bne _0801198E
	b _08011B8E
_0801198E:
	b _08011DF6
	.align 2, 0
_08011990: .4byte 0x040000D4
_08011994: .4byte 0x06013C00
_08011998: .4byte 0x06001400
_0801199C: .4byte 0x80000E00
_080119A0: .4byte 0x05000220
_080119A4: .4byte 0x05000020
_080119A8: .4byte 0x80000010
_080119AC: .4byte gOamObjects+0x110
_080119B0: .4byte 0x07000110
_080119B4: .4byte 0x8000002C
_080119B8:
	ldrb r0, [r7, #0xb]
	adds r2, r0, #0
	cmp r2, #1
	beq _080119C2
	b _08011BEE
_080119C2:
	ldrh r1, [r3, #2]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080119E4
	movs r0, #0x34
	bl PlaySE
	movs r0, #3
	movs r1, #0xc
	bl sub_8003C14
	movs r0, #4
	strb r0, [r6, #0xf]
	b _08011B8C
_080119E4:
	ands r2, r1
	cmp r2, #0
	bne _080119EC
	b _08011B68
_080119EC:
	movs r0, #0
	bl sub_8012EE4
	movs r0, #0
	bl sub_8012F44
	ldr r5, _08011A20 @ =gOamObjects
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
	strh r0, [r5, #8]
	adds r2, r7, #0
	adds r2, #0xdc
	ldr r3, [r2]
	adds r1, r3, #0
	ands r1, r0
	mov sl, r2
	cmp r1, #0
	beq _08011A28
	movs r0, #4
	movs r1, #0x12
	bl sub_8003C14
	ldr r0, _08011A24 @ =0x00000707
	b _08011B40
	.align 2, 0
_08011A20: .4byte gOamObjects
_08011A24: .4byte 0x00000707
_08011A28:
	ands r3, r4
	cmp r3, #0
	beq _08011A3C
	movs r0, #4
	bl PlayAnimation
	movs r0, #0x37
	bl PlaySE
	b _08011A48
_08011A3C:
	movs r0, #2
	bl PlayAnimation
	movs r0, #0x51
	bl PlaySE
_08011A48:
	movs r0, #3
	movs r1, #1
	movs r2, #4
	movs r3, #0x1f
	bl StartHardwareBlend
	ldr r1, _08011AB4 @ =gTestimony
	movs r0, #0xa
	strb r0, [r1, #1]
	ldr r2, _08011AB8 @ =gIORegisters
	adds r2, #0x4a
	ldr r1, _08011ABC @ =0x0000FDFF
	ldrh r3, [r2]
	ands r1, r3
	movs r0, #0
	strb r0, [r7, #0x18]
	strb r0, [r7, #0x19]
	movs r0, #0x1e
	strh r0, [r7, #0x14]
	movs r0, #1
	mov sb, r0
	mov r3, sb
	strb r3, [r7, #0x16]
	mov r3, sl
	ldr r0, [r3]
	mov r3, sb
	orrs r0, r3
	mov r3, sl
	str r0, [r3]
	ldr r0, _08011AC0 @ =0x0000FBFF
	ands r1, r0
	strh r1, [r2]
	adds r0, r6, #0
	bl sub_8012EC8
	ldr r0, _08011AC4 @ =gScriptContext
	mov r8, r0
	ldrh r0, [r0, #0x1e]
	ldr r1, [r6, #0x14]
	ldrb r6, [r6, #0xd]
	adds r1, r6, r1
	ldrb r1, [r1]
	bl sub_80131F0
	adds r4, r0, #0
	cmp r4, #0
	beq _08011ACC
	bl StopBGM
	adds r0, r4, #0
	bl ChangeScriptSection
	ldr r0, _08011AC8 @ =0x00000103
	b _08011B3C
	.align 2, 0
_08011AB4: .4byte gTestimony
_08011AB8: .4byte gIORegisters
_08011ABC: .4byte 0x0000FDFF
_08011AC0: .4byte 0x0000FBFF
_08011AC4: .4byte gScriptContext
_08011AC8: .4byte 0x00000103
_08011ACC:
	mov r1, r8
	ldrh r5, [r1, #0x1e]
	movs r0, #0x10
	ldrh r2, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08011AE4
	adds r5, #1
	adds r0, r5, #0
	bl ChangeScriptSection
	b _08011B2E
_08011AE4:
	bl Random
	movs r4, #3
	ands r4, r0
	cmp r4, #1
	beq _08011B0E
	cmp r4, #1
	blo _08011AFE
	cmp r4, #2
	beq _08011B1C
	cmp r4, #3
	beq _08011B24
	b _08011B2A
_08011AFE:
	movs r0, #0x1f
	bl ChangeScriptSection
	mov r0, r8
	adds r0, #0x33
	mov r3, sb
	strb r3, [r0]
	b _08011B2A
_08011B0E:
	movs r0, #0x20
	bl ChangeScriptSection
	mov r0, r8
	adds r0, #0x33
	strb r4, [r0]
	b _08011B2A
_08011B1C:
	movs r0, #0x21
	bl ChangeScriptSection
	b _08011B2A
_08011B24:
	movs r0, #0x22
	bl ChangeScriptSection
_08011B2A:
	ldr r0, _08011B58 @ =gScriptContext
	strh r5, [r0, #0x20]
_08011B2E:
	ldr r0, _08011B58 @ =gScriptContext
	ldr r1, _08011B5C @ =0x0000FFEF
	ldrh r2, [r0]
	ands r1, r2
	strh r1, [r0]
	movs r0, #0x83
	lsls r0, r0, #1
_08011B3C:
	str r0, [r7, #0xc]
	ldr r0, _08011B60 @ =0x00000506
_08011B40:
	str r0, [r7, #8]
	movs r0, #0
	movs r1, #0
	bl SetTextboxNametag
	mov r3, sl
	ldr r0, [r3]
	ldr r1, _08011B64 @ =0xFFFFFCFF
	ands r0, r1
	str r0, [r3]
	b _08011E04
	.align 2, 0
_08011B58: .4byte gScriptContext
_08011B5C: .4byte 0x0000FFEF
_08011B60: .4byte 0x00000506
_08011B64: .4byte 0xFFFFFCFF
_08011B68:
	adds r0, r7, #0
	adds r0, #0xdc
	ldr r0, [r0]
	ands r0, r4
	cmp r0, #0
	bne _08011B8E
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08011B8E
	movs r0, #0x2c
	bl PlaySE
	movs r0, #4
	movs r1, #0xc
	bl sub_8003C14
	movs r0, #2
_08011B8C:
	strb r0, [r7, #9]
_08011B8E:
	ldrb r0, [r7, #0xc]
	cmp r0, #4
	beq _08011B9E
	ldr r1, _08011BCC @ =gTestimony
	adds r0, r7, #0
	movs r2, #0
	bl sub_800E6D0
_08011B9E:
	ldr r5, _08011BD0 @ =gOamObjects+0x1B8
	adds r0, r7, #0
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08011BE4
	movs r1, #0x80
	lsls r1, r1, #7
	strh r1, [r5]
	ldr r0, _08011BD4 @ =0x000080BA
	strh r0, [r5, #2]
	ldr r0, _08011BD8 @ =0x00005590
	strh r0, [r5, #4]
	adds r5, #8
	strh r1, [r5]
	ldr r0, _08011BDC @ =0x000080DA
	strh r0, [r5, #2]
	ldr r0, _08011BE0 @ =0x00005598
	strh r0, [r5, #4]
	b _08011DF6
	.align 2, 0
_08011BCC: .4byte gTestimony
_08011BD0: .4byte gOamObjects+0x1B8
_08011BD4: .4byte 0x000080BA
_08011BD8: .4byte 0x00005590
_08011BDC: .4byte 0x000080DA
_08011BE0: .4byte 0x00005598
_08011BE4:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
	strh r0, [r5, #8]
	b _08011DF6
_08011BEE:
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08011BFA
	b _08011DBC
_08011BFA:
	ldrh r1, [r3, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08011C1A
	movs r0, #0x34
	bl PlaySE
	movs r0, #3
	movs r1, #0xc
	bl sub_8003C14
	movs r0, #4
	strb r0, [r6, #0xf]
	b _08011DF4
_08011C1A:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08011C24
	b _08011D8C
_08011C24:
	cmp r2, #2
	bne _08011CB0
	ldr r0, [r6, #0x14]
	ldrb r1, [r6, #0xd]
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0x2b
	bne _08011CB0
	adds r0, r7, #0
	adds r0, #0xb2
	ldrb r0, [r0]
	ldrb r1, [r4, #0xe]
	bl sub_8016D8C
	cmp r0, #0
	blt _08011CB0
	ldr r1, _08011C98 @ =gInvestigation
	movs r0, #1
	ldrb r2, [r1, #0xb]
	orrs r0, r2
	strb r0, [r1, #0xb]
	ldr r5, _08011C9C @ =gOamObjects+0x1B8
	movs r4, #0x80
	lsls r4, r4, #2
	strh r4, [r5]
	adds r0, r6, #0
	bl sub_8012EC8
	movs r0, #0
	bl sub_8012EE4
	movs r0, #0
	bl sub_8012F44
	ldr r1, _08011CA0 @ =gIORegisters
	adds r1, #0x4a
	ldr r0, _08011CA4 @ =0x0000FBFF
	ldrh r3, [r1]
	ands r0, r3
	strh r0, [r1]
	ldr r0, _08011CA8 @ =0xFFFFFE48
	adds r5, r5, r0
	strh r4, [r5]
	strh r4, [r5, #8]
	movs r0, #0x1e
	bl FadeOutBGM
	movs r0, #8
	ldrb r1, [r6, #0xc]
	orrs r0, r1
	strb r0, [r6, #0xc]
	movs r0, #4
	movs r1, #0x12
	bl sub_8003C14
	ldr r0, _08011CAC @ =0x00000707
	str r0, [r7, #8]
	b _08011E04
	.align 2, 0
_08011C98: .4byte gInvestigation
_08011C9C: .4byte gOamObjects+0x1B8
_08011CA0: .4byte gIORegisters
_08011CA4: .4byte 0x0000FBFF
_08011CA8: .4byte 0xFFFFFE48
_08011CAC: .4byte 0x00000707
_08011CB0:
	movs r0, #0x2b
	bl PlaySE
	ldrb r2, [r7, #0xb]
	cmp r2, #2
	bne _08011CDC
	ldr r0, [r6, #0x14]
	ldrb r3, [r6, #0xd]
	adds r0, r3, r0
	ldrb r1, [r0]
	movs r2, #1
	ldrb r0, [r6, #0xc]
	ands r2, r0
	adds r0, r7, #0
	bl sub_8013274
	adds r4, r0, #0
	bl ChangeScriptSection
	movs r0, #1
	bl SlideTextbox
_08011CDC:
	adds r0, r6, #0
	bl sub_8012EC8
	movs r0, #0
	bl sub_8012EE4
	movs r0, #0
	bl sub_8012F44
	ldr r0, _08011D54 @ =gIORegisters
	adds r0, #0x4a
	ldr r1, _08011D58 @ =0x0000FBFF
	ldrh r2, [r0]
	ands r1, r2
	strh r1, [r0]
	ldr r5, _08011D5C @ =gOamObjects
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
	strh r0, [r5, #8]
	ldrb r3, [r7, #0xb]
	cmp r3, #3
	bne _08011D6C
	ldr r1, _08011D60 @ =gInvestigation
	movs r0, #4
	strb r0, [r1, #0xe]
	movs r1, #0x12
	bl sub_8003C14
	ldr r0, _08011D64 @ =0x00000707
	str r0, [r7, #8]
	movs r0, #0x10
	ldrb r1, [r6, #0xc]
	orrs r0, r1
	strb r0, [r6, #0xc]
	ldr r2, _08011D68 @ =gMain
	movs r3, #0x91
	lsls r3, r3, #2
	adds r0, r2, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r3, #0xa0
	adds r1, r2, r3
	adds r0, r0, r1
	ldr r1, [r6, #0x14]
	ldrb r6, [r6, #0xd]
	adds r1, r6, r1
	ldrb r1, [r1]
	bl sub_8016DCC
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08011E04
	bl StopBGM
	b _08011E04
	.align 2, 0
_08011D54: .4byte gIORegisters
_08011D58: .4byte 0x0000FBFF
_08011D5C: .4byte gOamObjects
_08011D60: .4byte gInvestigation
_08011D64: .4byte 0x00000707
_08011D68: .4byte gMain
_08011D6C:
	ldr r1, _08011D84 @ =gInvestigation
	movs r0, #3
	strb r0, [r1, #0xe]
	movs r0, #8
	strb r0, [r1, #8]
	movs r0, #0xf0
	strb r0, [r1, #0xf]
	ldr r1, _08011D88 @ =gMain+0x8
	ldr r0, [r7, #0xc]
	str r0, [r1]
	b _08011E04
	.align 2, 0
_08011D84: .4byte gInvestigation
_08011D88: .4byte gMain+0x8
_08011D8C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08011DF6
	movs r0, #0x2c
	bl PlaySE
	movs r0, #3
	movs r1, #0xc
	bl sub_8003C14
	ldrb r0, [r7, #0xb]
	cmp r0, #2
	bne _08011DB0
	ldr r0, _08011DAC @ =0x00030904
	b _08011DB2
	.align 2, 0
_08011DAC: .4byte 0x00030904
_08011DB0:
	ldr r0, _08011DB8 @ =0x00060A04
_08011DB2:
	str r0, [r7, #0xc]
	movs r0, #2
	b _08011DF4
	.align 2, 0
_08011DB8: .4byte 0x00060A04
_08011DBC:
	ldrh r1, [r3, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08011DDC
	movs r0, #0x34
	bl PlaySE
	movs r0, #3
	movs r1, #0xc
	bl sub_8003C14
	movs r0, #4
	strb r0, [r6, #0xf]
	b _08011DF4
_08011DDC:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08011DF6
	movs r0, #0x2c
	bl PlaySE
	movs r0, #3
	movs r1, #0xc
	bl sub_8003C14
	movs r0, #2
_08011DF4:
	strb r0, [r7, #9]
_08011DF6:
	ldr r4, _08011E14 @ =gCourtRecord
	adds r0, r4, #0
	bl sub_8003FC4
	adds r0, r4, #0
	bl sub_8012D20
_08011E04:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011E14: .4byte gCourtRecord

	thumb_func_start sub_8011E18
sub_8011E18: @ 0x08011E18
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #2
	bne _08011E4A
	ldrb r1, [r4, #2]
	cmp r1, #8
	bls _08011E4A
	ldr r3, _08011EBC @ =gOamObjects+0x1B8
	ldrh r0, [r3, #2]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r2, r0
	adds r0, #0xc
	ldr r1, _08011EC0 @ =0x000001FF
	ands r0, r1
	strh r0, [r3, #2]
	cmp r0, #0xb3
	bls _08011E44
	movs r0, #0xb4
	strh r0, [r3, #2]
_08011E44:
	ldrh r0, [r3, #2]
	orrs r2, r0
	strh r2, [r3, #2]
_08011E4A:
	ldrb r1, [r5, #0xb]
	cmp r1, #3
	bne _08011E5E
	ldrb r2, [r4, #2]
	cmp r2, #8
	bls _08011E5E
	ldr r3, _08011EBC @ =gOamObjects+0x1B8
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3]
_08011E5E:
	adds r0, r4, #0
	bl sub_8003FC4
	adds r0, r4, #0
	bl sub_8012D20
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08011EB6
	movs r0, #4
	ldrb r1, [r4, #0xc]
	orrs r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r4, #0xc]
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _08011EA2
	ldr r1, _08011EC4 @ =gScriptContext
	movs r0, #4
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08011EA2
	ldr r1, _08011EC8 @ =gBG1MapBuffer
	ldr r0, _08011ECC @ =0x000004DC
	adds r2, r1, r0
	movs r0, #0x20
	strh r0, [r2]
	ldr r2, _08011ED0 @ =0x000004DE
	adds r1, r1, r2
	movs r0, #0x21
	strh r0, [r1]
_08011EA2:
	ldr r0, _08011ED4 @ =gMain+0x8
	ldr r1, [r5, #0xc]
	str r1, [r0]
	ldr r2, _08011ED8 @ =0x000002B2
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0
	beq _08011EB6
	bl PlaySE
_08011EB6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011EBC: .4byte gOamObjects+0x1B8
_08011EC0: .4byte 0x000001FF
_08011EC4: .4byte gScriptContext
_08011EC8: .4byte gBG1MapBuffer
_08011ECC: .4byte 0x000004DC
_08011ED0: .4byte 0x000004DE
_08011ED4: .4byte gMain+0x8
_08011ED8: .4byte 0x000002B2

	thumb_func_start sub_8011EDC
sub_8011EDC: @ 0x08011EDC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #2
	bne _08011F0E
	ldrb r1, [r4, #2]
	cmp r1, #8
	bls _08011F0E
	ldr r3, _08011F38 @ =gOamObjects+0x1B8
	ldrh r0, [r3, #2]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r2, r0
	subs r0, #0xc
	ldr r1, _08011F3C @ =0x000001FF
	ands r0, r1
	strh r0, [r3, #2]
	cmp r0, #0xff
	bls _08011F08
	movs r0, #0
	strh r0, [r3, #2]
_08011F08:
	ldrh r0, [r3, #2]
	orrs r2, r0
	strh r2, [r3, #2]
_08011F0E:
	adds r0, r4, #0
	bl sub_8003FC4
	adds r0, r4, #0
	bl sub_8012D20
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08011F32
	movs r0, #4
	ldrb r1, [r4, #0xc]
	orrs r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xf]
	strb r0, [r5, #9]
_08011F32:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011F38: .4byte gOamObjects+0x1B8
_08011F3C: .4byte 0x000001FF

	thumb_func_start sub_8011F40
sub_8011F40: @ 0x08011F40
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl sub_8003FC4
	adds r0, r4, #0
	bl sub_8012D20
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08011FE0
	movs r0, #0xfd
	ldrb r1, [r4, #0xc]
	ands r0, r1
	strb r0, [r4, #0xc]
	movs r0, #2
	movs r1, #0xc
	bl sub_8003C14
	movs r1, #1
	strb r1, [r4, #0xf]
	movs r0, #3
	strb r0, [r5, #9]
	ldrb r2, [r4, #0xd]
	ldrb r0, [r4, #0x12]
	strb r0, [r4, #0xd]
	strb r2, [r4, #0x12]
	ldrb r2, [r4, #0xc]
	ands r1, r2
	cmp r1, #0
	beq _08011FB4
	movs r0, #0xfe
	ands r0, r2
	strb r0, [r4, #0xc]
	ldr r1, _08011FA4 @ =0x040000D4
	ldr r0, _08011FA8 @ =gUnknown_081422FC
	str r0, [r1]
	ldr r0, _08011FAC @ =0x06013500
	str r0, [r1, #4]
	ldr r0, _08011FB0 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrb r0, [r4, #0x10]
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x18
	b _08011FD2
	.align 2, 0
_08011FA4: .4byte 0x040000D4
_08011FA8: .4byte gUnknown_081422FC
_08011FAC: .4byte 0x06013500
_08011FB0: .4byte 0x80000100
_08011FB4:
	movs r0, #1
	orrs r0, r2
	strb r0, [r4, #0xc]
	ldr r1, _08011FE8 @ =0x040000D4
	ldr r0, _08011FEC @ =gUnknown_081424FC
	str r0, [r1]
	ldr r0, _08011FF0 @ =0x06013500
	str r0, [r1, #4]
	ldr r0, _08011FF4 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrb r0, [r4, #0x11]
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x38
_08011FD2:
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x14]
	ldrb r4, [r4, #0xd]
	adds r0, r4, r0
	ldrb r0, [r0]
	bl sub_8012DDC
_08011FE0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011FE8: .4byte 0x040000D4
_08011FEC: .4byte gUnknown_081424FC
_08011FF0: .4byte 0x06013500
_08011FF4: .4byte 0x80000100

	thumb_func_start sub_8011FF8
sub_8011FF8: @ 0x08011FF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08012020
	ldr r0, _08012034 @ =gIORegisters
	movs r2, #0
	movs r1, #8
	strh r1, [r0, #0x16]
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xc]
_08012020:
	ldrb r0, [r5, #0xa]
	cmp r0, #6
	bls _08012028
	b _08012692
_08012028:
	lsls r0, r0, #2
	ldr r1, _08012038 @ =_0801203C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08012034: .4byte gIORegisters
_08012038: .4byte _0801203C
_0801203C: @ jump table
	.4byte _08012058 @ case 0
	.4byte _08012314 @ case 1
	.4byte _0801232C @ case 2
	.4byte _080123B0 @ case 3
	.4byte _08012524 @ case 4
	.4byte _08012608 @ case 5
	.4byte _08012630 @ case 6
_08012058:
	adds r0, r5, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _08012064
	b _08012692
_08012064:
	ldr r1, _0801208C @ =gMain
	ldr r0, _08012090 @ =0x00000A04
	ldrh r2, [r1, #0xc]
	cmp r2, r0
	bne _08012098
	ldr r4, _08012094 @ =0x0000024B
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #2
	beq _080120A6
	ldrh r1, [r1, #0x30]
	cmp r1, #0x7f
	bne _080120A6
	bl sub_80161F4
	bl sub_801622C
	bl sub_8017134
	b _080120A6
	.align 2, 0
_0801208C: .4byte gMain
_08012090: .4byte 0x00000A04
_08012094: .4byte 0x0000024B
_08012098:
	ldr r2, _080120D8 @ =0x0000024B
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	bne _080120A6
	bl sub_8016D40
_080120A6:
	movs r0, #0
	strb r0, [r6, #0x13]
	ldr r0, [r6, #0x14]
	ldrb r4, [r6, #0xd]
	adds r0, r4, r0
	ldrb r2, [r0]
	ldr r1, _080120DC @ =0x040000D4
	ldr r0, _080120E0 @ =gMain
	str r0, [r1]
	ldr r0, _080120E4 @ =gUnknown_02000034
	str r0, [r1, #4]
	ldr r0, _080120E8 @ =0x80000160
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _080120EC @ =gUnknown_08022F38
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	cmp r0, #0x15
	bhi _080121A0
	lsls r0, r0, #2
	ldr r1, _080120F0 @ =_080120F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080120D8: .4byte 0x0000024B
_080120DC: .4byte 0x040000D4
_080120E0: .4byte gMain
_080120E4: .4byte gUnknown_02000034
_080120E8: .4byte 0x80000160
_080120EC: .4byte gUnknown_08022F38
_080120F0: .4byte _080120F4
_080120F4: @ jump table
	.4byte _080121A0 @ case 0
	.4byte _0801214C @ case 1
	.4byte _08012150 @ case 2
	.4byte _08012154 @ case 3
	.4byte _08012158 @ case 4
	.4byte _0801215C @ case 5
	.4byte _08012160 @ case 6
	.4byte _08012164 @ case 7
	.4byte _08012168 @ case 8
	.4byte _0801216C @ case 9
	.4byte _08012170 @ case 10
	.4byte _08012174 @ case 11
	.4byte _08012178 @ case 12
	.4byte _0801217C @ case 13
	.4byte _08012180 @ case 14
	.4byte _08012184 @ case 15
	.4byte _08012188 @ case 16
	.4byte _0801218C @ case 17
	.4byte _08012190 @ case 18
	.4byte _08012194 @ case 19
	.4byte _08012198 @ case 20
	.4byte _0801219C @ case 21
_0801214C:
	movs r0, #0x15
	b _0801219E
_08012150:
	movs r0, #0x16
	b _0801219E
_08012154:
	movs r0, #0x2b
	b _0801219E
_08012158:
	movs r0, #0x2a
	b _0801219E
_0801215C:
	movs r0, #0x30
	b _0801219E
_08012160:
	movs r0, #0x31
	b _0801219E
_08012164:
	movs r0, #0x32
	b _0801219E
_08012168:
	movs r0, #0x27
	b _0801219E
_0801216C:
	movs r0, #0x4c
	b _0801219E
_08012170:
	movs r0, #0x4b
	b _0801219E
_08012174:
	movs r0, #0x48
	b _0801219E
_08012178:
	movs r0, #0x49
	b _0801219E
_0801217C:
	movs r0, #0x53
	b _0801219E
_08012180:
	movs r0, #0x47
	b _0801219E
_08012184:
	movs r0, #0x47
	b _0801219E
_08012188:
	movs r0, #0x47
	b _0801219E
_0801218C:
	movs r0, #0x65
	b _0801219E
_08012190:
	movs r0, #0x64
	b _0801219E
_08012194:
	movs r0, #0x76
	b _0801219E
_08012198:
	movs r0, #0x66
	b _0801219E
_0801219C:
	movs r0, #0x67
_0801219E:
	strh r0, [r5, #0x2e]
_080121A0:
	ldrh r0, [r5, #0x2e]
	bl sub_8002820
	ldr r1, _0801220C @ =0x040000D4
	ldr r0, _08012210 @ =gOamObjects
	str r0, [r1]
	ldr r2, _08012214 @ =gUnknown_0200093C
	str r2, [r1, #4]
	ldr r0, _08012218 @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r3, _0801221C @ =gMapMarker
	str r3, [r1]
	subs r2, #0xa0
	str r2, [r1, #4]
	ldr r0, _08012220 @ =0x80000050
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r1, #0
	adds r7, r5, #0
	adds r7, #0x25
	movs r2, #0xff
_080121CC:
	ldrb r0, [r3]
	orrs r0, r2
	strb r0, [r3]
	adds r3, #0x14
	adds r1, #1
	cmp r1, #7
	bls _080121CC
	ldrb r0, [r5, #0xc]
	cmp r0, #4
	bne _08012238
	ldr r3, _08012224 @ =gOamObjects+0x1A0
	movs r1, #0
	ldr r0, _08012228 @ =gIORegisters
	mov sb, r0
	ldr r2, _0801222C @ =gScriptContext
	mov ip, r2
	ldr r4, _08012230 @ =gSaveDataBuffer
	mov r8, r4
	movs r4, #0x80
	lsls r4, r4, #2
	adds r2, r4, #0
_080121F6:
	ldr r0, _08012234 @ =0x0000FCFF
	ldrh r4, [r3]
	ands r0, r4
	orrs r0, r2
	strh r0, [r3]
	adds r3, #8
	adds r1, #1
	cmp r1, #3
	bls _080121F6
	b _08012292
	.align 2, 0
_0801220C: .4byte 0x040000D4
_08012210: .4byte gOamObjects
_08012214: .4byte gUnknown_0200093C
_08012218: .4byte 0x80000200
_0801221C: .4byte gMapMarker
_08012220: .4byte 0x80000050
_08012224: .4byte gOamObjects+0x1A0
_08012228: .4byte gIORegisters
_0801222C: .4byte gScriptContext
_08012230: .4byte gSaveDataBuffer
_08012234: .4byte 0x0000FCFF
_08012238:
	cmp r0, #5
	bne _08012264
	ldr r3, _08012254 @ =gOamObjects+0x1C8
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3]
	ldr r0, _08012258 @ =gIORegisters
	mov sb, r0
	ldr r1, _0801225C @ =gScriptContext
	mov ip, r1
	ldr r2, _08012260 @ =gSaveDataBuffer
	mov r8, r2
	b _08012292
	.align 2, 0
_08012254: .4byte gOamObjects+0x1C8
_08012258: .4byte gIORegisters
_0801225C: .4byte gScriptContext
_08012260: .4byte gSaveDataBuffer
_08012264:
	ldr r4, _080122F0 @ =gIORegisters
	mov sb, r4
	ldr r1, _080122F4 @ =gScriptContext
	mov ip, r1
	ldr r2, _080122F8 @ =gSaveDataBuffer
	mov r8, r2
	cmp r0, #6
	bne _08012292
	ldr r3, _080122FC @ =gOamObjects+0x1B8
	ldr r0, _08012300 @ =0x0000FCFF
	adds r1, r0, #0
	ldrh r4, [r3]
	ands r1, r4
	movs r4, #0x80
	lsls r4, r4, #2
	adds r2, r4, #0
	orrs r1, r2
	strh r1, [r3]
	adds r3, #8
	ldrh r1, [r3]
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
_08012292:
	movs r0, #0x80
	lsls r0, r0, #3
	mov r2, ip
	ldrh r2, [r2]
	ands r0, r2
	cmp r0, #0
	beq _080122A8
	ldr r3, _08012304 @ =gOamObjects+0x1D0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3]
_080122A8:
	ldrb r2, [r5, #0x19]
	mov r0, r8
	adds r0, #0x4d
	movs r1, #0
	strb r2, [r0]
	strb r1, [r5, #0x19]
	mov r2, sb
	adds r2, #0x4a
	ldr r0, _08012308 @ =0x0000FDFF
	ldrh r4, [r2]
	ands r0, r4
	ldr r1, _0801230C @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0xfc
	ldrb r1, [r7]
	ands r0, r1
	strb r0, [r7]
	adds r0, r6, #0
	bl sub_8012EC8
	movs r0, #0
	bl sub_8012EE4
	movs r0, #1
	bl sub_8013080
	ldr r3, _08012310 @ =gOamObjects
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3]
	strh r0, [r3, #8]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	b _08012690
	.align 2, 0
_080122F0: .4byte gIORegisters
_080122F4: .4byte gScriptContext
_080122F8: .4byte gSaveDataBuffer
_080122FC: .4byte gOamObjects+0x1B8
_08012300: .4byte 0x0000FCFF
_08012304: .4byte gOamObjects+0x1D0
_08012308: .4byte 0x0000FDFF
_0801230C: .4byte 0x0000FBFF
_08012310: .4byte gOamObjects
_08012314:
	ldrh r0, [r5, #0x2e]
	bl CopyBGDataToVram
	movs r0, #1
	movs r1, #1
	movs r2, #2
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r5, #0xa]
	adds r0, #1
	b _08012690
_0801232C:
	adds r0, r5, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _08012338
	b _08012692
_08012338:
	ldr r0, _0801235C @ =gJoypad
	ldrh r1, [r0, #2]
	ldr r4, _08012360 @ =0x00000202
	ands r4, r1
	cmp r4, #0
	beq _08012364
	movs r0, #0x2c
	bl PlaySE
	movs r0, #2
	movs r1, #1
	movs r2, #1
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r5, #0xa]
	adds r0, #1
	b _08012690
	.align 2, 0
_0801235C: .4byte gJoypad
_08012360: .4byte 0x00000202
_08012364:
	movs r0, #0x81
	ands r0, r1
	cmp r0, #0
	bne _0801236E
	b _08012692
_0801236E:
	ldr r0, [r6, #0x14]
	ldrb r2, [r6, #0xd]
	adds r0, r2, r0
	ldr r1, _080123AC @ =gUnknown_08022F38
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	cmp r0, #8
	beq _08012384
	b _08012692
_08012384:
	movs r0, #0x2b
	bl PlaySE
	ldrb r0, [r6, #0x13]
	adds r0, #1
	strb r0, [r6, #0x13]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0801239A
	strb r4, [r6, #0x13]
_0801239A:
	movs r0, #2
	movs r1, #1
	movs r2, #2
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r0, #6
	b _08012690
	.align 2, 0
_080123AC: .4byte gUnknown_08022F38
_080123B0:
	adds r0, r5, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	beq _080123BC
	b _08012692
_080123BC:
	ldr r2, _080124F8 @ =gSaveDataBuffer
	adds r0, r2, #0
	adds r0, #0x62
	ldrh r0, [r0]
	strh r0, [r5, #0x2e]
	adds r0, r2, #0
	adds r0, #0x66
	ldrh r0, [r0]
	strh r0, [r5, #0x32]
	adds r0, r2, #0
	adds r0, #0x68
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x34
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x69
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x35
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x6b
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r5, #0x38]
	adds r0, r2, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	strh r0, [r5, #0x3a]
	adds r0, r2, #0
	adds r0, #0x70
	ldrh r0, [r0]
	strh r0, [r5, #0x3c]
	adds r0, r2, #0
	adds r0, #0x72
	ldrh r0, [r0]
	strh r0, [r5, #0x3e]
	adds r0, r2, #0
	adds r0, #0x74
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x40
	strh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x76
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x78
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x44
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x79
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x45
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x7a
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	ldr r0, [r2, #0x7c]
	str r0, [r5, #0x48]
	movs r1, #0
	adds r7, r5, #0
	adds r7, #0x25
	adds r3, r2, #0
	adds r3, #0x80
	adds r2, r5, #0
	adds r2, #0x4c
_08012470:
	ldm r3!, {r0}
	stm r2!, {r0}
	adds r1, #1
	cmp r1, #0xb
	bls _08012470
	ldrh r0, [r5, #0x2e]
	bl sub_8002820
	ldrh r0, [r5, #0x2e]
	bl sub_800342C
	ldr r3, _080124F8 @ =gSaveDataBuffer
	adds r0, r3, #0
	adds r0, #0x4d
	ldrb r0, [r0]
	strb r0, [r5, #0x19]
	ldr r2, _080124FC @ =gIORegisters
	adds r2, #0x4a
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r4, #0
	movs r4, #0
	ldrh r6, [r2]
	orrs r0, r6
	movs r6, #0x80
	lsls r6, r6, #3
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08012500 @ =0x040000D4
	ldr r2, _08012504 @ =0x0000093C
	adds r0, r3, r2
	str r0, [r1]
	ldr r0, _08012508 @ =gOamObjects
	str r0, [r1, #4]
	ldr r0, _0801250C @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r6, _08012510 @ =0x0000089C
	adds r3, r3, r6
	str r3, [r1]
	ldr r0, _08012514 @ =gMapMarker
	str r0, [r1, #4]
	ldr r0, _08012518 @ =0x80000050
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_8009934
	ldrb r0, [r5, #0xc]
	cmp r0, #5
	bne _080124DA
	ldr r0, _0801251C @ =gTestimony
	strb r4, [r0, #1]
_080124DA:
	movs r0, #3
	ldrb r1, [r7]
	orrs r0, r1
	strb r0, [r7]
	ldr r4, _08012520 @ =gCourtRecord
	adds r0, r4, #0
	bl sub_8003FC4
	adds r0, r4, #0
	bl sub_8012D20
	ldrb r0, [r5, #0xa]
	adds r0, #1
	b _08012690
	.align 2, 0
_080124F8: .4byte gSaveDataBuffer
_080124FC: .4byte gIORegisters
_08012500: .4byte 0x040000D4
_08012504: .4byte 0x0000093C
_08012508: .4byte gOamObjects
_0801250C: .4byte 0x80000200
_08012510: .4byte 0x0000089C
_08012514: .4byte gMapMarker
_08012518: .4byte 0x80000050
_0801251C: .4byte gTestimony
_08012520: .4byte gCourtRecord
_08012524:
	ldrh r0, [r5, #0x2e]
	bl sub_800342C
	ldrh r2, [r5, #0x2e]
	cmp r2, #0x23
	bne _08012546
	ldr r1, _08012568 @ =gIORegisters
	movs r0, #8
	strh r0, [r1, #0x14]
	movs r0, #0x6b
	bl FindAnimationFromAnimId
	adds r1, r0, #0
	cmp r1, #0
	beq _08012546
	movs r0, #0x78
	strh r0, [r1, #0x10]
_08012546:
	ldr r0, _0801256C @ =gMain
	ldr r4, _08012570 @ =0x000002BE
	adds r0, r0, r4
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080125A8
	lsrs r0, r1, #4
	cmp r0, #1
	beq _0801258A
	cmp r0, #1
	bgt _08012574
	cmp r0, #0
	beq _0801257A
	b _080125A8
	.align 2, 0
_08012568: .4byte gIORegisters
_0801256C: .4byte gMain
_08012570: .4byte 0x000002BE
_08012574:
	cmp r0, #2
	beq _0801259A
	b _080125A8
_0801257A:
	bl sub_800E7B0
	movs r0, #0x18
	movs r1, #0x80
	movs r2, #1
	bl sub_800E7EC
	b _080125A8
_0801258A:
	bl sub_800E8C4
	movs r0, #0
	movs r1, #0x80
	movs r2, #1
	bl sub_800E900
	b _080125A8
_0801259A:
	bl sub_800E8C4
	movs r0, #0x20
	movs r1, #0x80
	movs r2, #1
	bl sub_800E9D4
_080125A8:
	ldr r1, _080125CC @ =gMain
	ldr r0, _080125D0 @ =0x00000A04
	ldrh r6, [r1, #0xc]
	cmp r6, r0
	bne _080125D8
	ldr r2, _080125D4 @ =0x0000024B
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #2
	beq _080125C4
	bl sub_8016204
	bl sub_801622C
_080125C4:
	bl sub_80170AC
	b _080125F2
	.align 2, 0
_080125CC: .4byte gMain
_080125D0: .4byte 0x00000A04
_080125D4: .4byte 0x0000024B
_080125D8:
	ldr r4, _08012604 @ =0x0000024B
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #1
	bne _080125F2
	movs r6, #0x91
	lsls r6, r6, #2
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_8016C7C
_080125F2:
	movs r0, #1
	movs r1, #1
	movs r2, #2
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r5, #0xa]
	adds r0, #1
	b _08012690
	.align 2, 0
_08012604: .4byte 0x0000024B
_08012608:
	adds r0, r5, #0
	adds r0, #0x7e
	ldrh r4, [r0]
	cmp r4, #0
	bne _0801261C
	bl UnpauseBGM
	movs r0, #1
	strb r0, [r5, #9]
	strb r4, [r5, #0xa]
_0801261C:
	ldr r4, _0801262C @ =gCourtRecord
	adds r0, r4, #0
	bl sub_8003FC4
	adds r0, r4, #0
	bl sub_8012D20
	b _08012692
	.align 2, 0
_0801262C: .4byte gCourtRecord
_08012630:
	adds r0, r5, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0
	bne _08012692
	ldr r0, [r6, #0x14]
	ldrb r1, [r6, #0xd]
	adds r0, r1, r0
	ldr r1, _08012660 @ =gUnknown_08022F38
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	cmp r0, #8
	bne _08012676
	ldrb r0, [r6, #0x13]
	cmp r0, #1
	beq _0801266E
	cmp r0, #1
	bgt _08012664
	cmp r0, #0
	beq _0801266A
	b _08012676
	.align 2, 0
_08012660: .4byte gUnknown_08022F38
_08012664:
	cmp r0, #2
	beq _08012672
	b _08012676
_0801266A:
	movs r0, #0x27
	b _08012674
_0801266E:
	movs r0, #0x28
	b _08012674
_08012672:
	movs r0, #0x29
_08012674:
	strh r0, [r5, #0x2e]
_08012676:
	ldrh r0, [r5, #0x2e]
	bl sub_8002820
	ldrh r0, [r5, #0x2e]
	bl CopyBGDataToVram
	movs r0, #1
	movs r1, #1
	movs r2, #2
	movs r3, #0x1f
	bl StartHardwareBlend
	movs r0, #1
_08012690:
	strb r0, [r5, #0xa]
_08012692:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80126A0
sub_80126A0: @ 0x080126A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1, #0x14]
	ldrb r1, [r1, #0xd]
	adds r0, r1, r0
	ldrb r0, [r0]
	bl sub_8012DDC
	movs r0, #3
	strb r0, [r4, #9]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80126BC
sub_80126BC: @ 0x080126BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _080126E0 @ =gOamObjects+0x1A0
	mov sb, r0
	ldr r6, _080126E4 @ =gAnimation+0x44
	ldrb r7, [r5, #0xa]
	cmp r7, #2
	bgt _080126E8
	cmp r7, #1
	bge _080127CC
	cmp r7, #0
	beq _080126F0
	b _080127EE
	.align 2, 0
_080126E0: .4byte gOamObjects+0x1A0
_080126E4: .4byte gAnimation+0x44
_080126E8:
	cmp r7, #3
	bne _080126EE
	b _080127F4
_080126EE:
	b _080127EE
_080126F0:
	adds r1, r5, #0
	adds r1, #0x92
	movs r2, #0
	mov r8, r2
	strh r7, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	mov r3, sb
	strh r0, [r3]
	movs r0, #1
	ldrsb r0, [r4, r0]
	adds r6, r1, #0
	cmp r0, #0
	beq _0801270E
	b _080129F0
_0801270E:
	movs r0, #4
	bl PlayAnimation
	movs r0, #0x37
	bl PlaySE
	ldr r1, _0801279C @ =gTestimony
	movs r0, #6
	strb r0, [r1, #1]
	ldr r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	adds r0, r1, r0
	ldrb r2, [r0]
	movs r0, #0x20
	ldrb r4, [r4, #0xc]
	ands r0, r4
	cmp r0, #0
	beq _08012734
	movs r2, #6
_08012734:
	ldr r1, _080127A0 @ =gUnknown_08022F38
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r2, r3, #6
	adds r2, r2, r3
	lsls r2, r2, #5
	ldr r0, _080127A4 @ =gUnknown_08177E28_pal
	adds r4, r2, r0
	ldr r0, _080127A8 @ =0x040000D4
	str r4, [r0]
	ldr r1, _080127AC @ =0x05000220
	str r1, [r0, #4]
	ldr r1, _080127B0 @ =0x80000010
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080127B4 @ =gUnknown_08177E28_gfx
	adds r4, r2, r1
	str r4, [r0]
	ldr r1, _080127B8 @ =0x06011000
	str r1, [r0, #4]
	ldr r1, _080127BC @ =0x80000400
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #0x10
	mov r2, sb
	strh r0, [r2]
	ldr r0, _080127C0 @ =0x0000C058
	strh r0, [r2, #2]
	movs r0, #0x84
	lsls r0, r0, #5
	strh r0, [r2, #4]
	adds r0, r5, #0
	adds r0, #0x8d
	mov r3, r8
	strb r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6]
	ldr r1, _080127C4 @ =gIORegisters
	adds r1, #0x4a
	ldr r0, _080127C8 @ =0x0000FDFF
	ldrh r2, [r1]
	ands r0, r2
	strh r0, [r1]
	strb r3, [r5, #0x18]
	strb r3, [r5, #0x19]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	strb r3, [r5, #0xb]
	b _080129F0
	.align 2, 0
_0801279C: .4byte gTestimony
_080127A0: .4byte gUnknown_08022F38
_080127A4: .4byte gUnknown_08177E28_pal
_080127A8: .4byte 0x040000D4
_080127AC: .4byte 0x05000220
_080127B0: .4byte 0x80000010
_080127B4: .4byte gUnknown_08177E28_gfx
_080127B8: .4byte 0x06011000
_080127BC: .4byte 0x80000400
_080127C0: .4byte 0x0000C058
_080127C4: .4byte gIORegisters
_080127C8: .4byte 0x0000FDFF
_080127CC:
	ldrb r0, [r5, #0xb]
	cmp r0, #7
	bls _080127EA
	movs r0, #3
	movs r1, #1
	movs r2, #6
	movs r3, #0x1f
	bl StartHardwareBlend
	ldrb r0, [r5, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xb]
	b _080127EE
_080127EA:
	adds r0, #1
	strb r0, [r5, #0xb]
_080127EE:
	adds r6, r5, #0
	adds r6, #0x92
	b _080129F0
_080127F4:
	ldrb r0, [r5, #0xb]
	cmp r0, #0x37
	bhi _080127FC
	b _080129D8
_080127FC:
	ldrb r1, [r4, #0xc]
	movs r3, #8
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _0801283C
	movs r0, #0x80
	lsls r0, r0, #2
	mov r3, sb
	strh r0, [r3]
	movs r0, #0xf7
	ldrb r1, [r4, #0xc]
	ands r0, r1
	strb r0, [r4, #0xc]
	adds r0, r5, #0
	adds r0, #0xb2
	ldrb r0, [r0]
	ldrb r1, [r6, #0xe]
	bl sub_8016D8C
	movs r2, #0x91
	lsls r2, r2, #2
	adds r1, r5, r2
	strb r0, [r1]
	ldr r0, _08012838 @ =0x00000A04
	str r0, [r5, #8]
	b _08012A8A
	.align 2, 0
_08012838: .4byte 0x00000A04
_0801283C:
	movs r0, #0x10
	mov r8, r0
	ands r0, r1
	cmp r0, #0
	beq _080128E4
	movs r0, #0xef
	ands r0, r1
	strb r0, [r4, #0xc]
	ldr r0, _080128B4 @ =gMain
	ldr r1, _080128B8 @ =0x0000024A
	adds r0, r0, r1
	strb r2, [r0]
	movs r2, #0x91
	lsls r2, r2, #2
	adds r6, r5, r2
	movs r1, #0
	ldrsb r1, [r6, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r3, #0xd2
	lsls r3, r3, #1
	adds r0, r0, r3
	adds r0, r5, r0
	ldr r1, [r4, #0x14]
	ldrb r4, [r4, #0xd]
	adds r1, r4, r1
	ldrb r1, [r1]
	bl sub_8016DCC
	adds r3, r0, #0
	cmp r3, #0
	blt _080128BC
	movs r1, #0
	ldrsb r1, [r6, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r5, r0
	lsls r1, r3, #1
	adds r1, r1, r0
	movs r3, #0xe2
	lsls r3, r3, #1
	adds r0, r5, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r3, #0x12
	adds r2, r2, r3
	strh r0, [r2]
	movs r1, #0
	ldrsb r1, [r6, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r5, r0
	adds r0, r0, r3
	ldrh r0, [r0]
	bl ChangeScriptSection
	b _080128D4
	.align 2, 0
_080128B4: .4byte gMain
_080128B8: .4byte 0x0000024A
_080128BC:
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r5, r1
	movs r0, #0xda
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl ChangeScriptSection
_080128D4:
	movs r0, #1
	bl SlideTextbox
	ldr r0, _080128E0 @ =0x00030A04
	str r0, [r5, #8]
	b _08012A8A
	.align 2, 0
_080128E0: .4byte 0x00030A04
_080128E4:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08012920
	ldr r0, _08012918 @ =gIORegisters
	adds r0, #0x4a
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	ldrh r3, [r0]
	orrs r1, r3
	strh r1, [r0]
	movs r0, #1
	strb r0, [r5, #0x18]
	strb r0, [r5, #0x19]
	movs r0, #0xdf
	ldrb r1, [r4, #0xc]
	ands r0, r1
	strb r0, [r4, #0xc]
	ldr r0, _0801291C @ =gScriptContext
	ldrh r4, [r0, #0x1e]
	adds r0, r4, #0
	bl ChangeScriptSection
	b _080129C4
	.align 2, 0
_08012918: .4byte gIORegisters
_0801291C: .4byte gScriptContext
_08012920:
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #2
	mov r0, sb
	strh r1, [r0]
	ldr r0, _0801295C @ =gInvestigation
	strb r2, [r0, #0x10]
	strb r3, [r0, #0x11]
	ldr r0, _08012960 @ =gIORegisters
	adds r0, #0x4a
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	movs r0, #1
	strb r0, [r5, #0x18]
	strb r0, [r5, #0x19]
	ldr r6, _08012964 @ =gScriptContext
	ldrh r0, [r6, #0x1e]
	ldr r1, [r4, #0x14]
	ldrb r4, [r4, #0xd]
	adds r1, r4, r1
	ldrb r1, [r1]
	bl sub_80131F0
	adds r2, r0, #0
	cmp r2, #0
	beq _08012968
	bl ChangeScriptSection
	b _080129C4
	.align 2, 0
_0801295C: .4byte gInvestigation
_08012960: .4byte gIORegisters
_08012964: .4byte gScriptContext
_08012968:
	ldrh r4, [r6, #0x1e]
	mov r0, r8
	ldrh r6, [r6]
	ands r0, r6
	cmp r0, #0
	beq _0801297E
	adds r4, #1
	adds r0, r4, #0
	bl ChangeScriptSection
	b _080129BA
_0801297E:
	bl Random
	adds r2, r0, #0
	ands r2, r7
	cmp r2, #1
	beq _080129A0
	cmp r2, #1
	blo _08012998
	cmp r2, #2
	beq _080129A8
	cmp r2, #3
	beq _080129B0
	b _080129B6
_08012998:
	movs r0, #0x1f
	bl ChangeScriptSection
	b _080129B6
_080129A0:
	movs r0, #0x20
	bl ChangeScriptSection
	b _080129B6
_080129A8:
	movs r0, #0x21
	bl ChangeScriptSection
	b _080129B6
_080129B0:
	movs r0, #0x22
	bl ChangeScriptSection
_080129B6:
	ldr r0, _080129CC @ =gScriptContext
	strh r4, [r0, #0x20]
_080129BA:
	ldr r1, _080129CC @ =gScriptContext
	ldr r0, _080129D0 @ =0x0000FFEF
	ldrh r3, [r1]
	ands r0, r3
	strh r0, [r1]
_080129C4:
	ldr r1, _080129D4 @ =gMain+0x8
	ldr r0, [r5, #0xc]
	str r0, [r1]
	b _08012A8A
	.align 2, 0
_080129CC: .4byte gScriptContext
_080129D0: .4byte 0x0000FFEF
_080129D4: .4byte gMain+0x8
_080129D8:
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r1, r5, #0
	adds r1, #0x8d
	ldrb r0, [r1]
	adds r0, #0xc
	strb r0, [r1]
	adds r1, #5
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	adds r6, r1, #0
_080129F0:
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #4
	bgt _08012A02
	movs r0, #0x80
	lsls r0, r0, #2
	mov r2, sb
	strh r0, [r2]
	b _08012A7C
_08012A02:
	movs r3, #0
	ldrsh r0, [r6, r3]
	bl fix_inverse
	adds r4, r0, #0
	ldr r0, _08012A98 @ =gSineTable
	mov r8, r0
	adds r6, r5, #0
	adds r6, #0x8d
	ldrb r0, [r6]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0
	bl fix_mul
	ldr r5, _08012A9C @ =gOamObjects
	strh r0, [r5, #6]
	ldrb r2, [r6]
	lsls r0, r2, #1
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0xe]
	ldrb r1, [r6]
	lsls r0, r1, #1
	add r0, r8
	ldrh r0, [r0]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x16]
	ldrb r0, [r6]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r4, #0
	bl fix_mul
	strh r0, [r5, #0x1e]
	movs r0, #0x88
	lsls r0, r0, #1
	mov r3, sb
	strh r0, [r3]
	ldr r0, _08012AA0 @ =0x0000C058
	strh r0, [r3, #2]
	movs r0, #0x84
	lsls r0, r0, #5
	strh r0, [r3, #4]
_08012A7C:
	ldr r4, _08012AA4 @ =gCourtRecord
	adds r0, r4, #0
	bl sub_8003FC4
	adds r0, r4, #0
	bl sub_8012D20
_08012A8A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012A98: .4byte gSineTable
_08012A9C: .4byte gOamObjects
_08012AA0: .4byte 0x0000C058
_08012AA4: .4byte gCourtRecord

	thumb_func_start sub_8012AA8
sub_8012AA8: @ 0x08012AA8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _08012B00 @ =gBG2MapBuffer
	movs r0, #0
	ldr r4, _08012B04 @ =0x000003FF
	ldr r1, _08012B08 @ =gIORegisters
	movs r3, #0
_08012AB6:
	strh r3, [r2]
	adds r0, #1
	adds r2, #2
	cmp r0, r4
	bls _08012AB6
	adds r1, #0x4a
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	movs r4, #0
	ldrh r2, [r1]
	orrs r0, r2
	strh r0, [r1]
	bl sub_8012C60
	adds r0, r5, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	bl sub_8012DDC
	ldrh r1, [r5, #0x28]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	movs r1, #4
	bl SetBGMVolume
	movs r0, #0xf
	bl PlaySE
	ldrb r0, [r5, #9]
	adds r0, #1
	strb r0, [r5, #9]
	strb r4, [r5, #0xa]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08012B00: .4byte gBG2MapBuffer
_08012B04: .4byte 0x000003FF
_08012B08: .4byte gIORegisters

	thumb_func_start sub_8012B0C
sub_8012B0C: @ 0x08012B0C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl sub_8003FC4
	adds r0, r4, #0
	bl sub_8012E54
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08012B64
	ldr r1, _08012B6C @ =gScriptContext
	movs r0, #1
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08012B64
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _08012B46
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0x1e
	bl SetBGMVolume
	movs r0, #1
	strb r0, [r5, #0xa]
_08012B46:
	ldr r1, _08012B70 @ =gJoypad
	movs r0, #3
	ldrh r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _08012B64
	movs r0, #0x2b
	bl PlaySE
	movs r0, #3
	movs r1, #0xe
	bl sub_8003C14
	movs r0, #2
	strb r0, [r5, #9]
_08012B64:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08012B6C: .4byte gScriptContext
_08012B70: .4byte gJoypad

	thumb_func_start sub_8012B74
sub_8012B74: @ 0x08012B74
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl sub_8003FC4
	adds r0, r4, #0
	bl sub_8012E54
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08012BDE
	ldr r1, _08012BAC @ =gMain+0x8
	ldr r0, [r5, #0xc]
	str r0, [r1]
	subs r1, #8
	ldrb r0, [r1, #8]
	cmp r0, #4
	bne _08012BD4
	ldrb r1, [r1, #9]
	cmp r1, #6
	bne _08012BB4
	ldr r0, _08012BB0 @ =gInvestigation
	movs r1, #1
	bl sub_800EB24
	b _08012BD4
	.align 2, 0
_08012BAC: .4byte gMain+0x8
_08012BB0: .4byte gInvestigation
_08012BB4:
	ldrb r5, [r5, #9]
	cmp r5, #8
	bne _08012BC8
	ldr r0, _08012BC4 @ =gInvestigation
	movs r1, #4
	bl sub_800EB24
	b _08012BD4
	.align 2, 0
_08012BC4: .4byte gInvestigation
_08012BC8:
	cmp r1, #9
	bne _08012BD4
	ldr r0, _08012BE4 @ =gInvestigation
	movs r1, #8
	bl sub_800EB24
_08012BD4:
	ldr r0, _08012BE8 @ =gScriptContext
	movs r1, #2
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
_08012BDE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08012BE4: .4byte gInvestigation
_08012BE8: .4byte gScriptContext

	thumb_func_start sub_8012BEC
sub_8012BEC: @ 0x08012BEC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08012C3E
	movs r0, #0
	strb r0, [r4, #9]
	ldrb r0, [r4, #8]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #8]
	ldr r1, _08012C44 @ =0x040000D4
	ldr r0, _08012C48 @ =gUnknown_08023418
	ldrb r2, [r4, #8]
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #5
	ldr r3, _08012C4C @ =gGfx4bppTestimonyArrows
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _08012C50 @ =0x06013400
	str r0, [r1, #4]
	ldr r2, _08012C54 @ =0x80000040
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08012C58 @ =gUnknown_0802341C
	ldrb r4, [r4, #8]
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _08012C5C @ =0x06013480
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
_08012C3E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012C44: .4byte 0x040000D4
_08012C48: .4byte gUnknown_08023418
_08012C4C: .4byte gGfx4bppTestimonyArrows
_08012C50: .4byte 0x06013400
_08012C54: .4byte 0x80000040
_08012C58: .4byte gUnknown_0802341C
_08012C5C: .4byte 0x06013480

	thumb_func_start sub_8012C60
sub_8012C60: @ 0x08012C60
	push {lr}
	movs r0, #1
	movs r1, #0xc
	bl sub_8003C14
	ldr r0, _08012CD8 @ =0x040000D4
	ldr r1, _08012CDC @ =gGfx4bppTestimonyArrows
	str r1, [r0]
	ldr r1, _08012CE0 @ =0x06013400
	str r1, [r0, #4]
	ldr r2, _08012CE4 @ =0x80000040
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08012CE8 @ =gUnknown_0813DAFC
	str r1, [r0]
	ldr r1, _08012CEC @ =0x06013480
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08012CF0 @ =gUnknown_081410FC
	str r1, [r0]
	ldr r1, _08012CF4 @ =0x06013800
	str r1, [r0, #4]
	adds r2, #0xc0
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08012CF8 @ =gUnknown_081420FC
	str r1, [r0]
	ldr r1, _08012CFC @ =0x06013A00
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08012D00 @ =gUnknown_081422FC
	str r1, [r0]
	ldr r1, _08012D04 @ =0x06013500
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08012D08 @ =gUnknown_0814DA80
	str r1, [r0]
	ldr r1, _08012D0C @ =0x05000260
	str r1, [r0, #4]
	subs r2, #0xf0
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08012D10 @ =gUnknown_0814DBE0
	str r1, [r0]
	ldr r1, _08012D14 @ =0x05000280
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08012D18 @ =gUnknown_081378FC
	str r1, [r0]
	ldr r1, _08012D1C @ =0x05000240
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	pop {r0}
	bx r0
	.align 2, 0
_08012CD8: .4byte 0x040000D4
_08012CDC: .4byte gGfx4bppTestimonyArrows
_08012CE0: .4byte 0x06013400
_08012CE4: .4byte 0x80000040
_08012CE8: .4byte gUnknown_0813DAFC
_08012CEC: .4byte 0x06013480
_08012CF0: .4byte gUnknown_081410FC
_08012CF4: .4byte 0x06013800
_08012CF8: .4byte gUnknown_081420FC
_08012CFC: .4byte 0x06013A00
_08012D00: .4byte gUnknown_081422FC
_08012D04: .4byte 0x06013500
_08012D08: .4byte gUnknown_0814DA80
_08012D0C: .4byte 0x05000260
_08012D10: .4byte gUnknown_0814DBE0
_08012D14: .4byte 0x05000280
_08012D18: .4byte gUnknown_081378FC
_08012D1C: .4byte 0x05000240

	thumb_func_start sub_8012D20
sub_8012D20: @ 0x08012D20
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8012E54
	movs r0, #4
	ldrb r1, [r4, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _08012DA4
	adds r0, r4, #0
	bl sub_8012BEC
	ldr r1, _08012D44 @ =gOamObjects
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bls _08012D48
	movs r0, #0x30
	b _08012D4C
	.align 2, 0
_08012D44: .4byte gOamObjects
_08012D48:
	movs r0, #0x80
	lsls r0, r0, #2
_08012D4C:
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r1, #2]
	ldr r0, _08012D64 @ =0x000021A0
	strh r0, [r1, #4]
	adds r1, #8
	ldrb r4, [r4, #0xe]
	cmp r4, #1
	bls _08012D68
	movs r0, #0x30
	b _08012D6C
	.align 2, 0
_08012D64: .4byte 0x000021A0
_08012D68:
	movs r0, #0x80
	lsls r0, r0, #2
_08012D6C:
	strh r0, [r1]
	ldr r0, _08012D90 @ =0x000040E0
	strh r0, [r1, #2]
	ldr r0, _08012D94 @ =0x000021A4
	strh r0, [r1, #4]
	ldr r0, _08012D98 @ =gMain
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	beq _08012D86
	cmp r0, #4
	beq _08012D86
	cmp r0, #5
	bne _08012D9C
_08012D86:
	movs r0, #1
	bl sub_8012EE4
	b _08012DD6
	.align 2, 0
_08012D90: .4byte 0x000040E0
_08012D94: .4byte 0x000021A4
_08012D98: .4byte gMain
_08012D9C:
	movs r0, #1
	bl sub_8012F44
	b _08012DD6
_08012DA4:
	ldr r1, _08012DC8 @ =gOamObjects
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	strh r0, [r1, #8]
	ldr r0, _08012DCC @ =gMain
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	beq _08012DBE
	cmp r0, #4
	beq _08012DBE
	cmp r0, #5
	bne _08012DD0
_08012DBE:
	movs r0, #0
	bl sub_8012EE4
	b _08012DD6
	.align 2, 0
_08012DC8: .4byte gOamObjects
_08012DCC: .4byte gMain
_08012DD0:
	movs r0, #0
	bl sub_8012F44
_08012DD6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8012DDC
sub_8012DDC: @ 0x08012DDC
	push {r4, r5, lr}
	ldr r1, _08012E2C @ =gUnknown_08022F38
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r2, r1, #6
	adds r2, r2, r1
	lsls r2, r2, #5
	ldr r3, _08012E30 @ =gUnknown_08177E28_pal
	adds r1, r2, r3
	ldr r4, _08012E34 @ =0x040000D4
	str r1, [r4]
	ldr r1, _08012E38 @ =0x05000220
	str r1, [r4, #4]
	ldr r1, _08012E3C @ =0x80000010
	str r1, [r4, #8]
	ldr r1, [r4, #8]
	adds r3, #0x20
	adds r1, r2, r3
	str r1, [r4]
	ldr r1, _08012E40 @ =0x06015000
	str r1, [r4, #4]
	ldr r1, _08012E44 @ =0x80000400
	str r1, [r4, #8]
	ldr r1, [r4, #8]
	ldr r1, [r0]
	ldr r5, _08012E48 @ =gUnknown_0200AFC0
	adds r0, r1, #0
	adds r1, r5, #0
	bl LZ77UnCompWram
	str r5, [r4]
	ldr r0, _08012E4C @ =0x06013C00
	str r0, [r4, #4]
	ldr r0, _08012E50 @ =0x80000A00
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08012E2C: .4byte gUnknown_08022F38
_08012E30: .4byte gUnknown_08177E28_pal
_08012E34: .4byte 0x040000D4
_08012E38: .4byte 0x05000220
_08012E3C: .4byte 0x80000010
_08012E40: .4byte 0x06015000
_08012E44: .4byte 0x80000400
_08012E48: .4byte gUnknown_0200AFC0
_08012E4C: .4byte 0x06013C00
_08012E50: .4byte 0x80000A00

	thumb_func_start sub_8012E54
sub_8012E54: @ 0x08012E54
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r1, _08012EB8 @ =gOamObjects+0x110
	movs r0, #0x18
	strh r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #8
	strh r0, [r1, #2]
	ldrh r2, [r5, #4]
	adds r0, r2, r0
	strh r0, [r1, #2]
	movs r0, #0x94
	lsls r0, r0, #5
	strh r0, [r1, #4]
	adds r1, #8
	movs r3, #0
	movs r6, #0x18
	ldr r4, _08012EBC @ =0x000021E0
	ldr r2, _08012EC0 @ =0x00008048
_08012E7A:
	strh r6, [r1]
	strh r2, [r1, #2]
	ldrh r7, [r5, #4]
	adds r0, r7, r2
	strh r0, [r1, #2]
	strh r4, [r1, #4]
	adds r1, #8
	adds r4, #0x10
	adds r2, #0x20
	adds r3, #1
	cmp r3, #4
	bls _08012E7A
	movs r3, #0
	movs r6, #0x38
	ldr r4, _08012EC4 @ =0x00002230
	ldr r2, _08012EC0 @ =0x00008048
_08012E9A:
	strh r6, [r1]
	strh r2, [r1, #2]
	ldrh r7, [r5, #4]
	adds r0, r7, r2
	strh r0, [r1, #2]
	strh r4, [r1, #4]
	adds r1, #8
	adds r4, #0x10
	adds r2, #0x20
	adds r3, #1
	cmp r3, #4
	bls _08012E9A
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012EB8: .4byte gOamObjects+0x110
_08012EBC: .4byte 0x000021E0
_08012EC0: .4byte 0x00008048
_08012EC4: .4byte 0x00002230

	thumb_func_start sub_8012EC8
sub_8012EC8: @ 0x08012EC8
	ldr r1, _08012EE0 @ =gOamObjects+0x110
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, #8
	movs r2, #0
_08012ED4:
	strh r0, [r1]
	adds r1, #8
	adds r2, #1
	cmp r2, #9
	bls _08012ED4
	bx lr
	.align 2, 0
_08012EE0: .4byte gOamObjects+0x110

	thumb_func_start sub_8012EE4
sub_8012EE4: @ 0x08012EE4
	ldr r2, _08012F14 @ =gOamObjects+0x168
	cmp r0, #0
	beq _08012F34
	movs r0, #0x60
	strh r0, [r2]
	ldr r0, _08012F18 @ =0x000040A0
	strh r0, [r2, #2]
	ldr r0, _08012F1C @ =0x000041C8
	strh r0, [r2, #4]
	adds r2, #8
	ldr r1, _08012F20 @ =0x00004060
	strh r1, [r2]
	ldr r0, _08012F24 @ =0x000080B0
	strh r0, [r2, #2]
	ldr r0, _08012F28 @ =0x000041A8
	strh r0, [r2, #4]
	adds r2, #8
	strh r1, [r2]
	ldr r0, _08012F2C @ =0x000080D0
	strh r0, [r2, #2]
	ldr r0, _08012F30 @ =0x000041B0
	strh r0, [r2, #4]
	b _08012F40
	.align 2, 0
_08012F14: .4byte gOamObjects+0x168
_08012F18: .4byte 0x000040A0
_08012F1C: .4byte 0x000041C8
_08012F20: .4byte 0x00004060
_08012F24: .4byte 0x000080B0
_08012F28: .4byte 0x000041A8
_08012F2C: .4byte 0x000080D0
_08012F30: .4byte 0x000041B0
_08012F34:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
	adds r2, #8
	strh r0, [r2]
	strh r0, [r2, #8]
_08012F40:
	bx lr
	.align 2, 0

	thumb_func_start sub_8012F44
sub_8012F44: @ 0x08012F44
	ldr r3, _08012FA4 @ =gOamObjects+0x168
	cmp r0, #0
	bne _08012F4C
	b _08013060
_08012F4C:
	ldr r0, _08012FA8 @ =gMain
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08012FD0
	movs r2, #0x60
	strh r2, [r3]
	ldr r0, _08012FAC @ =0x0000403C
	strh r0, [r3, #2]
	ldr r0, _08012FB0 @ =0x000041C8
	strh r0, [r3, #4]
	adds r3, #8
	ldr r1, _08012FB4 @ =0x00004060
	strh r1, [r3]
	ldr r0, _08012FB8 @ =0x0000804C
	strh r0, [r3, #2]
	ldr r0, _08012FBC @ =0x000041A8
	strh r0, [r3, #4]
	adds r3, #8
	strh r1, [r3]
	ldr r0, _08012FC0 @ =0x0000806C
	strh r0, [r3, #2]
	ldr r0, _08012FC4 @ =0x000041B0
	strh r0, [r3, #4]
	adds r3, #0x50
	strh r2, [r3]
	subs r0, #0xe8
	strh r0, [r3, #2]
	adds r0, #0xf8
	strh r0, [r3, #4]
	adds r3, #8
	strh r1, [r3]
	ldr r0, _08012FC8 @ =0x000080D8
	strh r0, [r3, #2]
	ldr r0, _08012FCC @ =0x000041D0
	strh r0, [r3, #4]
	adds r3, #8
	movs r0, #0x80
	lsls r0, r0, #2
	b _08013078
	.align 2, 0
_08012FA4: .4byte gOamObjects+0x168
_08012FA8: .4byte gMain
_08012FAC: .4byte 0x0000403C
_08012FB0: .4byte 0x000041C8
_08012FB4: .4byte 0x00004060
_08012FB8: .4byte 0x0000804C
_08012FBC: .4byte 0x000041A8
_08012FC0: .4byte 0x0000806C
_08012FC4: .4byte 0x000041B0
_08012FC8: .4byte 0x000080D8
_08012FCC: .4byte 0x000041D0
_08012FD0:
	movs r2, #0x60
	strh r2, [r3]
	ldr r0, _08013028 @ =0x0000403C
	strh r0, [r3, #2]
	ldr r0, _0801302C @ =0x000041C8
	strh r0, [r3, #4]
	adds r3, #8
	ldr r1, _08013030 @ =0x00004060
	strh r1, [r3]
	ldr r0, _08013034 @ =0x0000804C
	strh r0, [r3, #2]
	ldr r0, _08013038 @ =0x000041A8
	strh r0, [r3, #4]
	adds r3, #8
	strh r1, [r3]
	ldr r0, _0801303C @ =0x0000806C
	strh r0, [r3, #2]
	ldr r0, _08013040 @ =0x000041B0
	strh r0, [r3, #4]
	adds r3, #0x50
	strh r2, [r3]
	ldr r0, _08013044 @ =0x0000408C
	strh r0, [r3, #2]
	ldr r0, _08013048 @ =0x000041C0
	strh r0, [r3, #4]
	adds r3, #8
	strh r1, [r3]
	ldr r0, _0801304C @ =0x0000809C
	strh r0, [r3, #2]
	ldr r0, _08013050 @ =0x000041D0
	strh r0, [r3, #4]
	adds r3, #8
	strh r2, [r3]
	ldr r0, _08013054 @ =0x000040C8
	strh r0, [r3, #2]
	adds r0, #0xfc
	strh r0, [r3, #4]
	adds r3, #8
	strh r1, [r3]
	ldr r0, _08013058 @ =0x000080D8
	strh r0, [r3, #2]
	ldr r0, _0801305C @ =0x000041D8
	strh r0, [r3, #4]
	b _0801307C
	.align 2, 0
_08013028: .4byte 0x0000403C
_0801302C: .4byte 0x000041C8
_08013030: .4byte 0x00004060
_08013034: .4byte 0x0000804C
_08013038: .4byte 0x000041A8
_0801303C: .4byte 0x0000806C
_08013040: .4byte 0x000041B0
_08013044: .4byte 0x0000408C
_08013048: .4byte 0x000041C0
_0801304C: .4byte 0x0000809C
_08013050: .4byte 0x000041D0
_08013054: .4byte 0x000040C8
_08013058: .4byte 0x000080D8
_0801305C: .4byte 0x000041D8
_08013060:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3]
	adds r3, #8
	strh r0, [r3]
	adds r3, #8
	strh r0, [r3]
	adds r3, #0x50
	strh r0, [r3]
	adds r3, #8
	strh r0, [r3]
	adds r3, #8
_08013078:
	strh r0, [r3]
	strh r0, [r3, #8]
_0801307C:
	bx lr
	.align 2, 0

	thumb_func_start sub_8013080
sub_8013080: @ 0x08013080
	ldr r0, _080130AC @ =gOamObjects+0x168
	movs r2, #0x90
	strh r2, [r0]
	ldr r1, _080130B0 @ =0x000040B8
	strh r1, [r0, #2]
	ldr r1, _080130B4 @ =0x000041C4
	strh r1, [r0, #4]
	adds r0, #8
	strh r2, [r0]
	subs r1, #0xfc
	strh r1, [r0, #2]
	ldr r1, _080130B8 @ =0x000041CC
	strh r1, [r0, #4]
	adds r0, #8
	ldr r1, _080130BC @ =0x00004090
	strh r1, [r0]
	ldr r1, _080130C0 @ =0x000080D8
	strh r1, [r0, #2]
	ldr r1, _080130C4 @ =0x000041D8
	strh r1, [r0, #4]
	bx lr
	.align 2, 0
_080130AC: .4byte gOamObjects+0x168
_080130B0: .4byte 0x000040B8
_080130B4: .4byte 0x000041C4
_080130B8: .4byte 0x000041CC
_080130BC: .4byte 0x00004090
_080130C0: .4byte 0x000080D8
_080130C4: .4byte 0x000041D8

	thumb_func_start FindEvidenceInCourtRecord
FindEvidenceInCourtRecord: @ 0x080130C8
	push {r4, lr}
	adds r4, r1, #0
	cmp r0, #0
	beq _080130E4
	ldr r3, _080130DC @ =gCourtRecord+0x38
	adds r0, r3, #0
	subs r0, #0x38
	ldrb r1, [r0, #0x11]
	b _080130EC
	.align 2, 0
_080130DC: .4byte gCourtRecord+0x38
_080130E0:
	adds r0, r2, #0
	b _08013104
_080130E4:
	ldr r3, _0801310C @ =gCourtRecord+0x18
	adds r0, r3, #0
	subs r0, #0x18
	ldrb r1, [r0, #0x10]
_080130EC:
	movs r2, #0
	cmp r2, r1
	bhs _08013100
_080130F2:
	ldrb r0, [r3]
	cmp r0, r4
	beq _080130E0
	adds r2, #1
	adds r3, #1
	cmp r2, r1
	blo _080130F2
_08013100:
	movs r0, #1
	rsbs r0, r0, #0
_08013104:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0801310C: .4byte gCourtRecord+0x18

	thumb_func_start FindFirstEmptySlotInCourtRecord
FindFirstEmptySlotInCourtRecord: @ 0x08013110
	ldr r2, _08013124 @ =gCourtRecord+0x18
	cmp r0, #0
	beq _08013118
	adds r2, #0x20
_08013118:
	movs r1, #0
_0801311A:
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _08013128
	adds r0, r1, #0
	b _08013134
	.align 2, 0
_08013124: .4byte gCourtRecord+0x18
_08013128:
	adds r1, #1
	adds r2, #1
	cmp r1, #0x1f
	bls _0801311A
	movs r0, #1
	rsbs r0, r0, #0
_08013134:
	bx lr
	.align 2, 0

	thumb_func_start SortCourtRecordAndSyncListCount
SortCourtRecordAndSyncListCount: @ 0x08013138
	push {r4, r5, r6, lr}
	sub sp, #4
	mov ip, r0
	ldr r4, _080131DC @ =gUnknown_0200AFC0
	ldr r1, _080131E0 @ =0x040000D4
	mov r3, ip
	adds r3, #0x38
	str r3, [r1]
	str r4, [r1, #4]
	ldr r0, _080131E4 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r2, sp
	ldr r5, _080131E8 @ =0x0000FFFF
	adds r0, r5, #0
	strh r0, [r2]
	str r2, [r1]
	str r3, [r1, #4]
	ldr r0, _080131EC @ =0x81000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	mov r6, ip
	strb r0, [r6, #0x11]
	movs r2, #0
_0801316A:
	adds r0, r4, r2
	ldrb r1, [r0]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _08013184
	mov r5, ip
	ldrb r5, [r5, #0x11]
	adds r0, r5, r3
	strb r1, [r0]
	mov r6, ip
	ldrb r0, [r6, #0x11]
	adds r0, #1
	strb r0, [r6, #0x11]
_08013184:
	adds r2, #1
	cmp r2, #0x1f
	bls _0801316A
	ldr r1, _080131E0 @ =0x040000D4
	mov r3, ip
	adds r3, #0x18
	str r3, [r1]
	str r4, [r1, #4]
	ldr r0, _080131E4 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r2, sp
	ldr r5, _080131E8 @ =0x0000FFFF
	adds r0, r5, #0
	strh r0, [r2]
	str r2, [r1]
	str r3, [r1, #4]
	ldr r0, _080131EC @ =0x81000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	mov r6, ip
	strb r0, [r6, #0x10]
	movs r2, #0
_080131B4:
	adds r0, r4, r2
	ldrb r1, [r0]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080131CE
	mov r5, ip
	ldrb r5, [r5, #0x10]
	adds r0, r5, r3
	strb r1, [r0]
	mov r6, ip
	ldrb r0, [r6, #0x10]
	adds r0, #1
	strb r0, [r6, #0x10]
_080131CE:
	adds r2, #1
	cmp r2, #0x1f
	bls _080131B4
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080131DC: .4byte gUnknown_0200AFC0
_080131E0: .4byte 0x040000D4
_080131E4: .4byte 0x80000010
_080131E8: .4byte 0x0000FFFF
_080131EC: .4byte 0x81000010

	thumb_func_start sub_80131F0
sub_80131F0: @ 0x080131F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r0, _0801323C @ =gUnknown_08111F6C
	ldr r1, _08013240 @ =gMain
	adds r1, #0xb3
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r4, [r1]
	ldr r0, _08013244 @ =0x0000FFFF
	ldrh r1, [r4]
	cmp r1, r0
	beq _0801325C
	ldr r5, _08013248 @ =gScriptContext+0x33
	mov r8, r0
_08013214:
	ldrb r0, [r4, #6]
	cmp r0, #0xff
	beq _08013226
	adds r1, r0, #0
	movs r0, #0
	bl GetFlag
	cmp r0, #0
	beq _08013254
_08013226:
	ldrh r0, [r4]
	cmp r0, r7
	bne _08013254
	ldrh r0, [r4, #2]
	cmp r0, r6
	bne _08013254
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _0801324C
	movs r0, #0
	b _0801324E
	.align 2, 0
_0801323C: .4byte gUnknown_08111F6C
_08013240: .4byte gMain
_08013244: .4byte 0x0000FFFF
_08013248: .4byte gScriptContext+0x33
_0801324C:
	movs r0, #1
_0801324E:
	strb r0, [r5]
	ldrh r0, [r4, #4]
	b _08013266
_08013254:
	adds r4, #8
	ldrh r0, [r4]
	cmp r0, r8
	bne _08013214
_0801325C:
	ldr r0, _08013270 @ =gScriptContext
	adds r0, #0x33
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
_08013266:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08013270: .4byte gScriptContext

	thumb_func_start sub_8013274
sub_8013274: @ 0x08013274
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	mov sb, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, _08013300 @ =gUnknown_08111FC4
	adds r0, #0xb3
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	ldrh r4, [r3, #8]
	ldrb r0, [r3, #4]
	cmp r0, #0xff
	beq _080132B8
	mov r0, ip
	adds r0, #0xb2
	adds r1, r0, #0
	ldrb r0, [r3]
	ldrb r2, [r1]
	cmp r0, r2
	beq _080132C6
_080132A8:
	adds r3, #0xc
	ldrb r0, [r3, #4]
	cmp r0, #0xff
	beq _080132B8
	ldrb r0, [r3]
	ldrb r2, [r1]
	cmp r0, r2
	bne _080132A8
_080132B8:
	mov r0, ip
	adds r0, #0xb2
	adds r1, r0, #0
	ldrb r0, [r3]
	ldrb r2, [r1]
	cmp r0, r2
	bne _08013312
_080132C6:
	ldr r0, _08013304 @ =gAnimation+0x52
	ldrb r7, [r0]
	adds r2, r1, #0
	ldrb r6, [r2]
	movs r5, #0x97
	lsls r5, r5, #2
	add r5, ip
_080132D4:
	ldrb r0, [r3, #3]
	cmp r7, r0
	bne _0801330A
	ldrb r1, [r3, #4]
	cmp r8, r1
	bne _0801330A
	ldrb r1, [r2]
	adds r0, r1, r5
	ldrb r1, [r3, #1]
	ldrb r0, [r0]
	cmp r0, r1
	beq _080132F0
	cmp r1, #0xff
	bne _0801330A
_080132F0:
	ldrb r0, [r3, #2]
	cmp sb, r0
	beq _080132FA
	cmp r0, #0xff
	bne _08013308
_080132FA:
	ldrh r0, [r3, #6]
	b _08013314
	.align 2, 0
_08013300: .4byte gUnknown_08111FC4
_08013304: .4byte gAnimation+0x52
_08013308:
	ldrh r4, [r3, #8]
_0801330A:
	adds r3, #0xc
	ldrb r0, [r3]
	cmp r0, r6
	beq _080132D4
_08013312:
	adds r0, r4, #0
_08013314:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start UpdateItemPlate
UpdateItemPlate: @ 0x08013320
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0801333C @ =gOamObjects+0x208
	adds r0, #0x8b
	ldrb r0, [r0]
	adds r2, r5, #0
	cmp r0, #6
	bls _08013332
	b _08013502
_08013332:
	lsls r0, r0, #2
	ldr r1, _08013340 @ =_08013344
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801333C: .4byte gOamObjects+0x208
_08013340: .4byte _08013344
_08013344: @ jump table
	.4byte _08013502 @ case 0
	.4byte _08013360 @ case 1
	.4byte _080133A6 @ case 2
	.4byte _080133EC @ case 3
	.4byte _0801342E @ case 4
	.4byte _080134A0 @ case 5
	.4byte _080134F4 @ case 6
_08013360:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
	ldr r1, _08013388 @ =0x040000D4
	str r2, [r1]
	ldr r0, _0801338C @ =0x07000208
	str r0, [r1, #4]
	ldr r0, _08013390 @ =0x80000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r4, #0
	adds r0, #0x8c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08013394
	adds r1, r4, #0
	adds r1, #0x90
	movs r0, #4
	b _0801339A
	.align 2, 0
_08013388: .4byte 0x040000D4
_0801338C: .4byte 0x07000208
_08013390: .4byte 0x80000004
_08013394:
	adds r1, r4, #0
	adds r1, #0x90
	movs r0, #6
_0801339A:
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x8b
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080133A6:
	adds r0, r4, #0
	bl sub_8013730
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r0, [r0]
	cmp r0, #2
	beq _080133B8
	b _08013502
_080133B8:
	ldr r3, _080133E8 @ =gBG1MapBuffer
	adds r0, r3, #0
	adds r0, #0x42
	movs r2, #0
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x3e
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	subs r0, #0xc
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r0, #0x42
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x8b
	strb r2, [r0]
	b _08013502
	.align 2, 0
_080133E8: .4byte gBG1MapBuffer
_080133EC:
	adds r0, r4, #0
	bl sub_8013508
	adds r0, r4, #0
	adds r0, #0x8c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801340C
	ldr r0, _08013408 @ =0x0000C010
	strh r0, [r5, #2]
	adds r1, r4, #0
	adds r1, #0x90
	movs r0, #3
	b _08013416
	.align 2, 0
_08013408: .4byte 0x0000C010
_0801340C:
	ldr r0, _0801343C @ =0x0000C0A0
	strh r0, [r5, #2]
	adds r1, r4, #0
	adds r1, #0x90
	movs r0, #5
_08013416:
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
	movs r0, #0x84
	lsls r0, r0, #5
	strh r0, [r5, #4]
	adds r1, r4, #0
	adds r1, #0x8b
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0801342E:
	ldrb r0, [r4, #8]
	cmp r0, #0xa
	bne _08013440
	adds r1, r4, #0
	adds r1, #0x8b
	movs r0, #6
	b _08013500
	.align 2, 0
_0801343C: .4byte 0x0000C0A0
_08013440:
	adds r0, r4, #0
	bl sub_8013730
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r0, [r0]
	cmp r0, #1
	bne _08013454
	movs r0, #0x10
	strh r0, [r5]
_08013454:
	ldrb r2, [r4, #8]
	cmp r2, #6
	bls _08013502
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
	ldr r1, _0801348C @ =0x040000D4
	ldr r0, _08013490 @ =gOamObjects+0x208
	str r0, [r1]
	ldr r0, _08013494 @ =0x07000208
	str r0, [r1, #4]
	ldr r0, _08013498 @ =0x80000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0801349C @ =gBG1MapBuffer
	adds r1, r4, #0
	adds r1, #0x8b
	movs r3, #0
	movs r0, #0xb0
	lsls r0, r0, #1
_0801347C:
	strh r3, [r2]
	subs r0, #1
	adds r2, #2
	cmp r0, #0
	bne _0801347C
	ldrb r0, [r1]
	adds r0, #1
	b _08013500
	.align 2, 0
_0801348C: .4byte 0x040000D4
_08013490: .4byte gOamObjects+0x208
_08013494: .4byte 0x07000208
_08013498: .4byte 0x80000004
_0801349C: .4byte gBG1MapBuffer
_080134A0:
	ldrb r0, [r4, #8]
	cmp r0, #6
	bhi _08013502
	adds r0, r4, #0
	bl sub_8013508
	movs r1, #0
	movs r0, #0x10
	strh r0, [r5]
	adds r0, r4, #0
	adds r0, #0x8c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080134C4
	ldr r0, _080134C0 @ =0x0000C010
	b _080134C6
	.align 2, 0
_080134C0: .4byte 0x0000C010
_080134C4:
	ldr r0, _080134EC @ =0x0000C0A0
_080134C6:
	strh r0, [r5, #2]
	movs r0, #0x84
	lsls r0, r0, #5
	strh r0, [r5, #4]
	ldr r0, _080134F0 @ =gIORegisters
	adds r0, #0x4a
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_8013730
	adds r1, r4, #0
	adds r1, #0x8b
	movs r0, #4
	b _08013500
	.align 2, 0
_080134EC: .4byte 0x0000C0A0
_080134F0: .4byte gIORegisters
_080134F4:
	ldrb r0, [r4, #8]
	cmp r0, #0xa
	beq _08013502
	adds r1, r4, #0
	adds r1, #0x8b
	movs r0, #5
_08013500:
	strb r0, [r1]
_08013502:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8013508
sub_8013508: @ 0x08013508
	ldr r1, _08013540 @ =gUnknown_08022F38
	adds r0, #0x8a
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r2, r1, #6
	adds r2, r2, r1
	lsls r2, r2, #5
	ldr r3, _08013544 @ =gUnknown_08177E28_pal
	adds r1, r2, r3
	ldr r0, _08013548 @ =0x040000D4
	str r1, [r0]
	ldr r1, _0801354C @ =0x05000220
	str r1, [r0, #4]
	ldr r1, _08013550 @ =0x80000010
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r3, #0x20
	adds r1, r2, r3
	str r1, [r0]
	ldr r1, _08013554 @ =0x06011000
	str r1, [r0, #4]
	ldr r1, _08013558 @ =0x80000400
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
_08013540: .4byte gUnknown_08022F38
_08013544: .4byte gUnknown_08177E28_pal
_08013548: .4byte 0x040000D4
_0801354C: .4byte 0x05000220
_08013550: .4byte 0x80000010
_08013554: .4byte 0x06011000
_08013558: .4byte 0x80000400

	thumb_func_start sub_801355C
sub_801355C: @ 0x0801355C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r4, _08013648 @ =gBG1MapBuffer+0x42
	adds r4, #2
	movs r2, #0
	adds r3, r7, #0
	adds r3, #0x8e
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, #1
	ldr r1, _08013648 @ =gBG1MapBuffer+0x42
	mov r8, r1
	cmp r2, r0
	bhs _080135B4
	adds r6, r3, #0
	movs r0, #0x20
	mov ip, r0
_08013582:
	movs r1, #0
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r5, r2, #1
	cmp r1, r0
	bhs _0801359E
	movs r2, #0x38
_08013590:
	strh r2, [r4]
	adds r4, #2
	adds r1, #1
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r1, r0
	blo _08013590
_0801359E:
	movs r1, #0
	ldrsb r1, [r6, r1]
	mov r2, ip
	subs r0, r2, r1
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r2, r5, #0
	adds r3, r6, #0
	adds r1, #1
	cmp r2, r1
	blo _08013582
_080135B4:
	mov r4, r8
	movs r0, #0x30
	strh r0, [r4]
	adds r4, #2
	movs r2, #0
	adds r1, r7, #0
	adds r1, #0x8e
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r3, r1, #0
	cmp r2, r0
	bhs _080135DC
	movs r5, #0x31
_080135CE:
	strh r5, [r4]
	adds r4, #2
	adds r2, #1
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blo _080135CE
_080135DC:
	movs r0, #0x32
	strh r0, [r4]
	adds r5, r3, #0
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #6
	adds r0, #0x40
	mov r1, r8
	adds r4, r0, r1
	movs r0, #0x35
	strh r0, [r4]
	adds r4, #2
	movs r2, #0
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r2, r0
	bhs _0801360E
	movs r1, #0x36
_08013600:
	strh r1, [r4]
	adds r4, #2
	adds r2, #1
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r2, r0
	blo _08013600
_0801360E:
	movs r0, #0x37
	strh r0, [r4]
	mov r4, r8
	adds r4, #0x40
	movs r2, #0
	adds r1, r3, #0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	bhs _0801363E
	movs r5, #0x33
	movs r3, #0x34
_08013626:
	strh r5, [r4]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	strh r3, [r0, #2]
	adds r4, #0x40
	adds r2, #1
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blo _08013626
_0801363E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013648: .4byte gBG1MapBuffer+0x42

	thumb_func_start sub_801364C
sub_801364C: @ 0x0801364C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r4, _0801372C @ =gBG1MapBuffer+0x78
	subs r4, #2
	movs r2, #0
	adds r3, r7, #0
	adds r3, #0x8e
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, #1
	ldr r1, _0801372C @ =gBG1MapBuffer+0x78
	mov ip, r1
	cmp r2, r0
	bhs _0801369A
	adds r6, r3, #0
_0801366A:
	movs r1, #0
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r5, r2, #1
	cmp r1, r0
	bhs _08013686
	movs r2, #0x38
_08013678:
	strh r2, [r4]
	subs r4, #2
	adds r1, #1
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r1, r0
	blo _08013678
_08013686:
	movs r1, #0
	ldrsb r1, [r6, r1]
	lsls r0, r1, #1
	adds r0, #0x40
	adds r4, r4, r0
	adds r2, r5, #0
	adds r3, r6, #0
	adds r1, #1
	cmp r2, r1
	blo _0801366A
_0801369A:
	mov r4, ip
	movs r0, #0x32
	strh r0, [r4]
	subs r4, #2
	movs r2, #0
	adds r1, r7, #0
	adds r1, #0x8e
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r3, r1, #0
	cmp r2, r0
	bhs _080136C2
	movs r5, #0x31
_080136B4:
	strh r5, [r4]
	subs r4, #2
	adds r2, #1
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blo _080136B4
_080136C2:
	movs r0, #0x30
	strh r0, [r4]
	adds r5, r3, #0
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #6
	adds r0, #0x40
	mov r1, ip
	adds r4, r0, r1
	movs r0, #0x37
	strh r0, [r4]
	subs r4, #2
	movs r2, #0
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r2, r0
	bhs _080136F4
	movs r1, #0x36
_080136E6:
	strh r1, [r4]
	subs r4, #2
	adds r2, #1
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r2, r0
	blo _080136E6
_080136F4:
	movs r0, #0x35
	strh r0, [r4]
	mov r4, ip
	adds r4, #0x40
	movs r2, #0
	adds r1, r3, #0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	bhs _08013726
	movs r5, #0x34
	movs r3, #0x33
_0801370C:
	strh r5, [r4]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #1
	subs r0, r4, r0
	subs r0, #2
	strh r3, [r0]
	adds r4, #0x40
	adds r2, #1
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blo _0801370C
_08013726:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801372C: .4byte gBG1MapBuffer+0x78

	thumb_func_start sub_8013730
sub_8013730: @ 0x08013730
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x90
	ldrb r0, [r0]
	cmp r0, #2
	bls _0801374E
	ldr r1, _08013764 @ =gBG1MapBuffer+0x40
	movs r0, #0
	ldr r3, _08013768 @ =0x0000013F
	movs r2, #0
_08013744:
	strh r2, [r1]
	adds r0, #1
	adds r1, #2
	cmp r0, r3
	bls _08013744
_0801374E:
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #6
	bhi _080137AC
	lsls r0, r1, #2
	ldr r1, _0801376C @ =_08013770
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08013764: .4byte gBG1MapBuffer+0x40
_08013768: .4byte 0x0000013F
_0801376C: .4byte _08013770
_08013770: @ jump table
	.4byte _080137AC @ case 0
	.4byte _0801378C @ case 1
	.4byte _080137AC @ case 2
	.4byte _0801379E @ case 3
	.4byte _0801379E @ case 4
	.4byte _080137A6 @ case 5
	.4byte _080137A6 @ case 6
_0801378C:
	adds r0, r4, #0
	adds r0, #0x8c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801379E
	adds r0, r4, #0
	bl sub_801364C
	b _080137AC
_0801379E:
	adds r0, r4, #0
	bl sub_801355C
	b _080137AC
_080137A6:
	adds r0, r4, #0
	bl sub_801364C
_080137AC:
	adds r1, r4, #0
	adds r1, #0x8f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080137FE
	movs r0, #0
	strb r0, [r1]
	adds r3, r5, #0
	ldrb r0, [r3]
	cmp r0, #4
	beq _080137CC
	cmp r0, #6
	bne _080137E6
_080137CC:
	adds r1, r4, #0
	adds r1, #0x8e
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _080137E0
	subs r0, r2, #1
	strb r0, [r1]
	b _080137FE
_080137E0:
	movs r0, #2
	strb r0, [r3]
	b _080137FE
_080137E6:
	adds r1, r4, #0
	adds r1, #0x8e
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #7
	bgt _080137FA
	adds r0, r2, #1
	strb r0, [r1]
	b _080137FE
_080137FA:
	movs r0, #1
	strb r0, [r5]
_080137FE:
	pop {r4, r5}
	pop {r0}
	bx r0
