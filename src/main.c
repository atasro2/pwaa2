#include "global.h"
#include "main.h"
#include "animation.h"
#include "sound.h"
#include "m4a.h"
#include "ewram.h"
#include "utils.h"
#include "script.h"
#include "background.h"
#include "court_record.h"
#include "investigation.h"
#include "save.h"
#include "court.h"

extern void (*gGameProcesses[])(struct Main *);
extern void (* const IntrTableFunctionPtrs[16])(void);

extern void (*gIntrTable[0x10]);

extern void DoGameProcess();
extern void VBlankIntr();
extern void HBlankIntr();
extern void IntrDummy();
extern void UpdateHardwareBlend();
extern void UpdateCourtScroll(struct CourtScroll * );
extern void sub_8000A80(void);

void CheckAButtonAndGoToClearSaveScreen(void)
{
    if ((gMain.process[GAME_PROCESS] == 0) && (A_BUTTON & KEY_NEW()))
        gMain.process[GAME_PROCESS] = 0xE;
}

void AgbMain(void)
{
    DmaFill32(3, 0, IWRAM_START, 0x7E00); // clear IWRAM

    reset:
    ClearRamAndInitGame();
    CheckAButtonAndGoToClearSaveScreen();
    for(;;)
    {
        if (ReadKeysAndTestResetCombo())
            goto reset; // tfw no SoftReset

        gMain.vblankWaitCounter = 0;

        waitForVblank:
        if(gMain.vblankWaitCounter != gMain.vblankWaitAmount) goto waitForVblank;

        if (gMain.currentBgStripe == 0)
        {
            gMain.unk0++;
            UpdateBackground();
            UpdateBGTilemaps();
            MoveAnimationTilesToRam(0);
            MoveSpritesToOAM();
            SetLCDIORegs();
        }
        if (gMain.currentBgStripe > 10)
        {
            gMain.currentBgStripe = 0;
            CopyBGDataToVram(gMain.currentBG);
        }
        if (gMain.currentBgStripe == 0)
            RunScriptContext();
        gIORegisters.lcd_dispcnt &= ~DISPCNT_WIN0_ON;
        gIORegisters.lcd_win0h = 0;
        gIORegisters.lcd_win0v = 0;
        gIORegisters.lcd_winin = 0;
        gIORegisters.lcd_winout = 0;
        if (gMain.currentBgStripe == 0)
        {
            UpdateTextbox();
            UpdateItemPlate(&gMain);
            DoGameProcess();
            UpdateAnimations(gMain.previousBG);
            UpdateHardwareBlend();
            sub_8000A80();
        }
        else
        {
            DecompressCurrentBGStripe(gMain.currentBG);
        }
        UpdateBGMFade();
        m4aSoundMain();
    }
}

void DoGameProcess(void)
{
    struct CourtScroll *courtScroll = &gCourtScroll;
    struct Main *main = &gMain;

    u8 amplitude;
    u8 rand;

    if (main->gameStateFlags & 1)
    {
        switch (main->shakeIntensity)
        {
        case 0:
            amplitude = 1;
            break;
        case 1:
            amplitude = 3;
            break;
        case 2:
            amplitude = 7;
            break;
        default:
            amplitude = 3;
            break;
        }

        rand = Random() & 0xF;

        if (rand > 7)
        {
            main->shakeAmountX = rand & amplitude;
            main->shakeAmountX *= -1;
        }
        else
        {
            main->shakeAmountX = rand & amplitude;
        }

        rand = Random() & 0xF;

        if (rand > 7)
        {
            main->shakeAmountY = rand & amplitude;
            main->shakeAmountY *= -1;
        }
        else
        {
            main->shakeAmountY = rand & amplitude;
        }

        gIORegisters.lcd_bg3vofs = main->shakeAmountY + 8;
        gIORegisters.lcd_bg3hofs = main->shakeAmountX + 8;
        gIORegisters.lcd_bg2vofs = main->shakeAmountY;
        gIORegisters.lcd_bg2hofs = main->shakeAmountX + 8;
        gIORegisters.lcd_bg1vofs = main->shakeAmountX;
        gIORegisters.lcd_bg1hofs = main->shakeAmountY;
        
        if(main->currentBG == 0x11)
        {
            gIORegisters.lcd_bg0vofs = main->shakeAmountY;
            gIORegisters.lcd_bg0hofs = main->shakeAmountX;
        }
        else
        {
            gIORegisters.lcd_bg0vofs = main->shakeAmountX;
            gIORegisters.lcd_bg0hofs = main->shakeAmountY;
        }
        
        if (main->shakeTimer != 0)
        {
            main->shakeTimer--;
            if (main->shakeTimer == 0)
            {
                main->gameStateFlags &= ~1; // disable shakes
                gIORegisters.lcd_bg3vofs = 8;
                gIORegisters.lcd_bg3hofs = 8;
                gIORegisters.lcd_bg2vofs = 0;
                gIORegisters.lcd_bg2hofs = 8;
                gIORegisters.lcd_bg1vofs = 0;
                gIORegisters.lcd_bg1hofs = 0;
                gIORegisters.lcd_bg0vofs = 0;
                gIORegisters.lcd_bg0hofs = 0;
                main->shakeAmountX = 0;
                main->shakeAmountY = 0;
            }
        }
    }
    else
    {
        main->shakeAmountX = 0;
        main->shakeAmountY = 0;
    }
    sub_801798C();
    gGameProcesses[gMain.process[GAME_PROCESS]](&gMain);
    sub_80183D8();
    gMain.unk4++;

    if (courtScroll->state != 0)
    {
        UpdateCourtScroll(courtScroll);
    }
}

