#include "global.h"
#include "court.h"
#include "script.h"
#include "graphics.h"
#include "investigation.h"
#include "background.h"
#include "animation.h"
#include "sound.h"
#include "save.h"
#include "constants/animation.h"
#include "constants/process.h"
#include "constants/songs.h"
#include "constants/oam_allocations.h"
#include "constants/persons.h"

void SetCurrentEpisodeBit()
{
    struct Main * main = &gMain;
	u8 mask = 1;
	u8 i;
    switch(main->scenarioIdx)
    {
        case 0:
        case 1:
			main->caseEnabledFlags |= 1;
			mask = 1;
            break;
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
            main->caseEnabledFlags |= 2;
			mask = 2;
            break;
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
            main->caseEnabledFlags |= 4;
			mask = 4;
            break;
        case 14:
        case 15:
        case 16:
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
            main->caseEnabledFlags |= 8;
			mask = 8;
            break;
        default:
            main->caseEnabledFlags |= 1;
			mask = 1;
    }
	if((main->caseEnabledFlags >> 4) & mask) {
		for(i = 0; i < 8; i++) {
			main->unk100[i] = ~0;
		}
	}
}

void (*gCourtProcessStates[])(struct Main *) = {
	CourtInit,
	CourtMain,
	CourtExit
};

void CourtProcess(struct Main * main)
{
    gCourtProcessStates[main->process[GAME_PROCESS_STATE]](main);
}

void CourtInit(struct Main * main)
{
    struct IORegisters * ioRegs = &gIORegisters;
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
    DmaCopy16(3, gUnusedAsciiCharSet, VRAM + 0x3800, 0x800);
    DmaCopy16(3, gUnknown_0813791C, VRAM, 0x1000);
    DmaCopy16(3, &gUnknown_0814DC60[0], OBJ_PLTT+0x100, 0x20);
    DmaCopy16(3, gGfxPalEvidenceProfileDesc, OBJ_PLTT + 0x40, 0x20);
    DecompressBackgroundIntoBuffer(1);
    CopyBGDataToVram(1);
    CopyBGDataToVram(0x80);
    ioRegs->lcd_bg1vofs = ~80; // ??????
    ioRegs->lcd_dispcnt &= ~DISPCNT_BG1_ON; // what the fuck is this doing
    InitializeCourtRecordForScenario(main, &gCourtRecord);
    sub_80178E0();
    DmaFill32(3, 0, main->scriptFlags, sizeof(main->scriptFlags));
    main->gameStateFlags = 0;
    DmaFill32(3, 0, main->unk100, sizeof(main->unk100));
    DmaFill32(3, 0, main->unk25C, sizeof(main->unk25C));
    DmaFill32(3, 0, main->unk276, sizeof(main->unk276));
    main->unk286 = 0;
    main->tilemapUpdateBits = 0xF;
    main->advanceScriptContext = TRUE;
    main->showTextboxCharacters = TRUE;
    gScriptContext.currentSection = 0xFFFF;
    ChangeScriptSection(0x80);
    SetCurrentEpisodeBit();
    SetTimedKeysAndDelay(DPAD_RIGHT | DPAD_LEFT, 15);
    StartHardwareBlend(1, 1, 1, 0x1F);
    ioRegs->lcd_bldy = 0x10;
    SET_PROCESS(COURT_PROCESS, COURT_MAIN, 0, 0);
}

