#include "global.h"
#include "background.h"
#include "ewram.h"
#include "animation.h"
#include "m4a.h"

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
