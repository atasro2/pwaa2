#ifndef GUARD_DECLARATIONS_H //TODO: get rid of this file when it's possible to move everything to its own header
#define GUARD_DECLARATIONS_H

extern struct PsycheLock gPsycheLock;
extern struct FlowerPetal gFlowerPetals[8];

extern u8 * gPsycheLockChainTilemaps[];

extern u8 gGfxPsycheLockChainsTiles[];

// ??
extern void LoadAndAdjustBGPaletteByMode(u16,u16,u16);
extern void LoadAndAdjustCurrentAnimation01PaletteByMode(u16,u16);
extern void LoadAndAdjustCounselWitnessBenchPaletteByMode(u16,u16,u16);
extern void LoadAndAdjustAnimation10PaletteByMode(u16,u16);

// script_main
extern void ClearSectionReadFlags(struct Main * main);

// investigation stuff 
extern void LoadWitnessBenchGraphics(void);
extern void SetOAMForCourtBenchSpritesWitness(s32, s32, u8);
extern void LoadCounselBenchGraphics(void);
extern void SetOAMForCourtBenchSpritesDefense(s32, s32, u8);
extern void SetOAMForCourtBenchSpritesProsecution(s32, s32, u8);
extern void ReloadInvestigationGraphics(void);
extern void SetInvestigationStateToReturnAfterPsycheLocks(u16, u16);
extern void ClearInvestigationActionButtonOAM(void);

// new file
int FindPlayingHPBarSmokeAnimations(void);
void ClearHPBarOAM(void);
void ResetHPBar(void);
void ResetHPBarHealthToMax(void);
void SetOrQueueHPBarState(u32);
void ProcessHPBar(void);
bool32 IsHPBarAnimating(void);
void SetSpotlightStopSweepingFlag(void);
void SpawnAllFlowerPetals(void);
void DestroyAllFlowerPetals(void);
extern void UpdateNickelSamuraiZoominAnimation(void);
extern void InitNickelSamuraiZoominAnimation(void);
extern void FinishNickelSamuraiZoominAnimation(void);
extern void ProcessSignalDetector(void);
extern void BeginSignalDetector(void);
extern void ReturnToSignalDetector(void);
extern void EndSignalDetector(void);

#endif//GUARD_DECLARATIONS_H