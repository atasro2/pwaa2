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
#include "constants/animation.h"
#include "constants/script.h"

extern u8 * gUnknown_081124D0[];


// case 4 opening spotlight code

bool32 sub_8017C94(void)
{
    int i;
    for(i = 0; i < 2; i++)
    {
        if(gMain.unk288[i].unk0 < 3)
            return FALSE;
    }
    return TRUE;
}

void sub_8017CB8(struct Main_288 * arg0, int arg1, struct AnimationListEntry * arg2)
{
    switch(arg0->unk0)
    {
        case 0: // _08017CF0
            if(arg1 == 0)
            {
                arg0->unk4 = Q_16_16(-64);
                arg0->unk8 = Q_16_16(Random() % DISPLAY_HEIGHT);
                arg0->unkC = Q_16_16(9.5);
                arg0->unk10 = Q_16_16(-2) + Q_16_16(Random() % 16) * 2 / 8;
            }
            else
            {
                arg0->unk4 = Q_16_16(DISPLAY_WIDTH + 64);
                arg0->unk8 = Q_16_16(Random() % (DISPLAY_WIDTH/2));
                arg0->unkC = Q_16_16(-9.5);
                arg0->unk10 = Q_16_16(-2) + Q_16_16(Random() % 16) * 2 / 8;
            }
            if(gMain.currentBG == 120)
            {
                arg0->unk8 += Q_16_16(DISPLAY_HEIGHT - gMain.Bg256_scroll_y);
                arg0->unk8 += Q_16_16(32);
            }
            arg0->unk0++;
            break;
        case 1: // _08017D78
            arg0->unk4 += arg0->unkC;
            arg0->unk8 += arg0->unk10;
            arg2->animationInfo.xOrigin = Q_16_16_TO_INT(arg0->unk4);
            arg2->animationInfo.yOrigin = Q_16_16_TO_INT(arg0->unk8);
            if(gMain.currentBG == 120)
                arg0->unk8 += Q_16_16(-1);
            if(arg1 == 0)
            {
                if(arg0->unk4 >= Q_16_16(DISPLAY_WIDTH + 64))
                {
                    arg0->unk0++;
                    arg0->unk1 = Random() % 256;
                }
            }
            else
            {
                if(arg0->unk4 <= Q_16_16(-64))
                {
                    arg0->unk0++;
                    arg0->unk1 = Random() % 256;
                }
            } 
            break;
        case 2: // _08017DDC
            if(gMain.unk2B0 == 1)
            {
                arg0->unk0 = 3;
                break;
            }

            arg2->animationInfo.xOrigin = DISPLAY_WIDTH + 64;
            if(arg0->unk1-- < 0)
                arg0->unk0 = 0;
            break;
        case 3: // _08017E0A
            if(sub_8017C94())
            {
                if(arg1 == 0)
                    arg0->unk4 = Q_16_16(-64);
                else
                    arg0->unk4 = Q_16_16(DISPLAY_WIDTH + 64);
                arg0->unk8 = Q_16_16(Random() % 80);
                arg0->unkC = (Q_16_16(128) - arg0->unk4) / 96;
                arg0->unk10 = (Q_16_16(60) - arg0->unk8) / 96;
                arg0->unk0++;
            }
            break;
        case 4: // _08017E5C
            arg0->unk4 += arg0->unkC;
            arg0->unk8 += arg0->unk10;
            arg2->animationInfo.xOrigin = Q_16_16_TO_INT(arg0->unk4);
            arg2->animationInfo.yOrigin = Q_16_16_TO_INT(arg0->unk8);
            
            if( arg2->animationInfo.xOrigin > 126
            && arg2->animationInfo.xOrigin <= 128
            && arg2->animationInfo.yOrigin > 58
            && arg2->animationInfo.yOrigin <= 60)
            {
                arg2->animationInfo.xOrigin = 128;
                arg2->animationInfo.yOrigin = 60;
                arg0->unk0++;
            }
            break;
        case 5: // _08017E94
            break;
    }
}

void sub_8017E9C(void)
{
    struct AnimationListEntry * anim = FindAnimationFromAnimId(0x8F);
    if(anim != NULL)
    {
        sub_8017CB8(&gMain.unk288[0], 0, anim);
        SetAnimationScale(anim, 0, Q_8_8(1.5));
    }
    anim = FindAnimationFromAnimId(0x90);
    if(anim != NULL)
    {
        sub_8017CB8(&gMain.unk288[1], 1, anim);
        SetAnimationScale(anim, 1, Q_8_8(1.5));
    }
}

void sub_8017EF0(void)
{
    DmaFill16(3, 0, &gMain.unk288[0], sizeof(gMain.unk288[0]));
    DmaFill16(3, 0, &gMain.unk288[1], sizeof(gMain.unk288[1]));
}

void sub_8017F2C(void)
{
    gMain.unk2B0 = 1;
}

// case 4 opening flower petal code

void sub_8017F40(struct Struct3006390 * arg0, int arg1)
{
    arg0->unk8 = Q_16_16(-16);
    arg0->unk4 = Q_16_16(Random() % 256 + 64);
    arg0->unkC = Q_16_16(-1) + Q_16_16((Random() % 16)) / 256;
    arg0->unk10 = Q_16_16(1) + Q_16_16((Random() % 24)) / 256;
    if(arg1 >= 8)
    {
        arg0->unkC /= 2;
        arg0->unk10 /= 2;
    }
    arg0->unk14 = Random() % 256;
    arg0->unk18 = Random() % 3;
}

void sub_8017FD4(struct Struct3006390 * arg0, int arg1)
{
    arg0->unk0 = arg1;
    arg0->unk22 = Random() % 256;
    sub_8017F40(arg0, arg1);
    arg0->anim = PlayAnimationAtCustomOrigin(0x7F + arg0->unk0, Q_16_16_TO_INT(arg0->unk4), Q_16_16_TO_INT(arg0->unk8));
}

void sub_8018010(struct Struct3006390 * arg0, int arg1)
{
    DestroyAnimation(arg0->anim);
}

void sub_801801C(struct Struct3006390 * arg0)
{
    struct AnimationListEntry * anim = FindAnimationFromAnimId(0x7F + arg0->unk0);
    if(anim == 0)
        return;
    
    if (arg0->unk22 <= 0)
    {
        arg0->unk4 += arg0->unkC;
        arg0->unk8 += arg0->unk10;
        if(gMain.unk0 % 2)
            arg0->unk4 += (arg0->unkC * _Sin((arg0->unk14 += arg0->unk18) % 256)) / 255;
        SetAnimationOriginCoords(arg0->anim, Q_16_16_TO_INT(arg0->unk4), Q_16_16_TO_INT(arg0->unk8));
        if (Q_16_16_TO_INT(arg0->unk8) >= 170)
            sub_8017F40(arg0, arg0->unk0);
    }
    else
    {
        arg0->unk22--;
    }
}

void sub_80180B4(void)
{
    int i;
    DmaFill16(3, 0, gUnknown_03006390, sizeof(gUnknown_03006390));
    for(i = 0; i < 16; i++)
       sub_8017FD4(&gUnknown_03006390[i], i); 
}

void sub_80180F8(void)
{
    int i;
    for(i = 0; i < 16; i++)
       sub_8018010(&gUnknown_03006390[i], i); 
}

void sub_8018118(void)
{
    int i;
    for(i = 0; i < 16; i++)
       sub_801801C(&gUnknown_03006390[i]); 
}