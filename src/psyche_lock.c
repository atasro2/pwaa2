#include "global.h"
#include "psyche_lock.h"
#include "animation.h"
#include "background.h"
#include "investigation.h"
#include "m4a.h"
#include "sound.h"
#include "script.h"
#include "graphics.h"
#include "court.h"
#include "case_data.h"
#include "constants/animation.h"
#include "constants/script.h"

u16 gUnknown_0811242C[][16] = {
    {0x0000, 0x0842, 0x1084, 0x14a5, 0x18c6, 0x1ce8, 0x252a, 0x294b, 0x318d, 0x39ce, 0x4210, 0x4632, 0x4a53, 0x5295, 0x5ad6, 0x6318},
    {0x0000, 0x0842, 0x1084, 0x18c6, 0x2529, 0x2d6b, 0x39ce, 0x4210, 0x4a52, 0x4e73, 0x56b5, 0x5ad6, 0x6318, 0x6739, 0x6f7b, 0x739c}
};

s16 gUnknown_0811246C[] = { // pairs of psychelock X/Y coordinates
	88,  88, 0,   0,   0,   0,   0,   0,   0,   0,   // 1 lock
    24,  80, 152, 80,  0,   0,   0,   0,   0,   0,   // 2 locks
    88,  88, 16,  64,  160, 64,  0,   0,   0,   0,   // 3 locks
    40,  40, 136, 40,  8,   88,  168, 88,  0,   0,   // 4 locks
    88,  88, 40,  24,  136, 24,  8,   80,  168, 80,  // 5 locks 
};

u8 * gUnknown_081124D0[] = {
    gMapPsycheLockChains01,
    gMapPsycheLockChains02,
    gMapPsycheLockChains03,
    gMapPsycheLockChains04,
    gMapPsycheLockChains05,
    gMapPsycheLockChains06,
    gMapPsycheLockChains07,
    gMapPsycheLockChains08,
    gMapPsycheLockChains09,
    gMapPsycheLockChains10,
    gMapPsycheLockChains11,
    gMapPsycheLockChains12,
    gMapPsycheLockChains13,
    gMapPsycheLockChains14,
    gMapPsycheLockChains15,
    gMapPsycheLockChains16,
    gMapPsycheLockChains17,
    gMapPsycheLockChains18,
    gMapPsycheLockChains19,
    gMapPsycheLockChains20
};
void sub_8015F54(struct PscyheLock_10 * arg0);

void sub_8015CE0(struct PscyheLock_10 * arg0, s32 arg1, s32 arg2, s32 arg3)
{
    arg0->unk2 = arg1;
    arg0->unk0 = arg2;
    arg0->unk4 = arg3;
    sub_8015F54(arg0);
}

void sub_8015CF0(struct PscyheLock_10 * arg0, s32 arg1, s32 arg2)
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
        int count;
        int j;
        arg0->unkCC[i] = decompBuff;
        count = *(u32*)decompBuff;
        decompBuff += 4;
        for(j = 0; j < count; j++)
        {
            struct PscyheLock_Block * block = decompBuff;
            if(!(block->unk6 & 0xF000))
                decompBuff += 0x14;
            else
                decompBuff += 0x10;
        }
    }
    sub_8015CE0(arg0, arg1, arg2, 0);
}

