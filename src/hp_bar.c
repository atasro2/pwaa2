#include "global.h"
#include "animation.h"
#include "background.h"
#include "investigation.h"
#include "m4a.h"
#include "sound.h"
#include "script.h"
#include "graphics.h"
#include "court.h"
#include "case_data.h"
#include "case_intro.h"
#include "constants/animation.h"
#include "constants/script.h"

u16 gUnknown_08112520[15][16] = {
	{0x43f0, 0x2368, 0x02e0, 0x0260, 0x01c0, 0x01c0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x3bd2, 0x1f4b, 0x02c4, 0x0244, 0x01c4, 0x01c4, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x37b4, 0x1f2e, 0x06c8, 0x0648, 0x05c8, 0x01c4, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x2f96, 0x1f11, 0x0aad, 0x0a4d, 0x09cd, 0x05c8, 0x0000, 0x0000 ,0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x2b78, 0x1b15, 0x0eb1, 0x0e51, 0x0df1, 0x09cd, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x235a, 0x1af8, 0x1296, 0x1256, 0x11f6, 0x0df1, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x1f3c, 0x1adb, 0x169a, 0x165a, 0x15fa, 0x11f6, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x1b1f, 0x1adf, 0x1a9f, 0x1a5f, 0x1a1f, 0x15fa, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x1f3c, 0x1adb, 0x169a, 0x165a, 0x15fa, 0x11f6, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x235a, 0x1af8, 0x1296, 0x1256, 0x11f6, 0x0df1, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x2b78, 0x1b15, 0x0eb1, 0x0e51, 0x0df1, 0x09cd, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x2f96, 0x1f11, 0x0aad, 0x0a4d, 0x09cd, 0x05c8, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x37b4, 0x1f2e, 0x06c8, 0x0648, 0x05c8, 0x01c4, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x3bd2, 0x1f4b, 0x02c4, 0x0244, 0x01c4, 0x01c0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x43f0, 0x2368, 0x02e0, 0x0260, 0x01c0, 0x01c0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000}
};

