#ifndef GUARD_MAIN_H
#define GUARD_MAIN_H

#define SOUND_FLAG_DISABLE_SE (1 << 0)
#define SOUND_FLAG_DISABLE_BGM (1 << 1)
#define SOUND_FLAG_DISABLE_CUE (1 << 2)

struct Joypad
{
    /* +0x00 */ u16 heldKeys;
    /* +0x02 */ u16 pressedKeys;
    /* +0x04 */ u16 previousHeldKeys;
    /* +0x06 */ u16 previousPressedKeys;
    /* +0x08 */ u16 activeTimedKeys;
    /* +0x0A */ u16 timedKeys;
    /* +0x0C */ u16 timedHoldDelay;
    /* +0x0E */ u16 timedHoldTimer;
};

struct Main
{
    /* +0x000 */ u32 frameCounter;
    /* +0x004 */ u32 doGameProcessCounter;
    /* +0x008 */ u8 process[0x4];
    /* +0x00C */ u8 processCopy[0x4];
    /* +0x010 */ u8 vblankWaitCounter;
    /* +0x011 */ u8 vblankWaitAmount;
    /* +0x012 */ s8 shakeAmountX; // unity: Quake_x
    /* +0x013 */ s8 shakeAmountY; // unity: Quake_y
    /* +0x014 */ u16 shakeTimer; // unity: Quake_timer
    /* +0x016 */ u8 shakeIntensity; // unity: Quake_power
    /* +0x017 */ u8 selectedButton; // unity: Cursol
    /* +0x018 */ bool8 advanceScriptContext; // unity: Mess_move_flag
    /* +0x019 */ bool8 showTextboxCharacters; // unity: message_active_window
    /* +0x01A */ u8 tilemapUpdateBits;
    /* +0x01B */ u8 saveContinueFlags;
    /* +0x01C */ u16 testimonyBeginningSection; // unity: bk_start_mess
    /* +0x01E */ u16 unk1E; // unity: Bk_end_mess
    /* +0x020 */ s16 bgmFadeVolume; // unity: bgm_vol_next?
    /* +0x022 */ u8 soundStatus; // unity: sound_status, comes after currentPlayingBgm in unity?
    /* +0x023 */ u8 currentPlayingBgm; // unity: bgm_now
    /* +0x024 */ u8 allocatedObjPltts; // unity: Obj_plt_use_flag
    /* +0x025 */ u8 animationFlags; // unity: Obj_flag
    /* +0x026 */ s16 bgmFadeAmount; // unity: bgm_fade_time?
    /* +0x028 */ s16 bgmVolume; // unity: bgm_vol
    /* +0x02A */ u16 rngSeed; // unity: Random_seed
    /* +0x02C */ u8 gottenEvidenceType; // unity: get_note_file / only written to 
    /* +0x02D */ u8 gottenEvidenceId; // unity: get_note_id
    /* +0x02E */ u16 currentBG; // unity AA4: Bg256_no? BG related code not in GlobalWork struct, this might be another struct on its own but i'm not sure
    /* +0x030 */ u16 unk30; // unity AA4: Bg256_load_no?
    /* +0x032 */ s16 previousBG; // unity AA4: Bg256_no_old? probably wrong
    /* +0x034 */ s8 currentBgStripe; // maybe Bg256_rno_0?
    /* +0x035 */ u8 unk35;
    /* +0x036 */ bool8 isBGScrolling; // unity AA4: Bg256_scroll_flag
    /* +0x037 */ u8 Bg256_stop_line; // unity AA4: Bg256_stop_line
    /* +0x038 */ s16 Bg256_scroll_x; // unity AA4: Bg256_scroll_x
    /* +0x03A */ s16 Bg256_scroll_y; // unity AA4: Bg256_scroll_y
    /* +0x03C */ s16 Bg256_pos_x; // unity AA4: Bg256_pos_x
    /* +0x03E */ s16 Bg256_pos_y; // unity AA4: Bg256_pos_y
    /* +0x040 */ u16 unk40; // unity AA4: Bg256_add? unused but is background related 100%
    /* +0x042 */ s16 Bg256_dir; // unity AA4: Bg256_dir
    /* +0x044 */ s8 horizontolBGScrollSpeed; // unity AA4: Bg256_scroll_speed_x
    /* +0x045 */ s8 verticalBGScrollSpeed; // unity AA4: Bg256_scroll_speed_y
    /* +0x046 */ s8 Bg256_next_line; // unity AA4: Bg256_next_line
    /* +0x047 */ s8 Bg256_buff_pos; // unity AA4: Bg256_buff_pos
    /* +0x048 */ u8 * bgStripeDestPtr; // unity AA4: Bg256_buff_adr
    /* +0x04C */ u32 bgStripeOffsets[12]; // unity AA4: Bg256_offset
    /* +0x07C */ u16 blendTarget; // unity: Fade_object
    /* +0x07E */ u16 blendMode; // unity: Fade_status
    /* +0x080 */ u16 blendCounter; // unity: Fade_timer
    /* +0x082 */ u8 blendDelay; // unity: fade_time
    /* +0x083 */ u8 blendDeltaY; // unity: fade_speed
    /* +0x084 */ u16 effectType; // unity AA4: SpEf_status?
    /* +0x086 */ u16 effectCounter; // unity AA4: SpEf_timer?
    /* +0x088 */ u8 effectDelay; // unity AA4: SpEf_time?
    /* +0x089 */ u8 effectIntensity; // unity AA4: SpEf_speed?
    /* +0x08A */ u8 itemPlateEvidenceId;
    /* +0x08B */ u8 itemPlateState;
    /* +0x08C */ u8 itemPlateSide;
    /* +0x08D */ u8 itemPlateRotation; // used in Take That animation to spin the evidence around
    /* +0x08E */ s8 itemPlateSize;
    /* +0x08F */ u8 itemPlateCounter; // counter which was most likely used to slow down the speed which the item plate changes size 
    /* +0x090 */ u8 itemPlateAction;
    /* +0x092 */ s16 affineScale; // used for the scale of oam sprites in court record, deliver judgement, episode unlocked
    /* +0x094 */ u16 xPosCounter; // used in episode selection menu
    /* +0x096 */ u8 hpBarState; // unity: gauge_rno_0
    /* +0x097 */ u8 hpBarSubState; // unity: gauge_rno_1
    /* +0x098 */ s16 hpBarValue; // unity: gauge_hp
    /* +0x09A */ s16 hpBarDisplayValue; // unity: gauge_hp_disp
    /* +0x09C */ s16 hpBarDamageAmount; // unity: gauge_dmg_cnt
    /* +0x09E */ s16 hpBarX; // unity: gauge_pos_x
    /* +0x0A0 */ s16 hpBarY; // unity: gauge_pos_y
    /* +0x0A2 */ s16 hpBarSlideOutDelay; // unity: gauge_cnt_0
    /* +0x0A4 */ s16 hpBarQueuedState; // unity: gauge_cnt_1
    /* +0x0A6 */ s16 hpBarDisplayFlag; // unity: gauge_disp_flag
    /* +0x0A8 */ s32 hpBarQ16_16DisplayValue; // unity: gauge_hp_fixed
    /* +0x0AC */ s32 hpBarQ16_16DisplayChangeAmount; // unity: gauge_hp_fixed_diff
    /* +0x0B0 */ s16 hpBarValueAtEndOfSegment; // unity: gauge_hp_scenario_end
    /* +0x0B2 */ u8 currentRoomId;
    /* +0x0B3 */ u8 scenarioIdx;
    /* +0x0B4 */ u8 caseEnabledFlags;
    /* +0x0B5 */ s8 health; // unity: rest
    /* +0x0B6 */ u16 talkingAnimationOffset; // unity: Def_talk_foa
    /* +0x0B8 */ u16 idleAnimationOffset; // unity: Def_wait_foa
    /* +0x0BC */ u32 scriptFlags[8]; // unity: sce_flag matches debug menu
    /* +0x0DC */ u32 gameStateFlags; // unity: status_flag matches debug menu
    /* +0x0E0 */ u32 talkEndFlags[8]; // unity: talk_end_flag // TODO: find right size
    /* +0x100 */ u32 sectionReadFlags[8]; // script related, apollo's FW_Mess_flag??
    /* +0x120 */ u8 roomData[26][5]; // unity: Map_data //TODO: first size might be wrong
    /* +0x1A4 */ struct PsycheLockData psycheLockData[4];
    /* +0x244 */ s8 currentPsycheLockDataIndex;
    /* +0x246 */ u16 psycheLockStopPresentButtonsY;
    /* +0x248 */ u8 psycheLockStopPresentButtonsState;
    /* +0x249 */ u8 psycheLockStopPresentButtonsSubstate;
    /* +0x24A */ u8 psycheLockStopPresentButtonsActive; // unity: psy_menu_active_flag
    /* +0x24B */ u8 psycheLockShownByScriptFlag;
    /* +0x24C */ u8 preventUnlockFlag; // unity: psy_unlock_not_unlock_message
    /* +0x24D */ u8 case4HeroLineupVerticalScrollState;
    /* +0x24E */ u8 case4HeroLineupVerticalScrollCounter;
    /* +0x24F */ u8 case4OtherBGAnimationState; // todo: definitively needs a better name
    /* +0x250 */ u8 case4OtherBGAnimationCounter; // todo: definitively needs a better name
    /* +0x254 */ u32 soundFlags;
    /* +0x258 */ u32 unused258; // this gets set in TitleScreenProcess but is never used
    u8 currentRoomSeq[25]; // unity: roomseq
    /* +0x276 */ u16 psycheLockedTalkSections[8]; // unity: lockdat
    /* +0x286 */ u16 numPsycheLockedTalkSections; // unity: lock_max
    struct Spotlight {
        u8 state;
        s8 unk1;
        s8 unk2;
        s8 unk3;
        s32 x;
        s32 y;
        s32 xVelocity;
        s32 yVelocity;
    /* +0x288 */ } spotlights[2];
    /* +0x2B0 */ u8 spotlightStopSweepingFlag; // unity: spotlight_command_status
    u8 filler2B1[0x2B4 - 0x2B1];
    /* +0x2B4 */ u8 signalDetectorState;
    u8 filler2B5[0x2B8 - 0x2B5];
    /* +0x2B8 */ u16 currentlyPlayingSfx;
    u16 currentlyPlayingLoopedSfx;
    u8 currentSpeaker;
    u8 currentNametagRightSide;
    u8 unk2BE;
    u8 unk2BF;
}; /* size 0x2C0 */

