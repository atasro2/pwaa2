#ifndef GUARD_DECLARATIONS_H //TODO: get rid of this file when it's possible to move everything to its own header
#define GUARD_DECLARATIONS_H

extern struct PscyheLock gPsycheLock;
extern struct FlowerPetal gFlowerPetals[8];

extern u8 * gUnknown_081124D0[];

extern u8 gGfxPsycheLockChainsTiles[];

// ??
extern void sub_8003988(u16,u16,u16);
extern void sub_8003A7C(u16,u16);
extern void sub_8003B1C(u16,u16,u16);
extern void sub_8003B8C(u16,u16);

// script_main
extern void clearSectionReadFlags(struct Main * main);

// investigation stuff 
extern void loadWitnessBenchGraphics(void);
extern void sub_800E7EC(s32, s32, u8);
extern void loadCounselBenchGraphics(void);
extern void sub_800E900(s32, s32, u8);
extern void sub_800E9D4(s32, s32, u8);
extern void sub_8010FA4(void);
extern void sub_8011088(u16, u16);
extern void sub_8011198(void);

// new file
int findPlayingHPBarSmokeAnimations(void);
void clearHPBarOAM(void);
void sub_80178E0(void);
void sub_8017910(void);
void sub_8017928(u32);
void processHPBar(void);
bool32 sub_8017C78(void);
void setSpotlightStopSweepingFlag(void);
void spawnAllFlowerPetals(void);
void destroyAllFlowerPetals(void);
extern void updateNickelSamuraiZoominAnimation(void);
extern void initNickelSamuraiZoominAnimation(void);
extern void finishNickelSamuraiZoominAnimation(void);
extern void sub_80183D8(void);
extern void sub_8018690(void);
extern void sub_80186EC(void);
extern void sub_8018720(void);

#endif//GUARD_DECLARATIONS_H