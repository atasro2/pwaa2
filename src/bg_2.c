#include "global.h"
#include "background.h"
#include "ewram.h"
#include "animation.h"
#include "m4a.h"
#include "graphics.h"

void DecompressBackgroundIntoBuffer(u32 bgId)
{
    u32 i;
    u32 size;
    u32 flags;
    u8 * bgData;
    u32 * ptr;
    UpdateAnimations(gMain.previousBG);
    bgId &= ~0x8000;
    if(bgId == 0x80) 
        return;
    bgData = (void*)gBackgroundTable[bgId].bgData;
    ptr = (u32 *)bgData;
    for(i = 1; i < 11; i++)
        gMain.bgStripeOffsets[i] = *ptr++;
    flags = gBackgroundTable[bgId].controlBits;
    if(flags & BG_MODE_SIZE_480x160)
        size = 0x1E00;
    else if(flags & BG_MODE_SIZE_240x320)
        size = 0x1E00;
    else
        size = 0xF00;
    if(flags & BG_MODE_4BPP)
        size /= 2;

    if(flags & BG_MODE_4BPP)
        bgData += 0x20;
    else
        bgData += 0x200;
    bgData += gMain.bgStripeOffsets[1];
        if(!(flags & 0xF)) {
            gMain.bgStripeDestPtr = eUnknown_02036500;
        }
        else {
            gMain.bgStripeDestPtr = eBGDecompBuffer;
        }
    // gMain.bgStripeDestPtr = eBGDecompBuffer;
    m4aSoundVSyncOff();
    LZ77UnCompWram(bgData, gMain.bgStripeDestPtr);
    for(i = 2; i < 11; i++)
    {
        gMain.bgStripeDestPtr += size;
        bgData = gBackgroundTable[bgId].bgData;
        bgData += gMain.bgStripeOffsets[i];
        LZ77UnCompWram(bgData, gMain.bgStripeDestPtr);
    }
    m4aSoundVSyncOn();
}

// leftover from GS1
void LoadCase3IntroBackgrounds()
{
}

void EnableDetentionCenterMask(bool16 enable)
{
    u16 i, j;
    u16 r4;
    u16 * map = &gBG0MapBuffer[0x202];
    map += 0x20;
    for(r4 = 0, i = 0; i < 3; r4++, i++) {
        for(j = 0; j < 26; j++) {
            if(enable)
                *map++ = 0x2000 | (0x80 + r4);
            else
                *map++ = 0;
        }
        map += 6;
    }
    if(enable) {
        DmaCopy16(3, gUnknown_0813D91C, VRAM+0x1000, 0x60);
        gIORegisters.lcd_bg0cnt &= ~0x3;
        gIORegisters.lcd_bg0cnt |= BGCNT_PRIORITY(2);
        gIORegisters.lcd_dispcnt |= DISPCNT_BG0_ON;
    }
}
