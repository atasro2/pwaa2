	.include "asm/macros.inc"
	.syntax unified

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
