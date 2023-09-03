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

void LoadHPBarGraphics(void)
{
    DmaCopy16(3, gGfxHPBarProgress, OBJ_VRAM0+0x3780, 0x180);
    DmaCopy16(3, gPalHPBarFrame, OBJ_PLTT+0x60, 0x20);
    DmaCopy16(3, gPalHPBarProgress, OBJ_PLTT+0x80, 0x20);
    DmaCopy16(3, gGfxHPBarFrame3, OBJ_VRAM0+0x2E00, 0x80);
    DmaCopy16(3, gGfxHPBarFrame2, OBJ_VRAM0+0x2E80, 0x100);
    DmaCopy16(3, gGfxHPBarFrame1, OBJ_VRAM0+0x2F80, 0x80);
}

void sub_801720C(int xPos, int yPos)
{
    struct OamAttrs * next = &gOamObjects[43];

    {
        u32 attr0;
        u32 attr1;
        u16 x = xPos - 8;
        u16 y = yPos;
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
        u16 x = xPos + 8;
        u16 y = yPos;
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
        u16 x = xPos + 40;
        u16 y = yPos;
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
        u16 x = xPos + 72;
        u16 y = yPos;
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

// This runs, from left to right, through all affected OAMs according to hpValue and configures the OAM values
// The bar animation within an OAM block is done via a scaling matrix (horizontal scale)
// Returns the first OAM _after_ the affected ones
// Return value is used in AnimateHPBar to animate the static and dynamic parts different
// E.g. when gaining HP, the complete bar shakes but the amount gained is colored differently
u32 SetHPBarOAMAndMatrices(s16 x, s16 y, int hpValue, int tileId, int barFillStartOAM, int firstOAMToApplyTo, int paletteId, int matrixId)
{
    struct OamAttrs * oam;
    s16 res;
    s16 scale;
    u32 temp;
    s32 i;
    if(hpValue < 0)
        hpValue = 0;
    oam = &gOamObjects[barFillStartOAM + firstOAMToApplyTo];
    SetHVScalingMatrix(0, Q_8_8(1), Q_8_8(1));
    
    firstOAMToApplyTo--;
    if(firstOAMToApplyTo < 0)
        firstOAMToApplyTo = 0;
        
    for(i = firstOAMToApplyTo; i < (hpValue / 16); i++)
    {
        temp = i * 16;
        {
            u32 attr0, attr1, attr2;
            u16 x2 = x + temp;
            u16 y2 = y;
            u16 tileId2 = tileId;
            u16 pal = paletteId;

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
        temp = hpValue % 16;
        if(temp) {
            SetHVScalingMatrix(matrixId, fix_inverse(temp*16), Q_8_8(1));            
            {
                u32 attr0, attr1, attr2;
                u16 x2;
                u16 y2;
                u16 tileId2;
                u16 palette;
                u16 matrix = matrixId;
                x2 = i * 16 - (16 - temp) / 2 - temp % 2 + x;
                y2 = y;
                tileId2 = tileId;
                palette = paletteId;

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

void LoadHPBarPaletteIntoSlotOnIntervalByInterval(u16 pltt[][16], u16 slot)
{
    int interval = 4;
    if((gMain.frameCounter % interval) == 0)
    {
        int index = (gMain.frameCounter / interval) % 15;
        DmaCopy16(3, pltt[index], OBJ_PLTT + slot * 0x20, 0x20);
    }
}

void DoHPBarSmokeAnimations(int xPos, int yPos)
{
    int smokeOffsetPairs[12] = {-4, 4, 0, 8, 8, 6, -11, -8, 18, -2, 8, -8};
    int smokePlayFrameTimes[7] = {0, 9, 18, 27, 42, 51, 60}; // hardcoded for 60Hz refresh!
    int i; // r8
    int currentFrameInSecond = gMain.frameCounter % smokePlayFrameTimes[6];
    for(i = 0; i < 6; i++) 
    {
        struct AnimationListEntry * animation;
        if(smokePlayFrameTimes[i] == currentFrameInSecond || FindPlayingHPBarSmokeAnimations() == 0)
        {
            animation = FindAnimationFromAnimId(58 + i % 3);
            if(animation == NULL)
            {
                animation = PlayAnimationAtCustomOrigin(58 + i % 3, xPos + smokeOffsetPairs[i * 2], yPos + smokeOffsetPairs[i * 2 + 1] + 8);
                SetAnimationScale(animation, 16 + i % 3, 256 + Random() % 256);
            }
        }
    }
}

int FindPlayingHPBarSmokeAnimations(void)
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

void AnimateHPBar(void)
{
    int xOffset = 0;
    int yOffset = 0;
    int nextIndex;
    if(gMain.hpBarValue > gMain.hpBarDisplayValue)
    {
        LoadHPBarPaletteIntoSlotOnIntervalByInterval(gUnknown_08112700, 7);
        xOffset = 0; // useless!
        yOffset = (gMain.frameCounter / 2) % 2;
        nextIndex = SetHPBarOAMAndMatrices(gMain.hpBarX - 8 + xOffset, gMain.hpBarY - 8 + yOffset, gMain.hpBarDisplayValue, 444, 37, 0, 4, 20);
        SetHPBarOAMAndMatrices(gMain.hpBarX - 8 + xOffset, gMain.hpBarY - 8 + yOffset, gMain.hpBarValue, 444, 37, nextIndex, 7, 21);
    }
    else if(gMain.hpBarValue < gMain.hpBarDisplayValue)
    {
        DoHPBarSmokeAnimations(gMain.hpBarX + gMain.hpBarDisplayValue, gMain.hpBarY);
        LoadHPBarPaletteIntoSlotOnIntervalByInterval(gUnknown_08112520, 7);
        xOffset = Random() % 2 - 2;
        yOffset = Random() % 3 - 4;
        nextIndex = SetHPBarOAMAndMatrices(gMain.hpBarX - 8 + xOffset, gMain.hpBarY - 8 + yOffset, gMain.hpBarValue, 444, 37, 0, 4, 20);
        SetHPBarOAMAndMatrices(gMain.hpBarX - 8 + xOffset, gMain.hpBarY - 8 + yOffset, gMain.hpBarDisplayValue, 444, 37, nextIndex, 7, 21);
    }
    else if(gMain.hpBarDamageAmount > 0)
    {
        LoadHPBarPaletteIntoSlotOnIntervalByInterval(gUnknown_08112520, 7);
        nextIndex = SetHPBarOAMAndMatrices(gMain.hpBarX - 8, gMain.hpBarY - 8, gMain.hpBarValue - gMain.hpBarDamageAmount, 444, 37, 0, 4, 20);
        SetHPBarOAMAndMatrices(gMain.hpBarX - 8, gMain.hpBarY - 8, gMain.hpBarValue, 444, 37, nextIndex, 7, 21);
    }
    else 
    {
        LoadHPBarPaletteIntoSlotOnIntervalByInterval(gUnknown_08112520, 7);
        SetHPBarOAMAndMatrices(gMain.hpBarX - 8, gMain.hpBarY - 8, gMain.hpBarValue, 444, 37, 0, 4, 20);
    }
    sub_801720C(gMain.hpBarX + xOffset, gMain.hpBarY + yOffset);
}

void ClearHPBarOAM(void)
{
    int i;
    for(i = 0; i < 14; i++)
        gOamObjects[34+i].attr0 = SPRITE_ATTR0_CLEAR;
}

void CheckAndDrawHPBar(void)
{
    if(!(gMain.hpBarX == 284 && gMain.hpBarY == 20))
    {
        if(gMain.process[GAME_PROCESS] >= 3 && gMain.process[GAME_PROCESS] <= 6)
        {
            ClearHPBarOAM();
            if(!(gScriptContext.flags & SCRIPT_FULLSCREEN)
            && gMain.hpBarDisplayFlag)
            {
                LoadHPBarGraphics();
                AnimateHPBar();
            }
        }
    }
}

void ResetHPBar(void)
{
    gMain.hpBarX = 284;
    gMain.hpBarY = 20;
    gMain.hpBarDisplayFlag = 1;
    gMain.hpBarDamageAmount = 0;
    SetOrQueueHPBarState(0);
}

void ResetHPBarHealthToMax(void)
{
    gMain.hpBarValueAtEndOfSegment = 80;
    gMain.hpBarDisplayValue = 80;
    gMain.hpBarValue = 80;
}

void SetOrQueueHPBarState(u32 wantedState)
{
    gMain.hpBarSubState = 0;
    gMain.hpBarSlideOutDelay = 0;
    gMain.hpBarQueuedState = 0;
    if(gMain.hpBarState == 0)
        gMain.hpBarState = wantedState;
    else
        gMain.hpBarQueuedState = wantedState;
}

void ReturnToQueuedOrZeroHPBarState(void)
{
    if(gMain.hpBarQueuedState > 0)
        gMain.hpBarState = gMain.hpBarQueuedState;
    else
        gMain.hpBarState = 0;
    gMain.hpBarSubState = 0;
    gMain.hpBarSlideOutDelay = 0;
    gMain.hpBarQueuedState = 0;
}

void ProcessHPBar(void)
{
    void * states[] = {
        &&_080179C0,
        &&_08017A10,
        &&_08017A6C,
        &&_08017AAC,
        &&_08017C54,
    };
    CheckAndDrawHPBar();
    AnimateAllSpotlights();
    AnimateAllFlowerPetals();
    goto *states[gMain.hpBarState];
_080179C0:
    gMain.hpBarY = 20;
    if(gMain.hpBarValue <= 0)
    {
        if(gMain.process[GAME_PROCESS] == 3 || gMain.process[GAME_PROCESS] == 5 || gMain.process[GAME_PROCESS] == 6 || gMain.process[GAME_PROCESS] == 5)
        {
            ChangeScriptSection(gCaseGameoverSections[gMain.scenarioIdx]);
            SetOrQueueHPBarState(4);
        }
    }
    return;
_08017A10:
    switch(gMain.hpBarSubState)
    {
        case 0:
            gMain.hpBarSubState++; // ????
        case 1:
            gMain.hpBarX -= 4;
            if(gMain.process[GAME_PROCESS] == 4
            && gMain.process[GAME_PROCESS_STATE] == 10 
            && gMain.process[GAME_PROCESS_VAR1] == 7)
            {
                if(gMain.hpBarX <= 84)
                {
                    gMain.hpBarX = 84;
                    ReturnToQueuedOrZeroHPBarState();
                }
            }
            else
            {
                if(gMain.hpBarX <= 156)
                {
                    gMain.hpBarX = 156;
                    ReturnToQueuedOrZeroHPBarState();
                }
            }
    }
    return;
_08017A6C:
    switch(gMain.hpBarSubState)
    {
        case 0:
            gMain.hpBarSubState++; // ????
        case 1:
            gMain.hpBarX += 4;
            if(gMain.hpBarX >= 284)
            {
                gMain.hpBarX = 284;
                ReturnToQueuedOrZeroHPBarState();
            }
    }
    return;
_08017AAC:
    switch(gMain.hpBarSubState)
    {
        case 0: // remove hp?
            if(gMain.hpBarDamageAmount < 0)
                PlaySE(156);
            else if(gMain.hpBarDamageAmount > 0)
                PlaySE(76);
            gMain.hpBarValue -= gMain.hpBarDamageAmount;
            if(gMain.hpBarValue < 0)
                gMain.hpBarValue = 0;
            if(gMain.hpBarValue > 80)
                gMain.hpBarValue = 80;
            gMain.spotlights[0].x = gMain.hpBarDamageAmount;
            gMain.hpBarDamageAmount = 0;
            gMain.hpBarQ16_16DisplayValue = Q_16_16(gMain.hpBarDisplayValue);
            gMain.hpBarQ16_16DisplayChangeAmount = Q_16_16(gMain.hpBarValue - gMain.hpBarDisplayValue);
            if(gMain.hpBarQ16_16DisplayChangeAmount <= 0)
                gMain.hpBarQ16_16DisplayChangeAmount /= 40;
            else
                gMain.hpBarQ16_16DisplayChangeAmount /= 100;
            gTestimony.unk4 = 40;
            gMain.advanceScriptContext = FALSE;
            gMain.hpBarSubState++;
            break;
        case 1:
        {
            gMain.hpBarQ16_16DisplayValue += gMain.hpBarQ16_16DisplayChangeAmount;
            gMain.hpBarDisplayValue = Q_16_16_TO_INT(gMain.hpBarQ16_16DisplayValue);
            if(gMain.hpBarQ16_16DisplayChangeAmount <= 0)
            {
                if(gMain.hpBarDisplayValue < gMain.hpBarValue)
                     gMain.hpBarDisplayValue = gMain.hpBarValue;
            }
            else 
            {
                if(gMain.hpBarDisplayValue > gMain.hpBarValue)
                    gMain.hpBarDisplayValue = gMain.hpBarValue;
            }
            if(gTestimony.unk4 > 0)
                gTestimony.unk4--;
            if(gMain.hpBarValue == gMain.hpBarDisplayValue)
            {
                if(gTestimony.unk4 > 0)
                {
                    if(gMain.hpBarQ16_16DisplayChangeAmount <= 0)
                        gMain.hpBarDisplayValue++;
                    else
                        gMain.hpBarDisplayValue--;
                }
                else 
                {
                    if(FindPlayingHPBarSmokeAnimations() == 0)
                    {
                        sub_8013878(76);
                        sub_8013878(156);
                        gMain.hpBarSlideOutDelay = 0;
                        gMain.hpBarSubState++;
                    }
                }
            }
            break;
        }
        case 2:
            if(gMain.hpBarSlideOutDelay < 30)
            {
                gMain.hpBarSlideOutDelay++;
                break;
            }
            gMain.hpBarX += 4;
            if(gMain.hpBarX >= 284)
            {
                gMain.hpBarX = 284;
                ReturnToQueuedOrZeroHPBarState();
                if(gMain.spotlights[0].x > 0)
                    gMain.advanceScriptContext = TRUE;
            }
    }
    return;
_08017C54:
    if(gMain.hpBarSubState == 0)
    {
        gMain.hpBarSubState = 1;
        gMain.hpBarDisplayFlag = 0;
    }
    return;
}

bool32 IsHPBarAnimating(void)
{
    if(gMain.hpBarState == 0 || gMain.hpBarState == 4)
        return FALSE;
    return TRUE; 
}
