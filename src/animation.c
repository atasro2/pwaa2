#include "global.h"
#include "animation.h"
#include "ewram.h"
#include "sound.h"
#include "utils.h"
#include "script.h"
#include "background.h"
#include "graphics.h"
#include "constants/animation.h"

void (*gSpecialAnimationEffectFunctions[8])(struct AnimationListEntry *) = {
    sub_8015C6C,
    sub_8015C6C,
    sub_8015C6C,
    sub_8015C6C,
    sub_8015C6C,
    sub_8015C6C,
    sub_8015C6C,
    sub_8015C6C,
};

void (*gCourtScrollPersonAnimationUpdateFuncs[6])(struct AnimationListEntry *, struct CourtScroll *) = {
    sub_8015AF0,
    sub_8015B84,
    sub_8015894,
    sub_8015928,
    sub_80159C0,
    sub_8015A54,
};
