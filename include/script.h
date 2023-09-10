#ifndef GUARD_SCRIPT_H
#define GUARD_SCRIPT_H

#define SCRIPT_FULLSCREEN 0x4
#define SCRIPT_LOOP 0x8
#define SCRIPT_SPOTSELECT_MOVE_TO_START 0x80
#define SCRIPT_SPOTSELECT_INPUT 0x100
#define SCRIPT_SPOTSELECT_PLAY_SPAWN_SOUND 0x200
#define SCRIPT_SPOTSELECT_SELECTION_MADE 0x400

struct ScriptContext
{
    /* +0x00 */ u16 flags; // message status, flags
    /* +0x02 */ u16 waitTimer;
    /* +0x04 */ const u16 * scriptPtr;
    /* +0x08 */ const u16 * scriptSectionPtr;
    /* +0x0C */ u16 currentToken;
    /* +0x0E */ u8 textX;
    /* +0x0F */ u8 textY;
    /* +0x10 */ u8 fullscreenCharCount;
    /* +0x11 */ u8 fullscreenTextY;
    /* +0x12 */ u8 fullscreenTextX;
    /* +0x13 */ u8 textSkip;
    /* +0x14 */ u8 paragraphSkipDelayCounter;
    /* +0x15 */ u8 unk15; // unused
    /* +0x16 */ u8 soundCueSkip;
    /* +0x17 */ u8 currentSoundCue;
    /* +0x18 */ u16 textXOffset;
    /* +0x1A */ u16 textYOffset;
    /* +0x1C */ u16 scriptHeaderSize;
    /* +0x1E */ u16 currentSection;
    /* +0x20 */ u16 nextSection;
    /* +0x22 */ u16 previousSection;
    /* +0x24 */ u8 textColor;
    /* +0x25 */ u8 textSpeed;
    /* +0x26 */ u8 prevTextSpeed;
    /* +0x27 */ u8 textDelayTimer;
    /* +0x28 */ u16 fullscreenTextXOffset;
    /* +0x2A */ u16 fullscreenTextYOffset;
    /* +0x2C */ u16 holdItSection;
    /* +0x2E */ u8 holdItFlag;
    /* +0x2F */ u8 unk2F;
    /* +0x30 */ u16 unk30;
    /* +0x32 */ u8 personAnimPauseCounter; // unity: rt_wait_timer
    /* +0x33 */ bool8 slamDesk; // unity: desk_attack
    /* +0x34 */ u8 textboxNameId; // unity: speaker_id
    /* +0x35 */ u8 fullscreenInputDelayCounter;
    /* +0x36 */ u8 textboxDownArrowIndex; // unity AA4: enter_type
    /* +0x37 */ u8 textboxDownArrowDelayCounter; // unity AA4: enter_type_timer
    /* +0x38 */ u8 textboxState; // unity: mess_win_rno
    /* +0x39 */ u8 fullscreenCursorPos;
    /* +0x3A */ u8 unk3A; // unity AA4: add_y, used but does practically nothing
    /* +0x3B */ u8 textboxYPos; // unity AA4: frame_y
    /* +0x3C */ u8 * mapMarkerVramPtr; // unity AA4: Expl_now_vram_addr?
};

struct TextBoxCharacter
{
    /* +0x00 */ u16 state;
    /* +0x02 */ u16 objAttr2;
    /* +0x04 */ u16 x;
    /* +0x06 */ u16 y;
    /* +0x08 */ u8 color;
};

struct MapMarker
{ 
    /* +0x00 */ u8 id; 
    /* +0x01 */ u8 isBlinking;
    /* +0x02 */ u8 blinkTimer;
    /* +0x03 */ u8 speed;
    /* +0x04 */ u8 direction;
    /* +0x05 */ u8 flags;
    /* +0x06 */ u8 distanceToMove;
    /* +0x07 */ u8 distanceMoved;
    /* +0x08 */ u16 attr0;
    /* +0x0A */ u16 attr1;
    /* +0x0C */ u16 attr2;
    /* +0x0E */ u16 oamIdx;
    /* +0x10 */ u8 *volatile vramPtr;
};

