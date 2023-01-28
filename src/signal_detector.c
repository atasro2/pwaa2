#include "global.h"
#include "animation.h"
#include "investigation.h"
#include "script.h"
#include "sound.h"

extern struct Point4 gUnknown_081128E0[22];
extern u16 gUnknown_08112A40[22];

void sub_8018280(s32 unk0, u32 unk1) {
    struct AnimationListEntry * animation;
    u8 * unk2B4 = &gMain.unk2B4; // ! why
    u32 new, old;

    switch(*unk2B4) {
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
        if(unk1 == -1) {
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

void sub_80182F8(bool32 show) { // copy of UpdateScrollPromptSprite
    struct OamAttrs * oam = &gOamObjects[56];
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

void sub_80183D8(void)
{
    struct Rect rect;
    u8 * unk2B4 = &gMain.unk2B4;
    u32 signalArea = -1;
    u32 trueDistance;
    s32 distance;
    s32 i;
    switch(*unk2B4) {
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
                (*unk2B4)++;
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
            if((gMain.unk0 % 3) == 0) { // ! why not use key repeat this is cursed
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
            sub_80182F8(TRUE);
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
                *unk2B4 = 3;
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
            sub_80182F8(FALSE);
            if(gMain.Bg256_pos_x == 0 || gMain.Bg256_pos_x == 240) {
                if(gMain.Bg256_pos_x == 0) {
                    gInvestigation.pointerX = 230;
                    gInvestigation.pointerY = 80;
                }
                if(gMain.Bg256_pos_x == 240) {
                    gInvestigation.pointerX = 11;
                    gInvestigation.pointerY = 80;
                }
                *unk2B4 = 2;
            }
    }
    sub_8018280(trueDistance, signalArea);
}

void sub_8018690(void) {
    u8 * unk2B4 = &gMain.unk2B4;
    s32 i;

    gScriptContext.flags |= 0x80;
    gInvestigation.pointerX = 240;
    gInvestigation.pointerY = 78;
    gInvestigation.spotselectStartCounter = 0xF;
    gMain.advanceScriptContext = FALSE;
    gMain.showTextboxCharacters = FALSE;
    for(i = 0; i < 0x100; i++)
        gBG1MapBuffer[0x180+i] = 0;
    *unk2B4 = 1;
}

void sub_80186EC(void) {
    u32 pointerX, pointerY;
    u8 * unk2B4 = &gMain.unk2B4;
    pointerX = gInvestigation.pointerX;
    pointerY = gInvestigation.pointerY;
    sub_8018690();
    gInvestigation.pointerX = pointerX;
    gInvestigation.pointerY = pointerY;
    gInvestigation.spotselectStartCounter = 0;
    *unk2B4 = 2;
}

void sub_8018720(void) {
    struct AnimationListEntry * animation;
    u8 * unk2B4 = &gMain.unk2B4;
    animation = FindAnimationFromAnimId(0x44);
    if(animation)
        DestroyAnimation(animation);
    animation = FindAnimationFromAnimId(0x45);
    if(animation)
        DestroyAnimation(animation);
    *unk2B4 = 0;
}

void nullsub_12(void) {
    
}