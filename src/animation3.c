#include "global.h"
#include "animation.h"
#include "ewram.h"
#include "sound.h"
#include "utils.h"
#include "script.h"
#include "background.h"
#include "graphics.h"
#include "constants/animation.h"
#include "constants/process.h"

extern const struct PersonAnimationData gPersonAnimData[];
extern const struct SpriteSizeData gSpriteSizeTable[];
extern const struct AnimationData gAnimationData[];

extern u16 gObjPaletteBuffer[16][16];

struct AnimationListEntry * CreateAnimationFromAnimationInfo(struct AnimationInfo *animationFieldC, u32 arg1, u32 flags);
void UpdatePersonAnimationForCourtScroll(struct AnimationListEntry * animation);
void PutAnimationInAnimList(struct AnimationListEntry *animation);
struct AnimationListEntry *AllocateAnimationWithId(u32 animId);
void DoAnimationAction(u32 action);

struct AnimationListEntry *PlayAnimation(u32 arg0)
{
    s32 xOrigin, yOrigin;
    struct Main *main = &gMain;
    const struct AnimationData *ptr = &gAnimationData[arg0];
    xOrigin = ptr->xOrigin;
    yOrigin = ptr->yOrigin;
    if (main->Bg256_dir & 0x10 && arg0 > 0x8)
        xOrigin -= DISPLAY_WIDTH;
    return PlayAnimationAtCustomOrigin(arg0, xOrigin, yOrigin);
}

struct AnimationListEntry *PlayAnimationAtCustomOrigin(u32 arg0, s32 xOrigin, s32 yOrigin)
{
    struct AnimationListEntry *animationStruct;
    struct AnimationInfo animationInfo;
    struct Main *main = &gMain;
    const struct AnimationData *animData = &gAnimationData[arg0];
    u32 var0;
    uintptr_t var1;
    u32 var2;

    animationInfo.animId = arg0;
    animationInfo.vramPtr = animData->vramPtr;
    animationInfo.animGfxDataStartPtr = animData->gfxData;
    animationInfo.animFrameDataStartPtr = animData->frameData;
    animationInfo.paletteSlot = animData->paletteSlot;
    animationInfo.spriteCount = animData->spriteCount;
    animationInfo.priority = animData->priority;
    animationInfo.xOrigin = xOrigin;
    animationInfo.yOrigin = yOrigin;
    animationStruct = CreateAnimationFromAnimationInfo(&animationInfo, arg0, animData->flags);
    if(arg0 == 0x73) {
        animationStruct->specialEffectVar = 0x18;
    }
    if(arg0 == 0x12) {
        animationStruct->specialEffectVar = 0;
    }
    var0 = animationStruct->animationInfo.paletteSlot - 6;
    var1 = (1 << var0);
    if (!(main->allocatedObjPltts & var1) && animationStruct->animationInfo.paletteSlot < 10)
    {
        void *dest;
        u32 size;
		
        main->allocatedObjPltts |= var1;
        var1 = OBJ_PLTT;
        var1 += animationStruct->animationInfo.paletteSlot * 0x20;
        dest = gObjPaletteBuffer[var0];
        var0 = *(u32 *)animationStruct->animationInfo.animGfxDataStartPtr;
        size = var0 * 0x20;
        DmaCopy16(3, var1, dest, size);
    }
    animationStruct->bgId = main->currentBG;
    animationStruct->roomId = main->currentRoomId;
    animationStruct->flags |= ANIM_QUEUED_PAL_UPLOAD;
    return animationStruct;
}


