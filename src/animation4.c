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

extern void (*gSpecialAnimationEffectFunctions[8])(struct AnimationListEntry *);


extern const s8 gCourtScroll01AnimOffsets[31];

extern const s8 gCourtScroll02AnimOffsets[31];

extern const s8 gCourtScroll03AnimOffsets[31];

struct AnimationListEntry * CreateAnimationFromAnimationInfo(struct AnimationInfo *animationFieldC, u32 arg1, u32 flags);
void UpdatePersonAnimationForCourtScroll(struct AnimationListEntry * animation);
void PutAnimationInAnimList(struct AnimationListEntry *animation);
struct AnimationListEntry *AllocateAnimationWithId(u32 animId);
void DoAnimationAction(u32 action);
void UpdateAnimationBlend(struct AnimationListEntry *animation);
u32 AdvanceAnimationFrame(struct AnimationListEntry * animation);
void UpdateAllAnimationSprites();
extern void (*gCourtScrollPersonAnimationUpdateFuncs[6])(struct AnimationListEntry *, struct CourtScroll *);

void ScrollMode2AnimationUpdate(struct AnimationListEntry * animation, struct CourtScroll * courtScroll)
{
    s32 i;
    s32 counter;
    u32 index;
    animation->animationInfo.xOrigin += gCourtScroll01AnimOffsets[courtScroll->frameCounter];
    if(courtScroll->frameCounter == 0xF) {
        PlayPersonAnimationAtCustomOrigin(courtScroll->scrollingPersonAnimId, courtScroll->animOffset, -110, 80, 0);
        sub_80146F0(courtScroll->scrollingPersonAnimId, courtScroll->animOffset);
    }
    /* begin wtf */
    index = 0;
    i = 0;
    counter = courtScroll->frameCounter;
    while(i < counter) {
        index += gCourtScroll01AnimOffsets[i++];
    }
    /* end wtf */
    if(courtScroll->frameCounter == 0xF) {
        sub_800E8C4();
    }
    if(courtScroll->frameCounter > 0xE) {
        sub_800E900(index-480, 0x80, 1);
    }
    else {
        sub_800E9D4(index+32, 0x80, 1);
    }
}

void ScrollMode3AnimationUpdate(struct AnimationListEntry * animation, struct CourtScroll * courtScroll)
{
    s32 counter, counter2;
    s32 index;
    const s8 *ptr, *ptr2;
    animation->animationInfo.xOrigin -= gCourtScroll01AnimOffsets[30-courtScroll->frameCounter];
    if(courtScroll->frameCounter == 0xF) {
        PlayPersonAnimationAtCustomOrigin(courtScroll->scrollingPersonAnimId, courtScroll->animOffset, 350, 80, 0);
        sub_80146F0(courtScroll->scrollingPersonAnimId, courtScroll->animOffset);
    }
    /* begin wtf */
    index = 0;
    counter = courtScroll->frameCounter;
    if(index < counter) {
        ptr = gCourtScroll01AnimOffsets;
        ptr2 = ptr+30; // i dont even
        counter2 = counter;
        do {
            index += *ptr2--;
            counter2--;
        } while(counter2);
    }
    /* end wtf */
    if(courtScroll->frameCounter == 0xF) {
        sub_800E8C4();
    }
    if(courtScroll->frameCounter > 0xE) {
        sub_800E900(index, 0x80, 1);
    }
    else {
        sub_800E9D4(index+544, 0x80, 1);
    }
}

void ScrollMode4AnimationUpdate(struct AnimationListEntry * animation, struct CourtScroll * courtScroll)
{
    s32 i;
    s32 counter;
    u32 index;
    animation->animationInfo.xOrigin += gCourtScroll02AnimOffsets[courtScroll->frameCounter];
    /* begin wtf */
    index = 0;
    i = 0;
    counter = courtScroll->frameCounter;
    while(i < counter) {
        index += gCourtScroll02AnimOffsets[i++];
    }
    /* end wtf */
    if(courtScroll->frameCounter == 0xE) {
        PlayPersonAnimationAtCustomOrigin(courtScroll->scrollingPersonAnimId, courtScroll->animOffset, -84, 80, 0);
        sub_80146F0(courtScroll->scrollingPersonAnimId, courtScroll->animOffset);
    }
    if(courtScroll->frameCounter == 0xE) {
        sub_800E7B0();
    }
    if(courtScroll->frameCounter > 0xD) {
        sub_800E7EC(index-285, 0x80, 1);
    }
    else {
        sub_800E9D4(index+32, 0x80, 1);
    }
}

