#include "global.h"
#include "main.h"
#include "investigation.h"
#include "save.h"
#include "court.h"
#include "script.h"
#include "background.h"
#include "animation.h"
#include "sound.h"
#include "graphics.h"
#include "constants/songs.h"
#include "constants/process.h"
#include "constants/oam_allocations.h"

void UpdateInvestigationActionSprites(struct InvestigationStruct * investigation)
{
    struct OamAttrs * oam = &gOamObjects[OAM_IDX_INVESTIGATION_ACTIONS];
    u32 i;
    u32 y;

    if(!(investigation->unkB & 1)) {
        switch(investigation->actionState)
        {
            case 0:
                for(i = 0; i < OAM_COUNT_INVESTIGATION_ACTIONS; i++)
                {
                    if(investigation->selectedAction == i)
                    {
                        oam->attr0 = 0x4000;
                        y = investigation->selectedActionYOffset + 240;
                        y &= 0xFF;
                        oam->attr0 += y; 
                        oam->attr2 = i * 0x20 + 0x6500;
                    }
                    else if(investigation->lastAction == i)
                    {
                        oam->attr0 &= ~0xFF;
                        oam->attr0 |= investigation->inactiveActionButtonY;
                        oam->attr0 += investigation->lastActionYOffset;
                        oam->attr2 = i * 0x20 + 0x5500;
                    }
                    else if((investigation->inactiveActions >> i) & 1)
                    {
                        oam->attr0 &= ~0xFF;
                        oam->attr0 |= investigation->inactiveActionButtonY;
                        oam->attr2 = i * 0x20 + 0x5500;
                    }
                    else
                    {
                        oam->attr2 = i * 0x20 + 0x5500;
                    }
                    oam++;
                }
                return;
            case 1:
                i = investigation->selectedAction; // ! variable re(ab)use
                oam += i;
                oam->attr2 = 0x6500 + i * 0x20;
                investigation->inactiveActionButtonY = 0xE0;
                investigation->actionState++;
                break;
            case 2:
                investigation->inactiveActionButtonY += 2;
                if(investigation->inactiveActionButtonY >= 0xF0)
                {
                    investigation->inactiveActionButtonY = 0xF0;
                    investigation->actionState = 0;
                }
                break;
            case 3:
                investigation->inactiveActionButtonY -= 2;
                if(investigation->inactiveActionButtonY <= 0xE0)
                {
                    investigation->inactiveActionButtonY = 0xE0;
                    investigation->actionState = 4;
                }
                break;
            case 4:
                break;
            case 5:
                investigation->inactiveActionButtonY++;
                if(investigation->inactiveActionButtonY >= 0xE0)
                {
                    investigation->inactiveActionButtonY = 0xF0;
                    investigation->actionState = 4;
                    return;
                }
                break;
        }
        i = gMain.roomData[gMain.currentRoomId][0]; //! re(ab)use
        if(i != gMain.currentBG)
            investigation->selectedActionYOffset = 0x40;
        for(i = 0; i < OAM_COUNT_INVESTIGATION_ACTIONS; i++)
        {
            if(investigation->inactiveActions >> i & 1)
            {
                oam->attr0 &= 0xFF00;
                oam->attr0 |= investigation->inactiveActionButtonY;
            }
            else if(investigation->selectedAction == i)
            {
                oam->attr0 &= 0xFF00;
                y = 0x100 - investigation->selectedActionYOffset;
                y &= 0xFF;
                oam->attr0 += y;
            }
            oam++;
        }
    }
}

void UpdateScrollPromptSprite(struct Main * main, u32 show)
{
    struct OamAttrs * oam = &gOamObjects[OAM_IDX_BUTTON_PROMPTS+3];
    u32 r6 = 0; // ! UNUSED, This is present in the assembly for this function somehow
    oam->attr0 = SPRITE_ATTR0_CLEAR;
    if(show && gScriptContext.textboxState == 1 
    && GetBGControlBits(main->currentBG) & (BG_MODE_SIZE_480x160 | BG_MODE_SIZE_360x160))
    {
        if(gMain.Bg256_pos_x == 0) // ! inconsistent use of global vs pointer
        {
            oam->attr0 = 0x4020;
            oam->attr1 = 0x80D0;
            oam->attr2 = 0x7188;
        }
        else if(main->Bg256_pos_x == 240 || main->Bg256_pos_x == 120)
        {
            oam->attr0 = 0x4020;
            oam->attr1 = 0x8000;
            oam->attr2 = 0x7180;
        }
    }
}