struct AnimationBackupStruct * RestoreAnimationsFromBuffer(struct AnimationBackupStruct * backupAnimation) // ! UB: this function doesn't return anything
{
    u32 i;
    void * animFrameData;
    void * animGfxData;
    struct AnimationListEntry *animation = &gAnimation[1];
    struct AnimationInfo animationInfo;
    ResetAnimationSystem();
    if (backupAnimation->flags & ANIM_ALLOCATED)
    {
        animationInfo.animId = 0xFF;
        animationInfo.personId = backupAnimation->personId;
        animationInfo.vramPtr = OBJ_VRAM0 + 0x5800;
        animationInfo.animGfxDataStartPtr = gPersonAnimData[backupAnimation->personId].gfxData;
        animationInfo.animFrameDataStartPtr = backupAnimation->animFrameDataStartPtr;
        animationInfo.paletteSlot = 0xE;
        if(animation->animationInfo.animId == 0xFF) {
            if(backupAnimation->personId == 0x10) {
                animationInfo.paletteSlot = 0xD;
            }
            if(backupAnimation->personId == 0x27) {
                animationInfo.paletteSlot = 0xD;
            }
        }
        animationInfo.spriteCount = gPersonAnimData[backupAnimation->personId].spriteCount;
        animationInfo.priority = 0x31;
        animationInfo.xOrigin = backupAnimation->xOrigin;
        animationInfo.yOrigin = backupAnimation->yOrigin;
        DmaCopy16(3, &animationInfo, &animation->animationInfo, sizeof(animationInfo));
        animFrameData = animation->animationInfo.animFrameDataStartPtr;
        animation->frameData = animFrameData;
        animGfxData = animation->animationInfo.animGfxDataStartPtr + 1 [(u32 *)animFrameData];
        animation->animationInfo.animGfxDataStartPtr = animGfxData; // offsets the graphics pointer
        animation->animationInfo.tileDataPtr = animGfxData + 4 + (*(u32 *)animGfxData) * 0x20;
        animation->frameData = backupAnimation->frameData;
        animation->spriteData = (void *)(animFrameData + animation->frameData->spriteDataOffset);
        animation->flags = backupAnimation->flags | (ANIM_QUEUED_TILE_UPLOAD | ANIM_QUEUED_PAL_UPLOAD);
        animation->tileNum |= (uintptr_t)animation->animationInfo.vramPtr / TILE_SIZE_4BPP; // get OAM tile num from VRAM address
        animation->spritePriorityMatrixIndex = 0x300;
        SetAnimationPriority(animation, animation->animationInfo.priority >> 4);
        animation->animationInfo.priority &= 0xF;
        animation->bgId = backupAnimation->bgId;
        PutAnimationInAnimList(animation);
    }
    backupAnimation++;
    for (i = 2; i < 0x20; i++, backupAnimation++)
    {
        if (backupAnimation->flags & ANIM_ALLOCATED)
        {
            animation = PlayAnimationAtCustomOrigin(backupAnimation->animId, backupAnimation->xOrigin, backupAnimation->yOrigin);
            animation->flags = backupAnimation->flags | (ANIM_QUEUED_TILE_UPLOAD | ANIM_QUEUED_PAL_UPLOAD);
            animation->frameData = backupAnimation->frameData;
            animation->spriteData = (void *)(animation->animationInfo.animFrameDataStartPtr + animation->frameData->spriteDataOffset);
            DataCopy32(&animation->bgId, &backupAnimation->bgId);
        }
    }
}

struct AnimationBackupStruct * SaveAnimationDataToBuffer(struct AnimationBackupStruct * backupAnimation)
{
    struct AnimationListEntry *animation;
    for (animation = &gAnimation[1]; animation < &gAnimation[0x20]; animation++, backupAnimation++)
    {
        DataCopy32(&backupAnimation->animId, &animation->animationInfo.animId);
        DataCopy32(&backupAnimation->xOrigin, &animation->animationInfo.xOrigin);
        DataCopy32(&backupAnimation->frameDurationCounter, &animation->frameDurationCounter);
        DataCopy32(&backupAnimation->bgId, &animation->bgId);
        backupAnimation->animFrameDataStartPtr = animation->animationInfo.animFrameDataStartPtr;
        backupAnimation->flags = animation->flags;
        backupAnimation->frameData = animation->frameData;
    }
    return backupAnimation;
}