u16 gUnknown_08112700[15][16] = {
	{0x7ffd, 0x7fb9, 0x7f97, 0x7f74, 0x7f51, 0x7f51, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x7bbb, 0x7b77, 0x7b55, 0x7b32, 0x7b0f, 0x7f51, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x7b99, 0x7b55, 0x7b33, 0x7b10, 0x7aed, 0x7f51, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x7b57, 0x7b13, 0x7af1, 0x7ace, 0x7aab, 0x7f51, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x7735, 0x76f1, 0x76cf, 0x76ac, 0x7689, 0x7f51, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x76f3, 0x76af, 0x768d, 0x766a, 0x7647, 0x7f51, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x76d1, 0x768d, 0x766b, 0x7648, 0x7625, 0x7f51, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x76af, 0x766b, 0x7649, 0x7626, 0x7603, 0x7f51, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x76d1, 0x768d, 0x766b, 0x7648, 0x7625, 0x7f51, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x76f3, 0x76af, 0x768d, 0x766a, 0x7647, 0x7f51, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x7735, 0x76f1, 0x76cf, 0x76ac, 0x7689, 0x7f51, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x7b57, 0x7b13, 0x7af1, 0x7ace, 0x7aab, 0x7f51, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x7b99, 0x7b55, 0x7b33, 0x7b10, 0x7aed, 0x7f51, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x7bbb, 0x7b77, 0x7b55, 0x7b32, 0x7b0f, 0x7f51, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
	{0x7ffd, 0x7fb9, 0x7f97, 0x7f74, 0x7f51, 0x7f51, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000},
};

void sub_8017178(void)
{
    DmaCopy16(3, gUnknown_081475FC, OBJ_VRAM0+0x3780, 0x180);
    DmaCopy16(3, gUnknown_0814E340, OBJ_PLTT+0x60, 0x20);
    DmaCopy16(3, gUnknown_0814E360, OBJ_PLTT+0x80, 0x20);
    DmaCopy16(3, gUnknown_0814757C, OBJ_VRAM0+0x2E00, 0x80);
    DmaCopy16(3, gUnknown_0814747C, OBJ_VRAM0+0x2E80, 0x100);
    DmaCopy16(3, gUnknown_081473FC, OBJ_VRAM0+0x2F80, 0x80);
}

void sub_801720C(int arg0, int arg1)
{
    struct OamAttrs * next = &gOamObjects[43];

    {
        u32 attr0;
        u32 attr1;
        u16 x = arg0 - 8;
        u16 y = arg1;
        struct OamAttrs * oam = next++;
        attr0 = y;
        attr0 &= 0xFF;
        oam->attr0 = attr0;
        attr1 = x;
        attr1 &= 0x1FF;
        attr1 |= 0x4000;
        oam->attr1 = attr1;
        oam->attr2 = 0x317C;
    }
    {
        u32 attr0;
        u32 attr1;
        u16 x = arg0 + 8;
        u16 y = arg1;
        struct OamAttrs * oam = next++;
        attr0 = y;
        attr0 &= 0xFF;
        attr0 |= 0x4000;
        oam->attr0 = attr0;
        attr1 = x;
        attr1 &= 0x1FF;
        attr1 |= 0x8000;
        oam->attr1 = attr1;
        oam->attr2 = 0x3174;
    }
    {
        u32 attr0;
        u32 attr1;
        u16 x = arg0 + 40;
        u16 y = arg1;
        struct OamAttrs * oam = next++;
        attr0 = y;
        attr0 &= 0xFF;
        attr0 |= 0x4000;
        oam->attr0 = attr0;
        attr1 = x;
        attr1 &= 0x1FF;
        attr1 |= 0x8000;
        oam->attr1 = attr1;
        oam->attr2 = 0x3174;
    }
    {
        u32 attr0;
        u32 attr1;
        u16 x = arg0 + 72;
        u16 y = arg1;
        struct OamAttrs * oam = next++;
        attr0 = y;
        attr0 &= 0xFF;
        oam->attr0 = attr0;
        attr1 = x;
        attr1 &= 0x1FF;
        attr1 |= 0x4000;
        oam->attr1 = attr1;
        oam->attr2 = 0x3170;
    }
}

NAKED u32 sub_80172B4(s16 arg0, s16 arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int arg7)
{
    asm_unified("	push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #0x18\n\
	adds r7, r2, #0\n\
	str r3, [sp, #8]\n\
	ldr r6, [sp, #0x3c]\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	str r0, [sp]\n\
	lsls r1, r1, #0x10\n\
	lsrs r1, r1, #0x10\n\
	str r1, [sp, #4]\n\
	cmp r7, #0\n\
	bge _080172D8\n\
	movs r7, #0\n\
_080172D8:\n\
	ldr r0, [sp, #0x38]\n\
	adds r0, r0, r6\n\
	lsls r0, r0, #3\n\
	ldr r5, _08017354 @ =gOamObjects\n\
	adds r0, r0, r5\n\
	mov sb, r0\n\
	movs r0, #0x80\n\
	lsls r0, r0, #1\n\
	mov sl, r0\n\
	ldr r4, _08017358 @ =gSineTable\n\
	ldr r1, _0801735C @ =gSineTable+0x80\n\
	movs r2, #0\n\
	ldrsh r0, [r1, r2]\n\
	mov r1, sl\n\
	bl fix_mul\n\
	strh r0, [r5, #6]\n\
	movs r1, #0\n\
	ldrsh r0, [r4, r1]\n\
	mov r1, sl\n\
	bl fix_mul\n\
	strh r0, [r5, #0xe]\n\
	ldrh r4, [r4]\n\
	rsbs r0, r4, #0\n\
	lsls r0, r0, #0x10\n\
	asrs r0, r0, #0x10\n\
	mov r1, sl\n\
	bl fix_mul\n\
	strh r0, [r5, #0x16]\n\
	ldr r2, _0801735C @ =gSineTable+0x80\n\
	movs r1, #0\n\
	ldrsh r0, [r2, r1]\n\
	mov r1, sl\n\
	bl fix_mul\n\
	strh r0, [r5, #0x1e]\n\
	subs r6, #1\n\
	cmp r6, #0\n\
	bge _0801732C\n\
	movs r6, #0\n\
_0801732C:\n\
	mov sl, r6\n\
	ldr r2, [sp, #8]\n\
	lsls r0, r2, #0x10\n\
	lsrs r5, r0, #0x10\n\
	ldr r1, [sp, #0x40]\n\
	lsls r0, r1, #0x10\n\
	lsrs r4, r0, #4\n\
	lsls r1, r6, #0x14\n\
	ldr r2, [sp]\n\
	lsls r0, r2, #0x10\n\
	adds r2, r1, r0\n\
	movs r3, #0xff\n\
	ldr r0, [sp, #4]\n\
	ands r3, r0\n\
	movs r0, #0xc0\n\
	lsls r0, r0, #2\n\
	orrs r3, r0\n\
	ldr r6, _08017360 @ =0x000001FF\n\
	b _0801738E\n\
	.align 2, 0\n\
_08017354: .4byte gOamObjects\n\
_08017358: .4byte gSineTable\n\
_0801735C: .4byte gSineTable+0x80\n\
_08017360: .4byte 0x000001FF\n\
_08017364:\n\
	lsrs r1, r2, #0x10\n\
	mov r0, sb\n\
	strh r3, [r0]\n\
	ands r1, r6\n\
	movs r0, #0x80\n\
	lsls r0, r0, #7\n\
	orrs r1, r0\n\
	mov r0, sb\n\
	strh r1, [r0, #2]\n\
	ldr r0, _08017484 @ =0x000003FF\n\
	ands r0, r5\n\
	orrs r0, r4\n\
	mov r1, sb\n\
	strh r0, [r1, #4]\n\
	movs r0, #8\n\
	add sb, r0\n\
	movs r1, #0x80\n\
	lsls r1, r1, #0xd\n\
	adds r2, r2, r1\n\
	movs r0, #1\n\
	add sl, r0\n\
_0801738E:\n\
	adds r0, r7, #0\n\
	cmp r7, #0\n\
	bge _08017396\n\
	adds r0, #0xf\n\
_08017396:\n\
	asrs r0, r0, #4\n\
	cmp sl, r0\n\
	blt _08017364\n\
	mov r1, sl\n\
	cmp r1, #4\n\
	bgt _08017470\n\
	lsls r0, r0, #4\n\
	subs r7, r7, r0\n\
	cmp r7, #0\n\
	beq _08017470\n\
	ldr r2, [sp, #0x44]\n\
	lsls r2, r2, #0x10\n\
	str r2, [sp, #0x10]\n\
	lsrs r0, r2, #0x10\n\
	str r0, [sp, #0xc]\n\
	lsls r0, r7, #0x14\n\
	asrs r0, r0, #0x10\n\
	bl fix_inverse\n\
	adds r5, r0, #0\n\
	ldr r1, _08017488 @ =gSineTable+0x80\n\
	movs r2, #0\n\
	ldrsh r0, [r1, r2]\n\
	lsls r5, r5, #0x10\n\
	asrs r5, r5, #0x10\n\
	adds r1, r5, #0\n\
	bl fix_mul\n\
	ldr r1, _0801748C @ =gOamObjects\n\
	mov r8, r1\n\
	ldr r2, [sp, #0xc]\n\
	lsls r1, r2, #5\n\
	add r1, r8\n\
	strh r0, [r1, #6]\n\
	ldr r1, _08017490 @ =gSineTable\n\
	movs r2, #0\n\
	ldrsh r0, [r1, r2]\n\
	movs r1, #0x80\n\
	lsls r1, r1, #1\n\
	bl fix_mul\n\
	ldr r1, [sp, #0xc]\n\
	lsls r4, r1, #2\n\
	adds r1, r4, #1\n\
	lsls r1, r1, #3\n\
	add r1, r8\n\
	strh r0, [r1, #6]\n\
	ldr r2, _08017490 @ =gSineTable\n\
	ldrh r2, [r2]\n\
	rsbs r0, r2, #0\n\
	lsls r0, r0, #0x10\n\
	asrs r0, r0, #0x10\n\
	adds r1, r5, #0\n\
	bl fix_mul\n\
	adds r1, r4, #2\n\
	lsls r1, r1, #3\n\
	add r1, r8\n\
	strh r0, [r1, #6]\n\
	ldr r1, _08017488 @ =gSineTable+0x80\n\
	movs r2, #0\n\
	ldrsh r0, [r1, r2]\n\
	movs r1, #0x80\n\
	lsls r1, r1, #1\n\
	bl fix_mul\n\
	adds r4, #3\n\
	lsls r4, r4, #3\n\
	add r4, r8\n\
	strh r0, [r4, #6]\n\
	mov r0, sl\n\
	lsls r1, r0, #4\n\
	movs r0, #0x10\n\
	subs r0, r0, r7\n\
	lsrs r0, r0, #1\n\
	subs r1, r1, r0\n\
	movs r0, #1\n\
	ands r7, r0\n\
	subs r1, r1, r7\n\
	ldr r2, [sp]\n\
	adds r1, r1, r2\n\
	ldr r0, [sp, #0x40]\n\
	lsls r3, r0, #0x10\n\
	movs r0, #0xff\n\
	ldr r2, [sp, #4]\n\
	ands r0, r2\n\
	movs r2, #0xc0\n\
	lsls r2, r2, #2\n\
	orrs r0, r2\n\
	mov r2, sb\n\
	strh r0, [r2]\n\
	lsls r1, r1, #0x17\n\
	lsrs r1, r1, #0x17\n\
	ldr r0, [sp, #0xc]\n\
	lsls r0, r0, #9\n\
	str r0, [sp, #0x14]\n\
	orrs r1, r0\n\
	movs r0, #0x80\n\
	lsls r0, r0, #7\n\
	orrs r1, r0\n\
	strh r1, [r2, #2]\n\
	ldr r1, [sp, #8]\n\
	lsls r0, r1, #0x16\n\
	lsrs r0, r0, #0x16\n\
	lsrs r3, r3, #4\n\
	orrs r0, r3\n\
	strh r0, [r2, #4]\n\
	movs r2, #1\n\
	add sl, r2\n\
_08017470:\n\
	mov r0, sl\n\
	add sp, #0x18\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
_08017484: .4byte 0x000003FF\n\
_08017488: .4byte gSineTable+0x80\n\
_0801748C: .4byte gOamObjects\n\
_08017490: .4byte gSineTable");
}

void sub_8017494(u16 pltt[][16], u16 slot)
{
    int interval = 4;
    if((gMain.unk0 % interval) == 0)
    {
        int index = (gMain.unk0 / interval) % 15;
        DmaCopy16(3, pltt[index], OBJ_PLTT + slot * 0x20, 0x20);
    }
}

void sub_80174E8(int arg0, int arg1)
{
    int unkTable1[12] = {-4, 4, 0, 8, 8, 6, -11, -8, 18, -2, 8, -8};
    int unkTable2[7] = {0, 9, 18, 27, 42, 51, 60};
    int i; // r8
    int rem = gMain.unk0 % unkTable2[6];
    for(i = 0; i < 6; i++) 
    {
        struct AnimationListEntry * animation;
        if(unkTable2[i] == rem || sub_80175C0() == 0)
        {
            animation = FindAnimationFromAnimId(58 + i % 3);
            if(animation == NULL)
            {
                animation = PlayAnimationAtCustomOrigin(58 + i % 3, arg0 + unkTable1[i * 2], arg1 + unkTable1[i * 2 + 1] + 8);
                SetAnimationScale(animation, 16 + i % 3, 256 + Random() % 256);
            }
        }
    }
}

int sub_80175C0(void)
{
    int count = 0;
    int i;
    for(i = 0; i < 3; i++)
    {
        if(FindAnimationFromAnimId(58 + i))
            count++;
    }
    return count;
}

void sub_80175E4(void)
{
    int xOffset = 0;
    int yOffset = 0;
    int temp;
    if(gMain.unk98 > gMain.unk9A)
    {
        sub_8017494(gUnknown_08112700, 7);
        xOffset = 0; // useless!
        yOffset = (gMain.unk0 / 2) % 2;
        temp = sub_80172B4(gMain.unk9E - 8 + xOffset, gMain.unkA0 - 8 + yOffset, gMain.unk9A, 444, 37, 0, 4, 20);
        sub_80172B4(gMain.unk9E - 8 + xOffset, gMain.unkA0 - 8 + yOffset, gMain.unk98, 444, 37, temp, 7, 21);
    }
    else if(gMain.unk98 < gMain.unk9A)
    {
        sub_80174E8(gMain.unk9E + gMain.unk9A, gMain.unkA0);
        sub_8017494(gUnknown_08112520, 7);
        xOffset = Random() % 2 - 2;
        yOffset = Random() % 3 - 4;
        temp = sub_80172B4(gMain.unk9E - 8 + xOffset, gMain.unkA0 - 8 + yOffset, gMain.unk98, 444, 37, 0, 4, 20);
        sub_80172B4(gMain.unk9E - 8 + xOffset, gMain.unkA0 - 8 + yOffset, gMain.unk9A, 444, 37, temp, 7, 21);
    }
    else if(gMain.unk9C > 0)
    {
        sub_8017494(gUnknown_08112520, 7);
        temp = sub_80172B4(gMain.unk9E - 8, gMain.unkA0 - 8, gMain.unk98 - gMain.unk9C, 444, 37, 0, 4, 20);
        sub_80172B4(gMain.unk9E - 8, gMain.unkA0 - 8, gMain.unk98, 444, 37, temp, 7, 21);
    }
    else 
    {
        sub_8017494(gUnknown_08112520, 7);
        sub_80172B4(gMain.unk9E - 8, gMain.unkA0 - 8, gMain.unk98, 444, 37, 0, 4, 20);
    }
    sub_801720C(gMain.unk9E + xOffset, gMain.unkA0 + yOffset);
}

void sub_8017864(void)
{
    int i;
    for(i = 0; i < 14; i++)
        gOamObjects[34+i].attr0 = SPRITE_ATTR0_CLEAR;
}

void sub_8017884(void)
{
    if(!(gMain.unk9E == 284 && gMain.unkA0 == 20))
    {
        if(gMain.process[GAME_PROCESS] >= 3 && gMain.process[GAME_PROCESS] <= 6)
        {
            sub_8017864();
            if(!(gScriptContext.flags & SCRIPT_FULLSCREEN)
            && gMain.unkA6)
            {
                sub_8017178();
                sub_80175E4();
            }
        }
    }
}

void sub_80178E0(void)
{
    gMain.unk9E = 284;
    gMain.unkA0 = 20;
    gMain.unkA6 = 1;
    gMain.unk9C = 0;
    sub_8017928(0);
}

void sub_8017910(void)
{
    gMain.unkB0 = 0x50;
    gMain.unk9A = 0x50;
    gMain.unk98 = 0x50;
}

void sub_8017928(u32 arg0)
{
    gMain.unk97 = 0;
    gMain.unkA2 = 0;
    gMain.unkA4 = 0;
    if(gMain.unk96 == 0)
        gMain.unk96 = arg0;
    else
        gMain.unkA4 = arg0;
}

void sub_8017950(void)
{
    if(gMain.unkA4 > 0)
        gMain.unk96 = gMain.unkA4;
    else
        gMain.unk96 = 0;
    gMain.unk97 = 0;
    gMain.unkA2 = 0;
    gMain.unkA4 = 0;
}

void sub_801798C(void)
{
    void * states[] = {
        &&_080179C0,
        &&_08017A10,
        &&_08017A6C,
        &&_08017AAC,
        &&_08017C54,
    };
    sub_8017884();
    sub_8017E9C();
    sub_8018118();
    goto *states[gMain.unk96];
_080179C0:
    gMain.unkA0 = 0x14;
    if(gMain.unk98 <= 0)
    {
        if(gMain.process[GAME_PROCESS] == 3 || gMain.process[GAME_PROCESS] == 5 || gMain.process[GAME_PROCESS] == 6 || gMain.process[GAME_PROCESS] == 5)
        {
            ChangeScriptSection(gCaseGameoverSections[gMain.scenarioIdx]);
            sub_8017928(4);
        }
    }
    return;
_08017A10:
    switch(gMain.unk97)
    {
        case 0:
            gMain.unk97++; // ????
        case 1:
            gMain.unk9E -= 4;
            if(gMain.process[GAME_PROCESS] == 4
            && gMain.process[GAME_PROCESS_STATE] == 10 
            && gMain.process[GAME_PROCESSUNK2] == 7)
            {
                if(gMain.unk9E <= 84)
                {
                    gMain.unk9E = 84;
                    sub_8017950();
                }
            }
            else
            {
                if(gMain.unk9E <= 156)
                {
                    gMain.unk9E = 156;
                    sub_8017950();
                }
            }
    }
    return;
_08017A6C:
    switch(gMain.unk97)
    {
        case 0:
            gMain.unk97++; // ????
        case 1:
            gMain.unk9E += 4;
            if(gMain.unk9E >= 284)
            {
                gMain.unk9E = 284;
                sub_8017950();
            }
    }
    return;
_08017AAC:
    switch(gMain.unk97)
    {
        case 0: // remove hp?
            if(gMain.unk9C < 0)
                PlaySE(156);
            else if(gMain.unk9C > 0)
                PlaySE(76);
            gMain.unk98 -= gMain.unk9C;
            if(gMain.unk98 < 0)
                gMain.unk98 = 0;
            if(gMain.unk98 > 80)
                gMain.unk98 = 80;
            gMain.unk288[0].unk4 = gMain.unk9C;
            gMain.unk9C = 0;
            gMain.unkA8 = gMain.unk9A << 0x10;
            gMain.unkAC = (gMain.unk98 - gMain.unk9A) << 0x10;
            if(gMain.unkAC <= 0)
                gMain.unkAC /= 40;
            else
                gMain.unkAC /= 100;
            gTestimony.unk4 = 40;
            gMain.advanceScriptContext = FALSE;
            gMain.unk97++;
            break;
        case 1:
        {
            gMain.unkA8 += gMain.unkAC;
            gMain.unk9A = gMain.unkA8 >> 0x10;
            if(gMain.unkAC <= 0)
            {
                if(gMain.unk9A < gMain.unk98)
                     gMain.unk9A = gMain.unk98;
            }
            else 
            {
                if(gMain.unk9A > gMain.unk98)
                    gMain.unk9A = gMain.unk98;
            }
            if(gTestimony.unk4 > 0)
                gTestimony.unk4--;
            if(gMain.unk98 == gMain.unk9A)
            {
                if(gTestimony.unk4 > 0)
                {
                    if(gMain.unkAC <= 0)
                        gMain.unk9A++;
                    else
                        gMain.unk9A--;
                }
                else 
                {
                    s32 temp = sub_80175C0(); 
                    if(temp == 0)
                    {
                        sub_8013878(76);
                        sub_8013878(156);
                        gMain.unkA2 = temp;
                        gMain.unk97++;
                    }
                }
            }
            break;
        }
        case 2:
            if(gMain.unkA2 < 30)
            {
                gMain.unkA2++;
                break;
            }
            gMain.unk9E += 4;
            if(gMain.unk9E >= 284)
            {
                gMain.unk9E = 284;
                sub_8017950();
                if(gMain.unk288[0].unk4 > 0)
                    gMain.advanceScriptContext = TRUE;
            }
    }
    return;
_08017C54:
    if(gMain.unk97 == 0)
    {
        gMain.unk97 = 1;
        gMain.unkA6 = 0;
    }
    return;
}

bool32 sub_8017C78(void)
{
    if(gMain.unk96 == 0 || gMain.unk96 == 4)
        return FALSE;
    return TRUE; 
}
