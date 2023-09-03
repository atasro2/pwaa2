#ifndef GUARD_PSYCHE_LOCK_H
#define GUARD_PSYCHE_LOCK_H

void InitPsycheLockState(u32 arg0);
void SetPsycheLockAnimationStateShowChains(void);

void SetPsycheLockAnimationStateUnlock(void);
void SetPsycheLockAnimationStateRemoveChains(void);
void SetPsycheLockAnimationStateDisplayUnlockMessage(void);
void SetPsycheLockAnimationStateClearLocksAndChains(void);
void SetPsycheLockAnimationStateReturnToNormalBackground(void);
void SetPsycheLockAnimationStateRedrawRemainingLocks(void);
bool32 IsPsycheLockAnimationInWaitState(void);
void UpdatePsycheLockAnimation(void);
void sub_8016C7C(u32);
void sub_8016D40(void);
s32 GetPsycheLockDataIndexByRoomAndPerson(u16 arg0, u16 arg1);
s32 IsPresentedEvidenceValidForPsycheLock(struct PsycheLockData * data, u16 arg1);
void sub_8016DFC(void);
void sub_8016E10(u32);
void sub_8016E7C(void);
void sub_80170AC(void);
void sub_8017134(void);
bool32 sub_801715C(void);

#endif//GUARD_PSYCHE_LOCK_H