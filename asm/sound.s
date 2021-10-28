	.include "asm/macros.inc"
	.syntax unified

	thumb_func_start ResetSoundControl
ResetSoundControl: @ 0x08013804
	ldr r2, _08013830 @ =gMain
	adds r3, r2, #0
	adds r3, #0x22
	movs r1, #0
	movs r0, #1
	strb r0, [r3]
	movs r0, #0xa0
	lsls r0, r0, #4
	strh r0, [r2, #0x20]
	strh r0, [r2, #0x28]
	strh r1, [r2, #0x26]
	adds r3, #1
	movs r0, #0xfe
	strb r0, [r3]
	movs r3, #0xae
	lsls r3, r3, #2
	adds r0, r2, r3
	strh r1, [r0]
	adds r3, #2
	adds r0, r2, r3
	strh r1, [r0]
	bx lr
	.align 2, 0
_08013830: .4byte gMain

	thumb_func_start PlaySE
PlaySE: @ 0x08013834
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08013870 @ =gMain
	movs r1, #0x95
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801386A
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStart
	movs r1, #0xae
	lsls r1, r1, #2
	adds r0, r5, r1
	strh r4, [r0]
	adds r0, r4, #0
	bl sub_8013930
	cmp r0, #0
	beq _0801386A
	ldr r1, _08013874 @ =0x000002BA
	adds r0, r5, r1
	strh r4, [r0]
_0801386A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013870: .4byte gMain
_08013874: .4byte 0x000002BA

	thumb_func_start sub_8013878
sub_8013878: @ 0x08013878
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStop
	ldr r6, _080138A8 @ =gMain
	movs r1, #0xae
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r5, #0
	strh r5, [r0]
	adds r0, r4, #0
	bl sub_8013930
	cmp r0, #0
	beq _080138A0
	ldr r1, _080138AC @ =0x000002BA
	adds r0, r6, r1
	strh r5, [r0]
_080138A0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080138A8: .4byte gMain
_080138AC: .4byte 0x000002BA

	thumb_func_start sub_80138B0
sub_80138B0: @ 0x080138B0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, _080138EC @ =gMPlayTable
	ldr r0, _080138F0 @ =gSongTable
	lsls r2, r4, #3
	adds r2, r2, r0
	ldrh r5, [r2, #4]
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x10
	bl m4aMPlayFadeOut
	adds r0, r4, #0
	bl sub_8013930
	cmp r0, #0
	beq _080138E4
	ldr r0, _080138F4 @ =gMain
	ldr r1, _080138F8 @ =0x000002BA
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
_080138E4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080138EC: .4byte gMPlayTable
_080138F0: .4byte gSongTable
_080138F4: .4byte gMain
_080138F8: .4byte 0x000002BA

	thumb_func_start sub_80138FC
sub_80138FC: @ 0x080138FC
	push {r4, lr}
	adds r2, r1, #0
	ldr r3, _08013924 @ =gMPlayTable
	ldr r1, _08013928 @ =gSongTable
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r4, [r0, #4]
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	ldr r1, _0801392C @ =0x0000FFFF
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl m4aMPlayVolumeControl
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013924: .4byte gMPlayTable
_08013928: .4byte gSongTable
_0801392C: .4byte 0x0000FFFF

	thumb_func_start sub_8013930
sub_8013930: @ 0x08013930
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r2, _08013954 @ =gUnknown_081123D4
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08013964
	adds r4, r1, #0
	adds r1, r2, #0
_08013946:
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r3, r0
	bne _08013958
	movs r0, #1
	b _08013966
	.align 2, 0
_08013954: .4byte gUnknown_081123D4
_08013958:
	adds r1, #2
	adds r2, #2
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, r4
	bne _08013946
_08013964:
	movs r0, #0
_08013966:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_801396C
sub_801396C: @ 0x0801396C
	ldr r2, _0801398C @ =gMPlayTable
	ldr r1, _08013990 @ =gSongTable
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r0, [r1]
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _08013994
	movs r0, #1
	b _08013996
	.align 2, 0
_0801398C: .4byte gMPlayTable
_08013990: .4byte gSongTable
_08013994:
	movs r0, #0
_08013996:
	bx lr

	thumb_func_start sub_8013998
sub_8013998: @ 0x08013998
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, _080139C8 @ =gMain
	movs r1, #0x95
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080139E4
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #0x10
	ldrb r2, [r1]
	ands r0, r2
	adds r6, r1, #0
	cmp r0, #0
	beq _080139CC
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStart
	b _080139D4
	.align 2, 0
_080139C8: .4byte gMain
_080139CC:
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080139D4:
	adds r0, r4, #0
	adds r0, #0x23
	strb r5, [r0]
	movs r0, #0xa0
	lsls r0, r0, #4
	strh r0, [r4, #0x28]
	movs r0, #4
	strb r0, [r6]
_080139E4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start PauseBGM
PauseBGM: @ 0x080139EC
	push {r4, r5, lr}
	ldr r0, _08013A30 @ =gMain
	adds r4, r0, #0
	adds r4, #0x22
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08013A3C
	ldr r5, _08013A34 @ =gUnknown_03005F40
	adds r0, r5, #0
	bl m4aMPlayStop
	movs r1, #0xfb
	ldrb r0, [r4]
	ands r1, r0
	movs r2, #0
	movs r0, #2
	orrs r1, r0
	orrs r1, r2
	strb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08013A42
	movs r0, #1
	orrs r1, r0
	strb r1, [r4]
	ldr r1, _08013A38 @ =0x0000FFFF
	adds r0, r5, #0
	movs r2, #4
	bl m4aMPlayVolumeControl
	b _08013A42
	.align 2, 0
_08013A30: .4byte gMain
_08013A34: .4byte gUnknown_03005F40
_08013A38: .4byte 0x0000FFFF
_08013A3C:
	movs r0, #1
	orrs r0, r1
	strb r0, [r4]
_08013A42:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8013A48
sub_8013A48: @ 0x08013A48
	push {r4, r5, r6, lr}
	ldr r6, _08013A74 @ =gMain
	adds r5, r6, #0
	adds r5, #0x22
	movs r4, #1
	adds r0, r4, #0
	ldrb r1, [r5]
	ands r0, r1
	cmp r0, #0
	bne _08013A6C
	ldr r0, _08013A78 @ =gUnknown_03005F40
	bl m4aMPlayStop
	strb r4, [r5]
	adds r1, r6, #0
	adds r1, #0x23
	movs r0, #0xff
	strb r0, [r1]
_08013A6C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08013A74: .4byte gMain
_08013A78: .4byte gUnknown_03005F40

	thumb_func_start sub_8013A7C
sub_8013A7C: @ 0x08013A7C
	push {r4, lr}
	ldr r2, _08013ABC @ =gMain
	adds r4, r2, #0
	adds r4, #0x22
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08013ADE
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08013AD8
	adds r0, r2, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0xf0
	bne _08013AC0
	movs r0, #0x28
	ldrsh r4, [r2, r0]
	movs r0, #0x1e
	movs r1, #0xf0
	bl sub_8013B14
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	movs r1, #0x40
	bl sub_8013D04
	b _08013ADE
	.align 2, 0
_08013ABC: .4byte gMain
_08013AC0:
	ldr r0, _08013AD4 @ =gUnknown_03005F40
	bl m4aMPlayContinue
	movs r0, #0xfd
	ldrb r1, [r4]
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	b _08013ADC
	.align 2, 0
_08013AD4: .4byte gUnknown_03005F40
_08013AD8:
	movs r0, #0xfe
	ands r0, r1
_08013ADC:
	strb r0, [r4]
_08013ADE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8013AE4
sub_8013AE4: @ 0x08013AE4
	push {r4, lr}
	adds r1, r0, #0
	ldr r0, _08013B0C @ =gMain
	adds r4, r0, #0
	adds r4, #0x22
	movs r0, #4
	ldrb r2, [r4]
	ands r0, r2
	cmp r0, #0
	beq _08013B06
	ldr r0, _08013B10 @ =gUnknown_03005F40
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x10
	bl m4aMPlayFadeOutTemporarily
	movs r0, #0x14
	strb r0, [r4]
_08013B06:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013B0C: .4byte gMain
_08013B10: .4byte gUnknown_03005F40

	thumb_func_start sub_8013B14
sub_8013B14: @ 0x08013B14
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, _08013B68 @ =gMain
	movs r2, #0x95
	lsls r2, r2, #2
	adds r0, r4, r2
	ldr r0, [r0]
	movs r5, #2
	ands r0, r5
	cmp r0, #0
	bne _08013BEC
	adds r0, r4, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, r1
	bne _08013B70
	adds r3, r4, #0
	adds r3, #0x22
	ldrb r2, [r3]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08013B70
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	beq _08013BEC
	movs r0, #0xee
	ands r0, r2
	strb r0, [r3]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStart
	ldr r4, _08013B6C @ =gUnknown_03005F40
	adds r0, r4, #0
	bl m4aMPlayImmInit
	adds r0, r4, #0
	bl m4aMPlayStop
	b _08013BEC
	.align 2, 0
_08013B68: .4byte gMain
_08013B6C: .4byte gUnknown_03005F40
_08013B70:
	cmp r1, #0xff
	bne _08013BC2
	adds r5, r4, #0
	adds r5, #0x22
	ldrb r2, [r5]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08013B9E
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08013BEC
	movs r1, #0xfe
	ands r1, r2
	strb r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08013BEC
	bl sub_8013A7C
	b _08013BEC
_08013B9E:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08013BBC
	ldr r0, _08013BB8 @ =gUnknown_03005F40
	lsls r1, r6, #0xc
	lsrs r1, r1, #0x10
	bl m4aMPlayFadeIn
	movs r0, #4
	strb r0, [r5]
	b _08013BEC
	.align 2, 0
_08013BB8: .4byte gUnknown_03005F40
_08013BBC:
	bl sub_8013A7C
	b _08013BCE
_08013BC2:
	adds r0, r1, #0
	bl sub_8013998
	ldr r0, _08013BF4 @ =gUnknown_03005F40
	bl m4aMPlayImmInit
_08013BCE:
	cmp r6, #0
	beq _08013BEC
	movs r1, #0x20
	ldrsh r0, [r4, r1]
	adds r1, r6, #0
	bl __udivsi3
	adds r0, #1
	strh r0, [r4, #0x26]
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #0xc
	strb r0, [r1]
	movs r0, #0x28
	strh r0, [r4, #0x28]
_08013BEC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08013BF4: .4byte gUnknown_03005F40

	thumb_func_start UpdateBGMFade
UpdateBGMFade: @ 0x08013BF8
	push {r4, r5, r6, lr}
	ldr r2, _08013C2C @ =gMain
	adds r5, r2, #0
	adds r5, #0x22
	movs r4, #3
	ldrb r0, [r5]
	ands r4, r0
	cmp r4, #0
	bne _08013C78
	ldrh r1, [r2, #0x26]
	movs r3, #0x26
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _08013C6C
	ldrh r6, [r2, #0x28]
	adds r1, r1, r6
	strh r1, [r2, #0x28]
	cmp r0, #0
	ble _08013C30
	lsls r1, r1, #0x10
	ldrh r3, [r2, #0x20]
	lsls r0, r3, #0x10
	cmp r1, r0
	ble _08013C42
	b _08013C3A
	.align 2, 0
_08013C2C: .4byte gMain
_08013C30:
	lsls r1, r1, #0x10
	ldrh r3, [r2, #0x20]
	lsls r0, r3, #0x10
	cmp r1, r0
	bge _08013C42
_08013C3A:
	strh r3, [r2, #0x28]
	strh r4, [r2, #0x26]
	movs r0, #4
	strb r0, [r5]
_08013C42:
	ldr r4, _08013C64 @ =gUnknown_03005F40
	ldr r5, _08013C68 @ =0x0000FFFF
	movs r1, #0x28
	ldrsh r0, [r2, r1]
	movs r1, #0xa
	bl __divsi3
	adds r2, r0, #0
	movs r3, #0xfe
	lsls r3, r3, #1
	adds r0, r3, #0
	ands r2, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl m4aMPlayVolumeControl
	b _08013C78
	.align 2, 0
_08013C64: .4byte gUnknown_03005F40
_08013C68: .4byte 0x0000FFFF
_08013C6C:
	ldr r0, _08013C80 @ =gUnknown_03005F40
	ldr r0, [r0, #4]
	cmp r0, #0
	bge _08013C78
	movs r0, #2
	strb r0, [r5]
_08013C78:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08013C80: .4byte gUnknown_03005F40

	thumb_func_start sub_8013C84
sub_8013C84: @ 0x08013C84
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r4, #3
	bhi _08013C90
	movs r4, #4
_08013C90:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08013CB4
	ldr r0, _08013CF0 @ =gUnknown_03005F40
	ldr r1, _08013CF4 @ =0x0000FFFF
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r3, r2, #0
	adds r2, r4, #0
	ands r2, r3
	bl m4aMPlayVolumeControl
	ldr r1, _08013CF8 @ =gMain
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	strh r0, [r1, #0x28]
_08013CB4:
	movs r0, #2
	ands r0, r5
	cmp r0, #0
	beq _08013CCE
	ldr r0, _08013CFC @ =gUnknown_03005F80
	ldr r1, _08013CF4 @ =0x0000FFFF
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r3, r2, #0
	adds r2, r4, #0
	ands r2, r3
	bl m4aMPlayVolumeControl
_08013CCE:
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	beq _08013CE8
	ldr r0, _08013D00 @ =gUnknown_03005FC0
	ldr r1, _08013CF4 @ =0x0000FFFF
	movs r3, #0xfe
	lsls r3, r3, #1
	adds r2, r3, #0
	ands r4, r2
	adds r2, r4, #0
	bl m4aMPlayVolumeControl
_08013CE8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013CF0: .4byte gUnknown_03005F40
_08013CF4: .4byte 0x0000FFFF
_08013CF8: .4byte gMain
_08013CFC: .4byte gUnknown_03005F80
_08013D00: .4byte gUnknown_03005FC0

	thumb_func_start sub_8013D04
sub_8013D04: @ 0x08013D04
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r5, _08013D28 @ =gMain
	adds r1, r5, #0
	adds r1, #0x22
	movs r0, #3
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08013D78
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r4, r0
	bls _08013D2C
	adds r4, r0, #0
	b _08013D32
	.align 2, 0
_08013D28: .4byte gMain
_08013D2C:
	cmp r4, #3
	bhi _08013D32
	movs r4, #4
_08013D32:
	cmp r2, #0
	beq _08013D5E
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	strh r0, [r5, #0x20]
	movs r1, #0x20
	ldrsh r0, [r5, r1]
	movs r3, #0x28
	ldrsh r1, [r5, r3]
	subs r0, r0, r1
	adds r1, r2, #0
	bl __divsi3
	strh r0, [r5, #0x26]
	adds r1, r5, #0
	adds r1, #0x22
	movs r0, #8
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	b _08013D78
_08013D5E:
	ldr r0, _08013D80 @ =gUnknown_03005F40
	ldr r1, _08013D84 @ =0x0000FFFF
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r3, r2, #0
	adds r2, r4, #0
	ands r2, r3
	bl m4aMPlayVolumeControl
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	strh r0, [r5, #0x28]
_08013D78:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013D80: .4byte gUnknown_03005F40
_08013D84: .4byte 0x0000FFFF

	thumb_func_start sub_8013D88
sub_8013D88: @ 0x08013D88
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08013DA2
	ldr r0, _08013DD0 @ =gUnknown_03005F40
	ldr r1, _08013DD4 @ =0x0000FFFF
	lsls r2, r5, #0x18
	asrs r2, r2, #0x18
	bl m4aMPlayPanpotControl
_08013DA2:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08013DB6
	ldr r0, _08013DD8 @ =gUnknown_03005F80
	ldr r1, _08013DD4 @ =0x0000FFFF
	lsls r2, r5, #0x18
	asrs r2, r2, #0x18
	bl m4aMPlayPanpotControl
_08013DB6:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _08013DCA
	ldr r0, _08013DDC @ =gUnknown_03005FC0
	ldr r1, _08013DD4 @ =0x0000FFFF
	lsls r2, r5, #0x18
	asrs r2, r2, #0x18
	bl m4aMPlayPanpotControl
_08013DCA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013DD0: .4byte gUnknown_03005F40
_08013DD4: .4byte 0x0000FFFF
_08013DD8: .4byte gUnknown_03005F80
_08013DDC: .4byte gUnknown_03005FC0
