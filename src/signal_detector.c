#include "global.h"
#include "animation.h"
#include "investigation.h"
#include "script.h"
#include "sound.h"
#include "constants/oam_allocations.h"

//! not marked const
struct Point4 gUnknown_081128E0[] = { 
    {{{0x0051, 0x000f}, {0x0054, 0x000f}, {0x0054, 0x0012}, {0x0051, 0x0012}}},
    {{{0x001c, 0x0014}, {0x002e, 0x0014}, {0x002e, 0x0033}, {0x001c, 0x0033}}},
    {{{0x000f, 0x002f}, {0x001c, 0x002f}, {0x001c, 0x0044}, {0x000f, 0x0044}}},
    {{{0x001c, 0x0033}, {0x0036, 0x0033}, {0x0036, 0x0050}, {0x001c, 0x0050}}},
    {{{0x005c, 0x0070}, {0x0073, 0x0070}, {0x0073, 0x007c}, {0x005c, 0x007c}}},
    {{{0x00a7, 0x006a}, {0x00af, 0x006a}, {0x00af, 0x0075}, {0x00a7, 0x0075}}},
    {{{0x00a7, 0x007d}, {0x00af, 0x007d}, {0x00af, 0x0085}, {0x00a7, 0x0085}}},
    {{{0x00c8, 0x0034}, {0x00db, 0x0034}, {0x00db, 0x0059}, {0x00c8, 0x0059}}},
    {{{0x00db, 0x0056}, {0x00ef, 0x0056}, {0x00ef, 0x0068}, {0x00db, 0x0068}}},
    {{{0x00da, 0x0081}, {0x00e1, 0x0081}, {0x00e1, 0x0088}, {0x00da, 0x0088}}},
    {{{0x00e3, 0x0091}, {0x00eb, 0x0091}, {0x00eb, 0x009a}, {0x00e3, 0x009a}}},
    {{{0x00f5, 0x0082}, {0x0109, 0x0082}, {0x0109, 0x0093}, {0x00f5, 0x0093}}},
    {{{0x00ff, 0x0017}, {0x011d, 0x0017}, {0x011d, 0x0021}, {0x00ff, 0x0021}}},
    {{{0x0100, 0x0035}, {0x010f, 0x0035}, {0x010f, 0x0041}, {0x0100, 0x0041}}},
    {{{0x014b, 0x0037}, {0x0150, 0x0037}, {0x0150, 0x0041}, {0x014b, 0x0041}}},
    {{{0x013e, 0x005e}, {0x0150, 0x005e}, {0x0150, 0x0071}, {0x013e, 0x0071}}},
    {{{0x0153, 0x005a}, {0x015b, 0x005a}, {0x015b, 0x0060}, {0x0153, 0x0060}}},
    {{{0x015b, 0x005d}, {0x0166, 0x005d}, {0x0166, 0x0065}, {0x015b, 0x0065}}},
    {{{0x0185, 0x0017}, {0x018c, 0x0017}, {0x018c, 0x0022}, {0x0185, 0x0022}}},
    {{{0x0171, 0x0073}, {0x0178, 0x0073}, {0x0178, 0x0077}, {0x0171, 0x0073}}},
    {{{0x01b3, 0x0025}, {0x01b9, 0x0025}, {0x01b9, 0x0051}, {0x01b3, 0x0051}}},
    {{{0x0000, 0x0000}, {0x01e0, 0x0000}, {0x01e0, 0x00f0}, {0x0000, 0x00f0}}}
};

//! not marked const
u16 gUnknown_08112A40[] = {
    0x00ea,
    0x00e4,
	0x00e5,
	0x00e6,
	0x00dc,
	0x00de,
	0x00e8,
	0x00e1,
	0x00d9,
	0x00dd,
	0x00db,
	0x00da,
	0x00e3,
	0x00e2,
	0x00df,
	0x00e9,
    0x00e0,
	0x00e0,
	0x00df,
	0x00e7,
	0x00df,
	0x00d8
};