struct AnimationListEntry * CreateAnimationFromAnimationInfo(struct AnimationInfo * animationInfo, u32 arg1, u32 flags)
{
    void * animFrameData;
    void * animGfxData;
    struct AnimationListEntry *animation = AllocateAnimationWithId(animationInfo->animId);
    if (animation == NULL)
        return NULL;
    DmaCopy16(3, animationInfo, &animation->animationInfo, sizeof(animation->animationInfo));
    animFrameData = animation->animationInfo.animFrameDataStartPtr;
    animGfxData = animation->animationInfo.animGfxDataStartPtr +  1 [(u32 *)animFrameData];
    animation->animationInfo.animGfxDataStartPtr = animGfxData;                                      // offsets the graphics pointer
    animation->animationInfo.tileDataPtr = animGfxData + 4 + (*(u32 *)animGfxData) * 0x20; // skip first u32(number of palettes) and the palettes, pointer to tiles
    animation->frameData = (struct AnimationFrame *)(animFrameData + 8);                                  // skips animation block header, pointer to frame data
    animation->spriteData = (void *)(animFrameData + animation->frameData->spriteDataOffset);                  // Frame tilemap pointer
    animation->flags |= flags;
    if (flags & 0x10)
        animation->flags &= ~ANIM_PLAYING;
    animation->tileNum |= (uintptr_t)animation->animationInfo.vramPtr / TILE_SIZE_4BPP; // get OAM tile num from VRAM address
    animation->rotationAmount = 0;
    animation->spritePriorityMatrixIndex = 0x300;
    SetAnimationPriority(animation, animation->animationInfo.priority >> 4);
    animation->animationInfo.priority &= 0xF;
    PutAnimationInAnimList(animation);
    if (animation->frameData->flags & 0x2)
        PlaySE(animation->frameData->songId);
    if (animation->frameData->flags & 0x4)
        DoAnimationAction(animation->frameData->action);
    return animation;
}

u32 AdvanceAnimationFrame(struct AnimationListEntry * animation)
{
    void * gfxDataStart;
    u32 retVal = 4;
    if(animation->flags & 0x100) {
        animation->flags |= 0x100;
        return 4;
    }
    if (gScriptContext.personAnimPauseCounter && animation->animationInfo.animId == 0xFF)
        return retVal;
    if (animation->frameData->frameDuration > ++animation->frameDurationCounter)
        return retVal;
    animation->frameDurationCounter = 0;
    animation->frameData++;
    if (animation->frameData->flags & 0x2)
        PlaySE(animation->frameData->songId);
    if (animation->frameData->flags & 0x4)
        DoAnimationAction(animation->frameData->action);
    switch (animation->frameData->frameDuration)
    {
    case ANIM_LOOP:
        gfxDataStart = animation->animationInfo.animFrameDataStartPtr;
        animation->frameData = (struct AnimationFrame *)(gfxDataStart + 8);
        animation->spriteData = gfxDataStart + animation->frameData->spriteDataOffset;
        animation->flags |= ANIM_QUEUED_TILE_UPLOAD;
        retVal = 7;
        break;
    case ANIM_STOP:
        animation->flags &= ~ANIM_PLAYING;
        retVal = 0;
        animation->frameData--;
        break;
    case ANIM_DESTROY:
        DestroyAnimation(animation);
        retVal = 0;
        break;
    default:
        animation->spriteData = (void *)(animation->animationInfo.animFrameDataStartPtr + animation->frameData->spriteDataOffset);
        animation->flags |= ANIM_QUEUED_TILE_UPLOAD;
        retVal = 5;
        break;
    }
    return retVal;
}

void OffsetAllAnimations(s32 xOffset, s32 yOffset)
{
    struct AnimationListEntry *animation;
    for (animation = gAnimation[0].next; animation != NULL; animation = animation->next)
    {
        struct OamAttrs *oam;
        if (animation->flags & 8)
            continue;
        animation->animationInfo.xOrigin += xOffset;
        animation->animationInfo.yOrigin += yOffset;
        for (oam = &gOamObjects[animation->animtionOamStartIdx]; oam < &gOamObjects[animation->animtionOamEndIdx]; oam++)
        {
            u32 y;
            u32 x;
            u32 xMask;
            u32 yMask = 0xFF;
            y = (u8)oam->attr0;
            oam->attr0 &= ~0xFF;
            y += yOffset;
            y &= yMask; // lulwut
            oam->attr0 |= y;

            xMask = 0x1FF;
            x = oam->attr1 & 0x1FF;
            oam->attr1 &= ~0x1FF;
            x += xOffset;
            x &= xMask;
            oam->attr1 |= x;
        }
    }
}

