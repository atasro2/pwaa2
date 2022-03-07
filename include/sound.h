#ifndef GUARD_SOUND_H
#define GUARD_SOUND_H

void ResetSoundControl();
void PlayBGM(u32);
void PauseBGM(void);
void StopBGM(void);
void UnpauseBGM(void);
void FadeOutBGM(u32 fadeTime);
void UpdateBGMFade(void);
void PlaySE(u32 songnum);
void sub_8013878(u32 songNum);
void sub_80138B0(u32 songNum, u32 speed);
void FadeInBGM(u32 fadeTime, u32 songNum);
void SetBGMVolume(u32 volume, s32 fadeTime);

#endif//GUARD_SOUND_H