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

void loadHPBarGraphics(void)
{
    DmaCopy16(3, gGfxHPBarProgress, OBJ_VRAM0+0x3780, 0x180);
    DmaCopy16(3, gPalHPBarFrame, OBJ_PLTT+0x60, 0x20);
    DmaCopy16(3, gPalHPBarProgress, OBJ_PLTT+0x80, 0x20);
    DmaCopy16(3, gGfxHPBarFrame3, OBJ_VRAM0+0x2E00, 0x80);
    DmaCopy16(3, gGfxHPBarFrame2, OBJ_VRAM0+0x2E80, 0x100);
    DmaCopy16(3, gGfxHPBarFrame1, OBJ_VRAM0+0x2F80, 0x80);
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

// ! i am still not sure whether this inline is real or not but it appears on 
// the 2008 PC port of this code and is used like the function below soooo
// important thing is that it matches! 
static inline void SetHVScalingMatrix(u16 matrix, s16 horizontalScale, s16 verticalScale) {
    gOamObjects[matrix*4 + 0].attr3 = fix_mul(_Cos(0), horizontalScale);
    gOamObjects[matrix*4 + 1].attr3 = fix_mul(_Sin(0), verticalScale);
    gOamObjects[matrix*4 + 2].attr3 = fix_mul(-_Sin(0), horizontalScale);
    gOamObjects[matrix*4 + 3].attr3 = fix_mul(_Cos(0), verticalScale);
}

u32 sub_80172B4(s16 x, s16 y, int arg2, int tileId, int arg4, int arg5, int arg6, int arg7)
{
    struct OamAttrs * oam;
    s16 res;
    s16 scale;
    u32 temp;
    s32 i;
    if(arg2 < 0)
        arg2 = 0;
    oam = &gOamObjects[arg4 + arg5];
    SetHVScalingMatrix(0, 0x100, 0x100);
    
    arg5--;
    if(arg5 < 0)
        arg5 = 0;
        
    for(i = arg5; i < (arg2 / 16); i++)
    {
        temp = i * 16;
        {
            u32 attr0, attr1, attr2;
            u16 x2 = x + temp;
            u16 y2 = y;
            u16 tileId2 = tileId;
            u16 pal = arg6;

            oam->attr0 = y2;
            oam->attr0 &= 0xFF;
            attr0 = 0x300;
            oam->attr0 |= attr0;
            
            attr1 = x2 & 0x1FF;
            attr1 |= 0x4000;
            oam->attr1 = attr1;
            
            attr2 = tileId2;
            attr2 &= 0x3FF;
            oam->attr2 = attr2 | pal << 12;
        }
        oam++;
    }
    if(i <= 4) {
        temp = arg2 % 16;
        if(temp) {
            SetHVScalingMatrix(arg7, fix_inverse(temp*16), 0x100);            
            {
                u32 attr0, attr1, attr2;
                u16 x2;
                u16 y2;
                u16 tileId2;
                u16 palette;
                u16 matrix = arg7;
                x2 = i * 16 - (16 - temp) / 2 - temp % 2 + x;
                y2 = y;
                tileId2 = tileId;
                palette = arg6;

                attr0 = y2;
                attr0 &= 0xFF;
                attr0 |= 0x300;
                oam->attr0 = attr0;

                attr1 = x2;
                attr1 &= 0x1FF;
                attr1 |= matrix << 9;
                attr1 |= 0x4000;
                oam->attr1 = attr1;

                attr2 = tileId2;
                attr2 &= 0x3FF;
                attr2 |= palette << 12;
                oam->attr2 = attr2;
            }
            i++;
        }
    }
    return i;
}

void loadHPBarPaletteIntoSlotOnIntervalByInterval(u16 pltt[][16], u16 slot)
{
    int interval = 4;
    if((gMain.frameCounter % interval) == 0)
    {
        int index = (gMain.frameCounter / interval) % 15;
        DmaCopy16(3, pltt[index], OBJ_PLTT + slot * 0x20, 0x20);
    }
}

void sub_80174E8(int arg0, int arg1)
{
    int smokeOffsetPairs[12] = {-4, 4, 0, 8, 8, 6, -11, -8, 18, -2, 8, -8};
    int smokePlayFrameTimes[7] = {0, 9, 18, 27, 42, 51, 60}; // hardcoded for 60Hz refresh!
    int i; // r8
    int currentFrameInSecond = gMain.frameCounter % smokePlayFrameTimes[6];
    for(i = 0; i < 6; i++) 
    {
        struct AnimationListEntry * animation;
        if(smokePlayFrameTimes[i] == currentFrameInSecond || findPlayingHPBarSmokeAnimations() == 0)
        {
            animation = FindAnimationFromAnimId(58 + i % 3);
            if(animation == NULL)
            {
                animation = PlayAnimationAtCustomOrigin(58 + i % 3, arg0 + smokeOffsetPairs[i * 2], arg1 + smokeOffsetPairs[i * 2 + 1] + 8);
                SetAnimationScale(animation, 16 + i % 3, 256 + Random() % 256);
            }
        }
    }
}

int findPlayingHPBarSmokeAnimations(void)
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
    if(gMain.hpBar_value > gMain.hpBar_display_value)
    {
        loadHPBarPaletteIntoSlotOnIntervalByInterval(gUnknown_08112700, 7);
        xOffset = 0; // useless!
        yOffset = (gMain.frameCounter / 2) % 2;
        temp = sub_80172B4(gMain.hpBar_pos_x - 8 + xOffset, gMain.hpBar_pos_y - 8 + yOffset, gMain.hpBar_display_value, 444, 37, 0, 4, 20);
        sub_80172B4(gMain.hpBar_pos_x - 8 + xOffset, gMain.hpBar_pos_y - 8 + yOffset, gMain.hpBar_value, 444, 37, temp, 7, 21);
    }
    else if(gMain.hpBar_value < gMain.hpBar_display_value)
    {
        sub_80174E8(gMain.hpBar_pos_x + gMain.hpBar_display_value, gMain.hpBar_pos_y);
        loadHPBarPaletteIntoSlotOnIntervalByInterval(gUnknown_08112520, 7);
        xOffset = Random() % 2 - 2;
        yOffset = Random() % 3 - 4;
        temp = sub_80172B4(gMain.hpBar_pos_x - 8 + xOffset, gMain.hpBar_pos_y - 8 + yOffset, gMain.hpBar_value, 444, 37, 0, 4, 20);
        sub_80172B4(gMain.hpBar_pos_x - 8 + xOffset, gMain.hpBar_pos_y - 8 + yOffset, gMain.hpBar_display_value, 444, 37, temp, 7, 21);
    }
    else if(gMain.unk9C > 0)
    {
        loadHPBarPaletteIntoSlotOnIntervalByInterval(gUnknown_08112520, 7);
        temp = sub_80172B4(gMain.hpBar_pos_x - 8, gMain.hpBar_pos_y - 8, gMain.hpBar_value - gMain.unk9C, 444, 37, 0, 4, 20);
        sub_80172B4(gMain.hpBar_pos_x - 8, gMain.hpBar_pos_y - 8, gMain.hpBar_value, 444, 37, temp, 7, 21);
    }
    else 
    {
        loadHPBarPaletteIntoSlotOnIntervalByInterval(gUnknown_08112520, 7);
        sub_80172B4(gMain.hpBar_pos_x - 8, gMain.hpBar_pos_y - 8, gMain.hpBar_value, 444, 37, 0, 4, 20);
    }
    sub_801720C(gMain.hpBar_pos_x + xOffset, gMain.hpBar_pos_y + yOffset);
}

