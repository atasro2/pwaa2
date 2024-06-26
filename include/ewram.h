#ifndef GUARD_EWRAM_H
#define GUARD_EWRAM_H


extern u8 eCase3IntroBG69ScrollSubTick;
extern u8 eCase3IntroBG69ScrollTick;
extern u8 eCase3IntroBG69MaxAnimationSubTick;
extern u8 eCase3IntroBG69MaxAnimationTickIndex;

// used for acceleration and deceleration of scroll
extern u8 eCase3IntroBG67ScrollSubTick;
extern u8 eCase3IntroBG67ScrollTick;

#define eGeneralScratchpadBuffer ((void *)EWRAM_START+0xAFC0)
#define eScriptHeap ((void*) (EWRAM_START + 0x11FC0))
#define eBGDecompBuffer ((void*) (EWRAM_START + 0x2CFC0))
#define eBGDecompBuffer2 ((void*) (EWRAM_START + 0x36500))
#define eSpeedlineDecompBuffer ((void*) (EWRAM_START + 0x3B000))
#define eVRAMScratchpadBuffer ((void*) (EWRAM_START + 0x3B500)) // only used in Command46, the data never gets accessed elsewhere. was eUnknown_02031FC0 in pwaa1

#endif//GUARD_EWRAM_H
