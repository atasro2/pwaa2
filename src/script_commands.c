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
#include "constants/bg.h"
#include "constants/script.h"
#include "constants/songs.h"
#include "constants/process.h"
/**
const u8 gTextboxDownArrowTileIndexes[] = {
    0x20, 0x22, 0x24, 0x26, 0x24, 0x22,
};
*/
extern u8 gTextboxDownArrowTileIndexes[];
extern u8 gSoundCueTable[];
extern u8 * gCourtScrollGfxPointers[];

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
        if(scriptCtx->unk32 != 0)
        {
            scriptCtx->unk32--;
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
    if(gMain.process[GAME_PROCESS] == 4 && (gMain.unk84 == 3 || gMain.unk84 == 7))
    {
        gMain.unk86 = gMain.unk88;
        gMain.unk89 = 0x1F;
    }
    if(gMain.process[GAME_PROCESS] >= 3 && gMain.process[GAME_PROCESS] <= 6)
    {
        if(sub_8017C78() || sub_801715C()) return 1;
        
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
        scriptCtx->unk32 = 10;
        scriptCtx->flags |= 0x20;
        if(scriptCtx->currentToken == 0xA) // if script cmd is 0xA ?
        {
            if(gMain.unk98 > 0)
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
        sub_8013878(soundNum);
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
        if(scriptCtx->unk32 > 0)
        {
            scriptCtx->unk32--;
            return TRUE;
        }
        scriptCtx->flags &= ~0x20;
        scriptCtx->scriptPtr += 3;
        return TRUE;
    }
    if(gMain.process[GAME_PROCESS] == 7)
    {
        gOamObjects[57].attr0 = SPRITE_ATTR0_CLEAR;
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
        scriptCtx->unk32 = 10;
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
        gOamObjects[57].attr0 = SPRITE_ATTR0_CLEAR;
        return FALSE;
    }
    gOamObjects[57].attr0 = SPRITE_ATTR0(scriptCtx->fullscreenCursorPos*20 + scriptCtx->fullscreenTextYOffset, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
    gOamObjects[57].attr1 = SPRITE_ATTR1_NONAFFINE(scriptCtx->fullscreenTextXOffset-13, FALSE, FALSE, 1);
    gOamObjects[57].attr2 = SPRITE_ATTR2(0xFC, 1, 0);
    return TRUE;
}

bool32 Command09(struct ScriptContext * scriptCtx)
{
    u32 i;
    if(gMain.process[GAME_PROCESS] == 0xA) 
        return 1;
    if(scriptCtx->flags & 0x20)
    {
        if(scriptCtx->unk32 > 0)
        {
            scriptCtx->unk32--;
            return TRUE;
        }
        scriptCtx->flags &= ~0x20;
        scriptCtx->scriptPtr += 4;
        return TRUE;
    }
    if(gMain.process[GAME_PROCESS] == 7)
    {
        gOamObjects[57].attr0 = SPRITE_ATTR0_CLEAR;
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
        scriptCtx->unk32 = 10;
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
        gOamObjects[57].attr0 = SPRITE_ATTR0_CLEAR;
        return FALSE;
    }
    gOamObjects[57].attr0 = SPRITE_ATTR0(scriptCtx->fullscreenCursorPos*20 + scriptCtx->fullscreenTextYOffset, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
    gOamObjects[57].attr1 = SPRITE_ATTR1_NONAFFINE(scriptCtx->fullscreenTextXOffset-13, FALSE, FALSE, 1);
    gOamObjects[57].attr2 = SPRITE_ATTR2(0xFC, 1, 0);
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
    sub_8007CCC(&gMain, scriptCtx->currentSection);
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
    sub_80037C8();
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
    main->unkB0 = main->unk98;
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
            sub_80037C8();
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
    gInvestigation.unk7 = 0;
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
        DmaCopy16(3, gUnknown_08141CFC, OBJ_VRAM0 + 0x3000, 0x400);
        DmaCopy16(3, gUnknown_0814DC40, OBJ_PLTT+0xA0, 0x20);
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

bool32 Command2B(struct ScriptContext *scriptCtx) // nullsubbed take damage command 
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
        sub_8007CCC(&gMain, scriptCtx->currentSection);
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
    sub_8007CCC(&gMain, scriptCtx->currentSection);
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

extern const struct MapMarkerSprite sMapMarkerSprites[];

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
            DmaCopy16(3, gUnknown_08231BE8, OBJ_PLTT + 0xC0, 0x20);
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
    DmaCopy16(3, gUnknown_081426FC, OBJ_VRAM0 + 0x1F80, 0x80);
    DmaCopy16(3, &gUnknown_0814DC60[0], OBJ_PLTT + 0x100, 0x20);
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

extern const struct SpotSelectData gSpotSelectData[];

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
            DmaCopy16(3, &gUnknown_0814DC60[0], OBJ_PLTT + 0x100, 0x20);
            PlaySE(SE001_MENU_CONFIRM);
            scriptCtx->flags |= SCRIPT_SPOTSELECT_SELECTION_MADE;
            gOamObjects[88].attr0 = SPRITE_ATTR0(investigation->pointerY, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
            gOamObjects[88].attr1 = SPRITE_ATTR1_NONAFFINE(investigation->pointerX, FALSE, FALSE, 1);
            gOamObjects[88].attr2 = SPRITE_ATTR2(0xFC, 1, 8);
            return 0;
        }
        investigation->pointerColorCounter++;
        if (investigation->pointerColorCounter > 1)
        {
            investigation->pointerColorCounter = 0;
            investigation->pointerColor++;
            investigation->pointerColor &= 0xF;
            DmaCopy16(3, &gUnknown_0814DC60[investigation->pointerColor * 0x20], OBJ_PLTT + 0x100, 0x20);
        }
    }
    scriptCtx->flags |= SCRIPT_SPOTSELECT_SELECTION_MADE;
    gOamObjects[88].attr0 = SPRITE_ATTR0(investigation->pointerY, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
    gOamObjects[88].attr1 = SPRITE_ATTR1_NONAFFINE(investigation->pointerX, FALSE, FALSE, 1);
    gOamObjects[88].attr2 = SPRITE_ATTR2(0xFC, 1, 8);
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
    gOamObjects[88].attr0 = SPRITE_ATTR0_CLEAR;
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
        sub_8017928(1);
    else
        sub_8017928(2);
    scriptCtx->scriptPtr++;
    return 0;
}

bool32 Command44(struct ScriptContext * scriptCtx)
{
    u32 i;
    struct OamAttrs *oam;
    oam = &gOamObjects[49];
    scriptCtx->scriptPtr++;
    gMain.affineScale = 0x280;
    BACKUP_PROCESS();
    if(*scriptCtx->scriptPtr) 
    {
        DmaCopy16(3, gUnknown_081438DC, OBJ_VRAM0+0x3400, 0x1000);
        DmaCopy16(3, gUnknown_0814DEC0, OBJ_PLTT+0xA0, 0x20);
        SET_PROCESS(VERDICT_PROCESS,0,0,0);
    }
    else 
    {
        DmaCopy16(3, gUnknown_081430DC, OBJ_VRAM0+0x3400, 0x800);
        DmaCopy16(3, gUnknown_081440DC, OBJ_VRAM0+0x3C00, 0x800);
        DmaCopy16(3, gUnknown_0814DEE0, OBJ_PLTT+0xA0, 0x20);
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
            r6 = gUnknown_08263FD4;
            r3 = (u16 *)gUnknown_08263FF4;
            break;
        case 1:
            gMain.horizontolBGScrollSpeed = -14;
            r6 = gUnknown_08265CC4;
            r3 = (u16 *)gUnknown_08265CE4;
            break;
        case 2:
            gMain.horizontolBGScrollSpeed = -14;
            r6 = gUnknown_08277A98;
            r3 = (u16 *)gUnknown_08277AB8;
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