struct IORegisters
{
    /* +0x00 */ u16 lcd_bg0cnt;
    /* +0x02 */ u16 lcd_bg1cnt;
    /* +0x04 */ u16 lcd_bg2cnt;
    /* +0x06 */ u16 lcd_bg3cnt;
    /* +0x08 */ u16 lcd_bg0hofs;
    /* +0x0A */ u16 lcd_bg0vofs;
    /* +0x0C */ u16 lcd_bg1hofs;
    /* +0x0E */ u16 lcd_bg1vofs;
    /* +0x10 */ u16 lcd_bg2hofs;
    /* +0x12 */ u16 lcd_bg2vofs;
    /* +0x14 */ u16 lcd_bg3hofs;
    /* +0x16 */ u16 lcd_bg3vofs;
    /* +0x18 */ u16 lcd_bg2pa;
    /* +0x1A */ u16 lcd_bg2pb;
    /* +0x1C */ u16 lcd_bg2pc;
    /* +0x1E */ u16 lcd_bg2pd;
    /* +0x20 */ u32 lcd_bg2x;
    /* +0x24 */ u32 lcd_bg2y;
    /* +0x28 */ u16 lcd_bg3pa;
    /* +0x2A */ u16 lcd_bg3pb;
    /* +0x2C */ u16 lcd_bg3pc;
    /* +0x2E */ u16 lcd_bg3pd;
    /* +0x30 */ u32 lcd_bg3x;
    /* +0x34 */ u32 lcd_bg3y;
    /* +0x38 */ u16 lcd_win0h;
    /* +0x3A */ u16 lcd_win1h;
    /* +0x3C */ u16 lcd_win0v;
    /* +0x3E */ u16 lcd_win1v;
    /* +0x40 */ u16 lcd_winin;
    /* +0x42 */ u16 lcd_winout;
    /* +0x44 */ u32 lcd_mosaic;
    /* +0x48 */ u16 lcd_bldcnt;
    /* +0x4A */ u16 lcd_dispcnt;
    /* +0x4C */ u16 lcd_bldalpha;
    /* +0x4E */ u16 lcd_bldy;
    /* +0x50 */ u16 iwp_ie;
    /* +0x52 */ u16 lcd_dispstat;
};

