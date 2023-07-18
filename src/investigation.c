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
#include "constants/process.h"

void (*gInvestigationProcessStates[])(struct Main *, struct InvestigationStruct *) = {
	InvestigationInit, // RNO1_TANTEI_INIT
	InvestigationMain, // RNO1_TANTEI_MAIN
	InvestigationExit, // RNO1_TANTEI_EXIT
	InvestigationBgScrollWait, // RNO1_TANTEI_BG_WAIT
	InvestigationTextboxSlideWait, // RNO1_TANTEI_MW_WAIT
	InvestigationRoomInit, // RNO1_TANTEI_ROOM_INIT
	InvestigationInspect, // RNO1_TANTEI_INSPECT
	InvestigationMove, // RNO1_TANTEI_MOVE
	InvestigationTalk, // RNO1_TANTEI_TALK
	InvestigationPresent,  // RNO1_TANTEI_SHOW
    sub_8010A3C // new in GS2, probably for signal detector?
};

void UpdateScrollPromptSprite(struct Main *, u32);
void UpdateInvestigationActionSprites(struct InvestigationStruct *);

void sub_800EAC8(u32 idx, u32 arg1)
{
    gMain.unk25C[idx] = arg1;
}

u16 sub_800EADC(u16 arg0)
{
    u16 i;
    for(i = 0; i < gMain.unk286; i++) {
        if(gMain.unk276[i] == arg0) return 1;
    }
    return 0;
}

void SetInactiveActionButtons(struct InvestigationStruct * investigation, u32 arg1) // menu_mv_flag_set
{
    investigation->inactiveActions = arg1;
    if(investigation->personActive == 0)
        investigation->inactiveActions &= ~0xC;
}


void InvestigationProcess(struct Main * main) // Tantei_part
{
    if(main->process[GAME_PROCESS_STATE] != INVESTIGATION_ROOM_INIT)
        gInvestigationRoomUpdateFunctions[main->scenarioIdx](main);
    gInvestigationProcessStates[main->process[GAME_PROCESS_STATE]](main, &gInvestigation);
    UpdateInvestigationActionSprites(&gInvestigation);
}

