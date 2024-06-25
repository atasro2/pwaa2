#include "global.h"
#include "background.h"
#include "ewram.h"
#include "animation.h"
#include "m4a.h"
#include "script.h"
#include "investigation.h"
#include "graphics.h"

void bg256_right_scroll(struct Main * main, u32 sp0);
void bg256_left_scroll(struct Main * main, u32 sp0);
void bg256_down_scroll(struct Main * main, u32 sp0);
void bg256_up_scroll(struct Main * main, u32 sp0);

extern const u8 gNameTagTiles[24];

extern const u16 gMapCourtRecordNormalWindow[32*12];
extern const u16 gMapCourtRecordSaveWindow[32*12];
extern const u16 gMapSpeedlines[0x2C0];

void CopyBGDataToVramAndScrollBG(u32 bgId)
{
    struct Main * main = &gMain;
    u16 sp0 = main->previousBG;
    bool32 r8 = main->isBGScrolling;
    u16 sl = main->Bg256_pos_x;
    u16 spC = main->Bg256_pos_y;
    u8 r6 = main->horizontolBGScrollSpeed;
    u8 r5 = main->verticalBGScrollSpeed;
    u32 unk0;
    CopyBGDataToVram(bgId);
    main->previousBG = sp0;
    main->isBGScrolling = r8;
    main->horizontolBGScrollSpeed = r6;
    main->verticalBGScrollSpeed = r5;
    main->Bg256_scroll_x = main->Bg256_pos_x - sl;
    main->Bg256_scroll_y = main->Bg256_pos_y - spC;
    unk0 = gBackgroundTable[main->currentBG].controlBits;
    if(unk0 & BG_MODE_SPECIAL_SPEEDLINE)
        return;
    unk0 &= BG_MODE_4BPP;
    if(main->Bg256_scroll_x > 0)
    {
        main->Bg256_pos_x = sl;
        main->Bg256_scroll_x *= -1;
        if(gBackgroundTable[main->currentBG].controlBits & BG_MODE_SIZE_480x160)
            unk0 |= 480;
        else
            unk0 |= 360;
        bg256_right_scroll(main, unk0);
    }
    else if(main->Bg256_scroll_x < 0)
    {
        main->Bg256_pos_x = sl;
        main->Bg256_scroll_x *= -1;
        if(gBackgroundTable[main->currentBG].controlBits & BG_MODE_SIZE_480x160)
            unk0 |= 480;
        else
            unk0 |= 360;
        bg256_left_scroll(main, unk0);
    }
    else if(main->Bg256_scroll_y > 0)
    {
        main->Bg256_pos_y = spC;
        main->Bg256_scroll_y *= -1;
        if(gBackgroundTable[main->currentBG].controlBits & BG_MODE_SIZE_240x320)
            unk0 |= 320;
        else
            unk0 |= 240;
        bg256_down_scroll(main, unk0);
    }
    else if(main->Bg256_scroll_y < 0)
    {
        main->Bg256_pos_y = spC;
        main->Bg256_scroll_y *= -1;
        if(gBackgroundTable[main->currentBG].controlBits & BG_MODE_SIZE_240x320)
            unk0 |= 320;
        else
            unk0 |= 240;
        bg256_up_scroll(main, unk0);
    }
}

u32 GetBGControlBits(u32 bgId)
{
    return gBackgroundTable[bgId].controlBits;
}

u8 * GetBGPalettePtr(u32 bgId)
{
    return gBackgroundTable[bgId].bgData + 0x28;
}

// from bg.c in pwaa1


void SetTextboxSize(u32 unk0)
{
    struct ScriptContext * scriptCtx = &gScriptContext;
    u16 * map;
    u32 i;
    switch(unk0)
    {
    case 0:
        map = gBG1MapBuffer;
        for(i = 0; i < 0x2C0; i++, map++)
        {
            *map = gTextboxTiles[i];
        }
        scriptCtx->textboxState = 0;
        SetTextboxNametag(scriptCtx->textboxNameId & 0x7F, (u8)(scriptCtx->textboxNameId & 0x80));
        break;
    case 1:
        scriptCtx->unk3A = 0;
        scriptCtx->textboxYPos = 14;
        scriptCtx->textboxState = 2;
        SetTextboxNametag(0, FALSE);
        break;
    case 2:
        map = gBG1MapBuffer;
        for(i = 0; i < 0x1C0; i++, map++)
        {
            *map = gTextboxTiles[i];
        }
        map = gBG1MapBuffer + 0x1C0;
        for(i = 0x1C0; i < 0x220; i++, map++)
        {
            *map = 0;
        }
        map = gBG1MapBuffer + 0x200;
        for(i = 0x1C0; i < 0x1E0; i++, map++)
        {
            *map = gTextboxTiles[i];
        }
        scriptCtx->textboxState = 0;
        break;
    default:
        break;
    }
}


