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
    /* +0x000 */ u32 unk0;
    /* +0x004 */ u32 unk4;
    /* +0x008 */ u8 process[0x4];
    /* +0x00C */ u8 processCopy[0x4];
    /* +0x010 */ u8 vblankWaitCounter;
    /* +0x011 */ u8 vblankWaitAmount;
    /* +0x012 */ s8 shakeAmountX; // unity: Quake_x
    /* +0x013 */ s8 shakeAmountY; // unity: Quake_y
    /* +0x014 */ u16 shakeTimer; // unity: Quake_timer
    /* +0x016 */ u8 shakeIntensity; // unity: Quake_power
    u8 filler17[0x2A - 0x17];
    /* +0x02A */ u16 rngSeed; // unity: Random_seed
    /* +0x02C */ u8 gottenEvidenceType; // unity: get_note_file / only written to 
    /* +0x02D */ u8 gottenEvidenceId; // unity: get_note_id
    /* +0x02E */ u16 currentBG; // unity AA4: Bg256_no? BG related code not in GlobalWork struct, this might be another struct on its own but i'm not sure
    /* +0x030 */ u16 unk30; // unity AA4: Bg256_load_no?
    /* +0x032 */ s16 previousBG; // unity AA4: Bg256_no_old? probably wrong
    /* +0x034 */ s8 currentBgStripe; // maybe Bg256_rno_0?
    /* +0x035 */ u8 unk2D; // unused field maybe Bg256_SP_Flag?
    /* +0x036 */ bool8 isBGScrolling; // unity AA4: Bg256_scroll_flag
    /* +0x037 */ u8 Bg256_stop_line; // unity AA4: Bg256_stop_line
    /* +0x038 */ s16 Bg256_scroll_x; // unity AA4: Bg256_scroll_x
    /* +0x03A */ s16 Bg256_scroll_y; // unity AA4: Bg256_scroll_y
    /* +0x03C */ s16 Bg256_pos_x; // unity AA4: Bg256_pos_x
    /* +0x03E */ s16 Bg256_pos_y; // unity AA4: Bg256_pos_y
    /* +0x040 */ u16 unk38; // unity AA4: Bg256_add? unused but is background related 100%
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
    u8 filler84[0x90 - 0x84];
    u8 unk90;
    u8 filler91[0xB3 - 0x91];
    /* +0x0B3 */ u8 scenarioIdx;
    /* +0x0B4 */ u8 caseEnabledFlags;
    u8 fillerB5[0xDC - 0xB5];
    /* +0x0DC */ u32 gameStateFlags;
    u8 fillerE0[0x2C0 - 0xE0];
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
    /* +0x44 */ u16 lcd_mosaic;
    /* +0x46 */ u8 filler46[2]; 
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
#define GAME_PROCESSUNK2 2
#define GAME_PROCESSUNK3 3

#define SET_PROCESS_PTR(no_0, no_1, no_2, no_3, main) (*(u32*)main->process = ((no_0) | ((no_1) << 8) | ((no_2) << 16) | ((no_3) << 24)))
#define SET_PROCESS(no_0, no_1, no_2, no_3) (*(u32*)gMain.process = ((no_0) | ((no_1) << 8) | ((no_2) << 16) | ((no_3) << 24)))
#define SET_PROCESS_BACKUP_PTR(no_0, no_1, no_2, no_3, main) (*(u32*)main->processCopy = ((no_0) | ((no_1) << 8) | ((no_2) << 16) | ((no_3) << 24)))
#define BACKUP_PROCESS() (*(u32*)gMain.processCopy = *(u32*)gMain.process)
#define BACKUP_PROCESS_PTR(main) (*(u32*)main->processCopy = *(u32*)gMain.process)
#define RESTORE_PROCESS_PTR(main) (*(u32*)gMain.process = *(u32*)main->processCopy)

void ClearRamAndInitGame(void);
void HideAllSprites(void);
void SetLCDIORegs(void);
void SetTimedKeysAndDelay(u32 keyBits, u32 delay);
u32 ReadKeysAndTestResetCombo(void);
void StartHardwareBlend(u32 mode, u32 delay, u32 deltaY, u32 target);
void InitCourtScroll(u8 *, u32, u32, u32);
void ResetGameState(void);

#endif//GUARD_MAIN_H