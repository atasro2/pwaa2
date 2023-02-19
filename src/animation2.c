#include "global.h"
#include "animation.h"
#include "ewram.h"
#include "sound.h"
#include "utils.h"
#include "script.h"
#include "background.h"
#include "graphics.h"
#include "constants/animation.h"

extern const struct PersonAnimationData gPersonAnimData[];
extern const struct SpriteSizeData gSpriteSizeTable[];

void ChangeAnimationActivity(struct AnimationListEntry *animation, bool32 activate)
{
    u32 i;
    if (animation != 0 && (animation->flags & ANIM_ALLOCATED))
    {
        if (activate)
        {
            animation->flags &= ~ANIM_INACTIVE;
            animation->flags |= ANIM_ACTIVE;
        }
        else
        {
            animation->flags &= ~ANIM_ACTIVE;
            animation->flags |= ANIM_INACTIVE;
            for (i = animation->animtionOamStartIdx; i < animation->animtionOamEndIdx; i++)
                gOamObjects[i].attr0 = SPRITE_ATTR0_CLEAR;
        }
    }
}


void SetAnimationXFlip(struct AnimationListEntry *animation, bool32 flipX)
{
    if (animation != NULL)
    {
        if (flipX)
            animation->flags |= 1;
        else
            animation->flags &= ~1;
    }
}

void SetAnimationPriority(struct AnimationListEntry *animation, u32 priority)
{
    if (animation != NULL)
    {
        if (priority > 3)
            priority = 3;
        animation->spritePriorityMatrixIndex &= 0xff;
        animation->spritePriorityMatrixIndex |= priority << 8;
    }
}


void SetAnimationFrameOffset(struct AnimationListEntry *animation, u32 animOffset)
{
    void * animGfxData;
    void * animFrameData;
    if (animation != NULL)
    {
        if (animation->animationInfo.animId == 0xFF)
        {
            u8 *framePtr;
            framePtr = gPersonAnimData[animation->animationInfo.personId].frameData + animOffset;
            if (animation->animationInfo.animFrameDataStartPtr == framePtr)
                return;
            animation->animationInfo.animFrameDataStartPtr = framePtr;
            animation->animationInfo.animGfxDataStartPtr = gPersonAnimData[animation->animationInfo.personId].gfxData;
        }
        else
        {
            if (animation->animationInfo.animId > 0x8)
            {
                if (animation->animationInfo.animId <= 0x21)
                {
                    animation->animationInfo.animFrameDataStartPtr = gGfxSeqAnimation01 + animOffset; // ! These globals are defines *sob*
                    animation->animationInfo.animGfxDataStartPtr = gGfxPixAnimationTileset01;
                }
                else
                {
                    if (animation->animationInfo.animId > 0x45)
                    {
                        return;
                    }
                    animation->animationInfo.animFrameDataStartPtr = gGfxSeqAnimation35 + animOffset;
                    animation->animationInfo.animGfxDataStartPtr = gGfxPixAnimationTileset02;
                }
            }
            else
            {
                animation->animationInfo.animFrameDataStartPtr = gGfxSeqAnimation35 + animOffset;
                animation->animationInfo.animGfxDataStartPtr = gGfxPixAnimationTileset02;
            }
        }
        animation->flags |= (ANIM_PLAYING | ANIM_QUEUED_TILE_UPLOAD);
        animation->frameDurationCounter = 0xFFFF;
        // comments mostly based on h3rmit docs
        // animation->animFrameDataStartPtr animation block beginning
        animFrameData = animation->animationInfo.animFrameDataStartPtr;
        animGfxData = animation->animationInfo.animGfxDataStartPtr + 1 [(u32 *)animFrameData]; // offsets the graphics pointer
        animation->animationInfo.animGfxDataStartPtr = animGfxData;
        animation->animationInfo.tileDataPtr = animGfxData + 4 + (*(u32 *)animGfxData) * 0x20; // skip first u32(number of palettes) and the palettes, pointer to tiles
        animation->frameData = (struct AnimationFrame *)(animFrameData + 8); // skips animation block header, pointer to frame data
        animation->spriteData = animFrameData + animation->frameData->spriteDataOffset; // Frame tilemap pointer
    }
}

#ifdef eUnknown_0200AFC0
#undef eUnknown_0200AFC0
#endif

#define eUnknown_0200AFC0 ((struct Rect*)(EWRAM_START+0xAFC0))


