#include "global.h"
#include "court.h"
#include "script.h"
#include "graphics.h"
#include "investigation.h"
#include "background.h"
#include "animation.h"
#include "sound.h"
#include "save.h"
#include "constants/process.h"
#include "constants/songs.h"

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

void (*gTestimonyProcessStates[])(struct Main *) = {
	TestimonyInit,
	TestimonyMain,
	TestimonyExit,
	TestimonyAnim
};

// void TestimonyProcess(struct Main * main)

void (*gQuestioningProcessStates[])(struct Main *) = {
	QuestioningInit,
	QuestioningMain,
	QuestioningExit,
	QuestioningAnim,
	QuestioningHoldIt,
	QuestioningObjection
};

// void QuestioningProcess(struct Main * main)
