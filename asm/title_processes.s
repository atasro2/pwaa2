	.include "asm/macros.inc"
	.syntax unified

	thumb_func_start CapcomLogoProcess
CapcomLogoProcess: @ 0x0800A7A8
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

	thumb_func_start TitleScreenProcess
TitleScreenProcess: @ 0x0800A860
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
	bl LoadSaveData
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
	ldr r5, _0800A994 @ =gBGDecompBuffer
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
_0800A994: .4byte gBGDecompBuffer
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