struct OamAttrs 
{
    /* +0x00 */ u16 attr0;
    /* +0x02 */ u16 attr1;
    /* +0x04 */ u16 attr2;
    /* +0x06 */ u16 attr3;
};

extern struct Joypad gJoypad;
extern struct Main gMain;
extern struct IORegisters gIORegisters;
extern struct OamAttrs gOamObjects[128];

#define GAME_PROCESS 0
#define GAME_PROCESS_STATE 1
#define GAME_PROCESS_VAR1 2
#define GAME_PROCESS_VAR2 3

#define SET_PROCESS_PTR(no_0, no_1, no_2, no_3, main) (*(u32*)main->process = ((no_0) | ((no_1) << 8) | ((no_2) << 16) | ((no_3) << 24)))
#define SET_PROCESS(no_0, no_1, no_2, no_3) (*(u32*)gMain.process = ((no_0) | ((no_1) << 8) | ((no_2) << 16) | ((no_3) << 24)))
#define SET_PROCESS_BACKUP_PTR(no_0, no_1, no_2, no_3, main) (*(u32*)main->processCopy = ((no_0) | ((no_1) << 8) | ((no_2) << 16) | ((no_3) << 24)))
#define BACKUP_PROCESS() (*(u32*)gMain.processCopy = *(u32*)gMain.process)
#define BACKUP_PROCESS_PTR(main) (*(u32*)main->processCopy = *(u32*)gMain.process)
#define RESTORE_PROCESS() (*(u32*)gMain.process = *(u32*)gMain.processCopy)
#define RESTORE_PROCESS_PTR(main) (*(u32*)gMain.process = *(u32*)main->processCopy)

void ClearRamAndInitGame(void);
void HideAllSprites(void);
void SetLCDIORegs(void);
void SetTimedKeysAndDelay(u32 keyBits, u32 delay);
u32 ReadKeysAndTestResetCombo(void);
void StartHardwareBlend(u32 mode, u32 delay, u32 deltaY, u32 target);
void InitCourtScroll(u8 *, u32, u32, u32);
void ResetGameState(void);
void InitSpecialEffectsWithMosaic(u32, u32, u32);
void InitSpecialEffects(u32, u32, u32);
#endif//GUARD_MAIN_H