void UpdateTextbox()
{
    struct ScriptContext * scriptCtx = &gScriptContext;
    u32 tiley;
    u32 i;
    switch(scriptCtx->textboxState)
    {
    case 0:
    case 1:
        break;
    case 2:
        scriptCtx->unk3A += 2;
        if(scriptCtx->unk3A < 2)
            break;
        scriptCtx->unk3A = 0;
        tiley = scriptCtx->textboxYPos * 32;
        for(i = 0; i < 32; i++)
        {
            u16 * dest = &gBG1MapBuffer[tiley - 32 + i];
            u16 * src = &gBG1MapBuffer[tiley + i];
            *dest = *src;
        }
        for(i = 0; i < 32; i++)
        {
            u16 * dest = &gBG1MapBuffer[tiley + i];
            u16 * src = &gBG1MapBuffer[tiley + 32 + i];
            *dest = *src;
        }
        scriptCtx->textboxYPos--;
        if(scriptCtx->textboxYPos == 0)
        {
            gMain.showTextboxCharacters = TRUE;
            scriptCtx->textboxState = 0;
        }
        break;
    case 3:
        gIORegisters.lcd_bg1vofs += 4;
        if(gIORegisters.lcd_bg1vofs < (u16)-80u)
        {
            gMain.advanceScriptContext = TRUE;
            gMain.showTextboxCharacters = TRUE;
            gIORegisters.lcd_bg1vofs = 0;
            scriptCtx->textboxState = 0;
        }
        break;
    case 4:
        gIORegisters.lcd_bg1vofs -= 4;
        if(gIORegisters.lcd_bg1vofs < (u16)-80u)
        {
            gIORegisters.lcd_dispcnt &= ~DISPCNT_BG1_ON;
            scriptCtx->textboxState = 1;
        }
        break;
    }
}

void CopyTextboxTilesToBG1MapBuffer()
{
    s32 i;
    for(i = 0x1C0; i < 0x3C0; i++) {
        gBG1MapBuffer[i] = gTextboxTiles[i];
    }
}

void SlideTextbox(u32 slideUp)
{
    gMain.advanceScriptContext = 0;
    gMain.showTextboxCharacters = 0;
    CopyTextboxTilesToBG1MapBuffer();
    SetTextboxNametag(0, FALSE);
    if(slideUp == 1)
    {
        gScriptContext.textboxState = 3;
        gInvestigation.actionState = 3;
        gIORegisters.lcd_dispcnt |= DISPCNT_BG1_ON;
        gBG1MapBuffer[622] = 9;
        gBG1MapBuffer[623] = 9;
    }
    else if(slideUp == 2) {
        gScriptContext.textboxState = 3;
        gInvestigation.actionState = 3;
    }
    else
    {
        gScriptContext.textboxState = 4;
        gInvestigation.actionState = 1;
    }
}

u16 AdjustColorByMode(u16 color, u16 intensity, u16 mode)
{
    u16 r = (color & 0x1F);
    u16 g = (color & 0x3E0) >> 5;
    u16 b = (color & 0x7C00) >> 10;
    u16 average = (r + g + b) / 3;

    if(intensity > 32)
        intensity = 32;
    
    switch(mode) {
        // Fade to black
        case 2:
            r = (r * (32 - intensity)) / 32;
            g = (g * (32 - intensity)) / 32;
            b = (b * (32 - intensity)) / 32;
            break;
        // Fade to red
        case 1:
            r = (r * (32 - intensity) + intensity * 31) / 32;
            g = (g * (32 - intensity)) / 32;
            b = (b * (32 - intensity)) / 32;
            break;
        // Fade to grey
        default:
            r = (r * (32 - intensity) + intensity * average) / 32;
            g = (g * (32 - intensity) + intensity * average) / 32;
            b = (b * (32 - intensity) + intensity * average) / 32;
    }
    r &= 0x1F;
    g &= 0x1F;
    b &= 0x1F;
    return (b << 10) | (g << 5) | (r);
}