void UpdateSignalDetectorAnimation(s32 distance, u32 signalArea) {
    struct AnimationListEntry * animation;
    u8 * signalDetectorState = &gMain.signalDetectorState; // ! why
    u32 new, old;

    switch(*signalDetectorState) {
    case 0:
        break;
    case 3:
        animation = FindAnimationFromAnimId(0x44);
        if(animation)
            DestroyAnimation(animation);
        animation = FindAnimationFromAnimId(0x45);
        if(animation)
            DestroyAnimation(animation);
        break;
    default:
        if(signalArea == -1) {
            new = 0x44;
            old = 0x45;
        } else {
            new = 0x45;
            old = 0x44;
        }
        animation = FindAnimationFromAnimId(old);
        if(animation)
            DestroyAnimation(animation);
        animation = FindAnimationFromAnimId(new);
        if(!animation)
            PlayAnimation(new);
        SetAnimationOriginCoords(FindAnimationFromAnimId(new), gInvestigation.pointerX, gInvestigation.pointerY);
    }
}

void UpdateScrollPromptSpriteSignalDetector(bool32 show) { // copy of UpdateScrollPromptSprite
    struct OamAttrs * oam = &gOamObjects[OAM_IDX_BUTTON_PROMPTS+3];
    u32 r6 = 0; // ! UNUSED, This is present in the assembly for this function somehow
    oam->attr0 = SPRITE_ATTR0_CLEAR;
    if(show) {
        if(gMain.Bg256_pos_x == 0) {
            oam->attr0 = 0x4020;
            oam->attr1 = 0x80D0;
            oam->attr2 = 0x7188;
        } else if(gMain.Bg256_pos_x == 240 || gMain.Bg256_pos_x == 120) {
            oam->attr0 = 0x4020;
            oam->attr1 = 0x8000;
            oam->attr2 = 0x7180;
        }
    }
}

s32 FindDistanceToClosestSignalArea(void) {
    u32 distance = UINT32_MAX;
    s32 i;
    for(i = 0; i < 22; i++) {
        struct Point4 * area = &gUnknown_081128E0[i];
        u32 areaDistance = 0;
        s32 x, y;
        x = (area->points[0].x + area->points[1].x + area->points[2].x + area->points[3].x) / 4;
        y = (area->points[0].y + area->points[1].y + area->points[2].y + area->points[3].y) / 4;
        x -= gMain.Bg256_pos_x + gInvestigation.pointerX;
        areaDistance += abs(x);
        y -= gMain.Bg256_pos_y + gInvestigation.pointerY;
        areaDistance += abs(y);
        if(areaDistance < distance)
            distance = areaDistance;
    }
    return distance;
}