void ClearRamAndInitGame(void)
{
    struct Main *main = &gMain;
    struct IORegisters *ioRegsp = &gIORegisters;
    u32 temp = main->process[GAME_PROCESS] ? 1 : 0;

    RegisterRamReset(RESET_SIO_REGS | RESET_SOUND_REGS | RESET_REGS);
    DmaFill32(3, 0, IWRAM_START, 0x7E00);  // Clear IWRAM
    DmaFill32(3, 0, EWRAM_START, 0x40000); // Clear EWRAM

    SET_PROCESS(temp, 0, 0, 0);

    RegisterRamReset(RESET_OAM | RESET_VRAM | RESET_PALETTE);

    for (temp = 0; temp < ARRAY_COUNT(IntrTableFunctionPtrs); temp++)
    {
        gIntrTable[temp] = IntrTableFunctionPtrs[temp];
    }

    m4aSoundInit();
    REG_WAITCNT = WAITCNT_SRAM_4 | WAITCNT_WS0_N_3 | WAITCNT_WS0_S_1 | WAITCNT_WS1_N_4 | WAITCNT_WS1_S_4 | WAITCNT_WS2_N_4 | WAITCNT_WS2_S_8 | WAITCNT_PHI_OUT_NONE | WAITCNT_PREFETCH_ENABLE;
    ioRegsp->iwp_ie = INTR_FLAG_VBLANK | INTR_FLAG_GAMEPAK;
    ioRegsp->lcd_dispstat = DISPSTAT_VBLANK_INTR;
    ioRegsp->lcd_bldcnt = BLDCNT_TGT1_BG0 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_DARKEN;
    ioRegsp->lcd_bldy = 0x10;
    REG_IE = ioRegsp->iwp_ie;
    REG_DISPSTAT = ioRegsp->lcd_dispstat;
    REG_IME = TRUE;
}

void ResetGameState()
{
    struct IORegisters *ioRegsp = &gIORegisters;
    struct Main *main = &gMain;
    DmaFill16(3, 0, VRAM, VRAM_SIZE);
    DmaFill16(3, 0, OAM, OAM_SIZE);
    DmaFill16(3, 0, PLTT, PLTT_SIZE);
    DmaFill16(3, 0, &gMain, sizeof(gMain));
    sub_8007D30(main);
    DmaFill16(3, 0, &gScriptContext, sizeof(gScriptContext));
    DmaFill16(3, 0, &gCourtScroll, sizeof(gCourtScroll));
    DmaFill16(3, 0, &gTestimony, sizeof(gTestimony));
    DmaFill16(3, 0, &gInvestigation, sizeof(gInvestigation));
    DmaFill16(3, 0, &gCourtRecord, sizeof(gCourtRecord));
    DmaFill16(3, 0, &gSaveDataBuffer, 0x2BBC);
    main->rngSeed = 3383;
    main->scenarioIdx = 0;
    main->caseEnabledFlags = 1;
    ioRegsp->lcd_bg0cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(28) | BGCNT_16COLOR | BGCNT_WRAP;                 // TODO: add TXT/AFF macro once known which one is used
    ioRegsp->lcd_bg1cnt = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(29) | BGCNT_16COLOR | BGCNT_WRAP;                 // TODO: add TXT/AFF macro once known which one is used
    ioRegsp->lcd_bg2cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(30) | BGCNT_16COLOR | BGCNT_WRAP;                 // TODO: add TXT/AFF macro once known which one is used
    ioRegsp->lcd_bg3cnt = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(31) | BGCNT_MOSAIC | BGCNT_256COLOR | BGCNT_WRAP; // TODO: add TXT/AFF macro once known which one is used
    ioRegsp->lcd_bldcnt = BLDCNT_TGT1_BG0 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_DARKEN;
    ioRegsp->lcd_bldy = 0x10;
    HideAllSprites();
    InitBGs();
    ResetAnimationSystem(); //init animation system?
    ResetSoundControl();
    LoadCurrentScriptIntoRam();
    sub_80178E0();
    sub_8017910();
    SetTimedKeysAndDelay(DPAD_RIGHT | DPAD_LEFT, 15);
    m4aMPlayAllStop();
}