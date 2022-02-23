#include "global.h"
#include "animation.h"
#include "m4a.h"

extern u16 gUnknown_0811242C[2][16];
extern u8 * gUnknown_081124D0[];

void sub_8015F54(struct Struct3006050_10 * arg0);

void sub_8015CE0(struct Struct3006050_10 * arg0, s32 arg1, s32 arg2, s32 arg3)
{
    arg0->unk2 = arg1;
    arg0->unk0 = arg2;
    arg0->unk4 = arg3;
    sub_8015F54(arg0);
}

void sub_8015CF0(struct Struct3006050_10 * arg0, s32 arg1, s32 arg2, s32 arg3)
{
    int i;
    void * decompBuff;
    DmaFill16(3, 0, arg0, sizeof(*arg0));
    decompBuff = arg1 % 10 <= 4 ? (void*)0x2036500 : (void*)0x203A500;
    LZ77UnCompWram(gUnknown_081124D0[arg1], decompBuff);
    arg0->unk8 = decompBuff;
    decompBuff += 8;
    for(i = 0; i < arg0->unk8->unk6; i++)
    {
        arg0->unkC[i] = decompBuff;
        decompBuff += 8;
    }
    for(i = 0; i < arg0->unk8->unk4; i++)
    {
        int size;
        int j;
        arg0->unkCC[i] = decompBuff;
        size = *(u32*)decompBuff;
        decompBuff += 4;
        for(j = 0; j < size; j++)
        {
            if((*(u16*)(decompBuff+6) & 0xF000) == 0)
                decompBuff += 0x14;
            else
                decompBuff += 0x10;
        }
    }
    sub_8015CE0(arg0, arg1, arg2, 0);
}

void sub_8015DBC(struct Struct3006050_10 * arg0)
{
    arg0->unk6++;
    if(arg0->unk4 < arg0->unk8->unk6-1 && (gMain.unk0 % 3) == 0)
    {
        arg0->unk6 = 0;
        arg0->unk4++;
        sub_8015F54(arg0);
    }
}

void sub_8015DFC(void)
{
    DmaFill16(3, 0, gBG0MapBuffer, sizeof(gBG0MapBuffer));
    DmaFill16(3, 0, gBG3MapBuffer, sizeof(gBG3MapBuffer));
    DmaFill16(3, 0, BG_CHAR_ADDR(1), BG_CHAR_SIZE);
    DmaFill16(3, 0, BG_PLTT+0x40, BG_PLTT_SIZE-0x40);
    DmaFill16(3, 0x2222, BG_CHAR_ADDR(1), 0x9600);
    gIORegisters.lcd_bg0cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(28) | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
    gIORegisters.lcd_bg3cnt = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(31) | BGCNT_MOSAIC | BGCNT_256COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
}

bool32 sub_8015E9C(struct Struct3006050_10 * arg0)
{
    if(arg0->unk4 >= arg0->unk8->unk6-1)
        return TRUE;
    return FALSE;
}

void sub_8015EB4()
{
    gMain.unk30 = 0x7F;
    gIORegisters.lcd_bg0cnt = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(28) | BGCNT_MOSAIC | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
    gIORegisters.lcd_bg3cnt = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(31) | BGCNT_MOSAIC | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
    DmaFill16(3, 0, BG_SCREEN_ADDR(28), BG_SCREEN_SIZE);
    DmaFill16(3, 0, BG_SCREEN_ADDR(31), BG_SCREEN_SIZE);
    m4aSoundVSyncOff();
    LZ77UnCompVram(gUnknown_0814777C, BG_CHAR_ADDR(1));
    m4aSoundVSyncOn();
    DmaCopy16(3, gUnknown_0811242C[0], BG_PLTT+0x1C0, 0x20);
    DmaCopy16(3, gUnknown_0811242C[1], BG_PLTT+0x1E0, 0x20);
}