void InvestigationInit(struct Main * main, struct InvestigationStruct * investigation) // tantei_init
{
    struct IORegisters * ioRegs = &gIORegisters;
    struct OamAttrs * oam;
    u32 bgId;
    u32 i;
    DmaFill16(3, 0, &gTestimony, sizeof(gTestimony));
    DmaFill16(3, 0, &gInvestigation, sizeof(gInvestigation));
    HideAllSprites();
    InitBGs();
    ResetAnimationSystem();
    LoadCurrentScriptIntoRam();
    ioRegs->lcd_dispcnt = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON;
    ioRegs->lcd_bg0cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(28) | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
    ioRegs->lcd_bg1cnt = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(29) | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
    ioRegs->lcd_bg2cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(30) | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
    ioRegs->lcd_bg3cnt = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(31) | BGCNT_MOSAIC | BGCNT_256COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
    DmaCopy16(3, (void *)0x081370FC, VRAM + 0x3800, 0x800);
    DmaCopy16(3, (void *)0x0813791C, VRAM, 0x1000);
    DmaCopy16(3, (void *)0x081400FC, OBJ_VRAM0 + 0x2000, 0x1000);
    DmaCopy16(3, (void *)0x0814DBA0, OBJ_PLTT+0xA0, 0x40);
    DmaCopy16(3, (void *)0x081412FC, OBJ_VRAM0 + 0x3000, 0x200);
    DmaCopy16(3, (void *)0x0814DC00, OBJ_PLTT+0xE0, 0x20);
    DmaCopy16(3, (void *)0x081426FC, OBJ_VRAM0 + 0x3200, 0x200);
    DmaCopy16(3, (void *)0x0814DC60, OBJ_PLTT+0x100, 0x20);
    DmaCopy16(3, (void *)0x081DE3A8, OBJ_PLTT+0x120, 0x40);
    oam = &gOamObjects[52];
    for(i = 0; i < 4; i++)
    {
        oam->attr0 = SPRITE_ATTR0(-32 & 0xFF, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(i*60, FALSE, FALSE, 3);
        oam->attr2 = SPRITE_ATTR2(0x100 + i*0x20, 0, 5);
        oam++;
    }
    SetInactiveActionButtons(investigation, 0xF);
    investigation->inactiveActionButtonY = 0xE0;
    investigation->selectedActionYOffset = 0;
    investigation->lastActionYOffset = 8;
    investigation->selectedAction = 0;
    investigation->lastAction = 0;
    gInvestigationSegmentSetupFunctions[main->scenarioIdx](main);
    bgId = main->roomData[main->currentRoomId][0];
    DecompressBackgroundIntoBuffer(bgId);
    CopyBGDataToVram(bgId);
    CopyBGDataToVram(0x80);
    ioRegs->lcd_bg1vofs = ~80;
    ioRegs->lcd_dispcnt &= ~DISPCNT_BG1_ON;
    InitializeCourtRecordForScenario(main, &gCourtRecord);
    DmaFill32(3, 0, main->scriptFlags, sizeof(main->scriptFlags));
    main->gameStateFlags = 0;
    main->tilemapUpdateBits = 0xF;
    main->advanceScriptContext = TRUE;
    main->showTextboxCharacters = TRUE;
    gScriptContext.currentSection = 0xFFFF;
    ChangeScriptSection(0x80);
    SlideTextbox(1);
    gInvestigationRoomSetupFunctions[main->scenarioIdx](main);
    UpdateScrollPromptSprite(main, 0);
    SetCurrentEpisodeBit();
    SetTimedKeysAndDelay(DPAD_RIGHT | DPAD_LEFT, 15);
    StartHardwareBlend(1, 1, 1, 0x1F);
    ioRegs->lcd_bldy = 0x10;
    if(main->scenarioIdx == 8)
    {
        ioRegs->lcd_dispcnt &= ~DISPCNT_BG1_ON;
        ioRegs->lcd_bg1vofs = 0;
    }
    SET_PROCESS_PTR(INVESTIGATION_PROCESS, INVESTIGATION_MAIN, 0, 0, main);
}

//FIXME: tail merge causes register diffs
void InvestigationMain(struct Main * main, struct InvestigationStruct * investigation) // tantei_main
{
    if(main->blendMode || investigation->actionState == 0x02)
    {
        UpdateScrollPromptSprite(main, 0);
        return;
    }

    if(gJoypad.pressedKeys & START_BUTTON)
    {
        if(!(main->gameStateFlags & 0x10))
        {
            if(gScriptContext.flags & (SCRIPT_FULLSCREEN | 1) && gMain.unk30 != 0x7F)
            {
                /*
                PauseBGM();
                DmaCopy16(3, gOamObjects, gSaveDataBuffer.oam, sizeof(gOamObjects));
                DmaCopy16(3, &gMain, &gSaveDataBuffer.main, sizeof(gMain));
                PlaySE(SE007_MENU_OPEN_SUBMENU);
                main->gameStateFlags &= ~1;
                BACKUP_PROCESS_PTR(main);
                SET_PROCESS_PTR(10, 0, 0, 0, main);
                return;
                */
                goto s;
            }
        }
    }

    if(gJoypad.pressedKeys & R_BUTTON)
    {
        if(!(main->gameStateFlags & 0x10))
        {
            if(gScriptContext.flags & (SCRIPT_FULLSCREEN | 1))
            {
                /*
                PlaySE(SE007_MENU_OPEN_SUBMENU);
                BACKUP_PROCESS_PTR(main);
                SET_PROCESS_PTR(7, 0, 0, 0, main);
                UpdateScrollPromptSprite(main, 0);
                investigation->selectedActionYOffset = 0;
                investigation->lastActionYOffset = 8;
                investigation->lastAction = investigation->selectedAction;
                return;
                */
                goto r;
            }
        }
    }
    if(gScriptContext.textboxState != 1 || 
    main->advanceScriptContext || 
    main->showTextboxCharacters)
    {
        UpdateScrollPromptSprite(main, 0);
        return;
    }
    UpdateScrollPromptSprite(main, 1);
    if(gJoypad.pressedKeys & START_BUTTON)
    {
        if(!(main->gameStateFlags & 0x10) && gMain.unk30 != 0x7F)
        {
            s:
            PauseBGM();
            DmaCopy16(3, gOamObjects, &gSaveDataBuffer.oam[25], sizeof(gOamObjects));
            DmaCopy16(3, &gMain, &gSaveDataBuffer.main, sizeof(gMain));
            if(gScriptContext.textboxState == 2 && gScriptContext.textboxYPos == 1) {
                gSaveDataBuffer.main.showTextboxCharacters = 1;
            }
            PlaySE(0x31);
            main->gameStateFlags &= ~1;
            BACKUP_PROCESS_PTR(main);
            SET_PROCESS_PTR(SAVE_GAME_PROCESS, 0, 0, 0, main);
            return;
        }
    }

    if(gJoypad.pressedKeys & R_BUTTON)
    {
        if(!(main->gameStateFlags & 0x10))
        {
            r:
            PlaySE(0x31);
            BACKUP_PROCESS_PTR(main);
            SET_PROCESS_PTR(COURT_RECORD_PROCESS, RECORD_INIT, 0, 0, main);
            UpdateScrollPromptSprite(main, 0);
            investigation->selectedActionYOffset = 0;
            investigation->lastActionYOffset = 8;
            investigation->lastAction = investigation->selectedAction;
            return;
        }
    }
    else if(gJoypad.activeTimedKeys & (DPAD_RIGHT | DPAD_LEFT))
    {
        investigation->lastAction = investigation->selectedAction;
        if(gJoypad.activeTimedKeys & DPAD_LEFT)
            investigation->selectedAction--;
        else
            investigation->selectedAction++;
        if(investigation->personActive == 0)
            investigation->selectedAction &= 1;
        else
            investigation->selectedAction &= 3;
        PlaySE(0x2A);
        investigation->selectedActionYOffset = 0;
        investigation->lastActionYOffset = 8;
    }
    else if(gJoypad.pressedKeys & A_BUTTON)
    {
        PlaySE(0x2B);
        investigation->pointerX = 120;
        investigation->pointerY = 50;
        SetInactiveActionButtons(investigation, 0xF);
        investigation->inactiveActions -= 1 << investigation->selectedAction;
        investigation->inactiveActionButtonY = 240;
        investigation->selectedActionYOffset = 8;
        investigation->lastActionYOffset = 0;
        investigation->lastAction = investigation->selectedAction;
        investigation->actionState = 3;
        UpdateScrollPromptSprite(main, 0);
        if(investigation->selectedAction == 0)
        {
            StartAnimationBlend(0xC, 1);
            investigation->pointerColorCounter = 0;
            investigation->pointerColor = 0;
            DmaCopy16(3, (void *)0x814DC60, OBJ_PLTT+0x100, 0x20);
        }
        main->process[GAME_PROCESS_STATE] = INVESTIGATION_INSPECT + investigation->selectedAction;
        main->process[GAME_PROCESS_VAR2] = 0;
        main->process[GAME_PROCESS_VAR1] = 0;
        return;
    }
    else
    {
        u32 bgBits = GetBGControlBits(main->currentBG);
        if((bgBits & BG_MODE_SIZE_480x160 || bgBits & BG_MODE_SIZE_360x160)
         && gJoypad.pressedKeys & L_BUTTON)
        {
            if(main->Bg256_pos_x == 0 || 
            main->Bg256_pos_x == 120 ||
            main->Bg256_pos_x == 240)
            {
                PlaySE(0x2B);
                main->isBGScrolling = TRUE;
                if(main->Bg256_pos_x == 0)
                    main->horizontolBGScrollSpeed = 6;
                else if(main->Bg256_pos_x == 120 || main->Bg256_pos_x == 240)
                    main->horizontolBGScrollSpeed = -6;
                main->process[GAME_PROCESS_STATE] = INVESTIGATION_BG_SCROLL_WAIT;
                main->process[GAME_PROCESS_VAR2] = 0;
                main->process[GAME_PROCESS_VAR1] = 0;
                investigation->actionState = 3;
                SetInactiveActionButtons(investigation, 0xF);
            }
        }
    }
    if(investigation->selectedActionYOffset < 8)
        investigation->selectedActionYOffset++;
    if(investigation->lastActionYOffset > 0)
        investigation->lastActionYOffset--;
}

// ! still the same as CourtExit, thanks capcom
void InvestigationExit(struct Main * main, struct InvestigationStruct * investigation) // tantei_exit
{
    sub_8007D30(main);
    DmaCopy16(3, &gMain, &gSaveDataBuffer.main, sizeof(gMain));
    SET_PROCESS_PTR(SAVE_GAME_PROCESS, 0, 0, 1, main);
    if(main->scenarioIdx == 2)
    {
        if(!(main->caseEnabledFlags & 2))
            SET_PROCESS_PTR(EPISODE_CLEAR_PROCESS, 0, 0, 1, main);
    }
    else if(main->scenarioIdx == 8)
    {
        if(!(main->caseEnabledFlags & 4))
            SET_PROCESS_PTR(EPISODE_CLEAR_PROCESS, 0, 0, 2, main);
    }
    else if(main->scenarioIdx == 14)
    {
        if(!(main->caseEnabledFlags & 8))
            SET_PROCESS_PTR(EPISODE_CLEAR_PROCESS, 0, 0, 3, main);
    }
}

void InvestigationBgScrollWait(struct Main * main, struct InvestigationStruct * investigation) // tantei_bg_scroll_wait
{
    bool32 finishedScrolling;
    UpdateScrollPromptSprite(main, 0);
    if(main->process[GAME_PROCESS_VAR1] == 0)
    {
        if(GetBGControlBits(main->currentBG) & BG_MODE_SIZE_480x160)
        {
            if(main->Bg256_pos_x == 0 || main->Bg256_pos_x == 240)
                finishedScrolling = TRUE;
            else
                finishedScrolling = FALSE;
        }
        else 
        {
            if(main->Bg256_pos_x == 0 || main->Bg256_pos_x == 120)
                finishedScrolling = TRUE;
            else
                finishedScrolling = FALSE;
        }
        if(finishedScrolling)
        {
            investigation->selectedActionYOffset = 0;
            investigation->lastActionYOffset = 0;
            investigation->actionState = 1;
            main->process[GAME_PROCESS_VAR1]++;
        }
    }
    else
    {
        if(investigation->actionState == 0)
            SET_PROCESS_PTR(INVESTIGATION_PROCESS, INVESTIGATION_MAIN, 0, 0, main);
    }
}

void InvestigationTextboxSlideWait(struct Main * main, struct InvestigationStruct * investigation) // tantei_mw_scroll_wait
{
    UpdateScrollPromptSprite(main, 0);
    if(gScriptContext.textboxState == 0)
        SET_PROCESS_PTR(INVESTIGATION_PROCESS, INVESTIGATION_MAIN, 0, 0, main);
}

void InvestigationRoomInit(struct Main * main, struct InvestigationStruct * investigation) // tantei_room_init
{
    u32 i, j;
    u8 * roomData;
    struct OamAttrs * oam;

    if(gScriptContext.textboxState != 1)
        return;
    if(main->blendMode)
        return;
    roomData = main->roomData[main->currentRoomId];
    if(main->process[GAME_PROCESS_VAR1] == 0)
    {
        ResetSoundControl();
        DecompressBackgroundIntoBuffer(roomData[0]);
        main->process[GAME_PROCESS_VAR1] = 1;
        return;
    }
    CopyBGDataToVram(roomData[0]);
    oam = &gOamObjects[38];
    for(i = 0; i < 4; i++)
    {
        for(j = 0; j < 2; oam++, j++)
            oam->attr0 = SPRITE_ATTR0_CLEAR;
    }
    oam = &gOamObjects[52];
    for(i = 0; i < 4; i++)
    {
        oam->attr0 = SPRITE_ATTR0(224, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(i*60, FALSE, FALSE, 3);
        oam->attr2 = SPRITE_ATTR2(0x100+i*0x20, 0, 5);
        oam++;
    }
    SetInactiveActionButtons(investigation, 0xF);
    investigation->inactiveActionButtonY = 0xE0;
    investigation->selectedActionYOffset = 0;
    investigation->lastActionYOffset = 8;
    investigation->selectedAction = 0;
    investigation->lastAction = 0;
    investigation->actionState = 1;
    ClearAllAnimationSprites();
    //TODO: MACROS BITCH!!! these exact 3 lines exist elsewhere in the code so this is 100% a macro in the original code considering it doesn't use the investigation struct ptr 
    DestroyAnimation(&gAnimation[1]);
    gInvestigation.personActive = 0;
    SetInactiveActionButtons(&gInvestigation, 0xF);
    
    gInvestigationRoomSetupFunctions[main->scenarioIdx](main);
    UpdateScrollPromptSprite(main, 0);
    StartHardwareBlend(1, 1, 1, 0x1F);
    SET_PROCESS_PTR(INVESTIGATION_PROCESS, INVESTIGATION_MAIN, 0, 0, main);
}

void InvestigationInspect(struct Main * main, struct InvestigationStruct * investigation) // tantei_inspect // ! goto
{
    u32 temp;
    struct OamAttrs * oam = &gOamObjects[58];
    if(gAnimation[1].flags & ANIM_BLEND_ACTIVE)
        return;
    if(main->blendMode)
        return;
    
    if(gJoypad.pressedKeys & START_BUTTON
    && !(main->gameStateFlags & 0x10)
    && gScriptContext.flags & (SCRIPT_FULLSCREEN | 1)  && gMain.unk30 != 0x7F)
        goto s;
    else if(gJoypad.pressedKeys & R_BUTTON
    && !(main->gameStateFlags & 0x10)
    && gScriptContext.flags & (SCRIPT_FULLSCREEN | 1))
        goto r;
    else if(investigation->inspectionPaused)
        return;
    else if(gScriptContext.textboxState != 1)
        return;
    else if(!(main->advanceScriptContext == FALSE && main->showTextboxCharacters == FALSE))
        return;
    else
    {
        switch(main->process[GAME_PROCESS_VAR1])
        {
            default:
                break;
            case 0:
                if(investigation->selectedActionYOffset <= 0xF)
                    investigation->selectedActionYOffset++;
                investigation->lastActionYOffset = 0;
                if (investigation->selectedActionYOffset > 0xF)
                    main->process[GAME_PROCESS_VAR1]++;
                break;
            case 1:
                temp = 3;
                if(gJoypad.pressedKeys & START_BUTTON
                && !(main->gameStateFlags & 0x10) && gMain.unk30 != 0x7F)
                {
                    s:
                    PauseBGM();
                    DmaCopy16(3, gOamObjects, &gSaveDataBuffer.oam[25], sizeof(gOamObjects));
                    DmaCopy16(3, &gMain, &gSaveDataBuffer.main, sizeof(gMain));
                    if(gScriptContext.textboxState == 2 && gScriptContext.textboxYPos == 1) {
                        gSaveDataBuffer.main.showTextboxCharacters = 1;
                    }
                    PlaySE(49);
                    main->gameStateFlags &= ~1;
                    BACKUP_PROCESS_PTR(main);
                    SET_PROCESS_PTR(SAVE_GAME_PROCESS, 0, 0, 0, main);
                    return;
                }
                else if(gJoypad.pressedKeys & R_BUTTON
                && !(main->gameStateFlags & 0x10))
                {
                    r:
                    PlaySE(49);
                    BACKUP_PROCESS_PTR(main);
                    SET_PROCESS_PTR(COURT_RECORD_PROCESS, RECORD_INIT, 0, 0, main);
                    oam->attr0 = SPRITE_ATTR0_CLEAR;
                    return;
                }
                if(gJoypad.pressedKeys & A_BUTTON)
                {
                    PlaySE(43);
                    oam->attr0 = SPRITE_ATTR0_CLEAR;
                    temp = GetExaminedAreaSection(investigation);
                    ChangeScriptSection(temp);
                    SlideTextbox(1);
                    investigation->inspectionPaused = TRUE;
                    investigation->pointerFrame = 0;
                    investigation->pointerFrameCounter = 0;
                    investigation->inactiveActions = 1;
                    investigation->actionState = 3;
                    investigation->inactiveActionButtonY = 0xF0;
                    investigation->selectedActionYOffset = 0;
                    investigation->lastActionYOffset = 0;
                    gIORegisters.lcd_bldcnt = 0x1942;
                    gIORegisters.lcd_bldalpha = 0x71F;
                    return;
                }
                if(gJoypad.pressedKeys & B_BUTTON)
                {
                    PlaySE(44);
                    main->process[GAME_PROCESS_VAR1] = 2;
                    SetInactiveActionButtons(investigation, 0xE);
                    investigation->actionState = 2;
                    investigation->inactiveActionButtonY = 0xE0;
                    investigation->selectedActionYOffset = 0x10;
                    investigation->lastActionYOffset = 0;
                    return;
                }
                
                if(gJoypad.heldKeys & DPAD_LEFT)
                {
                    investigation->pointerX -= temp;
                    if(investigation->pointerY < 16 && investigation->pointerX < 60)
                        investigation->pointerX = 60;
                    if(investigation->pointerX > 224)
                        investigation->pointerX = 0;
                }
                if(gJoypad.heldKeys & DPAD_RIGHT)
                {
                    investigation->pointerX += temp;
                    if(investigation->pointerY < 16 && investigation->pointerX < 60)
                        investigation->pointerX = 60;
                    if(investigation->pointerX > 224)
                        investigation->pointerX = 224;
                }
                if(gJoypad.heldKeys & DPAD_UP)
                {
                    investigation->pointerY -= temp;
                    if(investigation->pointerX < 60 && investigation->pointerY < 16)
                        investigation->pointerY = 16;
                    if(investigation->pointerY > 144)
                        investigation->pointerY = 0;
                }
                if(gJoypad.heldKeys & DPAD_DOWN)
                {
                    investigation->pointerY += temp;
                    if(investigation->pointerX < 60 && investigation->pointerY < 16)
                        investigation->pointerY = 16;
                    if(investigation->pointerY > 144)
                        investigation->pointerY = 144;
                }
                temp = GetExaminedAreaSection(investigation);
                if(temp == 0x1d ||
                    (
                        (gMain.scenarioIdx == 2 && temp == 0xE8) ||
                        (gMain.scenarioIdx == 14 && temp == 0xC7) ||
                        (gMain.scenarioIdx == 15 && temp == 0x14F) ||
                        (gMain.scenarioIdx == 18 && temp == 0xA5) ||
                        (gMain.scenarioIdx == 18 && gMain.currentRoomId == 25 && temp == 0x10C) ||
                        (gMain.scenarioIdx == 18 && gMain.currentRoomId == 21 && temp == 0x10C) ||
                        (gMain.scenarioIdx == 15 && gMain.currentRoomId == 23 && temp == 0x15A)
                    )
                ) // ! come one just a little more hardcoding please :(
                {
                    
                    investigation->pointerFrame = 0;
                    investigation->pointerFrameCounter = 0;
                }
                else
                {
                    investigation->pointerFrameCounter++;
                    if(investigation->pointerFrameCounter > 8)
                    {
                        investigation->pointerFrameCounter = 0;
                        investigation->pointerFrame += 4;
                        investigation->pointerFrame &= 0xF;
                    }
                }
                oam->attr0 = SPRITE_ATTR0(investigation->pointerY, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
                if(investigation->pointerX < 120)
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(investigation->pointerX, TRUE, FALSE, 1);
                else
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(investigation->pointerX, FALSE, FALSE, 1);
                oam->attr2 = SPRITE_ATTR2(0x190+investigation->pointerFrame, 0, 8);
                investigation->pointerColorCounter++;
                if(investigation->pointerColorCounter > 1)
                {
                    investigation->pointerColorCounter = 0;
                    investigation->pointerColor += 1;
                    investigation->pointerColor &= 0xF;
                    DmaCopy16(3, (void *)(0x0814DC60)+investigation->pointerColor*32, OBJ_PLTT+0x100, 0x20);
                }
                break;
            case 2:
                if(investigation->selectedActionYOffset > 8)
                    investigation->selectedActionYOffset--;
                if(investigation->actionState == 0)
                {
                    oam->attr0 = SPRITE_ATTR0_CLEAR;
                    ChangeAnimationActivity(&gAnimation[1], TRUE);
                    StartAnimationBlend(1, 1);
                    SET_PROCESS_PTR(INVESTIGATION_PROCESS, INVESTIGATION_MAIN, 0, 0, main);
                    investigation->inactiveActions += 1 << investigation->selectedAction;
                    investigation->selectedActionYOffset = 8;
                    investigation->lastActionYOffset = 0;
                }
                break;
        }
    }
}

void InvestigationMove(struct Main * main, struct InvestigationStruct * investigation) // tantei_move
{
    u32 temp;
    u32 i;
    u32 j;
    u8 * moveLocations;
    u8 * vram;
    struct OamAttrs * oam;
    switch(main->process[GAME_PROCESS_VAR1])
    {
        default:
            break;
        case 0:
            if(investigation->selectedActionYOffset < 16)
                investigation->selectedActionYOffset++;
            investigation->lastActionYOffset = 0;
            if (investigation->selectedActionYOffset >= 16)
                main->process[GAME_PROCESS_VAR1]++;
            break;
        case 1:
            oam = &gOamObjects[38];
            moveLocations = main->roomData[main->currentRoomId];
            moveLocations += 4;
            moveLocations -= 3;
            for(i = 0; i < 4; i++)
            {
                u8 * vram = OBJ_VRAM0 + 0x3400;
                vram += i * 0x800;
                if(*moveLocations != 0xFF)
                {
                    investigation->activeOptions[i] = TRUE;
                    temp = (*moveLocations)*0x800;
                    temp += 0x081DE3E8;
                    DmaCopy16(3, temp, vram, 0x800);
                    for(j = 0; j < 2; j++) // i * 4 fakematch
                    {
                        u32 baseTile = 0x1A0;
                        oam->attr0 = i * 4 + 0x4080;
                        oam->attr1 = j * 64 + 0xC038;
                        oam->attr2 = (j * 0x20 + baseTile + i * 0x40) | 0x9000; // priority 0, palette 9 
                        oam++;
                    }
                }
                else
                {
                    investigation->activeOptions[i] = FALSE;
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                    oam++;
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                    oam++;
                }
                moveLocations++;
            }
            investigation->selectedOption = 0;
            main->process[GAME_PROCESS_VAR1]++;
            main->process[GAME_PROCESS_VAR2] = 0;
            {   
                u32 temp = 0;
                for(i = 0; i < 4; i++) {
                    temp += gInvestigation.activeOptions[i];
                }
                if(temp == 0) {
                    SlideTextbox(1);
                    gInvestigation.actionState = 4;
                    if(gMain.scenarioIdx == 15) {
                        if(gMain.currentRoomId == 23) {
                            ChangeScriptSection(0x159);
                        }
                    }
                    else {
                        ChangeScriptSection(0x1D);
                    }
                }
            }
            break;
        case 2:
            if(main->process[GAME_PROCESS_VAR2] <= 12)
            {
                oam = &gOamObjects[38];
                for(i = 0; i < 4; i++)
                {
                    for(j = 0; j < 2; j++)
                    {
                        oam->attr0 -= (4-i) << 1;
                        oam++;
                    }
                }
                main->process[GAME_PROCESS_VAR2]++;
            }
            oam = &gOamObjects[53];
            temp = (u16)(oam->attr1 & ~0x1ff);
            oam->attr1 -= 6;
            oam->attr1 &= 0x1FF;
            if(oam->attr1 >= 0x100)
                oam->attr1 = 0;
            if(oam->attr1 == 0 && main->process[GAME_PROCESS_VAR2] > 0xC)
            {
                main->process[GAME_PROCESS_VAR1]++;
                main->process[GAME_PROCESS_VAR2] = 0;
            }
            oam->attr1 |= temp;
            break;
        case 3:
            if(main->blendMode)
                break;
            {
                u32 temp = 0;
                for(i = 0; i < 4; i++) {
                    temp += gInvestigation.activeOptions[i];
                }
                if(temp == 0) {
                    if((gScriptContext.flags & 0x8) == 0) {
                        return;
                    }
                    else {
                        SlideTextbox(0);
                        gInvestigation.actionState = 4;
                        gInvestigation.inactiveActionButtonY = 0xE0;
                        gInvestigation.selectedActionYOffset = 0x10;
                        gInvestigation.lastActionYOffset = 0;
                        main->process[GAME_PROCESS_VAR1]++;
                        main->process[GAME_PROCESS_VAR2] = 0;
                        return;
                    }
                }
            }
            if(gJoypad.pressedKeys & START_BUTTON)
            {
                if(!(main->gameStateFlags & 0x10) && gMain.unk30 != 0x7F)
                {
                    PauseBGM();
                    DmaCopy16(3, gOamObjects, &gSaveDataBuffer.oam[25], sizeof(gOamObjects));
                    DmaCopy16(3, &gMain, &gSaveDataBuffer.main, sizeof(gMain));
                    PlaySE(0x31);
                    main->gameStateFlags &= ~1;
                    BACKUP_PROCESS_PTR(main);
                    SET_PROCESS_PTR(SAVE_GAME_PROCESS, 0, 0, 0, main);
                }
                break;
            }
            else if(gJoypad.pressedKeys & R_BUTTON)
            {
                if(!(main->gameStateFlags & 0x10))
                {
                    PlaySE(0x31);
                    main->process[GAME_PROCESS_VAR1] = 6; //! tries opening court record from switch case 6 but fails spectacularly
                    BACKUP_PROCESS_PTR(main);
                    SET_PROCESS_PTR(COURT_RECORD_PROCESS, RECORD_INIT, 0, 0, main);
                    oam = &gOamObjects[38];
                    for(i = 0; i < 8; oam++, i++)
                        oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                }
                break;
            }
            if(gJoypad.pressedKeys & DPAD_UP)
            {
                i = 0;
                j = investigation->selectedOption-1;
                temp = investigation->selectedOption;
                do
                {
                    j &= 3;
                    if(investigation->activeOptions[j] != FALSE)
                    {
                        investigation->selectedOption = j;
                        break;                    
                    }
                    j--;
                }
                while(++i < 4);
                if(temp != investigation->selectedOption)
                    PlaySE(0x2A);
                break;
            }
            else if(gJoypad.pressedKeys & DPAD_DOWN)
            {
                i = 0;
                j = investigation->selectedOption+1;
                temp = investigation->selectedOption;
                do
                {
                    j &= 3;
                    if(investigation->activeOptions[j] != FALSE)
                    {
                        investigation->selectedOption = j;
                        break;                    
                    }
                    j++;
                }
                while(++i < 4) ;
                if(temp != investigation->selectedOption)
                    PlaySE(0x2A);
                break;
            }
            else if(gJoypad.pressedKeys & A_BUTTON)
            {
                u32 roomId;
                PlaySE(0x2B);
                roomId = main->currentRoomId;
                j = investigation->selectedOption+1;
                main->currentRoomId = main->roomData[roomId][j];
                FadeOutBGM(20);
                StartHardwareBlend(2, 1, 1, 0x1F);
                SET_PROCESS_PTR(INVESTIGATION_PROCESS, INVESTIGATION_ROOM_INIT, 0, 0, main);
                break;
            }
            else if(gJoypad.pressedKeys & B_BUTTON)
            {
                PlaySE(0x2C);
                main->process[GAME_PROCESS_VAR1]++;
                main->process[GAME_PROCESS_VAR2] = 0;
                break;
            }
            break;
        case 4:
            if(main->process[GAME_PROCESS_VAR2] <= 12)
            {
                oam = &gOamObjects[38];
                for(i = 0; i < 4; i++)
                {
                    for(j = 0; j < 2; j++)
                    {
                        oam->attr0 += ((4-i) << 1) + 4;
                        oam++;
                    }
                }
                main->process[GAME_PROCESS_VAR2]++;
            }
            oam = &gOamObjects[53];
            temp = (u16)(oam->attr1 & ~0x1ff);
            oam->attr1 += 6;
            oam->attr1 &= 0x1FF;
            if(oam->attr1 >= 60)
            {
                oam->attr1 = 60;
                SetInactiveActionButtons(investigation, 13);
                investigation->actionState = 2;
                investigation->inactiveActionButtonY = 0xE0;
                investigation->selectedActionYOffset = 0x10;
                investigation->lastActionYOffset = 0;
                main->process[GAME_PROCESS_VAR1]++;
            }
            oam->attr1 |= temp;
            break;
        case 5:
            if(main->process[GAME_PROCESS_VAR2] <= 12)
            {
                oam = &gOamObjects[38];
                for(i = 0; i < 4; i++)
                {
                    for(j = 0; j < 2; j++)
                    {
                        oam->attr0 += ((4-i) << 1) + 4;
                        oam++;
                    }
                }
                main->process[GAME_PROCESS_VAR2]++;
            }
            if(investigation->selectedActionYOffset > 8)
                investigation->selectedActionYOffset--;
            if(investigation->actionState == 0 && main->process[GAME_PROCESS_VAR2] > 12)
            {
                SET_PROCESS_PTR(INVESTIGATION_PROCESS, INVESTIGATION_MAIN, 0, 0, main);
                investigation->inactiveActions += 1 << investigation->selectedAction;
                investigation->selectedActionYOffset = 8;
                investigation->lastActionYOffset = 0;
            }
            break;
        case 6:
            oam = &gOamObjects[38];
            moveLocations = main->roomData[main->currentRoomId];
            moveLocations+= 1;
            for(i = 0; i < 4; i++)
            {
                u8 * vram = OBJ_VRAM0 + 0x3400;
                vram += i * 0x800;
                if(*moveLocations != 0xFF)
                {
                    investigation->activeOptions[i] = TRUE;
                    temp = *moveLocations*0x800; //TODO: label vs value?
                    temp += (u32)0x081DE3E8;
                    DmaCopy16(3, temp, vram, 0x800);
                    for(j = 0; j < 2; j++)
                    {
                        u32 baseTile = 0x1A0;
                        oam->attr0 = i * 30 + 0x4018;
                        oam->attr1 = j * 64 + 0xC038;
                        oam->attr2 = (j * 0x20 + baseTile + i * 0x40) | 0x9000; // priority 0, palette 9
                        oam++;
                    }
                }
                else
                {
                    investigation->activeOptions[i] = FALSE;
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                    oam++;
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                    oam++;
                }
                moveLocations++;
            }
            main->process[GAME_PROCESS_VAR1] = 3;
            break;
    }
    oam = &gOamObjects[38];
    for(i = 0; i < 4; i++)
    {
        if(i == investigation->selectedOption)
        {
            for(j = 0; j < 2; j++)
            {
                oam->attr2 &= ~0xF000;
                oam->attr2 += 0x9000;
                oam++;
            }
        }
        else
        {
            for(j = 0; j < 2; j++)
            {
                oam->attr2 &= ~0xF000;
                oam->attr2 += 0xA000;
                oam++;
            }
        }
    }
}

void InvestigationTalk(struct Main * main, struct InvestigationStruct * investigation) // tantei_talk
{
    uintptr_t temp;
    u32 i;
    u32 j;
    u8 * icons;
    uintptr_t vram;
    u32 someflag;
    struct OamAttrs * oam;
    struct TalkData * talkData;
    switch(main->process[GAME_PROCESS_VAR1])
    {
        case 0:
            if(investigation->selectedActionYOffset < 16)
                investigation->selectedActionYOffset++;
            investigation->lastActionYOffset = 0;
            if(investigation->selectedActionYOffset >= 16)
                main->process[GAME_PROCESS_VAR1]++;
            break;
        case 1:
        {
            for(talkData = gTalkData; talkData->roomId != 0xFF; talkData++)
            {
                if(main->currentRoomId == talkData->roomId
                && gAnimation[1].animationInfo.personId == talkData->personId
                && talkData->enableFlag == TRUE)
                    break;
            }
            oam = &gOamObjects[38];
            icons = talkData->iconId;
            for(i = 0; i < 4; i++)
            {
                vram = (uintptr_t)OBJ_VRAM0 + 0x3400;
                vram += i * 0x800;
                if(*icons != 0xFF)
                {
                    investigation->activeOptions[i] = TRUE;
                    temp = (*icons) * 0x800;
                    temp += (uintptr_t)0x081EB3E8;
                    DmaCopy16(3, temp, vram, 0x800);
                    for(j = 0; j < 2; j++)
                    {
                        u32 baseTile = 0x1A0;
                        oam->attr0 = i * 4 + 0x4080;
                        oam->attr1 = j * 64 + 0xC038;
                        oam->attr2 = (j * 0x20 + baseTile + i * 0x40) | 0x9000; // priority 0, palette 9 
                        oam++;
                    }
                }
                else
                {
                    investigation->activeOptions[i] = FALSE;
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                    oam++;
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                    oam++;
                }
                icons++;
            }
            DmaCopy16(3, 0x08142BFC, OBJ_VRAM0+0x5400, 0x200);
            DmaCopy16(3, 0x0814DE80, PLTT+0x360, 0x20);
            if(investigation->previousSelectedOption) {
                investigation->selectedOption = investigation->previousSelectedOption;
                investigation->previousSelectedOption = 0;
            }
            else {
                investigation->selectedOption = 0;
            }
            main->process[GAME_PROCESS_VAR1]++;
            main->process[GAME_PROCESS_VAR2] = 0;

            break;
        }
        case 2:
        {
            if(main->process[GAME_PROCESS_VAR2] <= 12)
            {
                oam = &gOamObjects[38];
                for(i = 0; i < 4; i++)
                {
                    for(j = 0; j < 2; j++)
                    {
                        oam->attr0 -= ((4-i) << 1);
                        oam++;
                    }
                }
                main->process[GAME_PROCESS_VAR2]++;
            }
            oam = &gOamObjects[54];
            temp = (u16)(oam->attr1 & ~0x1ff);
            oam->attr1 -= 9;
            oam->attr1 &= 0x1FF;
            if(oam->attr1 >= 256)
                oam->attr1 = 0;
            if(oam->attr1 == 0 && main->process[GAME_PROCESS_VAR2] > 12)
            {
                main->process[GAME_PROCESS_VAR1]++;
                main->process[GAME_PROCESS_VAR2] = 0;
            }
            oam->attr1 |= temp;
            break;
        }
        case 3:
        {
            DmaCopy16(3, 0x08142BFC, OBJ_VRAM0+0x5400, 0x200);
            DmaCopy16(3, 0x0814DE80, OBJ_PLTT+0x160, 0x20);
            for(talkData = gTalkData; talkData->roomId != 0xFF; talkData++)
            {
                if(main->currentRoomId == talkData->roomId
                && gAnimation[1].animationInfo.personId == talkData->personId
                && talkData->enableFlag == TRUE)
                    break;
            }
            vram = TRUE;
            if(main->blendMode == 0)
            {
                if(gJoypad.pressedKeys & START_BUTTON)
                {
                    if(!(main->gameStateFlags & 0x10) && gMain.unk30 != 0x7F)
                    {
                        PauseBGM();
                        DmaCopy16(3, gOamObjects, &gSaveDataBuffer.oam[25], sizeof(gOamObjects));
                        DmaCopy16(3, &gMain, &gSaveDataBuffer.main, sizeof(gMain));
                        if(gScriptContext.textboxState == 2 && gScriptContext.textboxYPos == 1) {
                            gSaveDataBuffer.main.showTextboxCharacters = 1;
                        }
                        PlaySE(0x31);
                        main->gameStateFlags &= ~1;
                        BACKUP_PROCESS_PTR(main);
                        SET_PROCESS_PTR(SAVE_GAME_PROCESS, 0, 0, 0, main);
                    }
                }
                else if(gJoypad.pressedKeys & R_BUTTON)
                {
                    if(!(main->gameStateFlags & 0x10))
                    {
                        PlaySE(0x31);
                        main->process[GAME_PROCESS_VAR1] = 8;
                        BACKUP_PROCESS_PTR(main);
                        SET_PROCESS_PTR(COURT_RECORD_PROCESS, RECORD_INIT, 0, 0, main);
                        oam = &gOamObjects[38];
                        for(i = 0; i < 8; oam++, i++)
                            oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                        vram = FALSE;
                    }
                }
                else if(gJoypad.pressedKeys & DPAD_UP)
                {
                    i = 0;
                    j = investigation->selectedOption-1;
                    temp = investigation->selectedOption;
                    do
                    {
                        j &= 3;
                        if(investigation->activeOptions[j] != FALSE)
                        {
                            investigation->selectedOption = j;
                            break;                    
                        }
                        j--;
                    }
                    while(++i < 4);
                    if(temp != investigation->selectedOption)
                        PlaySE(0x2A);
                }
                else if(gJoypad.pressedKeys & DPAD_DOWN)
                {
                    i = 0;
                    j = investigation->selectedOption+1;
                    temp = investigation->selectedOption;
                    do
                    {
                        j &= 3;
                        if(investigation->activeOptions[j] != FALSE)
                        {
                            investigation->selectedOption = j;
                            break;                    
                        }
                        j++;
                    }
                    while(++i < 4);
                    if(temp != investigation->selectedOption)
                        PlaySE(0x2A);
                }
                else if(gJoypad.pressedKeys & A_BUTTON)
                {
                    PlaySE(0x2B);
                    temp = talkData->talkSection[investigation->selectedOption];
                    ChangeScriptSection(temp);
                    SlideTextbox(1);
                    if(GetFlag(2, talkData->talkFlagId[investigation->selectedOption]))
                        gScriptContext.textSkip = 0;
                    else
                    {
                        gScriptContext.textSkip = 0;
                        ChangeFlag(2, talkData->talkFlagId[investigation->selectedOption], TRUE);
                    }
                    SetInactiveActionButtons(investigation, 4);
                    investigation->inactiveActionButtonY = 0xF0;
                    investigation->actionState = 3;
                    main->process[GAME_PROCESS_VAR1] = 6;
                    main->process[GAME_PROCESS_VAR2] = 0;
                    vram = FALSE;
                }
                else if(gJoypad.pressedKeys & B_BUTTON)
                {
                    PlaySE(0x2C);
                    main->process[GAME_PROCESS_VAR1]++;
                    main->process[GAME_PROCESS_VAR2] = 0;
                    vram = FALSE;
                }
            }
            oam = &gOamObjects[34];
            if(vram)
            {
                for(i = 0; i < 4; i++)
                {
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                    for(j = 0; j < 4; j++)
                    {
                        if(GetFlag(2, talkData->talkFlagId[i]))
                        {
                            u16 blab = sub_800EADC(talkData->talkSection[i]);
                            if(blab) {
                                DmaCopy16(3, 0x081471FC, OBJ_VRAM0+0x3000, 0x200);
                                DmaCopy16(3, 0x0814E320, OBJ_PLTT+0xE0, 0x20);
                                oam->attr0 = 0x16 + i * 30;
                                oam->attr1 = 0x8024;
                                oam->attr2 = 0x7180;
                            }
                            else {
                                oam->attr0 = 0x10 + i * 30;
                                oam->attr1 = 0x8030;
                                oam->attr2 = 0xB2A0;
                            }
                            break;
                        }
                    }
                    oam++;
                }
            }
            else
            {
                for(i = 0; i < 4; i++)
                {
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                    oam++;
                }
            }
            break;
        }
        case 4:
        {
            if(main->process[GAME_PROCESS_VAR2] <= 12)
            {
                oam = &gOamObjects[38];
                for(i = 0; i < 4; i++)
                {
                    for(j = 0; j < 2; j++)
                    {
                        oam->attr0 += ((4-i) << 1) + 4;
                        oam++;
                    }
                }
                main->process[GAME_PROCESS_VAR2]++;
            }
            oam = &gOamObjects[54];
            temp = (u16)(oam->attr1 & ~0x1ff);
            oam->attr1 += 9;
            oam->attr1 &= 0x1FF;
            if(oam->attr1 >= 120)
            {
                oam->attr1 = 120;
                SetInactiveActionButtons(investigation, 0xB);
                investigation->actionState = 2;
                investigation->inactiveActionButtonY = 0xE0;
                investigation->selectedActionYOffset = 0x10;
                investigation->lastActionYOffset = 0;
                main->process[GAME_PROCESS_VAR1]++;
            }
            oam->attr1 |= temp;
            break;
        }
        case 5:
            if(main->process[GAME_PROCESS_VAR2] <= 12)
            {
                oam = &gOamObjects[38];
                for(i = 0; i < 4; i++)
                {
                    for(j = 0; j < 2; j++)
                    {
                        oam->attr0 += ((4-i) << 1) + 4;
                        oam++;
                    }
                }
                main->process[GAME_PROCESS_VAR2]++;
            }
            if(investigation->selectedActionYOffset > 8)
                investigation->selectedActionYOffset--;
            if(investigation->actionState == 0 && main->process[GAME_PROCESS_VAR2] > 12)
            {

                DmaCopy16(3, 0x081412FC, OBJ_VRAM0+0x3000, 0x200);
                DmaCopy16(3, 0x0814DC00, OBJ_PLTT+0xE0, 0x20);
                SET_PROCESS_PTR(INVESTIGATION_PROCESS, INVESTIGATION_MAIN, 0, 0, main);
                investigation->inactiveActions += 1 << investigation->selectedAction;
                investigation->selectedActionYOffset = 8;
                investigation->lastActionYOffset = 0;
            }
            break;
        case 6:
            if(main->blendMode)
                return;
            if(gJoypad.pressedKeys & START_BUTTON)
            {
                if(!(main->gameStateFlags & 0x10))
                {
                    if((gScriptContext.flags & (SCRIPT_FULLSCREEN | 1)) && gMain.unk30 != 0x7F)
                    {
                        PauseBGM();
                        DmaCopy16(3, gOamObjects, &gSaveDataBuffer.oam[25], sizeof(gOamObjects));
                        DmaCopy16(3, &gMain, &gSaveDataBuffer.main, sizeof(gMain));
                        if(gScriptContext.textboxState == 2 && gScriptContext.textboxYPos == 1) {
                            gSaveDataBuffer.main.showTextboxCharacters = 1;
                        }
                        PlaySE(0x31);
                        main->gameStateFlags &= ~1;
                        BACKUP_PROCESS_PTR(main);
                        SET_PROCESS_PTR(SAVE_GAME_PROCESS, 0, 0, 0, main);
                        return;
                    }
                }
            }
            if(gJoypad.pressedKeys & R_BUTTON)
            {
                if(!(main->gameStateFlags & 0x10))
                {
                    if(gScriptContext.flags & (SCRIPT_FULLSCREEN | 1))
                    {
                        PlaySE(0x31);
                        BACKUP_PROCESS_PTR(main);
                        SET_PROCESS_PTR(COURT_RECORD_PROCESS, RECORD_INIT, 0, 0, main);
                        return;
                    }
                }
            }
            if(main->process[GAME_PROCESS_VAR2] <= 12)
            {
                oam = &gOamObjects[38];
                for(i = 0; i < 4; i++)
                {
                    for(j = 0; j < 2; j++)
                    {
                        oam->attr0 += ((4-i) << 1) + 4;
                        oam++;
                    }
                }
                main->process[GAME_PROCESS_VAR2]++;
            }
            if(gScriptContext.textboxState == 1)
            {
                u8 r4;
            
                oam = &gOamObjects[54];
                oam->attr1 &= ~0x1FF;
                for(talkData = gTalkData; talkData->roomId != 0xFF; talkData++)
                {
                    if(main->currentRoomId == talkData->roomId
                    && gAnimation[1].animationInfo.personId == talkData->personId
                    && talkData->enableFlag == TRUE)
                        break;
                }
                oam = &gOamObjects[38];
                icons = talkData->iconId;
                for(i = 0; i < 4; i++)
                {
                    vram = (uintptr_t)OBJ_VRAM0 + 0x3400;
                    vram += i * 0x800;
                    if(*icons != 0xFF)
                    {
                        investigation->activeOptions[i] = TRUE;
                        temp = (*icons) * 0x800;
                        temp += (uintptr_t)0x081EB3E8;
                        DmaCopy16(3, temp, vram, 0x800);
                        for(j = 0; j < 2; j++)
                        {
                            u32 baseTile = 0x1A0;
                            oam->attr0 = i * 4 + 0x4080;
                            oam->attr1 = j * 64 + 0xC038;
                            oam->attr2 = (j * 0x20 + baseTile + i * 0x40) | 0x9000; // priority 0, palette 9 
                            oam++;
                        }
                    }
                    else
                    {
                        investigation->activeOptions[i] = FALSE;
                        oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                        oam++;
                        oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                        oam++;
                    }
                    icons++;
                }
                r4 = investigation->selectedOption;
                if(!investigation->activeOptions[r4] && investigation->selectedOption) {
                    investigation->selectedOption--;
                }
                SetInactiveActionButtons(&gInvestigation, 4);
                if (r4) {r4++; r4--;}
                gInvestigation.actionState = 1;
                gInvestigation.selectedActionYOffset = 0;
                gInvestigation.lastActionYOffset = 0;
                main->process[GAME_PROCESS_VAR1]++;
                main->process[GAME_PROCESS_VAR2] = 0;
            }
            break;
        case 7:
            if(main->process[GAME_PROCESS_VAR2] <= 12)
            {
                oam = &gOamObjects[38];
                for(i = 0; i < 4; i++)
                {
                    for(j = 0; j < 2; j++)
                    {
                        oam->attr0 -= ((4-i) << 1);
                        oam++;
                    }
                }
                main->process[GAME_PROCESS_VAR2]++;
            }
            if(investigation->actionState == 0 && main->process[GAME_PROCESS_VAR2] > 12)
            {
                main->process[GAME_PROCESS_VAR1] = 3;
                main->process[GAME_PROCESS_VAR2] = 0;
            }
            break;
        case 8:
        {
            for(talkData = gTalkData; talkData->roomId != 0xFF; talkData++)
            {
                if(main->currentRoomId == talkData->roomId
                && gAnimation[1].animationInfo.personId == talkData->personId
                && talkData->enableFlag == TRUE)
                    break;
            }
            oam = &gOamObjects[38];
            icons = talkData->iconId;
            for(i = 0; i < 4; i++)
            {
                vram = (uintptr_t)OBJ_VRAM0 + 0x3400;
                vram += i * 0x800;
                if(*icons != 0xFF)
                {
                    investigation->activeOptions[i] = TRUE;
                    temp = (*icons) * 0x800;
                    temp += (uintptr_t)0x081EB3E8;
                    DmaCopy16(3, temp, vram, 0x800);
                    for(j = 0; j < 2; j++)
                    {
                        u32 baseTile = 0x1A0;
                        oam->attr0 = i * 30 + 0x4018;
                        oam->attr1 = j * 64 + 0xC038;
                        oam->attr2 = (j * 0x20 + baseTile + i * 0x40) | 0x9000; // priority 0, palette 9 
                        oam++;
                    }
                }
                else
                {
                    investigation->activeOptions[i] = FALSE;
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                    oam++;
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH+60, FALSE, FALSE, 0);
                    oam++;
                }
                icons++;
            }
            main->process[GAME_PROCESS_VAR1] = 3;
            break;
        }
    }
    oam = &gOamObjects[38];
    for(i = 0; i < 4; i++)
    {
        if(i == investigation->selectedOption)
        {
            for(j = 0; j < 2; j++)
            {
                oam->attr2 &= ~0xF000;
                oam->attr2 += 0x9000;
                oam++;
            }
        }
        else
        {
            for(j = 0; j < 2; j++)
            {
                oam->attr2 &= ~0xF000;
                oam->attr2 += 0xA000;
                oam++;
            }
        }
    }
}

void InvestigationPresent(struct Main * main, struct InvestigationStruct * investigation) // tantei_show
{
    struct OamAttrs * oam;
    u32 i;

    switch(main->process[GAME_PROCESS_VAR1])
    {
        case 0:
            if(investigation->selectedActionYOffset < 16)
                investigation->selectedActionYOffset++;
            investigation->lastActionYOffset = 0;
            if (investigation->selectedActionYOffset >= 16)
                main->process[GAME_PROCESS_VAR1]++;
            break;
        case 1:
            if(investigation->inactiveActionButtonY == 0xE0)
            {
                main->process[GAME_PROCESS_VAR1]++;
                BACKUP_PROCESS_PTR(main);
                SET_PROCESS_PTR(COURT_RECORD_PROCESS, RECORD_INIT, 0, 2, main);
            }
            break;
        case 2:
            if(investigation->inactiveActionButtonY == 0xE0
            && gScriptContext.textboxState == 0)
            {
                oam = &gOamObjects[52];
                for(i = 0; i < 4; i++)
                {
                    oam->attr0 = 0x40E0;
                    oam->attr1 = i * 60 + 0xC000;
                    oam->attr2 = i * 0x20 + 0x5100;
                    oam++;
                }
                SetInactiveActionButtons(investigation, 0xF);
                investigation->inactiveActionButtonY = 0xE0; // inactiveActionButtonY is already 0xE0 wtf
                investigation->selectedActionYOffset = 0x40;
                investigation->lastActionYOffset = 8;
                investigation->selectedAction = 3;
                investigation->lastAction = 3;
                SET_PROCESS_PTR(INVESTIGATION_PROCESS, INVESTIGATION_MAIN, 0, 0, main);
            }
            break;
        case 3:
            SetInactiveActionButtons(investigation, 7);
            investigation->actionState = 2;
            investigation->inactiveActionButtonY = 0xE0;
            investigation->selectedActionYOffset = 0x10;
            investigation->lastActionYOffset = 0;
            main->process[GAME_PROCESS_VAR1]++;
            break;
        case 4:
            if(investigation->selectedActionYOffset > 8)
                investigation->selectedActionYOffset--;
            if(investigation->actionState == 0)
            {
                investigation->selectedActionYOffset = 8;
                investigation->lastActionYOffset = 0;
                investigation->inactiveActions += 1 << investigation->selectedAction;
                SET_PROCESS_PTR(INVESTIGATION_PROCESS, INVESTIGATION_MAIN, 0, 0, main);
            }
            break;
    }
}
