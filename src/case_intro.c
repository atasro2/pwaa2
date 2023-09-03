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
#include "ewram.h"
#include "constants/animation.h"
#include "constants/script.h"

extern u8 * gUnknown_081124D0[];

bool32 DidAllSpotlightsFinishSweeping(void)
{
    int i;
    for(i = 0; i < 2; i++)
    {
        if(gMain.spotlights[i].state < 3)
            return FALSE;
    }
    return TRUE;
}

void AnimateSpotlight(struct Spotlight * spotlight, int spotlightId, struct AnimationListEntry * arg2)
{
    switch(spotlight->state)
    {
        case 0: // _08017CF0
            if(spotlightId == 0)
            {
                spotlight->x = Q_16_16(-64);
                spotlight->y = Q_16_16(Random() % DISPLAY_HEIGHT);
                spotlight->xVelocity = Q_16_16(9.5);
                spotlight->yVelocity = Q_16_16(-2) + Q_16_16(Random() % 16) * 2 / 8;
            }
            else
            {
                spotlight->x = Q_16_16(DISPLAY_WIDTH + 64);
                spotlight->y = Q_16_16(Random() % (DISPLAY_WIDTH/2));
                spotlight->xVelocity = Q_16_16(-9.5);
                spotlight->yVelocity = Q_16_16(-2) + Q_16_16(Random() % 16) * 2 / 8;
            }
            if(gMain.currentBG == 120)
            {
                spotlight->y += Q_16_16(DISPLAY_HEIGHT - gMain.Bg256_scroll_y);
                spotlight->y += Q_16_16(32);
            }
            spotlight->state++;
            break;
        case 1: // _08017D78
            spotlight->x += spotlight->xVelocity;
            spotlight->y += spotlight->yVelocity;
            arg2->animationInfo.xOrigin = Q_16_16_TO_INT(spotlight->x);
            arg2->animationInfo.yOrigin = Q_16_16_TO_INT(spotlight->y);
            if(gMain.currentBG == 120)
                spotlight->y += Q_16_16(-1);
            if(spotlightId == 0)
            {
                if(spotlight->x >= Q_16_16(DISPLAY_WIDTH + 64))
                {
                    spotlight->state++;
                    spotlight->unk1 = Random() % 256;
                }
            }
            else
            {
                if(spotlight->x <= Q_16_16(-64))
                {
                    spotlight->state++;
                    spotlight->unk1 = Random() % 256;
                }
            } 
            break;
        case 2: // _08017DDC
            if(gMain.spotlightStopSweepingFlag == 1)
            {
                spotlight->state = 3;
                break;
            }

            arg2->animationInfo.xOrigin = DISPLAY_WIDTH + 64;
            if(spotlight->unk1-- < 0)
                spotlight->state = 0;
            break;
        case 3: // _08017E0A
            if(DidAllSpotlightsFinishSweeping())
            {
                if(spotlightId == 0)
                    spotlight->x = Q_16_16(-64);
                else
                    spotlight->x = Q_16_16(DISPLAY_WIDTH + 64);
                spotlight->y = Q_16_16(Random() % 80);
                spotlight->xVelocity = (Q_16_16(128) - spotlight->x) / 96;
                spotlight->yVelocity = (Q_16_16(60) - spotlight->y) / 96;
                spotlight->state++;
            }
            break;
        case 4: // _08017E5C
            spotlight->x += spotlight->xVelocity;
            spotlight->y += spotlight->yVelocity;
            arg2->animationInfo.xOrigin = Q_16_16_TO_INT(spotlight->x);
            arg2->animationInfo.yOrigin = Q_16_16_TO_INT(spotlight->y);
            
            if( arg2->animationInfo.xOrigin > 126
            && arg2->animationInfo.xOrigin <= 128
            && arg2->animationInfo.yOrigin > 58
            && arg2->animationInfo.yOrigin <= 60)
            {
                arg2->animationInfo.xOrigin = 128;
                arg2->animationInfo.yOrigin = 60;
                spotlight->state++;
            }
            break;
        case 5: // _08017E94
            break;
    }
}

void AnimateAllSpotlights(void)
{
    struct AnimationListEntry * anim = FindAnimationFromAnimId(0x8F);
    if(anim != NULL)
    {
        AnimateSpotlight(&gMain.spotlights[0], 0, anim);
        SetAnimationScale(anim, 0, Q_8_8(1.5));
    }
    anim = FindAnimationFromAnimId(0x90);
    if(anim != NULL)
    {
        AnimateSpotlight(&gMain.spotlights[1], 1, anim);
        SetAnimationScale(anim, 1, Q_8_8(1.5));
    }
}

void ClearAllSpotlights(void)
{
    DmaFill16(3, 0, &gMain.spotlights[0], sizeof(gMain.spotlights[0]));
    DmaFill16(3, 0, &gMain.spotlights[1], sizeof(gMain.spotlights[1]));
}

void SetSpotlightStopSweepingFlag(void)
{
    gMain.spotlightStopSweepingFlag = 1;
}

// case 4 opening flower petal code

