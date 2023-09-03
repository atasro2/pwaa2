#ifndef GUARD_STRUCTS_H //TODO: get rid of this file and move everything to the place they should be in
#define GUARD_STRUCTS_H

struct PsycheLockData
{
    u32 unk0; // unity: status
    u16 unk4; // unity: room
    u16 unk6; // unity: pl_id 
    u8 unk8; // unity: level
    u8 unk9; // unity: size
    u16 unkA; // unity: start_message
    u16 unkC; // unity: cancel_message
    u16 unkE; // unity: correct_message
    u16 unk10; // unity: wrong_message
    u16 unk12; // unity: die_message
    u16 unk14; // unity: cancel_bgm
    u16 unk16; // unity: unlock_bgm
    u32 unk18; // unity: item_size
    u8 unk1C[4]; // unity: item_no
    u16 unk20[4]; //  unity: item_correct_message
};

struct PscyheLock_10_8 {
    u8 fill0[0x4];
    u16 unk4;   
    u16 unk6;
};

struct PscyheLock_10_C {
    u16 unk0;
    u8 fill02[0x6];
};

struct PscyheLock_Block {
    s8 tileXstart;
    s8 tileYstart;
    u8 mapXstart;
    u8 mapYstart;
    u8 fill04[0x2];
    u16 unk6;
    union {
        struct {
            u8 fill08[0x8];
        } square;
        struct {
            u16 width;
            u16 height;
            u8 fillC[0x8];
        } rect;
    } blockData;
};

struct PscyheLock_10 {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    struct PscyheLock_10_8 * unk8;
    struct PscyheLock_10_C * unkC[48];
    void * unkCC[48];
};

struct PscyheLock {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s16 unk8; // unused?
    s16 unkA;
    s16 unkC;
    s16 unkE; // padding?
    struct PscyheLock_10 unk10[2];
    struct AnimationListEntry * lockAnims[5];
};

struct FlowerPetal { // unity class is different names are interpreted
    u8 id;
    s32 x; // unity: pos_x
    s32 y; // unity: pos_y
    s32 xVelocity; // unity: speed_x
    s32 yVelocity; // unity: speed_y
    s32 randomSeed; // unity: yuragi_cnt
    s32 randomIncrement; // unity: yuragi_add
    struct AnimationListEntry * anim;
    u16 fill20;
    s16 updateDelay; // unity: cnt
};

#endif//GUARD_STRUCTS_H