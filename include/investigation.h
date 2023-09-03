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
    /* +0x02 */ u8 type;
    /* +0x03 */ u8 animId;
    /* +0x04 */ struct Point4 area;
};  

struct InvestigationStruct // unity: tantei_work_
{
    /* +0x00 */ u16 pointerX; // unity AA4: finger_pos_x
    /* +0x02 */ u16 pointerY; // unity AA4: finger_pos_y
    /* +0x04 */ u8 selectedOption; // unity AA4: sel_place
    /* +0x05 */ u8 previousSelectedOption;
    /* +0x06 */ bool8 personActive;
    /* +0x07 */ bool8 inspectionPaused; // unity AA4: ckeck_no_flag
    /* +0x08 */ u8 inactiveActions; // unity AA4: menu_mv_be_flag
    /* +0x09 */ u8 spotselectStartCounter; // unity AA4: finger_speed_x
    /* +0x0A */ u8 spotselectId; // unity: siteki_no // 指摘 pointed out
    /* +0x0B */ u8 inPsycheLockChallengeFlag;
    /* +0x0C */ u8 selectedAction; // unity: menu // selected investigation button, why menu?
    /* +0x0D */ u8 lastAction; // unity AA4: menu_old
    /* +0x0E */ u8 actionState; // unity AA4: menu_rno
    /* +0x0F */ u8 inactiveActionButtonY; // unity AA4: menu_pos_y
    /* +0x10 */ u8 selectedActionYOffset; // unity AA4: menu_add
    /* +0x11 */ u8 lastActionYOffset; // unity AA4: menu_add_old
    /* +0x12 */ bool8 activeOptions[4]; // unity AA4: sel_place_be
    /* +0x16 */ u8 pointerFrame; // unity AA4: yubi_no // 指 finger
    /* +0x17 */ u8 pointerFrameCounter; // unity AA4: yubi_timer
    /* +0x18 */ u8 pointerColor; // unity AA4: yubi_col_no
    /* +0x19 */ u8 pointerColorCounter; // unity AA4: yubi_col_timer
};

extern struct TalkData gTalkData[32];
extern struct ExaminationData gExaminationData[24];
extern struct InvestigationStruct gInvestigation;

/* new stuff needed for segments */
void SetRoomSeq(u32, u32); // room_seq_chg
u16 IsTalkSectionPsycheLocked(u16 arg0);
/* end data stuff from segments */

void SetInactiveActionButtons(struct InvestigationStruct *, u32);
extern u32 sub_800D5B0(struct InvestigationStruct *);
void sub_800D674(void);
void sub_800D6C8(void);