void ScrollMode5AnimationUpdate(struct AnimationListEntry * animation, struct CourtScroll * courtScroll)
{
    s32 counter;
    s32 index;
    const s8 *ptr, *ptr2;
    animation->animationInfo.xOrigin -= gCourtScroll03AnimOffsets[courtScroll->frameCounter];
    /* begin wtf */
    index = 0;
    counter = 32-courtScroll->frameCounter;
    if(index < counter) {
        ptr = gCourtScroll02AnimOffsets;
        ptr2 = ptr+32; // does this really go OOB? i also dont even
        do {
            index += *ptr2--;
            counter--;
        } while(counter);
    }
    /* end wtf */
    if(courtScroll->frameCounter == 0xE) {
        PlayPersonAnimationAtCustomOrigin(courtScroll->scrollingPersonAnimId, courtScroll->animOffset, 220, 80, 0);
        sub_80146F0(courtScroll->scrollingPersonAnimId, courtScroll->animOffset);
    }
    if(courtScroll->frameCounter == 0xE) {
        sub_800E8C4();
    }
    if(courtScroll->frameCounter > 0xD) {
        sub_800E7EC(24-index, 0x80, 1);
    }
    else {
        sub_800E9D4(362-index, 0x80, 1);
    }
}

void ScrollMode0AnimationUpdate(struct AnimationListEntry * animation, struct CourtScroll * courtScroll)
{
    s32 i;
    s32 counter;
    u32 index;
    animation->animationInfo.xOrigin -= gCourtScroll02AnimOffsets[courtScroll->frameCounter];
    if(courtScroll->frameCounter == 0xE) {
        PlayPersonAnimationAtCustomOrigin(courtScroll->scrollingPersonAnimId, courtScroll->animOffset, 324, 80, 0);
        sub_80146F0(courtScroll->scrollingPersonAnimId, courtScroll->animOffset);
    }
    /* begin wtf */
    index = 0;
    i = 0;
    counter = courtScroll->frameCounter;
    while(i < counter) {
        index += gCourtScroll02AnimOffsets[i++];
    }
    /* end wtf */
    if(courtScroll->frameCounter == 0xE) {
        sub_800E7B0();
    }
    if(courtScroll->frameCounter > 0xD) {
        sub_800E7EC(-179-index, 0x80, 1);
    }
    else {
        sub_800E900(-index, 0x80, 1);
    }
}

void ScrollMode1AnimationUpdate(struct AnimationListEntry * animation, struct CourtScroll * courtScroll)
{
    s32 counter;
    s32 index;
    const s8 *ptr, *ptr2;
    animation->animationInfo.xOrigin += gCourtScroll03AnimOffsets[courtScroll->frameCounter];
    if(courtScroll->frameCounter == 0xE) {
        PlayPersonAnimationAtCustomOrigin(courtScroll->scrollingPersonAnimId, courtScroll->animOffset, 20, 80, 0);
        sub_80146F0(courtScroll->scrollingPersonAnimId, courtScroll->animOffset);
    }
    /* begin wtf */
    index = 0;
    counter = 32-courtScroll->frameCounter;
    if(index < counter) {
        ptr = gCourtScroll02AnimOffsets;
        ptr2 = ptr+32; // does this really go OOB? i also dont even
        do {
            index += *ptr2--;
            counter--;
        } while(counter);
    }
    /* end wtf */
    if(courtScroll->frameCounter == 0xE) {
        sub_800E8C4();
    }
    if(courtScroll->frameCounter > 0xD) {
        sub_800E7EC(index+24, 0x80, 1);
    }
    else {
        sub_800E900(index-330, 0x80, 1);
    }
}

void UpdatePersonAnimationForCourtScroll(struct AnimationListEntry * animation)
{
    struct CourtScroll * courtScroll = &gCourtScroll;
    gCourtScrollPersonAnimationUpdateFuncs[courtScroll->scrollMode](&gAnimation[1], courtScroll);
}

void SetCourtScrollPersonAnim(u32 arg0, u32 arg1, u32 arg2, u32 arg3)
{
    gCourtScroll.scrollMode = arg0 * 2;
    if(arg1 & 1)
        gCourtScroll.scrollMode++;
    gCourtScroll.scrollingPersonAnimId = arg2;
    gCourtScroll.animOffset = arg3;
}

void SpeechBubbleAnimationEffect(struct AnimationListEntry * animation)
{
    s32 rand = (Random() & 3) + 1; // 1 to 4
    s32 rand2 = (Random() & 7) - 4; // -4 to 3
    if(animation->animVar1 == 0)
        animation->specialEffectVar = animation->animationInfo.xOrigin;
    animation->animVar1++;
    if(animation->animVar1 < 0x1F)
    {
        if((animation->animVar1 & 1) != 0)
            animation->animationInfo.xOrigin = animation->specialEffectVar + rand;
        else
            animation->animationInfo.xOrigin = animation->specialEffectVar - rand;
        animation->animationInfo.yOrigin += rand2;
        if(animation->animationInfo.yOrigin > 90)
            animation->animationInfo.yOrigin = 90;
        else if(animation->animationInfo.yOrigin < 70)
            animation->animationInfo.yOrigin = 70;
    }
    else
        animation->animVar1 = 40;
}

// leftover from GS1
void Case3OpeningAnimationEffect(struct AnimationListEntry * animation)
{
}