u32 GetExaminedAreaSection(struct InvestigationStruct * investigation) // finger_pos_check
{
    struct Rect rect;
    u32 animId;
    struct ExaminationData * examData;
    if(investigation->pointerX < 120)
        rect.x = gMain.Bg256_pos_x + investigation->pointerX;
    else
        rect.x = gMain.Bg256_pos_x + investigation->pointerX + 12;
    rect.y = gMain.Bg256_pos_y + investigation->pointerY;
    rect.w = 4;
    rect.h = 16;
    if(gMain.scenarioIdx == 2) {
        if(gMain.currentRoomId == 5 && GetFlag(0, 0x41) != FALSE && GetFlag(0, 0x48) == FALSE)
            return 0xE8;
    }
    else if (gMain.scenarioIdx == 14) {
        if(gMain.currentRoomId == 0)
            return 0xC7;
    }
    else if (gMain.scenarioIdx == 15) {
        if(gMain.currentRoomId == 0 && GetFlag(0, 0xBC) != FALSE)
            return 0x14F;
    }
    else if (gMain.scenarioIdx == 18) {
        if(gMain.currentRoomId == 20 && GetFlag(0, 0x92) == FALSE)
            return 0xA5;
    }
    animId = CheckRectCollisionWithAnim(&rect);
    for(examData = gExaminationData; examData->type != 0xFF; examData++) // Check for collision with animation
    {
        if(examData->type == 0xFE && animId == examData->animId)
            return examData->examinationSection;
    }
    for(examData = gExaminationData; examData->type != 0xFF; examData++) // Check for collision with area
    {
        if(examData->type == 0xFE)
            continue;
        if(CheckRectCollisionWithArea(&rect, &examData->area))
            return examData->examinationSection;
    }
    if(gMain.scenarioIdx == 15 && gMain.currentRoomId == 23) {
        return 0x15A;
    }
    else if((gMain.scenarioIdx == 18 && gMain.currentRoomId == 25) || (gMain.scenarioIdx == 18 && gMain.currentRoomId == 21)) {
        return 0x10C;
    }
    return 0x1D;
}

void LoadLocationChoiceGraphics(void)
{
    u32 i;
    u8 *roomptr = gMain.roomData[gMain.currentRoomId];
    roomptr += 1;
    for(i = 0; i < 4; i++)
    {
        u8 *src;
        void *destination = (void *)VRAM+0x13400;
        destination += i*0x800;
        if(*roomptr != 0xFF)
	    {
            src = (void *)0x081DE3E8+*roomptr*0x800;
            DmaCopy16(3, src, destination, 0x800);
        }
        roomptr++;
    }
}

void LoadTalkChoiceGraphics(void)
{
    u32 i;
    struct TalkData *talkdata;
    u8 *icons;
    for(talkdata = gTalkData; talkdata->roomId != 0xFF; talkdata++)
    {
        if(gMain.currentRoomId == talkdata->roomId)
	    {
            if(gAnimation[1].animationInfo.personId == talkdata->personId)
	        {
                if(talkdata->enableFlag == 1)
		            break;
            }
        }
    }
    icons = talkdata->iconId;
    for(i = 0; i < 4; i++)
    {
        void *src;
        void *destination = (void *)VRAM+0x13400;
        destination += i*0x800;
        if(*icons != 0xFF)
	    {
            src = (void *)0x081EB3E8 + *icons*0x800;
            DmaCopy16(3, src, destination, 0x800);
        }
        icons++;
    }
    DmaCopy16(3, (void *)0x08142BFC, (void *)VRAM+0x15400, 0x200);
    DmaCopy16(3, (void *)0x0814DE80, (void *)PLTT+0x360, 0x20);
}
