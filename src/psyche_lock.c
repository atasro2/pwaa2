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

u16 gPsycheLockChainPalettes[][16] = {
    {0x0000, 0x0842, 0x1084, 0x14a5, 0x18c6, 0x1ce8, 0x252a, 0x294b, 0x318d, 0x39ce, 0x4210, 0x4632, 0x4a53, 0x5295, 0x5ad6, 0x6318},
    {0x0000, 0x0842, 0x1084, 0x18c6, 0x2529, 0x2d6b, 0x39ce, 0x4210, 0x4a52, 0x4e73, 0x56b5, 0x5ad6, 0x6318, 0x6739, 0x6f7b, 0x739c}
};

s16 gPsycheLockLockPositions[] = { // pairs of psychelock X/Y coordinates
	88,  88, 0,   0,   0,   0,   0,   0,   0,   0,   // 1 lock
    24,  80, 152, 80,  0,   0,   0,   0,   0,   0,   // 2 locks
    88,  88, 16,  64,  160, 64,  0,   0,   0,   0,   // 3 locks
    40,  40, 136, 40,  8,   88,  168, 88,  0,   0,   // 4 locks
    88,  88, 40,  24,  136, 24,  8,   80,  168, 80,  // 5 locks 
};

u8 * gPsycheLockChainTilemaps[] = {
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
void CopyPsycheLockChainBlocksToBGMapBuffer(struct PsycheLockChains * chains);

void InitPsycheLockChain(struct PsycheLockChains * chains, s32 arg1, s32 targetBGMapBuffer, s32 arg3)
{
    chains->setButNeverUsed = arg1;
    chains->targetBGMapBuffer = targetBGMapBuffer;
    chains->currentChainFrame = arg3;
    CopyPsycheLockChainBlocksToBGMapBuffer(chains);
}

void LoadPsycheLockChainBlocks(struct PsycheLockChains * chains, s32 arg1, s32 targetBGMap)
{
    int i;
    void * decompBuff;
    DmaFill16(3, 0, chains, sizeof(*chains));
    decompBuff = arg1 % 10 <= 4 ? (void*)0x2036500 : (void*)0x203A500;
    LZ77UnCompWram(gPsycheLockChainTilemaps[arg1], decompBuff);
    chains->mapHeader = decompBuff;
    decompBuff += sizeof(struct PsycheLockChainsTilemapHeader);
    for(i = 0; i < chains->mapHeader->numFrames; i++)
    {
        chains->frames[i] = decompBuff;
        decompBuff += sizeof(struct PsycheLockChainsFrameDescription);
    }
    for(i = 0; i < chains->mapHeader->numBlocks; i++)
    {
        int count;
        int j;
        chains->chainBlocks[i] = decompBuff;
        count = *(u32*)decompBuff;
        decompBuff += 4;
        for(j = 0; j < count; j++)
        {
            struct PsycheLock_Block * block = decompBuff;
            if(!(block->sizeTypeFlag & 0xF000))
                decompBuff += 0x14;
            else
                decompBuff += 0x10;
        }
    }
    InitPsycheLockChain(chains, arg1, targetBGMap, 0);
}

void LoadNextPsycheLockChainFrame(struct PsycheLockChains * chains)
{
    chains->loadCounter++;
    if(chains->currentChainFrame < chains->mapHeader->numFrames-1 && (gMain.frameCounter % 3) == 0)
    {
        chains->loadCounter = 0;
        chains->currentChainFrame++;
        CopyPsycheLockChainBlocksToBGMapBuffer(chains);
    }
}

void ClearBGStateAfterPsychelock(void)
{
    DmaFill16(3, 0, gBG0MapBuffer, sizeof(gBG0MapBuffer));
    DmaFill16(3, 0, gBG3MapBuffer, sizeof(gBG3MapBuffer));
    DmaFill16(3, 0, BG_CHAR_ADDR(1), BG_CHAR_SIZE);
    DmaFill16(3, 0, BG_PLTT+0x40, BG_PLTT_SIZE-0x40);
    DmaFill16(3, 0x2222, BG_CHAR_ADDR(1), 0x9600);
    gIORegisters.lcd_bg0cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(28) | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
    gIORegisters.lcd_bg3cnt = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(31) | BGCNT_MOSAIC | BGCNT_256COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
}

bool32 HavePsycheLockChainsFinishedAnimating(struct PsycheLockChains * chains)
{
    if(chains->currentChainFrame >= chains->mapHeader->numFrames-1)
        return TRUE;
    return FALSE;
}

void LoadPsycheLockChainGraphics(void)
{
    gMain.unk30 = 0x7F;
    gIORegisters.lcd_bg0cnt = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(28) | BGCNT_MOSAIC | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
    gIORegisters.lcd_bg3cnt = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(31) | BGCNT_MOSAIC | BGCNT_16COLOR | BGCNT_WRAP | BGCNT_TXT256x256;
    DmaFill16(3, 0, BG_SCREEN_ADDR(28), BG_SCREEN_SIZE);
    DmaFill16(3, 0, BG_SCREEN_ADDR(31), BG_SCREEN_SIZE);
    m4aSoundVSyncOff();
    LZ77UnCompVram(gGfxPsycheLockChainsTiles, BG_CHAR_ADDR(1));
    m4aSoundVSyncOn();
    DmaCopy16(3, gPsycheLockChainPalettes[0], BG_PLTT+0x1C0, 0x20);
    DmaCopy16(3, gPsycheLockChainPalettes[1], BG_PLTT+0x1E0, 0x20);
}

void CopyPsycheLockChainBlocksToBGMapBuffer(struct PsycheLockChains * chains)
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

    data = chains->chainBlocks[chains->frames[chains->currentChainFrame]->blockId];
    count = *(u32*)data;
    data += 4;

    mapYOffset = 0;
    mapXOffset = 0;
    palIdx = 14;
    sp10 = FALSE;
    switch(chains->targetBGMapBuffer)
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
        struct PsycheLock_Block * block = data;

        data += (block->sizeTypeFlag & 0xF000) == 0 ? 0x14 : 0x10;

        if(block->sizeTypeFlag & 0xF000)
        {
            blockWidth = blockHeight = ((block->sizeTypeFlag & 0xF000) >> 12) * 8;
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

void InitPsycheLockState(u32 numPsycheLocks) // PsylockDisp_init
{
    DmaFill32(3, 0, &gPsycheLock, sizeof(gPsycheLock));
    gPsycheLock.numLocksTotal = numPsycheLocks;
    gPsycheLock.numLocksRemaining = numPsycheLocks;
}

void SetPsycheLockAnimationStateShowChains(void) // PsylockDisp_appear
{
    bool32 isAnyAcroBirdAnimationPlaying = FALSE;

    if(FindAnimationFromAnimId(0x3D)) {
        DestroyAnimation(FindAnimationFromAnimId(0x3D));
        isAnyAcroBirdAnimationPlaying = TRUE;
    }
    if(FindAnimationFromAnimId(0x3E)) {
        DestroyAnimation(FindAnimationFromAnimId(0x3E));
        isAnyAcroBirdAnimationPlaying = TRUE;
    }
    if(FindAnimationFromAnimId(0x3F)) {
        DestroyAnimation(FindAnimationFromAnimId(0x3F));
        isAnyAcroBirdAnimationPlaying = TRUE;
    }

    // Play birds flying away animation
    if(isAnyAcroBirdAnimationPlaying)
        PlayAnimation(0x40);

    gPsycheLock.state = 1;
    gPsycheLock.subState = 0;
}

void SetPsycheLockAnimationStateUnlock(void) // PsylockDisp_unlock
{
    gPsycheLock.state = 4;
    gPsycheLock.subState = 0;
}

void SetPsycheLockAnimationStateRemoveChains(void) // PsylockDisp_disappear
{
    gPsycheLock.state = 5;
    gPsycheLock.subState = 0;
}

void SetPsycheLockAnimationStateDisplayUnlockMessage(void) // PsylockDisp_unlock_message
{
    gPsycheLock.state = 6;
    gPsycheLock.subState = 0;
}

void SetPsycheLockAnimationStateClearLocksAndChains(void) // PsylockDisp_clear_all
{
    gPsycheLock.state = 7;
    gPsycheLock.subState = 0;
}

void SetPsycheLockAnimationStateReturnToNormalBackground(void) // PsylockDisp_to_normal_bg
{
    gPsycheLock.state = 8;
    gPsycheLock.subState = 0;
}

void SetPsycheLockAnimationStateRedrawRemainingLocks(void) // PsylockDisp_redisp
{
    gPsycheLock.state = 9;
    gPsycheLock.subState = 0;
}

bool32 IsPsycheLockAnimationInWaitState(void) // PsylockDisp_is_wait
{
    if(gPsycheLock.state == 0)
        return TRUE;
    return FALSE;
}

void UpdatePsycheLockAnimation(void) // PsylockDisp_move
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
    goto *states[gPsycheLock.state];
    
_08016260: // psylock_move_wait
    return;

_08016264: // psylock_move_whiteshock
    // Wait until Acros birds flying away has finished
    if(FindAnimationFromAnimId(0x40))
    {
        if(FindAnimationFromAnimId(0x40)->flags & ANIM_PLAYING)
            return;
        DestroyAnimation(FindAnimationFromAnimId(0x40));
    }
    switch(gPsycheLock.subState)
    {
        case 0:
            PlaySE(0x7A);
            gMain.unk30 = 0x7F;
            // invert palette colors
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
            gPsycheLock.animationCounter = 255; // ???
            gPsycheLock.animationIntroCounter = 0;
            gPsycheLock.subState++;
            // fallthrough
        case 1:
            if(gPsycheLock.animationCounter++ > 70)
            {
                gPsycheLock.animationCounter = 0;
                gPsycheLock.animationIntroCounter++;
                if(gPsycheLock.animationIntroCounter >= 2)
                    gPsycheLock.subState++;
                else
                    StartHardwareBlend(3, 1, 4, 0x1F);
            }
            break;
        case 2:
            // fade palette to black
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
            if(gPsycheLock.animationCounter++ > 32)
                gPsycheLock.subState++;
            break;
        default:
            gPsycheLock.state++;
            gPsycheLock.subState = 0;
            break;
    }
    return;
_080163C2: // psylock_move_chain_appear
    switch(gPsycheLock.subState)
    {
        default:
            return;
        case 0:
            LoadPsycheLockChainGraphics();
            LoadPsycheLockChainBlocks(&gPsycheLock.chains[0], gPsycheLock.numLocksTotal - 1, 3);
            LoadPsycheLockChainBlocks(&gPsycheLock.chains[1], gPsycheLock.numLocksTotal + 5 - 1, 0);
            PlaySE(0x7F + gPsycheLock.numLocksTotal);
            gPsycheLock.subState++;
            // fallthrough
        case 1:
            LoadNextPsycheLockChainFrame(&gPsycheLock.chains[0]);
            LoadNextPsycheLockChainFrame(&gPsycheLock.chains[1]);
            if(HavePsycheLockChainsFinishedAnimating(&gPsycheLock.chains[0])
            && HavePsycheLockChainsFinishedAnimating(&gPsycheLock.chains[1]))
                gPsycheLock.subState++;
            gMain.gameStateFlags |= 1;
            gMain.shakeTimer = 2;
            gMain.shakeIntensity = 1;
            return;
        case 2:
            FadeOutSE(gPsycheLock.numLocksTotal + 127, 60);
            gPsycheLock.animationCounter = 0;
            gPsycheLock.subState++;
            break;
        case 3:
            break;
    }
    if(gPsycheLock.animationCounter++ >= 30)
    {
        gPsycheLock.state++;
        gPsycheLock.subState = 0;
    }
    return;

_08016498: // psylock_move_lock_appear
    switch(gPsycheLock.subState)
    {
        case 0:
            for(i = 0; i < gPsycheLock.numLocksTotal; i++)
            {
                s32 temp = gPsycheLock.numLocksTotal - 1;
                s32 xOrigin = temp * 10 + i * 2;
                s32 yOrigin = temp * 10 + i * 2 + 1;
                xOrigin = gPsycheLockLockPositions[xOrigin] + 32;
                yOrigin = gPsycheLockLockPositions[yOrigin] + 16;
                gPsycheLock.lockAnims[i] = PlayAnimationAtCustomOrigin(40 + i, xOrigin, yOrigin);
                gPsycheLock.lockAnims[i]->flags |= 0x100;
                gPsycheLock.lockAnims[i]->flags &= ~ANIM_ACTIVE;
            }
            gPsycheLock.animationCounter = 0;
            gPsycheLock.subState++;
            //fallthrough
        case 1:
            gPsycheLock.animationCounter++;
            for(i = 0; i < gPsycheLock.numLocksTotal; i++)
            {
                s32 temp = i * 8;
                s32 temp2 = gPsycheLock.animationCounter - temp;
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
            if(gPsycheLock.animationCounter > gPsycheLock.numLocksTotal * 8)
            {
                for(i = 0; i < gPsycheLock.numLocksTotal; i++)
                    DisableAnimationScale(gPsycheLock.lockAnims[i]);
                gPsycheLock.animationCounter = 0;
                gPsycheLock.subState++;
            }
            break;
        case 2:
            gMain.gameStateFlags |= 1;
            gMain.shakeTimer = 2;
            gMain.shakeIntensity = 2;
            if(gPsycheLock.animationCounter++ > 20)
            {
                StartHardwareBlend(4, 1, 8, 0x1F);
                gPsycheLock.animationCounter = 0;
                gPsycheLock.subState++;
            }
            break;
        case 3:
            if(gPsycheLock.animationCounter++ > 10)
            {
                StartHardwareBlend(3, 0, 0, 0x1F);
                gPsycheLock.animationCounter = 0;
                gPsycheLock.subState++;
            }
            break;
        case 4:
            if(gPsycheLock.animationCounter++ > 40)
            {
                gPsycheLock.animationCounter = 0;
                gPsycheLock.subState++;
            }
            break;
        case 5:
            gPsycheLock.state = 0;
            gPsycheLock.subState = 0;
            break;
    }
    return;

_0801667C: // psylock_move_lock_unlock
    switch(gPsycheLock.subState)
    {
        case 0:
        {
            s32 xOrigin;
            s32 yOrigin;
            s32 temp;
            gPsycheLock.numLocksRemaining--;
            PlaySE(0x74);
            DestroyAnimation(gPsycheLock.lockAnims[gPsycheLock.numLocksRemaining]);
            temp = gPsycheLock.numLocksTotal - 1;
            xOrigin = temp * 10 + gPsycheLock.numLocksRemaining * 2;
            yOrigin = temp * 10 + gPsycheLock.numLocksRemaining * 2 + 1;
            xOrigin = gPsycheLockLockPositions[xOrigin] + 32;
            yOrigin = gPsycheLockLockPositions[yOrigin] + 16;
            gPsycheLock.lockAnims[gPsycheLock.numLocksRemaining] = PlayAnimationAtCustomOrigin(50 + gPsycheLock.numLocksRemaining, xOrigin, yOrigin);
            gMain.gameStateFlags |= 1;
            gMain.shakeTimer = 2;
            gMain.shakeIntensity = 2;
            StartHardwareBlend(4, 0, 0, 0x1F);
            gPsycheLock.animationCounter = 0;
            gPsycheLock.subState++;
            break;
        }
        case 1:
            if(gPsycheLock.animationCounter++ > 2)
            {
                StartHardwareBlend(3, 0, 0, 0x1F);
                gPsycheLock.animationCounter = 0;
                gPsycheLock.subState++;
            }
            break;
        case 2:
            if(gPsycheLock.animationCounter++ > 60)
            {
                DestroyAnimation(gPsycheLock.lockAnims[gPsycheLock.numLocksRemaining]);
                gPsycheLock.lockAnims[gPsycheLock.numLocksRemaining] = NULL;
                gPsycheLock.state = 0;
                gPsycheLock.subState = 0;
            }
            break;
    }
    return;

_0801678A: // psylock_move_chain_disappear
    switch(gPsycheLock.subState)
    {
        case 0:
            gPsycheLock.animationCounter = 0;
            gPsycheLock.subState++;
        case 1:
            if(gPsycheLock.animationCounter++ > 20)
            {
                gPsycheLock.animationCounter = 0;
                gPsycheLock.subState++;
            }
            return;
        case 2:
        {
            gIORegisters.lcd_bg0cnt |= BGCNT_MOSAIC;
            gIORegisters.lcd_bg3cnt |= BGCNT_MOSAIC;
            gPsycheLock.animationCounter = 0;
            gPsycheLock.subState++;
        }
        case 3:
            if((gMain.frameCounter % 8) != 0)
            {
                if(gPsycheLock.animationCounter++ > 4)
                    gPsycheLock.subState++;
            }
            return;
        case 4:
            if((gMain.frameCounter % 5) != 0)
            {
                gIORegisters.lcd_mosaic = gPsycheLock.animationCounter << 4 | gPsycheLock.animationCounter;
                if (gPsycheLock.animationCounter-- <= 0)
                {
                    gIORegisters.lcd_bg0cnt &= ~BGCNT_MOSAIC;
                    gIORegisters.lcd_bg3cnt &= ~BGCNT_MOSAIC;
                    gIORegisters.lcd_mosaic = 0;
                    gPsycheLock.animationCounter = 0;
                    gPsycheLock.subState++;
                }
            }
            return;
        case 5:
            if(gPsycheLock.animationCounter++ > 40)
            {
                LoadPsycheLockChainBlocks(&gPsycheLock.chains[0], gPsycheLock.numLocksTotal + 10 - 1, 3);
                LoadPsycheLockChainBlocks(&gPsycheLock.chains[1], gPsycheLock.numLocksTotal + 10 + 5 - 1, 0);
                PlaySE(127 + gPsycheLock.numLocksTotal);
                gPsycheLock.subState++;
            }
            return;
        case 6:
            LoadNextPsycheLockChainFrame(&gPsycheLock.chains[0]);
            LoadNextPsycheLockChainFrame(&gPsycheLock.chains[1]);
            
            if(HavePsycheLockChainsFinishedAnimating(&gPsycheLock.chains[0])
            && HavePsycheLockChainsFinishedAnimating(&gPsycheLock.chains[1])) {
                FadeOutSE(127 + gPsycheLock.numLocksTotal, 60);
                gPsycheLock.subState++;
                gPsycheLock.animationCounter = 0;
            }
            gMain.gameStateFlags |= 1;
            gMain.shakeTimer = 2;
            gMain.shakeIntensity = 1;
            return;
        case 7:
            if(gPsycheLock.animationCounter++ > 80)
            {
                StartHardwareBlend(4, 1, 8, 0x1F);
                gPsycheLock.animationCounter = 0;
                gPsycheLock.subState++;
            }
            return;
        case 8:
            if(gMain.blendMode)
                return;
            gPsycheLock.animationCounter = 0;
            gPsycheLock.subState++;
            return;
        case 9:
            if(gPsycheLock.animationCounter++ > 20)
                gPsycheLock.subState++;
            return;
    }
    gPsycheLock.state = 0;
    gPsycheLock.subState = 0;
    return;

_080169A0: // psylock_move_unlock_message
{
    struct AnimationListEntry * animation;
    struct AnimationListEntry * animation2;
    switch(gPsycheLock.subState)
    {
        case 0:
            StartHardwareBlend(1, 0, 0, 0x1F);
            PlayAnimation(0x38);
            PlayAnimation(0x39);
            PlaySE(166);
            gPsycheLock.subState++;
            // fallthrough
        case 1:
            animation = FindAnimationFromAnimId(0x38);
            animation2 = FindAnimationFromAnimId(0x39);
            animation->animationInfo.xOrigin += 10;
            animation->flags |= ANIM_ACTIVE;
            animation2->animationInfo.xOrigin -= 10;
            animation2->flags |= ANIM_ACTIVE;
            if(animation->animationInfo.xOrigin >= 120)
                gPsycheLock.subState++;
            break;
        case 2:
            StartHardwareBlend(3, 1, 8, 0x1F);
            DestroyAnimation(FindAnimationFromAnimId(0x38));
            DestroyAnimation(FindAnimationFromAnimId(0x39));
            PlayAnimation(0x37);
            gPsycheLock.subState++;
            break;
        case 3:
            if(gMain.blendMode == 0)
                gPsycheLock.subState++;
            break;
        case 4:
            animation = FindAnimationFromAnimId(0x37);
            if(!(animation->flags & ANIM_PLAYING))
            {
                DestroyAnimation(animation);
                PlayAnimationAtCustomOrigin(0x38, 120, 60);
                PlayAnimationAtCustomOrigin(0x39, 120, 60);
                PlaySE(167);
                gPsycheLock.subState++;
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
                gPsycheLock.subState++;
            }
            break;
        case 6:
            if(IsHPBarAnimating() == 0)
            {
                gPsycheLock.state = 0;
                gPsycheLock.subState = 0;
            }
            break;
    }
    return;
}
_08016B3C: // psylock_move_clear_all
    switch(gPsycheLock.subState)
    {
        case 0:
            for(i = 0; i < gPsycheLock.numLocksTotal; i++)
                DestroyAnimation(gPsycheLock.lockAnims[i]);
            m4aSoundVSyncOff();
            ClearBGStateAfterPsychelock();
            UpdateBGTilemaps();
            SetLCDIORegs();
            i = gMain.roomData[gMain.currentRoomId][0];
            gMain.previousBG = gMain.currentBG;
            gMain.currentBG = i;
            gMain.currentBgStripe = 1;
            ReloadInvestigationGraphics();
            m4aSoundVSyncOn();
            gPsycheLock.state = 0;
            gPsycheLock.subState = 0;
    }
    return;
_08016BB8: // psylock_move_to_normal_bg
    for(i = 0; i < gPsycheLock.numLocksTotal; i++)
    {
        DestroyAnimation(gPsycheLock.lockAnims[i]);
        gPsycheLock.lockAnims[i] = NULL;
    }
    ClearBGStateAfterPsychelock();
    DmaFill16(3, 0, gBG0MapBuffer, sizeof(gBG0MapBuffer));
    gPsycheLock.state = 0;
    gPsycheLock.subState = 0;
    return;
    
_08016C0C: // psylock_move_redisp
{
    u32 temp = gPsycheLock.numLocksRemaining;
    ShowPsycheLockLocksAndChainsWithoutAnimating(gPsycheLock.numLocksTotal);
    gPsycheLock.numLocksRemaining = temp;
    for(i = 0; i < gPsycheLock.numLocksTotal - gPsycheLock.numLocksRemaining; i++)
    {
        DestroyAnimation(gPsycheLock.lockAnims[gPsycheLock.numLocksTotal - 1 - i]);
        gPsycheLock.lockAnims[gPsycheLock.numLocksTotal - 1 - i] = NULL;
    }
    gPsycheLock.state = 0;
    gPsycheLock.subState = 0;
    return;
}
_08016C6A: // psylock_move_null
    return;

    //_08016C6A function return
}

void ShowPsycheLockLocksAndChainsWithoutAnimating(u32 numPsycheLocks) // PsylockDisp_show_static
{
    int i;

    InitPsycheLockState(numPsycheLocks);
    LoadPsycheLockChainGraphics();
    LoadPsycheLockChainBlocks(&gPsycheLock.chains[0], gPsycheLock.numLocksTotal - 1, 3);
    LoadPsycheLockChainBlocks(&gPsycheLock.chains[1], gPsycheLock.numLocksTotal + 5 - 1, 0);
    InitPsycheLockChain(&gPsycheLock.chains[0], gPsycheLock.numLocksTotal - 1, 3, gPsycheLock.chains[0].mapHeader->numFrames-1);
    InitPsycheLockChain(&gPsycheLock.chains[1], gPsycheLock.numLocksTotal + 5 - 1, 0, gPsycheLock.chains[1].mapHeader->numFrames-1);
    for(i = 0; i < gPsycheLock.numLocksTotal; i++)
    {
        s32 temp = (gPsycheLock.numLocksTotal-1);
        s32 xOrigin = temp * 10 + i * 2;
        s32 yOrigin = temp * 10 + i * 2 + 1;
        xOrigin = gPsycheLockLockPositions[xOrigin] + 32;
        yOrigin = gPsycheLockLockPositions[yOrigin] + 16;
        gPsycheLock.lockAnims[i] = PlayAnimationAtCustomOrigin(45 + i, xOrigin, yOrigin);
    }
}

void ClearPsycheLockLocksAndChainsWithoutAnimating(void) // PsylockDisp_reset_static
{
    int i;
    SetPsycheLockAnimationStateClearLocksAndChains();
    UpdatePsycheLockAnimation();
    for(i = 0; i < gPsycheLock.numLocksTotal; i++)
        DestroyAnimation(gPsycheLock.lockAnims[i]);
    ReloadInvestigationGraphics();
    gInvestigation.inPsycheLockChallengeFlag &= ~1;
}

s32 GetPsycheLockDataIndexByRoomAndPerson(u16 roomId, u16 personId) // is_on_psylock_flag_in_room
{
    int i;
    for(i = 0; i < 4; i++)
    {
        struct PsycheLockData * data = &gMain.psycheLockData[i];
        if(data->enabled & 1
        && data->roomId == roomId
        && data->personId == personId)
            return i;
    }
    return -1;
}

s32 IsPresentedEvidenceValidForPsycheLock(struct PsycheLockData * data, u16 evidenceId) // is_psylock_correct_item
{
    s32 retVal = -1;
    int i;
    
    for(i = 0; i < data->numValidEvidence; i++)
    {
        if(data->validEvidenceIds[i] == evidenceId)
            retVal = i;
    }
    return retVal;
}

void ResetPsycheLockStopPresentButtonsState(void)
{
    gMain.psycheLockStopPresentButtonsState = 0;
}

void SetPsycheLockStopPresentButtonsState(u32 state)
{
    gMain.psycheLockStopPresentButtonsState = state;
    gMain.psycheLockStopPresentButtonsSubstate = 0;
}

void LoadPsycheLockButtonGraphics(void)
{
    DmaCopy16(3, gGfxInvestigationStopButton, OBJ_VRAM0+0x3000, 0x200);
    // Only load Present button graphics
    DmaCopy16(3, gGfxPressPresentButtons+0x200, OBJ_VRAM0+0x3200, 0x200);
    DmaCopy16(3, gPalPressPresentButtons, OBJ_PLTT+0xA0, 0x20);
}

void AnimatePsycheLockStopBresentButtons(void)
{
    switch(gMain.psycheLockStopPresentButtonsState)
    {
        case 0:
            break;
        case 1:
            switch(gMain.psycheLockStopPresentButtonsSubstate)
            {
                case 0:
                    gMain.psycheLockStopPresentButtonsY = 16;
                    gMain.psycheLockStopPresentButtonsSubstate++;
                    break;
                case 1:
                    gMain.psycheLockStopPresentButtonsY -= 2;
                    if(gMain.psycheLockStopPresentButtonsY <= 0) {
                        gMain.psycheLockStopPresentButtonsY = 0;
                        gMain.psycheLockStopPresentButtonsSubstate++;
                    }
                    break;
                case 2:
                    SetPsycheLockStopPresentButtonsState(0);
            }
            break;
        case 2:
            switch(gMain.psycheLockStopPresentButtonsSubstate)
            {
                case 0:
                    gMain.psycheLockStopPresentButtonsY = 0;
                    gMain.psycheLockStopPresentButtonsSubstate++;
                    break;
                case 1:
                    gMain.psycheLockStopPresentButtonsY += 2;
                    if(gMain.psycheLockStopPresentButtonsY >= 16) {
                        gMain.psycheLockStopPresentButtonsY = 16;
                        gMain.psycheLockStopPresentButtonsSubstate++;
                    }
                    break;
                case 2:
                    SetPsycheLockStopPresentButtonsState(0);
            }
            break;
        case 3:
            gMain.psycheLockStopPresentButtonsY = 0;
            SetPsycheLockStopPresentButtonsState(0);
            break;
        case 4:
            gMain.psycheLockStopPresentButtonsY = 64;
            SetPsycheLockStopPresentButtonsState(0);
    }
    LoadPsycheLockButtonGraphics();
    if(gMain.psycheLockStopPresentButtonsActive & 1)
    {
        // this code masks the y position with 0x1FF instead of 0xFF
        // causing the sprite to become affine for a couple of frames
        gOamObjects[50].attr0 = SPRITE_ATTR0(-gMain.psycheLockStopPresentButtonsY & 0x1FF, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        gOamObjects[50].attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH-64, FALSE, FALSE, 2);
        gOamObjects[50].attr2 = SPRITE_ATTR2(0x190, 1, 5);
        gOamObjects[51].attr0 = SPRITE_ATTR0(-gMain.psycheLockStopPresentButtonsY & 0x1FF, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        gOamObjects[51].attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH-32, FALSE, FALSE, 2);
        gOamObjects[51].attr2 = SPRITE_ATTR2(0x198, 1, 5);
    }
    else
    {
        gOamObjects[50].attr0 = SPRITE_ATTR0_CLEAR;
        gOamObjects[51].attr0 = SPRITE_ATTR0_CLEAR;
    }
    if(gMain.psycheLockStopPresentButtonsActive & 2)
    {
        gOamObjects[48].attr0 = SPRITE_ATTR0(-gMain.psycheLockStopPresentButtonsY & 0x1FF, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        gOamObjects[48].attr1 = SPRITE_ATTR1_NONAFFINE(0, FALSE, FALSE, 2);
        gOamObjects[48].attr2 = SPRITE_ATTR2(0x180, 1, 5);
        gOamObjects[49].attr0 = SPRITE_ATTR0(-gMain.psycheLockStopPresentButtonsY & 0x1FF, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        gOamObjects[49].attr1 = SPRITE_ATTR1_NONAFFINE(32, FALSE, FALSE, 2);
        gOamObjects[49].attr2 = SPRITE_ATTR2(0x188, 1, 5);
    }
    else
    {
        gOamObjects[48].attr0 = SPRITE_ATTR0_CLEAR;
        gOamObjects[49].attr0 = SPRITE_ATTR0_CLEAR;
    }
}

void SetPsycheLockPresentButtonOAMInCourtRecord(void)
{
    LoadPsycheLockButtonGraphics();
    if(gMain.psycheLockStopPresentButtonsActive & 1)
    {
        gOamObjects[50].attr0 = SPRITE_ATTR0(-gMain.psycheLockStopPresentButtonsY & 0x1FF, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        gOamObjects[50].attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH-54, FALSE, FALSE, 2);
        gOamObjects[51].attr0 = SPRITE_ATTR0(-gMain.psycheLockStopPresentButtonsY & 0x1FF, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        gOamObjects[51].attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH-22, FALSE, FALSE, 2);
    }
    gOamObjects[48].attr0 = SPRITE_ATTR0_CLEAR;
    gOamObjects[49].attr0 = SPRITE_ATTR0_CLEAR;
}

void ClearPsycheLockStopPresentButtonsOAM(void)
{
    gOamObjects[50].attr0 = SPRITE_ATTR0_CLEAR;
    gOamObjects[51].attr0 = SPRITE_ATTR0_CLEAR;
    gOamObjects[48].attr0 = SPRITE_ATTR0_CLEAR;
    gOamObjects[49].attr0 = SPRITE_ATTR0_CLEAR;
}

bool32 IsPsycheLockStopPresentButtonsAnimating(void)
{
    if(gMain.psycheLockStopPresentButtonsState == 0)
        return FALSE;
    return TRUE;
}