extern struct ScriptContext gScriptContext;
extern struct TextBoxCharacter gTextBoxCharacters[0x3F];
extern struct MapMarker gMapMarker[8];
extern u16 gLoadedPsycheLockedTalkSections[20];

/* begin script data */

extern const u32 std_scripts[];
extern const u8 scenario_0_0_script[];
extern const u8 scenario_0_1_script[];
extern const u8 scenario_1_0_script[];
extern const u8 scenario_1_1_script[];
extern const u8 scenario_1_2_script[];
extern const u8 scenario_1_3_script[];
extern const u8 scenario_1_4_script[];
extern const u8 scenario_1_5_script[];
extern const u8 scenario_2_0_script[];
extern const u8 scenario_2_1_script[];
extern const u8 scenario_2_2_script[];
extern const u8 scenario_2_3_script[];
extern const u8 scenario_2_4_script[];
extern const u8 scenario_2_5_script[];
extern const u8 scenario_3_0_script[];
extern const u8 scenario_3_1_script[];
extern const u8 scenario_3_2_script[];
extern const u8 scenario_3_3_script[];
extern const u8 scenario_3_4_script[];
extern const u8 scenario_3_5_script[];
extern const u8 scenario_3_6_script[];
extern const u8 scenario_3_7_script[];


/* end script data */ 

void ChangeScriptSection(u32);
void LoadCurrentScriptIntoRam(void);
void RunScriptContext(void);
void InitScriptSection(struct ScriptContext *scriptCtx);
void RedrawTextboxCharacters(void);

void MarkSectionAsRead(struct Main *, s32);
bool32 HasSectionBeenRead(struct Main *, s32);
void ClearSectionReadFlags(struct Main *);
void loadSectionReadFlagsFromSaveDataBuffer(struct Main *);

void MakeMapMarkerSprites(void);
u32 GetMapMarkerIndexFromId(u32);