void UpdateFlowerPetal(struct FlowerPetal * petal, int petalId)
{
    petal->y = Q_16_16(-16);
    petal->x = Q_16_16(Random() % 256 + 64);
    petal->xVelocity = Q_16_16(-1) + Q_16_16((Random() % 16)) / 256;
    petal->yVelocity = Q_16_16(1) + Q_16_16((Random() % 24)) / 256;
    if(petalId >= 8)
    {
        petal->xVelocity /= 2;
        petal->yVelocity /= 2;
    }
    petal->randomSeed = Random() % 256;
    petal->randomIncrement = Random() % 3;
}

void SpawnFlowerPetal(struct FlowerPetal * petal, int petalId)
{
    petal->id = petalId;
    petal->UpdateDelay = Random() % 256;
    UpdateFlowerPetal(petal, petalId);
    petal->anim = PlayAnimationAtCustomOrigin(0x7F + petal->id, Q_16_16_TO_INT(petal->x), Q_16_16_TO_INT(petal->y));
}

void DestroyFlowerPetal(struct FlowerPetal * petal, int petalId)
{
    DestroyAnimation(petal->anim);
}

void AnimateFlowerPetal(struct FlowerPetal * petal)
{
    struct AnimationListEntry * anim = FindAnimationFromAnimId(0x7F + petal->id);
    if(anim == 0)
        return;
    
    if (petal->UpdateDelay <= 0)
    {
        petal->x += petal->xVelocity;
        petal->y += petal->yVelocity;
        if(gMain.frameCounter % 2)
            petal->x += (petal->xVelocity * _Sin((petal->randomSeed += petal->randomIncrement) % 256)) / 255;
        SetAnimationOriginCoords(petal->anim, Q_16_16_TO_INT(petal->x), Q_16_16_TO_INT(petal->y));
        if (Q_16_16_TO_INT(petal->y) >= 170)
            UpdateFlowerPetal(petal, petal->id);
    }
    else
    {
        petal->UpdateDelay--;
    }
}

void SpawnAllFlowerPetals(void)
{
    int i;
    DmaFill16(3, 0, gFlowerPetals, sizeof(gFlowerPetals));
    for(i = 0; i < 16; i++)
       SpawnFlowerPetal(&gFlowerPetals[i], i); 
}

void DestroyAllFlowerPetals(void)
{
    int i;
    for(i = 0; i < 16; i++)
       DestroyFlowerPetal(&gFlowerPetals[i], i); 
}

void AnimateAllFlowerPetals(void)
{
    int i;
    for(i = 0; i < 16; i++)
       AnimateFlowerPetal(&gFlowerPetals[i]); 
}

void UpdateNickelSamuraiZoominAnimation(void)
{
    gInvestigation.pointerX -= 0xE;
    gIORegisters.lcd_bg2x = (0x40 - gInvestigation.pointerX / 2) << 8;
    gIORegisters.lcd_bg2y = (0x20 - gInvestigation.pointerX / 4) << 8;
    gIORegisters.lcd_bg2pa = gInvestigation.pointerX;
    gIORegisters.lcd_bg2pd = gInvestigation.pointerX;
}

void InitNickelSamuraiZoominAnimation(void)
{
    gInvestigation.pointerX = 0xE0;
    gIORegisters.lcd_dispcnt &= ~7;
    gIORegisters.lcd_dispcnt |= DISPCNT_MODE_1;
    gIORegisters.lcd_dispcnt &= ~DISPCNT_BG3_ON;
    gIORegisters.lcd_bg2cnt = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(1) | BGCNT_256COLOR | BGCNT_SCREENBASE(30);
    gIORegisters.lcd_bg2x = -0x40 << 8;
    gIORegisters.lcd_bg2y = -0x20 << 8;
    gIORegisters.lcd_bg2pa = 0;
    gIORegisters.lcd_bg2pb = 0;
    gIORegisters.lcd_bg2pc = 0;
    gIORegisters.lcd_bg2pd = 0;
    LZ77UnCompWram(gGfxCase3NickelSamuraiZoomin, eUnknown_02036500);
    DmaCopy16(3, eUnknown_02036500, BG_CHAR_ADDR(1), 0x1300);
    LZ77UnCompWram(gMapCase3NickelSamuraiZoomin, eUnknown_02036500);
    DmaCopy16(3, eUnknown_02036500, gBG2MapBuffer, sizeof(gBG2MapBuffer));
    LZ77UnCompWram(gPalCase3NickelSamuraiZoomin, eUnknown_02036500);
    DmaCopy16(3, eUnknown_02036500, BG_PLTT, BG_PLTT_SIZE);
    *(u16*)BG_PLTT = 0xFFFF; // white backdrop
    UpdateNickelSamuraiZoominAnimation();
}

void FinishNickelSamuraiZoominAnimation(void)
{
    gIORegisters.lcd_dispcnt &= ~7;
    gIORegisters.lcd_dispcnt |= DISPCNT_BG3_ON;
    gIORegisters.lcd_bg2hofs = 0;
    gIORegisters.lcd_bg2vofs = 0;
    CopyBGDataToVram(0x80);
    gIORegisters.lcd_bg2cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(30) | BGCNT_16COLOR | BGCNT_WRAP;
    *(u16*)BG_PLTT = 0; // black backdrop
    InitBGs();
}