void StartAnimationBlend(u32 arg0, u32 arg1)
{
    struct AnimationListEntry *animation2;
    struct IORegisters *ioRegsp = &gIORegisters;
    struct Main *main = &gMain;
    if (arg0 & 0xFF00)
    {
        u32 animationId = arg0 >> 8;
        arg0 &= 0xFF;
        animation2 = FindAnimationFromAnimId(animationId);
    }
    else
        animation2 = &gAnimation[1];

    if (ioRegsp->lcd_bldy == 0x10 || (!(animation2->flags & ANIM_ALLOCATED) && !(arg0 & 2)))
        return;

    if (arg0 & 1)
    {
        if ((animation2->flags & 0x02000000) && !(animation2->flags & 0x4))
            return;
        animation2->flags &= ~(ANIM_INACTIVE | 0x04000000 | 4);
        main->blendDeltaY = 0x10;
    }
    else if (arg0 & 4)
    {
        if ((animation2->flags & 0x02000000) && (animation2->flags & 0x4))
            return;
        animation2->flags |= 0x4;
        main->blendDeltaY = 0;
        if(animation2->flags & 0x40) {
            main->blendDeltaY = 4;
            animation2->flags &= ~0x40;
        }
        if (arg0 & (4 | 8))
        {
            animation2->flags |= 0x04000000;
        }
    }
    else
        return;
    animation2->flags |= (ANIM_ACTIVE | ANIM_BLEND_ACTIVE);
    main->blendDelay = arg1;
    main->blendCounter = 0;
    ioRegsp->lcd_bldcnt = BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG3;
    ioRegsp->lcd_bldalpha = BLDALPHA_BLEND(0x10 - main->blendDeltaY, main->blendDeltaY);
    REG_BLDCNT = ioRegsp->lcd_bldcnt;
    REG_BLDALPHA = ioRegsp->lcd_bldalpha;
}

void UpdateAnimationBlend(struct AnimationListEntry *animation)
{
    struct Main *main = &gMain;
    struct IORegisters *ioRegsp = &gIORegisters;
    struct AnimationListEntry *animation2 = NULL;
    if (main->blendMode)
    {
        animation->flags &= ~ANIM_BLEND_ACTIVE;
        return;
    }


    if (animation->animationInfo.personId == 0x20)
    {
        animation2 = FindAnimationFromAnimId(0x3D);
        if (animation2 == NULL)
            animation2 = FindAnimationFromAnimId(0x3E);
    }

    if (++main->blendCounter >= main->blendDelay)
    {
        main->blendCounter = 0;
        if (animation->flags & 4)
        {
            main->blendDeltaY++;
            if (main->blendDeltaY == 0x10)
            {
                ioRegsp->lcd_bldcnt = BLDCNT_TGT1_BG1 | BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG0 | BLDCNT_TGT2_BG3 | BLDCNT_TGT2_OBJ;
                ioRegsp->lcd_bldalpha = BLDALPHA_BLEND(0x1F, 0x7);
                animation->flags &= ~ANIM_BLEND_ACTIVE;
                if (animation->flags & 0x04000000)
                {
                    ChangeAnimationActivity(animation, 0);
                    if (animation2 != NULL)
                        ChangeAnimationActivity(animation2, 0);
                    return;
                }
                DestroyAnimation(animation);
                if (animation2 != NULL)
                    DestroyAnimation(animation2);
                return;
            }
        }
        else
        {
            main->blendDeltaY--;
            if (main->blendDeltaY == 0)
            {
                ioRegsp->lcd_bldcnt = BLDCNT_TGT1_BG1 | BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG0 | BLDCNT_TGT2_BG3 | BLDCNT_TGT2_OBJ;
                ioRegsp->lcd_bldalpha = BLDALPHA_BLEND(0x1F, 0x7);
                animation->flags &= ~ANIM_BLEND_ACTIVE;
                if (animation2 != NULL)
                    animation2->flags &= ~ANIM_BLEND_ACTIVE;
                return;
            }
        }
    }
    ioRegsp->lcd_bldalpha = BLDALPHA_BLEND(0x10 - main->blendDeltaY, main->blendDeltaY);
}

