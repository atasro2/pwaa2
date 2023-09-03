#include "global.h"
#include "main.h"
#include "animation.h"
#include "script.h"
#include "sound.h"
#include "utils.h"
#include "m4a.h"
#include "ewram.h"
#include "background.h"
#include "investigation.h"
#include "court_record.h"
#include "graphics.h"
#include "court.h"
#include "save.h"
#include "psyche_lock.h"
#include "constants/bg.h"
#include "constants/script.h"
#include "constants/songs.h"
#include "constants/process.h"
#include "constants/oam_allocations.h"
#include "graphics.h"

const u8 gSoundCueTable[] = {
    0, 0, 1, 0, 1, 1, 1, 0,
    0, 0, 0, 0, 0, 0, 0, 1,
    0, 1, 1, 1, 1, 1, 0, 0,
    1, 1, 1, 1, 1, 0, 0, 0,
    0, 1, 1, 0, 1, 0, 0, 1,
    0, 1, 0, 0, 1, 0, 0, 1,
    1, 0, 0, 0, 0, 0, 0, 0,
};

/* thrice just the palette?
   probably left over from when the scroll
   was more than a single graphic */
u8 * const gCourtScrollGfxPointers[] = {
    gPalCourtScroll,
    gPalCourtScroll,
    gPalCourtScroll,
};

const u8 gTextboxDownArrowTileIndexes[] = {
    0x20, 0x22, 0x24, 0x26, 0x24, 0x22,
};

