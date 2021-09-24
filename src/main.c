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

extern void DoGameProcess(void);
extern void VBlankIntr(void);
extern void HBlankIntr(void);
extern void IntrDummy(void);
static void UpdateHardwareBlend(void);
static void UpdateCourtScroll(struct CourtScroll * );
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

void ResetGameState(void)
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

void HideAllSprites(void)
{
    u32 i;
    for (i = 0; i < MAX_OAM_OBJ_COUNT; i++)
        gOamObjects[i].attr0 = SPRITE_ATTR0_CLEAR;
}

void SetLCDIORegs(void)
{
    struct IORegisters *ioRegsp = &gIORegisters;
    REG_IE = ioRegsp->iwp_ie;
    REG_DISPSTAT = ioRegsp->lcd_dispstat;
    REG_DISPCNT = ioRegsp->lcd_dispcnt;
    DataCopy32(&REG_BG0CNT, &ioRegsp->lcd_bg0cnt);
    DataCopy32(&REG_BG0HOFS, &ioRegsp->lcd_bg0hofs);
    DataCopy32(&REG_BG1HOFS, &ioRegsp->lcd_bg1hofs);
    DataCopy32(&REG_BG2CNT, &ioRegsp->lcd_bg2cnt);
    DataCopy32(&REG_BG2HOFS, &ioRegsp->lcd_bg2hofs);
    DataCopy32(&REG_BG3HOFS, &ioRegsp->lcd_bg3hofs);
    DataCopy32(&REG_BG2PA, &ioRegsp->lcd_bg2pa);
    DataCopy32(&REG_BG2PC, &ioRegsp->lcd_bg2pc);
    REG_BG2X = ioRegsp->lcd_bg2x;
    REG_BG2Y = ioRegsp->lcd_bg2y;
    DataCopy32(&REG_BG3PA, &ioRegsp->lcd_bg3pa);
    DataCopy32(&REG_BG3PC, &ioRegsp->lcd_bg3pc);
    REG_BG3X = ioRegsp->lcd_bg3x;
    REG_BG3Y = ioRegsp->lcd_bg3y;
    DataCopy32(&REG_WIN0H, &ioRegsp->lcd_win0h);
    DataCopy32(&REG_WIN0V, &ioRegsp->lcd_win0v);
    DataCopy32(&REG_WININ, &ioRegsp->lcd_winin);
    DataCopy32(&REG_MOSAIC, &ioRegsp->lcd_mosaic); // this writes to REG_BLDCNT, it shouldn't, should theoretically just write 0.
    REG_BLDCNT = ioRegsp->lcd_bldcnt;
    REG_BLDALPHA = ioRegsp->lcd_bldalpha;
    REG_BLDY = ioRegsp->lcd_bldy;
}

void ReadKeys(void)
{
    struct Joypad *joypadCtrl = &gJoypad;
    u16 keyInput = KEY_NEW();

    joypadCtrl->previousHeldKeys = joypadCtrl->heldKeys;
    joypadCtrl->previousPressedKeys = joypadCtrl->pressedKeys;
    joypadCtrl->heldKeys = KEY_NEW();
    joypadCtrl->pressedKeys = keyInput & ~joypadCtrl->previousHeldKeys;
    joypadCtrl->activeTimedKeys = 0;

    if (KEY_NEW() & joypadCtrl->timedKeys)
    {
        if (joypadCtrl->timedHoldTimer >= joypadCtrl->timedHoldDelay)
        {
            joypadCtrl->timedHoldTimer = 0;
            joypadCtrl->activeTimedKeys = keyInput & joypadCtrl->timedKeys;
        }
        else
        {
            joypadCtrl->timedHoldTimer++;
        }
    }
    else
    {
        joypadCtrl->timedHoldTimer = joypadCtrl->timedHoldDelay;
    }
}

void SetTimedKeysAndDelay(u32 keyBits, u32 delay)
{
    gJoypad.timedKeys = keyBits;
    gJoypad.timedHoldDelay = delay;
}

u32 ReadKeysAndTestResetCombo(void)
{
    struct Joypad *joypadCtrl = &gJoypad;
    if (gMain.currentBgStripe == 0)
        ReadKeys();

    gMain.vblankWaitAmount = 1;

    if (joypadCtrl->heldKeys == (A_BUTTON|B_BUTTON|START_BUTTON|SELECT_BUTTON))
        return 1;

    return 0;
}

void InitCourtScroll(u8 * arg0, u32 arg1, u32 arg2, u32 arg3)
{
    gCourtScroll.frameDataPtr = arg0;
    gCourtScroll.state = arg3;
    gCourtScroll.frameCounter = arg1;
    gCourtScroll.endFrame = arg2;
    gMain.isBGScrolling = FALSE;
}


static void UpdateCourtScroll(struct CourtScroll * courtScroll)
{
    if (courtScroll->state & 1)
    {
        courtScroll->frameCounter--;
        if (courtScroll->frameCounter < 0)
        {
            courtScroll->state = 0;
        }
    }
    else
    {
        courtScroll->frameCounter++;
        if (courtScroll->frameCounter >= courtScroll->endFrame)
        {
            courtScroll->state &= 1;
        }
    }
}

