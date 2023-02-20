#include "global.h"
#include "save.h"
#include "agb_sram.h"
#include "graphics.h"
#include "sound.h"
#include "constants/process.h"

const char gSaveVersion[0x34] = "2002 CAPCOM GBA GYAKUTEN-SAIBAN2 07/15 Ver 1.000-";

void (*gSaveGameProcessStates[])(struct Main *) = {
	SaveGameInit1,
	SaveGameInit2,
	SaveGameInitButtons,
	SaveGameWaitForInput,
	SaveGameExitSaveScreen,
	SaveGame5,
	SaveGame6,
	SaveGame7
};

u32 SaveGameData()
{
    gSaveDataBuffer.main.saveContinueFlags |= 0x10;
    DmaCopy16(3, gSaveVersion, gSaveDataBuffer.saveDataVer, 0x32 /* sizeof(gSaveVersion) */);
    CalculateSaveChecksum();
    return WriteSramEx((void*)&gSaveDataBuffer, SRAM_START, 0x2BBC /* sizeof(gSaveDataBuffer) */);
}

u32 LoadSaveData()
{
    u32 i;
    char * sramVer;
    ReadSram(SRAM_START, (void*)&gSaveDataBuffer, 0x2BBC /* sizeof(gSaveDataBuffer) */);
    sramVer = gSaveDataBuffer.saveDataVer;
    for(i = 0; i < 0x30; i++)
    {
        if(gSaveVersion[i] != *sramVer)
        {
            gMain.saveContinueFlags = 0;
            return 2;
        }
        sramVer++;
    }
    gMain.caseEnabledFlags = gSaveDataBuffer.main.caseEnabledFlags;
    if(CheckSaveChecksum() == FALSE)
    {
        gMain.saveContinueFlags = 0;
        return 1;
    }
    gMain.saveContinueFlags = 0x10;
    return 0;
}


void CalculateSaveChecksum()
{
    u8 *saveData;
    u32 magic;
    u32 size;
    gSaveDataBuffer.magic = 0;
    magic = 0;
    size = 0x2BBC /* sizeof(gSaveDataBuffer) */;
    saveData = (void *) (&gSaveDataBuffer.main);
    while (saveData < (((u8 *) (&gSaveDataBuffer)) + size))
    {
        magic += saveData[0];
        saveData += 4;
    }
    magic += 2343;
    gSaveDataBuffer.magic = magic;
}


bool32 CheckSaveChecksum()
{
    u32 magic = 0;
    u8 * saveData = (u8 *)&gSaveDataBuffer.main;
    while(saveData < (u8 *)&gSaveDataBuffer+0x2BBC /* sizeof(gSaveDataBuffer) */)
    {
        magic += *saveData;
        saveData += 4;
    }
    magic += 2343;
    if(magic == gSaveDataBuffer.magic)
    {
        return TRUE;
    }
    return FALSE;
}