/***
  * 
  * Checks to see if a rectangle has collided with any animation, if yes return animation id
  * 
***/
u32 CheckRectCollisionWithAnim(struct Rect *p)
{
    u32 i;
    u32 spriteSize = 0;
    struct AnimationListEntry * animation;

    for(animation = gAnimation[0].next; animation != NULL; animation = animation->next)
    {
        struct Rect * rect = &eUnknown_0200AFC0[0];
        struct Rect * collisionRect = &eUnknown_0200AFC0[1];
        struct Rect * spriteRect = &eUnknown_0200AFC0[2];
        uintptr_t vram;
        struct SpriteTemplate * spriteTemplate;
        u32 spriteCount;

        *rect = *p;
        rect->w += p->x;
        rect->h += p->y;
        
        vram = (uintptr_t)animation->animationInfo.vramPtr;
        spriteTemplate = animation->spriteData;
        spriteCount = *(u16*)animation->spriteData;
        for(i = 0; i < spriteCount; i++)
        {
            struct SpriteSizeData * spriteSizePtr = (struct SpriteSizeData *)&spriteSize; // ! possible fakematch
            u32 mask;
            spriteTemplate++;
            *collisionRect = *rect;
            mask = 0xFFFF;
            vram += spriteSize & mask;    
            *spriteSizePtr = gSpriteSizeTable[spriteTemplate->data >> 0xC];
            spriteRect->x = spriteRect->w = animation->animationInfo.xOrigin + spriteTemplate->x;
            spriteRect->w += spriteSizePtr->width;
            spriteRect->y = spriteRect->h = spriteTemplate->y + animation->animationInfo.yOrigin;
            spriteRect->h += spriteSizePtr->height;

            // Check if collision rect is in the region of the sprite rext 
            if(spriteRect->x < collisionRect->w 
            && collisionRect->x < spriteRect->w
            && spriteRect->y < collisionRect->h
            && collisionRect->y < spriteRect->h)
            {
                u32 temp;
                s32 x, y;
                // now create the intersection rect between the two rects
                collisionRect->x -= spriteRect->x;
                if(collisionRect->x < 0)
                    collisionRect->x = 0;
                collisionRect->y -= spriteRect->y;
                if(collisionRect->y < 0)
                    collisionRect->y = 0;
                if(collisionRect->w > spriteRect->w)
                    collisionRect->w = spriteRect->w;
                collisionRect->w -= spriteRect->x;
                if(collisionRect->h > spriteRect->h)
                    collisionRect->h = spriteRect->h;
                collisionRect->h -= spriteRect->y;

                // Check if any visible pixels are in the intersection
                temp = spriteSizePtr->width / 8;
                y = collisionRect->y;
                while(y < collisionRect->h)
                {
                    s32 yy1;
                    s32 yy2;
                    uintptr_t temp3;
                    yy1 = (y >> 3) * temp * 32;
                    yy2 = (y % 8) * 4;
                    temp3 = yy1 + yy2 + vram;
                    x = collisionRect->x;
                    while(x < collisionRect->w)
                    {
                        uintptr_t pixel;
                        s32 xx1 = (x >> 3) * 32;
                        if(x % 8 > 1){
                            uintptr_t ptr = temp3 + 1;
                            pixel = (x >> 3) * 32 + ptr;
                        }
                        else {
                            uintptr_t ptr = temp3;
                            pixel = (x >> 3) * 32 + ptr;
                        }
                        if(*(u8 *)pixel != 0)
                            return animation->animationInfo.animId;
                        x+=2;
                    }
                    y+=2;
                }
            }
        }
    }
    return 0;
}


#undef eUnknown_0200AFC0
#define eUnknown_0200AFC0 ((void*)(EWRAM_START+0xAFC0))

