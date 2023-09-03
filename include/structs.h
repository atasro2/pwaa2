#ifndef GUARD_STRUCTS_H //TODO: get rid of this file and move everything to the place they should be in
#define GUARD_STRUCTS_H

struct PsycheLockData
{
    u32 enabled; // unity: status
    u16 roomId; // unity: room
    u16 personId; // unity: pl_id 
    u8 unk8; // unity: level
    u8 unk9; // unity: size
    u16 startScriptSection; // unity: start_message
    u16 cancelScriptSection; // unity: cancel_message
    u16 validEvidencePresentedSection; // unity: correct_message
    u16 invalidEvidencePresentedSection; // unity: wrong_message
    u16 noHPLeftScriptSection; // unity: die_message
    u16 unk14; // unity: cancel_bgm
    u16 unk16; // unity: unlock_bgm
    u32 numValidEvidence; // unity: item_size
    u8 validEvidenceIds[4]; // unity: item_no
    u16 validEvidenceScriptSections[4]; //  unity: item_correct_message
};

struct PsycheLockChainsTilemapHeader {
    u8 fill0[0x4];
    u16 numBlocks;   
    u16 numFrames;
};

struct PsycheLockChainsFrameDescription {
    u16 blockId;
    u8 fill02[0x6];
};

struct PsycheLock_Block {
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

struct PsycheLockChains {
    s16 targetBGMapBuffer;
    s16 setButNeverUsed; // set in InitPsycheLockChain, never used after
    s16 currentChainFrame;
    s16 loadCounter; // only ever used in LoadNextPsycheLockChainFrame
    struct PsycheLockChainsTilemapHeader * mapHeader;
    struct PsycheLockChainsFrameDescription * frames[48];
    void * chainBlocks[48]; // Pointer to u32 followed by struct PsycheLock_Block
};

struct PsycheLock {
    s16 numLocksTotal;
    s16 numLocksRemaining;
    s16 state;
    s16 subState;
    s16 unk8; // unused?
    s16 animationCounter;
    s16 animationIntroCounter;
    s16 unkE; // padding?
    struct PsycheLockChains chains[2];
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