void StartHardwareBlend(u32 mode, u32 delay, u32 deltaY, u32 target)
{
    gMain.blendTarget = target;
    gMain.blendMode = mode;
    gMain.blendDelay = delay;
    gMain.blendDeltaY = deltaY;
    gMain.blendCounter = 0;
}

void UpdateHardwareBlend(void)
{
    struct Main * main = &gMain;
    struct IORegisters * ioRegs = &gIORegisters;
    
    gIORegisters.lcd_dispcnt &= ~DISPCNT_WIN0_ON;
    gIORegisters.lcd_win0h = 0;
    gIORegisters.lcd_win0v = 0;
    gIORegisters.lcd_winin = 0;
    gIORegisters.lcd_winout = 0;

    switch(main->blendMode)
    {
        case 0:
            break;
        case 1:
            ioRegs->lcd_bldcnt = main->blendTarget | BLDCNT_EFFECT_DARKEN;
            if(++main->blendCounter >= main->blendDelay)
            {
                main->blendCounter = 0;
                ioRegs->lcd_bldy -= main->blendDeltaY;
            }
            ioRegs->lcd_bldy &= 0x1F;
            if(ioRegs->lcd_bldy == 0 || main->blendDeltaY == 0)
            {
                ioRegs->lcd_bldy = 0;
                ioRegs->lcd_bldcnt = BLDCNT_TGT1_BG1 | BLDCNT_TGT2_BG0 | BLDCNT_TGT2_BG2 | BLDCNT_TGT2_BG3 | BLDCNT_TGT2_OBJ | BLDCNT_EFFECT_BLEND;
                ioRegs->lcd_bldalpha = BLDALPHA_BLEND(0x1F, 0x7);
                main->blendMode = 0;
            }
            break;
        case 2:
            ioRegs->lcd_bldcnt = main->blendTarget | BLDCNT_EFFECT_DARKEN;
            if(++main->blendCounter >= main->blendDelay)
            {
                main->blendCounter = 0;
                ioRegs->lcd_bldy += main->blendDeltaY;
            }
            ioRegs->lcd_bldy &= 0x1F;
            if(ioRegs->lcd_bldy == 0x10 || main->blendDeltaY == 0)
            {
                ioRegs->lcd_bldy = 0x10;
                main->blendMode = 0;
                main->blendCounter |= 0xFFFF;
            }
            break;
        case 3:
            ioRegs->lcd_bldcnt = main->blendTarget | BLDCNT_EFFECT_LIGHTEN;
            if(++main->blendCounter >= main->blendDelay)
            {
                main->blendCounter = 0;
                ioRegs->lcd_bldy -= main->blendDeltaY;
            }
            ioRegs->lcd_bldy &= 0x1F;
            if(ioRegs->lcd_bldy == 0 || main->blendDeltaY == 0)
            {
                ioRegs->lcd_bldy = 0;
                ioRegs->lcd_bldcnt = BLDCNT_TGT1_BG1 | BLDCNT_TGT2_BG0 | BLDCNT_TGT2_BG2 | BLDCNT_TGT2_BG3 | BLDCNT_TGT2_OBJ | BLDCNT_EFFECT_BLEND;
                ioRegs->lcd_bldalpha = BLDALPHA_BLEND(0x1F, 0x7);
                main->blendMode = 0;
            }
            break;
        case 4:
            ioRegs->lcd_bldcnt = main->blendTarget | BLDCNT_EFFECT_LIGHTEN;
            if(++main->blendCounter >= main->blendDelay)
            {
                main->blendCounter = 0;
                ioRegs->lcd_bldy += main->blendDeltaY;
            }
            ioRegs->lcd_bldy &= 0x1F;
            if(ioRegs->lcd_bldy == 0x10 || main->blendDeltaY == 0)
            {
                ioRegs->lcd_bldy = 0x10;
                main->blendMode = 0;
                main->blendCounter |= 0xFFFF;
            }
            break;
    }
    if(gMain.unk90 == 1
    && gMain.blendMode == 0
    && gMain.blendCounter != 0xFFFF)
    {
        gIORegisters.lcd_dispcnt |= DISPCNT_WIN0_ON;
        gIORegisters.lcd_win0h = 239;
        gIORegisters.lcd_win0v = 100;
        gIORegisters.lcd_winin = WININ_WIN0_BG_ALL | WININ_WIN0_OBJ | WININ_WIN1_BG_ALL | WININ_WIN1_OBJ;
        gIORegisters.lcd_winout = WINOUT_WIN01_BG_ALL | WINOUT_WIN01_OBJ | WINOUT_WIN01_CLR | WINOUT_WINOBJ_BG_ALL | WINOUT_WINOBJ_OBJ | WINOUT_WINOBJ_CLR;
    }
}