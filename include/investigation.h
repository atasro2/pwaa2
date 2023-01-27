#ifndef GUARD_INVESTIGATION_H
#define GUARD_INVESTIGATION_H

#include "case_data.h"
#include "utils.h"

struct TalkData
{
    /* +0x00 */ u8 roomId;
    /* +0x01 */ u8 personId;
    /* +0x02 */ u8 unk2; // called dm in unity? probably means dummy, unused
    /* +0x03 */ u8 enableFlag; // en- or disables this specific set of talk data, allows for multiple sets for one character in one room
    /* +0x04 */ u8 iconId[0x4];
    /* +0x08 */ u8 talkFlagId[0x4];
    /* +0x0C */ u16 talkSection[0x4];
};

struct ExaminationData
{
    /* +0x00 */ u16 examinationSection;
    /* +0x02 */ u8 unk2;
    /* +0x03 */ u8 unk3;
    /* +0x04 */ struct Point4 area;
};  

struct InvestigationStruct // unity: tantei_work_
{
    /* +0x00 */ u16 pointerX; // unity AA4: finger_pos_x
    /* +0x02 */ u16 pointerY; // unity AA4: finger_pos_y
    /* +0x04 */ u8 filler04[0x2];
    /* +0x06 */ u8 personActive;
    /* +0x07 */ u8 unk7;
    /* +0x08 */ u8 filler08[0x1];
    /* +0x09 */ u8 spotselectStartCounter; // unity AA4: finger_speed_x
    /* +0x0A */ u8 spotselectId; // unity: siteki_no // 指摘 pointed out
    /* +0x0B */ u8 unkB;
    /* +0x0C */ u8 selectedAction; // unity: menu // selected investigation button, why menu?
    /* +0x0D */ u8 lastAction; // unity AA4: menu_old
    /* +0x0E */ u8 actionState; // unity AA4: menu_rno
    /* +0x0F */ u8 inactiveActionButtonY; // unity AA4: menu_pos_y
    /* +0x10 */ u8 selectedActionYOffset; // unity AA4: menu_add
    /* +0x11 */ u8 lastActionYOffset; // unity AA4: menu_add_old
    /* +0x11 */ u8 filler11[0x6];
    /* +0x18 */ u8 pointerColor; // unity AA4: yubi_col_no
    /* +0x19 */ u8 pointerColorCounter; // unity AA4: yubi_col_timer
};

#if 0
struct InvestigationStruct // unity: tantei_work_
{
    /* +0x00 */ u16 pointerX; // unity AA4: finger_pos_x
    /* +0x02 */ u16 pointerY; // unity AA4: finger_pos_y
    /* +0x04 */ u8 selectedOption; // unity AA4: sel_place
    /* +0x05 */ bool8 personActive; // unity: person_flag // is person in current room?
    /* +0x06 */ u8 unk6; // unity AA4: ckeck_no_flag
    /* +0x07 */ u8 unk7; // unity AA4: menu_mv_be_flag
    /* +0x08 */ u8 spotselectStartCounter; // unity AA4: finger_speed_x
    /* +0x09 */ u8 spotselectId; // unity: siteki_no // 指摘 pointed out
    /* +0x0A */ u8 selectedAction; // unity: menu // selected investigation button, why menu?
    /* +0x0B */ u8 lastAction; // unity AA4: menu_old
    /* +0x0C */ u8 actionState; // unity AA4: menu_rno
    /* +0x0D */ u8 inactiveActionButtonY; // unity AA4: menu_pos_y
    /* +0x0E */ u8 selectedActionYOffset; // unity AA4: menu_add
    /* +0x0F */ u8 lastActionYOffset; // unity AA4: menu_add_old
    /* +0x10 */ bool8 activeOptions[4]; // unity AA4: sel_place_be
    /* +0x14 */ u8 pointerFrame; // unity AA4: yubi_no // 指 finger
    /* +0x15 */ u8 pointerFrameCounter; // unity AA4: yubi_timer
    /* +0x16 */ u8 pointerColor; // unity AA4: yubi_col_no
    /* +0x17 */ u8 pointerColorCounter; // unity AA4: yubi_col_timer
};
#endif

extern struct TalkData gTalkData[32];
extern struct ExaminationData gExaminationData[16];
extern struct InvestigationStruct gInvestigation;

/* new stuff needed for segments */
void sub_800EAC8(u32, u32); // room_seq_chg
/* end data stuff from segments */

void SetInactiveActionButtons(struct InvestigationStruct *, u32);
extern u32 sub_800D5B0(struct InvestigationStruct *);
void sub_800D674(void);
void sub_800D6C8(void);

void sub_800B808(struct Main *, struct InvestigationStruct *);
void sub_800BAD4(struct Main *, struct InvestigationStruct *);
void sub_800BD74(struct Main *, struct InvestigationStruct *);
void sub_800BDF8(struct Main *, struct InvestigationStruct *);
void sub_800BE58(struct Main *, struct InvestigationStruct *);
void sub_800BE7C(struct Main *, struct InvestigationStruct *);
void sub_800BF90(struct Main *, struct InvestigationStruct *);
void sub_800C334(struct Main *, struct InvestigationStruct *);
void sub_800C8B8(struct Main *, struct InvestigationStruct *);
void sub_800D2B0(struct Main *, struct InvestigationStruct *);

/* Segment 1 */
void InvestigationSegmentSetup_1_0(struct Main *main);
void InvestigationRoomSetup_1_0(struct Main *main);
void InvestigationRoomUpdate_1_0(struct Main *main);

void InvestigationSegmentSetup_1_2(struct Main *main);
void InvestigationRoomSetup_1_2(struct Main *main);
void InvestigationRoomUpdate_1_2(struct Main *main);
/* Segment 2 */
void InvestigationSegmentSetup_2_0(struct Main *main);
void InvestigationRoomSetup_2_0(struct Main *main);
void InvestigationRoomUpdate_2_0(struct Main *main);

void InvestigationSegmentSetup_2_2(struct Main *main);
void InvestigationRoomSetup_2_2(struct Main *main);
void InvestigationRoomUpdate_2_2(struct Main *main);

void InvestigationSegmentSetup_2_4(struct Main *main);
void InvestigationRoomSetup_2_4(struct Main *main);
void InvestigationRoomUpdate_2_4(struct Main *main);
/* Segment 3 */
void InvestigationSegmentSetup_3_0(struct Main *main);
void InvestigationRoomSetup_3_0(struct Main *main);
void InvestigationRoomUpdate_3_0(struct Main *main);

void InvestigationSegmentSetup_3_2(struct Main *main);
void InvestigationRoomSetup_3_2(struct Main *main);
void InvestigationRoomUpdate_3_2(struct Main *main);

void InvestigationSegmentSetup_3_4(struct Main *main);
void InvestigationRoomSetup_3_4(struct Main *main);
void InvestigationRoomUpdate_3_4(struct Main *main);

void InvestigationSegmentSetup_3_6(struct Main *main);
void InvestigationRoomSetup_3_6(struct Main *main);
void InvestigationRoomUpdate_3_6(struct Main *main);

void InvestigationDummy(struct Main *main);

void GameProcess04(struct Main *);

#endif//GUARD_INVESTIGATION_H