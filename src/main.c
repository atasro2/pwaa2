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