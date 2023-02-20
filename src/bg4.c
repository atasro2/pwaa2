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

extern const u16 gUnknown_0801B5D8[32*12];
extern const u16 gUnknown_0801B8D8[32*12];
extern const u16 gUnknown_0801BBD8[0x2C0];

// St_bg2_set
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
                gBG2MapBuffer[i + 31] = gUnknown_0801B8D8[courtRecord->windowTileX + i];
            }
        }
        else
        {
            for(i = 0x40; i < 0x180; i += 0x20)
            {
                gBG2MapBuffer[i + 31] = gUnknown_0801B5D8[courtRecord->windowTileX + i];
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
                gBG2MapBuffer[i] = gUnknown_0801B8D8[courtRecord->windowTileX + i];
            }
        }
        else
        {
            for(i = 0x40; i < 0x180; i += 0x20)
            {
                gBG2MapBuffer[i] = gUnknown_0801B5D8[courtRecord->windowTileX + i];
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

extern void (*gWindowFunctions[])(struct CourtRecord *);

void UpdateBG2Window(struct CourtRecord * courtRecord)
{
    if(gMain.blendMode == 0)
    {
        gWindowFunctions[courtRecord->windowMode](courtRecord);
        gIORegisters.lcd_bg2hofs = courtRecord->windowOffset + 8;
    }
}

extern u8 gUnknown_08111ED0[56];
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
    gMain.unk2BC = nametagId;
    gMain.unk2BD = rightSide;
    nametagId = gUnknown_08111ED0[nametagId];
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