/* begin commands */
bool32 Command00(struct ScriptContext *);
bool32 Command01(struct ScriptContext *);
bool32 Command02(struct ScriptContext *);
bool32 Command03(struct ScriptContext *);
bool32 Command04(struct ScriptContext *);
bool32 Command05(struct ScriptContext *);
bool32 Command06(struct ScriptContext *);
bool32 Command02(struct ScriptContext *);
bool32 Command08(struct ScriptContext *);
bool32 Command09(struct ScriptContext *);
bool32 Command02(struct ScriptContext *);
bool32 Command0B(struct ScriptContext *);
bool32 Command0C(struct ScriptContext *);
bool32 Command0D(struct ScriptContext *);
bool32 Command0E(struct ScriptContext *);
bool32 Command0F(struct ScriptContext *);
bool32 Command10(struct ScriptContext *);
bool32 Command11(struct ScriptContext *);
bool32 Command12(struct ScriptContext *);
bool32 Command13(struct ScriptContext *);
bool32 Command14(struct ScriptContext *);
bool32 Command15(struct ScriptContext *);
bool32 Command16(struct ScriptContext *);
bool32 Command17(struct ScriptContext *);
bool32 Command18(struct ScriptContext *);
bool32 Command19(struct ScriptContext *);
bool32 Command1A(struct ScriptContext *);
bool32 Command1B(struct ScriptContext *);
bool32 Command1C(struct ScriptContext *);
bool32 Command1D(struct ScriptContext *);
bool32 Command1E(struct ScriptContext *);
bool32 Command1F(struct ScriptContext *);
bool32 Command20(struct ScriptContext *);
bool32 Command21(struct ScriptContext *);
bool32 Command22(struct ScriptContext *);
bool32 Command23(struct ScriptContext *);
bool32 Command24(struct ScriptContext *);
bool32 Command25(struct ScriptContext *);
bool32 Command26(struct ScriptContext *);
bool32 Command27(struct ScriptContext *);
bool32 Command28(struct ScriptContext *);
bool32 Command29(struct ScriptContext *);
bool32 Command2A(struct ScriptContext *);
bool32 Command2B(struct ScriptContext *);
bool32 Command2C(struct ScriptContext *);
bool32 Command02(struct ScriptContext *);
bool32 Command2E(struct ScriptContext *);
bool32 Command2F(struct ScriptContext *);
bool32 Command30(struct ScriptContext *);
bool32 Command31(struct ScriptContext *);
bool32 Command32(struct ScriptContext *);
bool32 Command33(struct ScriptContext *);
bool32 Command34(struct ScriptContext *);
bool32 Command35(struct ScriptContext *);
bool32 Command36(struct ScriptContext *);
bool32 Command37(struct ScriptContext *);
bool32 Command38(struct ScriptContext *);
bool32 Command39(struct ScriptContext *);
bool32 Command3A(struct ScriptContext *);
bool32 Command3B(struct ScriptContext *);
bool32 Command3C(struct ScriptContext *);
bool32 Command3D(struct ScriptContext *);
bool32 Command3E(struct ScriptContext *);
bool32 Command3F(struct ScriptContext *);
bool32 Command40(struct ScriptContext *);
bool32 Command41(struct ScriptContext *);
bool32 Command42(struct ScriptContext *);
bool32 Command43(struct ScriptContext *);
bool32 Command44(struct ScriptContext *);
bool32 Command15(struct ScriptContext *);
bool32 Command46(struct ScriptContext *);
bool32 Command47(struct ScriptContext *);
bool32 Command48(struct ScriptContext *);
bool32 Command49(struct ScriptContext *);
bool32 Command4A(struct ScriptContext *);
bool32 Command4B(struct ScriptContext *);
bool32 Command4C(struct ScriptContext *);
bool32 Command4D(struct ScriptContext *);
bool32 Command4E(struct ScriptContext *);
bool32 Command4F(struct ScriptContext *);
bool32 Command50(struct ScriptContext *);
bool32 Command51(struct ScriptContext *);
bool32 Command52(struct ScriptContext *);
bool32 Command53(struct ScriptContext *);
bool32 Command54(struct ScriptContext *);
bool32 Command55(struct ScriptContext *);
bool32 Command56(struct ScriptContext *);
bool32 Command57(struct ScriptContext *);
bool32 Command58(struct ScriptContext *);
bool32 Command59(struct ScriptContext *);
bool32 Command5A(struct ScriptContext *);
bool32 Command5B(struct ScriptContext *);
bool32 Command5C(struct ScriptContext *);
bool32 Command5D(struct ScriptContext *);
bool32 Command5E(struct ScriptContext *);
bool32 Command5F(struct ScriptContext *);
bool32 Command60(struct ScriptContext *);
bool32 Command61(struct ScriptContext *);
bool32 Command62(struct ScriptContext *);
bool32 Command63(struct ScriptContext *);
bool32 Command64(struct ScriptContext *);
bool32 Command65(struct ScriptContext *);
bool32 Command66(struct ScriptContext *);
bool32 Command67(struct ScriptContext *);
bool32 Command68(struct ScriptContext *);
bool32 Command69(struct ScriptContext *);
bool32 Command6A(struct ScriptContext *);
bool32 Command6B(struct ScriptContext *);
bool32 Command6C(struct ScriptContext *);
bool32 Command6D(struct ScriptContext *);
bool32 Command6E(struct ScriptContext *);
bool32 Command6F(struct ScriptContext *);
bool32 Command70(struct ScriptContext *);
bool32 Command71(struct ScriptContext *);
/* end commands */

#endif//GUARD_SCRIPT_H