void ProcessSignalDetector(void)
{
    struct Rect rect;
    u8 * signalDetectorState = &gMain.signalDetectorState;
    u32 signalArea = -1;
    u32 trueDistance;
    s32 distance;
    s32 i;
    switch(*signalDetectorState) {
        case 0:
            break;
        case 1:
            gInvestigation.pointerX -= gInvestigation.spotselectStartCounter;            
            gInvestigation.pointerX &= 0xFF;
            gInvestigation.spotselectStartCounter--;
            if(gInvestigation.spotselectStartCounter == 0) {
                gScriptContext.flags &= ~0x80;
                gScriptContext.flags |= 0x100 | 0x8;
                gInvestigation.spotselectStartCounter = 0;
                (*signalDetectorState)++;
            }
            break;
        case 2:
            rect.x = gMain.Bg256_pos_x + gInvestigation.pointerX;
            rect.y = gMain.Bg256_pos_y + gInvestigation.pointerY;
            rect.w = 1;
            rect.h = 1;
            for(i = 0; i < 21; i++) {
                if(CheckRectCollisionWithArea(&rect, &gUnknown_081128E0[i])) {
                    signalArea = i;
                    break;
                }
            }
            if((gMain.frameCounter % 3) == 0) { // ! why not use key repeat this is cursed
                if(gJoypad.heldKeys & DPAD_LEFT)
                    gInvestigation.pointerX--;
                else if(gJoypad.heldKeys & DPAD_RIGHT)
                    gInvestigation.pointerX++;
                else if(gJoypad.heldKeys & DPAD_UP)
                    gInvestigation.pointerY--;
                else if(gJoypad.heldKeys & DPAD_DOWN)
                    gInvestigation.pointerY++;

                if(gInvestigation.pointerX < 3)
                    gInvestigation.pointerX = 3;
                if(gInvestigation.pointerX > 238)
                    gInvestigation.pointerX = 238;
                if(gInvestigation.pointerY < 3)
                    gInvestigation.pointerY = 3;
                if(gInvestigation.pointerY > 158)
                    gInvestigation.pointerY = 158;
            }
            UpdateScrollPromptSpriteSignalDetector(TRUE);
            if(gJoypad.pressedKeys & A_BUTTON) {
                PlaySE(0x2B);
                gScriptContext.flags &= ~(0x100 | 0x8);
                if(signalArea != -1)
                    ChangeScriptSection(gUnknown_08112A40[i]);
                else
                    ChangeScriptSection(gUnknown_08112A40[21]);
                gScriptContext.flags |= 0x400;
                gMain.advanceScriptContext = TRUE;
                gIORegisters.lcd_bldcnt = BLDCNT_TGT1_BG1 | BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG0 | BLDCNT_TGT2_BG3 | BLDCNT_TGT2_OBJ;
                gIORegisters.lcd_bldalpha = BLDALPHA_BLEND(31, 7);

            } else if(gJoypad.pressedKeys & L_BUTTON) {
                PlaySE(0x2B);
                gMain.isBGScrolling = TRUE;
                if(gMain.Bg256_pos_x == 0) 
                    gMain.horizontolBGScrollSpeed = 6;
                else
                    gMain.horizontolBGScrollSpeed = -6;
                *signalDetectorState = 3;
            }
            trueDistance = FindDistanceToClosestSignalArea();
            distance = trueDistance;
            if(signalArea != -1)
                distance = 1;
            if(gInvestigation.spotselectStartCounter++ >= distance) {
                gInvestigation.spotselectStartCounter = 0;
                PlaySE(0xAC);
            }
            break;
        case 3: // _0801863C
            UpdateScrollPromptSpriteSignalDetector(FALSE);
            if(gMain.Bg256_pos_x == 0 || gMain.Bg256_pos_x == 240) {
                if(gMain.Bg256_pos_x == 0) {
                    gInvestigation.pointerX = 230;
                    gInvestigation.pointerY = 80;
                }
                if(gMain.Bg256_pos_x == 240) {
                    gInvestigation.pointerX = 11;
                    gInvestigation.pointerY = 80;
                }
                *signalDetectorState = 2;
            }
    }
    UpdateSignalDetectorAnimation(trueDistance, signalArea);
}

void BeginSignalDetector(void) {
    u8 * signalDetectorState = &gMain.signalDetectorState;
    s32 i;

    gScriptContext.flags |= 0x80;
    gInvestigation.pointerX = 240;
    gInvestigation.pointerY = 78;
    gInvestigation.spotselectStartCounter = 0xF;
    gMain.advanceScriptContext = FALSE;
    gMain.showTextboxCharacters = FALSE;
    for(i = 0; i < 0x100; i++)
        gBG1MapBuffer[0x180+i] = 0;
    *signalDetectorState = 1;
}

void ReturnToSignalDetector(void) {
    u32 pointerX, pointerY;
    u8 * signalDetectorState = &gMain.signalDetectorState;
    pointerX = gInvestigation.pointerX;
    pointerY = gInvestigation.pointerY;
    BeginSignalDetector();
    gInvestigation.pointerX = pointerX;
    gInvestigation.pointerY = pointerY;
    gInvestigation.spotselectStartCounter = 0;
    *signalDetectorState = 2;
}

void EndSignalDetector(void) {
    struct AnimationListEntry * animation;
    u8 * signalDetectorState = &gMain.signalDetectorState;
    animation = FindAnimationFromAnimId(0x44);
    if(animation)
        DestroyAnimation(animation);
    animation = FindAnimationFromAnimId(0x45);
    if(animation)
        DestroyAnimation(animation);
    *signalDetectorState = 0;
}

void SignalDetectorUnused(void) {
    
}