void clearHPBarOAM(void)
{
    int i;
    for(i = 0; i < 14; i++)
        gOamObjects[34+i].attr0 = SPRITE_ATTR0_CLEAR;
}

void checkAndDrawHPBar(void)
{
    if(!(gMain.hpBar_pos_x == 284 && gMain.hpBar_pos_y == 20))
    {
        if(gMain.process[GAME_PROCESS] >= 3 && gMain.process[GAME_PROCESS] <= 6)
        {
            clearHPBarOAM();
            if(!(gScriptContext.flags & SCRIPT_FULLSCREEN)
            && gMain.hpBar_display_flag)
            {
                loadHPBarGraphics();
                sub_80175E4();
            }
        }
    }
}

void sub_80178E0(void)
{
    gMain.hpBar_pos_x = 284;
    gMain.hpBar_pos_y = 20;
    gMain.hpBar_display_flag = 1;
    gMain.unk9C = 0;
    sub_8017928(0);
}

void sub_8017910(void)
{
    gMain.unkB0 = 0x50;
    gMain.hpBar_display_value = 0x50;
    gMain.hpBar_value = 0x50;
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

void processHPBar(void)
{
    void * states[] = {
        &&_080179C0,
        &&_08017A10,
        &&_08017A6C,
        &&_08017AAC,
        &&_08017C54,
    };
    checkAndDrawHPBar();
    animateAllSpotlights();
    animateAllFlowerPetals();
    goto *states[gMain.unk96];
_080179C0:
    gMain.hpBar_pos_y = 0x14;
    if(gMain.hpBar_value <= 0)
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
            gMain.hpBar_pos_x -= 4;
            if(gMain.process[GAME_PROCESS] == 4
            && gMain.process[GAME_PROCESS_STATE] == 10 
            && gMain.process[GAME_PROCESS_VAR1] == 7)
            {
                if(gMain.hpBar_pos_x <= 84)
                {
                    gMain.hpBar_pos_x = 84;
                    sub_8017950();
                }
            }
            else
            {
                if(gMain.hpBar_pos_x <= 156)
                {
                    gMain.hpBar_pos_x = 156;
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
            gMain.hpBar_pos_x += 4;
            if(gMain.hpBar_pos_x >= 284)
            {
                gMain.hpBar_pos_x = 284;
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
            gMain.hpBar_value -= gMain.unk9C;
            if(gMain.hpBar_value < 0)
                gMain.hpBar_value = 0;
            if(gMain.hpBar_value > 80)
                gMain.hpBar_value = 80;
            gMain.spotlights[0].x = gMain.unk9C;
            gMain.unk9C = 0;
            gMain.unkA8 = gMain.hpBar_display_value << 0x10;
            gMain.unkAC = (gMain.hpBar_value - gMain.hpBar_display_value) << 0x10;
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
            gMain.hpBar_display_value = gMain.unkA8 >> 0x10;
            if(gMain.unkAC <= 0)
            {
                if(gMain.hpBar_display_value < gMain.hpBar_value)
                     gMain.hpBar_display_value = gMain.hpBar_value;
            }
            else 
            {
                if(gMain.hpBar_display_value > gMain.hpBar_value)
                    gMain.hpBar_display_value = gMain.hpBar_value;
            }
            if(gTestimony.unk4 > 0)
                gTestimony.unk4--;
            if(gMain.hpBar_value == gMain.hpBar_display_value)
            {
                if(gTestimony.unk4 > 0)
                {
                    if(gMain.unkAC <= 0)
                        gMain.hpBar_display_value++;
                    else
                        gMain.hpBar_display_value--;
                }
                else 
                {
                    s32 temp = findPlayingHPBarSmokeAnimations(); 
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
            gMain.hpBar_pos_x += 4;
            if(gMain.hpBar_pos_x >= 284)
            {
                gMain.hpBar_pos_x = 284;
                sub_8017950();
                if(gMain.spotlights[0].x > 0)
                    gMain.advanceScriptContext = TRUE;
            }
    }
    return;
_08017C54:
    if(gMain.unk97 == 0)
    {
        gMain.unk97 = 1;
        gMain.hpBar_display_flag = 0;
    }
    return;
}

bool32 sub_8017C78(void)
{
    if(gMain.unk96 == 0 || gMain.unk96 == 4)
        return FALSE;
    return TRUE; 
}