void sub_8015DBC(struct PscyheLock_10 * arg0)
{
    arg0->unk6++;
    if(arg0->unk4 < arg0->unk8->unk6-1 && (gMain.frameCounter % 3) == 0)
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

bool32 sub_8015E9C(struct PscyheLock_10 * arg0)
{
    if(arg0->unk4 >= arg0->unk8->unk6-1)
        return TRUE;
    return FALSE;
}

void sub_8015EB4(void)
{
    gMain.unk30 = 0x7F;
    gIORegisters.lcd_bg0cnt = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(28) | BGCNT_MOSAIC | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
    gIORegisters.lcd_bg3cnt = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(31) | BGCNT_MOSAIC | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
    DmaFill16(3, 0, BG_SCREEN_ADDR(28), BG_SCREEN_SIZE);
    DmaFill16(3, 0, BG_SCREEN_ADDR(31), BG_SCREEN_SIZE);
    m4aSoundVSyncOff();
    LZ77UnCompVram(gGfxPsycheLockChainsTiles, BG_CHAR_ADDR(1));
    m4aSoundVSyncOn();
    DmaCopy16(3, gUnknown_0811242C[0], BG_PLTT+0x1C0, 0x20);
    DmaCopy16(3, gUnknown_0811242C[1], BG_PLTT+0x1E0, 0x20);
}

void sub_8015F54(struct PscyheLock_10 * arg0)
{
    short i;
    void * data;
    short count;
    u16 * map; // sp0
    short mapXOffset;
    short mapYOffset;
    int blockWidth;
    int blockHeight;
    int palIdx;
    int temp;
    bool32 sp10;

    data = arg0->unkCC[arg0->unkC[arg0->unk4]->unk0];
    count = *(u32*)data;
    data += 4;

    mapYOffset = 0;
    mapXOffset = 0;
    palIdx = 14;
    sp10 = FALSE;
    switch(arg0->unk0)
    {
        case 0:
            mapXOffset = -8;
            map = gBG0MapBuffer;
            sp10 = TRUE;
            break;
        case 1:
            map = gBG1MapBuffer;
            break;
        case 2:
            map = gBG2MapBuffer;
            break;
        default:
            mapYOffset = 8;
            map = gBG3MapBuffer;
            palIdx = 15;
            break;
    }
    temp = 0;
    if(sp10)
        temp = 0x100;
    for(i = 0; i < 0x400; i++)
        map[i] = temp;
    for(i = 0; i < count; i++)
    {
        int j;
        struct PscyheLock_Block * block = data;

        data += (block->unk6 & 0xF000) == 0 ? 0x14 : 0x10;

        if(block->unk6 & 0xF000)
        {
            blockWidth = blockHeight = ((block->unk6 & 0xF000) >> 12) * 8;
        }
        else
        {
            blockWidth = block->blockData.rect.width;
            blockHeight = block->blockData.rect.height;
        }

        for(j = 0; j < blockHeight / 8; j++)
        {
            int k;
            for(k = 0; k < blockWidth / 8; k++)
            {
                u32 mapX;
                u32 mapY;
                u32 tileX;
                u32 tileY;
                u16 tileId;
                tileX = (block->tileXstart / 8 + k);
                tileY = (block->tileYstart / 8 + j);
                tileId = tileX + tileY * 16;
                if(sp10)
                    tileId += 0x100;
                tileId |= palIdx << 12;
                mapX = (block->mapXstart + mapXOffset) / 8 + k;
                mapY = (block->mapYstart + mapYOffset - 48) / 8 + j;
                map[mapX + mapY * 32] = tileId;
            }
        }
    }
}

void sub_8016124(u32 arg0) // PsylockDisp_init
{
    DmaFill32(3, 0, &gPsycheLock, sizeof(gPsycheLock));
    gPsycheLock.unk0 = arg0;
    gPsycheLock.unk2 = arg0;
}

void sub_8016150(void) // PsylockDisp_appear
{
    bool32 unk0 = FALSE;

    if(FindAnimationFromAnimId(0x3D)) {
        DestroyAnimation(FindAnimationFromAnimId(0x3D));
        unk0 = TRUE;
    }
    if(FindAnimationFromAnimId(0x3E)) {
        DestroyAnimation(FindAnimationFromAnimId(0x3E));
        unk0 = TRUE;
    }
    if(FindAnimationFromAnimId(0x3F)) {
        DestroyAnimation(FindAnimationFromAnimId(0x3F));
        unk0 = TRUE;
    }

    if(unk0)
        PlayAnimation(0x40);

    gPsycheLock.unk4 = 1;
    gPsycheLock.unk6 = 0;
}

void sub_80161B4(void) // PsylockDisp_unlock
{
    gPsycheLock.unk4 = 4;
    gPsycheLock.unk6 = 0;
}

void sub_80161C4(void) // PsylockDisp_disappear
{
    gPsycheLock.unk4 = 5;
    gPsycheLock.unk6 = 0;
}

void sub_80161D4(void) // PsylockDisp_unlock_message
{
    gPsycheLock.unk4 = 6;
    gPsycheLock.unk6 = 0;
}

void sub_80161E4(void) // PsylockDisp_clear_all
{
    gPsycheLock.unk4 = 7;
    gPsycheLock.unk6 = 0;
}

void sub_80161F4(void) // PsylockDisp_to_normal_bg
{
    gPsycheLock.unk4 = 8;
    gPsycheLock.unk6 = 0;
}

void sub_8016204(void) // PsylockDisp_redisp
{
    gPsycheLock.unk4 = 9;
    gPsycheLock.unk6 = 0;
}

bool32 sub_8016214(void) // PsylockDisp_is_wait
{
    if(gPsycheLock.unk4 == 0)
        return TRUE;
    return FALSE;
}

void sub_801622C(void) // PsylockDisp_move
{
    int i;
    void * states[] = {
        &&_08016260,
        &&_08016264,
        &&_080163C2,
        &&_08016498,
        &&_0801667C,
        &&_0801678A,
        &&_080169A0,
        &&_08016B3C,
        &&_08016BB8,
        &&_08016C0C,
        &&_08016C6A,
    };
    goto *states[gPsycheLock.unk4];
    
_08016260: // psylock_move_wait
    return;

_08016264: // psylock_move_whiteshock
    if(FindAnimationFromAnimId(0x40))
    {
        if(FindAnimationFromAnimId(0x40)->flags & ANIM_PLAYING)
            return;
        DestroyAnimation(FindAnimationFromAnimId(0x40));
    }
    switch(gPsycheLock.unk6)
    {
        case 0:
            PlaySE(0x7A);
            gMain.unk30 = 0x7F;
            for(i = 33; i < 256; i++)
            {
                u32 r = i[(u16*)PLTT] & 0x1F;
                u32 g = (i[(u16*)PLTT] >> 5) & 0x1F;
                u32 b = (i[(u16*)PLTT] >> 10) & 0x1F;
                r = ~r & 0x1F;
                g = ~g & 0x1F;
                b = ~b & 0x1F;
                i[(u16*)PLTT] = (b << 10) | (g << 5) | r;
            }
            gPsycheLock.unkA = 0xFF;
            gPsycheLock.unkC = 0;
            gPsycheLock.unk6++;
            // fallthrough
        case 1:
            if(gPsycheLock.unkA++ > 70)
            {
                gPsycheLock.unkA = 0;
                gPsycheLock.unkC++;
                if(gPsycheLock.unkC >= 2)
                    gPsycheLock.unk6++;
                else
                    StartHardwareBlend(3, 1, 4, 0x1F);
            }
            break;
        case 2:
            for(i = 33; i < 256; i++)
            {
                s16 r = i[(u16*)PLTT] & 0x1F;
                s16 g = (i[(u16*)PLTT] >> 5) & 0x1F;
                s16 b = (i[(u16*)PLTT] >> 10) & 0x1F;
                r -= 1;
                g -= 1;
                b -= 1;
                if(r < 0) r = 0;
                if(g < 0) g = 0;
                if(b < 0) b = 0;
                i[(u16*)PLTT] = r | (g << 5) | (b << 10);
            }
            if(gPsycheLock.unkA++ > 32)
                gPsycheLock.unk6++;
            break;
        default:
            gPsycheLock.unk4++;
            gPsycheLock.unk6 = 0;
            break;
    }
    return;
_080163C2: // psylock_move_chain_appear
    switch(gPsycheLock.unk6)
    {
        default:
            return;
        case 0:
            sub_8015EB4();
            sub_8015CF0(&gPsycheLock.unk10[0], gPsycheLock.unk0 - 1, 3);
            sub_8015CF0(&gPsycheLock.unk10[1], gPsycheLock.unk0 + 5 - 1, 0);
            PlaySE(0x7F + gPsycheLock.unk0);
            gPsycheLock.unk6++;
            // fallthrough
        case 1:
            sub_8015DBC(&gPsycheLock.unk10[0]);
            sub_8015DBC(&gPsycheLock.unk10[1]);
            if(sub_8015E9C(&gPsycheLock.unk10[0])
            && sub_8015E9C(&gPsycheLock.unk10[1]))
                gPsycheLock.unk6++;
            gMain.gameStateFlags |= 1;
            gMain.shakeTimer = 2;
            gMain.shakeIntensity = 1;
            return;
        case 2:
            sub_80138B0(gPsycheLock.unk0 + 127, 60);
            gPsycheLock.unkA = 0;
            gPsycheLock.unk6++;
            break;
        case 3:
            break;
    }
    if(gPsycheLock.unkA++ >= 30)
    {
        gPsycheLock.unk4++;
        gPsycheLock.unk6 = 0;
    }
    return;

_08016498: // psylock_move_lock_appear
    switch(gPsycheLock.unk6)
    {
        case 0:
            for(i = 0; i < gPsycheLock.unk0; i++)
            {
                s32 temp = gPsycheLock.unk0 - 1;
                s32 xOrigin = temp * 10 + i * 2;
                s32 yOrigin = temp * 10 + i * 2 + 1;
                xOrigin = gUnknown_0811246C[xOrigin] + 32;
                yOrigin = gUnknown_0811246C[yOrigin] + 16;
                gPsycheLock.lockAnims[i] = PlayAnimationAtCustomOrigin(40 + i, xOrigin, yOrigin);
                gPsycheLock.lockAnims[i]->flags |= 0x100;
                gPsycheLock.lockAnims[i]->flags &= ~ANIM_ACTIVE;
            }
            gPsycheLock.unkA = 0;
            gPsycheLock.unk6++;
            //fallthrough
        case 1:
            gPsycheLock.unkA++;
            for(i = 0; i < gPsycheLock.unk0; i++)
            {
                s32 temp = i * 8;
                s32 temp2 = gPsycheLock.unkA - temp;
                if(temp2 > 0)
                {
                    gPsycheLock.lockAnims[i]->flags |= ANIM_ACTIVE;
                    if(temp2 == 8)
                        PlaySE(115);
                    if(temp2 < 8)
                    {
                        SetAnimationScale(gPsycheLock.lockAnims[i], 10 + i, 256 + 256 / 8 * (8 - temp2));
                    } 
                    else 
                    {
                        DisableAnimationScale(gPsycheLock.lockAnims[i]);
                        gPsycheLock.lockAnims[i]->flags &= ~0x100;
                    }
                }
            }
            if(gPsycheLock.unkA > gPsycheLock.unk0 * 8)
            {
                for(i = 0; i < gPsycheLock.unk0; i++)
                    DisableAnimationScale(gPsycheLock.lockAnims[i]);
                gPsycheLock.unkA = 0;
                gPsycheLock.unk6++;
            }
            break;
        case 2:
            gMain.gameStateFlags |= 1;
            gMain.shakeTimer = 2;
            gMain.shakeIntensity = 2;
            if(gPsycheLock.unkA++ > 20)
            {
                StartHardwareBlend(4, 1, 8, 0x1F);
                gPsycheLock.unkA = 0;
                gPsycheLock.unk6++;
            }
            break;
        case 3:
            if(gPsycheLock.unkA++ > 10)
            {
                StartHardwareBlend(3, 0, 0, 0x1F);
                gPsycheLock.unkA = 0;
                gPsycheLock.unk6++;
            }
            break;
        case 4:
            if(gPsycheLock.unkA++ > 40)
            {
                gPsycheLock.unkA = 0;
                gPsycheLock.unk6++;
            }
            break;
        case 5:
            gPsycheLock.unk4 = 0;
            gPsycheLock.unk6 = 0;
            break;
    }
    return;

_0801667C: // psylock_move_lock_unlock
    switch(gPsycheLock.unk6)
    {
        case 0:
        {
            s32 xOrigin;
            s32 yOrigin;
            s32 temp;
            gPsycheLock.unk2--;
            PlaySE(0x74);
            DestroyAnimation(gPsycheLock.lockAnims[gPsycheLock.unk2]);
            temp = gPsycheLock.unk0 - 1;
            xOrigin = temp * 10 + gPsycheLock.unk2 * 2;
            yOrigin = temp * 10 + gPsycheLock.unk2 * 2 + 1;
            xOrigin = gUnknown_0811246C[xOrigin] + 32;
            yOrigin = gUnknown_0811246C[yOrigin] + 16;
            gPsycheLock.lockAnims[gPsycheLock.unk2] = PlayAnimationAtCustomOrigin(50 + gPsycheLock.unk2, xOrigin, yOrigin);
            gMain.gameStateFlags |= 1;
            gMain.shakeTimer = 2;
            gMain.shakeIntensity = 2;
            StartHardwareBlend(4, 0, 0, 0x1F);
            gPsycheLock.unkA = 0;
            gPsycheLock.unk6++;
            break;
        }
        case 1:
            if(gPsycheLock.unkA++ > 2)
            {
                StartHardwareBlend(3, 0, 0, 0x1F);
                gPsycheLock.unkA = 0;
                gPsycheLock.unk6++;
            }
            break;
        case 2:
            if(gPsycheLock.unkA++ > 60)
            {
                DestroyAnimation(gPsycheLock.lockAnims[gPsycheLock.unk2]);
                gPsycheLock.lockAnims[gPsycheLock.unk2] = NULL;
                gPsycheLock.unk4 = 0;
                gPsycheLock.unk6 = 0;
            }
            break;
    }
    return;

_0801678A: // psylock_move_chain_disappear
    switch(gPsycheLock.unk6)
    {
        case 0:
            gPsycheLock.unkA = 0;
            gPsycheLock.unk6++;
        case 1:
            if(gPsycheLock.unkA++ > 20)
            {
                gPsycheLock.unkA = 0;
                gPsycheLock.unk6++;
            }
            return;
        case 2:
        {
            gIORegisters.lcd_bg0cnt |= BGCNT_MOSAIC;
            gIORegisters.lcd_bg3cnt |= BGCNT_MOSAIC;
            gPsycheLock.unkA = 0;
            gPsycheLock.unk6++;
        }
        case 3:
            if((gMain.frameCounter % 8) != 0)
            {
                if(gPsycheLock.unkA++ > 4)
                    gPsycheLock.unk6++;
            }
            return;
        case 4:
            if((gMain.frameCounter % 5) != 0)
            {
                gIORegisters.lcd_mosaic = gPsycheLock.unkA << 4 | gPsycheLock.unkA;
                if (gPsycheLock.unkA-- <= 0)
                {
                    gIORegisters.lcd_bg0cnt &= ~BGCNT_MOSAIC;
                    gIORegisters.lcd_bg3cnt &= ~BGCNT_MOSAIC;
                    gIORegisters.lcd_mosaic = 0;
                    gPsycheLock.unkA = 0;
                    gPsycheLock.unk6++;
                }
            }
            return;
        case 5:
            if(gPsycheLock.unkA++ > 40)
            {
                sub_8015CF0(&gPsycheLock.unk10[0], gPsycheLock.unk0 + 10 - 1, 3);
                sub_8015CF0(&gPsycheLock.unk10[1], gPsycheLock.unk0 + 10 + 5 - 1, 0);
                PlaySE(127 + gPsycheLock.unk0);
                gPsycheLock.unk6++;
            }
            return;
        case 6:
            sub_8015DBC(&gPsycheLock.unk10[0]);
            sub_8015DBC(&gPsycheLock.unk10[1]);
            
            if(sub_8015E9C(&gPsycheLock.unk10[0])
            && sub_8015E9C(&gPsycheLock.unk10[1])) {
                sub_80138B0(127 + gPsycheLock.unk0, 60);
                gPsycheLock.unk6++;
                gPsycheLock.unkA = 0;
            }
            gMain.gameStateFlags |= 1;
            gMain.shakeTimer = 2;
            gMain.shakeIntensity = 1;
            return;
        case 7:
            if(gPsycheLock.unkA++ > 80)
            {
                StartHardwareBlend(4, 1, 8, 0x1F);
                gPsycheLock.unkA = 0;
                gPsycheLock.unk6++;
            }
            return;
        case 8:
            if(gMain.blendMode)
                return;
            gPsycheLock.unkA = 0;
            gPsycheLock.unk6++;
            return;
        case 9:
            if(gPsycheLock.unkA++ > 20)
                gPsycheLock.unk6++;
            return;
    }
    gPsycheLock.unk4 = 0;
    gPsycheLock.unk6 = 0;
    return;

_080169A0: // psylock_move_unlock_message
{
    struct AnimationListEntry * animation;
    struct AnimationListEntry * animation2;
    switch(gPsycheLock.unk6)
    {
        case 0:
            StartHardwareBlend(1, 0, 0, 0x1F);
            PlayAnimation(0x38);
            PlayAnimation(0x39);
            PlaySE(166);
            gPsycheLock.unk6++;
            // fallthrough
        case 1:
            animation = FindAnimationFromAnimId(0x38);
            animation2 = FindAnimationFromAnimId(0x39);
            animation->animationInfo.xOrigin += 10;
            animation->flags |= ANIM_ACTIVE;
            animation2->animationInfo.xOrigin -= 10;
            animation2->flags |= ANIM_ACTIVE;
            if(animation->animationInfo.xOrigin >= 120)
                gPsycheLock.unk6++;
            break;
        case 2:
            StartHardwareBlend(3, 1, 8, 0x1F);
            DestroyAnimation(FindAnimationFromAnimId(0x38));
            DestroyAnimation(FindAnimationFromAnimId(0x39));
            PlayAnimation(0x37);
            gPsycheLock.unk6++;
            break;
        case 3:
            if(gMain.blendMode == 0)
                gPsycheLock.unk6++;
            break;
        case 4:
            animation = FindAnimationFromAnimId(0x37);
            if(!(animation->flags & ANIM_PLAYING))
            {
                DestroyAnimation(animation);
                PlayAnimationAtCustomOrigin(0x38, 120, 60);
                PlayAnimationAtCustomOrigin(0x39, 120, 60);
                PlaySE(167);
                gPsycheLock.unk6++;
            }
            break;
        case 5:
            animation = FindAnimationFromAnimId(0x38);
            animation2 = FindAnimationFromAnimId(0x39);
            animation->animationInfo.yOrigin -= 7;
            animation->flags |= ANIM_ACTIVE;
            animation2->animationInfo.yOrigin += 7;
            animation2->flags |= ANIM_ACTIVE;
            if(animation->animationInfo.yOrigin < -60)
            {
                DestroyAnimation(animation);
                DestroyAnimation(animation2);
                gPsycheLock.unk6++;
            }
            break;
        case 6:
            if(IsHPBarAnimating() == 0)
            {
                gPsycheLock.unk4 = 0;
                gPsycheLock.unk6 = 0;
            }
            break;
    }
    return;
}
_08016B3C: // psylock_move_clear_all
    switch(gPsycheLock.unk6)
    {
        case 0:
            for(i = 0; i < gPsycheLock.unk0; i++)
                DestroyAnimation(gPsycheLock.lockAnims[i]);
            m4aSoundVSyncOff();
            sub_8015DFC();
            UpdateBGTilemaps();
            SetLCDIORegs();
            i = gMain.roomData[gMain.currentRoomId][0];
            gMain.previousBG = gMain.currentBG;
            gMain.currentBG = i;
            gMain.currentBgStripe = 1;
            sub_8010FA4();
            m4aSoundVSyncOn();
            gPsycheLock.unk4 = 0;
            gPsycheLock.unk6 = 0;
    }
    return;
_08016BB8: // psylock_move_to_normal_bg
    for(i = 0; i < gPsycheLock.unk0; i++)
    {
        DestroyAnimation(gPsycheLock.lockAnims[i]);
        gPsycheLock.lockAnims[i] = NULL;
    }
    sub_8015DFC();
    DmaFill16(3, 0, gBG0MapBuffer, sizeof(gBG0MapBuffer));
    gPsycheLock.unk4 = 0;
    gPsycheLock.unk6 = 0;
    return;
    
_08016C0C: // psylock_move_redisp
{
    u32 temp = gPsycheLock.unk2;
    sub_8016C7C(gPsycheLock.unk0);
    gPsycheLock.unk2 = temp;
    for(i = 0; i < gPsycheLock.unk0 - gPsycheLock.unk2; i++)
    {
        DestroyAnimation(gPsycheLock.lockAnims[gPsycheLock.unk0 - 1 - i]);
        gPsycheLock.lockAnims[gPsycheLock.unk0 - 1 - i] = NULL;
    }
    gPsycheLock.unk4 = 0;
    gPsycheLock.unk6 = 0;
    return;
}
_08016C6A: // psylock_move_null
    return;

    //_08016C6A function return
}

void sub_8016C7C(u32 arg0) // PsylockDisp_show_static
{
    int i;

    sub_8016124(arg0);
    sub_8015EB4();
    sub_8015CF0(&gPsycheLock.unk10[0], gPsycheLock.unk0 - 1, 3);
    sub_8015CF0(&gPsycheLock.unk10[1], gPsycheLock.unk0 + 5 - 1, 0);
    sub_8015CE0(&gPsycheLock.unk10[0], gPsycheLock.unk0 - 1, 3, gPsycheLock.unk10[0].unk8->unk6-1);
    sub_8015CE0(&gPsycheLock.unk10[1], gPsycheLock.unk0 + 5 - 1, 0, gPsycheLock.unk10[1].unk8->unk6-1);
    for(i = 0; i < gPsycheLock.unk0; i++)
    {
        s32 temp = (gPsycheLock.unk0-1);
        s32 xOrigin = temp * 10 + i * 2;
        s32 yOrigin = temp * 10 + i * 2 + 1;
        xOrigin = gUnknown_0811246C[xOrigin] + 32;
        yOrigin = gUnknown_0811246C[yOrigin] + 16;
        gPsycheLock.lockAnims[i] = PlayAnimationAtCustomOrigin(45 + i, xOrigin, yOrigin);
    }
}

void sub_8016D40(void) // PsylockDisp_reset_static
{
    int i;
    sub_80161E4();
    sub_801622C();
    for(i = 0; i < gPsycheLock.unk0; i++)
        DestroyAnimation(gPsycheLock.lockAnims[i]);
    sub_8010FA4();
    gInvestigation.unkB &= ~1;
}

s32 sub_8016D8C(u16 arg0, u16 arg1) // is_on_psylock_flag_in_room
{
    int i;
    for(i = 0; i < 4; i++)
    {
        struct PsycheLockData * data = &gMain.unk1A4[i];
        if(data->unk0 & 1
        && data->unk4 == arg0
        && data->unk6 == arg1)
            return i;
    }
    return -1;
}

s32 sub_8016DCC(struct PsycheLockData * data, u16 arg1) // is_psylock_correct_item
{
    s32 retVal = -1;
    int i;
    
    for(i = 0; i < data->unk18; i++)
    {
        if(data->unk1C[i] == arg1)
            retVal = i;
    }
    return retVal;
}

void sub_8016DFC(void)
{
    gMain.unk248 = 0;
}

void sub_8016E10(u32 arg0)
{
    gMain.unk248 = arg0;
    gMain.unk249 = 0;
}

void sub_8016E2C(void)
{
    DmaCopy16(3, gGfxInvestigationStopButton, OBJ_VRAM0+0x3000, 0x200);
    DmaCopy16(3, gUnknown_08141EFC, OBJ_VRAM0+0x3200, 0x200);
    DmaCopy16(3, gPalPressPresentButtons, OBJ_PLTT+0xA0, 0x20);
}

void sub_8016E7C(void)
{
    switch(gMain.unk248)
    {
        case 0:
            break;
        case 1:
            switch(gMain.unk249)
            {
                case 0:
                    gMain.unk246 = 16;
                    gMain.unk249++;
                    break;
                case 1:
                    gMain.unk246 -= 2;
                    if(gMain.unk246 <= 0) {
                        gMain.unk246 = 0;
                        gMain.unk249++;
                    }
                    break;
                case 2:
                    sub_8016E10(0);
            }
            break;
        case 2:
            switch(gMain.unk249)
            {
                case 0:
                    gMain.unk246 = 0;
                    gMain.unk249++;
                    break;
                case 1:
                    gMain.unk246 += 2;
                    if(gMain.unk246 >= 16) {
                        gMain.unk246 = 16;
                        gMain.unk249++;
                    }
                    break;
                case 2:
                    sub_8016E10(0);
            }
            break;
        case 3:
            gMain.unk246 = 0;
            sub_8016E10(0);
            break;
        case 4:
            gMain.unk246 = 64;
            sub_8016E10(0);
    }
    sub_8016E2C();
    if(gMain.unk24A & 1)
    {
        // this code masks the y position with 0x1FF instead of 0xFF
        // causing the sprite to become affine for a couple of frames
        gOamObjects[50].attr0 = SPRITE_ATTR0(-gMain.unk246 & 0x1FF, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        gOamObjects[50].attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH-64, FALSE, FALSE, 2);
        gOamObjects[50].attr2 = SPRITE_ATTR2(0x190, 1, 5);
        gOamObjects[51].attr0 = SPRITE_ATTR0(-gMain.unk246 & 0x1FF, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        gOamObjects[51].attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH-32, FALSE, FALSE, 2);
        gOamObjects[51].attr2 = SPRITE_ATTR2(0x198, 1, 5);
    }
    else
    {
        gOamObjects[50].attr0 = SPRITE_ATTR0_CLEAR;
        gOamObjects[51].attr0 = SPRITE_ATTR0_CLEAR;
    }
    if(gMain.unk24A & 2)
    {
        gOamObjects[48].attr0 = SPRITE_ATTR0(-gMain.unk246 & 0x1FF, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        gOamObjects[48].attr1 = SPRITE_ATTR1_NONAFFINE(0, FALSE, FALSE, 2);
        gOamObjects[48].attr2 = SPRITE_ATTR2(0x180, 1, 5);
        gOamObjects[49].attr0 = SPRITE_ATTR0(-gMain.unk246 & 0x1FF, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        gOamObjects[49].attr1 = SPRITE_ATTR1_NONAFFINE(32, FALSE, FALSE, 2);
        gOamObjects[49].attr2 = SPRITE_ATTR2(0x188, 1, 5);
    }
    else
    {
        gOamObjects[48].attr0 = SPRITE_ATTR0_CLEAR;
        gOamObjects[49].attr0 = SPRITE_ATTR0_CLEAR;
    }
}

void sub_80170AC(void)
{
    sub_8016E2C();
    if(gMain.unk24A & 1)
    {
        gOamObjects[50].attr0 = SPRITE_ATTR0(-gMain.unk246 & 0x1FF, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        gOamObjects[50].attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH-54, FALSE, FALSE, 2);
        gOamObjects[51].attr0 = SPRITE_ATTR0(-gMain.unk246 & 0x1FF, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        gOamObjects[51].attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH-22, FALSE, FALSE, 2);
    }
    gOamObjects[48].attr0 = SPRITE_ATTR0_CLEAR;
    gOamObjects[49].attr0 = SPRITE_ATTR0_CLEAR;
}

void sub_8017134(void)
{
    gOamObjects[50].attr0 = SPRITE_ATTR0_CLEAR;
    gOamObjects[51].attr0 = SPRITE_ATTR0_CLEAR;
    gOamObjects[48].attr0 = SPRITE_ATTR0_CLEAR;
    gOamObjects[49].attr0 = SPRITE_ATTR0_CLEAR;
}

bool32 sub_801715C(void)
{
    if(gMain.unk248 == 0)
        return FALSE;
    return TRUE;
}