void CourtMain(struct Main * main)
{
    if(main->blendMode)
        return;
    if((gJoypad.pressedKeys & START_BUTTON) &&
    !(main->gameStateFlags & 0x10) &&
    gScriptContext.flags & (SCRIPT_FULLSCREEN | 1) &&
    main->isBGScrolling == 0)
    {
        PauseBGM();
        DmaCopy16(3, gOamObjects, gSaveDataBuffer.oam, sizeof(gOamObjects));
        DmaCopy16(3, &gMain, &gSaveDataBuffer.main, sizeof(gMain));
        if(gScriptContext.textboxState == 2 && gScriptContext.textboxYPos == 1) {
            gSaveDataBuffer.main.showTextboxCharacters = 1;
        }
        PlaySE(SE007_MENU_OPEN_SUBMENU);
        main->gameStateFlags &= ~1;
        BACKUP_PROCESS_PTR(main);
        SET_PROCESS_PTR(SAVE_GAME_PROCESS, 0, 0, 0, main);
    }
    else if((gJoypad.pressedKeys & R_BUTTON) &&
    !(main->gameStateFlags & 0x10) &&
    gScriptContext.flags & (SCRIPT_FULLSCREEN | 1))
    {
        sub_8017864();
        PlaySE(SE007_MENU_OPEN_SUBMENU);
        BACKUP_PROCESS_PTR(main);
        SET_PROCESS_PTR(COURT_RECORD_PROCESS, RECORD_INIT, 0, 0, main);
    }
}

void CourtExit(struct Main * main)
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

void TestimonyAnim(struct Main * main)
{
    struct AnimationListEntry * animation;
    struct AnimationListEntry * animation2;
    struct AnimationListEntry * animation3;
    switch(main->process[GAME_PROCESS_VAR1])
    {
        case 0:
            PlayAnimation(ANIM_TESTIMONY_START_LEFT);
            PlayAnimation(ANIM_TESTIMONY_START_RIGHT);
            PlaySE(SE029_BEGIN_QUESTIONING);
            gTestimony.unk4 = 0;
            main->process[GAME_PROCESS_VAR1]++;
            break;
        case 1:
            animation = FindAnimationFromAnimId(ANIM_TESTIMONY_START_LEFT);
            animation2 = FindAnimationFromAnimId(ANIM_TESTIMONY_START_RIGHT);
            animation->animationInfo.xOrigin += 10;
            animation->flags |= ANIM_ACTIVE;
            animation2->animationInfo.xOrigin -= 10;
            animation2->flags |= ANIM_ACTIVE;
            if(animation->animationInfo.xOrigin >= 120)
            {
                StartHardwareBlend(3, 1, 8, 0x1F);
                DestroyAnimation(animation);
                DestroyAnimation(animation2);
                PlayAnimation(ANIM_TESTIMONY_START);
                main->process[GAME_PROCESS_VAR1]++;
            }
            break;
        case 2: // why not just do it in the next case like please
            if(main->blendMode == 0)
                main->process[GAME_PROCESS_VAR1]++;
            break;
        case 3:
            animation3 = FindAnimationFromAnimId(ANIM_TESTIMONY_START);
            if(!(animation3->flags & ANIM_PLAYING))
            {
                DestroyAnimation(animation3);
                PlayAnimationAtCustomOrigin(ANIM_TESTIMONY_START_LEFT, 120, 60);
                PlayAnimationAtCustomOrigin(ANIM_TESTIMONY_START_RIGHT, 120, 60);
                main->process[GAME_PROCESS_VAR1]++;
            }
            break;
        case 4:
            animation = FindAnimationFromAnimId(ANIM_TESTIMONY_START_LEFT);
            animation2 = FindAnimationFromAnimId(ANIM_TESTIMONY_START_RIGHT);
            animation->animationInfo.xOrigin += gTestimony.unk4;
            animation->flags |= ANIM_ACTIVE;
            animation2->animationInfo.xOrigin -= gTestimony.unk4;
            animation2->flags |= ANIM_ACTIVE;
            gTestimony.unk4++;
            if(gTestimony.unk4 > 12)
                gTestimony.unk4 = 12;
            if(animation->animationInfo.xOrigin > 300)
            {
                DestroyAnimation(animation);
                DestroyAnimation(animation2);
                main->process[GAME_PROCESS_STATE] = TESTIMONY_MAIN;
            }
        default:
            break;
    }
}