bool32 CommandDummy(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command00(struct ScriptContext * scriptCtx)
{
    InitScriptSection(scriptCtx);
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command01(struct ScriptContext * scriptCtx)
{
    if(scriptCtx->flags & SCRIPT_FULLSCREEN)
    {
        scriptCtx->fullscreenTextX = 0;
        scriptCtx->fullscreenTextY++;
    }
    else
    {
        scriptCtx->textX = 0;
        scriptCtx->textY++;
    }
    
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command02(struct ScriptContext * scriptCtx)
{
    u32 i;
    u32 temp;

    if(scriptCtx->flags & 0x20)
    {
        if(scriptCtx->personAnimPauseCounter != 0)
        {
            scriptCtx->personAnimPauseCounter--;
            return 1;
        }
        else
        {
            scriptCtx->flags &= ~0x20;
            scriptCtx->scriptPtr++; 
            if(scriptCtx->currentToken == 0xA) // if script cmd is 0xA
                scriptCtx->scriptPtr++;
            return 1;
        }
    }
    if(gMain.process[GAME_PROCESS] == 4 && (gMain.effectType == 3 || gMain.effectType == 7))
    {
        gMain.effectCounter = gMain.effectDelay;
        gMain.effectIntensity = 0x1F;
    }
    if(gMain.process[GAME_PROCESS] >= 3 && gMain.process[GAME_PROCESS] <= 6)
    {
        if(IsHPBarAnimating() || IsPsycheLockStopPresentButtonsAnimating()) return 1;
        
        if(scriptCtx->paragraphSkipDelayCounter > 0)
            scriptCtx->paragraphSkipDelayCounter--;
        
        if(gJoypad.heldKeys & B_BUTTON 
        && scriptCtx->textSkip != 0 
        && scriptCtx->paragraphSkipDelayCounter == 0)
            scriptCtx->flags |= 2;
        
        if(scriptCtx->flags & 1 
        && gJoypad.pressedKeys & A_BUTTON 
        && scriptCtx->paragraphSkipDelayCounter == 0)
                scriptCtx->flags |= 2;
    }
    if(scriptCtx->flags & 2)
    {
        PlaySE(47);
        if(gBG1MapBuffer[622] != 9 && gBG1MapBuffer[622] != 0)
            gBG1MapBuffer[622] = 9;
        if(gBG1MapBuffer[623] != 9 && gBG1MapBuffer[623] != 0)
            gBG1MapBuffer[623] = 9;
        scriptCtx->flags &= ~(2 | 1);
        if(scriptCtx->textSkip > 0)
        {
            scriptCtx->textSpeed = scriptCtx->prevTextSpeed;
            scriptCtx->textSkip = 1;
        }
        scriptCtx->paragraphSkipDelayCounter = 8;
        if(scriptCtx->currentToken == 7)
        {
            scriptCtx->scriptPtr++;
            DmaCopy16(3, &gCharSet[226*0x80], OBJ_VRAM0 + 0x1F80, 0x80);
            scriptCtx->fullscreenCursorPos = 0;
            scriptCtx->flags |= SCRIPT_FULLSCREEN;
            scriptCtx->prevTextSpeed = scriptCtx->textSpeed;
            scriptCtx->textSpeed = 0;
            scriptCtx->fullscreenInputDelayCounter = 0x18;
            scriptCtx->textYOffset = 0x14;
            scriptCtx->textX = 0;
            scriptCtx->textY = 2;
            scriptCtx->fullscreenCharCount = 0;
            scriptCtx->fullscreenTextY = 2;
            scriptCtx->fullscreenTextX = 0;
            gMain.showTextboxCharacters = FALSE;
            SetTextboxSize(1);
            gMain.itemPlateState = 0; 
            gMain.itemPlateSize = 0;
            for (i = 0; i < ARRAY_COUNT(gMapMarker); i++)
            {
                gMapMarker[i].id |= 0xFF;
            }
            return 0;
        }
        scriptCtx->personAnimPauseCounter = 10;
        scriptCtx->flags |= 0x20;
        if(scriptCtx->currentToken == 0xA) // if script cmd is 0xA ?
        {
            if(gMain.hpBarValue > 0)
                scriptCtx->nextSection = *(scriptCtx->scriptPtr+1);
        }
        else
        {
            scriptCtx->textboxDownArrowIndex = 0;
            scriptCtx->textboxDownArrowDelayCounter = 0;
        }
        scriptCtx->textX = 0;
        scriptCtx->textY = 0;
        for (i = 0; i < ARRAY_COUNT(gTextBoxCharacters); i++)
        {
            gTextBoxCharacters[i].state &= ~0x8000;
        }
        if(scriptCtx->currentToken == 0x2)
            SetAnimationFrameOffset(&gAnimation[1], gMain.talkingAnimationOffset);
    }
    else
    {
        if((scriptCtx->flags & 1) == 0)
        {
            SetAnimationFrameOffset(&gAnimation[1], gMain.idleAnimationOffset);
            scriptCtx->flags |= 1;
        }
        if(gMain.process[GAME_PROCESS] != 9)
        {
            scriptCtx->textboxDownArrowDelayCounter++;
            if(scriptCtx->textboxDownArrowDelayCounter > 1)
            {
                scriptCtx->textboxDownArrowDelayCounter = 0;
                if(scriptCtx->textboxDownArrowIndex == 0 && gMain.process[GAME_PROCESS] == 7)
                {
                    scriptCtx->textboxDownArrowIndex = 0;
                }
                else
                {
                    scriptCtx->textboxDownArrowIndex++;
                    if(scriptCtx->textboxDownArrowIndex > 5)
                    {
                        scriptCtx->textboxDownArrowIndex = 0;
                    }
                }
            }
            gBG1MapBuffer[622] = gTextboxDownArrowTileIndexes[scriptCtx->textboxDownArrowIndex];
            gBG1MapBuffer[623] = gTextboxDownArrowTileIndexes[scriptCtx->textboxDownArrowIndex]+1;
            return 1;
        }
        scriptCtx->textboxDownArrowIndex = 0;
        scriptCtx->textboxDownArrowDelayCounter = 0;
        if(gBG1MapBuffer[622] != 9 && gBG1MapBuffer[622] != 0)
            gBG1MapBuffer[622] = 9;
        if(gBG1MapBuffer[623] != 9 && gBG1MapBuffer[623] != 0)
            gBG1MapBuffer[623] = 9;
    }
    return 1;
}

bool32 Command03(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    scriptCtx->textColor = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command04(struct ScriptContext * scriptCtx)
{

    if(gJoypad.pressedKeys & scriptCtx->scriptPtr[1]) 
        scriptCtx->scriptPtr+=2;
    return 1;
}

bool32 Command05(struct ScriptContext * scriptCtx)
{
    u16 bgmNum;
    scriptCtx->scriptPtr++;
    bgmNum = *scriptCtx->scriptPtr; 
    scriptCtx->scriptPtr++;
    FadeInBGM(*scriptCtx->scriptPtr, bgmNum);
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command06(struct ScriptContext * scriptCtx)
{
    u32 soundNum;
    u32 flag;
    scriptCtx->scriptPtr++;
    soundNum = *scriptCtx->scriptPtr >> 8;
    flag = *scriptCtx->scriptPtr & 1;
    if(flag)
        PlaySE(soundNum);
    else
        StopSE(soundNum);
    scriptCtx->scriptPtr++;
    return 0;
}


bool32 Command08(struct ScriptContext * scriptCtx)
{
    u32 i;
    if(gMain.process[GAME_PROCESS] == 0xA) 
        return 1;
    if(scriptCtx->flags & 0x20)
    {
        if(scriptCtx->personAnimPauseCounter > 0)
        {
            scriptCtx->personAnimPauseCounter--;
            return TRUE;
        }
        scriptCtx->flags &= ~0x20;
        scriptCtx->scriptPtr += 3;
        return TRUE;
    }
    if(gMain.process[GAME_PROCESS] == 7)
    {
        gOamObjects[OAM_IDX_TEXT_FULLSCREEN_POINTER].attr0 = SPRITE_ATTR0_CLEAR;
        return TRUE;
    }
    if(scriptCtx->fullscreenInputDelayCounter > 0)
    {
        scriptCtx->fullscreenInputDelayCounter--;
        return TRUE;
    }

    if(gJoypad.pressedKeys & DPAD_UP)
    {
        PlaySE(0x2A);
        scriptCtx->fullscreenCursorPos--;
        if(scriptCtx->fullscreenCursorPos > 1)
            scriptCtx->fullscreenCursorPos = 1;
    }
    else if(gJoypad.pressedKeys & DPAD_DOWN)
    {
        PlaySE(0x2A);
        scriptCtx->fullscreenCursorPos++;
        if(scriptCtx->fullscreenCursorPos > 1)
        {
            scriptCtx->fullscreenCursorPos = 0;
        }
    }
    else if(gJoypad.pressedKeys & A_BUTTON)
    {
        PlaySE(0x2B);
        scriptCtx->personAnimPauseCounter = 10;
        scriptCtx->flags |= 0x20;
        if(scriptCtx->fullscreenCursorPos == 0)
            scriptCtx->nextSection = *(scriptCtx->scriptPtr+1);
        else
            scriptCtx->nextSection = *(scriptCtx->scriptPtr+2);
        scriptCtx->textX = 0;
        scriptCtx->textY = 0;
        scriptCtx->flags &= ~SCRIPT_FULLSCREEN;
        scriptCtx->textYOffset = 0x74;
        scriptCtx->textSpeed = scriptCtx->prevTextSpeed;
        scriptCtx->textboxNameId = 0;
        SetTextboxSize(0);
        for(i = 0; i < 32; i++)
            gTextBoxCharacters[i].state &= ~0x8000;
        for(i = 58; i < 89; i++)
            gOamObjects[i].attr0 = SPRITE_ATTR0_CLEAR;
        gOamObjects[OAM_IDX_TEXT_FULLSCREEN_POINTER].attr0 = SPRITE_ATTR0_CLEAR;
        return FALSE;
    }
    gOamObjects[OAM_IDX_TEXT_FULLSCREEN_POINTER].attr0 = SPRITE_ATTR0(scriptCtx->fullscreenCursorPos*20 + scriptCtx->fullscreenTextYOffset, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
    gOamObjects[OAM_IDX_TEXT_FULLSCREEN_POINTER].attr1 = SPRITE_ATTR1_NONAFFINE(scriptCtx->fullscreenTextXOffset-13, FALSE, FALSE, 1);
    gOamObjects[OAM_IDX_TEXT_FULLSCREEN_POINTER].attr2 = SPRITE_ATTR2(0xFC, 1, 0);
    return TRUE;
}

bool32 Command09(struct ScriptContext * scriptCtx)
{
    u32 i;
    if(gMain.process[GAME_PROCESS] == 0xA) 
        return 1;
    if(scriptCtx->flags & 0x20)
    {
        if(scriptCtx->personAnimPauseCounter > 0)
        {
            scriptCtx->personAnimPauseCounter--;
            return TRUE;
        }
        scriptCtx->flags &= ~0x20;
        scriptCtx->scriptPtr += 4;
        return TRUE;
    }
    if(gMain.process[GAME_PROCESS] == 7)
    {
        gOamObjects[OAM_IDX_TEXT_FULLSCREEN_POINTER].attr0 = SPRITE_ATTR0_CLEAR;
        return TRUE;
    }
    if(scriptCtx->fullscreenInputDelayCounter > 0)
    {
        scriptCtx->fullscreenInputDelayCounter--;
        return TRUE;
    }
    
    if(gJoypad.pressedKeys & DPAD_UP)
    {
        PlaySE(0x2A);
        scriptCtx->fullscreenCursorPos--;
        if(scriptCtx->fullscreenCursorPos > 2)
        {
            scriptCtx->fullscreenCursorPos = 2;
        }
    }
    else if(gJoypad.pressedKeys & DPAD_DOWN)
    {
        PlaySE(0x2A);
        scriptCtx->fullscreenCursorPos++;
        if(scriptCtx->fullscreenCursorPos > 2)
        {
            scriptCtx->fullscreenCursorPos = 0;
        }
    }
    else if(gJoypad.pressedKeys & A_BUTTON)
    {
        PlaySE(0x2B);
        scriptCtx->personAnimPauseCounter = 10;
        scriptCtx->flags |= 0x20;
        if(scriptCtx->fullscreenCursorPos == 0)
            scriptCtx->nextSection = *(scriptCtx->scriptPtr+1);
        else if (scriptCtx->fullscreenCursorPos == 1)
            scriptCtx->nextSection = *(scriptCtx->scriptPtr+2);
        else
            scriptCtx->nextSection = *(scriptCtx->scriptPtr+3);
        scriptCtx->textX = 0;
        scriptCtx->textY = 0;
        scriptCtx->flags &= ~SCRIPT_FULLSCREEN;
        scriptCtx->textYOffset = 0x74;
        scriptCtx->textSpeed = scriptCtx->prevTextSpeed;
        scriptCtx->textboxNameId = 0;
        SetTextboxSize(0);
        for(i = 0; i < 32; i++)
            gTextBoxCharacters[i].state &= ~0x8000;
        for(i = 58; i < 89; i++)
            gOamObjects[i].attr0 = SPRITE_ATTR0_CLEAR;
        gOamObjects[OAM_IDX_TEXT_FULLSCREEN_POINTER].attr0 = SPRITE_ATTR0_CLEAR;
        return FALSE;
    }
    gOamObjects[OAM_IDX_TEXT_FULLSCREEN_POINTER].attr0 = SPRITE_ATTR0(scriptCtx->fullscreenCursorPos*20 + scriptCtx->fullscreenTextYOffset, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
    gOamObjects[OAM_IDX_TEXT_FULLSCREEN_POINTER].attr1 = SPRITE_ATTR1_NONAFFINE(scriptCtx->fullscreenTextXOffset-13, FALSE, FALSE, 1);
    gOamObjects[OAM_IDX_TEXT_FULLSCREEN_POINTER].attr2 = SPRITE_ATTR2(0xFC, 1, 0);
    return TRUE;
}

bool32 Command0B(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    scriptCtx->textSpeed = *scriptCtx->scriptPtr;
    scriptCtx->prevTextSpeed = scriptCtx->textSpeed;
    if(scriptCtx->textSpeed == 0xFF) {
        scriptCtx->textSpeed = 3;
        scriptCtx->prevTextSpeed = scriptCtx->textSpeed;
    }
    if(scriptCtx->textSkip > 1)
        scriptCtx->textSpeed = 0;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command0C(struct ScriptContext * scriptCtx)
{
    if(!gMain.blendMode != 0 && scriptCtx->textSkip > 1)
    {
        scriptCtx->scriptPtr++;
        scriptCtx->waitTimer = *scriptCtx->scriptPtr;
        scriptCtx->scriptPtr++;
        return 0;      
    }
    if(scriptCtx->waitTimer > 0)
    {
        scriptCtx->waitTimer--;
        if(scriptCtx->waitTimer != 0) 
            return 1;   
        scriptCtx->scriptPtr += 2;
        return 0;        
    }
    scriptCtx->scriptPtr++;
    scriptCtx->waitTimer = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr--;
    return 1;
}

bool32 Command0D(struct ScriptContext * scriptCtx)
{
    scriptCtx->previousSection = scriptCtx->currentSection;
    MarkSectionAsRead(&gMain, scriptCtx->currentSection);
    scriptCtx->currentSection = scriptCtx->nextSection;
    scriptCtx->scriptPtr++;
    return 2;
}

bool32 Command0E(struct ScriptContext * scriptCtx)
{
    u8 soundCue;
    scriptCtx->scriptPtr++;
    scriptCtx->textboxNameId = (*scriptCtx->scriptPtr >> 8);
    scriptCtx->textboxNameId &= ~0x80; // side bit
    CopyTextboxTilesToBG1MapBuffer();
    SetTextboxNametag(scriptCtx->textboxNameId, *scriptCtx->scriptPtr & 0xFF);
    soundCue = gSoundCueTable[scriptCtx->textboxNameId];
    scriptCtx->currentSoundCue = soundCue;
    if(soundCue == 2)
        scriptCtx->soundCueSkip = 0;
    if(*scriptCtx->scriptPtr & 0xFF)
        scriptCtx->textboxNameId |= 0x80;
    else
        scriptCtx->textboxNameId &= ~0x80;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command0F(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    scriptCtx->holdItSection = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    scriptCtx->holdItFlag = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command10(struct ScriptContext * scriptCtx)
{
    u32 flagType;
    u32 id;
    bool32 setFlag;
    scriptCtx->scriptPtr++;
    flagType = id = (setFlag = *scriptCtx->scriptPtr);
    scriptCtx->scriptPtr++;
    flagType = (flagType & 0x7F00) >> 8;
    id &= 0xFF;
    setFlag >>= 15;
    ChangeFlag(flagType, id, setFlag);
    return 0;
}

bool32 Command11(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    PlaySE(49);
    scriptCtx->flags |= 0x10;
    gMain.gameStateFlags |= 0x100;
    BACKUP_PROCESS();
    SET_PROCESS(7, 0, 0, 1);
    return 0;
}

bool32 Command12(struct ScriptContext * scriptCtx)
{
    u32 var0;
    u32 var1;
    u32 var2;
    scriptCtx->scriptPtr++;
    var0 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    var1 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    StartHardwareBlend(var0 >> 8, var0 & 0xFF, var1, *scriptCtx->scriptPtr);
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command13(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    gMain.itemPlateState = 3;
    gMain.itemPlateEvidenceId = *scriptCtx->scriptPtr;
    gMain.itemPlateSide = *scriptCtx->scriptPtr >> 8;
    scriptCtx->scriptPtr++;
    PlaySE(51);
    return 0;
}

bool32 Command14(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    gMain.itemPlateState = 1;
    PlaySE(51);
    return 0;
} 

bool32 Command15(struct ScriptContext * scriptCtx)
{
    if(scriptCtx->flags & SCRIPT_LOOP)
        return 1;
    if(*scriptCtx->scriptPtr == 0x15)
        SetAnimationFrameOffset(&gAnimation[1], gMain.idleAnimationOffset);
    scriptCtx->flags |= SCRIPT_LOOP;
    return 1;
}

bool32 Command16(struct ScriptContext * scriptCtx)
{
    struct Main *main = &gMain;
    scriptCtx->scriptPtr++;
    main->advanceScriptContext = FALSE;
    main->showTextboxCharacters = FALSE;
    main->hpBarValueAtEndOfSegment = main->hpBarValue;
    SET_PROCESS(3, 2, 0, 0);
    gInvestigation.selectedAction = 0;
    gInvestigation.lastAction = 0;
    main->scenarioIdx++;
    PlayBGM(230);
    return 1;
}

bool32 Command17(struct ScriptContext * scriptCtx)
{
    u16 evidenceId;
    u16 isProfile;
    s32 evidenceSlot;
    scriptCtx->scriptPtr++;
    evidenceId = *scriptCtx->scriptPtr & 0x3FFF;
    isProfile = *scriptCtx->scriptPtr & 0x8000;
    evidenceSlot = FindEvidenceInCourtRecord(isProfile, evidenceId);
    if(evidenceSlot < 0)
    {
        evidenceSlot = FindFirstEmptySlotInCourtRecord(isProfile);
        if(evidenceSlot >= 0)
        {
            if(isProfile)
            {
                gCourtRecord.profileList[evidenceSlot] = evidenceId;
                gCourtRecord.profileCount++;
            }
            else
            {
                gCourtRecord.evidenceList[evidenceSlot] = evidenceId;
                gCourtRecord.evidenceCount++;
            }
            
            if(*scriptCtx->scriptPtr & 0x4000) // should play animation for getting evidence
            {
                gMain.gottenEvidenceType = isProfile;
                gMain.gottenEvidenceId = evidenceId;
                BACKUP_PROCESS();
                SET_PROCESS(8, 0, 0, 0);
            }
            
        }
    }
    scriptCtx->scriptPtr++;
    return 1;
}

bool32 Command18(struct ScriptContext * scriptCtx)
{
    u16 evidenceId;
    u16 isProfile;
    s32 evidenceSlot;
    scriptCtx->scriptPtr++;
    evidenceId = *scriptCtx->scriptPtr & 0x3FFF;
    isProfile = *scriptCtx->scriptPtr & 0x8000;
    evidenceSlot = FindEvidenceInCourtRecord(isProfile, evidenceId);
    if(evidenceSlot >= 0)
    {
        if(isProfile)
            gCourtRecord.profileList[evidenceSlot] = 0xFF;
        else
            gCourtRecord.evidenceList[evidenceSlot] = 0xFF;
        SortCourtRecordAndSyncListCount(&gCourtRecord);
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command19(struct ScriptContext * scriptCtx)
{
    u16 evidenceId;
    u16 isProfile;
    u32 var0;
    s32 evidenceSlot;
    scriptCtx->scriptPtr++;
    evidenceId = *scriptCtx->scriptPtr & 0x3FFF;
    isProfile = *scriptCtx->scriptPtr & 0x8000;
    var0 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    evidenceSlot = FindEvidenceInCourtRecord(isProfile, evidenceId);
    if(evidenceSlot >= 0)
    {
        evidenceId = *scriptCtx->scriptPtr & 0x3FFF;
        if(isProfile)
            gCourtRecord.profileList[evidenceSlot] = evidenceId;
        else
            gCourtRecord.evidenceList[evidenceSlot] = evidenceId;
        if(var0 & 0x4000) // should play animation for getting evidence
        {
            gMain.gottenEvidenceType = isProfile;
            gMain.gottenEvidenceId = evidenceId;
            BACKUP_PROCESS();
            SET_PROCESS(8, 0, 0, 0);
        }
    }
    scriptCtx->scriptPtr++;
    return 0;
}

u32 Command1A(struct ScriptContext * scriptCtx)
{
    u32 var0;
    u32 var1;
    u32 var2;
    u32 var3;

    scriptCtx->scriptPtr++;
    var0 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    var1 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    var2 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    
    SetCourtScrollPersonAnim(var0, var1, var2, *scriptCtx->scriptPtr);
    var0 = (u32)gCourtScrollGfxPointers[var0];
    var2 = var1 & 1 ? 30 : 0;
    InitCourtScroll((u8 *)var0, var2, 31, var1);
    scriptCtx->scriptPtr++;
    return 0;
}

u32 Command1B(struct ScriptContext * scriptCtx) // ! probably fakematch
{
    scriptCtx->scriptPtr++;
    if(gMain.currentBG != *scriptCtx->scriptPtr)
    {
        changeBG:
        gMain.previousBG = gMain.currentBG;
        gMain.currentBG = *scriptCtx->scriptPtr;
        gMain.currentBgStripe = 1;
        scriptCtx->scriptPtr++;
        return 1;
    }
    if(gMain.currentBG != 0x10 && (gScriptContext.flags & 0x40) == 0)
    {
        scriptCtx->scriptPtr++;
        return 0;
    }
    else
    {
        goto changeBG;
    }
}

u32 Command1C(struct ScriptContext * scriptCtx)
{
    int i;
    scriptCtx->scriptPtr++;
    switch(*scriptCtx->scriptPtr)
    {
        case 0: // enable textbox
            gMain.showTextboxCharacters = TRUE;
            gIORegisters.lcd_dispcnt |= DISPCNT_BG1_ON;
            gIORegisters.lcd_bg1vofs = 0;
            CopyTextboxTilesToBG1MapBuffer();
            SetTextboxNametag(gMain.unk2BC, gMain.unk2BD);
            break;
        case 1: // disable textbox
            gMain.showTextboxCharacters = FALSE;
            for(i = 0; i < 256; i++)
                gBG1MapBuffer[0x180 + i] = 0;
            break;
        case 2:
            if(gMain.process[GAME_PROCESS] == 3)
            {
                DestroyAnimation(&gAnimation[1]);
                gInvestigation.personActive = 0;
                SetInactiveActionButtons(&gInvestigation, 15);
            }
            SlideTextbox(1);
            break;
        case 3:
            if(gMain.process[GAME_PROCESS] == 3)
            {
                DestroyAnimation(&gAnimation[1]);
                gInvestigation.personActive = 0;
                SetInactiveActionButtons(&gInvestigation, 15);
            }
            SlideTextbox(0);
            if(gMain.process[GAME_PROCESS] == 4)
            {
                gInvestigation.selectedActionYOffset = 0;
                if(gMain.process[GAME_PROCESS_STATE] == 6)
                {
                    SetInactiveActionButtons(&gInvestigation, 1);
                }
                if(gMain.process[GAME_PROCESS_STATE] == 8)
                {
                    SetInactiveActionButtons(&gInvestigation, 4);
                    gInvestigation.actionState = 4;
                }
                if(gMain.process[GAME_PROCESS_STATE] == 9)
                {
                    SetInactiveActionButtons(&gInvestigation, 8);
                }
            }
            break;
        case 6:
            gInvestigation.selectedActionYOffset = 0;
            if(gMain.process[GAME_PROCESS_STATE] == 6)
                SetInactiveActionButtons(&gInvestigation, 1);
            if(gMain.process[GAME_PROCESS_STATE] == 8)
            {
                SetInactiveActionButtons(&gInvestigation, 4);
                gInvestigation.actionState = 4;
                gMain.advanceScriptContext = FALSE;
                gMain.showTextboxCharacters = FALSE;
                scriptCtx->textboxState = 4;
                break;
            }
            if(gMain.process[GAME_PROCESS_STATE] == 9)
                SetInactiveActionButtons(&gInvestigation, 8);
            gMain.advanceScriptContext = FALSE;
            gMain.showTextboxCharacters = FALSE;
            scriptCtx->textboxState = 4;
            gInvestigation.actionState = 1;
            break;
        case 4:
            gIORegisters.lcd_bg1vofs = 0;
            gIORegisters.lcd_dispcnt |= DISPCNT_BG1_ON;
            scriptCtx->textboxState = 0;
            break;
        case 5:
            gIORegisters.lcd_bg1vofs = -81;
            gIORegisters.lcd_dispcnt &= ~DISPCNT_BG1_ON;
            scriptCtx->textboxState = 1;
            break;
        default:
            break;
    }
    scriptCtx->scriptPtr++;
    gInvestigation.inspectionPaused = 0;
    return 0;
}

u32 Command1D(struct ScriptContext * scriptCtx)
{
    u32 bits;
    u32 var1;
    scriptCtx->scriptPtr++;
    bits = GetBGControlBits(gMain.currentBG);
    if(bits & 0xF)
        gMain.isBGScrolling = 1;
    else
        gMain.isBGScrolling = 0;
    var1 = *scriptCtx->scriptPtr;
    switch(var1 >> 8)
    {
        case BG_SHIFT_LEFT:
            gMain.horizontolBGScrollSpeed = -(u8)var1;
            break;
        case BG_SHIFT_RIGHT:
            gMain.horizontolBGScrollSpeed = (u8)var1;
            break;
        case BG_SHIFT_UP:
            gMain.verticalBGScrollSpeed = -(u8)var1;
            break;
        case BG_SHIFT_DOWN:
            gMain.verticalBGScrollSpeed = (u8)var1;
            break;
    }
    scriptCtx->scriptPtr++;
    return 0;
}

u32 Command1E(struct ScriptContext * scriptCtx)
{
    u32 var0;
    u32 var1;
    u32 var2;
    scriptCtx->scriptPtr++;
    var0 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    var1 = *scriptCtx->scriptPtr;
    gMain.talkingAnimationOffset = var1;
    scriptCtx->scriptPtr++;
    var2 = *scriptCtx->scriptPtr;
    gMain.idleAnimationOffset = var2;
    scriptCtx->scriptPtr++;
    if(var0 != 0)
    {
        PlayPersonAnimation(var0, 0, var1, 0);
        gInvestigation.personActive = 1;
        SetInactiveActionButtons(&gInvestigation, 15);
    }
    else
    {
        DestroyAnimation(&gAnimation[1]);
        gInvestigation.personActive = 0;
        SetInactiveActionButtons(&gInvestigation, 15);
    }
    return 0;
}

u32 Command1F(struct ScriptContext * scriptCtx)
{
    u32 i;
    u16 * tilemapBuffer;
    scriptCtx->scriptPtr++;
    gIORegisters.lcd_dispcnt &= ~DISPCNT_BG2_ON;
    gIORegisters.lcd_dispcnt |= DISPCNT_BG3_ON;
    tilemapBuffer = gBG2MapBuffer;
    for(i = 0; i < 0x2A0; i++, tilemapBuffer++)
       *tilemapBuffer = 0;
    gIORegisters.lcd_bg2cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(30) | BGCNT_16COLOR | BGCNT_WRAP; // TODO: add TXT/AFF macro once known which one is used
    gIORegisters.lcd_bg2hofs = 8;
    scriptCtx->flags &= ~0x40;
    return 0;
}

u32 Command20(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    scriptCtx->nextSection = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command21(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    PlaySE(SE007_MENU_OPEN_SUBMENU);
    scriptCtx->flags |= 0x10;
    gMain.gameStateFlags |= 0x300;
    BACKUP_PROCESS();
    SET_PROCESS(7, 0, 0, 1);
    return 0;
}

bool32 Command22(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    // skips a token
    scriptCtx->scriptPtr++;
    if (*scriptCtx->scriptPtr)
        FadeOutBGM(*scriptCtx->scriptPtr);
    else
        StopBGM();
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command23(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    // skips a token
    scriptCtx->scriptPtr++;
    if (*scriptCtx->scriptPtr)
        UnpauseBGM();
    else
        PauseBGM();
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command24(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    gMain.advanceScriptContext = FALSE;
    gMain.showTextboxCharacters = FALSE;
    SET_PROCESS(2, 0, 0, 0);
    return 1;
}

bool32 Command25(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    scriptCtx->previousSection = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command26(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    if (*scriptCtx->scriptPtr != 0) {
        gMain.gameStateFlags |= 0x10;
        scriptCtx->textSkip = 0;
    }
    else
        gMain.gameStateFlags &= ~0x10;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command27(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    gMain.shakeTimer = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    gMain.gameStateFlags |= 1;
    gMain.shakeIntensity = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command28(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    if (*scriptCtx->scriptPtr)
    {
        BACKUP_PROCESS();
        SET_PROCESS(5, 0, 0, 0); // start testimony
    }
    else
    {
        gMain.process[GAME_PROCESS_STATE]++;
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command29(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    if (*scriptCtx->scriptPtr == 3)
    {
        gTestimony.pressPromptY = 0xE0;
        gTestimony.presentPromptY = 0xE0;
        gTestimony.displayState = 2;
        gIORegisters.lcd_dispcnt &= ~DISPCNT_BG1_ON;
    }
    else if (*scriptCtx->scriptPtr == 2)
    {
        gTestimony.pressPromptY = 0xE0;
        gTestimony.presentPromptY = 0xE0;
        gTestimony.displayState = 0;
        gIORegisters.lcd_dispcnt |= DISPCNT_BG1_ON;
    }
    else if (*scriptCtx->scriptPtr == 4)
    {
        DmaCopy16(3, gGfxPressPresentButtons, OBJ_VRAM0 + 0x3000, 0x400);
        DmaCopy16(3, gPalPressPresentButtons, OBJ_PLTT+0xA0, 0x20);
        DmaCopy16(3, gGfx4bppTestimonyArrows, 0x1A0, 0x80);
        DmaCopy16(3, gGfx4bppTestimonyArrows + 12 * TILE_SIZE_4BPP, 0x220, 0x80);
        gTestimony.pressPromptY = 0xE0;
        gTestimony.presentPromptY = 0xE0;
        gTestimony.displayState = 0;
        gIORegisters.lcd_dispcnt |= DISPCNT_BG1_ON;
        SET_PROCESS(6, 1, 0, 0);
    }
    else if (*scriptCtx->scriptPtr != 0)
    {
        BACKUP_PROCESS();
        SET_PROCESS(6, 0, 0, 0); // return to testimony
    }
    else
    {
        SET_PROCESS(3, 1, 0, 0); // goes back into trial process
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command2A(struct ScriptContext *scriptCtx)
{
    u32 nextSection;
    scriptCtx->scriptPtr++;
    if (GetFlag(0, *scriptCtx->scriptPtr))
    {
        nextSection = *(scriptCtx->scriptPtr + 1);
    }
    else
    {
        nextSection = *(scriptCtx->scriptPtr + 2);
    }
    scriptCtx->nextSection = nextSection;
    scriptCtx->scriptPtr += 3;
    return 0;
}

bool32 Command2B(struct ScriptContext *scriptCtx) // nooped take damage command 
{
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command2C(struct ScriptContext *scriptCtx)
{
    u32 i;
    scriptCtx->scriptPtr++;
    scriptCtx->nextSection = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    scriptCtx->textX = 0;
    scriptCtx->textY = 0;
    for (i = 0; i < ARRAY_COUNT(gTextBoxCharacters); i++)
    {
        gTextBoxCharacters[i].state &= ~0x8000;
    }
    if(gBG1MapBuffer[622] != 9 && gBG1MapBuffer[622] != 0)
        gBG1MapBuffer[622] = 9; // clear downward arrow in text box
    if(gBG1MapBuffer[623] != 9 && gBG1MapBuffer[623] != 0)
        gBG1MapBuffer[623] = 9; // clear downward arrow in text box
    SetAnimationFrameOffset(&gAnimation[1], gMain.idleAnimationOffset);
    return 0;
}

bool32 Command2E(struct ScriptContext *scriptCtx)
{
    u32 i;
    scriptCtx->flags &= ~(0x2 | 0x1);
    scriptCtx->scriptPtr++;
    scriptCtx->textX = 0;
    scriptCtx->textY = 0;
    scriptCtx->textboxDownArrowIndex = 0;
    scriptCtx->textboxDownArrowDelayCounter = 0;
    for (i = 0; i < ARRAY_COUNT(gTextBoxCharacters); i++)
    {
        gTextBoxCharacters[i].state &= ~0x8000;
    }
    if(gBG1MapBuffer[622] != 9 && gBG1MapBuffer[622] != 0)
        gBG1MapBuffer[622] = 9; // clear downward arrow in text box
    if(gBG1MapBuffer[623] != 9 && gBG1MapBuffer[623] != 0)
        gBG1MapBuffer[623] = 9; // clear downward arrow in text box
    return 1;
}

bool32 Command2F(struct ScriptContext *scriptCtx)
{
    u32 temp;
    scriptCtx->scriptPtr++;
    temp = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    if (*scriptCtx->scriptPtr)
        PlayAnimation(temp);
    else
        DestroyAnimation(FindAnimationFromAnimId(temp));
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command30(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    scriptCtx->currentSoundCue = *scriptCtx->scriptPtr;
    if (scriptCtx->currentSoundCue == 2)
    {
        scriptCtx->soundCueSkip = 0;
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command31(struct ScriptContext *scriptCtx)
{
    u32 flags, blendDelay;
    scriptCtx->scriptPtr++;
    flags = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    blendDelay = *scriptCtx->scriptPtr;
    StartAnimationBlend(flags, blendDelay);
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command32(struct ScriptContext *scriptCtx)
{
    u32 location, bgId;
    scriptCtx->scriptPtr++;
    location = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    bgId = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    gMain.roomData[location][0] = bgId;
    return 0;
}

bool32 Command33(struct ScriptContext *scriptCtx)
{
    u32 startingLocation;

    scriptCtx->scriptPtr++;
    startingLocation = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    gMain.roomData[startingLocation][1] = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    gMain.roomData[startingLocation][2] = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    gMain.roomData[startingLocation][3] = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    gMain.roomData[startingLocation][4] = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command34(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    gMain.currentRoomId = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    StartHardwareBlend(2, 0, 2, 0x1F);
    SET_PROCESS(INVESTIGATION_PROCESS, INVESTIGATION_ROOM_INIT, 0, 0);
    return 0;
}

bool32 Command35(struct ScriptContext *scriptCtx)
{
    u32 offset;
    u32 flag;
    u32 temp;
    u16 *jmpArgs;

    scriptCtx->scriptPtr++;
    flag = *scriptCtx->scriptPtr >> 8;

    if (*scriptCtx->scriptPtr & 1)
    {
        if (!GetFlag(0, flag))
        {
            scriptCtx->scriptPtr += 2;
            return 0;
        }
    }
    else
    {
        if (GetFlag(0, flag))
        {
            scriptCtx->scriptPtr += 2;
            return 0;
        }
    }
    if (*scriptCtx->scriptPtr & 0x80)
    {
        u32 *heapPtr;
        scriptCtx->scriptPtr++;
        temp = *scriptCtx->scriptPtr;
        scriptCtx->scriptPtr++;
        heapPtr = eScriptHeap;
        heapPtr += temp + 1;
        jmpArgs = (u16 *)heapPtr;
        offset = jmpArgs[0] / 2;
        temp = jmpArgs[1];
        MarkSectionAsRead(&gMain, scriptCtx->currentSection);
        gScriptContext.textSkip = 0; // ! INCONFUCKINGSISTENT USE OF POINTERS AND GLOBALS
        scriptCtx->currentSection = temp + 0x80;
        heapPtr = eScriptHeap;
        heapPtr += temp + 1;
        scriptCtx->scriptSectionPtr = eScriptHeap + *heapPtr;
        scriptCtx->scriptPtr = scriptCtx->scriptSectionPtr + offset;
    }
    else
    {
        scriptCtx->scriptPtr++;
        temp = *scriptCtx->scriptPtr / 2;
        scriptCtx->scriptPtr = scriptCtx->scriptSectionPtr + temp;
    }
    return 0;
}

bool32 Command36(struct ScriptContext *scriptCtx)
{
    u32 idx;
    u32 offset;
    u32 *heapPtr;
    u16 *ptr;
    scriptCtx->scriptPtr++;
    idx = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    heapPtr = eScriptHeap;
    ptr = (u16 *)(heapPtr + idx + 1);
    offset = ptr[0] / 2;
    idx = ptr[1];
    MarkSectionAsRead(&gMain, scriptCtx->currentSection);
    gScriptContext.textSkip = 0; // ! INCONFUCKINGSISTENT USE OF POINTERS AND GLOBALS
    scriptCtx->currentSection = idx + 0x80;
    scriptCtx->scriptSectionPtr = eScriptHeap + ((u32 *)eScriptHeap)[idx + 1];
    scriptCtx->scriptPtr = scriptCtx->scriptSectionPtr + offset;
    return 0;
}

bool32 Command37(struct ScriptContext *scriptCtx)
{
    u32 temp;
    scriptCtx->scriptPtr++;
    temp = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    gTalkData[temp].enableFlag = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command38(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    if (*scriptCtx->scriptPtr)
    {
        ChangeAnimationActivity(&gAnimation[1], 1);
    }
    else
    {
        ChangeAnimationActivity(&gAnimation[1], 0);
    }
    scriptCtx->scriptPtr++;
    return 0;
}

struct MapMarkerSprite
{
    /* +0x00 */ u8 *tiles;
    /* +0x04 */ u16 size;
    /* +0x06 */ u16 attr0;
    /* +0x08 */ u16 attr1;
    /* +0x0A */ u16 attr2;
};

const struct MapMarkerSprite sMapMarkerSprites[] = {
    {
        .tiles = gGfxMapMarkersKiller,
        .size = 0x80,
        .attr0 = 0x0000,
        .attr1 = 0x4000,
        .attr2 = 0x0000,
    },
    {
        .tiles = gGfxMapMarkersVictim,
        .size = 0x80,
        .attr0 = 0x0000,
        .attr1 = 0x4000,
        .attr2 = 0x0000,
    },
    {
        .tiles = gGfxMapMarkersGreen,
        .size = 0x80,
        .attr0 = 0x0000,
        .attr1 = 0x4000,
        .attr2 = 0x0000,
    },
    {
        .tiles = gGfxMapMarkersDoubleDoorDiagram,
        .size = 0x400,
        .attr0 = 0x8000,
        .attr1 = 0xc000,
        .attr2 = 0x0000,
    },
    {
        .tiles = gGfxMapMarkersFoldingScreen,
        .size = 0x100,
        .attr0 = 0x8000,
        .attr1 = 0x8000,
        .attr2 = 0x0000,
    },
    {
        .tiles = gUnknown_08232288,
        .size = 0x100,
        .attr0 = 0x8000,
        .attr1 = 0x8000,
        .attr2 = 0x0000,
    },
    {
        .tiles = gUnknown_08232388,
        .size = 0x100,
        .attr0 = 0x8000,
        .attr1 = 0x8000,
        .attr2 = 0x0000,
    },
    {
        .tiles = gGfxMapMarkersGreen,
        .size = 0x80,
        .attr0 = 0x0000,
        .attr1 = 0x4000,
        .attr2 = 0x0000,
    },
    {
        .tiles = gGfxMapMarkersRedDot,
        .size = 0x20,
        .attr0 = 0x0000,
        .attr1 = 0x0000,
        .attr2 = 0x0000,
    },
};

bool32 Command39(struct ScriptContext *scriptCtx)
{
    u32 id;
    u32 oamIdx;
    struct MapMarker *mapMarker;
    struct OamAttrs *oamObject;
    scriptCtx->scriptPtr++;
    id = *scriptCtx->scriptPtr >> 8;
    if (*scriptCtx->scriptPtr & 1)
    {
        oamIdx = GetMapMarkerIndexFromId(id);
        if (oamIdx == 0xFF)
        {
            u32 size;
            oamIdx = GetMapMarkerIndexFromId(0xFF);
            mapMarker = &gMapMarker[oamIdx];
            oamIdx += 0x39;
            mapMarker->id = id;
            mapMarker->vramPtr = scriptCtx->mapMarkerVramPtr;
            DmaCopy16(3, sMapMarkerSprites[id].tiles, mapMarker->vramPtr, size = sMapMarkerSprites[id].size); // weird shit going on here
            DmaCopy16(3, gPalMapMarkers, OBJ_PLTT + 0xC0, 0x20);
            mapMarker->oamIdx = oamIdx;
            oamObject = &gOamObjects[oamIdx];

            oamObject->attr0 = sMapMarkerSprites[id].attr0;
            mapMarker->attr0 = oamObject->attr0;

            oamObject->attr1 = sMapMarkerSprites[id].attr1;
            mapMarker->attr1 = oamObject->attr1;

            oamIdx = ((uintptr_t)mapMarker->vramPtr - ((uintptr_t)OBJ_VRAM0 + 0x1800));
            oamIdx /= 32;
            oamObject->attr2 = SPRITE_ATTR2(oamIdx + 0xC0, 2, 6);
            mapMarker->attr2 = oamObject->attr2;

            scriptCtx->mapMarkerVramPtr += size;
        }
        else
        {
            mapMarker = &gMapMarker[oamIdx];
            oamObject = &gOamObjects[mapMarker->oamIdx];
            oamObject->attr0 = mapMarker->attr0;
            oamObject->attr1 = mapMarker->attr1;
            oamObject->attr2 = mapMarker->attr2;
            mapMarker->flags &= ~0x4;
        }
    }
    else
    {
        // TODO: BUGFIX
        // ! Capcom forgot to check for 0xFF here.
        oamIdx = GetMapMarkerIndexFromId(id);
        gMapMarker[oamIdx].flags |= 4;
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command3A(struct ScriptContext *scriptCtx)
{
    u32 oamIdx;
    scriptCtx->scriptPtr++;
    oamIdx = GetMapMarkerIndexFromId(*scriptCtx->scriptPtr >> 8);
    if (oamIdx != 0xFF)
    {
        scriptCtx->scriptPtr++;
        gMapMarker[oamIdx].attr0 &= ~0xFF;
        gMapMarker[oamIdx].attr0 |= (u8)*scriptCtx->scriptPtr;
        gMapMarker[oamIdx].attr1 &= ~0x1FF;
        gMapMarker[oamIdx].attr1 |= (u8)(*scriptCtx->scriptPtr >> 8);
        scriptCtx->scriptPtr++;
    }
    else
    {
        scriptCtx->scriptPtr++;
        scriptCtx->scriptPtr++;
    }
    return 0;
}

bool32 Command3B(struct ScriptContext *scriptCtx)
{
    u32 oamIdx;
    scriptCtx->scriptPtr++;
    oamIdx = GetMapMarkerIndexFromId(*scriptCtx->scriptPtr >> 8);
    if (oamIdx != 0xFF)
    {
        gMapMarker[oamIdx].direction = (u8)*scriptCtx->scriptPtr & 3;
        scriptCtx->scriptPtr++;
        gMapMarker[oamIdx].speed = (u8)(*scriptCtx->scriptPtr >> 8);
        gMapMarker[oamIdx].distanceToMove = (u8)*scriptCtx->scriptPtr;
        scriptCtx->scriptPtr++;
        gMapMarker[oamIdx].flags |= 2;
        gMapMarker[oamIdx].distanceMoved = 0;
    }
    else
    {
        scriptCtx->scriptPtr++;
        scriptCtx->scriptPtr++;
    }
    return 0;
}

bool32 Command3C(struct ScriptContext *scriptCtx)
{
    u32 oamIdx;
    scriptCtx->scriptPtr++;
    oamIdx = GetMapMarkerIndexFromId(*scriptCtx->scriptPtr >> 8);
    if (oamIdx != 0xFF)
    {
        gMapMarker[oamIdx].isBlinking = *scriptCtx->scriptPtr;
        if (!(*scriptCtx->scriptPtr & 1))
        {
            gOamObjects[oamIdx + 0x39].attr1 = gMapMarker[oamIdx].attr1;
        }
    }
    gMapMarker[oamIdx].blinkTimer = 0;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command3D(struct ScriptContext *scriptCtx)
{
    u32 oamIdx;
    scriptCtx->scriptPtr++;
    oamIdx = GetMapMarkerIndexFromId(*scriptCtx->scriptPtr >> 8);
    if (oamIdx != 0xFF)
    {
        if (gMapMarker[oamIdx].flags & 2)
        {
            scriptCtx->scriptPtr--;
            return 1;
        }
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command3E(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    DmaCopy16(3, gGfxExamineCursor, OBJ_VRAM0 + 0x1F80, 0x80);
    DmaCopy16(3, &gPalExamineCursors[0], OBJ_PLTT + 0x100, 0x20);
    gInvestigation.pointerX = 0xF0;
    gInvestigation.pointerY = 0x30;
    gInvestigation.pointerColorCounter = 0;
    gInvestigation.pointerColor = 8;
    gInvestigation.spotselectStartCounter = 0xF;
    gInvestigation.spotselectId = *scriptCtx->scriptPtr;
    scriptCtx->flags |= (SCRIPT_SPOTSELECT_MOVE_TO_START | SCRIPT_SPOTSELECT_PLAY_SPAWN_SOUND);
    scriptCtx->scriptPtr++;
    return 0;
}

struct SpotSelectData
{
    /* +0x00 */ struct Point4 firstArea;
    /* +0x10 */ struct Point4 secondArea;
    /* +0x20 */ u16 firstAreaSection;
    /* +0x22 */ u16 secondAreaSection;
    /* +0x24 */ u16 defaultSection;
    /* +0x26 */ u16 unk26; // Unused, called a dummy in unity
    /* +0x28 */ u8 left;
    /* +0x29 */ u8 top;
    /* +0x2A */ u8 right;
    /* +0x2B */ u8 bottom;
};

const struct SpotSelectData gSpotSelectData[] = {
    {
        .firstArea = {
            .points = {
                {
                    .x = 0xA8,
                    .y = 0x47,
                },
                {
                    .x = 0xB1,
                    .y = 0x46,
                },
                {
                    .x = 0xB2,
                    .y = 0x50,
                },
                {
                    .x = 0xAA,
                    .y = 0x4D,
                },
            },
        },
        .secondArea = {
            .points = {
                {
                    .x = 0x44,
                    .y = 0x33,
                },
                {
                    .x = 0x5E,
                    .y = 0x39,
                },
                {
                    .x = 0x7C,
                    .y = 0x55,
                },
                {
                    .x = 0x50,
                    .y = 0x54,
                },
            },
        },
        .firstAreaSection = 0xB0,
        .secondAreaSection = 0xAE,
        .defaultSection = 0xAF,
        .unk26 = 0,
        .left = 2,
        .top = 2,
        .right = 222,
        .bottom = 102,
    },
    {
        .firstArea = {
            .points = {
                {
                    .x = 0x9E,
                    .y = 0x47,
                },
                {
                    .x = 0xC1,
                    .y = 0x53,
                },
                {
                    .x = 0xBB,
                    .y = 0x5D,
                },
                {
                    .x = 0x97,
                    .y = 0x51,
                },
            },
        },
        .secondArea = {
            .points = {
                {
                    .x = 0xC7,
                    .y = 0x12,
                },
                {
                    .x = 0xDA,
                    .y = 0x12,
                },
                {
                    .x = 0xDA,
                    .y = 0x5C,
                },
                {
                    .x = 0xC7,
                    .y = 0x5C,
                },
            },
        },
        .firstAreaSection = 0xC8,
        .secondAreaSection = 0xC6,
        .defaultSection = 0xC7,
        .unk26 = 0,
        .left = 2,
        .top = 2,
        .right = 222,
        .bottom = 102,
    },
    {
        .firstArea = {
            .points = {
                {
                    .x = 0x97,
                    .y = 0x49,
                },
                {
                    .x = 0xBB,
                    .y = 0x2D,
                },
                {
                    .x = 0xC8,
                    .y = 0x4E,
                },
                {
                    .x = 0xAB,
                    .y = 0x5B,
                },
            },
        },
        .secondArea = {
            .points = {
                {
                    .x = 0x3E,
                    .y = 0x8,
                },
                {
                    .x = 0x5F,
                    .y = 0x9,
                },
                {
                    .x = 0x5B,
                    .y = 0x21,
                },
                {
                    .x = 0x42,
                    .y = 0x1E,
                },
            },
        },
        .firstAreaSection = 0xD4,
        .secondAreaSection = 0xD1,
        .defaultSection = 0xD3,
        .unk26 = 0,
        .left = 2,
        .top = 2,
        .right = 222,
        .bottom = 102,
    },
    {
        .firstArea = {
            .points = {
                {
                    .x = 0x2C,
                    .y = 0x8,
                },
                {
                    .x = 0x4E,
                    .y = 0x8,
                },
                {
                    .x = 0x4E,
                    .y = 0x44,
                },
                {
                    .x = 0x2C,
                    .y = 0x44,
                },
            },
        },
        .secondArea = {
            .points = {
                {
                    .x = 0x0,
                    .y = 0x0,
                },
                {
                    .x = 0x1,
                    .y = 0x0,
                },
                {
                    .x = 0x1,
                    .y = 0x1,
                },
                {
                    .x = 0x0,
                    .y = 0x1,
                },
            },
        },
        .firstAreaSection = 0xFE,
        .secondAreaSection = 0xFD,
        .defaultSection = 0xFD,
        .unk26 = 0,
        .left = 2,
        .top = 2,
        .right = 222,
        .bottom = 102,
    },
    {
        .firstArea = {
            .points = {
                {
                    .x = 0xC7,
                    .y = 0x12,
                },
                {
                    .x = 0xDA,
                    .y = 0x12,
                },
                {
                    .x = 0xDA,
                    .y = 0x5C,
                },
                {
                    .x = 0xC7,
                    .y = 0x5C,
                },
            },
        },
        .secondArea = {
            .points = {
                {
                    .x = 0x0,
                    .y = 0x0,
                },
                {
                    .x = 0x1,
                    .y = 0x0,
                },
                {
                    .x = 0x1,
                    .y = 0x1,
                },
                {
                    .x = 0x0,
                    .y = 0x1,
                },
            },
        },
        .firstAreaSection = 0x101,
        .secondAreaSection = 0x100,
        .defaultSection = 0x100,
        .unk26 = 0,
        .left = 2,
        .top = 2,
        .right = 222,
        .bottom = 102,
    },
    {
        .firstArea = {
            .points = {
                {
                    .x = 0xA1,
                    .y = 0x12,
                },
                {
                    .x = 0xB6,
                    .y = 0x12,
                },
                {
                    .x = 0xB6,
                    .y = 0x49,
                },
                {
                    .x = 0xA1,
                    .y = 0x49,
                },
            },
        },
        .secondArea = {
            .points = {
                {
                    .x = 0x6E,
                    .y = 0x49,
                },
                {
                    .x = 0xB6,
                    .y = 0x49,
                },
                {
                    .x = 0xB6,
                    .y = 0x5E,
                },
                {
                    .x = 0x6E,
                    .y = 0x5E,
                },
            },
        },
        .firstAreaSection = 0x125,
        .secondAreaSection = 0x125,
        .defaultSection = 0x124,
        .unk26 = 0,
        .left = 2,
        .top = 16,
        .right = 222,
        .bottom = 102,
    },
    {
        .firstArea = {
            .points = {
                {
                    .x = 0xC1,
                    .y = 0x27,
                },
                {
                    .x = 0xE9,
                    .y = 0x27,
                },
                {
                    .x = 0xE9,
                    .y = 0x45,
                },
                {
                    .x = 0xC1,
                    .y = 0x45,
                },
            },
        },
        .secondArea = {
            .points = {
                {
                    .x = 0x97,
                    .y = 0x27,
                },
                {
                    .x = 0xC0,
                    .y = 0x27,
                },
                {
                    .x = 0xC0,
                    .y = 0x45,
                },
                {
                    .x = 0x97,
                    .y = 0x45,
                },
            },
        },
        .firstAreaSection = 0xA2,
        .secondAreaSection = 0x9F,
        .defaultSection = 0xA0,
        .unk26 = 0,
        .left = 2,
        .top = 2,
        .right = 222,
        .bottom = 102,
    },
    {
        .firstArea = {
            .points = {
                {
                    .x = 0x41,
                    .y = 0x4E,
                },
                {
                    .x = 0x7D,
                    .y = 0x6D,
                },
                {
                    .x = 0x73,
                    .y = 0x7E,
                },
                {
                    .x = 0x39,
                    .y = 0x62,
                },
            },
        },
        .secondArea = {
            .points = {
                {
                    .x = 0x78,
                    .y = 0x8,
                },
                {
                    .x = 0x92,
                    .y = 0x8,
                },
                {
                    .x = 0x75,
                    .y = 0x67,
                },
                {
                    .x = 0x46,
                    .y = 0x50,
                },
            },
        },
        .firstAreaSection = 0xF7,
        .secondAreaSection = 0xF4,
        .defaultSection = 0xF6,
        .unk26 = 0,
        .left = 2,
        .top = 2,
        .right = 222,
        .bottom = 102,
    },
};

bool32 Command3F(struct ScriptContext *scriptCtx)
{
    struct InvestigationStruct *investigation = &gInvestigation;
    const struct SpotSelectData *spotselect;
    struct Rect rect;

    if (scriptCtx->flags & SCRIPT_SPOTSELECT_MOVE_TO_START)
    {
        investigation->pointerX += investigation->spotselectStartCounter;
        investigation->pointerX &= 0xFF;
        investigation->spotselectStartCounter--;
        if (investigation->spotselectStartCounter == 0)
        {
            scriptCtx->flags &= ~SCRIPT_SPOTSELECT_MOVE_TO_START;
            scriptCtx->flags |= (SCRIPT_SPOTSELECT_INPUT | SCRIPT_LOOP);
        }
        if (scriptCtx->flags & SCRIPT_SPOTSELECT_PLAY_SPAWN_SOUND)
        {
            PlaySE(SE007_MENU_OPEN_SUBMENU);
            scriptCtx->flags &= ~SCRIPT_SPOTSELECT_PLAY_SPAWN_SOUND;
        }
    }
    else if (scriptCtx->flags & SCRIPT_SPOTSELECT_INPUT)
    {
        spotselect = &gSpotSelectData[investigation->spotselectId];
        if (gJoypad.heldKeys & DPAD_LEFT)
        {
            investigation->pointerX -= 3;
            if (investigation->pointerX < spotselect->left)
                investigation->pointerX = spotselect->left;
            if (investigation->pointerX > DISPLAY_WIDTH - 16)
                investigation->pointerX = 0;
        }
        if (gJoypad.heldKeys & DPAD_RIGHT)
        {
            investigation->pointerX += 3;
            if (investigation->pointerX > spotselect->right)
                investigation->pointerX = spotselect->right;
            if (investigation->pointerX > DISPLAY_WIDTH - 16)
                investigation->pointerX = DISPLAY_WIDTH - 16;
        }
        if (gJoypad.heldKeys & DPAD_UP)
        {
            investigation->pointerY -= 3;
            if (investigation->pointerY < spotselect->top)
                investigation->pointerY = spotselect->top;
            if (investigation->pointerY > DISPLAY_HEIGHT - 16)
                investigation->pointerY = 0;
        }
        if (gJoypad.heldKeys & DPAD_DOWN)
        {
            investigation->pointerY += 3;
            if (investigation->pointerY > spotselect->bottom)
                investigation->pointerY = spotselect->bottom;
            if (investigation->pointerY > DISPLAY_HEIGHT - 16)
                investigation->pointerY = DISPLAY_HEIGHT - 16;
        }
        if (gJoypad.pressedKeys & A_BUTTON)
        {
            scriptCtx->flags &= ~(SCRIPT_SPOTSELECT_INPUT | SCRIPT_LOOP);
            rect.x = gMain.Bg256_pos_x + investigation->pointerX + 12;
            rect.y = gMain.Bg256_pos_y + investigation->pointerY;
            rect.w = 4;
            rect.h = 4;
            if (CheckRectCollisionWithArea(&rect, &spotselect->firstArea))
                ChangeScriptSection(spotselect->firstAreaSection);
            else if (CheckRectCollisionWithArea(&rect, &spotselect->secondArea))
                ChangeScriptSection(spotselect->secondAreaSection);
            else
                ChangeScriptSection(spotselect->defaultSection);
            scriptCtx->flags |= SCRIPT_SPOTSELECT_SELECTION_MADE;
            DmaCopy16(3, &gPalExamineCursors[0], OBJ_PLTT + 0x100, 0x20);
            PlaySE(SE001_MENU_CONFIRM);
            scriptCtx->flags |= SCRIPT_SPOTSELECT_SELECTION_MADE;
            gOamObjects[OAM_IDX_POINTER].attr0 = SPRITE_ATTR0(investigation->pointerY, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
            gOamObjects[OAM_IDX_POINTER].attr1 = SPRITE_ATTR1_NONAFFINE(investigation->pointerX, FALSE, FALSE, 1);
            gOamObjects[OAM_IDX_POINTER].attr2 = SPRITE_ATTR2(0xFC, 1, 8);
            return 0;
        }
        investigation->pointerColorCounter++;
        if (investigation->pointerColorCounter > 1)
        {
            investigation->pointerColorCounter = 0;
            investigation->pointerColor++;
            investigation->pointerColor &= 0xF;
            DmaCopy16(3, &gPalExamineCursors[investigation->pointerColor * 0x20], OBJ_PLTT + 0x100, 0x20);
        }
    }
    scriptCtx->flags |= SCRIPT_SPOTSELECT_SELECTION_MADE;
    gOamObjects[OAM_IDX_POINTER].attr0 = SPRITE_ATTR0(investigation->pointerY, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
    gOamObjects[OAM_IDX_POINTER].attr1 = SPRITE_ATTR1_NONAFFINE(investigation->pointerX, FALSE, FALSE, 1);
    gOamObjects[OAM_IDX_POINTER].attr2 = SPRITE_ATTR2(0xFC, 1, 8);
    return 1;
}

void MakeMapMarkerSprites()
{
    u32 i = 0;
    u32 id;
    struct MapMarker *mapMarker;
    struct OamAttrs *oam;
    for (i = 0; i < 8; i++)
    {
        if (gMapMarker[i].id == 0xFF)
            continue;

        id = gMapMarker[i].id;
        DmaCopy16(3, sMapMarkerSprites[id].tiles, (gMapMarker + i)->vramPtr, sMapMarkerSprites[id].size);
        mapMarker = &gMapMarker[i];
        if (!(mapMarker->flags & 4))
        {
            oam = &gOamObjects[mapMarker->oamIdx];
            oam->attr0 = mapMarker->attr0;
            oam->attr1 = mapMarker->attr1;
            oam->attr2 = mapMarker->attr2;
        }

        if (mapMarker->id)
            ; // needed for matching wtf
    }
}

u32 GetMapMarkerIndexFromId(u32 id) // GetExplCharWorkIndexById
{
    u32 i = 0;
    do
    {
        if (gMapMarker[i].id == id)
            return i;
        i++;
    } while (i < ARRAY_COUNT(gMapMarker));
    return 0xFF;
}

bool32 Command40(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    scriptCtx->flags &= ~SCRIPT_SPOTSELECT_SELECTION_MADE;
    gOamObjects[OAM_IDX_POINTER].attr0 = SPRITE_ATTR0_CLEAR;
    return 0;
}

bool32 Command41(struct ScriptContext * scriptCtx)
{
    u32 i;
    struct OamAttrs *oam;
    scriptCtx->scriptPtr++;
    // this has to be outside of the loop, else the load order breaks...
    oam = &gOamObjects[52];
    for(i = 0; i < 4; i++)
    {
        oam->attr0 = SPRITE_ATTR0((-32 & 255), ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
    // 64x32 sprite size
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(60*i, 0, 0, 3);
        oam->attr2 = SPRITE_ATTR2(0x100+0x20*i, 0, 5);
        oam++;
    }
    SetInactiveActionButtons(&gInvestigation, 0xF);
    gInvestigation.inactiveActionButtonY = 0xE0;
    gInvestigation.selectedActionYOffset = 0;
    gInvestigation.lastActionYOffset = 8;
    gInvestigation.selectedAction = 0;
    gInvestigation.lastAction = 0;
    
    SET_PROCESS(INVESTIGATION_PROCESS,INVESTIGATION_MAIN,0,0);
    return 0;
}

bool32 Command42(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr)
    {
        gMain.soundFlags &= ~SOUND_FLAG_DISABLE_CUE;
    }
    else
    {
        gMain.soundFlags |= SOUND_FLAG_DISABLE_CUE;
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command43(struct ScriptContext * scriptCtx)
{
    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr)
        SetOrQueueHPBarState(1);
    else
        SetOrQueueHPBarState(2);
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command44(struct ScriptContext * scriptCtx)
{
    u32 i;
    struct OamAttrs *oam;
    oam = &gOamObjects[OAM_IDX_VERDICT_KANJI];
    scriptCtx->scriptPtr++;
    gMain.affineScale = 0x280;
    BACKUP_PROCESS();
    if(*scriptCtx->scriptPtr) 
    {
        DmaCopy16(3, gGfxGuilty1, OBJ_VRAM0+0x3400, 0x1000);
        DmaCopy16(3, gPalGuilty, OBJ_PLTT+0xA0, 0x20);
        SET_PROCESS(VERDICT_PROCESS,0,0,0);
    }
    else 
    {
        DmaCopy16(3, gGfxNotGuilty1, OBJ_VRAM0+0x3400, 0x800);
        DmaCopy16(3, gGfxGuiltyNotGuilty2, OBJ_VRAM0+0x3C00, 0x800);
        DmaCopy16(3, gPalNotGuilty, OBJ_PLTT+0xA0, 0x20);
        SET_PROCESS(VERDICT_PROCESS,0,0,1);
    }
    scriptCtx->scriptPtr++;
    oam->attr0 = SPRITE_ATTR0((~16 & 255), ST_OAM_AFFINE_DOUBLE, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
    oam->attr1 = SPRITE_ATTR1_AFFINE((~16 & 511), 0, 3);
    oam->attr2 = SPRITE_ATTR2(0x1A0, 0, 5);
    oam++;
    oam->attr0 = SPRITE_ATTR0_CLEAR;
    return 0;
}

bool32 Command46(struct ScriptContext * scriptCtx)
{
    s32 i, j;
    u8 *r6;
    u16 *r3;
    u32 flag;
    s32 id;
    s32 xOffset;
    scriptCtx->scriptPtr++;
    flag = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    id = flag & 0xF;
    switch(id)
    {
        default:
        case 0:
            gMain.horizontolBGScrollSpeed = 14;
            r6 = gPal_BG014_BustupPhoenix;
            r3 = (u16 *)gMap_BG014_BustupPhoenix;
            break;
        case 1:
            gMain.horizontolBGScrollSpeed = -14;
            r6 = gPal_BG015_BustupEdgeworth;
            r3 = (u16 *)gMap_BG015_BustupEdgeworth;
            break;
        case 2:
            gMain.horizontolBGScrollSpeed = -14;
            r6 = gPal_BG020_BustupFranziska;
            r3 = (u16 *)gMap_BG020_BustupFranziska;
            break;
    }
    xOffset = 0;
    if(flag & 0x10) {
        gMain.horizontolBGScrollSpeed = 0;
        switch(id)
        {
            case 0:
                xOffset = 0x30;
                break;
            case 1:
                xOffset = -0x28;
                break;
            case 2:
                xOffset = -0x28;
                break;
        }
        SetAnimationOriginCoords(&gAnimation[1], gAnimation[1].animationInfo.xOrigin - xOffset, gAnimation[1].animationInfo.yOrigin);
    }
    for(i = 0; i < 0x400; i++) {
        gBG2MapBuffer[i] = 0xE080;
    }
    for(i = 0; i < 20; i++) 
    {
        for(j = 0; j < 30; j++, r3++) 
        {
            u32 x = j - xOffset / 8;
            if(x <= 30)
                gBG2MapBuffer[i * 32 + 1 + x] = *r3 + 0x80;
        }
    }
    r6 += 32 + 20*30*2;
    DmaCopy16(3, r6, eUnknown_0203B500, 30*20*TILE_SIZE_4BPP);
    gIORegisters.lcd_dispcnt |= DISPCNT_BG2_ON;
    gIORegisters.lcd_bg2cnt = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(30) | BGCNT_16COLOR;
    if(flag & 0x20)
        gIORegisters.lcd_dispcnt &= ~DISPCNT_BG3_ON;
    scriptCtx->flags |= 0x40;
    return 0;
}

bool32 Command47(struct ScriptContext *scriptCtx)
{
    u16 volume, fadeTime;
    scriptCtx->scriptPtr++;
    volume = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    fadeTime = *scriptCtx->scriptPtr;
    SetBGMVolume(volume, fadeTime);

    scriptCtx->scriptPtr++;

    return 0;
}

bool32 Command48(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr == 0xFFFF) 
    {
        gIORegisters.lcd_dispcnt |= DISPCNT_BG1_ON;
        scriptCtx->textXOffset = 9;
        scriptCtx->textYOffset = DISPLAY_HEIGHT-44;
        scriptCtx->scriptPtr+=2;
    }
    else 
    {
        gIORegisters.lcd_dispcnt &= ~DISPCNT_BG1_ON;
        scriptCtx->textXOffset = *scriptCtx->scriptPtr;
        scriptCtx->scriptPtr++;
        scriptCtx->textYOffset = *scriptCtx->scriptPtr;
        scriptCtx->scriptPtr++;
    }

    return 0;
}

bool32 Command49(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    gMain.advanceScriptContext = FALSE;
    gMain.showTextboxCharacters = FALSE;
    LoadSaveData();
    gSaveDataBuffer.main.caseEnabledFlags |= 0x80;
    SaveGameData();
    SET_PROCESS(TITLE_SCREEN_PROCESS, 0, 0, 0);
    return 0;
}

bool32 Command4A(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr) 
    {
        if(gMain.process[GAME_PROCESS_STATE] == VERDICT_NOTGUILTY_EXIT) 
        {
            scriptCtx->scriptPtr++;
            return 0;
        }
    }
    else 
    {
        if(gMain.process[GAME_PROCESS_STATE] == VERDICT_DRAW_CONFETTI) 
        {
            scriptCtx->scriptPtr++;
            return 0;
        }
    }
    scriptCtx->scriptPtr--;
    return 1;
}

bool32 Command4B(struct ScriptContext *scriptCtx)
{
    u32 res;
    u32 r2;
    scriptCtx->scriptPtr++;
    res = GetMapMarkerIndexFromId(*scriptCtx->scriptPtr >> 8);
    if(res != 0xFF) 
    {
        r2 = (*scriptCtx->scriptPtr & 3) << 12;
        // this clears existing hflip/vflip and sets r2 as new flips
        // the current macros dont allow easily setting this
        gMapMarker[res].attr1 = (gMapMarker[res].attr1 & 0xCFFF) + r2;
    }
    gMapMarker[res].blinkTimer = 0;
    scriptCtx->scriptPtr++;

    return 0;
}

bool32 Command4C(struct ScriptContext *scriptCtx)
{
    if(gMain.isBGScrolling) 
    {
        return 1;
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command4D(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    gMain.previousBG = gMain.currentBG;
    gMain.currentBG = *scriptCtx->scriptPtr;
    gMain.currentBgStripe = 1;
    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr == 0)
        gMain.unk35 = 1;
    else
        gMain.unk35 = 0;
    scriptCtx->scriptPtr++;
    return 1;
}

bool32 Command4E(struct ScriptContext *scriptCtx)
{
    u32 temp;
    if(gMain.blendMode == 0 && scriptCtx->textSkip > 1) {
        scriptCtx->scriptPtr++;
        scriptCtx->waitTimer = *scriptCtx->scriptPtr;
        scriptCtx->scriptPtr++;
        return 0;
    }
    if(scriptCtx->waitTimer != 0) {
        if(scriptCtx->unk30 != gAnimation[1].animationInfo.personId) {
            SetAnimationFrameOffset(&gAnimation[1], gMain.idleAnimationOffset);
            scriptCtx->unk30 = gAnimation[1].animationInfo.personId;
        }
        scriptCtx->waitTimer--;
        if(scriptCtx->waitTimer == 0) {
            scriptCtx->scriptPtr += 2;
            scriptCtx->unk30 = 0;
            return 0;
        }
        
    } else {
        scriptCtx->scriptPtr++;
        scriptCtx->waitTimer = *scriptCtx->scriptPtr;
        scriptCtx->scriptPtr--;
        scriptCtx->unk30 = 0;
    }

    return 1;
}

bool32 Command4F(struct ScriptContext *scriptCtx)
{
    struct PsycheLockData * psycheLockData;
    scriptCtx->scriptPtr++;
    gMain.currentPsycheLockDataIndex = *scriptCtx->scriptPtr;
    psycheLockData = &gMain.psycheLockData[gMain.currentPsycheLockDataIndex];
    gMain.psycheLockData[*scriptCtx->scriptPtr].enabled |= 1;

    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr != 0xFFFF)
        psycheLockData->numLocksRemaining = psycheLockData->numLocksTotal = *scriptCtx->scriptPtr;

    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr != 0xFFFF)
        psycheLockData->personId = *scriptCtx->scriptPtr;

    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr != 0xFFFF)
        psycheLockData->roomId = *scriptCtx->scriptPtr;

    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr != 0xFFFF)
        psycheLockData->startScriptSection = *scriptCtx->scriptPtr;

    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr != 0xFFFF)
        psycheLockData->cancelScriptSection = *scriptCtx->scriptPtr;

    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr != 0xFFFF)
        psycheLockData->noHPLeftScriptSection = *scriptCtx->scriptPtr;
    
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command50(struct ScriptContext *scriptCtx)
{
    struct PsycheLockData * psycheLockData;
    scriptCtx->scriptPtr++;
    psycheLockData = &gMain.psycheLockData[*scriptCtx->scriptPtr];
    DmaFill16(3, 0, psycheLockData, sizeof(*psycheLockData));
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command51(struct ScriptContext *scriptCtx)
{
    u32 var0, var1;
    scriptCtx->scriptPtr++;
    var0 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    var1 = *scriptCtx->scriptPtr;
    SetRoomSeq(var0, var1);
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command52(struct ScriptContext *scriptCtx)
{
    u32 temp;
    scriptCtx->scriptPtr++;
    temp = *scriptCtx->scriptPtr;
    gMain.psycheLockStopPresentButtonsActive |= temp;
    SetPsycheLockStopPresentButtonsState(1);
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command53(struct ScriptContext *scriptCtx)
{
    gMain.psycheLockStopPresentButtonsActive = 0;
    SetPsycheLockStopPresentButtonsState(2);
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command54(struct ScriptContext *scriptCtx)
{
    u16 array[2];
    s32 i;
    for(i = 0; i < 2; i++) {
        scriptCtx->scriptPtr++;
        array[i] = *scriptCtx->scriptPtr;
    }
    switch(array[0]) {
        case 0:
            SetOrQueueHPBarState(array[1]);
            break;
        case 1:
            gMain.hpBarDisplayFlag = array[1];
            break;
        case 2:
            gMain.hpBarDamageAmount = array[1];
            break;
    }
    scriptCtx->scriptPtr++;
    return 1;
}

bool32 Command55(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command56(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command57(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    gMain.currentPsycheLockDataIndex = *scriptCtx->scriptPtr;
    BACKUP_PROCESS();
    SET_PROCESS(INVESTIGATION_PROCESS, 10, 9, 0);
    gMain.unk24B = 1;
    scriptCtx->scriptPtr++;
    return 1;
}

bool32 Command58(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    ClearPsycheLockLocksAndChainsWithoutAnimating();
    gMain.unk24B = 0;
    return 0;
}

bool32 Command59(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    gMain.psycheLockedTalkSections[gMain.numPsycheLockedTalkSections] = gLoadedPsycheLockedTalkSections[*scriptCtx->scriptPtr];
    gMain.numPsycheLockedTalkSections++;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command5A(struct ScriptContext *scriptCtx)
{

    u16 i, j, k;
    scriptCtx->scriptPtr++;
    for(i = 0; i < gMain.numPsycheLockedTalkSections; i++) {
        if(gMain.psycheLockedTalkSections[i] == gLoadedPsycheLockedTalkSections[*scriptCtx->scriptPtr])
            gMain.psycheLockedTalkSections[i] = 0;
    }
    for(i = 0; i < gMain.numPsycheLockedTalkSections; i++) {
        if(gMain.psycheLockedTalkSections[i] == 0) {
            for(j = i+1, k = i; j < gMain.numPsycheLockedTalkSections; j++, k++) {
                gMain.psycheLockedTalkSections[k] = gMain.psycheLockedTalkSections[j];
            }
        }
    }
    gMain.numPsycheLockedTalkSections--;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command5B(struct ScriptContext *scriptCtx)
{
    u16 var0, var1;
    scriptCtx->scriptPtr++;
    var0 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    var1 = *scriptCtx->scriptPtr;
    SetInvestigationStateToReturnAfterPsycheLocks(var0, var1);
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command5C(struct ScriptContext *scriptCtx)
{
    u16 var0, var1, var2;
    scriptCtx->scriptPtr++;
    var0 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    var1 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    var2 = *scriptCtx->scriptPtr;
    InitSpecialEffectsWithMosaic(var0, var1, var2);
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command5D(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command5E(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command5F(struct ScriptContext *scriptCtx)
{
    u16 var0, var1, var2;
    scriptCtx->scriptPtr++;
    var0 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    var1 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    var2 = *scriptCtx->scriptPtr;
    InitSpecialEffects(var0, var1, var2);
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command60(struct ScriptContext *scriptCtx)
{
    u32 id;
    struct PsycheLockData * data;
    
    scriptCtx->scriptPtr++;
    data = &gMain.psycheLockData[*scriptCtx->scriptPtr];
    scriptCtx->scriptPtr++;
    data->validEvidenceIds[0] = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    data->validEvidenceScriptSections[0] = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    data->invalidEvidencePresentedSection = *scriptCtx->scriptPtr;

    data->numValidEvidence = 1;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command61(struct ScriptContext *scriptCtx)
{
    u32 id;
    struct PsycheLockData * data;
    scriptCtx->scriptPtr++;
    data = &gMain.psycheLockData[*scriptCtx->scriptPtr];
    scriptCtx->scriptPtr++;
    data->validEvidenceIds[data->numValidEvidence] = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    data->validEvidenceScriptSections[data->numValidEvidence] = *scriptCtx->scriptPtr;
    data->numValidEvidence++;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command62(struct ScriptContext *scriptCtx)
{
    SetPsycheLockAnimationStateReturnToNormalBackground();
    UpdatePsycheLockAnimation();
    gMain.currentBG = 0;
    gMain.unk24B = 2;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command63(struct ScriptContext *scriptCtx)
{
    SetPsycheLockAnimationStateRedrawRemainingLocks();
    UpdatePsycheLockAnimation();
    gMain.unk24B = 0;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command64(struct ScriptContext *scriptCtx)
{
    struct PsycheLockData * data;
    scriptCtx->scriptPtr++;
    // ! There was dead code here causing gMain to get loaded as gMain+0x1A4 for the SET_PROCESS
    data = gMain.psycheLockData;
    if(data->enabled) ;
    SET_PROCESS(INVESTIGATION_PROCESS, 10, 4, 0);
    scriptCtx->scriptPtr++;
    return 1;
}

bool32 Command65(struct ScriptContext *scriptCtx)
{
    s32 var0, var1, var2;
    scriptCtx->scriptPtr++;
    var0 = *scriptCtx->scriptPtr;
    var2 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    var1 = *scriptCtx->scriptPtr;
    gMain.unk2BE = (var0 << 4) | (var1 & 0xF);
    switch(var0) {
        case 0:
            if(var1 == 1) {
                LoadWitnessBenchGraphics();
                SetOAMForCourtBenchSpritesWitness(0x18, 0x80, 1);
            } else {
                SetOAMForCourtBenchSpritesWitness(0x18, 0x80, 0);
            }
            break;
        case 1:
            if(var1 == 1) {
                LoadCounselBenchGraphics();
                SetOAMForCourtBenchSpritesDefense(0, 0x80, 1);
            } else {
                SetOAMForCourtBenchSpritesDefense(0, 0, 0);
            }
            break;
        case 2:
            if(var2 != 2) break;
            if(var1 == 1) {
                LoadCounselBenchGraphics();
                SetOAMForCourtBenchSpritesProsecution(0x20, 0x80, 1);
            } else {
                SetOAMForCourtBenchSpritesDefense(0, 0, 0);
            }
            break;
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command66(struct ScriptContext *scriptCtx)
{
    struct PsycheLockData * data;
    scriptCtx->scriptPtr++;
    gMain.currentPsycheLockDataIndex = *scriptCtx->scriptPtr;
    data = &gMain.psycheLockData[gMain.currentPsycheLockDataIndex];
    scriptCtx->scriptPtr++;
    data->bgmToPlayAfterStop = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    data->bgmToPlayAfterUnlock = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command67(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    LoadCurrentScriptIntoRam();
    return 0;
}

bool32 Command68(struct ScriptContext *scriptCtx)
{
    gAnimation[1].flags |= 0x400;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command69(struct ScriptContext *scriptCtx)
{
    if(gInvestigation.pointerX == 0) {
        InitNickelSamuraiZoominAnimation();
        return 1;
    } else if((s16)gInvestigation.pointerX >= 0) { // TODO: look further into the type for this
        UpdateNickelSamuraiZoominAnimation();
        if(gInvestigation.pointerX > 32)
            return 1;
        gInvestigation.pointerX = SHRT_MIN;
        return 1;
    }
    FinishNickelSamuraiZoominAnimation();
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command6A(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr == 1)
        SpawnAllFlowerPetals();
    else if(*scriptCtx->scriptPtr == 0)
        DestroyAllFlowerPetals();
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command6B(struct ScriptContext *scriptCtx)
{
    SetSpotlightStopSweepingFlag();
    scriptCtx->scriptPtr+=2;
    return 0;
}

bool32 Command6C(struct ScriptContext *scriptCtx)
{
    gCourtRecord.windowScrollSpeed = 0;
    gCourtRecord.windowX = 0x110;
    gCourtRecord.windowMode = 0;
    gCourtRecord.flags &= ~4;
    gCourtRecord.flags |= 0x20;
    BACKUP_PROCESS();
    SET_PROCESS(COURT_RECORD_PROCESS, RECORD_TAKE_THAT_SPECIAL, 0, 0);
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command6D(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    switch(*scriptCtx->scriptPtr) {
        case 0:
            BeginSignalDetector();
            break;
        case 1:
            EndSignalDetector();
            break;
        case 2:
            ReturnToSignalDetector();
    }
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command6E(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    if(*scriptCtx->scriptPtr == 1)
        gScriptContext.flags |= 0x800; // ! INCONSISTENT USES OF GLOBALS VS POINTEEERS
    else
        gScriptContext.flags &= ~0x800;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command6F(struct ScriptContext *scriptCtx)
{
    scriptCtx->scriptPtr++;
    gMain.unk1E = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command70(struct ScriptContext *scriptCtx)
{
    u32 songId, vol;
    scriptCtx->scriptPtr++;
    songId = scriptCtx->scriptPtr[0];
    vol = scriptCtx->scriptPtr[1];
    scriptCtx->scriptPtr++;
    scriptCtx->scriptPtr++;
    ChangeTrackVolumeBySongNum(songId, vol);
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command71(struct ScriptContext *scriptCtx)
{
    struct PsycheLockData * data;
    u32 var0;
    scriptCtx->scriptPtr++;
    scriptCtx->scriptPtr++;
    var0 = *scriptCtx->scriptPtr;
    scriptCtx->scriptPtr++;
    // ! force gMain.psycheLockData load via dead code
    data = gMain.psycheLockData;
    if(data->enabled) ;
    switch(var0) {
        case 0:
            SET_PROCESS(INVESTIGATION_PROCESS, 10, 4, 0);
            gMain.unk24C = 1;
            break;
        case 1:
            SlideTextbox(0);
            SET_PROCESS(INVESTIGATION_PROCESS, 10, 7, 0);
            gMain.unk24C = 0;
    }
    scriptCtx->scriptPtr++;
    return 1;
}