void LoadAndAdjustBGPaletteByMode(u16 bgId, u16 intensity, u16 mode)
{
    u16 pal[0x100];
    u32 i;
    if(bgId == 0x80) {
        for(i = 0x20; i < 0x100; i++) {
            pal[i] = 0;
            pal[i] = AdjustColorByMode(pal[i], intensity, mode);
        }
        DmaCopy16(3, pal+0x20, PLTT+0x40, 0x1C0);
    } else {
        u32 bits = GetBGControlBits(bgId);
        u16 * bgpal = (u16 *)GetBGPalettePtr(bgId);
        if(bits & 0x80000000) {
            // 4bpp
            DmaCopy16(3, bgpal, pal, 0x20);
            for(i = 0; i < 0x10; i++) {
                pal[i] = AdjustColorByMode(pal[i], intensity, mode);
            }
            DmaCopy16(3, pal, PLTT+0x40, 0x20);
        } else {
            // 8bpp
            DmaCopy16(3, bgpal, pal, 0x200);
            for(i = 0x20; i < 0x100; i++) {
                pal[i] = AdjustColorByMode(pal[i], intensity, mode);
            }
            DmaCopy16(3, pal+0x20, PLTT+0x40, 0x1C0);
        }
    }
}

void LoadAndAdjustCurrentAnimation01PaletteByMode(u16 intensity, u16 mode) {
    u16 pal[0x30];
    u32 * gfx = (u32*)gAnimation[1].animationInfo.animGfxDataStartPtr;
    u32 paletteCount = *gfx++;
    s32 i;
    do{
    DmaCopy16(3, gfx, pal, 0x40);
    }while(0);
    for(i = 0; i < paletteCount*16; i++) {
        pal[i] = AdjustColorByMode(pal[i], intensity, mode);
    }
    if(paletteCount == 3) {
        DmaCopy16(3, pal, OBJ_PLTT+0x1A0, 0x60);
    } else {
        DmaCopy16(3, pal, OBJ_PLTT+0x1C0, paletteCount*0x20);
    }
}

void LoadAndAdjustCounselWitnessBenchPaletteByMode(u16 bgId, u16 intensity, u16 mode)
{
    u16 pal[0x10];
    u16 * benchpal;
    u32 i;
    bgId -= 4;
    benchpal = bgId < 2 ? (u16*)gPalCounselBench : (u16*)gPalWitnessBench;
    DmaCopy16(3, benchpal, pal, 0x20);
    for(i = 0; i < 0x10; i++) {
        pal[i] = AdjustColorByMode(pal[i], intensity, mode);
    }
    DmaCopy16(3, pal, OBJ_PLTT+0x140, 0x20);
}

void LoadAndAdjustAnimation10PaletteByMode(u16 intensity, u16 mode)
{
    u16 pal[0x10];
    u32 * framedata = (u32*)gGfxSeqAnimation10;
    u16 * spritepal = (u16*)(gGfxPixAnimationTileset01 + 4 + *(framedata+1));
    u32 i;
    DmaCopy16(3, spritepal, pal, 0x20);
    for(i = 0; i < 0x10; i++) {
        if(mode == 2) {
            pal[i] = AdjustColorByMode(pal[i], 32,0);
            pal[i] = AdjustColorByMode(pal[i], intensity, 2);
        } else {
            pal[i] = AdjustColorByMode(pal[i], intensity, mode);
        }
    }
    DmaCopy16(3, pal, OBJ_PLTT+0x140, 0x20);
}

void SlideInBG2Window(u32 mode, u32 speed)
{
    struct CourtRecord * courtRecord = &gCourtRecord;
    if(mode > 4) // is for save screens
    {
        courtRecord->windowIsSaveScreen = TRUE;
        mode -= 4;
    }
    else
    {
        courtRecord->windowIsSaveScreen = FALSE;
    }
    courtRecord->windowMode = mode;
    courtRecord->windowOffset = 0;
    courtRecord->windowPrevX = courtRecord->windowX;
    courtRecord->flags &= ~0x4;
    switch(mode)
    {
    case 0:
        break;
    case 1:
        courtRecord->windowScrollSpeed = speed;
        courtRecord->windowTileX = 0;
        courtRecord->windowX = 0x100;
        break;
    case 2:
        courtRecord->windowScrollSpeed = -speed;
        courtRecord->windowTileX = 31;
        courtRecord->windowX = 0x110;
        break;
    case 3:
        courtRecord->windowScrollSpeed = speed;
        break;
    case 4:
        courtRecord->windowScrollSpeed = -speed;
        break;
    default:
        break;
    }
}