void (*gTestimonyProcessStates[])(struct Main *) = {
	TestimonyInit,
	TestimonyMain,
	TestimonyExit,
	TestimonyAnim
};

void TestimonyProcess(struct Main * main)
{
    gTestimonyProcessStates[main->process[GAME_PROCESS_STATE]](main);
}

void TestimonyInit(struct Main * main)
{
    DmaCopy16(3, gGfx4bppTestimonyTextTiles, OBJ_VRAM0+0x3000, 0x800);
    DmaCopy16(3, gUnknown_0814DC20, OBJ_PLTT+0xA0, 0x20);
    gTestimony.timer = 0;
    main->process[GAME_PROCESS_STATE] = TESTIMONY_ANIM;
}

void TestimonyMain(struct Main * main)
{
    struct OamAttrs * oam;
    if(main->blendMode)
        return;
    if((gJoypad.pressedKeys & START_BUTTON) &&
    !(main->gameStateFlags & 0x10) &&
    gScriptContext.flags & (SCRIPT_FULLSCREEN | 1))
    {
        PauseBGM();
        DmaCopy16(3, gOamObjects, gSaveDataBuffer.oam, sizeof(gOamObjects));
        DmaCopy16(3, &gMain, &gSaveDataBuffer.main, sizeof(gMain));
        if(gScriptContext.textboxState == 2 && gScriptContext.textboxYPos == 1) {
            gSaveDataBuffer.main.showTextboxCharacters = 1;
        }
        PlaySE(SE007_MENU_OPEN_SUBMENU);
        main->gameStateFlags &= ~1;
        BACKUP_PROCESS_PTR(main);
        SET_PROCESS_PTR(SAVE_GAME_PROCESS, 0, 0, 0, main);
    }
    else if((gJoypad.pressedKeys & R_BUTTON) &&
    !(main->gameStateFlags & 0x10) &&
    gScriptContext.flags & (SCRIPT_FULLSCREEN | 1))
    {
        sub_8017864();
        PlaySE(SE007_MENU_OPEN_SUBMENU);
        BACKUP_PROCESS_PTR(main);
        SET_PROCESS_PTR(COURT_RECORD_PROCESS, RECORD_INIT, 0, 0, main);
    }
    gTestimony.timer++;
    if(gTestimony.timer > 100)
        gTestimony.timer = 0;
    oam = &gOamObjects[OAM_IDX_ITESTIMONY_INDICATOR];
    if(gTestimony.timer <= 80)
    {
        oam->attr0 = SPRITE_ATTR0(0, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(0, FALSE, FALSE, 3);
        oam->attr2 = SPRITE_ATTR2(0x180, 2, 5);
    }
    else
        oam->attr0 = SPRITE_ATTR0_CLEAR;
}

void TestimonyExit(struct Main * main)
{
    struct OamAttrs * oam = &gOamObjects[OAM_IDX_ITESTIMONY_INDICATOR];
    oam->attr0 = SPRITE_ATTR0_CLEAR;
    SET_PROCESS_PTR(COURT_PROCESS, COURT_MAIN, 0, 0, main);
}


void QuestioningAnim(struct Main * main)
{
    struct AnimationListEntry * animation;
    struct AnimationListEntry * animation2;
    struct AnimationListEntry * animation3;
    switch(main->process[GAME_PROCESS_VAR1])
    {
        case 0:
            PlayAnimation(ANIM_CROSS_EXAMINATION_START_LEFT);
            PlayAnimation(ANIM_CROSS_EXAMINATION_START_RIGHT);
            PlaySE(SE029_BEGIN_QUESTIONING);
            main->process[GAME_PROCESS_VAR1]++;
            break;
        case 1:
            animation = FindAnimationFromAnimId(ANIM_CROSS_EXAMINATION_START_LEFT);
            animation2 = FindAnimationFromAnimId(ANIM_CROSS_EXAMINATION_START_RIGHT);
            animation->animationInfo.xOrigin += 10;
            animation->flags |= ANIM_ACTIVE;
            animation2->animationInfo.xOrigin -= 10;
            animation2->flags |= ANIM_ACTIVE;
            if(animation->animationInfo.xOrigin >= 120)
            {
                StartHardwareBlend(3, 1, 8, 0x1F);
                DestroyAnimation(animation);
                DestroyAnimation(animation2);
                PlayAnimation(ANIM_CROSS_EXAMINATION_START);
                main->process[GAME_PROCESS_VAR1]++;
            }
            break;
        case 2: // why not just do it in the next case like please
            if(main->blendMode == 0)
                main->process[GAME_PROCESS_VAR1]++;
            break;
        case 3:
            animation3 = FindAnimationFromAnimId(ANIM_CROSS_EXAMINATION_START);
            if(!(animation3->flags & ANIM_PLAYING))
            {
                DestroyAnimation(animation3);
                PlayAnimationAtCustomOrigin(ANIM_CROSS_EXAMINATION_START_LEFT, 120, 60);
                PlayAnimationAtCustomOrigin(ANIM_CROSS_EXAMINATION_START_RIGHT, 120, 60);
                main->process[GAME_PROCESS_VAR1]++;
            }
            break;
        case 4:
            animation = FindAnimationFromAnimId(ANIM_CROSS_EXAMINATION_START_LEFT);
            animation2 = FindAnimationFromAnimId(ANIM_CROSS_EXAMINATION_START_RIGHT);
            animation->animationInfo.yOrigin -= 7;
            animation->flags |= ANIM_ACTIVE;
            animation2->animationInfo.yOrigin += 7;
            animation2->flags |= ANIM_ACTIVE;
            if(animation->animationInfo.yOrigin < -60)
            {
                DestroyAnimation(animation);
                DestroyAnimation(animation2);
                main->process[GAME_PROCESS_STATE] = QUESTIONING_MAIN;
                main->process[GAME_PROCESS_VAR1] = 0;
            }
        default:
            break;
    }
}

void (*gQuestioningProcessStates[])(struct Main *) = {
	QuestioningInit,
	QuestioningMain,
	QuestioningExit,
	QuestioningAnim,
	QuestioningHoldIt,
	QuestioningObjection
};

void QuestioningProcess(struct Main * main)
{
    gQuestioningProcessStates[main->process[GAME_PROCESS_STATE]](main);
}

void QuestioningInit(struct Main * main)
{
    DmaCopy16(3, gUnknown_08141CFC, OBJ_VRAM0+0x3000, 0x400);
    DmaCopy16(3, gUnknown_0814DC40, OBJ_PLTT+0xA0, 0x20);
    DmaCopy16(3, gGfx4bppTestimonyArrows, 0x1A0, 0x80); // ! WHAT, HOW
    DmaCopy16(3, gGfx4bppTestimonyArrows + 12 * TILE_SIZE_4BPP, 0x220, 0x80); // ! WHAT, HOW
    main->testimonyBeginningSection = gScriptContext.currentSection;
    gCourtRecord.recordArrowCounter = 0;
    gCourtRecord.recordArrowFrame++;
    // gTestimony.healthPointX = 0xF0;
    gTestimony.pressPromptY = 0xE0;
    gTestimony.presentPromptY = 0xE0;
    gTestimony.displayState = 0;
    main->process[GAME_PROCESS_STATE] = QUESTIONING_ANIM;
    sub_80178E0();
}

void QuestioningMain(struct Main * main)
{
    struct OamAttrs * oam;

    if(main->blendMode)
        return;
    if(gScriptContext.flags & (SCRIPT_SPOTSELECT_MOVE_TO_START | SCRIPT_SPOTSELECT_INPUT)) {
        UpdateQuestioningMenuSprites(main, &gTestimony, 1);
        return;
    }
    else if((gJoypad.pressedKeys & START_BUTTON))
    {
        if(!(main->gameStateFlags & 0x10) && gScriptContext.flags & (SCRIPT_LOOP | SCRIPT_FULLSCREEN | 1))
        {
            PauseBGM();
            DmaCopy16(3, gOamObjects, gSaveDataBuffer.oam, sizeof(gOamObjects));
            DmaCopy16(3, &gMain, &gSaveDataBuffer.main, sizeof(gMain));
            if(gScriptContext.textboxState == 2 && gScriptContext.textboxYPos == 1) {
                gSaveDataBuffer.main.showTextboxCharacters = 1;
            }
            PlaySE(SE007_MENU_OPEN_SUBMENU);
            main->gameStateFlags &= ~1;
            BACKUP_PROCESS_PTR(main);
            SET_PROCESS_PTR(SAVE_GAME_PROCESS, 0, 0, 0, main);
        }
    }
    else if(gScriptContext.flags & SCRIPT_LOOP)
    {
        u32 section;
        if((gJoypad.pressedKeys & A_BUTTON) || (gJoypad.pressedKeys & DPAD_RIGHT))
        {
            if((gJoypad.pressedKeys & A_BUTTON) || gScriptContext.nextSection != main->unk1E)
            {
            section = gScriptContext.nextSection;
            PlaySE(SE001_MENU_CONFIRM);
            ChangeScriptSection(section);
            RunScriptContext();
            }
        }
        else if(gJoypad.pressedKeys & (B_BUTTON | DPAD_LEFT))
        {
            if(gScriptContext.currentSection-1 != main->testimonyBeginningSection)
            {
                section = gScriptContext.currentSection-1;
                PlaySE(SE001_MENU_CONFIRM);
                ChangeScriptSection(section);
                RunScriptContext();
            }
        }
        else if(gJoypad.pressedKeys & L_BUTTON)
        {
            if(gScriptContext.holdItSection != 0)
            {
                PlayAnimation(ANIM_HOLDIT_LEFT);
                PlaySE(SE01D_VOICE_PHOENIX_HOLD_IT_JP);
                StartHardwareBlend(3, 1, 4, 0x1F);
                gTestimony.timer = 0x40;
                gTestimony.pressPromptY = 0xE0;
                gTestimony.presentPromptY = 0xE0;
                gIORegisters.lcd_dispcnt &= ~DISPCNT_BG1_ON;
                main->advanceScriptContext = FALSE;
                main->showTextboxCharacters = FALSE;
                SetTextboxNametag(0, 0);
                main->process[GAME_PROCESS_STATE] = QUESTIONING_HOLD_IT;
                main->process[GAME_PROCESS_VAR1] = 0;
                return;
            }
        }
        else if(gJoypad.pressedKeys & R_BUTTON)
        {
            sub_8017864();
            PlaySE(SE007_MENU_OPEN_SUBMENU);
            BACKUP_PROCESS_PTR(main);
            SET_PROCESS_PTR(COURT_RECORD_PROCESS, RECORD_INIT, 0, 1, main);
        }
    }
    else if((gJoypad.pressedKeys & R_BUTTON) &&
    !(main->gameStateFlags & 0x10) &&
    gScriptContext.flags & (SCRIPT_FULLSCREEN | 1))
    {
        sub_8017864();
        PlaySE(SE007_MENU_OPEN_SUBMENU);
        BACKUP_PROCESS_PTR(main);
        SET_PROCESS_PTR(COURT_RECORD_PROCESS, RECORD_INIT, 0, 0, main);
    }
    
    UpdateQuestioningMenuSprites(main, &gTestimony, 1);

    UpdateCourtRecordArrows(&gCourtRecord);
    oam = gOamObjects + OAM_IDX_LR_ARROW;
    if(gScriptContext.flags & SCRIPT_LOOP)
    {
        if(gScriptContext.currentSection-1 != main->testimonyBeginningSection)
            oam->attr0 = SPRITE_ATTR0(128, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
        else
            oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(0, FALSE, FALSE, 1);
        oam->attr2 = SPRITE_ATTR2(0x1A0, 0, 2);
        oam++;
        if(gScriptContext.nextSection != main->unk1E)
            oam->attr0 = SPRITE_ATTR0(128, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
        else
            oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH-16, FALSE, FALSE, 1);
        oam->attr2 = SPRITE_ATTR2(0x1A4, 0, 2);
    }
    else
    {
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
        oam->attr0 = SPRITE_ATTR0_CLEAR;
    }
}

void QuestioningExit(struct Main * main) // ! why a nullsub??
{

}

void QuestioningHoldIt(struct Main * main)
{
    switch(main->process[GAME_PROCESS_VAR1])
    {
        case 0:
            if(gTestimony.timer == 0)
            {
                SetCourtScrollPersonAnim(0, 1, PERSON_ANIM_PHOENIX, 0);
                InitCourtScroll(gUnknown_08478BDC, 0x1E, 0x1F, 1);
                SlideTextbox(0);
                main->process[GAME_PROCESS_VAR1]++;
                break;
            }
            gTestimony.timer--;
            break;
        case 1:
            if(gCourtScroll.state)
                break;
            if(gScriptContext.holdItFlag)
            {
                gMain.advanceScriptContext = TRUE;
                gMain.showTextboxCharacters = TRUE;
                gIORegisters.lcd_bg1vofs = 0;
                gScriptContext.textboxState = 0;
            }
            else
                SlideTextbox(1);
            ChangeScriptSection(gScriptContext.holdItSection);
            // gTestimony.healthPointX = 0xF0;
            gTestimony.pressPromptY = 0xE0;
            gTestimony.presentPromptY = 0xE0;
            gTestimony.displayState = 0;
            main->process[GAME_PROCESS_STATE] = QUESTIONING_MAIN;
            main->process[GAME_PROCESS_VAR1] = 0;
            break;
        default:
            break;
    }
    UpdateQuestioningMenuSprites(main, &gTestimony, 0);
    gOamObjects[0].attr0 = SPRITE_ATTR0_CLEAR;
    gOamObjects[1].attr0 = SPRITE_ATTR0_CLEAR;
}

void QuestioningObjection(struct Main * main)
{
    switch(main->process[GAME_PROCESS_VAR1])
    {
        case 0:
            if(gTestimony.timer == 0)
            {
                StartHardwareBlend(3, 1, 4, 0x1F);
                gTestimony.timer = 0x40;
                main->process[GAME_PROCESS_VAR1]++;
                break;
            }
            gTestimony.timer--;
            break;
        case 1:
            if(gTestimony.timer == 0)
            {
                SetCourtScrollPersonAnim(0, 1, PERSON_ANIM_PHOENIX, 0x12E0);
                InitCourtScroll(gUnknown_08478BDC, 0x1E, 0x1F, 1);
                SlideTextbox(0);
                main->process[GAME_PROCESS_VAR1]++;
                break;
            }
            gTestimony.timer--;
            break;
        case 2:
            if(gCourtScroll.state)
                break;
            gTestimony.timer = 0x14;
            main->process[GAME_PROCESS_VAR1]++;
            break;
        case 3:
            if(gTestimony.timer == 0)
            {
                // gTestimony.healthPointX = 0xF0;
                gTestimony.pressPromptY = 0xE0;
                gTestimony.presentPromptY = 0xE0;
                gTestimony.displayState = 0;
                if(gScriptContext.slamDesk)
                {
                    gMain.advanceScriptContext = TRUE;
                    gMain.showTextboxCharacters = TRUE;
                    gIORegisters.lcd_bg1vofs = 0;
                    gScriptContext.textboxState = 0;
                }
                else
                    SlideTextbox(1);
                RESTORE_PROCESS_PTR(main);
                break;
            } 
            gTestimony.timer--;
            break;
        default:
            break;
    }
    UpdateQuestioningMenuSprites(main, &gTestimony, 0);
}
