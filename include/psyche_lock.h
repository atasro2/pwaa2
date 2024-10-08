#ifndef GUARD_PSYCHE_LOCK_H
#define GUARD_PSYCHE_LOCK_H

#define PSYLOCK_ENABLE_PRESENT 0x1
#define PSYLOCK_ENABLE_STOP 0x2

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
void ShowPsycheLockLocksAndChainsWithoutAnimating(u32);
void ClearPsycheLockLocksAndChainsWithoutAnimating(void);
s32 GetPsycheLockDataIndexByRoomAndPerson(u16 arg0, u16 arg1);
s32 IsPresentedEvidenceValidForPsycheLock(struct PsycheLockData * data, u16 arg1);
void ResetPsycheLockStopPresentButtonsState(void);
void SetPsycheLockStopPresentButtonsState(u32);
void AnimatePsycheLockStopBresentButtons(void);
void SetPsycheLockPresentButtonOAMInCourtRecord(void);
void ClearPsycheLockStopPresentButtonsOAM(void);
bool32 IsPsycheLockStopPresentButtonsAnimating(void);

#endif//GUARD_PSYCHE_LOCK_H