// St_bg2_main00
void WindowDummy(struct CourtRecord * courtRecord)
{

}


// St_bg2_main01
void ScrollWindowWithPrevWindow(struct CourtRecord * courtRecord)
{
    u32 i;
    courtRecord->windowOffset += courtRecord->windowScrollSpeed;
    courtRecord->windowX -= courtRecord->windowScrollSpeed;
    courtRecord->windowX &= 0x1FF;
    courtRecord->windowPrevX -= courtRecord->windowScrollSpeed;
    courtRecord->windowPrevX &= 0x1FF;
    while(courtRecord->windowOffset >= 8)
    {
        courtRecord->windowOffset -= 8;
        courtRecord->windowTileX++;
        courtRecord->windowTileX &= 0x1F;
        if(courtRecord->windowTileX == 0x1F)
        {
            courtRecord->windowOffset = 0;
            courtRecord->windowScrollSpeed = 0;
            courtRecord->windowX = 8;
        }
        for(i = 2; i < 12; i++)
        {
            DmaCopy16(3, &gBG2MapBuffer[i*0x20], gTilemapBuffer, 0x40);
            DmaCopy16(3, gTilemapBuffer+1, &gBG2MapBuffer[i*0x20], 0x3E);
        }
        if(courtRecord->windowIsSaveScreen)
        {
            for(i = 0x40; i < 0x180; i += 0x20)
            {
                gBG2MapBuffer[i + 31] = gMapCourtRecordSaveWindow[courtRecord->windowTileX + i];
            }
        }
        else
        {
            for(i = 0x40; i < 0x180; i += 0x20)
            {
                gBG2MapBuffer[i + 31] = gMapCourtRecordNormalWindow[courtRecord->windowTileX + i];
            }
        }
    }
    while(courtRecord->windowOffset <= -8)
    {
        courtRecord->windowOffset += 8;
        courtRecord->windowTileX--;
        courtRecord->windowTileX &= 0x1F;
        if(courtRecord->windowTileX == 0)
        {
            courtRecord->windowOffset = 0;
            courtRecord->windowScrollSpeed = 0;
            courtRecord->windowX = 8;
        }
        for(i = 2; i < 12; i++)
        {
            DmaCopy16(3, &gBG2MapBuffer[i*0x20], gTilemapBuffer, 0x40);
            DmaCopy16(3, gTilemapBuffer, &gBG2MapBuffer[i*0x20+1], 0x3E);
        }
        if(courtRecord->windowIsSaveScreen)
        {
            for(i = 0x40; i < 0x180; i += 0x20)
            {
                gBG2MapBuffer[i] = gMapCourtRecordSaveWindow[courtRecord->windowTileX + i];
            }
        }
        else
        {
            for(i = 0x40; i < 0x180; i += 0x20)
            {
                gBG2MapBuffer[i] = gMapCourtRecordNormalWindow[courtRecord->windowTileX + i];
            }
        }
    }
}

// St_bg2_main02
void ScrollWindowWithoutPrevWindow(struct CourtRecord * courtRecord)
{
    u32 i;
    courtRecord->windowOffset += courtRecord->windowScrollSpeed;
    courtRecord->windowX -= courtRecord->windowScrollSpeed;
    courtRecord->windowX &= 0x1FF;
    while(courtRecord->windowOffset >= 8)
    {
        courtRecord->windowOffset -= 8;
        courtRecord->windowTileX++;
        courtRecord->windowTileX &= 0x1F;
        if(courtRecord->windowTileX == 0x1F)
        {
            courtRecord->windowOffset = 0;
            courtRecord->windowScrollSpeed = 0;
        }
        for(i = 2; i < 12; i++)
        {
            DmaCopy16(3, &gBG2MapBuffer[i*0x20], gTilemapBuffer, 0x40);
            DmaCopy16(3, gTilemapBuffer+1, &gBG2MapBuffer[i*0x20], 0x3E);
        }
        for(i = 0x40; i < 0x180; i += 0x20)
        {
            gBG2MapBuffer[i+31] = 0;
        }
    }
    while(courtRecord->windowOffset <= -8)
    {
        courtRecord->windowOffset += 8;
        courtRecord->windowTileX--;
        courtRecord->windowTileX &= 0x1F;
        if(courtRecord->windowTileX == 0)
        {
            courtRecord->windowOffset = 0;
            courtRecord->windowScrollSpeed = 0;
        }
        for(i = 2; i < 12; i++)
        {
            DmaCopy16(3, &gBG2MapBuffer[i*0x20], gTilemapBuffer, 0x40);
            DmaCopy16(3, gTilemapBuffer, &gBG2MapBuffer[i*0x20+1], 0x3E);
        }
        for(i = 0x40; i < 0x180; i += 0x20)
        {
            gBG2MapBuffer[i] = 0;
        }
    }
}