/* autodumped */
extern const u8 gCourtRecordInitialItems_0_0[8];
extern const u8 gCourtRecordInitialItems_0_1[12];
extern const struct CourtPresentData gCourtPresentData_0_0[10];
extern const struct CourtPresentData gCourtPresentData_0_1[11];
extern const u8 gCourtRecordInitialItems_1_0[2];
extern const u8 gCourtRecordInitialItems_1_1[18];
extern const u8 gCourtRecordInitialItems_1_2[24];
extern const u8 gCourtRecordInitialItems_1_3[26];
extern const u8 gCourtRecordInitialItems_1_4_1_5[34];
extern const struct CourtPresentData gCourtPresentData_1_1[4];
extern const struct CourtPresentData gCourtPresentData_1_3[2];
extern const struct CourtPresentData gCourtPresentData_1_4[13];
extern const struct CourtPresentData gCourtPresentData_1_5[7];
extern const struct InvestigationPresentData gInvestigationPresentData_1_0[87];
extern const u16 gPsycheLockedTalkSections_1_0[2];
extern const struct TalkData gTalkData_1_0[24];
extern const u8 gRoomData_1_0[8][5];
extern const struct ExaminationData gExaminationData_1_0_00[6];
extern const struct ExaminationData gExaminationData_1_0_01[2];
extern const struct ExaminationData gExaminationData_1_0_02[7];
extern const struct ExaminationData gExaminationData_1_0_03[4];
extern const struct ExaminationData gExaminationData_1_0_04[5];
extern const struct ExaminationData gExaminationData_1_0_05[6];
extern const struct ExaminationData gExaminationData_1_0_06[5];
extern const struct ExaminationData gExaminationData_1_0_07[4];
extern const struct ExaminationData gExaminationData_1_0_08[4];
extern const struct ExaminationData gExaminationData_1_0_09[5];
extern const struct InvestigationPresentData gInvestigationPresentData_1_2[95];
extern const u16 gPsycheLockedTalkSections_1_2[6];
extern const struct TalkData gTalkData_1_2[31];
extern const u8 gRoomData_1_2[8][5];
extern const struct ExaminationData gExaminationData_1_2_00[5];
extern const struct ExaminationData gExaminationData_1_2_01[2];
extern const struct ExaminationData gExaminationData_1_2_02[7];
extern const struct ExaminationData gExaminationData_1_2_03[4];
extern const struct ExaminationData gExaminationData_1_2_04[6];
extern const struct ExaminationData gExaminationData_1_2_05[5];
extern const struct ExaminationData gExaminationData_1_2_06[6];
extern const struct ExaminationData gExaminationData_1_2_07[5];
extern const struct ExaminationData gExaminationData_1_2_08[5];
extern const struct ExaminationData gExaminationData_1_2_09[6];
extern const u8 gCourtRecordInitialItems_2_0[2];
extern const u8 gCourtRecordInitialItems_2_1[20];
extern const u8 gCourtRecordInitialItems_2_2[23];
extern const u8 gCourtRecordInitialItems_2_3[23];
extern const u8 gCourtRecordInitialItems_2_4[28];
extern const u8 gCourtRecordInitialItems_2_5[28];
extern const struct CourtPresentData gCourtPresentData_2_1[9];
extern const struct CourtPresentData gCourtPresentData_2_3[5];
extern const struct CourtPresentData gCourtPresentData_2_4[12];
extern const struct CourtPresentData gCourtPresentData_2_5[7];
extern const struct InvestigationPresentData gInvestigationPresentData_2_0[76];
extern const u16 gPsycheLockedTalkSections_2_0[2];
extern const struct TalkData gTalkData_2_0[26];
extern const u8 gRoomData_2_0[16][5];
extern const struct ExaminationData gExaminationData_2_0_00[5];
extern const struct ExaminationData gExaminationData_2_0_01[2];
extern const struct ExaminationData gExaminationData_2_0_02[2];
extern const struct ExaminationData gExaminationData_2_0_03[8];
extern const struct ExaminationData gExaminationData_2_0_04[4];
extern const struct ExaminationData gExaminationData_2_0_05[4];
extern const struct ExaminationData gExaminationData_2_0_06[10];
extern const struct ExaminationData gExaminationData_2_0_07[10];
extern const struct ExaminationData gExaminationData_2_0_08[13];
extern const struct ExaminationData gExaminationData_2_0_09[13];
extern const struct ExaminationData gExaminationData_2_0_10[15];
extern const struct ExaminationData gExaminationData_2_0_11[10];
extern const struct ExaminationData gExaminationData_2_0_12[10];
extern const struct ExaminationData gExaminationData_2_0_13[10];
extern const struct InvestigationPresentData gInvestigationPresentData_2_2[93];
extern const u16 gPsycheLockedTalkSections_2_2[4];
extern const struct TalkData gTalkData_2_2[26];
extern const u8 gRoomData_2_2[16][5];
extern const struct ExaminationData gExaminationData_2_2_00[5];
extern const struct ExaminationData gExaminationData_2_2_01[2];
extern const struct ExaminationData gExaminationData_2_2_02[2];
extern const struct ExaminationData gExaminationData_2_2_03[8];
extern const struct ExaminationData gExaminationData_2_2_04[10];
extern const struct ExaminationData gExaminationData_2_2_05[10];
extern const struct ExaminationData gExaminationData_2_2_06[4];
extern const struct ExaminationData gExaminationData_2_2_07[14];
extern const struct ExaminationData gExaminationData_2_2_08[14];
extern const struct ExaminationData gExaminationData_2_2_09[13];
extern const struct ExaminationData gExaminationData_2_2_10[10];
extern const struct ExaminationData gExaminationData_2_2_11[10];
extern const u8 gCourtRecordInitialItems_3_0[2];
extern const u8 gCourtRecordInitialItems_3_1[15];
extern const u8 gCourtRecordInitialItems_3_2[27];
extern const u8 gCourtRecordInitialItems_3_3[31];
extern const u8 gCourtRecordInitialItems_3_4[31];
extern const u8 gCourtRecordInitialItems_3_5[33];
extern const u8 gCourtRecordInitialItems_3_6[39];
extern const u8 gCourtRecordInitialItems_3_7[42];
extern const struct CourtPresentData gCourtPresentData_3_1[10];
extern const struct CourtPresentData gCourtPresentData_3_3[18];
extern const struct CourtPresentData gCourtPresentData_3_5[7];
extern const struct CourtPresentData gCourtPresentData_3_7[14];
extern const struct InvestigationPresentData gInvestigationPresentData_3_0[34];
extern const struct TalkData gTalkData_3_0[16];
extern const u8 gRoomData_3_0[25][5];
extern const struct ExaminationData gExaminationData_3_0_00[2];
extern const struct ExaminationData gExaminationData_3_0_01[10];
extern const struct ExaminationData gExaminationData_3_0_02[10];
extern const struct ExaminationData gExaminationData_3_0_03[9];
extern const struct ExaminationData gExaminationData_3_0_04[8];
extern const struct ExaminationData gExaminationData_3_0_05[8];
extern const struct InvestigationPresentData gInvestigationPresentData_3_2[71];
extern const u16 gPsycheLockedTalkSections_3_2[6];
extern const struct TalkData gTalkData_3_2[30];
extern const u8 gRoomData_3_2[25][5];
extern const struct ExaminationData gExaminationData_3_2_00[5];
extern const struct ExaminationData gExaminationData_3_2_01[2];
extern const struct ExaminationData gExaminationData_3_2_02[10];
extern const struct ExaminationData gExaminationData_3_2_03[9];
extern const struct ExaminationData gExaminationData_3_2_04[9];
extern const struct ExaminationData gExaminationData_3_2_05[8];
extern const struct ExaminationData gExaminationData_3_2_06[12];
extern const struct ExaminationData gExaminationData_3_2_07[20];
extern const struct ExaminationData gExaminationData_3_2_08[7];
extern const struct ExaminationData gExaminationData_3_2_10[5];
extern const struct InvestigationPresentData gInvestigationPresentData_3_4[46];
extern const struct TalkData gTalkData_3_4[14];
extern const u8 gRoomData_3_4[26][5];
extern const struct ExaminationData gExaminationData_3_4_00[5];
extern const struct ExaminationData gExaminationData_3_4_01[5];
extern const struct ExaminationData gExaminationData_3_4_02[2];
extern const struct ExaminationData gExaminationData_3_4_03[10];
extern const struct ExaminationData gExaminationData_3_4_04[9];
extern const struct ExaminationData gExaminationData_3_4_05[9];
extern const struct ExaminationData gExaminationData_3_4_06[8];
extern const struct ExaminationData gExaminationData_3_4_07[19];
extern const struct ExaminationData gExaminationData_3_4_08[7];
extern const struct ExaminationData gExaminationData_3_4_09[4];
extern const struct ExaminationData gExaminationData_3_4_10[7];
extern const struct ExaminationData gExaminationData_3_4_11[8];
extern const struct ExaminationData gExaminationData_3_4_12[6];
extern const struct InvestigationPresentData gInvestigationPresentData_3_6[125];
extern const u16 gPsycheLockedTalkSections_3_6[4];
extern const struct TalkData gTalkData_3_6[22];
extern const u8 gRoomData_3_6[26][5];
extern const struct ExaminationData gExaminationData_3_6_00[5];
extern const struct ExaminationData gExaminationData_3_6_01[5];
extern const struct ExaminationData gExaminationData_3_6_02[2];
extern const struct ExaminationData gExaminationData_3_6_03[2];
extern const struct ExaminationData gExaminationData_3_6_04[10];
extern const struct ExaminationData gExaminationData_3_6_05[9];
extern const struct ExaminationData gExaminationData_3_6_06[8];
extern const struct ExaminationData gExaminationData_3_6_07[19];
extern const struct ExaminationData gExaminationData_3_6_08[7];
extern const struct ExaminationData gExaminationData_3_6_09[5];
extern const struct ExaminationData gExaminationData_3_6_10[7];
extern const struct ExaminationData gExaminationData_3_6_11[8];
extern const struct ExaminationData gExaminationData_3_6_12[8];
/* end autodumped */

extern u32 GetExaminedAreaSection(struct InvestigationStruct *);

void InvestigationInit(struct Main *, struct InvestigationStruct *);
void InvestigationMain(struct Main *, struct InvestigationStruct *);
void InvestigationExit(struct Main *, struct InvestigationStruct *);
void InvestigationBgScrollWait(struct Main *, struct InvestigationStruct *);
void InvestigationTextboxSlideWait(struct Main *, struct InvestigationStruct *);
void InvestigationRoomInit(struct Main *, struct InvestigationStruct *);
void InvestigationInspect(struct Main *, struct InvestigationStruct *);
void InvestigationMove(struct Main *, struct InvestigationStruct *);
void InvestigationTalk(struct Main *, struct InvestigationStruct *);
void InvestigationPresent(struct Main *, struct InvestigationStruct *);
void InvestigationPsycheLock(struct Main *, struct InvestigationStruct *);

void LoadLocationChoiceGraphics(void);
void LoadTalkChoiceGraphics(void);

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

void InvestigationProcess(struct Main *);

#endif//GUARD_INVESTIGATION_H