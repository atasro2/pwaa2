#ifndef GUARD_SOUND_H
#define GUARD_SOUND_H

#define SOUND_STATUS_BGM_STOPPED (1 << 0)
#define SOUND_STATUS_BGM_PAUSED (1 << 1)
#define SOUND_STATUS_BGM_PLAYING (1 << 2)
#define SOUND_STATUS_BGM_FADING (1 << 3)
#define SOUND_STATUS_BGM_FADING_OUT (1 << 4)

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
void sub_80138FC(u32 songNum, u32 vol);
void FadeInBGM(u32 fadeTime, u32 songNum);
void SetBGMVolume(u32 volume, s32 fadeTime);

#endif//GUARD_SOUND_H