void ActivateAllAllocatedAnimations() // unused
{
    struct AnimationListEntry *animation = gAnimation;

    for (; animation < &gAnimation[ARRAY_COUNT(gAnimation)]; animation++)
    {
        if (animation->flags & ANIM_ALLOCATED)
            animation->flags |= (ANIM_ACTIVE | ANIM_QUEUED_TILE_UPLOAD);
    }
}

void DestroyAnimation(struct AnimationListEntry *animation)
{
    struct AnimationListEntry *animation2;
    struct Main *main = &gMain;
    struct OamAttrs *oam;
    u32 var0;
    uintptr_t var1;
    if (animation == NULL)
        return;

    if (animation->animationInfo.animId == 0xFF && animation->animationInfo.personId == 0x20)
    {
        animation2 = FindAnimationFromAnimId(0x3D);
        if (animation2 != NULL)
            DestroyAnimation(animation2);
        else {
            animation2 = FindAnimationFromAnimId(0x3E);
            if (animation2 != NULL)
                DestroyAnimation(animation2);
        }
    }
    if (animation->flags & ANIM_ALLOCATED)
    {
        void *dst;
        u32 size;
        for (oam = &gOamObjects[animation->animtionOamStartIdx]; oam < &gOamObjects[animation->animtionOamEndIdx]; oam++)
            oam->attr0 = SPRITE_ATTR0_CLEAR;
        main->animationFlags |= 4;
        animation->flags = 0;
        animation->prev->next = animation->next;
        animation->next->prev = animation->prev;
        if (animation->animationInfo.animId == 0xFF)
            return;
        if (animation->animationInfo.paletteSlot > 9)
            return;
        var0 = animation->animationInfo.paletteSlot - 6;
        var1 = 1 << var0;
        main->allocatedObjPltts &= ~var1;
        var1 = (uintptr_t)gObjPaletteBuffer[var0];
        dst = (void*)OBJ_PLTT;
        dst += animation->animationInfo.paletteSlot * 0x20;
        size = *(u32 *)animation->animationInfo.animGfxDataStartPtr * 0x20;
        DmaCopy16(3, var1, dst, size);
    }
}