bool32 CheckIfLinesIntersect(const struct Point *pt0, const struct Point *pt1, const struct Point *pt2, const struct Point *pt3)
{
    // check if the lines through pt0-pt1 and pt2-pt3 intersect on the screen
    s32 xd01, yd01, xd23, yd23, cp0123, xd13, yd13, cp2313, cp0113;
    xd01 = pt0->x - pt1->x;
    yd01 = pt0->y - pt1->y;
    xd23 = pt2->x - pt3->x;
    yd23 = pt2->y - pt3->y;
    cp0123 = xd01 * yd23 - yd01 * xd23;
    // are 0->1 and 2->3 collinear or 0? if yes bail
    if (cp0123 == 0)
    {
        return FALSE;
    }
    xd13 = pt1->x - pt3->x;
    yd13 = pt1->y - pt3->y;
    cp2313 = yd13 * xd23 - xd13 * yd23;
    cp0113 = yd13 * xd01 - xd13 * yd01;
    // does an intersection between the two lines exist on screen? return true if yes...
    if (((cp0123 > 0 && cp2313 >= 0 && cp2313 <= cp0123) || (cp0123 < 0 && cp2313 >= cp0123 && cp2313 <= 0)) &&
	((cp0123 > 0 && cp0113 >= 0 && cp0113 <= cp0123) || (cp0123 < 0 && cp0113 >= cp0123 && cp0113 <= 0)))
    {
        return TRUE;
    }
    // ...else false
    return FALSE;
}


bool32 CheckRectCollisionWithArea(const struct Rect * rect, const struct Point4 * area)
{
    u32 i, j, k;
    struct Point4 p;
    const struct Point *p1 = &area->points[0];
    const struct Point *p2 = &area->points[1];
    const struct Point *p3 = &p.points[0];
    const struct Point *p4 = &p.points[1];
    if (CheckPointInArea((struct Point *)rect, area))
        return TRUE;
    
    p.points[0].x = p.points[3].x = rect->x;
    p.points[0].y = p.points[1].y = rect->y;
    p.points[1].x = p.points[2].x = rect->x + rect->w;
    p.points[2].y = p.points[3].y = rect->y + rect->h;
    // see if any part of the rect is in area
    for (i = 0; i < 3; i++)
    {
        p1 = &area->points[0];
        p2 = &area->points[1];
        for (j = 0; j < 3; j++)
        {
            if (CheckIfLinesIntersect(p1, p2, p3, p4))
                return TRUE;
            p1++;
            p2++;
        }
        p2 = &area->points[0];
        if (CheckIfLinesIntersect(p1, p2, p3, p4))
            return TRUE;
        p3++;
        p4++;
    }
    p4 = &p.points[0];
    p1 = &area->points[0];
    p2 = &area->points[1];
    for (k = 0; k < 3; k++)
    {
        if (CheckIfLinesIntersect(p1, p2, p3, p4))
            return TRUE;
        p1++;
        p2++;
    }
    p2 = &area->points[0];
    if (CheckIfLinesIntersect(p1, p2, p3, p4))
        return TRUE;

    return FALSE;
}


void PutAnimationInAnimList(struct AnimationListEntry *animation)
{
    struct AnimationListEntry *list = gAnimation;
    u32 i;
    for (i = 0; i < 0x20; i++)
    {
        if (list->next == NULL)
        {
            animation->prev = list;
            list->next = animation;
            break;
        }
        list = list->next;
        if (list->animationInfo.priority < animation->animationInfo.priority)
        {
            animation->prev = list->prev;
            animation->next = list;
            list->prev->next = animation;
            list->prev = animation;
            break;
        }
    }
}

void DoAnimationAction(u32 action)
{
    switch (action)
    {
    case 1:
        if (!(gMain.gameStateFlags & 1))
        {
            gMain.shakeTimer = 30;
            gMain.gameStateFlags |= 1;
            gMain.shakeIntensity = 1;
        }
        break;
    case 2:
        if (gMain.blendMode == 0)
            StartHardwareBlend(3, 1, 8, 0x1F);
        break;
    default:
        break;
    }
}

struct AnimationListEntry *PlayPersonAnimation(u32 arg0, u32 arg1, u32 talkingAnimOff, u32 arg3)
{
    u32 xOrigin = 120;
    struct Main *main = &gMain;
    if (arg0 & 0x8000 && main->Bg256_dir & 0x10)
        xOrigin -= DISPLAY_WIDTH;
    if (arg0 & 0x4000 && main->Bg256_dir & 0x20)
        xOrigin += DISPLAY_WIDTH;
    if (arg0 & 0x2000)
        arg1 |= 1;
    return PlayPersonAnimationAtCustomOrigin(arg0, talkingAnimOff, xOrigin, DISPLAY_HEIGHT/2, arg1);
}

void sub_80146F0(u32 state, u32 animOffset)
{
    gMain.idleAnimationOffset = animOffset;
    gMain.talkingAnimationOffset = animOffset;
}