void ClearSaveProcess(struct Main *main)
{
    struct OamAttrs * oam;
    u32 i;
    switch (main->process[GAME_PROCESS_STATE])
    {
    case 0:
        DmaCopy16(3, gUnknown_081370FC, VRAM + 0x3800, 0x800);
        DmaCopy16(3, GetBGPalettePtr(0), PLTT, BG_PLTT_SIZE);
        DmaCopy16(3, gUnknown_0813791C, VRAM, 0x1000);
        DmaCopy16(3, gUnknown_081500C4, OBJ_VRAM0 + 0x3C00, 0x800);
        DmaCopy16(3, gUnknown_081DE3A8, OBJ_PLTT + 0x120, 0x40);
        DmaCopy16(3, gTextPal, OBJ_PLTT, 0x20);
        DmaCopy16(3, gUnknown_081378FC, PLTT, 0x20);
        gIORegisters.lcd_bg0cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(28) | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
        gIORegisters.lcd_bg1cnt = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(29) | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
        gIORegisters.lcd_bg2cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(30) | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
        i = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(31) | BGCNT_MOSAIC | BGCNT_256COLOR | BGCNT_WRAP | BGCNT_TXT256x256; // scrub scrub CC!!11
        gIORegisters.lcd_bg3cnt = i;
        DecompressBackgroundIntoBuffer(0xA);
        CopyBGDataToVram(0xA);
        for(i = 0; i < 0x400; i++)
        {
            gBG2MapBuffer[i] = 0;
        }
        SlideInBG2Window(6, 8);
        gIORegisters.lcd_dispcnt = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON;
        main->tilemapUpdateBits = 0xC;
        gIORegisters.lcd_bg2cnt = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(30) | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
        gIORegisters.lcd_bldy = 0x10;
        main->selectedButton = 1;
        StartHardwareBlend(1, 1, 1, 0x1F);
        main->process[GAME_PROCESS_STATE]++;
        break;
    case 1:
        if(main->blendMode == 0)
        {
            UpdateBG2Window(&gCourtRecord);
            if(gCourtRecord.windowScrollSpeed == 0)
            {
                main->advanceScriptContext = TRUE;
                main->showTextboxCharacters = TRUE;
                gScriptContext.currentSection = 0xFFFF;
                ChangeScriptSection(4);
                gScriptContext.textXOffset = 9;
                gScriptContext.textYOffset = 52;
                oam = &gOamObjects[40];
                oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_BLEND, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
                oam->attr1 = SPRITE_ATTR1_NONAFFINE(48, FALSE, FALSE, 3);
                oam->attr2 = SPRITE_ATTR2(0x1E0, 0, 10);
                oam++;
                oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_BLEND, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
                oam->attr1 = SPRITE_ATTR1_NONAFFINE(128, FALSE, FALSE, 3);
                oam->attr2 = SPRITE_ATTR2(0x200, 0, 10); 
                main->blendCounter = 0;
                main->blendDelay = 1;
                main->blendDeltaY = 0x10;
                gIORegisters.lcd_bldcnt = BLDCNT_TGT2_BG3 | BLDCNT_EFFECT_BLEND;
                gIORegisters.lcd_bldalpha = BLDALPHA_BLEND(0, main->blendDeltaY);
                main->process[GAME_PROCESS_STATE]++;
            }
        }
        break;
    case 2:
        if(gScriptContext.flags & SCRIPT_LOOP)
        {
            if(gJoypad.pressedKeys & (DPAD_RIGHT|DPAD_LEFT))
            {
                PlaySE(0x2A);
                main->selectedButton ^= 1;
            }
            else if(gJoypad.pressedKeys & A_BUTTON)
            {
                PlaySE(0x2B);
                StartHardwareBlend(2, 1, 1, 0x1F);
                main->tilemapUpdateBits = 0;
                main->process[GAME_PROCESS_STATE]++;
            }
        }
        oam = &gOamObjects[40];
        if(main->selectedButton == 0)
        {
            oam->attr2 = SPRITE_ATTR2(0x1E0, 0, 9);
            oam++;
            oam->attr2 = SPRITE_ATTR2(0x200, 0, 10);
        }
        else
        {
            oam->attr2 = SPRITE_ATTR2(0x1E0, 0, 10);
            oam++;
            oam->attr2 = SPRITE_ATTR2(0x200, 0, 9);
        }
        if(main->process[GAME_PROCESS_STATE] == 2)
        {
            if(main->blendDeltaY > 0)
            {
                main->blendCounter++;
                if(main->blendCounter >= main->blendDelay)
                {
                    main->blendCounter = 0;
                    main->blendDeltaY--;
                }
                gIORegisters.lcd_bldalpha = BLDALPHA_BLEND(0x10-main->blendDeltaY, main->blendDeltaY);
            }
        }
        break;
    case 3:
        if(main->blendMode == 0)
        {
            if(main->selectedButton == 0)
            {
                DmaFill32(3, 0, &gSaveDataBuffer, 0x2BBC /* sizeof(gSaveDataBuffer) */);
                WriteSramEx((void*)&gSaveDataBuffer, SRAM_START, 0x2BBC /* sizeof(gSaveDataBuffer) */);
            }
            SET_PROCESS_PTR(CAPCOM_LOGO_PROCESS, 0, 0, 0, main);
        }
        break;
    default:
        break;
    }
}

void SaveGameProcess(struct Main *main)
{
    gSaveGameProcessStates[gMain.process[GAME_PROCESS_STATE]](&gMain);
}