void UpdateAllAnimationSprites()
{
    struct Main * main = &gMain;
    u32 var0 = 0x80;
    struct OamAttrs *oam = &gOamObjects[ARRAY_COUNT(gOamObjects)];
    struct AnimationListEntry *animation;
    for (animation = gAnimation[0].next; animation != NULL; animation = animation->next)
    {
        u32 i, j;
        if ((animation->flags & ANIM_ALLOCATED) == 0)
            continue;
        animation->animtionOamEndIdx = var0;
        if ((main->animationFlags & 2) && (animation->flags & ANIM_ACTIVE))
        {
            void *ptr = (void *)animation->spriteData;
            struct SpriteTemplate *spriteTemplates = animation->spriteData;
            s32 xOrigin = animation->animationInfo.xOrigin - main->shakeAmountX;
            s32 yOrigin = animation->animationInfo.yOrigin - main->shakeAmountY;
            u32 tileNum = animation->tileNum & 0xFFF;
            s32 spriteCount = *(u16 *)ptr;
            struct SpriteSizeData *spriteSizeData = eUnknown_0200AFC0;
            spriteSizeData += var0;
            for (i = 0; i < spriteCount; i++)
            {
                s32 y;
                var0--;
                oam--;
                spriteSizeData--;
                spriteTemplates++;
                *spriteSizeData = gSpriteSizeTable[spriteTemplates->data >> 0xC];
                oam->attr0 = (spriteTemplates->data & 0x3000) << 2; // Sprite Shape
                if (animation->flags & ANIM_ENABLE_ROTATION) {
                    xOrigin -= spriteSizeData->width / 2;
                    yOrigin -= spriteSizeData->height / 2;
                    oam->attr0 |= ST_OAM_AFFINE_DOUBLE << 8;
                }
                y = yOrigin + spriteTemplates->y;
                if (y < -96)
                    y = -88;
                if (y > 224)
                    y = 224;
                oam->attr0 |= y & 0xFF;
                if (animation->flags & ANIM_BLEND_ACTIVE)
                    oam->attr0 |= 0x400;
                oam->attr1 = spriteTemplates->data & 0xC000;
                if (animation->flags & ANIM_ENABLE_XFLIP)
                {
                    u16 x = (xOrigin - (spriteTemplates->x + spriteSizeData->width)) & 0x1FF;
                    oam->attr1 |= 0x1000 | x;
                }
                else
                {
                    u16 x = (xOrigin + spriteTemplates->x) & 0x1FF;
                    oam->attr1 |= (*(u8 *)(&animation->spritePriorityMatrixIndex)) << 9 | x;
                }
                oam->attr2 = tileNum | *((u8 *)(&animation->spritePriorityMatrixIndex) + 1) << 10;
                if (animation->frameData->flags & 1)
                    oam->attr2 |= (animation->animationInfo.paletteSlot + ((spriteTemplates->data >> 9) & 7)) << 12;
                else if (animation->frameData->flags & 8)
                    oam->attr2 |= (animation->animationInfo.paletteSlot + ((spriteTemplates->data >> 10) & 3)) << 12;
                else
                    oam->attr2 |= (animation->animationInfo.paletteSlot + ((spriteTemplates->data >> 11) & 1)) << 12;
                tileNum += spriteSizeData->tileSize / TILE_SIZE_4BPP;
                if(main->unk84 == 1 || main->unk84 == 2 || main->unk84 == 0xFFFF)
                    oam->attr0 |= 0x1000; // mosaic
                if(animation->animationInfo.animId == 0x79 
                || animation->animationInfo.animId == 0x7B) {
                    if(gMain.currentBG == 0x78) { // inconsistent use of.. you know what i don't wanna type these out it's very annoying
                        oam->attr0 |= ST_OAM_OBJ_BLEND << 10;
                    }
                }
            }
        }
        animation->animtionOamStartIdx = animation->animtionOamEndIdx - animation->animationInfo.spriteCount;
        var0 -= animation->animtionOamStartIdx;
        for (var0 -= 1; var0 != -1; var0--)
        {
            oam--;
            oam->attr0 = SPRITE_ATTR0_CLEAR;
        }
        var0 = animation->animtionOamStartIdx;
        if(animation->animationInfo.animId == 0x3A 
        || animation->animationInfo.animId == 0x3B
        || animation->animationInfo.animId == 0x3C) {
            struct OamAttrs * oam1 = &gOamObjects[var0];
            struct OamAttrs * oam2 = &gOamObjects[animation->animationInfo.animId-0x18];
            u32 palslot;
            u8 * src;
            oam2->attr0 = oam1->attr0;
            oam2->attr1 = oam1->attr1;
            palslot = animation->animationInfo.paletteSlot << 0xC;
            oam2->attr2 = palslot | (oam1->attr2 & 0x3FF);
            oam1->attr0 = SPRITE_ATTR0_CLEAR;
            src = animation->animationInfo.animGfxDataStartPtr+4;
            DmaCopy16(3, src, OBJ_PLTT + (animation->animationInfo.paletteSlot & 0xF) * 0x20, 0x20);
        }
    }
}

