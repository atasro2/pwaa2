#ifndef GUARD_STRUCTS_H //TODO: get rid of this file and move everything to the place they should be in
#define GUARD_STRUCTS_H

struct PsycheLockData
{
    u8 filler00[0x28];    
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

#endif//GUARD_STRUCTS_H