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
#include "constants/bg.h"
#include "constants/script.h"
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
    gInvestigation.unkC = 0;
    gInvestigation.unkD = 0;
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
