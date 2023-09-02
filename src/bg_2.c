#include "global.h"
#include "background.h"
#include "ewram.h"
#include "animation.h"
#include "m4a.h"
#include "script.h"
#include "graphics.h"
#include "constants/process.h"

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
        DmaCopy16(3, gGfxDetentionCenterBottomTiles, VRAM+0x1000, 0x60);
        gIORegisters.lcd_bg0cnt &= ~0x3;
        gIORegisters.lcd_bg0cnt |= BGCNT_PRIORITY(2);
        gIORegisters.lcd_dispcnt |= DISPCNT_BG0_ON;
    }
}

/*
void CopyBGDataToVram(u32 bgId)
{
    struct Main * main = &gMain; // r8
    struct IORegisters * ioReg = &gIORegisters; // r9 sb
    void * dst;
    const void * src;
    u8 * tempPtr;
    u8 * bgData;
    bool32 is4bpp;
    u32 tempBgCtrl;
    u32 tempSize;
    u32 i, j;

    if(bgId == 0x56)
        main->Bg256_scroll_y = 0;
    if(bgId == 0x57)
        main->Bg256_scroll_y = 0;
    if(bgId == 0x11) {
        if(main->unk35 == 1)
            EnableDetentionCenterMask(FALSE);
        else
            EnableDetentionCenterMask(TRUE);
    } else {
        main->unk35 = 0;
        EnableDetentionCenterMask(FALSE);
    }
    if(gMain.process[GAME_PROCESS] != INVESTIGATION_PROCESS) {
        if(bgId == 4) {
            sub_800E8C4();
            sub_800E900(0, 0x80, 1);
        } else if(bgId == 5) {
            sub_800E8C4();
            sub_800E9D4(0x20, 0x80, 1);
        } else if(bgId == 6) {
            sub_800E7B0();
            sub_800E7EC(0x18, 0x80, 1);
        } else if((bgId == 0x16 || bgId == 0x18)
               && (gAnimation[1].flags & ANIM_ALLOCATED)
               && gAnimation[1].animationInfo.personId == 0x10
               && (!(main->process[GAME_PROCESS] == COURT_RECORD_PROCESS && main->process[GAME_PROCESS_STATE] == 0x5) || main->process[GAME_PROCESS_VAR1] == 0x4)) {
            sub_800E7B0();
            sub_800E7EC(0x18, 0x80, 1);
        } else if(bgId == 0x53
               && (gAnimation[1].flags & ANIM_ALLOCATED)
               && gAnimation[1].animationInfo.personId == 3
               && (!(main->process[GAME_PROCESS] == COURT_RECORD_PROCESS && main->process[GAME_PROCESS_STATE] == 0x5) || main->process[GAME_PROCESS_VAR1] == 0x4)) {
            sub_800E8C4();
            sub_800E900(0, 0x80, 1);
        } else if(bgId == 0x80
               && (gAnimation[1].flags & ANIM_ALLOCATED)
               && (gAnimation[1].flags & ANIM_QUEUED_PAL_UPLOAD)) {
            switch(gAnimation[1].animationInfo.personId) {
                case 3:
                    sub_800E8C4();
                    sub_800E900(0, 0x80, 1);
                    break;
                case 0x18:
                    sub_800E7B0();
                    sub_800E7EC(0x18, 0x80, 1);
                    break;
                case 8:
                    sub_800E8C4();
                    sub_800E9D4(0x18, 0x80, 1);
                    break;
                default:
                    sub_800E7EC(0, 0, 0);
                    sub_800E900(0, 0, 0);
                    break;
            }
        } else {
            sub_800E7EC(0, 0, 0);
            sub_800E900(0, 0, 0);
        }
    }
    if(gScriptContext.flags & 0x40) {
        src = gPal_BG014_BustupPhoenix;
        dst = (void *)PLTT+0x1C0;
        DmaCopy16(3, src, dst, 0x20);
        src = gPal_BG015_BustupEdgeworth;
        dst = (void *)PLTT+0x1E0;
        DmaCopy16(3, src, dst, 0x20);
        src = gPal_BG020_BustupFranziska;
        dst = (void *)PLTT+0x1A0;
        DmaCopy16(3, src, dst, 0x20);
        DmaCopy16(3, gGfxSpeedlinesFirstAndLastColumns, eUnknown_0203B000, 0x500);
        src = eUnknown_0203B000;
        dst = (void *)VRAM+0x8B00;
        DmaCopy16(3, src, dst, 0x5000);
        src = gBG2MapBuffer;
        dst = BG_SCREEN_ADDR(30);
        DmaCopy16(3, src, dst, 0x580);
        *(u16 *)REG_ADDR_BG2CNT = ioReg->lcd_bg2cnt;
        if(main->currentBG == 0x80) {
            *(u16 *)REG_ADDR_BG3CNT &= ~0x80;
            DmaFill16(3, 0x2222, BG_CHAR_ADDR(1), 0x20);
            dst = BG_SCREEN_ADDR(31);
            DmaFill16(3, 0x0, dst, BG_SCREEN_SIZE);
            MoveAnimationTilesToRam(0);
            MoveSpritesToOAM();
            return;
        }
    }
    MoveAnimationTilesToRam(0);
    MoveSpritesToOAM();
    tempBgCtrl = bgId;
    bgId &= ~0x8000;
    ioReg->lcd_bg3vofs = 8;
    ioReg->lcd_bg3hofs = 8;
    main->isBGScrolling = FALSE;
    main->Bg256_pos_x = 0;
    main->Bg256_pos_y = 0;
    main->currentBG = bgId;
    main->unk30 = bgId;
    if(bgId == 0x80)
    {
        src = gUnknown_0801BBD8;
        dst = gBG3MapBuffer;
        DmaCopy16(3, src, dst, sizeof(gUnknown_0801BBD8));
        if(main->unk84 == 0xFFFE) {
            if(gAnimation[1].animationInfo.personId == 0x25)
                sub_8003B1C(6, 0x20, 1);
            DmaFill16(3, 0x1F, BG_PLTT+0x40, 0x1C0);
            DmaFill16(3, 0x2222, BG_CHAR_ADDR(1), 0x9600);
        } else {
            DmaFill16(3, 0, BG_PLTT+0x40, 0x1C0);
            DmaFill16(3, 0x2222, BG_CHAR_ADDR(1), 0x9600);
        }
        return;
    }
    i = gBackgroundTable[bgId].controlBits;
    if(i & BG_MODE_SPECIAL_SPEEDLINE)
    {
        //u32 temp;
        src = gUnknown_0801BBD8;
        dst = gBG3MapBuffer;
        DmaCopy16(3, src, dst, sizeof(gUnknown_0801BBD8));
        j = 0x258;
        j++;j--;
        for(i = 0; i < 20; i++, j++)
            gBG3MapBuffer[i * 0x20 + 0x20] = j | 0x2000;
        for(i = 0; i < 20; i++, j++)
            gBG3MapBuffer[i * 0x20 + 0x3F] = j | 0x2000;
        main->isBGScrolling = TRUE;
        DmaCopy16(3, gGfxSpeedlinesFirstAndLastColumns, eUnknown_0203B000, 0x500);
    }
    if(tempBgCtrl & 0x8000)
    {
        tempBgCtrl = gBackgroundTable[bgId].controlBits; 
        if(tempBgCtrl & BG_MODE_VSCROLL_TOP)
        {
            tempBgCtrl &= ~BG_MODE_VSCROLL_TOP;
            tempBgCtrl |= BG_MODE_VSCROLL_DOWN;
        }
        else if(tempBgCtrl & BG_MODE_VSCROLL_DOWN)
        {
            tempBgCtrl &= ~BG_MODE_VSCROLL_DOWN;
            tempBgCtrl |= BG_MODE_VSCROLL_TOP;
        }
        else if(tempBgCtrl & BG_MODE_HSCROLL_RIGHT)
        {
            tempBgCtrl &= ~BG_MODE_HSCROLL_RIGHT;
            tempBgCtrl |= BG_MODE_HSCROLL_LEFT;
        }
        else if(tempBgCtrl & BG_MODE_HSCROLL_LEFT)
        {
            tempBgCtrl &= ~BG_MODE_HSCROLL_LEFT;
            tempBgCtrl |= BG_MODE_HSCROLL_RIGHT;
        }   
    }
    else
        tempBgCtrl = gBackgroundTable[bgId].controlBits;
    bgData = gBackgroundTable[bgId].bgData + 0x28;
    if(tempBgCtrl & BG_MODE_4BPP)
    {
        is4bpp = TRUE;
        ioReg->lcd_bg3cnt &= ~BGCNT_256COLOR;
        DmaCopy16(3, bgData, BG_PLTT+0x40, 0x20);
        if(!(gScriptContext.flags & 0x40)) {
            DmaFill16(3, 0, BG_CHAR_ADDR(1)+0x4EC0, 0x20);
        }
    }
    else
    {
        is4bpp = FALSE;
        ioReg->lcd_bg3cnt |= BGCNT_256COLOR;
        DmaCopy16(3, bgData, BG_PLTT, 0x200);
    }
    *(u16*)&REG_DISPCNT = *(u16*)&ioReg->lcd_dispcnt;
    *(u16*)&REG_BG3CNT = *(u16*)&ioReg->lcd_bg3cnt;
    *(u32*)&REG_BG3HOFS = *(u32*)&ioReg->lcd_bg3hofs;
    main->Bg256_dir = tempBgCtrl;
    bgData = (gBackgroundTable[bgId].controlBits & BG_MODE_SIZE_MASK) == BG_MODE_SIZE_240x160 ? eUnknown_02036500 : eBGDecompBuffer;
    if((tempBgCtrl & BG_MODE_SIZE_MASK) == 0)
    {
        if((tempBgCtrl & BG_MODE_SPECIAL_SPEEDLINE) == 0)
        {
            src = gUnknown_0801BBD8;
            dst = gBG3MapBuffer;
            DmaCopy16(3, src, dst, sizeof(gUnknown_0801BBD8));
        }
        src = gBG3MapBuffer;
        dst = (void *)BG_SCREEN_ADDR(31);
        DmaCopy16(3, src, dst, 0x800);
        DmaCopy16(3, bgData, BG_CHAR_ADDR(1), 0x9600 >> is4bpp);
    }
    else
    {
        if(tempBgCtrl & (BG_MODE_SIZE_240x320 | BG_MODE_SIZE_240x240))
        {
            if(tempBgCtrl & BG_MODE_VSCROLL_TOP)
            {
                if(tempBgCtrl & BG_MODE_SIZE_240x320)
                {
                    bgData += 0x9600 >> is4bpp;
                    main->Bg256_next_line = 0x12;
                    main->Bg256_pos_y = 0xA0;        
                }
                else
                {
                    bgData -= 0x4B00 >> is4bpp;
                    main->Bg256_next_line = 0x8;
                    main->Bg256_pos_y = 0x50;
                }
                DmaCopy16(3, bgData, BG_CHAR_ADDR(1), 0x9600 >> is4bpp);
                bgData = eBGDecompBuffer + ((main->Bg256_next_line * 0x780) >> is4bpp); // lol gg good luck
                bgData += 0x780 >> is4bpp;
                DmaCopy16(3, bgData, BG_CHAR_ADDR(1) + (0x9600 >> is4bpp), 0x780 >> is4bpp);
                main->Bg256_buff_pos = 0x13;
                main->Bg256_stop_line = 0x26;
                if(main->currentBG == 0x50)
                    main->Bg256_stop_line = 6;
                for(i = 0; i < 20; i++) {
                    for(j = 0; j < 30; j++)
                        gBG3MapBuffer[i * 32 + 33 + j] = (j + i * 30) | 0x2000;
                }
            }
            else
            {
                DmaCopy16(3, bgData, BG_CHAR_ADDR(1), 0x9D80 >> is4bpp);
                main->Bg256_pos_y = 0;
                main->Bg256_buff_pos = 0;
                main->Bg256_next_line = 0x15;
                if(tempBgCtrl & BG_MODE_SIZE_240x320)
                    main->Bg256_stop_line = 1;
                else
                    main->Bg256_stop_line = 0x20;
                for(i = 0; i < 20; i++) {
                    for(j = 0; j < 30; j++)
                        gBG3MapBuffer[i * 32 + 33 + j] = (j + i * 30) | 0x2000;
                }
            }
            for(i = 0; i < 2; i++)
            {
                for(j = 0; j < 30; j++)
                    gBG3MapBuffer[(i * 0x2A0) + 1 + j] = (0x258 + j) | 0x2000;
            }
        }
        else
        {
            tempSize = tempBgCtrl & BG_MODE_SIZE_480x160 ? 0xF00 : 0xB40;
            if(tempBgCtrl & BG_MODE_HSCROLL_RIGHT)
            {
                main->Bg256_buff_pos = 0x1E;
                main->Bg256_stop_line = 0x3A;
                if(tempBgCtrl & BG_MODE_SIZE_480x160)
                {
                    bgData += 0x740;
                    main->Bg256_next_line = 0x1C;
                    main->Bg256_pos_x = 0xF0;
                }
                else
                {
                    bgData += 0x380;
                    main->Bg256_next_line = 0xD;
                    main->Bg256_pos_x = 0x78;
                }
                for(i = 0; i < 20; i++)
                {
                    for(j = 0; j < 31; j++)
                        gBG3MapBuffer[i * 0x20 + j + 0x20] = (j + i * 0x1F) | 0x2000;
                }
            }
            else if(tempBgCtrl & BG_MODE_HSCROLL_LEFT)
            {
                main->Bg256_next_line = 0x1F;
                main->Bg256_pos_x = 0;
                main->Bg256_buff_pos = 0;
                if(tempBgCtrl & BG_MODE_SIZE_480x160)
                    main->Bg256_stop_line = 1;
                else
                    main->Bg256_stop_line = 0x2F;
                for(i = 0; i < 20; i++)
                {
                    for(j = 0; j < 31; j++)
                        gBG3MapBuffer[i * 0x20 + j + 0x21] = (j + i * 0x1F) | 0x2000;
                }
            }
            for(i = 0; i < 2; i++)
            {
                for(j = 0; j < 32; j++)
                    gBG3MapBuffer[i * 0x2A0 + j] = 0x276 | 0x2000;
            }
            tempPtr = BG_CHAR_ADDR(1);
            for(i = 0; i < 20; i++)
            {
                DmaCopy16(3, bgData, tempPtr, 0x7C0 >> is4bpp);
                bgData += tempSize >> is4bpp;
                tempPtr += 0x7C0 >> is4bpp; 
            }
        }
        src = gBG3MapBuffer;
        dst = (void*)BG_SCREEN_ADDR(31);
        DmaCopy16(3, src, dst, 0x800);
    }
    if(tempBgCtrl & 0x100) {
        for(i = 0; i < 0x400; i++)
            gBG3MapBuffer[i] |= 0x400;
        for(i = 0; i < 32; i++) {
            for(j = 0; j < 16; j++) {
                u32 swap;
                swap = gBG3MapBuffer[i * 32 + j];
                gBG3MapBuffer[i * 32 + j] = gBG3MapBuffer[i * 32 + (31 - j)];
                gBG3MapBuffer[i * 32 + (31 - j)] = swap;
            }
        }
        src = gBG3MapBuffer;
        dst = BG_SCREEN_ADDR(31);
        DmaCopy16(3, src, dst, BG_SCREEN_SIZE);
    } 
    if(tempBgCtrl & 0x200) {
        for(i = 0; i < 0x400; i++)
            gBG3MapBuffer[i] |= 0x800;
        for(i = 0; i < 11; i++) {
            for(j = 0; j < 32; j++) {
                u32 swap;
                swap = gBG3MapBuffer[i * 32 + j];
                gBG3MapBuffer[i * 32 + j] = gBG3MapBuffer[(21-i) * 32 + j];
                gBG3MapBuffer[(21-i) * 32 + j] = swap;
            }
        }
        src = gBG3MapBuffer;
        dst = BG_SCREEN_ADDR(31);
        DmaCopy16(3, src, dst, BG_SCREEN_SIZE);
    }
    if(main->currentBG == 0xA) {
        switch(main->unk84) {
            case 3:
            case 7:
                main->unk84 = 0xFFFD;
                break;
            case 4:
            case 8:
                main->unk84 = 0;
                break;
            case 5:
                main->unk84 = 0;
                break;
            case 6:
                main->unk84 = 0xFFFE;
                break;
        }
        if(main->currentBG == 0xA) // ! ???
            return;
    }
    if((!(main->process[GAME_PROCESS] == COURT_RECORD_PROCESS && main->process[GAME_PROCESS_STATE] == 0x5) || main->process[GAME_PROCESS_VAR1] == 0x4)) {
        if(main->unk84 == 0xFFFD || main->unk84 == 0xFFFE) {
            if(main->unk84 == 0xFFFE)
                sub_8003988(main->currentBG, 0x20, 1);
            else
                sub_8003988(main->currentBG, 0x20, 0);
            if(main->currentBG == 4 || main->currentBG == 5 || main->currentBG == 6) {
                if(main->unk84 == 0xFFFE) 
                    sub_8003B1C(main->currentBG, 0x20, 1);
                else
                    sub_8003B1C(main->currentBG, 0x20, 0);
            }
        }
    }
}
*/

