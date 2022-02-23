#ifndef GUARD_STRUCTS_H //TODO: get rid of this file and move everything to the place they should be in
#define GUARD_STRUCTS_H

struct PsycheLock
{
    u8 filler00[0x28];    
};

struct Struct3006050_10_8 {
    u8 fill0[0x4];
    u16 unk4;
    u16 unk6;
};

struct Struct3006050_10_CC {
    u8 fill0[0x4];
    u16 unk4;
    u16 unk6;
};

struct Struct3006050_10 {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    struct Struct3006050_10_8 * unk8;
    void * unkC[48];
    void * unkCC[48];
};

struct Struct3006050 {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s16 unk8; // unused?
    s16 unkA;
    s16 unkC;
    s16 unkE; // padding?
    struct Struct3006050_10 unk10[2];
    struct AnimationListEntry * lockAnims[5];
};

#endif//GUARD_STRUCTS_H