// st_bg2_main_proc_tbl
void (*gWindowFunctions[])(struct CourtRecord *) = {
    WindowDummy,
	ScrollWindowWithPrevWindow,
	ScrollWindowWithPrevWindow,
	ScrollWindowWithoutPrevWindow,
	ScrollWindowWithoutPrevWindow,
};

void UpdateBG2Window(struct CourtRecord * courtRecord)
{
    if(gMain.blendMode == 0)
    {
        gWindowFunctions[courtRecord->windowMode](courtRecord);
        gIORegisters.lcd_bg2hofs = courtRecord->windowOffset + 8;
    }
}

u8 gSpeakerToNametagMap[56] = {
    0x00, 0x01, 0x01, 0x02, 0x03, 0x0C, 0x0C, 0x09,
    0x1F, 0x04, 0x05, 0x06, 0x00, 0x07, 0x0B, 0x0B,
    0x0A, 0x08, 0x08, 0x0E, 0x10, 0x0F, 0x11, 0x12,
    0x14, 0x0C, 0x13, 0x0D, 0x16, 0x15, 0x17, 0x19,
    0x1A, 0x18, 0x1B, 0x20, 0x21, 0x22, 0x00, 0x23,
    0x24, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x29,
    0x27, 0x28, 0x2A, 0x2B, 0x2C, 0x25, 0x2D, 0x00,
};

// Mess_win_name_set
void SetTextboxNametag(u32 nametagId, u32 rightSide)
{
    u32 i;
    u32 j;
    void * tiles;
    const u8 * tileId;
    u16 * map;
    u32 offset = rightSide;

    /* begin wat */
    gMain.currentSpeaker = nametagId;
    gMain.currentNametagRightSide = rightSide;
    nametagId = gSpeakerToNametagMap[nametagId];
    /* end wat */
    
    // this reuses r0 instead of loading into r5
    if(nametagId == 0)
    {
        for(i = 0x180; i < 0x1E0; i++)
            gBG1MapBuffer[i] = gTextboxTiles[i];
        return;
    }
    i = (nametagId / 5);
    j = (nametagId % 5);
    i *= 0x800;
    j *= 0xC0;
    tiles = gGfx4bppNametags + j + i;
    DmaCopy16(3, tiles, VRAM+0xA80, 0xC0);
    DmaCopy16(3, tiles+0x400, VRAM+0xB40, 0xC0);
    if(rightSide)
    {
        offset = 24;
        tileId = gNameTagTiles+18;
    }
    else
    {
        offset = 0;
        tileId = gNameTagTiles+12;
    }

    map = gBG1MapBuffer + 0x1C0;
    map += offset;
    for(i = 0; i < 6; i++)
    {
        *map = *tileId;
        map++;
        tileId++;
    }
    map = gBG1MapBuffer + 0x180;
    map += offset;
    tileId = gNameTagTiles;
    for(i = 0; i < 6; i++)
    {
        *map = *tileId;
        map++;
        tileId++;
    }
    map = gBG1MapBuffer + 0x1A0;
    map += offset;
    tileId = gNameTagTiles+6;
    for(i = 0; i < 6; i++)
    {
        *map = *tileId;
        map++;
        tileId++;
    }
}

void UpdateBGTilemaps()
{
    if(gMain.tilemapUpdateBits & 1)
        DmaCopy16(3, gBG0MapBuffer, BG_SCREEN_ADDR(28), BG_SCREEN_SIZE);
    if(gMain.tilemapUpdateBits & 2)
        DmaCopy16(3, gBG1MapBuffer, BG_SCREEN_ADDR(29), BG_SCREEN_SIZE);
    if(gMain.tilemapUpdateBits & 4)
        DmaCopy16(3, gBG2MapBuffer, BG_SCREEN_ADDR(30), BG_SCREEN_SIZE);
    if(gMain.tilemapUpdateBits & 8)
        DmaCopy16(3, gBG3MapBuffer, BG_SCREEN_ADDR(31), BG_SCREEN_SIZE);
}