void MoveAnimationTilesToRam(bool32 arg0)
{
    struct AnimationListEntry *animation; // r5

    for (animation = gAnimation[0].next; animation != NULL; animation = animation->next)
    {
        void * tileData;
        struct SpriteTemplate * spriteTemplate; // ip
        struct SpriteSizeData * spriteSizeData; // r7
        void * tileDest; // r6
        void * nextTileDest; // r8
        u32 * temp;
        u32 spriteCount; // sl
        u32 palCount; //sp08
        u32 i;

        if(!(animation->flags & ANIM_QUEUED_TILE_UPLOAD))
            continue;
        if(!(animation->flags & ANIM_ACTIVE))
            continue;
        tileDest = arg0 ? eUnknown_0200AFC0 + 0x200 : animation->animationInfo.vramPtr;
        spriteTemplate = animation->spriteData;
        spriteCount = *(u16*)animation->spriteData;
        spriteSizeData = eUnknown_0200AFC0;
        spriteSizeData += animation->animtionOamEndIdx;
        animation->flags &= ~ANIM_QUEUED_TILE_UPLOAD;
        palCount = *(u32*)animation->animationInfo.animGfxDataStartPtr;
        if(palCount & 0x80000000)
        {
            for(i = 0; i < spriteCount; i++)
            {
                void * tileStart;
                //void * tileData;
                u32 * offsets;
                u32 tileNum;
                u32 size;
                spriteTemplate++;
                spriteSizeData--;
                size = spriteSizeData->tileSize;
                nextTileDest = tileDest + size;
                tileNum = (spriteTemplate->data & 0x1FF);
                tileStart = animation->animationInfo.tileDataPtr;
                offsets = (u32*)tileStart;
                tileStart += offsets[tileNum];
                tileData = tileStart;
                while(nextTileDest > tileDest)
                {
                    if(*(u16*)tileData & 0x8000)
                    {
                        u32 repeatCount = *(u16*)tileData & 0x7FFF;
                        DmaFill16(3, *((u16*)tileData+1), tileDest, repeatCount*=2);
                        tileDest += repeatCount;
                        tileData += 4;
                    }
                    else
                    {
                        u32 size = *(u16*)tileData * 2;
                        tileData+=2;
                        DmaCopy16(3, tileData, tileDest, size);
                        tileDest += size;
                        tileData += size;
                    }
                }
            }
        }
        else
        {
            u32 tileNumMask;
            if(animation->frameData->flags & 1)
                tileNumMask = 0x1FF;
            else if(animation->frameData->flags & 8)
                tileNumMask = 0x3FF;
            else
                tileNumMask = 0x7FF;
            for(i = 0; i < spriteCount; i++)
            {
                u16 * sizePtr;
                u32 tileNum;
                spriteTemplate++;
                spriteSizeData--;
                sizePtr = &spriteSizeData->tileSize; // !! SCRUB C probably fakematch
                tileData = animation->animationInfo.tileDataPtr + (spriteTemplate->data & tileNumMask) * TILE_SIZE_4BPP;
                DmaCopy16(3, tileData, tileDest, *sizePtr);
                tileDest += *sizePtr;
            }
        }
        if(animation->flags & ANIM_QUEUED_PAL_UPLOAD)
        {
            u8 * ptr;
            uintptr_t dest;
            u32 palOffset = animation->animationInfo.paletteSlot & 0xF;

            palOffset *= 32;
            dest = OBJ_PLTT + palOffset;
            palCount *= 32;
            tileData = animation->animationInfo.animGfxDataStartPtr+4;
            if(animation->flags & 0x200)
                tileData = animation->unk30;
            
            if(animation->flags & 0x400) {
                u16 buf[0x30];
                DmaCopy16(3, tileData, buf, palCount);
                for(i = 0; i < 0x30; i++) {
                    if(gMain.unk84 == 0xFFFE)
                        buf[i] = sub_800389C(buf[i], 0x20, 1);
                    else
                        buf[i] = sub_800389C(buf[i], 0x20, 0);
                }
                DmaCopy16(3, buf, dest, palCount);
            } else {
                DmaCopy16(3, tileData, dest, palCount);
            }
            animation->flags &= ~ANIM_QUEUED_PAL_UPLOAD;
        }
    }
}